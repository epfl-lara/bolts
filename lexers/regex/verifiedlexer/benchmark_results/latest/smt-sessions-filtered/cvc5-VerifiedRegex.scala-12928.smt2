; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712744 () Bool)

(assert start!712744)

(declare-fun b_free!134011 () Bool)

(declare-fun b_next!134801 () Bool)

(assert (=> start!712744 (= b_free!134011 (not b_next!134801))))

(declare-fun tp!2075867 () Bool)

(declare-fun b_and!351403 () Bool)

(assert (=> start!712744 (= tp!2075867 b_and!351403)))

(declare-fun b!7314618 () Bool)

(assert (=> b!7314618 true))

(declare-fun b!7314612 () Bool)

(assert (=> b!7314612 true))

(declare-fun f!883 () Int)

(declare-fun order!29127 () Int)

(declare-fun order!29125 () Int)

(declare-fun lambda!451886 () Int)

(declare-fun dynLambda!29130 (Int Int) Int)

(declare-fun dynLambda!29131 (Int Int) Int)

(assert (=> b!7314612 (< (dynLambda!29130 order!29125 f!883) (dynLambda!29131 order!29127 lambda!451886))))

(assert (=> b!7314612 true))

(declare-fun setIsEmpty!54196 () Bool)

(declare-fun setRes!54196 () Bool)

(assert (=> setIsEmpty!54196 setRes!54196))

(declare-fun setNonEmpty!54196 () Bool)

(declare-fun tp!2075868 () Bool)

(declare-fun tp_is_empty!47509 () Bool)

(assert (=> setNonEmpty!54196 (= setRes!54196 (and tp!2075868 tp_is_empty!47509))))

(declare-datatypes ((A!857 0))(
  ( (A!858 (val!29115 Int)) )
))
(declare-fun s!1437 () (Set A!857))

(declare-fun setElem!54196 () A!857)

(declare-fun setRest!54196 () (Set A!857))

(assert (=> setNonEmpty!54196 (= s!1437 (set.union (set.insert setElem!54196 (as set.empty (Set A!857))) setRest!54196))))

(declare-fun b!7314611 () Bool)

(declare-fun e!4378618 () Bool)

(declare-fun e!4378619 () Bool)

(assert (=> b!7314611 (= e!4378618 e!4378619)))

(declare-fun res!2955688 () Bool)

(assert (=> b!7314611 (=> res!2955688 e!4378619)))

(declare-fun lt!2601595 () A!857)

(declare-datatypes ((List!71190 0))(
  ( (Nil!71066) (Cons!71066 (h!77514 A!857) (t!385409 List!71190)) )
))
(declare-fun contains!20788 (List!71190 A!857) Bool)

(declare-fun toList!11599 ((Set A!857)) List!71190)

(assert (=> b!7314611 (= res!2955688 (not (contains!20788 (toList!11599 s!1437) lt!2601595)))))

(declare-fun getWitness!2284 ((Set A!857) Int) A!857)

(assert (=> b!7314611 (= lt!2601595 (getWitness!2284 s!1437 lambda!451886))))

(declare-fun e!4378622 () Bool)

(assert (=> b!7314612 (= e!4378622 e!4378618)))

(declare-fun res!2955690 () Bool)

(assert (=> b!7314612 (=> res!2955690 e!4378618)))

(declare-fun exists!4529 ((Set A!857) Int) Bool)

(assert (=> b!7314612 (= res!2955690 (not (exists!4529 s!1437 lambda!451886)))))

(declare-datatypes ((B!3559 0))(
  ( (B!3560 (val!29116 Int)) )
))
(declare-datatypes ((List!71191 0))(
  ( (Nil!71067) (Cons!71067 (h!77515 B!3559) (t!385410 List!71191)) )
))
(declare-fun lRes!18 () List!71191)

(declare-fun empty!3147 () A!857)

(declare-fun flatMapPost!107 ((Set A!857) Int B!3559) A!857)

(assert (=> b!7314612 (= (flatMapPost!107 s!1437 f!883 (h!77515 lRes!18)) empty!3147)))

(assert (=> b!7314612 true))

(assert (=> b!7314612 tp_is_empty!47509))

(declare-fun b!7314613 () Bool)

(declare-fun lambda!451885 () Int)

(declare-fun forall!17753 (List!71191 Int) Bool)

(assert (=> b!7314613 (= e!4378619 (forall!17753 lRes!18 lambda!451885))))

(declare-fun lt!2601591 () List!71191)

(declare-fun contains!20789 (List!71191 B!3559) Bool)

(assert (=> b!7314613 (contains!20789 lt!2601591 (h!77515 lRes!18))))

(declare-fun b!7314614 () Bool)

(declare-fun e!4378621 () Bool)

(declare-fun e!4378620 () Bool)

(assert (=> b!7314614 (= e!4378621 e!4378620)))

(declare-fun res!2955689 () Bool)

(assert (=> b!7314614 (=> (not res!2955689) (not e!4378620))))

(declare-fun lt!2601596 () List!71191)

(declare-fun subseq!840 (List!71191 List!71191) Bool)

(assert (=> b!7314614 (= res!2955689 (subseq!840 lRes!18 lt!2601596))))

(declare-fun lt!2601594 () (Set B!3559))

(declare-fun toList!11600 ((Set B!3559)) List!71191)

(assert (=> b!7314614 (= lt!2601596 (toList!11600 lt!2601594))))

(declare-fun flatMap!3039 ((Set A!857) Int) (Set B!3559))

(assert (=> b!7314614 (= lt!2601594 (flatMap!3039 s!1437 f!883))))

(declare-fun b!7314615 () Bool)

(declare-fun e!4378623 () Bool)

(declare-fun tp_is_empty!47511 () Bool)

(declare-fun tp!2075866 () Bool)

(assert (=> b!7314615 (= e!4378623 (and tp_is_empty!47511 tp!2075866))))

(declare-fun b!7314616 () Bool)

(declare-fun res!2955686 () Bool)

(assert (=> b!7314616 (=> (not res!2955686) (not e!4378620))))

(assert (=> b!7314616 (= res!2955686 (is-Cons!71067 lRes!18))))

(declare-fun b!7314617 () Bool)

(declare-fun e!4378617 () Bool)

(assert (=> b!7314617 (= e!4378617 (forall!17753 (t!385410 lRes!18) lambda!451885))))

(declare-fun res!2955685 () Bool)

(assert (=> start!712744 (=> (not res!2955685) (not e!4378621))))

(declare-fun elmt!118 () A!857)

(assert (=> start!712744 (= res!2955685 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!857)))))))

(assert (=> start!712744 e!4378621))

(declare-fun condSetEmpty!54196 () Bool)

(assert (=> start!712744 (= condSetEmpty!54196 (= s!1437 (as set.empty (Set A!857))))))

(assert (=> start!712744 setRes!54196))

(assert (=> start!712744 tp_is_empty!47509))

(assert (=> start!712744 tp!2075867))

(assert (=> start!712744 e!4378623))

(assert (=> b!7314618 (= e!4378620 (not e!4378622))))

(declare-fun res!2955683 () Bool)

(assert (=> b!7314618 (=> res!2955683 e!4378622)))

(assert (=> b!7314618 (= res!2955683 (not (set.member (h!77515 lRes!18) lt!2601594)))))

(declare-datatypes ((Unit!164563 0))(
  ( (Unit!164564) )
))
(declare-fun lt!2601597 () Unit!164563)

(declare-fun subseqContains!47 (List!71191 List!71191 B!3559) Unit!164563)

(assert (=> b!7314618 (= lt!2601597 (subseqContains!47 lRes!18 lt!2601596 (h!77515 lRes!18)))))

(assert (=> b!7314618 e!4378617))

(declare-fun res!2955684 () Bool)

(assert (=> b!7314618 (=> (not res!2955684) (not e!4378617))))

(assert (=> b!7314618 (= res!2955684 (forall!17753 (t!385410 lRes!18) lambda!451885))))

(declare-fun dynLambda!29132 (Int A!857) (Set B!3559))

(assert (=> b!7314618 (= lt!2601591 (toList!11600 (dynLambda!29132 f!883 elmt!118)))))

(declare-fun lt!2601593 () Unit!164563)

(declare-fun lemmaFlatMapOnSingletonSetList1!25 ((Set A!857) A!857 Int List!71191) Unit!164563)

(assert (=> b!7314618 (= lt!2601593 (lemmaFlatMapOnSingletonSetList1!25 s!1437 elmt!118 f!883 (t!385410 lRes!18)))))

(declare-fun lt!2601592 () Unit!164563)

(declare-fun subseqTail!83 (List!71191 List!71191) Unit!164563)

(assert (=> b!7314618 (= lt!2601592 (subseqTail!83 lRes!18 lt!2601596))))

(declare-fun b!7314619 () Bool)

(declare-fun res!2955687 () Bool)

(assert (=> b!7314619 (=> res!2955687 e!4378619)))

(assert (=> b!7314619 (= res!2955687 (not (= lt!2601595 elmt!118)))))

(assert (= (and start!712744 res!2955685) b!7314614))

(assert (= (and b!7314614 res!2955689) b!7314616))

(assert (= (and b!7314616 res!2955686) b!7314618))

(assert (= (and b!7314618 res!2955684) b!7314617))

(assert (= (and b!7314618 (not res!2955683)) b!7314612))

(assert (= (and b!7314612 (not res!2955690)) b!7314611))

(assert (= (and b!7314611 (not res!2955688)) b!7314619))

(assert (= (and b!7314619 (not res!2955687)) b!7314613))

(assert (= (and start!712744 condSetEmpty!54196) setIsEmpty!54196))

(assert (= (and start!712744 (not condSetEmpty!54196)) setNonEmpty!54196))

(assert (= (and start!712744 (is-Cons!71067 lRes!18)) b!7314615))

(declare-fun b_lambda!282449 () Bool)

(assert (=> (not b_lambda!282449) (not b!7314618)))

(declare-fun t!385408 () Bool)

(declare-fun tb!262237 () Bool)

(assert (=> (and start!712744 (= f!883 f!883) t!385408) tb!262237))

(assert (=> b!7314618 t!385408))

(declare-fun result!352964 () Bool)

(declare-fun b_and!351405 () Bool)

(assert (= b_and!351403 (and (=> t!385408 result!352964) b_and!351405)))

(declare-fun m!7978676 () Bool)

(assert (=> b!7314618 m!7978676))

(declare-fun m!7978678 () Bool)

(assert (=> b!7314618 m!7978678))

(declare-fun m!7978680 () Bool)

(assert (=> b!7314618 m!7978680))

(declare-fun m!7978682 () Bool)

(assert (=> b!7314618 m!7978682))

(assert (=> b!7314618 m!7978678))

(declare-fun m!7978684 () Bool)

(assert (=> b!7314618 m!7978684))

(declare-fun m!7978686 () Bool)

(assert (=> b!7314618 m!7978686))

(declare-fun m!7978688 () Bool)

(assert (=> b!7314618 m!7978688))

(declare-fun m!7978690 () Bool)

(assert (=> b!7314613 m!7978690))

(declare-fun m!7978692 () Bool)

(assert (=> b!7314613 m!7978692))

(assert (=> b!7314617 m!7978676))

(declare-fun m!7978694 () Bool)

(assert (=> b!7314611 m!7978694))

(assert (=> b!7314611 m!7978694))

(declare-fun m!7978696 () Bool)

(assert (=> b!7314611 m!7978696))

(declare-fun m!7978698 () Bool)

(assert (=> b!7314611 m!7978698))

(declare-fun m!7978700 () Bool)

(assert (=> start!712744 m!7978700))

(declare-fun m!7978702 () Bool)

(assert (=> b!7314612 m!7978702))

(declare-fun m!7978704 () Bool)

(assert (=> b!7314612 m!7978704))

(declare-fun m!7978706 () Bool)

(assert (=> b!7314614 m!7978706))

(declare-fun m!7978708 () Bool)

(assert (=> b!7314614 m!7978708))

(declare-fun m!7978710 () Bool)

(assert (=> b!7314614 m!7978710))

(push 1)

(assert (not tb!262237))

(assert (not b!7314611))

(assert (not b!7314618))

(assert (not b_next!134801))

(assert (not b!7314612))

(assert (not b!7314613))

(assert (not b_lambda!282449))

(assert (not b!7314614))

(assert tp_is_empty!47511)

(assert (not b!7314615))

(assert b_and!351405)

(assert (not setNonEmpty!54196))

(assert tp_is_empty!47509)

(assert (not b!7314617))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351405)

(assert (not b_next!134801))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282453 () Bool)

(assert (= b_lambda!282449 (or (and start!712744 b_free!134011) b_lambda!282453)))

(push 1)

(assert (not tb!262237))

(assert (not b!7314611))

(assert (not b!7314618))

(assert (not b_lambda!282453))

(assert (not b_next!134801))

(assert (not b!7314612))

(assert (not b!7314613))

(assert (not b!7314614))

(assert tp_is_empty!47511)

(assert (not b!7314615))

(assert b_and!351405)

(assert (not setNonEmpty!54196))

(assert tp_is_empty!47509)

(assert (not b!7314617))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351405)

(assert (not b_next!134801))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2271105 () Bool)

(declare-fun res!2955719 () Bool)

(declare-fun e!4378649 () Bool)

(assert (=> d!2271105 (=> res!2955719 e!4378649)))

(assert (=> d!2271105 (= res!2955719 (is-Nil!71067 (t!385410 lRes!18)))))

(assert (=> d!2271105 (= (forall!17753 (t!385410 lRes!18) lambda!451885) e!4378649)))

(declare-fun b!7314663 () Bool)

(declare-fun e!4378650 () Bool)

(assert (=> b!7314663 (= e!4378649 e!4378650)))

(declare-fun res!2955720 () Bool)

(assert (=> b!7314663 (=> (not res!2955720) (not e!4378650))))

(declare-fun dynLambda!29136 (Int B!3559) Bool)

(assert (=> b!7314663 (= res!2955720 (dynLambda!29136 lambda!451885 (h!77515 (t!385410 lRes!18))))))

(declare-fun b!7314664 () Bool)

(assert (=> b!7314664 (= e!4378650 (forall!17753 (t!385410 (t!385410 lRes!18)) lambda!451885))))

(assert (= (and d!2271105 (not res!2955719)) b!7314663))

(assert (= (and b!7314663 res!2955720) b!7314664))

(declare-fun b_lambda!282455 () Bool)

(assert (=> (not b_lambda!282455) (not b!7314663)))

(declare-fun m!7978748 () Bool)

(assert (=> b!7314663 m!7978748))

(declare-fun m!7978750 () Bool)

(assert (=> b!7314664 m!7978750))

(assert (=> b!7314618 d!2271105))

(declare-fun d!2271107 () Bool)

(assert (=> d!2271107 (contains!20789 lt!2601596 (h!77515 lRes!18))))

(declare-fun lt!2601621 () Unit!164563)

(declare-fun choose!56707 (List!71191 List!71191 B!3559) Unit!164563)

(assert (=> d!2271107 (= lt!2601621 (choose!56707 lRes!18 lt!2601596 (h!77515 lRes!18)))))

(declare-fun e!4378653 () Bool)

(assert (=> d!2271107 e!4378653))

(declare-fun res!2955723 () Bool)

(assert (=> d!2271107 (=> (not res!2955723) (not e!4378653))))

(assert (=> d!2271107 (= res!2955723 (subseq!840 lRes!18 lt!2601596))))

(assert (=> d!2271107 (= (subseqContains!47 lRes!18 lt!2601596 (h!77515 lRes!18)) lt!2601621)))

(declare-fun b!7314667 () Bool)

(assert (=> b!7314667 (= e!4378653 (contains!20789 lRes!18 (h!77515 lRes!18)))))

(assert (= (and d!2271107 res!2955723) b!7314667))

(declare-fun m!7978752 () Bool)

(assert (=> d!2271107 m!7978752))

(declare-fun m!7978754 () Bool)

(assert (=> d!2271107 m!7978754))

(assert (=> d!2271107 m!7978706))

(declare-fun m!7978756 () Bool)

(assert (=> b!7314667 m!7978756))

(assert (=> b!7314618 d!2271107))

(declare-fun bs!1914689 () Bool)

(declare-fun d!2271109 () Bool)

(assert (= bs!1914689 (and d!2271109 b!7314618)))

(declare-fun lt!2601627 () List!71191)

(declare-fun lambda!451901 () Int)

(assert (=> bs!1914689 (= (= lt!2601627 lt!2601591) (= lambda!451901 lambda!451885))))

(assert (=> d!2271109 true))

(assert (=> d!2271109 (forall!17753 (t!385410 lRes!18) lambda!451901)))

(assert (=> d!2271109 (= lt!2601627 (toList!11600 (dynLambda!29132 f!883 elmt!118)))))

(declare-fun lt!2601626 () Unit!164563)

(declare-fun choose!56708 ((Set A!857) A!857 Int List!71191) Unit!164563)

(assert (=> d!2271109 (= lt!2601626 (choose!56708 s!1437 elmt!118 f!883 (t!385410 lRes!18)))))

(assert (=> d!2271109 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!857))))))

(assert (=> d!2271109 (= (lemmaFlatMapOnSingletonSetList1!25 s!1437 elmt!118 f!883 (t!385410 lRes!18)) lt!2601626)))

(declare-fun b_lambda!282457 () Bool)

(assert (=> (not b_lambda!282457) (not d!2271109)))

(assert (=> d!2271109 t!385408))

(declare-fun b_and!351411 () Bool)

(assert (= b_and!351405 (and (=> t!385408 result!352964) b_and!351411)))

(assert (=> d!2271109 m!7978700))

(declare-fun m!7978758 () Bool)

(assert (=> d!2271109 m!7978758))

(assert (=> d!2271109 m!7978678))

(declare-fun m!7978760 () Bool)

(assert (=> d!2271109 m!7978760))

(assert (=> d!2271109 m!7978678))

(assert (=> d!2271109 m!7978684))

(assert (=> b!7314618 d!2271109))

(declare-fun d!2271111 () Bool)

(declare-fun e!4378656 () Bool)

(assert (=> d!2271111 e!4378656))

(declare-fun res!2955726 () Bool)

(assert (=> d!2271111 (=> (not res!2955726) (not e!4378656))))

(declare-fun lt!2601630 () List!71191)

(declare-fun noDuplicate!3054 (List!71191) Bool)

(assert (=> d!2271111 (= res!2955726 (noDuplicate!3054 lt!2601630))))

(declare-fun choose!56709 ((Set B!3559)) List!71191)

(assert (=> d!2271111 (= lt!2601630 (choose!56709 (dynLambda!29132 f!883 elmt!118)))))

(assert (=> d!2271111 (= (toList!11600 (dynLambda!29132 f!883 elmt!118)) lt!2601630)))

(declare-fun b!7314670 () Bool)

(declare-fun content!14873 (List!71191) (Set B!3559))

(assert (=> b!7314670 (= e!4378656 (= (content!14873 lt!2601630) (dynLambda!29132 f!883 elmt!118)))))

(assert (= (and d!2271111 res!2955726) b!7314670))

(declare-fun m!7978762 () Bool)

(assert (=> d!2271111 m!7978762))

(assert (=> d!2271111 m!7978678))

(declare-fun m!7978764 () Bool)

(assert (=> d!2271111 m!7978764))

(declare-fun m!7978766 () Bool)

(assert (=> b!7314670 m!7978766))

(assert (=> b!7314618 d!2271111))

(declare-fun b!7314685 () Bool)

(declare-fun c!1357852 () Bool)

(declare-fun isEmpty!40858 (List!71191) Bool)

(assert (=> b!7314685 (= c!1357852 (not (isEmpty!40858 (t!385410 lRes!18))))))

(declare-fun e!4378667 () Unit!164563)

(declare-fun e!4378665 () Unit!164563)

(assert (=> b!7314685 (= e!4378667 e!4378665)))

(declare-fun b!7314686 () Bool)

(declare-fun Unit!164567 () Unit!164563)

(assert (=> b!7314686 (= e!4378665 Unit!164567)))

(declare-fun b!7314687 () Bool)

(declare-fun e!4378666 () Bool)

(assert (=> b!7314687 (= e!4378666 (subseq!840 lRes!18 lt!2601596))))

(declare-fun bm!665780 () Bool)

(declare-fun c!1357851 () Bool)

(declare-fun call!665785 () Unit!164563)

(assert (=> bm!665780 (= call!665785 (subseqTail!83 (ite c!1357851 lRes!18 (t!385410 lRes!18)) (t!385410 lt!2601596)))))

(declare-fun b!7314688 () Bool)

(assert (=> b!7314688 (= e!4378667 call!665785)))

(declare-fun d!2271113 () Bool)

(declare-fun tail!14637 (List!71191) List!71191)

(assert (=> d!2271113 (subseq!840 (tail!14637 lRes!18) lt!2601596)))

(declare-fun lt!2601633 () Unit!164563)

(declare-fun e!4378668 () Unit!164563)

(assert (=> d!2271113 (= lt!2601633 e!4378668)))

(declare-fun c!1357850 () Bool)

(assert (=> d!2271113 (= c!1357850 (and (is-Cons!71067 lRes!18) (is-Cons!71067 lt!2601596)))))

(assert (=> d!2271113 e!4378666))

(declare-fun res!2955729 () Bool)

(assert (=> d!2271113 (=> (not res!2955729) (not e!4378666))))

(assert (=> d!2271113 (= res!2955729 (not (isEmpty!40858 lRes!18)))))

(assert (=> d!2271113 (= (subseqTail!83 lRes!18 lt!2601596) lt!2601633)))

(declare-fun b!7314689 () Bool)

(assert (=> b!7314689 (= e!4378665 call!665785)))

(declare-fun b!7314690 () Bool)

(assert (=> b!7314690 (= e!4378668 e!4378667)))

(assert (=> b!7314690 (= c!1357851 (subseq!840 lRes!18 (t!385410 lt!2601596)))))

(declare-fun b!7314691 () Bool)

(declare-fun Unit!164568 () Unit!164563)

(assert (=> b!7314691 (= e!4378668 Unit!164568)))

(assert (= (and d!2271113 res!2955729) b!7314687))

(assert (= (and d!2271113 c!1357850) b!7314690))

(assert (= (and d!2271113 (not c!1357850)) b!7314691))

(assert (= (and b!7314690 c!1357851) b!7314688))

(assert (= (and b!7314690 (not c!1357851)) b!7314685))

(assert (= (and b!7314685 c!1357852) b!7314689))

(assert (= (and b!7314685 (not c!1357852)) b!7314686))

(assert (= (or b!7314688 b!7314689) bm!665780))

(declare-fun m!7978768 () Bool)

(assert (=> d!2271113 m!7978768))

(assert (=> d!2271113 m!7978768))

(declare-fun m!7978770 () Bool)

(assert (=> d!2271113 m!7978770))

(declare-fun m!7978772 () Bool)

(assert (=> d!2271113 m!7978772))

(assert (=> b!7314687 m!7978706))

(declare-fun m!7978774 () Bool)

(assert (=> b!7314690 m!7978774))

(declare-fun m!7978776 () Bool)

(assert (=> b!7314685 m!7978776))

(declare-fun m!7978778 () Bool)

(assert (=> bm!665780 m!7978778))

(assert (=> b!7314618 d!2271113))

(declare-fun d!2271115 () Bool)

(declare-fun lt!2601636 () Bool)

(declare-fun exists!4531 (List!71190 Int) Bool)

(assert (=> d!2271115 (= lt!2601636 (exists!4531 (toList!11599 s!1437) lambda!451886))))

(declare-fun choose!56710 ((Set A!857) Int) Bool)

(assert (=> d!2271115 (= lt!2601636 (choose!56710 s!1437 lambda!451886))))

(assert (=> d!2271115 (= (exists!4529 s!1437 lambda!451886) lt!2601636)))

(declare-fun bs!1914690 () Bool)

(assert (= bs!1914690 d!2271115))

(assert (=> bs!1914690 m!7978694))

(assert (=> bs!1914690 m!7978694))

(declare-fun m!7978780 () Bool)

(assert (=> bs!1914690 m!7978780))

(declare-fun m!7978782 () Bool)

(assert (=> bs!1914690 m!7978782))

(assert (=> b!7314612 d!2271115))

(declare-fun bs!1914691 () Bool)

(declare-fun d!2271117 () Bool)

(assert (= bs!1914691 (and d!2271117 b!7314612)))

(declare-fun lambda!451904 () Int)

(assert (=> bs!1914691 (= lambda!451904 lambda!451886)))

(assert (=> d!2271117 true))

(assert (=> d!2271117 true))

(assert (=> d!2271117 (< (dynLambda!29130 order!29125 f!883) (dynLambda!29131 order!29127 lambda!451904))))

(assert (=> d!2271117 (= (set.member (h!77515 lRes!18) (flatMap!3039 s!1437 f!883)) (exists!4529 s!1437 lambda!451904))))

(declare-fun lt!2601639 () A!857)

(declare-fun choose!56711 ((Set A!857) Int B!3559) A!857)

(assert (=> d!2271117 (= lt!2601639 (choose!56711 s!1437 f!883 (h!77515 lRes!18)))))

(assert (=> d!2271117 (= (flatMapPost!107 s!1437 f!883 (h!77515 lRes!18)) lt!2601639)))

(declare-fun bs!1914692 () Bool)

(assert (= bs!1914692 d!2271117))

(assert (=> bs!1914692 m!7978710))

(declare-fun m!7978784 () Bool)

(assert (=> bs!1914692 m!7978784))

(declare-fun m!7978786 () Bool)

(assert (=> bs!1914692 m!7978786))

(declare-fun m!7978788 () Bool)

(assert (=> bs!1914692 m!7978788))

(assert (=> b!7314612 d!2271117))

(assert (=> b!7314617 d!2271105))

(declare-fun d!2271119 () Bool)

(declare-fun lt!2601642 () Bool)

(declare-fun content!14874 (List!71190) (Set A!857))

(assert (=> d!2271119 (= lt!2601642 (set.member lt!2601595 (content!14874 (toList!11599 s!1437))))))

(declare-fun e!4378673 () Bool)

(assert (=> d!2271119 (= lt!2601642 e!4378673)))

(declare-fun res!2955735 () Bool)

(assert (=> d!2271119 (=> (not res!2955735) (not e!4378673))))

(assert (=> d!2271119 (= res!2955735 (is-Cons!71066 (toList!11599 s!1437)))))

(assert (=> d!2271119 (= (contains!20788 (toList!11599 s!1437) lt!2601595) lt!2601642)))

(declare-fun b!7314699 () Bool)

(declare-fun e!4378674 () Bool)

(assert (=> b!7314699 (= e!4378673 e!4378674)))

(declare-fun res!2955734 () Bool)

(assert (=> b!7314699 (=> res!2955734 e!4378674)))

(assert (=> b!7314699 (= res!2955734 (= (h!77514 (toList!11599 s!1437)) lt!2601595))))

(declare-fun b!7314700 () Bool)

(assert (=> b!7314700 (= e!4378674 (contains!20788 (t!385409 (toList!11599 s!1437)) lt!2601595))))

(assert (= (and d!2271119 res!2955735) b!7314699))

(assert (= (and b!7314699 (not res!2955734)) b!7314700))

(assert (=> d!2271119 m!7978694))

(declare-fun m!7978790 () Bool)

(assert (=> d!2271119 m!7978790))

(declare-fun m!7978792 () Bool)

(assert (=> d!2271119 m!7978792))

(declare-fun m!7978794 () Bool)

(assert (=> b!7314700 m!7978794))

(assert (=> b!7314611 d!2271119))

(declare-fun d!2271121 () Bool)

(declare-fun e!4378677 () Bool)

(assert (=> d!2271121 e!4378677))

(declare-fun res!2955738 () Bool)

(assert (=> d!2271121 (=> (not res!2955738) (not e!4378677))))

(declare-fun lt!2601645 () List!71190)

(declare-fun noDuplicate!3055 (List!71190) Bool)

(assert (=> d!2271121 (= res!2955738 (noDuplicate!3055 lt!2601645))))

(declare-fun choose!56712 ((Set A!857)) List!71190)

(assert (=> d!2271121 (= lt!2601645 (choose!56712 s!1437))))

(assert (=> d!2271121 (= (toList!11599 s!1437) lt!2601645)))

(declare-fun b!7314703 () Bool)

(assert (=> b!7314703 (= e!4378677 (= (content!14874 lt!2601645) s!1437))))

(assert (= (and d!2271121 res!2955738) b!7314703))

(declare-fun m!7978796 () Bool)

(assert (=> d!2271121 m!7978796))

(declare-fun m!7978798 () Bool)

(assert (=> d!2271121 m!7978798))

(declare-fun m!7978800 () Bool)

(assert (=> b!7314703 m!7978800))

(assert (=> b!7314611 d!2271121))

(declare-fun d!2271123 () Bool)

(declare-fun e!4378680 () Bool)

(assert (=> d!2271123 e!4378680))

(declare-fun res!2955741 () Bool)

(assert (=> d!2271123 (=> (not res!2955741) (not e!4378680))))

(declare-fun lt!2601648 () A!857)

(declare-fun dynLambda!29137 (Int A!857) Bool)

(assert (=> d!2271123 (= res!2955741 (dynLambda!29137 lambda!451886 lt!2601648))))

(declare-fun getWitness!2286 (List!71190 Int) A!857)

(assert (=> d!2271123 (= lt!2601648 (getWitness!2286 (toList!11599 s!1437) lambda!451886))))

(assert (=> d!2271123 (exists!4529 s!1437 lambda!451886)))

(assert (=> d!2271123 (= (getWitness!2284 s!1437 lambda!451886) lt!2601648)))

(declare-fun b!7314706 () Bool)

(assert (=> b!7314706 (= e!4378680 (set.member lt!2601648 s!1437))))

(assert (= (and d!2271123 res!2955741) b!7314706))

(declare-fun b_lambda!282459 () Bool)

(assert (=> (not b_lambda!282459) (not d!2271123)))

(declare-fun m!7978802 () Bool)

(assert (=> d!2271123 m!7978802))

(assert (=> d!2271123 m!7978694))

(assert (=> d!2271123 m!7978694))

(declare-fun m!7978804 () Bool)

(assert (=> d!2271123 m!7978804))

(assert (=> d!2271123 m!7978702))

(declare-fun m!7978806 () Bool)

(assert (=> b!7314706 m!7978806))

(assert (=> b!7314611 d!2271123))

(declare-fun d!2271125 () Bool)

(declare-fun res!2955753 () Bool)

(declare-fun e!4378690 () Bool)

(assert (=> d!2271125 (=> res!2955753 e!4378690)))

(assert (=> d!2271125 (= res!2955753 (is-Nil!71067 lRes!18))))

(assert (=> d!2271125 (= (subseq!840 lRes!18 lt!2601596) e!4378690)))

(declare-fun b!7314715 () Bool)

(declare-fun e!4378689 () Bool)

(assert (=> b!7314715 (= e!4378690 e!4378689)))

(declare-fun res!2955751 () Bool)

(assert (=> b!7314715 (=> (not res!2955751) (not e!4378689))))

(assert (=> b!7314715 (= res!2955751 (is-Cons!71067 lt!2601596))))

(declare-fun b!7314717 () Bool)

(declare-fun e!4378691 () Bool)

(assert (=> b!7314717 (= e!4378691 (subseq!840 (t!385410 lRes!18) (t!385410 lt!2601596)))))

(declare-fun b!7314718 () Bool)

(declare-fun e!4378692 () Bool)

(assert (=> b!7314718 (= e!4378692 (subseq!840 lRes!18 (t!385410 lt!2601596)))))

(declare-fun b!7314716 () Bool)

(assert (=> b!7314716 (= e!4378689 e!4378692)))

(declare-fun res!2955752 () Bool)

(assert (=> b!7314716 (=> res!2955752 e!4378692)))

(assert (=> b!7314716 (= res!2955752 e!4378691)))

(declare-fun res!2955750 () Bool)

(assert (=> b!7314716 (=> (not res!2955750) (not e!4378691))))

(assert (=> b!7314716 (= res!2955750 (= (h!77515 lRes!18) (h!77515 lt!2601596)))))

(assert (= (and d!2271125 (not res!2955753)) b!7314715))

(assert (= (and b!7314715 res!2955751) b!7314716))

(assert (= (and b!7314716 res!2955750) b!7314717))

(assert (= (and b!7314716 (not res!2955752)) b!7314718))

(declare-fun m!7978808 () Bool)

(assert (=> b!7314717 m!7978808))

(assert (=> b!7314718 m!7978774))

(assert (=> b!7314614 d!2271125))

(declare-fun d!2271127 () Bool)

(declare-fun e!4378693 () Bool)

(assert (=> d!2271127 e!4378693))

(declare-fun res!2955754 () Bool)

(assert (=> d!2271127 (=> (not res!2955754) (not e!4378693))))

(declare-fun lt!2601649 () List!71191)

(assert (=> d!2271127 (= res!2955754 (noDuplicate!3054 lt!2601649))))

(assert (=> d!2271127 (= lt!2601649 (choose!56709 lt!2601594))))

(assert (=> d!2271127 (= (toList!11600 lt!2601594) lt!2601649)))

(declare-fun b!7314719 () Bool)

(assert (=> b!7314719 (= e!4378693 (= (content!14873 lt!2601649) lt!2601594))))

(assert (= (and d!2271127 res!2955754) b!7314719))

(declare-fun m!7978810 () Bool)

(assert (=> d!2271127 m!7978810))

(declare-fun m!7978812 () Bool)

(assert (=> d!2271127 m!7978812))

(declare-fun m!7978814 () Bool)

(assert (=> b!7314719 m!7978814))

(assert (=> b!7314614 d!2271127))

(declare-fun d!2271129 () Bool)

(declare-fun choose!56713 ((Set A!857) Int) (Set B!3559))

(assert (=> d!2271129 (= (flatMap!3039 s!1437 f!883) (choose!56713 s!1437 f!883))))

(declare-fun bs!1914693 () Bool)

(assert (= bs!1914693 d!2271129))

(declare-fun m!7978816 () Bool)

(assert (=> bs!1914693 m!7978816))

(assert (=> b!7314614 d!2271129))

(declare-fun d!2271131 () Bool)

(declare-fun res!2955755 () Bool)

(declare-fun e!4378694 () Bool)

(assert (=> d!2271131 (=> res!2955755 e!4378694)))

(assert (=> d!2271131 (= res!2955755 (is-Nil!71067 lRes!18))))

(assert (=> d!2271131 (= (forall!17753 lRes!18 lambda!451885) e!4378694)))

(declare-fun b!7314720 () Bool)

(declare-fun e!4378695 () Bool)

(assert (=> b!7314720 (= e!4378694 e!4378695)))

(declare-fun res!2955756 () Bool)

(assert (=> b!7314720 (=> (not res!2955756) (not e!4378695))))

(assert (=> b!7314720 (= res!2955756 (dynLambda!29136 lambda!451885 (h!77515 lRes!18)))))

(declare-fun b!7314721 () Bool)

(assert (=> b!7314721 (= e!4378695 (forall!17753 (t!385410 lRes!18) lambda!451885))))

(assert (= (and d!2271131 (not res!2955755)) b!7314720))

(assert (= (and b!7314720 res!2955756) b!7314721))

(declare-fun b_lambda!282463 () Bool)

(assert (=> (not b_lambda!282463) (not b!7314720)))

(declare-fun m!7978818 () Bool)

(assert (=> b!7314720 m!7978818))

(assert (=> b!7314721 m!7978676))

(assert (=> b!7314613 d!2271131))

(declare-fun d!2271133 () Bool)

(declare-fun lt!2601652 () Bool)

(assert (=> d!2271133 (= lt!2601652 (set.member (h!77515 lRes!18) (content!14873 lt!2601591)))))

(declare-fun e!4378700 () Bool)

(assert (=> d!2271133 (= lt!2601652 e!4378700)))

(declare-fun res!2955762 () Bool)

(assert (=> d!2271133 (=> (not res!2955762) (not e!4378700))))

(assert (=> d!2271133 (= res!2955762 (is-Cons!71067 lt!2601591))))

(assert (=> d!2271133 (= (contains!20789 lt!2601591 (h!77515 lRes!18)) lt!2601652)))

(declare-fun b!7314726 () Bool)

(declare-fun e!4378701 () Bool)

(assert (=> b!7314726 (= e!4378700 e!4378701)))

(declare-fun res!2955761 () Bool)

(assert (=> b!7314726 (=> res!2955761 e!4378701)))

(assert (=> b!7314726 (= res!2955761 (= (h!77515 lt!2601591) (h!77515 lRes!18)))))

(declare-fun b!7314727 () Bool)

(assert (=> b!7314727 (= e!4378701 (contains!20789 (t!385410 lt!2601591) (h!77515 lRes!18)))))

(assert (= (and d!2271133 res!2955762) b!7314726))

(assert (= (and b!7314726 (not res!2955761)) b!7314727))

(declare-fun m!7978820 () Bool)

(assert (=> d!2271133 m!7978820))

(declare-fun m!7978822 () Bool)

(assert (=> d!2271133 m!7978822))

(declare-fun m!7978824 () Bool)

(assert (=> b!7314727 m!7978824))

(assert (=> b!7314613 d!2271133))

(declare-fun condSetEmpty!54202 () Bool)

(assert (=> setNonEmpty!54196 (= condSetEmpty!54202 (= setRest!54196 (as set.empty (Set A!857))))))

(declare-fun setRes!54202 () Bool)

(assert (=> setNonEmpty!54196 (= tp!2075868 setRes!54202)))

(declare-fun setIsEmpty!54202 () Bool)

(assert (=> setIsEmpty!54202 setRes!54202))

(declare-fun setNonEmpty!54202 () Bool)

(declare-fun tp!2075880 () Bool)

(assert (=> setNonEmpty!54202 (= setRes!54202 (and tp!2075880 tp_is_empty!47509))))

(declare-fun setElem!54202 () A!857)

(declare-fun setRest!54202 () (Set A!857))

(assert (=> setNonEmpty!54202 (= setRest!54196 (set.union (set.insert setElem!54202 (as set.empty (Set A!857))) setRest!54202))))

(assert (= (and setNonEmpty!54196 condSetEmpty!54202) setIsEmpty!54202))

(assert (= (and setNonEmpty!54196 (not condSetEmpty!54202)) setNonEmpty!54202))

(declare-fun b!7314734 () Bool)

(declare-fun e!4378704 () Bool)

(declare-fun tp!2075883 () Bool)

(assert (=> b!7314734 (= e!4378704 (and tp_is_empty!47511 tp!2075883))))

(assert (=> b!7314615 (= tp!2075866 e!4378704)))

(assert (= (and b!7314615 (is-Cons!71067 (t!385410 lRes!18))) b!7314734))

(declare-fun condSetEmpty!54205 () Bool)

(assert (=> tb!262237 (= condSetEmpty!54205 (= (dynLambda!29132 f!883 elmt!118) (as set.empty (Set B!3559))))))

(declare-fun setRes!54205 () Bool)

(assert (=> tb!262237 (= result!352964 setRes!54205)))

(declare-fun setIsEmpty!54205 () Bool)

(assert (=> setIsEmpty!54205 setRes!54205))

(declare-fun setNonEmpty!54205 () Bool)

(declare-fun tp!2075886 () Bool)

(assert (=> setNonEmpty!54205 (= setRes!54205 (and tp!2075886 tp_is_empty!47511))))

(declare-fun setElem!54205 () B!3559)

(declare-fun setRest!54205 () (Set B!3559))

(assert (=> setNonEmpty!54205 (= (dynLambda!29132 f!883 elmt!118) (set.union (set.insert setElem!54205 (as set.empty (Set B!3559))) setRest!54205))))

(assert (= (and tb!262237 condSetEmpty!54205) setIsEmpty!54205))

(assert (= (and tb!262237 (not condSetEmpty!54205)) setNonEmpty!54205))

(declare-fun b_lambda!282465 () Bool)

(assert (= b_lambda!282459 (or b!7314612 b_lambda!282465)))

(declare-fun bs!1914694 () Bool)

(declare-fun d!2271135 () Bool)

(assert (= bs!1914694 (and d!2271135 b!7314612)))

(assert (=> bs!1914694 (= (dynLambda!29137 lambda!451886 lt!2601648) (set.member (h!77515 lRes!18) (dynLambda!29132 f!883 lt!2601648)))))

(declare-fun b_lambda!282473 () Bool)

(assert (=> (not b_lambda!282473) (not bs!1914694)))

(declare-fun t!385417 () Bool)

(declare-fun tb!262241 () Bool)

(assert (=> (and start!712744 (= f!883 f!883) t!385417) tb!262241))

(assert (=> bs!1914694 t!385417))

(declare-fun result!352974 () Bool)

(declare-fun b_and!351413 () Bool)

(assert (= b_and!351411 (and (=> t!385417 result!352974) b_and!351413)))

(declare-fun m!7978826 () Bool)

(assert (=> bs!1914694 m!7978826))

(declare-fun m!7978828 () Bool)

(assert (=> bs!1914694 m!7978828))

(assert (=> d!2271123 d!2271135))

(declare-fun b_lambda!282467 () Bool)

(assert (= b_lambda!282457 (or (and start!712744 b_free!134011) b_lambda!282467)))

(declare-fun b_lambda!282469 () Bool)

(assert (= b_lambda!282455 (or b!7314618 b_lambda!282469)))

(declare-fun bs!1914695 () Bool)

(declare-fun d!2271137 () Bool)

(assert (= bs!1914695 (and d!2271137 b!7314618)))

(assert (=> bs!1914695 (= (dynLambda!29136 lambda!451885 (h!77515 (t!385410 lRes!18))) (contains!20789 lt!2601591 (h!77515 (t!385410 lRes!18))))))

(declare-fun m!7978830 () Bool)

(assert (=> bs!1914695 m!7978830))

(assert (=> b!7314663 d!2271137))

(declare-fun b_lambda!282471 () Bool)

(assert (= b_lambda!282463 (or b!7314618 b_lambda!282471)))

(declare-fun bs!1914696 () Bool)

(declare-fun d!2271139 () Bool)

(assert (= bs!1914696 (and d!2271139 b!7314618)))

(assert (=> bs!1914696 (= (dynLambda!29136 lambda!451885 (h!77515 lRes!18)) (contains!20789 lt!2601591 (h!77515 lRes!18)))))

(assert (=> bs!1914696 m!7978692))

(assert (=> b!7314720 d!2271139))

(push 1)

(assert (not d!2271117))

(assert (not d!2271119))

(assert (not d!2271113))

(assert (not b_lambda!282453))

(assert (not b!7314700))

(assert (not b_lambda!282469))

(assert (not setNonEmpty!54202))

(assert tp_is_empty!47509)

(assert (not d!2271133))

(assert tp_is_empty!47511)

(assert (not d!2271121))

(assert (not b!7314718))

(assert (not d!2271127))

(assert (not b!7314721))

(assert (not b!7314670))

(assert (not bs!1914696))

(assert (not b!7314727))

(assert (not d!2271107))

(assert (not b_next!134801))

(assert (not b!7314719))

(assert (not d!2271129))

(assert (not b!7314717))

(assert (not bm!665780))

(assert (not b!7314690))

(assert (not bs!1914695))

(assert (not b_lambda!282471))

(assert (not d!2271109))

(assert (not tb!262241))

(assert (not b!7314703))

(assert (not setNonEmpty!54205))

(assert (not b_lambda!282467))

(assert b_and!351413)

(assert (not b_lambda!282473))

(assert (not b!7314664))

(assert (not d!2271115))

(assert (not b!7314685))

(assert (not b!7314667))

(assert (not b!7314687))

(assert (not b!7314734))

(assert (not d!2271111))

(assert (not d!2271123))

(assert (not b_lambda!282465))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351413)

(assert (not b_next!134801))

(check-sat)

(pop 1)

