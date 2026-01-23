; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!712510 () Bool)

(assert start!712510)

(declare-fun b_free!133979 () Bool)

(declare-fun b_next!134769 () Bool)

(assert (=> start!712510 (= b_free!133979 (not b_next!134769))))

(declare-fun tp!2075616 () Bool)

(declare-fun b_and!351337 () Bool)

(assert (=> start!712510 (= tp!2075616 b_and!351337)))

(declare-fun b!7313593 () Bool)

(assert (=> b!7313593 true))

(declare-fun b!7313589 () Bool)

(assert (=> b!7313589 true))

(declare-fun lambda!451784 () Int)

(declare-fun f!883 () Int)

(declare-fun order!29101 () Int)

(declare-fun order!29103 () Int)

(declare-fun dynLambda!29103 (Int Int) Int)

(declare-fun dynLambda!29104 (Int Int) Int)

(assert (=> b!7313589 (< (dynLambda!29103 order!29101 f!883) (dynLambda!29104 order!29103 lambda!451784))))

(assert (=> b!7313589 true))

(declare-fun e!4377877 () Bool)

(declare-fun e!4377876 () Bool)

(assert (=> b!7313589 (= e!4377877 e!4377876)))

(declare-fun res!2955071 () Bool)

(assert (=> b!7313589 (=> res!2955071 e!4377876)))

(declare-datatypes ((A!825 0))(
  ( (A!826 (val!29083 Int)) )
))
(declare-fun s!1437 () (Set A!825))

(declare-fun exists!4519 ((Set A!825) Int) Bool)

(assert (=> b!7313589 (= res!2955071 (not (exists!4519 s!1437 lambda!451784)))))

(declare-datatypes ((B!3527 0))(
  ( (B!3528 (val!29084 Int)) )
))
(declare-datatypes ((List!71168 0))(
  ( (Nil!71044) (Cons!71044 (h!77492 B!3527) (t!385357 List!71168)) )
))
(declare-fun lRes!18 () List!71168)

(declare-fun empty!3123 () A!825)

(declare-fun flatMapPost!101 ((Set A!825) Int B!3527) A!825)

(assert (=> b!7313589 (= (flatMapPost!101 s!1437 f!883 (h!77492 lRes!18)) empty!3123)))

(assert (=> b!7313589 true))

(declare-fun tp_is_empty!47445 () Bool)

(assert (=> b!7313589 tp_is_empty!47445))

(declare-fun b!7313590 () Bool)

(declare-fun res!2955075 () Bool)

(declare-fun e!4377874 () Bool)

(assert (=> b!7313590 (=> (not res!2955075) (not e!4377874))))

(assert (=> b!7313590 (= res!2955075 (is-Cons!71044 lRes!18))))

(declare-fun res!2955073 () Bool)

(declare-fun e!4377873 () Bool)

(assert (=> start!712510 (=> (not res!2955073) (not e!4377873))))

(declare-fun elmt!118 () A!825)

(assert (=> start!712510 (= res!2955073 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!825)))))))

(assert (=> start!712510 e!4377873))

(declare-fun condSetEmpty!54086 () Bool)

(assert (=> start!712510 (= condSetEmpty!54086 (= s!1437 (as set.empty (Set A!825))))))

(declare-fun setRes!54086 () Bool)

(assert (=> start!712510 setRes!54086))

(assert (=> start!712510 tp_is_empty!47445))

(assert (=> start!712510 tp!2075616))

(declare-fun e!4377875 () Bool)

(assert (=> start!712510 e!4377875))

(declare-fun setIsEmpty!54086 () Bool)

(assert (=> setIsEmpty!54086 setRes!54086))

(declare-fun b!7313591 () Bool)

(declare-fun e!4377878 () Bool)

(declare-fun lambda!451783 () Int)

(declare-fun forall!17745 (List!71168 Int) Bool)

(assert (=> b!7313591 (= e!4377878 (forall!17745 (t!385357 lRes!18) lambda!451783))))

(declare-fun setNonEmpty!54086 () Bool)

(declare-fun tp!2075617 () Bool)

(assert (=> setNonEmpty!54086 (= setRes!54086 (and tp!2075617 tp_is_empty!47445))))

(declare-fun setElem!54086 () A!825)

(declare-fun setRest!54086 () (Set A!825))

(assert (=> setNonEmpty!54086 (= s!1437 (set.union (set.insert setElem!54086 (as set.empty (Set A!825))) setRest!54086))))

(declare-fun b!7313592 () Bool)

(declare-datatypes ((List!71169 0))(
  ( (Nil!71045) (Cons!71045 (h!77493 A!825) (t!385358 List!71169)) )
))
(declare-fun contains!20776 (List!71169 A!825) Bool)

(declare-fun toList!11577 ((Set A!825)) List!71169)

(declare-fun getWitness!2275 ((Set A!825) Int) A!825)

(assert (=> b!7313592 (= e!4377876 (contains!20776 (toList!11577 s!1437) (getWitness!2275 s!1437 lambda!451784)))))

(assert (=> b!7313593 (= e!4377874 (not e!4377877))))

(declare-fun res!2955074 () Bool)

(assert (=> b!7313593 (=> res!2955074 e!4377877)))

(declare-fun lt!2601199 () (Set B!3527))

(assert (=> b!7313593 (= res!2955074 (not (set.member (h!77492 lRes!18) lt!2601199)))))

(declare-datatypes ((Unit!164519 0))(
  ( (Unit!164520) )
))
(declare-fun lt!2601194 () Unit!164519)

(declare-fun lt!2601198 () List!71168)

(declare-fun subseqContains!41 (List!71168 List!71168 B!3527) Unit!164519)

(assert (=> b!7313593 (= lt!2601194 (subseqContains!41 lRes!18 lt!2601198 (h!77492 lRes!18)))))

(assert (=> b!7313593 e!4377878))

(declare-fun res!2955070 () Bool)

(assert (=> b!7313593 (=> (not res!2955070) (not e!4377878))))

(assert (=> b!7313593 (= res!2955070 (forall!17745 (t!385357 lRes!18) lambda!451783))))

(declare-fun lt!2601196 () List!71168)

(declare-fun toList!11578 ((Set B!3527)) List!71168)

(declare-fun dynLambda!29105 (Int A!825) (Set B!3527))

(assert (=> b!7313593 (= lt!2601196 (toList!11578 (dynLambda!29105 f!883 elmt!118)))))

(declare-fun lt!2601195 () Unit!164519)

(declare-fun lemmaFlatMapOnSingletonSetList1!17 ((Set A!825) A!825 Int List!71168) Unit!164519)

(assert (=> b!7313593 (= lt!2601195 (lemmaFlatMapOnSingletonSetList1!17 s!1437 elmt!118 f!883 (t!385357 lRes!18)))))

(declare-fun lt!2601197 () Unit!164519)

(declare-fun subseqTail!69 (List!71168 List!71168) Unit!164519)

(assert (=> b!7313593 (= lt!2601197 (subseqTail!69 lRes!18 lt!2601198))))

(declare-fun b!7313594 () Bool)

(assert (=> b!7313594 (= e!4377873 e!4377874)))

(declare-fun res!2955072 () Bool)

(assert (=> b!7313594 (=> (not res!2955072) (not e!4377874))))

(declare-fun subseq!824 (List!71168 List!71168) Bool)

(assert (=> b!7313594 (= res!2955072 (subseq!824 lRes!18 lt!2601198))))

(assert (=> b!7313594 (= lt!2601198 (toList!11578 lt!2601199))))

(declare-fun flatMap!3023 ((Set A!825) Int) (Set B!3527))

(assert (=> b!7313594 (= lt!2601199 (flatMap!3023 s!1437 f!883))))

(declare-fun b!7313595 () Bool)

(declare-fun tp_is_empty!47447 () Bool)

(declare-fun tp!2075618 () Bool)

(assert (=> b!7313595 (= e!4377875 (and tp_is_empty!47447 tp!2075618))))

(assert (= (and start!712510 res!2955073) b!7313594))

(assert (= (and b!7313594 res!2955072) b!7313590))

(assert (= (and b!7313590 res!2955075) b!7313593))

(assert (= (and b!7313593 res!2955070) b!7313591))

(assert (= (and b!7313593 (not res!2955074)) b!7313589))

(assert (= (and b!7313589 (not res!2955071)) b!7313592))

(assert (= (and start!712510 condSetEmpty!54086) setIsEmpty!54086))

(assert (= (and start!712510 (not condSetEmpty!54086)) setNonEmpty!54086))

(assert (= (and start!712510 (is-Cons!71044 lRes!18)) b!7313595))

(declare-fun b_lambda!282353 () Bool)

(assert (=> (not b_lambda!282353) (not b!7313593)))

(declare-fun t!385356 () Bool)

(declare-fun tb!262213 () Bool)

(assert (=> (and start!712510 (= f!883 f!883) t!385356) tb!262213))

(assert (=> b!7313593 t!385356))

(declare-fun result!352880 () Bool)

(declare-fun b_and!351339 () Bool)

(assert (= b_and!351337 (and (=> t!385356 result!352880) b_and!351339)))

(declare-fun m!7977762 () Bool)

(assert (=> b!7313589 m!7977762))

(declare-fun m!7977764 () Bool)

(assert (=> b!7313589 m!7977764))

(declare-fun m!7977766 () Bool)

(assert (=> b!7313594 m!7977766))

(declare-fun m!7977768 () Bool)

(assert (=> b!7313594 m!7977768))

(declare-fun m!7977770 () Bool)

(assert (=> b!7313594 m!7977770))

(declare-fun m!7977772 () Bool)

(assert (=> start!712510 m!7977772))

(declare-fun m!7977774 () Bool)

(assert (=> b!7313592 m!7977774))

(declare-fun m!7977776 () Bool)

(assert (=> b!7313592 m!7977776))

(assert (=> b!7313592 m!7977774))

(assert (=> b!7313592 m!7977776))

(declare-fun m!7977778 () Bool)

(assert (=> b!7313592 m!7977778))

(declare-fun m!7977780 () Bool)

(assert (=> b!7313591 m!7977780))

(declare-fun m!7977782 () Bool)

(assert (=> b!7313593 m!7977782))

(declare-fun m!7977784 () Bool)

(assert (=> b!7313593 m!7977784))

(assert (=> b!7313593 m!7977780))

(declare-fun m!7977786 () Bool)

(assert (=> b!7313593 m!7977786))

(assert (=> b!7313593 m!7977782))

(declare-fun m!7977788 () Bool)

(assert (=> b!7313593 m!7977788))

(declare-fun m!7977790 () Bool)

(assert (=> b!7313593 m!7977790))

(declare-fun m!7977792 () Bool)

(assert (=> b!7313593 m!7977792))

(push 1)

(assert (not setNonEmpty!54086))

(assert (not b!7313592))

(assert (not b!7313595))

(assert (not b_next!134769))

(assert tp_is_empty!47445)

(assert (not b_lambda!282353))

(assert (not b!7313593))

(assert (not b!7313594))

(assert tp_is_empty!47447)

(assert (not b!7313591))

(assert (not tb!262213))

(assert b_and!351339)

(assert (not b!7313589))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351339)

(assert (not b_next!134769))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!282357 () Bool)

(assert (= b_lambda!282353 (or (and start!712510 b_free!133979) b_lambda!282357)))

(push 1)

(assert (not setNonEmpty!54086))

(assert (not b!7313592))

(assert (not b_lambda!282357))

(assert (not b!7313595))

(assert (not b_next!134769))

(assert tp_is_empty!47445)

(assert (not b!7313593))

(assert (not b!7313594))

(assert tp_is_empty!47447)

(assert (not b!7313591))

(assert (not tb!262213))

(assert b_and!351339)

(assert (not b!7313589))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351339)

(assert (not b_next!134769))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2270835 () Bool)

(declare-fun res!2955098 () Bool)

(declare-fun e!4377901 () Bool)

(assert (=> d!2270835 (=> res!2955098 e!4377901)))

(assert (=> d!2270835 (= res!2955098 (is-Nil!71044 (t!385357 lRes!18)))))

(assert (=> d!2270835 (= (forall!17745 (t!385357 lRes!18) lambda!451783) e!4377901)))

(declare-fun b!7313633 () Bool)

(declare-fun e!4377902 () Bool)

(assert (=> b!7313633 (= e!4377901 e!4377902)))

(declare-fun res!2955099 () Bool)

(assert (=> b!7313633 (=> (not res!2955099) (not e!4377902))))

(declare-fun dynLambda!29109 (Int B!3527) Bool)

(assert (=> b!7313633 (= res!2955099 (dynLambda!29109 lambda!451783 (h!77492 (t!385357 lRes!18))))))

(declare-fun b!7313634 () Bool)

(assert (=> b!7313634 (= e!4377902 (forall!17745 (t!385357 (t!385357 lRes!18)) lambda!451783))))

(assert (= (and d!2270835 (not res!2955098)) b!7313633))

(assert (= (and b!7313633 res!2955099) b!7313634))

(declare-fun b_lambda!282359 () Bool)

(assert (=> (not b_lambda!282359) (not b!7313633)))

(declare-fun m!7977826 () Bool)

(assert (=> b!7313633 m!7977826))

(declare-fun m!7977828 () Bool)

(assert (=> b!7313634 m!7977828))

(assert (=> b!7313591 d!2270835))

(declare-fun b!7313643 () Bool)

(declare-fun e!4377911 () Bool)

(declare-fun e!4377912 () Bool)

(assert (=> b!7313643 (= e!4377911 e!4377912)))

(declare-fun res!2955110 () Bool)

(assert (=> b!7313643 (=> (not res!2955110) (not e!4377912))))

(assert (=> b!7313643 (= res!2955110 (is-Cons!71044 lt!2601198))))

(declare-fun b!7313646 () Bool)

(declare-fun e!4377914 () Bool)

(assert (=> b!7313646 (= e!4377914 (subseq!824 lRes!18 (t!385357 lt!2601198)))))

(declare-fun b!7313644 () Bool)

(assert (=> b!7313644 (= e!4377912 e!4377914)))

(declare-fun res!2955108 () Bool)

(assert (=> b!7313644 (=> res!2955108 e!4377914)))

(declare-fun e!4377913 () Bool)

(assert (=> b!7313644 (= res!2955108 e!4377913)))

(declare-fun res!2955109 () Bool)

(assert (=> b!7313644 (=> (not res!2955109) (not e!4377913))))

(assert (=> b!7313644 (= res!2955109 (= (h!77492 lRes!18) (h!77492 lt!2601198)))))

(declare-fun d!2270837 () Bool)

(declare-fun res!2955111 () Bool)

(assert (=> d!2270837 (=> res!2955111 e!4377911)))

(assert (=> d!2270837 (= res!2955111 (is-Nil!71044 lRes!18))))

(assert (=> d!2270837 (= (subseq!824 lRes!18 lt!2601198) e!4377911)))

(declare-fun b!7313645 () Bool)

(assert (=> b!7313645 (= e!4377913 (subseq!824 (t!385357 lRes!18) (t!385357 lt!2601198)))))

(assert (= (and d!2270837 (not res!2955111)) b!7313643))

(assert (= (and b!7313643 res!2955110) b!7313644))

(assert (= (and b!7313644 res!2955109) b!7313645))

(assert (= (and b!7313644 (not res!2955108)) b!7313646))

(declare-fun m!7977830 () Bool)

(assert (=> b!7313646 m!7977830))

(declare-fun m!7977832 () Bool)

(assert (=> b!7313645 m!7977832))

(assert (=> b!7313594 d!2270837))

(declare-fun d!2270839 () Bool)

(declare-fun e!4377917 () Bool)

(assert (=> d!2270839 e!4377917))

(declare-fun res!2955114 () Bool)

(assert (=> d!2270839 (=> (not res!2955114) (not e!4377917))))

(declare-fun lt!2601220 () List!71168)

(declare-fun noDuplicate!3042 (List!71168) Bool)

(assert (=> d!2270839 (= res!2955114 (noDuplicate!3042 lt!2601220))))

(declare-fun choose!56672 ((Set B!3527)) List!71168)

(assert (=> d!2270839 (= lt!2601220 (choose!56672 lt!2601199))))

(assert (=> d!2270839 (= (toList!11578 lt!2601199) lt!2601220)))

(declare-fun b!7313649 () Bool)

(declare-fun content!14861 (List!71168) (Set B!3527))

(assert (=> b!7313649 (= e!4377917 (= (content!14861 lt!2601220) lt!2601199))))

(assert (= (and d!2270839 res!2955114) b!7313649))

(declare-fun m!7977834 () Bool)

(assert (=> d!2270839 m!7977834))

(declare-fun m!7977836 () Bool)

(assert (=> d!2270839 m!7977836))

(declare-fun m!7977838 () Bool)

(assert (=> b!7313649 m!7977838))

(assert (=> b!7313594 d!2270839))

(declare-fun d!2270841 () Bool)

(declare-fun choose!56673 ((Set A!825) Int) (Set B!3527))

(assert (=> d!2270841 (= (flatMap!3023 s!1437 f!883) (choose!56673 s!1437 f!883))))

(declare-fun bs!1914635 () Bool)

(assert (= bs!1914635 d!2270841))

(declare-fun m!7977840 () Bool)

(assert (=> bs!1914635 m!7977840))

(assert (=> b!7313594 d!2270841))

(assert (=> b!7313593 d!2270835))

(declare-fun b!7313664 () Bool)

(declare-fun e!4377929 () Unit!164519)

(declare-fun Unit!164523 () Unit!164519)

(assert (=> b!7313664 (= e!4377929 Unit!164523)))

(declare-fun d!2270843 () Bool)

(declare-fun tail!14631 (List!71168) List!71168)

(assert (=> d!2270843 (subseq!824 (tail!14631 lRes!18) lt!2601198)))

(declare-fun lt!2601223 () Unit!164519)

(declare-fun e!4377926 () Unit!164519)

(assert (=> d!2270843 (= lt!2601223 e!4377926)))

(declare-fun c!1357743 () Bool)

(assert (=> d!2270843 (= c!1357743 (and (is-Cons!71044 lRes!18) (is-Cons!71044 lt!2601198)))))

(declare-fun e!4377928 () Bool)

(assert (=> d!2270843 e!4377928))

(declare-fun res!2955117 () Bool)

(assert (=> d!2270843 (=> (not res!2955117) (not e!4377928))))

(declare-fun isEmpty!40852 (List!71168) Bool)

(assert (=> d!2270843 (= res!2955117 (not (isEmpty!40852 lRes!18)))))

(assert (=> d!2270843 (= (subseqTail!69 lRes!18 lt!2601198) lt!2601223)))

(declare-fun call!665756 () Unit!164519)

(declare-fun bm!665751 () Bool)

(declare-fun c!1357745 () Bool)

(assert (=> bm!665751 (= call!665756 (subseqTail!69 (ite c!1357745 lRes!18 (t!385357 lRes!18)) (t!385357 lt!2601198)))))

(declare-fun b!7313665 () Bool)

(assert (=> b!7313665 (= e!4377929 call!665756)))

(declare-fun b!7313666 () Bool)

(declare-fun Unit!164524 () Unit!164519)

(assert (=> b!7313666 (= e!4377926 Unit!164524)))

(declare-fun b!7313667 () Bool)

(assert (=> b!7313667 (= e!4377928 (subseq!824 lRes!18 lt!2601198))))

(declare-fun b!7313668 () Bool)

(declare-fun c!1357744 () Bool)

(assert (=> b!7313668 (= c!1357744 (not (isEmpty!40852 (t!385357 lRes!18))))))

(declare-fun e!4377927 () Unit!164519)

(assert (=> b!7313668 (= e!4377927 e!4377929)))

(declare-fun b!7313669 () Bool)

(assert (=> b!7313669 (= e!4377927 call!665756)))

(declare-fun b!7313670 () Bool)

(assert (=> b!7313670 (= e!4377926 e!4377927)))

(assert (=> b!7313670 (= c!1357745 (subseq!824 lRes!18 (t!385357 lt!2601198)))))

(assert (= (and d!2270843 res!2955117) b!7313667))

(assert (= (and d!2270843 c!1357743) b!7313670))

(assert (= (and d!2270843 (not c!1357743)) b!7313666))

(assert (= (and b!7313670 c!1357745) b!7313669))

(assert (= (and b!7313670 (not c!1357745)) b!7313668))

(assert (= (and b!7313668 c!1357744) b!7313665))

(assert (= (and b!7313668 (not c!1357744)) b!7313664))

(assert (= (or b!7313669 b!7313665) bm!665751))

(declare-fun m!7977842 () Bool)

(assert (=> bm!665751 m!7977842))

(declare-fun m!7977844 () Bool)

(assert (=> b!7313668 m!7977844))

(assert (=> b!7313667 m!7977766))

(assert (=> b!7313670 m!7977830))

(declare-fun m!7977846 () Bool)

(assert (=> d!2270843 m!7977846))

(assert (=> d!2270843 m!7977846))

(declare-fun m!7977848 () Bool)

(assert (=> d!2270843 m!7977848))

(declare-fun m!7977850 () Bool)

(assert (=> d!2270843 m!7977850))

(assert (=> b!7313593 d!2270843))

(declare-fun bs!1914636 () Bool)

(declare-fun d!2270845 () Bool)

(assert (= bs!1914636 (and d!2270845 b!7313593)))

(declare-fun lambda!451797 () Int)

(declare-fun lt!2601229 () List!71168)

(assert (=> bs!1914636 (= (= lt!2601229 lt!2601196) (= lambda!451797 lambda!451783))))

(assert (=> d!2270845 true))

(assert (=> d!2270845 (forall!17745 (t!385357 lRes!18) lambda!451797)))

(assert (=> d!2270845 (= lt!2601229 (toList!11578 (dynLambda!29105 f!883 elmt!118)))))

(declare-fun lt!2601228 () Unit!164519)

(declare-fun choose!56674 ((Set A!825) A!825 Int List!71168) Unit!164519)

(assert (=> d!2270845 (= lt!2601228 (choose!56674 s!1437 elmt!118 f!883 (t!385357 lRes!18)))))

(assert (=> d!2270845 (= s!1437 (set.insert elmt!118 (as set.empty (Set A!825))))))

(assert (=> d!2270845 (= (lemmaFlatMapOnSingletonSetList1!17 s!1437 elmt!118 f!883 (t!385357 lRes!18)) lt!2601228)))

(declare-fun b_lambda!282363 () Bool)

(assert (=> (not b_lambda!282363) (not d!2270845)))

(assert (=> d!2270845 t!385356))

(declare-fun b_and!351345 () Bool)

(assert (= b_and!351339 (and (=> t!385356 result!352880) b_and!351345)))

(assert (=> d!2270845 m!7977782))

(assert (=> d!2270845 m!7977788))

(assert (=> d!2270845 m!7977782))

(declare-fun m!7977852 () Bool)

(assert (=> d!2270845 m!7977852))

(declare-fun m!7977854 () Bool)

(assert (=> d!2270845 m!7977854))

(assert (=> d!2270845 m!7977772))

(assert (=> b!7313593 d!2270845))

(declare-fun d!2270847 () Bool)

(declare-fun contains!20778 (List!71168 B!3527) Bool)

(assert (=> d!2270847 (contains!20778 lt!2601198 (h!77492 lRes!18))))

(declare-fun lt!2601232 () Unit!164519)

(declare-fun choose!56675 (List!71168 List!71168 B!3527) Unit!164519)

(assert (=> d!2270847 (= lt!2601232 (choose!56675 lRes!18 lt!2601198 (h!77492 lRes!18)))))

(declare-fun e!4377932 () Bool)

(assert (=> d!2270847 e!4377932))

(declare-fun res!2955120 () Bool)

(assert (=> d!2270847 (=> (not res!2955120) (not e!4377932))))

(assert (=> d!2270847 (= res!2955120 (subseq!824 lRes!18 lt!2601198))))

(assert (=> d!2270847 (= (subseqContains!41 lRes!18 lt!2601198 (h!77492 lRes!18)) lt!2601232)))

(declare-fun b!7313673 () Bool)

(assert (=> b!7313673 (= e!4377932 (contains!20778 lRes!18 (h!77492 lRes!18)))))

(assert (= (and d!2270847 res!2955120) b!7313673))

(declare-fun m!7977856 () Bool)

(assert (=> d!2270847 m!7977856))

(declare-fun m!7977858 () Bool)

(assert (=> d!2270847 m!7977858))

(assert (=> d!2270847 m!7977766))

(declare-fun m!7977860 () Bool)

(assert (=> b!7313673 m!7977860))

(assert (=> b!7313593 d!2270847))

(declare-fun d!2270849 () Bool)

(declare-fun e!4377933 () Bool)

(assert (=> d!2270849 e!4377933))

(declare-fun res!2955121 () Bool)

(assert (=> d!2270849 (=> (not res!2955121) (not e!4377933))))

(declare-fun lt!2601233 () List!71168)

(assert (=> d!2270849 (= res!2955121 (noDuplicate!3042 lt!2601233))))

(assert (=> d!2270849 (= lt!2601233 (choose!56672 (dynLambda!29105 f!883 elmt!118)))))

(assert (=> d!2270849 (= (toList!11578 (dynLambda!29105 f!883 elmt!118)) lt!2601233)))

(declare-fun b!7313674 () Bool)

(assert (=> b!7313674 (= e!4377933 (= (content!14861 lt!2601233) (dynLambda!29105 f!883 elmt!118)))))

(assert (= (and d!2270849 res!2955121) b!7313674))

(declare-fun m!7977862 () Bool)

(assert (=> d!2270849 m!7977862))

(assert (=> d!2270849 m!7977782))

(declare-fun m!7977864 () Bool)

(assert (=> d!2270849 m!7977864))

(declare-fun m!7977866 () Bool)

(assert (=> b!7313674 m!7977866))

(assert (=> b!7313593 d!2270849))

(declare-fun d!2270851 () Bool)

(declare-fun lt!2601236 () Bool)

(declare-fun exists!4521 (List!71169 Int) Bool)

(assert (=> d!2270851 (= lt!2601236 (exists!4521 (toList!11577 s!1437) lambda!451784))))

(declare-fun choose!56676 ((Set A!825) Int) Bool)

(assert (=> d!2270851 (= lt!2601236 (choose!56676 s!1437 lambda!451784))))

(assert (=> d!2270851 (= (exists!4519 s!1437 lambda!451784) lt!2601236)))

(declare-fun bs!1914637 () Bool)

(assert (= bs!1914637 d!2270851))

(assert (=> bs!1914637 m!7977774))

(assert (=> bs!1914637 m!7977774))

(declare-fun m!7977868 () Bool)

(assert (=> bs!1914637 m!7977868))

(declare-fun m!7977870 () Bool)

(assert (=> bs!1914637 m!7977870))

(assert (=> b!7313589 d!2270851))

(declare-fun bs!1914638 () Bool)

(declare-fun d!2270853 () Bool)

(assert (= bs!1914638 (and d!2270853 b!7313589)))

(declare-fun lambda!451800 () Int)

(assert (=> bs!1914638 (= lambda!451800 lambda!451784)))

(assert (=> d!2270853 true))

(assert (=> d!2270853 true))

(assert (=> d!2270853 (< (dynLambda!29103 order!29101 f!883) (dynLambda!29104 order!29103 lambda!451800))))

(assert (=> d!2270853 (= (set.member (h!77492 lRes!18) (flatMap!3023 s!1437 f!883)) (exists!4519 s!1437 lambda!451800))))

(declare-fun lt!2601239 () A!825)

(declare-fun choose!56677 ((Set A!825) Int B!3527) A!825)

(assert (=> d!2270853 (= lt!2601239 (choose!56677 s!1437 f!883 (h!77492 lRes!18)))))

(assert (=> d!2270853 (= (flatMapPost!101 s!1437 f!883 (h!77492 lRes!18)) lt!2601239)))

(declare-fun bs!1914639 () Bool)

(assert (= bs!1914639 d!2270853))

(assert (=> bs!1914639 m!7977770))

(declare-fun m!7977872 () Bool)

(assert (=> bs!1914639 m!7977872))

(declare-fun m!7977874 () Bool)

(assert (=> bs!1914639 m!7977874))

(declare-fun m!7977876 () Bool)

(assert (=> bs!1914639 m!7977876))

(assert (=> b!7313589 d!2270853))

(declare-fun d!2270855 () Bool)

(declare-fun lt!2601242 () Bool)

(declare-fun content!14862 (List!71169) (Set A!825))

(assert (=> d!2270855 (= lt!2601242 (set.member (getWitness!2275 s!1437 lambda!451784) (content!14862 (toList!11577 s!1437))))))

(declare-fun e!4377938 () Bool)

(assert (=> d!2270855 (= lt!2601242 e!4377938)))

(declare-fun res!2955126 () Bool)

(assert (=> d!2270855 (=> (not res!2955126) (not e!4377938))))

(assert (=> d!2270855 (= res!2955126 (is-Cons!71045 (toList!11577 s!1437)))))

(assert (=> d!2270855 (= (contains!20776 (toList!11577 s!1437) (getWitness!2275 s!1437 lambda!451784)) lt!2601242)))

(declare-fun b!7313682 () Bool)

(declare-fun e!4377939 () Bool)

(assert (=> b!7313682 (= e!4377938 e!4377939)))

(declare-fun res!2955127 () Bool)

(assert (=> b!7313682 (=> res!2955127 e!4377939)))

(assert (=> b!7313682 (= res!2955127 (= (h!77493 (toList!11577 s!1437)) (getWitness!2275 s!1437 lambda!451784)))))

(declare-fun b!7313683 () Bool)

(assert (=> b!7313683 (= e!4377939 (contains!20776 (t!385358 (toList!11577 s!1437)) (getWitness!2275 s!1437 lambda!451784)))))

(assert (= (and d!2270855 res!2955126) b!7313682))

(assert (= (and b!7313682 (not res!2955127)) b!7313683))

(assert (=> d!2270855 m!7977774))

(declare-fun m!7977878 () Bool)

(assert (=> d!2270855 m!7977878))

(assert (=> d!2270855 m!7977776))

(declare-fun m!7977880 () Bool)

(assert (=> d!2270855 m!7977880))

(assert (=> b!7313683 m!7977776))

(declare-fun m!7977882 () Bool)

(assert (=> b!7313683 m!7977882))

(assert (=> b!7313592 d!2270855))

(declare-fun d!2270857 () Bool)

(declare-fun e!4377942 () Bool)

(assert (=> d!2270857 e!4377942))

(declare-fun res!2955130 () Bool)

(assert (=> d!2270857 (=> (not res!2955130) (not e!4377942))))

(declare-fun lt!2601245 () List!71169)

(declare-fun noDuplicate!3043 (List!71169) Bool)

(assert (=> d!2270857 (= res!2955130 (noDuplicate!3043 lt!2601245))))

(declare-fun choose!56678 ((Set A!825)) List!71169)

(assert (=> d!2270857 (= lt!2601245 (choose!56678 s!1437))))

(assert (=> d!2270857 (= (toList!11577 s!1437) lt!2601245)))

(declare-fun b!7313686 () Bool)

(assert (=> b!7313686 (= e!4377942 (= (content!14862 lt!2601245) s!1437))))

(assert (= (and d!2270857 res!2955130) b!7313686))

(declare-fun m!7977884 () Bool)

(assert (=> d!2270857 m!7977884))

(declare-fun m!7977886 () Bool)

(assert (=> d!2270857 m!7977886))

(declare-fun m!7977888 () Bool)

(assert (=> b!7313686 m!7977888))

(assert (=> b!7313592 d!2270857))

(declare-fun d!2270859 () Bool)

(declare-fun e!4377945 () Bool)

(assert (=> d!2270859 e!4377945))

(declare-fun res!2955133 () Bool)

(assert (=> d!2270859 (=> (not res!2955133) (not e!4377945))))

(declare-fun lt!2601248 () A!825)

(declare-fun dynLambda!29110 (Int A!825) Bool)

(assert (=> d!2270859 (= res!2955133 (dynLambda!29110 lambda!451784 lt!2601248))))

(declare-fun getWitness!2277 (List!71169 Int) A!825)

(assert (=> d!2270859 (= lt!2601248 (getWitness!2277 (toList!11577 s!1437) lambda!451784))))

(assert (=> d!2270859 (exists!4519 s!1437 lambda!451784)))

(assert (=> d!2270859 (= (getWitness!2275 s!1437 lambda!451784) lt!2601248)))

(declare-fun b!7313689 () Bool)

(assert (=> b!7313689 (= e!4377945 (set.member lt!2601248 s!1437))))

(assert (= (and d!2270859 res!2955133) b!7313689))

(declare-fun b_lambda!282365 () Bool)

(assert (=> (not b_lambda!282365) (not d!2270859)))

(declare-fun m!7977890 () Bool)

(assert (=> d!2270859 m!7977890))

(assert (=> d!2270859 m!7977774))

(assert (=> d!2270859 m!7977774))

(declare-fun m!7977892 () Bool)

(assert (=> d!2270859 m!7977892))

(assert (=> d!2270859 m!7977762))

(declare-fun m!7977894 () Bool)

(assert (=> b!7313689 m!7977894))

(assert (=> b!7313592 d!2270859))

(declare-fun b!7313694 () Bool)

(declare-fun e!4377948 () Bool)

(declare-fun tp!2075630 () Bool)

(assert (=> b!7313694 (= e!4377948 (and tp_is_empty!47447 tp!2075630))))

(assert (=> b!7313595 (= tp!2075618 e!4377948)))

(assert (= (and b!7313595 (is-Cons!71044 (t!385357 lRes!18))) b!7313694))

(declare-fun condSetEmpty!54092 () Bool)

(assert (=> setNonEmpty!54086 (= condSetEmpty!54092 (= setRest!54086 (as set.empty (Set A!825))))))

(declare-fun setRes!54092 () Bool)

(assert (=> setNonEmpty!54086 (= tp!2075617 setRes!54092)))

(declare-fun setIsEmpty!54092 () Bool)

(assert (=> setIsEmpty!54092 setRes!54092))

(declare-fun setNonEmpty!54092 () Bool)

(declare-fun tp!2075633 () Bool)

(assert (=> setNonEmpty!54092 (= setRes!54092 (and tp!2075633 tp_is_empty!47445))))

(declare-fun setElem!54092 () A!825)

(declare-fun setRest!54092 () (Set A!825))

(assert (=> setNonEmpty!54092 (= setRest!54086 (set.union (set.insert setElem!54092 (as set.empty (Set A!825))) setRest!54092))))

(assert (= (and setNonEmpty!54086 condSetEmpty!54092) setIsEmpty!54092))

(assert (= (and setNonEmpty!54086 (not condSetEmpty!54092)) setNonEmpty!54092))

(declare-fun condSetEmpty!54095 () Bool)

(assert (=> tb!262213 (= condSetEmpty!54095 (= (dynLambda!29105 f!883 elmt!118) (as set.empty (Set B!3527))))))

(declare-fun setRes!54095 () Bool)

(assert (=> tb!262213 (= result!352880 setRes!54095)))

(declare-fun setIsEmpty!54095 () Bool)

(assert (=> setIsEmpty!54095 setRes!54095))

(declare-fun setNonEmpty!54095 () Bool)

(declare-fun tp!2075636 () Bool)

(assert (=> setNonEmpty!54095 (= setRes!54095 (and tp!2075636 tp_is_empty!47447))))

(declare-fun setRest!54095 () (Set B!3527))

(declare-fun setElem!54095 () B!3527)

(assert (=> setNonEmpty!54095 (= (dynLambda!29105 f!883 elmt!118) (set.union (set.insert setElem!54095 (as set.empty (Set B!3527))) setRest!54095))))

(assert (= (and tb!262213 condSetEmpty!54095) setIsEmpty!54095))

(assert (= (and tb!262213 (not condSetEmpty!54095)) setNonEmpty!54095))

(declare-fun b_lambda!282367 () Bool)

(assert (= b_lambda!282365 (or b!7313589 b_lambda!282367)))

(declare-fun bs!1914640 () Bool)

(declare-fun d!2270861 () Bool)

(assert (= bs!1914640 (and d!2270861 b!7313589)))

(assert (=> bs!1914640 (= (dynLambda!29110 lambda!451784 lt!2601248) (set.member (h!77492 lRes!18) (dynLambda!29105 f!883 lt!2601248)))))

(declare-fun b_lambda!282373 () Bool)

(assert (=> (not b_lambda!282373) (not bs!1914640)))

(declare-fun t!385365 () Bool)

(declare-fun tb!262217 () Bool)

(assert (=> (and start!712510 (= f!883 f!883) t!385365) tb!262217))

(assert (=> bs!1914640 t!385365))

(declare-fun result!352890 () Bool)

(declare-fun b_and!351347 () Bool)

(assert (= b_and!351345 (and (=> t!385365 result!352890) b_and!351347)))

(declare-fun m!7977896 () Bool)

(assert (=> bs!1914640 m!7977896))

(declare-fun m!7977898 () Bool)

(assert (=> bs!1914640 m!7977898))

(assert (=> d!2270859 d!2270861))

(declare-fun b_lambda!282369 () Bool)

(assert (= b_lambda!282359 (or b!7313593 b_lambda!282369)))

(declare-fun bs!1914641 () Bool)

(declare-fun d!2270863 () Bool)

(assert (= bs!1914641 (and d!2270863 b!7313593)))

(assert (=> bs!1914641 (= (dynLambda!29109 lambda!451783 (h!77492 (t!385357 lRes!18))) (contains!20778 lt!2601196 (h!77492 (t!385357 lRes!18))))))

(declare-fun m!7977900 () Bool)

(assert (=> bs!1914641 m!7977900))

(assert (=> b!7313633 d!2270863))

(declare-fun b_lambda!282371 () Bool)

(assert (= b_lambda!282363 (or (and start!712510 b_free!133979) b_lambda!282371)))

(push 1)

(assert (not d!2270839))

(assert (not b!7313649))

(assert (not b!7313646))

(assert (not b_lambda!282357))

(assert (not b_next!134769))

(assert b_and!351347)

(assert tp_is_empty!47445)

(assert (not b_lambda!282373))

(assert (not d!2270859))

(assert (not b!7313683))

(assert (not d!2270857))

(assert (not d!2270843))

(assert (not b!7313694))

(assert (not b!7313674))

(assert (not b!7313673))

(assert (not d!2270841))

(assert tp_is_empty!47447)

(assert (not bm!665751))

(assert (not b_lambda!282371))

(assert (not b!7313668))

(assert (not setNonEmpty!54092))

(assert (not b!7313670))

(assert (not b!7313686))

(assert (not d!2270851))

(assert (not b!7313645))

(assert (not d!2270855))

(assert (not b!7313667))

(assert (not b_lambda!282369))

(assert (not tb!262217))

(assert (not d!2270849))

(assert (not bs!1914641))

(assert (not b_lambda!282367))

(assert (not setNonEmpty!54095))

(assert (not d!2270845))

(assert (not d!2270847))

(assert (not b!7313634))

(assert (not d!2270853))

(check-sat)

(pop 1)

(push 1)

(assert b_and!351347)

(assert (not b_next!134769))

(check-sat)

(pop 1)

