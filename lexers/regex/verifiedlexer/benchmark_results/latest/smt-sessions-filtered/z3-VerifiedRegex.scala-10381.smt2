; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!538180 () Bool)

(assert start!538180)

(declare-fun b!5103312 () Bool)

(declare-fun e!3182801 () Bool)

(declare-fun tp!1423487 () Bool)

(declare-fun tp!1423485 () Bool)

(assert (=> b!5103312 (= e!3182801 (and tp!1423487 tp!1423485))))

(declare-fun b!5103313 () Bool)

(declare-fun e!3182808 () Bool)

(declare-fun e!3182804 () Bool)

(assert (=> b!5103313 (= e!3182808 e!3182804)))

(declare-fun res!2172038 () Bool)

(assert (=> b!5103313 (=> res!2172038 e!3182804)))

(declare-fun e!3182800 () Bool)

(assert (=> b!5103313 (= res!2172038 e!3182800)))

(declare-fun res!2172030 () Bool)

(assert (=> b!5103313 (=> (not res!2172030) (not e!3182800))))

(declare-fun lt!2099332 () Bool)

(assert (=> b!5103313 (= res!2172030 (not lt!2099332))))

(declare-datatypes ((C!28372 0))(
  ( (C!28373 (val!23838 Int)) )
))
(declare-datatypes ((Regex!14057 0))(
  ( (ElementMatch!14057 (c!876747 C!28372)) (Concat!22902 (regOne!28626 Regex!14057) (regTwo!28626 Regex!14057)) (EmptyExpr!14057) (Star!14057 (reg!14386 Regex!14057)) (EmptyLang!14057) (Union!14057 (regOne!28627 Regex!14057) (regTwo!28627 Regex!14057)) )
))
(declare-fun r!12920 () Regex!14057)

(declare-datatypes ((List!58957 0))(
  ( (Nil!58833) (Cons!58833 (h!65281 C!28372) (t!371958 List!58957)) )
))
(declare-datatypes ((tuple2!63500 0))(
  ( (tuple2!63501 (_1!35053 List!58957) (_2!35053 List!58957)) )
))
(declare-fun lt!2099331 () tuple2!63500)

(declare-fun matchR!6842 (Regex!14057 List!58957) Bool)

(assert (=> b!5103313 (= lt!2099332 (matchR!6842 r!12920 (_1!35053 lt!2099331)))))

(declare-fun b!5103314 () Bool)

(declare-fun e!3182807 () Bool)

(declare-fun e!3182802 () Bool)

(assert (=> b!5103314 (= e!3182807 e!3182802)))

(declare-fun res!2172036 () Bool)

(assert (=> b!5103314 (=> (not res!2172036) (not e!3182802))))

(declare-fun lt!2099320 () List!58957)

(declare-fun input!5654 () List!58957)

(assert (=> b!5103314 (= res!2172036 (= lt!2099320 input!5654))))

(declare-fun ++!12906 (List!58957 List!58957) List!58957)

(assert (=> b!5103314 (= lt!2099320 (++!12906 (_1!35053 lt!2099331) (_2!35053 lt!2099331)))))

(declare-fun b!5103315 () Bool)

(declare-fun e!3182799 () Bool)

(declare-fun lt!2099322 () tuple2!63500)

(declare-fun isEmpty!31802 (List!58957) Bool)

(assert (=> b!5103315 (= e!3182799 (not (isEmpty!31802 (_1!35053 lt!2099322))))))

(declare-fun b!5103316 () Bool)

(assert (=> b!5103316 (= e!3182804 true)))

(declare-fun lt!2099321 () Int)

(declare-fun size!39359 (List!58957) Int)

(assert (=> b!5103316 (= lt!2099321 (size!39359 (_1!35053 lt!2099322)))))

(declare-fun lt!2099326 () Int)

(assert (=> b!5103316 (= lt!2099326 (size!39359 (_1!35053 lt!2099331)))))

(declare-fun lt!2099315 () Bool)

(assert (=> b!5103316 (= (matchR!6842 r!12920 (_1!35053 lt!2099322)) lt!2099315)))

(declare-datatypes ((List!58958 0))(
  ( (Nil!58834) (Cons!58834 (h!65282 Regex!14057) (t!371959 List!58958)) )
))
(declare-datatypes ((Context!6882 0))(
  ( (Context!6883 (exprs!3941 List!58958)) )
))
(declare-datatypes ((List!58959 0))(
  ( (Nil!58835) (Cons!58835 (h!65283 Context!6882) (t!371960 List!58959)) )
))
(declare-fun lt!2099327 () List!58959)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4303 () (InoxSet Context!6882))

(declare-datatypes ((Unit!149886 0))(
  ( (Unit!149887) )
))
(declare-fun lt!2099319 () Unit!149886)

(declare-fun theoremZipperRegexEquiv!221 ((InoxSet Context!6882) List!58959 Regex!14057 List!58957) Unit!149886)

(assert (=> b!5103316 (= lt!2099319 (theoremZipperRegexEquiv!221 z!4303 lt!2099327 r!12920 (_1!35053 lt!2099322)))))

(declare-fun matchZipper!729 ((InoxSet Context!6882) List!58957) Bool)

(assert (=> b!5103316 (= lt!2099332 (matchZipper!729 z!4303 (_1!35053 lt!2099331)))))

(declare-fun lt!2099325 () Unit!149886)

(assert (=> b!5103316 (= lt!2099325 (theoremZipperRegexEquiv!221 z!4303 lt!2099327 r!12920 (_1!35053 lt!2099331)))))

(declare-fun b!5103317 () Bool)

(declare-fun e!3182798 () Bool)

(declare-fun lt!2099324 () tuple2!63500)

(assert (=> b!5103317 (= e!3182798 (matchZipper!729 z!4303 (_1!35053 lt!2099324)))))

(declare-fun res!2172031 () Bool)

(declare-fun e!3182805 () Bool)

(assert (=> start!538180 (=> (not res!2172031) (not e!3182805))))

(declare-fun validRegex!6184 (Regex!14057) Bool)

(assert (=> start!538180 (= res!2172031 (validRegex!6184 r!12920))))

(assert (=> start!538180 e!3182805))

(assert (=> start!538180 e!3182801))

(declare-fun condSetEmpty!29272 () Bool)

(assert (=> start!538180 (= condSetEmpty!29272 (= z!4303 ((as const (Array Context!6882 Bool)) false)))))

(declare-fun setRes!29272 () Bool)

(assert (=> start!538180 setRes!29272))

(declare-fun e!3182806 () Bool)

(assert (=> start!538180 e!3182806))

(declare-fun b!5103318 () Bool)

(assert (=> b!5103318 (= e!3182802 (not e!3182808))))

(declare-fun res!2172032 () Bool)

(assert (=> b!5103318 (=> res!2172032 e!3182808)))

(assert (=> b!5103318 (= res!2172032 e!3182799)))

(declare-fun res!2172034 () Bool)

(assert (=> b!5103318 (=> (not res!2172034) (not e!3182799))))

(assert (=> b!5103318 (= res!2172034 (not lt!2099315))))

(assert (=> b!5103318 (= lt!2099315 (matchZipper!729 z!4303 (_1!35053 lt!2099322)))))

(declare-fun e!3182797 () Bool)

(assert (=> b!5103318 e!3182797))

(declare-fun res!2172033 () Bool)

(assert (=> b!5103318 (=> res!2172033 e!3182797)))

(declare-fun lt!2099314 () tuple2!63500)

(assert (=> b!5103318 (= res!2172033 (isEmpty!31802 (_1!35053 lt!2099314)))))

(declare-fun lt!2099323 () Int)

(declare-fun lt!2099330 () Int)

(declare-fun findLongestMatchInner!2070 (Regex!14057 List!58957 Int List!58957 List!58957 Int) tuple2!63500)

(assert (=> b!5103318 (= lt!2099314 (findLongestMatchInner!2070 r!12920 Nil!58833 lt!2099323 input!5654 input!5654 lt!2099330))))

(declare-fun lt!2099328 () Unit!149886)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2060 (Regex!14057 List!58957) Unit!149886)

(assert (=> b!5103318 (= lt!2099328 (longestMatchIsAcceptedByMatchOrIsEmpty!2060 r!12920 input!5654))))

(assert (=> b!5103318 e!3182798))

(declare-fun res!2172035 () Bool)

(assert (=> b!5103318 (=> res!2172035 e!3182798)))

(assert (=> b!5103318 (= res!2172035 (isEmpty!31802 (_1!35053 lt!2099324)))))

(declare-fun findLongestMatchInnerZipper!131 ((InoxSet Context!6882) List!58957 Int List!58957 List!58957 Int) tuple2!63500)

(assert (=> b!5103318 (= lt!2099324 (findLongestMatchInnerZipper!131 z!4303 Nil!58833 lt!2099323 input!5654 input!5654 lt!2099330))))

(assert (=> b!5103318 (= lt!2099330 (size!39359 input!5654))))

(assert (=> b!5103318 (= lt!2099323 (size!39359 Nil!58833))))

(declare-fun lt!2099318 () Unit!149886)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2061 ((InoxSet Context!6882) List!58957) Unit!149886)

(assert (=> b!5103318 (= lt!2099318 (longestMatchIsAcceptedByMatchOrIsEmpty!2061 z!4303 input!5654))))

(declare-fun isPrefix!5458 (List!58957 List!58957) Bool)

(assert (=> b!5103318 (isPrefix!5458 (_1!35053 lt!2099331) lt!2099320)))

(declare-fun lt!2099329 () Unit!149886)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3516 (List!58957 List!58957) Unit!149886)

(assert (=> b!5103318 (= lt!2099329 (lemmaConcatTwoListThenFirstIsPrefix!3516 (_1!35053 lt!2099331) (_2!35053 lt!2099331)))))

(declare-fun lt!2099316 () List!58957)

(assert (=> b!5103318 (isPrefix!5458 (_1!35053 lt!2099322) lt!2099316)))

(declare-fun lt!2099317 () Unit!149886)

(assert (=> b!5103318 (= lt!2099317 (lemmaConcatTwoListThenFirstIsPrefix!3516 (_1!35053 lt!2099322) (_2!35053 lt!2099322)))))

(declare-fun b!5103319 () Bool)

(assert (=> b!5103319 (= e!3182800 (not (isEmpty!31802 (_1!35053 lt!2099331))))))

(declare-fun b!5103320 () Bool)

(declare-fun e!3182809 () Bool)

(assert (=> b!5103320 (= e!3182809 e!3182807)))

(declare-fun res!2172037 () Bool)

(assert (=> b!5103320 (=> (not res!2172037) (not e!3182807))))

(assert (=> b!5103320 (= res!2172037 (= lt!2099316 input!5654))))

(assert (=> b!5103320 (= lt!2099316 (++!12906 (_1!35053 lt!2099322) (_2!35053 lt!2099322)))))

(declare-fun findLongestMatch!1887 (Regex!14057 List!58957) tuple2!63500)

(assert (=> b!5103320 (= lt!2099331 (findLongestMatch!1887 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!81 ((InoxSet Context!6882) List!58957) tuple2!63500)

(assert (=> b!5103320 (= lt!2099322 (findLongestMatchZipper!81 z!4303 input!5654))))

(declare-fun b!5103321 () Bool)

(assert (=> b!5103321 (= e!3182805 e!3182809)))

(declare-fun res!2172029 () Bool)

(assert (=> b!5103321 (=> (not res!2172029) (not e!3182809))))

(declare-fun unfocusZipper!399 (List!58959) Regex!14057)

(assert (=> b!5103321 (= res!2172029 (= (unfocusZipper!399 lt!2099327) r!12920))))

(declare-fun toList!8191 ((InoxSet Context!6882)) List!58959)

(assert (=> b!5103321 (= lt!2099327 (toList!8191 z!4303))))

(declare-fun b!5103322 () Bool)

(declare-fun tp!1423483 () Bool)

(declare-fun tp!1423481 () Bool)

(assert (=> b!5103322 (= e!3182801 (and tp!1423483 tp!1423481))))

(declare-fun b!5103323 () Bool)

(declare-fun tp_is_empty!37379 () Bool)

(declare-fun tp!1423484 () Bool)

(assert (=> b!5103323 (= e!3182806 (and tp_is_empty!37379 tp!1423484))))

(declare-fun b!5103324 () Bool)

(assert (=> b!5103324 (= e!3182797 (matchR!6842 r!12920 (_1!35053 lt!2099314)))))

(declare-fun b!5103325 () Bool)

(declare-fun tp!1423482 () Bool)

(assert (=> b!5103325 (= e!3182801 tp!1423482)))

(declare-fun tp!1423480 () Bool)

(declare-fun setElem!29272 () Context!6882)

(declare-fun e!3182803 () Bool)

(declare-fun setNonEmpty!29272 () Bool)

(declare-fun inv!78317 (Context!6882) Bool)

(assert (=> setNonEmpty!29272 (= setRes!29272 (and tp!1423480 (inv!78317 setElem!29272) e!3182803))))

(declare-fun setRest!29272 () (InoxSet Context!6882))

(assert (=> setNonEmpty!29272 (= z!4303 ((_ map or) (store ((as const (Array Context!6882 Bool)) false) setElem!29272 true) setRest!29272))))

(declare-fun setIsEmpty!29272 () Bool)

(assert (=> setIsEmpty!29272 setRes!29272))

(declare-fun b!5103326 () Bool)

(assert (=> b!5103326 (= e!3182801 tp_is_empty!37379)))

(declare-fun b!5103327 () Bool)

(declare-fun tp!1423486 () Bool)

(assert (=> b!5103327 (= e!3182803 tp!1423486)))

(assert (= (and start!538180 res!2172031) b!5103321))

(assert (= (and b!5103321 res!2172029) b!5103320))

(assert (= (and b!5103320 res!2172037) b!5103314))

(assert (= (and b!5103314 res!2172036) b!5103318))

(assert (= (and b!5103318 (not res!2172035)) b!5103317))

(assert (= (and b!5103318 (not res!2172033)) b!5103324))

(assert (= (and b!5103318 res!2172034) b!5103315))

(assert (= (and b!5103318 (not res!2172032)) b!5103313))

(assert (= (and b!5103313 res!2172030) b!5103319))

(assert (= (and b!5103313 (not res!2172038)) b!5103316))

(get-info :version)

(assert (= (and start!538180 ((_ is ElementMatch!14057) r!12920)) b!5103326))

(assert (= (and start!538180 ((_ is Concat!22902) r!12920)) b!5103322))

(assert (= (and start!538180 ((_ is Star!14057) r!12920)) b!5103325))

(assert (= (and start!538180 ((_ is Union!14057) r!12920)) b!5103312))

(assert (= (and start!538180 condSetEmpty!29272) setIsEmpty!29272))

(assert (= (and start!538180 (not condSetEmpty!29272)) setNonEmpty!29272))

(assert (= setNonEmpty!29272 b!5103327))

(assert (= (and start!538180 ((_ is Cons!58833) input!5654)) b!5103323))

(declare-fun m!6160578 () Bool)

(assert (=> b!5103321 m!6160578))

(declare-fun m!6160580 () Bool)

(assert (=> b!5103321 m!6160580))

(declare-fun m!6160582 () Bool)

(assert (=> b!5103314 m!6160582))

(declare-fun m!6160584 () Bool)

(assert (=> b!5103320 m!6160584))

(declare-fun m!6160586 () Bool)

(assert (=> b!5103320 m!6160586))

(declare-fun m!6160588 () Bool)

(assert (=> b!5103320 m!6160588))

(declare-fun m!6160590 () Bool)

(assert (=> setNonEmpty!29272 m!6160590))

(declare-fun m!6160592 () Bool)

(assert (=> b!5103318 m!6160592))

(declare-fun m!6160594 () Bool)

(assert (=> b!5103318 m!6160594))

(declare-fun m!6160596 () Bool)

(assert (=> b!5103318 m!6160596))

(declare-fun m!6160598 () Bool)

(assert (=> b!5103318 m!6160598))

(declare-fun m!6160600 () Bool)

(assert (=> b!5103318 m!6160600))

(declare-fun m!6160602 () Bool)

(assert (=> b!5103318 m!6160602))

(declare-fun m!6160604 () Bool)

(assert (=> b!5103318 m!6160604))

(declare-fun m!6160606 () Bool)

(assert (=> b!5103318 m!6160606))

(declare-fun m!6160608 () Bool)

(assert (=> b!5103318 m!6160608))

(declare-fun m!6160610 () Bool)

(assert (=> b!5103318 m!6160610))

(declare-fun m!6160612 () Bool)

(assert (=> b!5103318 m!6160612))

(declare-fun m!6160614 () Bool)

(assert (=> b!5103318 m!6160614))

(declare-fun m!6160616 () Bool)

(assert (=> b!5103318 m!6160616))

(declare-fun m!6160618 () Bool)

(assert (=> b!5103313 m!6160618))

(declare-fun m!6160620 () Bool)

(assert (=> b!5103319 m!6160620))

(declare-fun m!6160622 () Bool)

(assert (=> start!538180 m!6160622))

(declare-fun m!6160624 () Bool)

(assert (=> b!5103317 m!6160624))

(declare-fun m!6160626 () Bool)

(assert (=> b!5103316 m!6160626))

(declare-fun m!6160628 () Bool)

(assert (=> b!5103316 m!6160628))

(declare-fun m!6160630 () Bool)

(assert (=> b!5103316 m!6160630))

(declare-fun m!6160632 () Bool)

(assert (=> b!5103316 m!6160632))

(declare-fun m!6160634 () Bool)

(assert (=> b!5103316 m!6160634))

(declare-fun m!6160636 () Bool)

(assert (=> b!5103316 m!6160636))

(declare-fun m!6160638 () Bool)

(assert (=> b!5103324 m!6160638))

(declare-fun m!6160640 () Bool)

(assert (=> b!5103315 m!6160640))

(check-sat (not b!5103323) (not b!5103319) (not b!5103316) (not b!5103322) (not b!5103327) (not b!5103314) (not b!5103312) (not b!5103315) (not b!5103325) (not start!538180) (not b!5103313) (not b!5103320) (not b!5103318) (not setNonEmpty!29272) (not b!5103321) (not b!5103324) tp_is_empty!37379 (not b!5103317))
(check-sat)
