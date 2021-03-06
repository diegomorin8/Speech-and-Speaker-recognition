function [output, window] = windowing(input)

    % Applies hamming window to the input frames.
    % 
    % Args:
    %     input: array of speech samples [N x M] where N is the number of frames and
    %            M the samples per frame
    % Output:
    %     array of windoed speech samples [N x M]
    % Note (you can use the function hamming from scipy.signal, include the sym=0 option
    % if you want to get the same results as in the example)
    
    [N, ~] = size(input);
    window = hamming(N, 'periodic');
    window_resized = repmat(window',size(input,2),1);
    %Apply the window
    output = input .* window_resized';

end