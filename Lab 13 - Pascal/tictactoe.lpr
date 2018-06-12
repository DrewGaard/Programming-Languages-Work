program tictactoe;

var
     grid : array[1..3] of array[1..3] of char;
     endGame : boolean;

     procedure setGrid () ;
          var
             row : integer;
             col : integer;
          begin
             for row := 1 to 3 do
                 for col := 1 to 3 do
                     grid[row, col] := 'e';
          end;

    procedure displayGrid () ;
             var
                row : integer;
                col : integer;
             begin
               for row := 1 to 3 do
               begin
                   writeln('');
                   for col := 1 to 3 do
                       write(grid[row, col]);
               end;
             end;

procedure playerMove () ;
              var
                 keepLoop : integer;
                 row : integer;
                 col : integer;
              begin
                   writeln('');
                   keepLoop := 1;
                   repeat
                   writeln('Please enter the coordinates <row then col> for the move you''d like to make: ');
                   readln(row, col);
                     if ((row < 1) or (col < 1)) then
                     begin
                        keepLoop := 1;
                     end
                     else if ((row > 3) or (col > 3)) then
                     begin
                        keepLoop := 1;
                     end
                     else if grid[row, col] = 'X' then
                     begin
                        keepLoop := 1;
                     end
                     else if grid[row, col] = 'O' then
                     begin
                        keepLoop := 1;
                     end
                     else
                     begin
                         keepLoop := 0;
                         grid[row, col] := 'X';
                     end;
                   until keepLoop = 0;
              end;

procedure computerMove () ;
             var
                keepLoop : integer;
                row : integer;
                col : integer;
             begin
               randomize;
               keepLoop := 1;
               row := random(3);
               row := row + 1;
               col := random(3);
               col := col + 1;
               repeat
               if (grid[row, col] = 'e') then
                 begin

                      grid[row, col] := 'O';
                      keepLoop := 0;
                 end
               else
                   begin
                        row := random(3);
                        row := row + 1;
                        col := random(3);
                        col := col + 1;
                   end;
               until keepLoop = 0;
             end;

function gameState () : boolean;
         var
            state : boolean;
         begin
           state := false;
           if (grid[1,1] = 'X') and (grid[1,2] = 'X') and (grid[1,3] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end
           else if (grid[2,1] = 'X') and (grid[2,2] = 'X') and (grid[2,3] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end
           else if (grid[3,1] = 'X') and (grid[3,2] = 'X') and (grid[3,3] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end
           else if (grid[1,1] = 'X') and (grid[2,2] = 'X') and (grid[3,3] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end
           else if (grid[1,3] = 'X') and (grid[2,2] = 'X') and (grid[3,1] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end
           else if (grid[1,1] = 'X') and (grid[2,1] = 'X') and (grid[3,1] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end
           else if (grid[1,2] = 'X') and (grid[2,2] = 'X') and (grid[3,2] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end
           else if (grid[1,3] = 'X') and (grid[2,3] = 'X') and (grid[3,3] = 'X') then
             begin
                  state := true;
                  writeln('');
                  writeln('Congratulations User! You just won!')
             end;

           //See if the computer won the game

            if (grid[1,1] = 'O') and (grid[1,2] = 'O') and (grid[1,3] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end
           else if (grid[2,1] = 'O') and (grid[2,2] = 'O') and (grid[2,3] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end
           else if (grid[3,1] = 'O') and (grid[3,2] = 'O') and (grid[3,3] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end
           else if (grid[1,1] = 'O') and (grid[2,2] = 'O') and (grid[3,3] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end
           else if (grid[1,3] = 'O') and (grid[2,2] = 'O') and (grid[3,1] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end
           else if (grid[1,1] = 'O') and (grid[2,1] = 'O') and (grid[3,1] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end
           else if (grid[1,2] = 'O') and (grid[2,2] = 'O') and (grid[3,2] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end
           else if (grid[1,3] = 'O') and (grid[2,3] = 'O') and (grid[3,3] = 'O') then
             begin
                  state := true;
                  writeln('');
                  writeln('The Computer Won!')
             end;

             if ((grid[1, 1] = 'X') or (grid[1, 1] = 'O')) and ((grid[1, 2] = 'X') or (grid[1, 2] = 'O')) and ((grid[1, 3] = 'X') or (grid[1, 3] = 'O')) and ((grid[2, 1] = 'X') or (grid[2, 1] = 'O')) and ((grid[2, 2] = 'X') or (grid[2, 2] = 'O')) and ((grid[2, 3] = 'X') or (grid[2, 3] = 'O')) and ((grid[3, 1] = 'X') or (grid[3, 1] = 'O')) and ((grid[3, 2] = 'X') or (grid[3, 2] = 'O')) and ((grid[3, 3] = 'X') or (grid[3, 3] = 'O')) then
                begin
                     state := true;
                     writeln('');
                     writeln('Tie Game!')
                end;

           gameState := state;
         end;


begin
      setGrid ();
      endGame := false;
      displayGrid ();
      playerMove ();
      while endGame <> true do
      begin
             computerMove();
             endGame := gameState();
             if endGame = true then
                begin
                     break;
                end;
             displayGrid ();
             playerMove ();
             if endGame = true then
                begin
                     break;
                end;
             writeln();
             //displayGrid ();
             //computerMove();
             endGame := gameState();
             //writeln('Hello');
      end;
      displayGrid ();
      //computerMove();
      //displayGrid ();

  readln();
end.

