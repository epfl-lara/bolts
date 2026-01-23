; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!274408 () Bool)

(assert start!274408)

(declare-fun b_free!81065 () Bool)

(declare-fun b_next!81769 () Bool)

(assert (=> start!274408 (= b_free!81065 (not b_next!81769))))

(declare-fun tp!902876 () Bool)

(declare-fun b_and!206615 () Bool)

(assert (=> start!274408 (= tp!902876 b_and!206615)))

(declare-fun b!2826772 () Bool)

(declare-fun e!1789097 () Bool)

(declare-fun tp_is_empty!14501 () Bool)

(declare-fun tp!902875 () Bool)

(assert (=> b!2826772 (= e!1789097 (and tp_is_empty!14501 tp!902875))))

(declare-fun b!2826773 () Bool)

(declare-fun res!1176461 () Bool)

(declare-fun e!1789098 () Bool)

(assert (=> b!2826773 (=> (not res!1176461) (not e!1789098))))

(declare-datatypes ((B!2451 0))(
  ( (B!2452 (val!10445 Int)) )
))
(declare-datatypes ((List!33334 0))(
  ( (Nil!33210) (Cons!33210 (h!38630 B!2451) (t!231043 List!33334)) )
))
(declare-fun l1!953 () List!33334)

(declare-fun l2!930 () List!33334)

(declare-fun subseq!464 (List!33334 List!33334) Bool)

(assert (=> b!2826773 (= res!1176461 (subseq!464 l1!953 l2!930))))

(declare-fun res!1176462 () Bool)

(assert (=> start!274408 (=> (not res!1176462) (not e!1789098))))

(declare-fun p!1912 () Int)

(declare-fun forall!6810 (List!33334 Int) Bool)

(assert (=> start!274408 (= res!1176462 (forall!6810 l2!930 p!1912))))

(assert (=> start!274408 e!1789098))

(declare-fun e!1789100 () Bool)

(assert (=> start!274408 e!1789100))

(assert (=> start!274408 tp!902876))

(assert (=> start!274408 e!1789097))

(declare-fun b!2826774 () Bool)

(declare-fun tp!902877 () Bool)

(assert (=> b!2826774 (= e!1789100 (and tp_is_empty!14501 tp!902877))))

(declare-fun b!2826775 () Bool)

(declare-fun e!1789099 () Bool)

(declare-fun dynLambda!13957 (Int B!2451) Bool)

(assert (=> b!2826775 (= e!1789099 (dynLambda!13957 p!1912 (h!38630 l2!930)))))

(declare-fun b!2826776 () Bool)

(declare-fun res!1176460 () Bool)

(assert (=> b!2826776 (=> (not res!1176460) (not e!1789098))))

(assert (=> b!2826776 (= res!1176460 (and (not (is-Nil!33210 l1!953)) (is-Cons!33210 l2!930) (= (h!38630 l1!953) (h!38630 l2!930))))))

(declare-fun b!2826777 () Bool)

(declare-fun res!1176464 () Bool)

(assert (=> b!2826777 (=> (not res!1176464) (not e!1789098))))

(assert (=> b!2826777 (= res!1176464 (subseq!464 (t!231043 l1!953) (t!231043 l2!930)))))

(declare-fun b!2826778 () Bool)

(assert (=> b!2826778 (= e!1789098 (not e!1789099))))

(declare-fun res!1176463 () Bool)

(assert (=> b!2826778 (=> res!1176463 e!1789099)))

(assert (=> b!2826778 (= res!1176463 (not (forall!6810 (t!231043 l2!930) p!1912)))))

(assert (=> b!2826778 (forall!6810 (t!231043 l1!953) p!1912)))

(declare-datatypes ((Unit!47272 0))(
  ( (Unit!47273) )
))
(declare-fun lt!1008518 () Unit!47272)

(declare-fun lemmaForallSubseq!240 (List!33334 List!33334 Int) Unit!47272)

(assert (=> b!2826778 (= lt!1008518 (lemmaForallSubseq!240 (t!231043 l1!953) (t!231043 l2!930) p!1912))))

(assert (= (and start!274408 res!1176462) b!2826773))

(assert (= (and b!2826773 res!1176461) b!2826776))

(assert (= (and b!2826776 res!1176460) b!2826777))

(assert (= (and b!2826777 res!1176464) b!2826778))

(assert (= (and b!2826778 (not res!1176463)) b!2826775))

(assert (= (and start!274408 (is-Cons!33210 l2!930)) b!2826774))

(assert (= (and start!274408 (is-Cons!33210 l1!953)) b!2826772))

(declare-fun b_lambda!84779 () Bool)

(assert (=> (not b_lambda!84779) (not b!2826775)))

(declare-fun t!231042 () Bool)

(declare-fun tb!154065 () Bool)

(assert (=> (and start!274408 (= p!1912 p!1912) t!231042) tb!154065))

(declare-fun result!191966 () Bool)

(assert (=> tb!154065 (= result!191966 true)))

(assert (=> b!2826775 t!231042))

(declare-fun b_and!206617 () Bool)

(assert (= b_and!206615 (and (=> t!231042 result!191966) b_and!206617)))

(declare-fun m!3256819 () Bool)

(assert (=> b!2826777 m!3256819))

(declare-fun m!3256821 () Bool)

(assert (=> b!2826773 m!3256821))

(declare-fun m!3256823 () Bool)

(assert (=> start!274408 m!3256823))

(declare-fun m!3256825 () Bool)

(assert (=> b!2826778 m!3256825))

(declare-fun m!3256827 () Bool)

(assert (=> b!2826778 m!3256827))

(declare-fun m!3256829 () Bool)

(assert (=> b!2826778 m!3256829))

(declare-fun m!3256831 () Bool)

(assert (=> b!2826775 m!3256831))

(push 1)

(assert (not start!274408))

(assert (not b!2826774))

(assert (not b!2826772))

(assert tp_is_empty!14501)

(assert (not b_next!81769))

(assert (not b_lambda!84779))

(assert (not b!2826773))

(assert b_and!206617)

(assert (not b!2826778))

(assert (not b!2826777))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206617)

(assert (not b_next!81769))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!84783 () Bool)

(assert (= b_lambda!84779 (or (and start!274408 b_free!81065) b_lambda!84783)))

(push 1)

(assert (not b_lambda!84783))

(assert (not start!274408))

(assert (not b!2826774))

(assert (not b!2826772))

(assert tp_is_empty!14501)

(assert (not b_next!81769))

(assert (not b!2826773))

(assert b_and!206617)

(assert (not b!2826778))

(assert (not b!2826777))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206617)

(assert (not b_next!81769))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2826808 () Bool)

(declare-fun e!1789123 () Bool)

(declare-fun e!1789121 () Bool)

(assert (=> b!2826808 (= e!1789123 e!1789121)))

(declare-fun res!1176490 () Bool)

(assert (=> b!2826808 (=> (not res!1176490) (not e!1789121))))

(assert (=> b!2826808 (= res!1176490 (is-Cons!33210 l2!930))))

(declare-fun b!2826810 () Bool)

(declare-fun e!1789124 () Bool)

(assert (=> b!2826810 (= e!1789124 (subseq!464 (t!231043 l1!953) (t!231043 l2!930)))))

(declare-fun d!820440 () Bool)

(declare-fun res!1176489 () Bool)

(assert (=> d!820440 (=> res!1176489 e!1789123)))

(assert (=> d!820440 (= res!1176489 (is-Nil!33210 l1!953))))

(assert (=> d!820440 (= (subseq!464 l1!953 l2!930) e!1789123)))

(declare-fun b!2826809 () Bool)

(declare-fun e!1789122 () Bool)

(assert (=> b!2826809 (= e!1789121 e!1789122)))

(declare-fun res!1176488 () Bool)

(assert (=> b!2826809 (=> res!1176488 e!1789122)))

(assert (=> b!2826809 (= res!1176488 e!1789124)))

(declare-fun res!1176491 () Bool)

(assert (=> b!2826809 (=> (not res!1176491) (not e!1789124))))

(assert (=> b!2826809 (= res!1176491 (= (h!38630 l1!953) (h!38630 l2!930)))))

(declare-fun b!2826811 () Bool)

(assert (=> b!2826811 (= e!1789122 (subseq!464 l1!953 (t!231043 l2!930)))))

(assert (= (and d!820440 (not res!1176489)) b!2826808))

(assert (= (and b!2826808 res!1176490) b!2826809))

(assert (= (and b!2826809 res!1176491) b!2826810))

(assert (= (and b!2826809 (not res!1176488)) b!2826811))

(assert (=> b!2826810 m!3256819))

(declare-fun m!3256847 () Bool)

(assert (=> b!2826811 m!3256847))

(assert (=> b!2826773 d!820440))

(declare-fun b!2826812 () Bool)

(declare-fun e!1789127 () Bool)

(declare-fun e!1789125 () Bool)

(assert (=> b!2826812 (= e!1789127 e!1789125)))

(declare-fun res!1176494 () Bool)

(assert (=> b!2826812 (=> (not res!1176494) (not e!1789125))))

(assert (=> b!2826812 (= res!1176494 (is-Cons!33210 (t!231043 l2!930)))))

(declare-fun b!2826814 () Bool)

(declare-fun e!1789128 () Bool)

(assert (=> b!2826814 (= e!1789128 (subseq!464 (t!231043 (t!231043 l1!953)) (t!231043 (t!231043 l2!930))))))

(declare-fun d!820442 () Bool)

(declare-fun res!1176493 () Bool)

(assert (=> d!820442 (=> res!1176493 e!1789127)))

(assert (=> d!820442 (= res!1176493 (is-Nil!33210 (t!231043 l1!953)))))

(assert (=> d!820442 (= (subseq!464 (t!231043 l1!953) (t!231043 l2!930)) e!1789127)))

(declare-fun b!2826813 () Bool)

(declare-fun e!1789126 () Bool)

(assert (=> b!2826813 (= e!1789125 e!1789126)))

(declare-fun res!1176492 () Bool)

(assert (=> b!2826813 (=> res!1176492 e!1789126)))

(assert (=> b!2826813 (= res!1176492 e!1789128)))

(declare-fun res!1176495 () Bool)

(assert (=> b!2826813 (=> (not res!1176495) (not e!1789128))))

(assert (=> b!2826813 (= res!1176495 (= (h!38630 (t!231043 l1!953)) (h!38630 (t!231043 l2!930))))))

(declare-fun b!2826815 () Bool)

(assert (=> b!2826815 (= e!1789126 (subseq!464 (t!231043 l1!953) (t!231043 (t!231043 l2!930))))))

(assert (= (and d!820442 (not res!1176493)) b!2826812))

(assert (= (and b!2826812 res!1176494) b!2826813))

(assert (= (and b!2826813 res!1176495) b!2826814))

(assert (= (and b!2826813 (not res!1176492)) b!2826815))

(declare-fun m!3256849 () Bool)

(assert (=> b!2826814 m!3256849))

(declare-fun m!3256851 () Bool)

(assert (=> b!2826815 m!3256851))

(assert (=> b!2826777 d!820442))

(declare-fun d!820444 () Bool)

(declare-fun res!1176500 () Bool)

(declare-fun e!1789133 () Bool)

(assert (=> d!820444 (=> res!1176500 e!1789133)))

(assert (=> d!820444 (= res!1176500 (is-Nil!33210 (t!231043 l2!930)))))

(assert (=> d!820444 (= (forall!6810 (t!231043 l2!930) p!1912) e!1789133)))

(declare-fun b!2826820 () Bool)

(declare-fun e!1789134 () Bool)

(assert (=> b!2826820 (= e!1789133 e!1789134)))

(declare-fun res!1176501 () Bool)

(assert (=> b!2826820 (=> (not res!1176501) (not e!1789134))))

(assert (=> b!2826820 (= res!1176501 (dynLambda!13957 p!1912 (h!38630 (t!231043 l2!930))))))

(declare-fun b!2826821 () Bool)

(assert (=> b!2826821 (= e!1789134 (forall!6810 (t!231043 (t!231043 l2!930)) p!1912))))

(assert (= (and d!820444 (not res!1176500)) b!2826820))

(assert (= (and b!2826820 res!1176501) b!2826821))

(declare-fun b_lambda!84787 () Bool)

(assert (=> (not b_lambda!84787) (not b!2826820)))

(declare-fun t!231048 () Bool)

(declare-fun tb!154069 () Bool)

(assert (=> (and start!274408 (= p!1912 p!1912) t!231048) tb!154069))

(declare-fun result!191970 () Bool)

(assert (=> tb!154069 (= result!191970 true)))

(assert (=> b!2826820 t!231048))

(declare-fun b_and!206623 () Bool)

(assert (= b_and!206617 (and (=> t!231048 result!191970) b_and!206623)))

(declare-fun m!3256853 () Bool)

(assert (=> b!2826820 m!3256853))

(declare-fun m!3256855 () Bool)

(assert (=> b!2826821 m!3256855))

(assert (=> b!2826778 d!820444))

(declare-fun d!820448 () Bool)

(declare-fun res!1176502 () Bool)

(declare-fun e!1789135 () Bool)

(assert (=> d!820448 (=> res!1176502 e!1789135)))

(assert (=> d!820448 (= res!1176502 (is-Nil!33210 (t!231043 l1!953)))))

(assert (=> d!820448 (= (forall!6810 (t!231043 l1!953) p!1912) e!1789135)))

(declare-fun b!2826822 () Bool)

(declare-fun e!1789136 () Bool)

(assert (=> b!2826822 (= e!1789135 e!1789136)))

(declare-fun res!1176503 () Bool)

(assert (=> b!2826822 (=> (not res!1176503) (not e!1789136))))

(assert (=> b!2826822 (= res!1176503 (dynLambda!13957 p!1912 (h!38630 (t!231043 l1!953))))))

(declare-fun b!2826823 () Bool)

(assert (=> b!2826823 (= e!1789136 (forall!6810 (t!231043 (t!231043 l1!953)) p!1912))))

(assert (= (and d!820448 (not res!1176502)) b!2826822))

(assert (= (and b!2826822 res!1176503) b!2826823))

(declare-fun b_lambda!84789 () Bool)

(assert (=> (not b_lambda!84789) (not b!2826822)))

(declare-fun t!231050 () Bool)

(declare-fun tb!154071 () Bool)

(assert (=> (and start!274408 (= p!1912 p!1912) t!231050) tb!154071))

(declare-fun result!191972 () Bool)

(assert (=> tb!154071 (= result!191972 true)))

(assert (=> b!2826822 t!231050))

(declare-fun b_and!206625 () Bool)

(assert (= b_and!206623 (and (=> t!231050 result!191972) b_and!206625)))

(declare-fun m!3256857 () Bool)

(assert (=> b!2826822 m!3256857))

(declare-fun m!3256859 () Bool)

(assert (=> b!2826823 m!3256859))

(assert (=> b!2826778 d!820448))

(declare-fun d!820450 () Bool)

(assert (=> d!820450 (forall!6810 (t!231043 l1!953) p!1912)))

(declare-fun lt!1008524 () Unit!47272)

(declare-fun choose!16704 (List!33334 List!33334 Int) Unit!47272)

(assert (=> d!820450 (= lt!1008524 (choose!16704 (t!231043 l1!953) (t!231043 l2!930) p!1912))))

(assert (=> d!820450 (forall!6810 (t!231043 l2!930) p!1912)))

(assert (=> d!820450 (= (lemmaForallSubseq!240 (t!231043 l1!953) (t!231043 l2!930) p!1912) lt!1008524)))

(declare-fun bs!518088 () Bool)

(assert (= bs!518088 d!820450))

(assert (=> bs!518088 m!3256827))

(declare-fun m!3256861 () Bool)

(assert (=> bs!518088 m!3256861))

(assert (=> bs!518088 m!3256825))

(assert (=> b!2826778 d!820450))

(declare-fun d!820452 () Bool)

(declare-fun res!1176512 () Bool)

(declare-fun e!1789145 () Bool)

(assert (=> d!820452 (=> res!1176512 e!1789145)))

(assert (=> d!820452 (= res!1176512 (is-Nil!33210 l2!930))))

(assert (=> d!820452 (= (forall!6810 l2!930 p!1912) e!1789145)))

(declare-fun b!2826832 () Bool)

(declare-fun e!1789146 () Bool)

(assert (=> b!2826832 (= e!1789145 e!1789146)))

(declare-fun res!1176513 () Bool)

(assert (=> b!2826832 (=> (not res!1176513) (not e!1789146))))

(assert (=> b!2826832 (= res!1176513 (dynLambda!13957 p!1912 (h!38630 l2!930)))))

(declare-fun b!2826833 () Bool)

(assert (=> b!2826833 (= e!1789146 (forall!6810 (t!231043 l2!930) p!1912))))

(assert (= (and d!820452 (not res!1176512)) b!2826832))

(assert (= (and b!2826832 res!1176513) b!2826833))

(declare-fun b_lambda!84791 () Bool)

(assert (=> (not b_lambda!84791) (not b!2826832)))

(assert (=> b!2826832 t!231042))

(declare-fun b_and!206627 () Bool)

(assert (= b_and!206625 (and (=> t!231042 result!191966) b_and!206627)))

(assert (=> b!2826832 m!3256831))

(assert (=> b!2826833 m!3256825))

(assert (=> start!274408 d!820452))

(declare-fun b!2826842 () Bool)

(declare-fun e!1789153 () Bool)

(declare-fun tp!902889 () Bool)

(assert (=> b!2826842 (= e!1789153 (and tp_is_empty!14501 tp!902889))))

(assert (=> b!2826774 (= tp!902877 e!1789153)))

(assert (= (and b!2826774 (is-Cons!33210 (t!231043 l2!930))) b!2826842))

(declare-fun b!2826843 () Bool)

(declare-fun e!1789154 () Bool)

(declare-fun tp!902890 () Bool)

(assert (=> b!2826843 (= e!1789154 (and tp_is_empty!14501 tp!902890))))

(assert (=> b!2826772 (= tp!902875 e!1789154)))

(assert (= (and b!2826772 (is-Cons!33210 (t!231043 l1!953))) b!2826843))

(declare-fun b_lambda!84793 () Bool)

(assert (= b_lambda!84791 (or (and start!274408 b_free!81065) b_lambda!84793)))

(declare-fun b_lambda!84795 () Bool)

(assert (= b_lambda!84787 (or (and start!274408 b_free!81065) b_lambda!84795)))

(declare-fun b_lambda!84797 () Bool)

(assert (= b_lambda!84789 (or (and start!274408 b_free!81065) b_lambda!84797)))

(push 1)

(assert (not b!2826810))

(assert (not b_lambda!84783))

(assert (not b_lambda!84795))

(assert (not d!820450))

(assert (not b!2826843))

(assert (not b!2826821))

(assert (not b!2826814))

(assert b_and!206627)

(assert (not b_next!81769))

(assert (not b!2826833))

(assert (not b!2826811))

(assert (not b_lambda!84797))

(assert (not b!2826815))

(assert tp_is_empty!14501)

(assert (not b_lambda!84793))

(assert (not b!2826842))

(assert (not b!2826823))

(check-sat)

(pop 1)

(push 1)

(assert b_and!206627)

(assert (not b_next!81769))

(check-sat)

(pop 1)

