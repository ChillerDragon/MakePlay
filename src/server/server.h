#pragma once

#include "game.h"

class CServer {
public:
	void OnInit();
	void OnTick();

	CGame m_Game;
};
