; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!579980 () Bool)

(assert start!579980)

(declare-fun b!5583348 () Bool)

(assert (=> b!5583348 true))

(assert (=> b!5583348 true))

(declare-fun lambda!299490 () Int)

(declare-fun lambda!299489 () Int)

(assert (=> b!5583348 (not (= lambda!299490 lambda!299489))))

(assert (=> b!5583348 true))

(assert (=> b!5583348 true))

(declare-fun b!5583357 () Bool)

(assert (=> b!5583357 true))

(declare-fun b!5583329 () Bool)

(declare-datatypes ((Unit!155652 0))(
  ( (Unit!155653) )
))
(declare-fun e!3444980 () Unit!155652)

(declare-fun Unit!155654 () Unit!155652)

(assert (=> b!5583329 (= e!3444980 Unit!155654)))

(declare-datatypes ((C!31406 0))(
  ( (C!31407 (val!25405 Int)) )
))
(declare-datatypes ((Regex!15568 0))(
  ( (ElementMatch!15568 (c!977850 C!31406)) (Concat!24413 (regOne!31648 Regex!15568) (regTwo!31648 Regex!15568)) (EmptyExpr!15568) (Star!15568 (reg!15897 Regex!15568)) (EmptyLang!15568) (Union!15568 (regOne!31649 Regex!15568) (regTwo!31649 Regex!15568)) )
))
(declare-datatypes ((List!63003 0))(
  ( (Nil!62879) (Cons!62879 (h!69327 Regex!15568) (t!376276 List!63003)) )
))
(declare-datatypes ((Context!9904 0))(
  ( (Context!9905 (exprs!5452 List!63003)) )
))
(declare-fun lt!2254070 () (Set Context!9904))

(declare-datatypes ((List!63004 0))(
  ( (Nil!62880) (Cons!62880 (h!69328 C!31406) (t!376277 List!63004)) )
))
(declare-fun s!2326 () List!63004)

(declare-fun lt!2254046 () (Set Context!9904))

(declare-fun lt!2254050 () Unit!155652)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!593 ((Set Context!9904) (Set Context!9904) List!63004) Unit!155652)

(assert (=> b!5583329 (= lt!2254050 (lemmaZipperConcatMatchesSameAsBothZippers!593 lt!2254046 lt!2254070 (t!376277 s!2326)))))

(declare-fun res!2369336 () Bool)

(declare-fun lt!2254059 () Bool)

(assert (=> b!5583329 (= res!2369336 lt!2254059)))

(declare-fun e!3444972 () Bool)

(assert (=> b!5583329 (=> res!2369336 e!3444972)))

(declare-fun matchZipper!1706 ((Set Context!9904) List!63004) Bool)

(assert (=> b!5583329 (= (matchZipper!1706 (set.union lt!2254046 lt!2254070) (t!376277 s!2326)) e!3444972)))

(declare-fun b!5583330 () Bool)

(declare-fun e!3444977 () Bool)

(declare-fun lt!2254068 () (Set Context!9904))

(assert (=> b!5583330 (= e!3444977 (not (matchZipper!1706 lt!2254068 (t!376277 s!2326))))))

(declare-fun b!5583331 () Bool)

(declare-fun e!3444967 () Bool)

(declare-fun e!3444978 () Bool)

(assert (=> b!5583331 (= e!3444967 e!3444978)))

(declare-fun res!2369333 () Bool)

(assert (=> b!5583331 (=> res!2369333 e!3444978)))

(declare-fun r!7292 () Regex!15568)

(declare-fun nullable!5600 (Regex!15568) Bool)

(assert (=> b!5583331 (= res!2369333 (not (nullable!5600 (regTwo!31649 (regOne!31648 r!7292)))))))

(declare-fun lambda!299491 () Int)

(declare-fun lt!2254049 () Context!9904)

(declare-fun lt!2254060 () (Set Context!9904))

(declare-fun flatMap!1181 ((Set Context!9904) Int) (Set Context!9904))

(declare-fun derivationStepZipperUp!836 (Context!9904 C!31406) (Set Context!9904))

(assert (=> b!5583331 (= (flatMap!1181 lt!2254060 lambda!299491) (derivationStepZipperUp!836 lt!2254049 (h!69328 s!2326)))))

(declare-fun lt!2254047 () Unit!155652)

(declare-fun lemmaFlatMapOnSingletonSet!713 ((Set Context!9904) Context!9904 Int) Unit!155652)

(assert (=> b!5583331 (= lt!2254047 (lemmaFlatMapOnSingletonSet!713 lt!2254060 lt!2254049 lambda!299491))))

(declare-fun lt!2254048 () (Set Context!9904))

(assert (=> b!5583331 (= lt!2254048 (derivationStepZipperUp!836 lt!2254049 (h!69328 s!2326)))))

(declare-fun lt!2254066 () (Set Context!9904))

(declare-fun derivationStepZipper!1667 ((Set Context!9904) C!31406) (Set Context!9904))

(assert (=> b!5583331 (= lt!2254066 (derivationStepZipper!1667 lt!2254060 (h!69328 s!2326)))))

(declare-fun lt!2254064 () Unit!155652)

(assert (=> b!5583331 (= lt!2254064 e!3444980)))

(declare-fun c!977849 () Bool)

(assert (=> b!5583331 (= c!977849 (nullable!5600 (regOne!31649 (regOne!31648 r!7292))))))

(declare-fun lt!2254058 () Context!9904)

(declare-fun lt!2254052 () (Set Context!9904))

(assert (=> b!5583331 (= (flatMap!1181 lt!2254052 lambda!299491) (derivationStepZipperUp!836 lt!2254058 (h!69328 s!2326)))))

(declare-fun lt!2254051 () Unit!155652)

(assert (=> b!5583331 (= lt!2254051 (lemmaFlatMapOnSingletonSet!713 lt!2254052 lt!2254058 lambda!299491))))

(declare-fun lt!2254061 () (Set Context!9904))

(assert (=> b!5583331 (= lt!2254061 (derivationStepZipperUp!836 lt!2254058 (h!69328 s!2326)))))

(assert (=> b!5583331 (= lt!2254060 (set.insert lt!2254049 (as set.empty (Set Context!9904))))))

(declare-datatypes ((List!63005 0))(
  ( (Nil!62881) (Cons!62881 (h!69329 Context!9904) (t!376278 List!63005)) )
))
(declare-fun zl!343 () List!63005)

(assert (=> b!5583331 (= lt!2254049 (Context!9905 (Cons!62879 (regTwo!31649 (regOne!31648 r!7292)) (t!376276 (exprs!5452 (h!69329 zl!343))))))))

(assert (=> b!5583331 (= lt!2254052 (set.insert lt!2254058 (as set.empty (Set Context!9904))))))

(assert (=> b!5583331 (= lt!2254058 (Context!9905 (Cons!62879 (regOne!31649 (regOne!31648 r!7292)) (t!376276 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun b!5583332 () Bool)

(declare-fun e!3444981 () Bool)

(assert (=> b!5583332 (= e!3444981 (matchZipper!1706 lt!2254070 (t!376277 s!2326)))))

(declare-fun b!5583333 () Bool)

(declare-fun e!3444969 () Bool)

(declare-fun tp!1544710 () Bool)

(assert (=> b!5583333 (= e!3444969 tp!1544710)))

(declare-fun b!5583334 () Bool)

(declare-fun e!3444976 () Bool)

(declare-fun e!3444966 () Bool)

(assert (=> b!5583334 (= e!3444976 e!3444966)))

(declare-fun res!2369347 () Bool)

(assert (=> b!5583334 (=> res!2369347 e!3444966)))

(declare-fun lt!2254063 () (Set Context!9904))

(declare-fun lt!2254043 () (Set Context!9904))

(assert (=> b!5583334 (= res!2369347 (not (= lt!2254063 lt!2254043)))))

(assert (=> b!5583334 (= lt!2254043 (set.union lt!2254046 lt!2254068))))

(declare-fun lt!2254067 () Context!9904)

(declare-fun derivationStepZipperDown!910 (Regex!15568 Context!9904 C!31406) (Set Context!9904))

(assert (=> b!5583334 (= lt!2254068 (derivationStepZipperDown!910 (regTwo!31649 (regOne!31648 r!7292)) lt!2254067 (h!69328 s!2326)))))

(assert (=> b!5583334 (= lt!2254046 (derivationStepZipperDown!910 (regOne!31649 (regOne!31648 r!7292)) lt!2254067 (h!69328 s!2326)))))

(declare-fun b!5583335 () Bool)

(declare-fun e!3444983 () Bool)

(assert (=> b!5583335 (= e!3444983 (matchZipper!1706 lt!2254068 (t!376277 s!2326)))))

(declare-fun res!2369330 () Bool)

(declare-fun e!3444973 () Bool)

(assert (=> start!579980 (=> (not res!2369330) (not e!3444973))))

(declare-fun validRegex!7304 (Regex!15568) Bool)

(assert (=> start!579980 (= res!2369330 (validRegex!7304 r!7292))))

(assert (=> start!579980 e!3444973))

(assert (=> start!579980 e!3444969))

(declare-fun condSetEmpty!37174 () Bool)

(declare-fun z!1189 () (Set Context!9904))

(assert (=> start!579980 (= condSetEmpty!37174 (= z!1189 (as set.empty (Set Context!9904))))))

(declare-fun setRes!37174 () Bool)

(assert (=> start!579980 setRes!37174))

(declare-fun e!3444971 () Bool)

(assert (=> start!579980 e!3444971))

(declare-fun e!3444970 () Bool)

(assert (=> start!579980 e!3444970))

(declare-fun b!5583336 () Bool)

(declare-fun res!2369334 () Bool)

(declare-fun e!3444975 () Bool)

(assert (=> b!5583336 (=> res!2369334 e!3444975)))

(assert (=> b!5583336 (= res!2369334 (not (is-Cons!62879 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5583337 () Bool)

(declare-fun res!2369332 () Bool)

(assert (=> b!5583337 (=> res!2369332 e!3444975)))

(declare-fun generalisedUnion!1431 (List!63003) Regex!15568)

(declare-fun unfocusZipperList!996 (List!63005) List!63003)

(assert (=> b!5583337 (= res!2369332 (not (= r!7292 (generalisedUnion!1431 (unfocusZipperList!996 zl!343)))))))

(declare-fun b!5583338 () Bool)

(declare-fun res!2369335 () Bool)

(assert (=> b!5583338 (=> (not res!2369335) (not e!3444973))))

(declare-fun toList!9352 ((Set Context!9904)) List!63005)

(assert (=> b!5583338 (= res!2369335 (= (toList!9352 z!1189) zl!343))))

(declare-fun e!3444979 () Bool)

(declare-fun tp!1544716 () Bool)

(declare-fun setElem!37174 () Context!9904)

(declare-fun setNonEmpty!37174 () Bool)

(declare-fun inv!82168 (Context!9904) Bool)

(assert (=> setNonEmpty!37174 (= setRes!37174 (and tp!1544716 (inv!82168 setElem!37174) e!3444979))))

(declare-fun setRest!37174 () (Set Context!9904))

(assert (=> setNonEmpty!37174 (= z!1189 (set.union (set.insert setElem!37174 (as set.empty (Set Context!9904))) setRest!37174))))

(declare-fun b!5583339 () Bool)

(declare-fun tp!1544715 () Bool)

(declare-fun tp!1544713 () Bool)

(assert (=> b!5583339 (= e!3444969 (and tp!1544715 tp!1544713))))

(declare-fun b!5583340 () Bool)

(assert (=> b!5583340 (= e!3444973 (not e!3444975))))

(declare-fun res!2369346 () Bool)

(assert (=> b!5583340 (=> res!2369346 e!3444975)))

(assert (=> b!5583340 (= res!2369346 (not (is-Cons!62881 zl!343)))))

(declare-fun lt!2254056 () Bool)

(declare-fun matchRSpec!2671 (Regex!15568 List!63004) Bool)

(assert (=> b!5583340 (= lt!2254056 (matchRSpec!2671 r!7292 s!2326))))

(declare-fun matchR!7753 (Regex!15568 List!63004) Bool)

(assert (=> b!5583340 (= lt!2254056 (matchR!7753 r!7292 s!2326))))

(declare-fun lt!2254057 () Unit!155652)

(declare-fun mainMatchTheorem!2671 (Regex!15568 List!63004) Unit!155652)

(assert (=> b!5583340 (= lt!2254057 (mainMatchTheorem!2671 r!7292 s!2326))))

(declare-fun b!5583341 () Bool)

(declare-fun res!2369339 () Bool)

(declare-fun e!3444984 () Bool)

(assert (=> b!5583341 (=> res!2369339 e!3444984)))

(declare-fun isEmpty!34692 (List!63003) Bool)

(assert (=> b!5583341 (= res!2369339 (isEmpty!34692 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5583342 () Bool)

(declare-fun res!2369348 () Bool)

(assert (=> b!5583342 (=> res!2369348 e!3444975)))

(assert (=> b!5583342 (= res!2369348 (or (is-EmptyExpr!15568 r!7292) (is-EmptyLang!15568 r!7292) (is-ElementMatch!15568 r!7292) (is-Union!15568 r!7292) (not (is-Concat!24413 r!7292))))))

(declare-fun b!5583343 () Bool)

(declare-fun e!3444968 () Unit!155652)

(declare-fun Unit!155655 () Unit!155652)

(assert (=> b!5583343 (= e!3444968 Unit!155655)))

(declare-fun b!5583344 () Bool)

(declare-fun e!3444982 () Bool)

(assert (=> b!5583344 (= e!3444978 e!3444982)))

(declare-fun res!2369331 () Bool)

(assert (=> b!5583344 (=> res!2369331 e!3444982)))

(declare-fun lt!2254062 () (Set Context!9904))

(assert (=> b!5583344 (= res!2369331 (or (not (= lt!2254048 lt!2254062)) (not (= lt!2254066 lt!2254062))))))

(assert (=> b!5583344 (= lt!2254062 (set.union lt!2254068 lt!2254070))))

(declare-fun setIsEmpty!37174 () Bool)

(assert (=> setIsEmpty!37174 setRes!37174))

(declare-fun b!5583345 () Bool)

(assert (=> b!5583345 (= e!3444972 (matchZipper!1706 lt!2254070 (t!376277 s!2326)))))

(declare-fun b!5583346 () Bool)

(assert (=> b!5583346 (= e!3444982 (= (matchZipper!1706 lt!2254060 s!2326) (matchZipper!1706 lt!2254066 (t!376277 s!2326))))))

(declare-fun b!5583347 () Bool)

(declare-fun res!2369329 () Bool)

(assert (=> b!5583347 (=> res!2369329 e!3444975)))

(declare-fun isEmpty!34693 (List!63005) Bool)

(assert (=> b!5583347 (= res!2369329 (not (isEmpty!34693 (t!376278 zl!343))))))

(assert (=> b!5583348 (= e!3444975 e!3444984)))

(declare-fun res!2369345 () Bool)

(assert (=> b!5583348 (=> res!2369345 e!3444984)))

(declare-fun lt!2254055 () Bool)

(assert (=> b!5583348 (= res!2369345 (or (not (= lt!2254056 lt!2254055)) (is-Nil!62880 s!2326)))))

(declare-fun Exists!2668 (Int) Bool)

(assert (=> b!5583348 (= (Exists!2668 lambda!299489) (Exists!2668 lambda!299490))))

(declare-fun lt!2254065 () Unit!155652)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1297 (Regex!15568 Regex!15568 List!63004) Unit!155652)

(assert (=> b!5583348 (= lt!2254065 (lemmaExistCutMatchRandMatchRSpecEquivalent!1297 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326))))

(assert (=> b!5583348 (= lt!2254055 (Exists!2668 lambda!299489))))

(declare-datatypes ((tuple2!65330 0))(
  ( (tuple2!65331 (_1!35968 List!63004) (_2!35968 List!63004)) )
))
(declare-datatypes ((Option!15577 0))(
  ( (None!15576) (Some!15576 (v!51617 tuple2!65330)) )
))
(declare-fun isDefined!12280 (Option!15577) Bool)

(declare-fun findConcatSeparation!1991 (Regex!15568 Regex!15568 List!63004 List!63004 List!63004) Option!15577)

(assert (=> b!5583348 (= lt!2254055 (isDefined!12280 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326)))))

(declare-fun lt!2254053 () Unit!155652)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1755 (Regex!15568 Regex!15568 List!63004) Unit!155652)

(assert (=> b!5583348 (= lt!2254053 (lemmaFindConcatSeparationEquivalentToExists!1755 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326))))

(declare-fun b!5583349 () Bool)

(declare-fun tp_is_empty!40389 () Bool)

(declare-fun tp!1544711 () Bool)

(assert (=> b!5583349 (= e!3444970 (and tp_is_empty!40389 tp!1544711))))

(declare-fun b!5583350 () Bool)

(declare-fun res!2369341 () Bool)

(assert (=> b!5583350 (=> (not res!2369341) (not e!3444973))))

(declare-fun unfocusZipper!1310 (List!63005) Regex!15568)

(assert (=> b!5583350 (= res!2369341 (= r!7292 (unfocusZipper!1310 zl!343)))))

(declare-fun b!5583351 () Bool)

(declare-fun Unit!155656 () Unit!155652)

(assert (=> b!5583351 (= e!3444980 Unit!155656)))

(declare-fun b!5583352 () Bool)

(declare-fun tp!1544712 () Bool)

(declare-fun tp!1544708 () Bool)

(assert (=> b!5583352 (= e!3444969 (and tp!1544712 tp!1544708))))

(declare-fun tp!1544717 () Bool)

(declare-fun b!5583353 () Bool)

(declare-fun e!3444974 () Bool)

(assert (=> b!5583353 (= e!3444971 (and (inv!82168 (h!69329 zl!343)) e!3444974 tp!1544717))))

(declare-fun b!5583354 () Bool)

(declare-fun Unit!155657 () Unit!155652)

(assert (=> b!5583354 (= e!3444968 Unit!155657)))

(declare-fun lt!2254054 () Unit!155652)

(assert (=> b!5583354 (= lt!2254054 (lemmaZipperConcatMatchesSameAsBothZippers!593 lt!2254063 lt!2254070 (t!376277 s!2326)))))

(declare-fun res!2369342 () Bool)

(assert (=> b!5583354 (= res!2369342 (matchZipper!1706 lt!2254063 (t!376277 s!2326)))))

(assert (=> b!5583354 (=> res!2369342 e!3444981)))

(assert (=> b!5583354 (= (matchZipper!1706 (set.union lt!2254063 lt!2254070) (t!376277 s!2326)) e!3444981)))

(declare-fun b!5583355 () Bool)

(declare-fun tp!1544714 () Bool)

(assert (=> b!5583355 (= e!3444979 tp!1544714)))

(declare-fun b!5583356 () Bool)

(declare-fun res!2369338 () Bool)

(assert (=> b!5583356 (=> res!2369338 e!3444975)))

(declare-fun generalisedConcat!1183 (List!63003) Regex!15568)

(assert (=> b!5583356 (= res!2369338 (not (= r!7292 (generalisedConcat!1183 (exprs!5452 (h!69329 zl!343))))))))

(assert (=> b!5583357 (= e!3444984 e!3444976)))

(declare-fun res!2369343 () Bool)

(assert (=> b!5583357 (=> res!2369343 e!3444976)))

(assert (=> b!5583357 (= res!2369343 (or (and (is-ElementMatch!15568 (regOne!31648 r!7292)) (= (c!977850 (regOne!31648 r!7292)) (h!69328 s!2326))) (not (is-Union!15568 (regOne!31648 r!7292)))))))

(declare-fun lt!2254069 () Unit!155652)

(assert (=> b!5583357 (= lt!2254069 e!3444968)))

(declare-fun c!977848 () Bool)

(assert (=> b!5583357 (= c!977848 (nullable!5600 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> b!5583357 (= (flatMap!1181 z!1189 lambda!299491) (derivationStepZipperUp!836 (h!69329 zl!343) (h!69328 s!2326)))))

(declare-fun lt!2254044 () Unit!155652)

(assert (=> b!5583357 (= lt!2254044 (lemmaFlatMapOnSingletonSet!713 z!1189 (h!69329 zl!343) lambda!299491))))

(assert (=> b!5583357 (= lt!2254070 (derivationStepZipperUp!836 lt!2254067 (h!69328 s!2326)))))

(assert (=> b!5583357 (= lt!2254063 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (h!69329 zl!343))) lt!2254067 (h!69328 s!2326)))))

(assert (=> b!5583357 (= lt!2254067 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun lt!2254071 () (Set Context!9904))

(assert (=> b!5583357 (= lt!2254071 (derivationStepZipperUp!836 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))) (h!69328 s!2326)))))

(declare-fun b!5583358 () Bool)

(assert (=> b!5583358 (= e!3444966 e!3444967)))

(declare-fun res!2369344 () Bool)

(assert (=> b!5583358 (=> res!2369344 e!3444967)))

(assert (=> b!5583358 (= res!2369344 e!3444977)))

(declare-fun res!2369340 () Bool)

(assert (=> b!5583358 (=> (not res!2369340) (not e!3444977))))

(assert (=> b!5583358 (= res!2369340 (not (= (matchZipper!1706 lt!2254063 (t!376277 s!2326)) lt!2254059)))))

(assert (=> b!5583358 (= (matchZipper!1706 lt!2254043 (t!376277 s!2326)) e!3444983)))

(declare-fun res!2369337 () Bool)

(assert (=> b!5583358 (=> res!2369337 e!3444983)))

(assert (=> b!5583358 (= res!2369337 lt!2254059)))

(assert (=> b!5583358 (= lt!2254059 (matchZipper!1706 lt!2254046 (t!376277 s!2326)))))

(declare-fun lt!2254045 () Unit!155652)

(assert (=> b!5583358 (= lt!2254045 (lemmaZipperConcatMatchesSameAsBothZippers!593 lt!2254046 lt!2254068 (t!376277 s!2326)))))

(declare-fun b!5583359 () Bool)

(assert (=> b!5583359 (= e!3444969 tp_is_empty!40389)))

(declare-fun b!5583360 () Bool)

(declare-fun tp!1544709 () Bool)

(assert (=> b!5583360 (= e!3444974 tp!1544709)))

(assert (= (and start!579980 res!2369330) b!5583338))

(assert (= (and b!5583338 res!2369335) b!5583350))

(assert (= (and b!5583350 res!2369341) b!5583340))

(assert (= (and b!5583340 (not res!2369346)) b!5583347))

(assert (= (and b!5583347 (not res!2369329)) b!5583356))

(assert (= (and b!5583356 (not res!2369338)) b!5583336))

(assert (= (and b!5583336 (not res!2369334)) b!5583337))

(assert (= (and b!5583337 (not res!2369332)) b!5583342))

(assert (= (and b!5583342 (not res!2369348)) b!5583348))

(assert (= (and b!5583348 (not res!2369345)) b!5583341))

(assert (= (and b!5583341 (not res!2369339)) b!5583357))

(assert (= (and b!5583357 c!977848) b!5583354))

(assert (= (and b!5583357 (not c!977848)) b!5583343))

(assert (= (and b!5583354 (not res!2369342)) b!5583332))

(assert (= (and b!5583357 (not res!2369343)) b!5583334))

(assert (= (and b!5583334 (not res!2369347)) b!5583358))

(assert (= (and b!5583358 (not res!2369337)) b!5583335))

(assert (= (and b!5583358 res!2369340) b!5583330))

(assert (= (and b!5583358 (not res!2369344)) b!5583331))

(assert (= (and b!5583331 c!977849) b!5583329))

(assert (= (and b!5583331 (not c!977849)) b!5583351))

(assert (= (and b!5583329 (not res!2369336)) b!5583345))

(assert (= (and b!5583331 (not res!2369333)) b!5583344))

(assert (= (and b!5583344 (not res!2369331)) b!5583346))

(assert (= (and start!579980 (is-ElementMatch!15568 r!7292)) b!5583359))

(assert (= (and start!579980 (is-Concat!24413 r!7292)) b!5583352))

(assert (= (and start!579980 (is-Star!15568 r!7292)) b!5583333))

(assert (= (and start!579980 (is-Union!15568 r!7292)) b!5583339))

(assert (= (and start!579980 condSetEmpty!37174) setIsEmpty!37174))

(assert (= (and start!579980 (not condSetEmpty!37174)) setNonEmpty!37174))

(assert (= setNonEmpty!37174 b!5583355))

(assert (= b!5583353 b!5583360))

(assert (= (and start!579980 (is-Cons!62881 zl!343)) b!5583353))

(assert (= (and start!579980 (is-Cons!62880 s!2326)) b!5583349))

(declare-fun m!6564710 () Bool)

(assert (=> b!5583353 m!6564710))

(declare-fun m!6564712 () Bool)

(assert (=> b!5583330 m!6564712))

(declare-fun m!6564714 () Bool)

(assert (=> b!5583340 m!6564714))

(declare-fun m!6564716 () Bool)

(assert (=> b!5583340 m!6564716))

(declare-fun m!6564718 () Bool)

(assert (=> b!5583340 m!6564718))

(declare-fun m!6564720 () Bool)

(assert (=> b!5583334 m!6564720))

(declare-fun m!6564722 () Bool)

(assert (=> b!5583334 m!6564722))

(declare-fun m!6564724 () Bool)

(assert (=> b!5583332 m!6564724))

(declare-fun m!6564726 () Bool)

(assert (=> b!5583348 m!6564726))

(declare-fun m!6564728 () Bool)

(assert (=> b!5583348 m!6564728))

(declare-fun m!6564730 () Bool)

(assert (=> b!5583348 m!6564730))

(declare-fun m!6564732 () Bool)

(assert (=> b!5583348 m!6564732))

(declare-fun m!6564734 () Bool)

(assert (=> b!5583348 m!6564734))

(assert (=> b!5583348 m!6564730))

(assert (=> b!5583348 m!6564726))

(declare-fun m!6564736 () Bool)

(assert (=> b!5583348 m!6564736))

(declare-fun m!6564738 () Bool)

(assert (=> start!579980 m!6564738))

(declare-fun m!6564740 () Bool)

(assert (=> b!5583337 m!6564740))

(assert (=> b!5583337 m!6564740))

(declare-fun m!6564742 () Bool)

(assert (=> b!5583337 m!6564742))

(declare-fun m!6564744 () Bool)

(assert (=> b!5583329 m!6564744))

(declare-fun m!6564746 () Bool)

(assert (=> b!5583329 m!6564746))

(declare-fun m!6564748 () Bool)

(assert (=> b!5583341 m!6564748))

(declare-fun m!6564750 () Bool)

(assert (=> b!5583331 m!6564750))

(declare-fun m!6564752 () Bool)

(assert (=> b!5583331 m!6564752))

(declare-fun m!6564754 () Bool)

(assert (=> b!5583331 m!6564754))

(declare-fun m!6564756 () Bool)

(assert (=> b!5583331 m!6564756))

(declare-fun m!6564758 () Bool)

(assert (=> b!5583331 m!6564758))

(declare-fun m!6564760 () Bool)

(assert (=> b!5583331 m!6564760))

(declare-fun m!6564762 () Bool)

(assert (=> b!5583331 m!6564762))

(declare-fun m!6564764 () Bool)

(assert (=> b!5583331 m!6564764))

(declare-fun m!6564766 () Bool)

(assert (=> b!5583331 m!6564766))

(declare-fun m!6564768 () Bool)

(assert (=> b!5583331 m!6564768))

(declare-fun m!6564770 () Bool)

(assert (=> b!5583331 m!6564770))

(assert (=> b!5583345 m!6564724))

(declare-fun m!6564772 () Bool)

(assert (=> b!5583347 m!6564772))

(assert (=> b!5583335 m!6564712))

(declare-fun m!6564774 () Bool)

(assert (=> b!5583356 m!6564774))

(declare-fun m!6564776 () Bool)

(assert (=> b!5583350 m!6564776))

(declare-fun m!6564778 () Bool)

(assert (=> b!5583346 m!6564778))

(declare-fun m!6564780 () Bool)

(assert (=> b!5583346 m!6564780))

(declare-fun m!6564782 () Bool)

(assert (=> b!5583357 m!6564782))

(declare-fun m!6564784 () Bool)

(assert (=> b!5583357 m!6564784))

(declare-fun m!6564786 () Bool)

(assert (=> b!5583357 m!6564786))

(declare-fun m!6564788 () Bool)

(assert (=> b!5583357 m!6564788))

(declare-fun m!6564790 () Bool)

(assert (=> b!5583357 m!6564790))

(declare-fun m!6564792 () Bool)

(assert (=> b!5583357 m!6564792))

(declare-fun m!6564794 () Bool)

(assert (=> b!5583357 m!6564794))

(declare-fun m!6564796 () Bool)

(assert (=> b!5583354 m!6564796))

(declare-fun m!6564798 () Bool)

(assert (=> b!5583354 m!6564798))

(declare-fun m!6564800 () Bool)

(assert (=> b!5583354 m!6564800))

(declare-fun m!6564802 () Bool)

(assert (=> setNonEmpty!37174 m!6564802))

(declare-fun m!6564804 () Bool)

(assert (=> b!5583338 m!6564804))

(assert (=> b!5583358 m!6564798))

(declare-fun m!6564806 () Bool)

(assert (=> b!5583358 m!6564806))

(declare-fun m!6564808 () Bool)

(assert (=> b!5583358 m!6564808))

(declare-fun m!6564810 () Bool)

(assert (=> b!5583358 m!6564810))

(push 1)

(assert (not b!5583347))

(assert (not b!5583360))

(assert (not b!5583346))

(assert (not b!5583339))

(assert (not start!579980))

(assert (not b!5583332))

(assert (not b!5583337))

(assert (not b!5583333))

(assert (not b!5583345))

(assert (not b!5583331))

(assert (not b!5583335))

(assert (not b!5583355))

(assert (not b!5583341))

(assert (not b!5583354))

(assert (not setNonEmpty!37174))

(assert (not b!5583329))

(assert (not b!5583352))

(assert (not b!5583350))

(assert (not b!5583349))

(assert (not b!5583348))

(assert (not b!5583334))

(assert tp_is_empty!40389)

(assert (not b!5583356))

(assert (not b!5583330))

(assert (not b!5583357))

(assert (not b!5583338))

(assert (not b!5583353))

(assert (not b!5583358))

(assert (not b!5583340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1764850 () Bool)

(declare-fun c!977867 () Bool)

(declare-fun isEmpty!34696 (List!63004) Bool)

(assert (=> d!1764850 (= c!977867 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445050 () Bool)

(assert (=> d!1764850 (= (matchZipper!1706 lt!2254070 (t!376277 s!2326)) e!3445050)))

(declare-fun b!5583485 () Bool)

(declare-fun nullableZipper!1565 ((Set Context!9904)) Bool)

(assert (=> b!5583485 (= e!3445050 (nullableZipper!1565 lt!2254070))))

(declare-fun b!5583486 () Bool)

(declare-fun head!11909 (List!63004) C!31406)

(declare-fun tail!11004 (List!63004) List!63004)

(assert (=> b!5583486 (= e!3445050 (matchZipper!1706 (derivationStepZipper!1667 lt!2254070 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764850 c!977867) b!5583485))

(assert (= (and d!1764850 (not c!977867)) b!5583486))

(declare-fun m!6564914 () Bool)

(assert (=> d!1764850 m!6564914))

(declare-fun m!6564916 () Bool)

(assert (=> b!5583485 m!6564916))

(declare-fun m!6564918 () Bool)

(assert (=> b!5583486 m!6564918))

(assert (=> b!5583486 m!6564918))

(declare-fun m!6564920 () Bool)

(assert (=> b!5583486 m!6564920))

(declare-fun m!6564922 () Bool)

(assert (=> b!5583486 m!6564922))

(assert (=> b!5583486 m!6564920))

(assert (=> b!5583486 m!6564922))

(declare-fun m!6564924 () Bool)

(assert (=> b!5583486 m!6564924))

(assert (=> b!5583332 d!1764850))

(declare-fun d!1764852 () Bool)

(declare-fun lambda!299509 () Int)

(declare-fun forall!14736 (List!63003 Int) Bool)

(assert (=> d!1764852 (= (inv!82168 (h!69329 zl!343)) (forall!14736 (exprs!5452 (h!69329 zl!343)) lambda!299509))))

(declare-fun bs!1291398 () Bool)

(assert (= bs!1291398 d!1764852))

(declare-fun m!6564926 () Bool)

(assert (=> bs!1291398 m!6564926))

(assert (=> b!5583353 d!1764852))

(declare-fun b!5583509 () Bool)

(declare-fun e!3445066 () (Set Context!9904))

(declare-fun call!417719 () (Set Context!9904))

(assert (=> b!5583509 (= e!3445066 call!417719)))

(declare-fun bm!417712 () Bool)

(declare-fun call!417720 () List!63003)

(declare-fun call!417722 () List!63003)

(assert (=> bm!417712 (= call!417720 call!417722)))

(declare-fun b!5583510 () Bool)

(declare-fun e!3445064 () (Set Context!9904))

(assert (=> b!5583510 (= e!3445064 (as set.empty (Set Context!9904)))))

(declare-fun b!5583511 () Bool)

(declare-fun e!3445063 () (Set Context!9904))

(declare-fun call!417718 () (Set Context!9904))

(declare-fun call!417717 () (Set Context!9904))

(assert (=> b!5583511 (= e!3445063 (set.union call!417718 call!417717))))

(declare-fun bm!417713 () Bool)

(declare-fun call!417721 () (Set Context!9904))

(assert (=> bm!417713 (= call!417717 call!417721)))

(declare-fun bm!417714 () Bool)

(assert (=> bm!417714 (= call!417719 call!417717)))

(declare-fun b!5583512 () Bool)

(declare-fun c!977879 () Bool)

(declare-fun e!3445065 () Bool)

(assert (=> b!5583512 (= c!977879 e!3445065)))

(declare-fun res!2369423 () Bool)

(assert (=> b!5583512 (=> (not res!2369423) (not e!3445065))))

(assert (=> b!5583512 (= res!2369423 (is-Concat!24413 (regTwo!31649 (regOne!31648 r!7292))))))

(declare-fun e!3445067 () (Set Context!9904))

(assert (=> b!5583512 (= e!3445067 e!3445063)))

(declare-fun b!5583513 () Bool)

(declare-fun e!3445068 () (Set Context!9904))

(assert (=> b!5583513 (= e!3445068 e!3445067)))

(declare-fun c!977880 () Bool)

(assert (=> b!5583513 (= c!977880 (is-Union!15568 (regTwo!31649 (regOne!31648 r!7292))))))

(declare-fun b!5583515 () Bool)

(declare-fun c!977881 () Bool)

(assert (=> b!5583515 (= c!977881 (is-Star!15568 (regTwo!31649 (regOne!31648 r!7292))))))

(assert (=> b!5583515 (= e!3445066 e!3445064)))

(declare-fun bm!417715 () Bool)

(assert (=> bm!417715 (= call!417718 (derivationStepZipperDown!910 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))) (ite c!977880 lt!2254067 (Context!9905 call!417722)) (h!69328 s!2326)))))

(declare-fun b!5583516 () Bool)

(assert (=> b!5583516 (= e!3445063 e!3445066)))

(declare-fun c!977878 () Bool)

(assert (=> b!5583516 (= c!977878 (is-Concat!24413 (regTwo!31649 (regOne!31648 r!7292))))))

(declare-fun b!5583517 () Bool)

(assert (=> b!5583517 (= e!3445067 (set.union call!417721 call!417718))))

(declare-fun b!5583518 () Bool)

(assert (=> b!5583518 (= e!3445064 call!417719)))

(declare-fun b!5583519 () Bool)

(assert (=> b!5583519 (= e!3445065 (nullable!5600 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))))))

(declare-fun b!5583514 () Bool)

(assert (=> b!5583514 (= e!3445068 (set.insert lt!2254067 (as set.empty (Set Context!9904))))))

(declare-fun d!1764854 () Bool)

(declare-fun c!977882 () Bool)

(assert (=> d!1764854 (= c!977882 (and (is-ElementMatch!15568 (regTwo!31649 (regOne!31648 r!7292))) (= (c!977850 (regTwo!31649 (regOne!31648 r!7292))) (h!69328 s!2326))))))

(assert (=> d!1764854 (= (derivationStepZipperDown!910 (regTwo!31649 (regOne!31648 r!7292)) lt!2254067 (h!69328 s!2326)) e!3445068)))

(declare-fun bm!417716 () Bool)

(declare-fun $colon$colon!1633 (List!63003 Regex!15568) List!63003)

(assert (=> bm!417716 (= call!417722 ($colon$colon!1633 (exprs!5452 lt!2254067) (ite (or c!977879 c!977878) (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (regTwo!31649 (regOne!31648 r!7292)))))))

(declare-fun bm!417717 () Bool)

(assert (=> bm!417717 (= call!417721 (derivationStepZipperDown!910 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292)))))) (ite (or c!977880 c!977879) lt!2254067 (Context!9905 call!417720)) (h!69328 s!2326)))))

(assert (= (and d!1764854 c!977882) b!5583514))

(assert (= (and d!1764854 (not c!977882)) b!5583513))

(assert (= (and b!5583513 c!977880) b!5583517))

(assert (= (and b!5583513 (not c!977880)) b!5583512))

(assert (= (and b!5583512 res!2369423) b!5583519))

(assert (= (and b!5583512 c!977879) b!5583511))

(assert (= (and b!5583512 (not c!977879)) b!5583516))

(assert (= (and b!5583516 c!977878) b!5583509))

(assert (= (and b!5583516 (not c!977878)) b!5583515))

(assert (= (and b!5583515 c!977881) b!5583518))

(assert (= (and b!5583515 (not c!977881)) b!5583510))

(assert (= (or b!5583509 b!5583518) bm!417712))

(assert (= (or b!5583509 b!5583518) bm!417714))

(assert (= (or b!5583511 bm!417712) bm!417716))

(assert (= (or b!5583511 bm!417714) bm!417713))

(assert (= (or b!5583517 b!5583511) bm!417715))

(assert (= (or b!5583517 bm!417713) bm!417717))

(declare-fun m!6564928 () Bool)

(assert (=> b!5583519 m!6564928))

(declare-fun m!6564930 () Bool)

(assert (=> bm!417717 m!6564930))

(declare-fun m!6564932 () Bool)

(assert (=> bm!417715 m!6564932))

(declare-fun m!6564934 () Bool)

(assert (=> b!5583514 m!6564934))

(declare-fun m!6564936 () Bool)

(assert (=> bm!417716 m!6564936))

(assert (=> b!5583334 d!1764854))

(declare-fun b!5583520 () Bool)

(declare-fun e!3445072 () (Set Context!9904))

(declare-fun call!417725 () (Set Context!9904))

(assert (=> b!5583520 (= e!3445072 call!417725)))

(declare-fun bm!417718 () Bool)

(declare-fun call!417726 () List!63003)

(declare-fun call!417728 () List!63003)

(assert (=> bm!417718 (= call!417726 call!417728)))

(declare-fun b!5583521 () Bool)

(declare-fun e!3445070 () (Set Context!9904))

(assert (=> b!5583521 (= e!3445070 (as set.empty (Set Context!9904)))))

(declare-fun b!5583522 () Bool)

(declare-fun e!3445069 () (Set Context!9904))

(declare-fun call!417724 () (Set Context!9904))

(declare-fun call!417723 () (Set Context!9904))

(assert (=> b!5583522 (= e!3445069 (set.union call!417724 call!417723))))

(declare-fun bm!417719 () Bool)

(declare-fun call!417727 () (Set Context!9904))

(assert (=> bm!417719 (= call!417723 call!417727)))

(declare-fun bm!417720 () Bool)

(assert (=> bm!417720 (= call!417725 call!417723)))

(declare-fun b!5583523 () Bool)

(declare-fun c!977884 () Bool)

(declare-fun e!3445071 () Bool)

(assert (=> b!5583523 (= c!977884 e!3445071)))

(declare-fun res!2369424 () Bool)

(assert (=> b!5583523 (=> (not res!2369424) (not e!3445071))))

(assert (=> b!5583523 (= res!2369424 (is-Concat!24413 (regOne!31649 (regOne!31648 r!7292))))))

(declare-fun e!3445073 () (Set Context!9904))

(assert (=> b!5583523 (= e!3445073 e!3445069)))

(declare-fun b!5583524 () Bool)

(declare-fun e!3445074 () (Set Context!9904))

(assert (=> b!5583524 (= e!3445074 e!3445073)))

(declare-fun c!977885 () Bool)

(assert (=> b!5583524 (= c!977885 (is-Union!15568 (regOne!31649 (regOne!31648 r!7292))))))

(declare-fun b!5583526 () Bool)

(declare-fun c!977886 () Bool)

(assert (=> b!5583526 (= c!977886 (is-Star!15568 (regOne!31649 (regOne!31648 r!7292))))))

(assert (=> b!5583526 (= e!3445072 e!3445070)))

(declare-fun bm!417721 () Bool)

(assert (=> bm!417721 (= call!417724 (derivationStepZipperDown!910 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))) (ite c!977885 lt!2254067 (Context!9905 call!417728)) (h!69328 s!2326)))))

(declare-fun b!5583527 () Bool)

(assert (=> b!5583527 (= e!3445069 e!3445072)))

(declare-fun c!977883 () Bool)

(assert (=> b!5583527 (= c!977883 (is-Concat!24413 (regOne!31649 (regOne!31648 r!7292))))))

(declare-fun b!5583528 () Bool)

(assert (=> b!5583528 (= e!3445073 (set.union call!417727 call!417724))))

(declare-fun b!5583529 () Bool)

(assert (=> b!5583529 (= e!3445070 call!417725)))

(declare-fun b!5583530 () Bool)

(assert (=> b!5583530 (= e!3445071 (nullable!5600 (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))))))

(declare-fun b!5583525 () Bool)

(assert (=> b!5583525 (= e!3445074 (set.insert lt!2254067 (as set.empty (Set Context!9904))))))

(declare-fun d!1764856 () Bool)

(declare-fun c!977887 () Bool)

(assert (=> d!1764856 (= c!977887 (and (is-ElementMatch!15568 (regOne!31649 (regOne!31648 r!7292))) (= (c!977850 (regOne!31649 (regOne!31648 r!7292))) (h!69328 s!2326))))))

(assert (=> d!1764856 (= (derivationStepZipperDown!910 (regOne!31649 (regOne!31648 r!7292)) lt!2254067 (h!69328 s!2326)) e!3445074)))

(declare-fun bm!417722 () Bool)

(assert (=> bm!417722 (= call!417728 ($colon$colon!1633 (exprs!5452 lt!2254067) (ite (or c!977884 c!977883) (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (regOne!31649 (regOne!31648 r!7292)))))))

(declare-fun bm!417723 () Bool)

(assert (=> bm!417723 (= call!417727 (derivationStepZipperDown!910 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292)))))) (ite (or c!977885 c!977884) lt!2254067 (Context!9905 call!417726)) (h!69328 s!2326)))))

(assert (= (and d!1764856 c!977887) b!5583525))

(assert (= (and d!1764856 (not c!977887)) b!5583524))

(assert (= (and b!5583524 c!977885) b!5583528))

(assert (= (and b!5583524 (not c!977885)) b!5583523))

(assert (= (and b!5583523 res!2369424) b!5583530))

(assert (= (and b!5583523 c!977884) b!5583522))

(assert (= (and b!5583523 (not c!977884)) b!5583527))

(assert (= (and b!5583527 c!977883) b!5583520))

(assert (= (and b!5583527 (not c!977883)) b!5583526))

(assert (= (and b!5583526 c!977886) b!5583529))

(assert (= (and b!5583526 (not c!977886)) b!5583521))

(assert (= (or b!5583520 b!5583529) bm!417718))

(assert (= (or b!5583520 b!5583529) bm!417720))

(assert (= (or b!5583522 bm!417718) bm!417722))

(assert (= (or b!5583522 bm!417720) bm!417719))

(assert (= (or b!5583528 b!5583522) bm!417721))

(assert (= (or b!5583528 bm!417719) bm!417723))

(declare-fun m!6564938 () Bool)

(assert (=> b!5583530 m!6564938))

(declare-fun m!6564940 () Bool)

(assert (=> bm!417723 m!6564940))

(declare-fun m!6564942 () Bool)

(assert (=> bm!417721 m!6564942))

(assert (=> b!5583525 m!6564934))

(declare-fun m!6564944 () Bool)

(assert (=> bm!417722 m!6564944))

(assert (=> b!5583334 d!1764856))

(declare-fun e!3445077 () Bool)

(declare-fun d!1764858 () Bool)

(assert (=> d!1764858 (= (matchZipper!1706 (set.union lt!2254063 lt!2254070) (t!376277 s!2326)) e!3445077)))

(declare-fun res!2369427 () Bool)

(assert (=> d!1764858 (=> res!2369427 e!3445077)))

(assert (=> d!1764858 (= res!2369427 (matchZipper!1706 lt!2254063 (t!376277 s!2326)))))

(declare-fun lt!2254161 () Unit!155652)

(declare-fun choose!42323 ((Set Context!9904) (Set Context!9904) List!63004) Unit!155652)

(assert (=> d!1764858 (= lt!2254161 (choose!42323 lt!2254063 lt!2254070 (t!376277 s!2326)))))

(assert (=> d!1764858 (= (lemmaZipperConcatMatchesSameAsBothZippers!593 lt!2254063 lt!2254070 (t!376277 s!2326)) lt!2254161)))

(declare-fun b!5583533 () Bool)

(assert (=> b!5583533 (= e!3445077 (matchZipper!1706 lt!2254070 (t!376277 s!2326)))))

(assert (= (and d!1764858 (not res!2369427)) b!5583533))

(assert (=> d!1764858 m!6564800))

(assert (=> d!1764858 m!6564798))

(declare-fun m!6564946 () Bool)

(assert (=> d!1764858 m!6564946))

(assert (=> b!5583533 m!6564724))

(assert (=> b!5583354 d!1764858))

(declare-fun d!1764860 () Bool)

(declare-fun c!977888 () Bool)

(assert (=> d!1764860 (= c!977888 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445078 () Bool)

(assert (=> d!1764860 (= (matchZipper!1706 lt!2254063 (t!376277 s!2326)) e!3445078)))

(declare-fun b!5583534 () Bool)

(assert (=> b!5583534 (= e!3445078 (nullableZipper!1565 lt!2254063))))

(declare-fun b!5583535 () Bool)

(assert (=> b!5583535 (= e!3445078 (matchZipper!1706 (derivationStepZipper!1667 lt!2254063 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764860 c!977888) b!5583534))

(assert (= (and d!1764860 (not c!977888)) b!5583535))

(assert (=> d!1764860 m!6564914))

(declare-fun m!6564948 () Bool)

(assert (=> b!5583534 m!6564948))

(assert (=> b!5583535 m!6564918))

(assert (=> b!5583535 m!6564918))

(declare-fun m!6564950 () Bool)

(assert (=> b!5583535 m!6564950))

(assert (=> b!5583535 m!6564922))

(assert (=> b!5583535 m!6564950))

(assert (=> b!5583535 m!6564922))

(declare-fun m!6564952 () Bool)

(assert (=> b!5583535 m!6564952))

(assert (=> b!5583354 d!1764860))

(declare-fun d!1764862 () Bool)

(declare-fun c!977889 () Bool)

(assert (=> d!1764862 (= c!977889 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445079 () Bool)

(assert (=> d!1764862 (= (matchZipper!1706 (set.union lt!2254063 lt!2254070) (t!376277 s!2326)) e!3445079)))

(declare-fun b!5583536 () Bool)

(assert (=> b!5583536 (= e!3445079 (nullableZipper!1565 (set.union lt!2254063 lt!2254070)))))

(declare-fun b!5583537 () Bool)

(assert (=> b!5583537 (= e!3445079 (matchZipper!1706 (derivationStepZipper!1667 (set.union lt!2254063 lt!2254070) (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764862 c!977889) b!5583536))

(assert (= (and d!1764862 (not c!977889)) b!5583537))

(assert (=> d!1764862 m!6564914))

(declare-fun m!6564954 () Bool)

(assert (=> b!5583536 m!6564954))

(assert (=> b!5583537 m!6564918))

(assert (=> b!5583537 m!6564918))

(declare-fun m!6564956 () Bool)

(assert (=> b!5583537 m!6564956))

(assert (=> b!5583537 m!6564922))

(assert (=> b!5583537 m!6564956))

(assert (=> b!5583537 m!6564922))

(declare-fun m!6564958 () Bool)

(assert (=> b!5583537 m!6564958))

(assert (=> b!5583354 d!1764862))

(declare-fun d!1764864 () Bool)

(declare-fun c!977890 () Bool)

(assert (=> d!1764864 (= c!977890 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445080 () Bool)

(assert (=> d!1764864 (= (matchZipper!1706 lt!2254068 (t!376277 s!2326)) e!3445080)))

(declare-fun b!5583538 () Bool)

(assert (=> b!5583538 (= e!3445080 (nullableZipper!1565 lt!2254068))))

(declare-fun b!5583539 () Bool)

(assert (=> b!5583539 (= e!3445080 (matchZipper!1706 (derivationStepZipper!1667 lt!2254068 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764864 c!977890) b!5583538))

(assert (= (and d!1764864 (not c!977890)) b!5583539))

(assert (=> d!1764864 m!6564914))

(declare-fun m!6564960 () Bool)

(assert (=> b!5583538 m!6564960))

(assert (=> b!5583539 m!6564918))

(assert (=> b!5583539 m!6564918))

(declare-fun m!6564962 () Bool)

(assert (=> b!5583539 m!6564962))

(assert (=> b!5583539 m!6564922))

(assert (=> b!5583539 m!6564962))

(assert (=> b!5583539 m!6564922))

(declare-fun m!6564964 () Bool)

(assert (=> b!5583539 m!6564964))

(assert (=> b!5583335 d!1764864))

(declare-fun b!5583558 () Bool)

(declare-fun e!3445096 () Bool)

(declare-fun call!417736 () Bool)

(assert (=> b!5583558 (= e!3445096 call!417736)))

(declare-fun bm!417730 () Bool)

(declare-fun call!417735 () Bool)

(assert (=> bm!417730 (= call!417736 call!417735)))

(declare-fun b!5583559 () Bool)

(declare-fun e!3445098 () Bool)

(assert (=> b!5583559 (= e!3445098 call!417735)))

(declare-fun b!5583560 () Bool)

(declare-fun e!3445097 () Bool)

(declare-fun e!3445100 () Bool)

(assert (=> b!5583560 (= e!3445097 e!3445100)))

(declare-fun res!2369441 () Bool)

(assert (=> b!5583560 (=> (not res!2369441) (not e!3445100))))

(declare-fun call!417737 () Bool)

(assert (=> b!5583560 (= res!2369441 call!417737)))

(declare-fun b!5583561 () Bool)

(declare-fun e!3445101 () Bool)

(declare-fun e!3445095 () Bool)

(assert (=> b!5583561 (= e!3445101 e!3445095)))

(declare-fun c!977895 () Bool)

(assert (=> b!5583561 (= c!977895 (is-Star!15568 r!7292))))

(declare-fun b!5583562 () Bool)

(declare-fun res!2369438 () Bool)

(assert (=> b!5583562 (=> (not res!2369438) (not e!3445096))))

(assert (=> b!5583562 (= res!2369438 call!417737)))

(declare-fun e!3445099 () Bool)

(assert (=> b!5583562 (= e!3445099 e!3445096)))

(declare-fun d!1764866 () Bool)

(declare-fun res!2369442 () Bool)

(assert (=> d!1764866 (=> res!2369442 e!3445101)))

(assert (=> d!1764866 (= res!2369442 (is-ElementMatch!15568 r!7292))))

(assert (=> d!1764866 (= (validRegex!7304 r!7292) e!3445101)))

(declare-fun bm!417731 () Bool)

(declare-fun c!977896 () Bool)

(assert (=> bm!417731 (= call!417737 (validRegex!7304 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))))))

(declare-fun bm!417732 () Bool)

(assert (=> bm!417732 (= call!417735 (validRegex!7304 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))))))

(declare-fun b!5583563 () Bool)

(declare-fun res!2369440 () Bool)

(assert (=> b!5583563 (=> res!2369440 e!3445097)))

(assert (=> b!5583563 (= res!2369440 (not (is-Concat!24413 r!7292)))))

(assert (=> b!5583563 (= e!3445099 e!3445097)))

(declare-fun b!5583564 () Bool)

(assert (=> b!5583564 (= e!3445095 e!3445098)))

(declare-fun res!2369439 () Bool)

(assert (=> b!5583564 (= res!2369439 (not (nullable!5600 (reg!15897 r!7292))))))

(assert (=> b!5583564 (=> (not res!2369439) (not e!3445098))))

(declare-fun b!5583565 () Bool)

(assert (=> b!5583565 (= e!3445095 e!3445099)))

(assert (=> b!5583565 (= c!977896 (is-Union!15568 r!7292))))

(declare-fun b!5583566 () Bool)

(assert (=> b!5583566 (= e!3445100 call!417736)))

(assert (= (and d!1764866 (not res!2369442)) b!5583561))

(assert (= (and b!5583561 c!977895) b!5583564))

(assert (= (and b!5583561 (not c!977895)) b!5583565))

(assert (= (and b!5583564 res!2369439) b!5583559))

(assert (= (and b!5583565 c!977896) b!5583562))

(assert (= (and b!5583565 (not c!977896)) b!5583563))

(assert (= (and b!5583562 res!2369438) b!5583558))

(assert (= (and b!5583563 (not res!2369440)) b!5583560))

(assert (= (and b!5583560 res!2369441) b!5583566))

(assert (= (or b!5583558 b!5583566) bm!417730))

(assert (= (or b!5583562 b!5583560) bm!417731))

(assert (= (or b!5583559 bm!417730) bm!417732))

(declare-fun m!6564966 () Bool)

(assert (=> bm!417731 m!6564966))

(declare-fun m!6564968 () Bool)

(assert (=> bm!417732 m!6564968))

(declare-fun m!6564970 () Bool)

(assert (=> b!5583564 m!6564970))

(assert (=> start!579980 d!1764866))

(assert (=> b!5583345 d!1764850))

(declare-fun bs!1291399 () Bool)

(declare-fun d!1764868 () Bool)

(assert (= bs!1291399 (and d!1764868 d!1764852)))

(declare-fun lambda!299512 () Int)

(assert (=> bs!1291399 (= lambda!299512 lambda!299509)))

(declare-fun b!5583587 () Bool)

(declare-fun e!3445118 () Bool)

(declare-fun e!3445116 () Bool)

(assert (=> b!5583587 (= e!3445118 e!3445116)))

(declare-fun c!977908 () Bool)

(declare-fun tail!11005 (List!63003) List!63003)

(assert (=> b!5583587 (= c!977908 (isEmpty!34692 (tail!11005 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5583588 () Bool)

(declare-fun e!3445114 () Bool)

(assert (=> b!5583588 (= e!3445114 e!3445118)))

(declare-fun c!977905 () Bool)

(assert (=> b!5583588 (= c!977905 (isEmpty!34692 (exprs!5452 (h!69329 zl!343))))))

(declare-fun b!5583589 () Bool)

(declare-fun e!3445115 () Bool)

(assert (=> b!5583589 (= e!3445115 (isEmpty!34692 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> d!1764868 e!3445114))

(declare-fun res!2369447 () Bool)

(assert (=> d!1764868 (=> (not res!2369447) (not e!3445114))))

(declare-fun lt!2254164 () Regex!15568)

(assert (=> d!1764868 (= res!2369447 (validRegex!7304 lt!2254164))))

(declare-fun e!3445119 () Regex!15568)

(assert (=> d!1764868 (= lt!2254164 e!3445119)))

(declare-fun c!977907 () Bool)

(assert (=> d!1764868 (= c!977907 e!3445115)))

(declare-fun res!2369448 () Bool)

(assert (=> d!1764868 (=> (not res!2369448) (not e!3445115))))

(assert (=> d!1764868 (= res!2369448 (is-Cons!62879 (exprs!5452 (h!69329 zl!343))))))

(assert (=> d!1764868 (forall!14736 (exprs!5452 (h!69329 zl!343)) lambda!299512)))

(assert (=> d!1764868 (= (generalisedConcat!1183 (exprs!5452 (h!69329 zl!343))) lt!2254164)))

(declare-fun b!5583590 () Bool)

(assert (=> b!5583590 (= e!3445119 (h!69327 (exprs!5452 (h!69329 zl!343))))))

(declare-fun b!5583591 () Bool)

(declare-fun isEmptyExpr!1124 (Regex!15568) Bool)

(assert (=> b!5583591 (= e!3445118 (isEmptyExpr!1124 lt!2254164))))

(declare-fun b!5583592 () Bool)

(declare-fun e!3445117 () Regex!15568)

(assert (=> b!5583592 (= e!3445117 EmptyExpr!15568)))

(declare-fun b!5583593 () Bool)

(declare-fun isConcat!647 (Regex!15568) Bool)

(assert (=> b!5583593 (= e!3445116 (isConcat!647 lt!2254164))))

(declare-fun b!5583594 () Bool)

(assert (=> b!5583594 (= e!3445117 (Concat!24413 (h!69327 (exprs!5452 (h!69329 zl!343))) (generalisedConcat!1183 (t!376276 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun b!5583595 () Bool)

(assert (=> b!5583595 (= e!3445119 e!3445117)))

(declare-fun c!977906 () Bool)

(assert (=> b!5583595 (= c!977906 (is-Cons!62879 (exprs!5452 (h!69329 zl!343))))))

(declare-fun b!5583596 () Bool)

(declare-fun head!11910 (List!63003) Regex!15568)

(assert (=> b!5583596 (= e!3445116 (= lt!2254164 (head!11910 (exprs!5452 (h!69329 zl!343)))))))

(assert (= (and d!1764868 res!2369448) b!5583589))

(assert (= (and d!1764868 c!977907) b!5583590))

(assert (= (and d!1764868 (not c!977907)) b!5583595))

(assert (= (and b!5583595 c!977906) b!5583594))

(assert (= (and b!5583595 (not c!977906)) b!5583592))

(assert (= (and d!1764868 res!2369447) b!5583588))

(assert (= (and b!5583588 c!977905) b!5583591))

(assert (= (and b!5583588 (not c!977905)) b!5583587))

(assert (= (and b!5583587 c!977908) b!5583596))

(assert (= (and b!5583587 (not c!977908)) b!5583593))

(declare-fun m!6564972 () Bool)

(assert (=> b!5583596 m!6564972))

(declare-fun m!6564974 () Bool)

(assert (=> b!5583588 m!6564974))

(assert (=> b!5583589 m!6564748))

(declare-fun m!6564976 () Bool)

(assert (=> d!1764868 m!6564976))

(declare-fun m!6564978 () Bool)

(assert (=> d!1764868 m!6564978))

(declare-fun m!6564980 () Bool)

(assert (=> b!5583594 m!6564980))

(declare-fun m!6564982 () Bool)

(assert (=> b!5583593 m!6564982))

(declare-fun m!6564984 () Bool)

(assert (=> b!5583587 m!6564984))

(assert (=> b!5583587 m!6564984))

(declare-fun m!6564986 () Bool)

(assert (=> b!5583587 m!6564986))

(declare-fun m!6564988 () Bool)

(assert (=> b!5583591 m!6564988))

(assert (=> b!5583356 d!1764868))

(declare-fun bs!1291400 () Bool)

(declare-fun d!1764870 () Bool)

(assert (= bs!1291400 (and d!1764870 d!1764852)))

(declare-fun lambda!299515 () Int)

(assert (=> bs!1291400 (= lambda!299515 lambda!299509)))

(declare-fun bs!1291401 () Bool)

(assert (= bs!1291401 (and d!1764870 d!1764868)))

(assert (=> bs!1291401 (= lambda!299515 lambda!299512)))

(declare-fun b!5583617 () Bool)

(declare-fun e!3445132 () Bool)

(declare-fun e!3445135 () Bool)

(assert (=> b!5583617 (= e!3445132 e!3445135)))

(declare-fun c!977917 () Bool)

(assert (=> b!5583617 (= c!977917 (isEmpty!34692 (tail!11005 (unfocusZipperList!996 zl!343))))))

(declare-fun b!5583618 () Bool)

(declare-fun e!3445133 () Regex!15568)

(assert (=> b!5583618 (= e!3445133 EmptyLang!15568)))

(declare-fun b!5583619 () Bool)

(declare-fun e!3445134 () Regex!15568)

(assert (=> b!5583619 (= e!3445134 e!3445133)))

(declare-fun c!977918 () Bool)

(assert (=> b!5583619 (= c!977918 (is-Cons!62879 (unfocusZipperList!996 zl!343)))))

(declare-fun b!5583620 () Bool)

(declare-fun e!3445136 () Bool)

(assert (=> b!5583620 (= e!3445136 e!3445132)))

(declare-fun c!977920 () Bool)

(assert (=> b!5583620 (= c!977920 (isEmpty!34692 (unfocusZipperList!996 zl!343)))))

(declare-fun b!5583621 () Bool)

(assert (=> b!5583621 (= e!3445134 (h!69327 (unfocusZipperList!996 zl!343)))))

(declare-fun b!5583622 () Bool)

(declare-fun lt!2254167 () Regex!15568)

(assert (=> b!5583622 (= e!3445135 (= lt!2254167 (head!11910 (unfocusZipperList!996 zl!343))))))

(declare-fun b!5583623 () Bool)

(declare-fun isEmptyLang!1134 (Regex!15568) Bool)

(assert (=> b!5583623 (= e!3445132 (isEmptyLang!1134 lt!2254167))))

(declare-fun b!5583624 () Bool)

(assert (=> b!5583624 (= e!3445133 (Union!15568 (h!69327 (unfocusZipperList!996 zl!343)) (generalisedUnion!1431 (t!376276 (unfocusZipperList!996 zl!343)))))))

(assert (=> d!1764870 e!3445136))

(declare-fun res!2369454 () Bool)

(assert (=> d!1764870 (=> (not res!2369454) (not e!3445136))))

(assert (=> d!1764870 (= res!2369454 (validRegex!7304 lt!2254167))))

(assert (=> d!1764870 (= lt!2254167 e!3445134)))

(declare-fun c!977919 () Bool)

(declare-fun e!3445137 () Bool)

(assert (=> d!1764870 (= c!977919 e!3445137)))

(declare-fun res!2369453 () Bool)

(assert (=> d!1764870 (=> (not res!2369453) (not e!3445137))))

(assert (=> d!1764870 (= res!2369453 (is-Cons!62879 (unfocusZipperList!996 zl!343)))))

(assert (=> d!1764870 (forall!14736 (unfocusZipperList!996 zl!343) lambda!299515)))

(assert (=> d!1764870 (= (generalisedUnion!1431 (unfocusZipperList!996 zl!343)) lt!2254167)))

(declare-fun b!5583625 () Bool)

(declare-fun isUnion!564 (Regex!15568) Bool)

(assert (=> b!5583625 (= e!3445135 (isUnion!564 lt!2254167))))

(declare-fun b!5583626 () Bool)

(assert (=> b!5583626 (= e!3445137 (isEmpty!34692 (t!376276 (unfocusZipperList!996 zl!343))))))

(assert (= (and d!1764870 res!2369453) b!5583626))

(assert (= (and d!1764870 c!977919) b!5583621))

(assert (= (and d!1764870 (not c!977919)) b!5583619))

(assert (= (and b!5583619 c!977918) b!5583624))

(assert (= (and b!5583619 (not c!977918)) b!5583618))

(assert (= (and d!1764870 res!2369454) b!5583620))

(assert (= (and b!5583620 c!977920) b!5583623))

(assert (= (and b!5583620 (not c!977920)) b!5583617))

(assert (= (and b!5583617 c!977917) b!5583622))

(assert (= (and b!5583617 (not c!977917)) b!5583625))

(declare-fun m!6564990 () Bool)

(assert (=> b!5583626 m!6564990))

(declare-fun m!6564992 () Bool)

(assert (=> d!1764870 m!6564992))

(assert (=> d!1764870 m!6564740))

(declare-fun m!6564994 () Bool)

(assert (=> d!1764870 m!6564994))

(declare-fun m!6564996 () Bool)

(assert (=> b!5583625 m!6564996))

(assert (=> b!5583620 m!6564740))

(declare-fun m!6564998 () Bool)

(assert (=> b!5583620 m!6564998))

(assert (=> b!5583622 m!6564740))

(declare-fun m!6565000 () Bool)

(assert (=> b!5583622 m!6565000))

(declare-fun m!6565002 () Bool)

(assert (=> b!5583624 m!6565002))

(assert (=> b!5583617 m!6564740))

(declare-fun m!6565004 () Bool)

(assert (=> b!5583617 m!6565004))

(assert (=> b!5583617 m!6565004))

(declare-fun m!6565006 () Bool)

(assert (=> b!5583617 m!6565006))

(declare-fun m!6565008 () Bool)

(assert (=> b!5583623 m!6565008))

(assert (=> b!5583337 d!1764870))

(declare-fun bs!1291402 () Bool)

(declare-fun d!1764872 () Bool)

(assert (= bs!1291402 (and d!1764872 d!1764852)))

(declare-fun lambda!299518 () Int)

(assert (=> bs!1291402 (= lambda!299518 lambda!299509)))

(declare-fun bs!1291403 () Bool)

(assert (= bs!1291403 (and d!1764872 d!1764868)))

(assert (=> bs!1291403 (= lambda!299518 lambda!299512)))

(declare-fun bs!1291404 () Bool)

(assert (= bs!1291404 (and d!1764872 d!1764870)))

(assert (=> bs!1291404 (= lambda!299518 lambda!299515)))

(declare-fun lt!2254170 () List!63003)

(assert (=> d!1764872 (forall!14736 lt!2254170 lambda!299518)))

(declare-fun e!3445140 () List!63003)

(assert (=> d!1764872 (= lt!2254170 e!3445140)))

(declare-fun c!977923 () Bool)

(assert (=> d!1764872 (= c!977923 (is-Cons!62881 zl!343))))

(assert (=> d!1764872 (= (unfocusZipperList!996 zl!343) lt!2254170)))

(declare-fun b!5583631 () Bool)

(assert (=> b!5583631 (= e!3445140 (Cons!62879 (generalisedConcat!1183 (exprs!5452 (h!69329 zl!343))) (unfocusZipperList!996 (t!376278 zl!343))))))

(declare-fun b!5583632 () Bool)

(assert (=> b!5583632 (= e!3445140 Nil!62879)))

(assert (= (and d!1764872 c!977923) b!5583631))

(assert (= (and d!1764872 (not c!977923)) b!5583632))

(declare-fun m!6565010 () Bool)

(assert (=> d!1764872 m!6565010))

(assert (=> b!5583631 m!6564774))

(declare-fun m!6565012 () Bool)

(assert (=> b!5583631 m!6565012))

(assert (=> b!5583337 d!1764872))

(declare-fun d!1764874 () Bool)

(declare-fun c!977924 () Bool)

(assert (=> d!1764874 (= c!977924 (isEmpty!34696 s!2326))))

(declare-fun e!3445141 () Bool)

(assert (=> d!1764874 (= (matchZipper!1706 lt!2254060 s!2326) e!3445141)))

(declare-fun b!5583633 () Bool)

(assert (=> b!5583633 (= e!3445141 (nullableZipper!1565 lt!2254060))))

(declare-fun b!5583634 () Bool)

(assert (=> b!5583634 (= e!3445141 (matchZipper!1706 (derivationStepZipper!1667 lt!2254060 (head!11909 s!2326)) (tail!11004 s!2326)))))

(assert (= (and d!1764874 c!977924) b!5583633))

(assert (= (and d!1764874 (not c!977924)) b!5583634))

(declare-fun m!6565014 () Bool)

(assert (=> d!1764874 m!6565014))

(declare-fun m!6565016 () Bool)

(assert (=> b!5583633 m!6565016))

(declare-fun m!6565018 () Bool)

(assert (=> b!5583634 m!6565018))

(assert (=> b!5583634 m!6565018))

(declare-fun m!6565020 () Bool)

(assert (=> b!5583634 m!6565020))

(declare-fun m!6565022 () Bool)

(assert (=> b!5583634 m!6565022))

(assert (=> b!5583634 m!6565020))

(assert (=> b!5583634 m!6565022))

(declare-fun m!6565024 () Bool)

(assert (=> b!5583634 m!6565024))

(assert (=> b!5583346 d!1764874))

(declare-fun d!1764876 () Bool)

(declare-fun c!977925 () Bool)

(assert (=> d!1764876 (= c!977925 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445142 () Bool)

(assert (=> d!1764876 (= (matchZipper!1706 lt!2254066 (t!376277 s!2326)) e!3445142)))

(declare-fun b!5583635 () Bool)

(assert (=> b!5583635 (= e!3445142 (nullableZipper!1565 lt!2254066))))

(declare-fun b!5583636 () Bool)

(assert (=> b!5583636 (= e!3445142 (matchZipper!1706 (derivationStepZipper!1667 lt!2254066 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764876 c!977925) b!5583635))

(assert (= (and d!1764876 (not c!977925)) b!5583636))

(assert (=> d!1764876 m!6564914))

(declare-fun m!6565026 () Bool)

(assert (=> b!5583635 m!6565026))

(assert (=> b!5583636 m!6564918))

(assert (=> b!5583636 m!6564918))

(declare-fun m!6565028 () Bool)

(assert (=> b!5583636 m!6565028))

(assert (=> b!5583636 m!6564922))

(assert (=> b!5583636 m!6565028))

(assert (=> b!5583636 m!6564922))

(declare-fun m!6565030 () Bool)

(assert (=> b!5583636 m!6565030))

(assert (=> b!5583346 d!1764876))

(declare-fun b!5583647 () Bool)

(declare-fun e!3445150 () Bool)

(assert (=> b!5583647 (= e!3445150 (nullable!5600 (h!69327 (exprs!5452 lt!2254067))))))

(declare-fun d!1764878 () Bool)

(declare-fun c!977930 () Bool)

(assert (=> d!1764878 (= c!977930 e!3445150)))

(declare-fun res!2369457 () Bool)

(assert (=> d!1764878 (=> (not res!2369457) (not e!3445150))))

(assert (=> d!1764878 (= res!2369457 (is-Cons!62879 (exprs!5452 lt!2254067)))))

(declare-fun e!3445149 () (Set Context!9904))

(assert (=> d!1764878 (= (derivationStepZipperUp!836 lt!2254067 (h!69328 s!2326)) e!3445149)))

(declare-fun b!5583648 () Bool)

(declare-fun call!417740 () (Set Context!9904))

(assert (=> b!5583648 (= e!3445149 (set.union call!417740 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 lt!2254067))) (h!69328 s!2326))))))

(declare-fun bm!417735 () Bool)

(assert (=> bm!417735 (= call!417740 (derivationStepZipperDown!910 (h!69327 (exprs!5452 lt!2254067)) (Context!9905 (t!376276 (exprs!5452 lt!2254067))) (h!69328 s!2326)))))

(declare-fun b!5583649 () Bool)

(declare-fun e!3445151 () (Set Context!9904))

(assert (=> b!5583649 (= e!3445151 (as set.empty (Set Context!9904)))))

(declare-fun b!5583650 () Bool)

(assert (=> b!5583650 (= e!3445149 e!3445151)))

(declare-fun c!977931 () Bool)

(assert (=> b!5583650 (= c!977931 (is-Cons!62879 (exprs!5452 lt!2254067)))))

(declare-fun b!5583651 () Bool)

(assert (=> b!5583651 (= e!3445151 call!417740)))

(assert (= (and d!1764878 res!2369457) b!5583647))

(assert (= (and d!1764878 c!977930) b!5583648))

(assert (= (and d!1764878 (not c!977930)) b!5583650))

(assert (= (and b!5583650 c!977931) b!5583651))

(assert (= (and b!5583650 (not c!977931)) b!5583649))

(assert (= (or b!5583648 b!5583651) bm!417735))

(declare-fun m!6565032 () Bool)

(assert (=> b!5583647 m!6565032))

(declare-fun m!6565034 () Bool)

(assert (=> b!5583648 m!6565034))

(declare-fun m!6565036 () Bool)

(assert (=> bm!417735 m!6565036))

(assert (=> b!5583357 d!1764878))

(declare-fun d!1764880 () Bool)

(declare-fun choose!42324 ((Set Context!9904) Int) (Set Context!9904))

(assert (=> d!1764880 (= (flatMap!1181 z!1189 lambda!299491) (choose!42324 z!1189 lambda!299491))))

(declare-fun bs!1291405 () Bool)

(assert (= bs!1291405 d!1764880))

(declare-fun m!6565038 () Bool)

(assert (=> bs!1291405 m!6565038))

(assert (=> b!5583357 d!1764880))

(declare-fun d!1764882 () Bool)

(declare-fun nullableFct!1711 (Regex!15568) Bool)

(assert (=> d!1764882 (= (nullable!5600 (h!69327 (exprs!5452 (h!69329 zl!343)))) (nullableFct!1711 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun bs!1291406 () Bool)

(assert (= bs!1291406 d!1764882))

(declare-fun m!6565040 () Bool)

(assert (=> bs!1291406 m!6565040))

(assert (=> b!5583357 d!1764882))

(declare-fun b!5583652 () Bool)

(declare-fun e!3445153 () Bool)

(assert (=> b!5583652 (= e!3445153 (nullable!5600 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun d!1764884 () Bool)

(declare-fun c!977932 () Bool)

(assert (=> d!1764884 (= c!977932 e!3445153)))

(declare-fun res!2369458 () Bool)

(assert (=> d!1764884 (=> (not res!2369458) (not e!3445153))))

(assert (=> d!1764884 (= res!2369458 (is-Cons!62879 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))

(declare-fun e!3445152 () (Set Context!9904))

(assert (=> d!1764884 (= (derivationStepZipperUp!836 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))) (h!69328 s!2326)) e!3445152)))

(declare-fun call!417741 () (Set Context!9904))

(declare-fun b!5583653 () Bool)

(assert (=> b!5583653 (= e!3445152 (set.union call!417741 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (h!69328 s!2326))))))

(declare-fun bm!417736 () Bool)

(assert (=> bm!417736 (= call!417741 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (h!69328 s!2326)))))

(declare-fun b!5583654 () Bool)

(declare-fun e!3445154 () (Set Context!9904))

(assert (=> b!5583654 (= e!3445154 (as set.empty (Set Context!9904)))))

(declare-fun b!5583655 () Bool)

(assert (=> b!5583655 (= e!3445152 e!3445154)))

(declare-fun c!977933 () Bool)

(assert (=> b!5583655 (= c!977933 (is-Cons!62879 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))

(declare-fun b!5583656 () Bool)

(assert (=> b!5583656 (= e!3445154 call!417741)))

(assert (= (and d!1764884 res!2369458) b!5583652))

(assert (= (and d!1764884 c!977932) b!5583653))

(assert (= (and d!1764884 (not c!977932)) b!5583655))

(assert (= (and b!5583655 c!977933) b!5583656))

(assert (= (and b!5583655 (not c!977933)) b!5583654))

(assert (= (or b!5583653 b!5583656) bm!417736))

(declare-fun m!6565042 () Bool)

(assert (=> b!5583652 m!6565042))

(declare-fun m!6565044 () Bool)

(assert (=> b!5583653 m!6565044))

(declare-fun m!6565046 () Bool)

(assert (=> bm!417736 m!6565046))

(assert (=> b!5583357 d!1764884))

(declare-fun b!5583657 () Bool)

(declare-fun e!3445158 () (Set Context!9904))

(declare-fun call!417744 () (Set Context!9904))

(assert (=> b!5583657 (= e!3445158 call!417744)))

(declare-fun bm!417737 () Bool)

(declare-fun call!417745 () List!63003)

(declare-fun call!417747 () List!63003)

(assert (=> bm!417737 (= call!417745 call!417747)))

(declare-fun b!5583658 () Bool)

(declare-fun e!3445156 () (Set Context!9904))

(assert (=> b!5583658 (= e!3445156 (as set.empty (Set Context!9904)))))

(declare-fun b!5583659 () Bool)

(declare-fun e!3445155 () (Set Context!9904))

(declare-fun call!417743 () (Set Context!9904))

(declare-fun call!417742 () (Set Context!9904))

(assert (=> b!5583659 (= e!3445155 (set.union call!417743 call!417742))))

(declare-fun bm!417738 () Bool)

(declare-fun call!417746 () (Set Context!9904))

(assert (=> bm!417738 (= call!417742 call!417746)))

(declare-fun bm!417739 () Bool)

(assert (=> bm!417739 (= call!417744 call!417742)))

(declare-fun b!5583660 () Bool)

(declare-fun c!977935 () Bool)

(declare-fun e!3445157 () Bool)

(assert (=> b!5583660 (= c!977935 e!3445157)))

(declare-fun res!2369459 () Bool)

(assert (=> b!5583660 (=> (not res!2369459) (not e!3445157))))

(assert (=> b!5583660 (= res!2369459 (is-Concat!24413 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun e!3445159 () (Set Context!9904))

(assert (=> b!5583660 (= e!3445159 e!3445155)))

(declare-fun b!5583661 () Bool)

(declare-fun e!3445160 () (Set Context!9904))

(assert (=> b!5583661 (= e!3445160 e!3445159)))

(declare-fun c!977936 () Bool)

(assert (=> b!5583661 (= c!977936 (is-Union!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5583663 () Bool)

(declare-fun c!977937 () Bool)

(assert (=> b!5583663 (= c!977937 (is-Star!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> b!5583663 (= e!3445158 e!3445156)))

(declare-fun bm!417740 () Bool)

(assert (=> bm!417740 (= call!417743 (derivationStepZipperDown!910 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))) (ite c!977936 lt!2254067 (Context!9905 call!417747)) (h!69328 s!2326)))))

(declare-fun b!5583664 () Bool)

(assert (=> b!5583664 (= e!3445155 e!3445158)))

(declare-fun c!977934 () Bool)

(assert (=> b!5583664 (= c!977934 (is-Concat!24413 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5583665 () Bool)

(assert (=> b!5583665 (= e!3445159 (set.union call!417746 call!417743))))

(declare-fun b!5583666 () Bool)

(assert (=> b!5583666 (= e!3445156 call!417744)))

(declare-fun b!5583667 () Bool)

(assert (=> b!5583667 (= e!3445157 (nullable!5600 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun b!5583662 () Bool)

(assert (=> b!5583662 (= e!3445160 (set.insert lt!2254067 (as set.empty (Set Context!9904))))))

(declare-fun d!1764886 () Bool)

(declare-fun c!977938 () Bool)

(assert (=> d!1764886 (= c!977938 (and (is-ElementMatch!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))) (= (c!977850 (h!69327 (exprs!5452 (h!69329 zl!343)))) (h!69328 s!2326))))))

(assert (=> d!1764886 (= (derivationStepZipperDown!910 (h!69327 (exprs!5452 (h!69329 zl!343))) lt!2254067 (h!69328 s!2326)) e!3445160)))

(declare-fun bm!417741 () Bool)

(assert (=> bm!417741 (= call!417747 ($colon$colon!1633 (exprs!5452 lt!2254067) (ite (or c!977935 c!977934) (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (h!69327 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun bm!417742 () Bool)

(assert (=> bm!417742 (= call!417746 (derivationStepZipperDown!910 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343))))))) (ite (or c!977936 c!977935) lt!2254067 (Context!9905 call!417745)) (h!69328 s!2326)))))

(assert (= (and d!1764886 c!977938) b!5583662))

(assert (= (and d!1764886 (not c!977938)) b!5583661))

(assert (= (and b!5583661 c!977936) b!5583665))

(assert (= (and b!5583661 (not c!977936)) b!5583660))

(assert (= (and b!5583660 res!2369459) b!5583667))

(assert (= (and b!5583660 c!977935) b!5583659))

(assert (= (and b!5583660 (not c!977935)) b!5583664))

(assert (= (and b!5583664 c!977934) b!5583657))

(assert (= (and b!5583664 (not c!977934)) b!5583663))

(assert (= (and b!5583663 c!977937) b!5583666))

(assert (= (and b!5583663 (not c!977937)) b!5583658))

(assert (= (or b!5583657 b!5583666) bm!417737))

(assert (= (or b!5583657 b!5583666) bm!417739))

(assert (= (or b!5583659 bm!417737) bm!417741))

(assert (= (or b!5583659 bm!417739) bm!417738))

(assert (= (or b!5583665 b!5583659) bm!417740))

(assert (= (or b!5583665 bm!417738) bm!417742))

(declare-fun m!6565048 () Bool)

(assert (=> b!5583667 m!6565048))

(declare-fun m!6565050 () Bool)

(assert (=> bm!417742 m!6565050))

(declare-fun m!6565052 () Bool)

(assert (=> bm!417740 m!6565052))

(assert (=> b!5583662 m!6564934))

(declare-fun m!6565054 () Bool)

(assert (=> bm!417741 m!6565054))

(assert (=> b!5583357 d!1764886))

(declare-fun d!1764888 () Bool)

(declare-fun dynLambda!24591 (Int Context!9904) (Set Context!9904))

(assert (=> d!1764888 (= (flatMap!1181 z!1189 lambda!299491) (dynLambda!24591 lambda!299491 (h!69329 zl!343)))))

(declare-fun lt!2254173 () Unit!155652)

(declare-fun choose!42325 ((Set Context!9904) Context!9904 Int) Unit!155652)

(assert (=> d!1764888 (= lt!2254173 (choose!42325 z!1189 (h!69329 zl!343) lambda!299491))))

(assert (=> d!1764888 (= z!1189 (set.insert (h!69329 zl!343) (as set.empty (Set Context!9904))))))

(assert (=> d!1764888 (= (lemmaFlatMapOnSingletonSet!713 z!1189 (h!69329 zl!343) lambda!299491) lt!2254173)))

(declare-fun b_lambda!211595 () Bool)

(assert (=> (not b_lambda!211595) (not d!1764888)))

(declare-fun bs!1291407 () Bool)

(assert (= bs!1291407 d!1764888))

(assert (=> bs!1291407 m!6564784))

(declare-fun m!6565056 () Bool)

(assert (=> bs!1291407 m!6565056))

(declare-fun m!6565058 () Bool)

(assert (=> bs!1291407 m!6565058))

(declare-fun m!6565060 () Bool)

(assert (=> bs!1291407 m!6565060))

(assert (=> b!5583357 d!1764888))

(declare-fun b!5583668 () Bool)

(declare-fun e!3445162 () Bool)

(assert (=> b!5583668 (= e!3445162 (nullable!5600 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun d!1764890 () Bool)

(declare-fun c!977939 () Bool)

(assert (=> d!1764890 (= c!977939 e!3445162)))

(declare-fun res!2369460 () Bool)

(assert (=> d!1764890 (=> (not res!2369460) (not e!3445162))))

(assert (=> d!1764890 (= res!2369460 (is-Cons!62879 (exprs!5452 (h!69329 zl!343))))))

(declare-fun e!3445161 () (Set Context!9904))

(assert (=> d!1764890 (= (derivationStepZipperUp!836 (h!69329 zl!343) (h!69328 s!2326)) e!3445161)))

(declare-fun call!417748 () (Set Context!9904))

(declare-fun b!5583669 () Bool)

(assert (=> b!5583669 (= e!3445161 (set.union call!417748 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))) (h!69328 s!2326))))))

(declare-fun bm!417743 () Bool)

(assert (=> bm!417743 (= call!417748 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (h!69329 zl!343))) (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))) (h!69328 s!2326)))))

(declare-fun b!5583670 () Bool)

(declare-fun e!3445163 () (Set Context!9904))

(assert (=> b!5583670 (= e!3445163 (as set.empty (Set Context!9904)))))

(declare-fun b!5583671 () Bool)

(assert (=> b!5583671 (= e!3445161 e!3445163)))

(declare-fun c!977940 () Bool)

(assert (=> b!5583671 (= c!977940 (is-Cons!62879 (exprs!5452 (h!69329 zl!343))))))

(declare-fun b!5583672 () Bool)

(assert (=> b!5583672 (= e!3445163 call!417748)))

(assert (= (and d!1764890 res!2369460) b!5583668))

(assert (= (and d!1764890 c!977939) b!5583669))

(assert (= (and d!1764890 (not c!977939)) b!5583671))

(assert (= (and b!5583671 c!977940) b!5583672))

(assert (= (and b!5583671 (not c!977940)) b!5583670))

(assert (= (or b!5583669 b!5583672) bm!417743))

(assert (=> b!5583668 m!6564792))

(declare-fun m!6565062 () Bool)

(assert (=> b!5583669 m!6565062))

(declare-fun m!6565064 () Bool)

(assert (=> bm!417743 m!6565064))

(assert (=> b!5583357 d!1764890))

(declare-fun d!1764892 () Bool)

(declare-fun e!3445166 () Bool)

(assert (=> d!1764892 e!3445166))

(declare-fun res!2369463 () Bool)

(assert (=> d!1764892 (=> (not res!2369463) (not e!3445166))))

(declare-fun lt!2254176 () List!63005)

(declare-fun noDuplicate!1546 (List!63005) Bool)

(assert (=> d!1764892 (= res!2369463 (noDuplicate!1546 lt!2254176))))

(declare-fun choose!42326 ((Set Context!9904)) List!63005)

(assert (=> d!1764892 (= lt!2254176 (choose!42326 z!1189))))

(assert (=> d!1764892 (= (toList!9352 z!1189) lt!2254176)))

(declare-fun b!5583675 () Bool)

(declare-fun content!11338 (List!63005) (Set Context!9904))

(assert (=> b!5583675 (= e!3445166 (= (content!11338 lt!2254176) z!1189))))

(assert (= (and d!1764892 res!2369463) b!5583675))

(declare-fun m!6565066 () Bool)

(assert (=> d!1764892 m!6565066))

(declare-fun m!6565068 () Bool)

(assert (=> d!1764892 m!6565068))

(declare-fun m!6565070 () Bool)

(assert (=> b!5583675 m!6565070))

(assert (=> b!5583338 d!1764892))

(declare-fun d!1764894 () Bool)

(assert (=> d!1764894 (= (isEmpty!34693 (t!376278 zl!343)) (is-Nil!62881 (t!376278 zl!343)))))

(assert (=> b!5583347 d!1764894))

(assert (=> b!5583358 d!1764860))

(declare-fun d!1764896 () Bool)

(declare-fun c!977941 () Bool)

(assert (=> d!1764896 (= c!977941 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445167 () Bool)

(assert (=> d!1764896 (= (matchZipper!1706 lt!2254043 (t!376277 s!2326)) e!3445167)))

(declare-fun b!5583676 () Bool)

(assert (=> b!5583676 (= e!3445167 (nullableZipper!1565 lt!2254043))))

(declare-fun b!5583677 () Bool)

(assert (=> b!5583677 (= e!3445167 (matchZipper!1706 (derivationStepZipper!1667 lt!2254043 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764896 c!977941) b!5583676))

(assert (= (and d!1764896 (not c!977941)) b!5583677))

(assert (=> d!1764896 m!6564914))

(declare-fun m!6565072 () Bool)

(assert (=> b!5583676 m!6565072))

(assert (=> b!5583677 m!6564918))

(assert (=> b!5583677 m!6564918))

(declare-fun m!6565074 () Bool)

(assert (=> b!5583677 m!6565074))

(assert (=> b!5583677 m!6564922))

(assert (=> b!5583677 m!6565074))

(assert (=> b!5583677 m!6564922))

(declare-fun m!6565076 () Bool)

(assert (=> b!5583677 m!6565076))

(assert (=> b!5583358 d!1764896))

(declare-fun d!1764898 () Bool)

(declare-fun c!977942 () Bool)

(assert (=> d!1764898 (= c!977942 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445168 () Bool)

(assert (=> d!1764898 (= (matchZipper!1706 lt!2254046 (t!376277 s!2326)) e!3445168)))

(declare-fun b!5583678 () Bool)

(assert (=> b!5583678 (= e!3445168 (nullableZipper!1565 lt!2254046))))

(declare-fun b!5583679 () Bool)

(assert (=> b!5583679 (= e!3445168 (matchZipper!1706 (derivationStepZipper!1667 lt!2254046 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764898 c!977942) b!5583678))

(assert (= (and d!1764898 (not c!977942)) b!5583679))

(assert (=> d!1764898 m!6564914))

(declare-fun m!6565078 () Bool)

(assert (=> b!5583678 m!6565078))

(assert (=> b!5583679 m!6564918))

(assert (=> b!5583679 m!6564918))

(declare-fun m!6565080 () Bool)

(assert (=> b!5583679 m!6565080))

(assert (=> b!5583679 m!6564922))

(assert (=> b!5583679 m!6565080))

(assert (=> b!5583679 m!6564922))

(declare-fun m!6565082 () Bool)

(assert (=> b!5583679 m!6565082))

(assert (=> b!5583358 d!1764898))

(declare-fun e!3445169 () Bool)

(declare-fun d!1764900 () Bool)

(assert (=> d!1764900 (= (matchZipper!1706 (set.union lt!2254046 lt!2254068) (t!376277 s!2326)) e!3445169)))

(declare-fun res!2369464 () Bool)

(assert (=> d!1764900 (=> res!2369464 e!3445169)))

(assert (=> d!1764900 (= res!2369464 (matchZipper!1706 lt!2254046 (t!376277 s!2326)))))

(declare-fun lt!2254177 () Unit!155652)

(assert (=> d!1764900 (= lt!2254177 (choose!42323 lt!2254046 lt!2254068 (t!376277 s!2326)))))

(assert (=> d!1764900 (= (lemmaZipperConcatMatchesSameAsBothZippers!593 lt!2254046 lt!2254068 (t!376277 s!2326)) lt!2254177)))

(declare-fun b!5583680 () Bool)

(assert (=> b!5583680 (= e!3445169 (matchZipper!1706 lt!2254068 (t!376277 s!2326)))))

(assert (= (and d!1764900 (not res!2369464)) b!5583680))

(declare-fun m!6565084 () Bool)

(assert (=> d!1764900 m!6565084))

(assert (=> d!1764900 m!6564808))

(declare-fun m!6565086 () Bool)

(assert (=> d!1764900 m!6565086))

(assert (=> b!5583680 m!6564712))

(assert (=> b!5583358 d!1764900))

(declare-fun bs!1291408 () Bool)

(declare-fun d!1764902 () Bool)

(assert (= bs!1291408 (and d!1764902 d!1764852)))

(declare-fun lambda!299519 () Int)

(assert (=> bs!1291408 (= lambda!299519 lambda!299509)))

(declare-fun bs!1291409 () Bool)

(assert (= bs!1291409 (and d!1764902 d!1764868)))

(assert (=> bs!1291409 (= lambda!299519 lambda!299512)))

(declare-fun bs!1291410 () Bool)

(assert (= bs!1291410 (and d!1764902 d!1764870)))

(assert (=> bs!1291410 (= lambda!299519 lambda!299515)))

(declare-fun bs!1291411 () Bool)

(assert (= bs!1291411 (and d!1764902 d!1764872)))

(assert (=> bs!1291411 (= lambda!299519 lambda!299518)))

(assert (=> d!1764902 (= (inv!82168 setElem!37174) (forall!14736 (exprs!5452 setElem!37174) lambda!299519))))

(declare-fun bs!1291412 () Bool)

(assert (= bs!1291412 d!1764902))

(declare-fun m!6565088 () Bool)

(assert (=> bs!1291412 m!6565088))

(assert (=> setNonEmpty!37174 d!1764902))

(declare-fun b!5583699 () Bool)

(declare-fun res!2369479 () Bool)

(declare-fun e!3445181 () Bool)

(assert (=> b!5583699 (=> (not res!2369479) (not e!3445181))))

(declare-fun lt!2254185 () Option!15577)

(declare-fun get!21651 (Option!15577) tuple2!65330)

(assert (=> b!5583699 (= res!2369479 (matchR!7753 (regOne!31648 r!7292) (_1!35968 (get!21651 lt!2254185))))))

(declare-fun b!5583700 () Bool)

(declare-fun res!2369476 () Bool)

(assert (=> b!5583700 (=> (not res!2369476) (not e!3445181))))

(assert (=> b!5583700 (= res!2369476 (matchR!7753 (regTwo!31648 r!7292) (_2!35968 (get!21651 lt!2254185))))))

(declare-fun b!5583702 () Bool)

(declare-fun e!3445183 () Bool)

(assert (=> b!5583702 (= e!3445183 (matchR!7753 (regTwo!31648 r!7292) s!2326))))

(declare-fun b!5583703 () Bool)

(declare-fun e!3445184 () Bool)

(assert (=> b!5583703 (= e!3445184 (not (isDefined!12280 lt!2254185)))))

(declare-fun b!5583704 () Bool)

(declare-fun e!3445180 () Option!15577)

(declare-fun e!3445182 () Option!15577)

(assert (=> b!5583704 (= e!3445180 e!3445182)))

(declare-fun c!977948 () Bool)

(assert (=> b!5583704 (= c!977948 (is-Nil!62880 s!2326))))

(declare-fun b!5583705 () Bool)

(declare-fun ++!13799 (List!63004 List!63004) List!63004)

(assert (=> b!5583705 (= e!3445181 (= (++!13799 (_1!35968 (get!21651 lt!2254185)) (_2!35968 (get!21651 lt!2254185))) s!2326))))

(declare-fun b!5583706 () Bool)

(assert (=> b!5583706 (= e!3445182 None!15576)))

(declare-fun b!5583707 () Bool)

(declare-fun lt!2254184 () Unit!155652)

(declare-fun lt!2254186 () Unit!155652)

(assert (=> b!5583707 (= lt!2254184 lt!2254186)))

(assert (=> b!5583707 (= (++!13799 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (t!376277 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1968 (List!63004 C!31406 List!63004 List!63004) Unit!155652)

(assert (=> b!5583707 (= lt!2254186 (lemmaMoveElementToOtherListKeepsConcatEq!1968 Nil!62880 (h!69328 s!2326) (t!376277 s!2326) s!2326))))

(assert (=> b!5583707 (= e!3445182 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (t!376277 s!2326) s!2326))))

(declare-fun b!5583701 () Bool)

(assert (=> b!5583701 (= e!3445180 (Some!15576 (tuple2!65331 Nil!62880 s!2326)))))

(declare-fun d!1764904 () Bool)

(assert (=> d!1764904 e!3445184))

(declare-fun res!2369475 () Bool)

(assert (=> d!1764904 (=> res!2369475 e!3445184)))

(assert (=> d!1764904 (= res!2369475 e!3445181)))

(declare-fun res!2369478 () Bool)

(assert (=> d!1764904 (=> (not res!2369478) (not e!3445181))))

(assert (=> d!1764904 (= res!2369478 (isDefined!12280 lt!2254185))))

(assert (=> d!1764904 (= lt!2254185 e!3445180)))

(declare-fun c!977947 () Bool)

(assert (=> d!1764904 (= c!977947 e!3445183)))

(declare-fun res!2369477 () Bool)

(assert (=> d!1764904 (=> (not res!2369477) (not e!3445183))))

(assert (=> d!1764904 (= res!2369477 (matchR!7753 (regOne!31648 r!7292) Nil!62880))))

(assert (=> d!1764904 (validRegex!7304 (regOne!31648 r!7292))))

(assert (=> d!1764904 (= (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326) lt!2254185)))

(assert (= (and d!1764904 res!2369477) b!5583702))

(assert (= (and d!1764904 c!977947) b!5583701))

(assert (= (and d!1764904 (not c!977947)) b!5583704))

(assert (= (and b!5583704 c!977948) b!5583706))

(assert (= (and b!5583704 (not c!977948)) b!5583707))

(assert (= (and d!1764904 res!2369478) b!5583699))

(assert (= (and b!5583699 res!2369479) b!5583700))

(assert (= (and b!5583700 res!2369476) b!5583705))

(assert (= (and d!1764904 (not res!2369475)) b!5583703))

(declare-fun m!6565090 () Bool)

(assert (=> d!1764904 m!6565090))

(declare-fun m!6565092 () Bool)

(assert (=> d!1764904 m!6565092))

(declare-fun m!6565094 () Bool)

(assert (=> d!1764904 m!6565094))

(assert (=> b!5583703 m!6565090))

(declare-fun m!6565096 () Bool)

(assert (=> b!5583705 m!6565096))

(declare-fun m!6565098 () Bool)

(assert (=> b!5583705 m!6565098))

(declare-fun m!6565100 () Bool)

(assert (=> b!5583707 m!6565100))

(assert (=> b!5583707 m!6565100))

(declare-fun m!6565102 () Bool)

(assert (=> b!5583707 m!6565102))

(declare-fun m!6565104 () Bool)

(assert (=> b!5583707 m!6565104))

(assert (=> b!5583707 m!6565100))

(declare-fun m!6565106 () Bool)

(assert (=> b!5583707 m!6565106))

(assert (=> b!5583700 m!6565096))

(declare-fun m!6565108 () Bool)

(assert (=> b!5583700 m!6565108))

(assert (=> b!5583699 m!6565096))

(declare-fun m!6565110 () Bool)

(assert (=> b!5583699 m!6565110))

(declare-fun m!6565112 () Bool)

(assert (=> b!5583702 m!6565112))

(assert (=> b!5583348 d!1764904))

(declare-fun d!1764906 () Bool)

(declare-fun choose!42327 (Int) Bool)

(assert (=> d!1764906 (= (Exists!2668 lambda!299490) (choose!42327 lambda!299490))))

(declare-fun bs!1291413 () Bool)

(assert (= bs!1291413 d!1764906))

(declare-fun m!6565114 () Bool)

(assert (=> bs!1291413 m!6565114))

(assert (=> b!5583348 d!1764906))

(declare-fun bs!1291414 () Bool)

(declare-fun d!1764908 () Bool)

(assert (= bs!1291414 (and d!1764908 b!5583348)))

(declare-fun lambda!299524 () Int)

(assert (=> bs!1291414 (= lambda!299524 lambda!299489)))

(assert (=> bs!1291414 (not (= lambda!299524 lambda!299490))))

(assert (=> d!1764908 true))

(assert (=> d!1764908 true))

(assert (=> d!1764908 true))

(declare-fun lambda!299525 () Int)

(assert (=> bs!1291414 (not (= lambda!299525 lambda!299489))))

(assert (=> bs!1291414 (= lambda!299525 lambda!299490)))

(declare-fun bs!1291415 () Bool)

(assert (= bs!1291415 d!1764908))

(assert (=> bs!1291415 (not (= lambda!299525 lambda!299524))))

(assert (=> d!1764908 true))

(assert (=> d!1764908 true))

(assert (=> d!1764908 true))

(assert (=> d!1764908 (= (Exists!2668 lambda!299524) (Exists!2668 lambda!299525))))

(declare-fun lt!2254189 () Unit!155652)

(declare-fun choose!42328 (Regex!15568 Regex!15568 List!63004) Unit!155652)

(assert (=> d!1764908 (= lt!2254189 (choose!42328 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326))))

(assert (=> d!1764908 (validRegex!7304 (regOne!31648 r!7292))))

(assert (=> d!1764908 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1297 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326) lt!2254189)))

(declare-fun m!6565116 () Bool)

(assert (=> bs!1291415 m!6565116))

(declare-fun m!6565118 () Bool)

(assert (=> bs!1291415 m!6565118))

(declare-fun m!6565120 () Bool)

(assert (=> bs!1291415 m!6565120))

(assert (=> bs!1291415 m!6565094))

(assert (=> b!5583348 d!1764908))

(declare-fun d!1764910 () Bool)

(declare-fun isEmpty!34697 (Option!15577) Bool)

(assert (=> d!1764910 (= (isDefined!12280 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326)) (not (isEmpty!34697 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326))))))

(declare-fun bs!1291416 () Bool)

(assert (= bs!1291416 d!1764910))

(assert (=> bs!1291416 m!6564726))

(declare-fun m!6565122 () Bool)

(assert (=> bs!1291416 m!6565122))

(assert (=> b!5583348 d!1764910))

(declare-fun bs!1291417 () Bool)

(declare-fun d!1764912 () Bool)

(assert (= bs!1291417 (and d!1764912 b!5583348)))

(declare-fun lambda!299528 () Int)

(assert (=> bs!1291417 (= lambda!299528 lambda!299489)))

(assert (=> bs!1291417 (not (= lambda!299528 lambda!299490))))

(declare-fun bs!1291418 () Bool)

(assert (= bs!1291418 (and d!1764912 d!1764908)))

(assert (=> bs!1291418 (= lambda!299528 lambda!299524)))

(assert (=> bs!1291418 (not (= lambda!299528 lambda!299525))))

(assert (=> d!1764912 true))

(assert (=> d!1764912 true))

(assert (=> d!1764912 true))

(assert (=> d!1764912 (= (isDefined!12280 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326)) (Exists!2668 lambda!299528))))

(declare-fun lt!2254192 () Unit!155652)

(declare-fun choose!42329 (Regex!15568 Regex!15568 List!63004) Unit!155652)

(assert (=> d!1764912 (= lt!2254192 (choose!42329 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326))))

(assert (=> d!1764912 (validRegex!7304 (regOne!31648 r!7292))))

(assert (=> d!1764912 (= (lemmaFindConcatSeparationEquivalentToExists!1755 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326) lt!2254192)))

(declare-fun bs!1291419 () Bool)

(assert (= bs!1291419 d!1764912))

(declare-fun m!6565124 () Bool)

(assert (=> bs!1291419 m!6565124))

(declare-fun m!6565126 () Bool)

(assert (=> bs!1291419 m!6565126))

(assert (=> bs!1291419 m!6564726))

(assert (=> bs!1291419 m!6564728))

(assert (=> bs!1291419 m!6565094))

(assert (=> bs!1291419 m!6564726))

(assert (=> b!5583348 d!1764912))

(declare-fun d!1764914 () Bool)

(assert (=> d!1764914 (= (Exists!2668 lambda!299489) (choose!42327 lambda!299489))))

(declare-fun bs!1291420 () Bool)

(assert (= bs!1291420 d!1764914))

(declare-fun m!6565128 () Bool)

(assert (=> bs!1291420 m!6565128))

(assert (=> b!5583348 d!1764914))

(declare-fun d!1764916 () Bool)

(declare-fun e!3445191 () Bool)

(assert (=> d!1764916 (= (matchZipper!1706 (set.union lt!2254046 lt!2254070) (t!376277 s!2326)) e!3445191)))

(declare-fun res!2369492 () Bool)

(assert (=> d!1764916 (=> res!2369492 e!3445191)))

(assert (=> d!1764916 (= res!2369492 (matchZipper!1706 lt!2254046 (t!376277 s!2326)))))

(declare-fun lt!2254193 () Unit!155652)

(assert (=> d!1764916 (= lt!2254193 (choose!42323 lt!2254046 lt!2254070 (t!376277 s!2326)))))

(assert (=> d!1764916 (= (lemmaZipperConcatMatchesSameAsBothZippers!593 lt!2254046 lt!2254070 (t!376277 s!2326)) lt!2254193)))

(declare-fun b!5583720 () Bool)

(assert (=> b!5583720 (= e!3445191 (matchZipper!1706 lt!2254070 (t!376277 s!2326)))))

(assert (= (and d!1764916 (not res!2369492)) b!5583720))

(assert (=> d!1764916 m!6564746))

(assert (=> d!1764916 m!6564808))

(declare-fun m!6565130 () Bool)

(assert (=> d!1764916 m!6565130))

(assert (=> b!5583720 m!6564724))

(assert (=> b!5583329 d!1764916))

(declare-fun d!1764918 () Bool)

(declare-fun c!977949 () Bool)

(assert (=> d!1764918 (= c!977949 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445192 () Bool)

(assert (=> d!1764918 (= (matchZipper!1706 (set.union lt!2254046 lt!2254070) (t!376277 s!2326)) e!3445192)))

(declare-fun b!5583721 () Bool)

(assert (=> b!5583721 (= e!3445192 (nullableZipper!1565 (set.union lt!2254046 lt!2254070)))))

(declare-fun b!5583722 () Bool)

(assert (=> b!5583722 (= e!3445192 (matchZipper!1706 (derivationStepZipper!1667 (set.union lt!2254046 lt!2254070) (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1764918 c!977949) b!5583721))

(assert (= (and d!1764918 (not c!977949)) b!5583722))

(assert (=> d!1764918 m!6564914))

(declare-fun m!6565132 () Bool)

(assert (=> b!5583721 m!6565132))

(assert (=> b!5583722 m!6564918))

(assert (=> b!5583722 m!6564918))

(declare-fun m!6565134 () Bool)

(assert (=> b!5583722 m!6565134))

(assert (=> b!5583722 m!6564922))

(assert (=> b!5583722 m!6565134))

(assert (=> b!5583722 m!6564922))

(declare-fun m!6565136 () Bool)

(assert (=> b!5583722 m!6565136))

(assert (=> b!5583329 d!1764918))

(assert (=> b!5583330 d!1764864))

(declare-fun bs!1291421 () Bool)

(declare-fun b!5583762 () Bool)

(assert (= bs!1291421 (and b!5583762 d!1764908)))

(declare-fun lambda!299533 () Int)

(assert (=> bs!1291421 (not (= lambda!299533 lambda!299525))))

(declare-fun bs!1291422 () Bool)

(assert (= bs!1291422 (and b!5583762 b!5583348)))

(assert (=> bs!1291422 (not (= lambda!299533 lambda!299489))))

(declare-fun bs!1291423 () Bool)

(assert (= bs!1291423 (and b!5583762 d!1764912)))

(assert (=> bs!1291423 (not (= lambda!299533 lambda!299528))))

(assert (=> bs!1291421 (not (= lambda!299533 lambda!299524))))

(assert (=> bs!1291422 (not (= lambda!299533 lambda!299490))))

(assert (=> b!5583762 true))

(assert (=> b!5583762 true))

(declare-fun bs!1291424 () Bool)

(declare-fun b!5583761 () Bool)

(assert (= bs!1291424 (and b!5583761 d!1764908)))

(declare-fun lambda!299534 () Int)

(assert (=> bs!1291424 (= lambda!299534 lambda!299525)))

(declare-fun bs!1291425 () Bool)

(assert (= bs!1291425 (and b!5583761 b!5583762)))

(assert (=> bs!1291425 (not (= lambda!299534 lambda!299533))))

(declare-fun bs!1291426 () Bool)

(assert (= bs!1291426 (and b!5583761 b!5583348)))

(assert (=> bs!1291426 (not (= lambda!299534 lambda!299489))))

(declare-fun bs!1291427 () Bool)

(assert (= bs!1291427 (and b!5583761 d!1764912)))

(assert (=> bs!1291427 (not (= lambda!299534 lambda!299528))))

(assert (=> bs!1291424 (not (= lambda!299534 lambda!299524))))

(assert (=> bs!1291426 (= lambda!299534 lambda!299490)))

(assert (=> b!5583761 true))

(assert (=> b!5583761 true))

(declare-fun b!5583755 () Bool)

(declare-fun e!3445217 () Bool)

(declare-fun call!417753 () Bool)

(assert (=> b!5583755 (= e!3445217 call!417753)))

(declare-fun b!5583756 () Bool)

(declare-fun e!3445212 () Bool)

(assert (=> b!5583756 (= e!3445217 e!3445212)))

(declare-fun res!2369510 () Bool)

(assert (=> b!5583756 (= res!2369510 (not (is-EmptyLang!15568 r!7292)))))

(assert (=> b!5583756 (=> (not res!2369510) (not e!3445212))))

(declare-fun b!5583757 () Bool)

(declare-fun e!3445215 () Bool)

(assert (=> b!5583757 (= e!3445215 (matchRSpec!2671 (regTwo!31649 r!7292) s!2326))))

(declare-fun call!417754 () Bool)

(declare-fun bm!417748 () Bool)

(declare-fun c!977958 () Bool)

(assert (=> bm!417748 (= call!417754 (Exists!2668 (ite c!977958 lambda!299533 lambda!299534)))))

(declare-fun b!5583759 () Bool)

(declare-fun c!977960 () Bool)

(assert (=> b!5583759 (= c!977960 (is-Union!15568 r!7292))))

(declare-fun e!3445214 () Bool)

(declare-fun e!3445213 () Bool)

(assert (=> b!5583759 (= e!3445214 e!3445213)))

(declare-fun b!5583760 () Bool)

(declare-fun c!977961 () Bool)

(assert (=> b!5583760 (= c!977961 (is-ElementMatch!15568 r!7292))))

(assert (=> b!5583760 (= e!3445212 e!3445214)))

(declare-fun e!3445211 () Bool)

(assert (=> b!5583761 (= e!3445211 call!417754)))

(declare-fun bm!417749 () Bool)

(assert (=> bm!417749 (= call!417753 (isEmpty!34696 s!2326))))

(declare-fun e!3445216 () Bool)

(assert (=> b!5583762 (= e!3445216 call!417754)))

(declare-fun b!5583763 () Bool)

(declare-fun res!2369511 () Bool)

(assert (=> b!5583763 (=> res!2369511 e!3445216)))

(assert (=> b!5583763 (= res!2369511 call!417753)))

(assert (=> b!5583763 (= e!3445211 e!3445216)))

(declare-fun b!5583758 () Bool)

(assert (=> b!5583758 (= e!3445214 (= s!2326 (Cons!62880 (c!977850 r!7292) Nil!62880)))))

(declare-fun d!1764920 () Bool)

(declare-fun c!977959 () Bool)

(assert (=> d!1764920 (= c!977959 (is-EmptyExpr!15568 r!7292))))

(assert (=> d!1764920 (= (matchRSpec!2671 r!7292 s!2326) e!3445217)))

(declare-fun b!5583764 () Bool)

(assert (=> b!5583764 (= e!3445213 e!3445211)))

(assert (=> b!5583764 (= c!977958 (is-Star!15568 r!7292))))

(declare-fun b!5583765 () Bool)

(assert (=> b!5583765 (= e!3445213 e!3445215)))

(declare-fun res!2369509 () Bool)

(assert (=> b!5583765 (= res!2369509 (matchRSpec!2671 (regOne!31649 r!7292) s!2326))))

(assert (=> b!5583765 (=> res!2369509 e!3445215)))

(assert (= (and d!1764920 c!977959) b!5583755))

(assert (= (and d!1764920 (not c!977959)) b!5583756))

(assert (= (and b!5583756 res!2369510) b!5583760))

(assert (= (and b!5583760 c!977961) b!5583758))

(assert (= (and b!5583760 (not c!977961)) b!5583759))

(assert (= (and b!5583759 c!977960) b!5583765))

(assert (= (and b!5583759 (not c!977960)) b!5583764))

(assert (= (and b!5583765 (not res!2369509)) b!5583757))

(assert (= (and b!5583764 c!977958) b!5583763))

(assert (= (and b!5583764 (not c!977958)) b!5583761))

(assert (= (and b!5583763 (not res!2369511)) b!5583762))

(assert (= (or b!5583762 b!5583761) bm!417748))

(assert (= (or b!5583755 b!5583763) bm!417749))

(declare-fun m!6565138 () Bool)

(assert (=> b!5583757 m!6565138))

(declare-fun m!6565140 () Bool)

(assert (=> bm!417748 m!6565140))

(assert (=> bm!417749 m!6565014))

(declare-fun m!6565142 () Bool)

(assert (=> b!5583765 m!6565142))

(assert (=> b!5583340 d!1764920))

(declare-fun b!5583794 () Bool)

(declare-fun e!3445234 () Bool)

(declare-fun lt!2254196 () Bool)

(assert (=> b!5583794 (= e!3445234 (not lt!2254196))))

(declare-fun d!1764922 () Bool)

(declare-fun e!3445238 () Bool)

(assert (=> d!1764922 e!3445238))

(declare-fun c!977969 () Bool)

(assert (=> d!1764922 (= c!977969 (is-EmptyExpr!15568 r!7292))))

(declare-fun e!3445232 () Bool)

(assert (=> d!1764922 (= lt!2254196 e!3445232)))

(declare-fun c!977968 () Bool)

(assert (=> d!1764922 (= c!977968 (isEmpty!34696 s!2326))))

(assert (=> d!1764922 (validRegex!7304 r!7292)))

(assert (=> d!1764922 (= (matchR!7753 r!7292 s!2326) lt!2254196)))

(declare-fun b!5583795 () Bool)

(assert (=> b!5583795 (= e!3445238 e!3445234)))

(declare-fun c!977970 () Bool)

(assert (=> b!5583795 (= c!977970 (is-EmptyLang!15568 r!7292))))

(declare-fun b!5583796 () Bool)

(declare-fun derivativeStep!4418 (Regex!15568 C!31406) Regex!15568)

(assert (=> b!5583796 (= e!3445232 (matchR!7753 (derivativeStep!4418 r!7292 (head!11909 s!2326)) (tail!11004 s!2326)))))

(declare-fun b!5583797 () Bool)

(declare-fun e!3445236 () Bool)

(assert (=> b!5583797 (= e!3445236 (not (= (head!11909 s!2326) (c!977850 r!7292))))))

(declare-fun bm!417752 () Bool)

(declare-fun call!417757 () Bool)

(assert (=> bm!417752 (= call!417757 (isEmpty!34696 s!2326))))

(declare-fun b!5583798 () Bool)

(declare-fun res!2369534 () Bool)

(declare-fun e!3445233 () Bool)

(assert (=> b!5583798 (=> res!2369534 e!3445233)))

(declare-fun e!3445237 () Bool)

(assert (=> b!5583798 (= res!2369534 e!3445237)))

(declare-fun res!2369529 () Bool)

(assert (=> b!5583798 (=> (not res!2369529) (not e!3445237))))

(assert (=> b!5583798 (= res!2369529 lt!2254196)))

(declare-fun b!5583799 () Bool)

(assert (=> b!5583799 (= e!3445232 (nullable!5600 r!7292))))

(declare-fun b!5583800 () Bool)

(assert (=> b!5583800 (= e!3445237 (= (head!11909 s!2326) (c!977850 r!7292)))))

(declare-fun b!5583801 () Bool)

(declare-fun e!3445235 () Bool)

(assert (=> b!5583801 (= e!3445235 e!3445236)))

(declare-fun res!2369531 () Bool)

(assert (=> b!5583801 (=> res!2369531 e!3445236)))

(assert (=> b!5583801 (= res!2369531 call!417757)))

(declare-fun b!5583802 () Bool)

(assert (=> b!5583802 (= e!3445238 (= lt!2254196 call!417757))))

(declare-fun b!5583803 () Bool)

(declare-fun res!2369533 () Bool)

(assert (=> b!5583803 (=> res!2369533 e!3445233)))

(assert (=> b!5583803 (= res!2369533 (not (is-ElementMatch!15568 r!7292)))))

(assert (=> b!5583803 (= e!3445234 e!3445233)))

(declare-fun b!5583804 () Bool)

(assert (=> b!5583804 (= e!3445233 e!3445235)))

(declare-fun res!2369528 () Bool)

(assert (=> b!5583804 (=> (not res!2369528) (not e!3445235))))

(assert (=> b!5583804 (= res!2369528 (not lt!2254196))))

(declare-fun b!5583805 () Bool)

(declare-fun res!2369535 () Bool)

(assert (=> b!5583805 (=> (not res!2369535) (not e!3445237))))

(assert (=> b!5583805 (= res!2369535 (not call!417757))))

(declare-fun b!5583806 () Bool)

(declare-fun res!2369530 () Bool)

(assert (=> b!5583806 (=> (not res!2369530) (not e!3445237))))

(assert (=> b!5583806 (= res!2369530 (isEmpty!34696 (tail!11004 s!2326)))))

(declare-fun b!5583807 () Bool)

(declare-fun res!2369532 () Bool)

(assert (=> b!5583807 (=> res!2369532 e!3445236)))

(assert (=> b!5583807 (= res!2369532 (not (isEmpty!34696 (tail!11004 s!2326))))))

(assert (= (and d!1764922 c!977968) b!5583799))

(assert (= (and d!1764922 (not c!977968)) b!5583796))

(assert (= (and d!1764922 c!977969) b!5583802))

(assert (= (and d!1764922 (not c!977969)) b!5583795))

(assert (= (and b!5583795 c!977970) b!5583794))

(assert (= (and b!5583795 (not c!977970)) b!5583803))

(assert (= (and b!5583803 (not res!2369533)) b!5583798))

(assert (= (and b!5583798 res!2369529) b!5583805))

(assert (= (and b!5583805 res!2369535) b!5583806))

(assert (= (and b!5583806 res!2369530) b!5583800))

(assert (= (and b!5583798 (not res!2369534)) b!5583804))

(assert (= (and b!5583804 res!2369528) b!5583801))

(assert (= (and b!5583801 (not res!2369531)) b!5583807))

(assert (= (and b!5583807 (not res!2369532)) b!5583797))

(assert (= (or b!5583802 b!5583801 b!5583805) bm!417752))

(assert (=> b!5583807 m!6565022))

(assert (=> b!5583807 m!6565022))

(declare-fun m!6565144 () Bool)

(assert (=> b!5583807 m!6565144))

(assert (=> d!1764922 m!6565014))

(assert (=> d!1764922 m!6564738))

(assert (=> b!5583796 m!6565018))

(assert (=> b!5583796 m!6565018))

(declare-fun m!6565146 () Bool)

(assert (=> b!5583796 m!6565146))

(assert (=> b!5583796 m!6565022))

(assert (=> b!5583796 m!6565146))

(assert (=> b!5583796 m!6565022))

(declare-fun m!6565148 () Bool)

(assert (=> b!5583796 m!6565148))

(assert (=> bm!417752 m!6565014))

(declare-fun m!6565150 () Bool)

(assert (=> b!5583799 m!6565150))

(assert (=> b!5583806 m!6565022))

(assert (=> b!5583806 m!6565022))

(assert (=> b!5583806 m!6565144))

(assert (=> b!5583797 m!6565018))

(assert (=> b!5583800 m!6565018))

(assert (=> b!5583340 d!1764922))

(declare-fun d!1764924 () Bool)

(assert (=> d!1764924 (= (matchR!7753 r!7292 s!2326) (matchRSpec!2671 r!7292 s!2326))))

(declare-fun lt!2254199 () Unit!155652)

(declare-fun choose!42330 (Regex!15568 List!63004) Unit!155652)

(assert (=> d!1764924 (= lt!2254199 (choose!42330 r!7292 s!2326))))

(assert (=> d!1764924 (validRegex!7304 r!7292)))

(assert (=> d!1764924 (= (mainMatchTheorem!2671 r!7292 s!2326) lt!2254199)))

(declare-fun bs!1291428 () Bool)

(assert (= bs!1291428 d!1764924))

(assert (=> bs!1291428 m!6564716))

(assert (=> bs!1291428 m!6564714))

(declare-fun m!6565152 () Bool)

(assert (=> bs!1291428 m!6565152))

(assert (=> bs!1291428 m!6564738))

(assert (=> b!5583340 d!1764924))

(declare-fun d!1764926 () Bool)

(declare-fun lt!2254202 () Regex!15568)

(assert (=> d!1764926 (validRegex!7304 lt!2254202)))

(assert (=> d!1764926 (= lt!2254202 (generalisedUnion!1431 (unfocusZipperList!996 zl!343)))))

(assert (=> d!1764926 (= (unfocusZipper!1310 zl!343) lt!2254202)))

(declare-fun bs!1291429 () Bool)

(assert (= bs!1291429 d!1764926))

(declare-fun m!6565154 () Bool)

(assert (=> bs!1291429 m!6565154))

(assert (=> bs!1291429 m!6564740))

(assert (=> bs!1291429 m!6564740))

(assert (=> bs!1291429 m!6564742))

(assert (=> b!5583350 d!1764926))

(declare-fun d!1764928 () Bool)

(assert (=> d!1764928 (= (nullable!5600 (regTwo!31649 (regOne!31648 r!7292))) (nullableFct!1711 (regTwo!31649 (regOne!31648 r!7292))))))

(declare-fun bs!1291430 () Bool)

(assert (= bs!1291430 d!1764928))

(declare-fun m!6565156 () Bool)

(assert (=> bs!1291430 m!6565156))

(assert (=> b!5583331 d!1764928))

(declare-fun d!1764930 () Bool)

(assert (=> d!1764930 (= (flatMap!1181 lt!2254052 lambda!299491) (choose!42324 lt!2254052 lambda!299491))))

(declare-fun bs!1291431 () Bool)

(assert (= bs!1291431 d!1764930))

(declare-fun m!6565158 () Bool)

(assert (=> bs!1291431 m!6565158))

(assert (=> b!5583331 d!1764930))

(declare-fun b!5583808 () Bool)

(declare-fun e!3445240 () Bool)

(assert (=> b!5583808 (= e!3445240 (nullable!5600 (h!69327 (exprs!5452 lt!2254049))))))

(declare-fun d!1764932 () Bool)

(declare-fun c!977971 () Bool)

(assert (=> d!1764932 (= c!977971 e!3445240)))

(declare-fun res!2369536 () Bool)

(assert (=> d!1764932 (=> (not res!2369536) (not e!3445240))))

(assert (=> d!1764932 (= res!2369536 (is-Cons!62879 (exprs!5452 lt!2254049)))))

(declare-fun e!3445239 () (Set Context!9904))

(assert (=> d!1764932 (= (derivationStepZipperUp!836 lt!2254049 (h!69328 s!2326)) e!3445239)))

(declare-fun b!5583809 () Bool)

(declare-fun call!417758 () (Set Context!9904))

(assert (=> b!5583809 (= e!3445239 (set.union call!417758 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 lt!2254049))) (h!69328 s!2326))))))

(declare-fun bm!417753 () Bool)

(assert (=> bm!417753 (= call!417758 (derivationStepZipperDown!910 (h!69327 (exprs!5452 lt!2254049)) (Context!9905 (t!376276 (exprs!5452 lt!2254049))) (h!69328 s!2326)))))

(declare-fun b!5583810 () Bool)

(declare-fun e!3445241 () (Set Context!9904))

(assert (=> b!5583810 (= e!3445241 (as set.empty (Set Context!9904)))))

(declare-fun b!5583811 () Bool)

(assert (=> b!5583811 (= e!3445239 e!3445241)))

(declare-fun c!977972 () Bool)

(assert (=> b!5583811 (= c!977972 (is-Cons!62879 (exprs!5452 lt!2254049)))))

(declare-fun b!5583812 () Bool)

(assert (=> b!5583812 (= e!3445241 call!417758)))

(assert (= (and d!1764932 res!2369536) b!5583808))

(assert (= (and d!1764932 c!977971) b!5583809))

(assert (= (and d!1764932 (not c!977971)) b!5583811))

(assert (= (and b!5583811 c!977972) b!5583812))

(assert (= (and b!5583811 (not c!977972)) b!5583810))

(assert (= (or b!5583809 b!5583812) bm!417753))

(declare-fun m!6565160 () Bool)

(assert (=> b!5583808 m!6565160))

(declare-fun m!6565162 () Bool)

(assert (=> b!5583809 m!6565162))

(declare-fun m!6565164 () Bool)

(assert (=> bm!417753 m!6565164))

(assert (=> b!5583331 d!1764932))

(declare-fun d!1764934 () Bool)

(assert (=> d!1764934 (= (flatMap!1181 lt!2254052 lambda!299491) (dynLambda!24591 lambda!299491 lt!2254058))))

(declare-fun lt!2254203 () Unit!155652)

(assert (=> d!1764934 (= lt!2254203 (choose!42325 lt!2254052 lt!2254058 lambda!299491))))

(assert (=> d!1764934 (= lt!2254052 (set.insert lt!2254058 (as set.empty (Set Context!9904))))))

(assert (=> d!1764934 (= (lemmaFlatMapOnSingletonSet!713 lt!2254052 lt!2254058 lambda!299491) lt!2254203)))

(declare-fun b_lambda!211597 () Bool)

(assert (=> (not b_lambda!211597) (not d!1764934)))

(declare-fun bs!1291432 () Bool)

(assert (= bs!1291432 d!1764934))

(assert (=> bs!1291432 m!6564768))

(declare-fun m!6565166 () Bool)

(assert (=> bs!1291432 m!6565166))

(declare-fun m!6565168 () Bool)

(assert (=> bs!1291432 m!6565168))

(assert (=> bs!1291432 m!6564754))

(assert (=> b!5583331 d!1764934))

(declare-fun d!1764936 () Bool)

(assert (=> d!1764936 (= (flatMap!1181 lt!2254060 lambda!299491) (choose!42324 lt!2254060 lambda!299491))))

(declare-fun bs!1291433 () Bool)

(assert (= bs!1291433 d!1764936))

(declare-fun m!6565170 () Bool)

(assert (=> bs!1291433 m!6565170))

(assert (=> b!5583331 d!1764936))

(declare-fun b!5583813 () Bool)

(declare-fun e!3445243 () Bool)

(assert (=> b!5583813 (= e!3445243 (nullable!5600 (h!69327 (exprs!5452 lt!2254058))))))

(declare-fun d!1764938 () Bool)

(declare-fun c!977973 () Bool)

(assert (=> d!1764938 (= c!977973 e!3445243)))

(declare-fun res!2369537 () Bool)

(assert (=> d!1764938 (=> (not res!2369537) (not e!3445243))))

(assert (=> d!1764938 (= res!2369537 (is-Cons!62879 (exprs!5452 lt!2254058)))))

(declare-fun e!3445242 () (Set Context!9904))

(assert (=> d!1764938 (= (derivationStepZipperUp!836 lt!2254058 (h!69328 s!2326)) e!3445242)))

(declare-fun call!417759 () (Set Context!9904))

(declare-fun b!5583814 () Bool)

(assert (=> b!5583814 (= e!3445242 (set.union call!417759 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 lt!2254058))) (h!69328 s!2326))))))

(declare-fun bm!417754 () Bool)

(assert (=> bm!417754 (= call!417759 (derivationStepZipperDown!910 (h!69327 (exprs!5452 lt!2254058)) (Context!9905 (t!376276 (exprs!5452 lt!2254058))) (h!69328 s!2326)))))

(declare-fun b!5583815 () Bool)

(declare-fun e!3445244 () (Set Context!9904))

(assert (=> b!5583815 (= e!3445244 (as set.empty (Set Context!9904)))))

(declare-fun b!5583816 () Bool)

(assert (=> b!5583816 (= e!3445242 e!3445244)))

(declare-fun c!977974 () Bool)

(assert (=> b!5583816 (= c!977974 (is-Cons!62879 (exprs!5452 lt!2254058)))))

(declare-fun b!5583817 () Bool)

(assert (=> b!5583817 (= e!3445244 call!417759)))

(assert (= (and d!1764938 res!2369537) b!5583813))

(assert (= (and d!1764938 c!977973) b!5583814))

(assert (= (and d!1764938 (not c!977973)) b!5583816))

(assert (= (and b!5583816 c!977974) b!5583817))

(assert (= (and b!5583816 (not c!977974)) b!5583815))

(assert (= (or b!5583814 b!5583817) bm!417754))

(declare-fun m!6565172 () Bool)

(assert (=> b!5583813 m!6565172))

(declare-fun m!6565174 () Bool)

(assert (=> b!5583814 m!6565174))

(declare-fun m!6565176 () Bool)

(assert (=> bm!417754 m!6565176))

(assert (=> b!5583331 d!1764938))

(declare-fun bs!1291434 () Bool)

(declare-fun d!1764940 () Bool)

(assert (= bs!1291434 (and d!1764940 b!5583357)))

(declare-fun lambda!299537 () Int)

(assert (=> bs!1291434 (= lambda!299537 lambda!299491)))

(assert (=> d!1764940 true))

(assert (=> d!1764940 (= (derivationStepZipper!1667 lt!2254060 (h!69328 s!2326)) (flatMap!1181 lt!2254060 lambda!299537))))

(declare-fun bs!1291435 () Bool)

(assert (= bs!1291435 d!1764940))

(declare-fun m!6565178 () Bool)

(assert (=> bs!1291435 m!6565178))

(assert (=> b!5583331 d!1764940))

(declare-fun d!1764942 () Bool)

(assert (=> d!1764942 (= (nullable!5600 (regOne!31649 (regOne!31648 r!7292))) (nullableFct!1711 (regOne!31649 (regOne!31648 r!7292))))))

(declare-fun bs!1291436 () Bool)

(assert (= bs!1291436 d!1764942))

(declare-fun m!6565180 () Bool)

(assert (=> bs!1291436 m!6565180))

(assert (=> b!5583331 d!1764942))

(declare-fun d!1764944 () Bool)

(assert (=> d!1764944 (= (flatMap!1181 lt!2254060 lambda!299491) (dynLambda!24591 lambda!299491 lt!2254049))))

(declare-fun lt!2254204 () Unit!155652)

(assert (=> d!1764944 (= lt!2254204 (choose!42325 lt!2254060 lt!2254049 lambda!299491))))

(assert (=> d!1764944 (= lt!2254060 (set.insert lt!2254049 (as set.empty (Set Context!9904))))))

(assert (=> d!1764944 (= (lemmaFlatMapOnSingletonSet!713 lt!2254060 lt!2254049 lambda!299491) lt!2254204)))

(declare-fun b_lambda!211599 () Bool)

(assert (=> (not b_lambda!211599) (not d!1764944)))

(declare-fun bs!1291437 () Bool)

(assert (= bs!1291437 d!1764944))

(assert (=> bs!1291437 m!6564756))

(declare-fun m!6565182 () Bool)

(assert (=> bs!1291437 m!6565182))

(declare-fun m!6565184 () Bool)

(assert (=> bs!1291437 m!6565184))

(assert (=> bs!1291437 m!6564752))

(assert (=> b!5583331 d!1764944))

(declare-fun d!1764946 () Bool)

(assert (=> d!1764946 (= (isEmpty!34692 (t!376276 (exprs!5452 (h!69329 zl!343)))) (is-Nil!62879 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> b!5583341 d!1764946))

(declare-fun e!3445247 () Bool)

(assert (=> b!5583352 (= tp!1544712 e!3445247)))

(declare-fun b!5583830 () Bool)

(assert (=> b!5583830 (= e!3445247 tp_is_empty!40389)))

(declare-fun b!5583833 () Bool)

(declare-fun tp!1544761 () Bool)

(declare-fun tp!1544762 () Bool)

(assert (=> b!5583833 (= e!3445247 (and tp!1544761 tp!1544762))))

(declare-fun b!5583832 () Bool)

(declare-fun tp!1544759 () Bool)

(assert (=> b!5583832 (= e!3445247 tp!1544759)))

(declare-fun b!5583831 () Bool)

(declare-fun tp!1544760 () Bool)

(declare-fun tp!1544758 () Bool)

(assert (=> b!5583831 (= e!3445247 (and tp!1544760 tp!1544758))))

(assert (= (and b!5583352 (is-ElementMatch!15568 (regOne!31648 r!7292))) b!5583830))

(assert (= (and b!5583352 (is-Concat!24413 (regOne!31648 r!7292))) b!5583831))

(assert (= (and b!5583352 (is-Star!15568 (regOne!31648 r!7292))) b!5583832))

(assert (= (and b!5583352 (is-Union!15568 (regOne!31648 r!7292))) b!5583833))

(declare-fun e!3445248 () Bool)

(assert (=> b!5583352 (= tp!1544708 e!3445248)))

(declare-fun b!5583834 () Bool)

(assert (=> b!5583834 (= e!3445248 tp_is_empty!40389)))

(declare-fun b!5583837 () Bool)

(declare-fun tp!1544766 () Bool)

(declare-fun tp!1544767 () Bool)

(assert (=> b!5583837 (= e!3445248 (and tp!1544766 tp!1544767))))

(declare-fun b!5583836 () Bool)

(declare-fun tp!1544764 () Bool)

(assert (=> b!5583836 (= e!3445248 tp!1544764)))

(declare-fun b!5583835 () Bool)

(declare-fun tp!1544765 () Bool)

(declare-fun tp!1544763 () Bool)

(assert (=> b!5583835 (= e!3445248 (and tp!1544765 tp!1544763))))

(assert (= (and b!5583352 (is-ElementMatch!15568 (regTwo!31648 r!7292))) b!5583834))

(assert (= (and b!5583352 (is-Concat!24413 (regTwo!31648 r!7292))) b!5583835))

(assert (= (and b!5583352 (is-Star!15568 (regTwo!31648 r!7292))) b!5583836))

(assert (= (and b!5583352 (is-Union!15568 (regTwo!31648 r!7292))) b!5583837))

(declare-fun e!3445249 () Bool)

(assert (=> b!5583333 (= tp!1544710 e!3445249)))

(declare-fun b!5583838 () Bool)

(assert (=> b!5583838 (= e!3445249 tp_is_empty!40389)))

(declare-fun b!5583841 () Bool)

(declare-fun tp!1544771 () Bool)

(declare-fun tp!1544772 () Bool)

(assert (=> b!5583841 (= e!3445249 (and tp!1544771 tp!1544772))))

(declare-fun b!5583840 () Bool)

(declare-fun tp!1544769 () Bool)

(assert (=> b!5583840 (= e!3445249 tp!1544769)))

(declare-fun b!5583839 () Bool)

(declare-fun tp!1544770 () Bool)

(declare-fun tp!1544768 () Bool)

(assert (=> b!5583839 (= e!3445249 (and tp!1544770 tp!1544768))))

(assert (= (and b!5583333 (is-ElementMatch!15568 (reg!15897 r!7292))) b!5583838))

(assert (= (and b!5583333 (is-Concat!24413 (reg!15897 r!7292))) b!5583839))

(assert (= (and b!5583333 (is-Star!15568 (reg!15897 r!7292))) b!5583840))

(assert (= (and b!5583333 (is-Union!15568 (reg!15897 r!7292))) b!5583841))

(declare-fun b!5583849 () Bool)

(declare-fun e!3445255 () Bool)

(declare-fun tp!1544777 () Bool)

(assert (=> b!5583849 (= e!3445255 tp!1544777)))

(declare-fun e!3445254 () Bool)

(declare-fun tp!1544778 () Bool)

(declare-fun b!5583848 () Bool)

(assert (=> b!5583848 (= e!3445254 (and (inv!82168 (h!69329 (t!376278 zl!343))) e!3445255 tp!1544778))))

(assert (=> b!5583353 (= tp!1544717 e!3445254)))

(assert (= b!5583848 b!5583849))

(assert (= (and b!5583353 (is-Cons!62881 (t!376278 zl!343))) b!5583848))

(declare-fun m!6565186 () Bool)

(assert (=> b!5583848 m!6565186))

(declare-fun condSetEmpty!37180 () Bool)

(assert (=> setNonEmpty!37174 (= condSetEmpty!37180 (= setRest!37174 (as set.empty (Set Context!9904))))))

(declare-fun setRes!37180 () Bool)

(assert (=> setNonEmpty!37174 (= tp!1544716 setRes!37180)))

(declare-fun setIsEmpty!37180 () Bool)

(assert (=> setIsEmpty!37180 setRes!37180))

(declare-fun e!3445258 () Bool)

(declare-fun setElem!37180 () Context!9904)

(declare-fun setNonEmpty!37180 () Bool)

(declare-fun tp!1544784 () Bool)

(assert (=> setNonEmpty!37180 (= setRes!37180 (and tp!1544784 (inv!82168 setElem!37180) e!3445258))))

(declare-fun setRest!37180 () (Set Context!9904))

(assert (=> setNonEmpty!37180 (= setRest!37174 (set.union (set.insert setElem!37180 (as set.empty (Set Context!9904))) setRest!37180))))

(declare-fun b!5583854 () Bool)

(declare-fun tp!1544783 () Bool)

(assert (=> b!5583854 (= e!3445258 tp!1544783)))

(assert (= (and setNonEmpty!37174 condSetEmpty!37180) setIsEmpty!37180))

(assert (= (and setNonEmpty!37174 (not condSetEmpty!37180)) setNonEmpty!37180))

(assert (= setNonEmpty!37180 b!5583854))

(declare-fun m!6565188 () Bool)

(assert (=> setNonEmpty!37180 m!6565188))

(declare-fun e!3445259 () Bool)

(assert (=> b!5583339 (= tp!1544715 e!3445259)))

(declare-fun b!5583855 () Bool)

(assert (=> b!5583855 (= e!3445259 tp_is_empty!40389)))

(declare-fun b!5583858 () Bool)

(declare-fun tp!1544788 () Bool)

(declare-fun tp!1544789 () Bool)

(assert (=> b!5583858 (= e!3445259 (and tp!1544788 tp!1544789))))

(declare-fun b!5583857 () Bool)

(declare-fun tp!1544786 () Bool)

(assert (=> b!5583857 (= e!3445259 tp!1544786)))

(declare-fun b!5583856 () Bool)

(declare-fun tp!1544787 () Bool)

(declare-fun tp!1544785 () Bool)

(assert (=> b!5583856 (= e!3445259 (and tp!1544787 tp!1544785))))

(assert (= (and b!5583339 (is-ElementMatch!15568 (regOne!31649 r!7292))) b!5583855))

(assert (= (and b!5583339 (is-Concat!24413 (regOne!31649 r!7292))) b!5583856))

(assert (= (and b!5583339 (is-Star!15568 (regOne!31649 r!7292))) b!5583857))

(assert (= (and b!5583339 (is-Union!15568 (regOne!31649 r!7292))) b!5583858))

(declare-fun e!3445260 () Bool)

(assert (=> b!5583339 (= tp!1544713 e!3445260)))

(declare-fun b!5583859 () Bool)

(assert (=> b!5583859 (= e!3445260 tp_is_empty!40389)))

(declare-fun b!5583862 () Bool)

(declare-fun tp!1544793 () Bool)

(declare-fun tp!1544794 () Bool)

(assert (=> b!5583862 (= e!3445260 (and tp!1544793 tp!1544794))))

(declare-fun b!5583861 () Bool)

(declare-fun tp!1544791 () Bool)

(assert (=> b!5583861 (= e!3445260 tp!1544791)))

(declare-fun b!5583860 () Bool)

(declare-fun tp!1544792 () Bool)

(declare-fun tp!1544790 () Bool)

(assert (=> b!5583860 (= e!3445260 (and tp!1544792 tp!1544790))))

(assert (= (and b!5583339 (is-ElementMatch!15568 (regTwo!31649 r!7292))) b!5583859))

(assert (= (and b!5583339 (is-Concat!24413 (regTwo!31649 r!7292))) b!5583860))

(assert (= (and b!5583339 (is-Star!15568 (regTwo!31649 r!7292))) b!5583861))

(assert (= (and b!5583339 (is-Union!15568 (regTwo!31649 r!7292))) b!5583862))

(declare-fun b!5583867 () Bool)

(declare-fun e!3445263 () Bool)

(declare-fun tp!1544797 () Bool)

(assert (=> b!5583867 (= e!3445263 (and tp_is_empty!40389 tp!1544797))))

(assert (=> b!5583349 (= tp!1544711 e!3445263)))

(assert (= (and b!5583349 (is-Cons!62880 (t!376277 s!2326))) b!5583867))

(declare-fun b!5583872 () Bool)

(declare-fun e!3445266 () Bool)

(declare-fun tp!1544802 () Bool)

(declare-fun tp!1544803 () Bool)

(assert (=> b!5583872 (= e!3445266 (and tp!1544802 tp!1544803))))

(assert (=> b!5583360 (= tp!1544709 e!3445266)))

(assert (= (and b!5583360 (is-Cons!62879 (exprs!5452 (h!69329 zl!343)))) b!5583872))

(declare-fun b!5583873 () Bool)

(declare-fun e!3445267 () Bool)

(declare-fun tp!1544804 () Bool)

(declare-fun tp!1544805 () Bool)

(assert (=> b!5583873 (= e!3445267 (and tp!1544804 tp!1544805))))

(assert (=> b!5583355 (= tp!1544714 e!3445267)))

(assert (= (and b!5583355 (is-Cons!62879 (exprs!5452 setElem!37174))) b!5583873))

(declare-fun b_lambda!211601 () Bool)

(assert (= b_lambda!211599 (or b!5583357 b_lambda!211601)))

(declare-fun bs!1291438 () Bool)

(declare-fun d!1764948 () Bool)

(assert (= bs!1291438 (and d!1764948 b!5583357)))

(assert (=> bs!1291438 (= (dynLambda!24591 lambda!299491 lt!2254049) (derivationStepZipperUp!836 lt!2254049 (h!69328 s!2326)))))

(assert (=> bs!1291438 m!6564760))

(assert (=> d!1764944 d!1764948))

(declare-fun b_lambda!211603 () Bool)

(assert (= b_lambda!211595 (or b!5583357 b_lambda!211603)))

(declare-fun bs!1291439 () Bool)

(declare-fun d!1764950 () Bool)

(assert (= bs!1291439 (and d!1764950 b!5583357)))

(assert (=> bs!1291439 (= (dynLambda!24591 lambda!299491 (h!69329 zl!343)) (derivationStepZipperUp!836 (h!69329 zl!343) (h!69328 s!2326)))))

(assert (=> bs!1291439 m!6564786))

(assert (=> d!1764888 d!1764950))

(declare-fun b_lambda!211605 () Bool)

(assert (= b_lambda!211597 (or b!5583357 b_lambda!211605)))

(declare-fun bs!1291440 () Bool)

(declare-fun d!1764952 () Bool)

(assert (= bs!1291440 (and d!1764952 b!5583357)))

(assert (=> bs!1291440 (= (dynLambda!24591 lambda!299491 lt!2254058) (derivationStepZipperUp!836 lt!2254058 (h!69328 s!2326)))))

(assert (=> bs!1291440 m!6564766))

(assert (=> d!1764934 d!1764952))

(push 1)

(assert (not b!5583593))

(assert (not d!1764940))

(assert (not b!5583835))

(assert (not b!5583797))

(assert (not bm!417716))

(assert (not b!5583669))

(assert (not b!5583617))

(assert (not b!5583796))

(assert (not b_lambda!211605))

(assert (not d!1764902))

(assert (not d!1764876))

(assert (not b!5583675))

(assert (not bm!417722))

(assert (not b!5583840))

(assert (not d!1764896))

(assert (not b!5583620))

(assert (not b!5583800))

(assert (not b!5583634))

(assert (not b_lambda!211601))

(assert (not b!5583833))

(assert (not b!5583653))

(assert (not b!5583700))

(assert (not b!5583809))

(assert (not d!1764908))

(assert (not b!5583564))

(assert (not bm!417740))

(assert (not b!5583807))

(assert (not b!5583679))

(assert (not b!5583530))

(assert (not d!1764880))

(assert (not d!1764916))

(assert (not b!5583587))

(assert (not b!5583485))

(assert (not b!5583831))

(assert (not bm!417732))

(assert (not d!1764924))

(assert (not b!5583699))

(assert (not bm!417736))

(assert (not b!5583626))

(assert (not b!5583594))

(assert (not b!5583839))

(assert (not b!5583849))

(assert (not b!5583535))

(assert (not b!5583705))

(assert (not b!5583625))

(assert (not b!5583707))

(assert (not d!1764862))

(assert (not b!5583589))

(assert (not setNonEmpty!37180))

(assert (not b!5583635))

(assert (not d!1764936))

(assert (not b!5583596))

(assert (not d!1764942))

(assert (not d!1764926))

(assert (not b!5583667))

(assert (not b!5583534))

(assert (not b!5583757))

(assert tp_is_empty!40389)

(assert (not bm!417752))

(assert (not bm!417735))

(assert (not b!5583703))

(assert (not d!1764906))

(assert (not b!5583857))

(assert (not b!5583538))

(assert (not b!5583652))

(assert (not d!1764912))

(assert (not b!5583806))

(assert (not b!5583536))

(assert (not bm!417754))

(assert (not b!5583519))

(assert (not b!5583873))

(assert (not b!5583854))

(assert (not b!5583860))

(assert (not b!5583799))

(assert (not b!5583858))

(assert (not d!1764922))

(assert (not b!5583636))

(assert (not d!1764892))

(assert (not bm!417743))

(assert (not b!5583588))

(assert (not b!5583765))

(assert (not bs!1291439))

(assert (not d!1764934))

(assert (not d!1764914))

(assert (not b!5583622))

(assert (not d!1764918))

(assert (not b!5583648))

(assert (not b!5583862))

(assert (not b!5583861))

(assert (not b!5583832))

(assert (not b!5583856))

(assert (not b!5583631))

(assert (not d!1764944))

(assert (not b!5583647))

(assert (not d!1764882))

(assert (not b!5583813))

(assert (not d!1764910))

(assert (not d!1764874))

(assert (not b!5583537))

(assert (not b!5583837))

(assert (not bm!417715))

(assert (not b!5583676))

(assert (not b!5583721))

(assert (not b_lambda!211603))

(assert (not bm!417748))

(assert (not bm!417723))

(assert (not d!1764864))

(assert (not bm!417721))

(assert (not bs!1291440))

(assert (not b!5583808))

(assert (not d!1764868))

(assert (not b!5583678))

(assert (not b!5583539))

(assert (not d!1764870))

(assert (not d!1764888))

(assert (not b!5583624))

(assert (not b!5583668))

(assert (not bm!417731))

(assert (not b!5583720))

(assert (not d!1764900))

(assert (not b!5583836))

(assert (not bm!417742))

(assert (not b!5583814))

(assert (not b!5583677))

(assert (not bm!417741))

(assert (not d!1764858))

(assert (not d!1764872))

(assert (not b!5583533))

(assert (not bm!417753))

(assert (not b!5583872))

(assert (not b!5583722))

(assert (not d!1764850))

(assert (not bm!417749))

(assert (not b!5583848))

(assert (not b!5583591))

(assert (not d!1764852))

(assert (not d!1764928))

(assert (not b!5583867))

(assert (not bs!1291438))

(assert (not d!1764904))

(assert (not d!1764930))

(assert (not b!5583633))

(assert (not b!5583680))

(assert (not b!5583623))

(assert (not d!1764860))

(assert (not b!5583841))

(assert (not d!1764898))

(assert (not bm!417717))

(assert (not b!5583486))

(assert (not b!5583702))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1291484 () Bool)

(declare-fun d!1765058 () Bool)

(assert (= bs!1291484 (and d!1765058 d!1764852)))

(declare-fun lambda!299569 () Int)

(assert (=> bs!1291484 (= lambda!299569 lambda!299509)))

(declare-fun bs!1291485 () Bool)

(assert (= bs!1291485 (and d!1765058 d!1764868)))

(assert (=> bs!1291485 (= lambda!299569 lambda!299512)))

(declare-fun bs!1291486 () Bool)

(assert (= bs!1291486 (and d!1765058 d!1764870)))

(assert (=> bs!1291486 (= lambda!299569 lambda!299515)))

(declare-fun bs!1291487 () Bool)

(assert (= bs!1291487 (and d!1765058 d!1764902)))

(assert (=> bs!1291487 (= lambda!299569 lambda!299519)))

(declare-fun bs!1291488 () Bool)

(assert (= bs!1291488 (and d!1765058 d!1764872)))

(assert (=> bs!1291488 (= lambda!299569 lambda!299518)))

(assert (=> d!1765058 (= (inv!82168 (h!69329 (t!376278 zl!343))) (forall!14736 (exprs!5452 (h!69329 (t!376278 zl!343))) lambda!299569))))

(declare-fun bs!1291489 () Bool)

(assert (= bs!1291489 d!1765058))

(declare-fun m!6565466 () Bool)

(assert (=> bs!1291489 m!6565466))

(assert (=> b!5583848 d!1765058))

(declare-fun d!1765060 () Bool)

(assert (=> d!1765060 (= (isEmpty!34692 (exprs!5452 (h!69329 zl!343))) (is-Nil!62879 (exprs!5452 (h!69329 zl!343))))))

(assert (=> b!5583588 d!1765060))

(declare-fun d!1765062 () Bool)

(assert (=> d!1765062 (= (nullable!5600 (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))) (nullableFct!1711 (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))))))

(declare-fun bs!1291490 () Bool)

(assert (= bs!1291490 d!1765062))

(declare-fun m!6565468 () Bool)

(assert (=> bs!1291490 m!6565468))

(assert (=> b!5583530 d!1765062))

(declare-fun b!5584267 () Bool)

(declare-fun e!3445491 () (Set Context!9904))

(declare-fun call!417817 () (Set Context!9904))

(assert (=> b!5584267 (= e!3445491 call!417817)))

(declare-fun bm!417810 () Bool)

(declare-fun call!417818 () List!63003)

(declare-fun call!417820 () List!63003)

(assert (=> bm!417810 (= call!417818 call!417820)))

(declare-fun b!5584268 () Bool)

(declare-fun e!3445489 () (Set Context!9904))

(assert (=> b!5584268 (= e!3445489 (as set.empty (Set Context!9904)))))

(declare-fun b!5584269 () Bool)

(declare-fun e!3445488 () (Set Context!9904))

(declare-fun call!417816 () (Set Context!9904))

(declare-fun call!417815 () (Set Context!9904))

(assert (=> b!5584269 (= e!3445488 (set.union call!417816 call!417815))))

(declare-fun bm!417811 () Bool)

(declare-fun call!417819 () (Set Context!9904))

(assert (=> bm!417811 (= call!417815 call!417819)))

(declare-fun bm!417812 () Bool)

(assert (=> bm!417812 (= call!417817 call!417815)))

(declare-fun b!5584270 () Bool)

(declare-fun c!978090 () Bool)

(declare-fun e!3445490 () Bool)

(assert (=> b!5584270 (= c!978090 e!3445490)))

(declare-fun res!2369655 () Bool)

(assert (=> b!5584270 (=> (not res!2369655) (not e!3445490))))

(assert (=> b!5584270 (= res!2369655 (is-Concat!24413 (h!69327 (exprs!5452 lt!2254058))))))

(declare-fun e!3445492 () (Set Context!9904))

(assert (=> b!5584270 (= e!3445492 e!3445488)))

(declare-fun b!5584271 () Bool)

(declare-fun e!3445493 () (Set Context!9904))

(assert (=> b!5584271 (= e!3445493 e!3445492)))

(declare-fun c!978091 () Bool)

(assert (=> b!5584271 (= c!978091 (is-Union!15568 (h!69327 (exprs!5452 lt!2254058))))))

(declare-fun b!5584273 () Bool)

(declare-fun c!978092 () Bool)

(assert (=> b!5584273 (= c!978092 (is-Star!15568 (h!69327 (exprs!5452 lt!2254058))))))

(assert (=> b!5584273 (= e!3445491 e!3445489)))

(declare-fun bm!417813 () Bool)

(assert (=> bm!417813 (= call!417816 (derivationStepZipperDown!910 (ite c!978091 (regTwo!31649 (h!69327 (exprs!5452 lt!2254058))) (regOne!31648 (h!69327 (exprs!5452 lt!2254058)))) (ite c!978091 (Context!9905 (t!376276 (exprs!5452 lt!2254058))) (Context!9905 call!417820)) (h!69328 s!2326)))))

(declare-fun b!5584274 () Bool)

(assert (=> b!5584274 (= e!3445488 e!3445491)))

(declare-fun c!978089 () Bool)

(assert (=> b!5584274 (= c!978089 (is-Concat!24413 (h!69327 (exprs!5452 lt!2254058))))))

(declare-fun b!5584275 () Bool)

(assert (=> b!5584275 (= e!3445492 (set.union call!417819 call!417816))))

(declare-fun b!5584276 () Bool)

(assert (=> b!5584276 (= e!3445489 call!417817)))

(declare-fun b!5584277 () Bool)

(assert (=> b!5584277 (= e!3445490 (nullable!5600 (regOne!31648 (h!69327 (exprs!5452 lt!2254058)))))))

(declare-fun b!5584272 () Bool)

(assert (=> b!5584272 (= e!3445493 (set.insert (Context!9905 (t!376276 (exprs!5452 lt!2254058))) (as set.empty (Set Context!9904))))))

(declare-fun d!1765064 () Bool)

(declare-fun c!978093 () Bool)

(assert (=> d!1765064 (= c!978093 (and (is-ElementMatch!15568 (h!69327 (exprs!5452 lt!2254058))) (= (c!977850 (h!69327 (exprs!5452 lt!2254058))) (h!69328 s!2326))))))

(assert (=> d!1765064 (= (derivationStepZipperDown!910 (h!69327 (exprs!5452 lt!2254058)) (Context!9905 (t!376276 (exprs!5452 lt!2254058))) (h!69328 s!2326)) e!3445493)))

(declare-fun bm!417814 () Bool)

(assert (=> bm!417814 (= call!417820 ($colon$colon!1633 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254058)))) (ite (or c!978090 c!978089) (regTwo!31648 (h!69327 (exprs!5452 lt!2254058))) (h!69327 (exprs!5452 lt!2254058)))))))

(declare-fun bm!417815 () Bool)

(assert (=> bm!417815 (= call!417819 (derivationStepZipperDown!910 (ite c!978091 (regOne!31649 (h!69327 (exprs!5452 lt!2254058))) (ite c!978090 (regTwo!31648 (h!69327 (exprs!5452 lt!2254058))) (ite c!978089 (regOne!31648 (h!69327 (exprs!5452 lt!2254058))) (reg!15897 (h!69327 (exprs!5452 lt!2254058)))))) (ite (or c!978091 c!978090) (Context!9905 (t!376276 (exprs!5452 lt!2254058))) (Context!9905 call!417818)) (h!69328 s!2326)))))

(assert (= (and d!1765064 c!978093) b!5584272))

(assert (= (and d!1765064 (not c!978093)) b!5584271))

(assert (= (and b!5584271 c!978091) b!5584275))

(assert (= (and b!5584271 (not c!978091)) b!5584270))

(assert (= (and b!5584270 res!2369655) b!5584277))

(assert (= (and b!5584270 c!978090) b!5584269))

(assert (= (and b!5584270 (not c!978090)) b!5584274))

(assert (= (and b!5584274 c!978089) b!5584267))

(assert (= (and b!5584274 (not c!978089)) b!5584273))

(assert (= (and b!5584273 c!978092) b!5584276))

(assert (= (and b!5584273 (not c!978092)) b!5584268))

(assert (= (or b!5584267 b!5584276) bm!417810))

(assert (= (or b!5584267 b!5584276) bm!417812))

(assert (= (or b!5584269 bm!417810) bm!417814))

(assert (= (or b!5584269 bm!417812) bm!417811))

(assert (= (or b!5584275 b!5584269) bm!417813))

(assert (= (or b!5584275 bm!417811) bm!417815))

(declare-fun m!6565470 () Bool)

(assert (=> b!5584277 m!6565470))

(declare-fun m!6565472 () Bool)

(assert (=> bm!417815 m!6565472))

(declare-fun m!6565474 () Bool)

(assert (=> bm!417813 m!6565474))

(declare-fun m!6565476 () Bool)

(assert (=> b!5584272 m!6565476))

(declare-fun m!6565478 () Bool)

(assert (=> bm!417814 m!6565478))

(assert (=> bm!417754 d!1765064))

(declare-fun d!1765066 () Bool)

(assert (=> d!1765066 (= (nullable!5600 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))) (nullableFct!1711 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun bs!1291491 () Bool)

(assert (= bs!1291491 d!1765066))

(declare-fun m!6565480 () Bool)

(assert (=> bs!1291491 m!6565480))

(assert (=> b!5583667 d!1765066))

(declare-fun d!1765068 () Bool)

(declare-fun lambda!299572 () Int)

(declare-fun exists!2162 ((Set Context!9904) Int) Bool)

(assert (=> d!1765068 (= (nullableZipper!1565 lt!2254070) (exists!2162 lt!2254070 lambda!299572))))

(declare-fun bs!1291492 () Bool)

(assert (= bs!1291492 d!1765068))

(declare-fun m!6565482 () Bool)

(assert (=> bs!1291492 m!6565482))

(assert (=> b!5583485 d!1765068))

(declare-fun d!1765070 () Bool)

(assert (=> d!1765070 (= (isUnion!564 lt!2254167) (is-Union!15568 lt!2254167))))

(assert (=> b!5583625 d!1765070))

(declare-fun d!1765072 () Bool)

(assert (=> d!1765072 (= (head!11910 (exprs!5452 (h!69329 zl!343))) (h!69327 (exprs!5452 (h!69329 zl!343))))))

(assert (=> b!5583596 d!1765072))

(declare-fun d!1765074 () Bool)

(assert (=> d!1765074 (= (isDefined!12280 lt!2254185) (not (isEmpty!34697 lt!2254185)))))

(declare-fun bs!1291493 () Bool)

(assert (= bs!1291493 d!1765074))

(declare-fun m!6565484 () Bool)

(assert (=> bs!1291493 m!6565484))

(assert (=> b!5583703 d!1765074))

(assert (=> b!5583533 d!1764850))

(declare-fun b!5584278 () Bool)

(declare-fun e!3445496 () Bool)

(declare-fun lt!2254251 () Bool)

(assert (=> b!5584278 (= e!3445496 (not lt!2254251))))

(declare-fun d!1765076 () Bool)

(declare-fun e!3445500 () Bool)

(assert (=> d!1765076 e!3445500))

(declare-fun c!978097 () Bool)

(assert (=> d!1765076 (= c!978097 (is-EmptyExpr!15568 (derivativeStep!4418 r!7292 (head!11909 s!2326))))))

(declare-fun e!3445494 () Bool)

(assert (=> d!1765076 (= lt!2254251 e!3445494)))

(declare-fun c!978096 () Bool)

(assert (=> d!1765076 (= c!978096 (isEmpty!34696 (tail!11004 s!2326)))))

(assert (=> d!1765076 (validRegex!7304 (derivativeStep!4418 r!7292 (head!11909 s!2326)))))

(assert (=> d!1765076 (= (matchR!7753 (derivativeStep!4418 r!7292 (head!11909 s!2326)) (tail!11004 s!2326)) lt!2254251)))

(declare-fun b!5584279 () Bool)

(assert (=> b!5584279 (= e!3445500 e!3445496)))

(declare-fun c!978098 () Bool)

(assert (=> b!5584279 (= c!978098 (is-EmptyLang!15568 (derivativeStep!4418 r!7292 (head!11909 s!2326))))))

(declare-fun b!5584280 () Bool)

(assert (=> b!5584280 (= e!3445494 (matchR!7753 (derivativeStep!4418 (derivativeStep!4418 r!7292 (head!11909 s!2326)) (head!11909 (tail!11004 s!2326))) (tail!11004 (tail!11004 s!2326))))))

(declare-fun b!5584281 () Bool)

(declare-fun e!3445498 () Bool)

(assert (=> b!5584281 (= e!3445498 (not (= (head!11909 (tail!11004 s!2326)) (c!977850 (derivativeStep!4418 r!7292 (head!11909 s!2326))))))))

(declare-fun bm!417816 () Bool)

(declare-fun call!417821 () Bool)

(assert (=> bm!417816 (= call!417821 (isEmpty!34696 (tail!11004 s!2326)))))

(declare-fun b!5584282 () Bool)

(declare-fun res!2369662 () Bool)

(declare-fun e!3445495 () Bool)

(assert (=> b!5584282 (=> res!2369662 e!3445495)))

(declare-fun e!3445499 () Bool)

(assert (=> b!5584282 (= res!2369662 e!3445499)))

(declare-fun res!2369657 () Bool)

(assert (=> b!5584282 (=> (not res!2369657) (not e!3445499))))

(assert (=> b!5584282 (= res!2369657 lt!2254251)))

(declare-fun b!5584283 () Bool)

(assert (=> b!5584283 (= e!3445494 (nullable!5600 (derivativeStep!4418 r!7292 (head!11909 s!2326))))))

(declare-fun b!5584284 () Bool)

(assert (=> b!5584284 (= e!3445499 (= (head!11909 (tail!11004 s!2326)) (c!977850 (derivativeStep!4418 r!7292 (head!11909 s!2326)))))))

(declare-fun b!5584285 () Bool)

(declare-fun e!3445497 () Bool)

(assert (=> b!5584285 (= e!3445497 e!3445498)))

(declare-fun res!2369659 () Bool)

(assert (=> b!5584285 (=> res!2369659 e!3445498)))

(assert (=> b!5584285 (= res!2369659 call!417821)))

(declare-fun b!5584286 () Bool)

(assert (=> b!5584286 (= e!3445500 (= lt!2254251 call!417821))))

(declare-fun b!5584287 () Bool)

(declare-fun res!2369661 () Bool)

(assert (=> b!5584287 (=> res!2369661 e!3445495)))

(assert (=> b!5584287 (= res!2369661 (not (is-ElementMatch!15568 (derivativeStep!4418 r!7292 (head!11909 s!2326)))))))

(assert (=> b!5584287 (= e!3445496 e!3445495)))

(declare-fun b!5584288 () Bool)

(assert (=> b!5584288 (= e!3445495 e!3445497)))

(declare-fun res!2369656 () Bool)

(assert (=> b!5584288 (=> (not res!2369656) (not e!3445497))))

(assert (=> b!5584288 (= res!2369656 (not lt!2254251))))

(declare-fun b!5584289 () Bool)

(declare-fun res!2369663 () Bool)

(assert (=> b!5584289 (=> (not res!2369663) (not e!3445499))))

(assert (=> b!5584289 (= res!2369663 (not call!417821))))

(declare-fun b!5584290 () Bool)

(declare-fun res!2369658 () Bool)

(assert (=> b!5584290 (=> (not res!2369658) (not e!3445499))))

(assert (=> b!5584290 (= res!2369658 (isEmpty!34696 (tail!11004 (tail!11004 s!2326))))))

(declare-fun b!5584291 () Bool)

(declare-fun res!2369660 () Bool)

(assert (=> b!5584291 (=> res!2369660 e!3445498)))

(assert (=> b!5584291 (= res!2369660 (not (isEmpty!34696 (tail!11004 (tail!11004 s!2326)))))))

(assert (= (and d!1765076 c!978096) b!5584283))

(assert (= (and d!1765076 (not c!978096)) b!5584280))

(assert (= (and d!1765076 c!978097) b!5584286))

(assert (= (and d!1765076 (not c!978097)) b!5584279))

(assert (= (and b!5584279 c!978098) b!5584278))

(assert (= (and b!5584279 (not c!978098)) b!5584287))

(assert (= (and b!5584287 (not res!2369661)) b!5584282))

(assert (= (and b!5584282 res!2369657) b!5584289))

(assert (= (and b!5584289 res!2369663) b!5584290))

(assert (= (and b!5584290 res!2369658) b!5584284))

(assert (= (and b!5584282 (not res!2369662)) b!5584288))

(assert (= (and b!5584288 res!2369656) b!5584285))

(assert (= (and b!5584285 (not res!2369659)) b!5584291))

(assert (= (and b!5584291 (not res!2369660)) b!5584281))

(assert (= (or b!5584286 b!5584285 b!5584289) bm!417816))

(assert (=> b!5584291 m!6565022))

(declare-fun m!6565486 () Bool)

(assert (=> b!5584291 m!6565486))

(assert (=> b!5584291 m!6565486))

(declare-fun m!6565488 () Bool)

(assert (=> b!5584291 m!6565488))

(assert (=> d!1765076 m!6565022))

(assert (=> d!1765076 m!6565144))

(assert (=> d!1765076 m!6565146))

(declare-fun m!6565490 () Bool)

(assert (=> d!1765076 m!6565490))

(assert (=> b!5584280 m!6565022))

(declare-fun m!6565492 () Bool)

(assert (=> b!5584280 m!6565492))

(assert (=> b!5584280 m!6565146))

(assert (=> b!5584280 m!6565492))

(declare-fun m!6565494 () Bool)

(assert (=> b!5584280 m!6565494))

(assert (=> b!5584280 m!6565022))

(assert (=> b!5584280 m!6565486))

(assert (=> b!5584280 m!6565494))

(assert (=> b!5584280 m!6565486))

(declare-fun m!6565496 () Bool)

(assert (=> b!5584280 m!6565496))

(assert (=> bm!417816 m!6565022))

(assert (=> bm!417816 m!6565144))

(assert (=> b!5584283 m!6565146))

(declare-fun m!6565498 () Bool)

(assert (=> b!5584283 m!6565498))

(assert (=> b!5584290 m!6565022))

(assert (=> b!5584290 m!6565486))

(assert (=> b!5584290 m!6565486))

(assert (=> b!5584290 m!6565488))

(assert (=> b!5584281 m!6565022))

(assert (=> b!5584281 m!6565492))

(assert (=> b!5584284 m!6565022))

(assert (=> b!5584284 m!6565492))

(assert (=> b!5583796 d!1765076))

(declare-fun b!5584312 () Bool)

(declare-fun e!3445514 () Regex!15568)

(assert (=> b!5584312 (= e!3445514 (ite (= (head!11909 s!2326) (c!977850 r!7292)) EmptyExpr!15568 EmptyLang!15568))))

(declare-fun bm!417825 () Bool)

(declare-fun call!417831 () Regex!15568)

(declare-fun call!417833 () Regex!15568)

(assert (=> bm!417825 (= call!417831 call!417833)))

(declare-fun call!417832 () Regex!15568)

(declare-fun call!417830 () Regex!15568)

(declare-fun b!5584313 () Bool)

(declare-fun e!3445513 () Regex!15568)

(assert (=> b!5584313 (= e!3445513 (Union!15568 (Concat!24413 call!417832 (regTwo!31648 r!7292)) call!417830))))

(declare-fun b!5584314 () Bool)

(declare-fun c!978113 () Bool)

(assert (=> b!5584314 (= c!978113 (nullable!5600 (regOne!31648 r!7292)))))

(declare-fun e!3445512 () Regex!15568)

(assert (=> b!5584314 (= e!3445512 e!3445513)))

(declare-fun b!5584315 () Bool)

(declare-fun e!3445511 () Regex!15568)

(assert (=> b!5584315 (= e!3445511 EmptyLang!15568)))

(declare-fun b!5584316 () Bool)

(assert (=> b!5584316 (= e!3445511 e!3445514)))

(declare-fun c!978109 () Bool)

(assert (=> b!5584316 (= c!978109 (is-ElementMatch!15568 r!7292))))

(declare-fun bm!417827 () Bool)

(declare-fun c!978111 () Bool)

(assert (=> bm!417827 (= call!417832 (derivativeStep!4418 (ite c!978111 (regTwo!31649 r!7292) (regOne!31648 r!7292)) (head!11909 s!2326)))))

(declare-fun b!5584317 () Bool)

(declare-fun e!3445515 () Regex!15568)

(assert (=> b!5584317 (= e!3445515 e!3445512)))

(declare-fun c!978110 () Bool)

(assert (=> b!5584317 (= c!978110 (is-Star!15568 r!7292))))

(declare-fun b!5584318 () Bool)

(assert (=> b!5584318 (= e!3445512 (Concat!24413 call!417831 r!7292))))

(declare-fun bm!417828 () Bool)

(assert (=> bm!417828 (= call!417833 (derivativeStep!4418 (ite c!978111 (regOne!31649 r!7292) (ite c!978110 (reg!15897 r!7292) (ite c!978113 (regTwo!31648 r!7292) (regOne!31648 r!7292)))) (head!11909 s!2326)))))

(declare-fun b!5584319 () Bool)

(assert (=> b!5584319 (= e!3445515 (Union!15568 call!417833 call!417832))))

(declare-fun b!5584320 () Bool)

(assert (=> b!5584320 (= e!3445513 (Union!15568 (Concat!24413 call!417830 (regTwo!31648 r!7292)) EmptyLang!15568))))

(declare-fun b!5584321 () Bool)

(assert (=> b!5584321 (= c!978111 (is-Union!15568 r!7292))))

(assert (=> b!5584321 (= e!3445514 e!3445515)))

(declare-fun d!1765078 () Bool)

(declare-fun lt!2254254 () Regex!15568)

(assert (=> d!1765078 (validRegex!7304 lt!2254254)))

(assert (=> d!1765078 (= lt!2254254 e!3445511)))

(declare-fun c!978112 () Bool)

(assert (=> d!1765078 (= c!978112 (or (is-EmptyExpr!15568 r!7292) (is-EmptyLang!15568 r!7292)))))

(assert (=> d!1765078 (validRegex!7304 r!7292)))

(assert (=> d!1765078 (= (derivativeStep!4418 r!7292 (head!11909 s!2326)) lt!2254254)))

(declare-fun bm!417826 () Bool)

(assert (=> bm!417826 (= call!417830 call!417831)))

(assert (= (and d!1765078 c!978112) b!5584315))

(assert (= (and d!1765078 (not c!978112)) b!5584316))

(assert (= (and b!5584316 c!978109) b!5584312))

(assert (= (and b!5584316 (not c!978109)) b!5584321))

(assert (= (and b!5584321 c!978111) b!5584319))

(assert (= (and b!5584321 (not c!978111)) b!5584317))

(assert (= (and b!5584317 c!978110) b!5584318))

(assert (= (and b!5584317 (not c!978110)) b!5584314))

(assert (= (and b!5584314 c!978113) b!5584313))

(assert (= (and b!5584314 (not c!978113)) b!5584320))

(assert (= (or b!5584313 b!5584320) bm!417826))

(assert (= (or b!5584318 bm!417826) bm!417825))

(assert (= (or b!5584319 b!5584313) bm!417827))

(assert (= (or b!5584319 bm!417825) bm!417828))

(declare-fun m!6565500 () Bool)

(assert (=> b!5584314 m!6565500))

(assert (=> bm!417827 m!6565018))

(declare-fun m!6565502 () Bool)

(assert (=> bm!417827 m!6565502))

(assert (=> bm!417828 m!6565018))

(declare-fun m!6565504 () Bool)

(assert (=> bm!417828 m!6565504))

(declare-fun m!6565506 () Bool)

(assert (=> d!1765078 m!6565506))

(assert (=> d!1765078 m!6564738))

(assert (=> b!5583796 d!1765078))

(declare-fun d!1765080 () Bool)

(assert (=> d!1765080 (= (head!11909 s!2326) (h!69328 s!2326))))

(assert (=> b!5583796 d!1765080))

(declare-fun d!1765082 () Bool)

(assert (=> d!1765082 (= (tail!11004 s!2326) (t!376277 s!2326))))

(assert (=> b!5583796 d!1765082))

(declare-fun b!5584322 () Bool)

(declare-fun e!3445517 () Bool)

(declare-fun call!417835 () Bool)

(assert (=> b!5584322 (= e!3445517 call!417835)))

(declare-fun bm!417829 () Bool)

(declare-fun call!417834 () Bool)

(assert (=> bm!417829 (= call!417835 call!417834)))

(declare-fun b!5584323 () Bool)

(declare-fun e!3445519 () Bool)

(assert (=> b!5584323 (= e!3445519 call!417834)))

(declare-fun b!5584324 () Bool)

(declare-fun e!3445518 () Bool)

(declare-fun e!3445521 () Bool)

(assert (=> b!5584324 (= e!3445518 e!3445521)))

(declare-fun res!2369667 () Bool)

(assert (=> b!5584324 (=> (not res!2369667) (not e!3445521))))

(declare-fun call!417836 () Bool)

(assert (=> b!5584324 (= res!2369667 call!417836)))

(declare-fun b!5584325 () Bool)

(declare-fun e!3445522 () Bool)

(declare-fun e!3445516 () Bool)

(assert (=> b!5584325 (= e!3445522 e!3445516)))

(declare-fun c!978114 () Bool)

(assert (=> b!5584325 (= c!978114 (is-Star!15568 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))))))

(declare-fun b!5584326 () Bool)

(declare-fun res!2369664 () Bool)

(assert (=> b!5584326 (=> (not res!2369664) (not e!3445517))))

(assert (=> b!5584326 (= res!2369664 call!417836)))

(declare-fun e!3445520 () Bool)

(assert (=> b!5584326 (= e!3445520 e!3445517)))

(declare-fun d!1765084 () Bool)

(declare-fun res!2369668 () Bool)

(assert (=> d!1765084 (=> res!2369668 e!3445522)))

(assert (=> d!1765084 (= res!2369668 (is-ElementMatch!15568 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))))))

(assert (=> d!1765084 (= (validRegex!7304 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))) e!3445522)))

(declare-fun c!978115 () Bool)

(declare-fun bm!417830 () Bool)

(assert (=> bm!417830 (= call!417836 (validRegex!7304 (ite c!978115 (regOne!31649 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))) (regOne!31648 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))))))))

(declare-fun bm!417831 () Bool)

(assert (=> bm!417831 (= call!417834 (validRegex!7304 (ite c!978114 (reg!15897 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))) (ite c!978115 (regTwo!31649 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))) (regTwo!31648 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292))))))))))

(declare-fun b!5584327 () Bool)

(declare-fun res!2369666 () Bool)

(assert (=> b!5584327 (=> res!2369666 e!3445518)))

(assert (=> b!5584327 (= res!2369666 (not (is-Concat!24413 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292))))))))

(assert (=> b!5584327 (= e!3445520 e!3445518)))

(declare-fun b!5584328 () Bool)

(assert (=> b!5584328 (= e!3445516 e!3445519)))

(declare-fun res!2369665 () Bool)

(assert (=> b!5584328 (= res!2369665 (not (nullable!5600 (reg!15897 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))))))))

(assert (=> b!5584328 (=> (not res!2369665) (not e!3445519))))

(declare-fun b!5584329 () Bool)

(assert (=> b!5584329 (= e!3445516 e!3445520)))

(assert (=> b!5584329 (= c!978115 (is-Union!15568 (ite c!977895 (reg!15897 r!7292) (ite c!977896 (regTwo!31649 r!7292) (regTwo!31648 r!7292)))))))

(declare-fun b!5584330 () Bool)

(assert (=> b!5584330 (= e!3445521 call!417835)))

(assert (= (and d!1765084 (not res!2369668)) b!5584325))

(assert (= (and b!5584325 c!978114) b!5584328))

(assert (= (and b!5584325 (not c!978114)) b!5584329))

(assert (= (and b!5584328 res!2369665) b!5584323))

(assert (= (and b!5584329 c!978115) b!5584326))

(assert (= (and b!5584329 (not c!978115)) b!5584327))

(assert (= (and b!5584326 res!2369664) b!5584322))

(assert (= (and b!5584327 (not res!2369666)) b!5584324))

(assert (= (and b!5584324 res!2369667) b!5584330))

(assert (= (or b!5584322 b!5584330) bm!417829))

(assert (= (or b!5584326 b!5584324) bm!417830))

(assert (= (or b!5584323 bm!417829) bm!417831))

(declare-fun m!6565508 () Bool)

(assert (=> bm!417830 m!6565508))

(declare-fun m!6565510 () Bool)

(assert (=> bm!417831 m!6565510))

(declare-fun m!6565512 () Bool)

(assert (=> b!5584328 m!6565512))

(assert (=> bm!417732 d!1765084))

(declare-fun d!1765086 () Bool)

(assert (=> d!1765086 (= (nullable!5600 (h!69327 (exprs!5452 lt!2254049))) (nullableFct!1711 (h!69327 (exprs!5452 lt!2254049))))))

(declare-fun bs!1291494 () Bool)

(assert (= bs!1291494 d!1765086))

(declare-fun m!6565514 () Bool)

(assert (=> bs!1291494 m!6565514))

(assert (=> b!5583808 d!1765086))

(declare-fun b!5584331 () Bool)

(declare-fun e!3445525 () Bool)

(declare-fun lt!2254255 () Bool)

(assert (=> b!5584331 (= e!3445525 (not lt!2254255))))

(declare-fun d!1765088 () Bool)

(declare-fun e!3445529 () Bool)

(assert (=> d!1765088 e!3445529))

(declare-fun c!978117 () Bool)

(assert (=> d!1765088 (= c!978117 (is-EmptyExpr!15568 (regOne!31648 r!7292)))))

(declare-fun e!3445523 () Bool)

(assert (=> d!1765088 (= lt!2254255 e!3445523)))

(declare-fun c!978116 () Bool)

(assert (=> d!1765088 (= c!978116 (isEmpty!34696 (_1!35968 (get!21651 lt!2254185))))))

(assert (=> d!1765088 (validRegex!7304 (regOne!31648 r!7292))))

(assert (=> d!1765088 (= (matchR!7753 (regOne!31648 r!7292) (_1!35968 (get!21651 lt!2254185))) lt!2254255)))

(declare-fun b!5584332 () Bool)

(assert (=> b!5584332 (= e!3445529 e!3445525)))

(declare-fun c!978118 () Bool)

(assert (=> b!5584332 (= c!978118 (is-EmptyLang!15568 (regOne!31648 r!7292)))))

(declare-fun b!5584333 () Bool)

(assert (=> b!5584333 (= e!3445523 (matchR!7753 (derivativeStep!4418 (regOne!31648 r!7292) (head!11909 (_1!35968 (get!21651 lt!2254185)))) (tail!11004 (_1!35968 (get!21651 lt!2254185)))))))

(declare-fun b!5584334 () Bool)

(declare-fun e!3445527 () Bool)

(assert (=> b!5584334 (= e!3445527 (not (= (head!11909 (_1!35968 (get!21651 lt!2254185))) (c!977850 (regOne!31648 r!7292)))))))

(declare-fun bm!417832 () Bool)

(declare-fun call!417837 () Bool)

(assert (=> bm!417832 (= call!417837 (isEmpty!34696 (_1!35968 (get!21651 lt!2254185))))))

(declare-fun b!5584335 () Bool)

(declare-fun res!2369675 () Bool)

(declare-fun e!3445524 () Bool)

(assert (=> b!5584335 (=> res!2369675 e!3445524)))

(declare-fun e!3445528 () Bool)

(assert (=> b!5584335 (= res!2369675 e!3445528)))

(declare-fun res!2369670 () Bool)

(assert (=> b!5584335 (=> (not res!2369670) (not e!3445528))))

(assert (=> b!5584335 (= res!2369670 lt!2254255)))

(declare-fun b!5584336 () Bool)

(assert (=> b!5584336 (= e!3445523 (nullable!5600 (regOne!31648 r!7292)))))

(declare-fun b!5584337 () Bool)

(assert (=> b!5584337 (= e!3445528 (= (head!11909 (_1!35968 (get!21651 lt!2254185))) (c!977850 (regOne!31648 r!7292))))))

(declare-fun b!5584338 () Bool)

(declare-fun e!3445526 () Bool)

(assert (=> b!5584338 (= e!3445526 e!3445527)))

(declare-fun res!2369672 () Bool)

(assert (=> b!5584338 (=> res!2369672 e!3445527)))

(assert (=> b!5584338 (= res!2369672 call!417837)))

(declare-fun b!5584339 () Bool)

(assert (=> b!5584339 (= e!3445529 (= lt!2254255 call!417837))))

(declare-fun b!5584340 () Bool)

(declare-fun res!2369674 () Bool)

(assert (=> b!5584340 (=> res!2369674 e!3445524)))

(assert (=> b!5584340 (= res!2369674 (not (is-ElementMatch!15568 (regOne!31648 r!7292))))))

(assert (=> b!5584340 (= e!3445525 e!3445524)))

(declare-fun b!5584341 () Bool)

(assert (=> b!5584341 (= e!3445524 e!3445526)))

(declare-fun res!2369669 () Bool)

(assert (=> b!5584341 (=> (not res!2369669) (not e!3445526))))

(assert (=> b!5584341 (= res!2369669 (not lt!2254255))))

(declare-fun b!5584342 () Bool)

(declare-fun res!2369676 () Bool)

(assert (=> b!5584342 (=> (not res!2369676) (not e!3445528))))

(assert (=> b!5584342 (= res!2369676 (not call!417837))))

(declare-fun b!5584343 () Bool)

(declare-fun res!2369671 () Bool)

(assert (=> b!5584343 (=> (not res!2369671) (not e!3445528))))

(assert (=> b!5584343 (= res!2369671 (isEmpty!34696 (tail!11004 (_1!35968 (get!21651 lt!2254185)))))))

(declare-fun b!5584344 () Bool)

(declare-fun res!2369673 () Bool)

(assert (=> b!5584344 (=> res!2369673 e!3445527)))

(assert (=> b!5584344 (= res!2369673 (not (isEmpty!34696 (tail!11004 (_1!35968 (get!21651 lt!2254185))))))))

(assert (= (and d!1765088 c!978116) b!5584336))

(assert (= (and d!1765088 (not c!978116)) b!5584333))

(assert (= (and d!1765088 c!978117) b!5584339))

(assert (= (and d!1765088 (not c!978117)) b!5584332))

(assert (= (and b!5584332 c!978118) b!5584331))

(assert (= (and b!5584332 (not c!978118)) b!5584340))

(assert (= (and b!5584340 (not res!2369674)) b!5584335))

(assert (= (and b!5584335 res!2369670) b!5584342))

(assert (= (and b!5584342 res!2369676) b!5584343))

(assert (= (and b!5584343 res!2369671) b!5584337))

(assert (= (and b!5584335 (not res!2369675)) b!5584341))

(assert (= (and b!5584341 res!2369669) b!5584338))

(assert (= (and b!5584338 (not res!2369672)) b!5584344))

(assert (= (and b!5584344 (not res!2369673)) b!5584334))

(assert (= (or b!5584339 b!5584338 b!5584342) bm!417832))

(declare-fun m!6565516 () Bool)

(assert (=> b!5584344 m!6565516))

(assert (=> b!5584344 m!6565516))

(declare-fun m!6565518 () Bool)

(assert (=> b!5584344 m!6565518))

(declare-fun m!6565520 () Bool)

(assert (=> d!1765088 m!6565520))

(assert (=> d!1765088 m!6565094))

(declare-fun m!6565522 () Bool)

(assert (=> b!5584333 m!6565522))

(assert (=> b!5584333 m!6565522))

(declare-fun m!6565524 () Bool)

(assert (=> b!5584333 m!6565524))

(assert (=> b!5584333 m!6565516))

(assert (=> b!5584333 m!6565524))

(assert (=> b!5584333 m!6565516))

(declare-fun m!6565526 () Bool)

(assert (=> b!5584333 m!6565526))

(assert (=> bm!417832 m!6565520))

(assert (=> b!5584336 m!6565500))

(assert (=> b!5584343 m!6565516))

(assert (=> b!5584343 m!6565516))

(assert (=> b!5584343 m!6565518))

(assert (=> b!5584334 m!6565522))

(assert (=> b!5584337 m!6565522))

(assert (=> b!5583699 d!1765088))

(declare-fun d!1765090 () Bool)

(assert (=> d!1765090 (= (get!21651 lt!2254185) (v!51617 lt!2254185))))

(assert (=> b!5583699 d!1765090))

(declare-fun d!1765092 () Bool)

(assert (=> d!1765092 (= (Exists!2668 lambda!299524) (choose!42327 lambda!299524))))

(declare-fun bs!1291495 () Bool)

(assert (= bs!1291495 d!1765092))

(declare-fun m!6565528 () Bool)

(assert (=> bs!1291495 m!6565528))

(assert (=> d!1764908 d!1765092))

(declare-fun d!1765094 () Bool)

(assert (=> d!1765094 (= (Exists!2668 lambda!299525) (choose!42327 lambda!299525))))

(declare-fun bs!1291496 () Bool)

(assert (= bs!1291496 d!1765094))

(declare-fun m!6565530 () Bool)

(assert (=> bs!1291496 m!6565530))

(assert (=> d!1764908 d!1765094))

(declare-fun bs!1291497 () Bool)

(declare-fun d!1765096 () Bool)

(assert (= bs!1291497 (and d!1765096 d!1764908)))

(declare-fun lambda!299577 () Int)

(assert (=> bs!1291497 (not (= lambda!299577 lambda!299525))))

(declare-fun bs!1291498 () Bool)

(assert (= bs!1291498 (and d!1765096 b!5583761)))

(assert (=> bs!1291498 (not (= lambda!299577 lambda!299534))))

(declare-fun bs!1291499 () Bool)

(assert (= bs!1291499 (and d!1765096 b!5583762)))

(assert (=> bs!1291499 (not (= lambda!299577 lambda!299533))))

(declare-fun bs!1291500 () Bool)

(assert (= bs!1291500 (and d!1765096 b!5583348)))

(assert (=> bs!1291500 (= lambda!299577 lambda!299489)))

(declare-fun bs!1291501 () Bool)

(assert (= bs!1291501 (and d!1765096 d!1764912)))

(assert (=> bs!1291501 (= lambda!299577 lambda!299528)))

(assert (=> bs!1291497 (= lambda!299577 lambda!299524)))

(assert (=> bs!1291500 (not (= lambda!299577 lambda!299490))))

(assert (=> d!1765096 true))

(assert (=> d!1765096 true))

(assert (=> d!1765096 true))

(declare-fun lambda!299578 () Int)

(assert (=> bs!1291497 (= lambda!299578 lambda!299525)))

(assert (=> bs!1291498 (= lambda!299578 lambda!299534)))

(assert (=> bs!1291499 (not (= lambda!299578 lambda!299533))))

(assert (=> bs!1291500 (not (= lambda!299578 lambda!299489))))

(assert (=> bs!1291501 (not (= lambda!299578 lambda!299528))))

(declare-fun bs!1291502 () Bool)

(assert (= bs!1291502 d!1765096))

(assert (=> bs!1291502 (not (= lambda!299578 lambda!299577))))

(assert (=> bs!1291497 (not (= lambda!299578 lambda!299524))))

(assert (=> bs!1291500 (= lambda!299578 lambda!299490)))

(assert (=> d!1765096 true))

(assert (=> d!1765096 true))

(assert (=> d!1765096 true))

(assert (=> d!1765096 (= (Exists!2668 lambda!299577) (Exists!2668 lambda!299578))))

(assert (=> d!1765096 true))

(declare-fun _$90!1307 () Unit!155652)

(assert (=> d!1765096 (= (choose!42328 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326) _$90!1307)))

(declare-fun m!6565532 () Bool)

(assert (=> bs!1291502 m!6565532))

(declare-fun m!6565534 () Bool)

(assert (=> bs!1291502 m!6565534))

(assert (=> d!1764908 d!1765096))

(declare-fun b!5584353 () Bool)

(declare-fun e!3445535 () Bool)

(declare-fun call!417839 () Bool)

(assert (=> b!5584353 (= e!3445535 call!417839)))

(declare-fun bm!417833 () Bool)

(declare-fun call!417838 () Bool)

(assert (=> bm!417833 (= call!417839 call!417838)))

(declare-fun b!5584354 () Bool)

(declare-fun e!3445537 () Bool)

(assert (=> b!5584354 (= e!3445537 call!417838)))

(declare-fun b!5584355 () Bool)

(declare-fun e!3445536 () Bool)

(declare-fun e!3445539 () Bool)

(assert (=> b!5584355 (= e!3445536 e!3445539)))

(declare-fun res!2369688 () Bool)

(assert (=> b!5584355 (=> (not res!2369688) (not e!3445539))))

(declare-fun call!417840 () Bool)

(assert (=> b!5584355 (= res!2369688 call!417840)))

(declare-fun b!5584356 () Bool)

(declare-fun e!3445540 () Bool)

(declare-fun e!3445534 () Bool)

(assert (=> b!5584356 (= e!3445540 e!3445534)))

(declare-fun c!978119 () Bool)

(assert (=> b!5584356 (= c!978119 (is-Star!15568 (regOne!31648 r!7292)))))

(declare-fun b!5584357 () Bool)

(declare-fun res!2369685 () Bool)

(assert (=> b!5584357 (=> (not res!2369685) (not e!3445535))))

(assert (=> b!5584357 (= res!2369685 call!417840)))

(declare-fun e!3445538 () Bool)

(assert (=> b!5584357 (= e!3445538 e!3445535)))

(declare-fun d!1765098 () Bool)

(declare-fun res!2369689 () Bool)

(assert (=> d!1765098 (=> res!2369689 e!3445540)))

(assert (=> d!1765098 (= res!2369689 (is-ElementMatch!15568 (regOne!31648 r!7292)))))

(assert (=> d!1765098 (= (validRegex!7304 (regOne!31648 r!7292)) e!3445540)))

(declare-fun bm!417834 () Bool)

(declare-fun c!978120 () Bool)

(assert (=> bm!417834 (= call!417840 (validRegex!7304 (ite c!978120 (regOne!31649 (regOne!31648 r!7292)) (regOne!31648 (regOne!31648 r!7292)))))))

(declare-fun bm!417835 () Bool)

(assert (=> bm!417835 (= call!417838 (validRegex!7304 (ite c!978119 (reg!15897 (regOne!31648 r!7292)) (ite c!978120 (regTwo!31649 (regOne!31648 r!7292)) (regTwo!31648 (regOne!31648 r!7292))))))))

(declare-fun b!5584358 () Bool)

(declare-fun res!2369687 () Bool)

(assert (=> b!5584358 (=> res!2369687 e!3445536)))

(assert (=> b!5584358 (= res!2369687 (not (is-Concat!24413 (regOne!31648 r!7292))))))

(assert (=> b!5584358 (= e!3445538 e!3445536)))

(declare-fun b!5584359 () Bool)

(assert (=> b!5584359 (= e!3445534 e!3445537)))

(declare-fun res!2369686 () Bool)

(assert (=> b!5584359 (= res!2369686 (not (nullable!5600 (reg!15897 (regOne!31648 r!7292)))))))

(assert (=> b!5584359 (=> (not res!2369686) (not e!3445537))))

(declare-fun b!5584360 () Bool)

(assert (=> b!5584360 (= e!3445534 e!3445538)))

(assert (=> b!5584360 (= c!978120 (is-Union!15568 (regOne!31648 r!7292)))))

(declare-fun b!5584361 () Bool)

(assert (=> b!5584361 (= e!3445539 call!417839)))

(assert (= (and d!1765098 (not res!2369689)) b!5584356))

(assert (= (and b!5584356 c!978119) b!5584359))

(assert (= (and b!5584356 (not c!978119)) b!5584360))

(assert (= (and b!5584359 res!2369686) b!5584354))

(assert (= (and b!5584360 c!978120) b!5584357))

(assert (= (and b!5584360 (not c!978120)) b!5584358))

(assert (= (and b!5584357 res!2369685) b!5584353))

(assert (= (and b!5584358 (not res!2369687)) b!5584355))

(assert (= (and b!5584355 res!2369688) b!5584361))

(assert (= (or b!5584353 b!5584361) bm!417833))

(assert (= (or b!5584357 b!5584355) bm!417834))

(assert (= (or b!5584354 bm!417833) bm!417835))

(declare-fun m!6565536 () Bool)

(assert (=> bm!417834 m!6565536))

(declare-fun m!6565538 () Bool)

(assert (=> bm!417835 m!6565538))

(declare-fun m!6565540 () Bool)

(assert (=> b!5584359 m!6565540))

(assert (=> d!1764908 d!1765098))

(declare-fun d!1765100 () Bool)

(assert (=> d!1765100 (= (isEmpty!34692 (tail!11005 (unfocusZipperList!996 zl!343))) (is-Nil!62879 (tail!11005 (unfocusZipperList!996 zl!343))))))

(assert (=> b!5583617 d!1765100))

(declare-fun d!1765102 () Bool)

(assert (=> d!1765102 (= (tail!11005 (unfocusZipperList!996 zl!343)) (t!376276 (unfocusZipperList!996 zl!343)))))

(assert (=> b!5583617 d!1765102))

(declare-fun d!1765104 () Bool)

(assert (=> d!1765104 (= (isEmpty!34696 (t!376277 s!2326)) (is-Nil!62880 (t!376277 s!2326)))))

(assert (=> d!1764876 d!1765104))

(declare-fun bs!1291503 () Bool)

(declare-fun d!1765106 () Bool)

(assert (= bs!1291503 (and d!1765106 d!1765068)))

(declare-fun lambda!299579 () Int)

(assert (=> bs!1291503 (= lambda!299579 lambda!299572)))

(assert (=> d!1765106 (= (nullableZipper!1565 lt!2254046) (exists!2162 lt!2254046 lambda!299579))))

(declare-fun bs!1291504 () Bool)

(assert (= bs!1291504 d!1765106))

(declare-fun m!6565542 () Bool)

(assert (=> bs!1291504 m!6565542))

(assert (=> b!5583678 d!1765106))

(assert (=> b!5583800 d!1765080))

(declare-fun d!1765108 () Bool)

(declare-fun c!978121 () Bool)

(assert (=> d!1765108 (= c!978121 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445541 () Bool)

(assert (=> d!1765108 (= (matchZipper!1706 (derivationStepZipper!1667 (set.union lt!2254046 lt!2254070) (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445541)))

(declare-fun b!5584362 () Bool)

(assert (=> b!5584362 (= e!3445541 (nullableZipper!1565 (derivationStepZipper!1667 (set.union lt!2254046 lt!2254070) (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584363 () Bool)

(assert (=> b!5584363 (= e!3445541 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 (set.union lt!2254046 lt!2254070) (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765108 c!978121) b!5584362))

(assert (= (and d!1765108 (not c!978121)) b!5584363))

(assert (=> d!1765108 m!6564922))

(declare-fun m!6565544 () Bool)

(assert (=> d!1765108 m!6565544))

(assert (=> b!5584362 m!6565134))

(declare-fun m!6565546 () Bool)

(assert (=> b!5584362 m!6565546))

(assert (=> b!5584363 m!6564922))

(declare-fun m!6565548 () Bool)

(assert (=> b!5584363 m!6565548))

(assert (=> b!5584363 m!6565134))

(assert (=> b!5584363 m!6565548))

(declare-fun m!6565550 () Bool)

(assert (=> b!5584363 m!6565550))

(assert (=> b!5584363 m!6564922))

(declare-fun m!6565552 () Bool)

(assert (=> b!5584363 m!6565552))

(assert (=> b!5584363 m!6565550))

(assert (=> b!5584363 m!6565552))

(declare-fun m!6565554 () Bool)

(assert (=> b!5584363 m!6565554))

(assert (=> b!5583722 d!1765108))

(declare-fun bs!1291505 () Bool)

(declare-fun d!1765110 () Bool)

(assert (= bs!1291505 (and d!1765110 b!5583357)))

(declare-fun lambda!299580 () Int)

(assert (=> bs!1291505 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299580 lambda!299491))))

(declare-fun bs!1291506 () Bool)

(assert (= bs!1291506 (and d!1765110 d!1764940)))

(assert (=> bs!1291506 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299580 lambda!299537))))

(assert (=> d!1765110 true))

(assert (=> d!1765110 (= (derivationStepZipper!1667 (set.union lt!2254046 lt!2254070) (head!11909 (t!376277 s!2326))) (flatMap!1181 (set.union lt!2254046 lt!2254070) lambda!299580))))

(declare-fun bs!1291507 () Bool)

(assert (= bs!1291507 d!1765110))

(declare-fun m!6565556 () Bool)

(assert (=> bs!1291507 m!6565556))

(assert (=> b!5583722 d!1765110))

(declare-fun d!1765112 () Bool)

(assert (=> d!1765112 (= (head!11909 (t!376277 s!2326)) (h!69328 (t!376277 s!2326)))))

(assert (=> b!5583722 d!1765112))

(declare-fun d!1765114 () Bool)

(assert (=> d!1765114 (= (tail!11004 (t!376277 s!2326)) (t!376277 (t!376277 s!2326)))))

(assert (=> b!5583722 d!1765114))

(declare-fun b!5584364 () Bool)

(declare-fun e!3445543 () Bool)

(declare-fun call!417842 () Bool)

(assert (=> b!5584364 (= e!3445543 call!417842)))

(declare-fun bm!417836 () Bool)

(declare-fun call!417841 () Bool)

(assert (=> bm!417836 (= call!417842 call!417841)))

(declare-fun b!5584365 () Bool)

(declare-fun e!3445545 () Bool)

(assert (=> b!5584365 (= e!3445545 call!417841)))

(declare-fun b!5584366 () Bool)

(declare-fun e!3445544 () Bool)

(declare-fun e!3445547 () Bool)

(assert (=> b!5584366 (= e!3445544 e!3445547)))

(declare-fun res!2369693 () Bool)

(assert (=> b!5584366 (=> (not res!2369693) (not e!3445547))))

(declare-fun call!417843 () Bool)

(assert (=> b!5584366 (= res!2369693 call!417843)))

(declare-fun b!5584367 () Bool)

(declare-fun e!3445548 () Bool)

(declare-fun e!3445542 () Bool)

(assert (=> b!5584367 (= e!3445548 e!3445542)))

(declare-fun c!978122 () Bool)

(assert (=> b!5584367 (= c!978122 (is-Star!15568 lt!2254167))))

(declare-fun b!5584368 () Bool)

(declare-fun res!2369690 () Bool)

(assert (=> b!5584368 (=> (not res!2369690) (not e!3445543))))

(assert (=> b!5584368 (= res!2369690 call!417843)))

(declare-fun e!3445546 () Bool)

(assert (=> b!5584368 (= e!3445546 e!3445543)))

(declare-fun d!1765116 () Bool)

(declare-fun res!2369694 () Bool)

(assert (=> d!1765116 (=> res!2369694 e!3445548)))

(assert (=> d!1765116 (= res!2369694 (is-ElementMatch!15568 lt!2254167))))

(assert (=> d!1765116 (= (validRegex!7304 lt!2254167) e!3445548)))

(declare-fun bm!417837 () Bool)

(declare-fun c!978123 () Bool)

(assert (=> bm!417837 (= call!417843 (validRegex!7304 (ite c!978123 (regOne!31649 lt!2254167) (regOne!31648 lt!2254167))))))

(declare-fun bm!417838 () Bool)

(assert (=> bm!417838 (= call!417841 (validRegex!7304 (ite c!978122 (reg!15897 lt!2254167) (ite c!978123 (regTwo!31649 lt!2254167) (regTwo!31648 lt!2254167)))))))

(declare-fun b!5584369 () Bool)

(declare-fun res!2369692 () Bool)

(assert (=> b!5584369 (=> res!2369692 e!3445544)))

(assert (=> b!5584369 (= res!2369692 (not (is-Concat!24413 lt!2254167)))))

(assert (=> b!5584369 (= e!3445546 e!3445544)))

(declare-fun b!5584370 () Bool)

(assert (=> b!5584370 (= e!3445542 e!3445545)))

(declare-fun res!2369691 () Bool)

(assert (=> b!5584370 (= res!2369691 (not (nullable!5600 (reg!15897 lt!2254167))))))

(assert (=> b!5584370 (=> (not res!2369691) (not e!3445545))))

(declare-fun b!5584371 () Bool)

(assert (=> b!5584371 (= e!3445542 e!3445546)))

(assert (=> b!5584371 (= c!978123 (is-Union!15568 lt!2254167))))

(declare-fun b!5584372 () Bool)

(assert (=> b!5584372 (= e!3445547 call!417842)))

(assert (= (and d!1765116 (not res!2369694)) b!5584367))

(assert (= (and b!5584367 c!978122) b!5584370))

(assert (= (and b!5584367 (not c!978122)) b!5584371))

(assert (= (and b!5584370 res!2369691) b!5584365))

(assert (= (and b!5584371 c!978123) b!5584368))

(assert (= (and b!5584371 (not c!978123)) b!5584369))

(assert (= (and b!5584368 res!2369690) b!5584364))

(assert (= (and b!5584369 (not res!2369692)) b!5584366))

(assert (= (and b!5584366 res!2369693) b!5584372))

(assert (= (or b!5584364 b!5584372) bm!417836))

(assert (= (or b!5584368 b!5584366) bm!417837))

(assert (= (or b!5584365 bm!417836) bm!417838))

(declare-fun m!6565558 () Bool)

(assert (=> bm!417837 m!6565558))

(declare-fun m!6565560 () Bool)

(assert (=> bm!417838 m!6565560))

(declare-fun m!6565562 () Bool)

(assert (=> b!5584370 m!6565562))

(assert (=> d!1764870 d!1765116))

(declare-fun d!1765118 () Bool)

(declare-fun res!2369699 () Bool)

(declare-fun e!3445553 () Bool)

(assert (=> d!1765118 (=> res!2369699 e!3445553)))

(assert (=> d!1765118 (= res!2369699 (is-Nil!62879 (unfocusZipperList!996 zl!343)))))

(assert (=> d!1765118 (= (forall!14736 (unfocusZipperList!996 zl!343) lambda!299515) e!3445553)))

(declare-fun b!5584377 () Bool)

(declare-fun e!3445554 () Bool)

(assert (=> b!5584377 (= e!3445553 e!3445554)))

(declare-fun res!2369700 () Bool)

(assert (=> b!5584377 (=> (not res!2369700) (not e!3445554))))

(declare-fun dynLambda!24593 (Int Regex!15568) Bool)

(assert (=> b!5584377 (= res!2369700 (dynLambda!24593 lambda!299515 (h!69327 (unfocusZipperList!996 zl!343))))))

(declare-fun b!5584378 () Bool)

(assert (=> b!5584378 (= e!3445554 (forall!14736 (t!376276 (unfocusZipperList!996 zl!343)) lambda!299515))))

(assert (= (and d!1765118 (not res!2369699)) b!5584377))

(assert (= (and b!5584377 res!2369700) b!5584378))

(declare-fun b_lambda!211619 () Bool)

(assert (=> (not b_lambda!211619) (not b!5584377)))

(declare-fun m!6565564 () Bool)

(assert (=> b!5584377 m!6565564))

(declare-fun m!6565566 () Bool)

(assert (=> b!5584378 m!6565566))

(assert (=> d!1764870 d!1765118))

(assert (=> d!1764904 d!1765074))

(declare-fun b!5584379 () Bool)

(declare-fun e!3445557 () Bool)

(declare-fun lt!2254256 () Bool)

(assert (=> b!5584379 (= e!3445557 (not lt!2254256))))

(declare-fun d!1765120 () Bool)

(declare-fun e!3445561 () Bool)

(assert (=> d!1765120 e!3445561))

(declare-fun c!978125 () Bool)

(assert (=> d!1765120 (= c!978125 (is-EmptyExpr!15568 (regOne!31648 r!7292)))))

(declare-fun e!3445555 () Bool)

(assert (=> d!1765120 (= lt!2254256 e!3445555)))

(declare-fun c!978124 () Bool)

(assert (=> d!1765120 (= c!978124 (isEmpty!34696 Nil!62880))))

(assert (=> d!1765120 (validRegex!7304 (regOne!31648 r!7292))))

(assert (=> d!1765120 (= (matchR!7753 (regOne!31648 r!7292) Nil!62880) lt!2254256)))

(declare-fun b!5584380 () Bool)

(assert (=> b!5584380 (= e!3445561 e!3445557)))

(declare-fun c!978126 () Bool)

(assert (=> b!5584380 (= c!978126 (is-EmptyLang!15568 (regOne!31648 r!7292)))))

(declare-fun b!5584381 () Bool)

(assert (=> b!5584381 (= e!3445555 (matchR!7753 (derivativeStep!4418 (regOne!31648 r!7292) (head!11909 Nil!62880)) (tail!11004 Nil!62880)))))

(declare-fun b!5584382 () Bool)

(declare-fun e!3445559 () Bool)

(assert (=> b!5584382 (= e!3445559 (not (= (head!11909 Nil!62880) (c!977850 (regOne!31648 r!7292)))))))

(declare-fun bm!417839 () Bool)

(declare-fun call!417844 () Bool)

(assert (=> bm!417839 (= call!417844 (isEmpty!34696 Nil!62880))))

(declare-fun b!5584383 () Bool)

(declare-fun res!2369707 () Bool)

(declare-fun e!3445556 () Bool)

(assert (=> b!5584383 (=> res!2369707 e!3445556)))

(declare-fun e!3445560 () Bool)

(assert (=> b!5584383 (= res!2369707 e!3445560)))

(declare-fun res!2369702 () Bool)

(assert (=> b!5584383 (=> (not res!2369702) (not e!3445560))))

(assert (=> b!5584383 (= res!2369702 lt!2254256)))

(declare-fun b!5584384 () Bool)

(assert (=> b!5584384 (= e!3445555 (nullable!5600 (regOne!31648 r!7292)))))

(declare-fun b!5584385 () Bool)

(assert (=> b!5584385 (= e!3445560 (= (head!11909 Nil!62880) (c!977850 (regOne!31648 r!7292))))))

(declare-fun b!5584386 () Bool)

(declare-fun e!3445558 () Bool)

(assert (=> b!5584386 (= e!3445558 e!3445559)))

(declare-fun res!2369704 () Bool)

(assert (=> b!5584386 (=> res!2369704 e!3445559)))

(assert (=> b!5584386 (= res!2369704 call!417844)))

(declare-fun b!5584387 () Bool)

(assert (=> b!5584387 (= e!3445561 (= lt!2254256 call!417844))))

(declare-fun b!5584388 () Bool)

(declare-fun res!2369706 () Bool)

(assert (=> b!5584388 (=> res!2369706 e!3445556)))

(assert (=> b!5584388 (= res!2369706 (not (is-ElementMatch!15568 (regOne!31648 r!7292))))))

(assert (=> b!5584388 (= e!3445557 e!3445556)))

(declare-fun b!5584389 () Bool)

(assert (=> b!5584389 (= e!3445556 e!3445558)))

(declare-fun res!2369701 () Bool)

(assert (=> b!5584389 (=> (not res!2369701) (not e!3445558))))

(assert (=> b!5584389 (= res!2369701 (not lt!2254256))))

(declare-fun b!5584390 () Bool)

(declare-fun res!2369708 () Bool)

(assert (=> b!5584390 (=> (not res!2369708) (not e!3445560))))

(assert (=> b!5584390 (= res!2369708 (not call!417844))))

(declare-fun b!5584391 () Bool)

(declare-fun res!2369703 () Bool)

(assert (=> b!5584391 (=> (not res!2369703) (not e!3445560))))

(assert (=> b!5584391 (= res!2369703 (isEmpty!34696 (tail!11004 Nil!62880)))))

(declare-fun b!5584392 () Bool)

(declare-fun res!2369705 () Bool)

(assert (=> b!5584392 (=> res!2369705 e!3445559)))

(assert (=> b!5584392 (= res!2369705 (not (isEmpty!34696 (tail!11004 Nil!62880))))))

(assert (= (and d!1765120 c!978124) b!5584384))

(assert (= (and d!1765120 (not c!978124)) b!5584381))

(assert (= (and d!1765120 c!978125) b!5584387))

(assert (= (and d!1765120 (not c!978125)) b!5584380))

(assert (= (and b!5584380 c!978126) b!5584379))

(assert (= (and b!5584380 (not c!978126)) b!5584388))

(assert (= (and b!5584388 (not res!2369706)) b!5584383))

(assert (= (and b!5584383 res!2369702) b!5584390))

(assert (= (and b!5584390 res!2369708) b!5584391))

(assert (= (and b!5584391 res!2369703) b!5584385))

(assert (= (and b!5584383 (not res!2369707)) b!5584389))

(assert (= (and b!5584389 res!2369701) b!5584386))

(assert (= (and b!5584386 (not res!2369704)) b!5584392))

(assert (= (and b!5584392 (not res!2369705)) b!5584382))

(assert (= (or b!5584387 b!5584386 b!5584390) bm!417839))

(declare-fun m!6565568 () Bool)

(assert (=> b!5584392 m!6565568))

(assert (=> b!5584392 m!6565568))

(declare-fun m!6565570 () Bool)

(assert (=> b!5584392 m!6565570))

(declare-fun m!6565572 () Bool)

(assert (=> d!1765120 m!6565572))

(assert (=> d!1765120 m!6565094))

(declare-fun m!6565574 () Bool)

(assert (=> b!5584381 m!6565574))

(assert (=> b!5584381 m!6565574))

(declare-fun m!6565576 () Bool)

(assert (=> b!5584381 m!6565576))

(assert (=> b!5584381 m!6565568))

(assert (=> b!5584381 m!6565576))

(assert (=> b!5584381 m!6565568))

(declare-fun m!6565578 () Bool)

(assert (=> b!5584381 m!6565578))

(assert (=> bm!417839 m!6565572))

(assert (=> b!5584384 m!6565500))

(assert (=> b!5584391 m!6565568))

(assert (=> b!5584391 m!6565568))

(assert (=> b!5584391 m!6565570))

(assert (=> b!5584382 m!6565574))

(assert (=> b!5584385 m!6565574))

(assert (=> d!1764904 d!1765120))

(assert (=> d!1764904 d!1765098))

(declare-fun b!5584393 () Bool)

(declare-fun e!3445563 () Bool)

(declare-fun call!417846 () Bool)

(assert (=> b!5584393 (= e!3445563 call!417846)))

(declare-fun bm!417840 () Bool)

(declare-fun call!417845 () Bool)

(assert (=> bm!417840 (= call!417846 call!417845)))

(declare-fun b!5584394 () Bool)

(declare-fun e!3445565 () Bool)

(assert (=> b!5584394 (= e!3445565 call!417845)))

(declare-fun b!5584395 () Bool)

(declare-fun e!3445564 () Bool)

(declare-fun e!3445567 () Bool)

(assert (=> b!5584395 (= e!3445564 e!3445567)))

(declare-fun res!2369712 () Bool)

(assert (=> b!5584395 (=> (not res!2369712) (not e!3445567))))

(declare-fun call!417847 () Bool)

(assert (=> b!5584395 (= res!2369712 call!417847)))

(declare-fun b!5584396 () Bool)

(declare-fun e!3445568 () Bool)

(declare-fun e!3445562 () Bool)

(assert (=> b!5584396 (= e!3445568 e!3445562)))

(declare-fun c!978127 () Bool)

(assert (=> b!5584396 (= c!978127 (is-Star!15568 lt!2254202))))

(declare-fun b!5584397 () Bool)

(declare-fun res!2369709 () Bool)

(assert (=> b!5584397 (=> (not res!2369709) (not e!3445563))))

(assert (=> b!5584397 (= res!2369709 call!417847)))

(declare-fun e!3445566 () Bool)

(assert (=> b!5584397 (= e!3445566 e!3445563)))

(declare-fun d!1765122 () Bool)

(declare-fun res!2369713 () Bool)

(assert (=> d!1765122 (=> res!2369713 e!3445568)))

(assert (=> d!1765122 (= res!2369713 (is-ElementMatch!15568 lt!2254202))))

(assert (=> d!1765122 (= (validRegex!7304 lt!2254202) e!3445568)))

(declare-fun bm!417841 () Bool)

(declare-fun c!978128 () Bool)

(assert (=> bm!417841 (= call!417847 (validRegex!7304 (ite c!978128 (regOne!31649 lt!2254202) (regOne!31648 lt!2254202))))))

(declare-fun bm!417842 () Bool)

(assert (=> bm!417842 (= call!417845 (validRegex!7304 (ite c!978127 (reg!15897 lt!2254202) (ite c!978128 (regTwo!31649 lt!2254202) (regTwo!31648 lt!2254202)))))))

(declare-fun b!5584398 () Bool)

(declare-fun res!2369711 () Bool)

(assert (=> b!5584398 (=> res!2369711 e!3445564)))

(assert (=> b!5584398 (= res!2369711 (not (is-Concat!24413 lt!2254202)))))

(assert (=> b!5584398 (= e!3445566 e!3445564)))

(declare-fun b!5584399 () Bool)

(assert (=> b!5584399 (= e!3445562 e!3445565)))

(declare-fun res!2369710 () Bool)

(assert (=> b!5584399 (= res!2369710 (not (nullable!5600 (reg!15897 lt!2254202))))))

(assert (=> b!5584399 (=> (not res!2369710) (not e!3445565))))

(declare-fun b!5584400 () Bool)

(assert (=> b!5584400 (= e!3445562 e!3445566)))

(assert (=> b!5584400 (= c!978128 (is-Union!15568 lt!2254202))))

(declare-fun b!5584401 () Bool)

(assert (=> b!5584401 (= e!3445567 call!417846)))

(assert (= (and d!1765122 (not res!2369713)) b!5584396))

(assert (= (and b!5584396 c!978127) b!5584399))

(assert (= (and b!5584396 (not c!978127)) b!5584400))

(assert (= (and b!5584399 res!2369710) b!5584394))

(assert (= (and b!5584400 c!978128) b!5584397))

(assert (= (and b!5584400 (not c!978128)) b!5584398))

(assert (= (and b!5584397 res!2369709) b!5584393))

(assert (= (and b!5584398 (not res!2369711)) b!5584395))

(assert (= (and b!5584395 res!2369712) b!5584401))

(assert (= (or b!5584393 b!5584401) bm!417840))

(assert (= (or b!5584397 b!5584395) bm!417841))

(assert (= (or b!5584394 bm!417840) bm!417842))

(declare-fun m!6565580 () Bool)

(assert (=> bm!417841 m!6565580))

(declare-fun m!6565582 () Bool)

(assert (=> bm!417842 m!6565582))

(declare-fun m!6565584 () Bool)

(assert (=> b!5584399 m!6565584))

(assert (=> d!1764926 d!1765122))

(assert (=> d!1764926 d!1764870))

(assert (=> d!1764926 d!1764872))

(declare-fun d!1765124 () Bool)

(assert (=> d!1765124 (= (nullable!5600 (h!69327 (exprs!5452 lt!2254067))) (nullableFct!1711 (h!69327 (exprs!5452 lt!2254067))))))

(declare-fun bs!1291508 () Bool)

(assert (= bs!1291508 d!1765124))

(declare-fun m!6565586 () Bool)

(assert (=> bs!1291508 m!6565586))

(assert (=> b!5583647 d!1765124))

(assert (=> d!1764934 d!1764930))

(declare-fun d!1765126 () Bool)

(assert (=> d!1765126 (= (flatMap!1181 lt!2254052 lambda!299491) (dynLambda!24591 lambda!299491 lt!2254058))))

(assert (=> d!1765126 true))

(declare-fun _$13!2161 () Unit!155652)

(assert (=> d!1765126 (= (choose!42325 lt!2254052 lt!2254058 lambda!299491) _$13!2161)))

(declare-fun b_lambda!211621 () Bool)

(assert (=> (not b_lambda!211621) (not d!1765126)))

(declare-fun bs!1291509 () Bool)

(assert (= bs!1291509 d!1765126))

(assert (=> bs!1291509 m!6564768))

(assert (=> bs!1291509 m!6565166))

(assert (=> d!1764934 d!1765126))

(declare-fun bs!1291510 () Bool)

(declare-fun d!1765128 () Bool)

(assert (= bs!1291510 (and d!1765128 d!1764852)))

(declare-fun lambda!299581 () Int)

(assert (=> bs!1291510 (= lambda!299581 lambda!299509)))

(declare-fun bs!1291511 () Bool)

(assert (= bs!1291511 (and d!1765128 d!1764868)))

(assert (=> bs!1291511 (= lambda!299581 lambda!299512)))

(declare-fun bs!1291512 () Bool)

(assert (= bs!1291512 (and d!1765128 d!1765058)))

(assert (=> bs!1291512 (= lambda!299581 lambda!299569)))

(declare-fun bs!1291513 () Bool)

(assert (= bs!1291513 (and d!1765128 d!1764870)))

(assert (=> bs!1291513 (= lambda!299581 lambda!299515)))

(declare-fun bs!1291514 () Bool)

(assert (= bs!1291514 (and d!1765128 d!1764902)))

(assert (=> bs!1291514 (= lambda!299581 lambda!299519)))

(declare-fun bs!1291515 () Bool)

(assert (= bs!1291515 (and d!1765128 d!1764872)))

(assert (=> bs!1291515 (= lambda!299581 lambda!299518)))

(assert (=> d!1765128 (= (inv!82168 setElem!37180) (forall!14736 (exprs!5452 setElem!37180) lambda!299581))))

(declare-fun bs!1291516 () Bool)

(assert (= bs!1291516 d!1765128))

(declare-fun m!6565588 () Bool)

(assert (=> bs!1291516 m!6565588))

(assert (=> setNonEmpty!37180 d!1765128))

(declare-fun b!5584402 () Bool)

(declare-fun e!3445572 () (Set Context!9904))

(declare-fun call!417850 () (Set Context!9904))

(assert (=> b!5584402 (= e!3445572 call!417850)))

(declare-fun bm!417843 () Bool)

(declare-fun call!417851 () List!63003)

(declare-fun call!417853 () List!63003)

(assert (=> bm!417843 (= call!417851 call!417853)))

(declare-fun b!5584403 () Bool)

(declare-fun e!3445570 () (Set Context!9904))

(assert (=> b!5584403 (= e!3445570 (as set.empty (Set Context!9904)))))

(declare-fun b!5584404 () Bool)

(declare-fun e!3445569 () (Set Context!9904))

(declare-fun call!417849 () (Set Context!9904))

(declare-fun call!417848 () (Set Context!9904))

(assert (=> b!5584404 (= e!3445569 (set.union call!417849 call!417848))))

(declare-fun bm!417844 () Bool)

(declare-fun call!417852 () (Set Context!9904))

(assert (=> bm!417844 (= call!417848 call!417852)))

(declare-fun bm!417845 () Bool)

(assert (=> bm!417845 (= call!417850 call!417848)))

(declare-fun b!5584405 () Bool)

(declare-fun c!978130 () Bool)

(declare-fun e!3445571 () Bool)

(assert (=> b!5584405 (= c!978130 e!3445571)))

(declare-fun res!2369714 () Bool)

(assert (=> b!5584405 (=> (not res!2369714) (not e!3445571))))

(assert (=> b!5584405 (= res!2369714 (is-Concat!24413 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))))))

(declare-fun e!3445573 () (Set Context!9904))

(assert (=> b!5584405 (= e!3445573 e!3445569)))

(declare-fun b!5584406 () Bool)

(declare-fun e!3445574 () (Set Context!9904))

(assert (=> b!5584406 (= e!3445574 e!3445573)))

(declare-fun c!978131 () Bool)

(assert (=> b!5584406 (= c!978131 (is-Union!15568 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))))))

(declare-fun c!978132 () Bool)

(declare-fun b!5584408 () Bool)

(assert (=> b!5584408 (= c!978132 (is-Star!15568 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))))))

(assert (=> b!5584408 (= e!3445572 e!3445570)))

(declare-fun bm!417846 () Bool)

(assert (=> bm!417846 (= call!417849 (derivationStepZipperDown!910 (ite c!978131 (regTwo!31649 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))) (regOne!31648 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292)))))))) (ite c!978131 (ite (or c!977880 c!977879) lt!2254067 (Context!9905 call!417720)) (Context!9905 call!417853)) (h!69328 s!2326)))))

(declare-fun b!5584409 () Bool)

(assert (=> b!5584409 (= e!3445569 e!3445572)))

(declare-fun c!978129 () Bool)

(assert (=> b!5584409 (= c!978129 (is-Concat!24413 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))))))

(declare-fun b!5584410 () Bool)

(assert (=> b!5584410 (= e!3445573 (set.union call!417852 call!417849))))

(declare-fun b!5584411 () Bool)

(assert (=> b!5584411 (= e!3445570 call!417850)))

(declare-fun b!5584412 () Bool)

(assert (=> b!5584412 (= e!3445571 (nullable!5600 (regOne!31648 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292)))))))))))

(declare-fun b!5584407 () Bool)

(assert (=> b!5584407 (= e!3445574 (set.insert (ite (or c!977880 c!977879) lt!2254067 (Context!9905 call!417720)) (as set.empty (Set Context!9904))))))

(declare-fun d!1765130 () Bool)

(declare-fun c!978133 () Bool)

(assert (=> d!1765130 (= c!978133 (and (is-ElementMatch!15568 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))) (= (c!977850 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))) (h!69328 s!2326))))))

(assert (=> d!1765130 (= (derivationStepZipperDown!910 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292)))))) (ite (or c!977880 c!977879) lt!2254067 (Context!9905 call!417720)) (h!69328 s!2326)) e!3445574)))

(declare-fun bm!417847 () Bool)

(assert (=> bm!417847 (= call!417853 ($colon$colon!1633 (exprs!5452 (ite (or c!977880 c!977879) lt!2254067 (Context!9905 call!417720))) (ite (or c!978130 c!978129) (regTwo!31648 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))) (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292)))))))))))

(declare-fun bm!417848 () Bool)

(assert (=> bm!417848 (= call!417852 (derivationStepZipperDown!910 (ite c!978131 (regOne!31649 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))) (ite c!978130 (regTwo!31648 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))) (ite c!978129 (regOne!31648 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292))))))) (reg!15897 (ite c!977880 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977879 (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (ite c!977878 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))) (reg!15897 (regTwo!31649 (regOne!31648 r!7292)))))))))) (ite (or c!978131 c!978130) (ite (or c!977880 c!977879) lt!2254067 (Context!9905 call!417720)) (Context!9905 call!417851)) (h!69328 s!2326)))))

(assert (= (and d!1765130 c!978133) b!5584407))

(assert (= (and d!1765130 (not c!978133)) b!5584406))

(assert (= (and b!5584406 c!978131) b!5584410))

(assert (= (and b!5584406 (not c!978131)) b!5584405))

(assert (= (and b!5584405 res!2369714) b!5584412))

(assert (= (and b!5584405 c!978130) b!5584404))

(assert (= (and b!5584405 (not c!978130)) b!5584409))

(assert (= (and b!5584409 c!978129) b!5584402))

(assert (= (and b!5584409 (not c!978129)) b!5584408))

(assert (= (and b!5584408 c!978132) b!5584411))

(assert (= (and b!5584408 (not c!978132)) b!5584403))

(assert (= (or b!5584402 b!5584411) bm!417843))

(assert (= (or b!5584402 b!5584411) bm!417845))

(assert (= (or b!5584404 bm!417843) bm!417847))

(assert (= (or b!5584404 bm!417845) bm!417844))

(assert (= (or b!5584410 b!5584404) bm!417846))

(assert (= (or b!5584410 bm!417844) bm!417848))

(declare-fun m!6565590 () Bool)

(assert (=> b!5584412 m!6565590))

(declare-fun m!6565592 () Bool)

(assert (=> bm!417848 m!6565592))

(declare-fun m!6565594 () Bool)

(assert (=> bm!417846 m!6565594))

(declare-fun m!6565596 () Bool)

(assert (=> b!5584407 m!6565596))

(declare-fun m!6565598 () Bool)

(assert (=> bm!417847 m!6565598))

(assert (=> bm!417717 d!1765130))

(declare-fun d!1765132 () Bool)

(assert (=> d!1765132 (= (nullable!5600 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (nullableFct!1711 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun bs!1291517 () Bool)

(assert (= bs!1291517 d!1765132))

(declare-fun m!6565600 () Bool)

(assert (=> bs!1291517 m!6565600))

(assert (=> b!5583652 d!1765132))

(declare-fun b!5584413 () Bool)

(declare-fun e!3445578 () (Set Context!9904))

(declare-fun call!417856 () (Set Context!9904))

(assert (=> b!5584413 (= e!3445578 call!417856)))

(declare-fun bm!417849 () Bool)

(declare-fun call!417857 () List!63003)

(declare-fun call!417859 () List!63003)

(assert (=> bm!417849 (= call!417857 call!417859)))

(declare-fun b!5584414 () Bool)

(declare-fun e!3445576 () (Set Context!9904))

(assert (=> b!5584414 (= e!3445576 (as set.empty (Set Context!9904)))))

(declare-fun b!5584415 () Bool)

(declare-fun e!3445575 () (Set Context!9904))

(declare-fun call!417855 () (Set Context!9904))

(declare-fun call!417854 () (Set Context!9904))

(assert (=> b!5584415 (= e!3445575 (set.union call!417855 call!417854))))

(declare-fun bm!417850 () Bool)

(declare-fun call!417858 () (Set Context!9904))

(assert (=> bm!417850 (= call!417854 call!417858)))

(declare-fun bm!417851 () Bool)

(assert (=> bm!417851 (= call!417856 call!417854)))

(declare-fun b!5584416 () Bool)

(declare-fun c!978135 () Bool)

(declare-fun e!3445577 () Bool)

(assert (=> b!5584416 (= c!978135 e!3445577)))

(declare-fun res!2369715 () Bool)

(assert (=> b!5584416 (=> (not res!2369715) (not e!3445577))))

(assert (=> b!5584416 (= res!2369715 (is-Concat!24413 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))))))

(declare-fun e!3445579 () (Set Context!9904))

(assert (=> b!5584416 (= e!3445579 e!3445575)))

(declare-fun b!5584417 () Bool)

(declare-fun e!3445580 () (Set Context!9904))

(assert (=> b!5584417 (= e!3445580 e!3445579)))

(declare-fun c!978136 () Bool)

(assert (=> b!5584417 (= c!978136 (is-Union!15568 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584419 () Bool)

(declare-fun c!978137 () Bool)

(assert (=> b!5584419 (= c!978137 (is-Star!15568 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))))))

(assert (=> b!5584419 (= e!3445578 e!3445576)))

(declare-fun bm!417852 () Bool)

(assert (=> bm!417852 (= call!417855 (derivationStepZipperDown!910 (ite c!978136 (regTwo!31649 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))) (regOne!31648 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))))) (ite c!978136 (ite c!977885 lt!2254067 (Context!9905 call!417728)) (Context!9905 call!417859)) (h!69328 s!2326)))))

(declare-fun b!5584420 () Bool)

(assert (=> b!5584420 (= e!3445575 e!3445578)))

(declare-fun c!978134 () Bool)

(assert (=> b!5584420 (= c!978134 (is-Concat!24413 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584421 () Bool)

(assert (=> b!5584421 (= e!3445579 (set.union call!417858 call!417855))))

(declare-fun b!5584422 () Bool)

(assert (=> b!5584422 (= e!3445576 call!417856)))

(declare-fun b!5584423 () Bool)

(assert (=> b!5584423 (= e!3445577 (nullable!5600 (regOne!31648 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))))))))

(declare-fun b!5584418 () Bool)

(assert (=> b!5584418 (= e!3445580 (set.insert (ite c!977885 lt!2254067 (Context!9905 call!417728)) (as set.empty (Set Context!9904))))))

(declare-fun c!978138 () Bool)

(declare-fun d!1765134 () Bool)

(assert (=> d!1765134 (= c!978138 (and (is-ElementMatch!15568 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))) (= (c!977850 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))) (h!69328 s!2326))))))

(assert (=> d!1765134 (= (derivationStepZipperDown!910 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))) (ite c!977885 lt!2254067 (Context!9905 call!417728)) (h!69328 s!2326)) e!3445580)))

(declare-fun bm!417853 () Bool)

(assert (=> bm!417853 (= call!417859 ($colon$colon!1633 (exprs!5452 (ite c!977885 lt!2254067 (Context!9905 call!417728))) (ite (or c!978135 c!978134) (regTwo!31648 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))) (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))))))))

(declare-fun bm!417854 () Bool)

(assert (=> bm!417854 (= call!417858 (derivationStepZipperDown!910 (ite c!978136 (regOne!31649 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))) (ite c!978135 (regTwo!31648 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))) (ite c!978134 (regOne!31648 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))) (reg!15897 (ite c!977885 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292)))))))) (ite (or c!978136 c!978135) (ite c!977885 lt!2254067 (Context!9905 call!417728)) (Context!9905 call!417857)) (h!69328 s!2326)))))

(assert (= (and d!1765134 c!978138) b!5584418))

(assert (= (and d!1765134 (not c!978138)) b!5584417))

(assert (= (and b!5584417 c!978136) b!5584421))

(assert (= (and b!5584417 (not c!978136)) b!5584416))

(assert (= (and b!5584416 res!2369715) b!5584423))

(assert (= (and b!5584416 c!978135) b!5584415))

(assert (= (and b!5584416 (not c!978135)) b!5584420))

(assert (= (and b!5584420 c!978134) b!5584413))

(assert (= (and b!5584420 (not c!978134)) b!5584419))

(assert (= (and b!5584419 c!978137) b!5584422))

(assert (= (and b!5584419 (not c!978137)) b!5584414))

(assert (= (or b!5584413 b!5584422) bm!417849))

(assert (= (or b!5584413 b!5584422) bm!417851))

(assert (= (or b!5584415 bm!417849) bm!417853))

(assert (= (or b!5584415 bm!417851) bm!417850))

(assert (= (or b!5584421 b!5584415) bm!417852))

(assert (= (or b!5584421 bm!417850) bm!417854))

(declare-fun m!6565602 () Bool)

(assert (=> b!5584423 m!6565602))

(declare-fun m!6565604 () Bool)

(assert (=> bm!417854 m!6565604))

(declare-fun m!6565606 () Bool)

(assert (=> bm!417852 m!6565606))

(declare-fun m!6565608 () Bool)

(assert (=> b!5584418 m!6565608))

(declare-fun m!6565610 () Bool)

(assert (=> bm!417853 m!6565610))

(assert (=> bm!417721 d!1765134))

(declare-fun b!5584424 () Bool)

(declare-fun e!3445584 () (Set Context!9904))

(declare-fun call!417862 () (Set Context!9904))

(assert (=> b!5584424 (= e!3445584 call!417862)))

(declare-fun bm!417855 () Bool)

(declare-fun call!417863 () List!63003)

(declare-fun call!417865 () List!63003)

(assert (=> bm!417855 (= call!417863 call!417865)))

(declare-fun b!5584425 () Bool)

(declare-fun e!3445582 () (Set Context!9904))

(assert (=> b!5584425 (= e!3445582 (as set.empty (Set Context!9904)))))

(declare-fun b!5584426 () Bool)

(declare-fun e!3445581 () (Set Context!9904))

(declare-fun call!417861 () (Set Context!9904))

(declare-fun call!417860 () (Set Context!9904))

(assert (=> b!5584426 (= e!3445581 (set.union call!417861 call!417860))))

(declare-fun bm!417856 () Bool)

(declare-fun call!417864 () (Set Context!9904))

(assert (=> bm!417856 (= call!417860 call!417864)))

(declare-fun bm!417857 () Bool)

(assert (=> bm!417857 (= call!417862 call!417860)))

(declare-fun b!5584427 () Bool)

(declare-fun c!978140 () Bool)

(declare-fun e!3445583 () Bool)

(assert (=> b!5584427 (= c!978140 e!3445583)))

(declare-fun res!2369716 () Bool)

(assert (=> b!5584427 (=> (not res!2369716) (not e!3445583))))

(assert (=> b!5584427 (= res!2369716 (is-Concat!24413 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun e!3445585 () (Set Context!9904))

(assert (=> b!5584427 (= e!3445585 e!3445581)))

(declare-fun b!5584428 () Bool)

(declare-fun e!3445586 () (Set Context!9904))

(assert (=> b!5584428 (= e!3445586 e!3445585)))

(declare-fun c!978141 () Bool)

(assert (=> b!5584428 (= c!978141 (is-Union!15568 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun b!5584430 () Bool)

(declare-fun c!978142 () Bool)

(assert (=> b!5584430 (= c!978142 (is-Star!15568 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))

(assert (=> b!5584430 (= e!3445584 e!3445582)))

(declare-fun bm!417858 () Bool)

(assert (=> bm!417858 (= call!417861 (derivationStepZipperDown!910 (ite c!978141 (regTwo!31649 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))) (regOne!31648 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))))) (ite c!978141 (ite c!977936 lt!2254067 (Context!9905 call!417747)) (Context!9905 call!417865)) (h!69328 s!2326)))))

(declare-fun b!5584431 () Bool)

(assert (=> b!5584431 (= e!3445581 e!3445584)))

(declare-fun c!978139 () Bool)

(assert (=> b!5584431 (= c!978139 (is-Concat!24413 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun b!5584432 () Bool)

(assert (=> b!5584432 (= e!3445585 (set.union call!417864 call!417861))))

(declare-fun b!5584433 () Bool)

(assert (=> b!5584433 (= e!3445582 call!417862)))

(declare-fun b!5584434 () Bool)

(assert (=> b!5584434 (= e!3445583 (nullable!5600 (regOne!31648 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))))))))

(declare-fun b!5584429 () Bool)

(assert (=> b!5584429 (= e!3445586 (set.insert (ite c!977936 lt!2254067 (Context!9905 call!417747)) (as set.empty (Set Context!9904))))))

(declare-fun d!1765136 () Bool)

(declare-fun c!978143 () Bool)

(assert (=> d!1765136 (= c!978143 (and (is-ElementMatch!15568 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))) (= (c!977850 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))) (h!69328 s!2326))))))

(assert (=> d!1765136 (= (derivationStepZipperDown!910 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))) (ite c!977936 lt!2254067 (Context!9905 call!417747)) (h!69328 s!2326)) e!3445586)))

(declare-fun bm!417859 () Bool)

(assert (=> bm!417859 (= call!417865 ($colon$colon!1633 (exprs!5452 (ite c!977936 lt!2254067 (Context!9905 call!417747))) (ite (or c!978140 c!978139) (regTwo!31648 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))) (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))))))))

(declare-fun bm!417860 () Bool)

(assert (=> bm!417860 (= call!417864 (derivationStepZipperDown!910 (ite c!978141 (regOne!31649 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))) (ite c!978140 (regTwo!31648 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))) (ite c!978139 (regOne!31648 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))) (reg!15897 (ite c!977936 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))))))) (ite (or c!978141 c!978140) (ite c!977936 lt!2254067 (Context!9905 call!417747)) (Context!9905 call!417863)) (h!69328 s!2326)))))

(assert (= (and d!1765136 c!978143) b!5584429))

(assert (= (and d!1765136 (not c!978143)) b!5584428))

(assert (= (and b!5584428 c!978141) b!5584432))

(assert (= (and b!5584428 (not c!978141)) b!5584427))

(assert (= (and b!5584427 res!2369716) b!5584434))

(assert (= (and b!5584427 c!978140) b!5584426))

(assert (= (and b!5584427 (not c!978140)) b!5584431))

(assert (= (and b!5584431 c!978139) b!5584424))

(assert (= (and b!5584431 (not c!978139)) b!5584430))

(assert (= (and b!5584430 c!978142) b!5584433))

(assert (= (and b!5584430 (not c!978142)) b!5584425))

(assert (= (or b!5584424 b!5584433) bm!417855))

(assert (= (or b!5584424 b!5584433) bm!417857))

(assert (= (or b!5584426 bm!417855) bm!417859))

(assert (= (or b!5584426 bm!417857) bm!417856))

(assert (= (or b!5584432 b!5584426) bm!417858))

(assert (= (or b!5584432 bm!417856) bm!417860))

(declare-fun m!6565612 () Bool)

(assert (=> b!5584434 m!6565612))

(declare-fun m!6565614 () Bool)

(assert (=> bm!417860 m!6565614))

(declare-fun m!6565616 () Bool)

(assert (=> bm!417858 m!6565616))

(declare-fun m!6565618 () Bool)

(assert (=> b!5584429 m!6565618))

(declare-fun m!6565620 () Bool)

(assert (=> bm!417859 m!6565620))

(assert (=> bm!417740 d!1765136))

(declare-fun d!1765138 () Bool)

(assert (=> d!1765138 true))

(assert (=> d!1765138 true))

(declare-fun res!2369719 () Bool)

(assert (=> d!1765138 (= (choose!42327 lambda!299490) res!2369719)))

(assert (=> d!1764906 d!1765138))

(assert (=> d!1764944 d!1764936))

(declare-fun d!1765140 () Bool)

(assert (=> d!1765140 (= (flatMap!1181 lt!2254060 lambda!299491) (dynLambda!24591 lambda!299491 lt!2254049))))

(assert (=> d!1765140 true))

(declare-fun _$13!2162 () Unit!155652)

(assert (=> d!1765140 (= (choose!42325 lt!2254060 lt!2254049 lambda!299491) _$13!2162)))

(declare-fun b_lambda!211623 () Bool)

(assert (=> (not b_lambda!211623) (not d!1765140)))

(declare-fun bs!1291518 () Bool)

(assert (= bs!1291518 d!1765140))

(assert (=> bs!1291518 m!6564756))

(assert (=> bs!1291518 m!6565182))

(assert (=> d!1764944 d!1765140))

(declare-fun d!1765142 () Bool)

(assert (=> d!1765142 true))

(assert (=> d!1765142 true))

(declare-fun res!2369720 () Bool)

(assert (=> d!1765142 (= (choose!42327 lambda!299489) res!2369720)))

(assert (=> d!1764914 d!1765142))

(declare-fun d!1765144 () Bool)

(declare-fun c!978144 () Bool)

(assert (=> d!1765144 (= c!978144 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445587 () Bool)

(assert (=> d!1765144 (= (matchZipper!1706 (derivationStepZipper!1667 lt!2254066 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445587)))

(declare-fun b!5584435 () Bool)

(assert (=> b!5584435 (= e!3445587 (nullableZipper!1565 (derivationStepZipper!1667 lt!2254066 (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584436 () Bool)

(assert (=> b!5584436 (= e!3445587 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 lt!2254066 (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765144 c!978144) b!5584435))

(assert (= (and d!1765144 (not c!978144)) b!5584436))

(assert (=> d!1765144 m!6564922))

(assert (=> d!1765144 m!6565544))

(assert (=> b!5584435 m!6565028))

(declare-fun m!6565622 () Bool)

(assert (=> b!5584435 m!6565622))

(assert (=> b!5584436 m!6564922))

(assert (=> b!5584436 m!6565548))

(assert (=> b!5584436 m!6565028))

(assert (=> b!5584436 m!6565548))

(declare-fun m!6565624 () Bool)

(assert (=> b!5584436 m!6565624))

(assert (=> b!5584436 m!6564922))

(assert (=> b!5584436 m!6565552))

(assert (=> b!5584436 m!6565624))

(assert (=> b!5584436 m!6565552))

(declare-fun m!6565626 () Bool)

(assert (=> b!5584436 m!6565626))

(assert (=> b!5583636 d!1765144))

(declare-fun bs!1291519 () Bool)

(declare-fun d!1765146 () Bool)

(assert (= bs!1291519 (and d!1765146 b!5583357)))

(declare-fun lambda!299582 () Int)

(assert (=> bs!1291519 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299582 lambda!299491))))

(declare-fun bs!1291520 () Bool)

(assert (= bs!1291520 (and d!1765146 d!1764940)))

(assert (=> bs!1291520 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299582 lambda!299537))))

(declare-fun bs!1291521 () Bool)

(assert (= bs!1291521 (and d!1765146 d!1765110)))

(assert (=> bs!1291521 (= lambda!299582 lambda!299580)))

(assert (=> d!1765146 true))

(assert (=> d!1765146 (= (derivationStepZipper!1667 lt!2254066 (head!11909 (t!376277 s!2326))) (flatMap!1181 lt!2254066 lambda!299582))))

(declare-fun bs!1291522 () Bool)

(assert (= bs!1291522 d!1765146))

(declare-fun m!6565628 () Bool)

(assert (=> bs!1291522 m!6565628))

(assert (=> b!5583636 d!1765146))

(assert (=> b!5583636 d!1765112))

(assert (=> b!5583636 d!1765114))

(assert (=> b!5583680 d!1764864))

(assert (=> b!5583631 d!1764868))

(declare-fun bs!1291523 () Bool)

(declare-fun d!1765148 () Bool)

(assert (= bs!1291523 (and d!1765148 d!1764852)))

(declare-fun lambda!299583 () Int)

(assert (=> bs!1291523 (= lambda!299583 lambda!299509)))

(declare-fun bs!1291524 () Bool)

(assert (= bs!1291524 (and d!1765148 d!1764868)))

(assert (=> bs!1291524 (= lambda!299583 lambda!299512)))

(declare-fun bs!1291525 () Bool)

(assert (= bs!1291525 (and d!1765148 d!1765058)))

(assert (=> bs!1291525 (= lambda!299583 lambda!299569)))

(declare-fun bs!1291526 () Bool)

(assert (= bs!1291526 (and d!1765148 d!1765128)))

(assert (=> bs!1291526 (= lambda!299583 lambda!299581)))

(declare-fun bs!1291527 () Bool)

(assert (= bs!1291527 (and d!1765148 d!1764870)))

(assert (=> bs!1291527 (= lambda!299583 lambda!299515)))

(declare-fun bs!1291528 () Bool)

(assert (= bs!1291528 (and d!1765148 d!1764902)))

(assert (=> bs!1291528 (= lambda!299583 lambda!299519)))

(declare-fun bs!1291529 () Bool)

(assert (= bs!1291529 (and d!1765148 d!1764872)))

(assert (=> bs!1291529 (= lambda!299583 lambda!299518)))

(declare-fun lt!2254257 () List!63003)

(assert (=> d!1765148 (forall!14736 lt!2254257 lambda!299583)))

(declare-fun e!3445588 () List!63003)

(assert (=> d!1765148 (= lt!2254257 e!3445588)))

(declare-fun c!978145 () Bool)

(assert (=> d!1765148 (= c!978145 (is-Cons!62881 (t!376278 zl!343)))))

(assert (=> d!1765148 (= (unfocusZipperList!996 (t!376278 zl!343)) lt!2254257)))

(declare-fun b!5584437 () Bool)

(assert (=> b!5584437 (= e!3445588 (Cons!62879 (generalisedConcat!1183 (exprs!5452 (h!69329 (t!376278 zl!343)))) (unfocusZipperList!996 (t!376278 (t!376278 zl!343)))))))

(declare-fun b!5584438 () Bool)

(assert (=> b!5584438 (= e!3445588 Nil!62879)))

(assert (= (and d!1765148 c!978145) b!5584437))

(assert (= (and d!1765148 (not c!978145)) b!5584438))

(declare-fun m!6565630 () Bool)

(assert (=> d!1765148 m!6565630))

(declare-fun m!6565632 () Bool)

(assert (=> b!5584437 m!6565632))

(declare-fun m!6565634 () Bool)

(assert (=> b!5584437 m!6565634))

(assert (=> b!5583631 d!1765148))

(assert (=> b!5583720 d!1764850))

(assert (=> b!5583589 d!1764946))

(declare-fun d!1765150 () Bool)

(assert (=> d!1765150 (= ($colon$colon!1633 (exprs!5452 lt!2254067) (ite (or c!977884 c!977883) (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (regOne!31649 (regOne!31648 r!7292)))) (Cons!62879 (ite (or c!977884 c!977883) (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (regOne!31649 (regOne!31648 r!7292))) (exprs!5452 lt!2254067)))))

(assert (=> bm!417722 d!1765150))

(declare-fun d!1765152 () Bool)

(declare-fun c!978146 () Bool)

(assert (=> d!1765152 (= c!978146 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445589 () Bool)

(assert (=> d!1765152 (= (matchZipper!1706 (derivationStepZipper!1667 lt!2254070 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445589)))

(declare-fun b!5584439 () Bool)

(assert (=> b!5584439 (= e!3445589 (nullableZipper!1565 (derivationStepZipper!1667 lt!2254070 (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584440 () Bool)

(assert (=> b!5584440 (= e!3445589 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 lt!2254070 (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765152 c!978146) b!5584439))

(assert (= (and d!1765152 (not c!978146)) b!5584440))

(assert (=> d!1765152 m!6564922))

(assert (=> d!1765152 m!6565544))

(assert (=> b!5584439 m!6564920))

(declare-fun m!6565636 () Bool)

(assert (=> b!5584439 m!6565636))

(assert (=> b!5584440 m!6564922))

(assert (=> b!5584440 m!6565548))

(assert (=> b!5584440 m!6564920))

(assert (=> b!5584440 m!6565548))

(declare-fun m!6565638 () Bool)

(assert (=> b!5584440 m!6565638))

(assert (=> b!5584440 m!6564922))

(assert (=> b!5584440 m!6565552))

(assert (=> b!5584440 m!6565638))

(assert (=> b!5584440 m!6565552))

(declare-fun m!6565640 () Bool)

(assert (=> b!5584440 m!6565640))

(assert (=> b!5583486 d!1765152))

(declare-fun bs!1291530 () Bool)

(declare-fun d!1765154 () Bool)

(assert (= bs!1291530 (and d!1765154 b!5583357)))

(declare-fun lambda!299584 () Int)

(assert (=> bs!1291530 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299584 lambda!299491))))

(declare-fun bs!1291531 () Bool)

(assert (= bs!1291531 (and d!1765154 d!1764940)))

(assert (=> bs!1291531 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299584 lambda!299537))))

(declare-fun bs!1291532 () Bool)

(assert (= bs!1291532 (and d!1765154 d!1765110)))

(assert (=> bs!1291532 (= lambda!299584 lambda!299580)))

(declare-fun bs!1291533 () Bool)

(assert (= bs!1291533 (and d!1765154 d!1765146)))

(assert (=> bs!1291533 (= lambda!299584 lambda!299582)))

(assert (=> d!1765154 true))

(assert (=> d!1765154 (= (derivationStepZipper!1667 lt!2254070 (head!11909 (t!376277 s!2326))) (flatMap!1181 lt!2254070 lambda!299584))))

(declare-fun bs!1291534 () Bool)

(assert (= bs!1291534 d!1765154))

(declare-fun m!6565642 () Bool)

(assert (=> bs!1291534 m!6565642))

(assert (=> b!5583486 d!1765154))

(assert (=> b!5583486 d!1765112))

(assert (=> b!5583486 d!1765114))

(declare-fun d!1765156 () Bool)

(assert (=> d!1765156 (= ($colon$colon!1633 (exprs!5452 lt!2254067) (ite (or c!977935 c!977934) (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (h!69327 (exprs!5452 (h!69329 zl!343))))) (Cons!62879 (ite (or c!977935 c!977934) (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (h!69327 (exprs!5452 (h!69329 zl!343)))) (exprs!5452 lt!2254067)))))

(assert (=> bm!417741 d!1765156))

(assert (=> b!5583668 d!1764882))

(declare-fun d!1765158 () Bool)

(assert (=> d!1765158 (= (isEmpty!34692 (t!376276 (unfocusZipperList!996 zl!343))) (is-Nil!62879 (t!376276 (unfocusZipperList!996 zl!343))))))

(assert (=> b!5583626 d!1765158))

(declare-fun d!1765160 () Bool)

(declare-fun c!978147 () Bool)

(assert (=> d!1765160 (= c!978147 (isEmpty!34696 (t!376277 s!2326)))))

(declare-fun e!3445590 () Bool)

(assert (=> d!1765160 (= (matchZipper!1706 (set.union lt!2254046 lt!2254068) (t!376277 s!2326)) e!3445590)))

(declare-fun b!5584441 () Bool)

(assert (=> b!5584441 (= e!3445590 (nullableZipper!1565 (set.union lt!2254046 lt!2254068)))))

(declare-fun b!5584442 () Bool)

(assert (=> b!5584442 (= e!3445590 (matchZipper!1706 (derivationStepZipper!1667 (set.union lt!2254046 lt!2254068) (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))))))

(assert (= (and d!1765160 c!978147) b!5584441))

(assert (= (and d!1765160 (not c!978147)) b!5584442))

(assert (=> d!1765160 m!6564914))

(declare-fun m!6565644 () Bool)

(assert (=> b!5584441 m!6565644))

(assert (=> b!5584442 m!6564918))

(assert (=> b!5584442 m!6564918))

(declare-fun m!6565646 () Bool)

(assert (=> b!5584442 m!6565646))

(assert (=> b!5584442 m!6564922))

(assert (=> b!5584442 m!6565646))

(assert (=> b!5584442 m!6564922))

(declare-fun m!6565648 () Bool)

(assert (=> b!5584442 m!6565648))

(assert (=> d!1764900 d!1765160))

(assert (=> d!1764900 d!1764898))

(declare-fun d!1765162 () Bool)

(declare-fun e!3445593 () Bool)

(assert (=> d!1765162 (= (matchZipper!1706 (set.union lt!2254046 lt!2254068) (t!376277 s!2326)) e!3445593)))

(declare-fun res!2369723 () Bool)

(assert (=> d!1765162 (=> res!2369723 e!3445593)))

(assert (=> d!1765162 (= res!2369723 (matchZipper!1706 lt!2254046 (t!376277 s!2326)))))

(assert (=> d!1765162 true))

(declare-fun _$48!1139 () Unit!155652)

(assert (=> d!1765162 (= (choose!42323 lt!2254046 lt!2254068 (t!376277 s!2326)) _$48!1139)))

(declare-fun b!5584445 () Bool)

(assert (=> b!5584445 (= e!3445593 (matchZipper!1706 lt!2254068 (t!376277 s!2326)))))

(assert (= (and d!1765162 (not res!2369723)) b!5584445))

(assert (=> d!1765162 m!6565084))

(assert (=> d!1765162 m!6564808))

(assert (=> b!5584445 m!6564712))

(assert (=> d!1764900 d!1765162))

(declare-fun bs!1291535 () Bool)

(declare-fun d!1765164 () Bool)

(assert (= bs!1291535 (and d!1765164 d!1765068)))

(declare-fun lambda!299585 () Int)

(assert (=> bs!1291535 (= lambda!299585 lambda!299572)))

(declare-fun bs!1291536 () Bool)

(assert (= bs!1291536 (and d!1765164 d!1765106)))

(assert (=> bs!1291536 (= lambda!299585 lambda!299579)))

(assert (=> d!1765164 (= (nullableZipper!1565 lt!2254043) (exists!2162 lt!2254043 lambda!299585))))

(declare-fun bs!1291537 () Bool)

(assert (= bs!1291537 d!1765164))

(declare-fun m!6565650 () Bool)

(assert (=> bs!1291537 m!6565650))

(assert (=> b!5583676 d!1765164))

(assert (=> d!1764916 d!1764918))

(assert (=> d!1764916 d!1764898))

(declare-fun d!1765166 () Bool)

(declare-fun e!3445594 () Bool)

(assert (=> d!1765166 (= (matchZipper!1706 (set.union lt!2254046 lt!2254070) (t!376277 s!2326)) e!3445594)))

(declare-fun res!2369724 () Bool)

(assert (=> d!1765166 (=> res!2369724 e!3445594)))

(assert (=> d!1765166 (= res!2369724 (matchZipper!1706 lt!2254046 (t!376277 s!2326)))))

(assert (=> d!1765166 true))

(declare-fun _$48!1140 () Unit!155652)

(assert (=> d!1765166 (= (choose!42323 lt!2254046 lt!2254070 (t!376277 s!2326)) _$48!1140)))

(declare-fun b!5584446 () Bool)

(assert (=> b!5584446 (= e!3445594 (matchZipper!1706 lt!2254070 (t!376277 s!2326)))))

(assert (= (and d!1765166 (not res!2369724)) b!5584446))

(assert (=> d!1765166 m!6564746))

(assert (=> d!1765166 m!6564808))

(assert (=> b!5584446 m!6564724))

(assert (=> d!1764916 d!1765166))

(assert (=> d!1764924 d!1764922))

(assert (=> d!1764924 d!1764920))

(declare-fun d!1765168 () Bool)

(assert (=> d!1765168 (= (matchR!7753 r!7292 s!2326) (matchRSpec!2671 r!7292 s!2326))))

(assert (=> d!1765168 true))

(declare-fun _$88!3853 () Unit!155652)

(assert (=> d!1765168 (= (choose!42330 r!7292 s!2326) _$88!3853)))

(declare-fun bs!1291538 () Bool)

(assert (= bs!1291538 d!1765168))

(assert (=> bs!1291538 m!6564716))

(assert (=> bs!1291538 m!6564714))

(assert (=> d!1764924 d!1765168))

(assert (=> d!1764924 d!1764866))

(assert (=> b!5583797 d!1765080))

(assert (=> d!1764918 d!1765104))

(declare-fun b!5584447 () Bool)

(declare-fun e!3445596 () Bool)

(assert (=> b!5584447 (= e!3445596 (nullable!5600 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254049)))))))))

(declare-fun d!1765170 () Bool)

(declare-fun c!978148 () Bool)

(assert (=> d!1765170 (= c!978148 e!3445596)))

(declare-fun res!2369725 () Bool)

(assert (=> d!1765170 (=> (not res!2369725) (not e!3445596))))

(assert (=> d!1765170 (= res!2369725 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254049))))))))

(declare-fun e!3445595 () (Set Context!9904))

(assert (=> d!1765170 (= (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 lt!2254049))) (h!69328 s!2326)) e!3445595)))

(declare-fun b!5584448 () Bool)

(declare-fun call!417866 () (Set Context!9904))

(assert (=> b!5584448 (= e!3445595 (set.union call!417866 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254049)))))) (h!69328 s!2326))))))

(declare-fun bm!417861 () Bool)

(assert (=> bm!417861 (= call!417866 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254049))))) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254049)))))) (h!69328 s!2326)))))

(declare-fun b!5584449 () Bool)

(declare-fun e!3445597 () (Set Context!9904))

(assert (=> b!5584449 (= e!3445597 (as set.empty (Set Context!9904)))))

(declare-fun b!5584450 () Bool)

(assert (=> b!5584450 (= e!3445595 e!3445597)))

(declare-fun c!978149 () Bool)

(assert (=> b!5584450 (= c!978149 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254049))))))))

(declare-fun b!5584451 () Bool)

(assert (=> b!5584451 (= e!3445597 call!417866)))

(assert (= (and d!1765170 res!2369725) b!5584447))

(assert (= (and d!1765170 c!978148) b!5584448))

(assert (= (and d!1765170 (not c!978148)) b!5584450))

(assert (= (and b!5584450 c!978149) b!5584451))

(assert (= (and b!5584450 (not c!978149)) b!5584449))

(assert (= (or b!5584448 b!5584451) bm!417861))

(declare-fun m!6565652 () Bool)

(assert (=> b!5584447 m!6565652))

(declare-fun m!6565654 () Bool)

(assert (=> b!5584448 m!6565654))

(declare-fun m!6565656 () Bool)

(assert (=> bm!417861 m!6565656))

(assert (=> b!5583809 d!1765170))

(declare-fun b!5584452 () Bool)

(declare-fun e!3445600 () Bool)

(declare-fun lt!2254258 () Bool)

(assert (=> b!5584452 (= e!3445600 (not lt!2254258))))

(declare-fun d!1765172 () Bool)

(declare-fun e!3445604 () Bool)

(assert (=> d!1765172 e!3445604))

(declare-fun c!978151 () Bool)

(assert (=> d!1765172 (= c!978151 (is-EmptyExpr!15568 (regTwo!31648 r!7292)))))

(declare-fun e!3445598 () Bool)

(assert (=> d!1765172 (= lt!2254258 e!3445598)))

(declare-fun c!978150 () Bool)

(assert (=> d!1765172 (= c!978150 (isEmpty!34696 (_2!35968 (get!21651 lt!2254185))))))

(assert (=> d!1765172 (validRegex!7304 (regTwo!31648 r!7292))))

(assert (=> d!1765172 (= (matchR!7753 (regTwo!31648 r!7292) (_2!35968 (get!21651 lt!2254185))) lt!2254258)))

(declare-fun b!5584453 () Bool)

(assert (=> b!5584453 (= e!3445604 e!3445600)))

(declare-fun c!978152 () Bool)

(assert (=> b!5584453 (= c!978152 (is-EmptyLang!15568 (regTwo!31648 r!7292)))))

(declare-fun b!5584454 () Bool)

(assert (=> b!5584454 (= e!3445598 (matchR!7753 (derivativeStep!4418 (regTwo!31648 r!7292) (head!11909 (_2!35968 (get!21651 lt!2254185)))) (tail!11004 (_2!35968 (get!21651 lt!2254185)))))))

(declare-fun b!5584455 () Bool)

(declare-fun e!3445602 () Bool)

(assert (=> b!5584455 (= e!3445602 (not (= (head!11909 (_2!35968 (get!21651 lt!2254185))) (c!977850 (regTwo!31648 r!7292)))))))

(declare-fun bm!417862 () Bool)

(declare-fun call!417867 () Bool)

(assert (=> bm!417862 (= call!417867 (isEmpty!34696 (_2!35968 (get!21651 lt!2254185))))))

(declare-fun b!5584456 () Bool)

(declare-fun res!2369732 () Bool)

(declare-fun e!3445599 () Bool)

(assert (=> b!5584456 (=> res!2369732 e!3445599)))

(declare-fun e!3445603 () Bool)

(assert (=> b!5584456 (= res!2369732 e!3445603)))

(declare-fun res!2369727 () Bool)

(assert (=> b!5584456 (=> (not res!2369727) (not e!3445603))))

(assert (=> b!5584456 (= res!2369727 lt!2254258)))

(declare-fun b!5584457 () Bool)

(assert (=> b!5584457 (= e!3445598 (nullable!5600 (regTwo!31648 r!7292)))))

(declare-fun b!5584458 () Bool)

(assert (=> b!5584458 (= e!3445603 (= (head!11909 (_2!35968 (get!21651 lt!2254185))) (c!977850 (regTwo!31648 r!7292))))))

(declare-fun b!5584459 () Bool)

(declare-fun e!3445601 () Bool)

(assert (=> b!5584459 (= e!3445601 e!3445602)))

(declare-fun res!2369729 () Bool)

(assert (=> b!5584459 (=> res!2369729 e!3445602)))

(assert (=> b!5584459 (= res!2369729 call!417867)))

(declare-fun b!5584460 () Bool)

(assert (=> b!5584460 (= e!3445604 (= lt!2254258 call!417867))))

(declare-fun b!5584461 () Bool)

(declare-fun res!2369731 () Bool)

(assert (=> b!5584461 (=> res!2369731 e!3445599)))

(assert (=> b!5584461 (= res!2369731 (not (is-ElementMatch!15568 (regTwo!31648 r!7292))))))

(assert (=> b!5584461 (= e!3445600 e!3445599)))

(declare-fun b!5584462 () Bool)

(assert (=> b!5584462 (= e!3445599 e!3445601)))

(declare-fun res!2369726 () Bool)

(assert (=> b!5584462 (=> (not res!2369726) (not e!3445601))))

(assert (=> b!5584462 (= res!2369726 (not lt!2254258))))

(declare-fun b!5584463 () Bool)

(declare-fun res!2369733 () Bool)

(assert (=> b!5584463 (=> (not res!2369733) (not e!3445603))))

(assert (=> b!5584463 (= res!2369733 (not call!417867))))

(declare-fun b!5584464 () Bool)

(declare-fun res!2369728 () Bool)

(assert (=> b!5584464 (=> (not res!2369728) (not e!3445603))))

(assert (=> b!5584464 (= res!2369728 (isEmpty!34696 (tail!11004 (_2!35968 (get!21651 lt!2254185)))))))

(declare-fun b!5584465 () Bool)

(declare-fun res!2369730 () Bool)

(assert (=> b!5584465 (=> res!2369730 e!3445602)))

(assert (=> b!5584465 (= res!2369730 (not (isEmpty!34696 (tail!11004 (_2!35968 (get!21651 lt!2254185))))))))

(assert (= (and d!1765172 c!978150) b!5584457))

(assert (= (and d!1765172 (not c!978150)) b!5584454))

(assert (= (and d!1765172 c!978151) b!5584460))

(assert (= (and d!1765172 (not c!978151)) b!5584453))

(assert (= (and b!5584453 c!978152) b!5584452))

(assert (= (and b!5584453 (not c!978152)) b!5584461))

(assert (= (and b!5584461 (not res!2369731)) b!5584456))

(assert (= (and b!5584456 res!2369727) b!5584463))

(assert (= (and b!5584463 res!2369733) b!5584464))

(assert (= (and b!5584464 res!2369728) b!5584458))

(assert (= (and b!5584456 (not res!2369732)) b!5584462))

(assert (= (and b!5584462 res!2369726) b!5584459))

(assert (= (and b!5584459 (not res!2369729)) b!5584465))

(assert (= (and b!5584465 (not res!2369730)) b!5584455))

(assert (= (or b!5584460 b!5584459 b!5584463) bm!417862))

(declare-fun m!6565658 () Bool)

(assert (=> b!5584465 m!6565658))

(assert (=> b!5584465 m!6565658))

(declare-fun m!6565660 () Bool)

(assert (=> b!5584465 m!6565660))

(declare-fun m!6565662 () Bool)

(assert (=> d!1765172 m!6565662))

(declare-fun m!6565664 () Bool)

(assert (=> d!1765172 m!6565664))

(declare-fun m!6565666 () Bool)

(assert (=> b!5584454 m!6565666))

(assert (=> b!5584454 m!6565666))

(declare-fun m!6565668 () Bool)

(assert (=> b!5584454 m!6565668))

(assert (=> b!5584454 m!6565658))

(assert (=> b!5584454 m!6565668))

(assert (=> b!5584454 m!6565658))

(declare-fun m!6565670 () Bool)

(assert (=> b!5584454 m!6565670))

(assert (=> bm!417862 m!6565662))

(declare-fun m!6565672 () Bool)

(assert (=> b!5584457 m!6565672))

(assert (=> b!5584464 m!6565658))

(assert (=> b!5584464 m!6565658))

(assert (=> b!5584464 m!6565660))

(assert (=> b!5584455 m!6565666))

(assert (=> b!5584458 m!6565666))

(assert (=> b!5583700 d!1765172))

(assert (=> b!5583700 d!1765090))

(declare-fun d!1765174 () Bool)

(assert (=> d!1765174 (= (isConcat!647 lt!2254164) (is-Concat!24413 lt!2254164))))

(assert (=> b!5583593 d!1765174))

(assert (=> bs!1291439 d!1764890))

(assert (=> d!1764850 d!1765104))

(declare-fun d!1765176 () Bool)

(declare-fun res!2369734 () Bool)

(declare-fun e!3445605 () Bool)

(assert (=> d!1765176 (=> res!2369734 e!3445605)))

(assert (=> d!1765176 (= res!2369734 (is-Nil!62879 lt!2254170))))

(assert (=> d!1765176 (= (forall!14736 lt!2254170 lambda!299518) e!3445605)))

(declare-fun b!5584466 () Bool)

(declare-fun e!3445606 () Bool)

(assert (=> b!5584466 (= e!3445605 e!3445606)))

(declare-fun res!2369735 () Bool)

(assert (=> b!5584466 (=> (not res!2369735) (not e!3445606))))

(assert (=> b!5584466 (= res!2369735 (dynLambda!24593 lambda!299518 (h!69327 lt!2254170)))))

(declare-fun b!5584467 () Bool)

(assert (=> b!5584467 (= e!3445606 (forall!14736 (t!376276 lt!2254170) lambda!299518))))

(assert (= (and d!1765176 (not res!2369734)) b!5584466))

(assert (= (and b!5584466 res!2369735) b!5584467))

(declare-fun b_lambda!211625 () Bool)

(assert (=> (not b_lambda!211625) (not b!5584466)))

(declare-fun m!6565674 () Bool)

(assert (=> b!5584466 m!6565674))

(declare-fun m!6565676 () Bool)

(assert (=> b!5584467 m!6565676))

(assert (=> d!1764872 d!1765176))

(assert (=> d!1764888 d!1764880))

(declare-fun d!1765178 () Bool)

(assert (=> d!1765178 (= (flatMap!1181 z!1189 lambda!299491) (dynLambda!24591 lambda!299491 (h!69329 zl!343)))))

(assert (=> d!1765178 true))

(declare-fun _$13!2163 () Unit!155652)

(assert (=> d!1765178 (= (choose!42325 z!1189 (h!69329 zl!343) lambda!299491) _$13!2163)))

(declare-fun b_lambda!211627 () Bool)

(assert (=> (not b_lambda!211627) (not d!1765178)))

(declare-fun bs!1291539 () Bool)

(assert (= bs!1291539 d!1765178))

(assert (=> bs!1291539 m!6564784))

(assert (=> bs!1291539 m!6565056))

(assert (=> d!1764888 d!1765178))

(declare-fun d!1765180 () Bool)

(declare-fun c!978153 () Bool)

(assert (=> d!1765180 (= c!978153 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445607 () Bool)

(assert (=> d!1765180 (= (matchZipper!1706 (derivationStepZipper!1667 lt!2254046 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445607)))

(declare-fun b!5584468 () Bool)

(assert (=> b!5584468 (= e!3445607 (nullableZipper!1565 (derivationStepZipper!1667 lt!2254046 (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584469 () Bool)

(assert (=> b!5584469 (= e!3445607 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 lt!2254046 (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765180 c!978153) b!5584468))

(assert (= (and d!1765180 (not c!978153)) b!5584469))

(assert (=> d!1765180 m!6564922))

(assert (=> d!1765180 m!6565544))

(assert (=> b!5584468 m!6565080))

(declare-fun m!6565678 () Bool)

(assert (=> b!5584468 m!6565678))

(assert (=> b!5584469 m!6564922))

(assert (=> b!5584469 m!6565548))

(assert (=> b!5584469 m!6565080))

(assert (=> b!5584469 m!6565548))

(declare-fun m!6565680 () Bool)

(assert (=> b!5584469 m!6565680))

(assert (=> b!5584469 m!6564922))

(assert (=> b!5584469 m!6565552))

(assert (=> b!5584469 m!6565680))

(assert (=> b!5584469 m!6565552))

(declare-fun m!6565682 () Bool)

(assert (=> b!5584469 m!6565682))

(assert (=> b!5583679 d!1765180))

(declare-fun bs!1291540 () Bool)

(declare-fun d!1765182 () Bool)

(assert (= bs!1291540 (and d!1765182 d!1764940)))

(declare-fun lambda!299586 () Int)

(assert (=> bs!1291540 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299586 lambda!299537))))

(declare-fun bs!1291541 () Bool)

(assert (= bs!1291541 (and d!1765182 d!1765110)))

(assert (=> bs!1291541 (= lambda!299586 lambda!299580)))

(declare-fun bs!1291542 () Bool)

(assert (= bs!1291542 (and d!1765182 d!1765154)))

(assert (=> bs!1291542 (= lambda!299586 lambda!299584)))

(declare-fun bs!1291543 () Bool)

(assert (= bs!1291543 (and d!1765182 b!5583357)))

(assert (=> bs!1291543 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299586 lambda!299491))))

(declare-fun bs!1291544 () Bool)

(assert (= bs!1291544 (and d!1765182 d!1765146)))

(assert (=> bs!1291544 (= lambda!299586 lambda!299582)))

(assert (=> d!1765182 true))

(assert (=> d!1765182 (= (derivationStepZipper!1667 lt!2254046 (head!11909 (t!376277 s!2326))) (flatMap!1181 lt!2254046 lambda!299586))))

(declare-fun bs!1291545 () Bool)

(assert (= bs!1291545 d!1765182))

(declare-fun m!6565684 () Bool)

(assert (=> bs!1291545 m!6565684))

(assert (=> b!5583679 d!1765182))

(assert (=> b!5583679 d!1765112))

(assert (=> b!5583679 d!1765114))

(declare-fun d!1765184 () Bool)

(assert (=> d!1765184 true))

(declare-fun setRes!37186 () Bool)

(assert (=> d!1765184 setRes!37186))

(declare-fun condSetEmpty!37186 () Bool)

(declare-fun res!2369738 () (Set Context!9904))

(assert (=> d!1765184 (= condSetEmpty!37186 (= res!2369738 (as set.empty (Set Context!9904))))))

(assert (=> d!1765184 (= (choose!42324 z!1189 lambda!299491) res!2369738)))

(declare-fun setIsEmpty!37186 () Bool)

(assert (=> setIsEmpty!37186 setRes!37186))

(declare-fun tp!1544868 () Bool)

(declare-fun e!3445610 () Bool)

(declare-fun setNonEmpty!37186 () Bool)

(declare-fun setElem!37186 () Context!9904)

(assert (=> setNonEmpty!37186 (= setRes!37186 (and tp!1544868 (inv!82168 setElem!37186) e!3445610))))

(declare-fun setRest!37186 () (Set Context!9904))

(assert (=> setNonEmpty!37186 (= res!2369738 (set.union (set.insert setElem!37186 (as set.empty (Set Context!9904))) setRest!37186))))

(declare-fun b!5584472 () Bool)

(declare-fun tp!1544869 () Bool)

(assert (=> b!5584472 (= e!3445610 tp!1544869)))

(assert (= (and d!1765184 condSetEmpty!37186) setIsEmpty!37186))

(assert (= (and d!1765184 (not condSetEmpty!37186)) setNonEmpty!37186))

(assert (= setNonEmpty!37186 b!5584472))

(declare-fun m!6565686 () Bool)

(assert (=> setNonEmpty!37186 m!6565686))

(assert (=> d!1764880 d!1765184))

(declare-fun bs!1291546 () Bool)

(declare-fun b!5584480 () Bool)

(assert (= bs!1291546 (and b!5584480 d!1764908)))

(declare-fun lambda!299587 () Int)

(assert (=> bs!1291546 (not (= lambda!299587 lambda!299525))))

(declare-fun bs!1291547 () Bool)

(assert (= bs!1291547 (and b!5584480 b!5583761)))

(assert (=> bs!1291547 (not (= lambda!299587 lambda!299534))))

(declare-fun bs!1291548 () Bool)

(assert (= bs!1291548 (and b!5584480 b!5583762)))

(assert (=> bs!1291548 (= (and (= (reg!15897 (regTwo!31649 r!7292)) (reg!15897 r!7292)) (= (regTwo!31649 r!7292) r!7292)) (= lambda!299587 lambda!299533))))

(declare-fun bs!1291549 () Bool)

(assert (= bs!1291549 (and b!5584480 b!5583348)))

(assert (=> bs!1291549 (not (= lambda!299587 lambda!299489))))

(declare-fun bs!1291550 () Bool)

(assert (= bs!1291550 (and b!5584480 d!1764912)))

(assert (=> bs!1291550 (not (= lambda!299587 lambda!299528))))

(declare-fun bs!1291551 () Bool)

(assert (= bs!1291551 (and b!5584480 d!1765096)))

(assert (=> bs!1291551 (not (= lambda!299587 lambda!299578))))

(assert (=> bs!1291551 (not (= lambda!299587 lambda!299577))))

(assert (=> bs!1291546 (not (= lambda!299587 lambda!299524))))

(assert (=> bs!1291549 (not (= lambda!299587 lambda!299490))))

(assert (=> b!5584480 true))

(assert (=> b!5584480 true))

(declare-fun bs!1291552 () Bool)

(declare-fun b!5584479 () Bool)

(assert (= bs!1291552 (and b!5584479 d!1764908)))

(declare-fun lambda!299588 () Int)

(assert (=> bs!1291552 (= (and (= (regOne!31648 (regTwo!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regTwo!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299588 lambda!299525))))

(declare-fun bs!1291553 () Bool)

(assert (= bs!1291553 (and b!5584479 b!5583761)))

(assert (=> bs!1291553 (= (and (= (regOne!31648 (regTwo!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regTwo!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299588 lambda!299534))))

(declare-fun bs!1291554 () Bool)

(assert (= bs!1291554 (and b!5584479 b!5583762)))

(assert (=> bs!1291554 (not (= lambda!299588 lambda!299533))))

(declare-fun bs!1291555 () Bool)

(assert (= bs!1291555 (and b!5584479 b!5583348)))

(assert (=> bs!1291555 (not (= lambda!299588 lambda!299489))))

(declare-fun bs!1291556 () Bool)

(assert (= bs!1291556 (and b!5584479 d!1764912)))

(assert (=> bs!1291556 (not (= lambda!299588 lambda!299528))))

(declare-fun bs!1291557 () Bool)

(assert (= bs!1291557 (and b!5584479 d!1765096)))

(assert (=> bs!1291557 (= (and (= (regOne!31648 (regTwo!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regTwo!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299588 lambda!299578))))

(assert (=> bs!1291557 (not (= lambda!299588 lambda!299577))))

(declare-fun bs!1291558 () Bool)

(assert (= bs!1291558 (and b!5584479 b!5584480)))

(assert (=> bs!1291558 (not (= lambda!299588 lambda!299587))))

(assert (=> bs!1291552 (not (= lambda!299588 lambda!299524))))

(assert (=> bs!1291555 (= (and (= (regOne!31648 (regTwo!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regTwo!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299588 lambda!299490))))

(assert (=> b!5584479 true))

(assert (=> b!5584479 true))

(declare-fun b!5584473 () Bool)

(declare-fun e!3445617 () Bool)

(declare-fun call!417868 () Bool)

(assert (=> b!5584473 (= e!3445617 call!417868)))

(declare-fun b!5584474 () Bool)

(declare-fun e!3445612 () Bool)

(assert (=> b!5584474 (= e!3445617 e!3445612)))

(declare-fun res!2369740 () Bool)

(assert (=> b!5584474 (= res!2369740 (not (is-EmptyLang!15568 (regTwo!31649 r!7292))))))

(assert (=> b!5584474 (=> (not res!2369740) (not e!3445612))))

(declare-fun b!5584475 () Bool)

(declare-fun e!3445615 () Bool)

(assert (=> b!5584475 (= e!3445615 (matchRSpec!2671 (regTwo!31649 (regTwo!31649 r!7292)) s!2326))))

(declare-fun c!978154 () Bool)

(declare-fun call!417869 () Bool)

(declare-fun bm!417863 () Bool)

(assert (=> bm!417863 (= call!417869 (Exists!2668 (ite c!978154 lambda!299587 lambda!299588)))))

(declare-fun b!5584477 () Bool)

(declare-fun c!978156 () Bool)

(assert (=> b!5584477 (= c!978156 (is-Union!15568 (regTwo!31649 r!7292)))))

(declare-fun e!3445614 () Bool)

(declare-fun e!3445613 () Bool)

(assert (=> b!5584477 (= e!3445614 e!3445613)))

(declare-fun b!5584478 () Bool)

(declare-fun c!978157 () Bool)

(assert (=> b!5584478 (= c!978157 (is-ElementMatch!15568 (regTwo!31649 r!7292)))))

(assert (=> b!5584478 (= e!3445612 e!3445614)))

(declare-fun e!3445611 () Bool)

(assert (=> b!5584479 (= e!3445611 call!417869)))

(declare-fun bm!417864 () Bool)

(assert (=> bm!417864 (= call!417868 (isEmpty!34696 s!2326))))

(declare-fun e!3445616 () Bool)

(assert (=> b!5584480 (= e!3445616 call!417869)))

(declare-fun b!5584481 () Bool)

(declare-fun res!2369741 () Bool)

(assert (=> b!5584481 (=> res!2369741 e!3445616)))

(assert (=> b!5584481 (= res!2369741 call!417868)))

(assert (=> b!5584481 (= e!3445611 e!3445616)))

(declare-fun b!5584476 () Bool)

(assert (=> b!5584476 (= e!3445614 (= s!2326 (Cons!62880 (c!977850 (regTwo!31649 r!7292)) Nil!62880)))))

(declare-fun d!1765186 () Bool)

(declare-fun c!978155 () Bool)

(assert (=> d!1765186 (= c!978155 (is-EmptyExpr!15568 (regTwo!31649 r!7292)))))

(assert (=> d!1765186 (= (matchRSpec!2671 (regTwo!31649 r!7292) s!2326) e!3445617)))

(declare-fun b!5584482 () Bool)

(assert (=> b!5584482 (= e!3445613 e!3445611)))

(assert (=> b!5584482 (= c!978154 (is-Star!15568 (regTwo!31649 r!7292)))))

(declare-fun b!5584483 () Bool)

(assert (=> b!5584483 (= e!3445613 e!3445615)))

(declare-fun res!2369739 () Bool)

(assert (=> b!5584483 (= res!2369739 (matchRSpec!2671 (regOne!31649 (regTwo!31649 r!7292)) s!2326))))

(assert (=> b!5584483 (=> res!2369739 e!3445615)))

(assert (= (and d!1765186 c!978155) b!5584473))

(assert (= (and d!1765186 (not c!978155)) b!5584474))

(assert (= (and b!5584474 res!2369740) b!5584478))

(assert (= (and b!5584478 c!978157) b!5584476))

(assert (= (and b!5584478 (not c!978157)) b!5584477))

(assert (= (and b!5584477 c!978156) b!5584483))

(assert (= (and b!5584477 (not c!978156)) b!5584482))

(assert (= (and b!5584483 (not res!2369739)) b!5584475))

(assert (= (and b!5584482 c!978154) b!5584481))

(assert (= (and b!5584482 (not c!978154)) b!5584479))

(assert (= (and b!5584481 (not res!2369741)) b!5584480))

(assert (= (or b!5584480 b!5584479) bm!417863))

(assert (= (or b!5584473 b!5584481) bm!417864))

(declare-fun m!6565688 () Bool)

(assert (=> b!5584475 m!6565688))

(declare-fun m!6565690 () Bool)

(assert (=> bm!417863 m!6565690))

(assert (=> bm!417864 m!6565014))

(declare-fun m!6565692 () Bool)

(assert (=> b!5584483 m!6565692))

(assert (=> b!5583757 d!1765186))

(declare-fun b!5584492 () Bool)

(declare-fun e!3445622 () List!63004)

(assert (=> b!5584492 (= e!3445622 (_2!35968 (get!21651 lt!2254185)))))

(declare-fun b!5584495 () Bool)

(declare-fun e!3445623 () Bool)

(declare-fun lt!2254261 () List!63004)

(assert (=> b!5584495 (= e!3445623 (or (not (= (_2!35968 (get!21651 lt!2254185)) Nil!62880)) (= lt!2254261 (_1!35968 (get!21651 lt!2254185)))))))

(declare-fun d!1765188 () Bool)

(assert (=> d!1765188 e!3445623))

(declare-fun res!2369747 () Bool)

(assert (=> d!1765188 (=> (not res!2369747) (not e!3445623))))

(declare-fun content!11340 (List!63004) (Set C!31406))

(assert (=> d!1765188 (= res!2369747 (= (content!11340 lt!2254261) (set.union (content!11340 (_1!35968 (get!21651 lt!2254185))) (content!11340 (_2!35968 (get!21651 lt!2254185))))))))

(assert (=> d!1765188 (= lt!2254261 e!3445622)))

(declare-fun c!978160 () Bool)

(assert (=> d!1765188 (= c!978160 (is-Nil!62880 (_1!35968 (get!21651 lt!2254185))))))

(assert (=> d!1765188 (= (++!13799 (_1!35968 (get!21651 lt!2254185)) (_2!35968 (get!21651 lt!2254185))) lt!2254261)))

(declare-fun b!5584494 () Bool)

(declare-fun res!2369746 () Bool)

(assert (=> b!5584494 (=> (not res!2369746) (not e!3445623))))

(declare-fun size!39959 (List!63004) Int)

(assert (=> b!5584494 (= res!2369746 (= (size!39959 lt!2254261) (+ (size!39959 (_1!35968 (get!21651 lt!2254185))) (size!39959 (_2!35968 (get!21651 lt!2254185))))))))

(declare-fun b!5584493 () Bool)

(assert (=> b!5584493 (= e!3445622 (Cons!62880 (h!69328 (_1!35968 (get!21651 lt!2254185))) (++!13799 (t!376277 (_1!35968 (get!21651 lt!2254185))) (_2!35968 (get!21651 lt!2254185)))))))

(assert (= (and d!1765188 c!978160) b!5584492))

(assert (= (and d!1765188 (not c!978160)) b!5584493))

(assert (= (and d!1765188 res!2369747) b!5584494))

(assert (= (and b!5584494 res!2369746) b!5584495))

(declare-fun m!6565694 () Bool)

(assert (=> d!1765188 m!6565694))

(declare-fun m!6565696 () Bool)

(assert (=> d!1765188 m!6565696))

(declare-fun m!6565698 () Bool)

(assert (=> d!1765188 m!6565698))

(declare-fun m!6565700 () Bool)

(assert (=> b!5584494 m!6565700))

(declare-fun m!6565702 () Bool)

(assert (=> b!5584494 m!6565702))

(declare-fun m!6565704 () Bool)

(assert (=> b!5584494 m!6565704))

(declare-fun m!6565706 () Bool)

(assert (=> b!5584493 m!6565706))

(assert (=> b!5583705 d!1765188))

(assert (=> b!5583705 d!1765090))

(declare-fun b!5584496 () Bool)

(declare-fun e!3445625 () Bool)

(assert (=> b!5584496 (= e!3445625 (nullable!5600 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254067)))))))))

(declare-fun d!1765190 () Bool)

(declare-fun c!978161 () Bool)

(assert (=> d!1765190 (= c!978161 e!3445625)))

(declare-fun res!2369748 () Bool)

(assert (=> d!1765190 (=> (not res!2369748) (not e!3445625))))

(assert (=> d!1765190 (= res!2369748 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254067))))))))

(declare-fun e!3445624 () (Set Context!9904))

(assert (=> d!1765190 (= (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 lt!2254067))) (h!69328 s!2326)) e!3445624)))

(declare-fun b!5584497 () Bool)

(declare-fun call!417870 () (Set Context!9904))

(assert (=> b!5584497 (= e!3445624 (set.union call!417870 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254067)))))) (h!69328 s!2326))))))

(declare-fun bm!417865 () Bool)

(assert (=> bm!417865 (= call!417870 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254067))))) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254067)))))) (h!69328 s!2326)))))

(declare-fun b!5584498 () Bool)

(declare-fun e!3445626 () (Set Context!9904))

(assert (=> b!5584498 (= e!3445626 (as set.empty (Set Context!9904)))))

(declare-fun b!5584499 () Bool)

(assert (=> b!5584499 (= e!3445624 e!3445626)))

(declare-fun c!978162 () Bool)

(assert (=> b!5584499 (= c!978162 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254067))))))))

(declare-fun b!5584500 () Bool)

(assert (=> b!5584500 (= e!3445626 call!417870)))

(assert (= (and d!1765190 res!2369748) b!5584496))

(assert (= (and d!1765190 c!978161) b!5584497))

(assert (= (and d!1765190 (not c!978161)) b!5584499))

(assert (= (and b!5584499 c!978162) b!5584500))

(assert (= (and b!5584499 (not c!978162)) b!5584498))

(assert (= (or b!5584497 b!5584500) bm!417865))

(declare-fun m!6565708 () Bool)

(assert (=> b!5584496 m!6565708))

(declare-fun m!6565710 () Bool)

(assert (=> b!5584497 m!6565710))

(declare-fun m!6565712 () Bool)

(assert (=> bm!417865 m!6565712))

(assert (=> b!5583648 d!1765190))

(declare-fun b!5584501 () Bool)

(declare-fun e!3445628 () Bool)

(assert (=> b!5584501 (= e!3445628 (nullable!5600 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))))))

(declare-fun d!1765192 () Bool)

(declare-fun c!978163 () Bool)

(assert (=> d!1765192 (= c!978163 e!3445628)))

(declare-fun res!2369749 () Bool)

(assert (=> d!1765192 (=> (not res!2369749) (not e!3445628))))

(assert (=> d!1765192 (= res!2369749 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))))

(declare-fun e!3445627 () (Set Context!9904))

(assert (=> d!1765192 (= (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (h!69328 s!2326)) e!3445627)))

(declare-fun call!417871 () (Set Context!9904))

(declare-fun b!5584502 () Bool)

(assert (=> b!5584502 (= e!3445627 (set.union call!417871 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))) (h!69328 s!2326))))))

(declare-fun bm!417866 () Bool)

(assert (=> bm!417866 (= call!417871 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))) (h!69328 s!2326)))))

(declare-fun b!5584503 () Bool)

(declare-fun e!3445629 () (Set Context!9904))

(assert (=> b!5584503 (= e!3445629 (as set.empty (Set Context!9904)))))

(declare-fun b!5584504 () Bool)

(assert (=> b!5584504 (= e!3445627 e!3445629)))

(declare-fun c!978164 () Bool)

(assert (=> b!5584504 (= c!978164 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))))

(declare-fun b!5584505 () Bool)

(assert (=> b!5584505 (= e!3445629 call!417871)))

(assert (= (and d!1765192 res!2369749) b!5584501))

(assert (= (and d!1765192 c!978163) b!5584502))

(assert (= (and d!1765192 (not c!978163)) b!5584504))

(assert (= (and b!5584504 c!978164) b!5584505))

(assert (= (and b!5584504 (not c!978164)) b!5584503))

(assert (= (or b!5584502 b!5584505) bm!417866))

(declare-fun m!6565714 () Bool)

(assert (=> b!5584501 m!6565714))

(declare-fun m!6565716 () Bool)

(assert (=> b!5584502 m!6565716))

(declare-fun m!6565718 () Bool)

(assert (=> bm!417866 m!6565718))

(assert (=> b!5583653 d!1765192))

(declare-fun bs!1291559 () Bool)

(declare-fun d!1765194 () Bool)

(assert (= bs!1291559 (and d!1765194 d!1765068)))

(declare-fun lambda!299589 () Int)

(assert (=> bs!1291559 (= lambda!299589 lambda!299572)))

(declare-fun bs!1291560 () Bool)

(assert (= bs!1291560 (and d!1765194 d!1765106)))

(assert (=> bs!1291560 (= lambda!299589 lambda!299579)))

(declare-fun bs!1291561 () Bool)

(assert (= bs!1291561 (and d!1765194 d!1765164)))

(assert (=> bs!1291561 (= lambda!299589 lambda!299585)))

(assert (=> d!1765194 (= (nullableZipper!1565 lt!2254068) (exists!2162 lt!2254068 lambda!299589))))

(declare-fun bs!1291562 () Bool)

(assert (= bs!1291562 d!1765194))

(declare-fun m!6565720 () Bool)

(assert (=> bs!1291562 m!6565720))

(assert (=> b!5583538 d!1765194))

(declare-fun d!1765196 () Bool)

(assert (=> d!1765196 (= (head!11910 (unfocusZipperList!996 zl!343)) (h!69327 (unfocusZipperList!996 zl!343)))))

(assert (=> b!5583622 d!1765196))

(declare-fun b!5584506 () Bool)

(declare-fun e!3445633 () (Set Context!9904))

(declare-fun call!417874 () (Set Context!9904))

(assert (=> b!5584506 (= e!3445633 call!417874)))

(declare-fun bm!417867 () Bool)

(declare-fun call!417875 () List!63003)

(declare-fun call!417877 () List!63003)

(assert (=> bm!417867 (= call!417875 call!417877)))

(declare-fun b!5584507 () Bool)

(declare-fun e!3445631 () (Set Context!9904))

(assert (=> b!5584507 (= e!3445631 (as set.empty (Set Context!9904)))))

(declare-fun b!5584508 () Bool)

(declare-fun e!3445630 () (Set Context!9904))

(declare-fun call!417873 () (Set Context!9904))

(declare-fun call!417872 () (Set Context!9904))

(assert (=> b!5584508 (= e!3445630 (set.union call!417873 call!417872))))

(declare-fun bm!417868 () Bool)

(declare-fun call!417876 () (Set Context!9904))

(assert (=> bm!417868 (= call!417872 call!417876)))

(declare-fun bm!417869 () Bool)

(assert (=> bm!417869 (= call!417874 call!417872)))

(declare-fun b!5584509 () Bool)

(declare-fun c!978166 () Bool)

(declare-fun e!3445632 () Bool)

(assert (=> b!5584509 (= c!978166 e!3445632)))

(declare-fun res!2369750 () Bool)

(assert (=> b!5584509 (=> (not res!2369750) (not e!3445632))))

(assert (=> b!5584509 (= res!2369750 (is-Concat!24413 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))))))

(declare-fun e!3445634 () (Set Context!9904))

(assert (=> b!5584509 (= e!3445634 e!3445630)))

(declare-fun b!5584510 () Bool)

(declare-fun e!3445635 () (Set Context!9904))

(assert (=> b!5584510 (= e!3445635 e!3445634)))

(declare-fun c!978167 () Bool)

(assert (=> b!5584510 (= c!978167 (is-Union!15568 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))))))

(declare-fun b!5584512 () Bool)

(declare-fun c!978168 () Bool)

(assert (=> b!5584512 (= c!978168 (is-Star!15568 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))))))

(assert (=> b!5584512 (= e!3445633 e!3445631)))

(declare-fun bm!417870 () Bool)

(assert (=> bm!417870 (= call!417873 (derivationStepZipperDown!910 (ite c!978167 (regTwo!31649 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))) (regOne!31648 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292)))))))) (ite c!978167 (ite (or c!977885 c!977884) lt!2254067 (Context!9905 call!417726)) (Context!9905 call!417877)) (h!69328 s!2326)))))

(declare-fun b!5584513 () Bool)

(assert (=> b!5584513 (= e!3445630 e!3445633)))

(declare-fun c!978165 () Bool)

(assert (=> b!5584513 (= c!978165 (is-Concat!24413 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))))))

(declare-fun b!5584514 () Bool)

(assert (=> b!5584514 (= e!3445634 (set.union call!417876 call!417873))))

(declare-fun b!5584515 () Bool)

(assert (=> b!5584515 (= e!3445631 call!417874)))

(declare-fun b!5584516 () Bool)

(assert (=> b!5584516 (= e!3445632 (nullable!5600 (regOne!31648 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292)))))))))))

(declare-fun b!5584511 () Bool)

(assert (=> b!5584511 (= e!3445635 (set.insert (ite (or c!977885 c!977884) lt!2254067 (Context!9905 call!417726)) (as set.empty (Set Context!9904))))))

(declare-fun d!1765198 () Bool)

(declare-fun c!978169 () Bool)

(assert (=> d!1765198 (= c!978169 (and (is-ElementMatch!15568 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))) (= (c!977850 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))) (h!69328 s!2326))))))

(assert (=> d!1765198 (= (derivationStepZipperDown!910 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292)))))) (ite (or c!977885 c!977884) lt!2254067 (Context!9905 call!417726)) (h!69328 s!2326)) e!3445635)))

(declare-fun bm!417871 () Bool)

(assert (=> bm!417871 (= call!417877 ($colon$colon!1633 (exprs!5452 (ite (or c!977885 c!977884) lt!2254067 (Context!9905 call!417726))) (ite (or c!978166 c!978165) (regTwo!31648 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))) (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292)))))))))))

(declare-fun bm!417872 () Bool)

(assert (=> bm!417872 (= call!417876 (derivationStepZipperDown!910 (ite c!978167 (regOne!31649 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))) (ite c!978166 (regTwo!31648 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))) (ite c!978165 (regOne!31648 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292))))))) (reg!15897 (ite c!977885 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (ite c!977884 (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))) (ite c!977883 (regOne!31648 (regOne!31649 (regOne!31648 r!7292))) (reg!15897 (regOne!31649 (regOne!31648 r!7292)))))))))) (ite (or c!978167 c!978166) (ite (or c!977885 c!977884) lt!2254067 (Context!9905 call!417726)) (Context!9905 call!417875)) (h!69328 s!2326)))))

(assert (= (and d!1765198 c!978169) b!5584511))

(assert (= (and d!1765198 (not c!978169)) b!5584510))

(assert (= (and b!5584510 c!978167) b!5584514))

(assert (= (and b!5584510 (not c!978167)) b!5584509))

(assert (= (and b!5584509 res!2369750) b!5584516))

(assert (= (and b!5584509 c!978166) b!5584508))

(assert (= (and b!5584509 (not c!978166)) b!5584513))

(assert (= (and b!5584513 c!978165) b!5584506))

(assert (= (and b!5584513 (not c!978165)) b!5584512))

(assert (= (and b!5584512 c!978168) b!5584515))

(assert (= (and b!5584512 (not c!978168)) b!5584507))

(assert (= (or b!5584506 b!5584515) bm!417867))

(assert (= (or b!5584506 b!5584515) bm!417869))

(assert (= (or b!5584508 bm!417867) bm!417871))

(assert (= (or b!5584508 bm!417869) bm!417868))

(assert (= (or b!5584514 b!5584508) bm!417870))

(assert (= (or b!5584514 bm!417868) bm!417872))

(declare-fun m!6565722 () Bool)

(assert (=> b!5584516 m!6565722))

(declare-fun m!6565724 () Bool)

(assert (=> bm!417872 m!6565724))

(declare-fun m!6565726 () Bool)

(assert (=> bm!417870 m!6565726))

(declare-fun m!6565728 () Bool)

(assert (=> b!5584511 m!6565728))

(declare-fun m!6565730 () Bool)

(assert (=> bm!417871 m!6565730))

(assert (=> bm!417723 d!1765198))

(assert (=> bs!1291438 d!1764932))

(declare-fun b!5584517 () Bool)

(declare-fun e!3445639 () (Set Context!9904))

(declare-fun call!417880 () (Set Context!9904))

(assert (=> b!5584517 (= e!3445639 call!417880)))

(declare-fun bm!417873 () Bool)

(declare-fun call!417881 () List!63003)

(declare-fun call!417883 () List!63003)

(assert (=> bm!417873 (= call!417881 call!417883)))

(declare-fun b!5584518 () Bool)

(declare-fun e!3445637 () (Set Context!9904))

(assert (=> b!5584518 (= e!3445637 (as set.empty (Set Context!9904)))))

(declare-fun b!5584519 () Bool)

(declare-fun e!3445636 () (Set Context!9904))

(declare-fun call!417879 () (Set Context!9904))

(declare-fun call!417878 () (Set Context!9904))

(assert (=> b!5584519 (= e!3445636 (set.union call!417879 call!417878))))

(declare-fun bm!417874 () Bool)

(declare-fun call!417882 () (Set Context!9904))

(assert (=> bm!417874 (= call!417878 call!417882)))

(declare-fun bm!417875 () Bool)

(assert (=> bm!417875 (= call!417880 call!417878)))

(declare-fun b!5584520 () Bool)

(declare-fun c!978171 () Bool)

(declare-fun e!3445638 () Bool)

(assert (=> b!5584520 (= c!978171 e!3445638)))

(declare-fun res!2369751 () Bool)

(assert (=> b!5584520 (=> (not res!2369751) (not e!3445638))))

(assert (=> b!5584520 (= res!2369751 (is-Concat!24413 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun e!3445640 () (Set Context!9904))

(assert (=> b!5584520 (= e!3445640 e!3445636)))

(declare-fun b!5584521 () Bool)

(declare-fun e!3445641 () (Set Context!9904))

(assert (=> b!5584521 (= e!3445641 e!3445640)))

(declare-fun c!978172 () Bool)

(assert (=> b!5584521 (= c!978172 (is-Union!15568 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun c!978173 () Bool)

(declare-fun b!5584523 () Bool)

(assert (=> b!5584523 (= c!978173 (is-Star!15568 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))))

(assert (=> b!5584523 (= e!3445639 e!3445637)))

(declare-fun bm!417876 () Bool)

(assert (=> bm!417876 (= call!417879 (derivationStepZipperDown!910 (ite c!978172 (regTwo!31649 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))) (regOne!31648 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343))))))))) (ite c!978172 (ite (or c!977936 c!977935) lt!2254067 (Context!9905 call!417745)) (Context!9905 call!417883)) (h!69328 s!2326)))))

(declare-fun b!5584524 () Bool)

(assert (=> b!5584524 (= e!3445636 e!3445639)))

(declare-fun c!978170 () Bool)

(assert (=> b!5584524 (= c!978170 (is-Concat!24413 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun b!5584525 () Bool)

(assert (=> b!5584525 (= e!3445640 (set.union call!417882 call!417879))))

(declare-fun b!5584526 () Bool)

(assert (=> b!5584526 (= e!3445637 call!417880)))

(declare-fun b!5584527 () Bool)

(assert (=> b!5584527 (= e!3445638 (nullable!5600 (regOne!31648 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343))))))))))))

(declare-fun b!5584522 () Bool)

(assert (=> b!5584522 (= e!3445641 (set.insert (ite (or c!977936 c!977935) lt!2254067 (Context!9905 call!417745)) (as set.empty (Set Context!9904))))))

(declare-fun d!1765200 () Bool)

(declare-fun c!978174 () Bool)

(assert (=> d!1765200 (= c!978174 (and (is-ElementMatch!15568 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))) (= (c!977850 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))) (h!69328 s!2326))))))

(assert (=> d!1765200 (= (derivationStepZipperDown!910 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343))))))) (ite (or c!977936 c!977935) lt!2254067 (Context!9905 call!417745)) (h!69328 s!2326)) e!3445641)))

(declare-fun bm!417877 () Bool)

(assert (=> bm!417877 (= call!417883 ($colon$colon!1633 (exprs!5452 (ite (or c!977936 c!977935) lt!2254067 (Context!9905 call!417745))) (ite (or c!978171 c!978170) (regTwo!31648 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))) (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343))))))))))))

(declare-fun bm!417878 () Bool)

(assert (=> bm!417878 (= call!417882 (derivationStepZipperDown!910 (ite c!978172 (regOne!31649 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))) (ite c!978171 (regTwo!31648 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))) (ite c!978170 (regOne!31648 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343)))))))) (reg!15897 (ite c!977936 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977935 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!977934 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343))))))))))) (ite (or c!978172 c!978171) (ite (or c!977936 c!977935) lt!2254067 (Context!9905 call!417745)) (Context!9905 call!417881)) (h!69328 s!2326)))))

(assert (= (and d!1765200 c!978174) b!5584522))

(assert (= (and d!1765200 (not c!978174)) b!5584521))

(assert (= (and b!5584521 c!978172) b!5584525))

(assert (= (and b!5584521 (not c!978172)) b!5584520))

(assert (= (and b!5584520 res!2369751) b!5584527))

(assert (= (and b!5584520 c!978171) b!5584519))

(assert (= (and b!5584520 (not c!978171)) b!5584524))

(assert (= (and b!5584524 c!978170) b!5584517))

(assert (= (and b!5584524 (not c!978170)) b!5584523))

(assert (= (and b!5584523 c!978173) b!5584526))

(assert (= (and b!5584523 (not c!978173)) b!5584518))

(assert (= (or b!5584517 b!5584526) bm!417873))

(assert (= (or b!5584517 b!5584526) bm!417875))

(assert (= (or b!5584519 bm!417873) bm!417877))

(assert (= (or b!5584519 bm!417875) bm!417874))

(assert (= (or b!5584525 b!5584519) bm!417876))

(assert (= (or b!5584525 bm!417874) bm!417878))

(declare-fun m!6565732 () Bool)

(assert (=> b!5584527 m!6565732))

(declare-fun m!6565734 () Bool)

(assert (=> bm!417878 m!6565734))

(declare-fun m!6565736 () Bool)

(assert (=> bm!417876 m!6565736))

(declare-fun m!6565738 () Bool)

(assert (=> b!5584522 m!6565738))

(declare-fun m!6565740 () Bool)

(assert (=> bm!417877 m!6565740))

(assert (=> bm!417742 d!1765200))

(declare-fun b!5584528 () Bool)

(declare-fun e!3445643 () Bool)

(assert (=> b!5584528 (= e!3445643 (nullable!5600 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343))))))))))

(declare-fun d!1765202 () Bool)

(declare-fun c!978175 () Bool)

(assert (=> d!1765202 (= c!978175 e!3445643)))

(declare-fun res!2369752 () Bool)

(assert (=> d!1765202 (=> (not res!2369752) (not e!3445643))))

(assert (=> d!1765202 (= res!2369752 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun e!3445642 () (Set Context!9904))

(assert (=> d!1765202 (= (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))) (h!69328 s!2326)) e!3445642)))

(declare-fun call!417884 () (Set Context!9904))

(declare-fun b!5584529 () Bool)

(assert (=> b!5584529 (= e!3445642 (set.union call!417884 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343))))))) (h!69328 s!2326))))))

(declare-fun bm!417879 () Bool)

(assert (=> bm!417879 (= call!417884 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))))) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343))))))) (h!69328 s!2326)))))

(declare-fun b!5584530 () Bool)

(declare-fun e!3445644 () (Set Context!9904))

(assert (=> b!5584530 (= e!3445644 (as set.empty (Set Context!9904)))))

(declare-fun b!5584531 () Bool)

(assert (=> b!5584531 (= e!3445642 e!3445644)))

(declare-fun c!978176 () Bool)

(assert (=> b!5584531 (= c!978176 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun b!5584532 () Bool)

(assert (=> b!5584532 (= e!3445644 call!417884)))

(assert (= (and d!1765202 res!2369752) b!5584528))

(assert (= (and d!1765202 c!978175) b!5584529))

(assert (= (and d!1765202 (not c!978175)) b!5584531))

(assert (= (and b!5584531 c!978176) b!5584532))

(assert (= (and b!5584531 (not c!978176)) b!5584530))

(assert (= (or b!5584529 b!5584532) bm!417879))

(declare-fun m!6565742 () Bool)

(assert (=> b!5584528 m!6565742))

(declare-fun m!6565744 () Bool)

(assert (=> b!5584529 m!6565744))

(declare-fun m!6565746 () Bool)

(assert (=> bm!417879 m!6565746))

(assert (=> b!5583669 d!1765202))

(declare-fun d!1765204 () Bool)

(declare-fun c!978177 () Bool)

(assert (=> d!1765204 (= c!978177 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445645 () Bool)

(assert (=> d!1765204 (= (matchZipper!1706 (derivationStepZipper!1667 lt!2254043 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445645)))

(declare-fun b!5584533 () Bool)

(assert (=> b!5584533 (= e!3445645 (nullableZipper!1565 (derivationStepZipper!1667 lt!2254043 (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584534 () Bool)

(assert (=> b!5584534 (= e!3445645 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 lt!2254043 (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765204 c!978177) b!5584533))

(assert (= (and d!1765204 (not c!978177)) b!5584534))

(assert (=> d!1765204 m!6564922))

(assert (=> d!1765204 m!6565544))

(assert (=> b!5584533 m!6565074))

(declare-fun m!6565748 () Bool)

(assert (=> b!5584533 m!6565748))

(assert (=> b!5584534 m!6564922))

(assert (=> b!5584534 m!6565548))

(assert (=> b!5584534 m!6565074))

(assert (=> b!5584534 m!6565548))

(declare-fun m!6565750 () Bool)

(assert (=> b!5584534 m!6565750))

(assert (=> b!5584534 m!6564922))

(assert (=> b!5584534 m!6565552))

(assert (=> b!5584534 m!6565750))

(assert (=> b!5584534 m!6565552))

(declare-fun m!6565752 () Bool)

(assert (=> b!5584534 m!6565752))

(assert (=> b!5583677 d!1765204))

(declare-fun bs!1291563 () Bool)

(declare-fun d!1765206 () Bool)

(assert (= bs!1291563 (and d!1765206 d!1765110)))

(declare-fun lambda!299590 () Int)

(assert (=> bs!1291563 (= lambda!299590 lambda!299580)))

(declare-fun bs!1291564 () Bool)

(assert (= bs!1291564 (and d!1765206 d!1765154)))

(assert (=> bs!1291564 (= lambda!299590 lambda!299584)))

(declare-fun bs!1291565 () Bool)

(assert (= bs!1291565 (and d!1765206 b!5583357)))

(assert (=> bs!1291565 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299590 lambda!299491))))

(declare-fun bs!1291566 () Bool)

(assert (= bs!1291566 (and d!1765206 d!1765146)))

(assert (=> bs!1291566 (= lambda!299590 lambda!299582)))

(declare-fun bs!1291567 () Bool)

(assert (= bs!1291567 (and d!1765206 d!1765182)))

(assert (=> bs!1291567 (= lambda!299590 lambda!299586)))

(declare-fun bs!1291568 () Bool)

(assert (= bs!1291568 (and d!1765206 d!1764940)))

(assert (=> bs!1291568 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299590 lambda!299537))))

(assert (=> d!1765206 true))

(assert (=> d!1765206 (= (derivationStepZipper!1667 lt!2254043 (head!11909 (t!376277 s!2326))) (flatMap!1181 lt!2254043 lambda!299590))))

(declare-fun bs!1291569 () Bool)

(assert (= bs!1291569 d!1765206))

(declare-fun m!6565754 () Bool)

(assert (=> bs!1291569 m!6565754))

(assert (=> b!5583677 d!1765206))

(assert (=> b!5583677 d!1765112))

(assert (=> b!5583677 d!1765114))

(declare-fun b!5584535 () Bool)

(declare-fun e!3445649 () (Set Context!9904))

(declare-fun call!417887 () (Set Context!9904))

(assert (=> b!5584535 (= e!3445649 call!417887)))

(declare-fun bm!417880 () Bool)

(declare-fun call!417888 () List!63003)

(declare-fun call!417890 () List!63003)

(assert (=> bm!417880 (= call!417888 call!417890)))

(declare-fun b!5584536 () Bool)

(declare-fun e!3445647 () (Set Context!9904))

(assert (=> b!5584536 (= e!3445647 (as set.empty (Set Context!9904)))))

(declare-fun b!5584537 () Bool)

(declare-fun e!3445646 () (Set Context!9904))

(declare-fun call!417886 () (Set Context!9904))

(declare-fun call!417885 () (Set Context!9904))

(assert (=> b!5584537 (= e!3445646 (set.union call!417886 call!417885))))

(declare-fun bm!417881 () Bool)

(declare-fun call!417889 () (Set Context!9904))

(assert (=> bm!417881 (= call!417885 call!417889)))

(declare-fun bm!417882 () Bool)

(assert (=> bm!417882 (= call!417887 call!417885)))

(declare-fun b!5584538 () Bool)

(declare-fun c!978179 () Bool)

(declare-fun e!3445648 () Bool)

(assert (=> b!5584538 (= c!978179 e!3445648)))

(declare-fun res!2369753 () Bool)

(assert (=> b!5584538 (=> (not res!2369753) (not e!3445648))))

(assert (=> b!5584538 (= res!2369753 (is-Concat!24413 (h!69327 (exprs!5452 lt!2254067))))))

(declare-fun e!3445650 () (Set Context!9904))

(assert (=> b!5584538 (= e!3445650 e!3445646)))

(declare-fun b!5584539 () Bool)

(declare-fun e!3445651 () (Set Context!9904))

(assert (=> b!5584539 (= e!3445651 e!3445650)))

(declare-fun c!978180 () Bool)

(assert (=> b!5584539 (= c!978180 (is-Union!15568 (h!69327 (exprs!5452 lt!2254067))))))

(declare-fun b!5584541 () Bool)

(declare-fun c!978181 () Bool)

(assert (=> b!5584541 (= c!978181 (is-Star!15568 (h!69327 (exprs!5452 lt!2254067))))))

(assert (=> b!5584541 (= e!3445649 e!3445647)))

(declare-fun bm!417883 () Bool)

(assert (=> bm!417883 (= call!417886 (derivationStepZipperDown!910 (ite c!978180 (regTwo!31649 (h!69327 (exprs!5452 lt!2254067))) (regOne!31648 (h!69327 (exprs!5452 lt!2254067)))) (ite c!978180 (Context!9905 (t!376276 (exprs!5452 lt!2254067))) (Context!9905 call!417890)) (h!69328 s!2326)))))

(declare-fun b!5584542 () Bool)

(assert (=> b!5584542 (= e!3445646 e!3445649)))

(declare-fun c!978178 () Bool)

(assert (=> b!5584542 (= c!978178 (is-Concat!24413 (h!69327 (exprs!5452 lt!2254067))))))

(declare-fun b!5584543 () Bool)

(assert (=> b!5584543 (= e!3445650 (set.union call!417889 call!417886))))

(declare-fun b!5584544 () Bool)

(assert (=> b!5584544 (= e!3445647 call!417887)))

(declare-fun b!5584545 () Bool)

(assert (=> b!5584545 (= e!3445648 (nullable!5600 (regOne!31648 (h!69327 (exprs!5452 lt!2254067)))))))

(declare-fun b!5584540 () Bool)

(assert (=> b!5584540 (= e!3445651 (set.insert (Context!9905 (t!376276 (exprs!5452 lt!2254067))) (as set.empty (Set Context!9904))))))

(declare-fun d!1765208 () Bool)

(declare-fun c!978182 () Bool)

(assert (=> d!1765208 (= c!978182 (and (is-ElementMatch!15568 (h!69327 (exprs!5452 lt!2254067))) (= (c!977850 (h!69327 (exprs!5452 lt!2254067))) (h!69328 s!2326))))))

(assert (=> d!1765208 (= (derivationStepZipperDown!910 (h!69327 (exprs!5452 lt!2254067)) (Context!9905 (t!376276 (exprs!5452 lt!2254067))) (h!69328 s!2326)) e!3445651)))

(declare-fun bm!417884 () Bool)

(assert (=> bm!417884 (= call!417890 ($colon$colon!1633 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254067)))) (ite (or c!978179 c!978178) (regTwo!31648 (h!69327 (exprs!5452 lt!2254067))) (h!69327 (exprs!5452 lt!2254067)))))))

(declare-fun bm!417885 () Bool)

(assert (=> bm!417885 (= call!417889 (derivationStepZipperDown!910 (ite c!978180 (regOne!31649 (h!69327 (exprs!5452 lt!2254067))) (ite c!978179 (regTwo!31648 (h!69327 (exprs!5452 lt!2254067))) (ite c!978178 (regOne!31648 (h!69327 (exprs!5452 lt!2254067))) (reg!15897 (h!69327 (exprs!5452 lt!2254067)))))) (ite (or c!978180 c!978179) (Context!9905 (t!376276 (exprs!5452 lt!2254067))) (Context!9905 call!417888)) (h!69328 s!2326)))))

(assert (= (and d!1765208 c!978182) b!5584540))

(assert (= (and d!1765208 (not c!978182)) b!5584539))

(assert (= (and b!5584539 c!978180) b!5584543))

(assert (= (and b!5584539 (not c!978180)) b!5584538))

(assert (= (and b!5584538 res!2369753) b!5584545))

(assert (= (and b!5584538 c!978179) b!5584537))

(assert (= (and b!5584538 (not c!978179)) b!5584542))

(assert (= (and b!5584542 c!978178) b!5584535))

(assert (= (and b!5584542 (not c!978178)) b!5584541))

(assert (= (and b!5584541 c!978181) b!5584544))

(assert (= (and b!5584541 (not c!978181)) b!5584536))

(assert (= (or b!5584535 b!5584544) bm!417880))

(assert (= (or b!5584535 b!5584544) bm!417882))

(assert (= (or b!5584537 bm!417880) bm!417884))

(assert (= (or b!5584537 bm!417882) bm!417881))

(assert (= (or b!5584543 b!5584537) bm!417883))

(assert (= (or b!5584543 bm!417881) bm!417885))

(declare-fun m!6565756 () Bool)

(assert (=> b!5584545 m!6565756))

(declare-fun m!6565758 () Bool)

(assert (=> bm!417885 m!6565758))

(declare-fun m!6565760 () Bool)

(assert (=> bm!417883 m!6565760))

(declare-fun m!6565762 () Bool)

(assert (=> b!5584540 m!6565762))

(declare-fun m!6565764 () Bool)

(assert (=> bm!417884 m!6565764))

(assert (=> bm!417735 d!1765208))

(declare-fun b!5584546 () Bool)

(declare-fun e!3445655 () (Set Context!9904))

(declare-fun call!417893 () (Set Context!9904))

(assert (=> b!5584546 (= e!3445655 call!417893)))

(declare-fun bm!417886 () Bool)

(declare-fun call!417894 () List!63003)

(declare-fun call!417896 () List!63003)

(assert (=> bm!417886 (= call!417894 call!417896)))

(declare-fun b!5584547 () Bool)

(declare-fun e!3445653 () (Set Context!9904))

(assert (=> b!5584547 (= e!3445653 (as set.empty (Set Context!9904)))))

(declare-fun b!5584548 () Bool)

(declare-fun e!3445652 () (Set Context!9904))

(declare-fun call!417892 () (Set Context!9904))

(declare-fun call!417891 () (Set Context!9904))

(assert (=> b!5584548 (= e!3445652 (set.union call!417892 call!417891))))

(declare-fun bm!417887 () Bool)

(declare-fun call!417895 () (Set Context!9904))

(assert (=> bm!417887 (= call!417891 call!417895)))

(declare-fun bm!417888 () Bool)

(assert (=> bm!417888 (= call!417893 call!417891)))

(declare-fun b!5584549 () Bool)

(declare-fun c!978184 () Bool)

(declare-fun e!3445654 () Bool)

(assert (=> b!5584549 (= c!978184 e!3445654)))

(declare-fun res!2369754 () Bool)

(assert (=> b!5584549 (=> (not res!2369754) (not e!3445654))))

(assert (=> b!5584549 (= res!2369754 (is-Concat!24413 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun e!3445656 () (Set Context!9904))

(assert (=> b!5584549 (= e!3445656 e!3445652)))

(declare-fun b!5584550 () Bool)

(declare-fun e!3445657 () (Set Context!9904))

(assert (=> b!5584550 (= e!3445657 e!3445656)))

(declare-fun c!978185 () Bool)

(assert (=> b!5584550 (= c!978185 (is-Union!15568 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun b!5584552 () Bool)

(declare-fun c!978186 () Bool)

(assert (=> b!5584552 (= c!978186 (is-Star!15568 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))

(assert (=> b!5584552 (= e!3445655 e!3445653)))

(declare-fun bm!417889 () Bool)

(assert (=> bm!417889 (= call!417892 (derivationStepZipperDown!910 (ite c!978185 (regTwo!31649 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (regOne!31648 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))) (ite c!978185 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (Context!9905 call!417896)) (h!69328 s!2326)))))

(declare-fun b!5584553 () Bool)

(assert (=> b!5584553 (= e!3445652 e!3445655)))

(declare-fun c!978183 () Bool)

(assert (=> b!5584553 (= c!978183 (is-Concat!24413 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))))))

(declare-fun b!5584554 () Bool)

(assert (=> b!5584554 (= e!3445656 (set.union call!417895 call!417892))))

(declare-fun b!5584555 () Bool)

(assert (=> b!5584555 (= e!3445653 call!417893)))

(declare-fun b!5584556 () Bool)

(assert (=> b!5584556 (= e!3445654 (nullable!5600 (regOne!31648 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))))

(declare-fun b!5584551 () Bool)

(assert (=> b!5584551 (= e!3445657 (set.insert (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (as set.empty (Set Context!9904))))))

(declare-fun d!1765210 () Bool)

(declare-fun c!978187 () Bool)

(assert (=> d!1765210 (= c!978187 (and (is-ElementMatch!15568 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (= (c!977850 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (h!69328 s!2326))))))

(assert (=> d!1765210 (= (derivationStepZipperDown!910 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (h!69328 s!2326)) e!3445657)))

(declare-fun bm!417890 () Bool)

(assert (=> bm!417890 (= call!417896 ($colon$colon!1633 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))) (ite (or c!978184 c!978183) (regTwo!31648 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))))

(declare-fun bm!417891 () Bool)

(assert (=> bm!417891 (= call!417895 (derivationStepZipperDown!910 (ite c!978185 (regOne!31649 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (ite c!978184 (regTwo!31648 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (ite c!978183 (regOne!31648 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (reg!15897 (h!69327 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))))))) (ite (or c!978185 c!978184) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (Cons!62879 (h!69327 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343)))))))) (Context!9905 call!417894)) (h!69328 s!2326)))))

(assert (= (and d!1765210 c!978187) b!5584551))

(assert (= (and d!1765210 (not c!978187)) b!5584550))

(assert (= (and b!5584550 c!978185) b!5584554))

(assert (= (and b!5584550 (not c!978185)) b!5584549))

(assert (= (and b!5584549 res!2369754) b!5584556))

(assert (= (and b!5584549 c!978184) b!5584548))

(assert (= (and b!5584549 (not c!978184)) b!5584553))

(assert (= (and b!5584553 c!978183) b!5584546))

(assert (= (and b!5584553 (not c!978183)) b!5584552))

(assert (= (and b!5584552 c!978186) b!5584555))

(assert (= (and b!5584552 (not c!978186)) b!5584547))

(assert (= (or b!5584546 b!5584555) bm!417886))

(assert (= (or b!5584546 b!5584555) bm!417888))

(assert (= (or b!5584548 bm!417886) bm!417890))

(assert (= (or b!5584548 bm!417888) bm!417887))

(assert (= (or b!5584554 b!5584548) bm!417889))

(assert (= (or b!5584554 bm!417887) bm!417891))

(declare-fun m!6565766 () Bool)

(assert (=> b!5584556 m!6565766))

(declare-fun m!6565768 () Bool)

(assert (=> bm!417891 m!6565768))

(declare-fun m!6565770 () Bool)

(assert (=> bm!417889 m!6565770))

(declare-fun m!6565772 () Bool)

(assert (=> b!5584551 m!6565772))

(declare-fun m!6565774 () Bool)

(assert (=> bm!417890 m!6565774))

(assert (=> bm!417736 d!1765210))

(declare-fun d!1765212 () Bool)

(assert (=> d!1765212 (= (nullable!5600 (h!69327 (exprs!5452 lt!2254058))) (nullableFct!1711 (h!69327 (exprs!5452 lt!2254058))))))

(declare-fun bs!1291570 () Bool)

(assert (= bs!1291570 d!1765212))

(declare-fun m!6565776 () Bool)

(assert (=> bs!1291570 m!6565776))

(assert (=> b!5583813 d!1765212))

(assert (=> d!1764898 d!1765104))

(declare-fun d!1765214 () Bool)

(assert (=> d!1765214 (= (isEmpty!34696 s!2326) (is-Nil!62880 s!2326))))

(assert (=> bm!417752 d!1765214))

(declare-fun d!1765216 () Bool)

(assert (=> d!1765216 (= (nullable!5600 (reg!15897 r!7292)) (nullableFct!1711 (reg!15897 r!7292)))))

(declare-fun bs!1291571 () Bool)

(assert (= bs!1291571 d!1765216))

(declare-fun m!6565778 () Bool)

(assert (=> bs!1291571 m!6565778))

(assert (=> b!5583564 d!1765216))

(declare-fun d!1765218 () Bool)

(assert (=> d!1765218 true))

(declare-fun setRes!37187 () Bool)

(assert (=> d!1765218 setRes!37187))

(declare-fun condSetEmpty!37187 () Bool)

(declare-fun res!2369755 () (Set Context!9904))

(assert (=> d!1765218 (= condSetEmpty!37187 (= res!2369755 (as set.empty (Set Context!9904))))))

(assert (=> d!1765218 (= (choose!42324 lt!2254060 lambda!299491) res!2369755)))

(declare-fun setIsEmpty!37187 () Bool)

(assert (=> setIsEmpty!37187 setRes!37187))

(declare-fun tp!1544870 () Bool)

(declare-fun setNonEmpty!37187 () Bool)

(declare-fun e!3445658 () Bool)

(declare-fun setElem!37187 () Context!9904)

(assert (=> setNonEmpty!37187 (= setRes!37187 (and tp!1544870 (inv!82168 setElem!37187) e!3445658))))

(declare-fun setRest!37187 () (Set Context!9904))

(assert (=> setNonEmpty!37187 (= res!2369755 (set.union (set.insert setElem!37187 (as set.empty (Set Context!9904))) setRest!37187))))

(declare-fun b!5584557 () Bool)

(declare-fun tp!1544871 () Bool)

(assert (=> b!5584557 (= e!3445658 tp!1544871)))

(assert (= (and d!1765218 condSetEmpty!37187) setIsEmpty!37187))

(assert (= (and d!1765218 (not condSetEmpty!37187)) setNonEmpty!37187))

(assert (= setNonEmpty!37187 b!5584557))

(declare-fun m!6565780 () Bool)

(assert (=> setNonEmpty!37187 m!6565780))

(assert (=> d!1764936 d!1765218))

(declare-fun b!5584558 () Bool)

(declare-fun e!3445662 () (Set Context!9904))

(declare-fun call!417899 () (Set Context!9904))

(assert (=> b!5584558 (= e!3445662 call!417899)))

(declare-fun bm!417892 () Bool)

(declare-fun call!417900 () List!63003)

(declare-fun call!417902 () List!63003)

(assert (=> bm!417892 (= call!417900 call!417902)))

(declare-fun b!5584559 () Bool)

(declare-fun e!3445660 () (Set Context!9904))

(assert (=> b!5584559 (= e!3445660 (as set.empty (Set Context!9904)))))

(declare-fun b!5584560 () Bool)

(declare-fun e!3445659 () (Set Context!9904))

(declare-fun call!417898 () (Set Context!9904))

(declare-fun call!417897 () (Set Context!9904))

(assert (=> b!5584560 (= e!3445659 (set.union call!417898 call!417897))))

(declare-fun bm!417893 () Bool)

(declare-fun call!417901 () (Set Context!9904))

(assert (=> bm!417893 (= call!417897 call!417901)))

(declare-fun bm!417894 () Bool)

(assert (=> bm!417894 (= call!417899 call!417897)))

(declare-fun b!5584561 () Bool)

(declare-fun c!978189 () Bool)

(declare-fun e!3445661 () Bool)

(assert (=> b!5584561 (= c!978189 e!3445661)))

(declare-fun res!2369756 () Bool)

(assert (=> b!5584561 (=> (not res!2369756) (not e!3445661))))

(assert (=> b!5584561 (= res!2369756 (is-Concat!24413 (h!69327 (exprs!5452 lt!2254049))))))

(declare-fun e!3445663 () (Set Context!9904))

(assert (=> b!5584561 (= e!3445663 e!3445659)))

(declare-fun b!5584562 () Bool)

(declare-fun e!3445664 () (Set Context!9904))

(assert (=> b!5584562 (= e!3445664 e!3445663)))

(declare-fun c!978190 () Bool)

(assert (=> b!5584562 (= c!978190 (is-Union!15568 (h!69327 (exprs!5452 lt!2254049))))))

(declare-fun b!5584564 () Bool)

(declare-fun c!978191 () Bool)

(assert (=> b!5584564 (= c!978191 (is-Star!15568 (h!69327 (exprs!5452 lt!2254049))))))

(assert (=> b!5584564 (= e!3445662 e!3445660)))

(declare-fun bm!417895 () Bool)

(assert (=> bm!417895 (= call!417898 (derivationStepZipperDown!910 (ite c!978190 (regTwo!31649 (h!69327 (exprs!5452 lt!2254049))) (regOne!31648 (h!69327 (exprs!5452 lt!2254049)))) (ite c!978190 (Context!9905 (t!376276 (exprs!5452 lt!2254049))) (Context!9905 call!417902)) (h!69328 s!2326)))))

(declare-fun b!5584565 () Bool)

(assert (=> b!5584565 (= e!3445659 e!3445662)))

(declare-fun c!978188 () Bool)

(assert (=> b!5584565 (= c!978188 (is-Concat!24413 (h!69327 (exprs!5452 lt!2254049))))))

(declare-fun b!5584566 () Bool)

(assert (=> b!5584566 (= e!3445663 (set.union call!417901 call!417898))))

(declare-fun b!5584567 () Bool)

(assert (=> b!5584567 (= e!3445660 call!417899)))

(declare-fun b!5584568 () Bool)

(assert (=> b!5584568 (= e!3445661 (nullable!5600 (regOne!31648 (h!69327 (exprs!5452 lt!2254049)))))))

(declare-fun b!5584563 () Bool)

(assert (=> b!5584563 (= e!3445664 (set.insert (Context!9905 (t!376276 (exprs!5452 lt!2254049))) (as set.empty (Set Context!9904))))))

(declare-fun d!1765220 () Bool)

(declare-fun c!978192 () Bool)

(assert (=> d!1765220 (= c!978192 (and (is-ElementMatch!15568 (h!69327 (exprs!5452 lt!2254049))) (= (c!977850 (h!69327 (exprs!5452 lt!2254049))) (h!69328 s!2326))))))

(assert (=> d!1765220 (= (derivationStepZipperDown!910 (h!69327 (exprs!5452 lt!2254049)) (Context!9905 (t!376276 (exprs!5452 lt!2254049))) (h!69328 s!2326)) e!3445664)))

(declare-fun bm!417896 () Bool)

(assert (=> bm!417896 (= call!417902 ($colon$colon!1633 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254049)))) (ite (or c!978189 c!978188) (regTwo!31648 (h!69327 (exprs!5452 lt!2254049))) (h!69327 (exprs!5452 lt!2254049)))))))

(declare-fun bm!417897 () Bool)

(assert (=> bm!417897 (= call!417901 (derivationStepZipperDown!910 (ite c!978190 (regOne!31649 (h!69327 (exprs!5452 lt!2254049))) (ite c!978189 (regTwo!31648 (h!69327 (exprs!5452 lt!2254049))) (ite c!978188 (regOne!31648 (h!69327 (exprs!5452 lt!2254049))) (reg!15897 (h!69327 (exprs!5452 lt!2254049)))))) (ite (or c!978190 c!978189) (Context!9905 (t!376276 (exprs!5452 lt!2254049))) (Context!9905 call!417900)) (h!69328 s!2326)))))

(assert (= (and d!1765220 c!978192) b!5584563))

(assert (= (and d!1765220 (not c!978192)) b!5584562))

(assert (= (and b!5584562 c!978190) b!5584566))

(assert (= (and b!5584562 (not c!978190)) b!5584561))

(assert (= (and b!5584561 res!2369756) b!5584568))

(assert (= (and b!5584561 c!978189) b!5584560))

(assert (= (and b!5584561 (not c!978189)) b!5584565))

(assert (= (and b!5584565 c!978188) b!5584558))

(assert (= (and b!5584565 (not c!978188)) b!5584564))

(assert (= (and b!5584564 c!978191) b!5584567))

(assert (= (and b!5584564 (not c!978191)) b!5584559))

(assert (= (or b!5584558 b!5584567) bm!417892))

(assert (= (or b!5584558 b!5584567) bm!417894))

(assert (= (or b!5584560 bm!417892) bm!417896))

(assert (= (or b!5584560 bm!417894) bm!417893))

(assert (= (or b!5584566 b!5584560) bm!417895))

(assert (= (or b!5584566 bm!417893) bm!417897))

(declare-fun m!6565782 () Bool)

(assert (=> b!5584568 m!6565782))

(declare-fun m!6565784 () Bool)

(assert (=> bm!417897 m!6565784))

(declare-fun m!6565786 () Bool)

(assert (=> bm!417895 m!6565786))

(declare-fun m!6565788 () Bool)

(assert (=> b!5584563 m!6565788))

(declare-fun m!6565790 () Bool)

(assert (=> bm!417896 m!6565790))

(assert (=> bm!417753 d!1765220))

(declare-fun bs!1291572 () Bool)

(declare-fun d!1765222 () Bool)

(assert (= bs!1291572 (and d!1765222 d!1764852)))

(declare-fun lambda!299591 () Int)

(assert (=> bs!1291572 (= lambda!299591 lambda!299509)))

(declare-fun bs!1291573 () Bool)

(assert (= bs!1291573 (and d!1765222 d!1765148)))

(assert (=> bs!1291573 (= lambda!299591 lambda!299583)))

(declare-fun bs!1291574 () Bool)

(assert (= bs!1291574 (and d!1765222 d!1764868)))

(assert (=> bs!1291574 (= lambda!299591 lambda!299512)))

(declare-fun bs!1291575 () Bool)

(assert (= bs!1291575 (and d!1765222 d!1765058)))

(assert (=> bs!1291575 (= lambda!299591 lambda!299569)))

(declare-fun bs!1291576 () Bool)

(assert (= bs!1291576 (and d!1765222 d!1765128)))

(assert (=> bs!1291576 (= lambda!299591 lambda!299581)))

(declare-fun bs!1291577 () Bool)

(assert (= bs!1291577 (and d!1765222 d!1764870)))

(assert (=> bs!1291577 (= lambda!299591 lambda!299515)))

(declare-fun bs!1291578 () Bool)

(assert (= bs!1291578 (and d!1765222 d!1764902)))

(assert (=> bs!1291578 (= lambda!299591 lambda!299519)))

(declare-fun bs!1291579 () Bool)

(assert (= bs!1291579 (and d!1765222 d!1764872)))

(assert (=> bs!1291579 (= lambda!299591 lambda!299518)))

(declare-fun b!5584569 () Bool)

(declare-fun e!3445669 () Bool)

(declare-fun e!3445667 () Bool)

(assert (=> b!5584569 (= e!3445669 e!3445667)))

(declare-fun c!978196 () Bool)

(assert (=> b!5584569 (= c!978196 (isEmpty!34692 (tail!11005 (t!376276 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun b!5584570 () Bool)

(declare-fun e!3445665 () Bool)

(assert (=> b!5584570 (= e!3445665 e!3445669)))

(declare-fun c!978193 () Bool)

(assert (=> b!5584570 (= c!978193 (isEmpty!34692 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584571 () Bool)

(declare-fun e!3445666 () Bool)

(assert (=> b!5584571 (= e!3445666 (isEmpty!34692 (t!376276 (t!376276 (exprs!5452 (h!69329 zl!343))))))))

(assert (=> d!1765222 e!3445665))

(declare-fun res!2369757 () Bool)

(assert (=> d!1765222 (=> (not res!2369757) (not e!3445665))))

(declare-fun lt!2254262 () Regex!15568)

(assert (=> d!1765222 (= res!2369757 (validRegex!7304 lt!2254262))))

(declare-fun e!3445670 () Regex!15568)

(assert (=> d!1765222 (= lt!2254262 e!3445670)))

(declare-fun c!978195 () Bool)

(assert (=> d!1765222 (= c!978195 e!3445666)))

(declare-fun res!2369758 () Bool)

(assert (=> d!1765222 (=> (not res!2369758) (not e!3445666))))

(assert (=> d!1765222 (= res!2369758 (is-Cons!62879 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> d!1765222 (forall!14736 (t!376276 (exprs!5452 (h!69329 zl!343))) lambda!299591)))

(assert (=> d!1765222 (= (generalisedConcat!1183 (t!376276 (exprs!5452 (h!69329 zl!343)))) lt!2254262)))

(declare-fun b!5584572 () Bool)

(assert (=> b!5584572 (= e!3445670 (h!69327 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584573 () Bool)

(assert (=> b!5584573 (= e!3445669 (isEmptyExpr!1124 lt!2254262))))

(declare-fun b!5584574 () Bool)

(declare-fun e!3445668 () Regex!15568)

(assert (=> b!5584574 (= e!3445668 EmptyExpr!15568)))

(declare-fun b!5584575 () Bool)

(assert (=> b!5584575 (= e!3445667 (isConcat!647 lt!2254262))))

(declare-fun b!5584576 () Bool)

(assert (=> b!5584576 (= e!3445668 (Concat!24413 (h!69327 (t!376276 (exprs!5452 (h!69329 zl!343)))) (generalisedConcat!1183 (t!376276 (t!376276 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun b!5584577 () Bool)

(assert (=> b!5584577 (= e!3445670 e!3445668)))

(declare-fun c!978194 () Bool)

(assert (=> b!5584577 (= c!978194 (is-Cons!62879 (t!376276 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584578 () Bool)

(assert (=> b!5584578 (= e!3445667 (= lt!2254262 (head!11910 (t!376276 (exprs!5452 (h!69329 zl!343))))))))

(assert (= (and d!1765222 res!2369758) b!5584571))

(assert (= (and d!1765222 c!978195) b!5584572))

(assert (= (and d!1765222 (not c!978195)) b!5584577))

(assert (= (and b!5584577 c!978194) b!5584576))

(assert (= (and b!5584577 (not c!978194)) b!5584574))

(assert (= (and d!1765222 res!2369757) b!5584570))

(assert (= (and b!5584570 c!978193) b!5584573))

(assert (= (and b!5584570 (not c!978193)) b!5584569))

(assert (= (and b!5584569 c!978196) b!5584578))

(assert (= (and b!5584569 (not c!978196)) b!5584575))

(declare-fun m!6565792 () Bool)

(assert (=> b!5584578 m!6565792))

(assert (=> b!5584570 m!6564748))

(declare-fun m!6565794 () Bool)

(assert (=> b!5584571 m!6565794))

(declare-fun m!6565796 () Bool)

(assert (=> d!1765222 m!6565796))

(declare-fun m!6565798 () Bool)

(assert (=> d!1765222 m!6565798))

(declare-fun m!6565800 () Bool)

(assert (=> b!5584576 m!6565800))

(declare-fun m!6565802 () Bool)

(assert (=> b!5584575 m!6565802))

(declare-fun m!6565804 () Bool)

(assert (=> b!5584569 m!6565804))

(assert (=> b!5584569 m!6565804))

(declare-fun m!6565806 () Bool)

(assert (=> b!5584569 m!6565806))

(declare-fun m!6565808 () Bool)

(assert (=> b!5584573 m!6565808))

(assert (=> b!5583594 d!1765222))

(declare-fun bs!1291580 () Bool)

(declare-fun d!1765224 () Bool)

(assert (= bs!1291580 (and d!1765224 d!1765068)))

(declare-fun lambda!299592 () Int)

(assert (=> bs!1291580 (= lambda!299592 lambda!299572)))

(declare-fun bs!1291581 () Bool)

(assert (= bs!1291581 (and d!1765224 d!1765106)))

(assert (=> bs!1291581 (= lambda!299592 lambda!299579)))

(declare-fun bs!1291582 () Bool)

(assert (= bs!1291582 (and d!1765224 d!1765164)))

(assert (=> bs!1291582 (= lambda!299592 lambda!299585)))

(declare-fun bs!1291583 () Bool)

(assert (= bs!1291583 (and d!1765224 d!1765194)))

(assert (=> bs!1291583 (= lambda!299592 lambda!299589)))

(assert (=> d!1765224 (= (nullableZipper!1565 (set.union lt!2254063 lt!2254070)) (exists!2162 (set.union lt!2254063 lt!2254070) lambda!299592))))

(declare-fun bs!1291584 () Bool)

(assert (= bs!1291584 d!1765224))

(declare-fun m!6565810 () Bool)

(assert (=> bs!1291584 m!6565810))

(assert (=> b!5583536 d!1765224))

(declare-fun d!1765226 () Bool)

(declare-fun c!978199 () Bool)

(assert (=> d!1765226 (= c!978199 (is-Nil!62881 lt!2254176))))

(declare-fun e!3445673 () (Set Context!9904))

(assert (=> d!1765226 (= (content!11338 lt!2254176) e!3445673)))

(declare-fun b!5584583 () Bool)

(assert (=> b!5584583 (= e!3445673 (as set.empty (Set Context!9904)))))

(declare-fun b!5584584 () Bool)

(assert (=> b!5584584 (= e!3445673 (set.union (set.insert (h!69329 lt!2254176) (as set.empty (Set Context!9904))) (content!11338 (t!376278 lt!2254176))))))

(assert (= (and d!1765226 c!978199) b!5584583))

(assert (= (and d!1765226 (not c!978199)) b!5584584))

(declare-fun m!6565812 () Bool)

(assert (=> b!5584584 m!6565812))

(declare-fun m!6565814 () Bool)

(assert (=> b!5584584 m!6565814))

(assert (=> b!5583675 d!1765226))

(declare-fun b!5584585 () Bool)

(declare-fun e!3445677 () (Set Context!9904))

(declare-fun call!417905 () (Set Context!9904))

(assert (=> b!5584585 (= e!3445677 call!417905)))

(declare-fun bm!417898 () Bool)

(declare-fun call!417906 () List!63003)

(declare-fun call!417908 () List!63003)

(assert (=> bm!417898 (= call!417906 call!417908)))

(declare-fun b!5584586 () Bool)

(declare-fun e!3445675 () (Set Context!9904))

(assert (=> b!5584586 (= e!3445675 (as set.empty (Set Context!9904)))))

(declare-fun b!5584587 () Bool)

(declare-fun e!3445674 () (Set Context!9904))

(declare-fun call!417904 () (Set Context!9904))

(declare-fun call!417903 () (Set Context!9904))

(assert (=> b!5584587 (= e!3445674 (set.union call!417904 call!417903))))

(declare-fun bm!417899 () Bool)

(declare-fun call!417907 () (Set Context!9904))

(assert (=> bm!417899 (= call!417903 call!417907)))

(declare-fun bm!417900 () Bool)

(assert (=> bm!417900 (= call!417905 call!417903)))

(declare-fun b!5584588 () Bool)

(declare-fun c!978201 () Bool)

(declare-fun e!3445676 () Bool)

(assert (=> b!5584588 (= c!978201 e!3445676)))

(declare-fun res!2369759 () Bool)

(assert (=> b!5584588 (=> (not res!2369759) (not e!3445676))))

(assert (=> b!5584588 (= res!2369759 (is-Concat!24413 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))))))

(declare-fun e!3445678 () (Set Context!9904))

(assert (=> b!5584588 (= e!3445678 e!3445674)))

(declare-fun b!5584589 () Bool)

(declare-fun e!3445679 () (Set Context!9904))

(assert (=> b!5584589 (= e!3445679 e!3445678)))

(declare-fun c!978202 () Bool)

(assert (=> b!5584589 (= c!978202 (is-Union!15568 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584591 () Bool)

(declare-fun c!978203 () Bool)

(assert (=> b!5584591 (= c!978203 (is-Star!15568 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))))))

(assert (=> b!5584591 (= e!3445677 e!3445675)))

(declare-fun bm!417901 () Bool)

(assert (=> bm!417901 (= call!417904 (derivationStepZipperDown!910 (ite c!978202 (regTwo!31649 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))) (regOne!31648 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))))) (ite c!978202 (ite c!977880 lt!2254067 (Context!9905 call!417722)) (Context!9905 call!417908)) (h!69328 s!2326)))))

(declare-fun b!5584592 () Bool)

(assert (=> b!5584592 (= e!3445674 e!3445677)))

(declare-fun c!978200 () Bool)

(assert (=> b!5584592 (= c!978200 (is-Concat!24413 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584593 () Bool)

(assert (=> b!5584593 (= e!3445678 (set.union call!417907 call!417904))))

(declare-fun b!5584594 () Bool)

(assert (=> b!5584594 (= e!3445675 call!417905)))

(declare-fun b!5584595 () Bool)

(assert (=> b!5584595 (= e!3445676 (nullable!5600 (regOne!31648 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))))))))

(declare-fun b!5584590 () Bool)

(assert (=> b!5584590 (= e!3445679 (set.insert (ite c!977880 lt!2254067 (Context!9905 call!417722)) (as set.empty (Set Context!9904))))))

(declare-fun c!978204 () Bool)

(declare-fun d!1765228 () Bool)

(assert (=> d!1765228 (= c!978204 (and (is-ElementMatch!15568 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))) (= (c!977850 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))) (h!69328 s!2326))))))

(assert (=> d!1765228 (= (derivationStepZipperDown!910 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))) (ite c!977880 lt!2254067 (Context!9905 call!417722)) (h!69328 s!2326)) e!3445679)))

(declare-fun bm!417902 () Bool)

(assert (=> bm!417902 (= call!417908 ($colon$colon!1633 (exprs!5452 (ite c!977880 lt!2254067 (Context!9905 call!417722))) (ite (or c!978201 c!978200) (regTwo!31648 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))) (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))))))))

(declare-fun bm!417903 () Bool)

(assert (=> bm!417903 (= call!417907 (derivationStepZipperDown!910 (ite c!978202 (regOne!31649 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))) (ite c!978201 (regTwo!31648 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))) (ite c!978200 (regOne!31648 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))) (reg!15897 (ite c!977880 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))))))) (ite (or c!978202 c!978201) (ite c!977880 lt!2254067 (Context!9905 call!417722)) (Context!9905 call!417906)) (h!69328 s!2326)))))

(assert (= (and d!1765228 c!978204) b!5584590))

(assert (= (and d!1765228 (not c!978204)) b!5584589))

(assert (= (and b!5584589 c!978202) b!5584593))

(assert (= (and b!5584589 (not c!978202)) b!5584588))

(assert (= (and b!5584588 res!2369759) b!5584595))

(assert (= (and b!5584588 c!978201) b!5584587))

(assert (= (and b!5584588 (not c!978201)) b!5584592))

(assert (= (and b!5584592 c!978200) b!5584585))

(assert (= (and b!5584592 (not c!978200)) b!5584591))

(assert (= (and b!5584591 c!978203) b!5584594))

(assert (= (and b!5584591 (not c!978203)) b!5584586))

(assert (= (or b!5584585 b!5584594) bm!417898))

(assert (= (or b!5584585 b!5584594) bm!417900))

(assert (= (or b!5584587 bm!417898) bm!417902))

(assert (= (or b!5584587 bm!417900) bm!417899))

(assert (= (or b!5584593 b!5584587) bm!417901))

(assert (= (or b!5584593 bm!417899) bm!417903))

(declare-fun m!6565816 () Bool)

(assert (=> b!5584595 m!6565816))

(declare-fun m!6565818 () Bool)

(assert (=> bm!417903 m!6565818))

(declare-fun m!6565820 () Bool)

(assert (=> bm!417901 m!6565820))

(declare-fun m!6565822 () Bool)

(assert (=> b!5584590 m!6565822))

(declare-fun m!6565824 () Bool)

(assert (=> bm!417902 m!6565824))

(assert (=> bm!417715 d!1765228))

(declare-fun d!1765230 () Bool)

(assert (=> d!1765230 (= (flatMap!1181 lt!2254060 lambda!299537) (choose!42324 lt!2254060 lambda!299537))))

(declare-fun bs!1291585 () Bool)

(assert (= bs!1291585 d!1765230))

(declare-fun m!6565826 () Bool)

(assert (=> bs!1291585 m!6565826))

(assert (=> d!1764940 d!1765230))

(declare-fun d!1765232 () Bool)

(declare-fun res!2369760 () Bool)

(declare-fun e!3445680 () Bool)

(assert (=> d!1765232 (=> res!2369760 e!3445680)))

(assert (=> d!1765232 (= res!2369760 (is-Nil!62879 (exprs!5452 setElem!37174)))))

(assert (=> d!1765232 (= (forall!14736 (exprs!5452 setElem!37174) lambda!299519) e!3445680)))

(declare-fun b!5584596 () Bool)

(declare-fun e!3445681 () Bool)

(assert (=> b!5584596 (= e!3445680 e!3445681)))

(declare-fun res!2369761 () Bool)

(assert (=> b!5584596 (=> (not res!2369761) (not e!3445681))))

(assert (=> b!5584596 (= res!2369761 (dynLambda!24593 lambda!299519 (h!69327 (exprs!5452 setElem!37174))))))

(declare-fun b!5584597 () Bool)

(assert (=> b!5584597 (= e!3445681 (forall!14736 (t!376276 (exprs!5452 setElem!37174)) lambda!299519))))

(assert (= (and d!1765232 (not res!2369760)) b!5584596))

(assert (= (and b!5584596 res!2369761) b!5584597))

(declare-fun b_lambda!211629 () Bool)

(assert (=> (not b_lambda!211629) (not b!5584596)))

(declare-fun m!6565828 () Bool)

(assert (=> b!5584596 m!6565828))

(declare-fun m!6565830 () Bool)

(assert (=> b!5584597 m!6565830))

(assert (=> d!1764902 d!1765232))

(declare-fun d!1765234 () Bool)

(declare-fun c!978205 () Bool)

(assert (=> d!1765234 (= c!978205 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445682 () Bool)

(assert (=> d!1765234 (= (matchZipper!1706 (derivationStepZipper!1667 lt!2254068 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445682)))

(declare-fun b!5584598 () Bool)

(assert (=> b!5584598 (= e!3445682 (nullableZipper!1565 (derivationStepZipper!1667 lt!2254068 (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584599 () Bool)

(assert (=> b!5584599 (= e!3445682 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 lt!2254068 (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765234 c!978205) b!5584598))

(assert (= (and d!1765234 (not c!978205)) b!5584599))

(assert (=> d!1765234 m!6564922))

(assert (=> d!1765234 m!6565544))

(assert (=> b!5584598 m!6564962))

(declare-fun m!6565832 () Bool)

(assert (=> b!5584598 m!6565832))

(assert (=> b!5584599 m!6564922))

(assert (=> b!5584599 m!6565548))

(assert (=> b!5584599 m!6564962))

(assert (=> b!5584599 m!6565548))

(declare-fun m!6565834 () Bool)

(assert (=> b!5584599 m!6565834))

(assert (=> b!5584599 m!6564922))

(assert (=> b!5584599 m!6565552))

(assert (=> b!5584599 m!6565834))

(assert (=> b!5584599 m!6565552))

(declare-fun m!6565836 () Bool)

(assert (=> b!5584599 m!6565836))

(assert (=> b!5583539 d!1765234))

(declare-fun bs!1291586 () Bool)

(declare-fun d!1765236 () Bool)

(assert (= bs!1291586 (and d!1765236 d!1765110)))

(declare-fun lambda!299593 () Int)

(assert (=> bs!1291586 (= lambda!299593 lambda!299580)))

(declare-fun bs!1291587 () Bool)

(assert (= bs!1291587 (and d!1765236 d!1765154)))

(assert (=> bs!1291587 (= lambda!299593 lambda!299584)))

(declare-fun bs!1291588 () Bool)

(assert (= bs!1291588 (and d!1765236 b!5583357)))

(assert (=> bs!1291588 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299593 lambda!299491))))

(declare-fun bs!1291589 () Bool)

(assert (= bs!1291589 (and d!1765236 d!1765146)))

(assert (=> bs!1291589 (= lambda!299593 lambda!299582)))

(declare-fun bs!1291590 () Bool)

(assert (= bs!1291590 (and d!1765236 d!1765206)))

(assert (=> bs!1291590 (= lambda!299593 lambda!299590)))

(declare-fun bs!1291591 () Bool)

(assert (= bs!1291591 (and d!1765236 d!1765182)))

(assert (=> bs!1291591 (= lambda!299593 lambda!299586)))

(declare-fun bs!1291592 () Bool)

(assert (= bs!1291592 (and d!1765236 d!1764940)))

(assert (=> bs!1291592 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299593 lambda!299537))))

(assert (=> d!1765236 true))

(assert (=> d!1765236 (= (derivationStepZipper!1667 lt!2254068 (head!11909 (t!376277 s!2326))) (flatMap!1181 lt!2254068 lambda!299593))))

(declare-fun bs!1291593 () Bool)

(assert (= bs!1291593 d!1765236))

(declare-fun m!6565838 () Bool)

(assert (=> bs!1291593 m!6565838))

(assert (=> b!5583539 d!1765236))

(assert (=> b!5583539 d!1765112))

(assert (=> b!5583539 d!1765114))

(declare-fun d!1765238 () Bool)

(assert (=> d!1765238 (= (isEmptyLang!1134 lt!2254167) (is-EmptyLang!15568 lt!2254167))))

(assert (=> b!5583623 d!1765238))

(assert (=> d!1764896 d!1765104))

(declare-fun bs!1291594 () Bool)

(declare-fun d!1765240 () Bool)

(assert (= bs!1291594 (and d!1765240 d!1765224)))

(declare-fun lambda!299594 () Int)

(assert (=> bs!1291594 (= lambda!299594 lambda!299592)))

(declare-fun bs!1291595 () Bool)

(assert (= bs!1291595 (and d!1765240 d!1765164)))

(assert (=> bs!1291595 (= lambda!299594 lambda!299585)))

(declare-fun bs!1291596 () Bool)

(assert (= bs!1291596 (and d!1765240 d!1765194)))

(assert (=> bs!1291596 (= lambda!299594 lambda!299589)))

(declare-fun bs!1291597 () Bool)

(assert (= bs!1291597 (and d!1765240 d!1765068)))

(assert (=> bs!1291597 (= lambda!299594 lambda!299572)))

(declare-fun bs!1291598 () Bool)

(assert (= bs!1291598 (and d!1765240 d!1765106)))

(assert (=> bs!1291598 (= lambda!299594 lambda!299579)))

(assert (=> d!1765240 (= (nullableZipper!1565 lt!2254060) (exists!2162 lt!2254060 lambda!299594))))

(declare-fun bs!1291599 () Bool)

(assert (= bs!1291599 d!1765240))

(declare-fun m!6565840 () Bool)

(assert (=> bs!1291599 m!6565840))

(assert (=> b!5583633 d!1765240))

(declare-fun d!1765242 () Bool)

(assert (=> d!1765242 (= (isEmpty!34696 (tail!11004 s!2326)) (is-Nil!62880 (tail!11004 s!2326)))))

(assert (=> b!5583806 d!1765242))

(assert (=> b!5583806 d!1765082))

(declare-fun d!1765244 () Bool)

(assert (=> d!1765244 (= (nullable!5600 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))) (nullableFct!1711 (regOne!31648 (regTwo!31649 (regOne!31648 r!7292)))))))

(declare-fun bs!1291600 () Bool)

(assert (= bs!1291600 d!1765244))

(declare-fun m!6565842 () Bool)

(assert (=> bs!1291600 m!6565842))

(assert (=> b!5583519 d!1765244))

(declare-fun bs!1291601 () Bool)

(declare-fun d!1765246 () Bool)

(assert (= bs!1291601 (and d!1765246 d!1765164)))

(declare-fun lambda!299595 () Int)

(assert (=> bs!1291601 (= lambda!299595 lambda!299585)))

(declare-fun bs!1291602 () Bool)

(assert (= bs!1291602 (and d!1765246 d!1765194)))

(assert (=> bs!1291602 (= lambda!299595 lambda!299589)))

(declare-fun bs!1291603 () Bool)

(assert (= bs!1291603 (and d!1765246 d!1765068)))

(assert (=> bs!1291603 (= lambda!299595 lambda!299572)))

(declare-fun bs!1291604 () Bool)

(assert (= bs!1291604 (and d!1765246 d!1765106)))

(assert (=> bs!1291604 (= lambda!299595 lambda!299579)))

(declare-fun bs!1291605 () Bool)

(assert (= bs!1291605 (and d!1765246 d!1765240)))

(assert (=> bs!1291605 (= lambda!299595 lambda!299594)))

(declare-fun bs!1291606 () Bool)

(assert (= bs!1291606 (and d!1765246 d!1765224)))

(assert (=> bs!1291606 (= lambda!299595 lambda!299592)))

(assert (=> d!1765246 (= (nullableZipper!1565 lt!2254063) (exists!2162 lt!2254063 lambda!299595))))

(declare-fun bs!1291607 () Bool)

(assert (= bs!1291607 d!1765246))

(declare-fun m!6565844 () Bool)

(assert (=> bs!1291607 m!6565844))

(assert (=> b!5583534 d!1765246))

(assert (=> d!1764864 d!1765104))

(declare-fun d!1765248 () Bool)

(declare-fun res!2369762 () Bool)

(declare-fun e!3445683 () Bool)

(assert (=> d!1765248 (=> res!2369762 e!3445683)))

(assert (=> d!1765248 (= res!2369762 (is-Nil!62879 (exprs!5452 (h!69329 zl!343))))))

(assert (=> d!1765248 (= (forall!14736 (exprs!5452 (h!69329 zl!343)) lambda!299509) e!3445683)))

(declare-fun b!5584600 () Bool)

(declare-fun e!3445684 () Bool)

(assert (=> b!5584600 (= e!3445683 e!3445684)))

(declare-fun res!2369763 () Bool)

(assert (=> b!5584600 (=> (not res!2369763) (not e!3445684))))

(assert (=> b!5584600 (= res!2369763 (dynLambda!24593 lambda!299509 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584601 () Bool)

(assert (=> b!5584601 (= e!3445684 (forall!14736 (t!376276 (exprs!5452 (h!69329 zl!343))) lambda!299509))))

(assert (= (and d!1765248 (not res!2369762)) b!5584600))

(assert (= (and b!5584600 res!2369763) b!5584601))

(declare-fun b_lambda!211631 () Bool)

(assert (=> (not b_lambda!211631) (not b!5584600)))

(declare-fun m!6565846 () Bool)

(assert (=> b!5584600 m!6565846))

(declare-fun m!6565848 () Bool)

(assert (=> b!5584601 m!6565848))

(assert (=> d!1764852 d!1765248))

(assert (=> d!1764862 d!1765104))

(declare-fun b!5584602 () Bool)

(declare-fun e!3445688 () (Set Context!9904))

(declare-fun call!417911 () (Set Context!9904))

(assert (=> b!5584602 (= e!3445688 call!417911)))

(declare-fun bm!417904 () Bool)

(declare-fun call!417912 () List!63003)

(declare-fun call!417914 () List!63003)

(assert (=> bm!417904 (= call!417912 call!417914)))

(declare-fun b!5584603 () Bool)

(declare-fun e!3445686 () (Set Context!9904))

(assert (=> b!5584603 (= e!3445686 (as set.empty (Set Context!9904)))))

(declare-fun b!5584604 () Bool)

(declare-fun e!3445685 () (Set Context!9904))

(declare-fun call!417910 () (Set Context!9904))

(declare-fun call!417909 () (Set Context!9904))

(assert (=> b!5584604 (= e!3445685 (set.union call!417910 call!417909))))

(declare-fun bm!417905 () Bool)

(declare-fun call!417913 () (Set Context!9904))

(assert (=> bm!417905 (= call!417909 call!417913)))

(declare-fun bm!417906 () Bool)

(assert (=> bm!417906 (= call!417911 call!417909)))

(declare-fun b!5584605 () Bool)

(declare-fun c!978207 () Bool)

(declare-fun e!3445687 () Bool)

(assert (=> b!5584605 (= c!978207 e!3445687)))

(declare-fun res!2369764 () Bool)

(assert (=> b!5584605 (=> (not res!2369764) (not e!3445687))))

(assert (=> b!5584605 (= res!2369764 (is-Concat!24413 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun e!3445689 () (Set Context!9904))

(assert (=> b!5584605 (= e!3445689 e!3445685)))

(declare-fun b!5584606 () Bool)

(declare-fun e!3445690 () (Set Context!9904))

(assert (=> b!5584606 (= e!3445690 e!3445689)))

(declare-fun c!978208 () Bool)

(assert (=> b!5584606 (= c!978208 (is-Union!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584608 () Bool)

(declare-fun c!978209 () Bool)

(assert (=> b!5584608 (= c!978209 (is-Star!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> b!5584608 (= e!3445688 e!3445686)))

(declare-fun bm!417907 () Bool)

(assert (=> bm!417907 (= call!417910 (derivationStepZipperDown!910 (ite c!978208 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))) (ite c!978208 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))) (Context!9905 call!417914)) (h!69328 s!2326)))))

(declare-fun b!5584609 () Bool)

(assert (=> b!5584609 (= e!3445685 e!3445688)))

(declare-fun c!978206 () Bool)

(assert (=> b!5584609 (= c!978206 (is-Concat!24413 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584610 () Bool)

(assert (=> b!5584610 (= e!3445689 (set.union call!417913 call!417910))))

(declare-fun b!5584611 () Bool)

(assert (=> b!5584611 (= e!3445686 call!417911)))

(declare-fun b!5584612 () Bool)

(assert (=> b!5584612 (= e!3445687 (nullable!5600 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun b!5584607 () Bool)

(assert (=> b!5584607 (= e!3445690 (set.insert (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))) (as set.empty (Set Context!9904))))))

(declare-fun d!1765250 () Bool)

(declare-fun c!978210 () Bool)

(assert (=> d!1765250 (= c!978210 (and (is-ElementMatch!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))) (= (c!977850 (h!69327 (exprs!5452 (h!69329 zl!343)))) (h!69328 s!2326))))))

(assert (=> d!1765250 (= (derivationStepZipperDown!910 (h!69327 (exprs!5452 (h!69329 zl!343))) (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))) (h!69328 s!2326)) e!3445690)))

(declare-fun bm!417908 () Bool)

(assert (=> bm!417908 (= call!417914 ($colon$colon!1633 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343))))) (ite (or c!978207 c!978206) (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (h!69327 (exprs!5452 (h!69329 zl!343))))))))

(declare-fun bm!417909 () Bool)

(assert (=> bm!417909 (= call!417913 (derivationStepZipperDown!910 (ite c!978208 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!978207 (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (ite c!978206 (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))) (reg!15897 (h!69327 (exprs!5452 (h!69329 zl!343))))))) (ite (or c!978208 c!978207) (Context!9905 (t!376276 (exprs!5452 (h!69329 zl!343)))) (Context!9905 call!417912)) (h!69328 s!2326)))))

(assert (= (and d!1765250 c!978210) b!5584607))

(assert (= (and d!1765250 (not c!978210)) b!5584606))

(assert (= (and b!5584606 c!978208) b!5584610))

(assert (= (and b!5584606 (not c!978208)) b!5584605))

(assert (= (and b!5584605 res!2369764) b!5584612))

(assert (= (and b!5584605 c!978207) b!5584604))

(assert (= (and b!5584605 (not c!978207)) b!5584609))

(assert (= (and b!5584609 c!978206) b!5584602))

(assert (= (and b!5584609 (not c!978206)) b!5584608))

(assert (= (and b!5584608 c!978209) b!5584611))

(assert (= (and b!5584608 (not c!978209)) b!5584603))

(assert (= (or b!5584602 b!5584611) bm!417904))

(assert (= (or b!5584602 b!5584611) bm!417906))

(assert (= (or b!5584604 bm!417904) bm!417908))

(assert (= (or b!5584604 bm!417906) bm!417905))

(assert (= (or b!5584610 b!5584604) bm!417907))

(assert (= (or b!5584610 bm!417905) bm!417909))

(assert (=> b!5584612 m!6565048))

(declare-fun m!6565850 () Bool)

(assert (=> bm!417909 m!6565850))

(declare-fun m!6565852 () Bool)

(assert (=> bm!417907 m!6565852))

(declare-fun m!6565854 () Bool)

(assert (=> b!5584607 m!6565854))

(declare-fun m!6565856 () Bool)

(assert (=> bm!417908 m!6565856))

(assert (=> bm!417743 d!1765250))

(assert (=> d!1764912 d!1764904))

(assert (=> d!1764912 d!1765098))

(assert (=> d!1764912 d!1764910))

(declare-fun bs!1291608 () Bool)

(declare-fun d!1765252 () Bool)

(assert (= bs!1291608 (and d!1765252 d!1764908)))

(declare-fun lambda!299598 () Int)

(assert (=> bs!1291608 (not (= lambda!299598 lambda!299525))))

(declare-fun bs!1291609 () Bool)

(assert (= bs!1291609 (and d!1765252 b!5583761)))

(assert (=> bs!1291609 (not (= lambda!299598 lambda!299534))))

(declare-fun bs!1291610 () Bool)

(assert (= bs!1291610 (and d!1765252 b!5583762)))

(assert (=> bs!1291610 (not (= lambda!299598 lambda!299533))))

(declare-fun bs!1291611 () Bool)

(assert (= bs!1291611 (and d!1765252 b!5583348)))

(assert (=> bs!1291611 (= lambda!299598 lambda!299489)))

(declare-fun bs!1291612 () Bool)

(assert (= bs!1291612 (and d!1765252 d!1764912)))

(assert (=> bs!1291612 (= lambda!299598 lambda!299528)))

(declare-fun bs!1291613 () Bool)

(assert (= bs!1291613 (and d!1765252 d!1765096)))

(assert (=> bs!1291613 (not (= lambda!299598 lambda!299578))))

(assert (=> bs!1291613 (= lambda!299598 lambda!299577)))

(declare-fun bs!1291614 () Bool)

(assert (= bs!1291614 (and d!1765252 b!5584480)))

(assert (=> bs!1291614 (not (= lambda!299598 lambda!299587))))

(declare-fun bs!1291615 () Bool)

(assert (= bs!1291615 (and d!1765252 b!5584479)))

(assert (=> bs!1291615 (not (= lambda!299598 lambda!299588))))

(assert (=> bs!1291608 (= lambda!299598 lambda!299524)))

(assert (=> bs!1291611 (not (= lambda!299598 lambda!299490))))

(assert (=> d!1765252 true))

(assert (=> d!1765252 true))

(assert (=> d!1765252 true))

(assert (=> d!1765252 (= (isDefined!12280 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326)) (Exists!2668 lambda!299598))))

(assert (=> d!1765252 true))

(declare-fun _$89!1683 () Unit!155652)

(assert (=> d!1765252 (= (choose!42329 (regOne!31648 r!7292) (regTwo!31648 r!7292) s!2326) _$89!1683)))

(declare-fun bs!1291616 () Bool)

(assert (= bs!1291616 d!1765252))

(assert (=> bs!1291616 m!6564726))

(assert (=> bs!1291616 m!6564726))

(assert (=> bs!1291616 m!6564728))

(declare-fun m!6565858 () Bool)

(assert (=> bs!1291616 m!6565858))

(assert (=> d!1764912 d!1765252))

(declare-fun d!1765254 () Bool)

(assert (=> d!1765254 (= (Exists!2668 lambda!299528) (choose!42327 lambda!299528))))

(declare-fun bs!1291617 () Bool)

(assert (= bs!1291617 d!1765254))

(declare-fun m!6565860 () Bool)

(assert (=> bs!1291617 m!6565860))

(assert (=> d!1764912 d!1765254))

(declare-fun b!5584631 () Bool)

(declare-fun e!3445709 () Bool)

(declare-fun e!3445705 () Bool)

(assert (=> b!5584631 (= e!3445709 e!3445705)))

(declare-fun res!2369782 () Bool)

(declare-fun call!417920 () Bool)

(assert (=> b!5584631 (= res!2369782 call!417920)))

(assert (=> b!5584631 (=> (not res!2369782) (not e!3445705))))

(declare-fun b!5584632 () Bool)

(declare-fun e!3445708 () Bool)

(assert (=> b!5584632 (= e!3445709 e!3445708)))

(declare-fun res!2369780 () Bool)

(assert (=> b!5584632 (= res!2369780 call!417920)))

(assert (=> b!5584632 (=> res!2369780 e!3445708)))

(declare-fun b!5584633 () Bool)

(declare-fun e!3445710 () Bool)

(declare-fun e!3445707 () Bool)

(assert (=> b!5584633 (= e!3445710 e!3445707)))

(declare-fun res!2369779 () Bool)

(assert (=> b!5584633 (=> res!2369779 e!3445707)))

(assert (=> b!5584633 (= res!2369779 (is-Star!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584634 () Bool)

(declare-fun e!3445706 () Bool)

(assert (=> b!5584634 (= e!3445706 e!3445710)))

(declare-fun res!2369783 () Bool)

(assert (=> b!5584634 (=> (not res!2369783) (not e!3445710))))

(assert (=> b!5584634 (= res!2369783 (and (not (is-EmptyLang!15568 (h!69327 (exprs!5452 (h!69329 zl!343))))) (not (is-ElementMatch!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun b!5584635 () Bool)

(assert (=> b!5584635 (= e!3445707 e!3445709)))

(declare-fun c!978213 () Bool)

(assert (=> b!5584635 (= c!978213 (is-Union!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun bm!417914 () Bool)

(assert (=> bm!417914 (= call!417920 (nullable!5600 (ite c!978213 (regOne!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regOne!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun d!1765256 () Bool)

(declare-fun res!2369781 () Bool)

(assert (=> d!1765256 (=> res!2369781 e!3445706)))

(assert (=> d!1765256 (= res!2369781 (is-EmptyExpr!15568 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> d!1765256 (= (nullableFct!1711 (h!69327 (exprs!5452 (h!69329 zl!343)))) e!3445706)))

(declare-fun b!5584636 () Bool)

(declare-fun call!417919 () Bool)

(assert (=> b!5584636 (= e!3445705 call!417919)))

(declare-fun bm!417915 () Bool)

(assert (=> bm!417915 (= call!417919 (nullable!5600 (ite c!978213 (regTwo!31649 (h!69327 (exprs!5452 (h!69329 zl!343)))) (regTwo!31648 (h!69327 (exprs!5452 (h!69329 zl!343)))))))))

(declare-fun b!5584637 () Bool)

(assert (=> b!5584637 (= e!3445708 call!417919)))

(assert (= (and d!1765256 (not res!2369781)) b!5584634))

(assert (= (and b!5584634 res!2369783) b!5584633))

(assert (= (and b!5584633 (not res!2369779)) b!5584635))

(assert (= (and b!5584635 c!978213) b!5584632))

(assert (= (and b!5584635 (not c!978213)) b!5584631))

(assert (= (and b!5584632 (not res!2369780)) b!5584637))

(assert (= (and b!5584631 res!2369782) b!5584636))

(assert (= (or b!5584637 b!5584636) bm!417915))

(assert (= (or b!5584632 b!5584631) bm!417914))

(declare-fun m!6565862 () Bool)

(assert (=> bm!417914 m!6565862))

(declare-fun m!6565864 () Bool)

(assert (=> bm!417915 m!6565864))

(assert (=> d!1764882 d!1765256))

(declare-fun b!5584638 () Bool)

(declare-fun e!3445712 () Bool)

(assert (=> b!5584638 (= e!3445712 (nullable!5600 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254058)))))))))

(declare-fun d!1765258 () Bool)

(declare-fun c!978214 () Bool)

(assert (=> d!1765258 (= c!978214 e!3445712)))

(declare-fun res!2369784 () Bool)

(assert (=> d!1765258 (=> (not res!2369784) (not e!3445712))))

(assert (=> d!1765258 (= res!2369784 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254058))))))))

(declare-fun e!3445711 () (Set Context!9904))

(assert (=> d!1765258 (= (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 lt!2254058))) (h!69328 s!2326)) e!3445711)))

(declare-fun b!5584639 () Bool)

(declare-fun call!417921 () (Set Context!9904))

(assert (=> b!5584639 (= e!3445711 (set.union call!417921 (derivationStepZipperUp!836 (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254058)))))) (h!69328 s!2326))))))

(declare-fun bm!417916 () Bool)

(assert (=> bm!417916 (= call!417921 (derivationStepZipperDown!910 (h!69327 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254058))))) (Context!9905 (t!376276 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254058)))))) (h!69328 s!2326)))))

(declare-fun b!5584640 () Bool)

(declare-fun e!3445713 () (Set Context!9904))

(assert (=> b!5584640 (= e!3445713 (as set.empty (Set Context!9904)))))

(declare-fun b!5584641 () Bool)

(assert (=> b!5584641 (= e!3445711 e!3445713)))

(declare-fun c!978215 () Bool)

(assert (=> b!5584641 (= c!978215 (is-Cons!62879 (exprs!5452 (Context!9905 (t!376276 (exprs!5452 lt!2254058))))))))

(declare-fun b!5584642 () Bool)

(assert (=> b!5584642 (= e!3445713 call!417921)))

(assert (= (and d!1765258 res!2369784) b!5584638))

(assert (= (and d!1765258 c!978214) b!5584639))

(assert (= (and d!1765258 (not c!978214)) b!5584641))

(assert (= (and b!5584641 c!978215) b!5584642))

(assert (= (and b!5584641 (not c!978215)) b!5584640))

(assert (= (or b!5584639 b!5584642) bm!417916))

(declare-fun m!6565866 () Bool)

(assert (=> b!5584638 m!6565866))

(declare-fun m!6565868 () Bool)

(assert (=> b!5584639 m!6565868))

(declare-fun m!6565870 () Bool)

(assert (=> bm!417916 m!6565870))

(assert (=> b!5583814 d!1765258))

(declare-fun d!1765260 () Bool)

(assert (=> d!1765260 (= (isEmpty!34692 (tail!11005 (exprs!5452 (h!69329 zl!343)))) (is-Nil!62879 (tail!11005 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> b!5583587 d!1765260))

(declare-fun d!1765262 () Bool)

(assert (=> d!1765262 (= (tail!11005 (exprs!5452 (h!69329 zl!343))) (t!376276 (exprs!5452 (h!69329 zl!343))))))

(assert (=> b!5583587 d!1765262))

(declare-fun bs!1291618 () Bool)

(declare-fun b!5584650 () Bool)

(assert (= bs!1291618 (and b!5584650 d!1764908)))

(declare-fun lambda!299599 () Int)

(assert (=> bs!1291618 (not (= lambda!299599 lambda!299525))))

(declare-fun bs!1291619 () Bool)

(assert (= bs!1291619 (and b!5584650 b!5583761)))

(assert (=> bs!1291619 (not (= lambda!299599 lambda!299534))))

(declare-fun bs!1291620 () Bool)

(assert (= bs!1291620 (and b!5584650 b!5583762)))

(assert (=> bs!1291620 (= (and (= (reg!15897 (regOne!31649 r!7292)) (reg!15897 r!7292)) (= (regOne!31649 r!7292) r!7292)) (= lambda!299599 lambda!299533))))

(declare-fun bs!1291621 () Bool)

(assert (= bs!1291621 (and b!5584650 b!5583348)))

(assert (=> bs!1291621 (not (= lambda!299599 lambda!299489))))

(declare-fun bs!1291622 () Bool)

(assert (= bs!1291622 (and b!5584650 d!1764912)))

(assert (=> bs!1291622 (not (= lambda!299599 lambda!299528))))

(declare-fun bs!1291623 () Bool)

(assert (= bs!1291623 (and b!5584650 d!1765096)))

(assert (=> bs!1291623 (not (= lambda!299599 lambda!299577))))

(declare-fun bs!1291624 () Bool)

(assert (= bs!1291624 (and b!5584650 b!5584480)))

(assert (=> bs!1291624 (= (and (= (reg!15897 (regOne!31649 r!7292)) (reg!15897 (regTwo!31649 r!7292))) (= (regOne!31649 r!7292) (regTwo!31649 r!7292))) (= lambda!299599 lambda!299587))))

(declare-fun bs!1291625 () Bool)

(assert (= bs!1291625 (and b!5584650 b!5584479)))

(assert (=> bs!1291625 (not (= lambda!299599 lambda!299588))))

(assert (=> bs!1291618 (not (= lambda!299599 lambda!299524))))

(assert (=> bs!1291621 (not (= lambda!299599 lambda!299490))))

(assert (=> bs!1291623 (not (= lambda!299599 lambda!299578))))

(declare-fun bs!1291626 () Bool)

(assert (= bs!1291626 (and b!5584650 d!1765252)))

(assert (=> bs!1291626 (not (= lambda!299599 lambda!299598))))

(assert (=> b!5584650 true))

(assert (=> b!5584650 true))

(declare-fun bs!1291627 () Bool)

(declare-fun b!5584649 () Bool)

(assert (= bs!1291627 (and b!5584649 d!1764908)))

(declare-fun lambda!299600 () Int)

(assert (=> bs!1291627 (= (and (= (regOne!31648 (regOne!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regOne!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299600 lambda!299525))))

(declare-fun bs!1291628 () Bool)

(assert (= bs!1291628 (and b!5584649 b!5583761)))

(assert (=> bs!1291628 (= (and (= (regOne!31648 (regOne!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regOne!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299600 lambda!299534))))

(declare-fun bs!1291629 () Bool)

(assert (= bs!1291629 (and b!5584649 b!5583762)))

(assert (=> bs!1291629 (not (= lambda!299600 lambda!299533))))

(declare-fun bs!1291630 () Bool)

(assert (= bs!1291630 (and b!5584649 b!5583348)))

(assert (=> bs!1291630 (not (= lambda!299600 lambda!299489))))

(declare-fun bs!1291631 () Bool)

(assert (= bs!1291631 (and b!5584649 d!1764912)))

(assert (=> bs!1291631 (not (= lambda!299600 lambda!299528))))

(declare-fun bs!1291632 () Bool)

(assert (= bs!1291632 (and b!5584649 d!1765096)))

(assert (=> bs!1291632 (not (= lambda!299600 lambda!299577))))

(declare-fun bs!1291633 () Bool)

(assert (= bs!1291633 (and b!5584649 b!5584480)))

(assert (=> bs!1291633 (not (= lambda!299600 lambda!299587))))

(declare-fun bs!1291634 () Bool)

(assert (= bs!1291634 (and b!5584649 b!5584650)))

(assert (=> bs!1291634 (not (= lambda!299600 lambda!299599))))

(declare-fun bs!1291635 () Bool)

(assert (= bs!1291635 (and b!5584649 b!5584479)))

(assert (=> bs!1291635 (= (and (= (regOne!31648 (regOne!31649 r!7292)) (regOne!31648 (regTwo!31649 r!7292))) (= (regTwo!31648 (regOne!31649 r!7292)) (regTwo!31648 (regTwo!31649 r!7292)))) (= lambda!299600 lambda!299588))))

(assert (=> bs!1291627 (not (= lambda!299600 lambda!299524))))

(assert (=> bs!1291630 (= (and (= (regOne!31648 (regOne!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regOne!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299600 lambda!299490))))

(assert (=> bs!1291632 (= (and (= (regOne!31648 (regOne!31649 r!7292)) (regOne!31648 r!7292)) (= (regTwo!31648 (regOne!31649 r!7292)) (regTwo!31648 r!7292))) (= lambda!299600 lambda!299578))))

(declare-fun bs!1291636 () Bool)

(assert (= bs!1291636 (and b!5584649 d!1765252)))

(assert (=> bs!1291636 (not (= lambda!299600 lambda!299598))))

(assert (=> b!5584649 true))

(assert (=> b!5584649 true))

(declare-fun b!5584643 () Bool)

(declare-fun e!3445720 () Bool)

(declare-fun call!417922 () Bool)

(assert (=> b!5584643 (= e!3445720 call!417922)))

(declare-fun b!5584644 () Bool)

(declare-fun e!3445715 () Bool)

(assert (=> b!5584644 (= e!3445720 e!3445715)))

(declare-fun res!2369786 () Bool)

(assert (=> b!5584644 (= res!2369786 (not (is-EmptyLang!15568 (regOne!31649 r!7292))))))

(assert (=> b!5584644 (=> (not res!2369786) (not e!3445715))))

(declare-fun b!5584645 () Bool)

(declare-fun e!3445718 () Bool)

(assert (=> b!5584645 (= e!3445718 (matchRSpec!2671 (regTwo!31649 (regOne!31649 r!7292)) s!2326))))

(declare-fun bm!417917 () Bool)

(declare-fun call!417923 () Bool)

(declare-fun c!978216 () Bool)

(assert (=> bm!417917 (= call!417923 (Exists!2668 (ite c!978216 lambda!299599 lambda!299600)))))

(declare-fun b!5584647 () Bool)

(declare-fun c!978218 () Bool)

(assert (=> b!5584647 (= c!978218 (is-Union!15568 (regOne!31649 r!7292)))))

(declare-fun e!3445717 () Bool)

(declare-fun e!3445716 () Bool)

(assert (=> b!5584647 (= e!3445717 e!3445716)))

(declare-fun b!5584648 () Bool)

(declare-fun c!978219 () Bool)

(assert (=> b!5584648 (= c!978219 (is-ElementMatch!15568 (regOne!31649 r!7292)))))

(assert (=> b!5584648 (= e!3445715 e!3445717)))

(declare-fun e!3445714 () Bool)

(assert (=> b!5584649 (= e!3445714 call!417923)))

(declare-fun bm!417918 () Bool)

(assert (=> bm!417918 (= call!417922 (isEmpty!34696 s!2326))))

(declare-fun e!3445719 () Bool)

(assert (=> b!5584650 (= e!3445719 call!417923)))

(declare-fun b!5584651 () Bool)

(declare-fun res!2369787 () Bool)

(assert (=> b!5584651 (=> res!2369787 e!3445719)))

(assert (=> b!5584651 (= res!2369787 call!417922)))

(assert (=> b!5584651 (= e!3445714 e!3445719)))

(declare-fun b!5584646 () Bool)

(assert (=> b!5584646 (= e!3445717 (= s!2326 (Cons!62880 (c!977850 (regOne!31649 r!7292)) Nil!62880)))))

(declare-fun d!1765264 () Bool)

(declare-fun c!978217 () Bool)

(assert (=> d!1765264 (= c!978217 (is-EmptyExpr!15568 (regOne!31649 r!7292)))))

(assert (=> d!1765264 (= (matchRSpec!2671 (regOne!31649 r!7292) s!2326) e!3445720)))

(declare-fun b!5584652 () Bool)

(assert (=> b!5584652 (= e!3445716 e!3445714)))

(assert (=> b!5584652 (= c!978216 (is-Star!15568 (regOne!31649 r!7292)))))

(declare-fun b!5584653 () Bool)

(assert (=> b!5584653 (= e!3445716 e!3445718)))

(declare-fun res!2369785 () Bool)

(assert (=> b!5584653 (= res!2369785 (matchRSpec!2671 (regOne!31649 (regOne!31649 r!7292)) s!2326))))

(assert (=> b!5584653 (=> res!2369785 e!3445718)))

(assert (= (and d!1765264 c!978217) b!5584643))

(assert (= (and d!1765264 (not c!978217)) b!5584644))

(assert (= (and b!5584644 res!2369786) b!5584648))

(assert (= (and b!5584648 c!978219) b!5584646))

(assert (= (and b!5584648 (not c!978219)) b!5584647))

(assert (= (and b!5584647 c!978218) b!5584653))

(assert (= (and b!5584647 (not c!978218)) b!5584652))

(assert (= (and b!5584653 (not res!2369785)) b!5584645))

(assert (= (and b!5584652 c!978216) b!5584651))

(assert (= (and b!5584652 (not c!978216)) b!5584649))

(assert (= (and b!5584651 (not res!2369787)) b!5584650))

(assert (= (or b!5584650 b!5584649) bm!417917))

(assert (= (or b!5584643 b!5584651) bm!417918))

(declare-fun m!6565872 () Bool)

(assert (=> b!5584645 m!6565872))

(declare-fun m!6565874 () Bool)

(assert (=> bm!417917 m!6565874))

(assert (=> bm!417918 m!6565014))

(declare-fun m!6565876 () Bool)

(assert (=> b!5584653 m!6565876))

(assert (=> b!5583765 d!1765264))

(declare-fun b!5584654 () Bool)

(declare-fun e!3445725 () Bool)

(declare-fun e!3445721 () Bool)

(assert (=> b!5584654 (= e!3445725 e!3445721)))

(declare-fun res!2369791 () Bool)

(declare-fun call!417925 () Bool)

(assert (=> b!5584654 (= res!2369791 call!417925)))

(assert (=> b!5584654 (=> (not res!2369791) (not e!3445721))))

(declare-fun b!5584655 () Bool)

(declare-fun e!3445724 () Bool)

(assert (=> b!5584655 (= e!3445725 e!3445724)))

(declare-fun res!2369789 () Bool)

(assert (=> b!5584655 (= res!2369789 call!417925)))

(assert (=> b!5584655 (=> res!2369789 e!3445724)))

(declare-fun b!5584656 () Bool)

(declare-fun e!3445726 () Bool)

(declare-fun e!3445723 () Bool)

(assert (=> b!5584656 (= e!3445726 e!3445723)))

(declare-fun res!2369788 () Bool)

(assert (=> b!5584656 (=> res!2369788 e!3445723)))

(assert (=> b!5584656 (= res!2369788 (is-Star!15568 (regTwo!31649 (regOne!31648 r!7292))))))

(declare-fun b!5584657 () Bool)

(declare-fun e!3445722 () Bool)

(assert (=> b!5584657 (= e!3445722 e!3445726)))

(declare-fun res!2369792 () Bool)

(assert (=> b!5584657 (=> (not res!2369792) (not e!3445726))))

(assert (=> b!5584657 (= res!2369792 (and (not (is-EmptyLang!15568 (regTwo!31649 (regOne!31648 r!7292)))) (not (is-ElementMatch!15568 (regTwo!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584658 () Bool)

(assert (=> b!5584658 (= e!3445723 e!3445725)))

(declare-fun c!978220 () Bool)

(assert (=> b!5584658 (= c!978220 (is-Union!15568 (regTwo!31649 (regOne!31648 r!7292))))))

(declare-fun bm!417919 () Bool)

(assert (=> bm!417919 (= call!417925 (nullable!5600 (ite c!978220 (regOne!31649 (regTwo!31649 (regOne!31648 r!7292))) (regOne!31648 (regTwo!31649 (regOne!31648 r!7292))))))))

(declare-fun d!1765266 () Bool)

(declare-fun res!2369790 () Bool)

(assert (=> d!1765266 (=> res!2369790 e!3445722)))

(assert (=> d!1765266 (= res!2369790 (is-EmptyExpr!15568 (regTwo!31649 (regOne!31648 r!7292))))))

(assert (=> d!1765266 (= (nullableFct!1711 (regTwo!31649 (regOne!31648 r!7292))) e!3445722)))

(declare-fun b!5584659 () Bool)

(declare-fun call!417924 () Bool)

(assert (=> b!5584659 (= e!3445721 call!417924)))

(declare-fun bm!417920 () Bool)

(assert (=> bm!417920 (= call!417924 (nullable!5600 (ite c!978220 (regTwo!31649 (regTwo!31649 (regOne!31648 r!7292))) (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584660 () Bool)

(assert (=> b!5584660 (= e!3445724 call!417924)))

(assert (= (and d!1765266 (not res!2369790)) b!5584657))

(assert (= (and b!5584657 res!2369792) b!5584656))

(assert (= (and b!5584656 (not res!2369788)) b!5584658))

(assert (= (and b!5584658 c!978220) b!5584655))

(assert (= (and b!5584658 (not c!978220)) b!5584654))

(assert (= (and b!5584655 (not res!2369789)) b!5584660))

(assert (= (and b!5584654 res!2369791) b!5584659))

(assert (= (or b!5584660 b!5584659) bm!417920))

(assert (= (or b!5584655 b!5584654) bm!417919))

(declare-fun m!6565878 () Bool)

(assert (=> bm!417919 m!6565878))

(declare-fun m!6565880 () Bool)

(assert (=> bm!417920 m!6565880))

(assert (=> d!1764928 d!1765266))

(declare-fun b!5584661 () Bool)

(declare-fun e!3445729 () Bool)

(declare-fun lt!2254263 () Bool)

(assert (=> b!5584661 (= e!3445729 (not lt!2254263))))

(declare-fun d!1765268 () Bool)

(declare-fun e!3445733 () Bool)

(assert (=> d!1765268 e!3445733))

(declare-fun c!978222 () Bool)

(assert (=> d!1765268 (= c!978222 (is-EmptyExpr!15568 (regTwo!31648 r!7292)))))

(declare-fun e!3445727 () Bool)

(assert (=> d!1765268 (= lt!2254263 e!3445727)))

(declare-fun c!978221 () Bool)

(assert (=> d!1765268 (= c!978221 (isEmpty!34696 s!2326))))

(assert (=> d!1765268 (validRegex!7304 (regTwo!31648 r!7292))))

(assert (=> d!1765268 (= (matchR!7753 (regTwo!31648 r!7292) s!2326) lt!2254263)))

(declare-fun b!5584662 () Bool)

(assert (=> b!5584662 (= e!3445733 e!3445729)))

(declare-fun c!978223 () Bool)

(assert (=> b!5584662 (= c!978223 (is-EmptyLang!15568 (regTwo!31648 r!7292)))))

(declare-fun b!5584663 () Bool)

(assert (=> b!5584663 (= e!3445727 (matchR!7753 (derivativeStep!4418 (regTwo!31648 r!7292) (head!11909 s!2326)) (tail!11004 s!2326)))))

(declare-fun b!5584664 () Bool)

(declare-fun e!3445731 () Bool)

(assert (=> b!5584664 (= e!3445731 (not (= (head!11909 s!2326) (c!977850 (regTwo!31648 r!7292)))))))

(declare-fun bm!417921 () Bool)

(declare-fun call!417926 () Bool)

(assert (=> bm!417921 (= call!417926 (isEmpty!34696 s!2326))))

(declare-fun b!5584665 () Bool)

(declare-fun res!2369799 () Bool)

(declare-fun e!3445728 () Bool)

(assert (=> b!5584665 (=> res!2369799 e!3445728)))

(declare-fun e!3445732 () Bool)

(assert (=> b!5584665 (= res!2369799 e!3445732)))

(declare-fun res!2369794 () Bool)

(assert (=> b!5584665 (=> (not res!2369794) (not e!3445732))))

(assert (=> b!5584665 (= res!2369794 lt!2254263)))

(declare-fun b!5584666 () Bool)

(assert (=> b!5584666 (= e!3445727 (nullable!5600 (regTwo!31648 r!7292)))))

(declare-fun b!5584667 () Bool)

(assert (=> b!5584667 (= e!3445732 (= (head!11909 s!2326) (c!977850 (regTwo!31648 r!7292))))))

(declare-fun b!5584668 () Bool)

(declare-fun e!3445730 () Bool)

(assert (=> b!5584668 (= e!3445730 e!3445731)))

(declare-fun res!2369796 () Bool)

(assert (=> b!5584668 (=> res!2369796 e!3445731)))

(assert (=> b!5584668 (= res!2369796 call!417926)))

(declare-fun b!5584669 () Bool)

(assert (=> b!5584669 (= e!3445733 (= lt!2254263 call!417926))))

(declare-fun b!5584670 () Bool)

(declare-fun res!2369798 () Bool)

(assert (=> b!5584670 (=> res!2369798 e!3445728)))

(assert (=> b!5584670 (= res!2369798 (not (is-ElementMatch!15568 (regTwo!31648 r!7292))))))

(assert (=> b!5584670 (= e!3445729 e!3445728)))

(declare-fun b!5584671 () Bool)

(assert (=> b!5584671 (= e!3445728 e!3445730)))

(declare-fun res!2369793 () Bool)

(assert (=> b!5584671 (=> (not res!2369793) (not e!3445730))))

(assert (=> b!5584671 (= res!2369793 (not lt!2254263))))

(declare-fun b!5584672 () Bool)

(declare-fun res!2369800 () Bool)

(assert (=> b!5584672 (=> (not res!2369800) (not e!3445732))))

(assert (=> b!5584672 (= res!2369800 (not call!417926))))

(declare-fun b!5584673 () Bool)

(declare-fun res!2369795 () Bool)

(assert (=> b!5584673 (=> (not res!2369795) (not e!3445732))))

(assert (=> b!5584673 (= res!2369795 (isEmpty!34696 (tail!11004 s!2326)))))

(declare-fun b!5584674 () Bool)

(declare-fun res!2369797 () Bool)

(assert (=> b!5584674 (=> res!2369797 e!3445731)))

(assert (=> b!5584674 (= res!2369797 (not (isEmpty!34696 (tail!11004 s!2326))))))

(assert (= (and d!1765268 c!978221) b!5584666))

(assert (= (and d!1765268 (not c!978221)) b!5584663))

(assert (= (and d!1765268 c!978222) b!5584669))

(assert (= (and d!1765268 (not c!978222)) b!5584662))

(assert (= (and b!5584662 c!978223) b!5584661))

(assert (= (and b!5584662 (not c!978223)) b!5584670))

(assert (= (and b!5584670 (not res!2369798)) b!5584665))

(assert (= (and b!5584665 res!2369794) b!5584672))

(assert (= (and b!5584672 res!2369800) b!5584673))

(assert (= (and b!5584673 res!2369795) b!5584667))

(assert (= (and b!5584665 (not res!2369799)) b!5584671))

(assert (= (and b!5584671 res!2369793) b!5584668))

(assert (= (and b!5584668 (not res!2369796)) b!5584674))

(assert (= (and b!5584674 (not res!2369797)) b!5584664))

(assert (= (or b!5584669 b!5584668 b!5584672) bm!417921))

(assert (=> b!5584674 m!6565022))

(assert (=> b!5584674 m!6565022))

(assert (=> b!5584674 m!6565144))

(assert (=> d!1765268 m!6565014))

(assert (=> d!1765268 m!6565664))

(assert (=> b!5584663 m!6565018))

(assert (=> b!5584663 m!6565018))

(declare-fun m!6565882 () Bool)

(assert (=> b!5584663 m!6565882))

(assert (=> b!5584663 m!6565022))

(assert (=> b!5584663 m!6565882))

(assert (=> b!5584663 m!6565022))

(declare-fun m!6565884 () Bool)

(assert (=> b!5584663 m!6565884))

(assert (=> bm!417921 m!6565014))

(assert (=> b!5584666 m!6565672))

(assert (=> b!5584673 m!6565022))

(assert (=> b!5584673 m!6565022))

(assert (=> b!5584673 m!6565144))

(assert (=> b!5584664 m!6565018))

(assert (=> b!5584667 m!6565018))

(assert (=> b!5583702 d!1765268))

(declare-fun d!1765270 () Bool)

(declare-fun c!978224 () Bool)

(assert (=> d!1765270 (= c!978224 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445734 () Bool)

(assert (=> d!1765270 (= (matchZipper!1706 (derivationStepZipper!1667 (set.union lt!2254063 lt!2254070) (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445734)))

(declare-fun b!5584675 () Bool)

(assert (=> b!5584675 (= e!3445734 (nullableZipper!1565 (derivationStepZipper!1667 (set.union lt!2254063 lt!2254070) (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584676 () Bool)

(assert (=> b!5584676 (= e!3445734 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 (set.union lt!2254063 lt!2254070) (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765270 c!978224) b!5584675))

(assert (= (and d!1765270 (not c!978224)) b!5584676))

(assert (=> d!1765270 m!6564922))

(assert (=> d!1765270 m!6565544))

(assert (=> b!5584675 m!6564956))

(declare-fun m!6565886 () Bool)

(assert (=> b!5584675 m!6565886))

(assert (=> b!5584676 m!6564922))

(assert (=> b!5584676 m!6565548))

(assert (=> b!5584676 m!6564956))

(assert (=> b!5584676 m!6565548))

(declare-fun m!6565888 () Bool)

(assert (=> b!5584676 m!6565888))

(assert (=> b!5584676 m!6564922))

(assert (=> b!5584676 m!6565552))

(assert (=> b!5584676 m!6565888))

(assert (=> b!5584676 m!6565552))

(declare-fun m!6565890 () Bool)

(assert (=> b!5584676 m!6565890))

(assert (=> b!5583537 d!1765270))

(declare-fun bs!1291637 () Bool)

(declare-fun d!1765272 () Bool)

(assert (= bs!1291637 (and d!1765272 d!1765110)))

(declare-fun lambda!299601 () Int)

(assert (=> bs!1291637 (= lambda!299601 lambda!299580)))

(declare-fun bs!1291638 () Bool)

(assert (= bs!1291638 (and d!1765272 d!1765154)))

(assert (=> bs!1291638 (= lambda!299601 lambda!299584)))

(declare-fun bs!1291639 () Bool)

(assert (= bs!1291639 (and d!1765272 b!5583357)))

(assert (=> bs!1291639 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299601 lambda!299491))))

(declare-fun bs!1291640 () Bool)

(assert (= bs!1291640 (and d!1765272 d!1765146)))

(assert (=> bs!1291640 (= lambda!299601 lambda!299582)))

(declare-fun bs!1291641 () Bool)

(assert (= bs!1291641 (and d!1765272 d!1765206)))

(assert (=> bs!1291641 (= lambda!299601 lambda!299590)))

(declare-fun bs!1291642 () Bool)

(assert (= bs!1291642 (and d!1765272 d!1765182)))

(assert (=> bs!1291642 (= lambda!299601 lambda!299586)))

(declare-fun bs!1291643 () Bool)

(assert (= bs!1291643 (and d!1765272 d!1764940)))

(assert (=> bs!1291643 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299601 lambda!299537))))

(declare-fun bs!1291644 () Bool)

(assert (= bs!1291644 (and d!1765272 d!1765236)))

(assert (=> bs!1291644 (= lambda!299601 lambda!299593)))

(assert (=> d!1765272 true))

(assert (=> d!1765272 (= (derivationStepZipper!1667 (set.union lt!2254063 lt!2254070) (head!11909 (t!376277 s!2326))) (flatMap!1181 (set.union lt!2254063 lt!2254070) lambda!299601))))

(declare-fun bs!1291645 () Bool)

(assert (= bs!1291645 d!1765272))

(declare-fun m!6565892 () Bool)

(assert (=> bs!1291645 m!6565892))

(assert (=> b!5583537 d!1765272))

(assert (=> b!5583537 d!1765112))

(assert (=> b!5583537 d!1765114))

(declare-fun b!5584677 () Bool)

(declare-fun e!3445736 () Bool)

(declare-fun call!417928 () Bool)

(assert (=> b!5584677 (= e!3445736 call!417928)))

(declare-fun bm!417922 () Bool)

(declare-fun call!417927 () Bool)

(assert (=> bm!417922 (= call!417928 call!417927)))

(declare-fun b!5584678 () Bool)

(declare-fun e!3445738 () Bool)

(assert (=> b!5584678 (= e!3445738 call!417927)))

(declare-fun b!5584679 () Bool)

(declare-fun e!3445737 () Bool)

(declare-fun e!3445740 () Bool)

(assert (=> b!5584679 (= e!3445737 e!3445740)))

(declare-fun res!2369804 () Bool)

(assert (=> b!5584679 (=> (not res!2369804) (not e!3445740))))

(declare-fun call!417929 () Bool)

(assert (=> b!5584679 (= res!2369804 call!417929)))

(declare-fun b!5584680 () Bool)

(declare-fun e!3445741 () Bool)

(declare-fun e!3445735 () Bool)

(assert (=> b!5584680 (= e!3445741 e!3445735)))

(declare-fun c!978225 () Bool)

(assert (=> b!5584680 (= c!978225 (is-Star!15568 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))))))

(declare-fun b!5584681 () Bool)

(declare-fun res!2369801 () Bool)

(assert (=> b!5584681 (=> (not res!2369801) (not e!3445736))))

(assert (=> b!5584681 (= res!2369801 call!417929)))

(declare-fun e!3445739 () Bool)

(assert (=> b!5584681 (= e!3445739 e!3445736)))

(declare-fun d!1765274 () Bool)

(declare-fun res!2369805 () Bool)

(assert (=> d!1765274 (=> res!2369805 e!3445741)))

(assert (=> d!1765274 (= res!2369805 (is-ElementMatch!15568 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))))))

(assert (=> d!1765274 (= (validRegex!7304 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))) e!3445741)))

(declare-fun bm!417923 () Bool)

(declare-fun c!978226 () Bool)

(assert (=> bm!417923 (= call!417929 (validRegex!7304 (ite c!978226 (regOne!31649 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))) (regOne!31648 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))))))))

(declare-fun bm!417924 () Bool)

(assert (=> bm!417924 (= call!417927 (validRegex!7304 (ite c!978225 (reg!15897 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))) (ite c!978226 (regTwo!31649 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))) (regTwo!31648 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292)))))))))

(declare-fun b!5584682 () Bool)

(declare-fun res!2369803 () Bool)

(assert (=> b!5584682 (=> res!2369803 e!3445737)))

(assert (=> b!5584682 (= res!2369803 (not (is-Concat!24413 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292)))))))

(assert (=> b!5584682 (= e!3445739 e!3445737)))

(declare-fun b!5584683 () Bool)

(assert (=> b!5584683 (= e!3445735 e!3445738)))

(declare-fun res!2369802 () Bool)

(assert (=> b!5584683 (= res!2369802 (not (nullable!5600 (reg!15897 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))))))))

(assert (=> b!5584683 (=> (not res!2369802) (not e!3445738))))

(declare-fun b!5584684 () Bool)

(assert (=> b!5584684 (= e!3445735 e!3445739)))

(assert (=> b!5584684 (= c!978226 (is-Union!15568 (ite c!977896 (regOne!31649 r!7292) (regOne!31648 r!7292))))))

(declare-fun b!5584685 () Bool)

(assert (=> b!5584685 (= e!3445740 call!417928)))

(assert (= (and d!1765274 (not res!2369805)) b!5584680))

(assert (= (and b!5584680 c!978225) b!5584683))

(assert (= (and b!5584680 (not c!978225)) b!5584684))

(assert (= (and b!5584683 res!2369802) b!5584678))

(assert (= (and b!5584684 c!978226) b!5584681))

(assert (= (and b!5584684 (not c!978226)) b!5584682))

(assert (= (and b!5584681 res!2369801) b!5584677))

(assert (= (and b!5584682 (not res!2369803)) b!5584679))

(assert (= (and b!5584679 res!2369804) b!5584685))

(assert (= (or b!5584677 b!5584685) bm!417922))

(assert (= (or b!5584681 b!5584679) bm!417923))

(assert (= (or b!5584678 bm!417922) bm!417924))

(declare-fun m!6565894 () Bool)

(assert (=> bm!417923 m!6565894))

(declare-fun m!6565896 () Bool)

(assert (=> bm!417924 m!6565896))

(declare-fun m!6565898 () Bool)

(assert (=> b!5584683 m!6565898))

(assert (=> bm!417731 d!1765274))

(declare-fun d!1765276 () Bool)

(assert (=> d!1765276 (= (isEmptyExpr!1124 lt!2254164) (is-EmptyExpr!15568 lt!2254164))))

(assert (=> b!5583591 d!1765276))

(declare-fun d!1765278 () Bool)

(assert (=> d!1765278 true))

(declare-fun setRes!37188 () Bool)

(assert (=> d!1765278 setRes!37188))

(declare-fun condSetEmpty!37188 () Bool)

(declare-fun res!2369806 () (Set Context!9904))

(assert (=> d!1765278 (= condSetEmpty!37188 (= res!2369806 (as set.empty (Set Context!9904))))))

(assert (=> d!1765278 (= (choose!42324 lt!2254052 lambda!299491) res!2369806)))

(declare-fun setIsEmpty!37188 () Bool)

(assert (=> setIsEmpty!37188 setRes!37188))

(declare-fun setElem!37188 () Context!9904)

(declare-fun setNonEmpty!37188 () Bool)

(declare-fun e!3445742 () Bool)

(declare-fun tp!1544872 () Bool)

(assert (=> setNonEmpty!37188 (= setRes!37188 (and tp!1544872 (inv!82168 setElem!37188) e!3445742))))

(declare-fun setRest!37188 () (Set Context!9904))

(assert (=> setNonEmpty!37188 (= res!2369806 (set.union (set.insert setElem!37188 (as set.empty (Set Context!9904))) setRest!37188))))

(declare-fun b!5584686 () Bool)

(declare-fun tp!1544873 () Bool)

(assert (=> b!5584686 (= e!3445742 tp!1544873)))

(assert (= (and d!1765278 condSetEmpty!37188) setIsEmpty!37188))

(assert (= (and d!1765278 (not condSetEmpty!37188)) setNonEmpty!37188))

(assert (= setNonEmpty!37188 b!5584686))

(declare-fun m!6565900 () Bool)

(assert (=> setNonEmpty!37188 m!6565900))

(assert (=> d!1764930 d!1765278))

(declare-fun bs!1291646 () Bool)

(declare-fun d!1765280 () Bool)

(assert (= bs!1291646 (and d!1765280 d!1765246)))

(declare-fun lambda!299602 () Int)

(assert (=> bs!1291646 (= lambda!299602 lambda!299595)))

(declare-fun bs!1291647 () Bool)

(assert (= bs!1291647 (and d!1765280 d!1765164)))

(assert (=> bs!1291647 (= lambda!299602 lambda!299585)))

(declare-fun bs!1291648 () Bool)

(assert (= bs!1291648 (and d!1765280 d!1765194)))

(assert (=> bs!1291648 (= lambda!299602 lambda!299589)))

(declare-fun bs!1291649 () Bool)

(assert (= bs!1291649 (and d!1765280 d!1765068)))

(assert (=> bs!1291649 (= lambda!299602 lambda!299572)))

(declare-fun bs!1291650 () Bool)

(assert (= bs!1291650 (and d!1765280 d!1765106)))

(assert (=> bs!1291650 (= lambda!299602 lambda!299579)))

(declare-fun bs!1291651 () Bool)

(assert (= bs!1291651 (and d!1765280 d!1765240)))

(assert (=> bs!1291651 (= lambda!299602 lambda!299594)))

(declare-fun bs!1291652 () Bool)

(assert (= bs!1291652 (and d!1765280 d!1765224)))

(assert (=> bs!1291652 (= lambda!299602 lambda!299592)))

(assert (=> d!1765280 (= (nullableZipper!1565 lt!2254066) (exists!2162 lt!2254066 lambda!299602))))

(declare-fun bs!1291653 () Bool)

(assert (= bs!1291653 d!1765280))

(declare-fun m!6565902 () Bool)

(assert (=> bs!1291653 m!6565902))

(assert (=> b!5583635 d!1765280))

(declare-fun b!5584687 () Bool)

(declare-fun e!3445747 () Bool)

(declare-fun e!3445743 () Bool)

(assert (=> b!5584687 (= e!3445747 e!3445743)))

(declare-fun res!2369810 () Bool)

(declare-fun call!417931 () Bool)

(assert (=> b!5584687 (= res!2369810 call!417931)))

(assert (=> b!5584687 (=> (not res!2369810) (not e!3445743))))

(declare-fun b!5584688 () Bool)

(declare-fun e!3445746 () Bool)

(assert (=> b!5584688 (= e!3445747 e!3445746)))

(declare-fun res!2369808 () Bool)

(assert (=> b!5584688 (= res!2369808 call!417931)))

(assert (=> b!5584688 (=> res!2369808 e!3445746)))

(declare-fun b!5584689 () Bool)

(declare-fun e!3445748 () Bool)

(declare-fun e!3445745 () Bool)

(assert (=> b!5584689 (= e!3445748 e!3445745)))

(declare-fun res!2369807 () Bool)

(assert (=> b!5584689 (=> res!2369807 e!3445745)))

(assert (=> b!5584689 (= res!2369807 (is-Star!15568 (regOne!31649 (regOne!31648 r!7292))))))

(declare-fun b!5584690 () Bool)

(declare-fun e!3445744 () Bool)

(assert (=> b!5584690 (= e!3445744 e!3445748)))

(declare-fun res!2369811 () Bool)

(assert (=> b!5584690 (=> (not res!2369811) (not e!3445748))))

(assert (=> b!5584690 (= res!2369811 (and (not (is-EmptyLang!15568 (regOne!31649 (regOne!31648 r!7292)))) (not (is-ElementMatch!15568 (regOne!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584691 () Bool)

(assert (=> b!5584691 (= e!3445745 e!3445747)))

(declare-fun c!978227 () Bool)

(assert (=> b!5584691 (= c!978227 (is-Union!15568 (regOne!31649 (regOne!31648 r!7292))))))

(declare-fun bm!417925 () Bool)

(assert (=> bm!417925 (= call!417931 (nullable!5600 (ite c!978227 (regOne!31649 (regOne!31649 (regOne!31648 r!7292))) (regOne!31648 (regOne!31649 (regOne!31648 r!7292))))))))

(declare-fun d!1765282 () Bool)

(declare-fun res!2369809 () Bool)

(assert (=> d!1765282 (=> res!2369809 e!3445744)))

(assert (=> d!1765282 (= res!2369809 (is-EmptyExpr!15568 (regOne!31649 (regOne!31648 r!7292))))))

(assert (=> d!1765282 (= (nullableFct!1711 (regOne!31649 (regOne!31648 r!7292))) e!3445744)))

(declare-fun b!5584692 () Bool)

(declare-fun call!417930 () Bool)

(assert (=> b!5584692 (= e!3445743 call!417930)))

(declare-fun bm!417926 () Bool)

(assert (=> bm!417926 (= call!417930 (nullable!5600 (ite c!978227 (regTwo!31649 (regOne!31649 (regOne!31648 r!7292))) (regTwo!31648 (regOne!31649 (regOne!31648 r!7292))))))))

(declare-fun b!5584693 () Bool)

(assert (=> b!5584693 (= e!3445746 call!417930)))

(assert (= (and d!1765282 (not res!2369809)) b!5584690))

(assert (= (and b!5584690 res!2369811) b!5584689))

(assert (= (and b!5584689 (not res!2369807)) b!5584691))

(assert (= (and b!5584691 c!978227) b!5584688))

(assert (= (and b!5584691 (not c!978227)) b!5584687))

(assert (= (and b!5584688 (not res!2369808)) b!5584693))

(assert (= (and b!5584687 res!2369810) b!5584692))

(assert (= (or b!5584693 b!5584692) bm!417926))

(assert (= (or b!5584688 b!5584687) bm!417925))

(declare-fun m!6565904 () Bool)

(assert (=> bm!417925 m!6565904))

(declare-fun m!6565906 () Bool)

(assert (=> bm!417926 m!6565906))

(assert (=> d!1764942 d!1765282))

(declare-fun d!1765284 () Bool)

(assert (=> d!1765284 (= (Exists!2668 (ite c!977958 lambda!299533 lambda!299534)) (choose!42327 (ite c!977958 lambda!299533 lambda!299534)))))

(declare-fun bs!1291654 () Bool)

(assert (= bs!1291654 d!1765284))

(declare-fun m!6565908 () Bool)

(assert (=> bs!1291654 m!6565908))

(assert (=> bm!417748 d!1765284))

(assert (=> d!1764858 d!1764862))

(assert (=> d!1764858 d!1764860))

(declare-fun e!3445749 () Bool)

(declare-fun d!1765286 () Bool)

(assert (=> d!1765286 (= (matchZipper!1706 (set.union lt!2254063 lt!2254070) (t!376277 s!2326)) e!3445749)))

(declare-fun res!2369812 () Bool)

(assert (=> d!1765286 (=> res!2369812 e!3445749)))

(assert (=> d!1765286 (= res!2369812 (matchZipper!1706 lt!2254063 (t!376277 s!2326)))))

(assert (=> d!1765286 true))

(declare-fun _$48!1141 () Unit!155652)

(assert (=> d!1765286 (= (choose!42323 lt!2254063 lt!2254070 (t!376277 s!2326)) _$48!1141)))

(declare-fun b!5584694 () Bool)

(assert (=> b!5584694 (= e!3445749 (matchZipper!1706 lt!2254070 (t!376277 s!2326)))))

(assert (= (and d!1765286 (not res!2369812)) b!5584694))

(assert (=> d!1765286 m!6564800))

(assert (=> d!1765286 m!6564798))

(assert (=> b!5584694 m!6564724))

(assert (=> d!1764858 d!1765286))

(declare-fun b!5584695 () Bool)

(declare-fun e!3445750 () List!63004)

(assert (=> b!5584695 (= e!3445750 (t!376277 s!2326))))

(declare-fun b!5584698 () Bool)

(declare-fun e!3445751 () Bool)

(declare-fun lt!2254264 () List!63004)

(assert (=> b!5584698 (= e!3445751 (or (not (= (t!376277 s!2326) Nil!62880)) (= lt!2254264 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)))))))

(declare-fun d!1765288 () Bool)

(assert (=> d!1765288 e!3445751))

(declare-fun res!2369814 () Bool)

(assert (=> d!1765288 (=> (not res!2369814) (not e!3445751))))

(assert (=> d!1765288 (= res!2369814 (= (content!11340 lt!2254264) (set.union (content!11340 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880))) (content!11340 (t!376277 s!2326)))))))

(assert (=> d!1765288 (= lt!2254264 e!3445750)))

(declare-fun c!978228 () Bool)

(assert (=> d!1765288 (= c!978228 (is-Nil!62880 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880))))))

(assert (=> d!1765288 (= (++!13799 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (t!376277 s!2326)) lt!2254264)))

(declare-fun b!5584697 () Bool)

(declare-fun res!2369813 () Bool)

(assert (=> b!5584697 (=> (not res!2369813) (not e!3445751))))

(assert (=> b!5584697 (= res!2369813 (= (size!39959 lt!2254264) (+ (size!39959 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880))) (size!39959 (t!376277 s!2326)))))))

(declare-fun b!5584696 () Bool)

(assert (=> b!5584696 (= e!3445750 (Cons!62880 (h!69328 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880))) (++!13799 (t!376277 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880))) (t!376277 s!2326))))))

(assert (= (and d!1765288 c!978228) b!5584695))

(assert (= (and d!1765288 (not c!978228)) b!5584696))

(assert (= (and d!1765288 res!2369814) b!5584697))

(assert (= (and b!5584697 res!2369813) b!5584698))

(declare-fun m!6565910 () Bool)

(assert (=> d!1765288 m!6565910))

(assert (=> d!1765288 m!6565100))

(declare-fun m!6565912 () Bool)

(assert (=> d!1765288 m!6565912))

(declare-fun m!6565914 () Bool)

(assert (=> d!1765288 m!6565914))

(declare-fun m!6565916 () Bool)

(assert (=> b!5584697 m!6565916))

(assert (=> b!5584697 m!6565100))

(declare-fun m!6565918 () Bool)

(assert (=> b!5584697 m!6565918))

(declare-fun m!6565920 () Bool)

(assert (=> b!5584697 m!6565920))

(declare-fun m!6565922 () Bool)

(assert (=> b!5584696 m!6565922))

(assert (=> b!5583707 d!1765288))

(declare-fun b!5584699 () Bool)

(declare-fun e!3445752 () List!63004)

(assert (=> b!5584699 (= e!3445752 (Cons!62880 (h!69328 s!2326) Nil!62880))))

(declare-fun b!5584702 () Bool)

(declare-fun e!3445753 () Bool)

(declare-fun lt!2254265 () List!63004)

(assert (=> b!5584702 (= e!3445753 (or (not (= (Cons!62880 (h!69328 s!2326) Nil!62880) Nil!62880)) (= lt!2254265 Nil!62880)))))

(declare-fun d!1765290 () Bool)

(assert (=> d!1765290 e!3445753))

(declare-fun res!2369816 () Bool)

(assert (=> d!1765290 (=> (not res!2369816) (not e!3445753))))

(assert (=> d!1765290 (= res!2369816 (= (content!11340 lt!2254265) (set.union (content!11340 Nil!62880) (content!11340 (Cons!62880 (h!69328 s!2326) Nil!62880)))))))

(assert (=> d!1765290 (= lt!2254265 e!3445752)))

(declare-fun c!978229 () Bool)

(assert (=> d!1765290 (= c!978229 (is-Nil!62880 Nil!62880))))

(assert (=> d!1765290 (= (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) lt!2254265)))

(declare-fun b!5584701 () Bool)

(declare-fun res!2369815 () Bool)

(assert (=> b!5584701 (=> (not res!2369815) (not e!3445753))))

(assert (=> b!5584701 (= res!2369815 (= (size!39959 lt!2254265) (+ (size!39959 Nil!62880) (size!39959 (Cons!62880 (h!69328 s!2326) Nil!62880)))))))

(declare-fun b!5584700 () Bool)

(assert (=> b!5584700 (= e!3445752 (Cons!62880 (h!69328 Nil!62880) (++!13799 (t!376277 Nil!62880) (Cons!62880 (h!69328 s!2326) Nil!62880))))))

(assert (= (and d!1765290 c!978229) b!5584699))

(assert (= (and d!1765290 (not c!978229)) b!5584700))

(assert (= (and d!1765290 res!2369816) b!5584701))

(assert (= (and b!5584701 res!2369815) b!5584702))

(declare-fun m!6565924 () Bool)

(assert (=> d!1765290 m!6565924))

(declare-fun m!6565926 () Bool)

(assert (=> d!1765290 m!6565926))

(declare-fun m!6565928 () Bool)

(assert (=> d!1765290 m!6565928))

(declare-fun m!6565930 () Bool)

(assert (=> b!5584701 m!6565930))

(declare-fun m!6565932 () Bool)

(assert (=> b!5584701 m!6565932))

(declare-fun m!6565934 () Bool)

(assert (=> b!5584701 m!6565934))

(declare-fun m!6565936 () Bool)

(assert (=> b!5584700 m!6565936))

(assert (=> b!5583707 d!1765290))

(declare-fun d!1765292 () Bool)

(assert (=> d!1765292 (= (++!13799 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (t!376277 s!2326)) s!2326)))

(declare-fun lt!2254268 () Unit!155652)

(declare-fun choose!42339 (List!63004 C!31406 List!63004 List!63004) Unit!155652)

(assert (=> d!1765292 (= lt!2254268 (choose!42339 Nil!62880 (h!69328 s!2326) (t!376277 s!2326) s!2326))))

(assert (=> d!1765292 (= (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) (t!376277 s!2326))) s!2326)))

(assert (=> d!1765292 (= (lemmaMoveElementToOtherListKeepsConcatEq!1968 Nil!62880 (h!69328 s!2326) (t!376277 s!2326) s!2326) lt!2254268)))

(declare-fun bs!1291655 () Bool)

(assert (= bs!1291655 d!1765292))

(assert (=> bs!1291655 m!6565100))

(assert (=> bs!1291655 m!6565100))

(assert (=> bs!1291655 m!6565102))

(declare-fun m!6565938 () Bool)

(assert (=> bs!1291655 m!6565938))

(declare-fun m!6565940 () Bool)

(assert (=> bs!1291655 m!6565940))

(assert (=> b!5583707 d!1765292))

(declare-fun b!5584703 () Bool)

(declare-fun res!2369821 () Bool)

(declare-fun e!3445755 () Bool)

(assert (=> b!5584703 (=> (not res!2369821) (not e!3445755))))

(declare-fun lt!2254270 () Option!15577)

(assert (=> b!5584703 (= res!2369821 (matchR!7753 (regOne!31648 r!7292) (_1!35968 (get!21651 lt!2254270))))))

(declare-fun b!5584704 () Bool)

(declare-fun res!2369818 () Bool)

(assert (=> b!5584704 (=> (not res!2369818) (not e!3445755))))

(assert (=> b!5584704 (= res!2369818 (matchR!7753 (regTwo!31648 r!7292) (_2!35968 (get!21651 lt!2254270))))))

(declare-fun b!5584706 () Bool)

(declare-fun e!3445757 () Bool)

(assert (=> b!5584706 (= e!3445757 (matchR!7753 (regTwo!31648 r!7292) (t!376277 s!2326)))))

(declare-fun b!5584707 () Bool)

(declare-fun e!3445758 () Bool)

(assert (=> b!5584707 (= e!3445758 (not (isDefined!12280 lt!2254270)))))

(declare-fun b!5584708 () Bool)

(declare-fun e!3445754 () Option!15577)

(declare-fun e!3445756 () Option!15577)

(assert (=> b!5584708 (= e!3445754 e!3445756)))

(declare-fun c!978231 () Bool)

(assert (=> b!5584708 (= c!978231 (is-Nil!62880 (t!376277 s!2326)))))

(declare-fun b!5584709 () Bool)

(assert (=> b!5584709 (= e!3445755 (= (++!13799 (_1!35968 (get!21651 lt!2254270)) (_2!35968 (get!21651 lt!2254270))) s!2326))))

(declare-fun b!5584710 () Bool)

(assert (=> b!5584710 (= e!3445756 None!15576)))

(declare-fun b!5584711 () Bool)

(declare-fun lt!2254269 () Unit!155652)

(declare-fun lt!2254271 () Unit!155652)

(assert (=> b!5584711 (= lt!2254269 lt!2254271)))

(assert (=> b!5584711 (= (++!13799 (++!13799 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (Cons!62880 (h!69328 (t!376277 s!2326)) Nil!62880)) (t!376277 (t!376277 s!2326))) s!2326)))

(assert (=> b!5584711 (= lt!2254271 (lemmaMoveElementToOtherListKeepsConcatEq!1968 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (h!69328 (t!376277 s!2326)) (t!376277 (t!376277 s!2326)) s!2326))))

(assert (=> b!5584711 (= e!3445756 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) (++!13799 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (Cons!62880 (h!69328 (t!376277 s!2326)) Nil!62880)) (t!376277 (t!376277 s!2326)) s!2326))))

(declare-fun b!5584705 () Bool)

(assert (=> b!5584705 (= e!3445754 (Some!15576 (tuple2!65331 (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (t!376277 s!2326))))))

(declare-fun d!1765294 () Bool)

(assert (=> d!1765294 e!3445758))

(declare-fun res!2369817 () Bool)

(assert (=> d!1765294 (=> res!2369817 e!3445758)))

(assert (=> d!1765294 (= res!2369817 e!3445755)))

(declare-fun res!2369820 () Bool)

(assert (=> d!1765294 (=> (not res!2369820) (not e!3445755))))

(assert (=> d!1765294 (= res!2369820 (isDefined!12280 lt!2254270))))

(assert (=> d!1765294 (= lt!2254270 e!3445754)))

(declare-fun c!978230 () Bool)

(assert (=> d!1765294 (= c!978230 e!3445757)))

(declare-fun res!2369819 () Bool)

(assert (=> d!1765294 (=> (not res!2369819) (not e!3445757))))

(assert (=> d!1765294 (= res!2369819 (matchR!7753 (regOne!31648 r!7292) (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880))))))

(assert (=> d!1765294 (validRegex!7304 (regOne!31648 r!7292))))

(assert (=> d!1765294 (= (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) (++!13799 Nil!62880 (Cons!62880 (h!69328 s!2326) Nil!62880)) (t!376277 s!2326) s!2326) lt!2254270)))

(assert (= (and d!1765294 res!2369819) b!5584706))

(assert (= (and d!1765294 c!978230) b!5584705))

(assert (= (and d!1765294 (not c!978230)) b!5584708))

(assert (= (and b!5584708 c!978231) b!5584710))

(assert (= (and b!5584708 (not c!978231)) b!5584711))

(assert (= (and d!1765294 res!2369820) b!5584703))

(assert (= (and b!5584703 res!2369821) b!5584704))

(assert (= (and b!5584704 res!2369818) b!5584709))

(assert (= (and d!1765294 (not res!2369817)) b!5584707))

(declare-fun m!6565942 () Bool)

(assert (=> d!1765294 m!6565942))

(assert (=> d!1765294 m!6565100))

(declare-fun m!6565944 () Bool)

(assert (=> d!1765294 m!6565944))

(assert (=> d!1765294 m!6565094))

(assert (=> b!5584707 m!6565942))

(declare-fun m!6565946 () Bool)

(assert (=> b!5584709 m!6565946))

(declare-fun m!6565948 () Bool)

(assert (=> b!5584709 m!6565948))

(assert (=> b!5584711 m!6565100))

(declare-fun m!6565950 () Bool)

(assert (=> b!5584711 m!6565950))

(assert (=> b!5584711 m!6565950))

(declare-fun m!6565952 () Bool)

(assert (=> b!5584711 m!6565952))

(assert (=> b!5584711 m!6565100))

(declare-fun m!6565954 () Bool)

(assert (=> b!5584711 m!6565954))

(assert (=> b!5584711 m!6565950))

(declare-fun m!6565956 () Bool)

(assert (=> b!5584711 m!6565956))

(assert (=> b!5584704 m!6565946))

(declare-fun m!6565958 () Bool)

(assert (=> b!5584704 m!6565958))

(assert (=> b!5584703 m!6565946))

(declare-fun m!6565960 () Bool)

(assert (=> b!5584703 m!6565960))

(declare-fun m!6565962 () Bool)

(assert (=> b!5584706 m!6565962))

(assert (=> b!5583707 d!1765294))

(assert (=> d!1764860 d!1765104))

(declare-fun d!1765296 () Bool)

(declare-fun res!2369826 () Bool)

(declare-fun e!3445763 () Bool)

(assert (=> d!1765296 (=> res!2369826 e!3445763)))

(assert (=> d!1765296 (= res!2369826 (is-Nil!62881 lt!2254176))))

(assert (=> d!1765296 (= (noDuplicate!1546 lt!2254176) e!3445763)))

(declare-fun b!5584716 () Bool)

(declare-fun e!3445764 () Bool)

(assert (=> b!5584716 (= e!3445763 e!3445764)))

(declare-fun res!2369827 () Bool)

(assert (=> b!5584716 (=> (not res!2369827) (not e!3445764))))

(declare-fun contains!19806 (List!63005 Context!9904) Bool)

(assert (=> b!5584716 (= res!2369827 (not (contains!19806 (t!376278 lt!2254176) (h!69329 lt!2254176))))))

(declare-fun b!5584717 () Bool)

(assert (=> b!5584717 (= e!3445764 (noDuplicate!1546 (t!376278 lt!2254176)))))

(assert (= (and d!1765296 (not res!2369826)) b!5584716))

(assert (= (and b!5584716 res!2369827) b!5584717))

(declare-fun m!6565964 () Bool)

(assert (=> b!5584716 m!6565964))

(declare-fun m!6565966 () Bool)

(assert (=> b!5584717 m!6565966))

(assert (=> d!1764892 d!1765296))

(declare-fun d!1765298 () Bool)

(declare-fun e!3445772 () Bool)

(assert (=> d!1765298 e!3445772))

(declare-fun res!2369832 () Bool)

(assert (=> d!1765298 (=> (not res!2369832) (not e!3445772))))

(declare-fun res!2369833 () List!63005)

(assert (=> d!1765298 (= res!2369832 (noDuplicate!1546 res!2369833))))

(declare-fun e!3445773 () Bool)

(assert (=> d!1765298 e!3445773))

(assert (=> d!1765298 (= (choose!42326 z!1189) res!2369833)))

(declare-fun b!5584725 () Bool)

(declare-fun e!3445771 () Bool)

(declare-fun tp!1544878 () Bool)

(assert (=> b!5584725 (= e!3445771 tp!1544878)))

(declare-fun b!5584724 () Bool)

(declare-fun tp!1544879 () Bool)

(assert (=> b!5584724 (= e!3445773 (and (inv!82168 (h!69329 res!2369833)) e!3445771 tp!1544879))))

(declare-fun b!5584726 () Bool)

(assert (=> b!5584726 (= e!3445772 (= (content!11338 res!2369833) z!1189))))

(assert (= b!5584724 b!5584725))

(assert (= (and d!1765298 (is-Cons!62881 res!2369833)) b!5584724))

(assert (= (and d!1765298 res!2369832) b!5584726))

(declare-fun m!6565968 () Bool)

(assert (=> d!1765298 m!6565968))

(declare-fun m!6565970 () Bool)

(assert (=> b!5584724 m!6565970))

(declare-fun m!6565972 () Bool)

(assert (=> b!5584726 m!6565972))

(assert (=> d!1764892 d!1765298))

(declare-fun d!1765300 () Bool)

(assert (=> d!1765300 (= (nullable!5600 r!7292) (nullableFct!1711 r!7292))))

(declare-fun bs!1291656 () Bool)

(assert (= bs!1291656 d!1765300))

(declare-fun m!6565974 () Bool)

(assert (=> bs!1291656 m!6565974))

(assert (=> b!5583799 d!1765300))

(declare-fun bs!1291657 () Bool)

(declare-fun d!1765302 () Bool)

(assert (= bs!1291657 (and d!1765302 d!1765246)))

(declare-fun lambda!299603 () Int)

(assert (=> bs!1291657 (= lambda!299603 lambda!299595)))

(declare-fun bs!1291658 () Bool)

(assert (= bs!1291658 (and d!1765302 d!1765164)))

(assert (=> bs!1291658 (= lambda!299603 lambda!299585)))

(declare-fun bs!1291659 () Bool)

(assert (= bs!1291659 (and d!1765302 d!1765194)))

(assert (=> bs!1291659 (= lambda!299603 lambda!299589)))

(declare-fun bs!1291660 () Bool)

(assert (= bs!1291660 (and d!1765302 d!1765280)))

(assert (=> bs!1291660 (= lambda!299603 lambda!299602)))

(declare-fun bs!1291661 () Bool)

(assert (= bs!1291661 (and d!1765302 d!1765068)))

(assert (=> bs!1291661 (= lambda!299603 lambda!299572)))

(declare-fun bs!1291662 () Bool)

(assert (= bs!1291662 (and d!1765302 d!1765106)))

(assert (=> bs!1291662 (= lambda!299603 lambda!299579)))

(declare-fun bs!1291663 () Bool)

(assert (= bs!1291663 (and d!1765302 d!1765240)))

(assert (=> bs!1291663 (= lambda!299603 lambda!299594)))

(declare-fun bs!1291664 () Bool)

(assert (= bs!1291664 (and d!1765302 d!1765224)))

(assert (=> bs!1291664 (= lambda!299603 lambda!299592)))

(assert (=> d!1765302 (= (nullableZipper!1565 (set.union lt!2254046 lt!2254070)) (exists!2162 (set.union lt!2254046 lt!2254070) lambda!299603))))

(declare-fun bs!1291665 () Bool)

(assert (= bs!1291665 d!1765302))

(declare-fun m!6565976 () Bool)

(assert (=> bs!1291665 m!6565976))

(assert (=> b!5583721 d!1765302))

(assert (=> bs!1291440 d!1764938))

(declare-fun bs!1291666 () Bool)

(declare-fun d!1765304 () Bool)

(assert (= bs!1291666 (and d!1765304 d!1764852)))

(declare-fun lambda!299604 () Int)

(assert (=> bs!1291666 (= lambda!299604 lambda!299509)))

(declare-fun bs!1291667 () Bool)

(assert (= bs!1291667 (and d!1765304 d!1765148)))

(assert (=> bs!1291667 (= lambda!299604 lambda!299583)))

(declare-fun bs!1291668 () Bool)

(assert (= bs!1291668 (and d!1765304 d!1764868)))

(assert (=> bs!1291668 (= lambda!299604 lambda!299512)))

(declare-fun bs!1291669 () Bool)

(assert (= bs!1291669 (and d!1765304 d!1765058)))

(assert (=> bs!1291669 (= lambda!299604 lambda!299569)))

(declare-fun bs!1291670 () Bool)

(assert (= bs!1291670 (and d!1765304 d!1765222)))

(assert (=> bs!1291670 (= lambda!299604 lambda!299591)))

(declare-fun bs!1291671 () Bool)

(assert (= bs!1291671 (and d!1765304 d!1765128)))

(assert (=> bs!1291671 (= lambda!299604 lambda!299581)))

(declare-fun bs!1291672 () Bool)

(assert (= bs!1291672 (and d!1765304 d!1764870)))

(assert (=> bs!1291672 (= lambda!299604 lambda!299515)))

(declare-fun bs!1291673 () Bool)

(assert (= bs!1291673 (and d!1765304 d!1764902)))

(assert (=> bs!1291673 (= lambda!299604 lambda!299519)))

(declare-fun bs!1291674 () Bool)

(assert (= bs!1291674 (and d!1765304 d!1764872)))

(assert (=> bs!1291674 (= lambda!299604 lambda!299518)))

(declare-fun b!5584727 () Bool)

(declare-fun e!3445774 () Bool)

(declare-fun e!3445777 () Bool)

(assert (=> b!5584727 (= e!3445774 e!3445777)))

(declare-fun c!978232 () Bool)

(assert (=> b!5584727 (= c!978232 (isEmpty!34692 (tail!11005 (t!376276 (unfocusZipperList!996 zl!343)))))))

(declare-fun b!5584728 () Bool)

(declare-fun e!3445775 () Regex!15568)

(assert (=> b!5584728 (= e!3445775 EmptyLang!15568)))

(declare-fun b!5584729 () Bool)

(declare-fun e!3445776 () Regex!15568)

(assert (=> b!5584729 (= e!3445776 e!3445775)))

(declare-fun c!978233 () Bool)

(assert (=> b!5584729 (= c!978233 (is-Cons!62879 (t!376276 (unfocusZipperList!996 zl!343))))))

(declare-fun b!5584730 () Bool)

(declare-fun e!3445778 () Bool)

(assert (=> b!5584730 (= e!3445778 e!3445774)))

(declare-fun c!978235 () Bool)

(assert (=> b!5584730 (= c!978235 (isEmpty!34692 (t!376276 (unfocusZipperList!996 zl!343))))))

(declare-fun b!5584731 () Bool)

(assert (=> b!5584731 (= e!3445776 (h!69327 (t!376276 (unfocusZipperList!996 zl!343))))))

(declare-fun b!5584732 () Bool)

(declare-fun lt!2254272 () Regex!15568)

(assert (=> b!5584732 (= e!3445777 (= lt!2254272 (head!11910 (t!376276 (unfocusZipperList!996 zl!343)))))))

(declare-fun b!5584733 () Bool)

(assert (=> b!5584733 (= e!3445774 (isEmptyLang!1134 lt!2254272))))

(declare-fun b!5584734 () Bool)

(assert (=> b!5584734 (= e!3445775 (Union!15568 (h!69327 (t!376276 (unfocusZipperList!996 zl!343))) (generalisedUnion!1431 (t!376276 (t!376276 (unfocusZipperList!996 zl!343))))))))

(assert (=> d!1765304 e!3445778))

(declare-fun res!2369835 () Bool)

(assert (=> d!1765304 (=> (not res!2369835) (not e!3445778))))

(assert (=> d!1765304 (= res!2369835 (validRegex!7304 lt!2254272))))

(assert (=> d!1765304 (= lt!2254272 e!3445776)))

(declare-fun c!978234 () Bool)

(declare-fun e!3445779 () Bool)

(assert (=> d!1765304 (= c!978234 e!3445779)))

(declare-fun res!2369834 () Bool)

(assert (=> d!1765304 (=> (not res!2369834) (not e!3445779))))

(assert (=> d!1765304 (= res!2369834 (is-Cons!62879 (t!376276 (unfocusZipperList!996 zl!343))))))

(assert (=> d!1765304 (forall!14736 (t!376276 (unfocusZipperList!996 zl!343)) lambda!299604)))

(assert (=> d!1765304 (= (generalisedUnion!1431 (t!376276 (unfocusZipperList!996 zl!343))) lt!2254272)))

(declare-fun b!5584735 () Bool)

(assert (=> b!5584735 (= e!3445777 (isUnion!564 lt!2254272))))

(declare-fun b!5584736 () Bool)

(assert (=> b!5584736 (= e!3445779 (isEmpty!34692 (t!376276 (t!376276 (unfocusZipperList!996 zl!343)))))))

(assert (= (and d!1765304 res!2369834) b!5584736))

(assert (= (and d!1765304 c!978234) b!5584731))

(assert (= (and d!1765304 (not c!978234)) b!5584729))

(assert (= (and b!5584729 c!978233) b!5584734))

(assert (= (and b!5584729 (not c!978233)) b!5584728))

(assert (= (and d!1765304 res!2369835) b!5584730))

(assert (= (and b!5584730 c!978235) b!5584733))

(assert (= (and b!5584730 (not c!978235)) b!5584727))

(assert (= (and b!5584727 c!978232) b!5584732))

(assert (= (and b!5584727 (not c!978232)) b!5584735))

(declare-fun m!6565978 () Bool)

(assert (=> b!5584736 m!6565978))

(declare-fun m!6565980 () Bool)

(assert (=> d!1765304 m!6565980))

(declare-fun m!6565982 () Bool)

(assert (=> d!1765304 m!6565982))

(declare-fun m!6565984 () Bool)

(assert (=> b!5584735 m!6565984))

(assert (=> b!5584730 m!6564990))

(declare-fun m!6565986 () Bool)

(assert (=> b!5584732 m!6565986))

(declare-fun m!6565988 () Bool)

(assert (=> b!5584734 m!6565988))

(declare-fun m!6565990 () Bool)

(assert (=> b!5584727 m!6565990))

(assert (=> b!5584727 m!6565990))

(declare-fun m!6565992 () Bool)

(assert (=> b!5584727 m!6565992))

(declare-fun m!6565994 () Bool)

(assert (=> b!5584733 m!6565994))

(assert (=> b!5583624 d!1765304))

(declare-fun d!1765306 () Bool)

(declare-fun c!978236 () Bool)

(assert (=> d!1765306 (= c!978236 (isEmpty!34696 (tail!11004 s!2326)))))

(declare-fun e!3445780 () Bool)

(assert (=> d!1765306 (= (matchZipper!1706 (derivationStepZipper!1667 lt!2254060 (head!11909 s!2326)) (tail!11004 s!2326)) e!3445780)))

(declare-fun b!5584737 () Bool)

(assert (=> b!5584737 (= e!3445780 (nullableZipper!1565 (derivationStepZipper!1667 lt!2254060 (head!11909 s!2326))))))

(declare-fun b!5584738 () Bool)

(assert (=> b!5584738 (= e!3445780 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 lt!2254060 (head!11909 s!2326)) (head!11909 (tail!11004 s!2326))) (tail!11004 (tail!11004 s!2326))))))

(assert (= (and d!1765306 c!978236) b!5584737))

(assert (= (and d!1765306 (not c!978236)) b!5584738))

(assert (=> d!1765306 m!6565022))

(assert (=> d!1765306 m!6565144))

(assert (=> b!5584737 m!6565020))

(declare-fun m!6565996 () Bool)

(assert (=> b!5584737 m!6565996))

(assert (=> b!5584738 m!6565022))

(assert (=> b!5584738 m!6565492))

(assert (=> b!5584738 m!6565020))

(assert (=> b!5584738 m!6565492))

(declare-fun m!6565998 () Bool)

(assert (=> b!5584738 m!6565998))

(assert (=> b!5584738 m!6565022))

(assert (=> b!5584738 m!6565486))

(assert (=> b!5584738 m!6565998))

(assert (=> b!5584738 m!6565486))

(declare-fun m!6566000 () Bool)

(assert (=> b!5584738 m!6566000))

(assert (=> b!5583634 d!1765306))

(declare-fun bs!1291675 () Bool)

(declare-fun d!1765308 () Bool)

(assert (= bs!1291675 (and d!1765308 d!1765110)))

(declare-fun lambda!299605 () Int)

(assert (=> bs!1291675 (= (= (head!11909 s!2326) (head!11909 (t!376277 s!2326))) (= lambda!299605 lambda!299580))))

(declare-fun bs!1291676 () Bool)

(assert (= bs!1291676 (and d!1765308 d!1765154)))

(assert (=> bs!1291676 (= (= (head!11909 s!2326) (head!11909 (t!376277 s!2326))) (= lambda!299605 lambda!299584))))

(declare-fun bs!1291677 () Bool)

(assert (= bs!1291677 (and d!1765308 b!5583357)))

(assert (=> bs!1291677 (= (= (head!11909 s!2326) (h!69328 s!2326)) (= lambda!299605 lambda!299491))))

(declare-fun bs!1291678 () Bool)

(assert (= bs!1291678 (and d!1765308 d!1765146)))

(assert (=> bs!1291678 (= (= (head!11909 s!2326) (head!11909 (t!376277 s!2326))) (= lambda!299605 lambda!299582))))

(declare-fun bs!1291679 () Bool)

(assert (= bs!1291679 (and d!1765308 d!1765272)))

(assert (=> bs!1291679 (= (= (head!11909 s!2326) (head!11909 (t!376277 s!2326))) (= lambda!299605 lambda!299601))))

(declare-fun bs!1291680 () Bool)

(assert (= bs!1291680 (and d!1765308 d!1765206)))

(assert (=> bs!1291680 (= (= (head!11909 s!2326) (head!11909 (t!376277 s!2326))) (= lambda!299605 lambda!299590))))

(declare-fun bs!1291681 () Bool)

(assert (= bs!1291681 (and d!1765308 d!1765182)))

(assert (=> bs!1291681 (= (= (head!11909 s!2326) (head!11909 (t!376277 s!2326))) (= lambda!299605 lambda!299586))))

(declare-fun bs!1291682 () Bool)

(assert (= bs!1291682 (and d!1765308 d!1764940)))

(assert (=> bs!1291682 (= (= (head!11909 s!2326) (h!69328 s!2326)) (= lambda!299605 lambda!299537))))

(declare-fun bs!1291683 () Bool)

(assert (= bs!1291683 (and d!1765308 d!1765236)))

(assert (=> bs!1291683 (= (= (head!11909 s!2326) (head!11909 (t!376277 s!2326))) (= lambda!299605 lambda!299593))))

(assert (=> d!1765308 true))

(assert (=> d!1765308 (= (derivationStepZipper!1667 lt!2254060 (head!11909 s!2326)) (flatMap!1181 lt!2254060 lambda!299605))))

(declare-fun bs!1291684 () Bool)

(assert (= bs!1291684 d!1765308))

(declare-fun m!6566002 () Bool)

(assert (=> bs!1291684 m!6566002))

(assert (=> b!5583634 d!1765308))

(assert (=> b!5583634 d!1765080))

(assert (=> b!5583634 d!1765082))

(assert (=> b!5583807 d!1765242))

(assert (=> b!5583807 d!1765082))

(declare-fun b!5584739 () Bool)

(declare-fun e!3445782 () Bool)

(declare-fun call!417933 () Bool)

(assert (=> b!5584739 (= e!3445782 call!417933)))

(declare-fun bm!417927 () Bool)

(declare-fun call!417932 () Bool)

(assert (=> bm!417927 (= call!417933 call!417932)))

(declare-fun b!5584740 () Bool)

(declare-fun e!3445784 () Bool)

(assert (=> b!5584740 (= e!3445784 call!417932)))

(declare-fun b!5584741 () Bool)

(declare-fun e!3445783 () Bool)

(declare-fun e!3445786 () Bool)

(assert (=> b!5584741 (= e!3445783 e!3445786)))

(declare-fun res!2369839 () Bool)

(assert (=> b!5584741 (=> (not res!2369839) (not e!3445786))))

(declare-fun call!417934 () Bool)

(assert (=> b!5584741 (= res!2369839 call!417934)))

(declare-fun b!5584742 () Bool)

(declare-fun e!3445787 () Bool)

(declare-fun e!3445781 () Bool)

(assert (=> b!5584742 (= e!3445787 e!3445781)))

(declare-fun c!978237 () Bool)

(assert (=> b!5584742 (= c!978237 (is-Star!15568 lt!2254164))))

(declare-fun b!5584743 () Bool)

(declare-fun res!2369836 () Bool)

(assert (=> b!5584743 (=> (not res!2369836) (not e!3445782))))

(assert (=> b!5584743 (= res!2369836 call!417934)))

(declare-fun e!3445785 () Bool)

(assert (=> b!5584743 (= e!3445785 e!3445782)))

(declare-fun d!1765310 () Bool)

(declare-fun res!2369840 () Bool)

(assert (=> d!1765310 (=> res!2369840 e!3445787)))

(assert (=> d!1765310 (= res!2369840 (is-ElementMatch!15568 lt!2254164))))

(assert (=> d!1765310 (= (validRegex!7304 lt!2254164) e!3445787)))

(declare-fun bm!417928 () Bool)

(declare-fun c!978238 () Bool)

(assert (=> bm!417928 (= call!417934 (validRegex!7304 (ite c!978238 (regOne!31649 lt!2254164) (regOne!31648 lt!2254164))))))

(declare-fun bm!417929 () Bool)

(assert (=> bm!417929 (= call!417932 (validRegex!7304 (ite c!978237 (reg!15897 lt!2254164) (ite c!978238 (regTwo!31649 lt!2254164) (regTwo!31648 lt!2254164)))))))

(declare-fun b!5584744 () Bool)

(declare-fun res!2369838 () Bool)

(assert (=> b!5584744 (=> res!2369838 e!3445783)))

(assert (=> b!5584744 (= res!2369838 (not (is-Concat!24413 lt!2254164)))))

(assert (=> b!5584744 (= e!3445785 e!3445783)))

(declare-fun b!5584745 () Bool)

(assert (=> b!5584745 (= e!3445781 e!3445784)))

(declare-fun res!2369837 () Bool)

(assert (=> b!5584745 (= res!2369837 (not (nullable!5600 (reg!15897 lt!2254164))))))

(assert (=> b!5584745 (=> (not res!2369837) (not e!3445784))))

(declare-fun b!5584746 () Bool)

(assert (=> b!5584746 (= e!3445781 e!3445785)))

(assert (=> b!5584746 (= c!978238 (is-Union!15568 lt!2254164))))

(declare-fun b!5584747 () Bool)

(assert (=> b!5584747 (= e!3445786 call!417933)))

(assert (= (and d!1765310 (not res!2369840)) b!5584742))

(assert (= (and b!5584742 c!978237) b!5584745))

(assert (= (and b!5584742 (not c!978237)) b!5584746))

(assert (= (and b!5584745 res!2369837) b!5584740))

(assert (= (and b!5584746 c!978238) b!5584743))

(assert (= (and b!5584746 (not c!978238)) b!5584744))

(assert (= (and b!5584743 res!2369836) b!5584739))

(assert (= (and b!5584744 (not res!2369838)) b!5584741))

(assert (= (and b!5584741 res!2369839) b!5584747))

(assert (= (or b!5584739 b!5584747) bm!417927))

(assert (= (or b!5584743 b!5584741) bm!417928))

(assert (= (or b!5584740 bm!417927) bm!417929))

(declare-fun m!6566004 () Bool)

(assert (=> bm!417928 m!6566004))

(declare-fun m!6566006 () Bool)

(assert (=> bm!417929 m!6566006))

(declare-fun m!6566008 () Bool)

(assert (=> b!5584745 m!6566008))

(assert (=> d!1764868 d!1765310))

(declare-fun d!1765312 () Bool)

(declare-fun res!2369841 () Bool)

(declare-fun e!3445788 () Bool)

(assert (=> d!1765312 (=> res!2369841 e!3445788)))

(assert (=> d!1765312 (= res!2369841 (is-Nil!62879 (exprs!5452 (h!69329 zl!343))))))

(assert (=> d!1765312 (= (forall!14736 (exprs!5452 (h!69329 zl!343)) lambda!299512) e!3445788)))

(declare-fun b!5584748 () Bool)

(declare-fun e!3445789 () Bool)

(assert (=> b!5584748 (= e!3445788 e!3445789)))

(declare-fun res!2369842 () Bool)

(assert (=> b!5584748 (=> (not res!2369842) (not e!3445789))))

(assert (=> b!5584748 (= res!2369842 (dynLambda!24593 lambda!299512 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun b!5584749 () Bool)

(assert (=> b!5584749 (= e!3445789 (forall!14736 (t!376276 (exprs!5452 (h!69329 zl!343))) lambda!299512))))

(assert (= (and d!1765312 (not res!2369841)) b!5584748))

(assert (= (and b!5584748 res!2369842) b!5584749))

(declare-fun b_lambda!211633 () Bool)

(assert (=> (not b_lambda!211633) (not b!5584748)))

(declare-fun m!6566010 () Bool)

(assert (=> b!5584748 m!6566010))

(declare-fun m!6566012 () Bool)

(assert (=> b!5584749 m!6566012))

(assert (=> d!1764868 d!1765312))

(declare-fun d!1765314 () Bool)

(assert (=> d!1765314 (= ($colon$colon!1633 (exprs!5452 lt!2254067) (ite (or c!977879 c!977878) (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (regTwo!31649 (regOne!31648 r!7292)))) (Cons!62879 (ite (or c!977879 c!977878) (regTwo!31648 (regTwo!31649 (regOne!31648 r!7292))) (regTwo!31649 (regOne!31648 r!7292))) (exprs!5452 lt!2254067)))))

(assert (=> bm!417716 d!1765314))

(assert (=> bm!417749 d!1765214))

(declare-fun d!1765316 () Bool)

(declare-fun c!978239 () Bool)

(assert (=> d!1765316 (= c!978239 (isEmpty!34696 (tail!11004 (t!376277 s!2326))))))

(declare-fun e!3445790 () Bool)

(assert (=> d!1765316 (= (matchZipper!1706 (derivationStepZipper!1667 lt!2254063 (head!11909 (t!376277 s!2326))) (tail!11004 (t!376277 s!2326))) e!3445790)))

(declare-fun b!5584750 () Bool)

(assert (=> b!5584750 (= e!3445790 (nullableZipper!1565 (derivationStepZipper!1667 lt!2254063 (head!11909 (t!376277 s!2326)))))))

(declare-fun b!5584751 () Bool)

(assert (=> b!5584751 (= e!3445790 (matchZipper!1706 (derivationStepZipper!1667 (derivationStepZipper!1667 lt!2254063 (head!11909 (t!376277 s!2326))) (head!11909 (tail!11004 (t!376277 s!2326)))) (tail!11004 (tail!11004 (t!376277 s!2326)))))))

(assert (= (and d!1765316 c!978239) b!5584750))

(assert (= (and d!1765316 (not c!978239)) b!5584751))

(assert (=> d!1765316 m!6564922))

(assert (=> d!1765316 m!6565544))

(assert (=> b!5584750 m!6564950))

(declare-fun m!6566014 () Bool)

(assert (=> b!5584750 m!6566014))

(assert (=> b!5584751 m!6564922))

(assert (=> b!5584751 m!6565548))

(assert (=> b!5584751 m!6564950))

(assert (=> b!5584751 m!6565548))

(declare-fun m!6566016 () Bool)

(assert (=> b!5584751 m!6566016))

(assert (=> b!5584751 m!6564922))

(assert (=> b!5584751 m!6565552))

(assert (=> b!5584751 m!6566016))

(assert (=> b!5584751 m!6565552))

(declare-fun m!6566018 () Bool)

(assert (=> b!5584751 m!6566018))

(assert (=> b!5583535 d!1765316))

(declare-fun bs!1291685 () Bool)

(declare-fun d!1765318 () Bool)

(assert (= bs!1291685 (and d!1765318 d!1765110)))

(declare-fun lambda!299606 () Int)

(assert (=> bs!1291685 (= lambda!299606 lambda!299580)))

(declare-fun bs!1291686 () Bool)

(assert (= bs!1291686 (and d!1765318 d!1765154)))

(assert (=> bs!1291686 (= lambda!299606 lambda!299584)))

(declare-fun bs!1291687 () Bool)

(assert (= bs!1291687 (and d!1765318 b!5583357)))

(assert (=> bs!1291687 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299606 lambda!299491))))

(declare-fun bs!1291688 () Bool)

(assert (= bs!1291688 (and d!1765318 d!1765146)))

(assert (=> bs!1291688 (= lambda!299606 lambda!299582)))

(declare-fun bs!1291689 () Bool)

(assert (= bs!1291689 (and d!1765318 d!1765272)))

(assert (=> bs!1291689 (= lambda!299606 lambda!299601)))

(declare-fun bs!1291690 () Bool)

(assert (= bs!1291690 (and d!1765318 d!1765182)))

(assert (=> bs!1291690 (= lambda!299606 lambda!299586)))

(declare-fun bs!1291691 () Bool)

(assert (= bs!1291691 (and d!1765318 d!1764940)))

(assert (=> bs!1291691 (= (= (head!11909 (t!376277 s!2326)) (h!69328 s!2326)) (= lambda!299606 lambda!299537))))

(declare-fun bs!1291692 () Bool)

(assert (= bs!1291692 (and d!1765318 d!1765236)))

(assert (=> bs!1291692 (= lambda!299606 lambda!299593)))

(declare-fun bs!1291693 () Bool)

(assert (= bs!1291693 (and d!1765318 d!1765308)))

(assert (=> bs!1291693 (= (= (head!11909 (t!376277 s!2326)) (head!11909 s!2326)) (= lambda!299606 lambda!299605))))

(declare-fun bs!1291694 () Bool)

(assert (= bs!1291694 (and d!1765318 d!1765206)))

(assert (=> bs!1291694 (= lambda!299606 lambda!299590)))

(assert (=> d!1765318 true))

(assert (=> d!1765318 (= (derivationStepZipper!1667 lt!2254063 (head!11909 (t!376277 s!2326))) (flatMap!1181 lt!2254063 lambda!299606))))

(declare-fun bs!1291695 () Bool)

(assert (= bs!1291695 d!1765318))

(declare-fun m!6566020 () Bool)

(assert (=> bs!1291695 m!6566020))

(assert (=> b!5583535 d!1765318))

(assert (=> b!5583535 d!1765112))

(assert (=> b!5583535 d!1765114))

(assert (=> d!1764922 d!1765214))

(assert (=> d!1764922 d!1764866))

(declare-fun d!1765320 () Bool)

(assert (=> d!1765320 (= (isEmpty!34692 (unfocusZipperList!996 zl!343)) (is-Nil!62879 (unfocusZipperList!996 zl!343)))))

(assert (=> b!5583620 d!1765320))

(declare-fun d!1765322 () Bool)

(assert (=> d!1765322 (= (isEmpty!34697 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326)) (not (is-Some!15576 (findConcatSeparation!1991 (regOne!31648 r!7292) (regTwo!31648 r!7292) Nil!62880 s!2326 s!2326))))))

(assert (=> d!1764910 d!1765322))

(assert (=> d!1764874 d!1765214))

(declare-fun b!5584753 () Bool)

(declare-fun e!3445792 () Bool)

(declare-fun tp!1544880 () Bool)

(assert (=> b!5584753 (= e!3445792 tp!1544880)))

(declare-fun e!3445791 () Bool)

(declare-fun tp!1544881 () Bool)

(declare-fun b!5584752 () Bool)

(assert (=> b!5584752 (= e!3445791 (and (inv!82168 (h!69329 (t!376278 (t!376278 zl!343)))) e!3445792 tp!1544881))))

(assert (=> b!5583848 (= tp!1544778 e!3445791)))

(assert (= b!5584752 b!5584753))

(assert (= (and b!5583848 (is-Cons!62881 (t!376278 (t!376278 zl!343)))) b!5584752))

(declare-fun m!6566022 () Bool)

(assert (=> b!5584752 m!6566022))

(declare-fun e!3445793 () Bool)

(assert (=> b!5583833 (= tp!1544761 e!3445793)))

(declare-fun b!5584754 () Bool)

(assert (=> b!5584754 (= e!3445793 tp_is_empty!40389)))

(declare-fun b!5584757 () Bool)

(declare-fun tp!1544885 () Bool)

(declare-fun tp!1544886 () Bool)

(assert (=> b!5584757 (= e!3445793 (and tp!1544885 tp!1544886))))

(declare-fun b!5584756 () Bool)

(declare-fun tp!1544883 () Bool)

(assert (=> b!5584756 (= e!3445793 tp!1544883)))

(declare-fun b!5584755 () Bool)

(declare-fun tp!1544884 () Bool)

(declare-fun tp!1544882 () Bool)

(assert (=> b!5584755 (= e!3445793 (and tp!1544884 tp!1544882))))

(assert (= (and b!5583833 (is-ElementMatch!15568 (regOne!31649 (regOne!31648 r!7292)))) b!5584754))

(assert (= (and b!5583833 (is-Concat!24413 (regOne!31649 (regOne!31648 r!7292)))) b!5584755))

(assert (= (and b!5583833 (is-Star!15568 (regOne!31649 (regOne!31648 r!7292)))) b!5584756))

(assert (= (and b!5583833 (is-Union!15568 (regOne!31649 (regOne!31648 r!7292)))) b!5584757))

(declare-fun e!3445794 () Bool)

(assert (=> b!5583833 (= tp!1544762 e!3445794)))

(declare-fun b!5584758 () Bool)

(assert (=> b!5584758 (= e!3445794 tp_is_empty!40389)))

(declare-fun b!5584761 () Bool)

(declare-fun tp!1544890 () Bool)

(declare-fun tp!1544891 () Bool)

(assert (=> b!5584761 (= e!3445794 (and tp!1544890 tp!1544891))))

(declare-fun b!5584760 () Bool)

(declare-fun tp!1544888 () Bool)

(assert (=> b!5584760 (= e!3445794 tp!1544888)))

(declare-fun b!5584759 () Bool)

(declare-fun tp!1544889 () Bool)

(declare-fun tp!1544887 () Bool)

(assert (=> b!5584759 (= e!3445794 (and tp!1544889 tp!1544887))))

(assert (= (and b!5583833 (is-ElementMatch!15568 (regTwo!31649 (regOne!31648 r!7292)))) b!5584758))

(assert (= (and b!5583833 (is-Concat!24413 (regTwo!31649 (regOne!31648 r!7292)))) b!5584759))

(assert (= (and b!5583833 (is-Star!15568 (regTwo!31649 (regOne!31648 r!7292)))) b!5584760))

(assert (= (and b!5583833 (is-Union!15568 (regTwo!31649 (regOne!31648 r!7292)))) b!5584761))

(declare-fun e!3445795 () Bool)

(assert (=> b!5583841 (= tp!1544771 e!3445795)))

(declare-fun b!5584762 () Bool)

(assert (=> b!5584762 (= e!3445795 tp_is_empty!40389)))

(declare-fun b!5584765 () Bool)

(declare-fun tp!1544895 () Bool)

(declare-fun tp!1544896 () Bool)

(assert (=> b!5584765 (= e!3445795 (and tp!1544895 tp!1544896))))

(declare-fun b!5584764 () Bool)

(declare-fun tp!1544893 () Bool)

(assert (=> b!5584764 (= e!3445795 tp!1544893)))

(declare-fun b!5584763 () Bool)

(declare-fun tp!1544894 () Bool)

(declare-fun tp!1544892 () Bool)

(assert (=> b!5584763 (= e!3445795 (and tp!1544894 tp!1544892))))

(assert (= (and b!5583841 (is-ElementMatch!15568 (regOne!31649 (reg!15897 r!7292)))) b!5584762))

(assert (= (and b!5583841 (is-Concat!24413 (regOne!31649 (reg!15897 r!7292)))) b!5584763))

(assert (= (and b!5583841 (is-Star!15568 (regOne!31649 (reg!15897 r!7292)))) b!5584764))

(assert (= (and b!5583841 (is-Union!15568 (regOne!31649 (reg!15897 r!7292)))) b!5584765))

(declare-fun e!3445796 () Bool)

(assert (=> b!5583841 (= tp!1544772 e!3445796)))

(declare-fun b!5584766 () Bool)

(assert (=> b!5584766 (= e!3445796 tp_is_empty!40389)))

(declare-fun b!5584769 () Bool)

(declare-fun tp!1544900 () Bool)

(declare-fun tp!1544901 () Bool)

(assert (=> b!5584769 (= e!3445796 (and tp!1544900 tp!1544901))))

(declare-fun b!5584768 () Bool)

(declare-fun tp!1544898 () Bool)

(assert (=> b!5584768 (= e!3445796 tp!1544898)))

(declare-fun b!5584767 () Bool)

(declare-fun tp!1544899 () Bool)

(declare-fun tp!1544897 () Bool)

(assert (=> b!5584767 (= e!3445796 (and tp!1544899 tp!1544897))))

(assert (= (and b!5583841 (is-ElementMatch!15568 (regTwo!31649 (reg!15897 r!7292)))) b!5584766))

(assert (= (and b!5583841 (is-Concat!24413 (regTwo!31649 (reg!15897 r!7292)))) b!5584767))

(assert (= (and b!5583841 (is-Star!15568 (regTwo!31649 (reg!15897 r!7292)))) b!5584768))

(assert (= (and b!5583841 (is-Union!15568 (regTwo!31649 (reg!15897 r!7292)))) b!5584769))

(declare-fun e!3445797 () Bool)

(assert (=> b!5583832 (= tp!1544759 e!3445797)))

(declare-fun b!5584770 () Bool)

(assert (=> b!5584770 (= e!3445797 tp_is_empty!40389)))

(declare-fun b!5584773 () Bool)

(declare-fun tp!1544905 () Bool)

(declare-fun tp!1544906 () Bool)

(assert (=> b!5584773 (= e!3445797 (and tp!1544905 tp!1544906))))

(declare-fun b!5584772 () Bool)

(declare-fun tp!1544903 () Bool)

(assert (=> b!5584772 (= e!3445797 tp!1544903)))

(declare-fun b!5584771 () Bool)

(declare-fun tp!1544904 () Bool)

(declare-fun tp!1544902 () Bool)

(assert (=> b!5584771 (= e!3445797 (and tp!1544904 tp!1544902))))

(assert (= (and b!5583832 (is-ElementMatch!15568 (reg!15897 (regOne!31648 r!7292)))) b!5584770))

(assert (= (and b!5583832 (is-Concat!24413 (reg!15897 (regOne!31648 r!7292)))) b!5584771))

(assert (= (and b!5583832 (is-Star!15568 (reg!15897 (regOne!31648 r!7292)))) b!5584772))

(assert (= (and b!5583832 (is-Union!15568 (reg!15897 (regOne!31648 r!7292)))) b!5584773))

(declare-fun e!3445798 () Bool)

(assert (=> b!5583831 (= tp!1544760 e!3445798)))

(declare-fun b!5584774 () Bool)

(assert (=> b!5584774 (= e!3445798 tp_is_empty!40389)))

(declare-fun b!5584777 () Bool)

(declare-fun tp!1544910 () Bool)

(declare-fun tp!1544911 () Bool)

(assert (=> b!5584777 (= e!3445798 (and tp!1544910 tp!1544911))))

(declare-fun b!5584776 () Bool)

(declare-fun tp!1544908 () Bool)

(assert (=> b!5584776 (= e!3445798 tp!1544908)))

(declare-fun b!5584775 () Bool)

(declare-fun tp!1544909 () Bool)

(declare-fun tp!1544907 () Bool)

(assert (=> b!5584775 (= e!3445798 (and tp!1544909 tp!1544907))))

(assert (= (and b!5583831 (is-ElementMatch!15568 (regOne!31648 (regOne!31648 r!7292)))) b!5584774))

(assert (= (and b!5583831 (is-Concat!24413 (regOne!31648 (regOne!31648 r!7292)))) b!5584775))

(assert (= (and b!5583831 (is-Star!15568 (regOne!31648 (regOne!31648 r!7292)))) b!5584776))

(assert (= (and b!5583831 (is-Union!15568 (regOne!31648 (regOne!31648 r!7292)))) b!5584777))

(declare-fun e!3445799 () Bool)

(assert (=> b!5583831 (= tp!1544758 e!3445799)))

(declare-fun b!5584778 () Bool)

(assert (=> b!5584778 (= e!3445799 tp_is_empty!40389)))

(declare-fun b!5584781 () Bool)

(declare-fun tp!1544915 () Bool)

(declare-fun tp!1544916 () Bool)

(assert (=> b!5584781 (= e!3445799 (and tp!1544915 tp!1544916))))

(declare-fun b!5584780 () Bool)

(declare-fun tp!1544913 () Bool)

(assert (=> b!5584780 (= e!3445799 tp!1544913)))

(declare-fun b!5584779 () Bool)

(declare-fun tp!1544914 () Bool)

(declare-fun tp!1544912 () Bool)

(assert (=> b!5584779 (= e!3445799 (and tp!1544914 tp!1544912))))

(assert (= (and b!5583831 (is-ElementMatch!15568 (regTwo!31648 (regOne!31648 r!7292)))) b!5584778))

(assert (= (and b!5583831 (is-Concat!24413 (regTwo!31648 (regOne!31648 r!7292)))) b!5584779))

(assert (= (and b!5583831 (is-Star!15568 (regTwo!31648 (regOne!31648 r!7292)))) b!5584780))

(assert (= (and b!5583831 (is-Union!15568 (regTwo!31648 (regOne!31648 r!7292)))) b!5584781))

(declare-fun e!3445800 () Bool)

(assert (=> b!5583862 (= tp!1544793 e!3445800)))

(declare-fun b!5584782 () Bool)

(assert (=> b!5584782 (= e!3445800 tp_is_empty!40389)))

(declare-fun b!5584785 () Bool)

(declare-fun tp!1544920 () Bool)

(declare-fun tp!1544921 () Bool)

(assert (=> b!5584785 (= e!3445800 (and tp!1544920 tp!1544921))))

(declare-fun b!5584784 () Bool)

(declare-fun tp!1544918 () Bool)

(assert (=> b!5584784 (= e!3445800 tp!1544918)))

(declare-fun b!5584783 () Bool)

(declare-fun tp!1544919 () Bool)

(declare-fun tp!1544917 () Bool)

(assert (=> b!5584783 (= e!3445800 (and tp!1544919 tp!1544917))))

(assert (= (and b!5583862 (is-ElementMatch!15568 (regOne!31649 (regTwo!31649 r!7292)))) b!5584782))

(assert (= (and b!5583862 (is-Concat!24413 (regOne!31649 (regTwo!31649 r!7292)))) b!5584783))

(assert (= (and b!5583862 (is-Star!15568 (regOne!31649 (regTwo!31649 r!7292)))) b!5584784))

(assert (= (and b!5583862 (is-Union!15568 (regOne!31649 (regTwo!31649 r!7292)))) b!5584785))

(declare-fun e!3445801 () Bool)

(assert (=> b!5583862 (= tp!1544794 e!3445801)))

(declare-fun b!5584786 () Bool)

(assert (=> b!5584786 (= e!3445801 tp_is_empty!40389)))

(declare-fun b!5584789 () Bool)

(declare-fun tp!1544925 () Bool)

(declare-fun tp!1544926 () Bool)

(assert (=> b!5584789 (= e!3445801 (and tp!1544925 tp!1544926))))

(declare-fun b!5584788 () Bool)

(declare-fun tp!1544923 () Bool)

(assert (=> b!5584788 (= e!3445801 tp!1544923)))

(declare-fun b!5584787 () Bool)

(declare-fun tp!1544924 () Bool)

(declare-fun tp!1544922 () Bool)

(assert (=> b!5584787 (= e!3445801 (and tp!1544924 tp!1544922))))

(assert (= (and b!5583862 (is-ElementMatch!15568 (regTwo!31649 (regTwo!31649 r!7292)))) b!5584786))

(assert (= (and b!5583862 (is-Concat!24413 (regTwo!31649 (regTwo!31649 r!7292)))) b!5584787))

(assert (= (and b!5583862 (is-Star!15568 (regTwo!31649 (regTwo!31649 r!7292)))) b!5584788))

(assert (= (and b!5583862 (is-Union!15568 (regTwo!31649 (regTwo!31649 r!7292)))) b!5584789))

(declare-fun e!3445802 () Bool)

(assert (=> b!5583840 (= tp!1544769 e!3445802)))

(declare-fun b!5584790 () Bool)

(assert (=> b!5584790 (= e!3445802 tp_is_empty!40389)))

(declare-fun b!5584793 () Bool)

(declare-fun tp!1544930 () Bool)

(declare-fun tp!1544931 () Bool)

(assert (=> b!5584793 (= e!3445802 (and tp!1544930 tp!1544931))))

(declare-fun b!5584792 () Bool)

(declare-fun tp!1544928 () Bool)

(assert (=> b!5584792 (= e!3445802 tp!1544928)))

(declare-fun b!5584791 () Bool)

(declare-fun tp!1544929 () Bool)

(declare-fun tp!1544927 () Bool)

(assert (=> b!5584791 (= e!3445802 (and tp!1544929 tp!1544927))))

(assert (= (and b!5583840 (is-ElementMatch!15568 (reg!15897 (reg!15897 r!7292)))) b!5584790))

(assert (= (and b!5583840 (is-Concat!24413 (reg!15897 (reg!15897 r!7292)))) b!5584791))

(assert (= (and b!5583840 (is-Star!15568 (reg!15897 (reg!15897 r!7292)))) b!5584792))

(assert (= (and b!5583840 (is-Union!15568 (reg!15897 (reg!15897 r!7292)))) b!5584793))

(declare-fun e!3445803 () Bool)

(assert (=> b!5583839 (= tp!1544770 e!3445803)))

(declare-fun b!5584794 () Bool)

(assert (=> b!5584794 (= e!3445803 tp_is_empty!40389)))

(declare-fun b!5584797 () Bool)

(declare-fun tp!1544935 () Bool)

(declare-fun tp!1544936 () Bool)

(assert (=> b!5584797 (= e!3445803 (and tp!1544935 tp!1544936))))

(declare-fun b!5584796 () Bool)

(declare-fun tp!1544933 () Bool)

(assert (=> b!5584796 (= e!3445803 tp!1544933)))

(declare-fun b!5584795 () Bool)

(declare-fun tp!1544934 () Bool)

(declare-fun tp!1544932 () Bool)

(assert (=> b!5584795 (= e!3445803 (and tp!1544934 tp!1544932))))

(assert (= (and b!5583839 (is-ElementMatch!15568 (regOne!31648 (reg!15897 r!7292)))) b!5584794))

(assert (= (and b!5583839 (is-Concat!24413 (regOne!31648 (reg!15897 r!7292)))) b!5584795))

(assert (= (and b!5583839 (is-Star!15568 (regOne!31648 (reg!15897 r!7292)))) b!5584796))

(assert (= (and b!5583839 (is-Union!15568 (regOne!31648 (reg!15897 r!7292)))) b!5584797))

(declare-fun e!3445804 () Bool)

(assert (=> b!5583839 (= tp!1544768 e!3445804)))

(declare-fun b!5584798 () Bool)

(assert (=> b!5584798 (= e!3445804 tp_is_empty!40389)))

(declare-fun b!5584801 () Bool)

(declare-fun tp!1544940 () Bool)

(declare-fun tp!1544941 () Bool)

(assert (=> b!5584801 (= e!3445804 (and tp!1544940 tp!1544941))))

(declare-fun b!5584800 () Bool)

(declare-fun tp!1544938 () Bool)

(assert (=> b!5584800 (= e!3445804 tp!1544938)))

(declare-fun b!5584799 () Bool)

(declare-fun tp!1544939 () Bool)

(declare-fun tp!1544937 () Bool)

(assert (=> b!5584799 (= e!3445804 (and tp!1544939 tp!1544937))))

(assert (= (and b!5583839 (is-ElementMatch!15568 (regTwo!31648 (reg!15897 r!7292)))) b!5584798))

(assert (= (and b!5583839 (is-Concat!24413 (regTwo!31648 (reg!15897 r!7292)))) b!5584799))

(assert (= (and b!5583839 (is-Star!15568 (regTwo!31648 (reg!15897 r!7292)))) b!5584800))

(assert (= (and b!5583839 (is-Union!15568 (regTwo!31648 (reg!15897 r!7292)))) b!5584801))

(declare-fun e!3445805 () Bool)

(assert (=> b!5583861 (= tp!1544791 e!3445805)))

(declare-fun b!5584802 () Bool)

(assert (=> b!5584802 (= e!3445805 tp_is_empty!40389)))

(declare-fun b!5584805 () Bool)

(declare-fun tp!1544945 () Bool)

(declare-fun tp!1544946 () Bool)

(assert (=> b!5584805 (= e!3445805 (and tp!1544945 tp!1544946))))

(declare-fun b!5584804 () Bool)

(declare-fun tp!1544943 () Bool)

(assert (=> b!5584804 (= e!3445805 tp!1544943)))

(declare-fun b!5584803 () Bool)

(declare-fun tp!1544944 () Bool)

(declare-fun tp!1544942 () Bool)

(assert (=> b!5584803 (= e!3445805 (and tp!1544944 tp!1544942))))

(assert (= (and b!5583861 (is-ElementMatch!15568 (reg!15897 (regTwo!31649 r!7292)))) b!5584802))

(assert (= (and b!5583861 (is-Concat!24413 (reg!15897 (regTwo!31649 r!7292)))) b!5584803))

(assert (= (and b!5583861 (is-Star!15568 (reg!15897 (regTwo!31649 r!7292)))) b!5584804))

(assert (= (and b!5583861 (is-Union!15568 (reg!15897 (regTwo!31649 r!7292)))) b!5584805))

(declare-fun b!5584806 () Bool)

(declare-fun e!3445806 () Bool)

(declare-fun tp!1544947 () Bool)

(declare-fun tp!1544948 () Bool)

(assert (=> b!5584806 (= e!3445806 (and tp!1544947 tp!1544948))))

(assert (=> b!5583854 (= tp!1544783 e!3445806)))

(assert (= (and b!5583854 (is-Cons!62879 (exprs!5452 setElem!37180))) b!5584806))

(declare-fun b!5584807 () Bool)

(declare-fun e!3445807 () Bool)

(declare-fun tp!1544949 () Bool)

(declare-fun tp!1544950 () Bool)

(assert (=> b!5584807 (= e!3445807 (and tp!1544949 tp!1544950))))

(assert (=> b!5583849 (= tp!1544777 e!3445807)))

(assert (= (and b!5583849 (is-Cons!62879 (exprs!5452 (h!69329 (t!376278 zl!343))))) b!5584807))

(declare-fun e!3445808 () Bool)

(assert (=> b!5583837 (= tp!1544766 e!3445808)))

(declare-fun b!5584808 () Bool)

(assert (=> b!5584808 (= e!3445808 tp_is_empty!40389)))

(declare-fun b!5584811 () Bool)

(declare-fun tp!1544954 () Bool)

(declare-fun tp!1544955 () Bool)

(assert (=> b!5584811 (= e!3445808 (and tp!1544954 tp!1544955))))

(declare-fun b!5584810 () Bool)

(declare-fun tp!1544952 () Bool)

(assert (=> b!5584810 (= e!3445808 tp!1544952)))

(declare-fun b!5584809 () Bool)

(declare-fun tp!1544953 () Bool)

(declare-fun tp!1544951 () Bool)

(assert (=> b!5584809 (= e!3445808 (and tp!1544953 tp!1544951))))

(assert (= (and b!5583837 (is-ElementMatch!15568 (regOne!31649 (regTwo!31648 r!7292)))) b!5584808))

(assert (= (and b!5583837 (is-Concat!24413 (regOne!31649 (regTwo!31648 r!7292)))) b!5584809))

(assert (= (and b!5583837 (is-Star!15568 (regOne!31649 (regTwo!31648 r!7292)))) b!5584810))

(assert (= (and b!5583837 (is-Union!15568 (regOne!31649 (regTwo!31648 r!7292)))) b!5584811))

(declare-fun e!3445809 () Bool)

(assert (=> b!5583837 (= tp!1544767 e!3445809)))

(declare-fun b!5584812 () Bool)

(assert (=> b!5584812 (= e!3445809 tp_is_empty!40389)))

(declare-fun b!5584815 () Bool)

(declare-fun tp!1544959 () Bool)

(declare-fun tp!1544960 () Bool)

(assert (=> b!5584815 (= e!3445809 (and tp!1544959 tp!1544960))))

(declare-fun b!5584814 () Bool)

(declare-fun tp!1544957 () Bool)

(assert (=> b!5584814 (= e!3445809 tp!1544957)))

(declare-fun b!5584813 () Bool)

(declare-fun tp!1544958 () Bool)

(declare-fun tp!1544956 () Bool)

(assert (=> b!5584813 (= e!3445809 (and tp!1544958 tp!1544956))))

(assert (= (and b!5583837 (is-ElementMatch!15568 (regTwo!31649 (regTwo!31648 r!7292)))) b!5584812))

(assert (= (and b!5583837 (is-Concat!24413 (regTwo!31649 (regTwo!31648 r!7292)))) b!5584813))

(assert (= (and b!5583837 (is-Star!15568 (regTwo!31649 (regTwo!31648 r!7292)))) b!5584814))

(assert (= (and b!5583837 (is-Union!15568 (regTwo!31649 (regTwo!31648 r!7292)))) b!5584815))

(declare-fun e!3445810 () Bool)

(assert (=> b!5583836 (= tp!1544764 e!3445810)))

(declare-fun b!5584816 () Bool)

(assert (=> b!5584816 (= e!3445810 tp_is_empty!40389)))

(declare-fun b!5584819 () Bool)

(declare-fun tp!1544964 () Bool)

(declare-fun tp!1544965 () Bool)

(assert (=> b!5584819 (= e!3445810 (and tp!1544964 tp!1544965))))

(declare-fun b!5584818 () Bool)

(declare-fun tp!1544962 () Bool)

(assert (=> b!5584818 (= e!3445810 tp!1544962)))

(declare-fun b!5584817 () Bool)

(declare-fun tp!1544963 () Bool)

(declare-fun tp!1544961 () Bool)

(assert (=> b!5584817 (= e!3445810 (and tp!1544963 tp!1544961))))

(assert (= (and b!5583836 (is-ElementMatch!15568 (reg!15897 (regTwo!31648 r!7292)))) b!5584816))

(assert (= (and b!5583836 (is-Concat!24413 (reg!15897 (regTwo!31648 r!7292)))) b!5584817))

(assert (= (and b!5583836 (is-Star!15568 (reg!15897 (regTwo!31648 r!7292)))) b!5584818))

(assert (= (and b!5583836 (is-Union!15568 (reg!15897 (regTwo!31648 r!7292)))) b!5584819))

(declare-fun e!3445811 () Bool)

(assert (=> b!5583835 (= tp!1544765 e!3445811)))

(declare-fun b!5584820 () Bool)

(assert (=> b!5584820 (= e!3445811 tp_is_empty!40389)))

(declare-fun b!5584823 () Bool)

(declare-fun tp!1544969 () Bool)

(declare-fun tp!1544970 () Bool)

(assert (=> b!5584823 (= e!3445811 (and tp!1544969 tp!1544970))))

(declare-fun b!5584822 () Bool)

(declare-fun tp!1544967 () Bool)

(assert (=> b!5584822 (= e!3445811 tp!1544967)))

(declare-fun b!5584821 () Bool)

(declare-fun tp!1544968 () Bool)

(declare-fun tp!1544966 () Bool)

(assert (=> b!5584821 (= e!3445811 (and tp!1544968 tp!1544966))))

(assert (= (and b!5583835 (is-ElementMatch!15568 (regOne!31648 (regTwo!31648 r!7292)))) b!5584820))

(assert (= (and b!5583835 (is-Concat!24413 (regOne!31648 (regTwo!31648 r!7292)))) b!5584821))

(assert (= (and b!5583835 (is-Star!15568 (regOne!31648 (regTwo!31648 r!7292)))) b!5584822))

(assert (= (and b!5583835 (is-Union!15568 (regOne!31648 (regTwo!31648 r!7292)))) b!5584823))

(declare-fun e!3445812 () Bool)

(assert (=> b!5583835 (= tp!1544763 e!3445812)))

(declare-fun b!5584824 () Bool)

(assert (=> b!5584824 (= e!3445812 tp_is_empty!40389)))

(declare-fun b!5584827 () Bool)

(declare-fun tp!1544974 () Bool)

(declare-fun tp!1544975 () Bool)

(assert (=> b!5584827 (= e!3445812 (and tp!1544974 tp!1544975))))

(declare-fun b!5584826 () Bool)

(declare-fun tp!1544972 () Bool)

(assert (=> b!5584826 (= e!3445812 tp!1544972)))

(declare-fun b!5584825 () Bool)

(declare-fun tp!1544973 () Bool)

(declare-fun tp!1544971 () Bool)

(assert (=> b!5584825 (= e!3445812 (and tp!1544973 tp!1544971))))

(assert (= (and b!5583835 (is-ElementMatch!15568 (regTwo!31648 (regTwo!31648 r!7292)))) b!5584824))

(assert (= (and b!5583835 (is-Concat!24413 (regTwo!31648 (regTwo!31648 r!7292)))) b!5584825))

(assert (= (and b!5583835 (is-Star!15568 (regTwo!31648 (regTwo!31648 r!7292)))) b!5584826))

(assert (= (and b!5583835 (is-Union!15568 (regTwo!31648 (regTwo!31648 r!7292)))) b!5584827))

(declare-fun e!3445813 () Bool)

(assert (=> b!5583872 (= tp!1544802 e!3445813)))

(declare-fun b!5584828 () Bool)

(assert (=> b!5584828 (= e!3445813 tp_is_empty!40389)))

(declare-fun b!5584831 () Bool)

(declare-fun tp!1544979 () Bool)

(declare-fun tp!1544980 () Bool)

(assert (=> b!5584831 (= e!3445813 (and tp!1544979 tp!1544980))))

(declare-fun b!5584830 () Bool)

(declare-fun tp!1544977 () Bool)

(assert (=> b!5584830 (= e!3445813 tp!1544977)))

(declare-fun b!5584829 () Bool)

(declare-fun tp!1544978 () Bool)

(declare-fun tp!1544976 () Bool)

(assert (=> b!5584829 (= e!3445813 (and tp!1544978 tp!1544976))))

(assert (= (and b!5583872 (is-ElementMatch!15568 (h!69327 (exprs!5452 (h!69329 zl!343))))) b!5584828))

(assert (= (and b!5583872 (is-Concat!24413 (h!69327 (exprs!5452 (h!69329 zl!343))))) b!5584829))

(assert (= (and b!5583872 (is-Star!15568 (h!69327 (exprs!5452 (h!69329 zl!343))))) b!5584830))

(assert (= (and b!5583872 (is-Union!15568 (h!69327 (exprs!5452 (h!69329 zl!343))))) b!5584831))

(declare-fun b!5584832 () Bool)

(declare-fun e!3445814 () Bool)

(declare-fun tp!1544981 () Bool)

(declare-fun tp!1544982 () Bool)

(assert (=> b!5584832 (= e!3445814 (and tp!1544981 tp!1544982))))

(assert (=> b!5583872 (= tp!1544803 e!3445814)))

(assert (= (and b!5583872 (is-Cons!62879 (t!376276 (exprs!5452 (h!69329 zl!343))))) b!5584832))

(declare-fun e!3445815 () Bool)

(assert (=> b!5583858 (= tp!1544788 e!3445815)))

(declare-fun b!5584833 () Bool)

(assert (=> b!5584833 (= e!3445815 tp_is_empty!40389)))

(declare-fun b!5584836 () Bool)

(declare-fun tp!1544986 () Bool)

(declare-fun tp!1544987 () Bool)

(assert (=> b!5584836 (= e!3445815 (and tp!1544986 tp!1544987))))

(declare-fun b!5584835 () Bool)

(declare-fun tp!1544984 () Bool)

(assert (=> b!5584835 (= e!3445815 tp!1544984)))

(declare-fun b!5584834 () Bool)

(declare-fun tp!1544985 () Bool)

(declare-fun tp!1544983 () Bool)

(assert (=> b!5584834 (= e!3445815 (and tp!1544985 tp!1544983))))

(assert (= (and b!5583858 (is-ElementMatch!15568 (regOne!31649 (regOne!31649 r!7292)))) b!5584833))

(assert (= (and b!5583858 (is-Concat!24413 (regOne!31649 (regOne!31649 r!7292)))) b!5584834))

(assert (= (and b!5583858 (is-Star!15568 (regOne!31649 (regOne!31649 r!7292)))) b!5584835))

(assert (= (and b!5583858 (is-Union!15568 (regOne!31649 (regOne!31649 r!7292)))) b!5584836))

(declare-fun e!3445816 () Bool)

(assert (=> b!5583858 (= tp!1544789 e!3445816)))

(declare-fun b!5584837 () Bool)

(assert (=> b!5584837 (= e!3445816 tp_is_empty!40389)))

(declare-fun b!5584840 () Bool)

(declare-fun tp!1544991 () Bool)

(declare-fun tp!1544992 () Bool)

(assert (=> b!5584840 (= e!3445816 (and tp!1544991 tp!1544992))))

(declare-fun b!5584839 () Bool)

(declare-fun tp!1544989 () Bool)

(assert (=> b!5584839 (= e!3445816 tp!1544989)))

(declare-fun b!5584838 () Bool)

(declare-fun tp!1544990 () Bool)

(declare-fun tp!1544988 () Bool)

(assert (=> b!5584838 (= e!3445816 (and tp!1544990 tp!1544988))))

(assert (= (and b!5583858 (is-ElementMatch!15568 (regTwo!31649 (regOne!31649 r!7292)))) b!5584837))

(assert (= (and b!5583858 (is-Concat!24413 (regTwo!31649 (regOne!31649 r!7292)))) b!5584838))

(assert (= (and b!5583858 (is-Star!15568 (regTwo!31649 (regOne!31649 r!7292)))) b!5584839))

(assert (= (and b!5583858 (is-Union!15568 (regTwo!31649 (regOne!31649 r!7292)))) b!5584840))

(declare-fun e!3445817 () Bool)

(assert (=> b!5583856 (= tp!1544787 e!3445817)))

(declare-fun b!5584841 () Bool)

(assert (=> b!5584841 (= e!3445817 tp_is_empty!40389)))

(declare-fun b!5584844 () Bool)

(declare-fun tp!1544996 () Bool)

(declare-fun tp!1544997 () Bool)

(assert (=> b!5584844 (= e!3445817 (and tp!1544996 tp!1544997))))

(declare-fun b!5584843 () Bool)

(declare-fun tp!1544994 () Bool)

(assert (=> b!5584843 (= e!3445817 tp!1544994)))

(declare-fun b!5584842 () Bool)

(declare-fun tp!1544995 () Bool)

(declare-fun tp!1544993 () Bool)

(assert (=> b!5584842 (= e!3445817 (and tp!1544995 tp!1544993))))

(assert (= (and b!5583856 (is-ElementMatch!15568 (regOne!31648 (regOne!31649 r!7292)))) b!5584841))

(assert (= (and b!5583856 (is-Concat!24413 (regOne!31648 (regOne!31649 r!7292)))) b!5584842))

(assert (= (and b!5583856 (is-Star!15568 (regOne!31648 (regOne!31649 r!7292)))) b!5584843))

(assert (= (and b!5583856 (is-Union!15568 (regOne!31648 (regOne!31649 r!7292)))) b!5584844))

(declare-fun e!3445818 () Bool)

(assert (=> b!5583856 (= tp!1544785 e!3445818)))

(declare-fun b!5584845 () Bool)

(assert (=> b!5584845 (= e!3445818 tp_is_empty!40389)))

(declare-fun b!5584848 () Bool)

(declare-fun tp!1545001 () Bool)

(declare-fun tp!1545002 () Bool)

(assert (=> b!5584848 (= e!3445818 (and tp!1545001 tp!1545002))))

(declare-fun b!5584847 () Bool)

(declare-fun tp!1544999 () Bool)

(assert (=> b!5584847 (= e!3445818 tp!1544999)))

(declare-fun b!5584846 () Bool)

(declare-fun tp!1545000 () Bool)

(declare-fun tp!1544998 () Bool)

(assert (=> b!5584846 (= e!3445818 (and tp!1545000 tp!1544998))))

(assert (= (and b!5583856 (is-ElementMatch!15568 (regTwo!31648 (regOne!31649 r!7292)))) b!5584845))

(assert (= (and b!5583856 (is-Concat!24413 (regTwo!31648 (regOne!31649 r!7292)))) b!5584846))

(assert (= (and b!5583856 (is-Star!15568 (regTwo!31648 (regOne!31649 r!7292)))) b!5584847))

(assert (= (and b!5583856 (is-Union!15568 (regTwo!31648 (regOne!31649 r!7292)))) b!5584848))

(declare-fun e!3445819 () Bool)

(assert (=> b!5583857 (= tp!1544786 e!3445819)))

(declare-fun b!5584849 () Bool)

(assert (=> b!5584849 (= e!3445819 tp_is_empty!40389)))

(declare-fun b!5584852 () Bool)

(declare-fun tp!1545006 () Bool)

(declare-fun tp!1545007 () Bool)

(assert (=> b!5584852 (= e!3445819 (and tp!1545006 tp!1545007))))

(declare-fun b!5584851 () Bool)

(declare-fun tp!1545004 () Bool)

(assert (=> b!5584851 (= e!3445819 tp!1545004)))

(declare-fun b!5584850 () Bool)

(declare-fun tp!1545005 () Bool)

(declare-fun tp!1545003 () Bool)

(assert (=> b!5584850 (= e!3445819 (and tp!1545005 tp!1545003))))

(assert (= (and b!5583857 (is-ElementMatch!15568 (reg!15897 (regOne!31649 r!7292)))) b!5584849))

(assert (= (and b!5583857 (is-Concat!24413 (reg!15897 (regOne!31649 r!7292)))) b!5584850))

(assert (= (and b!5583857 (is-Star!15568 (reg!15897 (regOne!31649 r!7292)))) b!5584851))

(assert (= (and b!5583857 (is-Union!15568 (reg!15897 (regOne!31649 r!7292)))) b!5584852))

(declare-fun condSetEmpty!37189 () Bool)

(assert (=> setNonEmpty!37180 (= condSetEmpty!37189 (= setRest!37180 (as set.empty (Set Context!9904))))))

(declare-fun setRes!37189 () Bool)

(assert (=> setNonEmpty!37180 (= tp!1544784 setRes!37189)))

(declare-fun setIsEmpty!37189 () Bool)

(assert (=> setIsEmpty!37189 setRes!37189))

(declare-fun tp!1545009 () Bool)

(declare-fun e!3445820 () Bool)

(declare-fun setElem!37189 () Context!9904)

(declare-fun setNonEmpty!37189 () Bool)

(assert (=> setNonEmpty!37189 (= setRes!37189 (and tp!1545009 (inv!82168 setElem!37189) e!3445820))))

(declare-fun setRest!37189 () (Set Context!9904))

(assert (=> setNonEmpty!37189 (= setRest!37180 (set.union (set.insert setElem!37189 (as set.empty (Set Context!9904))) setRest!37189))))

(declare-fun b!5584853 () Bool)

(declare-fun tp!1545008 () Bool)

(assert (=> b!5584853 (= e!3445820 tp!1545008)))

(assert (= (and setNonEmpty!37180 condSetEmpty!37189) setIsEmpty!37189))

(assert (= (and setNonEmpty!37180 (not condSetEmpty!37189)) setNonEmpty!37189))

(assert (= setNonEmpty!37189 b!5584853))

(declare-fun m!6566024 () Bool)

(assert (=> setNonEmpty!37189 m!6566024))

(declare-fun e!3445821 () Bool)

(assert (=> b!5583860 (= tp!1544792 e!3445821)))

(declare-fun b!5584854 () Bool)

(assert (=> b!5584854 (= e!3445821 tp_is_empty!40389)))

(declare-fun b!5584857 () Bool)

(declare-fun tp!1545013 () Bool)

(declare-fun tp!1545014 () Bool)

(assert (=> b!5584857 (= e!3445821 (and tp!1545013 tp!1545014))))

(declare-fun b!5584856 () Bool)

(declare-fun tp!1545011 () Bool)

(assert (=> b!5584856 (= e!3445821 tp!1545011)))

(declare-fun b!5584855 () Bool)

(declare-fun tp!1545012 () Bool)

(declare-fun tp!1545010 () Bool)

(assert (=> b!5584855 (= e!3445821 (and tp!1545012 tp!1545010))))

(assert (= (and b!5583860 (is-ElementMatch!15568 (regOne!31648 (regTwo!31649 r!7292)))) b!5584854))

(assert (= (and b!5583860 (is-Concat!24413 (regOne!31648 (regTwo!31649 r!7292)))) b!5584855))

(assert (= (and b!5583860 (is-Star!15568 (regOne!31648 (regTwo!31649 r!7292)))) b!5584856))

(assert (= (and b!5583860 (is-Union!15568 (regOne!31648 (regTwo!31649 r!7292)))) b!5584857))

(declare-fun e!3445822 () Bool)

(assert (=> b!5583860 (= tp!1544790 e!3445822)))

(declare-fun b!5584858 () Bool)

(assert (=> b!5584858 (= e!3445822 tp_is_empty!40389)))

(declare-fun b!5584861 () Bool)

(declare-fun tp!1545018 () Bool)

(declare-fun tp!1545019 () Bool)

(assert (=> b!5584861 (= e!3445822 (and tp!1545018 tp!1545019))))

(declare-fun b!5584860 () Bool)

(declare-fun tp!1545016 () Bool)

(assert (=> b!5584860 (= e!3445822 tp!1545016)))

(declare-fun b!5584859 () Bool)

(declare-fun tp!1545017 () Bool)

(declare-fun tp!1545015 () Bool)

(assert (=> b!5584859 (= e!3445822 (and tp!1545017 tp!1545015))))

(assert (= (and b!5583860 (is-ElementMatch!15568 (regTwo!31648 (regTwo!31649 r!7292)))) b!5584858))

(assert (= (and b!5583860 (is-Concat!24413 (regTwo!31648 (regTwo!31649 r!7292)))) b!5584859))

(assert (= (and b!5583860 (is-Star!15568 (regTwo!31648 (regTwo!31649 r!7292)))) b!5584860))

(assert (= (and b!5583860 (is-Union!15568 (regTwo!31648 (regTwo!31649 r!7292)))) b!5584861))

(declare-fun b!5584862 () Bool)

(declare-fun e!3445823 () Bool)

(declare-fun tp!1545020 () Bool)

(assert (=> b!5584862 (= e!3445823 (and tp_is_empty!40389 tp!1545020))))

(assert (=> b!5583867 (= tp!1544797 e!3445823)))

(assert (= (and b!5583867 (is-Cons!62880 (t!376277 (t!376277 s!2326)))) b!5584862))

(declare-fun e!3445824 () Bool)

(assert (=> b!5583873 (= tp!1544804 e!3445824)))

(declare-fun b!5584863 () Bool)

(assert (=> b!5584863 (= e!3445824 tp_is_empty!40389)))

(declare-fun b!5584866 () Bool)

(declare-fun tp!1545024 () Bool)

(declare-fun tp!1545025 () Bool)

(assert (=> b!5584866 (= e!3445824 (and tp!1545024 tp!1545025))))

(declare-fun b!5584865 () Bool)

(declare-fun tp!1545022 () Bool)

(assert (=> b!5584865 (= e!3445824 tp!1545022)))

(declare-fun b!5584864 () Bool)

(declare-fun tp!1545023 () Bool)

(declare-fun tp!1545021 () Bool)

(assert (=> b!5584864 (= e!3445824 (and tp!1545023 tp!1545021))))

(assert (= (and b!5583873 (is-ElementMatch!15568 (h!69327 (exprs!5452 setElem!37174)))) b!5584863))

(assert (= (and b!5583873 (is-Concat!24413 (h!69327 (exprs!5452 setElem!37174)))) b!5584864))

(assert (= (and b!5583873 (is-Star!15568 (h!69327 (exprs!5452 setElem!37174)))) b!5584865))

(assert (= (and b!5583873 (is-Union!15568 (h!69327 (exprs!5452 setElem!37174)))) b!5584866))

(declare-fun b!5584867 () Bool)

(declare-fun e!3445825 () Bool)

(declare-fun tp!1545026 () Bool)

(declare-fun tp!1545027 () Bool)

(assert (=> b!5584867 (= e!3445825 (and tp!1545026 tp!1545027))))

(assert (=> b!5583873 (= tp!1544805 e!3445825)))

(assert (= (and b!5583873 (is-Cons!62879 (t!376276 (exprs!5452 setElem!37174)))) b!5584867))

(declare-fun b_lambda!211635 () Bool)

(assert (= b_lambda!211623 (or b!5583357 b_lambda!211635)))

(assert (=> d!1765140 d!1764948))

(declare-fun b_lambda!211637 () Bool)

(assert (= b_lambda!211621 (or b!5583357 b_lambda!211637)))

(assert (=> d!1765126 d!1764952))

(declare-fun b_lambda!211639 () Bool)

(assert (= b_lambda!211625 (or d!1764872 b_lambda!211639)))

(declare-fun bs!1291696 () Bool)

(declare-fun d!1765324 () Bool)

(assert (= bs!1291696 (and d!1765324 d!1764872)))

(assert (=> bs!1291696 (= (dynLambda!24593 lambda!299518 (h!69327 lt!2254170)) (validRegex!7304 (h!69327 lt!2254170)))))

(declare-fun m!6566026 () Bool)

(assert (=> bs!1291696 m!6566026))

(assert (=> b!5584466 d!1765324))

(declare-fun b_lambda!211641 () Bool)

(assert (= b_lambda!211631 (or d!1764852 b_lambda!211641)))

(declare-fun bs!1291697 () Bool)

(declare-fun d!1765326 () Bool)

(assert (= bs!1291697 (and d!1765326 d!1764852)))

(assert (=> bs!1291697 (= (dynLambda!24593 lambda!299509 (h!69327 (exprs!5452 (h!69329 zl!343)))) (validRegex!7304 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(declare-fun m!6566028 () Bool)

(assert (=> bs!1291697 m!6566028))

(assert (=> b!5584600 d!1765326))

(declare-fun b_lambda!211643 () Bool)

(assert (= b_lambda!211633 (or d!1764868 b_lambda!211643)))

(declare-fun bs!1291698 () Bool)

(declare-fun d!1765328 () Bool)

(assert (= bs!1291698 (and d!1765328 d!1764868)))

(assert (=> bs!1291698 (= (dynLambda!24593 lambda!299512 (h!69327 (exprs!5452 (h!69329 zl!343)))) (validRegex!7304 (h!69327 (exprs!5452 (h!69329 zl!343)))))))

(assert (=> bs!1291698 m!6566028))

(assert (=> b!5584748 d!1765328))

(declare-fun b_lambda!211645 () Bool)

(assert (= b_lambda!211629 (or d!1764902 b_lambda!211645)))

(declare-fun bs!1291699 () Bool)

(declare-fun d!1765330 () Bool)

(assert (= bs!1291699 (and d!1765330 d!1764902)))

(assert (=> bs!1291699 (= (dynLambda!24593 lambda!299519 (h!69327 (exprs!5452 setElem!37174))) (validRegex!7304 (h!69327 (exprs!5452 setElem!37174))))))

(declare-fun m!6566030 () Bool)

(assert (=> bs!1291699 m!6566030))

(assert (=> b!5584596 d!1765330))

(declare-fun b_lambda!211647 () Bool)

(assert (= b_lambda!211619 (or d!1764870 b_lambda!211647)))

(declare-fun bs!1291700 () Bool)

(declare-fun d!1765332 () Bool)

(assert (= bs!1291700 (and d!1765332 d!1764870)))

(assert (=> bs!1291700 (= (dynLambda!24593 lambda!299515 (h!69327 (unfocusZipperList!996 zl!343))) (validRegex!7304 (h!69327 (unfocusZipperList!996 zl!343))))))

(declare-fun m!6566032 () Bool)

(assert (=> bs!1291700 m!6566032))

(assert (=> b!5584377 d!1765332))

(declare-fun b_lambda!211649 () Bool)

(assert (= b_lambda!211627 (or b!5583357 b_lambda!211649)))

(assert (=> d!1765178 d!1764950))

(push 1)

(assert (not b!5584493))

(assert (not bm!417883))

(assert (not bm!417864))

(assert (not b!5584832))

(assert (not b_lambda!211647))

(assert (not b!5584753))

(assert (not bs!1291696))

(assert (not setNonEmpty!37189))

(assert (not b!5584764))

(assert (not bm!417837))

(assert (not bm!417827))

(assert (not b!5584469))

(assert (not b!5584709))

(assert (not bm!417828))

(assert (not bm!417866))

(assert (not b_lambda!211605))

(assert (not b!5584436))

(assert (not b!5584717))

(assert (not b!5584847))

(assert (not d!1765160))

(assert (not d!1765066))

(assert (not b!5584446))

(assert (not b!5584745))

(assert (not b!5584528))

(assert (not b!5584527))

(assert (not bm!417916))

(assert (not b!5584801))

(assert (not b!5584697))

(assert (not b!5584336))

(assert (not d!1765206))

(assert (not b!5584791))

(assert (not b!5584756))

(assert (not b!5584700))

(assert (not b!5584454))

(assert (not b!5584768))

(assert (not b!5584751))

(assert (not b!5584866))

(assert (not bm!417890))

(assert (not d!1765194))

(assert (not b_lambda!211639))

(assert (not d!1765290))

(assert (not d!1765164))

(assert (not d!1765058))

(assert (not setNonEmpty!37187))

(assert (not bm!417842))

(assert (not d!1765106))

(assert (not b!5584818))

(assert (not bm!417846))

(assert (not bm!417921))

(assert (not b!5584737))

(assert (not b!5584799))

(assert (not b!5584755))

(assert (not d!1765092))

(assert (not b!5584599))

(assert (not b!5584570))

(assert (not b_lambda!211601))

(assert (not b!5584445))

(assert (not d!1765094))

(assert (not b!5584434))

(assert (not d!1765108))

(assert (not bm!417897))

(assert (not b!5584497))

(assert (not b!5584769))

(assert (not b!5584830))

(assert (not bs!1291698))

(assert (not b!5584291))

(assert (not b!5584359))

(assert (not b!5584827))

(assert (not b!5584281))

(assert (not b!5584673))

(assert (not b!5584653))

(assert (not b!5584736))

(assert (not b!5584844))

(assert (not b!5584578))

(assert (not b!5584803))

(assert (not b!5584855))

(assert (not d!1765128))

(assert (not b!5584573))

(assert (not b!5584502))

(assert (not bm!417909))

(assert (not b!5584842))

(assert (not b!5584475))

(assert (not b!5584810))

(assert (not b!5584638))

(assert (not bm!417919))

(assert (not b!5584806))

(assert (not b!5584725))

(assert (not b!5584277))

(assert (not b!5584576))

(assert (not bm!417907))

(assert (not bs!1291697))

(assert (not bm!417872))

(assert (not bm!417891))

(assert (not b!5584437))

(assert (not b!5584378))

(assert (not b!5584787))

(assert (not b!5584280))

(assert (not bm!417901))

(assert (not d!1765188))

(assert (not b!5584333))

(assert (not d!1765148))

(assert (not b!5584392))

(assert (not d!1765300))

(assert (not b!5584468))

(assert (not d!1765244))

(assert (not b!5584776))

(assert (not b!5584666))

(assert (not d!1765318))

(assert (not b!5584785))

(assert (not bm!417903))

(assert (not b!5584831))

(assert (not b!5584439))

(assert (not b!5584707))

(assert (not b!5584664))

(assert (not b!5584571))

(assert (not d!1765268))

(assert (not b!5584385))

(assert (not b!5584472))

(assert (not d!1765076))

(assert (not b!5584735))

(assert (not b!5584813))

(assert (not b!5584789))

(assert (not b!5584843))

(assert (not d!1765086))

(assert (not b!5584811))

(assert (not d!1765178))

(assert (not bm!417877))

(assert (not b!5584703))

(assert (not b!5584556))

(assert (not b!5584763))

(assert (not b!5584399))

(assert (not b!5584851))

(assert (not d!1765126))

(assert (not b!5584826))

(assert (not setNonEmpty!37186))

(assert (not b!5584447))

(assert (not bm!417926))

(assert (not b!5584749))

(assert (not b!5584363))

(assert (not d!1765088))

(assert (not d!1765292))

(assert (not b!5584575))

(assert (not b!5584856))

(assert (not d!1765068))

(assert (not b!5584412))

(assert (not d!1765308))

(assert (not bm!417915))

(assert (not b!5584772))

(assert (not b!5584701))

(assert (not b!5584442))

(assert (not b!5584483))

(assert (not b!5584314))

(assert (not b!5584761))

(assert (not b!5584545))

(assert (not bm!417896))

(assert (not bm!417859))

(assert (not b!5584825))

(assert (not b!5584805))

(assert (not b!5584440))

(assert (not b!5584337))

(assert (not b!5584465))

(assert (not bm!417920))

(assert (not setNonEmpty!37188))

(assert (not d!1765306))

(assert (not b!5584343))

(assert (not b!5584612))

(assert (not b!5584795))

(assert (not b!5584779))

(assert (not b!5584569))

(assert (not d!1765120))

(assert tp_is_empty!40389)

(assert (not b!5584391))

(assert (not b!5584835))

(assert (not d!1765236))

(assert (not b!5584864))

(assert (not b!5584819))

(assert (not b!5584780))

(assert (not b!5584494))

(assert (not d!1765294))

(assert (not d!1765110))

(assert (not b!5584867))

(assert (not bm!417814))

(assert (not bm!417841))

(assert (not d!1765272))

(assert (not d!1765252))

(assert (not b!5584757))

(assert (not b!5584765))

(assert (not b!5584730))

(assert (not b!5584771))

(assert (not d!1765288))

(assert (not b!5584865))

(assert (not bm!417914))

(assert (not b!5584663))

(assert (not b!5584724))

(assert (not d!1765254))

(assert (not b_lambda!211649))

(assert (not d!1765152))

(assert (not bm!417830))

(assert (not b!5584834))

(assert (not bm!417848))

(assert (not b!5584676))

(assert (not d!1765212))

(assert (not b!5584382))

(assert (not d!1765224))

(assert (not b_lambda!211641))

(assert (not b!5584706))

(assert (not bm!417839))

(assert (not d!1765078))

(assert (not bm!417908))

(assert (not bm!417929))

(assert (not b!5584797))

(assert (not b!5584704))

(assert (not b!5584838))

(assert (not b!5584783))

(assert (not d!1765074))

(assert (not bm!417858))

(assert (not bm!417924))

(assert (not d!1765146))

(assert (not d!1765182))

(assert (not bm!417863))

(assert (not b!5584781))

(assert (not b!5584732))

(assert (not b!5584752))

(assert (not b!5584384))

(assert (not b!5584645))

(assert (not b!5584821))

(assert (not b!5584784))

(assert (not bm!417918))

(assert (not b!5584686))

(assert (not bm!417816))

(assert (not bm!417876))

(assert (not bm!417853))

(assert (not b!5584455))

(assert (not bm!417925))

(assert (not b!5584674))

(assert (not bs!1291700))

(assert (not d!1765132))

(assert (not bm!417860))

(assert (not d!1765144))

(assert (not b!5584448))

(assert (not b!5584328))

(assert (not bm!417831))

(assert (not b!5584533))

(assert (not b!5584850))

(assert (not bm!417902))

(assert (not b!5584767))

(assert (not b!5584557))

(assert (not d!1765222))

(assert (not bs!1291699))

(assert (not bm!417847))

(assert (not b!5584738))

(assert (not b!5584381))

(assert (not b!5584362))

(assert (not b!5584792))

(assert (not b!5584696))

(assert (not b!5584775))

(assert (not b_lambda!211643))

(assert (not bm!417854))

(assert (not b_lambda!211635))

(assert (not b!5584814))

(assert (not bm!417835))

(assert (not d!1765298))

(assert (not b!5584822))

(assert (not b!5584639))

(assert (not d!1765168))

(assert (not b_lambda!211603))

(assert (not b!5584334))

(assert (not b_lambda!211637))

(assert (not d!1765172))

(assert (not bm!417865))

(assert (not b!5584796))

(assert (not b!5584809))

(assert (not d!1765180))

(assert (not b!5584836))

(assert (not b!5584344))

(assert (not b!5584284))

(assert (not b!5584804))

(assert (not b!5584859))

(assert (not bm!417861))

(assert (not bm!417878))

(assert (not d!1765140))

(assert (not bm!417813))

(assert (not b!5584734))

(assert (not b!5584815))

(assert (not bm!417928))

(assert (not b!5584597))

(assert (not d!1765270))

(assert (not b!5584458))

(assert (not b!5584467))

(assert (not bm!417885))

(assert (not b!5584457))

(assert (not b!5584840))

(assert (not b!5584529))

(assert (not b!5584601))

(assert (not d!1765286))

(assert (not b!5584760))

(assert (not d!1765096))

(assert (not d!1765240))

(assert (not b!5584675))

(assert (not b!5584667))

(assert (not b!5584726))

(assert (not d!1765166))

(assert (not b!5584852))

(assert (not b!5584435))

(assert (not bm!417871))

(assert (not b!5584568))

(assert (not b!5584788))

(assert (not b!5584839))

(assert (not d!1765162))

(assert (not bm!417917))

(assert (not d!1765204))

(assert (not d!1765234))

(assert (not bm!417879))

(assert (not b!5584283))

(assert (not b!5584817))

(assert (not b_lambda!211645))

(assert (not d!1765154))

(assert (not b!5584800))

(assert (not b!5584694))

(assert (not b!5584733))

(assert (not d!1765304))

(assert (not b!5584370))

(assert (not b!5584860))

(assert (not bm!417815))

(assert (not b!5584598))

(assert (not b!5584716))

(assert (not bm!417884))

(assert (not b!5584829))

(assert (not d!1765124))

(assert (not b!5584711))

(assert (not b!5584857))

(assert (not d!1765280))

(assert (not bm!417832))

(assert (not bm!417862))

(assert (not b!5584862))

(assert (not b!5584727))

(assert (not bm!417889))

(assert (not bm!417923))

(assert (not b!5584534))

(assert (not b!5584846))

(assert (not d!1765316))

(assert (not d!1765062))

(assert (not d!1765216))

(assert (not bm!417838))

(assert (not b!5584290))

(assert (not bm!417852))

(assert (not b!5584683))

(assert (not b!5584793))

(assert (not b!5584464))

(assert (not d!1765284))

(assert (not b!5584584))

(assert (not b!5584595))

(assert (not b!5584750))

(assert (not b!5584848))

(assert (not b!5584501))

(assert (not bm!417895))

(assert (not b!5584759))

(assert (not d!1765246))

(assert (not b!5584777))

(assert (not d!1765302))

(assert (not b!5584516))

(assert (not b!5584807))

(assert (not b!5584823))

(assert (not b!5584423))

(assert (not b!5584496))

(assert (not b!5584773))

(assert (not b!5584861))

(assert (not bm!417870))

(assert (not b!5584853))

(assert (not b!5584441))

(assert (not bm!417834))

(assert (not d!1765230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

