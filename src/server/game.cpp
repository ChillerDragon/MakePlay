#include <cstdio>

#include "game.h"

void CGame::OnRoundStart()
{
	puts("CGame::OnRoundStart()");
	m_aPlayers[0].Jump();
}
