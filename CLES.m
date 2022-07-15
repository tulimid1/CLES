classdef CLES
    %{
    CLES - Calculate common language effect size 
    %}
    
%% Properties 
    %% Main 
    properties
        total;
        data1;
        data2;
        thetaHat;
    end
    
%% Methods 
    %% Main 
    methods
        function obj = CLES()
            % create instance for methods
        end
        
        function thetaHat = two_independent(obj,data1, data2)
            %{
            Calculate common language effect size for 2 independent samples
            %}
            %% Check and assign arguments 
            arguments 
                obj 
                data1 (:,1)
                data2 (1,:)
            end
            obj.data1 = data1; obj.data2 = data2; 
            %% Calculations
            obj = obj.calculateTotal(); 
            obj = obj.calculateThetaHat(); 
            thetaHat = obj.thetaHat; 
        end
        function thetaHat = two_paired(obj, data1, data2)
            %{
            Calculate common language effect size for 2 paired samples
            %}
            %% Check and assign arguments 
            arguments 
                obj 
                data1 (:,1)
                data2 (:,1)
            end
            obj.data1 = data2 - data1; obj.data2 = zeros(flip(size(data1)));
            %% Calculations
            obj = obj.calculateTotal(); 
            obj = obj.calculateThetaHat(); 
            thetaHat = obj.thetaHat; 
        end
        function thetaHat = one_sample(obj, data1, mu)
            %{
            Calculate common language effect size for one sample
            %}
            %% Check and assign arguments 
            arguments 
                obj
                data1 (:,1)
                mu (1,1)
            end
            obj.data1 = data1-mu; obj.data2 = zeros(flip(size(data1)));
            %% Calculations
            obj = obj.calculateTotal(); 
            obj = obj.calculateThetaHat(); 
            thetaHat = obj.thetaHat; 
        end
        
    end
    %% Calculations 
    methods
        function obj = calculateTotal(obj)
            try % vectorized 
                obj.total = sum(obj.data1 > obj.data2, 'all') ...
                    + sum((obj.data1 == obj.data2)./2, 'all');
            catch % non-vectorized
                for i = 1:length(obj.data1)
                    for j = 1:length(obj.data2)
                        if obj.data1(i) > obj.data2(j)
                            obj.total = obj.total+1;
                        elseif obj.data1(i) == obj.data2(j)
                            obj.total = obj.total+0.5;
                        end
                    end
                end 
            end
        end
        function obj = calculateThetaHat(obj)
            obj.thetaHat = (abs(obj.total / (length(obj.data1) * length(obj.data2)) ...
                - 0.5) + 0.5) * 100;
        end
    end
end

