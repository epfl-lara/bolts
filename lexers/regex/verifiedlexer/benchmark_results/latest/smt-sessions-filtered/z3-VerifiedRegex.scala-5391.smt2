; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274502 () Bool)

(assert start!274502)

(declare-fun b_free!81099 () Bool)

(declare-fun b_next!81803 () Bool)

(assert (=> start!274502 (= b_free!81099 (not b_next!81803))))

(declare-fun tp!903077 () Bool)

(declare-fun b_and!206709 () Bool)

(assert (=> start!274502 (= tp!903077 b_and!206709)))

(declare-fun b!2827485 () Bool)

(declare-fun e!1789615 () Bool)

(declare-datatypes ((B!2485 0))(
  ( (B!2486 (val!10462 Int)) )
))
(declare-datatypes ((List!33351 0))(
  ( (Nil!33227) (Cons!33227 (h!38647 B!2485) (t!231118 List!33351)) )
))
(declare-fun l1!953 () List!33351)

(declare-fun p!1912 () Int)

(declare-fun forall!6827 (List!33351 Int) Bool)

(assert (=> b!2827485 (= e!1789615 (forall!6827 l1!953 p!1912))))

(declare-fun b!2827486 () Bool)

(declare-fun res!1176975 () Bool)

(assert (=> b!2827486 (=> res!1176975 e!1789615)))

(declare-fun l2!930 () List!33351)

(declare-fun dynLambda!13971 (Int B!2485) Bool)

(assert (=> b!2827486 (= res!1176975 (not (dynLambda!13971 p!1912 (h!38647 l2!930))))))

(declare-fun res!1176977 () Bool)

(declare-fun e!1789616 () Bool)

(assert (=> start!274502 (=> (not res!1176977) (not e!1789616))))

(assert (=> start!274502 (= res!1176977 (forall!6827 l2!930 p!1912))))

(assert (=> start!274502 e!1789616))

(declare-fun e!1789618 () Bool)

(assert (=> start!274502 e!1789618))

(assert (=> start!274502 tp!903077))

(declare-fun e!1789617 () Bool)

(assert (=> start!274502 e!1789617))

(declare-fun b!2827487 () Bool)

(assert (=> b!2827487 (= e!1789616 (not e!1789615))))

(declare-fun res!1176974 () Bool)

(assert (=> b!2827487 (=> res!1176974 e!1789615)))

(assert (=> b!2827487 (= res!1176974 (not (forall!6827 (t!231118 l2!930) p!1912)))))

(assert (=> b!2827487 (forall!6827 (t!231118 l1!953) p!1912)))

(declare-datatypes ((Unit!47282 0))(
  ( (Unit!47283) )
))
(declare-fun lt!1008559 () Unit!47282)

(declare-fun lemmaForallSubseq!245 (List!33351 List!33351 Int) Unit!47282)

(assert (=> b!2827487 (= lt!1008559 (lemmaForallSubseq!245 (t!231118 l1!953) (t!231118 l2!930) p!1912))))

(declare-fun b!2827488 () Bool)

(declare-fun tp_is_empty!14535 () Bool)

(declare-fun tp!903076 () Bool)

(assert (=> b!2827488 (= e!1789617 (and tp_is_empty!14535 tp!903076))))

(declare-fun b!2827489 () Bool)

(declare-fun res!1176971 () Bool)

(assert (=> b!2827489 (=> res!1176971 e!1789615)))

(assert (=> b!2827489 (= res!1176971 (not (dynLambda!13971 p!1912 (h!38647 l1!953))))))

(declare-fun b!2827490 () Bool)

(declare-fun res!1176972 () Bool)

(assert (=> b!2827490 (=> (not res!1176972) (not e!1789616))))

(get-info :version)

(assert (=> b!2827490 (= res!1176972 (and (not ((_ is Nil!33227) l1!953)) ((_ is Cons!33227) l2!930) (= (h!38647 l1!953) (h!38647 l2!930))))))

(declare-fun b!2827491 () Bool)

(declare-fun res!1176976 () Bool)

(assert (=> b!2827491 (=> (not res!1176976) (not e!1789616))))

(declare-fun subseq!481 (List!33351 List!33351) Bool)

(assert (=> b!2827491 (= res!1176976 (subseq!481 l1!953 l2!930))))

(declare-fun b!2827492 () Bool)

(declare-fun tp!903078 () Bool)

(assert (=> b!2827492 (= e!1789618 (and tp_is_empty!14535 tp!903078))))

(declare-fun b!2827493 () Bool)

(declare-fun res!1176973 () Bool)

(assert (=> b!2827493 (=> (not res!1176973) (not e!1789616))))

(assert (=> b!2827493 (= res!1176973 (subseq!481 (t!231118 l1!953) (t!231118 l2!930)))))

(assert (= (and start!274502 res!1176977) b!2827491))

(assert (= (and b!2827491 res!1176976) b!2827490))

(assert (= (and b!2827490 res!1176972) b!2827493))

(assert (= (and b!2827493 res!1176973) b!2827487))

(assert (= (and b!2827487 (not res!1176974)) b!2827486))

(assert (= (and b!2827486 (not res!1176975)) b!2827489))

(assert (= (and b!2827489 (not res!1176971)) b!2827485))

(assert (= (and start!274502 ((_ is Cons!33227) l2!930)) b!2827492))

(assert (= (and start!274502 ((_ is Cons!33227) l1!953)) b!2827488))

(declare-fun b_lambda!84887 () Bool)

(assert (=> (not b_lambda!84887) (not b!2827486)))

(declare-fun t!231115 () Bool)

(declare-fun tb!154121 () Bool)

(assert (=> (and start!274502 (= p!1912 p!1912) t!231115) tb!154121))

(declare-fun result!192046 () Bool)

(assert (=> tb!154121 (= result!192046 true)))

(assert (=> b!2827486 t!231115))

(declare-fun b_and!206711 () Bool)

(assert (= b_and!206709 (and (=> t!231115 result!192046) b_and!206711)))

(declare-fun b_lambda!84889 () Bool)

(assert (=> (not b_lambda!84889) (not b!2827489)))

(declare-fun t!231117 () Bool)

(declare-fun tb!154123 () Bool)

(assert (=> (and start!274502 (= p!1912 p!1912) t!231117) tb!154123))

(declare-fun result!192048 () Bool)

(assert (=> tb!154123 (= result!192048 true)))

(assert (=> b!2827489 t!231117))

(declare-fun b_and!206713 () Bool)

(assert (= b_and!206711 (and (=> t!231117 result!192048) b_and!206713)))

(declare-fun m!3257141 () Bool)

(assert (=> b!2827487 m!3257141))

(declare-fun m!3257143 () Bool)

(assert (=> b!2827487 m!3257143))

(declare-fun m!3257145 () Bool)

(assert (=> b!2827487 m!3257145))

(declare-fun m!3257147 () Bool)

(assert (=> start!274502 m!3257147))

(declare-fun m!3257149 () Bool)

(assert (=> b!2827489 m!3257149))

(declare-fun m!3257151 () Bool)

(assert (=> b!2827491 m!3257151))

(declare-fun m!3257153 () Bool)

(assert (=> b!2827486 m!3257153))

(declare-fun m!3257155 () Bool)

(assert (=> b!2827493 m!3257155))

(declare-fun m!3257157 () Bool)

(assert (=> b!2827485 m!3257157))

(check-sat (not start!274502) (not b!2827491) (not b!2827493) (not b!2827487) (not b!2827485) tp_is_empty!14535 (not b_lambda!84887) (not b_next!81803) (not b!2827488) b_and!206713 (not b!2827492) (not b_lambda!84889))
(check-sat b_and!206713 (not b_next!81803))
(get-model)

(declare-fun b_lambda!84891 () Bool)

(assert (= b_lambda!84887 (or (and start!274502 b_free!81099) b_lambda!84891)))

(declare-fun b_lambda!84893 () Bool)

(assert (= b_lambda!84889 (or (and start!274502 b_free!81099) b_lambda!84893)))

(check-sat (not start!274502) (not b!2827491) (not b!2827493) (not b!2827485) (not b_lambda!84893) tp_is_empty!14535 (not b_next!81803) (not b!2827488) (not b!2827487) (not b_lambda!84891) b_and!206713 (not b!2827492))
(check-sat b_and!206713 (not b_next!81803))
(get-model)

(declare-fun d!820552 () Bool)

(declare-fun res!1176982 () Bool)

(declare-fun e!1789623 () Bool)

(assert (=> d!820552 (=> res!1176982 e!1789623)))

(assert (=> d!820552 (= res!1176982 ((_ is Nil!33227) (t!231118 l2!930)))))

(assert (=> d!820552 (= (forall!6827 (t!231118 l2!930) p!1912) e!1789623)))

(declare-fun b!2827498 () Bool)

(declare-fun e!1789624 () Bool)

(assert (=> b!2827498 (= e!1789623 e!1789624)))

(declare-fun res!1176983 () Bool)

(assert (=> b!2827498 (=> (not res!1176983) (not e!1789624))))

(assert (=> b!2827498 (= res!1176983 (dynLambda!13971 p!1912 (h!38647 (t!231118 l2!930))))))

(declare-fun b!2827499 () Bool)

(assert (=> b!2827499 (= e!1789624 (forall!6827 (t!231118 (t!231118 l2!930)) p!1912))))

(assert (= (and d!820552 (not res!1176982)) b!2827498))

(assert (= (and b!2827498 res!1176983) b!2827499))

(declare-fun b_lambda!84899 () Bool)

(assert (=> (not b_lambda!84899) (not b!2827498)))

(declare-fun t!231120 () Bool)

(declare-fun tb!154125 () Bool)

(assert (=> (and start!274502 (= p!1912 p!1912) t!231120) tb!154125))

(declare-fun result!192050 () Bool)

(assert (=> tb!154125 (= result!192050 true)))

(assert (=> b!2827498 t!231120))

(declare-fun b_and!206715 () Bool)

(assert (= b_and!206713 (and (=> t!231120 result!192050) b_and!206715)))

(declare-fun m!3257159 () Bool)

(assert (=> b!2827498 m!3257159))

(declare-fun m!3257161 () Bool)

(assert (=> b!2827499 m!3257161))

(assert (=> b!2827487 d!820552))

(declare-fun d!820554 () Bool)

(declare-fun res!1176984 () Bool)

(declare-fun e!1789625 () Bool)

(assert (=> d!820554 (=> res!1176984 e!1789625)))

(assert (=> d!820554 (= res!1176984 ((_ is Nil!33227) (t!231118 l1!953)))))

(assert (=> d!820554 (= (forall!6827 (t!231118 l1!953) p!1912) e!1789625)))

(declare-fun b!2827500 () Bool)

(declare-fun e!1789626 () Bool)

(assert (=> b!2827500 (= e!1789625 e!1789626)))

(declare-fun res!1176985 () Bool)

(assert (=> b!2827500 (=> (not res!1176985) (not e!1789626))))

(assert (=> b!2827500 (= res!1176985 (dynLambda!13971 p!1912 (h!38647 (t!231118 l1!953))))))

(declare-fun b!2827501 () Bool)

(assert (=> b!2827501 (= e!1789626 (forall!6827 (t!231118 (t!231118 l1!953)) p!1912))))

(assert (= (and d!820554 (not res!1176984)) b!2827500))

(assert (= (and b!2827500 res!1176985) b!2827501))

(declare-fun b_lambda!84901 () Bool)

(assert (=> (not b_lambda!84901) (not b!2827500)))

(declare-fun t!231122 () Bool)

(declare-fun tb!154127 () Bool)

(assert (=> (and start!274502 (= p!1912 p!1912) t!231122) tb!154127))

(declare-fun result!192052 () Bool)

(assert (=> tb!154127 (= result!192052 true)))

(assert (=> b!2827500 t!231122))

(declare-fun b_and!206717 () Bool)

(assert (= b_and!206715 (and (=> t!231122 result!192052) b_and!206717)))

(declare-fun m!3257163 () Bool)

(assert (=> b!2827500 m!3257163))

(declare-fun m!3257165 () Bool)

(assert (=> b!2827501 m!3257165))

(assert (=> b!2827487 d!820554))

(declare-fun d!820556 () Bool)

(assert (=> d!820556 (forall!6827 (t!231118 l1!953) p!1912)))

(declare-fun lt!1008562 () Unit!47282)

(declare-fun choose!16705 (List!33351 List!33351 Int) Unit!47282)

(assert (=> d!820556 (= lt!1008562 (choose!16705 (t!231118 l1!953) (t!231118 l2!930) p!1912))))

(assert (=> d!820556 (forall!6827 (t!231118 l2!930) p!1912)))

(assert (=> d!820556 (= (lemmaForallSubseq!245 (t!231118 l1!953) (t!231118 l2!930) p!1912) lt!1008562)))

(declare-fun bs!518106 () Bool)

(assert (= bs!518106 d!820556))

(assert (=> bs!518106 m!3257143))

(declare-fun m!3257167 () Bool)

(assert (=> bs!518106 m!3257167))

(assert (=> bs!518106 m!3257141))

(assert (=> b!2827487 d!820556))

(declare-fun b!2827521 () Bool)

(declare-fun e!1789646 () Bool)

(assert (=> b!2827521 (= e!1789646 (subseq!481 (t!231118 l1!953) (t!231118 (t!231118 l2!930))))))

(declare-fun d!820560 () Bool)

(declare-fun res!1177005 () Bool)

(declare-fun e!1789644 () Bool)

(assert (=> d!820560 (=> res!1177005 e!1789644)))

(assert (=> d!820560 (= res!1177005 ((_ is Nil!33227) (t!231118 l1!953)))))

(assert (=> d!820560 (= (subseq!481 (t!231118 l1!953) (t!231118 l2!930)) e!1789644)))

(declare-fun b!2827520 () Bool)

(declare-fun e!1789643 () Bool)

(assert (=> b!2827520 (= e!1789643 (subseq!481 (t!231118 (t!231118 l1!953)) (t!231118 (t!231118 l2!930))))))

(declare-fun b!2827518 () Bool)

(declare-fun e!1789645 () Bool)

(assert (=> b!2827518 (= e!1789644 e!1789645)))

(declare-fun res!1177004 () Bool)

(assert (=> b!2827518 (=> (not res!1177004) (not e!1789645))))

(assert (=> b!2827518 (= res!1177004 ((_ is Cons!33227) (t!231118 l2!930)))))

(declare-fun b!2827519 () Bool)

(assert (=> b!2827519 (= e!1789645 e!1789646)))

(declare-fun res!1177002 () Bool)

(assert (=> b!2827519 (=> res!1177002 e!1789646)))

(assert (=> b!2827519 (= res!1177002 e!1789643)))

(declare-fun res!1177003 () Bool)

(assert (=> b!2827519 (=> (not res!1177003) (not e!1789643))))

(assert (=> b!2827519 (= res!1177003 (= (h!38647 (t!231118 l1!953)) (h!38647 (t!231118 l2!930))))))

(assert (= (and d!820560 (not res!1177005)) b!2827518))

(assert (= (and b!2827518 res!1177004) b!2827519))

(assert (= (and b!2827519 res!1177003) b!2827520))

(assert (= (and b!2827519 (not res!1177002)) b!2827521))

(declare-fun m!3257169 () Bool)

(assert (=> b!2827521 m!3257169))

(declare-fun m!3257171 () Bool)

(assert (=> b!2827520 m!3257171))

(assert (=> b!2827493 d!820560))

(declare-fun d!820566 () Bool)

(declare-fun res!1177014 () Bool)

(declare-fun e!1789655 () Bool)

(assert (=> d!820566 (=> res!1177014 e!1789655)))

(assert (=> d!820566 (= res!1177014 ((_ is Nil!33227) l2!930))))

(assert (=> d!820566 (= (forall!6827 l2!930 p!1912) e!1789655)))

(declare-fun b!2827526 () Bool)

(declare-fun e!1789656 () Bool)

(assert (=> b!2827526 (= e!1789655 e!1789656)))

(declare-fun res!1177015 () Bool)

(assert (=> b!2827526 (=> (not res!1177015) (not e!1789656))))

(assert (=> b!2827526 (= res!1177015 (dynLambda!13971 p!1912 (h!38647 l2!930)))))

(declare-fun b!2827527 () Bool)

(assert (=> b!2827527 (= e!1789656 (forall!6827 (t!231118 l2!930) p!1912))))

(assert (= (and d!820566 (not res!1177014)) b!2827526))

(assert (= (and b!2827526 res!1177015) b!2827527))

(declare-fun b_lambda!84907 () Bool)

(assert (=> (not b_lambda!84907) (not b!2827526)))

(assert (=> b!2827526 t!231115))

(declare-fun b_and!206723 () Bool)

(assert (= b_and!206717 (and (=> t!231115 result!192046) b_and!206723)))

(assert (=> b!2827526 m!3257153))

(assert (=> b!2827527 m!3257141))

(assert (=> start!274502 d!820566))

(declare-fun d!820568 () Bool)

(declare-fun res!1177016 () Bool)

(declare-fun e!1789657 () Bool)

(assert (=> d!820568 (=> res!1177016 e!1789657)))

(assert (=> d!820568 (= res!1177016 ((_ is Nil!33227) l1!953))))

(assert (=> d!820568 (= (forall!6827 l1!953 p!1912) e!1789657)))

(declare-fun b!2827532 () Bool)

(declare-fun e!1789658 () Bool)

(assert (=> b!2827532 (= e!1789657 e!1789658)))

(declare-fun res!1177017 () Bool)

(assert (=> b!2827532 (=> (not res!1177017) (not e!1789658))))

(assert (=> b!2827532 (= res!1177017 (dynLambda!13971 p!1912 (h!38647 l1!953)))))

(declare-fun b!2827533 () Bool)

(assert (=> b!2827533 (= e!1789658 (forall!6827 (t!231118 l1!953) p!1912))))

(assert (= (and d!820568 (not res!1177016)) b!2827532))

(assert (= (and b!2827532 res!1177017) b!2827533))

(declare-fun b_lambda!84909 () Bool)

(assert (=> (not b_lambda!84909) (not b!2827532)))

(assert (=> b!2827532 t!231117))

(declare-fun b_and!206725 () Bool)

(assert (= b_and!206723 (and (=> t!231117 result!192048) b_and!206725)))

(assert (=> b!2827532 m!3257149))

(assert (=> b!2827533 m!3257143))

(assert (=> b!2827485 d!820568))

(declare-fun b!2827537 () Bool)

(declare-fun e!1789662 () Bool)

(assert (=> b!2827537 (= e!1789662 (subseq!481 l1!953 (t!231118 l2!930)))))

(declare-fun d!820570 () Bool)

(declare-fun res!1177021 () Bool)

(declare-fun e!1789660 () Bool)

(assert (=> d!820570 (=> res!1177021 e!1789660)))

(assert (=> d!820570 (= res!1177021 ((_ is Nil!33227) l1!953))))

(assert (=> d!820570 (= (subseq!481 l1!953 l2!930) e!1789660)))

(declare-fun b!2827536 () Bool)

(declare-fun e!1789659 () Bool)

(assert (=> b!2827536 (= e!1789659 (subseq!481 (t!231118 l1!953) (t!231118 l2!930)))))

(declare-fun b!2827534 () Bool)

(declare-fun e!1789661 () Bool)

(assert (=> b!2827534 (= e!1789660 e!1789661)))

(declare-fun res!1177020 () Bool)

(assert (=> b!2827534 (=> (not res!1177020) (not e!1789661))))

(assert (=> b!2827534 (= res!1177020 ((_ is Cons!33227) l2!930))))

(declare-fun b!2827535 () Bool)

(assert (=> b!2827535 (= e!1789661 e!1789662)))

(declare-fun res!1177018 () Bool)

(assert (=> b!2827535 (=> res!1177018 e!1789662)))

(assert (=> b!2827535 (= res!1177018 e!1789659)))

(declare-fun res!1177019 () Bool)

(assert (=> b!2827535 (=> (not res!1177019) (not e!1789659))))

(assert (=> b!2827535 (= res!1177019 (= (h!38647 l1!953) (h!38647 l2!930)))))

(assert (= (and d!820570 (not res!1177021)) b!2827534))

(assert (= (and b!2827534 res!1177020) b!2827535))

(assert (= (and b!2827535 res!1177019) b!2827536))

(assert (= (and b!2827535 (not res!1177018)) b!2827537))

(declare-fun m!3257173 () Bool)

(assert (=> b!2827537 m!3257173))

(assert (=> b!2827536 m!3257155))

(assert (=> b!2827491 d!820570))

(declare-fun b!2827546 () Bool)

(declare-fun e!1789669 () Bool)

(declare-fun tp!903081 () Bool)

(assert (=> b!2827546 (= e!1789669 (and tp_is_empty!14535 tp!903081))))

(assert (=> b!2827488 (= tp!903076 e!1789669)))

(assert (= (and b!2827488 ((_ is Cons!33227) (t!231118 l1!953))) b!2827546))

(declare-fun b!2827547 () Bool)

(declare-fun e!1789670 () Bool)

(declare-fun tp!903082 () Bool)

(assert (=> b!2827547 (= e!1789670 (and tp_is_empty!14535 tp!903082))))

(assert (=> b!2827492 (= tp!903078 e!1789670)))

(assert (= (and b!2827492 ((_ is Cons!33227) (t!231118 l2!930))) b!2827547))

(declare-fun b_lambda!84911 () Bool)

(assert (= b_lambda!84907 (or (and start!274502 b_free!81099) b_lambda!84911)))

(declare-fun b_lambda!84913 () Bool)

(assert (= b_lambda!84909 (or (and start!274502 b_free!81099) b_lambda!84913)))

(declare-fun b_lambda!84915 () Bool)

(assert (= b_lambda!84901 (or (and start!274502 b_free!81099) b_lambda!84915)))

(declare-fun b_lambda!84917 () Bool)

(assert (= b_lambda!84899 (or (and start!274502 b_free!81099) b_lambda!84917)))

(check-sat (not b!2827520) (not b!2827536) (not b_lambda!84917) (not d!820556) (not b!2827521) (not b!2827547) (not b_next!81803) (not b!2827501) (not b!2827533) (not b_lambda!84915) (not b_lambda!84891) (not b_lambda!84893) (not b_lambda!84913) tp_is_empty!14535 (not b!2827527) b_and!206725 (not b!2827499) (not b!2827537) (not b!2827546) (not b_lambda!84911))
(check-sat b_and!206725 (not b_next!81803))
