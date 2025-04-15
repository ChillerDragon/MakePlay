#pragma once

#include "player.h"

class CGame
{
	public:
	void OnRoundStart();

	CPlayer m_aPlayers[10];
};
