#### Compile the generated bin file
The configuration is shown in the figure.
![config](picture/config.png)
![address](picture/address.png)
```
--flash_mode dio --flash_freq 80m --flash_size detect
0x0 bootloader/bootloader.bin
0x20000 BNN_example.bin
0x10000 partition_table/partition-table.bin
0x15000 ota_data_initial.bin
```
