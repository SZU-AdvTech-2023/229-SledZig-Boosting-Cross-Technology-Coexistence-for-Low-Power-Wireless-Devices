function [subcarriers] = calSubcarriers(sim_consts,area)
%CALSUBCARRIERS 此处显示有关此函数的摘要
%   此处显示详细说明
if(area == 1)
    subcarriers = sim_consts.area1;
elseif(area == 2)
    subcarriers = sim_consts.area2;
elseif(area == 3)
    subcarriers = sim_consts.area3;
elseif(area == 4)
    subcarriers = sim_consts.area4;
elseif(area == 5)
    subcarriers = sim_consts.area1_R1;
elseif(area == 6)
    subcarriers = sim_consts.area1_R2;
elseif(area == 7)
    subcarriers = sim_consts.area2_L1R1;
elseif(area == 8)
    subcarriers = sim_consts.area2_L2R2;
elseif(area == 9)
    subcarriers = sim_consts.area3_L1R1;
elseif(area == 10)
    subcarriers = sim_consts.area3_L1R1;
elseif(area == 11)
    subcarriers = sim_consts.area4_L1;
elseif(area == 12)
    subcarriers = sim_consts.area4_L2;
elseif(area == 13)
    subcarriers = sim_consts.area1_2;
elseif(area == 14)
    subcarriers = sim_consts.area1_3;
elseif(area == 15)
    subcarriers = sim_consts.area1_4;
elseif(area == 16)
    subcarriers = sim_consts.area2_3;
elseif(area == 17)
    subcarriers = sim_consts.area2_4;
elseif(area == 18)
    subcarriers = sim_consts.area3_4;
elseif(area == 19)
    subcarriers = sim_consts.area1_test;
end


