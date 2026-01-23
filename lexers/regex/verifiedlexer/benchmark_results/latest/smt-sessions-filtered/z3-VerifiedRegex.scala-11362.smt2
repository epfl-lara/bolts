; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!602060 () Bool)

(assert start!602060)

(declare-fun b!5920469 () Bool)

(assert (=> b!5920469 true))

(assert (=> b!5920469 true))

(declare-fun lambda!322949 () Int)

(declare-fun lambda!322948 () Int)

(assert (=> b!5920469 (not (= lambda!322949 lambda!322948))))

(assert (=> b!5920469 true))

(assert (=> b!5920469 true))

(declare-fun b!5920465 () Bool)

(assert (=> b!5920465 true))

(declare-fun b!5920464 () Bool)

(declare-fun res!2481793 () Bool)

(declare-fun e!3624513 () Bool)

(assert (=> b!5920464 (=> res!2481793 e!3624513)))

(declare-datatypes ((C!32212 0))(
  ( (C!32213 (val!25808 Int)) )
))
(declare-datatypes ((Regex!15971 0))(
  ( (ElementMatch!15971 (c!1052179 C!32212)) (Concat!24816 (regOne!32454 Regex!15971) (regTwo!32454 Regex!15971)) (EmptyExpr!15971) (Star!15971 (reg!16300 Regex!15971)) (EmptyLang!15971) (Union!15971 (regOne!32455 Regex!15971) (regTwo!32455 Regex!15971)) )
))
(declare-datatypes ((List!64212 0))(
  ( (Nil!64088) (Cons!64088 (h!70536 Regex!15971) (t!377603 List!64212)) )
))
(declare-datatypes ((Context!10710 0))(
  ( (Context!10711 (exprs!5855 List!64212)) )
))
(declare-datatypes ((List!64213 0))(
  ( (Nil!64089) (Cons!64089 (h!70537 Context!10710) (t!377604 List!64213)) )
))
(declare-fun zl!343 () List!64213)

(get-info :version)

(assert (=> b!5920464 (= res!2481793 (not ((_ is Cons!64088) (exprs!5855 (h!70537 zl!343)))))))

(declare-fun res!2481801 () Bool)

(declare-fun e!3624514 () Bool)

(assert (=> start!602060 (=> (not res!2481801) (not e!3624514))))

(declare-fun r!7292 () Regex!15971)

(declare-fun validRegex!7707 (Regex!15971) Bool)

(assert (=> start!602060 (= res!2481801 (validRegex!7707 r!7292))))

(assert (=> start!602060 e!3624514))

(declare-fun e!3624509 () Bool)

(assert (=> start!602060 e!3624509))

(declare-fun condSetEmpty!40176 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10710))

(assert (=> start!602060 (= condSetEmpty!40176 (= z!1189 ((as const (Array Context!10710 Bool)) false)))))

(declare-fun setRes!40176 () Bool)

(assert (=> start!602060 setRes!40176))

(declare-fun e!3624515 () Bool)

(assert (=> start!602060 e!3624515))

(declare-fun e!3624517 () Bool)

(assert (=> start!602060 e!3624517))

(declare-fun e!3624512 () Bool)

(declare-fun e!3624516 () Bool)

(assert (=> b!5920465 (= e!3624512 e!3624516)))

(declare-fun res!2481792 () Bool)

(assert (=> b!5920465 (=> res!2481792 e!3624516)))

(declare-datatypes ((List!64214 0))(
  ( (Nil!64090) (Cons!64090 (h!70538 C!32212) (t!377605 List!64214)) )
))
(declare-fun s!2326 () List!64214)

(declare-fun lt!2309942 () (InoxSet Context!10710))

(declare-fun derivationStepZipper!1952 ((InoxSet Context!10710) C!32212) (InoxSet Context!10710))

(assert (=> b!5920465 (= res!2481792 (not (= (derivationStepZipper!1952 z!1189 (h!70538 s!2326)) lt!2309942)))))

(declare-fun lambda!322950 () Int)

(declare-fun flatMap!1484 ((InoxSet Context!10710) Int) (InoxSet Context!10710))

(declare-fun derivationStepZipperUp!1147 (Context!10710 C!32212) (InoxSet Context!10710))

(assert (=> b!5920465 (= (flatMap!1484 z!1189 lambda!322950) (derivationStepZipperUp!1147 (h!70537 zl!343) (h!70538 s!2326)))))

(declare-datatypes ((Unit!157213 0))(
  ( (Unit!157214) )
))
(declare-fun lt!2309944 () Unit!157213)

(declare-fun lemmaFlatMapOnSingletonSet!1010 ((InoxSet Context!10710) Context!10710 Int) Unit!157213)

(assert (=> b!5920465 (= lt!2309944 (lemmaFlatMapOnSingletonSet!1010 z!1189 (h!70537 zl!343) lambda!322950))))

(declare-fun b!5920466 () Bool)

(declare-fun res!2481797 () Bool)

(assert (=> b!5920466 (=> res!2481797 e!3624513)))

(declare-fun generalisedConcat!1568 (List!64212) Regex!15971)

(assert (=> b!5920466 (= res!2481797 (not (= r!7292 (generalisedConcat!1568 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5920467 () Bool)

(declare-fun res!2481791 () Bool)

(assert (=> b!5920467 (=> res!2481791 e!3624513)))

(declare-fun isEmpty!35945 (List!64213) Bool)

(assert (=> b!5920467 (= res!2481791 (not (isEmpty!35945 (t!377604 zl!343))))))

(declare-fun b!5920468 () Bool)

(declare-fun inv!83174 (Context!10710) Bool)

(assert (=> b!5920468 (= e!3624516 (inv!83174 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))

(declare-fun e!3624508 () Bool)

(assert (=> b!5920469 (= e!3624513 e!3624508)))

(declare-fun res!2481800 () Bool)

(assert (=> b!5920469 (=> res!2481800 e!3624508)))

(declare-fun lt!2309939 () Bool)

(declare-fun lt!2309940 () Bool)

(assert (=> b!5920469 (= res!2481800 (or (not (= lt!2309939 lt!2309940)) ((_ is Nil!64090) s!2326)))))

(declare-fun Exists!3041 (Int) Bool)

(assert (=> b!5920469 (= (Exists!3041 lambda!322948) (Exists!3041 lambda!322949))))

(declare-fun lt!2309941 () Unit!157213)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1578 (Regex!15971 Regex!15971 List!64214) Unit!157213)

(assert (=> b!5920469 (= lt!2309941 (lemmaExistCutMatchRandMatchRSpecEquivalent!1578 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326))))

(assert (=> b!5920469 (= lt!2309940 (Exists!3041 lambda!322948))))

(declare-datatypes ((tuple2!65900 0))(
  ( (tuple2!65901 (_1!36253 List!64214) (_2!36253 List!64214)) )
))
(declare-datatypes ((Option!15862 0))(
  ( (None!15861) (Some!15861 (v!51957 tuple2!65900)) )
))
(declare-fun isDefined!12565 (Option!15862) Bool)

(declare-fun findConcatSeparation!2276 (Regex!15971 Regex!15971 List!64214 List!64214 List!64214) Option!15862)

(assert (=> b!5920469 (= lt!2309940 (isDefined!12565 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326)))))

(declare-fun lt!2309943 () Unit!157213)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2040 (Regex!15971 Regex!15971 List!64214) Unit!157213)

(assert (=> b!5920469 (= lt!2309943 (lemmaFindConcatSeparationEquivalentToExists!2040 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326))))

(declare-fun setIsEmpty!40176 () Bool)

(assert (=> setIsEmpty!40176 setRes!40176))

(declare-fun b!5920470 () Bool)

(declare-fun e!3624511 () Bool)

(declare-fun tp!1645778 () Bool)

(assert (=> b!5920470 (= e!3624511 tp!1645778)))

(declare-fun b!5920471 () Bool)

(assert (=> b!5920471 (= e!3624514 (not e!3624513))))

(declare-fun res!2481790 () Bool)

(assert (=> b!5920471 (=> res!2481790 e!3624513)))

(assert (=> b!5920471 (= res!2481790 (not ((_ is Cons!64089) zl!343)))))

(declare-fun matchRSpec!3072 (Regex!15971 List!64214) Bool)

(assert (=> b!5920471 (= lt!2309939 (matchRSpec!3072 r!7292 s!2326))))

(declare-fun matchR!8154 (Regex!15971 List!64214) Bool)

(assert (=> b!5920471 (= lt!2309939 (matchR!8154 r!7292 s!2326))))

(declare-fun lt!2309946 () Unit!157213)

(declare-fun mainMatchTheorem!3072 (Regex!15971 List!64214) Unit!157213)

(assert (=> b!5920471 (= lt!2309946 (mainMatchTheorem!3072 r!7292 s!2326))))

(declare-fun b!5920472 () Bool)

(declare-fun res!2481796 () Bool)

(assert (=> b!5920472 (=> (not res!2481796) (not e!3624514))))

(declare-fun unfocusZipper!1713 (List!64213) Regex!15971)

(assert (=> b!5920472 (= res!2481796 (= r!7292 (unfocusZipper!1713 zl!343)))))

(declare-fun b!5920473 () Bool)

(declare-fun tp!1645782 () Bool)

(declare-fun tp!1645776 () Bool)

(assert (=> b!5920473 (= e!3624509 (and tp!1645782 tp!1645776))))

(declare-fun b!5920474 () Bool)

(declare-fun res!2481802 () Bool)

(assert (=> b!5920474 (=> res!2481802 e!3624513)))

(declare-fun generalisedUnion!1815 (List!64212) Regex!15971)

(declare-fun unfocusZipperList!1392 (List!64213) List!64212)

(assert (=> b!5920474 (= res!2481802 (not (= r!7292 (generalisedUnion!1815 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5920475 () Bool)

(declare-fun tp_is_empty!41195 () Bool)

(declare-fun tp!1645773 () Bool)

(assert (=> b!5920475 (= e!3624517 (and tp_is_empty!41195 tp!1645773))))

(declare-fun b!5920476 () Bool)

(declare-fun res!2481794 () Bool)

(assert (=> b!5920476 (=> (not res!2481794) (not e!3624514))))

(declare-fun toList!9755 ((InoxSet Context!10710)) List!64213)

(assert (=> b!5920476 (= res!2481794 (= (toList!9755 z!1189) zl!343))))

(declare-fun b!5920477 () Bool)

(declare-fun tp!1645777 () Bool)

(assert (=> b!5920477 (= e!3624515 (and (inv!83174 (h!70537 zl!343)) e!3624511 tp!1645777))))

(declare-fun b!5920478 () Bool)

(assert (=> b!5920478 (= e!3624508 e!3624512)))

(declare-fun res!2481795 () Bool)

(assert (=> b!5920478 (=> res!2481795 e!3624512)))

(declare-fun lt!2309945 () (InoxSet Context!10710))

(assert (=> b!5920478 (= res!2481795 (not (= lt!2309945 lt!2309942)))))

(declare-fun derivationStepZipperDown!1221 (Regex!15971 Context!10710 C!32212) (InoxSet Context!10710))

(assert (=> b!5920478 (= lt!2309942 (derivationStepZipperDown!1221 r!7292 (Context!10711 Nil!64088) (h!70538 s!2326)))))

(assert (=> b!5920478 (= lt!2309945 (derivationStepZipperUp!1147 (Context!10711 (Cons!64088 r!7292 Nil!64088)) (h!70538 s!2326)))))

(declare-fun b!5920479 () Bool)

(declare-fun res!2481798 () Bool)

(assert (=> b!5920479 (=> res!2481798 e!3624508)))

(declare-fun isEmpty!35946 (List!64212) Bool)

(assert (=> b!5920479 (= res!2481798 (not (isEmpty!35946 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5920480 () Bool)

(declare-fun tp!1645775 () Bool)

(assert (=> b!5920480 (= e!3624509 tp!1645775)))

(declare-fun b!5920481 () Bool)

(declare-fun res!2481799 () Bool)

(assert (=> b!5920481 (=> res!2481799 e!3624513)))

(assert (=> b!5920481 (= res!2481799 (or ((_ is EmptyExpr!15971) r!7292) ((_ is EmptyLang!15971) r!7292) ((_ is ElementMatch!15971) r!7292) ((_ is Union!15971) r!7292) (not ((_ is Concat!24816) r!7292))))))

(declare-fun b!5920482 () Bool)

(assert (=> b!5920482 (= e!3624509 tp_is_empty!41195)))

(declare-fun b!5920483 () Bool)

(declare-fun tp!1645781 () Bool)

(declare-fun tp!1645779 () Bool)

(assert (=> b!5920483 (= e!3624509 (and tp!1645781 tp!1645779))))

(declare-fun b!5920484 () Bool)

(declare-fun e!3624510 () Bool)

(declare-fun tp!1645780 () Bool)

(assert (=> b!5920484 (= e!3624510 tp!1645780)))

(declare-fun setElem!40176 () Context!10710)

(declare-fun tp!1645774 () Bool)

(declare-fun setNonEmpty!40176 () Bool)

(assert (=> setNonEmpty!40176 (= setRes!40176 (and tp!1645774 (inv!83174 setElem!40176) e!3624510))))

(declare-fun setRest!40176 () (InoxSet Context!10710))

(assert (=> setNonEmpty!40176 (= z!1189 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) setElem!40176 true) setRest!40176))))

(assert (= (and start!602060 res!2481801) b!5920476))

(assert (= (and b!5920476 res!2481794) b!5920472))

(assert (= (and b!5920472 res!2481796) b!5920471))

(assert (= (and b!5920471 (not res!2481790)) b!5920467))

(assert (= (and b!5920467 (not res!2481791)) b!5920466))

(assert (= (and b!5920466 (not res!2481797)) b!5920464))

(assert (= (and b!5920464 (not res!2481793)) b!5920474))

(assert (= (and b!5920474 (not res!2481802)) b!5920481))

(assert (= (and b!5920481 (not res!2481799)) b!5920469))

(assert (= (and b!5920469 (not res!2481800)) b!5920479))

(assert (= (and b!5920479 (not res!2481798)) b!5920478))

(assert (= (and b!5920478 (not res!2481795)) b!5920465))

(assert (= (and b!5920465 (not res!2481792)) b!5920468))

(assert (= (and start!602060 ((_ is ElementMatch!15971) r!7292)) b!5920482))

(assert (= (and start!602060 ((_ is Concat!24816) r!7292)) b!5920473))

(assert (= (and start!602060 ((_ is Star!15971) r!7292)) b!5920480))

(assert (= (and start!602060 ((_ is Union!15971) r!7292)) b!5920483))

(assert (= (and start!602060 condSetEmpty!40176) setIsEmpty!40176))

(assert (= (and start!602060 (not condSetEmpty!40176)) setNonEmpty!40176))

(assert (= setNonEmpty!40176 b!5920484))

(assert (= b!5920477 b!5920470))

(assert (= (and start!602060 ((_ is Cons!64089) zl!343)) b!5920477))

(assert (= (and start!602060 ((_ is Cons!64090) s!2326)) b!5920475))

(declare-fun m!6816556 () Bool)

(assert (=> b!5920474 m!6816556))

(assert (=> b!5920474 m!6816556))

(declare-fun m!6816558 () Bool)

(assert (=> b!5920474 m!6816558))

(declare-fun m!6816560 () Bool)

(assert (=> b!5920477 m!6816560))

(declare-fun m!6816562 () Bool)

(assert (=> b!5920476 m!6816562))

(declare-fun m!6816564 () Bool)

(assert (=> b!5920468 m!6816564))

(declare-fun m!6816566 () Bool)

(assert (=> b!5920466 m!6816566))

(declare-fun m!6816568 () Bool)

(assert (=> b!5920467 m!6816568))

(declare-fun m!6816570 () Bool)

(assert (=> setNonEmpty!40176 m!6816570))

(declare-fun m!6816572 () Bool)

(assert (=> b!5920478 m!6816572))

(declare-fun m!6816574 () Bool)

(assert (=> b!5920478 m!6816574))

(declare-fun m!6816576 () Bool)

(assert (=> b!5920472 m!6816576))

(declare-fun m!6816578 () Bool)

(assert (=> start!602060 m!6816578))

(declare-fun m!6816580 () Bool)

(assert (=> b!5920469 m!6816580))

(declare-fun m!6816582 () Bool)

(assert (=> b!5920469 m!6816582))

(declare-fun m!6816584 () Bool)

(assert (=> b!5920469 m!6816584))

(assert (=> b!5920469 m!6816580))

(declare-fun m!6816586 () Bool)

(assert (=> b!5920469 m!6816586))

(declare-fun m!6816588 () Bool)

(assert (=> b!5920469 m!6816588))

(assert (=> b!5920469 m!6816586))

(declare-fun m!6816590 () Bool)

(assert (=> b!5920469 m!6816590))

(declare-fun m!6816592 () Bool)

(assert (=> b!5920465 m!6816592))

(declare-fun m!6816594 () Bool)

(assert (=> b!5920465 m!6816594))

(declare-fun m!6816596 () Bool)

(assert (=> b!5920465 m!6816596))

(declare-fun m!6816598 () Bool)

(assert (=> b!5920465 m!6816598))

(declare-fun m!6816600 () Bool)

(assert (=> b!5920479 m!6816600))

(declare-fun m!6816602 () Bool)

(assert (=> b!5920471 m!6816602))

(declare-fun m!6816604 () Bool)

(assert (=> b!5920471 m!6816604))

(declare-fun m!6816606 () Bool)

(assert (=> b!5920471 m!6816606))

(check-sat (not start!602060) (not b!5920474) tp_is_empty!41195 (not b!5920479) (not b!5920476) (not b!5920478) (not b!5920471) (not b!5920466) (not b!5920480) (not b!5920465) (not b!5920477) (not b!5920470) (not b!5920468) (not b!5920483) (not setNonEmpty!40176) (not b!5920472) (not b!5920475) (not b!5920469) (not b!5920473) (not b!5920484) (not b!5920467))
(check-sat)
(get-model)

(declare-fun d!1856639 () Bool)

(declare-fun e!3624530 () Bool)

(assert (=> d!1856639 e!3624530))

(declare-fun res!2481815 () Bool)

(assert (=> d!1856639 (=> (not res!2481815) (not e!3624530))))

(declare-fun lt!2309955 () List!64213)

(declare-fun noDuplicate!1828 (List!64213) Bool)

(assert (=> d!1856639 (= res!2481815 (noDuplicate!1828 lt!2309955))))

(declare-fun choose!44649 ((InoxSet Context!10710)) List!64213)

(assert (=> d!1856639 (= lt!2309955 (choose!44649 z!1189))))

(assert (=> d!1856639 (= (toList!9755 z!1189) lt!2309955)))

(declare-fun b!5920511 () Bool)

(declare-fun content!11799 (List!64213) (InoxSet Context!10710))

(assert (=> b!5920511 (= e!3624530 (= (content!11799 lt!2309955) z!1189))))

(assert (= (and d!1856639 res!2481815) b!5920511))

(declare-fun m!6816610 () Bool)

(assert (=> d!1856639 m!6816610))

(declare-fun m!6816612 () Bool)

(assert (=> d!1856639 m!6816612))

(declare-fun m!6816614 () Bool)

(assert (=> b!5920511 m!6816614))

(assert (=> b!5920476 d!1856639))

(declare-fun b!5920553 () Bool)

(declare-fun e!3624559 () Bool)

(declare-fun lt!2309966 () Regex!15971)

(declare-fun isConcat!922 (Regex!15971) Bool)

(assert (=> b!5920553 (= e!3624559 (isConcat!922 lt!2309966))))

(declare-fun b!5920554 () Bool)

(declare-fun e!3624555 () Regex!15971)

(declare-fun e!3624554 () Regex!15971)

(assert (=> b!5920554 (= e!3624555 e!3624554)))

(declare-fun c!1052195 () Bool)

(assert (=> b!5920554 (= c!1052195 ((_ is Cons!64088) (exprs!5855 (h!70537 zl!343))))))

(declare-fun b!5920555 () Bool)

(assert (=> b!5920555 (= e!3624555 (h!70536 (exprs!5855 (h!70537 zl!343))))))

(declare-fun b!5920556 () Bool)

(declare-fun e!3624556 () Bool)

(assert (=> b!5920556 (= e!3624556 (isEmpty!35946 (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun d!1856641 () Bool)

(declare-fun e!3624558 () Bool)

(assert (=> d!1856641 e!3624558))

(declare-fun res!2481837 () Bool)

(assert (=> d!1856641 (=> (not res!2481837) (not e!3624558))))

(assert (=> d!1856641 (= res!2481837 (validRegex!7707 lt!2309966))))

(assert (=> d!1856641 (= lt!2309966 e!3624555)))

(declare-fun c!1052197 () Bool)

(assert (=> d!1856641 (= c!1052197 e!3624556)))

(declare-fun res!2481838 () Bool)

(assert (=> d!1856641 (=> (not res!2481838) (not e!3624556))))

(assert (=> d!1856641 (= res!2481838 ((_ is Cons!64088) (exprs!5855 (h!70537 zl!343))))))

(declare-fun lambda!322963 () Int)

(declare-fun forall!15054 (List!64212 Int) Bool)

(assert (=> d!1856641 (forall!15054 (exprs!5855 (h!70537 zl!343)) lambda!322963)))

(assert (=> d!1856641 (= (generalisedConcat!1568 (exprs!5855 (h!70537 zl!343))) lt!2309966)))

(declare-fun b!5920557 () Bool)

(declare-fun e!3624557 () Bool)

(assert (=> b!5920557 (= e!3624557 e!3624559)))

(declare-fun c!1052194 () Bool)

(declare-fun tail!11567 (List!64212) List!64212)

(assert (=> b!5920557 (= c!1052194 (isEmpty!35946 (tail!11567 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5920558 () Bool)

(assert (=> b!5920558 (= e!3624554 (Concat!24816 (h!70536 (exprs!5855 (h!70537 zl!343))) (generalisedConcat!1568 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5920559 () Bool)

(declare-fun head!12482 (List!64212) Regex!15971)

(assert (=> b!5920559 (= e!3624559 (= lt!2309966 (head!12482 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5920560 () Bool)

(declare-fun isEmptyExpr!1399 (Regex!15971) Bool)

(assert (=> b!5920560 (= e!3624557 (isEmptyExpr!1399 lt!2309966))))

(declare-fun b!5920561 () Bool)

(assert (=> b!5920561 (= e!3624558 e!3624557)))

(declare-fun c!1052196 () Bool)

(assert (=> b!5920561 (= c!1052196 (isEmpty!35946 (exprs!5855 (h!70537 zl!343))))))

(declare-fun b!5920562 () Bool)

(assert (=> b!5920562 (= e!3624554 EmptyExpr!15971)))

(assert (= (and d!1856641 res!2481838) b!5920556))

(assert (= (and d!1856641 c!1052197) b!5920555))

(assert (= (and d!1856641 (not c!1052197)) b!5920554))

(assert (= (and b!5920554 c!1052195) b!5920558))

(assert (= (and b!5920554 (not c!1052195)) b!5920562))

(assert (= (and d!1856641 res!2481837) b!5920561))

(assert (= (and b!5920561 c!1052196) b!5920560))

(assert (= (and b!5920561 (not c!1052196)) b!5920557))

(assert (= (and b!5920557 c!1052194) b!5920559))

(assert (= (and b!5920557 (not c!1052194)) b!5920553))

(declare-fun m!6816648 () Bool)

(assert (=> b!5920557 m!6816648))

(assert (=> b!5920557 m!6816648))

(declare-fun m!6816650 () Bool)

(assert (=> b!5920557 m!6816650))

(declare-fun m!6816652 () Bool)

(assert (=> d!1856641 m!6816652))

(declare-fun m!6816654 () Bool)

(assert (=> d!1856641 m!6816654))

(declare-fun m!6816656 () Bool)

(assert (=> b!5920560 m!6816656))

(declare-fun m!6816658 () Bool)

(assert (=> b!5920561 m!6816658))

(declare-fun m!6816660 () Bool)

(assert (=> b!5920559 m!6816660))

(assert (=> b!5920556 m!6816600))

(declare-fun m!6816662 () Bool)

(assert (=> b!5920558 m!6816662))

(declare-fun m!6816664 () Bool)

(assert (=> b!5920553 m!6816664))

(assert (=> b!5920466 d!1856641))

(declare-fun d!1856651 () Bool)

(assert (=> d!1856651 (= (isEmpty!35945 (t!377604 zl!343)) ((_ is Nil!64089) (t!377604 zl!343)))))

(assert (=> b!5920467 d!1856651))

(declare-fun bs!1401376 () Bool)

(declare-fun d!1856655 () Bool)

(assert (= bs!1401376 (and d!1856655 b!5920465)))

(declare-fun lambda!322971 () Int)

(assert (=> bs!1401376 (= lambda!322971 lambda!322950)))

(assert (=> d!1856655 true))

(assert (=> d!1856655 (= (derivationStepZipper!1952 z!1189 (h!70538 s!2326)) (flatMap!1484 z!1189 lambda!322971))))

(declare-fun bs!1401377 () Bool)

(assert (= bs!1401377 d!1856655))

(declare-fun m!6816678 () Bool)

(assert (=> bs!1401377 m!6816678))

(assert (=> b!5920465 d!1856655))

(declare-fun d!1856663 () Bool)

(declare-fun choose!44651 ((InoxSet Context!10710) Int) (InoxSet Context!10710))

(assert (=> d!1856663 (= (flatMap!1484 z!1189 lambda!322950) (choose!44651 z!1189 lambda!322950))))

(declare-fun bs!1401378 () Bool)

(assert (= bs!1401378 d!1856663))

(declare-fun m!6816680 () Bool)

(assert (=> bs!1401378 m!6816680))

(assert (=> b!5920465 d!1856663))

(declare-fun b!5920614 () Bool)

(declare-fun e!3624589 () (InoxSet Context!10710))

(declare-fun call!469404 () (InoxSet Context!10710))

(assert (=> b!5920614 (= e!3624589 ((_ map or) call!469404 (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (h!70538 s!2326))))))

(declare-fun b!5920615 () Bool)

(declare-fun e!3624587 () Bool)

(declare-fun nullable!5966 (Regex!15971) Bool)

(assert (=> b!5920615 (= e!3624587 (nullable!5966 (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun bm!469399 () Bool)

(assert (=> bm!469399 (= call!469404 (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (h!70537 zl!343))) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (h!70538 s!2326)))))

(declare-fun d!1856665 () Bool)

(declare-fun c!1052223 () Bool)

(assert (=> d!1856665 (= c!1052223 e!3624587)))

(declare-fun res!2481846 () Bool)

(assert (=> d!1856665 (=> (not res!2481846) (not e!3624587))))

(assert (=> d!1856665 (= res!2481846 ((_ is Cons!64088) (exprs!5855 (h!70537 zl!343))))))

(assert (=> d!1856665 (= (derivationStepZipperUp!1147 (h!70537 zl!343) (h!70538 s!2326)) e!3624589)))

(declare-fun b!5920616 () Bool)

(declare-fun e!3624588 () (InoxSet Context!10710))

(assert (=> b!5920616 (= e!3624588 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5920617 () Bool)

(assert (=> b!5920617 (= e!3624589 e!3624588)))

(declare-fun c!1052222 () Bool)

(assert (=> b!5920617 (= c!1052222 ((_ is Cons!64088) (exprs!5855 (h!70537 zl!343))))))

(declare-fun b!5920618 () Bool)

(assert (=> b!5920618 (= e!3624588 call!469404)))

(assert (= (and d!1856665 res!2481846) b!5920615))

(assert (= (and d!1856665 c!1052223) b!5920614))

(assert (= (and d!1856665 (not c!1052223)) b!5920617))

(assert (= (and b!5920617 c!1052222) b!5920618))

(assert (= (and b!5920617 (not c!1052222)) b!5920616))

(assert (= (or b!5920614 b!5920618) bm!469399))

(declare-fun m!6816694 () Bool)

(assert (=> b!5920614 m!6816694))

(declare-fun m!6816696 () Bool)

(assert (=> b!5920615 m!6816696))

(declare-fun m!6816698 () Bool)

(assert (=> bm!469399 m!6816698))

(assert (=> b!5920465 d!1856665))

(declare-fun d!1856671 () Bool)

(declare-fun dynLambda!25056 (Int Context!10710) (InoxSet Context!10710))

(assert (=> d!1856671 (= (flatMap!1484 z!1189 lambda!322950) (dynLambda!25056 lambda!322950 (h!70537 zl!343)))))

(declare-fun lt!2309973 () Unit!157213)

(declare-fun choose!44652 ((InoxSet Context!10710) Context!10710 Int) Unit!157213)

(assert (=> d!1856671 (= lt!2309973 (choose!44652 z!1189 (h!70537 zl!343) lambda!322950))))

(assert (=> d!1856671 (= z!1189 (store ((as const (Array Context!10710 Bool)) false) (h!70537 zl!343) true))))

(assert (=> d!1856671 (= (lemmaFlatMapOnSingletonSet!1010 z!1189 (h!70537 zl!343) lambda!322950) lt!2309973)))

(declare-fun b_lambda!222383 () Bool)

(assert (=> (not b_lambda!222383) (not d!1856671)))

(declare-fun bs!1401380 () Bool)

(assert (= bs!1401380 d!1856671))

(assert (=> bs!1401380 m!6816594))

(declare-fun m!6816710 () Bool)

(assert (=> bs!1401380 m!6816710))

(declare-fun m!6816712 () Bool)

(assert (=> bs!1401380 m!6816712))

(declare-fun m!6816714 () Bool)

(assert (=> bs!1401380 m!6816714))

(assert (=> b!5920465 d!1856671))

(declare-fun bs!1401384 () Bool)

(declare-fun d!1856675 () Bool)

(assert (= bs!1401384 (and d!1856675 d!1856641)))

(declare-fun lambda!322975 () Int)

(assert (=> bs!1401384 (= lambda!322975 lambda!322963)))

(assert (=> d!1856675 (= (inv!83174 setElem!40176) (forall!15054 (exprs!5855 setElem!40176) lambda!322975))))

(declare-fun bs!1401385 () Bool)

(assert (= bs!1401385 d!1856675))

(declare-fun m!6816726 () Bool)

(assert (=> bs!1401385 m!6816726))

(assert (=> setNonEmpty!40176 d!1856675))

(declare-fun d!1856685 () Bool)

(declare-fun choose!44653 (Int) Bool)

(assert (=> d!1856685 (= (Exists!3041 lambda!322948) (choose!44653 lambda!322948))))

(declare-fun bs!1401386 () Bool)

(assert (= bs!1401386 d!1856685))

(declare-fun m!6816728 () Bool)

(assert (=> bs!1401386 m!6816728))

(assert (=> b!5920469 d!1856685))

(declare-fun b!5920749 () Bool)

(declare-fun e!3624676 () Option!15862)

(declare-fun e!3624672 () Option!15862)

(assert (=> b!5920749 (= e!3624676 e!3624672)))

(declare-fun c!1052269 () Bool)

(assert (=> b!5920749 (= c!1052269 ((_ is Nil!64090) s!2326))))

(declare-fun b!5920750 () Bool)

(assert (=> b!5920750 (= e!3624676 (Some!15861 (tuple2!65901 Nil!64090 s!2326)))))

(declare-fun b!5920751 () Bool)

(declare-fun res!2481889 () Bool)

(declare-fun e!3624673 () Bool)

(assert (=> b!5920751 (=> (not res!2481889) (not e!3624673))))

(declare-fun lt!2309996 () Option!15862)

(declare-fun get!22069 (Option!15862) tuple2!65900)

(assert (=> b!5920751 (= res!2481889 (matchR!8154 (regTwo!32454 r!7292) (_2!36253 (get!22069 lt!2309996))))))

(declare-fun b!5920752 () Bool)

(declare-fun res!2481892 () Bool)

(assert (=> b!5920752 (=> (not res!2481892) (not e!3624673))))

(assert (=> b!5920752 (= res!2481892 (matchR!8154 (regOne!32454 r!7292) (_1!36253 (get!22069 lt!2309996))))))

(declare-fun b!5920754 () Bool)

(declare-fun e!3624674 () Bool)

(assert (=> b!5920754 (= e!3624674 (not (isDefined!12565 lt!2309996)))))

(declare-fun b!5920755 () Bool)

(declare-fun ++!14068 (List!64214 List!64214) List!64214)

(assert (=> b!5920755 (= e!3624673 (= (++!14068 (_1!36253 (get!22069 lt!2309996)) (_2!36253 (get!22069 lt!2309996))) s!2326))))

(declare-fun b!5920756 () Bool)

(declare-fun e!3624675 () Bool)

(assert (=> b!5920756 (= e!3624675 (matchR!8154 (regTwo!32454 r!7292) s!2326))))

(declare-fun b!5920757 () Bool)

(assert (=> b!5920757 (= e!3624672 None!15861)))

(declare-fun b!5920753 () Bool)

(declare-fun lt!2309995 () Unit!157213)

(declare-fun lt!2309997 () Unit!157213)

(assert (=> b!5920753 (= lt!2309995 lt!2309997)))

(assert (=> b!5920753 (= (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (t!377605 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2163 (List!64214 C!32212 List!64214 List!64214) Unit!157213)

(assert (=> b!5920753 (= lt!2309997 (lemmaMoveElementToOtherListKeepsConcatEq!2163 Nil!64090 (h!70538 s!2326) (t!377605 s!2326) s!2326))))

(assert (=> b!5920753 (= e!3624672 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (t!377605 s!2326) s!2326))))

(declare-fun d!1856687 () Bool)

(assert (=> d!1856687 e!3624674))

(declare-fun res!2481890 () Bool)

(assert (=> d!1856687 (=> res!2481890 e!3624674)))

(assert (=> d!1856687 (= res!2481890 e!3624673)))

(declare-fun res!2481893 () Bool)

(assert (=> d!1856687 (=> (not res!2481893) (not e!3624673))))

(assert (=> d!1856687 (= res!2481893 (isDefined!12565 lt!2309996))))

(assert (=> d!1856687 (= lt!2309996 e!3624676)))

(declare-fun c!1052268 () Bool)

(assert (=> d!1856687 (= c!1052268 e!3624675)))

(declare-fun res!2481891 () Bool)

(assert (=> d!1856687 (=> (not res!2481891) (not e!3624675))))

(assert (=> d!1856687 (= res!2481891 (matchR!8154 (regOne!32454 r!7292) Nil!64090))))

(assert (=> d!1856687 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1856687 (= (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326) lt!2309996)))

(assert (= (and d!1856687 res!2481891) b!5920756))

(assert (= (and d!1856687 c!1052268) b!5920750))

(assert (= (and d!1856687 (not c!1052268)) b!5920749))

(assert (= (and b!5920749 c!1052269) b!5920757))

(assert (= (and b!5920749 (not c!1052269)) b!5920753))

(assert (= (and d!1856687 res!2481893) b!5920752))

(assert (= (and b!5920752 res!2481892) b!5920751))

(assert (= (and b!5920751 res!2481889) b!5920755))

(assert (= (and d!1856687 (not res!2481890)) b!5920754))

(declare-fun m!6816786 () Bool)

(assert (=> d!1856687 m!6816786))

(declare-fun m!6816788 () Bool)

(assert (=> d!1856687 m!6816788))

(declare-fun m!6816790 () Bool)

(assert (=> d!1856687 m!6816790))

(declare-fun m!6816792 () Bool)

(assert (=> b!5920755 m!6816792))

(declare-fun m!6816794 () Bool)

(assert (=> b!5920755 m!6816794))

(assert (=> b!5920752 m!6816792))

(declare-fun m!6816796 () Bool)

(assert (=> b!5920752 m!6816796))

(declare-fun m!6816798 () Bool)

(assert (=> b!5920753 m!6816798))

(assert (=> b!5920753 m!6816798))

(declare-fun m!6816800 () Bool)

(assert (=> b!5920753 m!6816800))

(declare-fun m!6816802 () Bool)

(assert (=> b!5920753 m!6816802))

(assert (=> b!5920753 m!6816798))

(declare-fun m!6816804 () Bool)

(assert (=> b!5920753 m!6816804))

(declare-fun m!6816806 () Bool)

(assert (=> b!5920756 m!6816806))

(assert (=> b!5920751 m!6816792))

(declare-fun m!6816808 () Bool)

(assert (=> b!5920751 m!6816808))

(assert (=> b!5920754 m!6816786))

(assert (=> b!5920469 d!1856687))

(declare-fun bs!1401409 () Bool)

(declare-fun d!1856701 () Bool)

(assert (= bs!1401409 (and d!1856701 b!5920469)))

(declare-fun lambda!322996 () Int)

(assert (=> bs!1401409 (= lambda!322996 lambda!322948)))

(assert (=> bs!1401409 (not (= lambda!322996 lambda!322949))))

(assert (=> d!1856701 true))

(assert (=> d!1856701 true))

(assert (=> d!1856701 true))

(declare-fun lambda!322997 () Int)

(assert (=> bs!1401409 (not (= lambda!322997 lambda!322948))))

(assert (=> bs!1401409 (= lambda!322997 lambda!322949)))

(declare-fun bs!1401410 () Bool)

(assert (= bs!1401410 d!1856701))

(assert (=> bs!1401410 (not (= lambda!322997 lambda!322996))))

(assert (=> d!1856701 true))

(assert (=> d!1856701 true))

(assert (=> d!1856701 true))

(assert (=> d!1856701 (= (Exists!3041 lambda!322996) (Exists!3041 lambda!322997))))

(declare-fun lt!2310002 () Unit!157213)

(declare-fun choose!44655 (Regex!15971 Regex!15971 List!64214) Unit!157213)

(assert (=> d!1856701 (= lt!2310002 (choose!44655 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326))))

(assert (=> d!1856701 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1856701 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1578 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326) lt!2310002)))

(declare-fun m!6816830 () Bool)

(assert (=> bs!1401410 m!6816830))

(declare-fun m!6816832 () Bool)

(assert (=> bs!1401410 m!6816832))

(declare-fun m!6816834 () Bool)

(assert (=> bs!1401410 m!6816834))

(assert (=> bs!1401410 m!6816790))

(assert (=> b!5920469 d!1856701))

(declare-fun d!1856707 () Bool)

(declare-fun isEmpty!35949 (Option!15862) Bool)

(assert (=> d!1856707 (= (isDefined!12565 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326)) (not (isEmpty!35949 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326))))))

(declare-fun bs!1401411 () Bool)

(assert (= bs!1401411 d!1856707))

(assert (=> bs!1401411 m!6816586))

(declare-fun m!6816836 () Bool)

(assert (=> bs!1401411 m!6816836))

(assert (=> b!5920469 d!1856707))

(declare-fun bs!1401414 () Bool)

(declare-fun d!1856709 () Bool)

(assert (= bs!1401414 (and d!1856709 b!5920469)))

(declare-fun lambda!323000 () Int)

(assert (=> bs!1401414 (= lambda!323000 lambda!322948)))

(assert (=> bs!1401414 (not (= lambda!323000 lambda!322949))))

(declare-fun bs!1401415 () Bool)

(assert (= bs!1401415 (and d!1856709 d!1856701)))

(assert (=> bs!1401415 (= lambda!323000 lambda!322996)))

(assert (=> bs!1401415 (not (= lambda!323000 lambda!322997))))

(assert (=> d!1856709 true))

(assert (=> d!1856709 true))

(assert (=> d!1856709 true))

(assert (=> d!1856709 (= (isDefined!12565 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326)) (Exists!3041 lambda!323000))))

(declare-fun lt!2310009 () Unit!157213)

(declare-fun choose!44656 (Regex!15971 Regex!15971 List!64214) Unit!157213)

(assert (=> d!1856709 (= lt!2310009 (choose!44656 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326))))

(assert (=> d!1856709 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1856709 (= (lemmaFindConcatSeparationEquivalentToExists!2040 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326) lt!2310009)))

(declare-fun bs!1401416 () Bool)

(assert (= bs!1401416 d!1856709))

(declare-fun m!6816844 () Bool)

(assert (=> bs!1401416 m!6816844))

(assert (=> bs!1401416 m!6816586))

(declare-fun m!6816846 () Bool)

(assert (=> bs!1401416 m!6816846))

(assert (=> bs!1401416 m!6816790))

(assert (=> bs!1401416 m!6816586))

(assert (=> bs!1401416 m!6816588))

(assert (=> b!5920469 d!1856709))

(declare-fun d!1856713 () Bool)

(assert (=> d!1856713 (= (Exists!3041 lambda!322949) (choose!44653 lambda!322949))))

(declare-fun bs!1401417 () Bool)

(assert (= bs!1401417 d!1856713))

(declare-fun m!6816848 () Bool)

(assert (=> bs!1401417 m!6816848))

(assert (=> b!5920469 d!1856713))

(declare-fun d!1856715 () Bool)

(assert (=> d!1856715 (= (isEmpty!35946 (t!377603 (exprs!5855 (h!70537 zl!343)))) ((_ is Nil!64088) (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> b!5920479 d!1856715))

(declare-fun bs!1401418 () Bool)

(declare-fun d!1856717 () Bool)

(assert (= bs!1401418 (and d!1856717 d!1856641)))

(declare-fun lambda!323001 () Int)

(assert (=> bs!1401418 (= lambda!323001 lambda!322963)))

(declare-fun bs!1401419 () Bool)

(assert (= bs!1401419 (and d!1856717 d!1856675)))

(assert (=> bs!1401419 (= lambda!323001 lambda!322975)))

(assert (=> d!1856717 (= (inv!83174 (h!70537 zl!343)) (forall!15054 (exprs!5855 (h!70537 zl!343)) lambda!323001))))

(declare-fun bs!1401420 () Bool)

(assert (= bs!1401420 d!1856717))

(declare-fun m!6816850 () Bool)

(assert (=> bs!1401420 m!6816850))

(assert (=> b!5920477 d!1856717))

(declare-fun b!5920931 () Bool)

(declare-fun e!3624767 () (InoxSet Context!10710))

(declare-fun e!3624769 () (InoxSet Context!10710))

(assert (=> b!5920931 (= e!3624767 e!3624769)))

(declare-fun c!1052304 () Bool)

(assert (=> b!5920931 (= c!1052304 ((_ is Union!15971) r!7292))))

(declare-fun bm!469445 () Bool)

(declare-fun call!469450 () (InoxSet Context!10710))

(declare-fun call!469455 () (InoxSet Context!10710))

(assert (=> bm!469445 (= call!469450 call!469455)))

(declare-fun b!5920932 () Bool)

(assert (=> b!5920932 (= e!3624767 (store ((as const (Array Context!10710 Bool)) false) (Context!10711 Nil!64088) true))))

(declare-fun b!5920933 () Bool)

(declare-fun c!1052301 () Bool)

(assert (=> b!5920933 (= c!1052301 ((_ is Star!15971) r!7292))))

(declare-fun e!3624766 () (InoxSet Context!10710))

(declare-fun e!3624768 () (InoxSet Context!10710))

(assert (=> b!5920933 (= e!3624766 e!3624768)))

(declare-fun d!1856719 () Bool)

(declare-fun c!1052305 () Bool)

(assert (=> d!1856719 (= c!1052305 (and ((_ is ElementMatch!15971) r!7292) (= (c!1052179 r!7292) (h!70538 s!2326))))))

(assert (=> d!1856719 (= (derivationStepZipperDown!1221 r!7292 (Context!10711 Nil!64088) (h!70538 s!2326)) e!3624767)))

(declare-fun b!5920934 () Bool)

(declare-fun c!1052303 () Bool)

(declare-fun e!3624764 () Bool)

(assert (=> b!5920934 (= c!1052303 e!3624764)))

(declare-fun res!2481951 () Bool)

(assert (=> b!5920934 (=> (not res!2481951) (not e!3624764))))

(assert (=> b!5920934 (= res!2481951 ((_ is Concat!24816) r!7292))))

(declare-fun e!3624765 () (InoxSet Context!10710))

(assert (=> b!5920934 (= e!3624769 e!3624765)))

(declare-fun call!469453 () List!64212)

(declare-fun c!1052302 () Bool)

(declare-fun bm!469446 () Bool)

(declare-fun $colon$colon!1858 (List!64212 Regex!15971) List!64212)

(assert (=> bm!469446 (= call!469453 ($colon$colon!1858 (exprs!5855 (Context!10711 Nil!64088)) (ite (or c!1052303 c!1052302) (regTwo!32454 r!7292) r!7292)))))

(declare-fun bm!469447 () Bool)

(declare-fun call!469454 () List!64212)

(assert (=> bm!469447 (= call!469454 call!469453)))

(declare-fun b!5920935 () Bool)

(assert (=> b!5920935 (= e!3624768 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5920936 () Bool)

(assert (=> b!5920936 (= e!3624765 e!3624766)))

(assert (=> b!5920936 (= c!1052302 ((_ is Concat!24816) r!7292))))

(declare-fun b!5920937 () Bool)

(declare-fun call!469451 () (InoxSet Context!10710))

(assert (=> b!5920937 (= e!3624765 ((_ map or) call!469451 call!469455))))

(declare-fun bm!469448 () Bool)

(assert (=> bm!469448 (= call!469451 (derivationStepZipperDown!1221 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (h!70538 s!2326)))))

(declare-fun b!5920938 () Bool)

(assert (=> b!5920938 (= e!3624766 call!469450)))

(declare-fun b!5920939 () Bool)

(declare-fun call!469452 () (InoxSet Context!10710))

(assert (=> b!5920939 (= e!3624769 ((_ map or) call!469452 call!469451))))

(declare-fun b!5920940 () Bool)

(assert (=> b!5920940 (= e!3624768 call!469450)))

(declare-fun bm!469449 () Bool)

(assert (=> bm!469449 (= call!469455 call!469452)))

(declare-fun b!5920941 () Bool)

(assert (=> b!5920941 (= e!3624764 (nullable!5966 (regOne!32454 r!7292)))))

(declare-fun bm!469450 () Bool)

(assert (=> bm!469450 (= call!469452 (derivationStepZipperDown!1221 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (h!70538 s!2326)))))

(assert (= (and d!1856719 c!1052305) b!5920932))

(assert (= (and d!1856719 (not c!1052305)) b!5920931))

(assert (= (and b!5920931 c!1052304) b!5920939))

(assert (= (and b!5920931 (not c!1052304)) b!5920934))

(assert (= (and b!5920934 res!2481951) b!5920941))

(assert (= (and b!5920934 c!1052303) b!5920937))

(assert (= (and b!5920934 (not c!1052303)) b!5920936))

(assert (= (and b!5920936 c!1052302) b!5920938))

(assert (= (and b!5920936 (not c!1052302)) b!5920933))

(assert (= (and b!5920933 c!1052301) b!5920940))

(assert (= (and b!5920933 (not c!1052301)) b!5920935))

(assert (= (or b!5920938 b!5920940) bm!469447))

(assert (= (or b!5920938 b!5920940) bm!469445))

(assert (= (or b!5920937 bm!469447) bm!469446))

(assert (= (or b!5920937 bm!469445) bm!469449))

(assert (= (or b!5920939 b!5920937) bm!469448))

(assert (= (or b!5920939 bm!469449) bm!469450))

(declare-fun m!6816852 () Bool)

(assert (=> bm!469450 m!6816852))

(declare-fun m!6816854 () Bool)

(assert (=> bm!469448 m!6816854))

(declare-fun m!6816856 () Bool)

(assert (=> b!5920932 m!6816856))

(declare-fun m!6816858 () Bool)

(assert (=> b!5920941 m!6816858))

(declare-fun m!6816860 () Bool)

(assert (=> bm!469446 m!6816860))

(assert (=> b!5920478 d!1856719))

(declare-fun b!5920942 () Bool)

(declare-fun call!469456 () (InoxSet Context!10710))

(declare-fun e!3624772 () (InoxSet Context!10710))

(assert (=> b!5920942 (= e!3624772 ((_ map or) call!469456 (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70538 s!2326))))))

(declare-fun b!5920943 () Bool)

(declare-fun e!3624770 () Bool)

(assert (=> b!5920943 (= e!3624770 (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun bm!469451 () Bool)

(assert (=> bm!469451 (= call!469456 (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70538 s!2326)))))

(declare-fun d!1856721 () Bool)

(declare-fun c!1052307 () Bool)

(assert (=> d!1856721 (= c!1052307 e!3624770)))

(declare-fun res!2481952 () Bool)

(assert (=> d!1856721 (=> (not res!2481952) (not e!3624770))))

(assert (=> d!1856721 (= res!2481952 ((_ is Cons!64088) (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))

(assert (=> d!1856721 (= (derivationStepZipperUp!1147 (Context!10711 (Cons!64088 r!7292 Nil!64088)) (h!70538 s!2326)) e!3624772)))

(declare-fun b!5920944 () Bool)

(declare-fun e!3624771 () (InoxSet Context!10710))

(assert (=> b!5920944 (= e!3624771 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5920945 () Bool)

(assert (=> b!5920945 (= e!3624772 e!3624771)))

(declare-fun c!1052306 () Bool)

(assert (=> b!5920945 (= c!1052306 ((_ is Cons!64088) (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))

(declare-fun b!5920946 () Bool)

(assert (=> b!5920946 (= e!3624771 call!469456)))

(assert (= (and d!1856721 res!2481952) b!5920943))

(assert (= (and d!1856721 c!1052307) b!5920942))

(assert (= (and d!1856721 (not c!1052307)) b!5920945))

(assert (= (and b!5920945 c!1052306) b!5920946))

(assert (= (and b!5920945 (not c!1052306)) b!5920944))

(assert (= (or b!5920942 b!5920946) bm!469451))

(declare-fun m!6816862 () Bool)

(assert (=> b!5920942 m!6816862))

(declare-fun m!6816864 () Bool)

(assert (=> b!5920943 m!6816864))

(declare-fun m!6816866 () Bool)

(assert (=> bm!469451 m!6816866))

(assert (=> b!5920478 d!1856721))

(declare-fun bs!1401421 () Bool)

(declare-fun d!1856723 () Bool)

(assert (= bs!1401421 (and d!1856723 d!1856641)))

(declare-fun lambda!323002 () Int)

(assert (=> bs!1401421 (= lambda!323002 lambda!322963)))

(declare-fun bs!1401422 () Bool)

(assert (= bs!1401422 (and d!1856723 d!1856675)))

(assert (=> bs!1401422 (= lambda!323002 lambda!322975)))

(declare-fun bs!1401423 () Bool)

(assert (= bs!1401423 (and d!1856723 d!1856717)))

(assert (=> bs!1401423 (= lambda!323002 lambda!323001)))

(assert (=> d!1856723 (= (inv!83174 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))) (forall!15054 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))) lambda!323002))))

(declare-fun bs!1401424 () Bool)

(assert (= bs!1401424 d!1856723))

(declare-fun m!6816868 () Bool)

(assert (=> bs!1401424 m!6816868))

(assert (=> b!5920468 d!1856723))

(declare-fun bs!1401425 () Bool)

(declare-fun b!5920983 () Bool)

(assert (= bs!1401425 (and b!5920983 d!1856701)))

(declare-fun lambda!323007 () Int)

(assert (=> bs!1401425 (not (= lambda!323007 lambda!322997))))

(declare-fun bs!1401426 () Bool)

(assert (= bs!1401426 (and b!5920983 d!1856709)))

(assert (=> bs!1401426 (not (= lambda!323007 lambda!323000))))

(declare-fun bs!1401427 () Bool)

(assert (= bs!1401427 (and b!5920983 b!5920469)))

(assert (=> bs!1401427 (not (= lambda!323007 lambda!322948))))

(assert (=> bs!1401427 (not (= lambda!323007 lambda!322949))))

(assert (=> bs!1401425 (not (= lambda!323007 lambda!322996))))

(assert (=> b!5920983 true))

(assert (=> b!5920983 true))

(declare-fun bs!1401428 () Bool)

(declare-fun b!5920984 () Bool)

(assert (= bs!1401428 (and b!5920984 d!1856701)))

(declare-fun lambda!323008 () Int)

(assert (=> bs!1401428 (= lambda!323008 lambda!322997)))

(declare-fun bs!1401429 () Bool)

(assert (= bs!1401429 (and b!5920984 d!1856709)))

(assert (=> bs!1401429 (not (= lambda!323008 lambda!323000))))

(declare-fun bs!1401430 () Bool)

(assert (= bs!1401430 (and b!5920984 b!5920469)))

(assert (=> bs!1401430 (not (= lambda!323008 lambda!322948))))

(assert (=> bs!1401430 (= lambda!323008 lambda!322949)))

(declare-fun bs!1401431 () Bool)

(assert (= bs!1401431 (and b!5920984 b!5920983)))

(assert (=> bs!1401431 (not (= lambda!323008 lambda!323007))))

(assert (=> bs!1401428 (not (= lambda!323008 lambda!322996))))

(assert (=> b!5920984 true))

(assert (=> b!5920984 true))

(declare-fun b!5920979 () Bool)

(declare-fun e!3624792 () Bool)

(declare-fun e!3624791 () Bool)

(assert (=> b!5920979 (= e!3624792 e!3624791)))

(declare-fun c!1052319 () Bool)

(assert (=> b!5920979 (= c!1052319 ((_ is Star!15971) r!7292))))

(declare-fun b!5920980 () Bool)

(declare-fun e!3624793 () Bool)

(declare-fun e!3624796 () Bool)

(assert (=> b!5920980 (= e!3624793 e!3624796)))

(declare-fun res!2481971 () Bool)

(assert (=> b!5920980 (= res!2481971 (not ((_ is EmptyLang!15971) r!7292)))))

(assert (=> b!5920980 (=> (not res!2481971) (not e!3624796))))

(declare-fun b!5920981 () Bool)

(declare-fun e!3624795 () Bool)

(assert (=> b!5920981 (= e!3624795 (= s!2326 (Cons!64090 (c!1052179 r!7292) Nil!64090)))))

(declare-fun b!5920982 () Bool)

(declare-fun call!469461 () Bool)

(assert (=> b!5920982 (= e!3624793 call!469461)))

(declare-fun e!3624797 () Bool)

(declare-fun call!469462 () Bool)

(assert (=> b!5920983 (= e!3624797 call!469462)))

(declare-fun bm!469456 () Bool)

(assert (=> bm!469456 (= call!469462 (Exists!3041 (ite c!1052319 lambda!323007 lambda!323008)))))

(assert (=> b!5920984 (= e!3624791 call!469462)))

(declare-fun b!5920985 () Bool)

(declare-fun e!3624794 () Bool)

(assert (=> b!5920985 (= e!3624792 e!3624794)))

(declare-fun res!2481970 () Bool)

(assert (=> b!5920985 (= res!2481970 (matchRSpec!3072 (regOne!32455 r!7292) s!2326))))

(assert (=> b!5920985 (=> res!2481970 e!3624794)))

(declare-fun b!5920986 () Bool)

(declare-fun res!2481969 () Bool)

(assert (=> b!5920986 (=> res!2481969 e!3624797)))

(assert (=> b!5920986 (= res!2481969 call!469461)))

(assert (=> b!5920986 (= e!3624791 e!3624797)))

(declare-fun b!5920987 () Bool)

(declare-fun c!1052318 () Bool)

(assert (=> b!5920987 (= c!1052318 ((_ is Union!15971) r!7292))))

(assert (=> b!5920987 (= e!3624795 e!3624792)))

(declare-fun d!1856725 () Bool)

(declare-fun c!1052316 () Bool)

(assert (=> d!1856725 (= c!1052316 ((_ is EmptyExpr!15971) r!7292))))

(assert (=> d!1856725 (= (matchRSpec!3072 r!7292 s!2326) e!3624793)))

(declare-fun bm!469457 () Bool)

(declare-fun isEmpty!35950 (List!64214) Bool)

(assert (=> bm!469457 (= call!469461 (isEmpty!35950 s!2326))))

(declare-fun b!5920988 () Bool)

(declare-fun c!1052317 () Bool)

(assert (=> b!5920988 (= c!1052317 ((_ is ElementMatch!15971) r!7292))))

(assert (=> b!5920988 (= e!3624796 e!3624795)))

(declare-fun b!5920989 () Bool)

(assert (=> b!5920989 (= e!3624794 (matchRSpec!3072 (regTwo!32455 r!7292) s!2326))))

(assert (= (and d!1856725 c!1052316) b!5920982))

(assert (= (and d!1856725 (not c!1052316)) b!5920980))

(assert (= (and b!5920980 res!2481971) b!5920988))

(assert (= (and b!5920988 c!1052317) b!5920981))

(assert (= (and b!5920988 (not c!1052317)) b!5920987))

(assert (= (and b!5920987 c!1052318) b!5920985))

(assert (= (and b!5920987 (not c!1052318)) b!5920979))

(assert (= (and b!5920985 (not res!2481970)) b!5920989))

(assert (= (and b!5920979 c!1052319) b!5920986))

(assert (= (and b!5920979 (not c!1052319)) b!5920984))

(assert (= (and b!5920986 (not res!2481969)) b!5920983))

(assert (= (or b!5920983 b!5920984) bm!469456))

(assert (= (or b!5920982 b!5920986) bm!469457))

(declare-fun m!6816870 () Bool)

(assert (=> bm!469456 m!6816870))

(declare-fun m!6816872 () Bool)

(assert (=> b!5920985 m!6816872))

(declare-fun m!6816874 () Bool)

(assert (=> bm!469457 m!6816874))

(declare-fun m!6816876 () Bool)

(assert (=> b!5920989 m!6816876))

(assert (=> b!5920471 d!1856725))

(declare-fun b!5921018 () Bool)

(declare-fun e!3624813 () Bool)

(declare-fun lt!2310012 () Bool)

(declare-fun call!469465 () Bool)

(assert (=> b!5921018 (= e!3624813 (= lt!2310012 call!469465))))

(declare-fun b!5921019 () Bool)

(declare-fun res!2481995 () Bool)

(declare-fun e!3624815 () Bool)

(assert (=> b!5921019 (=> res!2481995 e!3624815)))

(assert (=> b!5921019 (= res!2481995 (not ((_ is ElementMatch!15971) r!7292)))))

(declare-fun e!3624818 () Bool)

(assert (=> b!5921019 (= e!3624818 e!3624815)))

(declare-fun b!5921020 () Bool)

(declare-fun e!3624817 () Bool)

(declare-fun e!3624812 () Bool)

(assert (=> b!5921020 (= e!3624817 e!3624812)))

(declare-fun res!2481994 () Bool)

(assert (=> b!5921020 (=> res!2481994 e!3624812)))

(assert (=> b!5921020 (= res!2481994 call!469465)))

(declare-fun bm!469460 () Bool)

(assert (=> bm!469460 (= call!469465 (isEmpty!35950 s!2326))))

(declare-fun b!5921021 () Bool)

(declare-fun head!12484 (List!64214) C!32212)

(assert (=> b!5921021 (= e!3624812 (not (= (head!12484 s!2326) (c!1052179 r!7292))))))

(declare-fun b!5921023 () Bool)

(assert (=> b!5921023 (= e!3624813 e!3624818)))

(declare-fun c!1052327 () Bool)

(assert (=> b!5921023 (= c!1052327 ((_ is EmptyLang!15971) r!7292))))

(declare-fun b!5921024 () Bool)

(declare-fun res!2481992 () Bool)

(assert (=> b!5921024 (=> res!2481992 e!3624815)))

(declare-fun e!3624814 () Bool)

(assert (=> b!5921024 (= res!2481992 e!3624814)))

(declare-fun res!2481991 () Bool)

(assert (=> b!5921024 (=> (not res!2481991) (not e!3624814))))

(assert (=> b!5921024 (= res!2481991 lt!2310012)))

(declare-fun b!5921025 () Bool)

(assert (=> b!5921025 (= e!3624818 (not lt!2310012))))

(declare-fun b!5921026 () Bool)

(declare-fun res!2481990 () Bool)

(assert (=> b!5921026 (=> (not res!2481990) (not e!3624814))))

(declare-fun tail!11569 (List!64214) List!64214)

(assert (=> b!5921026 (= res!2481990 (isEmpty!35950 (tail!11569 s!2326)))))

(declare-fun b!5921027 () Bool)

(assert (=> b!5921027 (= e!3624814 (= (head!12484 s!2326) (c!1052179 r!7292)))))

(declare-fun b!5921028 () Bool)

(declare-fun e!3624816 () Bool)

(declare-fun derivativeStep!4702 (Regex!15971 C!32212) Regex!15971)

(assert (=> b!5921028 (= e!3624816 (matchR!8154 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (tail!11569 s!2326)))))

(declare-fun b!5921029 () Bool)

(declare-fun res!2481989 () Bool)

(assert (=> b!5921029 (=> res!2481989 e!3624812)))

(assert (=> b!5921029 (= res!2481989 (not (isEmpty!35950 (tail!11569 s!2326))))))

(declare-fun b!5921022 () Bool)

(declare-fun res!2481988 () Bool)

(assert (=> b!5921022 (=> (not res!2481988) (not e!3624814))))

(assert (=> b!5921022 (= res!2481988 (not call!469465))))

(declare-fun d!1856727 () Bool)

(assert (=> d!1856727 e!3624813))

(declare-fun c!1052326 () Bool)

(assert (=> d!1856727 (= c!1052326 ((_ is EmptyExpr!15971) r!7292))))

(assert (=> d!1856727 (= lt!2310012 e!3624816)))

(declare-fun c!1052328 () Bool)

(assert (=> d!1856727 (= c!1052328 (isEmpty!35950 s!2326))))

(assert (=> d!1856727 (validRegex!7707 r!7292)))

(assert (=> d!1856727 (= (matchR!8154 r!7292 s!2326) lt!2310012)))

(declare-fun b!5921030 () Bool)

(assert (=> b!5921030 (= e!3624816 (nullable!5966 r!7292))))

(declare-fun b!5921031 () Bool)

(assert (=> b!5921031 (= e!3624815 e!3624817)))

(declare-fun res!2481993 () Bool)

(assert (=> b!5921031 (=> (not res!2481993) (not e!3624817))))

(assert (=> b!5921031 (= res!2481993 (not lt!2310012))))

(assert (= (and d!1856727 c!1052328) b!5921030))

(assert (= (and d!1856727 (not c!1052328)) b!5921028))

(assert (= (and d!1856727 c!1052326) b!5921018))

(assert (= (and d!1856727 (not c!1052326)) b!5921023))

(assert (= (and b!5921023 c!1052327) b!5921025))

(assert (= (and b!5921023 (not c!1052327)) b!5921019))

(assert (= (and b!5921019 (not res!2481995)) b!5921024))

(assert (= (and b!5921024 res!2481991) b!5921022))

(assert (= (and b!5921022 res!2481988) b!5921026))

(assert (= (and b!5921026 res!2481990) b!5921027))

(assert (= (and b!5921024 (not res!2481992)) b!5921031))

(assert (= (and b!5921031 res!2481993) b!5921020))

(assert (= (and b!5921020 (not res!2481994)) b!5921029))

(assert (= (and b!5921029 (not res!2481989)) b!5921021))

(assert (= (or b!5921018 b!5921020 b!5921022) bm!469460))

(declare-fun m!6816878 () Bool)

(assert (=> b!5921026 m!6816878))

(assert (=> b!5921026 m!6816878))

(declare-fun m!6816880 () Bool)

(assert (=> b!5921026 m!6816880))

(declare-fun m!6816882 () Bool)

(assert (=> b!5921028 m!6816882))

(assert (=> b!5921028 m!6816882))

(declare-fun m!6816884 () Bool)

(assert (=> b!5921028 m!6816884))

(assert (=> b!5921028 m!6816878))

(assert (=> b!5921028 m!6816884))

(assert (=> b!5921028 m!6816878))

(declare-fun m!6816886 () Bool)

(assert (=> b!5921028 m!6816886))

(assert (=> d!1856727 m!6816874))

(assert (=> d!1856727 m!6816578))

(assert (=> b!5921027 m!6816882))

(assert (=> bm!469460 m!6816874))

(assert (=> b!5921029 m!6816878))

(assert (=> b!5921029 m!6816878))

(assert (=> b!5921029 m!6816880))

(assert (=> b!5921021 m!6816882))

(declare-fun m!6816888 () Bool)

(assert (=> b!5921030 m!6816888))

(assert (=> b!5920471 d!1856727))

(declare-fun d!1856729 () Bool)

(assert (=> d!1856729 (= (matchR!8154 r!7292 s!2326) (matchRSpec!3072 r!7292 s!2326))))

(declare-fun lt!2310015 () Unit!157213)

(declare-fun choose!44657 (Regex!15971 List!64214) Unit!157213)

(assert (=> d!1856729 (= lt!2310015 (choose!44657 r!7292 s!2326))))

(assert (=> d!1856729 (validRegex!7707 r!7292)))

(assert (=> d!1856729 (= (mainMatchTheorem!3072 r!7292 s!2326) lt!2310015)))

(declare-fun bs!1401432 () Bool)

(assert (= bs!1401432 d!1856729))

(assert (=> bs!1401432 m!6816604))

(assert (=> bs!1401432 m!6816602))

(declare-fun m!6816890 () Bool)

(assert (=> bs!1401432 m!6816890))

(assert (=> bs!1401432 m!6816578))

(assert (=> b!5920471 d!1856729))

(declare-fun d!1856731 () Bool)

(declare-fun res!2482010 () Bool)

(declare-fun e!3624838 () Bool)

(assert (=> d!1856731 (=> res!2482010 e!3624838)))

(assert (=> d!1856731 (= res!2482010 ((_ is ElementMatch!15971) r!7292))))

(assert (=> d!1856731 (= (validRegex!7707 r!7292) e!3624838)))

(declare-fun b!5921050 () Bool)

(declare-fun e!3624839 () Bool)

(declare-fun e!3624837 () Bool)

(assert (=> b!5921050 (= e!3624839 e!3624837)))

(declare-fun res!2482007 () Bool)

(assert (=> b!5921050 (= res!2482007 (not (nullable!5966 (reg!16300 r!7292))))))

(assert (=> b!5921050 (=> (not res!2482007) (not e!3624837))))

(declare-fun bm!469467 () Bool)

(declare-fun call!469474 () Bool)

(declare-fun c!1052333 () Bool)

(assert (=> bm!469467 (= call!469474 (validRegex!7707 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))

(declare-fun b!5921051 () Bool)

(declare-fun res!2482009 () Bool)

(declare-fun e!3624834 () Bool)

(assert (=> b!5921051 (=> res!2482009 e!3624834)))

(assert (=> b!5921051 (= res!2482009 (not ((_ is Concat!24816) r!7292)))))

(declare-fun e!3624833 () Bool)

(assert (=> b!5921051 (= e!3624833 e!3624834)))

(declare-fun b!5921052 () Bool)

(declare-fun res!2482006 () Bool)

(declare-fun e!3624835 () Bool)

(assert (=> b!5921052 (=> (not res!2482006) (not e!3624835))))

(declare-fun call!469473 () Bool)

(assert (=> b!5921052 (= res!2482006 call!469473)))

(assert (=> b!5921052 (= e!3624833 e!3624835)))

(declare-fun bm!469468 () Bool)

(declare-fun call!469472 () Bool)

(assert (=> bm!469468 (= call!469473 call!469472)))

(declare-fun b!5921053 () Bool)

(assert (=> b!5921053 (= e!3624837 call!469472)))

(declare-fun b!5921054 () Bool)

(declare-fun e!3624836 () Bool)

(assert (=> b!5921054 (= e!3624836 call!469474)))

(declare-fun b!5921055 () Bool)

(assert (=> b!5921055 (= e!3624834 e!3624836)))

(declare-fun res!2482008 () Bool)

(assert (=> b!5921055 (=> (not res!2482008) (not e!3624836))))

(assert (=> b!5921055 (= res!2482008 call!469473)))

(declare-fun b!5921056 () Bool)

(assert (=> b!5921056 (= e!3624839 e!3624833)))

(assert (=> b!5921056 (= c!1052333 ((_ is Union!15971) r!7292))))

(declare-fun b!5921057 () Bool)

(assert (=> b!5921057 (= e!3624835 call!469474)))

(declare-fun bm!469469 () Bool)

(declare-fun c!1052334 () Bool)

(assert (=> bm!469469 (= call!469472 (validRegex!7707 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))

(declare-fun b!5921058 () Bool)

(assert (=> b!5921058 (= e!3624838 e!3624839)))

(assert (=> b!5921058 (= c!1052334 ((_ is Star!15971) r!7292))))

(assert (= (and d!1856731 (not res!2482010)) b!5921058))

(assert (= (and b!5921058 c!1052334) b!5921050))

(assert (= (and b!5921058 (not c!1052334)) b!5921056))

(assert (= (and b!5921050 res!2482007) b!5921053))

(assert (= (and b!5921056 c!1052333) b!5921052))

(assert (= (and b!5921056 (not c!1052333)) b!5921051))

(assert (= (and b!5921052 res!2482006) b!5921057))

(assert (= (and b!5921051 (not res!2482009)) b!5921055))

(assert (= (and b!5921055 res!2482008) b!5921054))

(assert (= (or b!5921057 b!5921054) bm!469467))

(assert (= (or b!5921052 b!5921055) bm!469468))

(assert (= (or b!5921053 bm!469468) bm!469469))

(declare-fun m!6816892 () Bool)

(assert (=> b!5921050 m!6816892))

(declare-fun m!6816894 () Bool)

(assert (=> bm!469467 m!6816894))

(declare-fun m!6816896 () Bool)

(assert (=> bm!469469 m!6816896))

(assert (=> start!602060 d!1856731))

(declare-fun bs!1401433 () Bool)

(declare-fun d!1856733 () Bool)

(assert (= bs!1401433 (and d!1856733 d!1856641)))

(declare-fun lambda!323011 () Int)

(assert (=> bs!1401433 (= lambda!323011 lambda!322963)))

(declare-fun bs!1401434 () Bool)

(assert (= bs!1401434 (and d!1856733 d!1856675)))

(assert (=> bs!1401434 (= lambda!323011 lambda!322975)))

(declare-fun bs!1401435 () Bool)

(assert (= bs!1401435 (and d!1856733 d!1856717)))

(assert (=> bs!1401435 (= lambda!323011 lambda!323001)))

(declare-fun bs!1401436 () Bool)

(assert (= bs!1401436 (and d!1856733 d!1856723)))

(assert (=> bs!1401436 (= lambda!323011 lambda!323002)))

(declare-fun b!5921079 () Bool)

(declare-fun e!3624857 () Bool)

(declare-fun lt!2310018 () Regex!15971)

(declare-fun isEmptyLang!1408 (Regex!15971) Bool)

(assert (=> b!5921079 (= e!3624857 (isEmptyLang!1408 lt!2310018))))

(declare-fun b!5921080 () Bool)

(declare-fun e!3624855 () Bool)

(assert (=> b!5921080 (= e!3624855 (= lt!2310018 (head!12482 (unfocusZipperList!1392 zl!343))))))

(declare-fun b!5921081 () Bool)

(declare-fun e!3624856 () Regex!15971)

(assert (=> b!5921081 (= e!3624856 (Union!15971 (h!70536 (unfocusZipperList!1392 zl!343)) (generalisedUnion!1815 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5921082 () Bool)

(declare-fun e!3624854 () Regex!15971)

(assert (=> b!5921082 (= e!3624854 e!3624856)))

(declare-fun c!1052343 () Bool)

(assert (=> b!5921082 (= c!1052343 ((_ is Cons!64088) (unfocusZipperList!1392 zl!343)))))

(declare-fun e!3624853 () Bool)

(assert (=> d!1856733 e!3624853))

(declare-fun res!2482016 () Bool)

(assert (=> d!1856733 (=> (not res!2482016) (not e!3624853))))

(assert (=> d!1856733 (= res!2482016 (validRegex!7707 lt!2310018))))

(assert (=> d!1856733 (= lt!2310018 e!3624854)))

(declare-fun c!1052344 () Bool)

(declare-fun e!3624852 () Bool)

(assert (=> d!1856733 (= c!1052344 e!3624852)))

(declare-fun res!2482015 () Bool)

(assert (=> d!1856733 (=> (not res!2482015) (not e!3624852))))

(assert (=> d!1856733 (= res!2482015 ((_ is Cons!64088) (unfocusZipperList!1392 zl!343)))))

(assert (=> d!1856733 (forall!15054 (unfocusZipperList!1392 zl!343) lambda!323011)))

(assert (=> d!1856733 (= (generalisedUnion!1815 (unfocusZipperList!1392 zl!343)) lt!2310018)))

(declare-fun b!5921083 () Bool)

(declare-fun isUnion!838 (Regex!15971) Bool)

(assert (=> b!5921083 (= e!3624855 (isUnion!838 lt!2310018))))

(declare-fun b!5921084 () Bool)

(assert (=> b!5921084 (= e!3624857 e!3624855)))

(declare-fun c!1052345 () Bool)

(assert (=> b!5921084 (= c!1052345 (isEmpty!35946 (tail!11567 (unfocusZipperList!1392 zl!343))))))

(declare-fun b!5921085 () Bool)

(assert (=> b!5921085 (= e!3624854 (h!70536 (unfocusZipperList!1392 zl!343)))))

(declare-fun b!5921086 () Bool)

(assert (=> b!5921086 (= e!3624852 (isEmpty!35946 (t!377603 (unfocusZipperList!1392 zl!343))))))

(declare-fun b!5921087 () Bool)

(assert (=> b!5921087 (= e!3624853 e!3624857)))

(declare-fun c!1052346 () Bool)

(assert (=> b!5921087 (= c!1052346 (isEmpty!35946 (unfocusZipperList!1392 zl!343)))))

(declare-fun b!5921088 () Bool)

(assert (=> b!5921088 (= e!3624856 EmptyLang!15971)))

(assert (= (and d!1856733 res!2482015) b!5921086))

(assert (= (and d!1856733 c!1052344) b!5921085))

(assert (= (and d!1856733 (not c!1052344)) b!5921082))

(assert (= (and b!5921082 c!1052343) b!5921081))

(assert (= (and b!5921082 (not c!1052343)) b!5921088))

(assert (= (and d!1856733 res!2482016) b!5921087))

(assert (= (and b!5921087 c!1052346) b!5921079))

(assert (= (and b!5921087 (not c!1052346)) b!5921084))

(assert (= (and b!5921084 c!1052345) b!5921080))

(assert (= (and b!5921084 (not c!1052345)) b!5921083))

(declare-fun m!6816898 () Bool)

(assert (=> b!5921083 m!6816898))

(assert (=> b!5921087 m!6816556))

(declare-fun m!6816900 () Bool)

(assert (=> b!5921087 m!6816900))

(declare-fun m!6816902 () Bool)

(assert (=> b!5921079 m!6816902))

(assert (=> b!5921084 m!6816556))

(declare-fun m!6816904 () Bool)

(assert (=> b!5921084 m!6816904))

(assert (=> b!5921084 m!6816904))

(declare-fun m!6816906 () Bool)

(assert (=> b!5921084 m!6816906))

(declare-fun m!6816908 () Bool)

(assert (=> b!5921086 m!6816908))

(assert (=> b!5921080 m!6816556))

(declare-fun m!6816910 () Bool)

(assert (=> b!5921080 m!6816910))

(declare-fun m!6816912 () Bool)

(assert (=> d!1856733 m!6816912))

(assert (=> d!1856733 m!6816556))

(declare-fun m!6816914 () Bool)

(assert (=> d!1856733 m!6816914))

(declare-fun m!6816916 () Bool)

(assert (=> b!5921081 m!6816916))

(assert (=> b!5920474 d!1856733))

(declare-fun bs!1401437 () Bool)

(declare-fun d!1856735 () Bool)

(assert (= bs!1401437 (and d!1856735 d!1856717)))

(declare-fun lambda!323014 () Int)

(assert (=> bs!1401437 (= lambda!323014 lambda!323001)))

(declare-fun bs!1401438 () Bool)

(assert (= bs!1401438 (and d!1856735 d!1856675)))

(assert (=> bs!1401438 (= lambda!323014 lambda!322975)))

(declare-fun bs!1401439 () Bool)

(assert (= bs!1401439 (and d!1856735 d!1856641)))

(assert (=> bs!1401439 (= lambda!323014 lambda!322963)))

(declare-fun bs!1401440 () Bool)

(assert (= bs!1401440 (and d!1856735 d!1856733)))

(assert (=> bs!1401440 (= lambda!323014 lambda!323011)))

(declare-fun bs!1401441 () Bool)

(assert (= bs!1401441 (and d!1856735 d!1856723)))

(assert (=> bs!1401441 (= lambda!323014 lambda!323002)))

(declare-fun lt!2310021 () List!64212)

(assert (=> d!1856735 (forall!15054 lt!2310021 lambda!323014)))

(declare-fun e!3624860 () List!64212)

(assert (=> d!1856735 (= lt!2310021 e!3624860)))

(declare-fun c!1052349 () Bool)

(assert (=> d!1856735 (= c!1052349 ((_ is Cons!64089) zl!343))))

(assert (=> d!1856735 (= (unfocusZipperList!1392 zl!343) lt!2310021)))

(declare-fun b!5921093 () Bool)

(assert (=> b!5921093 (= e!3624860 (Cons!64088 (generalisedConcat!1568 (exprs!5855 (h!70537 zl!343))) (unfocusZipperList!1392 (t!377604 zl!343))))))

(declare-fun b!5921094 () Bool)

(assert (=> b!5921094 (= e!3624860 Nil!64088)))

(assert (= (and d!1856735 c!1052349) b!5921093))

(assert (= (and d!1856735 (not c!1052349)) b!5921094))

(declare-fun m!6816918 () Bool)

(assert (=> d!1856735 m!6816918))

(assert (=> b!5921093 m!6816566))

(declare-fun m!6816920 () Bool)

(assert (=> b!5921093 m!6816920))

(assert (=> b!5920474 d!1856735))

(declare-fun d!1856737 () Bool)

(declare-fun lt!2310024 () Regex!15971)

(assert (=> d!1856737 (validRegex!7707 lt!2310024)))

(assert (=> d!1856737 (= lt!2310024 (generalisedUnion!1815 (unfocusZipperList!1392 zl!343)))))

(assert (=> d!1856737 (= (unfocusZipper!1713 zl!343) lt!2310024)))

(declare-fun bs!1401442 () Bool)

(assert (= bs!1401442 d!1856737))

(declare-fun m!6816922 () Bool)

(assert (=> bs!1401442 m!6816922))

(assert (=> bs!1401442 m!6816556))

(assert (=> bs!1401442 m!6816556))

(assert (=> bs!1401442 m!6816558))

(assert (=> b!5920472 d!1856737))

(declare-fun e!3624863 () Bool)

(assert (=> b!5920480 (= tp!1645775 e!3624863)))

(declare-fun b!5921106 () Bool)

(declare-fun tp!1645854 () Bool)

(declare-fun tp!1645855 () Bool)

(assert (=> b!5921106 (= e!3624863 (and tp!1645854 tp!1645855))))

(declare-fun b!5921107 () Bool)

(declare-fun tp!1645853 () Bool)

(assert (=> b!5921107 (= e!3624863 tp!1645853)))

(declare-fun b!5921105 () Bool)

(assert (=> b!5921105 (= e!3624863 tp_is_empty!41195)))

(declare-fun b!5921108 () Bool)

(declare-fun tp!1645851 () Bool)

(declare-fun tp!1645852 () Bool)

(assert (=> b!5921108 (= e!3624863 (and tp!1645851 tp!1645852))))

(assert (= (and b!5920480 ((_ is ElementMatch!15971) (reg!16300 r!7292))) b!5921105))

(assert (= (and b!5920480 ((_ is Concat!24816) (reg!16300 r!7292))) b!5921106))

(assert (= (and b!5920480 ((_ is Star!15971) (reg!16300 r!7292))) b!5921107))

(assert (= (and b!5920480 ((_ is Union!15971) (reg!16300 r!7292))) b!5921108))

(declare-fun condSetEmpty!40182 () Bool)

(assert (=> setNonEmpty!40176 (= condSetEmpty!40182 (= setRest!40176 ((as const (Array Context!10710 Bool)) false)))))

(declare-fun setRes!40182 () Bool)

(assert (=> setNonEmpty!40176 (= tp!1645774 setRes!40182)))

(declare-fun setIsEmpty!40182 () Bool)

(assert (=> setIsEmpty!40182 setRes!40182))

(declare-fun setNonEmpty!40182 () Bool)

(declare-fun setElem!40182 () Context!10710)

(declare-fun tp!1645861 () Bool)

(declare-fun e!3624866 () Bool)

(assert (=> setNonEmpty!40182 (= setRes!40182 (and tp!1645861 (inv!83174 setElem!40182) e!3624866))))

(declare-fun setRest!40182 () (InoxSet Context!10710))

(assert (=> setNonEmpty!40182 (= setRest!40176 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) setElem!40182 true) setRest!40182))))

(declare-fun b!5921113 () Bool)

(declare-fun tp!1645860 () Bool)

(assert (=> b!5921113 (= e!3624866 tp!1645860)))

(assert (= (and setNonEmpty!40176 condSetEmpty!40182) setIsEmpty!40182))

(assert (= (and setNonEmpty!40176 (not condSetEmpty!40182)) setNonEmpty!40182))

(assert (= setNonEmpty!40182 b!5921113))

(declare-fun m!6816924 () Bool)

(assert (=> setNonEmpty!40182 m!6816924))

(declare-fun b!5921118 () Bool)

(declare-fun e!3624869 () Bool)

(declare-fun tp!1645866 () Bool)

(declare-fun tp!1645867 () Bool)

(assert (=> b!5921118 (= e!3624869 (and tp!1645866 tp!1645867))))

(assert (=> b!5920470 (= tp!1645778 e!3624869)))

(assert (= (and b!5920470 ((_ is Cons!64088) (exprs!5855 (h!70537 zl!343)))) b!5921118))

(declare-fun b!5921123 () Bool)

(declare-fun e!3624872 () Bool)

(declare-fun tp!1645870 () Bool)

(assert (=> b!5921123 (= e!3624872 (and tp_is_empty!41195 tp!1645870))))

(assert (=> b!5920475 (= tp!1645773 e!3624872)))

(assert (= (and b!5920475 ((_ is Cons!64090) (t!377605 s!2326))) b!5921123))

(declare-fun b!5921124 () Bool)

(declare-fun e!3624873 () Bool)

(declare-fun tp!1645871 () Bool)

(declare-fun tp!1645872 () Bool)

(assert (=> b!5921124 (= e!3624873 (and tp!1645871 tp!1645872))))

(assert (=> b!5920484 (= tp!1645780 e!3624873)))

(assert (= (and b!5920484 ((_ is Cons!64088) (exprs!5855 setElem!40176))) b!5921124))

(declare-fun e!3624874 () Bool)

(assert (=> b!5920473 (= tp!1645782 e!3624874)))

(declare-fun b!5921126 () Bool)

(declare-fun tp!1645876 () Bool)

(declare-fun tp!1645877 () Bool)

(assert (=> b!5921126 (= e!3624874 (and tp!1645876 tp!1645877))))

(declare-fun b!5921127 () Bool)

(declare-fun tp!1645875 () Bool)

(assert (=> b!5921127 (= e!3624874 tp!1645875)))

(declare-fun b!5921125 () Bool)

(assert (=> b!5921125 (= e!3624874 tp_is_empty!41195)))

(declare-fun b!5921128 () Bool)

(declare-fun tp!1645873 () Bool)

(declare-fun tp!1645874 () Bool)

(assert (=> b!5921128 (= e!3624874 (and tp!1645873 tp!1645874))))

(assert (= (and b!5920473 ((_ is ElementMatch!15971) (regOne!32454 r!7292))) b!5921125))

(assert (= (and b!5920473 ((_ is Concat!24816) (regOne!32454 r!7292))) b!5921126))

(assert (= (and b!5920473 ((_ is Star!15971) (regOne!32454 r!7292))) b!5921127))

(assert (= (and b!5920473 ((_ is Union!15971) (regOne!32454 r!7292))) b!5921128))

(declare-fun e!3624875 () Bool)

(assert (=> b!5920473 (= tp!1645776 e!3624875)))

(declare-fun b!5921130 () Bool)

(declare-fun tp!1645881 () Bool)

(declare-fun tp!1645882 () Bool)

(assert (=> b!5921130 (= e!3624875 (and tp!1645881 tp!1645882))))

(declare-fun b!5921131 () Bool)

(declare-fun tp!1645880 () Bool)

(assert (=> b!5921131 (= e!3624875 tp!1645880)))

(declare-fun b!5921129 () Bool)

(assert (=> b!5921129 (= e!3624875 tp_is_empty!41195)))

(declare-fun b!5921132 () Bool)

(declare-fun tp!1645878 () Bool)

(declare-fun tp!1645879 () Bool)

(assert (=> b!5921132 (= e!3624875 (and tp!1645878 tp!1645879))))

(assert (= (and b!5920473 ((_ is ElementMatch!15971) (regTwo!32454 r!7292))) b!5921129))

(assert (= (and b!5920473 ((_ is Concat!24816) (regTwo!32454 r!7292))) b!5921130))

(assert (= (and b!5920473 ((_ is Star!15971) (regTwo!32454 r!7292))) b!5921131))

(assert (= (and b!5920473 ((_ is Union!15971) (regTwo!32454 r!7292))) b!5921132))

(declare-fun b!5921140 () Bool)

(declare-fun e!3624881 () Bool)

(declare-fun tp!1645887 () Bool)

(assert (=> b!5921140 (= e!3624881 tp!1645887)))

(declare-fun e!3624880 () Bool)

(declare-fun tp!1645888 () Bool)

(declare-fun b!5921139 () Bool)

(assert (=> b!5921139 (= e!3624880 (and (inv!83174 (h!70537 (t!377604 zl!343))) e!3624881 tp!1645888))))

(assert (=> b!5920477 (= tp!1645777 e!3624880)))

(assert (= b!5921139 b!5921140))

(assert (= (and b!5920477 ((_ is Cons!64089) (t!377604 zl!343))) b!5921139))

(declare-fun m!6816926 () Bool)

(assert (=> b!5921139 m!6816926))

(declare-fun e!3624882 () Bool)

(assert (=> b!5920483 (= tp!1645781 e!3624882)))

(declare-fun b!5921142 () Bool)

(declare-fun tp!1645892 () Bool)

(declare-fun tp!1645893 () Bool)

(assert (=> b!5921142 (= e!3624882 (and tp!1645892 tp!1645893))))

(declare-fun b!5921143 () Bool)

(declare-fun tp!1645891 () Bool)

(assert (=> b!5921143 (= e!3624882 tp!1645891)))

(declare-fun b!5921141 () Bool)

(assert (=> b!5921141 (= e!3624882 tp_is_empty!41195)))

(declare-fun b!5921144 () Bool)

(declare-fun tp!1645889 () Bool)

(declare-fun tp!1645890 () Bool)

(assert (=> b!5921144 (= e!3624882 (and tp!1645889 tp!1645890))))

(assert (= (and b!5920483 ((_ is ElementMatch!15971) (regOne!32455 r!7292))) b!5921141))

(assert (= (and b!5920483 ((_ is Concat!24816) (regOne!32455 r!7292))) b!5921142))

(assert (= (and b!5920483 ((_ is Star!15971) (regOne!32455 r!7292))) b!5921143))

(assert (= (and b!5920483 ((_ is Union!15971) (regOne!32455 r!7292))) b!5921144))

(declare-fun e!3624883 () Bool)

(assert (=> b!5920483 (= tp!1645779 e!3624883)))

(declare-fun b!5921146 () Bool)

(declare-fun tp!1645897 () Bool)

(declare-fun tp!1645898 () Bool)

(assert (=> b!5921146 (= e!3624883 (and tp!1645897 tp!1645898))))

(declare-fun b!5921147 () Bool)

(declare-fun tp!1645896 () Bool)

(assert (=> b!5921147 (= e!3624883 tp!1645896)))

(declare-fun b!5921145 () Bool)

(assert (=> b!5921145 (= e!3624883 tp_is_empty!41195)))

(declare-fun b!5921148 () Bool)

(declare-fun tp!1645894 () Bool)

(declare-fun tp!1645895 () Bool)

(assert (=> b!5921148 (= e!3624883 (and tp!1645894 tp!1645895))))

(assert (= (and b!5920483 ((_ is ElementMatch!15971) (regTwo!32455 r!7292))) b!5921145))

(assert (= (and b!5920483 ((_ is Concat!24816) (regTwo!32455 r!7292))) b!5921146))

(assert (= (and b!5920483 ((_ is Star!15971) (regTwo!32455 r!7292))) b!5921147))

(assert (= (and b!5920483 ((_ is Union!15971) (regTwo!32455 r!7292))) b!5921148))

(declare-fun b_lambda!222387 () Bool)

(assert (= b_lambda!222383 (or b!5920465 b_lambda!222387)))

(declare-fun bs!1401443 () Bool)

(declare-fun d!1856739 () Bool)

(assert (= bs!1401443 (and d!1856739 b!5920465)))

(assert (=> bs!1401443 (= (dynLambda!25056 lambda!322950 (h!70537 zl!343)) (derivationStepZipperUp!1147 (h!70537 zl!343) (h!70538 s!2326)))))

(assert (=> bs!1401443 m!6816596))

(assert (=> d!1856671 d!1856739))

(check-sat (not b!5921081) (not b!5921108) (not b!5921030) (not b!5921139) (not b!5921028) (not bm!469399) (not bm!469460) (not d!1856685) (not b!5920942) (not b!5920753) (not b!5921107) (not b!5921143) (not b!5921124) (not b!5920755) (not b!5920561) (not b!5921130) (not d!1856709) (not b!5921127) (not b!5921142) (not b!5920985) (not b!5920553) (not b!5921128) (not b!5921148) (not b!5920560) (not b!5920754) tp_is_empty!41195 (not b!5921106) (not b!5920615) (not b!5921050) (not d!1856737) (not d!1856713) (not d!1856729) (not b!5920989) (not b!5921147) (not d!1856727) (not b!5920511) (not b!5921084) (not d!1856641) (not d!1856733) (not b!5920559) (not d!1856655) (not d!1856723) (not b!5920943) (not bs!1401443) (not b!5921113) (not d!1856671) (not b!5921079) (not d!1856701) (not d!1856639) (not setNonEmpty!40182) (not d!1856707) (not b!5921132) (not bm!469446) (not b!5921140) (not d!1856687) (not b!5920756) (not bm!469469) (not b!5921131) (not b!5921123) (not d!1856717) (not b!5921144) (not b!5921086) (not d!1856663) (not b!5921118) (not b!5920941) (not bm!469456) (not b!5921080) (not bm!469457) (not b_lambda!222387) (not b!5921029) (not b!5921021) (not b!5921027) (not b!5920614) (not b!5920556) (not b!5921146) (not b!5920751) (not b!5920558) (not b!5921026) (not b!5920557) (not b!5920752) (not bm!469448) (not b!5921087) (not bm!469467) (not b!5921083) (not d!1856735) (not b!5921126) (not d!1856675) (not bm!469450) (not bm!469451) (not b!5921093))
(check-sat)
(get-model)

(declare-fun b!5921149 () Bool)

(declare-fun call!469475 () (InoxSet Context!10710))

(declare-fun e!3624886 () (InoxSet Context!10710))

(assert (=> b!5921149 (= e!3624886 ((_ map or) call!469475 (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (h!70538 s!2326))))))

(declare-fun b!5921150 () Bool)

(declare-fun e!3624884 () Bool)

(assert (=> b!5921150 (= e!3624884 (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun bm!469470 () Bool)

(assert (=> bm!469470 (= call!469475 (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (h!70538 s!2326)))))

(declare-fun d!1856741 () Bool)

(declare-fun c!1052351 () Bool)

(assert (=> d!1856741 (= c!1052351 e!3624884)))

(declare-fun res!2482017 () Bool)

(assert (=> d!1856741 (=> (not res!2482017) (not e!3624884))))

(assert (=> d!1856741 (= res!2482017 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))

(assert (=> d!1856741 (= (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (h!70538 s!2326)) e!3624886)))

(declare-fun b!5921151 () Bool)

(declare-fun e!3624885 () (InoxSet Context!10710))

(assert (=> b!5921151 (= e!3624885 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5921152 () Bool)

(assert (=> b!5921152 (= e!3624886 e!3624885)))

(declare-fun c!1052350 () Bool)

(assert (=> b!5921152 (= c!1052350 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5921153 () Bool)

(assert (=> b!5921153 (= e!3624885 call!469475)))

(assert (= (and d!1856741 res!2482017) b!5921150))

(assert (= (and d!1856741 c!1052351) b!5921149))

(assert (= (and d!1856741 (not c!1052351)) b!5921152))

(assert (= (and b!5921152 c!1052350) b!5921153))

(assert (= (and b!5921152 (not c!1052350)) b!5921151))

(assert (= (or b!5921149 b!5921153) bm!469470))

(declare-fun m!6816928 () Bool)

(assert (=> b!5921149 m!6816928))

(declare-fun m!6816930 () Bool)

(assert (=> b!5921150 m!6816930))

(declare-fun m!6816932 () Bool)

(assert (=> bm!469470 m!6816932))

(assert (=> b!5920614 d!1856741))

(declare-fun d!1856743 () Bool)

(assert (=> d!1856743 (= (flatMap!1484 z!1189 lambda!322971) (choose!44651 z!1189 lambda!322971))))

(declare-fun bs!1401444 () Bool)

(assert (= bs!1401444 d!1856743))

(declare-fun m!6816934 () Bool)

(assert (=> bs!1401444 m!6816934))

(assert (=> d!1856655 d!1856743))

(declare-fun d!1856745 () Bool)

(assert (=> d!1856745 (= ($colon$colon!1858 (exprs!5855 (Context!10711 Nil!64088)) (ite (or c!1052303 c!1052302) (regTwo!32454 r!7292) r!7292)) (Cons!64088 (ite (or c!1052303 c!1052302) (regTwo!32454 r!7292) r!7292) (exprs!5855 (Context!10711 Nil!64088))))))

(assert (=> bm!469446 d!1856745))

(assert (=> d!1856671 d!1856663))

(declare-fun d!1856747 () Bool)

(assert (=> d!1856747 (= (flatMap!1484 z!1189 lambda!322950) (dynLambda!25056 lambda!322950 (h!70537 zl!343)))))

(assert (=> d!1856747 true))

(declare-fun _$13!2672 () Unit!157213)

(assert (=> d!1856747 (= (choose!44652 z!1189 (h!70537 zl!343) lambda!322950) _$13!2672)))

(declare-fun b_lambda!222389 () Bool)

(assert (=> (not b_lambda!222389) (not d!1856747)))

(declare-fun bs!1401445 () Bool)

(assert (= bs!1401445 d!1856747))

(assert (=> bs!1401445 m!6816594))

(assert (=> bs!1401445 m!6816710))

(assert (=> d!1856671 d!1856747))

(declare-fun d!1856749 () Bool)

(assert (=> d!1856749 true))

(assert (=> d!1856749 true))

(declare-fun res!2482020 () Bool)

(assert (=> d!1856749 (= (choose!44653 lambda!322949) res!2482020)))

(assert (=> d!1856713 d!1856749))

(declare-fun b!5921154 () Bool)

(declare-fun e!3624890 () (InoxSet Context!10710))

(declare-fun e!3624892 () (InoxSet Context!10710))

(assert (=> b!5921154 (= e!3624890 e!3624892)))

(declare-fun c!1052355 () Bool)

(assert (=> b!5921154 (= c!1052355 ((_ is Union!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun bm!469471 () Bool)

(declare-fun call!469476 () (InoxSet Context!10710))

(declare-fun call!469481 () (InoxSet Context!10710))

(assert (=> bm!469471 (= call!469476 call!469481)))

(declare-fun b!5921155 () Bool)

(assert (=> b!5921155 (= e!3624890 (store ((as const (Array Context!10710 Bool)) false) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) true))))

(declare-fun b!5921156 () Bool)

(declare-fun c!1052352 () Bool)

(assert (=> b!5921156 (= c!1052352 ((_ is Star!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun e!3624889 () (InoxSet Context!10710))

(declare-fun e!3624891 () (InoxSet Context!10710))

(assert (=> b!5921156 (= e!3624889 e!3624891)))

(declare-fun d!1856751 () Bool)

(declare-fun c!1052356 () Bool)

(assert (=> d!1856751 (= c!1052356 (and ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))) (= (c!1052179 (h!70536 (exprs!5855 (h!70537 zl!343)))) (h!70538 s!2326))))))

(assert (=> d!1856751 (= (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (h!70537 zl!343))) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (h!70538 s!2326)) e!3624890)))

(declare-fun b!5921157 () Bool)

(declare-fun c!1052354 () Bool)

(declare-fun e!3624887 () Bool)

(assert (=> b!5921157 (= c!1052354 e!3624887)))

(declare-fun res!2482021 () Bool)

(assert (=> b!5921157 (=> (not res!2482021) (not e!3624887))))

(assert (=> b!5921157 (= res!2482021 ((_ is Concat!24816) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun e!3624888 () (InoxSet Context!10710))

(assert (=> b!5921157 (= e!3624892 e!3624888)))

(declare-fun c!1052353 () Bool)

(declare-fun call!469479 () List!64212)

(declare-fun bm!469472 () Bool)

(assert (=> bm!469472 (= call!469479 ($colon$colon!1858 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))) (ite (or c!1052354 c!1052353) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (h!70536 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun bm!469473 () Bool)

(declare-fun call!469480 () List!64212)

(assert (=> bm!469473 (= call!469480 call!469479)))

(declare-fun b!5921158 () Bool)

(assert (=> b!5921158 (= e!3624891 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5921159 () Bool)

(assert (=> b!5921159 (= e!3624888 e!3624889)))

(assert (=> b!5921159 (= c!1052353 ((_ is Concat!24816) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5921160 () Bool)

(declare-fun call!469477 () (InoxSet Context!10710))

(assert (=> b!5921160 (= e!3624888 ((_ map or) call!469477 call!469481))))

(declare-fun bm!469474 () Bool)

(assert (=> bm!469474 (= call!469477 (derivationStepZipperDown!1221 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))) (ite c!1052355 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469479)) (h!70538 s!2326)))))

(declare-fun b!5921161 () Bool)

(assert (=> b!5921161 (= e!3624889 call!469476)))

(declare-fun b!5921162 () Bool)

(declare-fun call!469478 () (InoxSet Context!10710))

(assert (=> b!5921162 (= e!3624892 ((_ map or) call!469478 call!469477))))

(declare-fun b!5921163 () Bool)

(assert (=> b!5921163 (= e!3624891 call!469476)))

(declare-fun bm!469475 () Bool)

(assert (=> bm!469475 (= call!469481 call!469478)))

(declare-fun b!5921164 () Bool)

(assert (=> b!5921164 (= e!3624887 (nullable!5966 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun bm!469476 () Bool)

(assert (=> bm!469476 (= call!469478 (derivationStepZipperDown!1221 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343))))))) (ite (or c!1052355 c!1052354) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469480)) (h!70538 s!2326)))))

(assert (= (and d!1856751 c!1052356) b!5921155))

(assert (= (and d!1856751 (not c!1052356)) b!5921154))

(assert (= (and b!5921154 c!1052355) b!5921162))

(assert (= (and b!5921154 (not c!1052355)) b!5921157))

(assert (= (and b!5921157 res!2482021) b!5921164))

(assert (= (and b!5921157 c!1052354) b!5921160))

(assert (= (and b!5921157 (not c!1052354)) b!5921159))

(assert (= (and b!5921159 c!1052353) b!5921161))

(assert (= (and b!5921159 (not c!1052353)) b!5921156))

(assert (= (and b!5921156 c!1052352) b!5921163))

(assert (= (and b!5921156 (not c!1052352)) b!5921158))

(assert (= (or b!5921161 b!5921163) bm!469473))

(assert (= (or b!5921161 b!5921163) bm!469471))

(assert (= (or b!5921160 bm!469473) bm!469472))

(assert (= (or b!5921160 bm!469471) bm!469475))

(assert (= (or b!5921162 b!5921160) bm!469474))

(assert (= (or b!5921162 bm!469475) bm!469476))

(declare-fun m!6816936 () Bool)

(assert (=> bm!469476 m!6816936))

(declare-fun m!6816938 () Bool)

(assert (=> bm!469474 m!6816938))

(declare-fun m!6816940 () Bool)

(assert (=> b!5921155 m!6816940))

(declare-fun m!6816942 () Bool)

(assert (=> b!5921164 m!6816942))

(declare-fun m!6816944 () Bool)

(assert (=> bm!469472 m!6816944))

(assert (=> bm!469399 d!1856751))

(declare-fun d!1856753 () Bool)

(assert (=> d!1856753 (= (isEmpty!35946 (tail!11567 (unfocusZipperList!1392 zl!343))) ((_ is Nil!64088) (tail!11567 (unfocusZipperList!1392 zl!343))))))

(assert (=> b!5921084 d!1856753))

(declare-fun d!1856755 () Bool)

(assert (=> d!1856755 (= (tail!11567 (unfocusZipperList!1392 zl!343)) (t!377603 (unfocusZipperList!1392 zl!343)))))

(assert (=> b!5921084 d!1856755))

(declare-fun b!5921165 () Bool)

(declare-fun e!3624894 () Bool)

(declare-fun lt!2310025 () Bool)

(declare-fun call!469482 () Bool)

(assert (=> b!5921165 (= e!3624894 (= lt!2310025 call!469482))))

(declare-fun b!5921166 () Bool)

(declare-fun res!2482029 () Bool)

(declare-fun e!3624896 () Bool)

(assert (=> b!5921166 (=> res!2482029 e!3624896)))

(assert (=> b!5921166 (= res!2482029 (not ((_ is ElementMatch!15971) (regTwo!32454 r!7292))))))

(declare-fun e!3624899 () Bool)

(assert (=> b!5921166 (= e!3624899 e!3624896)))

(declare-fun b!5921167 () Bool)

(declare-fun e!3624898 () Bool)

(declare-fun e!3624893 () Bool)

(assert (=> b!5921167 (= e!3624898 e!3624893)))

(declare-fun res!2482028 () Bool)

(assert (=> b!5921167 (=> res!2482028 e!3624893)))

(assert (=> b!5921167 (= res!2482028 call!469482)))

(declare-fun bm!469477 () Bool)

(assert (=> bm!469477 (= call!469482 (isEmpty!35950 (_2!36253 (get!22069 lt!2309996))))))

(declare-fun b!5921168 () Bool)

(assert (=> b!5921168 (= e!3624893 (not (= (head!12484 (_2!36253 (get!22069 lt!2309996))) (c!1052179 (regTwo!32454 r!7292)))))))

(declare-fun b!5921170 () Bool)

(assert (=> b!5921170 (= e!3624894 e!3624899)))

(declare-fun c!1052358 () Bool)

(assert (=> b!5921170 (= c!1052358 ((_ is EmptyLang!15971) (regTwo!32454 r!7292)))))

(declare-fun b!5921171 () Bool)

(declare-fun res!2482026 () Bool)

(assert (=> b!5921171 (=> res!2482026 e!3624896)))

(declare-fun e!3624895 () Bool)

(assert (=> b!5921171 (= res!2482026 e!3624895)))

(declare-fun res!2482025 () Bool)

(assert (=> b!5921171 (=> (not res!2482025) (not e!3624895))))

(assert (=> b!5921171 (= res!2482025 lt!2310025)))

(declare-fun b!5921172 () Bool)

(assert (=> b!5921172 (= e!3624899 (not lt!2310025))))

(declare-fun b!5921173 () Bool)

(declare-fun res!2482024 () Bool)

(assert (=> b!5921173 (=> (not res!2482024) (not e!3624895))))

(assert (=> b!5921173 (= res!2482024 (isEmpty!35950 (tail!11569 (_2!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5921174 () Bool)

(assert (=> b!5921174 (= e!3624895 (= (head!12484 (_2!36253 (get!22069 lt!2309996))) (c!1052179 (regTwo!32454 r!7292))))))

(declare-fun b!5921175 () Bool)

(declare-fun e!3624897 () Bool)

(assert (=> b!5921175 (= e!3624897 (matchR!8154 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996)))) (tail!11569 (_2!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5921176 () Bool)

(declare-fun res!2482023 () Bool)

(assert (=> b!5921176 (=> res!2482023 e!3624893)))

(assert (=> b!5921176 (= res!2482023 (not (isEmpty!35950 (tail!11569 (_2!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5921169 () Bool)

(declare-fun res!2482022 () Bool)

(assert (=> b!5921169 (=> (not res!2482022) (not e!3624895))))

(assert (=> b!5921169 (= res!2482022 (not call!469482))))

(declare-fun d!1856757 () Bool)

(assert (=> d!1856757 e!3624894))

(declare-fun c!1052357 () Bool)

(assert (=> d!1856757 (= c!1052357 ((_ is EmptyExpr!15971) (regTwo!32454 r!7292)))))

(assert (=> d!1856757 (= lt!2310025 e!3624897)))

(declare-fun c!1052359 () Bool)

(assert (=> d!1856757 (= c!1052359 (isEmpty!35950 (_2!36253 (get!22069 lt!2309996))))))

(assert (=> d!1856757 (validRegex!7707 (regTwo!32454 r!7292))))

(assert (=> d!1856757 (= (matchR!8154 (regTwo!32454 r!7292) (_2!36253 (get!22069 lt!2309996))) lt!2310025)))

(declare-fun b!5921177 () Bool)

(assert (=> b!5921177 (= e!3624897 (nullable!5966 (regTwo!32454 r!7292)))))

(declare-fun b!5921178 () Bool)

(assert (=> b!5921178 (= e!3624896 e!3624898)))

(declare-fun res!2482027 () Bool)

(assert (=> b!5921178 (=> (not res!2482027) (not e!3624898))))

(assert (=> b!5921178 (= res!2482027 (not lt!2310025))))

(assert (= (and d!1856757 c!1052359) b!5921177))

(assert (= (and d!1856757 (not c!1052359)) b!5921175))

(assert (= (and d!1856757 c!1052357) b!5921165))

(assert (= (and d!1856757 (not c!1052357)) b!5921170))

(assert (= (and b!5921170 c!1052358) b!5921172))

(assert (= (and b!5921170 (not c!1052358)) b!5921166))

(assert (= (and b!5921166 (not res!2482029)) b!5921171))

(assert (= (and b!5921171 res!2482025) b!5921169))

(assert (= (and b!5921169 res!2482022) b!5921173))

(assert (= (and b!5921173 res!2482024) b!5921174))

(assert (= (and b!5921171 (not res!2482026)) b!5921178))

(assert (= (and b!5921178 res!2482027) b!5921167))

(assert (= (and b!5921167 (not res!2482028)) b!5921176))

(assert (= (and b!5921176 (not res!2482023)) b!5921168))

(assert (= (or b!5921165 b!5921167 b!5921169) bm!469477))

(declare-fun m!6816946 () Bool)

(assert (=> b!5921173 m!6816946))

(assert (=> b!5921173 m!6816946))

(declare-fun m!6816948 () Bool)

(assert (=> b!5921173 m!6816948))

(declare-fun m!6816950 () Bool)

(assert (=> b!5921175 m!6816950))

(assert (=> b!5921175 m!6816950))

(declare-fun m!6816952 () Bool)

(assert (=> b!5921175 m!6816952))

(assert (=> b!5921175 m!6816946))

(assert (=> b!5921175 m!6816952))

(assert (=> b!5921175 m!6816946))

(declare-fun m!6816954 () Bool)

(assert (=> b!5921175 m!6816954))

(declare-fun m!6816956 () Bool)

(assert (=> d!1856757 m!6816956))

(declare-fun m!6816958 () Bool)

(assert (=> d!1856757 m!6816958))

(assert (=> b!5921174 m!6816950))

(assert (=> bm!469477 m!6816956))

(assert (=> b!5921176 m!6816946))

(assert (=> b!5921176 m!6816946))

(assert (=> b!5921176 m!6816948))

(assert (=> b!5921168 m!6816950))

(declare-fun m!6816960 () Bool)

(assert (=> b!5921177 m!6816960))

(assert (=> b!5920751 d!1856757))

(declare-fun d!1856759 () Bool)

(assert (=> d!1856759 (= (get!22069 lt!2309996) (v!51957 lt!2309996))))

(assert (=> b!5920751 d!1856759))

(declare-fun d!1856761 () Bool)

(declare-fun res!2482034 () Bool)

(declare-fun e!3624904 () Bool)

(assert (=> d!1856761 (=> res!2482034 e!3624904)))

(assert (=> d!1856761 (= res!2482034 ((_ is Nil!64088) (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))))))

(assert (=> d!1856761 (= (forall!15054 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))) lambda!323002) e!3624904)))

(declare-fun b!5921183 () Bool)

(declare-fun e!3624905 () Bool)

(assert (=> b!5921183 (= e!3624904 e!3624905)))

(declare-fun res!2482035 () Bool)

(assert (=> b!5921183 (=> (not res!2482035) (not e!3624905))))

(declare-fun dynLambda!25057 (Int Regex!15971) Bool)

(assert (=> b!5921183 (= res!2482035 (dynLambda!25057 lambda!323002 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))

(declare-fun b!5921184 () Bool)

(assert (=> b!5921184 (= e!3624905 (forall!15054 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))) lambda!323002))))

(assert (= (and d!1856761 (not res!2482034)) b!5921183))

(assert (= (and b!5921183 res!2482035) b!5921184))

(declare-fun b_lambda!222391 () Bool)

(assert (=> (not b_lambda!222391) (not b!5921183)))

(declare-fun m!6816962 () Bool)

(assert (=> b!5921183 m!6816962))

(declare-fun m!6816964 () Bool)

(assert (=> b!5921184 m!6816964))

(assert (=> d!1856723 d!1856761))

(declare-fun b!5921193 () Bool)

(declare-fun e!3624910 () List!64214)

(assert (=> b!5921193 (= e!3624910 (t!377605 s!2326))))

(declare-fun d!1856763 () Bool)

(declare-fun e!3624911 () Bool)

(assert (=> d!1856763 e!3624911))

(declare-fun res!2482040 () Bool)

(assert (=> d!1856763 (=> (not res!2482040) (not e!3624911))))

(declare-fun lt!2310028 () List!64214)

(declare-fun content!11801 (List!64214) (InoxSet C!32212))

(assert (=> d!1856763 (= res!2482040 (= (content!11801 lt!2310028) ((_ map or) (content!11801 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (content!11801 (t!377605 s!2326)))))))

(assert (=> d!1856763 (= lt!2310028 e!3624910)))

(declare-fun c!1052362 () Bool)

(assert (=> d!1856763 (= c!1052362 ((_ is Nil!64090) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(assert (=> d!1856763 (= (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (t!377605 s!2326)) lt!2310028)))

(declare-fun b!5921194 () Bool)

(assert (=> b!5921194 (= e!3624910 (Cons!64090 (h!70538 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (++!14068 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (t!377605 s!2326))))))

(declare-fun b!5921195 () Bool)

(declare-fun res!2482041 () Bool)

(assert (=> b!5921195 (=> (not res!2482041) (not e!3624911))))

(declare-fun size!40137 (List!64214) Int)

(assert (=> b!5921195 (= res!2482041 (= (size!40137 lt!2310028) (+ (size!40137 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (size!40137 (t!377605 s!2326)))))))

(declare-fun b!5921196 () Bool)

(assert (=> b!5921196 (= e!3624911 (or (not (= (t!377605 s!2326) Nil!64090)) (= lt!2310028 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(assert (= (and d!1856763 c!1052362) b!5921193))

(assert (= (and d!1856763 (not c!1052362)) b!5921194))

(assert (= (and d!1856763 res!2482040) b!5921195))

(assert (= (and b!5921195 res!2482041) b!5921196))

(declare-fun m!6816966 () Bool)

(assert (=> d!1856763 m!6816966))

(assert (=> d!1856763 m!6816798))

(declare-fun m!6816968 () Bool)

(assert (=> d!1856763 m!6816968))

(declare-fun m!6816970 () Bool)

(assert (=> d!1856763 m!6816970))

(declare-fun m!6816972 () Bool)

(assert (=> b!5921194 m!6816972))

(declare-fun m!6816974 () Bool)

(assert (=> b!5921195 m!6816974))

(assert (=> b!5921195 m!6816798))

(declare-fun m!6816976 () Bool)

(assert (=> b!5921195 m!6816976))

(declare-fun m!6816978 () Bool)

(assert (=> b!5921195 m!6816978))

(assert (=> b!5920753 d!1856763))

(declare-fun b!5921197 () Bool)

(declare-fun e!3624912 () List!64214)

(assert (=> b!5921197 (= e!3624912 (Cons!64090 (h!70538 s!2326) Nil!64090))))

(declare-fun d!1856765 () Bool)

(declare-fun e!3624913 () Bool)

(assert (=> d!1856765 e!3624913))

(declare-fun res!2482042 () Bool)

(assert (=> d!1856765 (=> (not res!2482042) (not e!3624913))))

(declare-fun lt!2310029 () List!64214)

(assert (=> d!1856765 (= res!2482042 (= (content!11801 lt!2310029) ((_ map or) (content!11801 Nil!64090) (content!11801 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(assert (=> d!1856765 (= lt!2310029 e!3624912)))

(declare-fun c!1052363 () Bool)

(assert (=> d!1856765 (= c!1052363 ((_ is Nil!64090) Nil!64090))))

(assert (=> d!1856765 (= (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) lt!2310029)))

(declare-fun b!5921198 () Bool)

(assert (=> b!5921198 (= e!3624912 (Cons!64090 (h!70538 Nil!64090) (++!14068 (t!377605 Nil!64090) (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(declare-fun b!5921199 () Bool)

(declare-fun res!2482043 () Bool)

(assert (=> b!5921199 (=> (not res!2482043) (not e!3624913))))

(assert (=> b!5921199 (= res!2482043 (= (size!40137 lt!2310029) (+ (size!40137 Nil!64090) (size!40137 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(declare-fun b!5921200 () Bool)

(assert (=> b!5921200 (= e!3624913 (or (not (= (Cons!64090 (h!70538 s!2326) Nil!64090) Nil!64090)) (= lt!2310029 Nil!64090)))))

(assert (= (and d!1856765 c!1052363) b!5921197))

(assert (= (and d!1856765 (not c!1052363)) b!5921198))

(assert (= (and d!1856765 res!2482042) b!5921199))

(assert (= (and b!5921199 res!2482043) b!5921200))

(declare-fun m!6816980 () Bool)

(assert (=> d!1856765 m!6816980))

(declare-fun m!6816982 () Bool)

(assert (=> d!1856765 m!6816982))

(declare-fun m!6816984 () Bool)

(assert (=> d!1856765 m!6816984))

(declare-fun m!6816986 () Bool)

(assert (=> b!5921198 m!6816986))

(declare-fun m!6816988 () Bool)

(assert (=> b!5921199 m!6816988))

(declare-fun m!6816990 () Bool)

(assert (=> b!5921199 m!6816990))

(declare-fun m!6816992 () Bool)

(assert (=> b!5921199 m!6816992))

(assert (=> b!5920753 d!1856765))

(declare-fun d!1856767 () Bool)

(assert (=> d!1856767 (= (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (t!377605 s!2326)) s!2326)))

(declare-fun lt!2310032 () Unit!157213)

(declare-fun choose!44658 (List!64214 C!32212 List!64214 List!64214) Unit!157213)

(assert (=> d!1856767 (= lt!2310032 (choose!44658 Nil!64090 (h!70538 s!2326) (t!377605 s!2326) s!2326))))

(assert (=> d!1856767 (= (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) (t!377605 s!2326))) s!2326)))

(assert (=> d!1856767 (= (lemmaMoveElementToOtherListKeepsConcatEq!2163 Nil!64090 (h!70538 s!2326) (t!377605 s!2326) s!2326) lt!2310032)))

(declare-fun bs!1401446 () Bool)

(assert (= bs!1401446 d!1856767))

(assert (=> bs!1401446 m!6816798))

(assert (=> bs!1401446 m!6816798))

(assert (=> bs!1401446 m!6816800))

(declare-fun m!6816994 () Bool)

(assert (=> bs!1401446 m!6816994))

(declare-fun m!6816996 () Bool)

(assert (=> bs!1401446 m!6816996))

(assert (=> b!5920753 d!1856767))

(declare-fun b!5921201 () Bool)

(declare-fun e!3624918 () Option!15862)

(declare-fun e!3624914 () Option!15862)

(assert (=> b!5921201 (= e!3624918 e!3624914)))

(declare-fun c!1052365 () Bool)

(assert (=> b!5921201 (= c!1052365 ((_ is Nil!64090) (t!377605 s!2326)))))

(declare-fun b!5921202 () Bool)

(assert (=> b!5921202 (= e!3624918 (Some!15861 (tuple2!65901 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (t!377605 s!2326))))))

(declare-fun b!5921203 () Bool)

(declare-fun res!2482044 () Bool)

(declare-fun e!3624915 () Bool)

(assert (=> b!5921203 (=> (not res!2482044) (not e!3624915))))

(declare-fun lt!2310034 () Option!15862)

(assert (=> b!5921203 (= res!2482044 (matchR!8154 (regTwo!32454 r!7292) (_2!36253 (get!22069 lt!2310034))))))

(declare-fun b!5921204 () Bool)

(declare-fun res!2482047 () Bool)

(assert (=> b!5921204 (=> (not res!2482047) (not e!3624915))))

(assert (=> b!5921204 (= res!2482047 (matchR!8154 (regOne!32454 r!7292) (_1!36253 (get!22069 lt!2310034))))))

(declare-fun b!5921206 () Bool)

(declare-fun e!3624916 () Bool)

(assert (=> b!5921206 (= e!3624916 (not (isDefined!12565 lt!2310034)))))

(declare-fun b!5921207 () Bool)

(assert (=> b!5921207 (= e!3624915 (= (++!14068 (_1!36253 (get!22069 lt!2310034)) (_2!36253 (get!22069 lt!2310034))) s!2326))))

(declare-fun b!5921208 () Bool)

(declare-fun e!3624917 () Bool)

(assert (=> b!5921208 (= e!3624917 (matchR!8154 (regTwo!32454 r!7292) (t!377605 s!2326)))))

(declare-fun b!5921209 () Bool)

(assert (=> b!5921209 (= e!3624914 None!15861)))

(declare-fun b!5921205 () Bool)

(declare-fun lt!2310033 () Unit!157213)

(declare-fun lt!2310035 () Unit!157213)

(assert (=> b!5921205 (= lt!2310033 lt!2310035)))

(assert (=> b!5921205 (= (++!14068 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (t!377605 (t!377605 s!2326))) s!2326)))

(assert (=> b!5921205 (= lt!2310035 (lemmaMoveElementToOtherListKeepsConcatEq!2163 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (h!70538 (t!377605 s!2326)) (t!377605 (t!377605 s!2326)) s!2326))))

(assert (=> b!5921205 (= e!3624914 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (t!377605 (t!377605 s!2326)) s!2326))))

(declare-fun d!1856769 () Bool)

(assert (=> d!1856769 e!3624916))

(declare-fun res!2482045 () Bool)

(assert (=> d!1856769 (=> res!2482045 e!3624916)))

(assert (=> d!1856769 (= res!2482045 e!3624915)))

(declare-fun res!2482048 () Bool)

(assert (=> d!1856769 (=> (not res!2482048) (not e!3624915))))

(assert (=> d!1856769 (= res!2482048 (isDefined!12565 lt!2310034))))

(assert (=> d!1856769 (= lt!2310034 e!3624918)))

(declare-fun c!1052364 () Bool)

(assert (=> d!1856769 (= c!1052364 e!3624917)))

(declare-fun res!2482046 () Bool)

(assert (=> d!1856769 (=> (not res!2482046) (not e!3624917))))

(assert (=> d!1856769 (= res!2482046 (matchR!8154 (regOne!32454 r!7292) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(assert (=> d!1856769 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1856769 (= (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (t!377605 s!2326) s!2326) lt!2310034)))

(assert (= (and d!1856769 res!2482046) b!5921208))

(assert (= (and d!1856769 c!1052364) b!5921202))

(assert (= (and d!1856769 (not c!1052364)) b!5921201))

(assert (= (and b!5921201 c!1052365) b!5921209))

(assert (= (and b!5921201 (not c!1052365)) b!5921205))

(assert (= (and d!1856769 res!2482048) b!5921204))

(assert (= (and b!5921204 res!2482047) b!5921203))

(assert (= (and b!5921203 res!2482044) b!5921207))

(assert (= (and d!1856769 (not res!2482045)) b!5921206))

(declare-fun m!6816998 () Bool)

(assert (=> d!1856769 m!6816998))

(assert (=> d!1856769 m!6816798))

(declare-fun m!6817000 () Bool)

(assert (=> d!1856769 m!6817000))

(assert (=> d!1856769 m!6816790))

(declare-fun m!6817002 () Bool)

(assert (=> b!5921207 m!6817002))

(declare-fun m!6817004 () Bool)

(assert (=> b!5921207 m!6817004))

(assert (=> b!5921204 m!6817002))

(declare-fun m!6817006 () Bool)

(assert (=> b!5921204 m!6817006))

(assert (=> b!5921205 m!6816798))

(declare-fun m!6817008 () Bool)

(assert (=> b!5921205 m!6817008))

(assert (=> b!5921205 m!6817008))

(declare-fun m!6817010 () Bool)

(assert (=> b!5921205 m!6817010))

(assert (=> b!5921205 m!6816798))

(declare-fun m!6817012 () Bool)

(assert (=> b!5921205 m!6817012))

(assert (=> b!5921205 m!6817008))

(declare-fun m!6817014 () Bool)

(assert (=> b!5921205 m!6817014))

(declare-fun m!6817016 () Bool)

(assert (=> b!5921208 m!6817016))

(assert (=> b!5921203 m!6817002))

(declare-fun m!6817018 () Bool)

(assert (=> b!5921203 m!6817018))

(assert (=> b!5921206 m!6816998))

(assert (=> b!5920753 d!1856769))

(declare-fun d!1856771 () Bool)

(assert (=> d!1856771 (= (Exists!3041 lambda!322996) (choose!44653 lambda!322996))))

(declare-fun bs!1401447 () Bool)

(assert (= bs!1401447 d!1856771))

(declare-fun m!6817020 () Bool)

(assert (=> bs!1401447 m!6817020))

(assert (=> d!1856701 d!1856771))

(declare-fun d!1856773 () Bool)

(assert (=> d!1856773 (= (Exists!3041 lambda!322997) (choose!44653 lambda!322997))))

(declare-fun bs!1401448 () Bool)

(assert (= bs!1401448 d!1856773))

(declare-fun m!6817022 () Bool)

(assert (=> bs!1401448 m!6817022))

(assert (=> d!1856701 d!1856773))

(declare-fun bs!1401449 () Bool)

(declare-fun d!1856775 () Bool)

(assert (= bs!1401449 (and d!1856775 d!1856709)))

(declare-fun lambda!323019 () Int)

(assert (=> bs!1401449 (= lambda!323019 lambda!323000)))

(declare-fun bs!1401450 () Bool)

(assert (= bs!1401450 (and d!1856775 b!5920469)))

(assert (=> bs!1401450 (= lambda!323019 lambda!322948)))

(assert (=> bs!1401450 (not (= lambda!323019 lambda!322949))))

(declare-fun bs!1401451 () Bool)

(assert (= bs!1401451 (and d!1856775 b!5920983)))

(assert (=> bs!1401451 (not (= lambda!323019 lambda!323007))))

(declare-fun bs!1401452 () Bool)

(assert (= bs!1401452 (and d!1856775 d!1856701)))

(assert (=> bs!1401452 (= lambda!323019 lambda!322996)))

(assert (=> bs!1401452 (not (= lambda!323019 lambda!322997))))

(declare-fun bs!1401453 () Bool)

(assert (= bs!1401453 (and d!1856775 b!5920984)))

(assert (=> bs!1401453 (not (= lambda!323019 lambda!323008))))

(assert (=> d!1856775 true))

(assert (=> d!1856775 true))

(assert (=> d!1856775 true))

(declare-fun lambda!323020 () Int)

(assert (=> bs!1401449 (not (= lambda!323020 lambda!323000))))

(assert (=> bs!1401450 (not (= lambda!323020 lambda!322948))))

(assert (=> bs!1401450 (= lambda!323020 lambda!322949)))

(assert (=> bs!1401451 (not (= lambda!323020 lambda!323007))))

(assert (=> bs!1401452 (not (= lambda!323020 lambda!322996))))

(declare-fun bs!1401454 () Bool)

(assert (= bs!1401454 d!1856775))

(assert (=> bs!1401454 (not (= lambda!323020 lambda!323019))))

(assert (=> bs!1401452 (= lambda!323020 lambda!322997)))

(assert (=> bs!1401453 (= lambda!323020 lambda!323008)))

(assert (=> d!1856775 true))

(assert (=> d!1856775 true))

(assert (=> d!1856775 true))

(assert (=> d!1856775 (= (Exists!3041 lambda!323019) (Exists!3041 lambda!323020))))

(assert (=> d!1856775 true))

(declare-fun _$90!1587 () Unit!157213)

(assert (=> d!1856775 (= (choose!44655 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326) _$90!1587)))

(declare-fun m!6817024 () Bool)

(assert (=> bs!1401454 m!6817024))

(declare-fun m!6817026 () Bool)

(assert (=> bs!1401454 m!6817026))

(assert (=> d!1856701 d!1856775))

(declare-fun d!1856777 () Bool)

(declare-fun res!2482061 () Bool)

(declare-fun e!3624928 () Bool)

(assert (=> d!1856777 (=> res!2482061 e!3624928)))

(assert (=> d!1856777 (= res!2482061 ((_ is ElementMatch!15971) (regOne!32454 r!7292)))))

(assert (=> d!1856777 (= (validRegex!7707 (regOne!32454 r!7292)) e!3624928)))

(declare-fun b!5921218 () Bool)

(declare-fun e!3624929 () Bool)

(declare-fun e!3624927 () Bool)

(assert (=> b!5921218 (= e!3624929 e!3624927)))

(declare-fun res!2482058 () Bool)

(assert (=> b!5921218 (= res!2482058 (not (nullable!5966 (reg!16300 (regOne!32454 r!7292)))))))

(assert (=> b!5921218 (=> (not res!2482058) (not e!3624927))))

(declare-fun bm!469478 () Bool)

(declare-fun call!469485 () Bool)

(declare-fun c!1052366 () Bool)

(assert (=> bm!469478 (= call!469485 (validRegex!7707 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))))))

(declare-fun b!5921219 () Bool)

(declare-fun res!2482060 () Bool)

(declare-fun e!3624924 () Bool)

(assert (=> b!5921219 (=> res!2482060 e!3624924)))

(assert (=> b!5921219 (= res!2482060 (not ((_ is Concat!24816) (regOne!32454 r!7292))))))

(declare-fun e!3624923 () Bool)

(assert (=> b!5921219 (= e!3624923 e!3624924)))

(declare-fun b!5921220 () Bool)

(declare-fun res!2482057 () Bool)

(declare-fun e!3624925 () Bool)

(assert (=> b!5921220 (=> (not res!2482057) (not e!3624925))))

(declare-fun call!469484 () Bool)

(assert (=> b!5921220 (= res!2482057 call!469484)))

(assert (=> b!5921220 (= e!3624923 e!3624925)))

(declare-fun bm!469479 () Bool)

(declare-fun call!469483 () Bool)

(assert (=> bm!469479 (= call!469484 call!469483)))

(declare-fun b!5921221 () Bool)

(assert (=> b!5921221 (= e!3624927 call!469483)))

(declare-fun b!5921222 () Bool)

(declare-fun e!3624926 () Bool)

(assert (=> b!5921222 (= e!3624926 call!469485)))

(declare-fun b!5921223 () Bool)

(assert (=> b!5921223 (= e!3624924 e!3624926)))

(declare-fun res!2482059 () Bool)

(assert (=> b!5921223 (=> (not res!2482059) (not e!3624926))))

(assert (=> b!5921223 (= res!2482059 call!469484)))

(declare-fun b!5921224 () Bool)

(assert (=> b!5921224 (= e!3624929 e!3624923)))

(assert (=> b!5921224 (= c!1052366 ((_ is Union!15971) (regOne!32454 r!7292)))))

(declare-fun b!5921225 () Bool)

(assert (=> b!5921225 (= e!3624925 call!469485)))

(declare-fun c!1052367 () Bool)

(declare-fun bm!469480 () Bool)

(assert (=> bm!469480 (= call!469483 (validRegex!7707 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))))))

(declare-fun b!5921226 () Bool)

(assert (=> b!5921226 (= e!3624928 e!3624929)))

(assert (=> b!5921226 (= c!1052367 ((_ is Star!15971) (regOne!32454 r!7292)))))

(assert (= (and d!1856777 (not res!2482061)) b!5921226))

(assert (= (and b!5921226 c!1052367) b!5921218))

(assert (= (and b!5921226 (not c!1052367)) b!5921224))

(assert (= (and b!5921218 res!2482058) b!5921221))

(assert (= (and b!5921224 c!1052366) b!5921220))

(assert (= (and b!5921224 (not c!1052366)) b!5921219))

(assert (= (and b!5921220 res!2482057) b!5921225))

(assert (= (and b!5921219 (not res!2482060)) b!5921223))

(assert (= (and b!5921223 res!2482059) b!5921222))

(assert (= (or b!5921225 b!5921222) bm!469478))

(assert (= (or b!5921220 b!5921223) bm!469479))

(assert (= (or b!5921221 bm!469479) bm!469480))

(declare-fun m!6817028 () Bool)

(assert (=> b!5921218 m!6817028))

(declare-fun m!6817030 () Bool)

(assert (=> bm!469478 m!6817030))

(declare-fun m!6817032 () Bool)

(assert (=> bm!469480 m!6817032))

(assert (=> d!1856701 d!1856777))

(declare-fun d!1856779 () Bool)

(assert (=> d!1856779 (= (isEmpty!35946 (t!377603 (unfocusZipperList!1392 zl!343))) ((_ is Nil!64088) (t!377603 (unfocusZipperList!1392 zl!343))))))

(assert (=> b!5921086 d!1856779))

(declare-fun d!1856781 () Bool)

(assert (=> d!1856781 true))

(assert (=> d!1856781 true))

(declare-fun res!2482062 () Bool)

(assert (=> d!1856781 (= (choose!44653 lambda!322948) res!2482062)))

(assert (=> d!1856685 d!1856781))

(declare-fun d!1856783 () Bool)

(declare-fun res!2482067 () Bool)

(declare-fun e!3624935 () Bool)

(assert (=> d!1856783 (=> res!2482067 e!3624935)))

(assert (=> d!1856783 (= res!2482067 ((_ is ElementMatch!15971) (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))

(assert (=> d!1856783 (= (validRegex!7707 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) e!3624935)))

(declare-fun b!5921227 () Bool)

(declare-fun e!3624936 () Bool)

(declare-fun e!3624934 () Bool)

(assert (=> b!5921227 (= e!3624936 e!3624934)))

(declare-fun res!2482064 () Bool)

(assert (=> b!5921227 (= res!2482064 (not (nullable!5966 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))

(assert (=> b!5921227 (=> (not res!2482064) (not e!3624934))))

(declare-fun bm!469481 () Bool)

(declare-fun c!1052368 () Bool)

(declare-fun call!469488 () Bool)

(assert (=> bm!469481 (= call!469488 (validRegex!7707 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))

(declare-fun b!5921228 () Bool)

(declare-fun res!2482066 () Bool)

(declare-fun e!3624931 () Bool)

(assert (=> b!5921228 (=> res!2482066 e!3624931)))

(assert (=> b!5921228 (= res!2482066 (not ((_ is Concat!24816) (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))

(declare-fun e!3624930 () Bool)

(assert (=> b!5921228 (= e!3624930 e!3624931)))

(declare-fun b!5921229 () Bool)

(declare-fun res!2482063 () Bool)

(declare-fun e!3624932 () Bool)

(assert (=> b!5921229 (=> (not res!2482063) (not e!3624932))))

(declare-fun call!469487 () Bool)

(assert (=> b!5921229 (= res!2482063 call!469487)))

(assert (=> b!5921229 (= e!3624930 e!3624932)))

(declare-fun bm!469482 () Bool)

(declare-fun call!469486 () Bool)

(assert (=> bm!469482 (= call!469487 call!469486)))

(declare-fun b!5921230 () Bool)

(assert (=> b!5921230 (= e!3624934 call!469486)))

(declare-fun b!5921231 () Bool)

(declare-fun e!3624933 () Bool)

(assert (=> b!5921231 (= e!3624933 call!469488)))

(declare-fun b!5921232 () Bool)

(assert (=> b!5921232 (= e!3624931 e!3624933)))

(declare-fun res!2482065 () Bool)

(assert (=> b!5921232 (=> (not res!2482065) (not e!3624933))))

(assert (=> b!5921232 (= res!2482065 call!469487)))

(declare-fun b!5921233 () Bool)

(assert (=> b!5921233 (= e!3624936 e!3624930)))

(assert (=> b!5921233 (= c!1052368 ((_ is Union!15971) (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))

(declare-fun b!5921234 () Bool)

(assert (=> b!5921234 (= e!3624932 call!469488)))

(declare-fun c!1052369 () Bool)

(declare-fun bm!469483 () Bool)

(assert (=> bm!469483 (= call!469486 (validRegex!7707 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))

(declare-fun b!5921235 () Bool)

(assert (=> b!5921235 (= e!3624935 e!3624936)))

(assert (=> b!5921235 (= c!1052369 ((_ is Star!15971) (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))

(assert (= (and d!1856783 (not res!2482067)) b!5921235))

(assert (= (and b!5921235 c!1052369) b!5921227))

(assert (= (and b!5921235 (not c!1052369)) b!5921233))

(assert (= (and b!5921227 res!2482064) b!5921230))

(assert (= (and b!5921233 c!1052368) b!5921229))

(assert (= (and b!5921233 (not c!1052368)) b!5921228))

(assert (= (and b!5921229 res!2482063) b!5921234))

(assert (= (and b!5921228 (not res!2482066)) b!5921232))

(assert (= (and b!5921232 res!2482065) b!5921231))

(assert (= (or b!5921234 b!5921231) bm!469481))

(assert (= (or b!5921229 b!5921232) bm!469482))

(assert (= (or b!5921230 bm!469482) bm!469483))

(declare-fun m!6817034 () Bool)

(assert (=> b!5921227 m!6817034))

(declare-fun m!6817036 () Bool)

(assert (=> bm!469481 m!6817036))

(declare-fun m!6817038 () Bool)

(assert (=> bm!469483 m!6817038))

(assert (=> bm!469469 d!1856783))

(declare-fun d!1856785 () Bool)

(assert (=> d!1856785 (= (isEmpty!35950 s!2326) ((_ is Nil!64090) s!2326))))

(assert (=> bm!469460 d!1856785))

(declare-fun d!1856787 () Bool)

(assert (=> d!1856787 (= (Exists!3041 (ite c!1052319 lambda!323007 lambda!323008)) (choose!44653 (ite c!1052319 lambda!323007 lambda!323008)))))

(declare-fun bs!1401455 () Bool)

(assert (= bs!1401455 d!1856787))

(declare-fun m!6817040 () Bool)

(assert (=> bs!1401455 m!6817040))

(assert (=> bm!469456 d!1856787))

(declare-fun d!1856789 () Bool)

(declare-fun c!1052374 () Bool)

(assert (=> d!1856789 (= c!1052374 ((_ is Nil!64089) lt!2309955))))

(declare-fun e!3624946 () (InoxSet Context!10710))

(assert (=> d!1856789 (= (content!11799 lt!2309955) e!3624946)))

(declare-fun b!5921249 () Bool)

(assert (=> b!5921249 (= e!3624946 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5921250 () Bool)

(assert (=> b!5921250 (= e!3624946 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) (h!70537 lt!2309955) true) (content!11799 (t!377604 lt!2309955))))))

(assert (= (and d!1856789 c!1052374) b!5921249))

(assert (= (and d!1856789 (not c!1052374)) b!5921250))

(declare-fun m!6817042 () Bool)

(assert (=> b!5921250 m!6817042))

(declare-fun m!6817044 () Bool)

(assert (=> b!5921250 m!6817044))

(assert (=> b!5920511 d!1856789))

(declare-fun b!5921251 () Bool)

(declare-fun e!3624947 () List!64214)

(assert (=> b!5921251 (= e!3624947 (_2!36253 (get!22069 lt!2309996)))))

(declare-fun d!1856793 () Bool)

(declare-fun e!3624948 () Bool)

(assert (=> d!1856793 e!3624948))

(declare-fun res!2482073 () Bool)

(assert (=> d!1856793 (=> (not res!2482073) (not e!3624948))))

(declare-fun lt!2310036 () List!64214)

(assert (=> d!1856793 (= res!2482073 (= (content!11801 lt!2310036) ((_ map or) (content!11801 (_1!36253 (get!22069 lt!2309996))) (content!11801 (_2!36253 (get!22069 lt!2309996))))))))

(assert (=> d!1856793 (= lt!2310036 e!3624947)))

(declare-fun c!1052375 () Bool)

(assert (=> d!1856793 (= c!1052375 ((_ is Nil!64090) (_1!36253 (get!22069 lt!2309996))))))

(assert (=> d!1856793 (= (++!14068 (_1!36253 (get!22069 lt!2309996)) (_2!36253 (get!22069 lt!2309996))) lt!2310036)))

(declare-fun b!5921252 () Bool)

(assert (=> b!5921252 (= e!3624947 (Cons!64090 (h!70538 (_1!36253 (get!22069 lt!2309996))) (++!14068 (t!377605 (_1!36253 (get!22069 lt!2309996))) (_2!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5921253 () Bool)

(declare-fun res!2482074 () Bool)

(assert (=> b!5921253 (=> (not res!2482074) (not e!3624948))))

(assert (=> b!5921253 (= res!2482074 (= (size!40137 lt!2310036) (+ (size!40137 (_1!36253 (get!22069 lt!2309996))) (size!40137 (_2!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5921254 () Bool)

(assert (=> b!5921254 (= e!3624948 (or (not (= (_2!36253 (get!22069 lt!2309996)) Nil!64090)) (= lt!2310036 (_1!36253 (get!22069 lt!2309996)))))))

(assert (= (and d!1856793 c!1052375) b!5921251))

(assert (= (and d!1856793 (not c!1052375)) b!5921252))

(assert (= (and d!1856793 res!2482073) b!5921253))

(assert (= (and b!5921253 res!2482074) b!5921254))

(declare-fun m!6817046 () Bool)

(assert (=> d!1856793 m!6817046))

(declare-fun m!6817048 () Bool)

(assert (=> d!1856793 m!6817048))

(declare-fun m!6817050 () Bool)

(assert (=> d!1856793 m!6817050))

(declare-fun m!6817052 () Bool)

(assert (=> b!5921252 m!6817052))

(declare-fun m!6817054 () Bool)

(assert (=> b!5921253 m!6817054))

(declare-fun m!6817056 () Bool)

(assert (=> b!5921253 m!6817056))

(declare-fun m!6817058 () Bool)

(assert (=> b!5921253 m!6817058))

(assert (=> b!5920755 d!1856793))

(assert (=> b!5920755 d!1856759))

(declare-fun d!1856795 () Bool)

(declare-fun nullableFct!1937 (Regex!15971) Bool)

(assert (=> d!1856795 (= (nullable!5966 (regOne!32454 r!7292)) (nullableFct!1937 (regOne!32454 r!7292)))))

(declare-fun bs!1401457 () Bool)

(assert (= bs!1401457 d!1856795))

(declare-fun m!6817068 () Bool)

(assert (=> bs!1401457 m!6817068))

(assert (=> b!5920941 d!1856795))

(declare-fun bs!1401459 () Bool)

(declare-fun b!5921259 () Bool)

(assert (= bs!1401459 (and b!5921259 d!1856709)))

(declare-fun lambda!323022 () Int)

(assert (=> bs!1401459 (not (= lambda!323022 lambda!323000))))

(declare-fun bs!1401461 () Bool)

(assert (= bs!1401461 (and b!5921259 b!5920469)))

(assert (=> bs!1401461 (not (= lambda!323022 lambda!322948))))

(assert (=> bs!1401461 (not (= lambda!323022 lambda!322949))))

(declare-fun bs!1401464 () Bool)

(assert (= bs!1401464 (and b!5921259 b!5920983)))

(assert (=> bs!1401464 (= (and (= (reg!16300 (regOne!32455 r!7292)) (reg!16300 r!7292)) (= (regOne!32455 r!7292) r!7292)) (= lambda!323022 lambda!323007))))

(declare-fun bs!1401466 () Bool)

(assert (= bs!1401466 (and b!5921259 d!1856701)))

(assert (=> bs!1401466 (not (= lambda!323022 lambda!322996))))

(declare-fun bs!1401468 () Bool)

(assert (= bs!1401468 (and b!5921259 d!1856775)))

(assert (=> bs!1401468 (not (= lambda!323022 lambda!323020))))

(assert (=> bs!1401468 (not (= lambda!323022 lambda!323019))))

(assert (=> bs!1401466 (not (= lambda!323022 lambda!322997))))

(declare-fun bs!1401469 () Bool)

(assert (= bs!1401469 (and b!5921259 b!5920984)))

(assert (=> bs!1401469 (not (= lambda!323022 lambda!323008))))

(assert (=> b!5921259 true))

(assert (=> b!5921259 true))

(declare-fun bs!1401470 () Bool)

(declare-fun b!5921260 () Bool)

(assert (= bs!1401470 (and b!5921260 d!1856709)))

(declare-fun lambda!323023 () Int)

(assert (=> bs!1401470 (not (= lambda!323023 lambda!323000))))

(declare-fun bs!1401471 () Bool)

(assert (= bs!1401471 (and b!5921260 b!5920469)))

(assert (=> bs!1401471 (= (and (= (regOne!32454 (regOne!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323023 lambda!322949))))

(declare-fun bs!1401472 () Bool)

(assert (= bs!1401472 (and b!5921260 b!5920983)))

(assert (=> bs!1401472 (not (= lambda!323023 lambda!323007))))

(declare-fun bs!1401473 () Bool)

(assert (= bs!1401473 (and b!5921260 d!1856701)))

(assert (=> bs!1401473 (not (= lambda!323023 lambda!322996))))

(declare-fun bs!1401474 () Bool)

(assert (= bs!1401474 (and b!5921260 d!1856775)))

(assert (=> bs!1401474 (= (and (= (regOne!32454 (regOne!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323023 lambda!323020))))

(assert (=> bs!1401474 (not (= lambda!323023 lambda!323019))))

(assert (=> bs!1401473 (= (and (= (regOne!32454 (regOne!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323023 lambda!322997))))

(declare-fun bs!1401475 () Bool)

(assert (= bs!1401475 (and b!5921260 b!5920984)))

(assert (=> bs!1401475 (= (and (= (regOne!32454 (regOne!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323023 lambda!323008))))

(declare-fun bs!1401476 () Bool)

(assert (= bs!1401476 (and b!5921260 b!5921259)))

(assert (=> bs!1401476 (not (= lambda!323023 lambda!323022))))

(assert (=> bs!1401471 (not (= lambda!323023 lambda!322948))))

(assert (=> b!5921260 true))

(assert (=> b!5921260 true))

(declare-fun b!5921255 () Bool)

(declare-fun e!3624950 () Bool)

(declare-fun e!3624949 () Bool)

(assert (=> b!5921255 (= e!3624950 e!3624949)))

(declare-fun c!1052379 () Bool)

(assert (=> b!5921255 (= c!1052379 ((_ is Star!15971) (regOne!32455 r!7292)))))

(declare-fun b!5921256 () Bool)

(declare-fun e!3624951 () Bool)

(declare-fun e!3624954 () Bool)

(assert (=> b!5921256 (= e!3624951 e!3624954)))

(declare-fun res!2482077 () Bool)

(assert (=> b!5921256 (= res!2482077 (not ((_ is EmptyLang!15971) (regOne!32455 r!7292))))))

(assert (=> b!5921256 (=> (not res!2482077) (not e!3624954))))

(declare-fun b!5921257 () Bool)

(declare-fun e!3624953 () Bool)

(assert (=> b!5921257 (= e!3624953 (= s!2326 (Cons!64090 (c!1052179 (regOne!32455 r!7292)) Nil!64090)))))

(declare-fun b!5921258 () Bool)

(declare-fun call!469492 () Bool)

(assert (=> b!5921258 (= e!3624951 call!469492)))

(declare-fun e!3624955 () Bool)

(declare-fun call!469493 () Bool)

(assert (=> b!5921259 (= e!3624955 call!469493)))

(declare-fun bm!469487 () Bool)

(assert (=> bm!469487 (= call!469493 (Exists!3041 (ite c!1052379 lambda!323022 lambda!323023)))))

(assert (=> b!5921260 (= e!3624949 call!469493)))

(declare-fun b!5921261 () Bool)

(declare-fun e!3624952 () Bool)

(assert (=> b!5921261 (= e!3624950 e!3624952)))

(declare-fun res!2482076 () Bool)

(assert (=> b!5921261 (= res!2482076 (matchRSpec!3072 (regOne!32455 (regOne!32455 r!7292)) s!2326))))

(assert (=> b!5921261 (=> res!2482076 e!3624952)))

(declare-fun b!5921262 () Bool)

(declare-fun res!2482075 () Bool)

(assert (=> b!5921262 (=> res!2482075 e!3624955)))

(assert (=> b!5921262 (= res!2482075 call!469492)))

(assert (=> b!5921262 (= e!3624949 e!3624955)))

(declare-fun b!5921263 () Bool)

(declare-fun c!1052378 () Bool)

(assert (=> b!5921263 (= c!1052378 ((_ is Union!15971) (regOne!32455 r!7292)))))

(assert (=> b!5921263 (= e!3624953 e!3624950)))

(declare-fun d!1856799 () Bool)

(declare-fun c!1052376 () Bool)

(assert (=> d!1856799 (= c!1052376 ((_ is EmptyExpr!15971) (regOne!32455 r!7292)))))

(assert (=> d!1856799 (= (matchRSpec!3072 (regOne!32455 r!7292) s!2326) e!3624951)))

(declare-fun bm!469488 () Bool)

(assert (=> bm!469488 (= call!469492 (isEmpty!35950 s!2326))))

(declare-fun b!5921264 () Bool)

(declare-fun c!1052377 () Bool)

(assert (=> b!5921264 (= c!1052377 ((_ is ElementMatch!15971) (regOne!32455 r!7292)))))

(assert (=> b!5921264 (= e!3624954 e!3624953)))

(declare-fun b!5921265 () Bool)

(assert (=> b!5921265 (= e!3624952 (matchRSpec!3072 (regTwo!32455 (regOne!32455 r!7292)) s!2326))))

(assert (= (and d!1856799 c!1052376) b!5921258))

(assert (= (and d!1856799 (not c!1052376)) b!5921256))

(assert (= (and b!5921256 res!2482077) b!5921264))

(assert (= (and b!5921264 c!1052377) b!5921257))

(assert (= (and b!5921264 (not c!1052377)) b!5921263))

(assert (= (and b!5921263 c!1052378) b!5921261))

(assert (= (and b!5921263 (not c!1052378)) b!5921255))

(assert (= (and b!5921261 (not res!2482076)) b!5921265))

(assert (= (and b!5921255 c!1052379) b!5921262))

(assert (= (and b!5921255 (not c!1052379)) b!5921260))

(assert (= (and b!5921262 (not res!2482075)) b!5921259))

(assert (= (or b!5921259 b!5921260) bm!469487))

(assert (= (or b!5921258 b!5921262) bm!469488))

(declare-fun m!6817088 () Bool)

(assert (=> bm!469487 m!6817088))

(declare-fun m!6817090 () Bool)

(assert (=> b!5921261 m!6817090))

(assert (=> bm!469488 m!6816874))

(declare-fun m!6817092 () Bool)

(assert (=> b!5921265 m!6817092))

(assert (=> b!5920985 d!1856799))

(assert (=> d!1856729 d!1856727))

(assert (=> d!1856729 d!1856725))

(declare-fun d!1856811 () Bool)

(assert (=> d!1856811 (= (matchR!8154 r!7292 s!2326) (matchRSpec!3072 r!7292 s!2326))))

(assert (=> d!1856811 true))

(declare-fun _$88!4401 () Unit!157213)

(assert (=> d!1856811 (= (choose!44657 r!7292 s!2326) _$88!4401)))

(declare-fun bs!1401477 () Bool)

(assert (= bs!1401477 d!1856811))

(assert (=> bs!1401477 m!6816604))

(assert (=> bs!1401477 m!6816602))

(assert (=> d!1856729 d!1856811))

(assert (=> d!1856729 d!1856731))

(assert (=> b!5921093 d!1856641))

(declare-fun bs!1401478 () Bool)

(declare-fun d!1856817 () Bool)

(assert (= bs!1401478 (and d!1856817 d!1856735)))

(declare-fun lambda!323024 () Int)

(assert (=> bs!1401478 (= lambda!323024 lambda!323014)))

(declare-fun bs!1401479 () Bool)

(assert (= bs!1401479 (and d!1856817 d!1856717)))

(assert (=> bs!1401479 (= lambda!323024 lambda!323001)))

(declare-fun bs!1401480 () Bool)

(assert (= bs!1401480 (and d!1856817 d!1856675)))

(assert (=> bs!1401480 (= lambda!323024 lambda!322975)))

(declare-fun bs!1401481 () Bool)

(assert (= bs!1401481 (and d!1856817 d!1856641)))

(assert (=> bs!1401481 (= lambda!323024 lambda!322963)))

(declare-fun bs!1401482 () Bool)

(assert (= bs!1401482 (and d!1856817 d!1856733)))

(assert (=> bs!1401482 (= lambda!323024 lambda!323011)))

(declare-fun bs!1401483 () Bool)

(assert (= bs!1401483 (and d!1856817 d!1856723)))

(assert (=> bs!1401483 (= lambda!323024 lambda!323002)))

(declare-fun lt!2310038 () List!64212)

(assert (=> d!1856817 (forall!15054 lt!2310038 lambda!323024)))

(declare-fun e!3624969 () List!64212)

(assert (=> d!1856817 (= lt!2310038 e!3624969)))

(declare-fun c!1052386 () Bool)

(assert (=> d!1856817 (= c!1052386 ((_ is Cons!64089) (t!377604 zl!343)))))

(assert (=> d!1856817 (= (unfocusZipperList!1392 (t!377604 zl!343)) lt!2310038)))

(declare-fun b!5921285 () Bool)

(assert (=> b!5921285 (= e!3624969 (Cons!64088 (generalisedConcat!1568 (exprs!5855 (h!70537 (t!377604 zl!343)))) (unfocusZipperList!1392 (t!377604 (t!377604 zl!343)))))))

(declare-fun b!5921286 () Bool)

(assert (=> b!5921286 (= e!3624969 Nil!64088)))

(assert (= (and d!1856817 c!1052386) b!5921285))

(assert (= (and d!1856817 (not c!1052386)) b!5921286))

(declare-fun m!6817100 () Bool)

(assert (=> d!1856817 m!6817100))

(declare-fun m!6817102 () Bool)

(assert (=> b!5921285 m!6817102))

(declare-fun m!6817104 () Bool)

(assert (=> b!5921285 m!6817104))

(assert (=> b!5921093 d!1856817))

(assert (=> b!5920556 d!1856715))

(declare-fun d!1856819 () Bool)

(declare-fun res!2482085 () Bool)

(declare-fun e!3624970 () Bool)

(assert (=> d!1856819 (=> res!2482085 e!3624970)))

(assert (=> d!1856819 (= res!2482085 ((_ is Nil!64088) (exprs!5855 (h!70537 zl!343))))))

(assert (=> d!1856819 (= (forall!15054 (exprs!5855 (h!70537 zl!343)) lambda!323001) e!3624970)))

(declare-fun b!5921287 () Bool)

(declare-fun e!3624971 () Bool)

(assert (=> b!5921287 (= e!3624970 e!3624971)))

(declare-fun res!2482086 () Bool)

(assert (=> b!5921287 (=> (not res!2482086) (not e!3624971))))

(assert (=> b!5921287 (= res!2482086 (dynLambda!25057 lambda!323001 (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5921288 () Bool)

(assert (=> b!5921288 (= e!3624971 (forall!15054 (t!377603 (exprs!5855 (h!70537 zl!343))) lambda!323001))))

(assert (= (and d!1856819 (not res!2482085)) b!5921287))

(assert (= (and b!5921287 res!2482086) b!5921288))

(declare-fun b_lambda!222393 () Bool)

(assert (=> (not b_lambda!222393) (not b!5921287)))

(declare-fun m!6817106 () Bool)

(assert (=> b!5921287 m!6817106))

(declare-fun m!6817108 () Bool)

(assert (=> b!5921288 m!6817108))

(assert (=> d!1856717 d!1856819))

(declare-fun d!1856821 () Bool)

(declare-fun res!2482089 () Bool)

(declare-fun e!3624974 () Bool)

(assert (=> d!1856821 (=> res!2482089 e!3624974)))

(assert (=> d!1856821 (= res!2482089 ((_ is Nil!64088) lt!2310021))))

(assert (=> d!1856821 (= (forall!15054 lt!2310021 lambda!323014) e!3624974)))

(declare-fun b!5921291 () Bool)

(declare-fun e!3624975 () Bool)

(assert (=> b!5921291 (= e!3624974 e!3624975)))

(declare-fun res!2482090 () Bool)

(assert (=> b!5921291 (=> (not res!2482090) (not e!3624975))))

(assert (=> b!5921291 (= res!2482090 (dynLambda!25057 lambda!323014 (h!70536 lt!2310021)))))

(declare-fun b!5921292 () Bool)

(assert (=> b!5921292 (= e!3624975 (forall!15054 (t!377603 lt!2310021) lambda!323014))))

(assert (= (and d!1856821 (not res!2482089)) b!5921291))

(assert (= (and b!5921291 res!2482090) b!5921292))

(declare-fun b_lambda!222395 () Bool)

(assert (=> (not b_lambda!222395) (not b!5921291)))

(declare-fun m!6817110 () Bool)

(assert (=> b!5921291 m!6817110))

(declare-fun m!6817112 () Bool)

(assert (=> b!5921292 m!6817112))

(assert (=> d!1856735 d!1856821))

(assert (=> d!1856709 d!1856687))

(assert (=> d!1856709 d!1856777))

(assert (=> d!1856709 d!1856707))

(declare-fun d!1856823 () Bool)

(assert (=> d!1856823 (= (Exists!3041 lambda!323000) (choose!44653 lambda!323000))))

(declare-fun bs!1401484 () Bool)

(assert (= bs!1401484 d!1856823))

(declare-fun m!6817114 () Bool)

(assert (=> bs!1401484 m!6817114))

(assert (=> d!1856709 d!1856823))

(declare-fun bs!1401485 () Bool)

(declare-fun d!1856825 () Bool)

(assert (= bs!1401485 (and d!1856825 b!5921260)))

(declare-fun lambda!323027 () Int)

(assert (=> bs!1401485 (not (= lambda!323027 lambda!323023))))

(declare-fun bs!1401486 () Bool)

(assert (= bs!1401486 (and d!1856825 d!1856709)))

(assert (=> bs!1401486 (= lambda!323027 lambda!323000)))

(declare-fun bs!1401487 () Bool)

(assert (= bs!1401487 (and d!1856825 b!5920469)))

(assert (=> bs!1401487 (not (= lambda!323027 lambda!322949))))

(declare-fun bs!1401488 () Bool)

(assert (= bs!1401488 (and d!1856825 b!5920983)))

(assert (=> bs!1401488 (not (= lambda!323027 lambda!323007))))

(declare-fun bs!1401489 () Bool)

(assert (= bs!1401489 (and d!1856825 d!1856701)))

(assert (=> bs!1401489 (= lambda!323027 lambda!322996)))

(declare-fun bs!1401490 () Bool)

(assert (= bs!1401490 (and d!1856825 d!1856775)))

(assert (=> bs!1401490 (not (= lambda!323027 lambda!323020))))

(assert (=> bs!1401490 (= lambda!323027 lambda!323019)))

(assert (=> bs!1401489 (not (= lambda!323027 lambda!322997))))

(declare-fun bs!1401491 () Bool)

(assert (= bs!1401491 (and d!1856825 b!5920984)))

(assert (=> bs!1401491 (not (= lambda!323027 lambda!323008))))

(declare-fun bs!1401492 () Bool)

(assert (= bs!1401492 (and d!1856825 b!5921259)))

(assert (=> bs!1401492 (not (= lambda!323027 lambda!323022))))

(assert (=> bs!1401487 (= lambda!323027 lambda!322948)))

(assert (=> d!1856825 true))

(assert (=> d!1856825 true))

(assert (=> d!1856825 true))

(assert (=> d!1856825 (= (isDefined!12565 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326)) (Exists!3041 lambda!323027))))

(assert (=> d!1856825 true))

(declare-fun _$89!1963 () Unit!157213)

(assert (=> d!1856825 (= (choose!44656 (regOne!32454 r!7292) (regTwo!32454 r!7292) s!2326) _$89!1963)))

(declare-fun bs!1401493 () Bool)

(assert (= bs!1401493 d!1856825))

(assert (=> bs!1401493 m!6816586))

(assert (=> bs!1401493 m!6816586))

(assert (=> bs!1401493 m!6816588))

(declare-fun m!6817142 () Bool)

(assert (=> bs!1401493 m!6817142))

(assert (=> d!1856709 d!1856825))

(declare-fun b!5921340 () Bool)

(declare-fun e!3625007 () (InoxSet Context!10710))

(declare-fun call!469502 () (InoxSet Context!10710))

(assert (=> b!5921340 (= e!3625007 ((_ map or) call!469502 (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (h!70538 s!2326))))))

(declare-fun b!5921341 () Bool)

(declare-fun e!3625005 () Bool)

(assert (=> b!5921341 (= e!3625005 (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun bm!469497 () Bool)

(assert (=> bm!469497 (= call!469502 (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (h!70538 s!2326)))))

(declare-fun d!1856837 () Bool)

(declare-fun c!1052396 () Bool)

(assert (=> d!1856837 (= c!1052396 e!3625005)))

(declare-fun res!2482122 () Bool)

(assert (=> d!1856837 (=> (not res!2482122) (not e!3625005))))

(assert (=> d!1856837 (= res!2482122 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(assert (=> d!1856837 (= (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70538 s!2326)) e!3625007)))

(declare-fun b!5921342 () Bool)

(declare-fun e!3625006 () (InoxSet Context!10710))

(assert (=> b!5921342 (= e!3625006 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5921343 () Bool)

(assert (=> b!5921343 (= e!3625007 e!3625006)))

(declare-fun c!1052395 () Bool)

(assert (=> b!5921343 (= c!1052395 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(declare-fun b!5921344 () Bool)

(assert (=> b!5921344 (= e!3625006 call!469502)))

(assert (= (and d!1856837 res!2482122) b!5921341))

(assert (= (and d!1856837 c!1052396) b!5921340))

(assert (= (and d!1856837 (not c!1052396)) b!5921343))

(assert (= (and b!5921343 c!1052395) b!5921344))

(assert (= (and b!5921343 (not c!1052395)) b!5921342))

(assert (= (or b!5921340 b!5921344) bm!469497))

(declare-fun m!6817146 () Bool)

(assert (=> b!5921340 m!6817146))

(declare-fun m!6817148 () Bool)

(assert (=> b!5921341 m!6817148))

(declare-fun m!6817150 () Bool)

(assert (=> bm!469497 m!6817150))

(assert (=> b!5920942 d!1856837))

(declare-fun b!5921345 () Bool)

(declare-fun e!3625011 () (InoxSet Context!10710))

(declare-fun e!3625013 () (InoxSet Context!10710))

(assert (=> b!5921345 (= e!3625011 e!3625013)))

(declare-fun c!1052400 () Bool)

(assert (=> b!5921345 (= c!1052400 ((_ is Union!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun bm!469498 () Bool)

(declare-fun call!469503 () (InoxSet Context!10710))

(declare-fun call!469508 () (InoxSet Context!10710))

(assert (=> bm!469498 (= call!469503 call!469508)))

(declare-fun b!5921346 () Bool)

(assert (=> b!5921346 (= e!3625011 (store ((as const (Array Context!10710 Bool)) false) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) true))))

(declare-fun b!5921347 () Bool)

(declare-fun c!1052397 () Bool)

(assert (=> b!5921347 (= c!1052397 ((_ is Star!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun e!3625010 () (InoxSet Context!10710))

(declare-fun e!3625012 () (InoxSet Context!10710))

(assert (=> b!5921347 (= e!3625010 e!3625012)))

(declare-fun d!1856839 () Bool)

(declare-fun c!1052401 () Bool)

(assert (=> d!1856839 (= c!1052401 (and ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (= (c!1052179 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70538 s!2326))))))

(assert (=> d!1856839 (= (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70538 s!2326)) e!3625011)))

(declare-fun b!5921348 () Bool)

(declare-fun c!1052399 () Bool)

(declare-fun e!3625008 () Bool)

(assert (=> b!5921348 (= c!1052399 e!3625008)))

(declare-fun res!2482123 () Bool)

(assert (=> b!5921348 (=> (not res!2482123) (not e!3625008))))

(assert (=> b!5921348 (= res!2482123 ((_ is Concat!24816) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun e!3625009 () (InoxSet Context!10710))

(assert (=> b!5921348 (= e!3625013 e!3625009)))

(declare-fun call!469506 () List!64212)

(declare-fun c!1052398 () Bool)

(declare-fun bm!469499 () Bool)

(assert (=> bm!469499 (= call!469506 ($colon$colon!1858 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))) (ite (or c!1052399 c!1052398) (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))

(declare-fun bm!469500 () Bool)

(declare-fun call!469507 () List!64212)

(assert (=> bm!469500 (= call!469507 call!469506)))

(declare-fun b!5921349 () Bool)

(assert (=> b!5921349 (= e!3625012 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5921350 () Bool)

(assert (=> b!5921350 (= e!3625009 e!3625010)))

(assert (=> b!5921350 (= c!1052398 ((_ is Concat!24816) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun b!5921351 () Bool)

(declare-fun call!469504 () (InoxSet Context!10710))

(assert (=> b!5921351 (= e!3625009 ((_ map or) call!469504 call!469508))))

(declare-fun bm!469501 () Bool)

(assert (=> bm!469501 (= call!469504 (derivationStepZipperDown!1221 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))) (ite c!1052400 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469506)) (h!70538 s!2326)))))

(declare-fun b!5921352 () Bool)

(assert (=> b!5921352 (= e!3625010 call!469503)))

(declare-fun b!5921353 () Bool)

(declare-fun call!469505 () (InoxSet Context!10710))

(assert (=> b!5921353 (= e!3625013 ((_ map or) call!469505 call!469504))))

(declare-fun b!5921354 () Bool)

(assert (=> b!5921354 (= e!3625012 call!469503)))

(declare-fun bm!469502 () Bool)

(assert (=> bm!469502 (= call!469508 call!469505)))

(declare-fun b!5921355 () Bool)

(assert (=> b!5921355 (= e!3625008 (nullable!5966 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))

(declare-fun bm!469503 () Bool)

(assert (=> bm!469503 (= call!469505 (derivationStepZipperDown!1221 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (ite (or c!1052400 c!1052399) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469507)) (h!70538 s!2326)))))

(assert (= (and d!1856839 c!1052401) b!5921346))

(assert (= (and d!1856839 (not c!1052401)) b!5921345))

(assert (= (and b!5921345 c!1052400) b!5921353))

(assert (= (and b!5921345 (not c!1052400)) b!5921348))

(assert (= (and b!5921348 res!2482123) b!5921355))

(assert (= (and b!5921348 c!1052399) b!5921351))

(assert (= (and b!5921348 (not c!1052399)) b!5921350))

(assert (= (and b!5921350 c!1052398) b!5921352))

(assert (= (and b!5921350 (not c!1052398)) b!5921347))

(assert (= (and b!5921347 c!1052397) b!5921354))

(assert (= (and b!5921347 (not c!1052397)) b!5921349))

(assert (= (or b!5921352 b!5921354) bm!469500))

(assert (= (or b!5921352 b!5921354) bm!469498))

(assert (= (or b!5921351 bm!469500) bm!469499))

(assert (= (or b!5921351 bm!469498) bm!469502))

(assert (= (or b!5921353 b!5921351) bm!469501))

(assert (= (or b!5921353 bm!469502) bm!469503))

(declare-fun m!6817158 () Bool)

(assert (=> bm!469503 m!6817158))

(declare-fun m!6817160 () Bool)

(assert (=> bm!469501 m!6817160))

(declare-fun m!6817162 () Bool)

(assert (=> b!5921346 m!6817162))

(declare-fun m!6817164 () Bool)

(assert (=> b!5921355 m!6817164))

(declare-fun m!6817166 () Bool)

(assert (=> bm!469499 m!6817166))

(assert (=> bm!469451 d!1856839))

(declare-fun d!1856843 () Bool)

(assert (=> d!1856843 (= (isDefined!12565 lt!2309996) (not (isEmpty!35949 lt!2309996)))))

(declare-fun bs!1401494 () Bool)

(assert (= bs!1401494 d!1856843))

(declare-fun m!6817168 () Bool)

(assert (=> bs!1401494 m!6817168))

(assert (=> d!1856687 d!1856843))

(declare-fun b!5921370 () Bool)

(declare-fun e!3625022 () Bool)

(declare-fun lt!2310042 () Bool)

(declare-fun call!469510 () Bool)

(assert (=> b!5921370 (= e!3625022 (= lt!2310042 call!469510))))

(declare-fun b!5921371 () Bool)

(declare-fun res!2482139 () Bool)

(declare-fun e!3625024 () Bool)

(assert (=> b!5921371 (=> res!2482139 e!3625024)))

(assert (=> b!5921371 (= res!2482139 (not ((_ is ElementMatch!15971) (regOne!32454 r!7292))))))

(declare-fun e!3625027 () Bool)

(assert (=> b!5921371 (= e!3625027 e!3625024)))

(declare-fun b!5921372 () Bool)

(declare-fun e!3625026 () Bool)

(declare-fun e!3625021 () Bool)

(assert (=> b!5921372 (= e!3625026 e!3625021)))

(declare-fun res!2482138 () Bool)

(assert (=> b!5921372 (=> res!2482138 e!3625021)))

(assert (=> b!5921372 (= res!2482138 call!469510)))

(declare-fun bm!469505 () Bool)

(assert (=> bm!469505 (= call!469510 (isEmpty!35950 Nil!64090))))

(declare-fun b!5921373 () Bool)

(assert (=> b!5921373 (= e!3625021 (not (= (head!12484 Nil!64090) (c!1052179 (regOne!32454 r!7292)))))))

(declare-fun b!5921375 () Bool)

(assert (=> b!5921375 (= e!3625022 e!3625027)))

(declare-fun c!1052406 () Bool)

(assert (=> b!5921375 (= c!1052406 ((_ is EmptyLang!15971) (regOne!32454 r!7292)))))

(declare-fun b!5921376 () Bool)

(declare-fun res!2482136 () Bool)

(assert (=> b!5921376 (=> res!2482136 e!3625024)))

(declare-fun e!3625023 () Bool)

(assert (=> b!5921376 (= res!2482136 e!3625023)))

(declare-fun res!2482135 () Bool)

(assert (=> b!5921376 (=> (not res!2482135) (not e!3625023))))

(assert (=> b!5921376 (= res!2482135 lt!2310042)))

(declare-fun b!5921377 () Bool)

(assert (=> b!5921377 (= e!3625027 (not lt!2310042))))

(declare-fun b!5921378 () Bool)

(declare-fun res!2482134 () Bool)

(assert (=> b!5921378 (=> (not res!2482134) (not e!3625023))))

(assert (=> b!5921378 (= res!2482134 (isEmpty!35950 (tail!11569 Nil!64090)))))

(declare-fun b!5921379 () Bool)

(assert (=> b!5921379 (= e!3625023 (= (head!12484 Nil!64090) (c!1052179 (regOne!32454 r!7292))))))

(declare-fun b!5921380 () Bool)

(declare-fun e!3625025 () Bool)

(assert (=> b!5921380 (= e!3625025 (matchR!8154 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 Nil!64090)) (tail!11569 Nil!64090)))))

(declare-fun b!5921381 () Bool)

(declare-fun res!2482133 () Bool)

(assert (=> b!5921381 (=> res!2482133 e!3625021)))

(assert (=> b!5921381 (= res!2482133 (not (isEmpty!35950 (tail!11569 Nil!64090))))))

(declare-fun b!5921374 () Bool)

(declare-fun res!2482132 () Bool)

(assert (=> b!5921374 (=> (not res!2482132) (not e!3625023))))

(assert (=> b!5921374 (= res!2482132 (not call!469510))))

(declare-fun d!1856845 () Bool)

(assert (=> d!1856845 e!3625022))

(declare-fun c!1052405 () Bool)

(assert (=> d!1856845 (= c!1052405 ((_ is EmptyExpr!15971) (regOne!32454 r!7292)))))

(assert (=> d!1856845 (= lt!2310042 e!3625025)))

(declare-fun c!1052407 () Bool)

(assert (=> d!1856845 (= c!1052407 (isEmpty!35950 Nil!64090))))

(assert (=> d!1856845 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1856845 (= (matchR!8154 (regOne!32454 r!7292) Nil!64090) lt!2310042)))

(declare-fun b!5921382 () Bool)

(assert (=> b!5921382 (= e!3625025 (nullable!5966 (regOne!32454 r!7292)))))

(declare-fun b!5921383 () Bool)

(assert (=> b!5921383 (= e!3625024 e!3625026)))

(declare-fun res!2482137 () Bool)

(assert (=> b!5921383 (=> (not res!2482137) (not e!3625026))))

(assert (=> b!5921383 (= res!2482137 (not lt!2310042))))

(assert (= (and d!1856845 c!1052407) b!5921382))

(assert (= (and d!1856845 (not c!1052407)) b!5921380))

(assert (= (and d!1856845 c!1052405) b!5921370))

(assert (= (and d!1856845 (not c!1052405)) b!5921375))

(assert (= (and b!5921375 c!1052406) b!5921377))

(assert (= (and b!5921375 (not c!1052406)) b!5921371))

(assert (= (and b!5921371 (not res!2482139)) b!5921376))

(assert (= (and b!5921376 res!2482135) b!5921374))

(assert (= (and b!5921374 res!2482132) b!5921378))

(assert (= (and b!5921378 res!2482134) b!5921379))

(assert (= (and b!5921376 (not res!2482136)) b!5921383))

(assert (= (and b!5921383 res!2482137) b!5921372))

(assert (= (and b!5921372 (not res!2482138)) b!5921381))

(assert (= (and b!5921381 (not res!2482133)) b!5921373))

(assert (= (or b!5921370 b!5921372 b!5921374) bm!469505))

(declare-fun m!6817182 () Bool)

(assert (=> b!5921378 m!6817182))

(assert (=> b!5921378 m!6817182))

(declare-fun m!6817184 () Bool)

(assert (=> b!5921378 m!6817184))

(declare-fun m!6817186 () Bool)

(assert (=> b!5921380 m!6817186))

(assert (=> b!5921380 m!6817186))

(declare-fun m!6817188 () Bool)

(assert (=> b!5921380 m!6817188))

(assert (=> b!5921380 m!6817182))

(assert (=> b!5921380 m!6817188))

(assert (=> b!5921380 m!6817182))

(declare-fun m!6817190 () Bool)

(assert (=> b!5921380 m!6817190))

(declare-fun m!6817192 () Bool)

(assert (=> d!1856845 m!6817192))

(assert (=> d!1856845 m!6816790))

(assert (=> b!5921379 m!6817186))

(assert (=> bm!469505 m!6817192))

(assert (=> b!5921381 m!6817182))

(assert (=> b!5921381 m!6817182))

(assert (=> b!5921381 m!6817184))

(assert (=> b!5921373 m!6817186))

(assert (=> b!5921382 m!6816858))

(assert (=> d!1856687 d!1856845))

(assert (=> d!1856687 d!1856777))

(declare-fun d!1856849 () Bool)

(assert (=> d!1856849 (= (isEmpty!35950 (tail!11569 s!2326)) ((_ is Nil!64090) (tail!11569 s!2326)))))

(assert (=> b!5921026 d!1856849))

(declare-fun d!1856851 () Bool)

(assert (=> d!1856851 (= (tail!11569 s!2326) (t!377605 s!2326))))

(assert (=> b!5921026 d!1856851))

(declare-fun b!5921384 () Bool)

(declare-fun e!3625029 () Bool)

(declare-fun lt!2310043 () Bool)

(declare-fun call!469511 () Bool)

(assert (=> b!5921384 (= e!3625029 (= lt!2310043 call!469511))))

(declare-fun b!5921385 () Bool)

(declare-fun res!2482147 () Bool)

(declare-fun e!3625031 () Bool)

(assert (=> b!5921385 (=> res!2482147 e!3625031)))

(assert (=> b!5921385 (= res!2482147 (not ((_ is ElementMatch!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326)))))))

(declare-fun e!3625034 () Bool)

(assert (=> b!5921385 (= e!3625034 e!3625031)))

(declare-fun b!5921386 () Bool)

(declare-fun e!3625033 () Bool)

(declare-fun e!3625028 () Bool)

(assert (=> b!5921386 (= e!3625033 e!3625028)))

(declare-fun res!2482146 () Bool)

(assert (=> b!5921386 (=> res!2482146 e!3625028)))

(assert (=> b!5921386 (= res!2482146 call!469511)))

(declare-fun bm!469506 () Bool)

(assert (=> bm!469506 (= call!469511 (isEmpty!35950 (tail!11569 s!2326)))))

(declare-fun b!5921387 () Bool)

(assert (=> b!5921387 (= e!3625028 (not (= (head!12484 (tail!11569 s!2326)) (c!1052179 (derivativeStep!4702 r!7292 (head!12484 s!2326))))))))

(declare-fun b!5921389 () Bool)

(assert (=> b!5921389 (= e!3625029 e!3625034)))

(declare-fun c!1052409 () Bool)

(assert (=> b!5921389 (= c!1052409 ((_ is EmptyLang!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(declare-fun b!5921390 () Bool)

(declare-fun res!2482144 () Bool)

(assert (=> b!5921390 (=> res!2482144 e!3625031)))

(declare-fun e!3625030 () Bool)

(assert (=> b!5921390 (= res!2482144 e!3625030)))

(declare-fun res!2482143 () Bool)

(assert (=> b!5921390 (=> (not res!2482143) (not e!3625030))))

(assert (=> b!5921390 (= res!2482143 lt!2310043)))

(declare-fun b!5921391 () Bool)

(assert (=> b!5921391 (= e!3625034 (not lt!2310043))))

(declare-fun b!5921392 () Bool)

(declare-fun res!2482142 () Bool)

(assert (=> b!5921392 (=> (not res!2482142) (not e!3625030))))

(assert (=> b!5921392 (= res!2482142 (isEmpty!35950 (tail!11569 (tail!11569 s!2326))))))

(declare-fun b!5921393 () Bool)

(assert (=> b!5921393 (= e!3625030 (= (head!12484 (tail!11569 s!2326)) (c!1052179 (derivativeStep!4702 r!7292 (head!12484 s!2326)))))))

(declare-fun b!5921394 () Bool)

(declare-fun e!3625032 () Bool)

(assert (=> b!5921394 (= e!3625032 (matchR!8154 (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))) (tail!11569 (tail!11569 s!2326))))))

(declare-fun b!5921395 () Bool)

(declare-fun res!2482141 () Bool)

(assert (=> b!5921395 (=> res!2482141 e!3625028)))

(assert (=> b!5921395 (= res!2482141 (not (isEmpty!35950 (tail!11569 (tail!11569 s!2326)))))))

(declare-fun b!5921388 () Bool)

(declare-fun res!2482140 () Bool)

(assert (=> b!5921388 (=> (not res!2482140) (not e!3625030))))

(assert (=> b!5921388 (= res!2482140 (not call!469511))))

(declare-fun d!1856853 () Bool)

(assert (=> d!1856853 e!3625029))

(declare-fun c!1052408 () Bool)

(assert (=> d!1856853 (= c!1052408 ((_ is EmptyExpr!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(assert (=> d!1856853 (= lt!2310043 e!3625032)))

(declare-fun c!1052410 () Bool)

(assert (=> d!1856853 (= c!1052410 (isEmpty!35950 (tail!11569 s!2326)))))

(assert (=> d!1856853 (validRegex!7707 (derivativeStep!4702 r!7292 (head!12484 s!2326)))))

(assert (=> d!1856853 (= (matchR!8154 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (tail!11569 s!2326)) lt!2310043)))

(declare-fun b!5921396 () Bool)

(assert (=> b!5921396 (= e!3625032 (nullable!5966 (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(declare-fun b!5921397 () Bool)

(assert (=> b!5921397 (= e!3625031 e!3625033)))

(declare-fun res!2482145 () Bool)

(assert (=> b!5921397 (=> (not res!2482145) (not e!3625033))))

(assert (=> b!5921397 (= res!2482145 (not lt!2310043))))

(assert (= (and d!1856853 c!1052410) b!5921396))

(assert (= (and d!1856853 (not c!1052410)) b!5921394))

(assert (= (and d!1856853 c!1052408) b!5921384))

(assert (= (and d!1856853 (not c!1052408)) b!5921389))

(assert (= (and b!5921389 c!1052409) b!5921391))

(assert (= (and b!5921389 (not c!1052409)) b!5921385))

(assert (= (and b!5921385 (not res!2482147)) b!5921390))

(assert (= (and b!5921390 res!2482143) b!5921388))

(assert (= (and b!5921388 res!2482140) b!5921392))

(assert (= (and b!5921392 res!2482142) b!5921393))

(assert (= (and b!5921390 (not res!2482144)) b!5921397))

(assert (= (and b!5921397 res!2482145) b!5921386))

(assert (= (and b!5921386 (not res!2482146)) b!5921395))

(assert (= (and b!5921395 (not res!2482141)) b!5921387))

(assert (= (or b!5921384 b!5921386 b!5921388) bm!469506))

(assert (=> b!5921392 m!6816878))

(declare-fun m!6817194 () Bool)

(assert (=> b!5921392 m!6817194))

(assert (=> b!5921392 m!6817194))

(declare-fun m!6817196 () Bool)

(assert (=> b!5921392 m!6817196))

(assert (=> b!5921394 m!6816878))

(declare-fun m!6817198 () Bool)

(assert (=> b!5921394 m!6817198))

(assert (=> b!5921394 m!6816884))

(assert (=> b!5921394 m!6817198))

(declare-fun m!6817200 () Bool)

(assert (=> b!5921394 m!6817200))

(assert (=> b!5921394 m!6816878))

(assert (=> b!5921394 m!6817194))

(assert (=> b!5921394 m!6817200))

(assert (=> b!5921394 m!6817194))

(declare-fun m!6817202 () Bool)

(assert (=> b!5921394 m!6817202))

(assert (=> d!1856853 m!6816878))

(assert (=> d!1856853 m!6816880))

(assert (=> d!1856853 m!6816884))

(declare-fun m!6817204 () Bool)

(assert (=> d!1856853 m!6817204))

(assert (=> b!5921393 m!6816878))

(assert (=> b!5921393 m!6817198))

(assert (=> bm!469506 m!6816878))

(assert (=> bm!469506 m!6816880))

(assert (=> b!5921395 m!6816878))

(assert (=> b!5921395 m!6817194))

(assert (=> b!5921395 m!6817194))

(assert (=> b!5921395 m!6817196))

(assert (=> b!5921387 m!6816878))

(assert (=> b!5921387 m!6817198))

(assert (=> b!5921396 m!6816884))

(declare-fun m!6817206 () Bool)

(assert (=> b!5921396 m!6817206))

(assert (=> b!5921028 d!1856853))

(declare-fun b!5921443 () Bool)

(declare-fun e!3625063 () Regex!15971)

(assert (=> b!5921443 (= e!3625063 (ite (= (head!12484 s!2326) (c!1052179 r!7292)) EmptyExpr!15971 EmptyLang!15971))))

(declare-fun b!5921444 () Bool)

(declare-fun e!3625066 () Regex!15971)

(assert (=> b!5921444 (= e!3625066 e!3625063)))

(declare-fun c!1052429 () Bool)

(assert (=> b!5921444 (= c!1052429 ((_ is ElementMatch!15971) r!7292))))

(declare-fun b!5921445 () Bool)

(declare-fun e!3625062 () Regex!15971)

(declare-fun e!3625064 () Regex!15971)

(assert (=> b!5921445 (= e!3625062 e!3625064)))

(declare-fun c!1052432 () Bool)

(assert (=> b!5921445 (= c!1052432 ((_ is Star!15971) r!7292))))

(declare-fun bm!469521 () Bool)

(declare-fun call!469529 () Regex!15971)

(declare-fun c!1052430 () Bool)

(assert (=> bm!469521 (= call!469529 (derivativeStep!4702 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))) (head!12484 s!2326)))))

(declare-fun b!5921446 () Bool)

(assert (=> b!5921446 (= e!3625066 EmptyLang!15971)))

(declare-fun c!1052431 () Bool)

(declare-fun call!469526 () Regex!15971)

(declare-fun bm!469522 () Bool)

(assert (=> bm!469522 (= call!469526 (derivativeStep!4702 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))) (head!12484 s!2326)))))

(declare-fun b!5921447 () Bool)

(assert (=> b!5921447 (= c!1052431 (nullable!5966 (regOne!32454 r!7292)))))

(declare-fun e!3625065 () Regex!15971)

(assert (=> b!5921447 (= e!3625064 e!3625065)))

(declare-fun bm!469523 () Bool)

(declare-fun call!469527 () Regex!15971)

(assert (=> bm!469523 (= call!469527 call!469529)))

(declare-fun b!5921448 () Bool)

(assert (=> b!5921448 (= e!3625062 (Union!15971 call!469526 call!469529))))

(declare-fun bm!469524 () Bool)

(declare-fun call!469528 () Regex!15971)

(assert (=> bm!469524 (= call!469528 call!469526)))

(declare-fun b!5921449 () Bool)

(assert (=> b!5921449 (= e!3625065 (Union!15971 (Concat!24816 call!469527 (regTwo!32454 r!7292)) call!469528))))

(declare-fun b!5921451 () Bool)

(assert (=> b!5921451 (= e!3625064 (Concat!24816 call!469527 r!7292))))

(declare-fun b!5921452 () Bool)

(assert (=> b!5921452 (= c!1052430 ((_ is Union!15971) r!7292))))

(assert (=> b!5921452 (= e!3625063 e!3625062)))

(declare-fun b!5921450 () Bool)

(assert (=> b!5921450 (= e!3625065 (Union!15971 (Concat!24816 call!469528 (regTwo!32454 r!7292)) EmptyLang!15971))))

(declare-fun d!1856859 () Bool)

(declare-fun lt!2310046 () Regex!15971)

(assert (=> d!1856859 (validRegex!7707 lt!2310046)))

(assert (=> d!1856859 (= lt!2310046 e!3625066)))

(declare-fun c!1052433 () Bool)

(assert (=> d!1856859 (= c!1052433 (or ((_ is EmptyExpr!15971) r!7292) ((_ is EmptyLang!15971) r!7292)))))

(assert (=> d!1856859 (validRegex!7707 r!7292)))

(assert (=> d!1856859 (= (derivativeStep!4702 r!7292 (head!12484 s!2326)) lt!2310046)))

(assert (= (and d!1856859 c!1052433) b!5921446))

(assert (= (and d!1856859 (not c!1052433)) b!5921444))

(assert (= (and b!5921444 c!1052429) b!5921443))

(assert (= (and b!5921444 (not c!1052429)) b!5921452))

(assert (= (and b!5921452 c!1052430) b!5921448))

(assert (= (and b!5921452 (not c!1052430)) b!5921445))

(assert (= (and b!5921445 c!1052432) b!5921451))

(assert (= (and b!5921445 (not c!1052432)) b!5921447))

(assert (= (and b!5921447 c!1052431) b!5921449))

(assert (= (and b!5921447 (not c!1052431)) b!5921450))

(assert (= (or b!5921449 b!5921450) bm!469524))

(assert (= (or b!5921451 b!5921449) bm!469523))

(assert (= (or b!5921448 bm!469523) bm!469521))

(assert (= (or b!5921448 bm!469524) bm!469522))

(assert (=> bm!469521 m!6816882))

(declare-fun m!6817220 () Bool)

(assert (=> bm!469521 m!6817220))

(assert (=> bm!469522 m!6816882))

(declare-fun m!6817222 () Bool)

(assert (=> bm!469522 m!6817222))

(assert (=> b!5921447 m!6816858))

(declare-fun m!6817224 () Bool)

(assert (=> d!1856859 m!6817224))

(assert (=> d!1856859 m!6816578))

(assert (=> b!5921028 d!1856859))

(declare-fun d!1856871 () Bool)

(assert (=> d!1856871 (= (head!12484 s!2326) (h!70538 s!2326))))

(assert (=> b!5921028 d!1856871))

(assert (=> b!5921028 d!1856851))

(declare-fun bs!1401501 () Bool)

(declare-fun d!1856873 () Bool)

(assert (= bs!1401501 (and d!1856873 d!1856735)))

(declare-fun lambda!323029 () Int)

(assert (=> bs!1401501 (= lambda!323029 lambda!323014)))

(declare-fun bs!1401502 () Bool)

(assert (= bs!1401502 (and d!1856873 d!1856717)))

(assert (=> bs!1401502 (= lambda!323029 lambda!323001)))

(declare-fun bs!1401503 () Bool)

(assert (= bs!1401503 (and d!1856873 d!1856675)))

(assert (=> bs!1401503 (= lambda!323029 lambda!322975)))

(declare-fun bs!1401504 () Bool)

(assert (= bs!1401504 (and d!1856873 d!1856817)))

(assert (=> bs!1401504 (= lambda!323029 lambda!323024)))

(declare-fun bs!1401505 () Bool)

(assert (= bs!1401505 (and d!1856873 d!1856641)))

(assert (=> bs!1401505 (= lambda!323029 lambda!322963)))

(declare-fun bs!1401506 () Bool)

(assert (= bs!1401506 (and d!1856873 d!1856733)))

(assert (=> bs!1401506 (= lambda!323029 lambda!323011)))

(declare-fun bs!1401507 () Bool)

(assert (= bs!1401507 (and d!1856873 d!1856723)))

(assert (=> bs!1401507 (= lambda!323029 lambda!323002)))

(declare-fun b!5921453 () Bool)

(declare-fun e!3625072 () Bool)

(declare-fun lt!2310047 () Regex!15971)

(assert (=> b!5921453 (= e!3625072 (isConcat!922 lt!2310047))))

(declare-fun b!5921454 () Bool)

(declare-fun e!3625068 () Regex!15971)

(declare-fun e!3625067 () Regex!15971)

(assert (=> b!5921454 (= e!3625068 e!3625067)))

(declare-fun c!1052435 () Bool)

(assert (=> b!5921454 (= c!1052435 ((_ is Cons!64088) (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5921455 () Bool)

(assert (=> b!5921455 (= e!3625068 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5921456 () Bool)

(declare-fun e!3625069 () Bool)

(assert (=> b!5921456 (= e!3625069 (isEmpty!35946 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun e!3625071 () Bool)

(assert (=> d!1856873 e!3625071))

(declare-fun res!2482157 () Bool)

(assert (=> d!1856873 (=> (not res!2482157) (not e!3625071))))

(assert (=> d!1856873 (= res!2482157 (validRegex!7707 lt!2310047))))

(assert (=> d!1856873 (= lt!2310047 e!3625068)))

(declare-fun c!1052437 () Bool)

(assert (=> d!1856873 (= c!1052437 e!3625069)))

(declare-fun res!2482158 () Bool)

(assert (=> d!1856873 (=> (not res!2482158) (not e!3625069))))

(assert (=> d!1856873 (= res!2482158 ((_ is Cons!64088) (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> d!1856873 (forall!15054 (t!377603 (exprs!5855 (h!70537 zl!343))) lambda!323029)))

(assert (=> d!1856873 (= (generalisedConcat!1568 (t!377603 (exprs!5855 (h!70537 zl!343)))) lt!2310047)))

(declare-fun b!5921457 () Bool)

(declare-fun e!3625070 () Bool)

(assert (=> b!5921457 (= e!3625070 e!3625072)))

(declare-fun c!1052434 () Bool)

(assert (=> b!5921457 (= c!1052434 (isEmpty!35946 (tail!11567 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5921458 () Bool)

(assert (=> b!5921458 (= e!3625067 (Concat!24816 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343)))) (generalisedConcat!1568 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5921459 () Bool)

(assert (=> b!5921459 (= e!3625072 (= lt!2310047 (head!12482 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5921460 () Bool)

(assert (=> b!5921460 (= e!3625070 (isEmptyExpr!1399 lt!2310047))))

(declare-fun b!5921461 () Bool)

(assert (=> b!5921461 (= e!3625071 e!3625070)))

(declare-fun c!1052436 () Bool)

(assert (=> b!5921461 (= c!1052436 (isEmpty!35946 (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5921462 () Bool)

(assert (=> b!5921462 (= e!3625067 EmptyExpr!15971)))

(assert (= (and d!1856873 res!2482158) b!5921456))

(assert (= (and d!1856873 c!1052437) b!5921455))

(assert (= (and d!1856873 (not c!1052437)) b!5921454))

(assert (= (and b!5921454 c!1052435) b!5921458))

(assert (= (and b!5921454 (not c!1052435)) b!5921462))

(assert (= (and d!1856873 res!2482157) b!5921461))

(assert (= (and b!5921461 c!1052436) b!5921460))

(assert (= (and b!5921461 (not c!1052436)) b!5921457))

(assert (= (and b!5921457 c!1052434) b!5921459))

(assert (= (and b!5921457 (not c!1052434)) b!5921453))

(declare-fun m!6817226 () Bool)

(assert (=> b!5921457 m!6817226))

(assert (=> b!5921457 m!6817226))

(declare-fun m!6817228 () Bool)

(assert (=> b!5921457 m!6817228))

(declare-fun m!6817230 () Bool)

(assert (=> d!1856873 m!6817230))

(declare-fun m!6817232 () Bool)

(assert (=> d!1856873 m!6817232))

(declare-fun m!6817234 () Bool)

(assert (=> b!5921460 m!6817234))

(assert (=> b!5921461 m!6816600))

(declare-fun m!6817236 () Bool)

(assert (=> b!5921459 m!6817236))

(declare-fun m!6817238 () Bool)

(assert (=> b!5921456 m!6817238))

(declare-fun m!6817240 () Bool)

(assert (=> b!5921458 m!6817240))

(declare-fun m!6817242 () Bool)

(assert (=> b!5921453 m!6817242))

(assert (=> b!5920558 d!1856873))

(declare-fun d!1856875 () Bool)

(declare-fun res!2482163 () Bool)

(declare-fun e!3625078 () Bool)

(assert (=> d!1856875 (=> res!2482163 e!3625078)))

(assert (=> d!1856875 (= res!2482163 ((_ is ElementMatch!15971) (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))

(assert (=> d!1856875 (= (validRegex!7707 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) e!3625078)))

(declare-fun b!5921463 () Bool)

(declare-fun e!3625079 () Bool)

(declare-fun e!3625077 () Bool)

(assert (=> b!5921463 (= e!3625079 e!3625077)))

(declare-fun res!2482160 () Bool)

(assert (=> b!5921463 (= res!2482160 (not (nullable!5966 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))

(assert (=> b!5921463 (=> (not res!2482160) (not e!3625077))))

(declare-fun call!469532 () Bool)

(declare-fun bm!469525 () Bool)

(declare-fun c!1052438 () Bool)

(assert (=> bm!469525 (= call!469532 (validRegex!7707 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))

(declare-fun b!5921464 () Bool)

(declare-fun res!2482162 () Bool)

(declare-fun e!3625074 () Bool)

(assert (=> b!5921464 (=> res!2482162 e!3625074)))

(assert (=> b!5921464 (= res!2482162 (not ((_ is Concat!24816) (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))

(declare-fun e!3625073 () Bool)

(assert (=> b!5921464 (= e!3625073 e!3625074)))

(declare-fun b!5921465 () Bool)

(declare-fun res!2482159 () Bool)

(declare-fun e!3625075 () Bool)

(assert (=> b!5921465 (=> (not res!2482159) (not e!3625075))))

(declare-fun call!469531 () Bool)

(assert (=> b!5921465 (= res!2482159 call!469531)))

(assert (=> b!5921465 (= e!3625073 e!3625075)))

(declare-fun bm!469526 () Bool)

(declare-fun call!469530 () Bool)

(assert (=> bm!469526 (= call!469531 call!469530)))

(declare-fun b!5921466 () Bool)

(assert (=> b!5921466 (= e!3625077 call!469530)))

(declare-fun b!5921467 () Bool)

(declare-fun e!3625076 () Bool)

(assert (=> b!5921467 (= e!3625076 call!469532)))

(declare-fun b!5921468 () Bool)

(assert (=> b!5921468 (= e!3625074 e!3625076)))

(declare-fun res!2482161 () Bool)

(assert (=> b!5921468 (=> (not res!2482161) (not e!3625076))))

(assert (=> b!5921468 (= res!2482161 call!469531)))

(declare-fun b!5921469 () Bool)

(assert (=> b!5921469 (= e!3625079 e!3625073)))

(assert (=> b!5921469 (= c!1052438 ((_ is Union!15971) (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))

(declare-fun b!5921470 () Bool)

(assert (=> b!5921470 (= e!3625075 call!469532)))

(declare-fun bm!469527 () Bool)

(declare-fun c!1052439 () Bool)

(assert (=> bm!469527 (= call!469530 (validRegex!7707 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))

(declare-fun b!5921471 () Bool)

(assert (=> b!5921471 (= e!3625078 e!3625079)))

(assert (=> b!5921471 (= c!1052439 ((_ is Star!15971) (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))

(assert (= (and d!1856875 (not res!2482163)) b!5921471))

(assert (= (and b!5921471 c!1052439) b!5921463))

(assert (= (and b!5921471 (not c!1052439)) b!5921469))

(assert (= (and b!5921463 res!2482160) b!5921466))

(assert (= (and b!5921469 c!1052438) b!5921465))

(assert (= (and b!5921469 (not c!1052438)) b!5921464))

(assert (= (and b!5921465 res!2482159) b!5921470))

(assert (= (and b!5921464 (not res!2482162)) b!5921468))

(assert (= (and b!5921468 res!2482161) b!5921467))

(assert (= (or b!5921470 b!5921467) bm!469525))

(assert (= (or b!5921465 b!5921468) bm!469526))

(assert (= (or b!5921466 bm!469526) bm!469527))

(declare-fun m!6817244 () Bool)

(assert (=> b!5921463 m!6817244))

(declare-fun m!6817246 () Bool)

(assert (=> bm!469525 m!6817246))

(declare-fun m!6817248 () Bool)

(assert (=> bm!469527 m!6817248))

(assert (=> bm!469467 d!1856875))

(declare-fun d!1856877 () Bool)

(assert (=> d!1856877 (= (nullable!5966 r!7292) (nullableFct!1937 r!7292))))

(declare-fun bs!1401513 () Bool)

(assert (= bs!1401513 d!1856877))

(declare-fun m!6817250 () Bool)

(assert (=> bs!1401513 m!6817250))

(assert (=> b!5921030 d!1856877))

(declare-fun d!1856879 () Bool)

(assert (=> d!1856879 (= (isEmptyExpr!1399 lt!2309966) ((_ is EmptyExpr!15971) lt!2309966))))

(assert (=> b!5920560 d!1856879))

(declare-fun d!1856881 () Bool)

(assert (=> d!1856881 true))

(declare-fun setRes!40185 () Bool)

(assert (=> d!1856881 setRes!40185))

(declare-fun condSetEmpty!40185 () Bool)

(declare-fun res!2482166 () (InoxSet Context!10710))

(assert (=> d!1856881 (= condSetEmpty!40185 (= res!2482166 ((as const (Array Context!10710 Bool)) false)))))

(assert (=> d!1856881 (= (choose!44651 z!1189 lambda!322950) res!2482166)))

(declare-fun setIsEmpty!40185 () Bool)

(assert (=> setIsEmpty!40185 setRes!40185))

(declare-fun setNonEmpty!40185 () Bool)

(declare-fun setElem!40185 () Context!10710)

(declare-fun e!3625082 () Bool)

(declare-fun tp!1645903 () Bool)

(assert (=> setNonEmpty!40185 (= setRes!40185 (and tp!1645903 (inv!83174 setElem!40185) e!3625082))))

(declare-fun setRest!40185 () (InoxSet Context!10710))

(assert (=> setNonEmpty!40185 (= res!2482166 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) setElem!40185 true) setRest!40185))))

(declare-fun b!5921474 () Bool)

(declare-fun tp!1645904 () Bool)

(assert (=> b!5921474 (= e!3625082 tp!1645904)))

(assert (= (and d!1856881 condSetEmpty!40185) setIsEmpty!40185))

(assert (= (and d!1856881 (not condSetEmpty!40185)) setNonEmpty!40185))

(assert (= setNonEmpty!40185 b!5921474))

(declare-fun m!6817258 () Bool)

(assert (=> setNonEmpty!40185 m!6817258))

(assert (=> d!1856663 d!1856881))

(declare-fun d!1856885 () Bool)

(assert (=> d!1856885 (= (isEmptyLang!1408 lt!2310018) ((_ is EmptyLang!15971) lt!2310018))))

(assert (=> b!5921079 d!1856885))

(declare-fun bs!1401515 () Bool)

(declare-fun d!1856887 () Bool)

(assert (= bs!1401515 (and d!1856887 d!1856735)))

(declare-fun lambda!323031 () Int)

(assert (=> bs!1401515 (= lambda!323031 lambda!323014)))

(declare-fun bs!1401516 () Bool)

(assert (= bs!1401516 (and d!1856887 d!1856717)))

(assert (=> bs!1401516 (= lambda!323031 lambda!323001)))

(declare-fun bs!1401517 () Bool)

(assert (= bs!1401517 (and d!1856887 d!1856873)))

(assert (=> bs!1401517 (= lambda!323031 lambda!323029)))

(declare-fun bs!1401518 () Bool)

(assert (= bs!1401518 (and d!1856887 d!1856675)))

(assert (=> bs!1401518 (= lambda!323031 lambda!322975)))

(declare-fun bs!1401519 () Bool)

(assert (= bs!1401519 (and d!1856887 d!1856817)))

(assert (=> bs!1401519 (= lambda!323031 lambda!323024)))

(declare-fun bs!1401520 () Bool)

(assert (= bs!1401520 (and d!1856887 d!1856641)))

(assert (=> bs!1401520 (= lambda!323031 lambda!322963)))

(declare-fun bs!1401521 () Bool)

(assert (= bs!1401521 (and d!1856887 d!1856733)))

(assert (=> bs!1401521 (= lambda!323031 lambda!323011)))

(declare-fun bs!1401522 () Bool)

(assert (= bs!1401522 (and d!1856887 d!1856723)))

(assert (=> bs!1401522 (= lambda!323031 lambda!323002)))

(declare-fun b!5921475 () Bool)

(declare-fun e!3625088 () Bool)

(declare-fun lt!2310048 () Regex!15971)

(assert (=> b!5921475 (= e!3625088 (isEmptyLang!1408 lt!2310048))))

(declare-fun b!5921476 () Bool)

(declare-fun e!3625086 () Bool)

(assert (=> b!5921476 (= e!3625086 (= lt!2310048 (head!12482 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5921477 () Bool)

(declare-fun e!3625087 () Regex!15971)

(assert (=> b!5921477 (= e!3625087 (Union!15971 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343))) (generalisedUnion!1815 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))))))))

(declare-fun b!5921478 () Bool)

(declare-fun e!3625085 () Regex!15971)

(assert (=> b!5921478 (= e!3625085 e!3625087)))

(declare-fun c!1052440 () Bool)

(assert (=> b!5921478 (= c!1052440 ((_ is Cons!64088) (t!377603 (unfocusZipperList!1392 zl!343))))))

(declare-fun e!3625084 () Bool)

(assert (=> d!1856887 e!3625084))

(declare-fun res!2482170 () Bool)

(assert (=> d!1856887 (=> (not res!2482170) (not e!3625084))))

(assert (=> d!1856887 (= res!2482170 (validRegex!7707 lt!2310048))))

(assert (=> d!1856887 (= lt!2310048 e!3625085)))

(declare-fun c!1052441 () Bool)

(declare-fun e!3625083 () Bool)

(assert (=> d!1856887 (= c!1052441 e!3625083)))

(declare-fun res!2482169 () Bool)

(assert (=> d!1856887 (=> (not res!2482169) (not e!3625083))))

(assert (=> d!1856887 (= res!2482169 ((_ is Cons!64088) (t!377603 (unfocusZipperList!1392 zl!343))))))

(assert (=> d!1856887 (forall!15054 (t!377603 (unfocusZipperList!1392 zl!343)) lambda!323031)))

(assert (=> d!1856887 (= (generalisedUnion!1815 (t!377603 (unfocusZipperList!1392 zl!343))) lt!2310048)))

(declare-fun b!5921479 () Bool)

(assert (=> b!5921479 (= e!3625086 (isUnion!838 lt!2310048))))

(declare-fun b!5921480 () Bool)

(assert (=> b!5921480 (= e!3625088 e!3625086)))

(declare-fun c!1052442 () Bool)

(assert (=> b!5921480 (= c!1052442 (isEmpty!35946 (tail!11567 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5921481 () Bool)

(assert (=> b!5921481 (= e!3625085 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343))))))

(declare-fun b!5921482 () Bool)

(assert (=> b!5921482 (= e!3625083 (isEmpty!35946 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5921483 () Bool)

(assert (=> b!5921483 (= e!3625084 e!3625088)))

(declare-fun c!1052443 () Bool)

(assert (=> b!5921483 (= c!1052443 (isEmpty!35946 (t!377603 (unfocusZipperList!1392 zl!343))))))

(declare-fun b!5921484 () Bool)

(assert (=> b!5921484 (= e!3625087 EmptyLang!15971)))

(assert (= (and d!1856887 res!2482169) b!5921482))

(assert (= (and d!1856887 c!1052441) b!5921481))

(assert (= (and d!1856887 (not c!1052441)) b!5921478))

(assert (= (and b!5921478 c!1052440) b!5921477))

(assert (= (and b!5921478 (not c!1052440)) b!5921484))

(assert (= (and d!1856887 res!2482170) b!5921483))

(assert (= (and b!5921483 c!1052443) b!5921475))

(assert (= (and b!5921483 (not c!1052443)) b!5921480))

(assert (= (and b!5921480 c!1052442) b!5921476))

(assert (= (and b!5921480 (not c!1052442)) b!5921479))

(declare-fun m!6817260 () Bool)

(assert (=> b!5921479 m!6817260))

(assert (=> b!5921483 m!6816908))

(declare-fun m!6817262 () Bool)

(assert (=> b!5921475 m!6817262))

(declare-fun m!6817264 () Bool)

(assert (=> b!5921480 m!6817264))

(assert (=> b!5921480 m!6817264))

(declare-fun m!6817266 () Bool)

(assert (=> b!5921480 m!6817266))

(declare-fun m!6817268 () Bool)

(assert (=> b!5921482 m!6817268))

(declare-fun m!6817270 () Bool)

(assert (=> b!5921476 m!6817270))

(declare-fun m!6817272 () Bool)

(assert (=> d!1856887 m!6817272))

(declare-fun m!6817274 () Bool)

(assert (=> d!1856887 m!6817274))

(declare-fun m!6817276 () Bool)

(assert (=> b!5921477 m!6817276))

(assert (=> b!5921081 d!1856887))

(declare-fun d!1856889 () Bool)

(declare-fun res!2482181 () Bool)

(declare-fun e!3625103 () Bool)

(assert (=> d!1856889 (=> res!2482181 e!3625103)))

(assert (=> d!1856889 (= res!2482181 ((_ is Nil!64089) lt!2309955))))

(assert (=> d!1856889 (= (noDuplicate!1828 lt!2309955) e!3625103)))

(declare-fun b!5921501 () Bool)

(declare-fun e!3625104 () Bool)

(assert (=> b!5921501 (= e!3625103 e!3625104)))

(declare-fun res!2482182 () Bool)

(assert (=> b!5921501 (=> (not res!2482182) (not e!3625104))))

(declare-fun contains!19956 (List!64213 Context!10710) Bool)

(assert (=> b!5921501 (= res!2482182 (not (contains!19956 (t!377604 lt!2309955) (h!70537 lt!2309955))))))

(declare-fun b!5921502 () Bool)

(assert (=> b!5921502 (= e!3625104 (noDuplicate!1828 (t!377604 lt!2309955)))))

(assert (= (and d!1856889 (not res!2482181)) b!5921501))

(assert (= (and b!5921501 res!2482182) b!5921502))

(declare-fun m!6817280 () Bool)

(assert (=> b!5921501 m!6817280))

(declare-fun m!6817282 () Bool)

(assert (=> b!5921502 m!6817282))

(assert (=> d!1856639 d!1856889))

(declare-fun d!1856893 () Bool)

(declare-fun e!3625112 () Bool)

(assert (=> d!1856893 e!3625112))

(declare-fun res!2482188 () Bool)

(assert (=> d!1856893 (=> (not res!2482188) (not e!3625112))))

(declare-fun res!2482187 () List!64213)

(assert (=> d!1856893 (= res!2482188 (noDuplicate!1828 res!2482187))))

(declare-fun e!3625111 () Bool)

(assert (=> d!1856893 e!3625111))

(assert (=> d!1856893 (= (choose!44649 z!1189) res!2482187)))

(declare-fun b!5921510 () Bool)

(declare-fun e!3625113 () Bool)

(declare-fun tp!1645915 () Bool)

(assert (=> b!5921510 (= e!3625113 tp!1645915)))

(declare-fun tp!1645916 () Bool)

(declare-fun b!5921509 () Bool)

(assert (=> b!5921509 (= e!3625111 (and (inv!83174 (h!70537 res!2482187)) e!3625113 tp!1645916))))

(declare-fun b!5921511 () Bool)

(assert (=> b!5921511 (= e!3625112 (= (content!11799 res!2482187) z!1189))))

(assert (= b!5921509 b!5921510))

(assert (= (and d!1856893 ((_ is Cons!64089) res!2482187)) b!5921509))

(assert (= (and d!1856893 res!2482188) b!5921511))

(declare-fun m!6817292 () Bool)

(assert (=> d!1856893 m!6817292))

(declare-fun m!6817294 () Bool)

(assert (=> b!5921509 m!6817294))

(declare-fun m!6817296 () Bool)

(assert (=> b!5921511 m!6817296))

(assert (=> d!1856639 d!1856893))

(declare-fun bs!1401524 () Bool)

(declare-fun d!1856903 () Bool)

(assert (= bs!1401524 (and d!1856903 d!1856735)))

(declare-fun lambda!323032 () Int)

(assert (=> bs!1401524 (= lambda!323032 lambda!323014)))

(declare-fun bs!1401525 () Bool)

(assert (= bs!1401525 (and d!1856903 d!1856717)))

(assert (=> bs!1401525 (= lambda!323032 lambda!323001)))

(declare-fun bs!1401526 () Bool)

(assert (= bs!1401526 (and d!1856903 d!1856873)))

(assert (=> bs!1401526 (= lambda!323032 lambda!323029)))

(declare-fun bs!1401527 () Bool)

(assert (= bs!1401527 (and d!1856903 d!1856887)))

(assert (=> bs!1401527 (= lambda!323032 lambda!323031)))

(declare-fun bs!1401528 () Bool)

(assert (= bs!1401528 (and d!1856903 d!1856675)))

(assert (=> bs!1401528 (= lambda!323032 lambda!322975)))

(declare-fun bs!1401529 () Bool)

(assert (= bs!1401529 (and d!1856903 d!1856817)))

(assert (=> bs!1401529 (= lambda!323032 lambda!323024)))

(declare-fun bs!1401530 () Bool)

(assert (= bs!1401530 (and d!1856903 d!1856641)))

(assert (=> bs!1401530 (= lambda!323032 lambda!322963)))

(declare-fun bs!1401531 () Bool)

(assert (= bs!1401531 (and d!1856903 d!1856733)))

(assert (=> bs!1401531 (= lambda!323032 lambda!323011)))

(declare-fun bs!1401532 () Bool)

(assert (= bs!1401532 (and d!1856903 d!1856723)))

(assert (=> bs!1401532 (= lambda!323032 lambda!323002)))

(assert (=> d!1856903 (= (inv!83174 setElem!40182) (forall!15054 (exprs!5855 setElem!40182) lambda!323032))))

(declare-fun bs!1401533 () Bool)

(assert (= bs!1401533 d!1856903))

(declare-fun m!6817298 () Bool)

(assert (=> bs!1401533 m!6817298))

(assert (=> setNonEmpty!40182 d!1856903))

(declare-fun d!1856905 () Bool)

(assert (=> d!1856905 (= (isUnion!838 lt!2310018) ((_ is Union!15971) lt!2310018))))

(assert (=> b!5921083 d!1856905))

(assert (=> bs!1401443 d!1856665))

(declare-fun d!1856907 () Bool)

(assert (=> d!1856907 (= (nullable!5966 (h!70536 (exprs!5855 (h!70537 zl!343)))) (nullableFct!1937 (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun bs!1401534 () Bool)

(assert (= bs!1401534 d!1856907))

(declare-fun m!6817300 () Bool)

(assert (=> bs!1401534 m!6817300))

(assert (=> b!5920615 d!1856907))

(declare-fun d!1856909 () Bool)

(declare-fun res!2482189 () Bool)

(declare-fun e!3625114 () Bool)

(assert (=> d!1856909 (=> res!2482189 e!3625114)))

(assert (=> d!1856909 (= res!2482189 ((_ is Nil!64088) (exprs!5855 setElem!40176)))))

(assert (=> d!1856909 (= (forall!15054 (exprs!5855 setElem!40176) lambda!322975) e!3625114)))

(declare-fun b!5921512 () Bool)

(declare-fun e!3625115 () Bool)

(assert (=> b!5921512 (= e!3625114 e!3625115)))

(declare-fun res!2482190 () Bool)

(assert (=> b!5921512 (=> (not res!2482190) (not e!3625115))))

(assert (=> b!5921512 (= res!2482190 (dynLambda!25057 lambda!322975 (h!70536 (exprs!5855 setElem!40176))))))

(declare-fun b!5921513 () Bool)

(assert (=> b!5921513 (= e!3625115 (forall!15054 (t!377603 (exprs!5855 setElem!40176)) lambda!322975))))

(assert (= (and d!1856909 (not res!2482189)) b!5921512))

(assert (= (and b!5921512 res!2482190) b!5921513))

(declare-fun b_lambda!222401 () Bool)

(assert (=> (not b_lambda!222401) (not b!5921512)))

(declare-fun m!6817302 () Bool)

(assert (=> b!5921512 m!6817302))

(declare-fun m!6817304 () Bool)

(assert (=> b!5921513 m!6817304))

(assert (=> d!1856675 d!1856909))

(declare-fun d!1856911 () Bool)

(declare-fun res!2482195 () Bool)

(declare-fun e!3625121 () Bool)

(assert (=> d!1856911 (=> res!2482195 e!3625121)))

(assert (=> d!1856911 (= res!2482195 ((_ is ElementMatch!15971) lt!2310024))))

(assert (=> d!1856911 (= (validRegex!7707 lt!2310024) e!3625121)))

(declare-fun b!5921514 () Bool)

(declare-fun e!3625122 () Bool)

(declare-fun e!3625120 () Bool)

(assert (=> b!5921514 (= e!3625122 e!3625120)))

(declare-fun res!2482192 () Bool)

(assert (=> b!5921514 (= res!2482192 (not (nullable!5966 (reg!16300 lt!2310024))))))

(assert (=> b!5921514 (=> (not res!2482192) (not e!3625120))))

(declare-fun bm!469531 () Bool)

(declare-fun call!469538 () Bool)

(declare-fun c!1052446 () Bool)

(assert (=> bm!469531 (= call!469538 (validRegex!7707 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))))))

(declare-fun b!5921515 () Bool)

(declare-fun res!2482194 () Bool)

(declare-fun e!3625117 () Bool)

(assert (=> b!5921515 (=> res!2482194 e!3625117)))

(assert (=> b!5921515 (= res!2482194 (not ((_ is Concat!24816) lt!2310024)))))

(declare-fun e!3625116 () Bool)

(assert (=> b!5921515 (= e!3625116 e!3625117)))

(declare-fun b!5921516 () Bool)

(declare-fun res!2482191 () Bool)

(declare-fun e!3625118 () Bool)

(assert (=> b!5921516 (=> (not res!2482191) (not e!3625118))))

(declare-fun call!469537 () Bool)

(assert (=> b!5921516 (= res!2482191 call!469537)))

(assert (=> b!5921516 (= e!3625116 e!3625118)))

(declare-fun bm!469532 () Bool)

(declare-fun call!469536 () Bool)

(assert (=> bm!469532 (= call!469537 call!469536)))

(declare-fun b!5921517 () Bool)

(assert (=> b!5921517 (= e!3625120 call!469536)))

(declare-fun b!5921518 () Bool)

(declare-fun e!3625119 () Bool)

(assert (=> b!5921518 (= e!3625119 call!469538)))

(declare-fun b!5921519 () Bool)

(assert (=> b!5921519 (= e!3625117 e!3625119)))

(declare-fun res!2482193 () Bool)

(assert (=> b!5921519 (=> (not res!2482193) (not e!3625119))))

(assert (=> b!5921519 (= res!2482193 call!469537)))

(declare-fun b!5921520 () Bool)

(assert (=> b!5921520 (= e!3625122 e!3625116)))

(assert (=> b!5921520 (= c!1052446 ((_ is Union!15971) lt!2310024))))

(declare-fun b!5921521 () Bool)

(assert (=> b!5921521 (= e!3625118 call!469538)))

(declare-fun bm!469533 () Bool)

(declare-fun c!1052447 () Bool)

(assert (=> bm!469533 (= call!469536 (validRegex!7707 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))))))

(declare-fun b!5921522 () Bool)

(assert (=> b!5921522 (= e!3625121 e!3625122)))

(assert (=> b!5921522 (= c!1052447 ((_ is Star!15971) lt!2310024))))

(assert (= (and d!1856911 (not res!2482195)) b!5921522))

(assert (= (and b!5921522 c!1052447) b!5921514))

(assert (= (and b!5921522 (not c!1052447)) b!5921520))

(assert (= (and b!5921514 res!2482192) b!5921517))

(assert (= (and b!5921520 c!1052446) b!5921516))

(assert (= (and b!5921520 (not c!1052446)) b!5921515))

(assert (= (and b!5921516 res!2482191) b!5921521))

(assert (= (and b!5921515 (not res!2482194)) b!5921519))

(assert (= (and b!5921519 res!2482193) b!5921518))

(assert (= (or b!5921521 b!5921518) bm!469531))

(assert (= (or b!5921516 b!5921519) bm!469532))

(assert (= (or b!5921517 bm!469532) bm!469533))

(declare-fun m!6817306 () Bool)

(assert (=> b!5921514 m!6817306))

(declare-fun m!6817308 () Bool)

(assert (=> bm!469531 m!6817308))

(declare-fun m!6817310 () Bool)

(assert (=> bm!469533 m!6817310))

(assert (=> d!1856737 d!1856911))

(assert (=> d!1856737 d!1856733))

(assert (=> d!1856737 d!1856735))

(declare-fun b!5921523 () Bool)

(declare-fun e!3625124 () Bool)

(declare-fun lt!2310049 () Bool)

(declare-fun call!469539 () Bool)

(assert (=> b!5921523 (= e!3625124 (= lt!2310049 call!469539))))

(declare-fun b!5921524 () Bool)

(declare-fun res!2482203 () Bool)

(declare-fun e!3625126 () Bool)

(assert (=> b!5921524 (=> res!2482203 e!3625126)))

(assert (=> b!5921524 (= res!2482203 (not ((_ is ElementMatch!15971) (regOne!32454 r!7292))))))

(declare-fun e!3625129 () Bool)

(assert (=> b!5921524 (= e!3625129 e!3625126)))

(declare-fun b!5921525 () Bool)

(declare-fun e!3625128 () Bool)

(declare-fun e!3625123 () Bool)

(assert (=> b!5921525 (= e!3625128 e!3625123)))

(declare-fun res!2482202 () Bool)

(assert (=> b!5921525 (=> res!2482202 e!3625123)))

(assert (=> b!5921525 (= res!2482202 call!469539)))

(declare-fun bm!469534 () Bool)

(assert (=> bm!469534 (= call!469539 (isEmpty!35950 (_1!36253 (get!22069 lt!2309996))))))

(declare-fun b!5921526 () Bool)

(assert (=> b!5921526 (= e!3625123 (not (= (head!12484 (_1!36253 (get!22069 lt!2309996))) (c!1052179 (regOne!32454 r!7292)))))))

(declare-fun b!5921528 () Bool)

(assert (=> b!5921528 (= e!3625124 e!3625129)))

(declare-fun c!1052449 () Bool)

(assert (=> b!5921528 (= c!1052449 ((_ is EmptyLang!15971) (regOne!32454 r!7292)))))

(declare-fun b!5921529 () Bool)

(declare-fun res!2482200 () Bool)

(assert (=> b!5921529 (=> res!2482200 e!3625126)))

(declare-fun e!3625125 () Bool)

(assert (=> b!5921529 (= res!2482200 e!3625125)))

(declare-fun res!2482199 () Bool)

(assert (=> b!5921529 (=> (not res!2482199) (not e!3625125))))

(assert (=> b!5921529 (= res!2482199 lt!2310049)))

(declare-fun b!5921530 () Bool)

(assert (=> b!5921530 (= e!3625129 (not lt!2310049))))

(declare-fun b!5921531 () Bool)

(declare-fun res!2482198 () Bool)

(assert (=> b!5921531 (=> (not res!2482198) (not e!3625125))))

(assert (=> b!5921531 (= res!2482198 (isEmpty!35950 (tail!11569 (_1!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5921532 () Bool)

(assert (=> b!5921532 (= e!3625125 (= (head!12484 (_1!36253 (get!22069 lt!2309996))) (c!1052179 (regOne!32454 r!7292))))))

(declare-fun b!5921533 () Bool)

(declare-fun e!3625127 () Bool)

(assert (=> b!5921533 (= e!3625127 (matchR!8154 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996)))) (tail!11569 (_1!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5921534 () Bool)

(declare-fun res!2482197 () Bool)

(assert (=> b!5921534 (=> res!2482197 e!3625123)))

(assert (=> b!5921534 (= res!2482197 (not (isEmpty!35950 (tail!11569 (_1!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5921527 () Bool)

(declare-fun res!2482196 () Bool)

(assert (=> b!5921527 (=> (not res!2482196) (not e!3625125))))

(assert (=> b!5921527 (= res!2482196 (not call!469539))))

(declare-fun d!1856913 () Bool)

(assert (=> d!1856913 e!3625124))

(declare-fun c!1052448 () Bool)

(assert (=> d!1856913 (= c!1052448 ((_ is EmptyExpr!15971) (regOne!32454 r!7292)))))

(assert (=> d!1856913 (= lt!2310049 e!3625127)))

(declare-fun c!1052450 () Bool)

(assert (=> d!1856913 (= c!1052450 (isEmpty!35950 (_1!36253 (get!22069 lt!2309996))))))

(assert (=> d!1856913 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1856913 (= (matchR!8154 (regOne!32454 r!7292) (_1!36253 (get!22069 lt!2309996))) lt!2310049)))

(declare-fun b!5921535 () Bool)

(assert (=> b!5921535 (= e!3625127 (nullable!5966 (regOne!32454 r!7292)))))

(declare-fun b!5921536 () Bool)

(assert (=> b!5921536 (= e!3625126 e!3625128)))

(declare-fun res!2482201 () Bool)

(assert (=> b!5921536 (=> (not res!2482201) (not e!3625128))))

(assert (=> b!5921536 (= res!2482201 (not lt!2310049))))

(assert (= (and d!1856913 c!1052450) b!5921535))

(assert (= (and d!1856913 (not c!1052450)) b!5921533))

(assert (= (and d!1856913 c!1052448) b!5921523))

(assert (= (and d!1856913 (not c!1052448)) b!5921528))

(assert (= (and b!5921528 c!1052449) b!5921530))

(assert (= (and b!5921528 (not c!1052449)) b!5921524))

(assert (= (and b!5921524 (not res!2482203)) b!5921529))

(assert (= (and b!5921529 res!2482199) b!5921527))

(assert (= (and b!5921527 res!2482196) b!5921531))

(assert (= (and b!5921531 res!2482198) b!5921532))

(assert (= (and b!5921529 (not res!2482200)) b!5921536))

(assert (= (and b!5921536 res!2482201) b!5921525))

(assert (= (and b!5921525 (not res!2482202)) b!5921534))

(assert (= (and b!5921534 (not res!2482197)) b!5921526))

(assert (= (or b!5921523 b!5921525 b!5921527) bm!469534))

(declare-fun m!6817312 () Bool)

(assert (=> b!5921531 m!6817312))

(assert (=> b!5921531 m!6817312))

(declare-fun m!6817314 () Bool)

(assert (=> b!5921531 m!6817314))

(declare-fun m!6817316 () Bool)

(assert (=> b!5921533 m!6817316))

(assert (=> b!5921533 m!6817316))

(declare-fun m!6817318 () Bool)

(assert (=> b!5921533 m!6817318))

(assert (=> b!5921533 m!6817312))

(assert (=> b!5921533 m!6817318))

(assert (=> b!5921533 m!6817312))

(declare-fun m!6817320 () Bool)

(assert (=> b!5921533 m!6817320))

(declare-fun m!6817322 () Bool)

(assert (=> d!1856913 m!6817322))

(assert (=> d!1856913 m!6816790))

(assert (=> b!5921532 m!6817316))

(assert (=> bm!469534 m!6817322))

(assert (=> b!5921534 m!6817312))

(assert (=> b!5921534 m!6817312))

(assert (=> b!5921534 m!6817314))

(assert (=> b!5921526 m!6817316))

(assert (=> b!5921535 m!6816858))

(assert (=> b!5920752 d!1856913))

(assert (=> b!5920752 d!1856759))

(declare-fun d!1856915 () Bool)

(assert (=> d!1856915 (= (isEmpty!35946 (unfocusZipperList!1392 zl!343)) ((_ is Nil!64088) (unfocusZipperList!1392 zl!343)))))

(assert (=> b!5921087 d!1856915))

(declare-fun b!5921537 () Bool)

(declare-fun e!3625133 () (InoxSet Context!10710))

(declare-fun e!3625135 () (InoxSet Context!10710))

(assert (=> b!5921537 (= e!3625133 e!3625135)))

(declare-fun c!1052454 () Bool)

(assert (=> b!5921537 (= c!1052454 ((_ is Union!15971) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))

(declare-fun bm!469535 () Bool)

(declare-fun call!469540 () (InoxSet Context!10710))

(declare-fun call!469545 () (InoxSet Context!10710))

(assert (=> bm!469535 (= call!469540 call!469545)))

(declare-fun b!5921538 () Bool)

(assert (=> b!5921538 (= e!3625133 (store ((as const (Array Context!10710 Bool)) false) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) true))))

(declare-fun b!5921539 () Bool)

(declare-fun c!1052451 () Bool)

(assert (=> b!5921539 (= c!1052451 ((_ is Star!15971) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))

(declare-fun e!3625132 () (InoxSet Context!10710))

(declare-fun e!3625134 () (InoxSet Context!10710))

(assert (=> b!5921539 (= e!3625132 e!3625134)))

(declare-fun c!1052455 () Bool)

(declare-fun d!1856917 () Bool)

(assert (=> d!1856917 (= c!1052455 (and ((_ is ElementMatch!15971) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (= (c!1052179 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (h!70538 s!2326))))))

(assert (=> d!1856917 (= (derivationStepZipperDown!1221 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (h!70538 s!2326)) e!3625133)))

(declare-fun b!5921540 () Bool)

(declare-fun c!1052453 () Bool)

(declare-fun e!3625130 () Bool)

(assert (=> b!5921540 (= c!1052453 e!3625130)))

(declare-fun res!2482204 () Bool)

(assert (=> b!5921540 (=> (not res!2482204) (not e!3625130))))

(assert (=> b!5921540 (= res!2482204 ((_ is Concat!24816) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))

(declare-fun e!3625131 () (InoxSet Context!10710))

(assert (=> b!5921540 (= e!3625135 e!3625131)))

(declare-fun call!469543 () List!64212)

(declare-fun c!1052452 () Bool)

(declare-fun bm!469536 () Bool)

(assert (=> bm!469536 (= call!469543 ($colon$colon!1858 (exprs!5855 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453))) (ite (or c!1052453 c!1052452) (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))

(declare-fun bm!469537 () Bool)

(declare-fun call!469544 () List!64212)

(assert (=> bm!469537 (= call!469544 call!469543)))

(declare-fun b!5921541 () Bool)

(assert (=> b!5921541 (= e!3625134 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5921542 () Bool)

(assert (=> b!5921542 (= e!3625131 e!3625132)))

(assert (=> b!5921542 (= c!1052452 ((_ is Concat!24816) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))

(declare-fun b!5921543 () Bool)

(declare-fun call!469541 () (InoxSet Context!10710))

(assert (=> b!5921543 (= e!3625131 ((_ map or) call!469541 call!469545))))

(declare-fun bm!469538 () Bool)

(assert (=> bm!469538 (= call!469541 (derivationStepZipperDown!1221 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052454 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469543)) (h!70538 s!2326)))))

(declare-fun b!5921544 () Bool)

(assert (=> b!5921544 (= e!3625132 call!469540)))

(declare-fun b!5921545 () Bool)

(declare-fun call!469542 () (InoxSet Context!10710))

(assert (=> b!5921545 (= e!3625135 ((_ map or) call!469542 call!469541))))

(declare-fun b!5921546 () Bool)

(assert (=> b!5921546 (= e!3625134 call!469540)))

(declare-fun bm!469539 () Bool)

(assert (=> bm!469539 (= call!469545 call!469542)))

(declare-fun b!5921547 () Bool)

(assert (=> b!5921547 (= e!3625130 (nullable!5966 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))

(declare-fun bm!469540 () Bool)

(assert (=> bm!469540 (= call!469542 (derivationStepZipperDown!1221 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))) (ite (or c!1052454 c!1052453) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469544)) (h!70538 s!2326)))))

(assert (= (and d!1856917 c!1052455) b!5921538))

(assert (= (and d!1856917 (not c!1052455)) b!5921537))

(assert (= (and b!5921537 c!1052454) b!5921545))

(assert (= (and b!5921537 (not c!1052454)) b!5921540))

(assert (= (and b!5921540 res!2482204) b!5921547))

(assert (= (and b!5921540 c!1052453) b!5921543))

(assert (= (and b!5921540 (not c!1052453)) b!5921542))

(assert (= (and b!5921542 c!1052452) b!5921544))

(assert (= (and b!5921542 (not c!1052452)) b!5921539))

(assert (= (and b!5921539 c!1052451) b!5921546))

(assert (= (and b!5921539 (not c!1052451)) b!5921541))

(assert (= (or b!5921544 b!5921546) bm!469537))

(assert (= (or b!5921544 b!5921546) bm!469535))

(assert (= (or b!5921543 bm!469537) bm!469536))

(assert (= (or b!5921543 bm!469535) bm!469539))

(assert (= (or b!5921545 b!5921543) bm!469538))

(assert (= (or b!5921545 bm!469539) bm!469540))

(declare-fun m!6817324 () Bool)

(assert (=> bm!469540 m!6817324))

(declare-fun m!6817326 () Bool)

(assert (=> bm!469538 m!6817326))

(declare-fun m!6817328 () Bool)

(assert (=> b!5921538 m!6817328))

(declare-fun m!6817330 () Bool)

(assert (=> b!5921547 m!6817330))

(declare-fun m!6817332 () Bool)

(assert (=> bm!469536 m!6817332))

(assert (=> bm!469448 d!1856917))

(declare-fun b!5921548 () Bool)

(declare-fun e!3625137 () Bool)

(declare-fun lt!2310050 () Bool)

(declare-fun call!469546 () Bool)

(assert (=> b!5921548 (= e!3625137 (= lt!2310050 call!469546))))

(declare-fun b!5921549 () Bool)

(declare-fun res!2482212 () Bool)

(declare-fun e!3625139 () Bool)

(assert (=> b!5921549 (=> res!2482212 e!3625139)))

(assert (=> b!5921549 (= res!2482212 (not ((_ is ElementMatch!15971) (regTwo!32454 r!7292))))))

(declare-fun e!3625142 () Bool)

(assert (=> b!5921549 (= e!3625142 e!3625139)))

(declare-fun b!5921550 () Bool)

(declare-fun e!3625141 () Bool)

(declare-fun e!3625136 () Bool)

(assert (=> b!5921550 (= e!3625141 e!3625136)))

(declare-fun res!2482211 () Bool)

(assert (=> b!5921550 (=> res!2482211 e!3625136)))

(assert (=> b!5921550 (= res!2482211 call!469546)))

(declare-fun bm!469541 () Bool)

(assert (=> bm!469541 (= call!469546 (isEmpty!35950 s!2326))))

(declare-fun b!5921551 () Bool)

(assert (=> b!5921551 (= e!3625136 (not (= (head!12484 s!2326) (c!1052179 (regTwo!32454 r!7292)))))))

(declare-fun b!5921553 () Bool)

(assert (=> b!5921553 (= e!3625137 e!3625142)))

(declare-fun c!1052457 () Bool)

(assert (=> b!5921553 (= c!1052457 ((_ is EmptyLang!15971) (regTwo!32454 r!7292)))))

(declare-fun b!5921554 () Bool)

(declare-fun res!2482209 () Bool)

(assert (=> b!5921554 (=> res!2482209 e!3625139)))

(declare-fun e!3625138 () Bool)

(assert (=> b!5921554 (= res!2482209 e!3625138)))

(declare-fun res!2482208 () Bool)

(assert (=> b!5921554 (=> (not res!2482208) (not e!3625138))))

(assert (=> b!5921554 (= res!2482208 lt!2310050)))

(declare-fun b!5921555 () Bool)

(assert (=> b!5921555 (= e!3625142 (not lt!2310050))))

(declare-fun b!5921556 () Bool)

(declare-fun res!2482207 () Bool)

(assert (=> b!5921556 (=> (not res!2482207) (not e!3625138))))

(assert (=> b!5921556 (= res!2482207 (isEmpty!35950 (tail!11569 s!2326)))))

(declare-fun b!5921557 () Bool)

(assert (=> b!5921557 (= e!3625138 (= (head!12484 s!2326) (c!1052179 (regTwo!32454 r!7292))))))

(declare-fun b!5921558 () Bool)

(declare-fun e!3625140 () Bool)

(assert (=> b!5921558 (= e!3625140 (matchR!8154 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326)) (tail!11569 s!2326)))))

(declare-fun b!5921559 () Bool)

(declare-fun res!2482206 () Bool)

(assert (=> b!5921559 (=> res!2482206 e!3625136)))

(assert (=> b!5921559 (= res!2482206 (not (isEmpty!35950 (tail!11569 s!2326))))))

(declare-fun b!5921552 () Bool)

(declare-fun res!2482205 () Bool)

(assert (=> b!5921552 (=> (not res!2482205) (not e!3625138))))

(assert (=> b!5921552 (= res!2482205 (not call!469546))))

(declare-fun d!1856919 () Bool)

(assert (=> d!1856919 e!3625137))

(declare-fun c!1052456 () Bool)

(assert (=> d!1856919 (= c!1052456 ((_ is EmptyExpr!15971) (regTwo!32454 r!7292)))))

(assert (=> d!1856919 (= lt!2310050 e!3625140)))

(declare-fun c!1052458 () Bool)

(assert (=> d!1856919 (= c!1052458 (isEmpty!35950 s!2326))))

(assert (=> d!1856919 (validRegex!7707 (regTwo!32454 r!7292))))

(assert (=> d!1856919 (= (matchR!8154 (regTwo!32454 r!7292) s!2326) lt!2310050)))

(declare-fun b!5921560 () Bool)

(assert (=> b!5921560 (= e!3625140 (nullable!5966 (regTwo!32454 r!7292)))))

(declare-fun b!5921561 () Bool)

(assert (=> b!5921561 (= e!3625139 e!3625141)))

(declare-fun res!2482210 () Bool)

(assert (=> b!5921561 (=> (not res!2482210) (not e!3625141))))

(assert (=> b!5921561 (= res!2482210 (not lt!2310050))))

(assert (= (and d!1856919 c!1052458) b!5921560))

(assert (= (and d!1856919 (not c!1052458)) b!5921558))

(assert (= (and d!1856919 c!1052456) b!5921548))

(assert (= (and d!1856919 (not c!1052456)) b!5921553))

(assert (= (and b!5921553 c!1052457) b!5921555))

(assert (= (and b!5921553 (not c!1052457)) b!5921549))

(assert (= (and b!5921549 (not res!2482212)) b!5921554))

(assert (= (and b!5921554 res!2482208) b!5921552))

(assert (= (and b!5921552 res!2482205) b!5921556))

(assert (= (and b!5921556 res!2482207) b!5921557))

(assert (= (and b!5921554 (not res!2482209)) b!5921561))

(assert (= (and b!5921561 res!2482210) b!5921550))

(assert (= (and b!5921550 (not res!2482211)) b!5921559))

(assert (= (and b!5921559 (not res!2482206)) b!5921551))

(assert (= (or b!5921548 b!5921550 b!5921552) bm!469541))

(assert (=> b!5921556 m!6816878))

(assert (=> b!5921556 m!6816878))

(assert (=> b!5921556 m!6816880))

(assert (=> b!5921558 m!6816882))

(assert (=> b!5921558 m!6816882))

(declare-fun m!6817334 () Bool)

(assert (=> b!5921558 m!6817334))

(assert (=> b!5921558 m!6816878))

(assert (=> b!5921558 m!6817334))

(assert (=> b!5921558 m!6816878))

(declare-fun m!6817336 () Bool)

(assert (=> b!5921558 m!6817336))

(assert (=> d!1856919 m!6816874))

(assert (=> d!1856919 m!6816958))

(assert (=> b!5921557 m!6816882))

(assert (=> bm!469541 m!6816874))

(assert (=> b!5921559 m!6816878))

(assert (=> b!5921559 m!6816878))

(assert (=> b!5921559 m!6816880))

(assert (=> b!5921551 m!6816882))

(assert (=> b!5921560 m!6816960))

(assert (=> b!5920756 d!1856919))

(assert (=> b!5920754 d!1856843))

(assert (=> b!5921021 d!1856871))

(declare-fun d!1856921 () Bool)

(assert (=> d!1856921 (= (isConcat!922 lt!2309966) ((_ is Concat!24816) lt!2309966))))

(assert (=> b!5920553 d!1856921))

(declare-fun b!5921566 () Bool)

(declare-fun e!3625148 () (InoxSet Context!10710))

(declare-fun e!3625150 () (InoxSet Context!10710))

(assert (=> b!5921566 (= e!3625148 e!3625150)))

(declare-fun c!1052462 () Bool)

(assert (=> b!5921566 (= c!1052462 ((_ is Union!15971) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))

(declare-fun bm!469542 () Bool)

(declare-fun call!469547 () (InoxSet Context!10710))

(declare-fun call!469552 () (InoxSet Context!10710))

(assert (=> bm!469542 (= call!469547 call!469552)))

(declare-fun b!5921567 () Bool)

(assert (=> b!5921567 (= e!3625148 (store ((as const (Array Context!10710 Bool)) false) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) true))))

(declare-fun c!1052459 () Bool)

(declare-fun b!5921568 () Bool)

(assert (=> b!5921568 (= c!1052459 ((_ is Star!15971) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))

(declare-fun e!3625147 () (InoxSet Context!10710))

(declare-fun e!3625149 () (InoxSet Context!10710))

(assert (=> b!5921568 (= e!3625147 e!3625149)))

(declare-fun c!1052463 () Bool)

(declare-fun d!1856923 () Bool)

(assert (=> d!1856923 (= c!1052463 (and ((_ is ElementMatch!15971) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (= (c!1052179 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (h!70538 s!2326))))))

(assert (=> d!1856923 (= (derivationStepZipperDown!1221 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (h!70538 s!2326)) e!3625148)))

(declare-fun b!5921569 () Bool)

(declare-fun c!1052461 () Bool)

(declare-fun e!3625145 () Bool)

(assert (=> b!5921569 (= c!1052461 e!3625145)))

(declare-fun res!2482217 () Bool)

(assert (=> b!5921569 (=> (not res!2482217) (not e!3625145))))

(assert (=> b!5921569 (= res!2482217 ((_ is Concat!24816) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))

(declare-fun e!3625146 () (InoxSet Context!10710))

(assert (=> b!5921569 (= e!3625150 e!3625146)))

(declare-fun c!1052460 () Bool)

(declare-fun bm!469543 () Bool)

(declare-fun call!469550 () List!64212)

(assert (=> bm!469543 (= call!469550 ($colon$colon!1858 (exprs!5855 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454))) (ite (or c!1052461 c!1052460) (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))

(declare-fun bm!469544 () Bool)

(declare-fun call!469551 () List!64212)

(assert (=> bm!469544 (= call!469551 call!469550)))

(declare-fun b!5921570 () Bool)

(assert (=> b!5921570 (= e!3625149 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5921571 () Bool)

(assert (=> b!5921571 (= e!3625146 e!3625147)))

(assert (=> b!5921571 (= c!1052460 ((_ is Concat!24816) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))

(declare-fun b!5921572 () Bool)

(declare-fun call!469548 () (InoxSet Context!10710))

(assert (=> b!5921572 (= e!3625146 ((_ map or) call!469548 call!469552))))

(declare-fun bm!469545 () Bool)

(assert (=> bm!469545 (= call!469548 (derivationStepZipperDown!1221 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))) (ite c!1052462 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469550)) (h!70538 s!2326)))))

(declare-fun b!5921573 () Bool)

(assert (=> b!5921573 (= e!3625147 call!469547)))

(declare-fun b!5921574 () Bool)

(declare-fun call!469549 () (InoxSet Context!10710))

(assert (=> b!5921574 (= e!3625150 ((_ map or) call!469549 call!469548))))

(declare-fun b!5921575 () Bool)

(assert (=> b!5921575 (= e!3625149 call!469547)))

(declare-fun bm!469546 () Bool)

(assert (=> bm!469546 (= call!469552 call!469549)))

(declare-fun b!5921576 () Bool)

(assert (=> b!5921576 (= e!3625145 (nullable!5966 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))

(declare-fun bm!469547 () Bool)

(assert (=> bm!469547 (= call!469549 (derivationStepZipperDown!1221 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))) (ite (or c!1052462 c!1052461) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469551)) (h!70538 s!2326)))))

(assert (= (and d!1856923 c!1052463) b!5921567))

(assert (= (and d!1856923 (not c!1052463)) b!5921566))

(assert (= (and b!5921566 c!1052462) b!5921574))

(assert (= (and b!5921566 (not c!1052462)) b!5921569))

(assert (= (and b!5921569 res!2482217) b!5921576))

(assert (= (and b!5921569 c!1052461) b!5921572))

(assert (= (and b!5921569 (not c!1052461)) b!5921571))

(assert (= (and b!5921571 c!1052460) b!5921573))

(assert (= (and b!5921571 (not c!1052460)) b!5921568))

(assert (= (and b!5921568 c!1052459) b!5921575))

(assert (= (and b!5921568 (not c!1052459)) b!5921570))

(assert (= (or b!5921573 b!5921575) bm!469544))

(assert (= (or b!5921573 b!5921575) bm!469542))

(assert (= (or b!5921572 bm!469544) bm!469543))

(assert (= (or b!5921572 bm!469542) bm!469546))

(assert (= (or b!5921574 b!5921572) bm!469545))

(assert (= (or b!5921574 bm!469546) bm!469547))

(declare-fun m!6817338 () Bool)

(assert (=> bm!469547 m!6817338))

(declare-fun m!6817340 () Bool)

(assert (=> bm!469545 m!6817340))

(declare-fun m!6817342 () Bool)

(assert (=> b!5921567 m!6817342))

(declare-fun m!6817344 () Bool)

(assert (=> b!5921576 m!6817344))

(declare-fun m!6817346 () Bool)

(assert (=> bm!469543 m!6817346))

(assert (=> bm!469450 d!1856923))

(declare-fun d!1856925 () Bool)

(assert (=> d!1856925 (= (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (nullableFct!1937 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun bs!1401535 () Bool)

(assert (= bs!1401535 d!1856925))

(declare-fun m!6817348 () Bool)

(assert (=> bs!1401535 m!6817348))

(assert (=> b!5920943 d!1856925))

(assert (=> bm!469457 d!1856785))

(assert (=> d!1856727 d!1856785))

(assert (=> d!1856727 d!1856731))

(declare-fun d!1856927 () Bool)

(assert (=> d!1856927 (= (head!12482 (exprs!5855 (h!70537 zl!343))) (h!70536 (exprs!5855 (h!70537 zl!343))))))

(assert (=> b!5920559 d!1856927))

(declare-fun d!1856929 () Bool)

(declare-fun res!2482222 () Bool)

(declare-fun e!3625156 () Bool)

(assert (=> d!1856929 (=> res!2482222 e!3625156)))

(assert (=> d!1856929 (= res!2482222 ((_ is ElementMatch!15971) lt!2310018))))

(assert (=> d!1856929 (= (validRegex!7707 lt!2310018) e!3625156)))

(declare-fun b!5921577 () Bool)

(declare-fun e!3625157 () Bool)

(declare-fun e!3625155 () Bool)

(assert (=> b!5921577 (= e!3625157 e!3625155)))

(declare-fun res!2482219 () Bool)

(assert (=> b!5921577 (= res!2482219 (not (nullable!5966 (reg!16300 lt!2310018))))))

(assert (=> b!5921577 (=> (not res!2482219) (not e!3625155))))

(declare-fun bm!469548 () Bool)

(declare-fun call!469555 () Bool)

(declare-fun c!1052464 () Bool)

(assert (=> bm!469548 (= call!469555 (validRegex!7707 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))))))

(declare-fun b!5921578 () Bool)

(declare-fun res!2482221 () Bool)

(declare-fun e!3625152 () Bool)

(assert (=> b!5921578 (=> res!2482221 e!3625152)))

(assert (=> b!5921578 (= res!2482221 (not ((_ is Concat!24816) lt!2310018)))))

(declare-fun e!3625151 () Bool)

(assert (=> b!5921578 (= e!3625151 e!3625152)))

(declare-fun b!5921579 () Bool)

(declare-fun res!2482218 () Bool)

(declare-fun e!3625153 () Bool)

(assert (=> b!5921579 (=> (not res!2482218) (not e!3625153))))

(declare-fun call!469554 () Bool)

(assert (=> b!5921579 (= res!2482218 call!469554)))

(assert (=> b!5921579 (= e!3625151 e!3625153)))

(declare-fun bm!469549 () Bool)

(declare-fun call!469553 () Bool)

(assert (=> bm!469549 (= call!469554 call!469553)))

(declare-fun b!5921580 () Bool)

(assert (=> b!5921580 (= e!3625155 call!469553)))

(declare-fun b!5921581 () Bool)

(declare-fun e!3625154 () Bool)

(assert (=> b!5921581 (= e!3625154 call!469555)))

(declare-fun b!5921582 () Bool)

(assert (=> b!5921582 (= e!3625152 e!3625154)))

(declare-fun res!2482220 () Bool)

(assert (=> b!5921582 (=> (not res!2482220) (not e!3625154))))

(assert (=> b!5921582 (= res!2482220 call!469554)))

(declare-fun b!5921583 () Bool)

(assert (=> b!5921583 (= e!3625157 e!3625151)))

(assert (=> b!5921583 (= c!1052464 ((_ is Union!15971) lt!2310018))))

(declare-fun b!5921584 () Bool)

(assert (=> b!5921584 (= e!3625153 call!469555)))

(declare-fun bm!469550 () Bool)

(declare-fun c!1052465 () Bool)

(assert (=> bm!469550 (= call!469553 (validRegex!7707 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))))))

(declare-fun b!5921585 () Bool)

(assert (=> b!5921585 (= e!3625156 e!3625157)))

(assert (=> b!5921585 (= c!1052465 ((_ is Star!15971) lt!2310018))))

(assert (= (and d!1856929 (not res!2482222)) b!5921585))

(assert (= (and b!5921585 c!1052465) b!5921577))

(assert (= (and b!5921585 (not c!1052465)) b!5921583))

(assert (= (and b!5921577 res!2482219) b!5921580))

(assert (= (and b!5921583 c!1052464) b!5921579))

(assert (= (and b!5921583 (not c!1052464)) b!5921578))

(assert (= (and b!5921579 res!2482218) b!5921584))

(assert (= (and b!5921578 (not res!2482221)) b!5921582))

(assert (= (and b!5921582 res!2482220) b!5921581))

(assert (= (or b!5921584 b!5921581) bm!469548))

(assert (= (or b!5921579 b!5921582) bm!469549))

(assert (= (or b!5921580 bm!469549) bm!469550))

(declare-fun m!6817350 () Bool)

(assert (=> b!5921577 m!6817350))

(declare-fun m!6817352 () Bool)

(assert (=> bm!469548 m!6817352))

(declare-fun m!6817354 () Bool)

(assert (=> bm!469550 m!6817354))

(assert (=> d!1856733 d!1856929))

(declare-fun d!1856931 () Bool)

(declare-fun res!2482223 () Bool)

(declare-fun e!3625158 () Bool)

(assert (=> d!1856931 (=> res!2482223 e!3625158)))

(assert (=> d!1856931 (= res!2482223 ((_ is Nil!64088) (unfocusZipperList!1392 zl!343)))))

(assert (=> d!1856931 (= (forall!15054 (unfocusZipperList!1392 zl!343) lambda!323011) e!3625158)))

(declare-fun b!5921586 () Bool)

(declare-fun e!3625159 () Bool)

(assert (=> b!5921586 (= e!3625158 e!3625159)))

(declare-fun res!2482224 () Bool)

(assert (=> b!5921586 (=> (not res!2482224) (not e!3625159))))

(assert (=> b!5921586 (= res!2482224 (dynLambda!25057 lambda!323011 (h!70536 (unfocusZipperList!1392 zl!343))))))

(declare-fun b!5921587 () Bool)

(assert (=> b!5921587 (= e!3625159 (forall!15054 (t!377603 (unfocusZipperList!1392 zl!343)) lambda!323011))))

(assert (= (and d!1856931 (not res!2482223)) b!5921586))

(assert (= (and b!5921586 res!2482224) b!5921587))

(declare-fun b_lambda!222403 () Bool)

(assert (=> (not b_lambda!222403) (not b!5921586)))

(declare-fun m!6817356 () Bool)

(assert (=> b!5921586 m!6817356))

(declare-fun m!6817358 () Bool)

(assert (=> b!5921587 m!6817358))

(assert (=> d!1856733 d!1856931))

(assert (=> b!5921027 d!1856871))

(declare-fun bs!1401540 () Bool)

(declare-fun b!5921592 () Bool)

(assert (= bs!1401540 (and b!5921592 b!5921260)))

(declare-fun lambda!323036 () Int)

(assert (=> bs!1401540 (not (= lambda!323036 lambda!323023))))

(declare-fun bs!1401541 () Bool)

(assert (= bs!1401541 (and b!5921592 d!1856709)))

(assert (=> bs!1401541 (not (= lambda!323036 lambda!323000))))

(declare-fun bs!1401543 () Bool)

(assert (= bs!1401543 (and b!5921592 b!5920469)))

(assert (=> bs!1401543 (not (= lambda!323036 lambda!322949))))

(declare-fun bs!1401545 () Bool)

(assert (= bs!1401545 (and b!5921592 b!5920983)))

(assert (=> bs!1401545 (= (and (= (reg!16300 (regTwo!32455 r!7292)) (reg!16300 r!7292)) (= (regTwo!32455 r!7292) r!7292)) (= lambda!323036 lambda!323007))))

(declare-fun bs!1401547 () Bool)

(assert (= bs!1401547 (and b!5921592 d!1856701)))

(assert (=> bs!1401547 (not (= lambda!323036 lambda!322996))))

(declare-fun bs!1401548 () Bool)

(assert (= bs!1401548 (and b!5921592 d!1856825)))

(assert (=> bs!1401548 (not (= lambda!323036 lambda!323027))))

(declare-fun bs!1401549 () Bool)

(assert (= bs!1401549 (and b!5921592 d!1856775)))

(assert (=> bs!1401549 (not (= lambda!323036 lambda!323020))))

(assert (=> bs!1401549 (not (= lambda!323036 lambda!323019))))

(assert (=> bs!1401547 (not (= lambda!323036 lambda!322997))))

(declare-fun bs!1401551 () Bool)

(assert (= bs!1401551 (and b!5921592 b!5920984)))

(assert (=> bs!1401551 (not (= lambda!323036 lambda!323008))))

(declare-fun bs!1401552 () Bool)

(assert (= bs!1401552 (and b!5921592 b!5921259)))

(assert (=> bs!1401552 (= (and (= (reg!16300 (regTwo!32455 r!7292)) (reg!16300 (regOne!32455 r!7292))) (= (regTwo!32455 r!7292) (regOne!32455 r!7292))) (= lambda!323036 lambda!323022))))

(assert (=> bs!1401543 (not (= lambda!323036 lambda!322948))))

(assert (=> b!5921592 true))

(assert (=> b!5921592 true))

(declare-fun bs!1401553 () Bool)

(declare-fun b!5921593 () Bool)

(assert (= bs!1401553 (and b!5921593 b!5921260)))

(declare-fun lambda!323037 () Int)

(assert (=> bs!1401553 (= (and (= (regOne!32454 (regTwo!32455 r!7292)) (regOne!32454 (regOne!32455 r!7292))) (= (regTwo!32454 (regTwo!32455 r!7292)) (regTwo!32454 (regOne!32455 r!7292)))) (= lambda!323037 lambda!323023))))

(declare-fun bs!1401554 () Bool)

(assert (= bs!1401554 (and b!5921593 d!1856709)))

(assert (=> bs!1401554 (not (= lambda!323037 lambda!323000))))

(declare-fun bs!1401555 () Bool)

(assert (= bs!1401555 (and b!5921593 b!5920469)))

(assert (=> bs!1401555 (= (and (= (regOne!32454 (regTwo!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323037 lambda!322949))))

(declare-fun bs!1401556 () Bool)

(assert (= bs!1401556 (and b!5921593 b!5920983)))

(assert (=> bs!1401556 (not (= lambda!323037 lambda!323007))))

(declare-fun bs!1401557 () Bool)

(assert (= bs!1401557 (and b!5921593 d!1856701)))

(assert (=> bs!1401557 (not (= lambda!323037 lambda!322996))))

(declare-fun bs!1401558 () Bool)

(assert (= bs!1401558 (and b!5921593 d!1856825)))

(assert (=> bs!1401558 (not (= lambda!323037 lambda!323027))))

(declare-fun bs!1401559 () Bool)

(assert (= bs!1401559 (and b!5921593 d!1856775)))

(assert (=> bs!1401559 (= (and (= (regOne!32454 (regTwo!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323037 lambda!323020))))

(assert (=> bs!1401557 (= (and (= (regOne!32454 (regTwo!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323037 lambda!322997))))

(declare-fun bs!1401560 () Bool)

(assert (= bs!1401560 (and b!5921593 b!5920984)))

(assert (=> bs!1401560 (= (and (= (regOne!32454 (regTwo!32455 r!7292)) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 r!7292)) (regTwo!32454 r!7292))) (= lambda!323037 lambda!323008))))

(declare-fun bs!1401561 () Bool)

(assert (= bs!1401561 (and b!5921593 b!5921259)))

(assert (=> bs!1401561 (not (= lambda!323037 lambda!323022))))

(assert (=> bs!1401555 (not (= lambda!323037 lambda!322948))))

(declare-fun bs!1401562 () Bool)

(assert (= bs!1401562 (and b!5921593 b!5921592)))

(assert (=> bs!1401562 (not (= lambda!323037 lambda!323036))))

(assert (=> bs!1401559 (not (= lambda!323037 lambda!323019))))

(assert (=> b!5921593 true))

(assert (=> b!5921593 true))

(declare-fun b!5921588 () Bool)

(declare-fun e!3625161 () Bool)

(declare-fun e!3625160 () Bool)

(assert (=> b!5921588 (= e!3625161 e!3625160)))

(declare-fun c!1052469 () Bool)

(assert (=> b!5921588 (= c!1052469 ((_ is Star!15971) (regTwo!32455 r!7292)))))

(declare-fun b!5921589 () Bool)

(declare-fun e!3625162 () Bool)

(declare-fun e!3625165 () Bool)

(assert (=> b!5921589 (= e!3625162 e!3625165)))

(declare-fun res!2482227 () Bool)

(assert (=> b!5921589 (= res!2482227 (not ((_ is EmptyLang!15971) (regTwo!32455 r!7292))))))

(assert (=> b!5921589 (=> (not res!2482227) (not e!3625165))))

(declare-fun b!5921590 () Bool)

(declare-fun e!3625164 () Bool)

(assert (=> b!5921590 (= e!3625164 (= s!2326 (Cons!64090 (c!1052179 (regTwo!32455 r!7292)) Nil!64090)))))

(declare-fun b!5921591 () Bool)

(declare-fun call!469556 () Bool)

(assert (=> b!5921591 (= e!3625162 call!469556)))

(declare-fun e!3625166 () Bool)

(declare-fun call!469557 () Bool)

(assert (=> b!5921592 (= e!3625166 call!469557)))

(declare-fun bm!469551 () Bool)

(assert (=> bm!469551 (= call!469557 (Exists!3041 (ite c!1052469 lambda!323036 lambda!323037)))))

(assert (=> b!5921593 (= e!3625160 call!469557)))

(declare-fun b!5921594 () Bool)

(declare-fun e!3625163 () Bool)

(assert (=> b!5921594 (= e!3625161 e!3625163)))

(declare-fun res!2482226 () Bool)

(assert (=> b!5921594 (= res!2482226 (matchRSpec!3072 (regOne!32455 (regTwo!32455 r!7292)) s!2326))))

(assert (=> b!5921594 (=> res!2482226 e!3625163)))

(declare-fun b!5921595 () Bool)

(declare-fun res!2482225 () Bool)

(assert (=> b!5921595 (=> res!2482225 e!3625166)))

(assert (=> b!5921595 (= res!2482225 call!469556)))

(assert (=> b!5921595 (= e!3625160 e!3625166)))

(declare-fun b!5921596 () Bool)

(declare-fun c!1052468 () Bool)

(assert (=> b!5921596 (= c!1052468 ((_ is Union!15971) (regTwo!32455 r!7292)))))

(assert (=> b!5921596 (= e!3625164 e!3625161)))

(declare-fun d!1856933 () Bool)

(declare-fun c!1052466 () Bool)

(assert (=> d!1856933 (= c!1052466 ((_ is EmptyExpr!15971) (regTwo!32455 r!7292)))))

(assert (=> d!1856933 (= (matchRSpec!3072 (regTwo!32455 r!7292) s!2326) e!3625162)))

(declare-fun bm!469552 () Bool)

(assert (=> bm!469552 (= call!469556 (isEmpty!35950 s!2326))))

(declare-fun b!5921597 () Bool)

(declare-fun c!1052467 () Bool)

(assert (=> b!5921597 (= c!1052467 ((_ is ElementMatch!15971) (regTwo!32455 r!7292)))))

(assert (=> b!5921597 (= e!3625165 e!3625164)))

(declare-fun b!5921598 () Bool)

(assert (=> b!5921598 (= e!3625163 (matchRSpec!3072 (regTwo!32455 (regTwo!32455 r!7292)) s!2326))))

(assert (= (and d!1856933 c!1052466) b!5921591))

(assert (= (and d!1856933 (not c!1052466)) b!5921589))

(assert (= (and b!5921589 res!2482227) b!5921597))

(assert (= (and b!5921597 c!1052467) b!5921590))

(assert (= (and b!5921597 (not c!1052467)) b!5921596))

(assert (= (and b!5921596 c!1052468) b!5921594))

(assert (= (and b!5921596 (not c!1052468)) b!5921588))

(assert (= (and b!5921594 (not res!2482226)) b!5921598))

(assert (= (and b!5921588 c!1052469) b!5921595))

(assert (= (and b!5921588 (not c!1052469)) b!5921593))

(assert (= (and b!5921595 (not res!2482225)) b!5921592))

(assert (= (or b!5921592 b!5921593) bm!469551))

(assert (= (or b!5921591 b!5921595) bm!469552))

(declare-fun m!6817374 () Bool)

(assert (=> bm!469551 m!6817374))

(declare-fun m!6817376 () Bool)

(assert (=> b!5921594 m!6817376))

(assert (=> bm!469552 m!6816874))

(declare-fun m!6817378 () Bool)

(assert (=> b!5921598 m!6817378))

(assert (=> b!5920989 d!1856933))

(declare-fun d!1856941 () Bool)

(assert (=> d!1856941 (= (isEmpty!35946 (tail!11567 (exprs!5855 (h!70537 zl!343)))) ((_ is Nil!64088) (tail!11567 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> b!5920557 d!1856941))

(declare-fun d!1856945 () Bool)

(assert (=> d!1856945 (= (tail!11567 (exprs!5855 (h!70537 zl!343))) (t!377603 (exprs!5855 (h!70537 zl!343))))))

(assert (=> b!5920557 d!1856945))

(assert (=> b!5921029 d!1856849))

(assert (=> b!5921029 d!1856851))

(declare-fun d!1856947 () Bool)

(assert (=> d!1856947 (= (nullable!5966 (reg!16300 r!7292)) (nullableFct!1937 (reg!16300 r!7292)))))

(declare-fun bs!1401563 () Bool)

(assert (= bs!1401563 d!1856947))

(declare-fun m!6817382 () Bool)

(assert (=> bs!1401563 m!6817382))

(assert (=> b!5921050 d!1856947))

(declare-fun d!1856949 () Bool)

(assert (=> d!1856949 (= (isEmpty!35946 (exprs!5855 (h!70537 zl!343))) ((_ is Nil!64088) (exprs!5855 (h!70537 zl!343))))))

(assert (=> b!5920561 d!1856949))

(declare-fun bs!1401564 () Bool)

(declare-fun d!1856951 () Bool)

(assert (= bs!1401564 (and d!1856951 d!1856735)))

(declare-fun lambda!323038 () Int)

(assert (=> bs!1401564 (= lambda!323038 lambda!323014)))

(declare-fun bs!1401565 () Bool)

(assert (= bs!1401565 (and d!1856951 d!1856717)))

(assert (=> bs!1401565 (= lambda!323038 lambda!323001)))

(declare-fun bs!1401566 () Bool)

(assert (= bs!1401566 (and d!1856951 d!1856903)))

(assert (=> bs!1401566 (= lambda!323038 lambda!323032)))

(declare-fun bs!1401567 () Bool)

(assert (= bs!1401567 (and d!1856951 d!1856873)))

(assert (=> bs!1401567 (= lambda!323038 lambda!323029)))

(declare-fun bs!1401568 () Bool)

(assert (= bs!1401568 (and d!1856951 d!1856887)))

(assert (=> bs!1401568 (= lambda!323038 lambda!323031)))

(declare-fun bs!1401569 () Bool)

(assert (= bs!1401569 (and d!1856951 d!1856675)))

(assert (=> bs!1401569 (= lambda!323038 lambda!322975)))

(declare-fun bs!1401570 () Bool)

(assert (= bs!1401570 (and d!1856951 d!1856817)))

(assert (=> bs!1401570 (= lambda!323038 lambda!323024)))

(declare-fun bs!1401572 () Bool)

(assert (= bs!1401572 (and d!1856951 d!1856641)))

(assert (=> bs!1401572 (= lambda!323038 lambda!322963)))

(declare-fun bs!1401573 () Bool)

(assert (= bs!1401573 (and d!1856951 d!1856733)))

(assert (=> bs!1401573 (= lambda!323038 lambda!323011)))

(declare-fun bs!1401574 () Bool)

(assert (= bs!1401574 (and d!1856951 d!1856723)))

(assert (=> bs!1401574 (= lambda!323038 lambda!323002)))

(assert (=> d!1856951 (= (inv!83174 (h!70537 (t!377604 zl!343))) (forall!15054 (exprs!5855 (h!70537 (t!377604 zl!343))) lambda!323038))))

(declare-fun bs!1401576 () Bool)

(assert (= bs!1401576 d!1856951))

(declare-fun m!6817384 () Bool)

(assert (=> bs!1401576 m!6817384))

(assert (=> b!5921139 d!1856951))

(declare-fun d!1856953 () Bool)

(declare-fun res!2482238 () Bool)

(declare-fun e!3625187 () Bool)

(assert (=> d!1856953 (=> res!2482238 e!3625187)))

(assert (=> d!1856953 (= res!2482238 ((_ is ElementMatch!15971) lt!2309966))))

(assert (=> d!1856953 (= (validRegex!7707 lt!2309966) e!3625187)))

(declare-fun b!5921623 () Bool)

(declare-fun e!3625188 () Bool)

(declare-fun e!3625186 () Bool)

(assert (=> b!5921623 (= e!3625188 e!3625186)))

(declare-fun res!2482235 () Bool)

(assert (=> b!5921623 (= res!2482235 (not (nullable!5966 (reg!16300 lt!2309966))))))

(assert (=> b!5921623 (=> (not res!2482235) (not e!3625186))))

(declare-fun bm!469561 () Bool)

(declare-fun call!469568 () Bool)

(declare-fun c!1052479 () Bool)

(assert (=> bm!469561 (= call!469568 (validRegex!7707 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))))))

(declare-fun b!5921624 () Bool)

(declare-fun res!2482237 () Bool)

(declare-fun e!3625183 () Bool)

(assert (=> b!5921624 (=> res!2482237 e!3625183)))

(assert (=> b!5921624 (= res!2482237 (not ((_ is Concat!24816) lt!2309966)))))

(declare-fun e!3625182 () Bool)

(assert (=> b!5921624 (= e!3625182 e!3625183)))

(declare-fun b!5921625 () Bool)

(declare-fun res!2482234 () Bool)

(declare-fun e!3625184 () Bool)

(assert (=> b!5921625 (=> (not res!2482234) (not e!3625184))))

(declare-fun call!469567 () Bool)

(assert (=> b!5921625 (= res!2482234 call!469567)))

(assert (=> b!5921625 (= e!3625182 e!3625184)))

(declare-fun bm!469562 () Bool)

(declare-fun call!469566 () Bool)

(assert (=> bm!469562 (= call!469567 call!469566)))

(declare-fun b!5921626 () Bool)

(assert (=> b!5921626 (= e!3625186 call!469566)))

(declare-fun b!5921627 () Bool)

(declare-fun e!3625185 () Bool)

(assert (=> b!5921627 (= e!3625185 call!469568)))

(declare-fun b!5921628 () Bool)

(assert (=> b!5921628 (= e!3625183 e!3625185)))

(declare-fun res!2482236 () Bool)

(assert (=> b!5921628 (=> (not res!2482236) (not e!3625185))))

(assert (=> b!5921628 (= res!2482236 call!469567)))

(declare-fun b!5921629 () Bool)

(assert (=> b!5921629 (= e!3625188 e!3625182)))

(assert (=> b!5921629 (= c!1052479 ((_ is Union!15971) lt!2309966))))

(declare-fun b!5921630 () Bool)

(assert (=> b!5921630 (= e!3625184 call!469568)))

(declare-fun c!1052480 () Bool)

(declare-fun bm!469563 () Bool)

(assert (=> bm!469563 (= call!469566 (validRegex!7707 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))))))

(declare-fun b!5921631 () Bool)

(assert (=> b!5921631 (= e!3625187 e!3625188)))

(assert (=> b!5921631 (= c!1052480 ((_ is Star!15971) lt!2309966))))

(assert (= (and d!1856953 (not res!2482238)) b!5921631))

(assert (= (and b!5921631 c!1052480) b!5921623))

(assert (= (and b!5921631 (not c!1052480)) b!5921629))

(assert (= (and b!5921623 res!2482235) b!5921626))

(assert (= (and b!5921629 c!1052479) b!5921625))

(assert (= (and b!5921629 (not c!1052479)) b!5921624))

(assert (= (and b!5921625 res!2482234) b!5921630))

(assert (= (and b!5921624 (not res!2482237)) b!5921628))

(assert (= (and b!5921628 res!2482236) b!5921627))

(assert (= (or b!5921630 b!5921627) bm!469561))

(assert (= (or b!5921625 b!5921628) bm!469562))

(assert (= (or b!5921626 bm!469562) bm!469563))

(declare-fun m!6817386 () Bool)

(assert (=> b!5921623 m!6817386))

(declare-fun m!6817388 () Bool)

(assert (=> bm!469561 m!6817388))

(declare-fun m!6817390 () Bool)

(assert (=> bm!469563 m!6817390))

(assert (=> d!1856641 d!1856953))

(declare-fun d!1856955 () Bool)

(declare-fun res!2482239 () Bool)

(declare-fun e!3625189 () Bool)

(assert (=> d!1856955 (=> res!2482239 e!3625189)))

(assert (=> d!1856955 (= res!2482239 ((_ is Nil!64088) (exprs!5855 (h!70537 zl!343))))))

(assert (=> d!1856955 (= (forall!15054 (exprs!5855 (h!70537 zl!343)) lambda!322963) e!3625189)))

(declare-fun b!5921632 () Bool)

(declare-fun e!3625190 () Bool)

(assert (=> b!5921632 (= e!3625189 e!3625190)))

(declare-fun res!2482240 () Bool)

(assert (=> b!5921632 (=> (not res!2482240) (not e!3625190))))

(assert (=> b!5921632 (= res!2482240 (dynLambda!25057 lambda!322963 (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5921633 () Bool)

(assert (=> b!5921633 (= e!3625190 (forall!15054 (t!377603 (exprs!5855 (h!70537 zl!343))) lambda!322963))))

(assert (= (and d!1856955 (not res!2482239)) b!5921632))

(assert (= (and b!5921632 res!2482240) b!5921633))

(declare-fun b_lambda!222407 () Bool)

(assert (=> (not b_lambda!222407) (not b!5921632)))

(declare-fun m!6817392 () Bool)

(assert (=> b!5921632 m!6817392))

(declare-fun m!6817394 () Bool)

(assert (=> b!5921633 m!6817394))

(assert (=> d!1856641 d!1856955))

(declare-fun d!1856957 () Bool)

(assert (=> d!1856957 (= (isEmpty!35949 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326)) (not ((_ is Some!15861) (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) Nil!64090 s!2326 s!2326))))))

(assert (=> d!1856707 d!1856957))

(declare-fun d!1856959 () Bool)

(assert (=> d!1856959 (= (head!12482 (unfocusZipperList!1392 zl!343)) (h!70536 (unfocusZipperList!1392 zl!343)))))

(assert (=> b!5921080 d!1856959))

(declare-fun e!3625191 () Bool)

(assert (=> b!5921118 (= tp!1645866 e!3625191)))

(declare-fun b!5921635 () Bool)

(declare-fun tp!1645920 () Bool)

(declare-fun tp!1645921 () Bool)

(assert (=> b!5921635 (= e!3625191 (and tp!1645920 tp!1645921))))

(declare-fun b!5921636 () Bool)

(declare-fun tp!1645919 () Bool)

(assert (=> b!5921636 (= e!3625191 tp!1645919)))

(declare-fun b!5921634 () Bool)

(assert (=> b!5921634 (= e!3625191 tp_is_empty!41195)))

(declare-fun b!5921637 () Bool)

(declare-fun tp!1645917 () Bool)

(declare-fun tp!1645918 () Bool)

(assert (=> b!5921637 (= e!3625191 (and tp!1645917 tp!1645918))))

(assert (= (and b!5921118 ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (h!70537 zl!343))))) b!5921634))

(assert (= (and b!5921118 ((_ is Concat!24816) (h!70536 (exprs!5855 (h!70537 zl!343))))) b!5921635))

(assert (= (and b!5921118 ((_ is Star!15971) (h!70536 (exprs!5855 (h!70537 zl!343))))) b!5921636))

(assert (= (and b!5921118 ((_ is Union!15971) (h!70536 (exprs!5855 (h!70537 zl!343))))) b!5921637))

(declare-fun b!5921638 () Bool)

(declare-fun e!3625192 () Bool)

(declare-fun tp!1645922 () Bool)

(declare-fun tp!1645923 () Bool)

(assert (=> b!5921638 (= e!3625192 (and tp!1645922 tp!1645923))))

(assert (=> b!5921118 (= tp!1645867 e!3625192)))

(assert (= (and b!5921118 ((_ is Cons!64088) (t!377603 (exprs!5855 (h!70537 zl!343))))) b!5921638))

(declare-fun condSetEmpty!40189 () Bool)

(assert (=> setNonEmpty!40182 (= condSetEmpty!40189 (= setRest!40182 ((as const (Array Context!10710 Bool)) false)))))

(declare-fun setRes!40189 () Bool)

(assert (=> setNonEmpty!40182 (= tp!1645861 setRes!40189)))

(declare-fun setIsEmpty!40189 () Bool)

(assert (=> setIsEmpty!40189 setRes!40189))

(declare-fun tp!1645925 () Bool)

(declare-fun e!3625193 () Bool)

(declare-fun setElem!40189 () Context!10710)

(declare-fun setNonEmpty!40189 () Bool)

(assert (=> setNonEmpty!40189 (= setRes!40189 (and tp!1645925 (inv!83174 setElem!40189) e!3625193))))

(declare-fun setRest!40189 () (InoxSet Context!10710))

(assert (=> setNonEmpty!40189 (= setRest!40182 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) setElem!40189 true) setRest!40189))))

(declare-fun b!5921639 () Bool)

(declare-fun tp!1645924 () Bool)

(assert (=> b!5921639 (= e!3625193 tp!1645924)))

(assert (= (and setNonEmpty!40182 condSetEmpty!40189) setIsEmpty!40189))

(assert (= (and setNonEmpty!40182 (not condSetEmpty!40189)) setNonEmpty!40189))

(assert (= setNonEmpty!40189 b!5921639))

(declare-fun m!6817396 () Bool)

(assert (=> setNonEmpty!40189 m!6817396))

(declare-fun b!5921640 () Bool)

(declare-fun e!3625194 () Bool)

(declare-fun tp!1645926 () Bool)

(declare-fun tp!1645927 () Bool)

(assert (=> b!5921640 (= e!3625194 (and tp!1645926 tp!1645927))))

(assert (=> b!5921113 (= tp!1645860 e!3625194)))

(assert (= (and b!5921113 ((_ is Cons!64088) (exprs!5855 setElem!40182))) b!5921640))

(declare-fun e!3625195 () Bool)

(assert (=> b!5921106 (= tp!1645854 e!3625195)))

(declare-fun b!5921642 () Bool)

(declare-fun tp!1645931 () Bool)

(declare-fun tp!1645932 () Bool)

(assert (=> b!5921642 (= e!3625195 (and tp!1645931 tp!1645932))))

(declare-fun b!5921643 () Bool)

(declare-fun tp!1645930 () Bool)

(assert (=> b!5921643 (= e!3625195 tp!1645930)))

(declare-fun b!5921641 () Bool)

(assert (=> b!5921641 (= e!3625195 tp_is_empty!41195)))

(declare-fun b!5921644 () Bool)

(declare-fun tp!1645928 () Bool)

(declare-fun tp!1645929 () Bool)

(assert (=> b!5921644 (= e!3625195 (and tp!1645928 tp!1645929))))

(assert (= (and b!5921106 ((_ is ElementMatch!15971) (regOne!32454 (reg!16300 r!7292)))) b!5921641))

(assert (= (and b!5921106 ((_ is Concat!24816) (regOne!32454 (reg!16300 r!7292)))) b!5921642))

(assert (= (and b!5921106 ((_ is Star!15971) (regOne!32454 (reg!16300 r!7292)))) b!5921643))

(assert (= (and b!5921106 ((_ is Union!15971) (regOne!32454 (reg!16300 r!7292)))) b!5921644))

(declare-fun e!3625196 () Bool)

(assert (=> b!5921106 (= tp!1645855 e!3625196)))

(declare-fun b!5921646 () Bool)

(declare-fun tp!1645936 () Bool)

(declare-fun tp!1645937 () Bool)

(assert (=> b!5921646 (= e!3625196 (and tp!1645936 tp!1645937))))

(declare-fun b!5921647 () Bool)

(declare-fun tp!1645935 () Bool)

(assert (=> b!5921647 (= e!3625196 tp!1645935)))

(declare-fun b!5921645 () Bool)

(assert (=> b!5921645 (= e!3625196 tp_is_empty!41195)))

(declare-fun b!5921648 () Bool)

(declare-fun tp!1645933 () Bool)

(declare-fun tp!1645934 () Bool)

(assert (=> b!5921648 (= e!3625196 (and tp!1645933 tp!1645934))))

(assert (= (and b!5921106 ((_ is ElementMatch!15971) (regTwo!32454 (reg!16300 r!7292)))) b!5921645))

(assert (= (and b!5921106 ((_ is Concat!24816) (regTwo!32454 (reg!16300 r!7292)))) b!5921646))

(assert (= (and b!5921106 ((_ is Star!15971) (regTwo!32454 (reg!16300 r!7292)))) b!5921647))

(assert (= (and b!5921106 ((_ is Union!15971) (regTwo!32454 (reg!16300 r!7292)))) b!5921648))

(declare-fun e!3625197 () Bool)

(assert (=> b!5921126 (= tp!1645876 e!3625197)))

(declare-fun b!5921650 () Bool)

(declare-fun tp!1645941 () Bool)

(declare-fun tp!1645942 () Bool)

(assert (=> b!5921650 (= e!3625197 (and tp!1645941 tp!1645942))))

(declare-fun b!5921651 () Bool)

(declare-fun tp!1645940 () Bool)

(assert (=> b!5921651 (= e!3625197 tp!1645940)))

(declare-fun b!5921649 () Bool)

(assert (=> b!5921649 (= e!3625197 tp_is_empty!41195)))

(declare-fun b!5921652 () Bool)

(declare-fun tp!1645938 () Bool)

(declare-fun tp!1645939 () Bool)

(assert (=> b!5921652 (= e!3625197 (and tp!1645938 tp!1645939))))

(assert (= (and b!5921126 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32454 r!7292)))) b!5921649))

(assert (= (and b!5921126 ((_ is Concat!24816) (regOne!32454 (regOne!32454 r!7292)))) b!5921650))

(assert (= (and b!5921126 ((_ is Star!15971) (regOne!32454 (regOne!32454 r!7292)))) b!5921651))

(assert (= (and b!5921126 ((_ is Union!15971) (regOne!32454 (regOne!32454 r!7292)))) b!5921652))

(declare-fun e!3625198 () Bool)

(assert (=> b!5921126 (= tp!1645877 e!3625198)))

(declare-fun b!5921654 () Bool)

(declare-fun tp!1645946 () Bool)

(declare-fun tp!1645947 () Bool)

(assert (=> b!5921654 (= e!3625198 (and tp!1645946 tp!1645947))))

(declare-fun b!5921655 () Bool)

(declare-fun tp!1645945 () Bool)

(assert (=> b!5921655 (= e!3625198 tp!1645945)))

(declare-fun b!5921653 () Bool)

(assert (=> b!5921653 (= e!3625198 tp_is_empty!41195)))

(declare-fun b!5921656 () Bool)

(declare-fun tp!1645943 () Bool)

(declare-fun tp!1645944 () Bool)

(assert (=> b!5921656 (= e!3625198 (and tp!1645943 tp!1645944))))

(assert (= (and b!5921126 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32454 r!7292)))) b!5921653))

(assert (= (and b!5921126 ((_ is Concat!24816) (regTwo!32454 (regOne!32454 r!7292)))) b!5921654))

(assert (= (and b!5921126 ((_ is Star!15971) (regTwo!32454 (regOne!32454 r!7292)))) b!5921655))

(assert (= (and b!5921126 ((_ is Union!15971) (regTwo!32454 (regOne!32454 r!7292)))) b!5921656))

(declare-fun e!3625201 () Bool)

(assert (=> b!5921128 (= tp!1645873 e!3625201)))

(declare-fun b!5921660 () Bool)

(declare-fun tp!1645951 () Bool)

(declare-fun tp!1645952 () Bool)

(assert (=> b!5921660 (= e!3625201 (and tp!1645951 tp!1645952))))

(declare-fun b!5921661 () Bool)

(declare-fun tp!1645950 () Bool)

(assert (=> b!5921661 (= e!3625201 tp!1645950)))

(declare-fun b!5921659 () Bool)

(assert (=> b!5921659 (= e!3625201 tp_is_empty!41195)))

(declare-fun b!5921662 () Bool)

(declare-fun tp!1645948 () Bool)

(declare-fun tp!1645949 () Bool)

(assert (=> b!5921662 (= e!3625201 (and tp!1645948 tp!1645949))))

(assert (= (and b!5921128 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32454 r!7292)))) b!5921659))

(assert (= (and b!5921128 ((_ is Concat!24816) (regOne!32455 (regOne!32454 r!7292)))) b!5921660))

(assert (= (and b!5921128 ((_ is Star!15971) (regOne!32455 (regOne!32454 r!7292)))) b!5921661))

(assert (= (and b!5921128 ((_ is Union!15971) (regOne!32455 (regOne!32454 r!7292)))) b!5921662))

(declare-fun e!3625202 () Bool)

(assert (=> b!5921128 (= tp!1645874 e!3625202)))

(declare-fun b!5921664 () Bool)

(declare-fun tp!1645956 () Bool)

(declare-fun tp!1645957 () Bool)

(assert (=> b!5921664 (= e!3625202 (and tp!1645956 tp!1645957))))

(declare-fun b!5921665 () Bool)

(declare-fun tp!1645955 () Bool)

(assert (=> b!5921665 (= e!3625202 tp!1645955)))

(declare-fun b!5921663 () Bool)

(assert (=> b!5921663 (= e!3625202 tp_is_empty!41195)))

(declare-fun b!5921666 () Bool)

(declare-fun tp!1645953 () Bool)

(declare-fun tp!1645954 () Bool)

(assert (=> b!5921666 (= e!3625202 (and tp!1645953 tp!1645954))))

(assert (= (and b!5921128 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32454 r!7292)))) b!5921663))

(assert (= (and b!5921128 ((_ is Concat!24816) (regTwo!32455 (regOne!32454 r!7292)))) b!5921664))

(assert (= (and b!5921128 ((_ is Star!15971) (regTwo!32455 (regOne!32454 r!7292)))) b!5921665))

(assert (= (and b!5921128 ((_ is Union!15971) (regTwo!32455 (regOne!32454 r!7292)))) b!5921666))

(declare-fun e!3625205 () Bool)

(assert (=> b!5921127 (= tp!1645875 e!3625205)))

(declare-fun b!5921670 () Bool)

(declare-fun tp!1645961 () Bool)

(declare-fun tp!1645962 () Bool)

(assert (=> b!5921670 (= e!3625205 (and tp!1645961 tp!1645962))))

(declare-fun b!5921671 () Bool)

(declare-fun tp!1645960 () Bool)

(assert (=> b!5921671 (= e!3625205 tp!1645960)))

(declare-fun b!5921669 () Bool)

(assert (=> b!5921669 (= e!3625205 tp_is_empty!41195)))

(declare-fun b!5921672 () Bool)

(declare-fun tp!1645958 () Bool)

(declare-fun tp!1645959 () Bool)

(assert (=> b!5921672 (= e!3625205 (and tp!1645958 tp!1645959))))

(assert (= (and b!5921127 ((_ is ElementMatch!15971) (reg!16300 (regOne!32454 r!7292)))) b!5921669))

(assert (= (and b!5921127 ((_ is Concat!24816) (reg!16300 (regOne!32454 r!7292)))) b!5921670))

(assert (= (and b!5921127 ((_ is Star!15971) (reg!16300 (regOne!32454 r!7292)))) b!5921671))

(assert (= (and b!5921127 ((_ is Union!15971) (reg!16300 (regOne!32454 r!7292)))) b!5921672))

(declare-fun e!3625206 () Bool)

(assert (=> b!5921107 (= tp!1645853 e!3625206)))

(declare-fun b!5921674 () Bool)

(declare-fun tp!1645966 () Bool)

(declare-fun tp!1645967 () Bool)

(assert (=> b!5921674 (= e!3625206 (and tp!1645966 tp!1645967))))

(declare-fun b!5921675 () Bool)

(declare-fun tp!1645965 () Bool)

(assert (=> b!5921675 (= e!3625206 tp!1645965)))

(declare-fun b!5921673 () Bool)

(assert (=> b!5921673 (= e!3625206 tp_is_empty!41195)))

(declare-fun b!5921676 () Bool)

(declare-fun tp!1645963 () Bool)

(declare-fun tp!1645964 () Bool)

(assert (=> b!5921676 (= e!3625206 (and tp!1645963 tp!1645964))))

(assert (= (and b!5921107 ((_ is ElementMatch!15971) (reg!16300 (reg!16300 r!7292)))) b!5921673))

(assert (= (and b!5921107 ((_ is Concat!24816) (reg!16300 (reg!16300 r!7292)))) b!5921674))

(assert (= (and b!5921107 ((_ is Star!15971) (reg!16300 (reg!16300 r!7292)))) b!5921675))

(assert (= (and b!5921107 ((_ is Union!15971) (reg!16300 (reg!16300 r!7292)))) b!5921676))

(declare-fun e!3625207 () Bool)

(assert (=> b!5921142 (= tp!1645892 e!3625207)))

(declare-fun b!5921678 () Bool)

(declare-fun tp!1645971 () Bool)

(declare-fun tp!1645972 () Bool)

(assert (=> b!5921678 (= e!3625207 (and tp!1645971 tp!1645972))))

(declare-fun b!5921679 () Bool)

(declare-fun tp!1645970 () Bool)

(assert (=> b!5921679 (= e!3625207 tp!1645970)))

(declare-fun b!5921677 () Bool)

(assert (=> b!5921677 (= e!3625207 tp_is_empty!41195)))

(declare-fun b!5921680 () Bool)

(declare-fun tp!1645968 () Bool)

(declare-fun tp!1645969 () Bool)

(assert (=> b!5921680 (= e!3625207 (and tp!1645968 tp!1645969))))

(assert (= (and b!5921142 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32455 r!7292)))) b!5921677))

(assert (= (and b!5921142 ((_ is Concat!24816) (regOne!32454 (regOne!32455 r!7292)))) b!5921678))

(assert (= (and b!5921142 ((_ is Star!15971) (regOne!32454 (regOne!32455 r!7292)))) b!5921679))

(assert (= (and b!5921142 ((_ is Union!15971) (regOne!32454 (regOne!32455 r!7292)))) b!5921680))

(declare-fun e!3625214 () Bool)

(assert (=> b!5921142 (= tp!1645893 e!3625214)))

(declare-fun b!5921693 () Bool)

(declare-fun tp!1645976 () Bool)

(declare-fun tp!1645977 () Bool)

(assert (=> b!5921693 (= e!3625214 (and tp!1645976 tp!1645977))))

(declare-fun b!5921694 () Bool)

(declare-fun tp!1645975 () Bool)

(assert (=> b!5921694 (= e!3625214 tp!1645975)))

(declare-fun b!5921692 () Bool)

(assert (=> b!5921692 (= e!3625214 tp_is_empty!41195)))

(declare-fun b!5921695 () Bool)

(declare-fun tp!1645973 () Bool)

(declare-fun tp!1645974 () Bool)

(assert (=> b!5921695 (= e!3625214 (and tp!1645973 tp!1645974))))

(assert (= (and b!5921142 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32455 r!7292)))) b!5921692))

(assert (= (and b!5921142 ((_ is Concat!24816) (regTwo!32454 (regOne!32455 r!7292)))) b!5921693))

(assert (= (and b!5921142 ((_ is Star!15971) (regTwo!32454 (regOne!32455 r!7292)))) b!5921694))

(assert (= (and b!5921142 ((_ is Union!15971) (regTwo!32454 (regOne!32455 r!7292)))) b!5921695))

(declare-fun e!3625215 () Bool)

(assert (=> b!5921108 (= tp!1645851 e!3625215)))

(declare-fun b!5921697 () Bool)

(declare-fun tp!1645981 () Bool)

(declare-fun tp!1645982 () Bool)

(assert (=> b!5921697 (= e!3625215 (and tp!1645981 tp!1645982))))

(declare-fun b!5921698 () Bool)

(declare-fun tp!1645980 () Bool)

(assert (=> b!5921698 (= e!3625215 tp!1645980)))

(declare-fun b!5921696 () Bool)

(assert (=> b!5921696 (= e!3625215 tp_is_empty!41195)))

(declare-fun b!5921699 () Bool)

(declare-fun tp!1645978 () Bool)

(declare-fun tp!1645979 () Bool)

(assert (=> b!5921699 (= e!3625215 (and tp!1645978 tp!1645979))))

(assert (= (and b!5921108 ((_ is ElementMatch!15971) (regOne!32455 (reg!16300 r!7292)))) b!5921696))

(assert (= (and b!5921108 ((_ is Concat!24816) (regOne!32455 (reg!16300 r!7292)))) b!5921697))

(assert (= (and b!5921108 ((_ is Star!15971) (regOne!32455 (reg!16300 r!7292)))) b!5921698))

(assert (= (and b!5921108 ((_ is Union!15971) (regOne!32455 (reg!16300 r!7292)))) b!5921699))

(declare-fun e!3625216 () Bool)

(assert (=> b!5921108 (= tp!1645852 e!3625216)))

(declare-fun b!5921701 () Bool)

(declare-fun tp!1645986 () Bool)

(declare-fun tp!1645987 () Bool)

(assert (=> b!5921701 (= e!3625216 (and tp!1645986 tp!1645987))))

(declare-fun b!5921702 () Bool)

(declare-fun tp!1645985 () Bool)

(assert (=> b!5921702 (= e!3625216 tp!1645985)))

(declare-fun b!5921700 () Bool)

(assert (=> b!5921700 (= e!3625216 tp_is_empty!41195)))

(declare-fun b!5921703 () Bool)

(declare-fun tp!1645983 () Bool)

(declare-fun tp!1645984 () Bool)

(assert (=> b!5921703 (= e!3625216 (and tp!1645983 tp!1645984))))

(assert (= (and b!5921108 ((_ is ElementMatch!15971) (regTwo!32455 (reg!16300 r!7292)))) b!5921700))

(assert (= (and b!5921108 ((_ is Concat!24816) (regTwo!32455 (reg!16300 r!7292)))) b!5921701))

(assert (= (and b!5921108 ((_ is Star!15971) (regTwo!32455 (reg!16300 r!7292)))) b!5921702))

(assert (= (and b!5921108 ((_ is Union!15971) (regTwo!32455 (reg!16300 r!7292)))) b!5921703))

(declare-fun e!3625217 () Bool)

(assert (=> b!5921143 (= tp!1645891 e!3625217)))

(declare-fun b!5921705 () Bool)

(declare-fun tp!1645991 () Bool)

(declare-fun tp!1645992 () Bool)

(assert (=> b!5921705 (= e!3625217 (and tp!1645991 tp!1645992))))

(declare-fun b!5921706 () Bool)

(declare-fun tp!1645990 () Bool)

(assert (=> b!5921706 (= e!3625217 tp!1645990)))

(declare-fun b!5921704 () Bool)

(assert (=> b!5921704 (= e!3625217 tp_is_empty!41195)))

(declare-fun b!5921707 () Bool)

(declare-fun tp!1645988 () Bool)

(declare-fun tp!1645989 () Bool)

(assert (=> b!5921707 (= e!3625217 (and tp!1645988 tp!1645989))))

(assert (= (and b!5921143 ((_ is ElementMatch!15971) (reg!16300 (regOne!32455 r!7292)))) b!5921704))

(assert (= (and b!5921143 ((_ is Concat!24816) (reg!16300 (regOne!32455 r!7292)))) b!5921705))

(assert (= (and b!5921143 ((_ is Star!15971) (reg!16300 (regOne!32455 r!7292)))) b!5921706))

(assert (= (and b!5921143 ((_ is Union!15971) (reg!16300 (regOne!32455 r!7292)))) b!5921707))

(declare-fun e!3625218 () Bool)

(assert (=> b!5921144 (= tp!1645889 e!3625218)))

(declare-fun b!5921709 () Bool)

(declare-fun tp!1645996 () Bool)

(declare-fun tp!1645997 () Bool)

(assert (=> b!5921709 (= e!3625218 (and tp!1645996 tp!1645997))))

(declare-fun b!5921710 () Bool)

(declare-fun tp!1645995 () Bool)

(assert (=> b!5921710 (= e!3625218 tp!1645995)))

(declare-fun b!5921708 () Bool)

(assert (=> b!5921708 (= e!3625218 tp_is_empty!41195)))

(declare-fun b!5921711 () Bool)

(declare-fun tp!1645993 () Bool)

(declare-fun tp!1645994 () Bool)

(assert (=> b!5921711 (= e!3625218 (and tp!1645993 tp!1645994))))

(assert (= (and b!5921144 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32455 r!7292)))) b!5921708))

(assert (= (and b!5921144 ((_ is Concat!24816) (regOne!32455 (regOne!32455 r!7292)))) b!5921709))

(assert (= (and b!5921144 ((_ is Star!15971) (regOne!32455 (regOne!32455 r!7292)))) b!5921710))

(assert (= (and b!5921144 ((_ is Union!15971) (regOne!32455 (regOne!32455 r!7292)))) b!5921711))

(declare-fun e!3625219 () Bool)

(assert (=> b!5921144 (= tp!1645890 e!3625219)))

(declare-fun b!5921713 () Bool)

(declare-fun tp!1646001 () Bool)

(declare-fun tp!1646002 () Bool)

(assert (=> b!5921713 (= e!3625219 (and tp!1646001 tp!1646002))))

(declare-fun b!5921714 () Bool)

(declare-fun tp!1646000 () Bool)

(assert (=> b!5921714 (= e!3625219 tp!1646000)))

(declare-fun b!5921712 () Bool)

(assert (=> b!5921712 (= e!3625219 tp_is_empty!41195)))

(declare-fun b!5921715 () Bool)

(declare-fun tp!1645998 () Bool)

(declare-fun tp!1645999 () Bool)

(assert (=> b!5921715 (= e!3625219 (and tp!1645998 tp!1645999))))

(assert (= (and b!5921144 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32455 r!7292)))) b!5921712))

(assert (= (and b!5921144 ((_ is Concat!24816) (regTwo!32455 (regOne!32455 r!7292)))) b!5921713))

(assert (= (and b!5921144 ((_ is Star!15971) (regTwo!32455 (regOne!32455 r!7292)))) b!5921714))

(assert (= (and b!5921144 ((_ is Union!15971) (regTwo!32455 (regOne!32455 r!7292)))) b!5921715))

(declare-fun e!3625220 () Bool)

(assert (=> b!5921130 (= tp!1645881 e!3625220)))

(declare-fun b!5921717 () Bool)

(declare-fun tp!1646006 () Bool)

(declare-fun tp!1646007 () Bool)

(assert (=> b!5921717 (= e!3625220 (and tp!1646006 tp!1646007))))

(declare-fun b!5921718 () Bool)

(declare-fun tp!1646005 () Bool)

(assert (=> b!5921718 (= e!3625220 tp!1646005)))

(declare-fun b!5921716 () Bool)

(assert (=> b!5921716 (= e!3625220 tp_is_empty!41195)))

(declare-fun b!5921719 () Bool)

(declare-fun tp!1646003 () Bool)

(declare-fun tp!1646004 () Bool)

(assert (=> b!5921719 (= e!3625220 (and tp!1646003 tp!1646004))))

(assert (= (and b!5921130 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32454 r!7292)))) b!5921716))

(assert (= (and b!5921130 ((_ is Concat!24816) (regOne!32454 (regTwo!32454 r!7292)))) b!5921717))

(assert (= (and b!5921130 ((_ is Star!15971) (regOne!32454 (regTwo!32454 r!7292)))) b!5921718))

(assert (= (and b!5921130 ((_ is Union!15971) (regOne!32454 (regTwo!32454 r!7292)))) b!5921719))

(declare-fun e!3625221 () Bool)

(assert (=> b!5921130 (= tp!1645882 e!3625221)))

(declare-fun b!5921721 () Bool)

(declare-fun tp!1646011 () Bool)

(declare-fun tp!1646012 () Bool)

(assert (=> b!5921721 (= e!3625221 (and tp!1646011 tp!1646012))))

(declare-fun b!5921722 () Bool)

(declare-fun tp!1646010 () Bool)

(assert (=> b!5921722 (= e!3625221 tp!1646010)))

(declare-fun b!5921720 () Bool)

(assert (=> b!5921720 (= e!3625221 tp_is_empty!41195)))

(declare-fun b!5921723 () Bool)

(declare-fun tp!1646008 () Bool)

(declare-fun tp!1646009 () Bool)

(assert (=> b!5921723 (= e!3625221 (and tp!1646008 tp!1646009))))

(assert (= (and b!5921130 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32454 r!7292)))) b!5921720))

(assert (= (and b!5921130 ((_ is Concat!24816) (regTwo!32454 (regTwo!32454 r!7292)))) b!5921721))

(assert (= (and b!5921130 ((_ is Star!15971) (regTwo!32454 (regTwo!32454 r!7292)))) b!5921722))

(assert (= (and b!5921130 ((_ is Union!15971) (regTwo!32454 (regTwo!32454 r!7292)))) b!5921723))

(declare-fun b!5921735 () Bool)

(declare-fun e!3625228 () Bool)

(declare-fun tp!1646013 () Bool)

(assert (=> b!5921735 (= e!3625228 (and tp_is_empty!41195 tp!1646013))))

(assert (=> b!5921123 (= tp!1645870 e!3625228)))

(assert (= (and b!5921123 ((_ is Cons!64090) (t!377605 (t!377605 s!2326)))) b!5921735))

(declare-fun e!3625229 () Bool)

(assert (=> b!5921131 (= tp!1645880 e!3625229)))

(declare-fun b!5921737 () Bool)

(declare-fun tp!1646017 () Bool)

(declare-fun tp!1646018 () Bool)

(assert (=> b!5921737 (= e!3625229 (and tp!1646017 tp!1646018))))

(declare-fun b!5921738 () Bool)

(declare-fun tp!1646016 () Bool)

(assert (=> b!5921738 (= e!3625229 tp!1646016)))

(declare-fun b!5921736 () Bool)

(assert (=> b!5921736 (= e!3625229 tp_is_empty!41195)))

(declare-fun b!5921739 () Bool)

(declare-fun tp!1646014 () Bool)

(declare-fun tp!1646015 () Bool)

(assert (=> b!5921739 (= e!3625229 (and tp!1646014 tp!1646015))))

(assert (= (and b!5921131 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32454 r!7292)))) b!5921736))

(assert (= (and b!5921131 ((_ is Concat!24816) (reg!16300 (regTwo!32454 r!7292)))) b!5921737))

(assert (= (and b!5921131 ((_ is Star!15971) (reg!16300 (regTwo!32454 r!7292)))) b!5921738))

(assert (= (and b!5921131 ((_ is Union!15971) (reg!16300 (regTwo!32454 r!7292)))) b!5921739))

(declare-fun e!3625230 () Bool)

(assert (=> b!5921132 (= tp!1645878 e!3625230)))

(declare-fun b!5921741 () Bool)

(declare-fun tp!1646022 () Bool)

(declare-fun tp!1646023 () Bool)

(assert (=> b!5921741 (= e!3625230 (and tp!1646022 tp!1646023))))

(declare-fun b!5921742 () Bool)

(declare-fun tp!1646021 () Bool)

(assert (=> b!5921742 (= e!3625230 tp!1646021)))

(declare-fun b!5921740 () Bool)

(assert (=> b!5921740 (= e!3625230 tp_is_empty!41195)))

(declare-fun b!5921743 () Bool)

(declare-fun tp!1646019 () Bool)

(declare-fun tp!1646020 () Bool)

(assert (=> b!5921743 (= e!3625230 (and tp!1646019 tp!1646020))))

(assert (= (and b!5921132 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32454 r!7292)))) b!5921740))

(assert (= (and b!5921132 ((_ is Concat!24816) (regOne!32455 (regTwo!32454 r!7292)))) b!5921741))

(assert (= (and b!5921132 ((_ is Star!15971) (regOne!32455 (regTwo!32454 r!7292)))) b!5921742))

(assert (= (and b!5921132 ((_ is Union!15971) (regOne!32455 (regTwo!32454 r!7292)))) b!5921743))

(declare-fun e!3625231 () Bool)

(assert (=> b!5921132 (= tp!1645879 e!3625231)))

(declare-fun b!5921745 () Bool)

(declare-fun tp!1646027 () Bool)

(declare-fun tp!1646028 () Bool)

(assert (=> b!5921745 (= e!3625231 (and tp!1646027 tp!1646028))))

(declare-fun b!5921746 () Bool)

(declare-fun tp!1646026 () Bool)

(assert (=> b!5921746 (= e!3625231 tp!1646026)))

(declare-fun b!5921744 () Bool)

(assert (=> b!5921744 (= e!3625231 tp_is_empty!41195)))

(declare-fun b!5921747 () Bool)

(declare-fun tp!1646024 () Bool)

(declare-fun tp!1646025 () Bool)

(assert (=> b!5921747 (= e!3625231 (and tp!1646024 tp!1646025))))

(assert (= (and b!5921132 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32454 r!7292)))) b!5921744))

(assert (= (and b!5921132 ((_ is Concat!24816) (regTwo!32455 (regTwo!32454 r!7292)))) b!5921745))

(assert (= (and b!5921132 ((_ is Star!15971) (regTwo!32455 (regTwo!32454 r!7292)))) b!5921746))

(assert (= (and b!5921132 ((_ is Union!15971) (regTwo!32455 (regTwo!32454 r!7292)))) b!5921747))

(declare-fun b!5921749 () Bool)

(declare-fun e!3625233 () Bool)

(declare-fun tp!1646029 () Bool)

(assert (=> b!5921749 (= e!3625233 tp!1646029)))

(declare-fun tp!1646030 () Bool)

(declare-fun b!5921748 () Bool)

(declare-fun e!3625232 () Bool)

(assert (=> b!5921748 (= e!3625232 (and (inv!83174 (h!70537 (t!377604 (t!377604 zl!343)))) e!3625233 tp!1646030))))

(assert (=> b!5921139 (= tp!1645888 e!3625232)))

(assert (= b!5921748 b!5921749))

(assert (= (and b!5921139 ((_ is Cons!64089) (t!377604 (t!377604 zl!343)))) b!5921748))

(declare-fun m!6817422 () Bool)

(assert (=> b!5921748 m!6817422))

(declare-fun e!3625234 () Bool)

(assert (=> b!5921124 (= tp!1645871 e!3625234)))

(declare-fun b!5921751 () Bool)

(declare-fun tp!1646034 () Bool)

(declare-fun tp!1646035 () Bool)

(assert (=> b!5921751 (= e!3625234 (and tp!1646034 tp!1646035))))

(declare-fun b!5921752 () Bool)

(declare-fun tp!1646033 () Bool)

(assert (=> b!5921752 (= e!3625234 tp!1646033)))

(declare-fun b!5921750 () Bool)

(assert (=> b!5921750 (= e!3625234 tp_is_empty!41195)))

(declare-fun b!5921753 () Bool)

(declare-fun tp!1646031 () Bool)

(declare-fun tp!1646032 () Bool)

(assert (=> b!5921753 (= e!3625234 (and tp!1646031 tp!1646032))))

(assert (= (and b!5921124 ((_ is ElementMatch!15971) (h!70536 (exprs!5855 setElem!40176)))) b!5921750))

(assert (= (and b!5921124 ((_ is Concat!24816) (h!70536 (exprs!5855 setElem!40176)))) b!5921751))

(assert (= (and b!5921124 ((_ is Star!15971) (h!70536 (exprs!5855 setElem!40176)))) b!5921752))

(assert (= (and b!5921124 ((_ is Union!15971) (h!70536 (exprs!5855 setElem!40176)))) b!5921753))

(declare-fun b!5921754 () Bool)

(declare-fun e!3625235 () Bool)

(declare-fun tp!1646036 () Bool)

(declare-fun tp!1646037 () Bool)

(assert (=> b!5921754 (= e!3625235 (and tp!1646036 tp!1646037))))

(assert (=> b!5921124 (= tp!1645872 e!3625235)))

(assert (= (and b!5921124 ((_ is Cons!64088) (t!377603 (exprs!5855 setElem!40176)))) b!5921754))

(declare-fun e!3625236 () Bool)

(assert (=> b!5921146 (= tp!1645897 e!3625236)))

(declare-fun b!5921756 () Bool)

(declare-fun tp!1646041 () Bool)

(declare-fun tp!1646042 () Bool)

(assert (=> b!5921756 (= e!3625236 (and tp!1646041 tp!1646042))))

(declare-fun b!5921757 () Bool)

(declare-fun tp!1646040 () Bool)

(assert (=> b!5921757 (= e!3625236 tp!1646040)))

(declare-fun b!5921755 () Bool)

(assert (=> b!5921755 (= e!3625236 tp_is_empty!41195)))

(declare-fun b!5921758 () Bool)

(declare-fun tp!1646038 () Bool)

(declare-fun tp!1646039 () Bool)

(assert (=> b!5921758 (= e!3625236 (and tp!1646038 tp!1646039))))

(assert (= (and b!5921146 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32455 r!7292)))) b!5921755))

(assert (= (and b!5921146 ((_ is Concat!24816) (regOne!32454 (regTwo!32455 r!7292)))) b!5921756))

(assert (= (and b!5921146 ((_ is Star!15971) (regOne!32454 (regTwo!32455 r!7292)))) b!5921757))

(assert (= (and b!5921146 ((_ is Union!15971) (regOne!32454 (regTwo!32455 r!7292)))) b!5921758))

(declare-fun e!3625237 () Bool)

(assert (=> b!5921146 (= tp!1645898 e!3625237)))

(declare-fun b!5921760 () Bool)

(declare-fun tp!1646046 () Bool)

(declare-fun tp!1646047 () Bool)

(assert (=> b!5921760 (= e!3625237 (and tp!1646046 tp!1646047))))

(declare-fun b!5921761 () Bool)

(declare-fun tp!1646045 () Bool)

(assert (=> b!5921761 (= e!3625237 tp!1646045)))

(declare-fun b!5921759 () Bool)

(assert (=> b!5921759 (= e!3625237 tp_is_empty!41195)))

(declare-fun b!5921762 () Bool)

(declare-fun tp!1646043 () Bool)

(declare-fun tp!1646044 () Bool)

(assert (=> b!5921762 (= e!3625237 (and tp!1646043 tp!1646044))))

(assert (= (and b!5921146 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32455 r!7292)))) b!5921759))

(assert (= (and b!5921146 ((_ is Concat!24816) (regTwo!32454 (regTwo!32455 r!7292)))) b!5921760))

(assert (= (and b!5921146 ((_ is Star!15971) (regTwo!32454 (regTwo!32455 r!7292)))) b!5921761))

(assert (= (and b!5921146 ((_ is Union!15971) (regTwo!32454 (regTwo!32455 r!7292)))) b!5921762))

(declare-fun e!3625238 () Bool)

(assert (=> b!5921148 (= tp!1645894 e!3625238)))

(declare-fun b!5921764 () Bool)

(declare-fun tp!1646051 () Bool)

(declare-fun tp!1646052 () Bool)

(assert (=> b!5921764 (= e!3625238 (and tp!1646051 tp!1646052))))

(declare-fun b!5921765 () Bool)

(declare-fun tp!1646050 () Bool)

(assert (=> b!5921765 (= e!3625238 tp!1646050)))

(declare-fun b!5921763 () Bool)

(assert (=> b!5921763 (= e!3625238 tp_is_empty!41195)))

(declare-fun b!5921766 () Bool)

(declare-fun tp!1646048 () Bool)

(declare-fun tp!1646049 () Bool)

(assert (=> b!5921766 (= e!3625238 (and tp!1646048 tp!1646049))))

(assert (= (and b!5921148 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32455 r!7292)))) b!5921763))

(assert (= (and b!5921148 ((_ is Concat!24816) (regOne!32455 (regTwo!32455 r!7292)))) b!5921764))

(assert (= (and b!5921148 ((_ is Star!15971) (regOne!32455 (regTwo!32455 r!7292)))) b!5921765))

(assert (= (and b!5921148 ((_ is Union!15971) (regOne!32455 (regTwo!32455 r!7292)))) b!5921766))

(declare-fun e!3625239 () Bool)

(assert (=> b!5921148 (= tp!1645895 e!3625239)))

(declare-fun b!5921768 () Bool)

(declare-fun tp!1646056 () Bool)

(declare-fun tp!1646057 () Bool)

(assert (=> b!5921768 (= e!3625239 (and tp!1646056 tp!1646057))))

(declare-fun b!5921769 () Bool)

(declare-fun tp!1646055 () Bool)

(assert (=> b!5921769 (= e!3625239 tp!1646055)))

(declare-fun b!5921767 () Bool)

(assert (=> b!5921767 (= e!3625239 tp_is_empty!41195)))

(declare-fun b!5921770 () Bool)

(declare-fun tp!1646053 () Bool)

(declare-fun tp!1646054 () Bool)

(assert (=> b!5921770 (= e!3625239 (and tp!1646053 tp!1646054))))

(assert (= (and b!5921148 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32455 r!7292)))) b!5921767))

(assert (= (and b!5921148 ((_ is Concat!24816) (regTwo!32455 (regTwo!32455 r!7292)))) b!5921768))

(assert (= (and b!5921148 ((_ is Star!15971) (regTwo!32455 (regTwo!32455 r!7292)))) b!5921769))

(assert (= (and b!5921148 ((_ is Union!15971) (regTwo!32455 (regTwo!32455 r!7292)))) b!5921770))

(declare-fun e!3625240 () Bool)

(assert (=> b!5921147 (= tp!1645896 e!3625240)))

(declare-fun b!5921772 () Bool)

(declare-fun tp!1646061 () Bool)

(declare-fun tp!1646062 () Bool)

(assert (=> b!5921772 (= e!3625240 (and tp!1646061 tp!1646062))))

(declare-fun b!5921773 () Bool)

(declare-fun tp!1646060 () Bool)

(assert (=> b!5921773 (= e!3625240 tp!1646060)))

(declare-fun b!5921771 () Bool)

(assert (=> b!5921771 (= e!3625240 tp_is_empty!41195)))

(declare-fun b!5921774 () Bool)

(declare-fun tp!1646058 () Bool)

(declare-fun tp!1646059 () Bool)

(assert (=> b!5921774 (= e!3625240 (and tp!1646058 tp!1646059))))

(assert (= (and b!5921147 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32455 r!7292)))) b!5921771))

(assert (= (and b!5921147 ((_ is Concat!24816) (reg!16300 (regTwo!32455 r!7292)))) b!5921772))

(assert (= (and b!5921147 ((_ is Star!15971) (reg!16300 (regTwo!32455 r!7292)))) b!5921773))

(assert (= (and b!5921147 ((_ is Union!15971) (reg!16300 (regTwo!32455 r!7292)))) b!5921774))

(declare-fun b!5921775 () Bool)

(declare-fun e!3625241 () Bool)

(declare-fun tp!1646063 () Bool)

(declare-fun tp!1646064 () Bool)

(assert (=> b!5921775 (= e!3625241 (and tp!1646063 tp!1646064))))

(assert (=> b!5921140 (= tp!1645887 e!3625241)))

(assert (= (and b!5921140 ((_ is Cons!64088) (exprs!5855 (h!70537 (t!377604 zl!343))))) b!5921775))

(declare-fun b_lambda!222413 () Bool)

(assert (= b_lambda!222403 (or d!1856733 b_lambda!222413)))

(declare-fun bs!1401598 () Bool)

(declare-fun d!1856975 () Bool)

(assert (= bs!1401598 (and d!1856975 d!1856733)))

(assert (=> bs!1401598 (= (dynLambda!25057 lambda!323011 (h!70536 (unfocusZipperList!1392 zl!343))) (validRegex!7707 (h!70536 (unfocusZipperList!1392 zl!343))))))

(declare-fun m!6817436 () Bool)

(assert (=> bs!1401598 m!6817436))

(assert (=> b!5921586 d!1856975))

(declare-fun b_lambda!222415 () Bool)

(assert (= b_lambda!222389 (or b!5920465 b_lambda!222415)))

(assert (=> d!1856747 d!1856739))

(declare-fun b_lambda!222417 () Bool)

(assert (= b_lambda!222407 (or d!1856641 b_lambda!222417)))

(declare-fun bs!1401601 () Bool)

(declare-fun d!1856977 () Bool)

(assert (= bs!1401601 (and d!1856977 d!1856641)))

(assert (=> bs!1401601 (= (dynLambda!25057 lambda!322963 (h!70536 (exprs!5855 (h!70537 zl!343)))) (validRegex!7707 (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun m!6817438 () Bool)

(assert (=> bs!1401601 m!6817438))

(assert (=> b!5921632 d!1856977))

(declare-fun b_lambda!222419 () Bool)

(assert (= b_lambda!222393 (or d!1856717 b_lambda!222419)))

(declare-fun bs!1401602 () Bool)

(declare-fun d!1856979 () Bool)

(assert (= bs!1401602 (and d!1856979 d!1856717)))

(assert (=> bs!1401602 (= (dynLambda!25057 lambda!323001 (h!70536 (exprs!5855 (h!70537 zl!343)))) (validRegex!7707 (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> bs!1401602 m!6817438))

(assert (=> b!5921287 d!1856979))

(declare-fun b_lambda!222421 () Bool)

(assert (= b_lambda!222401 (or d!1856675 b_lambda!222421)))

(declare-fun bs!1401604 () Bool)

(declare-fun d!1856983 () Bool)

(assert (= bs!1401604 (and d!1856983 d!1856675)))

(assert (=> bs!1401604 (= (dynLambda!25057 lambda!322975 (h!70536 (exprs!5855 setElem!40176))) (validRegex!7707 (h!70536 (exprs!5855 setElem!40176))))))

(declare-fun m!6817442 () Bool)

(assert (=> bs!1401604 m!6817442))

(assert (=> b!5921512 d!1856983))

(declare-fun b_lambda!222423 () Bool)

(assert (= b_lambda!222395 (or d!1856735 b_lambda!222423)))

(declare-fun bs!1401605 () Bool)

(declare-fun d!1856985 () Bool)

(assert (= bs!1401605 (and d!1856985 d!1856735)))

(assert (=> bs!1401605 (= (dynLambda!25057 lambda!323014 (h!70536 lt!2310021)) (validRegex!7707 (h!70536 lt!2310021)))))

(declare-fun m!6817444 () Bool)

(assert (=> bs!1401605 m!6817444))

(assert (=> b!5921291 d!1856985))

(declare-fun b_lambda!222425 () Bool)

(assert (= b_lambda!222391 (or d!1856723 b_lambda!222425)))

(declare-fun bs!1401606 () Bool)

(declare-fun d!1856987 () Bool)

(assert (= bs!1401606 (and d!1856987 d!1856723)))

(assert (=> bs!1401606 (= (dynLambda!25057 lambda!323002 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))) (validRegex!7707 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))

(declare-fun m!6817446 () Bool)

(assert (=> bs!1401606 m!6817446))

(assert (=> b!5921183 d!1856987))

(check-sat (not d!1856887) (not d!1856859) (not d!1856845) (not b!5921642) (not b!5921623) (not b!5921265) (not b!5921702) (not b!5921772) (not b!5921741) (not b!5921714) (not b!5921373) (not b!5921665) (not b!5921463) (not b!5921587) (not b!5921647) (not b!5921513) (not bm!469531) (not b!5921671) (not b!5921206) (not b!5921396) (not b!5921479) (not bm!469488) (not bm!469552) (not bm!469541) (not b!5921594) (not b!5921175) (not d!1856743) (not bs!1401602) (not setNonEmpty!40185) (not d!1856925) (not bm!469472) (not b!5921769) (not b!5921461) (not b!5921394) (not b!5921747) (not b!5921675) (not b!5921176) (not b!5921204) (not b!5921207) (not b!5921718) (not b!5921476) (not d!1856795) (not b!5921774) (not bm!469536) (not b!5921288) (not b!5921558) (not b!5921756) (not b!5921753) (not b!5921557) (not b!5921511) (not d!1856747) (not b!5921535) (not b!5921766) (not d!1856951) (not b!5921757) (not d!1856893) (not b!5921768) (not b!5921392) (not b!5921748) (not b!5921475) (not b!5921773) (not b!5921670) (not d!1856825) (not bs!1401598) (not b!5921355) tp_is_empty!41195 (not d!1856757) (not b_lambda!222419) (not d!1856903) (not bm!469505) (not b!5921758) (not d!1856793) (not b_lambda!222421) (not b!5921250) (not b_lambda!222413) (not b!5921195) (not b!5921168) (not bm!469527) (not bm!469476) (not bm!469548) (not b!5921509) (not b!5921501) (not b!5921652) (not d!1856771) (not b!5921699) (not bm!469540) (not d!1856853) (not b!5921477) (not d!1856765) (not d!1856843) (not b!5921760) (not b!5921722) (not b!5921382) (not b!5921150) (not b!5921674) (not b!5921680) (not b!5921743) (not bm!469525) (not b!5921723) (not b!5921705) (not d!1856919) (not b!5921762) (not b!5921199) (not bm!469480) (not b!5921380) (not b!5921378) (not bm!469478) (not b_lambda!222417) (not b!5921459) (not b!5921635) (not b!5921292) (not bm!469563) (not b!5921717) (not b!5921651) (not b!5921676) (not b!5921706) (not b!5921633) (not b!5921752) (not b!5921737) (not b!5921739) (not b!5921648) (not b!5921458) (not bm!469543) (not bm!469545) (not b!5921707) (not b!5921534) (not b!5921655) (not bm!469477) (not b!5921650) (not b_lambda!222425) (not b!5921697) (not b!5921285) (not bm!469501) (not b!5921205) (not b!5921738) (not d!1856913) (not b!5921761) (not bm!469481) (not b!5921547) (not b!5921694) (not b!5921775) (not b!5921661) (not d!1856787) (not b!5921577) (not b!5921198) (not b!5921460) (not bs!1401606) (not bm!469538) (not b!5921531) (not b!5921340) (not bm!469547) (not b!5921656) (not b!5921526) (not b!5921754) (not b!5921395) (not b_lambda!222415) (not b!5921751) (not d!1856907) (not b!5921662) (not b!5921149) (not b!5921637) (not b!5921693) (not b!5921474) (not bm!469497) (not d!1856823) (not b!5921640) (not b!5921173) (not b!5921556) (not b!5921164) (not bm!469483) (not bm!469470) (not b!5921532) (not b!5921654) (not b!5921749) (not b!5921646) (not bm!469487) (not d!1856947) (not b!5921393) (not b!5921666) (not b!5921456) (not b!5921174) (not b!5921679) (not d!1856763) (not b!5921719) (not b!5921745) (not b!5921698) (not b_lambda!222423) (not b!5921341) (not b!5921218) (not b!5921765) (not b!5921678) (not b!5921253) (not b!5921252) (not d!1856817) (not b!5921746) (not d!1856775) (not b!5921764) (not bm!469550) (not b!5921261) (not b!5921194) (not b!5921709) (not b!5921636) (not b!5921742) (not b!5921514) (not d!1856773) (not bs!1401601) (not bm!469521) (not b!5921447) (not d!1856877) (not b!5921177) (not b!5921711) (not b!5921381) (not bs!1401604) (not b!5921672) (not b!5921510) (not bm!469522) (not bm!469503) (not b!5921721) (not bm!469561) (not b!5921643) (not b!5921227) (not b!5921770) (not b!5921457) (not b!5921387) (not b!5921664) (not b!5921598) (not b!5921559) (not b!5921644) (not bm!469551) (not b_lambda!222387) (not b!5921502) (not b!5921533) (not b!5921715) (not b!5921701) (not bm!469499) (not setNonEmpty!40189) (not b!5921703) (not b!5921203) (not d!1856811) (not b!5921713) (not d!1856769) (not b!5921379) (not b!5921638) (not bm!469534) (not b!5921695) (not b!5921660) (not b!5921453) (not b!5921551) (not d!1856767) (not b!5921560) (not b!5921184) (not b!5921482) (not b!5921710) (not bm!469474) (not b!5921483) (not b!5921639) (not bm!469506) (not b!5921576) (not b!5921735) (not b!5921208) (not b!5921480) (not bm!469533) (not d!1856873) (not bs!1401605))
(check-sat)
(get-model)

(declare-fun b!5922047 () Bool)

(declare-fun e!3625369 () Bool)

(declare-fun lt!2310069 () Bool)

(declare-fun call!469605 () Bool)

(assert (=> b!5922047 (= e!3625369 (= lt!2310069 call!469605))))

(declare-fun b!5922048 () Bool)

(declare-fun res!2482320 () Bool)

(declare-fun e!3625371 () Bool)

(assert (=> b!5922048 (=> res!2482320 e!3625371)))

(assert (=> b!5922048 (= res!2482320 (not ((_ is ElementMatch!15971) (regOne!32454 r!7292))))))

(declare-fun e!3625374 () Bool)

(assert (=> b!5922048 (= e!3625374 e!3625371)))

(declare-fun b!5922049 () Bool)

(declare-fun e!3625373 () Bool)

(declare-fun e!3625368 () Bool)

(assert (=> b!5922049 (= e!3625373 e!3625368)))

(declare-fun res!2482319 () Bool)

(assert (=> b!5922049 (=> res!2482319 e!3625368)))

(assert (=> b!5922049 (= res!2482319 call!469605)))

(declare-fun bm!469600 () Bool)

(assert (=> bm!469600 (= call!469605 (isEmpty!35950 (_1!36253 (get!22069 lt!2310034))))))

(declare-fun b!5922050 () Bool)

(assert (=> b!5922050 (= e!3625368 (not (= (head!12484 (_1!36253 (get!22069 lt!2310034))) (c!1052179 (regOne!32454 r!7292)))))))

(declare-fun b!5922052 () Bool)

(assert (=> b!5922052 (= e!3625369 e!3625374)))

(declare-fun c!1052537 () Bool)

(assert (=> b!5922052 (= c!1052537 ((_ is EmptyLang!15971) (regOne!32454 r!7292)))))

(declare-fun b!5922053 () Bool)

(declare-fun res!2482317 () Bool)

(assert (=> b!5922053 (=> res!2482317 e!3625371)))

(declare-fun e!3625370 () Bool)

(assert (=> b!5922053 (= res!2482317 e!3625370)))

(declare-fun res!2482316 () Bool)

(assert (=> b!5922053 (=> (not res!2482316) (not e!3625370))))

(assert (=> b!5922053 (= res!2482316 lt!2310069)))

(declare-fun b!5922054 () Bool)

(assert (=> b!5922054 (= e!3625374 (not lt!2310069))))

(declare-fun b!5922055 () Bool)

(declare-fun res!2482315 () Bool)

(assert (=> b!5922055 (=> (not res!2482315) (not e!3625370))))

(assert (=> b!5922055 (= res!2482315 (isEmpty!35950 (tail!11569 (_1!36253 (get!22069 lt!2310034)))))))

(declare-fun b!5922056 () Bool)

(assert (=> b!5922056 (= e!3625370 (= (head!12484 (_1!36253 (get!22069 lt!2310034))) (c!1052179 (regOne!32454 r!7292))))))

(declare-fun b!5922057 () Bool)

(declare-fun e!3625372 () Bool)

(assert (=> b!5922057 (= e!3625372 (matchR!8154 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2310034)))) (tail!11569 (_1!36253 (get!22069 lt!2310034)))))))

(declare-fun b!5922058 () Bool)

(declare-fun res!2482314 () Bool)

(assert (=> b!5922058 (=> res!2482314 e!3625368)))

(assert (=> b!5922058 (= res!2482314 (not (isEmpty!35950 (tail!11569 (_1!36253 (get!22069 lt!2310034))))))))

(declare-fun b!5922051 () Bool)

(declare-fun res!2482313 () Bool)

(assert (=> b!5922051 (=> (not res!2482313) (not e!3625370))))

(assert (=> b!5922051 (= res!2482313 (not call!469605))))

(declare-fun d!1857073 () Bool)

(assert (=> d!1857073 e!3625369))

(declare-fun c!1052536 () Bool)

(assert (=> d!1857073 (= c!1052536 ((_ is EmptyExpr!15971) (regOne!32454 r!7292)))))

(assert (=> d!1857073 (= lt!2310069 e!3625372)))

(declare-fun c!1052538 () Bool)

(assert (=> d!1857073 (= c!1052538 (isEmpty!35950 (_1!36253 (get!22069 lt!2310034))))))

(assert (=> d!1857073 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1857073 (= (matchR!8154 (regOne!32454 r!7292) (_1!36253 (get!22069 lt!2310034))) lt!2310069)))

(declare-fun b!5922059 () Bool)

(assert (=> b!5922059 (= e!3625372 (nullable!5966 (regOne!32454 r!7292)))))

(declare-fun b!5922060 () Bool)

(assert (=> b!5922060 (= e!3625371 e!3625373)))

(declare-fun res!2482318 () Bool)

(assert (=> b!5922060 (=> (not res!2482318) (not e!3625373))))

(assert (=> b!5922060 (= res!2482318 (not lt!2310069))))

(assert (= (and d!1857073 c!1052538) b!5922059))

(assert (= (and d!1857073 (not c!1052538)) b!5922057))

(assert (= (and d!1857073 c!1052536) b!5922047))

(assert (= (and d!1857073 (not c!1052536)) b!5922052))

(assert (= (and b!5922052 c!1052537) b!5922054))

(assert (= (and b!5922052 (not c!1052537)) b!5922048))

(assert (= (and b!5922048 (not res!2482320)) b!5922053))

(assert (= (and b!5922053 res!2482316) b!5922051))

(assert (= (and b!5922051 res!2482313) b!5922055))

(assert (= (and b!5922055 res!2482315) b!5922056))

(assert (= (and b!5922053 (not res!2482317)) b!5922060))

(assert (= (and b!5922060 res!2482318) b!5922049))

(assert (= (and b!5922049 (not res!2482319)) b!5922058))

(assert (= (and b!5922058 (not res!2482314)) b!5922050))

(assert (= (or b!5922047 b!5922049 b!5922051) bm!469600))

(declare-fun m!6817648 () Bool)

(assert (=> b!5922055 m!6817648))

(assert (=> b!5922055 m!6817648))

(declare-fun m!6817650 () Bool)

(assert (=> b!5922055 m!6817650))

(declare-fun m!6817652 () Bool)

(assert (=> b!5922057 m!6817652))

(assert (=> b!5922057 m!6817652))

(declare-fun m!6817654 () Bool)

(assert (=> b!5922057 m!6817654))

(assert (=> b!5922057 m!6817648))

(assert (=> b!5922057 m!6817654))

(assert (=> b!5922057 m!6817648))

(declare-fun m!6817656 () Bool)

(assert (=> b!5922057 m!6817656))

(declare-fun m!6817658 () Bool)

(assert (=> d!1857073 m!6817658))

(assert (=> d!1857073 m!6816790))

(assert (=> b!5922056 m!6817652))

(assert (=> bm!469600 m!6817658))

(assert (=> b!5922058 m!6817648))

(assert (=> b!5922058 m!6817648))

(assert (=> b!5922058 m!6817650))

(assert (=> b!5922050 m!6817652))

(assert (=> b!5922059 m!6816858))

(assert (=> b!5921204 d!1857073))

(declare-fun d!1857075 () Bool)

(assert (=> d!1857075 (= (get!22069 lt!2310034) (v!51957 lt!2310034))))

(assert (=> b!5921204 d!1857075))

(declare-fun b!5922061 () Bool)

(declare-fun e!3625378 () (InoxSet Context!10710))

(declare-fun e!3625380 () (InoxSet Context!10710))

(assert (=> b!5922061 (= e!3625378 e!3625380)))

(declare-fun c!1052542 () Bool)

(assert (=> b!5922061 (= c!1052542 ((_ is Union!15971) (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))

(declare-fun bm!469601 () Bool)

(declare-fun call!469606 () (InoxSet Context!10710))

(declare-fun call!469611 () (InoxSet Context!10710))

(assert (=> bm!469601 (= call!469606 call!469611)))

(declare-fun b!5922062 () Bool)

(assert (=> b!5922062 (= e!3625378 (store ((as const (Array Context!10710 Bool)) false) (ite c!1052462 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469550)) true))))

(declare-fun c!1052539 () Bool)

(declare-fun b!5922063 () Bool)

(assert (=> b!5922063 (= c!1052539 ((_ is Star!15971) (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))

(declare-fun e!3625377 () (InoxSet Context!10710))

(declare-fun e!3625379 () (InoxSet Context!10710))

(assert (=> b!5922063 (= e!3625377 e!3625379)))

(declare-fun d!1857077 () Bool)

(declare-fun c!1052543 () Bool)

(assert (=> d!1857077 (= c!1052543 (and ((_ is ElementMatch!15971) (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))) (= (c!1052179 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))) (h!70538 s!2326))))))

(assert (=> d!1857077 (= (derivationStepZipperDown!1221 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))) (ite c!1052462 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469550)) (h!70538 s!2326)) e!3625378)))

(declare-fun b!5922064 () Bool)

(declare-fun c!1052541 () Bool)

(declare-fun e!3625375 () Bool)

(assert (=> b!5922064 (= c!1052541 e!3625375)))

(declare-fun res!2482321 () Bool)

(assert (=> b!5922064 (=> (not res!2482321) (not e!3625375))))

(assert (=> b!5922064 (= res!2482321 ((_ is Concat!24816) (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))

(declare-fun e!3625376 () (InoxSet Context!10710))

(assert (=> b!5922064 (= e!3625380 e!3625376)))

(declare-fun c!1052540 () Bool)

(declare-fun bm!469602 () Bool)

(declare-fun call!469609 () List!64212)

(assert (=> bm!469602 (= call!469609 ($colon$colon!1858 (exprs!5855 (ite c!1052462 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469550))) (ite (or c!1052541 c!1052540) (regTwo!32454 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))) (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))))

(declare-fun bm!469603 () Bool)

(declare-fun call!469610 () List!64212)

(assert (=> bm!469603 (= call!469610 call!469609)))

(declare-fun b!5922065 () Bool)

(assert (=> b!5922065 (= e!3625379 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922066 () Bool)

(assert (=> b!5922066 (= e!3625376 e!3625377)))

(assert (=> b!5922066 (= c!1052540 ((_ is Concat!24816) (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))

(declare-fun b!5922067 () Bool)

(declare-fun call!469607 () (InoxSet Context!10710))

(assert (=> b!5922067 (= e!3625376 ((_ map or) call!469607 call!469611))))

(declare-fun bm!469604 () Bool)

(assert (=> bm!469604 (= call!469607 (derivationStepZipperDown!1221 (ite c!1052542 (regTwo!32455 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))) (regOne!32454 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))) (ite c!1052542 (ite c!1052462 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469550)) (Context!10711 call!469609)) (h!70538 s!2326)))))

(declare-fun b!5922068 () Bool)

(assert (=> b!5922068 (= e!3625377 call!469606)))

(declare-fun b!5922069 () Bool)

(declare-fun call!469608 () (InoxSet Context!10710))

(assert (=> b!5922069 (= e!3625380 ((_ map or) call!469608 call!469607))))

(declare-fun b!5922070 () Bool)

(assert (=> b!5922070 (= e!3625379 call!469606)))

(declare-fun bm!469605 () Bool)

(assert (=> bm!469605 (= call!469611 call!469608)))

(declare-fun b!5922071 () Bool)

(assert (=> b!5922071 (= e!3625375 (nullable!5966 (regOne!32454 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))))

(declare-fun bm!469606 () Bool)

(assert (=> bm!469606 (= call!469608 (derivationStepZipperDown!1221 (ite c!1052542 (regOne!32455 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))) (ite c!1052541 (regTwo!32454 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))) (ite c!1052540 (regOne!32454 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))) (reg!16300 (ite c!1052462 (regTwo!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))) (ite (or c!1052542 c!1052541) (ite c!1052462 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469550)) (Context!10711 call!469610)) (h!70538 s!2326)))))

(assert (= (and d!1857077 c!1052543) b!5922062))

(assert (= (and d!1857077 (not c!1052543)) b!5922061))

(assert (= (and b!5922061 c!1052542) b!5922069))

(assert (= (and b!5922061 (not c!1052542)) b!5922064))

(assert (= (and b!5922064 res!2482321) b!5922071))

(assert (= (and b!5922064 c!1052541) b!5922067))

(assert (= (and b!5922064 (not c!1052541)) b!5922066))

(assert (= (and b!5922066 c!1052540) b!5922068))

(assert (= (and b!5922066 (not c!1052540)) b!5922063))

(assert (= (and b!5922063 c!1052539) b!5922070))

(assert (= (and b!5922063 (not c!1052539)) b!5922065))

(assert (= (or b!5922068 b!5922070) bm!469603))

(assert (= (or b!5922068 b!5922070) bm!469601))

(assert (= (or b!5922067 bm!469603) bm!469602))

(assert (= (or b!5922067 bm!469601) bm!469605))

(assert (= (or b!5922069 b!5922067) bm!469604))

(assert (= (or b!5922069 bm!469605) bm!469606))

(declare-fun m!6817660 () Bool)

(assert (=> bm!469606 m!6817660))

(declare-fun m!6817662 () Bool)

(assert (=> bm!469604 m!6817662))

(declare-fun m!6817664 () Bool)

(assert (=> b!5922062 m!6817664))

(declare-fun m!6817666 () Bool)

(assert (=> b!5922071 m!6817666))

(declare-fun m!6817668 () Bool)

(assert (=> bm!469602 m!6817668))

(assert (=> bm!469545 d!1857077))

(declare-fun d!1857079 () Bool)

(declare-fun res!2482326 () Bool)

(declare-fun e!3625386 () Bool)

(assert (=> d!1857079 (=> res!2482326 e!3625386)))

(assert (=> d!1857079 (= res!2482326 ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> d!1857079 (= (validRegex!7707 (h!70536 (exprs!5855 (h!70537 zl!343)))) e!3625386)))

(declare-fun b!5922072 () Bool)

(declare-fun e!3625387 () Bool)

(declare-fun e!3625385 () Bool)

(assert (=> b!5922072 (= e!3625387 e!3625385)))

(declare-fun res!2482323 () Bool)

(assert (=> b!5922072 (= res!2482323 (not (nullable!5966 (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(assert (=> b!5922072 (=> (not res!2482323) (not e!3625385))))

(declare-fun bm!469607 () Bool)

(declare-fun call!469614 () Bool)

(declare-fun c!1052544 () Bool)

(assert (=> bm!469607 (= call!469614 (validRegex!7707 (ite c!1052544 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5922073 () Bool)

(declare-fun res!2482325 () Bool)

(declare-fun e!3625382 () Bool)

(assert (=> b!5922073 (=> res!2482325 e!3625382)))

(assert (=> b!5922073 (= res!2482325 (not ((_ is Concat!24816) (h!70536 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun e!3625381 () Bool)

(assert (=> b!5922073 (= e!3625381 e!3625382)))

(declare-fun b!5922074 () Bool)

(declare-fun res!2482322 () Bool)

(declare-fun e!3625383 () Bool)

(assert (=> b!5922074 (=> (not res!2482322) (not e!3625383))))

(declare-fun call!469613 () Bool)

(assert (=> b!5922074 (= res!2482322 call!469613)))

(assert (=> b!5922074 (= e!3625381 e!3625383)))

(declare-fun bm!469608 () Bool)

(declare-fun call!469612 () Bool)

(assert (=> bm!469608 (= call!469613 call!469612)))

(declare-fun b!5922075 () Bool)

(assert (=> b!5922075 (= e!3625385 call!469612)))

(declare-fun b!5922076 () Bool)

(declare-fun e!3625384 () Bool)

(assert (=> b!5922076 (= e!3625384 call!469614)))

(declare-fun b!5922077 () Bool)

(assert (=> b!5922077 (= e!3625382 e!3625384)))

(declare-fun res!2482324 () Bool)

(assert (=> b!5922077 (=> (not res!2482324) (not e!3625384))))

(assert (=> b!5922077 (= res!2482324 call!469613)))

(declare-fun b!5922078 () Bool)

(assert (=> b!5922078 (= e!3625387 e!3625381)))

(assert (=> b!5922078 (= c!1052544 ((_ is Union!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5922079 () Bool)

(assert (=> b!5922079 (= e!3625383 call!469614)))

(declare-fun c!1052545 () Bool)

(declare-fun bm!469609 () Bool)

(assert (=> bm!469609 (= call!469612 (validRegex!7707 (ite c!1052545 (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052544 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun b!5922080 () Bool)

(assert (=> b!5922080 (= e!3625386 e!3625387)))

(assert (=> b!5922080 (= c!1052545 ((_ is Star!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(assert (= (and d!1857079 (not res!2482326)) b!5922080))

(assert (= (and b!5922080 c!1052545) b!5922072))

(assert (= (and b!5922080 (not c!1052545)) b!5922078))

(assert (= (and b!5922072 res!2482323) b!5922075))

(assert (= (and b!5922078 c!1052544) b!5922074))

(assert (= (and b!5922078 (not c!1052544)) b!5922073))

(assert (= (and b!5922074 res!2482322) b!5922079))

(assert (= (and b!5922073 (not res!2482325)) b!5922077))

(assert (= (and b!5922077 res!2482324) b!5922076))

(assert (= (or b!5922079 b!5922076) bm!469607))

(assert (= (or b!5922074 b!5922077) bm!469608))

(assert (= (or b!5922075 bm!469608) bm!469609))

(declare-fun m!6817670 () Bool)

(assert (=> b!5922072 m!6817670))

(declare-fun m!6817672 () Bool)

(assert (=> bm!469607 m!6817672))

(declare-fun m!6817674 () Bool)

(assert (=> bm!469609 m!6817674))

(assert (=> bs!1401601 d!1857079))

(declare-fun b!5922081 () Bool)

(declare-fun e!3625391 () (InoxSet Context!10710))

(declare-fun e!3625393 () (InoxSet Context!10710))

(assert (=> b!5922081 (= e!3625391 e!3625393)))

(declare-fun c!1052549 () Bool)

(assert (=> b!5922081 (= c!1052549 ((_ is Union!15971) (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))))

(declare-fun bm!469610 () Bool)

(declare-fun call!469615 () (InoxSet Context!10710))

(declare-fun call!469620 () (InoxSet Context!10710))

(assert (=> bm!469610 (= call!469615 call!469620)))

(declare-fun b!5922082 () Bool)

(assert (=> b!5922082 (= e!3625391 (store ((as const (Array Context!10710 Bool)) false) (ite (or c!1052355 c!1052354) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469480)) true))))

(declare-fun c!1052546 () Bool)

(declare-fun b!5922083 () Bool)

(assert (=> b!5922083 (= c!1052546 ((_ is Star!15971) (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))))

(declare-fun e!3625390 () (InoxSet Context!10710))

(declare-fun e!3625392 () (InoxSet Context!10710))

(assert (=> b!5922083 (= e!3625390 e!3625392)))

(declare-fun c!1052550 () Bool)

(declare-fun d!1857081 () Bool)

(assert (=> d!1857081 (= c!1052550 (and ((_ is ElementMatch!15971) (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))) (= (c!1052179 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))) (h!70538 s!2326))))))

(assert (=> d!1857081 (= (derivationStepZipperDown!1221 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343))))))) (ite (or c!1052355 c!1052354) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469480)) (h!70538 s!2326)) e!3625391)))

(declare-fun b!5922084 () Bool)

(declare-fun c!1052548 () Bool)

(declare-fun e!3625388 () Bool)

(assert (=> b!5922084 (= c!1052548 e!3625388)))

(declare-fun res!2482327 () Bool)

(assert (=> b!5922084 (=> (not res!2482327) (not e!3625388))))

(assert (=> b!5922084 (= res!2482327 ((_ is Concat!24816) (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))))

(declare-fun e!3625389 () (InoxSet Context!10710))

(assert (=> b!5922084 (= e!3625393 e!3625389)))

(declare-fun call!469618 () List!64212)

(declare-fun bm!469611 () Bool)

(declare-fun c!1052547 () Bool)

(assert (=> bm!469611 (= call!469618 ($colon$colon!1858 (exprs!5855 (ite (or c!1052355 c!1052354) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469480))) (ite (or c!1052548 c!1052547) (regTwo!32454 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))) (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343))))))))))))

(declare-fun bm!469612 () Bool)

(declare-fun call!469619 () List!64212)

(assert (=> bm!469612 (= call!469619 call!469618)))

(declare-fun b!5922085 () Bool)

(assert (=> b!5922085 (= e!3625392 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922086 () Bool)

(assert (=> b!5922086 (= e!3625389 e!3625390)))

(assert (=> b!5922086 (= c!1052547 ((_ is Concat!24816) (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))))

(declare-fun b!5922087 () Bool)

(declare-fun call!469616 () (InoxSet Context!10710))

(assert (=> b!5922087 (= e!3625389 ((_ map or) call!469616 call!469620))))

(declare-fun bm!469613 () Bool)

(assert (=> bm!469613 (= call!469616 (derivationStepZipperDown!1221 (ite c!1052549 (regTwo!32455 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))) (regOne!32454 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343))))))))) (ite c!1052549 (ite (or c!1052355 c!1052354) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469480)) (Context!10711 call!469618)) (h!70538 s!2326)))))

(declare-fun b!5922088 () Bool)

(assert (=> b!5922088 (= e!3625390 call!469615)))

(declare-fun b!5922089 () Bool)

(declare-fun call!469617 () (InoxSet Context!10710))

(assert (=> b!5922089 (= e!3625393 ((_ map or) call!469617 call!469616))))

(declare-fun b!5922090 () Bool)

(assert (=> b!5922090 (= e!3625392 call!469615)))

(declare-fun bm!469614 () Bool)

(assert (=> bm!469614 (= call!469620 call!469617)))

(declare-fun b!5922091 () Bool)

(assert (=> b!5922091 (= e!3625388 (nullable!5966 (regOne!32454 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343))))))))))))

(declare-fun bm!469615 () Bool)

(assert (=> bm!469615 (= call!469617 (derivationStepZipperDown!1221 (ite c!1052549 (regOne!32455 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))) (ite c!1052548 (regTwo!32454 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))) (ite c!1052547 (regOne!32454 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))))) (reg!16300 (ite c!1052355 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052354 (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (ite c!1052353 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343))))))))))) (ite (or c!1052549 c!1052548) (ite (or c!1052355 c!1052354) (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469480)) (Context!10711 call!469619)) (h!70538 s!2326)))))

(assert (= (and d!1857081 c!1052550) b!5922082))

(assert (= (and d!1857081 (not c!1052550)) b!5922081))

(assert (= (and b!5922081 c!1052549) b!5922089))

(assert (= (and b!5922081 (not c!1052549)) b!5922084))

(assert (= (and b!5922084 res!2482327) b!5922091))

(assert (= (and b!5922084 c!1052548) b!5922087))

(assert (= (and b!5922084 (not c!1052548)) b!5922086))

(assert (= (and b!5922086 c!1052547) b!5922088))

(assert (= (and b!5922086 (not c!1052547)) b!5922083))

(assert (= (and b!5922083 c!1052546) b!5922090))

(assert (= (and b!5922083 (not c!1052546)) b!5922085))

(assert (= (or b!5922088 b!5922090) bm!469612))

(assert (= (or b!5922088 b!5922090) bm!469610))

(assert (= (or b!5922087 bm!469612) bm!469611))

(assert (= (or b!5922087 bm!469610) bm!469614))

(assert (= (or b!5922089 b!5922087) bm!469613))

(assert (= (or b!5922089 bm!469614) bm!469615))

(declare-fun m!6817676 () Bool)

(assert (=> bm!469615 m!6817676))

(declare-fun m!6817678 () Bool)

(assert (=> bm!469613 m!6817678))

(declare-fun m!6817680 () Bool)

(assert (=> b!5922082 m!6817680))

(declare-fun m!6817682 () Bool)

(assert (=> b!5922091 m!6817682))

(declare-fun m!6817684 () Bool)

(assert (=> bm!469611 m!6817684))

(assert (=> bm!469476 d!1857081))

(declare-fun d!1857083 () Bool)

(declare-fun res!2482328 () Bool)

(declare-fun e!3625394 () Bool)

(assert (=> d!1857083 (=> res!2482328 e!3625394)))

(assert (=> d!1857083 (= res!2482328 ((_ is Nil!64089) (t!377604 lt!2309955)))))

(assert (=> d!1857083 (= (noDuplicate!1828 (t!377604 lt!2309955)) e!3625394)))

(declare-fun b!5922092 () Bool)

(declare-fun e!3625395 () Bool)

(assert (=> b!5922092 (= e!3625394 e!3625395)))

(declare-fun res!2482329 () Bool)

(assert (=> b!5922092 (=> (not res!2482329) (not e!3625395))))

(assert (=> b!5922092 (= res!2482329 (not (contains!19956 (t!377604 (t!377604 lt!2309955)) (h!70537 (t!377604 lt!2309955)))))))

(declare-fun b!5922093 () Bool)

(assert (=> b!5922093 (= e!3625395 (noDuplicate!1828 (t!377604 (t!377604 lt!2309955))))))

(assert (= (and d!1857083 (not res!2482328)) b!5922092))

(assert (= (and b!5922092 res!2482329) b!5922093))

(declare-fun m!6817686 () Bool)

(assert (=> b!5922092 m!6817686))

(declare-fun m!6817688 () Bool)

(assert (=> b!5922093 m!6817688))

(assert (=> b!5921502 d!1857083))

(declare-fun bs!1401662 () Bool)

(declare-fun b!5922098 () Bool)

(assert (= bs!1401662 (and b!5922098 b!5921260)))

(declare-fun lambda!323051 () Int)

(assert (=> bs!1401662 (not (= lambda!323051 lambda!323023))))

(declare-fun bs!1401663 () Bool)

(assert (= bs!1401663 (and b!5922098 d!1856709)))

(assert (=> bs!1401663 (not (= lambda!323051 lambda!323000))))

(declare-fun bs!1401664 () Bool)

(assert (= bs!1401664 (and b!5922098 b!5921593)))

(assert (=> bs!1401664 (not (= lambda!323051 lambda!323037))))

(declare-fun bs!1401665 () Bool)

(assert (= bs!1401665 (and b!5922098 b!5920469)))

(assert (=> bs!1401665 (not (= lambda!323051 lambda!322949))))

(declare-fun bs!1401666 () Bool)

(assert (= bs!1401666 (and b!5922098 b!5920983)))

(assert (=> bs!1401666 (= (and (= (reg!16300 (regTwo!32455 (regTwo!32455 r!7292))) (reg!16300 r!7292)) (= (regTwo!32455 (regTwo!32455 r!7292)) r!7292)) (= lambda!323051 lambda!323007))))

(declare-fun bs!1401667 () Bool)

(assert (= bs!1401667 (and b!5922098 d!1856701)))

(assert (=> bs!1401667 (not (= lambda!323051 lambda!322996))))

(declare-fun bs!1401668 () Bool)

(assert (= bs!1401668 (and b!5922098 d!1856825)))

(assert (=> bs!1401668 (not (= lambda!323051 lambda!323027))))

(declare-fun bs!1401669 () Bool)

(assert (= bs!1401669 (and b!5922098 d!1856775)))

(assert (=> bs!1401669 (not (= lambda!323051 lambda!323020))))

(assert (=> bs!1401667 (not (= lambda!323051 lambda!322997))))

(declare-fun bs!1401670 () Bool)

(assert (= bs!1401670 (and b!5922098 b!5920984)))

(assert (=> bs!1401670 (not (= lambda!323051 lambda!323008))))

(declare-fun bs!1401671 () Bool)

(assert (= bs!1401671 (and b!5922098 b!5921259)))

(assert (=> bs!1401671 (= (and (= (reg!16300 (regTwo!32455 (regTwo!32455 r!7292))) (reg!16300 (regOne!32455 r!7292))) (= (regTwo!32455 (regTwo!32455 r!7292)) (regOne!32455 r!7292))) (= lambda!323051 lambda!323022))))

(assert (=> bs!1401665 (not (= lambda!323051 lambda!322948))))

(declare-fun bs!1401672 () Bool)

(assert (= bs!1401672 (and b!5922098 b!5921592)))

(assert (=> bs!1401672 (= (and (= (reg!16300 (regTwo!32455 (regTwo!32455 r!7292))) (reg!16300 (regTwo!32455 r!7292))) (= (regTwo!32455 (regTwo!32455 r!7292)) (regTwo!32455 r!7292))) (= lambda!323051 lambda!323036))))

(assert (=> bs!1401669 (not (= lambda!323051 lambda!323019))))

(assert (=> b!5922098 true))

(assert (=> b!5922098 true))

(declare-fun bs!1401673 () Bool)

(declare-fun b!5922099 () Bool)

(assert (= bs!1401673 (and b!5922099 b!5921260)))

(declare-fun lambda!323052 () Int)

(assert (=> bs!1401673 (= (and (= (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regOne!32454 (regOne!32455 r!7292))) (= (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regTwo!32454 (regOne!32455 r!7292)))) (= lambda!323052 lambda!323023))))

(declare-fun bs!1401674 () Bool)

(assert (= bs!1401674 (and b!5922099 b!5922098)))

(assert (=> bs!1401674 (not (= lambda!323052 lambda!323051))))

(declare-fun bs!1401675 () Bool)

(assert (= bs!1401675 (and b!5922099 d!1856709)))

(assert (=> bs!1401675 (not (= lambda!323052 lambda!323000))))

(declare-fun bs!1401676 () Bool)

(assert (= bs!1401676 (and b!5922099 b!5921593)))

(assert (=> bs!1401676 (= (and (= (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regOne!32454 (regTwo!32455 r!7292))) (= (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regTwo!32454 (regTwo!32455 r!7292)))) (= lambda!323052 lambda!323037))))

(declare-fun bs!1401677 () Bool)

(assert (= bs!1401677 (and b!5922099 b!5920469)))

(assert (=> bs!1401677 (= (and (= (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323052 lambda!322949))))

(declare-fun bs!1401678 () Bool)

(assert (= bs!1401678 (and b!5922099 b!5920983)))

(assert (=> bs!1401678 (not (= lambda!323052 lambda!323007))))

(declare-fun bs!1401679 () Bool)

(assert (= bs!1401679 (and b!5922099 d!1856701)))

(assert (=> bs!1401679 (not (= lambda!323052 lambda!322996))))

(declare-fun bs!1401680 () Bool)

(assert (= bs!1401680 (and b!5922099 d!1856825)))

(assert (=> bs!1401680 (not (= lambda!323052 lambda!323027))))

(declare-fun bs!1401681 () Bool)

(assert (= bs!1401681 (and b!5922099 d!1856775)))

(assert (=> bs!1401681 (= (and (= (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323052 lambda!323020))))

(assert (=> bs!1401679 (= (and (= (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323052 lambda!322997))))

(declare-fun bs!1401682 () Bool)

(assert (= bs!1401682 (and b!5922099 b!5920984)))

(assert (=> bs!1401682 (= (and (= (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323052 lambda!323008))))

(declare-fun bs!1401683 () Bool)

(assert (= bs!1401683 (and b!5922099 b!5921259)))

(assert (=> bs!1401683 (not (= lambda!323052 lambda!323022))))

(assert (=> bs!1401677 (not (= lambda!323052 lambda!322948))))

(declare-fun bs!1401684 () Bool)

(assert (= bs!1401684 (and b!5922099 b!5921592)))

(assert (=> bs!1401684 (not (= lambda!323052 lambda!323036))))

(assert (=> bs!1401681 (not (= lambda!323052 lambda!323019))))

(assert (=> b!5922099 true))

(assert (=> b!5922099 true))

(declare-fun b!5922094 () Bool)

(declare-fun e!3625397 () Bool)

(declare-fun e!3625396 () Bool)

(assert (=> b!5922094 (= e!3625397 e!3625396)))

(declare-fun c!1052554 () Bool)

(assert (=> b!5922094 (= c!1052554 ((_ is Star!15971) (regTwo!32455 (regTwo!32455 r!7292))))))

(declare-fun b!5922095 () Bool)

(declare-fun e!3625398 () Bool)

(declare-fun e!3625401 () Bool)

(assert (=> b!5922095 (= e!3625398 e!3625401)))

(declare-fun res!2482332 () Bool)

(assert (=> b!5922095 (= res!2482332 (not ((_ is EmptyLang!15971) (regTwo!32455 (regTwo!32455 r!7292)))))))

(assert (=> b!5922095 (=> (not res!2482332) (not e!3625401))))

(declare-fun b!5922096 () Bool)

(declare-fun e!3625400 () Bool)

(assert (=> b!5922096 (= e!3625400 (= s!2326 (Cons!64090 (c!1052179 (regTwo!32455 (regTwo!32455 r!7292))) Nil!64090)))))

(declare-fun b!5922097 () Bool)

(declare-fun call!469621 () Bool)

(assert (=> b!5922097 (= e!3625398 call!469621)))

(declare-fun e!3625402 () Bool)

(declare-fun call!469622 () Bool)

(assert (=> b!5922098 (= e!3625402 call!469622)))

(declare-fun bm!469616 () Bool)

(assert (=> bm!469616 (= call!469622 (Exists!3041 (ite c!1052554 lambda!323051 lambda!323052)))))

(assert (=> b!5922099 (= e!3625396 call!469622)))

(declare-fun b!5922100 () Bool)

(declare-fun e!3625399 () Bool)

(assert (=> b!5922100 (= e!3625397 e!3625399)))

(declare-fun res!2482331 () Bool)

(assert (=> b!5922100 (= res!2482331 (matchRSpec!3072 (regOne!32455 (regTwo!32455 (regTwo!32455 r!7292))) s!2326))))

(assert (=> b!5922100 (=> res!2482331 e!3625399)))

(declare-fun b!5922101 () Bool)

(declare-fun res!2482330 () Bool)

(assert (=> b!5922101 (=> res!2482330 e!3625402)))

(assert (=> b!5922101 (= res!2482330 call!469621)))

(assert (=> b!5922101 (= e!3625396 e!3625402)))

(declare-fun b!5922102 () Bool)

(declare-fun c!1052553 () Bool)

(assert (=> b!5922102 (= c!1052553 ((_ is Union!15971) (regTwo!32455 (regTwo!32455 r!7292))))))

(assert (=> b!5922102 (= e!3625400 e!3625397)))

(declare-fun d!1857085 () Bool)

(declare-fun c!1052551 () Bool)

(assert (=> d!1857085 (= c!1052551 ((_ is EmptyExpr!15971) (regTwo!32455 (regTwo!32455 r!7292))))))

(assert (=> d!1857085 (= (matchRSpec!3072 (regTwo!32455 (regTwo!32455 r!7292)) s!2326) e!3625398)))

(declare-fun bm!469617 () Bool)

(assert (=> bm!469617 (= call!469621 (isEmpty!35950 s!2326))))

(declare-fun b!5922103 () Bool)

(declare-fun c!1052552 () Bool)

(assert (=> b!5922103 (= c!1052552 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32455 r!7292))))))

(assert (=> b!5922103 (= e!3625401 e!3625400)))

(declare-fun b!5922104 () Bool)

(assert (=> b!5922104 (= e!3625399 (matchRSpec!3072 (regTwo!32455 (regTwo!32455 (regTwo!32455 r!7292))) s!2326))))

(assert (= (and d!1857085 c!1052551) b!5922097))

(assert (= (and d!1857085 (not c!1052551)) b!5922095))

(assert (= (and b!5922095 res!2482332) b!5922103))

(assert (= (and b!5922103 c!1052552) b!5922096))

(assert (= (and b!5922103 (not c!1052552)) b!5922102))

(assert (= (and b!5922102 c!1052553) b!5922100))

(assert (= (and b!5922102 (not c!1052553)) b!5922094))

(assert (= (and b!5922100 (not res!2482331)) b!5922104))

(assert (= (and b!5922094 c!1052554) b!5922101))

(assert (= (and b!5922094 (not c!1052554)) b!5922099))

(assert (= (and b!5922101 (not res!2482330)) b!5922098))

(assert (= (or b!5922098 b!5922099) bm!469616))

(assert (= (or b!5922097 b!5922101) bm!469617))

(declare-fun m!6817690 () Bool)

(assert (=> bm!469616 m!6817690))

(declare-fun m!6817692 () Bool)

(assert (=> b!5922100 m!6817692))

(assert (=> bm!469617 m!6816874))

(declare-fun m!6817694 () Bool)

(assert (=> b!5922104 m!6817694))

(assert (=> b!5921598 d!1857085))

(declare-fun d!1857087 () Bool)

(assert (=> d!1857087 (= (isUnion!838 lt!2310048) ((_ is Union!15971) lt!2310048))))

(assert (=> b!5921479 d!1857087))

(declare-fun d!1857089 () Bool)

(assert (not d!1857089))

(assert (=> b!5921379 d!1857089))

(declare-fun d!1857091 () Bool)

(assert (=> d!1857091 (= (nullable!5966 (reg!16300 lt!2310018)) (nullableFct!1937 (reg!16300 lt!2310018)))))

(declare-fun bs!1401685 () Bool)

(assert (= bs!1401685 d!1857091))

(declare-fun m!6817696 () Bool)

(assert (=> bs!1401685 m!6817696))

(assert (=> b!5921577 d!1857091))

(declare-fun b!5922105 () Bool)

(declare-fun e!3625404 () Bool)

(declare-fun lt!2310070 () Bool)

(declare-fun call!469623 () Bool)

(assert (=> b!5922105 (= e!3625404 (= lt!2310070 call!469623))))

(declare-fun b!5922106 () Bool)

(declare-fun res!2482340 () Bool)

(declare-fun e!3625406 () Bool)

(assert (=> b!5922106 (=> res!2482340 e!3625406)))

(assert (=> b!5922106 (= res!2482340 (not ((_ is ElementMatch!15971) (regTwo!32454 r!7292))))))

(declare-fun e!3625409 () Bool)

(assert (=> b!5922106 (= e!3625409 e!3625406)))

(declare-fun b!5922107 () Bool)

(declare-fun e!3625408 () Bool)

(declare-fun e!3625403 () Bool)

(assert (=> b!5922107 (= e!3625408 e!3625403)))

(declare-fun res!2482339 () Bool)

(assert (=> b!5922107 (=> res!2482339 e!3625403)))

(assert (=> b!5922107 (= res!2482339 call!469623)))

(declare-fun bm!469618 () Bool)

(assert (=> bm!469618 (= call!469623 (isEmpty!35950 (t!377605 s!2326)))))

(declare-fun b!5922108 () Bool)

(assert (=> b!5922108 (= e!3625403 (not (= (head!12484 (t!377605 s!2326)) (c!1052179 (regTwo!32454 r!7292)))))))

(declare-fun b!5922110 () Bool)

(assert (=> b!5922110 (= e!3625404 e!3625409)))

(declare-fun c!1052556 () Bool)

(assert (=> b!5922110 (= c!1052556 ((_ is EmptyLang!15971) (regTwo!32454 r!7292)))))

(declare-fun b!5922111 () Bool)

(declare-fun res!2482337 () Bool)

(assert (=> b!5922111 (=> res!2482337 e!3625406)))

(declare-fun e!3625405 () Bool)

(assert (=> b!5922111 (= res!2482337 e!3625405)))

(declare-fun res!2482336 () Bool)

(assert (=> b!5922111 (=> (not res!2482336) (not e!3625405))))

(assert (=> b!5922111 (= res!2482336 lt!2310070)))

(declare-fun b!5922112 () Bool)

(assert (=> b!5922112 (= e!3625409 (not lt!2310070))))

(declare-fun b!5922113 () Bool)

(declare-fun res!2482335 () Bool)

(assert (=> b!5922113 (=> (not res!2482335) (not e!3625405))))

(assert (=> b!5922113 (= res!2482335 (isEmpty!35950 (tail!11569 (t!377605 s!2326))))))

(declare-fun b!5922114 () Bool)

(assert (=> b!5922114 (= e!3625405 (= (head!12484 (t!377605 s!2326)) (c!1052179 (regTwo!32454 r!7292))))))

(declare-fun b!5922115 () Bool)

(declare-fun e!3625407 () Bool)

(assert (=> b!5922115 (= e!3625407 (matchR!8154 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (t!377605 s!2326))) (tail!11569 (t!377605 s!2326))))))

(declare-fun b!5922116 () Bool)

(declare-fun res!2482334 () Bool)

(assert (=> b!5922116 (=> res!2482334 e!3625403)))

(assert (=> b!5922116 (= res!2482334 (not (isEmpty!35950 (tail!11569 (t!377605 s!2326)))))))

(declare-fun b!5922109 () Bool)

(declare-fun res!2482333 () Bool)

(assert (=> b!5922109 (=> (not res!2482333) (not e!3625405))))

(assert (=> b!5922109 (= res!2482333 (not call!469623))))

(declare-fun d!1857093 () Bool)

(assert (=> d!1857093 e!3625404))

(declare-fun c!1052555 () Bool)

(assert (=> d!1857093 (= c!1052555 ((_ is EmptyExpr!15971) (regTwo!32454 r!7292)))))

(assert (=> d!1857093 (= lt!2310070 e!3625407)))

(declare-fun c!1052557 () Bool)

(assert (=> d!1857093 (= c!1052557 (isEmpty!35950 (t!377605 s!2326)))))

(assert (=> d!1857093 (validRegex!7707 (regTwo!32454 r!7292))))

(assert (=> d!1857093 (= (matchR!8154 (regTwo!32454 r!7292) (t!377605 s!2326)) lt!2310070)))

(declare-fun b!5922117 () Bool)

(assert (=> b!5922117 (= e!3625407 (nullable!5966 (regTwo!32454 r!7292)))))

(declare-fun b!5922118 () Bool)

(assert (=> b!5922118 (= e!3625406 e!3625408)))

(declare-fun res!2482338 () Bool)

(assert (=> b!5922118 (=> (not res!2482338) (not e!3625408))))

(assert (=> b!5922118 (= res!2482338 (not lt!2310070))))

(assert (= (and d!1857093 c!1052557) b!5922117))

(assert (= (and d!1857093 (not c!1052557)) b!5922115))

(assert (= (and d!1857093 c!1052555) b!5922105))

(assert (= (and d!1857093 (not c!1052555)) b!5922110))

(assert (= (and b!5922110 c!1052556) b!5922112))

(assert (= (and b!5922110 (not c!1052556)) b!5922106))

(assert (= (and b!5922106 (not res!2482340)) b!5922111))

(assert (= (and b!5922111 res!2482336) b!5922109))

(assert (= (and b!5922109 res!2482333) b!5922113))

(assert (= (and b!5922113 res!2482335) b!5922114))

(assert (= (and b!5922111 (not res!2482337)) b!5922118))

(assert (= (and b!5922118 res!2482338) b!5922107))

(assert (= (and b!5922107 (not res!2482339)) b!5922116))

(assert (= (and b!5922116 (not res!2482334)) b!5922108))

(assert (= (or b!5922105 b!5922107 b!5922109) bm!469618))

(declare-fun m!6817698 () Bool)

(assert (=> b!5922113 m!6817698))

(assert (=> b!5922113 m!6817698))

(declare-fun m!6817700 () Bool)

(assert (=> b!5922113 m!6817700))

(declare-fun m!6817702 () Bool)

(assert (=> b!5922115 m!6817702))

(assert (=> b!5922115 m!6817702))

(declare-fun m!6817704 () Bool)

(assert (=> b!5922115 m!6817704))

(assert (=> b!5922115 m!6817698))

(assert (=> b!5922115 m!6817704))

(assert (=> b!5922115 m!6817698))

(declare-fun m!6817706 () Bool)

(assert (=> b!5922115 m!6817706))

(declare-fun m!6817708 () Bool)

(assert (=> d!1857093 m!6817708))

(assert (=> d!1857093 m!6816958))

(assert (=> b!5922114 m!6817702))

(assert (=> bm!469618 m!6817708))

(assert (=> b!5922116 m!6817698))

(assert (=> b!5922116 m!6817698))

(assert (=> b!5922116 m!6817700))

(assert (=> b!5922108 m!6817702))

(assert (=> b!5922117 m!6816960))

(assert (=> b!5921208 d!1857093))

(declare-fun d!1857095 () Bool)

(declare-fun res!2482341 () Bool)

(declare-fun e!3625410 () Bool)

(assert (=> d!1857095 (=> res!2482341 e!3625410)))

(assert (=> d!1857095 (= res!2482341 ((_ is Nil!64088) (exprs!5855 setElem!40182)))))

(assert (=> d!1857095 (= (forall!15054 (exprs!5855 setElem!40182) lambda!323032) e!3625410)))

(declare-fun b!5922119 () Bool)

(declare-fun e!3625411 () Bool)

(assert (=> b!5922119 (= e!3625410 e!3625411)))

(declare-fun res!2482342 () Bool)

(assert (=> b!5922119 (=> (not res!2482342) (not e!3625411))))

(assert (=> b!5922119 (= res!2482342 (dynLambda!25057 lambda!323032 (h!70536 (exprs!5855 setElem!40182))))))

(declare-fun b!5922120 () Bool)

(assert (=> b!5922120 (= e!3625411 (forall!15054 (t!377603 (exprs!5855 setElem!40182)) lambda!323032))))

(assert (= (and d!1857095 (not res!2482341)) b!5922119))

(assert (= (and b!5922119 res!2482342) b!5922120))

(declare-fun b_lambda!222445 () Bool)

(assert (=> (not b_lambda!222445) (not b!5922119)))

(declare-fun m!6817710 () Bool)

(assert (=> b!5922119 m!6817710))

(declare-fun m!6817712 () Bool)

(assert (=> b!5922120 m!6817712))

(assert (=> d!1856903 d!1857095))

(assert (=> b!5921557 d!1856871))

(declare-fun d!1857097 () Bool)

(assert (=> d!1857097 (= (nullable!5966 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))) (nullableFct!1937 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))

(declare-fun bs!1401686 () Bool)

(assert (= bs!1401686 d!1857097))

(declare-fun m!6817714 () Bool)

(assert (=> bs!1401686 m!6817714))

(assert (=> b!5921227 d!1857097))

(declare-fun d!1857099 () Bool)

(assert (=> d!1857099 (= (head!12484 (tail!11569 s!2326)) (h!70538 (tail!11569 s!2326)))))

(assert (=> b!5921387 d!1857099))

(declare-fun d!1857101 () Bool)

(assert (=> d!1857101 (= ($colon$colon!1858 (exprs!5855 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453))) (ite (or c!1052453 c!1052452) (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))) (Cons!64088 (ite (or c!1052453 c!1052452) (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (exprs!5855 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)))))))

(assert (=> bm!469536 d!1857101))

(declare-fun d!1857103 () Bool)

(assert (=> d!1857103 (= (head!12484 (_2!36253 (get!22069 lt!2309996))) (h!70538 (_2!36253 (get!22069 lt!2309996))))))

(assert (=> b!5921174 d!1857103))

(declare-fun d!1857105 () Bool)

(assert (=> d!1857105 (= (isEmpty!35950 (tail!11569 (_1!36253 (get!22069 lt!2309996)))) ((_ is Nil!64090) (tail!11569 (_1!36253 (get!22069 lt!2309996)))))))

(assert (=> b!5921534 d!1857105))

(declare-fun d!1857107 () Bool)

(assert (=> d!1857107 (= (tail!11569 (_1!36253 (get!22069 lt!2309996))) (t!377605 (_1!36253 (get!22069 lt!2309996))))))

(assert (=> b!5921534 d!1857107))

(assert (=> b!5921483 d!1856779))

(declare-fun d!1857109 () Bool)

(assert (=> d!1857109 (= (nullable!5966 (reg!16300 (regOne!32454 r!7292))) (nullableFct!1937 (reg!16300 (regOne!32454 r!7292))))))

(declare-fun bs!1401687 () Bool)

(assert (= bs!1401687 d!1857109))

(declare-fun m!6817716 () Bool)

(assert (=> bs!1401687 m!6817716))

(assert (=> b!5921218 d!1857109))

(declare-fun d!1857111 () Bool)

(declare-fun res!2482347 () Bool)

(declare-fun e!3625417 () Bool)

(assert (=> d!1857111 (=> res!2482347 e!3625417)))

(assert (=> d!1857111 (= res!2482347 ((_ is ElementMatch!15971) (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))))))

(assert (=> d!1857111 (= (validRegex!7707 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))) e!3625417)))

(declare-fun b!5922121 () Bool)

(declare-fun e!3625418 () Bool)

(declare-fun e!3625416 () Bool)

(assert (=> b!5922121 (= e!3625418 e!3625416)))

(declare-fun res!2482344 () Bool)

(assert (=> b!5922121 (= res!2482344 (not (nullable!5966 (reg!16300 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))))))))

(assert (=> b!5922121 (=> (not res!2482344) (not e!3625416))))

(declare-fun bm!469619 () Bool)

(declare-fun c!1052558 () Bool)

(declare-fun call!469626 () Bool)

(assert (=> bm!469619 (= call!469626 (validRegex!7707 (ite c!1052558 (regTwo!32455 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))) (regTwo!32454 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))))))))

(declare-fun b!5922122 () Bool)

(declare-fun res!2482346 () Bool)

(declare-fun e!3625413 () Bool)

(assert (=> b!5922122 (=> res!2482346 e!3625413)))

(assert (=> b!5922122 (= res!2482346 (not ((_ is Concat!24816) (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024))))))))

(declare-fun e!3625412 () Bool)

(assert (=> b!5922122 (= e!3625412 e!3625413)))

(declare-fun b!5922123 () Bool)

(declare-fun res!2482343 () Bool)

(declare-fun e!3625414 () Bool)

(assert (=> b!5922123 (=> (not res!2482343) (not e!3625414))))

(declare-fun call!469625 () Bool)

(assert (=> b!5922123 (= res!2482343 call!469625)))

(assert (=> b!5922123 (= e!3625412 e!3625414)))

(declare-fun bm!469620 () Bool)

(declare-fun call!469624 () Bool)

(assert (=> bm!469620 (= call!469625 call!469624)))

(declare-fun b!5922124 () Bool)

(assert (=> b!5922124 (= e!3625416 call!469624)))

(declare-fun b!5922125 () Bool)

(declare-fun e!3625415 () Bool)

(assert (=> b!5922125 (= e!3625415 call!469626)))

(declare-fun b!5922126 () Bool)

(assert (=> b!5922126 (= e!3625413 e!3625415)))

(declare-fun res!2482345 () Bool)

(assert (=> b!5922126 (=> (not res!2482345) (not e!3625415))))

(assert (=> b!5922126 (= res!2482345 call!469625)))

(declare-fun b!5922127 () Bool)

(assert (=> b!5922127 (= e!3625418 e!3625412)))

(assert (=> b!5922127 (= c!1052558 ((_ is Union!15971) (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))))))

(declare-fun b!5922128 () Bool)

(assert (=> b!5922128 (= e!3625414 call!469626)))

(declare-fun bm!469621 () Bool)

(declare-fun c!1052559 () Bool)

(assert (=> bm!469621 (= call!469624 (validRegex!7707 (ite c!1052559 (reg!16300 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))) (ite c!1052558 (regOne!32455 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))) (regOne!32454 (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024))))))))))

(declare-fun b!5922129 () Bool)

(assert (=> b!5922129 (= e!3625417 e!3625418)))

(assert (=> b!5922129 (= c!1052559 ((_ is Star!15971) (ite c!1052447 (reg!16300 lt!2310024) (ite c!1052446 (regOne!32455 lt!2310024) (regOne!32454 lt!2310024)))))))

(assert (= (and d!1857111 (not res!2482347)) b!5922129))

(assert (= (and b!5922129 c!1052559) b!5922121))

(assert (= (and b!5922129 (not c!1052559)) b!5922127))

(assert (= (and b!5922121 res!2482344) b!5922124))

(assert (= (and b!5922127 c!1052558) b!5922123))

(assert (= (and b!5922127 (not c!1052558)) b!5922122))

(assert (= (and b!5922123 res!2482343) b!5922128))

(assert (= (and b!5922122 (not res!2482346)) b!5922126))

(assert (= (and b!5922126 res!2482345) b!5922125))

(assert (= (or b!5922128 b!5922125) bm!469619))

(assert (= (or b!5922123 b!5922126) bm!469620))

(assert (= (or b!5922124 bm!469620) bm!469621))

(declare-fun m!6817718 () Bool)

(assert (=> b!5922121 m!6817718))

(declare-fun m!6817720 () Bool)

(assert (=> bm!469619 m!6817720))

(declare-fun m!6817722 () Bool)

(assert (=> bm!469621 m!6817722))

(assert (=> bm!469533 d!1857111))

(declare-fun d!1857113 () Bool)

(assert (=> d!1857113 (= (isEmpty!35949 lt!2309996) (not ((_ is Some!15861) lt!2309996)))))

(assert (=> d!1856843 d!1857113))

(declare-fun d!1857115 () Bool)

(declare-fun res!2482352 () Bool)

(declare-fun e!3625424 () Bool)

(assert (=> d!1857115 (=> res!2482352 e!3625424)))

(assert (=> d!1857115 (= res!2482352 ((_ is ElementMatch!15971) (h!70536 (exprs!5855 setElem!40176))))))

(assert (=> d!1857115 (= (validRegex!7707 (h!70536 (exprs!5855 setElem!40176))) e!3625424)))

(declare-fun b!5922130 () Bool)

(declare-fun e!3625425 () Bool)

(declare-fun e!3625423 () Bool)

(assert (=> b!5922130 (= e!3625425 e!3625423)))

(declare-fun res!2482349 () Bool)

(assert (=> b!5922130 (= res!2482349 (not (nullable!5966 (reg!16300 (h!70536 (exprs!5855 setElem!40176))))))))

(assert (=> b!5922130 (=> (not res!2482349) (not e!3625423))))

(declare-fun bm!469622 () Bool)

(declare-fun call!469629 () Bool)

(declare-fun c!1052560 () Bool)

(assert (=> bm!469622 (= call!469629 (validRegex!7707 (ite c!1052560 (regTwo!32455 (h!70536 (exprs!5855 setElem!40176))) (regTwo!32454 (h!70536 (exprs!5855 setElem!40176))))))))

(declare-fun b!5922131 () Bool)

(declare-fun res!2482351 () Bool)

(declare-fun e!3625420 () Bool)

(assert (=> b!5922131 (=> res!2482351 e!3625420)))

(assert (=> b!5922131 (= res!2482351 (not ((_ is Concat!24816) (h!70536 (exprs!5855 setElem!40176)))))))

(declare-fun e!3625419 () Bool)

(assert (=> b!5922131 (= e!3625419 e!3625420)))

(declare-fun b!5922132 () Bool)

(declare-fun res!2482348 () Bool)

(declare-fun e!3625421 () Bool)

(assert (=> b!5922132 (=> (not res!2482348) (not e!3625421))))

(declare-fun call!469628 () Bool)

(assert (=> b!5922132 (= res!2482348 call!469628)))

(assert (=> b!5922132 (= e!3625419 e!3625421)))

(declare-fun bm!469623 () Bool)

(declare-fun call!469627 () Bool)

(assert (=> bm!469623 (= call!469628 call!469627)))

(declare-fun b!5922133 () Bool)

(assert (=> b!5922133 (= e!3625423 call!469627)))

(declare-fun b!5922134 () Bool)

(declare-fun e!3625422 () Bool)

(assert (=> b!5922134 (= e!3625422 call!469629)))

(declare-fun b!5922135 () Bool)

(assert (=> b!5922135 (= e!3625420 e!3625422)))

(declare-fun res!2482350 () Bool)

(assert (=> b!5922135 (=> (not res!2482350) (not e!3625422))))

(assert (=> b!5922135 (= res!2482350 call!469628)))

(declare-fun b!5922136 () Bool)

(assert (=> b!5922136 (= e!3625425 e!3625419)))

(assert (=> b!5922136 (= c!1052560 ((_ is Union!15971) (h!70536 (exprs!5855 setElem!40176))))))

(declare-fun b!5922137 () Bool)

(assert (=> b!5922137 (= e!3625421 call!469629)))

(declare-fun bm!469624 () Bool)

(declare-fun c!1052561 () Bool)

(assert (=> bm!469624 (= call!469627 (validRegex!7707 (ite c!1052561 (reg!16300 (h!70536 (exprs!5855 setElem!40176))) (ite c!1052560 (regOne!32455 (h!70536 (exprs!5855 setElem!40176))) (regOne!32454 (h!70536 (exprs!5855 setElem!40176)))))))))

(declare-fun b!5922138 () Bool)

(assert (=> b!5922138 (= e!3625424 e!3625425)))

(assert (=> b!5922138 (= c!1052561 ((_ is Star!15971) (h!70536 (exprs!5855 setElem!40176))))))

(assert (= (and d!1857115 (not res!2482352)) b!5922138))

(assert (= (and b!5922138 c!1052561) b!5922130))

(assert (= (and b!5922138 (not c!1052561)) b!5922136))

(assert (= (and b!5922130 res!2482349) b!5922133))

(assert (= (and b!5922136 c!1052560) b!5922132))

(assert (= (and b!5922136 (not c!1052560)) b!5922131))

(assert (= (and b!5922132 res!2482348) b!5922137))

(assert (= (and b!5922131 (not res!2482351)) b!5922135))

(assert (= (and b!5922135 res!2482350) b!5922134))

(assert (= (or b!5922137 b!5922134) bm!469622))

(assert (= (or b!5922132 b!5922135) bm!469623))

(assert (= (or b!5922133 bm!469623) bm!469624))

(declare-fun m!6817724 () Bool)

(assert (=> b!5922130 m!6817724))

(declare-fun m!6817726 () Bool)

(assert (=> bm!469622 m!6817726))

(declare-fun m!6817728 () Bool)

(assert (=> bm!469624 m!6817728))

(assert (=> bs!1401604 d!1857115))

(declare-fun d!1857117 () Bool)

(assert (=> d!1857117 true))

(assert (=> d!1857117 true))

(declare-fun res!2482353 () Bool)

(assert (=> d!1857117 (= (choose!44653 lambda!322996) res!2482353)))

(assert (=> d!1856771 d!1857117))

(declare-fun e!3625428 () (InoxSet Context!10710))

(declare-fun b!5922139 () Bool)

(declare-fun call!469630 () (InoxSet Context!10710))

(assert (=> b!5922139 (= e!3625428 ((_ map or) call!469630 (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))) (h!70538 s!2326))))))

(declare-fun b!5922140 () Bool)

(declare-fun e!3625426 () Bool)

(assert (=> b!5922140 (= e!3625426 (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))))))

(declare-fun bm!469625 () Bool)

(assert (=> bm!469625 (= call!469630 (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))) (h!70538 s!2326)))))

(declare-fun d!1857119 () Bool)

(declare-fun c!1052563 () Bool)

(assert (=> d!1857119 (= c!1052563 e!3625426)))

(declare-fun res!2482354 () Bool)

(assert (=> d!1857119 (=> (not res!2482354) (not e!3625426))))

(assert (=> d!1857119 (= res!2482354 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))))

(assert (=> d!1857119 (= (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (h!70538 s!2326)) e!3625428)))

(declare-fun b!5922141 () Bool)

(declare-fun e!3625427 () (InoxSet Context!10710))

(assert (=> b!5922141 (= e!3625427 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922142 () Bool)

(assert (=> b!5922142 (= e!3625428 e!3625427)))

(declare-fun c!1052562 () Bool)

(assert (=> b!5922142 (= c!1052562 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))))

(declare-fun b!5922143 () Bool)

(assert (=> b!5922143 (= e!3625427 call!469630)))

(assert (= (and d!1857119 res!2482354) b!5922140))

(assert (= (and d!1857119 c!1052563) b!5922139))

(assert (= (and d!1857119 (not c!1052563)) b!5922142))

(assert (= (and b!5922142 c!1052562) b!5922143))

(assert (= (and b!5922142 (not c!1052562)) b!5922141))

(assert (= (or b!5922139 b!5922143) bm!469625))

(declare-fun m!6817730 () Bool)

(assert (=> b!5922139 m!6817730))

(declare-fun m!6817732 () Bool)

(assert (=> b!5922140 m!6817732))

(declare-fun m!6817734 () Bool)

(assert (=> bm!469625 m!6817734))

(assert (=> b!5921340 d!1857119))

(declare-fun d!1857121 () Bool)

(declare-fun res!2482355 () Bool)

(declare-fun e!3625429 () Bool)

(assert (=> d!1857121 (=> res!2482355 e!3625429)))

(assert (=> d!1857121 (= res!2482355 ((_ is Nil!64089) res!2482187))))

(assert (=> d!1857121 (= (noDuplicate!1828 res!2482187) e!3625429)))

(declare-fun b!5922144 () Bool)

(declare-fun e!3625430 () Bool)

(assert (=> b!5922144 (= e!3625429 e!3625430)))

(declare-fun res!2482356 () Bool)

(assert (=> b!5922144 (=> (not res!2482356) (not e!3625430))))

(assert (=> b!5922144 (= res!2482356 (not (contains!19956 (t!377604 res!2482187) (h!70537 res!2482187))))))

(declare-fun b!5922145 () Bool)

(assert (=> b!5922145 (= e!3625430 (noDuplicate!1828 (t!377604 res!2482187)))))

(assert (= (and d!1857121 (not res!2482355)) b!5922144))

(assert (= (and b!5922144 res!2482356) b!5922145))

(declare-fun m!6817736 () Bool)

(assert (=> b!5922144 m!6817736))

(declare-fun m!6817738 () Bool)

(assert (=> b!5922145 m!6817738))

(assert (=> d!1856893 d!1857121))

(declare-fun bs!1401688 () Bool)

(declare-fun d!1857123 () Bool)

(assert (= bs!1401688 (and d!1857123 d!1856735)))

(declare-fun lambda!323053 () Int)

(assert (=> bs!1401688 (= lambda!323053 lambda!323014)))

(declare-fun bs!1401689 () Bool)

(assert (= bs!1401689 (and d!1857123 d!1856717)))

(assert (=> bs!1401689 (= lambda!323053 lambda!323001)))

(declare-fun bs!1401690 () Bool)

(assert (= bs!1401690 (and d!1857123 d!1856903)))

(assert (=> bs!1401690 (= lambda!323053 lambda!323032)))

(declare-fun bs!1401691 () Bool)

(assert (= bs!1401691 (and d!1857123 d!1856873)))

(assert (=> bs!1401691 (= lambda!323053 lambda!323029)))

(declare-fun bs!1401692 () Bool)

(assert (= bs!1401692 (and d!1857123 d!1856887)))

(assert (=> bs!1401692 (= lambda!323053 lambda!323031)))

(declare-fun bs!1401693 () Bool)

(assert (= bs!1401693 (and d!1857123 d!1856675)))

(assert (=> bs!1401693 (= lambda!323053 lambda!322975)))

(declare-fun bs!1401694 () Bool)

(assert (= bs!1401694 (and d!1857123 d!1856641)))

(assert (=> bs!1401694 (= lambda!323053 lambda!322963)))

(declare-fun bs!1401695 () Bool)

(assert (= bs!1401695 (and d!1857123 d!1856733)))

(assert (=> bs!1401695 (= lambda!323053 lambda!323011)))

(declare-fun bs!1401696 () Bool)

(assert (= bs!1401696 (and d!1857123 d!1856723)))

(assert (=> bs!1401696 (= lambda!323053 lambda!323002)))

(declare-fun bs!1401697 () Bool)

(assert (= bs!1401697 (and d!1857123 d!1856817)))

(assert (=> bs!1401697 (= lambda!323053 lambda!323024)))

(declare-fun bs!1401698 () Bool)

(assert (= bs!1401698 (and d!1857123 d!1856951)))

(assert (=> bs!1401698 (= lambda!323053 lambda!323038)))

(assert (=> d!1857123 (= (inv!83174 setElem!40189) (forall!15054 (exprs!5855 setElem!40189) lambda!323053))))

(declare-fun bs!1401699 () Bool)

(assert (= bs!1401699 d!1857123))

(declare-fun m!6817740 () Bool)

(assert (=> bs!1401699 m!6817740))

(assert (=> setNonEmpty!40189 d!1857123))

(assert (=> d!1856811 d!1856727))

(assert (=> d!1856811 d!1856725))

(declare-fun d!1857125 () Bool)

(assert (=> d!1857125 (= (isEmpty!35950 (tail!11569 (tail!11569 s!2326))) ((_ is Nil!64090) (tail!11569 (tail!11569 s!2326))))))

(assert (=> b!5921395 d!1857125))

(declare-fun d!1857127 () Bool)

(assert (=> d!1857127 (= (tail!11569 (tail!11569 s!2326)) (t!377605 (tail!11569 s!2326)))))

(assert (=> b!5921395 d!1857127))

(declare-fun bs!1401700 () Bool)

(declare-fun d!1857129 () Bool)

(assert (= bs!1401700 (and d!1857129 d!1856735)))

(declare-fun lambda!323054 () Int)

(assert (=> bs!1401700 (= lambda!323054 lambda!323014)))

(declare-fun bs!1401701 () Bool)

(assert (= bs!1401701 (and d!1857129 d!1856717)))

(assert (=> bs!1401701 (= lambda!323054 lambda!323001)))

(declare-fun bs!1401702 () Bool)

(assert (= bs!1401702 (and d!1857129 d!1856903)))

(assert (=> bs!1401702 (= lambda!323054 lambda!323032)))

(declare-fun bs!1401703 () Bool)

(assert (= bs!1401703 (and d!1857129 d!1856873)))

(assert (=> bs!1401703 (= lambda!323054 lambda!323029)))

(declare-fun bs!1401704 () Bool)

(assert (= bs!1401704 (and d!1857129 d!1856887)))

(assert (=> bs!1401704 (= lambda!323054 lambda!323031)))

(declare-fun bs!1401705 () Bool)

(assert (= bs!1401705 (and d!1857129 d!1856675)))

(assert (=> bs!1401705 (= lambda!323054 lambda!322975)))

(declare-fun bs!1401706 () Bool)

(assert (= bs!1401706 (and d!1857129 d!1857123)))

(assert (=> bs!1401706 (= lambda!323054 lambda!323053)))

(declare-fun bs!1401707 () Bool)

(assert (= bs!1401707 (and d!1857129 d!1856641)))

(assert (=> bs!1401707 (= lambda!323054 lambda!322963)))

(declare-fun bs!1401708 () Bool)

(assert (= bs!1401708 (and d!1857129 d!1856733)))

(assert (=> bs!1401708 (= lambda!323054 lambda!323011)))

(declare-fun bs!1401709 () Bool)

(assert (= bs!1401709 (and d!1857129 d!1856723)))

(assert (=> bs!1401709 (= lambda!323054 lambda!323002)))

(declare-fun bs!1401710 () Bool)

(assert (= bs!1401710 (and d!1857129 d!1856817)))

(assert (=> bs!1401710 (= lambda!323054 lambda!323024)))

(declare-fun bs!1401711 () Bool)

(assert (= bs!1401711 (and d!1857129 d!1856951)))

(assert (=> bs!1401711 (= lambda!323054 lambda!323038)))

(assert (=> d!1857129 (= (inv!83174 (h!70537 (t!377604 (t!377604 zl!343)))) (forall!15054 (exprs!5855 (h!70537 (t!377604 (t!377604 zl!343)))) lambda!323054))))

(declare-fun bs!1401712 () Bool)

(assert (= bs!1401712 d!1857129))

(declare-fun m!6817742 () Bool)

(assert (=> bs!1401712 m!6817742))

(assert (=> b!5921748 d!1857129))

(assert (=> bm!469488 d!1856785))

(declare-fun d!1857131 () Bool)

(assert (=> d!1857131 (= ($colon$colon!1858 (exprs!5855 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454))) (ite (or c!1052461 c!1052460) (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))) (Cons!64088 (ite (or c!1052461 c!1052460) (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (exprs!5855 (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)))))))

(assert (=> bm!469543 d!1857131))

(assert (=> bs!1401602 d!1857079))

(declare-fun d!1857133 () Bool)

(declare-fun c!1052564 () Bool)

(assert (=> d!1857133 (= c!1052564 ((_ is Nil!64089) (t!377604 lt!2309955)))))

(declare-fun e!3625431 () (InoxSet Context!10710))

(assert (=> d!1857133 (= (content!11799 (t!377604 lt!2309955)) e!3625431)))

(declare-fun b!5922146 () Bool)

(assert (=> b!5922146 (= e!3625431 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922147 () Bool)

(assert (=> b!5922147 (= e!3625431 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) (h!70537 (t!377604 lt!2309955)) true) (content!11799 (t!377604 (t!377604 lt!2309955)))))))

(assert (= (and d!1857133 c!1052564) b!5922146))

(assert (= (and d!1857133 (not c!1052564)) b!5922147))

(declare-fun m!6817744 () Bool)

(assert (=> b!5922147 m!6817744))

(declare-fun m!6817746 () Bool)

(assert (=> b!5922147 m!6817746))

(assert (=> b!5921250 d!1857133))

(declare-fun d!1857135 () Bool)

(declare-fun res!2482361 () Bool)

(declare-fun e!3625437 () Bool)

(assert (=> d!1857135 (=> res!2482361 e!3625437)))

(assert (=> d!1857135 (= res!2482361 ((_ is ElementMatch!15971) (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))

(assert (=> d!1857135 (= (validRegex!7707 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))) e!3625437)))

(declare-fun b!5922148 () Bool)

(declare-fun e!3625438 () Bool)

(declare-fun e!3625436 () Bool)

(assert (=> b!5922148 (= e!3625438 e!3625436)))

(declare-fun res!2482358 () Bool)

(assert (=> b!5922148 (= res!2482358 (not (nullable!5966 (reg!16300 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))))

(assert (=> b!5922148 (=> (not res!2482358) (not e!3625436))))

(declare-fun bm!469626 () Bool)

(declare-fun call!469633 () Bool)

(declare-fun c!1052565 () Bool)

(assert (=> bm!469626 (= call!469633 (validRegex!7707 (ite c!1052565 (regTwo!32455 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))) (regTwo!32454 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))))

(declare-fun b!5922149 () Bool)

(declare-fun res!2482360 () Bool)

(declare-fun e!3625433 () Bool)

(assert (=> b!5922149 (=> res!2482360 e!3625433)))

(assert (=> b!5922149 (= res!2482360 (not ((_ is Concat!24816) (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))))

(declare-fun e!3625432 () Bool)

(assert (=> b!5922149 (= e!3625432 e!3625433)))

(declare-fun b!5922150 () Bool)

(declare-fun res!2482357 () Bool)

(declare-fun e!3625434 () Bool)

(assert (=> b!5922150 (=> (not res!2482357) (not e!3625434))))

(declare-fun call!469632 () Bool)

(assert (=> b!5922150 (= res!2482357 call!469632)))

(assert (=> b!5922150 (= e!3625432 e!3625434)))

(declare-fun bm!469627 () Bool)

(declare-fun call!469631 () Bool)

(assert (=> bm!469627 (= call!469632 call!469631)))

(declare-fun b!5922151 () Bool)

(assert (=> b!5922151 (= e!3625436 call!469631)))

(declare-fun b!5922152 () Bool)

(declare-fun e!3625435 () Bool)

(assert (=> b!5922152 (= e!3625435 call!469633)))

(declare-fun b!5922153 () Bool)

(assert (=> b!5922153 (= e!3625433 e!3625435)))

(declare-fun res!2482359 () Bool)

(assert (=> b!5922153 (=> (not res!2482359) (not e!3625435))))

(assert (=> b!5922153 (= res!2482359 call!469632)))

(declare-fun b!5922154 () Bool)

(assert (=> b!5922154 (= e!3625438 e!3625432)))

(assert (=> b!5922154 (= c!1052565 ((_ is Union!15971) (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))

(declare-fun b!5922155 () Bool)

(assert (=> b!5922155 (= e!3625434 call!469633)))

(declare-fun bm!469628 () Bool)

(declare-fun c!1052566 () Bool)

(assert (=> bm!469628 (= call!469631 (validRegex!7707 (ite c!1052566 (reg!16300 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))) (ite c!1052565 (regOne!32455 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))) (regOne!32454 (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))))))

(declare-fun b!5922156 () Bool)

(assert (=> b!5922156 (= e!3625437 e!3625438)))

(assert (=> b!5922156 (= c!1052566 ((_ is Star!15971) (ite c!1052439 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (ite c!1052438 (regOne!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regOne!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))

(assert (= (and d!1857135 (not res!2482361)) b!5922156))

(assert (= (and b!5922156 c!1052566) b!5922148))

(assert (= (and b!5922156 (not c!1052566)) b!5922154))

(assert (= (and b!5922148 res!2482358) b!5922151))

(assert (= (and b!5922154 c!1052565) b!5922150))

(assert (= (and b!5922154 (not c!1052565)) b!5922149))

(assert (= (and b!5922150 res!2482357) b!5922155))

(assert (= (and b!5922149 (not res!2482360)) b!5922153))

(assert (= (and b!5922153 res!2482359) b!5922152))

(assert (= (or b!5922155 b!5922152) bm!469626))

(assert (= (or b!5922150 b!5922153) bm!469627))

(assert (= (or b!5922151 bm!469627) bm!469628))

(declare-fun m!6817748 () Bool)

(assert (=> b!5922148 m!6817748))

(declare-fun m!6817750 () Bool)

(assert (=> bm!469626 m!6817750))

(declare-fun m!6817752 () Bool)

(assert (=> bm!469628 m!6817752))

(assert (=> bm!469527 d!1857135))

(declare-fun d!1857137 () Bool)

(assert (=> d!1857137 (= (head!12482 (t!377603 (exprs!5855 (h!70537 zl!343)))) (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> b!5921459 d!1857137))

(declare-fun bs!1401713 () Bool)

(declare-fun b!5922161 () Bool)

(assert (= bs!1401713 (and b!5922161 b!5921260)))

(declare-fun lambda!323055 () Int)

(assert (=> bs!1401713 (not (= lambda!323055 lambda!323023))))

(declare-fun bs!1401714 () Bool)

(assert (= bs!1401714 (and b!5922161 d!1856709)))

(assert (=> bs!1401714 (not (= lambda!323055 lambda!323000))))

(declare-fun bs!1401715 () Bool)

(assert (= bs!1401715 (and b!5922161 b!5921593)))

(assert (=> bs!1401715 (not (= lambda!323055 lambda!323037))))

(declare-fun bs!1401716 () Bool)

(assert (= bs!1401716 (and b!5922161 b!5920469)))

(assert (=> bs!1401716 (not (= lambda!323055 lambda!322949))))

(declare-fun bs!1401717 () Bool)

(assert (= bs!1401717 (and b!5922161 b!5920983)))

(assert (=> bs!1401717 (= (and (= (reg!16300 (regOne!32455 (regTwo!32455 r!7292))) (reg!16300 r!7292)) (= (regOne!32455 (regTwo!32455 r!7292)) r!7292)) (= lambda!323055 lambda!323007))))

(declare-fun bs!1401718 () Bool)

(assert (= bs!1401718 (and b!5922161 d!1856701)))

(assert (=> bs!1401718 (not (= lambda!323055 lambda!322996))))

(declare-fun bs!1401719 () Bool)

(assert (= bs!1401719 (and b!5922161 d!1856825)))

(assert (=> bs!1401719 (not (= lambda!323055 lambda!323027))))

(declare-fun bs!1401720 () Bool)

(assert (= bs!1401720 (and b!5922161 d!1856775)))

(assert (=> bs!1401720 (not (= lambda!323055 lambda!323020))))

(assert (=> bs!1401718 (not (= lambda!323055 lambda!322997))))

(declare-fun bs!1401721 () Bool)

(assert (= bs!1401721 (and b!5922161 b!5920984)))

(assert (=> bs!1401721 (not (= lambda!323055 lambda!323008))))

(declare-fun bs!1401722 () Bool)

(assert (= bs!1401722 (and b!5922161 b!5922099)))

(assert (=> bs!1401722 (not (= lambda!323055 lambda!323052))))

(declare-fun bs!1401723 () Bool)

(assert (= bs!1401723 (and b!5922161 b!5922098)))

(assert (=> bs!1401723 (= (and (= (reg!16300 (regOne!32455 (regTwo!32455 r!7292))) (reg!16300 (regTwo!32455 (regTwo!32455 r!7292)))) (= (regOne!32455 (regTwo!32455 r!7292)) (regTwo!32455 (regTwo!32455 r!7292)))) (= lambda!323055 lambda!323051))))

(declare-fun bs!1401724 () Bool)

(assert (= bs!1401724 (and b!5922161 b!5921259)))

(assert (=> bs!1401724 (= (and (= (reg!16300 (regOne!32455 (regTwo!32455 r!7292))) (reg!16300 (regOne!32455 r!7292))) (= (regOne!32455 (regTwo!32455 r!7292)) (regOne!32455 r!7292))) (= lambda!323055 lambda!323022))))

(assert (=> bs!1401716 (not (= lambda!323055 lambda!322948))))

(declare-fun bs!1401725 () Bool)

(assert (= bs!1401725 (and b!5922161 b!5921592)))

(assert (=> bs!1401725 (= (and (= (reg!16300 (regOne!32455 (regTwo!32455 r!7292))) (reg!16300 (regTwo!32455 r!7292))) (= (regOne!32455 (regTwo!32455 r!7292)) (regTwo!32455 r!7292))) (= lambda!323055 lambda!323036))))

(assert (=> bs!1401720 (not (= lambda!323055 lambda!323019))))

(assert (=> b!5922161 true))

(assert (=> b!5922161 true))

(declare-fun bs!1401726 () Bool)

(declare-fun b!5922162 () Bool)

(assert (= bs!1401726 (and b!5922162 b!5921260)))

(declare-fun lambda!323056 () Int)

(assert (=> bs!1401726 (= (and (= (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))) (regOne!32454 (regOne!32455 r!7292))) (= (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))) (regTwo!32454 (regOne!32455 r!7292)))) (= lambda!323056 lambda!323023))))

(declare-fun bs!1401727 () Bool)

(assert (= bs!1401727 (and b!5922162 d!1856709)))

(assert (=> bs!1401727 (not (= lambda!323056 lambda!323000))))

(declare-fun bs!1401728 () Bool)

(assert (= bs!1401728 (and b!5922162 b!5921593)))

(assert (=> bs!1401728 (= (and (= (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))) (regOne!32454 (regTwo!32455 r!7292))) (= (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))) (regTwo!32454 (regTwo!32455 r!7292)))) (= lambda!323056 lambda!323037))))

(declare-fun bs!1401729 () Bool)

(assert (= bs!1401729 (and b!5922162 b!5920469)))

(assert (=> bs!1401729 (= (and (= (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323056 lambda!322949))))

(declare-fun bs!1401730 () Bool)

(assert (= bs!1401730 (and b!5922162 b!5920983)))

(assert (=> bs!1401730 (not (= lambda!323056 lambda!323007))))

(declare-fun bs!1401731 () Bool)

(assert (= bs!1401731 (and b!5922162 b!5922161)))

(assert (=> bs!1401731 (not (= lambda!323056 lambda!323055))))

(declare-fun bs!1401732 () Bool)

(assert (= bs!1401732 (and b!5922162 d!1856701)))

(assert (=> bs!1401732 (not (= lambda!323056 lambda!322996))))

(declare-fun bs!1401733 () Bool)

(assert (= bs!1401733 (and b!5922162 d!1856825)))

(assert (=> bs!1401733 (not (= lambda!323056 lambda!323027))))

(declare-fun bs!1401734 () Bool)

(assert (= bs!1401734 (and b!5922162 d!1856775)))

(assert (=> bs!1401734 (= (and (= (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323056 lambda!323020))))

(assert (=> bs!1401732 (= (and (= (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323056 lambda!322997))))

(declare-fun bs!1401735 () Bool)

(assert (= bs!1401735 (and b!5922162 b!5920984)))

(assert (=> bs!1401735 (= (and (= (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323056 lambda!323008))))

(declare-fun bs!1401736 () Bool)

(assert (= bs!1401736 (and b!5922162 b!5922099)))

(assert (=> bs!1401736 (= (and (= (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))) (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292)))) (= (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))) (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))))) (= lambda!323056 lambda!323052))))

(declare-fun bs!1401737 () Bool)

(assert (= bs!1401737 (and b!5922162 b!5922098)))

(assert (=> bs!1401737 (not (= lambda!323056 lambda!323051))))

(declare-fun bs!1401738 () Bool)

(assert (= bs!1401738 (and b!5922162 b!5921259)))

(assert (=> bs!1401738 (not (= lambda!323056 lambda!323022))))

(assert (=> bs!1401729 (not (= lambda!323056 lambda!322948))))

(declare-fun bs!1401739 () Bool)

(assert (= bs!1401739 (and b!5922162 b!5921592)))

(assert (=> bs!1401739 (not (= lambda!323056 lambda!323036))))

(assert (=> bs!1401734 (not (= lambda!323056 lambda!323019))))

(assert (=> b!5922162 true))

(assert (=> b!5922162 true))

(declare-fun b!5922157 () Bool)

(declare-fun e!3625440 () Bool)

(declare-fun e!3625439 () Bool)

(assert (=> b!5922157 (= e!3625440 e!3625439)))

(declare-fun c!1052570 () Bool)

(assert (=> b!5922157 (= c!1052570 ((_ is Star!15971) (regOne!32455 (regTwo!32455 r!7292))))))

(declare-fun b!5922158 () Bool)

(declare-fun e!3625441 () Bool)

(declare-fun e!3625444 () Bool)

(assert (=> b!5922158 (= e!3625441 e!3625444)))

(declare-fun res!2482364 () Bool)

(assert (=> b!5922158 (= res!2482364 (not ((_ is EmptyLang!15971) (regOne!32455 (regTwo!32455 r!7292)))))))

(assert (=> b!5922158 (=> (not res!2482364) (not e!3625444))))

(declare-fun b!5922159 () Bool)

(declare-fun e!3625443 () Bool)

(assert (=> b!5922159 (= e!3625443 (= s!2326 (Cons!64090 (c!1052179 (regOne!32455 (regTwo!32455 r!7292))) Nil!64090)))))

(declare-fun b!5922160 () Bool)

(declare-fun call!469634 () Bool)

(assert (=> b!5922160 (= e!3625441 call!469634)))

(declare-fun e!3625445 () Bool)

(declare-fun call!469635 () Bool)

(assert (=> b!5922161 (= e!3625445 call!469635)))

(declare-fun bm!469629 () Bool)

(assert (=> bm!469629 (= call!469635 (Exists!3041 (ite c!1052570 lambda!323055 lambda!323056)))))

(assert (=> b!5922162 (= e!3625439 call!469635)))

(declare-fun b!5922163 () Bool)

(declare-fun e!3625442 () Bool)

(assert (=> b!5922163 (= e!3625440 e!3625442)))

(declare-fun res!2482363 () Bool)

(assert (=> b!5922163 (= res!2482363 (matchRSpec!3072 (regOne!32455 (regOne!32455 (regTwo!32455 r!7292))) s!2326))))

(assert (=> b!5922163 (=> res!2482363 e!3625442)))

(declare-fun b!5922164 () Bool)

(declare-fun res!2482362 () Bool)

(assert (=> b!5922164 (=> res!2482362 e!3625445)))

(assert (=> b!5922164 (= res!2482362 call!469634)))

(assert (=> b!5922164 (= e!3625439 e!3625445)))

(declare-fun b!5922165 () Bool)

(declare-fun c!1052569 () Bool)

(assert (=> b!5922165 (= c!1052569 ((_ is Union!15971) (regOne!32455 (regTwo!32455 r!7292))))))

(assert (=> b!5922165 (= e!3625443 e!3625440)))

(declare-fun d!1857139 () Bool)

(declare-fun c!1052567 () Bool)

(assert (=> d!1857139 (= c!1052567 ((_ is EmptyExpr!15971) (regOne!32455 (regTwo!32455 r!7292))))))

(assert (=> d!1857139 (= (matchRSpec!3072 (regOne!32455 (regTwo!32455 r!7292)) s!2326) e!3625441)))

(declare-fun bm!469630 () Bool)

(assert (=> bm!469630 (= call!469634 (isEmpty!35950 s!2326))))

(declare-fun b!5922166 () Bool)

(declare-fun c!1052568 () Bool)

(assert (=> b!5922166 (= c!1052568 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32455 r!7292))))))

(assert (=> b!5922166 (= e!3625444 e!3625443)))

(declare-fun b!5922167 () Bool)

(assert (=> b!5922167 (= e!3625442 (matchRSpec!3072 (regTwo!32455 (regOne!32455 (regTwo!32455 r!7292))) s!2326))))

(assert (= (and d!1857139 c!1052567) b!5922160))

(assert (= (and d!1857139 (not c!1052567)) b!5922158))

(assert (= (and b!5922158 res!2482364) b!5922166))

(assert (= (and b!5922166 c!1052568) b!5922159))

(assert (= (and b!5922166 (not c!1052568)) b!5922165))

(assert (= (and b!5922165 c!1052569) b!5922163))

(assert (= (and b!5922165 (not c!1052569)) b!5922157))

(assert (= (and b!5922163 (not res!2482363)) b!5922167))

(assert (= (and b!5922157 c!1052570) b!5922164))

(assert (= (and b!5922157 (not c!1052570)) b!5922162))

(assert (= (and b!5922164 (not res!2482362)) b!5922161))

(assert (= (or b!5922161 b!5922162) bm!469629))

(assert (= (or b!5922160 b!5922164) bm!469630))

(declare-fun m!6817754 () Bool)

(assert (=> bm!469629 m!6817754))

(declare-fun m!6817756 () Bool)

(assert (=> b!5922163 m!6817756))

(assert (=> bm!469630 m!6816874))

(declare-fun m!6817758 () Bool)

(assert (=> b!5922167 m!6817758))

(assert (=> b!5921594 d!1857139))

(declare-fun d!1857141 () Bool)

(assert (=> d!1857141 (= (isEmpty!35950 (_1!36253 (get!22069 lt!2309996))) ((_ is Nil!64090) (_1!36253 (get!22069 lt!2309996))))))

(assert (=> bm!469534 d!1857141))

(declare-fun d!1857143 () Bool)

(assert (=> d!1857143 (= (nullable!5966 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))) (nullableFct!1937 (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun bs!1401740 () Bool)

(assert (= bs!1401740 d!1857143))

(declare-fun m!6817760 () Bool)

(assert (=> bs!1401740 m!6817760))

(assert (=> b!5921164 d!1857143))

(declare-fun d!1857145 () Bool)

(declare-fun res!2482369 () Bool)

(declare-fun e!3625451 () Bool)

(assert (=> d!1857145 (=> res!2482369 e!3625451)))

(assert (=> d!1857145 (= res!2482369 ((_ is ElementMatch!15971) (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))))))

(assert (=> d!1857145 (= (validRegex!7707 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))) e!3625451)))

(declare-fun b!5922168 () Bool)

(declare-fun e!3625452 () Bool)

(declare-fun e!3625450 () Bool)

(assert (=> b!5922168 (= e!3625452 e!3625450)))

(declare-fun res!2482366 () Bool)

(assert (=> b!5922168 (= res!2482366 (not (nullable!5966 (reg!16300 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))))))))

(assert (=> b!5922168 (=> (not res!2482366) (not e!3625450))))

(declare-fun bm!469631 () Bool)

(declare-fun call!469638 () Bool)

(declare-fun c!1052571 () Bool)

(assert (=> bm!469631 (= call!469638 (validRegex!7707 (ite c!1052571 (regTwo!32455 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))) (regTwo!32454 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))))))))

(declare-fun b!5922169 () Bool)

(declare-fun res!2482368 () Bool)

(declare-fun e!3625447 () Bool)

(assert (=> b!5922169 (=> res!2482368 e!3625447)))

(assert (=> b!5922169 (= res!2482368 (not ((_ is Concat!24816) (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024)))))))

(declare-fun e!3625446 () Bool)

(assert (=> b!5922169 (= e!3625446 e!3625447)))

(declare-fun b!5922170 () Bool)

(declare-fun res!2482365 () Bool)

(declare-fun e!3625448 () Bool)

(assert (=> b!5922170 (=> (not res!2482365) (not e!3625448))))

(declare-fun call!469637 () Bool)

(assert (=> b!5922170 (= res!2482365 call!469637)))

(assert (=> b!5922170 (= e!3625446 e!3625448)))

(declare-fun bm!469632 () Bool)

(declare-fun call!469636 () Bool)

(assert (=> bm!469632 (= call!469637 call!469636)))

(declare-fun b!5922171 () Bool)

(assert (=> b!5922171 (= e!3625450 call!469636)))

(declare-fun b!5922172 () Bool)

(declare-fun e!3625449 () Bool)

(assert (=> b!5922172 (= e!3625449 call!469638)))

(declare-fun b!5922173 () Bool)

(assert (=> b!5922173 (= e!3625447 e!3625449)))

(declare-fun res!2482367 () Bool)

(assert (=> b!5922173 (=> (not res!2482367) (not e!3625449))))

(assert (=> b!5922173 (= res!2482367 call!469637)))

(declare-fun b!5922174 () Bool)

(assert (=> b!5922174 (= e!3625452 e!3625446)))

(assert (=> b!5922174 (= c!1052571 ((_ is Union!15971) (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))))))

(declare-fun b!5922175 () Bool)

(assert (=> b!5922175 (= e!3625448 call!469638)))

(declare-fun c!1052572 () Bool)

(declare-fun bm!469633 () Bool)

(assert (=> bm!469633 (= call!469636 (validRegex!7707 (ite c!1052572 (reg!16300 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))) (ite c!1052571 (regOne!32455 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))) (regOne!32454 (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024)))))))))

(declare-fun b!5922176 () Bool)

(assert (=> b!5922176 (= e!3625451 e!3625452)))

(assert (=> b!5922176 (= c!1052572 ((_ is Star!15971) (ite c!1052446 (regTwo!32455 lt!2310024) (regTwo!32454 lt!2310024))))))

(assert (= (and d!1857145 (not res!2482369)) b!5922176))

(assert (= (and b!5922176 c!1052572) b!5922168))

(assert (= (and b!5922176 (not c!1052572)) b!5922174))

(assert (= (and b!5922168 res!2482366) b!5922171))

(assert (= (and b!5922174 c!1052571) b!5922170))

(assert (= (and b!5922174 (not c!1052571)) b!5922169))

(assert (= (and b!5922170 res!2482365) b!5922175))

(assert (= (and b!5922169 (not res!2482368)) b!5922173))

(assert (= (and b!5922173 res!2482367) b!5922172))

(assert (= (or b!5922175 b!5922172) bm!469631))

(assert (= (or b!5922170 b!5922173) bm!469632))

(assert (= (or b!5922171 bm!469632) bm!469633))

(declare-fun m!6817762 () Bool)

(assert (=> b!5922168 m!6817762))

(declare-fun m!6817764 () Bool)

(assert (=> bm!469631 m!6817764))

(declare-fun m!6817766 () Bool)

(assert (=> bm!469633 m!6817766))

(assert (=> bm!469531 d!1857145))

(declare-fun b!5922177 () Bool)

(declare-fun e!3625454 () Bool)

(declare-fun lt!2310071 () Bool)

(declare-fun call!469639 () Bool)

(assert (=> b!5922177 (= e!3625454 (= lt!2310071 call!469639))))

(declare-fun b!5922178 () Bool)

(declare-fun res!2482377 () Bool)

(declare-fun e!3625456 () Bool)

(assert (=> b!5922178 (=> res!2482377 e!3625456)))

(assert (=> b!5922178 (= res!2482377 (not ((_ is ElementMatch!15971) (regTwo!32454 r!7292))))))

(declare-fun e!3625459 () Bool)

(assert (=> b!5922178 (= e!3625459 e!3625456)))

(declare-fun b!5922179 () Bool)

(declare-fun e!3625458 () Bool)

(declare-fun e!3625453 () Bool)

(assert (=> b!5922179 (= e!3625458 e!3625453)))

(declare-fun res!2482376 () Bool)

(assert (=> b!5922179 (=> res!2482376 e!3625453)))

(assert (=> b!5922179 (= res!2482376 call!469639)))

(declare-fun bm!469634 () Bool)

(assert (=> bm!469634 (= call!469639 (isEmpty!35950 (_2!36253 (get!22069 lt!2310034))))))

(declare-fun b!5922180 () Bool)

(assert (=> b!5922180 (= e!3625453 (not (= (head!12484 (_2!36253 (get!22069 lt!2310034))) (c!1052179 (regTwo!32454 r!7292)))))))

(declare-fun b!5922182 () Bool)

(assert (=> b!5922182 (= e!3625454 e!3625459)))

(declare-fun c!1052574 () Bool)

(assert (=> b!5922182 (= c!1052574 ((_ is EmptyLang!15971) (regTwo!32454 r!7292)))))

(declare-fun b!5922183 () Bool)

(declare-fun res!2482374 () Bool)

(assert (=> b!5922183 (=> res!2482374 e!3625456)))

(declare-fun e!3625455 () Bool)

(assert (=> b!5922183 (= res!2482374 e!3625455)))

(declare-fun res!2482373 () Bool)

(assert (=> b!5922183 (=> (not res!2482373) (not e!3625455))))

(assert (=> b!5922183 (= res!2482373 lt!2310071)))

(declare-fun b!5922184 () Bool)

(assert (=> b!5922184 (= e!3625459 (not lt!2310071))))

(declare-fun b!5922185 () Bool)

(declare-fun res!2482372 () Bool)

(assert (=> b!5922185 (=> (not res!2482372) (not e!3625455))))

(assert (=> b!5922185 (= res!2482372 (isEmpty!35950 (tail!11569 (_2!36253 (get!22069 lt!2310034)))))))

(declare-fun b!5922186 () Bool)

(assert (=> b!5922186 (= e!3625455 (= (head!12484 (_2!36253 (get!22069 lt!2310034))) (c!1052179 (regTwo!32454 r!7292))))))

(declare-fun b!5922187 () Bool)

(declare-fun e!3625457 () Bool)

(assert (=> b!5922187 (= e!3625457 (matchR!8154 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2310034)))) (tail!11569 (_2!36253 (get!22069 lt!2310034)))))))

(declare-fun b!5922188 () Bool)

(declare-fun res!2482371 () Bool)

(assert (=> b!5922188 (=> res!2482371 e!3625453)))

(assert (=> b!5922188 (= res!2482371 (not (isEmpty!35950 (tail!11569 (_2!36253 (get!22069 lt!2310034))))))))

(declare-fun b!5922181 () Bool)

(declare-fun res!2482370 () Bool)

(assert (=> b!5922181 (=> (not res!2482370) (not e!3625455))))

(assert (=> b!5922181 (= res!2482370 (not call!469639))))

(declare-fun d!1857147 () Bool)

(assert (=> d!1857147 e!3625454))

(declare-fun c!1052573 () Bool)

(assert (=> d!1857147 (= c!1052573 ((_ is EmptyExpr!15971) (regTwo!32454 r!7292)))))

(assert (=> d!1857147 (= lt!2310071 e!3625457)))

(declare-fun c!1052575 () Bool)

(assert (=> d!1857147 (= c!1052575 (isEmpty!35950 (_2!36253 (get!22069 lt!2310034))))))

(assert (=> d!1857147 (validRegex!7707 (regTwo!32454 r!7292))))

(assert (=> d!1857147 (= (matchR!8154 (regTwo!32454 r!7292) (_2!36253 (get!22069 lt!2310034))) lt!2310071)))

(declare-fun b!5922189 () Bool)

(assert (=> b!5922189 (= e!3625457 (nullable!5966 (regTwo!32454 r!7292)))))

(declare-fun b!5922190 () Bool)

(assert (=> b!5922190 (= e!3625456 e!3625458)))

(declare-fun res!2482375 () Bool)

(assert (=> b!5922190 (=> (not res!2482375) (not e!3625458))))

(assert (=> b!5922190 (= res!2482375 (not lt!2310071))))

(assert (= (and d!1857147 c!1052575) b!5922189))

(assert (= (and d!1857147 (not c!1052575)) b!5922187))

(assert (= (and d!1857147 c!1052573) b!5922177))

(assert (= (and d!1857147 (not c!1052573)) b!5922182))

(assert (= (and b!5922182 c!1052574) b!5922184))

(assert (= (and b!5922182 (not c!1052574)) b!5922178))

(assert (= (and b!5922178 (not res!2482377)) b!5922183))

(assert (= (and b!5922183 res!2482373) b!5922181))

(assert (= (and b!5922181 res!2482370) b!5922185))

(assert (= (and b!5922185 res!2482372) b!5922186))

(assert (= (and b!5922183 (not res!2482374)) b!5922190))

(assert (= (and b!5922190 res!2482375) b!5922179))

(assert (= (and b!5922179 (not res!2482376)) b!5922188))

(assert (= (and b!5922188 (not res!2482371)) b!5922180))

(assert (= (or b!5922177 b!5922179 b!5922181) bm!469634))

(declare-fun m!6817768 () Bool)

(assert (=> b!5922185 m!6817768))

(assert (=> b!5922185 m!6817768))

(declare-fun m!6817770 () Bool)

(assert (=> b!5922185 m!6817770))

(declare-fun m!6817772 () Bool)

(assert (=> b!5922187 m!6817772))

(assert (=> b!5922187 m!6817772))

(declare-fun m!6817774 () Bool)

(assert (=> b!5922187 m!6817774))

(assert (=> b!5922187 m!6817768))

(assert (=> b!5922187 m!6817774))

(assert (=> b!5922187 m!6817768))

(declare-fun m!6817776 () Bool)

(assert (=> b!5922187 m!6817776))

(declare-fun m!6817778 () Bool)

(assert (=> d!1857147 m!6817778))

(assert (=> d!1857147 m!6816958))

(assert (=> b!5922186 m!6817772))

(assert (=> bm!469634 m!6817778))

(assert (=> b!5922188 m!6817768))

(assert (=> b!5922188 m!6817768))

(assert (=> b!5922188 m!6817770))

(assert (=> b!5922180 m!6817772))

(assert (=> b!5922189 m!6816960))

(assert (=> b!5921203 d!1857147))

(assert (=> b!5921203 d!1857075))

(declare-fun bs!1401741 () Bool)

(declare-fun b!5922195 () Bool)

(assert (= bs!1401741 (and b!5922195 b!5921260)))

(declare-fun lambda!323057 () Int)

(assert (=> bs!1401741 (not (= lambda!323057 lambda!323023))))

(declare-fun bs!1401742 () Bool)

(assert (= bs!1401742 (and b!5922195 d!1856709)))

(assert (=> bs!1401742 (not (= lambda!323057 lambda!323000))))

(declare-fun bs!1401743 () Bool)

(assert (= bs!1401743 (and b!5922195 b!5921593)))

(assert (=> bs!1401743 (not (= lambda!323057 lambda!323037))))

(declare-fun bs!1401744 () Bool)

(assert (= bs!1401744 (and b!5922195 b!5920983)))

(assert (=> bs!1401744 (= (and (= (reg!16300 (regTwo!32455 (regOne!32455 r!7292))) (reg!16300 r!7292)) (= (regTwo!32455 (regOne!32455 r!7292)) r!7292)) (= lambda!323057 lambda!323007))))

(declare-fun bs!1401745 () Bool)

(assert (= bs!1401745 (and b!5922195 b!5922161)))

(assert (=> bs!1401745 (= (and (= (reg!16300 (regTwo!32455 (regOne!32455 r!7292))) (reg!16300 (regOne!32455 (regTwo!32455 r!7292)))) (= (regTwo!32455 (regOne!32455 r!7292)) (regOne!32455 (regTwo!32455 r!7292)))) (= lambda!323057 lambda!323055))))

(declare-fun bs!1401746 () Bool)

(assert (= bs!1401746 (and b!5922195 d!1856701)))

(assert (=> bs!1401746 (not (= lambda!323057 lambda!322996))))

(declare-fun bs!1401747 () Bool)

(assert (= bs!1401747 (and b!5922195 d!1856825)))

(assert (=> bs!1401747 (not (= lambda!323057 lambda!323027))))

(declare-fun bs!1401748 () Bool)

(assert (= bs!1401748 (and b!5922195 d!1856775)))

(assert (=> bs!1401748 (not (= lambda!323057 lambda!323020))))

(assert (=> bs!1401746 (not (= lambda!323057 lambda!322997))))

(declare-fun bs!1401749 () Bool)

(assert (= bs!1401749 (and b!5922195 b!5920984)))

(assert (=> bs!1401749 (not (= lambda!323057 lambda!323008))))

(declare-fun bs!1401750 () Bool)

(assert (= bs!1401750 (and b!5922195 b!5922099)))

(assert (=> bs!1401750 (not (= lambda!323057 lambda!323052))))

(declare-fun bs!1401751 () Bool)

(assert (= bs!1401751 (and b!5922195 b!5922098)))

(assert (=> bs!1401751 (= (and (= (reg!16300 (regTwo!32455 (regOne!32455 r!7292))) (reg!16300 (regTwo!32455 (regTwo!32455 r!7292)))) (= (regTwo!32455 (regOne!32455 r!7292)) (regTwo!32455 (regTwo!32455 r!7292)))) (= lambda!323057 lambda!323051))))

(declare-fun bs!1401752 () Bool)

(assert (= bs!1401752 (and b!5922195 b!5921259)))

(assert (=> bs!1401752 (= (and (= (reg!16300 (regTwo!32455 (regOne!32455 r!7292))) (reg!16300 (regOne!32455 r!7292))) (= (regTwo!32455 (regOne!32455 r!7292)) (regOne!32455 r!7292))) (= lambda!323057 lambda!323022))))

(declare-fun bs!1401753 () Bool)

(assert (= bs!1401753 (and b!5922195 b!5920469)))

(assert (=> bs!1401753 (not (= lambda!323057 lambda!322948))))

(assert (=> bs!1401753 (not (= lambda!323057 lambda!322949))))

(declare-fun bs!1401754 () Bool)

(assert (= bs!1401754 (and b!5922195 b!5922162)))

(assert (=> bs!1401754 (not (= lambda!323057 lambda!323056))))

(declare-fun bs!1401755 () Bool)

(assert (= bs!1401755 (and b!5922195 b!5921592)))

(assert (=> bs!1401755 (= (and (= (reg!16300 (regTwo!32455 (regOne!32455 r!7292))) (reg!16300 (regTwo!32455 r!7292))) (= (regTwo!32455 (regOne!32455 r!7292)) (regTwo!32455 r!7292))) (= lambda!323057 lambda!323036))))

(assert (=> bs!1401748 (not (= lambda!323057 lambda!323019))))

(assert (=> b!5922195 true))

(assert (=> b!5922195 true))

(declare-fun bs!1401756 () Bool)

(declare-fun b!5922196 () Bool)

(assert (= bs!1401756 (and b!5922196 b!5921260)))

(declare-fun lambda!323058 () Int)

(assert (=> bs!1401756 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 (regOne!32455 r!7292))) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 (regOne!32455 r!7292)))) (= lambda!323058 lambda!323023))))

(declare-fun bs!1401757 () Bool)

(assert (= bs!1401757 (and b!5922196 d!1856709)))

(assert (=> bs!1401757 (not (= lambda!323058 lambda!323000))))

(declare-fun bs!1401758 () Bool)

(assert (= bs!1401758 (and b!5922196 b!5921593)))

(assert (=> bs!1401758 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 (regTwo!32455 r!7292))) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 (regTwo!32455 r!7292)))) (= lambda!323058 lambda!323037))))

(declare-fun bs!1401759 () Bool)

(assert (= bs!1401759 (and b!5922196 b!5920983)))

(assert (=> bs!1401759 (not (= lambda!323058 lambda!323007))))

(declare-fun bs!1401760 () Bool)

(assert (= bs!1401760 (and b!5922196 b!5922161)))

(assert (=> bs!1401760 (not (= lambda!323058 lambda!323055))))

(declare-fun bs!1401761 () Bool)

(assert (= bs!1401761 (and b!5922196 d!1856701)))

(assert (=> bs!1401761 (not (= lambda!323058 lambda!322996))))

(declare-fun bs!1401762 () Bool)

(assert (= bs!1401762 (and b!5922196 b!5922195)))

(assert (=> bs!1401762 (not (= lambda!323058 lambda!323057))))

(declare-fun bs!1401763 () Bool)

(assert (= bs!1401763 (and b!5922196 d!1856825)))

(assert (=> bs!1401763 (not (= lambda!323058 lambda!323027))))

(declare-fun bs!1401764 () Bool)

(assert (= bs!1401764 (and b!5922196 d!1856775)))

(assert (=> bs!1401764 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323058 lambda!323020))))

(assert (=> bs!1401761 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323058 lambda!322997))))

(declare-fun bs!1401765 () Bool)

(assert (= bs!1401765 (and b!5922196 b!5920984)))

(assert (=> bs!1401765 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323058 lambda!323008))))

(declare-fun bs!1401766 () Bool)

(assert (= bs!1401766 (and b!5922196 b!5922099)))

(assert (=> bs!1401766 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292)))) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))))) (= lambda!323058 lambda!323052))))

(declare-fun bs!1401767 () Bool)

(assert (= bs!1401767 (and b!5922196 b!5922098)))

(assert (=> bs!1401767 (not (= lambda!323058 lambda!323051))))

(declare-fun bs!1401768 () Bool)

(assert (= bs!1401768 (and b!5922196 b!5921259)))

(assert (=> bs!1401768 (not (= lambda!323058 lambda!323022))))

(declare-fun bs!1401769 () Bool)

(assert (= bs!1401769 (and b!5922196 b!5920469)))

(assert (=> bs!1401769 (not (= lambda!323058 lambda!322948))))

(assert (=> bs!1401769 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323058 lambda!322949))))

(declare-fun bs!1401770 () Bool)

(assert (= bs!1401770 (and b!5922196 b!5922162)))

(assert (=> bs!1401770 (= (and (= (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))) (regOne!32454 (regOne!32455 (regTwo!32455 r!7292)))) (= (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))) (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))))) (= lambda!323058 lambda!323056))))

(declare-fun bs!1401771 () Bool)

(assert (= bs!1401771 (and b!5922196 b!5921592)))

(assert (=> bs!1401771 (not (= lambda!323058 lambda!323036))))

(assert (=> bs!1401764 (not (= lambda!323058 lambda!323019))))

(assert (=> b!5922196 true))

(assert (=> b!5922196 true))

(declare-fun b!5922191 () Bool)

(declare-fun e!3625461 () Bool)

(declare-fun e!3625460 () Bool)

(assert (=> b!5922191 (= e!3625461 e!3625460)))

(declare-fun c!1052579 () Bool)

(assert (=> b!5922191 (= c!1052579 ((_ is Star!15971) (regTwo!32455 (regOne!32455 r!7292))))))

(declare-fun b!5922192 () Bool)

(declare-fun e!3625462 () Bool)

(declare-fun e!3625465 () Bool)

(assert (=> b!5922192 (= e!3625462 e!3625465)))

(declare-fun res!2482380 () Bool)

(assert (=> b!5922192 (= res!2482380 (not ((_ is EmptyLang!15971) (regTwo!32455 (regOne!32455 r!7292)))))))

(assert (=> b!5922192 (=> (not res!2482380) (not e!3625465))))

(declare-fun b!5922193 () Bool)

(declare-fun e!3625464 () Bool)

(assert (=> b!5922193 (= e!3625464 (= s!2326 (Cons!64090 (c!1052179 (regTwo!32455 (regOne!32455 r!7292))) Nil!64090)))))

(declare-fun b!5922194 () Bool)

(declare-fun call!469640 () Bool)

(assert (=> b!5922194 (= e!3625462 call!469640)))

(declare-fun e!3625466 () Bool)

(declare-fun call!469641 () Bool)

(assert (=> b!5922195 (= e!3625466 call!469641)))

(declare-fun bm!469635 () Bool)

(assert (=> bm!469635 (= call!469641 (Exists!3041 (ite c!1052579 lambda!323057 lambda!323058)))))

(assert (=> b!5922196 (= e!3625460 call!469641)))

(declare-fun b!5922197 () Bool)

(declare-fun e!3625463 () Bool)

(assert (=> b!5922197 (= e!3625461 e!3625463)))

(declare-fun res!2482379 () Bool)

(assert (=> b!5922197 (= res!2482379 (matchRSpec!3072 (regOne!32455 (regTwo!32455 (regOne!32455 r!7292))) s!2326))))

(assert (=> b!5922197 (=> res!2482379 e!3625463)))

(declare-fun b!5922198 () Bool)

(declare-fun res!2482378 () Bool)

(assert (=> b!5922198 (=> res!2482378 e!3625466)))

(assert (=> b!5922198 (= res!2482378 call!469640)))

(assert (=> b!5922198 (= e!3625460 e!3625466)))

(declare-fun b!5922199 () Bool)

(declare-fun c!1052578 () Bool)

(assert (=> b!5922199 (= c!1052578 ((_ is Union!15971) (regTwo!32455 (regOne!32455 r!7292))))))

(assert (=> b!5922199 (= e!3625464 e!3625461)))

(declare-fun d!1857149 () Bool)

(declare-fun c!1052576 () Bool)

(assert (=> d!1857149 (= c!1052576 ((_ is EmptyExpr!15971) (regTwo!32455 (regOne!32455 r!7292))))))

(assert (=> d!1857149 (= (matchRSpec!3072 (regTwo!32455 (regOne!32455 r!7292)) s!2326) e!3625462)))

(declare-fun bm!469636 () Bool)

(assert (=> bm!469636 (= call!469640 (isEmpty!35950 s!2326))))

(declare-fun b!5922200 () Bool)

(declare-fun c!1052577 () Bool)

(assert (=> b!5922200 (= c!1052577 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32455 r!7292))))))

(assert (=> b!5922200 (= e!3625465 e!3625464)))

(declare-fun b!5922201 () Bool)

(assert (=> b!5922201 (= e!3625463 (matchRSpec!3072 (regTwo!32455 (regTwo!32455 (regOne!32455 r!7292))) s!2326))))

(assert (= (and d!1857149 c!1052576) b!5922194))

(assert (= (and d!1857149 (not c!1052576)) b!5922192))

(assert (= (and b!5922192 res!2482380) b!5922200))

(assert (= (and b!5922200 c!1052577) b!5922193))

(assert (= (and b!5922200 (not c!1052577)) b!5922199))

(assert (= (and b!5922199 c!1052578) b!5922197))

(assert (= (and b!5922199 (not c!1052578)) b!5922191))

(assert (= (and b!5922197 (not res!2482379)) b!5922201))

(assert (= (and b!5922191 c!1052579) b!5922198))

(assert (= (and b!5922191 (not c!1052579)) b!5922196))

(assert (= (and b!5922198 (not res!2482378)) b!5922195))

(assert (= (or b!5922195 b!5922196) bm!469635))

(assert (= (or b!5922194 b!5922198) bm!469636))

(declare-fun m!6817780 () Bool)

(assert (=> bm!469635 m!6817780))

(declare-fun m!6817782 () Bool)

(assert (=> b!5922197 m!6817782))

(assert (=> bm!469636 m!6816874))

(declare-fun m!6817784 () Bool)

(assert (=> b!5922201 m!6817784))

(assert (=> b!5921265 d!1857149))

(declare-fun b!5922202 () Bool)

(declare-fun e!3625470 () (InoxSet Context!10710))

(declare-fun e!3625472 () (InoxSet Context!10710))

(assert (=> b!5922202 (= e!3625470 e!3625472)))

(declare-fun c!1052583 () Bool)

(assert (=> b!5922202 (= c!1052583 ((_ is Union!15971) (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))))

(declare-fun bm!469637 () Bool)

(declare-fun call!469642 () (InoxSet Context!10710))

(declare-fun call!469647 () (InoxSet Context!10710))

(assert (=> bm!469637 (= call!469642 call!469647)))

(declare-fun b!5922203 () Bool)

(assert (=> b!5922203 (= e!3625470 (store ((as const (Array Context!10710 Bool)) false) (ite (or c!1052400 c!1052399) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469507)) true))))

(declare-fun c!1052580 () Bool)

(declare-fun b!5922204 () Bool)

(assert (=> b!5922204 (= c!1052580 ((_ is Star!15971) (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))))

(declare-fun e!3625469 () (InoxSet Context!10710))

(declare-fun e!3625471 () (InoxSet Context!10710))

(assert (=> b!5922204 (= e!3625469 e!3625471)))

(declare-fun d!1857151 () Bool)

(declare-fun c!1052584 () Bool)

(assert (=> d!1857151 (= c!1052584 (and ((_ is ElementMatch!15971) (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (= (c!1052179 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (h!70538 s!2326))))))

(assert (=> d!1857151 (= (derivationStepZipperDown!1221 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (ite (or c!1052400 c!1052399) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469507)) (h!70538 s!2326)) e!3625470)))

(declare-fun b!5922205 () Bool)

(declare-fun c!1052582 () Bool)

(declare-fun e!3625467 () Bool)

(assert (=> b!5922205 (= c!1052582 e!3625467)))

(declare-fun res!2482381 () Bool)

(assert (=> b!5922205 (=> (not res!2482381) (not e!3625467))))

(assert (=> b!5922205 (= res!2482381 ((_ is Concat!24816) (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))))

(declare-fun e!3625468 () (InoxSet Context!10710))

(assert (=> b!5922205 (= e!3625472 e!3625468)))

(declare-fun bm!469638 () Bool)

(declare-fun c!1052581 () Bool)

(declare-fun call!469645 () List!64212)

(assert (=> bm!469638 (= call!469645 ($colon$colon!1858 (exprs!5855 (ite (or c!1052400 c!1052399) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469507))) (ite (or c!1052582 c!1052581) (regTwo!32454 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))))

(declare-fun bm!469639 () Bool)

(declare-fun call!469646 () List!64212)

(assert (=> bm!469639 (= call!469646 call!469645)))

(declare-fun b!5922206 () Bool)

(assert (=> b!5922206 (= e!3625471 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922207 () Bool)

(assert (=> b!5922207 (= e!3625468 e!3625469)))

(assert (=> b!5922207 (= c!1052581 ((_ is Concat!24816) (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))))

(declare-fun b!5922208 () Bool)

(declare-fun call!469643 () (InoxSet Context!10710))

(assert (=> b!5922208 (= e!3625468 ((_ map or) call!469643 call!469647))))

(declare-fun bm!469640 () Bool)

(assert (=> bm!469640 (= call!469643 (derivationStepZipperDown!1221 (ite c!1052583 (regTwo!32455 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (regOne!32454 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))) (ite c!1052583 (ite (or c!1052400 c!1052399) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469507)) (Context!10711 call!469645)) (h!70538 s!2326)))))

(declare-fun b!5922209 () Bool)

(assert (=> b!5922209 (= e!3625469 call!469642)))

(declare-fun b!5922210 () Bool)

(declare-fun call!469644 () (InoxSet Context!10710))

(assert (=> b!5922210 (= e!3625472 ((_ map or) call!469644 call!469643))))

(declare-fun b!5922211 () Bool)

(assert (=> b!5922211 (= e!3625471 call!469642)))

(declare-fun bm!469641 () Bool)

(assert (=> bm!469641 (= call!469647 call!469644)))

(declare-fun b!5922212 () Bool)

(assert (=> b!5922212 (= e!3625467 (nullable!5966 (regOne!32454 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))))

(declare-fun bm!469642 () Bool)

(assert (=> bm!469642 (= call!469644 (derivationStepZipperDown!1221 (ite c!1052583 (regOne!32455 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (ite c!1052582 (regTwo!32454 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (ite c!1052581 (regOne!32454 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (reg!16300 (ite c!1052400 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052399 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (ite c!1052398 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))) (ite (or c!1052583 c!1052582) (ite (or c!1052400 c!1052399) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469507)) (Context!10711 call!469646)) (h!70538 s!2326)))))

(assert (= (and d!1857151 c!1052584) b!5922203))

(assert (= (and d!1857151 (not c!1052584)) b!5922202))

(assert (= (and b!5922202 c!1052583) b!5922210))

(assert (= (and b!5922202 (not c!1052583)) b!5922205))

(assert (= (and b!5922205 res!2482381) b!5922212))

(assert (= (and b!5922205 c!1052582) b!5922208))

(assert (= (and b!5922205 (not c!1052582)) b!5922207))

(assert (= (and b!5922207 c!1052581) b!5922209))

(assert (= (and b!5922207 (not c!1052581)) b!5922204))

(assert (= (and b!5922204 c!1052580) b!5922211))

(assert (= (and b!5922204 (not c!1052580)) b!5922206))

(assert (= (or b!5922209 b!5922211) bm!469639))

(assert (= (or b!5922209 b!5922211) bm!469637))

(assert (= (or b!5922208 bm!469639) bm!469638))

(assert (= (or b!5922208 bm!469637) bm!469641))

(assert (= (or b!5922210 b!5922208) bm!469640))

(assert (= (or b!5922210 bm!469641) bm!469642))

(declare-fun m!6817786 () Bool)

(assert (=> bm!469642 m!6817786))

(declare-fun m!6817788 () Bool)

(assert (=> bm!469640 m!6817788))

(declare-fun m!6817790 () Bool)

(assert (=> b!5922203 m!6817790))

(declare-fun m!6817792 () Bool)

(assert (=> b!5922212 m!6817792))

(declare-fun m!6817794 () Bool)

(assert (=> bm!469638 m!6817794))

(assert (=> bm!469503 d!1857151))

(declare-fun d!1857153 () Bool)

(declare-fun lt!2310074 () Bool)

(assert (=> d!1857153 (= lt!2310074 (select (content!11799 (t!377604 lt!2309955)) (h!70537 lt!2309955)))))

(declare-fun e!3625477 () Bool)

(assert (=> d!1857153 (= lt!2310074 e!3625477)))

(declare-fun res!2482386 () Bool)

(assert (=> d!1857153 (=> (not res!2482386) (not e!3625477))))

(assert (=> d!1857153 (= res!2482386 ((_ is Cons!64089) (t!377604 lt!2309955)))))

(assert (=> d!1857153 (= (contains!19956 (t!377604 lt!2309955) (h!70537 lt!2309955)) lt!2310074)))

(declare-fun b!5922217 () Bool)

(declare-fun e!3625478 () Bool)

(assert (=> b!5922217 (= e!3625477 e!3625478)))

(declare-fun res!2482387 () Bool)

(assert (=> b!5922217 (=> res!2482387 e!3625478)))

(assert (=> b!5922217 (= res!2482387 (= (h!70537 (t!377604 lt!2309955)) (h!70537 lt!2309955)))))

(declare-fun b!5922218 () Bool)

(assert (=> b!5922218 (= e!3625478 (contains!19956 (t!377604 (t!377604 lt!2309955)) (h!70537 lt!2309955)))))

(assert (= (and d!1857153 res!2482386) b!5922217))

(assert (= (and b!5922217 (not res!2482387)) b!5922218))

(assert (=> d!1857153 m!6817044))

(declare-fun m!6817796 () Bool)

(assert (=> d!1857153 m!6817796))

(declare-fun m!6817798 () Bool)

(assert (=> b!5922218 m!6817798))

(assert (=> b!5921501 d!1857153))

(declare-fun d!1857155 () Bool)

(assert (not d!1857155))

(assert (=> b!5921378 d!1857155))

(declare-fun d!1857157 () Bool)

(assert (not d!1857157))

(assert (=> b!5921378 d!1857157))

(declare-fun b!5922219 () Bool)

(declare-fun e!3625479 () List!64214)

(assert (=> b!5922219 (= e!3625479 (_2!36253 (get!22069 lt!2310034)))))

(declare-fun d!1857159 () Bool)

(declare-fun e!3625480 () Bool)

(assert (=> d!1857159 e!3625480))

(declare-fun res!2482388 () Bool)

(assert (=> d!1857159 (=> (not res!2482388) (not e!3625480))))

(declare-fun lt!2310075 () List!64214)

(assert (=> d!1857159 (= res!2482388 (= (content!11801 lt!2310075) ((_ map or) (content!11801 (_1!36253 (get!22069 lt!2310034))) (content!11801 (_2!36253 (get!22069 lt!2310034))))))))

(assert (=> d!1857159 (= lt!2310075 e!3625479)))

(declare-fun c!1052585 () Bool)

(assert (=> d!1857159 (= c!1052585 ((_ is Nil!64090) (_1!36253 (get!22069 lt!2310034))))))

(assert (=> d!1857159 (= (++!14068 (_1!36253 (get!22069 lt!2310034)) (_2!36253 (get!22069 lt!2310034))) lt!2310075)))

(declare-fun b!5922220 () Bool)

(assert (=> b!5922220 (= e!3625479 (Cons!64090 (h!70538 (_1!36253 (get!22069 lt!2310034))) (++!14068 (t!377605 (_1!36253 (get!22069 lt!2310034))) (_2!36253 (get!22069 lt!2310034)))))))

(declare-fun b!5922221 () Bool)

(declare-fun res!2482389 () Bool)

(assert (=> b!5922221 (=> (not res!2482389) (not e!3625480))))

(assert (=> b!5922221 (= res!2482389 (= (size!40137 lt!2310075) (+ (size!40137 (_1!36253 (get!22069 lt!2310034))) (size!40137 (_2!36253 (get!22069 lt!2310034))))))))

(declare-fun b!5922222 () Bool)

(assert (=> b!5922222 (= e!3625480 (or (not (= (_2!36253 (get!22069 lt!2310034)) Nil!64090)) (= lt!2310075 (_1!36253 (get!22069 lt!2310034)))))))

(assert (= (and d!1857159 c!1052585) b!5922219))

(assert (= (and d!1857159 (not c!1052585)) b!5922220))

(assert (= (and d!1857159 res!2482388) b!5922221))

(assert (= (and b!5922221 res!2482389) b!5922222))

(declare-fun m!6817800 () Bool)

(assert (=> d!1857159 m!6817800))

(declare-fun m!6817802 () Bool)

(assert (=> d!1857159 m!6817802))

(declare-fun m!6817804 () Bool)

(assert (=> d!1857159 m!6817804))

(declare-fun m!6817806 () Bool)

(assert (=> b!5922220 m!6817806))

(declare-fun m!6817808 () Bool)

(assert (=> b!5922221 m!6817808))

(declare-fun m!6817810 () Bool)

(assert (=> b!5922221 m!6817810))

(declare-fun m!6817812 () Bool)

(assert (=> b!5922221 m!6817812))

(assert (=> b!5921207 d!1857159))

(assert (=> b!5921207 d!1857075))

(assert (=> d!1856825 d!1856707))

(assert (=> d!1856825 d!1856687))

(declare-fun d!1857161 () Bool)

(assert (=> d!1857161 (= (Exists!3041 lambda!323027) (choose!44653 lambda!323027))))

(declare-fun bs!1401772 () Bool)

(assert (= bs!1401772 d!1857161))

(declare-fun m!6817814 () Bool)

(assert (=> bs!1401772 m!6817814))

(assert (=> d!1856825 d!1857161))

(declare-fun b!5922237 () Bool)

(declare-fun e!3625494 () Bool)

(declare-fun call!469652 () Bool)

(assert (=> b!5922237 (= e!3625494 call!469652)))

(declare-fun b!5922238 () Bool)

(declare-fun e!3625493 () Bool)

(declare-fun e!3625495 () Bool)

(assert (=> b!5922238 (= e!3625493 e!3625495)))

(declare-fun res!2482403 () Bool)

(assert (=> b!5922238 (=> (not res!2482403) (not e!3625495))))

(assert (=> b!5922238 (= res!2482403 (and (not ((_ is EmptyLang!15971) (h!70536 (exprs!5855 (h!70537 zl!343))))) (not ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5922239 () Bool)

(declare-fun e!3625496 () Bool)

(declare-fun e!3625498 () Bool)

(assert (=> b!5922239 (= e!3625496 e!3625498)))

(declare-fun res!2482402 () Bool)

(declare-fun call!469653 () Bool)

(assert (=> b!5922239 (= res!2482402 call!469653)))

(assert (=> b!5922239 (=> res!2482402 e!3625498)))

(declare-fun bm!469647 () Bool)

(declare-fun c!1052588 () Bool)

(assert (=> bm!469647 (= call!469652 (nullable!5966 (ite c!1052588 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5922240 () Bool)

(declare-fun e!3625497 () Bool)

(assert (=> b!5922240 (= e!3625495 e!3625497)))

(declare-fun res!2482400 () Bool)

(assert (=> b!5922240 (=> res!2482400 e!3625497)))

(assert (=> b!5922240 (= res!2482400 ((_ is Star!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun b!5922241 () Bool)

(assert (=> b!5922241 (= e!3625496 e!3625494)))

(declare-fun res!2482401 () Bool)

(assert (=> b!5922241 (= res!2482401 call!469653)))

(assert (=> b!5922241 (=> (not res!2482401) (not e!3625494))))

(declare-fun b!5922242 () Bool)

(assert (=> b!5922242 (= e!3625498 call!469652)))

(declare-fun d!1857163 () Bool)

(declare-fun res!2482404 () Bool)

(assert (=> d!1857163 (=> res!2482404 e!3625493)))

(assert (=> d!1857163 (= res!2482404 ((_ is EmptyExpr!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> d!1857163 (= (nullableFct!1937 (h!70536 (exprs!5855 (h!70537 zl!343)))) e!3625493)))

(declare-fun b!5922243 () Bool)

(assert (=> b!5922243 (= e!3625497 e!3625496)))

(assert (=> b!5922243 (= c!1052588 ((_ is Union!15971) (h!70536 (exprs!5855 (h!70537 zl!343)))))))

(declare-fun bm!469648 () Bool)

(assert (=> bm!469648 (= call!469653 (nullable!5966 (ite c!1052588 (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(assert (= (and d!1857163 (not res!2482404)) b!5922238))

(assert (= (and b!5922238 res!2482403) b!5922240))

(assert (= (and b!5922240 (not res!2482400)) b!5922243))

(assert (= (and b!5922243 c!1052588) b!5922239))

(assert (= (and b!5922243 (not c!1052588)) b!5922241))

(assert (= (and b!5922239 (not res!2482402)) b!5922242))

(assert (= (and b!5922241 res!2482401) b!5922237))

(assert (= (or b!5922242 b!5922237) bm!469647))

(assert (= (or b!5922239 b!5922241) bm!469648))

(declare-fun m!6817816 () Bool)

(assert (=> bm!469647 m!6817816))

(declare-fun m!6817818 () Bool)

(assert (=> bm!469648 m!6817818))

(assert (=> d!1856907 d!1857163))

(declare-fun d!1857165 () Bool)

(declare-fun res!2482409 () Bool)

(declare-fun e!3625504 () Bool)

(assert (=> d!1857165 (=> res!2482409 e!3625504)))

(assert (=> d!1857165 (= res!2482409 ((_ is ElementMatch!15971) (h!70536 lt!2310021)))))

(assert (=> d!1857165 (= (validRegex!7707 (h!70536 lt!2310021)) e!3625504)))

(declare-fun b!5922244 () Bool)

(declare-fun e!3625505 () Bool)

(declare-fun e!3625503 () Bool)

(assert (=> b!5922244 (= e!3625505 e!3625503)))

(declare-fun res!2482406 () Bool)

(assert (=> b!5922244 (= res!2482406 (not (nullable!5966 (reg!16300 (h!70536 lt!2310021)))))))

(assert (=> b!5922244 (=> (not res!2482406) (not e!3625503))))

(declare-fun bm!469649 () Bool)

(declare-fun call!469656 () Bool)

(declare-fun c!1052589 () Bool)

(assert (=> bm!469649 (= call!469656 (validRegex!7707 (ite c!1052589 (regTwo!32455 (h!70536 lt!2310021)) (regTwo!32454 (h!70536 lt!2310021)))))))

(declare-fun b!5922245 () Bool)

(declare-fun res!2482408 () Bool)

(declare-fun e!3625500 () Bool)

(assert (=> b!5922245 (=> res!2482408 e!3625500)))

(assert (=> b!5922245 (= res!2482408 (not ((_ is Concat!24816) (h!70536 lt!2310021))))))

(declare-fun e!3625499 () Bool)

(assert (=> b!5922245 (= e!3625499 e!3625500)))

(declare-fun b!5922246 () Bool)

(declare-fun res!2482405 () Bool)

(declare-fun e!3625501 () Bool)

(assert (=> b!5922246 (=> (not res!2482405) (not e!3625501))))

(declare-fun call!469655 () Bool)

(assert (=> b!5922246 (= res!2482405 call!469655)))

(assert (=> b!5922246 (= e!3625499 e!3625501)))

(declare-fun bm!469650 () Bool)

(declare-fun call!469654 () Bool)

(assert (=> bm!469650 (= call!469655 call!469654)))

(declare-fun b!5922247 () Bool)

(assert (=> b!5922247 (= e!3625503 call!469654)))

(declare-fun b!5922248 () Bool)

(declare-fun e!3625502 () Bool)

(assert (=> b!5922248 (= e!3625502 call!469656)))

(declare-fun b!5922249 () Bool)

(assert (=> b!5922249 (= e!3625500 e!3625502)))

(declare-fun res!2482407 () Bool)

(assert (=> b!5922249 (=> (not res!2482407) (not e!3625502))))

(assert (=> b!5922249 (= res!2482407 call!469655)))

(declare-fun b!5922250 () Bool)

(assert (=> b!5922250 (= e!3625505 e!3625499)))

(assert (=> b!5922250 (= c!1052589 ((_ is Union!15971) (h!70536 lt!2310021)))))

(declare-fun b!5922251 () Bool)

(assert (=> b!5922251 (= e!3625501 call!469656)))

(declare-fun c!1052590 () Bool)

(declare-fun bm!469651 () Bool)

(assert (=> bm!469651 (= call!469654 (validRegex!7707 (ite c!1052590 (reg!16300 (h!70536 lt!2310021)) (ite c!1052589 (regOne!32455 (h!70536 lt!2310021)) (regOne!32454 (h!70536 lt!2310021))))))))

(declare-fun b!5922252 () Bool)

(assert (=> b!5922252 (= e!3625504 e!3625505)))

(assert (=> b!5922252 (= c!1052590 ((_ is Star!15971) (h!70536 lt!2310021)))))

(assert (= (and d!1857165 (not res!2482409)) b!5922252))

(assert (= (and b!5922252 c!1052590) b!5922244))

(assert (= (and b!5922252 (not c!1052590)) b!5922250))

(assert (= (and b!5922244 res!2482406) b!5922247))

(assert (= (and b!5922250 c!1052589) b!5922246))

(assert (= (and b!5922250 (not c!1052589)) b!5922245))

(assert (= (and b!5922246 res!2482405) b!5922251))

(assert (= (and b!5922245 (not res!2482408)) b!5922249))

(assert (= (and b!5922249 res!2482407) b!5922248))

(assert (= (or b!5922251 b!5922248) bm!469649))

(assert (= (or b!5922246 b!5922249) bm!469650))

(assert (= (or b!5922247 bm!469650) bm!469651))

(declare-fun m!6817820 () Bool)

(assert (=> b!5922244 m!6817820))

(declare-fun m!6817822 () Bool)

(assert (=> bm!469649 m!6817822))

(declare-fun m!6817824 () Bool)

(assert (=> bm!469651 m!6817824))

(assert (=> bs!1401605 d!1857165))

(declare-fun b!5922253 () Bool)

(declare-fun e!3625509 () (InoxSet Context!10710))

(declare-fun e!3625511 () (InoxSet Context!10710))

(assert (=> b!5922253 (= e!3625509 e!3625511)))

(declare-fun c!1052594 () Bool)

(assert (=> b!5922253 (= c!1052594 ((_ is Union!15971) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun bm!469652 () Bool)

(declare-fun call!469657 () (InoxSet Context!10710))

(declare-fun call!469662 () (InoxSet Context!10710))

(assert (=> bm!469652 (= call!469657 call!469662)))

(declare-fun b!5922254 () Bool)

(assert (=> b!5922254 (= e!3625509 (store ((as const (Array Context!10710 Bool)) false) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) true))))

(declare-fun b!5922255 () Bool)

(declare-fun c!1052591 () Bool)

(assert (=> b!5922255 (= c!1052591 ((_ is Star!15971) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun e!3625508 () (InoxSet Context!10710))

(declare-fun e!3625510 () (InoxSet Context!10710))

(assert (=> b!5922255 (= e!3625508 e!3625510)))

(declare-fun d!1857167 () Bool)

(declare-fun c!1052595 () Bool)

(assert (=> d!1857167 (= c!1052595 (and ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (= (c!1052179 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (h!70538 s!2326))))))

(assert (=> d!1857167 (= (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (h!70538 s!2326)) e!3625509)))

(declare-fun b!5922256 () Bool)

(declare-fun c!1052593 () Bool)

(declare-fun e!3625506 () Bool)

(assert (=> b!5922256 (= c!1052593 e!3625506)))

(declare-fun res!2482410 () Bool)

(assert (=> b!5922256 (=> (not res!2482410) (not e!3625506))))

(assert (=> b!5922256 (= res!2482410 ((_ is Concat!24816) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun e!3625507 () (InoxSet Context!10710))

(assert (=> b!5922256 (= e!3625511 e!3625507)))

(declare-fun bm!469653 () Bool)

(declare-fun call!469660 () List!64212)

(declare-fun c!1052592 () Bool)

(assert (=> bm!469653 (= call!469660 ($colon$colon!1858 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))) (ite (or c!1052593 c!1052592) (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))))

(declare-fun bm!469654 () Bool)

(declare-fun call!469661 () List!64212)

(assert (=> bm!469654 (= call!469661 call!469660)))

(declare-fun b!5922257 () Bool)

(assert (=> b!5922257 (= e!3625510 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922258 () Bool)

(assert (=> b!5922258 (= e!3625507 e!3625508)))

(assert (=> b!5922258 (= c!1052592 ((_ is Concat!24816) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun b!5922259 () Bool)

(declare-fun call!469658 () (InoxSet Context!10710))

(assert (=> b!5922259 (= e!3625507 ((_ map or) call!469658 call!469662))))

(declare-fun bm!469655 () Bool)

(assert (=> bm!469655 (= call!469658 (derivationStepZipperDown!1221 (ite c!1052594 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))) (ite c!1052594 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (Context!10711 call!469660)) (h!70538 s!2326)))))

(declare-fun b!5922260 () Bool)

(assert (=> b!5922260 (= e!3625508 call!469657)))

(declare-fun b!5922261 () Bool)

(declare-fun call!469659 () (InoxSet Context!10710))

(assert (=> b!5922261 (= e!3625511 ((_ map or) call!469659 call!469658))))

(declare-fun b!5922262 () Bool)

(assert (=> b!5922262 (= e!3625510 call!469657)))

(declare-fun bm!469656 () Bool)

(assert (=> bm!469656 (= call!469662 call!469659)))

(declare-fun b!5922263 () Bool)

(assert (=> b!5922263 (= e!3625506 (nullable!5966 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))))

(declare-fun bm!469657 () Bool)

(assert (=> bm!469657 (= call!469659 (derivationStepZipperDown!1221 (ite c!1052594 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (ite c!1052593 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (ite c!1052592 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))) (ite (or c!1052594 c!1052593) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (Context!10711 call!469661)) (h!70538 s!2326)))))

(assert (= (and d!1857167 c!1052595) b!5922254))

(assert (= (and d!1857167 (not c!1052595)) b!5922253))

(assert (= (and b!5922253 c!1052594) b!5922261))

(assert (= (and b!5922253 (not c!1052594)) b!5922256))

(assert (= (and b!5922256 res!2482410) b!5922263))

(assert (= (and b!5922256 c!1052593) b!5922259))

(assert (= (and b!5922256 (not c!1052593)) b!5922258))

(assert (= (and b!5922258 c!1052592) b!5922260))

(assert (= (and b!5922258 (not c!1052592)) b!5922255))

(assert (= (and b!5922255 c!1052591) b!5922262))

(assert (= (and b!5922255 (not c!1052591)) b!5922257))

(assert (= (or b!5922260 b!5922262) bm!469654))

(assert (= (or b!5922260 b!5922262) bm!469652))

(assert (= (or b!5922259 bm!469654) bm!469653))

(assert (= (or b!5922259 bm!469652) bm!469656))

(assert (= (or b!5922261 b!5922259) bm!469655))

(assert (= (or b!5922261 bm!469656) bm!469657))

(declare-fun m!6817826 () Bool)

(assert (=> bm!469657 m!6817826))

(declare-fun m!6817828 () Bool)

(assert (=> bm!469655 m!6817828))

(declare-fun m!6817830 () Bool)

(assert (=> b!5922254 m!6817830))

(declare-fun m!6817832 () Bool)

(assert (=> b!5922263 m!6817832))

(declare-fun m!6817834 () Bool)

(assert (=> bm!469653 m!6817834))

(assert (=> bm!469470 d!1857167))

(assert (=> b!5921556 d!1856849))

(assert (=> b!5921556 d!1856851))

(assert (=> d!1856767 d!1856763))

(assert (=> d!1856767 d!1856765))

(declare-fun d!1857169 () Bool)

(assert (=> d!1857169 (= (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (t!377605 s!2326)) s!2326)))

(assert (=> d!1857169 true))

(declare-fun _$68!997 () Unit!157213)

(assert (=> d!1857169 (= (choose!44658 Nil!64090 (h!70538 s!2326) (t!377605 s!2326) s!2326) _$68!997)))

(declare-fun bs!1401773 () Bool)

(assert (= bs!1401773 d!1857169))

(assert (=> bs!1401773 m!6816798))

(assert (=> bs!1401773 m!6816798))

(assert (=> bs!1401773 m!6816800))

(assert (=> d!1856767 d!1857169))

(declare-fun b!5922264 () Bool)

(declare-fun e!3625512 () List!64214)

(assert (=> b!5922264 (= e!3625512 (Cons!64090 (h!70538 s!2326) (t!377605 s!2326)))))

(declare-fun d!1857171 () Bool)

(declare-fun e!3625513 () Bool)

(assert (=> d!1857171 e!3625513))

(declare-fun res!2482411 () Bool)

(assert (=> d!1857171 (=> (not res!2482411) (not e!3625513))))

(declare-fun lt!2310076 () List!64214)

(assert (=> d!1857171 (= res!2482411 (= (content!11801 lt!2310076) ((_ map or) (content!11801 Nil!64090) (content!11801 (Cons!64090 (h!70538 s!2326) (t!377605 s!2326))))))))

(assert (=> d!1857171 (= lt!2310076 e!3625512)))

(declare-fun c!1052596 () Bool)

(assert (=> d!1857171 (= c!1052596 ((_ is Nil!64090) Nil!64090))))

(assert (=> d!1857171 (= (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) (t!377605 s!2326))) lt!2310076)))

(declare-fun b!5922265 () Bool)

(assert (=> b!5922265 (= e!3625512 (Cons!64090 (h!70538 Nil!64090) (++!14068 (t!377605 Nil!64090) (Cons!64090 (h!70538 s!2326) (t!377605 s!2326)))))))

(declare-fun b!5922266 () Bool)

(declare-fun res!2482412 () Bool)

(assert (=> b!5922266 (=> (not res!2482412) (not e!3625513))))

(assert (=> b!5922266 (= res!2482412 (= (size!40137 lt!2310076) (+ (size!40137 Nil!64090) (size!40137 (Cons!64090 (h!70538 s!2326) (t!377605 s!2326))))))))

(declare-fun b!5922267 () Bool)

(assert (=> b!5922267 (= e!3625513 (or (not (= (Cons!64090 (h!70538 s!2326) (t!377605 s!2326)) Nil!64090)) (= lt!2310076 Nil!64090)))))

(assert (= (and d!1857171 c!1052596) b!5922264))

(assert (= (and d!1857171 (not c!1052596)) b!5922265))

(assert (= (and d!1857171 res!2482411) b!5922266))

(assert (= (and b!5922266 res!2482412) b!5922267))

(declare-fun m!6817836 () Bool)

(assert (=> d!1857171 m!6817836))

(assert (=> d!1857171 m!6816982))

(declare-fun m!6817838 () Bool)

(assert (=> d!1857171 m!6817838))

(declare-fun m!6817840 () Bool)

(assert (=> b!5922265 m!6817840))

(declare-fun m!6817842 () Bool)

(assert (=> b!5922266 m!6817842))

(assert (=> b!5922266 m!6816990))

(declare-fun m!6817844 () Bool)

(assert (=> b!5922266 m!6817844))

(assert (=> d!1856767 d!1857171))

(assert (=> bm!469506 d!1856849))

(assert (=> b!5921382 d!1856795))

(declare-fun b!5922268 () Bool)

(declare-fun e!3625515 () Bool)

(declare-fun lt!2310077 () Bool)

(declare-fun call!469663 () Bool)

(assert (=> b!5922268 (= e!3625515 (= lt!2310077 call!469663))))

(declare-fun b!5922269 () Bool)

(declare-fun res!2482420 () Bool)

(declare-fun e!3625517 () Bool)

(assert (=> b!5922269 (=> res!2482420 e!3625517)))

(assert (=> b!5922269 (= res!2482420 (not ((_ is ElementMatch!15971) (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996)))))))))

(declare-fun e!3625520 () Bool)

(assert (=> b!5922269 (= e!3625520 e!3625517)))

(declare-fun b!5922270 () Bool)

(declare-fun e!3625519 () Bool)

(declare-fun e!3625514 () Bool)

(assert (=> b!5922270 (= e!3625519 e!3625514)))

(declare-fun res!2482419 () Bool)

(assert (=> b!5922270 (=> res!2482419 e!3625514)))

(assert (=> b!5922270 (= res!2482419 call!469663)))

(declare-fun bm!469658 () Bool)

(assert (=> bm!469658 (= call!469663 (isEmpty!35950 (tail!11569 (_1!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5922271 () Bool)

(assert (=> b!5922271 (= e!3625514 (not (= (head!12484 (tail!11569 (_1!36253 (get!22069 lt!2309996)))) (c!1052179 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996))))))))))

(declare-fun b!5922273 () Bool)

(assert (=> b!5922273 (= e!3625515 e!3625520)))

(declare-fun c!1052598 () Bool)

(assert (=> b!5922273 (= c!1052598 ((_ is EmptyLang!15971) (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922274 () Bool)

(declare-fun res!2482417 () Bool)

(assert (=> b!5922274 (=> res!2482417 e!3625517)))

(declare-fun e!3625516 () Bool)

(assert (=> b!5922274 (= res!2482417 e!3625516)))

(declare-fun res!2482416 () Bool)

(assert (=> b!5922274 (=> (not res!2482416) (not e!3625516))))

(assert (=> b!5922274 (= res!2482416 lt!2310077)))

(declare-fun b!5922275 () Bool)

(assert (=> b!5922275 (= e!3625520 (not lt!2310077))))

(declare-fun b!5922276 () Bool)

(declare-fun res!2482415 () Bool)

(assert (=> b!5922276 (=> (not res!2482415) (not e!3625516))))

(assert (=> b!5922276 (= res!2482415 (isEmpty!35950 (tail!11569 (tail!11569 (_1!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922277 () Bool)

(assert (=> b!5922277 (= e!3625516 (= (head!12484 (tail!11569 (_1!36253 (get!22069 lt!2309996)))) (c!1052179 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996)))))))))

(declare-fun b!5922278 () Bool)

(declare-fun e!3625518 () Bool)

(assert (=> b!5922278 (= e!3625518 (matchR!8154 (derivativeStep!4702 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996)))) (head!12484 (tail!11569 (_1!36253 (get!22069 lt!2309996))))) (tail!11569 (tail!11569 (_1!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922279 () Bool)

(declare-fun res!2482414 () Bool)

(assert (=> b!5922279 (=> res!2482414 e!3625514)))

(assert (=> b!5922279 (= res!2482414 (not (isEmpty!35950 (tail!11569 (tail!11569 (_1!36253 (get!22069 lt!2309996)))))))))

(declare-fun b!5922272 () Bool)

(declare-fun res!2482413 () Bool)

(assert (=> b!5922272 (=> (not res!2482413) (not e!3625516))))

(assert (=> b!5922272 (= res!2482413 (not call!469663))))

(declare-fun d!1857173 () Bool)

(assert (=> d!1857173 e!3625515))

(declare-fun c!1052597 () Bool)

(assert (=> d!1857173 (= c!1052597 ((_ is EmptyExpr!15971) (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996))))))))

(assert (=> d!1857173 (= lt!2310077 e!3625518)))

(declare-fun c!1052599 () Bool)

(assert (=> d!1857173 (= c!1052599 (isEmpty!35950 (tail!11569 (_1!36253 (get!22069 lt!2309996)))))))

(assert (=> d!1857173 (validRegex!7707 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996)))))))

(assert (=> d!1857173 (= (matchR!8154 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996)))) (tail!11569 (_1!36253 (get!22069 lt!2309996)))) lt!2310077)))

(declare-fun b!5922280 () Bool)

(assert (=> b!5922280 (= e!3625518 (nullable!5966 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922281 () Bool)

(assert (=> b!5922281 (= e!3625517 e!3625519)))

(declare-fun res!2482418 () Bool)

(assert (=> b!5922281 (=> (not res!2482418) (not e!3625519))))

(assert (=> b!5922281 (= res!2482418 (not lt!2310077))))

(assert (= (and d!1857173 c!1052599) b!5922280))

(assert (= (and d!1857173 (not c!1052599)) b!5922278))

(assert (= (and d!1857173 c!1052597) b!5922268))

(assert (= (and d!1857173 (not c!1052597)) b!5922273))

(assert (= (and b!5922273 c!1052598) b!5922275))

(assert (= (and b!5922273 (not c!1052598)) b!5922269))

(assert (= (and b!5922269 (not res!2482420)) b!5922274))

(assert (= (and b!5922274 res!2482416) b!5922272))

(assert (= (and b!5922272 res!2482413) b!5922276))

(assert (= (and b!5922276 res!2482415) b!5922277))

(assert (= (and b!5922274 (not res!2482417)) b!5922281))

(assert (= (and b!5922281 res!2482418) b!5922270))

(assert (= (and b!5922270 (not res!2482419)) b!5922279))

(assert (= (and b!5922279 (not res!2482414)) b!5922271))

(assert (= (or b!5922268 b!5922270 b!5922272) bm!469658))

(assert (=> b!5922276 m!6817312))

(declare-fun m!6817846 () Bool)

(assert (=> b!5922276 m!6817846))

(assert (=> b!5922276 m!6817846))

(declare-fun m!6817848 () Bool)

(assert (=> b!5922276 m!6817848))

(assert (=> b!5922278 m!6817312))

(declare-fun m!6817850 () Bool)

(assert (=> b!5922278 m!6817850))

(assert (=> b!5922278 m!6817318))

(assert (=> b!5922278 m!6817850))

(declare-fun m!6817852 () Bool)

(assert (=> b!5922278 m!6817852))

(assert (=> b!5922278 m!6817312))

(assert (=> b!5922278 m!6817846))

(assert (=> b!5922278 m!6817852))

(assert (=> b!5922278 m!6817846))

(declare-fun m!6817854 () Bool)

(assert (=> b!5922278 m!6817854))

(assert (=> d!1857173 m!6817312))

(assert (=> d!1857173 m!6817314))

(assert (=> d!1857173 m!6817318))

(declare-fun m!6817856 () Bool)

(assert (=> d!1857173 m!6817856))

(assert (=> b!5922277 m!6817312))

(assert (=> b!5922277 m!6817850))

(assert (=> bm!469658 m!6817312))

(assert (=> bm!469658 m!6817314))

(assert (=> b!5922279 m!6817312))

(assert (=> b!5922279 m!6817846))

(assert (=> b!5922279 m!6817846))

(assert (=> b!5922279 m!6817848))

(assert (=> b!5922271 m!6817312))

(assert (=> b!5922271 m!6817850))

(assert (=> b!5922280 m!6817318))

(declare-fun m!6817858 () Bool)

(assert (=> b!5922280 m!6817858))

(assert (=> b!5921533 d!1857173))

(declare-fun b!5922282 () Bool)

(declare-fun e!3625522 () Regex!15971)

(assert (=> b!5922282 (= e!3625522 (ite (= (head!12484 (_1!36253 (get!22069 lt!2309996))) (c!1052179 (regOne!32454 r!7292))) EmptyExpr!15971 EmptyLang!15971))))

(declare-fun b!5922283 () Bool)

(declare-fun e!3625525 () Regex!15971)

(assert (=> b!5922283 (= e!3625525 e!3625522)))

(declare-fun c!1052600 () Bool)

(assert (=> b!5922283 (= c!1052600 ((_ is ElementMatch!15971) (regOne!32454 r!7292)))))

(declare-fun b!5922284 () Bool)

(declare-fun e!3625521 () Regex!15971)

(declare-fun e!3625523 () Regex!15971)

(assert (=> b!5922284 (= e!3625521 e!3625523)))

(declare-fun c!1052603 () Bool)

(assert (=> b!5922284 (= c!1052603 ((_ is Star!15971) (regOne!32454 r!7292)))))

(declare-fun call!469667 () Regex!15971)

(declare-fun c!1052601 () Bool)

(declare-fun bm!469659 () Bool)

(assert (=> bm!469659 (= call!469667 (derivativeStep!4702 (ite c!1052601 (regTwo!32455 (regOne!32454 r!7292)) (ite c!1052603 (reg!16300 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292)))) (head!12484 (_1!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5922285 () Bool)

(assert (=> b!5922285 (= e!3625525 EmptyLang!15971)))

(declare-fun c!1052602 () Bool)

(declare-fun bm!469660 () Bool)

(declare-fun call!469664 () Regex!15971)

(assert (=> bm!469660 (= call!469664 (derivativeStep!4702 (ite c!1052601 (regOne!32455 (regOne!32454 r!7292)) (ite c!1052602 (regTwo!32454 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292)))) (head!12484 (_1!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5922286 () Bool)

(assert (=> b!5922286 (= c!1052602 (nullable!5966 (regOne!32454 (regOne!32454 r!7292))))))

(declare-fun e!3625524 () Regex!15971)

(assert (=> b!5922286 (= e!3625523 e!3625524)))

(declare-fun bm!469661 () Bool)

(declare-fun call!469665 () Regex!15971)

(assert (=> bm!469661 (= call!469665 call!469667)))

(declare-fun b!5922287 () Bool)

(assert (=> b!5922287 (= e!3625521 (Union!15971 call!469664 call!469667))))

(declare-fun bm!469662 () Bool)

(declare-fun call!469666 () Regex!15971)

(assert (=> bm!469662 (= call!469666 call!469664)))

(declare-fun b!5922288 () Bool)

(assert (=> b!5922288 (= e!3625524 (Union!15971 (Concat!24816 call!469665 (regTwo!32454 (regOne!32454 r!7292))) call!469666))))

(declare-fun b!5922290 () Bool)

(assert (=> b!5922290 (= e!3625523 (Concat!24816 call!469665 (regOne!32454 r!7292)))))

(declare-fun b!5922291 () Bool)

(assert (=> b!5922291 (= c!1052601 ((_ is Union!15971) (regOne!32454 r!7292)))))

(assert (=> b!5922291 (= e!3625522 e!3625521)))

(declare-fun b!5922289 () Bool)

(assert (=> b!5922289 (= e!3625524 (Union!15971 (Concat!24816 call!469666 (regTwo!32454 (regOne!32454 r!7292))) EmptyLang!15971))))

(declare-fun d!1857175 () Bool)

(declare-fun lt!2310078 () Regex!15971)

(assert (=> d!1857175 (validRegex!7707 lt!2310078)))

(assert (=> d!1857175 (= lt!2310078 e!3625525)))

(declare-fun c!1052604 () Bool)

(assert (=> d!1857175 (= c!1052604 (or ((_ is EmptyExpr!15971) (regOne!32454 r!7292)) ((_ is EmptyLang!15971) (regOne!32454 r!7292))))))

(assert (=> d!1857175 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1857175 (= (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (_1!36253 (get!22069 lt!2309996)))) lt!2310078)))

(assert (= (and d!1857175 c!1052604) b!5922285))

(assert (= (and d!1857175 (not c!1052604)) b!5922283))

(assert (= (and b!5922283 c!1052600) b!5922282))

(assert (= (and b!5922283 (not c!1052600)) b!5922291))

(assert (= (and b!5922291 c!1052601) b!5922287))

(assert (= (and b!5922291 (not c!1052601)) b!5922284))

(assert (= (and b!5922284 c!1052603) b!5922290))

(assert (= (and b!5922284 (not c!1052603)) b!5922286))

(assert (= (and b!5922286 c!1052602) b!5922288))

(assert (= (and b!5922286 (not c!1052602)) b!5922289))

(assert (= (or b!5922288 b!5922289) bm!469662))

(assert (= (or b!5922290 b!5922288) bm!469661))

(assert (= (or b!5922287 bm!469661) bm!469659))

(assert (= (or b!5922287 bm!469662) bm!469660))

(assert (=> bm!469659 m!6817316))

(declare-fun m!6817860 () Bool)

(assert (=> bm!469659 m!6817860))

(assert (=> bm!469660 m!6817316))

(declare-fun m!6817862 () Bool)

(assert (=> bm!469660 m!6817862))

(declare-fun m!6817864 () Bool)

(assert (=> b!5922286 m!6817864))

(declare-fun m!6817866 () Bool)

(assert (=> d!1857175 m!6817866))

(assert (=> d!1857175 m!6816790))

(assert (=> b!5921533 d!1857175))

(declare-fun d!1857177 () Bool)

(assert (=> d!1857177 (= (head!12484 (_1!36253 (get!22069 lt!2309996))) (h!70538 (_1!36253 (get!22069 lt!2309996))))))

(assert (=> b!5921533 d!1857177))

(assert (=> b!5921533 d!1857107))

(declare-fun d!1857179 () Bool)

(assert (=> d!1857179 (= (isEmpty!35946 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))) ((_ is Nil!64088) (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(assert (=> b!5921482 d!1857179))

(declare-fun d!1857181 () Bool)

(assert (=> d!1857181 (= (Exists!3041 (ite c!1052379 lambda!323022 lambda!323023)) (choose!44653 (ite c!1052379 lambda!323022 lambda!323023)))))

(declare-fun bs!1401774 () Bool)

(assert (= bs!1401774 d!1857181))

(declare-fun m!6817868 () Bool)

(assert (=> bs!1401774 m!6817868))

(assert (=> bm!469487 d!1857181))

(declare-fun d!1857183 () Bool)

(assert (=> d!1857183 (= (isEmpty!35950 (tail!11569 (_2!36253 (get!22069 lt!2309996)))) ((_ is Nil!64090) (tail!11569 (_2!36253 (get!22069 lt!2309996)))))))

(assert (=> b!5921173 d!1857183))

(declare-fun d!1857185 () Bool)

(assert (=> d!1857185 (= (tail!11569 (_2!36253 (get!22069 lt!2309996))) (t!377605 (_2!36253 (get!22069 lt!2309996))))))

(assert (=> b!5921173 d!1857185))

(declare-fun d!1857187 () Bool)

(declare-fun res!2482425 () Bool)

(declare-fun e!3625531 () Bool)

(assert (=> d!1857187 (=> res!2482425 e!3625531)))

(assert (=> d!1857187 (= res!2482425 ((_ is ElementMatch!15971) (h!70536 (unfocusZipperList!1392 zl!343))))))

(assert (=> d!1857187 (= (validRegex!7707 (h!70536 (unfocusZipperList!1392 zl!343))) e!3625531)))

(declare-fun b!5922292 () Bool)

(declare-fun e!3625532 () Bool)

(declare-fun e!3625530 () Bool)

(assert (=> b!5922292 (= e!3625532 e!3625530)))

(declare-fun res!2482422 () Bool)

(assert (=> b!5922292 (= res!2482422 (not (nullable!5966 (reg!16300 (h!70536 (unfocusZipperList!1392 zl!343))))))))

(assert (=> b!5922292 (=> (not res!2482422) (not e!3625530))))

(declare-fun bm!469663 () Bool)

(declare-fun call!469670 () Bool)

(declare-fun c!1052605 () Bool)

(assert (=> bm!469663 (= call!469670 (validRegex!7707 (ite c!1052605 (regTwo!32455 (h!70536 (unfocusZipperList!1392 zl!343))) (regTwo!32454 (h!70536 (unfocusZipperList!1392 zl!343))))))))

(declare-fun b!5922293 () Bool)

(declare-fun res!2482424 () Bool)

(declare-fun e!3625527 () Bool)

(assert (=> b!5922293 (=> res!2482424 e!3625527)))

(assert (=> b!5922293 (= res!2482424 (not ((_ is Concat!24816) (h!70536 (unfocusZipperList!1392 zl!343)))))))

(declare-fun e!3625526 () Bool)

(assert (=> b!5922293 (= e!3625526 e!3625527)))

(declare-fun b!5922294 () Bool)

(declare-fun res!2482421 () Bool)

(declare-fun e!3625528 () Bool)

(assert (=> b!5922294 (=> (not res!2482421) (not e!3625528))))

(declare-fun call!469669 () Bool)

(assert (=> b!5922294 (= res!2482421 call!469669)))

(assert (=> b!5922294 (= e!3625526 e!3625528)))

(declare-fun bm!469664 () Bool)

(declare-fun call!469668 () Bool)

(assert (=> bm!469664 (= call!469669 call!469668)))

(declare-fun b!5922295 () Bool)

(assert (=> b!5922295 (= e!3625530 call!469668)))

(declare-fun b!5922296 () Bool)

(declare-fun e!3625529 () Bool)

(assert (=> b!5922296 (= e!3625529 call!469670)))

(declare-fun b!5922297 () Bool)

(assert (=> b!5922297 (= e!3625527 e!3625529)))

(declare-fun res!2482423 () Bool)

(assert (=> b!5922297 (=> (not res!2482423) (not e!3625529))))

(assert (=> b!5922297 (= res!2482423 call!469669)))

(declare-fun b!5922298 () Bool)

(assert (=> b!5922298 (= e!3625532 e!3625526)))

(assert (=> b!5922298 (= c!1052605 ((_ is Union!15971) (h!70536 (unfocusZipperList!1392 zl!343))))))

(declare-fun b!5922299 () Bool)

(assert (=> b!5922299 (= e!3625528 call!469670)))

(declare-fun c!1052606 () Bool)

(declare-fun bm!469665 () Bool)

(assert (=> bm!469665 (= call!469668 (validRegex!7707 (ite c!1052606 (reg!16300 (h!70536 (unfocusZipperList!1392 zl!343))) (ite c!1052605 (regOne!32455 (h!70536 (unfocusZipperList!1392 zl!343))) (regOne!32454 (h!70536 (unfocusZipperList!1392 zl!343)))))))))

(declare-fun b!5922300 () Bool)

(assert (=> b!5922300 (= e!3625531 e!3625532)))

(assert (=> b!5922300 (= c!1052606 ((_ is Star!15971) (h!70536 (unfocusZipperList!1392 zl!343))))))

(assert (= (and d!1857187 (not res!2482425)) b!5922300))

(assert (= (and b!5922300 c!1052606) b!5922292))

(assert (= (and b!5922300 (not c!1052606)) b!5922298))

(assert (= (and b!5922292 res!2482422) b!5922295))

(assert (= (and b!5922298 c!1052605) b!5922294))

(assert (= (and b!5922298 (not c!1052605)) b!5922293))

(assert (= (and b!5922294 res!2482421) b!5922299))

(assert (= (and b!5922293 (not res!2482424)) b!5922297))

(assert (= (and b!5922297 res!2482423) b!5922296))

(assert (= (or b!5922299 b!5922296) bm!469663))

(assert (= (or b!5922294 b!5922297) bm!469664))

(assert (= (or b!5922295 bm!469664) bm!469665))

(declare-fun m!6817870 () Bool)

(assert (=> b!5922292 m!6817870))

(declare-fun m!6817872 () Bool)

(assert (=> bm!469663 m!6817872))

(declare-fun m!6817874 () Bool)

(assert (=> bm!469665 m!6817874))

(assert (=> bs!1401598 d!1857187))

(declare-fun d!1857189 () Bool)

(declare-fun res!2482430 () Bool)

(declare-fun e!3625538 () Bool)

(assert (=> d!1857189 (=> res!2482430 e!3625538)))

(assert (=> d!1857189 (= res!2482430 ((_ is ElementMatch!15971) (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))

(assert (=> d!1857189 (= (validRegex!7707 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))) e!3625538)))

(declare-fun b!5922301 () Bool)

(declare-fun e!3625539 () Bool)

(declare-fun e!3625537 () Bool)

(assert (=> b!5922301 (= e!3625539 e!3625537)))

(declare-fun res!2482427 () Bool)

(assert (=> b!5922301 (= res!2482427 (not (nullable!5966 (reg!16300 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))))

(assert (=> b!5922301 (=> (not res!2482427) (not e!3625537))))

(declare-fun c!1052607 () Bool)

(declare-fun call!469673 () Bool)

(declare-fun bm!469666 () Bool)

(assert (=> bm!469666 (= call!469673 (validRegex!7707 (ite c!1052607 (regTwo!32455 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))) (regTwo!32454 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))))

(declare-fun b!5922302 () Bool)

(declare-fun res!2482429 () Bool)

(declare-fun e!3625534 () Bool)

(assert (=> b!5922302 (=> res!2482429 e!3625534)))

(assert (=> b!5922302 (= res!2482429 (not ((_ is Concat!24816) (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))

(declare-fun e!3625533 () Bool)

(assert (=> b!5922302 (= e!3625533 e!3625534)))

(declare-fun b!5922303 () Bool)

(declare-fun res!2482426 () Bool)

(declare-fun e!3625535 () Bool)

(assert (=> b!5922303 (=> (not res!2482426) (not e!3625535))))

(declare-fun call!469672 () Bool)

(assert (=> b!5922303 (= res!2482426 call!469672)))

(assert (=> b!5922303 (= e!3625533 e!3625535)))

(declare-fun bm!469667 () Bool)

(declare-fun call!469671 () Bool)

(assert (=> bm!469667 (= call!469672 call!469671)))

(declare-fun b!5922304 () Bool)

(assert (=> b!5922304 (= e!3625537 call!469671)))

(declare-fun b!5922305 () Bool)

(declare-fun e!3625536 () Bool)

(assert (=> b!5922305 (= e!3625536 call!469673)))

(declare-fun b!5922306 () Bool)

(assert (=> b!5922306 (= e!3625534 e!3625536)))

(declare-fun res!2482428 () Bool)

(assert (=> b!5922306 (=> (not res!2482428) (not e!3625536))))

(assert (=> b!5922306 (= res!2482428 call!469672)))

(declare-fun b!5922307 () Bool)

(assert (=> b!5922307 (= e!3625539 e!3625533)))

(assert (=> b!5922307 (= c!1052607 ((_ is Union!15971) (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))

(declare-fun b!5922308 () Bool)

(assert (=> b!5922308 (= e!3625535 call!469673)))

(declare-fun bm!469668 () Bool)

(declare-fun c!1052608 () Bool)

(assert (=> bm!469668 (= call!469671 (validRegex!7707 (ite c!1052608 (reg!16300 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))) (ite c!1052607 (regOne!32455 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))) (regOne!32454 (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))))))

(declare-fun b!5922309 () Bool)

(assert (=> b!5922309 (= e!3625538 e!3625539)))

(assert (=> b!5922309 (= c!1052608 ((_ is Star!15971) (ite c!1052438 (regTwo!32455 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))) (regTwo!32454 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))))

(assert (= (and d!1857189 (not res!2482430)) b!5922309))

(assert (= (and b!5922309 c!1052608) b!5922301))

(assert (= (and b!5922309 (not c!1052608)) b!5922307))

(assert (= (and b!5922301 res!2482427) b!5922304))

(assert (= (and b!5922307 c!1052607) b!5922303))

(assert (= (and b!5922307 (not c!1052607)) b!5922302))

(assert (= (and b!5922303 res!2482426) b!5922308))

(assert (= (and b!5922302 (not res!2482429)) b!5922306))

(assert (= (and b!5922306 res!2482428) b!5922305))

(assert (= (or b!5922308 b!5922305) bm!469666))

(assert (= (or b!5922303 b!5922306) bm!469667))

(assert (= (or b!5922304 bm!469667) bm!469668))

(declare-fun m!6817876 () Bool)

(assert (=> b!5922301 m!6817876))

(declare-fun m!6817878 () Bool)

(assert (=> bm!469666 m!6817878))

(declare-fun m!6817880 () Bool)

(assert (=> bm!469668 m!6817880))

(assert (=> bm!469525 d!1857189))

(declare-fun d!1857191 () Bool)

(assert (=> d!1857191 true))

(assert (=> d!1857191 true))

(declare-fun res!2482431 () Bool)

(assert (=> d!1857191 (= (choose!44653 (ite c!1052319 lambda!323007 lambda!323008)) res!2482431)))

(assert (=> d!1856787 d!1857191))

(declare-fun d!1857193 () Bool)

(assert (=> d!1857193 (= (nullable!5966 (regTwo!32454 r!7292)) (nullableFct!1937 (regTwo!32454 r!7292)))))

(declare-fun bs!1401775 () Bool)

(assert (= bs!1401775 d!1857193))

(declare-fun m!6817882 () Bool)

(assert (=> bs!1401775 m!6817882))

(assert (=> b!5921560 d!1857193))

(assert (=> d!1856747 d!1856663))

(declare-fun d!1857195 () Bool)

(declare-fun res!2482436 () Bool)

(declare-fun e!3625545 () Bool)

(assert (=> d!1857195 (=> res!2482436 e!3625545)))

(assert (=> d!1857195 (= res!2482436 ((_ is ElementMatch!15971) (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))))))

(assert (=> d!1857195 (= (validRegex!7707 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))) e!3625545)))

(declare-fun b!5922310 () Bool)

(declare-fun e!3625546 () Bool)

(declare-fun e!3625544 () Bool)

(assert (=> b!5922310 (= e!3625546 e!3625544)))

(declare-fun res!2482433 () Bool)

(assert (=> b!5922310 (= res!2482433 (not (nullable!5966 (reg!16300 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))))))))

(assert (=> b!5922310 (=> (not res!2482433) (not e!3625544))))

(declare-fun bm!469669 () Bool)

(declare-fun call!469676 () Bool)

(declare-fun c!1052609 () Bool)

(assert (=> bm!469669 (= call!469676 (validRegex!7707 (ite c!1052609 (regTwo!32455 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))) (regTwo!32454 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))))))))

(declare-fun b!5922311 () Bool)

(declare-fun res!2482435 () Bool)

(declare-fun e!3625541 () Bool)

(assert (=> b!5922311 (=> res!2482435 e!3625541)))

(assert (=> b!5922311 (= res!2482435 (not ((_ is Concat!24816) (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966))))))))

(declare-fun e!3625540 () Bool)

(assert (=> b!5922311 (= e!3625540 e!3625541)))

(declare-fun b!5922312 () Bool)

(declare-fun res!2482432 () Bool)

(declare-fun e!3625542 () Bool)

(assert (=> b!5922312 (=> (not res!2482432) (not e!3625542))))

(declare-fun call!469675 () Bool)

(assert (=> b!5922312 (= res!2482432 call!469675)))

(assert (=> b!5922312 (= e!3625540 e!3625542)))

(declare-fun bm!469670 () Bool)

(declare-fun call!469674 () Bool)

(assert (=> bm!469670 (= call!469675 call!469674)))

(declare-fun b!5922313 () Bool)

(assert (=> b!5922313 (= e!3625544 call!469674)))

(declare-fun b!5922314 () Bool)

(declare-fun e!3625543 () Bool)

(assert (=> b!5922314 (= e!3625543 call!469676)))

(declare-fun b!5922315 () Bool)

(assert (=> b!5922315 (= e!3625541 e!3625543)))

(declare-fun res!2482434 () Bool)

(assert (=> b!5922315 (=> (not res!2482434) (not e!3625543))))

(assert (=> b!5922315 (= res!2482434 call!469675)))

(declare-fun b!5922316 () Bool)

(assert (=> b!5922316 (= e!3625546 e!3625540)))

(assert (=> b!5922316 (= c!1052609 ((_ is Union!15971) (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))))))

(declare-fun b!5922317 () Bool)

(assert (=> b!5922317 (= e!3625542 call!469676)))

(declare-fun c!1052610 () Bool)

(declare-fun bm!469671 () Bool)

(assert (=> bm!469671 (= call!469674 (validRegex!7707 (ite c!1052610 (reg!16300 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))) (ite c!1052609 (regOne!32455 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))) (regOne!32454 (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966))))))))))

(declare-fun b!5922318 () Bool)

(assert (=> b!5922318 (= e!3625545 e!3625546)))

(assert (=> b!5922318 (= c!1052610 ((_ is Star!15971) (ite c!1052480 (reg!16300 lt!2309966) (ite c!1052479 (regOne!32455 lt!2309966) (regOne!32454 lt!2309966)))))))

(assert (= (and d!1857195 (not res!2482436)) b!5922318))

(assert (= (and b!5922318 c!1052610) b!5922310))

(assert (= (and b!5922318 (not c!1052610)) b!5922316))

(assert (= (and b!5922310 res!2482433) b!5922313))

(assert (= (and b!5922316 c!1052609) b!5922312))

(assert (= (and b!5922316 (not c!1052609)) b!5922311))

(assert (= (and b!5922312 res!2482432) b!5922317))

(assert (= (and b!5922311 (not res!2482435)) b!5922315))

(assert (= (and b!5922315 res!2482434) b!5922314))

(assert (= (or b!5922317 b!5922314) bm!469669))

(assert (= (or b!5922312 b!5922315) bm!469670))

(assert (= (or b!5922313 bm!469670) bm!469671))

(declare-fun m!6817884 () Bool)

(assert (=> b!5922310 m!6817884))

(declare-fun m!6817886 () Bool)

(assert (=> bm!469669 m!6817886))

(declare-fun m!6817888 () Bool)

(assert (=> bm!469671 m!6817888))

(assert (=> bm!469563 d!1857195))

(assert (=> b!5921177 d!1857193))

(declare-fun d!1857197 () Bool)

(declare-fun res!2482437 () Bool)

(declare-fun e!3625547 () Bool)

(assert (=> d!1857197 (=> res!2482437 e!3625547)))

(assert (=> d!1857197 (= res!2482437 ((_ is Nil!64088) (t!377603 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))

(assert (=> d!1857197 (= (forall!15054 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))) lambda!323002) e!3625547)))

(declare-fun b!5922319 () Bool)

(declare-fun e!3625548 () Bool)

(assert (=> b!5922319 (= e!3625547 e!3625548)))

(declare-fun res!2482438 () Bool)

(assert (=> b!5922319 (=> (not res!2482438) (not e!3625548))))

(assert (=> b!5922319 (= res!2482438 (dynLambda!25057 lambda!323002 (h!70536 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))))))))

(declare-fun b!5922320 () Bool)

(assert (=> b!5922320 (= e!3625548 (forall!15054 (t!377603 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))) lambda!323002))))

(assert (= (and d!1857197 (not res!2482437)) b!5922319))

(assert (= (and b!5922319 res!2482438) b!5922320))

(declare-fun b_lambda!222447 () Bool)

(assert (=> (not b_lambda!222447) (not b!5922319)))

(declare-fun m!6817890 () Bool)

(assert (=> b!5922319 m!6817890))

(declare-fun m!6817892 () Bool)

(assert (=> b!5922320 m!6817892))

(assert (=> b!5921184 d!1857197))

(declare-fun b!5922321 () Bool)

(declare-fun e!3625550 () Bool)

(declare-fun lt!2310079 () Bool)

(declare-fun call!469677 () Bool)

(assert (=> b!5922321 (= e!3625550 (= lt!2310079 call!469677))))

(declare-fun b!5922322 () Bool)

(declare-fun res!2482446 () Bool)

(declare-fun e!3625552 () Bool)

(assert (=> b!5922322 (=> res!2482446 e!3625552)))

(assert (=> b!5922322 (= res!2482446 (not ((_ is ElementMatch!15971) (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))))))))

(declare-fun e!3625555 () Bool)

(assert (=> b!5922322 (= e!3625555 e!3625552)))

(declare-fun b!5922323 () Bool)

(declare-fun e!3625554 () Bool)

(declare-fun e!3625549 () Bool)

(assert (=> b!5922323 (= e!3625554 e!3625549)))

(declare-fun res!2482445 () Bool)

(assert (=> b!5922323 (=> res!2482445 e!3625549)))

(assert (=> b!5922323 (= res!2482445 call!469677)))

(declare-fun bm!469672 () Bool)

(assert (=> bm!469672 (= call!469677 (isEmpty!35950 (tail!11569 (tail!11569 s!2326))))))

(declare-fun b!5922324 () Bool)

(assert (=> b!5922324 (= e!3625549 (not (= (head!12484 (tail!11569 (tail!11569 s!2326))) (c!1052179 (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326)))))))))

(declare-fun b!5922326 () Bool)

(assert (=> b!5922326 (= e!3625550 e!3625555)))

(declare-fun c!1052612 () Bool)

(assert (=> b!5922326 (= c!1052612 ((_ is EmptyLang!15971) (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326)))))))

(declare-fun b!5922327 () Bool)

(declare-fun res!2482443 () Bool)

(assert (=> b!5922327 (=> res!2482443 e!3625552)))

(declare-fun e!3625551 () Bool)

(assert (=> b!5922327 (= res!2482443 e!3625551)))

(declare-fun res!2482442 () Bool)

(assert (=> b!5922327 (=> (not res!2482442) (not e!3625551))))

(assert (=> b!5922327 (= res!2482442 lt!2310079)))

(declare-fun b!5922328 () Bool)

(assert (=> b!5922328 (= e!3625555 (not lt!2310079))))

(declare-fun b!5922329 () Bool)

(declare-fun res!2482441 () Bool)

(assert (=> b!5922329 (=> (not res!2482441) (not e!3625551))))

(assert (=> b!5922329 (= res!2482441 (isEmpty!35950 (tail!11569 (tail!11569 (tail!11569 s!2326)))))))

(declare-fun b!5922330 () Bool)

(assert (=> b!5922330 (= e!3625551 (= (head!12484 (tail!11569 (tail!11569 s!2326))) (c!1052179 (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))))))))

(declare-fun b!5922331 () Bool)

(declare-fun e!3625553 () Bool)

(assert (=> b!5922331 (= e!3625553 (matchR!8154 (derivativeStep!4702 (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))) (head!12484 (tail!11569 (tail!11569 s!2326)))) (tail!11569 (tail!11569 (tail!11569 s!2326)))))))

(declare-fun b!5922332 () Bool)

(declare-fun res!2482440 () Bool)

(assert (=> b!5922332 (=> res!2482440 e!3625549)))

(assert (=> b!5922332 (= res!2482440 (not (isEmpty!35950 (tail!11569 (tail!11569 (tail!11569 s!2326))))))))

(declare-fun b!5922325 () Bool)

(declare-fun res!2482439 () Bool)

(assert (=> b!5922325 (=> (not res!2482439) (not e!3625551))))

(assert (=> b!5922325 (= res!2482439 (not call!469677))))

(declare-fun d!1857199 () Bool)

(assert (=> d!1857199 e!3625550))

(declare-fun c!1052611 () Bool)

(assert (=> d!1857199 (= c!1052611 ((_ is EmptyExpr!15971) (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326)))))))

(assert (=> d!1857199 (= lt!2310079 e!3625553)))

(declare-fun c!1052613 () Bool)

(assert (=> d!1857199 (= c!1052613 (isEmpty!35950 (tail!11569 (tail!11569 s!2326))))))

(assert (=> d!1857199 (validRegex!7707 (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))))))

(assert (=> d!1857199 (= (matchR!8154 (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))) (tail!11569 (tail!11569 s!2326))) lt!2310079)))

(declare-fun b!5922333 () Bool)

(assert (=> b!5922333 (= e!3625553 (nullable!5966 (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326)))))))

(declare-fun b!5922334 () Bool)

(assert (=> b!5922334 (= e!3625552 e!3625554)))

(declare-fun res!2482444 () Bool)

(assert (=> b!5922334 (=> (not res!2482444) (not e!3625554))))

(assert (=> b!5922334 (= res!2482444 (not lt!2310079))))

(assert (= (and d!1857199 c!1052613) b!5922333))

(assert (= (and d!1857199 (not c!1052613)) b!5922331))

(assert (= (and d!1857199 c!1052611) b!5922321))

(assert (= (and d!1857199 (not c!1052611)) b!5922326))

(assert (= (and b!5922326 c!1052612) b!5922328))

(assert (= (and b!5922326 (not c!1052612)) b!5922322))

(assert (= (and b!5922322 (not res!2482446)) b!5922327))

(assert (= (and b!5922327 res!2482442) b!5922325))

(assert (= (and b!5922325 res!2482439) b!5922329))

(assert (= (and b!5922329 res!2482441) b!5922330))

(assert (= (and b!5922327 (not res!2482443)) b!5922334))

(assert (= (and b!5922334 res!2482444) b!5922323))

(assert (= (and b!5922323 (not res!2482445)) b!5922332))

(assert (= (and b!5922332 (not res!2482440)) b!5922324))

(assert (= (or b!5922321 b!5922323 b!5922325) bm!469672))

(assert (=> b!5922329 m!6817194))

(declare-fun m!6817894 () Bool)

(assert (=> b!5922329 m!6817894))

(assert (=> b!5922329 m!6817894))

(declare-fun m!6817896 () Bool)

(assert (=> b!5922329 m!6817896))

(assert (=> b!5922331 m!6817194))

(declare-fun m!6817898 () Bool)

(assert (=> b!5922331 m!6817898))

(assert (=> b!5922331 m!6817200))

(assert (=> b!5922331 m!6817898))

(declare-fun m!6817900 () Bool)

(assert (=> b!5922331 m!6817900))

(assert (=> b!5922331 m!6817194))

(assert (=> b!5922331 m!6817894))

(assert (=> b!5922331 m!6817900))

(assert (=> b!5922331 m!6817894))

(declare-fun m!6817902 () Bool)

(assert (=> b!5922331 m!6817902))

(assert (=> d!1857199 m!6817194))

(assert (=> d!1857199 m!6817196))

(assert (=> d!1857199 m!6817200))

(declare-fun m!6817904 () Bool)

(assert (=> d!1857199 m!6817904))

(assert (=> b!5922330 m!6817194))

(assert (=> b!5922330 m!6817898))

(assert (=> bm!469672 m!6817194))

(assert (=> bm!469672 m!6817196))

(assert (=> b!5922332 m!6817194))

(assert (=> b!5922332 m!6817894))

(assert (=> b!5922332 m!6817894))

(assert (=> b!5922332 m!6817896))

(assert (=> b!5922324 m!6817194))

(assert (=> b!5922324 m!6817898))

(assert (=> b!5922333 m!6817200))

(declare-fun m!6817906 () Bool)

(assert (=> b!5922333 m!6817906))

(assert (=> b!5921394 d!1857199))

(declare-fun b!5922335 () Bool)

(declare-fun e!3625557 () Regex!15971)

(assert (=> b!5922335 (= e!3625557 (ite (= (head!12484 (tail!11569 s!2326)) (c!1052179 (derivativeStep!4702 r!7292 (head!12484 s!2326)))) EmptyExpr!15971 EmptyLang!15971))))

(declare-fun b!5922336 () Bool)

(declare-fun e!3625560 () Regex!15971)

(assert (=> b!5922336 (= e!3625560 e!3625557)))

(declare-fun c!1052614 () Bool)

(assert (=> b!5922336 (= c!1052614 ((_ is ElementMatch!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(declare-fun b!5922337 () Bool)

(declare-fun e!3625556 () Regex!15971)

(declare-fun e!3625558 () Regex!15971)

(assert (=> b!5922337 (= e!3625556 e!3625558)))

(declare-fun c!1052617 () Bool)

(assert (=> b!5922337 (= c!1052617 ((_ is Star!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(declare-fun c!1052615 () Bool)

(declare-fun call!469681 () Regex!15971)

(declare-fun bm!469673 () Bool)

(assert (=> bm!469673 (= call!469681 (derivativeStep!4702 (ite c!1052615 (regTwo!32455 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (ite c!1052617 (reg!16300 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (regOne!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326))))) (head!12484 (tail!11569 s!2326))))))

(declare-fun b!5922338 () Bool)

(assert (=> b!5922338 (= e!3625560 EmptyLang!15971)))

(declare-fun c!1052616 () Bool)

(declare-fun call!469678 () Regex!15971)

(declare-fun bm!469674 () Bool)

(assert (=> bm!469674 (= call!469678 (derivativeStep!4702 (ite c!1052615 (regOne!32455 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (ite c!1052616 (regTwo!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (regOne!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326))))) (head!12484 (tail!11569 s!2326))))))

(declare-fun b!5922339 () Bool)

(assert (=> b!5922339 (= c!1052616 (nullable!5966 (regOne!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326)))))))

(declare-fun e!3625559 () Regex!15971)

(assert (=> b!5922339 (= e!3625558 e!3625559)))

(declare-fun bm!469675 () Bool)

(declare-fun call!469679 () Regex!15971)

(assert (=> bm!469675 (= call!469679 call!469681)))

(declare-fun b!5922340 () Bool)

(assert (=> b!5922340 (= e!3625556 (Union!15971 call!469678 call!469681))))

(declare-fun bm!469676 () Bool)

(declare-fun call!469680 () Regex!15971)

(assert (=> bm!469676 (= call!469680 call!469678)))

(declare-fun b!5922341 () Bool)

(assert (=> b!5922341 (= e!3625559 (Union!15971 (Concat!24816 call!469679 (regTwo!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326)))) call!469680))))

(declare-fun b!5922343 () Bool)

(assert (=> b!5922343 (= e!3625558 (Concat!24816 call!469679 (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(declare-fun b!5922344 () Bool)

(assert (=> b!5922344 (= c!1052615 ((_ is Union!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(assert (=> b!5922344 (= e!3625557 e!3625556)))

(declare-fun b!5922342 () Bool)

(assert (=> b!5922342 (= e!3625559 (Union!15971 (Concat!24816 call!469680 (regTwo!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326)))) EmptyLang!15971))))

(declare-fun d!1857201 () Bool)

(declare-fun lt!2310080 () Regex!15971)

(assert (=> d!1857201 (validRegex!7707 lt!2310080)))

(assert (=> d!1857201 (= lt!2310080 e!3625560)))

(declare-fun c!1052618 () Bool)

(assert (=> d!1857201 (= c!1052618 (or ((_ is EmptyExpr!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))) ((_ is EmptyLang!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326)))))))

(assert (=> d!1857201 (validRegex!7707 (derivativeStep!4702 r!7292 (head!12484 s!2326)))))

(assert (=> d!1857201 (= (derivativeStep!4702 (derivativeStep!4702 r!7292 (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))) lt!2310080)))

(assert (= (and d!1857201 c!1052618) b!5922338))

(assert (= (and d!1857201 (not c!1052618)) b!5922336))

(assert (= (and b!5922336 c!1052614) b!5922335))

(assert (= (and b!5922336 (not c!1052614)) b!5922344))

(assert (= (and b!5922344 c!1052615) b!5922340))

(assert (= (and b!5922344 (not c!1052615)) b!5922337))

(assert (= (and b!5922337 c!1052617) b!5922343))

(assert (= (and b!5922337 (not c!1052617)) b!5922339))

(assert (= (and b!5922339 c!1052616) b!5922341))

(assert (= (and b!5922339 (not c!1052616)) b!5922342))

(assert (= (or b!5922341 b!5922342) bm!469676))

(assert (= (or b!5922343 b!5922341) bm!469675))

(assert (= (or b!5922340 bm!469675) bm!469673))

(assert (= (or b!5922340 bm!469676) bm!469674))

(assert (=> bm!469673 m!6817198))

(declare-fun m!6817908 () Bool)

(assert (=> bm!469673 m!6817908))

(assert (=> bm!469674 m!6817198))

(declare-fun m!6817910 () Bool)

(assert (=> bm!469674 m!6817910))

(declare-fun m!6817912 () Bool)

(assert (=> b!5922339 m!6817912))

(declare-fun m!6817914 () Bool)

(assert (=> d!1857201 m!6817914))

(assert (=> d!1857201 m!6816884))

(assert (=> d!1857201 m!6817204))

(assert (=> b!5921394 d!1857201))

(assert (=> b!5921394 d!1857099))

(assert (=> b!5921394 d!1857127))

(declare-fun b!5922345 () Bool)

(declare-fun e!3625562 () Regex!15971)

(assert (=> b!5922345 (= e!3625562 (ite (= (head!12484 s!2326) (c!1052179 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))))) EmptyExpr!15971 EmptyLang!15971))))

(declare-fun b!5922346 () Bool)

(declare-fun e!3625565 () Regex!15971)

(assert (=> b!5922346 (= e!3625565 e!3625562)))

(declare-fun c!1052619 () Bool)

(assert (=> b!5922346 (= c!1052619 ((_ is ElementMatch!15971) (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))))))

(declare-fun b!5922347 () Bool)

(declare-fun e!3625561 () Regex!15971)

(declare-fun e!3625563 () Regex!15971)

(assert (=> b!5922347 (= e!3625561 e!3625563)))

(declare-fun c!1052622 () Bool)

(assert (=> b!5922347 (= c!1052622 ((_ is Star!15971) (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))))))

(declare-fun call!469685 () Regex!15971)

(declare-fun bm!469677 () Bool)

(declare-fun c!1052620 () Bool)

(assert (=> bm!469677 (= call!469685 (derivativeStep!4702 (ite c!1052620 (regTwo!32455 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))) (ite c!1052622 (reg!16300 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))))) (head!12484 s!2326)))))

(declare-fun b!5922348 () Bool)

(assert (=> b!5922348 (= e!3625565 EmptyLang!15971)))

(declare-fun bm!469678 () Bool)

(declare-fun c!1052621 () Bool)

(declare-fun call!469682 () Regex!15971)

(assert (=> bm!469678 (= call!469682 (derivativeStep!4702 (ite c!1052620 (regOne!32455 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))) (ite c!1052621 (regTwo!32454 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))))) (head!12484 s!2326)))))

(declare-fun b!5922349 () Bool)

(assert (=> b!5922349 (= c!1052621 (nullable!5966 (regOne!32454 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))))))))

(declare-fun e!3625564 () Regex!15971)

(assert (=> b!5922349 (= e!3625563 e!3625564)))

(declare-fun bm!469679 () Bool)

(declare-fun call!469683 () Regex!15971)

(assert (=> bm!469679 (= call!469683 call!469685)))

(declare-fun b!5922350 () Bool)

(assert (=> b!5922350 (= e!3625561 (Union!15971 call!469682 call!469685))))

(declare-fun bm!469680 () Bool)

(declare-fun call!469684 () Regex!15971)

(assert (=> bm!469680 (= call!469684 call!469682)))

(declare-fun b!5922351 () Bool)

(assert (=> b!5922351 (= e!3625564 (Union!15971 (Concat!24816 call!469683 (regTwo!32454 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))))) call!469684))))

(declare-fun b!5922353 () Bool)

(assert (=> b!5922353 (= e!3625563 (Concat!24816 call!469683 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))))))

(declare-fun b!5922354 () Bool)

(assert (=> b!5922354 (= c!1052620 ((_ is Union!15971) (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))))))

(assert (=> b!5922354 (= e!3625562 e!3625561)))

(declare-fun b!5922352 () Bool)

(assert (=> b!5922352 (= e!3625564 (Union!15971 (Concat!24816 call!469684 (regTwo!32454 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))))) EmptyLang!15971))))

(declare-fun d!1857203 () Bool)

(declare-fun lt!2310081 () Regex!15971)

(assert (=> d!1857203 (validRegex!7707 lt!2310081)))

(assert (=> d!1857203 (= lt!2310081 e!3625565)))

(declare-fun c!1052623 () Bool)

(assert (=> d!1857203 (= c!1052623 (or ((_ is EmptyExpr!15971) (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292)))) ((_ is EmptyLang!15971) (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))))))))

(assert (=> d!1857203 (validRegex!7707 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))))))

(assert (=> d!1857203 (= (derivativeStep!4702 (ite c!1052430 (regTwo!32455 r!7292) (ite c!1052432 (reg!16300 r!7292) (regOne!32454 r!7292))) (head!12484 s!2326)) lt!2310081)))

(assert (= (and d!1857203 c!1052623) b!5922348))

(assert (= (and d!1857203 (not c!1052623)) b!5922346))

(assert (= (and b!5922346 c!1052619) b!5922345))

(assert (= (and b!5922346 (not c!1052619)) b!5922354))

(assert (= (and b!5922354 c!1052620) b!5922350))

(assert (= (and b!5922354 (not c!1052620)) b!5922347))

(assert (= (and b!5922347 c!1052622) b!5922353))

(assert (= (and b!5922347 (not c!1052622)) b!5922349))

(assert (= (and b!5922349 c!1052621) b!5922351))

(assert (= (and b!5922349 (not c!1052621)) b!5922352))

(assert (= (or b!5922351 b!5922352) bm!469680))

(assert (= (or b!5922353 b!5922351) bm!469679))

(assert (= (or b!5922350 bm!469679) bm!469677))

(assert (= (or b!5922350 bm!469680) bm!469678))

(assert (=> bm!469677 m!6816882))

(declare-fun m!6817916 () Bool)

(assert (=> bm!469677 m!6817916))

(assert (=> bm!469678 m!6816882))

(declare-fun m!6817918 () Bool)

(assert (=> bm!469678 m!6817918))

(declare-fun m!6817920 () Bool)

(assert (=> b!5922349 m!6817920))

(declare-fun m!6817922 () Bool)

(assert (=> d!1857203 m!6817922))

(declare-fun m!6817924 () Bool)

(assert (=> d!1857203 m!6817924))

(assert (=> bm!469521 d!1857203))

(declare-fun b!5922355 () Bool)

(declare-fun e!3625569 () (InoxSet Context!10710))

(declare-fun e!3625571 () (InoxSet Context!10710))

(assert (=> b!5922355 (= e!3625569 e!3625571)))

(declare-fun c!1052627 () Bool)

(assert (=> b!5922355 (= c!1052627 ((_ is Union!15971) (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun bm!469681 () Bool)

(declare-fun call!469686 () (InoxSet Context!10710))

(declare-fun call!469691 () (InoxSet Context!10710))

(assert (=> bm!469681 (= call!469686 call!469691)))

(declare-fun b!5922356 () Bool)

(assert (=> b!5922356 (= e!3625569 (store ((as const (Array Context!10710 Bool)) false) (ite c!1052355 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469479)) true))))

(declare-fun b!5922357 () Bool)

(declare-fun c!1052624 () Bool)

(assert (=> b!5922357 (= c!1052624 ((_ is Star!15971) (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun e!3625568 () (InoxSet Context!10710))

(declare-fun e!3625570 () (InoxSet Context!10710))

(assert (=> b!5922357 (= e!3625568 e!3625570)))

(declare-fun c!1052628 () Bool)

(declare-fun d!1857205 () Bool)

(assert (=> d!1857205 (= c!1052628 (and ((_ is ElementMatch!15971) (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) (= (c!1052179 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) (h!70538 s!2326))))))

(assert (=> d!1857205 (= (derivationStepZipperDown!1221 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))) (ite c!1052355 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469479)) (h!70538 s!2326)) e!3625569)))

(declare-fun b!5922358 () Bool)

(declare-fun c!1052626 () Bool)

(declare-fun e!3625566 () Bool)

(assert (=> b!5922358 (= c!1052626 e!3625566)))

(declare-fun res!2482447 () Bool)

(assert (=> b!5922358 (=> (not res!2482447) (not e!3625566))))

(assert (=> b!5922358 (= res!2482447 ((_ is Concat!24816) (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun e!3625567 () (InoxSet Context!10710))

(assert (=> b!5922358 (= e!3625571 e!3625567)))

(declare-fun bm!469682 () Bool)

(declare-fun call!469689 () List!64212)

(declare-fun c!1052625 () Bool)

(assert (=> bm!469682 (= call!469689 ($colon$colon!1858 (exprs!5855 (ite c!1052355 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469479))) (ite (or c!1052626 c!1052625) (regTwo!32454 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun bm!469683 () Bool)

(declare-fun call!469690 () List!64212)

(assert (=> bm!469683 (= call!469690 call!469689)))

(declare-fun b!5922359 () Bool)

(assert (=> b!5922359 (= e!3625570 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922360 () Bool)

(assert (=> b!5922360 (= e!3625567 e!3625568)))

(assert (=> b!5922360 (= c!1052625 ((_ is Concat!24816) (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5922361 () Bool)

(declare-fun call!469687 () (InoxSet Context!10710))

(assert (=> b!5922361 (= e!3625567 ((_ map or) call!469687 call!469691))))

(declare-fun bm!469684 () Bool)

(assert (=> bm!469684 (= call!469687 (derivationStepZipperDown!1221 (ite c!1052627 (regTwo!32455 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) (regOne!32454 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))))) (ite c!1052627 (ite c!1052355 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469479)) (Context!10711 call!469689)) (h!70538 s!2326)))))

(declare-fun b!5922362 () Bool)

(assert (=> b!5922362 (= e!3625568 call!469686)))

(declare-fun b!5922363 () Bool)

(declare-fun call!469688 () (InoxSet Context!10710))

(assert (=> b!5922363 (= e!3625571 ((_ map or) call!469688 call!469687))))

(declare-fun b!5922364 () Bool)

(assert (=> b!5922364 (= e!3625570 call!469686)))

(declare-fun bm!469685 () Bool)

(assert (=> bm!469685 (= call!469691 call!469688)))

(declare-fun b!5922365 () Bool)

(assert (=> b!5922365 (= e!3625566 (nullable!5966 (regOne!32454 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun bm!469686 () Bool)

(assert (=> bm!469686 (= call!469688 (derivationStepZipperDown!1221 (ite c!1052627 (regOne!32455 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) (ite c!1052626 (regTwo!32454 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) (ite c!1052625 (regOne!32454 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) (reg!16300 (ite c!1052355 (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343))))))))) (ite (or c!1052627 c!1052626) (ite c!1052355 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))) (Context!10711 call!469479)) (Context!10711 call!469690)) (h!70538 s!2326)))))

(assert (= (and d!1857205 c!1052628) b!5922356))

(assert (= (and d!1857205 (not c!1052628)) b!5922355))

(assert (= (and b!5922355 c!1052627) b!5922363))

(assert (= (and b!5922355 (not c!1052627)) b!5922358))

(assert (= (and b!5922358 res!2482447) b!5922365))

(assert (= (and b!5922358 c!1052626) b!5922361))

(assert (= (and b!5922358 (not c!1052626)) b!5922360))

(assert (= (and b!5922360 c!1052625) b!5922362))

(assert (= (and b!5922360 (not c!1052625)) b!5922357))

(assert (= (and b!5922357 c!1052624) b!5922364))

(assert (= (and b!5922357 (not c!1052624)) b!5922359))

(assert (= (or b!5922362 b!5922364) bm!469683))

(assert (= (or b!5922362 b!5922364) bm!469681))

(assert (= (or b!5922361 bm!469683) bm!469682))

(assert (= (or b!5922361 bm!469681) bm!469685))

(assert (= (or b!5922363 b!5922361) bm!469684))

(assert (= (or b!5922363 bm!469685) bm!469686))

(declare-fun m!6817926 () Bool)

(assert (=> bm!469686 m!6817926))

(declare-fun m!6817928 () Bool)

(assert (=> bm!469684 m!6817928))

(declare-fun m!6817930 () Bool)

(assert (=> b!5922356 m!6817930))

(declare-fun m!6817932 () Bool)

(assert (=> b!5922365 m!6817932))

(declare-fun m!6817934 () Bool)

(assert (=> bm!469682 m!6817934))

(assert (=> bm!469474 d!1857205))

(declare-fun bs!1401776 () Bool)

(declare-fun d!1857207 () Bool)

(assert (= bs!1401776 (and d!1857207 d!1856735)))

(declare-fun lambda!323059 () Int)

(assert (=> bs!1401776 (= lambda!323059 lambda!323014)))

(declare-fun bs!1401777 () Bool)

(assert (= bs!1401777 (and d!1857207 d!1856717)))

(assert (=> bs!1401777 (= lambda!323059 lambda!323001)))

(declare-fun bs!1401778 () Bool)

(assert (= bs!1401778 (and d!1857207 d!1856903)))

(assert (=> bs!1401778 (= lambda!323059 lambda!323032)))

(declare-fun bs!1401779 () Bool)

(assert (= bs!1401779 (and d!1857207 d!1856873)))

(assert (=> bs!1401779 (= lambda!323059 lambda!323029)))

(declare-fun bs!1401780 () Bool)

(assert (= bs!1401780 (and d!1857207 d!1857129)))

(assert (=> bs!1401780 (= lambda!323059 lambda!323054)))

(declare-fun bs!1401781 () Bool)

(assert (= bs!1401781 (and d!1857207 d!1856887)))

(assert (=> bs!1401781 (= lambda!323059 lambda!323031)))

(declare-fun bs!1401782 () Bool)

(assert (= bs!1401782 (and d!1857207 d!1856675)))

(assert (=> bs!1401782 (= lambda!323059 lambda!322975)))

(declare-fun bs!1401783 () Bool)

(assert (= bs!1401783 (and d!1857207 d!1857123)))

(assert (=> bs!1401783 (= lambda!323059 lambda!323053)))

(declare-fun bs!1401784 () Bool)

(assert (= bs!1401784 (and d!1857207 d!1856641)))

(assert (=> bs!1401784 (= lambda!323059 lambda!322963)))

(declare-fun bs!1401785 () Bool)

(assert (= bs!1401785 (and d!1857207 d!1856733)))

(assert (=> bs!1401785 (= lambda!323059 lambda!323011)))

(declare-fun bs!1401786 () Bool)

(assert (= bs!1401786 (and d!1857207 d!1856723)))

(assert (=> bs!1401786 (= lambda!323059 lambda!323002)))

(declare-fun bs!1401787 () Bool)

(assert (= bs!1401787 (and d!1857207 d!1856817)))

(assert (=> bs!1401787 (= lambda!323059 lambda!323024)))

(declare-fun bs!1401788 () Bool)

(assert (= bs!1401788 (and d!1857207 d!1856951)))

(assert (=> bs!1401788 (= lambda!323059 lambda!323038)))

(assert (=> d!1857207 (= (inv!83174 (h!70537 res!2482187)) (forall!15054 (exprs!5855 (h!70537 res!2482187)) lambda!323059))))

(declare-fun bs!1401789 () Bool)

(assert (= bs!1401789 d!1857207))

(declare-fun m!6817936 () Bool)

(assert (=> bs!1401789 m!6817936))

(assert (=> b!5921509 d!1857207))

(assert (=> d!1856919 d!1856785))

(declare-fun d!1857209 () Bool)

(declare-fun res!2482452 () Bool)

(declare-fun e!3625577 () Bool)

(assert (=> d!1857209 (=> res!2482452 e!3625577)))

(assert (=> d!1857209 (= res!2482452 ((_ is ElementMatch!15971) (regTwo!32454 r!7292)))))

(assert (=> d!1857209 (= (validRegex!7707 (regTwo!32454 r!7292)) e!3625577)))

(declare-fun b!5922366 () Bool)

(declare-fun e!3625578 () Bool)

(declare-fun e!3625576 () Bool)

(assert (=> b!5922366 (= e!3625578 e!3625576)))

(declare-fun res!2482449 () Bool)

(assert (=> b!5922366 (= res!2482449 (not (nullable!5966 (reg!16300 (regTwo!32454 r!7292)))))))

(assert (=> b!5922366 (=> (not res!2482449) (not e!3625576))))

(declare-fun bm!469687 () Bool)

(declare-fun call!469694 () Bool)

(declare-fun c!1052629 () Bool)

(assert (=> bm!469687 (= call!469694 (validRegex!7707 (ite c!1052629 (regTwo!32455 (regTwo!32454 r!7292)) (regTwo!32454 (regTwo!32454 r!7292)))))))

(declare-fun b!5922367 () Bool)

(declare-fun res!2482451 () Bool)

(declare-fun e!3625573 () Bool)

(assert (=> b!5922367 (=> res!2482451 e!3625573)))

(assert (=> b!5922367 (= res!2482451 (not ((_ is Concat!24816) (regTwo!32454 r!7292))))))

(declare-fun e!3625572 () Bool)

(assert (=> b!5922367 (= e!3625572 e!3625573)))

(declare-fun b!5922368 () Bool)

(declare-fun res!2482448 () Bool)

(declare-fun e!3625574 () Bool)

(assert (=> b!5922368 (=> (not res!2482448) (not e!3625574))))

(declare-fun call!469693 () Bool)

(assert (=> b!5922368 (= res!2482448 call!469693)))

(assert (=> b!5922368 (= e!3625572 e!3625574)))

(declare-fun bm!469688 () Bool)

(declare-fun call!469692 () Bool)

(assert (=> bm!469688 (= call!469693 call!469692)))

(declare-fun b!5922369 () Bool)

(assert (=> b!5922369 (= e!3625576 call!469692)))

(declare-fun b!5922370 () Bool)

(declare-fun e!3625575 () Bool)

(assert (=> b!5922370 (= e!3625575 call!469694)))

(declare-fun b!5922371 () Bool)

(assert (=> b!5922371 (= e!3625573 e!3625575)))

(declare-fun res!2482450 () Bool)

(assert (=> b!5922371 (=> (not res!2482450) (not e!3625575))))

(assert (=> b!5922371 (= res!2482450 call!469693)))

(declare-fun b!5922372 () Bool)

(assert (=> b!5922372 (= e!3625578 e!3625572)))

(assert (=> b!5922372 (= c!1052629 ((_ is Union!15971) (regTwo!32454 r!7292)))))

(declare-fun b!5922373 () Bool)

(assert (=> b!5922373 (= e!3625574 call!469694)))

(declare-fun c!1052630 () Bool)

(declare-fun bm!469689 () Bool)

(assert (=> bm!469689 (= call!469692 (validRegex!7707 (ite c!1052630 (reg!16300 (regTwo!32454 r!7292)) (ite c!1052629 (regOne!32455 (regTwo!32454 r!7292)) (regOne!32454 (regTwo!32454 r!7292))))))))

(declare-fun b!5922374 () Bool)

(assert (=> b!5922374 (= e!3625577 e!3625578)))

(assert (=> b!5922374 (= c!1052630 ((_ is Star!15971) (regTwo!32454 r!7292)))))

(assert (= (and d!1857209 (not res!2482452)) b!5922374))

(assert (= (and b!5922374 c!1052630) b!5922366))

(assert (= (and b!5922374 (not c!1052630)) b!5922372))

(assert (= (and b!5922366 res!2482449) b!5922369))

(assert (= (and b!5922372 c!1052629) b!5922368))

(assert (= (and b!5922372 (not c!1052629)) b!5922367))

(assert (= (and b!5922368 res!2482448) b!5922373))

(assert (= (and b!5922367 (not res!2482451)) b!5922371))

(assert (= (and b!5922371 res!2482450) b!5922370))

(assert (= (or b!5922373 b!5922370) bm!469687))

(assert (= (or b!5922368 b!5922371) bm!469688))

(assert (= (or b!5922369 bm!469688) bm!469689))

(declare-fun m!6817938 () Bool)

(assert (=> b!5922366 m!6817938))

(declare-fun m!6817940 () Bool)

(assert (=> bm!469687 m!6817940))

(declare-fun m!6817942 () Bool)

(assert (=> bm!469689 m!6817942))

(assert (=> d!1856919 d!1857209))

(declare-fun b!5922375 () Bool)

(declare-fun e!3625582 () (InoxSet Context!10710))

(declare-fun e!3625584 () (InoxSet Context!10710))

(assert (=> b!5922375 (= e!3625582 e!3625584)))

(declare-fun c!1052634 () Bool)

(assert (=> b!5922375 (= c!1052634 ((_ is Union!15971) (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))))

(declare-fun bm!469690 () Bool)

(declare-fun call!469695 () (InoxSet Context!10710))

(declare-fun call!469700 () (InoxSet Context!10710))

(assert (=> bm!469690 (= call!469695 call!469700)))

(declare-fun b!5922376 () Bool)

(assert (=> b!5922376 (= e!3625582 (store ((as const (Array Context!10710 Bool)) false) (ite (or c!1052454 c!1052453) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469544)) true))))

(declare-fun c!1052631 () Bool)

(declare-fun b!5922377 () Bool)

(assert (=> b!5922377 (= c!1052631 ((_ is Star!15971) (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))))

(declare-fun e!3625581 () (InoxSet Context!10710))

(declare-fun e!3625583 () (InoxSet Context!10710))

(assert (=> b!5922377 (= e!3625581 e!3625583)))

(declare-fun d!1857211 () Bool)

(declare-fun c!1052635 () Bool)

(assert (=> d!1857211 (= c!1052635 (and ((_ is ElementMatch!15971) (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))) (= (c!1052179 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))) (h!70538 s!2326))))))

(assert (=> d!1857211 (= (derivationStepZipperDown!1221 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))) (ite (or c!1052454 c!1052453) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469544)) (h!70538 s!2326)) e!3625582)))

(declare-fun b!5922378 () Bool)

(declare-fun c!1052633 () Bool)

(declare-fun e!3625579 () Bool)

(assert (=> b!5922378 (= c!1052633 e!3625579)))

(declare-fun res!2482453 () Bool)

(assert (=> b!5922378 (=> (not res!2482453) (not e!3625579))))

(assert (=> b!5922378 (= res!2482453 ((_ is Concat!24816) (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))))

(declare-fun e!3625580 () (InoxSet Context!10710))

(assert (=> b!5922378 (= e!3625584 e!3625580)))

(declare-fun call!469698 () List!64212)

(declare-fun bm!469691 () Bool)

(declare-fun c!1052632 () Bool)

(assert (=> bm!469691 (= call!469698 ($colon$colon!1858 (exprs!5855 (ite (or c!1052454 c!1052453) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469544))) (ite (or c!1052633 c!1052632) (regTwo!32454 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))) (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))))))

(declare-fun bm!469692 () Bool)

(declare-fun call!469699 () List!64212)

(assert (=> bm!469692 (= call!469699 call!469698)))

(declare-fun b!5922379 () Bool)

(assert (=> b!5922379 (= e!3625583 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922380 () Bool)

(assert (=> b!5922380 (= e!3625580 e!3625581)))

(assert (=> b!5922380 (= c!1052632 ((_ is Concat!24816) (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))))

(declare-fun b!5922381 () Bool)

(declare-fun call!469696 () (InoxSet Context!10710))

(assert (=> b!5922381 (= e!3625580 ((_ map or) call!469696 call!469700))))

(declare-fun bm!469693 () Bool)

(assert (=> bm!469693 (= call!469696 (derivationStepZipperDown!1221 (ite c!1052634 (regTwo!32455 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))) (regOne!32454 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))) (ite c!1052634 (ite (or c!1052454 c!1052453) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469544)) (Context!10711 call!469698)) (h!70538 s!2326)))))

(declare-fun b!5922382 () Bool)

(assert (=> b!5922382 (= e!3625581 call!469695)))

(declare-fun b!5922383 () Bool)

(declare-fun call!469697 () (InoxSet Context!10710))

(assert (=> b!5922383 (= e!3625584 ((_ map or) call!469697 call!469696))))

(declare-fun b!5922384 () Bool)

(assert (=> b!5922384 (= e!3625583 call!469695)))

(declare-fun bm!469694 () Bool)

(assert (=> bm!469694 (= call!469700 call!469697)))

(declare-fun b!5922385 () Bool)

(assert (=> b!5922385 (= e!3625579 (nullable!5966 (regOne!32454 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))))))

(declare-fun bm!469695 () Bool)

(assert (=> bm!469695 (= call!469697 (derivationStepZipperDown!1221 (ite c!1052634 (regOne!32455 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))) (ite c!1052633 (regTwo!32454 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))) (ite c!1052632 (regOne!32454 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))) (reg!16300 (ite c!1052454 (regOne!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052453 (regTwo!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (ite c!1052452 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (reg!16300 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))))) (ite (or c!1052634 c!1052633) (ite (or c!1052454 c!1052453) (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469544)) (Context!10711 call!469699)) (h!70538 s!2326)))))

(assert (= (and d!1857211 c!1052635) b!5922376))

(assert (= (and d!1857211 (not c!1052635)) b!5922375))

(assert (= (and b!5922375 c!1052634) b!5922383))

(assert (= (and b!5922375 (not c!1052634)) b!5922378))

(assert (= (and b!5922378 res!2482453) b!5922385))

(assert (= (and b!5922378 c!1052633) b!5922381))

(assert (= (and b!5922378 (not c!1052633)) b!5922380))

(assert (= (and b!5922380 c!1052632) b!5922382))

(assert (= (and b!5922380 (not c!1052632)) b!5922377))

(assert (= (and b!5922377 c!1052631) b!5922384))

(assert (= (and b!5922377 (not c!1052631)) b!5922379))

(assert (= (or b!5922382 b!5922384) bm!469692))

(assert (= (or b!5922382 b!5922384) bm!469690))

(assert (= (or b!5922381 bm!469692) bm!469691))

(assert (= (or b!5922381 bm!469690) bm!469694))

(assert (= (or b!5922383 b!5922381) bm!469693))

(assert (= (or b!5922383 bm!469694) bm!469695))

(declare-fun m!6817944 () Bool)

(assert (=> bm!469695 m!6817944))

(declare-fun m!6817946 () Bool)

(assert (=> bm!469693 m!6817946))

(declare-fun m!6817948 () Bool)

(assert (=> b!5922376 m!6817948))

(declare-fun m!6817950 () Bool)

(assert (=> b!5922385 m!6817950))

(declare-fun m!6817952 () Bool)

(assert (=> bm!469691 m!6817952))

(assert (=> bm!469540 d!1857211))

(declare-fun bs!1401790 () Bool)

(declare-fun d!1857213 () Bool)

(assert (= bs!1401790 (and d!1857213 d!1856735)))

(declare-fun lambda!323060 () Int)

(assert (=> bs!1401790 (= lambda!323060 lambda!323014)))

(declare-fun bs!1401791 () Bool)

(assert (= bs!1401791 (and d!1857213 d!1856717)))

(assert (=> bs!1401791 (= lambda!323060 lambda!323001)))

(declare-fun bs!1401792 () Bool)

(assert (= bs!1401792 (and d!1857213 d!1856903)))

(assert (=> bs!1401792 (= lambda!323060 lambda!323032)))

(declare-fun bs!1401793 () Bool)

(assert (= bs!1401793 (and d!1857213 d!1856873)))

(assert (=> bs!1401793 (= lambda!323060 lambda!323029)))

(declare-fun bs!1401794 () Bool)

(assert (= bs!1401794 (and d!1857213 d!1857129)))

(assert (=> bs!1401794 (= lambda!323060 lambda!323054)))

(declare-fun bs!1401795 () Bool)

(assert (= bs!1401795 (and d!1857213 d!1856887)))

(assert (=> bs!1401795 (= lambda!323060 lambda!323031)))

(declare-fun bs!1401796 () Bool)

(assert (= bs!1401796 (and d!1857213 d!1856675)))

(assert (=> bs!1401796 (= lambda!323060 lambda!322975)))

(declare-fun bs!1401797 () Bool)

(assert (= bs!1401797 (and d!1857213 d!1857123)))

(assert (=> bs!1401797 (= lambda!323060 lambda!323053)))

(declare-fun bs!1401798 () Bool)

(assert (= bs!1401798 (and d!1857213 d!1856641)))

(assert (=> bs!1401798 (= lambda!323060 lambda!322963)))

(declare-fun bs!1401799 () Bool)

(assert (= bs!1401799 (and d!1857213 d!1856733)))

(assert (=> bs!1401799 (= lambda!323060 lambda!323011)))

(declare-fun bs!1401800 () Bool)

(assert (= bs!1401800 (and d!1857213 d!1856723)))

(assert (=> bs!1401800 (= lambda!323060 lambda!323002)))

(declare-fun bs!1401801 () Bool)

(assert (= bs!1401801 (and d!1857213 d!1856817)))

(assert (=> bs!1401801 (= lambda!323060 lambda!323024)))

(declare-fun bs!1401802 () Bool)

(assert (= bs!1401802 (and d!1857213 d!1856951)))

(assert (=> bs!1401802 (= lambda!323060 lambda!323038)))

(declare-fun bs!1401803 () Bool)

(assert (= bs!1401803 (and d!1857213 d!1857207)))

(assert (=> bs!1401803 (= lambda!323060 lambda!323059)))

(declare-fun b!5922386 () Bool)

(declare-fun e!3625590 () Bool)

(declare-fun lt!2310082 () Regex!15971)

(assert (=> b!5922386 (= e!3625590 (isConcat!922 lt!2310082))))

(declare-fun b!5922387 () Bool)

(declare-fun e!3625586 () Regex!15971)

(declare-fun e!3625585 () Regex!15971)

(assert (=> b!5922387 (= e!3625586 e!3625585)))

(declare-fun c!1052637 () Bool)

(assert (=> b!5922387 (= c!1052637 ((_ is Cons!64088) (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5922388 () Bool)

(assert (=> b!5922388 (= e!3625586 (h!70536 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5922389 () Bool)

(declare-fun e!3625587 () Bool)

(assert (=> b!5922389 (= e!3625587 (isEmpty!35946 (t!377603 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun e!3625589 () Bool)

(assert (=> d!1857213 e!3625589))

(declare-fun res!2482454 () Bool)

(assert (=> d!1857213 (=> (not res!2482454) (not e!3625589))))

(assert (=> d!1857213 (= res!2482454 (validRegex!7707 lt!2310082))))

(assert (=> d!1857213 (= lt!2310082 e!3625586)))

(declare-fun c!1052639 () Bool)

(assert (=> d!1857213 (= c!1052639 e!3625587)))

(declare-fun res!2482455 () Bool)

(assert (=> d!1857213 (=> (not res!2482455) (not e!3625587))))

(assert (=> d!1857213 (= res!2482455 ((_ is Cons!64088) (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(assert (=> d!1857213 (forall!15054 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))) lambda!323060)))

(assert (=> d!1857213 (= (generalisedConcat!1568 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))) lt!2310082)))

(declare-fun b!5922390 () Bool)

(declare-fun e!3625588 () Bool)

(assert (=> b!5922390 (= e!3625588 e!3625590)))

(declare-fun c!1052636 () Bool)

(assert (=> b!5922390 (= c!1052636 (isEmpty!35946 (tail!11567 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5922391 () Bool)

(assert (=> b!5922391 (= e!3625585 (Concat!24816 (h!70536 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))) (generalisedConcat!1568 (t!377603 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun b!5922392 () Bool)

(assert (=> b!5922392 (= e!3625590 (= lt!2310082 (head!12482 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))

(declare-fun b!5922393 () Bool)

(assert (=> b!5922393 (= e!3625588 (isEmptyExpr!1399 lt!2310082))))

(declare-fun b!5922394 () Bool)

(assert (=> b!5922394 (= e!3625589 e!3625588)))

(declare-fun c!1052638 () Bool)

(assert (=> b!5922394 (= c!1052638 (isEmpty!35946 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5922395 () Bool)

(assert (=> b!5922395 (= e!3625585 EmptyExpr!15971)))

(assert (= (and d!1857213 res!2482455) b!5922389))

(assert (= (and d!1857213 c!1052639) b!5922388))

(assert (= (and d!1857213 (not c!1052639)) b!5922387))

(assert (= (and b!5922387 c!1052637) b!5922391))

(assert (= (and b!5922387 (not c!1052637)) b!5922395))

(assert (= (and d!1857213 res!2482454) b!5922394))

(assert (= (and b!5922394 c!1052638) b!5922393))

(assert (= (and b!5922394 (not c!1052638)) b!5922390))

(assert (= (and b!5922390 c!1052636) b!5922392))

(assert (= (and b!5922390 (not c!1052636)) b!5922386))

(declare-fun m!6817954 () Bool)

(assert (=> b!5922390 m!6817954))

(assert (=> b!5922390 m!6817954))

(declare-fun m!6817956 () Bool)

(assert (=> b!5922390 m!6817956))

(declare-fun m!6817958 () Bool)

(assert (=> d!1857213 m!6817958))

(declare-fun m!6817960 () Bool)

(assert (=> d!1857213 m!6817960))

(declare-fun m!6817962 () Bool)

(assert (=> b!5922393 m!6817962))

(assert (=> b!5922394 m!6817238))

(declare-fun m!6817964 () Bool)

(assert (=> b!5922392 m!6817964))

(declare-fun m!6817966 () Bool)

(assert (=> b!5922389 m!6817966))

(declare-fun m!6817968 () Bool)

(assert (=> b!5922391 m!6817968))

(declare-fun m!6817970 () Bool)

(assert (=> b!5922386 m!6817970))

(assert (=> b!5921458 d!1857213))

(declare-fun d!1857215 () Bool)

(assert (=> d!1857215 (= (isEmpty!35950 (_2!36253 (get!22069 lt!2309996))) ((_ is Nil!64090) (_2!36253 (get!22069 lt!2309996))))))

(assert (=> d!1856757 d!1857215))

(assert (=> d!1856757 d!1857209))

(assert (=> b!5921373 d!1857089))

(declare-fun d!1857217 () Bool)

(assert (=> d!1857217 (= (nullable!5966 (reg!16300 lt!2310024)) (nullableFct!1937 (reg!16300 lt!2310024)))))

(declare-fun bs!1401804 () Bool)

(assert (= bs!1401804 d!1857217))

(declare-fun m!6817972 () Bool)

(assert (=> bs!1401804 m!6817972))

(assert (=> b!5921514 d!1857217))

(declare-fun bs!1401805 () Bool)

(declare-fun d!1857219 () Bool)

(assert (= bs!1401805 (and d!1857219 d!1856735)))

(declare-fun lambda!323061 () Int)

(assert (=> bs!1401805 (= lambda!323061 lambda!323014)))

(declare-fun bs!1401806 () Bool)

(assert (= bs!1401806 (and d!1857219 d!1856717)))

(assert (=> bs!1401806 (= lambda!323061 lambda!323001)))

(declare-fun bs!1401807 () Bool)

(assert (= bs!1401807 (and d!1857219 d!1856903)))

(assert (=> bs!1401807 (= lambda!323061 lambda!323032)))

(declare-fun bs!1401808 () Bool)

(assert (= bs!1401808 (and d!1857219 d!1856873)))

(assert (=> bs!1401808 (= lambda!323061 lambda!323029)))

(declare-fun bs!1401809 () Bool)

(assert (= bs!1401809 (and d!1857219 d!1857129)))

(assert (=> bs!1401809 (= lambda!323061 lambda!323054)))

(declare-fun bs!1401810 () Bool)

(assert (= bs!1401810 (and d!1857219 d!1856887)))

(assert (=> bs!1401810 (= lambda!323061 lambda!323031)))

(declare-fun bs!1401811 () Bool)

(assert (= bs!1401811 (and d!1857219 d!1856675)))

(assert (=> bs!1401811 (= lambda!323061 lambda!322975)))

(declare-fun bs!1401812 () Bool)

(assert (= bs!1401812 (and d!1857219 d!1857213)))

(assert (=> bs!1401812 (= lambda!323061 lambda!323060)))

(declare-fun bs!1401813 () Bool)

(assert (= bs!1401813 (and d!1857219 d!1857123)))

(assert (=> bs!1401813 (= lambda!323061 lambda!323053)))

(declare-fun bs!1401814 () Bool)

(assert (= bs!1401814 (and d!1857219 d!1856641)))

(assert (=> bs!1401814 (= lambda!323061 lambda!322963)))

(declare-fun bs!1401815 () Bool)

(assert (= bs!1401815 (and d!1857219 d!1856733)))

(assert (=> bs!1401815 (= lambda!323061 lambda!323011)))

(declare-fun bs!1401816 () Bool)

(assert (= bs!1401816 (and d!1857219 d!1856723)))

(assert (=> bs!1401816 (= lambda!323061 lambda!323002)))

(declare-fun bs!1401817 () Bool)

(assert (= bs!1401817 (and d!1857219 d!1856817)))

(assert (=> bs!1401817 (= lambda!323061 lambda!323024)))

(declare-fun bs!1401818 () Bool)

(assert (= bs!1401818 (and d!1857219 d!1856951)))

(assert (=> bs!1401818 (= lambda!323061 lambda!323038)))

(declare-fun bs!1401819 () Bool)

(assert (= bs!1401819 (and d!1857219 d!1857207)))

(assert (=> bs!1401819 (= lambda!323061 lambda!323059)))

(assert (=> d!1857219 (= (inv!83174 setElem!40185) (forall!15054 (exprs!5855 setElem!40185) lambda!323061))))

(declare-fun bs!1401820 () Bool)

(assert (= bs!1401820 d!1857219))

(declare-fun m!6817974 () Bool)

(assert (=> bs!1401820 m!6817974))

(assert (=> setNonEmpty!40185 d!1857219))

(declare-fun b!5922396 () Bool)

(declare-fun e!3625592 () Bool)

(declare-fun call!469701 () Bool)

(assert (=> b!5922396 (= e!3625592 call!469701)))

(declare-fun b!5922397 () Bool)

(declare-fun e!3625591 () Bool)

(declare-fun e!3625593 () Bool)

(assert (=> b!5922397 (= e!3625591 e!3625593)))

(declare-fun res!2482459 () Bool)

(assert (=> b!5922397 (=> (not res!2482459) (not e!3625593))))

(assert (=> b!5922397 (= res!2482459 (and (not ((_ is EmptyLang!15971) (reg!16300 r!7292))) (not ((_ is ElementMatch!15971) (reg!16300 r!7292)))))))

(declare-fun b!5922398 () Bool)

(declare-fun e!3625594 () Bool)

(declare-fun e!3625596 () Bool)

(assert (=> b!5922398 (= e!3625594 e!3625596)))

(declare-fun res!2482458 () Bool)

(declare-fun call!469702 () Bool)

(assert (=> b!5922398 (= res!2482458 call!469702)))

(assert (=> b!5922398 (=> res!2482458 e!3625596)))

(declare-fun bm!469696 () Bool)

(declare-fun c!1052640 () Bool)

(assert (=> bm!469696 (= call!469701 (nullable!5966 (ite c!1052640 (regTwo!32455 (reg!16300 r!7292)) (regTwo!32454 (reg!16300 r!7292)))))))

(declare-fun b!5922399 () Bool)

(declare-fun e!3625595 () Bool)

(assert (=> b!5922399 (= e!3625593 e!3625595)))

(declare-fun res!2482456 () Bool)

(assert (=> b!5922399 (=> res!2482456 e!3625595)))

(assert (=> b!5922399 (= res!2482456 ((_ is Star!15971) (reg!16300 r!7292)))))

(declare-fun b!5922400 () Bool)

(assert (=> b!5922400 (= e!3625594 e!3625592)))

(declare-fun res!2482457 () Bool)

(assert (=> b!5922400 (= res!2482457 call!469702)))

(assert (=> b!5922400 (=> (not res!2482457) (not e!3625592))))

(declare-fun b!5922401 () Bool)

(assert (=> b!5922401 (= e!3625596 call!469701)))

(declare-fun d!1857221 () Bool)

(declare-fun res!2482460 () Bool)

(assert (=> d!1857221 (=> res!2482460 e!3625591)))

(assert (=> d!1857221 (= res!2482460 ((_ is EmptyExpr!15971) (reg!16300 r!7292)))))

(assert (=> d!1857221 (= (nullableFct!1937 (reg!16300 r!7292)) e!3625591)))

(declare-fun b!5922402 () Bool)

(assert (=> b!5922402 (= e!3625595 e!3625594)))

(assert (=> b!5922402 (= c!1052640 ((_ is Union!15971) (reg!16300 r!7292)))))

(declare-fun bm!469697 () Bool)

(assert (=> bm!469697 (= call!469702 (nullable!5966 (ite c!1052640 (regOne!32455 (reg!16300 r!7292)) (regOne!32454 (reg!16300 r!7292)))))))

(assert (= (and d!1857221 (not res!2482460)) b!5922397))

(assert (= (and b!5922397 res!2482459) b!5922399))

(assert (= (and b!5922399 (not res!2482456)) b!5922402))

(assert (= (and b!5922402 c!1052640) b!5922398))

(assert (= (and b!5922402 (not c!1052640)) b!5922400))

(assert (= (and b!5922398 (not res!2482458)) b!5922401))

(assert (= (and b!5922400 res!2482457) b!5922396))

(assert (= (or b!5922401 b!5922396) bm!469696))

(assert (= (or b!5922398 b!5922400) bm!469697))

(declare-fun m!6817976 () Bool)

(assert (=> bm!469696 m!6817976))

(declare-fun m!6817978 () Bool)

(assert (=> bm!469697 m!6817978))

(assert (=> d!1856947 d!1857221))

(declare-fun d!1857223 () Bool)

(declare-fun res!2482465 () Bool)

(declare-fun e!3625602 () Bool)

(assert (=> d!1857223 (=> res!2482465 e!3625602)))

(assert (=> d!1857223 (= res!2482465 ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))

(assert (=> d!1857223 (= (validRegex!7707 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))) e!3625602)))

(declare-fun b!5922403 () Bool)

(declare-fun e!3625603 () Bool)

(declare-fun e!3625601 () Bool)

(assert (=> b!5922403 (= e!3625603 e!3625601)))

(declare-fun res!2482462 () Bool)

(assert (=> b!5922403 (= res!2482462 (not (nullable!5966 (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))))

(assert (=> b!5922403 (=> (not res!2482462) (not e!3625601))))

(declare-fun bm!469698 () Bool)

(declare-fun call!469705 () Bool)

(declare-fun c!1052641 () Bool)

(assert (=> bm!469698 (= call!469705 (validRegex!7707 (ite c!1052641 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))) (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))))

(declare-fun b!5922404 () Bool)

(declare-fun res!2482464 () Bool)

(declare-fun e!3625598 () Bool)

(assert (=> b!5922404 (=> res!2482464 e!3625598)))

(assert (=> b!5922404 (= res!2482464 (not ((_ is Concat!24816) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))))))))

(declare-fun e!3625597 () Bool)

(assert (=> b!5922404 (= e!3625597 e!3625598)))

(declare-fun b!5922405 () Bool)

(declare-fun res!2482461 () Bool)

(declare-fun e!3625599 () Bool)

(assert (=> b!5922405 (=> (not res!2482461) (not e!3625599))))

(declare-fun call!469704 () Bool)

(assert (=> b!5922405 (= res!2482461 call!469704)))

(assert (=> b!5922405 (= e!3625597 e!3625599)))

(declare-fun bm!469699 () Bool)

(declare-fun call!469703 () Bool)

(assert (=> bm!469699 (= call!469704 call!469703)))

(declare-fun b!5922406 () Bool)

(assert (=> b!5922406 (= e!3625601 call!469703)))

(declare-fun b!5922407 () Bool)

(declare-fun e!3625600 () Bool)

(assert (=> b!5922407 (= e!3625600 call!469705)))

(declare-fun b!5922408 () Bool)

(assert (=> b!5922408 (= e!3625598 e!3625600)))

(declare-fun res!2482463 () Bool)

(assert (=> b!5922408 (=> (not res!2482463) (not e!3625600))))

(assert (=> b!5922408 (= res!2482463 call!469704)))

(declare-fun b!5922409 () Bool)

(assert (=> b!5922409 (= e!3625603 e!3625597)))

(assert (=> b!5922409 (= c!1052641 ((_ is Union!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))

(declare-fun b!5922410 () Bool)

(assert (=> b!5922410 (= e!3625599 call!469705)))

(declare-fun bm!469700 () Bool)

(declare-fun c!1052642 () Bool)

(assert (=> bm!469700 (= call!469703 (validRegex!7707 (ite c!1052642 (reg!16300 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))) (ite c!1052641 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))))))))))

(declare-fun b!5922411 () Bool)

(assert (=> b!5922411 (= e!3625602 e!3625603)))

(assert (=> b!5922411 (= c!1052642 ((_ is Star!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088)))))))))

(assert (= (and d!1857223 (not res!2482465)) b!5922411))

(assert (= (and b!5922411 c!1052642) b!5922403))

(assert (= (and b!5922411 (not c!1052642)) b!5922409))

(assert (= (and b!5922403 res!2482462) b!5922406))

(assert (= (and b!5922409 c!1052641) b!5922405))

(assert (= (and b!5922409 (not c!1052641)) b!5922404))

(assert (= (and b!5922405 res!2482461) b!5922410))

(assert (= (and b!5922404 (not res!2482464)) b!5922408))

(assert (= (and b!5922408 res!2482463) b!5922407))

(assert (= (or b!5922410 b!5922407) bm!469698))

(assert (= (or b!5922405 b!5922408) bm!469699))

(assert (= (or b!5922406 bm!469699) bm!469700))

(declare-fun m!6817980 () Bool)

(assert (=> b!5922403 m!6817980))

(declare-fun m!6817982 () Bool)

(assert (=> bm!469698 m!6817982))

(declare-fun m!6817984 () Bool)

(assert (=> bm!469700 m!6817984))

(assert (=> bs!1401606 d!1857223))

(declare-fun d!1857225 () Bool)

(assert (=> d!1857225 true))

(assert (=> d!1857225 true))

(declare-fun res!2482466 () Bool)

(assert (=> d!1857225 (= (choose!44653 lambda!323000) res!2482466)))

(assert (=> d!1856823 d!1857225))

(declare-fun d!1857227 () Bool)

(assert (=> d!1857227 (= (nullable!5966 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))) (nullableFct!1937 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))

(declare-fun bs!1401821 () Bool)

(assert (= bs!1401821 d!1857227))

(declare-fun m!6817986 () Bool)

(assert (=> bs!1401821 m!6817986))

(assert (=> b!5921355 d!1857227))

(assert (=> b!5921551 d!1856871))

(declare-fun d!1857229 () Bool)

(declare-fun c!1052645 () Bool)

(assert (=> d!1857229 (= c!1052645 ((_ is Nil!64090) lt!2310028))))

(declare-fun e!3625606 () (InoxSet C!32212))

(assert (=> d!1857229 (= (content!11801 lt!2310028) e!3625606)))

(declare-fun b!5922416 () Bool)

(assert (=> b!5922416 (= e!3625606 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922417 () Bool)

(assert (=> b!5922417 (= e!3625606 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 lt!2310028) true) (content!11801 (t!377605 lt!2310028))))))

(assert (= (and d!1857229 c!1052645) b!5922416))

(assert (= (and d!1857229 (not c!1052645)) b!5922417))

(declare-fun m!6817988 () Bool)

(assert (=> b!5922417 m!6817988))

(declare-fun m!6817990 () Bool)

(assert (=> b!5922417 m!6817990))

(assert (=> d!1856763 d!1857229))

(declare-fun d!1857231 () Bool)

(declare-fun c!1052646 () Bool)

(assert (=> d!1857231 (= c!1052646 ((_ is Nil!64090) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(declare-fun e!3625607 () (InoxSet C!32212))

(assert (=> d!1857231 (= (content!11801 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) e!3625607)))

(declare-fun b!5922418 () Bool)

(assert (=> b!5922418 (= e!3625607 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922419 () Bool)

(assert (=> b!5922419 (= e!3625607 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) true) (content!11801 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))))

(assert (= (and d!1857231 c!1052646) b!5922418))

(assert (= (and d!1857231 (not c!1052646)) b!5922419))

(declare-fun m!6817992 () Bool)

(assert (=> b!5922419 m!6817992))

(declare-fun m!6817994 () Bool)

(assert (=> b!5922419 m!6817994))

(assert (=> d!1856763 d!1857231))

(declare-fun d!1857233 () Bool)

(declare-fun c!1052647 () Bool)

(assert (=> d!1857233 (= c!1052647 ((_ is Nil!64090) (t!377605 s!2326)))))

(declare-fun e!3625608 () (InoxSet C!32212))

(assert (=> d!1857233 (= (content!11801 (t!377605 s!2326)) e!3625608)))

(declare-fun b!5922420 () Bool)

(assert (=> b!5922420 (= e!3625608 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922421 () Bool)

(assert (=> b!5922421 (= e!3625608 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 (t!377605 s!2326)) true) (content!11801 (t!377605 (t!377605 s!2326)))))))

(assert (= (and d!1857233 c!1052647) b!5922420))

(assert (= (and d!1857233 (not c!1052647)) b!5922421))

(declare-fun m!6817996 () Bool)

(assert (=> b!5922421 m!6817996))

(declare-fun m!6817998 () Bool)

(assert (=> b!5922421 m!6817998))

(assert (=> d!1856763 d!1857233))

(assert (=> bm!469552 d!1856785))

(assert (=> d!1856853 d!1856849))

(declare-fun d!1857235 () Bool)

(declare-fun res!2482471 () Bool)

(declare-fun e!3625614 () Bool)

(assert (=> d!1857235 (=> res!2482471 e!3625614)))

(assert (=> d!1857235 (= res!2482471 ((_ is ElementMatch!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(assert (=> d!1857235 (= (validRegex!7707 (derivativeStep!4702 r!7292 (head!12484 s!2326))) e!3625614)))

(declare-fun b!5922422 () Bool)

(declare-fun e!3625615 () Bool)

(declare-fun e!3625613 () Bool)

(assert (=> b!5922422 (= e!3625615 e!3625613)))

(declare-fun res!2482468 () Bool)

(assert (=> b!5922422 (= res!2482468 (not (nullable!5966 (reg!16300 (derivativeStep!4702 r!7292 (head!12484 s!2326))))))))

(assert (=> b!5922422 (=> (not res!2482468) (not e!3625613))))

(declare-fun bm!469701 () Bool)

(declare-fun c!1052648 () Bool)

(declare-fun call!469708 () Bool)

(assert (=> bm!469701 (= call!469708 (validRegex!7707 (ite c!1052648 (regTwo!32455 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (regTwo!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326))))))))

(declare-fun b!5922423 () Bool)

(declare-fun res!2482470 () Bool)

(declare-fun e!3625610 () Bool)

(assert (=> b!5922423 (=> res!2482470 e!3625610)))

(assert (=> b!5922423 (= res!2482470 (not ((_ is Concat!24816) (derivativeStep!4702 r!7292 (head!12484 s!2326)))))))

(declare-fun e!3625609 () Bool)

(assert (=> b!5922423 (= e!3625609 e!3625610)))

(declare-fun b!5922424 () Bool)

(declare-fun res!2482467 () Bool)

(declare-fun e!3625611 () Bool)

(assert (=> b!5922424 (=> (not res!2482467) (not e!3625611))))

(declare-fun call!469707 () Bool)

(assert (=> b!5922424 (= res!2482467 call!469707)))

(assert (=> b!5922424 (= e!3625609 e!3625611)))

(declare-fun bm!469702 () Bool)

(declare-fun call!469706 () Bool)

(assert (=> bm!469702 (= call!469707 call!469706)))

(declare-fun b!5922425 () Bool)

(assert (=> b!5922425 (= e!3625613 call!469706)))

(declare-fun b!5922426 () Bool)

(declare-fun e!3625612 () Bool)

(assert (=> b!5922426 (= e!3625612 call!469708)))

(declare-fun b!5922427 () Bool)

(assert (=> b!5922427 (= e!3625610 e!3625612)))

(declare-fun res!2482469 () Bool)

(assert (=> b!5922427 (=> (not res!2482469) (not e!3625612))))

(assert (=> b!5922427 (= res!2482469 call!469707)))

(declare-fun b!5922428 () Bool)

(assert (=> b!5922428 (= e!3625615 e!3625609)))

(assert (=> b!5922428 (= c!1052648 ((_ is Union!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(declare-fun b!5922429 () Bool)

(assert (=> b!5922429 (= e!3625611 call!469708)))

(declare-fun c!1052649 () Bool)

(declare-fun bm!469703 () Bool)

(assert (=> bm!469703 (= call!469706 (validRegex!7707 (ite c!1052649 (reg!16300 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (ite c!1052648 (regOne!32455 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (regOne!32454 (derivativeStep!4702 r!7292 (head!12484 s!2326)))))))))

(declare-fun b!5922430 () Bool)

(assert (=> b!5922430 (= e!3625614 e!3625615)))

(assert (=> b!5922430 (= c!1052649 ((_ is Star!15971) (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(assert (= (and d!1857235 (not res!2482471)) b!5922430))

(assert (= (and b!5922430 c!1052649) b!5922422))

(assert (= (and b!5922430 (not c!1052649)) b!5922428))

(assert (= (and b!5922422 res!2482468) b!5922425))

(assert (= (and b!5922428 c!1052648) b!5922424))

(assert (= (and b!5922428 (not c!1052648)) b!5922423))

(assert (= (and b!5922424 res!2482467) b!5922429))

(assert (= (and b!5922423 (not res!2482470)) b!5922427))

(assert (= (and b!5922427 res!2482469) b!5922426))

(assert (= (or b!5922429 b!5922426) bm!469701))

(assert (= (or b!5922424 b!5922427) bm!469702))

(assert (= (or b!5922425 bm!469702) bm!469703))

(declare-fun m!6818000 () Bool)

(assert (=> b!5922422 m!6818000))

(declare-fun m!6818002 () Bool)

(assert (=> bm!469701 m!6818002))

(declare-fun m!6818004 () Bool)

(assert (=> bm!469703 m!6818004))

(assert (=> d!1856853 d!1857235))

(declare-fun bs!1401822 () Bool)

(declare-fun d!1857237 () Bool)

(assert (= bs!1401822 (and d!1857237 d!1856735)))

(declare-fun lambda!323062 () Int)

(assert (=> bs!1401822 (= lambda!323062 lambda!323014)))

(declare-fun bs!1401823 () Bool)

(assert (= bs!1401823 (and d!1857237 d!1856717)))

(assert (=> bs!1401823 (= lambda!323062 lambda!323001)))

(declare-fun bs!1401824 () Bool)

(assert (= bs!1401824 (and d!1857237 d!1856903)))

(assert (=> bs!1401824 (= lambda!323062 lambda!323032)))

(declare-fun bs!1401825 () Bool)

(assert (= bs!1401825 (and d!1857237 d!1856873)))

(assert (=> bs!1401825 (= lambda!323062 lambda!323029)))

(declare-fun bs!1401826 () Bool)

(assert (= bs!1401826 (and d!1857237 d!1857129)))

(assert (=> bs!1401826 (= lambda!323062 lambda!323054)))

(declare-fun bs!1401827 () Bool)

(assert (= bs!1401827 (and d!1857237 d!1856887)))

(assert (=> bs!1401827 (= lambda!323062 lambda!323031)))

(declare-fun bs!1401828 () Bool)

(assert (= bs!1401828 (and d!1857237 d!1856675)))

(assert (=> bs!1401828 (= lambda!323062 lambda!322975)))

(declare-fun bs!1401829 () Bool)

(assert (= bs!1401829 (and d!1857237 d!1857213)))

(assert (=> bs!1401829 (= lambda!323062 lambda!323060)))

(declare-fun bs!1401830 () Bool)

(assert (= bs!1401830 (and d!1857237 d!1857123)))

(assert (=> bs!1401830 (= lambda!323062 lambda!323053)))

(declare-fun bs!1401831 () Bool)

(assert (= bs!1401831 (and d!1857237 d!1856641)))

(assert (=> bs!1401831 (= lambda!323062 lambda!322963)))

(declare-fun bs!1401832 () Bool)

(assert (= bs!1401832 (and d!1857237 d!1856733)))

(assert (=> bs!1401832 (= lambda!323062 lambda!323011)))

(declare-fun bs!1401833 () Bool)

(assert (= bs!1401833 (and d!1857237 d!1857219)))

(assert (=> bs!1401833 (= lambda!323062 lambda!323061)))

(declare-fun bs!1401834 () Bool)

(assert (= bs!1401834 (and d!1857237 d!1856723)))

(assert (=> bs!1401834 (= lambda!323062 lambda!323002)))

(declare-fun bs!1401835 () Bool)

(assert (= bs!1401835 (and d!1857237 d!1856817)))

(assert (=> bs!1401835 (= lambda!323062 lambda!323024)))

(declare-fun bs!1401836 () Bool)

(assert (= bs!1401836 (and d!1857237 d!1856951)))

(assert (=> bs!1401836 (= lambda!323062 lambda!323038)))

(declare-fun bs!1401837 () Bool)

(assert (= bs!1401837 (and d!1857237 d!1857207)))

(assert (=> bs!1401837 (= lambda!323062 lambda!323059)))

(declare-fun b!5922431 () Bool)

(declare-fun e!3625621 () Bool)

(declare-fun lt!2310083 () Regex!15971)

(assert (=> b!5922431 (= e!3625621 (isEmptyLang!1408 lt!2310083))))

(declare-fun b!5922432 () Bool)

(declare-fun e!3625619 () Bool)

(assert (=> b!5922432 (= e!3625619 (= lt!2310083 (head!12482 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))))))))

(declare-fun b!5922433 () Bool)

(declare-fun e!3625620 () Regex!15971)

(assert (=> b!5922433 (= e!3625620 (Union!15971 (h!70536 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))) (generalisedUnion!1815 (t!377603 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))))))))

(declare-fun b!5922434 () Bool)

(declare-fun e!3625618 () Regex!15971)

(assert (=> b!5922434 (= e!3625618 e!3625620)))

(declare-fun c!1052650 () Bool)

(assert (=> b!5922434 (= c!1052650 ((_ is Cons!64088) (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun e!3625617 () Bool)

(assert (=> d!1857237 e!3625617))

(declare-fun res!2482473 () Bool)

(assert (=> d!1857237 (=> (not res!2482473) (not e!3625617))))

(assert (=> d!1857237 (= res!2482473 (validRegex!7707 lt!2310083))))

(assert (=> d!1857237 (= lt!2310083 e!3625618)))

(declare-fun c!1052651 () Bool)

(declare-fun e!3625616 () Bool)

(assert (=> d!1857237 (= c!1052651 e!3625616)))

(declare-fun res!2482472 () Bool)

(assert (=> d!1857237 (=> (not res!2482472) (not e!3625616))))

(assert (=> d!1857237 (= res!2482472 ((_ is Cons!64088) (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(assert (=> d!1857237 (forall!15054 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))) lambda!323062)))

(assert (=> d!1857237 (= (generalisedUnion!1815 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))) lt!2310083)))

(declare-fun b!5922435 () Bool)

(assert (=> b!5922435 (= e!3625619 (isUnion!838 lt!2310083))))

(declare-fun b!5922436 () Bool)

(assert (=> b!5922436 (= e!3625621 e!3625619)))

(declare-fun c!1052652 () Bool)

(assert (=> b!5922436 (= c!1052652 (isEmpty!35946 (tail!11567 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))))))))

(declare-fun b!5922437 () Bool)

(assert (=> b!5922437 (= e!3625618 (h!70536 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5922438 () Bool)

(assert (=> b!5922438 (= e!3625616 (isEmpty!35946 (t!377603 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))))))))

(declare-fun b!5922439 () Bool)

(assert (=> b!5922439 (= e!3625617 e!3625621)))

(declare-fun c!1052653 () Bool)

(assert (=> b!5922439 (= c!1052653 (isEmpty!35946 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5922440 () Bool)

(assert (=> b!5922440 (= e!3625620 EmptyLang!15971)))

(assert (= (and d!1857237 res!2482472) b!5922438))

(assert (= (and d!1857237 c!1052651) b!5922437))

(assert (= (and d!1857237 (not c!1052651)) b!5922434))

(assert (= (and b!5922434 c!1052650) b!5922433))

(assert (= (and b!5922434 (not c!1052650)) b!5922440))

(assert (= (and d!1857237 res!2482473) b!5922439))

(assert (= (and b!5922439 c!1052653) b!5922431))

(assert (= (and b!5922439 (not c!1052653)) b!5922436))

(assert (= (and b!5922436 c!1052652) b!5922432))

(assert (= (and b!5922436 (not c!1052652)) b!5922435))

(declare-fun m!6818006 () Bool)

(assert (=> b!5922435 m!6818006))

(assert (=> b!5922439 m!6817268))

(declare-fun m!6818008 () Bool)

(assert (=> b!5922431 m!6818008))

(declare-fun m!6818010 () Bool)

(assert (=> b!5922436 m!6818010))

(assert (=> b!5922436 m!6818010))

(declare-fun m!6818012 () Bool)

(assert (=> b!5922436 m!6818012))

(declare-fun m!6818014 () Bool)

(assert (=> b!5922438 m!6818014))

(declare-fun m!6818016 () Bool)

(assert (=> b!5922432 m!6818016))

(declare-fun m!6818018 () Bool)

(assert (=> d!1857237 m!6818018))

(declare-fun m!6818020 () Bool)

(assert (=> d!1857237 m!6818020))

(declare-fun m!6818022 () Bool)

(assert (=> b!5922433 m!6818022))

(assert (=> b!5921477 d!1857237))

(declare-fun d!1857239 () Bool)

(declare-fun res!2482478 () Bool)

(declare-fun e!3625627 () Bool)

(assert (=> d!1857239 (=> res!2482478 e!3625627)))

(assert (=> d!1857239 (= res!2482478 ((_ is ElementMatch!15971) (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))))))

(assert (=> d!1857239 (= (validRegex!7707 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))) e!3625627)))

(declare-fun b!5922441 () Bool)

(declare-fun e!3625628 () Bool)

(declare-fun e!3625626 () Bool)

(assert (=> b!5922441 (= e!3625628 e!3625626)))

(declare-fun res!2482475 () Bool)

(assert (=> b!5922441 (= res!2482475 (not (nullable!5966 (reg!16300 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))))))))

(assert (=> b!5922441 (=> (not res!2482475) (not e!3625626))))

(declare-fun bm!469704 () Bool)

(declare-fun call!469711 () Bool)

(declare-fun c!1052654 () Bool)

(assert (=> bm!469704 (= call!469711 (validRegex!7707 (ite c!1052654 (regTwo!32455 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))) (regTwo!32454 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))))))))

(declare-fun b!5922442 () Bool)

(declare-fun res!2482477 () Bool)

(declare-fun e!3625623 () Bool)

(assert (=> b!5922442 (=> res!2482477 e!3625623)))

(assert (=> b!5922442 (= res!2482477 (not ((_ is Concat!24816) (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966)))))))

(declare-fun e!3625622 () Bool)

(assert (=> b!5922442 (= e!3625622 e!3625623)))

(declare-fun b!5922443 () Bool)

(declare-fun res!2482474 () Bool)

(declare-fun e!3625624 () Bool)

(assert (=> b!5922443 (=> (not res!2482474) (not e!3625624))))

(declare-fun call!469710 () Bool)

(assert (=> b!5922443 (= res!2482474 call!469710)))

(assert (=> b!5922443 (= e!3625622 e!3625624)))

(declare-fun bm!469705 () Bool)

(declare-fun call!469709 () Bool)

(assert (=> bm!469705 (= call!469710 call!469709)))

(declare-fun b!5922444 () Bool)

(assert (=> b!5922444 (= e!3625626 call!469709)))

(declare-fun b!5922445 () Bool)

(declare-fun e!3625625 () Bool)

(assert (=> b!5922445 (= e!3625625 call!469711)))

(declare-fun b!5922446 () Bool)

(assert (=> b!5922446 (= e!3625623 e!3625625)))

(declare-fun res!2482476 () Bool)

(assert (=> b!5922446 (=> (not res!2482476) (not e!3625625))))

(assert (=> b!5922446 (= res!2482476 call!469710)))

(declare-fun b!5922447 () Bool)

(assert (=> b!5922447 (= e!3625628 e!3625622)))

(assert (=> b!5922447 (= c!1052654 ((_ is Union!15971) (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))))))

(declare-fun b!5922448 () Bool)

(assert (=> b!5922448 (= e!3625624 call!469711)))

(declare-fun bm!469706 () Bool)

(declare-fun c!1052655 () Bool)

(assert (=> bm!469706 (= call!469709 (validRegex!7707 (ite c!1052655 (reg!16300 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))) (ite c!1052654 (regOne!32455 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))) (regOne!32454 (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966)))))))))

(declare-fun b!5922449 () Bool)

(assert (=> b!5922449 (= e!3625627 e!3625628)))

(assert (=> b!5922449 (= c!1052655 ((_ is Star!15971) (ite c!1052479 (regTwo!32455 lt!2309966) (regTwo!32454 lt!2309966))))))

(assert (= (and d!1857239 (not res!2482478)) b!5922449))

(assert (= (and b!5922449 c!1052655) b!5922441))

(assert (= (and b!5922449 (not c!1052655)) b!5922447))

(assert (= (and b!5922441 res!2482475) b!5922444))

(assert (= (and b!5922447 c!1052654) b!5922443))

(assert (= (and b!5922447 (not c!1052654)) b!5922442))

(assert (= (and b!5922443 res!2482474) b!5922448))

(assert (= (and b!5922442 (not res!2482477)) b!5922446))

(assert (= (and b!5922446 res!2482476) b!5922445))

(assert (= (or b!5922448 b!5922445) bm!469704))

(assert (= (or b!5922443 b!5922446) bm!469705))

(assert (= (or b!5922444 bm!469705) bm!469706))

(declare-fun m!6818024 () Bool)

(assert (=> b!5922441 m!6818024))

(declare-fun m!6818026 () Bool)

(assert (=> bm!469704 m!6818026))

(declare-fun m!6818028 () Bool)

(assert (=> bm!469706 m!6818028))

(assert (=> bm!469561 d!1857239))

(assert (=> b!5921168 d!1857103))

(declare-fun d!1857241 () Bool)

(assert (=> d!1857241 (= (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (nullableFct!1937 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))

(declare-fun bs!1401838 () Bool)

(assert (= bs!1401838 d!1857241))

(declare-fun m!6818030 () Bool)

(assert (=> bs!1401838 m!6818030))

(assert (=> b!5921150 d!1857241))

(declare-fun d!1857243 () Bool)

(declare-fun lt!2310086 () Int)

(assert (=> d!1857243 (>= lt!2310086 0)))

(declare-fun e!3625631 () Int)

(assert (=> d!1857243 (= lt!2310086 e!3625631)))

(declare-fun c!1052658 () Bool)

(assert (=> d!1857243 (= c!1052658 ((_ is Nil!64090) lt!2310029))))

(assert (=> d!1857243 (= (size!40137 lt!2310029) lt!2310086)))

(declare-fun b!5922454 () Bool)

(assert (=> b!5922454 (= e!3625631 0)))

(declare-fun b!5922455 () Bool)

(assert (=> b!5922455 (= e!3625631 (+ 1 (size!40137 (t!377605 lt!2310029))))))

(assert (= (and d!1857243 c!1052658) b!5922454))

(assert (= (and d!1857243 (not c!1052658)) b!5922455))

(declare-fun m!6818032 () Bool)

(assert (=> b!5922455 m!6818032))

(assert (=> b!5921199 d!1857243))

(declare-fun d!1857245 () Bool)

(declare-fun lt!2310087 () Int)

(assert (=> d!1857245 (>= lt!2310087 0)))

(declare-fun e!3625632 () Int)

(assert (=> d!1857245 (= lt!2310087 e!3625632)))

(declare-fun c!1052659 () Bool)

(assert (=> d!1857245 (= c!1052659 ((_ is Nil!64090) Nil!64090))))

(assert (=> d!1857245 (= (size!40137 Nil!64090) lt!2310087)))

(declare-fun b!5922456 () Bool)

(assert (=> b!5922456 (= e!3625632 0)))

(declare-fun b!5922457 () Bool)

(assert (=> b!5922457 (= e!3625632 (+ 1 (size!40137 (t!377605 Nil!64090))))))

(assert (= (and d!1857245 c!1052659) b!5922456))

(assert (= (and d!1857245 (not c!1052659)) b!5922457))

(declare-fun m!6818034 () Bool)

(assert (=> b!5922457 m!6818034))

(assert (=> b!5921199 d!1857245))

(declare-fun d!1857247 () Bool)

(declare-fun lt!2310088 () Int)

(assert (=> d!1857247 (>= lt!2310088 0)))

(declare-fun e!3625633 () Int)

(assert (=> d!1857247 (= lt!2310088 e!3625633)))

(declare-fun c!1052660 () Bool)

(assert (=> d!1857247 (= c!1052660 ((_ is Nil!64090) (Cons!64090 (h!70538 s!2326) Nil!64090)))))

(assert (=> d!1857247 (= (size!40137 (Cons!64090 (h!70538 s!2326) Nil!64090)) lt!2310088)))

(declare-fun b!5922458 () Bool)

(assert (=> b!5922458 (= e!3625633 0)))

(declare-fun b!5922459 () Bool)

(assert (=> b!5922459 (= e!3625633 (+ 1 (size!40137 (t!377605 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(assert (= (and d!1857247 c!1052660) b!5922458))

(assert (= (and d!1857247 (not c!1052660)) b!5922459))

(declare-fun m!6818036 () Bool)

(assert (=> b!5922459 m!6818036))

(assert (=> b!5921199 d!1857247))

(declare-fun d!1857249 () Bool)

(assert (=> d!1857249 (= (isDefined!12565 lt!2310034) (not (isEmpty!35949 lt!2310034)))))

(declare-fun bs!1401839 () Bool)

(assert (= bs!1401839 d!1857249))

(declare-fun m!6818038 () Bool)

(assert (=> bs!1401839 m!6818038))

(assert (=> b!5921206 d!1857249))

(assert (=> d!1856769 d!1857249))

(declare-fun b!5922460 () Bool)

(declare-fun e!3625635 () Bool)

(declare-fun lt!2310089 () Bool)

(declare-fun call!469712 () Bool)

(assert (=> b!5922460 (= e!3625635 (= lt!2310089 call!469712))))

(declare-fun b!5922461 () Bool)

(declare-fun res!2482486 () Bool)

(declare-fun e!3625637 () Bool)

(assert (=> b!5922461 (=> res!2482486 e!3625637)))

(assert (=> b!5922461 (= res!2482486 (not ((_ is ElementMatch!15971) (regOne!32454 r!7292))))))

(declare-fun e!3625640 () Bool)

(assert (=> b!5922461 (= e!3625640 e!3625637)))

(declare-fun b!5922462 () Bool)

(declare-fun e!3625639 () Bool)

(declare-fun e!3625634 () Bool)

(assert (=> b!5922462 (= e!3625639 e!3625634)))

(declare-fun res!2482485 () Bool)

(assert (=> b!5922462 (=> res!2482485 e!3625634)))

(assert (=> b!5922462 (= res!2482485 call!469712)))

(declare-fun bm!469707 () Bool)

(assert (=> bm!469707 (= call!469712 (isEmpty!35950 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(declare-fun b!5922463 () Bool)

(assert (=> b!5922463 (= e!3625634 (not (= (head!12484 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (c!1052179 (regOne!32454 r!7292)))))))

(declare-fun b!5922465 () Bool)

(assert (=> b!5922465 (= e!3625635 e!3625640)))

(declare-fun c!1052662 () Bool)

(assert (=> b!5922465 (= c!1052662 ((_ is EmptyLang!15971) (regOne!32454 r!7292)))))

(declare-fun b!5922466 () Bool)

(declare-fun res!2482483 () Bool)

(assert (=> b!5922466 (=> res!2482483 e!3625637)))

(declare-fun e!3625636 () Bool)

(assert (=> b!5922466 (= res!2482483 e!3625636)))

(declare-fun res!2482482 () Bool)

(assert (=> b!5922466 (=> (not res!2482482) (not e!3625636))))

(assert (=> b!5922466 (= res!2482482 lt!2310089)))

(declare-fun b!5922467 () Bool)

(assert (=> b!5922467 (= e!3625640 (not lt!2310089))))

(declare-fun b!5922468 () Bool)

(declare-fun res!2482481 () Bool)

(assert (=> b!5922468 (=> (not res!2482481) (not e!3625636))))

(assert (=> b!5922468 (= res!2482481 (isEmpty!35950 (tail!11569 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(declare-fun b!5922469 () Bool)

(assert (=> b!5922469 (= e!3625636 (= (head!12484 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (c!1052179 (regOne!32454 r!7292))))))

(declare-fun b!5922470 () Bool)

(declare-fun e!3625638 () Bool)

(assert (=> b!5922470 (= e!3625638 (matchR!8154 (derivativeStep!4702 (regOne!32454 r!7292) (head!12484 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))) (tail!11569 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(declare-fun b!5922471 () Bool)

(declare-fun res!2482480 () Bool)

(assert (=> b!5922471 (=> res!2482480 e!3625634)))

(assert (=> b!5922471 (= res!2482480 (not (isEmpty!35950 (tail!11569 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))))

(declare-fun b!5922464 () Bool)

(declare-fun res!2482479 () Bool)

(assert (=> b!5922464 (=> (not res!2482479) (not e!3625636))))

(assert (=> b!5922464 (= res!2482479 (not call!469712))))

(declare-fun d!1857251 () Bool)

(assert (=> d!1857251 e!3625635))

(declare-fun c!1052661 () Bool)

(assert (=> d!1857251 (= c!1052661 ((_ is EmptyExpr!15971) (regOne!32454 r!7292)))))

(assert (=> d!1857251 (= lt!2310089 e!3625638)))

(declare-fun c!1052663 () Bool)

(assert (=> d!1857251 (= c!1052663 (isEmpty!35950 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(assert (=> d!1857251 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1857251 (= (matchR!8154 (regOne!32454 r!7292) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) lt!2310089)))

(declare-fun b!5922472 () Bool)

(assert (=> b!5922472 (= e!3625638 (nullable!5966 (regOne!32454 r!7292)))))

(declare-fun b!5922473 () Bool)

(assert (=> b!5922473 (= e!3625637 e!3625639)))

(declare-fun res!2482484 () Bool)

(assert (=> b!5922473 (=> (not res!2482484) (not e!3625639))))

(assert (=> b!5922473 (= res!2482484 (not lt!2310089))))

(assert (= (and d!1857251 c!1052663) b!5922472))

(assert (= (and d!1857251 (not c!1052663)) b!5922470))

(assert (= (and d!1857251 c!1052661) b!5922460))

(assert (= (and d!1857251 (not c!1052661)) b!5922465))

(assert (= (and b!5922465 c!1052662) b!5922467))

(assert (= (and b!5922465 (not c!1052662)) b!5922461))

(assert (= (and b!5922461 (not res!2482486)) b!5922466))

(assert (= (and b!5922466 res!2482482) b!5922464))

(assert (= (and b!5922464 res!2482479) b!5922468))

(assert (= (and b!5922468 res!2482481) b!5922469))

(assert (= (and b!5922466 (not res!2482483)) b!5922473))

(assert (= (and b!5922473 res!2482484) b!5922462))

(assert (= (and b!5922462 (not res!2482485)) b!5922471))

(assert (= (and b!5922471 (not res!2482480)) b!5922463))

(assert (= (or b!5922460 b!5922462 b!5922464) bm!469707))

(assert (=> b!5922468 m!6816798))

(declare-fun m!6818040 () Bool)

(assert (=> b!5922468 m!6818040))

(assert (=> b!5922468 m!6818040))

(declare-fun m!6818042 () Bool)

(assert (=> b!5922468 m!6818042))

(assert (=> b!5922470 m!6816798))

(declare-fun m!6818044 () Bool)

(assert (=> b!5922470 m!6818044))

(assert (=> b!5922470 m!6818044))

(declare-fun m!6818046 () Bool)

(assert (=> b!5922470 m!6818046))

(assert (=> b!5922470 m!6816798))

(assert (=> b!5922470 m!6818040))

(assert (=> b!5922470 m!6818046))

(assert (=> b!5922470 m!6818040))

(declare-fun m!6818048 () Bool)

(assert (=> b!5922470 m!6818048))

(assert (=> d!1857251 m!6816798))

(declare-fun m!6818050 () Bool)

(assert (=> d!1857251 m!6818050))

(assert (=> d!1857251 m!6816790))

(assert (=> b!5922469 m!6816798))

(assert (=> b!5922469 m!6818044))

(assert (=> bm!469707 m!6816798))

(assert (=> bm!469707 m!6818050))

(assert (=> b!5922471 m!6816798))

(assert (=> b!5922471 m!6818040))

(assert (=> b!5922471 m!6818040))

(assert (=> b!5922471 m!6818042))

(assert (=> b!5922463 m!6816798))

(assert (=> b!5922463 m!6818044))

(assert (=> b!5922472 m!6816858))

(assert (=> d!1856769 d!1857251))

(assert (=> d!1856769 d!1856777))

(declare-fun d!1857253 () Bool)

(declare-fun res!2482487 () Bool)

(declare-fun e!3625641 () Bool)

(assert (=> d!1857253 (=> res!2482487 e!3625641)))

(assert (=> d!1857253 (= res!2482487 ((_ is Nil!64088) (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> d!1857253 (= (forall!15054 (t!377603 (exprs!5855 (h!70537 zl!343))) lambda!323001) e!3625641)))

(declare-fun b!5922474 () Bool)

(declare-fun e!3625642 () Bool)

(assert (=> b!5922474 (= e!3625641 e!3625642)))

(declare-fun res!2482488 () Bool)

(assert (=> b!5922474 (=> (not res!2482488) (not e!3625642))))

(assert (=> b!5922474 (= res!2482488 (dynLambda!25057 lambda!323001 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5922475 () Bool)

(assert (=> b!5922475 (= e!3625642 (forall!15054 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))) lambda!323001))))

(assert (= (and d!1857253 (not res!2482487)) b!5922474))

(assert (= (and b!5922474 res!2482488) b!5922475))

(declare-fun b_lambda!222449 () Bool)

(assert (=> (not b_lambda!222449) (not b!5922474)))

(declare-fun m!6818052 () Bool)

(assert (=> b!5922474 m!6818052))

(declare-fun m!6818054 () Bool)

(assert (=> b!5922475 m!6818054))

(assert (=> b!5921288 d!1857253))

(assert (=> b!5921532 d!1857177))

(assert (=> b!5921381 d!1857155))

(assert (=> b!5921381 d!1857157))

(declare-fun b!5922476 () Bool)

(declare-fun e!3625646 () (InoxSet Context!10710))

(declare-fun e!3625648 () (InoxSet Context!10710))

(assert (=> b!5922476 (= e!3625646 e!3625648)))

(declare-fun c!1052667 () Bool)

(assert (=> b!5922476 (= c!1052667 ((_ is Union!15971) (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))))

(declare-fun bm!469708 () Bool)

(declare-fun call!469713 () (InoxSet Context!10710))

(declare-fun call!469718 () (InoxSet Context!10710))

(assert (=> bm!469708 (= call!469713 call!469718)))

(declare-fun b!5922477 () Bool)

(assert (=> b!5922477 (= e!3625646 (store ((as const (Array Context!10710 Bool)) false) (ite (or c!1052462 c!1052461) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469551)) true))))

(declare-fun c!1052664 () Bool)

(declare-fun b!5922478 () Bool)

(assert (=> b!5922478 (= c!1052664 ((_ is Star!15971) (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))))

(declare-fun e!3625645 () (InoxSet Context!10710))

(declare-fun e!3625647 () (InoxSet Context!10710))

(assert (=> b!5922478 (= e!3625645 e!3625647)))

(declare-fun d!1857255 () Bool)

(declare-fun c!1052668 () Bool)

(assert (=> d!1857255 (= c!1052668 (and ((_ is ElementMatch!15971) (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))) (= (c!1052179 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))) (h!70538 s!2326))))))

(assert (=> d!1857255 (= (derivationStepZipperDown!1221 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))) (ite (or c!1052462 c!1052461) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469551)) (h!70538 s!2326)) e!3625646)))

(declare-fun b!5922479 () Bool)

(declare-fun c!1052666 () Bool)

(declare-fun e!3625643 () Bool)

(assert (=> b!5922479 (= c!1052666 e!3625643)))

(declare-fun res!2482489 () Bool)

(assert (=> b!5922479 (=> (not res!2482489) (not e!3625643))))

(assert (=> b!5922479 (= res!2482489 ((_ is Concat!24816) (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))))

(declare-fun e!3625644 () (InoxSet Context!10710))

(assert (=> b!5922479 (= e!3625648 e!3625644)))

(declare-fun call!469716 () List!64212)

(declare-fun bm!469709 () Bool)

(declare-fun c!1052665 () Bool)

(assert (=> bm!469709 (= call!469716 ($colon$colon!1858 (exprs!5855 (ite (or c!1052462 c!1052461) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469551))) (ite (or c!1052666 c!1052665) (regTwo!32454 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))) (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))))))

(declare-fun bm!469710 () Bool)

(declare-fun call!469717 () List!64212)

(assert (=> bm!469710 (= call!469717 call!469716)))

(declare-fun b!5922480 () Bool)

(assert (=> b!5922480 (= e!3625647 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922481 () Bool)

(assert (=> b!5922481 (= e!3625644 e!3625645)))

(assert (=> b!5922481 (= c!1052665 ((_ is Concat!24816) (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))))))

(declare-fun b!5922482 () Bool)

(declare-fun call!469714 () (InoxSet Context!10710))

(assert (=> b!5922482 (= e!3625644 ((_ map or) call!469714 call!469718))))

(declare-fun bm!469711 () Bool)

(assert (=> bm!469711 (= call!469714 (derivationStepZipperDown!1221 (ite c!1052667 (regTwo!32455 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))) (regOne!32454 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))) (ite c!1052667 (ite (or c!1052462 c!1052461) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469551)) (Context!10711 call!469716)) (h!70538 s!2326)))))

(declare-fun b!5922483 () Bool)

(assert (=> b!5922483 (= e!3625645 call!469713)))

(declare-fun b!5922484 () Bool)

(declare-fun call!469715 () (InoxSet Context!10710))

(assert (=> b!5922484 (= e!3625648 ((_ map or) call!469715 call!469714))))

(declare-fun b!5922485 () Bool)

(assert (=> b!5922485 (= e!3625647 call!469713)))

(declare-fun bm!469712 () Bool)

(assert (=> bm!469712 (= call!469718 call!469715)))

(declare-fun b!5922486 () Bool)

(assert (=> b!5922486 (= e!3625643 (nullable!5966 (regOne!32454 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))))))

(declare-fun bm!469713 () Bool)

(assert (=> bm!469713 (= call!469715 (derivationStepZipperDown!1221 (ite c!1052667 (regOne!32455 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))) (ite c!1052666 (regTwo!32454 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))) (ite c!1052665 (regOne!32454 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))))))) (reg!16300 (ite c!1052462 (regOne!32455 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052461 (regTwo!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (ite c!1052460 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292))))) (reg!16300 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))))) (ite (or c!1052667 c!1052666) (ite (or c!1052462 c!1052461) (ite (or c!1052304 c!1052303) (Context!10711 Nil!64088) (Context!10711 call!469454)) (Context!10711 call!469551)) (Context!10711 call!469717)) (h!70538 s!2326)))))

(assert (= (and d!1857255 c!1052668) b!5922477))

(assert (= (and d!1857255 (not c!1052668)) b!5922476))

(assert (= (and b!5922476 c!1052667) b!5922484))

(assert (= (and b!5922476 (not c!1052667)) b!5922479))

(assert (= (and b!5922479 res!2482489) b!5922486))

(assert (= (and b!5922479 c!1052666) b!5922482))

(assert (= (and b!5922479 (not c!1052666)) b!5922481))

(assert (= (and b!5922481 c!1052665) b!5922483))

(assert (= (and b!5922481 (not c!1052665)) b!5922478))

(assert (= (and b!5922478 c!1052664) b!5922485))

(assert (= (and b!5922478 (not c!1052664)) b!5922480))

(assert (= (or b!5922483 b!5922485) bm!469710))

(assert (= (or b!5922483 b!5922485) bm!469708))

(assert (= (or b!5922482 bm!469710) bm!469709))

(assert (= (or b!5922482 bm!469708) bm!469712))

(assert (= (or b!5922484 b!5922482) bm!469711))

(assert (= (or b!5922484 bm!469712) bm!469713))

(declare-fun m!6818056 () Bool)

(assert (=> bm!469713 m!6818056))

(declare-fun m!6818058 () Bool)

(assert (=> bm!469711 m!6818058))

(declare-fun m!6818060 () Bool)

(assert (=> b!5922477 m!6818060))

(declare-fun m!6818062 () Bool)

(assert (=> b!5922486 m!6818062))

(declare-fun m!6818064 () Bool)

(assert (=> bm!469709 m!6818064))

(assert (=> bm!469547 d!1857255))

(declare-fun b!5922487 () Bool)

(declare-fun e!3625650 () Bool)

(declare-fun call!469719 () Bool)

(assert (=> b!5922487 (= e!3625650 call!469719)))

(declare-fun b!5922488 () Bool)

(declare-fun e!3625649 () Bool)

(declare-fun e!3625651 () Bool)

(assert (=> b!5922488 (= e!3625649 e!3625651)))

(declare-fun res!2482493 () Bool)

(assert (=> b!5922488 (=> (not res!2482493) (not e!3625651))))

(assert (=> b!5922488 (= res!2482493 (and (not ((_ is EmptyLang!15971) r!7292)) (not ((_ is ElementMatch!15971) r!7292))))))

(declare-fun b!5922489 () Bool)

(declare-fun e!3625652 () Bool)

(declare-fun e!3625654 () Bool)

(assert (=> b!5922489 (= e!3625652 e!3625654)))

(declare-fun res!2482492 () Bool)

(declare-fun call!469720 () Bool)

(assert (=> b!5922489 (= res!2482492 call!469720)))

(assert (=> b!5922489 (=> res!2482492 e!3625654)))

(declare-fun bm!469714 () Bool)

(declare-fun c!1052669 () Bool)

(assert (=> bm!469714 (= call!469719 (nullable!5966 (ite c!1052669 (regTwo!32455 r!7292) (regTwo!32454 r!7292))))))

(declare-fun b!5922490 () Bool)

(declare-fun e!3625653 () Bool)

(assert (=> b!5922490 (= e!3625651 e!3625653)))

(declare-fun res!2482490 () Bool)

(assert (=> b!5922490 (=> res!2482490 e!3625653)))

(assert (=> b!5922490 (= res!2482490 ((_ is Star!15971) r!7292))))

(declare-fun b!5922491 () Bool)

(assert (=> b!5922491 (= e!3625652 e!3625650)))

(declare-fun res!2482491 () Bool)

(assert (=> b!5922491 (= res!2482491 call!469720)))

(assert (=> b!5922491 (=> (not res!2482491) (not e!3625650))))

(declare-fun b!5922492 () Bool)

(assert (=> b!5922492 (= e!3625654 call!469719)))

(declare-fun d!1857257 () Bool)

(declare-fun res!2482494 () Bool)

(assert (=> d!1857257 (=> res!2482494 e!3625649)))

(assert (=> d!1857257 (= res!2482494 ((_ is EmptyExpr!15971) r!7292))))

(assert (=> d!1857257 (= (nullableFct!1937 r!7292) e!3625649)))

(declare-fun b!5922493 () Bool)

(assert (=> b!5922493 (= e!3625653 e!3625652)))

(assert (=> b!5922493 (= c!1052669 ((_ is Union!15971) r!7292))))

(declare-fun bm!469715 () Bool)

(assert (=> bm!469715 (= call!469720 (nullable!5966 (ite c!1052669 (regOne!32455 r!7292) (regOne!32454 r!7292))))))

(assert (= (and d!1857257 (not res!2482494)) b!5922488))

(assert (= (and b!5922488 res!2482493) b!5922490))

(assert (= (and b!5922490 (not res!2482490)) b!5922493))

(assert (= (and b!5922493 c!1052669) b!5922489))

(assert (= (and b!5922493 (not c!1052669)) b!5922491))

(assert (= (and b!5922489 (not res!2482492)) b!5922492))

(assert (= (and b!5922491 res!2482491) b!5922487))

(assert (= (or b!5922492 b!5922487) bm!469714))

(assert (= (or b!5922489 b!5922491) bm!469715))

(declare-fun m!6818066 () Bool)

(assert (=> bm!469714 m!6818066))

(declare-fun m!6818068 () Bool)

(assert (=> bm!469715 m!6818068))

(assert (=> d!1856877 d!1857257))

(declare-fun b!5922494 () Bool)

(declare-fun e!3625656 () Bool)

(declare-fun call!469721 () Bool)

(assert (=> b!5922494 (= e!3625656 call!469721)))

(declare-fun b!5922495 () Bool)

(declare-fun e!3625655 () Bool)

(declare-fun e!3625657 () Bool)

(assert (=> b!5922495 (= e!3625655 e!3625657)))

(declare-fun res!2482498 () Bool)

(assert (=> b!5922495 (=> (not res!2482498) (not e!3625657))))

(assert (=> b!5922495 (= res!2482498 (and (not ((_ is EmptyLang!15971) (regOne!32454 r!7292))) (not ((_ is ElementMatch!15971) (regOne!32454 r!7292)))))))

(declare-fun b!5922496 () Bool)

(declare-fun e!3625658 () Bool)

(declare-fun e!3625660 () Bool)

(assert (=> b!5922496 (= e!3625658 e!3625660)))

(declare-fun res!2482497 () Bool)

(declare-fun call!469722 () Bool)

(assert (=> b!5922496 (= res!2482497 call!469722)))

(assert (=> b!5922496 (=> res!2482497 e!3625660)))

(declare-fun bm!469716 () Bool)

(declare-fun c!1052670 () Bool)

(assert (=> bm!469716 (= call!469721 (nullable!5966 (ite c!1052670 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))))))

(declare-fun b!5922497 () Bool)

(declare-fun e!3625659 () Bool)

(assert (=> b!5922497 (= e!3625657 e!3625659)))

(declare-fun res!2482495 () Bool)

(assert (=> b!5922497 (=> res!2482495 e!3625659)))

(assert (=> b!5922497 (= res!2482495 ((_ is Star!15971) (regOne!32454 r!7292)))))

(declare-fun b!5922498 () Bool)

(assert (=> b!5922498 (= e!3625658 e!3625656)))

(declare-fun res!2482496 () Bool)

(assert (=> b!5922498 (= res!2482496 call!469722)))

(assert (=> b!5922498 (=> (not res!2482496) (not e!3625656))))

(declare-fun b!5922499 () Bool)

(assert (=> b!5922499 (= e!3625660 call!469721)))

(declare-fun d!1857259 () Bool)

(declare-fun res!2482499 () Bool)

(assert (=> d!1857259 (=> res!2482499 e!3625655)))

(assert (=> d!1857259 (= res!2482499 ((_ is EmptyExpr!15971) (regOne!32454 r!7292)))))

(assert (=> d!1857259 (= (nullableFct!1937 (regOne!32454 r!7292)) e!3625655)))

(declare-fun b!5922500 () Bool)

(assert (=> b!5922500 (= e!3625659 e!3625658)))

(assert (=> b!5922500 (= c!1052670 ((_ is Union!15971) (regOne!32454 r!7292)))))

(declare-fun bm!469717 () Bool)

(assert (=> bm!469717 (= call!469722 (nullable!5966 (ite c!1052670 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292)))))))

(assert (= (and d!1857259 (not res!2482499)) b!5922495))

(assert (= (and b!5922495 res!2482498) b!5922497))

(assert (= (and b!5922497 (not res!2482495)) b!5922500))

(assert (= (and b!5922500 c!1052670) b!5922496))

(assert (= (and b!5922500 (not c!1052670)) b!5922498))

(assert (= (and b!5922496 (not res!2482497)) b!5922499))

(assert (= (and b!5922498 res!2482496) b!5922494))

(assert (= (or b!5922499 b!5922494) bm!469716))

(assert (= (or b!5922496 b!5922498) bm!469717))

(declare-fun m!6818070 () Bool)

(assert (=> bm!469716 m!6818070))

(declare-fun m!6818072 () Bool)

(assert (=> bm!469717 m!6818072))

(assert (=> d!1856795 d!1857259))

(assert (=> b!5921559 d!1856849))

(assert (=> b!5921559 d!1856851))

(declare-fun d!1857261 () Bool)

(assert (=> d!1857261 (= (nullable!5966 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))) (nullableFct!1937 (reg!16300 (ite c!1052333 (regTwo!32455 r!7292) (regTwo!32454 r!7292)))))))

(declare-fun bs!1401840 () Bool)

(assert (= bs!1401840 d!1857261))

(declare-fun m!6818074 () Bool)

(assert (=> bs!1401840 m!6818074))

(assert (=> b!5921463 d!1857261))

(assert (=> b!5921176 d!1857183))

(assert (=> b!5921176 d!1857185))

(declare-fun bs!1401841 () Bool)

(declare-fun b!5922505 () Bool)

(assert (= bs!1401841 (and b!5922505 b!5921260)))

(declare-fun lambda!323063 () Int)

(assert (=> bs!1401841 (not (= lambda!323063 lambda!323023))))

(declare-fun bs!1401842 () Bool)

(assert (= bs!1401842 (and b!5922505 d!1856709)))

(assert (=> bs!1401842 (not (= lambda!323063 lambda!323000))))

(declare-fun bs!1401843 () Bool)

(assert (= bs!1401843 (and b!5922505 b!5921593)))

(assert (=> bs!1401843 (not (= lambda!323063 lambda!323037))))

(declare-fun bs!1401844 () Bool)

(assert (= bs!1401844 (and b!5922505 b!5922196)))

(assert (=> bs!1401844 (not (= lambda!323063 lambda!323058))))

(declare-fun bs!1401845 () Bool)

(assert (= bs!1401845 (and b!5922505 b!5920983)))

(assert (=> bs!1401845 (= (and (= (reg!16300 (regOne!32455 (regOne!32455 r!7292))) (reg!16300 r!7292)) (= (regOne!32455 (regOne!32455 r!7292)) r!7292)) (= lambda!323063 lambda!323007))))

(declare-fun bs!1401846 () Bool)

(assert (= bs!1401846 (and b!5922505 b!5922161)))

(assert (=> bs!1401846 (= (and (= (reg!16300 (regOne!32455 (regOne!32455 r!7292))) (reg!16300 (regOne!32455 (regTwo!32455 r!7292)))) (= (regOne!32455 (regOne!32455 r!7292)) (regOne!32455 (regTwo!32455 r!7292)))) (= lambda!323063 lambda!323055))))

(declare-fun bs!1401847 () Bool)

(assert (= bs!1401847 (and b!5922505 d!1856701)))

(assert (=> bs!1401847 (not (= lambda!323063 lambda!322996))))

(declare-fun bs!1401848 () Bool)

(assert (= bs!1401848 (and b!5922505 b!5922195)))

(assert (=> bs!1401848 (= (and (= (reg!16300 (regOne!32455 (regOne!32455 r!7292))) (reg!16300 (regTwo!32455 (regOne!32455 r!7292)))) (= (regOne!32455 (regOne!32455 r!7292)) (regTwo!32455 (regOne!32455 r!7292)))) (= lambda!323063 lambda!323057))))

(declare-fun bs!1401849 () Bool)

(assert (= bs!1401849 (and b!5922505 d!1856825)))

(assert (=> bs!1401849 (not (= lambda!323063 lambda!323027))))

(declare-fun bs!1401850 () Bool)

(assert (= bs!1401850 (and b!5922505 d!1856775)))

(assert (=> bs!1401850 (not (= lambda!323063 lambda!323020))))

(assert (=> bs!1401847 (not (= lambda!323063 lambda!322997))))

(declare-fun bs!1401851 () Bool)

(assert (= bs!1401851 (and b!5922505 b!5920984)))

(assert (=> bs!1401851 (not (= lambda!323063 lambda!323008))))

(declare-fun bs!1401852 () Bool)

(assert (= bs!1401852 (and b!5922505 b!5922099)))

(assert (=> bs!1401852 (not (= lambda!323063 lambda!323052))))

(declare-fun bs!1401853 () Bool)

(assert (= bs!1401853 (and b!5922505 b!5922098)))

(assert (=> bs!1401853 (= (and (= (reg!16300 (regOne!32455 (regOne!32455 r!7292))) (reg!16300 (regTwo!32455 (regTwo!32455 r!7292)))) (= (regOne!32455 (regOne!32455 r!7292)) (regTwo!32455 (regTwo!32455 r!7292)))) (= lambda!323063 lambda!323051))))

(declare-fun bs!1401854 () Bool)

(assert (= bs!1401854 (and b!5922505 b!5921259)))

(assert (=> bs!1401854 (= (and (= (reg!16300 (regOne!32455 (regOne!32455 r!7292))) (reg!16300 (regOne!32455 r!7292))) (= (regOne!32455 (regOne!32455 r!7292)) (regOne!32455 r!7292))) (= lambda!323063 lambda!323022))))

(declare-fun bs!1401855 () Bool)

(assert (= bs!1401855 (and b!5922505 b!5920469)))

(assert (=> bs!1401855 (not (= lambda!323063 lambda!322948))))

(assert (=> bs!1401855 (not (= lambda!323063 lambda!322949))))

(declare-fun bs!1401856 () Bool)

(assert (= bs!1401856 (and b!5922505 b!5922162)))

(assert (=> bs!1401856 (not (= lambda!323063 lambda!323056))))

(declare-fun bs!1401857 () Bool)

(assert (= bs!1401857 (and b!5922505 b!5921592)))

(assert (=> bs!1401857 (= (and (= (reg!16300 (regOne!32455 (regOne!32455 r!7292))) (reg!16300 (regTwo!32455 r!7292))) (= (regOne!32455 (regOne!32455 r!7292)) (regTwo!32455 r!7292))) (= lambda!323063 lambda!323036))))

(assert (=> bs!1401850 (not (= lambda!323063 lambda!323019))))

(assert (=> b!5922505 true))

(assert (=> b!5922505 true))

(declare-fun bs!1401858 () Bool)

(declare-fun b!5922506 () Bool)

(assert (= bs!1401858 (and b!5922506 b!5921260)))

(declare-fun lambda!323064 () Int)

(assert (=> bs!1401858 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 (regOne!32455 r!7292))) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 (regOne!32455 r!7292)))) (= lambda!323064 lambda!323023))))

(declare-fun bs!1401859 () Bool)

(assert (= bs!1401859 (and b!5922506 d!1856709)))

(assert (=> bs!1401859 (not (= lambda!323064 lambda!323000))))

(declare-fun bs!1401860 () Bool)

(assert (= bs!1401860 (and b!5922506 b!5921593)))

(assert (=> bs!1401860 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 (regTwo!32455 r!7292))) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 (regTwo!32455 r!7292)))) (= lambda!323064 lambda!323037))))

(declare-fun bs!1401861 () Bool)

(assert (= bs!1401861 (and b!5922506 b!5922505)))

(assert (=> bs!1401861 (not (= lambda!323064 lambda!323063))))

(declare-fun bs!1401862 () Bool)

(assert (= bs!1401862 (and b!5922506 b!5922196)))

(assert (=> bs!1401862 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 (regTwo!32455 (regOne!32455 r!7292)))) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))))) (= lambda!323064 lambda!323058))))

(declare-fun bs!1401863 () Bool)

(assert (= bs!1401863 (and b!5922506 b!5920983)))

(assert (=> bs!1401863 (not (= lambda!323064 lambda!323007))))

(declare-fun bs!1401864 () Bool)

(assert (= bs!1401864 (and b!5922506 b!5922161)))

(assert (=> bs!1401864 (not (= lambda!323064 lambda!323055))))

(declare-fun bs!1401865 () Bool)

(assert (= bs!1401865 (and b!5922506 d!1856701)))

(assert (=> bs!1401865 (not (= lambda!323064 lambda!322996))))

(declare-fun bs!1401866 () Bool)

(assert (= bs!1401866 (and b!5922506 b!5922195)))

(assert (=> bs!1401866 (not (= lambda!323064 lambda!323057))))

(declare-fun bs!1401867 () Bool)

(assert (= bs!1401867 (and b!5922506 d!1856825)))

(assert (=> bs!1401867 (not (= lambda!323064 lambda!323027))))

(declare-fun bs!1401868 () Bool)

(assert (= bs!1401868 (and b!5922506 d!1856775)))

(assert (=> bs!1401868 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323064 lambda!323020))))

(assert (=> bs!1401865 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323064 lambda!322997))))

(declare-fun bs!1401869 () Bool)

(assert (= bs!1401869 (and b!5922506 b!5920984)))

(assert (=> bs!1401869 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323064 lambda!323008))))

(declare-fun bs!1401870 () Bool)

(assert (= bs!1401870 (and b!5922506 b!5922099)))

(assert (=> bs!1401870 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292)))) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))))) (= lambda!323064 lambda!323052))))

(declare-fun bs!1401871 () Bool)

(assert (= bs!1401871 (and b!5922506 b!5922098)))

(assert (=> bs!1401871 (not (= lambda!323064 lambda!323051))))

(declare-fun bs!1401872 () Bool)

(assert (= bs!1401872 (and b!5922506 b!5921259)))

(assert (=> bs!1401872 (not (= lambda!323064 lambda!323022))))

(declare-fun bs!1401873 () Bool)

(assert (= bs!1401873 (and b!5922506 b!5920469)))

(assert (=> bs!1401873 (not (= lambda!323064 lambda!322948))))

(assert (=> bs!1401873 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 r!7292)) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 r!7292))) (= lambda!323064 lambda!322949))))

(declare-fun bs!1401874 () Bool)

(assert (= bs!1401874 (and b!5922506 b!5922162)))

(assert (=> bs!1401874 (= (and (= (regOne!32454 (regOne!32455 (regOne!32455 r!7292))) (regOne!32454 (regOne!32455 (regTwo!32455 r!7292)))) (= (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))) (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))))) (= lambda!323064 lambda!323056))))

(declare-fun bs!1401875 () Bool)

(assert (= bs!1401875 (and b!5922506 b!5921592)))

(assert (=> bs!1401875 (not (= lambda!323064 lambda!323036))))

(assert (=> bs!1401868 (not (= lambda!323064 lambda!323019))))

(assert (=> b!5922506 true))

(assert (=> b!5922506 true))

(declare-fun b!5922501 () Bool)

(declare-fun e!3625662 () Bool)

(declare-fun e!3625661 () Bool)

(assert (=> b!5922501 (= e!3625662 e!3625661)))

(declare-fun c!1052674 () Bool)

(assert (=> b!5922501 (= c!1052674 ((_ is Star!15971) (regOne!32455 (regOne!32455 r!7292))))))

(declare-fun b!5922502 () Bool)

(declare-fun e!3625663 () Bool)

(declare-fun e!3625666 () Bool)

(assert (=> b!5922502 (= e!3625663 e!3625666)))

(declare-fun res!2482502 () Bool)

(assert (=> b!5922502 (= res!2482502 (not ((_ is EmptyLang!15971) (regOne!32455 (regOne!32455 r!7292)))))))

(assert (=> b!5922502 (=> (not res!2482502) (not e!3625666))))

(declare-fun b!5922503 () Bool)

(declare-fun e!3625665 () Bool)

(assert (=> b!5922503 (= e!3625665 (= s!2326 (Cons!64090 (c!1052179 (regOne!32455 (regOne!32455 r!7292))) Nil!64090)))))

(declare-fun b!5922504 () Bool)

(declare-fun call!469723 () Bool)

(assert (=> b!5922504 (= e!3625663 call!469723)))

(declare-fun e!3625667 () Bool)

(declare-fun call!469724 () Bool)

(assert (=> b!5922505 (= e!3625667 call!469724)))

(declare-fun bm!469718 () Bool)

(assert (=> bm!469718 (= call!469724 (Exists!3041 (ite c!1052674 lambda!323063 lambda!323064)))))

(assert (=> b!5922506 (= e!3625661 call!469724)))

(declare-fun b!5922507 () Bool)

(declare-fun e!3625664 () Bool)

(assert (=> b!5922507 (= e!3625662 e!3625664)))

(declare-fun res!2482501 () Bool)

(assert (=> b!5922507 (= res!2482501 (matchRSpec!3072 (regOne!32455 (regOne!32455 (regOne!32455 r!7292))) s!2326))))

(assert (=> b!5922507 (=> res!2482501 e!3625664)))

(declare-fun b!5922508 () Bool)

(declare-fun res!2482500 () Bool)

(assert (=> b!5922508 (=> res!2482500 e!3625667)))

(assert (=> b!5922508 (= res!2482500 call!469723)))

(assert (=> b!5922508 (= e!3625661 e!3625667)))

(declare-fun b!5922509 () Bool)

(declare-fun c!1052673 () Bool)

(assert (=> b!5922509 (= c!1052673 ((_ is Union!15971) (regOne!32455 (regOne!32455 r!7292))))))

(assert (=> b!5922509 (= e!3625665 e!3625662)))

(declare-fun d!1857263 () Bool)

(declare-fun c!1052671 () Bool)

(assert (=> d!1857263 (= c!1052671 ((_ is EmptyExpr!15971) (regOne!32455 (regOne!32455 r!7292))))))

(assert (=> d!1857263 (= (matchRSpec!3072 (regOne!32455 (regOne!32455 r!7292)) s!2326) e!3625663)))

(declare-fun bm!469719 () Bool)

(assert (=> bm!469719 (= call!469723 (isEmpty!35950 s!2326))))

(declare-fun b!5922510 () Bool)

(declare-fun c!1052672 () Bool)

(assert (=> b!5922510 (= c!1052672 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32455 r!7292))))))

(assert (=> b!5922510 (= e!3625666 e!3625665)))

(declare-fun b!5922511 () Bool)

(assert (=> b!5922511 (= e!3625664 (matchRSpec!3072 (regTwo!32455 (regOne!32455 (regOne!32455 r!7292))) s!2326))))

(assert (= (and d!1857263 c!1052671) b!5922504))

(assert (= (and d!1857263 (not c!1052671)) b!5922502))

(assert (= (and b!5922502 res!2482502) b!5922510))

(assert (= (and b!5922510 c!1052672) b!5922503))

(assert (= (and b!5922510 (not c!1052672)) b!5922509))

(assert (= (and b!5922509 c!1052673) b!5922507))

(assert (= (and b!5922509 (not c!1052673)) b!5922501))

(assert (= (and b!5922507 (not res!2482501)) b!5922511))

(assert (= (and b!5922501 c!1052674) b!5922508))

(assert (= (and b!5922501 (not c!1052674)) b!5922506))

(assert (= (and b!5922508 (not res!2482500)) b!5922505))

(assert (= (or b!5922505 b!5922506) bm!469718))

(assert (= (or b!5922504 b!5922508) bm!469719))

(declare-fun m!6818076 () Bool)

(assert (=> bm!469718 m!6818076))

(declare-fun m!6818078 () Bool)

(assert (=> b!5922507 m!6818078))

(assert (=> bm!469719 m!6816874))

(declare-fun m!6818080 () Bool)

(assert (=> b!5922511 m!6818080))

(assert (=> b!5921261 d!1857263))

(declare-fun d!1857265 () Bool)

(declare-fun lt!2310090 () Int)

(assert (=> d!1857265 (>= lt!2310090 0)))

(declare-fun e!3625668 () Int)

(assert (=> d!1857265 (= lt!2310090 e!3625668)))

(declare-fun c!1052675 () Bool)

(assert (=> d!1857265 (= c!1052675 ((_ is Nil!64090) lt!2310036))))

(assert (=> d!1857265 (= (size!40137 lt!2310036) lt!2310090)))

(declare-fun b!5922512 () Bool)

(assert (=> b!5922512 (= e!3625668 0)))

(declare-fun b!5922513 () Bool)

(assert (=> b!5922513 (= e!3625668 (+ 1 (size!40137 (t!377605 lt!2310036))))))

(assert (= (and d!1857265 c!1052675) b!5922512))

(assert (= (and d!1857265 (not c!1052675)) b!5922513))

(declare-fun m!6818082 () Bool)

(assert (=> b!5922513 m!6818082))

(assert (=> b!5921253 d!1857265))

(declare-fun d!1857267 () Bool)

(declare-fun lt!2310091 () Int)

(assert (=> d!1857267 (>= lt!2310091 0)))

(declare-fun e!3625669 () Int)

(assert (=> d!1857267 (= lt!2310091 e!3625669)))

(declare-fun c!1052676 () Bool)

(assert (=> d!1857267 (= c!1052676 ((_ is Nil!64090) (_1!36253 (get!22069 lt!2309996))))))

(assert (=> d!1857267 (= (size!40137 (_1!36253 (get!22069 lt!2309996))) lt!2310091)))

(declare-fun b!5922514 () Bool)

(assert (=> b!5922514 (= e!3625669 0)))

(declare-fun b!5922515 () Bool)

(assert (=> b!5922515 (= e!3625669 (+ 1 (size!40137 (t!377605 (_1!36253 (get!22069 lt!2309996))))))))

(assert (= (and d!1857267 c!1052676) b!5922514))

(assert (= (and d!1857267 (not c!1052676)) b!5922515))

(declare-fun m!6818084 () Bool)

(assert (=> b!5922515 m!6818084))

(assert (=> b!5921253 d!1857267))

(declare-fun d!1857269 () Bool)

(declare-fun lt!2310092 () Int)

(assert (=> d!1857269 (>= lt!2310092 0)))

(declare-fun e!3625670 () Int)

(assert (=> d!1857269 (= lt!2310092 e!3625670)))

(declare-fun c!1052677 () Bool)

(assert (=> d!1857269 (= c!1052677 ((_ is Nil!64090) (_2!36253 (get!22069 lt!2309996))))))

(assert (=> d!1857269 (= (size!40137 (_2!36253 (get!22069 lt!2309996))) lt!2310092)))

(declare-fun b!5922516 () Bool)

(assert (=> b!5922516 (= e!3625670 0)))

(declare-fun b!5922517 () Bool)

(assert (=> b!5922517 (= e!3625670 (+ 1 (size!40137 (t!377605 (_2!36253 (get!22069 lt!2309996))))))))

(assert (= (and d!1857269 c!1052677) b!5922516))

(assert (= (and d!1857269 (not c!1052677)) b!5922517))

(declare-fun m!6818086 () Bool)

(assert (=> b!5922517 m!6818086))

(assert (=> b!5921253 d!1857269))

(declare-fun d!1857271 () Bool)

(assert (=> d!1857271 (= ($colon$colon!1858 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))) (ite (or c!1052354 c!1052353) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (h!70536 (exprs!5855 (h!70537 zl!343))))) (Cons!64088 (ite (or c!1052354 c!1052353) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))) (h!70536 (exprs!5855 (h!70537 zl!343)))) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))

(assert (=> bm!469472 d!1857271))

(declare-fun b!5922518 () Bool)

(declare-fun e!3625674 () (InoxSet Context!10710))

(declare-fun e!3625676 () (InoxSet Context!10710))

(assert (=> b!5922518 (= e!3625674 e!3625676)))

(declare-fun c!1052681 () Bool)

(assert (=> b!5922518 (= c!1052681 ((_ is Union!15971) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun bm!469720 () Bool)

(declare-fun call!469725 () (InoxSet Context!10710))

(declare-fun call!469730 () (InoxSet Context!10710))

(assert (=> bm!469720 (= call!469725 call!469730)))

(declare-fun b!5922519 () Bool)

(assert (=> b!5922519 (= e!3625674 (store ((as const (Array Context!10710 Bool)) false) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) true))))

(declare-fun b!5922520 () Bool)

(declare-fun c!1052678 () Bool)

(assert (=> b!5922520 (= c!1052678 ((_ is Star!15971) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun e!3625673 () (InoxSet Context!10710))

(declare-fun e!3625675 () (InoxSet Context!10710))

(assert (=> b!5922520 (= e!3625673 e!3625675)))

(declare-fun d!1857273 () Bool)

(declare-fun c!1052682 () Bool)

(assert (=> d!1857273 (= c!1052682 (and ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (= (c!1052179 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (h!70538 s!2326))))))

(assert (=> d!1857273 (= (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (h!70538 s!2326)) e!3625674)))

(declare-fun b!5922521 () Bool)

(declare-fun c!1052680 () Bool)

(declare-fun e!3625671 () Bool)

(assert (=> b!5922521 (= c!1052680 e!3625671)))

(declare-fun res!2482503 () Bool)

(assert (=> b!5922521 (=> (not res!2482503) (not e!3625671))))

(assert (=> b!5922521 (= res!2482503 ((_ is Concat!24816) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun e!3625672 () (InoxSet Context!10710))

(assert (=> b!5922521 (= e!3625676 e!3625672)))

(declare-fun c!1052679 () Bool)

(declare-fun bm!469721 () Bool)

(declare-fun call!469728 () List!64212)

(assert (=> bm!469721 (= call!469728 ($colon$colon!1858 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (ite (or c!1052680 c!1052679) (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))))

(declare-fun bm!469722 () Bool)

(declare-fun call!469729 () List!64212)

(assert (=> bm!469722 (= call!469729 call!469728)))

(declare-fun b!5922522 () Bool)

(assert (=> b!5922522 (= e!3625675 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922523 () Bool)

(assert (=> b!5922523 (= e!3625672 e!3625673)))

(assert (=> b!5922523 (= c!1052679 ((_ is Concat!24816) (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun b!5922524 () Bool)

(declare-fun call!469726 () (InoxSet Context!10710))

(assert (=> b!5922524 (= e!3625672 ((_ map or) call!469726 call!469730))))

(declare-fun bm!469723 () Bool)

(assert (=> bm!469723 (= call!469726 (derivationStepZipperDown!1221 (ite c!1052681 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))) (ite c!1052681 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (Context!10711 call!469728)) (h!70538 s!2326)))))

(declare-fun b!5922525 () Bool)

(assert (=> b!5922525 (= e!3625673 call!469725)))

(declare-fun b!5922526 () Bool)

(declare-fun call!469727 () (InoxSet Context!10710))

(assert (=> b!5922526 (= e!3625676 ((_ map or) call!469727 call!469726))))

(declare-fun b!5922527 () Bool)

(assert (=> b!5922527 (= e!3625675 call!469725)))

(declare-fun bm!469724 () Bool)

(assert (=> bm!469724 (= call!469730 call!469727)))

(declare-fun b!5922528 () Bool)

(assert (=> b!5922528 (= e!3625671 (nullable!5966 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))))

(declare-fun bm!469725 () Bool)

(assert (=> bm!469725 (= call!469727 (derivationStepZipperDown!1221 (ite c!1052681 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (ite c!1052680 (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (ite c!1052679 (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (reg!16300 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))) (ite (or c!1052681 c!1052680) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (Context!10711 call!469729)) (h!70538 s!2326)))))

(assert (= (and d!1857273 c!1052682) b!5922519))

(assert (= (and d!1857273 (not c!1052682)) b!5922518))

(assert (= (and b!5922518 c!1052681) b!5922526))

(assert (= (and b!5922518 (not c!1052681)) b!5922521))

(assert (= (and b!5922521 res!2482503) b!5922528))

(assert (= (and b!5922521 c!1052680) b!5922524))

(assert (= (and b!5922521 (not c!1052680)) b!5922523))

(assert (= (and b!5922523 c!1052679) b!5922525))

(assert (= (and b!5922523 (not c!1052679)) b!5922520))

(assert (= (and b!5922520 c!1052678) b!5922527))

(assert (= (and b!5922520 (not c!1052678)) b!5922522))

(assert (= (or b!5922525 b!5922527) bm!469722))

(assert (= (or b!5922525 b!5922527) bm!469720))

(assert (= (or b!5922524 bm!469722) bm!469721))

(assert (= (or b!5922524 bm!469720) bm!469724))

(assert (= (or b!5922526 b!5922524) bm!469723))

(assert (= (or b!5922526 bm!469724) bm!469725))

(declare-fun m!6818088 () Bool)

(assert (=> bm!469725 m!6818088))

(declare-fun m!6818090 () Bool)

(assert (=> bm!469723 m!6818090))

(declare-fun m!6818092 () Bool)

(assert (=> b!5922519 m!6818092))

(declare-fun m!6818094 () Bool)

(assert (=> b!5922528 m!6818094))

(declare-fun m!6818096 () Bool)

(assert (=> bm!469721 m!6818096))

(assert (=> bm!469497 d!1857273))

(declare-fun d!1857275 () Bool)

(assert (=> d!1857275 (= (isConcat!922 lt!2310047) ((_ is Concat!24816) lt!2310047))))

(assert (=> b!5921453 d!1857275))

(assert (=> b!5921393 d!1857099))

(declare-fun d!1857277 () Bool)

(declare-fun res!2482508 () Bool)

(declare-fun e!3625682 () Bool)

(assert (=> d!1857277 (=> res!2482508 e!3625682)))

(assert (=> d!1857277 (= res!2482508 ((_ is ElementMatch!15971) (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))))))

(assert (=> d!1857277 (= (validRegex!7707 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))) e!3625682)))

(declare-fun b!5922529 () Bool)

(declare-fun e!3625683 () Bool)

(declare-fun e!3625681 () Bool)

(assert (=> b!5922529 (= e!3625683 e!3625681)))

(declare-fun res!2482505 () Bool)

(assert (=> b!5922529 (= res!2482505 (not (nullable!5966 (reg!16300 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))))))))

(assert (=> b!5922529 (=> (not res!2482505) (not e!3625681))))

(declare-fun bm!469726 () Bool)

(declare-fun c!1052683 () Bool)

(declare-fun call!469733 () Bool)

(assert (=> bm!469726 (= call!469733 (validRegex!7707 (ite c!1052683 (regTwo!32455 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))) (regTwo!32454 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))))))))

(declare-fun b!5922530 () Bool)

(declare-fun res!2482507 () Bool)

(declare-fun e!3625678 () Bool)

(assert (=> b!5922530 (=> res!2482507 e!3625678)))

(assert (=> b!5922530 (= res!2482507 (not ((_ is Concat!24816) (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018))))))))

(declare-fun e!3625677 () Bool)

(assert (=> b!5922530 (= e!3625677 e!3625678)))

(declare-fun b!5922531 () Bool)

(declare-fun res!2482504 () Bool)

(declare-fun e!3625679 () Bool)

(assert (=> b!5922531 (=> (not res!2482504) (not e!3625679))))

(declare-fun call!469732 () Bool)

(assert (=> b!5922531 (= res!2482504 call!469732)))

(assert (=> b!5922531 (= e!3625677 e!3625679)))

(declare-fun bm!469727 () Bool)

(declare-fun call!469731 () Bool)

(assert (=> bm!469727 (= call!469732 call!469731)))

(declare-fun b!5922532 () Bool)

(assert (=> b!5922532 (= e!3625681 call!469731)))

(declare-fun b!5922533 () Bool)

(declare-fun e!3625680 () Bool)

(assert (=> b!5922533 (= e!3625680 call!469733)))

(declare-fun b!5922534 () Bool)

(assert (=> b!5922534 (= e!3625678 e!3625680)))

(declare-fun res!2482506 () Bool)

(assert (=> b!5922534 (=> (not res!2482506) (not e!3625680))))

(assert (=> b!5922534 (= res!2482506 call!469732)))

(declare-fun b!5922535 () Bool)

(assert (=> b!5922535 (= e!3625683 e!3625677)))

(assert (=> b!5922535 (= c!1052683 ((_ is Union!15971) (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))))))

(declare-fun b!5922536 () Bool)

(assert (=> b!5922536 (= e!3625679 call!469733)))

(declare-fun bm!469728 () Bool)

(declare-fun c!1052684 () Bool)

(assert (=> bm!469728 (= call!469731 (validRegex!7707 (ite c!1052684 (reg!16300 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))) (ite c!1052683 (regOne!32455 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))) (regOne!32454 (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018))))))))))

(declare-fun b!5922537 () Bool)

(assert (=> b!5922537 (= e!3625682 e!3625683)))

(assert (=> b!5922537 (= c!1052684 ((_ is Star!15971) (ite c!1052465 (reg!16300 lt!2310018) (ite c!1052464 (regOne!32455 lt!2310018) (regOne!32454 lt!2310018)))))))

(assert (= (and d!1857277 (not res!2482508)) b!5922537))

(assert (= (and b!5922537 c!1052684) b!5922529))

(assert (= (and b!5922537 (not c!1052684)) b!5922535))

(assert (= (and b!5922529 res!2482505) b!5922532))

(assert (= (and b!5922535 c!1052683) b!5922531))

(assert (= (and b!5922535 (not c!1052683)) b!5922530))

(assert (= (and b!5922531 res!2482504) b!5922536))

(assert (= (and b!5922530 (not res!2482507)) b!5922534))

(assert (= (and b!5922534 res!2482506) b!5922533))

(assert (= (or b!5922536 b!5922533) bm!469726))

(assert (= (or b!5922531 b!5922534) bm!469727))

(assert (= (or b!5922532 bm!469727) bm!469728))

(declare-fun m!6818098 () Bool)

(assert (=> b!5922529 m!6818098))

(declare-fun m!6818100 () Bool)

(assert (=> bm!469726 m!6818100))

(declare-fun m!6818102 () Bool)

(assert (=> bm!469728 m!6818102))

(assert (=> bm!469550 d!1857277))

(declare-fun d!1857279 () Bool)

(declare-fun res!2482509 () Bool)

(declare-fun e!3625684 () Bool)

(assert (=> d!1857279 (=> res!2482509 e!3625684)))

(assert (=> d!1857279 (= res!2482509 ((_ is Nil!64088) (t!377603 (exprs!5855 setElem!40176))))))

(assert (=> d!1857279 (= (forall!15054 (t!377603 (exprs!5855 setElem!40176)) lambda!322975) e!3625684)))

(declare-fun b!5922538 () Bool)

(declare-fun e!3625685 () Bool)

(assert (=> b!5922538 (= e!3625684 e!3625685)))

(declare-fun res!2482510 () Bool)

(assert (=> b!5922538 (=> (not res!2482510) (not e!3625685))))

(assert (=> b!5922538 (= res!2482510 (dynLambda!25057 lambda!322975 (h!70536 (t!377603 (exprs!5855 setElem!40176)))))))

(declare-fun b!5922539 () Bool)

(assert (=> b!5922539 (= e!3625685 (forall!15054 (t!377603 (t!377603 (exprs!5855 setElem!40176))) lambda!322975))))

(assert (= (and d!1857279 (not res!2482509)) b!5922538))

(assert (= (and b!5922538 res!2482510) b!5922539))

(declare-fun b_lambda!222451 () Bool)

(assert (=> (not b_lambda!222451) (not b!5922538)))

(declare-fun m!6818104 () Bool)

(assert (=> b!5922538 m!6818104))

(declare-fun m!6818106 () Bool)

(assert (=> b!5922539 m!6818106))

(assert (=> b!5921513 d!1857279))

(declare-fun b!5922540 () Bool)

(declare-fun e!3625689 () (InoxSet Context!10710))

(declare-fun e!3625691 () (InoxSet Context!10710))

(assert (=> b!5922540 (= e!3625689 e!3625691)))

(declare-fun c!1052688 () Bool)

(assert (=> b!5922540 (= c!1052688 ((_ is Union!15971) (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(declare-fun bm!469729 () Bool)

(declare-fun call!469734 () (InoxSet Context!10710))

(declare-fun call!469739 () (InoxSet Context!10710))

(assert (=> bm!469729 (= call!469734 call!469739)))

(declare-fun b!5922541 () Bool)

(assert (=> b!5922541 (= e!3625689 (store ((as const (Array Context!10710 Bool)) false) (ite c!1052400 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469506)) true))))

(declare-fun b!5922542 () Bool)

(declare-fun c!1052685 () Bool)

(assert (=> b!5922542 (= c!1052685 ((_ is Star!15971) (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(declare-fun e!3625688 () (InoxSet Context!10710))

(declare-fun e!3625690 () (InoxSet Context!10710))

(assert (=> b!5922542 (= e!3625688 e!3625690)))

(declare-fun d!1857281 () Bool)

(declare-fun c!1052689 () Bool)

(assert (=> d!1857281 (= c!1052689 (and ((_ is ElementMatch!15971) (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (= (c!1052179 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (h!70538 s!2326))))))

(assert (=> d!1857281 (= (derivationStepZipperDown!1221 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))) (ite c!1052400 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469506)) (h!70538 s!2326)) e!3625689)))

(declare-fun b!5922543 () Bool)

(declare-fun c!1052687 () Bool)

(declare-fun e!3625686 () Bool)

(assert (=> b!5922543 (= c!1052687 e!3625686)))

(declare-fun res!2482511 () Bool)

(assert (=> b!5922543 (=> (not res!2482511) (not e!3625686))))

(assert (=> b!5922543 (= res!2482511 ((_ is Concat!24816) (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(declare-fun e!3625687 () (InoxSet Context!10710))

(assert (=> b!5922543 (= e!3625691 e!3625687)))

(declare-fun bm!469730 () Bool)

(declare-fun call!469737 () List!64212)

(declare-fun c!1052686 () Bool)

(assert (=> bm!469730 (= call!469737 ($colon$colon!1858 (exprs!5855 (ite c!1052400 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469506))) (ite (or c!1052687 c!1052686) (regTwo!32454 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun bm!469731 () Bool)

(declare-fun call!469738 () List!64212)

(assert (=> bm!469731 (= call!469738 call!469737)))

(declare-fun b!5922544 () Bool)

(assert (=> b!5922544 (= e!3625690 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922545 () Bool)

(assert (=> b!5922545 (= e!3625687 e!3625688)))

(assert (=> b!5922545 (= c!1052686 ((_ is Concat!24816) (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(declare-fun b!5922546 () Bool)

(declare-fun call!469735 () (InoxSet Context!10710))

(assert (=> b!5922546 (= e!3625687 ((_ map or) call!469735 call!469739))))

(declare-fun bm!469732 () Bool)

(assert (=> bm!469732 (= call!469735 (derivationStepZipperDown!1221 (ite c!1052688 (regTwo!32455 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (regOne!32454 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (ite c!1052688 (ite c!1052400 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469506)) (Context!10711 call!469737)) (h!70538 s!2326)))))

(declare-fun b!5922547 () Bool)

(assert (=> b!5922547 (= e!3625688 call!469734)))

(declare-fun b!5922548 () Bool)

(declare-fun call!469736 () (InoxSet Context!10710))

(assert (=> b!5922548 (= e!3625691 ((_ map or) call!469736 call!469735))))

(declare-fun b!5922549 () Bool)

(assert (=> b!5922549 (= e!3625690 call!469734)))

(declare-fun bm!469733 () Bool)

(assert (=> bm!469733 (= call!469739 call!469736)))

(declare-fun b!5922550 () Bool)

(assert (=> b!5922550 (= e!3625686 (nullable!5966 (regOne!32454 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun bm!469734 () Bool)

(assert (=> bm!469734 (= call!469736 (derivationStepZipperDown!1221 (ite c!1052688 (regOne!32455 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (ite c!1052687 (regTwo!32454 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (ite c!1052686 (regOne!32454 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))) (reg!16300 (ite c!1052400 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))) (ite (or c!1052688 c!1052687) (ite c!1052400 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (Context!10711 call!469506)) (Context!10711 call!469738)) (h!70538 s!2326)))))

(assert (= (and d!1857281 c!1052689) b!5922541))

(assert (= (and d!1857281 (not c!1052689)) b!5922540))

(assert (= (and b!5922540 c!1052688) b!5922548))

(assert (= (and b!5922540 (not c!1052688)) b!5922543))

(assert (= (and b!5922543 res!2482511) b!5922550))

(assert (= (and b!5922543 c!1052687) b!5922546))

(assert (= (and b!5922543 (not c!1052687)) b!5922545))

(assert (= (and b!5922545 c!1052686) b!5922547))

(assert (= (and b!5922545 (not c!1052686)) b!5922542))

(assert (= (and b!5922542 c!1052685) b!5922549))

(assert (= (and b!5922542 (not c!1052685)) b!5922544))

(assert (= (or b!5922547 b!5922549) bm!469731))

(assert (= (or b!5922547 b!5922549) bm!469729))

(assert (= (or b!5922546 bm!469731) bm!469730))

(assert (= (or b!5922546 bm!469729) bm!469733))

(assert (= (or b!5922548 b!5922546) bm!469732))

(assert (= (or b!5922548 bm!469733) bm!469734))

(declare-fun m!6818108 () Bool)

(assert (=> bm!469734 m!6818108))

(declare-fun m!6818110 () Bool)

(assert (=> bm!469732 m!6818110))

(declare-fun m!6818112 () Bool)

(assert (=> b!5922541 m!6818112))

(declare-fun m!6818114 () Bool)

(assert (=> b!5922550 m!6818114))

(declare-fun m!6818116 () Bool)

(assert (=> bm!469730 m!6818116))

(assert (=> bm!469501 d!1857281))

(declare-fun d!1857283 () Bool)

(assert (=> d!1857283 true))

(declare-fun setRes!40191 () Bool)

(assert (=> d!1857283 setRes!40191))

(declare-fun condSetEmpty!40191 () Bool)

(declare-fun res!2482512 () (InoxSet Context!10710))

(assert (=> d!1857283 (= condSetEmpty!40191 (= res!2482512 ((as const (Array Context!10710 Bool)) false)))))

(assert (=> d!1857283 (= (choose!44651 z!1189 lambda!322971) res!2482512)))

(declare-fun setIsEmpty!40191 () Bool)

(assert (=> setIsEmpty!40191 setRes!40191))

(declare-fun e!3625692 () Bool)

(declare-fun tp!1646219 () Bool)

(declare-fun setElem!40191 () Context!10710)

(declare-fun setNonEmpty!40191 () Bool)

(assert (=> setNonEmpty!40191 (= setRes!40191 (and tp!1646219 (inv!83174 setElem!40191) e!3625692))))

(declare-fun setRest!40191 () (InoxSet Context!10710))

(assert (=> setNonEmpty!40191 (= res!2482512 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) setElem!40191 true) setRest!40191))))

(declare-fun b!5922551 () Bool)

(declare-fun tp!1646220 () Bool)

(assert (=> b!5922551 (= e!3625692 tp!1646220)))

(assert (= (and d!1857283 condSetEmpty!40191) setIsEmpty!40191))

(assert (= (and d!1857283 (not condSetEmpty!40191)) setNonEmpty!40191))

(assert (= setNonEmpty!40191 b!5922551))

(declare-fun m!6818118 () Bool)

(assert (=> setNonEmpty!40191 m!6818118))

(assert (=> d!1856743 d!1857283))

(declare-fun d!1857285 () Bool)

(assert (=> d!1857285 (= (isEmpty!35946 (tail!11567 (t!377603 (exprs!5855 (h!70537 zl!343))))) ((_ is Nil!64088) (tail!11567 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(assert (=> b!5921457 d!1857285))

(declare-fun d!1857287 () Bool)

(assert (=> d!1857287 (= (tail!11567 (t!377603 (exprs!5855 (h!70537 zl!343)))) (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> b!5921457 d!1857287))

(declare-fun d!1857289 () Bool)

(declare-fun res!2482517 () Bool)

(declare-fun e!3625698 () Bool)

(assert (=> d!1857289 (=> res!2482517 e!3625698)))

(assert (=> d!1857289 (= res!2482517 ((_ is ElementMatch!15971) (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))))))

(assert (=> d!1857289 (= (validRegex!7707 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))) e!3625698)))

(declare-fun b!5922552 () Bool)

(declare-fun e!3625699 () Bool)

(declare-fun e!3625697 () Bool)

(assert (=> b!5922552 (= e!3625699 e!3625697)))

(declare-fun res!2482514 () Bool)

(assert (=> b!5922552 (= res!2482514 (not (nullable!5966 (reg!16300 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))))))))

(assert (=> b!5922552 (=> (not res!2482514) (not e!3625697))))

(declare-fun call!469742 () Bool)

(declare-fun bm!469735 () Bool)

(declare-fun c!1052690 () Bool)

(assert (=> bm!469735 (= call!469742 (validRegex!7707 (ite c!1052690 (regTwo!32455 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))) (regTwo!32454 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))))))))

(declare-fun b!5922553 () Bool)

(declare-fun res!2482516 () Bool)

(declare-fun e!3625694 () Bool)

(assert (=> b!5922553 (=> res!2482516 e!3625694)))

(assert (=> b!5922553 (= res!2482516 (not ((_ is Concat!24816) (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292)))))))))

(declare-fun e!3625693 () Bool)

(assert (=> b!5922553 (= e!3625693 e!3625694)))

(declare-fun b!5922554 () Bool)

(declare-fun res!2482513 () Bool)

(declare-fun e!3625695 () Bool)

(assert (=> b!5922554 (=> (not res!2482513) (not e!3625695))))

(declare-fun call!469741 () Bool)

(assert (=> b!5922554 (= res!2482513 call!469741)))

(assert (=> b!5922554 (= e!3625693 e!3625695)))

(declare-fun bm!469736 () Bool)

(declare-fun call!469740 () Bool)

(assert (=> bm!469736 (= call!469741 call!469740)))

(declare-fun b!5922555 () Bool)

(assert (=> b!5922555 (= e!3625697 call!469740)))

(declare-fun b!5922556 () Bool)

(declare-fun e!3625696 () Bool)

(assert (=> b!5922556 (= e!3625696 call!469742)))

(declare-fun b!5922557 () Bool)

(assert (=> b!5922557 (= e!3625694 e!3625696)))

(declare-fun res!2482515 () Bool)

(assert (=> b!5922557 (=> (not res!2482515) (not e!3625696))))

(assert (=> b!5922557 (= res!2482515 call!469741)))

(declare-fun b!5922558 () Bool)

(assert (=> b!5922558 (= e!3625699 e!3625693)))

(assert (=> b!5922558 (= c!1052690 ((_ is Union!15971) (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))))))

(declare-fun b!5922559 () Bool)

(assert (=> b!5922559 (= e!3625695 call!469742)))

(declare-fun c!1052691 () Bool)

(declare-fun bm!469737 () Bool)

(assert (=> bm!469737 (= call!469740 (validRegex!7707 (ite c!1052691 (reg!16300 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))) (ite c!1052690 (regOne!32455 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))) (regOne!32454 (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292)))))))))))

(declare-fun b!5922560 () Bool)

(assert (=> b!5922560 (= e!3625698 e!3625699)))

(assert (=> b!5922560 (= c!1052691 ((_ is Star!15971) (ite c!1052367 (reg!16300 (regOne!32454 r!7292)) (ite c!1052366 (regOne!32455 (regOne!32454 r!7292)) (regOne!32454 (regOne!32454 r!7292))))))))

(assert (= (and d!1857289 (not res!2482517)) b!5922560))

(assert (= (and b!5922560 c!1052691) b!5922552))

(assert (= (and b!5922560 (not c!1052691)) b!5922558))

(assert (= (and b!5922552 res!2482514) b!5922555))

(assert (= (and b!5922558 c!1052690) b!5922554))

(assert (= (and b!5922558 (not c!1052690)) b!5922553))

(assert (= (and b!5922554 res!2482513) b!5922559))

(assert (= (and b!5922553 (not res!2482516)) b!5922557))

(assert (= (and b!5922557 res!2482515) b!5922556))

(assert (= (or b!5922559 b!5922556) bm!469735))

(assert (= (or b!5922554 b!5922557) bm!469736))

(assert (= (or b!5922555 bm!469736) bm!469737))

(declare-fun m!6818120 () Bool)

(assert (=> b!5922552 m!6818120))

(declare-fun m!6818122 () Bool)

(assert (=> bm!469735 m!6818122))

(declare-fun m!6818124 () Bool)

(assert (=> bm!469737 m!6818124))

(assert (=> bm!469480 d!1857289))

(declare-fun d!1857291 () Bool)

(assert (=> d!1857291 (= (nullable!5966 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))) (nullableFct!1937 (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))

(declare-fun bs!1401876 () Bool)

(assert (= bs!1401876 d!1857291))

(declare-fun m!6818126 () Bool)

(assert (=> bs!1401876 m!6818126))

(assert (=> b!5921547 d!1857291))

(declare-fun d!1857293 () Bool)

(declare-fun c!1052692 () Bool)

(assert (=> d!1857293 (= c!1052692 ((_ is Nil!64090) lt!2310029))))

(declare-fun e!3625700 () (InoxSet C!32212))

(assert (=> d!1857293 (= (content!11801 lt!2310029) e!3625700)))

(declare-fun b!5922561 () Bool)

(assert (=> b!5922561 (= e!3625700 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922562 () Bool)

(assert (=> b!5922562 (= e!3625700 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 lt!2310029) true) (content!11801 (t!377605 lt!2310029))))))

(assert (= (and d!1857293 c!1052692) b!5922561))

(assert (= (and d!1857293 (not c!1052692)) b!5922562))

(declare-fun m!6818128 () Bool)

(assert (=> b!5922562 m!6818128))

(declare-fun m!6818130 () Bool)

(assert (=> b!5922562 m!6818130))

(assert (=> d!1856765 d!1857293))

(declare-fun d!1857295 () Bool)

(assert (=> d!1857295 (= (content!11801 Nil!64090) ((as const (Array C!32212 Bool)) false))))

(assert (=> d!1856765 d!1857295))

(declare-fun d!1857297 () Bool)

(declare-fun c!1052693 () Bool)

(assert (=> d!1857297 (= c!1052693 ((_ is Nil!64090) (Cons!64090 (h!70538 s!2326) Nil!64090)))))

(declare-fun e!3625701 () (InoxSet C!32212))

(assert (=> d!1857297 (= (content!11801 (Cons!64090 (h!70538 s!2326) Nil!64090)) e!3625701)))

(declare-fun b!5922563 () Bool)

(assert (=> b!5922563 (= e!3625701 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922564 () Bool)

(assert (=> b!5922564 (= e!3625701 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 (Cons!64090 (h!70538 s!2326) Nil!64090)) true) (content!11801 (t!377605 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(assert (= (and d!1857297 c!1052693) b!5922563))

(assert (= (and d!1857297 (not c!1052693)) b!5922564))

(declare-fun m!6818132 () Bool)

(assert (=> b!5922564 m!6818132))

(declare-fun m!6818134 () Bool)

(assert (=> b!5922564 m!6818134))

(assert (=> d!1856765 d!1857297))

(assert (=> b!5921447 d!1856795))

(declare-fun d!1857299 () Bool)

(declare-fun res!2482522 () Bool)

(declare-fun e!3625707 () Bool)

(assert (=> d!1857299 (=> res!2482522 e!3625707)))

(assert (=> d!1857299 (= res!2482522 ((_ is ElementMatch!15971) (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))

(assert (=> d!1857299 (= (validRegex!7707 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))) e!3625707)))

(declare-fun b!5922565 () Bool)

(declare-fun e!3625708 () Bool)

(declare-fun e!3625706 () Bool)

(assert (=> b!5922565 (= e!3625708 e!3625706)))

(declare-fun res!2482519 () Bool)

(assert (=> b!5922565 (= res!2482519 (not (nullable!5966 (reg!16300 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))))

(assert (=> b!5922565 (=> (not res!2482519) (not e!3625706))))

(declare-fun bm!469738 () Bool)

(declare-fun call!469745 () Bool)

(declare-fun c!1052694 () Bool)

(assert (=> bm!469738 (= call!469745 (validRegex!7707 (ite c!1052694 (regTwo!32455 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))) (regTwo!32454 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))))

(declare-fun b!5922566 () Bool)

(declare-fun res!2482521 () Bool)

(declare-fun e!3625703 () Bool)

(assert (=> b!5922566 (=> res!2482521 e!3625703)))

(assert (=> b!5922566 (= res!2482521 (not ((_ is Concat!24816) (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))))

(declare-fun e!3625702 () Bool)

(assert (=> b!5922566 (= e!3625702 e!3625703)))

(declare-fun b!5922567 () Bool)

(declare-fun res!2482518 () Bool)

(declare-fun e!3625704 () Bool)

(assert (=> b!5922567 (=> (not res!2482518) (not e!3625704))))

(declare-fun call!469744 () Bool)

(assert (=> b!5922567 (= res!2482518 call!469744)))

(assert (=> b!5922567 (= e!3625702 e!3625704)))

(declare-fun bm!469739 () Bool)

(declare-fun call!469743 () Bool)

(assert (=> bm!469739 (= call!469744 call!469743)))

(declare-fun b!5922568 () Bool)

(assert (=> b!5922568 (= e!3625706 call!469743)))

(declare-fun b!5922569 () Bool)

(declare-fun e!3625705 () Bool)

(assert (=> b!5922569 (= e!3625705 call!469745)))

(declare-fun b!5922570 () Bool)

(assert (=> b!5922570 (= e!3625703 e!3625705)))

(declare-fun res!2482520 () Bool)

(assert (=> b!5922570 (=> (not res!2482520) (not e!3625705))))

(assert (=> b!5922570 (= res!2482520 call!469744)))

(declare-fun b!5922571 () Bool)

(assert (=> b!5922571 (= e!3625708 e!3625702)))

(assert (=> b!5922571 (= c!1052694 ((_ is Union!15971) (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))

(declare-fun b!5922572 () Bool)

(assert (=> b!5922572 (= e!3625704 call!469745)))

(declare-fun bm!469740 () Bool)

(declare-fun c!1052695 () Bool)

(assert (=> bm!469740 (= call!469743 (validRegex!7707 (ite c!1052695 (reg!16300 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))) (ite c!1052694 (regOne!32455 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))) (regOne!32454 (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))))))

(declare-fun b!5922573 () Bool)

(assert (=> b!5922573 (= e!3625707 e!3625708)))

(assert (=> b!5922573 (= c!1052695 ((_ is Star!15971) (ite c!1052369 (reg!16300 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052368 (regOne!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))

(assert (= (and d!1857299 (not res!2482522)) b!5922573))

(assert (= (and b!5922573 c!1052695) b!5922565))

(assert (= (and b!5922573 (not c!1052695)) b!5922571))

(assert (= (and b!5922565 res!2482519) b!5922568))

(assert (= (and b!5922571 c!1052694) b!5922567))

(assert (= (and b!5922571 (not c!1052694)) b!5922566))

(assert (= (and b!5922567 res!2482518) b!5922572))

(assert (= (and b!5922566 (not res!2482521)) b!5922570))

(assert (= (and b!5922570 res!2482520) b!5922569))

(assert (= (or b!5922572 b!5922569) bm!469738))

(assert (= (or b!5922567 b!5922570) bm!469739))

(assert (= (or b!5922568 bm!469739) bm!469740))

(declare-fun m!6818136 () Bool)

(assert (=> b!5922565 m!6818136))

(declare-fun m!6818138 () Bool)

(assert (=> bm!469738 m!6818138))

(declare-fun m!6818140 () Bool)

(assert (=> bm!469740 m!6818140))

(assert (=> bm!469483 d!1857299))

(declare-fun d!1857301 () Bool)

(assert (=> d!1857301 (= (Exists!3041 (ite c!1052469 lambda!323036 lambda!323037)) (choose!44653 (ite c!1052469 lambda!323036 lambda!323037)))))

(declare-fun bs!1401877 () Bool)

(assert (= bs!1401877 d!1857301))

(declare-fun m!6818142 () Bool)

(assert (=> bs!1401877 m!6818142))

(assert (=> bm!469551 d!1857301))

(declare-fun d!1857303 () Bool)

(assert (=> d!1857303 (= (isEmpty!35950 Nil!64090) true)))

(assert (=> bm!469505 d!1857303))

(declare-fun d!1857305 () Bool)

(assert (=> d!1857305 (= (Exists!3041 lambda!323019) (choose!44653 lambda!323019))))

(declare-fun bs!1401878 () Bool)

(assert (= bs!1401878 d!1857305))

(declare-fun m!6818144 () Bool)

(assert (=> bs!1401878 m!6818144))

(assert (=> d!1856775 d!1857305))

(declare-fun d!1857307 () Bool)

(assert (=> d!1857307 (= (Exists!3041 lambda!323020) (choose!44653 lambda!323020))))

(declare-fun bs!1401879 () Bool)

(assert (= bs!1401879 d!1857307))

(declare-fun m!6818146 () Bool)

(assert (=> bs!1401879 m!6818146))

(assert (=> d!1856775 d!1857307))

(declare-fun b!5922574 () Bool)

(declare-fun e!3625710 () Bool)

(declare-fun call!469746 () Bool)

(assert (=> b!5922574 (= e!3625710 call!469746)))

(declare-fun b!5922575 () Bool)

(declare-fun e!3625709 () Bool)

(declare-fun e!3625711 () Bool)

(assert (=> b!5922575 (= e!3625709 e!3625711)))

(declare-fun res!2482526 () Bool)

(assert (=> b!5922575 (=> (not res!2482526) (not e!3625711))))

(assert (=> b!5922575 (= res!2482526 (and (not ((_ is EmptyLang!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))) (not ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(declare-fun b!5922576 () Bool)

(declare-fun e!3625712 () Bool)

(declare-fun e!3625714 () Bool)

(assert (=> b!5922576 (= e!3625712 e!3625714)))

(declare-fun res!2482525 () Bool)

(declare-fun call!469747 () Bool)

(assert (=> b!5922576 (= res!2482525 call!469747)))

(assert (=> b!5922576 (=> res!2482525 e!3625714)))

(declare-fun bm!469741 () Bool)

(declare-fun c!1052696 () Bool)

(assert (=> bm!469741 (= call!469746 (nullable!5966 (ite c!1052696 (regTwo!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(declare-fun b!5922577 () Bool)

(declare-fun e!3625713 () Bool)

(assert (=> b!5922577 (= e!3625711 e!3625713)))

(declare-fun res!2482523 () Bool)

(assert (=> b!5922577 (=> res!2482523 e!3625713)))

(assert (=> b!5922577 (= res!2482523 ((_ is Star!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun b!5922578 () Bool)

(assert (=> b!5922578 (= e!3625712 e!3625710)))

(declare-fun res!2482524 () Bool)

(assert (=> b!5922578 (= res!2482524 call!469747)))

(assert (=> b!5922578 (=> (not res!2482524) (not e!3625710))))

(declare-fun b!5922579 () Bool)

(assert (=> b!5922579 (= e!3625714 call!469746)))

(declare-fun d!1857309 () Bool)

(declare-fun res!2482527 () Bool)

(assert (=> d!1857309 (=> res!2482527 e!3625709)))

(assert (=> d!1857309 (= res!2482527 ((_ is EmptyExpr!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(assert (=> d!1857309 (= (nullableFct!1937 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) e!3625709)))

(declare-fun b!5922580 () Bool)

(assert (=> b!5922580 (= e!3625713 e!3625712)))

(assert (=> b!5922580 (= c!1052696 ((_ is Union!15971) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))

(declare-fun bm!469742 () Bool)

(assert (=> bm!469742 (= call!469747 (nullable!5966 (ite c!1052696 (regOne!32455 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (regOne!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(assert (= (and d!1857309 (not res!2482527)) b!5922575))

(assert (= (and b!5922575 res!2482526) b!5922577))

(assert (= (and b!5922577 (not res!2482523)) b!5922580))

(assert (= (and b!5922580 c!1052696) b!5922576))

(assert (= (and b!5922580 (not c!1052696)) b!5922578))

(assert (= (and b!5922576 (not res!2482525)) b!5922579))

(assert (= (and b!5922578 res!2482524) b!5922574))

(assert (= (or b!5922579 b!5922574) bm!469741))

(assert (= (or b!5922576 b!5922578) bm!469742))

(declare-fun m!6818148 () Bool)

(assert (=> bm!469741 m!6818148))

(declare-fun m!6818150 () Bool)

(assert (=> bm!469742 m!6818150))

(assert (=> d!1856925 d!1857309))

(assert (=> bm!469541 d!1856785))

(assert (=> b!5921461 d!1856715))

(declare-fun d!1857311 () Bool)

(declare-fun res!2482528 () Bool)

(declare-fun e!3625715 () Bool)

(assert (=> d!1857311 (=> res!2482528 e!3625715)))

(assert (=> d!1857311 (= res!2482528 ((_ is Nil!64088) lt!2310038))))

(assert (=> d!1857311 (= (forall!15054 lt!2310038 lambda!323024) e!3625715)))

(declare-fun b!5922581 () Bool)

(declare-fun e!3625716 () Bool)

(assert (=> b!5922581 (= e!3625715 e!3625716)))

(declare-fun res!2482529 () Bool)

(assert (=> b!5922581 (=> (not res!2482529) (not e!3625716))))

(assert (=> b!5922581 (= res!2482529 (dynLambda!25057 lambda!323024 (h!70536 lt!2310038)))))

(declare-fun b!5922582 () Bool)

(assert (=> b!5922582 (= e!3625716 (forall!15054 (t!377603 lt!2310038) lambda!323024))))

(assert (= (and d!1857311 (not res!2482528)) b!5922581))

(assert (= (and b!5922581 res!2482529) b!5922582))

(declare-fun b_lambda!222453 () Bool)

(assert (=> (not b_lambda!222453) (not b!5922581)))

(declare-fun m!6818152 () Bool)

(assert (=> b!5922581 m!6818152))

(declare-fun m!6818154 () Bool)

(assert (=> b!5922582 m!6818154))

(assert (=> d!1856817 d!1857311))

(declare-fun d!1857313 () Bool)

(declare-fun lt!2310093 () Int)

(assert (=> d!1857313 (>= lt!2310093 0)))

(declare-fun e!3625717 () Int)

(assert (=> d!1857313 (= lt!2310093 e!3625717)))

(declare-fun c!1052697 () Bool)

(assert (=> d!1857313 (= c!1052697 ((_ is Nil!64090) lt!2310028))))

(assert (=> d!1857313 (= (size!40137 lt!2310028) lt!2310093)))

(declare-fun b!5922583 () Bool)

(assert (=> b!5922583 (= e!3625717 0)))

(declare-fun b!5922584 () Bool)

(assert (=> b!5922584 (= e!3625717 (+ 1 (size!40137 (t!377605 lt!2310028))))))

(assert (= (and d!1857313 c!1052697) b!5922583))

(assert (= (and d!1857313 (not c!1052697)) b!5922584))

(declare-fun m!6818156 () Bool)

(assert (=> b!5922584 m!6818156))

(assert (=> b!5921195 d!1857313))

(declare-fun d!1857315 () Bool)

(declare-fun lt!2310094 () Int)

(assert (=> d!1857315 (>= lt!2310094 0)))

(declare-fun e!3625718 () Int)

(assert (=> d!1857315 (= lt!2310094 e!3625718)))

(declare-fun c!1052698 () Bool)

(assert (=> d!1857315 (= c!1052698 ((_ is Nil!64090) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(assert (=> d!1857315 (= (size!40137 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) lt!2310094)))

(declare-fun b!5922585 () Bool)

(assert (=> b!5922585 (= e!3625718 0)))

(declare-fun b!5922586 () Bool)

(assert (=> b!5922586 (= e!3625718 (+ 1 (size!40137 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))))

(assert (= (and d!1857315 c!1052698) b!5922585))

(assert (= (and d!1857315 (not c!1052698)) b!5922586))

(declare-fun m!6818158 () Bool)

(assert (=> b!5922586 m!6818158))

(assert (=> b!5921195 d!1857315))

(declare-fun d!1857317 () Bool)

(declare-fun lt!2310095 () Int)

(assert (=> d!1857317 (>= lt!2310095 0)))

(declare-fun e!3625719 () Int)

(assert (=> d!1857317 (= lt!2310095 e!3625719)))

(declare-fun c!1052699 () Bool)

(assert (=> d!1857317 (= c!1052699 ((_ is Nil!64090) (t!377605 s!2326)))))

(assert (=> d!1857317 (= (size!40137 (t!377605 s!2326)) lt!2310095)))

(declare-fun b!5922587 () Bool)

(assert (=> b!5922587 (= e!3625719 0)))

(declare-fun b!5922588 () Bool)

(assert (=> b!5922588 (= e!3625719 (+ 1 (size!40137 (t!377605 (t!377605 s!2326)))))))

(assert (= (and d!1857317 c!1052699) b!5922587))

(assert (= (and d!1857317 (not c!1052699)) b!5922588))

(declare-fun m!6818160 () Bool)

(assert (=> b!5922588 m!6818160))

(assert (=> b!5921195 d!1857317))

(assert (=> bm!469477 d!1857215))

(declare-fun d!1857319 () Bool)

(assert (=> d!1857319 (= (head!12482 (t!377603 (unfocusZipperList!1392 zl!343))) (h!70536 (t!377603 (unfocusZipperList!1392 zl!343))))))

(assert (=> b!5921476 d!1857319))

(declare-fun d!1857321 () Bool)

(assert (=> d!1857321 (= (nullable!5966 (reg!16300 lt!2309966)) (nullableFct!1937 (reg!16300 lt!2309966)))))

(declare-fun bs!1401880 () Bool)

(assert (= bs!1401880 d!1857321))

(declare-fun m!6818162 () Bool)

(assert (=> bs!1401880 m!6818162))

(assert (=> b!5921623 d!1857321))

(declare-fun d!1857323 () Bool)

(declare-fun res!2482534 () Bool)

(declare-fun e!3625725 () Bool)

(assert (=> d!1857323 (=> res!2482534 e!3625725)))

(assert (=> d!1857323 (= res!2482534 ((_ is ElementMatch!15971) lt!2310046))))

(assert (=> d!1857323 (= (validRegex!7707 lt!2310046) e!3625725)))

(declare-fun b!5922589 () Bool)

(declare-fun e!3625726 () Bool)

(declare-fun e!3625724 () Bool)

(assert (=> b!5922589 (= e!3625726 e!3625724)))

(declare-fun res!2482531 () Bool)

(assert (=> b!5922589 (= res!2482531 (not (nullable!5966 (reg!16300 lt!2310046))))))

(assert (=> b!5922589 (=> (not res!2482531) (not e!3625724))))

(declare-fun bm!469743 () Bool)

(declare-fun call!469750 () Bool)

(declare-fun c!1052700 () Bool)

(assert (=> bm!469743 (= call!469750 (validRegex!7707 (ite c!1052700 (regTwo!32455 lt!2310046) (regTwo!32454 lt!2310046))))))

(declare-fun b!5922590 () Bool)

(declare-fun res!2482533 () Bool)

(declare-fun e!3625721 () Bool)

(assert (=> b!5922590 (=> res!2482533 e!3625721)))

(assert (=> b!5922590 (= res!2482533 (not ((_ is Concat!24816) lt!2310046)))))

(declare-fun e!3625720 () Bool)

(assert (=> b!5922590 (= e!3625720 e!3625721)))

(declare-fun b!5922591 () Bool)

(declare-fun res!2482530 () Bool)

(declare-fun e!3625722 () Bool)

(assert (=> b!5922591 (=> (not res!2482530) (not e!3625722))))

(declare-fun call!469749 () Bool)

(assert (=> b!5922591 (= res!2482530 call!469749)))

(assert (=> b!5922591 (= e!3625720 e!3625722)))

(declare-fun bm!469744 () Bool)

(declare-fun call!469748 () Bool)

(assert (=> bm!469744 (= call!469749 call!469748)))

(declare-fun b!5922592 () Bool)

(assert (=> b!5922592 (= e!3625724 call!469748)))

(declare-fun b!5922593 () Bool)

(declare-fun e!3625723 () Bool)

(assert (=> b!5922593 (= e!3625723 call!469750)))

(declare-fun b!5922594 () Bool)

(assert (=> b!5922594 (= e!3625721 e!3625723)))

(declare-fun res!2482532 () Bool)

(assert (=> b!5922594 (=> (not res!2482532) (not e!3625723))))

(assert (=> b!5922594 (= res!2482532 call!469749)))

(declare-fun b!5922595 () Bool)

(assert (=> b!5922595 (= e!3625726 e!3625720)))

(assert (=> b!5922595 (= c!1052700 ((_ is Union!15971) lt!2310046))))

(declare-fun b!5922596 () Bool)

(assert (=> b!5922596 (= e!3625722 call!469750)))

(declare-fun bm!469745 () Bool)

(declare-fun c!1052701 () Bool)

(assert (=> bm!469745 (= call!469748 (validRegex!7707 (ite c!1052701 (reg!16300 lt!2310046) (ite c!1052700 (regOne!32455 lt!2310046) (regOne!32454 lt!2310046)))))))

(declare-fun b!5922597 () Bool)

(assert (=> b!5922597 (= e!3625725 e!3625726)))

(assert (=> b!5922597 (= c!1052701 ((_ is Star!15971) lt!2310046))))

(assert (= (and d!1857323 (not res!2482534)) b!5922597))

(assert (= (and b!5922597 c!1052701) b!5922589))

(assert (= (and b!5922597 (not c!1052701)) b!5922595))

(assert (= (and b!5922589 res!2482531) b!5922592))

(assert (= (and b!5922595 c!1052700) b!5922591))

(assert (= (and b!5922595 (not c!1052700)) b!5922590))

(assert (= (and b!5922591 res!2482530) b!5922596))

(assert (= (and b!5922590 (not res!2482533)) b!5922594))

(assert (= (and b!5922594 res!2482532) b!5922593))

(assert (= (or b!5922596 b!5922593) bm!469743))

(assert (= (or b!5922591 b!5922594) bm!469744))

(assert (= (or b!5922592 bm!469744) bm!469745))

(declare-fun m!6818164 () Bool)

(assert (=> b!5922589 m!6818164))

(declare-fun m!6818166 () Bool)

(assert (=> bm!469743 m!6818166))

(declare-fun m!6818168 () Bool)

(assert (=> bm!469745 m!6818168))

(assert (=> d!1856859 d!1857323))

(assert (=> d!1856859 d!1856731))

(declare-fun b!5922598 () Bool)

(declare-fun e!3625727 () List!64214)

(assert (=> b!5922598 (= e!3625727 (t!377605 (t!377605 s!2326)))))

(declare-fun d!1857325 () Bool)

(declare-fun e!3625728 () Bool)

(assert (=> d!1857325 e!3625728))

(declare-fun res!2482535 () Bool)

(assert (=> d!1857325 (=> (not res!2482535) (not e!3625728))))

(declare-fun lt!2310096 () List!64214)

(assert (=> d!1857325 (= res!2482535 (= (content!11801 lt!2310096) ((_ map or) (content!11801 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))) (content!11801 (t!377605 (t!377605 s!2326))))))))

(assert (=> d!1857325 (= lt!2310096 e!3625727)))

(declare-fun c!1052702 () Bool)

(assert (=> d!1857325 (= c!1052702 ((_ is Nil!64090) (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))))))

(assert (=> d!1857325 (= (++!14068 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (t!377605 (t!377605 s!2326))) lt!2310096)))

(declare-fun b!5922599 () Bool)

(assert (=> b!5922599 (= e!3625727 (Cons!64090 (h!70538 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))) (++!14068 (t!377605 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))) (t!377605 (t!377605 s!2326)))))))

(declare-fun b!5922600 () Bool)

(declare-fun res!2482536 () Bool)

(assert (=> b!5922600 (=> (not res!2482536) (not e!3625728))))

(assert (=> b!5922600 (= res!2482536 (= (size!40137 lt!2310096) (+ (size!40137 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))) (size!40137 (t!377605 (t!377605 s!2326))))))))

(declare-fun b!5922601 () Bool)

(assert (=> b!5922601 (= e!3625728 (or (not (= (t!377605 (t!377605 s!2326)) Nil!64090)) (= lt!2310096 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)))))))

(assert (= (and d!1857325 c!1052702) b!5922598))

(assert (= (and d!1857325 (not c!1052702)) b!5922599))

(assert (= (and d!1857325 res!2482535) b!5922600))

(assert (= (and b!5922600 res!2482536) b!5922601))

(declare-fun m!6818170 () Bool)

(assert (=> d!1857325 m!6818170))

(assert (=> d!1857325 m!6817008))

(declare-fun m!6818172 () Bool)

(assert (=> d!1857325 m!6818172))

(assert (=> d!1857325 m!6817998))

(declare-fun m!6818174 () Bool)

(assert (=> b!5922599 m!6818174))

(declare-fun m!6818176 () Bool)

(assert (=> b!5922600 m!6818176))

(assert (=> b!5922600 m!6817008))

(declare-fun m!6818178 () Bool)

(assert (=> b!5922600 m!6818178))

(assert (=> b!5922600 m!6818160))

(assert (=> b!5921205 d!1857325))

(declare-fun b!5922602 () Bool)

(declare-fun e!3625729 () List!64214)

(assert (=> b!5922602 (= e!3625729 (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))))

(declare-fun d!1857327 () Bool)

(declare-fun e!3625730 () Bool)

(assert (=> d!1857327 e!3625730))

(declare-fun res!2482537 () Bool)

(assert (=> d!1857327 (=> (not res!2482537) (not e!3625730))))

(declare-fun lt!2310097 () List!64214)

(assert (=> d!1857327 (= res!2482537 (= (content!11801 lt!2310097) ((_ map or) (content!11801 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (content!11801 (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)))))))

(assert (=> d!1857327 (= lt!2310097 e!3625729)))

(declare-fun c!1052703 () Bool)

(assert (=> d!1857327 (= c!1052703 ((_ is Nil!64090) (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))

(assert (=> d!1857327 (= (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) lt!2310097)))

(declare-fun b!5922603 () Bool)

(assert (=> b!5922603 (= e!3625729 (Cons!64090 (h!70538 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (++!14068 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))))))

(declare-fun b!5922604 () Bool)

(declare-fun res!2482538 () Bool)

(assert (=> b!5922604 (=> (not res!2482538) (not e!3625730))))

(assert (=> b!5922604 (= res!2482538 (= (size!40137 lt!2310097) (+ (size!40137 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (size!40137 (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)))))))

(declare-fun b!5922605 () Bool)

(assert (=> b!5922605 (= e!3625730 (or (not (= (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090) Nil!64090)) (= lt!2310097 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(assert (= (and d!1857327 c!1052703) b!5922602))

(assert (= (and d!1857327 (not c!1052703)) b!5922603))

(assert (= (and d!1857327 res!2482537) b!5922604))

(assert (= (and b!5922604 res!2482538) b!5922605))

(declare-fun m!6818180 () Bool)

(assert (=> d!1857327 m!6818180))

(assert (=> d!1857327 m!6816798))

(assert (=> d!1857327 m!6816968))

(declare-fun m!6818182 () Bool)

(assert (=> d!1857327 m!6818182))

(declare-fun m!6818184 () Bool)

(assert (=> b!5922603 m!6818184))

(declare-fun m!6818186 () Bool)

(assert (=> b!5922604 m!6818186))

(assert (=> b!5922604 m!6816798))

(assert (=> b!5922604 m!6816976))

(declare-fun m!6818188 () Bool)

(assert (=> b!5922604 m!6818188))

(assert (=> b!5921205 d!1857327))

(declare-fun d!1857329 () Bool)

(assert (=> d!1857329 (= (++!14068 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (t!377605 (t!377605 s!2326))) s!2326)))

(declare-fun lt!2310098 () Unit!157213)

(assert (=> d!1857329 (= lt!2310098 (choose!44658 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (h!70538 (t!377605 s!2326)) (t!377605 (t!377605 s!2326)) s!2326))))

(assert (=> d!1857329 (= (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) (t!377605 (t!377605 s!2326)))) s!2326)))

(assert (=> d!1857329 (= (lemmaMoveElementToOtherListKeepsConcatEq!2163 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (h!70538 (t!377605 s!2326)) (t!377605 (t!377605 s!2326)) s!2326) lt!2310098)))

(declare-fun bs!1401881 () Bool)

(assert (= bs!1401881 d!1857329))

(assert (=> bs!1401881 m!6816798))

(assert (=> bs!1401881 m!6817008))

(assert (=> bs!1401881 m!6817008))

(assert (=> bs!1401881 m!6817010))

(assert (=> bs!1401881 m!6816798))

(declare-fun m!6818190 () Bool)

(assert (=> bs!1401881 m!6818190))

(assert (=> bs!1401881 m!6816798))

(declare-fun m!6818192 () Bool)

(assert (=> bs!1401881 m!6818192))

(assert (=> b!5921205 d!1857329))

(declare-fun b!5922606 () Bool)

(declare-fun e!3625735 () Option!15862)

(declare-fun e!3625731 () Option!15862)

(assert (=> b!5922606 (= e!3625735 e!3625731)))

(declare-fun c!1052705 () Bool)

(assert (=> b!5922606 (= c!1052705 ((_ is Nil!64090) (t!377605 (t!377605 s!2326))))))

(declare-fun b!5922607 () Bool)

(assert (=> b!5922607 (= e!3625735 (Some!15861 (tuple2!65901 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (t!377605 (t!377605 s!2326)))))))

(declare-fun b!5922608 () Bool)

(declare-fun res!2482539 () Bool)

(declare-fun e!3625732 () Bool)

(assert (=> b!5922608 (=> (not res!2482539) (not e!3625732))))

(declare-fun lt!2310100 () Option!15862)

(assert (=> b!5922608 (= res!2482539 (matchR!8154 (regTwo!32454 r!7292) (_2!36253 (get!22069 lt!2310100))))))

(declare-fun b!5922609 () Bool)

(declare-fun res!2482542 () Bool)

(assert (=> b!5922609 (=> (not res!2482542) (not e!3625732))))

(assert (=> b!5922609 (= res!2482542 (matchR!8154 (regOne!32454 r!7292) (_1!36253 (get!22069 lt!2310100))))))

(declare-fun b!5922611 () Bool)

(declare-fun e!3625733 () Bool)

(assert (=> b!5922611 (= e!3625733 (not (isDefined!12565 lt!2310100)))))

(declare-fun b!5922612 () Bool)

(assert (=> b!5922612 (= e!3625732 (= (++!14068 (_1!36253 (get!22069 lt!2310100)) (_2!36253 (get!22069 lt!2310100))) s!2326))))

(declare-fun b!5922613 () Bool)

(declare-fun e!3625734 () Bool)

(assert (=> b!5922613 (= e!3625734 (matchR!8154 (regTwo!32454 r!7292) (t!377605 (t!377605 s!2326))))))

(declare-fun b!5922614 () Bool)

(assert (=> b!5922614 (= e!3625731 None!15861)))

(declare-fun b!5922610 () Bool)

(declare-fun lt!2310099 () Unit!157213)

(declare-fun lt!2310101 () Unit!157213)

(assert (=> b!5922610 (= lt!2310099 lt!2310101)))

(assert (=> b!5922610 (= (++!14068 (++!14068 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (Cons!64090 (h!70538 (t!377605 (t!377605 s!2326))) Nil!64090)) (t!377605 (t!377605 (t!377605 s!2326)))) s!2326)))

(assert (=> b!5922610 (= lt!2310101 (lemmaMoveElementToOtherListKeepsConcatEq!2163 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (h!70538 (t!377605 (t!377605 s!2326))) (t!377605 (t!377605 (t!377605 s!2326))) s!2326))))

(assert (=> b!5922610 (= e!3625731 (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) (++!14068 (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (Cons!64090 (h!70538 (t!377605 (t!377605 s!2326))) Nil!64090)) (t!377605 (t!377605 (t!377605 s!2326))) s!2326))))

(declare-fun d!1857331 () Bool)

(assert (=> d!1857331 e!3625733))

(declare-fun res!2482540 () Bool)

(assert (=> d!1857331 (=> res!2482540 e!3625733)))

(assert (=> d!1857331 (= res!2482540 e!3625732)))

(declare-fun res!2482543 () Bool)

(assert (=> d!1857331 (=> (not res!2482543) (not e!3625732))))

(assert (=> d!1857331 (= res!2482543 (isDefined!12565 lt!2310100))))

(assert (=> d!1857331 (= lt!2310100 e!3625735)))

(declare-fun c!1052704 () Bool)

(assert (=> d!1857331 (= c!1052704 e!3625734)))

(declare-fun res!2482541 () Bool)

(assert (=> d!1857331 (=> (not res!2482541) (not e!3625734))))

(assert (=> d!1857331 (= res!2482541 (matchR!8154 (regOne!32454 r!7292) (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090))))))

(assert (=> d!1857331 (validRegex!7707 (regOne!32454 r!7292))))

(assert (=> d!1857331 (= (findConcatSeparation!2276 (regOne!32454 r!7292) (regTwo!32454 r!7292) (++!14068 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)) (Cons!64090 (h!70538 (t!377605 s!2326)) Nil!64090)) (t!377605 (t!377605 s!2326)) s!2326) lt!2310100)))

(assert (= (and d!1857331 res!2482541) b!5922613))

(assert (= (and d!1857331 c!1052704) b!5922607))

(assert (= (and d!1857331 (not c!1052704)) b!5922606))

(assert (= (and b!5922606 c!1052705) b!5922614))

(assert (= (and b!5922606 (not c!1052705)) b!5922610))

(assert (= (and d!1857331 res!2482543) b!5922609))

(assert (= (and b!5922609 res!2482542) b!5922608))

(assert (= (and b!5922608 res!2482539) b!5922612))

(assert (= (and d!1857331 (not res!2482540)) b!5922611))

(declare-fun m!6818194 () Bool)

(assert (=> d!1857331 m!6818194))

(assert (=> d!1857331 m!6817008))

(declare-fun m!6818196 () Bool)

(assert (=> d!1857331 m!6818196))

(assert (=> d!1857331 m!6816790))

(declare-fun m!6818198 () Bool)

(assert (=> b!5922612 m!6818198))

(declare-fun m!6818200 () Bool)

(assert (=> b!5922612 m!6818200))

(assert (=> b!5922609 m!6818198))

(declare-fun m!6818202 () Bool)

(assert (=> b!5922609 m!6818202))

(assert (=> b!5922610 m!6817008))

(declare-fun m!6818204 () Bool)

(assert (=> b!5922610 m!6818204))

(assert (=> b!5922610 m!6818204))

(declare-fun m!6818206 () Bool)

(assert (=> b!5922610 m!6818206))

(assert (=> b!5922610 m!6817008))

(declare-fun m!6818208 () Bool)

(assert (=> b!5922610 m!6818208))

(assert (=> b!5922610 m!6818204))

(declare-fun m!6818210 () Bool)

(assert (=> b!5922610 m!6818210))

(declare-fun m!6818212 () Bool)

(assert (=> b!5922613 m!6818212))

(assert (=> b!5922608 m!6818198))

(declare-fun m!6818214 () Bool)

(assert (=> b!5922608 m!6818214))

(assert (=> b!5922611 m!6818194))

(assert (=> b!5921205 d!1857331))

(declare-fun d!1857333 () Bool)

(declare-fun c!1052706 () Bool)

(assert (=> d!1857333 (= c!1052706 ((_ is Nil!64090) lt!2310036))))

(declare-fun e!3625736 () (InoxSet C!32212))

(assert (=> d!1857333 (= (content!11801 lt!2310036) e!3625736)))

(declare-fun b!5922615 () Bool)

(assert (=> b!5922615 (= e!3625736 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922616 () Bool)

(assert (=> b!5922616 (= e!3625736 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 lt!2310036) true) (content!11801 (t!377605 lt!2310036))))))

(assert (= (and d!1857333 c!1052706) b!5922615))

(assert (= (and d!1857333 (not c!1052706)) b!5922616))

(declare-fun m!6818216 () Bool)

(assert (=> b!5922616 m!6818216))

(declare-fun m!6818218 () Bool)

(assert (=> b!5922616 m!6818218))

(assert (=> d!1856793 d!1857333))

(declare-fun d!1857335 () Bool)

(declare-fun c!1052707 () Bool)

(assert (=> d!1857335 (= c!1052707 ((_ is Nil!64090) (_1!36253 (get!22069 lt!2309996))))))

(declare-fun e!3625737 () (InoxSet C!32212))

(assert (=> d!1857335 (= (content!11801 (_1!36253 (get!22069 lt!2309996))) e!3625737)))

(declare-fun b!5922617 () Bool)

(assert (=> b!5922617 (= e!3625737 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922618 () Bool)

(assert (=> b!5922618 (= e!3625737 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 (_1!36253 (get!22069 lt!2309996))) true) (content!11801 (t!377605 (_1!36253 (get!22069 lt!2309996))))))))

(assert (= (and d!1857335 c!1052707) b!5922617))

(assert (= (and d!1857335 (not c!1052707)) b!5922618))

(declare-fun m!6818220 () Bool)

(assert (=> b!5922618 m!6818220))

(declare-fun m!6818222 () Bool)

(assert (=> b!5922618 m!6818222))

(assert (=> d!1856793 d!1857335))

(declare-fun d!1857337 () Bool)

(declare-fun c!1052708 () Bool)

(assert (=> d!1857337 (= c!1052708 ((_ is Nil!64090) (_2!36253 (get!22069 lt!2309996))))))

(declare-fun e!3625738 () (InoxSet C!32212))

(assert (=> d!1857337 (= (content!11801 (_2!36253 (get!22069 lt!2309996))) e!3625738)))

(declare-fun b!5922619 () Bool)

(assert (=> b!5922619 (= e!3625738 ((as const (Array C!32212 Bool)) false))))

(declare-fun b!5922620 () Bool)

(assert (=> b!5922620 (= e!3625738 ((_ map or) (store ((as const (Array C!32212 Bool)) false) (h!70538 (_2!36253 (get!22069 lt!2309996))) true) (content!11801 (t!377605 (_2!36253 (get!22069 lt!2309996))))))))

(assert (= (and d!1857337 c!1052708) b!5922619))

(assert (= (and d!1857337 (not c!1052708)) b!5922620))

(declare-fun m!6818224 () Bool)

(assert (=> b!5922620 m!6818224))

(declare-fun m!6818226 () Bool)

(assert (=> b!5922620 m!6818226))

(assert (=> d!1856793 d!1857337))

(declare-fun bs!1401882 () Bool)

(declare-fun d!1857339 () Bool)

(assert (= bs!1401882 (and d!1857339 d!1856735)))

(declare-fun lambda!323065 () Int)

(assert (=> bs!1401882 (= lambda!323065 lambda!323014)))

(declare-fun bs!1401883 () Bool)

(assert (= bs!1401883 (and d!1857339 d!1856717)))

(assert (=> bs!1401883 (= lambda!323065 lambda!323001)))

(declare-fun bs!1401884 () Bool)

(assert (= bs!1401884 (and d!1857339 d!1856903)))

(assert (=> bs!1401884 (= lambda!323065 lambda!323032)))

(declare-fun bs!1401885 () Bool)

(assert (= bs!1401885 (and d!1857339 d!1856873)))

(assert (=> bs!1401885 (= lambda!323065 lambda!323029)))

(declare-fun bs!1401886 () Bool)

(assert (= bs!1401886 (and d!1857339 d!1857129)))

(assert (=> bs!1401886 (= lambda!323065 lambda!323054)))

(declare-fun bs!1401887 () Bool)

(assert (= bs!1401887 (and d!1857339 d!1856887)))

(assert (=> bs!1401887 (= lambda!323065 lambda!323031)))

(declare-fun bs!1401888 () Bool)

(assert (= bs!1401888 (and d!1857339 d!1856675)))

(assert (=> bs!1401888 (= lambda!323065 lambda!322975)))

(declare-fun bs!1401889 () Bool)

(assert (= bs!1401889 (and d!1857339 d!1857213)))

(assert (=> bs!1401889 (= lambda!323065 lambda!323060)))

(declare-fun bs!1401890 () Bool)

(assert (= bs!1401890 (and d!1857339 d!1857123)))

(assert (=> bs!1401890 (= lambda!323065 lambda!323053)))

(declare-fun bs!1401891 () Bool)

(assert (= bs!1401891 (and d!1857339 d!1856641)))

(assert (=> bs!1401891 (= lambda!323065 lambda!322963)))

(declare-fun bs!1401892 () Bool)

(assert (= bs!1401892 (and d!1857339 d!1856733)))

(assert (=> bs!1401892 (= lambda!323065 lambda!323011)))

(declare-fun bs!1401893 () Bool)

(assert (= bs!1401893 (and d!1857339 d!1856723)))

(assert (=> bs!1401893 (= lambda!323065 lambda!323002)))

(declare-fun bs!1401894 () Bool)

(assert (= bs!1401894 (and d!1857339 d!1856817)))

(assert (=> bs!1401894 (= lambda!323065 lambda!323024)))

(declare-fun bs!1401895 () Bool)

(assert (= bs!1401895 (and d!1857339 d!1856951)))

(assert (=> bs!1401895 (= lambda!323065 lambda!323038)))

(declare-fun bs!1401896 () Bool)

(assert (= bs!1401896 (and d!1857339 d!1857207)))

(assert (=> bs!1401896 (= lambda!323065 lambda!323059)))

(declare-fun bs!1401897 () Bool)

(assert (= bs!1401897 (and d!1857339 d!1857237)))

(assert (=> bs!1401897 (= lambda!323065 lambda!323062)))

(declare-fun bs!1401898 () Bool)

(assert (= bs!1401898 (and d!1857339 d!1857219)))

(assert (=> bs!1401898 (= lambda!323065 lambda!323061)))

(declare-fun b!5922621 () Bool)

(declare-fun e!3625744 () Bool)

(declare-fun lt!2310102 () Regex!15971)

(assert (=> b!5922621 (= e!3625744 (isConcat!922 lt!2310102))))

(declare-fun b!5922622 () Bool)

(declare-fun e!3625740 () Regex!15971)

(declare-fun e!3625739 () Regex!15971)

(assert (=> b!5922622 (= e!3625740 e!3625739)))

(declare-fun c!1052710 () Bool)

(assert (=> b!5922622 (= c!1052710 ((_ is Cons!64088) (exprs!5855 (h!70537 (t!377604 zl!343)))))))

(declare-fun b!5922623 () Bool)

(assert (=> b!5922623 (= e!3625740 (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343)))))))

(declare-fun b!5922624 () Bool)

(declare-fun e!3625741 () Bool)

(assert (=> b!5922624 (= e!3625741 (isEmpty!35946 (t!377603 (exprs!5855 (h!70537 (t!377604 zl!343))))))))

(declare-fun e!3625743 () Bool)

(assert (=> d!1857339 e!3625743))

(declare-fun res!2482544 () Bool)

(assert (=> d!1857339 (=> (not res!2482544) (not e!3625743))))

(assert (=> d!1857339 (= res!2482544 (validRegex!7707 lt!2310102))))

(assert (=> d!1857339 (= lt!2310102 e!3625740)))

(declare-fun c!1052712 () Bool)

(assert (=> d!1857339 (= c!1052712 e!3625741)))

(declare-fun res!2482545 () Bool)

(assert (=> d!1857339 (=> (not res!2482545) (not e!3625741))))

(assert (=> d!1857339 (= res!2482545 ((_ is Cons!64088) (exprs!5855 (h!70537 (t!377604 zl!343)))))))

(assert (=> d!1857339 (forall!15054 (exprs!5855 (h!70537 (t!377604 zl!343))) lambda!323065)))

(assert (=> d!1857339 (= (generalisedConcat!1568 (exprs!5855 (h!70537 (t!377604 zl!343)))) lt!2310102)))

(declare-fun b!5922625 () Bool)

(declare-fun e!3625742 () Bool)

(assert (=> b!5922625 (= e!3625742 e!3625744)))

(declare-fun c!1052709 () Bool)

(assert (=> b!5922625 (= c!1052709 (isEmpty!35946 (tail!11567 (exprs!5855 (h!70537 (t!377604 zl!343))))))))

(declare-fun b!5922626 () Bool)

(assert (=> b!5922626 (= e!3625739 (Concat!24816 (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343)))) (generalisedConcat!1568 (t!377603 (exprs!5855 (h!70537 (t!377604 zl!343)))))))))

(declare-fun b!5922627 () Bool)

(assert (=> b!5922627 (= e!3625744 (= lt!2310102 (head!12482 (exprs!5855 (h!70537 (t!377604 zl!343))))))))

(declare-fun b!5922628 () Bool)

(assert (=> b!5922628 (= e!3625742 (isEmptyExpr!1399 lt!2310102))))

(declare-fun b!5922629 () Bool)

(assert (=> b!5922629 (= e!3625743 e!3625742)))

(declare-fun c!1052711 () Bool)

(assert (=> b!5922629 (= c!1052711 (isEmpty!35946 (exprs!5855 (h!70537 (t!377604 zl!343)))))))

(declare-fun b!5922630 () Bool)

(assert (=> b!5922630 (= e!3625739 EmptyExpr!15971)))

(assert (= (and d!1857339 res!2482545) b!5922624))

(assert (= (and d!1857339 c!1052712) b!5922623))

(assert (= (and d!1857339 (not c!1052712)) b!5922622))

(assert (= (and b!5922622 c!1052710) b!5922626))

(assert (= (and b!5922622 (not c!1052710)) b!5922630))

(assert (= (and d!1857339 res!2482544) b!5922629))

(assert (= (and b!5922629 c!1052711) b!5922628))

(assert (= (and b!5922629 (not c!1052711)) b!5922625))

(assert (= (and b!5922625 c!1052709) b!5922627))

(assert (= (and b!5922625 (not c!1052709)) b!5922621))

(declare-fun m!6818228 () Bool)

(assert (=> b!5922625 m!6818228))

(assert (=> b!5922625 m!6818228))

(declare-fun m!6818230 () Bool)

(assert (=> b!5922625 m!6818230))

(declare-fun m!6818232 () Bool)

(assert (=> d!1857339 m!6818232))

(declare-fun m!6818234 () Bool)

(assert (=> d!1857339 m!6818234))

(declare-fun m!6818236 () Bool)

(assert (=> b!5922628 m!6818236))

(declare-fun m!6818238 () Bool)

(assert (=> b!5922629 m!6818238))

(declare-fun m!6818240 () Bool)

(assert (=> b!5922627 m!6818240))

(declare-fun m!6818242 () Bool)

(assert (=> b!5922624 m!6818242))

(declare-fun m!6818244 () Bool)

(assert (=> b!5922626 m!6818244))

(declare-fun m!6818246 () Bool)

(assert (=> b!5922621 m!6818246))

(assert (=> b!5921285 d!1857339))

(declare-fun bs!1401899 () Bool)

(declare-fun d!1857341 () Bool)

(assert (= bs!1401899 (and d!1857341 d!1856735)))

(declare-fun lambda!323066 () Int)

(assert (=> bs!1401899 (= lambda!323066 lambda!323014)))

(declare-fun bs!1401900 () Bool)

(assert (= bs!1401900 (and d!1857341 d!1856717)))

(assert (=> bs!1401900 (= lambda!323066 lambda!323001)))

(declare-fun bs!1401901 () Bool)

(assert (= bs!1401901 (and d!1857341 d!1856903)))

(assert (=> bs!1401901 (= lambda!323066 lambda!323032)))

(declare-fun bs!1401902 () Bool)

(assert (= bs!1401902 (and d!1857341 d!1856873)))

(assert (=> bs!1401902 (= lambda!323066 lambda!323029)))

(declare-fun bs!1401903 () Bool)

(assert (= bs!1401903 (and d!1857341 d!1856887)))

(assert (=> bs!1401903 (= lambda!323066 lambda!323031)))

(declare-fun bs!1401904 () Bool)

(assert (= bs!1401904 (and d!1857341 d!1856675)))

(assert (=> bs!1401904 (= lambda!323066 lambda!322975)))

(declare-fun bs!1401905 () Bool)

(assert (= bs!1401905 (and d!1857341 d!1857213)))

(assert (=> bs!1401905 (= lambda!323066 lambda!323060)))

(declare-fun bs!1401906 () Bool)

(assert (= bs!1401906 (and d!1857341 d!1857123)))

(assert (=> bs!1401906 (= lambda!323066 lambda!323053)))

(declare-fun bs!1401907 () Bool)

(assert (= bs!1401907 (and d!1857341 d!1856641)))

(assert (=> bs!1401907 (= lambda!323066 lambda!322963)))

(declare-fun bs!1401908 () Bool)

(assert (= bs!1401908 (and d!1857341 d!1856733)))

(assert (=> bs!1401908 (= lambda!323066 lambda!323011)))

(declare-fun bs!1401909 () Bool)

(assert (= bs!1401909 (and d!1857341 d!1856723)))

(assert (=> bs!1401909 (= lambda!323066 lambda!323002)))

(declare-fun bs!1401910 () Bool)

(assert (= bs!1401910 (and d!1857341 d!1857129)))

(assert (=> bs!1401910 (= lambda!323066 lambda!323054)))

(declare-fun bs!1401911 () Bool)

(assert (= bs!1401911 (and d!1857341 d!1857339)))

(assert (=> bs!1401911 (= lambda!323066 lambda!323065)))

(declare-fun bs!1401912 () Bool)

(assert (= bs!1401912 (and d!1857341 d!1856817)))

(assert (=> bs!1401912 (= lambda!323066 lambda!323024)))

(declare-fun bs!1401913 () Bool)

(assert (= bs!1401913 (and d!1857341 d!1856951)))

(assert (=> bs!1401913 (= lambda!323066 lambda!323038)))

(declare-fun bs!1401914 () Bool)

(assert (= bs!1401914 (and d!1857341 d!1857207)))

(assert (=> bs!1401914 (= lambda!323066 lambda!323059)))

(declare-fun bs!1401915 () Bool)

(assert (= bs!1401915 (and d!1857341 d!1857237)))

(assert (=> bs!1401915 (= lambda!323066 lambda!323062)))

(declare-fun bs!1401916 () Bool)

(assert (= bs!1401916 (and d!1857341 d!1857219)))

(assert (=> bs!1401916 (= lambda!323066 lambda!323061)))

(declare-fun lt!2310103 () List!64212)

(assert (=> d!1857341 (forall!15054 lt!2310103 lambda!323066)))

(declare-fun e!3625745 () List!64212)

(assert (=> d!1857341 (= lt!2310103 e!3625745)))

(declare-fun c!1052713 () Bool)

(assert (=> d!1857341 (= c!1052713 ((_ is Cons!64089) (t!377604 (t!377604 zl!343))))))

(assert (=> d!1857341 (= (unfocusZipperList!1392 (t!377604 (t!377604 zl!343))) lt!2310103)))

(declare-fun b!5922631 () Bool)

(assert (=> b!5922631 (= e!3625745 (Cons!64088 (generalisedConcat!1568 (exprs!5855 (h!70537 (t!377604 (t!377604 zl!343))))) (unfocusZipperList!1392 (t!377604 (t!377604 (t!377604 zl!343))))))))

(declare-fun b!5922632 () Bool)

(assert (=> b!5922632 (= e!3625745 Nil!64088)))

(assert (= (and d!1857341 c!1052713) b!5922631))

(assert (= (and d!1857341 (not c!1052713)) b!5922632))

(declare-fun m!6818248 () Bool)

(assert (=> d!1857341 m!6818248))

(declare-fun m!6818250 () Bool)

(assert (=> b!5922631 m!6818250))

(declare-fun m!6818252 () Bool)

(assert (=> b!5922631 m!6818252))

(assert (=> b!5921285 d!1857341))

(declare-fun call!469751 () (InoxSet Context!10710))

(declare-fun e!3625748 () (InoxSet Context!10710))

(declare-fun b!5922633 () Bool)

(assert (=> b!5922633 (= e!3625748 ((_ map or) call!469751 (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))) (h!70538 s!2326))))))

(declare-fun b!5922634 () Bool)

(declare-fun e!3625746 () Bool)

(assert (=> b!5922634 (= e!3625746 (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))))))

(declare-fun bm!469746 () Bool)

(assert (=> bm!469746 (= call!469751 (derivationStepZipperDown!1221 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))) (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343)))))))))) (h!70538 s!2326)))))

(declare-fun d!1857343 () Bool)

(declare-fun c!1052715 () Bool)

(assert (=> d!1857343 (= c!1052715 e!3625746)))

(declare-fun res!2482546 () Bool)

(assert (=> d!1857343 (=> (not res!2482546) (not e!3625746))))

(assert (=> d!1857343 (= res!2482546 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))))

(assert (=> d!1857343 (= (derivationStepZipperUp!1147 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))) (h!70538 s!2326)) e!3625748)))

(declare-fun b!5922635 () Bool)

(declare-fun e!3625747 () (InoxSet Context!10710))

(assert (=> b!5922635 (= e!3625747 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922636 () Bool)

(assert (=> b!5922636 (= e!3625748 e!3625747)))

(declare-fun c!1052714 () Bool)

(assert (=> b!5922636 (= c!1052714 ((_ is Cons!64088) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (h!70537 zl!343))))))))))))

(declare-fun b!5922637 () Bool)

(assert (=> b!5922637 (= e!3625747 call!469751)))

(assert (= (and d!1857343 res!2482546) b!5922634))

(assert (= (and d!1857343 c!1052715) b!5922633))

(assert (= (and d!1857343 (not c!1052715)) b!5922636))

(assert (= (and b!5922636 c!1052714) b!5922637))

(assert (= (and b!5922636 (not c!1052714)) b!5922635))

(assert (= (or b!5922633 b!5922637) bm!469746))

(declare-fun m!6818254 () Bool)

(assert (=> b!5922633 m!6818254))

(declare-fun m!6818256 () Bool)

(assert (=> b!5922634 m!6818256))

(declare-fun m!6818258 () Bool)

(assert (=> bm!469746 m!6818258))

(assert (=> b!5921149 d!1857343))

(declare-fun d!1857345 () Bool)

(assert (not d!1857345))

(assert (=> b!5921198 d!1857345))

(declare-fun d!1857347 () Bool)

(assert (not d!1857347))

(assert (=> b!5921380 d!1857347))

(declare-fun d!1857349 () Bool)

(assert (not d!1857349))

(assert (=> b!5921380 d!1857349))

(assert (=> b!5921380 d!1857089))

(assert (=> b!5921380 d!1857157))

(assert (=> b!5921531 d!1857105))

(assert (=> b!5921531 d!1857107))

(declare-fun d!1857351 () Bool)

(assert (=> d!1857351 (= (isEmpty!35946 (tail!11567 (t!377603 (unfocusZipperList!1392 zl!343)))) ((_ is Nil!64088) (tail!11567 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(assert (=> b!5921480 d!1857351))

(declare-fun d!1857353 () Bool)

(assert (=> d!1857353 (= (tail!11567 (t!377603 (unfocusZipperList!1392 zl!343))) (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))))))

(assert (=> b!5921480 d!1857353))

(declare-fun d!1857355 () Bool)

(declare-fun res!2482551 () Bool)

(declare-fun e!3625754 () Bool)

(assert (=> d!1857355 (=> res!2482551 e!3625754)))

(assert (=> d!1857355 (= res!2482551 ((_ is ElementMatch!15971) lt!2310048))))

(assert (=> d!1857355 (= (validRegex!7707 lt!2310048) e!3625754)))

(declare-fun b!5922638 () Bool)

(declare-fun e!3625755 () Bool)

(declare-fun e!3625753 () Bool)

(assert (=> b!5922638 (= e!3625755 e!3625753)))

(declare-fun res!2482548 () Bool)

(assert (=> b!5922638 (= res!2482548 (not (nullable!5966 (reg!16300 lt!2310048))))))

(assert (=> b!5922638 (=> (not res!2482548) (not e!3625753))))

(declare-fun bm!469747 () Bool)

(declare-fun call!469754 () Bool)

(declare-fun c!1052716 () Bool)

(assert (=> bm!469747 (= call!469754 (validRegex!7707 (ite c!1052716 (regTwo!32455 lt!2310048) (regTwo!32454 lt!2310048))))))

(declare-fun b!5922639 () Bool)

(declare-fun res!2482550 () Bool)

(declare-fun e!3625750 () Bool)

(assert (=> b!5922639 (=> res!2482550 e!3625750)))

(assert (=> b!5922639 (= res!2482550 (not ((_ is Concat!24816) lt!2310048)))))

(declare-fun e!3625749 () Bool)

(assert (=> b!5922639 (= e!3625749 e!3625750)))

(declare-fun b!5922640 () Bool)

(declare-fun res!2482547 () Bool)

(declare-fun e!3625751 () Bool)

(assert (=> b!5922640 (=> (not res!2482547) (not e!3625751))))

(declare-fun call!469753 () Bool)

(assert (=> b!5922640 (= res!2482547 call!469753)))

(assert (=> b!5922640 (= e!3625749 e!3625751)))

(declare-fun bm!469748 () Bool)

(declare-fun call!469752 () Bool)

(assert (=> bm!469748 (= call!469753 call!469752)))

(declare-fun b!5922641 () Bool)

(assert (=> b!5922641 (= e!3625753 call!469752)))

(declare-fun b!5922642 () Bool)

(declare-fun e!3625752 () Bool)

(assert (=> b!5922642 (= e!3625752 call!469754)))

(declare-fun b!5922643 () Bool)

(assert (=> b!5922643 (= e!3625750 e!3625752)))

(declare-fun res!2482549 () Bool)

(assert (=> b!5922643 (=> (not res!2482549) (not e!3625752))))

(assert (=> b!5922643 (= res!2482549 call!469753)))

(declare-fun b!5922644 () Bool)

(assert (=> b!5922644 (= e!3625755 e!3625749)))

(assert (=> b!5922644 (= c!1052716 ((_ is Union!15971) lt!2310048))))

(declare-fun b!5922645 () Bool)

(assert (=> b!5922645 (= e!3625751 call!469754)))

(declare-fun bm!469749 () Bool)

(declare-fun c!1052717 () Bool)

(assert (=> bm!469749 (= call!469752 (validRegex!7707 (ite c!1052717 (reg!16300 lt!2310048) (ite c!1052716 (regOne!32455 lt!2310048) (regOne!32454 lt!2310048)))))))

(declare-fun b!5922646 () Bool)

(assert (=> b!5922646 (= e!3625754 e!3625755)))

(assert (=> b!5922646 (= c!1052717 ((_ is Star!15971) lt!2310048))))

(assert (= (and d!1857355 (not res!2482551)) b!5922646))

(assert (= (and b!5922646 c!1052717) b!5922638))

(assert (= (and b!5922646 (not c!1052717)) b!5922644))

(assert (= (and b!5922638 res!2482548) b!5922641))

(assert (= (and b!5922644 c!1052716) b!5922640))

(assert (= (and b!5922644 (not c!1052716)) b!5922639))

(assert (= (and b!5922640 res!2482547) b!5922645))

(assert (= (and b!5922639 (not res!2482550)) b!5922643))

(assert (= (and b!5922643 res!2482549) b!5922642))

(assert (= (or b!5922645 b!5922642) bm!469747))

(assert (= (or b!5922640 b!5922643) bm!469748))

(assert (= (or b!5922641 bm!469748) bm!469749))

(declare-fun m!6818260 () Bool)

(assert (=> b!5922638 m!6818260))

(declare-fun m!6818262 () Bool)

(assert (=> bm!469747 m!6818262))

(declare-fun m!6818264 () Bool)

(assert (=> bm!469749 m!6818264))

(assert (=> d!1856887 d!1857355))

(declare-fun d!1857357 () Bool)

(declare-fun res!2482552 () Bool)

(declare-fun e!3625756 () Bool)

(assert (=> d!1857357 (=> res!2482552 e!3625756)))

(assert (=> d!1857357 (= res!2482552 ((_ is Nil!64088) (t!377603 (unfocusZipperList!1392 zl!343))))))

(assert (=> d!1857357 (= (forall!15054 (t!377603 (unfocusZipperList!1392 zl!343)) lambda!323031) e!3625756)))

(declare-fun b!5922647 () Bool)

(declare-fun e!3625757 () Bool)

(assert (=> b!5922647 (= e!3625756 e!3625757)))

(declare-fun res!2482553 () Bool)

(assert (=> b!5922647 (=> (not res!2482553) (not e!3625757))))

(assert (=> b!5922647 (= res!2482553 (dynLambda!25057 lambda!323031 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5922648 () Bool)

(assert (=> b!5922648 (= e!3625757 (forall!15054 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))) lambda!323031))))

(assert (= (and d!1857357 (not res!2482552)) b!5922647))

(assert (= (and b!5922647 res!2482553) b!5922648))

(declare-fun b_lambda!222455 () Bool)

(assert (=> (not b_lambda!222455) (not b!5922647)))

(declare-fun m!6818266 () Bool)

(assert (=> b!5922647 m!6818266))

(declare-fun m!6818268 () Bool)

(assert (=> b!5922648 m!6818268))

(assert (=> d!1856887 d!1857357))

(declare-fun d!1857359 () Bool)

(declare-fun res!2482558 () Bool)

(declare-fun e!3625763 () Bool)

(assert (=> d!1857359 (=> res!2482558 e!3625763)))

(assert (=> d!1857359 (= res!2482558 ((_ is ElementMatch!15971) (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))))))

(assert (=> d!1857359 (= (validRegex!7707 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))) e!3625763)))

(declare-fun b!5922649 () Bool)

(declare-fun e!3625764 () Bool)

(declare-fun e!3625762 () Bool)

(assert (=> b!5922649 (= e!3625764 e!3625762)))

(declare-fun res!2482555 () Bool)

(assert (=> b!5922649 (= res!2482555 (not (nullable!5966 (reg!16300 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))))))))

(assert (=> b!5922649 (=> (not res!2482555) (not e!3625762))))

(declare-fun c!1052718 () Bool)

(declare-fun bm!469750 () Bool)

(declare-fun call!469757 () Bool)

(assert (=> bm!469750 (= call!469757 (validRegex!7707 (ite c!1052718 (regTwo!32455 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))) (regTwo!32454 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))))))))

(declare-fun b!5922650 () Bool)

(declare-fun res!2482557 () Bool)

(declare-fun e!3625759 () Bool)

(assert (=> b!5922650 (=> res!2482557 e!3625759)))

(assert (=> b!5922650 (= res!2482557 (not ((_ is Concat!24816) (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018)))))))

(declare-fun e!3625758 () Bool)

(assert (=> b!5922650 (= e!3625758 e!3625759)))

(declare-fun b!5922651 () Bool)

(declare-fun res!2482554 () Bool)

(declare-fun e!3625760 () Bool)

(assert (=> b!5922651 (=> (not res!2482554) (not e!3625760))))

(declare-fun call!469756 () Bool)

(assert (=> b!5922651 (= res!2482554 call!469756)))

(assert (=> b!5922651 (= e!3625758 e!3625760)))

(declare-fun bm!469751 () Bool)

(declare-fun call!469755 () Bool)

(assert (=> bm!469751 (= call!469756 call!469755)))

(declare-fun b!5922652 () Bool)

(assert (=> b!5922652 (= e!3625762 call!469755)))

(declare-fun b!5922653 () Bool)

(declare-fun e!3625761 () Bool)

(assert (=> b!5922653 (= e!3625761 call!469757)))

(declare-fun b!5922654 () Bool)

(assert (=> b!5922654 (= e!3625759 e!3625761)))

(declare-fun res!2482556 () Bool)

(assert (=> b!5922654 (=> (not res!2482556) (not e!3625761))))

(assert (=> b!5922654 (= res!2482556 call!469756)))

(declare-fun b!5922655 () Bool)

(assert (=> b!5922655 (= e!3625764 e!3625758)))

(assert (=> b!5922655 (= c!1052718 ((_ is Union!15971) (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))))))

(declare-fun b!5922656 () Bool)

(assert (=> b!5922656 (= e!3625760 call!469757)))

(declare-fun bm!469752 () Bool)

(declare-fun c!1052719 () Bool)

(assert (=> bm!469752 (= call!469755 (validRegex!7707 (ite c!1052719 (reg!16300 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))) (ite c!1052718 (regOne!32455 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))) (regOne!32454 (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018)))))))))

(declare-fun b!5922657 () Bool)

(assert (=> b!5922657 (= e!3625763 e!3625764)))

(assert (=> b!5922657 (= c!1052719 ((_ is Star!15971) (ite c!1052464 (regTwo!32455 lt!2310018) (regTwo!32454 lt!2310018))))))

(assert (= (and d!1857359 (not res!2482558)) b!5922657))

(assert (= (and b!5922657 c!1052719) b!5922649))

(assert (= (and b!5922657 (not c!1052719)) b!5922655))

(assert (= (and b!5922649 res!2482555) b!5922652))

(assert (= (and b!5922655 c!1052718) b!5922651))

(assert (= (and b!5922655 (not c!1052718)) b!5922650))

(assert (= (and b!5922651 res!2482554) b!5922656))

(assert (= (and b!5922650 (not res!2482557)) b!5922654))

(assert (= (and b!5922654 res!2482556) b!5922653))

(assert (= (or b!5922656 b!5922653) bm!469750))

(assert (= (or b!5922651 b!5922654) bm!469751))

(assert (= (or b!5922652 bm!469751) bm!469752))

(declare-fun m!6818270 () Bool)

(assert (=> b!5922649 m!6818270))

(declare-fun m!6818272 () Bool)

(assert (=> bm!469750 m!6818272))

(declare-fun m!6818274 () Bool)

(assert (=> bm!469752 m!6818274))

(assert (=> bm!469548 d!1857359))

(declare-fun d!1857361 () Bool)

(assert (=> d!1857361 (= (nullable!5966 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))) (nullableFct!1937 (regOne!32454 (ite c!1052304 (regOne!32455 r!7292) (ite c!1052303 (regTwo!32454 r!7292) (ite c!1052302 (regOne!32454 r!7292) (reg!16300 r!7292)))))))))

(declare-fun bs!1401917 () Bool)

(assert (= bs!1401917 d!1857361))

(declare-fun m!6818276 () Bool)

(assert (=> bs!1401917 m!6818276))

(assert (=> b!5921576 d!1857361))

(declare-fun d!1857363 () Bool)

(declare-fun res!2482559 () Bool)

(declare-fun e!3625765 () Bool)

(assert (=> d!1857363 (=> res!2482559 e!3625765)))

(assert (=> d!1857363 (= res!2482559 ((_ is Nil!64088) (exprs!5855 (h!70537 (t!377604 zl!343)))))))

(assert (=> d!1857363 (= (forall!15054 (exprs!5855 (h!70537 (t!377604 zl!343))) lambda!323038) e!3625765)))

(declare-fun b!5922658 () Bool)

(declare-fun e!3625766 () Bool)

(assert (=> b!5922658 (= e!3625765 e!3625766)))

(declare-fun res!2482560 () Bool)

(assert (=> b!5922658 (=> (not res!2482560) (not e!3625766))))

(assert (=> b!5922658 (= res!2482560 (dynLambda!25057 lambda!323038 (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343))))))))

(declare-fun b!5922659 () Bool)

(assert (=> b!5922659 (= e!3625766 (forall!15054 (t!377603 (exprs!5855 (h!70537 (t!377604 zl!343)))) lambda!323038))))

(assert (= (and d!1857363 (not res!2482559)) b!5922658))

(assert (= (and b!5922658 res!2482560) b!5922659))

(declare-fun b_lambda!222457 () Bool)

(assert (=> (not b_lambda!222457) (not b!5922658)))

(declare-fun m!6818278 () Bool)

(assert (=> b!5922658 m!6818278))

(declare-fun m!6818280 () Bool)

(assert (=> b!5922659 m!6818280))

(assert (=> d!1856951 d!1857363))

(declare-fun d!1857365 () Bool)

(declare-fun res!2482561 () Bool)

(declare-fun e!3625767 () Bool)

(assert (=> d!1857365 (=> res!2482561 e!3625767)))

(assert (=> d!1857365 (= res!2482561 ((_ is Nil!64088) (t!377603 lt!2310021)))))

(assert (=> d!1857365 (= (forall!15054 (t!377603 lt!2310021) lambda!323014) e!3625767)))

(declare-fun b!5922660 () Bool)

(declare-fun e!3625768 () Bool)

(assert (=> b!5922660 (= e!3625767 e!3625768)))

(declare-fun res!2482562 () Bool)

(assert (=> b!5922660 (=> (not res!2482562) (not e!3625768))))

(assert (=> b!5922660 (= res!2482562 (dynLambda!25057 lambda!323014 (h!70536 (t!377603 lt!2310021))))))

(declare-fun b!5922661 () Bool)

(assert (=> b!5922661 (= e!3625768 (forall!15054 (t!377603 (t!377603 lt!2310021)) lambda!323014))))

(assert (= (and d!1857365 (not res!2482561)) b!5922660))

(assert (= (and b!5922660 res!2482562) b!5922661))

(declare-fun b_lambda!222459 () Bool)

(assert (=> (not b_lambda!222459) (not b!5922660)))

(declare-fun m!6818282 () Bool)

(assert (=> b!5922660 m!6818282))

(declare-fun m!6818284 () Bool)

(assert (=> b!5922661 m!6818284))

(assert (=> b!5921292 d!1857365))

(declare-fun b!5922662 () Bool)

(declare-fun e!3625770 () Bool)

(declare-fun lt!2310104 () Bool)

(declare-fun call!469758 () Bool)

(assert (=> b!5922662 (= e!3625770 (= lt!2310104 call!469758))))

(declare-fun b!5922663 () Bool)

(declare-fun res!2482570 () Bool)

(declare-fun e!3625772 () Bool)

(assert (=> b!5922663 (=> res!2482570 e!3625772)))

(assert (=> b!5922663 (= res!2482570 (not ((_ is ElementMatch!15971) (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326)))))))

(declare-fun e!3625775 () Bool)

(assert (=> b!5922663 (= e!3625775 e!3625772)))

(declare-fun b!5922664 () Bool)

(declare-fun e!3625774 () Bool)

(declare-fun e!3625769 () Bool)

(assert (=> b!5922664 (= e!3625774 e!3625769)))

(declare-fun res!2482569 () Bool)

(assert (=> b!5922664 (=> res!2482569 e!3625769)))

(assert (=> b!5922664 (= res!2482569 call!469758)))

(declare-fun bm!469753 () Bool)

(assert (=> bm!469753 (= call!469758 (isEmpty!35950 (tail!11569 s!2326)))))

(declare-fun b!5922665 () Bool)

(assert (=> b!5922665 (= e!3625769 (not (= (head!12484 (tail!11569 s!2326)) (c!1052179 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326))))))))

(declare-fun b!5922667 () Bool)

(assert (=> b!5922667 (= e!3625770 e!3625775)))

(declare-fun c!1052721 () Bool)

(assert (=> b!5922667 (= c!1052721 ((_ is EmptyLang!15971) (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326))))))

(declare-fun b!5922668 () Bool)

(declare-fun res!2482567 () Bool)

(assert (=> b!5922668 (=> res!2482567 e!3625772)))

(declare-fun e!3625771 () Bool)

(assert (=> b!5922668 (= res!2482567 e!3625771)))

(declare-fun res!2482566 () Bool)

(assert (=> b!5922668 (=> (not res!2482566) (not e!3625771))))

(assert (=> b!5922668 (= res!2482566 lt!2310104)))

(declare-fun b!5922669 () Bool)

(assert (=> b!5922669 (= e!3625775 (not lt!2310104))))

(declare-fun b!5922670 () Bool)

(declare-fun res!2482565 () Bool)

(assert (=> b!5922670 (=> (not res!2482565) (not e!3625771))))

(assert (=> b!5922670 (= res!2482565 (isEmpty!35950 (tail!11569 (tail!11569 s!2326))))))

(declare-fun b!5922671 () Bool)

(assert (=> b!5922671 (= e!3625771 (= (head!12484 (tail!11569 s!2326)) (c!1052179 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326)))))))

(declare-fun b!5922672 () Bool)

(declare-fun e!3625773 () Bool)

(assert (=> b!5922672 (= e!3625773 (matchR!8154 (derivativeStep!4702 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326)) (head!12484 (tail!11569 s!2326))) (tail!11569 (tail!11569 s!2326))))))

(declare-fun b!5922673 () Bool)

(declare-fun res!2482564 () Bool)

(assert (=> b!5922673 (=> res!2482564 e!3625769)))

(assert (=> b!5922673 (= res!2482564 (not (isEmpty!35950 (tail!11569 (tail!11569 s!2326)))))))

(declare-fun b!5922666 () Bool)

(declare-fun res!2482563 () Bool)

(assert (=> b!5922666 (=> (not res!2482563) (not e!3625771))))

(assert (=> b!5922666 (= res!2482563 (not call!469758))))

(declare-fun d!1857367 () Bool)

(assert (=> d!1857367 e!3625770))

(declare-fun c!1052720 () Bool)

(assert (=> d!1857367 (= c!1052720 ((_ is EmptyExpr!15971) (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326))))))

(assert (=> d!1857367 (= lt!2310104 e!3625773)))

(declare-fun c!1052722 () Bool)

(assert (=> d!1857367 (= c!1052722 (isEmpty!35950 (tail!11569 s!2326)))))

(assert (=> d!1857367 (validRegex!7707 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326)))))

(assert (=> d!1857367 (= (matchR!8154 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326)) (tail!11569 s!2326)) lt!2310104)))

(declare-fun b!5922674 () Bool)

(assert (=> b!5922674 (= e!3625773 (nullable!5966 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326))))))

(declare-fun b!5922675 () Bool)

(assert (=> b!5922675 (= e!3625772 e!3625774)))

(declare-fun res!2482568 () Bool)

(assert (=> b!5922675 (=> (not res!2482568) (not e!3625774))))

(assert (=> b!5922675 (= res!2482568 (not lt!2310104))))

(assert (= (and d!1857367 c!1052722) b!5922674))

(assert (= (and d!1857367 (not c!1052722)) b!5922672))

(assert (= (and d!1857367 c!1052720) b!5922662))

(assert (= (and d!1857367 (not c!1052720)) b!5922667))

(assert (= (and b!5922667 c!1052721) b!5922669))

(assert (= (and b!5922667 (not c!1052721)) b!5922663))

(assert (= (and b!5922663 (not res!2482570)) b!5922668))

(assert (= (and b!5922668 res!2482566) b!5922666))

(assert (= (and b!5922666 res!2482563) b!5922670))

(assert (= (and b!5922670 res!2482565) b!5922671))

(assert (= (and b!5922668 (not res!2482567)) b!5922675))

(assert (= (and b!5922675 res!2482568) b!5922664))

(assert (= (and b!5922664 (not res!2482569)) b!5922673))

(assert (= (and b!5922673 (not res!2482564)) b!5922665))

(assert (= (or b!5922662 b!5922664 b!5922666) bm!469753))

(assert (=> b!5922670 m!6816878))

(assert (=> b!5922670 m!6817194))

(assert (=> b!5922670 m!6817194))

(assert (=> b!5922670 m!6817196))

(assert (=> b!5922672 m!6816878))

(assert (=> b!5922672 m!6817198))

(assert (=> b!5922672 m!6817334))

(assert (=> b!5922672 m!6817198))

(declare-fun m!6818286 () Bool)

(assert (=> b!5922672 m!6818286))

(assert (=> b!5922672 m!6816878))

(assert (=> b!5922672 m!6817194))

(assert (=> b!5922672 m!6818286))

(assert (=> b!5922672 m!6817194))

(declare-fun m!6818288 () Bool)

(assert (=> b!5922672 m!6818288))

(assert (=> d!1857367 m!6816878))

(assert (=> d!1857367 m!6816880))

(assert (=> d!1857367 m!6817334))

(declare-fun m!6818290 () Bool)

(assert (=> d!1857367 m!6818290))

(assert (=> b!5922671 m!6816878))

(assert (=> b!5922671 m!6817198))

(assert (=> bm!469753 m!6816878))

(assert (=> bm!469753 m!6816880))

(assert (=> b!5922673 m!6816878))

(assert (=> b!5922673 m!6817194))

(assert (=> b!5922673 m!6817194))

(assert (=> b!5922673 m!6817196))

(assert (=> b!5922665 m!6816878))

(assert (=> b!5922665 m!6817198))

(assert (=> b!5922674 m!6817334))

(declare-fun m!6818292 () Bool)

(assert (=> b!5922674 m!6818292))

(assert (=> b!5921558 d!1857367))

(declare-fun b!5922676 () Bool)

(declare-fun e!3625777 () Regex!15971)

(assert (=> b!5922676 (= e!3625777 (ite (= (head!12484 s!2326) (c!1052179 (regTwo!32454 r!7292))) EmptyExpr!15971 EmptyLang!15971))))

(declare-fun b!5922677 () Bool)

(declare-fun e!3625780 () Regex!15971)

(assert (=> b!5922677 (= e!3625780 e!3625777)))

(declare-fun c!1052723 () Bool)

(assert (=> b!5922677 (= c!1052723 ((_ is ElementMatch!15971) (regTwo!32454 r!7292)))))

(declare-fun b!5922678 () Bool)

(declare-fun e!3625776 () Regex!15971)

(declare-fun e!3625778 () Regex!15971)

(assert (=> b!5922678 (= e!3625776 e!3625778)))

(declare-fun c!1052726 () Bool)

(assert (=> b!5922678 (= c!1052726 ((_ is Star!15971) (regTwo!32454 r!7292)))))

(declare-fun bm!469754 () Bool)

(declare-fun call!469762 () Regex!15971)

(declare-fun c!1052724 () Bool)

(assert (=> bm!469754 (= call!469762 (derivativeStep!4702 (ite c!1052724 (regTwo!32455 (regTwo!32454 r!7292)) (ite c!1052726 (reg!16300 (regTwo!32454 r!7292)) (regOne!32454 (regTwo!32454 r!7292)))) (head!12484 s!2326)))))

(declare-fun b!5922679 () Bool)

(assert (=> b!5922679 (= e!3625780 EmptyLang!15971)))

(declare-fun c!1052725 () Bool)

(declare-fun bm!469755 () Bool)

(declare-fun call!469759 () Regex!15971)

(assert (=> bm!469755 (= call!469759 (derivativeStep!4702 (ite c!1052724 (regOne!32455 (regTwo!32454 r!7292)) (ite c!1052725 (regTwo!32454 (regTwo!32454 r!7292)) (regOne!32454 (regTwo!32454 r!7292)))) (head!12484 s!2326)))))

(declare-fun b!5922680 () Bool)

(assert (=> b!5922680 (= c!1052725 (nullable!5966 (regOne!32454 (regTwo!32454 r!7292))))))

(declare-fun e!3625779 () Regex!15971)

(assert (=> b!5922680 (= e!3625778 e!3625779)))

(declare-fun bm!469756 () Bool)

(declare-fun call!469760 () Regex!15971)

(assert (=> bm!469756 (= call!469760 call!469762)))

(declare-fun b!5922681 () Bool)

(assert (=> b!5922681 (= e!3625776 (Union!15971 call!469759 call!469762))))

(declare-fun bm!469757 () Bool)

(declare-fun call!469761 () Regex!15971)

(assert (=> bm!469757 (= call!469761 call!469759)))

(declare-fun b!5922682 () Bool)

(assert (=> b!5922682 (= e!3625779 (Union!15971 (Concat!24816 call!469760 (regTwo!32454 (regTwo!32454 r!7292))) call!469761))))

(declare-fun b!5922684 () Bool)

(assert (=> b!5922684 (= e!3625778 (Concat!24816 call!469760 (regTwo!32454 r!7292)))))

(declare-fun b!5922685 () Bool)

(assert (=> b!5922685 (= c!1052724 ((_ is Union!15971) (regTwo!32454 r!7292)))))

(assert (=> b!5922685 (= e!3625777 e!3625776)))

(declare-fun b!5922683 () Bool)

(assert (=> b!5922683 (= e!3625779 (Union!15971 (Concat!24816 call!469761 (regTwo!32454 (regTwo!32454 r!7292))) EmptyLang!15971))))

(declare-fun d!1857369 () Bool)

(declare-fun lt!2310105 () Regex!15971)

(assert (=> d!1857369 (validRegex!7707 lt!2310105)))

(assert (=> d!1857369 (= lt!2310105 e!3625780)))

(declare-fun c!1052727 () Bool)

(assert (=> d!1857369 (= c!1052727 (or ((_ is EmptyExpr!15971) (regTwo!32454 r!7292)) ((_ is EmptyLang!15971) (regTwo!32454 r!7292))))))

(assert (=> d!1857369 (validRegex!7707 (regTwo!32454 r!7292))))

(assert (=> d!1857369 (= (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 s!2326)) lt!2310105)))

(assert (= (and d!1857369 c!1052727) b!5922679))

(assert (= (and d!1857369 (not c!1052727)) b!5922677))

(assert (= (and b!5922677 c!1052723) b!5922676))

(assert (= (and b!5922677 (not c!1052723)) b!5922685))

(assert (= (and b!5922685 c!1052724) b!5922681))

(assert (= (and b!5922685 (not c!1052724)) b!5922678))

(assert (= (and b!5922678 c!1052726) b!5922684))

(assert (= (and b!5922678 (not c!1052726)) b!5922680))

(assert (= (and b!5922680 c!1052725) b!5922682))

(assert (= (and b!5922680 (not c!1052725)) b!5922683))

(assert (= (or b!5922682 b!5922683) bm!469757))

(assert (= (or b!5922684 b!5922682) bm!469756))

(assert (= (or b!5922681 bm!469756) bm!469754))

(assert (= (or b!5922681 bm!469757) bm!469755))

(assert (=> bm!469754 m!6816882))

(declare-fun m!6818294 () Bool)

(assert (=> bm!469754 m!6818294))

(assert (=> bm!469755 m!6816882))

(declare-fun m!6818296 () Bool)

(assert (=> bm!469755 m!6818296))

(declare-fun m!6818298 () Bool)

(assert (=> b!5922680 m!6818298))

(declare-fun m!6818300 () Bool)

(assert (=> d!1857369 m!6818300))

(assert (=> d!1857369 m!6816958))

(assert (=> b!5921558 d!1857369))

(assert (=> b!5921558 d!1856871))

(assert (=> b!5921558 d!1856851))

(declare-fun d!1857371 () Bool)

(declare-fun res!2482575 () Bool)

(declare-fun e!3625786 () Bool)

(assert (=> d!1857371 (=> res!2482575 e!3625786)))

(assert (=> d!1857371 (= res!2482575 ((_ is ElementMatch!15971) (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))

(assert (=> d!1857371 (= (validRegex!7707 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))) e!3625786)))

(declare-fun b!5922686 () Bool)

(declare-fun e!3625787 () Bool)

(declare-fun e!3625785 () Bool)

(assert (=> b!5922686 (= e!3625787 e!3625785)))

(declare-fun res!2482572 () Bool)

(assert (=> b!5922686 (= res!2482572 (not (nullable!5966 (reg!16300 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))))

(assert (=> b!5922686 (=> (not res!2482572) (not e!3625785))))

(declare-fun call!469765 () Bool)

(declare-fun c!1052728 () Bool)

(declare-fun bm!469758 () Bool)

(assert (=> bm!469758 (= call!469765 (validRegex!7707 (ite c!1052728 (regTwo!32455 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))) (regTwo!32454 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))))

(declare-fun b!5922687 () Bool)

(declare-fun res!2482574 () Bool)

(declare-fun e!3625782 () Bool)

(assert (=> b!5922687 (=> res!2482574 e!3625782)))

(assert (=> b!5922687 (= res!2482574 (not ((_ is Concat!24816) (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))

(declare-fun e!3625781 () Bool)

(assert (=> b!5922687 (= e!3625781 e!3625782)))

(declare-fun b!5922688 () Bool)

(declare-fun res!2482571 () Bool)

(declare-fun e!3625783 () Bool)

(assert (=> b!5922688 (=> (not res!2482571) (not e!3625783))))

(declare-fun call!469764 () Bool)

(assert (=> b!5922688 (= res!2482571 call!469764)))

(assert (=> b!5922688 (= e!3625781 e!3625783)))

(declare-fun bm!469759 () Bool)

(declare-fun call!469763 () Bool)

(assert (=> bm!469759 (= call!469764 call!469763)))

(declare-fun b!5922689 () Bool)

(assert (=> b!5922689 (= e!3625785 call!469763)))

(declare-fun b!5922690 () Bool)

(declare-fun e!3625784 () Bool)

(assert (=> b!5922690 (= e!3625784 call!469765)))

(declare-fun b!5922691 () Bool)

(assert (=> b!5922691 (= e!3625782 e!3625784)))

(declare-fun res!2482573 () Bool)

(assert (=> b!5922691 (=> (not res!2482573) (not e!3625784))))

(assert (=> b!5922691 (= res!2482573 call!469764)))

(declare-fun b!5922692 () Bool)

(assert (=> b!5922692 (= e!3625787 e!3625781)))

(assert (=> b!5922692 (= c!1052728 ((_ is Union!15971) (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))

(declare-fun b!5922693 () Bool)

(assert (=> b!5922693 (= e!3625783 call!469765)))

(declare-fun c!1052729 () Bool)

(declare-fun bm!469760 () Bool)

(assert (=> bm!469760 (= call!469763 (validRegex!7707 (ite c!1052729 (reg!16300 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))) (ite c!1052728 (regOne!32455 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))) (regOne!32454 (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292))))))))))))

(declare-fun b!5922694 () Bool)

(assert (=> b!5922694 (= e!3625786 e!3625787)))

(assert (=> b!5922694 (= c!1052729 ((_ is Star!15971) (ite c!1052368 (regTwo!32455 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052334 (reg!16300 r!7292) (ite c!1052333 (regOne!32455 r!7292) (regOne!32454 r!7292)))))))))

(assert (= (and d!1857371 (not res!2482575)) b!5922694))

(assert (= (and b!5922694 c!1052729) b!5922686))

(assert (= (and b!5922694 (not c!1052729)) b!5922692))

(assert (= (and b!5922686 res!2482572) b!5922689))

(assert (= (and b!5922692 c!1052728) b!5922688))

(assert (= (and b!5922692 (not c!1052728)) b!5922687))

(assert (= (and b!5922688 res!2482571) b!5922693))

(assert (= (and b!5922687 (not res!2482574)) b!5922691))

(assert (= (and b!5922691 res!2482573) b!5922690))

(assert (= (or b!5922693 b!5922690) bm!469758))

(assert (= (or b!5922688 b!5922691) bm!469759))

(assert (= (or b!5922689 bm!469759) bm!469760))

(declare-fun m!6818302 () Bool)

(assert (=> b!5922686 m!6818302))

(declare-fun m!6818304 () Bool)

(assert (=> bm!469758 m!6818304))

(declare-fun m!6818306 () Bool)

(assert (=> bm!469760 m!6818306))

(assert (=> bm!469481 d!1857371))

(declare-fun b!5922695 () Bool)

(declare-fun e!3625789 () Bool)

(declare-fun lt!2310106 () Bool)

(declare-fun call!469766 () Bool)

(assert (=> b!5922695 (= e!3625789 (= lt!2310106 call!469766))))

(declare-fun b!5922696 () Bool)

(declare-fun res!2482583 () Bool)

(declare-fun e!3625791 () Bool)

(assert (=> b!5922696 (=> res!2482583 e!3625791)))

(assert (=> b!5922696 (= res!2482583 (not ((_ is ElementMatch!15971) (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996)))))))))

(declare-fun e!3625794 () Bool)

(assert (=> b!5922696 (= e!3625794 e!3625791)))

(declare-fun b!5922697 () Bool)

(declare-fun e!3625793 () Bool)

(declare-fun e!3625788 () Bool)

(assert (=> b!5922697 (= e!3625793 e!3625788)))

(declare-fun res!2482582 () Bool)

(assert (=> b!5922697 (=> res!2482582 e!3625788)))

(assert (=> b!5922697 (= res!2482582 call!469766)))

(declare-fun bm!469761 () Bool)

(assert (=> bm!469761 (= call!469766 (isEmpty!35950 (tail!11569 (_2!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5922698 () Bool)

(assert (=> b!5922698 (= e!3625788 (not (= (head!12484 (tail!11569 (_2!36253 (get!22069 lt!2309996)))) (c!1052179 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996))))))))))

(declare-fun b!5922700 () Bool)

(assert (=> b!5922700 (= e!3625789 e!3625794)))

(declare-fun c!1052731 () Bool)

(assert (=> b!5922700 (= c!1052731 ((_ is EmptyLang!15971) (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922701 () Bool)

(declare-fun res!2482580 () Bool)

(assert (=> b!5922701 (=> res!2482580 e!3625791)))

(declare-fun e!3625790 () Bool)

(assert (=> b!5922701 (= res!2482580 e!3625790)))

(declare-fun res!2482579 () Bool)

(assert (=> b!5922701 (=> (not res!2482579) (not e!3625790))))

(assert (=> b!5922701 (= res!2482579 lt!2310106)))

(declare-fun b!5922702 () Bool)

(assert (=> b!5922702 (= e!3625794 (not lt!2310106))))

(declare-fun b!5922703 () Bool)

(declare-fun res!2482578 () Bool)

(assert (=> b!5922703 (=> (not res!2482578) (not e!3625790))))

(assert (=> b!5922703 (= res!2482578 (isEmpty!35950 (tail!11569 (tail!11569 (_2!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922704 () Bool)

(assert (=> b!5922704 (= e!3625790 (= (head!12484 (tail!11569 (_2!36253 (get!22069 lt!2309996)))) (c!1052179 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996)))))))))

(declare-fun b!5922705 () Bool)

(declare-fun e!3625792 () Bool)

(assert (=> b!5922705 (= e!3625792 (matchR!8154 (derivativeStep!4702 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996)))) (head!12484 (tail!11569 (_2!36253 (get!22069 lt!2309996))))) (tail!11569 (tail!11569 (_2!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922706 () Bool)

(declare-fun res!2482577 () Bool)

(assert (=> b!5922706 (=> res!2482577 e!3625788)))

(assert (=> b!5922706 (= res!2482577 (not (isEmpty!35950 (tail!11569 (tail!11569 (_2!36253 (get!22069 lt!2309996)))))))))

(declare-fun b!5922699 () Bool)

(declare-fun res!2482576 () Bool)

(assert (=> b!5922699 (=> (not res!2482576) (not e!3625790))))

(assert (=> b!5922699 (= res!2482576 (not call!469766))))

(declare-fun d!1857373 () Bool)

(assert (=> d!1857373 e!3625789))

(declare-fun c!1052730 () Bool)

(assert (=> d!1857373 (= c!1052730 ((_ is EmptyExpr!15971) (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996))))))))

(assert (=> d!1857373 (= lt!2310106 e!3625792)))

(declare-fun c!1052732 () Bool)

(assert (=> d!1857373 (= c!1052732 (isEmpty!35950 (tail!11569 (_2!36253 (get!22069 lt!2309996)))))))

(assert (=> d!1857373 (validRegex!7707 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996)))))))

(assert (=> d!1857373 (= (matchR!8154 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996)))) (tail!11569 (_2!36253 (get!22069 lt!2309996)))) lt!2310106)))

(declare-fun b!5922707 () Bool)

(assert (=> b!5922707 (= e!3625792 (nullable!5966 (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922708 () Bool)

(assert (=> b!5922708 (= e!3625791 e!3625793)))

(declare-fun res!2482581 () Bool)

(assert (=> b!5922708 (=> (not res!2482581) (not e!3625793))))

(assert (=> b!5922708 (= res!2482581 (not lt!2310106))))

(assert (= (and d!1857373 c!1052732) b!5922707))

(assert (= (and d!1857373 (not c!1052732)) b!5922705))

(assert (= (and d!1857373 c!1052730) b!5922695))

(assert (= (and d!1857373 (not c!1052730)) b!5922700))

(assert (= (and b!5922700 c!1052731) b!5922702))

(assert (= (and b!5922700 (not c!1052731)) b!5922696))

(assert (= (and b!5922696 (not res!2482583)) b!5922701))

(assert (= (and b!5922701 res!2482579) b!5922699))

(assert (= (and b!5922699 res!2482576) b!5922703))

(assert (= (and b!5922703 res!2482578) b!5922704))

(assert (= (and b!5922701 (not res!2482580)) b!5922708))

(assert (= (and b!5922708 res!2482581) b!5922697))

(assert (= (and b!5922697 (not res!2482582)) b!5922706))

(assert (= (and b!5922706 (not res!2482577)) b!5922698))

(assert (= (or b!5922695 b!5922697 b!5922699) bm!469761))

(assert (=> b!5922703 m!6816946))

(declare-fun m!6818308 () Bool)

(assert (=> b!5922703 m!6818308))

(assert (=> b!5922703 m!6818308))

(declare-fun m!6818310 () Bool)

(assert (=> b!5922703 m!6818310))

(assert (=> b!5922705 m!6816946))

(declare-fun m!6818312 () Bool)

(assert (=> b!5922705 m!6818312))

(assert (=> b!5922705 m!6816952))

(assert (=> b!5922705 m!6818312))

(declare-fun m!6818314 () Bool)

(assert (=> b!5922705 m!6818314))

(assert (=> b!5922705 m!6816946))

(assert (=> b!5922705 m!6818308))

(assert (=> b!5922705 m!6818314))

(assert (=> b!5922705 m!6818308))

(declare-fun m!6818316 () Bool)

(assert (=> b!5922705 m!6818316))

(assert (=> d!1857373 m!6816946))

(assert (=> d!1857373 m!6816948))

(assert (=> d!1857373 m!6816952))

(declare-fun m!6818318 () Bool)

(assert (=> d!1857373 m!6818318))

(assert (=> b!5922704 m!6816946))

(assert (=> b!5922704 m!6818312))

(assert (=> bm!469761 m!6816946))

(assert (=> bm!469761 m!6816948))

(assert (=> b!5922706 m!6816946))

(assert (=> b!5922706 m!6818308))

(assert (=> b!5922706 m!6818308))

(assert (=> b!5922706 m!6818310))

(assert (=> b!5922698 m!6816946))

(assert (=> b!5922698 m!6818312))

(assert (=> b!5922707 m!6816952))

(declare-fun m!6818320 () Bool)

(assert (=> b!5922707 m!6818320))

(assert (=> b!5921175 d!1857373))

(declare-fun b!5922709 () Bool)

(declare-fun e!3625796 () Regex!15971)

(assert (=> b!5922709 (= e!3625796 (ite (= (head!12484 (_2!36253 (get!22069 lt!2309996))) (c!1052179 (regTwo!32454 r!7292))) EmptyExpr!15971 EmptyLang!15971))))

(declare-fun b!5922710 () Bool)

(declare-fun e!3625799 () Regex!15971)

(assert (=> b!5922710 (= e!3625799 e!3625796)))

(declare-fun c!1052733 () Bool)

(assert (=> b!5922710 (= c!1052733 ((_ is ElementMatch!15971) (regTwo!32454 r!7292)))))

(declare-fun b!5922711 () Bool)

(declare-fun e!3625795 () Regex!15971)

(declare-fun e!3625797 () Regex!15971)

(assert (=> b!5922711 (= e!3625795 e!3625797)))

(declare-fun c!1052736 () Bool)

(assert (=> b!5922711 (= c!1052736 ((_ is Star!15971) (regTwo!32454 r!7292)))))

(declare-fun call!469770 () Regex!15971)

(declare-fun c!1052734 () Bool)

(declare-fun bm!469762 () Bool)

(assert (=> bm!469762 (= call!469770 (derivativeStep!4702 (ite c!1052734 (regTwo!32455 (regTwo!32454 r!7292)) (ite c!1052736 (reg!16300 (regTwo!32454 r!7292)) (regOne!32454 (regTwo!32454 r!7292)))) (head!12484 (_2!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5922712 () Bool)

(assert (=> b!5922712 (= e!3625799 EmptyLang!15971)))

(declare-fun call!469767 () Regex!15971)

(declare-fun c!1052735 () Bool)

(declare-fun bm!469763 () Bool)

(assert (=> bm!469763 (= call!469767 (derivativeStep!4702 (ite c!1052734 (regOne!32455 (regTwo!32454 r!7292)) (ite c!1052735 (regTwo!32454 (regTwo!32454 r!7292)) (regOne!32454 (regTwo!32454 r!7292)))) (head!12484 (_2!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5922713 () Bool)

(assert (=> b!5922713 (= c!1052735 (nullable!5966 (regOne!32454 (regTwo!32454 r!7292))))))

(declare-fun e!3625798 () Regex!15971)

(assert (=> b!5922713 (= e!3625797 e!3625798)))

(declare-fun bm!469764 () Bool)

(declare-fun call!469768 () Regex!15971)

(assert (=> bm!469764 (= call!469768 call!469770)))

(declare-fun b!5922714 () Bool)

(assert (=> b!5922714 (= e!3625795 (Union!15971 call!469767 call!469770))))

(declare-fun bm!469765 () Bool)

(declare-fun call!469769 () Regex!15971)

(assert (=> bm!469765 (= call!469769 call!469767)))

(declare-fun b!5922715 () Bool)

(assert (=> b!5922715 (= e!3625798 (Union!15971 (Concat!24816 call!469768 (regTwo!32454 (regTwo!32454 r!7292))) call!469769))))

(declare-fun b!5922717 () Bool)

(assert (=> b!5922717 (= e!3625797 (Concat!24816 call!469768 (regTwo!32454 r!7292)))))

(declare-fun b!5922718 () Bool)

(assert (=> b!5922718 (= c!1052734 ((_ is Union!15971) (regTwo!32454 r!7292)))))

(assert (=> b!5922718 (= e!3625796 e!3625795)))

(declare-fun b!5922716 () Bool)

(assert (=> b!5922716 (= e!3625798 (Union!15971 (Concat!24816 call!469769 (regTwo!32454 (regTwo!32454 r!7292))) EmptyLang!15971))))

(declare-fun d!1857375 () Bool)

(declare-fun lt!2310107 () Regex!15971)

(assert (=> d!1857375 (validRegex!7707 lt!2310107)))

(assert (=> d!1857375 (= lt!2310107 e!3625799)))

(declare-fun c!1052737 () Bool)

(assert (=> d!1857375 (= c!1052737 (or ((_ is EmptyExpr!15971) (regTwo!32454 r!7292)) ((_ is EmptyLang!15971) (regTwo!32454 r!7292))))))

(assert (=> d!1857375 (validRegex!7707 (regTwo!32454 r!7292))))

(assert (=> d!1857375 (= (derivativeStep!4702 (regTwo!32454 r!7292) (head!12484 (_2!36253 (get!22069 lt!2309996)))) lt!2310107)))

(assert (= (and d!1857375 c!1052737) b!5922712))

(assert (= (and d!1857375 (not c!1052737)) b!5922710))

(assert (= (and b!5922710 c!1052733) b!5922709))

(assert (= (and b!5922710 (not c!1052733)) b!5922718))

(assert (= (and b!5922718 c!1052734) b!5922714))

(assert (= (and b!5922718 (not c!1052734)) b!5922711))

(assert (= (and b!5922711 c!1052736) b!5922717))

(assert (= (and b!5922711 (not c!1052736)) b!5922713))

(assert (= (and b!5922713 c!1052735) b!5922715))

(assert (= (and b!5922713 (not c!1052735)) b!5922716))

(assert (= (or b!5922715 b!5922716) bm!469765))

(assert (= (or b!5922717 b!5922715) bm!469764))

(assert (= (or b!5922714 bm!469764) bm!469762))

(assert (= (or b!5922714 bm!469765) bm!469763))

(assert (=> bm!469762 m!6816950))

(declare-fun m!6818322 () Bool)

(assert (=> bm!469762 m!6818322))

(assert (=> bm!469763 m!6816950))

(declare-fun m!6818324 () Bool)

(assert (=> bm!469763 m!6818324))

(assert (=> b!5922713 m!6818298))

(declare-fun m!6818326 () Bool)

(assert (=> d!1857375 m!6818326))

(assert (=> d!1857375 m!6816958))

(assert (=> b!5921175 d!1857375))

(assert (=> b!5921175 d!1857103))

(assert (=> b!5921175 d!1857185))

(assert (=> b!5921535 d!1856795))

(declare-fun d!1857377 () Bool)

(declare-fun res!2482584 () Bool)

(declare-fun e!3625800 () Bool)

(assert (=> d!1857377 (=> res!2482584 e!3625800)))

(assert (=> d!1857377 (= res!2482584 ((_ is Nil!64088) (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> d!1857377 (= (forall!15054 (t!377603 (exprs!5855 (h!70537 zl!343))) lambda!322963) e!3625800)))

(declare-fun b!5922719 () Bool)

(declare-fun e!3625801 () Bool)

(assert (=> b!5922719 (= e!3625800 e!3625801)))

(declare-fun res!2482585 () Bool)

(assert (=> b!5922719 (=> (not res!2482585) (not e!3625801))))

(assert (=> b!5922719 (= res!2482585 (dynLambda!25057 lambda!322963 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5922720 () Bool)

(assert (=> b!5922720 (= e!3625801 (forall!15054 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))) lambda!322963))))

(assert (= (and d!1857377 (not res!2482584)) b!5922719))

(assert (= (and b!5922719 res!2482585) b!5922720))

(declare-fun b_lambda!222461 () Bool)

(assert (=> (not b_lambda!222461) (not b!5922719)))

(declare-fun m!6818328 () Bool)

(assert (=> b!5922719 m!6818328))

(declare-fun m!6818330 () Bool)

(assert (=> b!5922720 m!6818330))

(assert (=> b!5921633 d!1857377))

(declare-fun d!1857379 () Bool)

(declare-fun res!2482586 () Bool)

(declare-fun e!3625802 () Bool)

(assert (=> d!1857379 (=> res!2482586 e!3625802)))

(assert (=> d!1857379 (= res!2482586 ((_ is Nil!64088) (t!377603 (unfocusZipperList!1392 zl!343))))))

(assert (=> d!1857379 (= (forall!15054 (t!377603 (unfocusZipperList!1392 zl!343)) lambda!323011) e!3625802)))

(declare-fun b!5922721 () Bool)

(declare-fun e!3625803 () Bool)

(assert (=> b!5922721 (= e!3625802 e!3625803)))

(declare-fun res!2482587 () Bool)

(assert (=> b!5922721 (=> (not res!2482587) (not e!3625803))))

(assert (=> b!5922721 (= res!2482587 (dynLambda!25057 lambda!323011 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun b!5922722 () Bool)

(assert (=> b!5922722 (= e!3625803 (forall!15054 (t!377603 (t!377603 (unfocusZipperList!1392 zl!343))) lambda!323011))))

(assert (= (and d!1857379 (not res!2482586)) b!5922721))

(assert (= (and b!5922721 res!2482587) b!5922722))

(declare-fun b_lambda!222463 () Bool)

(assert (=> (not b_lambda!222463) (not b!5922721)))

(declare-fun m!6818332 () Bool)

(assert (=> b!5922721 m!6818332))

(declare-fun m!6818334 () Bool)

(assert (=> b!5922722 m!6818334))

(assert (=> b!5921587 d!1857379))

(declare-fun d!1857381 () Bool)

(declare-fun res!2482592 () Bool)

(declare-fun e!3625809 () Bool)

(assert (=> d!1857381 (=> res!2482592 e!3625809)))

(assert (=> d!1857381 (= res!2482592 ((_ is ElementMatch!15971) (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))))))

(assert (=> d!1857381 (= (validRegex!7707 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))) e!3625809)))

(declare-fun b!5922723 () Bool)

(declare-fun e!3625810 () Bool)

(declare-fun e!3625808 () Bool)

(assert (=> b!5922723 (= e!3625810 e!3625808)))

(declare-fun res!2482589 () Bool)

(assert (=> b!5922723 (= res!2482589 (not (nullable!5966 (reg!16300 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))))))))

(assert (=> b!5922723 (=> (not res!2482589) (not e!3625808))))

(declare-fun bm!469766 () Bool)

(declare-fun c!1052738 () Bool)

(declare-fun call!469773 () Bool)

(assert (=> bm!469766 (= call!469773 (validRegex!7707 (ite c!1052738 (regTwo!32455 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))) (regTwo!32454 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))))))))

(declare-fun b!5922724 () Bool)

(declare-fun res!2482591 () Bool)

(declare-fun e!3625805 () Bool)

(assert (=> b!5922724 (=> res!2482591 e!3625805)))

(assert (=> b!5922724 (= res!2482591 (not ((_ is Concat!24816) (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292))))))))

(declare-fun e!3625804 () Bool)

(assert (=> b!5922724 (= e!3625804 e!3625805)))

(declare-fun b!5922725 () Bool)

(declare-fun res!2482588 () Bool)

(declare-fun e!3625806 () Bool)

(assert (=> b!5922725 (=> (not res!2482588) (not e!3625806))))

(declare-fun call!469772 () Bool)

(assert (=> b!5922725 (= res!2482588 call!469772)))

(assert (=> b!5922725 (= e!3625804 e!3625806)))

(declare-fun bm!469767 () Bool)

(declare-fun call!469771 () Bool)

(assert (=> bm!469767 (= call!469772 call!469771)))

(declare-fun b!5922726 () Bool)

(assert (=> b!5922726 (= e!3625808 call!469771)))

(declare-fun b!5922727 () Bool)

(declare-fun e!3625807 () Bool)

(assert (=> b!5922727 (= e!3625807 call!469773)))

(declare-fun b!5922728 () Bool)

(assert (=> b!5922728 (= e!3625805 e!3625807)))

(declare-fun res!2482590 () Bool)

(assert (=> b!5922728 (=> (not res!2482590) (not e!3625807))))

(assert (=> b!5922728 (= res!2482590 call!469772)))

(declare-fun b!5922729 () Bool)

(assert (=> b!5922729 (= e!3625810 e!3625804)))

(assert (=> b!5922729 (= c!1052738 ((_ is Union!15971) (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))))))

(declare-fun b!5922730 () Bool)

(assert (=> b!5922730 (= e!3625806 call!469773)))

(declare-fun c!1052739 () Bool)

(declare-fun bm!469768 () Bool)

(assert (=> bm!469768 (= call!469771 (validRegex!7707 (ite c!1052739 (reg!16300 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))) (ite c!1052738 (regOne!32455 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292))))))))))

(declare-fun b!5922731 () Bool)

(assert (=> b!5922731 (= e!3625809 e!3625810)))

(assert (=> b!5922731 (= c!1052739 ((_ is Star!15971) (ite c!1052366 (regTwo!32455 (regOne!32454 r!7292)) (regTwo!32454 (regOne!32454 r!7292)))))))

(assert (= (and d!1857381 (not res!2482592)) b!5922731))

(assert (= (and b!5922731 c!1052739) b!5922723))

(assert (= (and b!5922731 (not c!1052739)) b!5922729))

(assert (= (and b!5922723 res!2482589) b!5922726))

(assert (= (and b!5922729 c!1052738) b!5922725))

(assert (= (and b!5922729 (not c!1052738)) b!5922724))

(assert (= (and b!5922725 res!2482588) b!5922730))

(assert (= (and b!5922724 (not res!2482591)) b!5922728))

(assert (= (and b!5922728 res!2482590) b!5922727))

(assert (= (or b!5922730 b!5922727) bm!469766))

(assert (= (or b!5922725 b!5922728) bm!469767))

(assert (= (or b!5922726 bm!469767) bm!469768))

(declare-fun m!6818336 () Bool)

(assert (=> b!5922723 m!6818336))

(declare-fun m!6818338 () Bool)

(assert (=> bm!469766 m!6818338))

(declare-fun m!6818340 () Bool)

(assert (=> bm!469768 m!6818340))

(assert (=> bm!469478 d!1857381))

(declare-fun d!1857383 () Bool)

(assert (=> d!1857383 (= ($colon$colon!1858 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))) (ite (or c!1052399 c!1052398) (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))) (Cons!64088 (ite (or c!1052399 c!1052398) (regTwo!32454 (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (h!70536 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))) (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088))))))))))

(assert (=> bm!469499 d!1857383))

(declare-fun b!5922732 () Bool)

(declare-fun e!3625811 () List!64214)

(assert (=> b!5922732 (= e!3625811 (_2!36253 (get!22069 lt!2309996)))))

(declare-fun d!1857385 () Bool)

(declare-fun e!3625812 () Bool)

(assert (=> d!1857385 e!3625812))

(declare-fun res!2482593 () Bool)

(assert (=> d!1857385 (=> (not res!2482593) (not e!3625812))))

(declare-fun lt!2310108 () List!64214)

(assert (=> d!1857385 (= res!2482593 (= (content!11801 lt!2310108) ((_ map or) (content!11801 (t!377605 (_1!36253 (get!22069 lt!2309996)))) (content!11801 (_2!36253 (get!22069 lt!2309996))))))))

(assert (=> d!1857385 (= lt!2310108 e!3625811)))

(declare-fun c!1052740 () Bool)

(assert (=> d!1857385 (= c!1052740 ((_ is Nil!64090) (t!377605 (_1!36253 (get!22069 lt!2309996)))))))

(assert (=> d!1857385 (= (++!14068 (t!377605 (_1!36253 (get!22069 lt!2309996))) (_2!36253 (get!22069 lt!2309996))) lt!2310108)))

(declare-fun b!5922733 () Bool)

(assert (=> b!5922733 (= e!3625811 (Cons!64090 (h!70538 (t!377605 (_1!36253 (get!22069 lt!2309996)))) (++!14068 (t!377605 (t!377605 (_1!36253 (get!22069 lt!2309996)))) (_2!36253 (get!22069 lt!2309996)))))))

(declare-fun b!5922734 () Bool)

(declare-fun res!2482594 () Bool)

(assert (=> b!5922734 (=> (not res!2482594) (not e!3625812))))

(assert (=> b!5922734 (= res!2482594 (= (size!40137 lt!2310108) (+ (size!40137 (t!377605 (_1!36253 (get!22069 lt!2309996)))) (size!40137 (_2!36253 (get!22069 lt!2309996))))))))

(declare-fun b!5922735 () Bool)

(assert (=> b!5922735 (= e!3625812 (or (not (= (_2!36253 (get!22069 lt!2309996)) Nil!64090)) (= lt!2310108 (t!377605 (_1!36253 (get!22069 lt!2309996))))))))

(assert (= (and d!1857385 c!1052740) b!5922732))

(assert (= (and d!1857385 (not c!1052740)) b!5922733))

(assert (= (and d!1857385 res!2482593) b!5922734))

(assert (= (and b!5922734 res!2482594) b!5922735))

(declare-fun m!6818342 () Bool)

(assert (=> d!1857385 m!6818342))

(assert (=> d!1857385 m!6818222))

(assert (=> d!1857385 m!6817050))

(declare-fun m!6818344 () Bool)

(assert (=> b!5922733 m!6818344))

(declare-fun m!6818346 () Bool)

(assert (=> b!5922734 m!6818346))

(assert (=> b!5922734 m!6818084))

(assert (=> b!5922734 m!6817058))

(assert (=> b!5921252 d!1857385))

(declare-fun d!1857387 () Bool)

(assert (=> d!1857387 (= (nullable!5966 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))) (nullableFct!1937 (h!70536 (exprs!5855 (Context!10711 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 r!7292 Nil!64088)))))))))))

(declare-fun bs!1401918 () Bool)

(assert (= bs!1401918 d!1857387))

(declare-fun m!6818348 () Bool)

(assert (=> bs!1401918 m!6818348))

(assert (=> b!5921341 d!1857387))

(declare-fun b!5922736 () Bool)

(declare-fun e!3625816 () (InoxSet Context!10710))

(declare-fun e!3625818 () (InoxSet Context!10710))

(assert (=> b!5922736 (= e!3625816 e!3625818)))

(declare-fun c!1052744 () Bool)

(assert (=> b!5922736 (= c!1052744 ((_ is Union!15971) (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))

(declare-fun bm!469769 () Bool)

(declare-fun call!469774 () (InoxSet Context!10710))

(declare-fun call!469779 () (InoxSet Context!10710))

(assert (=> bm!469769 (= call!469774 call!469779)))

(declare-fun b!5922737 () Bool)

(assert (=> b!5922737 (= e!3625816 (store ((as const (Array Context!10710 Bool)) false) (ite c!1052454 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469543)) true))))

(declare-fun b!5922738 () Bool)

(declare-fun c!1052741 () Bool)

(assert (=> b!5922738 (= c!1052741 ((_ is Star!15971) (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))

(declare-fun e!3625815 () (InoxSet Context!10710))

(declare-fun e!3625817 () (InoxSet Context!10710))

(assert (=> b!5922738 (= e!3625815 e!3625817)))

(declare-fun d!1857389 () Bool)

(declare-fun c!1052745 () Bool)

(assert (=> d!1857389 (= c!1052745 (and ((_ is ElementMatch!15971) (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))) (= (c!1052179 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))) (h!70538 s!2326))))))

(assert (=> d!1857389 (= (derivationStepZipperDown!1221 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))) (ite c!1052454 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469543)) (h!70538 s!2326)) e!3625816)))

(declare-fun b!5922739 () Bool)

(declare-fun c!1052743 () Bool)

(declare-fun e!3625813 () Bool)

(assert (=> b!5922739 (= c!1052743 e!3625813)))

(declare-fun res!2482595 () Bool)

(assert (=> b!5922739 (=> (not res!2482595) (not e!3625813))))

(assert (=> b!5922739 (= res!2482595 ((_ is Concat!24816) (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))

(declare-fun e!3625814 () (InoxSet Context!10710))

(assert (=> b!5922739 (= e!3625818 e!3625814)))

(declare-fun call!469777 () List!64212)

(declare-fun bm!469770 () Bool)

(declare-fun c!1052742 () Bool)

(assert (=> bm!469770 (= call!469777 ($colon$colon!1858 (exprs!5855 (ite c!1052454 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469543))) (ite (or c!1052743 c!1052742) (regTwo!32454 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))) (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))))

(declare-fun bm!469771 () Bool)

(declare-fun call!469778 () List!64212)

(assert (=> bm!469771 (= call!469778 call!469777)))

(declare-fun b!5922740 () Bool)

(assert (=> b!5922740 (= e!3625817 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922741 () Bool)

(assert (=> b!5922741 (= e!3625814 e!3625815)))

(assert (=> b!5922741 (= c!1052742 ((_ is Concat!24816) (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))))))

(declare-fun b!5922742 () Bool)

(declare-fun call!469775 () (InoxSet Context!10710))

(assert (=> b!5922742 (= e!3625814 ((_ map or) call!469775 call!469779))))

(declare-fun bm!469772 () Bool)

(assert (=> bm!469772 (= call!469775 (derivationStepZipperDown!1221 (ite c!1052744 (regTwo!32455 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))) (regOne!32454 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))) (ite c!1052744 (ite c!1052454 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469543)) (Context!10711 call!469777)) (h!70538 s!2326)))))

(declare-fun b!5922743 () Bool)

(assert (=> b!5922743 (= e!3625815 call!469774)))

(declare-fun b!5922744 () Bool)

(declare-fun call!469776 () (InoxSet Context!10710))

(assert (=> b!5922744 (= e!3625818 ((_ map or) call!469776 call!469775))))

(declare-fun b!5922745 () Bool)

(assert (=> b!5922745 (= e!3625817 call!469774)))

(declare-fun bm!469773 () Bool)

(assert (=> bm!469773 (= call!469779 call!469776)))

(declare-fun b!5922746 () Bool)

(assert (=> b!5922746 (= e!3625813 (nullable!5966 (regOne!32454 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))))

(declare-fun bm!469774 () Bool)

(assert (=> bm!469774 (= call!469776 (derivationStepZipperDown!1221 (ite c!1052744 (regOne!32455 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))) (ite c!1052743 (regTwo!32454 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))) (ite c!1052742 (regOne!32454 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))))) (reg!16300 (ite c!1052454 (regTwo!32455 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292))) (regOne!32454 (ite c!1052304 (regTwo!32455 r!7292) (regOne!32454 r!7292)))))))) (ite (or c!1052744 c!1052743) (ite c!1052454 (ite c!1052304 (Context!10711 Nil!64088) (Context!10711 call!469453)) (Context!10711 call!469543)) (Context!10711 call!469778)) (h!70538 s!2326)))))

(assert (= (and d!1857389 c!1052745) b!5922737))

(assert (= (and d!1857389 (not c!1052745)) b!5922736))

(assert (= (and b!5922736 c!1052744) b!5922744))

(assert (= (and b!5922736 (not c!1052744)) b!5922739))

(assert (= (and b!5922739 res!2482595) b!5922746))

(assert (= (and b!5922739 c!1052743) b!5922742))

(assert (= (and b!5922739 (not c!1052743)) b!5922741))

(assert (= (and b!5922741 c!1052742) b!5922743))

(assert (= (and b!5922741 (not c!1052742)) b!5922738))

(assert (= (and b!5922738 c!1052741) b!5922745))

(assert (= (and b!5922738 (not c!1052741)) b!5922740))

(assert (= (or b!5922743 b!5922745) bm!469771))

(assert (= (or b!5922743 b!5922745) bm!469769))

(assert (= (or b!5922742 bm!469771) bm!469770))

(assert (= (or b!5922742 bm!469769) bm!469773))

(assert (= (or b!5922744 b!5922742) bm!469772))

(assert (= (or b!5922744 bm!469773) bm!469774))

(declare-fun m!6818350 () Bool)

(assert (=> bm!469774 m!6818350))

(declare-fun m!6818352 () Bool)

(assert (=> bm!469772 m!6818352))

(declare-fun m!6818354 () Bool)

(assert (=> b!5922737 m!6818354))

(declare-fun m!6818356 () Bool)

(assert (=> b!5922746 m!6818356))

(declare-fun m!6818358 () Bool)

(assert (=> bm!469770 m!6818358))

(assert (=> bm!469538 d!1857389))

(assert (=> b!5921392 d!1857125))

(assert (=> b!5921392 d!1857127))

(assert (=> d!1856845 d!1857303))

(assert (=> d!1856845 d!1856777))

(declare-fun d!1857391 () Bool)

(assert (=> d!1857391 true))

(assert (=> d!1857391 true))

(declare-fun res!2482596 () Bool)

(assert (=> d!1857391 (= (choose!44653 lambda!322997) res!2482596)))

(assert (=> d!1856773 d!1857391))

(declare-fun d!1857393 () Bool)

(assert (=> d!1857393 (= (isEmpty!35946 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))) ((_ is Nil!64088) (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(assert (=> b!5921456 d!1857393))

(declare-fun d!1857395 () Bool)

(assert (=> d!1857395 (= (nullable!5966 (derivativeStep!4702 r!7292 (head!12484 s!2326))) (nullableFct!1937 (derivativeStep!4702 r!7292 (head!12484 s!2326))))))

(declare-fun bs!1401919 () Bool)

(assert (= bs!1401919 d!1857395))

(assert (=> bs!1401919 m!6816884))

(declare-fun m!6818360 () Bool)

(assert (=> bs!1401919 m!6818360))

(assert (=> b!5921396 d!1857395))

(declare-fun b!5922747 () Bool)

(declare-fun e!3625820 () Regex!15971)

(assert (=> b!5922747 (= e!3625820 (ite (= (head!12484 s!2326) (c!1052179 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))))) EmptyExpr!15971 EmptyLang!15971))))

(declare-fun b!5922748 () Bool)

(declare-fun e!3625823 () Regex!15971)

(assert (=> b!5922748 (= e!3625823 e!3625820)))

(declare-fun c!1052746 () Bool)

(assert (=> b!5922748 (= c!1052746 ((_ is ElementMatch!15971) (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))))))

(declare-fun b!5922749 () Bool)

(declare-fun e!3625819 () Regex!15971)

(declare-fun e!3625821 () Regex!15971)

(assert (=> b!5922749 (= e!3625819 e!3625821)))

(declare-fun c!1052749 () Bool)

(assert (=> b!5922749 (= c!1052749 ((_ is Star!15971) (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))))))

(declare-fun c!1052747 () Bool)

(declare-fun call!469783 () Regex!15971)

(declare-fun bm!469775 () Bool)

(assert (=> bm!469775 (= call!469783 (derivativeStep!4702 (ite c!1052747 (regTwo!32455 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))) (ite c!1052749 (reg!16300 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))))) (head!12484 s!2326)))))

(declare-fun b!5922750 () Bool)

(assert (=> b!5922750 (= e!3625823 EmptyLang!15971)))

(declare-fun bm!469776 () Bool)

(declare-fun call!469780 () Regex!15971)

(declare-fun c!1052748 () Bool)

(assert (=> bm!469776 (= call!469780 (derivativeStep!4702 (ite c!1052747 (regOne!32455 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))) (ite c!1052748 (regTwo!32454 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))) (regOne!32454 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))))) (head!12484 s!2326)))))

(declare-fun b!5922751 () Bool)

(assert (=> b!5922751 (= c!1052748 (nullable!5966 (regOne!32454 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))))))))

(declare-fun e!3625822 () Regex!15971)

(assert (=> b!5922751 (= e!3625821 e!3625822)))

(declare-fun bm!469777 () Bool)

(declare-fun call!469781 () Regex!15971)

(assert (=> bm!469777 (= call!469781 call!469783)))

(declare-fun b!5922752 () Bool)

(assert (=> b!5922752 (= e!3625819 (Union!15971 call!469780 call!469783))))

(declare-fun bm!469778 () Bool)

(declare-fun call!469782 () Regex!15971)

(assert (=> bm!469778 (= call!469782 call!469780)))

(declare-fun b!5922753 () Bool)

(assert (=> b!5922753 (= e!3625822 (Union!15971 (Concat!24816 call!469781 (regTwo!32454 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))))) call!469782))))

(declare-fun b!5922755 () Bool)

(assert (=> b!5922755 (= e!3625821 (Concat!24816 call!469781 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))))))

(declare-fun b!5922756 () Bool)

(assert (=> b!5922756 (= c!1052747 ((_ is Union!15971) (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))))))

(assert (=> b!5922756 (= e!3625820 e!3625819)))

(declare-fun b!5922754 () Bool)

(assert (=> b!5922754 (= e!3625822 (Union!15971 (Concat!24816 call!469782 (regTwo!32454 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))))) EmptyLang!15971))))

(declare-fun d!1857397 () Bool)

(declare-fun lt!2310109 () Regex!15971)

(assert (=> d!1857397 (validRegex!7707 lt!2310109)))

(assert (=> d!1857397 (= lt!2310109 e!3625823)))

(declare-fun c!1052750 () Bool)

(assert (=> d!1857397 (= c!1052750 (or ((_ is EmptyExpr!15971) (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292)))) ((_ is EmptyLang!15971) (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))))))))

(assert (=> d!1857397 (validRegex!7707 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))))))

(assert (=> d!1857397 (= (derivativeStep!4702 (ite c!1052430 (regOne!32455 r!7292) (ite c!1052431 (regTwo!32454 r!7292) (regOne!32454 r!7292))) (head!12484 s!2326)) lt!2310109)))

(assert (= (and d!1857397 c!1052750) b!5922750))

(assert (= (and d!1857397 (not c!1052750)) b!5922748))

(assert (= (and b!5922748 c!1052746) b!5922747))

(assert (= (and b!5922748 (not c!1052746)) b!5922756))

(assert (= (and b!5922756 c!1052747) b!5922752))

(assert (= (and b!5922756 (not c!1052747)) b!5922749))

(assert (= (and b!5922749 c!1052749) b!5922755))

(assert (= (and b!5922749 (not c!1052749)) b!5922751))

(assert (= (and b!5922751 c!1052748) b!5922753))

(assert (= (and b!5922751 (not c!1052748)) b!5922754))

(assert (= (or b!5922753 b!5922754) bm!469778))

(assert (= (or b!5922755 b!5922753) bm!469777))

(assert (= (or b!5922752 bm!469777) bm!469775))

(assert (= (or b!5922752 bm!469778) bm!469776))

(assert (=> bm!469775 m!6816882))

(declare-fun m!6818362 () Bool)

(assert (=> bm!469775 m!6818362))

(assert (=> bm!469776 m!6816882))

(declare-fun m!6818364 () Bool)

(assert (=> bm!469776 m!6818364))

(declare-fun m!6818366 () Bool)

(assert (=> b!5922751 m!6818366))

(declare-fun m!6818368 () Bool)

(assert (=> d!1857397 m!6818368))

(declare-fun m!6818370 () Bool)

(assert (=> d!1857397 m!6818370))

(assert (=> bm!469522 d!1857397))

(assert (=> d!1856913 d!1857141))

(assert (=> d!1856913 d!1856777))

(declare-fun d!1857399 () Bool)

(declare-fun c!1052751 () Bool)

(assert (=> d!1857399 (= c!1052751 ((_ is Nil!64089) res!2482187))))

(declare-fun e!3625824 () (InoxSet Context!10710))

(assert (=> d!1857399 (= (content!11799 res!2482187) e!3625824)))

(declare-fun b!5922757 () Bool)

(assert (=> b!5922757 (= e!3625824 ((as const (Array Context!10710 Bool)) false))))

(declare-fun b!5922758 () Bool)

(assert (=> b!5922758 (= e!3625824 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) (h!70537 res!2482187) true) (content!11799 (t!377604 res!2482187))))))

(assert (= (and d!1857399 c!1052751) b!5922757))

(assert (= (and d!1857399 (not c!1052751)) b!5922758))

(declare-fun m!6818372 () Bool)

(assert (=> b!5922758 m!6818372))

(declare-fun m!6818374 () Bool)

(assert (=> b!5922758 m!6818374))

(assert (=> b!5921511 d!1857399))

(declare-fun b!5922759 () Bool)

(declare-fun e!3625825 () List!64214)

(assert (=> b!5922759 (= e!3625825 (t!377605 s!2326))))

(declare-fun d!1857401 () Bool)

(declare-fun e!3625826 () Bool)

(assert (=> d!1857401 e!3625826))

(declare-fun res!2482597 () Bool)

(assert (=> d!1857401 (=> (not res!2482597) (not e!3625826))))

(declare-fun lt!2310110 () List!64214)

(assert (=> d!1857401 (= res!2482597 (= (content!11801 lt!2310110) ((_ map or) (content!11801 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))) (content!11801 (t!377605 s!2326)))))))

(assert (=> d!1857401 (= lt!2310110 e!3625825)))

(declare-fun c!1052752 () Bool)

(assert (=> d!1857401 (= c!1052752 ((_ is Nil!64090) (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))))))

(assert (=> d!1857401 (= (++!14068 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))) (t!377605 s!2326)) lt!2310110)))

(declare-fun b!5922760 () Bool)

(assert (=> b!5922760 (= e!3625825 (Cons!64090 (h!70538 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))) (++!14068 (t!377605 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))) (t!377605 s!2326))))))

(declare-fun b!5922761 () Bool)

(declare-fun res!2482598 () Bool)

(assert (=> b!5922761 (=> (not res!2482598) (not e!3625826))))

(assert (=> b!5922761 (= res!2482598 (= (size!40137 lt!2310110) (+ (size!40137 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090)))) (size!40137 (t!377605 s!2326)))))))

(declare-fun b!5922762 () Bool)

(assert (=> b!5922762 (= e!3625826 (or (not (= (t!377605 s!2326) Nil!64090)) (= lt!2310110 (t!377605 (++!14068 Nil!64090 (Cons!64090 (h!70538 s!2326) Nil!64090))))))))

(assert (= (and d!1857401 c!1052752) b!5922759))

(assert (= (and d!1857401 (not c!1052752)) b!5922760))

(assert (= (and d!1857401 res!2482597) b!5922761))

(assert (= (and b!5922761 res!2482598) b!5922762))

(declare-fun m!6818376 () Bool)

(assert (=> d!1857401 m!6818376))

(assert (=> d!1857401 m!6817994))

(assert (=> d!1857401 m!6816970))

(declare-fun m!6818378 () Bool)

(assert (=> b!5922760 m!6818378))

(declare-fun m!6818380 () Bool)

(assert (=> b!5922761 m!6818380))

(assert (=> b!5922761 m!6818158))

(assert (=> b!5922761 m!6816978))

(assert (=> b!5921194 d!1857401))

(declare-fun d!1857403 () Bool)

(declare-fun res!2482603 () Bool)

(declare-fun e!3625832 () Bool)

(assert (=> d!1857403 (=> res!2482603 e!3625832)))

(assert (=> d!1857403 (= res!2482603 ((_ is ElementMatch!15971) lt!2310047))))

(assert (=> d!1857403 (= (validRegex!7707 lt!2310047) e!3625832)))

(declare-fun b!5922763 () Bool)

(declare-fun e!3625833 () Bool)

(declare-fun e!3625831 () Bool)

(assert (=> b!5922763 (= e!3625833 e!3625831)))

(declare-fun res!2482600 () Bool)

(assert (=> b!5922763 (= res!2482600 (not (nullable!5966 (reg!16300 lt!2310047))))))

(assert (=> b!5922763 (=> (not res!2482600) (not e!3625831))))

(declare-fun bm!469779 () Bool)

(declare-fun call!469786 () Bool)

(declare-fun c!1052753 () Bool)

(assert (=> bm!469779 (= call!469786 (validRegex!7707 (ite c!1052753 (regTwo!32455 lt!2310047) (regTwo!32454 lt!2310047))))))

(declare-fun b!5922764 () Bool)

(declare-fun res!2482602 () Bool)

(declare-fun e!3625828 () Bool)

(assert (=> b!5922764 (=> res!2482602 e!3625828)))

(assert (=> b!5922764 (= res!2482602 (not ((_ is Concat!24816) lt!2310047)))))

(declare-fun e!3625827 () Bool)

(assert (=> b!5922764 (= e!3625827 e!3625828)))

(declare-fun b!5922765 () Bool)

(declare-fun res!2482599 () Bool)

(declare-fun e!3625829 () Bool)

(assert (=> b!5922765 (=> (not res!2482599) (not e!3625829))))

(declare-fun call!469785 () Bool)

(assert (=> b!5922765 (= res!2482599 call!469785)))

(assert (=> b!5922765 (= e!3625827 e!3625829)))

(declare-fun bm!469780 () Bool)

(declare-fun call!469784 () Bool)

(assert (=> bm!469780 (= call!469785 call!469784)))

(declare-fun b!5922766 () Bool)

(assert (=> b!5922766 (= e!3625831 call!469784)))

(declare-fun b!5922767 () Bool)

(declare-fun e!3625830 () Bool)

(assert (=> b!5922767 (= e!3625830 call!469786)))

(declare-fun b!5922768 () Bool)

(assert (=> b!5922768 (= e!3625828 e!3625830)))

(declare-fun res!2482601 () Bool)

(assert (=> b!5922768 (=> (not res!2482601) (not e!3625830))))

(assert (=> b!5922768 (= res!2482601 call!469785)))

(declare-fun b!5922769 () Bool)

(assert (=> b!5922769 (= e!3625833 e!3625827)))

(assert (=> b!5922769 (= c!1052753 ((_ is Union!15971) lt!2310047))))

(declare-fun b!5922770 () Bool)

(assert (=> b!5922770 (= e!3625829 call!469786)))

(declare-fun bm!469781 () Bool)

(declare-fun c!1052754 () Bool)

(assert (=> bm!469781 (= call!469784 (validRegex!7707 (ite c!1052754 (reg!16300 lt!2310047) (ite c!1052753 (regOne!32455 lt!2310047) (regOne!32454 lt!2310047)))))))

(declare-fun b!5922771 () Bool)

(assert (=> b!5922771 (= e!3625832 e!3625833)))

(assert (=> b!5922771 (= c!1052754 ((_ is Star!15971) lt!2310047))))

(assert (= (and d!1857403 (not res!2482603)) b!5922771))

(assert (= (and b!5922771 c!1052754) b!5922763))

(assert (= (and b!5922771 (not c!1052754)) b!5922769))

(assert (= (and b!5922763 res!2482600) b!5922766))

(assert (= (and b!5922769 c!1052753) b!5922765))

(assert (= (and b!5922769 (not c!1052753)) b!5922764))

(assert (= (and b!5922765 res!2482599) b!5922770))

(assert (= (and b!5922764 (not res!2482602)) b!5922768))

(assert (= (and b!5922768 res!2482601) b!5922767))

(assert (= (or b!5922770 b!5922767) bm!469779))

(assert (= (or b!5922765 b!5922768) bm!469780))

(assert (= (or b!5922766 bm!469780) bm!469781))

(declare-fun m!6818382 () Bool)

(assert (=> b!5922763 m!6818382))

(declare-fun m!6818384 () Bool)

(assert (=> bm!469779 m!6818384))

(declare-fun m!6818386 () Bool)

(assert (=> bm!469781 m!6818386))

(assert (=> d!1856873 d!1857403))

(declare-fun d!1857405 () Bool)

(declare-fun res!2482604 () Bool)

(declare-fun e!3625834 () Bool)

(assert (=> d!1857405 (=> res!2482604 e!3625834)))

(assert (=> d!1857405 (= res!2482604 ((_ is Nil!64088) (t!377603 (exprs!5855 (h!70537 zl!343)))))))

(assert (=> d!1857405 (= (forall!15054 (t!377603 (exprs!5855 (h!70537 zl!343))) lambda!323029) e!3625834)))

(declare-fun b!5922772 () Bool)

(declare-fun e!3625835 () Bool)

(assert (=> b!5922772 (= e!3625834 e!3625835)))

(declare-fun res!2482605 () Bool)

(assert (=> b!5922772 (=> (not res!2482605) (not e!3625835))))

(assert (=> b!5922772 (= res!2482605 (dynLambda!25057 lambda!323029 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun b!5922773 () Bool)

(assert (=> b!5922773 (= e!3625835 (forall!15054 (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))) lambda!323029))))

(assert (= (and d!1857405 (not res!2482604)) b!5922772))

(assert (= (and b!5922772 res!2482605) b!5922773))

(declare-fun b_lambda!222465 () Bool)

(assert (=> (not b_lambda!222465) (not b!5922772)))

(declare-fun m!6818388 () Bool)

(assert (=> b!5922772 m!6818388))

(declare-fun m!6818390 () Bool)

(assert (=> b!5922773 m!6818390))

(assert (=> d!1856873 d!1857405))

(declare-fun d!1857407 () Bool)

(assert (=> d!1857407 (= (isEmptyExpr!1399 lt!2310047) ((_ is EmptyExpr!15971) lt!2310047))))

(assert (=> b!5921460 d!1857407))

(assert (=> b!5921526 d!1857177))

(declare-fun d!1857409 () Bool)

(assert (=> d!1857409 (= (isEmptyLang!1408 lt!2310048) ((_ is EmptyLang!15971) lt!2310048))))

(assert (=> b!5921475 d!1857409))

(declare-fun e!3625836 () Bool)

(assert (=> b!5921752 (= tp!1646033 e!3625836)))

(declare-fun b!5922775 () Bool)

(declare-fun tp!1646224 () Bool)

(declare-fun tp!1646225 () Bool)

(assert (=> b!5922775 (= e!3625836 (and tp!1646224 tp!1646225))))

(declare-fun b!5922776 () Bool)

(declare-fun tp!1646223 () Bool)

(assert (=> b!5922776 (= e!3625836 tp!1646223)))

(declare-fun b!5922774 () Bool)

(assert (=> b!5922774 (= e!3625836 tp_is_empty!41195)))

(declare-fun b!5922777 () Bool)

(declare-fun tp!1646221 () Bool)

(declare-fun tp!1646222 () Bool)

(assert (=> b!5922777 (= e!3625836 (and tp!1646221 tp!1646222))))

(assert (= (and b!5921752 ((_ is ElementMatch!15971) (reg!16300 (h!70536 (exprs!5855 setElem!40176))))) b!5922774))

(assert (= (and b!5921752 ((_ is Concat!24816) (reg!16300 (h!70536 (exprs!5855 setElem!40176))))) b!5922775))

(assert (= (and b!5921752 ((_ is Star!15971) (reg!16300 (h!70536 (exprs!5855 setElem!40176))))) b!5922776))

(assert (= (and b!5921752 ((_ is Union!15971) (reg!16300 (h!70536 (exprs!5855 setElem!40176))))) b!5922777))

(declare-fun e!3625837 () Bool)

(assert (=> b!5921756 (= tp!1646041 e!3625837)))

(declare-fun b!5922779 () Bool)

(declare-fun tp!1646229 () Bool)

(declare-fun tp!1646230 () Bool)

(assert (=> b!5922779 (= e!3625837 (and tp!1646229 tp!1646230))))

(declare-fun b!5922780 () Bool)

(declare-fun tp!1646228 () Bool)

(assert (=> b!5922780 (= e!3625837 tp!1646228)))

(declare-fun b!5922778 () Bool)

(assert (=> b!5922778 (= e!3625837 tp_is_empty!41195)))

(declare-fun b!5922781 () Bool)

(declare-fun tp!1646226 () Bool)

(declare-fun tp!1646227 () Bool)

(assert (=> b!5922781 (= e!3625837 (and tp!1646226 tp!1646227))))

(assert (= (and b!5921756 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922778))

(assert (= (and b!5921756 ((_ is Concat!24816) (regOne!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922779))

(assert (= (and b!5921756 ((_ is Star!15971) (regOne!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922780))

(assert (= (and b!5921756 ((_ is Union!15971) (regOne!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922781))

(declare-fun e!3625838 () Bool)

(assert (=> b!5921756 (= tp!1646042 e!3625838)))

(declare-fun b!5922783 () Bool)

(declare-fun tp!1646234 () Bool)

(declare-fun tp!1646235 () Bool)

(assert (=> b!5922783 (= e!3625838 (and tp!1646234 tp!1646235))))

(declare-fun b!5922784 () Bool)

(declare-fun tp!1646233 () Bool)

(assert (=> b!5922784 (= e!3625838 tp!1646233)))

(declare-fun b!5922782 () Bool)

(assert (=> b!5922782 (= e!3625838 tp_is_empty!41195)))

(declare-fun b!5922785 () Bool)

(declare-fun tp!1646231 () Bool)

(declare-fun tp!1646232 () Bool)

(assert (=> b!5922785 (= e!3625838 (and tp!1646231 tp!1646232))))

(assert (= (and b!5921756 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922782))

(assert (= (and b!5921756 ((_ is Concat!24816) (regTwo!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922783))

(assert (= (and b!5921756 ((_ is Star!15971) (regTwo!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922784))

(assert (= (and b!5921756 ((_ is Union!15971) (regTwo!32454 (regOne!32454 (regTwo!32455 r!7292))))) b!5922785))

(declare-fun e!3625839 () Bool)

(assert (=> b!5921701 (= tp!1645986 e!3625839)))

(declare-fun b!5922787 () Bool)

(declare-fun tp!1646239 () Bool)

(declare-fun tp!1646240 () Bool)

(assert (=> b!5922787 (= e!3625839 (and tp!1646239 tp!1646240))))

(declare-fun b!5922788 () Bool)

(declare-fun tp!1646238 () Bool)

(assert (=> b!5922788 (= e!3625839 tp!1646238)))

(declare-fun b!5922786 () Bool)

(assert (=> b!5922786 (= e!3625839 tp_is_empty!41195)))

(declare-fun b!5922789 () Bool)

(declare-fun tp!1646236 () Bool)

(declare-fun tp!1646237 () Bool)

(assert (=> b!5922789 (= e!3625839 (and tp!1646236 tp!1646237))))

(assert (= (and b!5921701 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922786))

(assert (= (and b!5921701 ((_ is Concat!24816) (regOne!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922787))

(assert (= (and b!5921701 ((_ is Star!15971) (regOne!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922788))

(assert (= (and b!5921701 ((_ is Union!15971) (regOne!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922789))

(declare-fun e!3625840 () Bool)

(assert (=> b!5921701 (= tp!1645987 e!3625840)))

(declare-fun b!5922791 () Bool)

(declare-fun tp!1646244 () Bool)

(declare-fun tp!1646245 () Bool)

(assert (=> b!5922791 (= e!3625840 (and tp!1646244 tp!1646245))))

(declare-fun b!5922792 () Bool)

(declare-fun tp!1646243 () Bool)

(assert (=> b!5922792 (= e!3625840 tp!1646243)))

(declare-fun b!5922790 () Bool)

(assert (=> b!5922790 (= e!3625840 tp_is_empty!41195)))

(declare-fun b!5922793 () Bool)

(declare-fun tp!1646241 () Bool)

(declare-fun tp!1646242 () Bool)

(assert (=> b!5922793 (= e!3625840 (and tp!1646241 tp!1646242))))

(assert (= (and b!5921701 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922790))

(assert (= (and b!5921701 ((_ is Concat!24816) (regTwo!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922791))

(assert (= (and b!5921701 ((_ is Star!15971) (regTwo!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922792))

(assert (= (and b!5921701 ((_ is Union!15971) (regTwo!32454 (regTwo!32455 (reg!16300 r!7292))))) b!5922793))

(declare-fun e!3625841 () Bool)

(assert (=> b!5921710 (= tp!1645995 e!3625841)))

(declare-fun b!5922795 () Bool)

(declare-fun tp!1646249 () Bool)

(declare-fun tp!1646250 () Bool)

(assert (=> b!5922795 (= e!3625841 (and tp!1646249 tp!1646250))))

(declare-fun b!5922796 () Bool)

(declare-fun tp!1646248 () Bool)

(assert (=> b!5922796 (= e!3625841 tp!1646248)))

(declare-fun b!5922794 () Bool)

(assert (=> b!5922794 (= e!3625841 tp_is_empty!41195)))

(declare-fun b!5922797 () Bool)

(declare-fun tp!1646246 () Bool)

(declare-fun tp!1646247 () Bool)

(assert (=> b!5922797 (= e!3625841 (and tp!1646246 tp!1646247))))

(assert (= (and b!5921710 ((_ is ElementMatch!15971) (reg!16300 (regOne!32455 (regOne!32455 r!7292))))) b!5922794))

(assert (= (and b!5921710 ((_ is Concat!24816) (reg!16300 (regOne!32455 (regOne!32455 r!7292))))) b!5922795))

(assert (= (and b!5921710 ((_ is Star!15971) (reg!16300 (regOne!32455 (regOne!32455 r!7292))))) b!5922796))

(assert (= (and b!5921710 ((_ is Union!15971) (reg!16300 (regOne!32455 (regOne!32455 r!7292))))) b!5922797))

(declare-fun e!3625842 () Bool)

(assert (=> b!5921651 (= tp!1645940 e!3625842)))

(declare-fun b!5922799 () Bool)

(declare-fun tp!1646254 () Bool)

(declare-fun tp!1646255 () Bool)

(assert (=> b!5922799 (= e!3625842 (and tp!1646254 tp!1646255))))

(declare-fun b!5922800 () Bool)

(declare-fun tp!1646253 () Bool)

(assert (=> b!5922800 (= e!3625842 tp!1646253)))

(declare-fun b!5922798 () Bool)

(assert (=> b!5922798 (= e!3625842 tp_is_empty!41195)))

(declare-fun b!5922801 () Bool)

(declare-fun tp!1646251 () Bool)

(declare-fun tp!1646252 () Bool)

(assert (=> b!5922801 (= e!3625842 (and tp!1646251 tp!1646252))))

(assert (= (and b!5921651 ((_ is ElementMatch!15971) (reg!16300 (regOne!32454 (regOne!32454 r!7292))))) b!5922798))

(assert (= (and b!5921651 ((_ is Concat!24816) (reg!16300 (regOne!32454 (regOne!32454 r!7292))))) b!5922799))

(assert (= (and b!5921651 ((_ is Star!15971) (reg!16300 (regOne!32454 (regOne!32454 r!7292))))) b!5922800))

(assert (= (and b!5921651 ((_ is Union!15971) (reg!16300 (regOne!32454 (regOne!32454 r!7292))))) b!5922801))

(declare-fun e!3625843 () Bool)

(assert (=> b!5921642 (= tp!1645931 e!3625843)))

(declare-fun b!5922803 () Bool)

(declare-fun tp!1646259 () Bool)

(declare-fun tp!1646260 () Bool)

(assert (=> b!5922803 (= e!3625843 (and tp!1646259 tp!1646260))))

(declare-fun b!5922804 () Bool)

(declare-fun tp!1646258 () Bool)

(assert (=> b!5922804 (= e!3625843 tp!1646258)))

(declare-fun b!5922802 () Bool)

(assert (=> b!5922802 (= e!3625843 tp_is_empty!41195)))

(declare-fun b!5922805 () Bool)

(declare-fun tp!1646256 () Bool)

(declare-fun tp!1646257 () Bool)

(assert (=> b!5922805 (= e!3625843 (and tp!1646256 tp!1646257))))

(assert (= (and b!5921642 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922802))

(assert (= (and b!5921642 ((_ is Concat!24816) (regOne!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922803))

(assert (= (and b!5921642 ((_ is Star!15971) (regOne!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922804))

(assert (= (and b!5921642 ((_ is Union!15971) (regOne!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922805))

(declare-fun e!3625844 () Bool)

(assert (=> b!5921642 (= tp!1645932 e!3625844)))

(declare-fun b!5922807 () Bool)

(declare-fun tp!1646264 () Bool)

(declare-fun tp!1646265 () Bool)

(assert (=> b!5922807 (= e!3625844 (and tp!1646264 tp!1646265))))

(declare-fun b!5922808 () Bool)

(declare-fun tp!1646263 () Bool)

(assert (=> b!5922808 (= e!3625844 tp!1646263)))

(declare-fun b!5922806 () Bool)

(assert (=> b!5922806 (= e!3625844 tp_is_empty!41195)))

(declare-fun b!5922809 () Bool)

(declare-fun tp!1646261 () Bool)

(declare-fun tp!1646262 () Bool)

(assert (=> b!5922809 (= e!3625844 (and tp!1646261 tp!1646262))))

(assert (= (and b!5921642 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922806))

(assert (= (and b!5921642 ((_ is Concat!24816) (regTwo!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922807))

(assert (= (and b!5921642 ((_ is Star!15971) (regTwo!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922808))

(assert (= (and b!5921642 ((_ is Union!15971) (regTwo!32454 (regOne!32454 (reg!16300 r!7292))))) b!5922809))

(declare-fun e!3625845 () Bool)

(assert (=> b!5921670 (= tp!1645961 e!3625845)))

(declare-fun b!5922811 () Bool)

(declare-fun tp!1646269 () Bool)

(declare-fun tp!1646270 () Bool)

(assert (=> b!5922811 (= e!3625845 (and tp!1646269 tp!1646270))))

(declare-fun b!5922812 () Bool)

(declare-fun tp!1646268 () Bool)

(assert (=> b!5922812 (= e!3625845 tp!1646268)))

(declare-fun b!5922810 () Bool)

(assert (=> b!5922810 (= e!3625845 tp_is_empty!41195)))

(declare-fun b!5922813 () Bool)

(declare-fun tp!1646266 () Bool)

(declare-fun tp!1646267 () Bool)

(assert (=> b!5922813 (= e!3625845 (and tp!1646266 tp!1646267))))

(assert (= (and b!5921670 ((_ is ElementMatch!15971) (regOne!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922810))

(assert (= (and b!5921670 ((_ is Concat!24816) (regOne!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922811))

(assert (= (and b!5921670 ((_ is Star!15971) (regOne!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922812))

(assert (= (and b!5921670 ((_ is Union!15971) (regOne!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922813))

(declare-fun e!3625846 () Bool)

(assert (=> b!5921670 (= tp!1645962 e!3625846)))

(declare-fun b!5922815 () Bool)

(declare-fun tp!1646274 () Bool)

(declare-fun tp!1646275 () Bool)

(assert (=> b!5922815 (= e!3625846 (and tp!1646274 tp!1646275))))

(declare-fun b!5922816 () Bool)

(declare-fun tp!1646273 () Bool)

(assert (=> b!5922816 (= e!3625846 tp!1646273)))

(declare-fun b!5922814 () Bool)

(assert (=> b!5922814 (= e!3625846 tp_is_empty!41195)))

(declare-fun b!5922817 () Bool)

(declare-fun tp!1646271 () Bool)

(declare-fun tp!1646272 () Bool)

(assert (=> b!5922817 (= e!3625846 (and tp!1646271 tp!1646272))))

(assert (= (and b!5921670 ((_ is ElementMatch!15971) (regTwo!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922814))

(assert (= (and b!5921670 ((_ is Concat!24816) (regTwo!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922815))

(assert (= (and b!5921670 ((_ is Star!15971) (regTwo!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922816))

(assert (= (and b!5921670 ((_ is Union!15971) (regTwo!32454 (reg!16300 (regOne!32454 r!7292))))) b!5922817))

(declare-fun e!3625847 () Bool)

(assert (=> b!5921715 (= tp!1645998 e!3625847)))

(declare-fun b!5922819 () Bool)

(declare-fun tp!1646279 () Bool)

(declare-fun tp!1646280 () Bool)

(assert (=> b!5922819 (= e!3625847 (and tp!1646279 tp!1646280))))

(declare-fun b!5922820 () Bool)

(declare-fun tp!1646278 () Bool)

(assert (=> b!5922820 (= e!3625847 tp!1646278)))

(declare-fun b!5922818 () Bool)

(assert (=> b!5922818 (= e!3625847 tp_is_empty!41195)))

(declare-fun b!5922821 () Bool)

(declare-fun tp!1646276 () Bool)

(declare-fun tp!1646277 () Bool)

(assert (=> b!5922821 (= e!3625847 (and tp!1646276 tp!1646277))))

(assert (= (and b!5921715 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922818))

(assert (= (and b!5921715 ((_ is Concat!24816) (regOne!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922819))

(assert (= (and b!5921715 ((_ is Star!15971) (regOne!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922820))

(assert (= (and b!5921715 ((_ is Union!15971) (regOne!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922821))

(declare-fun e!3625848 () Bool)

(assert (=> b!5921715 (= tp!1645999 e!3625848)))

(declare-fun b!5922823 () Bool)

(declare-fun tp!1646284 () Bool)

(declare-fun tp!1646285 () Bool)

(assert (=> b!5922823 (= e!3625848 (and tp!1646284 tp!1646285))))

(declare-fun b!5922824 () Bool)

(declare-fun tp!1646283 () Bool)

(assert (=> b!5922824 (= e!3625848 tp!1646283)))

(declare-fun b!5922822 () Bool)

(assert (=> b!5922822 (= e!3625848 tp_is_empty!41195)))

(declare-fun b!5922825 () Bool)

(declare-fun tp!1646281 () Bool)

(declare-fun tp!1646282 () Bool)

(assert (=> b!5922825 (= e!3625848 (and tp!1646281 tp!1646282))))

(assert (= (and b!5921715 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922822))

(assert (= (and b!5921715 ((_ is Concat!24816) (regTwo!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922823))

(assert (= (and b!5921715 ((_ is Star!15971) (regTwo!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922824))

(assert (= (and b!5921715 ((_ is Union!15971) (regTwo!32455 (regTwo!32455 (regOne!32455 r!7292))))) b!5922825))

(declare-fun e!3625849 () Bool)

(assert (=> b!5921665 (= tp!1645955 e!3625849)))

(declare-fun b!5922827 () Bool)

(declare-fun tp!1646289 () Bool)

(declare-fun tp!1646290 () Bool)

(assert (=> b!5922827 (= e!3625849 (and tp!1646289 tp!1646290))))

(declare-fun b!5922828 () Bool)

(declare-fun tp!1646288 () Bool)

(assert (=> b!5922828 (= e!3625849 tp!1646288)))

(declare-fun b!5922826 () Bool)

(assert (=> b!5922826 (= e!3625849 tp_is_empty!41195)))

(declare-fun b!5922829 () Bool)

(declare-fun tp!1646286 () Bool)

(declare-fun tp!1646287 () Bool)

(assert (=> b!5922829 (= e!3625849 (and tp!1646286 tp!1646287))))

(assert (= (and b!5921665 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32455 (regOne!32454 r!7292))))) b!5922826))

(assert (= (and b!5921665 ((_ is Concat!24816) (reg!16300 (regTwo!32455 (regOne!32454 r!7292))))) b!5922827))

(assert (= (and b!5921665 ((_ is Star!15971) (reg!16300 (regTwo!32455 (regOne!32454 r!7292))))) b!5922828))

(assert (= (and b!5921665 ((_ is Union!15971) (reg!16300 (regTwo!32455 (regOne!32454 r!7292))))) b!5922829))

(declare-fun e!3625850 () Bool)

(assert (=> b!5921741 (= tp!1646022 e!3625850)))

(declare-fun b!5922831 () Bool)

(declare-fun tp!1646294 () Bool)

(declare-fun tp!1646295 () Bool)

(assert (=> b!5922831 (= e!3625850 (and tp!1646294 tp!1646295))))

(declare-fun b!5922832 () Bool)

(declare-fun tp!1646293 () Bool)

(assert (=> b!5922832 (= e!3625850 tp!1646293)))

(declare-fun b!5922830 () Bool)

(assert (=> b!5922830 (= e!3625850 tp_is_empty!41195)))

(declare-fun b!5922833 () Bool)

(declare-fun tp!1646291 () Bool)

(declare-fun tp!1646292 () Bool)

(assert (=> b!5922833 (= e!3625850 (and tp!1646291 tp!1646292))))

(assert (= (and b!5921741 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922830))

(assert (= (and b!5921741 ((_ is Concat!24816) (regOne!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922831))

(assert (= (and b!5921741 ((_ is Star!15971) (regOne!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922832))

(assert (= (and b!5921741 ((_ is Union!15971) (regOne!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922833))

(declare-fun e!3625851 () Bool)

(assert (=> b!5921741 (= tp!1646023 e!3625851)))

(declare-fun b!5922835 () Bool)

(declare-fun tp!1646299 () Bool)

(declare-fun tp!1646300 () Bool)

(assert (=> b!5922835 (= e!3625851 (and tp!1646299 tp!1646300))))

(declare-fun b!5922836 () Bool)

(declare-fun tp!1646298 () Bool)

(assert (=> b!5922836 (= e!3625851 tp!1646298)))

(declare-fun b!5922834 () Bool)

(assert (=> b!5922834 (= e!3625851 tp_is_empty!41195)))

(declare-fun b!5922837 () Bool)

(declare-fun tp!1646296 () Bool)

(declare-fun tp!1646297 () Bool)

(assert (=> b!5922837 (= e!3625851 (and tp!1646296 tp!1646297))))

(assert (= (and b!5921741 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922834))

(assert (= (and b!5921741 ((_ is Concat!24816) (regTwo!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922835))

(assert (= (and b!5921741 ((_ is Star!15971) (regTwo!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922836))

(assert (= (and b!5921741 ((_ is Union!15971) (regTwo!32454 (regOne!32455 (regTwo!32454 r!7292))))) b!5922837))

(declare-fun condSetEmpty!40192 () Bool)

(assert (=> setNonEmpty!40189 (= condSetEmpty!40192 (= setRest!40189 ((as const (Array Context!10710 Bool)) false)))))

(declare-fun setRes!40192 () Bool)

(assert (=> setNonEmpty!40189 (= tp!1645925 setRes!40192)))

(declare-fun setIsEmpty!40192 () Bool)

(assert (=> setIsEmpty!40192 setRes!40192))

(declare-fun e!3625852 () Bool)

(declare-fun tp!1646302 () Bool)

(declare-fun setNonEmpty!40192 () Bool)

(declare-fun setElem!40192 () Context!10710)

(assert (=> setNonEmpty!40192 (= setRes!40192 (and tp!1646302 (inv!83174 setElem!40192) e!3625852))))

(declare-fun setRest!40192 () (InoxSet Context!10710))

(assert (=> setNonEmpty!40192 (= setRest!40189 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) setElem!40192 true) setRest!40192))))

(declare-fun b!5922838 () Bool)

(declare-fun tp!1646301 () Bool)

(assert (=> b!5922838 (= e!3625852 tp!1646301)))

(assert (= (and setNonEmpty!40189 condSetEmpty!40192) setIsEmpty!40192))

(assert (= (and setNonEmpty!40189 (not condSetEmpty!40192)) setNonEmpty!40192))

(assert (= setNonEmpty!40192 b!5922838))

(declare-fun m!6818392 () Bool)

(assert (=> setNonEmpty!40192 m!6818392))

(declare-fun e!3625853 () Bool)

(assert (=> b!5921768 (= tp!1646056 e!3625853)))

(declare-fun b!5922840 () Bool)

(declare-fun tp!1646306 () Bool)

(declare-fun tp!1646307 () Bool)

(assert (=> b!5922840 (= e!3625853 (and tp!1646306 tp!1646307))))

(declare-fun b!5922841 () Bool)

(declare-fun tp!1646305 () Bool)

(assert (=> b!5922841 (= e!3625853 tp!1646305)))

(declare-fun b!5922839 () Bool)

(assert (=> b!5922839 (= e!3625853 tp_is_empty!41195)))

(declare-fun b!5922842 () Bool)

(declare-fun tp!1646303 () Bool)

(declare-fun tp!1646304 () Bool)

(assert (=> b!5922842 (= e!3625853 (and tp!1646303 tp!1646304))))

(assert (= (and b!5921768 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922839))

(assert (= (and b!5921768 ((_ is Concat!24816) (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922840))

(assert (= (and b!5921768 ((_ is Star!15971) (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922841))

(assert (= (and b!5921768 ((_ is Union!15971) (regOne!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922842))

(declare-fun e!3625854 () Bool)

(assert (=> b!5921768 (= tp!1646057 e!3625854)))

(declare-fun b!5922844 () Bool)

(declare-fun tp!1646311 () Bool)

(declare-fun tp!1646312 () Bool)

(assert (=> b!5922844 (= e!3625854 (and tp!1646311 tp!1646312))))

(declare-fun b!5922845 () Bool)

(declare-fun tp!1646310 () Bool)

(assert (=> b!5922845 (= e!3625854 tp!1646310)))

(declare-fun b!5922843 () Bool)

(assert (=> b!5922843 (= e!3625854 tp_is_empty!41195)))

(declare-fun b!5922846 () Bool)

(declare-fun tp!1646308 () Bool)

(declare-fun tp!1646309 () Bool)

(assert (=> b!5922846 (= e!3625854 (and tp!1646308 tp!1646309))))

(assert (= (and b!5921768 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922843))

(assert (= (and b!5921768 ((_ is Concat!24816) (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922844))

(assert (= (and b!5921768 ((_ is Star!15971) (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922845))

(assert (= (and b!5921768 ((_ is Union!15971) (regTwo!32454 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922846))

(declare-fun e!3625855 () Bool)

(assert (=> b!5921699 (= tp!1645978 e!3625855)))

(declare-fun b!5922848 () Bool)

(declare-fun tp!1646316 () Bool)

(declare-fun tp!1646317 () Bool)

(assert (=> b!5922848 (= e!3625855 (and tp!1646316 tp!1646317))))

(declare-fun b!5922849 () Bool)

(declare-fun tp!1646315 () Bool)

(assert (=> b!5922849 (= e!3625855 tp!1646315)))

(declare-fun b!5922847 () Bool)

(assert (=> b!5922847 (= e!3625855 tp_is_empty!41195)))

(declare-fun b!5922850 () Bool)

(declare-fun tp!1646313 () Bool)

(declare-fun tp!1646314 () Bool)

(assert (=> b!5922850 (= e!3625855 (and tp!1646313 tp!1646314))))

(assert (= (and b!5921699 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922847))

(assert (= (and b!5921699 ((_ is Concat!24816) (regOne!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922848))

(assert (= (and b!5921699 ((_ is Star!15971) (regOne!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922849))

(assert (= (and b!5921699 ((_ is Union!15971) (regOne!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922850))

(declare-fun e!3625856 () Bool)

(assert (=> b!5921699 (= tp!1645979 e!3625856)))

(declare-fun b!5922852 () Bool)

(declare-fun tp!1646321 () Bool)

(declare-fun tp!1646322 () Bool)

(assert (=> b!5922852 (= e!3625856 (and tp!1646321 tp!1646322))))

(declare-fun b!5922853 () Bool)

(declare-fun tp!1646320 () Bool)

(assert (=> b!5922853 (= e!3625856 tp!1646320)))

(declare-fun b!5922851 () Bool)

(assert (=> b!5922851 (= e!3625856 tp_is_empty!41195)))

(declare-fun b!5922854 () Bool)

(declare-fun tp!1646318 () Bool)

(declare-fun tp!1646319 () Bool)

(assert (=> b!5922854 (= e!3625856 (and tp!1646318 tp!1646319))))

(assert (= (and b!5921699 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922851))

(assert (= (and b!5921699 ((_ is Concat!24816) (regTwo!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922852))

(assert (= (and b!5921699 ((_ is Star!15971) (regTwo!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922853))

(assert (= (and b!5921699 ((_ is Union!15971) (regTwo!32455 (regOne!32455 (reg!16300 r!7292))))) b!5922854))

(declare-fun b!5922856 () Bool)

(declare-fun e!3625858 () Bool)

(declare-fun tp!1646323 () Bool)

(assert (=> b!5922856 (= e!3625858 tp!1646323)))

(declare-fun b!5922855 () Bool)

(declare-fun e!3625857 () Bool)

(declare-fun tp!1646324 () Bool)

(assert (=> b!5922855 (= e!3625857 (and (inv!83174 (h!70537 (t!377604 (t!377604 (t!377604 zl!343))))) e!3625858 tp!1646324))))

(assert (=> b!5921748 (= tp!1646030 e!3625857)))

(assert (= b!5922855 b!5922856))

(assert (= (and b!5921748 ((_ is Cons!64089) (t!377604 (t!377604 (t!377604 zl!343))))) b!5922855))

(declare-fun m!6818394 () Bool)

(assert (=> b!5922855 m!6818394))

(declare-fun e!3625859 () Bool)

(assert (=> b!5921637 (= tp!1645917 e!3625859)))

(declare-fun b!5922858 () Bool)

(declare-fun tp!1646328 () Bool)

(declare-fun tp!1646329 () Bool)

(assert (=> b!5922858 (= e!3625859 (and tp!1646328 tp!1646329))))

(declare-fun b!5922859 () Bool)

(declare-fun tp!1646327 () Bool)

(assert (=> b!5922859 (= e!3625859 tp!1646327)))

(declare-fun b!5922857 () Bool)

(assert (=> b!5922857 (= e!3625859 tp_is_empty!41195)))

(declare-fun b!5922860 () Bool)

(declare-fun tp!1646325 () Bool)

(declare-fun tp!1646326 () Bool)

(assert (=> b!5922860 (= e!3625859 (and tp!1646325 tp!1646326))))

(assert (= (and b!5921637 ((_ is ElementMatch!15971) (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922857))

(assert (= (and b!5921637 ((_ is Concat!24816) (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922858))

(assert (= (and b!5921637 ((_ is Star!15971) (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922859))

(assert (= (and b!5921637 ((_ is Union!15971) (regOne!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922860))

(declare-fun e!3625860 () Bool)

(assert (=> b!5921637 (= tp!1645918 e!3625860)))

(declare-fun b!5922862 () Bool)

(declare-fun tp!1646333 () Bool)

(declare-fun tp!1646334 () Bool)

(assert (=> b!5922862 (= e!3625860 (and tp!1646333 tp!1646334))))

(declare-fun b!5922863 () Bool)

(declare-fun tp!1646332 () Bool)

(assert (=> b!5922863 (= e!3625860 tp!1646332)))

(declare-fun b!5922861 () Bool)

(assert (=> b!5922861 (= e!3625860 tp_is_empty!41195)))

(declare-fun b!5922864 () Bool)

(declare-fun tp!1646330 () Bool)

(declare-fun tp!1646331 () Bool)

(assert (=> b!5922864 (= e!3625860 (and tp!1646330 tp!1646331))))

(assert (= (and b!5921637 ((_ is ElementMatch!15971) (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922861))

(assert (= (and b!5921637 ((_ is Concat!24816) (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922862))

(assert (= (and b!5921637 ((_ is Star!15971) (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922863))

(assert (= (and b!5921637 ((_ is Union!15971) (regTwo!32455 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922864))

(declare-fun b!5922865 () Bool)

(declare-fun e!3625861 () Bool)

(declare-fun tp!1646335 () Bool)

(declare-fun tp!1646336 () Bool)

(assert (=> b!5922865 (= e!3625861 (and tp!1646335 tp!1646336))))

(assert (=> b!5921510 (= tp!1645915 e!3625861)))

(assert (= (and b!5921510 ((_ is Cons!64088) (exprs!5855 (h!70537 res!2482187)))) b!5922865))

(declare-fun e!3625862 () Bool)

(assert (=> b!5921718 (= tp!1646005 e!3625862)))

(declare-fun b!5922867 () Bool)

(declare-fun tp!1646340 () Bool)

(declare-fun tp!1646341 () Bool)

(assert (=> b!5922867 (= e!3625862 (and tp!1646340 tp!1646341))))

(declare-fun b!5922868 () Bool)

(declare-fun tp!1646339 () Bool)

(assert (=> b!5922868 (= e!3625862 tp!1646339)))

(declare-fun b!5922866 () Bool)

(assert (=> b!5922866 (= e!3625862 tp_is_empty!41195)))

(declare-fun b!5922869 () Bool)

(declare-fun tp!1646337 () Bool)

(declare-fun tp!1646338 () Bool)

(assert (=> b!5922869 (= e!3625862 (and tp!1646337 tp!1646338))))

(assert (= (and b!5921718 ((_ is ElementMatch!15971) (reg!16300 (regOne!32454 (regTwo!32454 r!7292))))) b!5922866))

(assert (= (and b!5921718 ((_ is Concat!24816) (reg!16300 (regOne!32454 (regTwo!32454 r!7292))))) b!5922867))

(assert (= (and b!5921718 ((_ is Star!15971) (reg!16300 (regOne!32454 (regTwo!32454 r!7292))))) b!5922868))

(assert (= (and b!5921718 ((_ is Union!15971) (reg!16300 (regOne!32454 (regTwo!32454 r!7292))))) b!5922869))

(declare-fun e!3625863 () Bool)

(assert (=> b!5921660 (= tp!1645951 e!3625863)))

(declare-fun b!5922871 () Bool)

(declare-fun tp!1646345 () Bool)

(declare-fun tp!1646346 () Bool)

(assert (=> b!5922871 (= e!3625863 (and tp!1646345 tp!1646346))))

(declare-fun b!5922872 () Bool)

(declare-fun tp!1646344 () Bool)

(assert (=> b!5922872 (= e!3625863 tp!1646344)))

(declare-fun b!5922870 () Bool)

(assert (=> b!5922870 (= e!3625863 tp_is_empty!41195)))

(declare-fun b!5922873 () Bool)

(declare-fun tp!1646342 () Bool)

(declare-fun tp!1646343 () Bool)

(assert (=> b!5922873 (= e!3625863 (and tp!1646342 tp!1646343))))

(assert (= (and b!5921660 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922870))

(assert (= (and b!5921660 ((_ is Concat!24816) (regOne!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922871))

(assert (= (and b!5921660 ((_ is Star!15971) (regOne!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922872))

(assert (= (and b!5921660 ((_ is Union!15971) (regOne!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922873))

(declare-fun e!3625864 () Bool)

(assert (=> b!5921660 (= tp!1645952 e!3625864)))

(declare-fun b!5922875 () Bool)

(declare-fun tp!1646350 () Bool)

(declare-fun tp!1646351 () Bool)

(assert (=> b!5922875 (= e!3625864 (and tp!1646350 tp!1646351))))

(declare-fun b!5922876 () Bool)

(declare-fun tp!1646349 () Bool)

(assert (=> b!5922876 (= e!3625864 tp!1646349)))

(declare-fun b!5922874 () Bool)

(assert (=> b!5922874 (= e!3625864 tp_is_empty!41195)))

(declare-fun b!5922877 () Bool)

(declare-fun tp!1646347 () Bool)

(declare-fun tp!1646348 () Bool)

(assert (=> b!5922877 (= e!3625864 (and tp!1646347 tp!1646348))))

(assert (= (and b!5921660 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922874))

(assert (= (and b!5921660 ((_ is Concat!24816) (regTwo!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922875))

(assert (= (and b!5921660 ((_ is Star!15971) (regTwo!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922876))

(assert (= (and b!5921660 ((_ is Union!15971) (regTwo!32454 (regOne!32455 (regOne!32454 r!7292))))) b!5922877))

(declare-fun e!3625865 () Bool)

(assert (=> b!5921648 (= tp!1645933 e!3625865)))

(declare-fun b!5922879 () Bool)

(declare-fun tp!1646355 () Bool)

(declare-fun tp!1646356 () Bool)

(assert (=> b!5922879 (= e!3625865 (and tp!1646355 tp!1646356))))

(declare-fun b!5922880 () Bool)

(declare-fun tp!1646354 () Bool)

(assert (=> b!5922880 (= e!3625865 tp!1646354)))

(declare-fun b!5922878 () Bool)

(assert (=> b!5922878 (= e!3625865 tp_is_empty!41195)))

(declare-fun b!5922881 () Bool)

(declare-fun tp!1646352 () Bool)

(declare-fun tp!1646353 () Bool)

(assert (=> b!5922881 (= e!3625865 (and tp!1646352 tp!1646353))))

(assert (= (and b!5921648 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922878))

(assert (= (and b!5921648 ((_ is Concat!24816) (regOne!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922879))

(assert (= (and b!5921648 ((_ is Star!15971) (regOne!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922880))

(assert (= (and b!5921648 ((_ is Union!15971) (regOne!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922881))

(declare-fun e!3625866 () Bool)

(assert (=> b!5921648 (= tp!1645934 e!3625866)))

(declare-fun b!5922883 () Bool)

(declare-fun tp!1646360 () Bool)

(declare-fun tp!1646361 () Bool)

(assert (=> b!5922883 (= e!3625866 (and tp!1646360 tp!1646361))))

(declare-fun b!5922884 () Bool)

(declare-fun tp!1646359 () Bool)

(assert (=> b!5922884 (= e!3625866 tp!1646359)))

(declare-fun b!5922882 () Bool)

(assert (=> b!5922882 (= e!3625866 tp_is_empty!41195)))

(declare-fun b!5922885 () Bool)

(declare-fun tp!1646357 () Bool)

(declare-fun tp!1646358 () Bool)

(assert (=> b!5922885 (= e!3625866 (and tp!1646357 tp!1646358))))

(assert (= (and b!5921648 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922882))

(assert (= (and b!5921648 ((_ is Concat!24816) (regTwo!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922883))

(assert (= (and b!5921648 ((_ is Star!15971) (regTwo!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922884))

(assert (= (and b!5921648 ((_ is Union!15971) (regTwo!32455 (regTwo!32454 (reg!16300 r!7292))))) b!5922885))

(declare-fun e!3625867 () Bool)

(assert (=> b!5921739 (= tp!1646014 e!3625867)))

(declare-fun b!5922887 () Bool)

(declare-fun tp!1646365 () Bool)

(declare-fun tp!1646366 () Bool)

(assert (=> b!5922887 (= e!3625867 (and tp!1646365 tp!1646366))))

(declare-fun b!5922888 () Bool)

(declare-fun tp!1646364 () Bool)

(assert (=> b!5922888 (= e!3625867 tp!1646364)))

(declare-fun b!5922886 () Bool)

(assert (=> b!5922886 (= e!3625867 tp_is_empty!41195)))

(declare-fun b!5922889 () Bool)

(declare-fun tp!1646362 () Bool)

(declare-fun tp!1646363 () Bool)

(assert (=> b!5922889 (= e!3625867 (and tp!1646362 tp!1646363))))

(assert (= (and b!5921739 ((_ is ElementMatch!15971) (regOne!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922886))

(assert (= (and b!5921739 ((_ is Concat!24816) (regOne!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922887))

(assert (= (and b!5921739 ((_ is Star!15971) (regOne!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922888))

(assert (= (and b!5921739 ((_ is Union!15971) (regOne!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922889))

(declare-fun e!3625868 () Bool)

(assert (=> b!5921739 (= tp!1646015 e!3625868)))

(declare-fun b!5922891 () Bool)

(declare-fun tp!1646370 () Bool)

(declare-fun tp!1646371 () Bool)

(assert (=> b!5922891 (= e!3625868 (and tp!1646370 tp!1646371))))

(declare-fun b!5922892 () Bool)

(declare-fun tp!1646369 () Bool)

(assert (=> b!5922892 (= e!3625868 tp!1646369)))

(declare-fun b!5922890 () Bool)

(assert (=> b!5922890 (= e!3625868 tp_is_empty!41195)))

(declare-fun b!5922893 () Bool)

(declare-fun tp!1646367 () Bool)

(declare-fun tp!1646368 () Bool)

(assert (=> b!5922893 (= e!3625868 (and tp!1646367 tp!1646368))))

(assert (= (and b!5921739 ((_ is ElementMatch!15971) (regTwo!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922890))

(assert (= (and b!5921739 ((_ is Concat!24816) (regTwo!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922891))

(assert (= (and b!5921739 ((_ is Star!15971) (regTwo!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922892))

(assert (= (and b!5921739 ((_ is Union!15971) (regTwo!32455 (reg!16300 (regTwo!32454 r!7292))))) b!5922893))

(declare-fun e!3625869 () Bool)

(assert (=> b!5921766 (= tp!1646048 e!3625869)))

(declare-fun b!5922895 () Bool)

(declare-fun tp!1646375 () Bool)

(declare-fun tp!1646376 () Bool)

(assert (=> b!5922895 (= e!3625869 (and tp!1646375 tp!1646376))))

(declare-fun b!5922896 () Bool)

(declare-fun tp!1646374 () Bool)

(assert (=> b!5922896 (= e!3625869 tp!1646374)))

(declare-fun b!5922894 () Bool)

(assert (=> b!5922894 (= e!3625869 tp_is_empty!41195)))

(declare-fun b!5922897 () Bool)

(declare-fun tp!1646372 () Bool)

(declare-fun tp!1646373 () Bool)

(assert (=> b!5922897 (= e!3625869 (and tp!1646372 tp!1646373))))

(assert (= (and b!5921766 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922894))

(assert (= (and b!5921766 ((_ is Concat!24816) (regOne!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922895))

(assert (= (and b!5921766 ((_ is Star!15971) (regOne!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922896))

(assert (= (and b!5921766 ((_ is Union!15971) (regOne!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922897))

(declare-fun e!3625870 () Bool)

(assert (=> b!5921766 (= tp!1646049 e!3625870)))

(declare-fun b!5922899 () Bool)

(declare-fun tp!1646380 () Bool)

(declare-fun tp!1646381 () Bool)

(assert (=> b!5922899 (= e!3625870 (and tp!1646380 tp!1646381))))

(declare-fun b!5922900 () Bool)

(declare-fun tp!1646379 () Bool)

(assert (=> b!5922900 (= e!3625870 tp!1646379)))

(declare-fun b!5922898 () Bool)

(assert (=> b!5922898 (= e!3625870 tp_is_empty!41195)))

(declare-fun b!5922901 () Bool)

(declare-fun tp!1646377 () Bool)

(declare-fun tp!1646378 () Bool)

(assert (=> b!5922901 (= e!3625870 (and tp!1646377 tp!1646378))))

(assert (= (and b!5921766 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922898))

(assert (= (and b!5921766 ((_ is Concat!24816) (regTwo!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922899))

(assert (= (and b!5921766 ((_ is Star!15971) (regTwo!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922900))

(assert (= (and b!5921766 ((_ is Union!15971) (regTwo!32455 (regOne!32455 (regTwo!32455 r!7292))))) b!5922901))

(declare-fun e!3625871 () Bool)

(assert (=> b!5921695 (= tp!1645973 e!3625871)))

(declare-fun b!5922903 () Bool)

(declare-fun tp!1646385 () Bool)

(declare-fun tp!1646386 () Bool)

(assert (=> b!5922903 (= e!3625871 (and tp!1646385 tp!1646386))))

(declare-fun b!5922904 () Bool)

(declare-fun tp!1646384 () Bool)

(assert (=> b!5922904 (= e!3625871 tp!1646384)))

(declare-fun b!5922902 () Bool)

(assert (=> b!5922902 (= e!3625871 tp_is_empty!41195)))

(declare-fun b!5922905 () Bool)

(declare-fun tp!1646382 () Bool)

(declare-fun tp!1646383 () Bool)

(assert (=> b!5922905 (= e!3625871 (and tp!1646382 tp!1646383))))

(assert (= (and b!5921695 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922902))

(assert (= (and b!5921695 ((_ is Concat!24816) (regOne!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922903))

(assert (= (and b!5921695 ((_ is Star!15971) (regOne!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922904))

(assert (= (and b!5921695 ((_ is Union!15971) (regOne!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922905))

(declare-fun e!3625872 () Bool)

(assert (=> b!5921695 (= tp!1645974 e!3625872)))

(declare-fun b!5922907 () Bool)

(declare-fun tp!1646390 () Bool)

(declare-fun tp!1646391 () Bool)

(assert (=> b!5922907 (= e!3625872 (and tp!1646390 tp!1646391))))

(declare-fun b!5922908 () Bool)

(declare-fun tp!1646389 () Bool)

(assert (=> b!5922908 (= e!3625872 tp!1646389)))

(declare-fun b!5922906 () Bool)

(assert (=> b!5922906 (= e!3625872 tp_is_empty!41195)))

(declare-fun b!5922909 () Bool)

(declare-fun tp!1646387 () Bool)

(declare-fun tp!1646388 () Bool)

(assert (=> b!5922909 (= e!3625872 (and tp!1646387 tp!1646388))))

(assert (= (and b!5921695 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922906))

(assert (= (and b!5921695 ((_ is Concat!24816) (regTwo!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922907))

(assert (= (and b!5921695 ((_ is Star!15971) (regTwo!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922908))

(assert (= (and b!5921695 ((_ is Union!15971) (regTwo!32455 (regTwo!32454 (regOne!32455 r!7292))))) b!5922909))

(declare-fun e!3625873 () Bool)

(assert (=> b!5921772 (= tp!1646061 e!3625873)))

(declare-fun b!5922911 () Bool)

(declare-fun tp!1646395 () Bool)

(declare-fun tp!1646396 () Bool)

(assert (=> b!5922911 (= e!3625873 (and tp!1646395 tp!1646396))))

(declare-fun b!5922912 () Bool)

(declare-fun tp!1646394 () Bool)

(assert (=> b!5922912 (= e!3625873 tp!1646394)))

(declare-fun b!5922910 () Bool)

(assert (=> b!5922910 (= e!3625873 tp_is_empty!41195)))

(declare-fun b!5922913 () Bool)

(declare-fun tp!1646392 () Bool)

(declare-fun tp!1646393 () Bool)

(assert (=> b!5922913 (= e!3625873 (and tp!1646392 tp!1646393))))

(assert (= (and b!5921772 ((_ is ElementMatch!15971) (regOne!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922910))

(assert (= (and b!5921772 ((_ is Concat!24816) (regOne!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922911))

(assert (= (and b!5921772 ((_ is Star!15971) (regOne!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922912))

(assert (= (and b!5921772 ((_ is Union!15971) (regOne!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922913))

(declare-fun e!3625874 () Bool)

(assert (=> b!5921772 (= tp!1646062 e!3625874)))

(declare-fun b!5922915 () Bool)

(declare-fun tp!1646400 () Bool)

(declare-fun tp!1646401 () Bool)

(assert (=> b!5922915 (= e!3625874 (and tp!1646400 tp!1646401))))

(declare-fun b!5922916 () Bool)

(declare-fun tp!1646399 () Bool)

(assert (=> b!5922916 (= e!3625874 tp!1646399)))

(declare-fun b!5922914 () Bool)

(assert (=> b!5922914 (= e!3625874 tp_is_empty!41195)))

(declare-fun b!5922917 () Bool)

(declare-fun tp!1646397 () Bool)

(declare-fun tp!1646398 () Bool)

(assert (=> b!5922917 (= e!3625874 (and tp!1646397 tp!1646398))))

(assert (= (and b!5921772 ((_ is ElementMatch!15971) (regTwo!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922914))

(assert (= (and b!5921772 ((_ is Concat!24816) (regTwo!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922915))

(assert (= (and b!5921772 ((_ is Star!15971) (regTwo!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922916))

(assert (= (and b!5921772 ((_ is Union!15971) (regTwo!32454 (reg!16300 (regTwo!32455 r!7292))))) b!5922917))

(declare-fun b!5922918 () Bool)

(declare-fun e!3625875 () Bool)

(declare-fun tp!1646402 () Bool)

(declare-fun tp!1646403 () Bool)

(assert (=> b!5922918 (= e!3625875 (and tp!1646402 tp!1646403))))

(assert (=> b!5921474 (= tp!1645904 e!3625875)))

(assert (= (and b!5921474 ((_ is Cons!64088) (exprs!5855 setElem!40185))) b!5922918))

(declare-fun e!3625876 () Bool)

(assert (=> b!5921676 (= tp!1645963 e!3625876)))

(declare-fun b!5922920 () Bool)

(declare-fun tp!1646407 () Bool)

(declare-fun tp!1646408 () Bool)

(assert (=> b!5922920 (= e!3625876 (and tp!1646407 tp!1646408))))

(declare-fun b!5922921 () Bool)

(declare-fun tp!1646406 () Bool)

(assert (=> b!5922921 (= e!3625876 tp!1646406)))

(declare-fun b!5922919 () Bool)

(assert (=> b!5922919 (= e!3625876 tp_is_empty!41195)))

(declare-fun b!5922922 () Bool)

(declare-fun tp!1646404 () Bool)

(declare-fun tp!1646405 () Bool)

(assert (=> b!5922922 (= e!3625876 (and tp!1646404 tp!1646405))))

(assert (= (and b!5921676 ((_ is ElementMatch!15971) (regOne!32455 (reg!16300 (reg!16300 r!7292))))) b!5922919))

(assert (= (and b!5921676 ((_ is Concat!24816) (regOne!32455 (reg!16300 (reg!16300 r!7292))))) b!5922920))

(assert (= (and b!5921676 ((_ is Star!15971) (regOne!32455 (reg!16300 (reg!16300 r!7292))))) b!5922921))

(assert (= (and b!5921676 ((_ is Union!15971) (regOne!32455 (reg!16300 (reg!16300 r!7292))))) b!5922922))

(declare-fun e!3625877 () Bool)

(assert (=> b!5921676 (= tp!1645964 e!3625877)))

(declare-fun b!5922924 () Bool)

(declare-fun tp!1646412 () Bool)

(declare-fun tp!1646413 () Bool)

(assert (=> b!5922924 (= e!3625877 (and tp!1646412 tp!1646413))))

(declare-fun b!5922925 () Bool)

(declare-fun tp!1646411 () Bool)

(assert (=> b!5922925 (= e!3625877 tp!1646411)))

(declare-fun b!5922923 () Bool)

(assert (=> b!5922923 (= e!3625877 tp_is_empty!41195)))

(declare-fun b!5922926 () Bool)

(declare-fun tp!1646409 () Bool)

(declare-fun tp!1646410 () Bool)

(assert (=> b!5922926 (= e!3625877 (and tp!1646409 tp!1646410))))

(assert (= (and b!5921676 ((_ is ElementMatch!15971) (regTwo!32455 (reg!16300 (reg!16300 r!7292))))) b!5922923))

(assert (= (and b!5921676 ((_ is Concat!24816) (regTwo!32455 (reg!16300 (reg!16300 r!7292))))) b!5922924))

(assert (= (and b!5921676 ((_ is Star!15971) (regTwo!32455 (reg!16300 (reg!16300 r!7292))))) b!5922925))

(assert (= (and b!5921676 ((_ is Union!15971) (regTwo!32455 (reg!16300 (reg!16300 r!7292))))) b!5922926))

(declare-fun e!3625878 () Bool)

(assert (=> b!5921753 (= tp!1646031 e!3625878)))

(declare-fun b!5922928 () Bool)

(declare-fun tp!1646417 () Bool)

(declare-fun tp!1646418 () Bool)

(assert (=> b!5922928 (= e!3625878 (and tp!1646417 tp!1646418))))

(declare-fun b!5922929 () Bool)

(declare-fun tp!1646416 () Bool)

(assert (=> b!5922929 (= e!3625878 tp!1646416)))

(declare-fun b!5922927 () Bool)

(assert (=> b!5922927 (= e!3625878 tp_is_empty!41195)))

(declare-fun b!5922930 () Bool)

(declare-fun tp!1646414 () Bool)

(declare-fun tp!1646415 () Bool)

(assert (=> b!5922930 (= e!3625878 (and tp!1646414 tp!1646415))))

(assert (= (and b!5921753 ((_ is ElementMatch!15971) (regOne!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922927))

(assert (= (and b!5921753 ((_ is Concat!24816) (regOne!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922928))

(assert (= (and b!5921753 ((_ is Star!15971) (regOne!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922929))

(assert (= (and b!5921753 ((_ is Union!15971) (regOne!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922930))

(declare-fun e!3625879 () Bool)

(assert (=> b!5921753 (= tp!1646032 e!3625879)))

(declare-fun b!5922932 () Bool)

(declare-fun tp!1646422 () Bool)

(declare-fun tp!1646423 () Bool)

(assert (=> b!5922932 (= e!3625879 (and tp!1646422 tp!1646423))))

(declare-fun b!5922933 () Bool)

(declare-fun tp!1646421 () Bool)

(assert (=> b!5922933 (= e!3625879 tp!1646421)))

(declare-fun b!5922931 () Bool)

(assert (=> b!5922931 (= e!3625879 tp_is_empty!41195)))

(declare-fun b!5922934 () Bool)

(declare-fun tp!1646419 () Bool)

(declare-fun tp!1646420 () Bool)

(assert (=> b!5922934 (= e!3625879 (and tp!1646419 tp!1646420))))

(assert (= (and b!5921753 ((_ is ElementMatch!15971) (regTwo!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922931))

(assert (= (and b!5921753 ((_ is Concat!24816) (regTwo!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922932))

(assert (= (and b!5921753 ((_ is Star!15971) (regTwo!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922933))

(assert (= (and b!5921753 ((_ is Union!15971) (regTwo!32455 (h!70536 (exprs!5855 setElem!40176))))) b!5922934))

(declare-fun e!3625880 () Bool)

(assert (=> b!5921757 (= tp!1646040 e!3625880)))

(declare-fun b!5922936 () Bool)

(declare-fun tp!1646427 () Bool)

(declare-fun tp!1646428 () Bool)

(assert (=> b!5922936 (= e!3625880 (and tp!1646427 tp!1646428))))

(declare-fun b!5922937 () Bool)

(declare-fun tp!1646426 () Bool)

(assert (=> b!5922937 (= e!3625880 tp!1646426)))

(declare-fun b!5922935 () Bool)

(assert (=> b!5922935 (= e!3625880 tp_is_empty!41195)))

(declare-fun b!5922938 () Bool)

(declare-fun tp!1646424 () Bool)

(declare-fun tp!1646425 () Bool)

(assert (=> b!5922938 (= e!3625880 (and tp!1646424 tp!1646425))))

(assert (= (and b!5921757 ((_ is ElementMatch!15971) (reg!16300 (regOne!32454 (regTwo!32455 r!7292))))) b!5922935))

(assert (= (and b!5921757 ((_ is Concat!24816) (reg!16300 (regOne!32454 (regTwo!32455 r!7292))))) b!5922936))

(assert (= (and b!5921757 ((_ is Star!15971) (reg!16300 (regOne!32454 (regTwo!32455 r!7292))))) b!5922937))

(assert (= (and b!5921757 ((_ is Union!15971) (reg!16300 (regOne!32454 (regTwo!32455 r!7292))))) b!5922938))

(declare-fun e!3625881 () Bool)

(assert (=> b!5921702 (= tp!1645985 e!3625881)))

(declare-fun b!5922940 () Bool)

(declare-fun tp!1646432 () Bool)

(declare-fun tp!1646433 () Bool)

(assert (=> b!5922940 (= e!3625881 (and tp!1646432 tp!1646433))))

(declare-fun b!5922941 () Bool)

(declare-fun tp!1646431 () Bool)

(assert (=> b!5922941 (= e!3625881 tp!1646431)))

(declare-fun b!5922939 () Bool)

(assert (=> b!5922939 (= e!3625881 tp_is_empty!41195)))

(declare-fun b!5922942 () Bool)

(declare-fun tp!1646429 () Bool)

(declare-fun tp!1646430 () Bool)

(assert (=> b!5922942 (= e!3625881 (and tp!1646429 tp!1646430))))

(assert (= (and b!5921702 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32455 (reg!16300 r!7292))))) b!5922939))

(assert (= (and b!5921702 ((_ is Concat!24816) (reg!16300 (regTwo!32455 (reg!16300 r!7292))))) b!5922940))

(assert (= (and b!5921702 ((_ is Star!15971) (reg!16300 (regTwo!32455 (reg!16300 r!7292))))) b!5922941))

(assert (= (and b!5921702 ((_ is Union!15971) (reg!16300 (regTwo!32455 (reg!16300 r!7292))))) b!5922942))

(declare-fun e!3625882 () Bool)

(assert (=> b!5921711 (= tp!1645993 e!3625882)))

(declare-fun b!5922944 () Bool)

(declare-fun tp!1646437 () Bool)

(declare-fun tp!1646438 () Bool)

(assert (=> b!5922944 (= e!3625882 (and tp!1646437 tp!1646438))))

(declare-fun b!5922945 () Bool)

(declare-fun tp!1646436 () Bool)

(assert (=> b!5922945 (= e!3625882 tp!1646436)))

(declare-fun b!5922943 () Bool)

(assert (=> b!5922943 (= e!3625882 tp_is_empty!41195)))

(declare-fun b!5922946 () Bool)

(declare-fun tp!1646434 () Bool)

(declare-fun tp!1646435 () Bool)

(assert (=> b!5922946 (= e!3625882 (and tp!1646434 tp!1646435))))

(assert (= (and b!5921711 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922943))

(assert (= (and b!5921711 ((_ is Concat!24816) (regOne!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922944))

(assert (= (and b!5921711 ((_ is Star!15971) (regOne!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922945))

(assert (= (and b!5921711 ((_ is Union!15971) (regOne!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922946))

(declare-fun e!3625883 () Bool)

(assert (=> b!5921711 (= tp!1645994 e!3625883)))

(declare-fun b!5922948 () Bool)

(declare-fun tp!1646442 () Bool)

(declare-fun tp!1646443 () Bool)

(assert (=> b!5922948 (= e!3625883 (and tp!1646442 tp!1646443))))

(declare-fun b!5922949 () Bool)

(declare-fun tp!1646441 () Bool)

(assert (=> b!5922949 (= e!3625883 tp!1646441)))

(declare-fun b!5922947 () Bool)

(assert (=> b!5922947 (= e!3625883 tp_is_empty!41195)))

(declare-fun b!5922950 () Bool)

(declare-fun tp!1646439 () Bool)

(declare-fun tp!1646440 () Bool)

(assert (=> b!5922950 (= e!3625883 (and tp!1646439 tp!1646440))))

(assert (= (and b!5921711 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922947))

(assert (= (and b!5921711 ((_ is Concat!24816) (regTwo!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922948))

(assert (= (and b!5921711 ((_ is Star!15971) (regTwo!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922949))

(assert (= (and b!5921711 ((_ is Union!15971) (regTwo!32455 (regOne!32455 (regOne!32455 r!7292))))) b!5922950))

(declare-fun e!3625884 () Bool)

(assert (=> b!5921721 (= tp!1646011 e!3625884)))

(declare-fun b!5922952 () Bool)

(declare-fun tp!1646447 () Bool)

(declare-fun tp!1646448 () Bool)

(assert (=> b!5922952 (= e!3625884 (and tp!1646447 tp!1646448))))

(declare-fun b!5922953 () Bool)

(declare-fun tp!1646446 () Bool)

(assert (=> b!5922953 (= e!3625884 tp!1646446)))

(declare-fun b!5922951 () Bool)

(assert (=> b!5922951 (= e!3625884 tp_is_empty!41195)))

(declare-fun b!5922954 () Bool)

(declare-fun tp!1646444 () Bool)

(declare-fun tp!1646445 () Bool)

(assert (=> b!5922954 (= e!3625884 (and tp!1646444 tp!1646445))))

(assert (= (and b!5921721 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922951))

(assert (= (and b!5921721 ((_ is Concat!24816) (regOne!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922952))

(assert (= (and b!5921721 ((_ is Star!15971) (regOne!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922953))

(assert (= (and b!5921721 ((_ is Union!15971) (regOne!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922954))

(declare-fun e!3625885 () Bool)

(assert (=> b!5921721 (= tp!1646012 e!3625885)))

(declare-fun b!5922956 () Bool)

(declare-fun tp!1646452 () Bool)

(declare-fun tp!1646453 () Bool)

(assert (=> b!5922956 (= e!3625885 (and tp!1646452 tp!1646453))))

(declare-fun b!5922957 () Bool)

(declare-fun tp!1646451 () Bool)

(assert (=> b!5922957 (= e!3625885 tp!1646451)))

(declare-fun b!5922955 () Bool)

(assert (=> b!5922955 (= e!3625885 tp_is_empty!41195)))

(declare-fun b!5922958 () Bool)

(declare-fun tp!1646449 () Bool)

(declare-fun tp!1646450 () Bool)

(assert (=> b!5922958 (= e!3625885 (and tp!1646449 tp!1646450))))

(assert (= (and b!5921721 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922955))

(assert (= (and b!5921721 ((_ is Concat!24816) (regTwo!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922956))

(assert (= (and b!5921721 ((_ is Star!15971) (regTwo!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922957))

(assert (= (and b!5921721 ((_ is Union!15971) (regTwo!32454 (regTwo!32454 (regTwo!32454 r!7292))))) b!5922958))

(declare-fun e!3625886 () Bool)

(assert (=> b!5921650 (= tp!1645941 e!3625886)))

(declare-fun b!5922960 () Bool)

(declare-fun tp!1646457 () Bool)

(declare-fun tp!1646458 () Bool)

(assert (=> b!5922960 (= e!3625886 (and tp!1646457 tp!1646458))))

(declare-fun b!5922961 () Bool)

(declare-fun tp!1646456 () Bool)

(assert (=> b!5922961 (= e!3625886 tp!1646456)))

(declare-fun b!5922959 () Bool)

(assert (=> b!5922959 (= e!3625886 tp_is_empty!41195)))

(declare-fun b!5922962 () Bool)

(declare-fun tp!1646454 () Bool)

(declare-fun tp!1646455 () Bool)

(assert (=> b!5922962 (= e!3625886 (and tp!1646454 tp!1646455))))

(assert (= (and b!5921650 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922959))

(assert (= (and b!5921650 ((_ is Concat!24816) (regOne!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922960))

(assert (= (and b!5921650 ((_ is Star!15971) (regOne!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922961))

(assert (= (and b!5921650 ((_ is Union!15971) (regOne!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922962))

(declare-fun e!3625887 () Bool)

(assert (=> b!5921650 (= tp!1645942 e!3625887)))

(declare-fun b!5922964 () Bool)

(declare-fun tp!1646462 () Bool)

(declare-fun tp!1646463 () Bool)

(assert (=> b!5922964 (= e!3625887 (and tp!1646462 tp!1646463))))

(declare-fun b!5922965 () Bool)

(declare-fun tp!1646461 () Bool)

(assert (=> b!5922965 (= e!3625887 tp!1646461)))

(declare-fun b!5922963 () Bool)

(assert (=> b!5922963 (= e!3625887 tp_is_empty!41195)))

(declare-fun b!5922966 () Bool)

(declare-fun tp!1646459 () Bool)

(declare-fun tp!1646460 () Bool)

(assert (=> b!5922966 (= e!3625887 (and tp!1646459 tp!1646460))))

(assert (= (and b!5921650 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922963))

(assert (= (and b!5921650 ((_ is Concat!24816) (regTwo!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922964))

(assert (= (and b!5921650 ((_ is Star!15971) (regTwo!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922965))

(assert (= (and b!5921650 ((_ is Union!15971) (regTwo!32454 (regOne!32454 (regOne!32454 r!7292))))) b!5922966))

(declare-fun e!3625888 () Bool)

(assert (=> b!5921664 (= tp!1645956 e!3625888)))

(declare-fun b!5922968 () Bool)

(declare-fun tp!1646467 () Bool)

(declare-fun tp!1646468 () Bool)

(assert (=> b!5922968 (= e!3625888 (and tp!1646467 tp!1646468))))

(declare-fun b!5922969 () Bool)

(declare-fun tp!1646466 () Bool)

(assert (=> b!5922969 (= e!3625888 tp!1646466)))

(declare-fun b!5922967 () Bool)

(assert (=> b!5922967 (= e!3625888 tp_is_empty!41195)))

(declare-fun b!5922970 () Bool)

(declare-fun tp!1646464 () Bool)

(declare-fun tp!1646465 () Bool)

(assert (=> b!5922970 (= e!3625888 (and tp!1646464 tp!1646465))))

(assert (= (and b!5921664 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922967))

(assert (= (and b!5921664 ((_ is Concat!24816) (regOne!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922968))

(assert (= (and b!5921664 ((_ is Star!15971) (regOne!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922969))

(assert (= (and b!5921664 ((_ is Union!15971) (regOne!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922970))

(declare-fun e!3625889 () Bool)

(assert (=> b!5921664 (= tp!1645957 e!3625889)))

(declare-fun b!5922972 () Bool)

(declare-fun tp!1646472 () Bool)

(declare-fun tp!1646473 () Bool)

(assert (=> b!5922972 (= e!3625889 (and tp!1646472 tp!1646473))))

(declare-fun b!5922973 () Bool)

(declare-fun tp!1646471 () Bool)

(assert (=> b!5922973 (= e!3625889 tp!1646471)))

(declare-fun b!5922971 () Bool)

(assert (=> b!5922971 (= e!3625889 tp_is_empty!41195)))

(declare-fun b!5922974 () Bool)

(declare-fun tp!1646469 () Bool)

(declare-fun tp!1646470 () Bool)

(assert (=> b!5922974 (= e!3625889 (and tp!1646469 tp!1646470))))

(assert (= (and b!5921664 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922971))

(assert (= (and b!5921664 ((_ is Concat!24816) (regTwo!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922972))

(assert (= (and b!5921664 ((_ is Star!15971) (regTwo!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922973))

(assert (= (and b!5921664 ((_ is Union!15971) (regTwo!32454 (regTwo!32455 (regOne!32454 r!7292))))) b!5922974))

(declare-fun e!3625890 () Bool)

(assert (=> b!5921742 (= tp!1646021 e!3625890)))

(declare-fun b!5922976 () Bool)

(declare-fun tp!1646477 () Bool)

(declare-fun tp!1646478 () Bool)

(assert (=> b!5922976 (= e!3625890 (and tp!1646477 tp!1646478))))

(declare-fun b!5922977 () Bool)

(declare-fun tp!1646476 () Bool)

(assert (=> b!5922977 (= e!3625890 tp!1646476)))

(declare-fun b!5922975 () Bool)

(assert (=> b!5922975 (= e!3625890 tp_is_empty!41195)))

(declare-fun b!5922978 () Bool)

(declare-fun tp!1646474 () Bool)

(declare-fun tp!1646475 () Bool)

(assert (=> b!5922978 (= e!3625890 (and tp!1646474 tp!1646475))))

(assert (= (and b!5921742 ((_ is ElementMatch!15971) (reg!16300 (regOne!32455 (regTwo!32454 r!7292))))) b!5922975))

(assert (= (and b!5921742 ((_ is Concat!24816) (reg!16300 (regOne!32455 (regTwo!32454 r!7292))))) b!5922976))

(assert (= (and b!5921742 ((_ is Star!15971) (reg!16300 (regOne!32455 (regTwo!32454 r!7292))))) b!5922977))

(assert (= (and b!5921742 ((_ is Union!15971) (reg!16300 (regOne!32455 (regTwo!32454 r!7292))))) b!5922978))

(declare-fun e!3625891 () Bool)

(assert (=> b!5921760 (= tp!1646046 e!3625891)))

(declare-fun b!5922980 () Bool)

(declare-fun tp!1646482 () Bool)

(declare-fun tp!1646483 () Bool)

(assert (=> b!5922980 (= e!3625891 (and tp!1646482 tp!1646483))))

(declare-fun b!5922981 () Bool)

(declare-fun tp!1646481 () Bool)

(assert (=> b!5922981 (= e!3625891 tp!1646481)))

(declare-fun b!5922979 () Bool)

(assert (=> b!5922979 (= e!3625891 tp_is_empty!41195)))

(declare-fun b!5922982 () Bool)

(declare-fun tp!1646479 () Bool)

(declare-fun tp!1646480 () Bool)

(assert (=> b!5922982 (= e!3625891 (and tp!1646479 tp!1646480))))

(assert (= (and b!5921760 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922979))

(assert (= (and b!5921760 ((_ is Concat!24816) (regOne!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922980))

(assert (= (and b!5921760 ((_ is Star!15971) (regOne!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922981))

(assert (= (and b!5921760 ((_ is Union!15971) (regOne!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922982))

(declare-fun e!3625892 () Bool)

(assert (=> b!5921760 (= tp!1646047 e!3625892)))

(declare-fun b!5922984 () Bool)

(declare-fun tp!1646487 () Bool)

(declare-fun tp!1646488 () Bool)

(assert (=> b!5922984 (= e!3625892 (and tp!1646487 tp!1646488))))

(declare-fun b!5922985 () Bool)

(declare-fun tp!1646486 () Bool)

(assert (=> b!5922985 (= e!3625892 tp!1646486)))

(declare-fun b!5922983 () Bool)

(assert (=> b!5922983 (= e!3625892 tp_is_empty!41195)))

(declare-fun b!5922986 () Bool)

(declare-fun tp!1646484 () Bool)

(declare-fun tp!1646485 () Bool)

(assert (=> b!5922986 (= e!3625892 (and tp!1646484 tp!1646485))))

(assert (= (and b!5921760 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922983))

(assert (= (and b!5921760 ((_ is Concat!24816) (regTwo!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922984))

(assert (= (and b!5921760 ((_ is Star!15971) (regTwo!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922985))

(assert (= (and b!5921760 ((_ is Union!15971) (regTwo!32454 (regTwo!32454 (regTwo!32455 r!7292))))) b!5922986))

(declare-fun e!3625893 () Bool)

(assert (=> b!5921769 (= tp!1646055 e!3625893)))

(declare-fun b!5922988 () Bool)

(declare-fun tp!1646492 () Bool)

(declare-fun tp!1646493 () Bool)

(assert (=> b!5922988 (= e!3625893 (and tp!1646492 tp!1646493))))

(declare-fun b!5922989 () Bool)

(declare-fun tp!1646491 () Bool)

(assert (=> b!5922989 (= e!3625893 tp!1646491)))

(declare-fun b!5922987 () Bool)

(assert (=> b!5922987 (= e!3625893 tp_is_empty!41195)))

(declare-fun b!5922990 () Bool)

(declare-fun tp!1646489 () Bool)

(declare-fun tp!1646490 () Bool)

(assert (=> b!5922990 (= e!3625893 (and tp!1646489 tp!1646490))))

(assert (= (and b!5921769 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922987))

(assert (= (and b!5921769 ((_ is Concat!24816) (reg!16300 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922988))

(assert (= (and b!5921769 ((_ is Star!15971) (reg!16300 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922989))

(assert (= (and b!5921769 ((_ is Union!15971) (reg!16300 (regTwo!32455 (regTwo!32455 r!7292))))) b!5922990))

(declare-fun e!3625894 () Bool)

(assert (=> b!5921775 (= tp!1646063 e!3625894)))

(declare-fun b!5922992 () Bool)

(declare-fun tp!1646497 () Bool)

(declare-fun tp!1646498 () Bool)

(assert (=> b!5922992 (= e!3625894 (and tp!1646497 tp!1646498))))

(declare-fun b!5922993 () Bool)

(declare-fun tp!1646496 () Bool)

(assert (=> b!5922993 (= e!3625894 tp!1646496)))

(declare-fun b!5922991 () Bool)

(assert (=> b!5922991 (= e!3625894 tp_is_empty!41195)))

(declare-fun b!5922994 () Bool)

(declare-fun tp!1646494 () Bool)

(declare-fun tp!1646495 () Bool)

(assert (=> b!5922994 (= e!3625894 (and tp!1646494 tp!1646495))))

(assert (= (and b!5921775 ((_ is ElementMatch!15971) (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343)))))) b!5922991))

(assert (= (and b!5921775 ((_ is Concat!24816) (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343)))))) b!5922992))

(assert (= (and b!5921775 ((_ is Star!15971) (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343)))))) b!5922993))

(assert (= (and b!5921775 ((_ is Union!15971) (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343)))))) b!5922994))

(declare-fun b!5922995 () Bool)

(declare-fun e!3625895 () Bool)

(declare-fun tp!1646499 () Bool)

(declare-fun tp!1646500 () Bool)

(assert (=> b!5922995 (= e!3625895 (and tp!1646499 tp!1646500))))

(assert (=> b!5921775 (= tp!1646064 e!3625895)))

(assert (= (and b!5921775 ((_ is Cons!64088) (t!377603 (exprs!5855 (h!70537 (t!377604 zl!343)))))) b!5922995))

(declare-fun b!5922996 () Bool)

(declare-fun e!3625896 () Bool)

(declare-fun tp!1646501 () Bool)

(declare-fun tp!1646502 () Bool)

(assert (=> b!5922996 (= e!3625896 (and tp!1646501 tp!1646502))))

(assert (=> b!5921749 (= tp!1646029 e!3625896)))

(assert (= (and b!5921749 ((_ is Cons!64088) (exprs!5855 (h!70537 (t!377604 (t!377604 zl!343)))))) b!5922996))

(declare-fun e!3625897 () Bool)

(assert (=> b!5921636 (= tp!1645919 e!3625897)))

(declare-fun b!5922998 () Bool)

(declare-fun tp!1646506 () Bool)

(declare-fun tp!1646507 () Bool)

(assert (=> b!5922998 (= e!3625897 (and tp!1646506 tp!1646507))))

(declare-fun b!5922999 () Bool)

(declare-fun tp!1646505 () Bool)

(assert (=> b!5922999 (= e!3625897 tp!1646505)))

(declare-fun b!5922997 () Bool)

(assert (=> b!5922997 (= e!3625897 tp_is_empty!41195)))

(declare-fun b!5923000 () Bool)

(declare-fun tp!1646503 () Bool)

(declare-fun tp!1646504 () Bool)

(assert (=> b!5923000 (= e!3625897 (and tp!1646503 tp!1646504))))

(assert (= (and b!5921636 ((_ is ElementMatch!15971) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922997))

(assert (= (and b!5921636 ((_ is Concat!24816) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922998))

(assert (= (and b!5921636 ((_ is Star!15971) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5922999))

(assert (= (and b!5921636 ((_ is Union!15971) (reg!16300 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923000))

(declare-fun e!3625898 () Bool)

(assert (=> b!5921680 (= tp!1645968 e!3625898)))

(declare-fun b!5923002 () Bool)

(declare-fun tp!1646511 () Bool)

(declare-fun tp!1646512 () Bool)

(assert (=> b!5923002 (= e!3625898 (and tp!1646511 tp!1646512))))

(declare-fun b!5923003 () Bool)

(declare-fun tp!1646510 () Bool)

(assert (=> b!5923003 (= e!3625898 tp!1646510)))

(declare-fun b!5923001 () Bool)

(assert (=> b!5923001 (= e!3625898 tp_is_empty!41195)))

(declare-fun b!5923004 () Bool)

(declare-fun tp!1646508 () Bool)

(declare-fun tp!1646509 () Bool)

(assert (=> b!5923004 (= e!3625898 (and tp!1646508 tp!1646509))))

(assert (= (and b!5921680 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923001))

(assert (= (and b!5921680 ((_ is Concat!24816) (regOne!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923002))

(assert (= (and b!5921680 ((_ is Star!15971) (regOne!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923003))

(assert (= (and b!5921680 ((_ is Union!15971) (regOne!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923004))

(declare-fun e!3625899 () Bool)

(assert (=> b!5921680 (= tp!1645969 e!3625899)))

(declare-fun b!5923006 () Bool)

(declare-fun tp!1646516 () Bool)

(declare-fun tp!1646517 () Bool)

(assert (=> b!5923006 (= e!3625899 (and tp!1646516 tp!1646517))))

(declare-fun b!5923007 () Bool)

(declare-fun tp!1646515 () Bool)

(assert (=> b!5923007 (= e!3625899 tp!1646515)))

(declare-fun b!5923005 () Bool)

(assert (=> b!5923005 (= e!3625899 tp_is_empty!41195)))

(declare-fun b!5923008 () Bool)

(declare-fun tp!1646513 () Bool)

(declare-fun tp!1646514 () Bool)

(assert (=> b!5923008 (= e!3625899 (and tp!1646513 tp!1646514))))

(assert (= (and b!5921680 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923005))

(assert (= (and b!5921680 ((_ is Concat!24816) (regTwo!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923006))

(assert (= (and b!5921680 ((_ is Star!15971) (regTwo!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923007))

(assert (= (and b!5921680 ((_ is Union!15971) (regTwo!32455 (regOne!32454 (regOne!32455 r!7292))))) b!5923008))

(declare-fun e!3625900 () Bool)

(assert (=> b!5921705 (= tp!1645991 e!3625900)))

(declare-fun b!5923010 () Bool)

(declare-fun tp!1646521 () Bool)

(declare-fun tp!1646522 () Bool)

(assert (=> b!5923010 (= e!3625900 (and tp!1646521 tp!1646522))))

(declare-fun b!5923011 () Bool)

(declare-fun tp!1646520 () Bool)

(assert (=> b!5923011 (= e!3625900 tp!1646520)))

(declare-fun b!5923009 () Bool)

(assert (=> b!5923009 (= e!3625900 tp_is_empty!41195)))

(declare-fun b!5923012 () Bool)

(declare-fun tp!1646518 () Bool)

(declare-fun tp!1646519 () Bool)

(assert (=> b!5923012 (= e!3625900 (and tp!1646518 tp!1646519))))

(assert (= (and b!5921705 ((_ is ElementMatch!15971) (regOne!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923009))

(assert (= (and b!5921705 ((_ is Concat!24816) (regOne!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923010))

(assert (= (and b!5921705 ((_ is Star!15971) (regOne!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923011))

(assert (= (and b!5921705 ((_ is Union!15971) (regOne!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923012))

(declare-fun e!3625901 () Bool)

(assert (=> b!5921705 (= tp!1645992 e!3625901)))

(declare-fun b!5923014 () Bool)

(declare-fun tp!1646526 () Bool)

(declare-fun tp!1646527 () Bool)

(assert (=> b!5923014 (= e!3625901 (and tp!1646526 tp!1646527))))

(declare-fun b!5923015 () Bool)

(declare-fun tp!1646525 () Bool)

(assert (=> b!5923015 (= e!3625901 tp!1646525)))

(declare-fun b!5923013 () Bool)

(assert (=> b!5923013 (= e!3625901 tp_is_empty!41195)))

(declare-fun b!5923016 () Bool)

(declare-fun tp!1646523 () Bool)

(declare-fun tp!1646524 () Bool)

(assert (=> b!5923016 (= e!3625901 (and tp!1646523 tp!1646524))))

(assert (= (and b!5921705 ((_ is ElementMatch!15971) (regTwo!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923013))

(assert (= (and b!5921705 ((_ is Concat!24816) (regTwo!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923014))

(assert (= (and b!5921705 ((_ is Star!15971) (regTwo!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923015))

(assert (= (and b!5921705 ((_ is Union!15971) (regTwo!32454 (reg!16300 (regOne!32455 r!7292))))) b!5923016))

(declare-fun b!5923018 () Bool)

(declare-fun e!3625903 () Bool)

(declare-fun tp!1646528 () Bool)

(assert (=> b!5923018 (= e!3625903 tp!1646528)))

(declare-fun e!3625902 () Bool)

(declare-fun tp!1646529 () Bool)

(declare-fun b!5923017 () Bool)

(assert (=> b!5923017 (= e!3625902 (and (inv!83174 (h!70537 (t!377604 res!2482187))) e!3625903 tp!1646529))))

(assert (=> b!5921509 (= tp!1645916 e!3625902)))

(assert (= b!5923017 b!5923018))

(assert (= (and b!5921509 ((_ is Cons!64089) (t!377604 res!2482187))) b!5923017))

(declare-fun m!6818396 () Bool)

(assert (=> b!5923017 m!6818396))

(declare-fun e!3625904 () Bool)

(assert (=> b!5921719 (= tp!1646003 e!3625904)))

(declare-fun b!5923020 () Bool)

(declare-fun tp!1646533 () Bool)

(declare-fun tp!1646534 () Bool)

(assert (=> b!5923020 (= e!3625904 (and tp!1646533 tp!1646534))))

(declare-fun b!5923021 () Bool)

(declare-fun tp!1646532 () Bool)

(assert (=> b!5923021 (= e!3625904 tp!1646532)))

(declare-fun b!5923019 () Bool)

(assert (=> b!5923019 (= e!3625904 tp_is_empty!41195)))

(declare-fun b!5923022 () Bool)

(declare-fun tp!1646530 () Bool)

(declare-fun tp!1646531 () Bool)

(assert (=> b!5923022 (= e!3625904 (and tp!1646530 tp!1646531))))

(assert (= (and b!5921719 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923019))

(assert (= (and b!5921719 ((_ is Concat!24816) (regOne!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923020))

(assert (= (and b!5921719 ((_ is Star!15971) (regOne!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923021))

(assert (= (and b!5921719 ((_ is Union!15971) (regOne!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923022))

(declare-fun e!3625905 () Bool)

(assert (=> b!5921719 (= tp!1646004 e!3625905)))

(declare-fun b!5923024 () Bool)

(declare-fun tp!1646538 () Bool)

(declare-fun tp!1646539 () Bool)

(assert (=> b!5923024 (= e!3625905 (and tp!1646538 tp!1646539))))

(declare-fun b!5923025 () Bool)

(declare-fun tp!1646537 () Bool)

(assert (=> b!5923025 (= e!3625905 tp!1646537)))

(declare-fun b!5923023 () Bool)

(assert (=> b!5923023 (= e!3625905 tp_is_empty!41195)))

(declare-fun b!5923026 () Bool)

(declare-fun tp!1646535 () Bool)

(declare-fun tp!1646536 () Bool)

(assert (=> b!5923026 (= e!3625905 (and tp!1646535 tp!1646536))))

(assert (= (and b!5921719 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923023))

(assert (= (and b!5921719 ((_ is Concat!24816) (regTwo!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923024))

(assert (= (and b!5921719 ((_ is Star!15971) (regTwo!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923025))

(assert (= (and b!5921719 ((_ is Union!15971) (regTwo!32455 (regOne!32454 (regTwo!32454 r!7292))))) b!5923026))

(declare-fun e!3625906 () Bool)

(assert (=> b!5921647 (= tp!1645935 e!3625906)))

(declare-fun b!5923028 () Bool)

(declare-fun tp!1646543 () Bool)

(declare-fun tp!1646544 () Bool)

(assert (=> b!5923028 (= e!3625906 (and tp!1646543 tp!1646544))))

(declare-fun b!5923029 () Bool)

(declare-fun tp!1646542 () Bool)

(assert (=> b!5923029 (= e!3625906 tp!1646542)))

(declare-fun b!5923027 () Bool)

(assert (=> b!5923027 (= e!3625906 tp_is_empty!41195)))

(declare-fun b!5923030 () Bool)

(declare-fun tp!1646540 () Bool)

(declare-fun tp!1646541 () Bool)

(assert (=> b!5923030 (= e!3625906 (and tp!1646540 tp!1646541))))

(assert (= (and b!5921647 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32454 (reg!16300 r!7292))))) b!5923027))

(assert (= (and b!5921647 ((_ is Concat!24816) (reg!16300 (regTwo!32454 (reg!16300 r!7292))))) b!5923028))

(assert (= (and b!5921647 ((_ is Star!15971) (reg!16300 (regTwo!32454 (reg!16300 r!7292))))) b!5923029))

(assert (= (and b!5921647 ((_ is Union!15971) (reg!16300 (regTwo!32454 (reg!16300 r!7292))))) b!5923030))

(declare-fun e!3625907 () Bool)

(assert (=> b!5921694 (= tp!1645975 e!3625907)))

(declare-fun b!5923032 () Bool)

(declare-fun tp!1646548 () Bool)

(declare-fun tp!1646549 () Bool)

(assert (=> b!5923032 (= e!3625907 (and tp!1646548 tp!1646549))))

(declare-fun b!5923033 () Bool)

(declare-fun tp!1646547 () Bool)

(assert (=> b!5923033 (= e!3625907 tp!1646547)))

(declare-fun b!5923031 () Bool)

(assert (=> b!5923031 (= e!3625907 tp_is_empty!41195)))

(declare-fun b!5923034 () Bool)

(declare-fun tp!1646545 () Bool)

(declare-fun tp!1646546 () Bool)

(assert (=> b!5923034 (= e!3625907 (and tp!1646545 tp!1646546))))

(assert (= (and b!5921694 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32454 (regOne!32455 r!7292))))) b!5923031))

(assert (= (and b!5921694 ((_ is Concat!24816) (reg!16300 (regTwo!32454 (regOne!32455 r!7292))))) b!5923032))

(assert (= (and b!5921694 ((_ is Star!15971) (reg!16300 (regTwo!32454 (regOne!32455 r!7292))))) b!5923033))

(assert (= (and b!5921694 ((_ is Union!15971) (reg!16300 (regTwo!32454 (regOne!32455 r!7292))))) b!5923034))

(declare-fun e!3625908 () Bool)

(assert (=> b!5921773 (= tp!1646060 e!3625908)))

(declare-fun b!5923036 () Bool)

(declare-fun tp!1646553 () Bool)

(declare-fun tp!1646554 () Bool)

(assert (=> b!5923036 (= e!3625908 (and tp!1646553 tp!1646554))))

(declare-fun b!5923037 () Bool)

(declare-fun tp!1646552 () Bool)

(assert (=> b!5923037 (= e!3625908 tp!1646552)))

(declare-fun b!5923035 () Bool)

(assert (=> b!5923035 (= e!3625908 tp_is_empty!41195)))

(declare-fun b!5923038 () Bool)

(declare-fun tp!1646550 () Bool)

(declare-fun tp!1646551 () Bool)

(assert (=> b!5923038 (= e!3625908 (and tp!1646550 tp!1646551))))

(assert (= (and b!5921773 ((_ is ElementMatch!15971) (reg!16300 (reg!16300 (regTwo!32455 r!7292))))) b!5923035))

(assert (= (and b!5921773 ((_ is Concat!24816) (reg!16300 (reg!16300 (regTwo!32455 r!7292))))) b!5923036))

(assert (= (and b!5921773 ((_ is Star!15971) (reg!16300 (reg!16300 (regTwo!32455 r!7292))))) b!5923037))

(assert (= (and b!5921773 ((_ is Union!15971) (reg!16300 (reg!16300 (regTwo!32455 r!7292))))) b!5923038))

(declare-fun condSetEmpty!40193 () Bool)

(assert (=> setNonEmpty!40185 (= condSetEmpty!40193 (= setRest!40185 ((as const (Array Context!10710 Bool)) false)))))

(declare-fun setRes!40193 () Bool)

(assert (=> setNonEmpty!40185 (= tp!1645903 setRes!40193)))

(declare-fun setIsEmpty!40193 () Bool)

(assert (=> setIsEmpty!40193 setRes!40193))

(declare-fun tp!1646556 () Bool)

(declare-fun e!3625909 () Bool)

(declare-fun setNonEmpty!40193 () Bool)

(declare-fun setElem!40193 () Context!10710)

(assert (=> setNonEmpty!40193 (= setRes!40193 (and tp!1646556 (inv!83174 setElem!40193) e!3625909))))

(declare-fun setRest!40193 () (InoxSet Context!10710))

(assert (=> setNonEmpty!40193 (= setRest!40185 ((_ map or) (store ((as const (Array Context!10710 Bool)) false) setElem!40193 true) setRest!40193))))

(declare-fun b!5923039 () Bool)

(declare-fun tp!1646555 () Bool)

(assert (=> b!5923039 (= e!3625909 tp!1646555)))

(assert (= (and setNonEmpty!40185 condSetEmpty!40193) setIsEmpty!40193))

(assert (= (and setNonEmpty!40185 (not condSetEmpty!40193)) setNonEmpty!40193))

(assert (= setNonEmpty!40193 b!5923039))

(declare-fun m!6818398 () Bool)

(assert (=> setNonEmpty!40193 m!6818398))

(declare-fun e!3625910 () Bool)

(assert (=> b!5921675 (= tp!1645965 e!3625910)))

(declare-fun b!5923041 () Bool)

(declare-fun tp!1646560 () Bool)

(declare-fun tp!1646561 () Bool)

(assert (=> b!5923041 (= e!3625910 (and tp!1646560 tp!1646561))))

(declare-fun b!5923042 () Bool)

(declare-fun tp!1646559 () Bool)

(assert (=> b!5923042 (= e!3625910 tp!1646559)))

(declare-fun b!5923040 () Bool)

(assert (=> b!5923040 (= e!3625910 tp_is_empty!41195)))

(declare-fun b!5923043 () Bool)

(declare-fun tp!1646557 () Bool)

(declare-fun tp!1646558 () Bool)

(assert (=> b!5923043 (= e!3625910 (and tp!1646557 tp!1646558))))

(assert (= (and b!5921675 ((_ is ElementMatch!15971) (reg!16300 (reg!16300 (reg!16300 r!7292))))) b!5923040))

(assert (= (and b!5921675 ((_ is Concat!24816) (reg!16300 (reg!16300 (reg!16300 r!7292))))) b!5923041))

(assert (= (and b!5921675 ((_ is Star!15971) (reg!16300 (reg!16300 (reg!16300 r!7292))))) b!5923042))

(assert (= (and b!5921675 ((_ is Union!15971) (reg!16300 (reg!16300 (reg!16300 r!7292))))) b!5923043))

(declare-fun e!3625911 () Bool)

(assert (=> b!5921656 (= tp!1645943 e!3625911)))

(declare-fun b!5923045 () Bool)

(declare-fun tp!1646565 () Bool)

(declare-fun tp!1646566 () Bool)

(assert (=> b!5923045 (= e!3625911 (and tp!1646565 tp!1646566))))

(declare-fun b!5923046 () Bool)

(declare-fun tp!1646564 () Bool)

(assert (=> b!5923046 (= e!3625911 tp!1646564)))

(declare-fun b!5923044 () Bool)

(assert (=> b!5923044 (= e!3625911 tp_is_empty!41195)))

(declare-fun b!5923047 () Bool)

(declare-fun tp!1646562 () Bool)

(declare-fun tp!1646563 () Bool)

(assert (=> b!5923047 (= e!3625911 (and tp!1646562 tp!1646563))))

(assert (= (and b!5921656 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923044))

(assert (= (and b!5921656 ((_ is Concat!24816) (regOne!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923045))

(assert (= (and b!5921656 ((_ is Star!15971) (regOne!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923046))

(assert (= (and b!5921656 ((_ is Union!15971) (regOne!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923047))

(declare-fun e!3625912 () Bool)

(assert (=> b!5921656 (= tp!1645944 e!3625912)))

(declare-fun b!5923049 () Bool)

(declare-fun tp!1646570 () Bool)

(declare-fun tp!1646571 () Bool)

(assert (=> b!5923049 (= e!3625912 (and tp!1646570 tp!1646571))))

(declare-fun b!5923050 () Bool)

(declare-fun tp!1646569 () Bool)

(assert (=> b!5923050 (= e!3625912 tp!1646569)))

(declare-fun b!5923048 () Bool)

(assert (=> b!5923048 (= e!3625912 tp_is_empty!41195)))

(declare-fun b!5923051 () Bool)

(declare-fun tp!1646567 () Bool)

(declare-fun tp!1646568 () Bool)

(assert (=> b!5923051 (= e!3625912 (and tp!1646567 tp!1646568))))

(assert (= (and b!5921656 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923048))

(assert (= (and b!5921656 ((_ is Concat!24816) (regTwo!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923049))

(assert (= (and b!5921656 ((_ is Star!15971) (regTwo!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923050))

(assert (= (and b!5921656 ((_ is Union!15971) (regTwo!32455 (regTwo!32454 (regOne!32454 r!7292))))) b!5923051))

(declare-fun e!3625913 () Bool)

(assert (=> b!5921745 (= tp!1646027 e!3625913)))

(declare-fun b!5923053 () Bool)

(declare-fun tp!1646575 () Bool)

(declare-fun tp!1646576 () Bool)

(assert (=> b!5923053 (= e!3625913 (and tp!1646575 tp!1646576))))

(declare-fun b!5923054 () Bool)

(declare-fun tp!1646574 () Bool)

(assert (=> b!5923054 (= e!3625913 tp!1646574)))

(declare-fun b!5923052 () Bool)

(assert (=> b!5923052 (= e!3625913 tp_is_empty!41195)))

(declare-fun b!5923055 () Bool)

(declare-fun tp!1646572 () Bool)

(declare-fun tp!1646573 () Bool)

(assert (=> b!5923055 (= e!3625913 (and tp!1646572 tp!1646573))))

(assert (= (and b!5921745 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923052))

(assert (= (and b!5921745 ((_ is Concat!24816) (regOne!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923053))

(assert (= (and b!5921745 ((_ is Star!15971) (regOne!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923054))

(assert (= (and b!5921745 ((_ is Union!15971) (regOne!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923055))

(declare-fun e!3625914 () Bool)

(assert (=> b!5921745 (= tp!1646028 e!3625914)))

(declare-fun b!5923057 () Bool)

(declare-fun tp!1646580 () Bool)

(declare-fun tp!1646581 () Bool)

(assert (=> b!5923057 (= e!3625914 (and tp!1646580 tp!1646581))))

(declare-fun b!5923058 () Bool)

(declare-fun tp!1646579 () Bool)

(assert (=> b!5923058 (= e!3625914 tp!1646579)))

(declare-fun b!5923056 () Bool)

(assert (=> b!5923056 (= e!3625914 tp_is_empty!41195)))

(declare-fun b!5923059 () Bool)

(declare-fun tp!1646577 () Bool)

(declare-fun tp!1646578 () Bool)

(assert (=> b!5923059 (= e!3625914 (and tp!1646577 tp!1646578))))

(assert (= (and b!5921745 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923056))

(assert (= (and b!5921745 ((_ is Concat!24816) (regTwo!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923057))

(assert (= (and b!5921745 ((_ is Star!15971) (regTwo!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923058))

(assert (= (and b!5921745 ((_ is Union!15971) (regTwo!32454 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923059))

(declare-fun e!3625915 () Bool)

(assert (=> b!5921638 (= tp!1645922 e!3625915)))

(declare-fun b!5923061 () Bool)

(declare-fun tp!1646585 () Bool)

(declare-fun tp!1646586 () Bool)

(assert (=> b!5923061 (= e!3625915 (and tp!1646585 tp!1646586))))

(declare-fun b!5923062 () Bool)

(declare-fun tp!1646584 () Bool)

(assert (=> b!5923062 (= e!3625915 tp!1646584)))

(declare-fun b!5923060 () Bool)

(assert (=> b!5923060 (= e!3625915 tp_is_empty!41195)))

(declare-fun b!5923063 () Bool)

(declare-fun tp!1646582 () Bool)

(declare-fun tp!1646583 () Bool)

(assert (=> b!5923063 (= e!3625915 (and tp!1646582 tp!1646583))))

(assert (= (and b!5921638 ((_ is ElementMatch!15971) (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343)))))) b!5923060))

(assert (= (and b!5921638 ((_ is Concat!24816) (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343)))))) b!5923061))

(assert (= (and b!5921638 ((_ is Star!15971) (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343)))))) b!5923062))

(assert (= (and b!5921638 ((_ is Union!15971) (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343)))))) b!5923063))

(declare-fun b!5923064 () Bool)

(declare-fun e!3625916 () Bool)

(declare-fun tp!1646587 () Bool)

(declare-fun tp!1646588 () Bool)

(assert (=> b!5923064 (= e!3625916 (and tp!1646587 tp!1646588))))

(assert (=> b!5921638 (= tp!1645923 e!3625916)))

(assert (= (and b!5921638 ((_ is Cons!64088) (t!377603 (t!377603 (exprs!5855 (h!70537 zl!343)))))) b!5923064))

(declare-fun e!3625917 () Bool)

(assert (=> b!5921758 (= tp!1646038 e!3625917)))

(declare-fun b!5923066 () Bool)

(declare-fun tp!1646592 () Bool)

(declare-fun tp!1646593 () Bool)

(assert (=> b!5923066 (= e!3625917 (and tp!1646592 tp!1646593))))

(declare-fun b!5923067 () Bool)

(declare-fun tp!1646591 () Bool)

(assert (=> b!5923067 (= e!3625917 tp!1646591)))

(declare-fun b!5923065 () Bool)

(assert (=> b!5923065 (= e!3625917 tp_is_empty!41195)))

(declare-fun b!5923068 () Bool)

(declare-fun tp!1646589 () Bool)

(declare-fun tp!1646590 () Bool)

(assert (=> b!5923068 (= e!3625917 (and tp!1646589 tp!1646590))))

(assert (= (and b!5921758 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923065))

(assert (= (and b!5921758 ((_ is Concat!24816) (regOne!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923066))

(assert (= (and b!5921758 ((_ is Star!15971) (regOne!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923067))

(assert (= (and b!5921758 ((_ is Union!15971) (regOne!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923068))

(declare-fun e!3625918 () Bool)

(assert (=> b!5921758 (= tp!1646039 e!3625918)))

(declare-fun b!5923070 () Bool)

(declare-fun tp!1646597 () Bool)

(declare-fun tp!1646598 () Bool)

(assert (=> b!5923070 (= e!3625918 (and tp!1646597 tp!1646598))))

(declare-fun b!5923071 () Bool)

(declare-fun tp!1646596 () Bool)

(assert (=> b!5923071 (= e!3625918 tp!1646596)))

(declare-fun b!5923069 () Bool)

(assert (=> b!5923069 (= e!3625918 tp_is_empty!41195)))

(declare-fun b!5923072 () Bool)

(declare-fun tp!1646594 () Bool)

(declare-fun tp!1646595 () Bool)

(assert (=> b!5923072 (= e!3625918 (and tp!1646594 tp!1646595))))

(assert (= (and b!5921758 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923069))

(assert (= (and b!5921758 ((_ is Concat!24816) (regTwo!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923070))

(assert (= (and b!5921758 ((_ is Star!15971) (regTwo!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923071))

(assert (= (and b!5921758 ((_ is Union!15971) (regTwo!32455 (regOne!32454 (regTwo!32455 r!7292))))) b!5923072))

(declare-fun e!3625919 () Bool)

(assert (=> b!5921703 (= tp!1645983 e!3625919)))

(declare-fun b!5923074 () Bool)

(declare-fun tp!1646602 () Bool)

(declare-fun tp!1646603 () Bool)

(assert (=> b!5923074 (= e!3625919 (and tp!1646602 tp!1646603))))

(declare-fun b!5923075 () Bool)

(declare-fun tp!1646601 () Bool)

(assert (=> b!5923075 (= e!3625919 tp!1646601)))

(declare-fun b!5923073 () Bool)

(assert (=> b!5923073 (= e!3625919 tp_is_empty!41195)))

(declare-fun b!5923076 () Bool)

(declare-fun tp!1646599 () Bool)

(declare-fun tp!1646600 () Bool)

(assert (=> b!5923076 (= e!3625919 (and tp!1646599 tp!1646600))))

(assert (= (and b!5921703 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923073))

(assert (= (and b!5921703 ((_ is Concat!24816) (regOne!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923074))

(assert (= (and b!5921703 ((_ is Star!15971) (regOne!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923075))

(assert (= (and b!5921703 ((_ is Union!15971) (regOne!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923076))

(declare-fun e!3625920 () Bool)

(assert (=> b!5921703 (= tp!1645984 e!3625920)))

(declare-fun b!5923078 () Bool)

(declare-fun tp!1646607 () Bool)

(declare-fun tp!1646608 () Bool)

(assert (=> b!5923078 (= e!3625920 (and tp!1646607 tp!1646608))))

(declare-fun b!5923079 () Bool)

(declare-fun tp!1646606 () Bool)

(assert (=> b!5923079 (= e!3625920 tp!1646606)))

(declare-fun b!5923077 () Bool)

(assert (=> b!5923077 (= e!3625920 tp_is_empty!41195)))

(declare-fun b!5923080 () Bool)

(declare-fun tp!1646604 () Bool)

(declare-fun tp!1646605 () Bool)

(assert (=> b!5923080 (= e!3625920 (and tp!1646604 tp!1646605))))

(assert (= (and b!5921703 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923077))

(assert (= (and b!5921703 ((_ is Concat!24816) (regTwo!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923078))

(assert (= (and b!5921703 ((_ is Star!15971) (regTwo!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923079))

(assert (= (and b!5921703 ((_ is Union!15971) (regTwo!32455 (regTwo!32455 (reg!16300 r!7292))))) b!5923080))

(declare-fun e!3625921 () Bool)

(assert (=> b!5921722 (= tp!1646010 e!3625921)))

(declare-fun b!5923082 () Bool)

(declare-fun tp!1646612 () Bool)

(declare-fun tp!1646613 () Bool)

(assert (=> b!5923082 (= e!3625921 (and tp!1646612 tp!1646613))))

(declare-fun b!5923083 () Bool)

(declare-fun tp!1646611 () Bool)

(assert (=> b!5923083 (= e!3625921 tp!1646611)))

(declare-fun b!5923081 () Bool)

(assert (=> b!5923081 (= e!3625921 tp_is_empty!41195)))

(declare-fun b!5923084 () Bool)

(declare-fun tp!1646609 () Bool)

(declare-fun tp!1646610 () Bool)

(assert (=> b!5923084 (= e!3625921 (and tp!1646609 tp!1646610))))

(assert (= (and b!5921722 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923081))

(assert (= (and b!5921722 ((_ is Concat!24816) (reg!16300 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923082))

(assert (= (and b!5921722 ((_ is Star!15971) (reg!16300 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923083))

(assert (= (and b!5921722 ((_ is Union!15971) (reg!16300 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923084))

(declare-fun e!3625922 () Bool)

(assert (=> b!5921644 (= tp!1645928 e!3625922)))

(declare-fun b!5923086 () Bool)

(declare-fun tp!1646617 () Bool)

(declare-fun tp!1646618 () Bool)

(assert (=> b!5923086 (= e!3625922 (and tp!1646617 tp!1646618))))

(declare-fun b!5923087 () Bool)

(declare-fun tp!1646616 () Bool)

(assert (=> b!5923087 (= e!3625922 tp!1646616)))

(declare-fun b!5923085 () Bool)

(assert (=> b!5923085 (= e!3625922 tp_is_empty!41195)))

(declare-fun b!5923088 () Bool)

(declare-fun tp!1646614 () Bool)

(declare-fun tp!1646615 () Bool)

(assert (=> b!5923088 (= e!3625922 (and tp!1646614 tp!1646615))))

(assert (= (and b!5921644 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923085))

(assert (= (and b!5921644 ((_ is Concat!24816) (regOne!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923086))

(assert (= (and b!5921644 ((_ is Star!15971) (regOne!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923087))

(assert (= (and b!5921644 ((_ is Union!15971) (regOne!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923088))

(declare-fun e!3625923 () Bool)

(assert (=> b!5921644 (= tp!1645929 e!3625923)))

(declare-fun b!5923090 () Bool)

(declare-fun tp!1646622 () Bool)

(declare-fun tp!1646623 () Bool)

(assert (=> b!5923090 (= e!3625923 (and tp!1646622 tp!1646623))))

(declare-fun b!5923091 () Bool)

(declare-fun tp!1646621 () Bool)

(assert (=> b!5923091 (= e!3625923 tp!1646621)))

(declare-fun b!5923089 () Bool)

(assert (=> b!5923089 (= e!3625923 tp_is_empty!41195)))

(declare-fun b!5923092 () Bool)

(declare-fun tp!1646619 () Bool)

(declare-fun tp!1646620 () Bool)

(assert (=> b!5923092 (= e!3625923 (and tp!1646619 tp!1646620))))

(assert (= (and b!5921644 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923089))

(assert (= (and b!5921644 ((_ is Concat!24816) (regTwo!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923090))

(assert (= (and b!5921644 ((_ is Star!15971) (regTwo!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923091))

(assert (= (and b!5921644 ((_ is Union!15971) (regTwo!32455 (regOne!32454 (reg!16300 r!7292))))) b!5923092))

(declare-fun e!3625924 () Bool)

(assert (=> b!5921743 (= tp!1646019 e!3625924)))

(declare-fun b!5923094 () Bool)

(declare-fun tp!1646627 () Bool)

(declare-fun tp!1646628 () Bool)

(assert (=> b!5923094 (= e!3625924 (and tp!1646627 tp!1646628))))

(declare-fun b!5923095 () Bool)

(declare-fun tp!1646626 () Bool)

(assert (=> b!5923095 (= e!3625924 tp!1646626)))

(declare-fun b!5923093 () Bool)

(assert (=> b!5923093 (= e!3625924 tp_is_empty!41195)))

(declare-fun b!5923096 () Bool)

(declare-fun tp!1646624 () Bool)

(declare-fun tp!1646625 () Bool)

(assert (=> b!5923096 (= e!3625924 (and tp!1646624 tp!1646625))))

(assert (= (and b!5921743 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923093))

(assert (= (and b!5921743 ((_ is Concat!24816) (regOne!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923094))

(assert (= (and b!5921743 ((_ is Star!15971) (regOne!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923095))

(assert (= (and b!5921743 ((_ is Union!15971) (regOne!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923096))

(declare-fun e!3625925 () Bool)

(assert (=> b!5921743 (= tp!1646020 e!3625925)))

(declare-fun b!5923098 () Bool)

(declare-fun tp!1646632 () Bool)

(declare-fun tp!1646633 () Bool)

(assert (=> b!5923098 (= e!3625925 (and tp!1646632 tp!1646633))))

(declare-fun b!5923099 () Bool)

(declare-fun tp!1646631 () Bool)

(assert (=> b!5923099 (= e!3625925 tp!1646631)))

(declare-fun b!5923097 () Bool)

(assert (=> b!5923097 (= e!3625925 tp_is_empty!41195)))

(declare-fun b!5923100 () Bool)

(declare-fun tp!1646629 () Bool)

(declare-fun tp!1646630 () Bool)

(assert (=> b!5923100 (= e!3625925 (and tp!1646629 tp!1646630))))

(assert (= (and b!5921743 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923097))

(assert (= (and b!5921743 ((_ is Concat!24816) (regTwo!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923098))

(assert (= (and b!5921743 ((_ is Star!15971) (regTwo!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923099))

(assert (= (and b!5921743 ((_ is Union!15971) (regTwo!32455 (regOne!32455 (regTwo!32454 r!7292))))) b!5923100))

(declare-fun e!3625926 () Bool)

(assert (=> b!5921761 (= tp!1646045 e!3625926)))

(declare-fun b!5923102 () Bool)

(declare-fun tp!1646637 () Bool)

(declare-fun tp!1646638 () Bool)

(assert (=> b!5923102 (= e!3625926 (and tp!1646637 tp!1646638))))

(declare-fun b!5923103 () Bool)

(declare-fun tp!1646636 () Bool)

(assert (=> b!5923103 (= e!3625926 tp!1646636)))

(declare-fun b!5923101 () Bool)

(assert (=> b!5923101 (= e!3625926 tp_is_empty!41195)))

(declare-fun b!5923104 () Bool)

(declare-fun tp!1646634 () Bool)

(declare-fun tp!1646635 () Bool)

(assert (=> b!5923104 (= e!3625926 (and tp!1646634 tp!1646635))))

(assert (= (and b!5921761 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923101))

(assert (= (and b!5921761 ((_ is Concat!24816) (reg!16300 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923102))

(assert (= (and b!5921761 ((_ is Star!15971) (reg!16300 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923103))

(assert (= (and b!5921761 ((_ is Union!15971) (reg!16300 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923104))

(declare-fun e!3625927 () Bool)

(assert (=> b!5921770 (= tp!1646053 e!3625927)))

(declare-fun b!5923106 () Bool)

(declare-fun tp!1646642 () Bool)

(declare-fun tp!1646643 () Bool)

(assert (=> b!5923106 (= e!3625927 (and tp!1646642 tp!1646643))))

(declare-fun b!5923107 () Bool)

(declare-fun tp!1646641 () Bool)

(assert (=> b!5923107 (= e!3625927 tp!1646641)))

(declare-fun b!5923105 () Bool)

(assert (=> b!5923105 (= e!3625927 tp_is_empty!41195)))

(declare-fun b!5923108 () Bool)

(declare-fun tp!1646639 () Bool)

(declare-fun tp!1646640 () Bool)

(assert (=> b!5923108 (= e!3625927 (and tp!1646639 tp!1646640))))

(assert (= (and b!5921770 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923105))

(assert (= (and b!5921770 ((_ is Concat!24816) (regOne!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923106))

(assert (= (and b!5921770 ((_ is Star!15971) (regOne!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923107))

(assert (= (and b!5921770 ((_ is Union!15971) (regOne!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923108))

(declare-fun e!3625928 () Bool)

(assert (=> b!5921770 (= tp!1646054 e!3625928)))

(declare-fun b!5923110 () Bool)

(declare-fun tp!1646647 () Bool)

(declare-fun tp!1646648 () Bool)

(assert (=> b!5923110 (= e!3625928 (and tp!1646647 tp!1646648))))

(declare-fun b!5923111 () Bool)

(declare-fun tp!1646646 () Bool)

(assert (=> b!5923111 (= e!3625928 tp!1646646)))

(declare-fun b!5923109 () Bool)

(assert (=> b!5923109 (= e!3625928 tp_is_empty!41195)))

(declare-fun b!5923112 () Bool)

(declare-fun tp!1646644 () Bool)

(declare-fun tp!1646645 () Bool)

(assert (=> b!5923112 (= e!3625928 (and tp!1646644 tp!1646645))))

(assert (= (and b!5921770 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923109))

(assert (= (and b!5921770 ((_ is Concat!24816) (regTwo!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923110))

(assert (= (and b!5921770 ((_ is Star!15971) (regTwo!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923111))

(assert (= (and b!5921770 ((_ is Union!15971) (regTwo!32455 (regTwo!32455 (regTwo!32455 r!7292))))) b!5923112))

(declare-fun e!3625929 () Bool)

(assert (=> b!5921672 (= tp!1645958 e!3625929)))

(declare-fun b!5923114 () Bool)

(declare-fun tp!1646652 () Bool)

(declare-fun tp!1646653 () Bool)

(assert (=> b!5923114 (= e!3625929 (and tp!1646652 tp!1646653))))

(declare-fun b!5923115 () Bool)

(declare-fun tp!1646651 () Bool)

(assert (=> b!5923115 (= e!3625929 tp!1646651)))

(declare-fun b!5923113 () Bool)

(assert (=> b!5923113 (= e!3625929 tp_is_empty!41195)))

(declare-fun b!5923116 () Bool)

(declare-fun tp!1646649 () Bool)

(declare-fun tp!1646650 () Bool)

(assert (=> b!5923116 (= e!3625929 (and tp!1646649 tp!1646650))))

(assert (= (and b!5921672 ((_ is ElementMatch!15971) (regOne!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923113))

(assert (= (and b!5921672 ((_ is Concat!24816) (regOne!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923114))

(assert (= (and b!5921672 ((_ is Star!15971) (regOne!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923115))

(assert (= (and b!5921672 ((_ is Union!15971) (regOne!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923116))

(declare-fun e!3625930 () Bool)

(assert (=> b!5921672 (= tp!1645959 e!3625930)))

(declare-fun b!5923118 () Bool)

(declare-fun tp!1646657 () Bool)

(declare-fun tp!1646658 () Bool)

(assert (=> b!5923118 (= e!3625930 (and tp!1646657 tp!1646658))))

(declare-fun b!5923119 () Bool)

(declare-fun tp!1646656 () Bool)

(assert (=> b!5923119 (= e!3625930 tp!1646656)))

(declare-fun b!5923117 () Bool)

(assert (=> b!5923117 (= e!3625930 tp_is_empty!41195)))

(declare-fun b!5923120 () Bool)

(declare-fun tp!1646654 () Bool)

(declare-fun tp!1646655 () Bool)

(assert (=> b!5923120 (= e!3625930 (and tp!1646654 tp!1646655))))

(assert (= (and b!5921672 ((_ is ElementMatch!15971) (regTwo!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923117))

(assert (= (and b!5921672 ((_ is Concat!24816) (regTwo!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923118))

(assert (= (and b!5921672 ((_ is Star!15971) (regTwo!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923119))

(assert (= (and b!5921672 ((_ is Union!15971) (regTwo!32455 (reg!16300 (regOne!32454 r!7292))))) b!5923120))

(declare-fun e!3625931 () Bool)

(assert (=> b!5921713 (= tp!1646001 e!3625931)))

(declare-fun b!5923122 () Bool)

(declare-fun tp!1646662 () Bool)

(declare-fun tp!1646663 () Bool)

(assert (=> b!5923122 (= e!3625931 (and tp!1646662 tp!1646663))))

(declare-fun b!5923123 () Bool)

(declare-fun tp!1646661 () Bool)

(assert (=> b!5923123 (= e!3625931 tp!1646661)))

(declare-fun b!5923121 () Bool)

(assert (=> b!5923121 (= e!3625931 tp_is_empty!41195)))

(declare-fun b!5923124 () Bool)

(declare-fun tp!1646659 () Bool)

(declare-fun tp!1646660 () Bool)

(assert (=> b!5923124 (= e!3625931 (and tp!1646659 tp!1646660))))

(assert (= (and b!5921713 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923121))

(assert (= (and b!5921713 ((_ is Concat!24816) (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923122))

(assert (= (and b!5921713 ((_ is Star!15971) (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923123))

(assert (= (and b!5921713 ((_ is Union!15971) (regOne!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923124))

(declare-fun e!3625932 () Bool)

(assert (=> b!5921713 (= tp!1646002 e!3625932)))

(declare-fun b!5923126 () Bool)

(declare-fun tp!1646667 () Bool)

(declare-fun tp!1646668 () Bool)

(assert (=> b!5923126 (= e!3625932 (and tp!1646667 tp!1646668))))

(declare-fun b!5923127 () Bool)

(declare-fun tp!1646666 () Bool)

(assert (=> b!5923127 (= e!3625932 tp!1646666)))

(declare-fun b!5923125 () Bool)

(assert (=> b!5923125 (= e!3625932 tp_is_empty!41195)))

(declare-fun b!5923128 () Bool)

(declare-fun tp!1646664 () Bool)

(declare-fun tp!1646665 () Bool)

(assert (=> b!5923128 (= e!3625932 (and tp!1646664 tp!1646665))))

(assert (= (and b!5921713 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923125))

(assert (= (and b!5921713 ((_ is Concat!24816) (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923126))

(assert (= (and b!5921713 ((_ is Star!15971) (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923127))

(assert (= (and b!5921713 ((_ is Union!15971) (regTwo!32454 (regTwo!32455 (regOne!32455 r!7292))))) b!5923128))

(declare-fun e!3625933 () Bool)

(assert (=> b!5921635 (= tp!1645920 e!3625933)))

(declare-fun b!5923130 () Bool)

(declare-fun tp!1646672 () Bool)

(declare-fun tp!1646673 () Bool)

(assert (=> b!5923130 (= e!3625933 (and tp!1646672 tp!1646673))))

(declare-fun b!5923131 () Bool)

(declare-fun tp!1646671 () Bool)

(assert (=> b!5923131 (= e!3625933 tp!1646671)))

(declare-fun b!5923129 () Bool)

(assert (=> b!5923129 (= e!3625933 tp_is_empty!41195)))

(declare-fun b!5923132 () Bool)

(declare-fun tp!1646669 () Bool)

(declare-fun tp!1646670 () Bool)

(assert (=> b!5923132 (= e!3625933 (and tp!1646669 tp!1646670))))

(assert (= (and b!5921635 ((_ is ElementMatch!15971) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923129))

(assert (= (and b!5921635 ((_ is Concat!24816) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923130))

(assert (= (and b!5921635 ((_ is Star!15971) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923131))

(assert (= (and b!5921635 ((_ is Union!15971) (regOne!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923132))

(declare-fun e!3625934 () Bool)

(assert (=> b!5921635 (= tp!1645921 e!3625934)))

(declare-fun b!5923134 () Bool)

(declare-fun tp!1646677 () Bool)

(declare-fun tp!1646678 () Bool)

(assert (=> b!5923134 (= e!3625934 (and tp!1646677 tp!1646678))))

(declare-fun b!5923135 () Bool)

(declare-fun tp!1646676 () Bool)

(assert (=> b!5923135 (= e!3625934 tp!1646676)))

(declare-fun b!5923133 () Bool)

(assert (=> b!5923133 (= e!3625934 tp_is_empty!41195)))

(declare-fun b!5923136 () Bool)

(declare-fun tp!1646674 () Bool)

(declare-fun tp!1646675 () Bool)

(assert (=> b!5923136 (= e!3625934 (and tp!1646674 tp!1646675))))

(assert (= (and b!5921635 ((_ is ElementMatch!15971) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923133))

(assert (= (and b!5921635 ((_ is Concat!24816) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923134))

(assert (= (and b!5921635 ((_ is Star!15971) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923135))

(assert (= (and b!5921635 ((_ is Union!15971) (regTwo!32454 (h!70536 (exprs!5855 (h!70537 zl!343)))))) b!5923136))

(declare-fun e!3625935 () Bool)

(assert (=> b!5921754 (= tp!1646036 e!3625935)))

(declare-fun b!5923138 () Bool)

(declare-fun tp!1646682 () Bool)

(declare-fun tp!1646683 () Bool)

(assert (=> b!5923138 (= e!3625935 (and tp!1646682 tp!1646683))))

(declare-fun b!5923139 () Bool)

(declare-fun tp!1646681 () Bool)

(assert (=> b!5923139 (= e!3625935 tp!1646681)))

(declare-fun b!5923137 () Bool)

(assert (=> b!5923137 (= e!3625935 tp_is_empty!41195)))

(declare-fun b!5923140 () Bool)

(declare-fun tp!1646679 () Bool)

(declare-fun tp!1646680 () Bool)

(assert (=> b!5923140 (= e!3625935 (and tp!1646679 tp!1646680))))

(assert (= (and b!5921754 ((_ is ElementMatch!15971) (h!70536 (t!377603 (exprs!5855 setElem!40176))))) b!5923137))

(assert (= (and b!5921754 ((_ is Concat!24816) (h!70536 (t!377603 (exprs!5855 setElem!40176))))) b!5923138))

(assert (= (and b!5921754 ((_ is Star!15971) (h!70536 (t!377603 (exprs!5855 setElem!40176))))) b!5923139))

(assert (= (and b!5921754 ((_ is Union!15971) (h!70536 (t!377603 (exprs!5855 setElem!40176))))) b!5923140))

(declare-fun b!5923141 () Bool)

(declare-fun e!3625936 () Bool)

(declare-fun tp!1646684 () Bool)

(declare-fun tp!1646685 () Bool)

(assert (=> b!5923141 (= e!3625936 (and tp!1646684 tp!1646685))))

(assert (=> b!5921754 (= tp!1646037 e!3625936)))

(assert (= (and b!5921754 ((_ is Cons!64088) (t!377603 (t!377603 (exprs!5855 setElem!40176))))) b!5923141))

(declare-fun e!3625937 () Bool)

(assert (=> b!5921697 (= tp!1645981 e!3625937)))

(declare-fun b!5923143 () Bool)

(declare-fun tp!1646689 () Bool)

(declare-fun tp!1646690 () Bool)

(assert (=> b!5923143 (= e!3625937 (and tp!1646689 tp!1646690))))

(declare-fun b!5923144 () Bool)

(declare-fun tp!1646688 () Bool)

(assert (=> b!5923144 (= e!3625937 tp!1646688)))

(declare-fun b!5923142 () Bool)

(assert (=> b!5923142 (= e!3625937 tp_is_empty!41195)))

(declare-fun b!5923145 () Bool)

(declare-fun tp!1646686 () Bool)

(declare-fun tp!1646687 () Bool)

(assert (=> b!5923145 (= e!3625937 (and tp!1646686 tp!1646687))))

(assert (= (and b!5921697 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923142))

(assert (= (and b!5921697 ((_ is Concat!24816) (regOne!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923143))

(assert (= (and b!5921697 ((_ is Star!15971) (regOne!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923144))

(assert (= (and b!5921697 ((_ is Union!15971) (regOne!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923145))

(declare-fun e!3625938 () Bool)

(assert (=> b!5921697 (= tp!1645982 e!3625938)))

(declare-fun b!5923147 () Bool)

(declare-fun tp!1646694 () Bool)

(declare-fun tp!1646695 () Bool)

(assert (=> b!5923147 (= e!3625938 (and tp!1646694 tp!1646695))))

(declare-fun b!5923148 () Bool)

(declare-fun tp!1646693 () Bool)

(assert (=> b!5923148 (= e!3625938 tp!1646693)))

(declare-fun b!5923146 () Bool)

(assert (=> b!5923146 (= e!3625938 tp_is_empty!41195)))

(declare-fun b!5923149 () Bool)

(declare-fun tp!1646691 () Bool)

(declare-fun tp!1646692 () Bool)

(assert (=> b!5923149 (= e!3625938 (and tp!1646691 tp!1646692))))

(assert (= (and b!5921697 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923146))

(assert (= (and b!5921697 ((_ is Concat!24816) (regTwo!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923147))

(assert (= (and b!5921697 ((_ is Star!15971) (regTwo!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923148))

(assert (= (and b!5921697 ((_ is Union!15971) (regTwo!32454 (regOne!32455 (reg!16300 r!7292))))) b!5923149))

(declare-fun e!3625939 () Bool)

(assert (=> b!5921679 (= tp!1645970 e!3625939)))

(declare-fun b!5923151 () Bool)

(declare-fun tp!1646699 () Bool)

(declare-fun tp!1646700 () Bool)

(assert (=> b!5923151 (= e!3625939 (and tp!1646699 tp!1646700))))

(declare-fun b!5923152 () Bool)

(declare-fun tp!1646698 () Bool)

(assert (=> b!5923152 (= e!3625939 tp!1646698)))

(declare-fun b!5923150 () Bool)

(assert (=> b!5923150 (= e!3625939 tp_is_empty!41195)))

(declare-fun b!5923153 () Bool)

(declare-fun tp!1646696 () Bool)

(declare-fun tp!1646697 () Bool)

(assert (=> b!5923153 (= e!3625939 (and tp!1646696 tp!1646697))))

(assert (= (and b!5921679 ((_ is ElementMatch!15971) (reg!16300 (regOne!32454 (regOne!32455 r!7292))))) b!5923150))

(assert (= (and b!5921679 ((_ is Concat!24816) (reg!16300 (regOne!32454 (regOne!32455 r!7292))))) b!5923151))

(assert (= (and b!5921679 ((_ is Star!15971) (reg!16300 (regOne!32454 (regOne!32455 r!7292))))) b!5923152))

(assert (= (and b!5921679 ((_ is Union!15971) (reg!16300 (regOne!32454 (regOne!32455 r!7292))))) b!5923153))

(declare-fun e!3625940 () Bool)

(assert (=> b!5921706 (= tp!1645990 e!3625940)))

(declare-fun b!5923155 () Bool)

(declare-fun tp!1646704 () Bool)

(declare-fun tp!1646705 () Bool)

(assert (=> b!5923155 (= e!3625940 (and tp!1646704 tp!1646705))))

(declare-fun b!5923156 () Bool)

(declare-fun tp!1646703 () Bool)

(assert (=> b!5923156 (= e!3625940 tp!1646703)))

(declare-fun b!5923154 () Bool)

(assert (=> b!5923154 (= e!3625940 tp_is_empty!41195)))

(declare-fun b!5923157 () Bool)

(declare-fun tp!1646701 () Bool)

(declare-fun tp!1646702 () Bool)

(assert (=> b!5923157 (= e!3625940 (and tp!1646701 tp!1646702))))

(assert (= (and b!5921706 ((_ is ElementMatch!15971) (reg!16300 (reg!16300 (regOne!32455 r!7292))))) b!5923154))

(assert (= (and b!5921706 ((_ is Concat!24816) (reg!16300 (reg!16300 (regOne!32455 r!7292))))) b!5923155))

(assert (= (and b!5921706 ((_ is Star!15971) (reg!16300 (reg!16300 (regOne!32455 r!7292))))) b!5923156))

(assert (= (and b!5921706 ((_ is Union!15971) (reg!16300 (reg!16300 (regOne!32455 r!7292))))) b!5923157))

(declare-fun e!3625941 () Bool)

(assert (=> b!5921646 (= tp!1645936 e!3625941)))

(declare-fun b!5923159 () Bool)

(declare-fun tp!1646709 () Bool)

(declare-fun tp!1646710 () Bool)

(assert (=> b!5923159 (= e!3625941 (and tp!1646709 tp!1646710))))

(declare-fun b!5923160 () Bool)

(declare-fun tp!1646708 () Bool)

(assert (=> b!5923160 (= e!3625941 tp!1646708)))

(declare-fun b!5923158 () Bool)

(assert (=> b!5923158 (= e!3625941 tp_is_empty!41195)))

(declare-fun b!5923161 () Bool)

(declare-fun tp!1646706 () Bool)

(declare-fun tp!1646707 () Bool)

(assert (=> b!5923161 (= e!3625941 (and tp!1646706 tp!1646707))))

(assert (= (and b!5921646 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923158))

(assert (= (and b!5921646 ((_ is Concat!24816) (regOne!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923159))

(assert (= (and b!5921646 ((_ is Star!15971) (regOne!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923160))

(assert (= (and b!5921646 ((_ is Union!15971) (regOne!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923161))

(declare-fun e!3625942 () Bool)

(assert (=> b!5921646 (= tp!1645937 e!3625942)))

(declare-fun b!5923163 () Bool)

(declare-fun tp!1646714 () Bool)

(declare-fun tp!1646715 () Bool)

(assert (=> b!5923163 (= e!3625942 (and tp!1646714 tp!1646715))))

(declare-fun b!5923164 () Bool)

(declare-fun tp!1646713 () Bool)

(assert (=> b!5923164 (= e!3625942 tp!1646713)))

(declare-fun b!5923162 () Bool)

(assert (=> b!5923162 (= e!3625942 tp_is_empty!41195)))

(declare-fun b!5923165 () Bool)

(declare-fun tp!1646711 () Bool)

(declare-fun tp!1646712 () Bool)

(assert (=> b!5923165 (= e!3625942 (and tp!1646711 tp!1646712))))

(assert (= (and b!5921646 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923162))

(assert (= (and b!5921646 ((_ is Concat!24816) (regTwo!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923163))

(assert (= (and b!5921646 ((_ is Star!15971) (regTwo!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923164))

(assert (= (and b!5921646 ((_ is Union!15971) (regTwo!32454 (regTwo!32454 (reg!16300 r!7292))))) b!5923165))

(declare-fun e!3625943 () Bool)

(assert (=> b!5921693 (= tp!1645976 e!3625943)))

(declare-fun b!5923167 () Bool)

(declare-fun tp!1646719 () Bool)

(declare-fun tp!1646720 () Bool)

(assert (=> b!5923167 (= e!3625943 (and tp!1646719 tp!1646720))))

(declare-fun b!5923168 () Bool)

(declare-fun tp!1646718 () Bool)

(assert (=> b!5923168 (= e!3625943 tp!1646718)))

(declare-fun b!5923166 () Bool)

(assert (=> b!5923166 (= e!3625943 tp_is_empty!41195)))

(declare-fun b!5923169 () Bool)

(declare-fun tp!1646716 () Bool)

(declare-fun tp!1646717 () Bool)

(assert (=> b!5923169 (= e!3625943 (and tp!1646716 tp!1646717))))

(assert (= (and b!5921693 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923166))

(assert (= (and b!5921693 ((_ is Concat!24816) (regOne!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923167))

(assert (= (and b!5921693 ((_ is Star!15971) (regOne!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923168))

(assert (= (and b!5921693 ((_ is Union!15971) (regOne!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923169))

(declare-fun e!3625944 () Bool)

(assert (=> b!5921693 (= tp!1645977 e!3625944)))

(declare-fun b!5923171 () Bool)

(declare-fun tp!1646724 () Bool)

(declare-fun tp!1646725 () Bool)

(assert (=> b!5923171 (= e!3625944 (and tp!1646724 tp!1646725))))

(declare-fun b!5923172 () Bool)

(declare-fun tp!1646723 () Bool)

(assert (=> b!5923172 (= e!3625944 tp!1646723)))

(declare-fun b!5923170 () Bool)

(assert (=> b!5923170 (= e!3625944 tp_is_empty!41195)))

(declare-fun b!5923173 () Bool)

(declare-fun tp!1646721 () Bool)

(declare-fun tp!1646722 () Bool)

(assert (=> b!5923173 (= e!3625944 (and tp!1646721 tp!1646722))))

(assert (= (and b!5921693 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923170))

(assert (= (and b!5921693 ((_ is Concat!24816) (regTwo!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923171))

(assert (= (and b!5921693 ((_ is Star!15971) (regTwo!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923172))

(assert (= (and b!5921693 ((_ is Union!15971) (regTwo!32454 (regTwo!32454 (regOne!32455 r!7292))))) b!5923173))

(declare-fun e!3625945 () Bool)

(assert (=> b!5921774 (= tp!1646058 e!3625945)))

(declare-fun b!5923175 () Bool)

(declare-fun tp!1646729 () Bool)

(declare-fun tp!1646730 () Bool)

(assert (=> b!5923175 (= e!3625945 (and tp!1646729 tp!1646730))))

(declare-fun b!5923176 () Bool)

(declare-fun tp!1646728 () Bool)

(assert (=> b!5923176 (= e!3625945 tp!1646728)))

(declare-fun b!5923174 () Bool)

(assert (=> b!5923174 (= e!3625945 tp_is_empty!41195)))

(declare-fun b!5923177 () Bool)

(declare-fun tp!1646726 () Bool)

(declare-fun tp!1646727 () Bool)

(assert (=> b!5923177 (= e!3625945 (and tp!1646726 tp!1646727))))

(assert (= (and b!5921774 ((_ is ElementMatch!15971) (regOne!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923174))

(assert (= (and b!5921774 ((_ is Concat!24816) (regOne!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923175))

(assert (= (and b!5921774 ((_ is Star!15971) (regOne!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923176))

(assert (= (and b!5921774 ((_ is Union!15971) (regOne!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923177))

(declare-fun e!3625946 () Bool)

(assert (=> b!5921774 (= tp!1646059 e!3625946)))

(declare-fun b!5923179 () Bool)

(declare-fun tp!1646734 () Bool)

(declare-fun tp!1646735 () Bool)

(assert (=> b!5923179 (= e!3625946 (and tp!1646734 tp!1646735))))

(declare-fun b!5923180 () Bool)

(declare-fun tp!1646733 () Bool)

(assert (=> b!5923180 (= e!3625946 tp!1646733)))

(declare-fun b!5923178 () Bool)

(assert (=> b!5923178 (= e!3625946 tp_is_empty!41195)))

(declare-fun b!5923181 () Bool)

(declare-fun tp!1646731 () Bool)

(declare-fun tp!1646732 () Bool)

(assert (=> b!5923181 (= e!3625946 (and tp!1646731 tp!1646732))))

(assert (= (and b!5921774 ((_ is ElementMatch!15971) (regTwo!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923178))

(assert (= (and b!5921774 ((_ is Concat!24816) (regTwo!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923179))

(assert (= (and b!5921774 ((_ is Star!15971) (regTwo!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923180))

(assert (= (and b!5921774 ((_ is Union!15971) (regTwo!32455 (reg!16300 (regTwo!32455 r!7292))))) b!5923181))

(declare-fun e!3625947 () Bool)

(assert (=> b!5921674 (= tp!1645966 e!3625947)))

(declare-fun b!5923183 () Bool)

(declare-fun tp!1646739 () Bool)

(declare-fun tp!1646740 () Bool)

(assert (=> b!5923183 (= e!3625947 (and tp!1646739 tp!1646740))))

(declare-fun b!5923184 () Bool)

(declare-fun tp!1646738 () Bool)

(assert (=> b!5923184 (= e!3625947 tp!1646738)))

(declare-fun b!5923182 () Bool)

(assert (=> b!5923182 (= e!3625947 tp_is_empty!41195)))

(declare-fun b!5923185 () Bool)

(declare-fun tp!1646736 () Bool)

(declare-fun tp!1646737 () Bool)

(assert (=> b!5923185 (= e!3625947 (and tp!1646736 tp!1646737))))

(assert (= (and b!5921674 ((_ is ElementMatch!15971) (regOne!32454 (reg!16300 (reg!16300 r!7292))))) b!5923182))

(assert (= (and b!5921674 ((_ is Concat!24816) (regOne!32454 (reg!16300 (reg!16300 r!7292))))) b!5923183))

(assert (= (and b!5921674 ((_ is Star!15971) (regOne!32454 (reg!16300 (reg!16300 r!7292))))) b!5923184))

(assert (= (and b!5921674 ((_ is Union!15971) (regOne!32454 (reg!16300 (reg!16300 r!7292))))) b!5923185))

(declare-fun e!3625948 () Bool)

(assert (=> b!5921674 (= tp!1645967 e!3625948)))

(declare-fun b!5923187 () Bool)

(declare-fun tp!1646744 () Bool)

(declare-fun tp!1646745 () Bool)

(assert (=> b!5923187 (= e!3625948 (and tp!1646744 tp!1646745))))

(declare-fun b!5923188 () Bool)

(declare-fun tp!1646743 () Bool)

(assert (=> b!5923188 (= e!3625948 tp!1646743)))

(declare-fun b!5923186 () Bool)

(assert (=> b!5923186 (= e!3625948 tp_is_empty!41195)))

(declare-fun b!5923189 () Bool)

(declare-fun tp!1646741 () Bool)

(declare-fun tp!1646742 () Bool)

(assert (=> b!5923189 (= e!3625948 (and tp!1646741 tp!1646742))))

(assert (= (and b!5921674 ((_ is ElementMatch!15971) (regTwo!32454 (reg!16300 (reg!16300 r!7292))))) b!5923186))

(assert (= (and b!5921674 ((_ is Concat!24816) (regTwo!32454 (reg!16300 (reg!16300 r!7292))))) b!5923187))

(assert (= (and b!5921674 ((_ is Star!15971) (regTwo!32454 (reg!16300 (reg!16300 r!7292))))) b!5923188))

(assert (= (and b!5921674 ((_ is Union!15971) (regTwo!32454 (reg!16300 (reg!16300 r!7292))))) b!5923189))

(declare-fun e!3625949 () Bool)

(assert (=> b!5921662 (= tp!1645948 e!3625949)))

(declare-fun b!5923191 () Bool)

(declare-fun tp!1646749 () Bool)

(declare-fun tp!1646750 () Bool)

(assert (=> b!5923191 (= e!3625949 (and tp!1646749 tp!1646750))))

(declare-fun b!5923192 () Bool)

(declare-fun tp!1646748 () Bool)

(assert (=> b!5923192 (= e!3625949 tp!1646748)))

(declare-fun b!5923190 () Bool)

(assert (=> b!5923190 (= e!3625949 tp_is_empty!41195)))

(declare-fun b!5923193 () Bool)

(declare-fun tp!1646746 () Bool)

(declare-fun tp!1646747 () Bool)

(assert (=> b!5923193 (= e!3625949 (and tp!1646746 tp!1646747))))

(assert (= (and b!5921662 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923190))

(assert (= (and b!5921662 ((_ is Concat!24816) (regOne!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923191))

(assert (= (and b!5921662 ((_ is Star!15971) (regOne!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923192))

(assert (= (and b!5921662 ((_ is Union!15971) (regOne!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923193))

(declare-fun e!3625950 () Bool)

(assert (=> b!5921662 (= tp!1645949 e!3625950)))

(declare-fun b!5923195 () Bool)

(declare-fun tp!1646754 () Bool)

(declare-fun tp!1646755 () Bool)

(assert (=> b!5923195 (= e!3625950 (and tp!1646754 tp!1646755))))

(declare-fun b!5923196 () Bool)

(declare-fun tp!1646753 () Bool)

(assert (=> b!5923196 (= e!3625950 tp!1646753)))

(declare-fun b!5923194 () Bool)

(assert (=> b!5923194 (= e!3625950 tp_is_empty!41195)))

(declare-fun b!5923197 () Bool)

(declare-fun tp!1646751 () Bool)

(declare-fun tp!1646752 () Bool)

(assert (=> b!5923197 (= e!3625950 (and tp!1646751 tp!1646752))))

(assert (= (and b!5921662 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923194))

(assert (= (and b!5921662 ((_ is Concat!24816) (regTwo!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923195))

(assert (= (and b!5921662 ((_ is Star!15971) (regTwo!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923196))

(assert (= (and b!5921662 ((_ is Union!15971) (regTwo!32455 (regOne!32455 (regOne!32454 r!7292))))) b!5923197))

(declare-fun e!3625951 () Bool)

(assert (=> b!5921655 (= tp!1645945 e!3625951)))

(declare-fun b!5923199 () Bool)

(declare-fun tp!1646759 () Bool)

(declare-fun tp!1646760 () Bool)

(assert (=> b!5923199 (= e!3625951 (and tp!1646759 tp!1646760))))

(declare-fun b!5923200 () Bool)

(declare-fun tp!1646758 () Bool)

(assert (=> b!5923200 (= e!3625951 tp!1646758)))

(declare-fun b!5923198 () Bool)

(assert (=> b!5923198 (= e!3625951 tp_is_empty!41195)))

(declare-fun b!5923201 () Bool)

(declare-fun tp!1646756 () Bool)

(declare-fun tp!1646757 () Bool)

(assert (=> b!5923201 (= e!3625951 (and tp!1646756 tp!1646757))))

(assert (= (and b!5921655 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32454 (regOne!32454 r!7292))))) b!5923198))

(assert (= (and b!5921655 ((_ is Concat!24816) (reg!16300 (regTwo!32454 (regOne!32454 r!7292))))) b!5923199))

(assert (= (and b!5921655 ((_ is Star!15971) (reg!16300 (regTwo!32454 (regOne!32454 r!7292))))) b!5923200))

(assert (= (and b!5921655 ((_ is Union!15971) (reg!16300 (regTwo!32454 (regOne!32454 r!7292))))) b!5923201))

(declare-fun e!3625952 () Bool)

(assert (=> b!5921737 (= tp!1646017 e!3625952)))

(declare-fun b!5923203 () Bool)

(declare-fun tp!1646764 () Bool)

(declare-fun tp!1646765 () Bool)

(assert (=> b!5923203 (= e!3625952 (and tp!1646764 tp!1646765))))

(declare-fun b!5923204 () Bool)

(declare-fun tp!1646763 () Bool)

(assert (=> b!5923204 (= e!3625952 tp!1646763)))

(declare-fun b!5923202 () Bool)

(assert (=> b!5923202 (= e!3625952 tp_is_empty!41195)))

(declare-fun b!5923205 () Bool)

(declare-fun tp!1646761 () Bool)

(declare-fun tp!1646762 () Bool)

(assert (=> b!5923205 (= e!3625952 (and tp!1646761 tp!1646762))))

(assert (= (and b!5921737 ((_ is ElementMatch!15971) (regOne!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923202))

(assert (= (and b!5921737 ((_ is Concat!24816) (regOne!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923203))

(assert (= (and b!5921737 ((_ is Star!15971) (regOne!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923204))

(assert (= (and b!5921737 ((_ is Union!15971) (regOne!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923205))

(declare-fun e!3625953 () Bool)

(assert (=> b!5921737 (= tp!1646018 e!3625953)))

(declare-fun b!5923207 () Bool)

(declare-fun tp!1646769 () Bool)

(declare-fun tp!1646770 () Bool)

(assert (=> b!5923207 (= e!3625953 (and tp!1646769 tp!1646770))))

(declare-fun b!5923208 () Bool)

(declare-fun tp!1646768 () Bool)

(assert (=> b!5923208 (= e!3625953 tp!1646768)))

(declare-fun b!5923206 () Bool)

(assert (=> b!5923206 (= e!3625953 tp_is_empty!41195)))

(declare-fun b!5923209 () Bool)

(declare-fun tp!1646766 () Bool)

(declare-fun tp!1646767 () Bool)

(assert (=> b!5923209 (= e!3625953 (and tp!1646766 tp!1646767))))

(assert (= (and b!5921737 ((_ is ElementMatch!15971) (regTwo!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923206))

(assert (= (and b!5921737 ((_ is Concat!24816) (regTwo!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923207))

(assert (= (and b!5921737 ((_ is Star!15971) (regTwo!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923208))

(assert (= (and b!5921737 ((_ is Union!15971) (regTwo!32454 (reg!16300 (regTwo!32454 r!7292))))) b!5923209))

(declare-fun e!3625954 () Bool)

(assert (=> b!5921746 (= tp!1646026 e!3625954)))

(declare-fun b!5923211 () Bool)

(declare-fun tp!1646774 () Bool)

(declare-fun tp!1646775 () Bool)

(assert (=> b!5923211 (= e!3625954 (and tp!1646774 tp!1646775))))

(declare-fun b!5923212 () Bool)

(declare-fun tp!1646773 () Bool)

(assert (=> b!5923212 (= e!3625954 tp!1646773)))

(declare-fun b!5923210 () Bool)

(assert (=> b!5923210 (= e!3625954 tp_is_empty!41195)))

(declare-fun b!5923213 () Bool)

(declare-fun tp!1646771 () Bool)

(declare-fun tp!1646772 () Bool)

(assert (=> b!5923213 (= e!3625954 (and tp!1646771 tp!1646772))))

(assert (= (and b!5921746 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923210))

(assert (= (and b!5921746 ((_ is Concat!24816) (reg!16300 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923211))

(assert (= (and b!5921746 ((_ is Star!15971) (reg!16300 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923212))

(assert (= (and b!5921746 ((_ is Union!15971) (reg!16300 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923213))

(declare-fun e!3625955 () Bool)

(assert (=> b!5921764 (= tp!1646051 e!3625955)))

(declare-fun b!5923215 () Bool)

(declare-fun tp!1646779 () Bool)

(declare-fun tp!1646780 () Bool)

(assert (=> b!5923215 (= e!3625955 (and tp!1646779 tp!1646780))))

(declare-fun b!5923216 () Bool)

(declare-fun tp!1646778 () Bool)

(assert (=> b!5923216 (= e!3625955 tp!1646778)))

(declare-fun b!5923214 () Bool)

(assert (=> b!5923214 (= e!3625955 tp_is_empty!41195)))

(declare-fun b!5923217 () Bool)

(declare-fun tp!1646776 () Bool)

(declare-fun tp!1646777 () Bool)

(assert (=> b!5923217 (= e!3625955 (and tp!1646776 tp!1646777))))

(assert (= (and b!5921764 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923214))

(assert (= (and b!5921764 ((_ is Concat!24816) (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923215))

(assert (= (and b!5921764 ((_ is Star!15971) (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923216))

(assert (= (and b!5921764 ((_ is Union!15971) (regOne!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923217))

(declare-fun e!3625956 () Bool)

(assert (=> b!5921764 (= tp!1646052 e!3625956)))

(declare-fun b!5923219 () Bool)

(declare-fun tp!1646784 () Bool)

(declare-fun tp!1646785 () Bool)

(assert (=> b!5923219 (= e!3625956 (and tp!1646784 tp!1646785))))

(declare-fun b!5923220 () Bool)

(declare-fun tp!1646783 () Bool)

(assert (=> b!5923220 (= e!3625956 tp!1646783)))

(declare-fun b!5923218 () Bool)

(assert (=> b!5923218 (= e!3625956 tp_is_empty!41195)))

(declare-fun b!5923221 () Bool)

(declare-fun tp!1646781 () Bool)

(declare-fun tp!1646782 () Bool)

(assert (=> b!5923221 (= e!3625956 (and tp!1646781 tp!1646782))))

(assert (= (and b!5921764 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923218))

(assert (= (and b!5921764 ((_ is Concat!24816) (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923219))

(assert (= (and b!5921764 ((_ is Star!15971) (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923220))

(assert (= (and b!5921764 ((_ is Union!15971) (regTwo!32454 (regOne!32455 (regTwo!32455 r!7292))))) b!5923221))

(declare-fun e!3625957 () Bool)

(assert (=> b!5921723 (= tp!1646008 e!3625957)))

(declare-fun b!5923223 () Bool)

(declare-fun tp!1646789 () Bool)

(declare-fun tp!1646790 () Bool)

(assert (=> b!5923223 (= e!3625957 (and tp!1646789 tp!1646790))))

(declare-fun b!5923224 () Bool)

(declare-fun tp!1646788 () Bool)

(assert (=> b!5923224 (= e!3625957 tp!1646788)))

(declare-fun b!5923222 () Bool)

(assert (=> b!5923222 (= e!3625957 tp_is_empty!41195)))

(declare-fun b!5923225 () Bool)

(declare-fun tp!1646786 () Bool)

(declare-fun tp!1646787 () Bool)

(assert (=> b!5923225 (= e!3625957 (and tp!1646786 tp!1646787))))

(assert (= (and b!5921723 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923222))

(assert (= (and b!5921723 ((_ is Concat!24816) (regOne!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923223))

(assert (= (and b!5921723 ((_ is Star!15971) (regOne!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923224))

(assert (= (and b!5921723 ((_ is Union!15971) (regOne!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923225))

(declare-fun e!3625958 () Bool)

(assert (=> b!5921723 (= tp!1646009 e!3625958)))

(declare-fun b!5923227 () Bool)

(declare-fun tp!1646794 () Bool)

(declare-fun tp!1646795 () Bool)

(assert (=> b!5923227 (= e!3625958 (and tp!1646794 tp!1646795))))

(declare-fun b!5923228 () Bool)

(declare-fun tp!1646793 () Bool)

(assert (=> b!5923228 (= e!3625958 tp!1646793)))

(declare-fun b!5923226 () Bool)

(assert (=> b!5923226 (= e!3625958 tp_is_empty!41195)))

(declare-fun b!5923229 () Bool)

(declare-fun tp!1646791 () Bool)

(declare-fun tp!1646792 () Bool)

(assert (=> b!5923229 (= e!3625958 (and tp!1646791 tp!1646792))))

(assert (= (and b!5921723 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923226))

(assert (= (and b!5921723 ((_ is Concat!24816) (regTwo!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923227))

(assert (= (and b!5921723 ((_ is Star!15971) (regTwo!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923228))

(assert (= (and b!5921723 ((_ is Union!15971) (regTwo!32455 (regTwo!32454 (regTwo!32454 r!7292))))) b!5923229))

(declare-fun e!3625959 () Bool)

(assert (=> b!5921751 (= tp!1646034 e!3625959)))

(declare-fun b!5923231 () Bool)

(declare-fun tp!1646799 () Bool)

(declare-fun tp!1646800 () Bool)

(assert (=> b!5923231 (= e!3625959 (and tp!1646799 tp!1646800))))

(declare-fun b!5923232 () Bool)

(declare-fun tp!1646798 () Bool)

(assert (=> b!5923232 (= e!3625959 tp!1646798)))

(declare-fun b!5923230 () Bool)

(assert (=> b!5923230 (= e!3625959 tp_is_empty!41195)))

(declare-fun b!5923233 () Bool)

(declare-fun tp!1646796 () Bool)

(declare-fun tp!1646797 () Bool)

(assert (=> b!5923233 (= e!3625959 (and tp!1646796 tp!1646797))))

(assert (= (and b!5921751 ((_ is ElementMatch!15971) (regOne!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923230))

(assert (= (and b!5921751 ((_ is Concat!24816) (regOne!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923231))

(assert (= (and b!5921751 ((_ is Star!15971) (regOne!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923232))

(assert (= (and b!5921751 ((_ is Union!15971) (regOne!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923233))

(declare-fun e!3625960 () Bool)

(assert (=> b!5921751 (= tp!1646035 e!3625960)))

(declare-fun b!5923235 () Bool)

(declare-fun tp!1646804 () Bool)

(declare-fun tp!1646805 () Bool)

(assert (=> b!5923235 (= e!3625960 (and tp!1646804 tp!1646805))))

(declare-fun b!5923236 () Bool)

(declare-fun tp!1646803 () Bool)

(assert (=> b!5923236 (= e!3625960 tp!1646803)))

(declare-fun b!5923234 () Bool)

(assert (=> b!5923234 (= e!3625960 tp_is_empty!41195)))

(declare-fun b!5923237 () Bool)

(declare-fun tp!1646801 () Bool)

(declare-fun tp!1646802 () Bool)

(assert (=> b!5923237 (= e!3625960 (and tp!1646801 tp!1646802))))

(assert (= (and b!5921751 ((_ is ElementMatch!15971) (regTwo!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923234))

(assert (= (and b!5921751 ((_ is Concat!24816) (regTwo!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923235))

(assert (= (and b!5921751 ((_ is Star!15971) (regTwo!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923236))

(assert (= (and b!5921751 ((_ is Union!15971) (regTwo!32454 (h!70536 (exprs!5855 setElem!40176))))) b!5923237))

(declare-fun e!3625961 () Bool)

(assert (=> b!5921709 (= tp!1645996 e!3625961)))

(declare-fun b!5923239 () Bool)

(declare-fun tp!1646809 () Bool)

(declare-fun tp!1646810 () Bool)

(assert (=> b!5923239 (= e!3625961 (and tp!1646809 tp!1646810))))

(declare-fun b!5923240 () Bool)

(declare-fun tp!1646808 () Bool)

(assert (=> b!5923240 (= e!3625961 tp!1646808)))

(declare-fun b!5923238 () Bool)

(assert (=> b!5923238 (= e!3625961 tp_is_empty!41195)))

(declare-fun b!5923241 () Bool)

(declare-fun tp!1646806 () Bool)

(declare-fun tp!1646807 () Bool)

(assert (=> b!5923241 (= e!3625961 (and tp!1646806 tp!1646807))))

(assert (= (and b!5921709 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923238))

(assert (= (and b!5921709 ((_ is Concat!24816) (regOne!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923239))

(assert (= (and b!5921709 ((_ is Star!15971) (regOne!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923240))

(assert (= (and b!5921709 ((_ is Union!15971) (regOne!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923241))

(declare-fun e!3625962 () Bool)

(assert (=> b!5921709 (= tp!1645997 e!3625962)))

(declare-fun b!5923243 () Bool)

(declare-fun tp!1646814 () Bool)

(declare-fun tp!1646815 () Bool)

(assert (=> b!5923243 (= e!3625962 (and tp!1646814 tp!1646815))))

(declare-fun b!5923244 () Bool)

(declare-fun tp!1646813 () Bool)

(assert (=> b!5923244 (= e!3625962 tp!1646813)))

(declare-fun b!5923242 () Bool)

(assert (=> b!5923242 (= e!3625962 tp_is_empty!41195)))

(declare-fun b!5923245 () Bool)

(declare-fun tp!1646811 () Bool)

(declare-fun tp!1646812 () Bool)

(assert (=> b!5923245 (= e!3625962 (and tp!1646811 tp!1646812))))

(assert (= (and b!5921709 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923242))

(assert (= (and b!5921709 ((_ is Concat!24816) (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923243))

(assert (= (and b!5921709 ((_ is Star!15971) (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923244))

(assert (= (and b!5921709 ((_ is Union!15971) (regTwo!32454 (regOne!32455 (regOne!32455 r!7292))))) b!5923245))

(declare-fun e!3625963 () Bool)

(assert (=> b!5921652 (= tp!1645938 e!3625963)))

(declare-fun b!5923247 () Bool)

(declare-fun tp!1646819 () Bool)

(declare-fun tp!1646820 () Bool)

(assert (=> b!5923247 (= e!3625963 (and tp!1646819 tp!1646820))))

(declare-fun b!5923248 () Bool)

(declare-fun tp!1646818 () Bool)

(assert (=> b!5923248 (= e!3625963 tp!1646818)))

(declare-fun b!5923246 () Bool)

(assert (=> b!5923246 (= e!3625963 tp_is_empty!41195)))

(declare-fun b!5923249 () Bool)

(declare-fun tp!1646816 () Bool)

(declare-fun tp!1646817 () Bool)

(assert (=> b!5923249 (= e!3625963 (and tp!1646816 tp!1646817))))

(assert (= (and b!5921652 ((_ is ElementMatch!15971) (regOne!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923246))

(assert (= (and b!5921652 ((_ is Concat!24816) (regOne!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923247))

(assert (= (and b!5921652 ((_ is Star!15971) (regOne!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923248))

(assert (= (and b!5921652 ((_ is Union!15971) (regOne!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923249))

(declare-fun e!3625964 () Bool)

(assert (=> b!5921652 (= tp!1645939 e!3625964)))

(declare-fun b!5923251 () Bool)

(declare-fun tp!1646824 () Bool)

(declare-fun tp!1646825 () Bool)

(assert (=> b!5923251 (= e!3625964 (and tp!1646824 tp!1646825))))

(declare-fun b!5923252 () Bool)

(declare-fun tp!1646823 () Bool)

(assert (=> b!5923252 (= e!3625964 tp!1646823)))

(declare-fun b!5923250 () Bool)

(assert (=> b!5923250 (= e!3625964 tp_is_empty!41195)))

(declare-fun b!5923253 () Bool)

(declare-fun tp!1646821 () Bool)

(declare-fun tp!1646822 () Bool)

(assert (=> b!5923253 (= e!3625964 (and tp!1646821 tp!1646822))))

(assert (= (and b!5921652 ((_ is ElementMatch!15971) (regTwo!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923250))

(assert (= (and b!5921652 ((_ is Concat!24816) (regTwo!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923251))

(assert (= (and b!5921652 ((_ is Star!15971) (regTwo!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923252))

(assert (= (and b!5921652 ((_ is Union!15971) (regTwo!32455 (regOne!32454 (regOne!32454 r!7292))))) b!5923253))

(declare-fun b!5923254 () Bool)

(declare-fun e!3625965 () Bool)

(declare-fun tp!1646826 () Bool)

(assert (=> b!5923254 (= e!3625965 (and tp_is_empty!41195 tp!1646826))))

(assert (=> b!5921735 (= tp!1646013 e!3625965)))

(assert (= (and b!5921735 ((_ is Cons!64090) (t!377605 (t!377605 (t!377605 s!2326))))) b!5923254))

(declare-fun e!3625966 () Bool)

(assert (=> b!5921643 (= tp!1645930 e!3625966)))

(declare-fun b!5923256 () Bool)

(declare-fun tp!1646830 () Bool)

(declare-fun tp!1646831 () Bool)

(assert (=> b!5923256 (= e!3625966 (and tp!1646830 tp!1646831))))

(declare-fun b!5923257 () Bool)

(declare-fun tp!1646829 () Bool)

(assert (=> b!5923257 (= e!3625966 tp!1646829)))

(declare-fun b!5923255 () Bool)

(assert (=> b!5923255 (= e!3625966 tp_is_empty!41195)))

(declare-fun b!5923258 () Bool)

(declare-fun tp!1646827 () Bool)

(declare-fun tp!1646828 () Bool)

(assert (=> b!5923258 (= e!3625966 (and tp!1646827 tp!1646828))))

(assert (= (and b!5921643 ((_ is ElementMatch!15971) (reg!16300 (regOne!32454 (reg!16300 r!7292))))) b!5923255))

(assert (= (and b!5921643 ((_ is Concat!24816) (reg!16300 (regOne!32454 (reg!16300 r!7292))))) b!5923256))

(assert (= (and b!5921643 ((_ is Star!15971) (reg!16300 (regOne!32454 (reg!16300 r!7292))))) b!5923257))

(assert (= (and b!5921643 ((_ is Union!15971) (reg!16300 (regOne!32454 (reg!16300 r!7292))))) b!5923258))

(declare-fun e!3625967 () Bool)

(assert (=> b!5921762 (= tp!1646043 e!3625967)))

(declare-fun b!5923260 () Bool)

(declare-fun tp!1646835 () Bool)

(declare-fun tp!1646836 () Bool)

(assert (=> b!5923260 (= e!3625967 (and tp!1646835 tp!1646836))))

(declare-fun b!5923261 () Bool)

(declare-fun tp!1646834 () Bool)

(assert (=> b!5923261 (= e!3625967 tp!1646834)))

(declare-fun b!5923259 () Bool)

(assert (=> b!5923259 (= e!3625967 tp_is_empty!41195)))

(declare-fun b!5923262 () Bool)

(declare-fun tp!1646832 () Bool)

(declare-fun tp!1646833 () Bool)

(assert (=> b!5923262 (= e!3625967 (and tp!1646832 tp!1646833))))

(assert (= (and b!5921762 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923259))

(assert (= (and b!5921762 ((_ is Concat!24816) (regOne!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923260))

(assert (= (and b!5921762 ((_ is Star!15971) (regOne!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923261))

(assert (= (and b!5921762 ((_ is Union!15971) (regOne!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923262))

(declare-fun e!3625968 () Bool)

(assert (=> b!5921762 (= tp!1646044 e!3625968)))

(declare-fun b!5923264 () Bool)

(declare-fun tp!1646840 () Bool)

(declare-fun tp!1646841 () Bool)

(assert (=> b!5923264 (= e!3625968 (and tp!1646840 tp!1646841))))

(declare-fun b!5923265 () Bool)

(declare-fun tp!1646839 () Bool)

(assert (=> b!5923265 (= e!3625968 tp!1646839)))

(declare-fun b!5923263 () Bool)

(assert (=> b!5923263 (= e!3625968 tp_is_empty!41195)))

(declare-fun b!5923266 () Bool)

(declare-fun tp!1646837 () Bool)

(declare-fun tp!1646838 () Bool)

(assert (=> b!5923266 (= e!3625968 (and tp!1646837 tp!1646838))))

(assert (= (and b!5921762 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923263))

(assert (= (and b!5921762 ((_ is Concat!24816) (regTwo!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923264))

(assert (= (and b!5921762 ((_ is Star!15971) (regTwo!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923265))

(assert (= (and b!5921762 ((_ is Union!15971) (regTwo!32455 (regTwo!32454 (regTwo!32455 r!7292))))) b!5923266))

(declare-fun e!3625969 () Bool)

(assert (=> b!5921671 (= tp!1645960 e!3625969)))

(declare-fun b!5923268 () Bool)

(declare-fun tp!1646845 () Bool)

(declare-fun tp!1646846 () Bool)

(assert (=> b!5923268 (= e!3625969 (and tp!1646845 tp!1646846))))

(declare-fun b!5923269 () Bool)

(declare-fun tp!1646844 () Bool)

(assert (=> b!5923269 (= e!3625969 tp!1646844)))

(declare-fun b!5923267 () Bool)

(assert (=> b!5923267 (= e!3625969 tp_is_empty!41195)))

(declare-fun b!5923270 () Bool)

(declare-fun tp!1646842 () Bool)

(declare-fun tp!1646843 () Bool)

(assert (=> b!5923270 (= e!3625969 (and tp!1646842 tp!1646843))))

(assert (= (and b!5921671 ((_ is ElementMatch!15971) (reg!16300 (reg!16300 (regOne!32454 r!7292))))) b!5923267))

(assert (= (and b!5921671 ((_ is Concat!24816) (reg!16300 (reg!16300 (regOne!32454 r!7292))))) b!5923268))

(assert (= (and b!5921671 ((_ is Star!15971) (reg!16300 (reg!16300 (regOne!32454 r!7292))))) b!5923269))

(assert (= (and b!5921671 ((_ is Union!15971) (reg!16300 (reg!16300 (regOne!32454 r!7292))))) b!5923270))

(declare-fun e!3625970 () Bool)

(assert (=> b!5921714 (= tp!1646000 e!3625970)))

(declare-fun b!5923272 () Bool)

(declare-fun tp!1646850 () Bool)

(declare-fun tp!1646851 () Bool)

(assert (=> b!5923272 (= e!3625970 (and tp!1646850 tp!1646851))))

(declare-fun b!5923273 () Bool)

(declare-fun tp!1646849 () Bool)

(assert (=> b!5923273 (= e!3625970 tp!1646849)))

(declare-fun b!5923271 () Bool)

(assert (=> b!5923271 (= e!3625970 tp_is_empty!41195)))

(declare-fun b!5923274 () Bool)

(declare-fun tp!1646847 () Bool)

(declare-fun tp!1646848 () Bool)

(assert (=> b!5923274 (= e!3625970 (and tp!1646847 tp!1646848))))

(assert (= (and b!5921714 ((_ is ElementMatch!15971) (reg!16300 (regTwo!32455 (regOne!32455 r!7292))))) b!5923271))

(assert (= (and b!5921714 ((_ is Concat!24816) (reg!16300 (regTwo!32455 (regOne!32455 r!7292))))) b!5923272))

(assert (= (and b!5921714 ((_ is Star!15971) (reg!16300 (regTwo!32455 (regOne!32455 r!7292))))) b!5923273))

(assert (= (and b!5921714 ((_ is Union!15971) (reg!16300 (regTwo!32455 (regOne!32455 r!7292))))) b!5923274))

(declare-fun e!3625971 () Bool)

(assert (=> b!5921666 (= tp!1645953 e!3625971)))

(declare-fun b!5923276 () Bool)

(declare-fun tp!1646855 () Bool)

(declare-fun tp!1646856 () Bool)

(assert (=> b!5923276 (= e!3625971 (and tp!1646855 tp!1646856))))

(declare-fun b!5923277 () Bool)

(declare-fun tp!1646854 () Bool)

(assert (=> b!5923277 (= e!3625971 tp!1646854)))

(declare-fun b!5923275 () Bool)

(assert (=> b!5923275 (= e!3625971 tp_is_empty!41195)))

(declare-fun b!5923278 () Bool)

(declare-fun tp!1646852 () Bool)

(declare-fun tp!1646853 () Bool)

(assert (=> b!5923278 (= e!3625971 (and tp!1646852 tp!1646853))))

(assert (= (and b!5921666 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923275))

(assert (= (and b!5921666 ((_ is Concat!24816) (regOne!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923276))

(assert (= (and b!5921666 ((_ is Star!15971) (regOne!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923277))

(assert (= (and b!5921666 ((_ is Union!15971) (regOne!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923278))

(declare-fun e!3625972 () Bool)

(assert (=> b!5921666 (= tp!1645954 e!3625972)))

(declare-fun b!5923280 () Bool)

(declare-fun tp!1646860 () Bool)

(declare-fun tp!1646861 () Bool)

(assert (=> b!5923280 (= e!3625972 (and tp!1646860 tp!1646861))))

(declare-fun b!5923281 () Bool)

(declare-fun tp!1646859 () Bool)

(assert (=> b!5923281 (= e!3625972 tp!1646859)))

(declare-fun b!5923279 () Bool)

(assert (=> b!5923279 (= e!3625972 tp_is_empty!41195)))

(declare-fun b!5923282 () Bool)

(declare-fun tp!1646857 () Bool)

(declare-fun tp!1646858 () Bool)

(assert (=> b!5923282 (= e!3625972 (and tp!1646857 tp!1646858))))

(assert (= (and b!5921666 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923279))

(assert (= (and b!5921666 ((_ is Concat!24816) (regTwo!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923280))

(assert (= (and b!5921666 ((_ is Star!15971) (regTwo!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923281))

(assert (= (and b!5921666 ((_ is Union!15971) (regTwo!32455 (regTwo!32455 (regOne!32454 r!7292))))) b!5923282))

(declare-fun b!5923283 () Bool)

(declare-fun e!3625973 () Bool)

(declare-fun tp!1646862 () Bool)

(declare-fun tp!1646863 () Bool)

(assert (=> b!5923283 (= e!3625973 (and tp!1646862 tp!1646863))))

(assert (=> b!5921639 (= tp!1645924 e!3625973)))

(assert (= (and b!5921639 ((_ is Cons!64088) (exprs!5855 setElem!40189))) b!5923283))

(declare-fun e!3625974 () Bool)

(assert (=> b!5921698 (= tp!1645980 e!3625974)))

(declare-fun b!5923285 () Bool)

(declare-fun tp!1646867 () Bool)

(declare-fun tp!1646868 () Bool)

(assert (=> b!5923285 (= e!3625974 (and tp!1646867 tp!1646868))))

(declare-fun b!5923286 () Bool)

(declare-fun tp!1646866 () Bool)

(assert (=> b!5923286 (= e!3625974 tp!1646866)))

(declare-fun b!5923284 () Bool)

(assert (=> b!5923284 (= e!3625974 tp_is_empty!41195)))

(declare-fun b!5923287 () Bool)

(declare-fun tp!1646864 () Bool)

(declare-fun tp!1646865 () Bool)

(assert (=> b!5923287 (= e!3625974 (and tp!1646864 tp!1646865))))

(assert (= (and b!5921698 ((_ is ElementMatch!15971) (reg!16300 (regOne!32455 (reg!16300 r!7292))))) b!5923284))

(assert (= (and b!5921698 ((_ is Concat!24816) (reg!16300 (regOne!32455 (reg!16300 r!7292))))) b!5923285))

(assert (= (and b!5921698 ((_ is Star!15971) (reg!16300 (regOne!32455 (reg!16300 r!7292))))) b!5923286))

(assert (= (and b!5921698 ((_ is Union!15971) (reg!16300 (regOne!32455 (reg!16300 r!7292))))) b!5923287))

(declare-fun e!3625975 () Bool)

(assert (=> b!5921678 (= tp!1645971 e!3625975)))

(declare-fun b!5923289 () Bool)

(declare-fun tp!1646872 () Bool)

(declare-fun tp!1646873 () Bool)

(assert (=> b!5923289 (= e!3625975 (and tp!1646872 tp!1646873))))

(declare-fun b!5923290 () Bool)

(declare-fun tp!1646871 () Bool)

(assert (=> b!5923290 (= e!3625975 tp!1646871)))

(declare-fun b!5923288 () Bool)

(assert (=> b!5923288 (= e!3625975 tp_is_empty!41195)))

(declare-fun b!5923291 () Bool)

(declare-fun tp!1646869 () Bool)

(declare-fun tp!1646870 () Bool)

(assert (=> b!5923291 (= e!3625975 (and tp!1646869 tp!1646870))))

(assert (= (and b!5921678 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923288))

(assert (= (and b!5921678 ((_ is Concat!24816) (regOne!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923289))

(assert (= (and b!5921678 ((_ is Star!15971) (regOne!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923290))

(assert (= (and b!5921678 ((_ is Union!15971) (regOne!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923291))

(declare-fun e!3625976 () Bool)

(assert (=> b!5921678 (= tp!1645972 e!3625976)))

(declare-fun b!5923293 () Bool)

(declare-fun tp!1646877 () Bool)

(declare-fun tp!1646878 () Bool)

(assert (=> b!5923293 (= e!3625976 (and tp!1646877 tp!1646878))))

(declare-fun b!5923294 () Bool)

(declare-fun tp!1646876 () Bool)

(assert (=> b!5923294 (= e!3625976 tp!1646876)))

(declare-fun b!5923292 () Bool)

(assert (=> b!5923292 (= e!3625976 tp_is_empty!41195)))

(declare-fun b!5923295 () Bool)

(declare-fun tp!1646874 () Bool)

(declare-fun tp!1646875 () Bool)

(assert (=> b!5923295 (= e!3625976 (and tp!1646874 tp!1646875))))

(assert (= (and b!5921678 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923292))

(assert (= (and b!5921678 ((_ is Concat!24816) (regTwo!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923293))

(assert (= (and b!5921678 ((_ is Star!15971) (regTwo!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923294))

(assert (= (and b!5921678 ((_ is Union!15971) (regTwo!32454 (regOne!32454 (regOne!32455 r!7292))))) b!5923295))

(declare-fun e!3625977 () Bool)

(assert (=> b!5921707 (= tp!1645988 e!3625977)))

(declare-fun b!5923297 () Bool)

(declare-fun tp!1646882 () Bool)

(declare-fun tp!1646883 () Bool)

(assert (=> b!5923297 (= e!3625977 (and tp!1646882 tp!1646883))))

(declare-fun b!5923298 () Bool)

(declare-fun tp!1646881 () Bool)

(assert (=> b!5923298 (= e!3625977 tp!1646881)))

(declare-fun b!5923296 () Bool)

(assert (=> b!5923296 (= e!3625977 tp_is_empty!41195)))

(declare-fun b!5923299 () Bool)

(declare-fun tp!1646879 () Bool)

(declare-fun tp!1646880 () Bool)

(assert (=> b!5923299 (= e!3625977 (and tp!1646879 tp!1646880))))

(assert (= (and b!5921707 ((_ is ElementMatch!15971) (regOne!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923296))

(assert (= (and b!5921707 ((_ is Concat!24816) (regOne!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923297))

(assert (= (and b!5921707 ((_ is Star!15971) (regOne!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923298))

(assert (= (and b!5921707 ((_ is Union!15971) (regOne!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923299))

(declare-fun e!3625978 () Bool)

(assert (=> b!5921707 (= tp!1645989 e!3625978)))

(declare-fun b!5923301 () Bool)

(declare-fun tp!1646887 () Bool)

(declare-fun tp!1646888 () Bool)

(assert (=> b!5923301 (= e!3625978 (and tp!1646887 tp!1646888))))

(declare-fun b!5923302 () Bool)

(declare-fun tp!1646886 () Bool)

(assert (=> b!5923302 (= e!3625978 tp!1646886)))

(declare-fun b!5923300 () Bool)

(assert (=> b!5923300 (= e!3625978 tp_is_empty!41195)))

(declare-fun b!5923303 () Bool)

(declare-fun tp!1646884 () Bool)

(declare-fun tp!1646885 () Bool)

(assert (=> b!5923303 (= e!3625978 (and tp!1646884 tp!1646885))))

(assert (= (and b!5921707 ((_ is ElementMatch!15971) (regTwo!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923300))

(assert (= (and b!5921707 ((_ is Concat!24816) (regTwo!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923301))

(assert (= (and b!5921707 ((_ is Star!15971) (regTwo!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923302))

(assert (= (and b!5921707 ((_ is Union!15971) (regTwo!32455 (reg!16300 (regOne!32455 r!7292))))) b!5923303))

(declare-fun e!3625979 () Bool)

(assert (=> b!5921717 (= tp!1646006 e!3625979)))

(declare-fun b!5923305 () Bool)

(declare-fun tp!1646892 () Bool)

(declare-fun tp!1646893 () Bool)

(assert (=> b!5923305 (= e!3625979 (and tp!1646892 tp!1646893))))

(declare-fun b!5923306 () Bool)

(declare-fun tp!1646891 () Bool)

(assert (=> b!5923306 (= e!3625979 tp!1646891)))

(declare-fun b!5923304 () Bool)

(assert (=> b!5923304 (= e!3625979 tp_is_empty!41195)))

(declare-fun b!5923307 () Bool)

(declare-fun tp!1646889 () Bool)

(declare-fun tp!1646890 () Bool)

(assert (=> b!5923307 (= e!3625979 (and tp!1646889 tp!1646890))))

(assert (= (and b!5921717 ((_ is ElementMatch!15971) (regOne!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923304))

(assert (= (and b!5921717 ((_ is Concat!24816) (regOne!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923305))

(assert (= (and b!5921717 ((_ is Star!15971) (regOne!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923306))

(assert (= (and b!5921717 ((_ is Union!15971) (regOne!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923307))

(declare-fun e!3625980 () Bool)

(assert (=> b!5921717 (= tp!1646007 e!3625980)))

(declare-fun b!5923309 () Bool)

(declare-fun tp!1646897 () Bool)

(declare-fun tp!1646898 () Bool)

(assert (=> b!5923309 (= e!3625980 (and tp!1646897 tp!1646898))))

(declare-fun b!5923310 () Bool)

(declare-fun tp!1646896 () Bool)

(assert (=> b!5923310 (= e!3625980 tp!1646896)))

(declare-fun b!5923308 () Bool)

(assert (=> b!5923308 (= e!3625980 tp_is_empty!41195)))

(declare-fun b!5923311 () Bool)

(declare-fun tp!1646894 () Bool)

(declare-fun tp!1646895 () Bool)

(assert (=> b!5923311 (= e!3625980 (and tp!1646894 tp!1646895))))

(assert (= (and b!5921717 ((_ is ElementMatch!15971) (regTwo!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923308))

(assert (= (and b!5921717 ((_ is Concat!24816) (regTwo!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923309))

(assert (= (and b!5921717 ((_ is Star!15971) (regTwo!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923310))

(assert (= (and b!5921717 ((_ is Union!15971) (regTwo!32454 (regOne!32454 (regTwo!32454 r!7292))))) b!5923311))

(declare-fun e!3625981 () Bool)

(assert (=> b!5921661 (= tp!1645950 e!3625981)))

(declare-fun b!5923313 () Bool)

(declare-fun tp!1646902 () Bool)

(declare-fun tp!1646903 () Bool)

(assert (=> b!5923313 (= e!3625981 (and tp!1646902 tp!1646903))))

(declare-fun b!5923314 () Bool)

(declare-fun tp!1646901 () Bool)

(assert (=> b!5923314 (= e!3625981 tp!1646901)))

(declare-fun b!5923312 () Bool)

(assert (=> b!5923312 (= e!3625981 tp_is_empty!41195)))

(declare-fun b!5923315 () Bool)

(declare-fun tp!1646899 () Bool)

(declare-fun tp!1646900 () Bool)

(assert (=> b!5923315 (= e!3625981 (and tp!1646899 tp!1646900))))

(assert (= (and b!5921661 ((_ is ElementMatch!15971) (reg!16300 (regOne!32455 (regOne!32454 r!7292))))) b!5923312))

(assert (= (and b!5921661 ((_ is Concat!24816) (reg!16300 (regOne!32455 (regOne!32454 r!7292))))) b!5923313))

(assert (= (and b!5921661 ((_ is Star!15971) (reg!16300 (regOne!32455 (regOne!32454 r!7292))))) b!5923314))

(assert (= (and b!5921661 ((_ is Union!15971) (reg!16300 (regOne!32455 (regOne!32454 r!7292))))) b!5923315))

(declare-fun e!3625982 () Bool)

(assert (=> b!5921654 (= tp!1645946 e!3625982)))

(declare-fun b!5923317 () Bool)

(declare-fun tp!1646907 () Bool)

(declare-fun tp!1646908 () Bool)

(assert (=> b!5923317 (= e!3625982 (and tp!1646907 tp!1646908))))

(declare-fun b!5923318 () Bool)

(declare-fun tp!1646906 () Bool)

(assert (=> b!5923318 (= e!3625982 tp!1646906)))

(declare-fun b!5923316 () Bool)

(assert (=> b!5923316 (= e!3625982 tp_is_empty!41195)))

(declare-fun b!5923319 () Bool)

(declare-fun tp!1646904 () Bool)

(declare-fun tp!1646905 () Bool)

(assert (=> b!5923319 (= e!3625982 (and tp!1646904 tp!1646905))))

(assert (= (and b!5921654 ((_ is ElementMatch!15971) (regOne!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923316))

(assert (= (and b!5921654 ((_ is Concat!24816) (regOne!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923317))

(assert (= (and b!5921654 ((_ is Star!15971) (regOne!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923318))

(assert (= (and b!5921654 ((_ is Union!15971) (regOne!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923319))

(declare-fun e!3625983 () Bool)

(assert (=> b!5921654 (= tp!1645947 e!3625983)))

(declare-fun b!5923321 () Bool)

(declare-fun tp!1646912 () Bool)

(declare-fun tp!1646913 () Bool)

(assert (=> b!5923321 (= e!3625983 (and tp!1646912 tp!1646913))))

(declare-fun b!5923322 () Bool)

(declare-fun tp!1646911 () Bool)

(assert (=> b!5923322 (= e!3625983 tp!1646911)))

(declare-fun b!5923320 () Bool)

(assert (=> b!5923320 (= e!3625983 tp_is_empty!41195)))

(declare-fun b!5923323 () Bool)

(declare-fun tp!1646909 () Bool)

(declare-fun tp!1646910 () Bool)

(assert (=> b!5923323 (= e!3625983 (and tp!1646909 tp!1646910))))

(assert (= (and b!5921654 ((_ is ElementMatch!15971) (regTwo!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923320))

(assert (= (and b!5921654 ((_ is Concat!24816) (regTwo!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923321))

(assert (= (and b!5921654 ((_ is Star!15971) (regTwo!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923322))

(assert (= (and b!5921654 ((_ is Union!15971) (regTwo!32454 (regTwo!32454 (regOne!32454 r!7292))))) b!5923323))

(declare-fun e!3625984 () Bool)

(assert (=> b!5921738 (= tp!1646016 e!3625984)))

(declare-fun b!5923325 () Bool)

(declare-fun tp!1646917 () Bool)

(declare-fun tp!1646918 () Bool)

(assert (=> b!5923325 (= e!3625984 (and tp!1646917 tp!1646918))))

(declare-fun b!5923326 () Bool)

(declare-fun tp!1646916 () Bool)

(assert (=> b!5923326 (= e!3625984 tp!1646916)))

(declare-fun b!5923324 () Bool)

(assert (=> b!5923324 (= e!3625984 tp_is_empty!41195)))

(declare-fun b!5923327 () Bool)

(declare-fun tp!1646914 () Bool)

(declare-fun tp!1646915 () Bool)

(assert (=> b!5923327 (= e!3625984 (and tp!1646914 tp!1646915))))

(assert (= (and b!5921738 ((_ is ElementMatch!15971) (reg!16300 (reg!16300 (regTwo!32454 r!7292))))) b!5923324))

(assert (= (and b!5921738 ((_ is Concat!24816) (reg!16300 (reg!16300 (regTwo!32454 r!7292))))) b!5923325))

(assert (= (and b!5921738 ((_ is Star!15971) (reg!16300 (reg!16300 (regTwo!32454 r!7292))))) b!5923326))

(assert (= (and b!5921738 ((_ is Union!15971) (reg!16300 (reg!16300 (regTwo!32454 r!7292))))) b!5923327))

(declare-fun e!3625985 () Bool)

(assert (=> b!5921640 (= tp!1645926 e!3625985)))

(declare-fun b!5923329 () Bool)

(declare-fun tp!1646922 () Bool)

(declare-fun tp!1646923 () Bool)

(assert (=> b!5923329 (= e!3625985 (and tp!1646922 tp!1646923))))

(declare-fun b!5923330 () Bool)

(declare-fun tp!1646921 () Bool)

(assert (=> b!5923330 (= e!3625985 tp!1646921)))

(declare-fun b!5923328 () Bool)

(assert (=> b!5923328 (= e!3625985 tp_is_empty!41195)))

(declare-fun b!5923331 () Bool)

(declare-fun tp!1646919 () Bool)

(declare-fun tp!1646920 () Bool)

(assert (=> b!5923331 (= e!3625985 (and tp!1646919 tp!1646920))))

(assert (= (and b!5921640 ((_ is ElementMatch!15971) (h!70536 (exprs!5855 setElem!40182)))) b!5923328))

(assert (= (and b!5921640 ((_ is Concat!24816) (h!70536 (exprs!5855 setElem!40182)))) b!5923329))

(assert (= (and b!5921640 ((_ is Star!15971) (h!70536 (exprs!5855 setElem!40182)))) b!5923330))

(assert (= (and b!5921640 ((_ is Union!15971) (h!70536 (exprs!5855 setElem!40182)))) b!5923331))

(declare-fun b!5923332 () Bool)

(declare-fun e!3625986 () Bool)

(declare-fun tp!1646924 () Bool)

(declare-fun tp!1646925 () Bool)

(assert (=> b!5923332 (= e!3625986 (and tp!1646924 tp!1646925))))

(assert (=> b!5921640 (= tp!1645927 e!3625986)))

(assert (= (and b!5921640 ((_ is Cons!64088) (t!377603 (exprs!5855 setElem!40182)))) b!5923332))

(declare-fun e!3625987 () Bool)

(assert (=> b!5921747 (= tp!1646024 e!3625987)))

(declare-fun b!5923334 () Bool)

(declare-fun tp!1646929 () Bool)

(declare-fun tp!1646930 () Bool)

(assert (=> b!5923334 (= e!3625987 (and tp!1646929 tp!1646930))))

(declare-fun b!5923335 () Bool)

(declare-fun tp!1646928 () Bool)

(assert (=> b!5923335 (= e!3625987 tp!1646928)))

(declare-fun b!5923333 () Bool)

(assert (=> b!5923333 (= e!3625987 tp_is_empty!41195)))

(declare-fun b!5923336 () Bool)

(declare-fun tp!1646926 () Bool)

(declare-fun tp!1646927 () Bool)

(assert (=> b!5923336 (= e!3625987 (and tp!1646926 tp!1646927))))

(assert (= (and b!5921747 ((_ is ElementMatch!15971) (regOne!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923333))

(assert (= (and b!5921747 ((_ is Concat!24816) (regOne!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923334))

(assert (= (and b!5921747 ((_ is Star!15971) (regOne!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923335))

(assert (= (and b!5921747 ((_ is Union!15971) (regOne!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923336))

(declare-fun e!3625988 () Bool)

(assert (=> b!5921747 (= tp!1646025 e!3625988)))

(declare-fun b!5923338 () Bool)

(declare-fun tp!1646934 () Bool)

(declare-fun tp!1646935 () Bool)

(assert (=> b!5923338 (= e!3625988 (and tp!1646934 tp!1646935))))

(declare-fun b!5923339 () Bool)

(declare-fun tp!1646933 () Bool)

(assert (=> b!5923339 (= e!3625988 tp!1646933)))

(declare-fun b!5923337 () Bool)

(assert (=> b!5923337 (= e!3625988 tp_is_empty!41195)))

(declare-fun b!5923340 () Bool)

(declare-fun tp!1646931 () Bool)

(declare-fun tp!1646932 () Bool)

(assert (=> b!5923340 (= e!3625988 (and tp!1646931 tp!1646932))))

(assert (= (and b!5921747 ((_ is ElementMatch!15971) (regTwo!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923337))

(assert (= (and b!5921747 ((_ is Concat!24816) (regTwo!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923338))

(assert (= (and b!5921747 ((_ is Star!15971) (regTwo!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923339))

(assert (= (and b!5921747 ((_ is Union!15971) (regTwo!32455 (regTwo!32455 (regTwo!32454 r!7292))))) b!5923340))

(declare-fun e!3625989 () Bool)

(assert (=> b!5921765 (= tp!1646050 e!3625989)))

(declare-fun b!5923342 () Bool)

(declare-fun tp!1646939 () Bool)

(declare-fun tp!1646940 () Bool)

(assert (=> b!5923342 (= e!3625989 (and tp!1646939 tp!1646940))))

(declare-fun b!5923343 () Bool)

(declare-fun tp!1646938 () Bool)

(assert (=> b!5923343 (= e!3625989 tp!1646938)))

(declare-fun b!5923341 () Bool)

(assert (=> b!5923341 (= e!3625989 tp_is_empty!41195)))

(declare-fun b!5923344 () Bool)

(declare-fun tp!1646936 () Bool)

(declare-fun tp!1646937 () Bool)

(assert (=> b!5923344 (= e!3625989 (and tp!1646936 tp!1646937))))

(assert (= (and b!5921765 ((_ is ElementMatch!15971) (reg!16300 (regOne!32455 (regTwo!32455 r!7292))))) b!5923341))

(assert (= (and b!5921765 ((_ is Concat!24816) (reg!16300 (regOne!32455 (regTwo!32455 r!7292))))) b!5923342))

(assert (= (and b!5921765 ((_ is Star!15971) (reg!16300 (regOne!32455 (regTwo!32455 r!7292))))) b!5923343))

(assert (= (and b!5921765 ((_ is Union!15971) (reg!16300 (regOne!32455 (regTwo!32455 r!7292))))) b!5923344))

(declare-fun b_lambda!222467 () Bool)

(assert (= b_lambda!222459 (or d!1856735 b_lambda!222467)))

(declare-fun bs!1401920 () Bool)

(declare-fun d!1857411 () Bool)

(assert (= bs!1401920 (and d!1857411 d!1856735)))

(assert (=> bs!1401920 (= (dynLambda!25057 lambda!323014 (h!70536 (t!377603 lt!2310021))) (validRegex!7707 (h!70536 (t!377603 lt!2310021))))))

(declare-fun m!6818400 () Bool)

(assert (=> bs!1401920 m!6818400))

(assert (=> b!5922660 d!1857411))

(declare-fun b_lambda!222469 () Bool)

(assert (= b_lambda!222445 (or d!1856903 b_lambda!222469)))

(declare-fun bs!1401921 () Bool)

(declare-fun d!1857413 () Bool)

(assert (= bs!1401921 (and d!1857413 d!1856903)))

(assert (=> bs!1401921 (= (dynLambda!25057 lambda!323032 (h!70536 (exprs!5855 setElem!40182))) (validRegex!7707 (h!70536 (exprs!5855 setElem!40182))))))

(declare-fun m!6818402 () Bool)

(assert (=> bs!1401921 m!6818402))

(assert (=> b!5922119 d!1857413))

(declare-fun b_lambda!222471 () Bool)

(assert (= b_lambda!222461 (or d!1856641 b_lambda!222471)))

(declare-fun bs!1401922 () Bool)

(declare-fun d!1857415 () Bool)

(assert (= bs!1401922 (and d!1857415 d!1856641)))

(assert (=> bs!1401922 (= (dynLambda!25057 lambda!322963 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))) (validRegex!7707 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(declare-fun m!6818404 () Bool)

(assert (=> bs!1401922 m!6818404))

(assert (=> b!5922719 d!1857415))

(declare-fun b_lambda!222473 () Bool)

(assert (= b_lambda!222457 (or d!1856951 b_lambda!222473)))

(declare-fun bs!1401923 () Bool)

(declare-fun d!1857417 () Bool)

(assert (= bs!1401923 (and d!1857417 d!1856951)))

(assert (=> bs!1401923 (= (dynLambda!25057 lambda!323038 (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343))))) (validRegex!7707 (h!70536 (exprs!5855 (h!70537 (t!377604 zl!343))))))))

(declare-fun m!6818406 () Bool)

(assert (=> bs!1401923 m!6818406))

(assert (=> b!5922658 d!1857417))

(declare-fun b_lambda!222475 () Bool)

(assert (= b_lambda!222463 (or d!1856733 b_lambda!222475)))

(declare-fun bs!1401924 () Bool)

(declare-fun d!1857419 () Bool)

(assert (= bs!1401924 (and d!1857419 d!1856733)))

(assert (=> bs!1401924 (= (dynLambda!25057 lambda!323011 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343)))) (validRegex!7707 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(declare-fun m!6818408 () Bool)

(assert (=> bs!1401924 m!6818408))

(assert (=> b!5922721 d!1857419))

(declare-fun b_lambda!222477 () Bool)

(assert (= b_lambda!222455 (or d!1856887 b_lambda!222477)))

(declare-fun bs!1401925 () Bool)

(declare-fun d!1857421 () Bool)

(assert (= bs!1401925 (and d!1857421 d!1856887)))

(assert (=> bs!1401925 (= (dynLambda!25057 lambda!323031 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343)))) (validRegex!7707 (h!70536 (t!377603 (unfocusZipperList!1392 zl!343)))))))

(assert (=> bs!1401925 m!6818408))

(assert (=> b!5922647 d!1857421))

(declare-fun b_lambda!222479 () Bool)

(assert (= b_lambda!222451 (or d!1856675 b_lambda!222479)))

(declare-fun bs!1401926 () Bool)

(declare-fun d!1857423 () Bool)

(assert (= bs!1401926 (and d!1857423 d!1856675)))

(assert (=> bs!1401926 (= (dynLambda!25057 lambda!322975 (h!70536 (t!377603 (exprs!5855 setElem!40176)))) (validRegex!7707 (h!70536 (t!377603 (exprs!5855 setElem!40176)))))))

(declare-fun m!6818410 () Bool)

(assert (=> bs!1401926 m!6818410))

(assert (=> b!5922538 d!1857423))

(declare-fun b_lambda!222481 () Bool)

(assert (= b_lambda!222449 (or d!1856717 b_lambda!222481)))

(declare-fun bs!1401927 () Bool)

(declare-fun d!1857425 () Bool)

(assert (= bs!1401927 (and d!1857425 d!1856717)))

(assert (=> bs!1401927 (= (dynLambda!25057 lambda!323001 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))) (validRegex!7707 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(assert (=> bs!1401927 m!6818404))

(assert (=> b!5922474 d!1857425))

(declare-fun b_lambda!222483 () Bool)

(assert (= b_lambda!222453 (or d!1856817 b_lambda!222483)))

(declare-fun bs!1401928 () Bool)

(declare-fun d!1857427 () Bool)

(assert (= bs!1401928 (and d!1857427 d!1856817)))

(assert (=> bs!1401928 (= (dynLambda!25057 lambda!323024 (h!70536 lt!2310038)) (validRegex!7707 (h!70536 lt!2310038)))))

(declare-fun m!6818412 () Bool)

(assert (=> bs!1401928 m!6818412))

(assert (=> b!5922581 d!1857427))

(declare-fun b_lambda!222485 () Bool)

(assert (= b_lambda!222447 (or d!1856723 b_lambda!222485)))

(declare-fun bs!1401929 () Bool)

(declare-fun d!1857429 () Bool)

(assert (= bs!1401929 (and d!1857429 d!1856723)))

(assert (=> bs!1401929 (= (dynLambda!25057 lambda!323002 (h!70536 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))))) (validRegex!7707 (h!70536 (t!377603 (exprs!5855 (Context!10711 (Cons!64088 (regOne!32454 r!7292) (Cons!64088 (regTwo!32454 r!7292) Nil!64088))))))))))

(declare-fun m!6818414 () Bool)

(assert (=> bs!1401929 m!6818414))

(assert (=> b!5922319 d!1857429))

(declare-fun b_lambda!222487 () Bool)

(assert (= b_lambda!222465 (or d!1856873 b_lambda!222487)))

(declare-fun bs!1401930 () Bool)

(declare-fun d!1857431 () Bool)

(assert (= bs!1401930 (and d!1857431 d!1856873)))

(assert (=> bs!1401930 (= (dynLambda!25057 lambda!323029 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))) (validRegex!7707 (h!70536 (t!377603 (exprs!5855 (h!70537 zl!343))))))))

(assert (=> bs!1401930 m!6818404))

(assert (=> b!5922772 d!1857431))

(check-sat (not bm!469743) (not b!5922903) (not bm!469706) (not b!5922953) (not b_lambda!222477) (not b!5923270) (not b!5923344) (not b!5922838) (not b!5922895) (not bm!469686) (not d!1857305) (not b!5922973) (not b!5922909) (not b!5922842) (not b!5923299) (not b!5923037) (not b!5923156) (not b!5923099) (not bs!1401929) (not b!5923305) (not b!5923248) (not b!5923177) (not bm!469776) (not d!1857339) (not b!5922777) (not b!5922976) (not b!5922908) (not bm!469693) (not b!5923084) (not b!5922108) (not b!5923329) (not b!5923171) (not b!5923179) (not d!1857181) (not b!5922168) (not b!5922961) (not b!5922278) (not b!5922823) (not b!5923160) (not bm!469678) (not bm!469770) (not bm!469721) (not b!5923322) (not b!5922888) (not bm!469615) (not b!5923253) (not b!5922780) (not b!5923289) (not d!1857193) (not b!5923046) (not b!5923298) (not d!1857143) (not b!5923057) (not b!5923338) (not b!5923261) (not bm!469762) (not b!5922958) (not b!5923086) (not b!5923092) (not bm!469714) (not b!5923059) (not b!5923189) (not b!5922665) (not b!5922852) (not b!5922513) (not b!5922784) (not b!5922950) (not b!5922390) (not b!5923123) (not d!1857249) (not b!5922831) (not b!5923070) (not b!5922896) (not bs!1401921) (not b!5923310) (not b!5923136) (not b!5923278) (not b!5923157) (not b!5923258) (not b!5922050) (not b!5922163) (not bm!469600) (not b!5922876) (not b!5923260) (not bm!469749) (not b!5922279) (not b!5922470) (not b!5923192) (not b!5923062) (not b!5923225) (not b!5923067) (not b!5922130) (not bm!469602) (not b!5922816) (not bm!469737) (not b!5922841) (not b!5922924) (not b!5922945) (not b!5922638) (not b!5923032) (not b!5922139) (not b!5922840) (not b!5923041) (not b!5923128) (not b!5922704) (not b!5922900) (not b!5922167) (not b!5922937) (not b!5922887) (not b!5923135) (not b!5922339) (not b!5923231) (not b!5922114) (not b!5923209) (not b!5922674) (not bm!469761) (not b!5922433) (not b!5922978) (not b!5922612) (not b!5923223) (not bs!1401923) (not b!5922811) (not b!5923020) (not b!5923112) (not bm!469717) (not b!5922394) (not b!5922952) (not b!5923252) (not b!5922988) (not b!5923235) (not b!5923053) (not b!5923326) (not b!5922956) (not bm!469674) (not b!5922989) (not d!1857321) (not b!5923254) (not b!5922912) (not b!5922271) (not b!5923334) (not b!5923314) (not b!5923064) (not b!5923049) (not b!5923247) (not b!5923003) (not bm!469616) (not b!5923164) (not b!5923276) (not b!5923339) (not b!5923173) (not b!5923091) (not b!5923340) (not b!5923010) (not b!5923107) (not b!5923087) (not bm!469768) (not d!1857361) (not b!5922871) (not b!5922926) (not b!5922977) (not b!5923343) (not b!5923068) (not b!5922901) (not b!5922836) (not b!5922856) (not bm!469763) (not b!5923211) (not b!5922944) (not b!5922432) (not b!5922417) (not b!5922761) (not b!5922992) (not bm!469671) (not b!5922804) (not b!5923301) (not b!5923002) (not b!5923172) (not bm!469725) (not b!5922201) (not b!5922292) (not bm!469611) (not b!5923228) (not b!5923096) (not b!5922995) (not b_lambda!222487) (not bm!469719) (not d!1857329) (not bm!469626) (not b!5923244) (not b!5922618) (not b!5922763) (not b!5923122) (not d!1857331) (not b!5922815) (not b!5922932) (not b!5922817) (not b!5922515) (not b!5922845) (not b!5922093) (not b!5922993) (not b!5923204) (not setNonEmpty!40191) (not b!5923132) (not b!5923148) (not b!5922760) (not bm!469738) (not b!5922805) (not b!5922648) (not b!5923336) (not b!5922599) (not b!5922746) (not b!5923055) (not b!5922982) (not b!5922620) (not b!5922954) (not b!5922916) (not d!1857093) (not b!5922625) (not b_lambda!222473) (not bm!469609) (not b_lambda!222419) (not b!5922892) (not b!5922116) (not b!5922897) (not b!5922457) (not b!5922611) tp_is_empty!41195 (not b!5923215) (not b!5922419) (not b!5923273) (not b!5923145) (not b!5922925) (not b!5922936) (not b!5923139) (not b!5923335) (not b!5922431) (not b!5922144) (not bm!469732) (not bm!469636) (not b!5922863) (not b!5923243) (not b_lambda!222413) (not b!5922946) (not b!5922565) (not bm!469697) (not b!5922186) (not b!5922422) (not b!5922324) (not b!5922113) (not b!5923307) (not b_lambda!222421) (not b!5922962) (not b!5923311) (not b!5922964) (not b!5922703) (not b!5922957) (not b!5923165) (not bm!469698) (not b!5923233) (not b!5923325) (not bm!469622) (not b!5922758) (not d!1857171) (not b!5922631) (not d!1857203) (not b!5922391) (not b!5922734) (not setNonEmpty!40192) (not b!5922998) (not b!5922986) (not bm!469628) (not b!5922783) (not bm!469713) (not d!1857369) (not d!1857091) (not b!5922468) (not b!5922629) (not b!5922331) (not b!5923076) (not bm!469715) (not bm!469753) (not b!5922720) (not b!5922799) (not b!5922788) (not b!5922792) (not bm!469704) (not b!5923000) (not b!5922883) (not b!5923236) (not b!5922819) (not b!5923106) (not b!5922104) (not b!5923006) (not b!5923007) (not b!5922848) (not bm!469660) (not b!5922960) (not b!5923061) (not b!5923054) (not bm!469633) (not b!5922733) (not b!5922835) (not b!5922911) (not b!5922828) (not b!5922824) (not b!5923239) (not b!5923323) (not b_lambda!222479) (not b!5923033) (not b!5922218) (not bm!469711) (not b!5922867) (not bm!469666) (not b!5922880) (not b!5922115) (not bm!469663) (not b!5922862) (not b!5923098) (not d!1857385) (not b!5923114) (not b!5922332) (not bm!469619) (not bm!469754) (not b!5922624) (not b!5923227) (not b!5922855) (not b!5922832) (not b!5922938) (not bm!469649) (not b!5922320) (not b!5922057) (not b!5923281) (not b!5923302) (not bm!469775) (not b!5922603) (not d!1857325) (not b!5923217) (not b!5922680) (not b!5922403) (not b!5922511) (not b_lambda!222471) (not b!5922212) (not b!5923175) (not b!5923293) (not b!5922517) (not b!5923290) (not d!1857213) (not b!5922633) (not b!5922941) (not bm!469607) (not b!5922092) (not b_lambda!222417) (not b!5922821) (not b!5922904) (not b!5922265) (not b!5923195) (not b!5922773) (not b!5922071) (not bm!469709) (not d!1857373) (not b!5922829) (not b!5922869) (not b!5922800) (not b!5923018) (not bm!469728) (not b!5923269) (not b!5923026) (not b!5922463) (not b!5922775) (not bm!469703) (not bm!469730) (not b!5922864) (not b!5922920) (not b_lambda!222483) (not b!5922589) (not b!5923332) (not b!5923029) (not b!5922551) (not bm!469691) (not b!5922844) (not bs!1401927) (not bm!469766) (not b!5922072) (not b!5922436) (not b!5922621) (not b!5922469) (not b!5923268) (not b!5923115) (not bs!1401922) (not b!5923078) (not d!1857387) (not b!5922723) (not bm!469746) (not b!5923193) (not b!5923315) (not b!5922600) (not b!5923212) (not b!5923245) (not b!5922197) (not b!5923155) (not b!5922438) (not b!5923277) (not b!5922649) (not b!5922853) (not b!5922974) (not b!5922706) (not setNonEmpty!40193) (not b!5922475) (not b!5923295) (not b!5922366) (not b!5922787) (not b!5923034) (not d!1857227) (not b_lambda!222425) (not b!5922329) (not b!5923294) (not b!5923102) (not b!5922970) (not b!5922850) (not b!5923012) (not b!5922091) (not b!5922872) (not b!5922751) (not b!5922981) (not b!5922672) (not b!5923127) (not b!5923050) (not bm!469707) (not bm!469613) (not b!5923224) (not b!5923131) (not b!5923082) (not b!5923016) (not b!5922539) (not bm!469606) (not b!5923074) (not b!5922145) (not b!5922877) (not b!5923021) (not b!5923191) (not b!5922779) (not b!5922837) (not b!5923265) (not b!5922120) (not b!5922969) (not b!5923319) (not b!5922393) (not d!1857147) (not bm!469631) (not b!5922990) (not b!5923203) (not b!5923241) (not b!5922934) (not bm!469718) (not b!5922263) (not b!5922459) (not b_lambda!222475) (not b!5922942) (not b!5922891) (not b!5923256) (not b!5922661) (not b!5923257) (not b!5922801) (not b!5922613) (not b!5922796) (not b!5923207) (not b!5922933) (not b!5923266) (not b!5922827) (not b!5922670) (not b!5923208) (not b!5922972) (not bm!469781) (not b_lambda!222481) (not b!5923083) (not b!5923118) (not b!5923025) (not b!5923152) (not b!5922610) (not b!5923014) (not b!5922266) (not b!5923262) (not b!5922846) (not b!5923149) (not b_lambda!222415) (not b!5922781) (not bm!469758) (not b!5922389) (not b!5923051) (not bs!1401925) (not d!1857327) (not bm!469741) (not b!5923103) (not b!5923079) (not b!5922121) (not b!5922472) (not b!5923220) (not b!5923140) (not b!5922244) (not d!1857251) (not b!5922588) (not b!5923272) (not b!5922966) (not b!5922713) (not b!5923130) (not b!5923216) (not b!5923205) (not b!5923327) (not b!5922616) (not b!5923138) (not b!5922833) (not b_lambda!222485) (not bm!469653) (not b!5922905) (not b!5922999) (not b!5923143) (not b!5922686) (not b!5922985) (not b!5923161) (not b!5922441) (not b!5923303) (not b!5922386) (not d!1857307) (not b!5923221) (not bm!469695) (not b!5922310) (not bm!469747) (not bm!469716) (not b!5923075) (not b!5922795) (not b!5923219) (not bm!469750) (not b!5923024) (not b!5922455) (not b!5923187) (not b!5922671) (not bm!469677) (not b!5923011) (not d!1857375) (not b!5923120) (not b!5923297) (not b!5922922) (not d!1857173) (not b!5922586) (not b!5922301) (not b!5922849) (not b!5922707) (not bm!469672) (not b!5923309) (not b!5922277) (not b!5922609) (not b_lambda!222469) (not b!5922673) (not b!5922803) (not b!5923274) (not b!5922627) (not b!5923110) (not b!5922948) (not b!5922859) (not bm!469752) (not b!5922980) (not bm!469648) (not b!5922928) (not b!5922147) (not bm!469687) (not b!5922659) (not bm!469701) (not d!1857397) (not b!5922949) (not b!5922825) (not b!5923090) (not b!5922899) (not b!5922552) (not bm!469772) (not b_lambda!222467) (not b!5923240) (not b!5923306) (not b_lambda!222423) (not b!5923229) (not bm!469655) (not b!5923043) (not b!5923119) (not bm!469684) (not d!1857159) (not b!5922812) (not b!5923199) (not bm!469735) (not b!5922994) (not bm!469665) (not d!1857261) (not b!5922968) (not bm!469755) (not b!5922365) (not b!5922907) (not b!5923072) (not b!5922333) (not bm!469624) (not b!5923095) (not d!1857169) (not b!5923330) (not bs!1401930) (not bm!469723) (not b!5922873) (not b!5922797) (not b!5923321) (not bm!469642) (not d!1857217) (not b!5922188) (not bm!469760) (not b!5922220) (not bm!469700) (not b!5922884) (not b!5923141) (not b!5922854) (not b!5922626) (not bm!469635) (not b!5923342) (not d!1857153) (not b!5922439) (not bm!469640) (not b!5922793) (not b!5922868) (not bm!469658) (not b!5923232) (not b!5922507) (not b!5923283) (not b!5922913) (not d!1857207) (not b!5923063) (not b!5922584) (not b!5922562) (not b!5922785) (not b!5922471) (not bm!469742) (not b!5922056) (not b!5922582) (not b!5922221) (not b!5922421) (not b!5923287) (not b!5923184) (not b!5922940) (not bs!1401928) (not b!5922915) (not b!5923185) (not b!5923286) (not b!5922965) (not b!5923008) (not b!5922486) (not bm!469634) (not b!5923181) (not b!5923066) (not d!1857401) (not b!5923197) (not b!5922807) (not b!5923163) (not bm!469726) (not d!1857291) (not b!5922528) (not b!5922059) (not b!5922628) (not d!1857097) (not b!5923039) (not b!5922889) (not b!5922185) (not b!5923147) (not b!5922885) (not b!5923111) (not b!5922789) (not d!1857161) (not b!5923042) (not b!5923015) (not b!5922791) (not b!5922921) (not b!5922820) (not b!5922917) (not bm!469696) (not bm!469621) (not b!5923237) (not bm!469774) (not b!5923108) (not d!1857073) (not d!1857129) (not b!5923004) (not b!5923116) (not b!5923104) (not bs!1401926) (not d!1857109) (not b!5922529) (not b!5922189) (not d!1857199) (not b!5923071) (not b!5923126) (not b!5922929) (not b!5922808) (not b!5922930) (not b!5922722) (not b!5922180) (not bs!1401924) (not b!5922996) (not bm!469647) (not bm!469638) (not b!5922117) (not b!5922330) (not b!5922276) (not b!5922280) (not b!5923317) (not b_lambda!222387) (not b!5923249) (not b!5922881) (not b!5923124) (not b!5923167) (not b!5923291) (not bm!469673) (not b!5923144) (not b!5923196) (not bm!469659) (not b!5922564) (not b!5923183) (not b!5923200) (not b!5922055) (not bm!469734) (not bm!469617) (not d!1857201) (not b!5923188) (not bm!469669) (not b!5923088) (not b!5922865) (not b!5922809) (not bm!469779) (not bm!469745) (not bm!469629) (not b!5923313) (not b!5922392) (not b!5923280) (not b!5923201) (not b!5923028) (not b!5923036) (not d!1857367) (not d!1857123) (not b!5922148) (not b!5922100) (not b!5922286) (not bs!1401920) (not b!5923318) (not bm!469604) (not b!5923080) (not b!5923045) (not b!5922813) (not b!5922604) (not b!5923153) (not b!5923058) (not b!5923169) (not d!1857241) (not b!5922058) (not b!5923100) (not bm!469740) (not b!5922385) (not bm!469657) (not b!5923038) (not b!5923134) (not b!5923094) (not d!1857237) (not b!5922984) (not b!5923047) (not bm!469689) (not b!5923022) (not bm!469625) (not b!5922550) (not d!1857219) (not b!5922705) (not bm!469651) (not b!5922858) (not b!5922435) (not b!5922608) (not b!5923176) (not b!5922140) (not b!5923159) (not d!1857395) (not b!5923213) (not d!1857341) (not bm!469630) (not b!5922875) (not b!5923282) (not d!1857301) (not b!5922918) (not b!5922349) (not bm!469668) (not b!5923251) (not b!5922776) (not b!5923017) (not d!1857175) (not bm!469682) (not b!5923264) (not b!5922698) (not b!5922187) (not b!5923285) (not b!5923151) (not bm!469618) (not b!5923030) (not b!5922860) (not b!5922879) (not b!5922634) (not b!5922893) (not b!5923331) (not b!5923168) (not b!5923180))
(check-sat)
