kroo41095@gmail.com
prueba@uaslp.com
krooo95@hotmail.com

declare @base = "[aspnet-BloomSoft_V2-20200310111219].dbo";
declare @id_usuario varchar(100);
declare @id_usuario_new varchar(100);
declare @id_partida int;

select @id_usuario = Id from [aspnet-BloomSoft_V2-20200310111219].dbo.AspNetUsers where UserName = 'jorge_cano_c@hotmail.com';
select @id_usuario_new = Id from [aspnet-BloomSoft_V2-20200310111219].dbo.AspNetUsers where UserName = 'prueba@uaslp.com';
select @id_partida = id_partidaJuego from [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJugador where id_usuario = @id_usuario;
insert into [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJugador (id_partidaJuego, id_usuario, puntos) values (@id_partida, @id_usuario_new, 0);

select id_partidaJuego from [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJugador where id_partidaJugador = 303000010;
update [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJugador set id_partidaJuego = 202000009 where id_partidaJugador = 303000010;
update [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJuego set estado = 0 where id_partidaJuego = 202000009;

select * from [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJugador;
select * from [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJuego;
select * from [aspnet-BloomSoft_V2-20200310111219].dbo.AspNetUsers;

declare @id_usuario varchar(100);
select @id_usuario = Id from [aspnet-BloomSoft_V2-20200310111219].dbo.AspNetUsers where UserName = 'jorge_cano_c@hotmail.com';
update [aspnet-BloomSoft_V2-20200310111219].dbo.PartidaJugador set turno = 1 where id_usuario = @id_usuario;
