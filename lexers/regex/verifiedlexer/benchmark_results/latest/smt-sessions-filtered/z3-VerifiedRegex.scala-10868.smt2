; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!561202 () Bool)

(assert start!561202)

(declare-fun b!5323431 () Bool)

(assert (=> b!5323431 true))

(assert (=> b!5323431 true))

(declare-fun lambda!271640 () Int)

(declare-fun lambda!271639 () Int)

(assert (=> b!5323431 (not (= lambda!271640 lambda!271639))))

(assert (=> b!5323431 true))

(assert (=> b!5323431 true))

(declare-fun b!5323441 () Bool)

(assert (=> b!5323441 true))

(declare-fun b!5323420 () Bool)

(declare-fun res!2258016 () Bool)

(declare-fun e!3307033 () Bool)

(assert (=> b!5323420 (=> res!2258016 e!3307033)))

(declare-datatypes ((C!30236 0))(
  ( (C!30237 (val!24820 Int)) )
))
(declare-datatypes ((Regex!14983 0))(
  ( (ElementMatch!14983 (c!925337 C!30236)) (Concat!23828 (regOne!30478 Regex!14983) (regTwo!30478 Regex!14983)) (EmptyExpr!14983) (Star!14983 (reg!15312 Regex!14983)) (EmptyLang!14983) (Union!14983 (regOne!30479 Regex!14983) (regTwo!30479 Regex!14983)) )
))
(declare-fun r!7292 () Regex!14983)

(get-info :version)

(assert (=> b!5323420 (= res!2258016 (or ((_ is EmptyExpr!14983) r!7292) ((_ is EmptyLang!14983) r!7292) ((_ is ElementMatch!14983) r!7292) ((_ is Union!14983) r!7292) (not ((_ is Concat!23828) r!7292))))))

(declare-fun b!5323421 () Bool)

(declare-fun e!3307043 () Bool)

(declare-fun e!3307039 () Bool)

(assert (=> b!5323421 (= e!3307043 e!3307039)))

(declare-fun res!2258006 () Bool)

(assert (=> b!5323421 (=> res!2258006 e!3307039)))

(declare-datatypes ((List!61248 0))(
  ( (Nil!61124) (Cons!61124 (h!67572 Regex!14983) (t!374461 List!61248)) )
))
(declare-datatypes ((Context!8734 0))(
  ( (Context!8735 (exprs!4867 List!61248)) )
))
(declare-datatypes ((List!61249 0))(
  ( (Nil!61125) (Cons!61125 (h!67573 Context!8734) (t!374462 List!61249)) )
))
(declare-fun lt!2172545 () List!61249)

(declare-fun zl!343 () List!61249)

(declare-fun zipperDepthTotal!136 (List!61249) Int)

(assert (=> b!5323421 (= res!2258006 (>= (zipperDepthTotal!136 lt!2172545) (zipperDepthTotal!136 zl!343)))))

(declare-fun lt!2172554 () Context!8734)

(assert (=> b!5323421 (= lt!2172545 (Cons!61125 lt!2172554 Nil!61125))))

(declare-fun b!5323422 () Bool)

(declare-fun e!3307034 () Bool)

(assert (=> b!5323422 (= e!3307034 e!3307043)))

(declare-fun res!2258011 () Bool)

(assert (=> b!5323422 (=> res!2258011 e!3307043)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2172553 () (InoxSet Context!8734))

(declare-fun lt!2172544 () (InoxSet Context!8734))

(assert (=> b!5323422 (= res!2258011 (not (= lt!2172553 lt!2172544)))))

(declare-fun lt!2172559 () (InoxSet Context!8734))

(declare-fun lambda!271641 () Int)

(declare-datatypes ((List!61250 0))(
  ( (Nil!61126) (Cons!61126 (h!67574 C!30236) (t!374463 List!61250)) )
))
(declare-fun s!2326 () List!61250)

(declare-fun flatMap!710 ((InoxSet Context!8734) Int) (InoxSet Context!8734))

(declare-fun derivationStepZipperUp!355 (Context!8734 C!30236) (InoxSet Context!8734))

(assert (=> b!5323422 (= (flatMap!710 lt!2172559 lambda!271641) (derivationStepZipperUp!355 lt!2172554 (h!67574 s!2326)))))

(declare-datatypes ((Unit!153450 0))(
  ( (Unit!153451) )
))
(declare-fun lt!2172552 () Unit!153450)

(declare-fun lemmaFlatMapOnSingletonSet!242 ((InoxSet Context!8734) Context!8734 Int) Unit!153450)

(assert (=> b!5323422 (= lt!2172552 (lemmaFlatMapOnSingletonSet!242 lt!2172559 lt!2172554 lambda!271641))))

(declare-fun lt!2172549 () (InoxSet Context!8734))

(assert (=> b!5323422 (= lt!2172549 (derivationStepZipperUp!355 lt!2172554 (h!67574 s!2326)))))

(declare-fun derivationStepZipper!1224 ((InoxSet Context!8734) C!30236) (InoxSet Context!8734))

(assert (=> b!5323422 (= lt!2172553 (derivationStepZipper!1224 lt!2172559 (h!67574 s!2326)))))

(assert (=> b!5323422 (= lt!2172559 (store ((as const (Array Context!8734 Bool)) false) lt!2172554 true))))

(declare-fun lt!2172551 () List!61248)

(assert (=> b!5323422 (= lt!2172554 (Context!8735 lt!2172551))))

(declare-fun lt!2172542 () List!61248)

(assert (=> b!5323422 (= lt!2172551 (Cons!61124 (regOne!30478 (regOne!30478 r!7292)) lt!2172542))))

(declare-fun b!5323423 () Bool)

(declare-fun e!3307040 () Bool)

(declare-fun tp_is_empty!39219 () Bool)

(assert (=> b!5323423 (= e!3307040 tp_is_empty!39219)))

(declare-fun b!5323424 () Bool)

(declare-fun res!2258027 () Bool)

(declare-fun e!3307032 () Bool)

(assert (=> b!5323424 (=> res!2258027 e!3307032)))

(assert (=> b!5323424 (= res!2258027 (not ((_ is Concat!23828) (regOne!30478 r!7292))))))

(declare-fun b!5323425 () Bool)

(declare-fun res!2258010 () Bool)

(declare-fun e!3307041 () Bool)

(assert (=> b!5323425 (=> res!2258010 e!3307041)))

(declare-fun isEmpty!33095 (List!61248) Bool)

(assert (=> b!5323425 (= res!2258010 (isEmpty!33095 (t!374461 (exprs!4867 (h!67573 zl!343)))))))

(declare-fun b!5323426 () Bool)

(declare-fun e!3307042 () Bool)

(assert (=> b!5323426 (= e!3307032 e!3307042)))

(declare-fun res!2258012 () Bool)

(assert (=> b!5323426 (=> res!2258012 e!3307042)))

(declare-fun lt!2172557 () (InoxSet Context!8734))

(assert (=> b!5323426 (= res!2258012 (not (= lt!2172557 lt!2172544)))))

(declare-fun derivationStepZipperDown!431 (Regex!14983 Context!8734 C!30236) (InoxSet Context!8734))

(assert (=> b!5323426 (= lt!2172544 (derivationStepZipperDown!431 (regOne!30478 (regOne!30478 r!7292)) (Context!8735 lt!2172542) (h!67574 s!2326)))))

(assert (=> b!5323426 (= lt!2172542 (Cons!61124 (regTwo!30478 (regOne!30478 r!7292)) (t!374461 (exprs!4867 (h!67573 zl!343)))))))

(declare-fun b!5323427 () Bool)

(declare-fun e!3307044 () Bool)

(assert (=> b!5323427 (= e!3307044 (not e!3307033))))

(declare-fun res!2258024 () Bool)

(assert (=> b!5323427 (=> res!2258024 e!3307033)))

(assert (=> b!5323427 (= res!2258024 (not ((_ is Cons!61125) zl!343)))))

(declare-fun lt!2172556 () Bool)

(declare-fun matchRSpec!2086 (Regex!14983 List!61250) Bool)

(assert (=> b!5323427 (= lt!2172556 (matchRSpec!2086 r!7292 s!2326))))

(declare-fun matchR!7168 (Regex!14983 List!61250) Bool)

(assert (=> b!5323427 (= lt!2172556 (matchR!7168 r!7292 s!2326))))

(declare-fun lt!2172548 () Unit!153450)

(declare-fun mainMatchTheorem!2086 (Regex!14983 List!61250) Unit!153450)

(assert (=> b!5323427 (= lt!2172548 (mainMatchTheorem!2086 r!7292 s!2326))))

(declare-fun b!5323428 () Bool)

(declare-fun tp!1482208 () Bool)

(declare-fun tp!1482217 () Bool)

(assert (=> b!5323428 (= e!3307040 (and tp!1482208 tp!1482217))))

(declare-fun b!5323429 () Bool)

(declare-fun tp!1482212 () Bool)

(declare-fun tp!1482209 () Bool)

(assert (=> b!5323429 (= e!3307040 (and tp!1482212 tp!1482209))))

(declare-fun b!5323430 () Bool)

(declare-fun e!3307029 () Unit!153450)

(declare-fun Unit!153452 () Unit!153450)

(assert (=> b!5323430 (= e!3307029 Unit!153452)))

(declare-fun setElem!34283 () Context!8734)

(declare-fun setRes!34283 () Bool)

(declare-fun tp!1482214 () Bool)

(declare-fun e!3307037 () Bool)

(declare-fun setNonEmpty!34283 () Bool)

(declare-fun inv!80704 (Context!8734) Bool)

(assert (=> setNonEmpty!34283 (= setRes!34283 (and tp!1482214 (inv!80704 setElem!34283) e!3307037))))

(declare-fun z!1189 () (InoxSet Context!8734))

(declare-fun setRest!34283 () (InoxSet Context!8734))

(assert (=> setNonEmpty!34283 (= z!1189 ((_ map or) (store ((as const (Array Context!8734 Bool)) false) setElem!34283 true) setRest!34283))))

(assert (=> b!5323431 (= e!3307033 e!3307041)))

(declare-fun res!2258008 () Bool)

(assert (=> b!5323431 (=> res!2258008 e!3307041)))

(declare-fun lt!2172555 () Bool)

(assert (=> b!5323431 (= res!2258008 (or (not (= lt!2172556 lt!2172555)) ((_ is Nil!61126) s!2326)))))

(declare-fun Exists!2164 (Int) Bool)

(assert (=> b!5323431 (= (Exists!2164 lambda!271639) (Exists!2164 lambda!271640))))

(declare-fun lt!2172541 () Unit!153450)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!818 (Regex!14983 Regex!14983 List!61250) Unit!153450)

(assert (=> b!5323431 (= lt!2172541 (lemmaExistCutMatchRandMatchRSpecEquivalent!818 (regOne!30478 r!7292) (regTwo!30478 r!7292) s!2326))))

(assert (=> b!5323431 (= lt!2172555 (Exists!2164 lambda!271639))))

(declare-datatypes ((tuple2!64364 0))(
  ( (tuple2!64365 (_1!35485 List!61250) (_2!35485 List!61250)) )
))
(declare-datatypes ((Option!15094 0))(
  ( (None!15093) (Some!15093 (v!51122 tuple2!64364)) )
))
(declare-fun isDefined!11797 (Option!15094) Bool)

(declare-fun findConcatSeparation!1508 (Regex!14983 Regex!14983 List!61250 List!61250 List!61250) Option!15094)

(assert (=> b!5323431 (= lt!2172555 (isDefined!11797 (findConcatSeparation!1508 (regOne!30478 r!7292) (regTwo!30478 r!7292) Nil!61126 s!2326 s!2326)))))

(declare-fun lt!2172562 () Unit!153450)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1272 (Regex!14983 Regex!14983 List!61250) Unit!153450)

(assert (=> b!5323431 (= lt!2172562 (lemmaFindConcatSeparationEquivalentToExists!1272 (regOne!30478 r!7292) (regTwo!30478 r!7292) s!2326))))

(declare-fun b!5323432 () Bool)

(declare-fun res!2258004 () Bool)

(assert (=> b!5323432 (=> (not res!2258004) (not e!3307044))))

(declare-fun unfocusZipper!725 (List!61249) Regex!14983)

(assert (=> b!5323432 (= res!2258004 (= r!7292 (unfocusZipper!725 zl!343)))))

(declare-fun b!5323433 () Bool)

(declare-fun res!2258026 () Bool)

(assert (=> b!5323433 (=> res!2258026 e!3307033)))

(declare-fun isEmpty!33096 (List!61249) Bool)

(assert (=> b!5323433 (= res!2258026 (not (isEmpty!33096 (t!374462 zl!343))))))

(declare-fun b!5323434 () Bool)

(declare-fun res!2258022 () Bool)

(assert (=> b!5323434 (=> res!2258022 e!3307039)))

(declare-fun zipperDepth!92 (List!61249) Int)

(assert (=> b!5323434 (= res!2258022 (> (zipperDepth!92 lt!2172545) (zipperDepth!92 zl!343)))))

(declare-fun b!5323435 () Bool)

(assert (=> b!5323435 (= e!3307039 true)))

(declare-fun lt!2172550 () Regex!14983)

(declare-fun matchZipper!1227 ((InoxSet Context!8734) List!61250) Bool)

(assert (=> b!5323435 (= (matchR!7168 lt!2172550 s!2326) (matchZipper!1227 lt!2172559 s!2326))))

(declare-fun lt!2172558 () Unit!153450)

(declare-fun theoremZipperRegexEquiv!381 ((InoxSet Context!8734) List!61249 Regex!14983 List!61250) Unit!153450)

(assert (=> b!5323435 (= lt!2172558 (theoremZipperRegexEquiv!381 lt!2172559 lt!2172545 lt!2172550 s!2326))))

(declare-fun generalisedConcat!652 (List!61248) Regex!14983)

(assert (=> b!5323435 (= lt!2172550 (generalisedConcat!652 lt!2172551))))

(declare-fun b!5323436 () Bool)

(declare-fun res!2258025 () Bool)

(assert (=> b!5323436 (=> res!2258025 e!3307043)))

(declare-fun lt!2172563 () Bool)

(assert (=> b!5323436 (= res!2258025 (not (= lt!2172563 (matchZipper!1227 lt!2172553 (t!374463 s!2326)))))))

(declare-fun b!5323437 () Bool)

(declare-fun e!3307036 () Bool)

(declare-fun nullable!5152 (Regex!14983) Bool)

(assert (=> b!5323437 (= e!3307036 (nullable!5152 (regOne!30478 (regOne!30478 r!7292))))))

(declare-fun b!5323438 () Bool)

(declare-fun e!3307035 () Bool)

(declare-fun tp!1482211 () Bool)

(assert (=> b!5323438 (= e!3307035 tp!1482211)))

(declare-fun b!5323439 () Bool)

(declare-fun res!2258020 () Bool)

(assert (=> b!5323439 (=> res!2258020 e!3307032)))

(assert (=> b!5323439 (= res!2258020 e!3307036)))

(declare-fun res!2258018 () Bool)

(assert (=> b!5323439 (=> (not res!2258018) (not e!3307036))))

(assert (=> b!5323439 (= res!2258018 ((_ is Concat!23828) (regOne!30478 r!7292)))))

(declare-fun b!5323440 () Bool)

(declare-fun tp!1482210 () Bool)

(assert (=> b!5323440 (= e!3307037 tp!1482210)))

(assert (=> b!5323441 (= e!3307041 e!3307032)))

(declare-fun res!2258015 () Bool)

(assert (=> b!5323441 (=> res!2258015 e!3307032)))

(assert (=> b!5323441 (= res!2258015 (or (and ((_ is ElementMatch!14983) (regOne!30478 r!7292)) (= (c!925337 (regOne!30478 r!7292)) (h!67574 s!2326))) ((_ is Union!14983) (regOne!30478 r!7292))))))

(declare-fun lt!2172543 () Unit!153450)

(assert (=> b!5323441 (= lt!2172543 e!3307029)))

(declare-fun c!925336 () Bool)

(assert (=> b!5323441 (= c!925336 (nullable!5152 (h!67572 (exprs!4867 (h!67573 zl!343)))))))

(assert (=> b!5323441 (= (flatMap!710 z!1189 lambda!271641) (derivationStepZipperUp!355 (h!67573 zl!343) (h!67574 s!2326)))))

(declare-fun lt!2172561 () Unit!153450)

(assert (=> b!5323441 (= lt!2172561 (lemmaFlatMapOnSingletonSet!242 z!1189 (h!67573 zl!343) lambda!271641))))

(declare-fun lt!2172546 () (InoxSet Context!8734))

(declare-fun lt!2172560 () Context!8734)

(assert (=> b!5323441 (= lt!2172546 (derivationStepZipperUp!355 lt!2172560 (h!67574 s!2326)))))

(assert (=> b!5323441 (= lt!2172557 (derivationStepZipperDown!431 (h!67572 (exprs!4867 (h!67573 zl!343))) lt!2172560 (h!67574 s!2326)))))

(assert (=> b!5323441 (= lt!2172560 (Context!8735 (t!374461 (exprs!4867 (h!67573 zl!343)))))))

(declare-fun lt!2172547 () (InoxSet Context!8734))

(assert (=> b!5323441 (= lt!2172547 (derivationStepZipperUp!355 (Context!8735 (Cons!61124 (h!67572 (exprs!4867 (h!67573 zl!343))) (t!374461 (exprs!4867 (h!67573 zl!343))))) (h!67574 s!2326)))))

(declare-fun b!5323442 () Bool)

(declare-fun res!2258013 () Bool)

(assert (=> b!5323442 (=> res!2258013 e!3307033)))

(declare-fun generalisedUnion!912 (List!61248) Regex!14983)

(declare-fun unfocusZipperList!425 (List!61249) List!61248)

(assert (=> b!5323442 (= res!2258013 (not (= r!7292 (generalisedUnion!912 (unfocusZipperList!425 zl!343)))))))

(declare-fun b!5323443 () Bool)

(declare-fun tp!1482213 () Bool)

(assert (=> b!5323443 (= e!3307040 tp!1482213)))

(declare-fun b!5323444 () Bool)

(assert (=> b!5323444 (= e!3307042 e!3307034)))

(declare-fun res!2258007 () Bool)

(assert (=> b!5323444 (=> res!2258007 e!3307034)))

(assert (=> b!5323444 (= res!2258007 (not (= lt!2172563 (matchZipper!1227 lt!2172544 (t!374463 s!2326)))))))

(assert (=> b!5323444 (= lt!2172563 (matchZipper!1227 lt!2172557 (t!374463 s!2326)))))

(declare-fun b!5323445 () Bool)

(declare-fun res!2258009 () Bool)

(assert (=> b!5323445 (=> res!2258009 e!3307043)))

(declare-fun contextDepthTotal!116 (Context!8734) Int)

(assert (=> b!5323445 (= res!2258009 (>= (contextDepthTotal!116 lt!2172554) (contextDepthTotal!116 (h!67573 zl!343))))))

(declare-fun b!5323446 () Bool)

(declare-fun res!2258023 () Bool)

(assert (=> b!5323446 (=> (not res!2258023) (not e!3307044))))

(declare-fun toList!8767 ((InoxSet Context!8734)) List!61249)

(assert (=> b!5323446 (= res!2258023 (= (toList!8767 z!1189) zl!343))))

(declare-fun setIsEmpty!34283 () Bool)

(assert (=> setIsEmpty!34283 setRes!34283))

(declare-fun b!5323447 () Bool)

(declare-fun res!2258014 () Bool)

(assert (=> b!5323447 (=> res!2258014 e!3307033)))

(assert (=> b!5323447 (= res!2258014 (not (= r!7292 (generalisedConcat!652 (exprs!4867 (h!67573 zl!343))))))))

(declare-fun b!5323448 () Bool)

(declare-fun res!2258017 () Bool)

(assert (=> b!5323448 (=> res!2258017 e!3307043)))

(assert (=> b!5323448 (= res!2258017 (not (= (exprs!4867 (h!67573 zl!343)) (Cons!61124 (Concat!23828 (regOne!30478 (regOne!30478 r!7292)) (regTwo!30478 (regOne!30478 r!7292))) (t!374461 (exprs!4867 (h!67573 zl!343)))))))))

(declare-fun b!5323449 () Bool)

(declare-fun res!2258021 () Bool)

(assert (=> b!5323449 (=> res!2258021 e!3307033)))

(assert (=> b!5323449 (= res!2258021 (not ((_ is Cons!61124) (exprs!4867 (h!67573 zl!343)))))))

(declare-fun res!2258005 () Bool)

(assert (=> start!561202 (=> (not res!2258005) (not e!3307044))))

(declare-fun validRegex!6719 (Regex!14983) Bool)

(assert (=> start!561202 (= res!2258005 (validRegex!6719 r!7292))))

(assert (=> start!561202 e!3307044))

(assert (=> start!561202 e!3307040))

(declare-fun condSetEmpty!34283 () Bool)

(assert (=> start!561202 (= condSetEmpty!34283 (= z!1189 ((as const (Array Context!8734 Bool)) false)))))

(assert (=> start!561202 setRes!34283))

(declare-fun e!3307038 () Bool)

(assert (=> start!561202 e!3307038))

(declare-fun e!3307030 () Bool)

(assert (=> start!561202 e!3307030))

(declare-fun tp!1482216 () Bool)

(declare-fun b!5323450 () Bool)

(assert (=> b!5323450 (= e!3307038 (and (inv!80704 (h!67573 zl!343)) e!3307035 tp!1482216))))

(declare-fun b!5323451 () Bool)

(declare-fun tp!1482215 () Bool)

(assert (=> b!5323451 (= e!3307030 (and tp_is_empty!39219 tp!1482215))))

(declare-fun b!5323452 () Bool)

(declare-fun e!3307031 () Bool)

(assert (=> b!5323452 (= e!3307031 (matchZipper!1227 lt!2172546 (t!374463 s!2326)))))

(declare-fun b!5323453 () Bool)

(declare-fun Unit!153453 () Unit!153450)

(assert (=> b!5323453 (= e!3307029 Unit!153453)))

(declare-fun lt!2172564 () Unit!153450)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!220 ((InoxSet Context!8734) (InoxSet Context!8734) List!61250) Unit!153450)

(assert (=> b!5323453 (= lt!2172564 (lemmaZipperConcatMatchesSameAsBothZippers!220 lt!2172557 lt!2172546 (t!374463 s!2326)))))

(declare-fun res!2258019 () Bool)

(assert (=> b!5323453 (= res!2258019 (matchZipper!1227 lt!2172557 (t!374463 s!2326)))))

(assert (=> b!5323453 (=> res!2258019 e!3307031)))

(assert (=> b!5323453 (= (matchZipper!1227 ((_ map or) lt!2172557 lt!2172546) (t!374463 s!2326)) e!3307031)))

(assert (= (and start!561202 res!2258005) b!5323446))

(assert (= (and b!5323446 res!2258023) b!5323432))

(assert (= (and b!5323432 res!2258004) b!5323427))

(assert (= (and b!5323427 (not res!2258024)) b!5323433))

(assert (= (and b!5323433 (not res!2258026)) b!5323447))

(assert (= (and b!5323447 (not res!2258014)) b!5323449))

(assert (= (and b!5323449 (not res!2258021)) b!5323442))

(assert (= (and b!5323442 (not res!2258013)) b!5323420))

(assert (= (and b!5323420 (not res!2258016)) b!5323431))

(assert (= (and b!5323431 (not res!2258008)) b!5323425))

(assert (= (and b!5323425 (not res!2258010)) b!5323441))

(assert (= (and b!5323441 c!925336) b!5323453))

(assert (= (and b!5323441 (not c!925336)) b!5323430))

(assert (= (and b!5323453 (not res!2258019)) b!5323452))

(assert (= (and b!5323441 (not res!2258015)) b!5323439))

(assert (= (and b!5323439 res!2258018) b!5323437))

(assert (= (and b!5323439 (not res!2258020)) b!5323424))

(assert (= (and b!5323424 (not res!2258027)) b!5323426))

(assert (= (and b!5323426 (not res!2258012)) b!5323444))

(assert (= (and b!5323444 (not res!2258007)) b!5323422))

(assert (= (and b!5323422 (not res!2258011)) b!5323436))

(assert (= (and b!5323436 (not res!2258025)) b!5323448))

(assert (= (and b!5323448 (not res!2258017)) b!5323445))

(assert (= (and b!5323445 (not res!2258009)) b!5323421))

(assert (= (and b!5323421 (not res!2258006)) b!5323434))

(assert (= (and b!5323434 (not res!2258022)) b!5323435))

(assert (= (and start!561202 ((_ is ElementMatch!14983) r!7292)) b!5323423))

(assert (= (and start!561202 ((_ is Concat!23828) r!7292)) b!5323428))

(assert (= (and start!561202 ((_ is Star!14983) r!7292)) b!5323443))

(assert (= (and start!561202 ((_ is Union!14983) r!7292)) b!5323429))

(assert (= (and start!561202 condSetEmpty!34283) setIsEmpty!34283))

(assert (= (and start!561202 (not condSetEmpty!34283)) setNonEmpty!34283))

(assert (= setNonEmpty!34283 b!5323440))

(assert (= b!5323450 b!5323438))

(assert (= (and start!561202 ((_ is Cons!61125) zl!343)) b!5323450))

(assert (= (and start!561202 ((_ is Cons!61126) s!2326)) b!5323451))

(declare-fun m!6357902 () Bool)

(assert (=> b!5323433 m!6357902))

(declare-fun m!6357904 () Bool)

(assert (=> b!5323446 m!6357904))

(declare-fun m!6357906 () Bool)

(assert (=> b!5323432 m!6357906))

(declare-fun m!6357908 () Bool)

(assert (=> b!5323434 m!6357908))

(declare-fun m!6357910 () Bool)

(assert (=> b!5323434 m!6357910))

(declare-fun m!6357912 () Bool)

(assert (=> setNonEmpty!34283 m!6357912))

(declare-fun m!6357914 () Bool)

(assert (=> b!5323452 m!6357914))

(declare-fun m!6357916 () Bool)

(assert (=> start!561202 m!6357916))

(declare-fun m!6357918 () Bool)

(assert (=> b!5323422 m!6357918))

(declare-fun m!6357920 () Bool)

(assert (=> b!5323422 m!6357920))

(declare-fun m!6357922 () Bool)

(assert (=> b!5323422 m!6357922))

(declare-fun m!6357924 () Bool)

(assert (=> b!5323422 m!6357924))

(declare-fun m!6357926 () Bool)

(assert (=> b!5323422 m!6357926))

(declare-fun m!6357928 () Bool)

(assert (=> b!5323447 m!6357928))

(declare-fun m!6357930 () Bool)

(assert (=> b!5323436 m!6357930))

(declare-fun m!6357932 () Bool)

(assert (=> b!5323431 m!6357932))

(declare-fun m!6357934 () Bool)

(assert (=> b!5323431 m!6357934))

(declare-fun m!6357936 () Bool)

(assert (=> b!5323431 m!6357936))

(assert (=> b!5323431 m!6357936))

(declare-fun m!6357938 () Bool)

(assert (=> b!5323431 m!6357938))

(assert (=> b!5323431 m!6357932))

(declare-fun m!6357940 () Bool)

(assert (=> b!5323431 m!6357940))

(declare-fun m!6357942 () Bool)

(assert (=> b!5323431 m!6357942))

(declare-fun m!6357944 () Bool)

(assert (=> b!5323453 m!6357944))

(declare-fun m!6357946 () Bool)

(assert (=> b!5323453 m!6357946))

(declare-fun m!6357948 () Bool)

(assert (=> b!5323453 m!6357948))

(declare-fun m!6357950 () Bool)

(assert (=> b!5323421 m!6357950))

(declare-fun m!6357952 () Bool)

(assert (=> b!5323421 m!6357952))

(declare-fun m!6357954 () Bool)

(assert (=> b!5323444 m!6357954))

(assert (=> b!5323444 m!6357946))

(declare-fun m!6357956 () Bool)

(assert (=> b!5323425 m!6357956))

(declare-fun m!6357958 () Bool)

(assert (=> b!5323445 m!6357958))

(declare-fun m!6357960 () Bool)

(assert (=> b!5323445 m!6357960))

(declare-fun m!6357962 () Bool)

(assert (=> b!5323435 m!6357962))

(declare-fun m!6357964 () Bool)

(assert (=> b!5323435 m!6357964))

(declare-fun m!6357966 () Bool)

(assert (=> b!5323435 m!6357966))

(declare-fun m!6357968 () Bool)

(assert (=> b!5323435 m!6357968))

(declare-fun m!6357970 () Bool)

(assert (=> b!5323441 m!6357970))

(declare-fun m!6357972 () Bool)

(assert (=> b!5323441 m!6357972))

(declare-fun m!6357974 () Bool)

(assert (=> b!5323441 m!6357974))

(declare-fun m!6357976 () Bool)

(assert (=> b!5323441 m!6357976))

(declare-fun m!6357978 () Bool)

(assert (=> b!5323441 m!6357978))

(declare-fun m!6357980 () Bool)

(assert (=> b!5323441 m!6357980))

(declare-fun m!6357982 () Bool)

(assert (=> b!5323441 m!6357982))

(declare-fun m!6357984 () Bool)

(assert (=> b!5323442 m!6357984))

(assert (=> b!5323442 m!6357984))

(declare-fun m!6357986 () Bool)

(assert (=> b!5323442 m!6357986))

(declare-fun m!6357988 () Bool)

(assert (=> b!5323437 m!6357988))

(declare-fun m!6357990 () Bool)

(assert (=> b!5323427 m!6357990))

(declare-fun m!6357992 () Bool)

(assert (=> b!5323427 m!6357992))

(declare-fun m!6357994 () Bool)

(assert (=> b!5323427 m!6357994))

(declare-fun m!6357996 () Bool)

(assert (=> b!5323450 m!6357996))

(declare-fun m!6357998 () Bool)

(assert (=> b!5323426 m!6357998))

(check-sat (not start!561202) (not b!5323431) (not b!5323441) (not b!5323453) (not b!5323442) (not b!5323451) (not b!5323452) (not setNonEmpty!34283) (not b!5323444) (not b!5323425) (not b!5323422) (not b!5323432) (not b!5323426) (not b!5323433) (not b!5323446) (not b!5323436) (not b!5323421) (not b!5323427) (not b!5323429) (not b!5323440) (not b!5323437) tp_is_empty!39219 (not b!5323435) (not b!5323443) (not b!5323447) (not b!5323445) (not b!5323438) (not b!5323450) (not b!5323428) (not b!5323434))
(check-sat)
