/*
 * \brief   Interface of clipping stack handling module
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

#ifndef _DOPE_CLIPPING_H_
#define _DOPE_CLIPPING_H_

struct clipping_services {
	void     (*push)        (long x1, long y1, long x2, long y2);
	void     (*pop)         (void);
	void     (*reset)       (void);
	void     (*set_range)   (long x1, long y1, long x2, long y2);
	long     (*get_x1)      (void);
	long     (*get_y1)      (void);
	long     (*get_x2)      (void);
	long     (*get_y2)      (void);
};


#endif /* _DOPE_CLIPPING_H_ */
