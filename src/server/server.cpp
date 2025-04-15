#include <cstdio>

#include "server.h"

void CServer::OnInit()
{
	puts("server init");
}

void CServer::OnTick()
{
	puts("server tick");
}

int main()
{
	CServer Server;
	Server.OnInit();
	Server.OnTick();
}
