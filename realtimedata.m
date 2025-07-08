port = "COM3";  % ✅ Replace with correct Windows port (e.g., COM4, COM5)
baudRate = 115200;
numSensors = 5;
numSamples = 100;

s = serialport(port, baudRate, "Timeout", 2);
flush(s);
disp("✅ Connected to " + port);

data = zeros(numSensors, numSamples);
figure('Name','NIRS-DOT Imaging Output');

for t = 1:numSamples
    try
        line = readline(s);
        values = str2double(split(strtrim(line), ","));

        if numel(values) == numSensors
            data(:, t) = values;
            imagesc(data);
            title("NIRS-DOT Imaging Output");
            xlabel("Time");
            ylabel("Photodiode Index");
            colorbar;
            drawnow;
        end

    catch ME
        disp("⚠️ Error reading serial:");
        disp(ME.message);
        break;
    end
end
