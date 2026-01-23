; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!651132 () Bool)

(assert start!651132)

(declare-fun b!6714035 () Bool)

(assert (=> b!6714035 true))

(assert (=> b!6714035 true))

(declare-fun lambda!376412 () Int)

(declare-fun lambda!376411 () Int)

(assert (=> b!6714035 (not (= lambda!376412 lambda!376411))))

(assert (=> b!6714035 true))

(assert (=> b!6714035 true))

(declare-fun lambda!376413 () Int)

(assert (=> b!6714035 (not (= lambda!376413 lambda!376411))))

(assert (=> b!6714035 (not (= lambda!376413 lambda!376412))))

(assert (=> b!6714035 true))

(assert (=> b!6714035 true))

(declare-fun setIsEmpty!45753 () Bool)

(declare-fun setRes!45753 () Bool)

(assert (=> setIsEmpty!45753 setRes!45753))

(declare-fun b!6714015 () Bool)

(declare-fun res!2747588 () Bool)

(declare-fun e!4057459 () Bool)

(assert (=> b!6714015 (=> (not res!2747588) (not e!4057459))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33348 0))(
  ( (C!33349 (val!26376 Int)) )
))
(declare-datatypes ((Regex!16539 0))(
  ( (ElementMatch!16539 (c!1244845 C!33348)) (Concat!25384 (regOne!33590 Regex!16539) (regTwo!33590 Regex!16539)) (EmptyExpr!16539) (Star!16539 (reg!16868 Regex!16539)) (EmptyLang!16539) (Union!16539 (regOne!33591 Regex!16539) (regTwo!33591 Regex!16539)) )
))
(declare-datatypes ((List!65916 0))(
  ( (Nil!65792) (Cons!65792 (h!72240 Regex!16539) (t!379593 List!65916)) )
))
(declare-datatypes ((Context!11846 0))(
  ( (Context!11847 (exprs!6423 List!65916)) )
))
(declare-fun z!1189 () (InoxSet Context!11846))

(declare-datatypes ((List!65917 0))(
  ( (Nil!65793) (Cons!65793 (h!72241 Context!11846) (t!379594 List!65917)) )
))
(declare-fun zl!343 () List!65917)

(declare-fun toList!10323 ((InoxSet Context!11846)) List!65917)

(assert (=> b!6714015 (= res!2747588 (= (toList!10323 z!1189) zl!343))))

(declare-fun b!6714016 () Bool)

(declare-fun e!4057457 () Bool)

(declare-fun tp_is_empty!42331 () Bool)

(declare-fun tp!1840041 () Bool)

(assert (=> b!6714016 (= e!4057457 (and tp_is_empty!42331 tp!1840041))))

(declare-fun b!6714017 () Bool)

(declare-fun e!4057460 () Bool)

(declare-fun tp!1840035 () Bool)

(declare-fun tp!1840036 () Bool)

(assert (=> b!6714017 (= e!4057460 (and tp!1840035 tp!1840036))))

(declare-fun b!6714018 () Bool)

(declare-fun res!2747589 () Bool)

(declare-fun e!4057461 () Bool)

(assert (=> b!6714018 (=> res!2747589 e!4057461)))

(declare-fun isEmpty!38109 (List!65917) Bool)

(assert (=> b!6714018 (= res!2747589 (not (isEmpty!38109 (t!379594 zl!343))))))

(declare-fun b!6714019 () Bool)

(declare-fun e!4057456 () Bool)

(declare-fun e!4057455 () Bool)

(assert (=> b!6714019 (= e!4057456 e!4057455)))

(declare-fun res!2747597 () Bool)

(assert (=> b!6714019 (=> res!2747597 e!4057455)))

(declare-fun lt!2436037 () Bool)

(declare-fun lt!2436044 () Bool)

(assert (=> b!6714019 (= res!2747597 (not (= lt!2436037 lt!2436044)))))

(assert (=> b!6714019 (= lt!2436044 lt!2436037)))

(declare-fun nullableZipper!2266 ((InoxSet Context!11846)) Bool)

(assert (=> b!6714019 (= lt!2436037 (nullableZipper!2266 z!1189))))

(declare-fun r!7292 () Regex!16539)

(declare-fun nullable!6526 (Regex!16539) Bool)

(assert (=> b!6714019 (= lt!2436044 (nullable!6526 r!7292))))

(declare-datatypes ((Unit!159769 0))(
  ( (Unit!159770) )
))
(declare-fun lt!2436036 () Unit!159769)

(declare-fun lemmaUnfocusPreservesNullability!34 (Regex!16539 (InoxSet Context!11846)) Unit!159769)

(assert (=> b!6714019 (= lt!2436036 (lemmaUnfocusPreservesNullability!34 r!7292 z!1189))))

(declare-fun b!6714020 () Bool)

(declare-fun res!2747592 () Bool)

(assert (=> b!6714020 (=> res!2747592 e!4057461)))

(get-info :version)

(assert (=> b!6714020 (= res!2747592 (or ((_ is EmptyExpr!16539) r!7292) ((_ is EmptyLang!16539) r!7292) ((_ is ElementMatch!16539) r!7292) ((_ is Union!16539) r!7292) ((_ is Concat!25384) r!7292)))))

(declare-fun res!2747595 () Bool)

(assert (=> start!651132 (=> (not res!2747595) (not e!4057459))))

(declare-fun validRegex!8275 (Regex!16539) Bool)

(assert (=> start!651132 (= res!2747595 (validRegex!8275 r!7292))))

(assert (=> start!651132 e!4057459))

(assert (=> start!651132 e!4057460))

(declare-fun condSetEmpty!45753 () Bool)

(assert (=> start!651132 (= condSetEmpty!45753 (= z!1189 ((as const (Array Context!11846 Bool)) false)))))

(assert (=> start!651132 setRes!45753))

(declare-fun e!4057454 () Bool)

(assert (=> start!651132 e!4057454))

(assert (=> start!651132 e!4057457))

(declare-fun b!6714021 () Bool)

(assert (=> b!6714021 (= e!4057460 tp_is_empty!42331)))

(declare-fun b!6714022 () Bool)

(declare-fun res!2747598 () Bool)

(assert (=> b!6714022 (=> res!2747598 e!4057461)))

(assert (=> b!6714022 (= res!2747598 (not ((_ is Cons!65792) (exprs!6423 (h!72241 zl!343)))))))

(declare-datatypes ((List!65918 0))(
  ( (Nil!65794) (Cons!65794 (h!72242 C!33348) (t!379595 List!65918)) )
))
(declare-fun s!2326 () List!65918)

(declare-fun lt!2436040 () Bool)

(declare-fun b!6714023 () Bool)

(declare-fun matchZipper!2537 ((InoxSet Context!11846) List!65918) Bool)

(assert (=> b!6714023 (= e!4057455 (= (matchZipper!2537 z!1189 s!2326) lt!2436040))))

(declare-fun b!6714024 () Bool)

(declare-fun res!2747596 () Bool)

(assert (=> b!6714024 (=> (not res!2747596) (not e!4057459))))

(declare-fun unfocusZipper!2281 (List!65917) Regex!16539)

(assert (=> b!6714024 (= res!2747596 (= r!7292 (unfocusZipper!2281 zl!343)))))

(declare-fun b!6714025 () Bool)

(declare-fun e!4057453 () Bool)

(declare-fun lt!2436038 () Bool)

(assert (=> b!6714025 (= e!4057453 lt!2436038)))

(declare-fun b!6714026 () Bool)

(declare-fun res!2747591 () Bool)

(assert (=> b!6714026 (=> res!2747591 e!4057461)))

(declare-fun generalisedUnion!2383 (List!65916) Regex!16539)

(declare-fun unfocusZipperList!1960 (List!65917) List!65916)

(assert (=> b!6714026 (= res!2747591 (not (= r!7292 (generalisedUnion!2383 (unfocusZipperList!1960 zl!343)))))))

(declare-fun b!6714027 () Bool)

(declare-fun e!4057458 () Bool)

(declare-fun tp!1840033 () Bool)

(declare-fun inv!84594 (Context!11846) Bool)

(assert (=> b!6714027 (= e!4057454 (and (inv!84594 (h!72241 zl!343)) e!4057458 tp!1840033))))

(declare-fun b!6714028 () Bool)

(declare-fun tp!1840034 () Bool)

(assert (=> b!6714028 (= e!4057460 tp!1840034)))

(declare-fun b!6714029 () Bool)

(declare-fun tp!1840040 () Bool)

(assert (=> b!6714029 (= e!4057458 tp!1840040)))

(declare-fun b!6714030 () Bool)

(declare-fun res!2747600 () Bool)

(assert (=> b!6714030 (=> res!2747600 e!4057461)))

(declare-fun generalisedConcat!2136 (List!65916) Regex!16539)

(assert (=> b!6714030 (= res!2747600 (not (= r!7292 (generalisedConcat!2136 (exprs!6423 (h!72241 zl!343))))))))

(declare-fun b!6714031 () Bool)

(declare-fun res!2747590 () Bool)

(assert (=> b!6714031 (=> res!2747590 e!4057456)))

(assert (=> b!6714031 (= res!2747590 (not ((_ is Nil!65794) s!2326)))))

(declare-fun b!6714032 () Bool)

(declare-fun e!4057462 () Bool)

(declare-fun tp!1840032 () Bool)

(assert (=> b!6714032 (= e!4057462 tp!1840032)))

(declare-fun b!6714033 () Bool)

(declare-fun tp!1840037 () Bool)

(declare-fun tp!1840039 () Bool)

(assert (=> b!6714033 (= e!4057460 (and tp!1840037 tp!1840039))))

(declare-fun setNonEmpty!45753 () Bool)

(declare-fun setElem!45753 () Context!11846)

(declare-fun tp!1840038 () Bool)

(assert (=> setNonEmpty!45753 (= setRes!45753 (and tp!1840038 (inv!84594 setElem!45753) e!4057462))))

(declare-fun setRest!45753 () (InoxSet Context!11846))

(assert (=> setNonEmpty!45753 (= z!1189 ((_ map or) (store ((as const (Array Context!11846 Bool)) false) setElem!45753 true) setRest!45753))))

(declare-fun b!6714034 () Bool)

(assert (=> b!6714034 (= e!4057459 (not e!4057461))))

(declare-fun res!2747593 () Bool)

(assert (=> b!6714034 (=> res!2747593 e!4057461)))

(assert (=> b!6714034 (= res!2747593 (not ((_ is Cons!65793) zl!343)))))

(declare-fun matchRSpec!3640 (Regex!16539 List!65918) Bool)

(assert (=> b!6714034 (= lt!2436040 (matchRSpec!3640 r!7292 s!2326))))

(declare-fun matchR!8722 (Regex!16539 List!65918) Bool)

(assert (=> b!6714034 (= lt!2436040 (matchR!8722 r!7292 s!2326))))

(declare-fun lt!2436041 () Unit!159769)

(declare-fun mainMatchTheorem!3640 (Regex!16539 List!65918) Unit!159769)

(assert (=> b!6714034 (= lt!2436041 (mainMatchTheorem!3640 r!7292 s!2326))))

(assert (=> b!6714035 (= e!4057461 e!4057456)))

(declare-fun res!2747594 () Bool)

(assert (=> b!6714035 (=> res!2747594 e!4057456)))

(assert (=> b!6714035 (= res!2747594 (not (= lt!2436040 e!4057453)))))

(declare-fun res!2747599 () Bool)

(assert (=> b!6714035 (=> res!2747599 e!4057453)))

(declare-fun isEmpty!38110 (List!65918) Bool)

(assert (=> b!6714035 (= res!2747599 (isEmpty!38110 s!2326))))

(declare-fun Exists!3607 (Int) Bool)

(assert (=> b!6714035 (= (Exists!3607 lambda!376411) (Exists!3607 lambda!376413))))

(declare-fun lt!2436039 () Unit!159769)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2134 (Regex!16539 Regex!16539 List!65918) Unit!159769)

(assert (=> b!6714035 (= lt!2436039 (lemmaExistCutMatchRandMatchRSpecEquivalent!2134 (reg!16868 r!7292) r!7292 s!2326))))

(assert (=> b!6714035 (= (Exists!3607 lambda!376411) (Exists!3607 lambda!376412))))

(declare-fun lt!2436043 () Unit!159769)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!698 (Regex!16539 List!65918) Unit!159769)

(assert (=> b!6714035 (= lt!2436043 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!698 (reg!16868 r!7292) s!2326))))

(assert (=> b!6714035 (= lt!2436038 (Exists!3607 lambda!376411))))

(declare-datatypes ((tuple2!67028 0))(
  ( (tuple2!67029 (_1!36817 List!65918) (_2!36817 List!65918)) )
))
(declare-datatypes ((Option!16426 0))(
  ( (None!16425) (Some!16425 (v!52623 tuple2!67028)) )
))
(declare-fun isDefined!13129 (Option!16426) Bool)

(declare-fun findConcatSeparation!2840 (Regex!16539 Regex!16539 List!65918 List!65918 List!65918) Option!16426)

(assert (=> b!6714035 (= lt!2436038 (isDefined!13129 (findConcatSeparation!2840 (reg!16868 r!7292) r!7292 Nil!65794 s!2326 s!2326)))))

(declare-fun lt!2436042 () Unit!159769)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2604 (Regex!16539 Regex!16539 List!65918) Unit!159769)

(assert (=> b!6714035 (= lt!2436042 (lemmaFindConcatSeparationEquivalentToExists!2604 (reg!16868 r!7292) r!7292 s!2326))))

(assert (= (and start!651132 res!2747595) b!6714015))

(assert (= (and b!6714015 res!2747588) b!6714024))

(assert (= (and b!6714024 res!2747596) b!6714034))

(assert (= (and b!6714034 (not res!2747593)) b!6714018))

(assert (= (and b!6714018 (not res!2747589)) b!6714030))

(assert (= (and b!6714030 (not res!2747600)) b!6714022))

(assert (= (and b!6714022 (not res!2747598)) b!6714026))

(assert (= (and b!6714026 (not res!2747591)) b!6714020))

(assert (= (and b!6714020 (not res!2747592)) b!6714035))

(assert (= (and b!6714035 (not res!2747599)) b!6714025))

(assert (= (and b!6714035 (not res!2747594)) b!6714031))

(assert (= (and b!6714031 (not res!2747590)) b!6714019))

(assert (= (and b!6714019 (not res!2747597)) b!6714023))

(assert (= (and start!651132 ((_ is ElementMatch!16539) r!7292)) b!6714021))

(assert (= (and start!651132 ((_ is Concat!25384) r!7292)) b!6714033))

(assert (= (and start!651132 ((_ is Star!16539) r!7292)) b!6714028))

(assert (= (and start!651132 ((_ is Union!16539) r!7292)) b!6714017))

(assert (= (and start!651132 condSetEmpty!45753) setIsEmpty!45753))

(assert (= (and start!651132 (not condSetEmpty!45753)) setNonEmpty!45753))

(assert (= setNonEmpty!45753 b!6714032))

(assert (= b!6714027 b!6714029))

(assert (= (and start!651132 ((_ is Cons!65793) zl!343)) b!6714027))

(assert (= (and start!651132 ((_ is Cons!65794) s!2326)) b!6714016))

(declare-fun m!7478506 () Bool)

(assert (=> b!6714027 m!7478506))

(declare-fun m!7478508 () Bool)

(assert (=> b!6714018 m!7478508))

(declare-fun m!7478510 () Bool)

(assert (=> b!6714030 m!7478510))

(declare-fun m!7478512 () Bool)

(assert (=> b!6714026 m!7478512))

(assert (=> b!6714026 m!7478512))

(declare-fun m!7478514 () Bool)

(assert (=> b!6714026 m!7478514))

(declare-fun m!7478516 () Bool)

(assert (=> start!651132 m!7478516))

(declare-fun m!7478518 () Bool)

(assert (=> b!6714034 m!7478518))

(declare-fun m!7478520 () Bool)

(assert (=> b!6714034 m!7478520))

(declare-fun m!7478522 () Bool)

(assert (=> b!6714034 m!7478522))

(declare-fun m!7478524 () Bool)

(assert (=> b!6714019 m!7478524))

(declare-fun m!7478526 () Bool)

(assert (=> b!6714019 m!7478526))

(declare-fun m!7478528 () Bool)

(assert (=> b!6714019 m!7478528))

(declare-fun m!7478530 () Bool)

(assert (=> b!6714023 m!7478530))

(declare-fun m!7478532 () Bool)

(assert (=> b!6714015 m!7478532))

(declare-fun m!7478534 () Bool)

(assert (=> b!6714024 m!7478534))

(declare-fun m!7478536 () Bool)

(assert (=> setNonEmpty!45753 m!7478536))

(declare-fun m!7478538 () Bool)

(assert (=> b!6714035 m!7478538))

(declare-fun m!7478540 () Bool)

(assert (=> b!6714035 m!7478540))

(declare-fun m!7478542 () Bool)

(assert (=> b!6714035 m!7478542))

(declare-fun m!7478544 () Bool)

(assert (=> b!6714035 m!7478544))

(declare-fun m!7478546 () Bool)

(assert (=> b!6714035 m!7478546))

(declare-fun m!7478548 () Bool)

(assert (=> b!6714035 m!7478548))

(declare-fun m!7478550 () Bool)

(assert (=> b!6714035 m!7478550))

(declare-fun m!7478552 () Bool)

(assert (=> b!6714035 m!7478552))

(assert (=> b!6714035 m!7478538))

(declare-fun m!7478554 () Bool)

(assert (=> b!6714035 m!7478554))

(assert (=> b!6714035 m!7478538))

(assert (=> b!6714035 m!7478548))

(check-sat (not b!6714017) (not b!6714015) (not b!6714027) (not b!6714034) (not b!6714023) (not b!6714030) (not b!6714016) (not setNonEmpty!45753) (not b!6714024) (not b!6714033) (not b!6714028) (not b!6714029) (not b!6714026) (not b!6714032) (not b!6714018) (not b!6714019) (not start!651132) tp_is_empty!42331 (not b!6714035))
(check-sat)
(get-model)

(declare-fun d!2110515 () Bool)

(declare-fun lambda!376416 () Int)

(declare-fun forall!15741 (List!65916 Int) Bool)

(assert (=> d!2110515 (= (inv!84594 (h!72241 zl!343)) (forall!15741 (exprs!6423 (h!72241 zl!343)) lambda!376416))))

(declare-fun bs!1786710 () Bool)

(assert (= bs!1786710 d!2110515))

(declare-fun m!7478556 () Bool)

(assert (=> bs!1786710 m!7478556))

(assert (=> b!6714027 d!2110515))

(declare-fun d!2110517 () Bool)

(declare-fun e!4057465 () Bool)

(assert (=> d!2110517 e!4057465))

(declare-fun res!2747603 () Bool)

(assert (=> d!2110517 (=> (not res!2747603) (not e!4057465))))

(declare-fun lt!2436047 () List!65917)

(declare-fun noDuplicate!2334 (List!65917) Bool)

(assert (=> d!2110517 (= res!2747603 (noDuplicate!2334 lt!2436047))))

(declare-fun choose!50023 ((InoxSet Context!11846)) List!65917)

(assert (=> d!2110517 (= lt!2436047 (choose!50023 z!1189))))

(assert (=> d!2110517 (= (toList!10323 z!1189) lt!2436047)))

(declare-fun b!6714042 () Bool)

(declare-fun content!12753 (List!65917) (InoxSet Context!11846))

(assert (=> b!6714042 (= e!4057465 (= (content!12753 lt!2436047) z!1189))))

(assert (= (and d!2110517 res!2747603) b!6714042))

(declare-fun m!7478558 () Bool)

(assert (=> d!2110517 m!7478558))

(declare-fun m!7478560 () Bool)

(assert (=> d!2110517 m!7478560))

(declare-fun m!7478562 () Bool)

(assert (=> b!6714042 m!7478562))

(assert (=> b!6714015 d!2110517))

(declare-fun bs!1786714 () Bool)

(declare-fun d!2110521 () Bool)

(assert (= bs!1786714 (and d!2110521 d!2110515)))

(declare-fun lambda!376425 () Int)

(assert (=> bs!1786714 (= lambda!376425 lambda!376416)))

(declare-fun b!6714106 () Bool)

(declare-fun e!4057503 () Regex!16539)

(assert (=> b!6714106 (= e!4057503 EmptyLang!16539)))

(declare-fun b!6714107 () Bool)

(declare-fun e!4057508 () Regex!16539)

(assert (=> b!6714107 (= e!4057508 e!4057503)))

(declare-fun c!1244869 () Bool)

(assert (=> b!6714107 (= c!1244869 ((_ is Cons!65792) (unfocusZipperList!1960 zl!343)))))

(declare-fun b!6714108 () Bool)

(declare-fun e!4057504 () Bool)

(declare-fun lt!2436050 () Regex!16539)

(declare-fun isEmptyLang!1915 (Regex!16539) Bool)

(assert (=> b!6714108 (= e!4057504 (isEmptyLang!1915 lt!2436050))))

(declare-fun b!6714109 () Bool)

(declare-fun e!4057506 () Bool)

(assert (=> b!6714109 (= e!4057504 e!4057506)))

(declare-fun c!1244867 () Bool)

(declare-fun isEmpty!38113 (List!65916) Bool)

(declare-fun tail!12594 (List!65916) List!65916)

(assert (=> b!6714109 (= c!1244867 (isEmpty!38113 (tail!12594 (unfocusZipperList!1960 zl!343))))))

(declare-fun b!6714110 () Bool)

(declare-fun e!4057507 () Bool)

(assert (=> b!6714110 (= e!4057507 (isEmpty!38113 (t!379593 (unfocusZipperList!1960 zl!343))))))

(declare-fun b!6714111 () Bool)

(declare-fun e!4057505 () Bool)

(assert (=> b!6714111 (= e!4057505 e!4057504)))

(declare-fun c!1244868 () Bool)

(assert (=> b!6714111 (= c!1244868 (isEmpty!38113 (unfocusZipperList!1960 zl!343)))))

(declare-fun b!6714112 () Bool)

(declare-fun head!13509 (List!65916) Regex!16539)

(assert (=> b!6714112 (= e!4057506 (= lt!2436050 (head!13509 (unfocusZipperList!1960 zl!343))))))

(declare-fun b!6714113 () Bool)

(assert (=> b!6714113 (= e!4057508 (h!72240 (unfocusZipperList!1960 zl!343)))))

(assert (=> d!2110521 e!4057505))

(declare-fun res!2747627 () Bool)

(assert (=> d!2110521 (=> (not res!2747627) (not e!4057505))))

(assert (=> d!2110521 (= res!2747627 (validRegex!8275 lt!2436050))))

(assert (=> d!2110521 (= lt!2436050 e!4057508)))

(declare-fun c!1244866 () Bool)

(assert (=> d!2110521 (= c!1244866 e!4057507)))

(declare-fun res!2747628 () Bool)

(assert (=> d!2110521 (=> (not res!2747628) (not e!4057507))))

(assert (=> d!2110521 (= res!2747628 ((_ is Cons!65792) (unfocusZipperList!1960 zl!343)))))

(assert (=> d!2110521 (forall!15741 (unfocusZipperList!1960 zl!343) lambda!376425)))

(assert (=> d!2110521 (= (generalisedUnion!2383 (unfocusZipperList!1960 zl!343)) lt!2436050)))

(declare-fun b!6714114 () Bool)

(declare-fun isUnion!1345 (Regex!16539) Bool)

(assert (=> b!6714114 (= e!4057506 (isUnion!1345 lt!2436050))))

(declare-fun b!6714115 () Bool)

(assert (=> b!6714115 (= e!4057503 (Union!16539 (h!72240 (unfocusZipperList!1960 zl!343)) (generalisedUnion!2383 (t!379593 (unfocusZipperList!1960 zl!343)))))))

(assert (= (and d!2110521 res!2747628) b!6714110))

(assert (= (and d!2110521 c!1244866) b!6714113))

(assert (= (and d!2110521 (not c!1244866)) b!6714107))

(assert (= (and b!6714107 c!1244869) b!6714115))

(assert (= (and b!6714107 (not c!1244869)) b!6714106))

(assert (= (and d!2110521 res!2747627) b!6714111))

(assert (= (and b!6714111 c!1244868) b!6714108))

(assert (= (and b!6714111 (not c!1244868)) b!6714109))

(assert (= (and b!6714109 c!1244867) b!6714112))

(assert (= (and b!6714109 (not c!1244867)) b!6714114))

(assert (=> b!6714109 m!7478512))

(declare-fun m!7478570 () Bool)

(assert (=> b!6714109 m!7478570))

(assert (=> b!6714109 m!7478570))

(declare-fun m!7478572 () Bool)

(assert (=> b!6714109 m!7478572))

(declare-fun m!7478574 () Bool)

(assert (=> b!6714115 m!7478574))

(declare-fun m!7478576 () Bool)

(assert (=> b!6714114 m!7478576))

(declare-fun m!7478578 () Bool)

(assert (=> b!6714108 m!7478578))

(assert (=> b!6714112 m!7478512))

(declare-fun m!7478580 () Bool)

(assert (=> b!6714112 m!7478580))

(assert (=> b!6714111 m!7478512))

(declare-fun m!7478582 () Bool)

(assert (=> b!6714111 m!7478582))

(declare-fun m!7478584 () Bool)

(assert (=> d!2110521 m!7478584))

(assert (=> d!2110521 m!7478512))

(declare-fun m!7478586 () Bool)

(assert (=> d!2110521 m!7478586))

(declare-fun m!7478588 () Bool)

(assert (=> b!6714110 m!7478588))

(assert (=> b!6714026 d!2110521))

(declare-fun bs!1786716 () Bool)

(declare-fun d!2110525 () Bool)

(assert (= bs!1786716 (and d!2110525 d!2110515)))

(declare-fun lambda!376428 () Int)

(assert (=> bs!1786716 (= lambda!376428 lambda!376416)))

(declare-fun bs!1786717 () Bool)

(assert (= bs!1786717 (and d!2110525 d!2110521)))

(assert (=> bs!1786717 (= lambda!376428 lambda!376425)))

(declare-fun lt!2436059 () List!65916)

(assert (=> d!2110525 (forall!15741 lt!2436059 lambda!376428)))

(declare-fun e!4057532 () List!65916)

(assert (=> d!2110525 (= lt!2436059 e!4057532)))

(declare-fun c!1244881 () Bool)

(assert (=> d!2110525 (= c!1244881 ((_ is Cons!65793) zl!343))))

(assert (=> d!2110525 (= (unfocusZipperList!1960 zl!343) lt!2436059)))

(declare-fun b!6714162 () Bool)

(assert (=> b!6714162 (= e!4057532 (Cons!65792 (generalisedConcat!2136 (exprs!6423 (h!72241 zl!343))) (unfocusZipperList!1960 (t!379594 zl!343))))))

(declare-fun b!6714163 () Bool)

(assert (=> b!6714163 (= e!4057532 Nil!65792)))

(assert (= (and d!2110525 c!1244881) b!6714162))

(assert (= (and d!2110525 (not c!1244881)) b!6714163))

(declare-fun m!7478602 () Bool)

(assert (=> d!2110525 m!7478602))

(assert (=> b!6714162 m!7478510))

(declare-fun m!7478604 () Bool)

(assert (=> b!6714162 m!7478604))

(assert (=> b!6714026 d!2110525))

(declare-fun d!2110531 () Bool)

(declare-fun choose!50024 (Int) Bool)

(assert (=> d!2110531 (= (Exists!3607 lambda!376412) (choose!50024 lambda!376412))))

(declare-fun bs!1786719 () Bool)

(assert (= bs!1786719 d!2110531))

(declare-fun m!7478608 () Bool)

(assert (=> bs!1786719 m!7478608))

(assert (=> b!6714035 d!2110531))

(declare-fun d!2110537 () Bool)

(assert (=> d!2110537 (= (Exists!3607 lambda!376411) (choose!50024 lambda!376411))))

(declare-fun bs!1786720 () Bool)

(assert (= bs!1786720 d!2110537))

(declare-fun m!7478610 () Bool)

(assert (=> bs!1786720 m!7478610))

(assert (=> b!6714035 d!2110537))

(declare-fun d!2110539 () Bool)

(declare-fun isEmpty!38114 (Option!16426) Bool)

(assert (=> d!2110539 (= (isDefined!13129 (findConcatSeparation!2840 (reg!16868 r!7292) r!7292 Nil!65794 s!2326 s!2326)) (not (isEmpty!38114 (findConcatSeparation!2840 (reg!16868 r!7292) r!7292 Nil!65794 s!2326 s!2326))))))

(declare-fun bs!1786721 () Bool)

(assert (= bs!1786721 d!2110539))

(assert (=> bs!1786721 m!7478548))

(declare-fun m!7478612 () Bool)

(assert (=> bs!1786721 m!7478612))

(assert (=> b!6714035 d!2110539))

(declare-fun bs!1786727 () Bool)

(declare-fun d!2110541 () Bool)

(assert (= bs!1786727 (and d!2110541 b!6714035)))

(declare-fun lambda!376446 () Int)

(assert (=> bs!1786727 (= lambda!376446 lambda!376411)))

(assert (=> bs!1786727 (not (= lambda!376446 lambda!376412))))

(assert (=> bs!1786727 (not (= lambda!376446 lambda!376413))))

(assert (=> d!2110541 true))

(assert (=> d!2110541 true))

(assert (=> d!2110541 true))

(declare-fun lambda!376448 () Int)

(assert (=> bs!1786727 (not (= lambda!376448 lambda!376411))))

(assert (=> bs!1786727 (not (= lambda!376448 lambda!376412))))

(assert (=> bs!1786727 (= lambda!376448 lambda!376413)))

(declare-fun bs!1786732 () Bool)

(assert (= bs!1786732 d!2110541))

(assert (=> bs!1786732 (not (= lambda!376448 lambda!376446))))

(assert (=> d!2110541 true))

(assert (=> d!2110541 true))

(assert (=> d!2110541 true))

(assert (=> d!2110541 (= (Exists!3607 lambda!376446) (Exists!3607 lambda!376448))))

(declare-fun lt!2436073 () Unit!159769)

(declare-fun choose!50025 (Regex!16539 Regex!16539 List!65918) Unit!159769)

(assert (=> d!2110541 (= lt!2436073 (choose!50025 (reg!16868 r!7292) r!7292 s!2326))))

(assert (=> d!2110541 (validRegex!8275 (reg!16868 r!7292))))

(assert (=> d!2110541 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2134 (reg!16868 r!7292) r!7292 s!2326) lt!2436073)))

(declare-fun m!7478656 () Bool)

(assert (=> bs!1786732 m!7478656))

(declare-fun m!7478658 () Bool)

(assert (=> bs!1786732 m!7478658))

(declare-fun m!7478660 () Bool)

(assert (=> bs!1786732 m!7478660))

(declare-fun m!7478662 () Bool)

(assert (=> bs!1786732 m!7478662))

(assert (=> b!6714035 d!2110541))

(declare-fun bs!1786739 () Bool)

(declare-fun d!2110555 () Bool)

(assert (= bs!1786739 (and d!2110555 d!2110541)))

(declare-fun lambda!376460 () Int)

(assert (=> bs!1786739 (= (= (Star!16539 (reg!16868 r!7292)) r!7292) (= lambda!376460 lambda!376446))))

(declare-fun bs!1786740 () Bool)

(assert (= bs!1786740 (and d!2110555 b!6714035)))

(assert (=> bs!1786740 (not (= lambda!376460 lambda!376412))))

(assert (=> bs!1786740 (= (= (Star!16539 (reg!16868 r!7292)) r!7292) (= lambda!376460 lambda!376411))))

(assert (=> bs!1786739 (not (= lambda!376460 lambda!376448))))

(assert (=> bs!1786740 (not (= lambda!376460 lambda!376413))))

(assert (=> d!2110555 true))

(assert (=> d!2110555 true))

(declare-fun lambda!376461 () Int)

(assert (=> bs!1786739 (not (= lambda!376461 lambda!376446))))

(assert (=> bs!1786740 (= (= (Star!16539 (reg!16868 r!7292)) r!7292) (= lambda!376461 lambda!376412))))

(assert (=> bs!1786740 (not (= lambda!376461 lambda!376411))))

(declare-fun bs!1786741 () Bool)

(assert (= bs!1786741 d!2110555))

(assert (=> bs!1786741 (not (= lambda!376461 lambda!376460))))

(assert (=> bs!1786739 (not (= lambda!376461 lambda!376448))))

(assert (=> bs!1786740 (not (= lambda!376461 lambda!376413))))

(assert (=> d!2110555 true))

(assert (=> d!2110555 true))

(assert (=> d!2110555 (= (Exists!3607 lambda!376460) (Exists!3607 lambda!376461))))

(declare-fun lt!2436086 () Unit!159769)

(declare-fun choose!50026 (Regex!16539 List!65918) Unit!159769)

(assert (=> d!2110555 (= lt!2436086 (choose!50026 (reg!16868 r!7292) s!2326))))

(assert (=> d!2110555 (validRegex!8275 (reg!16868 r!7292))))

(assert (=> d!2110555 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!698 (reg!16868 r!7292) s!2326) lt!2436086)))

(declare-fun m!7478694 () Bool)

(assert (=> bs!1786741 m!7478694))

(declare-fun m!7478696 () Bool)

(assert (=> bs!1786741 m!7478696))

(declare-fun m!7478698 () Bool)

(assert (=> bs!1786741 m!7478698))

(assert (=> bs!1786741 m!7478662))

(assert (=> b!6714035 d!2110555))

(declare-fun d!2110567 () Bool)

(assert (=> d!2110567 (= (Exists!3607 lambda!376413) (choose!50024 lambda!376413))))

(declare-fun bs!1786743 () Bool)

(assert (= bs!1786743 d!2110567))

(declare-fun m!7478700 () Bool)

(assert (=> bs!1786743 m!7478700))

(assert (=> b!6714035 d!2110567))

(declare-fun d!2110569 () Bool)

(assert (=> d!2110569 (= (isEmpty!38110 s!2326) ((_ is Nil!65794) s!2326))))

(assert (=> b!6714035 d!2110569))

(declare-fun b!6714349 () Bool)

(declare-fun res!2747750 () Bool)

(declare-fun e!4057643 () Bool)

(assert (=> b!6714349 (=> (not res!2747750) (not e!4057643))))

(declare-fun lt!2436106 () Option!16426)

(declare-fun get!22882 (Option!16426) tuple2!67028)

(assert (=> b!6714349 (= res!2747750 (matchR!8722 (reg!16868 r!7292) (_1!36817 (get!22882 lt!2436106))))))

(declare-fun b!6714350 () Bool)

(declare-fun e!4057645 () Option!16426)

(assert (=> b!6714350 (= e!4057645 (Some!16425 (tuple2!67029 Nil!65794 s!2326)))))

(declare-fun b!6714351 () Bool)

(declare-fun e!4057642 () Option!16426)

(assert (=> b!6714351 (= e!4057642 None!16425)))

(declare-fun d!2110571 () Bool)

(declare-fun e!4057640 () Bool)

(assert (=> d!2110571 e!4057640))

(declare-fun res!2747748 () Bool)

(assert (=> d!2110571 (=> res!2747748 e!4057640)))

(assert (=> d!2110571 (= res!2747748 e!4057643)))

(declare-fun res!2747749 () Bool)

(assert (=> d!2110571 (=> (not res!2747749) (not e!4057643))))

(assert (=> d!2110571 (= res!2747749 (isDefined!13129 lt!2436106))))

(assert (=> d!2110571 (= lt!2436106 e!4057645)))

(declare-fun c!1244927 () Bool)

(declare-fun e!4057644 () Bool)

(assert (=> d!2110571 (= c!1244927 e!4057644)))

(declare-fun res!2747751 () Bool)

(assert (=> d!2110571 (=> (not res!2747751) (not e!4057644))))

(assert (=> d!2110571 (= res!2747751 (matchR!8722 (reg!16868 r!7292) Nil!65794))))

(assert (=> d!2110571 (validRegex!8275 (reg!16868 r!7292))))

(assert (=> d!2110571 (= (findConcatSeparation!2840 (reg!16868 r!7292) r!7292 Nil!65794 s!2326 s!2326) lt!2436106)))

(declare-fun b!6714352 () Bool)

(declare-fun res!2747752 () Bool)

(assert (=> b!6714352 (=> (not res!2747752) (not e!4057643))))

(assert (=> b!6714352 (= res!2747752 (matchR!8722 r!7292 (_2!36817 (get!22882 lt!2436106))))))

(declare-fun b!6714353 () Bool)

(assert (=> b!6714353 (= e!4057645 e!4057642)))

(declare-fun c!1244928 () Bool)

(assert (=> b!6714353 (= c!1244928 ((_ is Nil!65794) s!2326))))

(declare-fun b!6714354 () Bool)

(declare-fun lt!2436107 () Unit!159769)

(declare-fun lt!2436105 () Unit!159769)

(assert (=> b!6714354 (= lt!2436107 lt!2436105)))

(declare-fun ++!14697 (List!65918 List!65918) List!65918)

(assert (=> b!6714354 (= (++!14697 (++!14697 Nil!65794 (Cons!65794 (h!72242 s!2326) Nil!65794)) (t!379595 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2670 (List!65918 C!33348 List!65918 List!65918) Unit!159769)

(assert (=> b!6714354 (= lt!2436105 (lemmaMoveElementToOtherListKeepsConcatEq!2670 Nil!65794 (h!72242 s!2326) (t!379595 s!2326) s!2326))))

(assert (=> b!6714354 (= e!4057642 (findConcatSeparation!2840 (reg!16868 r!7292) r!7292 (++!14697 Nil!65794 (Cons!65794 (h!72242 s!2326) Nil!65794)) (t!379595 s!2326) s!2326))))

(declare-fun b!6714355 () Bool)

(assert (=> b!6714355 (= e!4057643 (= (++!14697 (_1!36817 (get!22882 lt!2436106)) (_2!36817 (get!22882 lt!2436106))) s!2326))))

(declare-fun b!6714356 () Bool)

(assert (=> b!6714356 (= e!4057640 (not (isDefined!13129 lt!2436106)))))

(declare-fun b!6714357 () Bool)

(assert (=> b!6714357 (= e!4057644 (matchR!8722 r!7292 s!2326))))

(assert (= (and d!2110571 res!2747751) b!6714357))

(assert (= (and d!2110571 c!1244927) b!6714350))

(assert (= (and d!2110571 (not c!1244927)) b!6714353))

(assert (= (and b!6714353 c!1244928) b!6714351))

(assert (= (and b!6714353 (not c!1244928)) b!6714354))

(assert (= (and d!2110571 res!2747749) b!6714349))

(assert (= (and b!6714349 res!2747750) b!6714352))

(assert (= (and b!6714352 res!2747752) b!6714355))

(assert (= (and d!2110571 (not res!2747748)) b!6714356))

(declare-fun m!7478738 () Bool)

(assert (=> b!6714349 m!7478738))

(declare-fun m!7478740 () Bool)

(assert (=> b!6714349 m!7478740))

(assert (=> b!6714355 m!7478738))

(declare-fun m!7478742 () Bool)

(assert (=> b!6714355 m!7478742))

(assert (=> b!6714357 m!7478520))

(declare-fun m!7478744 () Bool)

(assert (=> d!2110571 m!7478744))

(declare-fun m!7478746 () Bool)

(assert (=> d!2110571 m!7478746))

(assert (=> d!2110571 m!7478662))

(declare-fun m!7478748 () Bool)

(assert (=> b!6714354 m!7478748))

(assert (=> b!6714354 m!7478748))

(declare-fun m!7478750 () Bool)

(assert (=> b!6714354 m!7478750))

(declare-fun m!7478752 () Bool)

(assert (=> b!6714354 m!7478752))

(assert (=> b!6714354 m!7478748))

(declare-fun m!7478754 () Bool)

(assert (=> b!6714354 m!7478754))

(assert (=> b!6714352 m!7478738))

(declare-fun m!7478756 () Bool)

(assert (=> b!6714352 m!7478756))

(assert (=> b!6714356 m!7478744))

(assert (=> b!6714035 d!2110571))

(declare-fun bs!1786762 () Bool)

(declare-fun d!2110583 () Bool)

(assert (= bs!1786762 (and d!2110583 d!2110541)))

(declare-fun lambda!376474 () Int)

(assert (=> bs!1786762 (= lambda!376474 lambda!376446)))

(declare-fun bs!1786763 () Bool)

(assert (= bs!1786763 (and d!2110583 b!6714035)))

(assert (=> bs!1786763 (not (= lambda!376474 lambda!376412))))

(assert (=> bs!1786763 (= lambda!376474 lambda!376411)))

(declare-fun bs!1786764 () Bool)

(assert (= bs!1786764 (and d!2110583 d!2110555)))

(assert (=> bs!1786764 (= (= r!7292 (Star!16539 (reg!16868 r!7292))) (= lambda!376474 lambda!376460))))

(assert (=> bs!1786762 (not (= lambda!376474 lambda!376448))))

(assert (=> bs!1786763 (not (= lambda!376474 lambda!376413))))

(assert (=> bs!1786764 (not (= lambda!376474 lambda!376461))))

(assert (=> d!2110583 true))

(assert (=> d!2110583 true))

(assert (=> d!2110583 true))

(assert (=> d!2110583 (= (isDefined!13129 (findConcatSeparation!2840 (reg!16868 r!7292) r!7292 Nil!65794 s!2326 s!2326)) (Exists!3607 lambda!376474))))

(declare-fun lt!2436113 () Unit!159769)

(declare-fun choose!50028 (Regex!16539 Regex!16539 List!65918) Unit!159769)

(assert (=> d!2110583 (= lt!2436113 (choose!50028 (reg!16868 r!7292) r!7292 s!2326))))

(assert (=> d!2110583 (validRegex!8275 (reg!16868 r!7292))))

(assert (=> d!2110583 (= (lemmaFindConcatSeparationEquivalentToExists!2604 (reg!16868 r!7292) r!7292 s!2326) lt!2436113)))

(declare-fun bs!1786765 () Bool)

(assert (= bs!1786765 d!2110583))

(declare-fun m!7478770 () Bool)

(assert (=> bs!1786765 m!7478770))

(declare-fun m!7478772 () Bool)

(assert (=> bs!1786765 m!7478772))

(assert (=> bs!1786765 m!7478548))

(assert (=> bs!1786765 m!7478662))

(assert (=> bs!1786765 m!7478548))

(assert (=> bs!1786765 m!7478550))

(assert (=> b!6714035 d!2110583))

(declare-fun d!2110591 () Bool)

(declare-fun lambda!376477 () Int)

(declare-fun exists!2687 ((InoxSet Context!11846) Int) Bool)

(assert (=> d!2110591 (= (nullableZipper!2266 z!1189) (exists!2687 z!1189 lambda!376477))))

(declare-fun bs!1786766 () Bool)

(assert (= bs!1786766 d!2110591))

(declare-fun m!7478774 () Bool)

(assert (=> bs!1786766 m!7478774))

(assert (=> b!6714019 d!2110591))

(declare-fun d!2110593 () Bool)

(declare-fun nullableFct!2442 (Regex!16539) Bool)

(assert (=> d!2110593 (= (nullable!6526 r!7292) (nullableFct!2442 r!7292))))

(declare-fun bs!1786767 () Bool)

(assert (= bs!1786767 d!2110593))

(declare-fun m!7478776 () Bool)

(assert (=> bs!1786767 m!7478776))

(assert (=> b!6714019 d!2110593))

(declare-fun d!2110595 () Bool)

(assert (=> d!2110595 (= (nullable!6526 r!7292) (nullableZipper!2266 z!1189))))

(declare-fun lt!2436116 () Unit!159769)

(declare-fun choose!50029 (Regex!16539 (InoxSet Context!11846)) Unit!159769)

(assert (=> d!2110595 (= lt!2436116 (choose!50029 r!7292 z!1189))))

(assert (=> d!2110595 (validRegex!8275 r!7292)))

(assert (=> d!2110595 (= (lemmaUnfocusPreservesNullability!34 r!7292 z!1189) lt!2436116)))

(declare-fun bs!1786768 () Bool)

(assert (= bs!1786768 d!2110595))

(assert (=> bs!1786768 m!7478526))

(assert (=> bs!1786768 m!7478524))

(declare-fun m!7478778 () Bool)

(assert (=> bs!1786768 m!7478778))

(assert (=> bs!1786768 m!7478516))

(assert (=> b!6714019 d!2110595))

(declare-fun bs!1786769 () Bool)

(declare-fun d!2110597 () Bool)

(assert (= bs!1786769 (and d!2110597 d!2110515)))

(declare-fun lambda!376480 () Int)

(assert (=> bs!1786769 (= lambda!376480 lambda!376416)))

(declare-fun bs!1786770 () Bool)

(assert (= bs!1786770 (and d!2110597 d!2110521)))

(assert (=> bs!1786770 (= lambda!376480 lambda!376425)))

(declare-fun bs!1786771 () Bool)

(assert (= bs!1786771 (and d!2110597 d!2110525)))

(assert (=> bs!1786771 (= lambda!376480 lambda!376428)))

(declare-fun b!6714438 () Bool)

(declare-fun e!4057689 () Bool)

(assert (=> b!6714438 (= e!4057689 (isEmpty!38113 (t!379593 (exprs!6423 (h!72241 zl!343)))))))

(declare-fun b!6714440 () Bool)

(declare-fun e!4057687 () Regex!16539)

(declare-fun e!4057688 () Regex!16539)

(assert (=> b!6714440 (= e!4057687 e!4057688)))

(declare-fun c!1244944 () Bool)

(assert (=> b!6714440 (= c!1244944 ((_ is Cons!65792) (exprs!6423 (h!72241 zl!343))))))

(declare-fun b!6714441 () Bool)

(declare-fun e!4057685 () Bool)

(declare-fun e!4057686 () Bool)

(assert (=> b!6714441 (= e!4057685 e!4057686)))

(declare-fun c!1244942 () Bool)

(assert (=> b!6714441 (= c!1244942 (isEmpty!38113 (exprs!6423 (h!72241 zl!343))))))

(declare-fun b!6714442 () Bool)

(declare-fun e!4057684 () Bool)

(declare-fun lt!2436119 () Regex!16539)

(assert (=> b!6714442 (= e!4057684 (= lt!2436119 (head!13509 (exprs!6423 (h!72241 zl!343)))))))

(declare-fun b!6714443 () Bool)

(assert (=> b!6714443 (= e!4057686 e!4057684)))

(declare-fun c!1244945 () Bool)

(assert (=> b!6714443 (= c!1244945 (isEmpty!38113 (tail!12594 (exprs!6423 (h!72241 zl!343)))))))

(declare-fun b!6714444 () Bool)

(declare-fun isEmptyExpr!1907 (Regex!16539) Bool)

(assert (=> b!6714444 (= e!4057686 (isEmptyExpr!1907 lt!2436119))))

(declare-fun b!6714445 () Bool)

(declare-fun isConcat!1430 (Regex!16539) Bool)

(assert (=> b!6714445 (= e!4057684 (isConcat!1430 lt!2436119))))

(declare-fun b!6714446 () Bool)

(assert (=> b!6714446 (= e!4057688 (Concat!25384 (h!72240 (exprs!6423 (h!72241 zl!343))) (generalisedConcat!2136 (t!379593 (exprs!6423 (h!72241 zl!343))))))))

(declare-fun b!6714447 () Bool)

(assert (=> b!6714447 (= e!4057687 (h!72240 (exprs!6423 (h!72241 zl!343))))))

(declare-fun b!6714439 () Bool)

(assert (=> b!6714439 (= e!4057688 EmptyExpr!16539)))

(assert (=> d!2110597 e!4057685))

(declare-fun res!2747761 () Bool)

(assert (=> d!2110597 (=> (not res!2747761) (not e!4057685))))

(assert (=> d!2110597 (= res!2747761 (validRegex!8275 lt!2436119))))

(assert (=> d!2110597 (= lt!2436119 e!4057687)))

(declare-fun c!1244943 () Bool)

(assert (=> d!2110597 (= c!1244943 e!4057689)))

(declare-fun res!2747762 () Bool)

(assert (=> d!2110597 (=> (not res!2747762) (not e!4057689))))

(assert (=> d!2110597 (= res!2747762 ((_ is Cons!65792) (exprs!6423 (h!72241 zl!343))))))

(assert (=> d!2110597 (forall!15741 (exprs!6423 (h!72241 zl!343)) lambda!376480)))

(assert (=> d!2110597 (= (generalisedConcat!2136 (exprs!6423 (h!72241 zl!343))) lt!2436119)))

(assert (= (and d!2110597 res!2747762) b!6714438))

(assert (= (and d!2110597 c!1244943) b!6714447))

(assert (= (and d!2110597 (not c!1244943)) b!6714440))

(assert (= (and b!6714440 c!1244944) b!6714446))

(assert (= (and b!6714440 (not c!1244944)) b!6714439))

(assert (= (and d!2110597 res!2747761) b!6714441))

(assert (= (and b!6714441 c!1244942) b!6714444))

(assert (= (and b!6714441 (not c!1244942)) b!6714443))

(assert (= (and b!6714443 c!1244945) b!6714442))

(assert (= (and b!6714443 (not c!1244945)) b!6714445))

(declare-fun m!7478780 () Bool)

(assert (=> b!6714446 m!7478780))

(declare-fun m!7478782 () Bool)

(assert (=> b!6714443 m!7478782))

(assert (=> b!6714443 m!7478782))

(declare-fun m!7478784 () Bool)

(assert (=> b!6714443 m!7478784))

(declare-fun m!7478786 () Bool)

(assert (=> b!6714445 m!7478786))

(declare-fun m!7478788 () Bool)

(assert (=> b!6714438 m!7478788))

(declare-fun m!7478790 () Bool)

(assert (=> b!6714442 m!7478790))

(declare-fun m!7478792 () Bool)

(assert (=> b!6714441 m!7478792))

(declare-fun m!7478794 () Bool)

(assert (=> b!6714444 m!7478794))

(declare-fun m!7478796 () Bool)

(assert (=> d!2110597 m!7478796))

(declare-fun m!7478798 () Bool)

(assert (=> d!2110597 m!7478798))

(assert (=> b!6714030 d!2110597))

(declare-fun d!2110599 () Bool)

(assert (=> d!2110599 (= (isEmpty!38109 (t!379594 zl!343)) ((_ is Nil!65793) (t!379594 zl!343)))))

(assert (=> b!6714018 d!2110599))

(declare-fun b!6714466 () Bool)

(declare-fun e!4057709 () Bool)

(declare-fun e!4057708 () Bool)

(assert (=> b!6714466 (= e!4057709 e!4057708)))

(declare-fun c!1244951 () Bool)

(assert (=> b!6714466 (= c!1244951 ((_ is Star!16539) r!7292))))

(declare-fun b!6714467 () Bool)

(declare-fun e!4057706 () Bool)

(declare-fun e!4057704 () Bool)

(assert (=> b!6714467 (= e!4057706 e!4057704)))

(declare-fun res!2747773 () Bool)

(assert (=> b!6714467 (=> (not res!2747773) (not e!4057704))))

(declare-fun call!606042 () Bool)

(assert (=> b!6714467 (= res!2747773 call!606042)))

(declare-fun bm!606037 () Bool)

(declare-fun call!606043 () Bool)

(assert (=> bm!606037 (= call!606042 call!606043)))

(declare-fun b!6714468 () Bool)

(declare-fun e!4057710 () Bool)

(assert (=> b!6714468 (= e!4057708 e!4057710)))

(declare-fun res!2747775 () Bool)

(assert (=> b!6714468 (= res!2747775 (not (nullable!6526 (reg!16868 r!7292))))))

(assert (=> b!6714468 (=> (not res!2747775) (not e!4057710))))

(declare-fun b!6714469 () Bool)

(declare-fun res!2747776 () Bool)

(declare-fun e!4057705 () Bool)

(assert (=> b!6714469 (=> (not res!2747776) (not e!4057705))))

(assert (=> b!6714469 (= res!2747776 call!606042)))

(declare-fun e!4057707 () Bool)

(assert (=> b!6714469 (= e!4057707 e!4057705)))

(declare-fun b!6714470 () Bool)

(declare-fun res!2747774 () Bool)

(assert (=> b!6714470 (=> res!2747774 e!4057706)))

(assert (=> b!6714470 (= res!2747774 (not ((_ is Concat!25384) r!7292)))))

(assert (=> b!6714470 (= e!4057707 e!4057706)))

(declare-fun b!6714471 () Bool)

(declare-fun call!606044 () Bool)

(assert (=> b!6714471 (= e!4057705 call!606044)))

(declare-fun bm!606038 () Bool)

(declare-fun c!1244950 () Bool)

(assert (=> bm!606038 (= call!606043 (validRegex!8275 (ite c!1244951 (reg!16868 r!7292) (ite c!1244950 (regOne!33591 r!7292) (regOne!33590 r!7292)))))))

(declare-fun b!6714472 () Bool)

(assert (=> b!6714472 (= e!4057704 call!606044)))

(declare-fun d!2110601 () Bool)

(declare-fun res!2747777 () Bool)

(assert (=> d!2110601 (=> res!2747777 e!4057709)))

(assert (=> d!2110601 (= res!2747777 ((_ is ElementMatch!16539) r!7292))))

(assert (=> d!2110601 (= (validRegex!8275 r!7292) e!4057709)))

(declare-fun b!6714473 () Bool)

(assert (=> b!6714473 (= e!4057710 call!606043)))

(declare-fun bm!606039 () Bool)

(assert (=> bm!606039 (= call!606044 (validRegex!8275 (ite c!1244950 (regTwo!33591 r!7292) (regTwo!33590 r!7292))))))

(declare-fun b!6714474 () Bool)

(assert (=> b!6714474 (= e!4057708 e!4057707)))

(assert (=> b!6714474 (= c!1244950 ((_ is Union!16539) r!7292))))

(assert (= (and d!2110601 (not res!2747777)) b!6714466))

(assert (= (and b!6714466 c!1244951) b!6714468))

(assert (= (and b!6714466 (not c!1244951)) b!6714474))

(assert (= (and b!6714468 res!2747775) b!6714473))

(assert (= (and b!6714474 c!1244950) b!6714469))

(assert (= (and b!6714474 (not c!1244950)) b!6714470))

(assert (= (and b!6714469 res!2747776) b!6714471))

(assert (= (and b!6714470 (not res!2747774)) b!6714467))

(assert (= (and b!6714467 res!2747773) b!6714472))

(assert (= (or b!6714471 b!6714472) bm!606039))

(assert (= (or b!6714469 b!6714467) bm!606037))

(assert (= (or b!6714473 bm!606037) bm!606038))

(declare-fun m!7478800 () Bool)

(assert (=> b!6714468 m!7478800))

(declare-fun m!7478802 () Bool)

(assert (=> bm!606038 m!7478802))

(declare-fun m!7478804 () Bool)

(assert (=> bm!606039 m!7478804))

(assert (=> start!651132 d!2110601))

(declare-fun bs!1786772 () Bool)

(declare-fun b!6714516 () Bool)

(assert (= bs!1786772 (and b!6714516 d!2110541)))

(declare-fun lambda!376485 () Int)

(assert (=> bs!1786772 (not (= lambda!376485 lambda!376446))))

(declare-fun bs!1786773 () Bool)

(assert (= bs!1786773 (and b!6714516 b!6714035)))

(assert (=> bs!1786773 (= lambda!376485 lambda!376412)))

(assert (=> bs!1786773 (not (= lambda!376485 lambda!376411))))

(declare-fun bs!1786774 () Bool)

(assert (= bs!1786774 (and b!6714516 d!2110555)))

(assert (=> bs!1786774 (not (= lambda!376485 lambda!376460))))

(assert (=> bs!1786772 (not (= lambda!376485 lambda!376448))))

(assert (=> bs!1786773 (not (= lambda!376485 lambda!376413))))

(declare-fun bs!1786775 () Bool)

(assert (= bs!1786775 (and b!6714516 d!2110583)))

(assert (=> bs!1786775 (not (= lambda!376485 lambda!376474))))

(assert (=> bs!1786774 (= (= r!7292 (Star!16539 (reg!16868 r!7292))) (= lambda!376485 lambda!376461))))

(assert (=> b!6714516 true))

(assert (=> b!6714516 true))

(declare-fun bs!1786776 () Bool)

(declare-fun b!6714513 () Bool)

(assert (= bs!1786776 (and b!6714513 d!2110541)))

(declare-fun lambda!376486 () Int)

(assert (=> bs!1786776 (not (= lambda!376486 lambda!376446))))

(declare-fun bs!1786777 () Bool)

(assert (= bs!1786777 (and b!6714513 b!6714035)))

(assert (=> bs!1786777 (not (= lambda!376486 lambda!376412))))

(declare-fun bs!1786778 () Bool)

(assert (= bs!1786778 (and b!6714513 b!6714516)))

(assert (=> bs!1786778 (not (= lambda!376486 lambda!376485))))

(assert (=> bs!1786777 (not (= lambda!376486 lambda!376411))))

(declare-fun bs!1786779 () Bool)

(assert (= bs!1786779 (and b!6714513 d!2110555)))

(assert (=> bs!1786779 (not (= lambda!376486 lambda!376460))))

(assert (=> bs!1786776 (= (and (= (regOne!33590 r!7292) (reg!16868 r!7292)) (= (regTwo!33590 r!7292) r!7292)) (= lambda!376486 lambda!376448))))

(assert (=> bs!1786777 (= (and (= (regOne!33590 r!7292) (reg!16868 r!7292)) (= (regTwo!33590 r!7292) r!7292)) (= lambda!376486 lambda!376413))))

(declare-fun bs!1786780 () Bool)

(assert (= bs!1786780 (and b!6714513 d!2110583)))

(assert (=> bs!1786780 (not (= lambda!376486 lambda!376474))))

(assert (=> bs!1786779 (not (= lambda!376486 lambda!376461))))

(assert (=> b!6714513 true))

(assert (=> b!6714513 true))

(declare-fun b!6714507 () Bool)

(declare-fun e!4057731 () Bool)

(declare-fun call!606049 () Bool)

(assert (=> b!6714507 (= e!4057731 call!606049)))

(declare-fun b!6714508 () Bool)

(declare-fun c!1244962 () Bool)

(assert (=> b!6714508 (= c!1244962 ((_ is Union!16539) r!7292))))

(declare-fun e!4057730 () Bool)

(declare-fun e!4057734 () Bool)

(assert (=> b!6714508 (= e!4057730 e!4057734)))

(declare-fun b!6714509 () Bool)

(declare-fun e!4057732 () Bool)

(assert (=> b!6714509 (= e!4057734 e!4057732)))

(declare-fun res!2747794 () Bool)

(assert (=> b!6714509 (= res!2747794 (matchRSpec!3640 (regOne!33591 r!7292) s!2326))))

(assert (=> b!6714509 (=> res!2747794 e!4057732)))

(declare-fun b!6714510 () Bool)

(declare-fun c!1244960 () Bool)

(assert (=> b!6714510 (= c!1244960 ((_ is ElementMatch!16539) r!7292))))

(declare-fun e!4057729 () Bool)

(assert (=> b!6714510 (= e!4057729 e!4057730)))

(declare-fun bm!606044 () Bool)

(assert (=> bm!606044 (= call!606049 (isEmpty!38110 s!2326))))

(declare-fun b!6714512 () Bool)

(assert (=> b!6714512 (= e!4057730 (= s!2326 (Cons!65794 (c!1244845 r!7292) Nil!65794)))))

(declare-fun call!606050 () Bool)

(declare-fun bm!606045 () Bool)

(declare-fun c!1244963 () Bool)

(assert (=> bm!606045 (= call!606050 (Exists!3607 (ite c!1244963 lambda!376485 lambda!376486)))))

(declare-fun e!4057733 () Bool)

(assert (=> b!6714513 (= e!4057733 call!606050)))

(declare-fun b!6714514 () Bool)

(assert (=> b!6714514 (= e!4057732 (matchRSpec!3640 (regTwo!33591 r!7292) s!2326))))

(declare-fun b!6714515 () Bool)

(assert (=> b!6714515 (= e!4057734 e!4057733)))

(assert (=> b!6714515 (= c!1244963 ((_ is Star!16539) r!7292))))

(declare-fun b!6714511 () Bool)

(assert (=> b!6714511 (= e!4057731 e!4057729)))

(declare-fun res!2747795 () Bool)

(assert (=> b!6714511 (= res!2747795 (not ((_ is EmptyLang!16539) r!7292)))))

(assert (=> b!6714511 (=> (not res!2747795) (not e!4057729))))

(declare-fun d!2110603 () Bool)

(declare-fun c!1244961 () Bool)

(assert (=> d!2110603 (= c!1244961 ((_ is EmptyExpr!16539) r!7292))))

(assert (=> d!2110603 (= (matchRSpec!3640 r!7292 s!2326) e!4057731)))

(declare-fun e!4057735 () Bool)

(assert (=> b!6714516 (= e!4057735 call!606050)))

(declare-fun b!6714517 () Bool)

(declare-fun res!2747796 () Bool)

(assert (=> b!6714517 (=> res!2747796 e!4057735)))

(assert (=> b!6714517 (= res!2747796 call!606049)))

(assert (=> b!6714517 (= e!4057733 e!4057735)))

(assert (= (and d!2110603 c!1244961) b!6714507))

(assert (= (and d!2110603 (not c!1244961)) b!6714511))

(assert (= (and b!6714511 res!2747795) b!6714510))

(assert (= (and b!6714510 c!1244960) b!6714512))

(assert (= (and b!6714510 (not c!1244960)) b!6714508))

(assert (= (and b!6714508 c!1244962) b!6714509))

(assert (= (and b!6714508 (not c!1244962)) b!6714515))

(assert (= (and b!6714509 (not res!2747794)) b!6714514))

(assert (= (and b!6714515 c!1244963) b!6714517))

(assert (= (and b!6714515 (not c!1244963)) b!6714513))

(assert (= (and b!6714517 (not res!2747796)) b!6714516))

(assert (= (or b!6714516 b!6714513) bm!606045))

(assert (= (or b!6714507 b!6714517) bm!606044))

(declare-fun m!7478806 () Bool)

(assert (=> b!6714509 m!7478806))

(assert (=> bm!606044 m!7478554))

(declare-fun m!7478808 () Bool)

(assert (=> bm!606045 m!7478808))

(declare-fun m!7478810 () Bool)

(assert (=> b!6714514 m!7478810))

(assert (=> b!6714034 d!2110603))

(declare-fun b!6714546 () Bool)

(declare-fun e!4057756 () Bool)

(declare-fun e!4057755 () Bool)

(assert (=> b!6714546 (= e!4057756 e!4057755)))

(declare-fun res!2747813 () Bool)

(assert (=> b!6714546 (=> res!2747813 e!4057755)))

(declare-fun call!606053 () Bool)

(assert (=> b!6714546 (= res!2747813 call!606053)))

(declare-fun d!2110605 () Bool)

(declare-fun e!4057750 () Bool)

(assert (=> d!2110605 e!4057750))

(declare-fun c!1244972 () Bool)

(assert (=> d!2110605 (= c!1244972 ((_ is EmptyExpr!16539) r!7292))))

(declare-fun lt!2436122 () Bool)

(declare-fun e!4057752 () Bool)

(assert (=> d!2110605 (= lt!2436122 e!4057752)))

(declare-fun c!1244971 () Bool)

(assert (=> d!2110605 (= c!1244971 (isEmpty!38110 s!2326))))

(assert (=> d!2110605 (validRegex!8275 r!7292)))

(assert (=> d!2110605 (= (matchR!8722 r!7292 s!2326) lt!2436122)))

(declare-fun b!6714547 () Bool)

(declare-fun derivativeStep!5213 (Regex!16539 C!33348) Regex!16539)

(declare-fun head!13510 (List!65918) C!33348)

(declare-fun tail!12595 (List!65918) List!65918)

(assert (=> b!6714547 (= e!4057752 (matchR!8722 (derivativeStep!5213 r!7292 (head!13510 s!2326)) (tail!12595 s!2326)))))

(declare-fun b!6714548 () Bool)

(declare-fun e!4057753 () Bool)

(assert (=> b!6714548 (= e!4057753 (= (head!13510 s!2326) (c!1244845 r!7292)))))

(declare-fun b!6714549 () Bool)

(declare-fun res!2747815 () Bool)

(assert (=> b!6714549 (=> res!2747815 e!4057755)))

(assert (=> b!6714549 (= res!2747815 (not (isEmpty!38110 (tail!12595 s!2326))))))

(declare-fun b!6714550 () Bool)

(declare-fun res!2747817 () Bool)

(assert (=> b!6714550 (=> (not res!2747817) (not e!4057753))))

(assert (=> b!6714550 (= res!2747817 (not call!606053))))

(declare-fun bm!606048 () Bool)

(assert (=> bm!606048 (= call!606053 (isEmpty!38110 s!2326))))

(declare-fun b!6714551 () Bool)

(assert (=> b!6714551 (= e!4057752 (nullable!6526 r!7292))))

(declare-fun b!6714552 () Bool)

(declare-fun res!2747814 () Bool)

(assert (=> b!6714552 (=> (not res!2747814) (not e!4057753))))

(assert (=> b!6714552 (= res!2747814 (isEmpty!38110 (tail!12595 s!2326)))))

(declare-fun b!6714553 () Bool)

(declare-fun res!2747816 () Bool)

(declare-fun e!4057751 () Bool)

(assert (=> b!6714553 (=> res!2747816 e!4057751)))

(assert (=> b!6714553 (= res!2747816 e!4057753)))

(declare-fun res!2747819 () Bool)

(assert (=> b!6714553 (=> (not res!2747819) (not e!4057753))))

(assert (=> b!6714553 (= res!2747819 lt!2436122)))

(declare-fun b!6714554 () Bool)

(assert (=> b!6714554 (= e!4057755 (not (= (head!13510 s!2326) (c!1244845 r!7292))))))

(declare-fun b!6714555 () Bool)

(declare-fun res!2747818 () Bool)

(assert (=> b!6714555 (=> res!2747818 e!4057751)))

(assert (=> b!6714555 (= res!2747818 (not ((_ is ElementMatch!16539) r!7292)))))

(declare-fun e!4057754 () Bool)

(assert (=> b!6714555 (= e!4057754 e!4057751)))

(declare-fun b!6714556 () Bool)

(assert (=> b!6714556 (= e!4057754 (not lt!2436122))))

(declare-fun b!6714557 () Bool)

(assert (=> b!6714557 (= e!4057750 e!4057754)))

(declare-fun c!1244970 () Bool)

(assert (=> b!6714557 (= c!1244970 ((_ is EmptyLang!16539) r!7292))))

(declare-fun b!6714558 () Bool)

(assert (=> b!6714558 (= e!4057751 e!4057756)))

(declare-fun res!2747820 () Bool)

(assert (=> b!6714558 (=> (not res!2747820) (not e!4057756))))

(assert (=> b!6714558 (= res!2747820 (not lt!2436122))))

(declare-fun b!6714559 () Bool)

(assert (=> b!6714559 (= e!4057750 (= lt!2436122 call!606053))))

(assert (= (and d!2110605 c!1244971) b!6714551))

(assert (= (and d!2110605 (not c!1244971)) b!6714547))

(assert (= (and d!2110605 c!1244972) b!6714559))

(assert (= (and d!2110605 (not c!1244972)) b!6714557))

(assert (= (and b!6714557 c!1244970) b!6714556))

(assert (= (and b!6714557 (not c!1244970)) b!6714555))

(assert (= (and b!6714555 (not res!2747818)) b!6714553))

(assert (= (and b!6714553 res!2747819) b!6714550))

(assert (= (and b!6714550 res!2747817) b!6714552))

(assert (= (and b!6714552 res!2747814) b!6714548))

(assert (= (and b!6714553 (not res!2747816)) b!6714558))

(assert (= (and b!6714558 res!2747820) b!6714546))

(assert (= (and b!6714546 (not res!2747813)) b!6714549))

(assert (= (and b!6714549 (not res!2747815)) b!6714554))

(assert (= (or b!6714559 b!6714546 b!6714550) bm!606048))

(declare-fun m!7478812 () Bool)

(assert (=> b!6714552 m!7478812))

(assert (=> b!6714552 m!7478812))

(declare-fun m!7478814 () Bool)

(assert (=> b!6714552 m!7478814))

(declare-fun m!7478816 () Bool)

(assert (=> b!6714548 m!7478816))

(assert (=> b!6714547 m!7478816))

(assert (=> b!6714547 m!7478816))

(declare-fun m!7478818 () Bool)

(assert (=> b!6714547 m!7478818))

(assert (=> b!6714547 m!7478812))

(assert (=> b!6714547 m!7478818))

(assert (=> b!6714547 m!7478812))

(declare-fun m!7478820 () Bool)

(assert (=> b!6714547 m!7478820))

(assert (=> bm!606048 m!7478554))

(assert (=> d!2110605 m!7478554))

(assert (=> d!2110605 m!7478516))

(assert (=> b!6714549 m!7478812))

(assert (=> b!6714549 m!7478812))

(assert (=> b!6714549 m!7478814))

(assert (=> b!6714551 m!7478526))

(assert (=> b!6714554 m!7478816))

(assert (=> b!6714034 d!2110605))

(declare-fun d!2110607 () Bool)

(assert (=> d!2110607 (= (matchR!8722 r!7292 s!2326) (matchRSpec!3640 r!7292 s!2326))))

(declare-fun lt!2436125 () Unit!159769)

(declare-fun choose!50030 (Regex!16539 List!65918) Unit!159769)

(assert (=> d!2110607 (= lt!2436125 (choose!50030 r!7292 s!2326))))

(assert (=> d!2110607 (validRegex!8275 r!7292)))

(assert (=> d!2110607 (= (mainMatchTheorem!3640 r!7292 s!2326) lt!2436125)))

(declare-fun bs!1786781 () Bool)

(assert (= bs!1786781 d!2110607))

(assert (=> bs!1786781 m!7478520))

(assert (=> bs!1786781 m!7478518))

(declare-fun m!7478822 () Bool)

(assert (=> bs!1786781 m!7478822))

(assert (=> bs!1786781 m!7478516))

(assert (=> b!6714034 d!2110607))

(declare-fun d!2110609 () Bool)

(declare-fun lt!2436128 () Regex!16539)

(assert (=> d!2110609 (validRegex!8275 lt!2436128)))

(assert (=> d!2110609 (= lt!2436128 (generalisedUnion!2383 (unfocusZipperList!1960 zl!343)))))

(assert (=> d!2110609 (= (unfocusZipper!2281 zl!343) lt!2436128)))

(declare-fun bs!1786782 () Bool)

(assert (= bs!1786782 d!2110609))

(declare-fun m!7478824 () Bool)

(assert (=> bs!1786782 m!7478824))

(assert (=> bs!1786782 m!7478512))

(assert (=> bs!1786782 m!7478512))

(assert (=> bs!1786782 m!7478514))

(assert (=> b!6714024 d!2110609))

(declare-fun d!2110611 () Bool)

(declare-fun c!1244975 () Bool)

(assert (=> d!2110611 (= c!1244975 (isEmpty!38110 s!2326))))

(declare-fun e!4057759 () Bool)

(assert (=> d!2110611 (= (matchZipper!2537 z!1189 s!2326) e!4057759)))

(declare-fun b!6714564 () Bool)

(assert (=> b!6714564 (= e!4057759 (nullableZipper!2266 z!1189))))

(declare-fun b!6714565 () Bool)

(declare-fun derivationStepZipper!2491 ((InoxSet Context!11846) C!33348) (InoxSet Context!11846))

(assert (=> b!6714565 (= e!4057759 (matchZipper!2537 (derivationStepZipper!2491 z!1189 (head!13510 s!2326)) (tail!12595 s!2326)))))

(assert (= (and d!2110611 c!1244975) b!6714564))

(assert (= (and d!2110611 (not c!1244975)) b!6714565))

(assert (=> d!2110611 m!7478554))

(assert (=> b!6714564 m!7478524))

(assert (=> b!6714565 m!7478816))

(assert (=> b!6714565 m!7478816))

(declare-fun m!7478826 () Bool)

(assert (=> b!6714565 m!7478826))

(assert (=> b!6714565 m!7478812))

(assert (=> b!6714565 m!7478826))

(assert (=> b!6714565 m!7478812))

(declare-fun m!7478828 () Bool)

(assert (=> b!6714565 m!7478828))

(assert (=> b!6714023 d!2110611))

(declare-fun bs!1786783 () Bool)

(declare-fun d!2110613 () Bool)

(assert (= bs!1786783 (and d!2110613 d!2110515)))

(declare-fun lambda!376487 () Int)

(assert (=> bs!1786783 (= lambda!376487 lambda!376416)))

(declare-fun bs!1786784 () Bool)

(assert (= bs!1786784 (and d!2110613 d!2110521)))

(assert (=> bs!1786784 (= lambda!376487 lambda!376425)))

(declare-fun bs!1786785 () Bool)

(assert (= bs!1786785 (and d!2110613 d!2110525)))

(assert (=> bs!1786785 (= lambda!376487 lambda!376428)))

(declare-fun bs!1786786 () Bool)

(assert (= bs!1786786 (and d!2110613 d!2110597)))

(assert (=> bs!1786786 (= lambda!376487 lambda!376480)))

(assert (=> d!2110613 (= (inv!84594 setElem!45753) (forall!15741 (exprs!6423 setElem!45753) lambda!376487))))

(declare-fun bs!1786787 () Bool)

(assert (= bs!1786787 d!2110613))

(declare-fun m!7478830 () Bool)

(assert (=> bs!1786787 m!7478830))

(assert (=> setNonEmpty!45753 d!2110613))

(declare-fun b!6714573 () Bool)

(declare-fun e!4057765 () Bool)

(declare-fun tp!1840104 () Bool)

(assert (=> b!6714573 (= e!4057765 tp!1840104)))

(declare-fun tp!1840105 () Bool)

(declare-fun b!6714572 () Bool)

(declare-fun e!4057764 () Bool)

(assert (=> b!6714572 (= e!4057764 (and (inv!84594 (h!72241 (t!379594 zl!343))) e!4057765 tp!1840105))))

(assert (=> b!6714027 (= tp!1840033 e!4057764)))

(assert (= b!6714572 b!6714573))

(assert (= (and b!6714027 ((_ is Cons!65793) (t!379594 zl!343))) b!6714572))

(declare-fun m!7478832 () Bool)

(assert (=> b!6714572 m!7478832))

(declare-fun b!6714578 () Bool)

(declare-fun e!4057768 () Bool)

(declare-fun tp!1840108 () Bool)

(assert (=> b!6714578 (= e!4057768 (and tp_is_empty!42331 tp!1840108))))

(assert (=> b!6714016 (= tp!1840041 e!4057768)))

(assert (= (and b!6714016 ((_ is Cons!65794) (t!379595 s!2326))) b!6714578))

(declare-fun b!6714583 () Bool)

(declare-fun e!4057771 () Bool)

(declare-fun tp!1840113 () Bool)

(declare-fun tp!1840114 () Bool)

(assert (=> b!6714583 (= e!4057771 (and tp!1840113 tp!1840114))))

(assert (=> b!6714032 (= tp!1840032 e!4057771)))

(assert (= (and b!6714032 ((_ is Cons!65792) (exprs!6423 setElem!45753))) b!6714583))

(declare-fun b!6714584 () Bool)

(declare-fun e!4057772 () Bool)

(declare-fun tp!1840115 () Bool)

(declare-fun tp!1840116 () Bool)

(assert (=> b!6714584 (= e!4057772 (and tp!1840115 tp!1840116))))

(assert (=> b!6714029 (= tp!1840040 e!4057772)))

(assert (= (and b!6714029 ((_ is Cons!65792) (exprs!6423 (h!72241 zl!343)))) b!6714584))

(declare-fun condSetEmpty!45759 () Bool)

(assert (=> setNonEmpty!45753 (= condSetEmpty!45759 (= setRest!45753 ((as const (Array Context!11846 Bool)) false)))))

(declare-fun setRes!45759 () Bool)

(assert (=> setNonEmpty!45753 (= tp!1840038 setRes!45759)))

(declare-fun setIsEmpty!45759 () Bool)

(assert (=> setIsEmpty!45759 setRes!45759))

(declare-fun setElem!45759 () Context!11846)

(declare-fun tp!1840121 () Bool)

(declare-fun e!4057775 () Bool)

(declare-fun setNonEmpty!45759 () Bool)

(assert (=> setNonEmpty!45759 (= setRes!45759 (and tp!1840121 (inv!84594 setElem!45759) e!4057775))))

(declare-fun setRest!45759 () (InoxSet Context!11846))

(assert (=> setNonEmpty!45759 (= setRest!45753 ((_ map or) (store ((as const (Array Context!11846 Bool)) false) setElem!45759 true) setRest!45759))))

(declare-fun b!6714589 () Bool)

(declare-fun tp!1840122 () Bool)

(assert (=> b!6714589 (= e!4057775 tp!1840122)))

(assert (= (and setNonEmpty!45753 condSetEmpty!45759) setIsEmpty!45759))

(assert (= (and setNonEmpty!45753 (not condSetEmpty!45759)) setNonEmpty!45759))

(assert (= setNonEmpty!45759 b!6714589))

(declare-fun m!7478834 () Bool)

(assert (=> setNonEmpty!45759 m!7478834))

(declare-fun b!6714602 () Bool)

(declare-fun e!4057778 () Bool)

(declare-fun tp!1840137 () Bool)

(assert (=> b!6714602 (= e!4057778 tp!1840137)))

(declare-fun b!6714600 () Bool)

(assert (=> b!6714600 (= e!4057778 tp_is_empty!42331)))

(declare-fun b!6714601 () Bool)

(declare-fun tp!1840136 () Bool)

(declare-fun tp!1840133 () Bool)

(assert (=> b!6714601 (= e!4057778 (and tp!1840136 tp!1840133))))

(assert (=> b!6714017 (= tp!1840035 e!4057778)))

(declare-fun b!6714603 () Bool)

(declare-fun tp!1840134 () Bool)

(declare-fun tp!1840135 () Bool)

(assert (=> b!6714603 (= e!4057778 (and tp!1840134 tp!1840135))))

(assert (= (and b!6714017 ((_ is ElementMatch!16539) (regOne!33591 r!7292))) b!6714600))

(assert (= (and b!6714017 ((_ is Concat!25384) (regOne!33591 r!7292))) b!6714601))

(assert (= (and b!6714017 ((_ is Star!16539) (regOne!33591 r!7292))) b!6714602))

(assert (= (and b!6714017 ((_ is Union!16539) (regOne!33591 r!7292))) b!6714603))

(declare-fun b!6714606 () Bool)

(declare-fun e!4057779 () Bool)

(declare-fun tp!1840142 () Bool)

(assert (=> b!6714606 (= e!4057779 tp!1840142)))

(declare-fun b!6714604 () Bool)

(assert (=> b!6714604 (= e!4057779 tp_is_empty!42331)))

(declare-fun b!6714605 () Bool)

(declare-fun tp!1840141 () Bool)

(declare-fun tp!1840138 () Bool)

(assert (=> b!6714605 (= e!4057779 (and tp!1840141 tp!1840138))))

(assert (=> b!6714017 (= tp!1840036 e!4057779)))

(declare-fun b!6714607 () Bool)

(declare-fun tp!1840139 () Bool)

(declare-fun tp!1840140 () Bool)

(assert (=> b!6714607 (= e!4057779 (and tp!1840139 tp!1840140))))

(assert (= (and b!6714017 ((_ is ElementMatch!16539) (regTwo!33591 r!7292))) b!6714604))

(assert (= (and b!6714017 ((_ is Concat!25384) (regTwo!33591 r!7292))) b!6714605))

(assert (= (and b!6714017 ((_ is Star!16539) (regTwo!33591 r!7292))) b!6714606))

(assert (= (and b!6714017 ((_ is Union!16539) (regTwo!33591 r!7292))) b!6714607))

(declare-fun b!6714610 () Bool)

(declare-fun e!4057780 () Bool)

(declare-fun tp!1840147 () Bool)

(assert (=> b!6714610 (= e!4057780 tp!1840147)))

(declare-fun b!6714608 () Bool)

(assert (=> b!6714608 (= e!4057780 tp_is_empty!42331)))

(declare-fun b!6714609 () Bool)

(declare-fun tp!1840146 () Bool)

(declare-fun tp!1840143 () Bool)

(assert (=> b!6714609 (= e!4057780 (and tp!1840146 tp!1840143))))

(assert (=> b!6714033 (= tp!1840037 e!4057780)))

(declare-fun b!6714611 () Bool)

(declare-fun tp!1840144 () Bool)

(declare-fun tp!1840145 () Bool)

(assert (=> b!6714611 (= e!4057780 (and tp!1840144 tp!1840145))))

(assert (= (and b!6714033 ((_ is ElementMatch!16539) (regOne!33590 r!7292))) b!6714608))

(assert (= (and b!6714033 ((_ is Concat!25384) (regOne!33590 r!7292))) b!6714609))

(assert (= (and b!6714033 ((_ is Star!16539) (regOne!33590 r!7292))) b!6714610))

(assert (= (and b!6714033 ((_ is Union!16539) (regOne!33590 r!7292))) b!6714611))

(declare-fun b!6714614 () Bool)

(declare-fun e!4057781 () Bool)

(declare-fun tp!1840152 () Bool)

(assert (=> b!6714614 (= e!4057781 tp!1840152)))

(declare-fun b!6714612 () Bool)

(assert (=> b!6714612 (= e!4057781 tp_is_empty!42331)))

(declare-fun b!6714613 () Bool)

(declare-fun tp!1840151 () Bool)

(declare-fun tp!1840148 () Bool)

(assert (=> b!6714613 (= e!4057781 (and tp!1840151 tp!1840148))))

(assert (=> b!6714033 (= tp!1840039 e!4057781)))

(declare-fun b!6714615 () Bool)

(declare-fun tp!1840149 () Bool)

(declare-fun tp!1840150 () Bool)

(assert (=> b!6714615 (= e!4057781 (and tp!1840149 tp!1840150))))

(assert (= (and b!6714033 ((_ is ElementMatch!16539) (regTwo!33590 r!7292))) b!6714612))

(assert (= (and b!6714033 ((_ is Concat!25384) (regTwo!33590 r!7292))) b!6714613))

(assert (= (and b!6714033 ((_ is Star!16539) (regTwo!33590 r!7292))) b!6714614))

(assert (= (and b!6714033 ((_ is Union!16539) (regTwo!33590 r!7292))) b!6714615))

(declare-fun b!6714618 () Bool)

(declare-fun e!4057782 () Bool)

(declare-fun tp!1840157 () Bool)

(assert (=> b!6714618 (= e!4057782 tp!1840157)))

(declare-fun b!6714616 () Bool)

(assert (=> b!6714616 (= e!4057782 tp_is_empty!42331)))

(declare-fun b!6714617 () Bool)

(declare-fun tp!1840156 () Bool)

(declare-fun tp!1840153 () Bool)

(assert (=> b!6714617 (= e!4057782 (and tp!1840156 tp!1840153))))

(assert (=> b!6714028 (= tp!1840034 e!4057782)))

(declare-fun b!6714619 () Bool)

(declare-fun tp!1840154 () Bool)

(declare-fun tp!1840155 () Bool)

(assert (=> b!6714619 (= e!4057782 (and tp!1840154 tp!1840155))))

(assert (= (and b!6714028 ((_ is ElementMatch!16539) (reg!16868 r!7292))) b!6714616))

(assert (= (and b!6714028 ((_ is Concat!25384) (reg!16868 r!7292))) b!6714617))

(assert (= (and b!6714028 ((_ is Star!16539) (reg!16868 r!7292))) b!6714618))

(assert (= (and b!6714028 ((_ is Union!16539) (reg!16868 r!7292))) b!6714619))

(check-sat (not b!6714356) (not d!2110531) (not d!2110541) (not b!6714548) (not b!6714584) (not b!6714565) (not b!6714349) (not b!6714357) (not b!6714549) (not b!6714617) (not d!2110537) (not bm!606048) (not b!6714610) (not b!6714615) (not d!2110611) (not d!2110571) (not b!6714601) (not d!2110605) (not bm!606039) (not b!6714443) (not b!6714573) (not b!6714442) (not bm!606045) (not d!2110591) (not b!6714547) (not b!6714583) (not d!2110517) (not b!6714354) (not b!6714611) (not bm!606038) (not b!6714108) (not b!6714111) (not b!6714618) (not b!6714446) (not b!6714613) (not b!6714444) (not b!6714554) (not b!6714115) (not b!6714514) (not d!2110567) (not b!6714114) (not d!2110539) (not b!6714603) (not b!6714509) (not b!6714609) (not b!6714602) (not d!2110613) tp_is_empty!42331 (not b!6714438) (not b!6714572) (not b!6714605) (not d!2110555) (not bm!606044) (not b!6714606) (not b!6714441) (not b!6714109) (not b!6714614) (not b!6714110) (not b!6714551) (not b!6714619) (not b!6714607) (not b!6714578) (not d!2110595) (not d!2110583) (not b!6714589) (not d!2110515) (not b!6714552) (not d!2110525) (not b!6714445) (not d!2110607) (not d!2110597) (not b!6714355) (not b!6714468) (not b!6714162) (not d!2110593) (not setNonEmpty!45759) (not d!2110521) (not b!6714352) (not b!6714112) (not b!6714042) (not b!6714564) (not d!2110609))
(check-sat)
