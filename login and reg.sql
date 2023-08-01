CREATE PROC useradd
      @userID int,
      @Firstname varchar(50),
      @Lastname varchar(50),
      @Contact varchar(50),
      @Gender varchar(50),
      @Address varchar(250),
      @UserName varchar(50),
      @PassWord varchar(50)
	  AS
	  IF @UserName=0
	  BEGIN
				insert into registrationpage(Firstname,Lastname,Contact,Gender,Address,UserName,PassWord)
				values(@Firstname,@Lastname,@Contact,@Gender,@Address,@UserName,@PassWord)
	  END
	  ELSE
	  BEGIN
				update registrationpage
				set
				Firstname =@Firstname,
				Lastname =@Lastname,
				Contact = @Contact,
				Gender = @Gender,
				Address = @Address,
				UserName=@userID,
				PassWord=@PassWord
				where userID=@userID
				
	  END