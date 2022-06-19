%% MATLAB staff training 20 June 2022

%Entering commands

% Operators: 
%%% Multiply  *
%%% Divide / 
%%% Add  +
%%% Subtract  - 
%%% Raise to the power of n ^n


%% Use each of the operators to execute a command with two numbers

% Multiply

% Divide

% Add

%Subtract


%% Variables 

%%% Unless you specify a variable name, MATLAB outputs the answer as 'ans' 
%%% To create a variable, enter the variable name and = before your command

% Create a variable called m with the answer to 3*5 




%% Using variables in a command 

%%% Variables can be used within commands. 
%%% For example a = m + 3 will use the value stored in m and add 3 

% Create a new variable called a and add 6 to m 


%% Suppressing output 

%%% In most scenarios you'll want to suppress the output within the command
%%% window. This is particularly relevant if you are performing a function
%%% on many variables or very long time-series. This is easily done using
%%% the semicolon -
%%%%% c = 3+4; 

% Try it yourself: 


%% Renaming variables 

%%% Renaming variables is straightforward - create a new variable using the
%%% old variable. 

% Create a new variable called e with the data from c
% e = c; 

%% Types of variables - Arrays

%%% All MATLAB variables are called 'arrays'. These can contain multiple
%%% numbers in rows, columns, scalars (one number) or matrices (rows and
%%% columns) 


% So far we have created variables with one number (scalars). Let's create
% some variables with multiple numbers. 

% To create an array with multiple elements, use square brackets [3 4 6]

        
        % Create a new variable, v with the values 3 5 7 8 10 


        % Open the variable v in the variable workspace 


% notice that using square brackets arranges the numbers into a single row



%%% To arrange numbers into a single column, separate the numbers using
%%% semicolons [3;4;6]


    % Create a new variable, b with the values 3 6 2 1 11 in a single column



%% Enter the Matrix

%%% Combine spaces and semicolons to create a matrix - a variable with
%%% multiple rows and columns 

%%% for example: x = [3 5 6; 5 6 7]

        % create a variable n with two columns and three rows of values
        
        


        % Try to create a variable with the following values [9 3 4; 9 0]
        % What happens? 
        
        
%%% Vertical matrices *MUST* have the same number of filled rows (same goes
%%% for horizontal matrices wrt columns). Sometimes this does not work with
%%% our datasets (e.g. two gait trials at 110 and 114 samples long). This
%%% is one of the biggest differences to Excel, and there are ways aroudn
%%% this, which we will come on to in a moment. 

%%% Transposing variables is easily done, and often necessary, particularly
%%% for data analysis and plotting 

        % Use ' to transpose the variable you created above and browse the
        % workspace to see what happened. 

        

%% Indexing into arrays (more specifically matrices) 

%%% There are many cases we would like to find a value within an array.
%%% We call the location of a number in terms of rows and columns the
%%% 'index'. In MATLAB, the ROW is first and then the COLUMN.
%%% This looks like (row, column) 

        % Clear all of the previous variables using the command 'clear' 
        
        % Create this variable: 
        n = rand(6,4); 
        
        %Find the value that is located on the 2nd row, 4th column 
        % Hint n(row, column)


%%% We can use the same logic to perform functions on a specific row or
%%% column. For example, let's find the maximum value within the second
%%% column 

        % MATLAB functions to find common values:
        % Maximum: max
        % Minimum: min
        % Mean: mean ***Unlike Excel, which is 'Average'***
        % Median: median 


        %So to find the maximum value of the second column we want to query
        %all of the values within the column. To do this we will use the :
        %symbol. 
        
        max(n(:,2))
        
        %Try it yourself - find the minimum of the third column 
        
        
%%% What if we want to find the max/min/mean of the entire array? 
%%% In our current n variable we have 4 columns and 6 rows. 
%%% Above, we looked at how to find the maximum of one row, but we can
%%% create a variable that stores the maximums of all four columns. 

% By default, if no column is specified the max (and the other ones above
% too) will give the max of **all COLUMNS**

        %make a new variable called 'stats' that has the maximums of your n variable 
        

%%% So far we have examined how to index *into* an existing array. What if
%%% we want to *add* to an existing array?


        % find the minimum of all of the columns and make it a new row that
        % goes all the way across in the 'stats' variable. Using : will
        % allow you to access all of the rows (or columns) 


















