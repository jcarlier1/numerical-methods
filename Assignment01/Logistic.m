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
    
    x = l*x*(1-x);

    % Generate logistic values (example calculation)
    l = linspace(lmin, lmax, nl);

    % Display the output
    disp(output);


end