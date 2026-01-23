; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92378 () Bool)

(assert start!92378)

(declare-fun b!1085542 () Bool)

(assert (=> b!1085542 true))

(declare-fun bs!256568 () Bool)

(declare-fun b!1085547 () Bool)

(assert (= bs!256568 (and b!1085547 b!1085542)))

(declare-fun lambda!39844 () Int)

(declare-fun lambda!39843 () Int)

(assert (=> bs!256568 (not (= lambda!39844 lambda!39843))))

(declare-fun e!686537 () Bool)

(declare-fun b!1085539 () Bool)

(declare-fun e!686533 () Bool)

(declare-fun tp!324951 () Bool)

(declare-datatypes ((C!6568 0))(
  ( (C!6569 (val!3532 Int)) )
))
(declare-datatypes ((Regex!2999 0))(
  ( (ElementMatch!2999 (c!183439 C!6568)) (Concat!4832 (regOne!6510 Regex!2999) (regTwo!6510 Regex!2999)) (EmptyExpr!2999) (Star!2999 (reg!3328 Regex!2999)) (EmptyLang!2999) (Union!2999 (regOne!6511 Regex!2999) (regTwo!6511 Regex!2999)) )
))
(declare-datatypes ((List!10300 0))(
  ( (Nil!10284) (Cons!10284 (h!15685 Regex!2999) (t!101346 List!10300)) )
))
(declare-datatypes ((Context!958 0))(
  ( (Context!959 (exprs!979 List!10300)) )
))
(declare-datatypes ((List!10301 0))(
  ( (Nil!10285) (Cons!10285 (h!15686 Context!958) (t!101347 List!10301)) )
))
(declare-fun zl!316 () List!10301)

(declare-fun inv!13210 (Context!958) Bool)

(assert (=> b!1085539 (= e!686537 (and (inv!13210 (h!15686 zl!316)) e!686533 tp!324951))))

(declare-fun setIsEmpty!7536 () Bool)

(declare-fun setRes!7536 () Bool)

(assert (=> setIsEmpty!7536 setRes!7536))

(declare-fun b!1085540 () Bool)

(declare-fun e!686538 () Bool)

(declare-fun tp!324952 () Bool)

(assert (=> b!1085540 (= e!686538 tp!324952)))

(declare-fun b!1085541 () Bool)

(declare-fun e!686530 () Bool)

(declare-fun tp_is_empty!5629 () Bool)

(declare-fun tp!324950 () Bool)

(assert (=> b!1085541 (= e!686530 (and tp_is_empty!5629 tp!324950))))

(declare-fun e!686539 () Bool)

(declare-fun e!686540 () Bool)

(assert (=> b!1085542 (= e!686539 (not e!686540))))

(declare-fun res!482843 () Bool)

(assert (=> b!1085542 (=> res!482843 e!686540)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1122 () (InoxSet Context!958))

(declare-fun exists!140 ((InoxSet Context!958) Int) Bool)

(assert (=> b!1085542 (= res!482843 (not (exists!140 z!1122 lambda!39843)))))

(declare-fun exists!141 (List!10301 Int) Bool)

(assert (=> b!1085542 (exists!141 zl!316 lambda!39843)))

(declare-datatypes ((Unit!15683 0))(
  ( (Unit!15684) )
))
(declare-fun lt!363118 () Unit!15683)

(declare-datatypes ((List!10302 0))(
  ( (Nil!10286) (Cons!10286 (h!15687 C!6568) (t!101348 List!10302)) )
))
(declare-fun s!2287 () List!10302)

(declare-fun lemmaZipperMatchesExistsMatchingContext!26 (List!10301 List!10302) Unit!15683)

(assert (=> b!1085542 (= lt!363118 (lemmaZipperMatchesExistsMatchingContext!26 zl!316 s!2287))))

(declare-fun res!482849 () Bool)

(assert (=> start!92378 (=> (not res!482849) (not e!686539))))

(declare-fun toList!617 ((InoxSet Context!958)) List!10301)

(assert (=> start!92378 (= res!482849 (= (toList!617 z!1122) zl!316))))

(assert (=> start!92378 e!686539))

(declare-fun condSetEmpty!7536 () Bool)

(assert (=> start!92378 (= condSetEmpty!7536 (= z!1122 ((as const (Array Context!958 Bool)) false)))))

(assert (=> start!92378 setRes!7536))

(assert (=> start!92378 e!686537))

(assert (=> start!92378 e!686530))

(declare-fun b!1085543 () Bool)

(declare-fun e!686536 () Bool)

(declare-fun e!686535 () Bool)

(assert (=> b!1085543 (= e!686536 e!686535)))

(declare-fun res!482847 () Bool)

(assert (=> b!1085543 (=> res!482847 e!686535)))

(declare-fun lt!363125 () Bool)

(assert (=> b!1085543 (= res!482847 lt!363125)))

(declare-fun lt!363119 () Unit!15683)

(declare-fun e!686534 () Unit!15683)

(assert (=> b!1085543 (= lt!363119 e!686534)))

(declare-fun c!183438 () Bool)

(assert (=> b!1085543 (= c!183438 lt!363125)))

(declare-fun lt!363120 () Context!958)

(declare-fun lostCause!222 (Context!958) Bool)

(assert (=> b!1085543 (= lt!363125 (lostCause!222 lt!363120))))

(declare-fun b!1085544 () Bool)

(declare-fun e!686532 () Bool)

(assert (=> b!1085544 (= e!686532 e!686536)))

(declare-fun res!482846 () Bool)

(assert (=> b!1085544 (=> res!482846 e!686536)))

(declare-fun lt!363117 () (InoxSet Context!958))

(declare-fun matchZipper!47 ((InoxSet Context!958) List!10302) Bool)

(assert (=> b!1085544 (= res!482846 (not (matchZipper!47 lt!363117 s!2287)))))

(assert (=> b!1085544 (= lt!363117 (store ((as const (Array Context!958 Bool)) false) lt!363120 true))))

(declare-fun setElem!7536 () Context!958)

(declare-fun tp!324953 () Bool)

(declare-fun setNonEmpty!7536 () Bool)

(assert (=> setNonEmpty!7536 (= setRes!7536 (and tp!324953 (inv!13210 setElem!7536) e!686538))))

(declare-fun setRest!7536 () (InoxSet Context!958))

(assert (=> setNonEmpty!7536 (= z!1122 ((_ map or) (store ((as const (Array Context!958 Bool)) false) setElem!7536 true) setRest!7536))))

(declare-fun b!1085545 () Bool)

(declare-fun tp!324954 () Bool)

(assert (=> b!1085545 (= e!686533 tp!324954)))

(declare-fun b!1085546 () Bool)

(declare-fun e!686531 () Bool)

(declare-fun filter!161 ((InoxSet Context!958) Int) (InoxSet Context!958))

(assert (=> b!1085546 (= e!686531 (exists!140 (filter!161 z!1122 lambda!39844) lambda!39843))))

(declare-fun lt!363123 () (InoxSet Context!958))

(assert (=> b!1085546 (exists!140 lt!363123 lambda!39843)))

(declare-fun lt!363122 () Unit!15683)

(declare-fun lemmaContainsThenExists!21 ((InoxSet Context!958) Context!958 Int) Unit!15683)

(assert (=> b!1085546 (= lt!363122 (lemmaContainsThenExists!21 lt!363123 lt!363120 lambda!39843))))

(assert (=> b!1085546 (= lt!363123 (filter!161 z!1122 lambda!39844))))

(assert (=> b!1085547 (= e!686535 e!686531)))

(declare-fun res!482845 () Bool)

(assert (=> b!1085547 (=> res!482845 e!686531)))

(assert (=> b!1085547 (= res!482845 (not (select (filter!161 z!1122 lambda!39844) lt!363120)))))

(declare-fun lt!363121 () Unit!15683)

(declare-fun filterPost!12 ((InoxSet Context!958) Int Context!958) Unit!15683)

(assert (=> b!1085547 (= lt!363121 (filterPost!12 z!1122 lambda!39844 lt!363120))))

(declare-fun b!1085548 () Bool)

(declare-fun Unit!15685 () Unit!15683)

(assert (=> b!1085548 (= e!686534 Unit!15685)))

(declare-fun b!1085549 () Bool)

(declare-fun res!482844 () Bool)

(assert (=> b!1085549 (=> (not res!482844) (not e!686539))))

(assert (=> b!1085549 (= res!482844 (matchZipper!47 z!1122 s!2287))))

(declare-fun b!1085550 () Bool)

(declare-fun Unit!15686 () Unit!15683)

(assert (=> b!1085550 (= e!686534 Unit!15686)))

(declare-fun lt!363124 () Unit!15683)

(declare-fun lemmaLostCauseCannotMatch!11 ((InoxSet Context!958) List!10302) Unit!15683)

(assert (=> b!1085550 (= lt!363124 (lemmaLostCauseCannotMatch!11 lt!363117 s!2287))))

(assert (=> b!1085550 false))

(declare-fun b!1085551 () Bool)

(assert (=> b!1085551 (= e!686540 e!686532)))

(declare-fun res!482848 () Bool)

(assert (=> b!1085551 (=> res!482848 e!686532)))

(assert (=> b!1085551 (= res!482848 (not (select z!1122 lt!363120)))))

(declare-fun getWitness!66 ((InoxSet Context!958) Int) Context!958)

(assert (=> b!1085551 (= lt!363120 (getWitness!66 z!1122 lambda!39843))))

(assert (= (and start!92378 res!482849) b!1085549))

(assert (= (and b!1085549 res!482844) b!1085542))

(assert (= (and b!1085542 (not res!482843)) b!1085551))

(assert (= (and b!1085551 (not res!482848)) b!1085544))

(assert (= (and b!1085544 (not res!482846)) b!1085543))

(assert (= (and b!1085543 c!183438) b!1085550))

(assert (= (and b!1085543 (not c!183438)) b!1085548))

(assert (= (and b!1085543 (not res!482847)) b!1085547))

(assert (= (and b!1085547 (not res!482845)) b!1085546))

(assert (= (and start!92378 condSetEmpty!7536) setIsEmpty!7536))

(assert (= (and start!92378 (not condSetEmpty!7536)) setNonEmpty!7536))

(assert (= setNonEmpty!7536 b!1085540))

(assert (= b!1085539 b!1085545))

(get-info :version)

(assert (= (and start!92378 ((_ is Cons!10285) zl!316)) b!1085539))

(assert (= (and start!92378 ((_ is Cons!10286) s!2287)) b!1085541))

(declare-fun m!1235171 () Bool)

(assert (=> b!1085549 m!1235171))

(declare-fun m!1235173 () Bool)

(assert (=> b!1085539 m!1235173))

(declare-fun m!1235175 () Bool)

(assert (=> b!1085546 m!1235175))

(declare-fun m!1235177 () Bool)

(assert (=> b!1085546 m!1235177))

(declare-fun m!1235179 () Bool)

(assert (=> b!1085546 m!1235179))

(assert (=> b!1085546 m!1235177))

(declare-fun m!1235181 () Bool)

(assert (=> b!1085546 m!1235181))

(assert (=> b!1085546 m!1235177))

(declare-fun m!1235183 () Bool)

(assert (=> b!1085544 m!1235183))

(declare-fun m!1235185 () Bool)

(assert (=> b!1085544 m!1235185))

(assert (=> b!1085547 m!1235177))

(declare-fun m!1235187 () Bool)

(assert (=> b!1085547 m!1235187))

(declare-fun m!1235189 () Bool)

(assert (=> b!1085547 m!1235189))

(declare-fun m!1235191 () Bool)

(assert (=> b!1085551 m!1235191))

(declare-fun m!1235193 () Bool)

(assert (=> b!1085551 m!1235193))

(declare-fun m!1235195 () Bool)

(assert (=> b!1085543 m!1235195))

(declare-fun m!1235197 () Bool)

(assert (=> setNonEmpty!7536 m!1235197))

(declare-fun m!1235199 () Bool)

(assert (=> b!1085542 m!1235199))

(declare-fun m!1235201 () Bool)

(assert (=> b!1085542 m!1235201))

(declare-fun m!1235203 () Bool)

(assert (=> b!1085542 m!1235203))

(declare-fun m!1235205 () Bool)

(assert (=> start!92378 m!1235205))

(declare-fun m!1235207 () Bool)

(assert (=> b!1085550 m!1235207))

(check-sat (not b!1085542) (not b!1085545) (not b!1085543) tp_is_empty!5629 (not b!1085544) (not start!92378) (not setNonEmpty!7536) (not b!1085549) (not b!1085547) (not b!1085539) (not b!1085550) (not b!1085546) (not b!1085551) (not b!1085540) (not b!1085541))
(check-sat)
