; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712700 () Bool)

(assert start!712700)

(declare-fun b_free!134007 () Bool)

(declare-fun b_next!134797 () Bool)

(assert (=> start!712700 (= b_free!134007 (not b_next!134797))))

(declare-fun tp!2075831 () Bool)

(declare-fun b_and!351391 () Bool)

(assert (=> start!712700 (= tp!2075831 b_and!351391)))

(declare-fun b!7314441 () Bool)

(assert (=> b!7314441 true))

(declare-fun b!7314440 () Bool)

(assert (=> b!7314440 true))

(declare-fun f!883 () Int)

(declare-fun lambda!451855 () Int)

(declare-fun order!29119 () Int)

(declare-fun order!29117 () Int)

(declare-fun dynLambda!29122 (Int Int) Int)

(declare-fun dynLambda!29123 (Int Int) Int)

(assert (=> b!7314440 (< (dynLambda!29122 order!29117 f!883) (dynLambda!29123 order!29119 lambda!451855))))

(assert (=> b!7314440 true))

(declare-fun b!7314436 () Bool)

(declare-fun e!4378493 () Bool)

(declare-datatypes ((B!3555 0))(
  ( (B!3556 (val!29111 Int)) )
))
(declare-datatypes ((List!71186 0))(
  ( (Nil!71062) (Cons!71062 (h!77510 B!3555) (t!385397 List!71186)) )
))
(declare-fun lRes!18 () List!71186)

(declare-fun lambda!451854 () Int)

(declare-fun forall!17751 (List!71186 Int) Bool)

(assert (=> b!7314436 (= e!4378493 (forall!17751 (t!385397 lRes!18) lambda!451854))))

(declare-fun setIsEmpty!54178 () Bool)

(declare-fun setRes!54178 () Bool)

(assert (=> setIsEmpty!54178 setRes!54178))

(declare-fun setNonEmpty!54178 () Bool)

(declare-fun tp!2075832 () Bool)

(declare-fun tp_is_empty!47501 () Bool)

(assert (=> setNonEmpty!54178 (= setRes!54178 (and tp!2075832 tp_is_empty!47501))))

(declare-datatypes ((A!853 0))(
  ( (A!854 (val!29112 Int)) )
))
(declare-fun s!1437 () (Set A!853))

(declare-fun setElem!54178 () A!853)

(declare-fun setRest!54178 () (Set A!853))

(assert (=> setNonEmpty!54178 (= s!1437 (set.union (set.insert setElem!54178 (as set.empty (Set A!853))) setRest!54178))))

(declare-fun b!7314438 () Bool)

(declare-fun e!4378497 () Bool)

(declare-fun e!4378495 () Bool)

(assert (=> b!7314438 (= e!4378497 e!4378495)))

(declare-fun res!2955570 () Bool)

(assert (=> b!7314438 (=> res!2955570 e!4378495)))

(declare-fun lt!2601495 () A!853)

(declare-datatypes ((List!71187 0))(
  ( (Nil!71063) (Cons!71063 (h!77511 A!853) (t!385398 List!71187)) )
))
(declare-fun contains!20784 (List!71187 A!853) Bool)

(declare-fun toList!11595 ((Set A!853)) List!71187)

(assert (=> b!7314438 (= res!2955570 (not (contains!20784 (toList!11595 s!1437) lt!2601495)))))

(declare-fun getWitness!2281 ((Set A!853) Int) A!853)

(assert (=> b!7314438 (= lt!2601495 (getWitness!2281 s!1437 lambda!451855))))

(declare-fun b!7314439 () Bool)

(declare-fun e!4378498 () Bool)

(declare-fun e!4378499 () Bool)

(assert (=> b!7314439 (= e!4378498 e!4378499)))

(declare-fun res!2955569 () Bool)

(assert (=> b!7314439 (=> (not res!2955569) (not e!4378499))))

(declare-fun lt!2601494 () List!71186)

(declare-fun subseq!838 (List!71186 List!71186) Bool)

(assert (=> b!7314439 (= res!2955569 (subseq!838 lRes!18 lt!2601494))))

(declare-fun lt!2601498 () (Set B!3555))

(declare-fun toList!11596 ((Set B!3555)) List!71186)

(assert (=> b!7314439 (= lt!2601494 (toList!11596 lt!2601498))))

(declare-fun flatMap!3037 ((Set A!853) Int) (Set B!3555))

(assert (=> b!7314439 (= lt!2601498 (flatMap!3037 s!1437 f!883))))

(declare-fun e!4378494 () Bool)

(assert (=> b!7314440 (= e!4378494 e!4378497)))

(declare-fun res!2955575 () Bool)

(assert (=> b!7314440 (=> res!2955575 e!4378497)))

(declare-fun exists!4526 ((Set A!853) Int) Bool)

(assert (=> b!7314440 (= res!2955575 (not (exists!4526 s!1437 lambda!451855)))))

(declare-fun empty!3139 () A!853)

(declare-fun flatMapPost!105 ((Set A!853) Int B!3555) A!853)

(assert (=> b!7314440 (= (flatMapPost!105 s!1437 f!883 (h!77510 lRes!18)) empty!3139)))

(assert (=> b!7314440 true))

(assert (=> b!7314440 tp_is_empty!47501))

(assert (=> b!7314441 (= e!4378499 (not e!4378494))))

(declare-fun res!2955574 () Bool)

(assert (=> b!7314441 (=> res!2955574 e!4378494)))

(assert (=> b!7314441 (= res!2955574 (not (set.member (h!77510 lRes!18) lt!2601498)))))

(declare-datatypes ((Unit!164557 0))(
  ( (Unit!164558) )
))
(declare-fun lt!2601500 () Unit!164557)

(declare-fun subseqContains!45 (List!71186 List!71186 B!3555) Unit!164557)

(assert (=> b!7314441 (= lt!2601500 (subseqContains!45 lRes!18 lt!2601494 (h!77510 lRes!18)))))

(assert (=> b!7314441 e!4378493))

(declare-fun res!2955573 () Bool)

(assert (=> b!7314441 (=> (not res!2955573) (not e!4378493))))

(assert (=> b!7314441 (= res!2955573 (forall!17751 (t!385397 lRes!18) lambda!451854))))

(declare-fun lt!2601497 () List!71186)

(declare-fun elmt!118 () A!853)

(declare-fun dynLambda!29124 (Int A!853) (Set B!3555))

(assert (=> b!7314441 (= lt!2601497 (toList!11596 (dynLambda!29124 f!883 elmt!118)))))

(declare-fun lt!2601499 () Unit!164557)

(declare-fun lemmaFlatMapOnSingletonSetList1!23 ((Set A!853) A!853 Int List!71186) Unit!164557)

(assert (=> b!7314441 (= lt!2601499 (lemmaFlatMapOnSingletonSetList1!23 s!1437 elmt!118 f!883 (t!385397 lRes!18)))))

(declare-fun lt!2601496 () Unit!164557)

(declare-fun subseqTail!81 (List!71186 List!71186) Unit!164557)

(assert (=> b!7314441 (= lt!2601496 (subseqTail!81 lRes!18 lt!2601494))))

(declare-fun b!7314442 () Bool)

(declare-fun e!4378496 () Bool)

(declare-fun tp_is_empty!47503 () Bool)

(declare-fun tp!2075830 () Bool)

(assert (=> b!7314442 (= e!4378496 (and tp_is_empty!47503 tp!2075830))))

(declare-fun b!7314437 () Bool)

(declare-fun res!2955568 () Bool)

(assert (=> b!7314437 (=> (not res!2955568) (not e!4378499))))

(assert (=> b!7314437 (= res!2955568 (is-Cons!71062 lRes!18))))

(declare-fun res!2955572 () Bool)

(assert (=> start!712700 (=> (not res!2955572) (not e!4378498))))

(assert (=> start!712700 (= res!2955572 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!853)))))))

(assert (=> start!712700 e!4378498))

(declare-fun condSetEmpty!54178 () Bool)

(assert (=> start!712700 (= condSetEmpty!54178 (= s!1437 (as set.empty (Set A!853))))))

(assert (=> start!712700 setRes!54178))

(assert (=> start!712700 tp_is_empty!47501))

(assert (=> start!712700 tp!2075831))

(assert (=> start!712700 e!4378496))

(declare-fun b!7314443 () Bool)

(declare-fun res!2955571 () Bool)

(assert (=> b!7314443 (=> res!2955571 e!4378495)))

(assert (=> b!7314443 (= res!2955571 (not (= lt!2601495 elmt!118)))))

(declare-fun b!7314444 () Bool)

(declare-fun contains!20785 (List!71186 B!3555) Bool)

(assert (=> b!7314444 (= e!4378495 (contains!20785 lt!2601497 (h!77510 lRes!18)))))

(assert (= (and start!712700 res!2955572) b!7314439))

(assert (= (and b!7314439 res!2955569) b!7314437))

(assert (= (and b!7314437 res!2955568) b!7314441))

(assert (= (and b!7314441 res!2955573) b!7314436))

(assert (= (and b!7314441 (not res!2955574)) b!7314440))

(assert (= (and b!7314440 (not res!2955575)) b!7314438))

(assert (= (and b!7314438 (not res!2955570)) b!7314443))

(assert (= (and b!7314443 (not res!2955571)) b!7314444))

(assert (= (and start!712700 condSetEmpty!54178) setIsEmpty!54178))

(assert (= (and start!712700 (not condSetEmpty!54178)) setNonEmpty!54178))

(assert (= (and start!712700 (is-Cons!71062 lRes!18)) b!7314442))

(declare-fun b_lambda!282423 () Bool)

(assert (=> (not b_lambda!282423) (not b!7314441)))

(declare-fun t!385396 () Bool)

(declare-fun tb!262231 () Bool)

(assert (=> (and start!712700 (= f!883 f!883) t!385396) tb!262231))

(assert (=> b!7314441 t!385396))

(declare-fun result!352946 () Bool)

(declare-fun b_and!351393 () Bool)

(assert (= b_and!351391 (and (=> t!385396 result!352946) b_and!351393)))

(declare-fun m!7978492 () Bool)

(assert (=> b!7314439 m!7978492))

(declare-fun m!7978494 () Bool)

(assert (=> b!7314439 m!7978494))

(declare-fun m!7978496 () Bool)

(assert (=> b!7314439 m!7978496))

(declare-fun m!7978498 () Bool)

(assert (=> b!7314441 m!7978498))

(declare-fun m!7978500 () Bool)

(assert (=> b!7314441 m!7978500))

(declare-fun m!7978502 () Bool)

(assert (=> b!7314441 m!7978502))

(declare-fun m!7978504 () Bool)

(assert (=> b!7314441 m!7978504))

(declare-fun m!7978506 () Bool)

(assert (=> b!7314441 m!7978506))

(declare-fun m!7978508 () Bool)

(assert (=> b!7314441 m!7978508))

(assert (=> b!7314441 m!7978502))

(declare-fun m!7978510 () Bool)

(assert (=> b!7314441 m!7978510))

(declare-fun m!7978512 () Bool)

(assert (=> start!712700 m!7978512))

(declare-fun m!7978514 () Bool)

(assert (=> b!7314444 m!7978514))

(declare-fun m!7978516 () Bool)

(assert (=> b!7314438 m!7978516))

(assert (=> b!7314438 m!7978516))

(declare-fun m!7978518 () Bool)

(assert (=> b!7314438 m!7978518))

(declare-fun m!7978520 () Bool)

(assert (=> b!7314438 m!7978520))

(declare-fun m!7978522 () Bool)

(assert (=> b!7314440 m!7978522))

(declare-fun m!7978524 () Bool)

(assert (=> b!7314440 m!7978524))

(assert (=> b!7314436 m!7978500))

(push 1)

(assert (not b_next!134797))

(assert (not b!7314441))

(assert (not b_lambda!282423))

(assert b_and!351393)

(assert tp_is_empty!47503)

(assert (not b!7314444))

(assert (not b!7314436))

(assert (not b!7314439))

(assert (not b!7314438))

(assert (not tb!262231))

(assert (not b!7314442))

(assert (not b!7314440))

(assert tp_is_empty!47501)

(assert (not setNonEmpty!54178))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351393)

(assert (not b_next!134797))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282427 () Bool)

(assert (= b_lambda!282423 (or (and start!712700 b_free!134007) b_lambda!282427)))

(push 1)

(assert (not b_next!134797))

(assert (not b!7314441))

(assert b_and!351393)

(assert tp_is_empty!47503)

(assert (not b!7314444))

(assert (not b_lambda!282427))

(assert (not b!7314436))

(assert (not b!7314439))

(assert (not b!7314438))

(assert (not tb!262231))

(assert (not b!7314442))

(assert (not b!7314440))

(assert tp_is_empty!47501)

(assert (not setNonEmpty!54178))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351393)

(assert (not b_next!134797))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271058 () Bool)

(declare-fun lt!2601524 () Bool)

(declare-fun content!14871 (List!71187) (Set A!853))

(assert (=> d!2271058 (= lt!2601524 (set.member lt!2601495 (content!14871 (toList!11595 s!1437))))))

(declare-fun e!4378525 () Bool)

(assert (=> d!2271058 (= lt!2601524 e!4378525)))

(declare-fun res!2955604 () Bool)

(assert (=> d!2271058 (=> (not res!2955604) (not e!4378525))))

(assert (=> d!2271058 (= res!2955604 (is-Cons!71063 (toList!11595 s!1437)))))

(assert (=> d!2271058 (= (contains!20784 (toList!11595 s!1437) lt!2601495) lt!2601524)))

(declare-fun b!7314488 () Bool)

(declare-fun e!4378526 () Bool)

(assert (=> b!7314488 (= e!4378525 e!4378526)))

(declare-fun res!2955605 () Bool)

(assert (=> b!7314488 (=> res!2955605 e!4378526)))

(assert (=> b!7314488 (= res!2955605 (= (h!77511 (toList!11595 s!1437)) lt!2601495))))

(declare-fun b!7314489 () Bool)

(assert (=> b!7314489 (= e!4378526 (contains!20784 (t!385398 (toList!11595 s!1437)) lt!2601495))))

(assert (= (and d!2271058 res!2955604) b!7314488))

(assert (= (and b!7314488 (not res!2955605)) b!7314489))

(assert (=> d!2271058 m!7978516))

(declare-fun m!7978560 () Bool)

(assert (=> d!2271058 m!7978560))

(declare-fun m!7978562 () Bool)

(assert (=> d!2271058 m!7978562))

(declare-fun m!7978564 () Bool)

(assert (=> b!7314489 m!7978564))

(assert (=> b!7314438 d!2271058))

(declare-fun d!2271060 () Bool)

(declare-fun e!4378529 () Bool)

(assert (=> d!2271060 e!4378529))

(declare-fun res!2955608 () Bool)

(assert (=> d!2271060 (=> (not res!2955608) (not e!4378529))))

(declare-fun lt!2601527 () List!71187)

(declare-fun noDuplicate!3052 (List!71187) Bool)

(assert (=> d!2271060 (= res!2955608 (noDuplicate!3052 lt!2601527))))

(declare-fun choose!56700 ((Set A!853)) List!71187)

(assert (=> d!2271060 (= lt!2601527 (choose!56700 s!1437))))

(assert (=> d!2271060 (= (toList!11595 s!1437) lt!2601527)))

(declare-fun b!7314492 () Bool)

(assert (=> b!7314492 (= e!4378529 (= (content!14871 lt!2601527) s!1437))))

(assert (= (and d!2271060 res!2955608) b!7314492))

(declare-fun m!7978566 () Bool)

(assert (=> d!2271060 m!7978566))

(declare-fun m!7978568 () Bool)

(assert (=> d!2271060 m!7978568))

(declare-fun m!7978570 () Bool)

(assert (=> b!7314492 m!7978570))

(assert (=> b!7314438 d!2271060))

(declare-fun d!2271062 () Bool)

(declare-fun e!4378532 () Bool)

(assert (=> d!2271062 e!4378532))

(declare-fun res!2955611 () Bool)

(assert (=> d!2271062 (=> (not res!2955611) (not e!4378532))))

(declare-fun lt!2601530 () A!853)

(declare-fun dynLambda!29128 (Int A!853) Bool)

(assert (=> d!2271062 (= res!2955611 (dynLambda!29128 lambda!451855 lt!2601530))))

(declare-fun getWitness!2283 (List!71187 Int) A!853)

(assert (=> d!2271062 (= lt!2601530 (getWitness!2283 (toList!11595 s!1437) lambda!451855))))

(assert (=> d!2271062 (exists!4526 s!1437 lambda!451855)))

(assert (=> d!2271062 (= (getWitness!2281 s!1437 lambda!451855) lt!2601530)))

(declare-fun b!7314495 () Bool)

(assert (=> b!7314495 (= e!4378532 (set.member lt!2601530 s!1437))))

(assert (= (and d!2271062 res!2955611) b!7314495))

(declare-fun b_lambda!282429 () Bool)

(assert (=> (not b_lambda!282429) (not d!2271062)))

(declare-fun m!7978572 () Bool)

(assert (=> d!2271062 m!7978572))

(assert (=> d!2271062 m!7978516))

(assert (=> d!2271062 m!7978516))

(declare-fun m!7978574 () Bool)

(assert (=> d!2271062 m!7978574))

(assert (=> d!2271062 m!7978522))

(declare-fun m!7978576 () Bool)

(assert (=> b!7314495 m!7978576))

(assert (=> b!7314438 d!2271062))

(declare-fun d!2271064 () Bool)

(declare-fun lt!2601533 () Bool)

(declare-fun content!14872 (List!71186) (Set B!3555))

(assert (=> d!2271064 (= lt!2601533 (set.member (h!77510 lRes!18) (content!14872 lt!2601497)))))

(declare-fun e!4378538 () Bool)

(assert (=> d!2271064 (= lt!2601533 e!4378538)))

(declare-fun res!2955616 () Bool)

(assert (=> d!2271064 (=> (not res!2955616) (not e!4378538))))

(assert (=> d!2271064 (= res!2955616 (is-Cons!71062 lt!2601497))))

(assert (=> d!2271064 (= (contains!20785 lt!2601497 (h!77510 lRes!18)) lt!2601533)))

(declare-fun b!7314500 () Bool)

(declare-fun e!4378537 () Bool)

(assert (=> b!7314500 (= e!4378538 e!4378537)))

(declare-fun res!2955617 () Bool)

(assert (=> b!7314500 (=> res!2955617 e!4378537)))

(assert (=> b!7314500 (= res!2955617 (= (h!77510 lt!2601497) (h!77510 lRes!18)))))

(declare-fun b!7314501 () Bool)

(assert (=> b!7314501 (= e!4378537 (contains!20785 (t!385397 lt!2601497) (h!77510 lRes!18)))))

(assert (= (and d!2271064 res!2955616) b!7314500))

(assert (= (and b!7314500 (not res!2955617)) b!7314501))

(declare-fun m!7978578 () Bool)

(assert (=> d!2271064 m!7978578))

(declare-fun m!7978580 () Bool)

(assert (=> d!2271064 m!7978580))

(declare-fun m!7978582 () Bool)

(assert (=> b!7314501 m!7978582))

(assert (=> b!7314444 d!2271064))

(declare-fun b!7314511 () Bool)

(declare-fun e!4378550 () Bool)

(declare-fun e!4378547 () Bool)

(assert (=> b!7314511 (= e!4378550 e!4378547)))

(declare-fun res!2955629 () Bool)

(assert (=> b!7314511 (=> res!2955629 e!4378547)))

(declare-fun e!4378548 () Bool)

(assert (=> b!7314511 (= res!2955629 e!4378548)))

(declare-fun res!2955627 () Bool)

(assert (=> b!7314511 (=> (not res!2955627) (not e!4378548))))

(assert (=> b!7314511 (= res!2955627 (= (h!77510 lRes!18) (h!77510 lt!2601494)))))

(declare-fun d!2271066 () Bool)

(declare-fun res!2955626 () Bool)

(declare-fun e!4378549 () Bool)

(assert (=> d!2271066 (=> res!2955626 e!4378549)))

(assert (=> d!2271066 (= res!2955626 (is-Nil!71062 lRes!18))))

(assert (=> d!2271066 (= (subseq!838 lRes!18 lt!2601494) e!4378549)))

(declare-fun b!7314510 () Bool)

(assert (=> b!7314510 (= e!4378549 e!4378550)))

(declare-fun res!2955628 () Bool)

(assert (=> b!7314510 (=> (not res!2955628) (not e!4378550))))

(assert (=> b!7314510 (= res!2955628 (is-Cons!71062 lt!2601494))))

(declare-fun b!7314512 () Bool)

(assert (=> b!7314512 (= e!4378548 (subseq!838 (t!385397 lRes!18) (t!385397 lt!2601494)))))

(declare-fun b!7314513 () Bool)

(assert (=> b!7314513 (= e!4378547 (subseq!838 lRes!18 (t!385397 lt!2601494)))))

(assert (= (and d!2271066 (not res!2955626)) b!7314510))

(assert (= (and b!7314510 res!2955628) b!7314511))

(assert (= (and b!7314511 res!2955627) b!7314512))

(assert (= (and b!7314511 (not res!2955629)) b!7314513))

(declare-fun m!7978584 () Bool)

(assert (=> b!7314512 m!7978584))

(declare-fun m!7978586 () Bool)

(assert (=> b!7314513 m!7978586))

(assert (=> b!7314439 d!2271066))

(declare-fun d!2271068 () Bool)

(declare-fun e!4378553 () Bool)

(assert (=> d!2271068 e!4378553))

(declare-fun res!2955632 () Bool)

(assert (=> d!2271068 (=> (not res!2955632) (not e!4378553))))

(declare-fun lt!2601536 () List!71186)

(declare-fun noDuplicate!3053 (List!71186) Bool)

(assert (=> d!2271068 (= res!2955632 (noDuplicate!3053 lt!2601536))))

(declare-fun choose!56701 ((Set B!3555)) List!71186)

(assert (=> d!2271068 (= lt!2601536 (choose!56701 lt!2601498))))

(assert (=> d!2271068 (= (toList!11596 lt!2601498) lt!2601536)))

(declare-fun b!7314516 () Bool)

(assert (=> b!7314516 (= e!4378553 (= (content!14872 lt!2601536) lt!2601498))))

(assert (= (and d!2271068 res!2955632) b!7314516))

(declare-fun m!7978588 () Bool)

(assert (=> d!2271068 m!7978588))

(declare-fun m!7978590 () Bool)

(assert (=> d!2271068 m!7978590))

(declare-fun m!7978592 () Bool)

(assert (=> b!7314516 m!7978592))

(assert (=> b!7314439 d!2271068))

(declare-fun d!2271070 () Bool)

(declare-fun choose!56702 ((Set A!853) Int) (Set B!3555))

(assert (=> d!2271070 (= (flatMap!3037 s!1437 f!883) (choose!56702 s!1437 f!883))))

(declare-fun bs!1914677 () Bool)

(assert (= bs!1914677 d!2271070))

(declare-fun m!7978594 () Bool)

(assert (=> bs!1914677 m!7978594))

(assert (=> b!7314439 d!2271070))

(declare-fun d!2271072 () Bool)

(declare-fun res!2955637 () Bool)

(declare-fun e!4378558 () Bool)

(assert (=> d!2271072 (=> res!2955637 e!4378558)))

(assert (=> d!2271072 (= res!2955637 (is-Nil!71062 (t!385397 lRes!18)))))

(assert (=> d!2271072 (= (forall!17751 (t!385397 lRes!18) lambda!451854) e!4378558)))

(declare-fun b!7314521 () Bool)

(declare-fun e!4378559 () Bool)

(assert (=> b!7314521 (= e!4378558 e!4378559)))

(declare-fun res!2955638 () Bool)

(assert (=> b!7314521 (=> (not res!2955638) (not e!4378559))))

(declare-fun dynLambda!29129 (Int B!3555) Bool)

(assert (=> b!7314521 (= res!2955638 (dynLambda!29129 lambda!451854 (h!77510 (t!385397 lRes!18))))))

(declare-fun b!7314522 () Bool)

(assert (=> b!7314522 (= e!4378559 (forall!17751 (t!385397 (t!385397 lRes!18)) lambda!451854))))

(assert (= (and d!2271072 (not res!2955637)) b!7314521))

(assert (= (and b!7314521 res!2955638) b!7314522))

(declare-fun b_lambda!282433 () Bool)

(assert (=> (not b_lambda!282433) (not b!7314521)))

(declare-fun m!7978596 () Bool)

(assert (=> b!7314521 m!7978596))

(declare-fun m!7978598 () Bool)

(assert (=> b!7314522 m!7978598))

(assert (=> b!7314436 d!2271072))

(declare-fun d!2271074 () Bool)

(declare-fun lt!2601539 () Bool)

(declare-fun exists!4528 (List!71187 Int) Bool)

(assert (=> d!2271074 (= lt!2601539 (exists!4528 (toList!11595 s!1437) lambda!451855))))

(declare-fun choose!56703 ((Set A!853) Int) Bool)

(assert (=> d!2271074 (= lt!2601539 (choose!56703 s!1437 lambda!451855))))

(assert (=> d!2271074 (= (exists!4526 s!1437 lambda!451855) lt!2601539)))

(declare-fun bs!1914678 () Bool)

(assert (= bs!1914678 d!2271074))

(assert (=> bs!1914678 m!7978516))

(assert (=> bs!1914678 m!7978516))

(declare-fun m!7978600 () Bool)

(assert (=> bs!1914678 m!7978600))

(declare-fun m!7978602 () Bool)

(assert (=> bs!1914678 m!7978602))

(assert (=> b!7314440 d!2271074))

(declare-fun bs!1914679 () Bool)

(declare-fun d!2271076 () Bool)

(assert (= bs!1914679 (and d!2271076 b!7314440)))

(declare-fun lambda!451868 () Int)

(assert (=> bs!1914679 (= lambda!451868 lambda!451855)))

(assert (=> d!2271076 true))

(assert (=> d!2271076 true))

(assert (=> d!2271076 (< (dynLambda!29122 order!29117 f!883) (dynLambda!29123 order!29119 lambda!451868))))

(assert (=> d!2271076 (= (set.member (h!77510 lRes!18) (flatMap!3037 s!1437 f!883)) (exists!4526 s!1437 lambda!451868))))

(declare-fun lt!2601542 () A!853)

(declare-fun choose!56704 ((Set A!853) Int B!3555) A!853)

(assert (=> d!2271076 (= lt!2601542 (choose!56704 s!1437 f!883 (h!77510 lRes!18)))))

(assert (=> d!2271076 (= (flatMapPost!105 s!1437 f!883 (h!77510 lRes!18)) lt!2601542)))

(declare-fun bs!1914680 () Bool)

(assert (= bs!1914680 d!2271076))

(assert (=> bs!1914680 m!7978496))

(declare-fun m!7978604 () Bool)

(assert (=> bs!1914680 m!7978604))

(declare-fun m!7978606 () Bool)

(assert (=> bs!1914680 m!7978606))

(declare-fun m!7978608 () Bool)

(assert (=> bs!1914680 m!7978608))

(assert (=> b!7314440 d!2271076))

(declare-fun b!7314540 () Bool)

(declare-fun e!4378571 () Unit!164557)

(declare-fun e!4378570 () Unit!164557)

(assert (=> b!7314540 (= e!4378571 e!4378570)))

(declare-fun c!1357841 () Bool)

(assert (=> b!7314540 (= c!1357841 (subseq!838 lRes!18 (t!385397 lt!2601494)))))

(declare-fun b!7314541 () Bool)

(declare-fun e!4378568 () Unit!164557)

(declare-fun call!665782 () Unit!164557)

(assert (=> b!7314541 (= e!4378568 call!665782)))

(declare-fun b!7314542 () Bool)

(declare-fun c!1357842 () Bool)

(declare-fun isEmpty!40857 (List!71186) Bool)

(assert (=> b!7314542 (= c!1357842 (not (isEmpty!40857 (t!385397 lRes!18))))))

(assert (=> b!7314542 (= e!4378570 e!4378568)))

(declare-fun b!7314543 () Bool)

(declare-fun Unit!164561 () Unit!164557)

(assert (=> b!7314543 (= e!4378571 Unit!164561)))

(declare-fun b!7314544 () Bool)

(declare-fun Unit!164562 () Unit!164557)

(assert (=> b!7314544 (= e!4378568 Unit!164562)))

(declare-fun bm!665777 () Bool)

(assert (=> bm!665777 (= call!665782 (subseqTail!81 (ite c!1357841 lRes!18 (t!385397 lRes!18)) (t!385397 lt!2601494)))))

(declare-fun b!7314546 () Bool)

(assert (=> b!7314546 (= e!4378570 call!665782)))

(declare-fun b!7314545 () Bool)

(declare-fun e!4378569 () Bool)

(assert (=> b!7314545 (= e!4378569 (subseq!838 lRes!18 lt!2601494))))

(declare-fun d!2271078 () Bool)

(declare-fun tail!14636 (List!71186) List!71186)

(assert (=> d!2271078 (subseq!838 (tail!14636 lRes!18) lt!2601494)))

(declare-fun lt!2601545 () Unit!164557)

(assert (=> d!2271078 (= lt!2601545 e!4378571)))

(declare-fun c!1357843 () Bool)

(assert (=> d!2271078 (= c!1357843 (and (is-Cons!71062 lRes!18) (is-Cons!71062 lt!2601494)))))

(assert (=> d!2271078 e!4378569))

(declare-fun res!2955641 () Bool)

(assert (=> d!2271078 (=> (not res!2955641) (not e!4378569))))

(assert (=> d!2271078 (= res!2955641 (not (isEmpty!40857 lRes!18)))))

(assert (=> d!2271078 (= (subseqTail!81 lRes!18 lt!2601494) lt!2601545)))

(assert (= (and d!2271078 res!2955641) b!7314545))

(assert (= (and d!2271078 c!1357843) b!7314540))

(assert (= (and d!2271078 (not c!1357843)) b!7314543))

(assert (= (and b!7314540 c!1357841) b!7314546))

(assert (= (and b!7314540 (not c!1357841)) b!7314542))

(assert (= (and b!7314542 c!1357842) b!7314541))

(assert (= (and b!7314542 (not c!1357842)) b!7314544))

(assert (= (or b!7314546 b!7314541) bm!665777))

(declare-fun m!7978610 () Bool)

(assert (=> d!2271078 m!7978610))

(assert (=> d!2271078 m!7978610))

(declare-fun m!7978612 () Bool)

(assert (=> d!2271078 m!7978612))

(declare-fun m!7978614 () Bool)

(assert (=> d!2271078 m!7978614))

(declare-fun m!7978616 () Bool)

(assert (=> b!7314542 m!7978616))

(declare-fun m!7978618 () Bool)

(assert (=> bm!665777 m!7978618))

(assert (=> b!7314545 m!7978492))

(assert (=> b!7314540 m!7978586))

(assert (=> b!7314441 d!2271078))

(declare-fun d!2271080 () Bool)

(declare-fun e!4378572 () Bool)

(assert (=> d!2271080 e!4378572))

(declare-fun res!2955642 () Bool)

(assert (=> d!2271080 (=> (not res!2955642) (not e!4378572))))

(declare-fun lt!2601546 () List!71186)

(assert (=> d!2271080 (= res!2955642 (noDuplicate!3053 lt!2601546))))

(assert (=> d!2271080 (= lt!2601546 (choose!56701 (dynLambda!29124 f!883 elmt!118)))))

(assert (=> d!2271080 (= (toList!11596 (dynLambda!29124 f!883 elmt!118)) lt!2601546)))

(declare-fun b!7314547 () Bool)

(assert (=> b!7314547 (= e!4378572 (= (content!14872 lt!2601546) (dynLambda!29124 f!883 elmt!118)))))

(assert (= (and d!2271080 res!2955642) b!7314547))

(declare-fun m!7978620 () Bool)

(assert (=> d!2271080 m!7978620))

(assert (=> d!2271080 m!7978502))

(declare-fun m!7978622 () Bool)

(assert (=> d!2271080 m!7978622))

(declare-fun m!7978624 () Bool)

(assert (=> b!7314547 m!7978624))

(assert (=> b!7314441 d!2271080))

(assert (=> b!7314441 d!2271072))

(declare-fun d!2271082 () Bool)

(assert (=> d!2271082 (contains!20785 lt!2601494 (h!77510 lRes!18))))

(declare-fun lt!2601549 () Unit!164557)

(declare-fun choose!56705 (List!71186 List!71186 B!3555) Unit!164557)

(assert (=> d!2271082 (= lt!2601549 (choose!56705 lRes!18 lt!2601494 (h!77510 lRes!18)))))

(declare-fun e!4378575 () Bool)

(assert (=> d!2271082 e!4378575))

(declare-fun res!2955645 () Bool)

(assert (=> d!2271082 (=> (not res!2955645) (not e!4378575))))

(assert (=> d!2271082 (= res!2955645 (subseq!838 lRes!18 lt!2601494))))

(assert (=> d!2271082 (= (subseqContains!45 lRes!18 lt!2601494 (h!77510 lRes!18)) lt!2601549)))

(declare-fun b!7314550 () Bool)

(assert (=> b!7314550 (= e!4378575 (contains!20785 lRes!18 (h!77510 lRes!18)))))

(assert (= (and d!2271082 res!2955645) b!7314550))

(declare-fun m!7978626 () Bool)

(assert (=> d!2271082 m!7978626))

(declare-fun m!7978628 () Bool)

(assert (=> d!2271082 m!7978628))

(assert (=> d!2271082 m!7978492))

(declare-fun m!7978630 () Bool)

(assert (=> b!7314550 m!7978630))

(assert (=> b!7314441 d!2271082))

(declare-fun bs!1914681 () Bool)

(declare-fun d!2271084 () Bool)

(assert (= bs!1914681 (and d!2271084 b!7314441)))

(declare-fun lt!2601555 () List!71186)

(declare-fun lambda!451871 () Int)

(assert (=> bs!1914681 (= (= lt!2601555 lt!2601497) (= lambda!451871 lambda!451854))))

(assert (=> d!2271084 true))

(assert (=> d!2271084 (forall!17751 (t!385397 lRes!18) lambda!451871)))

(assert (=> d!2271084 (= lt!2601555 (toList!11596 (dynLambda!29124 f!883 elmt!118)))))

(declare-fun lt!2601554 () Unit!164557)

(declare-fun choose!56706 ((Set A!853) A!853 Int List!71186) Unit!164557)

(assert (=> d!2271084 (= lt!2601554 (choose!56706 s!1437 elmt!118 f!883 (t!385397 lRes!18)))))

(assert (=> d!2271084 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!853))))))

(assert (=> d!2271084 (= (lemmaFlatMapOnSingletonSetList1!23 s!1437 elmt!118 f!883 (t!385397 lRes!18)) lt!2601554)))

(declare-fun b_lambda!282435 () Bool)

(assert (=> (not b_lambda!282435) (not d!2271084)))

(assert (=> d!2271084 t!385396))

(declare-fun b_and!351399 () Bool)

(assert (= b_and!351393 (and (=> t!385396 result!352946) b_and!351399)))

(declare-fun m!7978632 () Bool)

(assert (=> d!2271084 m!7978632))

(declare-fun m!7978634 () Bool)

(assert (=> d!2271084 m!7978634))

(assert (=> d!2271084 m!7978502))

(assert (=> d!2271084 m!7978510))

(assert (=> d!2271084 m!7978502))

(assert (=> d!2271084 m!7978512))

(assert (=> b!7314441 d!2271084))

(declare-fun condSetEmpty!54184 () Bool)

(assert (=> tb!262231 (= condSetEmpty!54184 (= (dynLambda!29124 f!883 elmt!118) (as set.empty (Set B!3555))))))

(declare-fun setRes!54184 () Bool)

(assert (=> tb!262231 (= result!352946 setRes!54184)))

(declare-fun setIsEmpty!54184 () Bool)

(assert (=> setIsEmpty!54184 setRes!54184))

(declare-fun setNonEmpty!54184 () Bool)

(declare-fun tp!2075844 () Bool)

(assert (=> setNonEmpty!54184 (= setRes!54184 (and tp!2075844 tp_is_empty!47503))))

(declare-fun setElem!54184 () B!3555)

(declare-fun setRest!54184 () (Set B!3555))

(assert (=> setNonEmpty!54184 (= (dynLambda!29124 f!883 elmt!118) (set.union (set.insert setElem!54184 (as set.empty (Set B!3555))) setRest!54184))))

(assert (= (and tb!262231 condSetEmpty!54184) setIsEmpty!54184))

(assert (= (and tb!262231 (not condSetEmpty!54184)) setNonEmpty!54184))

(declare-fun b!7314557 () Bool)

(declare-fun e!4378578 () Bool)

(declare-fun tp!2075847 () Bool)

(assert (=> b!7314557 (= e!4378578 (and tp_is_empty!47503 tp!2075847))))

(assert (=> b!7314442 (= tp!2075830 e!4378578)))

(assert (= (and b!7314442 (is-Cons!71062 (t!385397 lRes!18))) b!7314557))

(declare-fun condSetEmpty!54187 () Bool)

(assert (=> setNonEmpty!54178 (= condSetEmpty!54187 (= setRest!54178 (as set.empty (Set A!853))))))

(declare-fun setRes!54187 () Bool)

(assert (=> setNonEmpty!54178 (= tp!2075832 setRes!54187)))

(declare-fun setIsEmpty!54187 () Bool)

(assert (=> setIsEmpty!54187 setRes!54187))

(declare-fun setNonEmpty!54187 () Bool)

(declare-fun tp!2075850 () Bool)

(assert (=> setNonEmpty!54187 (= setRes!54187 (and tp!2075850 tp_is_empty!47501))))

(declare-fun setElem!54187 () A!853)

(declare-fun setRest!54187 () (Set A!853))

(assert (=> setNonEmpty!54187 (= setRest!54178 (set.union (set.insert setElem!54187 (as set.empty (Set A!853))) setRest!54187))))

(assert (= (and setNonEmpty!54178 condSetEmpty!54187) setIsEmpty!54187))

(assert (= (and setNonEmpty!54178 (not condSetEmpty!54187)) setNonEmpty!54187))

(declare-fun b_lambda!282437 () Bool)

(assert (= b_lambda!282435 (or (and start!712700 b_free!134007) b_lambda!282437)))

(declare-fun b_lambda!282439 () Bool)

(assert (= b_lambda!282433 (or b!7314441 b_lambda!282439)))

(declare-fun bs!1914682 () Bool)

(declare-fun d!2271088 () Bool)

(assert (= bs!1914682 (and d!2271088 b!7314441)))

(assert (=> bs!1914682 (= (dynLambda!29129 lambda!451854 (h!77510 (t!385397 lRes!18))) (contains!20785 lt!2601497 (h!77510 (t!385397 lRes!18))))))

(declare-fun m!7978636 () Bool)

(assert (=> bs!1914682 m!7978636))

(assert (=> b!7314521 d!2271088))

(declare-fun b_lambda!282441 () Bool)

(assert (= b_lambda!282429 (or b!7314440 b_lambda!282441)))

(declare-fun bs!1914683 () Bool)

(declare-fun d!2271090 () Bool)

(assert (= bs!1914683 (and d!2271090 b!7314440)))

(assert (=> bs!1914683 (= (dynLambda!29128 lambda!451855 lt!2601530) (set.member (h!77510 lRes!18) (dynLambda!29124 f!883 lt!2601530)))))

(declare-fun b_lambda!282443 () Bool)

(assert (=> (not b_lambda!282443) (not bs!1914683)))

(declare-fun t!385405 () Bool)

(declare-fun tb!262235 () Bool)

(assert (=> (and start!712700 (= f!883 f!883) t!385405) tb!262235))

(assert (=> bs!1914683 t!385405))

(declare-fun result!352956 () Bool)

(declare-fun b_and!351401 () Bool)

(assert (= b_and!351399 (and (=> t!385405 result!352956) b_and!351401)))

(declare-fun m!7978638 () Bool)

(assert (=> bs!1914683 m!7978638))

(declare-fun m!7978640 () Bool)

(assert (=> bs!1914683 m!7978640))

(assert (=> d!2271062 d!2271090))

(push 1)

(assert (not setNonEmpty!54184))

(assert (not bm!665777))

(assert tp_is_empty!47501)

(assert (not d!2271082))

(assert (not b_lambda!282443))

(assert (not d!2271078))

(assert (not b!7314501))

(assert (not bs!1914682))

(assert (not d!2271062))

(assert (not b!7314557))

(assert (not b!7314545))

(assert b_and!351401)

(assert (not b!7314492))

(assert (not b!7314540))

(assert (not b!7314522))

(assert (not d!2271070))

(assert (not d!2271058))

(assert (not d!2271074))

(assert (not d!2271060))

(assert (not b_next!134797))

(assert (not b!7314513))

(assert (not d!2271068))

(assert (not b!7314550))

(assert (not b_lambda!282437))

(assert (not b!7314489))

(assert (not b!7314547))

(assert (not tb!262235))

(assert (not d!2271080))

(assert (not b!7314542))

(assert (not d!2271084))

(assert tp_is_empty!47503)

(assert (not d!2271076))

(assert (not setNonEmpty!54187))

(assert (not b_lambda!282427))

(assert (not b!7314516))

(assert (not b_lambda!282439))

(assert (not b!7314512))

(assert (not d!2271064))

(assert (not b_lambda!282441))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351401)

(assert (not b_next!134797))

(check-sat)

(pop 1)

