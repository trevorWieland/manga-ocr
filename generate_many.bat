CALL env\Scripts\activate.bat
set loopcount=4
:loop
python manga_ocr_dev\synthetic_data_generator\run_generate.py --package %loopcount%
set /a loopcount=loopcount+1
if %loopcount%==65 goto exitloop
goto loop
:exitloop
PAUSE
