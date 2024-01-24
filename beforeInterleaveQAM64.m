function [Before_interleave_masks,Before_interleave_bits] = beforeInterleaveQAM64(sim_consts,matrix_deinterleave,subcarriers)
%BEFOREINTERLEAVEQAM64 此处显示有关此函数的摘要

    %----------------------QAM-64----------------------------------
    output_bits=zeros(1,sim_consts.block_size);    
    output_masks = zeros(1,sim_consts.block_size);
    %对于WiFi 2.412GHz, ZigBee 2.410GHz,ZigBee处于WiFi 48个subcarrier中的[18-24] 16-21
    %QAM-64 采用的是2 3 5 6比特作为关键比特
    %则后两个bits为significant bits
%     for k=15*6+2:6:21*6     %16-21子载波的第2个比特 %x10x10就是最低能量
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*6+3:6:21*6     %16-21子载波的第3个比特
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
%     for k=15*6+5:6:21*6     %16-21子载波的第5个比特
%         output_masks(k)=1;
%         output_bits(k)=1;
%     end
%     for k=15*6+6:6:21*6     %16-21子载波的第6个比特
%         output_masks(k)=1;
%         output_bits(k)=0;
%     end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+2;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+3;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+5;
        output_masks(k)=1;
        output_bits(k)=1;
    end
    for n=1:length(subcarriers)
        k = (subcarriers(n)-1)*6+6;
        output_masks(k)=1;
        output_bits(k)=0;
    end
    %Before_interleave_bits=output_bits(matrix_deinterleave);
    Before_interleave_masks=output_masks(matrix_deinterleave);  %变为交织前的位置
    Before_interleave_bits=output_bits(matrix_deinterleave);    %变为交织前的比特
end

