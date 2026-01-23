; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!10876 () Bool)

(assert start!10876)

(declare-fun b_free!3213 () Bool)

(declare-fun b_next!3213 () Bool)

(assert (=> start!10876 (= b_free!3213 (not b_next!3213))))

(declare-fun tp!59051 () Bool)

(declare-fun b_and!4775 () Bool)

(assert (=> start!10876 (= tp!59051 b_and!4775)))

(declare-fun b_free!3215 () Bool)

(declare-fun b_next!3215 () Bool)

(assert (=> start!10876 (= b_free!3215 (not b_next!3215))))

(declare-fun tp!59053 () Bool)

(declare-fun b_and!4777 () Bool)

(assert (=> start!10876 (= tp!59053 b_and!4777)))

(assert (=> start!10876 true))

(declare-fun order!879 () Int)

(declare-fun lambda!2237 () Int)

(declare-fun order!877 () Int)

(declare-fun f!927 () Int)

(declare-fun dynLambda!560 (Int Int) Int)

(declare-fun dynLambda!561 (Int Int) Int)

(assert (=> start!10876 (< (dynLambda!560 order!877 f!927) (dynLambda!561 order!879 lambda!2237))))

(assert (=> start!10876 true))

(declare-fun g!9 () Int)

(assert (=> start!10876 (< (dynLambda!560 order!877 g!9) (dynLambda!561 order!879 lambda!2237))))

(declare-fun res!52040 () Bool)

(declare-fun e!60415 () Bool)

(assert (=> start!10876 (=> (not res!52040) (not e!60415))))

(declare-datatypes ((A!209 0))(
  ( (A!210 (val!514 Int)) )
))
(declare-fun s!1451 () (Set A!209))

(declare-fun forall!231 ((Set A!209) Int) Bool)

(assert (=> start!10876 (= res!52040 (forall!231 s!1451 lambda!2237))))

(assert (=> start!10876 e!60415))

(declare-fun condSetEmpty!1334 () Bool)

(assert (=> start!10876 (= condSetEmpty!1334 (= s!1451 (as set.empty (Set A!209))))))

(declare-fun setRes!1334 () Bool)

(assert (=> start!10876 setRes!1334))

(assert (=> start!10876 tp!59051))

(assert (=> start!10876 tp!59053))

(declare-fun b!108768 () Bool)

(declare-fun e!60417 () Bool)

(declare-fun e!60418 () Bool)

(assert (=> b!108768 (= e!60417 e!60418)))

(declare-fun res!52038 () Bool)

(assert (=> b!108768 (=> (not res!52038) (not e!60418))))

(declare-fun lt!30557 () (Set A!209))

(assert (=> b!108768 (= res!52038 (= s!1451 lt!30557))))

(declare-fun lt!30561 () (Set A!209))

(declare-fun lt!30560 () (Set A!209))

(assert (=> b!108768 (= lt!30557 (set.union lt!30561 lt!30560))))

(declare-datatypes ((List!1728 0))(
  ( (Nil!1722) (Cons!1722 (h!7119 A!209) (t!21603 List!1728)) )
))
(declare-fun lt!30558 () List!1728)

(declare-fun content!154 (List!1728) (Set A!209))

(assert (=> b!108768 (= lt!30560 (content!154 (t!21603 lt!30558)))))

(assert (=> b!108768 (= lt!30561 (set.insert (h!7119 lt!30558) (as set.empty (Set A!209))))))

(declare-fun b!108769 () Bool)

(declare-fun res!52041 () Bool)

(declare-fun e!60419 () Bool)

(assert (=> b!108769 (=> res!52041 e!60419)))

(assert (=> b!108769 (= res!52041 (not (forall!231 lt!30560 lambda!2237)))))

(declare-fun b!108770 () Bool)

(declare-fun e!60416 () Bool)

(assert (=> b!108770 (= e!60419 e!60416)))

(declare-fun res!52039 () Bool)

(assert (=> b!108770 (=> (not res!52039) (not e!60416))))

(declare-fun forall!232 (List!1728 Int) Bool)

(assert (=> b!108770 (= res!52039 (forall!232 lt!30558 lambda!2237))))

(declare-fun b!108771 () Bool)

(assert (=> b!108771 (= e!60415 e!60417)))

(declare-fun res!52042 () Bool)

(assert (=> b!108771 (=> (not res!52042) (not e!60417))))

(assert (=> b!108771 (= res!52042 (is-Cons!1722 lt!30558))))

(declare-fun toList!207 ((Set A!209)) List!1728)

(assert (=> b!108771 (= lt!30558 (toList!207 s!1451))))

(declare-fun setIsEmpty!1334 () Bool)

(assert (=> setIsEmpty!1334 setRes!1334))

(declare-fun b!108772 () Bool)

(declare-fun contains!280 (List!1728 A!209) Bool)

(assert (=> b!108772 (= e!60416 (contains!280 lt!30558 (h!7119 lt!30558)))))

(declare-fun b!108773 () Bool)

(declare-fun e!60414 () Bool)

(assert (=> b!108773 (= e!60418 (not e!60414))))

(declare-fun res!52043 () Bool)

(assert (=> b!108773 (=> res!52043 e!60414)))

(assert (=> b!108773 (= res!52043 (not (forall!232 (t!21603 lt!30558) lambda!2237)))))

(declare-datatypes ((B!505 0))(
  ( (B!506 (val!515 Int)) )
))
(declare-fun flatMap!14 ((Set A!209) Int) (Set B!505))

(assert (=> b!108773 (= (set.union (flatMap!14 lt!30561 g!9) (flatMap!14 lt!30560 g!9)) (flatMap!14 lt!30557 g!9))))

(declare-datatypes ((Unit!1158 0))(
  ( (Unit!1159) )
))
(declare-fun lt!30563 () Unit!1158)

(declare-fun lemmaFlatMapAssociative!3 ((Set A!209) (Set A!209) Int) Unit!1158)

(assert (=> b!108773 (= lt!30563 (lemmaFlatMapAssociative!3 lt!30561 lt!30560 g!9))))

(assert (=> b!108773 (= (set.union (flatMap!14 lt!30561 f!927) (flatMap!14 lt!30560 f!927)) (flatMap!14 lt!30557 f!927))))

(declare-fun lt!30562 () Unit!1158)

(assert (=> b!108773 (= lt!30562 (lemmaFlatMapAssociative!3 lt!30561 lt!30560 f!927))))

(declare-fun b!108774 () Bool)

(assert (=> b!108774 (= e!60414 e!60419)))

(declare-fun res!52037 () Bool)

(assert (=> b!108774 (=> res!52037 e!60419)))

(declare-fun dynLambda!562 (Int A!209) (Set B!505))

(assert (=> b!108774 (= res!52037 (not (= (dynLambda!562 f!927 (h!7119 lt!30558)) (dynLambda!562 g!9 (h!7119 lt!30558)))))))

(assert (=> b!108774 (forall!231 lt!30560 lambda!2237)))

(declare-fun lt!30559 () Unit!1158)

(declare-fun lemmaForallThenOnContent!1 (List!1728 Int) Unit!1158)

(assert (=> b!108774 (= lt!30559 (lemmaForallThenOnContent!1 (t!21603 lt!30558) lambda!2237))))

(declare-fun setNonEmpty!1334 () Bool)

(declare-fun tp!59052 () Bool)

(declare-fun tp_is_empty!795 () Bool)

(assert (=> setNonEmpty!1334 (= setRes!1334 (and tp!59052 tp_is_empty!795))))

(declare-fun setElem!1334 () A!209)

(declare-fun setRest!1334 () (Set A!209))

(assert (=> setNonEmpty!1334 (= s!1451 (set.union (set.insert setElem!1334 (as set.empty (Set A!209))) setRest!1334))))

(assert (= (and start!10876 res!52040) b!108771))

(assert (= (and b!108771 res!52042) b!108768))

(assert (= (and b!108768 res!52038) b!108773))

(assert (= (and b!108773 (not res!52043)) b!108774))

(assert (= (and b!108774 (not res!52037)) b!108769))

(assert (= (and b!108769 (not res!52041)) b!108770))

(assert (= (and b!108770 res!52039) b!108772))

(assert (= (and start!10876 condSetEmpty!1334) setIsEmpty!1334))

(assert (= (and start!10876 (not condSetEmpty!1334)) setNonEmpty!1334))

(declare-fun b_lambda!1189 () Bool)

(assert (=> (not b_lambda!1189) (not b!108774)))

(declare-fun t!21596 () Bool)

(declare-fun tb!3135 () Bool)

(assert (=> (and start!10876 (= f!927 f!927) t!21596) tb!3135))

(assert (=> b!108774 t!21596))

(declare-fun result!4644 () Bool)

(declare-fun b_and!4779 () Bool)

(assert (= b_and!4775 (and (=> t!21596 result!4644) b_and!4779)))

(declare-fun tb!3137 () Bool)

(declare-fun t!21598 () Bool)

(assert (=> (and start!10876 (= g!9 f!927) t!21598) tb!3137))

(assert (=> b!108774 t!21598))

(declare-fun result!4646 () Bool)

(declare-fun b_and!4781 () Bool)

(assert (= b_and!4777 (and (=> t!21598 result!4646) b_and!4781)))

(declare-fun b_lambda!1191 () Bool)

(assert (=> (not b_lambda!1191) (not b!108774)))

(declare-fun t!21600 () Bool)

(declare-fun tb!3139 () Bool)

(assert (=> (and start!10876 (= f!927 g!9) t!21600) tb!3139))

(assert (=> b!108774 t!21600))

(declare-fun result!4648 () Bool)

(declare-fun b_and!4783 () Bool)

(assert (= b_and!4779 (and (=> t!21600 result!4648) b_and!4783)))

(declare-fun t!21602 () Bool)

(declare-fun tb!3141 () Bool)

(assert (=> (and start!10876 (= g!9 g!9) t!21602) tb!3141))

(assert (=> b!108774 t!21602))

(declare-fun result!4650 () Bool)

(declare-fun b_and!4785 () Bool)

(assert (= b_and!4781 (and (=> t!21602 result!4650) b_and!4785)))

(declare-fun m!97506 () Bool)

(assert (=> b!108772 m!97506))

(declare-fun m!97508 () Bool)

(assert (=> b!108770 m!97508))

(declare-fun m!97510 () Bool)

(assert (=> b!108771 m!97510))

(declare-fun m!97512 () Bool)

(assert (=> b!108773 m!97512))

(declare-fun m!97514 () Bool)

(assert (=> b!108773 m!97514))

(declare-fun m!97516 () Bool)

(assert (=> b!108773 m!97516))

(declare-fun m!97518 () Bool)

(assert (=> b!108773 m!97518))

(declare-fun m!97520 () Bool)

(assert (=> b!108773 m!97520))

(declare-fun m!97522 () Bool)

(assert (=> b!108773 m!97522))

(declare-fun m!97524 () Bool)

(assert (=> b!108773 m!97524))

(declare-fun m!97526 () Bool)

(assert (=> b!108773 m!97526))

(declare-fun m!97528 () Bool)

(assert (=> b!108773 m!97528))

(declare-fun m!97530 () Bool)

(assert (=> b!108774 m!97530))

(declare-fun m!97532 () Bool)

(assert (=> b!108774 m!97532))

(declare-fun m!97534 () Bool)

(assert (=> b!108774 m!97534))

(declare-fun m!97536 () Bool)

(assert (=> b!108774 m!97536))

(assert (=> b!108769 m!97534))

(declare-fun m!97538 () Bool)

(assert (=> start!10876 m!97538))

(declare-fun m!97540 () Bool)

(assert (=> b!108768 m!97540))

(declare-fun m!97542 () Bool)

(assert (=> b!108768 m!97542))

(push 1)

(assert (not tb!3141))

(assert (not setNonEmpty!1334))

(assert (not tb!3137))

(assert (not b_lambda!1189))

(assert (not b!108772))

(assert (not b!108770))

(assert (not b!108769))

(assert (not b!108774))

(assert (not b!108773))

(assert (not b!108768))

(assert b_and!4785)

(assert (not tb!3135))

(assert (not b!108771))

(assert (not start!10876))

(assert (not b_next!3215))

(assert b_and!4783)

(assert (not b_next!3213))

(assert (not tb!3139))

(assert tp_is_empty!795)

(assert (not b_lambda!1191))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4783)

(assert b_and!4785)

(assert (not b_next!3215))

(assert (not b_next!3213))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1197 () Bool)

(assert (= b_lambda!1189 (or (and start!10876 b_free!3213) (and start!10876 b_free!3215 (= g!9 f!927)) b_lambda!1197)))

(declare-fun b_lambda!1199 () Bool)

(assert (= b_lambda!1191 (or (and start!10876 b_free!3213 (= f!927 g!9)) (and start!10876 b_free!3215) b_lambda!1199)))

(push 1)

(assert (not tb!3141))

(assert (not b!108772))

(assert (not b!108770))

(assert (not b!108769))

(assert (not b!108774))

(assert (not b!108773))

(assert tp_is_empty!795)

(assert (not b!108768))

(assert b_and!4785)

(assert (not tb!3135))

(assert (not b!108771))

(assert (not start!10876))

(assert (not b_lambda!1199))

(assert (not setNonEmpty!1334))

(assert (not b_lambda!1197))

(assert (not tb!3137))

(assert (not b_next!3215))

(assert b_and!4783)

(assert (not b_next!3213))

(assert (not tb!3139))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4783)

(assert b_and!4785)

(assert (not b_next!3215))

(assert (not b_next!3213))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!26911 () Bool)

(declare-fun lt!30587 () Bool)

(assert (=> d!26911 (= lt!30587 (forall!232 (toList!207 lt!30560) lambda!2237))))

(declare-fun choose!1419 ((Set A!209) Int) Bool)

(assert (=> d!26911 (= lt!30587 (choose!1419 lt!30560 lambda!2237))))

(assert (=> d!26911 (= (forall!231 lt!30560 lambda!2237) lt!30587)))

(declare-fun bs!10736 () Bool)

(assert (= bs!10736 d!26911))

(declare-fun m!97582 () Bool)

(assert (=> bs!10736 m!97582))

(assert (=> bs!10736 m!97582))

(declare-fun m!97584 () Bool)

(assert (=> bs!10736 m!97584))

(declare-fun m!97586 () Bool)

(assert (=> bs!10736 m!97586))

(assert (=> b!108774 d!26911))

(declare-fun d!26913 () Bool)

(assert (=> d!26913 (forall!231 (content!154 (t!21603 lt!30558)) lambda!2237)))

(declare-fun lt!30590 () Unit!1158)

(declare-fun choose!1420 (List!1728 Int) Unit!1158)

(assert (=> d!26913 (= lt!30590 (choose!1420 (t!21603 lt!30558) lambda!2237))))

(assert (=> d!26913 (forall!232 (t!21603 lt!30558) lambda!2237)))

(assert (=> d!26913 (= (lemmaForallThenOnContent!1 (t!21603 lt!30558) lambda!2237) lt!30590)))

(declare-fun bs!10737 () Bool)

(assert (= bs!10737 d!26913))

(assert (=> bs!10737 m!97540))

(assert (=> bs!10737 m!97540))

(declare-fun m!97588 () Bool)

(assert (=> bs!10737 m!97588))

(declare-fun m!97590 () Bool)

(assert (=> bs!10737 m!97590))

(assert (=> bs!10737 m!97512))

(assert (=> b!108774 d!26913))

(declare-fun d!26915 () Bool)

(declare-fun res!52069 () Bool)

(declare-fun e!60442 () Bool)

(assert (=> d!26915 (=> res!52069 e!60442)))

(assert (=> d!26915 (= res!52069 (is-Nil!1722 lt!30558))))

(assert (=> d!26915 (= (forall!232 lt!30558 lambda!2237) e!60442)))

(declare-fun b!108804 () Bool)

(declare-fun e!60443 () Bool)

(assert (=> b!108804 (= e!60442 e!60443)))

(declare-fun res!52070 () Bool)

(assert (=> b!108804 (=> (not res!52070) (not e!60443))))

(declare-fun dynLambda!566 (Int A!209) Bool)

(assert (=> b!108804 (= res!52070 (dynLambda!566 lambda!2237 (h!7119 lt!30558)))))

(declare-fun b!108805 () Bool)

(assert (=> b!108805 (= e!60443 (forall!232 (t!21603 lt!30558) lambda!2237))))

(assert (= (and d!26915 (not res!52069)) b!108804))

(assert (= (and b!108804 res!52070) b!108805))

(declare-fun b_lambda!1205 () Bool)

(assert (=> (not b_lambda!1205) (not b!108804)))

(declare-fun m!97600 () Bool)

(assert (=> b!108804 m!97600))

(assert (=> b!108805 m!97512))

(assert (=> b!108770 d!26915))

(declare-fun d!26927 () Bool)

(declare-fun lt!30591 () Bool)

(assert (=> d!26927 (= lt!30591 (forall!232 (toList!207 s!1451) lambda!2237))))

(assert (=> d!26927 (= lt!30591 (choose!1419 s!1451 lambda!2237))))

(assert (=> d!26927 (= (forall!231 s!1451 lambda!2237) lt!30591)))

(declare-fun bs!10742 () Bool)

(assert (= bs!10742 d!26927))

(assert (=> bs!10742 m!97510))

(assert (=> bs!10742 m!97510))

(declare-fun m!97602 () Bool)

(assert (=> bs!10742 m!97602))

(declare-fun m!97604 () Bool)

(assert (=> bs!10742 m!97604))

(assert (=> start!10876 d!26927))

(declare-fun d!26929 () Bool)

(declare-fun e!60446 () Bool)

(assert (=> d!26929 e!60446))

(declare-fun res!52073 () Bool)

(assert (=> d!26929 (=> (not res!52073) (not e!60446))))

(declare-fun lt!30597 () List!1728)

(declare-fun noDuplicate!4 (List!1728) Bool)

(assert (=> d!26929 (= res!52073 (noDuplicate!4 lt!30597))))

(declare-fun choose!1421 ((Set A!209)) List!1728)

(assert (=> d!26929 (= lt!30597 (choose!1421 s!1451))))

(assert (=> d!26929 (= (toList!207 s!1451) lt!30597)))

(declare-fun b!108808 () Bool)

(assert (=> b!108808 (= e!60446 (= (content!154 lt!30597) s!1451))))

(assert (= (and d!26929 res!52073) b!108808))

(declare-fun m!97610 () Bool)

(assert (=> d!26929 m!97610))

(declare-fun m!97612 () Bool)

(assert (=> d!26929 m!97612))

(declare-fun m!97614 () Bool)

(assert (=> b!108808 m!97614))

(assert (=> b!108771 d!26929))

(declare-fun d!26933 () Bool)

(declare-fun lt!30600 () Bool)

(assert (=> d!26933 (= lt!30600 (set.member (h!7119 lt!30558) (content!154 lt!30558)))))

(declare-fun e!60458 () Bool)

(assert (=> d!26933 (= lt!30600 e!60458)))

(declare-fun res!52085 () Bool)

(assert (=> d!26933 (=> (not res!52085) (not e!60458))))

(assert (=> d!26933 (= res!52085 (is-Cons!1722 lt!30558))))

(assert (=> d!26933 (= (contains!280 lt!30558 (h!7119 lt!30558)) lt!30600)))

(declare-fun b!108819 () Bool)

(declare-fun e!60457 () Bool)

(assert (=> b!108819 (= e!60458 e!60457)))

(declare-fun res!52084 () Bool)

(assert (=> b!108819 (=> res!52084 e!60457)))

(assert (=> b!108819 (= res!52084 (= (h!7119 lt!30558) (h!7119 lt!30558)))))

(declare-fun b!108820 () Bool)

(assert (=> b!108820 (= e!60457 (contains!280 (t!21603 lt!30558) (h!7119 lt!30558)))))

(assert (= (and d!26933 res!52085) b!108819))

(assert (= (and b!108819 (not res!52084)) b!108820))

(declare-fun m!97616 () Bool)

(assert (=> d!26933 m!97616))

(declare-fun m!97618 () Bool)

(assert (=> d!26933 m!97618))

(declare-fun m!97622 () Bool)

(assert (=> b!108820 m!97622))

(assert (=> b!108772 d!26933))

(declare-fun d!26935 () Bool)

(declare-fun c!26103 () Bool)

(assert (=> d!26935 (= c!26103 (is-Nil!1722 (t!21603 lt!30558)))))

(declare-fun e!60463 () (Set A!209))

(assert (=> d!26935 (= (content!154 (t!21603 lt!30558)) e!60463)))

(declare-fun b!108827 () Bool)

(assert (=> b!108827 (= e!60463 (as set.empty (Set A!209)))))

(declare-fun b!108828 () Bool)

(assert (=> b!108828 (= e!60463 (set.union (set.insert (h!7119 (t!21603 lt!30558)) (as set.empty (Set A!209))) (content!154 (t!21603 (t!21603 lt!30558)))))))

(assert (= (and d!26935 c!26103) b!108827))

(assert (= (and d!26935 (not c!26103)) b!108828))

(declare-fun m!97636 () Bool)

(assert (=> b!108828 m!97636))

(declare-fun m!97638 () Bool)

(assert (=> b!108828 m!97638))

(assert (=> b!108768 d!26935))

(declare-fun d!26947 () Bool)

(declare-fun choose!1423 ((Set A!209) Int) (Set B!505))

(assert (=> d!26947 (= (flatMap!14 lt!30560 g!9) (choose!1423 lt!30560 g!9))))

(declare-fun bs!10747 () Bool)

(assert (= bs!10747 d!26947))

(declare-fun m!97640 () Bool)

(assert (=> bs!10747 m!97640))

(assert (=> b!108773 d!26947))

(declare-fun d!26949 () Bool)

(declare-fun res!52088 () Bool)

(declare-fun e!60466 () Bool)

(assert (=> d!26949 (=> res!52088 e!60466)))

(assert (=> d!26949 (= res!52088 (is-Nil!1722 (t!21603 lt!30558)))))

(assert (=> d!26949 (= (forall!232 (t!21603 lt!30558) lambda!2237) e!60466)))

(declare-fun b!108833 () Bool)

(declare-fun e!60467 () Bool)

(assert (=> b!108833 (= e!60466 e!60467)))

(declare-fun res!52089 () Bool)

(assert (=> b!108833 (=> (not res!52089) (not e!60467))))

(assert (=> b!108833 (= res!52089 (dynLambda!566 lambda!2237 (h!7119 (t!21603 lt!30558))))))

(declare-fun b!108834 () Bool)

(assert (=> b!108834 (= e!60467 (forall!232 (t!21603 (t!21603 lt!30558)) lambda!2237))))

(assert (= (and d!26949 (not res!52088)) b!108833))

(assert (= (and b!108833 res!52089) b!108834))

(declare-fun b_lambda!1211 () Bool)

(assert (=> (not b_lambda!1211) (not b!108833)))

(declare-fun m!97642 () Bool)

(assert (=> b!108833 m!97642))

(declare-fun m!97644 () Bool)

(assert (=> b!108834 m!97644))

(assert (=> b!108773 d!26949))

(declare-fun d!26951 () Bool)

(assert (=> d!26951 (= (set.union (flatMap!14 lt!30561 f!927) (flatMap!14 lt!30560 f!927)) (flatMap!14 (set.union lt!30561 lt!30560) f!927))))

(declare-fun lt!30604 () Unit!1158)

(declare-fun choose!1425 ((Set A!209) (Set A!209) Int) Unit!1158)

(assert (=> d!26951 (= lt!30604 (choose!1425 lt!30561 lt!30560 f!927))))

(assert (=> d!26951 (= (lemmaFlatMapAssociative!3 lt!30561 lt!30560 f!927) lt!30604)))

(declare-fun bs!10748 () Bool)

(assert (= bs!10748 d!26951))

(assert (=> bs!10748 m!97516))

(assert (=> bs!10748 m!97518))

(declare-fun m!97650 () Bool)

(assert (=> bs!10748 m!97650))

(declare-fun m!97652 () Bool)

(assert (=> bs!10748 m!97652))

(assert (=> b!108773 d!26951))

(declare-fun d!26955 () Bool)

(assert (=> d!26955 (= (flatMap!14 lt!30561 g!9) (choose!1423 lt!30561 g!9))))

(declare-fun bs!10749 () Bool)

(assert (= bs!10749 d!26955))

(declare-fun m!97654 () Bool)

(assert (=> bs!10749 m!97654))

(assert (=> b!108773 d!26955))

(declare-fun d!26957 () Bool)

(assert (=> d!26957 (= (set.union (flatMap!14 lt!30561 g!9) (flatMap!14 lt!30560 g!9)) (flatMap!14 (set.union lt!30561 lt!30560) g!9))))

(declare-fun lt!30607 () Unit!1158)

(assert (=> d!26957 (= lt!30607 (choose!1425 lt!30561 lt!30560 g!9))))

(assert (=> d!26957 (= (lemmaFlatMapAssociative!3 lt!30561 lt!30560 g!9) lt!30607)))

(declare-fun bs!10750 () Bool)

(assert (= bs!10750 d!26957))

(assert (=> bs!10750 m!97520))

(assert (=> bs!10750 m!97526))

(declare-fun m!97656 () Bool)

(assert (=> bs!10750 m!97656))

(declare-fun m!97658 () Bool)

(assert (=> bs!10750 m!97658))

(assert (=> b!108773 d!26957))

(declare-fun d!26959 () Bool)

(assert (=> d!26959 (= (flatMap!14 lt!30557 g!9) (choose!1423 lt!30557 g!9))))

(declare-fun bs!10751 () Bool)

(assert (= bs!10751 d!26959))

(declare-fun m!97660 () Bool)

(assert (=> bs!10751 m!97660))

(assert (=> b!108773 d!26959))

(declare-fun d!26961 () Bool)

(assert (=> d!26961 (= (flatMap!14 lt!30561 f!927) (choose!1423 lt!30561 f!927))))

(declare-fun bs!10752 () Bool)

(assert (= bs!10752 d!26961))

(declare-fun m!97662 () Bool)

(assert (=> bs!10752 m!97662))

(assert (=> b!108773 d!26961))

(declare-fun d!26963 () Bool)

(assert (=> d!26963 (= (flatMap!14 lt!30557 f!927) (choose!1423 lt!30557 f!927))))

(declare-fun bs!10753 () Bool)

(assert (= bs!10753 d!26963))

(declare-fun m!97664 () Bool)

(assert (=> bs!10753 m!97664))

(assert (=> b!108773 d!26963))

(declare-fun d!26965 () Bool)

(assert (=> d!26965 (= (flatMap!14 lt!30560 f!927) (choose!1423 lt!30560 f!927))))

(declare-fun bs!10754 () Bool)

(assert (= bs!10754 d!26965))

(declare-fun m!97666 () Bool)

(assert (=> bs!10754 m!97666))

(assert (=> b!108773 d!26965))

(assert (=> b!108769 d!26911))

(declare-fun condSetEmpty!1340 () Bool)

(assert (=> tb!3141 (= condSetEmpty!1340 (= (dynLambda!562 g!9 (h!7119 lt!30558)) (as set.empty (Set B!505))))))

(declare-fun setRes!1340 () Bool)

(assert (=> tb!3141 (= result!4650 setRes!1340)))

(declare-fun setIsEmpty!1340 () Bool)

(assert (=> setIsEmpty!1340 setRes!1340))

(declare-fun setNonEmpty!1340 () Bool)

(declare-fun tp!59065 () Bool)

(declare-fun tp_is_empty!799 () Bool)

(assert (=> setNonEmpty!1340 (= setRes!1340 (and tp!59065 tp_is_empty!799))))

(declare-fun setRest!1340 () (Set B!505))

(declare-fun setElem!1340 () B!505)

(assert (=> setNonEmpty!1340 (= (dynLambda!562 g!9 (h!7119 lt!30558)) (set.union (set.insert setElem!1340 (as set.empty (Set B!505))) setRest!1340))))

(assert (= (and tb!3141 condSetEmpty!1340) setIsEmpty!1340))

(assert (= (and tb!3141 (not condSetEmpty!1340)) setNonEmpty!1340))

(declare-fun condSetEmpty!1341 () Bool)

(assert (=> tb!3135 (= condSetEmpty!1341 (= (dynLambda!562 f!927 (h!7119 lt!30558)) (as set.empty (Set B!505))))))

(declare-fun setRes!1341 () Bool)

(assert (=> tb!3135 (= result!4644 setRes!1341)))

(declare-fun setIsEmpty!1341 () Bool)

(assert (=> setIsEmpty!1341 setRes!1341))

(declare-fun setNonEmpty!1341 () Bool)

(declare-fun tp!59066 () Bool)

(assert (=> setNonEmpty!1341 (= setRes!1341 (and tp!59066 tp_is_empty!799))))

(declare-fun setRest!1341 () (Set B!505))

(declare-fun setElem!1341 () B!505)

(assert (=> setNonEmpty!1341 (= (dynLambda!562 f!927 (h!7119 lt!30558)) (set.union (set.insert setElem!1341 (as set.empty (Set B!505))) setRest!1341))))

(assert (= (and tb!3135 condSetEmpty!1341) setIsEmpty!1341))

(assert (= (and tb!3135 (not condSetEmpty!1341)) setNonEmpty!1341))

(declare-fun condSetEmpty!1344 () Bool)

(assert (=> setNonEmpty!1334 (= condSetEmpty!1344 (= setRest!1334 (as set.empty (Set A!209))))))

(declare-fun setRes!1344 () Bool)

(assert (=> setNonEmpty!1334 (= tp!59052 setRes!1344)))

(declare-fun setIsEmpty!1344 () Bool)

(assert (=> setIsEmpty!1344 setRes!1344))

(declare-fun setNonEmpty!1344 () Bool)

(declare-fun tp!59069 () Bool)

(assert (=> setNonEmpty!1344 (= setRes!1344 (and tp!59069 tp_is_empty!795))))

(declare-fun setElem!1344 () A!209)

(declare-fun setRest!1344 () (Set A!209))

(assert (=> setNonEmpty!1344 (= setRest!1334 (set.union (set.insert setElem!1344 (as set.empty (Set A!209))) setRest!1344))))

(assert (= (and setNonEmpty!1334 condSetEmpty!1344) setIsEmpty!1344))

(assert (= (and setNonEmpty!1334 (not condSetEmpty!1344)) setNonEmpty!1344))

(assert (= result!4648 result!4650))

(assert (= result!4646 result!4644))

(declare-fun b_lambda!1213 () Bool)

(assert (= b_lambda!1205 (or start!10876 b_lambda!1213)))

(declare-fun bs!10756 () Bool)

(declare-fun d!26969 () Bool)

(assert (= bs!10756 (and d!26969 start!10876)))

(assert (=> bs!10756 (= (dynLambda!566 lambda!2237 (h!7119 lt!30558)) (= (dynLambda!562 f!927 (h!7119 lt!30558)) (dynLambda!562 g!9 (h!7119 lt!30558))))))

(declare-fun b_lambda!1217 () Bool)

(assert (=> (not b_lambda!1217) (not bs!10756)))

(assert (=> bs!10756 t!21596))

(declare-fun b_and!4799 () Bool)

(assert (= b_and!4783 (and (=> t!21596 result!4644) b_and!4799)))

(assert (=> bs!10756 t!21598))

(declare-fun b_and!4801 () Bool)

(assert (= b_and!4785 (and (=> t!21598 result!4646) b_and!4801)))

(declare-fun b_lambda!1219 () Bool)

(assert (=> (not b_lambda!1219) (not bs!10756)))

(assert (=> bs!10756 t!21600))

(declare-fun b_and!4803 () Bool)

(assert (= b_and!4799 (and (=> t!21600 result!4648) b_and!4803)))

(assert (=> bs!10756 t!21602))

(declare-fun b_and!4805 () Bool)

(assert (= b_and!4801 (and (=> t!21602 result!4650) b_and!4805)))

(assert (=> bs!10756 m!97530))

(assert (=> bs!10756 m!97532))

(assert (=> b!108804 d!26969))

(declare-fun b_lambda!1215 () Bool)

(assert (= b_lambda!1211 (or start!10876 b_lambda!1215)))

(declare-fun bs!10757 () Bool)

(declare-fun d!26971 () Bool)

(assert (= bs!10757 (and d!26971 start!10876)))

(assert (=> bs!10757 (= (dynLambda!566 lambda!2237 (h!7119 (t!21603 lt!30558))) (= (dynLambda!562 f!927 (h!7119 (t!21603 lt!30558))) (dynLambda!562 g!9 (h!7119 (t!21603 lt!30558)))))))

(declare-fun b_lambda!1221 () Bool)

(assert (=> (not b_lambda!1221) (not bs!10757)))

(declare-fun t!21614 () Bool)

(declare-fun tb!3151 () Bool)

(assert (=> (and start!10876 (= f!927 f!927) t!21614) tb!3151))

(assert (=> bs!10757 t!21614))

(declare-fun result!4664 () Bool)

(declare-fun b_and!4807 () Bool)

(assert (= b_and!4803 (and (=> t!21614 result!4664) b_and!4807)))

(declare-fun tb!3153 () Bool)

(declare-fun t!21616 () Bool)

(assert (=> (and start!10876 (= g!9 f!927) t!21616) tb!3153))

(assert (=> bs!10757 t!21616))

(declare-fun result!4666 () Bool)

(declare-fun b_and!4809 () Bool)

(assert (= b_and!4805 (and (=> t!21616 result!4666) b_and!4809)))

(declare-fun b_lambda!1223 () Bool)

(assert (=> (not b_lambda!1223) (not bs!10757)))

(declare-fun t!21618 () Bool)

(declare-fun tb!3155 () Bool)

(assert (=> (and start!10876 (= f!927 g!9) t!21618) tb!3155))

(assert (=> bs!10757 t!21618))

(declare-fun result!4668 () Bool)

(declare-fun b_and!4811 () Bool)

(assert (= b_and!4807 (and (=> t!21618 result!4668) b_and!4811)))

(declare-fun t!21620 () Bool)

(declare-fun tb!3157 () Bool)

(assert (=> (and start!10876 (= g!9 g!9) t!21620) tb!3157))

(assert (=> bs!10757 t!21620))

(declare-fun result!4670 () Bool)

(declare-fun b_and!4813 () Bool)

(assert (= b_and!4809 (and (=> t!21620 result!4670) b_and!4813)))

(declare-fun m!97674 () Bool)

(assert (=> bs!10757 m!97674))

(declare-fun m!97676 () Bool)

(assert (=> bs!10757 m!97676))

(assert (=> b!108833 d!26971))

(push 1)

(assert (not d!26947))

(assert (not d!26955))

(assert (not d!26933))

(assert (not b_next!3213))

(assert (not tb!3155))

(assert (not b_lambda!1223))

(assert (not d!26963))

(assert (not d!26961))

(assert (not d!26957))

(assert (not d!26965))

(assert (not b!108805))

(assert tp_is_empty!799)

(assert (not d!26927))

(assert (not d!26913))

(assert (not tb!3157))

(assert (not b_lambda!1221))

(assert (not b!108808))

(assert (not b_lambda!1199))

(assert b_and!4813)

(assert (not b_lambda!1197))

(assert (not tb!3153))

(assert (not b!108828))

(assert (not setNonEmpty!1340))

(assert (not d!26911))

(assert (not tb!3151))

(assert (not b_next!3215))

(assert b_and!4811)

(assert (not b!108820))

(assert (not b_lambda!1215))

(assert (not d!26929))

(assert (not d!26959))

(assert (not setNonEmpty!1341))

(assert (not b_lambda!1217))

(assert (not b!108834))

(assert (not b_lambda!1213))

(assert tp_is_empty!795)

(assert (not setNonEmpty!1344))

(assert (not d!26951))

(assert (not b_lambda!1219))

(check-sat)

(pop 1)

(push 1)

(assert b_and!4811)

(assert b_and!4813)

(assert (not b_next!3215))

(assert (not b_next!3213))

(check-sat)

(pop 1)

