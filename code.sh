//ffmpeg,video(0-32).mp4
//***support by XinYuC.
#def in 2x2
{
    ffmpeg
    -re  -i  1.mp4  
    -re  -i  2.mp4  
    -re  -i  3.mp4  
    -re  -i  4.mp4 
    -filter_complex 
    "nullsrc=size=1920x1080 [base];
    [0:v] setpts=PTS-STARTPTS,scale=960x540 [a];
    [1:v] setpts=PTS-STARTPTS, scale=960x540 [b];
    [2:v] setpts=PTS-STARTPTS, scale=960x540 [c];
    [3:v] setpts=PTS-STARTPTS, scale=960x540 [d];
    [base][a] overlay=shortest=1:x=0:y=0[tmp1];
    [tmp1][b] overlay=shortest=1:x=960:y=0 [tmp2];
    [tmp2][c] overlay=shortest=1:x=0:y=540 [tmp3];
    [tmp3][d] overlay=shortest=1:x=960:y=540" 
    -c:v libx264 out2x2.mp4
}
#def in 3x3
{
    ffmpeg
    -re  -i  1.mp4  
    -re  -i  2.mp4  
    -re  -i  3.mp4  
    -re  -i  4.mp4  
    -re  -i  5.mp4  
    -re  -i  6.mp4  
    -re  -i  7.mp4  
    -re  -i  8.mp4  
    -re  -i  9.mp4 
    -filter_complex 
    "nullsrc=size=1920x1080 [base];
    [0:v] setpts=PTS-STARTPTS,scale=640x360 [a];
    [1:v] setpts=PTS-STARTPTS, scale=640x360 [b];
    [2:v] setpts=PTS-STARTPTS, scale=640x360 [c];
    [3:v] setpts=PTS-STARTPTS, scale=640x360 [d];
    [4:v] setpts=PTS-STARTPTS, scale=640x360 [e];
    [5:v] setpts=PTS-STARTPTS, scale=640x360 [f];
    [6:v] setpts=PTS-STARTPTS, scale=640x360 [g];
    [7:v] setpts=PTS-STARTPTS, scale=640x360 [h];
    [8:v] setpts=PTS-STARTPTS, scale=640x360 [i];
    [base][a] overlay=shortest=1:x=0:y=0[tmp1];
    [tmp1][b] overlay=shortest=1:x=640:y=0 [tmp2];
    [tmp2][c] overlay=shortest=1:x=1280:y=0 [tmp3];
    [tmp3][d] overlay=shortest=1:x=0:y=360 [tmp4];
    [tmp4][e] overlay=shortest=1:x=640:y=360[tmp5];
    [tmp5][f] overlay=shortest=1:x=1280:y=360[tmp6];
    [tmp6][g] overlay=shortest=1:x=0:y=720[tmp7];
    [tmp7][h] overlay=shortest=1:x=640:y=720[tmp8];
    [tmp8][i] overlay=shortest=1:x=1280:y=720" 
    -c:v libx264 out3x3.mp4
}
#def in 4x4{
    ffmpeg
    -re  -i  1.mp4  
    -re  -i  2.mp4  
    -re  -i  3.mp4  
    -re  -i  4.mp4  
    -re  -i  5.mp4  
    -re  -i  6.mp4  
    -re  -i  7.mp4  ``
    -re  -i  8.mp4  
    -re  -i  9.mp4 
    -re  -i  10.mp4 
    -re  -i  11.mp4 
    -re  -i  12.mp4 
    -re  -i  13.mp4 
    -re  -i  14.mp4 
    -re  -i  15.mp4
    -re  -i  16.mp4  
    -filter_complex 
    "nullsrc=size=1920x1080 [base];
    [0:v] setpts=PTS-STARTPTS,scale=540x270 [a];
    [1:v] setpts=PTS-STARTPTS, scale=540x270 [b];
    [2:v] setpts=PTS-STARTPTS, scale=540x270 [c];
    [3:v] setpts=PTS-STARTPTS, scale=540x270 [d];
    [4:v] setpts=PTS-STARTPTS, scale=540x270 [e];
    [5:v] setpts=PTS-STARTPTS, scale=540x270 [f];
    [6:v] setpts=PTS-STARTPTS, scale=540x270 [g];
    [7:v] setpts=PTS-STARTPTS, scale=540x270 [h];
    [8:v] setpts=PTS-STARTPTS, scale=540x270 [i];
    [9:v] setpts=PTS-STARTPTS, scale=540x270 [j];
    [10:v] setpts=PTS-STARTPTS, scale=540x270 [k];
    [11:v] setpts=PTS-STARTPTS, scale=540x270 [l];
    [12:v] setpts=PTS-STARTPTS, scale=540x270 [m];
    [13:v] setpts=PTS-STARTPTS, scale=540x270 [n];
    [14:v] setpts=PTS-STARTPTS, scale=540x270 [o];
    [15:v] setpts=PTS-STARTPTS, scale=540x270 [p];
    [base][a] overlay=shortest=1:x=0:y=0[tmp1];
    [tmp1][b] overlay=shortest=1:x=480:y=0[tmp2];
    [tmp2][c] overlay=shortest=1:x=960:y=0[tmp3];
    [tmp3][d] overlay=shortest=1:x=1440:y=0[tmp4];
    [tmp4][e] overlay=shortest=1:x=0:y=270[tmp5];
    [tmp5][f] overlay=shortest=1:x=480:y=270[tmp6];
    [tmp6][g] overlay=shortest=1:x=960:y=270[tmp7];
    [tmp7][h] overlay=shortest=1:x=1440:y=270[tmp8];
    [tmp8][i] overlay=shortest=1:x=0:y=540[tmp9];
    [tmp9][j] overlay=shortest=1:x=480:y=540[tmp10];
    [tmp10][k] overlay=shortest=1:x=960:y=540[tmp11];
    [tmp11][l] overlay=shortest=1:x=1440:y=540[tmp12];
    [tmp12][m]overlay=shortest=1:x=0:y=810[tmp13];
    [tmp13][n]overlay=shortest=1:x=480:y=810[tmp14];
    [tmp14][o]overlay=shortest=1:x=960:y=810[tmp15];
    [tmp15][p]overlay=shortest=1:x=1440:y=810"
    -c:v libx264 out4x4.mp4
}
#def in 5x5
{
        ffmpeg
    -re  -i  1.mp4  
    -re  -i  2.mp4  
    -re  -i  3.mp4  
    -re  -i  4.mp4  
    -re  -i  5.mp4  
    -re  -i  6.mp4  
    -re  -i  7.mp4  ``
    -re  -i  8.mp4  
    -re  -i  9.mp4 
    -re  -i  10.mp4 
    -re  -i  11.mp4 
    -re  -i  12.mp4 
    -re  -i  13.mp4 
    -re  -i  14.mp4 
    -re  -i  15.mp4
    -re  -i  16.mp4
    -re  -i  17.mp4  
    -re  -i  18.mp4
    -re  -i  19.mp4
    -re  -i  20.mp4
    -re  -i  21.mp4
    -re  -i  22.mp4
    -re  -i  23.mp4
    -re  -i  24.mp4
    -re  -i  25.mp4
    -filter_complex "
    nullsrc=size=1920x1080 [00];
    [0:v] setpts=PTS-STARTPTS,scale=384x216[a];
    [1:v] setpts=PTS-STARTPTS,scale=384x216[b];
    [2:v] setpts=PTS-STARTPTS,scale=384x216[c];
    [3:v] setpts=PTS-STARTPTS,scale=384x216[d];
    [4:v] setpts=PTS-STARTPTS,scale=384x216[e];
    [5:v] setpts=PTS-STARTPTS,scale=384x216[f];
    [6:v] setpts=PTS-STARTPTS,scale=384x216[g];
    [7:v] setpts=PTS-STARTPTS,scale=384x216[h];
    [8:v] setpts=PTS-STARTPTS,scale=384x216[i];
    [9:v] setpts=PTS-STARTPTS,scale=384x216[j];
    [10:v] setpts=PTS-STARTPTS,scale=384x216[k];
    [11:v] setpts=PTS-STARTPTS,scale=384x216[l];
    [12:v] setpts=PTS-STARTPTS,scale=384x216[m];
    [13:v] setpts=PTS-STARTPTS,scale=384x216[n];
    [14:v] setpts=PTS-STARTPTS,scale=384x216[o];
    [15:v] setpts=PTS-STARTPTS,scale=384x216[p];
    [16:v] setpts=PTS-STARTPTS,scale=384x216[q];
    [17:v] setpts=PTS-STARTPTS,scale=384x216[r];
    [18:v] setpts=PTS-STARTPTS,scale=384x216[s];
    [19:v] setpts=PTS-STARTPTS,scale=384x216[t];
    [20:v] setpts=PTS-STARTPTS,scale=384x216[u];
    [21:v] setpts=PTS-STARTPTS,scale=384x216[v];
    [22:v] setpts=PTS-STARTPTS,scale=384x216[w];
    [23:v] setpts=PTS-STARTPTS,scale=384x216[x];
    [24:v] setpts=PTS-STARTPTS,scale=384x216[y];
    [00][a]overlay=shortest=1:x=0:0y=[01];
    [01][b]overlay=shortest=1:x=384:y=0[02];
    [02][c]overlay=shortest=1:x=768:y=0[03];
    [03][d]overlay=shortest=1:x=1152:y=0[04];
    [04][e]overlay=shortest=1:x=1536:y=0[05];
    [05][f]overlay=shortest=1:x=0:y=216[06];
    [06][g]overlay=shortest=1:x=384:y=216[07];
    [07][h]overlay=shortest=1:x=768:y=216[08];
    [08][i]overlay=shortest=1:x=1152:y=216[09];
    [09][j]overlay=shortest=1:x=1536:y=216[10];
    [10][k]overlay=shortest=1:x=0:y=432[11];
    [11][l]overlay=shortest=1:x=384:y=432[12];
    [12][m]overlay=shortest=1:x=768:y=432[13];
    [13][n]overlay=shortest=1:x=1152:y=432[14];
    [14][o]overlay=shortest=1:x=1536:y=432[15];
    [15][p]overlay=shortest=1:x=0:y=648[16];
    [16][q]overlay=shortest=1:x=384:y=648[17];
    [17][r]overlay=shortest=1:x=768:y=648[18];
    [18][s]overlay=shortest=1:x=1152:y=648[19];
    [19][t]overlay=shortest=1:x=1536:y=648[20];
    [20][u]overlay=shortest=1:x=0:y=864[21];
    [21][v]overlay=shortest=1:x=384:y=864[22];
    [22][w]overlay=shortest=1:x=768:y=864[23];
    [23][x]overlay=shortest=1:x=1152:y=864[24];
    [24][y]overlay=shortest=1:x=1536:y=864"
    -c:v libx264 out5x3.mp4
