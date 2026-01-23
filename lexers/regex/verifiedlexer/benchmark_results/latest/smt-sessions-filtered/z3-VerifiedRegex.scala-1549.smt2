; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80914 () Bool)

(assert start!80914)

(declare-fun b!898787 () Bool)

(assert (=> b!898787 true))

(assert (=> b!898787 true))

(assert (=> b!898787 true))

(declare-fun lambda!28016 () Int)

(declare-fun lambda!28015 () Int)

(assert (=> b!898787 (not (= lambda!28016 lambda!28015))))

(assert (=> b!898787 true))

(assert (=> b!898787 true))

(assert (=> b!898787 true))

(declare-fun b!898782 () Bool)

(declare-fun e!587927 () Bool)

(assert (=> b!898782 (= e!587927 true)))

(declare-datatypes ((Unit!14295 0))(
  ( (Unit!14296) )
))
(declare-fun lt!334023 () Unit!14295)

(declare-fun e!587930 () Unit!14295)

(assert (=> b!898782 (= lt!334023 e!587930)))

(declare-fun c!145485 () Bool)

(declare-datatypes ((C!5284 0))(
  ( (C!5285 (val!2890 Int)) )
))
(declare-datatypes ((List!9587 0))(
  ( (Nil!9571) (Cons!9571 (h!14972 C!5284) (t!100633 List!9587)) )
))
(declare-datatypes ((tuple2!10716 0))(
  ( (tuple2!10717 (_1!6184 List!9587) (_2!6184 List!9587)) )
))
(declare-fun lt!334024 () tuple2!10716)

(declare-fun s!10566 () List!9587)

(declare-fun size!7862 (List!9587) Int)

(assert (=> b!898782 (= c!145485 (= (size!7862 (_2!6184 lt!334024)) (size!7862 s!10566)))))

(declare-datatypes ((Regex!2357 0))(
  ( (ElementMatch!2357 (c!145486 C!5284)) (Concat!4190 (regOne!5226 Regex!2357) (regTwo!5226 Regex!2357)) (EmptyExpr!2357) (Star!2357 (reg!2686 Regex!2357)) (EmptyLang!2357) (Union!2357 (regOne!5227 Regex!2357) (regTwo!5227 Regex!2357)) )
))
(declare-fun r!15766 () Regex!2357)

(declare-fun matchR!895 (Regex!2357 List!9587) Bool)

(declare-fun removeUselessConcat!70 (Regex!2357) Regex!2357)

(assert (=> b!898782 (matchR!895 (removeUselessConcat!70 (reg!2686 r!15766)) (_1!6184 lt!334024))))

(declare-fun lt!334022 () Unit!14295)

(declare-fun lemmaRemoveUselessConcatSound!62 (Regex!2357 List!9587) Unit!14295)

(assert (=> b!898782 (= lt!334022 (lemmaRemoveUselessConcatSound!62 (reg!2686 r!15766) (_1!6184 lt!334024)))))

(declare-fun b!898783 () Bool)

(declare-fun e!587926 () Bool)

(declare-fun tp!282229 () Bool)

(assert (=> b!898783 (= e!587926 tp!282229)))

(declare-fun b!898784 () Bool)

(declare-fun e!587931 () Bool)

(declare-fun tp_is_empty!4357 () Bool)

(declare-fun tp!282228 () Bool)

(assert (=> b!898784 (= e!587931 (and tp_is_empty!4357 tp!282228))))

(declare-fun b!898785 () Bool)

(declare-fun Unit!14297 () Unit!14295)

(assert (=> b!898785 (= e!587930 Unit!14297)))

(declare-fun b!898786 () Bool)

(declare-fun res!408688 () Bool)

(declare-fun e!587929 () Bool)

(assert (=> b!898786 (=> res!408688 e!587929)))

(declare-fun lt!334026 () Bool)

(assert (=> b!898786 (= res!408688 (not lt!334026))))

(declare-fun e!587925 () Bool)

(assert (=> b!898787 (= e!587925 e!587929)))

(declare-fun res!408690 () Bool)

(assert (=> b!898787 (=> res!408690 e!587929)))

(declare-fun isEmpty!5768 (List!9587) Bool)

(assert (=> b!898787 (= res!408690 (isEmpty!5768 s!10566))))

(declare-fun Exists!134 (Int) Bool)

(assert (=> b!898787 (= (Exists!134 lambda!28015) (Exists!134 lambda!28016))))

(declare-fun lt!334020 () Unit!14295)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!26 (Regex!2357 List!9587) Unit!14295)

(assert (=> b!898787 (= lt!334020 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!26 (reg!2686 r!15766) s!10566))))

(assert (=> b!898787 (= lt!334026 (Exists!134 lambda!28015))))

(declare-datatypes ((Option!2000 0))(
  ( (None!1999) (Some!1999 (v!19416 tuple2!10716)) )
))
(declare-fun lt!334018 () Option!2000)

(declare-fun isDefined!1642 (Option!2000) Bool)

(assert (=> b!898787 (= lt!334026 (isDefined!1642 lt!334018))))

(declare-fun lt!334027 () Regex!2357)

(declare-fun findConcatSeparation!106 (Regex!2357 Regex!2357 List!9587 List!9587 List!9587) Option!2000)

(assert (=> b!898787 (= lt!334018 (findConcatSeparation!106 (reg!2686 r!15766) lt!334027 Nil!9571 s!10566 s!10566))))

(declare-fun lt!334021 () Unit!14295)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!106 (Regex!2357 Regex!2357 List!9587) Unit!14295)

(assert (=> b!898787 (= lt!334021 (lemmaFindConcatSeparationEquivalentToExists!106 (reg!2686 r!15766) lt!334027 s!10566))))

(assert (=> b!898787 (= lt!334027 (Star!2357 (reg!2686 r!15766)))))

(declare-fun res!408692 () Bool)

(declare-fun e!587928 () Bool)

(assert (=> start!80914 (=> (not res!408692) (not e!587928))))

(declare-fun validRegex!826 (Regex!2357) Bool)

(assert (=> start!80914 (= res!408692 (validRegex!826 r!15766))))

(assert (=> start!80914 e!587928))

(assert (=> start!80914 e!587926))

(assert (=> start!80914 e!587931))

(declare-fun b!898781 () Bool)

(assert (=> b!898781 (= e!587926 tp_is_empty!4357)))

(declare-fun b!898788 () Bool)

(assert (=> b!898788 (= e!587929 e!587927)))

(declare-fun res!408691 () Bool)

(assert (=> b!898788 (=> res!408691 e!587927)))

(assert (=> b!898788 (= res!408691 (not (matchR!895 (reg!2686 r!15766) (_1!6184 lt!334024))))))

(declare-fun get!3034 (Option!2000) tuple2!10716)

(assert (=> b!898788 (= lt!334024 (get!3034 lt!334018))))

(declare-fun b!898789 () Bool)

(declare-fun tp!282231 () Bool)

(declare-fun tp!282232 () Bool)

(assert (=> b!898789 (= e!587926 (and tp!282231 tp!282232))))

(declare-fun b!898790 () Bool)

(declare-fun res!408689 () Bool)

(assert (=> b!898790 (=> res!408689 e!587927)))

(assert (=> b!898790 (= res!408689 (not (matchR!895 lt!334027 (_2!6184 lt!334024))))))

(declare-fun b!898791 () Bool)

(assert (=> b!898791 (= e!587928 (not e!587925))))

(declare-fun res!408687 () Bool)

(assert (=> b!898791 (=> res!408687 e!587925)))

(declare-fun lt!334019 () Bool)

(get-info :version)

(assert (=> b!898791 (= res!408687 (or (not lt!334019) (and ((_ is Concat!4190) r!15766) ((_ is EmptyExpr!2357) (regOne!5226 r!15766))) (and ((_ is Concat!4190) r!15766) ((_ is EmptyExpr!2357) (regTwo!5226 r!15766))) ((_ is Concat!4190) r!15766) ((_ is Union!2357) r!15766) (not ((_ is Star!2357) r!15766))))))

(declare-fun matchRSpec!158 (Regex!2357 List!9587) Bool)

(assert (=> b!898791 (= lt!334019 (matchRSpec!158 r!15766 s!10566))))

(assert (=> b!898791 (= lt!334019 (matchR!895 r!15766 s!10566))))

(declare-fun lt!334025 () Unit!14295)

(declare-fun mainMatchTheorem!158 (Regex!2357 List!9587) Unit!14295)

(assert (=> b!898791 (= lt!334025 (mainMatchTheorem!158 r!15766 s!10566))))

(declare-fun b!898792 () Bool)

(declare-fun Unit!14298 () Unit!14295)

(assert (=> b!898792 (= e!587930 Unit!14298)))

(declare-fun lt!334017 () Unit!14295)

(assert (=> b!898792 (= lt!334017 (mainMatchTheorem!158 (reg!2686 r!15766) (_1!6184 lt!334024)))))

(assert (=> b!898792 false))

(declare-fun b!898793 () Bool)

(declare-fun tp!282230 () Bool)

(declare-fun tp!282227 () Bool)

(assert (=> b!898793 (= e!587926 (and tp!282230 tp!282227))))

(assert (= (and start!80914 res!408692) b!898791))

(assert (= (and b!898791 (not res!408687)) b!898787))

(assert (= (and b!898787 (not res!408690)) b!898786))

(assert (= (and b!898786 (not res!408688)) b!898788))

(assert (= (and b!898788 (not res!408691)) b!898790))

(assert (= (and b!898790 (not res!408689)) b!898782))

(assert (= (and b!898782 c!145485) b!898792))

(assert (= (and b!898782 (not c!145485)) b!898785))

(assert (= (and start!80914 ((_ is ElementMatch!2357) r!15766)) b!898781))

(assert (= (and start!80914 ((_ is Concat!4190) r!15766)) b!898789))

(assert (= (and start!80914 ((_ is Star!2357) r!15766)) b!898783))

(assert (= (and start!80914 ((_ is Union!2357) r!15766)) b!898793))

(assert (= (and start!80914 ((_ is Cons!9571) s!10566)) b!898784))

(declare-fun m!1137333 () Bool)

(assert (=> b!898792 m!1137333))

(declare-fun m!1137335 () Bool)

(assert (=> start!80914 m!1137335))

(declare-fun m!1137337 () Bool)

(assert (=> b!898787 m!1137337))

(declare-fun m!1137339 () Bool)

(assert (=> b!898787 m!1137339))

(declare-fun m!1137341 () Bool)

(assert (=> b!898787 m!1137341))

(declare-fun m!1137343 () Bool)

(assert (=> b!898787 m!1137343))

(declare-fun m!1137345 () Bool)

(assert (=> b!898787 m!1137345))

(declare-fun m!1137347 () Bool)

(assert (=> b!898787 m!1137347))

(declare-fun m!1137349 () Bool)

(assert (=> b!898787 m!1137349))

(assert (=> b!898787 m!1137345))

(declare-fun m!1137351 () Bool)

(assert (=> b!898788 m!1137351))

(declare-fun m!1137353 () Bool)

(assert (=> b!898788 m!1137353))

(declare-fun m!1137355 () Bool)

(assert (=> b!898790 m!1137355))

(declare-fun m!1137357 () Bool)

(assert (=> b!898791 m!1137357))

(declare-fun m!1137359 () Bool)

(assert (=> b!898791 m!1137359))

(declare-fun m!1137361 () Bool)

(assert (=> b!898791 m!1137361))

(declare-fun m!1137363 () Bool)

(assert (=> b!898782 m!1137363))

(declare-fun m!1137365 () Bool)

(assert (=> b!898782 m!1137365))

(assert (=> b!898782 m!1137363))

(declare-fun m!1137367 () Bool)

(assert (=> b!898782 m!1137367))

(declare-fun m!1137369 () Bool)

(assert (=> b!898782 m!1137369))

(declare-fun m!1137371 () Bool)

(assert (=> b!898782 m!1137371))

(check-sat (not b!898791) (not b!898792) (not b!898782) tp_is_empty!4357 (not b!898788) (not b!898784) (not b!898783) (not b!898793) (not b!898790) (not b!898787) (not b!898789) (not start!80914))
(check-sat)
