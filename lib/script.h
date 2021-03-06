/*
 * \brief   Interface of the MTK command interpreter
 */

/*
 * Copyright (C) 2002-2008 Norman Feske <norman.feske@genode-labs.com>
 * Genode Labs, Feske & Helmuth Systementwicklung GbR
 *
 * This file is part of the MTK package, which is distributed
 * under the terms of the GNU General Public License version 2.
 */

#ifndef _MTK_SCRIPT_H_
#define _MTK_SCRIPT_H_

struct widtype;
struct script_services {
	void *(*reg_widget_type)   (char *widtype_name, void *(*create_func)(void));
	void  (*reg_widget_method) (struct widtype *, char *desc, void *methadr);
	void  (*reg_widget_attrib) (struct widtype *, char *desc, void *get, void *set, void *update);
	int   (*exec_command)      (u32 app_id, const char *cmd, char *dst, int dst_len);
};


#endif /* _MTK_SCRIPT_H_ */
