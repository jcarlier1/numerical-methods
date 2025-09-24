function Logistic(lmin, lmax, varargin)
%{
This function generates and plots the values of the logistic map for a 
range of lambda values between (lmin) and (lmax), using a fixed initial 
condition (x). It allows for an optional input to specify the number of 
points (nl) to compute within the specified range. The function checks for 
valid input values and visualizes the results in a scatter plot.
%}
    % Create an inputParser object
    p = inputParser;

    % Define required inputs
    addRequired(p, 'lmin', @isnumeric);
    addRequired(p, 'lmax', @isnumeric);
    % Define default value for optional input
    addOptional(p, 'nl', 10, @isnumeric);
    % Parse the inputs
    parse(p, lmin, lmax, varargin{:});
    % Use the parsed inputs
    nl = p.Results.nl;

    % Check if the optional input 'nl' was provided
    
    if nl == 10
        disp('Using default value of 10.');
    end
    
    if lmin < 0 || lmin > lmax || lmax > 4
        error('Input values must satisfy: 0 ≤ lmin ≤ lmax ≤ 4');
    end
    
    % Choose x0 != 0 && x0 != 1. Otherwise x1 = 0 and the whole sequence
    % just stays in 0
    x = 0.1;

    % Generate nl equally spaced l
    l = linspace(lmin, lmax, nl);
    y = zeros(length(l), 10);
    for i = 1:nl
        y(i, :) = LogisticMap(l(i), x);
    end
    
    % Plot the results
    figure; % Create a new figure
    scatter(l, y, 100, 'Marker', '.');
    xlabel('l'); % Label for x-axis
    ylabel('LogisticMap(l,x)'); % Label for y-axis
    title('Logistic Map Values'); % Title of the plot
    grid on; % Enable grid

end