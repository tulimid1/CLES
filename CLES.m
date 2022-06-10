classdef CLES
    %{
    CLES - Calculate common language effect size 
    %}
    
    properties
        
    end
    
    methods
        function obj = CLES()
            % create instance for methods
        end
        
        function thetaHat = two_independent(obj,data1, data2)
            %{
            Calculate common language effect size for 2 independent samples
            %}
            arguments 
                obj 
                data1 (:,1)
                data2 (:,1)
            end
            total = 0; 
            for i = 1:length(data1)
                for j = 1:length(data2)
                    if data1(i) > data2(j)
                        total = total+1;
                    elseif data1(i) == data2(j)
                        total = total+0.5;
                    end
                end
            end
            thetaHat = obj.calculateThetaHat(total, data1, data2); 
        end
        function thetaHat = two_paired(obj, data1, data2)
            %{
            Calculate common language effect size for 2 paired samples
            %}
            arguments 
                obj 
                data1 (:,1)
                data2 (:,1)
            end
            D = data2 - data1;
            comp = zeros(size(data1)); 
            total = 0;
            for i = 1:length(D)
                for j = 1:length(comp)
                    if D(i) > comp(j)
                        total = total+1;
                    elseif D(i) == comp(j)
                        total = total+0.5;
                    end
                end
            end
            thetaHat = obj.calculateThetaHat(total, data1, comp); 
        end
        function thetaHat = one_sample(obj, data1, mu)
            %{
            Calculate common language effect size for one sample
            %}
            arguments 
                obj
                data1 (:,1)
                mu (1,1)
            end
            comp = zeros(size(data1));
            total = 0;
            for i = 1:length(data1)
                for j = 1:length(comp)
                    if data1(i) > comp(j)
                        total = total+1;
                    elseif data1(i) == comp(j)
                        total = total+0.5;
                    end
                end
            end
            thetaHat = obj.calculateThetaHat(total, data1, comp); 
        end
        
        function thetaHat = calculateThetaHat(obj, total, data1, data2)
            thetaHat = (abs(total / (length(data1) * length(data2)) ...
                - 0.5) + 0.5) * 100;
        end
    end
end

