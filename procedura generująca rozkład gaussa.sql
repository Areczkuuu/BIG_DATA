DROP PROCEDURE gauss;
GO
CREATE PROCEDURE gauss( @mean float =0.75, @stdDev float = 5.0, @value1 float OUT) 
AS
declare @pi float, @2pi float, @randNum1 float, @randNum2 float
declare @temp float

SET @pi = pi()
SET @2pi = 2.0 * @pi
SET @randNum1 = rand()
SET @randNum2 = rand()
SET @temp = rand()
IF @temp<0.5
	SET @value1 =sqrt(-2.0*log(@randNum1))*cos(@2pi*@randNum2)*@stdDev+@mean
ELSE
	SET @value1 = sqrt(-2.0*log(@randNum1))*sin(@2pi*@randNum2)*@stdDev+@mean

RETURN @value1

GO
