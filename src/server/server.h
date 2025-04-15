#pragma once

#include "game/game.h"

class CServer {
public:
	void OnInit();
	void OnTick();

	CGame m_Game;
};
