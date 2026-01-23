; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282832 () Bool)

(assert start!282832)

(declare-fun b!2906751 () Bool)

(declare-fun e!1834865 () Bool)

(declare-fun tp_is_empty!15379 () Bool)

(declare-fun tp!933627 () Bool)

(assert (=> b!2906751 (= e!1834865 (and tp_is_empty!15379 tp!933627))))

(declare-fun b!2906752 () Bool)

(declare-fun res!1200388 () Bool)

(declare-fun e!1834864 () Bool)

(assert (=> b!2906752 (=> (not res!1200388) (not e!1834864))))

(declare-datatypes ((C!17974 0))(
  ( (C!17975 (val!11021 Int)) )
))
(declare-datatypes ((Regex!8896 0))(
  ( (ElementMatch!8896 (c!473703 C!17974)) (Concat!14217 (regOne!18304 Regex!8896) (regTwo!18304 Regex!8896)) (EmptyExpr!8896) (Star!8896 (reg!9225 Regex!8896)) (EmptyLang!8896) (Union!8896 (regOne!18305 Regex!8896) (regTwo!18305 Regex!8896)) )
))
(declare-datatypes ((List!34701 0))(
  ( (Nil!34577) (Cons!34577 (h!39997 Regex!8896) (t!233744 List!34701)) )
))
(declare-datatypes ((Context!5448 0))(
  ( (Context!5449 (exprs!3224 List!34701)) )
))
(declare-fun z!791 () (Set Context!5448))

(declare-datatypes ((List!34702 0))(
  ( (Nil!34578) (Cons!34578 (h!39998 C!17974) (t!233745 List!34702)) )
))
(declare-fun s!1964 () List!34702)

(declare-fun matchZipper!504 ((Set Context!5448) List!34702) Bool)

(assert (=> b!2906752 (= res!1200388 (matchZipper!504 z!791 s!1964))))

(declare-fun b!2906753 () Bool)

(declare-fun e!1834867 () Bool)

(declare-fun tp!933626 () Bool)

(assert (=> b!2906753 (= e!1834867 tp!933626)))

(declare-fun b!2906754 () Bool)

(assert (=> b!2906754 (= e!1834864 (not true))))

(assert (=> b!2906754 false))

(declare-datatypes ((Unit!48141 0))(
  ( (Unit!48142) )
))
(declare-fun lt!1022603 () Unit!48141)

(declare-fun prefix!853 () List!34702)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!207 ((Set Context!5448) List!34702 List!34702) Unit!48141)

(assert (=> b!2906754 (= lt!1022603 (lemmaNotPrefixMatchThenCannotMatchLonger!207 z!791 prefix!853 s!1964))))

(declare-fun b!2906755 () Bool)

(declare-fun e!1834866 () Bool)

(declare-fun tp!933625 () Bool)

(assert (=> b!2906755 (= e!1834866 (and tp_is_empty!15379 tp!933625))))

(declare-fun res!1200386 () Bool)

(assert (=> start!282832 (=> (not res!1200386) (not e!1834864))))

(declare-fun isPrefix!2733 (List!34702 List!34702) Bool)

(assert (=> start!282832 (= res!1200386 (isPrefix!2733 prefix!853 s!1964))))

(assert (=> start!282832 e!1834864))

(assert (=> start!282832 e!1834865))

(assert (=> start!282832 e!1834866))

(declare-fun condSetEmpty!25730 () Bool)

(assert (=> start!282832 (= condSetEmpty!25730 (= z!791 (as set.empty (Set Context!5448))))))

(declare-fun setRes!25730 () Bool)

(assert (=> start!282832 setRes!25730))

(declare-fun setIsEmpty!25730 () Bool)

(assert (=> setIsEmpty!25730 setRes!25730))

(declare-fun b!2906756 () Bool)

(declare-fun res!1200387 () Bool)

(assert (=> b!2906756 (=> (not res!1200387) (not e!1834864))))

(declare-fun prefixMatchZipper!340 ((Set Context!5448) List!34702) Bool)

(assert (=> b!2906756 (= res!1200387 (not (prefixMatchZipper!340 z!791 prefix!853)))))

(declare-fun setElem!25730 () Context!5448)

(declare-fun tp!933624 () Bool)

(declare-fun setNonEmpty!25730 () Bool)

(declare-fun inv!46696 (Context!5448) Bool)

(assert (=> setNonEmpty!25730 (= setRes!25730 (and tp!933624 (inv!46696 setElem!25730) e!1834867))))

(declare-fun setRest!25730 () (Set Context!5448))

(assert (=> setNonEmpty!25730 (= z!791 (set.union (set.insert setElem!25730 (as set.empty (Set Context!5448))) setRest!25730))))

(assert (= (and start!282832 res!1200386) b!2906752))

(assert (= (and b!2906752 res!1200388) b!2906756))

(assert (= (and b!2906756 res!1200387) b!2906754))

(assert (= (and start!282832 (is-Cons!34578 prefix!853)) b!2906751))

(assert (= (and start!282832 (is-Cons!34578 s!1964)) b!2906755))

(assert (= (and start!282832 condSetEmpty!25730) setIsEmpty!25730))

(assert (= (and start!282832 (not condSetEmpty!25730)) setNonEmpty!25730))

(assert (= setNonEmpty!25730 b!2906753))

(declare-fun m!3308615 () Bool)

(assert (=> b!2906754 m!3308615))

(declare-fun m!3308617 () Bool)

(assert (=> b!2906756 m!3308617))

(declare-fun m!3308619 () Bool)

(assert (=> b!2906752 m!3308619))

(declare-fun m!3308621 () Bool)

(assert (=> setNonEmpty!25730 m!3308621))

(declare-fun m!3308623 () Bool)

(assert (=> start!282832 m!3308623))

(push 1)

(assert (not start!282832))

(assert tp_is_empty!15379)

(assert (not b!2906751))

(assert (not setNonEmpty!25730))

(assert (not b!2906756))

(assert (not b!2906755))

(assert (not b!2906752))

(assert (not b!2906754))

(assert (not b!2906753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

