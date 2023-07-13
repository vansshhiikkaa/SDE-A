% Parameters
numSteps = 1000;     % Number of steps in the random walk
numTrajectories = 5; % Number of trajectories to plot

% Generate random walk trajectories
trajectories = cumsum(randn(numSteps, numTrajectories));

% Create a color map
colorMap = jet(numTrajectories);

% Plotting
figure;
hold on;

for i = 1:numTrajectories
    plot(1:numSteps, trajectories(:, i), 'Color', colorMap(i, :));
end

hold off;

xlabel('Steps');
ylabel('Position');
title('Brownian Motion with Different Colors');

% Add a colorbar to show the correspondence between colors and trajectories
colormap(colorMap);
c = colorbar('Ticks', linspace(0, 1, numTrajectories), 'TickLabels', 1:numTrajectories);
c.Label.String = 'Trajectory Number';
