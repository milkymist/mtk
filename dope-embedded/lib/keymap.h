/*
 * \brief   Interface of keymap module
 * \date    2002-11-13
 * \author  Norman Feske <norman.feske@genode-labs.com>
 */

/*
 * Copyright (C) 2002-2008 Norman Feske <norman.feske@genode-labs.com>
 * Genode Labs, Feske & Helmuth Systementwicklung GbR
 *
 * This file is part of the DOpE-embedded package, which is distributed
 * under the terms of the GNU General Public License version 2.
 */

#ifndef _DOPE_KEYMAP_H_
#define _DOPE_KEYMAP_H_


#define KEYMAP_SWITCH_LSHIFT    0x01
#define KEYMAP_SWITCH_RSHIFT    0x02
#define KEYMAP_SWITCH_LCONTROL  0x04
#define KEYMAP_SWITCH_RCONTROL  0x08
#define KEYMAP_SWITCH_ALT       0x10
#define KEYMAP_SWITCH_ALTGR     0x11


struct keymap_services {
	char    (*get_ascii) (long keycode,long switches);
};

#endif /* _DOPE_KEYMAP_H_ */
