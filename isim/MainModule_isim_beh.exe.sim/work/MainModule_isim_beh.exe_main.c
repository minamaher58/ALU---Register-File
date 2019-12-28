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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_2651245562;
char *WORK_P_3594323904;
char *IEEE_P_3620187407;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *WORK_P_1808028441;
char *WORK_P_2002099293;
char *IEEE_P_0774719531;
char *IEEE_P_3564397177;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_2002099293_init();
    work_p_1808028441_init();
    work_p_2651245562_init();
    work_p_3594323904_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_3940628375_3212880686_init();
    work_a_1153420228_3212880686_init();
    work_a_0763730103_3212880686_init();
    work_a_3853510154_3212880686_init();
    work_a_0909257147_3212880686_init();
    work_a_2458711413_3212880686_init();
    work_a_2010860639_3212880686_init();
    work_a_2023191012_3212880686_init();
    work_a_2354380577_3212880686_init();
    work_a_2166523021_3212880686_init();
    work_a_3044219816_3212880686_init();
    work_a_2278322344_3212880686_init();
    ieee_p_1242562249_init();
    work_a_0431434425_3212880686_init();
    work_a_2660266848_3212880686_init();
    work_a_1053844871_3212880686_init();
    work_a_1436514732_3212880686_init();
    work_a_2531392627_3212880686_init();
    work_a_2633138767_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_1215300100_3212880686_init();
    work_a_3521675597_3212880686_init();


    xsi_register_tops("work_a_3521675597_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_2651245562 = xsi_get_engine_memory("work_p_2651245562");
    WORK_P_3594323904 = xsi_get_engine_memory("work_p_3594323904");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    WORK_P_1808028441 = xsi_get_engine_memory("work_p_1808028441");
    WORK_P_2002099293 = xsi_get_engine_memory("work_p_2002099293");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
