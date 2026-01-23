; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92226 () Bool)

(assert start!92226)

(declare-fun bs!256457 () Bool)

(declare-fun b!1084791 () Bool)

(declare-fun b!1084789 () Bool)

(assert (= bs!256457 (and b!1084791 b!1084789)))

(declare-fun lambda!39587 () Int)

(declare-fun lambda!39586 () Int)

(assert (=> bs!256457 (not (= lambda!39587 lambda!39586))))

(assert (=> b!1084791 true))

(declare-fun b!1084784 () Bool)

(declare-fun e!685993 () Bool)

(assert (=> b!1084784 (= e!685993 true)))

(declare-datatypes ((Unit!15645 0))(
  ( (Unit!15646) )
))
(declare-fun lt!362830 () Unit!15645)

(declare-datatypes ((C!6540 0))(
  ( (C!6541 (val!3518 Int)) )
))
(declare-datatypes ((Regex!2985 0))(
  ( (ElementMatch!2985 (c!183212 C!6540)) (Concat!4818 (regOne!6482 Regex!2985) (regTwo!6482 Regex!2985)) (EmptyExpr!2985) (Star!2985 (reg!3314 Regex!2985)) (EmptyLang!2985) (Union!2985 (regOne!6483 Regex!2985) (regTwo!6483 Regex!2985)) )
))
(declare-datatypes ((List!10258 0))(
  ( (Nil!10242) (Cons!10242 (h!15643 Regex!2985) (t!101304 List!10258)) )
))
(declare-datatypes ((Context!930 0))(
  ( (Context!931 (exprs!965 List!10258)) )
))
(declare-fun lt!362828 () Context!930)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1122 () (InoxSet Context!930))

(declare-fun filterPost!6 ((InoxSet Context!930) Int Context!930) Unit!15645)

(assert (=> b!1084784 (= lt!362830 (filterPost!6 z!1122 lambda!39586 lt!362828))))

(declare-fun setElem!7470 () Context!930)

(declare-fun tp!324558 () Bool)

(declare-fun e!685991 () Bool)

(declare-fun setRes!7470 () Bool)

(declare-fun setNonEmpty!7470 () Bool)

(declare-fun inv!13175 (Context!930) Bool)

(assert (=> setNonEmpty!7470 (= setRes!7470 (and tp!324558 (inv!13175 setElem!7470) e!685991))))

(declare-fun setRest!7470 () (InoxSet Context!930))

(assert (=> setNonEmpty!7470 (= z!1122 ((_ map or) (store ((as const (Array Context!930 Bool)) false) setElem!7470 true) setRest!7470))))

(declare-fun b!1084785 () Bool)

(declare-fun e!685990 () Bool)

(assert (=> b!1084785 (= e!685990 e!685993)))

(declare-fun res!482580 () Bool)

(assert (=> b!1084785 (=> res!482580 e!685993)))

(declare-fun filter!155 ((InoxSet Context!930) Int) (InoxSet Context!930))

(assert (=> b!1084785 (= res!482580 (not (select (filter!155 z!1122 lambda!39586) lt!362828)))))

(declare-fun getWitness!50 ((InoxSet Context!930) Int) Context!930)

(assert (=> b!1084785 (= lt!362828 (getWitness!50 (filter!155 z!1122 lambda!39586) lambda!39587))))

(declare-fun b!1084786 () Bool)

(declare-fun res!482583 () Bool)

(assert (=> b!1084786 (=> res!482583 e!685993)))

(declare-datatypes ((List!10259 0))(
  ( (Nil!10243) (Cons!10243 (h!15644 C!6540) (t!101305 List!10259)) )
))
(declare-fun s!2287 () List!10259)

(declare-fun matchZipper!33 ((InoxSet Context!930) List!10259) Bool)

(assert (=> b!1084786 (= res!482583 (not (matchZipper!33 (store ((as const (Array Context!930 Bool)) false) lt!362828 true) s!2287)))))

(declare-fun b!1084787 () Bool)

(declare-fun e!685994 () Bool)

(declare-fun tp_is_empty!5601 () Bool)

(declare-fun tp!324559 () Bool)

(assert (=> b!1084787 (= e!685994 (and tp_is_empty!5601 tp!324559))))

(declare-fun setIsEmpty!7470 () Bool)

(assert (=> setIsEmpty!7470 setRes!7470))

(declare-fun b!1084788 () Bool)

(declare-fun res!482585 () Bool)

(declare-fun e!685995 () Bool)

(assert (=> b!1084788 (=> (not res!482585) (not e!685995))))

(assert (=> b!1084788 (= res!482585 (not (matchZipper!33 z!1122 s!2287)))))

(declare-fun res!482582 () Bool)

(assert (=> b!1084789 (=> (not res!482582) (not e!685995))))

(assert (=> b!1084789 (= res!482582 (matchZipper!33 (filter!155 z!1122 lambda!39586) s!2287))))

(declare-fun e!685992 () Bool)

(declare-fun e!685989 () Bool)

(declare-fun tp!324556 () Bool)

(declare-datatypes ((List!10260 0))(
  ( (Nil!10244) (Cons!10244 (h!15645 Context!930) (t!101306 List!10260)) )
))
(declare-fun zl!316 () List!10260)

(declare-fun b!1084790 () Bool)

(assert (=> b!1084790 (= e!685992 (and (inv!13175 (h!15645 zl!316)) e!685989 tp!324556))))

(assert (=> b!1084791 (= e!685995 (not e!685990))))

(declare-fun res!482584 () Bool)

(assert (=> b!1084791 (=> res!482584 e!685990)))

(declare-fun exists!111 ((InoxSet Context!930) Int) Bool)

(assert (=> b!1084791 (= res!482584 (not (exists!111 (filter!155 z!1122 lambda!39586) lambda!39587)))))

(declare-fun lt!362831 () List!10260)

(declare-fun exists!112 (List!10260 Int) Bool)

(assert (=> b!1084791 (exists!112 lt!362831 lambda!39587)))

(declare-fun lt!362829 () Unit!15645)

(declare-fun lemmaZipperMatchesExistsMatchingContext!12 (List!10260 List!10259) Unit!15645)

(assert (=> b!1084791 (= lt!362829 (lemmaZipperMatchesExistsMatchingContext!12 lt!362831 s!2287))))

(declare-fun toList!603 ((InoxSet Context!930)) List!10260)

(assert (=> b!1084791 (= lt!362831 (toList!603 (filter!155 z!1122 lambda!39586)))))

(declare-fun b!1084793 () Bool)

(declare-fun tp!324560 () Bool)

(assert (=> b!1084793 (= e!685989 tp!324560)))

(declare-fun b!1084792 () Bool)

(declare-fun tp!324557 () Bool)

(assert (=> b!1084792 (= e!685991 tp!324557)))

(declare-fun res!482581 () Bool)

(assert (=> start!92226 (=> (not res!482581) (not e!685995))))

(assert (=> start!92226 (= res!482581 (= (toList!603 z!1122) zl!316))))

(assert (=> start!92226 e!685995))

(declare-fun condSetEmpty!7470 () Bool)

(assert (=> start!92226 (= condSetEmpty!7470 (= z!1122 ((as const (Array Context!930 Bool)) false)))))

(assert (=> start!92226 setRes!7470))

(assert (=> start!92226 e!685992))

(assert (=> start!92226 e!685994))

(assert (= (and start!92226 res!482581) b!1084788))

(assert (= (and b!1084788 res!482585) b!1084789))

(assert (= (and b!1084789 res!482582) b!1084791))

(assert (= (and b!1084791 (not res!482584)) b!1084785))

(assert (= (and b!1084785 (not res!482580)) b!1084786))

(assert (= (and b!1084786 (not res!482583)) b!1084784))

(assert (= (and start!92226 condSetEmpty!7470) setIsEmpty!7470))

(assert (= (and start!92226 (not condSetEmpty!7470)) setNonEmpty!7470))

(assert (= setNonEmpty!7470 b!1084792))

(assert (= b!1084790 b!1084793))

(get-info :version)

(assert (= (and start!92226 ((_ is Cons!10244) zl!316)) b!1084790))

(assert (= (and start!92226 ((_ is Cons!10243) s!2287)) b!1084787))

(declare-fun m!1234403 () Bool)

(assert (=> b!1084790 m!1234403))

(declare-fun m!1234405 () Bool)

(assert (=> b!1084785 m!1234405))

(declare-fun m!1234407 () Bool)

(assert (=> b!1084785 m!1234407))

(assert (=> b!1084785 m!1234405))

(assert (=> b!1084785 m!1234405))

(declare-fun m!1234409 () Bool)

(assert (=> b!1084785 m!1234409))

(declare-fun m!1234411 () Bool)

(assert (=> b!1084786 m!1234411))

(assert (=> b!1084786 m!1234411))

(declare-fun m!1234413 () Bool)

(assert (=> b!1084786 m!1234413))

(assert (=> b!1084789 m!1234405))

(assert (=> b!1084789 m!1234405))

(declare-fun m!1234415 () Bool)

(assert (=> b!1084789 m!1234415))

(declare-fun m!1234417 () Bool)

(assert (=> start!92226 m!1234417))

(declare-fun m!1234419 () Bool)

(assert (=> setNonEmpty!7470 m!1234419))

(declare-fun m!1234421 () Bool)

(assert (=> b!1084784 m!1234421))

(assert (=> b!1084791 m!1234405))

(declare-fun m!1234423 () Bool)

(assert (=> b!1084791 m!1234423))

(assert (=> b!1084791 m!1234405))

(assert (=> b!1084791 m!1234405))

(declare-fun m!1234425 () Bool)

(assert (=> b!1084791 m!1234425))

(declare-fun m!1234427 () Bool)

(assert (=> b!1084791 m!1234427))

(assert (=> b!1084791 m!1234405))

(declare-fun m!1234429 () Bool)

(assert (=> b!1084791 m!1234429))

(declare-fun m!1234431 () Bool)

(assert (=> b!1084788 m!1234431))

(check-sat (not b!1084784) (not b!1084787) (not b!1084785) tp_is_empty!5601 (not b!1084789) (not b!1084788) (not b!1084791) (not b!1084793) (not start!92226) (not b!1084786) (not b!1084790) (not b!1084792) (not setNonEmpty!7470))
(check-sat)
