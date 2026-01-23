; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!44928 () Bool)

(assert start!44928)

(declare-fun b_free!13061 () Bool)

(declare-fun b_next!13061 () Bool)

(assert (=> start!44928 (= b_free!13061 (not b_next!13061))))

(declare-fun tp!130346 () Bool)

(declare-fun b_and!50329 () Bool)

(assert (=> start!44928 (= tp!130346 b_and!50329)))

(declare-fun b_free!13063 () Bool)

(declare-fun b_next!13063 () Bool)

(assert (=> start!44928 (= b_free!13063 (not b_next!13063))))

(declare-fun tp!130349 () Bool)

(declare-fun b_and!50331 () Bool)

(assert (=> start!44928 (= tp!130349 b_and!50331)))

(assert (=> start!44928 true))

(declare-fun order!4047 () Int)

(declare-fun order!4049 () Int)

(declare-fun lambda!13863 () Int)

(declare-fun f!1027 () Int)

(declare-fun dynLambda!2777 (Int Int) Int)

(declare-fun dynLambda!2778 (Int Int) Int)

(assert (=> start!44928 (< (dynLambda!2777 order!4047 f!1027) (dynLambda!2778 order!4049 lambda!13863))))

(assert (=> start!44928 true))

(declare-fun p!1789 () Int)

(declare-fun order!4051 () Int)

(declare-fun dynLambda!2779 (Int Int) Int)

(assert (=> start!44928 (< (dynLambda!2779 order!4051 p!1789) (dynLambda!2778 order!4049 lambda!13863))))

(declare-fun b!470943 () Bool)

(declare-fun res!208720 () Bool)

(declare-fun e!287967 () Bool)

(assert (=> b!470943 (=> (not res!208720) (not e!287967))))

(declare-datatypes ((B!887 0))(
  ( (B!888 (val!1463 Int)) )
))
(declare-datatypes ((List!4530 0))(
  ( (Nil!4520) (Cons!4520 (h!9917 B!887) (t!72924 List!4530)) )
))
(declare-fun l!2882 () List!4530)

(assert (=> b!470943 (= res!208720 (is-Cons!4520 l!2882))))

(declare-fun setIsEmpty!1836 () Bool)

(declare-fun setRes!1836 () Bool)

(assert (=> setIsEmpty!1836 setRes!1836))

(declare-fun b!470944 () Bool)

(declare-fun contains!1018 (List!4530 B!887) Bool)

(assert (=> b!470944 (= e!287967 (not (contains!1018 l!2882 (h!9917 l!2882))))))

(declare-fun setNonEmpty!1836 () Bool)

(declare-fun tp!130348 () Bool)

(declare-fun tp_is_empty!2031 () Bool)

(assert (=> setNonEmpty!1836 (= setRes!1836 (and tp!130348 tp_is_empty!2031))))

(declare-datatypes ((A!325 0))(
  ( (A!326 (val!1464 Int)) )
))
(declare-fun s!1494 () (Set A!325))

(declare-fun setElem!1836 () A!325)

(declare-fun setRest!1836 () (Set A!325))

(assert (=> setNonEmpty!1836 (= s!1494 (set.union (set.insert setElem!1836 (as set.empty (Set A!325))) setRest!1836))))

(declare-fun res!208722 () Bool)

(assert (=> start!44928 (=> (not res!208722) (not e!287967))))

(declare-fun Forall!217 (Int) Bool)

(assert (=> start!44928 (= res!208722 (Forall!217 lambda!13863))))

(assert (=> start!44928 e!287967))

(assert (=> start!44928 tp!130346))

(assert (=> start!44928 tp!130349))

(declare-fun e!287968 () Bool)

(assert (=> start!44928 e!287968))

(declare-fun condSetEmpty!1836 () Bool)

(assert (=> start!44928 (= condSetEmpty!1836 (= s!1494 (as set.empty (Set A!325))))))

(assert (=> start!44928 setRes!1836))

(declare-fun b!470945 () Bool)

(declare-fun res!208721 () Bool)

(assert (=> b!470945 (=> (not res!208721) (not e!287967))))

(declare-fun subseq!88 (List!4530 List!4530) Bool)

(declare-fun toList!301 ((Set B!887)) List!4530)

(declare-fun flatMap!67 ((Set A!325) Int) (Set B!887))

(assert (=> b!470945 (= res!208721 (subseq!88 l!2882 (toList!301 (flatMap!67 s!1494 f!1027))))))

(declare-fun b!470946 () Bool)

(declare-fun tp_is_empty!2029 () Bool)

(declare-fun tp!130347 () Bool)

(assert (=> b!470946 (= e!287968 (and tp_is_empty!2029 tp!130347))))

(assert (= (and start!44928 res!208722) b!470945))

(assert (= (and b!470945 res!208721) b!470943))

(assert (= (and b!470943 res!208720) b!470944))

(assert (= (and start!44928 (is-Cons!4520 l!2882)) b!470946))

(assert (= (and start!44928 condSetEmpty!1836) setIsEmpty!1836))

(assert (= (and start!44928 (not condSetEmpty!1836)) setNonEmpty!1836))

(declare-fun m!744559 () Bool)

(assert (=> b!470944 m!744559))

(declare-fun m!744561 () Bool)

(assert (=> start!44928 m!744561))

(declare-fun m!744563 () Bool)

(assert (=> b!470945 m!744563))

(assert (=> b!470945 m!744563))

(declare-fun m!744565 () Bool)

(assert (=> b!470945 m!744565))

(assert (=> b!470945 m!744565))

(declare-fun m!744567 () Bool)

(assert (=> b!470945 m!744567))

(push 1)

(assert (not b!470945))

(assert b_and!50331)

(assert b_and!50329)

(assert (not setNonEmpty!1836))

(assert tp_is_empty!2029)

(assert (not b!470946))

(assert (not start!44928))

(assert (not b_next!13063))

(assert (not b!470944))

(assert tp_is_empty!2031)

(assert (not b_next!13061))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50329)

(assert b_and!50331)

(assert (not b_next!13063))

(assert (not b_next!13061))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!179222 () Bool)

(declare-fun choose!3530 (Int) Bool)

(assert (=> d!179222 (= (Forall!217 lambda!13863) (choose!3530 lambda!13863))))

(declare-fun bs!58387 () Bool)

(assert (= bs!58387 d!179222))

(declare-fun m!744579 () Bool)

(assert (=> bs!58387 m!744579))

(assert (=> start!44928 d!179222))

(declare-fun d!179224 () Bool)

(declare-fun lt!209823 () Bool)

(declare-fun content!766 (List!4530) (Set B!887))

(assert (=> d!179224 (= lt!209823 (set.member (h!9917 l!2882) (content!766 l!2882)))))

(declare-fun e!287979 () Bool)

(assert (=> d!179224 (= lt!209823 e!287979)))

(declare-fun res!208737 () Bool)

(assert (=> d!179224 (=> (not res!208737) (not e!287979))))

(assert (=> d!179224 (= res!208737 (is-Cons!4520 l!2882))))

(assert (=> d!179224 (= (contains!1018 l!2882 (h!9917 l!2882)) lt!209823)))

(declare-fun b!470971 () Bool)

(declare-fun e!287980 () Bool)

(assert (=> b!470971 (= e!287979 e!287980)))

(declare-fun res!208736 () Bool)

(assert (=> b!470971 (=> res!208736 e!287980)))

(assert (=> b!470971 (= res!208736 (= (h!9917 l!2882) (h!9917 l!2882)))))

(declare-fun b!470972 () Bool)

(assert (=> b!470972 (= e!287980 (contains!1018 (t!72924 l!2882) (h!9917 l!2882)))))

(assert (= (and d!179224 res!208737) b!470971))

(assert (= (and b!470971 (not res!208736)) b!470972))

(declare-fun m!744581 () Bool)

(assert (=> d!179224 m!744581))

(declare-fun m!744583 () Bool)

(assert (=> d!179224 m!744583))

(declare-fun m!744585 () Bool)

(assert (=> b!470972 m!744585))

(assert (=> b!470944 d!179224))

(declare-fun e!287992 () Bool)

(declare-fun b!470984 () Bool)

(assert (=> b!470984 (= e!287992 (subseq!88 l!2882 (t!72924 (toList!301 (flatMap!67 s!1494 f!1027)))))))

(declare-fun b!470982 () Bool)

(declare-fun e!287991 () Bool)

(assert (=> b!470982 (= e!287991 e!287992)))

(declare-fun res!208747 () Bool)

(assert (=> b!470982 (=> res!208747 e!287992)))

(declare-fun e!287989 () Bool)

(assert (=> b!470982 (= res!208747 e!287989)))

(declare-fun res!208746 () Bool)

(assert (=> b!470982 (=> (not res!208746) (not e!287989))))

(assert (=> b!470982 (= res!208746 (= (h!9917 l!2882) (h!9917 (toList!301 (flatMap!67 s!1494 f!1027)))))))

(declare-fun d!179226 () Bool)

(declare-fun res!208749 () Bool)

(declare-fun e!287990 () Bool)

(assert (=> d!179226 (=> res!208749 e!287990)))

(assert (=> d!179226 (= res!208749 (is-Nil!4520 l!2882))))

(assert (=> d!179226 (= (subseq!88 l!2882 (toList!301 (flatMap!67 s!1494 f!1027))) e!287990)))

(declare-fun b!470983 () Bool)

(assert (=> b!470983 (= e!287989 (subseq!88 (t!72924 l!2882) (t!72924 (toList!301 (flatMap!67 s!1494 f!1027)))))))

(declare-fun b!470981 () Bool)

(assert (=> b!470981 (= e!287990 e!287991)))

(declare-fun res!208748 () Bool)

(assert (=> b!470981 (=> (not res!208748) (not e!287991))))

(assert (=> b!470981 (= res!208748 (is-Cons!4520 (toList!301 (flatMap!67 s!1494 f!1027))))))

(assert (= (and d!179226 (not res!208749)) b!470981))

(assert (= (and b!470981 res!208748) b!470982))

(assert (= (and b!470982 res!208746) b!470983))

(assert (= (and b!470982 (not res!208747)) b!470984))

(declare-fun m!744587 () Bool)

(assert (=> b!470984 m!744587))

(declare-fun m!744589 () Bool)

(assert (=> b!470983 m!744589))

(assert (=> b!470945 d!179226))

(declare-fun d!179228 () Bool)

(declare-fun e!287995 () Bool)

(assert (=> d!179228 e!287995))

(declare-fun res!208752 () Bool)

(assert (=> d!179228 (=> (not res!208752) (not e!287995))))

(declare-fun lt!209826 () List!4530)

(declare-fun noDuplicate!89 (List!4530) Bool)

(assert (=> d!179228 (= res!208752 (noDuplicate!89 lt!209826))))

(declare-fun choose!3531 ((Set B!887)) List!4530)

(assert (=> d!179228 (= lt!209826 (choose!3531 (flatMap!67 s!1494 f!1027)))))

(assert (=> d!179228 (= (toList!301 (flatMap!67 s!1494 f!1027)) lt!209826)))

(declare-fun b!470987 () Bool)

(assert (=> b!470987 (= e!287995 (= (content!766 lt!209826) (flatMap!67 s!1494 f!1027)))))

(assert (= (and d!179228 res!208752) b!470987))

(declare-fun m!744591 () Bool)

(assert (=> d!179228 m!744591))

(assert (=> d!179228 m!744563))

(declare-fun m!744593 () Bool)

(assert (=> d!179228 m!744593))

(declare-fun m!744595 () Bool)

(assert (=> b!470987 m!744595))

(assert (=> b!470945 d!179228))

(declare-fun d!179230 () Bool)

(declare-fun choose!3532 ((Set A!325) Int) (Set B!887))

(assert (=> d!179230 (= (flatMap!67 s!1494 f!1027) (choose!3532 s!1494 f!1027))))

(declare-fun bs!58388 () Bool)

(assert (= bs!58388 d!179230))

(declare-fun m!744597 () Bool)

(assert (=> bs!58388 m!744597))

(assert (=> b!470945 d!179230))

(declare-fun condSetEmpty!1842 () Bool)

(assert (=> setNonEmpty!1836 (= condSetEmpty!1842 (= setRest!1836 (as set.empty (Set A!325))))))

(declare-fun setRes!1842 () Bool)

(assert (=> setNonEmpty!1836 (= tp!130348 setRes!1842)))

(declare-fun setIsEmpty!1842 () Bool)

(assert (=> setIsEmpty!1842 setRes!1842))

(declare-fun setNonEmpty!1842 () Bool)

(declare-fun tp!130364 () Bool)

(assert (=> setNonEmpty!1842 (= setRes!1842 (and tp!130364 tp_is_empty!2031))))

(declare-fun setElem!1842 () A!325)

(declare-fun setRest!1842 () (Set A!325))

(assert (=> setNonEmpty!1842 (= setRest!1836 (set.union (set.insert setElem!1842 (as set.empty (Set A!325))) setRest!1842))))

(assert (= (and setNonEmpty!1836 condSetEmpty!1842) setIsEmpty!1842))

(assert (= (and setNonEmpty!1836 (not condSetEmpty!1842)) setNonEmpty!1842))

(declare-fun b!470994 () Bool)

(declare-fun e!287998 () Bool)

(declare-fun tp!130367 () Bool)

(assert (=> b!470994 (= e!287998 (and tp_is_empty!2029 tp!130367))))

(assert (=> b!470946 (= tp!130347 e!287998)))

(assert (= (and b!470946 (is-Cons!4520 (t!72924 l!2882))) b!470994))

(push 1)

(assert (not setNonEmpty!1842))

(assert b_and!50331)

(assert (not d!179224))

(assert (not b!470987))

(assert (not b_next!13063))

(assert (not b!470983))

(assert (not d!179228))

(assert (not d!179222))

(assert b_and!50329)

(assert (not b!470994))

(assert tp_is_empty!2029)

(assert (not b!470984))

(assert (not d!179230))

(assert (not b!470972))

(assert tp_is_empty!2031)

(assert (not b_next!13061))

(check-sat)

(pop 1)

(push 1)

(assert b_and!50329)

(assert b_and!50331)

(assert (not b_next!13063))

(assert (not b_next!13061))

(check-sat)

(pop 1)

