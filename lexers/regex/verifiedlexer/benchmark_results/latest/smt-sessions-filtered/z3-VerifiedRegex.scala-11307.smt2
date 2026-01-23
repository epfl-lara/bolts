; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596332 () Bool)

(assert start!596332)

(declare-fun b!5820278 () Bool)

(assert (=> b!5820278 true))

(declare-fun b!5820271 () Bool)

(assert (=> b!5820271 true))

(declare-fun bs!1373233 () Bool)

(declare-fun b!5820268 () Bool)

(assert (= bs!1373233 (and b!5820268 b!5820278)))

(declare-fun lambda!318434 () Int)

(declare-fun lambda!318432 () Int)

(assert (=> bs!1373233 (not (= lambda!318434 lambda!318432))))

(declare-fun b!5820266 () Bool)

(declare-fun e!3571997 () Bool)

(declare-datatypes ((C!31992 0))(
  ( (C!31993 (val!25698 Int)) )
))
(declare-datatypes ((Regex!15861 0))(
  ( (ElementMatch!15861 (c!1031427 C!31992)) (Concat!24706 (regOne!32234 Regex!15861) (regTwo!32234 Regex!15861)) (EmptyExpr!15861) (Star!15861 (reg!16190 Regex!15861)) (EmptyLang!15861) (Union!15861 (regOne!32235 Regex!15861) (regTwo!32235 Regex!15861)) )
))
(declare-datatypes ((List!63882 0))(
  ( (Nil!63758) (Cons!63758 (h!70206 Regex!15861) (t!377237 List!63882)) )
))
(declare-datatypes ((Context!10490 0))(
  ( (Context!10491 (exprs!5745 List!63882)) )
))
(declare-datatypes ((List!63883 0))(
  ( (Nil!63759) (Cons!63759 (h!70207 Context!10490) (t!377238 List!63883)) )
))
(declare-fun zl!343 () List!63883)

(declare-fun tp!1606096 () Bool)

(declare-fun e!3571995 () Bool)

(declare-fun inv!82899 (Context!10490) Bool)

(assert (=> b!5820266 (= e!3571995 (and (inv!82899 (h!70207 zl!343)) e!3571997 tp!1606096))))

(declare-fun b!5820267 () Bool)

(declare-fun e!3572002 () Bool)

(declare-fun e!3571996 () Bool)

(assert (=> b!5820267 (= e!3572002 (not e!3571996))))

(declare-fun res!2454369 () Bool)

(assert (=> b!5820267 (=> res!2454369 e!3571996)))

(declare-fun e!3572003 () Bool)

(assert (=> b!5820267 (= res!2454369 e!3572003)))

(declare-fun res!2454361 () Bool)

(assert (=> b!5820267 (=> (not res!2454361) (not e!3572003))))

(get-info :version)

(assert (=> b!5820267 (= res!2454361 ((_ is Cons!63759) zl!343))))

(declare-fun lt!2302051 () Bool)

(declare-fun r!7292 () Regex!15861)

(declare-datatypes ((List!63884 0))(
  ( (Nil!63760) (Cons!63760 (h!70208 C!31992) (t!377239 List!63884)) )
))
(declare-fun s!2326 () List!63884)

(declare-fun matchRSpec!2964 (Regex!15861 List!63884) Bool)

(assert (=> b!5820267 (= lt!2302051 (matchRSpec!2964 r!7292 s!2326))))

(declare-fun matchR!8046 (Regex!15861 List!63884) Bool)

(assert (=> b!5820267 (= lt!2302051 (matchR!8046 r!7292 s!2326))))

(declare-datatypes ((Unit!156994 0))(
  ( (Unit!156995) )
))
(declare-fun lt!2302053 () Unit!156994)

(declare-fun mainMatchTheorem!2964 (Regex!15861 List!63884) Unit!156994)

(assert (=> b!5820267 (= lt!2302053 (mainMatchTheorem!2964 r!7292 s!2326))))

(declare-fun e!3571994 () Bool)

(declare-fun lt!2302050 () Context!10490)

(declare-fun forall!14953 (List!63882 Int) Bool)

(assert (=> b!5820268 (= e!3571994 (forall!14953 (exprs!5745 lt!2302050) lambda!318434))))

(assert (=> b!5820268 (forall!14953 (exprs!5745 lt!2302050) lambda!318434)))

(declare-fun lt!2302052 () Unit!156994)

(declare-fun lemmaContextForallValidExprs!58 (Context!10490 List!63882) Unit!156994)

(assert (=> b!5820268 (= lt!2302052 (lemmaContextForallValidExprs!58 lt!2302050 (exprs!5745 lt!2302050)))))

(declare-fun lambda!318433 () Int)

(declare-fun getWitness!926 (List!63883 Int) Context!10490)

(assert (=> b!5820268 (= lt!2302050 (getWitness!926 zl!343 lambda!318433))))

(declare-fun b!5820269 () Bool)

(declare-fun e!3571999 () Bool)

(declare-fun tp!1606098 () Bool)

(assert (=> b!5820269 (= e!3571999 tp!1606098)))

(declare-fun res!2454368 () Bool)

(assert (=> start!596332 (=> (not res!2454368) (not e!3572002))))

(declare-fun validRegex!7597 (Regex!15861) Bool)

(assert (=> start!596332 (= res!2454368 (validRegex!7597 r!7292))))

(assert (=> start!596332 e!3572002))

(declare-fun e!3572001 () Bool)

(assert (=> start!596332 e!3572001))

(declare-fun condSetEmpty!39294 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10490))

(assert (=> start!596332 (= condSetEmpty!39294 (= z!1189 ((as const (Array Context!10490 Bool)) false)))))

(declare-fun setRes!39294 () Bool)

(assert (=> start!596332 setRes!39294))

(assert (=> start!596332 e!3571995))

(declare-fun e!3572000 () Bool)

(assert (=> start!596332 e!3572000))

(declare-fun b!5820270 () Bool)

(declare-fun res!2454370 () Bool)

(declare-fun e!3571998 () Bool)

(assert (=> b!5820270 (=> res!2454370 e!3571998)))

(declare-fun matchZipper!1967 ((InoxSet Context!10490) List!63884) Bool)

(assert (=> b!5820270 (= res!2454370 (not (matchZipper!1967 z!1189 s!2326)))))

(assert (=> b!5820271 (= e!3571998 e!3571994)))

(declare-fun res!2454364 () Bool)

(assert (=> b!5820271 (=> res!2454364 e!3571994)))

(declare-fun exists!2284 (List!63883 Int) Bool)

(assert (=> b!5820271 (= res!2454364 (not (exists!2284 zl!343 lambda!318433)))))

(assert (=> b!5820271 (exists!2284 zl!343 lambda!318433)))

(declare-fun lt!2302054 () Unit!156994)

(declare-fun lemmaZipperMatchesExistsMatchingContext!82 (List!63883 List!63884) Unit!156994)

(assert (=> b!5820271 (= lt!2302054 (lemmaZipperMatchesExistsMatchingContext!82 zl!343 s!2326))))

(declare-fun setElem!39294 () Context!10490)

(declare-fun tp!1606093 () Bool)

(declare-fun setNonEmpty!39294 () Bool)

(assert (=> setNonEmpty!39294 (= setRes!39294 (and tp!1606093 (inv!82899 setElem!39294) e!3571999))))

(declare-fun setRest!39294 () (InoxSet Context!10490))

(assert (=> setNonEmpty!39294 (= z!1189 ((_ map or) (store ((as const (Array Context!10490 Bool)) false) setElem!39294 true) setRest!39294))))

(declare-fun b!5820272 () Bool)

(declare-fun tp!1606092 () Bool)

(declare-fun tp!1606097 () Bool)

(assert (=> b!5820272 (= e!3572001 (and tp!1606092 tp!1606097))))

(declare-fun b!5820273 () Bool)

(declare-fun res!2454360 () Bool)

(assert (=> b!5820273 (=> res!2454360 e!3571996)))

(assert (=> b!5820273 (= res!2454360 (or (not ((_ is Cons!63759) zl!343)) ((_ is Nil!63760) s!2326) (not (= zl!343 (Cons!63759 (h!70207 zl!343) (t!377238 zl!343))))))))

(declare-fun b!5820274 () Bool)

(declare-fun tp_is_empty!40975 () Bool)

(assert (=> b!5820274 (= e!3572001 tp_is_empty!40975)))

(declare-fun b!5820275 () Bool)

(declare-fun res!2454366 () Bool)

(assert (=> b!5820275 (=> res!2454366 e!3571998)))

(declare-fun lt!2302048 () List!63882)

(declare-fun exists!2285 (List!63882 Int) Bool)

(assert (=> b!5820275 (= res!2454366 (exists!2285 lt!2302048 lambda!318432))))

(declare-fun b!5820276 () Bool)

(declare-fun isEmpty!35644 (List!63883) Bool)

(assert (=> b!5820276 (= e!3572003 (isEmpty!35644 (t!377238 zl!343)))))

(declare-fun b!5820277 () Bool)

(declare-fun tp!1606094 () Bool)

(assert (=> b!5820277 (= e!3572001 tp!1606094)))

(assert (=> b!5820278 (= e!3571996 e!3571998)))

(declare-fun res!2454367 () Bool)

(assert (=> b!5820278 (=> res!2454367 e!3571998)))

(assert (=> b!5820278 (= res!2454367 lt!2302051)))

(assert (=> b!5820278 (= lt!2302051 (exists!2285 lt!2302048 lambda!318432))))

(declare-fun lt!2302049 () Unit!156994)

(declare-fun matchRGenUnionSpec!302 (Regex!15861 List!63882 List!63884) Unit!156994)

(assert (=> b!5820278 (= lt!2302049 (matchRGenUnionSpec!302 r!7292 lt!2302048 s!2326))))

(declare-fun unfocusZipperList!1283 (List!63883) List!63882)

(assert (=> b!5820278 (= lt!2302048 (unfocusZipperList!1283 zl!343))))

(declare-fun b!5820279 () Bool)

(declare-fun tp!1606099 () Bool)

(assert (=> b!5820279 (= e!3572000 (and tp_is_empty!40975 tp!1606099))))

(declare-fun setIsEmpty!39294 () Bool)

(assert (=> setIsEmpty!39294 setRes!39294))

(declare-fun b!5820280 () Bool)

(declare-fun res!2454363 () Bool)

(assert (=> b!5820280 (=> res!2454363 e!3571996)))

(assert (=> b!5820280 (= res!2454363 (isEmpty!35644 (t!377238 zl!343)))))

(declare-fun b!5820281 () Bool)

(declare-fun tp!1606095 () Bool)

(assert (=> b!5820281 (= e!3571997 tp!1606095)))

(declare-fun b!5820282 () Bool)

(declare-fun res!2454362 () Bool)

(assert (=> b!5820282 (=> (not res!2454362) (not e!3572002))))

(declare-fun unfocusZipper!1603 (List!63883) Regex!15861)

(assert (=> b!5820282 (= res!2454362 (= r!7292 (unfocusZipper!1603 zl!343)))))

(declare-fun b!5820283 () Bool)

(declare-fun res!2454365 () Bool)

(assert (=> b!5820283 (=> (not res!2454365) (not e!3572002))))

(declare-fun toList!9645 ((InoxSet Context!10490)) List!63883)

(assert (=> b!5820283 (= res!2454365 (= (toList!9645 z!1189) zl!343))))

(declare-fun b!5820284 () Bool)

(declare-fun tp!1606091 () Bool)

(declare-fun tp!1606100 () Bool)

(assert (=> b!5820284 (= e!3572001 (and tp!1606091 tp!1606100))))

(assert (= (and start!596332 res!2454368) b!5820283))

(assert (= (and b!5820283 res!2454365) b!5820282))

(assert (= (and b!5820282 res!2454362) b!5820267))

(assert (= (and b!5820267 res!2454361) b!5820276))

(assert (= (and b!5820267 (not res!2454369)) b!5820273))

(assert (= (and b!5820273 (not res!2454360)) b!5820280))

(assert (= (and b!5820280 (not res!2454363)) b!5820278))

(assert (= (and b!5820278 (not res!2454367)) b!5820275))

(assert (= (and b!5820275 (not res!2454366)) b!5820270))

(assert (= (and b!5820270 (not res!2454370)) b!5820271))

(assert (= (and b!5820271 (not res!2454364)) b!5820268))

(assert (= (and start!596332 ((_ is ElementMatch!15861) r!7292)) b!5820274))

(assert (= (and start!596332 ((_ is Concat!24706) r!7292)) b!5820284))

(assert (= (and start!596332 ((_ is Star!15861) r!7292)) b!5820277))

(assert (= (and start!596332 ((_ is Union!15861) r!7292)) b!5820272))

(assert (= (and start!596332 condSetEmpty!39294) setIsEmpty!39294))

(assert (= (and start!596332 (not condSetEmpty!39294)) setNonEmpty!39294))

(assert (= setNonEmpty!39294 b!5820269))

(assert (= b!5820266 b!5820281))

(assert (= (and start!596332 ((_ is Cons!63759) zl!343)) b!5820266))

(assert (= (and start!596332 ((_ is Cons!63760) s!2326)) b!5820279))

(declare-fun m!6755632 () Bool)

(assert (=> b!5820266 m!6755632))

(declare-fun m!6755634 () Bool)

(assert (=> b!5820282 m!6755634))

(declare-fun m!6755636 () Bool)

(assert (=> b!5820276 m!6755636))

(declare-fun m!6755638 () Bool)

(assert (=> start!596332 m!6755638))

(declare-fun m!6755640 () Bool)

(assert (=> b!5820268 m!6755640))

(assert (=> b!5820268 m!6755640))

(declare-fun m!6755642 () Bool)

(assert (=> b!5820268 m!6755642))

(declare-fun m!6755644 () Bool)

(assert (=> b!5820268 m!6755644))

(declare-fun m!6755646 () Bool)

(assert (=> b!5820270 m!6755646))

(declare-fun m!6755648 () Bool)

(assert (=> setNonEmpty!39294 m!6755648))

(declare-fun m!6755650 () Bool)

(assert (=> b!5820267 m!6755650))

(declare-fun m!6755652 () Bool)

(assert (=> b!5820267 m!6755652))

(declare-fun m!6755654 () Bool)

(assert (=> b!5820267 m!6755654))

(declare-fun m!6755656 () Bool)

(assert (=> b!5820283 m!6755656))

(assert (=> b!5820280 m!6755636))

(declare-fun m!6755658 () Bool)

(assert (=> b!5820271 m!6755658))

(assert (=> b!5820271 m!6755658))

(declare-fun m!6755660 () Bool)

(assert (=> b!5820271 m!6755660))

(declare-fun m!6755662 () Bool)

(assert (=> b!5820275 m!6755662))

(assert (=> b!5820278 m!6755662))

(declare-fun m!6755664 () Bool)

(assert (=> b!5820278 m!6755664))

(declare-fun m!6755666 () Bool)

(assert (=> b!5820278 m!6755666))

(check-sat (not b!5820281) (not b!5820275) (not b!5820271) (not start!596332) (not b!5820276) (not b!5820270) (not b!5820266) (not b!5820277) (not b!5820268) (not setNonEmpty!39294) tp_is_empty!40975 (not b!5820284) (not b!5820272) (not b!5820282) (not b!5820278) (not b!5820267) (not b!5820280) (not b!5820283) (not b!5820269) (not b!5820279))
(check-sat)
