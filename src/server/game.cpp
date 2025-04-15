#include <cstdio>

#include "game.h"

void CGame::OnRoundStart()
{
	puts("CGame::OnRoundStart() uwu");
	m_aPlayers[0].Jump();
}
