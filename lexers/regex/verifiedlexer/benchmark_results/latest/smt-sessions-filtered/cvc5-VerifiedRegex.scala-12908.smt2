; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712152 () Bool)

(assert start!712152)

(declare-fun b_free!133931 () Bool)

(declare-fun b_next!134721 () Bool)

(assert (=> start!712152 (= b_free!133931 (not b_next!134721))))

(declare-fun tp!2075194 () Bool)

(declare-fun b_and!351233 () Bool)

(assert (=> start!712152 (= tp!2075194 b_and!351233)))

(declare-fun b!7311625 () Bool)

(assert (=> b!7311625 true))

(declare-fun res!2953765 () Bool)

(declare-fun e!4376354 () Bool)

(assert (=> start!712152 (=> (not res!2953765) (not e!4376354))))

(declare-datatypes ((A!777 0))(
  ( (A!778 (val!29035 Int)) )
))
(declare-fun s!1445 () (Set A!777))

(declare-fun elmt!124 () A!777)

(assert (=> start!712152 (= res!2953765 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!777)))))))

(assert (=> start!712152 e!4376354))

(declare-fun condSetEmpty!53892 () Bool)

(assert (=> start!712152 (= condSetEmpty!53892 (= s!1445 (as set.empty (Set A!777))))))

(declare-fun setRes!53892 () Bool)

(assert (=> start!712152 setRes!53892))

(declare-fun tp_is_empty!47349 () Bool)

(assert (=> start!712152 tp_is_empty!47349))

(declare-fun e!4376353 () Bool)

(assert (=> start!712152 e!4376353))

(assert (=> start!712152 tp!2075194))

(declare-fun b!7311623 () Bool)

(declare-fun res!2953764 () Bool)

(declare-fun e!4376355 () Bool)

(assert (=> b!7311623 (=> (not res!2953764) (not e!4376355))))

(declare-datatypes ((B!3479 0))(
  ( (B!3480 (val!29036 Int)) )
))
(declare-datatypes ((List!71141 0))(
  ( (Nil!71017) (Cons!71017 (h!77465 B!3479) (t!385273 List!71141)) )
))
(declare-fun lRes!24 () List!71141)

(assert (=> b!7311623 (= res!2953764 (is-Cons!71017 lRes!24))))

(declare-fun setNonEmpty!53892 () Bool)

(declare-fun tp!2075192 () Bool)

(assert (=> setNonEmpty!53892 (= setRes!53892 (and tp!2075192 tp_is_empty!47349))))

(declare-fun setElem!53892 () A!777)

(declare-fun setRest!53892 () (Set A!777))

(assert (=> setNonEmpty!53892 (= s!1445 (set.union (set.insert setElem!53892 (as set.empty (Set A!777))) setRest!53892))))

(declare-fun b!7311624 () Bool)

(assert (=> b!7311624 (= e!4376354 e!4376355)))

(declare-fun res!2953767 () Bool)

(assert (=> b!7311624 (=> (not res!2953767) (not e!4376355))))

(declare-fun lt!2600594 () List!71141)

(declare-fun subseq!800 (List!71141 List!71141) Bool)

(assert (=> b!7311624 (= res!2953767 (subseq!800 lRes!24 lt!2600594))))

(declare-fun f!903 () Int)

(declare-fun toList!11550 ((Set B!3479)) List!71141)

(declare-fun dynLambda!29057 (Int A!777) (Set B!3479))

(assert (=> b!7311624 (= lt!2600594 (toList!11550 (dynLambda!29057 f!903 elmt!124)))))

(declare-fun contains!20760 (List!71141 B!3479) Bool)

(assert (=> b!7311625 (= e!4376355 (not (contains!20760 lt!2600594 (h!77465 lRes!24))))))

(declare-datatypes ((Unit!164452 0))(
  ( (Unit!164453) )
))
(declare-fun lt!2600591 () Unit!164452)

(declare-fun subseqContains!27 (List!71141 List!71141 B!3479) Unit!164452)

(assert (=> b!7311625 (= lt!2600591 (subseqContains!27 lRes!24 lt!2600594 (h!77465 lRes!24)))))

(declare-fun e!4376356 () Bool)

(assert (=> b!7311625 e!4376356))

(declare-fun res!2953766 () Bool)

(assert (=> b!7311625 (=> (not res!2953766) (not e!4376356))))

(declare-fun lambda!451594 () Int)

(declare-fun forall!17725 (List!71141 Int) Bool)

(assert (=> b!7311625 (= res!2953766 (forall!17725 (t!385273 lRes!24) lambda!451594))))

(declare-fun lt!2600592 () List!71141)

(declare-fun flatMap!3001 ((Set A!777) Int) (Set B!3479))

(assert (=> b!7311625 (= lt!2600592 (toList!11550 (flatMap!3001 s!1445 f!903)))))

(declare-fun lt!2600595 () Unit!164452)

(declare-fun lemmaFlatMapOnSingletonSetList2!11 ((Set A!777) A!777 Int List!71141) Unit!164452)

(assert (=> b!7311625 (= lt!2600595 (lemmaFlatMapOnSingletonSetList2!11 s!1445 elmt!124 f!903 (t!385273 lRes!24)))))

(declare-fun lt!2600593 () Unit!164452)

(declare-fun subseqTail!51 (List!71141 List!71141) Unit!164452)

(assert (=> b!7311625 (= lt!2600593 (subseqTail!51 lRes!24 lt!2600594))))

(declare-fun setIsEmpty!53892 () Bool)

(assert (=> setIsEmpty!53892 setRes!53892))

(declare-fun b!7311626 () Bool)

(declare-fun tp_is_empty!47351 () Bool)

(declare-fun tp!2075193 () Bool)

(assert (=> b!7311626 (= e!4376353 (and tp_is_empty!47351 tp!2075193))))

(declare-fun b!7311627 () Bool)

(assert (=> b!7311627 (= e!4376356 (forall!17725 (t!385273 lRes!24) lambda!451594))))

(assert (= (and start!712152 res!2953765) b!7311624))

(assert (= (and b!7311624 res!2953767) b!7311623))

(assert (= (and b!7311623 res!2953764) b!7311625))

(assert (= (and b!7311625 res!2953766) b!7311627))

(assert (= (and start!712152 condSetEmpty!53892) setIsEmpty!53892))

(assert (= (and start!712152 (not condSetEmpty!53892)) setNonEmpty!53892))

(assert (= (and start!712152 (is-Cons!71017 lRes!24)) b!7311626))

(declare-fun b_lambda!282105 () Bool)

(assert (=> (not b_lambda!282105) (not b!7311624)))

(declare-fun t!385272 () Bool)

(declare-fun tb!262169 () Bool)

(assert (=> (and start!712152 (= f!903 f!903) t!385272) tb!262169))

(assert (=> b!7311624 t!385272))

(declare-fun result!352744 () Bool)

(declare-fun b_and!351235 () Bool)

(assert (= b_and!351233 (and (=> t!385272 result!352744) b_and!351235)))

(declare-fun m!7975624 () Bool)

(assert (=> start!712152 m!7975624))

(declare-fun m!7975626 () Bool)

(assert (=> b!7311624 m!7975626))

(declare-fun m!7975628 () Bool)

(assert (=> b!7311624 m!7975628))

(assert (=> b!7311624 m!7975628))

(declare-fun m!7975630 () Bool)

(assert (=> b!7311624 m!7975630))

(declare-fun m!7975632 () Bool)

(assert (=> b!7311625 m!7975632))

(declare-fun m!7975634 () Bool)

(assert (=> b!7311625 m!7975634))

(declare-fun m!7975636 () Bool)

(assert (=> b!7311625 m!7975636))

(declare-fun m!7975638 () Bool)

(assert (=> b!7311625 m!7975638))

(declare-fun m!7975640 () Bool)

(assert (=> b!7311625 m!7975640))

(declare-fun m!7975642 () Bool)

(assert (=> b!7311625 m!7975642))

(declare-fun m!7975644 () Bool)

(assert (=> b!7311625 m!7975644))

(assert (=> b!7311625 m!7975634))

(assert (=> b!7311627 m!7975640))

(push 1)

(assert (not b!7311625))

(assert tp_is_empty!47351)

(assert b_and!351235)

(assert (not b!7311626))

(assert (not b!7311627))

(assert (not tb!262169))

(assert (not setNonEmpty!53892))

(assert (not b_next!134721))

(assert (not b!7311624))

(assert (not b_lambda!282105))

(assert tp_is_empty!47349)

(check-sat)

(pop 1)

(push 1)

(assert b_and!351235)

(assert (not b_next!134721))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282109 () Bool)

(assert (= b_lambda!282105 (or (and start!712152 b_free!133931) b_lambda!282109)))

(push 1)

(assert (not b!7311625))

(assert tp_is_empty!47351)

(assert b_and!351235)

(assert (not b!7311626))

(assert (not b!7311627))

(assert (not tb!262169))

(assert (not setNonEmpty!53892))

(assert tp_is_empty!47349)

(assert (not b_lambda!282109))

(assert (not b_next!134721))

(assert (not b!7311624))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351235)

(assert (not b_next!134721))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2269955 () Bool)

(assert (=> d!2269955 (contains!20760 lt!2600594 (h!77465 lRes!24))))

(declare-fun lt!2600613 () Unit!164452)

(declare-fun choose!56626 (List!71141 List!71141 B!3479) Unit!164452)

(assert (=> d!2269955 (= lt!2600613 (choose!56626 lRes!24 lt!2600594 (h!77465 lRes!24)))))

(declare-fun e!4376371 () Bool)

(assert (=> d!2269955 e!4376371))

(declare-fun res!2953782 () Bool)

(assert (=> d!2269955 (=> (not res!2953782) (not e!4376371))))

(assert (=> d!2269955 (= res!2953782 (subseq!800 lRes!24 lt!2600594))))

(assert (=> d!2269955 (= (subseqContains!27 lRes!24 lt!2600594 (h!77465 lRes!24)) lt!2600613)))

(declare-fun b!7311649 () Bool)

(assert (=> b!7311649 (= e!4376371 (contains!20760 lRes!24 (h!77465 lRes!24)))))

(assert (= (and d!2269955 res!2953782) b!7311649))

(assert (=> d!2269955 m!7975632))

(declare-fun m!7975668 () Bool)

(assert (=> d!2269955 m!7975668))

(assert (=> d!2269955 m!7975626))

(declare-fun m!7975670 () Bool)

(assert (=> b!7311649 m!7975670))

(assert (=> b!7311625 d!2269955))

(declare-fun d!2269957 () Bool)

(declare-fun e!4376374 () Bool)

(assert (=> d!2269957 e!4376374))

(declare-fun res!2953785 () Bool)

(assert (=> d!2269957 (=> (not res!2953785) (not e!4376374))))

(declare-fun lt!2600616 () List!71141)

(declare-fun noDuplicate!3029 (List!71141) Bool)

(assert (=> d!2269957 (= res!2953785 (noDuplicate!3029 lt!2600616))))

(declare-fun choose!56627 ((Set B!3479)) List!71141)

(assert (=> d!2269957 (= lt!2600616 (choose!56627 (flatMap!3001 s!1445 f!903)))))

(assert (=> d!2269957 (= (toList!11550 (flatMap!3001 s!1445 f!903)) lt!2600616)))

(declare-fun b!7311652 () Bool)

(declare-fun content!14848 (List!71141) (Set B!3479))

(assert (=> b!7311652 (= e!4376374 (= (content!14848 lt!2600616) (flatMap!3001 s!1445 f!903)))))

(assert (= (and d!2269957 res!2953785) b!7311652))

(declare-fun m!7975672 () Bool)

(assert (=> d!2269957 m!7975672))

(assert (=> d!2269957 m!7975634))

(declare-fun m!7975674 () Bool)

(assert (=> d!2269957 m!7975674))

(declare-fun m!7975676 () Bool)

(assert (=> b!7311652 m!7975676))

(assert (=> b!7311625 d!2269957))

(declare-fun d!2269959 () Bool)

(declare-fun lt!2600619 () Bool)

(assert (=> d!2269959 (= lt!2600619 (set.member (h!77465 lRes!24) (content!14848 lt!2600594)))))

(declare-fun e!4376380 () Bool)

(assert (=> d!2269959 (= lt!2600619 e!4376380)))

(declare-fun res!2953791 () Bool)

(assert (=> d!2269959 (=> (not res!2953791) (not e!4376380))))

(assert (=> d!2269959 (= res!2953791 (is-Cons!71017 lt!2600594))))

(assert (=> d!2269959 (= (contains!20760 lt!2600594 (h!77465 lRes!24)) lt!2600619)))

(declare-fun b!7311657 () Bool)

(declare-fun e!4376379 () Bool)

(assert (=> b!7311657 (= e!4376380 e!4376379)))

(declare-fun res!2953790 () Bool)

(assert (=> b!7311657 (=> res!2953790 e!4376379)))

(assert (=> b!7311657 (= res!2953790 (= (h!77465 lt!2600594) (h!77465 lRes!24)))))

(declare-fun b!7311658 () Bool)

(assert (=> b!7311658 (= e!4376379 (contains!20760 (t!385273 lt!2600594) (h!77465 lRes!24)))))

(assert (= (and d!2269959 res!2953791) b!7311657))

(assert (= (and b!7311657 (not res!2953790)) b!7311658))

(declare-fun m!7975678 () Bool)

(assert (=> d!2269959 m!7975678))

(declare-fun m!7975680 () Bool)

(assert (=> d!2269959 m!7975680))

(declare-fun m!7975682 () Bool)

(assert (=> b!7311658 m!7975682))

(assert (=> b!7311625 d!2269959))

(declare-fun d!2269961 () Bool)

(declare-fun res!2953796 () Bool)

(declare-fun e!4376385 () Bool)

(assert (=> d!2269961 (=> res!2953796 e!4376385)))

(assert (=> d!2269961 (= res!2953796 (is-Nil!71017 (t!385273 lRes!24)))))

(assert (=> d!2269961 (= (forall!17725 (t!385273 lRes!24) lambda!451594) e!4376385)))

(declare-fun b!7311663 () Bool)

(declare-fun e!4376386 () Bool)

(assert (=> b!7311663 (= e!4376385 e!4376386)))

(declare-fun res!2953797 () Bool)

(assert (=> b!7311663 (=> (not res!2953797) (not e!4376386))))

(declare-fun dynLambda!29059 (Int B!3479) Bool)

(assert (=> b!7311663 (= res!2953797 (dynLambda!29059 lambda!451594 (h!77465 (t!385273 lRes!24))))))

(declare-fun b!7311664 () Bool)

(assert (=> b!7311664 (= e!4376386 (forall!17725 (t!385273 (t!385273 lRes!24)) lambda!451594))))

(assert (= (and d!2269961 (not res!2953796)) b!7311663))

(assert (= (and b!7311663 res!2953797) b!7311664))

(declare-fun b_lambda!282113 () Bool)

(assert (=> (not b_lambda!282113) (not b!7311663)))

(declare-fun m!7975684 () Bool)

(assert (=> b!7311663 m!7975684))

(declare-fun m!7975686 () Bool)

(assert (=> b!7311664 m!7975686))

(assert (=> b!7311625 d!2269961))

(declare-fun b!7311679 () Bool)

(declare-fun e!4376398 () Bool)

(assert (=> b!7311679 (= e!4376398 (subseq!800 lRes!24 lt!2600594))))

(declare-fun b!7311680 () Bool)

(declare-fun e!4376396 () Unit!164452)

(declare-fun call!665712 () Unit!164452)

(assert (=> b!7311680 (= e!4376396 call!665712)))

(declare-fun b!7311681 () Bool)

(declare-fun c!1357556 () Bool)

(declare-fun isEmpty!40842 (List!71141) Bool)

(assert (=> b!7311681 (= c!1357556 (not (isEmpty!40842 (t!385273 lRes!24))))))

(declare-fun e!4376397 () Unit!164452)

(assert (=> b!7311681 (= e!4376397 e!4376396)))

(declare-fun b!7311683 () Bool)

(declare-fun e!4376395 () Unit!164452)

(assert (=> b!7311683 (= e!4376395 e!4376397)))

(declare-fun c!1357555 () Bool)

(assert (=> b!7311683 (= c!1357555 (subseq!800 lRes!24 (t!385273 lt!2600594)))))

(declare-fun b!7311684 () Bool)

(declare-fun Unit!164456 () Unit!164452)

(assert (=> b!7311684 (= e!4376395 Unit!164456)))

(declare-fun bm!665707 () Bool)

(assert (=> bm!665707 (= call!665712 (subseqTail!51 (ite c!1357555 lRes!24 (t!385273 lRes!24)) (t!385273 lt!2600594)))))

(declare-fun b!7311685 () Bool)

(assert (=> b!7311685 (= e!4376397 call!665712)))

(declare-fun d!2269963 () Bool)

(declare-fun tail!14623 (List!71141) List!71141)

(assert (=> d!2269963 (subseq!800 (tail!14623 lRes!24) lt!2600594)))

(declare-fun lt!2600622 () Unit!164452)

(assert (=> d!2269963 (= lt!2600622 e!4376395)))

(declare-fun c!1357557 () Bool)

(assert (=> d!2269963 (= c!1357557 (and (is-Cons!71017 lRes!24) (is-Cons!71017 lt!2600594)))))

(assert (=> d!2269963 e!4376398))

(declare-fun res!2953800 () Bool)

(assert (=> d!2269963 (=> (not res!2953800) (not e!4376398))))

(assert (=> d!2269963 (= res!2953800 (not (isEmpty!40842 lRes!24)))))

(assert (=> d!2269963 (= (subseqTail!51 lRes!24 lt!2600594) lt!2600622)))

(declare-fun b!7311682 () Bool)

(declare-fun Unit!164457 () Unit!164452)

(assert (=> b!7311682 (= e!4376396 Unit!164457)))

(assert (= (and d!2269963 res!2953800) b!7311679))

(assert (= (and d!2269963 c!1357557) b!7311683))

(assert (= (and d!2269963 (not c!1357557)) b!7311684))

(assert (= (and b!7311683 c!1357555) b!7311685))

(assert (= (and b!7311683 (not c!1357555)) b!7311681))

(assert (= (and b!7311681 c!1357556) b!7311680))

(assert (= (and b!7311681 (not c!1357556)) b!7311682))

(assert (= (or b!7311685 b!7311680) bm!665707))

(declare-fun m!7975688 () Bool)

(assert (=> d!2269963 m!7975688))

(assert (=> d!2269963 m!7975688))

(declare-fun m!7975690 () Bool)

(assert (=> d!2269963 m!7975690))

(declare-fun m!7975692 () Bool)

(assert (=> d!2269963 m!7975692))

(declare-fun m!7975694 () Bool)

(assert (=> bm!665707 m!7975694))

(declare-fun m!7975696 () Bool)

(assert (=> b!7311683 m!7975696))

(assert (=> b!7311679 m!7975626))

(declare-fun m!7975698 () Bool)

(assert (=> b!7311681 m!7975698))

(assert (=> b!7311625 d!2269963))

(declare-fun bs!1914499 () Bool)

(declare-fun d!2269967 () Bool)

(assert (= bs!1914499 (and d!2269967 b!7311625)))

(declare-fun lt!2600628 () List!71141)

(declare-fun lambda!451602 () Int)

(assert (=> bs!1914499 (= (= lt!2600628 lt!2600592) (= lambda!451602 lambda!451594))))

(assert (=> d!2269967 true))

(assert (=> d!2269967 (forall!17725 (t!385273 lRes!24) lambda!451602)))

(assert (=> d!2269967 (= lt!2600628 (toList!11550 (flatMap!3001 s!1445 f!903)))))

(declare-fun lt!2600627 () Unit!164452)

(declare-fun choose!56628 ((Set A!777) A!777 Int List!71141) Unit!164452)

(assert (=> d!2269967 (= lt!2600627 (choose!56628 s!1445 elmt!124 f!903 (t!385273 lRes!24)))))

(assert (=> d!2269967 (= s!1445 (set.insert elmt!124 (as set.empty (Set A!777))))))

(assert (=> d!2269967 (= (lemmaFlatMapOnSingletonSetList2!11 s!1445 elmt!124 f!903 (t!385273 lRes!24)) lt!2600627)))

(declare-fun bs!1914500 () Bool)

(assert (= bs!1914500 d!2269967))

(declare-fun m!7975700 () Bool)

(assert (=> bs!1914500 m!7975700))

(assert (=> bs!1914500 m!7975634))

(assert (=> bs!1914500 m!7975634))

(assert (=> bs!1914500 m!7975636))

(assert (=> bs!1914500 m!7975624))

(declare-fun m!7975702 () Bool)

(assert (=> bs!1914500 m!7975702))

(assert (=> b!7311625 d!2269967))

(declare-fun d!2269969 () Bool)

(declare-fun choose!56629 ((Set A!777) Int) (Set B!3479))

(assert (=> d!2269969 (= (flatMap!3001 s!1445 f!903) (choose!56629 s!1445 f!903))))

(declare-fun bs!1914501 () Bool)

(assert (= bs!1914501 d!2269969))

(declare-fun m!7975704 () Bool)

(assert (=> bs!1914501 m!7975704))

(assert (=> b!7311625 d!2269969))

(declare-fun b!7311700 () Bool)

(declare-fun e!4376416 () Bool)

(declare-fun e!4376413 () Bool)

(assert (=> b!7311700 (= e!4376416 e!4376413)))

(declare-fun res!2953817 () Bool)

(assert (=> b!7311700 (=> (not res!2953817) (not e!4376413))))

(assert (=> b!7311700 (= res!2953817 (is-Cons!71017 lt!2600594))))

(declare-fun b!7311702 () Bool)

(declare-fun e!4376414 () Bool)

(assert (=> b!7311702 (= e!4376414 (subseq!800 (t!385273 lRes!24) (t!385273 lt!2600594)))))

(declare-fun b!7311701 () Bool)

(declare-fun e!4376415 () Bool)

(assert (=> b!7311701 (= e!4376413 e!4376415)))

(declare-fun res!2953815 () Bool)

(assert (=> b!7311701 (=> res!2953815 e!4376415)))

(assert (=> b!7311701 (= res!2953815 e!4376414)))

(declare-fun res!2953816 () Bool)

(assert (=> b!7311701 (=> (not res!2953816) (not e!4376414))))

(assert (=> b!7311701 (= res!2953816 (= (h!77465 lRes!24) (h!77465 lt!2600594)))))

(declare-fun d!2269971 () Bool)

(declare-fun res!2953818 () Bool)

(assert (=> d!2269971 (=> res!2953818 e!4376416)))

(assert (=> d!2269971 (= res!2953818 (is-Nil!71017 lRes!24))))

(assert (=> d!2269971 (= (subseq!800 lRes!24 lt!2600594) e!4376416)))

(declare-fun b!7311703 () Bool)

(assert (=> b!7311703 (= e!4376415 (subseq!800 lRes!24 (t!385273 lt!2600594)))))

(assert (= (and d!2269971 (not res!2953818)) b!7311700))

(assert (= (and b!7311700 res!2953817) b!7311701))

(assert (= (and b!7311701 res!2953816) b!7311702))

(assert (= (and b!7311701 (not res!2953815)) b!7311703))

(declare-fun m!7975710 () Bool)

(assert (=> b!7311702 m!7975710))

(assert (=> b!7311703 m!7975696))

(assert (=> b!7311624 d!2269971))

(declare-fun d!2269975 () Bool)

(declare-fun e!4376417 () Bool)

(assert (=> d!2269975 e!4376417))

(declare-fun res!2953819 () Bool)

(assert (=> d!2269975 (=> (not res!2953819) (not e!4376417))))

(declare-fun lt!2600629 () List!71141)

(assert (=> d!2269975 (= res!2953819 (noDuplicate!3029 lt!2600629))))

(assert (=> d!2269975 (= lt!2600629 (choose!56627 (dynLambda!29057 f!903 elmt!124)))))

(assert (=> d!2269975 (= (toList!11550 (dynLambda!29057 f!903 elmt!124)) lt!2600629)))

(declare-fun b!7311704 () Bool)

(assert (=> b!7311704 (= e!4376417 (= (content!14848 lt!2600629) (dynLambda!29057 f!903 elmt!124)))))

(assert (= (and d!2269975 res!2953819) b!7311704))

(declare-fun m!7975712 () Bool)

(assert (=> d!2269975 m!7975712))

(assert (=> d!2269975 m!7975628))

(declare-fun m!7975714 () Bool)

(assert (=> d!2269975 m!7975714))

(declare-fun m!7975716 () Bool)

(assert (=> b!7311704 m!7975716))

(assert (=> b!7311624 d!2269975))

(assert (=> b!7311627 d!2269961))

(declare-fun b!7311709 () Bool)

(declare-fun e!4376420 () Bool)

(declare-fun tp!2075206 () Bool)

(assert (=> b!7311709 (= e!4376420 (and tp_is_empty!47351 tp!2075206))))

(assert (=> b!7311626 (= tp!2075193 e!4376420)))

(assert (= (and b!7311626 (is-Cons!71017 (t!385273 lRes!24))) b!7311709))

(declare-fun condSetEmpty!53898 () Bool)

(assert (=> tb!262169 (= condSetEmpty!53898 (= (dynLambda!29057 f!903 elmt!124) (as set.empty (Set B!3479))))))

(declare-fun setRes!53898 () Bool)

(assert (=> tb!262169 (= result!352744 setRes!53898)))

(declare-fun setIsEmpty!53898 () Bool)

(assert (=> setIsEmpty!53898 setRes!53898))

(declare-fun setNonEmpty!53898 () Bool)

(declare-fun tp!2075209 () Bool)

(assert (=> setNonEmpty!53898 (= setRes!53898 (and tp!2075209 tp_is_empty!47351))))

(declare-fun setRest!53898 () (Set B!3479))

(declare-fun setElem!53898 () B!3479)

(assert (=> setNonEmpty!53898 (= (dynLambda!29057 f!903 elmt!124) (set.union (set.insert setElem!53898 (as set.empty (Set B!3479))) setRest!53898))))

(assert (= (and tb!262169 condSetEmpty!53898) setIsEmpty!53898))

(assert (= (and tb!262169 (not condSetEmpty!53898)) setNonEmpty!53898))

(declare-fun condSetEmpty!53901 () Bool)

(assert (=> setNonEmpty!53892 (= condSetEmpty!53901 (= setRest!53892 (as set.empty (Set A!777))))))

(declare-fun setRes!53901 () Bool)

(assert (=> setNonEmpty!53892 (= tp!2075192 setRes!53901)))

(declare-fun setIsEmpty!53901 () Bool)

(assert (=> setIsEmpty!53901 setRes!53901))

(declare-fun setNonEmpty!53901 () Bool)

(declare-fun tp!2075212 () Bool)

(assert (=> setNonEmpty!53901 (= setRes!53901 (and tp!2075212 tp_is_empty!47349))))

(declare-fun setElem!53901 () A!777)

(declare-fun setRest!53901 () (Set A!777))

(assert (=> setNonEmpty!53901 (= setRest!53892 (set.union (set.insert setElem!53901 (as set.empty (Set A!777))) setRest!53901))))

(assert (= (and setNonEmpty!53892 condSetEmpty!53901) setIsEmpty!53901))

(assert (= (and setNonEmpty!53892 (not condSetEmpty!53901)) setNonEmpty!53901))

(declare-fun b_lambda!282117 () Bool)

(assert (= b_lambda!282113 (or b!7311625 b_lambda!282117)))

(declare-fun bs!1914502 () Bool)

(declare-fun d!2269977 () Bool)

(assert (= bs!1914502 (and d!2269977 b!7311625)))

(assert (=> bs!1914502 (= (dynLambda!29059 lambda!451594 (h!77465 (t!385273 lRes!24))) (contains!20760 lt!2600592 (h!77465 (t!385273 lRes!24))))))

(declare-fun m!7975718 () Bool)

(assert (=> bs!1914502 m!7975718))

(assert (=> b!7311663 d!2269977))

(push 1)

(assert (not setNonEmpty!53901))

(assert (not setNonEmpty!53898))

(assert (not d!2269959))

(assert (not b_next!134721))

(assert b_and!351235)

(assert (not b!7311664))

(assert (not b!7311702))

(assert (not b!7311683))

(assert (not b_lambda!282109))

(assert (not b!7311703))

(assert (not b!7311681))

(assert (not b_lambda!282117))

(assert (not b!7311652))

(assert (not bs!1914502))

(assert (not b!7311709))

(assert (not d!2269963))

(assert (not b!7311658))

(assert tp_is_empty!47351)

(assert (not b!7311704))

(assert (not b!7311649))

(assert (not d!2269975))

(assert tp_is_empty!47349)

(assert (not d!2269969))

(assert (not bm!665707))

(assert (not d!2269957))

(assert (not d!2269955))

(assert (not d!2269967))

(assert (not b!7311679))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351235)

(assert (not b_next!134721))

(check-sat)

(pop 1)

