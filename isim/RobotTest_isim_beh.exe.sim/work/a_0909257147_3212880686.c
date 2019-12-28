/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/MainModuleee/MainModuleee/sign_extend.vhd";



static void work_a_0909257147_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(39, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);

LAB2:    t7 = (t0 + 2920);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0909257147_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (15 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)2);
    if (t8 != 0)
        goto LAB3;

LAB4:
LAB7:    t17 = (t0 + 4704);
    t19 = (16U != 16U);
    if (t19 == 1)
        goto LAB9;

LAB10:    t20 = (t0 + 3080);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t17, 16U);
    xsi_driver_first_trans_delta(t20, 0U, 16U, 0LL);

LAB2:    t25 = (t0 + 2936);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 4688);
    t11 = (16U != 16U);
    if (t11 == 1)
        goto LAB5;

LAB6:    t12 = (t0 + 3080);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t9, 16U);
    xsi_driver_first_trans_delta(t12, 0U, 16U, 0LL);
    goto LAB2;

LAB5:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB6;

LAB8:    goto LAB2;

LAB9:    xsi_size_not_matching(16U, 16U, 0);
    goto LAB10;

}


extern void work_a_0909257147_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0909257147_3212880686_p_0,(void *)work_a_0909257147_3212880686_p_1};
	xsi_register_didat("work_a_0909257147_3212880686", "isim/RobotTest_isim_beh.exe.sim/work/a_0909257147_3212880686.didat");
	xsi_register_executes(pe);
}
