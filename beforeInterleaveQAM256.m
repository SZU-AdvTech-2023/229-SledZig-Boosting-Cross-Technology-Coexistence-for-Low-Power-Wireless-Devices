function [Before_interleave_masks,Before_interleave_bits] = beforeInterleaveQAM256(sim_consts,matrix_deinterleave,subcarriers)
%BEFOREINTERLEAVEQAM256 此处显示有关此函数的摘要
    %----------------------QAM-256----------------------------------
    output_bits=zeros(1,sim_consts.block_size);
    output_masks = zeros(1,sim_consts.block_size);
    %对于WiFi 2.412GHz, ZigBee 2.410GHz,ZigBee处于WiFi 48个subcarrier中的[16-21]
    %QAM256 x100 x100
%     for k=15*8+2:8:21*8
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*8+3:8:21*8
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*8+4:8:21*8
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*8+6:8:21*8
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*8+7:8:21*8
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*8+8:8:21*8
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*8+2;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*8+3;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*8+4;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*8+6;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*8+7;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*8+8;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    %Before_interleave_bits=output_bits(matrix_deinterleave);
    Before_interleave_masks=output_masks(matrix_deinterleave);
    Before_interleave_bits=output_bits(matrix_deinterleave);
end

