function [Before_interleave_masks,Before_interleave_bits] = beforeInterleaveQAM16(sim_consts,matrix_deinterleave,subcarriers)
%BEFOREINTERLEAVE 此处显示有关此函数的摘要
    %----------------------QAM-16----------------------------------
    output_bits=zeros(1,sim_consts.block_size);
    output_masks = zeros(1,sim_consts.block_size);
    %对于WiFi 2.412GHz, ZigBee 2.410GHz,ZigBee处于WiFi 48个subcarrier中的[18-24]
    %QAM-16, low power为0000,0100,1000,1100；high power为0011,0111,1011,1111
    %则后两个bits为significant bits
%     for k=15*4+3:4:21*4     %xx00
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*4+4:4:21*4
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*4+3;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*4+4;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    Before_interleave_masks=output_masks(matrix_deinterleave);
    Before_interleave_bits=output_bits(matrix_deinterleave);
end

