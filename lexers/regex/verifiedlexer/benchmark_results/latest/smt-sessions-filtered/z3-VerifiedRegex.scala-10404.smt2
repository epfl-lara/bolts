; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538560 () Bool)

(assert start!538560)

(declare-fun b!5107534 () Bool)

(declare-fun e!3185546 () Bool)

(declare-fun tp_is_empty!37471 () Bool)

(declare-fun tp!1424727 () Bool)

(assert (=> b!5107534 (= e!3185546 (and tp_is_empty!37471 tp!1424727))))

(declare-fun b!5107535 () Bool)

(declare-fun e!3185544 () Bool)

(declare-fun tp!1424730 () Bool)

(assert (=> b!5107535 (= e!3185544 (and tp_is_empty!37471 tp!1424730))))

(declare-fun b!5107536 () Bool)

(declare-fun e!3185543 () Bool)

(declare-fun tp!1424728 () Bool)

(assert (=> b!5107536 (= e!3185543 (and tp_is_empty!37471 tp!1424728))))

(declare-fun b!5107537 () Bool)

(declare-fun e!3185545 () Bool)

(declare-fun e!3185547 () Bool)

(assert (=> b!5107537 (= e!3185545 e!3185547)))

(declare-fun res!2173978 () Bool)

(assert (=> b!5107537 (=> (not res!2173978) (not e!3185547))))

(declare-datatypes ((C!28464 0))(
  ( (C!28465 (val!23884 Int)) )
))
(declare-datatypes ((List!59068 0))(
  ( (Nil!58944) (Cons!58944 (h!65392 C!28464) (t!372069 List!59068)) )
))
(declare-fun input!5723 () List!59068)

(declare-fun lt!2102827 () Int)

(declare-fun lt!2102826 () Int)

(declare-fun returnP!41 () List!59068)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!14099 0))(
  ( (ElementMatch!14099 (c!877407 C!28464)) (Concat!22944 (regOne!28710 Regex!14099) (regTwo!28710 Regex!14099)) (EmptyExpr!14099) (Star!14099 (reg!14428 Regex!14099)) (EmptyLang!14099) (Union!14099 (regOne!28711 Regex!14099) (regTwo!28711 Regex!14099)) )
))
(declare-datatypes ((List!59069 0))(
  ( (Nil!58945) (Cons!58945 (h!65393 Regex!14099) (t!372070 List!59069)) )
))
(declare-datatypes ((Context!6966 0))(
  ( (Context!6967 (exprs!3983 List!59069)) )
))
(declare-fun baseZ!39 () (InoxSet Context!6966))

(declare-datatypes ((tuple2!63584 0))(
  ( (tuple2!63585 (_1!35095 List!59068) (_2!35095 List!59068)) )
))
(declare-fun findLongestMatchInnerZipper!173 ((InoxSet Context!6966) List!59068 Int List!59068 List!59068 Int) tuple2!63584)

(assert (=> b!5107537 (= res!2173978 (= (_1!35095 (findLongestMatchInnerZipper!173 baseZ!39 Nil!58944 lt!2102827 input!5723 input!5723 lt!2102826)) returnP!41))))

(declare-fun size!39405 (List!59068) Int)

(assert (=> b!5107537 (= lt!2102826 (size!39405 input!5723))))

(assert (=> b!5107537 (= lt!2102827 (size!39405 Nil!58944))))

(declare-fun setNonEmpty!29440 () Bool)

(declare-fun tp!1424731 () Bool)

(declare-fun e!3185541 () Bool)

(declare-fun setRes!29440 () Bool)

(declare-fun setElem!29440 () Context!6966)

(declare-fun inv!78428 (Context!6966) Bool)

(assert (=> setNonEmpty!29440 (= setRes!29440 (and tp!1424731 (inv!78428 setElem!29440) e!3185541))))

(declare-fun setRest!29440 () (InoxSet Context!6966))

(assert (=> setNonEmpty!29440 (= baseZ!39 ((_ map or) (store ((as const (Array Context!6966 Bool)) false) setElem!29440 true) setRest!29440))))

(declare-fun setIsEmpty!29440 () Bool)

(assert (=> setIsEmpty!29440 setRes!29440))

(declare-fun b!5107538 () Bool)

(declare-fun tp!1424729 () Bool)

(assert (=> b!5107538 (= e!3185541 tp!1424729)))

(declare-fun b!5107539 () Bool)

(declare-fun e!3185542 () Bool)

(assert (=> b!5107539 (= e!3185542 e!3185545)))

(declare-fun res!2173980 () Bool)

(assert (=> b!5107539 (=> (not res!2173980) (not e!3185545))))

(declare-fun lt!2102825 () Int)

(declare-fun lt!2102824 () Int)

(assert (=> b!5107539 (= res!2173980 (>= lt!2102825 lt!2102824))))

(assert (=> b!5107539 (= lt!2102824 (size!39405 returnP!41))))

(declare-fun bigger!41 () List!59068)

(assert (=> b!5107539 (= lt!2102825 (size!39405 bigger!41))))

(declare-fun b!5107540 () Bool)

(declare-fun res!2173981 () Bool)

(assert (=> b!5107540 (=> (not res!2173981) (not e!3185547))))

(declare-fun matchZipper!767 ((InoxSet Context!6966) List!59068) Bool)

(assert (=> b!5107540 (= res!2173981 (matchZipper!767 baseZ!39 bigger!41))))

(declare-fun b!5107541 () Bool)

(assert (=> b!5107541 (= e!3185547 (not true))))

(declare-fun getSuffix!3184 (List!59068 List!59068) List!59068)

(assert (=> b!5107541 (>= (size!39405 (_1!35095 (findLongestMatchInnerZipper!173 baseZ!39 Nil!58944 lt!2102827 (getSuffix!3184 input!5723 Nil!58944) input!5723 lt!2102826))) lt!2102825)))

(declare-datatypes ((Unit!150019 0))(
  ( (Unit!150020) )
))
(declare-fun lt!2102828 () Unit!150019)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!5 ((InoxSet Context!6966) (InoxSet Context!6966) List!59068 List!59068 List!59068) Unit!150019)

(assert (=> b!5107541 (= lt!2102828 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThat!5 baseZ!39 baseZ!39 input!5723 Nil!58944 bigger!41))))

(declare-fun b!5107542 () Bool)

(declare-fun res!2173982 () Bool)

(assert (=> b!5107542 (=> (not res!2173982) (not e!3185542))))

(declare-fun isPrefix!5504 (List!59068 List!59068) Bool)

(assert (=> b!5107542 (= res!2173982 (isPrefix!5504 bigger!41 input!5723))))

(declare-fun b!5107543 () Bool)

(declare-fun res!2173979 () Bool)

(assert (=> b!5107543 (=> (not res!2173979) (not e!3185547))))

(assert (=> b!5107543 (= res!2173979 (not (= lt!2102825 lt!2102824)))))

(declare-fun res!2173977 () Bool)

(assert (=> start!538560 (=> (not res!2173977) (not e!3185542))))

(assert (=> start!538560 (= res!2173977 (isPrefix!5504 returnP!41 input!5723))))

(assert (=> start!538560 e!3185542))

(assert (=> start!538560 e!3185544))

(assert (=> start!538560 e!3185546))

(assert (=> start!538560 e!3185543))

(declare-fun condSetEmpty!29440 () Bool)

(assert (=> start!538560 (= condSetEmpty!29440 (= baseZ!39 ((as const (Array Context!6966 Bool)) false)))))

(assert (=> start!538560 setRes!29440))

(assert (= (and start!538560 res!2173977) b!5107542))

(assert (= (and b!5107542 res!2173982) b!5107539))

(assert (= (and b!5107539 res!2173980) b!5107537))

(assert (= (and b!5107537 res!2173978) b!5107543))

(assert (= (and b!5107543 res!2173979) b!5107540))

(assert (= (and b!5107540 res!2173981) b!5107541))

(get-info :version)

(assert (= (and start!538560 ((_ is Cons!58944) returnP!41)) b!5107535))

(assert (= (and start!538560 ((_ is Cons!58944) input!5723)) b!5107534))

(assert (= (and start!538560 ((_ is Cons!58944) bigger!41)) b!5107536))

(assert (= (and start!538560 condSetEmpty!29440) setIsEmpty!29440))

(assert (= (and start!538560 (not condSetEmpty!29440)) setNonEmpty!29440))

(assert (= setNonEmpty!29440 b!5107538))

(declare-fun m!6164740 () Bool)

(assert (=> b!5107537 m!6164740))

(declare-fun m!6164742 () Bool)

(assert (=> b!5107537 m!6164742))

(declare-fun m!6164744 () Bool)

(assert (=> b!5107537 m!6164744))

(declare-fun m!6164746 () Bool)

(assert (=> b!5107541 m!6164746))

(assert (=> b!5107541 m!6164746))

(declare-fun m!6164748 () Bool)

(assert (=> b!5107541 m!6164748))

(declare-fun m!6164750 () Bool)

(assert (=> b!5107541 m!6164750))

(declare-fun m!6164752 () Bool)

(assert (=> b!5107541 m!6164752))

(declare-fun m!6164754 () Bool)

(assert (=> b!5107542 m!6164754))

(declare-fun m!6164756 () Bool)

(assert (=> b!5107540 m!6164756))

(declare-fun m!6164758 () Bool)

(assert (=> b!5107539 m!6164758))

(declare-fun m!6164760 () Bool)

(assert (=> b!5107539 m!6164760))

(declare-fun m!6164762 () Bool)

(assert (=> setNonEmpty!29440 m!6164762))

(declare-fun m!6164764 () Bool)

(assert (=> start!538560 m!6164764))

(check-sat (not setNonEmpty!29440) (not b!5107537) tp_is_empty!37471 (not b!5107534) (not b!5107542) (not b!5107536) (not b!5107535) (not b!5107541) (not b!5107539) (not b!5107538) (not b!5107540) (not start!538560))
(check-sat)
