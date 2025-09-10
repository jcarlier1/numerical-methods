function Logistic(lmin,lmax)
    % Create an inputParser object
    p = inputParser;

    % Define required inputs
    addRequired(p, 'lmin', @isnumeric)
    addRequired(p, 'lmax', @isnumeric)
    % Define default value for optional input
    addOptional(p, 'nl', 10, @isnumeric);
    % Parse the inputs
    parse(p, lmin, lmax);
    % Use the parsed inputs
    nl = p.Results.nl;

    % Check if the optional input 'nl' was provided
    
    if nl == 10
        disp('Optional input ''nl'' was not provided, using default value of 10.');
    end
    
    if lmin < 0 || lmin > lmax || lmax > 4
        error('Input values must satisfy: 0 ≤ lmin ≤ lmax ≤ 4');
    end

    x = 0.1;    

    % Generate nl equally spaced l
    l = linspace(lmin, lmax, nl);

    % Calculate the logistic map values for each l
    y = arrayfun(@(l_val) LogisticMap(l_val, x), l);

    % Plot the results
    figure; % Create a new figure
    plot(l, y, 'LineWidth', 2); % Plot l vs LogisticMap(l,x)
    xlabel('l'); % Label for x-axis
    ylabel('LogisticMap(l,x)'); % Label for y-axis
    title('Logistic Map Values'); % Title of the plot
    grid on; % Enable grid

end