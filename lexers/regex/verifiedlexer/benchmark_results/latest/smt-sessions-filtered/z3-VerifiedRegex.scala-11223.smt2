; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!587476 () Bool)

(assert start!587476)

(declare-fun b!5697416 () Bool)

(assert (=> b!5697416 true))

(assert (=> b!5697416 true))

(declare-fun lambda!307178 () Int)

(declare-fun lambda!307177 () Int)

(assert (=> b!5697416 (not (= lambda!307178 lambda!307177))))

(assert (=> b!5697416 true))

(assert (=> b!5697416 true))

(declare-fun b!5697409 () Bool)

(assert (=> b!5697409 true))

(declare-fun bs!1327958 () Bool)

(declare-fun b!5697436 () Bool)

(assert (= bs!1327958 (and b!5697436 b!5697416)))

(declare-datatypes ((C!31656 0))(
  ( (C!31657 (val!25530 Int)) )
))
(declare-datatypes ((Regex!15693 0))(
  ( (ElementMatch!15693 (c!1003241 C!31656)) (Concat!24538 (regOne!31898 Regex!15693) (regTwo!31898 Regex!15693)) (EmptyExpr!15693) (Star!15693 (reg!16022 Regex!15693)) (EmptyLang!15693) (Union!15693 (regOne!31899 Regex!15693) (regTwo!31899 Regex!15693)) )
))
(declare-fun r!7292 () Regex!15693)

(declare-fun lt!2273008 () Regex!15693)

(declare-fun lambda!307180 () Int)

(assert (=> bs!1327958 (= (= lt!2273008 (regOne!31898 r!7292)) (= lambda!307180 lambda!307177))))

(assert (=> bs!1327958 (not (= lambda!307180 lambda!307178))))

(assert (=> b!5697436 true))

(assert (=> b!5697436 true))

(assert (=> b!5697436 true))

(declare-fun lambda!307181 () Int)

(assert (=> bs!1327958 (not (= lambda!307181 lambda!307177))))

(assert (=> bs!1327958 (= (= lt!2273008 (regOne!31898 r!7292)) (= lambda!307181 lambda!307178))))

(assert (=> b!5697436 (not (= lambda!307181 lambda!307180))))

(assert (=> b!5697436 true))

(assert (=> b!5697436 true))

(assert (=> b!5697436 true))

(declare-fun b!5697402 () Bool)

(declare-fun e!3505108 () Bool)

(declare-fun e!3505102 () Bool)

(assert (=> b!5697402 (= e!3505108 e!3505102)))

(declare-fun res!2406062 () Bool)

(assert (=> b!5697402 (=> res!2406062 e!3505102)))

(declare-datatypes ((List!63378 0))(
  ( (Nil!63254) (Cons!63254 (h!69702 Regex!15693) (t!376696 List!63378)) )
))
(declare-datatypes ((Context!10154 0))(
  ( (Context!10155 (exprs!5577 List!63378)) )
))
(declare-fun lt!2272984 () Context!10154)

(declare-fun lt!2272979 () Regex!15693)

(declare-datatypes ((List!63379 0))(
  ( (Nil!63255) (Cons!63255 (h!69703 Context!10154) (t!376697 List!63379)) )
))
(declare-fun unfocusZipper!1435 (List!63379) Regex!15693)

(assert (=> b!5697402 (= res!2406062 (not (= (unfocusZipper!1435 (Cons!63255 lt!2272984 Nil!63255)) lt!2272979)))))

(declare-fun lt!2273005 () Regex!15693)

(assert (=> b!5697402 (= lt!2272979 (Concat!24538 (reg!16022 (regOne!31898 r!7292)) lt!2273005))))

(declare-fun setNonEmpty!38151 () Bool)

(declare-fun setRes!38151 () Bool)

(declare-fun e!3505103 () Bool)

(declare-fun setElem!38151 () Context!10154)

(declare-fun tp!1580296 () Bool)

(declare-fun inv!82479 (Context!10154) Bool)

(assert (=> setNonEmpty!38151 (= setRes!38151 (and tp!1580296 (inv!82479 setElem!38151) e!3505103))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10154))

(declare-fun setRest!38151 () (InoxSet Context!10154))

(assert (=> setNonEmpty!38151 (= z!1189 ((_ map or) (store ((as const (Array Context!10154 Bool)) false) setElem!38151 true) setRest!38151))))

(declare-fun b!5697403 () Bool)

(declare-fun e!3505113 () Bool)

(declare-fun lt!2272995 () Bool)

(declare-fun lt!2272974 () Bool)

(assert (=> b!5697403 (= e!3505113 (or (not lt!2272995) lt!2272974))))

(declare-fun b!5697404 () Bool)

(declare-fun res!2406050 () Bool)

(declare-fun e!3505119 () Bool)

(assert (=> b!5697404 (=> res!2406050 e!3505119)))

(declare-fun zl!343 () List!63379)

(get-info :version)

(assert (=> b!5697404 (= res!2406050 (not ((_ is Cons!63254) (exprs!5577 (h!69703 zl!343)))))))

(declare-fun b!5697405 () Bool)

(declare-fun res!2406064 () Bool)

(assert (=> b!5697405 (=> res!2406064 e!3505119)))

(declare-fun isEmpty!35114 (List!63379) Bool)

(assert (=> b!5697405 (= res!2406064 (not (isEmpty!35114 (t!376697 zl!343))))))

(declare-fun b!5697406 () Bool)

(declare-fun res!2406068 () Bool)

(declare-fun e!3505100 () Bool)

(assert (=> b!5697406 (=> res!2406068 e!3505100)))

(assert (=> b!5697406 (= res!2406068 (or ((_ is Concat!24538) (regOne!31898 r!7292)) (not ((_ is Star!15693) (regOne!31898 r!7292)))))))

(declare-fun b!5697407 () Bool)

(declare-fun res!2406058 () Bool)

(assert (=> b!5697407 (=> res!2406058 e!3505119)))

(declare-fun generalisedUnion!1556 (List!63378) Regex!15693)

(declare-fun unfocusZipperList!1121 (List!63379) List!63378)

(assert (=> b!5697407 (= res!2406058 (not (= r!7292 (generalisedUnion!1556 (unfocusZipperList!1121 zl!343)))))))

(declare-fun b!5697408 () Bool)

(declare-fun e!3505104 () Bool)

(declare-fun nullable!5725 (Regex!15693) Bool)

(assert (=> b!5697408 (= e!3505104 (nullable!5725 (regOne!31898 (regOne!31898 r!7292))))))

(declare-fun b!5697410 () Bool)

(declare-fun e!3505107 () Bool)

(declare-fun tp!1580297 () Bool)

(declare-fun tp!1580300 () Bool)

(assert (=> b!5697410 (= e!3505107 (and tp!1580297 tp!1580300))))

(declare-fun b!5697411 () Bool)

(declare-fun e!3505114 () Bool)

(declare-fun tp!1580293 () Bool)

(assert (=> b!5697411 (= e!3505114 tp!1580293)))

(declare-fun b!5697412 () Bool)

(declare-fun res!2406056 () Bool)

(declare-fun e!3505111 () Bool)

(assert (=> b!5697412 (=> res!2406056 e!3505111)))

(declare-fun isEmpty!35115 (List!63378) Bool)

(assert (=> b!5697412 (= res!2406056 (isEmpty!35115 (t!376696 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun b!5697413 () Bool)

(declare-fun tp_is_empty!40639 () Bool)

(assert (=> b!5697413 (= e!3505107 tp_is_empty!40639)))

(declare-fun b!5697414 () Bool)

(declare-fun res!2406072 () Bool)

(assert (=> b!5697414 (=> res!2406072 e!3505119)))

(declare-fun generalisedConcat!1308 (List!63378) Regex!15693)

(assert (=> b!5697414 (= res!2406072 (not (= r!7292 (generalisedConcat!1308 (exprs!5577 (h!69703 zl!343))))))))

(declare-fun b!5697415 () Bool)

(declare-fun e!3505101 () Bool)

(assert (=> b!5697415 (= e!3505102 e!3505101)))

(declare-fun res!2406049 () Bool)

(assert (=> b!5697415 (=> res!2406049 e!3505101)))

(declare-fun lt!2273001 () Context!10154)

(assert (=> b!5697415 (= res!2406049 (not (= (unfocusZipper!1435 (Cons!63255 lt!2273001 Nil!63255)) (reg!16022 (regOne!31898 r!7292)))))))

(declare-datatypes ((List!63380 0))(
  ( (Nil!63256) (Cons!63256 (h!69704 C!31656) (t!376698 List!63380)) )
))
(declare-fun s!2326 () List!63380)

(declare-fun lt!2272976 () Context!10154)

(declare-fun lt!2272985 () (InoxSet Context!10154))

(declare-fun lambda!307179 () Int)

(declare-fun flatMap!1306 ((InoxSet Context!10154) Int) (InoxSet Context!10154))

(declare-fun derivationStepZipperUp!961 (Context!10154 C!31656) (InoxSet Context!10154))

(assert (=> b!5697415 (= (flatMap!1306 lt!2272985 lambda!307179) (derivationStepZipperUp!961 lt!2272976 (h!69704 s!2326)))))

(declare-datatypes ((Unit!156304 0))(
  ( (Unit!156305) )
))
(declare-fun lt!2272980 () Unit!156304)

(declare-fun lemmaFlatMapOnSingletonSet!838 ((InoxSet Context!10154) Context!10154 Int) Unit!156304)

(assert (=> b!5697415 (= lt!2272980 (lemmaFlatMapOnSingletonSet!838 lt!2272985 lt!2272976 lambda!307179))))

(declare-fun lt!2272998 () (InoxSet Context!10154))

(assert (=> b!5697415 (= (flatMap!1306 lt!2272998 lambda!307179) (derivationStepZipperUp!961 lt!2273001 (h!69704 s!2326)))))

(declare-fun lt!2272999 () Unit!156304)

(assert (=> b!5697415 (= lt!2272999 (lemmaFlatMapOnSingletonSet!838 lt!2272998 lt!2273001 lambda!307179))))

(declare-fun lt!2272975 () (InoxSet Context!10154))

(assert (=> b!5697415 (= lt!2272975 (derivationStepZipperUp!961 lt!2272976 (h!69704 s!2326)))))

(declare-fun lt!2272992 () (InoxSet Context!10154))

(assert (=> b!5697415 (= lt!2272992 (derivationStepZipperUp!961 lt!2273001 (h!69704 s!2326)))))

(assert (=> b!5697415 (= lt!2272985 (store ((as const (Array Context!10154 Bool)) false) lt!2272976 true))))

(assert (=> b!5697415 (= lt!2272998 (store ((as const (Array Context!10154 Bool)) false) lt!2273001 true))))

(assert (=> b!5697415 (= lt!2273001 (Context!10155 (Cons!63254 (reg!16022 (regOne!31898 r!7292)) Nil!63254)))))

(declare-fun setIsEmpty!38151 () Bool)

(assert (=> setIsEmpty!38151 setRes!38151))

(assert (=> b!5697416 (= e!3505119 e!3505111)))

(declare-fun res!2406074 () Bool)

(assert (=> b!5697416 (=> res!2406074 e!3505111)))

(declare-fun lt!2272989 () Bool)

(assert (=> b!5697416 (= res!2406074 (or (not (= lt!2272995 lt!2272989)) ((_ is Nil!63256) s!2326)))))

(declare-fun Exists!2793 (Int) Bool)

(assert (=> b!5697416 (= (Exists!2793 lambda!307177) (Exists!2793 lambda!307178))))

(declare-fun lt!2272978 () Unit!156304)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1422 (Regex!15693 Regex!15693 List!63380) Unit!156304)

(assert (=> b!5697416 (= lt!2272978 (lemmaExistCutMatchRandMatchRSpecEquivalent!1422 (regOne!31898 r!7292) (regTwo!31898 r!7292) s!2326))))

(assert (=> b!5697416 (= lt!2272989 (Exists!2793 lambda!307177))))

(declare-datatypes ((tuple2!65580 0))(
  ( (tuple2!65581 (_1!36093 List!63380) (_2!36093 List!63380)) )
))
(declare-datatypes ((Option!15702 0))(
  ( (None!15701) (Some!15701 (v!51754 tuple2!65580)) )
))
(declare-fun isDefined!12405 (Option!15702) Bool)

(declare-fun findConcatSeparation!2116 (Regex!15693 Regex!15693 List!63380 List!63380 List!63380) Option!15702)

(assert (=> b!5697416 (= lt!2272989 (isDefined!12405 (findConcatSeparation!2116 (regOne!31898 r!7292) (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326)))))

(declare-fun lt!2273006 () Unit!156304)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1880 (Regex!15693 Regex!15693 List!63380) Unit!156304)

(assert (=> b!5697416 (= lt!2273006 (lemmaFindConcatSeparationEquivalentToExists!1880 (regOne!31898 r!7292) (regTwo!31898 r!7292) s!2326))))

(declare-fun b!5697417 () Bool)

(declare-fun e!3505115 () Bool)

(assert (=> b!5697417 (= e!3505101 e!3505115)))

(declare-fun res!2406054 () Bool)

(assert (=> b!5697417 (=> res!2406054 e!3505115)))

(assert (=> b!5697417 (= res!2406054 (not lt!2272995))))

(assert (=> b!5697417 e!3505113))

(declare-fun res!2406070 () Bool)

(assert (=> b!5697417 (=> (not res!2406070) (not e!3505113))))

(declare-fun matchR!7878 (Regex!15693 List!63380) Bool)

(declare-fun matchRSpec!2796 (Regex!15693 List!63380) Bool)

(assert (=> b!5697417 (= res!2406070 (= (matchR!7878 lt!2272979 s!2326) (matchRSpec!2796 lt!2272979 s!2326)))))

(declare-fun lt!2272987 () Unit!156304)

(declare-fun mainMatchTheorem!2796 (Regex!15693 List!63380) Unit!156304)

(assert (=> b!5697417 (= lt!2272987 (mainMatchTheorem!2796 lt!2272979 s!2326))))

(declare-fun b!5697418 () Bool)

(declare-fun res!2406048 () Bool)

(declare-fun e!3505118 () Bool)

(assert (=> b!5697418 (=> res!2406048 e!3505118)))

(declare-fun lt!2272997 () tuple2!65580)

(assert (=> b!5697418 (= res!2406048 (not (matchR!7878 (regTwo!31898 r!7292) (_2!36093 lt!2272997))))))

(declare-fun b!5697419 () Bool)

(declare-fun e!3505105 () Bool)

(declare-fun e!3505117 () Bool)

(assert (=> b!5697419 (= e!3505105 e!3505117)))

(declare-fun res!2406069 () Bool)

(assert (=> b!5697419 (=> res!2406069 e!3505117)))

(declare-fun lt!2272988 () (InoxSet Context!10154))

(declare-fun lt!2273012 () (InoxSet Context!10154))

(assert (=> b!5697419 (= res!2406069 (not (= lt!2272988 lt!2273012)))))

(declare-fun lt!2272982 () (InoxSet Context!10154))

(assert (=> b!5697419 (= (flatMap!1306 lt!2272982 lambda!307179) (derivationStepZipperUp!961 lt!2272984 (h!69704 s!2326)))))

(declare-fun lt!2273009 () Unit!156304)

(assert (=> b!5697419 (= lt!2273009 (lemmaFlatMapOnSingletonSet!838 lt!2272982 lt!2272984 lambda!307179))))

(declare-fun lt!2272994 () (InoxSet Context!10154))

(assert (=> b!5697419 (= lt!2272994 (derivationStepZipperUp!961 lt!2272984 (h!69704 s!2326)))))

(declare-fun derivationStepZipper!1776 ((InoxSet Context!10154) C!31656) (InoxSet Context!10154))

(assert (=> b!5697419 (= lt!2272988 (derivationStepZipper!1776 lt!2272982 (h!69704 s!2326)))))

(assert (=> b!5697419 (= lt!2272982 (store ((as const (Array Context!10154 Bool)) false) lt!2272984 true))))

(declare-fun lt!2273011 () List!63378)

(assert (=> b!5697419 (= lt!2272984 (Context!10155 (Cons!63254 (reg!16022 (regOne!31898 r!7292)) lt!2273011)))))

(declare-fun b!5697420 () Bool)

(declare-fun res!2406055 () Bool)

(assert (=> b!5697420 (=> res!2406055 e!3505117)))

(declare-fun matchZipper!1831 ((InoxSet Context!10154) List!63380) Bool)

(assert (=> b!5697420 (= res!2406055 (not (= (matchZipper!1831 lt!2272982 s!2326) (matchZipper!1831 lt!2272988 (t!376698 s!2326)))))))

(declare-fun b!5697421 () Bool)

(declare-fun e!3505109 () Bool)

(declare-fun lt!2273002 () (InoxSet Context!10154))

(assert (=> b!5697421 (= e!3505109 (matchZipper!1831 lt!2273002 (t!376698 s!2326)))))

(declare-fun b!5697422 () Bool)

(declare-fun res!2406059 () Bool)

(assert (=> b!5697422 (=> res!2406059 e!3505118)))

(declare-fun isEmpty!35116 (List!63380) Bool)

(assert (=> b!5697422 (= res!2406059 (not (isEmpty!35116 (_1!36093 lt!2272997))))))

(declare-fun b!5697423 () Bool)

(declare-fun e!3505116 () Unit!156304)

(declare-fun Unit!156306 () Unit!156304)

(assert (=> b!5697423 (= e!3505116 Unit!156306)))

(declare-fun b!5697424 () Bool)

(declare-fun res!2406052 () Bool)

(declare-fun e!3505106 () Bool)

(assert (=> b!5697424 (=> (not res!2406052) (not e!3505106))))

(declare-fun toList!9477 ((InoxSet Context!10154)) List!63379)

(assert (=> b!5697424 (= res!2406052 (= (toList!9477 z!1189) zl!343))))

(declare-fun b!5697425 () Bool)

(declare-fun res!2406065 () Bool)

(assert (=> b!5697425 (=> res!2406065 e!3505101)))

(assert (=> b!5697425 (= res!2406065 (not (= (unfocusZipper!1435 (Cons!63255 lt!2272976 Nil!63255)) lt!2273005)))))

(declare-fun b!5697426 () Bool)

(declare-fun tp!1580299 () Bool)

(assert (=> b!5697426 (= e!3505103 tp!1580299)))

(declare-fun b!5697427 () Bool)

(declare-fun tp!1580302 () Bool)

(declare-fun tp!1580298 () Bool)

(assert (=> b!5697427 (= e!3505107 (and tp!1580302 tp!1580298))))

(declare-fun b!5697428 () Bool)

(assert (=> b!5697428 (= e!3505100 e!3505105)))

(declare-fun res!2406061 () Bool)

(assert (=> b!5697428 (=> res!2406061 e!3505105)))

(declare-fun lt!2272990 () (InoxSet Context!10154))

(assert (=> b!5697428 (= res!2406061 (not (= lt!2272990 lt!2273012)))))

(declare-fun derivationStepZipperDown!1035 (Regex!15693 Context!10154 C!31656) (InoxSet Context!10154))

(assert (=> b!5697428 (= lt!2273012 (derivationStepZipperDown!1035 (reg!16022 (regOne!31898 r!7292)) lt!2272976 (h!69704 s!2326)))))

(assert (=> b!5697428 (= lt!2272976 (Context!10155 lt!2273011))))

(assert (=> b!5697428 (= lt!2273011 (Cons!63254 lt!2273008 (t!376696 (exprs!5577 (h!69703 zl!343)))))))

(assert (=> b!5697428 (= lt!2273008 (Star!15693 (reg!16022 (regOne!31898 r!7292))))))

(declare-fun b!5697429 () Bool)

(declare-fun lt!2272986 () (InoxSet Context!10154))

(assert (=> b!5697429 (= e!3505118 (= lt!2273002 (derivationStepZipper!1776 lt!2272986 (h!69704 s!2326))))))

(declare-fun lt!2273004 () Context!10154)

(assert (=> b!5697429 (= (flatMap!1306 lt!2272986 lambda!307179) (derivationStepZipperUp!961 lt!2273004 (h!69704 s!2326)))))

(declare-fun lt!2273010 () Unit!156304)

(assert (=> b!5697429 (= lt!2273010 (lemmaFlatMapOnSingletonSet!838 lt!2272986 lt!2273004 lambda!307179))))

(assert (=> b!5697429 (= lt!2272986 (store ((as const (Array Context!10154 Bool)) false) lt!2273004 true))))

(declare-fun b!5697430 () Bool)

(declare-fun e!3505120 () Bool)

(assert (=> b!5697430 (= e!3505106 e!3505120)))

(declare-fun res!2406076 () Bool)

(assert (=> b!5697430 (=> (not res!2406076) (not e!3505120))))

(declare-fun lt!2273003 () Regex!15693)

(assert (=> b!5697430 (= res!2406076 (= r!7292 lt!2273003))))

(assert (=> b!5697430 (= lt!2273003 (unfocusZipper!1435 zl!343))))

(declare-fun b!5697431 () Bool)

(declare-fun tp!1580301 () Bool)

(assert (=> b!5697431 (= e!3505107 tp!1580301)))

(declare-fun b!5697432 () Bool)

(declare-fun res!2406063 () Bool)

(assert (=> b!5697432 (=> res!2406063 e!3505100)))

(assert (=> b!5697432 (= res!2406063 e!3505104)))

(declare-fun res!2406067 () Bool)

(assert (=> b!5697432 (=> (not res!2406067) (not e!3505104))))

(assert (=> b!5697432 (= res!2406067 ((_ is Concat!24538) (regOne!31898 r!7292)))))

(declare-fun b!5697433 () Bool)

(declare-fun res!2406073 () Bool)

(assert (=> b!5697433 (=> res!2406073 e!3505117)))

(assert (=> b!5697433 (= res!2406073 (not (= lt!2273003 r!7292)))))

(declare-fun b!5697434 () Bool)

(declare-fun Unit!156307 () Unit!156304)

(assert (=> b!5697434 (= e!3505116 Unit!156307)))

(declare-fun lt!2272977 () Unit!156304)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!718 ((InoxSet Context!10154) (InoxSet Context!10154) List!63380) Unit!156304)

(assert (=> b!5697434 (= lt!2272977 (lemmaZipperConcatMatchesSameAsBothZippers!718 lt!2272990 lt!2273002 (t!376698 s!2326)))))

(declare-fun res!2406057 () Bool)

(assert (=> b!5697434 (= res!2406057 (matchZipper!1831 lt!2272990 (t!376698 s!2326)))))

(assert (=> b!5697434 (=> res!2406057 e!3505109)))

(assert (=> b!5697434 (= (matchZipper!1831 ((_ map or) lt!2272990 lt!2273002) (t!376698 s!2326)) e!3505109)))

(assert (=> b!5697409 (= e!3505111 e!3505100)))

(declare-fun res!2406071 () Bool)

(assert (=> b!5697409 (=> res!2406071 e!3505100)))

(assert (=> b!5697409 (= res!2406071 (or (and ((_ is ElementMatch!15693) (regOne!31898 r!7292)) (= (c!1003241 (regOne!31898 r!7292)) (h!69704 s!2326))) ((_ is Union!15693) (regOne!31898 r!7292))))))

(declare-fun lt!2272981 () Unit!156304)

(assert (=> b!5697409 (= lt!2272981 e!3505116)))

(declare-fun c!1003240 () Bool)

(assert (=> b!5697409 (= c!1003240 (nullable!5725 (h!69702 (exprs!5577 (h!69703 zl!343)))))))

(assert (=> b!5697409 (= (flatMap!1306 z!1189 lambda!307179) (derivationStepZipperUp!961 (h!69703 zl!343) (h!69704 s!2326)))))

(declare-fun lt!2272996 () Unit!156304)

(assert (=> b!5697409 (= lt!2272996 (lemmaFlatMapOnSingletonSet!838 z!1189 (h!69703 zl!343) lambda!307179))))

(assert (=> b!5697409 (= lt!2273002 (derivationStepZipperUp!961 lt!2273004 (h!69704 s!2326)))))

(assert (=> b!5697409 (= lt!2272990 (derivationStepZipperDown!1035 (h!69702 (exprs!5577 (h!69703 zl!343))) lt!2273004 (h!69704 s!2326)))))

(assert (=> b!5697409 (= lt!2273004 (Context!10155 (t!376696 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun lt!2273000 () (InoxSet Context!10154))

(assert (=> b!5697409 (= lt!2273000 (derivationStepZipperUp!961 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343))))) (h!69704 s!2326)))))

(declare-fun res!2406060 () Bool)

(assert (=> start!587476 (=> (not res!2406060) (not e!3505106))))

(declare-fun validRegex!7429 (Regex!15693) Bool)

(assert (=> start!587476 (= res!2406060 (validRegex!7429 r!7292))))

(assert (=> start!587476 e!3505106))

(assert (=> start!587476 e!3505107))

(declare-fun condSetEmpty!38151 () Bool)

(assert (=> start!587476 (= condSetEmpty!38151 (= z!1189 ((as const (Array Context!10154 Bool)) false)))))

(assert (=> start!587476 setRes!38151))

(declare-fun e!3505110 () Bool)

(assert (=> start!587476 e!3505110))

(declare-fun e!3505112 () Bool)

(assert (=> start!587476 e!3505112))

(declare-fun tp!1580295 () Bool)

(declare-fun b!5697435 () Bool)

(assert (=> b!5697435 (= e!3505110 (and (inv!82479 (h!69703 zl!343)) e!3505114 tp!1580295))))

(assert (=> b!5697436 (= e!3505115 e!3505118)))

(declare-fun res!2406075 () Bool)

(assert (=> b!5697436 (=> res!2406075 e!3505118)))

(declare-fun ++!13885 (List!63380 List!63380) List!63380)

(assert (=> b!5697436 (= res!2406075 (not (= (++!13885 (_1!36093 lt!2272997) (_2!36093 lt!2272997)) s!2326)))))

(declare-fun lt!2272991 () Option!15702)

(declare-fun get!21799 (Option!15702) tuple2!65580)

(assert (=> b!5697436 (= lt!2272997 (get!21799 lt!2272991))))

(assert (=> b!5697436 (= (Exists!2793 lambda!307180) (Exists!2793 lambda!307181))))

(declare-fun lt!2272993 () Unit!156304)

(assert (=> b!5697436 (= lt!2272993 (lemmaExistCutMatchRandMatchRSpecEquivalent!1422 lt!2273008 (regTwo!31898 r!7292) s!2326))))

(assert (=> b!5697436 (= (isDefined!12405 lt!2272991) (Exists!2793 lambda!307180))))

(assert (=> b!5697436 (= lt!2272991 (findConcatSeparation!2116 lt!2273008 (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326))))

(declare-fun lt!2273007 () Unit!156304)

(assert (=> b!5697436 (= lt!2273007 (lemmaFindConcatSeparationEquivalentToExists!1880 lt!2273008 (regTwo!31898 r!7292) s!2326))))

(declare-fun b!5697437 () Bool)

(declare-fun res!2406051 () Bool)

(assert (=> b!5697437 (=> res!2406051 e!3505118)))

(assert (=> b!5697437 (= res!2406051 (not (matchR!7878 lt!2273008 (_1!36093 lt!2272997))))))

(declare-fun b!5697438 () Bool)

(declare-fun tp!1580294 () Bool)

(assert (=> b!5697438 (= e!3505112 (and tp_is_empty!40639 tp!1580294))))

(declare-fun b!5697439 () Bool)

(assert (=> b!5697439 (= e!3505120 (not e!3505119))))

(declare-fun res!2406066 () Bool)

(assert (=> b!5697439 (=> res!2406066 e!3505119)))

(assert (=> b!5697439 (= res!2406066 (not ((_ is Cons!63255) zl!343)))))

(assert (=> b!5697439 (= lt!2272995 lt!2272974)))

(assert (=> b!5697439 (= lt!2272974 (matchRSpec!2796 r!7292 s!2326))))

(assert (=> b!5697439 (= lt!2272995 (matchR!7878 r!7292 s!2326))))

(declare-fun lt!2272983 () Unit!156304)

(assert (=> b!5697439 (= lt!2272983 (mainMatchTheorem!2796 r!7292 s!2326))))

(declare-fun b!5697440 () Bool)

(assert (=> b!5697440 (= e!3505117 e!3505108)))

(declare-fun res!2406053 () Bool)

(assert (=> b!5697440 (=> res!2406053 e!3505108)))

(assert (=> b!5697440 (= res!2406053 (not (= r!7292 lt!2273005)))))

(assert (=> b!5697440 (= lt!2273005 (Concat!24538 lt!2273008 (regTwo!31898 r!7292)))))

(declare-fun b!5697441 () Bool)

(declare-fun res!2406077 () Bool)

(assert (=> b!5697441 (=> res!2406077 e!3505119)))

(assert (=> b!5697441 (= res!2406077 (or ((_ is EmptyExpr!15693) r!7292) ((_ is EmptyLang!15693) r!7292) ((_ is ElementMatch!15693) r!7292) ((_ is Union!15693) r!7292) (not ((_ is Concat!24538) r!7292))))))

(assert (= (and start!587476 res!2406060) b!5697424))

(assert (= (and b!5697424 res!2406052) b!5697430))

(assert (= (and b!5697430 res!2406076) b!5697439))

(assert (= (and b!5697439 (not res!2406066)) b!5697405))

(assert (= (and b!5697405 (not res!2406064)) b!5697414))

(assert (= (and b!5697414 (not res!2406072)) b!5697404))

(assert (= (and b!5697404 (not res!2406050)) b!5697407))

(assert (= (and b!5697407 (not res!2406058)) b!5697441))

(assert (= (and b!5697441 (not res!2406077)) b!5697416))

(assert (= (and b!5697416 (not res!2406074)) b!5697412))

(assert (= (and b!5697412 (not res!2406056)) b!5697409))

(assert (= (and b!5697409 c!1003240) b!5697434))

(assert (= (and b!5697409 (not c!1003240)) b!5697423))

(assert (= (and b!5697434 (not res!2406057)) b!5697421))

(assert (= (and b!5697409 (not res!2406071)) b!5697432))

(assert (= (and b!5697432 res!2406067) b!5697408))

(assert (= (and b!5697432 (not res!2406063)) b!5697406))

(assert (= (and b!5697406 (not res!2406068)) b!5697428))

(assert (= (and b!5697428 (not res!2406061)) b!5697419))

(assert (= (and b!5697419 (not res!2406069)) b!5697420))

(assert (= (and b!5697420 (not res!2406055)) b!5697433))

(assert (= (and b!5697433 (not res!2406073)) b!5697440))

(assert (= (and b!5697440 (not res!2406053)) b!5697402))

(assert (= (and b!5697402 (not res!2406062)) b!5697415))

(assert (= (and b!5697415 (not res!2406049)) b!5697425))

(assert (= (and b!5697425 (not res!2406065)) b!5697417))

(assert (= (and b!5697417 res!2406070) b!5697403))

(assert (= (and b!5697417 (not res!2406054)) b!5697436))

(assert (= (and b!5697436 (not res!2406075)) b!5697437))

(assert (= (and b!5697437 (not res!2406051)) b!5697418))

(assert (= (and b!5697418 (not res!2406048)) b!5697422))

(assert (= (and b!5697422 (not res!2406059)) b!5697429))

(assert (= (and start!587476 ((_ is ElementMatch!15693) r!7292)) b!5697413))

(assert (= (and start!587476 ((_ is Concat!24538) r!7292)) b!5697427))

(assert (= (and start!587476 ((_ is Star!15693) r!7292)) b!5697431))

(assert (= (and start!587476 ((_ is Union!15693) r!7292)) b!5697410))

(assert (= (and start!587476 condSetEmpty!38151) setIsEmpty!38151))

(assert (= (and start!587476 (not condSetEmpty!38151)) setNonEmpty!38151))

(assert (= setNonEmpty!38151 b!5697426))

(assert (= b!5697435 b!5697411))

(assert (= (and start!587476 ((_ is Cons!63255) zl!343)) b!5697435))

(assert (= (and start!587476 ((_ is Cons!63256) s!2326)) b!5697438))

(declare-fun m!6653138 () Bool)

(assert (=> b!5697420 m!6653138))

(declare-fun m!6653140 () Bool)

(assert (=> b!5697420 m!6653140))

(declare-fun m!6653142 () Bool)

(assert (=> b!5697414 m!6653142))

(declare-fun m!6653144 () Bool)

(assert (=> b!5697402 m!6653144))

(declare-fun m!6653146 () Bool)

(assert (=> b!5697408 m!6653146))

(declare-fun m!6653148 () Bool)

(assert (=> b!5697436 m!6653148))

(declare-fun m!6653150 () Bool)

(assert (=> b!5697436 m!6653150))

(declare-fun m!6653152 () Bool)

(assert (=> b!5697436 m!6653152))

(declare-fun m!6653154 () Bool)

(assert (=> b!5697436 m!6653154))

(declare-fun m!6653156 () Bool)

(assert (=> b!5697436 m!6653156))

(assert (=> b!5697436 m!6653148))

(declare-fun m!6653158 () Bool)

(assert (=> b!5697436 m!6653158))

(declare-fun m!6653160 () Bool)

(assert (=> b!5697436 m!6653160))

(declare-fun m!6653162 () Bool)

(assert (=> b!5697436 m!6653162))

(declare-fun m!6653164 () Bool)

(assert (=> b!5697435 m!6653164))

(declare-fun m!6653166 () Bool)

(assert (=> b!5697428 m!6653166))

(declare-fun m!6653168 () Bool)

(assert (=> b!5697405 m!6653168))

(declare-fun m!6653170 () Bool)

(assert (=> b!5697418 m!6653170))

(declare-fun m!6653172 () Bool)

(assert (=> b!5697412 m!6653172))

(declare-fun m!6653174 () Bool)

(assert (=> b!5697419 m!6653174))

(declare-fun m!6653176 () Bool)

(assert (=> b!5697419 m!6653176))

(declare-fun m!6653178 () Bool)

(assert (=> b!5697419 m!6653178))

(declare-fun m!6653180 () Bool)

(assert (=> b!5697419 m!6653180))

(declare-fun m!6653182 () Bool)

(assert (=> b!5697419 m!6653182))

(declare-fun m!6653184 () Bool)

(assert (=> b!5697421 m!6653184))

(declare-fun m!6653186 () Bool)

(assert (=> b!5697429 m!6653186))

(declare-fun m!6653188 () Bool)

(assert (=> b!5697429 m!6653188))

(declare-fun m!6653190 () Bool)

(assert (=> b!5697429 m!6653190))

(declare-fun m!6653192 () Bool)

(assert (=> b!5697429 m!6653192))

(declare-fun m!6653194 () Bool)

(assert (=> b!5697429 m!6653194))

(declare-fun m!6653196 () Bool)

(assert (=> b!5697415 m!6653196))

(declare-fun m!6653198 () Bool)

(assert (=> b!5697415 m!6653198))

(declare-fun m!6653200 () Bool)

(assert (=> b!5697415 m!6653200))

(declare-fun m!6653202 () Bool)

(assert (=> b!5697415 m!6653202))

(declare-fun m!6653204 () Bool)

(assert (=> b!5697415 m!6653204))

(declare-fun m!6653206 () Bool)

(assert (=> b!5697415 m!6653206))

(declare-fun m!6653208 () Bool)

(assert (=> b!5697415 m!6653208))

(declare-fun m!6653210 () Bool)

(assert (=> b!5697415 m!6653210))

(declare-fun m!6653212 () Bool)

(assert (=> b!5697415 m!6653212))

(declare-fun m!6653214 () Bool)

(assert (=> b!5697407 m!6653214))

(assert (=> b!5697407 m!6653214))

(declare-fun m!6653216 () Bool)

(assert (=> b!5697407 m!6653216))

(declare-fun m!6653218 () Bool)

(assert (=> start!587476 m!6653218))

(declare-fun m!6653220 () Bool)

(assert (=> b!5697409 m!6653220))

(declare-fun m!6653222 () Bool)

(assert (=> b!5697409 m!6653222))

(declare-fun m!6653224 () Bool)

(assert (=> b!5697409 m!6653224))

(declare-fun m!6653226 () Bool)

(assert (=> b!5697409 m!6653226))

(declare-fun m!6653228 () Bool)

(assert (=> b!5697409 m!6653228))

(assert (=> b!5697409 m!6653194))

(declare-fun m!6653230 () Bool)

(assert (=> b!5697409 m!6653230))

(declare-fun m!6653232 () Bool)

(assert (=> b!5697437 m!6653232))

(declare-fun m!6653234 () Bool)

(assert (=> b!5697430 m!6653234))

(declare-fun m!6653236 () Bool)

(assert (=> setNonEmpty!38151 m!6653236))

(declare-fun m!6653238 () Bool)

(assert (=> b!5697417 m!6653238))

(declare-fun m!6653240 () Bool)

(assert (=> b!5697417 m!6653240))

(declare-fun m!6653242 () Bool)

(assert (=> b!5697417 m!6653242))

(declare-fun m!6653244 () Bool)

(assert (=> b!5697422 m!6653244))

(declare-fun m!6653246 () Bool)

(assert (=> b!5697424 m!6653246))

(declare-fun m!6653248 () Bool)

(assert (=> b!5697434 m!6653248))

(declare-fun m!6653250 () Bool)

(assert (=> b!5697434 m!6653250))

(declare-fun m!6653252 () Bool)

(assert (=> b!5697434 m!6653252))

(declare-fun m!6653254 () Bool)

(assert (=> b!5697425 m!6653254))

(declare-fun m!6653256 () Bool)

(assert (=> b!5697416 m!6653256))

(declare-fun m!6653258 () Bool)

(assert (=> b!5697416 m!6653258))

(declare-fun m!6653260 () Bool)

(assert (=> b!5697416 m!6653260))

(declare-fun m!6653262 () Bool)

(assert (=> b!5697416 m!6653262))

(declare-fun m!6653264 () Bool)

(assert (=> b!5697416 m!6653264))

(assert (=> b!5697416 m!6653262))

(assert (=> b!5697416 m!6653258))

(declare-fun m!6653266 () Bool)

(assert (=> b!5697416 m!6653266))

(declare-fun m!6653268 () Bool)

(assert (=> b!5697439 m!6653268))

(declare-fun m!6653270 () Bool)

(assert (=> b!5697439 m!6653270))

(declare-fun m!6653272 () Bool)

(assert (=> b!5697439 m!6653272))

(check-sat (not b!5697405) (not b!5697425) (not b!5697429) (not start!587476) (not b!5697417) (not b!5697426) (not b!5697408) (not b!5697422) (not b!5697421) (not b!5697431) (not b!5697415) (not b!5697439) (not b!5697438) tp_is_empty!40639 (not b!5697402) (not b!5697416) (not b!5697414) (not b!5697419) (not b!5697412) (not b!5697424) (not setNonEmpty!38151) (not b!5697430) (not b!5697420) (not b!5697410) (not b!5697437) (not b!5697407) (not b!5697436) (not b!5697427) (not b!5697409) (not b!5697428) (not b!5697418) (not b!5697434) (not b!5697411) (not b!5697435))
(check-sat)
(get-model)

(declare-fun d!1797678 () Bool)

(declare-fun choose!43091 ((InoxSet Context!10154) Int) (InoxSet Context!10154))

(assert (=> d!1797678 (= (flatMap!1306 lt!2272982 lambda!307179) (choose!43091 lt!2272982 lambda!307179))))

(declare-fun bs!1327969 () Bool)

(assert (= bs!1327969 d!1797678))

(declare-fun m!6653316 () Bool)

(assert (=> bs!1327969 m!6653316))

(assert (=> b!5697419 d!1797678))

(declare-fun b!5697534 () Bool)

(declare-fun e!3505169 () (InoxSet Context!10154))

(assert (=> b!5697534 (= e!3505169 ((as const (Array Context!10154 Bool)) false))))

(declare-fun bm!433637 () Bool)

(declare-fun call!433642 () (InoxSet Context!10154))

(assert (=> bm!433637 (= call!433642 (derivationStepZipperDown!1035 (h!69702 (exprs!5577 lt!2272984)) (Context!10155 (t!376696 (exprs!5577 lt!2272984))) (h!69704 s!2326)))))

(declare-fun b!5697535 () Bool)

(declare-fun e!3505170 () Bool)

(assert (=> b!5697535 (= e!3505170 (nullable!5725 (h!69702 (exprs!5577 lt!2272984))))))

(declare-fun b!5697536 () Bool)

(assert (=> b!5697536 (= e!3505169 call!433642)))

(declare-fun e!3505171 () (InoxSet Context!10154))

(declare-fun b!5697537 () Bool)

(assert (=> b!5697537 (= e!3505171 ((_ map or) call!433642 (derivationStepZipperUp!961 (Context!10155 (t!376696 (exprs!5577 lt!2272984))) (h!69704 s!2326))))))

(declare-fun b!5697538 () Bool)

(assert (=> b!5697538 (= e!3505171 e!3505169)))

(declare-fun c!1003266 () Bool)

(assert (=> b!5697538 (= c!1003266 ((_ is Cons!63254) (exprs!5577 lt!2272984)))))

(declare-fun d!1797684 () Bool)

(declare-fun c!1003265 () Bool)

(assert (=> d!1797684 (= c!1003265 e!3505170)))

(declare-fun res!2406118 () Bool)

(assert (=> d!1797684 (=> (not res!2406118) (not e!3505170))))

(assert (=> d!1797684 (= res!2406118 ((_ is Cons!63254) (exprs!5577 lt!2272984)))))

(assert (=> d!1797684 (= (derivationStepZipperUp!961 lt!2272984 (h!69704 s!2326)) e!3505171)))

(assert (= (and d!1797684 res!2406118) b!5697535))

(assert (= (and d!1797684 c!1003265) b!5697537))

(assert (= (and d!1797684 (not c!1003265)) b!5697538))

(assert (= (and b!5697538 c!1003266) b!5697536))

(assert (= (and b!5697538 (not c!1003266)) b!5697534))

(assert (= (or b!5697537 b!5697536) bm!433637))

(declare-fun m!6653348 () Bool)

(assert (=> bm!433637 m!6653348))

(declare-fun m!6653350 () Bool)

(assert (=> b!5697535 m!6653350))

(declare-fun m!6653352 () Bool)

(assert (=> b!5697537 m!6653352))

(assert (=> b!5697419 d!1797684))

(declare-fun d!1797694 () Bool)

(declare-fun dynLambda!24750 (Int Context!10154) (InoxSet Context!10154))

(assert (=> d!1797694 (= (flatMap!1306 lt!2272982 lambda!307179) (dynLambda!24750 lambda!307179 lt!2272984))))

(declare-fun lt!2273033 () Unit!156304)

(declare-fun choose!43092 ((InoxSet Context!10154) Context!10154 Int) Unit!156304)

(assert (=> d!1797694 (= lt!2273033 (choose!43092 lt!2272982 lt!2272984 lambda!307179))))

(assert (=> d!1797694 (= lt!2272982 (store ((as const (Array Context!10154 Bool)) false) lt!2272984 true))))

(assert (=> d!1797694 (= (lemmaFlatMapOnSingletonSet!838 lt!2272982 lt!2272984 lambda!307179) lt!2273033)))

(declare-fun b_lambda!215351 () Bool)

(assert (=> (not b_lambda!215351) (not d!1797694)))

(declare-fun bs!1327970 () Bool)

(assert (= bs!1327970 d!1797694))

(assert (=> bs!1327970 m!6653176))

(declare-fun m!6653354 () Bool)

(assert (=> bs!1327970 m!6653354))

(declare-fun m!6653356 () Bool)

(assert (=> bs!1327970 m!6653356))

(assert (=> bs!1327970 m!6653178))

(assert (=> b!5697419 d!1797694))

(declare-fun bs!1327973 () Bool)

(declare-fun d!1797696 () Bool)

(assert (= bs!1327973 (and d!1797696 b!5697409)))

(declare-fun lambda!307193 () Int)

(assert (=> bs!1327973 (= lambda!307193 lambda!307179)))

(assert (=> d!1797696 true))

(assert (=> d!1797696 (= (derivationStepZipper!1776 lt!2272982 (h!69704 s!2326)) (flatMap!1306 lt!2272982 lambda!307193))))

(declare-fun bs!1327974 () Bool)

(assert (= bs!1327974 d!1797696))

(declare-fun m!6653370 () Bool)

(assert (=> bs!1327974 m!6653370))

(assert (=> b!5697419 d!1797696))

(declare-fun bs!1327996 () Bool)

(declare-fun b!5697687 () Bool)

(assert (= bs!1327996 (and b!5697687 b!5697416)))

(declare-fun lambda!307201 () Int)

(assert (=> bs!1327996 (not (= lambda!307201 lambda!307177))))

(assert (=> bs!1327996 (not (= lambda!307201 lambda!307178))))

(declare-fun bs!1327997 () Bool)

(assert (= bs!1327997 (and b!5697687 b!5697436)))

(assert (=> bs!1327997 (not (= lambda!307201 lambda!307180))))

(assert (=> bs!1327997 (not (= lambda!307201 lambda!307181))))

(assert (=> b!5697687 true))

(assert (=> b!5697687 true))

(declare-fun bs!1327999 () Bool)

(declare-fun b!5697684 () Bool)

(assert (= bs!1327999 (and b!5697684 b!5697416)))

(declare-fun lambda!307205 () Int)

(assert (=> bs!1327999 (not (= lambda!307205 lambda!307177))))

(declare-fun bs!1328000 () Bool)

(assert (= bs!1328000 (and b!5697684 b!5697436)))

(assert (=> bs!1328000 (not (= lambda!307205 lambda!307180))))

(assert (=> bs!1327999 (= lambda!307205 lambda!307178)))

(declare-fun bs!1328001 () Bool)

(assert (= bs!1328001 (and b!5697684 b!5697687)))

(assert (=> bs!1328001 (not (= lambda!307205 lambda!307201))))

(assert (=> bs!1328000 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307205 lambda!307181))))

(assert (=> b!5697684 true))

(assert (=> b!5697684 true))

(declare-fun b!5697678 () Bool)

(declare-fun e!3505251 () Bool)

(assert (=> b!5697678 (= e!3505251 (matchRSpec!2796 (regTwo!31899 r!7292) s!2326))))

(declare-fun bm!433665 () Bool)

(declare-fun call!433671 () Bool)

(assert (=> bm!433665 (= call!433671 (isEmpty!35116 s!2326))))

(declare-fun b!5697679 () Bool)

(declare-fun c!1003311 () Bool)

(assert (=> b!5697679 (= c!1003311 ((_ is ElementMatch!15693) r!7292))))

(declare-fun e!3505247 () Bool)

(declare-fun e!3505248 () Bool)

(assert (=> b!5697679 (= e!3505247 e!3505248)))

(declare-fun b!5697680 () Bool)

(declare-fun c!1003313 () Bool)

(assert (=> b!5697680 (= c!1003313 ((_ is Union!15693) r!7292))))

(declare-fun e!3505250 () Bool)

(assert (=> b!5697680 (= e!3505248 e!3505250)))

(declare-fun b!5697681 () Bool)

(declare-fun res!2406173 () Bool)

(declare-fun e!3505252 () Bool)

(assert (=> b!5697681 (=> res!2406173 e!3505252)))

(assert (=> b!5697681 (= res!2406173 call!433671)))

(declare-fun e!3505249 () Bool)

(assert (=> b!5697681 (= e!3505249 e!3505252)))

(declare-fun b!5697682 () Bool)

(declare-fun e!3505253 () Bool)

(assert (=> b!5697682 (= e!3505253 call!433671)))

(declare-fun b!5697683 () Bool)

(assert (=> b!5697683 (= e!3505248 (= s!2326 (Cons!63256 (c!1003241 r!7292) Nil!63256)))))

(declare-fun c!1003312 () Bool)

(declare-fun call!433670 () Bool)

(declare-fun bm!433666 () Bool)

(assert (=> bm!433666 (= call!433670 (Exists!2793 (ite c!1003312 lambda!307201 lambda!307205)))))

(assert (=> b!5697684 (= e!3505249 call!433670)))

(declare-fun d!1797704 () Bool)

(declare-fun c!1003314 () Bool)

(assert (=> d!1797704 (= c!1003314 ((_ is EmptyExpr!15693) r!7292))))

(assert (=> d!1797704 (= (matchRSpec!2796 r!7292 s!2326) e!3505253)))

(declare-fun b!5697685 () Bool)

(assert (=> b!5697685 (= e!3505250 e!3505251)))

(declare-fun res!2406172 () Bool)

(assert (=> b!5697685 (= res!2406172 (matchRSpec!2796 (regOne!31899 r!7292) s!2326))))

(assert (=> b!5697685 (=> res!2406172 e!3505251)))

(declare-fun b!5697686 () Bool)

(assert (=> b!5697686 (= e!3505253 e!3505247)))

(declare-fun res!2406174 () Bool)

(assert (=> b!5697686 (= res!2406174 (not ((_ is EmptyLang!15693) r!7292)))))

(assert (=> b!5697686 (=> (not res!2406174) (not e!3505247))))

(assert (=> b!5697687 (= e!3505252 call!433670)))

(declare-fun b!5697688 () Bool)

(assert (=> b!5697688 (= e!3505250 e!3505249)))

(assert (=> b!5697688 (= c!1003312 ((_ is Star!15693) r!7292))))

(assert (= (and d!1797704 c!1003314) b!5697682))

(assert (= (and d!1797704 (not c!1003314)) b!5697686))

(assert (= (and b!5697686 res!2406174) b!5697679))

(assert (= (and b!5697679 c!1003311) b!5697683))

(assert (= (and b!5697679 (not c!1003311)) b!5697680))

(assert (= (and b!5697680 c!1003313) b!5697685))

(assert (= (and b!5697680 (not c!1003313)) b!5697688))

(assert (= (and b!5697685 (not res!2406172)) b!5697678))

(assert (= (and b!5697688 c!1003312) b!5697681))

(assert (= (and b!5697688 (not c!1003312)) b!5697684))

(assert (= (and b!5697681 (not res!2406173)) b!5697687))

(assert (= (or b!5697687 b!5697684) bm!433666))

(assert (= (or b!5697682 b!5697681) bm!433665))

(declare-fun m!6653486 () Bool)

(assert (=> b!5697678 m!6653486))

(declare-fun m!6653488 () Bool)

(assert (=> bm!433665 m!6653488))

(declare-fun m!6653490 () Bool)

(assert (=> bm!433666 m!6653490))

(declare-fun m!6653492 () Bool)

(assert (=> b!5697685 m!6653492))

(assert (=> b!5697439 d!1797704))

(declare-fun b!5697774 () Bool)

(declare-fun e!3505309 () Bool)

(declare-fun e!3505310 () Bool)

(assert (=> b!5697774 (= e!3505309 e!3505310)))

(declare-fun res!2406211 () Bool)

(assert (=> b!5697774 (=> (not res!2406211) (not e!3505310))))

(declare-fun lt!2273065 () Bool)

(assert (=> b!5697774 (= res!2406211 (not lt!2273065))))

(declare-fun b!5697775 () Bool)

(declare-fun res!2406214 () Bool)

(declare-fun e!3505312 () Bool)

(assert (=> b!5697775 (=> res!2406214 e!3505312)))

(declare-fun tail!11176 (List!63380) List!63380)

(assert (=> b!5697775 (= res!2406214 (not (isEmpty!35116 (tail!11176 s!2326))))))

(declare-fun b!5697776 () Bool)

(assert (=> b!5697776 (= e!3505310 e!3505312)))

(declare-fun res!2406216 () Bool)

(assert (=> b!5697776 (=> res!2406216 e!3505312)))

(declare-fun call!433680 () Bool)

(assert (=> b!5697776 (= res!2406216 call!433680)))

(declare-fun b!5697777 () Bool)

(declare-fun e!3505306 () Bool)

(declare-fun head!12081 (List!63380) C!31656)

(assert (=> b!5697777 (= e!3505306 (= (head!12081 s!2326) (c!1003241 r!7292)))))

(declare-fun b!5697778 () Bool)

(declare-fun res!2406215 () Bool)

(assert (=> b!5697778 (=> res!2406215 e!3505309)))

(assert (=> b!5697778 (= res!2406215 (not ((_ is ElementMatch!15693) r!7292)))))

(declare-fun e!3505307 () Bool)

(assert (=> b!5697778 (= e!3505307 e!3505309)))

(declare-fun b!5697779 () Bool)

(declare-fun res!2406212 () Bool)

(assert (=> b!5697779 (=> (not res!2406212) (not e!3505306))))

(assert (=> b!5697779 (= res!2406212 (not call!433680))))

(declare-fun bm!433675 () Bool)

(assert (=> bm!433675 (= call!433680 (isEmpty!35116 s!2326))))

(declare-fun b!5697780 () Bool)

(declare-fun res!2406217 () Bool)

(assert (=> b!5697780 (=> (not res!2406217) (not e!3505306))))

(assert (=> b!5697780 (= res!2406217 (isEmpty!35116 (tail!11176 s!2326)))))

(declare-fun b!5697781 () Bool)

(declare-fun e!3505308 () Bool)

(declare-fun derivativeStep!4504 (Regex!15693 C!31656) Regex!15693)

(assert (=> b!5697781 (= e!3505308 (matchR!7878 (derivativeStep!4504 r!7292 (head!12081 s!2326)) (tail!11176 s!2326)))))

(declare-fun d!1797752 () Bool)

(declare-fun e!3505311 () Bool)

(assert (=> d!1797752 e!3505311))

(declare-fun c!1003341 () Bool)

(assert (=> d!1797752 (= c!1003341 ((_ is EmptyExpr!15693) r!7292))))

(assert (=> d!1797752 (= lt!2273065 e!3505308)))

(declare-fun c!1003340 () Bool)

(assert (=> d!1797752 (= c!1003340 (isEmpty!35116 s!2326))))

(assert (=> d!1797752 (validRegex!7429 r!7292)))

(assert (=> d!1797752 (= (matchR!7878 r!7292 s!2326) lt!2273065)))

(declare-fun b!5697782 () Bool)

(assert (=> b!5697782 (= e!3505307 (not lt!2273065))))

(declare-fun b!5697783 () Bool)

(assert (=> b!5697783 (= e!3505308 (nullable!5725 r!7292))))

(declare-fun b!5697784 () Bool)

(assert (=> b!5697784 (= e!3505311 (= lt!2273065 call!433680))))

(declare-fun b!5697785 () Bool)

(assert (=> b!5697785 (= e!3505311 e!3505307)))

(declare-fun c!1003342 () Bool)

(assert (=> b!5697785 (= c!1003342 ((_ is EmptyLang!15693) r!7292))))

(declare-fun b!5697786 () Bool)

(assert (=> b!5697786 (= e!3505312 (not (= (head!12081 s!2326) (c!1003241 r!7292))))))

(declare-fun b!5697787 () Bool)

(declare-fun res!2406210 () Bool)

(assert (=> b!5697787 (=> res!2406210 e!3505309)))

(assert (=> b!5697787 (= res!2406210 e!3505306)))

(declare-fun res!2406213 () Bool)

(assert (=> b!5697787 (=> (not res!2406213) (not e!3505306))))

(assert (=> b!5697787 (= res!2406213 lt!2273065)))

(assert (= (and d!1797752 c!1003340) b!5697783))

(assert (= (and d!1797752 (not c!1003340)) b!5697781))

(assert (= (and d!1797752 c!1003341) b!5697784))

(assert (= (and d!1797752 (not c!1003341)) b!5697785))

(assert (= (and b!5697785 c!1003342) b!5697782))

(assert (= (and b!5697785 (not c!1003342)) b!5697778))

(assert (= (and b!5697778 (not res!2406215)) b!5697787))

(assert (= (and b!5697787 res!2406213) b!5697779))

(assert (= (and b!5697779 res!2406212) b!5697780))

(assert (= (and b!5697780 res!2406217) b!5697777))

(assert (= (and b!5697787 (not res!2406210)) b!5697774))

(assert (= (and b!5697774 res!2406211) b!5697776))

(assert (= (and b!5697776 (not res!2406216)) b!5697775))

(assert (= (and b!5697775 (not res!2406214)) b!5697786))

(assert (= (or b!5697784 b!5697776 b!5697779) bm!433675))

(declare-fun m!6653524 () Bool)

(assert (=> b!5697775 m!6653524))

(assert (=> b!5697775 m!6653524))

(declare-fun m!6653526 () Bool)

(assert (=> b!5697775 m!6653526))

(assert (=> d!1797752 m!6653488))

(assert (=> d!1797752 m!6653218))

(declare-fun m!6653528 () Bool)

(assert (=> b!5697783 m!6653528))

(declare-fun m!6653530 () Bool)

(assert (=> b!5697786 m!6653530))

(assert (=> b!5697780 m!6653524))

(assert (=> b!5697780 m!6653524))

(assert (=> b!5697780 m!6653526))

(assert (=> b!5697777 m!6653530))

(assert (=> b!5697781 m!6653530))

(assert (=> b!5697781 m!6653530))

(declare-fun m!6653532 () Bool)

(assert (=> b!5697781 m!6653532))

(assert (=> b!5697781 m!6653524))

(assert (=> b!5697781 m!6653532))

(assert (=> b!5697781 m!6653524))

(declare-fun m!6653534 () Bool)

(assert (=> b!5697781 m!6653534))

(assert (=> bm!433675 m!6653488))

(assert (=> b!5697439 d!1797752))

(declare-fun d!1797760 () Bool)

(assert (=> d!1797760 (= (matchR!7878 r!7292 s!2326) (matchRSpec!2796 r!7292 s!2326))))

(declare-fun lt!2273070 () Unit!156304)

(declare-fun choose!43094 (Regex!15693 List!63380) Unit!156304)

(assert (=> d!1797760 (= lt!2273070 (choose!43094 r!7292 s!2326))))

(assert (=> d!1797760 (validRegex!7429 r!7292)))

(assert (=> d!1797760 (= (mainMatchTheorem!2796 r!7292 s!2326) lt!2273070)))

(declare-fun bs!1328005 () Bool)

(assert (= bs!1328005 d!1797760))

(assert (=> bs!1328005 m!6653270))

(assert (=> bs!1328005 m!6653268))

(declare-fun m!6653536 () Bool)

(assert (=> bs!1328005 m!6653536))

(assert (=> bs!1328005 m!6653218))

(assert (=> b!5697439 d!1797760))

(declare-fun d!1797762 () Bool)

(declare-fun c!1003359 () Bool)

(assert (=> d!1797762 (= c!1003359 (isEmpty!35116 s!2326))))

(declare-fun e!3505340 () Bool)

(assert (=> d!1797762 (= (matchZipper!1831 lt!2272982 s!2326) e!3505340)))

(declare-fun b!5697831 () Bool)

(declare-fun nullableZipper!1651 ((InoxSet Context!10154)) Bool)

(assert (=> b!5697831 (= e!3505340 (nullableZipper!1651 lt!2272982))))

(declare-fun b!5697832 () Bool)

(assert (=> b!5697832 (= e!3505340 (matchZipper!1831 (derivationStepZipper!1776 lt!2272982 (head!12081 s!2326)) (tail!11176 s!2326)))))

(assert (= (and d!1797762 c!1003359) b!5697831))

(assert (= (and d!1797762 (not c!1003359)) b!5697832))

(assert (=> d!1797762 m!6653488))

(declare-fun m!6653556 () Bool)

(assert (=> b!5697831 m!6653556))

(assert (=> b!5697832 m!6653530))

(assert (=> b!5697832 m!6653530))

(declare-fun m!6653558 () Bool)

(assert (=> b!5697832 m!6653558))

(assert (=> b!5697832 m!6653524))

(assert (=> b!5697832 m!6653558))

(assert (=> b!5697832 m!6653524))

(declare-fun m!6653560 () Bool)

(assert (=> b!5697832 m!6653560))

(assert (=> b!5697420 d!1797762))

(declare-fun d!1797766 () Bool)

(declare-fun c!1003360 () Bool)

(assert (=> d!1797766 (= c!1003360 (isEmpty!35116 (t!376698 s!2326)))))

(declare-fun e!3505341 () Bool)

(assert (=> d!1797766 (= (matchZipper!1831 lt!2272988 (t!376698 s!2326)) e!3505341)))

(declare-fun b!5697833 () Bool)

(assert (=> b!5697833 (= e!3505341 (nullableZipper!1651 lt!2272988))))

(declare-fun b!5697834 () Bool)

(assert (=> b!5697834 (= e!3505341 (matchZipper!1831 (derivationStepZipper!1776 lt!2272988 (head!12081 (t!376698 s!2326))) (tail!11176 (t!376698 s!2326))))))

(assert (= (and d!1797766 c!1003360) b!5697833))

(assert (= (and d!1797766 (not c!1003360)) b!5697834))

(declare-fun m!6653562 () Bool)

(assert (=> d!1797766 m!6653562))

(declare-fun m!6653564 () Bool)

(assert (=> b!5697833 m!6653564))

(declare-fun m!6653566 () Bool)

(assert (=> b!5697834 m!6653566))

(assert (=> b!5697834 m!6653566))

(declare-fun m!6653568 () Bool)

(assert (=> b!5697834 m!6653568))

(declare-fun m!6653570 () Bool)

(assert (=> b!5697834 m!6653570))

(assert (=> b!5697834 m!6653568))

(assert (=> b!5697834 m!6653570))

(declare-fun m!6653572 () Bool)

(assert (=> b!5697834 m!6653572))

(assert (=> b!5697420 d!1797766))

(declare-fun d!1797768 () Bool)

(declare-fun c!1003366 () Bool)

(assert (=> d!1797768 (= c!1003366 (isEmpty!35116 (t!376698 s!2326)))))

(declare-fun e!3505348 () Bool)

(assert (=> d!1797768 (= (matchZipper!1831 lt!2273002 (t!376698 s!2326)) e!3505348)))

(declare-fun b!5697849 () Bool)

(assert (=> b!5697849 (= e!3505348 (nullableZipper!1651 lt!2273002))))

(declare-fun b!5697850 () Bool)

(assert (=> b!5697850 (= e!3505348 (matchZipper!1831 (derivationStepZipper!1776 lt!2273002 (head!12081 (t!376698 s!2326))) (tail!11176 (t!376698 s!2326))))))

(assert (= (and d!1797768 c!1003366) b!5697849))

(assert (= (and d!1797768 (not c!1003366)) b!5697850))

(assert (=> d!1797768 m!6653562))

(declare-fun m!6653574 () Bool)

(assert (=> b!5697849 m!6653574))

(assert (=> b!5697850 m!6653566))

(assert (=> b!5697850 m!6653566))

(declare-fun m!6653576 () Bool)

(assert (=> b!5697850 m!6653576))

(assert (=> b!5697850 m!6653570))

(assert (=> b!5697850 m!6653576))

(assert (=> b!5697850 m!6653570))

(declare-fun m!6653578 () Bool)

(assert (=> b!5697850 m!6653578))

(assert (=> b!5697421 d!1797768))

(declare-fun d!1797770 () Bool)

(declare-fun lt!2273074 () Regex!15693)

(assert (=> d!1797770 (validRegex!7429 lt!2273074)))

(assert (=> d!1797770 (= lt!2273074 (generalisedUnion!1556 (unfocusZipperList!1121 (Cons!63255 lt!2272984 Nil!63255))))))

(assert (=> d!1797770 (= (unfocusZipper!1435 (Cons!63255 lt!2272984 Nil!63255)) lt!2273074)))

(declare-fun bs!1328009 () Bool)

(assert (= bs!1328009 d!1797770))

(declare-fun m!6653580 () Bool)

(assert (=> bs!1328009 m!6653580))

(declare-fun m!6653582 () Bool)

(assert (=> bs!1328009 m!6653582))

(assert (=> bs!1328009 m!6653582))

(declare-fun m!6653584 () Bool)

(assert (=> bs!1328009 m!6653584))

(assert (=> b!5697402 d!1797770))

(declare-fun d!1797772 () Bool)

(assert (=> d!1797772 (= (isEmpty!35116 (_1!36093 lt!2272997)) ((_ is Nil!63256) (_1!36093 lt!2272997)))))

(assert (=> b!5697422 d!1797772))

(declare-fun d!1797774 () Bool)

(declare-fun lambda!307221 () Int)

(declare-fun forall!14833 (List!63378 Int) Bool)

(assert (=> d!1797774 (= (inv!82479 setElem!38151) (forall!14833 (exprs!5577 setElem!38151) lambda!307221))))

(declare-fun bs!1328010 () Bool)

(assert (= bs!1328010 d!1797774))

(declare-fun m!6653586 () Bool)

(assert (=> bs!1328010 m!6653586))

(assert (=> setNonEmpty!38151 d!1797774))

(declare-fun bs!1328011 () Bool)

(declare-fun d!1797776 () Bool)

(assert (= bs!1328011 (and d!1797776 d!1797774)))

(declare-fun lambda!307222 () Int)

(assert (=> bs!1328011 (= lambda!307222 lambda!307221)))

(assert (=> d!1797776 (= (inv!82479 (h!69703 zl!343)) (forall!14833 (exprs!5577 (h!69703 zl!343)) lambda!307222))))

(declare-fun bs!1328012 () Bool)

(assert (= bs!1328012 d!1797776))

(declare-fun m!6653588 () Bool)

(assert (=> bs!1328012 m!6653588))

(assert (=> b!5697435 d!1797776))

(declare-fun d!1797778 () Bool)

(assert (=> d!1797778 (= (flatMap!1306 lt!2272998 lambda!307179) (dynLambda!24750 lambda!307179 lt!2273001))))

(declare-fun lt!2273075 () Unit!156304)

(assert (=> d!1797778 (= lt!2273075 (choose!43092 lt!2272998 lt!2273001 lambda!307179))))

(assert (=> d!1797778 (= lt!2272998 (store ((as const (Array Context!10154 Bool)) false) lt!2273001 true))))

(assert (=> d!1797778 (= (lemmaFlatMapOnSingletonSet!838 lt!2272998 lt!2273001 lambda!307179) lt!2273075)))

(declare-fun b_lambda!215359 () Bool)

(assert (=> (not b_lambda!215359) (not d!1797778)))

(declare-fun bs!1328013 () Bool)

(assert (= bs!1328013 d!1797778))

(assert (=> bs!1328013 m!6653208))

(declare-fun m!6653590 () Bool)

(assert (=> bs!1328013 m!6653590))

(declare-fun m!6653592 () Bool)

(assert (=> bs!1328013 m!6653592))

(assert (=> bs!1328013 m!6653198))

(assert (=> b!5697415 d!1797778))

(declare-fun d!1797780 () Bool)

(assert (=> d!1797780 (= (flatMap!1306 lt!2272985 lambda!307179) (dynLambda!24750 lambda!307179 lt!2272976))))

(declare-fun lt!2273076 () Unit!156304)

(assert (=> d!1797780 (= lt!2273076 (choose!43092 lt!2272985 lt!2272976 lambda!307179))))

(assert (=> d!1797780 (= lt!2272985 (store ((as const (Array Context!10154 Bool)) false) lt!2272976 true))))

(assert (=> d!1797780 (= (lemmaFlatMapOnSingletonSet!838 lt!2272985 lt!2272976 lambda!307179) lt!2273076)))

(declare-fun b_lambda!215361 () Bool)

(assert (=> (not b_lambda!215361) (not d!1797780)))

(declare-fun bs!1328014 () Bool)

(assert (= bs!1328014 d!1797780))

(assert (=> bs!1328014 m!6653212))

(declare-fun m!6653594 () Bool)

(assert (=> bs!1328014 m!6653594))

(declare-fun m!6653596 () Bool)

(assert (=> bs!1328014 m!6653596))

(assert (=> bs!1328014 m!6653202))

(assert (=> b!5697415 d!1797780))

(declare-fun d!1797782 () Bool)

(declare-fun lt!2273077 () Regex!15693)

(assert (=> d!1797782 (validRegex!7429 lt!2273077)))

(assert (=> d!1797782 (= lt!2273077 (generalisedUnion!1556 (unfocusZipperList!1121 (Cons!63255 lt!2273001 Nil!63255))))))

(assert (=> d!1797782 (= (unfocusZipper!1435 (Cons!63255 lt!2273001 Nil!63255)) lt!2273077)))

(declare-fun bs!1328015 () Bool)

(assert (= bs!1328015 d!1797782))

(declare-fun m!6653598 () Bool)

(assert (=> bs!1328015 m!6653598))

(declare-fun m!6653600 () Bool)

(assert (=> bs!1328015 m!6653600))

(assert (=> bs!1328015 m!6653600))

(declare-fun m!6653602 () Bool)

(assert (=> bs!1328015 m!6653602))

(assert (=> b!5697415 d!1797782))

(declare-fun b!5697869 () Bool)

(declare-fun e!3505361 () (InoxSet Context!10154))

(assert (=> b!5697869 (= e!3505361 ((as const (Array Context!10154 Bool)) false))))

(declare-fun bm!433683 () Bool)

(declare-fun call!433688 () (InoxSet Context!10154))

(assert (=> bm!433683 (= call!433688 (derivationStepZipperDown!1035 (h!69702 (exprs!5577 lt!2272976)) (Context!10155 (t!376696 (exprs!5577 lt!2272976))) (h!69704 s!2326)))))

(declare-fun b!5697870 () Bool)

(declare-fun e!3505362 () Bool)

(assert (=> b!5697870 (= e!3505362 (nullable!5725 (h!69702 (exprs!5577 lt!2272976))))))

(declare-fun b!5697871 () Bool)

(assert (=> b!5697871 (= e!3505361 call!433688)))

(declare-fun b!5697872 () Bool)

(declare-fun e!3505363 () (InoxSet Context!10154))

(assert (=> b!5697872 (= e!3505363 ((_ map or) call!433688 (derivationStepZipperUp!961 (Context!10155 (t!376696 (exprs!5577 lt!2272976))) (h!69704 s!2326))))))

(declare-fun b!5697873 () Bool)

(assert (=> b!5697873 (= e!3505363 e!3505361)))

(declare-fun c!1003371 () Bool)

(assert (=> b!5697873 (= c!1003371 ((_ is Cons!63254) (exprs!5577 lt!2272976)))))

(declare-fun d!1797784 () Bool)

(declare-fun c!1003370 () Bool)

(assert (=> d!1797784 (= c!1003370 e!3505362)))

(declare-fun res!2406245 () Bool)

(assert (=> d!1797784 (=> (not res!2406245) (not e!3505362))))

(assert (=> d!1797784 (= res!2406245 ((_ is Cons!63254) (exprs!5577 lt!2272976)))))

(assert (=> d!1797784 (= (derivationStepZipperUp!961 lt!2272976 (h!69704 s!2326)) e!3505363)))

(assert (= (and d!1797784 res!2406245) b!5697870))

(assert (= (and d!1797784 c!1003370) b!5697872))

(assert (= (and d!1797784 (not c!1003370)) b!5697873))

(assert (= (and b!5697873 c!1003371) b!5697871))

(assert (= (and b!5697873 (not c!1003371)) b!5697869))

(assert (= (or b!5697872 b!5697871) bm!433683))

(declare-fun m!6653604 () Bool)

(assert (=> bm!433683 m!6653604))

(declare-fun m!6653606 () Bool)

(assert (=> b!5697870 m!6653606))

(declare-fun m!6653608 () Bool)

(assert (=> b!5697872 m!6653608))

(assert (=> b!5697415 d!1797784))

(declare-fun d!1797786 () Bool)

(assert (=> d!1797786 (= (flatMap!1306 lt!2272998 lambda!307179) (choose!43091 lt!2272998 lambda!307179))))

(declare-fun bs!1328016 () Bool)

(assert (= bs!1328016 d!1797786))

(declare-fun m!6653610 () Bool)

(assert (=> bs!1328016 m!6653610))

(assert (=> b!5697415 d!1797786))

(declare-fun b!5697885 () Bool)

(declare-fun e!3505371 () (InoxSet Context!10154))

(assert (=> b!5697885 (= e!3505371 ((as const (Array Context!10154 Bool)) false))))

(declare-fun bm!433686 () Bool)

(declare-fun call!433691 () (InoxSet Context!10154))

(assert (=> bm!433686 (= call!433691 (derivationStepZipperDown!1035 (h!69702 (exprs!5577 lt!2273001)) (Context!10155 (t!376696 (exprs!5577 lt!2273001))) (h!69704 s!2326)))))

(declare-fun b!5697886 () Bool)

(declare-fun e!3505372 () Bool)

(assert (=> b!5697886 (= e!3505372 (nullable!5725 (h!69702 (exprs!5577 lt!2273001))))))

(declare-fun b!5697887 () Bool)

(assert (=> b!5697887 (= e!3505371 call!433691)))

(declare-fun b!5697888 () Bool)

(declare-fun e!3505373 () (InoxSet Context!10154))

(assert (=> b!5697888 (= e!3505373 ((_ map or) call!433691 (derivationStepZipperUp!961 (Context!10155 (t!376696 (exprs!5577 lt!2273001))) (h!69704 s!2326))))))

(declare-fun b!5697889 () Bool)

(assert (=> b!5697889 (= e!3505373 e!3505371)))

(declare-fun c!1003377 () Bool)

(assert (=> b!5697889 (= c!1003377 ((_ is Cons!63254) (exprs!5577 lt!2273001)))))

(declare-fun d!1797788 () Bool)

(declare-fun c!1003376 () Bool)

(assert (=> d!1797788 (= c!1003376 e!3505372)))

(declare-fun res!2406249 () Bool)

(assert (=> d!1797788 (=> (not res!2406249) (not e!3505372))))

(assert (=> d!1797788 (= res!2406249 ((_ is Cons!63254) (exprs!5577 lt!2273001)))))

(assert (=> d!1797788 (= (derivationStepZipperUp!961 lt!2273001 (h!69704 s!2326)) e!3505373)))

(assert (= (and d!1797788 res!2406249) b!5697886))

(assert (= (and d!1797788 c!1003376) b!5697888))

(assert (= (and d!1797788 (not c!1003376)) b!5697889))

(assert (= (and b!5697889 c!1003377) b!5697887))

(assert (= (and b!5697889 (not c!1003377)) b!5697885))

(assert (= (or b!5697888 b!5697887) bm!433686))

(declare-fun m!6653612 () Bool)

(assert (=> bm!433686 m!6653612))

(declare-fun m!6653614 () Bool)

(assert (=> b!5697886 m!6653614))

(declare-fun m!6653616 () Bool)

(assert (=> b!5697888 m!6653616))

(assert (=> b!5697415 d!1797788))

(declare-fun d!1797790 () Bool)

(assert (=> d!1797790 (= (flatMap!1306 lt!2272985 lambda!307179) (choose!43091 lt!2272985 lambda!307179))))

(declare-fun bs!1328017 () Bool)

(assert (= bs!1328017 d!1797790))

(declare-fun m!6653618 () Bool)

(assert (=> bs!1328017 m!6653618))

(assert (=> b!5697415 d!1797790))

(declare-fun d!1797792 () Bool)

(assert (=> d!1797792 (= (get!21799 lt!2272991) (v!51754 lt!2272991))))

(assert (=> b!5697436 d!1797792))

(declare-fun b!5697945 () Bool)

(declare-fun e!3505403 () Bool)

(declare-fun lt!2273094 () Option!15702)

(assert (=> b!5697945 (= e!3505403 (= (++!13885 (_1!36093 (get!21799 lt!2273094)) (_2!36093 (get!21799 lt!2273094))) s!2326))))

(declare-fun b!5697946 () Bool)

(declare-fun e!3505404 () Option!15702)

(assert (=> b!5697946 (= e!3505404 (Some!15701 (tuple2!65581 Nil!63256 s!2326)))))

(declare-fun b!5697947 () Bool)

(declare-fun e!3505402 () Bool)

(assert (=> b!5697947 (= e!3505402 (matchR!7878 (regTwo!31898 r!7292) s!2326))))

(declare-fun b!5697948 () Bool)

(declare-fun e!3505405 () Option!15702)

(assert (=> b!5697948 (= e!3505405 None!15701)))

(declare-fun b!5697949 () Bool)

(declare-fun res!2406278 () Bool)

(assert (=> b!5697949 (=> (not res!2406278) (not e!3505403))))

(assert (=> b!5697949 (= res!2406278 (matchR!7878 lt!2273008 (_1!36093 (get!21799 lt!2273094))))))

(declare-fun b!5697950 () Bool)

(declare-fun res!2406281 () Bool)

(assert (=> b!5697950 (=> (not res!2406281) (not e!3505403))))

(assert (=> b!5697950 (= res!2406281 (matchR!7878 (regTwo!31898 r!7292) (_2!36093 (get!21799 lt!2273094))))))

(declare-fun b!5697951 () Bool)

(declare-fun lt!2273092 () Unit!156304)

(declare-fun lt!2273093 () Unit!156304)

(assert (=> b!5697951 (= lt!2273092 lt!2273093)))

(assert (=> b!5697951 (= (++!13885 (++!13885 Nil!63256 (Cons!63256 (h!69704 s!2326) Nil!63256)) (t!376698 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2054 (List!63380 C!31656 List!63380 List!63380) Unit!156304)

(assert (=> b!5697951 (= lt!2273093 (lemmaMoveElementToOtherListKeepsConcatEq!2054 Nil!63256 (h!69704 s!2326) (t!376698 s!2326) s!2326))))

(assert (=> b!5697951 (= e!3505405 (findConcatSeparation!2116 lt!2273008 (regTwo!31898 r!7292) (++!13885 Nil!63256 (Cons!63256 (h!69704 s!2326) Nil!63256)) (t!376698 s!2326) s!2326))))

(declare-fun b!5697952 () Bool)

(declare-fun e!3505406 () Bool)

(assert (=> b!5697952 (= e!3505406 (not (isDefined!12405 lt!2273094)))))

(declare-fun d!1797794 () Bool)

(assert (=> d!1797794 e!3505406))

(declare-fun res!2406280 () Bool)

(assert (=> d!1797794 (=> res!2406280 e!3505406)))

(assert (=> d!1797794 (= res!2406280 e!3505403)))

(declare-fun res!2406277 () Bool)

(assert (=> d!1797794 (=> (not res!2406277) (not e!3505403))))

(assert (=> d!1797794 (= res!2406277 (isDefined!12405 lt!2273094))))

(assert (=> d!1797794 (= lt!2273094 e!3505404)))

(declare-fun c!1003394 () Bool)

(assert (=> d!1797794 (= c!1003394 e!3505402)))

(declare-fun res!2406279 () Bool)

(assert (=> d!1797794 (=> (not res!2406279) (not e!3505402))))

(assert (=> d!1797794 (= res!2406279 (matchR!7878 lt!2273008 Nil!63256))))

(assert (=> d!1797794 (validRegex!7429 lt!2273008)))

(assert (=> d!1797794 (= (findConcatSeparation!2116 lt!2273008 (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326) lt!2273094)))

(declare-fun b!5697953 () Bool)

(assert (=> b!5697953 (= e!3505404 e!3505405)))

(declare-fun c!1003393 () Bool)

(assert (=> b!5697953 (= c!1003393 ((_ is Nil!63256) s!2326))))

(assert (= (and d!1797794 res!2406279) b!5697947))

(assert (= (and d!1797794 c!1003394) b!5697946))

(assert (= (and d!1797794 (not c!1003394)) b!5697953))

(assert (= (and b!5697953 c!1003393) b!5697948))

(assert (= (and b!5697953 (not c!1003393)) b!5697951))

(assert (= (and d!1797794 res!2406277) b!5697949))

(assert (= (and b!5697949 res!2406278) b!5697950))

(assert (= (and b!5697950 res!2406281) b!5697945))

(assert (= (and d!1797794 (not res!2406280)) b!5697952))

(declare-fun m!6653696 () Bool)

(assert (=> b!5697950 m!6653696))

(declare-fun m!6653700 () Bool)

(assert (=> b!5697950 m!6653700))

(declare-fun m!6653702 () Bool)

(assert (=> b!5697952 m!6653702))

(declare-fun m!6653704 () Bool)

(assert (=> b!5697947 m!6653704))

(declare-fun m!6653706 () Bool)

(assert (=> b!5697951 m!6653706))

(assert (=> b!5697951 m!6653706))

(declare-fun m!6653708 () Bool)

(assert (=> b!5697951 m!6653708))

(declare-fun m!6653710 () Bool)

(assert (=> b!5697951 m!6653710))

(assert (=> b!5697951 m!6653706))

(declare-fun m!6653714 () Bool)

(assert (=> b!5697951 m!6653714))

(assert (=> d!1797794 m!6653702))

(declare-fun m!6653718 () Bool)

(assert (=> d!1797794 m!6653718))

(declare-fun m!6653720 () Bool)

(assert (=> d!1797794 m!6653720))

(assert (=> b!5697945 m!6653696))

(declare-fun m!6653724 () Bool)

(assert (=> b!5697945 m!6653724))

(assert (=> b!5697949 m!6653696))

(declare-fun m!6653726 () Bool)

(assert (=> b!5697949 m!6653726))

(assert (=> b!5697436 d!1797794))

(declare-fun d!1797830 () Bool)

(declare-fun choose!43096 (Int) Bool)

(assert (=> d!1797830 (= (Exists!2793 lambda!307180) (choose!43096 lambda!307180))))

(declare-fun bs!1328048 () Bool)

(assert (= bs!1328048 d!1797830))

(declare-fun m!6653728 () Bool)

(assert (=> bs!1328048 m!6653728))

(assert (=> b!5697436 d!1797830))

(declare-fun b!5697991 () Bool)

(declare-fun e!3505428 () List!63380)

(assert (=> b!5697991 (= e!3505428 (_2!36093 lt!2272997))))

(declare-fun d!1797832 () Bool)

(declare-fun e!3505427 () Bool)

(assert (=> d!1797832 e!3505427))

(declare-fun res!2406298 () Bool)

(assert (=> d!1797832 (=> (not res!2406298) (not e!3505427))))

(declare-fun lt!2273098 () List!63380)

(declare-fun content!11475 (List!63380) (InoxSet C!31656))

(assert (=> d!1797832 (= res!2406298 (= (content!11475 lt!2273098) ((_ map or) (content!11475 (_1!36093 lt!2272997)) (content!11475 (_2!36093 lt!2272997)))))))

(assert (=> d!1797832 (= lt!2273098 e!3505428)))

(declare-fun c!1003406 () Bool)

(assert (=> d!1797832 (= c!1003406 ((_ is Nil!63256) (_1!36093 lt!2272997)))))

(assert (=> d!1797832 (= (++!13885 (_1!36093 lt!2272997) (_2!36093 lt!2272997)) lt!2273098)))

(declare-fun b!5697992 () Bool)

(assert (=> b!5697992 (= e!3505428 (Cons!63256 (h!69704 (_1!36093 lt!2272997)) (++!13885 (t!376698 (_1!36093 lt!2272997)) (_2!36093 lt!2272997))))))

(declare-fun b!5697994 () Bool)

(assert (=> b!5697994 (= e!3505427 (or (not (= (_2!36093 lt!2272997) Nil!63256)) (= lt!2273098 (_1!36093 lt!2272997))))))

(declare-fun b!5697993 () Bool)

(declare-fun res!2406297 () Bool)

(assert (=> b!5697993 (=> (not res!2406297) (not e!3505427))))

(declare-fun size!40011 (List!63380) Int)

(assert (=> b!5697993 (= res!2406297 (= (size!40011 lt!2273098) (+ (size!40011 (_1!36093 lt!2272997)) (size!40011 (_2!36093 lt!2272997)))))))

(assert (= (and d!1797832 c!1003406) b!5697991))

(assert (= (and d!1797832 (not c!1003406)) b!5697992))

(assert (= (and d!1797832 res!2406298) b!5697993))

(assert (= (and b!5697993 res!2406297) b!5697994))

(declare-fun m!6653738 () Bool)

(assert (=> d!1797832 m!6653738))

(declare-fun m!6653740 () Bool)

(assert (=> d!1797832 m!6653740))

(declare-fun m!6653742 () Bool)

(assert (=> d!1797832 m!6653742))

(declare-fun m!6653744 () Bool)

(assert (=> b!5697992 m!6653744))

(declare-fun m!6653746 () Bool)

(assert (=> b!5697993 m!6653746))

(declare-fun m!6653748 () Bool)

(assert (=> b!5697993 m!6653748))

(declare-fun m!6653750 () Bool)

(assert (=> b!5697993 m!6653750))

(assert (=> b!5697436 d!1797832))

(declare-fun d!1797836 () Bool)

(assert (=> d!1797836 (= (Exists!2793 lambda!307181) (choose!43096 lambda!307181))))

(declare-fun bs!1328066 () Bool)

(assert (= bs!1328066 d!1797836))

(declare-fun m!6653752 () Bool)

(assert (=> bs!1328066 m!6653752))

(assert (=> b!5697436 d!1797836))

(declare-fun bs!1328069 () Bool)

(declare-fun d!1797838 () Bool)

(assert (= bs!1328069 (and d!1797838 b!5697416)))

(declare-fun lambda!307234 () Int)

(assert (=> bs!1328069 (= (= lt!2273008 (regOne!31898 r!7292)) (= lambda!307234 lambda!307177))))

(declare-fun bs!1328070 () Bool)

(assert (= bs!1328070 (and d!1797838 b!5697684)))

(assert (=> bs!1328070 (not (= lambda!307234 lambda!307205))))

(declare-fun bs!1328072 () Bool)

(assert (= bs!1328072 (and d!1797838 b!5697436)))

(assert (=> bs!1328072 (= lambda!307234 lambda!307180)))

(assert (=> bs!1328069 (not (= lambda!307234 lambda!307178))))

(declare-fun bs!1328075 () Bool)

(assert (= bs!1328075 (and d!1797838 b!5697687)))

(assert (=> bs!1328075 (not (= lambda!307234 lambda!307201))))

(assert (=> bs!1328072 (not (= lambda!307234 lambda!307181))))

(assert (=> d!1797838 true))

(assert (=> d!1797838 true))

(assert (=> d!1797838 true))

(assert (=> d!1797838 (= (isDefined!12405 (findConcatSeparation!2116 lt!2273008 (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326)) (Exists!2793 lambda!307234))))

(declare-fun lt!2273103 () Unit!156304)

(declare-fun choose!43097 (Regex!15693 Regex!15693 List!63380) Unit!156304)

(assert (=> d!1797838 (= lt!2273103 (choose!43097 lt!2273008 (regTwo!31898 r!7292) s!2326))))

(assert (=> d!1797838 (validRegex!7429 lt!2273008)))

(assert (=> d!1797838 (= (lemmaFindConcatSeparationEquivalentToExists!1880 lt!2273008 (regTwo!31898 r!7292) s!2326) lt!2273103)))

(declare-fun bs!1328078 () Bool)

(assert (= bs!1328078 d!1797838))

(assert (=> bs!1328078 m!6653150))

(declare-fun m!6653780 () Bool)

(assert (=> bs!1328078 m!6653780))

(declare-fun m!6653782 () Bool)

(assert (=> bs!1328078 m!6653782))

(assert (=> bs!1328078 m!6653720))

(assert (=> bs!1328078 m!6653150))

(declare-fun m!6653784 () Bool)

(assert (=> bs!1328078 m!6653784))

(assert (=> b!5697436 d!1797838))

(declare-fun bs!1328079 () Bool)

(declare-fun d!1797858 () Bool)

(assert (= bs!1328079 (and d!1797858 d!1797838)))

(declare-fun lambda!307239 () Int)

(assert (=> bs!1328079 (= lambda!307239 lambda!307234)))

(declare-fun bs!1328080 () Bool)

(assert (= bs!1328080 (and d!1797858 b!5697416)))

(assert (=> bs!1328080 (= (= lt!2273008 (regOne!31898 r!7292)) (= lambda!307239 lambda!307177))))

(declare-fun bs!1328081 () Bool)

(assert (= bs!1328081 (and d!1797858 b!5697684)))

(assert (=> bs!1328081 (not (= lambda!307239 lambda!307205))))

(declare-fun bs!1328082 () Bool)

(assert (= bs!1328082 (and d!1797858 b!5697436)))

(assert (=> bs!1328082 (= lambda!307239 lambda!307180)))

(assert (=> bs!1328080 (not (= lambda!307239 lambda!307178))))

(declare-fun bs!1328083 () Bool)

(assert (= bs!1328083 (and d!1797858 b!5697687)))

(assert (=> bs!1328083 (not (= lambda!307239 lambda!307201))))

(assert (=> bs!1328082 (not (= lambda!307239 lambda!307181))))

(assert (=> d!1797858 true))

(assert (=> d!1797858 true))

(assert (=> d!1797858 true))

(declare-fun lambda!307240 () Int)

(assert (=> bs!1328080 (not (= lambda!307240 lambda!307177))))

(assert (=> bs!1328081 (= (= lt!2273008 (regOne!31898 r!7292)) (= lambda!307240 lambda!307205))))

(assert (=> bs!1328082 (not (= lambda!307240 lambda!307180))))

(assert (=> bs!1328080 (= (= lt!2273008 (regOne!31898 r!7292)) (= lambda!307240 lambda!307178))))

(declare-fun bs!1328084 () Bool)

(assert (= bs!1328084 d!1797858))

(assert (=> bs!1328084 (not (= lambda!307240 lambda!307239))))

(assert (=> bs!1328079 (not (= lambda!307240 lambda!307234))))

(assert (=> bs!1328083 (not (= lambda!307240 lambda!307201))))

(assert (=> bs!1328082 (= lambda!307240 lambda!307181)))

(assert (=> d!1797858 true))

(assert (=> d!1797858 true))

(assert (=> d!1797858 true))

(assert (=> d!1797858 (= (Exists!2793 lambda!307239) (Exists!2793 lambda!307240))))

(declare-fun lt!2273106 () Unit!156304)

(declare-fun choose!43098 (Regex!15693 Regex!15693 List!63380) Unit!156304)

(assert (=> d!1797858 (= lt!2273106 (choose!43098 lt!2273008 (regTwo!31898 r!7292) s!2326))))

(assert (=> d!1797858 (validRegex!7429 lt!2273008)))

(assert (=> d!1797858 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1422 lt!2273008 (regTwo!31898 r!7292) s!2326) lt!2273106)))

(declare-fun m!6653786 () Bool)

(assert (=> bs!1328084 m!6653786))

(declare-fun m!6653788 () Bool)

(assert (=> bs!1328084 m!6653788))

(declare-fun m!6653790 () Bool)

(assert (=> bs!1328084 m!6653790))

(assert (=> bs!1328084 m!6653720))

(assert (=> b!5697436 d!1797858))

(declare-fun d!1797860 () Bool)

(declare-fun isEmpty!35118 (Option!15702) Bool)

(assert (=> d!1797860 (= (isDefined!12405 lt!2272991) (not (isEmpty!35118 lt!2272991)))))

(declare-fun bs!1328085 () Bool)

(assert (= bs!1328085 d!1797860))

(declare-fun m!6653792 () Bool)

(assert (=> bs!1328085 m!6653792))

(assert (=> b!5697436 d!1797860))

(declare-fun b!5698072 () Bool)

(declare-fun e!3505467 () Bool)

(declare-fun e!3505468 () Bool)

(assert (=> b!5698072 (= e!3505467 e!3505468)))

(declare-fun res!2406313 () Bool)

(assert (=> b!5698072 (=> (not res!2406313) (not e!3505468))))

(declare-fun lt!2273107 () Bool)

(assert (=> b!5698072 (= res!2406313 (not lt!2273107))))

(declare-fun b!5698073 () Bool)

(declare-fun res!2406316 () Bool)

(declare-fun e!3505470 () Bool)

(assert (=> b!5698073 (=> res!2406316 e!3505470)))

(assert (=> b!5698073 (= res!2406316 (not (isEmpty!35116 (tail!11176 (_1!36093 lt!2272997)))))))

(declare-fun b!5698074 () Bool)

(assert (=> b!5698074 (= e!3505468 e!3505470)))

(declare-fun res!2406318 () Bool)

(assert (=> b!5698074 (=> res!2406318 e!3505470)))

(declare-fun call!433704 () Bool)

(assert (=> b!5698074 (= res!2406318 call!433704)))

(declare-fun b!5698075 () Bool)

(declare-fun e!3505464 () Bool)

(assert (=> b!5698075 (= e!3505464 (= (head!12081 (_1!36093 lt!2272997)) (c!1003241 lt!2273008)))))

(declare-fun b!5698076 () Bool)

(declare-fun res!2406317 () Bool)

(assert (=> b!5698076 (=> res!2406317 e!3505467)))

(assert (=> b!5698076 (= res!2406317 (not ((_ is ElementMatch!15693) lt!2273008)))))

(declare-fun e!3505465 () Bool)

(assert (=> b!5698076 (= e!3505465 e!3505467)))

(declare-fun b!5698077 () Bool)

(declare-fun res!2406314 () Bool)

(assert (=> b!5698077 (=> (not res!2406314) (not e!3505464))))

(assert (=> b!5698077 (= res!2406314 (not call!433704))))

(declare-fun bm!433699 () Bool)

(assert (=> bm!433699 (= call!433704 (isEmpty!35116 (_1!36093 lt!2272997)))))

(declare-fun b!5698078 () Bool)

(declare-fun res!2406319 () Bool)

(assert (=> b!5698078 (=> (not res!2406319) (not e!3505464))))

(assert (=> b!5698078 (= res!2406319 (isEmpty!35116 (tail!11176 (_1!36093 lt!2272997))))))

(declare-fun b!5698079 () Bool)

(declare-fun e!3505466 () Bool)

(assert (=> b!5698079 (= e!3505466 (matchR!7878 (derivativeStep!4504 lt!2273008 (head!12081 (_1!36093 lt!2272997))) (tail!11176 (_1!36093 lt!2272997))))))

(declare-fun d!1797862 () Bool)

(declare-fun e!3505469 () Bool)

(assert (=> d!1797862 e!3505469))

(declare-fun c!1003413 () Bool)

(assert (=> d!1797862 (= c!1003413 ((_ is EmptyExpr!15693) lt!2273008))))

(assert (=> d!1797862 (= lt!2273107 e!3505466)))

(declare-fun c!1003412 () Bool)

(assert (=> d!1797862 (= c!1003412 (isEmpty!35116 (_1!36093 lt!2272997)))))

(assert (=> d!1797862 (validRegex!7429 lt!2273008)))

(assert (=> d!1797862 (= (matchR!7878 lt!2273008 (_1!36093 lt!2272997)) lt!2273107)))

(declare-fun b!5698080 () Bool)

(assert (=> b!5698080 (= e!3505465 (not lt!2273107))))

(declare-fun b!5698081 () Bool)

(assert (=> b!5698081 (= e!3505466 (nullable!5725 lt!2273008))))

(declare-fun b!5698082 () Bool)

(assert (=> b!5698082 (= e!3505469 (= lt!2273107 call!433704))))

(declare-fun b!5698083 () Bool)

(assert (=> b!5698083 (= e!3505469 e!3505465)))

(declare-fun c!1003414 () Bool)

(assert (=> b!5698083 (= c!1003414 ((_ is EmptyLang!15693) lt!2273008))))

(declare-fun b!5698084 () Bool)

(assert (=> b!5698084 (= e!3505470 (not (= (head!12081 (_1!36093 lt!2272997)) (c!1003241 lt!2273008))))))

(declare-fun b!5698085 () Bool)

(declare-fun res!2406312 () Bool)

(assert (=> b!5698085 (=> res!2406312 e!3505467)))

(assert (=> b!5698085 (= res!2406312 e!3505464)))

(declare-fun res!2406315 () Bool)

(assert (=> b!5698085 (=> (not res!2406315) (not e!3505464))))

(assert (=> b!5698085 (= res!2406315 lt!2273107)))

(assert (= (and d!1797862 c!1003412) b!5698081))

(assert (= (and d!1797862 (not c!1003412)) b!5698079))

(assert (= (and d!1797862 c!1003413) b!5698082))

(assert (= (and d!1797862 (not c!1003413)) b!5698083))

(assert (= (and b!5698083 c!1003414) b!5698080))

(assert (= (and b!5698083 (not c!1003414)) b!5698076))

(assert (= (and b!5698076 (not res!2406317)) b!5698085))

(assert (= (and b!5698085 res!2406315) b!5698077))

(assert (= (and b!5698077 res!2406314) b!5698078))

(assert (= (and b!5698078 res!2406319) b!5698075))

(assert (= (and b!5698085 (not res!2406312)) b!5698072))

(assert (= (and b!5698072 res!2406313) b!5698074))

(assert (= (and b!5698074 (not res!2406318)) b!5698073))

(assert (= (and b!5698073 (not res!2406316)) b!5698084))

(assert (= (or b!5698082 b!5698074 b!5698077) bm!433699))

(declare-fun m!6653794 () Bool)

(assert (=> b!5698073 m!6653794))

(assert (=> b!5698073 m!6653794))

(declare-fun m!6653796 () Bool)

(assert (=> b!5698073 m!6653796))

(assert (=> d!1797862 m!6653244))

(assert (=> d!1797862 m!6653720))

(declare-fun m!6653798 () Bool)

(assert (=> b!5698081 m!6653798))

(declare-fun m!6653800 () Bool)

(assert (=> b!5698084 m!6653800))

(assert (=> b!5698078 m!6653794))

(assert (=> b!5698078 m!6653794))

(assert (=> b!5698078 m!6653796))

(assert (=> b!5698075 m!6653800))

(assert (=> b!5698079 m!6653800))

(assert (=> b!5698079 m!6653800))

(declare-fun m!6653802 () Bool)

(assert (=> b!5698079 m!6653802))

(assert (=> b!5698079 m!6653794))

(assert (=> b!5698079 m!6653802))

(assert (=> b!5698079 m!6653794))

(declare-fun m!6653804 () Bool)

(assert (=> b!5698079 m!6653804))

(assert (=> bm!433699 m!6653244))

(assert (=> b!5697437 d!1797862))

(declare-fun b!5698086 () Bool)

(declare-fun e!3505472 () Bool)

(declare-fun lt!2273110 () Option!15702)

(assert (=> b!5698086 (= e!3505472 (= (++!13885 (_1!36093 (get!21799 lt!2273110)) (_2!36093 (get!21799 lt!2273110))) s!2326))))

(declare-fun b!5698087 () Bool)

(declare-fun e!3505473 () Option!15702)

(assert (=> b!5698087 (= e!3505473 (Some!15701 (tuple2!65581 Nil!63256 s!2326)))))

(declare-fun b!5698088 () Bool)

(declare-fun e!3505471 () Bool)

(assert (=> b!5698088 (= e!3505471 (matchR!7878 (regTwo!31898 r!7292) s!2326))))

(declare-fun b!5698089 () Bool)

(declare-fun e!3505474 () Option!15702)

(assert (=> b!5698089 (= e!3505474 None!15701)))

(declare-fun b!5698090 () Bool)

(declare-fun res!2406321 () Bool)

(assert (=> b!5698090 (=> (not res!2406321) (not e!3505472))))

(assert (=> b!5698090 (= res!2406321 (matchR!7878 (regOne!31898 r!7292) (_1!36093 (get!21799 lt!2273110))))))

(declare-fun b!5698091 () Bool)

(declare-fun res!2406324 () Bool)

(assert (=> b!5698091 (=> (not res!2406324) (not e!3505472))))

(assert (=> b!5698091 (= res!2406324 (matchR!7878 (regTwo!31898 r!7292) (_2!36093 (get!21799 lt!2273110))))))

(declare-fun b!5698092 () Bool)

(declare-fun lt!2273108 () Unit!156304)

(declare-fun lt!2273109 () Unit!156304)

(assert (=> b!5698092 (= lt!2273108 lt!2273109)))

(assert (=> b!5698092 (= (++!13885 (++!13885 Nil!63256 (Cons!63256 (h!69704 s!2326) Nil!63256)) (t!376698 s!2326)) s!2326)))

(assert (=> b!5698092 (= lt!2273109 (lemmaMoveElementToOtherListKeepsConcatEq!2054 Nil!63256 (h!69704 s!2326) (t!376698 s!2326) s!2326))))

(assert (=> b!5698092 (= e!3505474 (findConcatSeparation!2116 (regOne!31898 r!7292) (regTwo!31898 r!7292) (++!13885 Nil!63256 (Cons!63256 (h!69704 s!2326) Nil!63256)) (t!376698 s!2326) s!2326))))

(declare-fun b!5698093 () Bool)

(declare-fun e!3505475 () Bool)

(assert (=> b!5698093 (= e!3505475 (not (isDefined!12405 lt!2273110)))))

(declare-fun d!1797864 () Bool)

(assert (=> d!1797864 e!3505475))

(declare-fun res!2406323 () Bool)

(assert (=> d!1797864 (=> res!2406323 e!3505475)))

(assert (=> d!1797864 (= res!2406323 e!3505472)))

(declare-fun res!2406320 () Bool)

(assert (=> d!1797864 (=> (not res!2406320) (not e!3505472))))

(assert (=> d!1797864 (= res!2406320 (isDefined!12405 lt!2273110))))

(assert (=> d!1797864 (= lt!2273110 e!3505473)))

(declare-fun c!1003416 () Bool)

(assert (=> d!1797864 (= c!1003416 e!3505471)))

(declare-fun res!2406322 () Bool)

(assert (=> d!1797864 (=> (not res!2406322) (not e!3505471))))

(assert (=> d!1797864 (= res!2406322 (matchR!7878 (regOne!31898 r!7292) Nil!63256))))

(assert (=> d!1797864 (validRegex!7429 (regOne!31898 r!7292))))

(assert (=> d!1797864 (= (findConcatSeparation!2116 (regOne!31898 r!7292) (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326) lt!2273110)))

(declare-fun b!5698094 () Bool)

(assert (=> b!5698094 (= e!3505473 e!3505474)))

(declare-fun c!1003415 () Bool)

(assert (=> b!5698094 (= c!1003415 ((_ is Nil!63256) s!2326))))

(assert (= (and d!1797864 res!2406322) b!5698088))

(assert (= (and d!1797864 c!1003416) b!5698087))

(assert (= (and d!1797864 (not c!1003416)) b!5698094))

(assert (= (and b!5698094 c!1003415) b!5698089))

(assert (= (and b!5698094 (not c!1003415)) b!5698092))

(assert (= (and d!1797864 res!2406320) b!5698090))

(assert (= (and b!5698090 res!2406321) b!5698091))

(assert (= (and b!5698091 res!2406324) b!5698086))

(assert (= (and d!1797864 (not res!2406323)) b!5698093))

(declare-fun m!6653806 () Bool)

(assert (=> b!5698091 m!6653806))

(declare-fun m!6653808 () Bool)

(assert (=> b!5698091 m!6653808))

(declare-fun m!6653810 () Bool)

(assert (=> b!5698093 m!6653810))

(assert (=> b!5698088 m!6653704))

(assert (=> b!5698092 m!6653706))

(assert (=> b!5698092 m!6653706))

(assert (=> b!5698092 m!6653708))

(assert (=> b!5698092 m!6653710))

(assert (=> b!5698092 m!6653706))

(declare-fun m!6653812 () Bool)

(assert (=> b!5698092 m!6653812))

(assert (=> d!1797864 m!6653810))

(declare-fun m!6653814 () Bool)

(assert (=> d!1797864 m!6653814))

(declare-fun m!6653816 () Bool)

(assert (=> d!1797864 m!6653816))

(assert (=> b!5698086 m!6653806))

(declare-fun m!6653818 () Bool)

(assert (=> b!5698086 m!6653818))

(assert (=> b!5698090 m!6653806))

(declare-fun m!6653820 () Bool)

(assert (=> b!5698090 m!6653820))

(assert (=> b!5697416 d!1797864))

(declare-fun d!1797866 () Bool)

(assert (=> d!1797866 (= (Exists!2793 lambda!307177) (choose!43096 lambda!307177))))

(declare-fun bs!1328086 () Bool)

(assert (= bs!1328086 d!1797866))

(declare-fun m!6653822 () Bool)

(assert (=> bs!1328086 m!6653822))

(assert (=> b!5697416 d!1797866))

(declare-fun d!1797868 () Bool)

(assert (=> d!1797868 (= (Exists!2793 lambda!307178) (choose!43096 lambda!307178))))

(declare-fun bs!1328087 () Bool)

(assert (= bs!1328087 d!1797868))

(declare-fun m!6653824 () Bool)

(assert (=> bs!1328087 m!6653824))

(assert (=> b!5697416 d!1797868))

(declare-fun bs!1328088 () Bool)

(declare-fun d!1797870 () Bool)

(assert (= bs!1328088 (and d!1797870 b!5697416)))

(declare-fun lambda!307241 () Int)

(assert (=> bs!1328088 (= lambda!307241 lambda!307177)))

(declare-fun bs!1328089 () Bool)

(assert (= bs!1328089 (and d!1797870 d!1797858)))

(assert (=> bs!1328089 (not (= lambda!307241 lambda!307240))))

(declare-fun bs!1328090 () Bool)

(assert (= bs!1328090 (and d!1797870 b!5697684)))

(assert (=> bs!1328090 (not (= lambda!307241 lambda!307205))))

(declare-fun bs!1328091 () Bool)

(assert (= bs!1328091 (and d!1797870 b!5697436)))

(assert (=> bs!1328091 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307241 lambda!307180))))

(assert (=> bs!1328088 (not (= lambda!307241 lambda!307178))))

(assert (=> bs!1328089 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307241 lambda!307239))))

(declare-fun bs!1328092 () Bool)

(assert (= bs!1328092 (and d!1797870 d!1797838)))

(assert (=> bs!1328092 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307241 lambda!307234))))

(declare-fun bs!1328093 () Bool)

(assert (= bs!1328093 (and d!1797870 b!5697687)))

(assert (=> bs!1328093 (not (= lambda!307241 lambda!307201))))

(assert (=> bs!1328091 (not (= lambda!307241 lambda!307181))))

(assert (=> d!1797870 true))

(assert (=> d!1797870 true))

(assert (=> d!1797870 true))

(assert (=> d!1797870 (= (isDefined!12405 (findConcatSeparation!2116 (regOne!31898 r!7292) (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326)) (Exists!2793 lambda!307241))))

(declare-fun lt!2273111 () Unit!156304)

(assert (=> d!1797870 (= lt!2273111 (choose!43097 (regOne!31898 r!7292) (regTwo!31898 r!7292) s!2326))))

(assert (=> d!1797870 (validRegex!7429 (regOne!31898 r!7292))))

(assert (=> d!1797870 (= (lemmaFindConcatSeparationEquivalentToExists!1880 (regOne!31898 r!7292) (regTwo!31898 r!7292) s!2326) lt!2273111)))

(declare-fun bs!1328094 () Bool)

(assert (= bs!1328094 d!1797870))

(assert (=> bs!1328094 m!6653258))

(declare-fun m!6653826 () Bool)

(assert (=> bs!1328094 m!6653826))

(declare-fun m!6653828 () Bool)

(assert (=> bs!1328094 m!6653828))

(assert (=> bs!1328094 m!6653816))

(assert (=> bs!1328094 m!6653258))

(assert (=> bs!1328094 m!6653260))

(assert (=> b!5697416 d!1797870))

(declare-fun bs!1328095 () Bool)

(declare-fun d!1797872 () Bool)

(assert (= bs!1328095 (and d!1797872 b!5697416)))

(declare-fun lambda!307242 () Int)

(assert (=> bs!1328095 (= lambda!307242 lambda!307177)))

(declare-fun bs!1328096 () Bool)

(assert (= bs!1328096 (and d!1797872 d!1797858)))

(assert (=> bs!1328096 (not (= lambda!307242 lambda!307240))))

(declare-fun bs!1328097 () Bool)

(assert (= bs!1328097 (and d!1797872 b!5697684)))

(assert (=> bs!1328097 (not (= lambda!307242 lambda!307205))))

(declare-fun bs!1328098 () Bool)

(assert (= bs!1328098 (and d!1797872 b!5697436)))

(assert (=> bs!1328098 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307242 lambda!307180))))

(assert (=> bs!1328095 (not (= lambda!307242 lambda!307178))))

(declare-fun bs!1328099 () Bool)

(assert (= bs!1328099 (and d!1797872 d!1797870)))

(assert (=> bs!1328099 (= lambda!307242 lambda!307241)))

(assert (=> bs!1328096 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307242 lambda!307239))))

(declare-fun bs!1328100 () Bool)

(assert (= bs!1328100 (and d!1797872 d!1797838)))

(assert (=> bs!1328100 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307242 lambda!307234))))

(declare-fun bs!1328101 () Bool)

(assert (= bs!1328101 (and d!1797872 b!5697687)))

(assert (=> bs!1328101 (not (= lambda!307242 lambda!307201))))

(assert (=> bs!1328098 (not (= lambda!307242 lambda!307181))))

(assert (=> d!1797872 true))

(assert (=> d!1797872 true))

(assert (=> d!1797872 true))

(declare-fun lambda!307243 () Int)

(assert (=> bs!1328095 (not (= lambda!307243 lambda!307177))))

(assert (=> bs!1328096 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307243 lambda!307240))))

(assert (=> bs!1328097 (= lambda!307243 lambda!307205)))

(assert (=> bs!1328098 (not (= lambda!307243 lambda!307180))))

(assert (=> bs!1328095 (= lambda!307243 lambda!307178)))

(declare-fun bs!1328102 () Bool)

(assert (= bs!1328102 d!1797872))

(assert (=> bs!1328102 (not (= lambda!307243 lambda!307242))))

(assert (=> bs!1328099 (not (= lambda!307243 lambda!307241))))

(assert (=> bs!1328096 (not (= lambda!307243 lambda!307239))))

(assert (=> bs!1328100 (not (= lambda!307243 lambda!307234))))

(assert (=> bs!1328101 (not (= lambda!307243 lambda!307201))))

(assert (=> bs!1328098 (= (= (regOne!31898 r!7292) lt!2273008) (= lambda!307243 lambda!307181))))

(assert (=> d!1797872 true))

(assert (=> d!1797872 true))

(assert (=> d!1797872 true))

(assert (=> d!1797872 (= (Exists!2793 lambda!307242) (Exists!2793 lambda!307243))))

(declare-fun lt!2273112 () Unit!156304)

(assert (=> d!1797872 (= lt!2273112 (choose!43098 (regOne!31898 r!7292) (regTwo!31898 r!7292) s!2326))))

(assert (=> d!1797872 (validRegex!7429 (regOne!31898 r!7292))))

(assert (=> d!1797872 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1422 (regOne!31898 r!7292) (regTwo!31898 r!7292) s!2326) lt!2273112)))

(declare-fun m!6653830 () Bool)

(assert (=> bs!1328102 m!6653830))

(declare-fun m!6653832 () Bool)

(assert (=> bs!1328102 m!6653832))

(declare-fun m!6653834 () Bool)

(assert (=> bs!1328102 m!6653834))

(assert (=> bs!1328102 m!6653816))

(assert (=> b!5697416 d!1797872))

(declare-fun d!1797874 () Bool)

(assert (=> d!1797874 (= (isDefined!12405 (findConcatSeparation!2116 (regOne!31898 r!7292) (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326)) (not (isEmpty!35118 (findConcatSeparation!2116 (regOne!31898 r!7292) (regTwo!31898 r!7292) Nil!63256 s!2326 s!2326))))))

(declare-fun bs!1328103 () Bool)

(assert (= bs!1328103 d!1797874))

(assert (=> bs!1328103 m!6653258))

(declare-fun m!6653836 () Bool)

(assert (=> bs!1328103 m!6653836))

(assert (=> b!5697416 d!1797874))

(declare-fun bm!433706 () Bool)

(declare-fun call!433713 () Bool)

(declare-fun call!433712 () Bool)

(assert (=> bm!433706 (= call!433713 call!433712)))

(declare-fun b!5698113 () Bool)

(declare-fun e!3505496 () Bool)

(assert (=> b!5698113 (= e!3505496 call!433713)))

(declare-fun bm!433707 () Bool)

(declare-fun c!1003421 () Bool)

(declare-fun c!1003422 () Bool)

(assert (=> bm!433707 (= call!433712 (validRegex!7429 (ite c!1003422 (reg!16022 r!7292) (ite c!1003421 (regTwo!31899 r!7292) (regTwo!31898 r!7292)))))))

(declare-fun b!5698114 () Bool)

(declare-fun e!3505492 () Bool)

(declare-fun e!3505495 () Bool)

(assert (=> b!5698114 (= e!3505492 e!3505495)))

(assert (=> b!5698114 (= c!1003421 ((_ is Union!15693) r!7292))))

(declare-fun bm!433708 () Bool)

(declare-fun call!433711 () Bool)

(assert (=> bm!433708 (= call!433711 (validRegex!7429 (ite c!1003421 (regOne!31899 r!7292) (regOne!31898 r!7292))))))

(declare-fun d!1797876 () Bool)

(declare-fun res!2406337 () Bool)

(declare-fun e!3505491 () Bool)

(assert (=> d!1797876 (=> res!2406337 e!3505491)))

(assert (=> d!1797876 (= res!2406337 ((_ is ElementMatch!15693) r!7292))))

(assert (=> d!1797876 (= (validRegex!7429 r!7292) e!3505491)))

(declare-fun b!5698115 () Bool)

(declare-fun e!3505494 () Bool)

(declare-fun e!3505493 () Bool)

(assert (=> b!5698115 (= e!3505494 e!3505493)))

(declare-fun res!2406338 () Bool)

(assert (=> b!5698115 (=> (not res!2406338) (not e!3505493))))

(assert (=> b!5698115 (= res!2406338 call!433711)))

(declare-fun b!5698116 () Bool)

(assert (=> b!5698116 (= e!3505491 e!3505492)))

(assert (=> b!5698116 (= c!1003422 ((_ is Star!15693) r!7292))))

(declare-fun b!5698117 () Bool)

(declare-fun res!2406335 () Bool)

(assert (=> b!5698117 (=> (not res!2406335) (not e!3505496))))

(assert (=> b!5698117 (= res!2406335 call!433711)))

(assert (=> b!5698117 (= e!3505495 e!3505496)))

(declare-fun b!5698118 () Bool)

(declare-fun e!3505490 () Bool)

(assert (=> b!5698118 (= e!3505490 call!433712)))

(declare-fun b!5698119 () Bool)

(assert (=> b!5698119 (= e!3505492 e!3505490)))

(declare-fun res!2406339 () Bool)

(assert (=> b!5698119 (= res!2406339 (not (nullable!5725 (reg!16022 r!7292))))))

(assert (=> b!5698119 (=> (not res!2406339) (not e!3505490))))

(declare-fun b!5698120 () Bool)

(assert (=> b!5698120 (= e!3505493 call!433713)))

(declare-fun b!5698121 () Bool)

(declare-fun res!2406336 () Bool)

(assert (=> b!5698121 (=> res!2406336 e!3505494)))

(assert (=> b!5698121 (= res!2406336 (not ((_ is Concat!24538) r!7292)))))

(assert (=> b!5698121 (= e!3505495 e!3505494)))

(assert (= (and d!1797876 (not res!2406337)) b!5698116))

(assert (= (and b!5698116 c!1003422) b!5698119))

(assert (= (and b!5698116 (not c!1003422)) b!5698114))

(assert (= (and b!5698119 res!2406339) b!5698118))

(assert (= (and b!5698114 c!1003421) b!5698117))

(assert (= (and b!5698114 (not c!1003421)) b!5698121))

(assert (= (and b!5698117 res!2406335) b!5698113))

(assert (= (and b!5698121 (not res!2406336)) b!5698115))

(assert (= (and b!5698115 res!2406338) b!5698120))

(assert (= (or b!5698113 b!5698120) bm!433706))

(assert (= (or b!5698117 b!5698115) bm!433708))

(assert (= (or b!5698118 bm!433706) bm!433707))

(declare-fun m!6653838 () Bool)

(assert (=> bm!433707 m!6653838))

(declare-fun m!6653840 () Bool)

(assert (=> bm!433708 m!6653840))

(declare-fun m!6653842 () Bool)

(assert (=> b!5698119 m!6653842))

(assert (=> start!587476 d!1797876))

(declare-fun b!5698122 () Bool)

(declare-fun e!3505500 () Bool)

(declare-fun e!3505501 () Bool)

(assert (=> b!5698122 (= e!3505500 e!3505501)))

(declare-fun res!2406341 () Bool)

(assert (=> b!5698122 (=> (not res!2406341) (not e!3505501))))

(declare-fun lt!2273113 () Bool)

(assert (=> b!5698122 (= res!2406341 (not lt!2273113))))

(declare-fun b!5698123 () Bool)

(declare-fun res!2406344 () Bool)

(declare-fun e!3505503 () Bool)

(assert (=> b!5698123 (=> res!2406344 e!3505503)))

(assert (=> b!5698123 (= res!2406344 (not (isEmpty!35116 (tail!11176 s!2326))))))

(declare-fun b!5698124 () Bool)

(assert (=> b!5698124 (= e!3505501 e!3505503)))

(declare-fun res!2406346 () Bool)

(assert (=> b!5698124 (=> res!2406346 e!3505503)))

(declare-fun call!433714 () Bool)

(assert (=> b!5698124 (= res!2406346 call!433714)))

(declare-fun b!5698125 () Bool)

(declare-fun e!3505497 () Bool)

(assert (=> b!5698125 (= e!3505497 (= (head!12081 s!2326) (c!1003241 lt!2272979)))))

(declare-fun b!5698126 () Bool)

(declare-fun res!2406345 () Bool)

(assert (=> b!5698126 (=> res!2406345 e!3505500)))

(assert (=> b!5698126 (= res!2406345 (not ((_ is ElementMatch!15693) lt!2272979)))))

(declare-fun e!3505498 () Bool)

(assert (=> b!5698126 (= e!3505498 e!3505500)))

(declare-fun b!5698127 () Bool)

(declare-fun res!2406342 () Bool)

(assert (=> b!5698127 (=> (not res!2406342) (not e!3505497))))

(assert (=> b!5698127 (= res!2406342 (not call!433714))))

(declare-fun bm!433709 () Bool)

(assert (=> bm!433709 (= call!433714 (isEmpty!35116 s!2326))))

(declare-fun b!5698128 () Bool)

(declare-fun res!2406347 () Bool)

(assert (=> b!5698128 (=> (not res!2406347) (not e!3505497))))

(assert (=> b!5698128 (= res!2406347 (isEmpty!35116 (tail!11176 s!2326)))))

(declare-fun b!5698129 () Bool)

(declare-fun e!3505499 () Bool)

(assert (=> b!5698129 (= e!3505499 (matchR!7878 (derivativeStep!4504 lt!2272979 (head!12081 s!2326)) (tail!11176 s!2326)))))

(declare-fun d!1797878 () Bool)

(declare-fun e!3505502 () Bool)

(assert (=> d!1797878 e!3505502))

(declare-fun c!1003424 () Bool)

(assert (=> d!1797878 (= c!1003424 ((_ is EmptyExpr!15693) lt!2272979))))

(assert (=> d!1797878 (= lt!2273113 e!3505499)))

(declare-fun c!1003423 () Bool)

(assert (=> d!1797878 (= c!1003423 (isEmpty!35116 s!2326))))

(assert (=> d!1797878 (validRegex!7429 lt!2272979)))

(assert (=> d!1797878 (= (matchR!7878 lt!2272979 s!2326) lt!2273113)))

(declare-fun b!5698130 () Bool)

(assert (=> b!5698130 (= e!3505498 (not lt!2273113))))

(declare-fun b!5698131 () Bool)

(assert (=> b!5698131 (= e!3505499 (nullable!5725 lt!2272979))))

(declare-fun b!5698132 () Bool)

(assert (=> b!5698132 (= e!3505502 (= lt!2273113 call!433714))))

(declare-fun b!5698133 () Bool)

(assert (=> b!5698133 (= e!3505502 e!3505498)))

(declare-fun c!1003425 () Bool)

(assert (=> b!5698133 (= c!1003425 ((_ is EmptyLang!15693) lt!2272979))))

(declare-fun b!5698134 () Bool)

(assert (=> b!5698134 (= e!3505503 (not (= (head!12081 s!2326) (c!1003241 lt!2272979))))))

(declare-fun b!5698135 () Bool)

(declare-fun res!2406340 () Bool)

(assert (=> b!5698135 (=> res!2406340 e!3505500)))

(assert (=> b!5698135 (= res!2406340 e!3505497)))

(declare-fun res!2406343 () Bool)

(assert (=> b!5698135 (=> (not res!2406343) (not e!3505497))))

(assert (=> b!5698135 (= res!2406343 lt!2273113)))

(assert (= (and d!1797878 c!1003423) b!5698131))

(assert (= (and d!1797878 (not c!1003423)) b!5698129))

(assert (= (and d!1797878 c!1003424) b!5698132))

(assert (= (and d!1797878 (not c!1003424)) b!5698133))

(assert (= (and b!5698133 c!1003425) b!5698130))

(assert (= (and b!5698133 (not c!1003425)) b!5698126))

(assert (= (and b!5698126 (not res!2406345)) b!5698135))

(assert (= (and b!5698135 res!2406343) b!5698127))

(assert (= (and b!5698127 res!2406342) b!5698128))

(assert (= (and b!5698128 res!2406347) b!5698125))

(assert (= (and b!5698135 (not res!2406340)) b!5698122))

(assert (= (and b!5698122 res!2406341) b!5698124))

(assert (= (and b!5698124 (not res!2406346)) b!5698123))

(assert (= (and b!5698123 (not res!2406344)) b!5698134))

(assert (= (or b!5698132 b!5698124 b!5698127) bm!433709))

(assert (=> b!5698123 m!6653524))

(assert (=> b!5698123 m!6653524))

(assert (=> b!5698123 m!6653526))

(assert (=> d!1797878 m!6653488))

(declare-fun m!6653844 () Bool)

(assert (=> d!1797878 m!6653844))

(declare-fun m!6653846 () Bool)

(assert (=> b!5698131 m!6653846))

(assert (=> b!5698134 m!6653530))

(assert (=> b!5698128 m!6653524))

(assert (=> b!5698128 m!6653524))

(assert (=> b!5698128 m!6653526))

(assert (=> b!5698125 m!6653530))

(assert (=> b!5698129 m!6653530))

(assert (=> b!5698129 m!6653530))

(declare-fun m!6653848 () Bool)

(assert (=> b!5698129 m!6653848))

(assert (=> b!5698129 m!6653524))

(assert (=> b!5698129 m!6653848))

(assert (=> b!5698129 m!6653524))

(declare-fun m!6653850 () Bool)

(assert (=> b!5698129 m!6653850))

(assert (=> bm!433709 m!6653488))

(assert (=> b!5697417 d!1797878))

(declare-fun bs!1328104 () Bool)

(declare-fun b!5698145 () Bool)

(assert (= bs!1328104 (and b!5698145 b!5697416)))

(declare-fun lambda!307244 () Int)

(assert (=> bs!1328104 (not (= lambda!307244 lambda!307177))))

(declare-fun bs!1328105 () Bool)

(assert (= bs!1328105 (and b!5698145 d!1797858)))

(assert (=> bs!1328105 (not (= lambda!307244 lambda!307240))))

(declare-fun bs!1328106 () Bool)

(assert (= bs!1328106 (and b!5698145 d!1797872)))

(assert (=> bs!1328106 (not (= lambda!307244 lambda!307243))))

(declare-fun bs!1328107 () Bool)

(assert (= bs!1328107 (and b!5698145 b!5697684)))

(assert (=> bs!1328107 (not (= lambda!307244 lambda!307205))))

(declare-fun bs!1328108 () Bool)

(assert (= bs!1328108 (and b!5698145 b!5697436)))

(assert (=> bs!1328108 (not (= lambda!307244 lambda!307180))))

(assert (=> bs!1328104 (not (= lambda!307244 lambda!307178))))

(assert (=> bs!1328106 (not (= lambda!307244 lambda!307242))))

(declare-fun bs!1328109 () Bool)

(assert (= bs!1328109 (and b!5698145 d!1797870)))

(assert (=> bs!1328109 (not (= lambda!307244 lambda!307241))))

(assert (=> bs!1328105 (not (= lambda!307244 lambda!307239))))

(declare-fun bs!1328110 () Bool)

(assert (= bs!1328110 (and b!5698145 d!1797838)))

(assert (=> bs!1328110 (not (= lambda!307244 lambda!307234))))

(declare-fun bs!1328111 () Bool)

(assert (= bs!1328111 (and b!5698145 b!5697687)))

(assert (=> bs!1328111 (= (and (= (reg!16022 lt!2272979) (reg!16022 r!7292)) (= lt!2272979 r!7292)) (= lambda!307244 lambda!307201))))

(assert (=> bs!1328108 (not (= lambda!307244 lambda!307181))))

(assert (=> b!5698145 true))

(assert (=> b!5698145 true))

(declare-fun bs!1328112 () Bool)

(declare-fun b!5698142 () Bool)

(assert (= bs!1328112 (and b!5698142 b!5697416)))

(declare-fun lambda!307245 () Int)

(assert (=> bs!1328112 (not (= lambda!307245 lambda!307177))))

(declare-fun bs!1328113 () Bool)

(assert (= bs!1328113 (and b!5698142 d!1797858)))

(assert (=> bs!1328113 (= (and (= (regOne!31898 lt!2272979) lt!2273008) (= (regTwo!31898 lt!2272979) (regTwo!31898 r!7292))) (= lambda!307245 lambda!307240))))

(declare-fun bs!1328114 () Bool)

(assert (= bs!1328114 (and b!5698142 d!1797872)))

(assert (=> bs!1328114 (= (and (= (regOne!31898 lt!2272979) (regOne!31898 r!7292)) (= (regTwo!31898 lt!2272979) (regTwo!31898 r!7292))) (= lambda!307245 lambda!307243))))

(declare-fun bs!1328115 () Bool)

(assert (= bs!1328115 (and b!5698142 b!5697684)))

(assert (=> bs!1328115 (= (and (= (regOne!31898 lt!2272979) (regOne!31898 r!7292)) (= (regTwo!31898 lt!2272979) (regTwo!31898 r!7292))) (= lambda!307245 lambda!307205))))

(declare-fun bs!1328116 () Bool)

(assert (= bs!1328116 (and b!5698142 b!5697436)))

(assert (=> bs!1328116 (not (= lambda!307245 lambda!307180))))

(assert (=> bs!1328112 (= (and (= (regOne!31898 lt!2272979) (regOne!31898 r!7292)) (= (regTwo!31898 lt!2272979) (regTwo!31898 r!7292))) (= lambda!307245 lambda!307178))))

(declare-fun bs!1328117 () Bool)

(assert (= bs!1328117 (and b!5698142 b!5698145)))

(assert (=> bs!1328117 (not (= lambda!307245 lambda!307244))))

(assert (=> bs!1328114 (not (= lambda!307245 lambda!307242))))

(declare-fun bs!1328118 () Bool)

(assert (= bs!1328118 (and b!5698142 d!1797870)))

(assert (=> bs!1328118 (not (= lambda!307245 lambda!307241))))

(assert (=> bs!1328113 (not (= lambda!307245 lambda!307239))))

(declare-fun bs!1328119 () Bool)

(assert (= bs!1328119 (and b!5698142 d!1797838)))

(assert (=> bs!1328119 (not (= lambda!307245 lambda!307234))))

(declare-fun bs!1328120 () Bool)

(assert (= bs!1328120 (and b!5698142 b!5697687)))

(assert (=> bs!1328120 (not (= lambda!307245 lambda!307201))))

(assert (=> bs!1328116 (= (and (= (regOne!31898 lt!2272979) lt!2273008) (= (regTwo!31898 lt!2272979) (regTwo!31898 r!7292))) (= lambda!307245 lambda!307181))))

(assert (=> b!5698142 true))

(assert (=> b!5698142 true))

(declare-fun b!5698136 () Bool)

(declare-fun e!3505508 () Bool)

(assert (=> b!5698136 (= e!3505508 (matchRSpec!2796 (regTwo!31899 lt!2272979) s!2326))))

(declare-fun bm!433710 () Bool)

(declare-fun call!433716 () Bool)

(assert (=> bm!433710 (= call!433716 (isEmpty!35116 s!2326))))

(declare-fun b!5698137 () Bool)

(declare-fun c!1003426 () Bool)

(assert (=> b!5698137 (= c!1003426 ((_ is ElementMatch!15693) lt!2272979))))

(declare-fun e!3505504 () Bool)

(declare-fun e!3505505 () Bool)

(assert (=> b!5698137 (= e!3505504 e!3505505)))

(declare-fun b!5698138 () Bool)

(declare-fun c!1003428 () Bool)

(assert (=> b!5698138 (= c!1003428 ((_ is Union!15693) lt!2272979))))

(declare-fun e!3505507 () Bool)

(assert (=> b!5698138 (= e!3505505 e!3505507)))

(declare-fun b!5698139 () Bool)

(declare-fun res!2406349 () Bool)

(declare-fun e!3505509 () Bool)

(assert (=> b!5698139 (=> res!2406349 e!3505509)))

(assert (=> b!5698139 (= res!2406349 call!433716)))

(declare-fun e!3505506 () Bool)

(assert (=> b!5698139 (= e!3505506 e!3505509)))

(declare-fun b!5698140 () Bool)

(declare-fun e!3505510 () Bool)

(assert (=> b!5698140 (= e!3505510 call!433716)))

(declare-fun b!5698141 () Bool)

(assert (=> b!5698141 (= e!3505505 (= s!2326 (Cons!63256 (c!1003241 lt!2272979) Nil!63256)))))

(declare-fun c!1003427 () Bool)

(declare-fun bm!433711 () Bool)

(declare-fun call!433715 () Bool)

(assert (=> bm!433711 (= call!433715 (Exists!2793 (ite c!1003427 lambda!307244 lambda!307245)))))

(assert (=> b!5698142 (= e!3505506 call!433715)))

(declare-fun d!1797880 () Bool)

(declare-fun c!1003429 () Bool)

(assert (=> d!1797880 (= c!1003429 ((_ is EmptyExpr!15693) lt!2272979))))

(assert (=> d!1797880 (= (matchRSpec!2796 lt!2272979 s!2326) e!3505510)))

(declare-fun b!5698143 () Bool)

(assert (=> b!5698143 (= e!3505507 e!3505508)))

(declare-fun res!2406348 () Bool)

(assert (=> b!5698143 (= res!2406348 (matchRSpec!2796 (regOne!31899 lt!2272979) s!2326))))

(assert (=> b!5698143 (=> res!2406348 e!3505508)))

(declare-fun b!5698144 () Bool)

(assert (=> b!5698144 (= e!3505510 e!3505504)))

(declare-fun res!2406350 () Bool)

(assert (=> b!5698144 (= res!2406350 (not ((_ is EmptyLang!15693) lt!2272979)))))

(assert (=> b!5698144 (=> (not res!2406350) (not e!3505504))))

(assert (=> b!5698145 (= e!3505509 call!433715)))

(declare-fun b!5698146 () Bool)

(assert (=> b!5698146 (= e!3505507 e!3505506)))

(assert (=> b!5698146 (= c!1003427 ((_ is Star!15693) lt!2272979))))

(assert (= (and d!1797880 c!1003429) b!5698140))

(assert (= (and d!1797880 (not c!1003429)) b!5698144))

(assert (= (and b!5698144 res!2406350) b!5698137))

(assert (= (and b!5698137 c!1003426) b!5698141))

(assert (= (and b!5698137 (not c!1003426)) b!5698138))

(assert (= (and b!5698138 c!1003428) b!5698143))

(assert (= (and b!5698138 (not c!1003428)) b!5698146))

(assert (= (and b!5698143 (not res!2406348)) b!5698136))

(assert (= (and b!5698146 c!1003427) b!5698139))

(assert (= (and b!5698146 (not c!1003427)) b!5698142))

(assert (= (and b!5698139 (not res!2406349)) b!5698145))

(assert (= (or b!5698145 b!5698142) bm!433711))

(assert (= (or b!5698140 b!5698139) bm!433710))

(declare-fun m!6653852 () Bool)

(assert (=> b!5698136 m!6653852))

(assert (=> bm!433710 m!6653488))

(declare-fun m!6653854 () Bool)

(assert (=> bm!433711 m!6653854))

(declare-fun m!6653856 () Bool)

(assert (=> b!5698143 m!6653856))

(assert (=> b!5697417 d!1797880))

(declare-fun d!1797882 () Bool)

(assert (=> d!1797882 (= (matchR!7878 lt!2272979 s!2326) (matchRSpec!2796 lt!2272979 s!2326))))

(declare-fun lt!2273114 () Unit!156304)

(assert (=> d!1797882 (= lt!2273114 (choose!43094 lt!2272979 s!2326))))

(assert (=> d!1797882 (validRegex!7429 lt!2272979)))

(assert (=> d!1797882 (= (mainMatchTheorem!2796 lt!2272979 s!2326) lt!2273114)))

(declare-fun bs!1328121 () Bool)

(assert (= bs!1328121 d!1797882))

(assert (=> bs!1328121 m!6653238))

(assert (=> bs!1328121 m!6653240))

(declare-fun m!6653858 () Bool)

(assert (=> bs!1328121 m!6653858))

(assert (=> bs!1328121 m!6653844))

(assert (=> b!5697417 d!1797882))

(declare-fun b!5698147 () Bool)

(declare-fun e!3505514 () Bool)

(declare-fun e!3505515 () Bool)

(assert (=> b!5698147 (= e!3505514 e!3505515)))

(declare-fun res!2406352 () Bool)

(assert (=> b!5698147 (=> (not res!2406352) (not e!3505515))))

(declare-fun lt!2273115 () Bool)

(assert (=> b!5698147 (= res!2406352 (not lt!2273115))))

(declare-fun b!5698148 () Bool)

(declare-fun res!2406355 () Bool)

(declare-fun e!3505517 () Bool)

(assert (=> b!5698148 (=> res!2406355 e!3505517)))

(assert (=> b!5698148 (= res!2406355 (not (isEmpty!35116 (tail!11176 (_2!36093 lt!2272997)))))))

(declare-fun b!5698149 () Bool)

(assert (=> b!5698149 (= e!3505515 e!3505517)))

(declare-fun res!2406357 () Bool)

(assert (=> b!5698149 (=> res!2406357 e!3505517)))

(declare-fun call!433717 () Bool)

(assert (=> b!5698149 (= res!2406357 call!433717)))

(declare-fun b!5698150 () Bool)

(declare-fun e!3505511 () Bool)

(assert (=> b!5698150 (= e!3505511 (= (head!12081 (_2!36093 lt!2272997)) (c!1003241 (regTwo!31898 r!7292))))))

(declare-fun b!5698151 () Bool)

(declare-fun res!2406356 () Bool)

(assert (=> b!5698151 (=> res!2406356 e!3505514)))

(assert (=> b!5698151 (= res!2406356 (not ((_ is ElementMatch!15693) (regTwo!31898 r!7292))))))

(declare-fun e!3505512 () Bool)

(assert (=> b!5698151 (= e!3505512 e!3505514)))

(declare-fun b!5698152 () Bool)

(declare-fun res!2406353 () Bool)

(assert (=> b!5698152 (=> (not res!2406353) (not e!3505511))))

(assert (=> b!5698152 (= res!2406353 (not call!433717))))

(declare-fun bm!433712 () Bool)

(assert (=> bm!433712 (= call!433717 (isEmpty!35116 (_2!36093 lt!2272997)))))

(declare-fun b!5698153 () Bool)

(declare-fun res!2406358 () Bool)

(assert (=> b!5698153 (=> (not res!2406358) (not e!3505511))))

(assert (=> b!5698153 (= res!2406358 (isEmpty!35116 (tail!11176 (_2!36093 lt!2272997))))))

(declare-fun b!5698154 () Bool)

(declare-fun e!3505513 () Bool)

(assert (=> b!5698154 (= e!3505513 (matchR!7878 (derivativeStep!4504 (regTwo!31898 r!7292) (head!12081 (_2!36093 lt!2272997))) (tail!11176 (_2!36093 lt!2272997))))))

(declare-fun d!1797884 () Bool)

(declare-fun e!3505516 () Bool)

(assert (=> d!1797884 e!3505516))

(declare-fun c!1003431 () Bool)

(assert (=> d!1797884 (= c!1003431 ((_ is EmptyExpr!15693) (regTwo!31898 r!7292)))))

(assert (=> d!1797884 (= lt!2273115 e!3505513)))

(declare-fun c!1003430 () Bool)

(assert (=> d!1797884 (= c!1003430 (isEmpty!35116 (_2!36093 lt!2272997)))))

(assert (=> d!1797884 (validRegex!7429 (regTwo!31898 r!7292))))

(assert (=> d!1797884 (= (matchR!7878 (regTwo!31898 r!7292) (_2!36093 lt!2272997)) lt!2273115)))

(declare-fun b!5698155 () Bool)

(assert (=> b!5698155 (= e!3505512 (not lt!2273115))))

(declare-fun b!5698156 () Bool)

(assert (=> b!5698156 (= e!3505513 (nullable!5725 (regTwo!31898 r!7292)))))

(declare-fun b!5698157 () Bool)

(assert (=> b!5698157 (= e!3505516 (= lt!2273115 call!433717))))

(declare-fun b!5698158 () Bool)

(assert (=> b!5698158 (= e!3505516 e!3505512)))

(declare-fun c!1003432 () Bool)

(assert (=> b!5698158 (= c!1003432 ((_ is EmptyLang!15693) (regTwo!31898 r!7292)))))

(declare-fun b!5698159 () Bool)

(assert (=> b!5698159 (= e!3505517 (not (= (head!12081 (_2!36093 lt!2272997)) (c!1003241 (regTwo!31898 r!7292)))))))

(declare-fun b!5698160 () Bool)

(declare-fun res!2406351 () Bool)

(assert (=> b!5698160 (=> res!2406351 e!3505514)))

(assert (=> b!5698160 (= res!2406351 e!3505511)))

(declare-fun res!2406354 () Bool)

(assert (=> b!5698160 (=> (not res!2406354) (not e!3505511))))

(assert (=> b!5698160 (= res!2406354 lt!2273115)))

(assert (= (and d!1797884 c!1003430) b!5698156))

(assert (= (and d!1797884 (not c!1003430)) b!5698154))

(assert (= (and d!1797884 c!1003431) b!5698157))

(assert (= (and d!1797884 (not c!1003431)) b!5698158))

(assert (= (and b!5698158 c!1003432) b!5698155))

(assert (= (and b!5698158 (not c!1003432)) b!5698151))

(assert (= (and b!5698151 (not res!2406356)) b!5698160))

(assert (= (and b!5698160 res!2406354) b!5698152))

(assert (= (and b!5698152 res!2406353) b!5698153))

(assert (= (and b!5698153 res!2406358) b!5698150))

(assert (= (and b!5698160 (not res!2406351)) b!5698147))

(assert (= (and b!5698147 res!2406352) b!5698149))

(assert (= (and b!5698149 (not res!2406357)) b!5698148))

(assert (= (and b!5698148 (not res!2406355)) b!5698159))

(assert (= (or b!5698157 b!5698149 b!5698152) bm!433712))

(declare-fun m!6653860 () Bool)

(assert (=> b!5698148 m!6653860))

(assert (=> b!5698148 m!6653860))

(declare-fun m!6653862 () Bool)

(assert (=> b!5698148 m!6653862))

(declare-fun m!6653864 () Bool)

(assert (=> d!1797884 m!6653864))

(declare-fun m!6653866 () Bool)

(assert (=> d!1797884 m!6653866))

(declare-fun m!6653868 () Bool)

(assert (=> b!5698156 m!6653868))

(declare-fun m!6653870 () Bool)

(assert (=> b!5698159 m!6653870))

(assert (=> b!5698153 m!6653860))

(assert (=> b!5698153 m!6653860))

(assert (=> b!5698153 m!6653862))

(assert (=> b!5698150 m!6653870))

(assert (=> b!5698154 m!6653870))

(assert (=> b!5698154 m!6653870))

(declare-fun m!6653872 () Bool)

(assert (=> b!5698154 m!6653872))

(assert (=> b!5698154 m!6653860))

(assert (=> b!5698154 m!6653872))

(assert (=> b!5698154 m!6653860))

(declare-fun m!6653874 () Bool)

(assert (=> b!5698154 m!6653874))

(assert (=> bm!433712 m!6653864))

(assert (=> b!5697418 d!1797884))

(declare-fun b!5698161 () Bool)

(declare-fun e!3505518 () (InoxSet Context!10154))

(assert (=> b!5698161 (= e!3505518 ((as const (Array Context!10154 Bool)) false))))

(declare-fun bm!433713 () Bool)

(declare-fun call!433718 () (InoxSet Context!10154))

(assert (=> bm!433713 (= call!433718 (derivationStepZipperDown!1035 (h!69702 (exprs!5577 lt!2273004)) (Context!10155 (t!376696 (exprs!5577 lt!2273004))) (h!69704 s!2326)))))

(declare-fun b!5698162 () Bool)

(declare-fun e!3505519 () Bool)

(assert (=> b!5698162 (= e!3505519 (nullable!5725 (h!69702 (exprs!5577 lt!2273004))))))

(declare-fun b!5698163 () Bool)

(assert (=> b!5698163 (= e!3505518 call!433718)))

(declare-fun e!3505520 () (InoxSet Context!10154))

(declare-fun b!5698164 () Bool)

(assert (=> b!5698164 (= e!3505520 ((_ map or) call!433718 (derivationStepZipperUp!961 (Context!10155 (t!376696 (exprs!5577 lt!2273004))) (h!69704 s!2326))))))

(declare-fun b!5698165 () Bool)

(assert (=> b!5698165 (= e!3505520 e!3505518)))

(declare-fun c!1003434 () Bool)

(assert (=> b!5698165 (= c!1003434 ((_ is Cons!63254) (exprs!5577 lt!2273004)))))

(declare-fun d!1797886 () Bool)

(declare-fun c!1003433 () Bool)

(assert (=> d!1797886 (= c!1003433 e!3505519)))

(declare-fun res!2406359 () Bool)

(assert (=> d!1797886 (=> (not res!2406359) (not e!3505519))))

(assert (=> d!1797886 (= res!2406359 ((_ is Cons!63254) (exprs!5577 lt!2273004)))))

(assert (=> d!1797886 (= (derivationStepZipperUp!961 lt!2273004 (h!69704 s!2326)) e!3505520)))

(assert (= (and d!1797886 res!2406359) b!5698162))

(assert (= (and d!1797886 c!1003433) b!5698164))

(assert (= (and d!1797886 (not c!1003433)) b!5698165))

(assert (= (and b!5698165 c!1003434) b!5698163))

(assert (= (and b!5698165 (not c!1003434)) b!5698161))

(assert (= (or b!5698164 b!5698163) bm!433713))

(declare-fun m!6653876 () Bool)

(assert (=> bm!433713 m!6653876))

(declare-fun m!6653878 () Bool)

(assert (=> b!5698162 m!6653878))

(declare-fun m!6653880 () Bool)

(assert (=> b!5698164 m!6653880))

(assert (=> b!5697409 d!1797886))

(declare-fun c!1003449 () Bool)

(declare-fun c!1003447 () Bool)

(declare-fun call!433735 () (InoxSet Context!10154))

(declare-fun call!433734 () List!63378)

(declare-fun bm!433726 () Bool)

(declare-fun c!1003446 () Bool)

(assert (=> bm!433726 (= call!433735 (derivationStepZipperDown!1035 (ite c!1003449 (regTwo!31899 (h!69702 (exprs!5577 (h!69703 zl!343)))) (ite c!1003447 (regTwo!31898 (h!69702 (exprs!5577 (h!69703 zl!343)))) (ite c!1003446 (regOne!31898 (h!69702 (exprs!5577 (h!69703 zl!343)))) (reg!16022 (h!69702 (exprs!5577 (h!69703 zl!343))))))) (ite (or c!1003449 c!1003447) lt!2273004 (Context!10155 call!433734)) (h!69704 s!2326)))))

(declare-fun bm!433727 () Bool)

(declare-fun call!433732 () List!63378)

(declare-fun $colon$colon!1718 (List!63378 Regex!15693) List!63378)

(assert (=> bm!433727 (= call!433732 ($colon$colon!1718 (exprs!5577 lt!2273004) (ite (or c!1003447 c!1003446) (regTwo!31898 (h!69702 (exprs!5577 (h!69703 zl!343)))) (h!69702 (exprs!5577 (h!69703 zl!343))))))))

(declare-fun b!5698188 () Bool)

(declare-fun e!3505534 () Bool)

(assert (=> b!5698188 (= e!3505534 (nullable!5725 (regOne!31898 (h!69702 (exprs!5577 (h!69703 zl!343))))))))

(declare-fun b!5698189 () Bool)

(declare-fun e!3505533 () (InoxSet Context!10154))

(declare-fun e!3505536 () (InoxSet Context!10154))

(assert (=> b!5698189 (= e!3505533 e!3505536)))

(assert (=> b!5698189 (= c!1003446 ((_ is Concat!24538) (h!69702 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun b!5698191 () Bool)

(declare-fun e!3505538 () (InoxSet Context!10154))

(declare-fun call!433731 () (InoxSet Context!10154))

(assert (=> b!5698191 (= e!3505538 ((_ map or) call!433731 call!433735))))

(declare-fun b!5698192 () Bool)

(declare-fun e!3505535 () (InoxSet Context!10154))

(declare-fun call!433733 () (InoxSet Context!10154))

(assert (=> b!5698192 (= e!3505535 call!433733)))

(declare-fun bm!433728 () Bool)

(assert (=> bm!433728 (= call!433731 (derivationStepZipperDown!1035 (ite c!1003449 (regOne!31899 (h!69702 (exprs!5577 (h!69703 zl!343)))) (regOne!31898 (h!69702 (exprs!5577 (h!69703 zl!343))))) (ite c!1003449 lt!2273004 (Context!10155 call!433732)) (h!69704 s!2326)))))

(declare-fun bm!433729 () Bool)

(assert (=> bm!433729 (= call!433734 call!433732)))

(declare-fun b!5698193 () Bool)

(declare-fun call!433736 () (InoxSet Context!10154))

(assert (=> b!5698193 (= e!3505533 ((_ map or) call!433731 call!433736))))

(declare-fun bm!433730 () Bool)

(assert (=> bm!433730 (= call!433733 call!433736)))

(declare-fun b!5698194 () Bool)

(assert (=> b!5698194 (= c!1003447 e!3505534)))

(declare-fun res!2406362 () Bool)

(assert (=> b!5698194 (=> (not res!2406362) (not e!3505534))))

(assert (=> b!5698194 (= res!2406362 ((_ is Concat!24538) (h!69702 (exprs!5577 (h!69703 zl!343)))))))

(assert (=> b!5698194 (= e!3505538 e!3505533)))

(declare-fun bm!433731 () Bool)

(assert (=> bm!433731 (= call!433736 call!433735)))

(declare-fun b!5698195 () Bool)

(assert (=> b!5698195 (= e!3505536 call!433733)))

(declare-fun b!5698196 () Bool)

(declare-fun e!3505537 () (InoxSet Context!10154))

(assert (=> b!5698196 (= e!3505537 e!3505538)))

(assert (=> b!5698196 (= c!1003449 ((_ is Union!15693) (h!69702 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun d!1797888 () Bool)

(declare-fun c!1003448 () Bool)

(assert (=> d!1797888 (= c!1003448 (and ((_ is ElementMatch!15693) (h!69702 (exprs!5577 (h!69703 zl!343)))) (= (c!1003241 (h!69702 (exprs!5577 (h!69703 zl!343)))) (h!69704 s!2326))))))

(assert (=> d!1797888 (= (derivationStepZipperDown!1035 (h!69702 (exprs!5577 (h!69703 zl!343))) lt!2273004 (h!69704 s!2326)) e!3505537)))

(declare-fun b!5698190 () Bool)

(assert (=> b!5698190 (= e!3505537 (store ((as const (Array Context!10154 Bool)) false) lt!2273004 true))))

(declare-fun b!5698197 () Bool)

(declare-fun c!1003445 () Bool)

(assert (=> b!5698197 (= c!1003445 ((_ is Star!15693) (h!69702 (exprs!5577 (h!69703 zl!343)))))))

(assert (=> b!5698197 (= e!3505536 e!3505535)))

(declare-fun b!5698198 () Bool)

(assert (=> b!5698198 (= e!3505535 ((as const (Array Context!10154 Bool)) false))))

(assert (= (and d!1797888 c!1003448) b!5698190))

(assert (= (and d!1797888 (not c!1003448)) b!5698196))

(assert (= (and b!5698196 c!1003449) b!5698191))

(assert (= (and b!5698196 (not c!1003449)) b!5698194))

(assert (= (and b!5698194 res!2406362) b!5698188))

(assert (= (and b!5698194 c!1003447) b!5698193))

(assert (= (and b!5698194 (not c!1003447)) b!5698189))

(assert (= (and b!5698189 c!1003446) b!5698195))

(assert (= (and b!5698189 (not c!1003446)) b!5698197))

(assert (= (and b!5698197 c!1003445) b!5698192))

(assert (= (and b!5698197 (not c!1003445)) b!5698198))

(assert (= (or b!5698195 b!5698192) bm!433729))

(assert (= (or b!5698195 b!5698192) bm!433730))

(assert (= (or b!5698193 bm!433729) bm!433727))

(assert (= (or b!5698193 bm!433730) bm!433731))

(assert (= (or b!5698191 bm!433731) bm!433726))

(assert (= (or b!5698191 b!5698193) bm!433728))

(declare-fun m!6653882 () Bool)

(assert (=> b!5698188 m!6653882))

(declare-fun m!6653884 () Bool)

(assert (=> bm!433727 m!6653884))

(assert (=> b!5698190 m!6653190))

(declare-fun m!6653886 () Bool)

(assert (=> bm!433728 m!6653886))

(declare-fun m!6653888 () Bool)

(assert (=> bm!433726 m!6653888))

(assert (=> b!5697409 d!1797888))

(declare-fun d!1797890 () Bool)

(declare-fun nullableFct!1797 (Regex!15693) Bool)

(assert (=> d!1797890 (= (nullable!5725 (h!69702 (exprs!5577 (h!69703 zl!343)))) (nullableFct!1797 (h!69702 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun bs!1328122 () Bool)

(assert (= bs!1328122 d!1797890))

(declare-fun m!6653890 () Bool)

(assert (=> bs!1328122 m!6653890))

(assert (=> b!5697409 d!1797890))

(declare-fun b!5698199 () Bool)

(declare-fun e!3505539 () (InoxSet Context!10154))

(assert (=> b!5698199 (= e!3505539 ((as const (Array Context!10154 Bool)) false))))

(declare-fun bm!433732 () Bool)

(declare-fun call!433737 () (InoxSet Context!10154))

(assert (=> bm!433732 (= call!433737 (derivationStepZipperDown!1035 (h!69702 (exprs!5577 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343))))))) (Context!10155 (t!376696 (exprs!5577 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343)))))))) (h!69704 s!2326)))))

(declare-fun b!5698200 () Bool)

(declare-fun e!3505540 () Bool)

(assert (=> b!5698200 (= e!3505540 (nullable!5725 (h!69702 (exprs!5577 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343)))))))))))

(declare-fun b!5698201 () Bool)

(assert (=> b!5698201 (= e!3505539 call!433737)))

(declare-fun b!5698202 () Bool)

(declare-fun e!3505541 () (InoxSet Context!10154))

(assert (=> b!5698202 (= e!3505541 ((_ map or) call!433737 (derivationStepZipperUp!961 (Context!10155 (t!376696 (exprs!5577 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343)))))))) (h!69704 s!2326))))))

(declare-fun b!5698203 () Bool)

(assert (=> b!5698203 (= e!3505541 e!3505539)))

(declare-fun c!1003451 () Bool)

(assert (=> b!5698203 (= c!1003451 ((_ is Cons!63254) (exprs!5577 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343))))))))))

(declare-fun d!1797892 () Bool)

(declare-fun c!1003450 () Bool)

(assert (=> d!1797892 (= c!1003450 e!3505540)))

(declare-fun res!2406363 () Bool)

(assert (=> d!1797892 (=> (not res!2406363) (not e!3505540))))

(assert (=> d!1797892 (= res!2406363 ((_ is Cons!63254) (exprs!5577 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343))))))))))

(assert (=> d!1797892 (= (derivationStepZipperUp!961 (Context!10155 (Cons!63254 (h!69702 (exprs!5577 (h!69703 zl!343))) (t!376696 (exprs!5577 (h!69703 zl!343))))) (h!69704 s!2326)) e!3505541)))

(assert (= (and d!1797892 res!2406363) b!5698200))

(assert (= (and d!1797892 c!1003450) b!5698202))

(assert (= (and d!1797892 (not c!1003450)) b!5698203))

(assert (= (and b!5698203 c!1003451) b!5698201))

(assert (= (and b!5698203 (not c!1003451)) b!5698199))

(assert (= (or b!5698202 b!5698201) bm!433732))

(declare-fun m!6653892 () Bool)

(assert (=> bm!433732 m!6653892))

(declare-fun m!6653894 () Bool)

(assert (=> b!5698200 m!6653894))

(declare-fun m!6653896 () Bool)

(assert (=> b!5698202 m!6653896))

(assert (=> b!5697409 d!1797892))

(declare-fun d!1797894 () Bool)

(assert (=> d!1797894 (= (flatMap!1306 z!1189 lambda!307179) (dynLambda!24750 lambda!307179 (h!69703 zl!343)))))

(declare-fun lt!2273116 () Unit!156304)

(assert (=> d!1797894 (= lt!2273116 (choose!43092 z!1189 (h!69703 zl!343) lambda!307179))))

(assert (=> d!1797894 (= z!1189 (store ((as const (Array Context!10154 Bool)) false) (h!69703 zl!343) true))))

(assert (=> d!1797894 (= (lemmaFlatMapOnSingletonSet!838 z!1189 (h!69703 zl!343) lambda!307179) lt!2273116)))

(declare-fun b_lambda!215377 () Bool)

(assert (=> (not b_lambda!215377) (not d!1797894)))

(declare-fun bs!1328123 () Bool)

(assert (= bs!1328123 d!1797894))

(assert (=> bs!1328123 m!6653222))

(declare-fun m!6653898 () Bool)

(assert (=> bs!1328123 m!6653898))

(declare-fun m!6653900 () Bool)

(assert (=> bs!1328123 m!6653900))

(declare-fun m!6653902 () Bool)

(assert (=> bs!1328123 m!6653902))

(assert (=> b!5697409 d!1797894))

(declare-fun b!5698204 () Bool)

(declare-fun e!3505542 () (InoxSet Context!10154))

(assert (=> b!5698204 (= e!3505542 ((as const (Array Context!10154 Bool)) false))))

(declare-fun bm!433733 () Bool)

(declare-fun call!433738 () (InoxSet Context!10154))

(assert (=> bm!433733 (= call!433738 (derivationStepZipperDown!1035 (h!69702 (exprs!5577 (h!69703 zl!343))) (Context!10155 (t!376696 (exprs!5577 (h!69703 zl!343)))) (h!69704 s!2326)))))

(declare-fun b!5698205 () Bool)

(declare-fun e!3505543 () Bool)

(assert (=> b!5698205 (= e!3505543 (nullable!5725 (h!69702 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun b!5698206 () Bool)

(assert (=> b!5698206 (= e!3505542 call!433738)))

(declare-fun b!5698207 () Bool)

(declare-fun e!3505544 () (InoxSet Context!10154))

(assert (=> b!5698207 (= e!3505544 ((_ map or) call!433738 (derivationStepZipperUp!961 (Context!10155 (t!376696 (exprs!5577 (h!69703 zl!343)))) (h!69704 s!2326))))))

(declare-fun b!5698208 () Bool)

(assert (=> b!5698208 (= e!3505544 e!3505542)))

(declare-fun c!1003453 () Bool)

(assert (=> b!5698208 (= c!1003453 ((_ is Cons!63254) (exprs!5577 (h!69703 zl!343))))))

(declare-fun d!1797896 () Bool)

(declare-fun c!1003452 () Bool)

(assert (=> d!1797896 (= c!1003452 e!3505543)))

(declare-fun res!2406364 () Bool)

(assert (=> d!1797896 (=> (not res!2406364) (not e!3505543))))

(assert (=> d!1797896 (= res!2406364 ((_ is Cons!63254) (exprs!5577 (h!69703 zl!343))))))

(assert (=> d!1797896 (= (derivationStepZipperUp!961 (h!69703 zl!343) (h!69704 s!2326)) e!3505544)))

(assert (= (and d!1797896 res!2406364) b!5698205))

(assert (= (and d!1797896 c!1003452) b!5698207))

(assert (= (and d!1797896 (not c!1003452)) b!5698208))

(assert (= (and b!5698208 c!1003453) b!5698206))

(assert (= (and b!5698208 (not c!1003453)) b!5698204))

(assert (= (or b!5698207 b!5698206) bm!433733))

(declare-fun m!6653904 () Bool)

(assert (=> bm!433733 m!6653904))

(assert (=> b!5698205 m!6653226))

(declare-fun m!6653906 () Bool)

(assert (=> b!5698207 m!6653906))

(assert (=> b!5697409 d!1797896))

(declare-fun d!1797898 () Bool)

(assert (=> d!1797898 (= (flatMap!1306 z!1189 lambda!307179) (choose!43091 z!1189 lambda!307179))))

(declare-fun bs!1328124 () Bool)

(assert (= bs!1328124 d!1797898))

(declare-fun m!6653908 () Bool)

(assert (=> bs!1328124 m!6653908))

(assert (=> b!5697409 d!1797898))

(declare-fun d!1797900 () Bool)

(declare-fun lt!2273117 () Regex!15693)

(assert (=> d!1797900 (validRegex!7429 lt!2273117)))

(assert (=> d!1797900 (= lt!2273117 (generalisedUnion!1556 (unfocusZipperList!1121 zl!343)))))

(assert (=> d!1797900 (= (unfocusZipper!1435 zl!343) lt!2273117)))

(declare-fun bs!1328125 () Bool)

(assert (= bs!1328125 d!1797900))

(declare-fun m!6653910 () Bool)

(assert (=> bs!1328125 m!6653910))

(assert (=> bs!1328125 m!6653214))

(assert (=> bs!1328125 m!6653214))

(assert (=> bs!1328125 m!6653216))

(assert (=> b!5697430 d!1797900))

(declare-fun d!1797902 () Bool)

(assert (=> d!1797902 (= (isEmpty!35115 (t!376696 (exprs!5577 (h!69703 zl!343)))) ((_ is Nil!63254) (t!376696 (exprs!5577 (h!69703 zl!343)))))))

(assert (=> b!5697412 d!1797902))

(declare-fun e!3505547 () Bool)

(declare-fun d!1797904 () Bool)

(assert (=> d!1797904 (= (matchZipper!1831 ((_ map or) lt!2272990 lt!2273002) (t!376698 s!2326)) e!3505547)))

(declare-fun res!2406367 () Bool)

(assert (=> d!1797904 (=> res!2406367 e!3505547)))

(assert (=> d!1797904 (= res!2406367 (matchZipper!1831 lt!2272990 (t!376698 s!2326)))))

(declare-fun lt!2273120 () Unit!156304)

(declare-fun choose!43100 ((InoxSet Context!10154) (InoxSet Context!10154) List!63380) Unit!156304)

(assert (=> d!1797904 (= lt!2273120 (choose!43100 lt!2272990 lt!2273002 (t!376698 s!2326)))))

(assert (=> d!1797904 (= (lemmaZipperConcatMatchesSameAsBothZippers!718 lt!2272990 lt!2273002 (t!376698 s!2326)) lt!2273120)))

(declare-fun b!5698211 () Bool)

(assert (=> b!5698211 (= e!3505547 (matchZipper!1831 lt!2273002 (t!376698 s!2326)))))

(assert (= (and d!1797904 (not res!2406367)) b!5698211))

(assert (=> d!1797904 m!6653252))

(assert (=> d!1797904 m!6653250))

(declare-fun m!6653912 () Bool)

(assert (=> d!1797904 m!6653912))

(assert (=> b!5698211 m!6653184))

(assert (=> b!5697434 d!1797904))

(declare-fun d!1797906 () Bool)

(declare-fun c!1003454 () Bool)

(assert (=> d!1797906 (= c!1003454 (isEmpty!35116 (t!376698 s!2326)))))

(declare-fun e!3505548 () Bool)

(assert (=> d!1797906 (= (matchZipper!1831 lt!2272990 (t!376698 s!2326)) e!3505548)))

(declare-fun b!5698212 () Bool)

(assert (=> b!5698212 (= e!3505548 (nullableZipper!1651 lt!2272990))))

(declare-fun b!5698213 () Bool)

(assert (=> b!5698213 (= e!3505548 (matchZipper!1831 (derivationStepZipper!1776 lt!2272990 (head!12081 (t!376698 s!2326))) (tail!11176 (t!376698 s!2326))))))

(assert (= (and d!1797906 c!1003454) b!5698212))

(assert (= (and d!1797906 (not c!1003454)) b!5698213))

(assert (=> d!1797906 m!6653562))

(declare-fun m!6653914 () Bool)

(assert (=> b!5698212 m!6653914))

(assert (=> b!5698213 m!6653566))

(assert (=> b!5698213 m!6653566))

(declare-fun m!6653916 () Bool)

(assert (=> b!5698213 m!6653916))

(assert (=> b!5698213 m!6653570))

(assert (=> b!5698213 m!6653916))

(assert (=> b!5698213 m!6653570))

(declare-fun m!6653918 () Bool)

(assert (=> b!5698213 m!6653918))

(assert (=> b!5697434 d!1797906))

(declare-fun d!1797908 () Bool)

(declare-fun c!1003455 () Bool)

(assert (=> d!1797908 (= c!1003455 (isEmpty!35116 (t!376698 s!2326)))))

(declare-fun e!3505549 () Bool)

(assert (=> d!1797908 (= (matchZipper!1831 ((_ map or) lt!2272990 lt!2273002) (t!376698 s!2326)) e!3505549)))

(declare-fun b!5698214 () Bool)

(assert (=> b!5698214 (= e!3505549 (nullableZipper!1651 ((_ map or) lt!2272990 lt!2273002)))))

(declare-fun b!5698215 () Bool)

(assert (=> b!5698215 (= e!3505549 (matchZipper!1831 (derivationStepZipper!1776 ((_ map or) lt!2272990 lt!2273002) (head!12081 (t!376698 s!2326))) (tail!11176 (t!376698 s!2326))))))

(assert (= (and d!1797908 c!1003455) b!5698214))

(assert (= (and d!1797908 (not c!1003455)) b!5698215))

(assert (=> d!1797908 m!6653562))

(declare-fun m!6653920 () Bool)

(assert (=> b!5698214 m!6653920))

(assert (=> b!5698215 m!6653566))

(assert (=> b!5698215 m!6653566))

(declare-fun m!6653922 () Bool)

(assert (=> b!5698215 m!6653922))

(assert (=> b!5698215 m!6653570))

(assert (=> b!5698215 m!6653922))

(assert (=> b!5698215 m!6653570))

(declare-fun m!6653924 () Bool)

(assert (=> b!5698215 m!6653924))

(assert (=> b!5697434 d!1797908))

(declare-fun bs!1328126 () Bool)

(declare-fun d!1797910 () Bool)

(assert (= bs!1328126 (and d!1797910 d!1797774)))

(declare-fun lambda!307248 () Int)

(assert (=> bs!1328126 (= lambda!307248 lambda!307221)))

(declare-fun bs!1328127 () Bool)

(assert (= bs!1328127 (and d!1797910 d!1797776)))

(assert (=> bs!1328127 (= lambda!307248 lambda!307222)))

(declare-fun b!5698236 () Bool)

(declare-fun e!3505564 () Bool)

(assert (=> b!5698236 (= e!3505564 (isEmpty!35115 (t!376696 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun b!5698237 () Bool)

(declare-fun e!3505563 () Bool)

(declare-fun e!3505562 () Bool)

(assert (=> b!5698237 (= e!3505563 e!3505562)))

(declare-fun c!1003466 () Bool)

(declare-fun tail!11178 (List!63378) List!63378)

(assert (=> b!5698237 (= c!1003466 (isEmpty!35115 (tail!11178 (exprs!5577 (h!69703 zl!343)))))))

(declare-fun b!5698238 () Bool)

(declare-fun e!3505565 () Regex!15693)

(declare-fun e!3505566 () Regex!15693)

(assert (=> b!5698238 (= e!3505565 e!3505566)))

(declare-fun c!1003467 () Bool)

(assert (=> b!5698238 (= c!1003467 ((_ is Cons!63254) (exprs!5577 (h!69703 zl!343))))))

(declare-fun b!5698239 () Bool)

(assert (=> b!5698239 (= e!3505566 (Concat!24538 (h!69702 (exprs!5577 (h!69703 zl!343))) (generalisedConcat!1308 (t!376696 (exprs!5577 (h!69703 zl!343))))))))

(declare-fun b!5698240 () Bool)

(assert (=> b!5698240 (= e!3505565 (h!69702 (exprs!5577 (h!69703 zl!343))))))

(declare-fun b!5698241 () Bool)

(declare-fun lt!2273123 () Regex!15693)

(declare-fun isConcat!732 (Regex!15693) Bool)

(assert (=> b!5698241 (= e!3505562 (isConcat!732 lt!2273123))))

(declare-fun b!5698243 () Bool)

(assert (=> b!5698243 (= e!3505566 EmptyExpr!15693)))

(declare-fun b!5698244 () Bool)

(declare-fun e!3505567 () Bool)

(assert (=> b!5698244 (= e!3505567 e!3505563)))

(declare-fun c!1003465 () Bool)

(assert (=> b!5698244 (= c!1003465 (isEmpty!35115 (exprs!5577 (h!69703 zl!343))))))

(declare-fun b!5698245 () Bool)

(declare-fun head!12083 (List!63378) Regex!15693)

(assert (=> b!5698245 (= e!3505562 (= lt!2273123 (head!12083 (exprs!5577 (h!69703 zl!343)))))))

(assert (=> d!1797910 e!3505567))

(declare-fun res!2406373 () Bool)

(assert (=> d!1797910 (=> (not res!2406373) (not e!3505567))))

(assert (=> d!1797910 (= res!2406373 (validRegex!7429 lt!2273123))))

(assert (=> d!1797910 (= lt!2273123 e!3505565)))

(declare-fun c!1003464 () Bool)

(assert (=> d!1797910 (= c!1003464 e!3505564)))

(declare-fun res!2406372 () Bool)

(assert (=> d!1797910 (=> (not res!2406372) (not e!3505564))))

(assert (=> d!1797910 (= res!2406372 ((_ is Cons!63254) (exprs!5577 (h!69703 zl!343))))))

(assert (=> d!1797910 (forall!14833 (exprs!5577 (h!69703 zl!343)) lambda!307248)))

(assert (=> d!1797910 (= (generalisedConcat!1308 (exprs!5577 (h!69703 zl!343))) lt!2273123)))

(declare-fun b!5698242 () Bool)

(declare-fun isEmptyExpr!1209 (Regex!15693) Bool)

(assert (=> b!5698242 (= e!3505563 (isEmptyExpr!1209 lt!2273123))))

(assert (= (and d!1797910 res!2406372) b!5698236))

(assert (= (and d!1797910 c!1003464) b!5698240))

(assert (= (and d!1797910 (not c!1003464)) b!5698238))

(assert (= (and b!5698238 c!1003467) b!5698239))

(assert (= (and b!5698238 (not c!1003467)) b!5698243))

(assert (= (and d!1797910 res!2406373) b!5698244))

(assert (= (and b!5698244 c!1003465) b!5698242))

(assert (= (and b!5698244 (not c!1003465)) b!5698237))

(assert (= (and b!5698237 c!1003466) b!5698245))

(assert (= (and b!5698237 (not c!1003466)) b!5698241))

(declare-fun m!6653926 () Bool)

(assert (=> b!5698245 m!6653926))

(declare-fun m!6653928 () Bool)

(assert (=> b!5698239 m!6653928))

(declare-fun m!6653930 () Bool)

(assert (=> b!5698242 m!6653930))

(assert (=> b!5698236 m!6653172))

(declare-fun m!6653932 () Bool)

(assert (=> b!5698244 m!6653932))

(declare-fun m!6653934 () Bool)

(assert (=> b!5698241 m!6653934))

(declare-fun m!6653936 () Bool)

(assert (=> d!1797910 m!6653936))

(declare-fun m!6653938 () Bool)

(assert (=> d!1797910 m!6653938))

(declare-fun m!6653940 () Bool)

(assert (=> b!5698237 m!6653940))

(assert (=> b!5698237 m!6653940))

(declare-fun m!6653942 () Bool)

(assert (=> b!5698237 m!6653942))

(assert (=> b!5697414 d!1797910))

(declare-fun d!1797912 () Bool)

(declare-fun e!3505570 () Bool)

(assert (=> d!1797912 e!3505570))

(declare-fun res!2406376 () Bool)

(assert (=> d!1797912 (=> (not res!2406376) (not e!3505570))))

(declare-fun lt!2273126 () List!63379)

(declare-fun noDuplicate!1631 (List!63379) Bool)

(assert (=> d!1797912 (= res!2406376 (noDuplicate!1631 lt!2273126))))

(declare-fun choose!43101 ((InoxSet Context!10154)) List!63379)

(assert (=> d!1797912 (= lt!2273126 (choose!43101 z!1189))))

(assert (=> d!1797912 (= (toList!9477 z!1189) lt!2273126)))

(declare-fun b!5698248 () Bool)

(declare-fun content!11476 (List!63379) (InoxSet Context!10154))

(assert (=> b!5698248 (= e!3505570 (= (content!11476 lt!2273126) z!1189))))

(assert (= (and d!1797912 res!2406376) b!5698248))

(declare-fun m!6653944 () Bool)

(assert (=> d!1797912 m!6653944))

(declare-fun m!6653946 () Bool)

(assert (=> d!1797912 m!6653946))

(declare-fun m!6653948 () Bool)

(assert (=> b!5698248 m!6653948))

(assert (=> b!5697424 d!1797912))

(declare-fun d!1797914 () Bool)

(declare-fun lt!2273127 () Regex!15693)

(assert (=> d!1797914 (validRegex!7429 lt!2273127)))

(assert (=> d!1797914 (= lt!2273127 (generalisedUnion!1556 (unfocusZipperList!1121 (Cons!63255 lt!2272976 Nil!63255))))))

(assert (=> d!1797914 (= (unfocusZipper!1435 (Cons!63255 lt!2272976 Nil!63255)) lt!2273127)))

(declare-fun bs!1328128 () Bool)

(assert (= bs!1328128 d!1797914))

(declare-fun m!6653950 () Bool)

(assert (=> bs!1328128 m!6653950))

(declare-fun m!6653952 () Bool)

(assert (=> bs!1328128 m!6653952))

(assert (=> bs!1328128 m!6653952))

(declare-fun m!6653954 () Bool)

(assert (=> bs!1328128 m!6653954))

(assert (=> b!5697425 d!1797914))

(declare-fun d!1797916 () Bool)

(assert (=> d!1797916 (= (isEmpty!35114 (t!376697 zl!343)) ((_ is Nil!63255) (t!376697 zl!343)))))

(assert (=> b!5697405 d!1797916))

(declare-fun bs!1328129 () Bool)

(declare-fun d!1797918 () Bool)

(assert (= bs!1328129 (and d!1797918 d!1797774)))

(declare-fun lambda!307251 () Int)

(assert (=> bs!1328129 (= lambda!307251 lambda!307221)))

(declare-fun bs!1328130 () Bool)

(assert (= bs!1328130 (and d!1797918 d!1797776)))

(assert (=> bs!1328130 (= lambda!307251 lambda!307222)))

(declare-fun bs!1328131 () Bool)

(assert (= bs!1328131 (and d!1797918 d!1797910)))

(assert (=> bs!1328131 (= lambda!307251 lambda!307248)))

(declare-fun b!5698269 () Bool)

(declare-fun e!3505583 () Bool)

(declare-fun e!3505584 () Bool)

(assert (=> b!5698269 (= e!3505583 e!3505584)))

(declare-fun c!1003479 () Bool)

(assert (=> b!5698269 (= c!1003479 (isEmpty!35115 (unfocusZipperList!1121 zl!343)))))

(declare-fun b!5698270 () Bool)

(declare-fun lt!2273130 () Regex!15693)

(declare-fun isEmptyLang!1220 (Regex!15693) Bool)

(assert (=> b!5698270 (= e!3505584 (isEmptyLang!1220 lt!2273130))))

(declare-fun b!5698271 () Bool)

(declare-fun e!3505588 () Bool)

(assert (=> b!5698271 (= e!3505584 e!3505588)))

(declare-fun c!1003476 () Bool)

(assert (=> b!5698271 (= c!1003476 (isEmpty!35115 (tail!11178 (unfocusZipperList!1121 zl!343))))))

(declare-fun b!5698272 () Bool)

(declare-fun e!3505586 () Regex!15693)

(assert (=> b!5698272 (= e!3505586 (Union!15693 (h!69702 (unfocusZipperList!1121 zl!343)) (generalisedUnion!1556 (t!376696 (unfocusZipperList!1121 zl!343)))))))

(declare-fun b!5698273 () Bool)

(declare-fun e!3505585 () Bool)

(assert (=> b!5698273 (= e!3505585 (isEmpty!35115 (t!376696 (unfocusZipperList!1121 zl!343))))))

(assert (=> d!1797918 e!3505583))

(declare-fun res!2406382 () Bool)

(assert (=> d!1797918 (=> (not res!2406382) (not e!3505583))))

(assert (=> d!1797918 (= res!2406382 (validRegex!7429 lt!2273130))))

(declare-fun e!3505587 () Regex!15693)

(assert (=> d!1797918 (= lt!2273130 e!3505587)))

(declare-fun c!1003477 () Bool)

(assert (=> d!1797918 (= c!1003477 e!3505585)))

(declare-fun res!2406381 () Bool)

(assert (=> d!1797918 (=> (not res!2406381) (not e!3505585))))

(assert (=> d!1797918 (= res!2406381 ((_ is Cons!63254) (unfocusZipperList!1121 zl!343)))))

(assert (=> d!1797918 (forall!14833 (unfocusZipperList!1121 zl!343) lambda!307251)))

(assert (=> d!1797918 (= (generalisedUnion!1556 (unfocusZipperList!1121 zl!343)) lt!2273130)))

(declare-fun b!5698274 () Bool)

(assert (=> b!5698274 (= e!3505587 (h!69702 (unfocusZipperList!1121 zl!343)))))

(declare-fun b!5698275 () Bool)

(assert (=> b!5698275 (= e!3505586 EmptyLang!15693)))

(declare-fun b!5698276 () Bool)

(assert (=> b!5698276 (= e!3505587 e!3505586)))

(declare-fun c!1003478 () Bool)

(assert (=> b!5698276 (= c!1003478 ((_ is Cons!63254) (unfocusZipperList!1121 zl!343)))))

(declare-fun b!5698277 () Bool)

(declare-fun isUnion!650 (Regex!15693) Bool)

(assert (=> b!5698277 (= e!3505588 (isUnion!650 lt!2273130))))

(declare-fun b!5698278 () Bool)

(assert (=> b!5698278 (= e!3505588 (= lt!2273130 (head!12083 (unfocusZipperList!1121 zl!343))))))

(assert (= (and d!1797918 res!2406381) b!5698273))

(assert (= (and d!1797918 c!1003477) b!5698274))

(assert (= (and d!1797918 (not c!1003477)) b!5698276))

(assert (= (and b!5698276 c!1003478) b!5698272))

(assert (= (and b!5698276 (not c!1003478)) b!5698275))

(assert (= (and d!1797918 res!2406382) b!5698269))

(assert (= (and b!5698269 c!1003479) b!5698270))

(assert (= (and b!5698269 (not c!1003479)) b!5698271))

(assert (= (and b!5698271 c!1003476) b!5698278))

(assert (= (and b!5698271 (not c!1003476)) b!5698277))

(assert (=> b!5698278 m!6653214))

(declare-fun m!6653956 () Bool)

(assert (=> b!5698278 m!6653956))

(assert (=> b!5698269 m!6653214))

(declare-fun m!6653958 () Bool)

(assert (=> b!5698269 m!6653958))

(declare-fun m!6653960 () Bool)

(assert (=> d!1797918 m!6653960))

(assert (=> d!1797918 m!6653214))

(declare-fun m!6653962 () Bool)

(assert (=> d!1797918 m!6653962))

(declare-fun m!6653964 () Bool)

(assert (=> b!5698272 m!6653964))

(declare-fun m!6653966 () Bool)

(assert (=> b!5698277 m!6653966))

(declare-fun m!6653968 () Bool)

(assert (=> b!5698270 m!6653968))

(declare-fun m!6653970 () Bool)

(assert (=> b!5698273 m!6653970))

(assert (=> b!5698271 m!6653214))

(declare-fun m!6653972 () Bool)

(assert (=> b!5698271 m!6653972))

(assert (=> b!5698271 m!6653972))

(declare-fun m!6653974 () Bool)

(assert (=> b!5698271 m!6653974))

(assert (=> b!5697407 d!1797918))

(declare-fun bs!1328132 () Bool)

(declare-fun d!1797920 () Bool)

(assert (= bs!1328132 (and d!1797920 d!1797774)))

(declare-fun lambda!307254 () Int)

(assert (=> bs!1328132 (= lambda!307254 lambda!307221)))

(declare-fun bs!1328133 () Bool)

(assert (= bs!1328133 (and d!1797920 d!1797776)))

(assert (=> bs!1328133 (= lambda!307254 lambda!307222)))

(declare-fun bs!1328134 () Bool)

(assert (= bs!1328134 (and d!1797920 d!1797910)))

(assert (=> bs!1328134 (= lambda!307254 lambda!307248)))

(declare-fun bs!1328135 () Bool)

(assert (= bs!1328135 (and d!1797920 d!1797918)))

(assert (=> bs!1328135 (= lambda!307254 lambda!307251)))

(declare-fun lt!2273133 () List!63378)

(assert (=> d!1797920 (forall!14833 lt!2273133 lambda!307254)))

(declare-fun e!3505591 () List!63378)

(assert (=> d!1797920 (= lt!2273133 e!3505591)))

(declare-fun c!1003482 () Bool)

(assert (=> d!1797920 (= c!1003482 ((_ is Cons!63255) zl!343))))

(assert (=> d!1797920 (= (unfocusZipperList!1121 zl!343) lt!2273133)))

(declare-fun b!5698283 () Bool)

(assert (=> b!5698283 (= e!3505591 (Cons!63254 (generalisedConcat!1308 (exprs!5577 (h!69703 zl!343))) (unfocusZipperList!1121 (t!376697 zl!343))))))

(declare-fun b!5698284 () Bool)

(assert (=> b!5698284 (= e!3505591 Nil!63254)))

(assert (= (and d!1797920 c!1003482) b!5698283))

(assert (= (and d!1797920 (not c!1003482)) b!5698284))

(declare-fun m!6653976 () Bool)

(assert (=> d!1797920 m!6653976))

(assert (=> b!5698283 m!6653142))

(declare-fun m!6653978 () Bool)

(assert (=> b!5698283 m!6653978))

(assert (=> b!5697407 d!1797920))

(declare-fun call!433742 () List!63378)

(declare-fun c!1003487 () Bool)

(declare-fun c!1003484 () Bool)

(declare-fun c!1003485 () Bool)

(declare-fun call!433743 () (InoxSet Context!10154))

(declare-fun bm!433734 () Bool)

(assert (=> bm!433734 (= call!433743 (derivationStepZipperDown!1035 (ite c!1003487 (regTwo!31899 (reg!16022 (regOne!31898 r!7292))) (ite c!1003485 (regTwo!31898 (reg!16022 (regOne!31898 r!7292))) (ite c!1003484 (regOne!31898 (reg!16022 (regOne!31898 r!7292))) (reg!16022 (reg!16022 (regOne!31898 r!7292)))))) (ite (or c!1003487 c!1003485) lt!2272976 (Context!10155 call!433742)) (h!69704 s!2326)))))

(declare-fun call!433740 () List!63378)

(declare-fun bm!433735 () Bool)

(assert (=> bm!433735 (= call!433740 ($colon$colon!1718 (exprs!5577 lt!2272976) (ite (or c!1003485 c!1003484) (regTwo!31898 (reg!16022 (regOne!31898 r!7292))) (reg!16022 (regOne!31898 r!7292)))))))

(declare-fun b!5698285 () Bool)

(declare-fun e!3505593 () Bool)

(assert (=> b!5698285 (= e!3505593 (nullable!5725 (regOne!31898 (reg!16022 (regOne!31898 r!7292)))))))

(declare-fun b!5698286 () Bool)

(declare-fun e!3505592 () (InoxSet Context!10154))

(declare-fun e!3505595 () (InoxSet Context!10154))

(assert (=> b!5698286 (= e!3505592 e!3505595)))

(assert (=> b!5698286 (= c!1003484 ((_ is Concat!24538) (reg!16022 (regOne!31898 r!7292))))))

(declare-fun b!5698288 () Bool)

(declare-fun e!3505597 () (InoxSet Context!10154))

(declare-fun call!433739 () (InoxSet Context!10154))

(assert (=> b!5698288 (= e!3505597 ((_ map or) call!433739 call!433743))))

(declare-fun b!5698289 () Bool)

(declare-fun e!3505594 () (InoxSet Context!10154))

(declare-fun call!433741 () (InoxSet Context!10154))

(assert (=> b!5698289 (= e!3505594 call!433741)))

(declare-fun bm!433736 () Bool)

(assert (=> bm!433736 (= call!433739 (derivationStepZipperDown!1035 (ite c!1003487 (regOne!31899 (reg!16022 (regOne!31898 r!7292))) (regOne!31898 (reg!16022 (regOne!31898 r!7292)))) (ite c!1003487 lt!2272976 (Context!10155 call!433740)) (h!69704 s!2326)))))

(declare-fun bm!433737 () Bool)

(assert (=> bm!433737 (= call!433742 call!433740)))

(declare-fun b!5698290 () Bool)

(declare-fun call!433744 () (InoxSet Context!10154))

(assert (=> b!5698290 (= e!3505592 ((_ map or) call!433739 call!433744))))

(declare-fun bm!433738 () Bool)

(assert (=> bm!433738 (= call!433741 call!433744)))

(declare-fun b!5698291 () Bool)

(assert (=> b!5698291 (= c!1003485 e!3505593)))

(declare-fun res!2406383 () Bool)

(assert (=> b!5698291 (=> (not res!2406383) (not e!3505593))))

(assert (=> b!5698291 (= res!2406383 ((_ is Concat!24538) (reg!16022 (regOne!31898 r!7292))))))

(assert (=> b!5698291 (= e!3505597 e!3505592)))

(declare-fun bm!433739 () Bool)

(assert (=> bm!433739 (= call!433744 call!433743)))

(declare-fun b!5698292 () Bool)

(assert (=> b!5698292 (= e!3505595 call!433741)))

(declare-fun b!5698293 () Bool)

(declare-fun e!3505596 () (InoxSet Context!10154))

(assert (=> b!5698293 (= e!3505596 e!3505597)))

(assert (=> b!5698293 (= c!1003487 ((_ is Union!15693) (reg!16022 (regOne!31898 r!7292))))))

(declare-fun d!1797922 () Bool)

(declare-fun c!1003486 () Bool)

(assert (=> d!1797922 (= c!1003486 (and ((_ is ElementMatch!15693) (reg!16022 (regOne!31898 r!7292))) (= (c!1003241 (reg!16022 (regOne!31898 r!7292))) (h!69704 s!2326))))))

(assert (=> d!1797922 (= (derivationStepZipperDown!1035 (reg!16022 (regOne!31898 r!7292)) lt!2272976 (h!69704 s!2326)) e!3505596)))

(declare-fun b!5698287 () Bool)

(assert (=> b!5698287 (= e!3505596 (store ((as const (Array Context!10154 Bool)) false) lt!2272976 true))))

(declare-fun b!5698294 () Bool)

(declare-fun c!1003483 () Bool)

(assert (=> b!5698294 (= c!1003483 ((_ is Star!15693) (reg!16022 (regOne!31898 r!7292))))))

(assert (=> b!5698294 (= e!3505595 e!3505594)))

(declare-fun b!5698295 () Bool)

(assert (=> b!5698295 (= e!3505594 ((as const (Array Context!10154 Bool)) false))))

(assert (= (and d!1797922 c!1003486) b!5698287))

(assert (= (and d!1797922 (not c!1003486)) b!5698293))

(assert (= (and b!5698293 c!1003487) b!5698288))

(assert (= (and b!5698293 (not c!1003487)) b!5698291))

(assert (= (and b!5698291 res!2406383) b!5698285))

(assert (= (and b!5698291 c!1003485) b!5698290))

(assert (= (and b!5698291 (not c!1003485)) b!5698286))

(assert (= (and b!5698286 c!1003484) b!5698292))

(assert (= (and b!5698286 (not c!1003484)) b!5698294))

(assert (= (and b!5698294 c!1003483) b!5698289))

(assert (= (and b!5698294 (not c!1003483)) b!5698295))

(assert (= (or b!5698292 b!5698289) bm!433737))

(assert (= (or b!5698292 b!5698289) bm!433738))

(assert (= (or b!5698290 bm!433737) bm!433735))

(assert (= (or b!5698290 bm!433738) bm!433739))

(assert (= (or b!5698288 bm!433739) bm!433734))

(assert (= (or b!5698288 b!5698290) bm!433736))

(declare-fun m!6653980 () Bool)

(assert (=> b!5698285 m!6653980))

(declare-fun m!6653982 () Bool)

(assert (=> bm!433735 m!6653982))

(assert (=> b!5698287 m!6653202))

(declare-fun m!6653984 () Bool)

(assert (=> bm!433736 m!6653984))

(declare-fun m!6653986 () Bool)

(assert (=> bm!433734 m!6653986))

(assert (=> b!5697428 d!1797922))

(declare-fun d!1797924 () Bool)

(assert (=> d!1797924 (= (nullable!5725 (regOne!31898 (regOne!31898 r!7292))) (nullableFct!1797 (regOne!31898 (regOne!31898 r!7292))))))

(declare-fun bs!1328136 () Bool)

(assert (= bs!1328136 d!1797924))

(declare-fun m!6653988 () Bool)

(assert (=> bs!1328136 m!6653988))

(assert (=> b!5697408 d!1797924))

(declare-fun bs!1328137 () Bool)

(declare-fun d!1797926 () Bool)

(assert (= bs!1328137 (and d!1797926 b!5697409)))

(declare-fun lambda!307255 () Int)

(assert (=> bs!1328137 (= lambda!307255 lambda!307179)))

(declare-fun bs!1328138 () Bool)

(assert (= bs!1328138 (and d!1797926 d!1797696)))

(assert (=> bs!1328138 (= lambda!307255 lambda!307193)))

(assert (=> d!1797926 true))

(assert (=> d!1797926 (= (derivationStepZipper!1776 lt!2272986 (h!69704 s!2326)) (flatMap!1306 lt!2272986 lambda!307255))))

(declare-fun bs!1328139 () Bool)

(assert (= bs!1328139 d!1797926))

(declare-fun m!6653990 () Bool)

(assert (=> bs!1328139 m!6653990))

(assert (=> b!5697429 d!1797926))

(declare-fun d!1797928 () Bool)

(assert (=> d!1797928 (= (flatMap!1306 lt!2272986 lambda!307179) (choose!43091 lt!2272986 lambda!307179))))

(declare-fun bs!1328140 () Bool)

(assert (= bs!1328140 d!1797928))

(declare-fun m!6653992 () Bool)

(assert (=> bs!1328140 m!6653992))

(assert (=> b!5697429 d!1797928))

(assert (=> b!5697429 d!1797886))

(declare-fun d!1797930 () Bool)

(assert (=> d!1797930 (= (flatMap!1306 lt!2272986 lambda!307179) (dynLambda!24750 lambda!307179 lt!2273004))))

(declare-fun lt!2273134 () Unit!156304)

(assert (=> d!1797930 (= lt!2273134 (choose!43092 lt!2272986 lt!2273004 lambda!307179))))

(assert (=> d!1797930 (= lt!2272986 (store ((as const (Array Context!10154 Bool)) false) lt!2273004 true))))

(assert (=> d!1797930 (= (lemmaFlatMapOnSingletonSet!838 lt!2272986 lt!2273004 lambda!307179) lt!2273134)))

(declare-fun b_lambda!215379 () Bool)

(assert (=> (not b_lambda!215379) (not d!1797930)))

(declare-fun bs!1328141 () Bool)

(assert (= bs!1328141 d!1797930))

(assert (=> bs!1328141 m!6653192))

(declare-fun m!6653994 () Bool)

(assert (=> bs!1328141 m!6653994))

(declare-fun m!6653996 () Bool)

(assert (=> bs!1328141 m!6653996))

(assert (=> bs!1328141 m!6653190))

(assert (=> b!5697429 d!1797930))

(declare-fun b!5698303 () Bool)

(declare-fun e!3505603 () Bool)

(declare-fun tp!1580365 () Bool)

(assert (=> b!5698303 (= e!3505603 tp!1580365)))

(declare-fun tp!1580366 () Bool)

(declare-fun e!3505602 () Bool)

(declare-fun b!5698302 () Bool)

(assert (=> b!5698302 (= e!3505602 (and (inv!82479 (h!69703 (t!376697 zl!343))) e!3505603 tp!1580366))))

(assert (=> b!5697435 (= tp!1580295 e!3505602)))

(assert (= b!5698302 b!5698303))

(assert (= (and b!5697435 ((_ is Cons!63255) (t!376697 zl!343))) b!5698302))

(declare-fun m!6653998 () Bool)

(assert (=> b!5698302 m!6653998))

(declare-fun e!3505606 () Bool)

(assert (=> b!5697410 (= tp!1580297 e!3505606)))

(declare-fun b!5698317 () Bool)

(declare-fun tp!1580379 () Bool)

(declare-fun tp!1580381 () Bool)

(assert (=> b!5698317 (= e!3505606 (and tp!1580379 tp!1580381))))

(declare-fun b!5698316 () Bool)

(declare-fun tp!1580377 () Bool)

(assert (=> b!5698316 (= e!3505606 tp!1580377)))

(declare-fun b!5698315 () Bool)

(declare-fun tp!1580380 () Bool)

(declare-fun tp!1580378 () Bool)

(assert (=> b!5698315 (= e!3505606 (and tp!1580380 tp!1580378))))

(declare-fun b!5698314 () Bool)

(assert (=> b!5698314 (= e!3505606 tp_is_empty!40639)))

(assert (= (and b!5697410 ((_ is ElementMatch!15693) (regOne!31899 r!7292))) b!5698314))

(assert (= (and b!5697410 ((_ is Concat!24538) (regOne!31899 r!7292))) b!5698315))

(assert (= (and b!5697410 ((_ is Star!15693) (regOne!31899 r!7292))) b!5698316))

(assert (= (and b!5697410 ((_ is Union!15693) (regOne!31899 r!7292))) b!5698317))

(declare-fun e!3505607 () Bool)

(assert (=> b!5697410 (= tp!1580300 e!3505607)))

(declare-fun b!5698321 () Bool)

(declare-fun tp!1580384 () Bool)

(declare-fun tp!1580386 () Bool)

(assert (=> b!5698321 (= e!3505607 (and tp!1580384 tp!1580386))))

(declare-fun b!5698320 () Bool)

(declare-fun tp!1580382 () Bool)

(assert (=> b!5698320 (= e!3505607 tp!1580382)))

(declare-fun b!5698319 () Bool)

(declare-fun tp!1580385 () Bool)

(declare-fun tp!1580383 () Bool)

(assert (=> b!5698319 (= e!3505607 (and tp!1580385 tp!1580383))))

(declare-fun b!5698318 () Bool)

(assert (=> b!5698318 (= e!3505607 tp_is_empty!40639)))

(assert (= (and b!5697410 ((_ is ElementMatch!15693) (regTwo!31899 r!7292))) b!5698318))

(assert (= (and b!5697410 ((_ is Concat!24538) (regTwo!31899 r!7292))) b!5698319))

(assert (= (and b!5697410 ((_ is Star!15693) (regTwo!31899 r!7292))) b!5698320))

(assert (= (and b!5697410 ((_ is Union!15693) (regTwo!31899 r!7292))) b!5698321))

(declare-fun e!3505608 () Bool)

(assert (=> b!5697431 (= tp!1580301 e!3505608)))

(declare-fun b!5698325 () Bool)

(declare-fun tp!1580389 () Bool)

(declare-fun tp!1580391 () Bool)

(assert (=> b!5698325 (= e!3505608 (and tp!1580389 tp!1580391))))

(declare-fun b!5698324 () Bool)

(declare-fun tp!1580387 () Bool)

(assert (=> b!5698324 (= e!3505608 tp!1580387)))

(declare-fun b!5698323 () Bool)

(declare-fun tp!1580390 () Bool)

(declare-fun tp!1580388 () Bool)

(assert (=> b!5698323 (= e!3505608 (and tp!1580390 tp!1580388))))

(declare-fun b!5698322 () Bool)

(assert (=> b!5698322 (= e!3505608 tp_is_empty!40639)))

(assert (= (and b!5697431 ((_ is ElementMatch!15693) (reg!16022 r!7292))) b!5698322))

(assert (= (and b!5697431 ((_ is Concat!24538) (reg!16022 r!7292))) b!5698323))

(assert (= (and b!5697431 ((_ is Star!15693) (reg!16022 r!7292))) b!5698324))

(assert (= (and b!5697431 ((_ is Union!15693) (reg!16022 r!7292))) b!5698325))

(declare-fun b!5698330 () Bool)

(declare-fun e!3505611 () Bool)

(declare-fun tp!1580394 () Bool)

(assert (=> b!5698330 (= e!3505611 (and tp_is_empty!40639 tp!1580394))))

(assert (=> b!5697438 (= tp!1580294 e!3505611)))

(assert (= (and b!5697438 ((_ is Cons!63256) (t!376698 s!2326))) b!5698330))

(declare-fun b!5698335 () Bool)

(declare-fun e!3505614 () Bool)

(declare-fun tp!1580399 () Bool)

(declare-fun tp!1580400 () Bool)

(assert (=> b!5698335 (= e!3505614 (and tp!1580399 tp!1580400))))

(assert (=> b!5697411 (= tp!1580293 e!3505614)))

(assert (= (and b!5697411 ((_ is Cons!63254) (exprs!5577 (h!69703 zl!343)))) b!5698335))

(declare-fun b!5698336 () Bool)

(declare-fun e!3505615 () Bool)

(declare-fun tp!1580401 () Bool)

(declare-fun tp!1580402 () Bool)

(assert (=> b!5698336 (= e!3505615 (and tp!1580401 tp!1580402))))

(assert (=> b!5697426 (= tp!1580299 e!3505615)))

(assert (= (and b!5697426 ((_ is Cons!63254) (exprs!5577 setElem!38151))) b!5698336))

(declare-fun e!3505616 () Bool)

(assert (=> b!5697427 (= tp!1580302 e!3505616)))

(declare-fun b!5698340 () Bool)

(declare-fun tp!1580405 () Bool)

(declare-fun tp!1580407 () Bool)

(assert (=> b!5698340 (= e!3505616 (and tp!1580405 tp!1580407))))

(declare-fun b!5698339 () Bool)

(declare-fun tp!1580403 () Bool)

(assert (=> b!5698339 (= e!3505616 tp!1580403)))

(declare-fun b!5698338 () Bool)

(declare-fun tp!1580406 () Bool)

(declare-fun tp!1580404 () Bool)

(assert (=> b!5698338 (= e!3505616 (and tp!1580406 tp!1580404))))

(declare-fun b!5698337 () Bool)

(assert (=> b!5698337 (= e!3505616 tp_is_empty!40639)))

(assert (= (and b!5697427 ((_ is ElementMatch!15693) (regOne!31898 r!7292))) b!5698337))

(assert (= (and b!5697427 ((_ is Concat!24538) (regOne!31898 r!7292))) b!5698338))

(assert (= (and b!5697427 ((_ is Star!15693) (regOne!31898 r!7292))) b!5698339))

(assert (= (and b!5697427 ((_ is Union!15693) (regOne!31898 r!7292))) b!5698340))

(declare-fun e!3505617 () Bool)

(assert (=> b!5697427 (= tp!1580298 e!3505617)))

(declare-fun b!5698344 () Bool)

(declare-fun tp!1580410 () Bool)

(declare-fun tp!1580412 () Bool)

(assert (=> b!5698344 (= e!3505617 (and tp!1580410 tp!1580412))))

(declare-fun b!5698343 () Bool)

(declare-fun tp!1580408 () Bool)

(assert (=> b!5698343 (= e!3505617 tp!1580408)))

(declare-fun b!5698342 () Bool)

(declare-fun tp!1580411 () Bool)

(declare-fun tp!1580409 () Bool)

(assert (=> b!5698342 (= e!3505617 (and tp!1580411 tp!1580409))))

(declare-fun b!5698341 () Bool)

(assert (=> b!5698341 (= e!3505617 tp_is_empty!40639)))

(assert (= (and b!5697427 ((_ is ElementMatch!15693) (regTwo!31898 r!7292))) b!5698341))

(assert (= (and b!5697427 ((_ is Concat!24538) (regTwo!31898 r!7292))) b!5698342))

(assert (= (and b!5697427 ((_ is Star!15693) (regTwo!31898 r!7292))) b!5698343))

(assert (= (and b!5697427 ((_ is Union!15693) (regTwo!31898 r!7292))) b!5698344))

(declare-fun condSetEmpty!38157 () Bool)

(assert (=> setNonEmpty!38151 (= condSetEmpty!38157 (= setRest!38151 ((as const (Array Context!10154 Bool)) false)))))

(declare-fun setRes!38157 () Bool)

(assert (=> setNonEmpty!38151 (= tp!1580296 setRes!38157)))

(declare-fun setIsEmpty!38157 () Bool)

(assert (=> setIsEmpty!38157 setRes!38157))

(declare-fun tp!1580418 () Bool)

(declare-fun setNonEmpty!38157 () Bool)

(declare-fun setElem!38157 () Context!10154)

(declare-fun e!3505620 () Bool)

(assert (=> setNonEmpty!38157 (= setRes!38157 (and tp!1580418 (inv!82479 setElem!38157) e!3505620))))

(declare-fun setRest!38157 () (InoxSet Context!10154))

(assert (=> setNonEmpty!38157 (= setRest!38151 ((_ map or) (store ((as const (Array Context!10154 Bool)) false) setElem!38157 true) setRest!38157))))

(declare-fun b!5698349 () Bool)

(declare-fun tp!1580417 () Bool)

(assert (=> b!5698349 (= e!3505620 tp!1580417)))

(assert (= (and setNonEmpty!38151 condSetEmpty!38157) setIsEmpty!38157))

(assert (= (and setNonEmpty!38151 (not condSetEmpty!38157)) setNonEmpty!38157))

(assert (= setNonEmpty!38157 b!5698349))

(declare-fun m!6654000 () Bool)

(assert (=> setNonEmpty!38157 m!6654000))

(declare-fun b_lambda!215381 () Bool)

(assert (= b_lambda!215351 (or b!5697409 b_lambda!215381)))

(declare-fun bs!1328142 () Bool)

(declare-fun d!1797932 () Bool)

(assert (= bs!1328142 (and d!1797932 b!5697409)))

(assert (=> bs!1328142 (= (dynLambda!24750 lambda!307179 lt!2272984) (derivationStepZipperUp!961 lt!2272984 (h!69704 s!2326)))))

(assert (=> bs!1328142 m!6653180))

(assert (=> d!1797694 d!1797932))

(declare-fun b_lambda!215383 () Bool)

(assert (= b_lambda!215379 (or b!5697409 b_lambda!215383)))

(declare-fun bs!1328143 () Bool)

(declare-fun d!1797934 () Bool)

(assert (= bs!1328143 (and d!1797934 b!5697409)))

(assert (=> bs!1328143 (= (dynLambda!24750 lambda!307179 lt!2273004) (derivationStepZipperUp!961 lt!2273004 (h!69704 s!2326)))))

(assert (=> bs!1328143 m!6653194))

(assert (=> d!1797930 d!1797934))

(declare-fun b_lambda!215385 () Bool)

(assert (= b_lambda!215359 (or b!5697409 b_lambda!215385)))

(declare-fun bs!1328144 () Bool)

(declare-fun d!1797936 () Bool)

(assert (= bs!1328144 (and d!1797936 b!5697409)))

(assert (=> bs!1328144 (= (dynLambda!24750 lambda!307179 lt!2273001) (derivationStepZipperUp!961 lt!2273001 (h!69704 s!2326)))))

(assert (=> bs!1328144 m!6653206))

(assert (=> d!1797778 d!1797936))

(declare-fun b_lambda!215387 () Bool)

(assert (= b_lambda!215361 (or b!5697409 b_lambda!215387)))

(declare-fun bs!1328145 () Bool)

(declare-fun d!1797938 () Bool)

(assert (= bs!1328145 (and d!1797938 b!5697409)))

(assert (=> bs!1328145 (= (dynLambda!24750 lambda!307179 lt!2272976) (derivationStepZipperUp!961 lt!2272976 (h!69704 s!2326)))))

(assert (=> bs!1328145 m!6653210))

(assert (=> d!1797780 d!1797938))

(declare-fun b_lambda!215389 () Bool)

(assert (= b_lambda!215377 (or b!5697409 b_lambda!215389)))

(declare-fun bs!1328146 () Bool)

(declare-fun d!1797940 () Bool)

(assert (= bs!1328146 (and d!1797940 b!5697409)))

(assert (=> bs!1328146 (= (dynLambda!24750 lambda!307179 (h!69703 zl!343)) (derivationStepZipperUp!961 (h!69703 zl!343) (h!69704 s!2326)))))

(assert (=> bs!1328146 m!6653224))

(assert (=> d!1797894 d!1797940))

(check-sat (not b_lambda!215387) (not b!5698188) (not b!5698316) (not b!5697947) tp_is_empty!40639 (not d!1797836) (not b!5698325) (not b!5698323) (not b!5698073) (not b!5698315) (not d!1797694) (not b!5698119) (not d!1797832) (not d!1797760) (not b!5698214) (not b!5697886) (not bs!1328146) (not b!5698339) (not b!5697950) (not b!5697831) (not b!5698148) (not b!5698349) (not d!1797918) (not b!5697872) (not b!5698128) (not d!1797678) (not b!5698239) (not b!5698131) (not bm!433712) (not d!1797782) (not b!5698330) (not bm!433732) (not d!1797762) (not b!5698273) (not b!5698211) (not b!5697870) (not b!5697786) (not d!1797752) (not bm!433734) (not d!1797870) (not b!5697535) (not b!5698088) (not b!5698277) (not b!5698324) (not bm!433665) (not d!1797766) (not d!1797914) (not d!1797768) (not b!5698090) (not b!5697783) (not b!5697781) (not bm!433707) (not d!1797930) (not bs!1328142) (not d!1797898) (not b!5698078) (not d!1797860) (not b!5698340) (not bm!433710) (not d!1797906) (not d!1797908) (not b_lambda!215389) (not d!1797882) (not setNonEmpty!38157) (not b!5697850) (not b!5698248) (not d!1797884) (not b!5698207) (not d!1797776) (not d!1797878) (not b!5698242) (not d!1797862) (not b!5698075) (not b!5698093) (not b!5698237) (not b!5697537) (not d!1797778) (not b!5698079) (not bm!433709) (not b_lambda!215383) (not b!5698245) (not bm!433683) (not b!5698320) (not b!5698236) (not b!5698156) (not b!5698344) (not b!5698205) (not b!5698129) (not bs!1328144) (not b!5697775) (not d!1797786) (not b!5697951) (not bm!433736) (not b!5697834) (not b!5698150) (not b!5698200) (not d!1797926) (not b!5697888) (not d!1797858) (not d!1797794) (not d!1797864) (not b!5698084) (not d!1797890) (not bm!433711) (not d!1797900) (not b!5698269) (not b!5698317) (not d!1797912) (not bs!1328143) (not bs!1328145) (not bm!433727) (not b!5698081) (not b!5697949) (not d!1797924) (not bm!433728) (not b!5698134) (not d!1797866) (not b!5697993) (not b_lambda!215381) (not d!1797928) (not b!5698285) (not b!5698321) (not b!5698241) (not b!5697992) (not d!1797774) (not b!5698159) (not d!1797830) (not b!5698271) (not bm!433699) (not b!5697945) (not b!5698143) (not d!1797696) (not d!1797872) (not d!1797874) (not b!5698338) (not b!5698283) (not b!5698154) (not b!5697849) (not d!1797920) (not bm!433735) (not bm!433686) (not bm!433713) (not b!5698091) (not bm!433637) (not bm!433675) (not b!5698153) (not b!5698335) (not b!5698213) (not b!5698202) (not b!5697685) (not b!5697780) (not b!5698086) (not d!1797770) (not b!5698302) (not d!1797910) (not b!5698162) (not d!1797868) (not b_lambda!215385) (not b!5698123) (not b!5698343) (not d!1797780) (not b!5698244) (not d!1797838) (not b!5698136) (not b!5698336) (not b!5698212) (not bm!433726) (not b!5697678) (not b!5697777) (not b!5697833) (not b!5698303) (not b!5698278) (not bm!433708) (not b!5698319) (not b!5697952) (not b!5698164) (not b!5698342) (not b!5698272) (not b!5698215) (not d!1797790) (not d!1797904) (not b!5698270) (not bm!433666) (not b!5697832) (not b!5698092) (not b!5698125) (not d!1797894) (not bm!433733))
(check-sat)
