Xilinx社の AXI Interconnect のバス幅変換機能を調べるためのシミュレーション環境.


シミュレーション方法
--------------------

1) Vivado を起動し、Open Project から project/project.xpr を開く.

   * [IP_Flow 19-933] Could not find IP file for IP 'tb_1_auto_ds_14'. とか出るが、ここでは無視.

2) 次の何れかの方法で tb_1.bd を開く.   

   * Flow Navigator > IP Integrator > Open Block Design から tb_1.bd を選択.  

   * メニューバー > Flow > Open Block Design から tb_1.bd を選択.  

3) Block Design を生成する.

   * Flow Navigator > IP Integrator > Generate Block Design から tb_1.bd を選択.  

4) 次の何れかの方法でシミュレーションを行う.

   * Flow Navigator > Simulation > Run Simulation を選択.

   * メニューバー > Flow > Run Simulation を選択.


開発環境
--------

Xilinx Vivado 2013.4 で動作を確認しています.


