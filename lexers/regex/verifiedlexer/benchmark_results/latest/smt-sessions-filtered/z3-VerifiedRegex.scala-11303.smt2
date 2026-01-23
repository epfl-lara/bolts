; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596152 () Bool)

(assert start!596152)

(declare-fun b!5818276 () Bool)

(assert (=> b!5818276 true))

(declare-fun b!5818270 () Bool)

(assert (=> b!5818270 true))

(declare-fun b!5818265 () Bool)

(declare-fun res!2453603 () Bool)

(declare-fun e!3570878 () Bool)

(assert (=> b!5818265 (=> res!2453603 e!3570878)))

(declare-datatypes ((C!31976 0))(
  ( (C!31977 (val!25690 Int)) )
))
(declare-datatypes ((Regex!15853 0))(
  ( (ElementMatch!15853 (c!1031065 C!31976)) (Concat!24698 (regOne!32218 Regex!15853) (regTwo!32218 Regex!15853)) (EmptyExpr!15853) (Star!15853 (reg!16182 Regex!15853)) (EmptyLang!15853) (Union!15853 (regOne!32219 Regex!15853) (regTwo!32219 Regex!15853)) )
))
(declare-fun lt!2301729 () Regex!15853)

(declare-fun validRegex!7589 (Regex!15853) Bool)

(assert (=> b!5818265 (= res!2453603 (not (validRegex!7589 lt!2301729)))))

(declare-fun b!5818266 () Bool)

(declare-fun res!2453604 () Bool)

(declare-fun e!3570882 () Bool)

(assert (=> b!5818266 (=> res!2453604 e!3570882)))

(declare-datatypes ((List!63858 0))(
  ( (Nil!63734) (Cons!63734 (h!70182 Regex!15853) (t!377213 List!63858)) )
))
(declare-datatypes ((Context!10474 0))(
  ( (Context!10475 (exprs!5737 List!63858)) )
))
(declare-datatypes ((List!63859 0))(
  ( (Nil!63735) (Cons!63735 (h!70183 Context!10474) (t!377214 List!63859)) )
))
(declare-fun zl!343 () List!63859)

(declare-fun isEmpty!35632 (List!63859) Bool)

(assert (=> b!5818266 (= res!2453604 (isEmpty!35632 (t!377214 zl!343)))))

(declare-fun e!3570880 () Bool)

(declare-fun setElem!39262 () Context!10474)

(declare-fun setNonEmpty!39262 () Bool)

(declare-fun tp!1605431 () Bool)

(declare-fun setRes!39262 () Bool)

(declare-fun inv!82879 (Context!10474) Bool)

(assert (=> setNonEmpty!39262 (= setRes!39262 (and tp!1605431 (inv!82879 setElem!39262) e!3570880))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10474))

(declare-fun setRest!39262 () (InoxSet Context!10474))

(assert (=> setNonEmpty!39262 (= z!1189 ((_ map or) (store ((as const (Array Context!10474 Bool)) false) setElem!39262 true) setRest!39262))))

(declare-fun b!5818267 () Bool)

(declare-fun res!2453597 () Bool)

(assert (=> b!5818267 (=> res!2453597 e!3570878)))

(declare-datatypes ((List!63860 0))(
  ( (Nil!63736) (Cons!63736 (h!70184 C!31976) (t!377215 List!63860)) )
))
(declare-fun s!2326 () List!63860)

(declare-fun matchR!8038 (Regex!15853 List!63860) Bool)

(assert (=> b!5818267 (= res!2453597 (not (matchR!8038 lt!2301729 s!2326)))))

(declare-fun b!5818268 () Bool)

(declare-fun e!3570884 () Bool)

(declare-fun tp_is_empty!40959 () Bool)

(declare-fun tp!1605436 () Bool)

(assert (=> b!5818268 (= e!3570884 (and tp_is_empty!40959 tp!1605436))))

(declare-fun b!5818269 () Bool)

(declare-fun res!2453598 () Bool)

(declare-fun e!3570883 () Bool)

(assert (=> b!5818269 (=> (not res!2453598) (not e!3570883))))

(declare-fun toList!9637 ((InoxSet Context!10474)) List!63859)

(assert (=> b!5818269 (= res!2453598 (= (toList!9637 z!1189) zl!343))))

(declare-fun lambda!318242 () Int)

(declare-fun exists!2270 (List!63859 Int) Bool)

(assert (=> b!5818270 (= e!3570878 (exists!2270 zl!343 lambda!318242))))

(assert (=> b!5818270 (exists!2270 zl!343 lambda!318242)))

(declare-datatypes ((Unit!156972 0))(
  ( (Unit!156973) )
))
(declare-fun lt!2301731 () Unit!156972)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!20 (List!63859 Regex!15853) Unit!156972)

(assert (=> b!5818270 (= lt!2301731 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!20 zl!343 lt!2301729))))

(declare-fun b!5818271 () Bool)

(declare-fun res!2453608 () Bool)

(declare-fun e!3570876 () Bool)

(assert (=> b!5818271 (=> res!2453608 e!3570876)))

(declare-fun lt!2301730 () List!63858)

(declare-fun lambda!318241 () Int)

(declare-fun exists!2271 (List!63858 Int) Bool)

(assert (=> b!5818271 (= res!2453608 (not (exists!2271 lt!2301730 lambda!318241)))))

(declare-fun b!5818272 () Bool)

(declare-fun e!3570877 () Bool)

(declare-fun tp!1605433 () Bool)

(assert (=> b!5818272 (= e!3570877 tp!1605433)))

(declare-fun res!2453605 () Bool)

(assert (=> start!596152 (=> (not res!2453605) (not e!3570883))))

(declare-fun r!7292 () Regex!15853)

(assert (=> start!596152 (= res!2453605 (validRegex!7589 r!7292))))

(assert (=> start!596152 e!3570883))

(assert (=> start!596152 e!3570877))

(declare-fun condSetEmpty!39262 () Bool)

(assert (=> start!596152 (= condSetEmpty!39262 (= z!1189 ((as const (Array Context!10474 Bool)) false)))))

(assert (=> start!596152 setRes!39262))

(declare-fun e!3570885 () Bool)

(assert (=> start!596152 e!3570885))

(assert (=> start!596152 e!3570884))

(declare-fun b!5818273 () Bool)

(assert (=> b!5818273 (= e!3570877 tp_is_empty!40959)))

(declare-fun b!5818274 () Bool)

(assert (=> b!5818274 (= e!3570876 e!3570878)))

(declare-fun res!2453601 () Bool)

(assert (=> b!5818274 (=> res!2453601 e!3570878)))

(declare-fun contains!19893 (List!63858 Regex!15853) Bool)

(assert (=> b!5818274 (= res!2453601 (not (contains!19893 lt!2301730 lt!2301729)))))

(declare-fun getWitness!920 (List!63858 Int) Regex!15853)

(assert (=> b!5818274 (= lt!2301729 (getWitness!920 lt!2301730 lambda!318241))))

(declare-fun e!3570879 () Bool)

(declare-fun tp!1605430 () Bool)

(declare-fun b!5818275 () Bool)

(assert (=> b!5818275 (= e!3570885 (and (inv!82879 (h!70183 zl!343)) e!3570879 tp!1605430))))

(declare-fun setIsEmpty!39262 () Bool)

(assert (=> setIsEmpty!39262 setRes!39262))

(assert (=> b!5818276 (= e!3570882 e!3570876)))

(declare-fun res!2453600 () Bool)

(assert (=> b!5818276 (=> res!2453600 e!3570876)))

(declare-fun lt!2301733 () Bool)

(assert (=> b!5818276 (= res!2453600 (not lt!2301733))))

(assert (=> b!5818276 (= lt!2301733 (exists!2271 lt!2301730 lambda!318241))))

(declare-fun lt!2301732 () Unit!156972)

(declare-fun matchRGenUnionSpec!294 (Regex!15853 List!63858 List!63860) Unit!156972)

(assert (=> b!5818276 (= lt!2301732 (matchRGenUnionSpec!294 r!7292 lt!2301730 s!2326))))

(declare-fun unfocusZipperList!1275 (List!63859) List!63858)

(assert (=> b!5818276 (= lt!2301730 (unfocusZipperList!1275 zl!343))))

(declare-fun b!5818277 () Bool)

(declare-fun res!2453599 () Bool)

(assert (=> b!5818277 (=> (not res!2453599) (not e!3570883))))

(declare-fun unfocusZipper!1595 (List!63859) Regex!15853)

(assert (=> b!5818277 (= res!2453599 (= r!7292 (unfocusZipper!1595 zl!343)))))

(declare-fun b!5818278 () Bool)

(declare-fun tp!1605435 () Bool)

(declare-fun tp!1605427 () Bool)

(assert (=> b!5818278 (= e!3570877 (and tp!1605435 tp!1605427))))

(declare-fun b!5818279 () Bool)

(declare-fun res!2453607 () Bool)

(assert (=> b!5818279 (=> res!2453607 e!3570882)))

(get-info :version)

(assert (=> b!5818279 (= res!2453607 (or (not ((_ is Cons!63735) zl!343)) ((_ is Nil!63736) s!2326) (not (= zl!343 (Cons!63735 (h!70183 zl!343) (t!377214 zl!343))))))))

(declare-fun b!5818280 () Bool)

(declare-fun tp!1605434 () Bool)

(assert (=> b!5818280 (= e!3570880 tp!1605434)))

(declare-fun b!5818281 () Bool)

(assert (=> b!5818281 (= e!3570883 (not e!3570882))))

(declare-fun res!2453606 () Bool)

(assert (=> b!5818281 (=> res!2453606 e!3570882)))

(declare-fun e!3570881 () Bool)

(assert (=> b!5818281 (= res!2453606 e!3570881)))

(declare-fun res!2453602 () Bool)

(assert (=> b!5818281 (=> (not res!2453602) (not e!3570881))))

(assert (=> b!5818281 (= res!2453602 ((_ is Cons!63735) zl!343))))

(declare-fun matchRSpec!2956 (Regex!15853 List!63860) Bool)

(assert (=> b!5818281 (= lt!2301733 (matchRSpec!2956 r!7292 s!2326))))

(assert (=> b!5818281 (= lt!2301733 (matchR!8038 r!7292 s!2326))))

(declare-fun lt!2301734 () Unit!156972)

(declare-fun mainMatchTheorem!2956 (Regex!15853 List!63860) Unit!156972)

(assert (=> b!5818281 (= lt!2301734 (mainMatchTheorem!2956 r!7292 s!2326))))

(declare-fun b!5818282 () Bool)

(declare-fun tp!1605428 () Bool)

(assert (=> b!5818282 (= e!3570879 tp!1605428)))

(declare-fun b!5818283 () Bool)

(declare-fun tp!1605429 () Bool)

(declare-fun tp!1605432 () Bool)

(assert (=> b!5818283 (= e!3570877 (and tp!1605429 tp!1605432))))

(declare-fun b!5818284 () Bool)

(assert (=> b!5818284 (= e!3570881 (isEmpty!35632 (t!377214 zl!343)))))

(assert (= (and start!596152 res!2453605) b!5818269))

(assert (= (and b!5818269 res!2453598) b!5818277))

(assert (= (and b!5818277 res!2453599) b!5818281))

(assert (= (and b!5818281 res!2453602) b!5818284))

(assert (= (and b!5818281 (not res!2453606)) b!5818279))

(assert (= (and b!5818279 (not res!2453607)) b!5818266))

(assert (= (and b!5818266 (not res!2453604)) b!5818276))

(assert (= (and b!5818276 (not res!2453600)) b!5818271))

(assert (= (and b!5818271 (not res!2453608)) b!5818274))

(assert (= (and b!5818274 (not res!2453601)) b!5818265))

(assert (= (and b!5818265 (not res!2453603)) b!5818267))

(assert (= (and b!5818267 (not res!2453597)) b!5818270))

(assert (= (and start!596152 ((_ is ElementMatch!15853) r!7292)) b!5818273))

(assert (= (and start!596152 ((_ is Concat!24698) r!7292)) b!5818278))

(assert (= (and start!596152 ((_ is Star!15853) r!7292)) b!5818272))

(assert (= (and start!596152 ((_ is Union!15853) r!7292)) b!5818283))

(assert (= (and start!596152 condSetEmpty!39262) setIsEmpty!39262))

(assert (= (and start!596152 (not condSetEmpty!39262)) setNonEmpty!39262))

(assert (= setNonEmpty!39262 b!5818280))

(assert (= b!5818275 b!5818282))

(assert (= (and start!596152 ((_ is Cons!63735) zl!343)) b!5818275))

(assert (= (and start!596152 ((_ is Cons!63736) s!2326)) b!5818268))

(declare-fun m!6754444 () Bool)

(assert (=> b!5818281 m!6754444))

(declare-fun m!6754446 () Bool)

(assert (=> b!5818281 m!6754446))

(declare-fun m!6754448 () Bool)

(assert (=> b!5818281 m!6754448))

(declare-fun m!6754450 () Bool)

(assert (=> b!5818277 m!6754450))

(declare-fun m!6754452 () Bool)

(assert (=> b!5818267 m!6754452))

(declare-fun m!6754454 () Bool)

(assert (=> b!5818275 m!6754454))

(declare-fun m!6754456 () Bool)

(assert (=> start!596152 m!6754456))

(declare-fun m!6754458 () Bool)

(assert (=> b!5818276 m!6754458))

(declare-fun m!6754460 () Bool)

(assert (=> b!5818276 m!6754460))

(declare-fun m!6754462 () Bool)

(assert (=> b!5818276 m!6754462))

(declare-fun m!6754464 () Bool)

(assert (=> b!5818270 m!6754464))

(assert (=> b!5818270 m!6754464))

(declare-fun m!6754466 () Bool)

(assert (=> b!5818270 m!6754466))

(declare-fun m!6754468 () Bool)

(assert (=> b!5818269 m!6754468))

(declare-fun m!6754470 () Bool)

(assert (=> b!5818265 m!6754470))

(declare-fun m!6754472 () Bool)

(assert (=> b!5818284 m!6754472))

(assert (=> b!5818271 m!6754458))

(declare-fun m!6754474 () Bool)

(assert (=> b!5818274 m!6754474))

(declare-fun m!6754476 () Bool)

(assert (=> b!5818274 m!6754476))

(declare-fun m!6754478 () Bool)

(assert (=> setNonEmpty!39262 m!6754478))

(assert (=> b!5818266 m!6754472))

(check-sat (not b!5818282) (not b!5818266) (not b!5818278) (not b!5818272) tp_is_empty!40959 (not b!5818281) (not setNonEmpty!39262) (not start!596152) (not b!5818268) (not b!5818271) (not b!5818269) (not b!5818270) (not b!5818283) (not b!5818274) (not b!5818284) (not b!5818265) (not b!5818276) (not b!5818267) (not b!5818275) (not b!5818280) (not b!5818277))
(check-sat)
