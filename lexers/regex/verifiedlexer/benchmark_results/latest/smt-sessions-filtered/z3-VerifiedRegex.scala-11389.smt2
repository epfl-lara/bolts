; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!607682 () Bool)

(assert start!607682)

(declare-fun b!6045426 () Bool)

(assert (=> b!6045426 true))

(assert (=> b!6045426 true))

(declare-fun lambda!329713 () Int)

(declare-fun lambda!329712 () Int)

(assert (=> b!6045426 (not (= lambda!329713 lambda!329712))))

(assert (=> b!6045426 true))

(assert (=> b!6045426 true))

(declare-fun b!6045439 () Bool)

(assert (=> b!6045439 true))

(declare-fun b!6045424 () Bool)

(declare-fun res!2516197 () Bool)

(declare-fun e!3692144 () Bool)

(assert (=> b!6045424 (=> res!2516197 e!3692144)))

(declare-datatypes ((C!32320 0))(
  ( (C!32321 (val!25862 Int)) )
))
(declare-datatypes ((Regex!16025 0))(
  ( (ElementMatch!16025 (c!1084051 C!32320)) (Concat!24870 (regOne!32562 Regex!16025) (regTwo!32562 Regex!16025)) (EmptyExpr!16025) (Star!16025 (reg!16354 Regex!16025)) (EmptyLang!16025) (Union!16025 (regOne!32563 Regex!16025) (regTwo!32563 Regex!16025)) )
))
(declare-fun r!7292 () Regex!16025)

(declare-datatypes ((List!64374 0))(
  ( (Nil!64250) (Cons!64250 (h!70698 Regex!16025) (t!377807 List!64374)) )
))
(declare-datatypes ((Context!10818 0))(
  ( (Context!10819 (exprs!5909 List!64374)) )
))
(declare-datatypes ((List!64375 0))(
  ( (Nil!64251) (Cons!64251 (h!70699 Context!10818) (t!377808 List!64375)) )
))
(declare-fun zl!343 () List!64375)

(declare-fun generalisedConcat!1622 (List!64374) Regex!16025)

(assert (=> b!6045424 (= res!2516197 (not (= r!7292 (generalisedConcat!1622 (exprs!5909 (h!70699 zl!343))))))))

(declare-fun b!6045425 () Bool)

(declare-fun e!3692141 () Bool)

(declare-fun tp_is_empty!41303 () Bool)

(declare-fun tp!1681388 () Bool)

(assert (=> b!6045425 (= e!3692141 (and tp_is_empty!41303 tp!1681388))))

(declare-fun e!3692149 () Bool)

(assert (=> b!6045426 (= e!3692144 e!3692149)))

(declare-fun res!2516202 () Bool)

(assert (=> b!6045426 (=> res!2516202 e!3692149)))

(declare-datatypes ((List!64376 0))(
  ( (Nil!64252) (Cons!64252 (h!70700 C!32320) (t!377809 List!64376)) )
))
(declare-fun s!2326 () List!64376)

(declare-fun lt!2323695 () Bool)

(declare-fun lt!2323693 () Bool)

(get-info :version)

(assert (=> b!6045426 (= res!2516202 (or (not (= lt!2323693 lt!2323695)) ((_ is Nil!64252) s!2326)))))

(declare-fun Exists!3095 (Int) Bool)

(assert (=> b!6045426 (= (Exists!3095 lambda!329712) (Exists!3095 lambda!329713))))

(declare-datatypes ((Unit!157321 0))(
  ( (Unit!157322) )
))
(declare-fun lt!2323698 () Unit!157321)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1632 (Regex!16025 Regex!16025 List!64376) Unit!157321)

(assert (=> b!6045426 (= lt!2323698 (lemmaExistCutMatchRandMatchRSpecEquivalent!1632 (regOne!32562 r!7292) (regTwo!32562 r!7292) s!2326))))

(assert (=> b!6045426 (= lt!2323695 (Exists!3095 lambda!329712))))

(declare-datatypes ((tuple2!66008 0))(
  ( (tuple2!66009 (_1!36307 List!64376) (_2!36307 List!64376)) )
))
(declare-datatypes ((Option!15916 0))(
  ( (None!15915) (Some!15915 (v!52034 tuple2!66008)) )
))
(declare-fun isDefined!12619 (Option!15916) Bool)

(declare-fun findConcatSeparation!2330 (Regex!16025 Regex!16025 List!64376 List!64376 List!64376) Option!15916)

(assert (=> b!6045426 (= lt!2323695 (isDefined!12619 (findConcatSeparation!2330 (regOne!32562 r!7292) (regTwo!32562 r!7292) Nil!64252 s!2326 s!2326)))))

(declare-fun lt!2323699 () Unit!157321)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2094 (Regex!16025 Regex!16025 List!64376) Unit!157321)

(assert (=> b!6045426 (= lt!2323699 (lemmaFindConcatSeparationEquivalentToExists!2094 (regOne!32562 r!7292) (regTwo!32562 r!7292) s!2326))))

(declare-fun b!6045427 () Bool)

(declare-fun e!3692147 () Bool)

(assert (=> b!6045427 (= e!3692149 e!3692147)))

(declare-fun res!2516201 () Bool)

(assert (=> b!6045427 (=> res!2516201 e!3692147)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2323685 () (InoxSet Context!10818))

(declare-fun lt!2323680 () (InoxSet Context!10818))

(assert (=> b!6045427 (= res!2516201 (not (= lt!2323685 lt!2323680)))))

(declare-fun lt!2323692 () Context!10818)

(declare-fun derivationStepZipperDown!1275 (Regex!16025 Context!10818 C!32320) (InoxSet Context!10818))

(assert (=> b!6045427 (= lt!2323680 (derivationStepZipperDown!1275 r!7292 lt!2323692 (h!70700 s!2326)))))

(assert (=> b!6045427 (= lt!2323692 (Context!10819 Nil!64250))))

(declare-fun lt!2323696 () Context!10818)

(declare-fun derivationStepZipperUp!1201 (Context!10818 C!32320) (InoxSet Context!10818))

(assert (=> b!6045427 (= lt!2323685 (derivationStepZipperUp!1201 lt!2323696 (h!70700 s!2326)))))

(declare-fun lt!2323691 () List!64374)

(assert (=> b!6045427 (= lt!2323696 (Context!10819 lt!2323691))))

(assert (=> b!6045427 (= lt!2323691 (Cons!64250 r!7292 Nil!64250))))

(declare-fun lt!2323679 () (InoxSet Context!10818))

(declare-fun z!1189 () (InoxSet Context!10818))

(declare-fun derivationStepZipper!2006 ((InoxSet Context!10818) C!32320) (InoxSet Context!10818))

(assert (=> b!6045427 (= lt!2323679 (derivationStepZipper!2006 z!1189 (h!70700 s!2326)))))

(declare-fun b!6045428 () Bool)

(declare-fun e!3692142 () Bool)

(declare-fun inv!83309 (Context!10818) Bool)

(assert (=> b!6045428 (= e!3692142 (inv!83309 lt!2323696))))

(declare-fun res!2516205 () Bool)

(declare-fun e!3692152 () Bool)

(assert (=> start!607682 (=> (not res!2516205) (not e!3692152))))

(declare-fun validRegex!7761 (Regex!16025) Bool)

(assert (=> start!607682 (= res!2516205 (validRegex!7761 r!7292))))

(assert (=> start!607682 e!3692152))

(declare-fun e!3692146 () Bool)

(assert (=> start!607682 e!3692146))

(declare-fun condSetEmpty!40899 () Bool)

(assert (=> start!607682 (= condSetEmpty!40899 (= z!1189 ((as const (Array Context!10818 Bool)) false)))))

(declare-fun setRes!40899 () Bool)

(assert (=> start!607682 setRes!40899))

(declare-fun e!3692145 () Bool)

(assert (=> start!607682 e!3692145))

(assert (=> start!607682 e!3692141))

(declare-fun b!6045429 () Bool)

(declare-fun res!2516198 () Bool)

(assert (=> b!6045429 (=> res!2516198 e!3692144)))

(declare-fun generalisedUnion!1869 (List!64374) Regex!16025)

(declare-fun unfocusZipperList!1446 (List!64375) List!64374)

(assert (=> b!6045429 (= res!2516198 (not (= r!7292 (generalisedUnion!1869 (unfocusZipperList!1446 zl!343)))))))

(declare-fun b!6045430 () Bool)

(declare-fun e!3692148 () Bool)

(assert (=> b!6045430 (= e!3692152 e!3692148)))

(declare-fun res!2516203 () Bool)

(assert (=> b!6045430 (=> (not res!2516203) (not e!3692148))))

(declare-fun lt!2323686 () Regex!16025)

(assert (=> b!6045430 (= res!2516203 (= r!7292 lt!2323686))))

(declare-fun unfocusZipper!1767 (List!64375) Regex!16025)

(assert (=> b!6045430 (= lt!2323686 (unfocusZipper!1767 zl!343))))

(declare-fun b!6045431 () Bool)

(declare-fun tp!1681385 () Bool)

(declare-fun tp!1681381 () Bool)

(assert (=> b!6045431 (= e!3692146 (and tp!1681385 tp!1681381))))

(declare-fun e!3692150 () Bool)

(declare-fun setElem!40899 () Context!10818)

(declare-fun setNonEmpty!40899 () Bool)

(declare-fun tp!1681384 () Bool)

(assert (=> setNonEmpty!40899 (= setRes!40899 (and tp!1681384 (inv!83309 setElem!40899) e!3692150))))

(declare-fun setRest!40899 () (InoxSet Context!10818))

(assert (=> setNonEmpty!40899 (= z!1189 ((_ map or) (store ((as const (Array Context!10818 Bool)) false) setElem!40899 true) setRest!40899))))

(declare-fun b!6045432 () Bool)

(declare-fun tp!1681383 () Bool)

(declare-fun tp!1681389 () Bool)

(assert (=> b!6045432 (= e!3692146 (and tp!1681383 tp!1681389))))

(declare-fun b!6045433 () Bool)

(declare-fun res!2516193 () Bool)

(assert (=> b!6045433 (=> res!2516193 e!3692149)))

(declare-fun isEmpty!36157 (List!64374) Bool)

(assert (=> b!6045433 (= res!2516193 (not (isEmpty!36157 (t!377807 (exprs!5909 (h!70699 zl!343))))))))

(declare-fun b!6045434 () Bool)

(declare-fun res!2516196 () Bool)

(assert (=> b!6045434 (=> res!2516196 e!3692142)))

(declare-fun lt!2323694 () (InoxSet Context!10818))

(assert (=> b!6045434 (= res!2516196 (or (not (= lt!2323679 lt!2323694)) (not (= lt!2323686 r!7292)) (not (= (exprs!5909 (h!70699 zl!343)) lt!2323691))))))

(declare-fun setIsEmpty!40899 () Bool)

(assert (=> setIsEmpty!40899 setRes!40899))

(declare-fun b!6045435 () Bool)

(assert (=> b!6045435 (= e!3692148 (not e!3692144))))

(declare-fun res!2516194 () Bool)

(assert (=> b!6045435 (=> res!2516194 e!3692144)))

(assert (=> b!6045435 (= res!2516194 (not ((_ is Cons!64251) zl!343)))))

(declare-fun matchRSpec!3126 (Regex!16025 List!64376) Bool)

(assert (=> b!6045435 (= lt!2323693 (matchRSpec!3126 r!7292 s!2326))))

(declare-fun matchR!8208 (Regex!16025 List!64376) Bool)

(assert (=> b!6045435 (= lt!2323693 (matchR!8208 r!7292 s!2326))))

(declare-fun lt!2323700 () Unit!157321)

(declare-fun mainMatchTheorem!3126 (Regex!16025 List!64376) Unit!157321)

(assert (=> b!6045435 (= lt!2323700 (mainMatchTheorem!3126 r!7292 s!2326))))

(declare-fun b!6045436 () Bool)

(assert (=> b!6045436 (= e!3692146 tp_is_empty!41303)))

(declare-fun b!6045437 () Bool)

(declare-fun res!2516199 () Bool)

(assert (=> b!6045437 (=> (not res!2516199) (not e!3692152))))

(declare-fun toList!9809 ((InoxSet Context!10818)) List!64375)

(assert (=> b!6045437 (= res!2516199 (= (toList!9809 z!1189) zl!343))))

(declare-fun b!6045438 () Bool)

(declare-fun tp!1681382 () Bool)

(assert (=> b!6045438 (= e!3692150 tp!1681382)))

(declare-fun e!3692143 () Bool)

(assert (=> b!6045439 (= e!3692147 e!3692143)))

(declare-fun res!2516200 () Bool)

(assert (=> b!6045439 (=> res!2516200 e!3692143)))

(assert (=> b!6045439 (= res!2516200 (not (= lt!2323679 lt!2323680)))))

(declare-fun lambda!329714 () Int)

(declare-fun flatMap!1538 ((InoxSet Context!10818) Int) (InoxSet Context!10818))

(assert (=> b!6045439 (= (flatMap!1538 z!1189 lambda!329714) (derivationStepZipperUp!1201 (h!70699 zl!343) (h!70700 s!2326)))))

(declare-fun lt!2323688 () Unit!157321)

(declare-fun lemmaFlatMapOnSingletonSet!1064 ((InoxSet Context!10818) Context!10818 Int) Unit!157321)

(assert (=> b!6045439 (= lt!2323688 (lemmaFlatMapOnSingletonSet!1064 z!1189 (h!70699 zl!343) lambda!329714))))

(declare-fun b!6045440 () Bool)

(declare-fun tp!1681387 () Bool)

(assert (=> b!6045440 (= e!3692146 tp!1681387)))

(declare-fun e!3692151 () Bool)

(declare-fun b!6045441 () Bool)

(declare-fun tp!1681390 () Bool)

(assert (=> b!6045441 (= e!3692145 (and (inv!83309 (h!70699 zl!343)) e!3692151 tp!1681390))))

(declare-fun b!6045442 () Bool)

(declare-fun res!2516204 () Bool)

(assert (=> b!6045442 (=> res!2516204 e!3692144)))

(declare-fun isEmpty!36158 (List!64375) Bool)

(assert (=> b!6045442 (= res!2516204 (not (isEmpty!36158 (t!377808 zl!343))))))

(declare-fun b!6045443 () Bool)

(assert (=> b!6045443 (= e!3692143 e!3692142)))

(declare-fun res!2516207 () Bool)

(assert (=> b!6045443 (=> res!2516207 e!3692142)))

(declare-fun nullable!6020 (Regex!16025) Bool)

(assert (=> b!6045443 (= res!2516207 (nullable!6020 (regOne!32562 r!7292)))))

(declare-fun lt!2323677 () (InoxSet Context!10818))

(assert (=> b!6045443 (= lt!2323677 (derivationStepZipperDown!1275 (regTwo!32562 r!7292) lt!2323692 (h!70700 s!2326)))))

(declare-fun lt!2323689 () Context!10818)

(assert (=> b!6045443 (= lt!2323694 (derivationStepZipperDown!1275 (regOne!32562 r!7292) lt!2323689 (h!70700 s!2326)))))

(declare-fun lt!2323687 () (InoxSet Context!10818))

(assert (=> b!6045443 (= (flatMap!1538 lt!2323687 lambda!329714) (derivationStepZipperUp!1201 lt!2323689 (h!70700 s!2326)))))

(declare-fun lt!2323684 () Unit!157321)

(assert (=> b!6045443 (= lt!2323684 (lemmaFlatMapOnSingletonSet!1064 lt!2323687 lt!2323689 lambda!329714))))

(declare-fun lt!2323681 () (InoxSet Context!10818))

(declare-fun lt!2323683 () Context!10818)

(assert (=> b!6045443 (= (flatMap!1538 lt!2323681 lambda!329714) (derivationStepZipperUp!1201 lt!2323683 (h!70700 s!2326)))))

(declare-fun lt!2323678 () Unit!157321)

(assert (=> b!6045443 (= lt!2323678 (lemmaFlatMapOnSingletonSet!1064 lt!2323681 lt!2323683 lambda!329714))))

(declare-fun lt!2323697 () (InoxSet Context!10818))

(assert (=> b!6045443 (= lt!2323697 (derivationStepZipperUp!1201 lt!2323689 (h!70700 s!2326)))))

(declare-fun lt!2323690 () (InoxSet Context!10818))

(assert (=> b!6045443 (= lt!2323690 (derivationStepZipperUp!1201 lt!2323683 (h!70700 s!2326)))))

(assert (=> b!6045443 (= lt!2323687 (store ((as const (Array Context!10818 Bool)) false) lt!2323689 true))))

(declare-fun lt!2323682 () List!64374)

(assert (=> b!6045443 (= lt!2323689 (Context!10819 lt!2323682))))

(assert (=> b!6045443 (= lt!2323681 (store ((as const (Array Context!10818 Bool)) false) lt!2323683 true))))

(assert (=> b!6045443 (= lt!2323683 (Context!10819 (Cons!64250 (regOne!32562 r!7292) lt!2323682)))))

(assert (=> b!6045443 (= lt!2323682 (Cons!64250 (regTwo!32562 r!7292) Nil!64250))))

(declare-fun b!6045444 () Bool)

(declare-fun res!2516206 () Bool)

(assert (=> b!6045444 (=> res!2516206 e!3692144)))

(assert (=> b!6045444 (= res!2516206 (or ((_ is EmptyExpr!16025) r!7292) ((_ is EmptyLang!16025) r!7292) ((_ is ElementMatch!16025) r!7292) ((_ is Union!16025) r!7292) (not ((_ is Concat!24870) r!7292))))))

(declare-fun b!6045445 () Bool)

(declare-fun res!2516195 () Bool)

(assert (=> b!6045445 (=> res!2516195 e!3692144)))

(assert (=> b!6045445 (= res!2516195 (not ((_ is Cons!64250) (exprs!5909 (h!70699 zl!343)))))))

(declare-fun b!6045446 () Bool)

(declare-fun tp!1681386 () Bool)

(assert (=> b!6045446 (= e!3692151 tp!1681386)))

(assert (= (and start!607682 res!2516205) b!6045437))

(assert (= (and b!6045437 res!2516199) b!6045430))

(assert (= (and b!6045430 res!2516203) b!6045435))

(assert (= (and b!6045435 (not res!2516194)) b!6045442))

(assert (= (and b!6045442 (not res!2516204)) b!6045424))

(assert (= (and b!6045424 (not res!2516197)) b!6045445))

(assert (= (and b!6045445 (not res!2516195)) b!6045429))

(assert (= (and b!6045429 (not res!2516198)) b!6045444))

(assert (= (and b!6045444 (not res!2516206)) b!6045426))

(assert (= (and b!6045426 (not res!2516202)) b!6045433))

(assert (= (and b!6045433 (not res!2516193)) b!6045427))

(assert (= (and b!6045427 (not res!2516201)) b!6045439))

(assert (= (and b!6045439 (not res!2516200)) b!6045443))

(assert (= (and b!6045443 (not res!2516207)) b!6045434))

(assert (= (and b!6045434 (not res!2516196)) b!6045428))

(assert (= (and start!607682 ((_ is ElementMatch!16025) r!7292)) b!6045436))

(assert (= (and start!607682 ((_ is Concat!24870) r!7292)) b!6045431))

(assert (= (and start!607682 ((_ is Star!16025) r!7292)) b!6045440))

(assert (= (and start!607682 ((_ is Union!16025) r!7292)) b!6045432))

(assert (= (and start!607682 condSetEmpty!40899) setIsEmpty!40899))

(assert (= (and start!607682 (not condSetEmpty!40899)) setNonEmpty!40899))

(assert (= setNonEmpty!40899 b!6045438))

(assert (= b!6045441 b!6045446))

(assert (= (and start!607682 ((_ is Cons!64251) zl!343)) b!6045441))

(assert (= (and start!607682 ((_ is Cons!64252) s!2326)) b!6045425))

(declare-fun m!6913912 () Bool)

(assert (=> start!607682 m!6913912))

(declare-fun m!6913914 () Bool)

(assert (=> b!6045441 m!6913914))

(declare-fun m!6913916 () Bool)

(assert (=> b!6045424 m!6913916))

(declare-fun m!6913918 () Bool)

(assert (=> b!6045433 m!6913918))

(declare-fun m!6913920 () Bool)

(assert (=> b!6045443 m!6913920))

(declare-fun m!6913922 () Bool)

(assert (=> b!6045443 m!6913922))

(declare-fun m!6913924 () Bool)

(assert (=> b!6045443 m!6913924))

(declare-fun m!6913926 () Bool)

(assert (=> b!6045443 m!6913926))

(declare-fun m!6913928 () Bool)

(assert (=> b!6045443 m!6913928))

(declare-fun m!6913930 () Bool)

(assert (=> b!6045443 m!6913930))

(declare-fun m!6913932 () Bool)

(assert (=> b!6045443 m!6913932))

(declare-fun m!6913934 () Bool)

(assert (=> b!6045443 m!6913934))

(declare-fun m!6913936 () Bool)

(assert (=> b!6045443 m!6913936))

(declare-fun m!6913938 () Bool)

(assert (=> b!6045443 m!6913938))

(declare-fun m!6913940 () Bool)

(assert (=> b!6045443 m!6913940))

(declare-fun m!6913942 () Bool)

(assert (=> b!6045437 m!6913942))

(declare-fun m!6913944 () Bool)

(assert (=> b!6045430 m!6913944))

(declare-fun m!6913946 () Bool)

(assert (=> b!6045428 m!6913946))

(declare-fun m!6913948 () Bool)

(assert (=> b!6045426 m!6913948))

(assert (=> b!6045426 m!6913948))

(declare-fun m!6913950 () Bool)

(assert (=> b!6045426 m!6913950))

(declare-fun m!6913952 () Bool)

(assert (=> b!6045426 m!6913952))

(declare-fun m!6913954 () Bool)

(assert (=> b!6045426 m!6913954))

(declare-fun m!6913956 () Bool)

(assert (=> b!6045426 m!6913956))

(assert (=> b!6045426 m!6913950))

(declare-fun m!6913958 () Bool)

(assert (=> b!6045426 m!6913958))

(declare-fun m!6913960 () Bool)

(assert (=> setNonEmpty!40899 m!6913960))

(declare-fun m!6913962 () Bool)

(assert (=> b!6045429 m!6913962))

(assert (=> b!6045429 m!6913962))

(declare-fun m!6913964 () Bool)

(assert (=> b!6045429 m!6913964))

(declare-fun m!6913966 () Bool)

(assert (=> b!6045435 m!6913966))

(declare-fun m!6913968 () Bool)

(assert (=> b!6045435 m!6913968))

(declare-fun m!6913970 () Bool)

(assert (=> b!6045435 m!6913970))

(declare-fun m!6913972 () Bool)

(assert (=> b!6045439 m!6913972))

(declare-fun m!6913974 () Bool)

(assert (=> b!6045439 m!6913974))

(declare-fun m!6913976 () Bool)

(assert (=> b!6045439 m!6913976))

(declare-fun m!6913978 () Bool)

(assert (=> b!6045427 m!6913978))

(declare-fun m!6913980 () Bool)

(assert (=> b!6045427 m!6913980))

(declare-fun m!6913982 () Bool)

(assert (=> b!6045427 m!6913982))

(declare-fun m!6913984 () Bool)

(assert (=> b!6045442 m!6913984))

(check-sat (not b!6045429) (not b!6045443) (not b!6045442) (not b!6045428) (not b!6045440) (not b!6045427) (not b!6045439) (not b!6045441) (not b!6045438) (not b!6045424) (not b!6045431) tp_is_empty!41303 (not start!607682) (not b!6045425) (not setNonEmpty!40899) (not b!6045446) (not b!6045426) (not b!6045437) (not b!6045430) (not b!6045435) (not b!6045433) (not b!6045432))
(check-sat)
