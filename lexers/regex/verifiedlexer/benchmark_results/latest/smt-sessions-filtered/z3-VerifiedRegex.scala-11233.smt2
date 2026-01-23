; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!588364 () Bool)

(assert start!588364)

(declare-fun b!5714517 () Bool)

(assert (=> b!5714517 true))

(assert (=> b!5714517 true))

(declare-fun lambda!308680 () Int)

(declare-fun lambda!308679 () Int)

(assert (=> b!5714517 (not (= lambda!308680 lambda!308679))))

(assert (=> b!5714517 true))

(assert (=> b!5714517 true))

(declare-fun b!5714534 () Bool)

(assert (=> b!5714534 true))

(declare-fun bs!1334830 () Bool)

(declare-fun b!5714504 () Bool)

(assert (= bs!1334830 (and b!5714504 b!5714517)))

(declare-datatypes ((C!31696 0))(
  ( (C!31697 (val!25550 Int)) )
))
(declare-datatypes ((Regex!15713 0))(
  ( (ElementMatch!15713 (c!1007275 C!31696)) (Concat!24558 (regOne!31938 Regex!15713) (regTwo!31938 Regex!15713)) (EmptyExpr!15713) (Star!15713 (reg!16042 Regex!15713)) (EmptyLang!15713) (Union!15713 (regOne!31939 Regex!15713) (regTwo!31939 Regex!15713)) )
))
(declare-fun r!7292 () Regex!15713)

(declare-fun lambda!308682 () Int)

(declare-fun lt!2277097 () Regex!15713)

(assert (=> bs!1334830 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308682 lambda!308679))))

(assert (=> bs!1334830 (not (= lambda!308682 lambda!308680))))

(assert (=> b!5714504 true))

(assert (=> b!5714504 true))

(assert (=> b!5714504 true))

(declare-fun lambda!308683 () Int)

(assert (=> bs!1334830 (not (= lambda!308683 lambda!308679))))

(assert (=> bs!1334830 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308683 lambda!308680))))

(assert (=> b!5714504 (not (= lambda!308683 lambda!308682))))

(assert (=> b!5714504 true))

(assert (=> b!5714504 true))

(assert (=> b!5714504 true))

(declare-fun bs!1334831 () Bool)

(declare-fun b!5714499 () Bool)

(assert (= bs!1334831 (and b!5714499 b!5714517)))

(declare-datatypes ((List!63438 0))(
  ( (Nil!63314) (Cons!63314 (h!69762 C!31696) (t!376758 List!63438)) )
))
(declare-fun s!2326 () List!63438)

(declare-datatypes ((tuple2!65620 0))(
  ( (tuple2!65621 (_1!36113 List!63438) (_2!36113 List!63438)) )
))
(declare-fun lt!2277139 () tuple2!65620)

(declare-fun lambda!308684 () Int)

(assert (=> bs!1334831 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308684 lambda!308679))))

(assert (=> bs!1334831 (not (= lambda!308684 lambda!308680))))

(declare-fun bs!1334832 () Bool)

(assert (= bs!1334832 (and b!5714499 b!5714504)))

(assert (=> bs!1334832 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308684 lambda!308682))))

(assert (=> bs!1334832 (not (= lambda!308684 lambda!308683))))

(assert (=> b!5714499 true))

(assert (=> b!5714499 true))

(assert (=> b!5714499 true))

(declare-fun lambda!308685 () Int)

(assert (=> bs!1334832 (not (= lambda!308685 lambda!308683))))

(assert (=> bs!1334831 (not (= lambda!308685 lambda!308680))))

(assert (=> b!5714499 (not (= lambda!308685 lambda!308684))))

(assert (=> bs!1334831 (not (= lambda!308685 lambda!308679))))

(assert (=> bs!1334832 (not (= lambda!308685 lambda!308682))))

(assert (=> b!5714499 true))

(assert (=> b!5714499 true))

(assert (=> b!5714499 true))

(declare-fun lambda!308686 () Int)

(assert (=> b!5714499 (not (= lambda!308686 lambda!308685))))

(assert (=> bs!1334832 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308686 lambda!308683))))

(assert (=> bs!1334831 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308686 lambda!308680))))

(assert (=> b!5714499 (not (= lambda!308686 lambda!308684))))

(assert (=> bs!1334831 (not (= lambda!308686 lambda!308679))))

(assert (=> bs!1334832 (not (= lambda!308686 lambda!308682))))

(assert (=> b!5714499 true))

(assert (=> b!5714499 true))

(assert (=> b!5714499 true))

(declare-fun b!5714497 () Bool)

(declare-fun e!3514418 () Bool)

(declare-fun e!3514419 () Bool)

(assert (=> b!5714497 (= e!3514418 e!3514419)))

(declare-fun res!2412936 () Bool)

(assert (=> b!5714497 (=> res!2412936 e!3514419)))

(declare-fun lt!2277138 () Regex!15713)

(assert (=> b!5714497 (= res!2412936 (not (= r!7292 lt!2277138)))))

(assert (=> b!5714497 (= lt!2277138 (Concat!24558 lt!2277097 (regTwo!31938 r!7292)))))

(declare-fun b!5714498 () Bool)

(declare-fun e!3514440 () Bool)

(declare-fun tp!1583413 () Bool)

(declare-fun tp!1583407 () Bool)

(assert (=> b!5714498 (= e!3514440 (and tp!1583413 tp!1583407))))

(declare-fun e!3514432 () Bool)

(declare-fun e!3514431 () Bool)

(assert (=> b!5714499 (= e!3514432 e!3514431)))

(declare-fun res!2412938 () Bool)

(assert (=> b!5714499 (=> res!2412938 e!3514431)))

(declare-fun lt!2277096 () List!63438)

(assert (=> b!5714499 (= res!2412938 (not (= (_1!36113 lt!2277139) lt!2277096)))))

(declare-fun lt!2277144 () tuple2!65620)

(declare-fun ++!13908 (List!63438 List!63438) List!63438)

(assert (=> b!5714499 (= lt!2277096 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))

(declare-datatypes ((Option!15722 0))(
  ( (None!15721) (Some!15721 (v!51776 tuple2!65620)) )
))
(declare-fun lt!2277099 () Option!15722)

(declare-fun get!21829 (Option!15722) tuple2!65620)

(assert (=> b!5714499 (= lt!2277144 (get!21829 lt!2277099))))

(declare-fun Exists!2813 (Int) Bool)

(assert (=> b!5714499 (= (Exists!2813 lambda!308684) (Exists!2813 lambda!308686))))

(declare-datatypes ((Unit!156384 0))(
  ( (Unit!156385) )
))
(declare-fun lt!2277130 () Unit!156384)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1442 (Regex!15713 Regex!15713 List!63438) Unit!156384)

(assert (=> b!5714499 (= lt!2277130 (lemmaExistCutMatchRandMatchRSpecEquivalent!1442 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)))))

(assert (=> b!5714499 (= (Exists!2813 lambda!308684) (Exists!2813 lambda!308685))))

(declare-fun lt!2277093 () Unit!156384)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!550 (Regex!15713 List!63438) Unit!156384)

(assert (=> b!5714499 (= lt!2277093 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!550 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277139)))))

(declare-fun isDefined!12425 (Option!15722) Bool)

(assert (=> b!5714499 (= (isDefined!12425 lt!2277099) (Exists!2813 lambda!308684))))

(declare-fun findConcatSeparation!2136 (Regex!15713 Regex!15713 List!63438 List!63438 List!63438) Option!15722)

(assert (=> b!5714499 (= lt!2277099 (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 Nil!63314 (_1!36113 lt!2277139) (_1!36113 lt!2277139)))))

(declare-fun lt!2277126 () Unit!156384)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1900 (Regex!15713 Regex!15713 List!63438) Unit!156384)

(assert (=> b!5714499 (= lt!2277126 (lemmaFindConcatSeparationEquivalentToExists!1900 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)))))

(declare-fun matchRSpec!2816 (Regex!15713 List!63438) Bool)

(assert (=> b!5714499 (matchRSpec!2816 lt!2277097 (_1!36113 lt!2277139))))

(declare-fun lt!2277102 () Unit!156384)

(declare-fun mainMatchTheorem!2816 (Regex!15713 List!63438) Unit!156384)

(assert (=> b!5714499 (= lt!2277102 (mainMatchTheorem!2816 lt!2277097 (_1!36113 lt!2277139)))))

(declare-fun b!5714500 () Bool)

(declare-fun e!3514434 () Unit!156384)

(declare-fun Unit!156386 () Unit!156384)

(assert (=> b!5714500 (= e!3514434 Unit!156386)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63439 0))(
  ( (Nil!63315) (Cons!63315 (h!69763 Regex!15713) (t!376759 List!63439)) )
))
(declare-datatypes ((Context!10194 0))(
  ( (Context!10195 (exprs!5597 List!63439)) )
))
(declare-fun lt!2277110 () (InoxSet Context!10194))

(declare-fun lt!2277145 () Unit!156384)

(declare-fun lt!2277113 () (InoxSet Context!10194))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!738 ((InoxSet Context!10194) (InoxSet Context!10194) List!63438) Unit!156384)

(assert (=> b!5714500 (= lt!2277145 (lemmaZipperConcatMatchesSameAsBothZippers!738 lt!2277113 lt!2277110 (t!376758 s!2326)))))

(declare-fun res!2412943 () Bool)

(declare-fun matchZipper!1851 ((InoxSet Context!10194) List!63438) Bool)

(assert (=> b!5714500 (= res!2412943 (matchZipper!1851 lt!2277113 (t!376758 s!2326)))))

(declare-fun e!3514428 () Bool)

(assert (=> b!5714500 (=> res!2412943 e!3514428)))

(assert (=> b!5714500 (= (matchZipper!1851 ((_ map or) lt!2277113 lt!2277110) (t!376758 s!2326)) e!3514428)))

(declare-fun b!5714501 () Bool)

(declare-fun res!2412928 () Bool)

(declare-fun e!3514423 () Bool)

(assert (=> b!5714501 (=> res!2412928 e!3514423)))

(declare-datatypes ((List!63440 0))(
  ( (Nil!63316) (Cons!63316 (h!69764 Context!10194) (t!376760 List!63440)) )
))
(declare-fun zl!343 () List!63440)

(declare-fun generalisedUnion!1576 (List!63439) Regex!15713)

(declare-fun unfocusZipperList!1141 (List!63440) List!63439)

(assert (=> b!5714501 (= res!2412928 (not (= r!7292 (generalisedUnion!1576 (unfocusZipperList!1141 zl!343)))))))

(declare-fun b!5714502 () Bool)

(declare-fun e!3514426 () Bool)

(declare-fun tp!1583410 () Bool)

(assert (=> b!5714502 (= e!3514426 tp!1583410)))

(declare-fun b!5714503 () Bool)

(declare-fun res!2412937 () Bool)

(declare-fun e!3514439 () Bool)

(assert (=> b!5714503 (=> res!2412937 e!3514439)))

(declare-fun matchR!7898 (Regex!15713 List!63438) Bool)

(assert (=> b!5714503 (= res!2412937 (not (matchR!7898 lt!2277097 (_2!36113 lt!2277144))))))

(declare-fun e!3514416 () Bool)

(assert (=> b!5714504 (= e!3514416 e!3514432)))

(declare-fun res!2412925 () Bool)

(assert (=> b!5714504 (=> res!2412925 e!3514432)))

(assert (=> b!5714504 (= res!2412925 (not (= (++!13908 (_1!36113 lt!2277139) (_2!36113 lt!2277139)) s!2326)))))

(declare-fun lt!2277112 () Option!15722)

(assert (=> b!5714504 (= lt!2277139 (get!21829 lt!2277112))))

(assert (=> b!5714504 (= (Exists!2813 lambda!308682) (Exists!2813 lambda!308683))))

(declare-fun lt!2277122 () Unit!156384)

(assert (=> b!5714504 (= lt!2277122 (lemmaExistCutMatchRandMatchRSpecEquivalent!1442 lt!2277097 (regTwo!31938 r!7292) s!2326))))

(assert (=> b!5714504 (= (isDefined!12425 lt!2277112) (Exists!2813 lambda!308682))))

(assert (=> b!5714504 (= lt!2277112 (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326))))

(declare-fun lt!2277148 () Unit!156384)

(assert (=> b!5714504 (= lt!2277148 (lemmaFindConcatSeparationEquivalentToExists!1900 lt!2277097 (regTwo!31938 r!7292) s!2326))))

(declare-fun b!5714505 () Bool)

(declare-fun e!3514424 () Bool)

(declare-fun tp!1583409 () Bool)

(declare-fun e!3514429 () Bool)

(declare-fun inv!82529 (Context!10194) Bool)

(assert (=> b!5714505 (= e!3514424 (and (inv!82529 (h!69764 zl!343)) e!3514429 tp!1583409))))

(declare-fun b!5714506 () Bool)

(assert (=> b!5714506 (= e!3514428 (matchZipper!1851 lt!2277110 (t!376758 s!2326)))))

(declare-fun b!5714507 () Bool)

(declare-fun e!3514420 () Bool)

(declare-fun tp_is_empty!40679 () Bool)

(declare-fun tp!1583414 () Bool)

(assert (=> b!5714507 (= e!3514420 (and tp_is_empty!40679 tp!1583414))))

(declare-fun b!5714508 () Bool)

(declare-fun e!3514436 () Bool)

(assert (=> b!5714508 (= e!3514436 e!3514418)))

(declare-fun res!2412944 () Bool)

(assert (=> b!5714508 (=> res!2412944 e!3514418)))

(declare-fun lt!2277143 () (InoxSet Context!10194))

(declare-fun lt!2277092 () (InoxSet Context!10194))

(assert (=> b!5714508 (= res!2412944 (not (= lt!2277143 lt!2277092)))))

(declare-fun lt!2277095 () Context!10194)

(declare-fun lt!2277101 () (InoxSet Context!10194))

(declare-fun lambda!308681 () Int)

(declare-fun flatMap!1326 ((InoxSet Context!10194) Int) (InoxSet Context!10194))

(declare-fun derivationStepZipperUp!981 (Context!10194 C!31696) (InoxSet Context!10194))

(assert (=> b!5714508 (= (flatMap!1326 lt!2277101 lambda!308681) (derivationStepZipperUp!981 lt!2277095 (h!69762 s!2326)))))

(declare-fun lt!2277137 () Unit!156384)

(declare-fun lemmaFlatMapOnSingletonSet!858 ((InoxSet Context!10194) Context!10194 Int) Unit!156384)

(assert (=> b!5714508 (= lt!2277137 (lemmaFlatMapOnSingletonSet!858 lt!2277101 lt!2277095 lambda!308681))))

(declare-fun lt!2277111 () (InoxSet Context!10194))

(assert (=> b!5714508 (= lt!2277111 (derivationStepZipperUp!981 lt!2277095 (h!69762 s!2326)))))

(declare-fun derivationStepZipper!1796 ((InoxSet Context!10194) C!31696) (InoxSet Context!10194))

(assert (=> b!5714508 (= lt!2277143 (derivationStepZipper!1796 lt!2277101 (h!69762 s!2326)))))

(assert (=> b!5714508 (= lt!2277101 (store ((as const (Array Context!10194 Bool)) false) lt!2277095 true))))

(declare-fun lt!2277109 () List!63439)

(assert (=> b!5714508 (= lt!2277095 (Context!10195 (Cons!63315 (reg!16042 (regOne!31938 r!7292)) lt!2277109)))))

(declare-fun b!5714509 () Bool)

(declare-fun res!2412942 () Bool)

(assert (=> b!5714509 (=> res!2412942 e!3514423)))

(get-info :version)

(assert (=> b!5714509 (= res!2412942 (not ((_ is Cons!63315) (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5714510 () Bool)

(declare-fun res!2412947 () Bool)

(assert (=> b!5714510 (=> res!2412947 e!3514432)))

(declare-fun isEmpty!35186 (List!63438) Bool)

(assert (=> b!5714510 (= res!2412947 (isEmpty!35186 (_1!36113 lt!2277139)))))

(declare-fun b!5714511 () Bool)

(declare-fun res!2412919 () Bool)

(declare-fun e!3514421 () Bool)

(assert (=> b!5714511 (=> (not res!2412919) (not e!3514421))))

(declare-fun z!1189 () (InoxSet Context!10194))

(declare-fun toList!9497 ((InoxSet Context!10194)) List!63440)

(assert (=> b!5714511 (= res!2412919 (= (toList!9497 z!1189) zl!343))))

(declare-fun b!5714512 () Bool)

(assert (=> b!5714512 (= e!3514431 e!3514439)))

(declare-fun res!2412923 () Bool)

(assert (=> b!5714512 (=> res!2412923 e!3514439)))

(declare-fun lt!2277131 () List!63438)

(assert (=> b!5714512 (= res!2412923 (not (= lt!2277131 s!2326)))))

(declare-fun lt!2277105 () List!63438)

(assert (=> b!5714512 (= lt!2277131 lt!2277105)))

(declare-fun lt!2277140 () List!63438)

(assert (=> b!5714512 (= lt!2277105 (++!13908 (_1!36113 lt!2277144) lt!2277140))))

(assert (=> b!5714512 (= lt!2277131 (++!13908 lt!2277096 (_2!36113 lt!2277139)))))

(assert (=> b!5714512 (= lt!2277140 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(declare-fun lt!2277107 () Unit!156384)

(declare-fun lemmaConcatAssociativity!2880 (List!63438 List!63438 List!63438) Unit!156384)

(assert (=> b!5714512 (= lt!2277107 (lemmaConcatAssociativity!2880 (_1!36113 lt!2277144) (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(declare-fun b!5714513 () Bool)

(declare-fun res!2412917 () Bool)

(assert (=> b!5714513 (=> res!2412917 e!3514423)))

(declare-fun isEmpty!35187 (List!63440) Bool)

(assert (=> b!5714513 (= res!2412917 (not (isEmpty!35187 (t!376760 zl!343))))))

(declare-fun b!5714514 () Bool)

(declare-fun e!3514435 () Bool)

(declare-fun lt!2277120 () Bool)

(declare-fun lt!2277146 () Bool)

(assert (=> b!5714514 (= e!3514435 (or (not lt!2277120) lt!2277146))))

(declare-fun b!5714515 () Bool)

(declare-fun e!3514425 () Bool)

(assert (=> b!5714515 (= e!3514421 e!3514425)))

(declare-fun res!2412939 () Bool)

(assert (=> b!5714515 (=> (not res!2412939) (not e!3514425))))

(declare-fun lt!2277100 () Regex!15713)

(assert (=> b!5714515 (= res!2412939 (= r!7292 lt!2277100))))

(declare-fun unfocusZipper!1455 (List!63440) Regex!15713)

(assert (=> b!5714515 (= lt!2277100 (unfocusZipper!1455 zl!343))))

(declare-fun b!5714516 () Bool)

(assert (=> b!5714516 (= e!3514440 tp_is_empty!40679)))

(declare-fun e!3514433 () Bool)

(assert (=> b!5714517 (= e!3514423 e!3514433)))

(declare-fun res!2412933 () Bool)

(assert (=> b!5714517 (=> res!2412933 e!3514433)))

(declare-fun lt!2277125 () Bool)

(assert (=> b!5714517 (= res!2412933 (or (not (= lt!2277120 lt!2277125)) ((_ is Nil!63314) s!2326)))))

(assert (=> b!5714517 (= (Exists!2813 lambda!308679) (Exists!2813 lambda!308680))))

(declare-fun lt!2277141 () Unit!156384)

(assert (=> b!5714517 (= lt!2277141 (lemmaExistCutMatchRandMatchRSpecEquivalent!1442 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326))))

(assert (=> b!5714517 (= lt!2277125 (Exists!2813 lambda!308679))))

(assert (=> b!5714517 (= lt!2277125 (isDefined!12425 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)))))

(declare-fun lt!2277127 () Unit!156384)

(assert (=> b!5714517 (= lt!2277127 (lemmaFindConcatSeparationEquivalentToExists!1900 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326))))

(declare-fun b!5714518 () Bool)

(declare-fun e!3514438 () Bool)

(assert (=> b!5714518 (= e!3514438 e!3514416)))

(declare-fun res!2412922 () Bool)

(assert (=> b!5714518 (=> res!2412922 e!3514416)))

(assert (=> b!5714518 (= res!2412922 (not lt!2277120))))

(assert (=> b!5714518 e!3514435))

(declare-fun res!2412931 () Bool)

(assert (=> b!5714518 (=> (not res!2412931) (not e!3514435))))

(declare-fun lt!2277147 () Bool)

(declare-fun lt!2277132 () Regex!15713)

(assert (=> b!5714518 (= res!2412931 (= lt!2277147 (matchRSpec!2816 lt!2277132 s!2326)))))

(assert (=> b!5714518 (= lt!2277147 (matchR!7898 lt!2277132 s!2326))))

(declare-fun lt!2277129 () Unit!156384)

(assert (=> b!5714518 (= lt!2277129 (mainMatchTheorem!2816 lt!2277132 s!2326))))

(declare-fun b!5714519 () Bool)

(declare-fun res!2412924 () Bool)

(assert (=> b!5714519 (=> res!2412924 e!3514423)))

(assert (=> b!5714519 (= res!2412924 (or ((_ is EmptyExpr!15713) r!7292) ((_ is EmptyLang!15713) r!7292) ((_ is ElementMatch!15713) r!7292) ((_ is Union!15713) r!7292) (not ((_ is Concat!24558) r!7292))))))

(declare-fun b!5714520 () Bool)

(declare-fun Unit!156387 () Unit!156384)

(assert (=> b!5714520 (= e!3514434 Unit!156387)))

(declare-fun b!5714521 () Bool)

(declare-fun e!3514417 () Bool)

(assert (=> b!5714521 (= e!3514417 e!3514436)))

(declare-fun res!2412941 () Bool)

(assert (=> b!5714521 (=> res!2412941 e!3514436)))

(assert (=> b!5714521 (= res!2412941 (not (= lt!2277113 lt!2277092)))))

(declare-fun lt!2277119 () Context!10194)

(declare-fun derivationStepZipperDown!1055 (Regex!15713 Context!10194 C!31696) (InoxSet Context!10194))

(assert (=> b!5714521 (= lt!2277092 (derivationStepZipperDown!1055 (reg!16042 (regOne!31938 r!7292)) lt!2277119 (h!69762 s!2326)))))

(assert (=> b!5714521 (= lt!2277119 (Context!10195 lt!2277109))))

(assert (=> b!5714521 (= lt!2277109 (Cons!63315 lt!2277097 (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5714521 (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5714522 () Bool)

(declare-fun res!2412915 () Bool)

(assert (=> b!5714522 (=> res!2412915 e!3514423)))

(declare-fun generalisedConcat!1328 (List!63439) Regex!15713)

(assert (=> b!5714522 (= res!2412915 (not (= r!7292 (generalisedConcat!1328 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun b!5714523 () Bool)

(declare-fun res!2412946 () Bool)

(assert (=> b!5714523 (=> res!2412946 e!3514418)))

(assert (=> b!5714523 (= res!2412946 (not (= lt!2277100 r!7292)))))

(declare-fun b!5714524 () Bool)

(assert (=> b!5714524 (= e!3514425 (not e!3514423))))

(declare-fun res!2412940 () Bool)

(assert (=> b!5714524 (=> res!2412940 e!3514423)))

(assert (=> b!5714524 (= res!2412940 (not ((_ is Cons!63316) zl!343)))))

(assert (=> b!5714524 (= lt!2277120 lt!2277146)))

(assert (=> b!5714524 (= lt!2277146 (matchRSpec!2816 r!7292 s!2326))))

(assert (=> b!5714524 (= lt!2277120 (matchR!7898 r!7292 s!2326))))

(declare-fun lt!2277114 () Unit!156384)

(assert (=> b!5714524 (= lt!2277114 (mainMatchTheorem!2816 r!7292 s!2326))))

(declare-fun b!5714525 () Bool)

(declare-fun e!3514427 () Bool)

(declare-fun nullable!5745 (Regex!15713) Bool)

(assert (=> b!5714525 (= e!3514427 (nullable!5745 (regOne!31938 (regOne!31938 r!7292))))))

(declare-fun tp!1583408 () Bool)

(declare-fun setNonEmpty!38279 () Bool)

(declare-fun setElem!38279 () Context!10194)

(declare-fun setRes!38279 () Bool)

(assert (=> setNonEmpty!38279 (= setRes!38279 (and tp!1583408 (inv!82529 setElem!38279) e!3514426))))

(declare-fun setRest!38279 () (InoxSet Context!10194))

(assert (=> setNonEmpty!38279 (= z!1189 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) setElem!38279 true) setRest!38279))))

(declare-fun b!5714526 () Bool)

(declare-fun e!3514437 () Bool)

(assert (=> b!5714526 (= e!3514437 e!3514438)))

(declare-fun res!2412921 () Bool)

(assert (=> b!5714526 (=> res!2412921 e!3514438)))

(declare-fun lt!2277128 () List!63440)

(assert (=> b!5714526 (= res!2412921 (not (= (unfocusZipper!1455 lt!2277128) lt!2277138)))))

(assert (=> b!5714526 (= lt!2277128 (Cons!63316 lt!2277119 Nil!63316))))

(declare-fun b!5714527 () Bool)

(declare-fun tp!1583412 () Bool)

(declare-fun tp!1583411 () Bool)

(assert (=> b!5714527 (= e!3514440 (and tp!1583412 tp!1583411))))

(declare-fun b!5714528 () Bool)

(assert (=> b!5714528 (= e!3514439 (matchZipper!1851 lt!2277101 lt!2277105))))

(declare-fun lambda!308687 () Int)

(declare-fun lt!2277090 () Unit!156384)

(declare-fun lt!2277136 () List!63439)

(declare-fun lemmaConcatPreservesForall!288 (List!63439 List!63439 Int) Unit!156384)

(assert (=> b!5714528 (= lt!2277090 (lemmaConcatPreservesForall!288 lt!2277136 lt!2277109 lambda!308687))))

(declare-fun e!3514430 () Bool)

(assert (=> b!5714528 e!3514430))

(declare-fun res!2412918 () Bool)

(assert (=> b!5714528 (=> (not res!2412918) (not e!3514430))))

(assert (=> b!5714528 (= res!2412918 (matchR!7898 lt!2277132 lt!2277105))))

(declare-fun lt!2277133 () Unit!156384)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!268 (Regex!15713 Regex!15713 List!63438 List!63438) Unit!156384)

(assert (=> b!5714528 (= lt!2277133 (lemmaTwoRegexMatchThenConcatMatchesConcatString!268 (reg!16042 (regOne!31938 r!7292)) lt!2277138 (_1!36113 lt!2277144) lt!2277140))))

(declare-fun ++!13909 (List!63439 List!63439) List!63439)

(assert (=> b!5714528 (matchZipper!1851 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) lt!2277105)))

(declare-fun lt!2277106 () Unit!156384)

(assert (=> b!5714528 (= lt!2277106 (lemmaConcatPreservesForall!288 lt!2277136 lt!2277109 lambda!308687))))

(declare-fun lt!2277123 () Unit!156384)

(declare-fun lt!2277124 () Context!10194)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!128 (Context!10194 Context!10194 List!63438 List!63438) Unit!156384)

(assert (=> b!5714528 (= lt!2277123 (lemmaConcatenateContextMatchesConcatOfStrings!128 lt!2277124 lt!2277119 (_1!36113 lt!2277144) lt!2277140))))

(declare-fun lt!2277134 () (InoxSet Context!10194))

(assert (=> b!5714528 (matchZipper!1851 lt!2277134 lt!2277140)))

(declare-fun lt!2277135 () Unit!156384)

(declare-fun theoremZipperRegexEquiv!649 ((InoxSet Context!10194) List!63440 Regex!15713 List!63438) Unit!156384)

(assert (=> b!5714528 (= lt!2277135 (theoremZipperRegexEquiv!649 lt!2277134 lt!2277128 lt!2277138 lt!2277140))))

(declare-fun lt!2277108 () (InoxSet Context!10194))

(assert (=> b!5714528 (matchZipper!1851 lt!2277108 (_1!36113 lt!2277144))))

(declare-fun lt!2277094 () List!63440)

(declare-fun lt!2277091 () Unit!156384)

(assert (=> b!5714528 (= lt!2277091 (theoremZipperRegexEquiv!649 lt!2277108 lt!2277094 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144)))))

(assert (=> b!5714528 (matchR!7898 lt!2277138 lt!2277140)))

(declare-fun lt!2277116 () Unit!156384)

(assert (=> b!5714528 (= lt!2277116 (lemmaTwoRegexMatchThenConcatMatchesConcatString!268 lt!2277097 (regTwo!31938 r!7292) (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(assert (=> b!5714528 (matchR!7898 lt!2277097 lt!2277096)))

(declare-fun lt!2277118 () Unit!156384)

(declare-fun lemmaStarApp!92 (Regex!15713 List!63438 List!63438) Unit!156384)

(assert (=> b!5714528 (= lt!2277118 (lemmaStarApp!92 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))

(declare-fun b!5714529 () Bool)

(declare-fun res!2412926 () Bool)

(assert (=> b!5714529 (=> res!2412926 e!3514417)))

(assert (=> b!5714529 (= res!2412926 (or ((_ is Concat!24558) (regOne!31938 r!7292)) (not ((_ is Star!15713) (regOne!31938 r!7292)))))))

(declare-fun b!5714530 () Bool)

(declare-fun res!2412945 () Bool)

(assert (=> b!5714530 (=> res!2412945 e!3514418)))

(assert (=> b!5714530 (= res!2412945 (not (= (matchZipper!1851 lt!2277101 s!2326) (matchZipper!1851 lt!2277143 (t!376758 s!2326)))))))

(declare-fun b!5714531 () Bool)

(declare-fun tp!1583405 () Bool)

(assert (=> b!5714531 (= e!3514429 tp!1583405)))

(declare-fun res!2412930 () Bool)

(assert (=> start!588364 (=> (not res!2412930) (not e!3514421))))

(declare-fun validRegex!7449 (Regex!15713) Bool)

(assert (=> start!588364 (= res!2412930 (validRegex!7449 r!7292))))

(assert (=> start!588364 e!3514421))

(assert (=> start!588364 e!3514440))

(declare-fun condSetEmpty!38279 () Bool)

(assert (=> start!588364 (= condSetEmpty!38279 (= z!1189 ((as const (Array Context!10194 Bool)) false)))))

(assert (=> start!588364 setRes!38279))

(assert (=> start!588364 e!3514424))

(assert (=> start!588364 e!3514420))

(declare-fun b!5714532 () Bool)

(assert (=> b!5714532 (= e!3514430 lt!2277147)))

(declare-fun b!5714533 () Bool)

(declare-fun tp!1583406 () Bool)

(assert (=> b!5714533 (= e!3514440 tp!1583406)))

(assert (=> b!5714534 (= e!3514433 e!3514417)))

(declare-fun res!2412932 () Bool)

(assert (=> b!5714534 (=> res!2412932 e!3514417)))

(assert (=> b!5714534 (= res!2412932 (or (and ((_ is ElementMatch!15713) (regOne!31938 r!7292)) (= (c!1007275 (regOne!31938 r!7292)) (h!69762 s!2326))) ((_ is Union!15713) (regOne!31938 r!7292))))))

(declare-fun lt!2277121 () Unit!156384)

(assert (=> b!5714534 (= lt!2277121 e!3514434)))

(declare-fun c!1007274 () Bool)

(assert (=> b!5714534 (= c!1007274 (nullable!5745 (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5714534 (= (flatMap!1326 z!1189 lambda!308681) (derivationStepZipperUp!981 (h!69764 zl!343) (h!69762 s!2326)))))

(declare-fun lt!2277142 () Unit!156384)

(assert (=> b!5714534 (= lt!2277142 (lemmaFlatMapOnSingletonSet!858 z!1189 (h!69764 zl!343) lambda!308681))))

(declare-fun lt!2277104 () Context!10194)

(assert (=> b!5714534 (= lt!2277110 (derivationStepZipperUp!981 lt!2277104 (h!69762 s!2326)))))

(assert (=> b!5714534 (= lt!2277113 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (h!69764 zl!343))) lt!2277104 (h!69762 s!2326)))))

(assert (=> b!5714534 (= lt!2277104 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun lt!2277115 () (InoxSet Context!10194))

(assert (=> b!5714534 (= lt!2277115 (derivationStepZipperUp!981 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))) (h!69762 s!2326)))))

(declare-fun b!5714535 () Bool)

(declare-fun e!3514422 () Bool)

(assert (=> b!5714535 (= e!3514419 e!3514422)))

(declare-fun res!2412935 () Bool)

(assert (=> b!5714535 (=> res!2412935 e!3514422)))

(assert (=> b!5714535 (= res!2412935 (not (= (unfocusZipper!1455 (Cons!63316 lt!2277095 Nil!63316)) lt!2277132)))))

(assert (=> b!5714535 (= lt!2277132 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138))))

(declare-fun b!5714536 () Bool)

(assert (=> b!5714536 (= e!3514422 e!3514437)))

(declare-fun res!2412934 () Bool)

(assert (=> b!5714536 (=> res!2412934 e!3514437)))

(assert (=> b!5714536 (= res!2412934 (not (= (unfocusZipper!1455 lt!2277094) (reg!16042 (regOne!31938 r!7292)))))))

(assert (=> b!5714536 (= lt!2277094 (Cons!63316 lt!2277124 Nil!63316))))

(assert (=> b!5714536 (= (flatMap!1326 lt!2277134 lambda!308681) (derivationStepZipperUp!981 lt!2277119 (h!69762 s!2326)))))

(declare-fun lt!2277117 () Unit!156384)

(assert (=> b!5714536 (= lt!2277117 (lemmaFlatMapOnSingletonSet!858 lt!2277134 lt!2277119 lambda!308681))))

(assert (=> b!5714536 (= (flatMap!1326 lt!2277108 lambda!308681) (derivationStepZipperUp!981 lt!2277124 (h!69762 s!2326)))))

(declare-fun lt!2277098 () Unit!156384)

(assert (=> b!5714536 (= lt!2277098 (lemmaFlatMapOnSingletonSet!858 lt!2277108 lt!2277124 lambda!308681))))

(declare-fun lt!2277103 () (InoxSet Context!10194))

(assert (=> b!5714536 (= lt!2277103 (derivationStepZipperUp!981 lt!2277119 (h!69762 s!2326)))))

(declare-fun lt!2277089 () (InoxSet Context!10194))

(assert (=> b!5714536 (= lt!2277089 (derivationStepZipperUp!981 lt!2277124 (h!69762 s!2326)))))

(assert (=> b!5714536 (= lt!2277134 (store ((as const (Array Context!10194 Bool)) false) lt!2277119 true))))

(assert (=> b!5714536 (= lt!2277108 (store ((as const (Array Context!10194 Bool)) false) lt!2277124 true))))

(assert (=> b!5714536 (= lt!2277124 (Context!10195 lt!2277136))))

(assert (=> b!5714536 (= lt!2277136 (Cons!63315 (reg!16042 (regOne!31938 r!7292)) Nil!63315))))

(declare-fun b!5714537 () Bool)

(declare-fun res!2412913 () Bool)

(assert (=> b!5714537 (=> res!2412913 e!3514417)))

(assert (=> b!5714537 (= res!2412913 e!3514427)))

(declare-fun res!2412914 () Bool)

(assert (=> b!5714537 (=> (not res!2412914) (not e!3514427))))

(assert (=> b!5714537 (= res!2412914 ((_ is Concat!24558) (regOne!31938 r!7292)))))

(declare-fun b!5714538 () Bool)

(declare-fun res!2412920 () Bool)

(assert (=> b!5714538 (=> res!2412920 e!3514432)))

(assert (=> b!5714538 (= res!2412920 (not (matchR!7898 (regTwo!31938 r!7292) (_2!36113 lt!2277139))))))

(declare-fun b!5714539 () Bool)

(declare-fun res!2412927 () Bool)

(assert (=> b!5714539 (=> res!2412927 e!3514432)))

(assert (=> b!5714539 (= res!2412927 (not (matchR!7898 lt!2277097 (_1!36113 lt!2277139))))))

(declare-fun b!5714540 () Bool)

(declare-fun res!2412929 () Bool)

(assert (=> b!5714540 (=> res!2412929 e!3514439)))

(assert (=> b!5714540 (= res!2412929 (not (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144))))))

(declare-fun b!5714541 () Bool)

(declare-fun res!2412916 () Bool)

(assert (=> b!5714541 (=> res!2412916 e!3514433)))

(declare-fun isEmpty!35188 (List!63439) Bool)

(assert (=> b!5714541 (= res!2412916 (isEmpty!35188 (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun setIsEmpty!38279 () Bool)

(assert (=> setIsEmpty!38279 setRes!38279))

(assert (= (and start!588364 res!2412930) b!5714511))

(assert (= (and b!5714511 res!2412919) b!5714515))

(assert (= (and b!5714515 res!2412939) b!5714524))

(assert (= (and b!5714524 (not res!2412940)) b!5714513))

(assert (= (and b!5714513 (not res!2412917)) b!5714522))

(assert (= (and b!5714522 (not res!2412915)) b!5714509))

(assert (= (and b!5714509 (not res!2412942)) b!5714501))

(assert (= (and b!5714501 (not res!2412928)) b!5714519))

(assert (= (and b!5714519 (not res!2412924)) b!5714517))

(assert (= (and b!5714517 (not res!2412933)) b!5714541))

(assert (= (and b!5714541 (not res!2412916)) b!5714534))

(assert (= (and b!5714534 c!1007274) b!5714500))

(assert (= (and b!5714534 (not c!1007274)) b!5714520))

(assert (= (and b!5714500 (not res!2412943)) b!5714506))

(assert (= (and b!5714534 (not res!2412932)) b!5714537))

(assert (= (and b!5714537 res!2412914) b!5714525))

(assert (= (and b!5714537 (not res!2412913)) b!5714529))

(assert (= (and b!5714529 (not res!2412926)) b!5714521))

(assert (= (and b!5714521 (not res!2412941)) b!5714508))

(assert (= (and b!5714508 (not res!2412944)) b!5714530))

(assert (= (and b!5714530 (not res!2412945)) b!5714523))

(assert (= (and b!5714523 (not res!2412946)) b!5714497))

(assert (= (and b!5714497 (not res!2412936)) b!5714535))

(assert (= (and b!5714535 (not res!2412935)) b!5714536))

(assert (= (and b!5714536 (not res!2412934)) b!5714526))

(assert (= (and b!5714526 (not res!2412921)) b!5714518))

(assert (= (and b!5714518 res!2412931) b!5714514))

(assert (= (and b!5714518 (not res!2412922)) b!5714504))

(assert (= (and b!5714504 (not res!2412925)) b!5714539))

(assert (= (and b!5714539 (not res!2412927)) b!5714538))

(assert (= (and b!5714538 (not res!2412920)) b!5714510))

(assert (= (and b!5714510 (not res!2412947)) b!5714499))

(assert (= (and b!5714499 (not res!2412938)) b!5714512))

(assert (= (and b!5714512 (not res!2412923)) b!5714540))

(assert (= (and b!5714540 (not res!2412929)) b!5714503))

(assert (= (and b!5714503 (not res!2412937)) b!5714528))

(assert (= (and b!5714528 res!2412918) b!5714532))

(assert (= (and start!588364 ((_ is ElementMatch!15713) r!7292)) b!5714516))

(assert (= (and start!588364 ((_ is Concat!24558) r!7292)) b!5714527))

(assert (= (and start!588364 ((_ is Star!15713) r!7292)) b!5714533))

(assert (= (and start!588364 ((_ is Union!15713) r!7292)) b!5714498))

(assert (= (and start!588364 condSetEmpty!38279) setIsEmpty!38279))

(assert (= (and start!588364 (not condSetEmpty!38279)) setNonEmpty!38279))

(assert (= setNonEmpty!38279 b!5714502))

(assert (= b!5714505 b!5714531))

(assert (= (and start!588364 ((_ is Cons!63316) zl!343)) b!5714505))

(assert (= (and start!588364 ((_ is Cons!63314) s!2326)) b!5714507))

(declare-fun m!6667874 () Bool)

(assert (=> b!5714500 m!6667874))

(declare-fun m!6667876 () Bool)

(assert (=> b!5714500 m!6667876))

(declare-fun m!6667878 () Bool)

(assert (=> b!5714500 m!6667878))

(declare-fun m!6667880 () Bool)

(assert (=> b!5714536 m!6667880))

(declare-fun m!6667882 () Bool)

(assert (=> b!5714536 m!6667882))

(declare-fun m!6667884 () Bool)

(assert (=> b!5714536 m!6667884))

(declare-fun m!6667886 () Bool)

(assert (=> b!5714536 m!6667886))

(declare-fun m!6667888 () Bool)

(assert (=> b!5714536 m!6667888))

(declare-fun m!6667890 () Bool)

(assert (=> b!5714536 m!6667890))

(declare-fun m!6667892 () Bool)

(assert (=> b!5714536 m!6667892))

(declare-fun m!6667894 () Bool)

(assert (=> b!5714536 m!6667894))

(declare-fun m!6667896 () Bool)

(assert (=> b!5714536 m!6667896))

(declare-fun m!6667898 () Bool)

(assert (=> b!5714501 m!6667898))

(assert (=> b!5714501 m!6667898))

(declare-fun m!6667900 () Bool)

(assert (=> b!5714501 m!6667900))

(declare-fun m!6667902 () Bool)

(assert (=> b!5714506 m!6667902))

(declare-fun m!6667904 () Bool)

(assert (=> b!5714535 m!6667904))

(declare-fun m!6667906 () Bool)

(assert (=> setNonEmpty!38279 m!6667906))

(declare-fun m!6667908 () Bool)

(assert (=> b!5714540 m!6667908))

(declare-fun m!6667910 () Bool)

(assert (=> b!5714508 m!6667910))

(declare-fun m!6667912 () Bool)

(assert (=> b!5714508 m!6667912))

(declare-fun m!6667914 () Bool)

(assert (=> b!5714508 m!6667914))

(declare-fun m!6667916 () Bool)

(assert (=> b!5714508 m!6667916))

(declare-fun m!6667918 () Bool)

(assert (=> b!5714508 m!6667918))

(declare-fun m!6667920 () Bool)

(assert (=> b!5714528 m!6667920))

(declare-fun m!6667922 () Bool)

(assert (=> b!5714528 m!6667922))

(assert (=> b!5714528 m!6667920))

(declare-fun m!6667924 () Bool)

(assert (=> b!5714528 m!6667924))

(declare-fun m!6667926 () Bool)

(assert (=> b!5714528 m!6667926))

(declare-fun m!6667928 () Bool)

(assert (=> b!5714528 m!6667928))

(declare-fun m!6667930 () Bool)

(assert (=> b!5714528 m!6667930))

(declare-fun m!6667932 () Bool)

(assert (=> b!5714528 m!6667932))

(declare-fun m!6667934 () Bool)

(assert (=> b!5714528 m!6667934))

(declare-fun m!6667936 () Bool)

(assert (=> b!5714528 m!6667936))

(declare-fun m!6667938 () Bool)

(assert (=> b!5714528 m!6667938))

(declare-fun m!6667940 () Bool)

(assert (=> b!5714528 m!6667940))

(declare-fun m!6667942 () Bool)

(assert (=> b!5714528 m!6667942))

(declare-fun m!6667944 () Bool)

(assert (=> b!5714528 m!6667944))

(declare-fun m!6667946 () Bool)

(assert (=> b!5714528 m!6667946))

(assert (=> b!5714528 m!6667936))

(declare-fun m!6667948 () Bool)

(assert (=> b!5714528 m!6667948))

(declare-fun m!6667950 () Bool)

(assert (=> b!5714528 m!6667950))

(declare-fun m!6667952 () Bool)

(assert (=> b!5714530 m!6667952))

(declare-fun m!6667954 () Bool)

(assert (=> b!5714530 m!6667954))

(declare-fun m!6667956 () Bool)

(assert (=> b!5714524 m!6667956))

(declare-fun m!6667958 () Bool)

(assert (=> b!5714524 m!6667958))

(declare-fun m!6667960 () Bool)

(assert (=> b!5714524 m!6667960))

(declare-fun m!6667962 () Bool)

(assert (=> b!5714512 m!6667962))

(declare-fun m!6667964 () Bool)

(assert (=> b!5714512 m!6667964))

(declare-fun m!6667966 () Bool)

(assert (=> b!5714512 m!6667966))

(declare-fun m!6667968 () Bool)

(assert (=> b!5714512 m!6667968))

(declare-fun m!6667970 () Bool)

(assert (=> b!5714518 m!6667970))

(declare-fun m!6667972 () Bool)

(assert (=> b!5714518 m!6667972))

(declare-fun m!6667974 () Bool)

(assert (=> b!5714518 m!6667974))

(declare-fun m!6667976 () Bool)

(assert (=> b!5714511 m!6667976))

(declare-fun m!6667978 () Bool)

(assert (=> b!5714517 m!6667978))

(declare-fun m!6667980 () Bool)

(assert (=> b!5714517 m!6667980))

(declare-fun m!6667982 () Bool)

(assert (=> b!5714517 m!6667982))

(declare-fun m!6667984 () Bool)

(assert (=> b!5714517 m!6667984))

(assert (=> b!5714517 m!6667984))

(declare-fun m!6667986 () Bool)

(assert (=> b!5714517 m!6667986))

(assert (=> b!5714517 m!6667980))

(declare-fun m!6667988 () Bool)

(assert (=> b!5714517 m!6667988))

(declare-fun m!6667990 () Bool)

(assert (=> b!5714541 m!6667990))

(declare-fun m!6667992 () Bool)

(assert (=> b!5714510 m!6667992))

(declare-fun m!6667994 () Bool)

(assert (=> b!5714521 m!6667994))

(declare-fun m!6667996 () Bool)

(assert (=> b!5714515 m!6667996))

(declare-fun m!6667998 () Bool)

(assert (=> b!5714538 m!6667998))

(declare-fun m!6668000 () Bool)

(assert (=> b!5714505 m!6668000))

(declare-fun m!6668002 () Bool)

(assert (=> b!5714526 m!6668002))

(declare-fun m!6668004 () Bool)

(assert (=> b!5714525 m!6668004))

(declare-fun m!6668006 () Bool)

(assert (=> b!5714534 m!6668006))

(declare-fun m!6668008 () Bool)

(assert (=> b!5714534 m!6668008))

(declare-fun m!6668010 () Bool)

(assert (=> b!5714534 m!6668010))

(declare-fun m!6668012 () Bool)

(assert (=> b!5714534 m!6668012))

(declare-fun m!6668014 () Bool)

(assert (=> b!5714534 m!6668014))

(declare-fun m!6668016 () Bool)

(assert (=> b!5714534 m!6668016))

(declare-fun m!6668018 () Bool)

(assert (=> b!5714534 m!6668018))

(declare-fun m!6668020 () Bool)

(assert (=> b!5714513 m!6668020))

(declare-fun m!6668022 () Bool)

(assert (=> b!5714504 m!6668022))

(declare-fun m!6668024 () Bool)

(assert (=> b!5714504 m!6668024))

(declare-fun m!6668026 () Bool)

(assert (=> b!5714504 m!6668026))

(declare-fun m!6668028 () Bool)

(assert (=> b!5714504 m!6668028))

(assert (=> b!5714504 m!6668022))

(declare-fun m!6668030 () Bool)

(assert (=> b!5714504 m!6668030))

(declare-fun m!6668032 () Bool)

(assert (=> b!5714504 m!6668032))

(declare-fun m!6668034 () Bool)

(assert (=> b!5714504 m!6668034))

(declare-fun m!6668036 () Bool)

(assert (=> b!5714504 m!6668036))

(declare-fun m!6668038 () Bool)

(assert (=> b!5714503 m!6668038))

(declare-fun m!6668040 () Bool)

(assert (=> b!5714522 m!6668040))

(declare-fun m!6668042 () Bool)

(assert (=> b!5714539 m!6668042))

(declare-fun m!6668044 () Bool)

(assert (=> start!588364 m!6668044))

(declare-fun m!6668046 () Bool)

(assert (=> b!5714499 m!6668046))

(declare-fun m!6668048 () Bool)

(assert (=> b!5714499 m!6668048))

(declare-fun m!6668050 () Bool)

(assert (=> b!5714499 m!6668050))

(declare-fun m!6668052 () Bool)

(assert (=> b!5714499 m!6668052))

(assert (=> b!5714499 m!6668050))

(declare-fun m!6668054 () Bool)

(assert (=> b!5714499 m!6668054))

(declare-fun m!6668056 () Bool)

(assert (=> b!5714499 m!6668056))

(declare-fun m!6668058 () Bool)

(assert (=> b!5714499 m!6668058))

(declare-fun m!6668060 () Bool)

(assert (=> b!5714499 m!6668060))

(declare-fun m!6668062 () Bool)

(assert (=> b!5714499 m!6668062))

(declare-fun m!6668064 () Bool)

(assert (=> b!5714499 m!6668064))

(declare-fun m!6668066 () Bool)

(assert (=> b!5714499 m!6668066))

(declare-fun m!6668068 () Bool)

(assert (=> b!5714499 m!6668068))

(assert (=> b!5714499 m!6668050))

(check-sat (not b!5714522) (not b!5714540) tp_is_empty!40679 (not b!5714528) (not b!5714498) (not b!5714534) (not b!5714511) (not b!5714517) (not b!5714503) (not b!5714541) (not b!5714535) (not b!5714536) (not b!5714504) (not b!5714512) (not b!5714510) (not b!5714501) (not start!588364) (not b!5714527) (not b!5714539) (not b!5714508) (not b!5714500) (not b!5714513) (not b!5714531) (not b!5714526) (not b!5714524) (not b!5714525) (not b!5714515) (not b!5714533) (not b!5714505) (not b!5714530) (not b!5714521) (not b!5714538) (not b!5714499) (not b!5714518) (not setNonEmpty!38279) (not b!5714507) (not b!5714502) (not b!5714506))
(check-sat)
(get-model)

(declare-fun b!5714648 () Bool)

(declare-fun res!2413003 () Bool)

(declare-fun e!3514496 () Bool)

(assert (=> b!5714648 (=> (not res!2413003) (not e!3514496))))

(declare-fun tail!11200 (List!63438) List!63438)

(assert (=> b!5714648 (= res!2413003 (isEmpty!35186 (tail!11200 (_1!36113 lt!2277139))))))

(declare-fun b!5714649 () Bool)

(declare-fun res!2413006 () Bool)

(assert (=> b!5714649 (=> (not res!2413006) (not e!3514496))))

(declare-fun call!436166 () Bool)

(assert (=> b!5714649 (= res!2413006 (not call!436166))))

(declare-fun b!5714650 () Bool)

(declare-fun res!2413008 () Bool)

(declare-fun e!3514493 () Bool)

(assert (=> b!5714650 (=> res!2413008 e!3514493)))

(assert (=> b!5714650 (= res!2413008 e!3514496)))

(declare-fun res!2413007 () Bool)

(assert (=> b!5714650 (=> (not res!2413007) (not e!3514496))))

(declare-fun lt!2277172 () Bool)

(assert (=> b!5714650 (= res!2413007 lt!2277172)))

(declare-fun d!1802356 () Bool)

(declare-fun e!3514495 () Bool)

(assert (=> d!1802356 e!3514495))

(declare-fun c!1007301 () Bool)

(assert (=> d!1802356 (= c!1007301 ((_ is EmptyExpr!15713) lt!2277097))))

(declare-fun e!3514494 () Bool)

(assert (=> d!1802356 (= lt!2277172 e!3514494)))

(declare-fun c!1007300 () Bool)

(assert (=> d!1802356 (= c!1007300 (isEmpty!35186 (_1!36113 lt!2277139)))))

(assert (=> d!1802356 (validRegex!7449 lt!2277097)))

(assert (=> d!1802356 (= (matchR!7898 lt!2277097 (_1!36113 lt!2277139)) lt!2277172)))

(declare-fun b!5714651 () Bool)

(declare-fun e!3514497 () Bool)

(declare-fun e!3514492 () Bool)

(assert (=> b!5714651 (= e!3514497 e!3514492)))

(declare-fun res!2413009 () Bool)

(assert (=> b!5714651 (=> res!2413009 e!3514492)))

(assert (=> b!5714651 (= res!2413009 call!436166)))

(declare-fun b!5714652 () Bool)

(assert (=> b!5714652 (= e!3514494 (nullable!5745 lt!2277097))))

(declare-fun b!5714653 () Bool)

(declare-fun res!2413005 () Bool)

(assert (=> b!5714653 (=> res!2413005 e!3514493)))

(assert (=> b!5714653 (= res!2413005 (not ((_ is ElementMatch!15713) lt!2277097)))))

(declare-fun e!3514491 () Bool)

(assert (=> b!5714653 (= e!3514491 e!3514493)))

(declare-fun b!5714654 () Bool)

(declare-fun derivativeStep!4516 (Regex!15713 C!31696) Regex!15713)

(declare-fun head!12105 (List!63438) C!31696)

(assert (=> b!5714654 (= e!3514494 (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139))) (tail!11200 (_1!36113 lt!2277139))))))

(declare-fun b!5714655 () Bool)

(declare-fun res!2413002 () Bool)

(assert (=> b!5714655 (=> res!2413002 e!3514492)))

(assert (=> b!5714655 (= res!2413002 (not (isEmpty!35186 (tail!11200 (_1!36113 lt!2277139)))))))

(declare-fun bm!436161 () Bool)

(assert (=> bm!436161 (= call!436166 (isEmpty!35186 (_1!36113 lt!2277139)))))

(declare-fun b!5714656 () Bool)

(assert (=> b!5714656 (= e!3514495 e!3514491)))

(declare-fun c!1007299 () Bool)

(assert (=> b!5714656 (= c!1007299 ((_ is EmptyLang!15713) lt!2277097))))

(declare-fun b!5714657 () Bool)

(assert (=> b!5714657 (= e!3514493 e!3514497)))

(declare-fun res!2413004 () Bool)

(assert (=> b!5714657 (=> (not res!2413004) (not e!3514497))))

(assert (=> b!5714657 (= res!2413004 (not lt!2277172))))

(declare-fun b!5714658 () Bool)

(assert (=> b!5714658 (= e!3514491 (not lt!2277172))))

(declare-fun b!5714659 () Bool)

(assert (=> b!5714659 (= e!3514496 (= (head!12105 (_1!36113 lt!2277139)) (c!1007275 lt!2277097)))))

(declare-fun b!5714660 () Bool)

(assert (=> b!5714660 (= e!3514495 (= lt!2277172 call!436166))))

(declare-fun b!5714661 () Bool)

(assert (=> b!5714661 (= e!3514492 (not (= (head!12105 (_1!36113 lt!2277139)) (c!1007275 lt!2277097))))))

(assert (= (and d!1802356 c!1007300) b!5714652))

(assert (= (and d!1802356 (not c!1007300)) b!5714654))

(assert (= (and d!1802356 c!1007301) b!5714660))

(assert (= (and d!1802356 (not c!1007301)) b!5714656))

(assert (= (and b!5714656 c!1007299) b!5714658))

(assert (= (and b!5714656 (not c!1007299)) b!5714653))

(assert (= (and b!5714653 (not res!2413005)) b!5714650))

(assert (= (and b!5714650 res!2413007) b!5714649))

(assert (= (and b!5714649 res!2413006) b!5714648))

(assert (= (and b!5714648 res!2413003) b!5714659))

(assert (= (and b!5714650 (not res!2413008)) b!5714657))

(assert (= (and b!5714657 res!2413004) b!5714651))

(assert (= (and b!5714651 (not res!2413009)) b!5714655))

(assert (= (and b!5714655 (not res!2413002)) b!5714661))

(assert (= (or b!5714660 b!5714649 b!5714651) bm!436161))

(declare-fun m!6668138 () Bool)

(assert (=> b!5714652 m!6668138))

(assert (=> d!1802356 m!6667992))

(declare-fun m!6668140 () Bool)

(assert (=> d!1802356 m!6668140))

(declare-fun m!6668142 () Bool)

(assert (=> b!5714661 m!6668142))

(assert (=> b!5714654 m!6668142))

(assert (=> b!5714654 m!6668142))

(declare-fun m!6668144 () Bool)

(assert (=> b!5714654 m!6668144))

(declare-fun m!6668146 () Bool)

(assert (=> b!5714654 m!6668146))

(assert (=> b!5714654 m!6668144))

(assert (=> b!5714654 m!6668146))

(declare-fun m!6668148 () Bool)

(assert (=> b!5714654 m!6668148))

(assert (=> b!5714648 m!6668146))

(assert (=> b!5714648 m!6668146))

(declare-fun m!6668150 () Bool)

(assert (=> b!5714648 m!6668150))

(assert (=> b!5714655 m!6668146))

(assert (=> b!5714655 m!6668146))

(assert (=> b!5714655 m!6668150))

(assert (=> b!5714659 m!6668142))

(assert (=> bm!436161 m!6667992))

(assert (=> b!5714539 d!1802356))

(declare-fun bs!1334870 () Bool)

(declare-fun b!5714753 () Bool)

(assert (= bs!1334870 (and b!5714753 b!5714499)))

(declare-fun lambda!308716 () Int)

(assert (=> bs!1334870 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 lt!2277132) (reg!16042 (regOne!31938 r!7292))) (= lt!2277132 lt!2277097)) (= lambda!308716 lambda!308685))))

(declare-fun bs!1334871 () Bool)

(assert (= bs!1334871 (and b!5714753 b!5714504)))

(assert (=> bs!1334871 (not (= lambda!308716 lambda!308683))))

(assert (=> bs!1334870 (not (= lambda!308716 lambda!308686))))

(declare-fun bs!1334872 () Bool)

(assert (= bs!1334872 (and b!5714753 b!5714517)))

(assert (=> bs!1334872 (not (= lambda!308716 lambda!308680))))

(assert (=> bs!1334870 (not (= lambda!308716 lambda!308684))))

(assert (=> bs!1334872 (not (= lambda!308716 lambda!308679))))

(assert (=> bs!1334871 (not (= lambda!308716 lambda!308682))))

(assert (=> b!5714753 true))

(assert (=> b!5714753 true))

(declare-fun bs!1334873 () Bool)

(declare-fun b!5714749 () Bool)

(assert (= bs!1334873 (and b!5714749 b!5714753)))

(declare-fun lambda!308717 () Int)

(assert (=> bs!1334873 (not (= lambda!308717 lambda!308716))))

(declare-fun bs!1334874 () Bool)

(assert (= bs!1334874 (and b!5714749 b!5714499)))

(assert (=> bs!1334874 (not (= lambda!308717 lambda!308685))))

(declare-fun bs!1334875 () Bool)

(assert (= bs!1334875 (and b!5714749 b!5714504)))

(assert (=> bs!1334875 (= (and (= (regOne!31938 lt!2277132) lt!2277097) (= (regTwo!31938 lt!2277132) (regTwo!31938 r!7292))) (= lambda!308717 lambda!308683))))

(assert (=> bs!1334874 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 lt!2277132) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 lt!2277132) lt!2277097)) (= lambda!308717 lambda!308686))))

(declare-fun bs!1334876 () Bool)

(assert (= bs!1334876 (and b!5714749 b!5714517)))

(assert (=> bs!1334876 (= (and (= (regOne!31938 lt!2277132) (regOne!31938 r!7292)) (= (regTwo!31938 lt!2277132) (regTwo!31938 r!7292))) (= lambda!308717 lambda!308680))))

(assert (=> bs!1334874 (not (= lambda!308717 lambda!308684))))

(assert (=> bs!1334876 (not (= lambda!308717 lambda!308679))))

(assert (=> bs!1334875 (not (= lambda!308717 lambda!308682))))

(assert (=> b!5714749 true))

(assert (=> b!5714749 true))

(declare-fun d!1802364 () Bool)

(declare-fun c!1007324 () Bool)

(assert (=> d!1802364 (= c!1007324 ((_ is EmptyExpr!15713) lt!2277132))))

(declare-fun e!3514554 () Bool)

(assert (=> d!1802364 (= (matchRSpec!2816 lt!2277132 s!2326) e!3514554)))

(declare-fun b!5714748 () Bool)

(declare-fun res!2413056 () Bool)

(declare-fun e!3514548 () Bool)

(assert (=> b!5714748 (=> res!2413056 e!3514548)))

(declare-fun call!436177 () Bool)

(assert (=> b!5714748 (= res!2413056 call!436177)))

(declare-fun e!3514553 () Bool)

(assert (=> b!5714748 (= e!3514553 e!3514548)))

(declare-fun call!436178 () Bool)

(assert (=> b!5714749 (= e!3514553 call!436178)))

(declare-fun b!5714750 () Bool)

(declare-fun c!1007322 () Bool)

(assert (=> b!5714750 (= c!1007322 ((_ is ElementMatch!15713) lt!2277132))))

(declare-fun e!3514552 () Bool)

(declare-fun e!3514549 () Bool)

(assert (=> b!5714750 (= e!3514552 e!3514549)))

(declare-fun b!5714751 () Bool)

(assert (=> b!5714751 (= e!3514549 (= s!2326 (Cons!63314 (c!1007275 lt!2277132) Nil!63314)))))

(declare-fun b!5714752 () Bool)

(assert (=> b!5714752 (= e!3514554 e!3514552)))

(declare-fun res!2413057 () Bool)

(assert (=> b!5714752 (= res!2413057 (not ((_ is EmptyLang!15713) lt!2277132)))))

(assert (=> b!5714752 (=> (not res!2413057) (not e!3514552))))

(declare-fun bm!436172 () Bool)

(assert (=> bm!436172 (= call!436177 (isEmpty!35186 s!2326))))

(assert (=> b!5714753 (= e!3514548 call!436178)))

(declare-fun b!5714754 () Bool)

(assert (=> b!5714754 (= e!3514554 call!436177)))

(declare-fun b!5714755 () Bool)

(declare-fun e!3514551 () Bool)

(assert (=> b!5714755 (= e!3514551 (matchRSpec!2816 (regTwo!31939 lt!2277132) s!2326))))

(declare-fun b!5714756 () Bool)

(declare-fun c!1007323 () Bool)

(assert (=> b!5714756 (= c!1007323 ((_ is Union!15713) lt!2277132))))

(declare-fun e!3514550 () Bool)

(assert (=> b!5714756 (= e!3514549 e!3514550)))

(declare-fun b!5714757 () Bool)

(assert (=> b!5714757 (= e!3514550 e!3514553)))

(declare-fun c!1007325 () Bool)

(assert (=> b!5714757 (= c!1007325 ((_ is Star!15713) lt!2277132))))

(declare-fun b!5714758 () Bool)

(assert (=> b!5714758 (= e!3514550 e!3514551)))

(declare-fun res!2413058 () Bool)

(assert (=> b!5714758 (= res!2413058 (matchRSpec!2816 (regOne!31939 lt!2277132) s!2326))))

(assert (=> b!5714758 (=> res!2413058 e!3514551)))

(declare-fun bm!436173 () Bool)

(assert (=> bm!436173 (= call!436178 (Exists!2813 (ite c!1007325 lambda!308716 lambda!308717)))))

(assert (= (and d!1802364 c!1007324) b!5714754))

(assert (= (and d!1802364 (not c!1007324)) b!5714752))

(assert (= (and b!5714752 res!2413057) b!5714750))

(assert (= (and b!5714750 c!1007322) b!5714751))

(assert (= (and b!5714750 (not c!1007322)) b!5714756))

(assert (= (and b!5714756 c!1007323) b!5714758))

(assert (= (and b!5714756 (not c!1007323)) b!5714757))

(assert (= (and b!5714758 (not res!2413058)) b!5714755))

(assert (= (and b!5714757 c!1007325) b!5714748))

(assert (= (and b!5714757 (not c!1007325)) b!5714749))

(assert (= (and b!5714748 (not res!2413056)) b!5714753))

(assert (= (or b!5714753 b!5714749) bm!436173))

(assert (= (or b!5714754 b!5714748) bm!436172))

(declare-fun m!6668190 () Bool)

(assert (=> bm!436172 m!6668190))

(declare-fun m!6668192 () Bool)

(assert (=> b!5714755 m!6668192))

(declare-fun m!6668194 () Bool)

(assert (=> b!5714758 m!6668194))

(declare-fun m!6668196 () Bool)

(assert (=> bm!436173 m!6668196))

(assert (=> b!5714518 d!1802364))

(declare-fun b!5714795 () Bool)

(declare-fun res!2413076 () Bool)

(declare-fun e!3514578 () Bool)

(assert (=> b!5714795 (=> (not res!2413076) (not e!3514578))))

(assert (=> b!5714795 (= res!2413076 (isEmpty!35186 (tail!11200 s!2326)))))

(declare-fun b!5714796 () Bool)

(declare-fun res!2413079 () Bool)

(assert (=> b!5714796 (=> (not res!2413079) (not e!3514578))))

(declare-fun call!436181 () Bool)

(assert (=> b!5714796 (= res!2413079 (not call!436181))))

(declare-fun b!5714797 () Bool)

(declare-fun res!2413081 () Bool)

(declare-fun e!3514575 () Bool)

(assert (=> b!5714797 (=> res!2413081 e!3514575)))

(assert (=> b!5714797 (= res!2413081 e!3514578)))

(declare-fun res!2413080 () Bool)

(assert (=> b!5714797 (=> (not res!2413080) (not e!3514578))))

(declare-fun lt!2277184 () Bool)

(assert (=> b!5714797 (= res!2413080 lt!2277184)))

(declare-fun d!1802380 () Bool)

(declare-fun e!3514577 () Bool)

(assert (=> d!1802380 e!3514577))

(declare-fun c!1007338 () Bool)

(assert (=> d!1802380 (= c!1007338 ((_ is EmptyExpr!15713) lt!2277132))))

(declare-fun e!3514576 () Bool)

(assert (=> d!1802380 (= lt!2277184 e!3514576)))

(declare-fun c!1007337 () Bool)

(assert (=> d!1802380 (= c!1007337 (isEmpty!35186 s!2326))))

(assert (=> d!1802380 (validRegex!7449 lt!2277132)))

(assert (=> d!1802380 (= (matchR!7898 lt!2277132 s!2326) lt!2277184)))

(declare-fun b!5714798 () Bool)

(declare-fun e!3514579 () Bool)

(declare-fun e!3514574 () Bool)

(assert (=> b!5714798 (= e!3514579 e!3514574)))

(declare-fun res!2413082 () Bool)

(assert (=> b!5714798 (=> res!2413082 e!3514574)))

(assert (=> b!5714798 (= res!2413082 call!436181)))

(declare-fun b!5714799 () Bool)

(assert (=> b!5714799 (= e!3514576 (nullable!5745 lt!2277132))))

(declare-fun b!5714800 () Bool)

(declare-fun res!2413078 () Bool)

(assert (=> b!5714800 (=> res!2413078 e!3514575)))

(assert (=> b!5714800 (= res!2413078 (not ((_ is ElementMatch!15713) lt!2277132)))))

(declare-fun e!3514573 () Bool)

(assert (=> b!5714800 (= e!3514573 e!3514575)))

(declare-fun b!5714801 () Bool)

(assert (=> b!5714801 (= e!3514576 (matchR!7898 (derivativeStep!4516 lt!2277132 (head!12105 s!2326)) (tail!11200 s!2326)))))

(declare-fun b!5714802 () Bool)

(declare-fun res!2413075 () Bool)

(assert (=> b!5714802 (=> res!2413075 e!3514574)))

(assert (=> b!5714802 (= res!2413075 (not (isEmpty!35186 (tail!11200 s!2326))))))

(declare-fun bm!436176 () Bool)

(assert (=> bm!436176 (= call!436181 (isEmpty!35186 s!2326))))

(declare-fun b!5714803 () Bool)

(assert (=> b!5714803 (= e!3514577 e!3514573)))

(declare-fun c!1007336 () Bool)

(assert (=> b!5714803 (= c!1007336 ((_ is EmptyLang!15713) lt!2277132))))

(declare-fun b!5714804 () Bool)

(assert (=> b!5714804 (= e!3514575 e!3514579)))

(declare-fun res!2413077 () Bool)

(assert (=> b!5714804 (=> (not res!2413077) (not e!3514579))))

(assert (=> b!5714804 (= res!2413077 (not lt!2277184))))

(declare-fun b!5714805 () Bool)

(assert (=> b!5714805 (= e!3514573 (not lt!2277184))))

(declare-fun b!5714806 () Bool)

(assert (=> b!5714806 (= e!3514578 (= (head!12105 s!2326) (c!1007275 lt!2277132)))))

(declare-fun b!5714807 () Bool)

(assert (=> b!5714807 (= e!3514577 (= lt!2277184 call!436181))))

(declare-fun b!5714808 () Bool)

(assert (=> b!5714808 (= e!3514574 (not (= (head!12105 s!2326) (c!1007275 lt!2277132))))))

(assert (= (and d!1802380 c!1007337) b!5714799))

(assert (= (and d!1802380 (not c!1007337)) b!5714801))

(assert (= (and d!1802380 c!1007338) b!5714807))

(assert (= (and d!1802380 (not c!1007338)) b!5714803))

(assert (= (and b!5714803 c!1007336) b!5714805))

(assert (= (and b!5714803 (not c!1007336)) b!5714800))

(assert (= (and b!5714800 (not res!2413078)) b!5714797))

(assert (= (and b!5714797 res!2413080) b!5714796))

(assert (= (and b!5714796 res!2413079) b!5714795))

(assert (= (and b!5714795 res!2413076) b!5714806))

(assert (= (and b!5714797 (not res!2413081)) b!5714804))

(assert (= (and b!5714804 res!2413077) b!5714798))

(assert (= (and b!5714798 (not res!2413082)) b!5714802))

(assert (= (and b!5714802 (not res!2413075)) b!5714808))

(assert (= (or b!5714807 b!5714796 b!5714798) bm!436176))

(declare-fun m!6668198 () Bool)

(assert (=> b!5714799 m!6668198))

(assert (=> d!1802380 m!6668190))

(declare-fun m!6668200 () Bool)

(assert (=> d!1802380 m!6668200))

(declare-fun m!6668202 () Bool)

(assert (=> b!5714808 m!6668202))

(assert (=> b!5714801 m!6668202))

(assert (=> b!5714801 m!6668202))

(declare-fun m!6668204 () Bool)

(assert (=> b!5714801 m!6668204))

(declare-fun m!6668206 () Bool)

(assert (=> b!5714801 m!6668206))

(assert (=> b!5714801 m!6668204))

(assert (=> b!5714801 m!6668206))

(declare-fun m!6668208 () Bool)

(assert (=> b!5714801 m!6668208))

(assert (=> b!5714795 m!6668206))

(assert (=> b!5714795 m!6668206))

(declare-fun m!6668210 () Bool)

(assert (=> b!5714795 m!6668210))

(assert (=> b!5714802 m!6668206))

(assert (=> b!5714802 m!6668206))

(assert (=> b!5714802 m!6668210))

(assert (=> b!5714806 m!6668202))

(assert (=> bm!436176 m!6668190))

(assert (=> b!5714518 d!1802380))

(declare-fun d!1802382 () Bool)

(assert (=> d!1802382 (= (matchR!7898 lt!2277132 s!2326) (matchRSpec!2816 lt!2277132 s!2326))))

(declare-fun lt!2277194 () Unit!156384)

(declare-fun choose!43213 (Regex!15713 List!63438) Unit!156384)

(assert (=> d!1802382 (= lt!2277194 (choose!43213 lt!2277132 s!2326))))

(assert (=> d!1802382 (validRegex!7449 lt!2277132)))

(assert (=> d!1802382 (= (mainMatchTheorem!2816 lt!2277132 s!2326) lt!2277194)))

(declare-fun bs!1334878 () Bool)

(assert (= bs!1334878 d!1802382))

(assert (=> bs!1334878 m!6667972))

(assert (=> bs!1334878 m!6667970))

(declare-fun m!6668264 () Bool)

(assert (=> bs!1334878 m!6668264))

(assert (=> bs!1334878 m!6668200))

(assert (=> b!5714518 d!1802382))

(declare-fun b!5714835 () Bool)

(declare-fun res!2413098 () Bool)

(declare-fun e!3514598 () Bool)

(assert (=> b!5714835 (=> (not res!2413098) (not e!3514598))))

(assert (=> b!5714835 (= res!2413098 (isEmpty!35186 (tail!11200 (_2!36113 lt!2277139))))))

(declare-fun b!5714836 () Bool)

(declare-fun res!2413101 () Bool)

(assert (=> b!5714836 (=> (not res!2413101) (not e!3514598))))

(declare-fun call!436183 () Bool)

(assert (=> b!5714836 (= res!2413101 (not call!436183))))

(declare-fun b!5714837 () Bool)

(declare-fun res!2413103 () Bool)

(declare-fun e!3514595 () Bool)

(assert (=> b!5714837 (=> res!2413103 e!3514595)))

(assert (=> b!5714837 (= res!2413103 e!3514598)))

(declare-fun res!2413102 () Bool)

(assert (=> b!5714837 (=> (not res!2413102) (not e!3514598))))

(declare-fun lt!2277195 () Bool)

(assert (=> b!5714837 (= res!2413102 lt!2277195)))

(declare-fun d!1802394 () Bool)

(declare-fun e!3514597 () Bool)

(assert (=> d!1802394 e!3514597))

(declare-fun c!1007347 () Bool)

(assert (=> d!1802394 (= c!1007347 ((_ is EmptyExpr!15713) (regTwo!31938 r!7292)))))

(declare-fun e!3514596 () Bool)

(assert (=> d!1802394 (= lt!2277195 e!3514596)))

(declare-fun c!1007346 () Bool)

(assert (=> d!1802394 (= c!1007346 (isEmpty!35186 (_2!36113 lt!2277139)))))

(assert (=> d!1802394 (validRegex!7449 (regTwo!31938 r!7292))))

(assert (=> d!1802394 (= (matchR!7898 (regTwo!31938 r!7292) (_2!36113 lt!2277139)) lt!2277195)))

(declare-fun b!5714838 () Bool)

(declare-fun e!3514599 () Bool)

(declare-fun e!3514594 () Bool)

(assert (=> b!5714838 (= e!3514599 e!3514594)))

(declare-fun res!2413104 () Bool)

(assert (=> b!5714838 (=> res!2413104 e!3514594)))

(assert (=> b!5714838 (= res!2413104 call!436183)))

(declare-fun b!5714839 () Bool)

(assert (=> b!5714839 (= e!3514596 (nullable!5745 (regTwo!31938 r!7292)))))

(declare-fun b!5714840 () Bool)

(declare-fun res!2413100 () Bool)

(assert (=> b!5714840 (=> res!2413100 e!3514595)))

(assert (=> b!5714840 (= res!2413100 (not ((_ is ElementMatch!15713) (regTwo!31938 r!7292))))))

(declare-fun e!3514593 () Bool)

(assert (=> b!5714840 (= e!3514593 e!3514595)))

(declare-fun b!5714841 () Bool)

(assert (=> b!5714841 (= e!3514596 (matchR!7898 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139))) (tail!11200 (_2!36113 lt!2277139))))))

(declare-fun b!5714842 () Bool)

(declare-fun res!2413097 () Bool)

(assert (=> b!5714842 (=> res!2413097 e!3514594)))

(assert (=> b!5714842 (= res!2413097 (not (isEmpty!35186 (tail!11200 (_2!36113 lt!2277139)))))))

(declare-fun bm!436178 () Bool)

(assert (=> bm!436178 (= call!436183 (isEmpty!35186 (_2!36113 lt!2277139)))))

(declare-fun b!5714843 () Bool)

(assert (=> b!5714843 (= e!3514597 e!3514593)))

(declare-fun c!1007345 () Bool)

(assert (=> b!5714843 (= c!1007345 ((_ is EmptyLang!15713) (regTwo!31938 r!7292)))))

(declare-fun b!5714844 () Bool)

(assert (=> b!5714844 (= e!3514595 e!3514599)))

(declare-fun res!2413099 () Bool)

(assert (=> b!5714844 (=> (not res!2413099) (not e!3514599))))

(assert (=> b!5714844 (= res!2413099 (not lt!2277195))))

(declare-fun b!5714845 () Bool)

(assert (=> b!5714845 (= e!3514593 (not lt!2277195))))

(declare-fun b!5714846 () Bool)

(assert (=> b!5714846 (= e!3514598 (= (head!12105 (_2!36113 lt!2277139)) (c!1007275 (regTwo!31938 r!7292))))))

(declare-fun b!5714847 () Bool)

(assert (=> b!5714847 (= e!3514597 (= lt!2277195 call!436183))))

(declare-fun b!5714848 () Bool)

(assert (=> b!5714848 (= e!3514594 (not (= (head!12105 (_2!36113 lt!2277139)) (c!1007275 (regTwo!31938 r!7292)))))))

(assert (= (and d!1802394 c!1007346) b!5714839))

(assert (= (and d!1802394 (not c!1007346)) b!5714841))

(assert (= (and d!1802394 c!1007347) b!5714847))

(assert (= (and d!1802394 (not c!1007347)) b!5714843))

(assert (= (and b!5714843 c!1007345) b!5714845))

(assert (= (and b!5714843 (not c!1007345)) b!5714840))

(assert (= (and b!5714840 (not res!2413100)) b!5714837))

(assert (= (and b!5714837 res!2413102) b!5714836))

(assert (= (and b!5714836 res!2413101) b!5714835))

(assert (= (and b!5714835 res!2413098) b!5714846))

(assert (= (and b!5714837 (not res!2413103)) b!5714844))

(assert (= (and b!5714844 res!2413099) b!5714838))

(assert (= (and b!5714838 (not res!2413104)) b!5714842))

(assert (= (and b!5714842 (not res!2413097)) b!5714848))

(assert (= (or b!5714847 b!5714836 b!5714838) bm!436178))

(declare-fun m!6668278 () Bool)

(assert (=> b!5714839 m!6668278))

(declare-fun m!6668282 () Bool)

(assert (=> d!1802394 m!6668282))

(declare-fun m!6668284 () Bool)

(assert (=> d!1802394 m!6668284))

(declare-fun m!6668288 () Bool)

(assert (=> b!5714848 m!6668288))

(assert (=> b!5714841 m!6668288))

(assert (=> b!5714841 m!6668288))

(declare-fun m!6668292 () Bool)

(assert (=> b!5714841 m!6668292))

(declare-fun m!6668294 () Bool)

(assert (=> b!5714841 m!6668294))

(assert (=> b!5714841 m!6668292))

(assert (=> b!5714841 m!6668294))

(declare-fun m!6668296 () Bool)

(assert (=> b!5714841 m!6668296))

(assert (=> b!5714835 m!6668294))

(assert (=> b!5714835 m!6668294))

(declare-fun m!6668298 () Bool)

(assert (=> b!5714835 m!6668298))

(assert (=> b!5714842 m!6668294))

(assert (=> b!5714842 m!6668294))

(assert (=> b!5714842 m!6668298))

(assert (=> b!5714846 m!6668288))

(assert (=> bm!436178 m!6668282))

(assert (=> b!5714538 d!1802394))

(declare-fun d!1802400 () Bool)

(declare-fun e!3514654 () Bool)

(assert (=> d!1802400 e!3514654))

(declare-fun res!2413157 () Bool)

(assert (=> d!1802400 (=> res!2413157 e!3514654)))

(declare-fun e!3514650 () Bool)

(assert (=> d!1802400 (= res!2413157 e!3514650)))

(declare-fun res!2413160 () Bool)

(assert (=> d!1802400 (=> (not res!2413160) (not e!3514650))))

(declare-fun lt!2277227 () Option!15722)

(assert (=> d!1802400 (= res!2413160 (isDefined!12425 lt!2277227))))

(declare-fun e!3514652 () Option!15722)

(assert (=> d!1802400 (= lt!2277227 e!3514652)))

(declare-fun c!1007370 () Bool)

(declare-fun e!3514651 () Bool)

(assert (=> d!1802400 (= c!1007370 e!3514651)))

(declare-fun res!2413158 () Bool)

(assert (=> d!1802400 (=> (not res!2413158) (not e!3514651))))

(assert (=> d!1802400 (= res!2413158 (matchR!7898 (regOne!31938 r!7292) Nil!63314))))

(assert (=> d!1802400 (validRegex!7449 (regOne!31938 r!7292))))

(assert (=> d!1802400 (= (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326) lt!2277227)))

(declare-fun b!5714943 () Bool)

(assert (=> b!5714943 (= e!3514651 (matchR!7898 (regTwo!31938 r!7292) s!2326))))

(declare-fun b!5714944 () Bool)

(assert (=> b!5714944 (= e!3514654 (not (isDefined!12425 lt!2277227)))))

(declare-fun b!5714945 () Bool)

(declare-fun e!3514653 () Option!15722)

(assert (=> b!5714945 (= e!3514653 None!15721)))

(declare-fun b!5714946 () Bool)

(declare-fun res!2413161 () Bool)

(assert (=> b!5714946 (=> (not res!2413161) (not e!3514650))))

(assert (=> b!5714946 (= res!2413161 (matchR!7898 (regOne!31938 r!7292) (_1!36113 (get!21829 lt!2277227))))))

(declare-fun b!5714947 () Bool)

(assert (=> b!5714947 (= e!3514652 e!3514653)))

(declare-fun c!1007369 () Bool)

(assert (=> b!5714947 (= c!1007369 ((_ is Nil!63314) s!2326))))

(declare-fun b!5714948 () Bool)

(assert (=> b!5714948 (= e!3514650 (= (++!13908 (_1!36113 (get!21829 lt!2277227)) (_2!36113 (get!21829 lt!2277227))) s!2326))))

(declare-fun b!5714949 () Bool)

(assert (=> b!5714949 (= e!3514652 (Some!15721 (tuple2!65621 Nil!63314 s!2326)))))

(declare-fun b!5714950 () Bool)

(declare-fun res!2413159 () Bool)

(assert (=> b!5714950 (=> (not res!2413159) (not e!3514650))))

(assert (=> b!5714950 (= res!2413159 (matchR!7898 (regTwo!31938 r!7292) (_2!36113 (get!21829 lt!2277227))))))

(declare-fun b!5714951 () Bool)

(declare-fun lt!2277226 () Unit!156384)

(declare-fun lt!2277225 () Unit!156384)

(assert (=> b!5714951 (= lt!2277226 lt!2277225)))

(assert (=> b!5714951 (= (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2066 (List!63438 C!31696 List!63438 List!63438) Unit!156384)

(assert (=> b!5714951 (= lt!2277225 (lemmaMoveElementToOtherListKeepsConcatEq!2066 Nil!63314 (h!69762 s!2326) (t!376758 s!2326) s!2326))))

(assert (=> b!5714951 (= e!3514653 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326) s!2326))))

(assert (= (and d!1802400 res!2413158) b!5714943))

(assert (= (and d!1802400 c!1007370) b!5714949))

(assert (= (and d!1802400 (not c!1007370)) b!5714947))

(assert (= (and b!5714947 c!1007369) b!5714945))

(assert (= (and b!5714947 (not c!1007369)) b!5714951))

(assert (= (and d!1802400 res!2413160) b!5714946))

(assert (= (and b!5714946 res!2413161) b!5714950))

(assert (= (and b!5714950 res!2413159) b!5714948))

(assert (= (and d!1802400 (not res!2413157)) b!5714944))

(declare-fun m!6668410 () Bool)

(assert (=> b!5714948 m!6668410))

(declare-fun m!6668412 () Bool)

(assert (=> b!5714948 m!6668412))

(assert (=> b!5714946 m!6668410))

(declare-fun m!6668414 () Bool)

(assert (=> b!5714946 m!6668414))

(declare-fun m!6668416 () Bool)

(assert (=> b!5714951 m!6668416))

(assert (=> b!5714951 m!6668416))

(declare-fun m!6668418 () Bool)

(assert (=> b!5714951 m!6668418))

(declare-fun m!6668420 () Bool)

(assert (=> b!5714951 m!6668420))

(assert (=> b!5714951 m!6668416))

(declare-fun m!6668422 () Bool)

(assert (=> b!5714951 m!6668422))

(assert (=> b!5714950 m!6668410))

(declare-fun m!6668424 () Bool)

(assert (=> b!5714950 m!6668424))

(declare-fun m!6668426 () Bool)

(assert (=> b!5714943 m!6668426))

(declare-fun m!6668428 () Bool)

(assert (=> d!1802400 m!6668428))

(declare-fun m!6668430 () Bool)

(assert (=> d!1802400 m!6668430))

(declare-fun m!6668432 () Bool)

(assert (=> d!1802400 m!6668432))

(assert (=> b!5714944 m!6668428))

(assert (=> b!5714517 d!1802400))

(declare-fun d!1802426 () Bool)

(declare-fun choose!43215 (Int) Bool)

(assert (=> d!1802426 (= (Exists!2813 lambda!308679) (choose!43215 lambda!308679))))

(declare-fun bs!1334884 () Bool)

(assert (= bs!1334884 d!1802426))

(declare-fun m!6668438 () Bool)

(assert (=> bs!1334884 m!6668438))

(assert (=> b!5714517 d!1802426))

(declare-fun d!1802430 () Bool)

(assert (=> d!1802430 (= (Exists!2813 lambda!308680) (choose!43215 lambda!308680))))

(declare-fun bs!1334885 () Bool)

(assert (= bs!1334885 d!1802430))

(declare-fun m!6668442 () Bool)

(assert (=> bs!1334885 m!6668442))

(assert (=> b!5714517 d!1802430))

(declare-fun bs!1334890 () Bool)

(declare-fun d!1802432 () Bool)

(assert (= bs!1334890 (and d!1802432 b!5714753)))

(declare-fun lambda!308728 () Int)

(assert (=> bs!1334890 (not (= lambda!308728 lambda!308716))))

(declare-fun bs!1334891 () Bool)

(assert (= bs!1334891 (and d!1802432 b!5714499)))

(assert (=> bs!1334891 (not (= lambda!308728 lambda!308685))))

(declare-fun bs!1334892 () Bool)

(assert (= bs!1334892 (and d!1802432 b!5714504)))

(assert (=> bs!1334892 (not (= lambda!308728 lambda!308683))))

(assert (=> bs!1334891 (not (= lambda!308728 lambda!308686))))

(declare-fun bs!1334896 () Bool)

(assert (= bs!1334896 (and d!1802432 b!5714517)))

(assert (=> bs!1334896 (not (= lambda!308728 lambda!308680))))

(assert (=> bs!1334896 (= lambda!308728 lambda!308679)))

(assert (=> bs!1334892 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308728 lambda!308682))))

(declare-fun bs!1334897 () Bool)

(assert (= bs!1334897 (and d!1802432 b!5714749)))

(assert (=> bs!1334897 (not (= lambda!308728 lambda!308717))))

(assert (=> bs!1334891 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308728 lambda!308684))))

(assert (=> d!1802432 true))

(assert (=> d!1802432 true))

(assert (=> d!1802432 true))

(assert (=> d!1802432 (= (isDefined!12425 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)) (Exists!2813 lambda!308728))))

(declare-fun lt!2277240 () Unit!156384)

(declare-fun choose!43216 (Regex!15713 Regex!15713 List!63438) Unit!156384)

(assert (=> d!1802432 (= lt!2277240 (choose!43216 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326))))

(assert (=> d!1802432 (validRegex!7449 (regOne!31938 r!7292))))

(assert (=> d!1802432 (= (lemmaFindConcatSeparationEquivalentToExists!1900 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326) lt!2277240)))

(declare-fun bs!1334899 () Bool)

(assert (= bs!1334899 d!1802432))

(assert (=> bs!1334899 m!6668432))

(assert (=> bs!1334899 m!6667980))

(assert (=> bs!1334899 m!6667982))

(assert (=> bs!1334899 m!6667980))

(declare-fun m!6668480 () Bool)

(assert (=> bs!1334899 m!6668480))

(declare-fun m!6668486 () Bool)

(assert (=> bs!1334899 m!6668486))

(assert (=> b!5714517 d!1802432))

(declare-fun bs!1334939 () Bool)

(declare-fun d!1802448 () Bool)

(assert (= bs!1334939 (and d!1802448 b!5714753)))

(declare-fun lambda!308742 () Int)

(assert (=> bs!1334939 (not (= lambda!308742 lambda!308716))))

(declare-fun bs!1334940 () Bool)

(assert (= bs!1334940 (and d!1802448 b!5714499)))

(assert (=> bs!1334940 (not (= lambda!308742 lambda!308685))))

(declare-fun bs!1334941 () Bool)

(assert (= bs!1334941 (and d!1802448 b!5714504)))

(assert (=> bs!1334941 (not (= lambda!308742 lambda!308683))))

(assert (=> bs!1334940 (not (= lambda!308742 lambda!308686))))

(declare-fun bs!1334942 () Bool)

(assert (= bs!1334942 (and d!1802448 b!5714517)))

(assert (=> bs!1334942 (not (= lambda!308742 lambda!308680))))

(declare-fun bs!1334943 () Bool)

(assert (= bs!1334943 (and d!1802448 d!1802432)))

(assert (=> bs!1334943 (= lambda!308742 lambda!308728)))

(assert (=> bs!1334942 (= lambda!308742 lambda!308679)))

(assert (=> bs!1334941 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308742 lambda!308682))))

(declare-fun bs!1334944 () Bool)

(assert (= bs!1334944 (and d!1802448 b!5714749)))

(assert (=> bs!1334944 (not (= lambda!308742 lambda!308717))))

(assert (=> bs!1334940 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308742 lambda!308684))))

(assert (=> d!1802448 true))

(assert (=> d!1802448 true))

(assert (=> d!1802448 true))

(declare-fun bs!1334946 () Bool)

(assert (= bs!1334946 d!1802448))

(declare-fun lambda!308743 () Int)

(assert (=> bs!1334946 (not (= lambda!308743 lambda!308742))))

(assert (=> bs!1334939 (not (= lambda!308743 lambda!308716))))

(assert (=> bs!1334940 (not (= lambda!308743 lambda!308685))))

(assert (=> bs!1334941 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308743 lambda!308683))))

(assert (=> bs!1334940 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308743 lambda!308686))))

(assert (=> bs!1334942 (= lambda!308743 lambda!308680)))

(assert (=> bs!1334943 (not (= lambda!308743 lambda!308728))))

(assert (=> bs!1334942 (not (= lambda!308743 lambda!308679))))

(assert (=> bs!1334941 (not (= lambda!308743 lambda!308682))))

(assert (=> bs!1334944 (= (and (= (regOne!31938 r!7292) (regOne!31938 lt!2277132)) (= (regTwo!31938 r!7292) (regTwo!31938 lt!2277132))) (= lambda!308743 lambda!308717))))

(assert (=> bs!1334940 (not (= lambda!308743 lambda!308684))))

(assert (=> d!1802448 true))

(assert (=> d!1802448 true))

(assert (=> d!1802448 true))

(assert (=> d!1802448 (= (Exists!2813 lambda!308742) (Exists!2813 lambda!308743))))

(declare-fun lt!2277257 () Unit!156384)

(declare-fun choose!43217 (Regex!15713 Regex!15713 List!63438) Unit!156384)

(assert (=> d!1802448 (= lt!2277257 (choose!43217 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326))))

(assert (=> d!1802448 (validRegex!7449 (regOne!31938 r!7292))))

(assert (=> d!1802448 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1442 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326) lt!2277257)))

(declare-fun m!6668586 () Bool)

(assert (=> bs!1334946 m!6668586))

(declare-fun m!6668588 () Bool)

(assert (=> bs!1334946 m!6668588))

(declare-fun m!6668590 () Bool)

(assert (=> bs!1334946 m!6668590))

(assert (=> bs!1334946 m!6668432))

(assert (=> b!5714517 d!1802448))

(declare-fun d!1802484 () Bool)

(declare-fun isEmpty!35190 (Option!15722) Bool)

(assert (=> d!1802484 (= (isDefined!12425 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)) (not (isEmpty!35190 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326))))))

(declare-fun bs!1334956 () Bool)

(assert (= bs!1334956 d!1802484))

(assert (=> bs!1334956 m!6667980))

(declare-fun m!6668592 () Bool)

(assert (=> bs!1334956 m!6668592))

(assert (=> b!5714517 d!1802484))

(declare-fun d!1802486 () Bool)

(declare-fun choose!43218 ((InoxSet Context!10194) Int) (InoxSet Context!10194))

(assert (=> d!1802486 (= (flatMap!1326 lt!2277134 lambda!308681) (choose!43218 lt!2277134 lambda!308681))))

(declare-fun bs!1334959 () Bool)

(assert (= bs!1334959 d!1802486))

(declare-fun m!6668594 () Bool)

(assert (=> bs!1334959 m!6668594))

(assert (=> b!5714536 d!1802486))

(declare-fun d!1802488 () Bool)

(assert (=> d!1802488 (= (flatMap!1326 lt!2277108 lambda!308681) (choose!43218 lt!2277108 lambda!308681))))

(declare-fun bs!1334960 () Bool)

(assert (= bs!1334960 d!1802488))

(declare-fun m!6668596 () Bool)

(assert (=> bs!1334960 m!6668596))

(assert (=> b!5714536 d!1802488))

(declare-fun d!1802490 () Bool)

(declare-fun lt!2277262 () Regex!15713)

(assert (=> d!1802490 (validRegex!7449 lt!2277262)))

(assert (=> d!1802490 (= lt!2277262 (generalisedUnion!1576 (unfocusZipperList!1141 lt!2277094)))))

(assert (=> d!1802490 (= (unfocusZipper!1455 lt!2277094) lt!2277262)))

(declare-fun bs!1334963 () Bool)

(assert (= bs!1334963 d!1802490))

(declare-fun m!6668606 () Bool)

(assert (=> bs!1334963 m!6668606))

(declare-fun m!6668608 () Bool)

(assert (=> bs!1334963 m!6668608))

(assert (=> bs!1334963 m!6668608))

(declare-fun m!6668610 () Bool)

(assert (=> bs!1334963 m!6668610))

(assert (=> b!5714536 d!1802490))

(declare-fun b!5715076 () Bool)

(declare-fun e!3514724 () Bool)

(assert (=> b!5715076 (= e!3514724 (nullable!5745 (h!69763 (exprs!5597 lt!2277119))))))

(declare-fun d!1802496 () Bool)

(declare-fun c!1007412 () Bool)

(assert (=> d!1802496 (= c!1007412 e!3514724)))

(declare-fun res!2413204 () Bool)

(assert (=> d!1802496 (=> (not res!2413204) (not e!3514724))))

(assert (=> d!1802496 (= res!2413204 ((_ is Cons!63315) (exprs!5597 lt!2277119)))))

(declare-fun e!3514725 () (InoxSet Context!10194))

(assert (=> d!1802496 (= (derivationStepZipperUp!981 lt!2277119 (h!69762 s!2326)) e!3514725)))

(declare-fun call!436199 () (InoxSet Context!10194))

(declare-fun b!5715077 () Bool)

(assert (=> b!5715077 (= e!3514725 ((_ map or) call!436199 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277119))) (h!69762 s!2326))))))

(declare-fun b!5715078 () Bool)

(declare-fun e!3514723 () (InoxSet Context!10194))

(assert (=> b!5715078 (= e!3514723 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436194 () Bool)

(assert (=> bm!436194 (= call!436199 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277119)) (Context!10195 (t!376759 (exprs!5597 lt!2277119))) (h!69762 s!2326)))))

(declare-fun b!5715079 () Bool)

(assert (=> b!5715079 (= e!3514723 call!436199)))

(declare-fun b!5715080 () Bool)

(assert (=> b!5715080 (= e!3514725 e!3514723)))

(declare-fun c!1007413 () Bool)

(assert (=> b!5715080 (= c!1007413 ((_ is Cons!63315) (exprs!5597 lt!2277119)))))

(assert (= (and d!1802496 res!2413204) b!5715076))

(assert (= (and d!1802496 c!1007412) b!5715077))

(assert (= (and d!1802496 (not c!1007412)) b!5715080))

(assert (= (and b!5715080 c!1007413) b!5715079))

(assert (= (and b!5715080 (not c!1007413)) b!5715078))

(assert (= (or b!5715077 b!5715079) bm!436194))

(declare-fun m!6668612 () Bool)

(assert (=> b!5715076 m!6668612))

(declare-fun m!6668614 () Bool)

(assert (=> b!5715077 m!6668614))

(declare-fun m!6668616 () Bool)

(assert (=> bm!436194 m!6668616))

(assert (=> b!5714536 d!1802496))

(declare-fun d!1802498 () Bool)

(declare-fun dynLambda!24772 (Int Context!10194) (InoxSet Context!10194))

(assert (=> d!1802498 (= (flatMap!1326 lt!2277134 lambda!308681) (dynLambda!24772 lambda!308681 lt!2277119))))

(declare-fun lt!2277265 () Unit!156384)

(declare-fun choose!43219 ((InoxSet Context!10194) Context!10194 Int) Unit!156384)

(assert (=> d!1802498 (= lt!2277265 (choose!43219 lt!2277134 lt!2277119 lambda!308681))))

(assert (=> d!1802498 (= lt!2277134 (store ((as const (Array Context!10194 Bool)) false) lt!2277119 true))))

(assert (=> d!1802498 (= (lemmaFlatMapOnSingletonSet!858 lt!2277134 lt!2277119 lambda!308681) lt!2277265)))

(declare-fun b_lambda!215945 () Bool)

(assert (=> (not b_lambda!215945) (not d!1802498)))

(declare-fun bs!1334964 () Bool)

(assert (= bs!1334964 d!1802498))

(assert (=> bs!1334964 m!6667880))

(declare-fun m!6668618 () Bool)

(assert (=> bs!1334964 m!6668618))

(declare-fun m!6668620 () Bool)

(assert (=> bs!1334964 m!6668620))

(assert (=> bs!1334964 m!6667888))

(assert (=> b!5714536 d!1802498))

(declare-fun b!5715081 () Bool)

(declare-fun e!3514727 () Bool)

(assert (=> b!5715081 (= e!3514727 (nullable!5745 (h!69763 (exprs!5597 lt!2277124))))))

(declare-fun d!1802500 () Bool)

(declare-fun c!1007414 () Bool)

(assert (=> d!1802500 (= c!1007414 e!3514727)))

(declare-fun res!2413205 () Bool)

(assert (=> d!1802500 (=> (not res!2413205) (not e!3514727))))

(assert (=> d!1802500 (= res!2413205 ((_ is Cons!63315) (exprs!5597 lt!2277124)))))

(declare-fun e!3514728 () (InoxSet Context!10194))

(assert (=> d!1802500 (= (derivationStepZipperUp!981 lt!2277124 (h!69762 s!2326)) e!3514728)))

(declare-fun b!5715082 () Bool)

(declare-fun call!436204 () (InoxSet Context!10194))

(assert (=> b!5715082 (= e!3514728 ((_ map or) call!436204 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277124))) (h!69762 s!2326))))))

(declare-fun b!5715083 () Bool)

(declare-fun e!3514726 () (InoxSet Context!10194))

(assert (=> b!5715083 (= e!3514726 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436199 () Bool)

(assert (=> bm!436199 (= call!436204 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277124)) (Context!10195 (t!376759 (exprs!5597 lt!2277124))) (h!69762 s!2326)))))

(declare-fun b!5715084 () Bool)

(assert (=> b!5715084 (= e!3514726 call!436204)))

(declare-fun b!5715085 () Bool)

(assert (=> b!5715085 (= e!3514728 e!3514726)))

(declare-fun c!1007415 () Bool)

(assert (=> b!5715085 (= c!1007415 ((_ is Cons!63315) (exprs!5597 lt!2277124)))))

(assert (= (and d!1802500 res!2413205) b!5715081))

(assert (= (and d!1802500 c!1007414) b!5715082))

(assert (= (and d!1802500 (not c!1007414)) b!5715085))

(assert (= (and b!5715085 c!1007415) b!5715084))

(assert (= (and b!5715085 (not c!1007415)) b!5715083))

(assert (= (or b!5715082 b!5715084) bm!436199))

(declare-fun m!6668622 () Bool)

(assert (=> b!5715081 m!6668622))

(declare-fun m!6668624 () Bool)

(assert (=> b!5715082 m!6668624))

(declare-fun m!6668626 () Bool)

(assert (=> bm!436199 m!6668626))

(assert (=> b!5714536 d!1802500))

(declare-fun d!1802502 () Bool)

(assert (=> d!1802502 (= (flatMap!1326 lt!2277108 lambda!308681) (dynLambda!24772 lambda!308681 lt!2277124))))

(declare-fun lt!2277266 () Unit!156384)

(assert (=> d!1802502 (= lt!2277266 (choose!43219 lt!2277108 lt!2277124 lambda!308681))))

(assert (=> d!1802502 (= lt!2277108 (store ((as const (Array Context!10194 Bool)) false) lt!2277124 true))))

(assert (=> d!1802502 (= (lemmaFlatMapOnSingletonSet!858 lt!2277108 lt!2277124 lambda!308681) lt!2277266)))

(declare-fun b_lambda!215947 () Bool)

(assert (=> (not b_lambda!215947) (not d!1802502)))

(declare-fun bs!1334965 () Bool)

(assert (= bs!1334965 d!1802502))

(assert (=> bs!1334965 m!6667892))

(declare-fun m!6668628 () Bool)

(assert (=> bs!1334965 m!6668628))

(declare-fun m!6668630 () Bool)

(assert (=> bs!1334965 m!6668630))

(assert (=> bs!1334965 m!6667890))

(assert (=> b!5714536 d!1802502))

(declare-fun d!1802504 () Bool)

(declare-fun lt!2277267 () Regex!15713)

(assert (=> d!1802504 (validRegex!7449 lt!2277267)))

(assert (=> d!1802504 (= lt!2277267 (generalisedUnion!1576 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))))))

(assert (=> d!1802504 (= (unfocusZipper!1455 (Cons!63316 lt!2277095 Nil!63316)) lt!2277267)))

(declare-fun bs!1334966 () Bool)

(assert (= bs!1334966 d!1802504))

(declare-fun m!6668632 () Bool)

(assert (=> bs!1334966 m!6668632))

(declare-fun m!6668634 () Bool)

(assert (=> bs!1334966 m!6668634))

(assert (=> bs!1334966 m!6668634))

(declare-fun m!6668636 () Bool)

(assert (=> bs!1334966 m!6668636))

(assert (=> b!5714535 d!1802504))

(declare-fun d!1802506 () Bool)

(declare-fun lt!2277268 () Regex!15713)

(assert (=> d!1802506 (validRegex!7449 lt!2277268)))

(assert (=> d!1802506 (= lt!2277268 (generalisedUnion!1576 (unfocusZipperList!1141 zl!343)))))

(assert (=> d!1802506 (= (unfocusZipper!1455 zl!343) lt!2277268)))

(declare-fun bs!1334967 () Bool)

(assert (= bs!1334967 d!1802506))

(declare-fun m!6668638 () Bool)

(assert (=> bs!1334967 m!6668638))

(assert (=> bs!1334967 m!6667898))

(assert (=> bs!1334967 m!6667898))

(assert (=> bs!1334967 m!6667900))

(assert (=> b!5714515 d!1802506))

(declare-fun b!5715086 () Bool)

(declare-fun e!3514730 () Bool)

(assert (=> b!5715086 (= e!3514730 (nullable!5745 (h!69763 (exprs!5597 lt!2277104))))))

(declare-fun d!1802508 () Bool)

(declare-fun c!1007416 () Bool)

(assert (=> d!1802508 (= c!1007416 e!3514730)))

(declare-fun res!2413206 () Bool)

(assert (=> d!1802508 (=> (not res!2413206) (not e!3514730))))

(assert (=> d!1802508 (= res!2413206 ((_ is Cons!63315) (exprs!5597 lt!2277104)))))

(declare-fun e!3514731 () (InoxSet Context!10194))

(assert (=> d!1802508 (= (derivationStepZipperUp!981 lt!2277104 (h!69762 s!2326)) e!3514731)))

(declare-fun b!5715087 () Bool)

(declare-fun call!436205 () (InoxSet Context!10194))

(assert (=> b!5715087 (= e!3514731 ((_ map or) call!436205 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277104))) (h!69762 s!2326))))))

(declare-fun b!5715088 () Bool)

(declare-fun e!3514729 () (InoxSet Context!10194))

(assert (=> b!5715088 (= e!3514729 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436200 () Bool)

(assert (=> bm!436200 (= call!436205 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277104)) (Context!10195 (t!376759 (exprs!5597 lt!2277104))) (h!69762 s!2326)))))

(declare-fun b!5715089 () Bool)

(assert (=> b!5715089 (= e!3514729 call!436205)))

(declare-fun b!5715090 () Bool)

(assert (=> b!5715090 (= e!3514731 e!3514729)))

(declare-fun c!1007417 () Bool)

(assert (=> b!5715090 (= c!1007417 ((_ is Cons!63315) (exprs!5597 lt!2277104)))))

(assert (= (and d!1802508 res!2413206) b!5715086))

(assert (= (and d!1802508 c!1007416) b!5715087))

(assert (= (and d!1802508 (not c!1007416)) b!5715090))

(assert (= (and b!5715090 c!1007417) b!5715089))

(assert (= (and b!5715090 (not c!1007417)) b!5715088))

(assert (= (or b!5715087 b!5715089) bm!436200))

(declare-fun m!6668640 () Bool)

(assert (=> b!5715086 m!6668640))

(declare-fun m!6668642 () Bool)

(assert (=> b!5715087 m!6668642))

(declare-fun m!6668644 () Bool)

(assert (=> bm!436200 m!6668644))

(assert (=> b!5714534 d!1802508))

(declare-fun d!1802510 () Bool)

(assert (=> d!1802510 (= (flatMap!1326 z!1189 lambda!308681) (dynLambda!24772 lambda!308681 (h!69764 zl!343)))))

(declare-fun lt!2277269 () Unit!156384)

(assert (=> d!1802510 (= lt!2277269 (choose!43219 z!1189 (h!69764 zl!343) lambda!308681))))

(assert (=> d!1802510 (= z!1189 (store ((as const (Array Context!10194 Bool)) false) (h!69764 zl!343) true))))

(assert (=> d!1802510 (= (lemmaFlatMapOnSingletonSet!858 z!1189 (h!69764 zl!343) lambda!308681) lt!2277269)))

(declare-fun b_lambda!215949 () Bool)

(assert (=> (not b_lambda!215949) (not d!1802510)))

(declare-fun bs!1334968 () Bool)

(assert (= bs!1334968 d!1802510))

(assert (=> bs!1334968 m!6668016))

(declare-fun m!6668646 () Bool)

(assert (=> bs!1334968 m!6668646))

(declare-fun m!6668648 () Bool)

(assert (=> bs!1334968 m!6668648))

(declare-fun m!6668650 () Bool)

(assert (=> bs!1334968 m!6668650))

(assert (=> b!5714534 d!1802510))

(declare-fun d!1802512 () Bool)

(declare-fun nullableFct!1808 (Regex!15713) Bool)

(assert (=> d!1802512 (= (nullable!5745 (h!69763 (exprs!5597 (h!69764 zl!343)))) (nullableFct!1808 (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun bs!1334969 () Bool)

(assert (= bs!1334969 d!1802512))

(declare-fun m!6668656 () Bool)

(assert (=> bs!1334969 m!6668656))

(assert (=> b!5714534 d!1802512))

(declare-fun b!5715102 () Bool)

(declare-fun e!3514739 () Bool)

(assert (=> b!5715102 (= e!3514739 (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))

(declare-fun d!1802514 () Bool)

(declare-fun c!1007423 () Bool)

(assert (=> d!1802514 (= c!1007423 e!3514739)))

(declare-fun res!2413208 () Bool)

(assert (=> d!1802514 (=> (not res!2413208) (not e!3514739))))

(assert (=> d!1802514 (= res!2413208 ((_ is Cons!63315) (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))

(declare-fun e!3514740 () (InoxSet Context!10194))

(assert (=> d!1802514 (= (derivationStepZipperUp!981 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))) (h!69762 s!2326)) e!3514740)))

(declare-fun call!436212 () (InoxSet Context!10194))

(declare-fun b!5715103 () Bool)

(assert (=> b!5715103 (= e!3514740 ((_ map or) call!436212 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (h!69762 s!2326))))))

(declare-fun b!5715104 () Bool)

(declare-fun e!3514738 () (InoxSet Context!10194))

(assert (=> b!5715104 (= e!3514738 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436207 () Bool)

(assert (=> bm!436207 (= call!436212 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (h!69762 s!2326)))))

(declare-fun b!5715105 () Bool)

(assert (=> b!5715105 (= e!3514738 call!436212)))

(declare-fun b!5715106 () Bool)

(assert (=> b!5715106 (= e!3514740 e!3514738)))

(declare-fun c!1007424 () Bool)

(assert (=> b!5715106 (= c!1007424 ((_ is Cons!63315) (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))

(assert (= (and d!1802514 res!2413208) b!5715102))

(assert (= (and d!1802514 c!1007423) b!5715103))

(assert (= (and d!1802514 (not c!1007423)) b!5715106))

(assert (= (and b!5715106 c!1007424) b!5715105))

(assert (= (and b!5715106 (not c!1007424)) b!5715104))

(assert (= (or b!5715103 b!5715105) bm!436207))

(declare-fun m!6668662 () Bool)

(assert (=> b!5715102 m!6668662))

(declare-fun m!6668664 () Bool)

(assert (=> b!5715103 m!6668664))

(declare-fun m!6668666 () Bool)

(assert (=> bm!436207 m!6668666))

(assert (=> b!5714534 d!1802514))

(declare-fun b!5715158 () Bool)

(declare-fun e!3514772 () Bool)

(assert (=> b!5715158 (= e!3514772 (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun bm!436223 () Bool)

(declare-fun call!436231 () List!63439)

(declare-fun call!436228 () List!63439)

(assert (=> bm!436223 (= call!436231 call!436228)))

(declare-fun b!5715159 () Bool)

(declare-fun e!3514770 () (InoxSet Context!10194))

(declare-fun call!436230 () (InoxSet Context!10194))

(assert (=> b!5715159 (= e!3514770 call!436230)))

(declare-fun b!5715160 () Bool)

(declare-fun e!3514775 () (InoxSet Context!10194))

(assert (=> b!5715160 (= e!3514775 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5715161 () Bool)

(declare-fun e!3514774 () (InoxSet Context!10194))

(declare-fun call!436229 () (InoxSet Context!10194))

(declare-fun call!436233 () (InoxSet Context!10194))

(assert (=> b!5715161 (= e!3514774 ((_ map or) call!436229 call!436233))))

(declare-fun bm!436224 () Bool)

(declare-fun call!436232 () (InoxSet Context!10194))

(assert (=> bm!436224 (= call!436232 call!436233)))

(declare-fun b!5715162 () Bool)

(declare-fun c!1007443 () Bool)

(assert (=> b!5715162 (= c!1007443 ((_ is Star!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5715162 (= e!3514770 e!3514775)))

(declare-fun bm!436225 () Bool)

(declare-fun c!1007442 () Bool)

(assert (=> bm!436225 (= call!436229 (derivationStepZipperDown!1055 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))) (ite c!1007442 lt!2277104 (Context!10195 call!436228)) (h!69762 s!2326)))))

(declare-fun c!1007445 () Bool)

(declare-fun c!1007444 () Bool)

(declare-fun bm!436226 () Bool)

(assert (=> bm!436226 (= call!436233 (derivationStepZipperDown!1055 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343))))))) (ite (or c!1007442 c!1007444) lt!2277104 (Context!10195 call!436231)) (h!69762 s!2326)))))

(declare-fun bm!436227 () Bool)

(assert (=> bm!436227 (= call!436230 call!436232)))

(declare-fun b!5715163 () Bool)

(declare-fun e!3514771 () (InoxSet Context!10194))

(assert (=> b!5715163 (= e!3514771 ((_ map or) call!436229 call!436232))))

(declare-fun b!5715164 () Bool)

(assert (=> b!5715164 (= e!3514771 e!3514770)))

(assert (=> b!5715164 (= c!1007445 ((_ is Concat!24558) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun d!1802518 () Bool)

(declare-fun c!1007446 () Bool)

(assert (=> d!1802518 (= c!1007446 (and ((_ is ElementMatch!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))) (= (c!1007275 (h!69763 (exprs!5597 (h!69764 zl!343)))) (h!69762 s!2326))))))

(declare-fun e!3514773 () (InoxSet Context!10194))

(assert (=> d!1802518 (= (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (h!69764 zl!343))) lt!2277104 (h!69762 s!2326)) e!3514773)))

(declare-fun b!5715157 () Bool)

(assert (=> b!5715157 (= e!3514773 e!3514774)))

(assert (=> b!5715157 (= c!1007442 ((_ is Union!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5715165 () Bool)

(assert (=> b!5715165 (= e!3514773 (store ((as const (Array Context!10194 Bool)) false) lt!2277104 true))))

(declare-fun b!5715166 () Bool)

(assert (=> b!5715166 (= c!1007444 e!3514772)))

(declare-fun res!2413225 () Bool)

(assert (=> b!5715166 (=> (not res!2413225) (not e!3514772))))

(assert (=> b!5715166 (= res!2413225 ((_ is Concat!24558) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5715166 (= e!3514774 e!3514771)))

(declare-fun bm!436228 () Bool)

(declare-fun $colon$colon!1729 (List!63439 Regex!15713) List!63439)

(assert (=> bm!436228 (= call!436228 ($colon$colon!1729 (exprs!5597 lt!2277104) (ite (or c!1007444 c!1007445) (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (h!69763 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun b!5715167 () Bool)

(assert (=> b!5715167 (= e!3514775 call!436230)))

(assert (= (and d!1802518 c!1007446) b!5715165))

(assert (= (and d!1802518 (not c!1007446)) b!5715157))

(assert (= (and b!5715157 c!1007442) b!5715161))

(assert (= (and b!5715157 (not c!1007442)) b!5715166))

(assert (= (and b!5715166 res!2413225) b!5715158))

(assert (= (and b!5715166 c!1007444) b!5715163))

(assert (= (and b!5715166 (not c!1007444)) b!5715164))

(assert (= (and b!5715164 c!1007445) b!5715159))

(assert (= (and b!5715164 (not c!1007445)) b!5715162))

(assert (= (and b!5715162 c!1007443) b!5715167))

(assert (= (and b!5715162 (not c!1007443)) b!5715160))

(assert (= (or b!5715159 b!5715167) bm!436223))

(assert (= (or b!5715159 b!5715167) bm!436227))

(assert (= (or b!5715163 bm!436223) bm!436228))

(assert (= (or b!5715163 bm!436227) bm!436224))

(assert (= (or b!5715161 bm!436224) bm!436226))

(assert (= (or b!5715161 b!5715163) bm!436225))

(declare-fun m!6668690 () Bool)

(assert (=> b!5715158 m!6668690))

(declare-fun m!6668692 () Bool)

(assert (=> bm!436226 m!6668692))

(declare-fun m!6668694 () Bool)

(assert (=> b!5715165 m!6668694))

(declare-fun m!6668696 () Bool)

(assert (=> bm!436228 m!6668696))

(declare-fun m!6668698 () Bool)

(assert (=> bm!436225 m!6668698))

(assert (=> b!5714534 d!1802518))

(declare-fun d!1802530 () Bool)

(assert (=> d!1802530 (= (flatMap!1326 z!1189 lambda!308681) (choose!43218 z!1189 lambda!308681))))

(declare-fun bs!1335002 () Bool)

(assert (= bs!1335002 d!1802530))

(declare-fun m!6668700 () Bool)

(assert (=> bs!1335002 m!6668700))

(assert (=> b!5714534 d!1802530))

(declare-fun b!5715168 () Bool)

(declare-fun e!3514777 () Bool)

(assert (=> b!5715168 (= e!3514777 (nullable!5745 (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun d!1802532 () Bool)

(declare-fun c!1007447 () Bool)

(assert (=> d!1802532 (= c!1007447 e!3514777)))

(declare-fun res!2413226 () Bool)

(assert (=> d!1802532 (=> (not res!2413226) (not e!3514777))))

(assert (=> d!1802532 (= res!2413226 ((_ is Cons!63315) (exprs!5597 (h!69764 zl!343))))))

(declare-fun e!3514778 () (InoxSet Context!10194))

(assert (=> d!1802532 (= (derivationStepZipperUp!981 (h!69764 zl!343) (h!69762 s!2326)) e!3514778)))

(declare-fun b!5715169 () Bool)

(declare-fun call!436234 () (InoxSet Context!10194))

(assert (=> b!5715169 (= e!3514778 ((_ map or) call!436234 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))) (h!69762 s!2326))))))

(declare-fun b!5715170 () Bool)

(declare-fun e!3514776 () (InoxSet Context!10194))

(assert (=> b!5715170 (= e!3514776 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436229 () Bool)

(assert (=> bm!436229 (= call!436234 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (h!69764 zl!343))) (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))) (h!69762 s!2326)))))

(declare-fun b!5715171 () Bool)

(assert (=> b!5715171 (= e!3514776 call!436234)))

(declare-fun b!5715172 () Bool)

(assert (=> b!5715172 (= e!3514778 e!3514776)))

(declare-fun c!1007448 () Bool)

(assert (=> b!5715172 (= c!1007448 ((_ is Cons!63315) (exprs!5597 (h!69764 zl!343))))))

(assert (= (and d!1802532 res!2413226) b!5715168))

(assert (= (and d!1802532 c!1007447) b!5715169))

(assert (= (and d!1802532 (not c!1007447)) b!5715172))

(assert (= (and b!5715172 c!1007448) b!5715171))

(assert (= (and b!5715172 (not c!1007448)) b!5715170))

(assert (= (or b!5715169 b!5715171) bm!436229))

(assert (=> b!5715168 m!6668018))

(declare-fun m!6668702 () Bool)

(assert (=> b!5715169 m!6668702))

(declare-fun m!6668704 () Bool)

(assert (=> bm!436229 m!6668704))

(assert (=> b!5714534 d!1802532))

(declare-fun d!1802534 () Bool)

(assert (=> d!1802534 (= (isEmpty!35187 (t!376760 zl!343)) ((_ is Nil!63316) (t!376760 zl!343)))))

(assert (=> b!5714513 d!1802534))

(declare-fun b!5715201 () Bool)

(declare-fun e!3514795 () List!63438)

(assert (=> b!5715201 (= e!3514795 lt!2277140)))

(declare-fun b!5715204 () Bool)

(declare-fun lt!2277279 () List!63438)

(declare-fun e!3514796 () Bool)

(assert (=> b!5715204 (= e!3514796 (or (not (= lt!2277140 Nil!63314)) (= lt!2277279 (_1!36113 lt!2277144))))))

(declare-fun b!5715203 () Bool)

(declare-fun res!2413235 () Bool)

(assert (=> b!5715203 (=> (not res!2413235) (not e!3514796))))

(declare-fun size!40024 (List!63438) Int)

(assert (=> b!5715203 (= res!2413235 (= (size!40024 lt!2277279) (+ (size!40024 (_1!36113 lt!2277144)) (size!40024 lt!2277140))))))

(declare-fun b!5715202 () Bool)

(assert (=> b!5715202 (= e!3514795 (Cons!63314 (h!69762 (_1!36113 lt!2277144)) (++!13908 (t!376758 (_1!36113 lt!2277144)) lt!2277140)))))

(declare-fun d!1802536 () Bool)

(assert (=> d!1802536 e!3514796))

(declare-fun res!2413236 () Bool)

(assert (=> d!1802536 (=> (not res!2413236) (not e!3514796))))

(declare-fun content!11499 (List!63438) (InoxSet C!31696))

(assert (=> d!1802536 (= res!2413236 (= (content!11499 lt!2277279) ((_ map or) (content!11499 (_1!36113 lt!2277144)) (content!11499 lt!2277140))))))

(assert (=> d!1802536 (= lt!2277279 e!3514795)))

(declare-fun c!1007459 () Bool)

(assert (=> d!1802536 (= c!1007459 ((_ is Nil!63314) (_1!36113 lt!2277144)))))

(assert (=> d!1802536 (= (++!13908 (_1!36113 lt!2277144) lt!2277140) lt!2277279)))

(assert (= (and d!1802536 c!1007459) b!5715201))

(assert (= (and d!1802536 (not c!1007459)) b!5715202))

(assert (= (and d!1802536 res!2413236) b!5715203))

(assert (= (and b!5715203 res!2413235) b!5715204))

(declare-fun m!6668706 () Bool)

(assert (=> b!5715203 m!6668706))

(declare-fun m!6668708 () Bool)

(assert (=> b!5715203 m!6668708))

(declare-fun m!6668710 () Bool)

(assert (=> b!5715203 m!6668710))

(declare-fun m!6668712 () Bool)

(assert (=> b!5715202 m!6668712))

(declare-fun m!6668714 () Bool)

(assert (=> d!1802536 m!6668714))

(declare-fun m!6668716 () Bool)

(assert (=> d!1802536 m!6668716))

(declare-fun m!6668718 () Bool)

(assert (=> d!1802536 m!6668718))

(assert (=> b!5714512 d!1802536))

(declare-fun b!5715209 () Bool)

(declare-fun e!3514803 () List!63438)

(assert (=> b!5715209 (= e!3514803 (_2!36113 lt!2277139))))

(declare-fun lt!2277281 () List!63438)

(declare-fun b!5715215 () Bool)

(declare-fun e!3514804 () Bool)

(assert (=> b!5715215 (= e!3514804 (or (not (= (_2!36113 lt!2277139) Nil!63314)) (= lt!2277281 lt!2277096)))))

(declare-fun b!5715213 () Bool)

(declare-fun res!2413239 () Bool)

(assert (=> b!5715213 (=> (not res!2413239) (not e!3514804))))

(assert (=> b!5715213 (= res!2413239 (= (size!40024 lt!2277281) (+ (size!40024 lt!2277096) (size!40024 (_2!36113 lt!2277139)))))))

(declare-fun b!5715211 () Bool)

(assert (=> b!5715211 (= e!3514803 (Cons!63314 (h!69762 lt!2277096) (++!13908 (t!376758 lt!2277096) (_2!36113 lt!2277139))))))

(declare-fun d!1802538 () Bool)

(assert (=> d!1802538 e!3514804))

(declare-fun res!2413240 () Bool)

(assert (=> d!1802538 (=> (not res!2413240) (not e!3514804))))

(assert (=> d!1802538 (= res!2413240 (= (content!11499 lt!2277281) ((_ map or) (content!11499 lt!2277096) (content!11499 (_2!36113 lt!2277139)))))))

(assert (=> d!1802538 (= lt!2277281 e!3514803)))

(declare-fun c!1007464 () Bool)

(assert (=> d!1802538 (= c!1007464 ((_ is Nil!63314) lt!2277096))))

(assert (=> d!1802538 (= (++!13908 lt!2277096 (_2!36113 lt!2277139)) lt!2277281)))

(assert (= (and d!1802538 c!1007464) b!5715209))

(assert (= (and d!1802538 (not c!1007464)) b!5715211))

(assert (= (and d!1802538 res!2413240) b!5715213))

(assert (= (and b!5715213 res!2413239) b!5715215))

(declare-fun m!6668720 () Bool)

(assert (=> b!5715213 m!6668720))

(declare-fun m!6668722 () Bool)

(assert (=> b!5715213 m!6668722))

(declare-fun m!6668724 () Bool)

(assert (=> b!5715213 m!6668724))

(declare-fun m!6668726 () Bool)

(assert (=> b!5715211 m!6668726))

(declare-fun m!6668728 () Bool)

(assert (=> d!1802538 m!6668728))

(declare-fun m!6668730 () Bool)

(assert (=> d!1802538 m!6668730))

(declare-fun m!6668732 () Bool)

(assert (=> d!1802538 m!6668732))

(assert (=> b!5714512 d!1802538))

(declare-fun b!5715219 () Bool)

(declare-fun e!3514805 () List!63438)

(assert (=> b!5715219 (= e!3514805 (_2!36113 lt!2277139))))

(declare-fun lt!2277282 () List!63438)

(declare-fun e!3514806 () Bool)

(declare-fun b!5715222 () Bool)

(assert (=> b!5715222 (= e!3514806 (or (not (= (_2!36113 lt!2277139) Nil!63314)) (= lt!2277282 (_2!36113 lt!2277144))))))

(declare-fun b!5715221 () Bool)

(declare-fun res!2413241 () Bool)

(assert (=> b!5715221 (=> (not res!2413241) (not e!3514806))))

(assert (=> b!5715221 (= res!2413241 (= (size!40024 lt!2277282) (+ (size!40024 (_2!36113 lt!2277144)) (size!40024 (_2!36113 lt!2277139)))))))

(declare-fun b!5715220 () Bool)

(assert (=> b!5715220 (= e!3514805 (Cons!63314 (h!69762 (_2!36113 lt!2277144)) (++!13908 (t!376758 (_2!36113 lt!2277144)) (_2!36113 lt!2277139))))))

(declare-fun d!1802540 () Bool)

(assert (=> d!1802540 e!3514806))

(declare-fun res!2413242 () Bool)

(assert (=> d!1802540 (=> (not res!2413242) (not e!3514806))))

(assert (=> d!1802540 (= res!2413242 (= (content!11499 lt!2277282) ((_ map or) (content!11499 (_2!36113 lt!2277144)) (content!11499 (_2!36113 lt!2277139)))))))

(assert (=> d!1802540 (= lt!2277282 e!3514805)))

(declare-fun c!1007465 () Bool)

(assert (=> d!1802540 (= c!1007465 ((_ is Nil!63314) (_2!36113 lt!2277144)))))

(assert (=> d!1802540 (= (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)) lt!2277282)))

(assert (= (and d!1802540 c!1007465) b!5715219))

(assert (= (and d!1802540 (not c!1007465)) b!5715220))

(assert (= (and d!1802540 res!2413242) b!5715221))

(assert (= (and b!5715221 res!2413241) b!5715222))

(declare-fun m!6668734 () Bool)

(assert (=> b!5715221 m!6668734))

(declare-fun m!6668736 () Bool)

(assert (=> b!5715221 m!6668736))

(assert (=> b!5715221 m!6668724))

(declare-fun m!6668738 () Bool)

(assert (=> b!5715220 m!6668738))

(declare-fun m!6668740 () Bool)

(assert (=> d!1802540 m!6668740))

(declare-fun m!6668742 () Bool)

(assert (=> d!1802540 m!6668742))

(assert (=> d!1802540 m!6668732))

(assert (=> b!5714512 d!1802540))

(declare-fun d!1802542 () Bool)

(assert (=> d!1802542 (= (++!13908 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)) (_2!36113 lt!2277139)) (++!13908 (_1!36113 lt!2277144) (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))))))

(declare-fun lt!2277286 () Unit!156384)

(declare-fun choose!43220 (List!63438 List!63438 List!63438) Unit!156384)

(assert (=> d!1802542 (= lt!2277286 (choose!43220 (_1!36113 lt!2277144) (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(assert (=> d!1802542 (= (lemmaConcatAssociativity!2880 (_1!36113 lt!2277144) (_2!36113 lt!2277144) (_2!36113 lt!2277139)) lt!2277286)))

(declare-fun bs!1335011 () Bool)

(assert (= bs!1335011 d!1802542))

(assert (=> bs!1335011 m!6668046))

(declare-fun m!6668776 () Bool)

(assert (=> bs!1335011 m!6668776))

(assert (=> bs!1335011 m!6667966))

(assert (=> bs!1335011 m!6668046))

(declare-fun m!6668778 () Bool)

(assert (=> bs!1335011 m!6668778))

(assert (=> bs!1335011 m!6667966))

(declare-fun m!6668780 () Bool)

(assert (=> bs!1335011 m!6668780))

(assert (=> b!5714512 d!1802542))

(declare-fun d!1802552 () Bool)

(declare-fun e!3514821 () Bool)

(assert (=> d!1802552 e!3514821))

(declare-fun res!2413248 () Bool)

(assert (=> d!1802552 (=> (not res!2413248) (not e!3514821))))

(declare-fun lt!2277289 () List!63440)

(declare-fun noDuplicate!1642 (List!63440) Bool)

(assert (=> d!1802552 (= res!2413248 (noDuplicate!1642 lt!2277289))))

(declare-fun choose!43221 ((InoxSet Context!10194)) List!63440)

(assert (=> d!1802552 (= lt!2277289 (choose!43221 z!1189))))

(assert (=> d!1802552 (= (toList!9497 z!1189) lt!2277289)))

(declare-fun b!5715246 () Bool)

(declare-fun content!11500 (List!63440) (InoxSet Context!10194))

(assert (=> b!5715246 (= e!3514821 (= (content!11500 lt!2277289) z!1189))))

(assert (= (and d!1802552 res!2413248) b!5715246))

(declare-fun m!6668794 () Bool)

(assert (=> d!1802552 m!6668794))

(declare-fun m!6668796 () Bool)

(assert (=> d!1802552 m!6668796))

(declare-fun m!6668798 () Bool)

(assert (=> b!5715246 m!6668798))

(assert (=> b!5714511 d!1802552))

(declare-fun d!1802558 () Bool)

(assert (=> d!1802558 (= (isEmpty!35186 (_1!36113 lt!2277139)) ((_ is Nil!63314) (_1!36113 lt!2277139)))))

(assert (=> b!5714510 d!1802558))

(declare-fun bm!436249 () Bool)

(declare-fun call!436256 () Bool)

(declare-fun call!436255 () Bool)

(assert (=> bm!436249 (= call!436256 call!436255)))

(declare-fun b!5715293 () Bool)

(declare-fun res!2413266 () Bool)

(declare-fun e!3514858 () Bool)

(assert (=> b!5715293 (=> res!2413266 e!3514858)))

(assert (=> b!5715293 (= res!2413266 (not ((_ is Concat!24558) r!7292)))))

(declare-fun e!3514859 () Bool)

(assert (=> b!5715293 (= e!3514859 e!3514858)))

(declare-fun b!5715294 () Bool)

(declare-fun e!3514853 () Bool)

(assert (=> b!5715294 (= e!3514858 e!3514853)))

(declare-fun res!2413269 () Bool)

(assert (=> b!5715294 (=> (not res!2413269) (not e!3514853))))

(declare-fun call!436254 () Bool)

(assert (=> b!5715294 (= res!2413269 call!436254)))

(declare-fun b!5715295 () Bool)

(declare-fun res!2413265 () Bool)

(declare-fun e!3514857 () Bool)

(assert (=> b!5715295 (=> (not res!2413265) (not e!3514857))))

(assert (=> b!5715295 (= res!2413265 call!436254)))

(assert (=> b!5715295 (= e!3514859 e!3514857)))

(declare-fun b!5715296 () Bool)

(declare-fun e!3514856 () Bool)

(assert (=> b!5715296 (= e!3514856 call!436255)))

(declare-fun b!5715297 () Bool)

(assert (=> b!5715297 (= e!3514853 call!436256)))

(declare-fun b!5715298 () Bool)

(assert (=> b!5715298 (= e!3514857 call!436256)))

(declare-fun d!1802562 () Bool)

(declare-fun res!2413268 () Bool)

(declare-fun e!3514854 () Bool)

(assert (=> d!1802562 (=> res!2413268 e!3514854)))

(assert (=> d!1802562 (= res!2413268 ((_ is ElementMatch!15713) r!7292))))

(assert (=> d!1802562 (= (validRegex!7449 r!7292) e!3514854)))

(declare-fun b!5715299 () Bool)

(declare-fun e!3514855 () Bool)

(assert (=> b!5715299 (= e!3514855 e!3514859)))

(declare-fun c!1007491 () Bool)

(assert (=> b!5715299 (= c!1007491 ((_ is Union!15713) r!7292))))

(declare-fun bm!436250 () Bool)

(declare-fun c!1007490 () Bool)

(assert (=> bm!436250 (= call!436255 (validRegex!7449 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))))))

(declare-fun bm!436251 () Bool)

(assert (=> bm!436251 (= call!436254 (validRegex!7449 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))))))

(declare-fun b!5715300 () Bool)

(assert (=> b!5715300 (= e!3514855 e!3514856)))

(declare-fun res!2413267 () Bool)

(assert (=> b!5715300 (= res!2413267 (not (nullable!5745 (reg!16042 r!7292))))))

(assert (=> b!5715300 (=> (not res!2413267) (not e!3514856))))

(declare-fun b!5715301 () Bool)

(assert (=> b!5715301 (= e!3514854 e!3514855)))

(assert (=> b!5715301 (= c!1007490 ((_ is Star!15713) r!7292))))

(assert (= (and d!1802562 (not res!2413268)) b!5715301))

(assert (= (and b!5715301 c!1007490) b!5715300))

(assert (= (and b!5715301 (not c!1007490)) b!5715299))

(assert (= (and b!5715300 res!2413267) b!5715296))

(assert (= (and b!5715299 c!1007491) b!5715295))

(assert (= (and b!5715299 (not c!1007491)) b!5715293))

(assert (= (and b!5715295 res!2413265) b!5715298))

(assert (= (and b!5715293 (not res!2413266)) b!5715294))

(assert (= (and b!5715294 res!2413269) b!5715297))

(assert (= (or b!5715298 b!5715297) bm!436249))

(assert (= (or b!5715295 b!5715294) bm!436251))

(assert (= (or b!5715296 bm!436249) bm!436250))

(declare-fun m!6668848 () Bool)

(assert (=> bm!436250 m!6668848))

(declare-fun m!6668850 () Bool)

(assert (=> bm!436251 m!6668850))

(declare-fun m!6668852 () Bool)

(assert (=> b!5715300 m!6668852))

(assert (=> start!588364 d!1802562))

(declare-fun d!1802584 () Bool)

(declare-fun c!1007494 () Bool)

(assert (=> d!1802584 (= c!1007494 (isEmpty!35186 s!2326))))

(declare-fun e!3514862 () Bool)

(assert (=> d!1802584 (= (matchZipper!1851 lt!2277101 s!2326) e!3514862)))

(declare-fun b!5715306 () Bool)

(declare-fun nullableZipper!1663 ((InoxSet Context!10194)) Bool)

(assert (=> b!5715306 (= e!3514862 (nullableZipper!1663 lt!2277101))))

(declare-fun b!5715307 () Bool)

(assert (=> b!5715307 (= e!3514862 (matchZipper!1851 (derivationStepZipper!1796 lt!2277101 (head!12105 s!2326)) (tail!11200 s!2326)))))

(assert (= (and d!1802584 c!1007494) b!5715306))

(assert (= (and d!1802584 (not c!1007494)) b!5715307))

(assert (=> d!1802584 m!6668190))

(declare-fun m!6668858 () Bool)

(assert (=> b!5715306 m!6668858))

(assert (=> b!5715307 m!6668202))

(assert (=> b!5715307 m!6668202))

(declare-fun m!6668862 () Bool)

(assert (=> b!5715307 m!6668862))

(assert (=> b!5715307 m!6668206))

(assert (=> b!5715307 m!6668862))

(assert (=> b!5715307 m!6668206))

(declare-fun m!6668864 () Bool)

(assert (=> b!5715307 m!6668864))

(assert (=> b!5714530 d!1802584))

(declare-fun d!1802588 () Bool)

(declare-fun c!1007498 () Bool)

(assert (=> d!1802588 (= c!1007498 (isEmpty!35186 (t!376758 s!2326)))))

(declare-fun e!3514870 () Bool)

(assert (=> d!1802588 (= (matchZipper!1851 lt!2277143 (t!376758 s!2326)) e!3514870)))

(declare-fun b!5715322 () Bool)

(assert (=> b!5715322 (= e!3514870 (nullableZipper!1663 lt!2277143))))

(declare-fun b!5715323 () Bool)

(assert (=> b!5715323 (= e!3514870 (matchZipper!1851 (derivationStepZipper!1796 lt!2277143 (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))))))

(assert (= (and d!1802588 c!1007498) b!5715322))

(assert (= (and d!1802588 (not c!1007498)) b!5715323))

(declare-fun m!6668866 () Bool)

(assert (=> d!1802588 m!6668866))

(declare-fun m!6668868 () Bool)

(assert (=> b!5715322 m!6668868))

(declare-fun m!6668870 () Bool)

(assert (=> b!5715323 m!6668870))

(assert (=> b!5715323 m!6668870))

(declare-fun m!6668872 () Bool)

(assert (=> b!5715323 m!6668872))

(declare-fun m!6668874 () Bool)

(assert (=> b!5715323 m!6668874))

(assert (=> b!5715323 m!6668872))

(assert (=> b!5715323 m!6668874))

(declare-fun m!6668876 () Bool)

(assert (=> b!5715323 m!6668876))

(assert (=> b!5714530 d!1802588))

(declare-fun d!1802590 () Bool)

(assert (=> d!1802590 (= (flatMap!1326 lt!2277101 lambda!308681) (choose!43218 lt!2277101 lambda!308681))))

(declare-fun bs!1335048 () Bool)

(assert (= bs!1335048 d!1802590))

(declare-fun m!6668878 () Bool)

(assert (=> bs!1335048 m!6668878))

(assert (=> b!5714508 d!1802590))

(declare-fun b!5715324 () Bool)

(declare-fun e!3514872 () Bool)

(assert (=> b!5715324 (= e!3514872 (nullable!5745 (h!69763 (exprs!5597 lt!2277095))))))

(declare-fun d!1802592 () Bool)

(declare-fun c!1007499 () Bool)

(assert (=> d!1802592 (= c!1007499 e!3514872)))

(declare-fun res!2413278 () Bool)

(assert (=> d!1802592 (=> (not res!2413278) (not e!3514872))))

(assert (=> d!1802592 (= res!2413278 ((_ is Cons!63315) (exprs!5597 lt!2277095)))))

(declare-fun e!3514873 () (InoxSet Context!10194))

(assert (=> d!1802592 (= (derivationStepZipperUp!981 lt!2277095 (h!69762 s!2326)) e!3514873)))

(declare-fun call!436258 () (InoxSet Context!10194))

(declare-fun b!5715325 () Bool)

(assert (=> b!5715325 (= e!3514873 ((_ map or) call!436258 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277095))) (h!69762 s!2326))))))

(declare-fun b!5715326 () Bool)

(declare-fun e!3514871 () (InoxSet Context!10194))

(assert (=> b!5715326 (= e!3514871 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436253 () Bool)

(assert (=> bm!436253 (= call!436258 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277095)) (Context!10195 (t!376759 (exprs!5597 lt!2277095))) (h!69762 s!2326)))))

(declare-fun b!5715327 () Bool)

(assert (=> b!5715327 (= e!3514871 call!436258)))

(declare-fun b!5715328 () Bool)

(assert (=> b!5715328 (= e!3514873 e!3514871)))

(declare-fun c!1007500 () Bool)

(assert (=> b!5715328 (= c!1007500 ((_ is Cons!63315) (exprs!5597 lt!2277095)))))

(assert (= (and d!1802592 res!2413278) b!5715324))

(assert (= (and d!1802592 c!1007499) b!5715325))

(assert (= (and d!1802592 (not c!1007499)) b!5715328))

(assert (= (and b!5715328 c!1007500) b!5715327))

(assert (= (and b!5715328 (not c!1007500)) b!5715326))

(assert (= (or b!5715325 b!5715327) bm!436253))

(declare-fun m!6668886 () Bool)

(assert (=> b!5715324 m!6668886))

(declare-fun m!6668888 () Bool)

(assert (=> b!5715325 m!6668888))

(declare-fun m!6668890 () Bool)

(assert (=> bm!436253 m!6668890))

(assert (=> b!5714508 d!1802592))

(declare-fun d!1802594 () Bool)

(assert (=> d!1802594 (= (flatMap!1326 lt!2277101 lambda!308681) (dynLambda!24772 lambda!308681 lt!2277095))))

(declare-fun lt!2277294 () Unit!156384)

(assert (=> d!1802594 (= lt!2277294 (choose!43219 lt!2277101 lt!2277095 lambda!308681))))

(assert (=> d!1802594 (= lt!2277101 (store ((as const (Array Context!10194 Bool)) false) lt!2277095 true))))

(assert (=> d!1802594 (= (lemmaFlatMapOnSingletonSet!858 lt!2277101 lt!2277095 lambda!308681) lt!2277294)))

(declare-fun b_lambda!215957 () Bool)

(assert (=> (not b_lambda!215957) (not d!1802594)))

(declare-fun bs!1335050 () Bool)

(assert (= bs!1335050 d!1802594))

(assert (=> bs!1335050 m!6667910))

(declare-fun m!6668894 () Bool)

(assert (=> bs!1335050 m!6668894))

(declare-fun m!6668896 () Bool)

(assert (=> bs!1335050 m!6668896))

(assert (=> bs!1335050 m!6667912))

(assert (=> b!5714508 d!1802594))

(declare-fun bs!1335052 () Bool)

(declare-fun d!1802600 () Bool)

(assert (= bs!1335052 (and d!1802600 b!5714534)))

(declare-fun lambda!308755 () Int)

(assert (=> bs!1335052 (= lambda!308755 lambda!308681)))

(assert (=> d!1802600 true))

(assert (=> d!1802600 (= (derivationStepZipper!1796 lt!2277101 (h!69762 s!2326)) (flatMap!1326 lt!2277101 lambda!308755))))

(declare-fun bs!1335053 () Bool)

(assert (= bs!1335053 d!1802600))

(declare-fun m!6668912 () Bool)

(assert (=> bs!1335053 m!6668912))

(assert (=> b!5714508 d!1802600))

(declare-fun bs!1335054 () Bool)

(declare-fun d!1802606 () Bool)

(assert (= bs!1335054 (and d!1802606 b!5714528)))

(declare-fun lambda!308758 () Int)

(assert (=> bs!1335054 (= lambda!308758 lambda!308687)))

(assert (=> d!1802606 (matchZipper!1851 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119))) true) (++!13908 (_1!36113 lt!2277144) lt!2277140))))

(declare-fun lt!2277303 () Unit!156384)

(assert (=> d!1802606 (= lt!2277303 (lemmaConcatPreservesForall!288 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119) lambda!308758))))

(declare-fun lt!2277302 () Unit!156384)

(declare-fun choose!43222 (Context!10194 Context!10194 List!63438 List!63438) Unit!156384)

(assert (=> d!1802606 (= lt!2277302 (choose!43222 lt!2277124 lt!2277119 (_1!36113 lt!2277144) lt!2277140))))

(assert (=> d!1802606 (matchZipper!1851 (store ((as const (Array Context!10194 Bool)) false) lt!2277124 true) (_1!36113 lt!2277144))))

(assert (=> d!1802606 (= (lemmaConcatenateContextMatchesConcatOfStrings!128 lt!2277124 lt!2277119 (_1!36113 lt!2277144) lt!2277140) lt!2277302)))

(declare-fun bs!1335055 () Bool)

(assert (= bs!1335055 d!1802606))

(assert (=> bs!1335055 m!6667962))

(declare-fun m!6668920 () Bool)

(assert (=> bs!1335055 m!6668920))

(assert (=> bs!1335055 m!6667890))

(declare-fun m!6668922 () Bool)

(assert (=> bs!1335055 m!6668922))

(assert (=> bs!1335055 m!6667890))

(declare-fun m!6668924 () Bool)

(assert (=> bs!1335055 m!6668924))

(declare-fun m!6668926 () Bool)

(assert (=> bs!1335055 m!6668926))

(assert (=> bs!1335055 m!6668922))

(assert (=> bs!1335055 m!6667962))

(declare-fun m!6668928 () Bool)

(assert (=> bs!1335055 m!6668928))

(declare-fun m!6668930 () Bool)

(assert (=> bs!1335055 m!6668930))

(assert (=> b!5714528 d!1802606))

(declare-fun d!1802608 () Bool)

(declare-fun c!1007512 () Bool)

(assert (=> d!1802608 (= c!1007512 (isEmpty!35186 lt!2277105))))

(declare-fun e!3514909 () Bool)

(assert (=> d!1802608 (= (matchZipper!1851 lt!2277101 lt!2277105) e!3514909)))

(declare-fun b!5715395 () Bool)

(assert (=> b!5715395 (= e!3514909 (nullableZipper!1663 lt!2277101))))

(declare-fun b!5715396 () Bool)

(assert (=> b!5715396 (= e!3514909 (matchZipper!1851 (derivationStepZipper!1796 lt!2277101 (head!12105 lt!2277105)) (tail!11200 lt!2277105)))))

(assert (= (and d!1802608 c!1007512) b!5715395))

(assert (= (and d!1802608 (not c!1007512)) b!5715396))

(declare-fun m!6668932 () Bool)

(assert (=> d!1802608 m!6668932))

(assert (=> b!5715395 m!6668858))

(declare-fun m!6668934 () Bool)

(assert (=> b!5715396 m!6668934))

(assert (=> b!5715396 m!6668934))

(declare-fun m!6668936 () Bool)

(assert (=> b!5715396 m!6668936))

(declare-fun m!6668938 () Bool)

(assert (=> b!5715396 m!6668938))

(assert (=> b!5715396 m!6668936))

(assert (=> b!5715396 m!6668938))

(declare-fun m!6668940 () Bool)

(assert (=> b!5715396 m!6668940))

(assert (=> b!5714528 d!1802608))

(declare-fun d!1802610 () Bool)

(assert (=> d!1802610 (= (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144)) (matchZipper!1851 lt!2277108 (_1!36113 lt!2277144)))))

(declare-fun lt!2277306 () Unit!156384)

(declare-fun choose!43223 ((InoxSet Context!10194) List!63440 Regex!15713 List!63438) Unit!156384)

(assert (=> d!1802610 (= lt!2277306 (choose!43223 lt!2277108 lt!2277094 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144)))))

(assert (=> d!1802610 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1802610 (= (theoremZipperRegexEquiv!649 lt!2277108 lt!2277094 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144)) lt!2277306)))

(declare-fun bs!1335060 () Bool)

(assert (= bs!1335060 d!1802610))

(assert (=> bs!1335060 m!6667908))

(assert (=> bs!1335060 m!6667950))

(declare-fun m!6668946 () Bool)

(assert (=> bs!1335060 m!6668946))

(declare-fun m!6668948 () Bool)

(assert (=> bs!1335060 m!6668948))

(assert (=> b!5714528 d!1802610))

(declare-fun b!5715428 () Bool)

(declare-fun res!2413303 () Bool)

(declare-fun e!3514931 () Bool)

(assert (=> b!5715428 (=> (not res!2413303) (not e!3514931))))

(assert (=> b!5715428 (= res!2413303 (isEmpty!35186 (tail!11200 lt!2277105)))))

(declare-fun b!5715429 () Bool)

(declare-fun res!2413306 () Bool)

(assert (=> b!5715429 (=> (not res!2413306) (not e!3514931))))

(declare-fun call!436269 () Bool)

(assert (=> b!5715429 (= res!2413306 (not call!436269))))

(declare-fun b!5715430 () Bool)

(declare-fun res!2413308 () Bool)

(declare-fun e!3514928 () Bool)

(assert (=> b!5715430 (=> res!2413308 e!3514928)))

(assert (=> b!5715430 (= res!2413308 e!3514931)))

(declare-fun res!2413307 () Bool)

(assert (=> b!5715430 (=> (not res!2413307) (not e!3514931))))

(declare-fun lt!2277307 () Bool)

(assert (=> b!5715430 (= res!2413307 lt!2277307)))

(declare-fun d!1802620 () Bool)

(declare-fun e!3514930 () Bool)

(assert (=> d!1802620 e!3514930))

(declare-fun c!1007515 () Bool)

(assert (=> d!1802620 (= c!1007515 ((_ is EmptyExpr!15713) lt!2277132))))

(declare-fun e!3514929 () Bool)

(assert (=> d!1802620 (= lt!2277307 e!3514929)))

(declare-fun c!1007514 () Bool)

(assert (=> d!1802620 (= c!1007514 (isEmpty!35186 lt!2277105))))

(assert (=> d!1802620 (validRegex!7449 lt!2277132)))

(assert (=> d!1802620 (= (matchR!7898 lt!2277132 lt!2277105) lt!2277307)))

(declare-fun b!5715431 () Bool)

(declare-fun e!3514932 () Bool)

(declare-fun e!3514927 () Bool)

(assert (=> b!5715431 (= e!3514932 e!3514927)))

(declare-fun res!2413309 () Bool)

(assert (=> b!5715431 (=> res!2413309 e!3514927)))

(assert (=> b!5715431 (= res!2413309 call!436269)))

(declare-fun b!5715432 () Bool)

(assert (=> b!5715432 (= e!3514929 (nullable!5745 lt!2277132))))

(declare-fun b!5715433 () Bool)

(declare-fun res!2413305 () Bool)

(assert (=> b!5715433 (=> res!2413305 e!3514928)))

(assert (=> b!5715433 (= res!2413305 (not ((_ is ElementMatch!15713) lt!2277132)))))

(declare-fun e!3514926 () Bool)

(assert (=> b!5715433 (= e!3514926 e!3514928)))

(declare-fun b!5715434 () Bool)

(assert (=> b!5715434 (= e!3514929 (matchR!7898 (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105)) (tail!11200 lt!2277105)))))

(declare-fun b!5715435 () Bool)

(declare-fun res!2413302 () Bool)

(assert (=> b!5715435 (=> res!2413302 e!3514927)))

(assert (=> b!5715435 (= res!2413302 (not (isEmpty!35186 (tail!11200 lt!2277105))))))

(declare-fun bm!436264 () Bool)

(assert (=> bm!436264 (= call!436269 (isEmpty!35186 lt!2277105))))

(declare-fun b!5715436 () Bool)

(assert (=> b!5715436 (= e!3514930 e!3514926)))

(declare-fun c!1007513 () Bool)

(assert (=> b!5715436 (= c!1007513 ((_ is EmptyLang!15713) lt!2277132))))

(declare-fun b!5715437 () Bool)

(assert (=> b!5715437 (= e!3514928 e!3514932)))

(declare-fun res!2413304 () Bool)

(assert (=> b!5715437 (=> (not res!2413304) (not e!3514932))))

(assert (=> b!5715437 (= res!2413304 (not lt!2277307))))

(declare-fun b!5715438 () Bool)

(assert (=> b!5715438 (= e!3514926 (not lt!2277307))))

(declare-fun b!5715439 () Bool)

(assert (=> b!5715439 (= e!3514931 (= (head!12105 lt!2277105) (c!1007275 lt!2277132)))))

(declare-fun b!5715440 () Bool)

(assert (=> b!5715440 (= e!3514930 (= lt!2277307 call!436269))))

(declare-fun b!5715441 () Bool)

(assert (=> b!5715441 (= e!3514927 (not (= (head!12105 lt!2277105) (c!1007275 lt!2277132))))))

(assert (= (and d!1802620 c!1007514) b!5715432))

(assert (= (and d!1802620 (not c!1007514)) b!5715434))

(assert (= (and d!1802620 c!1007515) b!5715440))

(assert (= (and d!1802620 (not c!1007515)) b!5715436))

(assert (= (and b!5715436 c!1007513) b!5715438))

(assert (= (and b!5715436 (not c!1007513)) b!5715433))

(assert (= (and b!5715433 (not res!2413305)) b!5715430))

(assert (= (and b!5715430 res!2413307) b!5715429))

(assert (= (and b!5715429 res!2413306) b!5715428))

(assert (= (and b!5715428 res!2413303) b!5715439))

(assert (= (and b!5715430 (not res!2413308)) b!5715437))

(assert (= (and b!5715437 res!2413304) b!5715431))

(assert (= (and b!5715431 (not res!2413309)) b!5715435))

(assert (= (and b!5715435 (not res!2413302)) b!5715441))

(assert (= (or b!5715440 b!5715429 b!5715431) bm!436264))

(assert (=> b!5715432 m!6668198))

(assert (=> d!1802620 m!6668932))

(assert (=> d!1802620 m!6668200))

(assert (=> b!5715441 m!6668934))

(assert (=> b!5715434 m!6668934))

(assert (=> b!5715434 m!6668934))

(declare-fun m!6668950 () Bool)

(assert (=> b!5715434 m!6668950))

(assert (=> b!5715434 m!6668938))

(assert (=> b!5715434 m!6668950))

(assert (=> b!5715434 m!6668938))

(declare-fun m!6668952 () Bool)

(assert (=> b!5715434 m!6668952))

(assert (=> b!5715428 m!6668938))

(assert (=> b!5715428 m!6668938))

(declare-fun m!6668954 () Bool)

(assert (=> b!5715428 m!6668954))

(assert (=> b!5715435 m!6668938))

(assert (=> b!5715435 m!6668938))

(assert (=> b!5715435 m!6668954))

(assert (=> b!5715439 m!6668934))

(assert (=> bm!436264 m!6668932))

(assert (=> b!5714528 d!1802620))

(declare-fun d!1802622 () Bool)

(declare-fun forall!14848 (List!63439 Int) Bool)

(assert (=> d!1802622 (forall!14848 (++!13909 lt!2277136 lt!2277109) lambda!308687)))

(declare-fun lt!2277310 () Unit!156384)

(declare-fun choose!43225 (List!63439 List!63439 Int) Unit!156384)

(assert (=> d!1802622 (= lt!2277310 (choose!43225 lt!2277136 lt!2277109 lambda!308687))))

(assert (=> d!1802622 (forall!14848 lt!2277136 lambda!308687)))

(assert (=> d!1802622 (= (lemmaConcatPreservesForall!288 lt!2277136 lt!2277109 lambda!308687) lt!2277310)))

(declare-fun bs!1335061 () Bool)

(assert (= bs!1335061 d!1802622))

(assert (=> bs!1335061 m!6667944))

(assert (=> bs!1335061 m!6667944))

(declare-fun m!6668956 () Bool)

(assert (=> bs!1335061 m!6668956))

(declare-fun m!6668958 () Bool)

(assert (=> bs!1335061 m!6668958))

(declare-fun m!6668960 () Bool)

(assert (=> bs!1335061 m!6668960))

(assert (=> b!5714528 d!1802622))

(declare-fun b!5715452 () Bool)

(declare-fun res!2413314 () Bool)

(declare-fun e!3514937 () Bool)

(assert (=> b!5715452 (=> (not res!2413314) (not e!3514937))))

(declare-fun lt!2277313 () List!63439)

(declare-fun size!40025 (List!63439) Int)

(assert (=> b!5715452 (= res!2413314 (= (size!40025 lt!2277313) (+ (size!40025 lt!2277136) (size!40025 lt!2277109))))))

(declare-fun b!5715453 () Bool)

(assert (=> b!5715453 (= e!3514937 (or (not (= lt!2277109 Nil!63315)) (= lt!2277313 lt!2277136)))))

(declare-fun d!1802624 () Bool)

(assert (=> d!1802624 e!3514937))

(declare-fun res!2413315 () Bool)

(assert (=> d!1802624 (=> (not res!2413315) (not e!3514937))))

(declare-fun content!11502 (List!63439) (InoxSet Regex!15713))

(assert (=> d!1802624 (= res!2413315 (= (content!11502 lt!2277313) ((_ map or) (content!11502 lt!2277136) (content!11502 lt!2277109))))))

(declare-fun e!3514938 () List!63439)

(assert (=> d!1802624 (= lt!2277313 e!3514938)))

(declare-fun c!1007518 () Bool)

(assert (=> d!1802624 (= c!1007518 ((_ is Nil!63315) lt!2277136))))

(assert (=> d!1802624 (= (++!13909 lt!2277136 lt!2277109) lt!2277313)))

(declare-fun b!5715450 () Bool)

(assert (=> b!5715450 (= e!3514938 lt!2277109)))

(declare-fun b!5715451 () Bool)

(assert (=> b!5715451 (= e!3514938 (Cons!63315 (h!69763 lt!2277136) (++!13909 (t!376759 lt!2277136) lt!2277109)))))

(assert (= (and d!1802624 c!1007518) b!5715450))

(assert (= (and d!1802624 (not c!1007518)) b!5715451))

(assert (= (and d!1802624 res!2413315) b!5715452))

(assert (= (and b!5715452 res!2413314) b!5715453))

(declare-fun m!6668962 () Bool)

(assert (=> b!5715452 m!6668962))

(declare-fun m!6668964 () Bool)

(assert (=> b!5715452 m!6668964))

(declare-fun m!6668966 () Bool)

(assert (=> b!5715452 m!6668966))

(declare-fun m!6668968 () Bool)

(assert (=> d!1802624 m!6668968))

(declare-fun m!6668970 () Bool)

(assert (=> d!1802624 m!6668970))

(declare-fun m!6668972 () Bool)

(assert (=> d!1802624 m!6668972))

(declare-fun m!6668974 () Bool)

(assert (=> b!5715451 m!6668974))

(assert (=> b!5714528 d!1802624))

(declare-fun b!5715454 () Bool)

(declare-fun res!2413317 () Bool)

(declare-fun e!3514944 () Bool)

(assert (=> b!5715454 (=> (not res!2413317) (not e!3514944))))

(assert (=> b!5715454 (= res!2413317 (isEmpty!35186 (tail!11200 lt!2277140)))))

(declare-fun b!5715455 () Bool)

(declare-fun res!2413320 () Bool)

(assert (=> b!5715455 (=> (not res!2413320) (not e!3514944))))

(declare-fun call!436270 () Bool)

(assert (=> b!5715455 (= res!2413320 (not call!436270))))

(declare-fun b!5715456 () Bool)

(declare-fun res!2413322 () Bool)

(declare-fun e!3514941 () Bool)

(assert (=> b!5715456 (=> res!2413322 e!3514941)))

(assert (=> b!5715456 (= res!2413322 e!3514944)))

(declare-fun res!2413321 () Bool)

(assert (=> b!5715456 (=> (not res!2413321) (not e!3514944))))

(declare-fun lt!2277314 () Bool)

(assert (=> b!5715456 (= res!2413321 lt!2277314)))

(declare-fun d!1802626 () Bool)

(declare-fun e!3514943 () Bool)

(assert (=> d!1802626 e!3514943))

(declare-fun c!1007521 () Bool)

(assert (=> d!1802626 (= c!1007521 ((_ is EmptyExpr!15713) lt!2277138))))

(declare-fun e!3514942 () Bool)

(assert (=> d!1802626 (= lt!2277314 e!3514942)))

(declare-fun c!1007520 () Bool)

(assert (=> d!1802626 (= c!1007520 (isEmpty!35186 lt!2277140))))

(assert (=> d!1802626 (validRegex!7449 lt!2277138)))

(assert (=> d!1802626 (= (matchR!7898 lt!2277138 lt!2277140) lt!2277314)))

(declare-fun b!5715457 () Bool)

(declare-fun e!3514945 () Bool)

(declare-fun e!3514940 () Bool)

(assert (=> b!5715457 (= e!3514945 e!3514940)))

(declare-fun res!2413323 () Bool)

(assert (=> b!5715457 (=> res!2413323 e!3514940)))

(assert (=> b!5715457 (= res!2413323 call!436270)))

(declare-fun b!5715458 () Bool)

(assert (=> b!5715458 (= e!3514942 (nullable!5745 lt!2277138))))

(declare-fun b!5715459 () Bool)

(declare-fun res!2413319 () Bool)

(assert (=> b!5715459 (=> res!2413319 e!3514941)))

(assert (=> b!5715459 (= res!2413319 (not ((_ is ElementMatch!15713) lt!2277138)))))

(declare-fun e!3514939 () Bool)

(assert (=> b!5715459 (= e!3514939 e!3514941)))

(declare-fun b!5715460 () Bool)

(assert (=> b!5715460 (= e!3514942 (matchR!7898 (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140)) (tail!11200 lt!2277140)))))

(declare-fun b!5715461 () Bool)

(declare-fun res!2413316 () Bool)

(assert (=> b!5715461 (=> res!2413316 e!3514940)))

(assert (=> b!5715461 (= res!2413316 (not (isEmpty!35186 (tail!11200 lt!2277140))))))

(declare-fun bm!436265 () Bool)

(assert (=> bm!436265 (= call!436270 (isEmpty!35186 lt!2277140))))

(declare-fun b!5715462 () Bool)

(assert (=> b!5715462 (= e!3514943 e!3514939)))

(declare-fun c!1007519 () Bool)

(assert (=> b!5715462 (= c!1007519 ((_ is EmptyLang!15713) lt!2277138))))

(declare-fun b!5715463 () Bool)

(assert (=> b!5715463 (= e!3514941 e!3514945)))

(declare-fun res!2413318 () Bool)

(assert (=> b!5715463 (=> (not res!2413318) (not e!3514945))))

(assert (=> b!5715463 (= res!2413318 (not lt!2277314))))

(declare-fun b!5715464 () Bool)

(assert (=> b!5715464 (= e!3514939 (not lt!2277314))))

(declare-fun b!5715465 () Bool)

(assert (=> b!5715465 (= e!3514944 (= (head!12105 lt!2277140) (c!1007275 lt!2277138)))))

(declare-fun b!5715466 () Bool)

(assert (=> b!5715466 (= e!3514943 (= lt!2277314 call!436270))))

(declare-fun b!5715467 () Bool)

(assert (=> b!5715467 (= e!3514940 (not (= (head!12105 lt!2277140) (c!1007275 lt!2277138))))))

(assert (= (and d!1802626 c!1007520) b!5715458))

(assert (= (and d!1802626 (not c!1007520)) b!5715460))

(assert (= (and d!1802626 c!1007521) b!5715466))

(assert (= (and d!1802626 (not c!1007521)) b!5715462))

(assert (= (and b!5715462 c!1007519) b!5715464))

(assert (= (and b!5715462 (not c!1007519)) b!5715459))

(assert (= (and b!5715459 (not res!2413319)) b!5715456))

(assert (= (and b!5715456 res!2413321) b!5715455))

(assert (= (and b!5715455 res!2413320) b!5715454))

(assert (= (and b!5715454 res!2413317) b!5715465))

(assert (= (and b!5715456 (not res!2413322)) b!5715463))

(assert (= (and b!5715463 res!2413318) b!5715457))

(assert (= (and b!5715457 (not res!2413323)) b!5715461))

(assert (= (and b!5715461 (not res!2413316)) b!5715467))

(assert (= (or b!5715466 b!5715455 b!5715457) bm!436265))

(declare-fun m!6668976 () Bool)

(assert (=> b!5715458 m!6668976))

(declare-fun m!6668978 () Bool)

(assert (=> d!1802626 m!6668978))

(declare-fun m!6668980 () Bool)

(assert (=> d!1802626 m!6668980))

(declare-fun m!6668982 () Bool)

(assert (=> b!5715467 m!6668982))

(assert (=> b!5715460 m!6668982))

(assert (=> b!5715460 m!6668982))

(declare-fun m!6668984 () Bool)

(assert (=> b!5715460 m!6668984))

(declare-fun m!6668986 () Bool)

(assert (=> b!5715460 m!6668986))

(assert (=> b!5715460 m!6668984))

(assert (=> b!5715460 m!6668986))

(declare-fun m!6668988 () Bool)

(assert (=> b!5715460 m!6668988))

(assert (=> b!5715454 m!6668986))

(assert (=> b!5715454 m!6668986))

(declare-fun m!6668990 () Bool)

(assert (=> b!5715454 m!6668990))

(assert (=> b!5715461 m!6668986))

(assert (=> b!5715461 m!6668986))

(assert (=> b!5715461 m!6668990))

(assert (=> b!5715465 m!6668982))

(assert (=> bm!436265 m!6668978))

(assert (=> b!5714528 d!1802626))

(declare-fun d!1802628 () Bool)

(assert (=> d!1802628 (matchR!7898 (Star!15713 (reg!16042 (regOne!31938 r!7292))) (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))

(declare-fun lt!2277317 () Unit!156384)

(declare-fun choose!43226 (Regex!15713 List!63438 List!63438) Unit!156384)

(assert (=> d!1802628 (= lt!2277317 (choose!43226 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))

(assert (=> d!1802628 (validRegex!7449 (Star!15713 (reg!16042 (regOne!31938 r!7292))))))

(assert (=> d!1802628 (= (lemmaStarApp!92 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144) (_2!36113 lt!2277144)) lt!2277317)))

(declare-fun bs!1335062 () Bool)

(assert (= bs!1335062 d!1802628))

(assert (=> bs!1335062 m!6668046))

(assert (=> bs!1335062 m!6668046))

(declare-fun m!6668992 () Bool)

(assert (=> bs!1335062 m!6668992))

(declare-fun m!6668994 () Bool)

(assert (=> bs!1335062 m!6668994))

(declare-fun m!6668996 () Bool)

(assert (=> bs!1335062 m!6668996))

(assert (=> b!5714528 d!1802628))

(declare-fun d!1802630 () Bool)

(declare-fun c!1007522 () Bool)

(assert (=> d!1802630 (= c!1007522 (isEmpty!35186 (_1!36113 lt!2277144)))))

(declare-fun e!3514946 () Bool)

(assert (=> d!1802630 (= (matchZipper!1851 lt!2277108 (_1!36113 lt!2277144)) e!3514946)))

(declare-fun b!5715468 () Bool)

(assert (=> b!5715468 (= e!3514946 (nullableZipper!1663 lt!2277108))))

(declare-fun b!5715469 () Bool)

(assert (=> b!5715469 (= e!3514946 (matchZipper!1851 (derivationStepZipper!1796 lt!2277108 (head!12105 (_1!36113 lt!2277144))) (tail!11200 (_1!36113 lt!2277144))))))

(assert (= (and d!1802630 c!1007522) b!5715468))

(assert (= (and d!1802630 (not c!1007522)) b!5715469))

(declare-fun m!6668998 () Bool)

(assert (=> d!1802630 m!6668998))

(declare-fun m!6669000 () Bool)

(assert (=> b!5715468 m!6669000))

(declare-fun m!6669002 () Bool)

(assert (=> b!5715469 m!6669002))

(assert (=> b!5715469 m!6669002))

(declare-fun m!6669004 () Bool)

(assert (=> b!5715469 m!6669004))

(declare-fun m!6669006 () Bool)

(assert (=> b!5715469 m!6669006))

(assert (=> b!5715469 m!6669004))

(assert (=> b!5715469 m!6669006))

(declare-fun m!6669008 () Bool)

(assert (=> b!5715469 m!6669008))

(assert (=> b!5714528 d!1802630))

(declare-fun d!1802632 () Bool)

(declare-fun c!1007523 () Bool)

(assert (=> d!1802632 (= c!1007523 (isEmpty!35186 lt!2277105))))

(declare-fun e!3514947 () Bool)

(assert (=> d!1802632 (= (matchZipper!1851 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) lt!2277105) e!3514947)))

(declare-fun b!5715470 () Bool)

(assert (=> b!5715470 (= e!3514947 (nullableZipper!1663 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true)))))

(declare-fun b!5715471 () Bool)

(assert (=> b!5715471 (= e!3514947 (matchZipper!1851 (derivationStepZipper!1796 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) (head!12105 lt!2277105)) (tail!11200 lt!2277105)))))

(assert (= (and d!1802632 c!1007523) b!5715470))

(assert (= (and d!1802632 (not c!1007523)) b!5715471))

(assert (=> d!1802632 m!6668932))

(assert (=> b!5715470 m!6667936))

(declare-fun m!6669010 () Bool)

(assert (=> b!5715470 m!6669010))

(assert (=> b!5715471 m!6668934))

(assert (=> b!5715471 m!6667936))

(assert (=> b!5715471 m!6668934))

(declare-fun m!6669012 () Bool)

(assert (=> b!5715471 m!6669012))

(assert (=> b!5715471 m!6668938))

(assert (=> b!5715471 m!6669012))

(assert (=> b!5715471 m!6668938))

(declare-fun m!6669014 () Bool)

(assert (=> b!5715471 m!6669014))

(assert (=> b!5714528 d!1802632))

(declare-fun d!1802634 () Bool)

(assert (=> d!1802634 (matchR!7898 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138) (++!13908 (_1!36113 lt!2277144) lt!2277140))))

(declare-fun lt!2277320 () Unit!156384)

(declare-fun choose!43227 (Regex!15713 Regex!15713 List!63438 List!63438) Unit!156384)

(assert (=> d!1802634 (= lt!2277320 (choose!43227 (reg!16042 (regOne!31938 r!7292)) lt!2277138 (_1!36113 lt!2277144) lt!2277140))))

(declare-fun e!3514950 () Bool)

(assert (=> d!1802634 e!3514950))

(declare-fun res!2413326 () Bool)

(assert (=> d!1802634 (=> (not res!2413326) (not e!3514950))))

(assert (=> d!1802634 (= res!2413326 (validRegex!7449 (reg!16042 (regOne!31938 r!7292))))))

(assert (=> d!1802634 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!268 (reg!16042 (regOne!31938 r!7292)) lt!2277138 (_1!36113 lt!2277144) lt!2277140) lt!2277320)))

(declare-fun b!5715474 () Bool)

(assert (=> b!5715474 (= e!3514950 (validRegex!7449 lt!2277138))))

(assert (= (and d!1802634 res!2413326) b!5715474))

(assert (=> d!1802634 m!6667962))

(assert (=> d!1802634 m!6667962))

(declare-fun m!6669016 () Bool)

(assert (=> d!1802634 m!6669016))

(declare-fun m!6669018 () Bool)

(assert (=> d!1802634 m!6669018))

(assert (=> d!1802634 m!6668948))

(assert (=> b!5715474 m!6668980))

(assert (=> b!5714528 d!1802634))

(declare-fun d!1802636 () Bool)

(assert (=> d!1802636 (= (matchR!7898 lt!2277138 lt!2277140) (matchZipper!1851 lt!2277134 lt!2277140))))

(declare-fun lt!2277321 () Unit!156384)

(assert (=> d!1802636 (= lt!2277321 (choose!43223 lt!2277134 lt!2277128 lt!2277138 lt!2277140))))

(assert (=> d!1802636 (validRegex!7449 lt!2277138)))

(assert (=> d!1802636 (= (theoremZipperRegexEquiv!649 lt!2277134 lt!2277128 lt!2277138 lt!2277140) lt!2277321)))

(declare-fun bs!1335063 () Bool)

(assert (= bs!1335063 d!1802636))

(assert (=> bs!1335063 m!6667942))

(assert (=> bs!1335063 m!6667930))

(declare-fun m!6669020 () Bool)

(assert (=> bs!1335063 m!6669020))

(assert (=> bs!1335063 m!6668980))

(assert (=> b!5714528 d!1802636))

(declare-fun d!1802638 () Bool)

(assert (=> d!1802638 (matchR!7898 (Concat!24558 lt!2277097 (regTwo!31938 r!7292)) (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(declare-fun lt!2277322 () Unit!156384)

(assert (=> d!1802638 (= lt!2277322 (choose!43227 lt!2277097 (regTwo!31938 r!7292) (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(declare-fun e!3514951 () Bool)

(assert (=> d!1802638 e!3514951))

(declare-fun res!2413327 () Bool)

(assert (=> d!1802638 (=> (not res!2413327) (not e!3514951))))

(assert (=> d!1802638 (= res!2413327 (validRegex!7449 lt!2277097))))

(assert (=> d!1802638 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!268 lt!2277097 (regTwo!31938 r!7292) (_2!36113 lt!2277144) (_2!36113 lt!2277139)) lt!2277322)))

(declare-fun b!5715475 () Bool)

(assert (=> b!5715475 (= e!3514951 (validRegex!7449 (regTwo!31938 r!7292)))))

(assert (= (and d!1802638 res!2413327) b!5715475))

(assert (=> d!1802638 m!6667966))

(assert (=> d!1802638 m!6667966))

(declare-fun m!6669022 () Bool)

(assert (=> d!1802638 m!6669022))

(declare-fun m!6669024 () Bool)

(assert (=> d!1802638 m!6669024))

(assert (=> d!1802638 m!6668140))

(assert (=> b!5715475 m!6668284))

(assert (=> b!5714528 d!1802638))

(declare-fun d!1802640 () Bool)

(declare-fun c!1007524 () Bool)

(assert (=> d!1802640 (= c!1007524 (isEmpty!35186 lt!2277140))))

(declare-fun e!3514952 () Bool)

(assert (=> d!1802640 (= (matchZipper!1851 lt!2277134 lt!2277140) e!3514952)))

(declare-fun b!5715476 () Bool)

(assert (=> b!5715476 (= e!3514952 (nullableZipper!1663 lt!2277134))))

(declare-fun b!5715477 () Bool)

(assert (=> b!5715477 (= e!3514952 (matchZipper!1851 (derivationStepZipper!1796 lt!2277134 (head!12105 lt!2277140)) (tail!11200 lt!2277140)))))

(assert (= (and d!1802640 c!1007524) b!5715476))

(assert (= (and d!1802640 (not c!1007524)) b!5715477))

(assert (=> d!1802640 m!6668978))

(declare-fun m!6669026 () Bool)

(assert (=> b!5715476 m!6669026))

(assert (=> b!5715477 m!6668982))

(assert (=> b!5715477 m!6668982))

(declare-fun m!6669028 () Bool)

(assert (=> b!5715477 m!6669028))

(assert (=> b!5715477 m!6668986))

(assert (=> b!5715477 m!6669028))

(assert (=> b!5715477 m!6668986))

(declare-fun m!6669030 () Bool)

(assert (=> b!5715477 m!6669030))

(assert (=> b!5714528 d!1802640))

(declare-fun b!5715478 () Bool)

(declare-fun res!2413329 () Bool)

(declare-fun e!3514958 () Bool)

(assert (=> b!5715478 (=> (not res!2413329) (not e!3514958))))

(assert (=> b!5715478 (= res!2413329 (isEmpty!35186 (tail!11200 lt!2277096)))))

(declare-fun b!5715479 () Bool)

(declare-fun res!2413332 () Bool)

(assert (=> b!5715479 (=> (not res!2413332) (not e!3514958))))

(declare-fun call!436271 () Bool)

(assert (=> b!5715479 (= res!2413332 (not call!436271))))

(declare-fun b!5715480 () Bool)

(declare-fun res!2413334 () Bool)

(declare-fun e!3514955 () Bool)

(assert (=> b!5715480 (=> res!2413334 e!3514955)))

(assert (=> b!5715480 (= res!2413334 e!3514958)))

(declare-fun res!2413333 () Bool)

(assert (=> b!5715480 (=> (not res!2413333) (not e!3514958))))

(declare-fun lt!2277323 () Bool)

(assert (=> b!5715480 (= res!2413333 lt!2277323)))

(declare-fun d!1802642 () Bool)

(declare-fun e!3514957 () Bool)

(assert (=> d!1802642 e!3514957))

(declare-fun c!1007527 () Bool)

(assert (=> d!1802642 (= c!1007527 ((_ is EmptyExpr!15713) lt!2277097))))

(declare-fun e!3514956 () Bool)

(assert (=> d!1802642 (= lt!2277323 e!3514956)))

(declare-fun c!1007526 () Bool)

(assert (=> d!1802642 (= c!1007526 (isEmpty!35186 lt!2277096))))

(assert (=> d!1802642 (validRegex!7449 lt!2277097)))

(assert (=> d!1802642 (= (matchR!7898 lt!2277097 lt!2277096) lt!2277323)))

(declare-fun b!5715481 () Bool)

(declare-fun e!3514959 () Bool)

(declare-fun e!3514954 () Bool)

(assert (=> b!5715481 (= e!3514959 e!3514954)))

(declare-fun res!2413335 () Bool)

(assert (=> b!5715481 (=> res!2413335 e!3514954)))

(assert (=> b!5715481 (= res!2413335 call!436271)))

(declare-fun b!5715482 () Bool)

(assert (=> b!5715482 (= e!3514956 (nullable!5745 lt!2277097))))

(declare-fun b!5715483 () Bool)

(declare-fun res!2413331 () Bool)

(assert (=> b!5715483 (=> res!2413331 e!3514955)))

(assert (=> b!5715483 (= res!2413331 (not ((_ is ElementMatch!15713) lt!2277097)))))

(declare-fun e!3514953 () Bool)

(assert (=> b!5715483 (= e!3514953 e!3514955)))

(declare-fun b!5715484 () Bool)

(assert (=> b!5715484 (= e!3514956 (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096)) (tail!11200 lt!2277096)))))

(declare-fun b!5715485 () Bool)

(declare-fun res!2413328 () Bool)

(assert (=> b!5715485 (=> res!2413328 e!3514954)))

(assert (=> b!5715485 (= res!2413328 (not (isEmpty!35186 (tail!11200 lt!2277096))))))

(declare-fun bm!436266 () Bool)

(assert (=> bm!436266 (= call!436271 (isEmpty!35186 lt!2277096))))

(declare-fun b!5715486 () Bool)

(assert (=> b!5715486 (= e!3514957 e!3514953)))

(declare-fun c!1007525 () Bool)

(assert (=> b!5715486 (= c!1007525 ((_ is EmptyLang!15713) lt!2277097))))

(declare-fun b!5715487 () Bool)

(assert (=> b!5715487 (= e!3514955 e!3514959)))

(declare-fun res!2413330 () Bool)

(assert (=> b!5715487 (=> (not res!2413330) (not e!3514959))))

(assert (=> b!5715487 (= res!2413330 (not lt!2277323))))

(declare-fun b!5715488 () Bool)

(assert (=> b!5715488 (= e!3514953 (not lt!2277323))))

(declare-fun b!5715489 () Bool)

(assert (=> b!5715489 (= e!3514958 (= (head!12105 lt!2277096) (c!1007275 lt!2277097)))))

(declare-fun b!5715490 () Bool)

(assert (=> b!5715490 (= e!3514957 (= lt!2277323 call!436271))))

(declare-fun b!5715491 () Bool)

(assert (=> b!5715491 (= e!3514954 (not (= (head!12105 lt!2277096) (c!1007275 lt!2277097))))))

(assert (= (and d!1802642 c!1007526) b!5715482))

(assert (= (and d!1802642 (not c!1007526)) b!5715484))

(assert (= (and d!1802642 c!1007527) b!5715490))

(assert (= (and d!1802642 (not c!1007527)) b!5715486))

(assert (= (and b!5715486 c!1007525) b!5715488))

(assert (= (and b!5715486 (not c!1007525)) b!5715483))

(assert (= (and b!5715483 (not res!2413331)) b!5715480))

(assert (= (and b!5715480 res!2413333) b!5715479))

(assert (= (and b!5715479 res!2413332) b!5715478))

(assert (= (and b!5715478 res!2413329) b!5715489))

(assert (= (and b!5715480 (not res!2413334)) b!5715487))

(assert (= (and b!5715487 res!2413330) b!5715481))

(assert (= (and b!5715481 (not res!2413335)) b!5715485))

(assert (= (and b!5715485 (not res!2413328)) b!5715491))

(assert (= (or b!5715490 b!5715479 b!5715481) bm!436266))

(assert (=> b!5715482 m!6668138))

(declare-fun m!6669032 () Bool)

(assert (=> d!1802642 m!6669032))

(assert (=> d!1802642 m!6668140))

(declare-fun m!6669034 () Bool)

(assert (=> b!5715491 m!6669034))

(assert (=> b!5715484 m!6669034))

(assert (=> b!5715484 m!6669034))

(declare-fun m!6669036 () Bool)

(assert (=> b!5715484 m!6669036))

(declare-fun m!6669038 () Bool)

(assert (=> b!5715484 m!6669038))

(assert (=> b!5715484 m!6669036))

(assert (=> b!5715484 m!6669038))

(declare-fun m!6669040 () Bool)

(assert (=> b!5715484 m!6669040))

(assert (=> b!5715478 m!6669038))

(assert (=> b!5715478 m!6669038))

(declare-fun m!6669042 () Bool)

(assert (=> b!5715478 m!6669042))

(assert (=> b!5715485 m!6669038))

(assert (=> b!5715485 m!6669038))

(assert (=> b!5715485 m!6669042))

(assert (=> b!5715489 m!6669034))

(assert (=> bm!436266 m!6669032))

(assert (=> b!5714528 d!1802642))

(declare-fun d!1802644 () Bool)

(declare-fun c!1007528 () Bool)

(assert (=> d!1802644 (= c!1007528 (isEmpty!35186 (t!376758 s!2326)))))

(declare-fun e!3514960 () Bool)

(assert (=> d!1802644 (= (matchZipper!1851 lt!2277110 (t!376758 s!2326)) e!3514960)))

(declare-fun b!5715492 () Bool)

(assert (=> b!5715492 (= e!3514960 (nullableZipper!1663 lt!2277110))))

(declare-fun b!5715493 () Bool)

(assert (=> b!5715493 (= e!3514960 (matchZipper!1851 (derivationStepZipper!1796 lt!2277110 (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))))))

(assert (= (and d!1802644 c!1007528) b!5715492))

(assert (= (and d!1802644 (not c!1007528)) b!5715493))

(assert (=> d!1802644 m!6668866))

(declare-fun m!6669044 () Bool)

(assert (=> b!5715492 m!6669044))

(assert (=> b!5715493 m!6668870))

(assert (=> b!5715493 m!6668870))

(declare-fun m!6669046 () Bool)

(assert (=> b!5715493 m!6669046))

(assert (=> b!5715493 m!6668874))

(assert (=> b!5715493 m!6669046))

(assert (=> b!5715493 m!6668874))

(declare-fun m!6669048 () Bool)

(assert (=> b!5715493 m!6669048))

(assert (=> b!5714506 d!1802644))

(declare-fun d!1802646 () Bool)

(declare-fun lt!2277324 () Regex!15713)

(assert (=> d!1802646 (validRegex!7449 lt!2277324)))

(assert (=> d!1802646 (= lt!2277324 (generalisedUnion!1576 (unfocusZipperList!1141 lt!2277128)))))

(assert (=> d!1802646 (= (unfocusZipper!1455 lt!2277128) lt!2277324)))

(declare-fun bs!1335064 () Bool)

(assert (= bs!1335064 d!1802646))

(declare-fun m!6669050 () Bool)

(assert (=> bs!1335064 m!6669050))

(declare-fun m!6669052 () Bool)

(assert (=> bs!1335064 m!6669052))

(assert (=> bs!1335064 m!6669052))

(declare-fun m!6669054 () Bool)

(assert (=> bs!1335064 m!6669054))

(assert (=> b!5714526 d!1802646))

(declare-fun bs!1335065 () Bool)

(declare-fun d!1802648 () Bool)

(assert (= bs!1335065 (and d!1802648 b!5714528)))

(declare-fun lambda!308761 () Int)

(assert (=> bs!1335065 (= lambda!308761 lambda!308687)))

(declare-fun bs!1335066 () Bool)

(assert (= bs!1335066 (and d!1802648 d!1802606)))

(assert (=> bs!1335066 (= lambda!308761 lambda!308758)))

(assert (=> d!1802648 (= (inv!82529 setElem!38279) (forall!14848 (exprs!5597 setElem!38279) lambda!308761))))

(declare-fun bs!1335067 () Bool)

(assert (= bs!1335067 d!1802648))

(declare-fun m!6669056 () Bool)

(assert (=> bs!1335067 m!6669056))

(assert (=> setNonEmpty!38279 d!1802648))

(declare-fun bs!1335068 () Bool)

(declare-fun d!1802650 () Bool)

(assert (= bs!1335068 (and d!1802650 b!5714528)))

(declare-fun lambda!308762 () Int)

(assert (=> bs!1335068 (= lambda!308762 lambda!308687)))

(declare-fun bs!1335069 () Bool)

(assert (= bs!1335069 (and d!1802650 d!1802606)))

(assert (=> bs!1335069 (= lambda!308762 lambda!308758)))

(declare-fun bs!1335070 () Bool)

(assert (= bs!1335070 (and d!1802650 d!1802648)))

(assert (=> bs!1335070 (= lambda!308762 lambda!308761)))

(assert (=> d!1802650 (= (inv!82529 (h!69764 zl!343)) (forall!14848 (exprs!5597 (h!69764 zl!343)) lambda!308762))))

(declare-fun bs!1335071 () Bool)

(assert (= bs!1335071 d!1802650))

(declare-fun m!6669058 () Bool)

(assert (=> bs!1335071 m!6669058))

(assert (=> b!5714505 d!1802650))

(declare-fun d!1802652 () Bool)

(assert (=> d!1802652 (= (isDefined!12425 lt!2277112) (not (isEmpty!35190 lt!2277112)))))

(declare-fun bs!1335072 () Bool)

(assert (= bs!1335072 d!1802652))

(declare-fun m!6669060 () Bool)

(assert (=> bs!1335072 m!6669060))

(assert (=> b!5714504 d!1802652))

(declare-fun b!5715494 () Bool)

(declare-fun e!3514961 () List!63438)

(assert (=> b!5715494 (= e!3514961 (_2!36113 lt!2277139))))

(declare-fun b!5715497 () Bool)

(declare-fun e!3514962 () Bool)

(declare-fun lt!2277325 () List!63438)

(assert (=> b!5715497 (= e!3514962 (or (not (= (_2!36113 lt!2277139) Nil!63314)) (= lt!2277325 (_1!36113 lt!2277139))))))

(declare-fun b!5715496 () Bool)

(declare-fun res!2413336 () Bool)

(assert (=> b!5715496 (=> (not res!2413336) (not e!3514962))))

(assert (=> b!5715496 (= res!2413336 (= (size!40024 lt!2277325) (+ (size!40024 (_1!36113 lt!2277139)) (size!40024 (_2!36113 lt!2277139)))))))

(declare-fun b!5715495 () Bool)

(assert (=> b!5715495 (= e!3514961 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) (++!13908 (t!376758 (_1!36113 lt!2277139)) (_2!36113 lt!2277139))))))

(declare-fun d!1802654 () Bool)

(assert (=> d!1802654 e!3514962))

(declare-fun res!2413337 () Bool)

(assert (=> d!1802654 (=> (not res!2413337) (not e!3514962))))

(assert (=> d!1802654 (= res!2413337 (= (content!11499 lt!2277325) ((_ map or) (content!11499 (_1!36113 lt!2277139)) (content!11499 (_2!36113 lt!2277139)))))))

(assert (=> d!1802654 (= lt!2277325 e!3514961)))

(declare-fun c!1007529 () Bool)

(assert (=> d!1802654 (= c!1007529 ((_ is Nil!63314) (_1!36113 lt!2277139)))))

(assert (=> d!1802654 (= (++!13908 (_1!36113 lt!2277139) (_2!36113 lt!2277139)) lt!2277325)))

(assert (= (and d!1802654 c!1007529) b!5715494))

(assert (= (and d!1802654 (not c!1007529)) b!5715495))

(assert (= (and d!1802654 res!2413337) b!5715496))

(assert (= (and b!5715496 res!2413336) b!5715497))

(declare-fun m!6669062 () Bool)

(assert (=> b!5715496 m!6669062))

(declare-fun m!6669064 () Bool)

(assert (=> b!5715496 m!6669064))

(assert (=> b!5715496 m!6668724))

(declare-fun m!6669066 () Bool)

(assert (=> b!5715495 m!6669066))

(declare-fun m!6669068 () Bool)

(assert (=> d!1802654 m!6669068))

(declare-fun m!6669070 () Bool)

(assert (=> d!1802654 m!6669070))

(assert (=> d!1802654 m!6668732))

(assert (=> b!5714504 d!1802654))

(declare-fun d!1802656 () Bool)

(assert (=> d!1802656 (= (get!21829 lt!2277112) (v!51776 lt!2277112))))

(assert (=> b!5714504 d!1802656))

(declare-fun bs!1335073 () Bool)

(declare-fun d!1802658 () Bool)

(assert (= bs!1335073 (and d!1802658 d!1802448)))

(declare-fun lambda!308763 () Int)

(assert (=> bs!1335073 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308763 lambda!308742))))

(declare-fun bs!1335074 () Bool)

(assert (= bs!1335074 (and d!1802658 b!5714753)))

(assert (=> bs!1335074 (not (= lambda!308763 lambda!308716))))

(declare-fun bs!1335075 () Bool)

(assert (= bs!1335075 (and d!1802658 b!5714499)))

(assert (=> bs!1335075 (not (= lambda!308763 lambda!308685))))

(declare-fun bs!1335076 () Bool)

(assert (= bs!1335076 (and d!1802658 b!5714504)))

(assert (=> bs!1335076 (not (= lambda!308763 lambda!308683))))

(assert (=> bs!1335075 (not (= lambda!308763 lambda!308686))))

(declare-fun bs!1335077 () Bool)

(assert (= bs!1335077 (and d!1802658 d!1802432)))

(assert (=> bs!1335077 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308763 lambda!308728))))

(declare-fun bs!1335078 () Bool)

(assert (= bs!1335078 (and d!1802658 b!5714517)))

(assert (=> bs!1335078 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308763 lambda!308679))))

(assert (=> bs!1335076 (= lambda!308763 lambda!308682)))

(assert (=> bs!1335073 (not (= lambda!308763 lambda!308743))))

(assert (=> bs!1335078 (not (= lambda!308763 lambda!308680))))

(declare-fun bs!1335079 () Bool)

(assert (= bs!1335079 (and d!1802658 b!5714749)))

(assert (=> bs!1335079 (not (= lambda!308763 lambda!308717))))

(assert (=> bs!1335075 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308763 lambda!308684))))

(assert (=> d!1802658 true))

(assert (=> d!1802658 true))

(assert (=> d!1802658 true))

(assert (=> d!1802658 (= (isDefined!12425 (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)) (Exists!2813 lambda!308763))))

(declare-fun lt!2277326 () Unit!156384)

(assert (=> d!1802658 (= lt!2277326 (choose!43216 lt!2277097 (regTwo!31938 r!7292) s!2326))))

(assert (=> d!1802658 (validRegex!7449 lt!2277097)))

(assert (=> d!1802658 (= (lemmaFindConcatSeparationEquivalentToExists!1900 lt!2277097 (regTwo!31938 r!7292) s!2326) lt!2277326)))

(declare-fun bs!1335080 () Bool)

(assert (= bs!1335080 d!1802658))

(assert (=> bs!1335080 m!6668140))

(assert (=> bs!1335080 m!6668034))

(declare-fun m!6669072 () Bool)

(assert (=> bs!1335080 m!6669072))

(assert (=> bs!1335080 m!6668034))

(declare-fun m!6669074 () Bool)

(assert (=> bs!1335080 m!6669074))

(declare-fun m!6669076 () Bool)

(assert (=> bs!1335080 m!6669076))

(assert (=> b!5714504 d!1802658))

(declare-fun bs!1335081 () Bool)

(declare-fun d!1802660 () Bool)

(assert (= bs!1335081 (and d!1802660 d!1802448)))

(declare-fun lambda!308764 () Int)

(assert (=> bs!1335081 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308764 lambda!308742))))

(declare-fun bs!1335082 () Bool)

(assert (= bs!1335082 (and d!1802660 b!5714753)))

(assert (=> bs!1335082 (not (= lambda!308764 lambda!308716))))

(declare-fun bs!1335083 () Bool)

(assert (= bs!1335083 (and d!1802660 b!5714499)))

(assert (=> bs!1335083 (not (= lambda!308764 lambda!308685))))

(declare-fun bs!1335084 () Bool)

(assert (= bs!1335084 (and d!1802660 b!5714504)))

(assert (=> bs!1335084 (not (= lambda!308764 lambda!308683))))

(assert (=> bs!1335083 (not (= lambda!308764 lambda!308686))))

(declare-fun bs!1335085 () Bool)

(assert (= bs!1335085 (and d!1802660 d!1802432)))

(assert (=> bs!1335085 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308764 lambda!308728))))

(declare-fun bs!1335086 () Bool)

(assert (= bs!1335086 (and d!1802660 d!1802658)))

(assert (=> bs!1335086 (= lambda!308764 lambda!308763)))

(declare-fun bs!1335087 () Bool)

(assert (= bs!1335087 (and d!1802660 b!5714517)))

(assert (=> bs!1335087 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308764 lambda!308679))))

(assert (=> bs!1335084 (= lambda!308764 lambda!308682)))

(assert (=> bs!1335081 (not (= lambda!308764 lambda!308743))))

(assert (=> bs!1335087 (not (= lambda!308764 lambda!308680))))

(declare-fun bs!1335088 () Bool)

(assert (= bs!1335088 (and d!1802660 b!5714749)))

(assert (=> bs!1335088 (not (= lambda!308764 lambda!308717))))

(assert (=> bs!1335083 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308764 lambda!308684))))

(assert (=> d!1802660 true))

(assert (=> d!1802660 true))

(assert (=> d!1802660 true))

(declare-fun bs!1335089 () Bool)

(assert (= bs!1335089 d!1802660))

(declare-fun lambda!308765 () Int)

(assert (=> bs!1335089 (not (= lambda!308765 lambda!308764))))

(assert (=> bs!1335081 (not (= lambda!308765 lambda!308742))))

(assert (=> bs!1335082 (not (= lambda!308765 lambda!308716))))

(assert (=> bs!1335083 (not (= lambda!308765 lambda!308685))))

(assert (=> bs!1335084 (= lambda!308765 lambda!308683)))

(assert (=> bs!1335083 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308765 lambda!308686))))

(assert (=> bs!1335085 (not (= lambda!308765 lambda!308728))))

(assert (=> bs!1335086 (not (= lambda!308765 lambda!308763))))

(assert (=> bs!1335087 (not (= lambda!308765 lambda!308679))))

(assert (=> bs!1335084 (not (= lambda!308765 lambda!308682))))

(assert (=> bs!1335081 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308765 lambda!308743))))

(assert (=> bs!1335087 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308765 lambda!308680))))

(assert (=> bs!1335088 (= (and (= lt!2277097 (regOne!31938 lt!2277132)) (= (regTwo!31938 r!7292) (regTwo!31938 lt!2277132))) (= lambda!308765 lambda!308717))))

(assert (=> bs!1335083 (not (= lambda!308765 lambda!308684))))

(assert (=> d!1802660 true))

(assert (=> d!1802660 true))

(assert (=> d!1802660 true))

(assert (=> d!1802660 (= (Exists!2813 lambda!308764) (Exists!2813 lambda!308765))))

(declare-fun lt!2277327 () Unit!156384)

(assert (=> d!1802660 (= lt!2277327 (choose!43217 lt!2277097 (regTwo!31938 r!7292) s!2326))))

(assert (=> d!1802660 (validRegex!7449 lt!2277097)))

(assert (=> d!1802660 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1442 lt!2277097 (regTwo!31938 r!7292) s!2326) lt!2277327)))

(declare-fun m!6669078 () Bool)

(assert (=> bs!1335089 m!6669078))

(declare-fun m!6669080 () Bool)

(assert (=> bs!1335089 m!6669080))

(declare-fun m!6669082 () Bool)

(assert (=> bs!1335089 m!6669082))

(assert (=> bs!1335089 m!6668140))

(assert (=> b!5714504 d!1802660))

(declare-fun d!1802662 () Bool)

(assert (=> d!1802662 (= (Exists!2813 lambda!308682) (choose!43215 lambda!308682))))

(declare-fun bs!1335090 () Bool)

(assert (= bs!1335090 d!1802662))

(declare-fun m!6669084 () Bool)

(assert (=> bs!1335090 m!6669084))

(assert (=> b!5714504 d!1802662))

(declare-fun d!1802664 () Bool)

(declare-fun e!3514967 () Bool)

(assert (=> d!1802664 e!3514967))

(declare-fun res!2413338 () Bool)

(assert (=> d!1802664 (=> res!2413338 e!3514967)))

(declare-fun e!3514963 () Bool)

(assert (=> d!1802664 (= res!2413338 e!3514963)))

(declare-fun res!2413341 () Bool)

(assert (=> d!1802664 (=> (not res!2413341) (not e!3514963))))

(declare-fun lt!2277330 () Option!15722)

(assert (=> d!1802664 (= res!2413341 (isDefined!12425 lt!2277330))))

(declare-fun e!3514965 () Option!15722)

(assert (=> d!1802664 (= lt!2277330 e!3514965)))

(declare-fun c!1007531 () Bool)

(declare-fun e!3514964 () Bool)

(assert (=> d!1802664 (= c!1007531 e!3514964)))

(declare-fun res!2413339 () Bool)

(assert (=> d!1802664 (=> (not res!2413339) (not e!3514964))))

(assert (=> d!1802664 (= res!2413339 (matchR!7898 lt!2277097 Nil!63314))))

(assert (=> d!1802664 (validRegex!7449 lt!2277097)))

(assert (=> d!1802664 (= (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326) lt!2277330)))

(declare-fun b!5715498 () Bool)

(assert (=> b!5715498 (= e!3514964 (matchR!7898 (regTwo!31938 r!7292) s!2326))))

(declare-fun b!5715499 () Bool)

(assert (=> b!5715499 (= e!3514967 (not (isDefined!12425 lt!2277330)))))

(declare-fun b!5715500 () Bool)

(declare-fun e!3514966 () Option!15722)

(assert (=> b!5715500 (= e!3514966 None!15721)))

(declare-fun b!5715501 () Bool)

(declare-fun res!2413342 () Bool)

(assert (=> b!5715501 (=> (not res!2413342) (not e!3514963))))

(assert (=> b!5715501 (= res!2413342 (matchR!7898 lt!2277097 (_1!36113 (get!21829 lt!2277330))))))

(declare-fun b!5715502 () Bool)

(assert (=> b!5715502 (= e!3514965 e!3514966)))

(declare-fun c!1007530 () Bool)

(assert (=> b!5715502 (= c!1007530 ((_ is Nil!63314) s!2326))))

(declare-fun b!5715503 () Bool)

(assert (=> b!5715503 (= e!3514963 (= (++!13908 (_1!36113 (get!21829 lt!2277330)) (_2!36113 (get!21829 lt!2277330))) s!2326))))

(declare-fun b!5715504 () Bool)

(assert (=> b!5715504 (= e!3514965 (Some!15721 (tuple2!65621 Nil!63314 s!2326)))))

(declare-fun b!5715505 () Bool)

(declare-fun res!2413340 () Bool)

(assert (=> b!5715505 (=> (not res!2413340) (not e!3514963))))

(assert (=> b!5715505 (= res!2413340 (matchR!7898 (regTwo!31938 r!7292) (_2!36113 (get!21829 lt!2277330))))))

(declare-fun b!5715506 () Bool)

(declare-fun lt!2277329 () Unit!156384)

(declare-fun lt!2277328 () Unit!156384)

(assert (=> b!5715506 (= lt!2277329 lt!2277328)))

(assert (=> b!5715506 (= (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326)) s!2326)))

(assert (=> b!5715506 (= lt!2277328 (lemmaMoveElementToOtherListKeepsConcatEq!2066 Nil!63314 (h!69762 s!2326) (t!376758 s!2326) s!2326))))

(assert (=> b!5715506 (= e!3514966 (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326) s!2326))))

(assert (= (and d!1802664 res!2413339) b!5715498))

(assert (= (and d!1802664 c!1007531) b!5715504))

(assert (= (and d!1802664 (not c!1007531)) b!5715502))

(assert (= (and b!5715502 c!1007530) b!5715500))

(assert (= (and b!5715502 (not c!1007530)) b!5715506))

(assert (= (and d!1802664 res!2413341) b!5715501))

(assert (= (and b!5715501 res!2413342) b!5715505))

(assert (= (and b!5715505 res!2413340) b!5715503))

(assert (= (and d!1802664 (not res!2413338)) b!5715499))

(declare-fun m!6669086 () Bool)

(assert (=> b!5715503 m!6669086))

(declare-fun m!6669088 () Bool)

(assert (=> b!5715503 m!6669088))

(assert (=> b!5715501 m!6669086))

(declare-fun m!6669090 () Bool)

(assert (=> b!5715501 m!6669090))

(assert (=> b!5715506 m!6668416))

(assert (=> b!5715506 m!6668416))

(assert (=> b!5715506 m!6668418))

(assert (=> b!5715506 m!6668420))

(assert (=> b!5715506 m!6668416))

(declare-fun m!6669092 () Bool)

(assert (=> b!5715506 m!6669092))

(assert (=> b!5715505 m!6669086))

(declare-fun m!6669094 () Bool)

(assert (=> b!5715505 m!6669094))

(assert (=> b!5715498 m!6668426))

(declare-fun m!6669096 () Bool)

(assert (=> d!1802664 m!6669096))

(declare-fun m!6669098 () Bool)

(assert (=> d!1802664 m!6669098))

(assert (=> d!1802664 m!6668140))

(assert (=> b!5715499 m!6669096))

(assert (=> b!5714504 d!1802664))

(declare-fun d!1802666 () Bool)

(assert (=> d!1802666 (= (Exists!2813 lambda!308683) (choose!43215 lambda!308683))))

(declare-fun bs!1335091 () Bool)

(assert (= bs!1335091 d!1802666))

(declare-fun m!6669100 () Bool)

(assert (=> bs!1335091 m!6669100))

(assert (=> b!5714504 d!1802666))

(declare-fun d!1802668 () Bool)

(assert (=> d!1802668 (= (nullable!5745 (regOne!31938 (regOne!31938 r!7292))) (nullableFct!1808 (regOne!31938 (regOne!31938 r!7292))))))

(declare-fun bs!1335092 () Bool)

(assert (= bs!1335092 d!1802668))

(declare-fun m!6669102 () Bool)

(assert (=> bs!1335092 m!6669102))

(assert (=> b!5714525 d!1802668))

(declare-fun bs!1335093 () Bool)

(declare-fun b!5715512 () Bool)

(assert (= bs!1335093 (and b!5715512 d!1802660)))

(declare-fun lambda!308766 () Int)

(assert (=> bs!1335093 (not (= lambda!308766 lambda!308764))))

(declare-fun bs!1335094 () Bool)

(assert (= bs!1335094 (and b!5715512 d!1802448)))

(assert (=> bs!1335094 (not (= lambda!308766 lambda!308742))))

(declare-fun bs!1335095 () Bool)

(assert (= bs!1335095 (and b!5715512 b!5714753)))

(assert (=> bs!1335095 (= (and (= (reg!16042 r!7292) (reg!16042 lt!2277132)) (= r!7292 lt!2277132)) (= lambda!308766 lambda!308716))))

(declare-fun bs!1335096 () Bool)

(assert (= bs!1335096 (and b!5715512 b!5714499)))

(assert (=> bs!1335096 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 r!7292) (reg!16042 (regOne!31938 r!7292))) (= r!7292 lt!2277097)) (= lambda!308766 lambda!308685))))

(declare-fun bs!1335097 () Bool)

(assert (= bs!1335097 (and b!5715512 b!5714504)))

(assert (=> bs!1335097 (not (= lambda!308766 lambda!308683))))

(assert (=> bs!1335096 (not (= lambda!308766 lambda!308686))))

(assert (=> bs!1335093 (not (= lambda!308766 lambda!308765))))

(declare-fun bs!1335098 () Bool)

(assert (= bs!1335098 (and b!5715512 d!1802432)))

(assert (=> bs!1335098 (not (= lambda!308766 lambda!308728))))

(declare-fun bs!1335099 () Bool)

(assert (= bs!1335099 (and b!5715512 d!1802658)))

(assert (=> bs!1335099 (not (= lambda!308766 lambda!308763))))

(declare-fun bs!1335100 () Bool)

(assert (= bs!1335100 (and b!5715512 b!5714517)))

(assert (=> bs!1335100 (not (= lambda!308766 lambda!308679))))

(assert (=> bs!1335097 (not (= lambda!308766 lambda!308682))))

(assert (=> bs!1335094 (not (= lambda!308766 lambda!308743))))

(assert (=> bs!1335100 (not (= lambda!308766 lambda!308680))))

(declare-fun bs!1335101 () Bool)

(assert (= bs!1335101 (and b!5715512 b!5714749)))

(assert (=> bs!1335101 (not (= lambda!308766 lambda!308717))))

(assert (=> bs!1335096 (not (= lambda!308766 lambda!308684))))

(assert (=> b!5715512 true))

(assert (=> b!5715512 true))

(declare-fun bs!1335102 () Bool)

(declare-fun b!5715508 () Bool)

(assert (= bs!1335102 (and b!5715508 d!1802660)))

(declare-fun lambda!308767 () Int)

(assert (=> bs!1335102 (not (= lambda!308767 lambda!308764))))

(declare-fun bs!1335103 () Bool)

(assert (= bs!1335103 (and b!5715508 d!1802448)))

(assert (=> bs!1335103 (not (= lambda!308767 lambda!308742))))

(declare-fun bs!1335104 () Bool)

(assert (= bs!1335104 (and b!5715508 b!5714753)))

(assert (=> bs!1335104 (not (= lambda!308767 lambda!308716))))

(declare-fun bs!1335105 () Bool)

(assert (= bs!1335105 (and b!5715508 b!5714499)))

(assert (=> bs!1335105 (not (= lambda!308767 lambda!308685))))

(declare-fun bs!1335106 () Bool)

(assert (= bs!1335106 (and b!5715508 b!5714504)))

(assert (=> bs!1335106 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308767 lambda!308683))))

(assert (=> bs!1335105 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308767 lambda!308686))))

(assert (=> bs!1335102 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308767 lambda!308765))))

(declare-fun bs!1335107 () Bool)

(assert (= bs!1335107 (and b!5715508 d!1802432)))

(assert (=> bs!1335107 (not (= lambda!308767 lambda!308728))))

(declare-fun bs!1335108 () Bool)

(assert (= bs!1335108 (and b!5715508 d!1802658)))

(assert (=> bs!1335108 (not (= lambda!308767 lambda!308763))))

(declare-fun bs!1335109 () Bool)

(assert (= bs!1335109 (and b!5715508 b!5714517)))

(assert (=> bs!1335109 (not (= lambda!308767 lambda!308679))))

(assert (=> bs!1335106 (not (= lambda!308767 lambda!308682))))

(declare-fun bs!1335110 () Bool)

(assert (= bs!1335110 (and b!5715508 b!5715512)))

(assert (=> bs!1335110 (not (= lambda!308767 lambda!308766))))

(assert (=> bs!1335103 (= lambda!308767 lambda!308743)))

(assert (=> bs!1335109 (= lambda!308767 lambda!308680)))

(declare-fun bs!1335111 () Bool)

(assert (= bs!1335111 (and b!5715508 b!5714749)))

(assert (=> bs!1335111 (= (and (= (regOne!31938 r!7292) (regOne!31938 lt!2277132)) (= (regTwo!31938 r!7292) (regTwo!31938 lt!2277132))) (= lambda!308767 lambda!308717))))

(assert (=> bs!1335105 (not (= lambda!308767 lambda!308684))))

(assert (=> b!5715508 true))

(assert (=> b!5715508 true))

(declare-fun d!1802670 () Bool)

(declare-fun c!1007534 () Bool)

(assert (=> d!1802670 (= c!1007534 ((_ is EmptyExpr!15713) r!7292))))

(declare-fun e!3514974 () Bool)

(assert (=> d!1802670 (= (matchRSpec!2816 r!7292 s!2326) e!3514974)))

(declare-fun b!5715507 () Bool)

(declare-fun res!2413343 () Bool)

(declare-fun e!3514968 () Bool)

(assert (=> b!5715507 (=> res!2413343 e!3514968)))

(declare-fun call!436272 () Bool)

(assert (=> b!5715507 (= res!2413343 call!436272)))

(declare-fun e!3514973 () Bool)

(assert (=> b!5715507 (= e!3514973 e!3514968)))

(declare-fun call!436273 () Bool)

(assert (=> b!5715508 (= e!3514973 call!436273)))

(declare-fun b!5715509 () Bool)

(declare-fun c!1007532 () Bool)

(assert (=> b!5715509 (= c!1007532 ((_ is ElementMatch!15713) r!7292))))

(declare-fun e!3514972 () Bool)

(declare-fun e!3514969 () Bool)

(assert (=> b!5715509 (= e!3514972 e!3514969)))

(declare-fun b!5715510 () Bool)

(assert (=> b!5715510 (= e!3514969 (= s!2326 (Cons!63314 (c!1007275 r!7292) Nil!63314)))))

(declare-fun b!5715511 () Bool)

(assert (=> b!5715511 (= e!3514974 e!3514972)))

(declare-fun res!2413344 () Bool)

(assert (=> b!5715511 (= res!2413344 (not ((_ is EmptyLang!15713) r!7292)))))

(assert (=> b!5715511 (=> (not res!2413344) (not e!3514972))))

(declare-fun bm!436267 () Bool)

(assert (=> bm!436267 (= call!436272 (isEmpty!35186 s!2326))))

(assert (=> b!5715512 (= e!3514968 call!436273)))

(declare-fun b!5715513 () Bool)

(assert (=> b!5715513 (= e!3514974 call!436272)))

(declare-fun b!5715514 () Bool)

(declare-fun e!3514971 () Bool)

(assert (=> b!5715514 (= e!3514971 (matchRSpec!2816 (regTwo!31939 r!7292) s!2326))))

(declare-fun b!5715515 () Bool)

(declare-fun c!1007533 () Bool)

(assert (=> b!5715515 (= c!1007533 ((_ is Union!15713) r!7292))))

(declare-fun e!3514970 () Bool)

(assert (=> b!5715515 (= e!3514969 e!3514970)))

(declare-fun b!5715516 () Bool)

(assert (=> b!5715516 (= e!3514970 e!3514973)))

(declare-fun c!1007535 () Bool)

(assert (=> b!5715516 (= c!1007535 ((_ is Star!15713) r!7292))))

(declare-fun b!5715517 () Bool)

(assert (=> b!5715517 (= e!3514970 e!3514971)))

(declare-fun res!2413345 () Bool)

(assert (=> b!5715517 (= res!2413345 (matchRSpec!2816 (regOne!31939 r!7292) s!2326))))

(assert (=> b!5715517 (=> res!2413345 e!3514971)))

(declare-fun bm!436268 () Bool)

(assert (=> bm!436268 (= call!436273 (Exists!2813 (ite c!1007535 lambda!308766 lambda!308767)))))

(assert (= (and d!1802670 c!1007534) b!5715513))

(assert (= (and d!1802670 (not c!1007534)) b!5715511))

(assert (= (and b!5715511 res!2413344) b!5715509))

(assert (= (and b!5715509 c!1007532) b!5715510))

(assert (= (and b!5715509 (not c!1007532)) b!5715515))

(assert (= (and b!5715515 c!1007533) b!5715517))

(assert (= (and b!5715515 (not c!1007533)) b!5715516))

(assert (= (and b!5715517 (not res!2413345)) b!5715514))

(assert (= (and b!5715516 c!1007535) b!5715507))

(assert (= (and b!5715516 (not c!1007535)) b!5715508))

(assert (= (and b!5715507 (not res!2413343)) b!5715512))

(assert (= (or b!5715512 b!5715508) bm!436268))

(assert (= (or b!5715513 b!5715507) bm!436267))

(assert (=> bm!436267 m!6668190))

(declare-fun m!6669104 () Bool)

(assert (=> b!5715514 m!6669104))

(declare-fun m!6669106 () Bool)

(assert (=> b!5715517 m!6669106))

(declare-fun m!6669108 () Bool)

(assert (=> bm!436268 m!6669108))

(assert (=> b!5714524 d!1802670))

(declare-fun b!5715518 () Bool)

(declare-fun res!2413347 () Bool)

(declare-fun e!3514980 () Bool)

(assert (=> b!5715518 (=> (not res!2413347) (not e!3514980))))

(assert (=> b!5715518 (= res!2413347 (isEmpty!35186 (tail!11200 s!2326)))))

(declare-fun b!5715519 () Bool)

(declare-fun res!2413350 () Bool)

(assert (=> b!5715519 (=> (not res!2413350) (not e!3514980))))

(declare-fun call!436274 () Bool)

(assert (=> b!5715519 (= res!2413350 (not call!436274))))

(declare-fun b!5715520 () Bool)

(declare-fun res!2413352 () Bool)

(declare-fun e!3514977 () Bool)

(assert (=> b!5715520 (=> res!2413352 e!3514977)))

(assert (=> b!5715520 (= res!2413352 e!3514980)))

(declare-fun res!2413351 () Bool)

(assert (=> b!5715520 (=> (not res!2413351) (not e!3514980))))

(declare-fun lt!2277331 () Bool)

(assert (=> b!5715520 (= res!2413351 lt!2277331)))

(declare-fun d!1802672 () Bool)

(declare-fun e!3514979 () Bool)

(assert (=> d!1802672 e!3514979))

(declare-fun c!1007538 () Bool)

(assert (=> d!1802672 (= c!1007538 ((_ is EmptyExpr!15713) r!7292))))

(declare-fun e!3514978 () Bool)

(assert (=> d!1802672 (= lt!2277331 e!3514978)))

(declare-fun c!1007537 () Bool)

(assert (=> d!1802672 (= c!1007537 (isEmpty!35186 s!2326))))

(assert (=> d!1802672 (validRegex!7449 r!7292)))

(assert (=> d!1802672 (= (matchR!7898 r!7292 s!2326) lt!2277331)))

(declare-fun b!5715521 () Bool)

(declare-fun e!3514981 () Bool)

(declare-fun e!3514976 () Bool)

(assert (=> b!5715521 (= e!3514981 e!3514976)))

(declare-fun res!2413353 () Bool)

(assert (=> b!5715521 (=> res!2413353 e!3514976)))

(assert (=> b!5715521 (= res!2413353 call!436274)))

(declare-fun b!5715522 () Bool)

(assert (=> b!5715522 (= e!3514978 (nullable!5745 r!7292))))

(declare-fun b!5715523 () Bool)

(declare-fun res!2413349 () Bool)

(assert (=> b!5715523 (=> res!2413349 e!3514977)))

(assert (=> b!5715523 (= res!2413349 (not ((_ is ElementMatch!15713) r!7292)))))

(declare-fun e!3514975 () Bool)

(assert (=> b!5715523 (= e!3514975 e!3514977)))

(declare-fun b!5715524 () Bool)

(assert (=> b!5715524 (= e!3514978 (matchR!7898 (derivativeStep!4516 r!7292 (head!12105 s!2326)) (tail!11200 s!2326)))))

(declare-fun b!5715525 () Bool)

(declare-fun res!2413346 () Bool)

(assert (=> b!5715525 (=> res!2413346 e!3514976)))

(assert (=> b!5715525 (= res!2413346 (not (isEmpty!35186 (tail!11200 s!2326))))))

(declare-fun bm!436269 () Bool)

(assert (=> bm!436269 (= call!436274 (isEmpty!35186 s!2326))))

(declare-fun b!5715526 () Bool)

(assert (=> b!5715526 (= e!3514979 e!3514975)))

(declare-fun c!1007536 () Bool)

(assert (=> b!5715526 (= c!1007536 ((_ is EmptyLang!15713) r!7292))))

(declare-fun b!5715527 () Bool)

(assert (=> b!5715527 (= e!3514977 e!3514981)))

(declare-fun res!2413348 () Bool)

(assert (=> b!5715527 (=> (not res!2413348) (not e!3514981))))

(assert (=> b!5715527 (= res!2413348 (not lt!2277331))))

(declare-fun b!5715528 () Bool)

(assert (=> b!5715528 (= e!3514975 (not lt!2277331))))

(declare-fun b!5715529 () Bool)

(assert (=> b!5715529 (= e!3514980 (= (head!12105 s!2326) (c!1007275 r!7292)))))

(declare-fun b!5715530 () Bool)

(assert (=> b!5715530 (= e!3514979 (= lt!2277331 call!436274))))

(declare-fun b!5715531 () Bool)

(assert (=> b!5715531 (= e!3514976 (not (= (head!12105 s!2326) (c!1007275 r!7292))))))

(assert (= (and d!1802672 c!1007537) b!5715522))

(assert (= (and d!1802672 (not c!1007537)) b!5715524))

(assert (= (and d!1802672 c!1007538) b!5715530))

(assert (= (and d!1802672 (not c!1007538)) b!5715526))

(assert (= (and b!5715526 c!1007536) b!5715528))

(assert (= (and b!5715526 (not c!1007536)) b!5715523))

(assert (= (and b!5715523 (not res!2413349)) b!5715520))

(assert (= (and b!5715520 res!2413351) b!5715519))

(assert (= (and b!5715519 res!2413350) b!5715518))

(assert (= (and b!5715518 res!2413347) b!5715529))

(assert (= (and b!5715520 (not res!2413352)) b!5715527))

(assert (= (and b!5715527 res!2413348) b!5715521))

(assert (= (and b!5715521 (not res!2413353)) b!5715525))

(assert (= (and b!5715525 (not res!2413346)) b!5715531))

(assert (= (or b!5715530 b!5715519 b!5715521) bm!436269))

(declare-fun m!6669110 () Bool)

(assert (=> b!5715522 m!6669110))

(assert (=> d!1802672 m!6668190))

(assert (=> d!1802672 m!6668044))

(assert (=> b!5715531 m!6668202))

(assert (=> b!5715524 m!6668202))

(assert (=> b!5715524 m!6668202))

(declare-fun m!6669112 () Bool)

(assert (=> b!5715524 m!6669112))

(assert (=> b!5715524 m!6668206))

(assert (=> b!5715524 m!6669112))

(assert (=> b!5715524 m!6668206))

(declare-fun m!6669114 () Bool)

(assert (=> b!5715524 m!6669114))

(assert (=> b!5715518 m!6668206))

(assert (=> b!5715518 m!6668206))

(assert (=> b!5715518 m!6668210))

(assert (=> b!5715525 m!6668206))

(assert (=> b!5715525 m!6668206))

(assert (=> b!5715525 m!6668210))

(assert (=> b!5715529 m!6668202))

(assert (=> bm!436269 m!6668190))

(assert (=> b!5714524 d!1802672))

(declare-fun d!1802674 () Bool)

(assert (=> d!1802674 (= (matchR!7898 r!7292 s!2326) (matchRSpec!2816 r!7292 s!2326))))

(declare-fun lt!2277332 () Unit!156384)

(assert (=> d!1802674 (= lt!2277332 (choose!43213 r!7292 s!2326))))

(assert (=> d!1802674 (validRegex!7449 r!7292)))

(assert (=> d!1802674 (= (mainMatchTheorem!2816 r!7292 s!2326) lt!2277332)))

(declare-fun bs!1335112 () Bool)

(assert (= bs!1335112 d!1802674))

(assert (=> bs!1335112 m!6667958))

(assert (=> bs!1335112 m!6667956))

(declare-fun m!6669116 () Bool)

(assert (=> bs!1335112 m!6669116))

(assert (=> bs!1335112 m!6668044))

(assert (=> b!5714524 d!1802674))

(declare-fun b!5715532 () Bool)

(declare-fun res!2413355 () Bool)

(declare-fun e!3514987 () Bool)

(assert (=> b!5715532 (=> (not res!2413355) (not e!3514987))))

(assert (=> b!5715532 (= res!2413355 (isEmpty!35186 (tail!11200 (_2!36113 lt!2277144))))))

(declare-fun b!5715533 () Bool)

(declare-fun res!2413358 () Bool)

(assert (=> b!5715533 (=> (not res!2413358) (not e!3514987))))

(declare-fun call!436275 () Bool)

(assert (=> b!5715533 (= res!2413358 (not call!436275))))

(declare-fun b!5715534 () Bool)

(declare-fun res!2413360 () Bool)

(declare-fun e!3514984 () Bool)

(assert (=> b!5715534 (=> res!2413360 e!3514984)))

(assert (=> b!5715534 (= res!2413360 e!3514987)))

(declare-fun res!2413359 () Bool)

(assert (=> b!5715534 (=> (not res!2413359) (not e!3514987))))

(declare-fun lt!2277333 () Bool)

(assert (=> b!5715534 (= res!2413359 lt!2277333)))

(declare-fun d!1802676 () Bool)

(declare-fun e!3514986 () Bool)

(assert (=> d!1802676 e!3514986))

(declare-fun c!1007541 () Bool)

(assert (=> d!1802676 (= c!1007541 ((_ is EmptyExpr!15713) lt!2277097))))

(declare-fun e!3514985 () Bool)

(assert (=> d!1802676 (= lt!2277333 e!3514985)))

(declare-fun c!1007540 () Bool)

(assert (=> d!1802676 (= c!1007540 (isEmpty!35186 (_2!36113 lt!2277144)))))

(assert (=> d!1802676 (validRegex!7449 lt!2277097)))

(assert (=> d!1802676 (= (matchR!7898 lt!2277097 (_2!36113 lt!2277144)) lt!2277333)))

(declare-fun b!5715535 () Bool)

(declare-fun e!3514988 () Bool)

(declare-fun e!3514983 () Bool)

(assert (=> b!5715535 (= e!3514988 e!3514983)))

(declare-fun res!2413361 () Bool)

(assert (=> b!5715535 (=> res!2413361 e!3514983)))

(assert (=> b!5715535 (= res!2413361 call!436275)))

(declare-fun b!5715536 () Bool)

(assert (=> b!5715536 (= e!3514985 (nullable!5745 lt!2277097))))

(declare-fun b!5715537 () Bool)

(declare-fun res!2413357 () Bool)

(assert (=> b!5715537 (=> res!2413357 e!3514984)))

(assert (=> b!5715537 (= res!2413357 (not ((_ is ElementMatch!15713) lt!2277097)))))

(declare-fun e!3514982 () Bool)

(assert (=> b!5715537 (= e!3514982 e!3514984)))

(declare-fun b!5715538 () Bool)

(assert (=> b!5715538 (= e!3514985 (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144))) (tail!11200 (_2!36113 lt!2277144))))))

(declare-fun b!5715539 () Bool)

(declare-fun res!2413354 () Bool)

(assert (=> b!5715539 (=> res!2413354 e!3514983)))

(assert (=> b!5715539 (= res!2413354 (not (isEmpty!35186 (tail!11200 (_2!36113 lt!2277144)))))))

(declare-fun bm!436270 () Bool)

(assert (=> bm!436270 (= call!436275 (isEmpty!35186 (_2!36113 lt!2277144)))))

(declare-fun b!5715540 () Bool)

(assert (=> b!5715540 (= e!3514986 e!3514982)))

(declare-fun c!1007539 () Bool)

(assert (=> b!5715540 (= c!1007539 ((_ is EmptyLang!15713) lt!2277097))))

(declare-fun b!5715541 () Bool)

(assert (=> b!5715541 (= e!3514984 e!3514988)))

(declare-fun res!2413356 () Bool)

(assert (=> b!5715541 (=> (not res!2413356) (not e!3514988))))

(assert (=> b!5715541 (= res!2413356 (not lt!2277333))))

(declare-fun b!5715542 () Bool)

(assert (=> b!5715542 (= e!3514982 (not lt!2277333))))

(declare-fun b!5715543 () Bool)

(assert (=> b!5715543 (= e!3514987 (= (head!12105 (_2!36113 lt!2277144)) (c!1007275 lt!2277097)))))

(declare-fun b!5715544 () Bool)

(assert (=> b!5715544 (= e!3514986 (= lt!2277333 call!436275))))

(declare-fun b!5715545 () Bool)

(assert (=> b!5715545 (= e!3514983 (not (= (head!12105 (_2!36113 lt!2277144)) (c!1007275 lt!2277097))))))

(assert (= (and d!1802676 c!1007540) b!5715536))

(assert (= (and d!1802676 (not c!1007540)) b!5715538))

(assert (= (and d!1802676 c!1007541) b!5715544))

(assert (= (and d!1802676 (not c!1007541)) b!5715540))

(assert (= (and b!5715540 c!1007539) b!5715542))

(assert (= (and b!5715540 (not c!1007539)) b!5715537))

(assert (= (and b!5715537 (not res!2413357)) b!5715534))

(assert (= (and b!5715534 res!2413359) b!5715533))

(assert (= (and b!5715533 res!2413358) b!5715532))

(assert (= (and b!5715532 res!2413355) b!5715543))

(assert (= (and b!5715534 (not res!2413360)) b!5715541))

(assert (= (and b!5715541 res!2413356) b!5715535))

(assert (= (and b!5715535 (not res!2413361)) b!5715539))

(assert (= (and b!5715539 (not res!2413354)) b!5715545))

(assert (= (or b!5715544 b!5715533 b!5715535) bm!436270))

(assert (=> b!5715536 m!6668138))

(declare-fun m!6669118 () Bool)

(assert (=> d!1802676 m!6669118))

(assert (=> d!1802676 m!6668140))

(declare-fun m!6669120 () Bool)

(assert (=> b!5715545 m!6669120))

(assert (=> b!5715538 m!6669120))

(assert (=> b!5715538 m!6669120))

(declare-fun m!6669122 () Bool)

(assert (=> b!5715538 m!6669122))

(declare-fun m!6669124 () Bool)

(assert (=> b!5715538 m!6669124))

(assert (=> b!5715538 m!6669122))

(assert (=> b!5715538 m!6669124))

(declare-fun m!6669126 () Bool)

(assert (=> b!5715538 m!6669126))

(assert (=> b!5715532 m!6669124))

(assert (=> b!5715532 m!6669124))

(declare-fun m!6669128 () Bool)

(assert (=> b!5715532 m!6669128))

(assert (=> b!5715539 m!6669124))

(assert (=> b!5715539 m!6669124))

(assert (=> b!5715539 m!6669128))

(assert (=> b!5715543 m!6669120))

(assert (=> bm!436270 m!6669118))

(assert (=> b!5714503 d!1802676))

(declare-fun bs!1335113 () Bool)

(declare-fun d!1802678 () Bool)

(assert (= bs!1335113 (and d!1802678 b!5714528)))

(declare-fun lambda!308770 () Int)

(assert (=> bs!1335113 (= lambda!308770 lambda!308687)))

(declare-fun bs!1335114 () Bool)

(assert (= bs!1335114 (and d!1802678 d!1802606)))

(assert (=> bs!1335114 (= lambda!308770 lambda!308758)))

(declare-fun bs!1335115 () Bool)

(assert (= bs!1335115 (and d!1802678 d!1802648)))

(assert (=> bs!1335115 (= lambda!308770 lambda!308761)))

(declare-fun bs!1335116 () Bool)

(assert (= bs!1335116 (and d!1802678 d!1802650)))

(assert (=> bs!1335116 (= lambda!308770 lambda!308762)))

(declare-fun e!3515004 () Bool)

(assert (=> d!1802678 e!3515004))

(declare-fun res!2413366 () Bool)

(assert (=> d!1802678 (=> (not res!2413366) (not e!3515004))))

(declare-fun lt!2277336 () Regex!15713)

(assert (=> d!1802678 (= res!2413366 (validRegex!7449 lt!2277336))))

(declare-fun e!3515006 () Regex!15713)

(assert (=> d!1802678 (= lt!2277336 e!3515006)))

(declare-fun c!1007550 () Bool)

(declare-fun e!3515001 () Bool)

(assert (=> d!1802678 (= c!1007550 e!3515001)))

(declare-fun res!2413367 () Bool)

(assert (=> d!1802678 (=> (not res!2413367) (not e!3515001))))

(assert (=> d!1802678 (= res!2413367 ((_ is Cons!63315) (exprs!5597 (h!69764 zl!343))))))

(assert (=> d!1802678 (forall!14848 (exprs!5597 (h!69764 zl!343)) lambda!308770)))

(assert (=> d!1802678 (= (generalisedConcat!1328 (exprs!5597 (h!69764 zl!343))) lt!2277336)))

(declare-fun b!5715566 () Bool)

(declare-fun e!3515002 () Bool)

(assert (=> b!5715566 (= e!3515004 e!3515002)))

(declare-fun c!1007552 () Bool)

(assert (=> b!5715566 (= c!1007552 (isEmpty!35188 (exprs!5597 (h!69764 zl!343))))))

(declare-fun b!5715567 () Bool)

(declare-fun isEmptyExpr!1221 (Regex!15713) Bool)

(assert (=> b!5715567 (= e!3515002 (isEmptyExpr!1221 lt!2277336))))

(declare-fun b!5715568 () Bool)

(declare-fun e!3515003 () Regex!15713)

(assert (=> b!5715568 (= e!3515003 EmptyExpr!15713)))

(declare-fun b!5715569 () Bool)

(declare-fun e!3515005 () Bool)

(declare-fun isConcat!744 (Regex!15713) Bool)

(assert (=> b!5715569 (= e!3515005 (isConcat!744 lt!2277336))))

(declare-fun b!5715570 () Bool)

(assert (=> b!5715570 (= e!3515003 (Concat!24558 (h!69763 (exprs!5597 (h!69764 zl!343))) (generalisedConcat!1328 (t!376759 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun b!5715571 () Bool)

(assert (=> b!5715571 (= e!3515006 (h!69763 (exprs!5597 (h!69764 zl!343))))))

(declare-fun b!5715572 () Bool)

(assert (=> b!5715572 (= e!3515001 (isEmpty!35188 (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5715573 () Bool)

(declare-fun head!12107 (List!63439) Regex!15713)

(assert (=> b!5715573 (= e!3515005 (= lt!2277336 (head!12107 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5715574 () Bool)

(assert (=> b!5715574 (= e!3515006 e!3515003)))

(declare-fun c!1007553 () Bool)

(assert (=> b!5715574 (= c!1007553 ((_ is Cons!63315) (exprs!5597 (h!69764 zl!343))))))

(declare-fun b!5715575 () Bool)

(assert (=> b!5715575 (= e!3515002 e!3515005)))

(declare-fun c!1007551 () Bool)

(declare-fun tail!11202 (List!63439) List!63439)

(assert (=> b!5715575 (= c!1007551 (isEmpty!35188 (tail!11202 (exprs!5597 (h!69764 zl!343)))))))

(assert (= (and d!1802678 res!2413367) b!5715572))

(assert (= (and d!1802678 c!1007550) b!5715571))

(assert (= (and d!1802678 (not c!1007550)) b!5715574))

(assert (= (and b!5715574 c!1007553) b!5715570))

(assert (= (and b!5715574 (not c!1007553)) b!5715568))

(assert (= (and d!1802678 res!2413366) b!5715566))

(assert (= (and b!5715566 c!1007552) b!5715567))

(assert (= (and b!5715566 (not c!1007552)) b!5715575))

(assert (= (and b!5715575 c!1007551) b!5715573))

(assert (= (and b!5715575 (not c!1007551)) b!5715569))

(declare-fun m!6669130 () Bool)

(assert (=> b!5715575 m!6669130))

(assert (=> b!5715575 m!6669130))

(declare-fun m!6669132 () Bool)

(assert (=> b!5715575 m!6669132))

(declare-fun m!6669134 () Bool)

(assert (=> b!5715569 m!6669134))

(declare-fun m!6669136 () Bool)

(assert (=> b!5715573 m!6669136))

(assert (=> b!5715572 m!6667990))

(declare-fun m!6669138 () Bool)

(assert (=> b!5715570 m!6669138))

(declare-fun m!6669140 () Bool)

(assert (=> b!5715567 m!6669140))

(declare-fun m!6669142 () Bool)

(assert (=> b!5715566 m!6669142))

(declare-fun m!6669144 () Bool)

(assert (=> d!1802678 m!6669144))

(declare-fun m!6669146 () Bool)

(assert (=> d!1802678 m!6669146))

(assert (=> b!5714522 d!1802678))

(declare-fun bs!1335117 () Bool)

(declare-fun d!1802680 () Bool)

(assert (= bs!1335117 (and d!1802680 d!1802648)))

(declare-fun lambda!308773 () Int)

(assert (=> bs!1335117 (= lambda!308773 lambda!308761)))

(declare-fun bs!1335118 () Bool)

(assert (= bs!1335118 (and d!1802680 d!1802606)))

(assert (=> bs!1335118 (= lambda!308773 lambda!308758)))

(declare-fun bs!1335119 () Bool)

(assert (= bs!1335119 (and d!1802680 b!5714528)))

(assert (=> bs!1335119 (= lambda!308773 lambda!308687)))

(declare-fun bs!1335120 () Bool)

(assert (= bs!1335120 (and d!1802680 d!1802678)))

(assert (=> bs!1335120 (= lambda!308773 lambda!308770)))

(declare-fun bs!1335121 () Bool)

(assert (= bs!1335121 (and d!1802680 d!1802650)))

(assert (=> bs!1335121 (= lambda!308773 lambda!308762)))

(declare-fun e!3515024 () Bool)

(assert (=> d!1802680 e!3515024))

(declare-fun res!2413373 () Bool)

(assert (=> d!1802680 (=> (not res!2413373) (not e!3515024))))

(declare-fun lt!2277339 () Regex!15713)

(assert (=> d!1802680 (= res!2413373 (validRegex!7449 lt!2277339))))

(declare-fun e!3515020 () Regex!15713)

(assert (=> d!1802680 (= lt!2277339 e!3515020)))

(declare-fun c!1007565 () Bool)

(declare-fun e!3515023 () Bool)

(assert (=> d!1802680 (= c!1007565 e!3515023)))

(declare-fun res!2413372 () Bool)

(assert (=> d!1802680 (=> (not res!2413372) (not e!3515023))))

(assert (=> d!1802680 (= res!2413372 ((_ is Cons!63315) (unfocusZipperList!1141 zl!343)))))

(assert (=> d!1802680 (forall!14848 (unfocusZipperList!1141 zl!343) lambda!308773)))

(assert (=> d!1802680 (= (generalisedUnion!1576 (unfocusZipperList!1141 zl!343)) lt!2277339)))

(declare-fun b!5715596 () Bool)

(assert (=> b!5715596 (= e!3515020 (h!69763 (unfocusZipperList!1141 zl!343)))))

(declare-fun b!5715597 () Bool)

(declare-fun e!3515022 () Regex!15713)

(assert (=> b!5715597 (= e!3515022 EmptyLang!15713)))

(declare-fun b!5715598 () Bool)

(assert (=> b!5715598 (= e!3515020 e!3515022)))

(declare-fun c!1007562 () Bool)

(assert (=> b!5715598 (= c!1007562 ((_ is Cons!63315) (unfocusZipperList!1141 zl!343)))))

(declare-fun b!5715599 () Bool)

(assert (=> b!5715599 (= e!3515023 (isEmpty!35188 (t!376759 (unfocusZipperList!1141 zl!343))))))

(declare-fun b!5715600 () Bool)

(declare-fun e!3515021 () Bool)

(declare-fun isUnion!662 (Regex!15713) Bool)

(assert (=> b!5715600 (= e!3515021 (isUnion!662 lt!2277339))))

(declare-fun b!5715601 () Bool)

(declare-fun e!3515019 () Bool)

(declare-fun isEmptyLang!1232 (Regex!15713) Bool)

(assert (=> b!5715601 (= e!3515019 (isEmptyLang!1232 lt!2277339))))

(declare-fun b!5715602 () Bool)

(assert (=> b!5715602 (= e!3515022 (Union!15713 (h!69763 (unfocusZipperList!1141 zl!343)) (generalisedUnion!1576 (t!376759 (unfocusZipperList!1141 zl!343)))))))

(declare-fun b!5715603 () Bool)

(assert (=> b!5715603 (= e!3515024 e!3515019)))

(declare-fun c!1007563 () Bool)

(assert (=> b!5715603 (= c!1007563 (isEmpty!35188 (unfocusZipperList!1141 zl!343)))))

(declare-fun b!5715604 () Bool)

(assert (=> b!5715604 (= e!3515019 e!3515021)))

(declare-fun c!1007564 () Bool)

(assert (=> b!5715604 (= c!1007564 (isEmpty!35188 (tail!11202 (unfocusZipperList!1141 zl!343))))))

(declare-fun b!5715605 () Bool)

(assert (=> b!5715605 (= e!3515021 (= lt!2277339 (head!12107 (unfocusZipperList!1141 zl!343))))))

(assert (= (and d!1802680 res!2413372) b!5715599))

(assert (= (and d!1802680 c!1007565) b!5715596))

(assert (= (and d!1802680 (not c!1007565)) b!5715598))

(assert (= (and b!5715598 c!1007562) b!5715602))

(assert (= (and b!5715598 (not c!1007562)) b!5715597))

(assert (= (and d!1802680 res!2413373) b!5715603))

(assert (= (and b!5715603 c!1007563) b!5715601))

(assert (= (and b!5715603 (not c!1007563)) b!5715604))

(assert (= (and b!5715604 c!1007564) b!5715605))

(assert (= (and b!5715604 (not c!1007564)) b!5715600))

(declare-fun m!6669148 () Bool)

(assert (=> d!1802680 m!6669148))

(assert (=> d!1802680 m!6667898))

(declare-fun m!6669150 () Bool)

(assert (=> d!1802680 m!6669150))

(declare-fun m!6669152 () Bool)

(assert (=> b!5715600 m!6669152))

(assert (=> b!5715603 m!6667898))

(declare-fun m!6669154 () Bool)

(assert (=> b!5715603 m!6669154))

(assert (=> b!5715605 m!6667898))

(declare-fun m!6669156 () Bool)

(assert (=> b!5715605 m!6669156))

(declare-fun m!6669158 () Bool)

(assert (=> b!5715599 m!6669158))

(declare-fun m!6669160 () Bool)

(assert (=> b!5715601 m!6669160))

(declare-fun m!6669162 () Bool)

(assert (=> b!5715602 m!6669162))

(assert (=> b!5715604 m!6667898))

(declare-fun m!6669164 () Bool)

(assert (=> b!5715604 m!6669164))

(assert (=> b!5715604 m!6669164))

(declare-fun m!6669166 () Bool)

(assert (=> b!5715604 m!6669166))

(assert (=> b!5714501 d!1802680))

(declare-fun bs!1335122 () Bool)

(declare-fun d!1802682 () Bool)

(assert (= bs!1335122 (and d!1802682 d!1802648)))

(declare-fun lambda!308776 () Int)

(assert (=> bs!1335122 (= lambda!308776 lambda!308761)))

(declare-fun bs!1335123 () Bool)

(assert (= bs!1335123 (and d!1802682 d!1802606)))

(assert (=> bs!1335123 (= lambda!308776 lambda!308758)))

(declare-fun bs!1335124 () Bool)

(assert (= bs!1335124 (and d!1802682 b!5714528)))

(assert (=> bs!1335124 (= lambda!308776 lambda!308687)))

(declare-fun bs!1335125 () Bool)

(assert (= bs!1335125 (and d!1802682 d!1802650)))

(assert (=> bs!1335125 (= lambda!308776 lambda!308762)))

(declare-fun bs!1335126 () Bool)

(assert (= bs!1335126 (and d!1802682 d!1802678)))

(assert (=> bs!1335126 (= lambda!308776 lambda!308770)))

(declare-fun bs!1335127 () Bool)

(assert (= bs!1335127 (and d!1802682 d!1802680)))

(assert (=> bs!1335127 (= lambda!308776 lambda!308773)))

(declare-fun lt!2277342 () List!63439)

(assert (=> d!1802682 (forall!14848 lt!2277342 lambda!308776)))

(declare-fun e!3515027 () List!63439)

(assert (=> d!1802682 (= lt!2277342 e!3515027)))

(declare-fun c!1007568 () Bool)

(assert (=> d!1802682 (= c!1007568 ((_ is Cons!63316) zl!343))))

(assert (=> d!1802682 (= (unfocusZipperList!1141 zl!343) lt!2277342)))

(declare-fun b!5715610 () Bool)

(assert (=> b!5715610 (= e!3515027 (Cons!63315 (generalisedConcat!1328 (exprs!5597 (h!69764 zl!343))) (unfocusZipperList!1141 (t!376760 zl!343))))))

(declare-fun b!5715611 () Bool)

(assert (=> b!5715611 (= e!3515027 Nil!63315)))

(assert (= (and d!1802682 c!1007568) b!5715610))

(assert (= (and d!1802682 (not c!1007568)) b!5715611))

(declare-fun m!6669168 () Bool)

(assert (=> d!1802682 m!6669168))

(assert (=> b!5715610 m!6668040))

(declare-fun m!6669170 () Bool)

(assert (=> b!5715610 m!6669170))

(assert (=> b!5714501 d!1802682))

(declare-fun d!1802684 () Bool)

(declare-fun e!3515030 () Bool)

(assert (=> d!1802684 (= (matchZipper!1851 ((_ map or) lt!2277113 lt!2277110) (t!376758 s!2326)) e!3515030)))

(declare-fun res!2413376 () Bool)

(assert (=> d!1802684 (=> res!2413376 e!3515030)))

(assert (=> d!1802684 (= res!2413376 (matchZipper!1851 lt!2277113 (t!376758 s!2326)))))

(declare-fun lt!2277345 () Unit!156384)

(declare-fun choose!43228 ((InoxSet Context!10194) (InoxSet Context!10194) List!63438) Unit!156384)

(assert (=> d!1802684 (= lt!2277345 (choose!43228 lt!2277113 lt!2277110 (t!376758 s!2326)))))

(assert (=> d!1802684 (= (lemmaZipperConcatMatchesSameAsBothZippers!738 lt!2277113 lt!2277110 (t!376758 s!2326)) lt!2277345)))

(declare-fun b!5715614 () Bool)

(assert (=> b!5715614 (= e!3515030 (matchZipper!1851 lt!2277110 (t!376758 s!2326)))))

(assert (= (and d!1802684 (not res!2413376)) b!5715614))

(assert (=> d!1802684 m!6667878))

(assert (=> d!1802684 m!6667876))

(declare-fun m!6669172 () Bool)

(assert (=> d!1802684 m!6669172))

(assert (=> b!5715614 m!6667902))

(assert (=> b!5714500 d!1802684))

(declare-fun d!1802686 () Bool)

(declare-fun c!1007569 () Bool)

(assert (=> d!1802686 (= c!1007569 (isEmpty!35186 (t!376758 s!2326)))))

(declare-fun e!3515031 () Bool)

(assert (=> d!1802686 (= (matchZipper!1851 lt!2277113 (t!376758 s!2326)) e!3515031)))

(declare-fun b!5715615 () Bool)

(assert (=> b!5715615 (= e!3515031 (nullableZipper!1663 lt!2277113))))

(declare-fun b!5715616 () Bool)

(assert (=> b!5715616 (= e!3515031 (matchZipper!1851 (derivationStepZipper!1796 lt!2277113 (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))))))

(assert (= (and d!1802686 c!1007569) b!5715615))

(assert (= (and d!1802686 (not c!1007569)) b!5715616))

(assert (=> d!1802686 m!6668866))

(declare-fun m!6669174 () Bool)

(assert (=> b!5715615 m!6669174))

(assert (=> b!5715616 m!6668870))

(assert (=> b!5715616 m!6668870))

(declare-fun m!6669176 () Bool)

(assert (=> b!5715616 m!6669176))

(assert (=> b!5715616 m!6668874))

(assert (=> b!5715616 m!6669176))

(assert (=> b!5715616 m!6668874))

(declare-fun m!6669178 () Bool)

(assert (=> b!5715616 m!6669178))

(assert (=> b!5714500 d!1802686))

(declare-fun d!1802688 () Bool)

(declare-fun c!1007570 () Bool)

(assert (=> d!1802688 (= c!1007570 (isEmpty!35186 (t!376758 s!2326)))))

(declare-fun e!3515032 () Bool)

(assert (=> d!1802688 (= (matchZipper!1851 ((_ map or) lt!2277113 lt!2277110) (t!376758 s!2326)) e!3515032)))

(declare-fun b!5715617 () Bool)

(assert (=> b!5715617 (= e!3515032 (nullableZipper!1663 ((_ map or) lt!2277113 lt!2277110)))))

(declare-fun b!5715618 () Bool)

(assert (=> b!5715618 (= e!3515032 (matchZipper!1851 (derivationStepZipper!1796 ((_ map or) lt!2277113 lt!2277110) (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))))))

(assert (= (and d!1802688 c!1007570) b!5715617))

(assert (= (and d!1802688 (not c!1007570)) b!5715618))

(assert (=> d!1802688 m!6668866))

(declare-fun m!6669180 () Bool)

(assert (=> b!5715617 m!6669180))

(assert (=> b!5715618 m!6668870))

(assert (=> b!5715618 m!6668870))

(declare-fun m!6669182 () Bool)

(assert (=> b!5715618 m!6669182))

(assert (=> b!5715618 m!6668874))

(assert (=> b!5715618 m!6669182))

(assert (=> b!5715618 m!6668874))

(declare-fun m!6669184 () Bool)

(assert (=> b!5715618 m!6669184))

(assert (=> b!5714500 d!1802688))

(declare-fun d!1802690 () Bool)

(assert (=> d!1802690 (= (isEmpty!35188 (t!376759 (exprs!5597 (h!69764 zl!343)))) ((_ is Nil!63315) (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5714541 d!1802690))

(declare-fun b!5715620 () Bool)

(declare-fun e!3515035 () Bool)

(assert (=> b!5715620 (= e!3515035 (nullable!5745 (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun bm!436271 () Bool)

(declare-fun call!436279 () List!63439)

(declare-fun call!436276 () List!63439)

(assert (=> bm!436271 (= call!436279 call!436276)))

(declare-fun b!5715621 () Bool)

(declare-fun e!3515033 () (InoxSet Context!10194))

(declare-fun call!436278 () (InoxSet Context!10194))

(assert (=> b!5715621 (= e!3515033 call!436278)))

(declare-fun b!5715622 () Bool)

(declare-fun e!3515038 () (InoxSet Context!10194))

(assert (=> b!5715622 (= e!3515038 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5715623 () Bool)

(declare-fun e!3515037 () (InoxSet Context!10194))

(declare-fun call!436277 () (InoxSet Context!10194))

(declare-fun call!436281 () (InoxSet Context!10194))

(assert (=> b!5715623 (= e!3515037 ((_ map or) call!436277 call!436281))))

(declare-fun bm!436272 () Bool)

(declare-fun call!436280 () (InoxSet Context!10194))

(assert (=> bm!436272 (= call!436280 call!436281)))

(declare-fun b!5715624 () Bool)

(declare-fun c!1007572 () Bool)

(assert (=> b!5715624 (= c!1007572 ((_ is Star!15713) (reg!16042 (regOne!31938 r!7292))))))

(assert (=> b!5715624 (= e!3515033 e!3515038)))

(declare-fun bm!436273 () Bool)

(declare-fun c!1007571 () Bool)

(assert (=> bm!436273 (= call!436277 (derivationStepZipperDown!1055 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))) (ite c!1007571 lt!2277119 (Context!10195 call!436276)) (h!69762 s!2326)))))

(declare-fun c!1007573 () Bool)

(declare-fun c!1007574 () Bool)

(declare-fun bm!436274 () Bool)

(assert (=> bm!436274 (= call!436281 (derivationStepZipperDown!1055 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292)))))) (ite (or c!1007571 c!1007573) lt!2277119 (Context!10195 call!436279)) (h!69762 s!2326)))))

(declare-fun bm!436275 () Bool)

(assert (=> bm!436275 (= call!436278 call!436280)))

(declare-fun b!5715625 () Bool)

(declare-fun e!3515034 () (InoxSet Context!10194))

(assert (=> b!5715625 (= e!3515034 ((_ map or) call!436277 call!436280))))

(declare-fun b!5715626 () Bool)

(assert (=> b!5715626 (= e!3515034 e!3515033)))

(assert (=> b!5715626 (= c!1007574 ((_ is Concat!24558) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun d!1802692 () Bool)

(declare-fun c!1007575 () Bool)

(assert (=> d!1802692 (= c!1007575 (and ((_ is ElementMatch!15713) (reg!16042 (regOne!31938 r!7292))) (= (c!1007275 (reg!16042 (regOne!31938 r!7292))) (h!69762 s!2326))))))

(declare-fun e!3515036 () (InoxSet Context!10194))

(assert (=> d!1802692 (= (derivationStepZipperDown!1055 (reg!16042 (regOne!31938 r!7292)) lt!2277119 (h!69762 s!2326)) e!3515036)))

(declare-fun b!5715619 () Bool)

(assert (=> b!5715619 (= e!3515036 e!3515037)))

(assert (=> b!5715619 (= c!1007571 ((_ is Union!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5715627 () Bool)

(assert (=> b!5715627 (= e!3515036 (store ((as const (Array Context!10194 Bool)) false) lt!2277119 true))))

(declare-fun b!5715628 () Bool)

(assert (=> b!5715628 (= c!1007573 e!3515035)))

(declare-fun res!2413377 () Bool)

(assert (=> b!5715628 (=> (not res!2413377) (not e!3515035))))

(assert (=> b!5715628 (= res!2413377 ((_ is Concat!24558) (reg!16042 (regOne!31938 r!7292))))))

(assert (=> b!5715628 (= e!3515037 e!3515034)))

(declare-fun bm!436276 () Bool)

(assert (=> bm!436276 (= call!436276 ($colon$colon!1729 (exprs!5597 lt!2277119) (ite (or c!1007573 c!1007574) (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun b!5715629 () Bool)

(assert (=> b!5715629 (= e!3515038 call!436278)))

(assert (= (and d!1802692 c!1007575) b!5715627))

(assert (= (and d!1802692 (not c!1007575)) b!5715619))

(assert (= (and b!5715619 c!1007571) b!5715623))

(assert (= (and b!5715619 (not c!1007571)) b!5715628))

(assert (= (and b!5715628 res!2413377) b!5715620))

(assert (= (and b!5715628 c!1007573) b!5715625))

(assert (= (and b!5715628 (not c!1007573)) b!5715626))

(assert (= (and b!5715626 c!1007574) b!5715621))

(assert (= (and b!5715626 (not c!1007574)) b!5715624))

(assert (= (and b!5715624 c!1007572) b!5715629))

(assert (= (and b!5715624 (not c!1007572)) b!5715622))

(assert (= (or b!5715621 b!5715629) bm!436271))

(assert (= (or b!5715621 b!5715629) bm!436275))

(assert (= (or b!5715625 bm!436271) bm!436276))

(assert (= (or b!5715625 bm!436275) bm!436272))

(assert (= (or b!5715623 bm!436272) bm!436274))

(assert (= (or b!5715623 b!5715625) bm!436273))

(declare-fun m!6669186 () Bool)

(assert (=> b!5715620 m!6669186))

(declare-fun m!6669188 () Bool)

(assert (=> bm!436274 m!6669188))

(assert (=> b!5715627 m!6667888))

(declare-fun m!6669190 () Bool)

(assert (=> bm!436276 m!6669190))

(declare-fun m!6669192 () Bool)

(assert (=> bm!436273 m!6669192))

(assert (=> b!5714521 d!1802692))

(declare-fun d!1802694 () Bool)

(assert (=> d!1802694 (= (isDefined!12425 lt!2277099) (not (isEmpty!35190 lt!2277099)))))

(declare-fun bs!1335128 () Bool)

(assert (= bs!1335128 d!1802694))

(declare-fun m!6669194 () Bool)

(assert (=> bs!1335128 m!6669194))

(assert (=> b!5714499 d!1802694))

(declare-fun d!1802696 () Bool)

(assert (=> d!1802696 (= (matchR!7898 lt!2277097 (_1!36113 lt!2277139)) (matchRSpec!2816 lt!2277097 (_1!36113 lt!2277139)))))

(declare-fun lt!2277346 () Unit!156384)

(assert (=> d!1802696 (= lt!2277346 (choose!43213 lt!2277097 (_1!36113 lt!2277139)))))

(assert (=> d!1802696 (validRegex!7449 lt!2277097)))

(assert (=> d!1802696 (= (mainMatchTheorem!2816 lt!2277097 (_1!36113 lt!2277139)) lt!2277346)))

(declare-fun bs!1335129 () Bool)

(assert (= bs!1335129 d!1802696))

(assert (=> bs!1335129 m!6668042))

(assert (=> bs!1335129 m!6668052))

(declare-fun m!6669196 () Bool)

(assert (=> bs!1335129 m!6669196))

(assert (=> bs!1335129 m!6668140))

(assert (=> b!5714499 d!1802696))

(declare-fun d!1802698 () Bool)

(assert (=> d!1802698 (= (Exists!2813 lambda!308685) (choose!43215 lambda!308685))))

(declare-fun bs!1335130 () Bool)

(assert (= bs!1335130 d!1802698))

(declare-fun m!6669198 () Bool)

(assert (=> bs!1335130 m!6669198))

(assert (=> b!5714499 d!1802698))

(declare-fun bs!1335131 () Bool)

(declare-fun d!1802700 () Bool)

(assert (= bs!1335131 (and d!1802700 d!1802660)))

(declare-fun lambda!308781 () Int)

(assert (=> bs!1335131 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308781 lambda!308764))))

(declare-fun bs!1335132 () Bool)

(assert (= bs!1335132 (and d!1802700 d!1802448)))

(assert (=> bs!1335132 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308781 lambda!308742))))

(declare-fun bs!1335133 () Bool)

(assert (= bs!1335133 (and d!1802700 b!5714753)))

(assert (=> bs!1335133 (not (= lambda!308781 lambda!308716))))

(declare-fun bs!1335134 () Bool)

(assert (= bs!1335134 (and d!1802700 b!5714499)))

(assert (=> bs!1335134 (not (= lambda!308781 lambda!308685))))

(assert (=> bs!1335134 (not (= lambda!308781 lambda!308686))))

(assert (=> bs!1335131 (not (= lambda!308781 lambda!308765))))

(declare-fun bs!1335135 () Bool)

(assert (= bs!1335135 (and d!1802700 d!1802432)))

(assert (=> bs!1335135 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308781 lambda!308728))))

(declare-fun bs!1335136 () Bool)

(assert (= bs!1335136 (and d!1802700 d!1802658)))

(assert (=> bs!1335136 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308781 lambda!308763))))

(declare-fun bs!1335137 () Bool)

(assert (= bs!1335137 (and d!1802700 b!5714517)))

(assert (=> bs!1335137 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308781 lambda!308679))))

(declare-fun bs!1335138 () Bool)

(assert (= bs!1335138 (and d!1802700 b!5714504)))

(assert (=> bs!1335138 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308781 lambda!308682))))

(declare-fun bs!1335139 () Bool)

(assert (= bs!1335139 (and d!1802700 b!5715512)))

(assert (=> bs!1335139 (not (= lambda!308781 lambda!308766))))

(assert (=> bs!1335138 (not (= lambda!308781 lambda!308683))))

(declare-fun bs!1335140 () Bool)

(assert (= bs!1335140 (and d!1802700 b!5715508)))

(assert (=> bs!1335140 (not (= lambda!308781 lambda!308767))))

(assert (=> bs!1335132 (not (= lambda!308781 lambda!308743))))

(assert (=> bs!1335137 (not (= lambda!308781 lambda!308680))))

(declare-fun bs!1335141 () Bool)

(assert (= bs!1335141 (and d!1802700 b!5714749)))

(assert (=> bs!1335141 (not (= lambda!308781 lambda!308717))))

(assert (=> bs!1335134 (= (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277097) (= lambda!308781 lambda!308684))))

(assert (=> d!1802700 true))

(assert (=> d!1802700 true))

(declare-fun lambda!308782 () Int)

(assert (=> bs!1335131 (not (= lambda!308782 lambda!308764))))

(assert (=> bs!1335132 (not (= lambda!308782 lambda!308742))))

(assert (=> bs!1335133 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (reg!16042 lt!2277132)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277132)) (= lambda!308782 lambda!308716))))

(assert (=> bs!1335134 (= (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277097) (= lambda!308782 lambda!308685))))

(assert (=> bs!1335134 (not (= lambda!308782 lambda!308686))))

(declare-fun bs!1335142 () Bool)

(assert (= bs!1335142 d!1802700))

(assert (=> bs!1335142 (not (= lambda!308782 lambda!308781))))

(assert (=> bs!1335131 (not (= lambda!308782 lambda!308765))))

(assert (=> bs!1335135 (not (= lambda!308782 lambda!308728))))

(assert (=> bs!1335136 (not (= lambda!308782 lambda!308763))))

(assert (=> bs!1335137 (not (= lambda!308782 lambda!308679))))

(assert (=> bs!1335138 (not (= lambda!308782 lambda!308682))))

(assert (=> bs!1335139 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (reg!16042 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) r!7292)) (= lambda!308782 lambda!308766))))

(assert (=> bs!1335138 (not (= lambda!308782 lambda!308683))))

(assert (=> bs!1335140 (not (= lambda!308782 lambda!308767))))

(assert (=> bs!1335132 (not (= lambda!308782 lambda!308743))))

(assert (=> bs!1335137 (not (= lambda!308782 lambda!308680))))

(assert (=> bs!1335141 (not (= lambda!308782 lambda!308717))))

(assert (=> bs!1335134 (not (= lambda!308782 lambda!308684))))

(assert (=> d!1802700 true))

(assert (=> d!1802700 true))

(assert (=> d!1802700 (= (Exists!2813 lambda!308781) (Exists!2813 lambda!308782))))

(declare-fun lt!2277349 () Unit!156384)

(declare-fun choose!43229 (Regex!15713 List!63438) Unit!156384)

(assert (=> d!1802700 (= lt!2277349 (choose!43229 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277139)))))

(assert (=> d!1802700 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1802700 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!550 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277139)) lt!2277349)))

(declare-fun m!6669200 () Bool)

(assert (=> bs!1335142 m!6669200))

(declare-fun m!6669202 () Bool)

(assert (=> bs!1335142 m!6669202))

(declare-fun m!6669204 () Bool)

(assert (=> bs!1335142 m!6669204))

(assert (=> bs!1335142 m!6668948))

(assert (=> b!5714499 d!1802700))

(declare-fun b!5715640 () Bool)

(declare-fun e!3515043 () List!63438)

(assert (=> b!5715640 (= e!3515043 (_2!36113 lt!2277144))))

(declare-fun b!5715643 () Bool)

(declare-fun e!3515044 () Bool)

(declare-fun lt!2277350 () List!63438)

(assert (=> b!5715643 (= e!3515044 (or (not (= (_2!36113 lt!2277144) Nil!63314)) (= lt!2277350 (_1!36113 lt!2277144))))))

(declare-fun b!5715642 () Bool)

(declare-fun res!2413388 () Bool)

(assert (=> b!5715642 (=> (not res!2413388) (not e!3515044))))

(assert (=> b!5715642 (= res!2413388 (= (size!40024 lt!2277350) (+ (size!40024 (_1!36113 lt!2277144)) (size!40024 (_2!36113 lt!2277144)))))))

(declare-fun b!5715641 () Bool)

(assert (=> b!5715641 (= e!3515043 (Cons!63314 (h!69762 (_1!36113 lt!2277144)) (++!13908 (t!376758 (_1!36113 lt!2277144)) (_2!36113 lt!2277144))))))

(declare-fun d!1802702 () Bool)

(assert (=> d!1802702 e!3515044))

(declare-fun res!2413389 () Bool)

(assert (=> d!1802702 (=> (not res!2413389) (not e!3515044))))

(assert (=> d!1802702 (= res!2413389 (= (content!11499 lt!2277350) ((_ map or) (content!11499 (_1!36113 lt!2277144)) (content!11499 (_2!36113 lt!2277144)))))))

(assert (=> d!1802702 (= lt!2277350 e!3515043)))

(declare-fun c!1007576 () Bool)

(assert (=> d!1802702 (= c!1007576 ((_ is Nil!63314) (_1!36113 lt!2277144)))))

(assert (=> d!1802702 (= (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)) lt!2277350)))

(assert (= (and d!1802702 c!1007576) b!5715640))

(assert (= (and d!1802702 (not c!1007576)) b!5715641))

(assert (= (and d!1802702 res!2413389) b!5715642))

(assert (= (and b!5715642 res!2413388) b!5715643))

(declare-fun m!6669206 () Bool)

(assert (=> b!5715642 m!6669206))

(assert (=> b!5715642 m!6668708))

(assert (=> b!5715642 m!6668736))

(declare-fun m!6669208 () Bool)

(assert (=> b!5715641 m!6669208))

(declare-fun m!6669210 () Bool)

(assert (=> d!1802702 m!6669210))

(assert (=> d!1802702 m!6668716))

(assert (=> d!1802702 m!6668742))

(assert (=> b!5714499 d!1802702))

(declare-fun bs!1335143 () Bool)

(declare-fun d!1802704 () Bool)

(assert (= bs!1335143 (and d!1802704 d!1802660)))

(declare-fun lambda!308783 () Int)

(assert (=> bs!1335143 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308783 lambda!308764))))

(declare-fun bs!1335144 () Bool)

(assert (= bs!1335144 (and d!1802704 d!1802448)))

(assert (=> bs!1335144 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308783 lambda!308742))))

(declare-fun bs!1335145 () Bool)

(assert (= bs!1335145 (and d!1802704 b!5714753)))

(assert (=> bs!1335145 (not (= lambda!308783 lambda!308716))))

(declare-fun bs!1335146 () Bool)

(assert (= bs!1335146 (and d!1802704 b!5714499)))

(assert (=> bs!1335146 (not (= lambda!308783 lambda!308685))))

(assert (=> bs!1335146 (not (= lambda!308783 lambda!308686))))

(declare-fun bs!1335147 () Bool)

(assert (= bs!1335147 (and d!1802704 d!1802700)))

(assert (=> bs!1335147 (= (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (= lambda!308783 lambda!308781))))

(assert (=> bs!1335143 (not (= lambda!308783 lambda!308765))))

(declare-fun bs!1335148 () Bool)

(assert (= bs!1335148 (and d!1802704 d!1802432)))

(assert (=> bs!1335148 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308783 lambda!308728))))

(declare-fun bs!1335149 () Bool)

(assert (= bs!1335149 (and d!1802704 d!1802658)))

(assert (=> bs!1335149 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308783 lambda!308763))))

(declare-fun bs!1335150 () Bool)

(assert (= bs!1335150 (and d!1802704 b!5714517)))

(assert (=> bs!1335150 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308783 lambda!308679))))

(declare-fun bs!1335151 () Bool)

(assert (= bs!1335151 (and d!1802704 b!5714504)))

(assert (=> bs!1335151 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308783 lambda!308682))))

(assert (=> bs!1335147 (not (= lambda!308783 lambda!308782))))

(declare-fun bs!1335152 () Bool)

(assert (= bs!1335152 (and d!1802704 b!5715512)))

(assert (=> bs!1335152 (not (= lambda!308783 lambda!308766))))

(assert (=> bs!1335151 (not (= lambda!308783 lambda!308683))))

(declare-fun bs!1335153 () Bool)

(assert (= bs!1335153 (and d!1802704 b!5715508)))

(assert (=> bs!1335153 (not (= lambda!308783 lambda!308767))))

(assert (=> bs!1335144 (not (= lambda!308783 lambda!308743))))

(assert (=> bs!1335150 (not (= lambda!308783 lambda!308680))))

(declare-fun bs!1335154 () Bool)

(assert (= bs!1335154 (and d!1802704 b!5714749)))

(assert (=> bs!1335154 (not (= lambda!308783 lambda!308717))))

(assert (=> bs!1335146 (= lambda!308783 lambda!308684)))

(assert (=> d!1802704 true))

(assert (=> d!1802704 true))

(assert (=> d!1802704 true))

(assert (=> d!1802704 (= (isDefined!12425 (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 Nil!63314 (_1!36113 lt!2277139) (_1!36113 lt!2277139))) (Exists!2813 lambda!308783))))

(declare-fun lt!2277351 () Unit!156384)

(assert (=> d!1802704 (= lt!2277351 (choose!43216 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)))))

(assert (=> d!1802704 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1802704 (= (lemmaFindConcatSeparationEquivalentToExists!1900 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)) lt!2277351)))

(declare-fun bs!1335155 () Bool)

(assert (= bs!1335155 d!1802704))

(assert (=> bs!1335155 m!6668948))

(assert (=> bs!1335155 m!6668054))

(declare-fun m!6669212 () Bool)

(assert (=> bs!1335155 m!6669212))

(assert (=> bs!1335155 m!6668054))

(declare-fun m!6669214 () Bool)

(assert (=> bs!1335155 m!6669214))

(declare-fun m!6669216 () Bool)

(assert (=> bs!1335155 m!6669216))

(assert (=> b!5714499 d!1802704))

(declare-fun bs!1335156 () Bool)

(declare-fun b!5715649 () Bool)

(assert (= bs!1335156 (and b!5715649 d!1802660)))

(declare-fun lambda!308784 () Int)

(assert (=> bs!1335156 (not (= lambda!308784 lambda!308764))))

(declare-fun bs!1335157 () Bool)

(assert (= bs!1335157 (and b!5715649 d!1802448)))

(assert (=> bs!1335157 (not (= lambda!308784 lambda!308742))))

(declare-fun bs!1335158 () Bool)

(assert (= bs!1335158 (and b!5715649 b!5714753)))

(assert (=> bs!1335158 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 lt!2277097) (reg!16042 lt!2277132)) (= lt!2277097 lt!2277132)) (= lambda!308784 lambda!308716))))

(declare-fun bs!1335159 () Bool)

(assert (= bs!1335159 (and b!5715649 b!5714499)))

(assert (=> bs!1335159 (= (= (reg!16042 lt!2277097) (reg!16042 (regOne!31938 r!7292))) (= lambda!308784 lambda!308685))))

(assert (=> bs!1335159 (not (= lambda!308784 lambda!308686))))

(declare-fun bs!1335160 () Bool)

(assert (= bs!1335160 (and b!5715649 d!1802700)))

(assert (=> bs!1335160 (not (= lambda!308784 lambda!308781))))

(assert (=> bs!1335156 (not (= lambda!308784 lambda!308765))))

(declare-fun bs!1335161 () Bool)

(assert (= bs!1335161 (and b!5715649 d!1802432)))

(assert (=> bs!1335161 (not (= lambda!308784 lambda!308728))))

(declare-fun bs!1335162 () Bool)

(assert (= bs!1335162 (and b!5715649 d!1802658)))

(assert (=> bs!1335162 (not (= lambda!308784 lambda!308763))))

(declare-fun bs!1335163 () Bool)

(assert (= bs!1335163 (and b!5715649 b!5714517)))

(assert (=> bs!1335163 (not (= lambda!308784 lambda!308679))))

(declare-fun bs!1335164 () Bool)

(assert (= bs!1335164 (and b!5715649 b!5714504)))

(assert (=> bs!1335164 (not (= lambda!308784 lambda!308682))))

(assert (=> bs!1335160 (= (and (= (reg!16042 lt!2277097) (reg!16042 (regOne!31938 r!7292))) (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308784 lambda!308782))))

(assert (=> bs!1335164 (not (= lambda!308784 lambda!308683))))

(declare-fun bs!1335165 () Bool)

(assert (= bs!1335165 (and b!5715649 b!5715508)))

(assert (=> bs!1335165 (not (= lambda!308784 lambda!308767))))

(assert (=> bs!1335157 (not (= lambda!308784 lambda!308743))))

(assert (=> bs!1335163 (not (= lambda!308784 lambda!308680))))

(declare-fun bs!1335166 () Bool)

(assert (= bs!1335166 (and b!5715649 b!5714749)))

(assert (=> bs!1335166 (not (= lambda!308784 lambda!308717))))

(assert (=> bs!1335159 (not (= lambda!308784 lambda!308684))))

(declare-fun bs!1335167 () Bool)

(assert (= bs!1335167 (and b!5715649 d!1802704)))

(assert (=> bs!1335167 (not (= lambda!308784 lambda!308783))))

(declare-fun bs!1335168 () Bool)

(assert (= bs!1335168 (and b!5715649 b!5715512)))

(assert (=> bs!1335168 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 lt!2277097) (reg!16042 r!7292)) (= lt!2277097 r!7292)) (= lambda!308784 lambda!308766))))

(assert (=> b!5715649 true))

(assert (=> b!5715649 true))

(declare-fun bs!1335169 () Bool)

(declare-fun b!5715645 () Bool)

(assert (= bs!1335169 (and b!5715645 d!1802660)))

(declare-fun lambda!308785 () Int)

(assert (=> bs!1335169 (not (= lambda!308785 lambda!308764))))

(declare-fun bs!1335170 () Bool)

(assert (= bs!1335170 (and b!5715645 d!1802448)))

(assert (=> bs!1335170 (not (= lambda!308785 lambda!308742))))

(declare-fun bs!1335171 () Bool)

(assert (= bs!1335171 (and b!5715645 b!5714753)))

(assert (=> bs!1335171 (not (= lambda!308785 lambda!308716))))

(declare-fun bs!1335172 () Bool)

(assert (= bs!1335172 (and b!5715645 b!5714499)))

(assert (=> bs!1335172 (not (= lambda!308785 lambda!308685))))

(assert (=> bs!1335172 (= (and (= (regOne!31938 lt!2277097) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 lt!2277097) lt!2277097)) (= lambda!308785 lambda!308686))))

(declare-fun bs!1335173 () Bool)

(assert (= bs!1335173 (and b!5715645 d!1802700)))

(assert (=> bs!1335173 (not (= lambda!308785 lambda!308781))))

(assert (=> bs!1335169 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 lt!2277097) lt!2277097) (= (regTwo!31938 lt!2277097) (regTwo!31938 r!7292))) (= lambda!308785 lambda!308765))))

(declare-fun bs!1335174 () Bool)

(assert (= bs!1335174 (and b!5715645 d!1802658)))

(assert (=> bs!1335174 (not (= lambda!308785 lambda!308763))))

(declare-fun bs!1335175 () Bool)

(assert (= bs!1335175 (and b!5715645 b!5714517)))

(assert (=> bs!1335175 (not (= lambda!308785 lambda!308679))))

(declare-fun bs!1335176 () Bool)

(assert (= bs!1335176 (and b!5715645 b!5714504)))

(assert (=> bs!1335176 (not (= lambda!308785 lambda!308682))))

(assert (=> bs!1335173 (not (= lambda!308785 lambda!308782))))

(assert (=> bs!1335176 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 lt!2277097) lt!2277097) (= (regTwo!31938 lt!2277097) (regTwo!31938 r!7292))) (= lambda!308785 lambda!308683))))

(declare-fun bs!1335177 () Bool)

(assert (= bs!1335177 (and b!5715645 b!5715508)))

(assert (=> bs!1335177 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 lt!2277097) (regOne!31938 r!7292)) (= (regTwo!31938 lt!2277097) (regTwo!31938 r!7292))) (= lambda!308785 lambda!308767))))

(assert (=> bs!1335170 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 lt!2277097) (regOne!31938 r!7292)) (= (regTwo!31938 lt!2277097) (regTwo!31938 r!7292))) (= lambda!308785 lambda!308743))))

(assert (=> bs!1335175 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 lt!2277097) (regOne!31938 r!7292)) (= (regTwo!31938 lt!2277097) (regTwo!31938 r!7292))) (= lambda!308785 lambda!308680))))

(declare-fun bs!1335178 () Bool)

(assert (= bs!1335178 (and b!5715645 d!1802432)))

(assert (=> bs!1335178 (not (= lambda!308785 lambda!308728))))

(declare-fun bs!1335179 () Bool)

(assert (= bs!1335179 (and b!5715645 b!5715649)))

(assert (=> bs!1335179 (not (= lambda!308785 lambda!308784))))

(declare-fun bs!1335180 () Bool)

(assert (= bs!1335180 (and b!5715645 b!5714749)))

(assert (=> bs!1335180 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 lt!2277097) (regOne!31938 lt!2277132)) (= (regTwo!31938 lt!2277097) (regTwo!31938 lt!2277132))) (= lambda!308785 lambda!308717))))

(assert (=> bs!1335172 (not (= lambda!308785 lambda!308684))))

(declare-fun bs!1335181 () Bool)

(assert (= bs!1335181 (and b!5715645 d!1802704)))

(assert (=> bs!1335181 (not (= lambda!308785 lambda!308783))))

(declare-fun bs!1335182 () Bool)

(assert (= bs!1335182 (and b!5715645 b!5715512)))

(assert (=> bs!1335182 (not (= lambda!308785 lambda!308766))))

(assert (=> b!5715645 true))

(assert (=> b!5715645 true))

(declare-fun d!1802706 () Bool)

(declare-fun c!1007579 () Bool)

(assert (=> d!1802706 (= c!1007579 ((_ is EmptyExpr!15713) lt!2277097))))

(declare-fun e!3515051 () Bool)

(assert (=> d!1802706 (= (matchRSpec!2816 lt!2277097 (_1!36113 lt!2277139)) e!3515051)))

(declare-fun b!5715644 () Bool)

(declare-fun res!2413390 () Bool)

(declare-fun e!3515045 () Bool)

(assert (=> b!5715644 (=> res!2413390 e!3515045)))

(declare-fun call!436282 () Bool)

(assert (=> b!5715644 (= res!2413390 call!436282)))

(declare-fun e!3515050 () Bool)

(assert (=> b!5715644 (= e!3515050 e!3515045)))

(declare-fun call!436283 () Bool)

(assert (=> b!5715645 (= e!3515050 call!436283)))

(declare-fun b!5715646 () Bool)

(declare-fun c!1007577 () Bool)

(assert (=> b!5715646 (= c!1007577 ((_ is ElementMatch!15713) lt!2277097))))

(declare-fun e!3515049 () Bool)

(declare-fun e!3515046 () Bool)

(assert (=> b!5715646 (= e!3515049 e!3515046)))

(declare-fun b!5715647 () Bool)

(assert (=> b!5715647 (= e!3515046 (= (_1!36113 lt!2277139) (Cons!63314 (c!1007275 lt!2277097) Nil!63314)))))

(declare-fun b!5715648 () Bool)

(assert (=> b!5715648 (= e!3515051 e!3515049)))

(declare-fun res!2413391 () Bool)

(assert (=> b!5715648 (= res!2413391 (not ((_ is EmptyLang!15713) lt!2277097)))))

(assert (=> b!5715648 (=> (not res!2413391) (not e!3515049))))

(declare-fun bm!436277 () Bool)

(assert (=> bm!436277 (= call!436282 (isEmpty!35186 (_1!36113 lt!2277139)))))

(assert (=> b!5715649 (= e!3515045 call!436283)))

(declare-fun b!5715650 () Bool)

(assert (=> b!5715650 (= e!3515051 call!436282)))

(declare-fun b!5715651 () Bool)

(declare-fun e!3515048 () Bool)

(assert (=> b!5715651 (= e!3515048 (matchRSpec!2816 (regTwo!31939 lt!2277097) (_1!36113 lt!2277139)))))

(declare-fun b!5715652 () Bool)

(declare-fun c!1007578 () Bool)

(assert (=> b!5715652 (= c!1007578 ((_ is Union!15713) lt!2277097))))

(declare-fun e!3515047 () Bool)

(assert (=> b!5715652 (= e!3515046 e!3515047)))

(declare-fun b!5715653 () Bool)

(assert (=> b!5715653 (= e!3515047 e!3515050)))

(declare-fun c!1007580 () Bool)

(assert (=> b!5715653 (= c!1007580 ((_ is Star!15713) lt!2277097))))

(declare-fun b!5715654 () Bool)

(assert (=> b!5715654 (= e!3515047 e!3515048)))

(declare-fun res!2413392 () Bool)

(assert (=> b!5715654 (= res!2413392 (matchRSpec!2816 (regOne!31939 lt!2277097) (_1!36113 lt!2277139)))))

(assert (=> b!5715654 (=> res!2413392 e!3515048)))

(declare-fun bm!436278 () Bool)

(assert (=> bm!436278 (= call!436283 (Exists!2813 (ite c!1007580 lambda!308784 lambda!308785)))))

(assert (= (and d!1802706 c!1007579) b!5715650))

(assert (= (and d!1802706 (not c!1007579)) b!5715648))

(assert (= (and b!5715648 res!2413391) b!5715646))

(assert (= (and b!5715646 c!1007577) b!5715647))

(assert (= (and b!5715646 (not c!1007577)) b!5715652))

(assert (= (and b!5715652 c!1007578) b!5715654))

(assert (= (and b!5715652 (not c!1007578)) b!5715653))

(assert (= (and b!5715654 (not res!2413392)) b!5715651))

(assert (= (and b!5715653 c!1007580) b!5715644))

(assert (= (and b!5715653 (not c!1007580)) b!5715645))

(assert (= (and b!5715644 (not res!2413390)) b!5715649))

(assert (= (or b!5715649 b!5715645) bm!436278))

(assert (= (or b!5715650 b!5715644) bm!436277))

(assert (=> bm!436277 m!6667992))

(declare-fun m!6669218 () Bool)

(assert (=> b!5715651 m!6669218))

(declare-fun m!6669220 () Bool)

(assert (=> b!5715654 m!6669220))

(declare-fun m!6669222 () Bool)

(assert (=> bm!436278 m!6669222))

(assert (=> b!5714499 d!1802706))

(declare-fun d!1802708 () Bool)

(assert (=> d!1802708 (= (Exists!2813 lambda!308684) (choose!43215 lambda!308684))))

(declare-fun bs!1335183 () Bool)

(assert (= bs!1335183 d!1802708))

(declare-fun m!6669224 () Bool)

(assert (=> bs!1335183 m!6669224))

(assert (=> b!5714499 d!1802708))

(declare-fun d!1802710 () Bool)

(assert (=> d!1802710 (= (Exists!2813 lambda!308686) (choose!43215 lambda!308686))))

(declare-fun bs!1335184 () Bool)

(assert (= bs!1335184 d!1802710))

(declare-fun m!6669226 () Bool)

(assert (=> bs!1335184 m!6669226))

(assert (=> b!5714499 d!1802710))

(declare-fun d!1802712 () Bool)

(assert (=> d!1802712 (= (get!21829 lt!2277099) (v!51776 lt!2277099))))

(assert (=> b!5714499 d!1802712))

(declare-fun bs!1335185 () Bool)

(declare-fun d!1802714 () Bool)

(assert (= bs!1335185 (and d!1802714 d!1802660)))

(declare-fun lambda!308786 () Int)

(assert (=> bs!1335185 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308786 lambda!308764))))

(declare-fun bs!1335186 () Bool)

(assert (= bs!1335186 (and d!1802714 d!1802448)))

(assert (=> bs!1335186 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308786 lambda!308742))))

(declare-fun bs!1335187 () Bool)

(assert (= bs!1335187 (and d!1802714 b!5714753)))

(assert (=> bs!1335187 (not (= lambda!308786 lambda!308716))))

(declare-fun bs!1335188 () Bool)

(assert (= bs!1335188 (and d!1802714 b!5714499)))

(assert (=> bs!1335188 (not (= lambda!308786 lambda!308685))))

(declare-fun bs!1335189 () Bool)

(assert (= bs!1335189 (and d!1802714 d!1802700)))

(assert (=> bs!1335189 (= (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (= lambda!308786 lambda!308781))))

(assert (=> bs!1335185 (not (= lambda!308786 lambda!308765))))

(declare-fun bs!1335190 () Bool)

(assert (= bs!1335190 (and d!1802714 d!1802658)))

(assert (=> bs!1335190 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308786 lambda!308763))))

(declare-fun bs!1335191 () Bool)

(assert (= bs!1335191 (and d!1802714 b!5714517)))

(assert (=> bs!1335191 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308786 lambda!308679))))

(declare-fun bs!1335192 () Bool)

(assert (= bs!1335192 (and d!1802714 b!5714504)))

(assert (=> bs!1335192 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308786 lambda!308682))))

(assert (=> bs!1335189 (not (= lambda!308786 lambda!308782))))

(assert (=> bs!1335192 (not (= lambda!308786 lambda!308683))))

(declare-fun bs!1335193 () Bool)

(assert (= bs!1335193 (and d!1802714 b!5715508)))

(assert (=> bs!1335193 (not (= lambda!308786 lambda!308767))))

(assert (=> bs!1335188 (not (= lambda!308786 lambda!308686))))

(declare-fun bs!1335194 () Bool)

(assert (= bs!1335194 (and d!1802714 b!5715645)))

(assert (=> bs!1335194 (not (= lambda!308786 lambda!308785))))

(assert (=> bs!1335186 (not (= lambda!308786 lambda!308743))))

(assert (=> bs!1335191 (not (= lambda!308786 lambda!308680))))

(declare-fun bs!1335195 () Bool)

(assert (= bs!1335195 (and d!1802714 d!1802432)))

(assert (=> bs!1335195 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308786 lambda!308728))))

(declare-fun bs!1335196 () Bool)

(assert (= bs!1335196 (and d!1802714 b!5715649)))

(assert (=> bs!1335196 (not (= lambda!308786 lambda!308784))))

(declare-fun bs!1335197 () Bool)

(assert (= bs!1335197 (and d!1802714 b!5714749)))

(assert (=> bs!1335197 (not (= lambda!308786 lambda!308717))))

(assert (=> bs!1335188 (= lambda!308786 lambda!308684)))

(declare-fun bs!1335198 () Bool)

(assert (= bs!1335198 (and d!1802714 d!1802704)))

(assert (=> bs!1335198 (= lambda!308786 lambda!308783)))

(declare-fun bs!1335199 () Bool)

(assert (= bs!1335199 (and d!1802714 b!5715512)))

(assert (=> bs!1335199 (not (= lambda!308786 lambda!308766))))

(assert (=> d!1802714 true))

(assert (=> d!1802714 true))

(assert (=> d!1802714 true))

(declare-fun lambda!308787 () Int)

(assert (=> bs!1335185 (not (= lambda!308787 lambda!308764))))

(assert (=> bs!1335186 (not (= lambda!308787 lambda!308742))))

(assert (=> bs!1335187 (not (= lambda!308787 lambda!308716))))

(assert (=> bs!1335188 (not (= lambda!308787 lambda!308685))))

(assert (=> bs!1335189 (not (= lambda!308787 lambda!308781))))

(assert (=> bs!1335185 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308787 lambda!308765))))

(assert (=> bs!1335190 (not (= lambda!308787 lambda!308763))))

(assert (=> bs!1335191 (not (= lambda!308787 lambda!308679))))

(assert (=> bs!1335192 (not (= lambda!308787 lambda!308682))))

(assert (=> bs!1335189 (not (= lambda!308787 lambda!308782))))

(declare-fun bs!1335200 () Bool)

(assert (= bs!1335200 d!1802714))

(assert (=> bs!1335200 (not (= lambda!308787 lambda!308786))))

(assert (=> bs!1335192 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308787 lambda!308683))))

(assert (=> bs!1335193 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308787 lambda!308767))))

(assert (=> bs!1335188 (= lambda!308787 lambda!308686)))

(assert (=> bs!1335194 (= (and (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 lt!2277097)) (= lt!2277097 (regTwo!31938 lt!2277097))) (= lambda!308787 lambda!308785))))

(assert (=> bs!1335186 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308787 lambda!308743))))

(assert (=> bs!1335191 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308787 lambda!308680))))

(assert (=> bs!1335195 (not (= lambda!308787 lambda!308728))))

(assert (=> bs!1335196 (not (= lambda!308787 lambda!308784))))

(assert (=> bs!1335197 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 lt!2277132)) (= lt!2277097 (regTwo!31938 lt!2277132))) (= lambda!308787 lambda!308717))))

(assert (=> bs!1335188 (not (= lambda!308787 lambda!308684))))

(assert (=> bs!1335198 (not (= lambda!308787 lambda!308783))))

(assert (=> bs!1335199 (not (= lambda!308787 lambda!308766))))

(assert (=> d!1802714 true))

(assert (=> d!1802714 true))

(assert (=> d!1802714 true))

(assert (=> d!1802714 (= (Exists!2813 lambda!308786) (Exists!2813 lambda!308787))))

(declare-fun lt!2277352 () Unit!156384)

(assert (=> d!1802714 (= lt!2277352 (choose!43217 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)))))

(assert (=> d!1802714 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1802714 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1442 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)) lt!2277352)))

(declare-fun m!6669228 () Bool)

(assert (=> bs!1335200 m!6669228))

(declare-fun m!6669230 () Bool)

(assert (=> bs!1335200 m!6669230))

(declare-fun m!6669232 () Bool)

(assert (=> bs!1335200 m!6669232))

(assert (=> bs!1335200 m!6668948))

(assert (=> b!5714499 d!1802714))

(declare-fun d!1802716 () Bool)

(declare-fun e!3515056 () Bool)

(assert (=> d!1802716 e!3515056))

(declare-fun res!2413393 () Bool)

(assert (=> d!1802716 (=> res!2413393 e!3515056)))

(declare-fun e!3515052 () Bool)

(assert (=> d!1802716 (= res!2413393 e!3515052)))

(declare-fun res!2413396 () Bool)

(assert (=> d!1802716 (=> (not res!2413396) (not e!3515052))))

(declare-fun lt!2277355 () Option!15722)

(assert (=> d!1802716 (= res!2413396 (isDefined!12425 lt!2277355))))

(declare-fun e!3515054 () Option!15722)

(assert (=> d!1802716 (= lt!2277355 e!3515054)))

(declare-fun c!1007582 () Bool)

(declare-fun e!3515053 () Bool)

(assert (=> d!1802716 (= c!1007582 e!3515053)))

(declare-fun res!2413394 () Bool)

(assert (=> d!1802716 (=> (not res!2413394) (not e!3515053))))

(assert (=> d!1802716 (= res!2413394 (matchR!7898 (reg!16042 (regOne!31938 r!7292)) Nil!63314))))

(assert (=> d!1802716 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1802716 (= (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 Nil!63314 (_1!36113 lt!2277139) (_1!36113 lt!2277139)) lt!2277355)))

(declare-fun b!5715655 () Bool)

(assert (=> b!5715655 (= e!3515053 (matchR!7898 lt!2277097 (_1!36113 lt!2277139)))))

(declare-fun b!5715656 () Bool)

(assert (=> b!5715656 (= e!3515056 (not (isDefined!12425 lt!2277355)))))

(declare-fun b!5715657 () Bool)

(declare-fun e!3515055 () Option!15722)

(assert (=> b!5715657 (= e!3515055 None!15721)))

(declare-fun b!5715658 () Bool)

(declare-fun res!2413397 () Bool)

(assert (=> b!5715658 (=> (not res!2413397) (not e!3515052))))

(assert (=> b!5715658 (= res!2413397 (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (_1!36113 (get!21829 lt!2277355))))))

(declare-fun b!5715659 () Bool)

(assert (=> b!5715659 (= e!3515054 e!3515055)))

(declare-fun c!1007581 () Bool)

(assert (=> b!5715659 (= c!1007581 ((_ is Nil!63314) (_1!36113 lt!2277139)))))

(declare-fun b!5715660 () Bool)

(assert (=> b!5715660 (= e!3515052 (= (++!13908 (_1!36113 (get!21829 lt!2277355)) (_2!36113 (get!21829 lt!2277355))) (_1!36113 lt!2277139)))))

(declare-fun b!5715661 () Bool)

(assert (=> b!5715661 (= e!3515054 (Some!15721 (tuple2!65621 Nil!63314 (_1!36113 lt!2277139))))))

(declare-fun b!5715662 () Bool)

(declare-fun res!2413395 () Bool)

(assert (=> b!5715662 (=> (not res!2413395) (not e!3515052))))

(assert (=> b!5715662 (= res!2413395 (matchR!7898 lt!2277097 (_2!36113 (get!21829 lt!2277355))))))

(declare-fun b!5715663 () Bool)

(declare-fun lt!2277354 () Unit!156384)

(declare-fun lt!2277353 () Unit!156384)

(assert (=> b!5715663 (= lt!2277354 lt!2277353)))

(assert (=> b!5715663 (= (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (t!376758 (_1!36113 lt!2277139))) (_1!36113 lt!2277139))))

(assert (=> b!5715663 (= lt!2277353 (lemmaMoveElementToOtherListKeepsConcatEq!2066 Nil!63314 (h!69762 (_1!36113 lt!2277139)) (t!376758 (_1!36113 lt!2277139)) (_1!36113 lt!2277139)))))

(assert (=> b!5715663 (= e!3515055 (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (t!376758 (_1!36113 lt!2277139)) (_1!36113 lt!2277139)))))

(assert (= (and d!1802716 res!2413394) b!5715655))

(assert (= (and d!1802716 c!1007582) b!5715661))

(assert (= (and d!1802716 (not c!1007582)) b!5715659))

(assert (= (and b!5715659 c!1007581) b!5715657))

(assert (= (and b!5715659 (not c!1007581)) b!5715663))

(assert (= (and d!1802716 res!2413396) b!5715658))

(assert (= (and b!5715658 res!2413397) b!5715662))

(assert (= (and b!5715662 res!2413395) b!5715660))

(assert (= (and d!1802716 (not res!2413393)) b!5715656))

(declare-fun m!6669234 () Bool)

(assert (=> b!5715660 m!6669234))

(declare-fun m!6669236 () Bool)

(assert (=> b!5715660 m!6669236))

(assert (=> b!5715658 m!6669234))

(declare-fun m!6669238 () Bool)

(assert (=> b!5715658 m!6669238))

(declare-fun m!6669240 () Bool)

(assert (=> b!5715663 m!6669240))

(assert (=> b!5715663 m!6669240))

(declare-fun m!6669242 () Bool)

(assert (=> b!5715663 m!6669242))

(declare-fun m!6669244 () Bool)

(assert (=> b!5715663 m!6669244))

(assert (=> b!5715663 m!6669240))

(declare-fun m!6669246 () Bool)

(assert (=> b!5715663 m!6669246))

(assert (=> b!5715662 m!6669234))

(declare-fun m!6669248 () Bool)

(assert (=> b!5715662 m!6669248))

(assert (=> b!5715655 m!6668042))

(declare-fun m!6669250 () Bool)

(assert (=> d!1802716 m!6669250))

(declare-fun m!6669252 () Bool)

(assert (=> d!1802716 m!6669252))

(assert (=> d!1802716 m!6668948))

(assert (=> b!5715656 m!6669250))

(assert (=> b!5714499 d!1802716))

(declare-fun b!5715664 () Bool)

(declare-fun res!2413399 () Bool)

(declare-fun e!3515062 () Bool)

(assert (=> b!5715664 (=> (not res!2413399) (not e!3515062))))

(assert (=> b!5715664 (= res!2413399 (isEmpty!35186 (tail!11200 (_1!36113 lt!2277144))))))

(declare-fun b!5715665 () Bool)

(declare-fun res!2413402 () Bool)

(assert (=> b!5715665 (=> (not res!2413402) (not e!3515062))))

(declare-fun call!436284 () Bool)

(assert (=> b!5715665 (= res!2413402 (not call!436284))))

(declare-fun b!5715666 () Bool)

(declare-fun res!2413404 () Bool)

(declare-fun e!3515059 () Bool)

(assert (=> b!5715666 (=> res!2413404 e!3515059)))

(assert (=> b!5715666 (= res!2413404 e!3515062)))

(declare-fun res!2413403 () Bool)

(assert (=> b!5715666 (=> (not res!2413403) (not e!3515062))))

(declare-fun lt!2277356 () Bool)

(assert (=> b!5715666 (= res!2413403 lt!2277356)))

(declare-fun d!1802718 () Bool)

(declare-fun e!3515061 () Bool)

(assert (=> d!1802718 e!3515061))

(declare-fun c!1007585 () Bool)

(assert (=> d!1802718 (= c!1007585 ((_ is EmptyExpr!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun e!3515060 () Bool)

(assert (=> d!1802718 (= lt!2277356 e!3515060)))

(declare-fun c!1007584 () Bool)

(assert (=> d!1802718 (= c!1007584 (isEmpty!35186 (_1!36113 lt!2277144)))))

(assert (=> d!1802718 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1802718 (= (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144)) lt!2277356)))

(declare-fun b!5715667 () Bool)

(declare-fun e!3515063 () Bool)

(declare-fun e!3515058 () Bool)

(assert (=> b!5715667 (= e!3515063 e!3515058)))

(declare-fun res!2413405 () Bool)

(assert (=> b!5715667 (=> res!2413405 e!3515058)))

(assert (=> b!5715667 (= res!2413405 call!436284)))

(declare-fun b!5715668 () Bool)

(assert (=> b!5715668 (= e!3515060 (nullable!5745 (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5715669 () Bool)

(declare-fun res!2413401 () Bool)

(assert (=> b!5715669 (=> res!2413401 e!3515059)))

(assert (=> b!5715669 (= res!2413401 (not ((_ is ElementMatch!15713) (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun e!3515057 () Bool)

(assert (=> b!5715669 (= e!3515057 e!3515059)))

(declare-fun b!5715670 () Bool)

(assert (=> b!5715670 (= e!3515060 (matchR!7898 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144))) (tail!11200 (_1!36113 lt!2277144))))))

(declare-fun b!5715671 () Bool)

(declare-fun res!2413398 () Bool)

(assert (=> b!5715671 (=> res!2413398 e!3515058)))

(assert (=> b!5715671 (= res!2413398 (not (isEmpty!35186 (tail!11200 (_1!36113 lt!2277144)))))))

(declare-fun bm!436279 () Bool)

(assert (=> bm!436279 (= call!436284 (isEmpty!35186 (_1!36113 lt!2277144)))))

(declare-fun b!5715672 () Bool)

(assert (=> b!5715672 (= e!3515061 e!3515057)))

(declare-fun c!1007583 () Bool)

(assert (=> b!5715672 (= c!1007583 ((_ is EmptyLang!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5715673 () Bool)

(assert (=> b!5715673 (= e!3515059 e!3515063)))

(declare-fun res!2413400 () Bool)

(assert (=> b!5715673 (=> (not res!2413400) (not e!3515063))))

(assert (=> b!5715673 (= res!2413400 (not lt!2277356))))

(declare-fun b!5715674 () Bool)

(assert (=> b!5715674 (= e!3515057 (not lt!2277356))))

(declare-fun b!5715675 () Bool)

(assert (=> b!5715675 (= e!3515062 (= (head!12105 (_1!36113 lt!2277144)) (c!1007275 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun b!5715676 () Bool)

(assert (=> b!5715676 (= e!3515061 (= lt!2277356 call!436284))))

(declare-fun b!5715677 () Bool)

(assert (=> b!5715677 (= e!3515058 (not (= (head!12105 (_1!36113 lt!2277144)) (c!1007275 (reg!16042 (regOne!31938 r!7292))))))))

(assert (= (and d!1802718 c!1007584) b!5715668))

(assert (= (and d!1802718 (not c!1007584)) b!5715670))

(assert (= (and d!1802718 c!1007585) b!5715676))

(assert (= (and d!1802718 (not c!1007585)) b!5715672))

(assert (= (and b!5715672 c!1007583) b!5715674))

(assert (= (and b!5715672 (not c!1007583)) b!5715669))

(assert (= (and b!5715669 (not res!2413401)) b!5715666))

(assert (= (and b!5715666 res!2413403) b!5715665))

(assert (= (and b!5715665 res!2413402) b!5715664))

(assert (= (and b!5715664 res!2413399) b!5715675))

(assert (= (and b!5715666 (not res!2413404)) b!5715673))

(assert (= (and b!5715673 res!2413400) b!5715667))

(assert (= (and b!5715667 (not res!2413405)) b!5715671))

(assert (= (and b!5715671 (not res!2413398)) b!5715677))

(assert (= (or b!5715676 b!5715665 b!5715667) bm!436279))

(declare-fun m!6669254 () Bool)

(assert (=> b!5715668 m!6669254))

(assert (=> d!1802718 m!6668998))

(assert (=> d!1802718 m!6668948))

(assert (=> b!5715677 m!6669002))

(assert (=> b!5715670 m!6669002))

(assert (=> b!5715670 m!6669002))

(declare-fun m!6669256 () Bool)

(assert (=> b!5715670 m!6669256))

(assert (=> b!5715670 m!6669006))

(assert (=> b!5715670 m!6669256))

(assert (=> b!5715670 m!6669006))

(declare-fun m!6669258 () Bool)

(assert (=> b!5715670 m!6669258))

(assert (=> b!5715664 m!6669006))

(assert (=> b!5715664 m!6669006))

(declare-fun m!6669260 () Bool)

(assert (=> b!5715664 m!6669260))

(assert (=> b!5715671 m!6669006))

(assert (=> b!5715671 m!6669006))

(assert (=> b!5715671 m!6669260))

(assert (=> b!5715675 m!6669002))

(assert (=> bm!436279 m!6668998))

(assert (=> b!5714540 d!1802718))

(declare-fun b!5715682 () Bool)

(declare-fun e!3515066 () Bool)

(declare-fun tp!1583477 () Bool)

(declare-fun tp!1583478 () Bool)

(assert (=> b!5715682 (= e!3515066 (and tp!1583477 tp!1583478))))

(assert (=> b!5714502 (= tp!1583410 e!3515066)))

(assert (= (and b!5714502 ((_ is Cons!63315) (exprs!5597 setElem!38279))) b!5715682))

(declare-fun e!3515069 () Bool)

(assert (=> b!5714533 (= tp!1583406 e!3515069)))

(declare-fun b!5715693 () Bool)

(assert (=> b!5715693 (= e!3515069 tp_is_empty!40679)))

(declare-fun b!5715696 () Bool)

(declare-fun tp!1583491 () Bool)

(declare-fun tp!1583490 () Bool)

(assert (=> b!5715696 (= e!3515069 (and tp!1583491 tp!1583490))))

(declare-fun b!5715695 () Bool)

(declare-fun tp!1583489 () Bool)

(assert (=> b!5715695 (= e!3515069 tp!1583489)))

(declare-fun b!5715694 () Bool)

(declare-fun tp!1583493 () Bool)

(declare-fun tp!1583492 () Bool)

(assert (=> b!5715694 (= e!3515069 (and tp!1583493 tp!1583492))))

(assert (= (and b!5714533 ((_ is ElementMatch!15713) (reg!16042 r!7292))) b!5715693))

(assert (= (and b!5714533 ((_ is Concat!24558) (reg!16042 r!7292))) b!5715694))

(assert (= (and b!5714533 ((_ is Star!15713) (reg!16042 r!7292))) b!5715695))

(assert (= (and b!5714533 ((_ is Union!15713) (reg!16042 r!7292))) b!5715696))

(declare-fun e!3515070 () Bool)

(assert (=> b!5714527 (= tp!1583412 e!3515070)))

(declare-fun b!5715697 () Bool)

(assert (=> b!5715697 (= e!3515070 tp_is_empty!40679)))

(declare-fun b!5715700 () Bool)

(declare-fun tp!1583496 () Bool)

(declare-fun tp!1583495 () Bool)

(assert (=> b!5715700 (= e!3515070 (and tp!1583496 tp!1583495))))

(declare-fun b!5715699 () Bool)

(declare-fun tp!1583494 () Bool)

(assert (=> b!5715699 (= e!3515070 tp!1583494)))

(declare-fun b!5715698 () Bool)

(declare-fun tp!1583498 () Bool)

(declare-fun tp!1583497 () Bool)

(assert (=> b!5715698 (= e!3515070 (and tp!1583498 tp!1583497))))

(assert (= (and b!5714527 ((_ is ElementMatch!15713) (regOne!31938 r!7292))) b!5715697))

(assert (= (and b!5714527 ((_ is Concat!24558) (regOne!31938 r!7292))) b!5715698))

(assert (= (and b!5714527 ((_ is Star!15713) (regOne!31938 r!7292))) b!5715699))

(assert (= (and b!5714527 ((_ is Union!15713) (regOne!31938 r!7292))) b!5715700))

(declare-fun e!3515071 () Bool)

(assert (=> b!5714527 (= tp!1583411 e!3515071)))

(declare-fun b!5715701 () Bool)

(assert (=> b!5715701 (= e!3515071 tp_is_empty!40679)))

(declare-fun b!5715704 () Bool)

(declare-fun tp!1583501 () Bool)

(declare-fun tp!1583500 () Bool)

(assert (=> b!5715704 (= e!3515071 (and tp!1583501 tp!1583500))))

(declare-fun b!5715703 () Bool)

(declare-fun tp!1583499 () Bool)

(assert (=> b!5715703 (= e!3515071 tp!1583499)))

(declare-fun b!5715702 () Bool)

(declare-fun tp!1583503 () Bool)

(declare-fun tp!1583502 () Bool)

(assert (=> b!5715702 (= e!3515071 (and tp!1583503 tp!1583502))))

(assert (= (and b!5714527 ((_ is ElementMatch!15713) (regTwo!31938 r!7292))) b!5715701))

(assert (= (and b!5714527 ((_ is Concat!24558) (regTwo!31938 r!7292))) b!5715702))

(assert (= (and b!5714527 ((_ is Star!15713) (regTwo!31938 r!7292))) b!5715703))

(assert (= (and b!5714527 ((_ is Union!15713) (regTwo!31938 r!7292))) b!5715704))

(declare-fun b!5715709 () Bool)

(declare-fun e!3515074 () Bool)

(declare-fun tp!1583506 () Bool)

(assert (=> b!5715709 (= e!3515074 (and tp_is_empty!40679 tp!1583506))))

(assert (=> b!5714507 (= tp!1583414 e!3515074)))

(assert (= (and b!5714507 ((_ is Cons!63314) (t!376758 s!2326))) b!5715709))

(declare-fun b!5715710 () Bool)

(declare-fun e!3515075 () Bool)

(declare-fun tp!1583507 () Bool)

(declare-fun tp!1583508 () Bool)

(assert (=> b!5715710 (= e!3515075 (and tp!1583507 tp!1583508))))

(assert (=> b!5714531 (= tp!1583405 e!3515075)))

(assert (= (and b!5714531 ((_ is Cons!63315) (exprs!5597 (h!69764 zl!343)))) b!5715710))

(declare-fun condSetEmpty!38285 () Bool)

(assert (=> setNonEmpty!38279 (= condSetEmpty!38285 (= setRest!38279 ((as const (Array Context!10194 Bool)) false)))))

(declare-fun setRes!38285 () Bool)

(assert (=> setNonEmpty!38279 (= tp!1583408 setRes!38285)))

(declare-fun setIsEmpty!38285 () Bool)

(assert (=> setIsEmpty!38285 setRes!38285))

(declare-fun tp!1583514 () Bool)

(declare-fun e!3515078 () Bool)

(declare-fun setNonEmpty!38285 () Bool)

(declare-fun setElem!38285 () Context!10194)

(assert (=> setNonEmpty!38285 (= setRes!38285 (and tp!1583514 (inv!82529 setElem!38285) e!3515078))))

(declare-fun setRest!38285 () (InoxSet Context!10194))

(assert (=> setNonEmpty!38285 (= setRest!38279 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) setElem!38285 true) setRest!38285))))

(declare-fun b!5715715 () Bool)

(declare-fun tp!1583513 () Bool)

(assert (=> b!5715715 (= e!3515078 tp!1583513)))

(assert (= (and setNonEmpty!38279 condSetEmpty!38285) setIsEmpty!38285))

(assert (= (and setNonEmpty!38279 (not condSetEmpty!38285)) setNonEmpty!38285))

(assert (= setNonEmpty!38285 b!5715715))

(declare-fun m!6669262 () Bool)

(assert (=> setNonEmpty!38285 m!6669262))

(declare-fun b!5715723 () Bool)

(declare-fun e!3515084 () Bool)

(declare-fun tp!1583519 () Bool)

(assert (=> b!5715723 (= e!3515084 tp!1583519)))

(declare-fun e!3515083 () Bool)

(declare-fun b!5715722 () Bool)

(declare-fun tp!1583520 () Bool)

(assert (=> b!5715722 (= e!3515083 (and (inv!82529 (h!69764 (t!376760 zl!343))) e!3515084 tp!1583520))))

(assert (=> b!5714505 (= tp!1583409 e!3515083)))

(assert (= b!5715722 b!5715723))

(assert (= (and b!5714505 ((_ is Cons!63316) (t!376760 zl!343))) b!5715722))

(declare-fun m!6669264 () Bool)

(assert (=> b!5715722 m!6669264))

(declare-fun e!3515085 () Bool)

(assert (=> b!5714498 (= tp!1583413 e!3515085)))

(declare-fun b!5715724 () Bool)

(assert (=> b!5715724 (= e!3515085 tp_is_empty!40679)))

(declare-fun b!5715727 () Bool)

(declare-fun tp!1583523 () Bool)

(declare-fun tp!1583522 () Bool)

(assert (=> b!5715727 (= e!3515085 (and tp!1583523 tp!1583522))))

(declare-fun b!5715726 () Bool)

(declare-fun tp!1583521 () Bool)

(assert (=> b!5715726 (= e!3515085 tp!1583521)))

(declare-fun b!5715725 () Bool)

(declare-fun tp!1583525 () Bool)

(declare-fun tp!1583524 () Bool)

(assert (=> b!5715725 (= e!3515085 (and tp!1583525 tp!1583524))))

(assert (= (and b!5714498 ((_ is ElementMatch!15713) (regOne!31939 r!7292))) b!5715724))

(assert (= (and b!5714498 ((_ is Concat!24558) (regOne!31939 r!7292))) b!5715725))

(assert (= (and b!5714498 ((_ is Star!15713) (regOne!31939 r!7292))) b!5715726))

(assert (= (and b!5714498 ((_ is Union!15713) (regOne!31939 r!7292))) b!5715727))

(declare-fun e!3515086 () Bool)

(assert (=> b!5714498 (= tp!1583407 e!3515086)))

(declare-fun b!5715728 () Bool)

(assert (=> b!5715728 (= e!3515086 tp_is_empty!40679)))

(declare-fun b!5715731 () Bool)

(declare-fun tp!1583528 () Bool)

(declare-fun tp!1583527 () Bool)

(assert (=> b!5715731 (= e!3515086 (and tp!1583528 tp!1583527))))

(declare-fun b!5715730 () Bool)

(declare-fun tp!1583526 () Bool)

(assert (=> b!5715730 (= e!3515086 tp!1583526)))

(declare-fun b!5715729 () Bool)

(declare-fun tp!1583530 () Bool)

(declare-fun tp!1583529 () Bool)

(assert (=> b!5715729 (= e!3515086 (and tp!1583530 tp!1583529))))

(assert (= (and b!5714498 ((_ is ElementMatch!15713) (regTwo!31939 r!7292))) b!5715728))

(assert (= (and b!5714498 ((_ is Concat!24558) (regTwo!31939 r!7292))) b!5715729))

(assert (= (and b!5714498 ((_ is Star!15713) (regTwo!31939 r!7292))) b!5715730))

(assert (= (and b!5714498 ((_ is Union!15713) (regTwo!31939 r!7292))) b!5715731))

(declare-fun b_lambda!215967 () Bool)

(assert (= b_lambda!215957 (or b!5714534 b_lambda!215967)))

(declare-fun bs!1335201 () Bool)

(declare-fun d!1802720 () Bool)

(assert (= bs!1335201 (and d!1802720 b!5714534)))

(assert (=> bs!1335201 (= (dynLambda!24772 lambda!308681 lt!2277095) (derivationStepZipperUp!981 lt!2277095 (h!69762 s!2326)))))

(assert (=> bs!1335201 m!6667916))

(assert (=> d!1802594 d!1802720))

(declare-fun b_lambda!215969 () Bool)

(assert (= b_lambda!215947 (or b!5714534 b_lambda!215969)))

(declare-fun bs!1335202 () Bool)

(declare-fun d!1802722 () Bool)

(assert (= bs!1335202 (and d!1802722 b!5714534)))

(assert (=> bs!1335202 (= (dynLambda!24772 lambda!308681 lt!2277124) (derivationStepZipperUp!981 lt!2277124 (h!69762 s!2326)))))

(assert (=> bs!1335202 m!6667894))

(assert (=> d!1802502 d!1802722))

(declare-fun b_lambda!215971 () Bool)

(assert (= b_lambda!215949 (or b!5714534 b_lambda!215971)))

(declare-fun bs!1335203 () Bool)

(declare-fun d!1802724 () Bool)

(assert (= bs!1335203 (and d!1802724 b!5714534)))

(assert (=> bs!1335203 (= (dynLambda!24772 lambda!308681 (h!69764 zl!343)) (derivationStepZipperUp!981 (h!69764 zl!343) (h!69762 s!2326)))))

(assert (=> bs!1335203 m!6668010))

(assert (=> d!1802510 d!1802724))

(declare-fun b_lambda!215973 () Bool)

(assert (= b_lambda!215945 (or b!5714534 b_lambda!215973)))

(declare-fun bs!1335204 () Bool)

(declare-fun d!1802726 () Bool)

(assert (= bs!1335204 (and d!1802726 b!5714534)))

(assert (=> bs!1335204 (= (dynLambda!24772 lambda!308681 lt!2277119) (derivationStepZipperUp!981 lt!2277119 (h!69762 s!2326)))))

(assert (=> bs!1335204 m!6667886))

(assert (=> d!1802498 d!1802726))

(check-sat (not bm!436173) (not bs!1335204) (not b!5715517) (not d!1802594) (not b!5714841) (not b!5715543) (not d!1802486) (not bm!436176) (not b!5714846) (not b!5714848) (not b!5715498) (not b!5715605) (not d!1802668) (not bm!436269) (not b!5715641) (not b!5715704) (not d!1802636) (not b!5715695) (not d!1802648) (not b!5715532) (not d!1802658) (not b!5715675) (not bm!436277) (not d!1802662) (not b!5715600) (not d!1802714) (not b!5714659) (not b!5715663) (not b!5714648) (not b!5715076) (not d!1802694) (not b!5715731) (not b_lambda!215971) (not d!1802638) (not b!5715478) (not b!5715087) (not b!5715660) (not d!1802490) (not d!1802588) (not b!5715213) (not b!5715451) (not d!1802716) (not b!5715505) (not b!5715468) (not b!5715709) (not b!5715725) (not b!5715203) (not d!1802538) (not b!5715077) (not b!5715306) (not d!1802708) (not d!1802512) (not b!5714835) (not d!1802680) (not bm!436172) (not bm!436276) (not b!5715522) (not d!1802540) (not b!5715658) (not b!5714806) (not b!5715727) (not b!5715202) (not bm!436199) (not bm!436229) (not b!5715670) (not d!1802498) (not d!1802600) (not d!1802630) (not d!1802506) (not b!5715501) (not d!1802644) (not bm!436207) (not b!5715470) (not b!5715698) (not b!5714795) (not b!5715434) (not b!5715601) (not b!5715496) (not b!5715211) (not b!5715710) (not b!5715441) (not bm!436265) (not d!1802674) (not b!5714801) (not b!5715461) (not b!5714799) (not d!1802584) (not b!5715531) (not b_lambda!215969) (not b!5715460) (not b!5715545) (not b!5715458) (not d!1802660) (not d!1802502) (not d!1802646) (not b!5715702) (not d!1802704) (not b!5715703) (not d!1802426) (not b!5715476) (not bm!436250) (not bs!1335203) (not b!5715677) (not bm!436251) (not bm!436161) (not d!1802672) (not b!5715428) (not b!5715514) (not b!5714948) (not b!5715396) (not d!1802718) (not d!1802710) (not d!1802510) (not b!5715432) (not b_lambda!215973) (not b!5715158) (not d!1802382) (not b!5715696) (not d!1802628) (not b!5714808) (not b!5715499) (not b!5715103) (not d!1802698) (not b!5715323) (not b!5715169) (not b!5715700) (not b_lambda!215967) (not b!5715668) (not b!5715617) (not d!1802664) (not b!5715439) (not b!5715395) (not d!1802552) (not b!5715567) (not d!1802606) (not b!5715654) (not b!5715220) (not b!5715682) (not b!5714951) (not b!5714655) (not d!1802632) (not d!1802484) (not d!1802542) (not b!5715506) (not d!1802696) (not b!5715699) (not d!1802620) (not d!1802590) (not b!5715569) (not bm!436228) (not bm!436225) (not b!5714652) (not b!5715493) (not bm!436278) (not b!5715495) (not bm!436200) (not b!5715246) (not b!5715603) (not b!5715221) tp_is_empty!40679 (not b!5715485) (not b!5715503) (not b!5715616) (not b!5714755) (not b!5715168) (not b!5715454) (not d!1802626) (not b!5714842) (not b!5715474) (not b!5715651) (not bm!436264) (not d!1802504) (not bm!436226) (not b!5715324) (not bm!436194) (not d!1802650) (not b!5715484) (not b!5715518) (not d!1802700) (not b!5715656) (not d!1802640) (not b!5715465) (not b!5715572) (not bm!436253) (not bs!1335202) (not d!1802654) (not b!5715452) (not d!1802686) (not bs!1335201) (not d!1802666) (not b!5715662) (not b!5715492) (not b!5715435) (not d!1802432) (not setNonEmpty!38285) (not b!5715723) (not d!1802536) (not b!5714944) (not b!5714758) (not d!1802488) (not d!1802608) (not d!1802400) (not b!5715081) (not b!5715620) (not b!5714661) (not b!5714946) (not bm!436178) (not d!1802678) (not d!1802430) (not b!5715573) (not b!5715524) (not d!1802676) (not b!5715477) (not b!5715467) (not bm!436270) (not b!5715618) (not b!5715471) (not b!5715614) (not b!5715610) (not b!5715491) (not b!5715525) (not b!5715566) (not b!5715469) (not b!5715671) (not b!5715539) (not b!5714943) (not b!5715599) (not bm!436273) (not b!5714950) (not d!1802702) (not d!1802380) (not b!5715102) (not b!5715604) (not b!5714654) (not b!5715086) (not d!1802642) (not b!5715529) (not d!1802624) (not b!5715726) (not d!1802682) (not b!5715615) (not b!5715694) (not b!5715307) (not bm!436266) (not bm!436274) (not d!1802652) (not b!5715715) (not d!1802622) (not b!5715655) (not d!1802634) (not d!1802684) (not b!5715602) (not bm!436279) (not b!5715538) (not b!5715642) (not b!5715729) (not b!5715322) (not d!1802688) (not b!5715722) (not b!5715325) (not b!5715475) (not b!5715664) (not b!5715082) (not d!1802610) (not b!5715482) (not d!1802448) (not b!5715536) (not b!5715489) (not bm!436267) (not b!5715575) (not b!5714839) (not b!5715300) (not d!1802356) (not b!5715570) (not d!1802394) (not b!5715730) (not d!1802530) (not b!5714802) (not bm!436268))
(check-sat)
(get-model)

(declare-fun d!1802728 () Bool)

(assert (=> d!1802728 true))

(assert (=> d!1802728 true))

(declare-fun res!2413408 () Bool)

(assert (=> d!1802728 (= (choose!43215 lambda!308680) res!2413408)))

(assert (=> d!1802430 d!1802728))

(declare-fun d!1802730 () Bool)

(assert (=> d!1802730 (= (isDefined!12425 lt!2277330) (not (isEmpty!35190 lt!2277330)))))

(declare-fun bs!1335205 () Bool)

(assert (= bs!1335205 d!1802730))

(declare-fun m!6669266 () Bool)

(assert (=> bs!1335205 m!6669266))

(assert (=> d!1802664 d!1802730))

(declare-fun b!5715732 () Bool)

(declare-fun res!2413410 () Bool)

(declare-fun e!3515092 () Bool)

(assert (=> b!5715732 (=> (not res!2413410) (not e!3515092))))

(assert (=> b!5715732 (= res!2413410 (isEmpty!35186 (tail!11200 Nil!63314)))))

(declare-fun b!5715733 () Bool)

(declare-fun res!2413413 () Bool)

(assert (=> b!5715733 (=> (not res!2413413) (not e!3515092))))

(declare-fun call!436285 () Bool)

(assert (=> b!5715733 (= res!2413413 (not call!436285))))

(declare-fun b!5715734 () Bool)

(declare-fun res!2413415 () Bool)

(declare-fun e!3515089 () Bool)

(assert (=> b!5715734 (=> res!2413415 e!3515089)))

(assert (=> b!5715734 (= res!2413415 e!3515092)))

(declare-fun res!2413414 () Bool)

(assert (=> b!5715734 (=> (not res!2413414) (not e!3515092))))

(declare-fun lt!2277357 () Bool)

(assert (=> b!5715734 (= res!2413414 lt!2277357)))

(declare-fun d!1802732 () Bool)

(declare-fun e!3515091 () Bool)

(assert (=> d!1802732 e!3515091))

(declare-fun c!1007588 () Bool)

(assert (=> d!1802732 (= c!1007588 ((_ is EmptyExpr!15713) lt!2277097))))

(declare-fun e!3515090 () Bool)

(assert (=> d!1802732 (= lt!2277357 e!3515090)))

(declare-fun c!1007587 () Bool)

(assert (=> d!1802732 (= c!1007587 (isEmpty!35186 Nil!63314))))

(assert (=> d!1802732 (validRegex!7449 lt!2277097)))

(assert (=> d!1802732 (= (matchR!7898 lt!2277097 Nil!63314) lt!2277357)))

(declare-fun b!5715735 () Bool)

(declare-fun e!3515093 () Bool)

(declare-fun e!3515088 () Bool)

(assert (=> b!5715735 (= e!3515093 e!3515088)))

(declare-fun res!2413416 () Bool)

(assert (=> b!5715735 (=> res!2413416 e!3515088)))

(assert (=> b!5715735 (= res!2413416 call!436285)))

(declare-fun b!5715736 () Bool)

(assert (=> b!5715736 (= e!3515090 (nullable!5745 lt!2277097))))

(declare-fun b!5715737 () Bool)

(declare-fun res!2413412 () Bool)

(assert (=> b!5715737 (=> res!2413412 e!3515089)))

(assert (=> b!5715737 (= res!2413412 (not ((_ is ElementMatch!15713) lt!2277097)))))

(declare-fun e!3515087 () Bool)

(assert (=> b!5715737 (= e!3515087 e!3515089)))

(declare-fun b!5715738 () Bool)

(assert (=> b!5715738 (= e!3515090 (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 Nil!63314)) (tail!11200 Nil!63314)))))

(declare-fun b!5715739 () Bool)

(declare-fun res!2413409 () Bool)

(assert (=> b!5715739 (=> res!2413409 e!3515088)))

(assert (=> b!5715739 (= res!2413409 (not (isEmpty!35186 (tail!11200 Nil!63314))))))

(declare-fun bm!436280 () Bool)

(assert (=> bm!436280 (= call!436285 (isEmpty!35186 Nil!63314))))

(declare-fun b!5715740 () Bool)

(assert (=> b!5715740 (= e!3515091 e!3515087)))

(declare-fun c!1007586 () Bool)

(assert (=> b!5715740 (= c!1007586 ((_ is EmptyLang!15713) lt!2277097))))

(declare-fun b!5715741 () Bool)

(assert (=> b!5715741 (= e!3515089 e!3515093)))

(declare-fun res!2413411 () Bool)

(assert (=> b!5715741 (=> (not res!2413411) (not e!3515093))))

(assert (=> b!5715741 (= res!2413411 (not lt!2277357))))

(declare-fun b!5715742 () Bool)

(assert (=> b!5715742 (= e!3515087 (not lt!2277357))))

(declare-fun b!5715743 () Bool)

(assert (=> b!5715743 (= e!3515092 (= (head!12105 Nil!63314) (c!1007275 lt!2277097)))))

(declare-fun b!5715744 () Bool)

(assert (=> b!5715744 (= e!3515091 (= lt!2277357 call!436285))))

(declare-fun b!5715745 () Bool)

(assert (=> b!5715745 (= e!3515088 (not (= (head!12105 Nil!63314) (c!1007275 lt!2277097))))))

(assert (= (and d!1802732 c!1007587) b!5715736))

(assert (= (and d!1802732 (not c!1007587)) b!5715738))

(assert (= (and d!1802732 c!1007588) b!5715744))

(assert (= (and d!1802732 (not c!1007588)) b!5715740))

(assert (= (and b!5715740 c!1007586) b!5715742))

(assert (= (and b!5715740 (not c!1007586)) b!5715737))

(assert (= (and b!5715737 (not res!2413412)) b!5715734))

(assert (= (and b!5715734 res!2413414) b!5715733))

(assert (= (and b!5715733 res!2413413) b!5715732))

(assert (= (and b!5715732 res!2413410) b!5715743))

(assert (= (and b!5715734 (not res!2413415)) b!5715741))

(assert (= (and b!5715741 res!2413411) b!5715735))

(assert (= (and b!5715735 (not res!2413416)) b!5715739))

(assert (= (and b!5715739 (not res!2413409)) b!5715745))

(assert (= (or b!5715744 b!5715733 b!5715735) bm!436280))

(assert (=> b!5715736 m!6668138))

(declare-fun m!6669268 () Bool)

(assert (=> d!1802732 m!6669268))

(assert (=> d!1802732 m!6668140))

(declare-fun m!6669270 () Bool)

(assert (=> b!5715745 m!6669270))

(assert (=> b!5715738 m!6669270))

(assert (=> b!5715738 m!6669270))

(declare-fun m!6669272 () Bool)

(assert (=> b!5715738 m!6669272))

(declare-fun m!6669274 () Bool)

(assert (=> b!5715738 m!6669274))

(assert (=> b!5715738 m!6669272))

(assert (=> b!5715738 m!6669274))

(declare-fun m!6669276 () Bool)

(assert (=> b!5715738 m!6669276))

(assert (=> b!5715732 m!6669274))

(assert (=> b!5715732 m!6669274))

(declare-fun m!6669278 () Bool)

(assert (=> b!5715732 m!6669278))

(assert (=> b!5715739 m!6669274))

(assert (=> b!5715739 m!6669274))

(assert (=> b!5715739 m!6669278))

(assert (=> b!5715743 m!6669270))

(assert (=> bm!436280 m!6669268))

(assert (=> d!1802664 d!1802732))

(declare-fun bm!436281 () Bool)

(declare-fun call!436288 () Bool)

(declare-fun call!436287 () Bool)

(assert (=> bm!436281 (= call!436288 call!436287)))

(declare-fun b!5715746 () Bool)

(declare-fun res!2413418 () Bool)

(declare-fun e!3515099 () Bool)

(assert (=> b!5715746 (=> res!2413418 e!3515099)))

(assert (=> b!5715746 (= res!2413418 (not ((_ is Concat!24558) lt!2277097)))))

(declare-fun e!3515100 () Bool)

(assert (=> b!5715746 (= e!3515100 e!3515099)))

(declare-fun b!5715747 () Bool)

(declare-fun e!3515094 () Bool)

(assert (=> b!5715747 (= e!3515099 e!3515094)))

(declare-fun res!2413421 () Bool)

(assert (=> b!5715747 (=> (not res!2413421) (not e!3515094))))

(declare-fun call!436286 () Bool)

(assert (=> b!5715747 (= res!2413421 call!436286)))

(declare-fun b!5715748 () Bool)

(declare-fun res!2413417 () Bool)

(declare-fun e!3515098 () Bool)

(assert (=> b!5715748 (=> (not res!2413417) (not e!3515098))))

(assert (=> b!5715748 (= res!2413417 call!436286)))

(assert (=> b!5715748 (= e!3515100 e!3515098)))

(declare-fun b!5715749 () Bool)

(declare-fun e!3515097 () Bool)

(assert (=> b!5715749 (= e!3515097 call!436287)))

(declare-fun b!5715750 () Bool)

(assert (=> b!5715750 (= e!3515094 call!436288)))

(declare-fun b!5715751 () Bool)

(assert (=> b!5715751 (= e!3515098 call!436288)))

(declare-fun d!1802734 () Bool)

(declare-fun res!2413420 () Bool)

(declare-fun e!3515095 () Bool)

(assert (=> d!1802734 (=> res!2413420 e!3515095)))

(assert (=> d!1802734 (= res!2413420 ((_ is ElementMatch!15713) lt!2277097))))

(assert (=> d!1802734 (= (validRegex!7449 lt!2277097) e!3515095)))

(declare-fun b!5715752 () Bool)

(declare-fun e!3515096 () Bool)

(assert (=> b!5715752 (= e!3515096 e!3515100)))

(declare-fun c!1007590 () Bool)

(assert (=> b!5715752 (= c!1007590 ((_ is Union!15713) lt!2277097))))

(declare-fun bm!436282 () Bool)

(declare-fun c!1007589 () Bool)

(assert (=> bm!436282 (= call!436287 (validRegex!7449 (ite c!1007589 (reg!16042 lt!2277097) (ite c!1007590 (regTwo!31939 lt!2277097) (regTwo!31938 lt!2277097)))))))

(declare-fun bm!436283 () Bool)

(assert (=> bm!436283 (= call!436286 (validRegex!7449 (ite c!1007590 (regOne!31939 lt!2277097) (regOne!31938 lt!2277097))))))

(declare-fun b!5715753 () Bool)

(assert (=> b!5715753 (= e!3515096 e!3515097)))

(declare-fun res!2413419 () Bool)

(assert (=> b!5715753 (= res!2413419 (not (nullable!5745 (reg!16042 lt!2277097))))))

(assert (=> b!5715753 (=> (not res!2413419) (not e!3515097))))

(declare-fun b!5715754 () Bool)

(assert (=> b!5715754 (= e!3515095 e!3515096)))

(assert (=> b!5715754 (= c!1007589 ((_ is Star!15713) lt!2277097))))

(assert (= (and d!1802734 (not res!2413420)) b!5715754))

(assert (= (and b!5715754 c!1007589) b!5715753))

(assert (= (and b!5715754 (not c!1007589)) b!5715752))

(assert (= (and b!5715753 res!2413419) b!5715749))

(assert (= (and b!5715752 c!1007590) b!5715748))

(assert (= (and b!5715752 (not c!1007590)) b!5715746))

(assert (= (and b!5715748 res!2413417) b!5715751))

(assert (= (and b!5715746 (not res!2413418)) b!5715747))

(assert (= (and b!5715747 res!2413421) b!5715750))

(assert (= (or b!5715751 b!5715750) bm!436281))

(assert (= (or b!5715748 b!5715747) bm!436283))

(assert (= (or b!5715749 bm!436281) bm!436282))

(declare-fun m!6669280 () Bool)

(assert (=> bm!436282 m!6669280))

(declare-fun m!6669282 () Bool)

(assert (=> bm!436283 m!6669282))

(declare-fun m!6669284 () Bool)

(assert (=> b!5715753 m!6669284))

(assert (=> d!1802664 d!1802734))

(declare-fun d!1802736 () Bool)

(assert (=> d!1802736 (= (isConcat!744 lt!2277336) ((_ is Concat!24558) lt!2277336))))

(assert (=> b!5715569 d!1802736))

(declare-fun d!1802738 () Bool)

(declare-fun c!1007591 () Bool)

(assert (=> d!1802738 (= c!1007591 (isEmpty!35186 (tail!11200 lt!2277105)))))

(declare-fun e!3515101 () Bool)

(assert (=> d!1802738 (= (matchZipper!1851 (derivationStepZipper!1796 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) (head!12105 lt!2277105)) (tail!11200 lt!2277105)) e!3515101)))

(declare-fun b!5715755 () Bool)

(assert (=> b!5715755 (= e!3515101 (nullableZipper!1663 (derivationStepZipper!1796 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) (head!12105 lt!2277105))))))

(declare-fun b!5715756 () Bool)

(assert (=> b!5715756 (= e!3515101 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) (head!12105 lt!2277105)) (head!12105 (tail!11200 lt!2277105))) (tail!11200 (tail!11200 lt!2277105))))))

(assert (= (and d!1802738 c!1007591) b!5715755))

(assert (= (and d!1802738 (not c!1007591)) b!5715756))

(assert (=> d!1802738 m!6668938))

(assert (=> d!1802738 m!6668954))

(assert (=> b!5715755 m!6669012))

(declare-fun m!6669286 () Bool)

(assert (=> b!5715755 m!6669286))

(assert (=> b!5715756 m!6668938))

(declare-fun m!6669288 () Bool)

(assert (=> b!5715756 m!6669288))

(assert (=> b!5715756 m!6669012))

(assert (=> b!5715756 m!6669288))

(declare-fun m!6669290 () Bool)

(assert (=> b!5715756 m!6669290))

(assert (=> b!5715756 m!6668938))

(declare-fun m!6669292 () Bool)

(assert (=> b!5715756 m!6669292))

(assert (=> b!5715756 m!6669290))

(assert (=> b!5715756 m!6669292))

(declare-fun m!6669294 () Bool)

(assert (=> b!5715756 m!6669294))

(assert (=> b!5715471 d!1802738))

(declare-fun bs!1335206 () Bool)

(declare-fun d!1802740 () Bool)

(assert (= bs!1335206 (and d!1802740 b!5714534)))

(declare-fun lambda!308788 () Int)

(assert (=> bs!1335206 (= (= (head!12105 lt!2277105) (h!69762 s!2326)) (= lambda!308788 lambda!308681))))

(declare-fun bs!1335207 () Bool)

(assert (= bs!1335207 (and d!1802740 d!1802600)))

(assert (=> bs!1335207 (= (= (head!12105 lt!2277105) (h!69762 s!2326)) (= lambda!308788 lambda!308755))))

(assert (=> d!1802740 true))

(assert (=> d!1802740 (= (derivationStepZipper!1796 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) (head!12105 lt!2277105)) (flatMap!1326 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) lambda!308788))))

(declare-fun bs!1335208 () Bool)

(assert (= bs!1335208 d!1802740))

(assert (=> bs!1335208 m!6667936))

(declare-fun m!6669296 () Bool)

(assert (=> bs!1335208 m!6669296))

(assert (=> b!5715471 d!1802740))

(declare-fun d!1802742 () Bool)

(assert (=> d!1802742 (= (head!12105 lt!2277105) (h!69762 lt!2277105))))

(assert (=> b!5715471 d!1802742))

(declare-fun d!1802744 () Bool)

(assert (=> d!1802744 (= (tail!11200 lt!2277105) (t!376758 lt!2277105))))

(assert (=> b!5715471 d!1802744))

(assert (=> b!5715614 d!1802644))

(declare-fun d!1802746 () Bool)

(assert (=> d!1802746 (= (head!12105 (_2!36113 lt!2277139)) (h!69762 (_2!36113 lt!2277139)))))

(assert (=> b!5714846 d!1802746))

(declare-fun d!1802748 () Bool)

(assert (=> d!1802748 (= (head!12105 (_2!36113 lt!2277144)) (h!69762 (_2!36113 lt!2277144)))))

(assert (=> b!5715545 d!1802748))

(declare-fun d!1802750 () Bool)

(assert (=> d!1802750 (= (isEmpty!35188 (tail!11202 (unfocusZipperList!1141 zl!343))) ((_ is Nil!63315) (tail!11202 (unfocusZipperList!1141 zl!343))))))

(assert (=> b!5715604 d!1802750))

(declare-fun d!1802752 () Bool)

(assert (=> d!1802752 (= (tail!11202 (unfocusZipperList!1141 zl!343)) (t!376759 (unfocusZipperList!1141 zl!343)))))

(assert (=> b!5715604 d!1802752))

(declare-fun d!1802754 () Bool)

(assert (=> d!1802754 true))

(assert (=> d!1802754 true))

(declare-fun res!2413422 () Bool)

(assert (=> d!1802754 (= (choose!43215 lambda!308679) res!2413422)))

(assert (=> d!1802426 d!1802754))

(declare-fun d!1802756 () Bool)

(assert (=> d!1802756 (= (isEmpty!35186 (tail!11200 lt!2277096)) ((_ is Nil!63314) (tail!11200 lt!2277096)))))

(assert (=> b!5715478 d!1802756))

(declare-fun d!1802758 () Bool)

(assert (=> d!1802758 (= (tail!11200 lt!2277096) (t!376758 lt!2277096))))

(assert (=> b!5715478 d!1802758))

(declare-fun d!1802760 () Bool)

(assert (=> d!1802760 (= (nullable!5745 lt!2277097) (nullableFct!1808 lt!2277097))))

(declare-fun bs!1335209 () Bool)

(assert (= bs!1335209 d!1802760))

(declare-fun m!6669298 () Bool)

(assert (=> bs!1335209 m!6669298))

(assert (=> b!5714652 d!1802760))

(declare-fun b!5715757 () Bool)

(declare-fun res!2413424 () Bool)

(declare-fun e!3515107 () Bool)

(assert (=> b!5715757 (=> (not res!2413424) (not e!3515107))))

(assert (=> b!5715757 (= res!2413424 (isEmpty!35186 (tail!11200 (tail!11200 lt!2277140))))))

(declare-fun b!5715758 () Bool)

(declare-fun res!2413427 () Bool)

(assert (=> b!5715758 (=> (not res!2413427) (not e!3515107))))

(declare-fun call!436289 () Bool)

(assert (=> b!5715758 (= res!2413427 (not call!436289))))

(declare-fun b!5715759 () Bool)

(declare-fun res!2413429 () Bool)

(declare-fun e!3515104 () Bool)

(assert (=> b!5715759 (=> res!2413429 e!3515104)))

(assert (=> b!5715759 (= res!2413429 e!3515107)))

(declare-fun res!2413428 () Bool)

(assert (=> b!5715759 (=> (not res!2413428) (not e!3515107))))

(declare-fun lt!2277358 () Bool)

(assert (=> b!5715759 (= res!2413428 lt!2277358)))

(declare-fun d!1802762 () Bool)

(declare-fun e!3515106 () Bool)

(assert (=> d!1802762 e!3515106))

(declare-fun c!1007594 () Bool)

(assert (=> d!1802762 (= c!1007594 ((_ is EmptyExpr!15713) (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140))))))

(declare-fun e!3515105 () Bool)

(assert (=> d!1802762 (= lt!2277358 e!3515105)))

(declare-fun c!1007593 () Bool)

(assert (=> d!1802762 (= c!1007593 (isEmpty!35186 (tail!11200 lt!2277140)))))

(assert (=> d!1802762 (validRegex!7449 (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140)))))

(assert (=> d!1802762 (= (matchR!7898 (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140)) (tail!11200 lt!2277140)) lt!2277358)))

(declare-fun b!5715760 () Bool)

(declare-fun e!3515108 () Bool)

(declare-fun e!3515103 () Bool)

(assert (=> b!5715760 (= e!3515108 e!3515103)))

(declare-fun res!2413430 () Bool)

(assert (=> b!5715760 (=> res!2413430 e!3515103)))

(assert (=> b!5715760 (= res!2413430 call!436289)))

(declare-fun b!5715761 () Bool)

(assert (=> b!5715761 (= e!3515105 (nullable!5745 (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140))))))

(declare-fun b!5715762 () Bool)

(declare-fun res!2413426 () Bool)

(assert (=> b!5715762 (=> res!2413426 e!3515104)))

(assert (=> b!5715762 (= res!2413426 (not ((_ is ElementMatch!15713) (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140)))))))

(declare-fun e!3515102 () Bool)

(assert (=> b!5715762 (= e!3515102 e!3515104)))

(declare-fun b!5715763 () Bool)

(assert (=> b!5715763 (= e!3515105 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140)) (head!12105 (tail!11200 lt!2277140))) (tail!11200 (tail!11200 lt!2277140))))))

(declare-fun b!5715764 () Bool)

(declare-fun res!2413423 () Bool)

(assert (=> b!5715764 (=> res!2413423 e!3515103)))

(assert (=> b!5715764 (= res!2413423 (not (isEmpty!35186 (tail!11200 (tail!11200 lt!2277140)))))))

(declare-fun bm!436284 () Bool)

(assert (=> bm!436284 (= call!436289 (isEmpty!35186 (tail!11200 lt!2277140)))))

(declare-fun b!5715765 () Bool)

(assert (=> b!5715765 (= e!3515106 e!3515102)))

(declare-fun c!1007592 () Bool)

(assert (=> b!5715765 (= c!1007592 ((_ is EmptyLang!15713) (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140))))))

(declare-fun b!5715766 () Bool)

(assert (=> b!5715766 (= e!3515104 e!3515108)))

(declare-fun res!2413425 () Bool)

(assert (=> b!5715766 (=> (not res!2413425) (not e!3515108))))

(assert (=> b!5715766 (= res!2413425 (not lt!2277358))))

(declare-fun b!5715767 () Bool)

(assert (=> b!5715767 (= e!3515102 (not lt!2277358))))

(declare-fun b!5715768 () Bool)

(assert (=> b!5715768 (= e!3515107 (= (head!12105 (tail!11200 lt!2277140)) (c!1007275 (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140)))))))

(declare-fun b!5715769 () Bool)

(assert (=> b!5715769 (= e!3515106 (= lt!2277358 call!436289))))

(declare-fun b!5715770 () Bool)

(assert (=> b!5715770 (= e!3515103 (not (= (head!12105 (tail!11200 lt!2277140)) (c!1007275 (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140))))))))

(assert (= (and d!1802762 c!1007593) b!5715761))

(assert (= (and d!1802762 (not c!1007593)) b!5715763))

(assert (= (and d!1802762 c!1007594) b!5715769))

(assert (= (and d!1802762 (not c!1007594)) b!5715765))

(assert (= (and b!5715765 c!1007592) b!5715767))

(assert (= (and b!5715765 (not c!1007592)) b!5715762))

(assert (= (and b!5715762 (not res!2413426)) b!5715759))

(assert (= (and b!5715759 res!2413428) b!5715758))

(assert (= (and b!5715758 res!2413427) b!5715757))

(assert (= (and b!5715757 res!2413424) b!5715768))

(assert (= (and b!5715759 (not res!2413429)) b!5715766))

(assert (= (and b!5715766 res!2413425) b!5715760))

(assert (= (and b!5715760 (not res!2413430)) b!5715764))

(assert (= (and b!5715764 (not res!2413423)) b!5715770))

(assert (= (or b!5715769 b!5715758 b!5715760) bm!436284))

(assert (=> b!5715761 m!6668984))

(declare-fun m!6669300 () Bool)

(assert (=> b!5715761 m!6669300))

(assert (=> d!1802762 m!6668986))

(assert (=> d!1802762 m!6668990))

(assert (=> d!1802762 m!6668984))

(declare-fun m!6669302 () Bool)

(assert (=> d!1802762 m!6669302))

(assert (=> b!5715770 m!6668986))

(declare-fun m!6669304 () Bool)

(assert (=> b!5715770 m!6669304))

(assert (=> b!5715763 m!6668986))

(assert (=> b!5715763 m!6669304))

(assert (=> b!5715763 m!6668984))

(assert (=> b!5715763 m!6669304))

(declare-fun m!6669306 () Bool)

(assert (=> b!5715763 m!6669306))

(assert (=> b!5715763 m!6668986))

(declare-fun m!6669308 () Bool)

(assert (=> b!5715763 m!6669308))

(assert (=> b!5715763 m!6669306))

(assert (=> b!5715763 m!6669308))

(declare-fun m!6669310 () Bool)

(assert (=> b!5715763 m!6669310))

(assert (=> b!5715757 m!6668986))

(assert (=> b!5715757 m!6669308))

(assert (=> b!5715757 m!6669308))

(declare-fun m!6669312 () Bool)

(assert (=> b!5715757 m!6669312))

(assert (=> b!5715764 m!6668986))

(assert (=> b!5715764 m!6669308))

(assert (=> b!5715764 m!6669308))

(assert (=> b!5715764 m!6669312))

(assert (=> b!5715768 m!6668986))

(assert (=> b!5715768 m!6669304))

(assert (=> bm!436284 m!6668986))

(assert (=> bm!436284 m!6668990))

(assert (=> b!5715460 d!1802762))

(declare-fun call!436300 () Regex!15713)

(declare-fun c!1007605 () Bool)

(declare-fun bm!436293 () Bool)

(assert (=> bm!436293 (= call!436300 (derivativeStep!4516 (ite c!1007605 (regOne!31939 lt!2277138) (regOne!31938 lt!2277138)) (head!12105 lt!2277140)))))

(declare-fun b!5715791 () Bool)

(declare-fun e!3515121 () Regex!15713)

(declare-fun call!436298 () Regex!15713)

(assert (=> b!5715791 (= e!3515121 (Union!15713 (Concat!24558 call!436298 (regTwo!31938 lt!2277138)) EmptyLang!15713))))

(declare-fun b!5715793 () Bool)

(declare-fun e!3515123 () Regex!15713)

(assert (=> b!5715793 (= e!3515123 EmptyLang!15713)))

(declare-fun b!5715794 () Bool)

(declare-fun e!3515119 () Regex!15713)

(assert (=> b!5715794 (= e!3515119 (ite (= (head!12105 lt!2277140) (c!1007275 lt!2277138)) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5715795 () Bool)

(declare-fun e!3515120 () Regex!15713)

(declare-fun call!436301 () Regex!15713)

(assert (=> b!5715795 (= e!3515120 (Union!15713 call!436300 call!436301))))

(declare-fun b!5715796 () Bool)

(assert (=> b!5715796 (= e!3515121 (Union!15713 (Concat!24558 call!436300 (regTwo!31938 lt!2277138)) call!436298))))

(declare-fun b!5715797 () Bool)

(assert (=> b!5715797 (= c!1007605 ((_ is Union!15713) lt!2277138))))

(assert (=> b!5715797 (= e!3515119 e!3515120)))

(declare-fun c!1007609 () Bool)

(declare-fun c!1007608 () Bool)

(declare-fun bm!436294 () Bool)

(assert (=> bm!436294 (= call!436301 (derivativeStep!4516 (ite c!1007605 (regTwo!31939 lt!2277138) (ite c!1007608 (reg!16042 lt!2277138) (ite c!1007609 (regTwo!31938 lt!2277138) (regOne!31938 lt!2277138)))) (head!12105 lt!2277140)))))

(declare-fun bm!436295 () Bool)

(declare-fun call!436299 () Regex!15713)

(assert (=> bm!436295 (= call!436299 call!436301)))

(declare-fun bm!436296 () Bool)

(assert (=> bm!436296 (= call!436298 call!436299)))

(declare-fun b!5715798 () Bool)

(declare-fun e!3515122 () Regex!15713)

(assert (=> b!5715798 (= e!3515122 (Concat!24558 call!436299 lt!2277138))))

(declare-fun b!5715792 () Bool)

(assert (=> b!5715792 (= e!3515123 e!3515119)))

(declare-fun c!1007606 () Bool)

(assert (=> b!5715792 (= c!1007606 ((_ is ElementMatch!15713) lt!2277138))))

(declare-fun d!1802764 () Bool)

(declare-fun lt!2277361 () Regex!15713)

(assert (=> d!1802764 (validRegex!7449 lt!2277361)))

(assert (=> d!1802764 (= lt!2277361 e!3515123)))

(declare-fun c!1007607 () Bool)

(assert (=> d!1802764 (= c!1007607 (or ((_ is EmptyExpr!15713) lt!2277138) ((_ is EmptyLang!15713) lt!2277138)))))

(assert (=> d!1802764 (validRegex!7449 lt!2277138)))

(assert (=> d!1802764 (= (derivativeStep!4516 lt!2277138 (head!12105 lt!2277140)) lt!2277361)))

(declare-fun b!5715799 () Bool)

(assert (=> b!5715799 (= c!1007609 (nullable!5745 (regOne!31938 lt!2277138)))))

(assert (=> b!5715799 (= e!3515122 e!3515121)))

(declare-fun b!5715800 () Bool)

(assert (=> b!5715800 (= e!3515120 e!3515122)))

(assert (=> b!5715800 (= c!1007608 ((_ is Star!15713) lt!2277138))))

(assert (= (and d!1802764 c!1007607) b!5715793))

(assert (= (and d!1802764 (not c!1007607)) b!5715792))

(assert (= (and b!5715792 c!1007606) b!5715794))

(assert (= (and b!5715792 (not c!1007606)) b!5715797))

(assert (= (and b!5715797 c!1007605) b!5715795))

(assert (= (and b!5715797 (not c!1007605)) b!5715800))

(assert (= (and b!5715800 c!1007608) b!5715798))

(assert (= (and b!5715800 (not c!1007608)) b!5715799))

(assert (= (and b!5715799 c!1007609) b!5715796))

(assert (= (and b!5715799 (not c!1007609)) b!5715791))

(assert (= (or b!5715796 b!5715791) bm!436296))

(assert (= (or b!5715798 bm!436296) bm!436295))

(assert (= (or b!5715795 bm!436295) bm!436294))

(assert (= (or b!5715795 b!5715796) bm!436293))

(assert (=> bm!436293 m!6668982))

(declare-fun m!6669314 () Bool)

(assert (=> bm!436293 m!6669314))

(assert (=> bm!436294 m!6668982))

(declare-fun m!6669316 () Bool)

(assert (=> bm!436294 m!6669316))

(declare-fun m!6669318 () Bool)

(assert (=> d!1802764 m!6669318))

(assert (=> d!1802764 m!6668980))

(declare-fun m!6669320 () Bool)

(assert (=> b!5715799 m!6669320))

(assert (=> b!5715460 d!1802764))

(declare-fun d!1802766 () Bool)

(assert (=> d!1802766 (= (head!12105 lt!2277140) (h!69762 lt!2277140))))

(assert (=> b!5715460 d!1802766))

(declare-fun d!1802768 () Bool)

(assert (=> d!1802768 (= (tail!11200 lt!2277140) (t!376758 lt!2277140))))

(assert (=> b!5715460 d!1802768))

(assert (=> b!5715499 d!1802730))

(declare-fun b!5715801 () Bool)

(declare-fun e!3515124 () List!63438)

(assert (=> b!5715801 (= e!3515124 (_2!36113 lt!2277139))))

(declare-fun b!5715804 () Bool)

(declare-fun e!3515125 () Bool)

(declare-fun lt!2277362 () List!63438)

(assert (=> b!5715804 (= e!3515125 (or (not (= (_2!36113 lt!2277139) Nil!63314)) (= lt!2277362 (t!376758 lt!2277096))))))

(declare-fun b!5715803 () Bool)

(declare-fun res!2413431 () Bool)

(assert (=> b!5715803 (=> (not res!2413431) (not e!3515125))))

(assert (=> b!5715803 (= res!2413431 (= (size!40024 lt!2277362) (+ (size!40024 (t!376758 lt!2277096)) (size!40024 (_2!36113 lt!2277139)))))))

(declare-fun b!5715802 () Bool)

(assert (=> b!5715802 (= e!3515124 (Cons!63314 (h!69762 (t!376758 lt!2277096)) (++!13908 (t!376758 (t!376758 lt!2277096)) (_2!36113 lt!2277139))))))

(declare-fun d!1802770 () Bool)

(assert (=> d!1802770 e!3515125))

(declare-fun res!2413432 () Bool)

(assert (=> d!1802770 (=> (not res!2413432) (not e!3515125))))

(assert (=> d!1802770 (= res!2413432 (= (content!11499 lt!2277362) ((_ map or) (content!11499 (t!376758 lt!2277096)) (content!11499 (_2!36113 lt!2277139)))))))

(assert (=> d!1802770 (= lt!2277362 e!3515124)))

(declare-fun c!1007610 () Bool)

(assert (=> d!1802770 (= c!1007610 ((_ is Nil!63314) (t!376758 lt!2277096)))))

(assert (=> d!1802770 (= (++!13908 (t!376758 lt!2277096) (_2!36113 lt!2277139)) lt!2277362)))

(assert (= (and d!1802770 c!1007610) b!5715801))

(assert (= (and d!1802770 (not c!1007610)) b!5715802))

(assert (= (and d!1802770 res!2413432) b!5715803))

(assert (= (and b!5715803 res!2413431) b!5715804))

(declare-fun m!6669322 () Bool)

(assert (=> b!5715803 m!6669322))

(declare-fun m!6669324 () Bool)

(assert (=> b!5715803 m!6669324))

(assert (=> b!5715803 m!6668724))

(declare-fun m!6669326 () Bool)

(assert (=> b!5715802 m!6669326))

(declare-fun m!6669328 () Bool)

(assert (=> d!1802770 m!6669328))

(declare-fun m!6669330 () Bool)

(assert (=> d!1802770 m!6669330))

(assert (=> d!1802770 m!6668732))

(assert (=> b!5715211 d!1802770))

(declare-fun d!1802772 () Bool)

(assert (=> d!1802772 (= (Exists!2813 lambda!308764) (choose!43215 lambda!308764))))

(declare-fun bs!1335210 () Bool)

(assert (= bs!1335210 d!1802772))

(declare-fun m!6669332 () Bool)

(assert (=> bs!1335210 m!6669332))

(assert (=> d!1802660 d!1802772))

(declare-fun d!1802774 () Bool)

(assert (=> d!1802774 (= (Exists!2813 lambda!308765) (choose!43215 lambda!308765))))

(declare-fun bs!1335211 () Bool)

(assert (= bs!1335211 d!1802774))

(declare-fun m!6669334 () Bool)

(assert (=> bs!1335211 m!6669334))

(assert (=> d!1802660 d!1802774))

(declare-fun bs!1335212 () Bool)

(declare-fun d!1802776 () Bool)

(assert (= bs!1335212 (and d!1802776 d!1802660)))

(declare-fun lambda!308793 () Int)

(assert (=> bs!1335212 (= lambda!308793 lambda!308764)))

(declare-fun bs!1335213 () Bool)

(assert (= bs!1335213 (and d!1802776 d!1802448)))

(assert (=> bs!1335213 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308793 lambda!308742))))

(declare-fun bs!1335214 () Bool)

(assert (= bs!1335214 (and d!1802776 b!5714753)))

(assert (=> bs!1335214 (not (= lambda!308793 lambda!308716))))

(declare-fun bs!1335215 () Bool)

(assert (= bs!1335215 (and d!1802776 b!5714499)))

(assert (=> bs!1335215 (not (= lambda!308793 lambda!308685))))

(declare-fun bs!1335216 () Bool)

(assert (= bs!1335216 (and d!1802776 d!1802700)))

(assert (=> bs!1335216 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308793 lambda!308781))))

(assert (=> bs!1335212 (not (= lambda!308793 lambda!308765))))

(declare-fun bs!1335217 () Bool)

(assert (= bs!1335217 (and d!1802776 d!1802658)))

(assert (=> bs!1335217 (= lambda!308793 lambda!308763)))

(declare-fun bs!1335218 () Bool)

(assert (= bs!1335218 (and d!1802776 b!5714517)))

(assert (=> bs!1335218 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308793 lambda!308679))))

(declare-fun bs!1335219 () Bool)

(assert (= bs!1335219 (and d!1802776 b!5714504)))

(assert (=> bs!1335219 (= lambda!308793 lambda!308682)))

(assert (=> bs!1335216 (not (= lambda!308793 lambda!308782))))

(declare-fun bs!1335220 () Bool)

(assert (= bs!1335220 (and d!1802776 d!1802714)))

(assert (=> bs!1335220 (not (= lambda!308793 lambda!308787))))

(assert (=> bs!1335220 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308793 lambda!308786))))

(assert (=> bs!1335219 (not (= lambda!308793 lambda!308683))))

(declare-fun bs!1335221 () Bool)

(assert (= bs!1335221 (and d!1802776 b!5715508)))

(assert (=> bs!1335221 (not (= lambda!308793 lambda!308767))))

(assert (=> bs!1335215 (not (= lambda!308793 lambda!308686))))

(declare-fun bs!1335222 () Bool)

(assert (= bs!1335222 (and d!1802776 b!5715645)))

(assert (=> bs!1335222 (not (= lambda!308793 lambda!308785))))

(assert (=> bs!1335213 (not (= lambda!308793 lambda!308743))))

(assert (=> bs!1335218 (not (= lambda!308793 lambda!308680))))

(declare-fun bs!1335223 () Bool)

(assert (= bs!1335223 (and d!1802776 d!1802432)))

(assert (=> bs!1335223 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308793 lambda!308728))))

(declare-fun bs!1335224 () Bool)

(assert (= bs!1335224 (and d!1802776 b!5715649)))

(assert (=> bs!1335224 (not (= lambda!308793 lambda!308784))))

(declare-fun bs!1335225 () Bool)

(assert (= bs!1335225 (and d!1802776 b!5714749)))

(assert (=> bs!1335225 (not (= lambda!308793 lambda!308717))))

(assert (=> bs!1335215 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308793 lambda!308684))))

(declare-fun bs!1335226 () Bool)

(assert (= bs!1335226 (and d!1802776 d!1802704)))

(assert (=> bs!1335226 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308793 lambda!308783))))

(declare-fun bs!1335227 () Bool)

(assert (= bs!1335227 (and d!1802776 b!5715512)))

(assert (=> bs!1335227 (not (= lambda!308793 lambda!308766))))

(assert (=> d!1802776 true))

(assert (=> d!1802776 true))

(assert (=> d!1802776 true))

(declare-fun lambda!308794 () Int)

(assert (=> bs!1335212 (not (= lambda!308794 lambda!308764))))

(assert (=> bs!1335213 (not (= lambda!308794 lambda!308742))))

(assert (=> bs!1335214 (not (= lambda!308794 lambda!308716))))

(assert (=> bs!1335215 (not (= lambda!308794 lambda!308685))))

(assert (=> bs!1335216 (not (= lambda!308794 lambda!308781))))

(assert (=> bs!1335212 (= lambda!308794 lambda!308765)))

(assert (=> bs!1335217 (not (= lambda!308794 lambda!308763))))

(assert (=> bs!1335218 (not (= lambda!308794 lambda!308679))))

(assert (=> bs!1335219 (not (= lambda!308794 lambda!308682))))

(declare-fun bs!1335228 () Bool)

(assert (= bs!1335228 d!1802776))

(assert (=> bs!1335228 (not (= lambda!308794 lambda!308793))))

(assert (=> bs!1335216 (not (= lambda!308794 lambda!308782))))

(assert (=> bs!1335220 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308794 lambda!308787))))

(assert (=> bs!1335220 (not (= lambda!308794 lambda!308786))))

(assert (=> bs!1335219 (= lambda!308794 lambda!308683)))

(assert (=> bs!1335221 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308794 lambda!308767))))

(assert (=> bs!1335215 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308794 lambda!308686))))

(assert (=> bs!1335222 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (regOne!31938 lt!2277097)) (= (regTwo!31938 r!7292) (regTwo!31938 lt!2277097))) (= lambda!308794 lambda!308785))))

(assert (=> bs!1335213 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308794 lambda!308743))))

(assert (=> bs!1335218 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308794 lambda!308680))))

(assert (=> bs!1335223 (not (= lambda!308794 lambda!308728))))

(assert (=> bs!1335224 (not (= lambda!308794 lambda!308784))))

(assert (=> bs!1335225 (= (and (= lt!2277097 (regOne!31938 lt!2277132)) (= (regTwo!31938 r!7292) (regTwo!31938 lt!2277132))) (= lambda!308794 lambda!308717))))

(assert (=> bs!1335215 (not (= lambda!308794 lambda!308684))))

(assert (=> bs!1335226 (not (= lambda!308794 lambda!308783))))

(assert (=> bs!1335227 (not (= lambda!308794 lambda!308766))))

(assert (=> d!1802776 true))

(assert (=> d!1802776 true))

(assert (=> d!1802776 true))

(assert (=> d!1802776 (= (Exists!2813 lambda!308793) (Exists!2813 lambda!308794))))

(assert (=> d!1802776 true))

(declare-fun _$90!1458 () Unit!156384)

(assert (=> d!1802776 (= (choose!43217 lt!2277097 (regTwo!31938 r!7292) s!2326) _$90!1458)))

(declare-fun m!6669336 () Bool)

(assert (=> bs!1335228 m!6669336))

(declare-fun m!6669338 () Bool)

(assert (=> bs!1335228 m!6669338))

(assert (=> d!1802660 d!1802776))

(assert (=> d!1802660 d!1802734))

(declare-fun d!1802778 () Bool)

(assert (=> d!1802778 (= (nullable!5745 (regTwo!31938 r!7292)) (nullableFct!1808 (regTwo!31938 r!7292)))))

(declare-fun bs!1335229 () Bool)

(assert (= bs!1335229 d!1802778))

(declare-fun m!6669340 () Bool)

(assert (=> bs!1335229 m!6669340))

(assert (=> b!5714839 d!1802778))

(declare-fun d!1802780 () Bool)

(assert (=> d!1802780 true))

(assert (=> d!1802780 true))

(declare-fun res!2413441 () Bool)

(assert (=> d!1802780 (= (choose!43215 lambda!308684) res!2413441)))

(assert (=> d!1802708 d!1802780))

(declare-fun b!5715813 () Bool)

(declare-fun res!2413443 () Bool)

(declare-fun e!3515135 () Bool)

(assert (=> b!5715813 (=> (not res!2413443) (not e!3515135))))

(assert (=> b!5715813 (= res!2413443 (isEmpty!35186 (tail!11200 (tail!11200 (_2!36113 lt!2277144)))))))

(declare-fun b!5715814 () Bool)

(declare-fun res!2413446 () Bool)

(assert (=> b!5715814 (=> (not res!2413446) (not e!3515135))))

(declare-fun call!436302 () Bool)

(assert (=> b!5715814 (= res!2413446 (not call!436302))))

(declare-fun b!5715815 () Bool)

(declare-fun res!2413448 () Bool)

(declare-fun e!3515132 () Bool)

(assert (=> b!5715815 (=> res!2413448 e!3515132)))

(assert (=> b!5715815 (= res!2413448 e!3515135)))

(declare-fun res!2413447 () Bool)

(assert (=> b!5715815 (=> (not res!2413447) (not e!3515135))))

(declare-fun lt!2277363 () Bool)

(assert (=> b!5715815 (= res!2413447 lt!2277363)))

(declare-fun d!1802782 () Bool)

(declare-fun e!3515134 () Bool)

(assert (=> d!1802782 e!3515134))

(declare-fun c!1007613 () Bool)

(assert (=> d!1802782 (= c!1007613 ((_ is EmptyExpr!15713) (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144)))))))

(declare-fun e!3515133 () Bool)

(assert (=> d!1802782 (= lt!2277363 e!3515133)))

(declare-fun c!1007612 () Bool)

(assert (=> d!1802782 (= c!1007612 (isEmpty!35186 (tail!11200 (_2!36113 lt!2277144))))))

(assert (=> d!1802782 (validRegex!7449 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144))))))

(assert (=> d!1802782 (= (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144))) (tail!11200 (_2!36113 lt!2277144))) lt!2277363)))

(declare-fun b!5715816 () Bool)

(declare-fun e!3515136 () Bool)

(declare-fun e!3515131 () Bool)

(assert (=> b!5715816 (= e!3515136 e!3515131)))

(declare-fun res!2413449 () Bool)

(assert (=> b!5715816 (=> res!2413449 e!3515131)))

(assert (=> b!5715816 (= res!2413449 call!436302)))

(declare-fun b!5715817 () Bool)

(assert (=> b!5715817 (= e!3515133 (nullable!5745 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144)))))))

(declare-fun b!5715818 () Bool)

(declare-fun res!2413445 () Bool)

(assert (=> b!5715818 (=> res!2413445 e!3515132)))

(assert (=> b!5715818 (= res!2413445 (not ((_ is ElementMatch!15713) (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144))))))))

(declare-fun e!3515130 () Bool)

(assert (=> b!5715818 (= e!3515130 e!3515132)))

(declare-fun b!5715819 () Bool)

(assert (=> b!5715819 (= e!3515133 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144))) (head!12105 (tail!11200 (_2!36113 lt!2277144)))) (tail!11200 (tail!11200 (_2!36113 lt!2277144)))))))

(declare-fun b!5715820 () Bool)

(declare-fun res!2413442 () Bool)

(assert (=> b!5715820 (=> res!2413442 e!3515131)))

(assert (=> b!5715820 (= res!2413442 (not (isEmpty!35186 (tail!11200 (tail!11200 (_2!36113 lt!2277144))))))))

(declare-fun bm!436297 () Bool)

(assert (=> bm!436297 (= call!436302 (isEmpty!35186 (tail!11200 (_2!36113 lt!2277144))))))

(declare-fun b!5715821 () Bool)

(assert (=> b!5715821 (= e!3515134 e!3515130)))

(declare-fun c!1007611 () Bool)

(assert (=> b!5715821 (= c!1007611 ((_ is EmptyLang!15713) (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144)))))))

(declare-fun b!5715822 () Bool)

(assert (=> b!5715822 (= e!3515132 e!3515136)))

(declare-fun res!2413444 () Bool)

(assert (=> b!5715822 (=> (not res!2413444) (not e!3515136))))

(assert (=> b!5715822 (= res!2413444 (not lt!2277363))))

(declare-fun b!5715823 () Bool)

(assert (=> b!5715823 (= e!3515130 (not lt!2277363))))

(declare-fun b!5715824 () Bool)

(assert (=> b!5715824 (= e!3515135 (= (head!12105 (tail!11200 (_2!36113 lt!2277144))) (c!1007275 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144))))))))

(declare-fun b!5715825 () Bool)

(assert (=> b!5715825 (= e!3515134 (= lt!2277363 call!436302))))

(declare-fun b!5715826 () Bool)

(assert (=> b!5715826 (= e!3515131 (not (= (head!12105 (tail!11200 (_2!36113 lt!2277144))) (c!1007275 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144)))))))))

(assert (= (and d!1802782 c!1007612) b!5715817))

(assert (= (and d!1802782 (not c!1007612)) b!5715819))

(assert (= (and d!1802782 c!1007613) b!5715825))

(assert (= (and d!1802782 (not c!1007613)) b!5715821))

(assert (= (and b!5715821 c!1007611) b!5715823))

(assert (= (and b!5715821 (not c!1007611)) b!5715818))

(assert (= (and b!5715818 (not res!2413445)) b!5715815))

(assert (= (and b!5715815 res!2413447) b!5715814))

(assert (= (and b!5715814 res!2413446) b!5715813))

(assert (= (and b!5715813 res!2413443) b!5715824))

(assert (= (and b!5715815 (not res!2413448)) b!5715822))

(assert (= (and b!5715822 res!2413444) b!5715816))

(assert (= (and b!5715816 (not res!2413449)) b!5715820))

(assert (= (and b!5715820 (not res!2413442)) b!5715826))

(assert (= (or b!5715825 b!5715814 b!5715816) bm!436297))

(assert (=> b!5715817 m!6669122))

(declare-fun m!6669342 () Bool)

(assert (=> b!5715817 m!6669342))

(assert (=> d!1802782 m!6669124))

(assert (=> d!1802782 m!6669128))

(assert (=> d!1802782 m!6669122))

(declare-fun m!6669344 () Bool)

(assert (=> d!1802782 m!6669344))

(assert (=> b!5715826 m!6669124))

(declare-fun m!6669346 () Bool)

(assert (=> b!5715826 m!6669346))

(assert (=> b!5715819 m!6669124))

(assert (=> b!5715819 m!6669346))

(assert (=> b!5715819 m!6669122))

(assert (=> b!5715819 m!6669346))

(declare-fun m!6669348 () Bool)

(assert (=> b!5715819 m!6669348))

(assert (=> b!5715819 m!6669124))

(declare-fun m!6669350 () Bool)

(assert (=> b!5715819 m!6669350))

(assert (=> b!5715819 m!6669348))

(assert (=> b!5715819 m!6669350))

(declare-fun m!6669352 () Bool)

(assert (=> b!5715819 m!6669352))

(assert (=> b!5715813 m!6669124))

(assert (=> b!5715813 m!6669350))

(assert (=> b!5715813 m!6669350))

(declare-fun m!6669354 () Bool)

(assert (=> b!5715813 m!6669354))

(assert (=> b!5715820 m!6669124))

(assert (=> b!5715820 m!6669350))

(assert (=> b!5715820 m!6669350))

(assert (=> b!5715820 m!6669354))

(assert (=> b!5715824 m!6669124))

(assert (=> b!5715824 m!6669346))

(assert (=> bm!436297 m!6669124))

(assert (=> bm!436297 m!6669128))

(assert (=> b!5715538 d!1802782))

(declare-fun c!1007614 () Bool)

(declare-fun bm!436298 () Bool)

(declare-fun call!436305 () Regex!15713)

(assert (=> bm!436298 (= call!436305 (derivativeStep!4516 (ite c!1007614 (regOne!31939 lt!2277097) (regOne!31938 lt!2277097)) (head!12105 (_2!36113 lt!2277144))))))

(declare-fun b!5715827 () Bool)

(declare-fun e!3515139 () Regex!15713)

(declare-fun call!436303 () Regex!15713)

(assert (=> b!5715827 (= e!3515139 (Union!15713 (Concat!24558 call!436303 (regTwo!31938 lt!2277097)) EmptyLang!15713))))

(declare-fun b!5715829 () Bool)

(declare-fun e!3515141 () Regex!15713)

(assert (=> b!5715829 (= e!3515141 EmptyLang!15713)))

(declare-fun b!5715830 () Bool)

(declare-fun e!3515137 () Regex!15713)

(assert (=> b!5715830 (= e!3515137 (ite (= (head!12105 (_2!36113 lt!2277144)) (c!1007275 lt!2277097)) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5715831 () Bool)

(declare-fun e!3515138 () Regex!15713)

(declare-fun call!436306 () Regex!15713)

(assert (=> b!5715831 (= e!3515138 (Union!15713 call!436305 call!436306))))

(declare-fun b!5715832 () Bool)

(assert (=> b!5715832 (= e!3515139 (Union!15713 (Concat!24558 call!436305 (regTwo!31938 lt!2277097)) call!436303))))

(declare-fun b!5715833 () Bool)

(assert (=> b!5715833 (= c!1007614 ((_ is Union!15713) lt!2277097))))

(assert (=> b!5715833 (= e!3515137 e!3515138)))

(declare-fun c!1007617 () Bool)

(declare-fun bm!436299 () Bool)

(declare-fun c!1007618 () Bool)

(assert (=> bm!436299 (= call!436306 (derivativeStep!4516 (ite c!1007614 (regTwo!31939 lt!2277097) (ite c!1007617 (reg!16042 lt!2277097) (ite c!1007618 (regTwo!31938 lt!2277097) (regOne!31938 lt!2277097)))) (head!12105 (_2!36113 lt!2277144))))))

(declare-fun bm!436300 () Bool)

(declare-fun call!436304 () Regex!15713)

(assert (=> bm!436300 (= call!436304 call!436306)))

(declare-fun bm!436301 () Bool)

(assert (=> bm!436301 (= call!436303 call!436304)))

(declare-fun b!5715834 () Bool)

(declare-fun e!3515140 () Regex!15713)

(assert (=> b!5715834 (= e!3515140 (Concat!24558 call!436304 lt!2277097))))

(declare-fun b!5715828 () Bool)

(assert (=> b!5715828 (= e!3515141 e!3515137)))

(declare-fun c!1007615 () Bool)

(assert (=> b!5715828 (= c!1007615 ((_ is ElementMatch!15713) lt!2277097))))

(declare-fun d!1802784 () Bool)

(declare-fun lt!2277364 () Regex!15713)

(assert (=> d!1802784 (validRegex!7449 lt!2277364)))

(assert (=> d!1802784 (= lt!2277364 e!3515141)))

(declare-fun c!1007616 () Bool)

(assert (=> d!1802784 (= c!1007616 (or ((_ is EmptyExpr!15713) lt!2277097) ((_ is EmptyLang!15713) lt!2277097)))))

(assert (=> d!1802784 (validRegex!7449 lt!2277097)))

(assert (=> d!1802784 (= (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 lt!2277144))) lt!2277364)))

(declare-fun b!5715835 () Bool)

(assert (=> b!5715835 (= c!1007618 (nullable!5745 (regOne!31938 lt!2277097)))))

(assert (=> b!5715835 (= e!3515140 e!3515139)))

(declare-fun b!5715836 () Bool)

(assert (=> b!5715836 (= e!3515138 e!3515140)))

(assert (=> b!5715836 (= c!1007617 ((_ is Star!15713) lt!2277097))))

(assert (= (and d!1802784 c!1007616) b!5715829))

(assert (= (and d!1802784 (not c!1007616)) b!5715828))

(assert (= (and b!5715828 c!1007615) b!5715830))

(assert (= (and b!5715828 (not c!1007615)) b!5715833))

(assert (= (and b!5715833 c!1007614) b!5715831))

(assert (= (and b!5715833 (not c!1007614)) b!5715836))

(assert (= (and b!5715836 c!1007617) b!5715834))

(assert (= (and b!5715836 (not c!1007617)) b!5715835))

(assert (= (and b!5715835 c!1007618) b!5715832))

(assert (= (and b!5715835 (not c!1007618)) b!5715827))

(assert (= (or b!5715832 b!5715827) bm!436301))

(assert (= (or b!5715834 bm!436301) bm!436300))

(assert (= (or b!5715831 bm!436300) bm!436299))

(assert (= (or b!5715831 b!5715832) bm!436298))

(assert (=> bm!436298 m!6669120))

(declare-fun m!6669356 () Bool)

(assert (=> bm!436298 m!6669356))

(assert (=> bm!436299 m!6669120))

(declare-fun m!6669358 () Bool)

(assert (=> bm!436299 m!6669358))

(declare-fun m!6669360 () Bool)

(assert (=> d!1802784 m!6669360))

(assert (=> d!1802784 m!6668140))

(declare-fun m!6669362 () Bool)

(assert (=> b!5715835 m!6669362))

(assert (=> b!5715538 d!1802784))

(assert (=> b!5715538 d!1802748))

(declare-fun d!1802786 () Bool)

(assert (=> d!1802786 (= (tail!11200 (_2!36113 lt!2277144)) (t!376758 (_2!36113 lt!2277144)))))

(assert (=> b!5715538 d!1802786))

(declare-fun d!1802788 () Bool)

(declare-fun lambda!308797 () Int)

(declare-fun exists!2222 ((InoxSet Context!10194) Int) Bool)

(assert (=> d!1802788 (= (nullableZipper!1663 lt!2277101) (exists!2222 lt!2277101 lambda!308797))))

(declare-fun bs!1335230 () Bool)

(assert (= bs!1335230 d!1802788))

(declare-fun m!6669364 () Bool)

(assert (=> bs!1335230 m!6669364))

(assert (=> b!5715395 d!1802788))

(declare-fun d!1802790 () Bool)

(assert (=> d!1802790 (= (head!12105 s!2326) (h!69762 s!2326))))

(assert (=> b!5715531 d!1802790))

(declare-fun d!1802792 () Bool)

(assert (=> d!1802792 (= (isEmpty!35186 (t!376758 s!2326)) ((_ is Nil!63314) (t!376758 s!2326)))))

(assert (=> d!1802588 d!1802792))

(declare-fun b!5715838 () Bool)

(declare-fun e!3515144 () Bool)

(assert (=> b!5715838 (= e!3515144 (nullable!5745 (regOne!31938 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343))))))))))))

(declare-fun bm!436302 () Bool)

(declare-fun call!436310 () List!63439)

(declare-fun call!436307 () List!63439)

(assert (=> bm!436302 (= call!436310 call!436307)))

(declare-fun b!5715839 () Bool)

(declare-fun e!3515142 () (InoxSet Context!10194))

(declare-fun call!436309 () (InoxSet Context!10194))

(assert (=> b!5715839 (= e!3515142 call!436309)))

(declare-fun b!5715840 () Bool)

(declare-fun e!3515147 () (InoxSet Context!10194))

(assert (=> b!5715840 (= e!3515147 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5715841 () Bool)

(declare-fun e!3515146 () (InoxSet Context!10194))

(declare-fun call!436308 () (InoxSet Context!10194))

(declare-fun call!436312 () (InoxSet Context!10194))

(assert (=> b!5715841 (= e!3515146 ((_ map or) call!436308 call!436312))))

(declare-fun bm!436303 () Bool)

(declare-fun call!436311 () (InoxSet Context!10194))

(assert (=> bm!436303 (= call!436311 call!436312)))

(declare-fun b!5715842 () Bool)

(declare-fun c!1007622 () Bool)

(assert (=> b!5715842 (= c!1007622 ((_ is Star!15713) (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))))

(assert (=> b!5715842 (= e!3515142 e!3515147)))

(declare-fun c!1007621 () Bool)

(declare-fun bm!436304 () Bool)

(assert (=> bm!436304 (= call!436308 (derivationStepZipperDown!1055 (ite c!1007621 (regOne!31939 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))) (regOne!31938 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343))))))))) (ite c!1007621 (ite (or c!1007442 c!1007444) lt!2277104 (Context!10195 call!436231)) (Context!10195 call!436307)) (h!69762 s!2326)))))

(declare-fun c!1007624 () Bool)

(declare-fun bm!436305 () Bool)

(declare-fun c!1007623 () Bool)

(assert (=> bm!436305 (= call!436312 (derivationStepZipperDown!1055 (ite c!1007621 (regTwo!31939 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))) (ite c!1007623 (regTwo!31938 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))) (ite c!1007624 (regOne!31938 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))) (reg!16042 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343))))))))))) (ite (or c!1007621 c!1007623) (ite (or c!1007442 c!1007444) lt!2277104 (Context!10195 call!436231)) (Context!10195 call!436310)) (h!69762 s!2326)))))

(declare-fun bm!436306 () Bool)

(assert (=> bm!436306 (= call!436309 call!436311)))

(declare-fun b!5715843 () Bool)

(declare-fun e!3515143 () (InoxSet Context!10194))

(assert (=> b!5715843 (= e!3515143 ((_ map or) call!436308 call!436311))))

(declare-fun b!5715844 () Bool)

(assert (=> b!5715844 (= e!3515143 e!3515142)))

(assert (=> b!5715844 (= c!1007624 ((_ is Concat!24558) (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))))

(declare-fun c!1007625 () Bool)

(declare-fun d!1802794 () Bool)

(assert (=> d!1802794 (= c!1007625 (and ((_ is ElementMatch!15713) (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))) (= (c!1007275 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))) (h!69762 s!2326))))))

(declare-fun e!3515145 () (InoxSet Context!10194))

(assert (=> d!1802794 (= (derivationStepZipperDown!1055 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343))))))) (ite (or c!1007442 c!1007444) lt!2277104 (Context!10195 call!436231)) (h!69762 s!2326)) e!3515145)))

(declare-fun b!5715837 () Bool)

(assert (=> b!5715837 (= e!3515145 e!3515146)))

(assert (=> b!5715837 (= c!1007621 ((_ is Union!15713) (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))))

(declare-fun b!5715845 () Bool)

(assert (=> b!5715845 (= e!3515145 (store ((as const (Array Context!10194 Bool)) false) (ite (or c!1007442 c!1007444) lt!2277104 (Context!10195 call!436231)) true))))

(declare-fun b!5715846 () Bool)

(assert (=> b!5715846 (= c!1007623 e!3515144)))

(declare-fun res!2413450 () Bool)

(assert (=> b!5715846 (=> (not res!2413450) (not e!3515144))))

(assert (=> b!5715846 (= res!2413450 ((_ is Concat!24558) (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))))

(assert (=> b!5715846 (= e!3515146 e!3515143)))

(declare-fun bm!436307 () Bool)

(assert (=> bm!436307 (= call!436307 ($colon$colon!1729 (exprs!5597 (ite (or c!1007442 c!1007444) lt!2277104 (Context!10195 call!436231))) (ite (or c!1007623 c!1007624) (regTwo!31938 (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343)))))))) (ite c!1007442 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007444 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007445 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343))))))))))))

(declare-fun b!5715847 () Bool)

(assert (=> b!5715847 (= e!3515147 call!436309)))

(assert (= (and d!1802794 c!1007625) b!5715845))

(assert (= (and d!1802794 (not c!1007625)) b!5715837))

(assert (= (and b!5715837 c!1007621) b!5715841))

(assert (= (and b!5715837 (not c!1007621)) b!5715846))

(assert (= (and b!5715846 res!2413450) b!5715838))

(assert (= (and b!5715846 c!1007623) b!5715843))

(assert (= (and b!5715846 (not c!1007623)) b!5715844))

(assert (= (and b!5715844 c!1007624) b!5715839))

(assert (= (and b!5715844 (not c!1007624)) b!5715842))

(assert (= (and b!5715842 c!1007622) b!5715847))

(assert (= (and b!5715842 (not c!1007622)) b!5715840))

(assert (= (or b!5715839 b!5715847) bm!436302))

(assert (= (or b!5715839 b!5715847) bm!436306))

(assert (= (or b!5715843 bm!436302) bm!436307))

(assert (= (or b!5715843 bm!436306) bm!436303))

(assert (= (or b!5715841 bm!436303) bm!436305))

(assert (= (or b!5715841 b!5715843) bm!436304))

(declare-fun m!6669366 () Bool)

(assert (=> b!5715838 m!6669366))

(declare-fun m!6669368 () Bool)

(assert (=> bm!436305 m!6669368))

(declare-fun m!6669370 () Bool)

(assert (=> b!5715845 m!6669370))

(declare-fun m!6669372 () Bool)

(assert (=> bm!436307 m!6669372))

(declare-fun m!6669374 () Bool)

(assert (=> bm!436304 m!6669374))

(assert (=> bm!436226 d!1802794))

(declare-fun bs!1335231 () Bool)

(declare-fun b!5715853 () Bool)

(assert (= bs!1335231 (and b!5715853 d!1802660)))

(declare-fun lambda!308798 () Int)

(assert (=> bs!1335231 (not (= lambda!308798 lambda!308764))))

(declare-fun bs!1335232 () Bool)

(assert (= bs!1335232 (and b!5715853 d!1802448)))

(assert (=> bs!1335232 (not (= lambda!308798 lambda!308742))))

(declare-fun bs!1335233 () Bool)

(assert (= bs!1335233 (and b!5715853 b!5714753)))

(assert (=> bs!1335233 (= (and (= (reg!16042 (regTwo!31939 r!7292)) (reg!16042 lt!2277132)) (= (regTwo!31939 r!7292) lt!2277132)) (= lambda!308798 lambda!308716))))

(declare-fun bs!1335234 () Bool)

(assert (= bs!1335234 (and b!5715853 b!5714499)))

(assert (=> bs!1335234 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 r!7292) lt!2277097)) (= lambda!308798 lambda!308685))))

(declare-fun bs!1335235 () Bool)

(assert (= bs!1335235 (and b!5715853 d!1802776)))

(assert (=> bs!1335235 (not (= lambda!308798 lambda!308794))))

(declare-fun bs!1335236 () Bool)

(assert (= bs!1335236 (and b!5715853 d!1802700)))

(assert (=> bs!1335236 (not (= lambda!308798 lambda!308781))))

(assert (=> bs!1335231 (not (= lambda!308798 lambda!308765))))

(declare-fun bs!1335237 () Bool)

(assert (= bs!1335237 (and b!5715853 d!1802658)))

(assert (=> bs!1335237 (not (= lambda!308798 lambda!308763))))

(declare-fun bs!1335238 () Bool)

(assert (= bs!1335238 (and b!5715853 b!5714517)))

(assert (=> bs!1335238 (not (= lambda!308798 lambda!308679))))

(declare-fun bs!1335239 () Bool)

(assert (= bs!1335239 (and b!5715853 b!5714504)))

(assert (=> bs!1335239 (not (= lambda!308798 lambda!308682))))

(assert (=> bs!1335235 (not (= lambda!308798 lambda!308793))))

(assert (=> bs!1335236 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308798 lambda!308782))))

(declare-fun bs!1335240 () Bool)

(assert (= bs!1335240 (and b!5715853 d!1802714)))

(assert (=> bs!1335240 (not (= lambda!308798 lambda!308787))))

(assert (=> bs!1335240 (not (= lambda!308798 lambda!308786))))

(assert (=> bs!1335239 (not (= lambda!308798 lambda!308683))))

(declare-fun bs!1335241 () Bool)

(assert (= bs!1335241 (and b!5715853 b!5715508)))

(assert (=> bs!1335241 (not (= lambda!308798 lambda!308767))))

(assert (=> bs!1335234 (not (= lambda!308798 lambda!308686))))

(declare-fun bs!1335242 () Bool)

(assert (= bs!1335242 (and b!5715853 b!5715645)))

(assert (=> bs!1335242 (not (= lambda!308798 lambda!308785))))

(assert (=> bs!1335232 (not (= lambda!308798 lambda!308743))))

(assert (=> bs!1335238 (not (= lambda!308798 lambda!308680))))

(declare-fun bs!1335243 () Bool)

(assert (= bs!1335243 (and b!5715853 d!1802432)))

(assert (=> bs!1335243 (not (= lambda!308798 lambda!308728))))

(declare-fun bs!1335244 () Bool)

(assert (= bs!1335244 (and b!5715853 b!5715649)))

(assert (=> bs!1335244 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 r!7292)) (reg!16042 lt!2277097)) (= (regTwo!31939 r!7292) lt!2277097)) (= lambda!308798 lambda!308784))))

(declare-fun bs!1335245 () Bool)

(assert (= bs!1335245 (and b!5715853 b!5714749)))

(assert (=> bs!1335245 (not (= lambda!308798 lambda!308717))))

(assert (=> bs!1335234 (not (= lambda!308798 lambda!308684))))

(declare-fun bs!1335246 () Bool)

(assert (= bs!1335246 (and b!5715853 d!1802704)))

(assert (=> bs!1335246 (not (= lambda!308798 lambda!308783))))

(declare-fun bs!1335247 () Bool)

(assert (= bs!1335247 (and b!5715853 b!5715512)))

(assert (=> bs!1335247 (= (and (= (reg!16042 (regTwo!31939 r!7292)) (reg!16042 r!7292)) (= (regTwo!31939 r!7292) r!7292)) (= lambda!308798 lambda!308766))))

(assert (=> b!5715853 true))

(assert (=> b!5715853 true))

(declare-fun bs!1335248 () Bool)

(declare-fun b!5715849 () Bool)

(assert (= bs!1335248 (and b!5715849 d!1802660)))

(declare-fun lambda!308799 () Int)

(assert (=> bs!1335248 (not (= lambda!308799 lambda!308764))))

(declare-fun bs!1335249 () Bool)

(assert (= bs!1335249 (and b!5715849 d!1802448)))

(assert (=> bs!1335249 (not (= lambda!308799 lambda!308742))))

(declare-fun bs!1335250 () Bool)

(assert (= bs!1335250 (and b!5715849 b!5714753)))

(assert (=> bs!1335250 (not (= lambda!308799 lambda!308716))))

(declare-fun bs!1335251 () Bool)

(assert (= bs!1335251 (and b!5715849 b!5714499)))

(assert (=> bs!1335251 (not (= lambda!308799 lambda!308685))))

(declare-fun bs!1335252 () Bool)

(assert (= bs!1335252 (and b!5715849 d!1802776)))

(assert (=> bs!1335252 (= (and (= (regOne!31938 (regTwo!31939 r!7292)) lt!2277097) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308799 lambda!308794))))

(declare-fun bs!1335253 () Bool)

(assert (= bs!1335253 (and b!5715849 d!1802700)))

(assert (=> bs!1335253 (not (= lambda!308799 lambda!308781))))

(assert (=> bs!1335248 (= (and (= (regOne!31938 (regTwo!31939 r!7292)) lt!2277097) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308799 lambda!308765))))

(declare-fun bs!1335254 () Bool)

(assert (= bs!1335254 (and b!5715849 d!1802658)))

(assert (=> bs!1335254 (not (= lambda!308799 lambda!308763))))

(declare-fun bs!1335255 () Bool)

(assert (= bs!1335255 (and b!5715849 b!5714517)))

(assert (=> bs!1335255 (not (= lambda!308799 lambda!308679))))

(declare-fun bs!1335256 () Bool)

(assert (= bs!1335256 (and b!5715849 b!5714504)))

(assert (=> bs!1335256 (not (= lambda!308799 lambda!308682))))

(assert (=> bs!1335252 (not (= lambda!308799 lambda!308793))))

(assert (=> bs!1335253 (not (= lambda!308799 lambda!308782))))

(declare-fun bs!1335257 () Bool)

(assert (= bs!1335257 (and b!5715849 d!1802714)))

(assert (=> bs!1335257 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regTwo!31939 r!7292)) lt!2277097)) (= lambda!308799 lambda!308787))))

(assert (=> bs!1335257 (not (= lambda!308799 lambda!308786))))

(assert (=> bs!1335256 (= (and (= (regOne!31938 (regTwo!31939 r!7292)) lt!2277097) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308799 lambda!308683))))

(declare-fun bs!1335258 () Bool)

(assert (= bs!1335258 (and b!5715849 b!5715508)))

(assert (=> bs!1335258 (= (and (= (regOne!31938 (regTwo!31939 r!7292)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308799 lambda!308767))))

(assert (=> bs!1335251 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regTwo!31939 r!7292)) lt!2277097)) (= lambda!308799 lambda!308686))))

(declare-fun bs!1335259 () Bool)

(assert (= bs!1335259 (and b!5715849 b!5715645)))

(assert (=> bs!1335259 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 r!7292)) (regOne!31938 lt!2277097)) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 lt!2277097))) (= lambda!308799 lambda!308785))))

(assert (=> bs!1335249 (= (and (= (regOne!31938 (regTwo!31939 r!7292)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308799 lambda!308743))))

(assert (=> bs!1335255 (= (and (= (regOne!31938 (regTwo!31939 r!7292)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308799 lambda!308680))))

(declare-fun bs!1335260 () Bool)

(assert (= bs!1335260 (and b!5715849 d!1802432)))

(assert (=> bs!1335260 (not (= lambda!308799 lambda!308728))))

(declare-fun bs!1335261 () Bool)

(assert (= bs!1335261 (and b!5715849 b!5715853)))

(assert (=> bs!1335261 (not (= lambda!308799 lambda!308798))))

(declare-fun bs!1335262 () Bool)

(assert (= bs!1335262 (and b!5715849 b!5715649)))

(assert (=> bs!1335262 (not (= lambda!308799 lambda!308784))))

(declare-fun bs!1335263 () Bool)

(assert (= bs!1335263 (and b!5715849 b!5714749)))

(assert (=> bs!1335263 (= (and (= (regOne!31938 (regTwo!31939 r!7292)) (regOne!31938 lt!2277132)) (= (regTwo!31938 (regTwo!31939 r!7292)) (regTwo!31938 lt!2277132))) (= lambda!308799 lambda!308717))))

(assert (=> bs!1335251 (not (= lambda!308799 lambda!308684))))

(declare-fun bs!1335264 () Bool)

(assert (= bs!1335264 (and b!5715849 d!1802704)))

(assert (=> bs!1335264 (not (= lambda!308799 lambda!308783))))

(declare-fun bs!1335265 () Bool)

(assert (= bs!1335265 (and b!5715849 b!5715512)))

(assert (=> bs!1335265 (not (= lambda!308799 lambda!308766))))

(assert (=> b!5715849 true))

(assert (=> b!5715849 true))

(declare-fun d!1802796 () Bool)

(declare-fun c!1007628 () Bool)

(assert (=> d!1802796 (= c!1007628 ((_ is EmptyExpr!15713) (regTwo!31939 r!7292)))))

(declare-fun e!3515154 () Bool)

(assert (=> d!1802796 (= (matchRSpec!2816 (regTwo!31939 r!7292) s!2326) e!3515154)))

(declare-fun b!5715848 () Bool)

(declare-fun res!2413451 () Bool)

(declare-fun e!3515148 () Bool)

(assert (=> b!5715848 (=> res!2413451 e!3515148)))

(declare-fun call!436313 () Bool)

(assert (=> b!5715848 (= res!2413451 call!436313)))

(declare-fun e!3515153 () Bool)

(assert (=> b!5715848 (= e!3515153 e!3515148)))

(declare-fun call!436314 () Bool)

(assert (=> b!5715849 (= e!3515153 call!436314)))

(declare-fun b!5715850 () Bool)

(declare-fun c!1007626 () Bool)

(assert (=> b!5715850 (= c!1007626 ((_ is ElementMatch!15713) (regTwo!31939 r!7292)))))

(declare-fun e!3515152 () Bool)

(declare-fun e!3515149 () Bool)

(assert (=> b!5715850 (= e!3515152 e!3515149)))

(declare-fun b!5715851 () Bool)

(assert (=> b!5715851 (= e!3515149 (= s!2326 (Cons!63314 (c!1007275 (regTwo!31939 r!7292)) Nil!63314)))))

(declare-fun b!5715852 () Bool)

(assert (=> b!5715852 (= e!3515154 e!3515152)))

(declare-fun res!2413452 () Bool)

(assert (=> b!5715852 (= res!2413452 (not ((_ is EmptyLang!15713) (regTwo!31939 r!7292))))))

(assert (=> b!5715852 (=> (not res!2413452) (not e!3515152))))

(declare-fun bm!436308 () Bool)

(assert (=> bm!436308 (= call!436313 (isEmpty!35186 s!2326))))

(assert (=> b!5715853 (= e!3515148 call!436314)))

(declare-fun b!5715854 () Bool)

(assert (=> b!5715854 (= e!3515154 call!436313)))

(declare-fun b!5715855 () Bool)

(declare-fun e!3515151 () Bool)

(assert (=> b!5715855 (= e!3515151 (matchRSpec!2816 (regTwo!31939 (regTwo!31939 r!7292)) s!2326))))

(declare-fun b!5715856 () Bool)

(declare-fun c!1007627 () Bool)

(assert (=> b!5715856 (= c!1007627 ((_ is Union!15713) (regTwo!31939 r!7292)))))

(declare-fun e!3515150 () Bool)

(assert (=> b!5715856 (= e!3515149 e!3515150)))

(declare-fun b!5715857 () Bool)

(assert (=> b!5715857 (= e!3515150 e!3515153)))

(declare-fun c!1007629 () Bool)

(assert (=> b!5715857 (= c!1007629 ((_ is Star!15713) (regTwo!31939 r!7292)))))

(declare-fun b!5715858 () Bool)

(assert (=> b!5715858 (= e!3515150 e!3515151)))

(declare-fun res!2413453 () Bool)

(assert (=> b!5715858 (= res!2413453 (matchRSpec!2816 (regOne!31939 (regTwo!31939 r!7292)) s!2326))))

(assert (=> b!5715858 (=> res!2413453 e!3515151)))

(declare-fun bm!436309 () Bool)

(assert (=> bm!436309 (= call!436314 (Exists!2813 (ite c!1007629 lambda!308798 lambda!308799)))))

(assert (= (and d!1802796 c!1007628) b!5715854))

(assert (= (and d!1802796 (not c!1007628)) b!5715852))

(assert (= (and b!5715852 res!2413452) b!5715850))

(assert (= (and b!5715850 c!1007626) b!5715851))

(assert (= (and b!5715850 (not c!1007626)) b!5715856))

(assert (= (and b!5715856 c!1007627) b!5715858))

(assert (= (and b!5715856 (not c!1007627)) b!5715857))

(assert (= (and b!5715858 (not res!2413453)) b!5715855))

(assert (= (and b!5715857 c!1007629) b!5715848))

(assert (= (and b!5715857 (not c!1007629)) b!5715849))

(assert (= (and b!5715848 (not res!2413451)) b!5715853))

(assert (= (or b!5715853 b!5715849) bm!436309))

(assert (= (or b!5715854 b!5715848) bm!436308))

(assert (=> bm!436308 m!6668190))

(declare-fun m!6669376 () Bool)

(assert (=> b!5715855 m!6669376))

(declare-fun m!6669378 () Bool)

(assert (=> b!5715858 m!6669378))

(declare-fun m!6669380 () Bool)

(assert (=> bm!436309 m!6669380))

(assert (=> b!5715514 d!1802796))

(declare-fun d!1802798 () Bool)

(declare-fun c!1007632 () Bool)

(assert (=> d!1802798 (= c!1007632 ((_ is Nil!63314) lt!2277281))))

(declare-fun e!3515157 () (InoxSet C!31696))

(assert (=> d!1802798 (= (content!11499 lt!2277281) e!3515157)))

(declare-fun b!5715863 () Bool)

(assert (=> b!5715863 (= e!3515157 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5715864 () Bool)

(assert (=> b!5715864 (= e!3515157 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 lt!2277281) true) (content!11499 (t!376758 lt!2277281))))))

(assert (= (and d!1802798 c!1007632) b!5715863))

(assert (= (and d!1802798 (not c!1007632)) b!5715864))

(declare-fun m!6669382 () Bool)

(assert (=> b!5715864 m!6669382))

(declare-fun m!6669384 () Bool)

(assert (=> b!5715864 m!6669384))

(assert (=> d!1802538 d!1802798))

(declare-fun d!1802800 () Bool)

(declare-fun c!1007633 () Bool)

(assert (=> d!1802800 (= c!1007633 ((_ is Nil!63314) lt!2277096))))

(declare-fun e!3515158 () (InoxSet C!31696))

(assert (=> d!1802800 (= (content!11499 lt!2277096) e!3515158)))

(declare-fun b!5715865 () Bool)

(assert (=> b!5715865 (= e!3515158 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5715866 () Bool)

(assert (=> b!5715866 (= e!3515158 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 lt!2277096) true) (content!11499 (t!376758 lt!2277096))))))

(assert (= (and d!1802800 c!1007633) b!5715865))

(assert (= (and d!1802800 (not c!1007633)) b!5715866))

(declare-fun m!6669386 () Bool)

(assert (=> b!5715866 m!6669386))

(assert (=> b!5715866 m!6669330))

(assert (=> d!1802538 d!1802800))

(declare-fun d!1802802 () Bool)

(declare-fun c!1007634 () Bool)

(assert (=> d!1802802 (= c!1007634 ((_ is Nil!63314) (_2!36113 lt!2277139)))))

(declare-fun e!3515159 () (InoxSet C!31696))

(assert (=> d!1802802 (= (content!11499 (_2!36113 lt!2277139)) e!3515159)))

(declare-fun b!5715867 () Bool)

(assert (=> b!5715867 (= e!3515159 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5715868 () Bool)

(assert (=> b!5715868 (= e!3515159 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 (_2!36113 lt!2277139)) true) (content!11499 (t!376758 (_2!36113 lt!2277139)))))))

(assert (= (and d!1802802 c!1007634) b!5715867))

(assert (= (and d!1802802 (not c!1007634)) b!5715868))

(declare-fun m!6669388 () Bool)

(assert (=> b!5715868 m!6669388))

(declare-fun m!6669390 () Bool)

(assert (=> b!5715868 m!6669390))

(assert (=> d!1802538 d!1802802))

(declare-fun b!5715869 () Bool)

(declare-fun res!2413455 () Bool)

(declare-fun e!3515165 () Bool)

(assert (=> b!5715869 (=> (not res!2413455) (not e!3515165))))

(assert (=> b!5715869 (= res!2413455 (isEmpty!35186 (tail!11200 (_1!36113 (get!21829 lt!2277355)))))))

(declare-fun b!5715870 () Bool)

(declare-fun res!2413458 () Bool)

(assert (=> b!5715870 (=> (not res!2413458) (not e!3515165))))

(declare-fun call!436315 () Bool)

(assert (=> b!5715870 (= res!2413458 (not call!436315))))

(declare-fun b!5715871 () Bool)

(declare-fun res!2413460 () Bool)

(declare-fun e!3515162 () Bool)

(assert (=> b!5715871 (=> res!2413460 e!3515162)))

(assert (=> b!5715871 (= res!2413460 e!3515165)))

(declare-fun res!2413459 () Bool)

(assert (=> b!5715871 (=> (not res!2413459) (not e!3515165))))

(declare-fun lt!2277365 () Bool)

(assert (=> b!5715871 (= res!2413459 lt!2277365)))

(declare-fun d!1802804 () Bool)

(declare-fun e!3515164 () Bool)

(assert (=> d!1802804 e!3515164))

(declare-fun c!1007637 () Bool)

(assert (=> d!1802804 (= c!1007637 ((_ is EmptyExpr!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun e!3515163 () Bool)

(assert (=> d!1802804 (= lt!2277365 e!3515163)))

(declare-fun c!1007636 () Bool)

(assert (=> d!1802804 (= c!1007636 (isEmpty!35186 (_1!36113 (get!21829 lt!2277355))))))

(assert (=> d!1802804 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1802804 (= (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (_1!36113 (get!21829 lt!2277355))) lt!2277365)))

(declare-fun b!5715872 () Bool)

(declare-fun e!3515166 () Bool)

(declare-fun e!3515161 () Bool)

(assert (=> b!5715872 (= e!3515166 e!3515161)))

(declare-fun res!2413461 () Bool)

(assert (=> b!5715872 (=> res!2413461 e!3515161)))

(assert (=> b!5715872 (= res!2413461 call!436315)))

(declare-fun b!5715873 () Bool)

(assert (=> b!5715873 (= e!3515163 (nullable!5745 (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5715874 () Bool)

(declare-fun res!2413457 () Bool)

(assert (=> b!5715874 (=> res!2413457 e!3515162)))

(assert (=> b!5715874 (= res!2413457 (not ((_ is ElementMatch!15713) (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun e!3515160 () Bool)

(assert (=> b!5715874 (= e!3515160 e!3515162)))

(declare-fun b!5715875 () Bool)

(assert (=> b!5715875 (= e!3515163 (matchR!7898 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 (get!21829 lt!2277355)))) (tail!11200 (_1!36113 (get!21829 lt!2277355)))))))

(declare-fun b!5715876 () Bool)

(declare-fun res!2413454 () Bool)

(assert (=> b!5715876 (=> res!2413454 e!3515161)))

(assert (=> b!5715876 (= res!2413454 (not (isEmpty!35186 (tail!11200 (_1!36113 (get!21829 lt!2277355))))))))

(declare-fun bm!436310 () Bool)

(assert (=> bm!436310 (= call!436315 (isEmpty!35186 (_1!36113 (get!21829 lt!2277355))))))

(declare-fun b!5715877 () Bool)

(assert (=> b!5715877 (= e!3515164 e!3515160)))

(declare-fun c!1007635 () Bool)

(assert (=> b!5715877 (= c!1007635 ((_ is EmptyLang!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5715878 () Bool)

(assert (=> b!5715878 (= e!3515162 e!3515166)))

(declare-fun res!2413456 () Bool)

(assert (=> b!5715878 (=> (not res!2413456) (not e!3515166))))

(assert (=> b!5715878 (= res!2413456 (not lt!2277365))))

(declare-fun b!5715879 () Bool)

(assert (=> b!5715879 (= e!3515160 (not lt!2277365))))

(declare-fun b!5715880 () Bool)

(assert (=> b!5715880 (= e!3515165 (= (head!12105 (_1!36113 (get!21829 lt!2277355))) (c!1007275 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun b!5715881 () Bool)

(assert (=> b!5715881 (= e!3515164 (= lt!2277365 call!436315))))

(declare-fun b!5715882 () Bool)

(assert (=> b!5715882 (= e!3515161 (not (= (head!12105 (_1!36113 (get!21829 lt!2277355))) (c!1007275 (reg!16042 (regOne!31938 r!7292))))))))

(assert (= (and d!1802804 c!1007636) b!5715873))

(assert (= (and d!1802804 (not c!1007636)) b!5715875))

(assert (= (and d!1802804 c!1007637) b!5715881))

(assert (= (and d!1802804 (not c!1007637)) b!5715877))

(assert (= (and b!5715877 c!1007635) b!5715879))

(assert (= (and b!5715877 (not c!1007635)) b!5715874))

(assert (= (and b!5715874 (not res!2413457)) b!5715871))

(assert (= (and b!5715871 res!2413459) b!5715870))

(assert (= (and b!5715870 res!2413458) b!5715869))

(assert (= (and b!5715869 res!2413455) b!5715880))

(assert (= (and b!5715871 (not res!2413460)) b!5715878))

(assert (= (and b!5715878 res!2413456) b!5715872))

(assert (= (and b!5715872 (not res!2413461)) b!5715876))

(assert (= (and b!5715876 (not res!2413454)) b!5715882))

(assert (= (or b!5715881 b!5715870 b!5715872) bm!436310))

(assert (=> b!5715873 m!6669254))

(declare-fun m!6669392 () Bool)

(assert (=> d!1802804 m!6669392))

(assert (=> d!1802804 m!6668948))

(declare-fun m!6669394 () Bool)

(assert (=> b!5715882 m!6669394))

(assert (=> b!5715875 m!6669394))

(assert (=> b!5715875 m!6669394))

(declare-fun m!6669396 () Bool)

(assert (=> b!5715875 m!6669396))

(declare-fun m!6669398 () Bool)

(assert (=> b!5715875 m!6669398))

(assert (=> b!5715875 m!6669396))

(assert (=> b!5715875 m!6669398))

(declare-fun m!6669400 () Bool)

(assert (=> b!5715875 m!6669400))

(assert (=> b!5715869 m!6669398))

(assert (=> b!5715869 m!6669398))

(declare-fun m!6669402 () Bool)

(assert (=> b!5715869 m!6669402))

(assert (=> b!5715876 m!6669398))

(assert (=> b!5715876 m!6669398))

(assert (=> b!5715876 m!6669402))

(assert (=> b!5715880 m!6669394))

(assert (=> bm!436310 m!6669392))

(assert (=> b!5715658 d!1802804))

(declare-fun d!1802806 () Bool)

(assert (=> d!1802806 (= (get!21829 lt!2277355) (v!51776 lt!2277355))))

(assert (=> b!5715658 d!1802806))

(declare-fun b!5715883 () Bool)

(declare-fun res!2413463 () Bool)

(declare-fun e!3515172 () Bool)

(assert (=> b!5715883 (=> (not res!2413463) (not e!3515172))))

(assert (=> b!5715883 (= res!2413463 (isEmpty!35186 (tail!11200 (++!13908 (_1!36113 lt!2277144) lt!2277140))))))

(declare-fun b!5715884 () Bool)

(declare-fun res!2413466 () Bool)

(assert (=> b!5715884 (=> (not res!2413466) (not e!3515172))))

(declare-fun call!436316 () Bool)

(assert (=> b!5715884 (= res!2413466 (not call!436316))))

(declare-fun b!5715885 () Bool)

(declare-fun res!2413468 () Bool)

(declare-fun e!3515169 () Bool)

(assert (=> b!5715885 (=> res!2413468 e!3515169)))

(assert (=> b!5715885 (= res!2413468 e!3515172)))

(declare-fun res!2413467 () Bool)

(assert (=> b!5715885 (=> (not res!2413467) (not e!3515172))))

(declare-fun lt!2277366 () Bool)

(assert (=> b!5715885 (= res!2413467 lt!2277366)))

(declare-fun d!1802808 () Bool)

(declare-fun e!3515171 () Bool)

(assert (=> d!1802808 e!3515171))

(declare-fun c!1007640 () Bool)

(assert (=> d!1802808 (= c!1007640 ((_ is EmptyExpr!15713) (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138)))))

(declare-fun e!3515170 () Bool)

(assert (=> d!1802808 (= lt!2277366 e!3515170)))

(declare-fun c!1007639 () Bool)

(assert (=> d!1802808 (= c!1007639 (isEmpty!35186 (++!13908 (_1!36113 lt!2277144) lt!2277140)))))

(assert (=> d!1802808 (validRegex!7449 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138))))

(assert (=> d!1802808 (= (matchR!7898 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138) (++!13908 (_1!36113 lt!2277144) lt!2277140)) lt!2277366)))

(declare-fun b!5715886 () Bool)

(declare-fun e!3515173 () Bool)

(declare-fun e!3515168 () Bool)

(assert (=> b!5715886 (= e!3515173 e!3515168)))

(declare-fun res!2413469 () Bool)

(assert (=> b!5715886 (=> res!2413469 e!3515168)))

(assert (=> b!5715886 (= res!2413469 call!436316)))

(declare-fun b!5715887 () Bool)

(assert (=> b!5715887 (= e!3515170 (nullable!5745 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138)))))

(declare-fun b!5715888 () Bool)

(declare-fun res!2413465 () Bool)

(assert (=> b!5715888 (=> res!2413465 e!3515169)))

(assert (=> b!5715888 (= res!2413465 (not ((_ is ElementMatch!15713) (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138))))))

(declare-fun e!3515167 () Bool)

(assert (=> b!5715888 (= e!3515167 e!3515169)))

(declare-fun b!5715889 () Bool)

(assert (=> b!5715889 (= e!3515170 (matchR!7898 (derivativeStep!4516 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138) (head!12105 (++!13908 (_1!36113 lt!2277144) lt!2277140))) (tail!11200 (++!13908 (_1!36113 lt!2277144) lt!2277140))))))

(declare-fun b!5715890 () Bool)

(declare-fun res!2413462 () Bool)

(assert (=> b!5715890 (=> res!2413462 e!3515168)))

(assert (=> b!5715890 (= res!2413462 (not (isEmpty!35186 (tail!11200 (++!13908 (_1!36113 lt!2277144) lt!2277140)))))))

(declare-fun bm!436311 () Bool)

(assert (=> bm!436311 (= call!436316 (isEmpty!35186 (++!13908 (_1!36113 lt!2277144) lt!2277140)))))

(declare-fun b!5715891 () Bool)

(assert (=> b!5715891 (= e!3515171 e!3515167)))

(declare-fun c!1007638 () Bool)

(assert (=> b!5715891 (= c!1007638 ((_ is EmptyLang!15713) (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138)))))

(declare-fun b!5715892 () Bool)

(assert (=> b!5715892 (= e!3515169 e!3515173)))

(declare-fun res!2413464 () Bool)

(assert (=> b!5715892 (=> (not res!2413464) (not e!3515173))))

(assert (=> b!5715892 (= res!2413464 (not lt!2277366))))

(declare-fun b!5715893 () Bool)

(assert (=> b!5715893 (= e!3515167 (not lt!2277366))))

(declare-fun b!5715894 () Bool)

(assert (=> b!5715894 (= e!3515172 (= (head!12105 (++!13908 (_1!36113 lt!2277144) lt!2277140)) (c!1007275 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138))))))

(declare-fun b!5715895 () Bool)

(assert (=> b!5715895 (= e!3515171 (= lt!2277366 call!436316))))

(declare-fun b!5715896 () Bool)

(assert (=> b!5715896 (= e!3515168 (not (= (head!12105 (++!13908 (_1!36113 lt!2277144) lt!2277140)) (c!1007275 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138)))))))

(assert (= (and d!1802808 c!1007639) b!5715887))

(assert (= (and d!1802808 (not c!1007639)) b!5715889))

(assert (= (and d!1802808 c!1007640) b!5715895))

(assert (= (and d!1802808 (not c!1007640)) b!5715891))

(assert (= (and b!5715891 c!1007638) b!5715893))

(assert (= (and b!5715891 (not c!1007638)) b!5715888))

(assert (= (and b!5715888 (not res!2413465)) b!5715885))

(assert (= (and b!5715885 res!2413467) b!5715884))

(assert (= (and b!5715884 res!2413466) b!5715883))

(assert (= (and b!5715883 res!2413463) b!5715894))

(assert (= (and b!5715885 (not res!2413468)) b!5715892))

(assert (= (and b!5715892 res!2413464) b!5715886))

(assert (= (and b!5715886 (not res!2413469)) b!5715890))

(assert (= (and b!5715890 (not res!2413462)) b!5715896))

(assert (= (or b!5715895 b!5715884 b!5715886) bm!436311))

(declare-fun m!6669404 () Bool)

(assert (=> b!5715887 m!6669404))

(assert (=> d!1802808 m!6667962))

(declare-fun m!6669406 () Bool)

(assert (=> d!1802808 m!6669406))

(declare-fun m!6669408 () Bool)

(assert (=> d!1802808 m!6669408))

(assert (=> b!5715896 m!6667962))

(declare-fun m!6669410 () Bool)

(assert (=> b!5715896 m!6669410))

(assert (=> b!5715889 m!6667962))

(assert (=> b!5715889 m!6669410))

(assert (=> b!5715889 m!6669410))

(declare-fun m!6669412 () Bool)

(assert (=> b!5715889 m!6669412))

(assert (=> b!5715889 m!6667962))

(declare-fun m!6669414 () Bool)

(assert (=> b!5715889 m!6669414))

(assert (=> b!5715889 m!6669412))

(assert (=> b!5715889 m!6669414))

(declare-fun m!6669416 () Bool)

(assert (=> b!5715889 m!6669416))

(assert (=> b!5715883 m!6667962))

(assert (=> b!5715883 m!6669414))

(assert (=> b!5715883 m!6669414))

(declare-fun m!6669418 () Bool)

(assert (=> b!5715883 m!6669418))

(assert (=> b!5715890 m!6667962))

(assert (=> b!5715890 m!6669414))

(assert (=> b!5715890 m!6669414))

(assert (=> b!5715890 m!6669418))

(assert (=> b!5715894 m!6667962))

(assert (=> b!5715894 m!6669410))

(assert (=> bm!436311 m!6667962))

(assert (=> bm!436311 m!6669406))

(assert (=> d!1802634 d!1802808))

(assert (=> d!1802634 d!1802536))

(declare-fun d!1802810 () Bool)

(assert (=> d!1802810 (matchR!7898 (Concat!24558 (reg!16042 (regOne!31938 r!7292)) lt!2277138) (++!13908 (_1!36113 lt!2277144) lt!2277140))))

(assert (=> d!1802810 true))

(declare-fun _$119!435 () Unit!156384)

(assert (=> d!1802810 (= (choose!43227 (reg!16042 (regOne!31938 r!7292)) lt!2277138 (_1!36113 lt!2277144) lt!2277140) _$119!435)))

(declare-fun bs!1335266 () Bool)

(assert (= bs!1335266 d!1802810))

(assert (=> bs!1335266 m!6667962))

(assert (=> bs!1335266 m!6667962))

(assert (=> bs!1335266 m!6669016))

(assert (=> d!1802634 d!1802810))

(declare-fun bm!436312 () Bool)

(declare-fun call!436319 () Bool)

(declare-fun call!436318 () Bool)

(assert (=> bm!436312 (= call!436319 call!436318)))

(declare-fun b!5715897 () Bool)

(declare-fun res!2413471 () Bool)

(declare-fun e!3515179 () Bool)

(assert (=> b!5715897 (=> res!2413471 e!3515179)))

(assert (=> b!5715897 (= res!2413471 (not ((_ is Concat!24558) (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun e!3515180 () Bool)

(assert (=> b!5715897 (= e!3515180 e!3515179)))

(declare-fun b!5715898 () Bool)

(declare-fun e!3515174 () Bool)

(assert (=> b!5715898 (= e!3515179 e!3515174)))

(declare-fun res!2413474 () Bool)

(assert (=> b!5715898 (=> (not res!2413474) (not e!3515174))))

(declare-fun call!436317 () Bool)

(assert (=> b!5715898 (= res!2413474 call!436317)))

(declare-fun b!5715899 () Bool)

(declare-fun res!2413470 () Bool)

(declare-fun e!3515178 () Bool)

(assert (=> b!5715899 (=> (not res!2413470) (not e!3515178))))

(assert (=> b!5715899 (= res!2413470 call!436317)))

(assert (=> b!5715899 (= e!3515180 e!3515178)))

(declare-fun b!5715900 () Bool)

(declare-fun e!3515177 () Bool)

(assert (=> b!5715900 (= e!3515177 call!436318)))

(declare-fun b!5715901 () Bool)

(assert (=> b!5715901 (= e!3515174 call!436319)))

(declare-fun b!5715902 () Bool)

(assert (=> b!5715902 (= e!3515178 call!436319)))

(declare-fun d!1802812 () Bool)

(declare-fun res!2413473 () Bool)

(declare-fun e!3515175 () Bool)

(assert (=> d!1802812 (=> res!2413473 e!3515175)))

(assert (=> d!1802812 (= res!2413473 ((_ is ElementMatch!15713) (reg!16042 (regOne!31938 r!7292))))))

(assert (=> d!1802812 (= (validRegex!7449 (reg!16042 (regOne!31938 r!7292))) e!3515175)))

(declare-fun b!5715903 () Bool)

(declare-fun e!3515176 () Bool)

(assert (=> b!5715903 (= e!3515176 e!3515180)))

(declare-fun c!1007642 () Bool)

(assert (=> b!5715903 (= c!1007642 ((_ is Union!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun c!1007641 () Bool)

(declare-fun bm!436313 () Bool)

(assert (=> bm!436313 (= call!436318 (validRegex!7449 (ite c!1007641 (reg!16042 (reg!16042 (regOne!31938 r!7292))) (ite c!1007642 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 (reg!16042 (regOne!31938 r!7292)))))))))

(declare-fun bm!436314 () Bool)

(assert (=> bm!436314 (= call!436317 (validRegex!7449 (ite c!1007642 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))))))

(declare-fun b!5715904 () Bool)

(assert (=> b!5715904 (= e!3515176 e!3515177)))

(declare-fun res!2413472 () Bool)

(assert (=> b!5715904 (= res!2413472 (not (nullable!5745 (reg!16042 (reg!16042 (regOne!31938 r!7292))))))))

(assert (=> b!5715904 (=> (not res!2413472) (not e!3515177))))

(declare-fun b!5715905 () Bool)

(assert (=> b!5715905 (= e!3515175 e!3515176)))

(assert (=> b!5715905 (= c!1007641 ((_ is Star!15713) (reg!16042 (regOne!31938 r!7292))))))

(assert (= (and d!1802812 (not res!2413473)) b!5715905))

(assert (= (and b!5715905 c!1007641) b!5715904))

(assert (= (and b!5715905 (not c!1007641)) b!5715903))

(assert (= (and b!5715904 res!2413472) b!5715900))

(assert (= (and b!5715903 c!1007642) b!5715899))

(assert (= (and b!5715903 (not c!1007642)) b!5715897))

(assert (= (and b!5715899 res!2413470) b!5715902))

(assert (= (and b!5715897 (not res!2413471)) b!5715898))

(assert (= (and b!5715898 res!2413474) b!5715901))

(assert (= (or b!5715902 b!5715901) bm!436312))

(assert (= (or b!5715899 b!5715898) bm!436314))

(assert (= (or b!5715900 bm!436312) bm!436313))

(declare-fun m!6669420 () Bool)

(assert (=> bm!436313 m!6669420))

(declare-fun m!6669422 () Bool)

(assert (=> bm!436314 m!6669422))

(declare-fun m!6669424 () Bool)

(assert (=> b!5715904 m!6669424))

(assert (=> d!1802634 d!1802812))

(declare-fun d!1802814 () Bool)

(declare-fun c!1007643 () Bool)

(assert (=> d!1802814 (= c!1007643 (isEmpty!35186 (tail!11200 (t!376758 s!2326))))))

(declare-fun e!3515181 () Bool)

(assert (=> d!1802814 (= (matchZipper!1851 (derivationStepZipper!1796 lt!2277113 (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))) e!3515181)))

(declare-fun b!5715906 () Bool)

(assert (=> b!5715906 (= e!3515181 (nullableZipper!1663 (derivationStepZipper!1796 lt!2277113 (head!12105 (t!376758 s!2326)))))))

(declare-fun b!5715907 () Bool)

(assert (=> b!5715907 (= e!3515181 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 lt!2277113 (head!12105 (t!376758 s!2326))) (head!12105 (tail!11200 (t!376758 s!2326)))) (tail!11200 (tail!11200 (t!376758 s!2326)))))))

(assert (= (and d!1802814 c!1007643) b!5715906))

(assert (= (and d!1802814 (not c!1007643)) b!5715907))

(assert (=> d!1802814 m!6668874))

(declare-fun m!6669426 () Bool)

(assert (=> d!1802814 m!6669426))

(assert (=> b!5715906 m!6669176))

(declare-fun m!6669428 () Bool)

(assert (=> b!5715906 m!6669428))

(assert (=> b!5715907 m!6668874))

(declare-fun m!6669430 () Bool)

(assert (=> b!5715907 m!6669430))

(assert (=> b!5715907 m!6669176))

(assert (=> b!5715907 m!6669430))

(declare-fun m!6669432 () Bool)

(assert (=> b!5715907 m!6669432))

(assert (=> b!5715907 m!6668874))

(declare-fun m!6669434 () Bool)

(assert (=> b!5715907 m!6669434))

(assert (=> b!5715907 m!6669432))

(assert (=> b!5715907 m!6669434))

(declare-fun m!6669436 () Bool)

(assert (=> b!5715907 m!6669436))

(assert (=> b!5715616 d!1802814))

(declare-fun bs!1335267 () Bool)

(declare-fun d!1802816 () Bool)

(assert (= bs!1335267 (and d!1802816 b!5714534)))

(declare-fun lambda!308800 () Int)

(assert (=> bs!1335267 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308800 lambda!308681))))

(declare-fun bs!1335268 () Bool)

(assert (= bs!1335268 (and d!1802816 d!1802600)))

(assert (=> bs!1335268 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308800 lambda!308755))))

(declare-fun bs!1335269 () Bool)

(assert (= bs!1335269 (and d!1802816 d!1802740)))

(assert (=> bs!1335269 (= (= (head!12105 (t!376758 s!2326)) (head!12105 lt!2277105)) (= lambda!308800 lambda!308788))))

(assert (=> d!1802816 true))

(assert (=> d!1802816 (= (derivationStepZipper!1796 lt!2277113 (head!12105 (t!376758 s!2326))) (flatMap!1326 lt!2277113 lambda!308800))))

(declare-fun bs!1335270 () Bool)

(assert (= bs!1335270 d!1802816))

(declare-fun m!6669438 () Bool)

(assert (=> bs!1335270 m!6669438))

(assert (=> b!5715616 d!1802816))

(declare-fun d!1802818 () Bool)

(assert (=> d!1802818 (= (head!12105 (t!376758 s!2326)) (h!69762 (t!376758 s!2326)))))

(assert (=> b!5715616 d!1802818))

(declare-fun d!1802820 () Bool)

(assert (=> d!1802820 (= (tail!11200 (t!376758 s!2326)) (t!376758 (t!376758 s!2326)))))

(assert (=> b!5715616 d!1802820))

(assert (=> d!1802684 d!1802688))

(assert (=> d!1802684 d!1802686))

(declare-fun d!1802822 () Bool)

(declare-fun e!3515184 () Bool)

(assert (=> d!1802822 (= (matchZipper!1851 ((_ map or) lt!2277113 lt!2277110) (t!376758 s!2326)) e!3515184)))

(declare-fun res!2413477 () Bool)

(assert (=> d!1802822 (=> res!2413477 e!3515184)))

(assert (=> d!1802822 (= res!2413477 (matchZipper!1851 lt!2277113 (t!376758 s!2326)))))

(assert (=> d!1802822 true))

(declare-fun _$48!1344 () Unit!156384)

(assert (=> d!1802822 (= (choose!43228 lt!2277113 lt!2277110 (t!376758 s!2326)) _$48!1344)))

(declare-fun b!5715910 () Bool)

(assert (=> b!5715910 (= e!3515184 (matchZipper!1851 lt!2277110 (t!376758 s!2326)))))

(assert (= (and d!1802822 (not res!2413477)) b!5715910))

(assert (=> d!1802822 m!6667878))

(assert (=> d!1802822 m!6667876))

(assert (=> b!5715910 m!6667902))

(assert (=> d!1802684 d!1802822))

(declare-fun d!1802824 () Bool)

(declare-fun res!2413482 () Bool)

(declare-fun e!3515189 () Bool)

(assert (=> d!1802824 (=> res!2413482 e!3515189)))

(assert (=> d!1802824 (= res!2413482 ((_ is Nil!63315) (exprs!5597 setElem!38279)))))

(assert (=> d!1802824 (= (forall!14848 (exprs!5597 setElem!38279) lambda!308761) e!3515189)))

(declare-fun b!5715915 () Bool)

(declare-fun e!3515190 () Bool)

(assert (=> b!5715915 (= e!3515189 e!3515190)))

(declare-fun res!2413483 () Bool)

(assert (=> b!5715915 (=> (not res!2413483) (not e!3515190))))

(declare-fun dynLambda!24773 (Int Regex!15713) Bool)

(assert (=> b!5715915 (= res!2413483 (dynLambda!24773 lambda!308761 (h!69763 (exprs!5597 setElem!38279))))))

(declare-fun b!5715916 () Bool)

(assert (=> b!5715916 (= e!3515190 (forall!14848 (t!376759 (exprs!5597 setElem!38279)) lambda!308761))))

(assert (= (and d!1802824 (not res!2413482)) b!5715915))

(assert (= (and b!5715915 res!2413483) b!5715916))

(declare-fun b_lambda!215975 () Bool)

(assert (=> (not b_lambda!215975) (not b!5715915)))

(declare-fun m!6669440 () Bool)

(assert (=> b!5715915 m!6669440))

(declare-fun m!6669442 () Bool)

(assert (=> b!5715916 m!6669442))

(assert (=> d!1802648 d!1802824))

(declare-fun d!1802826 () Bool)

(assert (=> d!1802826 (= (Exists!2813 lambda!308742) (choose!43215 lambda!308742))))

(declare-fun bs!1335271 () Bool)

(assert (= bs!1335271 d!1802826))

(declare-fun m!6669444 () Bool)

(assert (=> bs!1335271 m!6669444))

(assert (=> d!1802448 d!1802826))

(declare-fun d!1802828 () Bool)

(assert (=> d!1802828 (= (Exists!2813 lambda!308743) (choose!43215 lambda!308743))))

(declare-fun bs!1335272 () Bool)

(assert (= bs!1335272 d!1802828))

(declare-fun m!6669446 () Bool)

(assert (=> bs!1335272 m!6669446))

(assert (=> d!1802448 d!1802828))

(declare-fun bs!1335273 () Bool)

(declare-fun d!1802830 () Bool)

(assert (= bs!1335273 (and d!1802830 d!1802660)))

(declare-fun lambda!308801 () Int)

(assert (=> bs!1335273 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308801 lambda!308764))))

(declare-fun bs!1335274 () Bool)

(assert (= bs!1335274 (and d!1802830 d!1802448)))

(assert (=> bs!1335274 (= lambda!308801 lambda!308742)))

(declare-fun bs!1335275 () Bool)

(assert (= bs!1335275 (and d!1802830 b!5715849)))

(assert (=> bs!1335275 (not (= lambda!308801 lambda!308799))))

(declare-fun bs!1335276 () Bool)

(assert (= bs!1335276 (and d!1802830 b!5714753)))

(assert (=> bs!1335276 (not (= lambda!308801 lambda!308716))))

(declare-fun bs!1335277 () Bool)

(assert (= bs!1335277 (and d!1802830 b!5714499)))

(assert (=> bs!1335277 (not (= lambda!308801 lambda!308685))))

(declare-fun bs!1335278 () Bool)

(assert (= bs!1335278 (and d!1802830 d!1802776)))

(assert (=> bs!1335278 (not (= lambda!308801 lambda!308794))))

(declare-fun bs!1335279 () Bool)

(assert (= bs!1335279 (and d!1802830 d!1802700)))

(assert (=> bs!1335279 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308801 lambda!308781))))

(assert (=> bs!1335273 (not (= lambda!308801 lambda!308765))))

(declare-fun bs!1335280 () Bool)

(assert (= bs!1335280 (and d!1802830 d!1802658)))

(assert (=> bs!1335280 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308801 lambda!308763))))

(declare-fun bs!1335281 () Bool)

(assert (= bs!1335281 (and d!1802830 b!5714517)))

(assert (=> bs!1335281 (= lambda!308801 lambda!308679)))

(declare-fun bs!1335282 () Bool)

(assert (= bs!1335282 (and d!1802830 b!5714504)))

(assert (=> bs!1335282 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308801 lambda!308682))))

(assert (=> bs!1335278 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308801 lambda!308793))))

(assert (=> bs!1335279 (not (= lambda!308801 lambda!308782))))

(declare-fun bs!1335283 () Bool)

(assert (= bs!1335283 (and d!1802830 d!1802714)))

(assert (=> bs!1335283 (not (= lambda!308801 lambda!308787))))

(assert (=> bs!1335283 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308801 lambda!308786))))

(assert (=> bs!1335282 (not (= lambda!308801 lambda!308683))))

(declare-fun bs!1335284 () Bool)

(assert (= bs!1335284 (and d!1802830 b!5715508)))

(assert (=> bs!1335284 (not (= lambda!308801 lambda!308767))))

(assert (=> bs!1335277 (not (= lambda!308801 lambda!308686))))

(declare-fun bs!1335285 () Bool)

(assert (= bs!1335285 (and d!1802830 b!5715645)))

(assert (=> bs!1335285 (not (= lambda!308801 lambda!308785))))

(assert (=> bs!1335274 (not (= lambda!308801 lambda!308743))))

(assert (=> bs!1335281 (not (= lambda!308801 lambda!308680))))

(declare-fun bs!1335286 () Bool)

(assert (= bs!1335286 (and d!1802830 d!1802432)))

(assert (=> bs!1335286 (= lambda!308801 lambda!308728)))

(declare-fun bs!1335287 () Bool)

(assert (= bs!1335287 (and d!1802830 b!5715853)))

(assert (=> bs!1335287 (not (= lambda!308801 lambda!308798))))

(declare-fun bs!1335288 () Bool)

(assert (= bs!1335288 (and d!1802830 b!5715649)))

(assert (=> bs!1335288 (not (= lambda!308801 lambda!308784))))

(declare-fun bs!1335289 () Bool)

(assert (= bs!1335289 (and d!1802830 b!5714749)))

(assert (=> bs!1335289 (not (= lambda!308801 lambda!308717))))

(assert (=> bs!1335277 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308801 lambda!308684))))

(declare-fun bs!1335290 () Bool)

(assert (= bs!1335290 (and d!1802830 d!1802704)))

(assert (=> bs!1335290 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308801 lambda!308783))))

(declare-fun bs!1335291 () Bool)

(assert (= bs!1335291 (and d!1802830 b!5715512)))

(assert (=> bs!1335291 (not (= lambda!308801 lambda!308766))))

(assert (=> d!1802830 true))

(assert (=> d!1802830 true))

(assert (=> d!1802830 true))

(declare-fun lambda!308802 () Int)

(assert (=> bs!1335273 (not (= lambda!308802 lambda!308764))))

(assert (=> bs!1335274 (not (= lambda!308802 lambda!308742))))

(assert (=> bs!1335275 (= (and (= (regOne!31938 r!7292) (regOne!31938 (regTwo!31939 r!7292))) (= (regTwo!31938 r!7292) (regTwo!31938 (regTwo!31939 r!7292)))) (= lambda!308802 lambda!308799))))

(assert (=> bs!1335276 (not (= lambda!308802 lambda!308716))))

(assert (=> bs!1335277 (not (= lambda!308802 lambda!308685))))

(assert (=> bs!1335278 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308802 lambda!308794))))

(assert (=> bs!1335273 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308802 lambda!308765))))

(assert (=> bs!1335280 (not (= lambda!308802 lambda!308763))))

(assert (=> bs!1335281 (not (= lambda!308802 lambda!308679))))

(assert (=> bs!1335282 (not (= lambda!308802 lambda!308682))))

(assert (=> bs!1335278 (not (= lambda!308802 lambda!308793))))

(assert (=> bs!1335279 (not (= lambda!308802 lambda!308782))))

(assert (=> bs!1335283 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308802 lambda!308787))))

(assert (=> bs!1335283 (not (= lambda!308802 lambda!308786))))

(assert (=> bs!1335282 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308802 lambda!308683))))

(assert (=> bs!1335284 (= lambda!308802 lambda!308767)))

(assert (=> bs!1335277 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308802 lambda!308686))))

(assert (=> bs!1335285 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (regOne!31938 lt!2277097)) (= (regTwo!31938 r!7292) (regTwo!31938 lt!2277097))) (= lambda!308802 lambda!308785))))

(declare-fun bs!1335292 () Bool)

(assert (= bs!1335292 d!1802830))

(assert (=> bs!1335292 (not (= lambda!308802 lambda!308801))))

(assert (=> bs!1335279 (not (= lambda!308802 lambda!308781))))

(assert (=> bs!1335274 (= lambda!308802 lambda!308743)))

(assert (=> bs!1335281 (= lambda!308802 lambda!308680)))

(assert (=> bs!1335286 (not (= lambda!308802 lambda!308728))))

(assert (=> bs!1335287 (not (= lambda!308802 lambda!308798))))

(assert (=> bs!1335288 (not (= lambda!308802 lambda!308784))))

(assert (=> bs!1335289 (= (and (= (regOne!31938 r!7292) (regOne!31938 lt!2277132)) (= (regTwo!31938 r!7292) (regTwo!31938 lt!2277132))) (= lambda!308802 lambda!308717))))

(assert (=> bs!1335277 (not (= lambda!308802 lambda!308684))))

(assert (=> bs!1335290 (not (= lambda!308802 lambda!308783))))

(assert (=> bs!1335291 (not (= lambda!308802 lambda!308766))))

(assert (=> d!1802830 true))

(assert (=> d!1802830 true))

(assert (=> d!1802830 true))

(assert (=> d!1802830 (= (Exists!2813 lambda!308801) (Exists!2813 lambda!308802))))

(assert (=> d!1802830 true))

(declare-fun _$90!1459 () Unit!156384)

(assert (=> d!1802830 (= (choose!43217 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326) _$90!1459)))

(declare-fun m!6669448 () Bool)

(assert (=> bs!1335292 m!6669448))

(declare-fun m!6669450 () Bool)

(assert (=> bs!1335292 m!6669450))

(assert (=> d!1802448 d!1802830))

(declare-fun bm!436315 () Bool)

(declare-fun call!436322 () Bool)

(declare-fun call!436321 () Bool)

(assert (=> bm!436315 (= call!436322 call!436321)))

(declare-fun b!5715917 () Bool)

(declare-fun res!2413485 () Bool)

(declare-fun e!3515196 () Bool)

(assert (=> b!5715917 (=> res!2413485 e!3515196)))

(assert (=> b!5715917 (= res!2413485 (not ((_ is Concat!24558) (regOne!31938 r!7292))))))

(declare-fun e!3515197 () Bool)

(assert (=> b!5715917 (= e!3515197 e!3515196)))

(declare-fun b!5715918 () Bool)

(declare-fun e!3515191 () Bool)

(assert (=> b!5715918 (= e!3515196 e!3515191)))

(declare-fun res!2413488 () Bool)

(assert (=> b!5715918 (=> (not res!2413488) (not e!3515191))))

(declare-fun call!436320 () Bool)

(assert (=> b!5715918 (= res!2413488 call!436320)))

(declare-fun b!5715919 () Bool)

(declare-fun res!2413484 () Bool)

(declare-fun e!3515195 () Bool)

(assert (=> b!5715919 (=> (not res!2413484) (not e!3515195))))

(assert (=> b!5715919 (= res!2413484 call!436320)))

(assert (=> b!5715919 (= e!3515197 e!3515195)))

(declare-fun b!5715920 () Bool)

(declare-fun e!3515194 () Bool)

(assert (=> b!5715920 (= e!3515194 call!436321)))

(declare-fun b!5715921 () Bool)

(assert (=> b!5715921 (= e!3515191 call!436322)))

(declare-fun b!5715922 () Bool)

(assert (=> b!5715922 (= e!3515195 call!436322)))

(declare-fun d!1802832 () Bool)

(declare-fun res!2413487 () Bool)

(declare-fun e!3515192 () Bool)

(assert (=> d!1802832 (=> res!2413487 e!3515192)))

(assert (=> d!1802832 (= res!2413487 ((_ is ElementMatch!15713) (regOne!31938 r!7292)))))

(assert (=> d!1802832 (= (validRegex!7449 (regOne!31938 r!7292)) e!3515192)))

(declare-fun b!5715923 () Bool)

(declare-fun e!3515193 () Bool)

(assert (=> b!5715923 (= e!3515193 e!3515197)))

(declare-fun c!1007645 () Bool)

(assert (=> b!5715923 (= c!1007645 ((_ is Union!15713) (regOne!31938 r!7292)))))

(declare-fun c!1007644 () Bool)

(declare-fun bm!436316 () Bool)

(assert (=> bm!436316 (= call!436321 (validRegex!7449 (ite c!1007644 (reg!16042 (regOne!31938 r!7292)) (ite c!1007645 (regTwo!31939 (regOne!31938 r!7292)) (regTwo!31938 (regOne!31938 r!7292))))))))

(declare-fun bm!436317 () Bool)

(assert (=> bm!436317 (= call!436320 (validRegex!7449 (ite c!1007645 (regOne!31939 (regOne!31938 r!7292)) (regOne!31938 (regOne!31938 r!7292)))))))

(declare-fun b!5715924 () Bool)

(assert (=> b!5715924 (= e!3515193 e!3515194)))

(declare-fun res!2413486 () Bool)

(assert (=> b!5715924 (= res!2413486 (not (nullable!5745 (reg!16042 (regOne!31938 r!7292)))))))

(assert (=> b!5715924 (=> (not res!2413486) (not e!3515194))))

(declare-fun b!5715925 () Bool)

(assert (=> b!5715925 (= e!3515192 e!3515193)))

(assert (=> b!5715925 (= c!1007644 ((_ is Star!15713) (regOne!31938 r!7292)))))

(assert (= (and d!1802832 (not res!2413487)) b!5715925))

(assert (= (and b!5715925 c!1007644) b!5715924))

(assert (= (and b!5715925 (not c!1007644)) b!5715923))

(assert (= (and b!5715924 res!2413486) b!5715920))

(assert (= (and b!5715923 c!1007645) b!5715919))

(assert (= (and b!5715923 (not c!1007645)) b!5715917))

(assert (= (and b!5715919 res!2413484) b!5715922))

(assert (= (and b!5715917 (not res!2413485)) b!5715918))

(assert (= (and b!5715918 res!2413488) b!5715921))

(assert (= (or b!5715922 b!5715921) bm!436315))

(assert (= (or b!5715919 b!5715918) bm!436317))

(assert (= (or b!5715920 bm!436315) bm!436316))

(declare-fun m!6669452 () Bool)

(assert (=> bm!436316 m!6669452))

(declare-fun m!6669454 () Bool)

(assert (=> bm!436317 m!6669454))

(assert (=> b!5715924 m!6669254))

(assert (=> d!1802448 d!1802832))

(declare-fun d!1802834 () Bool)

(assert (=> d!1802834 (= (isEmpty!35186 lt!2277096) ((_ is Nil!63314) lt!2277096))))

(assert (=> bm!436266 d!1802834))

(declare-fun b!5715927 () Bool)

(declare-fun e!3515200 () Bool)

(assert (=> b!5715927 (= e!3515200 (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))))

(declare-fun bm!436318 () Bool)

(declare-fun call!436326 () List!63439)

(declare-fun call!436323 () List!63439)

(assert (=> bm!436318 (= call!436326 call!436323)))

(declare-fun b!5715928 () Bool)

(declare-fun e!3515198 () (InoxSet Context!10194))

(declare-fun call!436325 () (InoxSet Context!10194))

(assert (=> b!5715928 (= e!3515198 call!436325)))

(declare-fun b!5715929 () Bool)

(declare-fun e!3515203 () (InoxSet Context!10194))

(assert (=> b!5715929 (= e!3515203 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5715930 () Bool)

(declare-fun e!3515202 () (InoxSet Context!10194))

(declare-fun call!436324 () (InoxSet Context!10194))

(declare-fun call!436328 () (InoxSet Context!10194))

(assert (=> b!5715930 (= e!3515202 ((_ map or) call!436324 call!436328))))

(declare-fun bm!436319 () Bool)

(declare-fun call!436327 () (InoxSet Context!10194))

(assert (=> bm!436319 (= call!436327 call!436328)))

(declare-fun b!5715931 () Bool)

(declare-fun c!1007647 () Bool)

(assert (=> b!5715931 (= c!1007647 ((_ is Star!15713) (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))

(assert (=> b!5715931 (= e!3515198 e!3515203)))

(declare-fun c!1007646 () Bool)

(declare-fun bm!436320 () Bool)

(assert (=> bm!436320 (= call!436324 (derivationStepZipperDown!1055 (ite c!1007646 (regOne!31939 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (regOne!31938 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))) (ite c!1007646 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (Context!10195 call!436323)) (h!69762 s!2326)))))

(declare-fun c!1007649 () Bool)

(declare-fun c!1007648 () Bool)

(declare-fun bm!436321 () Bool)

(assert (=> bm!436321 (= call!436328 (derivationStepZipperDown!1055 (ite c!1007646 (regTwo!31939 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (ite c!1007648 (regTwo!31938 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (ite c!1007649 (regOne!31938 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (reg!16042 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))) (ite (or c!1007646 c!1007648) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (Context!10195 call!436326)) (h!69762 s!2326)))))

(declare-fun bm!436322 () Bool)

(assert (=> bm!436322 (= call!436325 call!436327)))

(declare-fun b!5715932 () Bool)

(declare-fun e!3515199 () (InoxSet Context!10194))

(assert (=> b!5715932 (= e!3515199 ((_ map or) call!436324 call!436327))))

(declare-fun b!5715933 () Bool)

(assert (=> b!5715933 (= e!3515199 e!3515198)))

(assert (=> b!5715933 (= c!1007649 ((_ is Concat!24558) (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))

(declare-fun d!1802836 () Bool)

(declare-fun c!1007650 () Bool)

(assert (=> d!1802836 (= c!1007650 (and ((_ is ElementMatch!15713) (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (= (c!1007275 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (h!69762 s!2326))))))

(declare-fun e!3515201 () (InoxSet Context!10194))

(assert (=> d!1802836 (= (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (h!69762 s!2326)) e!3515201)))

(declare-fun b!5715926 () Bool)

(assert (=> b!5715926 (= e!3515201 e!3515202)))

(assert (=> b!5715926 (= c!1007646 ((_ is Union!15713) (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))

(declare-fun b!5715934 () Bool)

(assert (=> b!5715934 (= e!3515201 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) true))))

(declare-fun b!5715935 () Bool)

(assert (=> b!5715935 (= c!1007648 e!3515200)))

(declare-fun res!2413489 () Bool)

(assert (=> b!5715935 (=> (not res!2413489) (not e!3515200))))

(assert (=> b!5715935 (= res!2413489 ((_ is Concat!24558) (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))

(assert (=> b!5715935 (= e!3515202 e!3515199)))

(declare-fun bm!436323 () Bool)

(assert (=> bm!436323 (= call!436323 ($colon$colon!1729 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))) (ite (or c!1007648 c!1007649) (regTwo!31938 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))))

(declare-fun b!5715936 () Bool)

(assert (=> b!5715936 (= e!3515203 call!436325)))

(assert (= (and d!1802836 c!1007650) b!5715934))

(assert (= (and d!1802836 (not c!1007650)) b!5715926))

(assert (= (and b!5715926 c!1007646) b!5715930))

(assert (= (and b!5715926 (not c!1007646)) b!5715935))

(assert (= (and b!5715935 res!2413489) b!5715927))

(assert (= (and b!5715935 c!1007648) b!5715932))

(assert (= (and b!5715935 (not c!1007648)) b!5715933))

(assert (= (and b!5715933 c!1007649) b!5715928))

(assert (= (and b!5715933 (not c!1007649)) b!5715931))

(assert (= (and b!5715931 c!1007647) b!5715936))

(assert (= (and b!5715931 (not c!1007647)) b!5715929))

(assert (= (or b!5715928 b!5715936) bm!436318))

(assert (= (or b!5715928 b!5715936) bm!436322))

(assert (= (or b!5715932 bm!436318) bm!436323))

(assert (= (or b!5715932 bm!436322) bm!436319))

(assert (= (or b!5715930 bm!436319) bm!436321))

(assert (= (or b!5715930 b!5715932) bm!436320))

(declare-fun m!6669456 () Bool)

(assert (=> b!5715927 m!6669456))

(declare-fun m!6669458 () Bool)

(assert (=> bm!436321 m!6669458))

(declare-fun m!6669460 () Bool)

(assert (=> b!5715934 m!6669460))

(declare-fun m!6669462 () Bool)

(assert (=> bm!436323 m!6669462))

(declare-fun m!6669464 () Bool)

(assert (=> bm!436320 m!6669464))

(assert (=> bm!436207 d!1802836))

(declare-fun d!1802838 () Bool)

(assert (=> d!1802838 (= (head!12105 (_1!36113 lt!2277139)) (h!69762 (_1!36113 lt!2277139)))))

(assert (=> b!5714659 d!1802838))

(declare-fun d!1802840 () Bool)

(assert (=> d!1802840 (= (isEmpty!35186 (tail!11200 lt!2277105)) ((_ is Nil!63314) (tail!11200 lt!2277105)))))

(assert (=> b!5715428 d!1802840))

(assert (=> b!5715428 d!1802744))

(declare-fun d!1802842 () Bool)

(assert (=> d!1802842 (= (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))) (nullableFct!1808 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun bs!1335293 () Bool)

(assert (= bs!1335293 d!1802842))

(declare-fun m!6669466 () Bool)

(assert (=> bs!1335293 m!6669466))

(assert (=> b!5715158 d!1802842))

(declare-fun b!5715937 () Bool)

(declare-fun e!3515204 () List!63438)

(assert (=> b!5715937 (= e!3515204 (_2!36113 (get!21829 lt!2277227)))))

(declare-fun b!5715940 () Bool)

(declare-fun e!3515205 () Bool)

(declare-fun lt!2277367 () List!63438)

(assert (=> b!5715940 (= e!3515205 (or (not (= (_2!36113 (get!21829 lt!2277227)) Nil!63314)) (= lt!2277367 (_1!36113 (get!21829 lt!2277227)))))))

(declare-fun b!5715939 () Bool)

(declare-fun res!2413490 () Bool)

(assert (=> b!5715939 (=> (not res!2413490) (not e!3515205))))

(assert (=> b!5715939 (= res!2413490 (= (size!40024 lt!2277367) (+ (size!40024 (_1!36113 (get!21829 lt!2277227))) (size!40024 (_2!36113 (get!21829 lt!2277227))))))))

(declare-fun b!5715938 () Bool)

(assert (=> b!5715938 (= e!3515204 (Cons!63314 (h!69762 (_1!36113 (get!21829 lt!2277227))) (++!13908 (t!376758 (_1!36113 (get!21829 lt!2277227))) (_2!36113 (get!21829 lt!2277227)))))))

(declare-fun d!1802844 () Bool)

(assert (=> d!1802844 e!3515205))

(declare-fun res!2413491 () Bool)

(assert (=> d!1802844 (=> (not res!2413491) (not e!3515205))))

(assert (=> d!1802844 (= res!2413491 (= (content!11499 lt!2277367) ((_ map or) (content!11499 (_1!36113 (get!21829 lt!2277227))) (content!11499 (_2!36113 (get!21829 lt!2277227))))))))

(assert (=> d!1802844 (= lt!2277367 e!3515204)))

(declare-fun c!1007651 () Bool)

(assert (=> d!1802844 (= c!1007651 ((_ is Nil!63314) (_1!36113 (get!21829 lt!2277227))))))

(assert (=> d!1802844 (= (++!13908 (_1!36113 (get!21829 lt!2277227)) (_2!36113 (get!21829 lt!2277227))) lt!2277367)))

(assert (= (and d!1802844 c!1007651) b!5715937))

(assert (= (and d!1802844 (not c!1007651)) b!5715938))

(assert (= (and d!1802844 res!2413491) b!5715939))

(assert (= (and b!5715939 res!2413490) b!5715940))

(declare-fun m!6669468 () Bool)

(assert (=> b!5715939 m!6669468))

(declare-fun m!6669470 () Bool)

(assert (=> b!5715939 m!6669470))

(declare-fun m!6669472 () Bool)

(assert (=> b!5715939 m!6669472))

(declare-fun m!6669474 () Bool)

(assert (=> b!5715938 m!6669474))

(declare-fun m!6669476 () Bool)

(assert (=> d!1802844 m!6669476))

(declare-fun m!6669478 () Bool)

(assert (=> d!1802844 m!6669478))

(declare-fun m!6669480 () Bool)

(assert (=> d!1802844 m!6669480))

(assert (=> b!5714948 d!1802844))

(declare-fun d!1802846 () Bool)

(assert (=> d!1802846 (= (get!21829 lt!2277227) (v!51776 lt!2277227))))

(assert (=> b!5714948 d!1802846))

(assert (=> b!5715467 d!1802766))

(declare-fun d!1802848 () Bool)

(assert (=> d!1802848 (= ($colon$colon!1729 (exprs!5597 lt!2277119) (ite (or c!1007573 c!1007574) (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (regOne!31938 r!7292)))) (Cons!63315 (ite (or c!1007573 c!1007574) (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (regOne!31938 r!7292))) (exprs!5597 lt!2277119)))))

(assert (=> bm!436276 d!1802848))

(declare-fun b!5715941 () Bool)

(declare-fun e!3515207 () Bool)

(assert (=> b!5715941 (= e!3515207 (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277124)))))))))

(declare-fun d!1802850 () Bool)

(declare-fun c!1007652 () Bool)

(assert (=> d!1802850 (= c!1007652 e!3515207)))

(declare-fun res!2413492 () Bool)

(assert (=> d!1802850 (=> (not res!2413492) (not e!3515207))))

(assert (=> d!1802850 (= res!2413492 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277124))))))))

(declare-fun e!3515208 () (InoxSet Context!10194))

(assert (=> d!1802850 (= (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277124))) (h!69762 s!2326)) e!3515208)))

(declare-fun b!5715942 () Bool)

(declare-fun call!436329 () (InoxSet Context!10194))

(assert (=> b!5715942 (= e!3515208 ((_ map or) call!436329 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277124)))))) (h!69762 s!2326))))))

(declare-fun b!5715943 () Bool)

(declare-fun e!3515206 () (InoxSet Context!10194))

(assert (=> b!5715943 (= e!3515206 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436324 () Bool)

(assert (=> bm!436324 (= call!436329 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277124))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277124)))))) (h!69762 s!2326)))))

(declare-fun b!5715944 () Bool)

(assert (=> b!5715944 (= e!3515206 call!436329)))

(declare-fun b!5715945 () Bool)

(assert (=> b!5715945 (= e!3515208 e!3515206)))

(declare-fun c!1007653 () Bool)

(assert (=> b!5715945 (= c!1007653 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277124))))))))

(assert (= (and d!1802850 res!2413492) b!5715941))

(assert (= (and d!1802850 c!1007652) b!5715942))

(assert (= (and d!1802850 (not c!1007652)) b!5715945))

(assert (= (and b!5715945 c!1007653) b!5715944))

(assert (= (and b!5715945 (not c!1007653)) b!5715943))

(assert (= (or b!5715942 b!5715944) bm!436324))

(declare-fun m!6669482 () Bool)

(assert (=> b!5715941 m!6669482))

(declare-fun m!6669484 () Bool)

(assert (=> b!5715942 m!6669484))

(declare-fun m!6669486 () Bool)

(assert (=> bm!436324 m!6669486))

(assert (=> b!5715082 d!1802850))

(declare-fun d!1802852 () Bool)

(assert (=> d!1802852 (= (isEmpty!35186 s!2326) ((_ is Nil!63314) s!2326))))

(assert (=> d!1802672 d!1802852))

(assert (=> d!1802672 d!1802562))

(declare-fun d!1802854 () Bool)

(assert (=> d!1802854 (= (isEmpty!35188 (unfocusZipperList!1141 zl!343)) ((_ is Nil!63315) (unfocusZipperList!1141 zl!343)))))

(assert (=> b!5715603 d!1802854))

(assert (=> d!1802380 d!1802852))

(declare-fun bm!436325 () Bool)

(declare-fun call!436332 () Bool)

(declare-fun call!436331 () Bool)

(assert (=> bm!436325 (= call!436332 call!436331)))

(declare-fun b!5715946 () Bool)

(declare-fun res!2413494 () Bool)

(declare-fun e!3515214 () Bool)

(assert (=> b!5715946 (=> res!2413494 e!3515214)))

(assert (=> b!5715946 (= res!2413494 (not ((_ is Concat!24558) lt!2277132)))))

(declare-fun e!3515215 () Bool)

(assert (=> b!5715946 (= e!3515215 e!3515214)))

(declare-fun b!5715947 () Bool)

(declare-fun e!3515209 () Bool)

(assert (=> b!5715947 (= e!3515214 e!3515209)))

(declare-fun res!2413497 () Bool)

(assert (=> b!5715947 (=> (not res!2413497) (not e!3515209))))

(declare-fun call!436330 () Bool)

(assert (=> b!5715947 (= res!2413497 call!436330)))

(declare-fun b!5715948 () Bool)

(declare-fun res!2413493 () Bool)

(declare-fun e!3515213 () Bool)

(assert (=> b!5715948 (=> (not res!2413493) (not e!3515213))))

(assert (=> b!5715948 (= res!2413493 call!436330)))

(assert (=> b!5715948 (= e!3515215 e!3515213)))

(declare-fun b!5715949 () Bool)

(declare-fun e!3515212 () Bool)

(assert (=> b!5715949 (= e!3515212 call!436331)))

(declare-fun b!5715950 () Bool)

(assert (=> b!5715950 (= e!3515209 call!436332)))

(declare-fun b!5715951 () Bool)

(assert (=> b!5715951 (= e!3515213 call!436332)))

(declare-fun d!1802856 () Bool)

(declare-fun res!2413496 () Bool)

(declare-fun e!3515210 () Bool)

(assert (=> d!1802856 (=> res!2413496 e!3515210)))

(assert (=> d!1802856 (= res!2413496 ((_ is ElementMatch!15713) lt!2277132))))

(assert (=> d!1802856 (= (validRegex!7449 lt!2277132) e!3515210)))

(declare-fun b!5715952 () Bool)

(declare-fun e!3515211 () Bool)

(assert (=> b!5715952 (= e!3515211 e!3515215)))

(declare-fun c!1007655 () Bool)

(assert (=> b!5715952 (= c!1007655 ((_ is Union!15713) lt!2277132))))

(declare-fun bm!436326 () Bool)

(declare-fun c!1007654 () Bool)

(assert (=> bm!436326 (= call!436331 (validRegex!7449 (ite c!1007654 (reg!16042 lt!2277132) (ite c!1007655 (regTwo!31939 lt!2277132) (regTwo!31938 lt!2277132)))))))

(declare-fun bm!436327 () Bool)

(assert (=> bm!436327 (= call!436330 (validRegex!7449 (ite c!1007655 (regOne!31939 lt!2277132) (regOne!31938 lt!2277132))))))

(declare-fun b!5715953 () Bool)

(assert (=> b!5715953 (= e!3515211 e!3515212)))

(declare-fun res!2413495 () Bool)

(assert (=> b!5715953 (= res!2413495 (not (nullable!5745 (reg!16042 lt!2277132))))))

(assert (=> b!5715953 (=> (not res!2413495) (not e!3515212))))

(declare-fun b!5715954 () Bool)

(assert (=> b!5715954 (= e!3515210 e!3515211)))

(assert (=> b!5715954 (= c!1007654 ((_ is Star!15713) lt!2277132))))

(assert (= (and d!1802856 (not res!2413496)) b!5715954))

(assert (= (and b!5715954 c!1007654) b!5715953))

(assert (= (and b!5715954 (not c!1007654)) b!5715952))

(assert (= (and b!5715953 res!2413495) b!5715949))

(assert (= (and b!5715952 c!1007655) b!5715948))

(assert (= (and b!5715952 (not c!1007655)) b!5715946))

(assert (= (and b!5715948 res!2413493) b!5715951))

(assert (= (and b!5715946 (not res!2413494)) b!5715947))

(assert (= (and b!5715947 res!2413497) b!5715950))

(assert (= (or b!5715951 b!5715950) bm!436325))

(assert (= (or b!5715948 b!5715947) bm!436327))

(assert (= (or b!5715949 bm!436325) bm!436326))

(declare-fun m!6669488 () Bool)

(assert (=> bm!436326 m!6669488))

(declare-fun m!6669490 () Bool)

(assert (=> bm!436327 m!6669490))

(declare-fun m!6669492 () Bool)

(assert (=> b!5715953 m!6669492))

(assert (=> d!1802380 d!1802856))

(declare-fun b!5715955 () Bool)

(declare-fun e!3515217 () Bool)

(assert (=> b!5715955 (= e!3515217 (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343))))))))))

(declare-fun d!1802858 () Bool)

(declare-fun c!1007656 () Bool)

(assert (=> d!1802858 (= c!1007656 e!3515217)))

(declare-fun res!2413498 () Bool)

(assert (=> d!1802858 (=> (not res!2413498) (not e!3515217))))

(assert (=> d!1802858 (= res!2413498 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))))))))

(declare-fun e!3515218 () (InoxSet Context!10194))

(assert (=> d!1802858 (= (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))) (h!69762 s!2326)) e!3515218)))

(declare-fun call!436333 () (InoxSet Context!10194))

(declare-fun b!5715956 () Bool)

(assert (=> b!5715956 (= e!3515218 ((_ map or) call!436333 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343))))))) (h!69762 s!2326))))))

(declare-fun b!5715957 () Bool)

(declare-fun e!3515216 () (InoxSet Context!10194))

(assert (=> b!5715957 (= e!3515216 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436328 () Bool)

(assert (=> bm!436328 (= call!436333 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343))))))) (h!69762 s!2326)))))

(declare-fun b!5715958 () Bool)

(assert (=> b!5715958 (= e!3515216 call!436333)))

(declare-fun b!5715959 () Bool)

(assert (=> b!5715959 (= e!3515218 e!3515216)))

(declare-fun c!1007657 () Bool)

(assert (=> b!5715959 (= c!1007657 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))))))))

(assert (= (and d!1802858 res!2413498) b!5715955))

(assert (= (and d!1802858 c!1007656) b!5715956))

(assert (= (and d!1802858 (not c!1007656)) b!5715959))

(assert (= (and b!5715959 c!1007657) b!5715958))

(assert (= (and b!5715959 (not c!1007657)) b!5715957))

(assert (= (or b!5715956 b!5715958) bm!436328))

(declare-fun m!6669494 () Bool)

(assert (=> b!5715955 m!6669494))

(declare-fun m!6669496 () Bool)

(assert (=> b!5715956 m!6669496))

(declare-fun m!6669498 () Bool)

(assert (=> bm!436328 m!6669498))

(assert (=> b!5715169 d!1802858))

(declare-fun d!1802860 () Bool)

(declare-fun c!1007658 () Bool)

(assert (=> d!1802860 (= c!1007658 (isEmpty!35186 (tail!11200 (t!376758 s!2326))))))

(declare-fun e!3515219 () Bool)

(assert (=> d!1802860 (= (matchZipper!1851 (derivationStepZipper!1796 lt!2277143 (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))) e!3515219)))

(declare-fun b!5715960 () Bool)

(assert (=> b!5715960 (= e!3515219 (nullableZipper!1663 (derivationStepZipper!1796 lt!2277143 (head!12105 (t!376758 s!2326)))))))

(declare-fun b!5715961 () Bool)

(assert (=> b!5715961 (= e!3515219 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 lt!2277143 (head!12105 (t!376758 s!2326))) (head!12105 (tail!11200 (t!376758 s!2326)))) (tail!11200 (tail!11200 (t!376758 s!2326)))))))

(assert (= (and d!1802860 c!1007658) b!5715960))

(assert (= (and d!1802860 (not c!1007658)) b!5715961))

(assert (=> d!1802860 m!6668874))

(assert (=> d!1802860 m!6669426))

(assert (=> b!5715960 m!6668872))

(declare-fun m!6669500 () Bool)

(assert (=> b!5715960 m!6669500))

(assert (=> b!5715961 m!6668874))

(assert (=> b!5715961 m!6669430))

(assert (=> b!5715961 m!6668872))

(assert (=> b!5715961 m!6669430))

(declare-fun m!6669502 () Bool)

(assert (=> b!5715961 m!6669502))

(assert (=> b!5715961 m!6668874))

(assert (=> b!5715961 m!6669434))

(assert (=> b!5715961 m!6669502))

(assert (=> b!5715961 m!6669434))

(declare-fun m!6669504 () Bool)

(assert (=> b!5715961 m!6669504))

(assert (=> b!5715323 d!1802860))

(declare-fun bs!1335294 () Bool)

(declare-fun d!1802862 () Bool)

(assert (= bs!1335294 (and d!1802862 b!5714534)))

(declare-fun lambda!308803 () Int)

(assert (=> bs!1335294 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308803 lambda!308681))))

(declare-fun bs!1335295 () Bool)

(assert (= bs!1335295 (and d!1802862 d!1802600)))

(assert (=> bs!1335295 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308803 lambda!308755))))

(declare-fun bs!1335296 () Bool)

(assert (= bs!1335296 (and d!1802862 d!1802740)))

(assert (=> bs!1335296 (= (= (head!12105 (t!376758 s!2326)) (head!12105 lt!2277105)) (= lambda!308803 lambda!308788))))

(declare-fun bs!1335297 () Bool)

(assert (= bs!1335297 (and d!1802862 d!1802816)))

(assert (=> bs!1335297 (= lambda!308803 lambda!308800)))

(assert (=> d!1802862 true))

(assert (=> d!1802862 (= (derivationStepZipper!1796 lt!2277143 (head!12105 (t!376758 s!2326))) (flatMap!1326 lt!2277143 lambda!308803))))

(declare-fun bs!1335298 () Bool)

(assert (= bs!1335298 d!1802862))

(declare-fun m!6669506 () Bool)

(assert (=> bs!1335298 m!6669506))

(assert (=> b!5715323 d!1802862))

(assert (=> b!5715323 d!1802818))

(assert (=> b!5715323 d!1802820))

(assert (=> bs!1335204 d!1802496))

(assert (=> d!1802696 d!1802356))

(assert (=> d!1802696 d!1802706))

(declare-fun d!1802864 () Bool)

(assert (=> d!1802864 (= (matchR!7898 lt!2277097 (_1!36113 lt!2277139)) (matchRSpec!2816 lt!2277097 (_1!36113 lt!2277139)))))

(assert (=> d!1802864 true))

(declare-fun _$88!4004 () Unit!156384)

(assert (=> d!1802864 (= (choose!43213 lt!2277097 (_1!36113 lt!2277139)) _$88!4004)))

(declare-fun bs!1335299 () Bool)

(assert (= bs!1335299 d!1802864))

(assert (=> bs!1335299 m!6668042))

(assert (=> bs!1335299 m!6668052))

(assert (=> d!1802696 d!1802864))

(assert (=> d!1802696 d!1802734))

(declare-fun bs!1335300 () Bool)

(declare-fun d!1802866 () Bool)

(assert (= bs!1335300 (and d!1802866 d!1802788)))

(declare-fun lambda!308804 () Int)

(assert (=> bs!1335300 (= lambda!308804 lambda!308797)))

(assert (=> d!1802866 (= (nullableZipper!1663 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true)) (exists!2222 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 lt!2277136 lt!2277109)) true) lambda!308804))))

(declare-fun bs!1335301 () Bool)

(assert (= bs!1335301 d!1802866))

(assert (=> bs!1335301 m!6667936))

(declare-fun m!6669508 () Bool)

(assert (=> bs!1335301 m!6669508))

(assert (=> b!5715470 d!1802866))

(declare-fun d!1802868 () Bool)

(declare-fun lt!2277370 () Int)

(assert (=> d!1802868 (>= lt!2277370 0)))

(declare-fun e!3515222 () Int)

(assert (=> d!1802868 (= lt!2277370 e!3515222)))

(declare-fun c!1007661 () Bool)

(assert (=> d!1802868 (= c!1007661 ((_ is Nil!63314) lt!2277279))))

(assert (=> d!1802868 (= (size!40024 lt!2277279) lt!2277370)))

(declare-fun b!5715966 () Bool)

(assert (=> b!5715966 (= e!3515222 0)))

(declare-fun b!5715967 () Bool)

(assert (=> b!5715967 (= e!3515222 (+ 1 (size!40024 (t!376758 lt!2277279))))))

(assert (= (and d!1802868 c!1007661) b!5715966))

(assert (= (and d!1802868 (not c!1007661)) b!5715967))

(declare-fun m!6669510 () Bool)

(assert (=> b!5715967 m!6669510))

(assert (=> b!5715203 d!1802868))

(declare-fun d!1802870 () Bool)

(declare-fun lt!2277371 () Int)

(assert (=> d!1802870 (>= lt!2277371 0)))

(declare-fun e!3515223 () Int)

(assert (=> d!1802870 (= lt!2277371 e!3515223)))

(declare-fun c!1007662 () Bool)

(assert (=> d!1802870 (= c!1007662 ((_ is Nil!63314) (_1!36113 lt!2277144)))))

(assert (=> d!1802870 (= (size!40024 (_1!36113 lt!2277144)) lt!2277371)))

(declare-fun b!5715968 () Bool)

(assert (=> b!5715968 (= e!3515223 0)))

(declare-fun b!5715969 () Bool)

(assert (=> b!5715969 (= e!3515223 (+ 1 (size!40024 (t!376758 (_1!36113 lt!2277144)))))))

(assert (= (and d!1802870 c!1007662) b!5715968))

(assert (= (and d!1802870 (not c!1007662)) b!5715969))

(declare-fun m!6669512 () Bool)

(assert (=> b!5715969 m!6669512))

(assert (=> b!5715203 d!1802870))

(declare-fun d!1802872 () Bool)

(declare-fun lt!2277372 () Int)

(assert (=> d!1802872 (>= lt!2277372 0)))

(declare-fun e!3515224 () Int)

(assert (=> d!1802872 (= lt!2277372 e!3515224)))

(declare-fun c!1007663 () Bool)

(assert (=> d!1802872 (= c!1007663 ((_ is Nil!63314) lt!2277140))))

(assert (=> d!1802872 (= (size!40024 lt!2277140) lt!2277372)))

(declare-fun b!5715970 () Bool)

(assert (=> b!5715970 (= e!3515224 0)))

(declare-fun b!5715971 () Bool)

(assert (=> b!5715971 (= e!3515224 (+ 1 (size!40024 (t!376758 lt!2277140))))))

(assert (= (and d!1802872 c!1007663) b!5715970))

(assert (= (and d!1802872 (not c!1007663)) b!5715971))

(declare-fun m!6669514 () Bool)

(assert (=> b!5715971 m!6669514))

(assert (=> b!5715203 d!1802872))

(declare-fun b!5715972 () Bool)

(declare-fun res!2413500 () Bool)

(declare-fun e!3515230 () Bool)

(assert (=> b!5715972 (=> (not res!2413500) (not e!3515230))))

(assert (=> b!5715972 (= res!2413500 (isEmpty!35186 (tail!11200 s!2326)))))

(declare-fun b!5715973 () Bool)

(declare-fun res!2413503 () Bool)

(assert (=> b!5715973 (=> (not res!2413503) (not e!3515230))))

(declare-fun call!436334 () Bool)

(assert (=> b!5715973 (= res!2413503 (not call!436334))))

(declare-fun b!5715974 () Bool)

(declare-fun res!2413505 () Bool)

(declare-fun e!3515227 () Bool)

(assert (=> b!5715974 (=> res!2413505 e!3515227)))

(assert (=> b!5715974 (= res!2413505 e!3515230)))

(declare-fun res!2413504 () Bool)

(assert (=> b!5715974 (=> (not res!2413504) (not e!3515230))))

(declare-fun lt!2277373 () Bool)

(assert (=> b!5715974 (= res!2413504 lt!2277373)))

(declare-fun d!1802874 () Bool)

(declare-fun e!3515229 () Bool)

(assert (=> d!1802874 e!3515229))

(declare-fun c!1007666 () Bool)

(assert (=> d!1802874 (= c!1007666 ((_ is EmptyExpr!15713) (regTwo!31938 r!7292)))))

(declare-fun e!3515228 () Bool)

(assert (=> d!1802874 (= lt!2277373 e!3515228)))

(declare-fun c!1007665 () Bool)

(assert (=> d!1802874 (= c!1007665 (isEmpty!35186 s!2326))))

(assert (=> d!1802874 (validRegex!7449 (regTwo!31938 r!7292))))

(assert (=> d!1802874 (= (matchR!7898 (regTwo!31938 r!7292) s!2326) lt!2277373)))

(declare-fun b!5715975 () Bool)

(declare-fun e!3515231 () Bool)

(declare-fun e!3515226 () Bool)

(assert (=> b!5715975 (= e!3515231 e!3515226)))

(declare-fun res!2413506 () Bool)

(assert (=> b!5715975 (=> res!2413506 e!3515226)))

(assert (=> b!5715975 (= res!2413506 call!436334)))

(declare-fun b!5715976 () Bool)

(assert (=> b!5715976 (= e!3515228 (nullable!5745 (regTwo!31938 r!7292)))))

(declare-fun b!5715977 () Bool)

(declare-fun res!2413502 () Bool)

(assert (=> b!5715977 (=> res!2413502 e!3515227)))

(assert (=> b!5715977 (= res!2413502 (not ((_ is ElementMatch!15713) (regTwo!31938 r!7292))))))

(declare-fun e!3515225 () Bool)

(assert (=> b!5715977 (= e!3515225 e!3515227)))

(declare-fun b!5715978 () Bool)

(assert (=> b!5715978 (= e!3515228 (matchR!7898 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 s!2326)) (tail!11200 s!2326)))))

(declare-fun b!5715979 () Bool)

(declare-fun res!2413499 () Bool)

(assert (=> b!5715979 (=> res!2413499 e!3515226)))

(assert (=> b!5715979 (= res!2413499 (not (isEmpty!35186 (tail!11200 s!2326))))))

(declare-fun bm!436329 () Bool)

(assert (=> bm!436329 (= call!436334 (isEmpty!35186 s!2326))))

(declare-fun b!5715980 () Bool)

(assert (=> b!5715980 (= e!3515229 e!3515225)))

(declare-fun c!1007664 () Bool)

(assert (=> b!5715980 (= c!1007664 ((_ is EmptyLang!15713) (regTwo!31938 r!7292)))))

(declare-fun b!5715981 () Bool)

(assert (=> b!5715981 (= e!3515227 e!3515231)))

(declare-fun res!2413501 () Bool)

(assert (=> b!5715981 (=> (not res!2413501) (not e!3515231))))

(assert (=> b!5715981 (= res!2413501 (not lt!2277373))))

(declare-fun b!5715982 () Bool)

(assert (=> b!5715982 (= e!3515225 (not lt!2277373))))

(declare-fun b!5715983 () Bool)

(assert (=> b!5715983 (= e!3515230 (= (head!12105 s!2326) (c!1007275 (regTwo!31938 r!7292))))))

(declare-fun b!5715984 () Bool)

(assert (=> b!5715984 (= e!3515229 (= lt!2277373 call!436334))))

(declare-fun b!5715985 () Bool)

(assert (=> b!5715985 (= e!3515226 (not (= (head!12105 s!2326) (c!1007275 (regTwo!31938 r!7292)))))))

(assert (= (and d!1802874 c!1007665) b!5715976))

(assert (= (and d!1802874 (not c!1007665)) b!5715978))

(assert (= (and d!1802874 c!1007666) b!5715984))

(assert (= (and d!1802874 (not c!1007666)) b!5715980))

(assert (= (and b!5715980 c!1007664) b!5715982))

(assert (= (and b!5715980 (not c!1007664)) b!5715977))

(assert (= (and b!5715977 (not res!2413502)) b!5715974))

(assert (= (and b!5715974 res!2413504) b!5715973))

(assert (= (and b!5715973 res!2413503) b!5715972))

(assert (= (and b!5715972 res!2413500) b!5715983))

(assert (= (and b!5715974 (not res!2413505)) b!5715981))

(assert (= (and b!5715981 res!2413501) b!5715975))

(assert (= (and b!5715975 (not res!2413506)) b!5715979))

(assert (= (and b!5715979 (not res!2413499)) b!5715985))

(assert (= (or b!5715984 b!5715973 b!5715975) bm!436329))

(assert (=> b!5715976 m!6668278))

(assert (=> d!1802874 m!6668190))

(assert (=> d!1802874 m!6668284))

(assert (=> b!5715985 m!6668202))

(assert (=> b!5715978 m!6668202))

(assert (=> b!5715978 m!6668202))

(declare-fun m!6669516 () Bool)

(assert (=> b!5715978 m!6669516))

(assert (=> b!5715978 m!6668206))

(assert (=> b!5715978 m!6669516))

(assert (=> b!5715978 m!6668206))

(declare-fun m!6669518 () Bool)

(assert (=> b!5715978 m!6669518))

(assert (=> b!5715972 m!6668206))

(assert (=> b!5715972 m!6668206))

(assert (=> b!5715972 m!6668210))

(assert (=> b!5715979 m!6668206))

(assert (=> b!5715979 m!6668206))

(assert (=> b!5715979 m!6668210))

(assert (=> b!5715983 m!6668202))

(assert (=> bm!436329 m!6668190))

(assert (=> b!5715498 d!1802874))

(assert (=> d!1802688 d!1802792))

(declare-fun d!1802876 () Bool)

(assert (=> d!1802876 (= (isEmpty!35186 lt!2277105) ((_ is Nil!63314) lt!2277105))))

(assert (=> bm!436264 d!1802876))

(assert (=> bm!436176 d!1802852))

(assert (=> bs!1335201 d!1802592))

(declare-fun d!1802878 () Bool)

(assert (=> d!1802878 (= (isEmpty!35186 lt!2277140) ((_ is Nil!63314) lt!2277140))))

(assert (=> d!1802626 d!1802878))

(declare-fun bm!436330 () Bool)

(declare-fun call!436337 () Bool)

(declare-fun call!436336 () Bool)

(assert (=> bm!436330 (= call!436337 call!436336)))

(declare-fun b!5715986 () Bool)

(declare-fun res!2413508 () Bool)

(declare-fun e!3515237 () Bool)

(assert (=> b!5715986 (=> res!2413508 e!3515237)))

(assert (=> b!5715986 (= res!2413508 (not ((_ is Concat!24558) lt!2277138)))))

(declare-fun e!3515238 () Bool)

(assert (=> b!5715986 (= e!3515238 e!3515237)))

(declare-fun b!5715987 () Bool)

(declare-fun e!3515232 () Bool)

(assert (=> b!5715987 (= e!3515237 e!3515232)))

(declare-fun res!2413511 () Bool)

(assert (=> b!5715987 (=> (not res!2413511) (not e!3515232))))

(declare-fun call!436335 () Bool)

(assert (=> b!5715987 (= res!2413511 call!436335)))

(declare-fun b!5715988 () Bool)

(declare-fun res!2413507 () Bool)

(declare-fun e!3515236 () Bool)

(assert (=> b!5715988 (=> (not res!2413507) (not e!3515236))))

(assert (=> b!5715988 (= res!2413507 call!436335)))

(assert (=> b!5715988 (= e!3515238 e!3515236)))

(declare-fun b!5715989 () Bool)

(declare-fun e!3515235 () Bool)

(assert (=> b!5715989 (= e!3515235 call!436336)))

(declare-fun b!5715990 () Bool)

(assert (=> b!5715990 (= e!3515232 call!436337)))

(declare-fun b!5715991 () Bool)

(assert (=> b!5715991 (= e!3515236 call!436337)))

(declare-fun d!1802880 () Bool)

(declare-fun res!2413510 () Bool)

(declare-fun e!3515233 () Bool)

(assert (=> d!1802880 (=> res!2413510 e!3515233)))

(assert (=> d!1802880 (= res!2413510 ((_ is ElementMatch!15713) lt!2277138))))

(assert (=> d!1802880 (= (validRegex!7449 lt!2277138) e!3515233)))

(declare-fun b!5715992 () Bool)

(declare-fun e!3515234 () Bool)

(assert (=> b!5715992 (= e!3515234 e!3515238)))

(declare-fun c!1007668 () Bool)

(assert (=> b!5715992 (= c!1007668 ((_ is Union!15713) lt!2277138))))

(declare-fun c!1007667 () Bool)

(declare-fun bm!436331 () Bool)

(assert (=> bm!436331 (= call!436336 (validRegex!7449 (ite c!1007667 (reg!16042 lt!2277138) (ite c!1007668 (regTwo!31939 lt!2277138) (regTwo!31938 lt!2277138)))))))

(declare-fun bm!436332 () Bool)

(assert (=> bm!436332 (= call!436335 (validRegex!7449 (ite c!1007668 (regOne!31939 lt!2277138) (regOne!31938 lt!2277138))))))

(declare-fun b!5715993 () Bool)

(assert (=> b!5715993 (= e!3515234 e!3515235)))

(declare-fun res!2413509 () Bool)

(assert (=> b!5715993 (= res!2413509 (not (nullable!5745 (reg!16042 lt!2277138))))))

(assert (=> b!5715993 (=> (not res!2413509) (not e!3515235))))

(declare-fun b!5715994 () Bool)

(assert (=> b!5715994 (= e!3515233 e!3515234)))

(assert (=> b!5715994 (= c!1007667 ((_ is Star!15713) lt!2277138))))

(assert (= (and d!1802880 (not res!2413510)) b!5715994))

(assert (= (and b!5715994 c!1007667) b!5715993))

(assert (= (and b!5715994 (not c!1007667)) b!5715992))

(assert (= (and b!5715993 res!2413509) b!5715989))

(assert (= (and b!5715992 c!1007668) b!5715988))

(assert (= (and b!5715992 (not c!1007668)) b!5715986))

(assert (= (and b!5715988 res!2413507) b!5715991))

(assert (= (and b!5715986 (not res!2413508)) b!5715987))

(assert (= (and b!5715987 res!2413511) b!5715990))

(assert (= (or b!5715991 b!5715990) bm!436330))

(assert (= (or b!5715988 b!5715987) bm!436332))

(assert (= (or b!5715989 bm!436330) bm!436331))

(declare-fun m!6669520 () Bool)

(assert (=> bm!436331 m!6669520))

(declare-fun m!6669522 () Bool)

(assert (=> bm!436332 m!6669522))

(declare-fun m!6669524 () Bool)

(assert (=> b!5715993 m!6669524))

(assert (=> d!1802626 d!1802880))

(assert (=> b!5715536 d!1802760))

(assert (=> bm!436277 d!1802558))

(declare-fun bs!1335302 () Bool)

(declare-fun d!1802882 () Bool)

(assert (= bs!1335302 (and d!1802882 d!1802788)))

(declare-fun lambda!308805 () Int)

(assert (=> bs!1335302 (= lambda!308805 lambda!308797)))

(declare-fun bs!1335303 () Bool)

(assert (= bs!1335303 (and d!1802882 d!1802866)))

(assert (=> bs!1335303 (= lambda!308805 lambda!308804)))

(assert (=> d!1802882 (= (nullableZipper!1663 lt!2277113) (exists!2222 lt!2277113 lambda!308805))))

(declare-fun bs!1335304 () Bool)

(assert (= bs!1335304 d!1802882))

(declare-fun m!6669526 () Bool)

(assert (=> bs!1335304 m!6669526))

(assert (=> b!5715615 d!1802882))

(declare-fun d!1802884 () Bool)

(assert (=> d!1802884 (= (isEmpty!35186 (_2!36113 lt!2277144)) ((_ is Nil!63314) (_2!36113 lt!2277144)))))

(assert (=> d!1802676 d!1802884))

(assert (=> d!1802676 d!1802734))

(declare-fun d!1802886 () Bool)

(assert (=> d!1802886 (= (isEmpty!35190 lt!2277112) (not ((_ is Some!15721) lt!2277112)))))

(assert (=> d!1802652 d!1802886))

(declare-fun b!5715996 () Bool)

(declare-fun e!3515241 () Bool)

(assert (=> b!5715996 (= e!3515241 (nullable!5745 (regOne!31938 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))))))))

(declare-fun bm!436333 () Bool)

(declare-fun call!436341 () List!63439)

(declare-fun call!436338 () List!63439)

(assert (=> bm!436333 (= call!436341 call!436338)))

(declare-fun b!5715997 () Bool)

(declare-fun e!3515239 () (InoxSet Context!10194))

(declare-fun call!436340 () (InoxSet Context!10194))

(assert (=> b!5715997 (= e!3515239 call!436340)))

(declare-fun b!5715998 () Bool)

(declare-fun e!3515244 () (InoxSet Context!10194))

(assert (=> b!5715998 (= e!3515244 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5715999 () Bool)

(declare-fun e!3515243 () (InoxSet Context!10194))

(declare-fun call!436339 () (InoxSet Context!10194))

(declare-fun call!436343 () (InoxSet Context!10194))

(assert (=> b!5715999 (= e!3515243 ((_ map or) call!436339 call!436343))))

(declare-fun bm!436334 () Bool)

(declare-fun call!436342 () (InoxSet Context!10194))

(assert (=> bm!436334 (= call!436342 call!436343)))

(declare-fun b!5716000 () Bool)

(declare-fun c!1007670 () Bool)

(assert (=> b!5716000 (= c!1007670 ((_ is Star!15713) (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))

(assert (=> b!5716000 (= e!3515239 e!3515244)))

(declare-fun bm!436335 () Bool)

(declare-fun c!1007669 () Bool)

(assert (=> bm!436335 (= call!436339 (derivationStepZipperDown!1055 (ite c!1007669 (regOne!31939 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))) (regOne!31938 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))))) (ite c!1007669 (ite c!1007442 lt!2277104 (Context!10195 call!436228)) (Context!10195 call!436338)) (h!69762 s!2326)))))

(declare-fun bm!436336 () Bool)

(declare-fun c!1007671 () Bool)

(declare-fun c!1007672 () Bool)

(assert (=> bm!436336 (= call!436343 (derivationStepZipperDown!1055 (ite c!1007669 (regTwo!31939 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))) (ite c!1007671 (regTwo!31938 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))) (ite c!1007672 (regOne!31938 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))) (reg!16042 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))))))) (ite (or c!1007669 c!1007671) (ite c!1007442 lt!2277104 (Context!10195 call!436228)) (Context!10195 call!436341)) (h!69762 s!2326)))))

(declare-fun bm!436337 () Bool)

(assert (=> bm!436337 (= call!436340 call!436342)))

(declare-fun b!5716001 () Bool)

(declare-fun e!3515240 () (InoxSet Context!10194))

(assert (=> b!5716001 (= e!3515240 ((_ map or) call!436339 call!436342))))

(declare-fun b!5716002 () Bool)

(assert (=> b!5716002 (= e!3515240 e!3515239)))

(assert (=> b!5716002 (= c!1007672 ((_ is Concat!24558) (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))

(declare-fun d!1802888 () Bool)

(declare-fun c!1007673 () Bool)

(assert (=> d!1802888 (= c!1007673 (and ((_ is ElementMatch!15713) (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))) (= (c!1007275 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))) (h!69762 s!2326))))))

(declare-fun e!3515242 () (InoxSet Context!10194))

(assert (=> d!1802888 (= (derivationStepZipperDown!1055 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))) (ite c!1007442 lt!2277104 (Context!10195 call!436228)) (h!69762 s!2326)) e!3515242)))

(declare-fun b!5715995 () Bool)

(assert (=> b!5715995 (= e!3515242 e!3515243)))

(assert (=> b!5715995 (= c!1007669 ((_ is Union!15713) (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))

(declare-fun b!5716003 () Bool)

(assert (=> b!5716003 (= e!3515242 (store ((as const (Array Context!10194 Bool)) false) (ite c!1007442 lt!2277104 (Context!10195 call!436228)) true))))

(declare-fun b!5716004 () Bool)

(assert (=> b!5716004 (= c!1007671 e!3515241)))

(declare-fun res!2413512 () Bool)

(assert (=> b!5716004 (=> (not res!2413512) (not e!3515241))))

(assert (=> b!5716004 (= res!2413512 ((_ is Concat!24558) (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))

(assert (=> b!5716004 (= e!3515243 e!3515240)))

(declare-fun bm!436338 () Bool)

(assert (=> bm!436338 (= call!436338 ($colon$colon!1729 (exprs!5597 (ite c!1007442 lt!2277104 (Context!10195 call!436228))) (ite (or c!1007671 c!1007672) (regTwo!31938 (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))) (ite c!1007442 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))))))))

(declare-fun b!5716005 () Bool)

(assert (=> b!5716005 (= e!3515244 call!436340)))

(assert (= (and d!1802888 c!1007673) b!5716003))

(assert (= (and d!1802888 (not c!1007673)) b!5715995))

(assert (= (and b!5715995 c!1007669) b!5715999))

(assert (= (and b!5715995 (not c!1007669)) b!5716004))

(assert (= (and b!5716004 res!2413512) b!5715996))

(assert (= (and b!5716004 c!1007671) b!5716001))

(assert (= (and b!5716004 (not c!1007671)) b!5716002))

(assert (= (and b!5716002 c!1007672) b!5715997))

(assert (= (and b!5716002 (not c!1007672)) b!5716000))

(assert (= (and b!5716000 c!1007670) b!5716005))

(assert (= (and b!5716000 (not c!1007670)) b!5715998))

(assert (= (or b!5715997 b!5716005) bm!436333))

(assert (= (or b!5715997 b!5716005) bm!436337))

(assert (= (or b!5716001 bm!436333) bm!436338))

(assert (= (or b!5716001 bm!436337) bm!436334))

(assert (= (or b!5715999 bm!436334) bm!436336))

(assert (= (or b!5715999 b!5716001) bm!436335))

(declare-fun m!6669528 () Bool)

(assert (=> b!5715996 m!6669528))

(declare-fun m!6669530 () Bool)

(assert (=> bm!436336 m!6669530))

(declare-fun m!6669532 () Bool)

(assert (=> b!5716003 m!6669532))

(declare-fun m!6669534 () Bool)

(assert (=> bm!436338 m!6669534))

(declare-fun m!6669536 () Bool)

(assert (=> bm!436335 m!6669536))

(assert (=> bm!436225 d!1802888))

(declare-fun d!1802890 () Bool)

(declare-fun c!1007674 () Bool)

(assert (=> d!1802890 (= c!1007674 (isEmpty!35186 (tail!11200 (t!376758 s!2326))))))

(declare-fun e!3515245 () Bool)

(assert (=> d!1802890 (= (matchZipper!1851 (derivationStepZipper!1796 lt!2277110 (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))) e!3515245)))

(declare-fun b!5716006 () Bool)

(assert (=> b!5716006 (= e!3515245 (nullableZipper!1663 (derivationStepZipper!1796 lt!2277110 (head!12105 (t!376758 s!2326)))))))

(declare-fun b!5716007 () Bool)

(assert (=> b!5716007 (= e!3515245 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 lt!2277110 (head!12105 (t!376758 s!2326))) (head!12105 (tail!11200 (t!376758 s!2326)))) (tail!11200 (tail!11200 (t!376758 s!2326)))))))

(assert (= (and d!1802890 c!1007674) b!5716006))

(assert (= (and d!1802890 (not c!1007674)) b!5716007))

(assert (=> d!1802890 m!6668874))

(assert (=> d!1802890 m!6669426))

(assert (=> b!5716006 m!6669046))

(declare-fun m!6669538 () Bool)

(assert (=> b!5716006 m!6669538))

(assert (=> b!5716007 m!6668874))

(assert (=> b!5716007 m!6669430))

(assert (=> b!5716007 m!6669046))

(assert (=> b!5716007 m!6669430))

(declare-fun m!6669540 () Bool)

(assert (=> b!5716007 m!6669540))

(assert (=> b!5716007 m!6668874))

(assert (=> b!5716007 m!6669434))

(assert (=> b!5716007 m!6669540))

(assert (=> b!5716007 m!6669434))

(declare-fun m!6669542 () Bool)

(assert (=> b!5716007 m!6669542))

(assert (=> b!5715493 d!1802890))

(declare-fun bs!1335305 () Bool)

(declare-fun d!1802892 () Bool)

(assert (= bs!1335305 (and d!1802892 b!5714534)))

(declare-fun lambda!308806 () Int)

(assert (=> bs!1335305 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308806 lambda!308681))))

(declare-fun bs!1335306 () Bool)

(assert (= bs!1335306 (and d!1802892 d!1802600)))

(assert (=> bs!1335306 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308806 lambda!308755))))

(declare-fun bs!1335307 () Bool)

(assert (= bs!1335307 (and d!1802892 d!1802862)))

(assert (=> bs!1335307 (= lambda!308806 lambda!308803)))

(declare-fun bs!1335308 () Bool)

(assert (= bs!1335308 (and d!1802892 d!1802740)))

(assert (=> bs!1335308 (= (= (head!12105 (t!376758 s!2326)) (head!12105 lt!2277105)) (= lambda!308806 lambda!308788))))

(declare-fun bs!1335309 () Bool)

(assert (= bs!1335309 (and d!1802892 d!1802816)))

(assert (=> bs!1335309 (= lambda!308806 lambda!308800)))

(assert (=> d!1802892 true))

(assert (=> d!1802892 (= (derivationStepZipper!1796 lt!2277110 (head!12105 (t!376758 s!2326))) (flatMap!1326 lt!2277110 lambda!308806))))

(declare-fun bs!1335310 () Bool)

(assert (= bs!1335310 d!1802892))

(declare-fun m!6669544 () Bool)

(assert (=> bs!1335310 m!6669544))

(assert (=> b!5715493 d!1802892))

(assert (=> b!5715493 d!1802818))

(assert (=> b!5715493 d!1802820))

(assert (=> b!5714848 d!1802746))

(assert (=> b!5715485 d!1802756))

(assert (=> b!5715485 d!1802758))

(declare-fun d!1802894 () Bool)

(assert (=> d!1802894 (= (nullable!5745 r!7292) (nullableFct!1808 r!7292))))

(declare-fun bs!1335311 () Bool)

(assert (= bs!1335311 d!1802894))

(declare-fun m!6669546 () Bool)

(assert (=> bs!1335311 m!6669546))

(assert (=> b!5715522 d!1802894))

(declare-fun d!1802896 () Bool)

(declare-fun c!1007675 () Bool)

(assert (=> d!1802896 (= c!1007675 (isEmpty!35186 (tail!11200 (_1!36113 lt!2277144))))))

(declare-fun e!3515246 () Bool)

(assert (=> d!1802896 (= (matchZipper!1851 (derivationStepZipper!1796 lt!2277108 (head!12105 (_1!36113 lt!2277144))) (tail!11200 (_1!36113 lt!2277144))) e!3515246)))

(declare-fun b!5716008 () Bool)

(assert (=> b!5716008 (= e!3515246 (nullableZipper!1663 (derivationStepZipper!1796 lt!2277108 (head!12105 (_1!36113 lt!2277144)))))))

(declare-fun b!5716009 () Bool)

(assert (=> b!5716009 (= e!3515246 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 lt!2277108 (head!12105 (_1!36113 lt!2277144))) (head!12105 (tail!11200 (_1!36113 lt!2277144)))) (tail!11200 (tail!11200 (_1!36113 lt!2277144)))))))

(assert (= (and d!1802896 c!1007675) b!5716008))

(assert (= (and d!1802896 (not c!1007675)) b!5716009))

(assert (=> d!1802896 m!6669006))

(assert (=> d!1802896 m!6669260))

(assert (=> b!5716008 m!6669004))

(declare-fun m!6669548 () Bool)

(assert (=> b!5716008 m!6669548))

(assert (=> b!5716009 m!6669006))

(declare-fun m!6669550 () Bool)

(assert (=> b!5716009 m!6669550))

(assert (=> b!5716009 m!6669004))

(assert (=> b!5716009 m!6669550))

(declare-fun m!6669552 () Bool)

(assert (=> b!5716009 m!6669552))

(assert (=> b!5716009 m!6669006))

(declare-fun m!6669554 () Bool)

(assert (=> b!5716009 m!6669554))

(assert (=> b!5716009 m!6669552))

(assert (=> b!5716009 m!6669554))

(declare-fun m!6669556 () Bool)

(assert (=> b!5716009 m!6669556))

(assert (=> b!5715469 d!1802896))

(declare-fun bs!1335312 () Bool)

(declare-fun d!1802898 () Bool)

(assert (= bs!1335312 (and d!1802898 b!5714534)))

(declare-fun lambda!308807 () Int)

(assert (=> bs!1335312 (= (= (head!12105 (_1!36113 lt!2277144)) (h!69762 s!2326)) (= lambda!308807 lambda!308681))))

(declare-fun bs!1335313 () Bool)

(assert (= bs!1335313 (and d!1802898 d!1802600)))

(assert (=> bs!1335313 (= (= (head!12105 (_1!36113 lt!2277144)) (h!69762 s!2326)) (= lambda!308807 lambda!308755))))

(declare-fun bs!1335314 () Bool)

(assert (= bs!1335314 (and d!1802898 d!1802862)))

(assert (=> bs!1335314 (= (= (head!12105 (_1!36113 lt!2277144)) (head!12105 (t!376758 s!2326))) (= lambda!308807 lambda!308803))))

(declare-fun bs!1335315 () Bool)

(assert (= bs!1335315 (and d!1802898 d!1802740)))

(assert (=> bs!1335315 (= (= (head!12105 (_1!36113 lt!2277144)) (head!12105 lt!2277105)) (= lambda!308807 lambda!308788))))

(declare-fun bs!1335316 () Bool)

(assert (= bs!1335316 (and d!1802898 d!1802816)))

(assert (=> bs!1335316 (= (= (head!12105 (_1!36113 lt!2277144)) (head!12105 (t!376758 s!2326))) (= lambda!308807 lambda!308800))))

(declare-fun bs!1335317 () Bool)

(assert (= bs!1335317 (and d!1802898 d!1802892)))

(assert (=> bs!1335317 (= (= (head!12105 (_1!36113 lt!2277144)) (head!12105 (t!376758 s!2326))) (= lambda!308807 lambda!308806))))

(assert (=> d!1802898 true))

(assert (=> d!1802898 (= (derivationStepZipper!1796 lt!2277108 (head!12105 (_1!36113 lt!2277144))) (flatMap!1326 lt!2277108 lambda!308807))))

(declare-fun bs!1335318 () Bool)

(assert (= bs!1335318 d!1802898))

(declare-fun m!6669558 () Bool)

(assert (=> bs!1335318 m!6669558))

(assert (=> b!5715469 d!1802898))

(declare-fun d!1802900 () Bool)

(assert (=> d!1802900 (= (head!12105 (_1!36113 lt!2277144)) (h!69762 (_1!36113 lt!2277144)))))

(assert (=> b!5715469 d!1802900))

(declare-fun d!1802902 () Bool)

(assert (=> d!1802902 (= (tail!11200 (_1!36113 lt!2277144)) (t!376758 (_1!36113 lt!2277144)))))

(assert (=> b!5715469 d!1802902))

(declare-fun b!5716010 () Bool)

(declare-fun e!3515247 () List!63438)

(assert (=> b!5716010 (= e!3515247 (t!376758 s!2326))))

(declare-fun b!5716013 () Bool)

(declare-fun e!3515248 () Bool)

(declare-fun lt!2277374 () List!63438)

(assert (=> b!5716013 (= e!3515248 (or (not (= (t!376758 s!2326) Nil!63314)) (= lt!2277374 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)))))))

(declare-fun b!5716012 () Bool)

(declare-fun res!2413513 () Bool)

(assert (=> b!5716012 (=> (not res!2413513) (not e!3515248))))

(assert (=> b!5716012 (= res!2413513 (= (size!40024 lt!2277374) (+ (size!40024 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314))) (size!40024 (t!376758 s!2326)))))))

(declare-fun b!5716011 () Bool)

(assert (=> b!5716011 (= e!3515247 (Cons!63314 (h!69762 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314))) (++!13908 (t!376758 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314))) (t!376758 s!2326))))))

(declare-fun d!1802904 () Bool)

(assert (=> d!1802904 e!3515248))

(declare-fun res!2413514 () Bool)

(assert (=> d!1802904 (=> (not res!2413514) (not e!3515248))))

(assert (=> d!1802904 (= res!2413514 (= (content!11499 lt!2277374) ((_ map or) (content!11499 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314))) (content!11499 (t!376758 s!2326)))))))

(assert (=> d!1802904 (= lt!2277374 e!3515247)))

(declare-fun c!1007676 () Bool)

(assert (=> d!1802904 (= c!1007676 ((_ is Nil!63314) (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314))))))

(assert (=> d!1802904 (= (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326)) lt!2277374)))

(assert (= (and d!1802904 c!1007676) b!5716010))

(assert (= (and d!1802904 (not c!1007676)) b!5716011))

(assert (= (and d!1802904 res!2413514) b!5716012))

(assert (= (and b!5716012 res!2413513) b!5716013))

(declare-fun m!6669560 () Bool)

(assert (=> b!5716012 m!6669560))

(assert (=> b!5716012 m!6668416))

(declare-fun m!6669562 () Bool)

(assert (=> b!5716012 m!6669562))

(declare-fun m!6669564 () Bool)

(assert (=> b!5716012 m!6669564))

(declare-fun m!6669566 () Bool)

(assert (=> b!5716011 m!6669566))

(declare-fun m!6669568 () Bool)

(assert (=> d!1802904 m!6669568))

(assert (=> d!1802904 m!6668416))

(declare-fun m!6669570 () Bool)

(assert (=> d!1802904 m!6669570))

(declare-fun m!6669572 () Bool)

(assert (=> d!1802904 m!6669572))

(assert (=> b!5715506 d!1802904))

(declare-fun b!5716014 () Bool)

(declare-fun e!3515249 () List!63438)

(assert (=> b!5716014 (= e!3515249 (Cons!63314 (h!69762 s!2326) Nil!63314))))

(declare-fun b!5716017 () Bool)

(declare-fun e!3515250 () Bool)

(declare-fun lt!2277375 () List!63438)

(assert (=> b!5716017 (= e!3515250 (or (not (= (Cons!63314 (h!69762 s!2326) Nil!63314) Nil!63314)) (= lt!2277375 Nil!63314)))))

(declare-fun b!5716016 () Bool)

(declare-fun res!2413515 () Bool)

(assert (=> b!5716016 (=> (not res!2413515) (not e!3515250))))

(assert (=> b!5716016 (= res!2413515 (= (size!40024 lt!2277375) (+ (size!40024 Nil!63314) (size!40024 (Cons!63314 (h!69762 s!2326) Nil!63314)))))))

(declare-fun b!5716015 () Bool)

(assert (=> b!5716015 (= e!3515249 (Cons!63314 (h!69762 Nil!63314) (++!13908 (t!376758 Nil!63314) (Cons!63314 (h!69762 s!2326) Nil!63314))))))

(declare-fun d!1802906 () Bool)

(assert (=> d!1802906 e!3515250))

(declare-fun res!2413516 () Bool)

(assert (=> d!1802906 (=> (not res!2413516) (not e!3515250))))

(assert (=> d!1802906 (= res!2413516 (= (content!11499 lt!2277375) ((_ map or) (content!11499 Nil!63314) (content!11499 (Cons!63314 (h!69762 s!2326) Nil!63314)))))))

(assert (=> d!1802906 (= lt!2277375 e!3515249)))

(declare-fun c!1007677 () Bool)

(assert (=> d!1802906 (= c!1007677 ((_ is Nil!63314) Nil!63314))))

(assert (=> d!1802906 (= (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) lt!2277375)))

(assert (= (and d!1802906 c!1007677) b!5716014))

(assert (= (and d!1802906 (not c!1007677)) b!5716015))

(assert (= (and d!1802906 res!2413516) b!5716016))

(assert (= (and b!5716016 res!2413515) b!5716017))

(declare-fun m!6669574 () Bool)

(assert (=> b!5716016 m!6669574))

(declare-fun m!6669576 () Bool)

(assert (=> b!5716016 m!6669576))

(declare-fun m!6669578 () Bool)

(assert (=> b!5716016 m!6669578))

(declare-fun m!6669580 () Bool)

(assert (=> b!5716015 m!6669580))

(declare-fun m!6669582 () Bool)

(assert (=> d!1802906 m!6669582))

(declare-fun m!6669584 () Bool)

(assert (=> d!1802906 m!6669584))

(declare-fun m!6669586 () Bool)

(assert (=> d!1802906 m!6669586))

(assert (=> b!5715506 d!1802906))

(declare-fun d!1802908 () Bool)

(assert (=> d!1802908 (= (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326)) s!2326)))

(declare-fun lt!2277378 () Unit!156384)

(declare-fun choose!43230 (List!63438 C!31696 List!63438 List!63438) Unit!156384)

(assert (=> d!1802908 (= lt!2277378 (choose!43230 Nil!63314 (h!69762 s!2326) (t!376758 s!2326) s!2326))))

(assert (=> d!1802908 (= (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) (t!376758 s!2326))) s!2326)))

(assert (=> d!1802908 (= (lemmaMoveElementToOtherListKeepsConcatEq!2066 Nil!63314 (h!69762 s!2326) (t!376758 s!2326) s!2326) lt!2277378)))

(declare-fun bs!1335319 () Bool)

(assert (= bs!1335319 d!1802908))

(assert (=> bs!1335319 m!6668416))

(assert (=> bs!1335319 m!6668416))

(assert (=> bs!1335319 m!6668418))

(declare-fun m!6669588 () Bool)

(assert (=> bs!1335319 m!6669588))

(declare-fun m!6669590 () Bool)

(assert (=> bs!1335319 m!6669590))

(assert (=> b!5715506 d!1802908))

(declare-fun d!1802910 () Bool)

(declare-fun e!3515255 () Bool)

(assert (=> d!1802910 e!3515255))

(declare-fun res!2413517 () Bool)

(assert (=> d!1802910 (=> res!2413517 e!3515255)))

(declare-fun e!3515251 () Bool)

(assert (=> d!1802910 (= res!2413517 e!3515251)))

(declare-fun res!2413520 () Bool)

(assert (=> d!1802910 (=> (not res!2413520) (not e!3515251))))

(declare-fun lt!2277381 () Option!15722)

(assert (=> d!1802910 (= res!2413520 (isDefined!12425 lt!2277381))))

(declare-fun e!3515253 () Option!15722)

(assert (=> d!1802910 (= lt!2277381 e!3515253)))

(declare-fun c!1007679 () Bool)

(declare-fun e!3515252 () Bool)

(assert (=> d!1802910 (= c!1007679 e!3515252)))

(declare-fun res!2413518 () Bool)

(assert (=> d!1802910 (=> (not res!2413518) (not e!3515252))))

(assert (=> d!1802910 (= res!2413518 (matchR!7898 lt!2277097 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314))))))

(assert (=> d!1802910 (validRegex!7449 lt!2277097)))

(assert (=> d!1802910 (= (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326) s!2326) lt!2277381)))

(declare-fun b!5716018 () Bool)

(assert (=> b!5716018 (= e!3515252 (matchR!7898 (regTwo!31938 r!7292) (t!376758 s!2326)))))

(declare-fun b!5716019 () Bool)

(assert (=> b!5716019 (= e!3515255 (not (isDefined!12425 lt!2277381)))))

(declare-fun b!5716020 () Bool)

(declare-fun e!3515254 () Option!15722)

(assert (=> b!5716020 (= e!3515254 None!15721)))

(declare-fun b!5716021 () Bool)

(declare-fun res!2413521 () Bool)

(assert (=> b!5716021 (=> (not res!2413521) (not e!3515251))))

(assert (=> b!5716021 (= res!2413521 (matchR!7898 lt!2277097 (_1!36113 (get!21829 lt!2277381))))))

(declare-fun b!5716022 () Bool)

(assert (=> b!5716022 (= e!3515253 e!3515254)))

(declare-fun c!1007678 () Bool)

(assert (=> b!5716022 (= c!1007678 ((_ is Nil!63314) (t!376758 s!2326)))))

(declare-fun b!5716023 () Bool)

(assert (=> b!5716023 (= e!3515251 (= (++!13908 (_1!36113 (get!21829 lt!2277381)) (_2!36113 (get!21829 lt!2277381))) s!2326))))

(declare-fun b!5716024 () Bool)

(assert (=> b!5716024 (= e!3515253 (Some!15721 (tuple2!65621 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326))))))

(declare-fun b!5716025 () Bool)

(declare-fun res!2413519 () Bool)

(assert (=> b!5716025 (=> (not res!2413519) (not e!3515251))))

(assert (=> b!5716025 (= res!2413519 (matchR!7898 (regTwo!31938 r!7292) (_2!36113 (get!21829 lt!2277381))))))

(declare-fun b!5716026 () Bool)

(declare-fun lt!2277380 () Unit!156384)

(declare-fun lt!2277379 () Unit!156384)

(assert (=> b!5716026 (= lt!2277380 lt!2277379)))

(assert (=> b!5716026 (= (++!13908 (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (Cons!63314 (h!69762 (t!376758 s!2326)) Nil!63314)) (t!376758 (t!376758 s!2326))) s!2326)))

(assert (=> b!5716026 (= lt!2277379 (lemmaMoveElementToOtherListKeepsConcatEq!2066 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (h!69762 (t!376758 s!2326)) (t!376758 (t!376758 s!2326)) s!2326))))

(assert (=> b!5716026 (= e!3515254 (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (Cons!63314 (h!69762 (t!376758 s!2326)) Nil!63314)) (t!376758 (t!376758 s!2326)) s!2326))))

(assert (= (and d!1802910 res!2413518) b!5716018))

(assert (= (and d!1802910 c!1007679) b!5716024))

(assert (= (and d!1802910 (not c!1007679)) b!5716022))

(assert (= (and b!5716022 c!1007678) b!5716020))

(assert (= (and b!5716022 (not c!1007678)) b!5716026))

(assert (= (and d!1802910 res!2413520) b!5716021))

(assert (= (and b!5716021 res!2413521) b!5716025))

(assert (= (and b!5716025 res!2413519) b!5716023))

(assert (= (and d!1802910 (not res!2413517)) b!5716019))

(declare-fun m!6669592 () Bool)

(assert (=> b!5716023 m!6669592))

(declare-fun m!6669594 () Bool)

(assert (=> b!5716023 m!6669594))

(assert (=> b!5716021 m!6669592))

(declare-fun m!6669596 () Bool)

(assert (=> b!5716021 m!6669596))

(assert (=> b!5716026 m!6668416))

(declare-fun m!6669598 () Bool)

(assert (=> b!5716026 m!6669598))

(assert (=> b!5716026 m!6669598))

(declare-fun m!6669600 () Bool)

(assert (=> b!5716026 m!6669600))

(assert (=> b!5716026 m!6668416))

(declare-fun m!6669602 () Bool)

(assert (=> b!5716026 m!6669602))

(assert (=> b!5716026 m!6669598))

(declare-fun m!6669604 () Bool)

(assert (=> b!5716026 m!6669604))

(assert (=> b!5716025 m!6669592))

(declare-fun m!6669606 () Bool)

(assert (=> b!5716025 m!6669606))

(declare-fun m!6669608 () Bool)

(assert (=> b!5716018 m!6669608))

(declare-fun m!6669610 () Bool)

(assert (=> d!1802910 m!6669610))

(assert (=> d!1802910 m!6668416))

(declare-fun m!6669612 () Bool)

(assert (=> d!1802910 m!6669612))

(assert (=> d!1802910 m!6668140))

(assert (=> b!5716019 m!6669610))

(assert (=> b!5715506 d!1802910))

(declare-fun b!5716027 () Bool)

(declare-fun e!3515256 () List!63438)

(assert (=> b!5716027 (= e!3515256 (_2!36113 lt!2277144))))

(declare-fun b!5716030 () Bool)

(declare-fun e!3515257 () Bool)

(declare-fun lt!2277382 () List!63438)

(assert (=> b!5716030 (= e!3515257 (or (not (= (_2!36113 lt!2277144) Nil!63314)) (= lt!2277382 (t!376758 (_1!36113 lt!2277144)))))))

(declare-fun b!5716029 () Bool)

(declare-fun res!2413522 () Bool)

(assert (=> b!5716029 (=> (not res!2413522) (not e!3515257))))

(assert (=> b!5716029 (= res!2413522 (= (size!40024 lt!2277382) (+ (size!40024 (t!376758 (_1!36113 lt!2277144))) (size!40024 (_2!36113 lt!2277144)))))))

(declare-fun b!5716028 () Bool)

(assert (=> b!5716028 (= e!3515256 (Cons!63314 (h!69762 (t!376758 (_1!36113 lt!2277144))) (++!13908 (t!376758 (t!376758 (_1!36113 lt!2277144))) (_2!36113 lt!2277144))))))

(declare-fun d!1802912 () Bool)

(assert (=> d!1802912 e!3515257))

(declare-fun res!2413523 () Bool)

(assert (=> d!1802912 (=> (not res!2413523) (not e!3515257))))

(assert (=> d!1802912 (= res!2413523 (= (content!11499 lt!2277382) ((_ map or) (content!11499 (t!376758 (_1!36113 lt!2277144))) (content!11499 (_2!36113 lt!2277144)))))))

(assert (=> d!1802912 (= lt!2277382 e!3515256)))

(declare-fun c!1007680 () Bool)

(assert (=> d!1802912 (= c!1007680 ((_ is Nil!63314) (t!376758 (_1!36113 lt!2277144))))))

(assert (=> d!1802912 (= (++!13908 (t!376758 (_1!36113 lt!2277144)) (_2!36113 lt!2277144)) lt!2277382)))

(assert (= (and d!1802912 c!1007680) b!5716027))

(assert (= (and d!1802912 (not c!1007680)) b!5716028))

(assert (= (and d!1802912 res!2413523) b!5716029))

(assert (= (and b!5716029 res!2413522) b!5716030))

(declare-fun m!6669614 () Bool)

(assert (=> b!5716029 m!6669614))

(assert (=> b!5716029 m!6669512))

(assert (=> b!5716029 m!6668736))

(declare-fun m!6669616 () Bool)

(assert (=> b!5716028 m!6669616))

(declare-fun m!6669618 () Bool)

(assert (=> d!1802912 m!6669618))

(declare-fun m!6669620 () Bool)

(assert (=> d!1802912 m!6669620))

(assert (=> d!1802912 m!6668742))

(assert (=> b!5715641 d!1802912))

(declare-fun b!5716031 () Bool)

(declare-fun res!2413525 () Bool)

(declare-fun e!3515263 () Bool)

(assert (=> b!5716031 (=> (not res!2413525) (not e!3515263))))

(assert (=> b!5716031 (= res!2413525 (isEmpty!35186 (tail!11200 (tail!11200 (_1!36113 lt!2277139)))))))

(declare-fun b!5716032 () Bool)

(declare-fun res!2413528 () Bool)

(assert (=> b!5716032 (=> (not res!2413528) (not e!3515263))))

(declare-fun call!436344 () Bool)

(assert (=> b!5716032 (= res!2413528 (not call!436344))))

(declare-fun b!5716033 () Bool)

(declare-fun res!2413530 () Bool)

(declare-fun e!3515260 () Bool)

(assert (=> b!5716033 (=> res!2413530 e!3515260)))

(assert (=> b!5716033 (= res!2413530 e!3515263)))

(declare-fun res!2413529 () Bool)

(assert (=> b!5716033 (=> (not res!2413529) (not e!3515263))))

(declare-fun lt!2277383 () Bool)

(assert (=> b!5716033 (= res!2413529 lt!2277383)))

(declare-fun d!1802914 () Bool)

(declare-fun e!3515262 () Bool)

(assert (=> d!1802914 e!3515262))

(declare-fun c!1007683 () Bool)

(assert (=> d!1802914 (= c!1007683 ((_ is EmptyExpr!15713) (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139)))))))

(declare-fun e!3515261 () Bool)

(assert (=> d!1802914 (= lt!2277383 e!3515261)))

(declare-fun c!1007682 () Bool)

(assert (=> d!1802914 (= c!1007682 (isEmpty!35186 (tail!11200 (_1!36113 lt!2277139))))))

(assert (=> d!1802914 (validRegex!7449 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139))))))

(assert (=> d!1802914 (= (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139))) (tail!11200 (_1!36113 lt!2277139))) lt!2277383)))

(declare-fun b!5716034 () Bool)

(declare-fun e!3515264 () Bool)

(declare-fun e!3515259 () Bool)

(assert (=> b!5716034 (= e!3515264 e!3515259)))

(declare-fun res!2413531 () Bool)

(assert (=> b!5716034 (=> res!2413531 e!3515259)))

(assert (=> b!5716034 (= res!2413531 call!436344)))

(declare-fun b!5716035 () Bool)

(assert (=> b!5716035 (= e!3515261 (nullable!5745 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139)))))))

(declare-fun b!5716036 () Bool)

(declare-fun res!2413527 () Bool)

(assert (=> b!5716036 (=> res!2413527 e!3515260)))

(assert (=> b!5716036 (= res!2413527 (not ((_ is ElementMatch!15713) (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139))))))))

(declare-fun e!3515258 () Bool)

(assert (=> b!5716036 (= e!3515258 e!3515260)))

(declare-fun b!5716037 () Bool)

(assert (=> b!5716037 (= e!3515261 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139))) (head!12105 (tail!11200 (_1!36113 lt!2277139)))) (tail!11200 (tail!11200 (_1!36113 lt!2277139)))))))

(declare-fun b!5716038 () Bool)

(declare-fun res!2413524 () Bool)

(assert (=> b!5716038 (=> res!2413524 e!3515259)))

(assert (=> b!5716038 (= res!2413524 (not (isEmpty!35186 (tail!11200 (tail!11200 (_1!36113 lt!2277139))))))))

(declare-fun bm!436339 () Bool)

(assert (=> bm!436339 (= call!436344 (isEmpty!35186 (tail!11200 (_1!36113 lt!2277139))))))

(declare-fun b!5716039 () Bool)

(assert (=> b!5716039 (= e!3515262 e!3515258)))

(declare-fun c!1007681 () Bool)

(assert (=> b!5716039 (= c!1007681 ((_ is EmptyLang!15713) (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139)))))))

(declare-fun b!5716040 () Bool)

(assert (=> b!5716040 (= e!3515260 e!3515264)))

(declare-fun res!2413526 () Bool)

(assert (=> b!5716040 (=> (not res!2413526) (not e!3515264))))

(assert (=> b!5716040 (= res!2413526 (not lt!2277383))))

(declare-fun b!5716041 () Bool)

(assert (=> b!5716041 (= e!3515258 (not lt!2277383))))

(declare-fun b!5716042 () Bool)

(assert (=> b!5716042 (= e!3515263 (= (head!12105 (tail!11200 (_1!36113 lt!2277139))) (c!1007275 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139))))))))

(declare-fun b!5716043 () Bool)

(assert (=> b!5716043 (= e!3515262 (= lt!2277383 call!436344))))

(declare-fun b!5716044 () Bool)

(assert (=> b!5716044 (= e!3515259 (not (= (head!12105 (tail!11200 (_1!36113 lt!2277139))) (c!1007275 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139)))))))))

(assert (= (and d!1802914 c!1007682) b!5716035))

(assert (= (and d!1802914 (not c!1007682)) b!5716037))

(assert (= (and d!1802914 c!1007683) b!5716043))

(assert (= (and d!1802914 (not c!1007683)) b!5716039))

(assert (= (and b!5716039 c!1007681) b!5716041))

(assert (= (and b!5716039 (not c!1007681)) b!5716036))

(assert (= (and b!5716036 (not res!2413527)) b!5716033))

(assert (= (and b!5716033 res!2413529) b!5716032))

(assert (= (and b!5716032 res!2413528) b!5716031))

(assert (= (and b!5716031 res!2413525) b!5716042))

(assert (= (and b!5716033 (not res!2413530)) b!5716040))

(assert (= (and b!5716040 res!2413526) b!5716034))

(assert (= (and b!5716034 (not res!2413531)) b!5716038))

(assert (= (and b!5716038 (not res!2413524)) b!5716044))

(assert (= (or b!5716043 b!5716032 b!5716034) bm!436339))

(assert (=> b!5716035 m!6668144))

(declare-fun m!6669622 () Bool)

(assert (=> b!5716035 m!6669622))

(assert (=> d!1802914 m!6668146))

(assert (=> d!1802914 m!6668150))

(assert (=> d!1802914 m!6668144))

(declare-fun m!6669624 () Bool)

(assert (=> d!1802914 m!6669624))

(assert (=> b!5716044 m!6668146))

(declare-fun m!6669626 () Bool)

(assert (=> b!5716044 m!6669626))

(assert (=> b!5716037 m!6668146))

(assert (=> b!5716037 m!6669626))

(assert (=> b!5716037 m!6668144))

(assert (=> b!5716037 m!6669626))

(declare-fun m!6669628 () Bool)

(assert (=> b!5716037 m!6669628))

(assert (=> b!5716037 m!6668146))

(declare-fun m!6669630 () Bool)

(assert (=> b!5716037 m!6669630))

(assert (=> b!5716037 m!6669628))

(assert (=> b!5716037 m!6669630))

(declare-fun m!6669632 () Bool)

(assert (=> b!5716037 m!6669632))

(assert (=> b!5716031 m!6668146))

(assert (=> b!5716031 m!6669630))

(assert (=> b!5716031 m!6669630))

(declare-fun m!6669634 () Bool)

(assert (=> b!5716031 m!6669634))

(assert (=> b!5716038 m!6668146))

(assert (=> b!5716038 m!6669630))

(assert (=> b!5716038 m!6669630))

(assert (=> b!5716038 m!6669634))

(assert (=> b!5716042 m!6668146))

(assert (=> b!5716042 m!6669626))

(assert (=> bm!436339 m!6668146))

(assert (=> bm!436339 m!6668150))

(assert (=> b!5714654 d!1802914))

(declare-fun call!436347 () Regex!15713)

(declare-fun bm!436340 () Bool)

(declare-fun c!1007684 () Bool)

(assert (=> bm!436340 (= call!436347 (derivativeStep!4516 (ite c!1007684 (regOne!31939 lt!2277097) (regOne!31938 lt!2277097)) (head!12105 (_1!36113 lt!2277139))))))

(declare-fun b!5716045 () Bool)

(declare-fun e!3515267 () Regex!15713)

(declare-fun call!436345 () Regex!15713)

(assert (=> b!5716045 (= e!3515267 (Union!15713 (Concat!24558 call!436345 (regTwo!31938 lt!2277097)) EmptyLang!15713))))

(declare-fun b!5716047 () Bool)

(declare-fun e!3515269 () Regex!15713)

(assert (=> b!5716047 (= e!3515269 EmptyLang!15713)))

(declare-fun b!5716048 () Bool)

(declare-fun e!3515265 () Regex!15713)

(assert (=> b!5716048 (= e!3515265 (ite (= (head!12105 (_1!36113 lt!2277139)) (c!1007275 lt!2277097)) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5716049 () Bool)

(declare-fun e!3515266 () Regex!15713)

(declare-fun call!436348 () Regex!15713)

(assert (=> b!5716049 (= e!3515266 (Union!15713 call!436347 call!436348))))

(declare-fun b!5716050 () Bool)

(assert (=> b!5716050 (= e!3515267 (Union!15713 (Concat!24558 call!436347 (regTwo!31938 lt!2277097)) call!436345))))

(declare-fun b!5716051 () Bool)

(assert (=> b!5716051 (= c!1007684 ((_ is Union!15713) lt!2277097))))

(assert (=> b!5716051 (= e!3515265 e!3515266)))

(declare-fun bm!436341 () Bool)

(declare-fun c!1007688 () Bool)

(declare-fun c!1007687 () Bool)

(assert (=> bm!436341 (= call!436348 (derivativeStep!4516 (ite c!1007684 (regTwo!31939 lt!2277097) (ite c!1007687 (reg!16042 lt!2277097) (ite c!1007688 (regTwo!31938 lt!2277097) (regOne!31938 lt!2277097)))) (head!12105 (_1!36113 lt!2277139))))))

(declare-fun bm!436342 () Bool)

(declare-fun call!436346 () Regex!15713)

(assert (=> bm!436342 (= call!436346 call!436348)))

(declare-fun bm!436343 () Bool)

(assert (=> bm!436343 (= call!436345 call!436346)))

(declare-fun b!5716052 () Bool)

(declare-fun e!3515268 () Regex!15713)

(assert (=> b!5716052 (= e!3515268 (Concat!24558 call!436346 lt!2277097))))

(declare-fun b!5716046 () Bool)

(assert (=> b!5716046 (= e!3515269 e!3515265)))

(declare-fun c!1007685 () Bool)

(assert (=> b!5716046 (= c!1007685 ((_ is ElementMatch!15713) lt!2277097))))

(declare-fun d!1802916 () Bool)

(declare-fun lt!2277384 () Regex!15713)

(assert (=> d!1802916 (validRegex!7449 lt!2277384)))

(assert (=> d!1802916 (= lt!2277384 e!3515269)))

(declare-fun c!1007686 () Bool)

(assert (=> d!1802916 (= c!1007686 (or ((_ is EmptyExpr!15713) lt!2277097) ((_ is EmptyLang!15713) lt!2277097)))))

(assert (=> d!1802916 (validRegex!7449 lt!2277097)))

(assert (=> d!1802916 (= (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 lt!2277139))) lt!2277384)))

(declare-fun b!5716053 () Bool)

(assert (=> b!5716053 (= c!1007688 (nullable!5745 (regOne!31938 lt!2277097)))))

(assert (=> b!5716053 (= e!3515268 e!3515267)))

(declare-fun b!5716054 () Bool)

(assert (=> b!5716054 (= e!3515266 e!3515268)))

(assert (=> b!5716054 (= c!1007687 ((_ is Star!15713) lt!2277097))))

(assert (= (and d!1802916 c!1007686) b!5716047))

(assert (= (and d!1802916 (not c!1007686)) b!5716046))

(assert (= (and b!5716046 c!1007685) b!5716048))

(assert (= (and b!5716046 (not c!1007685)) b!5716051))

(assert (= (and b!5716051 c!1007684) b!5716049))

(assert (= (and b!5716051 (not c!1007684)) b!5716054))

(assert (= (and b!5716054 c!1007687) b!5716052))

(assert (= (and b!5716054 (not c!1007687)) b!5716053))

(assert (= (and b!5716053 c!1007688) b!5716050))

(assert (= (and b!5716053 (not c!1007688)) b!5716045))

(assert (= (or b!5716050 b!5716045) bm!436343))

(assert (= (or b!5716052 bm!436343) bm!436342))

(assert (= (or b!5716049 bm!436342) bm!436341))

(assert (= (or b!5716049 b!5716050) bm!436340))

(assert (=> bm!436340 m!6668142))

(declare-fun m!6669636 () Bool)

(assert (=> bm!436340 m!6669636))

(assert (=> bm!436341 m!6668142))

(declare-fun m!6669638 () Bool)

(assert (=> bm!436341 m!6669638))

(declare-fun m!6669640 () Bool)

(assert (=> d!1802916 m!6669640))

(assert (=> d!1802916 m!6668140))

(assert (=> b!5716053 m!6669362))

(assert (=> b!5714654 d!1802916))

(assert (=> b!5714654 d!1802838))

(declare-fun d!1802918 () Bool)

(assert (=> d!1802918 (= (tail!11200 (_1!36113 lt!2277139)) (t!376758 (_1!36113 lt!2277139)))))

(assert (=> b!5714654 d!1802918))

(declare-fun d!1802920 () Bool)

(declare-fun c!1007689 () Bool)

(assert (=> d!1802920 (= c!1007689 ((_ is Nil!63314) lt!2277282))))

(declare-fun e!3515270 () (InoxSet C!31696))

(assert (=> d!1802920 (= (content!11499 lt!2277282) e!3515270)))

(declare-fun b!5716055 () Bool)

(assert (=> b!5716055 (= e!3515270 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716056 () Bool)

(assert (=> b!5716056 (= e!3515270 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 lt!2277282) true) (content!11499 (t!376758 lt!2277282))))))

(assert (= (and d!1802920 c!1007689) b!5716055))

(assert (= (and d!1802920 (not c!1007689)) b!5716056))

(declare-fun m!6669642 () Bool)

(assert (=> b!5716056 m!6669642))

(declare-fun m!6669644 () Bool)

(assert (=> b!5716056 m!6669644))

(assert (=> d!1802540 d!1802920))

(declare-fun d!1802922 () Bool)

(declare-fun c!1007690 () Bool)

(assert (=> d!1802922 (= c!1007690 ((_ is Nil!63314) (_2!36113 lt!2277144)))))

(declare-fun e!3515271 () (InoxSet C!31696))

(assert (=> d!1802922 (= (content!11499 (_2!36113 lt!2277144)) e!3515271)))

(declare-fun b!5716057 () Bool)

(assert (=> b!5716057 (= e!3515271 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716058 () Bool)

(assert (=> b!5716058 (= e!3515271 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 (_2!36113 lt!2277144)) true) (content!11499 (t!376758 (_2!36113 lt!2277144)))))))

(assert (= (and d!1802922 c!1007690) b!5716057))

(assert (= (and d!1802922 (not c!1007690)) b!5716058))

(declare-fun m!6669646 () Bool)

(assert (=> b!5716058 m!6669646))

(declare-fun m!6669648 () Bool)

(assert (=> b!5716058 m!6669648))

(assert (=> d!1802540 d!1802922))

(assert (=> d!1802540 d!1802802))

(declare-fun bm!436344 () Bool)

(declare-fun call!436351 () Bool)

(declare-fun call!436350 () Bool)

(assert (=> bm!436344 (= call!436351 call!436350)))

(declare-fun b!5716059 () Bool)

(declare-fun res!2413533 () Bool)

(declare-fun e!3515277 () Bool)

(assert (=> b!5716059 (=> res!2413533 e!3515277)))

(assert (=> b!5716059 (= res!2413533 (not ((_ is Concat!24558) (regTwo!31938 r!7292))))))

(declare-fun e!3515278 () Bool)

(assert (=> b!5716059 (= e!3515278 e!3515277)))

(declare-fun b!5716060 () Bool)

(declare-fun e!3515272 () Bool)

(assert (=> b!5716060 (= e!3515277 e!3515272)))

(declare-fun res!2413536 () Bool)

(assert (=> b!5716060 (=> (not res!2413536) (not e!3515272))))

(declare-fun call!436349 () Bool)

(assert (=> b!5716060 (= res!2413536 call!436349)))

(declare-fun b!5716061 () Bool)

(declare-fun res!2413532 () Bool)

(declare-fun e!3515276 () Bool)

(assert (=> b!5716061 (=> (not res!2413532) (not e!3515276))))

(assert (=> b!5716061 (= res!2413532 call!436349)))

(assert (=> b!5716061 (= e!3515278 e!3515276)))

(declare-fun b!5716062 () Bool)

(declare-fun e!3515275 () Bool)

(assert (=> b!5716062 (= e!3515275 call!436350)))

(declare-fun b!5716063 () Bool)

(assert (=> b!5716063 (= e!3515272 call!436351)))

(declare-fun b!5716064 () Bool)

(assert (=> b!5716064 (= e!3515276 call!436351)))

(declare-fun d!1802924 () Bool)

(declare-fun res!2413535 () Bool)

(declare-fun e!3515273 () Bool)

(assert (=> d!1802924 (=> res!2413535 e!3515273)))

(assert (=> d!1802924 (= res!2413535 ((_ is ElementMatch!15713) (regTwo!31938 r!7292)))))

(assert (=> d!1802924 (= (validRegex!7449 (regTwo!31938 r!7292)) e!3515273)))

(declare-fun b!5716065 () Bool)

(declare-fun e!3515274 () Bool)

(assert (=> b!5716065 (= e!3515274 e!3515278)))

(declare-fun c!1007692 () Bool)

(assert (=> b!5716065 (= c!1007692 ((_ is Union!15713) (regTwo!31938 r!7292)))))

(declare-fun c!1007691 () Bool)

(declare-fun bm!436345 () Bool)

(assert (=> bm!436345 (= call!436350 (validRegex!7449 (ite c!1007691 (reg!16042 (regTwo!31938 r!7292)) (ite c!1007692 (regTwo!31939 (regTwo!31938 r!7292)) (regTwo!31938 (regTwo!31938 r!7292))))))))

(declare-fun bm!436346 () Bool)

(assert (=> bm!436346 (= call!436349 (validRegex!7449 (ite c!1007692 (regOne!31939 (regTwo!31938 r!7292)) (regOne!31938 (regTwo!31938 r!7292)))))))

(declare-fun b!5716066 () Bool)

(assert (=> b!5716066 (= e!3515274 e!3515275)))

(declare-fun res!2413534 () Bool)

(assert (=> b!5716066 (= res!2413534 (not (nullable!5745 (reg!16042 (regTwo!31938 r!7292)))))))

(assert (=> b!5716066 (=> (not res!2413534) (not e!3515275))))

(declare-fun b!5716067 () Bool)

(assert (=> b!5716067 (= e!3515273 e!3515274)))

(assert (=> b!5716067 (= c!1007691 ((_ is Star!15713) (regTwo!31938 r!7292)))))

(assert (= (and d!1802924 (not res!2413535)) b!5716067))

(assert (= (and b!5716067 c!1007691) b!5716066))

(assert (= (and b!5716067 (not c!1007691)) b!5716065))

(assert (= (and b!5716066 res!2413534) b!5716062))

(assert (= (and b!5716065 c!1007692) b!5716061))

(assert (= (and b!5716065 (not c!1007692)) b!5716059))

(assert (= (and b!5716061 res!2413532) b!5716064))

(assert (= (and b!5716059 (not res!2413533)) b!5716060))

(assert (= (and b!5716060 res!2413536) b!5716063))

(assert (= (or b!5716064 b!5716063) bm!436344))

(assert (= (or b!5716061 b!5716060) bm!436346))

(assert (= (or b!5716062 bm!436344) bm!436345))

(declare-fun m!6669650 () Bool)

(assert (=> bm!436345 m!6669650))

(declare-fun m!6669652 () Bool)

(assert (=> bm!436346 m!6669652))

(declare-fun m!6669654 () Bool)

(assert (=> b!5716066 m!6669654))

(assert (=> b!5715475 d!1802924))

(declare-fun d!1802926 () Bool)

(declare-fun lt!2277385 () Int)

(assert (=> d!1802926 (>= lt!2277385 0)))

(declare-fun e!3515279 () Int)

(assert (=> d!1802926 (= lt!2277385 e!3515279)))

(declare-fun c!1007693 () Bool)

(assert (=> d!1802926 (= c!1007693 ((_ is Nil!63314) lt!2277281))))

(assert (=> d!1802926 (= (size!40024 lt!2277281) lt!2277385)))

(declare-fun b!5716068 () Bool)

(assert (=> b!5716068 (= e!3515279 0)))

(declare-fun b!5716069 () Bool)

(assert (=> b!5716069 (= e!3515279 (+ 1 (size!40024 (t!376758 lt!2277281))))))

(assert (= (and d!1802926 c!1007693) b!5716068))

(assert (= (and d!1802926 (not c!1007693)) b!5716069))

(declare-fun m!6669656 () Bool)

(assert (=> b!5716069 m!6669656))

(assert (=> b!5715213 d!1802926))

(declare-fun d!1802928 () Bool)

(declare-fun lt!2277386 () Int)

(assert (=> d!1802928 (>= lt!2277386 0)))

(declare-fun e!3515280 () Int)

(assert (=> d!1802928 (= lt!2277386 e!3515280)))

(declare-fun c!1007694 () Bool)

(assert (=> d!1802928 (= c!1007694 ((_ is Nil!63314) lt!2277096))))

(assert (=> d!1802928 (= (size!40024 lt!2277096) lt!2277386)))

(declare-fun b!5716070 () Bool)

(assert (=> b!5716070 (= e!3515280 0)))

(declare-fun b!5716071 () Bool)

(assert (=> b!5716071 (= e!3515280 (+ 1 (size!40024 (t!376758 lt!2277096))))))

(assert (= (and d!1802928 c!1007694) b!5716070))

(assert (= (and d!1802928 (not c!1007694)) b!5716071))

(assert (=> b!5716071 m!6669324))

(assert (=> b!5715213 d!1802928))

(declare-fun d!1802930 () Bool)

(declare-fun lt!2277387 () Int)

(assert (=> d!1802930 (>= lt!2277387 0)))

(declare-fun e!3515281 () Int)

(assert (=> d!1802930 (= lt!2277387 e!3515281)))

(declare-fun c!1007695 () Bool)

(assert (=> d!1802930 (= c!1007695 ((_ is Nil!63314) (_2!36113 lt!2277139)))))

(assert (=> d!1802930 (= (size!40024 (_2!36113 lt!2277139)) lt!2277387)))

(declare-fun b!5716072 () Bool)

(assert (=> b!5716072 (= e!3515281 0)))

(declare-fun b!5716073 () Bool)

(assert (=> b!5716073 (= e!3515281 (+ 1 (size!40024 (t!376758 (_2!36113 lt!2277139)))))))

(assert (= (and d!1802930 c!1007695) b!5716072))

(assert (= (and d!1802930 (not c!1007695)) b!5716073))

(declare-fun m!6669658 () Bool)

(assert (=> b!5716073 m!6669658))

(assert (=> b!5715213 d!1802930))

(declare-fun b!5716074 () Bool)

(declare-fun res!2413538 () Bool)

(declare-fun e!3515287 () Bool)

(assert (=> b!5716074 (=> (not res!2413538) (not e!3515287))))

(assert (=> b!5716074 (= res!2413538 (isEmpty!35186 (tail!11200 (_1!36113 (get!21829 lt!2277330)))))))

(declare-fun b!5716075 () Bool)

(declare-fun res!2413541 () Bool)

(assert (=> b!5716075 (=> (not res!2413541) (not e!3515287))))

(declare-fun call!436352 () Bool)

(assert (=> b!5716075 (= res!2413541 (not call!436352))))

(declare-fun b!5716076 () Bool)

(declare-fun res!2413543 () Bool)

(declare-fun e!3515284 () Bool)

(assert (=> b!5716076 (=> res!2413543 e!3515284)))

(assert (=> b!5716076 (= res!2413543 e!3515287)))

(declare-fun res!2413542 () Bool)

(assert (=> b!5716076 (=> (not res!2413542) (not e!3515287))))

(declare-fun lt!2277388 () Bool)

(assert (=> b!5716076 (= res!2413542 lt!2277388)))

(declare-fun d!1802932 () Bool)

(declare-fun e!3515286 () Bool)

(assert (=> d!1802932 e!3515286))

(declare-fun c!1007698 () Bool)

(assert (=> d!1802932 (= c!1007698 ((_ is EmptyExpr!15713) lt!2277097))))

(declare-fun e!3515285 () Bool)

(assert (=> d!1802932 (= lt!2277388 e!3515285)))

(declare-fun c!1007697 () Bool)

(assert (=> d!1802932 (= c!1007697 (isEmpty!35186 (_1!36113 (get!21829 lt!2277330))))))

(assert (=> d!1802932 (validRegex!7449 lt!2277097)))

(assert (=> d!1802932 (= (matchR!7898 lt!2277097 (_1!36113 (get!21829 lt!2277330))) lt!2277388)))

(declare-fun b!5716077 () Bool)

(declare-fun e!3515288 () Bool)

(declare-fun e!3515283 () Bool)

(assert (=> b!5716077 (= e!3515288 e!3515283)))

(declare-fun res!2413544 () Bool)

(assert (=> b!5716077 (=> res!2413544 e!3515283)))

(assert (=> b!5716077 (= res!2413544 call!436352)))

(declare-fun b!5716078 () Bool)

(assert (=> b!5716078 (= e!3515285 (nullable!5745 lt!2277097))))

(declare-fun b!5716079 () Bool)

(declare-fun res!2413540 () Bool)

(assert (=> b!5716079 (=> res!2413540 e!3515284)))

(assert (=> b!5716079 (= res!2413540 (not ((_ is ElementMatch!15713) lt!2277097)))))

(declare-fun e!3515282 () Bool)

(assert (=> b!5716079 (= e!3515282 e!3515284)))

(declare-fun b!5716080 () Bool)

(assert (=> b!5716080 (= e!3515285 (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 (_1!36113 (get!21829 lt!2277330)))) (tail!11200 (_1!36113 (get!21829 lt!2277330)))))))

(declare-fun b!5716081 () Bool)

(declare-fun res!2413537 () Bool)

(assert (=> b!5716081 (=> res!2413537 e!3515283)))

(assert (=> b!5716081 (= res!2413537 (not (isEmpty!35186 (tail!11200 (_1!36113 (get!21829 lt!2277330))))))))

(declare-fun bm!436347 () Bool)

(assert (=> bm!436347 (= call!436352 (isEmpty!35186 (_1!36113 (get!21829 lt!2277330))))))

(declare-fun b!5716082 () Bool)

(assert (=> b!5716082 (= e!3515286 e!3515282)))

(declare-fun c!1007696 () Bool)

(assert (=> b!5716082 (= c!1007696 ((_ is EmptyLang!15713) lt!2277097))))

(declare-fun b!5716083 () Bool)

(assert (=> b!5716083 (= e!3515284 e!3515288)))

(declare-fun res!2413539 () Bool)

(assert (=> b!5716083 (=> (not res!2413539) (not e!3515288))))

(assert (=> b!5716083 (= res!2413539 (not lt!2277388))))

(declare-fun b!5716084 () Bool)

(assert (=> b!5716084 (= e!3515282 (not lt!2277388))))

(declare-fun b!5716085 () Bool)

(assert (=> b!5716085 (= e!3515287 (= (head!12105 (_1!36113 (get!21829 lt!2277330))) (c!1007275 lt!2277097)))))

(declare-fun b!5716086 () Bool)

(assert (=> b!5716086 (= e!3515286 (= lt!2277388 call!436352))))

(declare-fun b!5716087 () Bool)

(assert (=> b!5716087 (= e!3515283 (not (= (head!12105 (_1!36113 (get!21829 lt!2277330))) (c!1007275 lt!2277097))))))

(assert (= (and d!1802932 c!1007697) b!5716078))

(assert (= (and d!1802932 (not c!1007697)) b!5716080))

(assert (= (and d!1802932 c!1007698) b!5716086))

(assert (= (and d!1802932 (not c!1007698)) b!5716082))

(assert (= (and b!5716082 c!1007696) b!5716084))

(assert (= (and b!5716082 (not c!1007696)) b!5716079))

(assert (= (and b!5716079 (not res!2413540)) b!5716076))

(assert (= (and b!5716076 res!2413542) b!5716075))

(assert (= (and b!5716075 res!2413541) b!5716074))

(assert (= (and b!5716074 res!2413538) b!5716085))

(assert (= (and b!5716076 (not res!2413543)) b!5716083))

(assert (= (and b!5716083 res!2413539) b!5716077))

(assert (= (and b!5716077 (not res!2413544)) b!5716081))

(assert (= (and b!5716081 (not res!2413537)) b!5716087))

(assert (= (or b!5716086 b!5716075 b!5716077) bm!436347))

(assert (=> b!5716078 m!6668138))

(declare-fun m!6669660 () Bool)

(assert (=> d!1802932 m!6669660))

(assert (=> d!1802932 m!6668140))

(declare-fun m!6669662 () Bool)

(assert (=> b!5716087 m!6669662))

(assert (=> b!5716080 m!6669662))

(assert (=> b!5716080 m!6669662))

(declare-fun m!6669664 () Bool)

(assert (=> b!5716080 m!6669664))

(declare-fun m!6669666 () Bool)

(assert (=> b!5716080 m!6669666))

(assert (=> b!5716080 m!6669664))

(assert (=> b!5716080 m!6669666))

(declare-fun m!6669668 () Bool)

(assert (=> b!5716080 m!6669668))

(assert (=> b!5716074 m!6669666))

(assert (=> b!5716074 m!6669666))

(declare-fun m!6669670 () Bool)

(assert (=> b!5716074 m!6669670))

(assert (=> b!5716081 m!6669666))

(assert (=> b!5716081 m!6669666))

(assert (=> b!5716081 m!6669670))

(assert (=> b!5716085 m!6669662))

(assert (=> bm!436347 m!6669660))

(assert (=> b!5715501 d!1802932))

(declare-fun d!1802934 () Bool)

(assert (=> d!1802934 (= (get!21829 lt!2277330) (v!51776 lt!2277330))))

(assert (=> b!5715501 d!1802934))

(declare-fun b!5716089 () Bool)

(declare-fun e!3515291 () Bool)

(assert (=> b!5716089 (= e!3515291 (nullable!5745 (regOne!31938 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292)))))))))))

(declare-fun bm!436348 () Bool)

(declare-fun call!436356 () List!63439)

(declare-fun call!436353 () List!63439)

(assert (=> bm!436348 (= call!436356 call!436353)))

(declare-fun b!5716090 () Bool)

(declare-fun e!3515289 () (InoxSet Context!10194))

(declare-fun call!436355 () (InoxSet Context!10194))

(assert (=> b!5716090 (= e!3515289 call!436355)))

(declare-fun b!5716091 () Bool)

(declare-fun e!3515294 () (InoxSet Context!10194))

(assert (=> b!5716091 (= e!3515294 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716092 () Bool)

(declare-fun e!3515293 () (InoxSet Context!10194))

(declare-fun call!436354 () (InoxSet Context!10194))

(declare-fun call!436358 () (InoxSet Context!10194))

(assert (=> b!5716092 (= e!3515293 ((_ map or) call!436354 call!436358))))

(declare-fun bm!436349 () Bool)

(declare-fun call!436357 () (InoxSet Context!10194))

(assert (=> bm!436349 (= call!436357 call!436358)))

(declare-fun b!5716093 () Bool)

(declare-fun c!1007700 () Bool)

(assert (=> b!5716093 (= c!1007700 ((_ is Star!15713) (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))))))

(assert (=> b!5716093 (= e!3515289 e!3515294)))

(declare-fun bm!436350 () Bool)

(declare-fun c!1007699 () Bool)

(assert (=> bm!436350 (= call!436354 (derivationStepZipperDown!1055 (ite c!1007699 (regOne!31939 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))) (regOne!31938 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292)))))))) (ite c!1007699 (ite (or c!1007571 c!1007573) lt!2277119 (Context!10195 call!436279)) (Context!10195 call!436353)) (h!69762 s!2326)))))

(declare-fun c!1007702 () Bool)

(declare-fun c!1007701 () Bool)

(declare-fun bm!436351 () Bool)

(assert (=> bm!436351 (= call!436358 (derivationStepZipperDown!1055 (ite c!1007699 (regTwo!31939 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))) (ite c!1007701 (regTwo!31938 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))) (ite c!1007702 (regOne!31938 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))) (reg!16042 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292)))))))))) (ite (or c!1007699 c!1007701) (ite (or c!1007571 c!1007573) lt!2277119 (Context!10195 call!436279)) (Context!10195 call!436356)) (h!69762 s!2326)))))

(declare-fun bm!436352 () Bool)

(assert (=> bm!436352 (= call!436355 call!436357)))

(declare-fun b!5716094 () Bool)

(declare-fun e!3515290 () (InoxSet Context!10194))

(assert (=> b!5716094 (= e!3515290 ((_ map or) call!436354 call!436357))))

(declare-fun b!5716095 () Bool)

(assert (=> b!5716095 (= e!3515290 e!3515289)))

(assert (=> b!5716095 (= c!1007702 ((_ is Concat!24558) (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))))))

(declare-fun d!1802936 () Bool)

(declare-fun c!1007703 () Bool)

(assert (=> d!1802936 (= c!1007703 (and ((_ is ElementMatch!15713) (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))) (= (c!1007275 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))) (h!69762 s!2326))))))

(declare-fun e!3515292 () (InoxSet Context!10194))

(assert (=> d!1802936 (= (derivationStepZipperDown!1055 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292)))))) (ite (or c!1007571 c!1007573) lt!2277119 (Context!10195 call!436279)) (h!69762 s!2326)) e!3515292)))

(declare-fun b!5716088 () Bool)

(assert (=> b!5716088 (= e!3515292 e!3515293)))

(assert (=> b!5716088 (= c!1007699 ((_ is Union!15713) (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))))))

(declare-fun b!5716096 () Bool)

(assert (=> b!5716096 (= e!3515292 (store ((as const (Array Context!10194 Bool)) false) (ite (or c!1007571 c!1007573) lt!2277119 (Context!10195 call!436279)) true))))

(declare-fun b!5716097 () Bool)

(assert (=> b!5716097 (= c!1007701 e!3515291)))

(declare-fun res!2413545 () Bool)

(assert (=> b!5716097 (=> (not res!2413545) (not e!3515291))))

(assert (=> b!5716097 (= res!2413545 ((_ is Concat!24558) (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))))))

(assert (=> b!5716097 (= e!3515293 e!3515290)))

(declare-fun bm!436353 () Bool)

(assert (=> bm!436353 (= call!436353 ($colon$colon!1729 (exprs!5597 (ite (or c!1007571 c!1007573) lt!2277119 (Context!10195 call!436279))) (ite (or c!1007701 c!1007702) (regTwo!31938 (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292))))))) (ite c!1007571 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007573 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (ite c!1007574 (regOne!31938 (reg!16042 (regOne!31938 r!7292))) (reg!16042 (reg!16042 (regOne!31938 r!7292)))))))))))

(declare-fun b!5716098 () Bool)

(assert (=> b!5716098 (= e!3515294 call!436355)))

(assert (= (and d!1802936 c!1007703) b!5716096))

(assert (= (and d!1802936 (not c!1007703)) b!5716088))

(assert (= (and b!5716088 c!1007699) b!5716092))

(assert (= (and b!5716088 (not c!1007699)) b!5716097))

(assert (= (and b!5716097 res!2413545) b!5716089))

(assert (= (and b!5716097 c!1007701) b!5716094))

(assert (= (and b!5716097 (not c!1007701)) b!5716095))

(assert (= (and b!5716095 c!1007702) b!5716090))

(assert (= (and b!5716095 (not c!1007702)) b!5716093))

(assert (= (and b!5716093 c!1007700) b!5716098))

(assert (= (and b!5716093 (not c!1007700)) b!5716091))

(assert (= (or b!5716090 b!5716098) bm!436348))

(assert (= (or b!5716090 b!5716098) bm!436352))

(assert (= (or b!5716094 bm!436348) bm!436353))

(assert (= (or b!5716094 bm!436352) bm!436349))

(assert (= (or b!5716092 bm!436349) bm!436351))

(assert (= (or b!5716092 b!5716094) bm!436350))

(declare-fun m!6669672 () Bool)

(assert (=> b!5716089 m!6669672))

(declare-fun m!6669674 () Bool)

(assert (=> bm!436351 m!6669674))

(declare-fun m!6669676 () Bool)

(assert (=> b!5716096 m!6669676))

(declare-fun m!6669678 () Bool)

(assert (=> bm!436353 m!6669678))

(declare-fun m!6669680 () Bool)

(assert (=> bm!436350 m!6669680))

(assert (=> bm!436274 d!1802936))

(declare-fun d!1802938 () Bool)

(assert (=> d!1802938 (= (Exists!2813 (ite c!1007325 lambda!308716 lambda!308717)) (choose!43215 (ite c!1007325 lambda!308716 lambda!308717)))))

(declare-fun bs!1335320 () Bool)

(assert (= bs!1335320 d!1802938))

(declare-fun m!6669682 () Bool)

(assert (=> bs!1335320 m!6669682))

(assert (=> bm!436173 d!1802938))

(declare-fun bs!1335321 () Bool)

(declare-fun d!1802940 () Bool)

(assert (= bs!1335321 (and d!1802940 d!1802788)))

(declare-fun lambda!308808 () Int)

(assert (=> bs!1335321 (= lambda!308808 lambda!308797)))

(declare-fun bs!1335322 () Bool)

(assert (= bs!1335322 (and d!1802940 d!1802866)))

(assert (=> bs!1335322 (= lambda!308808 lambda!308804)))

(declare-fun bs!1335323 () Bool)

(assert (= bs!1335323 (and d!1802940 d!1802882)))

(assert (=> bs!1335323 (= lambda!308808 lambda!308805)))

(assert (=> d!1802940 (= (nullableZipper!1663 ((_ map or) lt!2277113 lt!2277110)) (exists!2222 ((_ map or) lt!2277113 lt!2277110) lambda!308808))))

(declare-fun bs!1335324 () Bool)

(assert (= bs!1335324 d!1802940))

(declare-fun m!6669684 () Bool)

(assert (=> bs!1335324 m!6669684))

(assert (=> b!5715617 d!1802940))

(assert (=> bm!436265 d!1802878))

(declare-fun d!1802942 () Bool)

(assert (=> d!1802942 (= (nullable!5745 (h!69763 (exprs!5597 lt!2277119))) (nullableFct!1808 (h!69763 (exprs!5597 lt!2277119))))))

(declare-fun bs!1335325 () Bool)

(assert (= bs!1335325 d!1802942))

(declare-fun m!6669686 () Bool)

(assert (=> bs!1335325 m!6669686))

(assert (=> b!5715076 d!1802942))

(declare-fun b!5716099 () Bool)

(declare-fun res!2413547 () Bool)

(declare-fun e!3515300 () Bool)

(assert (=> b!5716099 (=> (not res!2413547) (not e!3515300))))

(assert (=> b!5716099 (= res!2413547 (isEmpty!35186 (tail!11200 (tail!11200 (_2!36113 lt!2277139)))))))

(declare-fun b!5716100 () Bool)

(declare-fun res!2413550 () Bool)

(assert (=> b!5716100 (=> (not res!2413550) (not e!3515300))))

(declare-fun call!436359 () Bool)

(assert (=> b!5716100 (= res!2413550 (not call!436359))))

(declare-fun b!5716101 () Bool)

(declare-fun res!2413552 () Bool)

(declare-fun e!3515297 () Bool)

(assert (=> b!5716101 (=> res!2413552 e!3515297)))

(assert (=> b!5716101 (= res!2413552 e!3515300)))

(declare-fun res!2413551 () Bool)

(assert (=> b!5716101 (=> (not res!2413551) (not e!3515300))))

(declare-fun lt!2277389 () Bool)

(assert (=> b!5716101 (= res!2413551 lt!2277389)))

(declare-fun d!1802944 () Bool)

(declare-fun e!3515299 () Bool)

(assert (=> d!1802944 e!3515299))

(declare-fun c!1007706 () Bool)

(assert (=> d!1802944 (= c!1007706 ((_ is EmptyExpr!15713) (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139)))))))

(declare-fun e!3515298 () Bool)

(assert (=> d!1802944 (= lt!2277389 e!3515298)))

(declare-fun c!1007705 () Bool)

(assert (=> d!1802944 (= c!1007705 (isEmpty!35186 (tail!11200 (_2!36113 lt!2277139))))))

(assert (=> d!1802944 (validRegex!7449 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139))))))

(assert (=> d!1802944 (= (matchR!7898 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139))) (tail!11200 (_2!36113 lt!2277139))) lt!2277389)))

(declare-fun b!5716102 () Bool)

(declare-fun e!3515301 () Bool)

(declare-fun e!3515296 () Bool)

(assert (=> b!5716102 (= e!3515301 e!3515296)))

(declare-fun res!2413553 () Bool)

(assert (=> b!5716102 (=> res!2413553 e!3515296)))

(assert (=> b!5716102 (= res!2413553 call!436359)))

(declare-fun b!5716103 () Bool)

(assert (=> b!5716103 (= e!3515298 (nullable!5745 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139)))))))

(declare-fun b!5716104 () Bool)

(declare-fun res!2413549 () Bool)

(assert (=> b!5716104 (=> res!2413549 e!3515297)))

(assert (=> b!5716104 (= res!2413549 (not ((_ is ElementMatch!15713) (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139))))))))

(declare-fun e!3515295 () Bool)

(assert (=> b!5716104 (= e!3515295 e!3515297)))

(declare-fun b!5716105 () Bool)

(assert (=> b!5716105 (= e!3515298 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139))) (head!12105 (tail!11200 (_2!36113 lt!2277139)))) (tail!11200 (tail!11200 (_2!36113 lt!2277139)))))))

(declare-fun b!5716106 () Bool)

(declare-fun res!2413546 () Bool)

(assert (=> b!5716106 (=> res!2413546 e!3515296)))

(assert (=> b!5716106 (= res!2413546 (not (isEmpty!35186 (tail!11200 (tail!11200 (_2!36113 lt!2277139))))))))

(declare-fun bm!436354 () Bool)

(assert (=> bm!436354 (= call!436359 (isEmpty!35186 (tail!11200 (_2!36113 lt!2277139))))))

(declare-fun b!5716107 () Bool)

(assert (=> b!5716107 (= e!3515299 e!3515295)))

(declare-fun c!1007704 () Bool)

(assert (=> b!5716107 (= c!1007704 ((_ is EmptyLang!15713) (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139)))))))

(declare-fun b!5716108 () Bool)

(assert (=> b!5716108 (= e!3515297 e!3515301)))

(declare-fun res!2413548 () Bool)

(assert (=> b!5716108 (=> (not res!2413548) (not e!3515301))))

(assert (=> b!5716108 (= res!2413548 (not lt!2277389))))

(declare-fun b!5716109 () Bool)

(assert (=> b!5716109 (= e!3515295 (not lt!2277389))))

(declare-fun b!5716110 () Bool)

(assert (=> b!5716110 (= e!3515300 (= (head!12105 (tail!11200 (_2!36113 lt!2277139))) (c!1007275 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139))))))))

(declare-fun b!5716111 () Bool)

(assert (=> b!5716111 (= e!3515299 (= lt!2277389 call!436359))))

(declare-fun b!5716112 () Bool)

(assert (=> b!5716112 (= e!3515296 (not (= (head!12105 (tail!11200 (_2!36113 lt!2277139))) (c!1007275 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139)))))))))

(assert (= (and d!1802944 c!1007705) b!5716103))

(assert (= (and d!1802944 (not c!1007705)) b!5716105))

(assert (= (and d!1802944 c!1007706) b!5716111))

(assert (= (and d!1802944 (not c!1007706)) b!5716107))

(assert (= (and b!5716107 c!1007704) b!5716109))

(assert (= (and b!5716107 (not c!1007704)) b!5716104))

(assert (= (and b!5716104 (not res!2413549)) b!5716101))

(assert (= (and b!5716101 res!2413551) b!5716100))

(assert (= (and b!5716100 res!2413550) b!5716099))

(assert (= (and b!5716099 res!2413547) b!5716110))

(assert (= (and b!5716101 (not res!2413552)) b!5716108))

(assert (= (and b!5716108 res!2413548) b!5716102))

(assert (= (and b!5716102 (not res!2413553)) b!5716106))

(assert (= (and b!5716106 (not res!2413546)) b!5716112))

(assert (= (or b!5716111 b!5716100 b!5716102) bm!436354))

(assert (=> b!5716103 m!6668292))

(declare-fun m!6669688 () Bool)

(assert (=> b!5716103 m!6669688))

(assert (=> d!1802944 m!6668294))

(assert (=> d!1802944 m!6668298))

(assert (=> d!1802944 m!6668292))

(declare-fun m!6669690 () Bool)

(assert (=> d!1802944 m!6669690))

(assert (=> b!5716112 m!6668294))

(declare-fun m!6669692 () Bool)

(assert (=> b!5716112 m!6669692))

(assert (=> b!5716105 m!6668294))

(assert (=> b!5716105 m!6669692))

(assert (=> b!5716105 m!6668292))

(assert (=> b!5716105 m!6669692))

(declare-fun m!6669694 () Bool)

(assert (=> b!5716105 m!6669694))

(assert (=> b!5716105 m!6668294))

(declare-fun m!6669696 () Bool)

(assert (=> b!5716105 m!6669696))

(assert (=> b!5716105 m!6669694))

(assert (=> b!5716105 m!6669696))

(declare-fun m!6669698 () Bool)

(assert (=> b!5716105 m!6669698))

(assert (=> b!5716099 m!6668294))

(assert (=> b!5716099 m!6669696))

(assert (=> b!5716099 m!6669696))

(declare-fun m!6669700 () Bool)

(assert (=> b!5716099 m!6669700))

(assert (=> b!5716106 m!6668294))

(assert (=> b!5716106 m!6669696))

(assert (=> b!5716106 m!6669696))

(assert (=> b!5716106 m!6669700))

(assert (=> b!5716110 m!6668294))

(assert (=> b!5716110 m!6669692))

(assert (=> bm!436354 m!6668294))

(assert (=> bm!436354 m!6668298))

(assert (=> b!5714841 d!1802944))

(declare-fun bm!436355 () Bool)

(declare-fun call!436362 () Regex!15713)

(declare-fun c!1007707 () Bool)

(assert (=> bm!436355 (= call!436362 (derivativeStep!4516 (ite c!1007707 (regOne!31939 (regTwo!31938 r!7292)) (regOne!31938 (regTwo!31938 r!7292))) (head!12105 (_2!36113 lt!2277139))))))

(declare-fun b!5716113 () Bool)

(declare-fun e!3515304 () Regex!15713)

(declare-fun call!436360 () Regex!15713)

(assert (=> b!5716113 (= e!3515304 (Union!15713 (Concat!24558 call!436360 (regTwo!31938 (regTwo!31938 r!7292))) EmptyLang!15713))))

(declare-fun b!5716115 () Bool)

(declare-fun e!3515306 () Regex!15713)

(assert (=> b!5716115 (= e!3515306 EmptyLang!15713)))

(declare-fun b!5716116 () Bool)

(declare-fun e!3515302 () Regex!15713)

(assert (=> b!5716116 (= e!3515302 (ite (= (head!12105 (_2!36113 lt!2277139)) (c!1007275 (regTwo!31938 r!7292))) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5716117 () Bool)

(declare-fun e!3515303 () Regex!15713)

(declare-fun call!436363 () Regex!15713)

(assert (=> b!5716117 (= e!3515303 (Union!15713 call!436362 call!436363))))

(declare-fun b!5716118 () Bool)

(assert (=> b!5716118 (= e!3515304 (Union!15713 (Concat!24558 call!436362 (regTwo!31938 (regTwo!31938 r!7292))) call!436360))))

(declare-fun b!5716119 () Bool)

(assert (=> b!5716119 (= c!1007707 ((_ is Union!15713) (regTwo!31938 r!7292)))))

(assert (=> b!5716119 (= e!3515302 e!3515303)))

(declare-fun bm!436356 () Bool)

(declare-fun c!1007711 () Bool)

(declare-fun c!1007710 () Bool)

(assert (=> bm!436356 (= call!436363 (derivativeStep!4516 (ite c!1007707 (regTwo!31939 (regTwo!31938 r!7292)) (ite c!1007710 (reg!16042 (regTwo!31938 r!7292)) (ite c!1007711 (regTwo!31938 (regTwo!31938 r!7292)) (regOne!31938 (regTwo!31938 r!7292))))) (head!12105 (_2!36113 lt!2277139))))))

(declare-fun bm!436357 () Bool)

(declare-fun call!436361 () Regex!15713)

(assert (=> bm!436357 (= call!436361 call!436363)))

(declare-fun bm!436358 () Bool)

(assert (=> bm!436358 (= call!436360 call!436361)))

(declare-fun b!5716120 () Bool)

(declare-fun e!3515305 () Regex!15713)

(assert (=> b!5716120 (= e!3515305 (Concat!24558 call!436361 (regTwo!31938 r!7292)))))

(declare-fun b!5716114 () Bool)

(assert (=> b!5716114 (= e!3515306 e!3515302)))

(declare-fun c!1007708 () Bool)

(assert (=> b!5716114 (= c!1007708 ((_ is ElementMatch!15713) (regTwo!31938 r!7292)))))

(declare-fun d!1802946 () Bool)

(declare-fun lt!2277390 () Regex!15713)

(assert (=> d!1802946 (validRegex!7449 lt!2277390)))

(assert (=> d!1802946 (= lt!2277390 e!3515306)))

(declare-fun c!1007709 () Bool)

(assert (=> d!1802946 (= c!1007709 (or ((_ is EmptyExpr!15713) (regTwo!31938 r!7292)) ((_ is EmptyLang!15713) (regTwo!31938 r!7292))))))

(assert (=> d!1802946 (validRegex!7449 (regTwo!31938 r!7292))))

(assert (=> d!1802946 (= (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 lt!2277139))) lt!2277390)))

(declare-fun b!5716121 () Bool)

(assert (=> b!5716121 (= c!1007711 (nullable!5745 (regOne!31938 (regTwo!31938 r!7292))))))

(assert (=> b!5716121 (= e!3515305 e!3515304)))

(declare-fun b!5716122 () Bool)

(assert (=> b!5716122 (= e!3515303 e!3515305)))

(assert (=> b!5716122 (= c!1007710 ((_ is Star!15713) (regTwo!31938 r!7292)))))

(assert (= (and d!1802946 c!1007709) b!5716115))

(assert (= (and d!1802946 (not c!1007709)) b!5716114))

(assert (= (and b!5716114 c!1007708) b!5716116))

(assert (= (and b!5716114 (not c!1007708)) b!5716119))

(assert (= (and b!5716119 c!1007707) b!5716117))

(assert (= (and b!5716119 (not c!1007707)) b!5716122))

(assert (= (and b!5716122 c!1007710) b!5716120))

(assert (= (and b!5716122 (not c!1007710)) b!5716121))

(assert (= (and b!5716121 c!1007711) b!5716118))

(assert (= (and b!5716121 (not c!1007711)) b!5716113))

(assert (= (or b!5716118 b!5716113) bm!436358))

(assert (= (or b!5716120 bm!436358) bm!436357))

(assert (= (or b!5716117 bm!436357) bm!436356))

(assert (= (or b!5716117 b!5716118) bm!436355))

(assert (=> bm!436355 m!6668288))

(declare-fun m!6669702 () Bool)

(assert (=> bm!436355 m!6669702))

(assert (=> bm!436356 m!6668288))

(declare-fun m!6669704 () Bool)

(assert (=> bm!436356 m!6669704))

(declare-fun m!6669706 () Bool)

(assert (=> d!1802946 m!6669706))

(assert (=> d!1802946 m!6668284))

(declare-fun m!6669708 () Bool)

(assert (=> b!5716121 m!6669708))

(assert (=> b!5714841 d!1802946))

(assert (=> b!5714841 d!1802746))

(declare-fun d!1802948 () Bool)

(assert (=> d!1802948 (= (tail!11200 (_2!36113 lt!2277139)) (t!376758 (_2!36113 lt!2277139)))))

(assert (=> b!5714841 d!1802948))

(assert (=> bm!436270 d!1802884))

(assert (=> b!5714806 d!1802790))

(declare-fun d!1802950 () Bool)

(declare-fun c!1007712 () Bool)

(assert (=> d!1802950 (= c!1007712 ((_ is Nil!63314) lt!2277350))))

(declare-fun e!3515307 () (InoxSet C!31696))

(assert (=> d!1802950 (= (content!11499 lt!2277350) e!3515307)))

(declare-fun b!5716123 () Bool)

(assert (=> b!5716123 (= e!3515307 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716124 () Bool)

(assert (=> b!5716124 (= e!3515307 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 lt!2277350) true) (content!11499 (t!376758 lt!2277350))))))

(assert (= (and d!1802950 c!1007712) b!5716123))

(assert (= (and d!1802950 (not c!1007712)) b!5716124))

(declare-fun m!6669710 () Bool)

(assert (=> b!5716124 m!6669710))

(declare-fun m!6669712 () Bool)

(assert (=> b!5716124 m!6669712))

(assert (=> d!1802702 d!1802950))

(declare-fun d!1802952 () Bool)

(declare-fun c!1007713 () Bool)

(assert (=> d!1802952 (= c!1007713 ((_ is Nil!63314) (_1!36113 lt!2277144)))))

(declare-fun e!3515308 () (InoxSet C!31696))

(assert (=> d!1802952 (= (content!11499 (_1!36113 lt!2277144)) e!3515308)))

(declare-fun b!5716125 () Bool)

(assert (=> b!5716125 (= e!3515308 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716126 () Bool)

(assert (=> b!5716126 (= e!3515308 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 (_1!36113 lt!2277144)) true) (content!11499 (t!376758 (_1!36113 lt!2277144)))))))

(assert (= (and d!1802952 c!1007713) b!5716125))

(assert (= (and d!1802952 (not c!1007713)) b!5716126))

(declare-fun m!6669714 () Bool)

(assert (=> b!5716126 m!6669714))

(assert (=> b!5716126 m!6669620))

(assert (=> d!1802702 d!1802952))

(assert (=> d!1802702 d!1802922))

(declare-fun bs!1335326 () Bool)

(declare-fun b!5716132 () Bool)

(assert (= bs!1335326 (and b!5716132 d!1802660)))

(declare-fun lambda!308809 () Int)

(assert (=> bs!1335326 (not (= lambda!308809 lambda!308764))))

(declare-fun bs!1335327 () Bool)

(assert (= bs!1335327 (and b!5716132 d!1802448)))

(assert (=> bs!1335327 (not (= lambda!308809 lambda!308742))))

(declare-fun bs!1335328 () Bool)

(assert (= bs!1335328 (and b!5716132 b!5715849)))

(assert (=> bs!1335328 (not (= lambda!308809 lambda!308799))))

(declare-fun bs!1335329 () Bool)

(assert (= bs!1335329 (and b!5716132 b!5714753)))

(assert (=> bs!1335329 (= (and (= (reg!16042 (regOne!31939 r!7292)) (reg!16042 lt!2277132)) (= (regOne!31939 r!7292) lt!2277132)) (= lambda!308809 lambda!308716))))

(declare-fun bs!1335330 () Bool)

(assert (= bs!1335330 (and b!5716132 b!5714499)))

(assert (=> bs!1335330 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regOne!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 r!7292) lt!2277097)) (= lambda!308809 lambda!308685))))

(declare-fun bs!1335331 () Bool)

(assert (= bs!1335331 (and b!5716132 d!1802776)))

(assert (=> bs!1335331 (not (= lambda!308809 lambda!308794))))

(assert (=> bs!1335326 (not (= lambda!308809 lambda!308765))))

(declare-fun bs!1335332 () Bool)

(assert (= bs!1335332 (and b!5716132 d!1802658)))

(assert (=> bs!1335332 (not (= lambda!308809 lambda!308763))))

(declare-fun bs!1335333 () Bool)

(assert (= bs!1335333 (and b!5716132 b!5714517)))

(assert (=> bs!1335333 (not (= lambda!308809 lambda!308679))))

(assert (=> bs!1335331 (not (= lambda!308809 lambda!308793))))

(declare-fun bs!1335334 () Bool)

(assert (= bs!1335334 (and b!5716132 d!1802700)))

(assert (=> bs!1335334 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regOne!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308809 lambda!308782))))

(declare-fun bs!1335335 () Bool)

(assert (= bs!1335335 (and b!5716132 d!1802714)))

(assert (=> bs!1335335 (not (= lambda!308809 lambda!308787))))

(assert (=> bs!1335335 (not (= lambda!308809 lambda!308786))))

(declare-fun bs!1335336 () Bool)

(assert (= bs!1335336 (and b!5716132 b!5714504)))

(assert (=> bs!1335336 (not (= lambda!308809 lambda!308683))))

(declare-fun bs!1335337 () Bool)

(assert (= bs!1335337 (and b!5716132 b!5715508)))

(assert (=> bs!1335337 (not (= lambda!308809 lambda!308767))))

(assert (=> bs!1335330 (not (= lambda!308809 lambda!308686))))

(declare-fun bs!1335338 () Bool)

(assert (= bs!1335338 (and b!5716132 b!5715645)))

(assert (=> bs!1335338 (not (= lambda!308809 lambda!308785))))

(declare-fun bs!1335339 () Bool)

(assert (= bs!1335339 (and b!5716132 d!1802830)))

(assert (=> bs!1335339 (not (= lambda!308809 lambda!308801))))

(assert (=> bs!1335334 (not (= lambda!308809 lambda!308781))))

(assert (=> bs!1335327 (not (= lambda!308809 lambda!308743))))

(assert (=> bs!1335333 (not (= lambda!308809 lambda!308680))))

(declare-fun bs!1335340 () Bool)

(assert (= bs!1335340 (and b!5716132 d!1802432)))

(assert (=> bs!1335340 (not (= lambda!308809 lambda!308728))))

(declare-fun bs!1335341 () Bool)

(assert (= bs!1335341 (and b!5716132 b!5715853)))

(assert (=> bs!1335341 (= (and (= (reg!16042 (regOne!31939 r!7292)) (reg!16042 (regTwo!31939 r!7292))) (= (regOne!31939 r!7292) (regTwo!31939 r!7292))) (= lambda!308809 lambda!308798))))

(declare-fun bs!1335342 () Bool)

(assert (= bs!1335342 (and b!5716132 b!5715649)))

(assert (=> bs!1335342 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regOne!31939 r!7292)) (reg!16042 lt!2277097)) (= (regOne!31939 r!7292) lt!2277097)) (= lambda!308809 lambda!308784))))

(declare-fun bs!1335343 () Bool)

(assert (= bs!1335343 (and b!5716132 b!5714749)))

(assert (=> bs!1335343 (not (= lambda!308809 lambda!308717))))

(assert (=> bs!1335330 (not (= lambda!308809 lambda!308684))))

(assert (=> bs!1335336 (not (= lambda!308809 lambda!308682))))

(assert (=> bs!1335339 (not (= lambda!308809 lambda!308802))))

(declare-fun bs!1335344 () Bool)

(assert (= bs!1335344 (and b!5716132 d!1802704)))

(assert (=> bs!1335344 (not (= lambda!308809 lambda!308783))))

(declare-fun bs!1335345 () Bool)

(assert (= bs!1335345 (and b!5716132 b!5715512)))

(assert (=> bs!1335345 (= (and (= (reg!16042 (regOne!31939 r!7292)) (reg!16042 r!7292)) (= (regOne!31939 r!7292) r!7292)) (= lambda!308809 lambda!308766))))

(assert (=> b!5716132 true))

(assert (=> b!5716132 true))

(declare-fun bs!1335346 () Bool)

(declare-fun b!5716128 () Bool)

(assert (= bs!1335346 (and b!5716128 d!1802660)))

(declare-fun lambda!308810 () Int)

(assert (=> bs!1335346 (not (= lambda!308810 lambda!308764))))

(declare-fun bs!1335347 () Bool)

(assert (= bs!1335347 (and b!5716128 d!1802448)))

(assert (=> bs!1335347 (not (= lambda!308810 lambda!308742))))

(declare-fun bs!1335348 () Bool)

(assert (= bs!1335348 (and b!5716128 b!5715849)))

(assert (=> bs!1335348 (= (and (= (regOne!31938 (regOne!31939 r!7292)) (regOne!31938 (regTwo!31939 r!7292))) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 (regTwo!31939 r!7292)))) (= lambda!308810 lambda!308799))))

(declare-fun bs!1335349 () Bool)

(assert (= bs!1335349 (and b!5716128 b!5714753)))

(assert (=> bs!1335349 (not (= lambda!308810 lambda!308716))))

(declare-fun bs!1335350 () Bool)

(assert (= bs!1335350 (and b!5716128 b!5714499)))

(assert (=> bs!1335350 (not (= lambda!308810 lambda!308685))))

(declare-fun bs!1335351 () Bool)

(assert (= bs!1335351 (and b!5716128 d!1802776)))

(assert (=> bs!1335351 (= (and (= (regOne!31938 (regOne!31939 r!7292)) lt!2277097) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308810 lambda!308794))))

(assert (=> bs!1335346 (= (and (= (regOne!31938 (regOne!31939 r!7292)) lt!2277097) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308810 lambda!308765))))

(declare-fun bs!1335352 () Bool)

(assert (= bs!1335352 (and b!5716128 d!1802658)))

(assert (=> bs!1335352 (not (= lambda!308810 lambda!308763))))

(declare-fun bs!1335353 () Bool)

(assert (= bs!1335353 (and b!5716128 b!5714517)))

(assert (=> bs!1335353 (not (= lambda!308810 lambda!308679))))

(assert (=> bs!1335351 (not (= lambda!308810 lambda!308793))))

(declare-fun bs!1335354 () Bool)

(assert (= bs!1335354 (and b!5716128 d!1802700)))

(assert (=> bs!1335354 (not (= lambda!308810 lambda!308782))))

(declare-fun bs!1335355 () Bool)

(assert (= bs!1335355 (and b!5716128 b!5716132)))

(assert (=> bs!1335355 (not (= lambda!308810 lambda!308809))))

(declare-fun bs!1335356 () Bool)

(assert (= bs!1335356 (and b!5716128 d!1802714)))

(assert (=> bs!1335356 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regOne!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regOne!31939 r!7292)) lt!2277097)) (= lambda!308810 lambda!308787))))

(assert (=> bs!1335356 (not (= lambda!308810 lambda!308786))))

(declare-fun bs!1335357 () Bool)

(assert (= bs!1335357 (and b!5716128 b!5714504)))

(assert (=> bs!1335357 (= (and (= (regOne!31938 (regOne!31939 r!7292)) lt!2277097) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308810 lambda!308683))))

(declare-fun bs!1335358 () Bool)

(assert (= bs!1335358 (and b!5716128 b!5715508)))

(assert (=> bs!1335358 (= (and (= (regOne!31938 (regOne!31939 r!7292)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308810 lambda!308767))))

(assert (=> bs!1335350 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regOne!31939 r!7292)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regOne!31939 r!7292)) lt!2277097)) (= lambda!308810 lambda!308686))))

(declare-fun bs!1335359 () Bool)

(assert (= bs!1335359 (and b!5716128 b!5715645)))

(assert (=> bs!1335359 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regOne!31939 r!7292)) (regOne!31938 lt!2277097)) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 lt!2277097))) (= lambda!308810 lambda!308785))))

(declare-fun bs!1335360 () Bool)

(assert (= bs!1335360 (and b!5716128 d!1802830)))

(assert (=> bs!1335360 (not (= lambda!308810 lambda!308801))))

(assert (=> bs!1335354 (not (= lambda!308810 lambda!308781))))

(assert (=> bs!1335347 (= (and (= (regOne!31938 (regOne!31939 r!7292)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308810 lambda!308743))))

(assert (=> bs!1335353 (= (and (= (regOne!31938 (regOne!31939 r!7292)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308810 lambda!308680))))

(declare-fun bs!1335361 () Bool)

(assert (= bs!1335361 (and b!5716128 d!1802432)))

(assert (=> bs!1335361 (not (= lambda!308810 lambda!308728))))

(declare-fun bs!1335362 () Bool)

(assert (= bs!1335362 (and b!5716128 b!5715853)))

(assert (=> bs!1335362 (not (= lambda!308810 lambda!308798))))

(declare-fun bs!1335363 () Bool)

(assert (= bs!1335363 (and b!5716128 b!5715649)))

(assert (=> bs!1335363 (not (= lambda!308810 lambda!308784))))

(declare-fun bs!1335364 () Bool)

(assert (= bs!1335364 (and b!5716128 b!5714749)))

(assert (=> bs!1335364 (= (and (= (regOne!31938 (regOne!31939 r!7292)) (regOne!31938 lt!2277132)) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 lt!2277132))) (= lambda!308810 lambda!308717))))

(assert (=> bs!1335350 (not (= lambda!308810 lambda!308684))))

(assert (=> bs!1335357 (not (= lambda!308810 lambda!308682))))

(assert (=> bs!1335360 (= (and (= (regOne!31938 (regOne!31939 r!7292)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 r!7292)) (regTwo!31938 r!7292))) (= lambda!308810 lambda!308802))))

(declare-fun bs!1335365 () Bool)

(assert (= bs!1335365 (and b!5716128 d!1802704)))

(assert (=> bs!1335365 (not (= lambda!308810 lambda!308783))))

(declare-fun bs!1335366 () Bool)

(assert (= bs!1335366 (and b!5716128 b!5715512)))

(assert (=> bs!1335366 (not (= lambda!308810 lambda!308766))))

(assert (=> b!5716128 true))

(assert (=> b!5716128 true))

(declare-fun d!1802954 () Bool)

(declare-fun c!1007716 () Bool)

(assert (=> d!1802954 (= c!1007716 ((_ is EmptyExpr!15713) (regOne!31939 r!7292)))))

(declare-fun e!3515315 () Bool)

(assert (=> d!1802954 (= (matchRSpec!2816 (regOne!31939 r!7292) s!2326) e!3515315)))

(declare-fun b!5716127 () Bool)

(declare-fun res!2413554 () Bool)

(declare-fun e!3515309 () Bool)

(assert (=> b!5716127 (=> res!2413554 e!3515309)))

(declare-fun call!436364 () Bool)

(assert (=> b!5716127 (= res!2413554 call!436364)))

(declare-fun e!3515314 () Bool)

(assert (=> b!5716127 (= e!3515314 e!3515309)))

(declare-fun call!436365 () Bool)

(assert (=> b!5716128 (= e!3515314 call!436365)))

(declare-fun b!5716129 () Bool)

(declare-fun c!1007714 () Bool)

(assert (=> b!5716129 (= c!1007714 ((_ is ElementMatch!15713) (regOne!31939 r!7292)))))

(declare-fun e!3515313 () Bool)

(declare-fun e!3515310 () Bool)

(assert (=> b!5716129 (= e!3515313 e!3515310)))

(declare-fun b!5716130 () Bool)

(assert (=> b!5716130 (= e!3515310 (= s!2326 (Cons!63314 (c!1007275 (regOne!31939 r!7292)) Nil!63314)))))

(declare-fun b!5716131 () Bool)

(assert (=> b!5716131 (= e!3515315 e!3515313)))

(declare-fun res!2413555 () Bool)

(assert (=> b!5716131 (= res!2413555 (not ((_ is EmptyLang!15713) (regOne!31939 r!7292))))))

(assert (=> b!5716131 (=> (not res!2413555) (not e!3515313))))

(declare-fun bm!436359 () Bool)

(assert (=> bm!436359 (= call!436364 (isEmpty!35186 s!2326))))

(assert (=> b!5716132 (= e!3515309 call!436365)))

(declare-fun b!5716133 () Bool)

(assert (=> b!5716133 (= e!3515315 call!436364)))

(declare-fun b!5716134 () Bool)

(declare-fun e!3515312 () Bool)

(assert (=> b!5716134 (= e!3515312 (matchRSpec!2816 (regTwo!31939 (regOne!31939 r!7292)) s!2326))))

(declare-fun b!5716135 () Bool)

(declare-fun c!1007715 () Bool)

(assert (=> b!5716135 (= c!1007715 ((_ is Union!15713) (regOne!31939 r!7292)))))

(declare-fun e!3515311 () Bool)

(assert (=> b!5716135 (= e!3515310 e!3515311)))

(declare-fun b!5716136 () Bool)

(assert (=> b!5716136 (= e!3515311 e!3515314)))

(declare-fun c!1007717 () Bool)

(assert (=> b!5716136 (= c!1007717 ((_ is Star!15713) (regOne!31939 r!7292)))))

(declare-fun b!5716137 () Bool)

(assert (=> b!5716137 (= e!3515311 e!3515312)))

(declare-fun res!2413556 () Bool)

(assert (=> b!5716137 (= res!2413556 (matchRSpec!2816 (regOne!31939 (regOne!31939 r!7292)) s!2326))))

(assert (=> b!5716137 (=> res!2413556 e!3515312)))

(declare-fun bm!436360 () Bool)

(assert (=> bm!436360 (= call!436365 (Exists!2813 (ite c!1007717 lambda!308809 lambda!308810)))))

(assert (= (and d!1802954 c!1007716) b!5716133))

(assert (= (and d!1802954 (not c!1007716)) b!5716131))

(assert (= (and b!5716131 res!2413555) b!5716129))

(assert (= (and b!5716129 c!1007714) b!5716130))

(assert (= (and b!5716129 (not c!1007714)) b!5716135))

(assert (= (and b!5716135 c!1007715) b!5716137))

(assert (= (and b!5716135 (not c!1007715)) b!5716136))

(assert (= (and b!5716137 (not res!2413556)) b!5716134))

(assert (= (and b!5716136 c!1007717) b!5716127))

(assert (= (and b!5716136 (not c!1007717)) b!5716128))

(assert (= (and b!5716127 (not res!2413554)) b!5716132))

(assert (= (or b!5716132 b!5716128) bm!436360))

(assert (= (or b!5716133 b!5716127) bm!436359))

(assert (=> bm!436359 m!6668190))

(declare-fun m!6669716 () Bool)

(assert (=> b!5716134 m!6669716))

(declare-fun m!6669718 () Bool)

(assert (=> b!5716137 m!6669718))

(declare-fun m!6669720 () Bool)

(assert (=> bm!436360 m!6669720))

(assert (=> b!5715517 d!1802954))

(declare-fun d!1802956 () Bool)

(assert (=> d!1802956 (= (isEmpty!35190 lt!2277099) (not ((_ is Some!15721) lt!2277099)))))

(assert (=> d!1802694 d!1802956))

(assert (=> b!5715610 d!1802678))

(declare-fun bs!1335367 () Bool)

(declare-fun d!1802958 () Bool)

(assert (= bs!1335367 (and d!1802958 d!1802648)))

(declare-fun lambda!308811 () Int)

(assert (=> bs!1335367 (= lambda!308811 lambda!308761)))

(declare-fun bs!1335368 () Bool)

(assert (= bs!1335368 (and d!1802958 d!1802606)))

(assert (=> bs!1335368 (= lambda!308811 lambda!308758)))

(declare-fun bs!1335369 () Bool)

(assert (= bs!1335369 (and d!1802958 b!5714528)))

(assert (=> bs!1335369 (= lambda!308811 lambda!308687)))

(declare-fun bs!1335370 () Bool)

(assert (= bs!1335370 (and d!1802958 d!1802682)))

(assert (=> bs!1335370 (= lambda!308811 lambda!308776)))

(declare-fun bs!1335371 () Bool)

(assert (= bs!1335371 (and d!1802958 d!1802650)))

(assert (=> bs!1335371 (= lambda!308811 lambda!308762)))

(declare-fun bs!1335372 () Bool)

(assert (= bs!1335372 (and d!1802958 d!1802678)))

(assert (=> bs!1335372 (= lambda!308811 lambda!308770)))

(declare-fun bs!1335373 () Bool)

(assert (= bs!1335373 (and d!1802958 d!1802680)))

(assert (=> bs!1335373 (= lambda!308811 lambda!308773)))

(declare-fun lt!2277391 () List!63439)

(assert (=> d!1802958 (forall!14848 lt!2277391 lambda!308811)))

(declare-fun e!3515316 () List!63439)

(assert (=> d!1802958 (= lt!2277391 e!3515316)))

(declare-fun c!1007718 () Bool)

(assert (=> d!1802958 (= c!1007718 ((_ is Cons!63316) (t!376760 zl!343)))))

(assert (=> d!1802958 (= (unfocusZipperList!1141 (t!376760 zl!343)) lt!2277391)))

(declare-fun b!5716138 () Bool)

(assert (=> b!5716138 (= e!3515316 (Cons!63315 (generalisedConcat!1328 (exprs!5597 (h!69764 (t!376760 zl!343)))) (unfocusZipperList!1141 (t!376760 (t!376760 zl!343)))))))

(declare-fun b!5716139 () Bool)

(assert (=> b!5716139 (= e!3515316 Nil!63315)))

(assert (= (and d!1802958 c!1007718) b!5716138))

(assert (= (and d!1802958 (not c!1007718)) b!5716139))

(declare-fun m!6669722 () Bool)

(assert (=> d!1802958 m!6669722))

(declare-fun m!6669724 () Bool)

(assert (=> b!5716138 m!6669724))

(declare-fun m!6669726 () Bool)

(assert (=> b!5716138 m!6669726))

(assert (=> b!5715610 d!1802958))

(declare-fun d!1802960 () Bool)

(assert (=> d!1802960 (= (isEmpty!35186 (tail!11200 s!2326)) ((_ is Nil!63314) (tail!11200 s!2326)))))

(assert (=> b!5715525 d!1802960))

(declare-fun d!1802962 () Bool)

(assert (=> d!1802962 (= (tail!11200 s!2326) (t!376758 s!2326))))

(assert (=> b!5715525 d!1802962))

(declare-fun d!1802964 () Bool)

(assert (=> d!1802964 true))

(declare-fun setRes!38288 () Bool)

(assert (=> d!1802964 setRes!38288))

(declare-fun condSetEmpty!38288 () Bool)

(declare-fun res!2413559 () (InoxSet Context!10194))

(assert (=> d!1802964 (= condSetEmpty!38288 (= res!2413559 ((as const (Array Context!10194 Bool)) false)))))

(assert (=> d!1802964 (= (choose!43218 z!1189 lambda!308681) res!2413559)))

(declare-fun setIsEmpty!38288 () Bool)

(assert (=> setIsEmpty!38288 setRes!38288))

(declare-fun setElem!38288 () Context!10194)

(declare-fun tp!1583536 () Bool)

(declare-fun e!3515319 () Bool)

(declare-fun setNonEmpty!38288 () Bool)

(assert (=> setNonEmpty!38288 (= setRes!38288 (and tp!1583536 (inv!82529 setElem!38288) e!3515319))))

(declare-fun setRest!38288 () (InoxSet Context!10194))

(assert (=> setNonEmpty!38288 (= res!2413559 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) setElem!38288 true) setRest!38288))))

(declare-fun b!5716142 () Bool)

(declare-fun tp!1583535 () Bool)

(assert (=> b!5716142 (= e!3515319 tp!1583535)))

(assert (= (and d!1802964 condSetEmpty!38288) setIsEmpty!38288))

(assert (= (and d!1802964 (not condSetEmpty!38288)) setNonEmpty!38288))

(assert (= setNonEmpty!38288 b!5716142))

(declare-fun m!6669728 () Bool)

(assert (=> setNonEmpty!38288 m!6669728))

(assert (=> d!1802530 d!1802964))

(declare-fun d!1802966 () Bool)

(assert (=> d!1802966 (= (Exists!2813 lambda!308781) (choose!43215 lambda!308781))))

(declare-fun bs!1335374 () Bool)

(assert (= bs!1335374 d!1802966))

(declare-fun m!6669730 () Bool)

(assert (=> bs!1335374 m!6669730))

(assert (=> d!1802700 d!1802966))

(declare-fun d!1802968 () Bool)

(assert (=> d!1802968 (= (Exists!2813 lambda!308782) (choose!43215 lambda!308782))))

(declare-fun bs!1335375 () Bool)

(assert (= bs!1335375 d!1802968))

(declare-fun m!6669732 () Bool)

(assert (=> bs!1335375 m!6669732))

(assert (=> d!1802700 d!1802968))

(declare-fun bs!1335376 () Bool)

(declare-fun d!1802970 () Bool)

(assert (= bs!1335376 (and d!1802970 d!1802660)))

(declare-fun lambda!308816 () Int)

(assert (=> bs!1335376 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308764))))

(declare-fun bs!1335377 () Bool)

(assert (= bs!1335377 (and d!1802970 d!1802448)))

(assert (=> bs!1335377 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308742))))

(declare-fun bs!1335378 () Bool)

(assert (= bs!1335378 (and d!1802970 b!5715849)))

(assert (=> bs!1335378 (not (= lambda!308816 lambda!308799))))

(declare-fun bs!1335379 () Bool)

(assert (= bs!1335379 (and d!1802970 b!5714753)))

(assert (=> bs!1335379 (not (= lambda!308816 lambda!308716))))

(declare-fun bs!1335380 () Bool)

(assert (= bs!1335380 (and d!1802970 b!5714499)))

(assert (=> bs!1335380 (not (= lambda!308816 lambda!308685))))

(declare-fun bs!1335381 () Bool)

(assert (= bs!1335381 (and d!1802970 d!1802776)))

(assert (=> bs!1335381 (not (= lambda!308816 lambda!308794))))

(assert (=> bs!1335376 (not (= lambda!308816 lambda!308765))))

(declare-fun bs!1335382 () Bool)

(assert (= bs!1335382 (and d!1802970 d!1802658)))

(assert (=> bs!1335382 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308763))))

(declare-fun bs!1335383 () Bool)

(assert (= bs!1335383 (and d!1802970 b!5714517)))

(assert (=> bs!1335383 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308679))))

(assert (=> bs!1335381 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308793))))

(declare-fun bs!1335384 () Bool)

(assert (= bs!1335384 (and d!1802970 d!1802700)))

(assert (=> bs!1335384 (not (= lambda!308816 lambda!308782))))

(declare-fun bs!1335385 () Bool)

(assert (= bs!1335385 (and d!1802970 b!5716132)))

(assert (=> bs!1335385 (not (= lambda!308816 lambda!308809))))

(declare-fun bs!1335386 () Bool)

(assert (= bs!1335386 (and d!1802970 d!1802714)))

(assert (=> bs!1335386 (not (= lambda!308816 lambda!308787))))

(assert (=> bs!1335386 (= (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277097) (= lambda!308816 lambda!308786))))

(declare-fun bs!1335387 () Bool)

(assert (= bs!1335387 (and d!1802970 b!5714504)))

(assert (=> bs!1335387 (not (= lambda!308816 lambda!308683))))

(declare-fun bs!1335388 () Bool)

(assert (= bs!1335388 (and d!1802970 b!5715508)))

(assert (=> bs!1335388 (not (= lambda!308816 lambda!308767))))

(declare-fun bs!1335389 () Bool)

(assert (= bs!1335389 (and d!1802970 b!5716128)))

(assert (=> bs!1335389 (not (= lambda!308816 lambda!308810))))

(assert (=> bs!1335380 (not (= lambda!308816 lambda!308686))))

(declare-fun bs!1335390 () Bool)

(assert (= bs!1335390 (and d!1802970 b!5715645)))

(assert (=> bs!1335390 (not (= lambda!308816 lambda!308785))))

(declare-fun bs!1335391 () Bool)

(assert (= bs!1335391 (and d!1802970 d!1802830)))

(assert (=> bs!1335391 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308801))))

(assert (=> bs!1335384 (= lambda!308816 lambda!308781)))

(assert (=> bs!1335377 (not (= lambda!308816 lambda!308743))))

(assert (=> bs!1335383 (not (= lambda!308816 lambda!308680))))

(declare-fun bs!1335392 () Bool)

(assert (= bs!1335392 (and d!1802970 d!1802432)))

(assert (=> bs!1335392 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308728))))

(declare-fun bs!1335393 () Bool)

(assert (= bs!1335393 (and d!1802970 b!5715853)))

(assert (=> bs!1335393 (not (= lambda!308816 lambda!308798))))

(declare-fun bs!1335394 () Bool)

(assert (= bs!1335394 (and d!1802970 b!5715649)))

(assert (=> bs!1335394 (not (= lambda!308816 lambda!308784))))

(declare-fun bs!1335395 () Bool)

(assert (= bs!1335395 (and d!1802970 b!5714749)))

(assert (=> bs!1335395 (not (= lambda!308816 lambda!308717))))

(assert (=> bs!1335380 (= (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277097) (= lambda!308816 lambda!308684))))

(assert (=> bs!1335387 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31938 r!7292))) (= lambda!308816 lambda!308682))))

(assert (=> bs!1335391 (not (= lambda!308816 lambda!308802))))

(declare-fun bs!1335396 () Bool)

(assert (= bs!1335396 (and d!1802970 d!1802704)))

(assert (=> bs!1335396 (= (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277097) (= lambda!308816 lambda!308783))))

(declare-fun bs!1335397 () Bool)

(assert (= bs!1335397 (and d!1802970 b!5715512)))

(assert (=> bs!1335397 (not (= lambda!308816 lambda!308766))))

(assert (=> d!1802970 true))

(assert (=> d!1802970 true))

(declare-fun lambda!308817 () Int)

(assert (=> bs!1335377 (not (= lambda!308817 lambda!308742))))

(assert (=> bs!1335378 (not (= lambda!308817 lambda!308799))))

(assert (=> bs!1335379 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (reg!16042 lt!2277132)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277132)) (= lambda!308817 lambda!308716))))

(assert (=> bs!1335380 (= (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277097) (= lambda!308817 lambda!308685))))

(assert (=> bs!1335381 (not (= lambda!308817 lambda!308794))))

(assert (=> bs!1335376 (not (= lambda!308817 lambda!308765))))

(assert (=> bs!1335382 (not (= lambda!308817 lambda!308763))))

(assert (=> bs!1335383 (not (= lambda!308817 lambda!308679))))

(assert (=> bs!1335381 (not (= lambda!308817 lambda!308793))))

(assert (=> bs!1335384 (= lambda!308817 lambda!308782)))

(assert (=> bs!1335385 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (reg!16042 (regOne!31939 r!7292))) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regOne!31939 r!7292))) (= lambda!308817 lambda!308809))))

(assert (=> bs!1335386 (not (= lambda!308817 lambda!308787))))

(declare-fun bs!1335398 () Bool)

(assert (= bs!1335398 d!1802970))

(assert (=> bs!1335398 (not (= lambda!308817 lambda!308816))))

(assert (=> bs!1335376 (not (= lambda!308817 lambda!308764))))

(assert (=> bs!1335386 (not (= lambda!308817 lambda!308786))))

(assert (=> bs!1335387 (not (= lambda!308817 lambda!308683))))

(assert (=> bs!1335388 (not (= lambda!308817 lambda!308767))))

(assert (=> bs!1335389 (not (= lambda!308817 lambda!308810))))

(assert (=> bs!1335380 (not (= lambda!308817 lambda!308686))))

(assert (=> bs!1335390 (not (= lambda!308817 lambda!308785))))

(assert (=> bs!1335391 (not (= lambda!308817 lambda!308801))))

(assert (=> bs!1335384 (not (= lambda!308817 lambda!308781))))

(assert (=> bs!1335377 (not (= lambda!308817 lambda!308743))))

(assert (=> bs!1335383 (not (= lambda!308817 lambda!308680))))

(assert (=> bs!1335392 (not (= lambda!308817 lambda!308728))))

(assert (=> bs!1335393 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (reg!16042 (regTwo!31939 r!7292))) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) (regTwo!31939 r!7292))) (= lambda!308817 lambda!308798))))

(assert (=> bs!1335394 (= (and (= (reg!16042 (regOne!31938 r!7292)) (reg!16042 lt!2277097)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) lt!2277097)) (= lambda!308817 lambda!308784))))

(assert (=> bs!1335395 (not (= lambda!308817 lambda!308717))))

(assert (=> bs!1335380 (not (= lambda!308817 lambda!308684))))

(assert (=> bs!1335387 (not (= lambda!308817 lambda!308682))))

(assert (=> bs!1335391 (not (= lambda!308817 lambda!308802))))

(assert (=> bs!1335396 (not (= lambda!308817 lambda!308783))))

(assert (=> bs!1335397 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (reg!16042 r!7292)) (= (Star!15713 (reg!16042 (regOne!31938 r!7292))) r!7292)) (= lambda!308817 lambda!308766))))

(assert (=> d!1802970 true))

(assert (=> d!1802970 true))

(assert (=> d!1802970 (= (Exists!2813 lambda!308816) (Exists!2813 lambda!308817))))

(assert (=> d!1802970 true))

(declare-fun _$91!515 () Unit!156384)

(assert (=> d!1802970 (= (choose!43229 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277139)) _$91!515)))

(declare-fun m!6669734 () Bool)

(assert (=> bs!1335398 m!6669734))

(declare-fun m!6669736 () Bool)

(assert (=> bs!1335398 m!6669736))

(assert (=> d!1802700 d!1802970))

(assert (=> d!1802700 d!1802812))

(assert (=> b!5714661 d!1802838))

(declare-fun b!5716153 () Bool)

(declare-fun e!3515324 () List!63438)

(assert (=> b!5716153 (= e!3515324 (_2!36113 (get!21829 lt!2277355)))))

(declare-fun b!5716156 () Bool)

(declare-fun e!3515325 () Bool)

(declare-fun lt!2277392 () List!63438)

(assert (=> b!5716156 (= e!3515325 (or (not (= (_2!36113 (get!21829 lt!2277355)) Nil!63314)) (= lt!2277392 (_1!36113 (get!21829 lt!2277355)))))))

(declare-fun b!5716155 () Bool)

(declare-fun res!2413570 () Bool)

(assert (=> b!5716155 (=> (not res!2413570) (not e!3515325))))

(assert (=> b!5716155 (= res!2413570 (= (size!40024 lt!2277392) (+ (size!40024 (_1!36113 (get!21829 lt!2277355))) (size!40024 (_2!36113 (get!21829 lt!2277355))))))))

(declare-fun b!5716154 () Bool)

(assert (=> b!5716154 (= e!3515324 (Cons!63314 (h!69762 (_1!36113 (get!21829 lt!2277355))) (++!13908 (t!376758 (_1!36113 (get!21829 lt!2277355))) (_2!36113 (get!21829 lt!2277355)))))))

(declare-fun d!1802972 () Bool)

(assert (=> d!1802972 e!3515325))

(declare-fun res!2413571 () Bool)

(assert (=> d!1802972 (=> (not res!2413571) (not e!3515325))))

(assert (=> d!1802972 (= res!2413571 (= (content!11499 lt!2277392) ((_ map or) (content!11499 (_1!36113 (get!21829 lt!2277355))) (content!11499 (_2!36113 (get!21829 lt!2277355))))))))

(assert (=> d!1802972 (= lt!2277392 e!3515324)))

(declare-fun c!1007719 () Bool)

(assert (=> d!1802972 (= c!1007719 ((_ is Nil!63314) (_1!36113 (get!21829 lt!2277355))))))

(assert (=> d!1802972 (= (++!13908 (_1!36113 (get!21829 lt!2277355)) (_2!36113 (get!21829 lt!2277355))) lt!2277392)))

(assert (= (and d!1802972 c!1007719) b!5716153))

(assert (= (and d!1802972 (not c!1007719)) b!5716154))

(assert (= (and d!1802972 res!2413571) b!5716155))

(assert (= (and b!5716155 res!2413570) b!5716156))

(declare-fun m!6669738 () Bool)

(assert (=> b!5716155 m!6669738))

(declare-fun m!6669740 () Bool)

(assert (=> b!5716155 m!6669740))

(declare-fun m!6669742 () Bool)

(assert (=> b!5716155 m!6669742))

(declare-fun m!6669744 () Bool)

(assert (=> b!5716154 m!6669744))

(declare-fun m!6669746 () Bool)

(assert (=> d!1802972 m!6669746))

(declare-fun m!6669748 () Bool)

(assert (=> d!1802972 m!6669748))

(declare-fun m!6669750 () Bool)

(assert (=> d!1802972 m!6669750))

(assert (=> b!5715660 d!1802972))

(assert (=> b!5715660 d!1802806))

(declare-fun d!1802974 () Bool)

(assert (=> d!1802974 (= (isEmpty!35190 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)) (not ((_ is Some!15721) (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326))))))

(assert (=> d!1802484 d!1802974))

(assert (=> b!5715306 d!1802788))

(declare-fun b!5716157 () Bool)

(declare-fun e!3515326 () List!63438)

(assert (=> b!5716157 (= e!3515326 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(declare-fun e!3515327 () Bool)

(declare-fun lt!2277393 () List!63438)

(declare-fun b!5716160 () Bool)

(assert (=> b!5716160 (= e!3515327 (or (not (= (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)) Nil!63314)) (= lt!2277393 (_1!36113 lt!2277144))))))

(declare-fun b!5716159 () Bool)

(declare-fun res!2413572 () Bool)

(assert (=> b!5716159 (=> (not res!2413572) (not e!3515327))))

(assert (=> b!5716159 (= res!2413572 (= (size!40024 lt!2277393) (+ (size!40024 (_1!36113 lt!2277144)) (size!40024 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))))))))

(declare-fun b!5716158 () Bool)

(assert (=> b!5716158 (= e!3515326 (Cons!63314 (h!69762 (_1!36113 lt!2277144)) (++!13908 (t!376758 (_1!36113 lt!2277144)) (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))))

(declare-fun d!1802976 () Bool)

(assert (=> d!1802976 e!3515327))

(declare-fun res!2413573 () Bool)

(assert (=> d!1802976 (=> (not res!2413573) (not e!3515327))))

(assert (=> d!1802976 (= res!2413573 (= (content!11499 lt!2277393) ((_ map or) (content!11499 (_1!36113 lt!2277144)) (content!11499 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))))))))

(assert (=> d!1802976 (= lt!2277393 e!3515326)))

(declare-fun c!1007720 () Bool)

(assert (=> d!1802976 (= c!1007720 ((_ is Nil!63314) (_1!36113 lt!2277144)))))

(assert (=> d!1802976 (= (++!13908 (_1!36113 lt!2277144) (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))) lt!2277393)))

(assert (= (and d!1802976 c!1007720) b!5716157))

(assert (= (and d!1802976 (not c!1007720)) b!5716158))

(assert (= (and d!1802976 res!2413573) b!5716159))

(assert (= (and b!5716159 res!2413572) b!5716160))

(declare-fun m!6669752 () Bool)

(assert (=> b!5716159 m!6669752))

(assert (=> b!5716159 m!6668708))

(assert (=> b!5716159 m!6667966))

(declare-fun m!6669754 () Bool)

(assert (=> b!5716159 m!6669754))

(assert (=> b!5716158 m!6667966))

(declare-fun m!6669756 () Bool)

(assert (=> b!5716158 m!6669756))

(declare-fun m!6669758 () Bool)

(assert (=> d!1802976 m!6669758))

(assert (=> d!1802976 m!6668716))

(assert (=> d!1802976 m!6667966))

(declare-fun m!6669760 () Bool)

(assert (=> d!1802976 m!6669760))

(assert (=> d!1802542 d!1802976))

(assert (=> d!1802542 d!1802702))

(declare-fun d!1802978 () Bool)

(assert (=> d!1802978 (= (++!13908 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)) (_2!36113 lt!2277139)) (++!13908 (_1!36113 lt!2277144) (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))))))

(assert (=> d!1802978 true))

(declare-fun _$52!2389 () Unit!156384)

(assert (=> d!1802978 (= (choose!43220 (_1!36113 lt!2277144) (_2!36113 lt!2277144) (_2!36113 lt!2277139)) _$52!2389)))

(declare-fun bs!1335399 () Bool)

(assert (= bs!1335399 d!1802978))

(assert (=> bs!1335399 m!6668046))

(assert (=> bs!1335399 m!6668046))

(assert (=> bs!1335399 m!6668776))

(assert (=> bs!1335399 m!6667966))

(assert (=> bs!1335399 m!6667966))

(assert (=> bs!1335399 m!6668780))

(assert (=> d!1802542 d!1802978))

(declare-fun b!5716161 () Bool)

(declare-fun e!3515328 () List!63438)

(assert (=> b!5716161 (= e!3515328 (_2!36113 lt!2277139))))

(declare-fun e!3515329 () Bool)

(declare-fun b!5716164 () Bool)

(declare-fun lt!2277394 () List!63438)

(assert (=> b!5716164 (= e!3515329 (or (not (= (_2!36113 lt!2277139) Nil!63314)) (= lt!2277394 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))))

(declare-fun b!5716163 () Bool)

(declare-fun res!2413574 () Bool)

(assert (=> b!5716163 (=> (not res!2413574) (not e!3515329))))

(assert (=> b!5716163 (= res!2413574 (= (size!40024 lt!2277394) (+ (size!40024 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))) (size!40024 (_2!36113 lt!2277139)))))))

(declare-fun b!5716162 () Bool)

(assert (=> b!5716162 (= e!3515328 (Cons!63314 (h!69762 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))) (++!13908 (t!376758 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))) (_2!36113 lt!2277139))))))

(declare-fun d!1802980 () Bool)

(assert (=> d!1802980 e!3515329))

(declare-fun res!2413575 () Bool)

(assert (=> d!1802980 (=> (not res!2413575) (not e!3515329))))

(assert (=> d!1802980 (= res!2413575 (= (content!11499 lt!2277394) ((_ map or) (content!11499 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))) (content!11499 (_2!36113 lt!2277139)))))))

(assert (=> d!1802980 (= lt!2277394 e!3515328)))

(declare-fun c!1007721 () Bool)

(assert (=> d!1802980 (= c!1007721 ((_ is Nil!63314) (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))))))

(assert (=> d!1802980 (= (++!13908 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)) (_2!36113 lt!2277139)) lt!2277394)))

(assert (= (and d!1802980 c!1007721) b!5716161))

(assert (= (and d!1802980 (not c!1007721)) b!5716162))

(assert (= (and d!1802980 res!2413575) b!5716163))

(assert (= (and b!5716163 res!2413574) b!5716164))

(declare-fun m!6669762 () Bool)

(assert (=> b!5716163 m!6669762))

(assert (=> b!5716163 m!6668046))

(declare-fun m!6669764 () Bool)

(assert (=> b!5716163 m!6669764))

(assert (=> b!5716163 m!6668724))

(declare-fun m!6669766 () Bool)

(assert (=> b!5716162 m!6669766))

(declare-fun m!6669768 () Bool)

(assert (=> d!1802980 m!6669768))

(assert (=> d!1802980 m!6668046))

(declare-fun m!6669770 () Bool)

(assert (=> d!1802980 m!6669770))

(assert (=> d!1802980 m!6668732))

(assert (=> d!1802542 d!1802980))

(assert (=> d!1802542 d!1802540))

(declare-fun bm!436361 () Bool)

(declare-fun call!436368 () Bool)

(declare-fun call!436367 () Bool)

(assert (=> bm!436361 (= call!436368 call!436367)))

(declare-fun b!5716165 () Bool)

(declare-fun res!2413577 () Bool)

(declare-fun e!3515335 () Bool)

(assert (=> b!5716165 (=> res!2413577 e!3515335)))

(assert (=> b!5716165 (= res!2413577 (not ((_ is Concat!24558) (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292)))))))

(declare-fun e!3515336 () Bool)

(assert (=> b!5716165 (= e!3515336 e!3515335)))

(declare-fun b!5716166 () Bool)

(declare-fun e!3515330 () Bool)

(assert (=> b!5716166 (= e!3515335 e!3515330)))

(declare-fun res!2413580 () Bool)

(assert (=> b!5716166 (=> (not res!2413580) (not e!3515330))))

(declare-fun call!436366 () Bool)

(assert (=> b!5716166 (= res!2413580 call!436366)))

(declare-fun b!5716167 () Bool)

(declare-fun res!2413576 () Bool)

(declare-fun e!3515334 () Bool)

(assert (=> b!5716167 (=> (not res!2413576) (not e!3515334))))

(assert (=> b!5716167 (= res!2413576 call!436366)))

(assert (=> b!5716167 (= e!3515336 e!3515334)))

(declare-fun b!5716168 () Bool)

(declare-fun e!3515333 () Bool)

(assert (=> b!5716168 (= e!3515333 call!436367)))

(declare-fun b!5716169 () Bool)

(assert (=> b!5716169 (= e!3515330 call!436368)))

(declare-fun b!5716170 () Bool)

(assert (=> b!5716170 (= e!3515334 call!436368)))

(declare-fun d!1802982 () Bool)

(declare-fun res!2413579 () Bool)

(declare-fun e!3515331 () Bool)

(assert (=> d!1802982 (=> res!2413579 e!3515331)))

(assert (=> d!1802982 (= res!2413579 ((_ is ElementMatch!15713) (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))))))

(assert (=> d!1802982 (= (validRegex!7449 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))) e!3515331)))

(declare-fun b!5716171 () Bool)

(declare-fun e!3515332 () Bool)

(assert (=> b!5716171 (= e!3515332 e!3515336)))

(declare-fun c!1007723 () Bool)

(assert (=> b!5716171 (= c!1007723 ((_ is Union!15713) (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))))))

(declare-fun c!1007722 () Bool)

(declare-fun bm!436362 () Bool)

(assert (=> bm!436362 (= call!436367 (validRegex!7449 (ite c!1007722 (reg!16042 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))) (ite c!1007723 (regTwo!31939 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))) (regTwo!31938 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292)))))))))

(declare-fun bm!436363 () Bool)

(assert (=> bm!436363 (= call!436366 (validRegex!7449 (ite c!1007723 (regOne!31939 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))) (regOne!31938 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))))))))

(declare-fun b!5716172 () Bool)

(assert (=> b!5716172 (= e!3515332 e!3515333)))

(declare-fun res!2413578 () Bool)

(assert (=> b!5716172 (= res!2413578 (not (nullable!5745 (reg!16042 (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))))))))

(assert (=> b!5716172 (=> (not res!2413578) (not e!3515333))))

(declare-fun b!5716173 () Bool)

(assert (=> b!5716173 (= e!3515331 e!3515332)))

(assert (=> b!5716173 (= c!1007722 ((_ is Star!15713) (ite c!1007491 (regOne!31939 r!7292) (regOne!31938 r!7292))))))

(assert (= (and d!1802982 (not res!2413579)) b!5716173))

(assert (= (and b!5716173 c!1007722) b!5716172))

(assert (= (and b!5716173 (not c!1007722)) b!5716171))

(assert (= (and b!5716172 res!2413578) b!5716168))

(assert (= (and b!5716171 c!1007723) b!5716167))

(assert (= (and b!5716171 (not c!1007723)) b!5716165))

(assert (= (and b!5716167 res!2413576) b!5716170))

(assert (= (and b!5716165 (not res!2413577)) b!5716166))

(assert (= (and b!5716166 res!2413580) b!5716169))

(assert (= (or b!5716170 b!5716169) bm!436361))

(assert (= (or b!5716167 b!5716166) bm!436363))

(assert (= (or b!5716168 bm!436361) bm!436362))

(declare-fun m!6669772 () Bool)

(assert (=> bm!436362 m!6669772))

(declare-fun m!6669774 () Bool)

(assert (=> bm!436363 m!6669774))

(declare-fun m!6669776 () Bool)

(assert (=> b!5716172 m!6669776))

(assert (=> bm!436251 d!1802982))

(declare-fun b!5716174 () Bool)

(declare-fun e!3515338 () Bool)

(assert (=> b!5716174 (= e!3515338 (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277095)))))))))

(declare-fun d!1802984 () Bool)

(declare-fun c!1007724 () Bool)

(assert (=> d!1802984 (= c!1007724 e!3515338)))

(declare-fun res!2413581 () Bool)

(assert (=> d!1802984 (=> (not res!2413581) (not e!3515338))))

(assert (=> d!1802984 (= res!2413581 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277095))))))))

(declare-fun e!3515339 () (InoxSet Context!10194))

(assert (=> d!1802984 (= (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277095))) (h!69762 s!2326)) e!3515339)))

(declare-fun b!5716175 () Bool)

(declare-fun call!436369 () (InoxSet Context!10194))

(assert (=> b!5716175 (= e!3515339 ((_ map or) call!436369 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277095)))))) (h!69762 s!2326))))))

(declare-fun b!5716176 () Bool)

(declare-fun e!3515337 () (InoxSet Context!10194))

(assert (=> b!5716176 (= e!3515337 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436364 () Bool)

(assert (=> bm!436364 (= call!436369 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277095))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277095)))))) (h!69762 s!2326)))))

(declare-fun b!5716177 () Bool)

(assert (=> b!5716177 (= e!3515337 call!436369)))

(declare-fun b!5716178 () Bool)

(assert (=> b!5716178 (= e!3515339 e!3515337)))

(declare-fun c!1007725 () Bool)

(assert (=> b!5716178 (= c!1007725 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277095))))))))

(assert (= (and d!1802984 res!2413581) b!5716174))

(assert (= (and d!1802984 c!1007724) b!5716175))

(assert (= (and d!1802984 (not c!1007724)) b!5716178))

(assert (= (and b!5716178 c!1007725) b!5716177))

(assert (= (and b!5716178 (not c!1007725)) b!5716176))

(assert (= (or b!5716175 b!5716177) bm!436364))

(declare-fun m!6669778 () Bool)

(assert (=> b!5716174 m!6669778))

(declare-fun m!6669780 () Bool)

(assert (=> b!5716175 m!6669780))

(declare-fun m!6669782 () Bool)

(assert (=> bm!436364 m!6669782))

(assert (=> b!5715325 d!1802984))

(declare-fun bs!1335400 () Bool)

(declare-fun d!1802986 () Bool)

(assert (= bs!1335400 (and d!1802986 d!1802648)))

(declare-fun lambda!308818 () Int)

(assert (=> bs!1335400 (= lambda!308818 lambda!308761)))

(declare-fun bs!1335401 () Bool)

(assert (= bs!1335401 (and d!1802986 d!1802606)))

(assert (=> bs!1335401 (= lambda!308818 lambda!308758)))

(declare-fun bs!1335402 () Bool)

(assert (= bs!1335402 (and d!1802986 b!5714528)))

(assert (=> bs!1335402 (= lambda!308818 lambda!308687)))

(declare-fun bs!1335403 () Bool)

(assert (= bs!1335403 (and d!1802986 d!1802958)))

(assert (=> bs!1335403 (= lambda!308818 lambda!308811)))

(declare-fun bs!1335404 () Bool)

(assert (= bs!1335404 (and d!1802986 d!1802682)))

(assert (=> bs!1335404 (= lambda!308818 lambda!308776)))

(declare-fun bs!1335405 () Bool)

(assert (= bs!1335405 (and d!1802986 d!1802650)))

(assert (=> bs!1335405 (= lambda!308818 lambda!308762)))

(declare-fun bs!1335406 () Bool)

(assert (= bs!1335406 (and d!1802986 d!1802678)))

(assert (=> bs!1335406 (= lambda!308818 lambda!308770)))

(declare-fun bs!1335407 () Bool)

(assert (= bs!1335407 (and d!1802986 d!1802680)))

(assert (=> bs!1335407 (= lambda!308818 lambda!308773)))

(declare-fun e!3515343 () Bool)

(assert (=> d!1802986 e!3515343))

(declare-fun res!2413582 () Bool)

(assert (=> d!1802986 (=> (not res!2413582) (not e!3515343))))

(declare-fun lt!2277395 () Regex!15713)

(assert (=> d!1802986 (= res!2413582 (validRegex!7449 lt!2277395))))

(declare-fun e!3515345 () Regex!15713)

(assert (=> d!1802986 (= lt!2277395 e!3515345)))

(declare-fun c!1007726 () Bool)

(declare-fun e!3515340 () Bool)

(assert (=> d!1802986 (= c!1007726 e!3515340)))

(declare-fun res!2413583 () Bool)

(assert (=> d!1802986 (=> (not res!2413583) (not e!3515340))))

(assert (=> d!1802986 (= res!2413583 ((_ is Cons!63315) (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> d!1802986 (forall!14848 (t!376759 (exprs!5597 (h!69764 zl!343))) lambda!308818)))

(assert (=> d!1802986 (= (generalisedConcat!1328 (t!376759 (exprs!5597 (h!69764 zl!343)))) lt!2277395)))

(declare-fun b!5716179 () Bool)

(declare-fun e!3515341 () Bool)

(assert (=> b!5716179 (= e!3515343 e!3515341)))

(declare-fun c!1007728 () Bool)

(assert (=> b!5716179 (= c!1007728 (isEmpty!35188 (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716180 () Bool)

(assert (=> b!5716180 (= e!3515341 (isEmptyExpr!1221 lt!2277395))))

(declare-fun b!5716181 () Bool)

(declare-fun e!3515342 () Regex!15713)

(assert (=> b!5716181 (= e!3515342 EmptyExpr!15713)))

(declare-fun b!5716182 () Bool)

(declare-fun e!3515344 () Bool)

(assert (=> b!5716182 (= e!3515344 (isConcat!744 lt!2277395))))

(declare-fun b!5716183 () Bool)

(assert (=> b!5716183 (= e!3515342 (Concat!24558 (h!69763 (t!376759 (exprs!5597 (h!69764 zl!343)))) (generalisedConcat!1328 (t!376759 (t!376759 (exprs!5597 (h!69764 zl!343)))))))))

(declare-fun b!5716184 () Bool)

(assert (=> b!5716184 (= e!3515345 (h!69763 (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716185 () Bool)

(assert (=> b!5716185 (= e!3515340 (isEmpty!35188 (t!376759 (t!376759 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun b!5716186 () Bool)

(assert (=> b!5716186 (= e!3515344 (= lt!2277395 (head!12107 (t!376759 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun b!5716187 () Bool)

(assert (=> b!5716187 (= e!3515345 e!3515342)))

(declare-fun c!1007729 () Bool)

(assert (=> b!5716187 (= c!1007729 ((_ is Cons!63315) (t!376759 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716188 () Bool)

(assert (=> b!5716188 (= e!3515341 e!3515344)))

(declare-fun c!1007727 () Bool)

(assert (=> b!5716188 (= c!1007727 (isEmpty!35188 (tail!11202 (t!376759 (exprs!5597 (h!69764 zl!343))))))))

(assert (= (and d!1802986 res!2413583) b!5716185))

(assert (= (and d!1802986 c!1007726) b!5716184))

(assert (= (and d!1802986 (not c!1007726)) b!5716187))

(assert (= (and b!5716187 c!1007729) b!5716183))

(assert (= (and b!5716187 (not c!1007729)) b!5716181))

(assert (= (and d!1802986 res!2413582) b!5716179))

(assert (= (and b!5716179 c!1007728) b!5716180))

(assert (= (and b!5716179 (not c!1007728)) b!5716188))

(assert (= (and b!5716188 c!1007727) b!5716186))

(assert (= (and b!5716188 (not c!1007727)) b!5716182))

(declare-fun m!6669784 () Bool)

(assert (=> b!5716188 m!6669784))

(assert (=> b!5716188 m!6669784))

(declare-fun m!6669786 () Bool)

(assert (=> b!5716188 m!6669786))

(declare-fun m!6669788 () Bool)

(assert (=> b!5716182 m!6669788))

(declare-fun m!6669790 () Bool)

(assert (=> b!5716186 m!6669790))

(declare-fun m!6669792 () Bool)

(assert (=> b!5716185 m!6669792))

(declare-fun m!6669794 () Bool)

(assert (=> b!5716183 m!6669794))

(declare-fun m!6669796 () Bool)

(assert (=> b!5716180 m!6669796))

(assert (=> b!5716179 m!6667990))

(declare-fun m!6669798 () Bool)

(assert (=> d!1802986 m!6669798))

(declare-fun m!6669800 () Bool)

(assert (=> d!1802986 m!6669800))

(assert (=> b!5715570 d!1802986))

(declare-fun b!5716190 () Bool)

(declare-fun e!3515348 () Bool)

(assert (=> b!5716190 (= e!3515348 (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 lt!2277124)))))))

(declare-fun bm!436365 () Bool)

(declare-fun call!436373 () List!63439)

(declare-fun call!436370 () List!63439)

(assert (=> bm!436365 (= call!436373 call!436370)))

(declare-fun b!5716191 () Bool)

(declare-fun e!3515346 () (InoxSet Context!10194))

(declare-fun call!436372 () (InoxSet Context!10194))

(assert (=> b!5716191 (= e!3515346 call!436372)))

(declare-fun b!5716192 () Bool)

(declare-fun e!3515351 () (InoxSet Context!10194))

(assert (=> b!5716192 (= e!3515351 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716193 () Bool)

(declare-fun e!3515350 () (InoxSet Context!10194))

(declare-fun call!436371 () (InoxSet Context!10194))

(declare-fun call!436375 () (InoxSet Context!10194))

(assert (=> b!5716193 (= e!3515350 ((_ map or) call!436371 call!436375))))

(declare-fun bm!436366 () Bool)

(declare-fun call!436374 () (InoxSet Context!10194))

(assert (=> bm!436366 (= call!436374 call!436375)))

(declare-fun b!5716194 () Bool)

(declare-fun c!1007731 () Bool)

(assert (=> b!5716194 (= c!1007731 ((_ is Star!15713) (h!69763 (exprs!5597 lt!2277124))))))

(assert (=> b!5716194 (= e!3515346 e!3515351)))

(declare-fun c!1007730 () Bool)

(declare-fun bm!436367 () Bool)

(assert (=> bm!436367 (= call!436371 (derivationStepZipperDown!1055 (ite c!1007730 (regOne!31939 (h!69763 (exprs!5597 lt!2277124))) (regOne!31938 (h!69763 (exprs!5597 lt!2277124)))) (ite c!1007730 (Context!10195 (t!376759 (exprs!5597 lt!2277124))) (Context!10195 call!436370)) (h!69762 s!2326)))))

(declare-fun bm!436368 () Bool)

(declare-fun c!1007732 () Bool)

(declare-fun c!1007733 () Bool)

(assert (=> bm!436368 (= call!436375 (derivationStepZipperDown!1055 (ite c!1007730 (regTwo!31939 (h!69763 (exprs!5597 lt!2277124))) (ite c!1007732 (regTwo!31938 (h!69763 (exprs!5597 lt!2277124))) (ite c!1007733 (regOne!31938 (h!69763 (exprs!5597 lt!2277124))) (reg!16042 (h!69763 (exprs!5597 lt!2277124)))))) (ite (or c!1007730 c!1007732) (Context!10195 (t!376759 (exprs!5597 lt!2277124))) (Context!10195 call!436373)) (h!69762 s!2326)))))

(declare-fun bm!436369 () Bool)

(assert (=> bm!436369 (= call!436372 call!436374)))

(declare-fun b!5716195 () Bool)

(declare-fun e!3515347 () (InoxSet Context!10194))

(assert (=> b!5716195 (= e!3515347 ((_ map or) call!436371 call!436374))))

(declare-fun b!5716196 () Bool)

(assert (=> b!5716196 (= e!3515347 e!3515346)))

(assert (=> b!5716196 (= c!1007733 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277124))))))

(declare-fun d!1802988 () Bool)

(declare-fun c!1007734 () Bool)

(assert (=> d!1802988 (= c!1007734 (and ((_ is ElementMatch!15713) (h!69763 (exprs!5597 lt!2277124))) (= (c!1007275 (h!69763 (exprs!5597 lt!2277124))) (h!69762 s!2326))))))

(declare-fun e!3515349 () (InoxSet Context!10194))

(assert (=> d!1802988 (= (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277124)) (Context!10195 (t!376759 (exprs!5597 lt!2277124))) (h!69762 s!2326)) e!3515349)))

(declare-fun b!5716189 () Bool)

(assert (=> b!5716189 (= e!3515349 e!3515350)))

(assert (=> b!5716189 (= c!1007730 ((_ is Union!15713) (h!69763 (exprs!5597 lt!2277124))))))

(declare-fun b!5716197 () Bool)

(assert (=> b!5716197 (= e!3515349 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (t!376759 (exprs!5597 lt!2277124))) true))))

(declare-fun b!5716198 () Bool)

(assert (=> b!5716198 (= c!1007732 e!3515348)))

(declare-fun res!2413584 () Bool)

(assert (=> b!5716198 (=> (not res!2413584) (not e!3515348))))

(assert (=> b!5716198 (= res!2413584 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277124))))))

(assert (=> b!5716198 (= e!3515350 e!3515347)))

(declare-fun bm!436370 () Bool)

(assert (=> bm!436370 (= call!436370 ($colon$colon!1729 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277124)))) (ite (or c!1007732 c!1007733) (regTwo!31938 (h!69763 (exprs!5597 lt!2277124))) (h!69763 (exprs!5597 lt!2277124)))))))

(declare-fun b!5716199 () Bool)

(assert (=> b!5716199 (= e!3515351 call!436372)))

(assert (= (and d!1802988 c!1007734) b!5716197))

(assert (= (and d!1802988 (not c!1007734)) b!5716189))

(assert (= (and b!5716189 c!1007730) b!5716193))

(assert (= (and b!5716189 (not c!1007730)) b!5716198))

(assert (= (and b!5716198 res!2413584) b!5716190))

(assert (= (and b!5716198 c!1007732) b!5716195))

(assert (= (and b!5716198 (not c!1007732)) b!5716196))

(assert (= (and b!5716196 c!1007733) b!5716191))

(assert (= (and b!5716196 (not c!1007733)) b!5716194))

(assert (= (and b!5716194 c!1007731) b!5716199))

(assert (= (and b!5716194 (not c!1007731)) b!5716192))

(assert (= (or b!5716191 b!5716199) bm!436365))

(assert (= (or b!5716191 b!5716199) bm!436369))

(assert (= (or b!5716195 bm!436365) bm!436370))

(assert (= (or b!5716195 bm!436369) bm!436366))

(assert (= (or b!5716193 bm!436366) bm!436368))

(assert (= (or b!5716193 b!5716195) bm!436367))

(declare-fun m!6669802 () Bool)

(assert (=> b!5716190 m!6669802))

(declare-fun m!6669804 () Bool)

(assert (=> bm!436368 m!6669804))

(declare-fun m!6669806 () Bool)

(assert (=> b!5716197 m!6669806))

(declare-fun m!6669808 () Bool)

(assert (=> bm!436370 m!6669808))

(declare-fun m!6669810 () Bool)

(assert (=> bm!436367 m!6669810))

(assert (=> bm!436199 d!1802988))

(declare-fun b!5716200 () Bool)

(declare-fun res!2413586 () Bool)

(declare-fun e!3515357 () Bool)

(assert (=> b!5716200 (=> (not res!2413586) (not e!3515357))))

(assert (=> b!5716200 (= res!2413586 (isEmpty!35186 (tail!11200 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))))

(declare-fun b!5716201 () Bool)

(declare-fun res!2413589 () Bool)

(assert (=> b!5716201 (=> (not res!2413589) (not e!3515357))))

(declare-fun call!436376 () Bool)

(assert (=> b!5716201 (= res!2413589 (not call!436376))))

(declare-fun b!5716202 () Bool)

(declare-fun res!2413591 () Bool)

(declare-fun e!3515354 () Bool)

(assert (=> b!5716202 (=> res!2413591 e!3515354)))

(assert (=> b!5716202 (= res!2413591 e!3515357)))

(declare-fun res!2413590 () Bool)

(assert (=> b!5716202 (=> (not res!2413590) (not e!3515357))))

(declare-fun lt!2277396 () Bool)

(assert (=> b!5716202 (= res!2413590 lt!2277396)))

(declare-fun d!1802990 () Bool)

(declare-fun e!3515356 () Bool)

(assert (=> d!1802990 e!3515356))

(declare-fun c!1007737 () Bool)

(assert (=> d!1802990 (= c!1007737 ((_ is EmptyExpr!15713) (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun e!3515355 () Bool)

(assert (=> d!1802990 (= lt!2277396 e!3515355)))

(declare-fun c!1007736 () Bool)

(assert (=> d!1802990 (= c!1007736 (isEmpty!35186 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))))))

(assert (=> d!1802990 (validRegex!7449 (Star!15713 (reg!16042 (regOne!31938 r!7292))))))

(assert (=> d!1802990 (= (matchR!7898 (Star!15713 (reg!16042 (regOne!31938 r!7292))) (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))) lt!2277396)))

(declare-fun b!5716203 () Bool)

(declare-fun e!3515358 () Bool)

(declare-fun e!3515353 () Bool)

(assert (=> b!5716203 (= e!3515358 e!3515353)))

(declare-fun res!2413592 () Bool)

(assert (=> b!5716203 (=> res!2413592 e!3515353)))

(assert (=> b!5716203 (= res!2413592 call!436376)))

(declare-fun b!5716204 () Bool)

(assert (=> b!5716204 (= e!3515355 (nullable!5745 (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun b!5716205 () Bool)

(declare-fun res!2413588 () Bool)

(assert (=> b!5716205 (=> res!2413588 e!3515354)))

(assert (=> b!5716205 (= res!2413588 (not ((_ is ElementMatch!15713) (Star!15713 (reg!16042 (regOne!31938 r!7292))))))))

(declare-fun e!3515352 () Bool)

(assert (=> b!5716205 (= e!3515352 e!3515354)))

(declare-fun b!5716206 () Bool)

(assert (=> b!5716206 (= e!3515355 (matchR!7898 (derivativeStep!4516 (Star!15713 (reg!16042 (regOne!31938 r!7292))) (head!12105 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)))) (tail!11200 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))))

(declare-fun b!5716207 () Bool)

(declare-fun res!2413585 () Bool)

(assert (=> b!5716207 (=> res!2413585 e!3515353)))

(assert (=> b!5716207 (= res!2413585 (not (isEmpty!35186 (tail!11200 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))))))))

(declare-fun bm!436371 () Bool)

(assert (=> bm!436371 (= call!436376 (isEmpty!35186 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))))))

(declare-fun b!5716208 () Bool)

(assert (=> b!5716208 (= e!3515356 e!3515352)))

(declare-fun c!1007735 () Bool)

(assert (=> b!5716208 (= c!1007735 ((_ is EmptyLang!15713) (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun b!5716209 () Bool)

(assert (=> b!5716209 (= e!3515354 e!3515358)))

(declare-fun res!2413587 () Bool)

(assert (=> b!5716209 (=> (not res!2413587) (not e!3515358))))

(assert (=> b!5716209 (= res!2413587 (not lt!2277396))))

(declare-fun b!5716210 () Bool)

(assert (=> b!5716210 (= e!3515352 (not lt!2277396))))

(declare-fun b!5716211 () Bool)

(assert (=> b!5716211 (= e!3515357 (= (head!12105 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))) (c!1007275 (Star!15713 (reg!16042 (regOne!31938 r!7292))))))))

(declare-fun b!5716212 () Bool)

(assert (=> b!5716212 (= e!3515356 (= lt!2277396 call!436376))))

(declare-fun b!5716213 () Bool)

(assert (=> b!5716213 (= e!3515353 (not (= (head!12105 (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144))) (c!1007275 (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))))

(assert (= (and d!1802990 c!1007736) b!5716204))

(assert (= (and d!1802990 (not c!1007736)) b!5716206))

(assert (= (and d!1802990 c!1007737) b!5716212))

(assert (= (and d!1802990 (not c!1007737)) b!5716208))

(assert (= (and b!5716208 c!1007735) b!5716210))

(assert (= (and b!5716208 (not c!1007735)) b!5716205))

(assert (= (and b!5716205 (not res!2413588)) b!5716202))

(assert (= (and b!5716202 res!2413590) b!5716201))

(assert (= (and b!5716201 res!2413589) b!5716200))

(assert (= (and b!5716200 res!2413586) b!5716211))

(assert (= (and b!5716202 (not res!2413591)) b!5716209))

(assert (= (and b!5716209 res!2413587) b!5716203))

(assert (= (and b!5716203 (not res!2413592)) b!5716207))

(assert (= (and b!5716207 (not res!2413585)) b!5716213))

(assert (= (or b!5716212 b!5716201 b!5716203) bm!436371))

(declare-fun m!6669812 () Bool)

(assert (=> b!5716204 m!6669812))

(assert (=> d!1802990 m!6668046))

(declare-fun m!6669814 () Bool)

(assert (=> d!1802990 m!6669814))

(assert (=> d!1802990 m!6668996))

(assert (=> b!5716213 m!6668046))

(declare-fun m!6669816 () Bool)

(assert (=> b!5716213 m!6669816))

(assert (=> b!5716206 m!6668046))

(assert (=> b!5716206 m!6669816))

(assert (=> b!5716206 m!6669816))

(declare-fun m!6669818 () Bool)

(assert (=> b!5716206 m!6669818))

(assert (=> b!5716206 m!6668046))

(declare-fun m!6669820 () Bool)

(assert (=> b!5716206 m!6669820))

(assert (=> b!5716206 m!6669818))

(assert (=> b!5716206 m!6669820))

(declare-fun m!6669822 () Bool)

(assert (=> b!5716206 m!6669822))

(assert (=> b!5716200 m!6668046))

(assert (=> b!5716200 m!6669820))

(assert (=> b!5716200 m!6669820))

(declare-fun m!6669824 () Bool)

(assert (=> b!5716200 m!6669824))

(assert (=> b!5716207 m!6668046))

(assert (=> b!5716207 m!6669820))

(assert (=> b!5716207 m!6669820))

(assert (=> b!5716207 m!6669824))

(assert (=> b!5716211 m!6668046))

(assert (=> b!5716211 m!6669816))

(assert (=> bm!436371 m!6668046))

(assert (=> bm!436371 m!6669814))

(assert (=> d!1802628 d!1802990))

(assert (=> d!1802628 d!1802702))

(declare-fun d!1802992 () Bool)

(assert (=> d!1802992 (matchR!7898 (Star!15713 (reg!16042 (regOne!31938 r!7292))) (++!13908 (_1!36113 lt!2277144) (_2!36113 lt!2277144)))))

(assert (=> d!1802992 true))

(declare-fun _$125!297 () Unit!156384)

(assert (=> d!1802992 (= (choose!43226 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144) (_2!36113 lt!2277144)) _$125!297)))

(declare-fun bs!1335408 () Bool)

(assert (= bs!1335408 d!1802992))

(assert (=> bs!1335408 m!6668046))

(assert (=> bs!1335408 m!6668046))

(assert (=> bs!1335408 m!6668992))

(assert (=> d!1802628 d!1802992))

(declare-fun bm!436372 () Bool)

(declare-fun call!436379 () Bool)

(declare-fun call!436378 () Bool)

(assert (=> bm!436372 (= call!436379 call!436378)))

(declare-fun b!5716214 () Bool)

(declare-fun res!2413594 () Bool)

(declare-fun e!3515364 () Bool)

(assert (=> b!5716214 (=> res!2413594 e!3515364)))

(assert (=> b!5716214 (= res!2413594 (not ((_ is Concat!24558) (Star!15713 (reg!16042 (regOne!31938 r!7292))))))))

(declare-fun e!3515365 () Bool)

(assert (=> b!5716214 (= e!3515365 e!3515364)))

(declare-fun b!5716215 () Bool)

(declare-fun e!3515359 () Bool)

(assert (=> b!5716215 (= e!3515364 e!3515359)))

(declare-fun res!2413597 () Bool)

(assert (=> b!5716215 (=> (not res!2413597) (not e!3515359))))

(declare-fun call!436377 () Bool)

(assert (=> b!5716215 (= res!2413597 call!436377)))

(declare-fun b!5716216 () Bool)

(declare-fun res!2413593 () Bool)

(declare-fun e!3515363 () Bool)

(assert (=> b!5716216 (=> (not res!2413593) (not e!3515363))))

(assert (=> b!5716216 (= res!2413593 call!436377)))

(assert (=> b!5716216 (= e!3515365 e!3515363)))

(declare-fun b!5716217 () Bool)

(declare-fun e!3515362 () Bool)

(assert (=> b!5716217 (= e!3515362 call!436378)))

(declare-fun b!5716218 () Bool)

(assert (=> b!5716218 (= e!3515359 call!436379)))

(declare-fun b!5716219 () Bool)

(assert (=> b!5716219 (= e!3515363 call!436379)))

(declare-fun d!1802994 () Bool)

(declare-fun res!2413596 () Bool)

(declare-fun e!3515360 () Bool)

(assert (=> d!1802994 (=> res!2413596 e!3515360)))

(assert (=> d!1802994 (= res!2413596 ((_ is ElementMatch!15713) (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))

(assert (=> d!1802994 (= (validRegex!7449 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) e!3515360)))

(declare-fun b!5716220 () Bool)

(declare-fun e!3515361 () Bool)

(assert (=> b!5716220 (= e!3515361 e!3515365)))

(declare-fun c!1007739 () Bool)

(assert (=> b!5716220 (= c!1007739 ((_ is Union!15713) (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun c!1007738 () Bool)

(declare-fun bm!436373 () Bool)

(assert (=> bm!436373 (= call!436378 (validRegex!7449 (ite c!1007738 (reg!16042 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (ite c!1007739 (regTwo!31939 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (regTwo!31938 (Star!15713 (reg!16042 (regOne!31938 r!7292))))))))))

(declare-fun bm!436374 () Bool)

(assert (=> bm!436374 (= call!436377 (validRegex!7449 (ite c!1007739 (regOne!31939 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (regOne!31938 (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))))

(declare-fun b!5716221 () Bool)

(assert (=> b!5716221 (= e!3515361 e!3515362)))

(declare-fun res!2413595 () Bool)

(assert (=> b!5716221 (= res!2413595 (not (nullable!5745 (reg!16042 (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))))

(assert (=> b!5716221 (=> (not res!2413595) (not e!3515362))))

(declare-fun b!5716222 () Bool)

(assert (=> b!5716222 (= e!3515360 e!3515361)))

(assert (=> b!5716222 (= c!1007738 ((_ is Star!15713) (Star!15713 (reg!16042 (regOne!31938 r!7292)))))))

(assert (= (and d!1802994 (not res!2413596)) b!5716222))

(assert (= (and b!5716222 c!1007738) b!5716221))

(assert (= (and b!5716222 (not c!1007738)) b!5716220))

(assert (= (and b!5716221 res!2413595) b!5716217))

(assert (= (and b!5716220 c!1007739) b!5716216))

(assert (= (and b!5716220 (not c!1007739)) b!5716214))

(assert (= (and b!5716216 res!2413593) b!5716219))

(assert (= (and b!5716214 (not res!2413594)) b!5716215))

(assert (= (and b!5716215 res!2413597) b!5716218))

(assert (= (or b!5716219 b!5716218) bm!436372))

(assert (= (or b!5716216 b!5716215) bm!436374))

(assert (= (or b!5716217 bm!436372) bm!436373))

(declare-fun m!6669826 () Bool)

(assert (=> bm!436373 m!6669826))

(declare-fun m!6669828 () Bool)

(assert (=> bm!436374 m!6669828))

(declare-fun m!6669830 () Bool)

(assert (=> b!5716221 m!6669830))

(assert (=> d!1802628 d!1802994))

(declare-fun d!1802996 () Bool)

(assert (=> d!1802996 (= (isEmpty!35186 (tail!11200 lt!2277140)) ((_ is Nil!63314) (tail!11200 lt!2277140)))))

(assert (=> b!5715461 d!1802996))

(assert (=> b!5715461 d!1802768))

(declare-fun d!1802998 () Bool)

(declare-fun c!1007740 () Bool)

(assert (=> d!1802998 (= c!1007740 (isEmpty!35186 (tail!11200 lt!2277105)))))

(declare-fun e!3515366 () Bool)

(assert (=> d!1802998 (= (matchZipper!1851 (derivationStepZipper!1796 lt!2277101 (head!12105 lt!2277105)) (tail!11200 lt!2277105)) e!3515366)))

(declare-fun b!5716223 () Bool)

(assert (=> b!5716223 (= e!3515366 (nullableZipper!1663 (derivationStepZipper!1796 lt!2277101 (head!12105 lt!2277105))))))

(declare-fun b!5716224 () Bool)

(assert (=> b!5716224 (= e!3515366 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 lt!2277101 (head!12105 lt!2277105)) (head!12105 (tail!11200 lt!2277105))) (tail!11200 (tail!11200 lt!2277105))))))

(assert (= (and d!1802998 c!1007740) b!5716223))

(assert (= (and d!1802998 (not c!1007740)) b!5716224))

(assert (=> d!1802998 m!6668938))

(assert (=> d!1802998 m!6668954))

(assert (=> b!5716223 m!6668936))

(declare-fun m!6669832 () Bool)

(assert (=> b!5716223 m!6669832))

(assert (=> b!5716224 m!6668938))

(assert (=> b!5716224 m!6669288))

(assert (=> b!5716224 m!6668936))

(assert (=> b!5716224 m!6669288))

(declare-fun m!6669834 () Bool)

(assert (=> b!5716224 m!6669834))

(assert (=> b!5716224 m!6668938))

(assert (=> b!5716224 m!6669292))

(assert (=> b!5716224 m!6669834))

(assert (=> b!5716224 m!6669292))

(declare-fun m!6669836 () Bool)

(assert (=> b!5716224 m!6669836))

(assert (=> b!5715396 d!1802998))

(declare-fun bs!1335409 () Bool)

(declare-fun d!1803000 () Bool)

(assert (= bs!1335409 (and d!1803000 b!5714534)))

(declare-fun lambda!308819 () Int)

(assert (=> bs!1335409 (= (= (head!12105 lt!2277105) (h!69762 s!2326)) (= lambda!308819 lambda!308681))))

(declare-fun bs!1335410 () Bool)

(assert (= bs!1335410 (and d!1803000 d!1802600)))

(assert (=> bs!1335410 (= (= (head!12105 lt!2277105) (h!69762 s!2326)) (= lambda!308819 lambda!308755))))

(declare-fun bs!1335411 () Bool)

(assert (= bs!1335411 (and d!1803000 d!1802862)))

(assert (=> bs!1335411 (= (= (head!12105 lt!2277105) (head!12105 (t!376758 s!2326))) (= lambda!308819 lambda!308803))))

(declare-fun bs!1335412 () Bool)

(assert (= bs!1335412 (and d!1803000 d!1802740)))

(assert (=> bs!1335412 (= lambda!308819 lambda!308788)))

(declare-fun bs!1335413 () Bool)

(assert (= bs!1335413 (and d!1803000 d!1802816)))

(assert (=> bs!1335413 (= (= (head!12105 lt!2277105) (head!12105 (t!376758 s!2326))) (= lambda!308819 lambda!308800))))

(declare-fun bs!1335414 () Bool)

(assert (= bs!1335414 (and d!1803000 d!1802898)))

(assert (=> bs!1335414 (= (= (head!12105 lt!2277105) (head!12105 (_1!36113 lt!2277144))) (= lambda!308819 lambda!308807))))

(declare-fun bs!1335415 () Bool)

(assert (= bs!1335415 (and d!1803000 d!1802892)))

(assert (=> bs!1335415 (= (= (head!12105 lt!2277105) (head!12105 (t!376758 s!2326))) (= lambda!308819 lambda!308806))))

(assert (=> d!1803000 true))

(assert (=> d!1803000 (= (derivationStepZipper!1796 lt!2277101 (head!12105 lt!2277105)) (flatMap!1326 lt!2277101 lambda!308819))))

(declare-fun bs!1335416 () Bool)

(assert (= bs!1335416 d!1803000))

(declare-fun m!6669838 () Bool)

(assert (=> bs!1335416 m!6669838))

(assert (=> b!5715396 d!1803000))

(assert (=> b!5715396 d!1802742))

(assert (=> b!5715396 d!1802744))

(declare-fun bs!1335417 () Bool)

(declare-fun b!5716230 () Bool)

(assert (= bs!1335417 (and b!5716230 d!1802448)))

(declare-fun lambda!308820 () Int)

(assert (=> bs!1335417 (not (= lambda!308820 lambda!308742))))

(declare-fun bs!1335418 () Bool)

(assert (= bs!1335418 (and b!5716230 b!5715849)))

(assert (=> bs!1335418 (not (= lambda!308820 lambda!308799))))

(declare-fun bs!1335419 () Bool)

(assert (= bs!1335419 (and b!5716230 b!5714499)))

(assert (=> bs!1335419 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 lt!2277132) lt!2277097)) (= lambda!308820 lambda!308685))))

(declare-fun bs!1335420 () Bool)

(assert (= bs!1335420 (and b!5716230 d!1802776)))

(assert (=> bs!1335420 (not (= lambda!308820 lambda!308794))))

(declare-fun bs!1335421 () Bool)

(assert (= bs!1335421 (and b!5716230 d!1802660)))

(assert (=> bs!1335421 (not (= lambda!308820 lambda!308765))))

(declare-fun bs!1335422 () Bool)

(assert (= bs!1335422 (and b!5716230 d!1802658)))

(assert (=> bs!1335422 (not (= lambda!308820 lambda!308763))))

(declare-fun bs!1335423 () Bool)

(assert (= bs!1335423 (and b!5716230 b!5714517)))

(assert (=> bs!1335423 (not (= lambda!308820 lambda!308679))))

(assert (=> bs!1335420 (not (= lambda!308820 lambda!308793))))

(declare-fun bs!1335424 () Bool)

(assert (= bs!1335424 (and b!5716230 d!1802700)))

(assert (=> bs!1335424 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 lt!2277132) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308820 lambda!308782))))

(declare-fun bs!1335425 () Bool)

(assert (= bs!1335425 (and b!5716230 b!5716132)))

(assert (=> bs!1335425 (= (and (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 (regOne!31939 r!7292))) (= (regOne!31939 lt!2277132) (regOne!31939 r!7292))) (= lambda!308820 lambda!308809))))

(declare-fun bs!1335426 () Bool)

(assert (= bs!1335426 (and b!5716230 d!1802714)))

(assert (=> bs!1335426 (not (= lambda!308820 lambda!308787))))

(declare-fun bs!1335427 () Bool)

(assert (= bs!1335427 (and b!5716230 d!1802970)))

(assert (=> bs!1335427 (not (= lambda!308820 lambda!308816))))

(assert (=> bs!1335421 (not (= lambda!308820 lambda!308764))))

(assert (=> bs!1335427 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 lt!2277132) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308820 lambda!308817))))

(declare-fun bs!1335428 () Bool)

(assert (= bs!1335428 (and b!5716230 b!5714753)))

(assert (=> bs!1335428 (= (and (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 lt!2277132)) (= (regOne!31939 lt!2277132) lt!2277132)) (= lambda!308820 lambda!308716))))

(assert (=> bs!1335426 (not (= lambda!308820 lambda!308786))))

(declare-fun bs!1335429 () Bool)

(assert (= bs!1335429 (and b!5716230 b!5714504)))

(assert (=> bs!1335429 (not (= lambda!308820 lambda!308683))))

(declare-fun bs!1335430 () Bool)

(assert (= bs!1335430 (and b!5716230 b!5715508)))

(assert (=> bs!1335430 (not (= lambda!308820 lambda!308767))))

(declare-fun bs!1335431 () Bool)

(assert (= bs!1335431 (and b!5716230 b!5716128)))

(assert (=> bs!1335431 (not (= lambda!308820 lambda!308810))))

(assert (=> bs!1335419 (not (= lambda!308820 lambda!308686))))

(declare-fun bs!1335432 () Bool)

(assert (= bs!1335432 (and b!5716230 b!5715645)))

(assert (=> bs!1335432 (not (= lambda!308820 lambda!308785))))

(declare-fun bs!1335433 () Bool)

(assert (= bs!1335433 (and b!5716230 d!1802830)))

(assert (=> bs!1335433 (not (= lambda!308820 lambda!308801))))

(assert (=> bs!1335424 (not (= lambda!308820 lambda!308781))))

(assert (=> bs!1335417 (not (= lambda!308820 lambda!308743))))

(assert (=> bs!1335423 (not (= lambda!308820 lambda!308680))))

(declare-fun bs!1335434 () Bool)

(assert (= bs!1335434 (and b!5716230 d!1802432)))

(assert (=> bs!1335434 (not (= lambda!308820 lambda!308728))))

(declare-fun bs!1335435 () Bool)

(assert (= bs!1335435 (and b!5716230 b!5715853)))

(assert (=> bs!1335435 (= (and (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 (regTwo!31939 r!7292))) (= (regOne!31939 lt!2277132) (regTwo!31939 r!7292))) (= lambda!308820 lambda!308798))))

(declare-fun bs!1335436 () Bool)

(assert (= bs!1335436 (and b!5716230 b!5715649)))

(assert (=> bs!1335436 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 lt!2277097)) (= (regOne!31939 lt!2277132) lt!2277097)) (= lambda!308820 lambda!308784))))

(declare-fun bs!1335437 () Bool)

(assert (= bs!1335437 (and b!5716230 b!5714749)))

(assert (=> bs!1335437 (not (= lambda!308820 lambda!308717))))

(assert (=> bs!1335419 (not (= lambda!308820 lambda!308684))))

(assert (=> bs!1335429 (not (= lambda!308820 lambda!308682))))

(assert (=> bs!1335433 (not (= lambda!308820 lambda!308802))))

(declare-fun bs!1335438 () Bool)

(assert (= bs!1335438 (and b!5716230 d!1802704)))

(assert (=> bs!1335438 (not (= lambda!308820 lambda!308783))))

(declare-fun bs!1335439 () Bool)

(assert (= bs!1335439 (and b!5716230 b!5715512)))

(assert (=> bs!1335439 (= (and (= (reg!16042 (regOne!31939 lt!2277132)) (reg!16042 r!7292)) (= (regOne!31939 lt!2277132) r!7292)) (= lambda!308820 lambda!308766))))

(assert (=> b!5716230 true))

(assert (=> b!5716230 true))

(declare-fun bs!1335440 () Bool)

(declare-fun b!5716226 () Bool)

(assert (= bs!1335440 (and b!5716226 d!1802448)))

(declare-fun lambda!308821 () Int)

(assert (=> bs!1335440 (not (= lambda!308821 lambda!308742))))

(declare-fun bs!1335441 () Bool)

(assert (= bs!1335441 (and b!5716226 b!5715849)))

(assert (=> bs!1335441 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 (regTwo!31939 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 (regTwo!31939 r!7292)))) (= lambda!308821 lambda!308799))))

(declare-fun bs!1335442 () Bool)

(assert (= bs!1335442 (and b!5716226 b!5714499)))

(assert (=> bs!1335442 (not (= lambda!308821 lambda!308685))))

(declare-fun bs!1335443 () Bool)

(assert (= bs!1335443 (and b!5716226 d!1802776)))

(assert (=> bs!1335443 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) lt!2277097) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308821 lambda!308794))))

(declare-fun bs!1335444 () Bool)

(assert (= bs!1335444 (and b!5716226 d!1802660)))

(assert (=> bs!1335444 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) lt!2277097) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308821 lambda!308765))))

(declare-fun bs!1335445 () Bool)

(assert (= bs!1335445 (and b!5716226 b!5714517)))

(assert (=> bs!1335445 (not (= lambda!308821 lambda!308679))))

(assert (=> bs!1335443 (not (= lambda!308821 lambda!308793))))

(declare-fun bs!1335446 () Bool)

(assert (= bs!1335446 (and b!5716226 d!1802700)))

(assert (=> bs!1335446 (not (= lambda!308821 lambda!308782))))

(declare-fun bs!1335447 () Bool)

(assert (= bs!1335447 (and b!5716226 b!5716132)))

(assert (=> bs!1335447 (not (= lambda!308821 lambda!308809))))

(declare-fun bs!1335448 () Bool)

(assert (= bs!1335448 (and b!5716226 d!1802714)))

(assert (=> bs!1335448 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regOne!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277132)) lt!2277097)) (= lambda!308821 lambda!308787))))

(declare-fun bs!1335449 () Bool)

(assert (= bs!1335449 (and b!5716226 d!1802970)))

(assert (=> bs!1335449 (not (= lambda!308821 lambda!308816))))

(assert (=> bs!1335444 (not (= lambda!308821 lambda!308764))))

(assert (=> bs!1335449 (not (= lambda!308821 lambda!308817))))

(declare-fun bs!1335450 () Bool)

(assert (= bs!1335450 (and b!5716226 b!5714753)))

(assert (=> bs!1335450 (not (= lambda!308821 lambda!308716))))

(assert (=> bs!1335448 (not (= lambda!308821 lambda!308786))))

(declare-fun bs!1335451 () Bool)

(assert (= bs!1335451 (and b!5716226 b!5714504)))

(assert (=> bs!1335451 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) lt!2277097) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308821 lambda!308683))))

(declare-fun bs!1335452 () Bool)

(assert (= bs!1335452 (and b!5716226 b!5715508)))

(assert (=> bs!1335452 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308821 lambda!308767))))

(declare-fun bs!1335453 () Bool)

(assert (= bs!1335453 (and b!5716226 b!5716128)))

(assert (=> bs!1335453 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 (regOne!31939 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 (regOne!31939 r!7292)))) (= lambda!308821 lambda!308810))))

(assert (=> bs!1335442 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regOne!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277132)) lt!2277097)) (= lambda!308821 lambda!308686))))

(declare-fun bs!1335454 () Bool)

(assert (= bs!1335454 (and b!5716226 b!5715645)))

(assert (=> bs!1335454 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 lt!2277097)) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 lt!2277097))) (= lambda!308821 lambda!308785))))

(declare-fun bs!1335455 () Bool)

(assert (= bs!1335455 (and b!5716226 d!1802830)))

(assert (=> bs!1335455 (not (= lambda!308821 lambda!308801))))

(assert (=> bs!1335446 (not (= lambda!308821 lambda!308781))))

(assert (=> bs!1335440 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308821 lambda!308743))))

(assert (=> bs!1335445 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308821 lambda!308680))))

(declare-fun bs!1335456 () Bool)

(assert (= bs!1335456 (and b!5716226 d!1802432)))

(assert (=> bs!1335456 (not (= lambda!308821 lambda!308728))))

(declare-fun bs!1335457 () Bool)

(assert (= bs!1335457 (and b!5716226 b!5715853)))

(assert (=> bs!1335457 (not (= lambda!308821 lambda!308798))))

(declare-fun bs!1335458 () Bool)

(assert (= bs!1335458 (and b!5716226 b!5715649)))

(assert (=> bs!1335458 (not (= lambda!308821 lambda!308784))))

(declare-fun bs!1335459 () Bool)

(assert (= bs!1335459 (and b!5716226 b!5716230)))

(assert (=> bs!1335459 (not (= lambda!308821 lambda!308820))))

(declare-fun bs!1335460 () Bool)

(assert (= bs!1335460 (and b!5716226 d!1802658)))

(assert (=> bs!1335460 (not (= lambda!308821 lambda!308763))))

(declare-fun bs!1335461 () Bool)

(assert (= bs!1335461 (and b!5716226 b!5714749)))

(assert (=> bs!1335461 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 lt!2277132)) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 lt!2277132))) (= lambda!308821 lambda!308717))))

(assert (=> bs!1335442 (not (= lambda!308821 lambda!308684))))

(assert (=> bs!1335451 (not (= lambda!308821 lambda!308682))))

(assert (=> bs!1335455 (= (and (= (regOne!31938 (regOne!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308821 lambda!308802))))

(declare-fun bs!1335462 () Bool)

(assert (= bs!1335462 (and b!5716226 d!1802704)))

(assert (=> bs!1335462 (not (= lambda!308821 lambda!308783))))

(declare-fun bs!1335463 () Bool)

(assert (= bs!1335463 (and b!5716226 b!5715512)))

(assert (=> bs!1335463 (not (= lambda!308821 lambda!308766))))

(assert (=> b!5716226 true))

(assert (=> b!5716226 true))

(declare-fun d!1803002 () Bool)

(declare-fun c!1007743 () Bool)

(assert (=> d!1803002 (= c!1007743 ((_ is EmptyExpr!15713) (regOne!31939 lt!2277132)))))

(declare-fun e!3515373 () Bool)

(assert (=> d!1803002 (= (matchRSpec!2816 (regOne!31939 lt!2277132) s!2326) e!3515373)))

(declare-fun b!5716225 () Bool)

(declare-fun res!2413598 () Bool)

(declare-fun e!3515367 () Bool)

(assert (=> b!5716225 (=> res!2413598 e!3515367)))

(declare-fun call!436380 () Bool)

(assert (=> b!5716225 (= res!2413598 call!436380)))

(declare-fun e!3515372 () Bool)

(assert (=> b!5716225 (= e!3515372 e!3515367)))

(declare-fun call!436381 () Bool)

(assert (=> b!5716226 (= e!3515372 call!436381)))

(declare-fun b!5716227 () Bool)

(declare-fun c!1007741 () Bool)

(assert (=> b!5716227 (= c!1007741 ((_ is ElementMatch!15713) (regOne!31939 lt!2277132)))))

(declare-fun e!3515371 () Bool)

(declare-fun e!3515368 () Bool)

(assert (=> b!5716227 (= e!3515371 e!3515368)))

(declare-fun b!5716228 () Bool)

(assert (=> b!5716228 (= e!3515368 (= s!2326 (Cons!63314 (c!1007275 (regOne!31939 lt!2277132)) Nil!63314)))))

(declare-fun b!5716229 () Bool)

(assert (=> b!5716229 (= e!3515373 e!3515371)))

(declare-fun res!2413599 () Bool)

(assert (=> b!5716229 (= res!2413599 (not ((_ is EmptyLang!15713) (regOne!31939 lt!2277132))))))

(assert (=> b!5716229 (=> (not res!2413599) (not e!3515371))))

(declare-fun bm!436375 () Bool)

(assert (=> bm!436375 (= call!436380 (isEmpty!35186 s!2326))))

(assert (=> b!5716230 (= e!3515367 call!436381)))

(declare-fun b!5716231 () Bool)

(assert (=> b!5716231 (= e!3515373 call!436380)))

(declare-fun b!5716232 () Bool)

(declare-fun e!3515370 () Bool)

(assert (=> b!5716232 (= e!3515370 (matchRSpec!2816 (regTwo!31939 (regOne!31939 lt!2277132)) s!2326))))

(declare-fun b!5716233 () Bool)

(declare-fun c!1007742 () Bool)

(assert (=> b!5716233 (= c!1007742 ((_ is Union!15713) (regOne!31939 lt!2277132)))))

(declare-fun e!3515369 () Bool)

(assert (=> b!5716233 (= e!3515368 e!3515369)))

(declare-fun b!5716234 () Bool)

(assert (=> b!5716234 (= e!3515369 e!3515372)))

(declare-fun c!1007744 () Bool)

(assert (=> b!5716234 (= c!1007744 ((_ is Star!15713) (regOne!31939 lt!2277132)))))

(declare-fun b!5716235 () Bool)

(assert (=> b!5716235 (= e!3515369 e!3515370)))

(declare-fun res!2413600 () Bool)

(assert (=> b!5716235 (= res!2413600 (matchRSpec!2816 (regOne!31939 (regOne!31939 lt!2277132)) s!2326))))

(assert (=> b!5716235 (=> res!2413600 e!3515370)))

(declare-fun bm!436376 () Bool)

(assert (=> bm!436376 (= call!436381 (Exists!2813 (ite c!1007744 lambda!308820 lambda!308821)))))

(assert (= (and d!1803002 c!1007743) b!5716231))

(assert (= (and d!1803002 (not c!1007743)) b!5716229))

(assert (= (and b!5716229 res!2413599) b!5716227))

(assert (= (and b!5716227 c!1007741) b!5716228))

(assert (= (and b!5716227 (not c!1007741)) b!5716233))

(assert (= (and b!5716233 c!1007742) b!5716235))

(assert (= (and b!5716233 (not c!1007742)) b!5716234))

(assert (= (and b!5716235 (not res!2413600)) b!5716232))

(assert (= (and b!5716234 c!1007744) b!5716225))

(assert (= (and b!5716234 (not c!1007744)) b!5716226))

(assert (= (and b!5716225 (not res!2413598)) b!5716230))

(assert (= (or b!5716230 b!5716226) bm!436376))

(assert (= (or b!5716231 b!5716225) bm!436375))

(assert (=> bm!436375 m!6668190))

(declare-fun m!6669840 () Bool)

(assert (=> b!5716232 m!6669840))

(declare-fun m!6669842 () Bool)

(assert (=> b!5716235 m!6669842))

(declare-fun m!6669844 () Bool)

(assert (=> bm!436376 m!6669844))

(assert (=> b!5714758 d!1803002))

(declare-fun d!1803004 () Bool)

(assert (=> d!1803004 (= (nullable!5745 (reg!16042 (regOne!31938 r!7292))) (nullableFct!1808 (reg!16042 (regOne!31938 r!7292))))))

(declare-fun bs!1335464 () Bool)

(assert (= bs!1335464 d!1803004))

(declare-fun m!6669846 () Bool)

(assert (=> bs!1335464 m!6669846))

(assert (=> b!5715668 d!1803004))

(declare-fun b!5716237 () Bool)

(declare-fun e!3515376 () Bool)

(assert (=> b!5716237 (= e!3515376 (nullable!5745 (regOne!31938 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))))))

(declare-fun bm!436377 () Bool)

(declare-fun call!436385 () List!63439)

(declare-fun call!436382 () List!63439)

(assert (=> bm!436377 (= call!436385 call!436382)))

(declare-fun b!5716238 () Bool)

(declare-fun e!3515374 () (InoxSet Context!10194))

(declare-fun call!436384 () (InoxSet Context!10194))

(assert (=> b!5716238 (= e!3515374 call!436384)))

(declare-fun b!5716239 () Bool)

(declare-fun e!3515379 () (InoxSet Context!10194))

(assert (=> b!5716239 (= e!3515379 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716240 () Bool)

(declare-fun e!3515378 () (InoxSet Context!10194))

(declare-fun call!436383 () (InoxSet Context!10194))

(declare-fun call!436387 () (InoxSet Context!10194))

(assert (=> b!5716240 (= e!3515378 ((_ map or) call!436383 call!436387))))

(declare-fun bm!436378 () Bool)

(declare-fun call!436386 () (InoxSet Context!10194))

(assert (=> bm!436378 (= call!436386 call!436387)))

(declare-fun b!5716241 () Bool)

(declare-fun c!1007746 () Bool)

(assert (=> b!5716241 (= c!1007746 ((_ is Star!15713) (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))))))

(assert (=> b!5716241 (= e!3515374 e!3515379)))

(declare-fun bm!436379 () Bool)

(declare-fun c!1007745 () Bool)

(assert (=> bm!436379 (= call!436383 (derivationStepZipperDown!1055 (ite c!1007745 (regOne!31939 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))) (regOne!31938 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))) (ite c!1007745 (ite c!1007571 lt!2277119 (Context!10195 call!436276)) (Context!10195 call!436382)) (h!69762 s!2326)))))

(declare-fun bm!436380 () Bool)

(declare-fun c!1007747 () Bool)

(declare-fun c!1007748 () Bool)

(assert (=> bm!436380 (= call!436387 (derivationStepZipperDown!1055 (ite c!1007745 (regTwo!31939 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))) (ite c!1007747 (regTwo!31938 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))) (ite c!1007748 (regOne!31938 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))) (reg!16042 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))))) (ite (or c!1007745 c!1007747) (ite c!1007571 lt!2277119 (Context!10195 call!436276)) (Context!10195 call!436385)) (h!69762 s!2326)))))

(declare-fun bm!436381 () Bool)

(assert (=> bm!436381 (= call!436384 call!436386)))

(declare-fun b!5716242 () Bool)

(declare-fun e!3515375 () (InoxSet Context!10194))

(assert (=> b!5716242 (= e!3515375 ((_ map or) call!436383 call!436386))))

(declare-fun b!5716243 () Bool)

(assert (=> b!5716243 (= e!3515375 e!3515374)))

(assert (=> b!5716243 (= c!1007748 ((_ is Concat!24558) (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))))))

(declare-fun d!1803006 () Bool)

(declare-fun c!1007749 () Bool)

(assert (=> d!1803006 (= c!1007749 (and ((_ is ElementMatch!15713) (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))) (= (c!1007275 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))) (h!69762 s!2326))))))

(declare-fun e!3515377 () (InoxSet Context!10194))

(assert (=> d!1803006 (= (derivationStepZipperDown!1055 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))) (ite c!1007571 lt!2277119 (Context!10195 call!436276)) (h!69762 s!2326)) e!3515377)))

(declare-fun b!5716236 () Bool)

(assert (=> b!5716236 (= e!3515377 e!3515378)))

(assert (=> b!5716236 (= c!1007745 ((_ is Union!15713) (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))))))

(declare-fun b!5716244 () Bool)

(assert (=> b!5716244 (= e!3515377 (store ((as const (Array Context!10194 Bool)) false) (ite c!1007571 lt!2277119 (Context!10195 call!436276)) true))))

(declare-fun b!5716245 () Bool)

(assert (=> b!5716245 (= c!1007747 e!3515376)))

(declare-fun res!2413601 () Bool)

(assert (=> b!5716245 (=> (not res!2413601) (not e!3515376))))

(assert (=> b!5716245 (= res!2413601 ((_ is Concat!24558) (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))))))

(assert (=> b!5716245 (= e!3515378 e!3515375)))

(declare-fun bm!436382 () Bool)

(assert (=> bm!436382 (= call!436382 ($colon$colon!1729 (exprs!5597 (ite c!1007571 lt!2277119 (Context!10195 call!436276))) (ite (or c!1007747 c!1007748) (regTwo!31938 (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292))))) (ite c!1007571 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))))))

(declare-fun b!5716246 () Bool)

(assert (=> b!5716246 (= e!3515379 call!436384)))

(assert (= (and d!1803006 c!1007749) b!5716244))

(assert (= (and d!1803006 (not c!1007749)) b!5716236))

(assert (= (and b!5716236 c!1007745) b!5716240))

(assert (= (and b!5716236 (not c!1007745)) b!5716245))

(assert (= (and b!5716245 res!2413601) b!5716237))

(assert (= (and b!5716245 c!1007747) b!5716242))

(assert (= (and b!5716245 (not c!1007747)) b!5716243))

(assert (= (and b!5716243 c!1007748) b!5716238))

(assert (= (and b!5716243 (not c!1007748)) b!5716241))

(assert (= (and b!5716241 c!1007746) b!5716246))

(assert (= (and b!5716241 (not c!1007746)) b!5716239))

(assert (= (or b!5716238 b!5716246) bm!436377))

(assert (= (or b!5716238 b!5716246) bm!436381))

(assert (= (or b!5716242 bm!436377) bm!436382))

(assert (= (or b!5716242 bm!436381) bm!436378))

(assert (= (or b!5716240 bm!436378) bm!436380))

(assert (= (or b!5716240 b!5716242) bm!436379))

(declare-fun m!6669848 () Bool)

(assert (=> b!5716237 m!6669848))

(declare-fun m!6669850 () Bool)

(assert (=> bm!436380 m!6669850))

(declare-fun m!6669852 () Bool)

(assert (=> b!5716244 m!6669852))

(declare-fun m!6669854 () Bool)

(assert (=> bm!436382 m!6669854))

(declare-fun m!6669856 () Bool)

(assert (=> bm!436379 m!6669856))

(assert (=> bm!436273 d!1803006))

(declare-fun d!1803008 () Bool)

(assert (=> d!1803008 (= (isEmpty!35186 (_1!36113 lt!2277144)) ((_ is Nil!63314) (_1!36113 lt!2277144)))))

(assert (=> d!1802718 d!1803008))

(assert (=> d!1802718 d!1802812))

(assert (=> bs!1335202 d!1802500))

(declare-fun d!1803010 () Bool)

(assert (=> d!1803010 (= (isEmpty!35186 (tail!11200 (_2!36113 lt!2277144))) ((_ is Nil!63314) (tail!11200 (_2!36113 lt!2277144))))))

(assert (=> b!5715539 d!1803010))

(assert (=> b!5715539 d!1802786))

(declare-fun bs!1335465 () Bool)

(declare-fun b!5716252 () Bool)

(assert (= bs!1335465 (and b!5716252 d!1802448)))

(declare-fun lambda!308822 () Int)

(assert (=> bs!1335465 (not (= lambda!308822 lambda!308742))))

(declare-fun bs!1335466 () Bool)

(assert (= bs!1335466 (and b!5716252 b!5715849)))

(assert (=> bs!1335466 (not (= lambda!308822 lambda!308799))))

(declare-fun bs!1335467 () Bool)

(assert (= bs!1335467 (and b!5716252 b!5714499)))

(assert (=> bs!1335467 (= (and (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 lt!2277097) lt!2277097)) (= lambda!308822 lambda!308685))))

(declare-fun bs!1335468 () Bool)

(assert (= bs!1335468 (and b!5716252 d!1802776)))

(assert (=> bs!1335468 (not (= lambda!308822 lambda!308794))))

(declare-fun bs!1335469 () Bool)

(assert (= bs!1335469 (and b!5716252 b!5716226)))

(assert (=> bs!1335469 (not (= lambda!308822 lambda!308821))))

(declare-fun bs!1335470 () Bool)

(assert (= bs!1335470 (and b!5716252 d!1802660)))

(assert (=> bs!1335470 (not (= lambda!308822 lambda!308765))))

(declare-fun bs!1335471 () Bool)

(assert (= bs!1335471 (and b!5716252 b!5714517)))

(assert (=> bs!1335471 (not (= lambda!308822 lambda!308679))))

(assert (=> bs!1335468 (not (= lambda!308822 lambda!308793))))

(declare-fun bs!1335472 () Bool)

(assert (= bs!1335472 (and b!5716252 d!1802700)))

(assert (=> bs!1335472 (= (and (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 lt!2277097) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308822 lambda!308782))))

(declare-fun bs!1335473 () Bool)

(assert (= bs!1335473 (and b!5716252 b!5716132)))

(assert (=> bs!1335473 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 (regOne!31939 r!7292))) (= (regTwo!31939 lt!2277097) (regOne!31939 r!7292))) (= lambda!308822 lambda!308809))))

(declare-fun bs!1335474 () Bool)

(assert (= bs!1335474 (and b!5716252 d!1802714)))

(assert (=> bs!1335474 (not (= lambda!308822 lambda!308787))))

(declare-fun bs!1335475 () Bool)

(assert (= bs!1335475 (and b!5716252 d!1802970)))

(assert (=> bs!1335475 (not (= lambda!308822 lambda!308816))))

(assert (=> bs!1335470 (not (= lambda!308822 lambda!308764))))

(assert (=> bs!1335475 (= (and (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 lt!2277097) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308822 lambda!308817))))

(declare-fun bs!1335476 () Bool)

(assert (= bs!1335476 (and b!5716252 b!5714753)))

(assert (=> bs!1335476 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 lt!2277132)) (= (regTwo!31939 lt!2277097) lt!2277132)) (= lambda!308822 lambda!308716))))

(assert (=> bs!1335474 (not (= lambda!308822 lambda!308786))))

(declare-fun bs!1335477 () Bool)

(assert (= bs!1335477 (and b!5716252 b!5714504)))

(assert (=> bs!1335477 (not (= lambda!308822 lambda!308683))))

(declare-fun bs!1335478 () Bool)

(assert (= bs!1335478 (and b!5716252 b!5715508)))

(assert (=> bs!1335478 (not (= lambda!308822 lambda!308767))))

(declare-fun bs!1335479 () Bool)

(assert (= bs!1335479 (and b!5716252 b!5716128)))

(assert (=> bs!1335479 (not (= lambda!308822 lambda!308810))))

(assert (=> bs!1335467 (not (= lambda!308822 lambda!308686))))

(declare-fun bs!1335480 () Bool)

(assert (= bs!1335480 (and b!5716252 b!5715645)))

(assert (=> bs!1335480 (not (= lambda!308822 lambda!308785))))

(declare-fun bs!1335481 () Bool)

(assert (= bs!1335481 (and b!5716252 d!1802830)))

(assert (=> bs!1335481 (not (= lambda!308822 lambda!308801))))

(assert (=> bs!1335472 (not (= lambda!308822 lambda!308781))))

(assert (=> bs!1335465 (not (= lambda!308822 lambda!308743))))

(assert (=> bs!1335471 (not (= lambda!308822 lambda!308680))))

(declare-fun bs!1335482 () Bool)

(assert (= bs!1335482 (and b!5716252 d!1802432)))

(assert (=> bs!1335482 (not (= lambda!308822 lambda!308728))))

(declare-fun bs!1335483 () Bool)

(assert (= bs!1335483 (and b!5716252 b!5715853)))

(assert (=> bs!1335483 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 (regTwo!31939 r!7292))) (= (regTwo!31939 lt!2277097) (regTwo!31939 r!7292))) (= lambda!308822 lambda!308798))))

(declare-fun bs!1335484 () Bool)

(assert (= bs!1335484 (and b!5716252 b!5715649)))

(assert (=> bs!1335484 (= (and (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 lt!2277097)) (= (regTwo!31939 lt!2277097) lt!2277097)) (= lambda!308822 lambda!308784))))

(declare-fun bs!1335485 () Bool)

(assert (= bs!1335485 (and b!5716252 b!5716230)))

(assert (=> bs!1335485 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 (regOne!31939 lt!2277132))) (= (regTwo!31939 lt!2277097) (regOne!31939 lt!2277132))) (= lambda!308822 lambda!308820))))

(declare-fun bs!1335486 () Bool)

(assert (= bs!1335486 (and b!5716252 d!1802658)))

(assert (=> bs!1335486 (not (= lambda!308822 lambda!308763))))

(declare-fun bs!1335487 () Bool)

(assert (= bs!1335487 (and b!5716252 b!5714749)))

(assert (=> bs!1335487 (not (= lambda!308822 lambda!308717))))

(assert (=> bs!1335467 (not (= lambda!308822 lambda!308684))))

(assert (=> bs!1335477 (not (= lambda!308822 lambda!308682))))

(assert (=> bs!1335481 (not (= lambda!308822 lambda!308802))))

(declare-fun bs!1335488 () Bool)

(assert (= bs!1335488 (and b!5716252 d!1802704)))

(assert (=> bs!1335488 (not (= lambda!308822 lambda!308783))))

(declare-fun bs!1335489 () Bool)

(assert (= bs!1335489 (and b!5716252 b!5715512)))

(assert (=> bs!1335489 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regTwo!31939 lt!2277097)) (reg!16042 r!7292)) (= (regTwo!31939 lt!2277097) r!7292)) (= lambda!308822 lambda!308766))))

(assert (=> b!5716252 true))

(assert (=> b!5716252 true))

(declare-fun bs!1335490 () Bool)

(declare-fun b!5716248 () Bool)

(assert (= bs!1335490 (and b!5716248 d!1802448)))

(declare-fun lambda!308823 () Int)

(assert (=> bs!1335490 (not (= lambda!308823 lambda!308742))))

(declare-fun bs!1335491 () Bool)

(assert (= bs!1335491 (and b!5716248 b!5715849)))

(assert (=> bs!1335491 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 (regTwo!31939 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 (regTwo!31939 r!7292)))) (= lambda!308823 lambda!308799))))

(declare-fun bs!1335492 () Bool)

(assert (= bs!1335492 (and b!5716248 b!5714499)))

(assert (=> bs!1335492 (not (= lambda!308823 lambda!308685))))

(declare-fun bs!1335493 () Bool)

(assert (= bs!1335493 (and b!5716248 d!1802776)))

(assert (=> bs!1335493 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) lt!2277097) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308823 lambda!308794))))

(declare-fun bs!1335494 () Bool)

(assert (= bs!1335494 (and b!5716248 b!5716226)))

(assert (=> bs!1335494 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 (regOne!31939 lt!2277132))) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 (regOne!31939 lt!2277132)))) (= lambda!308823 lambda!308821))))

(declare-fun bs!1335495 () Bool)

(assert (= bs!1335495 (and b!5716248 d!1802660)))

(assert (=> bs!1335495 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) lt!2277097) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308823 lambda!308765))))

(declare-fun bs!1335496 () Bool)

(assert (= bs!1335496 (and b!5716248 b!5714517)))

(assert (=> bs!1335496 (not (= lambda!308823 lambda!308679))))

(assert (=> bs!1335493 (not (= lambda!308823 lambda!308793))))

(declare-fun bs!1335497 () Bool)

(assert (= bs!1335497 (and b!5716248 d!1802700)))

(assert (=> bs!1335497 (not (= lambda!308823 lambda!308782))))

(declare-fun bs!1335498 () Bool)

(assert (= bs!1335498 (and b!5716248 b!5716132)))

(assert (=> bs!1335498 (not (= lambda!308823 lambda!308809))))

(declare-fun bs!1335499 () Bool)

(assert (= bs!1335499 (and b!5716248 d!1802714)))

(assert (=> bs!1335499 (= (and (= (regOne!31938 (regTwo!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277097)) lt!2277097)) (= lambda!308823 lambda!308787))))

(declare-fun bs!1335500 () Bool)

(assert (= bs!1335500 (and b!5716248 d!1802970)))

(assert (=> bs!1335500 (not (= lambda!308823 lambda!308816))))

(assert (=> bs!1335495 (not (= lambda!308823 lambda!308764))))

(assert (=> bs!1335500 (not (= lambda!308823 lambda!308817))))

(declare-fun bs!1335501 () Bool)

(assert (= bs!1335501 (and b!5716248 b!5714753)))

(assert (=> bs!1335501 (not (= lambda!308823 lambda!308716))))

(assert (=> bs!1335499 (not (= lambda!308823 lambda!308786))))

(declare-fun bs!1335502 () Bool)

(assert (= bs!1335502 (and b!5716248 b!5714504)))

(assert (=> bs!1335502 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) lt!2277097) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308823 lambda!308683))))

(declare-fun bs!1335503 () Bool)

(assert (= bs!1335503 (and b!5716248 b!5715508)))

(assert (=> bs!1335503 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308823 lambda!308767))))

(declare-fun bs!1335504 () Bool)

(assert (= bs!1335504 (and b!5716248 b!5716128)))

(assert (=> bs!1335504 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 (regOne!31939 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 (regOne!31939 r!7292)))) (= lambda!308823 lambda!308810))))

(assert (=> bs!1335492 (= (and (= (regOne!31938 (regTwo!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277097)) lt!2277097)) (= lambda!308823 lambda!308686))))

(declare-fun bs!1335505 () Bool)

(assert (= bs!1335505 (and b!5716248 b!5715645)))

(assert (=> bs!1335505 (= (and (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 lt!2277097)) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 lt!2277097))) (= lambda!308823 lambda!308785))))

(declare-fun bs!1335506 () Bool)

(assert (= bs!1335506 (and b!5716248 d!1802830)))

(assert (=> bs!1335506 (not (= lambda!308823 lambda!308801))))

(assert (=> bs!1335497 (not (= lambda!308823 lambda!308781))))

(assert (=> bs!1335490 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308823 lambda!308743))))

(assert (=> bs!1335496 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308823 lambda!308680))))

(declare-fun bs!1335507 () Bool)

(assert (= bs!1335507 (and b!5716248 d!1802432)))

(assert (=> bs!1335507 (not (= lambda!308823 lambda!308728))))

(declare-fun bs!1335508 () Bool)

(assert (= bs!1335508 (and b!5716248 b!5715853)))

(assert (=> bs!1335508 (not (= lambda!308823 lambda!308798))))

(declare-fun bs!1335509 () Bool)

(assert (= bs!1335509 (and b!5716248 b!5715649)))

(assert (=> bs!1335509 (not (= lambda!308823 lambda!308784))))

(declare-fun bs!1335510 () Bool)

(assert (= bs!1335510 (and b!5716248 b!5716230)))

(assert (=> bs!1335510 (not (= lambda!308823 lambda!308820))))

(declare-fun bs!1335511 () Bool)

(assert (= bs!1335511 (and b!5716248 d!1802658)))

(assert (=> bs!1335511 (not (= lambda!308823 lambda!308763))))

(declare-fun bs!1335512 () Bool)

(assert (= bs!1335512 (and b!5716248 b!5714749)))

(assert (=> bs!1335512 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 lt!2277132)) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 lt!2277132))) (= lambda!308823 lambda!308717))))

(assert (=> bs!1335492 (not (= lambda!308823 lambda!308684))))

(assert (=> bs!1335502 (not (= lambda!308823 lambda!308682))))

(assert (=> bs!1335506 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regTwo!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308823 lambda!308802))))

(declare-fun bs!1335513 () Bool)

(assert (= bs!1335513 (and b!5716248 b!5716252)))

(assert (=> bs!1335513 (not (= lambda!308823 lambda!308822))))

(declare-fun bs!1335514 () Bool)

(assert (= bs!1335514 (and b!5716248 d!1802704)))

(assert (=> bs!1335514 (not (= lambda!308823 lambda!308783))))

(declare-fun bs!1335515 () Bool)

(assert (= bs!1335515 (and b!5716248 b!5715512)))

(assert (=> bs!1335515 (not (= lambda!308823 lambda!308766))))

(assert (=> b!5716248 true))

(assert (=> b!5716248 true))

(declare-fun d!1803012 () Bool)

(declare-fun c!1007752 () Bool)

(assert (=> d!1803012 (= c!1007752 ((_ is EmptyExpr!15713) (regTwo!31939 lt!2277097)))))

(declare-fun e!3515386 () Bool)

(assert (=> d!1803012 (= (matchRSpec!2816 (regTwo!31939 lt!2277097) (_1!36113 lt!2277139)) e!3515386)))

(declare-fun b!5716247 () Bool)

(declare-fun res!2413602 () Bool)

(declare-fun e!3515380 () Bool)

(assert (=> b!5716247 (=> res!2413602 e!3515380)))

(declare-fun call!436388 () Bool)

(assert (=> b!5716247 (= res!2413602 call!436388)))

(declare-fun e!3515385 () Bool)

(assert (=> b!5716247 (= e!3515385 e!3515380)))

(declare-fun call!436389 () Bool)

(assert (=> b!5716248 (= e!3515385 call!436389)))

(declare-fun b!5716249 () Bool)

(declare-fun c!1007750 () Bool)

(assert (=> b!5716249 (= c!1007750 ((_ is ElementMatch!15713) (regTwo!31939 lt!2277097)))))

(declare-fun e!3515384 () Bool)

(declare-fun e!3515381 () Bool)

(assert (=> b!5716249 (= e!3515384 e!3515381)))

(declare-fun b!5716250 () Bool)

(assert (=> b!5716250 (= e!3515381 (= (_1!36113 lt!2277139) (Cons!63314 (c!1007275 (regTwo!31939 lt!2277097)) Nil!63314)))))

(declare-fun b!5716251 () Bool)

(assert (=> b!5716251 (= e!3515386 e!3515384)))

(declare-fun res!2413603 () Bool)

(assert (=> b!5716251 (= res!2413603 (not ((_ is EmptyLang!15713) (regTwo!31939 lt!2277097))))))

(assert (=> b!5716251 (=> (not res!2413603) (not e!3515384))))

(declare-fun bm!436383 () Bool)

(assert (=> bm!436383 (= call!436388 (isEmpty!35186 (_1!36113 lt!2277139)))))

(assert (=> b!5716252 (= e!3515380 call!436389)))

(declare-fun b!5716253 () Bool)

(assert (=> b!5716253 (= e!3515386 call!436388)))

(declare-fun b!5716254 () Bool)

(declare-fun e!3515383 () Bool)

(assert (=> b!5716254 (= e!3515383 (matchRSpec!2816 (regTwo!31939 (regTwo!31939 lt!2277097)) (_1!36113 lt!2277139)))))

(declare-fun b!5716255 () Bool)

(declare-fun c!1007751 () Bool)

(assert (=> b!5716255 (= c!1007751 ((_ is Union!15713) (regTwo!31939 lt!2277097)))))

(declare-fun e!3515382 () Bool)

(assert (=> b!5716255 (= e!3515381 e!3515382)))

(declare-fun b!5716256 () Bool)

(assert (=> b!5716256 (= e!3515382 e!3515385)))

(declare-fun c!1007753 () Bool)

(assert (=> b!5716256 (= c!1007753 ((_ is Star!15713) (regTwo!31939 lt!2277097)))))

(declare-fun b!5716257 () Bool)

(assert (=> b!5716257 (= e!3515382 e!3515383)))

(declare-fun res!2413604 () Bool)

(assert (=> b!5716257 (= res!2413604 (matchRSpec!2816 (regOne!31939 (regTwo!31939 lt!2277097)) (_1!36113 lt!2277139)))))

(assert (=> b!5716257 (=> res!2413604 e!3515383)))

(declare-fun bm!436384 () Bool)

(assert (=> bm!436384 (= call!436389 (Exists!2813 (ite c!1007753 lambda!308822 lambda!308823)))))

(assert (= (and d!1803012 c!1007752) b!5716253))

(assert (= (and d!1803012 (not c!1007752)) b!5716251))

(assert (= (and b!5716251 res!2413603) b!5716249))

(assert (= (and b!5716249 c!1007750) b!5716250))

(assert (= (and b!5716249 (not c!1007750)) b!5716255))

(assert (= (and b!5716255 c!1007751) b!5716257))

(assert (= (and b!5716255 (not c!1007751)) b!5716256))

(assert (= (and b!5716257 (not res!2413604)) b!5716254))

(assert (= (and b!5716256 c!1007753) b!5716247))

(assert (= (and b!5716256 (not c!1007753)) b!5716248))

(assert (= (and b!5716247 (not res!2413602)) b!5716252))

(assert (= (or b!5716252 b!5716248) bm!436384))

(assert (= (or b!5716253 b!5716247) bm!436383))

(assert (=> bm!436383 m!6667992))

(declare-fun m!6669858 () Bool)

(assert (=> b!5716254 m!6669858))

(declare-fun m!6669860 () Bool)

(assert (=> b!5716257 m!6669860))

(declare-fun m!6669862 () Bool)

(assert (=> bm!436384 m!6669862))

(assert (=> b!5715651 d!1803012))

(assert (=> d!1802636 d!1802626))

(assert (=> d!1802636 d!1802640))

(declare-fun d!1803014 () Bool)

(assert (=> d!1803014 (= (matchR!7898 lt!2277138 lt!2277140) (matchZipper!1851 lt!2277134 lt!2277140))))

(assert (=> d!1803014 true))

(declare-fun _$44!1439 () Unit!156384)

(assert (=> d!1803014 (= (choose!43223 lt!2277134 lt!2277128 lt!2277138 lt!2277140) _$44!1439)))

(declare-fun bs!1335516 () Bool)

(assert (= bs!1335516 d!1803014))

(assert (=> bs!1335516 m!6667942))

(assert (=> bs!1335516 m!6667930))

(assert (=> d!1802636 d!1803014))

(assert (=> d!1802636 d!1802880))

(declare-fun d!1803016 () Bool)

(assert (=> d!1803016 (= (isEmpty!35186 (_2!36113 lt!2277139)) ((_ is Nil!63314) (_2!36113 lt!2277139)))))

(assert (=> d!1802394 d!1803016))

(assert (=> d!1802394 d!1802924))

(assert (=> d!1802640 d!1802878))

(assert (=> d!1802510 d!1802530))

(declare-fun d!1803018 () Bool)

(assert (=> d!1803018 (= (flatMap!1326 z!1189 lambda!308681) (dynLambda!24772 lambda!308681 (h!69764 zl!343)))))

(assert (=> d!1803018 true))

(declare-fun _$13!2378 () Unit!156384)

(assert (=> d!1803018 (= (choose!43219 z!1189 (h!69764 zl!343) lambda!308681) _$13!2378)))

(declare-fun b_lambda!215977 () Bool)

(assert (=> (not b_lambda!215977) (not d!1803018)))

(declare-fun bs!1335517 () Bool)

(assert (= bs!1335517 d!1803018))

(assert (=> bs!1335517 m!6668016))

(assert (=> bs!1335517 m!6668646))

(assert (=> d!1802510 d!1803018))

(declare-fun bm!436385 () Bool)

(declare-fun call!436392 () Bool)

(declare-fun call!436391 () Bool)

(assert (=> bm!436385 (= call!436392 call!436391)))

(declare-fun b!5716258 () Bool)

(declare-fun res!2413606 () Bool)

(declare-fun e!3515392 () Bool)

(assert (=> b!5716258 (=> res!2413606 e!3515392)))

(assert (=> b!5716258 (= res!2413606 (not ((_ is Concat!24558) (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292))))))))

(declare-fun e!3515393 () Bool)

(assert (=> b!5716258 (= e!3515393 e!3515392)))

(declare-fun b!5716259 () Bool)

(declare-fun e!3515387 () Bool)

(assert (=> b!5716259 (= e!3515392 e!3515387)))

(declare-fun res!2413609 () Bool)

(assert (=> b!5716259 (=> (not res!2413609) (not e!3515387))))

(declare-fun call!436390 () Bool)

(assert (=> b!5716259 (= res!2413609 call!436390)))

(declare-fun b!5716260 () Bool)

(declare-fun res!2413605 () Bool)

(declare-fun e!3515391 () Bool)

(assert (=> b!5716260 (=> (not res!2413605) (not e!3515391))))

(assert (=> b!5716260 (= res!2413605 call!436390)))

(assert (=> b!5716260 (= e!3515393 e!3515391)))

(declare-fun b!5716261 () Bool)

(declare-fun e!3515390 () Bool)

(assert (=> b!5716261 (= e!3515390 call!436391)))

(declare-fun b!5716262 () Bool)

(assert (=> b!5716262 (= e!3515387 call!436392)))

(declare-fun b!5716263 () Bool)

(assert (=> b!5716263 (= e!3515391 call!436392)))

(declare-fun d!1803020 () Bool)

(declare-fun res!2413608 () Bool)

(declare-fun e!3515388 () Bool)

(assert (=> d!1803020 (=> res!2413608 e!3515388)))

(assert (=> d!1803020 (= res!2413608 ((_ is ElementMatch!15713) (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))))))

(assert (=> d!1803020 (= (validRegex!7449 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))) e!3515388)))

(declare-fun b!5716264 () Bool)

(declare-fun e!3515389 () Bool)

(assert (=> b!5716264 (= e!3515389 e!3515393)))

(declare-fun c!1007755 () Bool)

(assert (=> b!5716264 (= c!1007755 ((_ is Union!15713) (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))))))

(declare-fun bm!436386 () Bool)

(declare-fun c!1007754 () Bool)

(assert (=> bm!436386 (= call!436391 (validRegex!7449 (ite c!1007754 (reg!16042 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))) (ite c!1007755 (regTwo!31939 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))) (regTwo!31938 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292))))))))))

(declare-fun bm!436387 () Bool)

(assert (=> bm!436387 (= call!436390 (validRegex!7449 (ite c!1007755 (regOne!31939 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))) (regOne!31938 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))))))))

(declare-fun b!5716265 () Bool)

(assert (=> b!5716265 (= e!3515389 e!3515390)))

(declare-fun res!2413607 () Bool)

(assert (=> b!5716265 (= res!2413607 (not (nullable!5745 (reg!16042 (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))))))))

(assert (=> b!5716265 (=> (not res!2413607) (not e!3515390))))

(declare-fun b!5716266 () Bool)

(assert (=> b!5716266 (= e!3515388 e!3515389)))

(assert (=> b!5716266 (= c!1007754 ((_ is Star!15713) (ite c!1007490 (reg!16042 r!7292) (ite c!1007491 (regTwo!31939 r!7292) (regTwo!31938 r!7292)))))))

(assert (= (and d!1803020 (not res!2413608)) b!5716266))

(assert (= (and b!5716266 c!1007754) b!5716265))

(assert (= (and b!5716266 (not c!1007754)) b!5716264))

(assert (= (and b!5716265 res!2413607) b!5716261))

(assert (= (and b!5716264 c!1007755) b!5716260))

(assert (= (and b!5716264 (not c!1007755)) b!5716258))

(assert (= (and b!5716260 res!2413605) b!5716263))

(assert (= (and b!5716258 (not res!2413606)) b!5716259))

(assert (= (and b!5716259 res!2413609) b!5716262))

(assert (= (or b!5716263 b!5716262) bm!436385))

(assert (= (or b!5716260 b!5716259) bm!436387))

(assert (= (or b!5716261 bm!436385) bm!436386))

(declare-fun m!6669864 () Bool)

(assert (=> bm!436386 m!6669864))

(declare-fun m!6669866 () Bool)

(assert (=> bm!436387 m!6669866))

(declare-fun m!6669868 () Bool)

(assert (=> b!5716265 m!6669868))

(assert (=> bm!436250 d!1803020))

(declare-fun b!5716267 () Bool)

(declare-fun res!2413611 () Bool)

(declare-fun e!3515399 () Bool)

(assert (=> b!5716267 (=> (not res!2413611) (not e!3515399))))

(assert (=> b!5716267 (= res!2413611 (isEmpty!35186 (tail!11200 (tail!11200 s!2326))))))

(declare-fun b!5716268 () Bool)

(declare-fun res!2413614 () Bool)

(assert (=> b!5716268 (=> (not res!2413614) (not e!3515399))))

(declare-fun call!436393 () Bool)

(assert (=> b!5716268 (= res!2413614 (not call!436393))))

(declare-fun b!5716269 () Bool)

(declare-fun res!2413616 () Bool)

(declare-fun e!3515396 () Bool)

(assert (=> b!5716269 (=> res!2413616 e!3515396)))

(assert (=> b!5716269 (= res!2413616 e!3515399)))

(declare-fun res!2413615 () Bool)

(assert (=> b!5716269 (=> (not res!2413615) (not e!3515399))))

(declare-fun lt!2277397 () Bool)

(assert (=> b!5716269 (= res!2413615 lt!2277397)))

(declare-fun d!1803022 () Bool)

(declare-fun e!3515398 () Bool)

(assert (=> d!1803022 e!3515398))

(declare-fun c!1007758 () Bool)

(assert (=> d!1803022 (= c!1007758 ((_ is EmptyExpr!15713) (derivativeStep!4516 r!7292 (head!12105 s!2326))))))

(declare-fun e!3515397 () Bool)

(assert (=> d!1803022 (= lt!2277397 e!3515397)))

(declare-fun c!1007757 () Bool)

(assert (=> d!1803022 (= c!1007757 (isEmpty!35186 (tail!11200 s!2326)))))

(assert (=> d!1803022 (validRegex!7449 (derivativeStep!4516 r!7292 (head!12105 s!2326)))))

(assert (=> d!1803022 (= (matchR!7898 (derivativeStep!4516 r!7292 (head!12105 s!2326)) (tail!11200 s!2326)) lt!2277397)))

(declare-fun b!5716270 () Bool)

(declare-fun e!3515400 () Bool)

(declare-fun e!3515395 () Bool)

(assert (=> b!5716270 (= e!3515400 e!3515395)))

(declare-fun res!2413617 () Bool)

(assert (=> b!5716270 (=> res!2413617 e!3515395)))

(assert (=> b!5716270 (= res!2413617 call!436393)))

(declare-fun b!5716271 () Bool)

(assert (=> b!5716271 (= e!3515397 (nullable!5745 (derivativeStep!4516 r!7292 (head!12105 s!2326))))))

(declare-fun b!5716272 () Bool)

(declare-fun res!2413613 () Bool)

(assert (=> b!5716272 (=> res!2413613 e!3515396)))

(assert (=> b!5716272 (= res!2413613 (not ((_ is ElementMatch!15713) (derivativeStep!4516 r!7292 (head!12105 s!2326)))))))

(declare-fun e!3515394 () Bool)

(assert (=> b!5716272 (= e!3515394 e!3515396)))

(declare-fun b!5716273 () Bool)

(assert (=> b!5716273 (= e!3515397 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 r!7292 (head!12105 s!2326)) (head!12105 (tail!11200 s!2326))) (tail!11200 (tail!11200 s!2326))))))

(declare-fun b!5716274 () Bool)

(declare-fun res!2413610 () Bool)

(assert (=> b!5716274 (=> res!2413610 e!3515395)))

(assert (=> b!5716274 (= res!2413610 (not (isEmpty!35186 (tail!11200 (tail!11200 s!2326)))))))

(declare-fun bm!436388 () Bool)

(assert (=> bm!436388 (= call!436393 (isEmpty!35186 (tail!11200 s!2326)))))

(declare-fun b!5716275 () Bool)

(assert (=> b!5716275 (= e!3515398 e!3515394)))

(declare-fun c!1007756 () Bool)

(assert (=> b!5716275 (= c!1007756 ((_ is EmptyLang!15713) (derivativeStep!4516 r!7292 (head!12105 s!2326))))))

(declare-fun b!5716276 () Bool)

(assert (=> b!5716276 (= e!3515396 e!3515400)))

(declare-fun res!2413612 () Bool)

(assert (=> b!5716276 (=> (not res!2413612) (not e!3515400))))

(assert (=> b!5716276 (= res!2413612 (not lt!2277397))))

(declare-fun b!5716277 () Bool)

(assert (=> b!5716277 (= e!3515394 (not lt!2277397))))

(declare-fun b!5716278 () Bool)

(assert (=> b!5716278 (= e!3515399 (= (head!12105 (tail!11200 s!2326)) (c!1007275 (derivativeStep!4516 r!7292 (head!12105 s!2326)))))))

(declare-fun b!5716279 () Bool)

(assert (=> b!5716279 (= e!3515398 (= lt!2277397 call!436393))))

(declare-fun b!5716280 () Bool)

(assert (=> b!5716280 (= e!3515395 (not (= (head!12105 (tail!11200 s!2326)) (c!1007275 (derivativeStep!4516 r!7292 (head!12105 s!2326))))))))

(assert (= (and d!1803022 c!1007757) b!5716271))

(assert (= (and d!1803022 (not c!1007757)) b!5716273))

(assert (= (and d!1803022 c!1007758) b!5716279))

(assert (= (and d!1803022 (not c!1007758)) b!5716275))

(assert (= (and b!5716275 c!1007756) b!5716277))

(assert (= (and b!5716275 (not c!1007756)) b!5716272))

(assert (= (and b!5716272 (not res!2413613)) b!5716269))

(assert (= (and b!5716269 res!2413615) b!5716268))

(assert (= (and b!5716268 res!2413614) b!5716267))

(assert (= (and b!5716267 res!2413611) b!5716278))

(assert (= (and b!5716269 (not res!2413616)) b!5716276))

(assert (= (and b!5716276 res!2413612) b!5716270))

(assert (= (and b!5716270 (not res!2413617)) b!5716274))

(assert (= (and b!5716274 (not res!2413610)) b!5716280))

(assert (= (or b!5716279 b!5716268 b!5716270) bm!436388))

(assert (=> b!5716271 m!6669112))

(declare-fun m!6669870 () Bool)

(assert (=> b!5716271 m!6669870))

(assert (=> d!1803022 m!6668206))

(assert (=> d!1803022 m!6668210))

(assert (=> d!1803022 m!6669112))

(declare-fun m!6669872 () Bool)

(assert (=> d!1803022 m!6669872))

(assert (=> b!5716280 m!6668206))

(declare-fun m!6669874 () Bool)

(assert (=> b!5716280 m!6669874))

(assert (=> b!5716273 m!6668206))

(assert (=> b!5716273 m!6669874))

(assert (=> b!5716273 m!6669112))

(assert (=> b!5716273 m!6669874))

(declare-fun m!6669876 () Bool)

(assert (=> b!5716273 m!6669876))

(assert (=> b!5716273 m!6668206))

(declare-fun m!6669878 () Bool)

(assert (=> b!5716273 m!6669878))

(assert (=> b!5716273 m!6669876))

(assert (=> b!5716273 m!6669878))

(declare-fun m!6669880 () Bool)

(assert (=> b!5716273 m!6669880))

(assert (=> b!5716267 m!6668206))

(assert (=> b!5716267 m!6669878))

(assert (=> b!5716267 m!6669878))

(declare-fun m!6669882 () Bool)

(assert (=> b!5716267 m!6669882))

(assert (=> b!5716274 m!6668206))

(assert (=> b!5716274 m!6669878))

(assert (=> b!5716274 m!6669878))

(assert (=> b!5716274 m!6669882))

(assert (=> b!5716278 m!6668206))

(assert (=> b!5716278 m!6669874))

(assert (=> bm!436388 m!6668206))

(assert (=> bm!436388 m!6668210))

(assert (=> b!5715524 d!1803022))

(declare-fun c!1007759 () Bool)

(declare-fun call!436396 () Regex!15713)

(declare-fun bm!436389 () Bool)

(assert (=> bm!436389 (= call!436396 (derivativeStep!4516 (ite c!1007759 (regOne!31939 r!7292) (regOne!31938 r!7292)) (head!12105 s!2326)))))

(declare-fun b!5716281 () Bool)

(declare-fun e!3515403 () Regex!15713)

(declare-fun call!436394 () Regex!15713)

(assert (=> b!5716281 (= e!3515403 (Union!15713 (Concat!24558 call!436394 (regTwo!31938 r!7292)) EmptyLang!15713))))

(declare-fun b!5716283 () Bool)

(declare-fun e!3515405 () Regex!15713)

(assert (=> b!5716283 (= e!3515405 EmptyLang!15713)))

(declare-fun b!5716284 () Bool)

(declare-fun e!3515401 () Regex!15713)

(assert (=> b!5716284 (= e!3515401 (ite (= (head!12105 s!2326) (c!1007275 r!7292)) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5716285 () Bool)

(declare-fun e!3515402 () Regex!15713)

(declare-fun call!436397 () Regex!15713)

(assert (=> b!5716285 (= e!3515402 (Union!15713 call!436396 call!436397))))

(declare-fun b!5716286 () Bool)

(assert (=> b!5716286 (= e!3515403 (Union!15713 (Concat!24558 call!436396 (regTwo!31938 r!7292)) call!436394))))

(declare-fun b!5716287 () Bool)

(assert (=> b!5716287 (= c!1007759 ((_ is Union!15713) r!7292))))

(assert (=> b!5716287 (= e!3515401 e!3515402)))

(declare-fun c!1007763 () Bool)

(declare-fun bm!436390 () Bool)

(declare-fun c!1007762 () Bool)

(assert (=> bm!436390 (= call!436397 (derivativeStep!4516 (ite c!1007759 (regTwo!31939 r!7292) (ite c!1007762 (reg!16042 r!7292) (ite c!1007763 (regTwo!31938 r!7292) (regOne!31938 r!7292)))) (head!12105 s!2326)))))

(declare-fun bm!436391 () Bool)

(declare-fun call!436395 () Regex!15713)

(assert (=> bm!436391 (= call!436395 call!436397)))

(declare-fun bm!436392 () Bool)

(assert (=> bm!436392 (= call!436394 call!436395)))

(declare-fun b!5716288 () Bool)

(declare-fun e!3515404 () Regex!15713)

(assert (=> b!5716288 (= e!3515404 (Concat!24558 call!436395 r!7292))))

(declare-fun b!5716282 () Bool)

(assert (=> b!5716282 (= e!3515405 e!3515401)))

(declare-fun c!1007760 () Bool)

(assert (=> b!5716282 (= c!1007760 ((_ is ElementMatch!15713) r!7292))))

(declare-fun d!1803024 () Bool)

(declare-fun lt!2277398 () Regex!15713)

(assert (=> d!1803024 (validRegex!7449 lt!2277398)))

(assert (=> d!1803024 (= lt!2277398 e!3515405)))

(declare-fun c!1007761 () Bool)

(assert (=> d!1803024 (= c!1007761 (or ((_ is EmptyExpr!15713) r!7292) ((_ is EmptyLang!15713) r!7292)))))

(assert (=> d!1803024 (validRegex!7449 r!7292)))

(assert (=> d!1803024 (= (derivativeStep!4516 r!7292 (head!12105 s!2326)) lt!2277398)))

(declare-fun b!5716289 () Bool)

(assert (=> b!5716289 (= c!1007763 (nullable!5745 (regOne!31938 r!7292)))))

(assert (=> b!5716289 (= e!3515404 e!3515403)))

(declare-fun b!5716290 () Bool)

(assert (=> b!5716290 (= e!3515402 e!3515404)))

(assert (=> b!5716290 (= c!1007762 ((_ is Star!15713) r!7292))))

(assert (= (and d!1803024 c!1007761) b!5716283))

(assert (= (and d!1803024 (not c!1007761)) b!5716282))

(assert (= (and b!5716282 c!1007760) b!5716284))

(assert (= (and b!5716282 (not c!1007760)) b!5716287))

(assert (= (and b!5716287 c!1007759) b!5716285))

(assert (= (and b!5716287 (not c!1007759)) b!5716290))

(assert (= (and b!5716290 c!1007762) b!5716288))

(assert (= (and b!5716290 (not c!1007762)) b!5716289))

(assert (= (and b!5716289 c!1007763) b!5716286))

(assert (= (and b!5716289 (not c!1007763)) b!5716281))

(assert (= (or b!5716286 b!5716281) bm!436392))

(assert (= (or b!5716288 bm!436392) bm!436391))

(assert (= (or b!5716285 bm!436391) bm!436390))

(assert (= (or b!5716285 b!5716286) bm!436389))

(assert (=> bm!436389 m!6668202))

(declare-fun m!6669884 () Bool)

(assert (=> bm!436389 m!6669884))

(assert (=> bm!436390 m!6668202))

(declare-fun m!6669886 () Bool)

(assert (=> bm!436390 m!6669886))

(declare-fun m!6669888 () Bool)

(assert (=> d!1803024 m!6669888))

(assert (=> d!1803024 m!6668044))

(declare-fun m!6669890 () Bool)

(assert (=> b!5716289 m!6669890))

(assert (=> b!5715524 d!1803024))

(assert (=> b!5715524 d!1802790))

(assert (=> b!5715524 d!1802962))

(assert (=> d!1802674 d!1802672))

(assert (=> d!1802674 d!1802670))

(declare-fun d!1803026 () Bool)

(assert (=> d!1803026 (= (matchR!7898 r!7292 s!2326) (matchRSpec!2816 r!7292 s!2326))))

(assert (=> d!1803026 true))

(declare-fun _$88!4005 () Unit!156384)

(assert (=> d!1803026 (= (choose!43213 r!7292 s!2326) _$88!4005)))

(declare-fun bs!1335518 () Bool)

(assert (= bs!1335518 d!1803026))

(assert (=> bs!1335518 m!6667958))

(assert (=> bs!1335518 m!6667956))

(assert (=> d!1802674 d!1803026))

(assert (=> d!1802674 d!1802562))

(declare-fun b!5716292 () Bool)

(declare-fun e!3515408 () Bool)

(assert (=> b!5716292 (= e!3515408 (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun bm!436393 () Bool)

(declare-fun call!436401 () List!63439)

(declare-fun call!436398 () List!63439)

(assert (=> bm!436393 (= call!436401 call!436398)))

(declare-fun b!5716293 () Bool)

(declare-fun e!3515406 () (InoxSet Context!10194))

(declare-fun call!436400 () (InoxSet Context!10194))

(assert (=> b!5716293 (= e!3515406 call!436400)))

(declare-fun b!5716294 () Bool)

(declare-fun e!3515411 () (InoxSet Context!10194))

(assert (=> b!5716294 (= e!3515411 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716295 () Bool)

(declare-fun e!3515410 () (InoxSet Context!10194))

(declare-fun call!436399 () (InoxSet Context!10194))

(declare-fun call!436403 () (InoxSet Context!10194))

(assert (=> b!5716295 (= e!3515410 ((_ map or) call!436399 call!436403))))

(declare-fun bm!436394 () Bool)

(declare-fun call!436402 () (InoxSet Context!10194))

(assert (=> bm!436394 (= call!436402 call!436403)))

(declare-fun b!5716296 () Bool)

(declare-fun c!1007765 () Bool)

(assert (=> b!5716296 (= c!1007765 ((_ is Star!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5716296 (= e!3515406 e!3515411)))

(declare-fun c!1007764 () Bool)

(declare-fun bm!436395 () Bool)

(assert (=> bm!436395 (= call!436399 (derivationStepZipperDown!1055 (ite c!1007764 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343))))) (ite c!1007764 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))) (Context!10195 call!436398)) (h!69762 s!2326)))))

(declare-fun c!1007766 () Bool)

(declare-fun bm!436396 () Bool)

(declare-fun c!1007767 () Bool)

(assert (=> bm!436396 (= call!436403 (derivationStepZipperDown!1055 (ite c!1007764 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007766 (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (ite c!1007767 (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (reg!16042 (h!69763 (exprs!5597 (h!69764 zl!343))))))) (ite (or c!1007764 c!1007766) (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))) (Context!10195 call!436401)) (h!69762 s!2326)))))

(declare-fun bm!436397 () Bool)

(assert (=> bm!436397 (= call!436400 call!436402)))

(declare-fun b!5716297 () Bool)

(declare-fun e!3515407 () (InoxSet Context!10194))

(assert (=> b!5716297 (= e!3515407 ((_ map or) call!436399 call!436402))))

(declare-fun b!5716298 () Bool)

(assert (=> b!5716298 (= e!3515407 e!3515406)))

(assert (=> b!5716298 (= c!1007767 ((_ is Concat!24558) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun d!1803028 () Bool)

(declare-fun c!1007768 () Bool)

(assert (=> d!1803028 (= c!1007768 (and ((_ is ElementMatch!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))) (= (c!1007275 (h!69763 (exprs!5597 (h!69764 zl!343)))) (h!69762 s!2326))))))

(declare-fun e!3515409 () (InoxSet Context!10194))

(assert (=> d!1803028 (= (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (h!69764 zl!343))) (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))) (h!69762 s!2326)) e!3515409)))

(declare-fun b!5716291 () Bool)

(assert (=> b!5716291 (= e!3515409 e!3515410)))

(assert (=> b!5716291 (= c!1007764 ((_ is Union!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716299 () Bool)

(assert (=> b!5716299 (= e!3515409 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343)))) true))))

(declare-fun b!5716300 () Bool)

(assert (=> b!5716300 (= c!1007766 e!3515408)))

(declare-fun res!2413618 () Bool)

(assert (=> b!5716300 (=> (not res!2413618) (not e!3515408))))

(assert (=> b!5716300 (= res!2413618 ((_ is Concat!24558) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5716300 (= e!3515410 e!3515407)))

(declare-fun bm!436398 () Bool)

(assert (=> bm!436398 (= call!436398 ($colon$colon!1729 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (h!69764 zl!343))))) (ite (or c!1007766 c!1007767) (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (h!69763 (exprs!5597 (h!69764 zl!343))))))))

(declare-fun b!5716301 () Bool)

(assert (=> b!5716301 (= e!3515411 call!436400)))

(assert (= (and d!1803028 c!1007768) b!5716299))

(assert (= (and d!1803028 (not c!1007768)) b!5716291))

(assert (= (and b!5716291 c!1007764) b!5716295))

(assert (= (and b!5716291 (not c!1007764)) b!5716300))

(assert (= (and b!5716300 res!2413618) b!5716292))

(assert (= (and b!5716300 c!1007766) b!5716297))

(assert (= (and b!5716300 (not c!1007766)) b!5716298))

(assert (= (and b!5716298 c!1007767) b!5716293))

(assert (= (and b!5716298 (not c!1007767)) b!5716296))

(assert (= (and b!5716296 c!1007765) b!5716301))

(assert (= (and b!5716296 (not c!1007765)) b!5716294))

(assert (= (or b!5716293 b!5716301) bm!436393))

(assert (= (or b!5716293 b!5716301) bm!436397))

(assert (= (or b!5716297 bm!436393) bm!436398))

(assert (= (or b!5716297 bm!436397) bm!436394))

(assert (= (or b!5716295 bm!436394) bm!436396))

(assert (= (or b!5716295 b!5716297) bm!436395))

(assert (=> b!5716292 m!6668690))

(declare-fun m!6669892 () Bool)

(assert (=> bm!436396 m!6669892))

(declare-fun m!6669894 () Bool)

(assert (=> b!5716299 m!6669894))

(declare-fun m!6669896 () Bool)

(assert (=> bm!436398 m!6669896))

(declare-fun m!6669898 () Bool)

(assert (=> bm!436395 m!6669898))

(assert (=> bm!436229 d!1803028))

(declare-fun d!1803030 () Bool)

(assert (=> d!1803030 (= (nullable!5745 (h!69763 (exprs!5597 lt!2277095))) (nullableFct!1808 (h!69763 (exprs!5597 lt!2277095))))))

(declare-fun bs!1335519 () Bool)

(assert (= bs!1335519 d!1803030))

(declare-fun m!6669900 () Bool)

(assert (=> bs!1335519 m!6669900))

(assert (=> b!5715324 d!1803030))

(declare-fun d!1803032 () Bool)

(assert (=> d!1803032 (= (head!12107 (unfocusZipperList!1141 zl!343)) (h!69763 (unfocusZipperList!1141 zl!343)))))

(assert (=> b!5715605 d!1803032))

(assert (=> b!5715675 d!1802900))

(declare-fun bm!436399 () Bool)

(declare-fun call!436406 () Bool)

(declare-fun call!436405 () Bool)

(assert (=> bm!436399 (= call!436406 call!436405)))

(declare-fun b!5716302 () Bool)

(declare-fun res!2413620 () Bool)

(declare-fun e!3515417 () Bool)

(assert (=> b!5716302 (=> res!2413620 e!3515417)))

(assert (=> b!5716302 (= res!2413620 (not ((_ is Concat!24558) lt!2277267)))))

(declare-fun e!3515418 () Bool)

(assert (=> b!5716302 (= e!3515418 e!3515417)))

(declare-fun b!5716303 () Bool)

(declare-fun e!3515412 () Bool)

(assert (=> b!5716303 (= e!3515417 e!3515412)))

(declare-fun res!2413623 () Bool)

(assert (=> b!5716303 (=> (not res!2413623) (not e!3515412))))

(declare-fun call!436404 () Bool)

(assert (=> b!5716303 (= res!2413623 call!436404)))

(declare-fun b!5716304 () Bool)

(declare-fun res!2413619 () Bool)

(declare-fun e!3515416 () Bool)

(assert (=> b!5716304 (=> (not res!2413619) (not e!3515416))))

(assert (=> b!5716304 (= res!2413619 call!436404)))

(assert (=> b!5716304 (= e!3515418 e!3515416)))

(declare-fun b!5716305 () Bool)

(declare-fun e!3515415 () Bool)

(assert (=> b!5716305 (= e!3515415 call!436405)))

(declare-fun b!5716306 () Bool)

(assert (=> b!5716306 (= e!3515412 call!436406)))

(declare-fun b!5716307 () Bool)

(assert (=> b!5716307 (= e!3515416 call!436406)))

(declare-fun d!1803034 () Bool)

(declare-fun res!2413622 () Bool)

(declare-fun e!3515413 () Bool)

(assert (=> d!1803034 (=> res!2413622 e!3515413)))

(assert (=> d!1803034 (= res!2413622 ((_ is ElementMatch!15713) lt!2277267))))

(assert (=> d!1803034 (= (validRegex!7449 lt!2277267) e!3515413)))

(declare-fun b!5716308 () Bool)

(declare-fun e!3515414 () Bool)

(assert (=> b!5716308 (= e!3515414 e!3515418)))

(declare-fun c!1007770 () Bool)

(assert (=> b!5716308 (= c!1007770 ((_ is Union!15713) lt!2277267))))

(declare-fun c!1007769 () Bool)

(declare-fun bm!436400 () Bool)

(assert (=> bm!436400 (= call!436405 (validRegex!7449 (ite c!1007769 (reg!16042 lt!2277267) (ite c!1007770 (regTwo!31939 lt!2277267) (regTwo!31938 lt!2277267)))))))

(declare-fun bm!436401 () Bool)

(assert (=> bm!436401 (= call!436404 (validRegex!7449 (ite c!1007770 (regOne!31939 lt!2277267) (regOne!31938 lt!2277267))))))

(declare-fun b!5716309 () Bool)

(assert (=> b!5716309 (= e!3515414 e!3515415)))

(declare-fun res!2413621 () Bool)

(assert (=> b!5716309 (= res!2413621 (not (nullable!5745 (reg!16042 lt!2277267))))))

(assert (=> b!5716309 (=> (not res!2413621) (not e!3515415))))

(declare-fun b!5716310 () Bool)

(assert (=> b!5716310 (= e!3515413 e!3515414)))

(assert (=> b!5716310 (= c!1007769 ((_ is Star!15713) lt!2277267))))

(assert (= (and d!1803034 (not res!2413622)) b!5716310))

(assert (= (and b!5716310 c!1007769) b!5716309))

(assert (= (and b!5716310 (not c!1007769)) b!5716308))

(assert (= (and b!5716309 res!2413621) b!5716305))

(assert (= (and b!5716308 c!1007770) b!5716304))

(assert (= (and b!5716308 (not c!1007770)) b!5716302))

(assert (= (and b!5716304 res!2413619) b!5716307))

(assert (= (and b!5716302 (not res!2413620)) b!5716303))

(assert (= (and b!5716303 res!2413623) b!5716306))

(assert (= (or b!5716307 b!5716306) bm!436399))

(assert (= (or b!5716304 b!5716303) bm!436401))

(assert (= (or b!5716305 bm!436399) bm!436400))

(declare-fun m!6669902 () Bool)

(assert (=> bm!436400 m!6669902))

(declare-fun m!6669904 () Bool)

(assert (=> bm!436401 m!6669904))

(declare-fun m!6669906 () Bool)

(assert (=> b!5716309 m!6669906))

(assert (=> d!1802504 d!1803034))

(declare-fun bs!1335520 () Bool)

(declare-fun d!1803036 () Bool)

(assert (= bs!1335520 (and d!1803036 d!1802648)))

(declare-fun lambda!308824 () Int)

(assert (=> bs!1335520 (= lambda!308824 lambda!308761)))

(declare-fun bs!1335521 () Bool)

(assert (= bs!1335521 (and d!1803036 d!1802606)))

(assert (=> bs!1335521 (= lambda!308824 lambda!308758)))

(declare-fun bs!1335522 () Bool)

(assert (= bs!1335522 (and d!1803036 b!5714528)))

(assert (=> bs!1335522 (= lambda!308824 lambda!308687)))

(declare-fun bs!1335523 () Bool)

(assert (= bs!1335523 (and d!1803036 d!1802958)))

(assert (=> bs!1335523 (= lambda!308824 lambda!308811)))

(declare-fun bs!1335524 () Bool)

(assert (= bs!1335524 (and d!1803036 d!1802682)))

(assert (=> bs!1335524 (= lambda!308824 lambda!308776)))

(declare-fun bs!1335525 () Bool)

(assert (= bs!1335525 (and d!1803036 d!1802650)))

(assert (=> bs!1335525 (= lambda!308824 lambda!308762)))

(declare-fun bs!1335526 () Bool)

(assert (= bs!1335526 (and d!1803036 d!1802986)))

(assert (=> bs!1335526 (= lambda!308824 lambda!308818)))

(declare-fun bs!1335527 () Bool)

(assert (= bs!1335527 (and d!1803036 d!1802678)))

(assert (=> bs!1335527 (= lambda!308824 lambda!308770)))

(declare-fun bs!1335528 () Bool)

(assert (= bs!1335528 (and d!1803036 d!1802680)))

(assert (=> bs!1335528 (= lambda!308824 lambda!308773)))

(declare-fun e!3515424 () Bool)

(assert (=> d!1803036 e!3515424))

(declare-fun res!2413625 () Bool)

(assert (=> d!1803036 (=> (not res!2413625) (not e!3515424))))

(declare-fun lt!2277399 () Regex!15713)

(assert (=> d!1803036 (= res!2413625 (validRegex!7449 lt!2277399))))

(declare-fun e!3515420 () Regex!15713)

(assert (=> d!1803036 (= lt!2277399 e!3515420)))

(declare-fun c!1007774 () Bool)

(declare-fun e!3515423 () Bool)

(assert (=> d!1803036 (= c!1007774 e!3515423)))

(declare-fun res!2413624 () Bool)

(assert (=> d!1803036 (=> (not res!2413624) (not e!3515423))))

(assert (=> d!1803036 (= res!2413624 ((_ is Cons!63315) (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))))))

(assert (=> d!1803036 (forall!14848 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316)) lambda!308824)))

(assert (=> d!1803036 (= (generalisedUnion!1576 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))) lt!2277399)))

(declare-fun b!5716311 () Bool)

(assert (=> b!5716311 (= e!3515420 (h!69763 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))))))

(declare-fun b!5716312 () Bool)

(declare-fun e!3515422 () Regex!15713)

(assert (=> b!5716312 (= e!3515422 EmptyLang!15713)))

(declare-fun b!5716313 () Bool)

(assert (=> b!5716313 (= e!3515420 e!3515422)))

(declare-fun c!1007771 () Bool)

(assert (=> b!5716313 (= c!1007771 ((_ is Cons!63315) (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))))))

(declare-fun b!5716314 () Bool)

(assert (=> b!5716314 (= e!3515423 (isEmpty!35188 (t!376759 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316)))))))

(declare-fun b!5716315 () Bool)

(declare-fun e!3515421 () Bool)

(assert (=> b!5716315 (= e!3515421 (isUnion!662 lt!2277399))))

(declare-fun b!5716316 () Bool)

(declare-fun e!3515419 () Bool)

(assert (=> b!5716316 (= e!3515419 (isEmptyLang!1232 lt!2277399))))

(declare-fun b!5716317 () Bool)

(assert (=> b!5716317 (= e!3515422 (Union!15713 (h!69763 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))) (generalisedUnion!1576 (t!376759 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))))))))

(declare-fun b!5716318 () Bool)

(assert (=> b!5716318 (= e!3515424 e!3515419)))

(declare-fun c!1007772 () Bool)

(assert (=> b!5716318 (= c!1007772 (isEmpty!35188 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316))))))

(declare-fun b!5716319 () Bool)

(assert (=> b!5716319 (= e!3515419 e!3515421)))

(declare-fun c!1007773 () Bool)

(assert (=> b!5716319 (= c!1007773 (isEmpty!35188 (tail!11202 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316)))))))

(declare-fun b!5716320 () Bool)

(assert (=> b!5716320 (= e!3515421 (= lt!2277399 (head!12107 (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316)))))))

(assert (= (and d!1803036 res!2413624) b!5716314))

(assert (= (and d!1803036 c!1007774) b!5716311))

(assert (= (and d!1803036 (not c!1007774)) b!5716313))

(assert (= (and b!5716313 c!1007771) b!5716317))

(assert (= (and b!5716313 (not c!1007771)) b!5716312))

(assert (= (and d!1803036 res!2413625) b!5716318))

(assert (= (and b!5716318 c!1007772) b!5716316))

(assert (= (and b!5716318 (not c!1007772)) b!5716319))

(assert (= (and b!5716319 c!1007773) b!5716320))

(assert (= (and b!5716319 (not c!1007773)) b!5716315))

(declare-fun m!6669908 () Bool)

(assert (=> d!1803036 m!6669908))

(assert (=> d!1803036 m!6668634))

(declare-fun m!6669910 () Bool)

(assert (=> d!1803036 m!6669910))

(declare-fun m!6669912 () Bool)

(assert (=> b!5716315 m!6669912))

(assert (=> b!5716318 m!6668634))

(declare-fun m!6669914 () Bool)

(assert (=> b!5716318 m!6669914))

(assert (=> b!5716320 m!6668634))

(declare-fun m!6669916 () Bool)

(assert (=> b!5716320 m!6669916))

(declare-fun m!6669918 () Bool)

(assert (=> b!5716314 m!6669918))

(declare-fun m!6669920 () Bool)

(assert (=> b!5716316 m!6669920))

(declare-fun m!6669922 () Bool)

(assert (=> b!5716317 m!6669922))

(assert (=> b!5716319 m!6668634))

(declare-fun m!6669924 () Bool)

(assert (=> b!5716319 m!6669924))

(assert (=> b!5716319 m!6669924))

(declare-fun m!6669926 () Bool)

(assert (=> b!5716319 m!6669926))

(assert (=> d!1802504 d!1803036))

(declare-fun bs!1335529 () Bool)

(declare-fun d!1803038 () Bool)

(assert (= bs!1335529 (and d!1803038 d!1802648)))

(declare-fun lambda!308825 () Int)

(assert (=> bs!1335529 (= lambda!308825 lambda!308761)))

(declare-fun bs!1335530 () Bool)

(assert (= bs!1335530 (and d!1803038 d!1803036)))

(assert (=> bs!1335530 (= lambda!308825 lambda!308824)))

(declare-fun bs!1335531 () Bool)

(assert (= bs!1335531 (and d!1803038 d!1802606)))

(assert (=> bs!1335531 (= lambda!308825 lambda!308758)))

(declare-fun bs!1335532 () Bool)

(assert (= bs!1335532 (and d!1803038 b!5714528)))

(assert (=> bs!1335532 (= lambda!308825 lambda!308687)))

(declare-fun bs!1335533 () Bool)

(assert (= bs!1335533 (and d!1803038 d!1802958)))

(assert (=> bs!1335533 (= lambda!308825 lambda!308811)))

(declare-fun bs!1335534 () Bool)

(assert (= bs!1335534 (and d!1803038 d!1802682)))

(assert (=> bs!1335534 (= lambda!308825 lambda!308776)))

(declare-fun bs!1335535 () Bool)

(assert (= bs!1335535 (and d!1803038 d!1802650)))

(assert (=> bs!1335535 (= lambda!308825 lambda!308762)))

(declare-fun bs!1335536 () Bool)

(assert (= bs!1335536 (and d!1803038 d!1802986)))

(assert (=> bs!1335536 (= lambda!308825 lambda!308818)))

(declare-fun bs!1335537 () Bool)

(assert (= bs!1335537 (and d!1803038 d!1802678)))

(assert (=> bs!1335537 (= lambda!308825 lambda!308770)))

(declare-fun bs!1335538 () Bool)

(assert (= bs!1335538 (and d!1803038 d!1802680)))

(assert (=> bs!1335538 (= lambda!308825 lambda!308773)))

(declare-fun lt!2277400 () List!63439)

(assert (=> d!1803038 (forall!14848 lt!2277400 lambda!308825)))

(declare-fun e!3515425 () List!63439)

(assert (=> d!1803038 (= lt!2277400 e!3515425)))

(declare-fun c!1007775 () Bool)

(assert (=> d!1803038 (= c!1007775 ((_ is Cons!63316) (Cons!63316 lt!2277095 Nil!63316)))))

(assert (=> d!1803038 (= (unfocusZipperList!1141 (Cons!63316 lt!2277095 Nil!63316)) lt!2277400)))

(declare-fun b!5716321 () Bool)

(assert (=> b!5716321 (= e!3515425 (Cons!63315 (generalisedConcat!1328 (exprs!5597 (h!69764 (Cons!63316 lt!2277095 Nil!63316)))) (unfocusZipperList!1141 (t!376760 (Cons!63316 lt!2277095 Nil!63316)))))))

(declare-fun b!5716322 () Bool)

(assert (=> b!5716322 (= e!3515425 Nil!63315)))

(assert (= (and d!1803038 c!1007775) b!5716321))

(assert (= (and d!1803038 (not c!1007775)) b!5716322))

(declare-fun m!6669928 () Bool)

(assert (=> d!1803038 m!6669928))

(declare-fun m!6669930 () Bool)

(assert (=> b!5716321 m!6669930))

(declare-fun m!6669932 () Bool)

(assert (=> b!5716321 m!6669932))

(assert (=> d!1802504 d!1803038))

(declare-fun b!5716323 () Bool)

(declare-fun e!3515426 () List!63438)

(assert (=> b!5716323 (= e!3515426 (_2!36113 (get!21829 lt!2277330)))))

(declare-fun b!5716326 () Bool)

(declare-fun e!3515427 () Bool)

(declare-fun lt!2277401 () List!63438)

(assert (=> b!5716326 (= e!3515427 (or (not (= (_2!36113 (get!21829 lt!2277330)) Nil!63314)) (= lt!2277401 (_1!36113 (get!21829 lt!2277330)))))))

(declare-fun b!5716325 () Bool)

(declare-fun res!2413626 () Bool)

(assert (=> b!5716325 (=> (not res!2413626) (not e!3515427))))

(assert (=> b!5716325 (= res!2413626 (= (size!40024 lt!2277401) (+ (size!40024 (_1!36113 (get!21829 lt!2277330))) (size!40024 (_2!36113 (get!21829 lt!2277330))))))))

(declare-fun b!5716324 () Bool)

(assert (=> b!5716324 (= e!3515426 (Cons!63314 (h!69762 (_1!36113 (get!21829 lt!2277330))) (++!13908 (t!376758 (_1!36113 (get!21829 lt!2277330))) (_2!36113 (get!21829 lt!2277330)))))))

(declare-fun d!1803040 () Bool)

(assert (=> d!1803040 e!3515427))

(declare-fun res!2413627 () Bool)

(assert (=> d!1803040 (=> (not res!2413627) (not e!3515427))))

(assert (=> d!1803040 (= res!2413627 (= (content!11499 lt!2277401) ((_ map or) (content!11499 (_1!36113 (get!21829 lt!2277330))) (content!11499 (_2!36113 (get!21829 lt!2277330))))))))

(assert (=> d!1803040 (= lt!2277401 e!3515426)))

(declare-fun c!1007776 () Bool)

(assert (=> d!1803040 (= c!1007776 ((_ is Nil!63314) (_1!36113 (get!21829 lt!2277330))))))

(assert (=> d!1803040 (= (++!13908 (_1!36113 (get!21829 lt!2277330)) (_2!36113 (get!21829 lt!2277330))) lt!2277401)))

(assert (= (and d!1803040 c!1007776) b!5716323))

(assert (= (and d!1803040 (not c!1007776)) b!5716324))

(assert (= (and d!1803040 res!2413627) b!5716325))

(assert (= (and b!5716325 res!2413626) b!5716326))

(declare-fun m!6669934 () Bool)

(assert (=> b!5716325 m!6669934))

(declare-fun m!6669936 () Bool)

(assert (=> b!5716325 m!6669936))

(declare-fun m!6669938 () Bool)

(assert (=> b!5716325 m!6669938))

(declare-fun m!6669940 () Bool)

(assert (=> b!5716324 m!6669940))

(declare-fun m!6669942 () Bool)

(assert (=> d!1803040 m!6669942))

(declare-fun m!6669944 () Bool)

(assert (=> d!1803040 m!6669944))

(declare-fun m!6669946 () Bool)

(assert (=> d!1803040 m!6669946))

(assert (=> b!5715503 d!1803040))

(assert (=> b!5715503 d!1802934))

(assert (=> bm!436161 d!1802558))

(declare-fun d!1803042 () Bool)

(declare-fun lt!2277402 () Int)

(assert (=> d!1803042 (>= lt!2277402 0)))

(declare-fun e!3515428 () Int)

(assert (=> d!1803042 (= lt!2277402 e!3515428)))

(declare-fun c!1007777 () Bool)

(assert (=> d!1803042 (= c!1007777 ((_ is Nil!63314) lt!2277325))))

(assert (=> d!1803042 (= (size!40024 lt!2277325) lt!2277402)))

(declare-fun b!5716327 () Bool)

(assert (=> b!5716327 (= e!3515428 0)))

(declare-fun b!5716328 () Bool)

(assert (=> b!5716328 (= e!3515428 (+ 1 (size!40024 (t!376758 lt!2277325))))))

(assert (= (and d!1803042 c!1007777) b!5716327))

(assert (= (and d!1803042 (not c!1007777)) b!5716328))

(declare-fun m!6669948 () Bool)

(assert (=> b!5716328 m!6669948))

(assert (=> b!5715496 d!1803042))

(declare-fun d!1803044 () Bool)

(declare-fun lt!2277403 () Int)

(assert (=> d!1803044 (>= lt!2277403 0)))

(declare-fun e!3515429 () Int)

(assert (=> d!1803044 (= lt!2277403 e!3515429)))

(declare-fun c!1007778 () Bool)

(assert (=> d!1803044 (= c!1007778 ((_ is Nil!63314) (_1!36113 lt!2277139)))))

(assert (=> d!1803044 (= (size!40024 (_1!36113 lt!2277139)) lt!2277403)))

(declare-fun b!5716329 () Bool)

(assert (=> b!5716329 (= e!3515429 0)))

(declare-fun b!5716330 () Bool)

(assert (=> b!5716330 (= e!3515429 (+ 1 (size!40024 (t!376758 (_1!36113 lt!2277139)))))))

(assert (= (and d!1803044 c!1007778) b!5716329))

(assert (= (and d!1803044 (not c!1007778)) b!5716330))

(declare-fun m!6669950 () Bool)

(assert (=> b!5716330 m!6669950))

(assert (=> b!5715496 d!1803044))

(assert (=> b!5715496 d!1802930))

(declare-fun d!1803046 () Bool)

(assert (=> d!1803046 (= (isDefined!12425 lt!2277227) (not (isEmpty!35190 lt!2277227)))))

(declare-fun bs!1335539 () Bool)

(assert (= bs!1335539 d!1803046))

(declare-fun m!6669952 () Bool)

(assert (=> bs!1335539 m!6669952))

(assert (=> b!5714944 d!1803046))

(declare-fun d!1803048 () Bool)

(declare-fun res!2413632 () Bool)

(declare-fun e!3515434 () Bool)

(assert (=> d!1803048 (=> res!2413632 e!3515434)))

(assert (=> d!1803048 (= res!2413632 ((_ is Nil!63316) lt!2277289))))

(assert (=> d!1803048 (= (noDuplicate!1642 lt!2277289) e!3515434)))

(declare-fun b!5716335 () Bool)

(declare-fun e!3515435 () Bool)

(assert (=> b!5716335 (= e!3515434 e!3515435)))

(declare-fun res!2413633 () Bool)

(assert (=> b!5716335 (=> (not res!2413633) (not e!3515435))))

(declare-fun contains!19852 (List!63440 Context!10194) Bool)

(assert (=> b!5716335 (= res!2413633 (not (contains!19852 (t!376760 lt!2277289) (h!69764 lt!2277289))))))

(declare-fun b!5716336 () Bool)

(assert (=> b!5716336 (= e!3515435 (noDuplicate!1642 (t!376760 lt!2277289)))))

(assert (= (and d!1803048 (not res!2413632)) b!5716335))

(assert (= (and b!5716335 res!2413633) b!5716336))

(declare-fun m!6669954 () Bool)

(assert (=> b!5716335 m!6669954))

(declare-fun m!6669956 () Bool)

(assert (=> b!5716336 m!6669956))

(assert (=> d!1802552 d!1803048))

(declare-fun d!1803050 () Bool)

(declare-fun e!3515444 () Bool)

(assert (=> d!1803050 e!3515444))

(declare-fun res!2413638 () Bool)

(assert (=> d!1803050 (=> (not res!2413638) (not e!3515444))))

(declare-fun res!2413639 () List!63440)

(assert (=> d!1803050 (= res!2413638 (noDuplicate!1642 res!2413639))))

(declare-fun e!3515443 () Bool)

(assert (=> d!1803050 e!3515443))

(assert (=> d!1803050 (= (choose!43221 z!1189) res!2413639)))

(declare-fun b!5716344 () Bool)

(declare-fun e!3515442 () Bool)

(declare-fun tp!1583541 () Bool)

(assert (=> b!5716344 (= e!3515442 tp!1583541)))

(declare-fun tp!1583542 () Bool)

(declare-fun b!5716343 () Bool)

(assert (=> b!5716343 (= e!3515443 (and (inv!82529 (h!69764 res!2413639)) e!3515442 tp!1583542))))

(declare-fun b!5716345 () Bool)

(assert (=> b!5716345 (= e!3515444 (= (content!11500 res!2413639) z!1189))))

(assert (= b!5716343 b!5716344))

(assert (= (and d!1803050 ((_ is Cons!63316) res!2413639)) b!5716343))

(assert (= (and d!1803050 res!2413638) b!5716345))

(declare-fun m!6669958 () Bool)

(assert (=> d!1803050 m!6669958))

(declare-fun m!6669960 () Bool)

(assert (=> b!5716343 m!6669960))

(declare-fun m!6669962 () Bool)

(assert (=> b!5716345 m!6669962))

(assert (=> d!1802552 d!1803050))

(declare-fun bs!1335540 () Bool)

(declare-fun b!5716351 () Bool)

(assert (= bs!1335540 (and b!5716351 d!1802448)))

(declare-fun lambda!308826 () Int)

(assert (=> bs!1335540 (not (= lambda!308826 lambda!308742))))

(declare-fun bs!1335541 () Bool)

(assert (= bs!1335541 (and b!5716351 b!5715849)))

(assert (=> bs!1335541 (not (= lambda!308826 lambda!308799))))

(declare-fun bs!1335542 () Bool)

(assert (= bs!1335542 (and b!5716351 b!5714499)))

(assert (=> bs!1335542 (= (and (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 lt!2277097) lt!2277097)) (= lambda!308826 lambda!308685))))

(declare-fun bs!1335543 () Bool)

(assert (= bs!1335543 (and b!5716351 d!1802776)))

(assert (=> bs!1335543 (not (= lambda!308826 lambda!308794))))

(declare-fun bs!1335544 () Bool)

(assert (= bs!1335544 (and b!5716351 b!5716226)))

(assert (=> bs!1335544 (not (= lambda!308826 lambda!308821))))

(declare-fun bs!1335545 () Bool)

(assert (= bs!1335545 (and b!5716351 d!1802660)))

(assert (=> bs!1335545 (not (= lambda!308826 lambda!308765))))

(declare-fun bs!1335546 () Bool)

(assert (= bs!1335546 (and b!5716351 b!5714517)))

(assert (=> bs!1335546 (not (= lambda!308826 lambda!308679))))

(assert (=> bs!1335543 (not (= lambda!308826 lambda!308793))))

(declare-fun bs!1335547 () Bool)

(assert (= bs!1335547 (and b!5716351 d!1802700)))

(assert (=> bs!1335547 (= (and (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 lt!2277097) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308826 lambda!308782))))

(declare-fun bs!1335548 () Bool)

(assert (= bs!1335548 (and b!5716351 b!5716132)))

(assert (=> bs!1335548 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 (regOne!31939 r!7292))) (= (regOne!31939 lt!2277097) (regOne!31939 r!7292))) (= lambda!308826 lambda!308809))))

(declare-fun bs!1335549 () Bool)

(assert (= bs!1335549 (and b!5716351 d!1802714)))

(assert (=> bs!1335549 (not (= lambda!308826 lambda!308787))))

(declare-fun bs!1335550 () Bool)

(assert (= bs!1335550 (and b!5716351 d!1802970)))

(assert (=> bs!1335550 (not (= lambda!308826 lambda!308816))))

(assert (=> bs!1335545 (not (= lambda!308826 lambda!308764))))

(assert (=> bs!1335550 (= (and (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regOne!31939 lt!2277097) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308826 lambda!308817))))

(declare-fun bs!1335551 () Bool)

(assert (= bs!1335551 (and b!5716351 b!5714753)))

(assert (=> bs!1335551 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 lt!2277132)) (= (regOne!31939 lt!2277097) lt!2277132)) (= lambda!308826 lambda!308716))))

(assert (=> bs!1335549 (not (= lambda!308826 lambda!308786))))

(declare-fun bs!1335552 () Bool)

(assert (= bs!1335552 (and b!5716351 b!5714504)))

(assert (=> bs!1335552 (not (= lambda!308826 lambda!308683))))

(declare-fun bs!1335553 () Bool)

(assert (= bs!1335553 (and b!5716351 b!5715508)))

(assert (=> bs!1335553 (not (= lambda!308826 lambda!308767))))

(declare-fun bs!1335554 () Bool)

(assert (= bs!1335554 (and b!5716351 b!5716128)))

(assert (=> bs!1335554 (not (= lambda!308826 lambda!308810))))

(assert (=> bs!1335542 (not (= lambda!308826 lambda!308686))))

(declare-fun bs!1335555 () Bool)

(assert (= bs!1335555 (and b!5716351 b!5715645)))

(assert (=> bs!1335555 (not (= lambda!308826 lambda!308785))))

(declare-fun bs!1335556 () Bool)

(assert (= bs!1335556 (and b!5716351 d!1802830)))

(assert (=> bs!1335556 (not (= lambda!308826 lambda!308801))))

(assert (=> bs!1335547 (not (= lambda!308826 lambda!308781))))

(assert (=> bs!1335540 (not (= lambda!308826 lambda!308743))))

(assert (=> bs!1335546 (not (= lambda!308826 lambda!308680))))

(declare-fun bs!1335557 () Bool)

(assert (= bs!1335557 (and b!5716351 d!1802432)))

(assert (=> bs!1335557 (not (= lambda!308826 lambda!308728))))

(declare-fun bs!1335558 () Bool)

(assert (= bs!1335558 (and b!5716351 b!5715853)))

(assert (=> bs!1335558 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 (regTwo!31939 r!7292))) (= (regOne!31939 lt!2277097) (regTwo!31939 r!7292))) (= lambda!308826 lambda!308798))))

(declare-fun bs!1335559 () Bool)

(assert (= bs!1335559 (and b!5716351 b!5715649)))

(assert (=> bs!1335559 (= (and (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 lt!2277097)) (= (regOne!31939 lt!2277097) lt!2277097)) (= lambda!308826 lambda!308784))))

(declare-fun bs!1335560 () Bool)

(assert (= bs!1335560 (and b!5716351 b!5716230)))

(assert (=> bs!1335560 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 (regOne!31939 lt!2277132))) (= (regOne!31939 lt!2277097) (regOne!31939 lt!2277132))) (= lambda!308826 lambda!308820))))

(declare-fun bs!1335561 () Bool)

(assert (= bs!1335561 (and b!5716351 d!1802658)))

(assert (=> bs!1335561 (not (= lambda!308826 lambda!308763))))

(declare-fun bs!1335562 () Bool)

(assert (= bs!1335562 (and b!5716351 b!5714749)))

(assert (=> bs!1335562 (not (= lambda!308826 lambda!308717))))

(assert (=> bs!1335542 (not (= lambda!308826 lambda!308684))))

(assert (=> bs!1335552 (not (= lambda!308826 lambda!308682))))

(declare-fun bs!1335563 () Bool)

(assert (= bs!1335563 (and b!5716351 b!5716248)))

(assert (=> bs!1335563 (not (= lambda!308826 lambda!308823))))

(assert (=> bs!1335556 (not (= lambda!308826 lambda!308802))))

(declare-fun bs!1335564 () Bool)

(assert (= bs!1335564 (and b!5716351 b!5716252)))

(assert (=> bs!1335564 (= (and (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 (regTwo!31939 lt!2277097))) (= (regOne!31939 lt!2277097) (regTwo!31939 lt!2277097))) (= lambda!308826 lambda!308822))))

(declare-fun bs!1335565 () Bool)

(assert (= bs!1335565 (and b!5716351 d!1802704)))

(assert (=> bs!1335565 (not (= lambda!308826 lambda!308783))))

(declare-fun bs!1335566 () Bool)

(assert (= bs!1335566 (and b!5716351 b!5715512)))

(assert (=> bs!1335566 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31939 lt!2277097)) (reg!16042 r!7292)) (= (regOne!31939 lt!2277097) r!7292)) (= lambda!308826 lambda!308766))))

(assert (=> b!5716351 true))

(assert (=> b!5716351 true))

(declare-fun bs!1335567 () Bool)

(declare-fun b!5716347 () Bool)

(assert (= bs!1335567 (and b!5716347 d!1802448)))

(declare-fun lambda!308827 () Int)

(assert (=> bs!1335567 (not (= lambda!308827 lambda!308742))))

(declare-fun bs!1335568 () Bool)

(assert (= bs!1335568 (and b!5716347 b!5715849)))

(assert (=> bs!1335568 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 (regTwo!31939 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 (regTwo!31939 r!7292)))) (= lambda!308827 lambda!308799))))

(declare-fun bs!1335569 () Bool)

(assert (= bs!1335569 (and b!5716347 b!5714499)))

(assert (=> bs!1335569 (not (= lambda!308827 lambda!308685))))

(declare-fun bs!1335570 () Bool)

(assert (= bs!1335570 (and b!5716347 d!1802776)))

(assert (=> bs!1335570 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) lt!2277097) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308827 lambda!308794))))

(declare-fun bs!1335571 () Bool)

(assert (= bs!1335571 (and b!5716347 b!5716226)))

(assert (=> bs!1335571 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 (regOne!31939 lt!2277132))) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 (regOne!31939 lt!2277132)))) (= lambda!308827 lambda!308821))))

(declare-fun bs!1335572 () Bool)

(assert (= bs!1335572 (and b!5716347 d!1802660)))

(assert (=> bs!1335572 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) lt!2277097) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308827 lambda!308765))))

(declare-fun bs!1335573 () Bool)

(assert (= bs!1335573 (and b!5716347 b!5716351)))

(assert (=> bs!1335573 (not (= lambda!308827 lambda!308826))))

(declare-fun bs!1335574 () Bool)

(assert (= bs!1335574 (and b!5716347 b!5714517)))

(assert (=> bs!1335574 (not (= lambda!308827 lambda!308679))))

(assert (=> bs!1335570 (not (= lambda!308827 lambda!308793))))

(declare-fun bs!1335575 () Bool)

(assert (= bs!1335575 (and b!5716347 d!1802700)))

(assert (=> bs!1335575 (not (= lambda!308827 lambda!308782))))

(declare-fun bs!1335576 () Bool)

(assert (= bs!1335576 (and b!5716347 b!5716132)))

(assert (=> bs!1335576 (not (= lambda!308827 lambda!308809))))

(declare-fun bs!1335577 () Bool)

(assert (= bs!1335577 (and b!5716347 d!1802714)))

(assert (=> bs!1335577 (= (and (= (regOne!31938 (regOne!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277097)) lt!2277097)) (= lambda!308827 lambda!308787))))

(declare-fun bs!1335578 () Bool)

(assert (= bs!1335578 (and b!5716347 d!1802970)))

(assert (=> bs!1335578 (not (= lambda!308827 lambda!308816))))

(assert (=> bs!1335572 (not (= lambda!308827 lambda!308764))))

(assert (=> bs!1335578 (not (= lambda!308827 lambda!308817))))

(declare-fun bs!1335579 () Bool)

(assert (= bs!1335579 (and b!5716347 b!5714753)))

(assert (=> bs!1335579 (not (= lambda!308827 lambda!308716))))

(assert (=> bs!1335577 (not (= lambda!308827 lambda!308786))))

(declare-fun bs!1335580 () Bool)

(assert (= bs!1335580 (and b!5716347 b!5714504)))

(assert (=> bs!1335580 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) lt!2277097) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308827 lambda!308683))))

(declare-fun bs!1335581 () Bool)

(assert (= bs!1335581 (and b!5716347 b!5715508)))

(assert (=> bs!1335581 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308827 lambda!308767))))

(declare-fun bs!1335582 () Bool)

(assert (= bs!1335582 (and b!5716347 b!5716128)))

(assert (=> bs!1335582 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 (regOne!31939 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 (regOne!31939 r!7292)))) (= lambda!308827 lambda!308810))))

(assert (=> bs!1335569 (= (and (= (regOne!31938 (regOne!31939 lt!2277097)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regOne!31939 lt!2277097)) lt!2277097)) (= lambda!308827 lambda!308686))))

(declare-fun bs!1335583 () Bool)

(assert (= bs!1335583 (and b!5716347 b!5715645)))

(assert (=> bs!1335583 (= (and (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 lt!2277097)) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 lt!2277097))) (= lambda!308827 lambda!308785))))

(declare-fun bs!1335584 () Bool)

(assert (= bs!1335584 (and b!5716347 d!1802830)))

(assert (=> bs!1335584 (not (= lambda!308827 lambda!308801))))

(assert (=> bs!1335575 (not (= lambda!308827 lambda!308781))))

(assert (=> bs!1335567 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308827 lambda!308743))))

(assert (=> bs!1335574 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308827 lambda!308680))))

(declare-fun bs!1335585 () Bool)

(assert (= bs!1335585 (and b!5716347 d!1802432)))

(assert (=> bs!1335585 (not (= lambda!308827 lambda!308728))))

(declare-fun bs!1335586 () Bool)

(assert (= bs!1335586 (and b!5716347 b!5715853)))

(assert (=> bs!1335586 (not (= lambda!308827 lambda!308798))))

(declare-fun bs!1335587 () Bool)

(assert (= bs!1335587 (and b!5716347 b!5715649)))

(assert (=> bs!1335587 (not (= lambda!308827 lambda!308784))))

(declare-fun bs!1335588 () Bool)

(assert (= bs!1335588 (and b!5716347 b!5716230)))

(assert (=> bs!1335588 (not (= lambda!308827 lambda!308820))))

(declare-fun bs!1335589 () Bool)

(assert (= bs!1335589 (and b!5716347 d!1802658)))

(assert (=> bs!1335589 (not (= lambda!308827 lambda!308763))))

(declare-fun bs!1335590 () Bool)

(assert (= bs!1335590 (and b!5716347 b!5714749)))

(assert (=> bs!1335590 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 lt!2277132)) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 lt!2277132))) (= lambda!308827 lambda!308717))))

(assert (=> bs!1335569 (not (= lambda!308827 lambda!308684))))

(assert (=> bs!1335580 (not (= lambda!308827 lambda!308682))))

(declare-fun bs!1335591 () Bool)

(assert (= bs!1335591 (and b!5716347 b!5716248)))

(assert (=> bs!1335591 (= (and (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 (regTwo!31939 lt!2277097))) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 (regTwo!31939 lt!2277097)))) (= lambda!308827 lambda!308823))))

(assert (=> bs!1335584 (= (and (= (_1!36113 lt!2277139) s!2326) (= (regOne!31938 (regOne!31939 lt!2277097)) (regOne!31938 r!7292)) (= (regTwo!31938 (regOne!31939 lt!2277097)) (regTwo!31938 r!7292))) (= lambda!308827 lambda!308802))))

(declare-fun bs!1335592 () Bool)

(assert (= bs!1335592 (and b!5716347 b!5716252)))

(assert (=> bs!1335592 (not (= lambda!308827 lambda!308822))))

(declare-fun bs!1335593 () Bool)

(assert (= bs!1335593 (and b!5716347 d!1802704)))

(assert (=> bs!1335593 (not (= lambda!308827 lambda!308783))))

(declare-fun bs!1335594 () Bool)

(assert (= bs!1335594 (and b!5716347 b!5715512)))

(assert (=> bs!1335594 (not (= lambda!308827 lambda!308766))))

(assert (=> b!5716347 true))

(assert (=> b!5716347 true))

(declare-fun d!1803052 () Bool)

(declare-fun c!1007781 () Bool)

(assert (=> d!1803052 (= c!1007781 ((_ is EmptyExpr!15713) (regOne!31939 lt!2277097)))))

(declare-fun e!3515451 () Bool)

(assert (=> d!1803052 (= (matchRSpec!2816 (regOne!31939 lt!2277097) (_1!36113 lt!2277139)) e!3515451)))

(declare-fun b!5716346 () Bool)

(declare-fun res!2413640 () Bool)

(declare-fun e!3515445 () Bool)

(assert (=> b!5716346 (=> res!2413640 e!3515445)))

(declare-fun call!436407 () Bool)

(assert (=> b!5716346 (= res!2413640 call!436407)))

(declare-fun e!3515450 () Bool)

(assert (=> b!5716346 (= e!3515450 e!3515445)))

(declare-fun call!436408 () Bool)

(assert (=> b!5716347 (= e!3515450 call!436408)))

(declare-fun b!5716348 () Bool)

(declare-fun c!1007779 () Bool)

(assert (=> b!5716348 (= c!1007779 ((_ is ElementMatch!15713) (regOne!31939 lt!2277097)))))

(declare-fun e!3515449 () Bool)

(declare-fun e!3515446 () Bool)

(assert (=> b!5716348 (= e!3515449 e!3515446)))

(declare-fun b!5716349 () Bool)

(assert (=> b!5716349 (= e!3515446 (= (_1!36113 lt!2277139) (Cons!63314 (c!1007275 (regOne!31939 lt!2277097)) Nil!63314)))))

(declare-fun b!5716350 () Bool)

(assert (=> b!5716350 (= e!3515451 e!3515449)))

(declare-fun res!2413641 () Bool)

(assert (=> b!5716350 (= res!2413641 (not ((_ is EmptyLang!15713) (regOne!31939 lt!2277097))))))

(assert (=> b!5716350 (=> (not res!2413641) (not e!3515449))))

(declare-fun bm!436402 () Bool)

(assert (=> bm!436402 (= call!436407 (isEmpty!35186 (_1!36113 lt!2277139)))))

(assert (=> b!5716351 (= e!3515445 call!436408)))

(declare-fun b!5716352 () Bool)

(assert (=> b!5716352 (= e!3515451 call!436407)))

(declare-fun b!5716353 () Bool)

(declare-fun e!3515448 () Bool)

(assert (=> b!5716353 (= e!3515448 (matchRSpec!2816 (regTwo!31939 (regOne!31939 lt!2277097)) (_1!36113 lt!2277139)))))

(declare-fun b!5716354 () Bool)

(declare-fun c!1007780 () Bool)

(assert (=> b!5716354 (= c!1007780 ((_ is Union!15713) (regOne!31939 lt!2277097)))))

(declare-fun e!3515447 () Bool)

(assert (=> b!5716354 (= e!3515446 e!3515447)))

(declare-fun b!5716355 () Bool)

(assert (=> b!5716355 (= e!3515447 e!3515450)))

(declare-fun c!1007782 () Bool)

(assert (=> b!5716355 (= c!1007782 ((_ is Star!15713) (regOne!31939 lt!2277097)))))

(declare-fun b!5716356 () Bool)

(assert (=> b!5716356 (= e!3515447 e!3515448)))

(declare-fun res!2413642 () Bool)

(assert (=> b!5716356 (= res!2413642 (matchRSpec!2816 (regOne!31939 (regOne!31939 lt!2277097)) (_1!36113 lt!2277139)))))

(assert (=> b!5716356 (=> res!2413642 e!3515448)))

(declare-fun bm!436403 () Bool)

(assert (=> bm!436403 (= call!436408 (Exists!2813 (ite c!1007782 lambda!308826 lambda!308827)))))

(assert (= (and d!1803052 c!1007781) b!5716352))

(assert (= (and d!1803052 (not c!1007781)) b!5716350))

(assert (= (and b!5716350 res!2413641) b!5716348))

(assert (= (and b!5716348 c!1007779) b!5716349))

(assert (= (and b!5716348 (not c!1007779)) b!5716354))

(assert (= (and b!5716354 c!1007780) b!5716356))

(assert (= (and b!5716354 (not c!1007780)) b!5716355))

(assert (= (and b!5716356 (not res!2413642)) b!5716353))

(assert (= (and b!5716355 c!1007782) b!5716346))

(assert (= (and b!5716355 (not c!1007782)) b!5716347))

(assert (= (and b!5716346 (not res!2413640)) b!5716351))

(assert (= (or b!5716351 b!5716347) bm!436403))

(assert (= (or b!5716352 b!5716346) bm!436402))

(assert (=> bm!436402 m!6667992))

(declare-fun m!6669964 () Bool)

(assert (=> b!5716353 m!6669964))

(declare-fun m!6669966 () Bool)

(assert (=> b!5716356 m!6669966))

(declare-fun m!6669968 () Bool)

(assert (=> bm!436403 m!6669968))

(assert (=> b!5715654 d!1803052))

(declare-fun d!1803054 () Bool)

(assert (=> d!1803054 (= (isUnion!662 lt!2277339) ((_ is Union!15713) lt!2277339))))

(assert (=> b!5715600 d!1803054))

(assert (=> d!1802642 d!1802834))

(assert (=> d!1802642 d!1802734))

(declare-fun d!1803056 () Bool)

(assert (=> d!1803056 (= (isEmpty!35186 (tail!11200 (_1!36113 lt!2277144))) ((_ is Nil!63314) (tail!11200 (_1!36113 lt!2277144))))))

(assert (=> b!5715671 d!1803056))

(assert (=> b!5715671 d!1802902))

(declare-fun b!5716371 () Bool)

(declare-fun e!3515466 () Bool)

(declare-fun e!3515464 () Bool)

(assert (=> b!5716371 (= e!3515466 e!3515464)))

(declare-fun res!2413653 () Bool)

(assert (=> b!5716371 (=> res!2413653 e!3515464)))

(assert (=> b!5716371 (= res!2413653 ((_ is Star!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716372 () Bool)

(declare-fun e!3515467 () Bool)

(declare-fun call!436413 () Bool)

(assert (=> b!5716372 (= e!3515467 call!436413)))

(declare-fun d!1803058 () Bool)

(declare-fun res!2413654 () Bool)

(declare-fun e!3515468 () Bool)

(assert (=> d!1803058 (=> res!2413654 e!3515468)))

(assert (=> d!1803058 (= res!2413654 ((_ is EmptyExpr!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> d!1803058 (= (nullableFct!1808 (h!69763 (exprs!5597 (h!69764 zl!343)))) e!3515468)))

(declare-fun bm!436408 () Bool)

(declare-fun call!436414 () Bool)

(declare-fun c!1007785 () Bool)

(assert (=> bm!436408 (= call!436414 (nullable!5745 (ite c!1007785 (regOne!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regOne!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))

(declare-fun bm!436409 () Bool)

(assert (=> bm!436409 (= call!436413 (nullable!5745 (ite c!1007785 (regTwo!31939 (h!69763 (exprs!5597 (h!69764 zl!343)))) (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))))))))

(declare-fun b!5716373 () Bool)

(assert (=> b!5716373 (= e!3515468 e!3515466)))

(declare-fun res!2413655 () Bool)

(assert (=> b!5716373 (=> (not res!2413655) (not e!3515466))))

(assert (=> b!5716373 (= res!2413655 (and (not ((_ is EmptyLang!15713) (h!69763 (exprs!5597 (h!69764 zl!343))))) (not ((_ is ElementMatch!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))))

(declare-fun b!5716374 () Bool)

(declare-fun e!3515465 () Bool)

(assert (=> b!5716374 (= e!3515465 call!436413)))

(declare-fun b!5716375 () Bool)

(declare-fun e!3515469 () Bool)

(assert (=> b!5716375 (= e!3515464 e!3515469)))

(assert (=> b!5716375 (= c!1007785 ((_ is Union!15713) (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716376 () Bool)

(assert (=> b!5716376 (= e!3515469 e!3515465)))

(declare-fun res!2413657 () Bool)

(assert (=> b!5716376 (= res!2413657 call!436414)))

(assert (=> b!5716376 (=> (not res!2413657) (not e!3515465))))

(declare-fun b!5716377 () Bool)

(assert (=> b!5716377 (= e!3515469 e!3515467)))

(declare-fun res!2413656 () Bool)

(assert (=> b!5716377 (= res!2413656 call!436414)))

(assert (=> b!5716377 (=> res!2413656 e!3515467)))

(assert (= (and d!1803058 (not res!2413654)) b!5716373))

(assert (= (and b!5716373 res!2413655) b!5716371))

(assert (= (and b!5716371 (not res!2413653)) b!5716375))

(assert (= (and b!5716375 c!1007785) b!5716377))

(assert (= (and b!5716375 (not c!1007785)) b!5716376))

(assert (= (and b!5716377 (not res!2413656)) b!5716372))

(assert (= (and b!5716376 res!2413657) b!5716374))

(assert (= (or b!5716372 b!5716374) bm!436409))

(assert (= (or b!5716377 b!5716376) bm!436408))

(declare-fun m!6669970 () Bool)

(assert (=> bm!436408 m!6669970))

(declare-fun m!6669972 () Bool)

(assert (=> bm!436409 m!6669972))

(assert (=> d!1802512 d!1803058))

(assert (=> bm!436178 d!1803016))

(assert (=> b!5714808 d!1802790))

(assert (=> bs!1335203 d!1802532))

(assert (=> d!1802632 d!1802876))

(declare-fun d!1803060 () Bool)

(assert (=> d!1803060 true))

(declare-fun setRes!38289 () Bool)

(assert (=> d!1803060 setRes!38289))

(declare-fun condSetEmpty!38289 () Bool)

(declare-fun res!2413658 () (InoxSet Context!10194))

(assert (=> d!1803060 (= condSetEmpty!38289 (= res!2413658 ((as const (Array Context!10194 Bool)) false)))))

(assert (=> d!1803060 (= (choose!43218 lt!2277134 lambda!308681) res!2413658)))

(declare-fun setIsEmpty!38289 () Bool)

(assert (=> setIsEmpty!38289 setRes!38289))

(declare-fun e!3515470 () Bool)

(declare-fun setNonEmpty!38289 () Bool)

(declare-fun setElem!38289 () Context!10194)

(declare-fun tp!1583544 () Bool)

(assert (=> setNonEmpty!38289 (= setRes!38289 (and tp!1583544 (inv!82529 setElem!38289) e!3515470))))

(declare-fun setRest!38289 () (InoxSet Context!10194))

(assert (=> setNonEmpty!38289 (= res!2413658 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) setElem!38289 true) setRest!38289))))

(declare-fun b!5716378 () Bool)

(declare-fun tp!1583543 () Bool)

(assert (=> b!5716378 (= e!3515470 tp!1583543)))

(assert (= (and d!1803060 condSetEmpty!38289) setIsEmpty!38289))

(assert (= (and d!1803060 (not condSetEmpty!38289)) setNonEmpty!38289))

(assert (= setNonEmpty!38289 b!5716378))

(declare-fun m!6669974 () Bool)

(assert (=> setNonEmpty!38289 m!6669974))

(assert (=> d!1802486 d!1803060))

(assert (=> d!1802584 d!1802852))

(declare-fun bs!1335595 () Bool)

(declare-fun d!1803062 () Bool)

(assert (= bs!1335595 (and d!1803062 d!1802648)))

(declare-fun lambda!308828 () Int)

(assert (=> bs!1335595 (= lambda!308828 lambda!308761)))

(declare-fun bs!1335596 () Bool)

(assert (= bs!1335596 (and d!1803062 d!1802606)))

(assert (=> bs!1335596 (= lambda!308828 lambda!308758)))

(declare-fun bs!1335597 () Bool)

(assert (= bs!1335597 (and d!1803062 b!5714528)))

(assert (=> bs!1335597 (= lambda!308828 lambda!308687)))

(declare-fun bs!1335598 () Bool)

(assert (= bs!1335598 (and d!1803062 d!1802958)))

(assert (=> bs!1335598 (= lambda!308828 lambda!308811)))

(declare-fun bs!1335599 () Bool)

(assert (= bs!1335599 (and d!1803062 d!1802682)))

(assert (=> bs!1335599 (= lambda!308828 lambda!308776)))

(declare-fun bs!1335600 () Bool)

(assert (= bs!1335600 (and d!1803062 d!1802650)))

(assert (=> bs!1335600 (= lambda!308828 lambda!308762)))

(declare-fun bs!1335601 () Bool)

(assert (= bs!1335601 (and d!1803062 d!1803038)))

(assert (=> bs!1335601 (= lambda!308828 lambda!308825)))

(declare-fun bs!1335602 () Bool)

(assert (= bs!1335602 (and d!1803062 d!1803036)))

(assert (=> bs!1335602 (= lambda!308828 lambda!308824)))

(declare-fun bs!1335603 () Bool)

(assert (= bs!1335603 (and d!1803062 d!1802986)))

(assert (=> bs!1335603 (= lambda!308828 lambda!308818)))

(declare-fun bs!1335604 () Bool)

(assert (= bs!1335604 (and d!1803062 d!1802678)))

(assert (=> bs!1335604 (= lambda!308828 lambda!308770)))

(declare-fun bs!1335605 () Bool)

(assert (= bs!1335605 (and d!1803062 d!1802680)))

(assert (=> bs!1335605 (= lambda!308828 lambda!308773)))

(assert (=> d!1803062 (= (inv!82529 setElem!38285) (forall!14848 (exprs!5597 setElem!38285) lambda!308828))))

(declare-fun bs!1335606 () Bool)

(assert (= bs!1335606 d!1803062))

(declare-fun m!6669976 () Bool)

(assert (=> bs!1335606 m!6669976))

(assert (=> setNonEmpty!38285 d!1803062))

(declare-fun d!1803064 () Bool)

(assert (=> d!1803064 (= (isEmpty!35186 (tail!11200 (_1!36113 lt!2277139))) ((_ is Nil!63314) (tail!11200 (_1!36113 lt!2277139))))))

(assert (=> b!5714648 d!1803064))

(assert (=> b!5714648 d!1802918))

(assert (=> d!1802498 d!1802486))

(declare-fun d!1803066 () Bool)

(assert (=> d!1803066 (= (flatMap!1326 lt!2277134 lambda!308681) (dynLambda!24772 lambda!308681 lt!2277119))))

(assert (=> d!1803066 true))

(declare-fun _$13!2379 () Unit!156384)

(assert (=> d!1803066 (= (choose!43219 lt!2277134 lt!2277119 lambda!308681) _$13!2379)))

(declare-fun b_lambda!215979 () Bool)

(assert (=> (not b_lambda!215979) (not d!1803066)))

(declare-fun bs!1335607 () Bool)

(assert (= bs!1335607 d!1803066))

(assert (=> bs!1335607 m!6667880))

(assert (=> bs!1335607 m!6668618))

(assert (=> d!1802498 d!1803066))

(declare-fun d!1803068 () Bool)

(declare-fun lt!2277404 () Int)

(assert (=> d!1803068 (>= lt!2277404 0)))

(declare-fun e!3515471 () Int)

(assert (=> d!1803068 (= lt!2277404 e!3515471)))

(declare-fun c!1007786 () Bool)

(assert (=> d!1803068 (= c!1007786 ((_ is Nil!63314) lt!2277282))))

(assert (=> d!1803068 (= (size!40024 lt!2277282) lt!2277404)))

(declare-fun b!5716379 () Bool)

(assert (=> b!5716379 (= e!3515471 0)))

(declare-fun b!5716380 () Bool)

(assert (=> b!5716380 (= e!3515471 (+ 1 (size!40024 (t!376758 lt!2277282))))))

(assert (= (and d!1803068 c!1007786) b!5716379))

(assert (= (and d!1803068 (not c!1007786)) b!5716380))

(declare-fun m!6669978 () Bool)

(assert (=> b!5716380 m!6669978))

(assert (=> b!5715221 d!1803068))

(declare-fun d!1803070 () Bool)

(declare-fun lt!2277405 () Int)

(assert (=> d!1803070 (>= lt!2277405 0)))

(declare-fun e!3515472 () Int)

(assert (=> d!1803070 (= lt!2277405 e!3515472)))

(declare-fun c!1007787 () Bool)

(assert (=> d!1803070 (= c!1007787 ((_ is Nil!63314) (_2!36113 lt!2277144)))))

(assert (=> d!1803070 (= (size!40024 (_2!36113 lt!2277144)) lt!2277405)))

(declare-fun b!5716381 () Bool)

(assert (=> b!5716381 (= e!3515472 0)))

(declare-fun b!5716382 () Bool)

(assert (=> b!5716382 (= e!3515472 (+ 1 (size!40024 (t!376758 (_2!36113 lt!2277144)))))))

(assert (= (and d!1803070 c!1007787) b!5716381))

(assert (= (and d!1803070 (not c!1007787)) b!5716382))

(declare-fun m!6669980 () Bool)

(assert (=> b!5716382 m!6669980))

(assert (=> b!5715221 d!1803070))

(assert (=> b!5715221 d!1802930))

(assert (=> bm!436172 d!1802852))

(declare-fun d!1803072 () Bool)

(assert (=> d!1803072 (= (head!12105 lt!2277096) (h!69762 lt!2277096))))

(assert (=> b!5715489 d!1803072))

(assert (=> d!1802382 d!1802380))

(assert (=> d!1802382 d!1802364))

(declare-fun d!1803074 () Bool)

(assert (=> d!1803074 (= (matchR!7898 lt!2277132 s!2326) (matchRSpec!2816 lt!2277132 s!2326))))

(assert (=> d!1803074 true))

(declare-fun _$88!4006 () Unit!156384)

(assert (=> d!1803074 (= (choose!43213 lt!2277132 s!2326) _$88!4006)))

(declare-fun bs!1335608 () Bool)

(assert (= bs!1335608 d!1803074))

(assert (=> bs!1335608 m!6667972))

(assert (=> bs!1335608 m!6667970))

(assert (=> d!1802382 d!1803074))

(assert (=> d!1802382 d!1802856))

(declare-fun d!1803076 () Bool)

(assert (=> d!1803076 (= (nullable!5745 lt!2277132) (nullableFct!1808 lt!2277132))))

(declare-fun bs!1335609 () Bool)

(assert (= bs!1335609 d!1803076))

(declare-fun m!6669982 () Bool)

(assert (=> bs!1335609 m!6669982))

(assert (=> b!5715432 d!1803076))

(declare-fun bs!1335610 () Bool)

(declare-fun d!1803078 () Bool)

(assert (= bs!1335610 (and d!1803078 d!1802788)))

(declare-fun lambda!308829 () Int)

(assert (=> bs!1335610 (= lambda!308829 lambda!308797)))

(declare-fun bs!1335611 () Bool)

(assert (= bs!1335611 (and d!1803078 d!1802866)))

(assert (=> bs!1335611 (= lambda!308829 lambda!308804)))

(declare-fun bs!1335612 () Bool)

(assert (= bs!1335612 (and d!1803078 d!1802882)))

(assert (=> bs!1335612 (= lambda!308829 lambda!308805)))

(declare-fun bs!1335613 () Bool)

(assert (= bs!1335613 (and d!1803078 d!1802940)))

(assert (=> bs!1335613 (= lambda!308829 lambda!308808)))

(assert (=> d!1803078 (= (nullableZipper!1663 lt!2277134) (exists!2222 lt!2277134 lambda!308829))))

(declare-fun bs!1335614 () Bool)

(assert (= bs!1335614 d!1803078))

(declare-fun m!6669984 () Bool)

(assert (=> bs!1335614 m!6669984))

(assert (=> b!5715476 d!1803078))

(declare-fun b!5716383 () Bool)

(declare-fun res!2413660 () Bool)

(declare-fun e!3515478 () Bool)

(assert (=> b!5716383 (=> (not res!2413660) (not e!3515478))))

(assert (=> b!5716383 (= res!2413660 (isEmpty!35186 (tail!11200 (_2!36113 (get!21829 lt!2277355)))))))

(declare-fun b!5716384 () Bool)

(declare-fun res!2413663 () Bool)

(assert (=> b!5716384 (=> (not res!2413663) (not e!3515478))))

(declare-fun call!436415 () Bool)

(assert (=> b!5716384 (= res!2413663 (not call!436415))))

(declare-fun b!5716385 () Bool)

(declare-fun res!2413665 () Bool)

(declare-fun e!3515475 () Bool)

(assert (=> b!5716385 (=> res!2413665 e!3515475)))

(assert (=> b!5716385 (= res!2413665 e!3515478)))

(declare-fun res!2413664 () Bool)

(assert (=> b!5716385 (=> (not res!2413664) (not e!3515478))))

(declare-fun lt!2277406 () Bool)

(assert (=> b!5716385 (= res!2413664 lt!2277406)))

(declare-fun d!1803080 () Bool)

(declare-fun e!3515477 () Bool)

(assert (=> d!1803080 e!3515477))

(declare-fun c!1007790 () Bool)

(assert (=> d!1803080 (= c!1007790 ((_ is EmptyExpr!15713) lt!2277097))))

(declare-fun e!3515476 () Bool)

(assert (=> d!1803080 (= lt!2277406 e!3515476)))

(declare-fun c!1007789 () Bool)

(assert (=> d!1803080 (= c!1007789 (isEmpty!35186 (_2!36113 (get!21829 lt!2277355))))))

(assert (=> d!1803080 (validRegex!7449 lt!2277097)))

(assert (=> d!1803080 (= (matchR!7898 lt!2277097 (_2!36113 (get!21829 lt!2277355))) lt!2277406)))

(declare-fun b!5716386 () Bool)

(declare-fun e!3515479 () Bool)

(declare-fun e!3515474 () Bool)

(assert (=> b!5716386 (= e!3515479 e!3515474)))

(declare-fun res!2413666 () Bool)

(assert (=> b!5716386 (=> res!2413666 e!3515474)))

(assert (=> b!5716386 (= res!2413666 call!436415)))

(declare-fun b!5716387 () Bool)

(assert (=> b!5716387 (= e!3515476 (nullable!5745 lt!2277097))))

(declare-fun b!5716388 () Bool)

(declare-fun res!2413662 () Bool)

(assert (=> b!5716388 (=> res!2413662 e!3515475)))

(assert (=> b!5716388 (= res!2413662 (not ((_ is ElementMatch!15713) lt!2277097)))))

(declare-fun e!3515473 () Bool)

(assert (=> b!5716388 (= e!3515473 e!3515475)))

(declare-fun b!5716389 () Bool)

(assert (=> b!5716389 (= e!3515476 (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 (_2!36113 (get!21829 lt!2277355)))) (tail!11200 (_2!36113 (get!21829 lt!2277355)))))))

(declare-fun b!5716390 () Bool)

(declare-fun res!2413659 () Bool)

(assert (=> b!5716390 (=> res!2413659 e!3515474)))

(assert (=> b!5716390 (= res!2413659 (not (isEmpty!35186 (tail!11200 (_2!36113 (get!21829 lt!2277355))))))))

(declare-fun bm!436410 () Bool)

(assert (=> bm!436410 (= call!436415 (isEmpty!35186 (_2!36113 (get!21829 lt!2277355))))))

(declare-fun b!5716391 () Bool)

(assert (=> b!5716391 (= e!3515477 e!3515473)))

(declare-fun c!1007788 () Bool)

(assert (=> b!5716391 (= c!1007788 ((_ is EmptyLang!15713) lt!2277097))))

(declare-fun b!5716392 () Bool)

(assert (=> b!5716392 (= e!3515475 e!3515479)))

(declare-fun res!2413661 () Bool)

(assert (=> b!5716392 (=> (not res!2413661) (not e!3515479))))

(assert (=> b!5716392 (= res!2413661 (not lt!2277406))))

(declare-fun b!5716393 () Bool)

(assert (=> b!5716393 (= e!3515473 (not lt!2277406))))

(declare-fun b!5716394 () Bool)

(assert (=> b!5716394 (= e!3515478 (= (head!12105 (_2!36113 (get!21829 lt!2277355))) (c!1007275 lt!2277097)))))

(declare-fun b!5716395 () Bool)

(assert (=> b!5716395 (= e!3515477 (= lt!2277406 call!436415))))

(declare-fun b!5716396 () Bool)

(assert (=> b!5716396 (= e!3515474 (not (= (head!12105 (_2!36113 (get!21829 lt!2277355))) (c!1007275 lt!2277097))))))

(assert (= (and d!1803080 c!1007789) b!5716387))

(assert (= (and d!1803080 (not c!1007789)) b!5716389))

(assert (= (and d!1803080 c!1007790) b!5716395))

(assert (= (and d!1803080 (not c!1007790)) b!5716391))

(assert (= (and b!5716391 c!1007788) b!5716393))

(assert (= (and b!5716391 (not c!1007788)) b!5716388))

(assert (= (and b!5716388 (not res!2413662)) b!5716385))

(assert (= (and b!5716385 res!2413664) b!5716384))

(assert (= (and b!5716384 res!2413663) b!5716383))

(assert (= (and b!5716383 res!2413660) b!5716394))

(assert (= (and b!5716385 (not res!2413665)) b!5716392))

(assert (= (and b!5716392 res!2413661) b!5716386))

(assert (= (and b!5716386 (not res!2413666)) b!5716390))

(assert (= (and b!5716390 (not res!2413659)) b!5716396))

(assert (= (or b!5716395 b!5716384 b!5716386) bm!436410))

(assert (=> b!5716387 m!6668138))

(declare-fun m!6669986 () Bool)

(assert (=> d!1803080 m!6669986))

(assert (=> d!1803080 m!6668140))

(declare-fun m!6669988 () Bool)

(assert (=> b!5716396 m!6669988))

(assert (=> b!5716389 m!6669988))

(assert (=> b!5716389 m!6669988))

(declare-fun m!6669990 () Bool)

(assert (=> b!5716389 m!6669990))

(declare-fun m!6669992 () Bool)

(assert (=> b!5716389 m!6669992))

(assert (=> b!5716389 m!6669990))

(assert (=> b!5716389 m!6669992))

(declare-fun m!6669994 () Bool)

(assert (=> b!5716389 m!6669994))

(assert (=> b!5716383 m!6669992))

(assert (=> b!5716383 m!6669992))

(declare-fun m!6669996 () Bool)

(assert (=> b!5716383 m!6669996))

(assert (=> b!5716390 m!6669992))

(assert (=> b!5716390 m!6669992))

(assert (=> b!5716390 m!6669996))

(assert (=> b!5716394 m!6669988))

(assert (=> bm!436410 m!6669986))

(assert (=> b!5715662 d!1803080))

(assert (=> b!5715662 d!1802806))

(declare-fun bs!1335615 () Bool)

(declare-fun d!1803082 () Bool)

(assert (= bs!1335615 (and d!1803082 d!1802448)))

(declare-fun lambda!308832 () Int)

(assert (=> bs!1335615 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308742))))

(declare-fun bs!1335616 () Bool)

(assert (= bs!1335616 (and d!1803082 b!5715849)))

(assert (=> bs!1335616 (not (= lambda!308832 lambda!308799))))

(declare-fun bs!1335617 () Bool)

(assert (= bs!1335617 (and d!1803082 b!5714499)))

(assert (=> bs!1335617 (not (= lambda!308832 lambda!308685))))

(declare-fun bs!1335618 () Bool)

(assert (= bs!1335618 (and d!1803082 d!1802776)))

(assert (=> bs!1335618 (not (= lambda!308832 lambda!308794))))

(declare-fun bs!1335619 () Bool)

(assert (= bs!1335619 (and d!1803082 b!5716226)))

(assert (=> bs!1335619 (not (= lambda!308832 lambda!308821))))

(declare-fun bs!1335620 () Bool)

(assert (= bs!1335620 (and d!1803082 d!1802660)))

(assert (=> bs!1335620 (not (= lambda!308832 lambda!308765))))

(declare-fun bs!1335621 () Bool)

(assert (= bs!1335621 (and d!1803082 b!5716351)))

(assert (=> bs!1335621 (not (= lambda!308832 lambda!308826))))

(declare-fun bs!1335622 () Bool)

(assert (= bs!1335622 (and d!1803082 b!5714517)))

(assert (=> bs!1335622 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308679))))

(assert (=> bs!1335618 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308793))))

(declare-fun bs!1335623 () Bool)

(assert (= bs!1335623 (and d!1803082 d!1802700)))

(assert (=> bs!1335623 (not (= lambda!308832 lambda!308782))))

(declare-fun bs!1335624 () Bool)

(assert (= bs!1335624 (and d!1803082 b!5716132)))

(assert (=> bs!1335624 (not (= lambda!308832 lambda!308809))))

(declare-fun bs!1335625 () Bool)

(assert (= bs!1335625 (and d!1803082 d!1802714)))

(assert (=> bs!1335625 (not (= lambda!308832 lambda!308787))))

(declare-fun bs!1335626 () Bool)

(assert (= bs!1335626 (and d!1803082 d!1802970)))

(assert (=> bs!1335626 (= (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (= lambda!308832 lambda!308816))))

(assert (=> bs!1335620 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308764))))

(assert (=> bs!1335626 (not (= lambda!308832 lambda!308817))))

(declare-fun bs!1335627 () Bool)

(assert (= bs!1335627 (and d!1803082 b!5714753)))

(assert (=> bs!1335627 (not (= lambda!308832 lambda!308716))))

(assert (=> bs!1335625 (= lambda!308832 lambda!308786)))

(declare-fun bs!1335628 () Bool)

(assert (= bs!1335628 (and d!1803082 b!5714504)))

(assert (=> bs!1335628 (not (= lambda!308832 lambda!308683))))

(declare-fun bs!1335629 () Bool)

(assert (= bs!1335629 (and d!1803082 b!5715508)))

(assert (=> bs!1335629 (not (= lambda!308832 lambda!308767))))

(declare-fun bs!1335630 () Bool)

(assert (= bs!1335630 (and d!1803082 b!5716128)))

(assert (=> bs!1335630 (not (= lambda!308832 lambda!308810))))

(assert (=> bs!1335617 (not (= lambda!308832 lambda!308686))))

(declare-fun bs!1335631 () Bool)

(assert (= bs!1335631 (and d!1803082 b!5715645)))

(assert (=> bs!1335631 (not (= lambda!308832 lambda!308785))))

(declare-fun bs!1335632 () Bool)

(assert (= bs!1335632 (and d!1803082 d!1802830)))

(assert (=> bs!1335632 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308801))))

(declare-fun bs!1335633 () Bool)

(assert (= bs!1335633 (and d!1803082 b!5716347)))

(assert (=> bs!1335633 (not (= lambda!308832 lambda!308827))))

(assert (=> bs!1335623 (= (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (= lambda!308832 lambda!308781))))

(assert (=> bs!1335615 (not (= lambda!308832 lambda!308743))))

(assert (=> bs!1335622 (not (= lambda!308832 lambda!308680))))

(declare-fun bs!1335634 () Bool)

(assert (= bs!1335634 (and d!1803082 d!1802432)))

(assert (=> bs!1335634 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308728))))

(declare-fun bs!1335635 () Bool)

(assert (= bs!1335635 (and d!1803082 b!5715853)))

(assert (=> bs!1335635 (not (= lambda!308832 lambda!308798))))

(declare-fun bs!1335636 () Bool)

(assert (= bs!1335636 (and d!1803082 b!5715649)))

(assert (=> bs!1335636 (not (= lambda!308832 lambda!308784))))

(declare-fun bs!1335637 () Bool)

(assert (= bs!1335637 (and d!1803082 b!5716230)))

(assert (=> bs!1335637 (not (= lambda!308832 lambda!308820))))

(declare-fun bs!1335638 () Bool)

(assert (= bs!1335638 (and d!1803082 d!1802658)))

(assert (=> bs!1335638 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308763))))

(declare-fun bs!1335639 () Bool)

(assert (= bs!1335639 (and d!1803082 b!5714749)))

(assert (=> bs!1335639 (not (= lambda!308832 lambda!308717))))

(assert (=> bs!1335617 (= lambda!308832 lambda!308684)))

(assert (=> bs!1335628 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308832 lambda!308682))))

(declare-fun bs!1335640 () Bool)

(assert (= bs!1335640 (and d!1803082 b!5716248)))

(assert (=> bs!1335640 (not (= lambda!308832 lambda!308823))))

(assert (=> bs!1335632 (not (= lambda!308832 lambda!308802))))

(declare-fun bs!1335641 () Bool)

(assert (= bs!1335641 (and d!1803082 b!5716252)))

(assert (=> bs!1335641 (not (= lambda!308832 lambda!308822))))

(declare-fun bs!1335642 () Bool)

(assert (= bs!1335642 (and d!1803082 d!1802704)))

(assert (=> bs!1335642 (= lambda!308832 lambda!308783)))

(declare-fun bs!1335643 () Bool)

(assert (= bs!1335643 (and d!1803082 b!5715512)))

(assert (=> bs!1335643 (not (= lambda!308832 lambda!308766))))

(assert (=> d!1803082 true))

(assert (=> d!1803082 true))

(assert (=> d!1803082 true))

(assert (=> d!1803082 (= (isDefined!12425 (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 Nil!63314 (_1!36113 lt!2277139) (_1!36113 lt!2277139))) (Exists!2813 lambda!308832))))

(assert (=> d!1803082 true))

(declare-fun _$89!1834 () Unit!156384)

(assert (=> d!1803082 (= (choose!43216 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)) _$89!1834)))

(declare-fun bs!1335644 () Bool)

(assert (= bs!1335644 d!1803082))

(assert (=> bs!1335644 m!6668054))

(assert (=> bs!1335644 m!6668054))

(assert (=> bs!1335644 m!6669212))

(declare-fun m!6669998 () Bool)

(assert (=> bs!1335644 m!6669998))

(assert (=> d!1802704 d!1803082))

(assert (=> d!1802704 d!1802812))

(declare-fun d!1803084 () Bool)

(assert (=> d!1803084 (= (Exists!2813 lambda!308783) (choose!43215 lambda!308783))))

(declare-fun bs!1335645 () Bool)

(assert (= bs!1335645 d!1803084))

(declare-fun m!6670000 () Bool)

(assert (=> bs!1335645 m!6670000))

(assert (=> d!1802704 d!1803084))

(declare-fun d!1803086 () Bool)

(assert (=> d!1803086 (= (isDefined!12425 (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 Nil!63314 (_1!36113 lt!2277139) (_1!36113 lt!2277139))) (not (isEmpty!35190 (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 Nil!63314 (_1!36113 lt!2277139) (_1!36113 lt!2277139)))))))

(declare-fun bs!1335646 () Bool)

(assert (= bs!1335646 d!1803086))

(assert (=> bs!1335646 m!6668054))

(declare-fun m!6670002 () Bool)

(assert (=> bs!1335646 m!6670002))

(assert (=> d!1802704 d!1803086))

(assert (=> d!1802704 d!1802716))

(declare-fun b!5716401 () Bool)

(declare-fun res!2413672 () Bool)

(declare-fun e!3515487 () Bool)

(assert (=> b!5716401 (=> (not res!2413672) (not e!3515487))))

(assert (=> b!5716401 (= res!2413672 (isEmpty!35186 (tail!11200 (_2!36113 (get!21829 lt!2277227)))))))

(declare-fun b!5716402 () Bool)

(declare-fun res!2413675 () Bool)

(assert (=> b!5716402 (=> (not res!2413675) (not e!3515487))))

(declare-fun call!436416 () Bool)

(assert (=> b!5716402 (= res!2413675 (not call!436416))))

(declare-fun b!5716403 () Bool)

(declare-fun res!2413677 () Bool)

(declare-fun e!3515484 () Bool)

(assert (=> b!5716403 (=> res!2413677 e!3515484)))

(assert (=> b!5716403 (= res!2413677 e!3515487)))

(declare-fun res!2413676 () Bool)

(assert (=> b!5716403 (=> (not res!2413676) (not e!3515487))))

(declare-fun lt!2277407 () Bool)

(assert (=> b!5716403 (= res!2413676 lt!2277407)))

(declare-fun d!1803088 () Bool)

(declare-fun e!3515486 () Bool)

(assert (=> d!1803088 e!3515486))

(declare-fun c!1007793 () Bool)

(assert (=> d!1803088 (= c!1007793 ((_ is EmptyExpr!15713) (regTwo!31938 r!7292)))))

(declare-fun e!3515485 () Bool)

(assert (=> d!1803088 (= lt!2277407 e!3515485)))

(declare-fun c!1007792 () Bool)

(assert (=> d!1803088 (= c!1007792 (isEmpty!35186 (_2!36113 (get!21829 lt!2277227))))))

(assert (=> d!1803088 (validRegex!7449 (regTwo!31938 r!7292))))

(assert (=> d!1803088 (= (matchR!7898 (regTwo!31938 r!7292) (_2!36113 (get!21829 lt!2277227))) lt!2277407)))

(declare-fun b!5716404 () Bool)

(declare-fun e!3515488 () Bool)

(declare-fun e!3515483 () Bool)

(assert (=> b!5716404 (= e!3515488 e!3515483)))

(declare-fun res!2413678 () Bool)

(assert (=> b!5716404 (=> res!2413678 e!3515483)))

(assert (=> b!5716404 (= res!2413678 call!436416)))

(declare-fun b!5716405 () Bool)

(assert (=> b!5716405 (= e!3515485 (nullable!5745 (regTwo!31938 r!7292)))))

(declare-fun b!5716406 () Bool)

(declare-fun res!2413674 () Bool)

(assert (=> b!5716406 (=> res!2413674 e!3515484)))

(assert (=> b!5716406 (= res!2413674 (not ((_ is ElementMatch!15713) (regTwo!31938 r!7292))))))

(declare-fun e!3515482 () Bool)

(assert (=> b!5716406 (= e!3515482 e!3515484)))

(declare-fun b!5716407 () Bool)

(assert (=> b!5716407 (= e!3515485 (matchR!7898 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 (get!21829 lt!2277227)))) (tail!11200 (_2!36113 (get!21829 lt!2277227)))))))

(declare-fun b!5716408 () Bool)

(declare-fun res!2413671 () Bool)

(assert (=> b!5716408 (=> res!2413671 e!3515483)))

(assert (=> b!5716408 (= res!2413671 (not (isEmpty!35186 (tail!11200 (_2!36113 (get!21829 lt!2277227))))))))

(declare-fun bm!436411 () Bool)

(assert (=> bm!436411 (= call!436416 (isEmpty!35186 (_2!36113 (get!21829 lt!2277227))))))

(declare-fun b!5716409 () Bool)

(assert (=> b!5716409 (= e!3515486 e!3515482)))

(declare-fun c!1007791 () Bool)

(assert (=> b!5716409 (= c!1007791 ((_ is EmptyLang!15713) (regTwo!31938 r!7292)))))

(declare-fun b!5716410 () Bool)

(assert (=> b!5716410 (= e!3515484 e!3515488)))

(declare-fun res!2413673 () Bool)

(assert (=> b!5716410 (=> (not res!2413673) (not e!3515488))))

(assert (=> b!5716410 (= res!2413673 (not lt!2277407))))

(declare-fun b!5716411 () Bool)

(assert (=> b!5716411 (= e!3515482 (not lt!2277407))))

(declare-fun b!5716412 () Bool)

(assert (=> b!5716412 (= e!3515487 (= (head!12105 (_2!36113 (get!21829 lt!2277227))) (c!1007275 (regTwo!31938 r!7292))))))

(declare-fun b!5716413 () Bool)

(assert (=> b!5716413 (= e!3515486 (= lt!2277407 call!436416))))

(declare-fun b!5716414 () Bool)

(assert (=> b!5716414 (= e!3515483 (not (= (head!12105 (_2!36113 (get!21829 lt!2277227))) (c!1007275 (regTwo!31938 r!7292)))))))

(assert (= (and d!1803088 c!1007792) b!5716405))

(assert (= (and d!1803088 (not c!1007792)) b!5716407))

(assert (= (and d!1803088 c!1007793) b!5716413))

(assert (= (and d!1803088 (not c!1007793)) b!5716409))

(assert (= (and b!5716409 c!1007791) b!5716411))

(assert (= (and b!5716409 (not c!1007791)) b!5716406))

(assert (= (and b!5716406 (not res!2413674)) b!5716403))

(assert (= (and b!5716403 res!2413676) b!5716402))

(assert (= (and b!5716402 res!2413675) b!5716401))

(assert (= (and b!5716401 res!2413672) b!5716412))

(assert (= (and b!5716403 (not res!2413677)) b!5716410))

(assert (= (and b!5716410 res!2413673) b!5716404))

(assert (= (and b!5716404 (not res!2413678)) b!5716408))

(assert (= (and b!5716408 (not res!2413671)) b!5716414))

(assert (= (or b!5716413 b!5716402 b!5716404) bm!436411))

(assert (=> b!5716405 m!6668278))

(declare-fun m!6670004 () Bool)

(assert (=> d!1803088 m!6670004))

(assert (=> d!1803088 m!6668284))

(declare-fun m!6670006 () Bool)

(assert (=> b!5716414 m!6670006))

(assert (=> b!5716407 m!6670006))

(assert (=> b!5716407 m!6670006))

(declare-fun m!6670008 () Bool)

(assert (=> b!5716407 m!6670008))

(declare-fun m!6670010 () Bool)

(assert (=> b!5716407 m!6670010))

(assert (=> b!5716407 m!6670008))

(assert (=> b!5716407 m!6670010))

(declare-fun m!6670012 () Bool)

(assert (=> b!5716407 m!6670012))

(assert (=> b!5716401 m!6670010))

(assert (=> b!5716401 m!6670010))

(declare-fun m!6670014 () Bool)

(assert (=> b!5716401 m!6670014))

(assert (=> b!5716408 m!6670010))

(assert (=> b!5716408 m!6670010))

(assert (=> b!5716408 m!6670014))

(assert (=> b!5716412 m!6670006))

(assert (=> bm!436411 m!6670004))

(assert (=> b!5714950 d!1803088))

(assert (=> b!5714950 d!1802846))

(assert (=> d!1802620 d!1802876))

(assert (=> d!1802620 d!1802856))

(declare-fun b!5716416 () Bool)

(declare-fun e!3515491 () Bool)

(assert (=> b!5716416 (= e!3515491 (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 lt!2277095)))))))

(declare-fun bm!436412 () Bool)

(declare-fun call!436420 () List!63439)

(declare-fun call!436417 () List!63439)

(assert (=> bm!436412 (= call!436420 call!436417)))

(declare-fun b!5716417 () Bool)

(declare-fun e!3515489 () (InoxSet Context!10194))

(declare-fun call!436419 () (InoxSet Context!10194))

(assert (=> b!5716417 (= e!3515489 call!436419)))

(declare-fun b!5716418 () Bool)

(declare-fun e!3515494 () (InoxSet Context!10194))

(assert (=> b!5716418 (= e!3515494 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716419 () Bool)

(declare-fun e!3515493 () (InoxSet Context!10194))

(declare-fun call!436418 () (InoxSet Context!10194))

(declare-fun call!436422 () (InoxSet Context!10194))

(assert (=> b!5716419 (= e!3515493 ((_ map or) call!436418 call!436422))))

(declare-fun bm!436413 () Bool)

(declare-fun call!436421 () (InoxSet Context!10194))

(assert (=> bm!436413 (= call!436421 call!436422)))

(declare-fun b!5716420 () Bool)

(declare-fun c!1007795 () Bool)

(assert (=> b!5716420 (= c!1007795 ((_ is Star!15713) (h!69763 (exprs!5597 lt!2277095))))))

(assert (=> b!5716420 (= e!3515489 e!3515494)))

(declare-fun bm!436414 () Bool)

(declare-fun c!1007794 () Bool)

(assert (=> bm!436414 (= call!436418 (derivationStepZipperDown!1055 (ite c!1007794 (regOne!31939 (h!69763 (exprs!5597 lt!2277095))) (regOne!31938 (h!69763 (exprs!5597 lt!2277095)))) (ite c!1007794 (Context!10195 (t!376759 (exprs!5597 lt!2277095))) (Context!10195 call!436417)) (h!69762 s!2326)))))

(declare-fun bm!436415 () Bool)

(declare-fun c!1007796 () Bool)

(declare-fun c!1007797 () Bool)

(assert (=> bm!436415 (= call!436422 (derivationStepZipperDown!1055 (ite c!1007794 (regTwo!31939 (h!69763 (exprs!5597 lt!2277095))) (ite c!1007796 (regTwo!31938 (h!69763 (exprs!5597 lt!2277095))) (ite c!1007797 (regOne!31938 (h!69763 (exprs!5597 lt!2277095))) (reg!16042 (h!69763 (exprs!5597 lt!2277095)))))) (ite (or c!1007794 c!1007796) (Context!10195 (t!376759 (exprs!5597 lt!2277095))) (Context!10195 call!436420)) (h!69762 s!2326)))))

(declare-fun bm!436416 () Bool)

(assert (=> bm!436416 (= call!436419 call!436421)))

(declare-fun b!5716421 () Bool)

(declare-fun e!3515490 () (InoxSet Context!10194))

(assert (=> b!5716421 (= e!3515490 ((_ map or) call!436418 call!436421))))

(declare-fun b!5716422 () Bool)

(assert (=> b!5716422 (= e!3515490 e!3515489)))

(assert (=> b!5716422 (= c!1007797 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277095))))))

(declare-fun d!1803090 () Bool)

(declare-fun c!1007798 () Bool)

(assert (=> d!1803090 (= c!1007798 (and ((_ is ElementMatch!15713) (h!69763 (exprs!5597 lt!2277095))) (= (c!1007275 (h!69763 (exprs!5597 lt!2277095))) (h!69762 s!2326))))))

(declare-fun e!3515492 () (InoxSet Context!10194))

(assert (=> d!1803090 (= (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277095)) (Context!10195 (t!376759 (exprs!5597 lt!2277095))) (h!69762 s!2326)) e!3515492)))

(declare-fun b!5716415 () Bool)

(assert (=> b!5716415 (= e!3515492 e!3515493)))

(assert (=> b!5716415 (= c!1007794 ((_ is Union!15713) (h!69763 (exprs!5597 lt!2277095))))))

(declare-fun b!5716423 () Bool)

(assert (=> b!5716423 (= e!3515492 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (t!376759 (exprs!5597 lt!2277095))) true))))

(declare-fun b!5716424 () Bool)

(assert (=> b!5716424 (= c!1007796 e!3515491)))

(declare-fun res!2413679 () Bool)

(assert (=> b!5716424 (=> (not res!2413679) (not e!3515491))))

(assert (=> b!5716424 (= res!2413679 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277095))))))

(assert (=> b!5716424 (= e!3515493 e!3515490)))

(declare-fun bm!436417 () Bool)

(assert (=> bm!436417 (= call!436417 ($colon$colon!1729 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277095)))) (ite (or c!1007796 c!1007797) (regTwo!31938 (h!69763 (exprs!5597 lt!2277095))) (h!69763 (exprs!5597 lt!2277095)))))))

(declare-fun b!5716425 () Bool)

(assert (=> b!5716425 (= e!3515494 call!436419)))

(assert (= (and d!1803090 c!1007798) b!5716423))

(assert (= (and d!1803090 (not c!1007798)) b!5716415))

(assert (= (and b!5716415 c!1007794) b!5716419))

(assert (= (and b!5716415 (not c!1007794)) b!5716424))

(assert (= (and b!5716424 res!2413679) b!5716416))

(assert (= (and b!5716424 c!1007796) b!5716421))

(assert (= (and b!5716424 (not c!1007796)) b!5716422))

(assert (= (and b!5716422 c!1007797) b!5716417))

(assert (= (and b!5716422 (not c!1007797)) b!5716420))

(assert (= (and b!5716420 c!1007795) b!5716425))

(assert (= (and b!5716420 (not c!1007795)) b!5716418))

(assert (= (or b!5716417 b!5716425) bm!436412))

(assert (= (or b!5716417 b!5716425) bm!436416))

(assert (= (or b!5716421 bm!436412) bm!436417))

(assert (= (or b!5716421 bm!436416) bm!436413))

(assert (= (or b!5716419 bm!436413) bm!436415))

(assert (= (or b!5716419 b!5716421) bm!436414))

(declare-fun m!6670016 () Bool)

(assert (=> b!5716416 m!6670016))

(declare-fun m!6670018 () Bool)

(assert (=> bm!436415 m!6670018))

(declare-fun m!6670020 () Bool)

(assert (=> b!5716423 m!6670020))

(declare-fun m!6670022 () Bool)

(assert (=> bm!436417 m!6670022))

(declare-fun m!6670024 () Bool)

(assert (=> bm!436414 m!6670024))

(assert (=> bm!436253 d!1803090))

(assert (=> b!5715482 d!1802760))

(declare-fun d!1803092 () Bool)

(assert (=> d!1803092 (= (head!12107 (exprs!5597 (h!69764 zl!343))) (h!69763 (exprs!5597 (h!69764 zl!343))))))

(assert (=> b!5715573 d!1803092))

(declare-fun b!5716426 () Bool)

(declare-fun e!3515496 () Bool)

(assert (=> b!5716426 (= e!3515496 (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277104)))))))))

(declare-fun d!1803094 () Bool)

(declare-fun c!1007799 () Bool)

(assert (=> d!1803094 (= c!1007799 e!3515496)))

(declare-fun res!2413680 () Bool)

(assert (=> d!1803094 (=> (not res!2413680) (not e!3515496))))

(assert (=> d!1803094 (= res!2413680 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277104))))))))

(declare-fun e!3515497 () (InoxSet Context!10194))

(assert (=> d!1803094 (= (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277104))) (h!69762 s!2326)) e!3515497)))

(declare-fun call!436423 () (InoxSet Context!10194))

(declare-fun b!5716427 () Bool)

(assert (=> b!5716427 (= e!3515497 ((_ map or) call!436423 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277104)))))) (h!69762 s!2326))))))

(declare-fun b!5716428 () Bool)

(declare-fun e!3515495 () (InoxSet Context!10194))

(assert (=> b!5716428 (= e!3515495 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436418 () Bool)

(assert (=> bm!436418 (= call!436423 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277104))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277104)))))) (h!69762 s!2326)))))

(declare-fun b!5716429 () Bool)

(assert (=> b!5716429 (= e!3515495 call!436423)))

(declare-fun b!5716430 () Bool)

(assert (=> b!5716430 (= e!3515497 e!3515495)))

(declare-fun c!1007800 () Bool)

(assert (=> b!5716430 (= c!1007800 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277104))))))))

(assert (= (and d!1803094 res!2413680) b!5716426))

(assert (= (and d!1803094 c!1007799) b!5716427))

(assert (= (and d!1803094 (not c!1007799)) b!5716430))

(assert (= (and b!5716430 c!1007800) b!5716429))

(assert (= (and b!5716430 (not c!1007800)) b!5716428))

(assert (= (or b!5716427 b!5716429) bm!436418))

(declare-fun m!6670026 () Bool)

(assert (=> b!5716426 m!6670026))

(declare-fun m!6670028 () Bool)

(assert (=> b!5716427 m!6670028))

(declare-fun m!6670030 () Bool)

(assert (=> bm!436418 m!6670030))

(assert (=> b!5715087 d!1803094))

(assert (=> d!1802686 d!1802792))

(declare-fun d!1803096 () Bool)

(assert (=> d!1803096 (= (Exists!2813 lambda!308786) (choose!43215 lambda!308786))))

(declare-fun bs!1335647 () Bool)

(assert (= bs!1335647 d!1803096))

(declare-fun m!6670032 () Bool)

(assert (=> bs!1335647 m!6670032))

(assert (=> d!1802714 d!1803096))

(declare-fun d!1803098 () Bool)

(assert (=> d!1803098 (= (Exists!2813 lambda!308787) (choose!43215 lambda!308787))))

(declare-fun bs!1335648 () Bool)

(assert (= bs!1335648 d!1803098))

(declare-fun m!6670034 () Bool)

(assert (=> bs!1335648 m!6670034))

(assert (=> d!1802714 d!1803098))

(declare-fun bs!1335649 () Bool)

(declare-fun d!1803100 () Bool)

(assert (= bs!1335649 (and d!1803100 d!1802448)))

(declare-fun lambda!308833 () Int)

(assert (=> bs!1335649 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308742))))

(declare-fun bs!1335650 () Bool)

(assert (= bs!1335650 (and d!1803100 b!5715849)))

(assert (=> bs!1335650 (not (= lambda!308833 lambda!308799))))

(declare-fun bs!1335651 () Bool)

(assert (= bs!1335651 (and d!1803100 b!5714499)))

(assert (=> bs!1335651 (not (= lambda!308833 lambda!308685))))

(declare-fun bs!1335652 () Bool)

(assert (= bs!1335652 (and d!1803100 d!1802776)))

(assert (=> bs!1335652 (not (= lambda!308833 lambda!308794))))

(declare-fun bs!1335653 () Bool)

(assert (= bs!1335653 (and d!1803100 d!1803082)))

(assert (=> bs!1335653 (= lambda!308833 lambda!308832)))

(declare-fun bs!1335654 () Bool)

(assert (= bs!1335654 (and d!1803100 b!5716226)))

(assert (=> bs!1335654 (not (= lambda!308833 lambda!308821))))

(declare-fun bs!1335655 () Bool)

(assert (= bs!1335655 (and d!1803100 d!1802660)))

(assert (=> bs!1335655 (not (= lambda!308833 lambda!308765))))

(declare-fun bs!1335656 () Bool)

(assert (= bs!1335656 (and d!1803100 b!5716351)))

(assert (=> bs!1335656 (not (= lambda!308833 lambda!308826))))

(declare-fun bs!1335657 () Bool)

(assert (= bs!1335657 (and d!1803100 b!5714517)))

(assert (=> bs!1335657 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308679))))

(assert (=> bs!1335652 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308793))))

(declare-fun bs!1335658 () Bool)

(assert (= bs!1335658 (and d!1803100 d!1802700)))

(assert (=> bs!1335658 (not (= lambda!308833 lambda!308782))))

(declare-fun bs!1335659 () Bool)

(assert (= bs!1335659 (and d!1803100 b!5716132)))

(assert (=> bs!1335659 (not (= lambda!308833 lambda!308809))))

(declare-fun bs!1335660 () Bool)

(assert (= bs!1335660 (and d!1803100 d!1802714)))

(assert (=> bs!1335660 (not (= lambda!308833 lambda!308787))))

(declare-fun bs!1335661 () Bool)

(assert (= bs!1335661 (and d!1803100 d!1802970)))

(assert (=> bs!1335661 (= (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (= lambda!308833 lambda!308816))))

(assert (=> bs!1335655 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308764))))

(assert (=> bs!1335661 (not (= lambda!308833 lambda!308817))))

(declare-fun bs!1335662 () Bool)

(assert (= bs!1335662 (and d!1803100 b!5714753)))

(assert (=> bs!1335662 (not (= lambda!308833 lambda!308716))))

(assert (=> bs!1335660 (= lambda!308833 lambda!308786)))

(declare-fun bs!1335663 () Bool)

(assert (= bs!1335663 (and d!1803100 b!5714504)))

(assert (=> bs!1335663 (not (= lambda!308833 lambda!308683))))

(declare-fun bs!1335664 () Bool)

(assert (= bs!1335664 (and d!1803100 b!5715508)))

(assert (=> bs!1335664 (not (= lambda!308833 lambda!308767))))

(declare-fun bs!1335665 () Bool)

(assert (= bs!1335665 (and d!1803100 b!5716128)))

(assert (=> bs!1335665 (not (= lambda!308833 lambda!308810))))

(assert (=> bs!1335651 (not (= lambda!308833 lambda!308686))))

(declare-fun bs!1335666 () Bool)

(assert (= bs!1335666 (and d!1803100 b!5715645)))

(assert (=> bs!1335666 (not (= lambda!308833 lambda!308785))))

(declare-fun bs!1335667 () Bool)

(assert (= bs!1335667 (and d!1803100 d!1802830)))

(assert (=> bs!1335667 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308801))))

(declare-fun bs!1335668 () Bool)

(assert (= bs!1335668 (and d!1803100 b!5716347)))

(assert (=> bs!1335668 (not (= lambda!308833 lambda!308827))))

(assert (=> bs!1335658 (= (= lt!2277097 (Star!15713 (reg!16042 (regOne!31938 r!7292)))) (= lambda!308833 lambda!308781))))

(assert (=> bs!1335649 (not (= lambda!308833 lambda!308743))))

(assert (=> bs!1335657 (not (= lambda!308833 lambda!308680))))

(declare-fun bs!1335669 () Bool)

(assert (= bs!1335669 (and d!1803100 d!1802432)))

(assert (=> bs!1335669 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308728))))

(declare-fun bs!1335670 () Bool)

(assert (= bs!1335670 (and d!1803100 b!5715853)))

(assert (=> bs!1335670 (not (= lambda!308833 lambda!308798))))

(declare-fun bs!1335671 () Bool)

(assert (= bs!1335671 (and d!1803100 b!5715649)))

(assert (=> bs!1335671 (not (= lambda!308833 lambda!308784))))

(declare-fun bs!1335672 () Bool)

(assert (= bs!1335672 (and d!1803100 b!5716230)))

(assert (=> bs!1335672 (not (= lambda!308833 lambda!308820))))

(declare-fun bs!1335673 () Bool)

(assert (= bs!1335673 (and d!1803100 d!1802658)))

(assert (=> bs!1335673 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308763))))

(declare-fun bs!1335674 () Bool)

(assert (= bs!1335674 (and d!1803100 b!5714749)))

(assert (=> bs!1335674 (not (= lambda!308833 lambda!308717))))

(assert (=> bs!1335651 (= lambda!308833 lambda!308684)))

(assert (=> bs!1335663 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308833 lambda!308682))))

(declare-fun bs!1335675 () Bool)

(assert (= bs!1335675 (and d!1803100 b!5716248)))

(assert (=> bs!1335675 (not (= lambda!308833 lambda!308823))))

(assert (=> bs!1335667 (not (= lambda!308833 lambda!308802))))

(declare-fun bs!1335676 () Bool)

(assert (= bs!1335676 (and d!1803100 b!5716252)))

(assert (=> bs!1335676 (not (= lambda!308833 lambda!308822))))

(declare-fun bs!1335677 () Bool)

(assert (= bs!1335677 (and d!1803100 d!1802704)))

(assert (=> bs!1335677 (= lambda!308833 lambda!308783)))

(declare-fun bs!1335678 () Bool)

(assert (= bs!1335678 (and d!1803100 b!5715512)))

(assert (=> bs!1335678 (not (= lambda!308833 lambda!308766))))

(assert (=> d!1803100 true))

(assert (=> d!1803100 true))

(assert (=> d!1803100 true))

(declare-fun lambda!308834 () Int)

(assert (=> bs!1335649 (not (= lambda!308834 lambda!308742))))

(assert (=> bs!1335651 (not (= lambda!308834 lambda!308685))))

(assert (=> bs!1335652 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308834 lambda!308794))))

(assert (=> bs!1335653 (not (= lambda!308834 lambda!308832))))

(assert (=> bs!1335654 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 (regOne!31939 lt!2277132))) (= lt!2277097 (regTwo!31938 (regOne!31939 lt!2277132)))) (= lambda!308834 lambda!308821))))

(assert (=> bs!1335655 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308834 lambda!308765))))

(assert (=> bs!1335656 (not (= lambda!308834 lambda!308826))))

(assert (=> bs!1335657 (not (= lambda!308834 lambda!308679))))

(assert (=> bs!1335652 (not (= lambda!308834 lambda!308793))))

(assert (=> bs!1335658 (not (= lambda!308834 lambda!308782))))

(assert (=> bs!1335659 (not (= lambda!308834 lambda!308809))))

(assert (=> bs!1335660 (= lambda!308834 lambda!308787)))

(assert (=> bs!1335661 (not (= lambda!308834 lambda!308816))))

(assert (=> bs!1335655 (not (= lambda!308834 lambda!308764))))

(declare-fun bs!1335679 () Bool)

(assert (= bs!1335679 d!1803100))

(assert (=> bs!1335679 (not (= lambda!308834 lambda!308833))))

(assert (=> bs!1335650 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 (regTwo!31939 r!7292))) (= lt!2277097 (regTwo!31938 (regTwo!31939 r!7292)))) (= lambda!308834 lambda!308799))))

(assert (=> bs!1335661 (not (= lambda!308834 lambda!308817))))

(assert (=> bs!1335662 (not (= lambda!308834 lambda!308716))))

(assert (=> bs!1335660 (not (= lambda!308834 lambda!308786))))

(assert (=> bs!1335663 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) lt!2277097) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308834 lambda!308683))))

(assert (=> bs!1335664 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308834 lambda!308767))))

(assert (=> bs!1335665 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 (regOne!31939 r!7292))) (= lt!2277097 (regTwo!31938 (regOne!31939 r!7292)))) (= lambda!308834 lambda!308810))))

(assert (=> bs!1335651 (= lambda!308834 lambda!308686)))

(assert (=> bs!1335666 (= (and (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 lt!2277097)) (= lt!2277097 (regTwo!31938 lt!2277097))) (= lambda!308834 lambda!308785))))

(assert (=> bs!1335667 (not (= lambda!308834 lambda!308801))))

(assert (=> bs!1335668 (= (and (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 (regOne!31939 lt!2277097))) (= lt!2277097 (regTwo!31938 (regOne!31939 lt!2277097)))) (= lambda!308834 lambda!308827))))

(assert (=> bs!1335658 (not (= lambda!308834 lambda!308781))))

(assert (=> bs!1335649 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308834 lambda!308743))))

(assert (=> bs!1335657 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308834 lambda!308680))))

(assert (=> bs!1335669 (not (= lambda!308834 lambda!308728))))

(assert (=> bs!1335670 (not (= lambda!308834 lambda!308798))))

(assert (=> bs!1335671 (not (= lambda!308834 lambda!308784))))

(assert (=> bs!1335672 (not (= lambda!308834 lambda!308820))))

(assert (=> bs!1335673 (not (= lambda!308834 lambda!308763))))

(assert (=> bs!1335674 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 lt!2277132)) (= lt!2277097 (regTwo!31938 lt!2277132))) (= lambda!308834 lambda!308717))))

(assert (=> bs!1335651 (not (= lambda!308834 lambda!308684))))

(assert (=> bs!1335663 (not (= lambda!308834 lambda!308682))))

(assert (=> bs!1335675 (= (and (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 (regTwo!31939 lt!2277097))) (= lt!2277097 (regTwo!31938 (regTwo!31939 lt!2277097)))) (= lambda!308834 lambda!308823))))

(assert (=> bs!1335667 (= (and (= (_1!36113 lt!2277139) s!2326) (= (reg!16042 (regOne!31938 r!7292)) (regOne!31938 r!7292)) (= lt!2277097 (regTwo!31938 r!7292))) (= lambda!308834 lambda!308802))))

(assert (=> bs!1335676 (not (= lambda!308834 lambda!308822))))

(assert (=> bs!1335677 (not (= lambda!308834 lambda!308783))))

(assert (=> bs!1335678 (not (= lambda!308834 lambda!308766))))

(assert (=> d!1803100 true))

(assert (=> d!1803100 true))

(assert (=> d!1803100 true))

(assert (=> d!1803100 (= (Exists!2813 lambda!308833) (Exists!2813 lambda!308834))))

(assert (=> d!1803100 true))

(declare-fun _$90!1460 () Unit!156384)

(assert (=> d!1803100 (= (choose!43217 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (_1!36113 lt!2277139)) _$90!1460)))

(declare-fun m!6670036 () Bool)

(assert (=> bs!1335679 m!6670036))

(declare-fun m!6670038 () Bool)

(assert (=> bs!1335679 m!6670038))

(assert (=> d!1802714 d!1803100))

(assert (=> d!1802714 d!1802812))

(declare-fun b!5716431 () Bool)

(declare-fun e!3515498 () List!63438)

(assert (=> b!5716431 (= e!3515498 (_2!36113 lt!2277139))))

(declare-fun b!5716434 () Bool)

(declare-fun e!3515499 () Bool)

(declare-fun lt!2277408 () List!63438)

(assert (=> b!5716434 (= e!3515499 (or (not (= (_2!36113 lt!2277139) Nil!63314)) (= lt!2277408 (t!376758 (_1!36113 lt!2277139)))))))

(declare-fun b!5716433 () Bool)

(declare-fun res!2413681 () Bool)

(assert (=> b!5716433 (=> (not res!2413681) (not e!3515499))))

(assert (=> b!5716433 (= res!2413681 (= (size!40024 lt!2277408) (+ (size!40024 (t!376758 (_1!36113 lt!2277139))) (size!40024 (_2!36113 lt!2277139)))))))

(declare-fun b!5716432 () Bool)

(assert (=> b!5716432 (= e!3515498 (Cons!63314 (h!69762 (t!376758 (_1!36113 lt!2277139))) (++!13908 (t!376758 (t!376758 (_1!36113 lt!2277139))) (_2!36113 lt!2277139))))))

(declare-fun d!1803102 () Bool)

(assert (=> d!1803102 e!3515499))

(declare-fun res!2413682 () Bool)

(assert (=> d!1803102 (=> (not res!2413682) (not e!3515499))))

(assert (=> d!1803102 (= res!2413682 (= (content!11499 lt!2277408) ((_ map or) (content!11499 (t!376758 (_1!36113 lt!2277139))) (content!11499 (_2!36113 lt!2277139)))))))

(assert (=> d!1803102 (= lt!2277408 e!3515498)))

(declare-fun c!1007801 () Bool)

(assert (=> d!1803102 (= c!1007801 ((_ is Nil!63314) (t!376758 (_1!36113 lt!2277139))))))

(assert (=> d!1803102 (= (++!13908 (t!376758 (_1!36113 lt!2277139)) (_2!36113 lt!2277139)) lt!2277408)))

(assert (= (and d!1803102 c!1007801) b!5716431))

(assert (= (and d!1803102 (not c!1007801)) b!5716432))

(assert (= (and d!1803102 res!2413682) b!5716433))

(assert (= (and b!5716433 res!2413681) b!5716434))

(declare-fun m!6670040 () Bool)

(assert (=> b!5716433 m!6670040))

(assert (=> b!5716433 m!6669950))

(assert (=> b!5716433 m!6668724))

(declare-fun m!6670042 () Bool)

(assert (=> b!5716432 m!6670042))

(declare-fun m!6670044 () Bool)

(assert (=> d!1803102 m!6670044))

(declare-fun m!6670046 () Bool)

(assert (=> d!1803102 m!6670046))

(assert (=> d!1803102 m!6668732))

(assert (=> b!5715495 d!1803102))

(assert (=> b!5715518 d!1802960))

(assert (=> b!5715518 d!1802962))

(declare-fun d!1803104 () Bool)

(declare-fun lt!2277409 () Int)

(assert (=> d!1803104 (>= lt!2277409 0)))

(declare-fun e!3515500 () Int)

(assert (=> d!1803104 (= lt!2277409 e!3515500)))

(declare-fun c!1007802 () Bool)

(assert (=> d!1803104 (= c!1007802 ((_ is Nil!63314) lt!2277350))))

(assert (=> d!1803104 (= (size!40024 lt!2277350) lt!2277409)))

(declare-fun b!5716435 () Bool)

(assert (=> b!5716435 (= e!3515500 0)))

(declare-fun b!5716436 () Bool)

(assert (=> b!5716436 (= e!3515500 (+ 1 (size!40024 (t!376758 lt!2277350))))))

(assert (= (and d!1803104 c!1007802) b!5716435))

(assert (= (and d!1803104 (not c!1007802)) b!5716436))

(declare-fun m!6670048 () Bool)

(assert (=> b!5716436 m!6670048))

(assert (=> b!5715642 d!1803104))

(assert (=> b!5715642 d!1802870))

(assert (=> b!5715642 d!1803070))

(assert (=> b!5714655 d!1803064))

(assert (=> b!5714655 d!1802918))

(assert (=> d!1802594 d!1802590))

(declare-fun d!1803106 () Bool)

(assert (=> d!1803106 (= (flatMap!1326 lt!2277101 lambda!308681) (dynLambda!24772 lambda!308681 lt!2277095))))

(assert (=> d!1803106 true))

(declare-fun _$13!2380 () Unit!156384)

(assert (=> d!1803106 (= (choose!43219 lt!2277101 lt!2277095 lambda!308681) _$13!2380)))

(declare-fun b_lambda!215981 () Bool)

(assert (=> (not b_lambda!215981) (not d!1803106)))

(declare-fun bs!1335680 () Bool)

(assert (= bs!1335680 d!1803106))

(assert (=> bs!1335680 m!6667910))

(assert (=> bs!1335680 m!6668894))

(assert (=> d!1802594 d!1803106))

(declare-fun d!1803108 () Bool)

(assert (=> d!1803108 (= (isEmpty!35188 (t!376759 (unfocusZipperList!1141 zl!343))) ((_ is Nil!63315) (t!376759 (unfocusZipperList!1141 zl!343))))))

(assert (=> b!5715599 d!1803108))

(assert (=> b!5715439 d!1802742))

(declare-fun b!5716437 () Bool)

(declare-fun res!2413684 () Bool)

(declare-fun e!3515506 () Bool)

(assert (=> b!5716437 (=> (not res!2413684) (not e!3515506))))

(assert (=> b!5716437 (= res!2413684 (isEmpty!35186 (tail!11200 (tail!11200 (_1!36113 lt!2277144)))))))

(declare-fun b!5716438 () Bool)

(declare-fun res!2413687 () Bool)

(assert (=> b!5716438 (=> (not res!2413687) (not e!3515506))))

(declare-fun call!436424 () Bool)

(assert (=> b!5716438 (= res!2413687 (not call!436424))))

(declare-fun b!5716439 () Bool)

(declare-fun res!2413689 () Bool)

(declare-fun e!3515503 () Bool)

(assert (=> b!5716439 (=> res!2413689 e!3515503)))

(assert (=> b!5716439 (= res!2413689 e!3515506)))

(declare-fun res!2413688 () Bool)

(assert (=> b!5716439 (=> (not res!2413688) (not e!3515506))))

(declare-fun lt!2277410 () Bool)

(assert (=> b!5716439 (= res!2413688 lt!2277410)))

(declare-fun d!1803110 () Bool)

(declare-fun e!3515505 () Bool)

(assert (=> d!1803110 e!3515505))

(declare-fun c!1007805 () Bool)

(assert (=> d!1803110 (= c!1007805 ((_ is EmptyExpr!15713) (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144)))))))

(declare-fun e!3515504 () Bool)

(assert (=> d!1803110 (= lt!2277410 e!3515504)))

(declare-fun c!1007804 () Bool)

(assert (=> d!1803110 (= c!1007804 (isEmpty!35186 (tail!11200 (_1!36113 lt!2277144))))))

(assert (=> d!1803110 (validRegex!7449 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144))))))

(assert (=> d!1803110 (= (matchR!7898 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144))) (tail!11200 (_1!36113 lt!2277144))) lt!2277410)))

(declare-fun b!5716440 () Bool)

(declare-fun e!3515507 () Bool)

(declare-fun e!3515502 () Bool)

(assert (=> b!5716440 (= e!3515507 e!3515502)))

(declare-fun res!2413690 () Bool)

(assert (=> b!5716440 (=> res!2413690 e!3515502)))

(assert (=> b!5716440 (= res!2413690 call!436424)))

(declare-fun b!5716441 () Bool)

(assert (=> b!5716441 (= e!3515504 (nullable!5745 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144)))))))

(declare-fun b!5716442 () Bool)

(declare-fun res!2413686 () Bool)

(assert (=> b!5716442 (=> res!2413686 e!3515503)))

(assert (=> b!5716442 (= res!2413686 (not ((_ is ElementMatch!15713) (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144))))))))

(declare-fun e!3515501 () Bool)

(assert (=> b!5716442 (= e!3515501 e!3515503)))

(declare-fun b!5716443 () Bool)

(assert (=> b!5716443 (= e!3515504 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144))) (head!12105 (tail!11200 (_1!36113 lt!2277144)))) (tail!11200 (tail!11200 (_1!36113 lt!2277144)))))))

(declare-fun b!5716444 () Bool)

(declare-fun res!2413683 () Bool)

(assert (=> b!5716444 (=> res!2413683 e!3515502)))

(assert (=> b!5716444 (= res!2413683 (not (isEmpty!35186 (tail!11200 (tail!11200 (_1!36113 lt!2277144))))))))

(declare-fun bm!436419 () Bool)

(assert (=> bm!436419 (= call!436424 (isEmpty!35186 (tail!11200 (_1!36113 lt!2277144))))))

(declare-fun b!5716445 () Bool)

(assert (=> b!5716445 (= e!3515505 e!3515501)))

(declare-fun c!1007803 () Bool)

(assert (=> b!5716445 (= c!1007803 ((_ is EmptyLang!15713) (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144)))))))

(declare-fun b!5716446 () Bool)

(assert (=> b!5716446 (= e!3515503 e!3515507)))

(declare-fun res!2413685 () Bool)

(assert (=> b!5716446 (=> (not res!2413685) (not e!3515507))))

(assert (=> b!5716446 (= res!2413685 (not lt!2277410))))

(declare-fun b!5716447 () Bool)

(assert (=> b!5716447 (= e!3515501 (not lt!2277410))))

(declare-fun b!5716448 () Bool)

(assert (=> b!5716448 (= e!3515506 (= (head!12105 (tail!11200 (_1!36113 lt!2277144))) (c!1007275 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144))))))))

(declare-fun b!5716449 () Bool)

(assert (=> b!5716449 (= e!3515505 (= lt!2277410 call!436424))))

(declare-fun b!5716450 () Bool)

(assert (=> b!5716450 (= e!3515502 (not (= (head!12105 (tail!11200 (_1!36113 lt!2277144))) (c!1007275 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144)))))))))

(assert (= (and d!1803110 c!1007804) b!5716441))

(assert (= (and d!1803110 (not c!1007804)) b!5716443))

(assert (= (and d!1803110 c!1007805) b!5716449))

(assert (= (and d!1803110 (not c!1007805)) b!5716445))

(assert (= (and b!5716445 c!1007803) b!5716447))

(assert (= (and b!5716445 (not c!1007803)) b!5716442))

(assert (= (and b!5716442 (not res!2413686)) b!5716439))

(assert (= (and b!5716439 res!2413688) b!5716438))

(assert (= (and b!5716438 res!2413687) b!5716437))

(assert (= (and b!5716437 res!2413684) b!5716448))

(assert (= (and b!5716439 (not res!2413689)) b!5716446))

(assert (= (and b!5716446 res!2413685) b!5716440))

(assert (= (and b!5716440 (not res!2413690)) b!5716444))

(assert (= (and b!5716444 (not res!2413683)) b!5716450))

(assert (= (or b!5716449 b!5716438 b!5716440) bm!436419))

(assert (=> b!5716441 m!6669256))

(declare-fun m!6670050 () Bool)

(assert (=> b!5716441 m!6670050))

(assert (=> d!1803110 m!6669006))

(assert (=> d!1803110 m!6669260))

(assert (=> d!1803110 m!6669256))

(declare-fun m!6670052 () Bool)

(assert (=> d!1803110 m!6670052))

(assert (=> b!5716450 m!6669006))

(assert (=> b!5716450 m!6669550))

(assert (=> b!5716443 m!6669006))

(assert (=> b!5716443 m!6669550))

(assert (=> b!5716443 m!6669256))

(assert (=> b!5716443 m!6669550))

(declare-fun m!6670054 () Bool)

(assert (=> b!5716443 m!6670054))

(assert (=> b!5716443 m!6669006))

(assert (=> b!5716443 m!6669554))

(assert (=> b!5716443 m!6670054))

(assert (=> b!5716443 m!6669554))

(declare-fun m!6670056 () Bool)

(assert (=> b!5716443 m!6670056))

(assert (=> b!5716437 m!6669006))

(assert (=> b!5716437 m!6669554))

(assert (=> b!5716437 m!6669554))

(declare-fun m!6670058 () Bool)

(assert (=> b!5716437 m!6670058))

(assert (=> b!5716444 m!6669006))

(assert (=> b!5716444 m!6669554))

(assert (=> b!5716444 m!6669554))

(assert (=> b!5716444 m!6670058))

(assert (=> b!5716448 m!6669006))

(assert (=> b!5716448 m!6669550))

(assert (=> bm!436419 m!6669006))

(assert (=> bm!436419 m!6669260))

(assert (=> b!5715670 d!1803110))

(declare-fun call!436427 () Regex!15713)

(declare-fun c!1007806 () Bool)

(declare-fun bm!436420 () Bool)

(assert (=> bm!436420 (= call!436427 (derivativeStep!4516 (ite c!1007806 (regOne!31939 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))) (head!12105 (_1!36113 lt!2277144))))))

(declare-fun b!5716451 () Bool)

(declare-fun e!3515510 () Regex!15713)

(declare-fun call!436425 () Regex!15713)

(assert (=> b!5716451 (= e!3515510 (Union!15713 (Concat!24558 call!436425 (regTwo!31938 (reg!16042 (regOne!31938 r!7292)))) EmptyLang!15713))))

(declare-fun b!5716453 () Bool)

(declare-fun e!3515512 () Regex!15713)

(assert (=> b!5716453 (= e!3515512 EmptyLang!15713)))

(declare-fun b!5716454 () Bool)

(declare-fun e!3515508 () Regex!15713)

(assert (=> b!5716454 (= e!3515508 (ite (= (head!12105 (_1!36113 lt!2277144)) (c!1007275 (reg!16042 (regOne!31938 r!7292)))) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5716455 () Bool)

(declare-fun e!3515509 () Regex!15713)

(declare-fun call!436428 () Regex!15713)

(assert (=> b!5716455 (= e!3515509 (Union!15713 call!436427 call!436428))))

(declare-fun b!5716456 () Bool)

(assert (=> b!5716456 (= e!3515510 (Union!15713 (Concat!24558 call!436427 (regTwo!31938 (reg!16042 (regOne!31938 r!7292)))) call!436425))))

(declare-fun b!5716457 () Bool)

(assert (=> b!5716457 (= c!1007806 ((_ is Union!15713) (reg!16042 (regOne!31938 r!7292))))))

(assert (=> b!5716457 (= e!3515508 e!3515509)))

(declare-fun c!1007810 () Bool)

(declare-fun c!1007809 () Bool)

(declare-fun bm!436421 () Bool)

(assert (=> bm!436421 (= call!436428 (derivativeStep!4516 (ite c!1007806 (regTwo!31939 (reg!16042 (regOne!31938 r!7292))) (ite c!1007809 (reg!16042 (reg!16042 (regOne!31938 r!7292))) (ite c!1007810 (regTwo!31938 (reg!16042 (regOne!31938 r!7292))) (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))) (head!12105 (_1!36113 lt!2277144))))))

(declare-fun bm!436422 () Bool)

(declare-fun call!436426 () Regex!15713)

(assert (=> bm!436422 (= call!436426 call!436428)))

(declare-fun bm!436423 () Bool)

(assert (=> bm!436423 (= call!436425 call!436426)))

(declare-fun b!5716458 () Bool)

(declare-fun e!3515511 () Regex!15713)

(assert (=> b!5716458 (= e!3515511 (Concat!24558 call!436426 (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5716452 () Bool)

(assert (=> b!5716452 (= e!3515512 e!3515508)))

(declare-fun c!1007807 () Bool)

(assert (=> b!5716452 (= c!1007807 ((_ is ElementMatch!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun d!1803112 () Bool)

(declare-fun lt!2277411 () Regex!15713)

(assert (=> d!1803112 (validRegex!7449 lt!2277411)))

(assert (=> d!1803112 (= lt!2277411 e!3515512)))

(declare-fun c!1007808 () Bool)

(assert (=> d!1803112 (= c!1007808 (or ((_ is EmptyExpr!15713) (reg!16042 (regOne!31938 r!7292))) ((_ is EmptyLang!15713) (reg!16042 (regOne!31938 r!7292)))))))

(assert (=> d!1803112 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1803112 (= (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 (_1!36113 lt!2277144))) lt!2277411)))

(declare-fun b!5716459 () Bool)

(assert (=> b!5716459 (= c!1007810 (nullable!5745 (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))))

(assert (=> b!5716459 (= e!3515511 e!3515510)))

(declare-fun b!5716460 () Bool)

(assert (=> b!5716460 (= e!3515509 e!3515511)))

(assert (=> b!5716460 (= c!1007809 ((_ is Star!15713) (reg!16042 (regOne!31938 r!7292))))))

(assert (= (and d!1803112 c!1007808) b!5716453))

(assert (= (and d!1803112 (not c!1007808)) b!5716452))

(assert (= (and b!5716452 c!1007807) b!5716454))

(assert (= (and b!5716452 (not c!1007807)) b!5716457))

(assert (= (and b!5716457 c!1007806) b!5716455))

(assert (= (and b!5716457 (not c!1007806)) b!5716460))

(assert (= (and b!5716460 c!1007809) b!5716458))

(assert (= (and b!5716460 (not c!1007809)) b!5716459))

(assert (= (and b!5716459 c!1007810) b!5716456))

(assert (= (and b!5716459 (not c!1007810)) b!5716451))

(assert (= (or b!5716456 b!5716451) bm!436423))

(assert (= (or b!5716458 bm!436423) bm!436422))

(assert (= (or b!5716455 bm!436422) bm!436421))

(assert (= (or b!5716455 b!5716456) bm!436420))

(assert (=> bm!436420 m!6669002))

(declare-fun m!6670060 () Bool)

(assert (=> bm!436420 m!6670060))

(assert (=> bm!436421 m!6669002))

(declare-fun m!6670062 () Bool)

(assert (=> bm!436421 m!6670062))

(declare-fun m!6670064 () Bool)

(assert (=> d!1803112 m!6670064))

(assert (=> d!1803112 m!6668948))

(assert (=> b!5716459 m!6669186))

(assert (=> b!5715670 d!1803112))

(assert (=> b!5715670 d!1802900))

(assert (=> b!5715670 d!1802902))

(assert (=> d!1802630 d!1803008))

(assert (=> b!5714943 d!1802874))

(declare-fun d!1803114 () Bool)

(declare-fun c!1007811 () Bool)

(assert (=> d!1803114 (= c!1007811 (isEmpty!35186 (tail!11200 (t!376758 s!2326))))))

(declare-fun e!3515513 () Bool)

(assert (=> d!1803114 (= (matchZipper!1851 (derivationStepZipper!1796 ((_ map or) lt!2277113 lt!2277110) (head!12105 (t!376758 s!2326))) (tail!11200 (t!376758 s!2326))) e!3515513)))

(declare-fun b!5716461 () Bool)

(assert (=> b!5716461 (= e!3515513 (nullableZipper!1663 (derivationStepZipper!1796 ((_ map or) lt!2277113 lt!2277110) (head!12105 (t!376758 s!2326)))))))

(declare-fun b!5716462 () Bool)

(assert (=> b!5716462 (= e!3515513 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 ((_ map or) lt!2277113 lt!2277110) (head!12105 (t!376758 s!2326))) (head!12105 (tail!11200 (t!376758 s!2326)))) (tail!11200 (tail!11200 (t!376758 s!2326)))))))

(assert (= (and d!1803114 c!1007811) b!5716461))

(assert (= (and d!1803114 (not c!1007811)) b!5716462))

(assert (=> d!1803114 m!6668874))

(assert (=> d!1803114 m!6669426))

(assert (=> b!5716461 m!6669182))

(declare-fun m!6670066 () Bool)

(assert (=> b!5716461 m!6670066))

(assert (=> b!5716462 m!6668874))

(assert (=> b!5716462 m!6669430))

(assert (=> b!5716462 m!6669182))

(assert (=> b!5716462 m!6669430))

(declare-fun m!6670068 () Bool)

(assert (=> b!5716462 m!6670068))

(assert (=> b!5716462 m!6668874))

(assert (=> b!5716462 m!6669434))

(assert (=> b!5716462 m!6670068))

(assert (=> b!5716462 m!6669434))

(declare-fun m!6670070 () Bool)

(assert (=> b!5716462 m!6670070))

(assert (=> b!5715618 d!1803114))

(declare-fun bs!1335681 () Bool)

(declare-fun d!1803116 () Bool)

(assert (= bs!1335681 (and d!1803116 b!5714534)))

(declare-fun lambda!308835 () Int)

(assert (=> bs!1335681 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308835 lambda!308681))))

(declare-fun bs!1335682 () Bool)

(assert (= bs!1335682 (and d!1803116 d!1802862)))

(assert (=> bs!1335682 (= lambda!308835 lambda!308803)))

(declare-fun bs!1335683 () Bool)

(assert (= bs!1335683 (and d!1803116 d!1802740)))

(assert (=> bs!1335683 (= (= (head!12105 (t!376758 s!2326)) (head!12105 lt!2277105)) (= lambda!308835 lambda!308788))))

(declare-fun bs!1335684 () Bool)

(assert (= bs!1335684 (and d!1803116 d!1802816)))

(assert (=> bs!1335684 (= lambda!308835 lambda!308800)))

(declare-fun bs!1335685 () Bool)

(assert (= bs!1335685 (and d!1803116 d!1802898)))

(assert (=> bs!1335685 (= (= (head!12105 (t!376758 s!2326)) (head!12105 (_1!36113 lt!2277144))) (= lambda!308835 lambda!308807))))

(declare-fun bs!1335686 () Bool)

(assert (= bs!1335686 (and d!1803116 d!1802892)))

(assert (=> bs!1335686 (= lambda!308835 lambda!308806)))

(declare-fun bs!1335687 () Bool)

(assert (= bs!1335687 (and d!1803116 d!1803000)))

(assert (=> bs!1335687 (= (= (head!12105 (t!376758 s!2326)) (head!12105 lt!2277105)) (= lambda!308835 lambda!308819))))

(declare-fun bs!1335688 () Bool)

(assert (= bs!1335688 (and d!1803116 d!1802600)))

(assert (=> bs!1335688 (= (= (head!12105 (t!376758 s!2326)) (h!69762 s!2326)) (= lambda!308835 lambda!308755))))

(assert (=> d!1803116 true))

(assert (=> d!1803116 (= (derivationStepZipper!1796 ((_ map or) lt!2277113 lt!2277110) (head!12105 (t!376758 s!2326))) (flatMap!1326 ((_ map or) lt!2277113 lt!2277110) lambda!308835))))

(declare-fun bs!1335689 () Bool)

(assert (= bs!1335689 d!1803116))

(declare-fun m!6670072 () Bool)

(assert (=> bs!1335689 m!6670072))

(assert (=> b!5715618 d!1803116))

(assert (=> b!5715618 d!1802818))

(assert (=> b!5715618 d!1802820))

(declare-fun d!1803118 () Bool)

(assert (=> d!1803118 (= (isEmpty!35186 (tail!11200 (_2!36113 lt!2277139))) ((_ is Nil!63314) (tail!11200 (_2!36113 lt!2277139))))))

(assert (=> b!5714842 d!1803118))

(assert (=> b!5714842 d!1802948))

(declare-fun d!1803120 () Bool)

(assert (=> d!1803120 true))

(assert (=> d!1803120 true))

(declare-fun res!2413691 () Bool)

(assert (=> d!1803120 (= (choose!43215 lambda!308682) res!2413691)))

(assert (=> d!1802662 d!1803120))

(declare-fun b!5716463 () Bool)

(declare-fun e!3515515 () Bool)

(assert (=> b!5716463 (= e!3515515 (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277119)))))))))

(declare-fun d!1803122 () Bool)

(declare-fun c!1007812 () Bool)

(assert (=> d!1803122 (= c!1007812 e!3515515)))

(declare-fun res!2413692 () Bool)

(assert (=> d!1803122 (=> (not res!2413692) (not e!3515515))))

(assert (=> d!1803122 (= res!2413692 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277119))))))))

(declare-fun e!3515516 () (InoxSet Context!10194))

(assert (=> d!1803122 (= (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 lt!2277119))) (h!69762 s!2326)) e!3515516)))

(declare-fun b!5716464 () Bool)

(declare-fun call!436429 () (InoxSet Context!10194))

(assert (=> b!5716464 (= e!3515516 ((_ map or) call!436429 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277119)))))) (h!69762 s!2326))))))

(declare-fun b!5716465 () Bool)

(declare-fun e!3515514 () (InoxSet Context!10194))

(assert (=> b!5716465 (= e!3515514 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436424 () Bool)

(assert (=> bm!436424 (= call!436429 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277119))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277119)))))) (h!69762 s!2326)))))

(declare-fun b!5716466 () Bool)

(assert (=> b!5716466 (= e!3515514 call!436429)))

(declare-fun b!5716467 () Bool)

(assert (=> b!5716467 (= e!3515516 e!3515514)))

(declare-fun c!1007813 () Bool)

(assert (=> b!5716467 (= c!1007813 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277119))))))))

(assert (= (and d!1803122 res!2413692) b!5716463))

(assert (= (and d!1803122 c!1007812) b!5716464))

(assert (= (and d!1803122 (not c!1007812)) b!5716467))

(assert (= (and b!5716467 c!1007813) b!5716466))

(assert (= (and b!5716467 (not c!1007813)) b!5716465))

(assert (= (or b!5716464 b!5716466) bm!436424))

(declare-fun m!6670074 () Bool)

(assert (=> b!5716463 m!6670074))

(declare-fun m!6670076 () Bool)

(assert (=> b!5716464 m!6670076))

(declare-fun m!6670078 () Bool)

(assert (=> bm!436424 m!6670078))

(assert (=> b!5715077 d!1803122))

(declare-fun d!1803124 () Bool)

(declare-fun c!1007814 () Bool)

(assert (=> d!1803124 (= c!1007814 ((_ is Nil!63314) lt!2277325))))

(declare-fun e!3515517 () (InoxSet C!31696))

(assert (=> d!1803124 (= (content!11499 lt!2277325) e!3515517)))

(declare-fun b!5716468 () Bool)

(assert (=> b!5716468 (= e!3515517 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716469 () Bool)

(assert (=> b!5716469 (= e!3515517 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 lt!2277325) true) (content!11499 (t!376758 lt!2277325))))))

(assert (= (and d!1803124 c!1007814) b!5716468))

(assert (= (and d!1803124 (not c!1007814)) b!5716469))

(declare-fun m!6670080 () Bool)

(assert (=> b!5716469 m!6670080))

(declare-fun m!6670082 () Bool)

(assert (=> b!5716469 m!6670082))

(assert (=> d!1802654 d!1803124))

(declare-fun d!1803126 () Bool)

(declare-fun c!1007815 () Bool)

(assert (=> d!1803126 (= c!1007815 ((_ is Nil!63314) (_1!36113 lt!2277139)))))

(declare-fun e!3515518 () (InoxSet C!31696))

(assert (=> d!1803126 (= (content!11499 (_1!36113 lt!2277139)) e!3515518)))

(declare-fun b!5716470 () Bool)

(assert (=> b!5716470 (= e!3515518 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716471 () Bool)

(assert (=> b!5716471 (= e!3515518 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 (_1!36113 lt!2277139)) true) (content!11499 (t!376758 (_1!36113 lt!2277139)))))))

(assert (= (and d!1803126 c!1007815) b!5716470))

(assert (= (and d!1803126 (not c!1007815)) b!5716471))

(declare-fun m!6670084 () Bool)

(assert (=> b!5716471 m!6670084))

(assert (=> b!5716471 m!6670046))

(assert (=> d!1802654 d!1803126))

(assert (=> d!1802654 d!1802802))

(declare-fun d!1803128 () Bool)

(assert (=> d!1803128 (= (Exists!2813 (ite c!1007535 lambda!308766 lambda!308767)) (choose!43215 (ite c!1007535 lambda!308766 lambda!308767)))))

(declare-fun bs!1335690 () Bool)

(assert (= bs!1335690 d!1803128))

(declare-fun m!6670086 () Bool)

(assert (=> bs!1335690 m!6670086))

(assert (=> bm!436268 d!1803128))

(declare-fun bm!436425 () Bool)

(declare-fun call!436432 () Bool)

(declare-fun call!436431 () Bool)

(assert (=> bm!436425 (= call!436432 call!436431)))

(declare-fun b!5716472 () Bool)

(declare-fun res!2413694 () Bool)

(declare-fun e!3515524 () Bool)

(assert (=> b!5716472 (=> res!2413694 e!3515524)))

(assert (=> b!5716472 (= res!2413694 (not ((_ is Concat!24558) lt!2277262)))))

(declare-fun e!3515525 () Bool)

(assert (=> b!5716472 (= e!3515525 e!3515524)))

(declare-fun b!5716473 () Bool)

(declare-fun e!3515519 () Bool)

(assert (=> b!5716473 (= e!3515524 e!3515519)))

(declare-fun res!2413697 () Bool)

(assert (=> b!5716473 (=> (not res!2413697) (not e!3515519))))

(declare-fun call!436430 () Bool)

(assert (=> b!5716473 (= res!2413697 call!436430)))

(declare-fun b!5716474 () Bool)

(declare-fun res!2413693 () Bool)

(declare-fun e!3515523 () Bool)

(assert (=> b!5716474 (=> (not res!2413693) (not e!3515523))))

(assert (=> b!5716474 (= res!2413693 call!436430)))

(assert (=> b!5716474 (= e!3515525 e!3515523)))

(declare-fun b!5716475 () Bool)

(declare-fun e!3515522 () Bool)

(assert (=> b!5716475 (= e!3515522 call!436431)))

(declare-fun b!5716476 () Bool)

(assert (=> b!5716476 (= e!3515519 call!436432)))

(declare-fun b!5716477 () Bool)

(assert (=> b!5716477 (= e!3515523 call!436432)))

(declare-fun d!1803130 () Bool)

(declare-fun res!2413696 () Bool)

(declare-fun e!3515520 () Bool)

(assert (=> d!1803130 (=> res!2413696 e!3515520)))

(assert (=> d!1803130 (= res!2413696 ((_ is ElementMatch!15713) lt!2277262))))

(assert (=> d!1803130 (= (validRegex!7449 lt!2277262) e!3515520)))

(declare-fun b!5716478 () Bool)

(declare-fun e!3515521 () Bool)

(assert (=> b!5716478 (= e!3515521 e!3515525)))

(declare-fun c!1007817 () Bool)

(assert (=> b!5716478 (= c!1007817 ((_ is Union!15713) lt!2277262))))

(declare-fun c!1007816 () Bool)

(declare-fun bm!436426 () Bool)

(assert (=> bm!436426 (= call!436431 (validRegex!7449 (ite c!1007816 (reg!16042 lt!2277262) (ite c!1007817 (regTwo!31939 lt!2277262) (regTwo!31938 lt!2277262)))))))

(declare-fun bm!436427 () Bool)

(assert (=> bm!436427 (= call!436430 (validRegex!7449 (ite c!1007817 (regOne!31939 lt!2277262) (regOne!31938 lt!2277262))))))

(declare-fun b!5716479 () Bool)

(assert (=> b!5716479 (= e!3515521 e!3515522)))

(declare-fun res!2413695 () Bool)

(assert (=> b!5716479 (= res!2413695 (not (nullable!5745 (reg!16042 lt!2277262))))))

(assert (=> b!5716479 (=> (not res!2413695) (not e!3515522))))

(declare-fun b!5716480 () Bool)

(assert (=> b!5716480 (= e!3515520 e!3515521)))

(assert (=> b!5716480 (= c!1007816 ((_ is Star!15713) lt!2277262))))

(assert (= (and d!1803130 (not res!2413696)) b!5716480))

(assert (= (and b!5716480 c!1007816) b!5716479))

(assert (= (and b!5716480 (not c!1007816)) b!5716478))

(assert (= (and b!5716479 res!2413695) b!5716475))

(assert (= (and b!5716478 c!1007817) b!5716474))

(assert (= (and b!5716478 (not c!1007817)) b!5716472))

(assert (= (and b!5716474 res!2413693) b!5716477))

(assert (= (and b!5716472 (not res!2413694)) b!5716473))

(assert (= (and b!5716473 res!2413697) b!5716476))

(assert (= (or b!5716477 b!5716476) bm!436425))

(assert (= (or b!5716474 b!5716473) bm!436427))

(assert (= (or b!5716475 bm!436425) bm!436426))

(declare-fun m!6670088 () Bool)

(assert (=> bm!436426 m!6670088))

(declare-fun m!6670090 () Bool)

(assert (=> bm!436427 m!6670090))

(declare-fun m!6670092 () Bool)

(assert (=> b!5716479 m!6670092))

(assert (=> d!1802490 d!1803130))

(declare-fun bs!1335691 () Bool)

(declare-fun d!1803132 () Bool)

(assert (= bs!1335691 (and d!1803132 d!1803062)))

(declare-fun lambda!308836 () Int)

(assert (=> bs!1335691 (= lambda!308836 lambda!308828)))

(declare-fun bs!1335692 () Bool)

(assert (= bs!1335692 (and d!1803132 d!1802648)))

(assert (=> bs!1335692 (= lambda!308836 lambda!308761)))

(declare-fun bs!1335693 () Bool)

(assert (= bs!1335693 (and d!1803132 d!1802606)))

(assert (=> bs!1335693 (= lambda!308836 lambda!308758)))

(declare-fun bs!1335694 () Bool)

(assert (= bs!1335694 (and d!1803132 b!5714528)))

(assert (=> bs!1335694 (= lambda!308836 lambda!308687)))

(declare-fun bs!1335695 () Bool)

(assert (= bs!1335695 (and d!1803132 d!1802958)))

(assert (=> bs!1335695 (= lambda!308836 lambda!308811)))

(declare-fun bs!1335696 () Bool)

(assert (= bs!1335696 (and d!1803132 d!1802682)))

(assert (=> bs!1335696 (= lambda!308836 lambda!308776)))

(declare-fun bs!1335697 () Bool)

(assert (= bs!1335697 (and d!1803132 d!1802650)))

(assert (=> bs!1335697 (= lambda!308836 lambda!308762)))

(declare-fun bs!1335698 () Bool)

(assert (= bs!1335698 (and d!1803132 d!1803038)))

(assert (=> bs!1335698 (= lambda!308836 lambda!308825)))

(declare-fun bs!1335699 () Bool)

(assert (= bs!1335699 (and d!1803132 d!1803036)))

(assert (=> bs!1335699 (= lambda!308836 lambda!308824)))

(declare-fun bs!1335700 () Bool)

(assert (= bs!1335700 (and d!1803132 d!1802986)))

(assert (=> bs!1335700 (= lambda!308836 lambda!308818)))

(declare-fun bs!1335701 () Bool)

(assert (= bs!1335701 (and d!1803132 d!1802678)))

(assert (=> bs!1335701 (= lambda!308836 lambda!308770)))

(declare-fun bs!1335702 () Bool)

(assert (= bs!1335702 (and d!1803132 d!1802680)))

(assert (=> bs!1335702 (= lambda!308836 lambda!308773)))

(declare-fun e!3515531 () Bool)

(assert (=> d!1803132 e!3515531))

(declare-fun res!2413699 () Bool)

(assert (=> d!1803132 (=> (not res!2413699) (not e!3515531))))

(declare-fun lt!2277412 () Regex!15713)

(assert (=> d!1803132 (= res!2413699 (validRegex!7449 lt!2277412))))

(declare-fun e!3515527 () Regex!15713)

(assert (=> d!1803132 (= lt!2277412 e!3515527)))

(declare-fun c!1007821 () Bool)

(declare-fun e!3515530 () Bool)

(assert (=> d!1803132 (= c!1007821 e!3515530)))

(declare-fun res!2413698 () Bool)

(assert (=> d!1803132 (=> (not res!2413698) (not e!3515530))))

(assert (=> d!1803132 (= res!2413698 ((_ is Cons!63315) (unfocusZipperList!1141 lt!2277094)))))

(assert (=> d!1803132 (forall!14848 (unfocusZipperList!1141 lt!2277094) lambda!308836)))

(assert (=> d!1803132 (= (generalisedUnion!1576 (unfocusZipperList!1141 lt!2277094)) lt!2277412)))

(declare-fun b!5716481 () Bool)

(assert (=> b!5716481 (= e!3515527 (h!69763 (unfocusZipperList!1141 lt!2277094)))))

(declare-fun b!5716482 () Bool)

(declare-fun e!3515529 () Regex!15713)

(assert (=> b!5716482 (= e!3515529 EmptyLang!15713)))

(declare-fun b!5716483 () Bool)

(assert (=> b!5716483 (= e!3515527 e!3515529)))

(declare-fun c!1007818 () Bool)

(assert (=> b!5716483 (= c!1007818 ((_ is Cons!63315) (unfocusZipperList!1141 lt!2277094)))))

(declare-fun b!5716484 () Bool)

(assert (=> b!5716484 (= e!3515530 (isEmpty!35188 (t!376759 (unfocusZipperList!1141 lt!2277094))))))

(declare-fun b!5716485 () Bool)

(declare-fun e!3515528 () Bool)

(assert (=> b!5716485 (= e!3515528 (isUnion!662 lt!2277412))))

(declare-fun b!5716486 () Bool)

(declare-fun e!3515526 () Bool)

(assert (=> b!5716486 (= e!3515526 (isEmptyLang!1232 lt!2277412))))

(declare-fun b!5716487 () Bool)

(assert (=> b!5716487 (= e!3515529 (Union!15713 (h!69763 (unfocusZipperList!1141 lt!2277094)) (generalisedUnion!1576 (t!376759 (unfocusZipperList!1141 lt!2277094)))))))

(declare-fun b!5716488 () Bool)

(assert (=> b!5716488 (= e!3515531 e!3515526)))

(declare-fun c!1007819 () Bool)

(assert (=> b!5716488 (= c!1007819 (isEmpty!35188 (unfocusZipperList!1141 lt!2277094)))))

(declare-fun b!5716489 () Bool)

(assert (=> b!5716489 (= e!3515526 e!3515528)))

(declare-fun c!1007820 () Bool)

(assert (=> b!5716489 (= c!1007820 (isEmpty!35188 (tail!11202 (unfocusZipperList!1141 lt!2277094))))))

(declare-fun b!5716490 () Bool)

(assert (=> b!5716490 (= e!3515528 (= lt!2277412 (head!12107 (unfocusZipperList!1141 lt!2277094))))))

(assert (= (and d!1803132 res!2413698) b!5716484))

(assert (= (and d!1803132 c!1007821) b!5716481))

(assert (= (and d!1803132 (not c!1007821)) b!5716483))

(assert (= (and b!5716483 c!1007818) b!5716487))

(assert (= (and b!5716483 (not c!1007818)) b!5716482))

(assert (= (and d!1803132 res!2413699) b!5716488))

(assert (= (and b!5716488 c!1007819) b!5716486))

(assert (= (and b!5716488 (not c!1007819)) b!5716489))

(assert (= (and b!5716489 c!1007820) b!5716490))

(assert (= (and b!5716489 (not c!1007820)) b!5716485))

(declare-fun m!6670094 () Bool)

(assert (=> d!1803132 m!6670094))

(assert (=> d!1803132 m!6668608))

(declare-fun m!6670096 () Bool)

(assert (=> d!1803132 m!6670096))

(declare-fun m!6670098 () Bool)

(assert (=> b!5716485 m!6670098))

(assert (=> b!5716488 m!6668608))

(declare-fun m!6670100 () Bool)

(assert (=> b!5716488 m!6670100))

(assert (=> b!5716490 m!6668608))

(declare-fun m!6670102 () Bool)

(assert (=> b!5716490 m!6670102))

(declare-fun m!6670104 () Bool)

(assert (=> b!5716484 m!6670104))

(declare-fun m!6670106 () Bool)

(assert (=> b!5716486 m!6670106))

(declare-fun m!6670108 () Bool)

(assert (=> b!5716487 m!6670108))

(assert (=> b!5716489 m!6668608))

(declare-fun m!6670110 () Bool)

(assert (=> b!5716489 m!6670110))

(assert (=> b!5716489 m!6670110))

(declare-fun m!6670112 () Bool)

(assert (=> b!5716489 m!6670112))

(assert (=> d!1802490 d!1803132))

(declare-fun bs!1335703 () Bool)

(declare-fun d!1803134 () Bool)

(assert (= bs!1335703 (and d!1803134 d!1803062)))

(declare-fun lambda!308837 () Int)

(assert (=> bs!1335703 (= lambda!308837 lambda!308828)))

(declare-fun bs!1335704 () Bool)

(assert (= bs!1335704 (and d!1803134 d!1802648)))

(assert (=> bs!1335704 (= lambda!308837 lambda!308761)))

(declare-fun bs!1335705 () Bool)

(assert (= bs!1335705 (and d!1803134 d!1802606)))

(assert (=> bs!1335705 (= lambda!308837 lambda!308758)))

(declare-fun bs!1335706 () Bool)

(assert (= bs!1335706 (and d!1803134 b!5714528)))

(assert (=> bs!1335706 (= lambda!308837 lambda!308687)))

(declare-fun bs!1335707 () Bool)

(assert (= bs!1335707 (and d!1803134 d!1802958)))

(assert (=> bs!1335707 (= lambda!308837 lambda!308811)))

(declare-fun bs!1335708 () Bool)

(assert (= bs!1335708 (and d!1803134 d!1802682)))

(assert (=> bs!1335708 (= lambda!308837 lambda!308776)))

(declare-fun bs!1335709 () Bool)

(assert (= bs!1335709 (and d!1803134 d!1803132)))

(assert (=> bs!1335709 (= lambda!308837 lambda!308836)))

(declare-fun bs!1335710 () Bool)

(assert (= bs!1335710 (and d!1803134 d!1802650)))

(assert (=> bs!1335710 (= lambda!308837 lambda!308762)))

(declare-fun bs!1335711 () Bool)

(assert (= bs!1335711 (and d!1803134 d!1803038)))

(assert (=> bs!1335711 (= lambda!308837 lambda!308825)))

(declare-fun bs!1335712 () Bool)

(assert (= bs!1335712 (and d!1803134 d!1803036)))

(assert (=> bs!1335712 (= lambda!308837 lambda!308824)))

(declare-fun bs!1335713 () Bool)

(assert (= bs!1335713 (and d!1803134 d!1802986)))

(assert (=> bs!1335713 (= lambda!308837 lambda!308818)))

(declare-fun bs!1335714 () Bool)

(assert (= bs!1335714 (and d!1803134 d!1802678)))

(assert (=> bs!1335714 (= lambda!308837 lambda!308770)))

(declare-fun bs!1335715 () Bool)

(assert (= bs!1335715 (and d!1803134 d!1802680)))

(assert (=> bs!1335715 (= lambda!308837 lambda!308773)))

(declare-fun lt!2277413 () List!63439)

(assert (=> d!1803134 (forall!14848 lt!2277413 lambda!308837)))

(declare-fun e!3515532 () List!63439)

(assert (=> d!1803134 (= lt!2277413 e!3515532)))

(declare-fun c!1007822 () Bool)

(assert (=> d!1803134 (= c!1007822 ((_ is Cons!63316) lt!2277094))))

(assert (=> d!1803134 (= (unfocusZipperList!1141 lt!2277094) lt!2277413)))

(declare-fun b!5716491 () Bool)

(assert (=> b!5716491 (= e!3515532 (Cons!63315 (generalisedConcat!1328 (exprs!5597 (h!69764 lt!2277094))) (unfocusZipperList!1141 (t!376760 lt!2277094))))))

(declare-fun b!5716492 () Bool)

(assert (=> b!5716492 (= e!3515532 Nil!63315)))

(assert (= (and d!1803134 c!1007822) b!5716491))

(assert (= (and d!1803134 (not c!1007822)) b!5716492))

(declare-fun m!6670114 () Bool)

(assert (=> d!1803134 m!6670114))

(declare-fun m!6670116 () Bool)

(assert (=> b!5716491 m!6670116))

(declare-fun m!6670118 () Bool)

(assert (=> b!5716491 m!6670118))

(assert (=> d!1802490 d!1803134))

(declare-fun b!5716493 () Bool)

(declare-fun e!3515533 () List!63438)

(assert (=> b!5716493 (= e!3515533 (_2!36113 lt!2277139))))

(declare-fun b!5716496 () Bool)

(declare-fun e!3515534 () Bool)

(declare-fun lt!2277414 () List!63438)

(assert (=> b!5716496 (= e!3515534 (or (not (= (_2!36113 lt!2277139) Nil!63314)) (= lt!2277414 (t!376758 (_2!36113 lt!2277144)))))))

(declare-fun b!5716495 () Bool)

(declare-fun res!2413700 () Bool)

(assert (=> b!5716495 (=> (not res!2413700) (not e!3515534))))

(assert (=> b!5716495 (= res!2413700 (= (size!40024 lt!2277414) (+ (size!40024 (t!376758 (_2!36113 lt!2277144))) (size!40024 (_2!36113 lt!2277139)))))))

(declare-fun b!5716494 () Bool)

(assert (=> b!5716494 (= e!3515533 (Cons!63314 (h!69762 (t!376758 (_2!36113 lt!2277144))) (++!13908 (t!376758 (t!376758 (_2!36113 lt!2277144))) (_2!36113 lt!2277139))))))

(declare-fun d!1803136 () Bool)

(assert (=> d!1803136 e!3515534))

(declare-fun res!2413701 () Bool)

(assert (=> d!1803136 (=> (not res!2413701) (not e!3515534))))

(assert (=> d!1803136 (= res!2413701 (= (content!11499 lt!2277414) ((_ map or) (content!11499 (t!376758 (_2!36113 lt!2277144))) (content!11499 (_2!36113 lt!2277139)))))))

(assert (=> d!1803136 (= lt!2277414 e!3515533)))

(declare-fun c!1007823 () Bool)

(assert (=> d!1803136 (= c!1007823 ((_ is Nil!63314) (t!376758 (_2!36113 lt!2277144))))))

(assert (=> d!1803136 (= (++!13908 (t!376758 (_2!36113 lt!2277144)) (_2!36113 lt!2277139)) lt!2277414)))

(assert (= (and d!1803136 c!1007823) b!5716493))

(assert (= (and d!1803136 (not c!1007823)) b!5716494))

(assert (= (and d!1803136 res!2413701) b!5716495))

(assert (= (and b!5716495 res!2413700) b!5716496))

(declare-fun m!6670120 () Bool)

(assert (=> b!5716495 m!6670120))

(assert (=> b!5716495 m!6669980))

(assert (=> b!5716495 m!6668724))

(declare-fun m!6670122 () Bool)

(assert (=> b!5716494 m!6670122))

(declare-fun m!6670124 () Bool)

(assert (=> d!1803136 m!6670124))

(assert (=> d!1803136 m!6669648))

(assert (=> d!1803136 m!6668732))

(assert (=> b!5715220 d!1803136))

(declare-fun d!1803138 () Bool)

(assert (=> d!1803138 (= (nullable!5745 (regOne!31938 (reg!16042 (regOne!31938 r!7292)))) (nullableFct!1808 (regOne!31938 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun bs!1335716 () Bool)

(assert (= bs!1335716 d!1803138))

(declare-fun m!6670126 () Bool)

(assert (=> bs!1335716 m!6670126))

(assert (=> b!5715620 d!1803138))

(assert (=> d!1802502 d!1802488))

(declare-fun d!1803140 () Bool)

(assert (=> d!1803140 (= (flatMap!1326 lt!2277108 lambda!308681) (dynLambda!24772 lambda!308681 lt!2277124))))

(assert (=> d!1803140 true))

(declare-fun _$13!2381 () Unit!156384)

(assert (=> d!1803140 (= (choose!43219 lt!2277108 lt!2277124 lambda!308681) _$13!2381)))

(declare-fun b_lambda!215983 () Bool)

(assert (=> (not b_lambda!215983) (not d!1803140)))

(declare-fun bs!1335717 () Bool)

(assert (= bs!1335717 d!1803140))

(assert (=> bs!1335717 m!6667892))

(assert (=> bs!1335717 m!6668628))

(assert (=> d!1802502 d!1803140))

(assert (=> b!5715454 d!1802996))

(assert (=> b!5715454 d!1802768))

(assert (=> b!5715532 d!1803010))

(assert (=> b!5715532 d!1802786))

(assert (=> b!5714799 d!1803076))

(assert (=> bm!436269 d!1802852))

(assert (=> d!1802644 d!1802792))

(assert (=> b!5715677 d!1802900))

(declare-fun d!1803142 () Bool)

(assert (=> d!1803142 (= (nullable!5745 (reg!16042 r!7292)) (nullableFct!1808 (reg!16042 r!7292)))))

(declare-fun bs!1335718 () Bool)

(assert (= bs!1335718 d!1803142))

(declare-fun m!6670128 () Bool)

(assert (=> bs!1335718 m!6670128))

(assert (=> b!5715300 d!1803142))

(assert (=> b!5715474 d!1802880))

(declare-fun d!1803144 () Bool)

(declare-fun c!1007824 () Bool)

(assert (=> d!1803144 (= c!1007824 (isEmpty!35186 (tail!11200 s!2326)))))

(declare-fun e!3515535 () Bool)

(assert (=> d!1803144 (= (matchZipper!1851 (derivationStepZipper!1796 lt!2277101 (head!12105 s!2326)) (tail!11200 s!2326)) e!3515535)))

(declare-fun b!5716497 () Bool)

(assert (=> b!5716497 (= e!3515535 (nullableZipper!1663 (derivationStepZipper!1796 lt!2277101 (head!12105 s!2326))))))

(declare-fun b!5716498 () Bool)

(assert (=> b!5716498 (= e!3515535 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 lt!2277101 (head!12105 s!2326)) (head!12105 (tail!11200 s!2326))) (tail!11200 (tail!11200 s!2326))))))

(assert (= (and d!1803144 c!1007824) b!5716497))

(assert (= (and d!1803144 (not c!1007824)) b!5716498))

(assert (=> d!1803144 m!6668206))

(assert (=> d!1803144 m!6668210))

(assert (=> b!5716497 m!6668862))

(declare-fun m!6670130 () Bool)

(assert (=> b!5716497 m!6670130))

(assert (=> b!5716498 m!6668206))

(assert (=> b!5716498 m!6669874))

(assert (=> b!5716498 m!6668862))

(assert (=> b!5716498 m!6669874))

(declare-fun m!6670132 () Bool)

(assert (=> b!5716498 m!6670132))

(assert (=> b!5716498 m!6668206))

(assert (=> b!5716498 m!6669878))

(assert (=> b!5716498 m!6670132))

(assert (=> b!5716498 m!6669878))

(declare-fun m!6670134 () Bool)

(assert (=> b!5716498 m!6670134))

(assert (=> b!5715307 d!1803144))

(declare-fun bs!1335719 () Bool)

(declare-fun d!1803146 () Bool)

(assert (= bs!1335719 (and d!1803146 b!5714534)))

(declare-fun lambda!308838 () Int)

(assert (=> bs!1335719 (= (= (head!12105 s!2326) (h!69762 s!2326)) (= lambda!308838 lambda!308681))))

(declare-fun bs!1335720 () Bool)

(assert (= bs!1335720 (and d!1803146 d!1802862)))

(assert (=> bs!1335720 (= (= (head!12105 s!2326) (head!12105 (t!376758 s!2326))) (= lambda!308838 lambda!308803))))

(declare-fun bs!1335721 () Bool)

(assert (= bs!1335721 (and d!1803146 d!1803116)))

(assert (=> bs!1335721 (= (= (head!12105 s!2326) (head!12105 (t!376758 s!2326))) (= lambda!308838 lambda!308835))))

(declare-fun bs!1335722 () Bool)

(assert (= bs!1335722 (and d!1803146 d!1802740)))

(assert (=> bs!1335722 (= (= (head!12105 s!2326) (head!12105 lt!2277105)) (= lambda!308838 lambda!308788))))

(declare-fun bs!1335723 () Bool)

(assert (= bs!1335723 (and d!1803146 d!1802816)))

(assert (=> bs!1335723 (= (= (head!12105 s!2326) (head!12105 (t!376758 s!2326))) (= lambda!308838 lambda!308800))))

(declare-fun bs!1335724 () Bool)

(assert (= bs!1335724 (and d!1803146 d!1802898)))

(assert (=> bs!1335724 (= (= (head!12105 s!2326) (head!12105 (_1!36113 lt!2277144))) (= lambda!308838 lambda!308807))))

(declare-fun bs!1335725 () Bool)

(assert (= bs!1335725 (and d!1803146 d!1802892)))

(assert (=> bs!1335725 (= (= (head!12105 s!2326) (head!12105 (t!376758 s!2326))) (= lambda!308838 lambda!308806))))

(declare-fun bs!1335726 () Bool)

(assert (= bs!1335726 (and d!1803146 d!1803000)))

(assert (=> bs!1335726 (= (= (head!12105 s!2326) (head!12105 lt!2277105)) (= lambda!308838 lambda!308819))))

(declare-fun bs!1335727 () Bool)

(assert (= bs!1335727 (and d!1803146 d!1802600)))

(assert (=> bs!1335727 (= (= (head!12105 s!2326) (h!69762 s!2326)) (= lambda!308838 lambda!308755))))

(assert (=> d!1803146 true))

(assert (=> d!1803146 (= (derivationStepZipper!1796 lt!2277101 (head!12105 s!2326)) (flatMap!1326 lt!2277101 lambda!308838))))

(declare-fun bs!1335728 () Bool)

(assert (= bs!1335728 d!1803146))

(declare-fun m!6670136 () Bool)

(assert (=> bs!1335728 m!6670136))

(assert (=> b!5715307 d!1803146))

(assert (=> b!5715307 d!1802790))

(assert (=> b!5715307 d!1802962))

(assert (=> b!5715572 d!1802690))

(declare-fun d!1803148 () Bool)

(assert (=> d!1803148 (= (nullable!5745 (h!69763 (exprs!5597 lt!2277104))) (nullableFct!1808 (h!69763 (exprs!5597 lt!2277104))))))

(declare-fun bs!1335729 () Bool)

(assert (= bs!1335729 d!1803148))

(declare-fun m!6670138 () Bool)

(assert (=> bs!1335729 m!6670138))

(assert (=> b!5715086 d!1803148))

(declare-fun b!5716499 () Bool)

(declare-fun e!3515538 () Bool)

(declare-fun e!3515536 () Bool)

(assert (=> b!5716499 (= e!3515538 e!3515536)))

(declare-fun res!2413702 () Bool)

(assert (=> b!5716499 (=> res!2413702 e!3515536)))

(assert (=> b!5716499 (= res!2413702 ((_ is Star!15713) (regOne!31938 (regOne!31938 r!7292))))))

(declare-fun b!5716500 () Bool)

(declare-fun e!3515539 () Bool)

(declare-fun call!436433 () Bool)

(assert (=> b!5716500 (= e!3515539 call!436433)))

(declare-fun d!1803150 () Bool)

(declare-fun res!2413703 () Bool)

(declare-fun e!3515540 () Bool)

(assert (=> d!1803150 (=> res!2413703 e!3515540)))

(assert (=> d!1803150 (= res!2413703 ((_ is EmptyExpr!15713) (regOne!31938 (regOne!31938 r!7292))))))

(assert (=> d!1803150 (= (nullableFct!1808 (regOne!31938 (regOne!31938 r!7292))) e!3515540)))

(declare-fun bm!436428 () Bool)

(declare-fun call!436434 () Bool)

(declare-fun c!1007825 () Bool)

(assert (=> bm!436428 (= call!436434 (nullable!5745 (ite c!1007825 (regOne!31939 (regOne!31938 (regOne!31938 r!7292))) (regOne!31938 (regOne!31938 (regOne!31938 r!7292))))))))

(declare-fun bm!436429 () Bool)

(assert (=> bm!436429 (= call!436433 (nullable!5745 (ite c!1007825 (regTwo!31939 (regOne!31938 (regOne!31938 r!7292))) (regTwo!31938 (regOne!31938 (regOne!31938 r!7292))))))))

(declare-fun b!5716501 () Bool)

(assert (=> b!5716501 (= e!3515540 e!3515538)))

(declare-fun res!2413704 () Bool)

(assert (=> b!5716501 (=> (not res!2413704) (not e!3515538))))

(assert (=> b!5716501 (= res!2413704 (and (not ((_ is EmptyLang!15713) (regOne!31938 (regOne!31938 r!7292)))) (not ((_ is ElementMatch!15713) (regOne!31938 (regOne!31938 r!7292))))))))

(declare-fun b!5716502 () Bool)

(declare-fun e!3515537 () Bool)

(assert (=> b!5716502 (= e!3515537 call!436433)))

(declare-fun b!5716503 () Bool)

(declare-fun e!3515541 () Bool)

(assert (=> b!5716503 (= e!3515536 e!3515541)))

(assert (=> b!5716503 (= c!1007825 ((_ is Union!15713) (regOne!31938 (regOne!31938 r!7292))))))

(declare-fun b!5716504 () Bool)

(assert (=> b!5716504 (= e!3515541 e!3515537)))

(declare-fun res!2413706 () Bool)

(assert (=> b!5716504 (= res!2413706 call!436434)))

(assert (=> b!5716504 (=> (not res!2413706) (not e!3515537))))

(declare-fun b!5716505 () Bool)

(assert (=> b!5716505 (= e!3515541 e!3515539)))

(declare-fun res!2413705 () Bool)

(assert (=> b!5716505 (= res!2413705 call!436434)))

(assert (=> b!5716505 (=> res!2413705 e!3515539)))

(assert (= (and d!1803150 (not res!2413703)) b!5716501))

(assert (= (and b!5716501 res!2413704) b!5716499))

(assert (= (and b!5716499 (not res!2413702)) b!5716503))

(assert (= (and b!5716503 c!1007825) b!5716505))

(assert (= (and b!5716503 (not c!1007825)) b!5716504))

(assert (= (and b!5716505 (not res!2413705)) b!5716500))

(assert (= (and b!5716504 res!2413706) b!5716502))

(assert (= (or b!5716500 b!5716502) bm!436429))

(assert (= (or b!5716505 b!5716504) bm!436428))

(declare-fun m!6670140 () Bool)

(assert (=> bm!436428 m!6670140))

(declare-fun m!6670142 () Bool)

(assert (=> bm!436429 m!6670142))

(assert (=> d!1802668 d!1803150))

(declare-fun bs!1335730 () Bool)

(declare-fun d!1803152 () Bool)

(assert (= bs!1335730 (and d!1803152 d!1803062)))

(declare-fun lambda!308839 () Int)

(assert (=> bs!1335730 (= lambda!308839 lambda!308828)))

(declare-fun bs!1335731 () Bool)

(assert (= bs!1335731 (and d!1803152 d!1802648)))

(assert (=> bs!1335731 (= lambda!308839 lambda!308761)))

(declare-fun bs!1335732 () Bool)

(assert (= bs!1335732 (and d!1803152 d!1802606)))

(assert (=> bs!1335732 (= lambda!308839 lambda!308758)))

(declare-fun bs!1335733 () Bool)

(assert (= bs!1335733 (and d!1803152 b!5714528)))

(assert (=> bs!1335733 (= lambda!308839 lambda!308687)))

(declare-fun bs!1335734 () Bool)

(assert (= bs!1335734 (and d!1803152 d!1802958)))

(assert (=> bs!1335734 (= lambda!308839 lambda!308811)))

(declare-fun bs!1335735 () Bool)

(assert (= bs!1335735 (and d!1803152 d!1802682)))

(assert (=> bs!1335735 (= lambda!308839 lambda!308776)))

(declare-fun bs!1335736 () Bool)

(assert (= bs!1335736 (and d!1803152 d!1803132)))

(assert (=> bs!1335736 (= lambda!308839 lambda!308836)))

(declare-fun bs!1335737 () Bool)

(assert (= bs!1335737 (and d!1803152 d!1802650)))

(assert (=> bs!1335737 (= lambda!308839 lambda!308762)))

(declare-fun bs!1335738 () Bool)

(assert (= bs!1335738 (and d!1803152 d!1803134)))

(assert (=> bs!1335738 (= lambda!308839 lambda!308837)))

(declare-fun bs!1335739 () Bool)

(assert (= bs!1335739 (and d!1803152 d!1803038)))

(assert (=> bs!1335739 (= lambda!308839 lambda!308825)))

(declare-fun bs!1335740 () Bool)

(assert (= bs!1335740 (and d!1803152 d!1803036)))

(assert (=> bs!1335740 (= lambda!308839 lambda!308824)))

(declare-fun bs!1335741 () Bool)

(assert (= bs!1335741 (and d!1803152 d!1802986)))

(assert (=> bs!1335741 (= lambda!308839 lambda!308818)))

(declare-fun bs!1335742 () Bool)

(assert (= bs!1335742 (and d!1803152 d!1802678)))

(assert (=> bs!1335742 (= lambda!308839 lambda!308770)))

(declare-fun bs!1335743 () Bool)

(assert (= bs!1335743 (and d!1803152 d!1802680)))

(assert (=> bs!1335743 (= lambda!308839 lambda!308773)))

(declare-fun e!3515547 () Bool)

(assert (=> d!1803152 e!3515547))

(declare-fun res!2413708 () Bool)

(assert (=> d!1803152 (=> (not res!2413708) (not e!3515547))))

(declare-fun lt!2277415 () Regex!15713)

(assert (=> d!1803152 (= res!2413708 (validRegex!7449 lt!2277415))))

(declare-fun e!3515543 () Regex!15713)

(assert (=> d!1803152 (= lt!2277415 e!3515543)))

(declare-fun c!1007829 () Bool)

(declare-fun e!3515546 () Bool)

(assert (=> d!1803152 (= c!1007829 e!3515546)))

(declare-fun res!2413707 () Bool)

(assert (=> d!1803152 (=> (not res!2413707) (not e!3515546))))

(assert (=> d!1803152 (= res!2413707 ((_ is Cons!63315) (t!376759 (unfocusZipperList!1141 zl!343))))))

(assert (=> d!1803152 (forall!14848 (t!376759 (unfocusZipperList!1141 zl!343)) lambda!308839)))

(assert (=> d!1803152 (= (generalisedUnion!1576 (t!376759 (unfocusZipperList!1141 zl!343))) lt!2277415)))

(declare-fun b!5716506 () Bool)

(assert (=> b!5716506 (= e!3515543 (h!69763 (t!376759 (unfocusZipperList!1141 zl!343))))))

(declare-fun b!5716507 () Bool)

(declare-fun e!3515545 () Regex!15713)

(assert (=> b!5716507 (= e!3515545 EmptyLang!15713)))

(declare-fun b!5716508 () Bool)

(assert (=> b!5716508 (= e!3515543 e!3515545)))

(declare-fun c!1007826 () Bool)

(assert (=> b!5716508 (= c!1007826 ((_ is Cons!63315) (t!376759 (unfocusZipperList!1141 zl!343))))))

(declare-fun b!5716509 () Bool)

(assert (=> b!5716509 (= e!3515546 (isEmpty!35188 (t!376759 (t!376759 (unfocusZipperList!1141 zl!343)))))))

(declare-fun b!5716510 () Bool)

(declare-fun e!3515544 () Bool)

(assert (=> b!5716510 (= e!3515544 (isUnion!662 lt!2277415))))

(declare-fun b!5716511 () Bool)

(declare-fun e!3515542 () Bool)

(assert (=> b!5716511 (= e!3515542 (isEmptyLang!1232 lt!2277415))))

(declare-fun b!5716512 () Bool)

(assert (=> b!5716512 (= e!3515545 (Union!15713 (h!69763 (t!376759 (unfocusZipperList!1141 zl!343))) (generalisedUnion!1576 (t!376759 (t!376759 (unfocusZipperList!1141 zl!343))))))))

(declare-fun b!5716513 () Bool)

(assert (=> b!5716513 (= e!3515547 e!3515542)))

(declare-fun c!1007827 () Bool)

(assert (=> b!5716513 (= c!1007827 (isEmpty!35188 (t!376759 (unfocusZipperList!1141 zl!343))))))

(declare-fun b!5716514 () Bool)

(assert (=> b!5716514 (= e!3515542 e!3515544)))

(declare-fun c!1007828 () Bool)

(assert (=> b!5716514 (= c!1007828 (isEmpty!35188 (tail!11202 (t!376759 (unfocusZipperList!1141 zl!343)))))))

(declare-fun b!5716515 () Bool)

(assert (=> b!5716515 (= e!3515544 (= lt!2277415 (head!12107 (t!376759 (unfocusZipperList!1141 zl!343)))))))

(assert (= (and d!1803152 res!2413707) b!5716509))

(assert (= (and d!1803152 c!1007829) b!5716506))

(assert (= (and d!1803152 (not c!1007829)) b!5716508))

(assert (= (and b!5716508 c!1007826) b!5716512))

(assert (= (and b!5716508 (not c!1007826)) b!5716507))

(assert (= (and d!1803152 res!2413708) b!5716513))

(assert (= (and b!5716513 c!1007827) b!5716511))

(assert (= (and b!5716513 (not c!1007827)) b!5716514))

(assert (= (and b!5716514 c!1007828) b!5716515))

(assert (= (and b!5716514 (not c!1007828)) b!5716510))

(declare-fun m!6670144 () Bool)

(assert (=> d!1803152 m!6670144))

(declare-fun m!6670146 () Bool)

(assert (=> d!1803152 m!6670146))

(declare-fun m!6670148 () Bool)

(assert (=> b!5716510 m!6670148))

(assert (=> b!5716513 m!6669158))

(declare-fun m!6670150 () Bool)

(assert (=> b!5716515 m!6670150))

(declare-fun m!6670152 () Bool)

(assert (=> b!5716509 m!6670152))

(declare-fun m!6670154 () Bool)

(assert (=> b!5716511 m!6670154))

(declare-fun m!6670156 () Bool)

(assert (=> b!5716512 m!6670156))

(declare-fun m!6670158 () Bool)

(assert (=> b!5716514 m!6670158))

(assert (=> b!5716514 m!6670158))

(declare-fun m!6670160 () Bool)

(assert (=> b!5716514 m!6670160))

(assert (=> b!5715602 d!1803152))

(assert (=> b!5715168 d!1802512))

(declare-fun bs!1335744 () Bool)

(declare-fun d!1803154 () Bool)

(assert (= bs!1335744 (and d!1803154 d!1802788)))

(declare-fun lambda!308840 () Int)

(assert (=> bs!1335744 (= lambda!308840 lambda!308797)))

(declare-fun bs!1335745 () Bool)

(assert (= bs!1335745 (and d!1803154 d!1803078)))

(assert (=> bs!1335745 (= lambda!308840 lambda!308829)))

(declare-fun bs!1335746 () Bool)

(assert (= bs!1335746 (and d!1803154 d!1802940)))

(assert (=> bs!1335746 (= lambda!308840 lambda!308808)))

(declare-fun bs!1335747 () Bool)

(assert (= bs!1335747 (and d!1803154 d!1802882)))

(assert (=> bs!1335747 (= lambda!308840 lambda!308805)))

(declare-fun bs!1335748 () Bool)

(assert (= bs!1335748 (and d!1803154 d!1802866)))

(assert (=> bs!1335748 (= lambda!308840 lambda!308804)))

(assert (=> d!1803154 (= (nullableZipper!1663 lt!2277108) (exists!2222 lt!2277108 lambda!308840))))

(declare-fun bs!1335749 () Bool)

(assert (= bs!1335749 d!1803154))

(declare-fun m!6670162 () Bool)

(assert (=> bs!1335749 m!6670162))

(assert (=> b!5715468 d!1803154))

(declare-fun b!5716516 () Bool)

(declare-fun res!2413710 () Bool)

(declare-fun e!3515553 () Bool)

(assert (=> b!5716516 (=> (not res!2413710) (not e!3515553))))

(assert (=> b!5716516 (= res!2413710 (isEmpty!35186 (tail!11200 (_1!36113 (get!21829 lt!2277227)))))))

(declare-fun b!5716517 () Bool)

(declare-fun res!2413713 () Bool)

(assert (=> b!5716517 (=> (not res!2413713) (not e!3515553))))

(declare-fun call!436435 () Bool)

(assert (=> b!5716517 (= res!2413713 (not call!436435))))

(declare-fun b!5716518 () Bool)

(declare-fun res!2413715 () Bool)

(declare-fun e!3515550 () Bool)

(assert (=> b!5716518 (=> res!2413715 e!3515550)))

(assert (=> b!5716518 (= res!2413715 e!3515553)))

(declare-fun res!2413714 () Bool)

(assert (=> b!5716518 (=> (not res!2413714) (not e!3515553))))

(declare-fun lt!2277416 () Bool)

(assert (=> b!5716518 (= res!2413714 lt!2277416)))

(declare-fun d!1803156 () Bool)

(declare-fun e!3515552 () Bool)

(assert (=> d!1803156 e!3515552))

(declare-fun c!1007832 () Bool)

(assert (=> d!1803156 (= c!1007832 ((_ is EmptyExpr!15713) (regOne!31938 r!7292)))))

(declare-fun e!3515551 () Bool)

(assert (=> d!1803156 (= lt!2277416 e!3515551)))

(declare-fun c!1007831 () Bool)

(assert (=> d!1803156 (= c!1007831 (isEmpty!35186 (_1!36113 (get!21829 lt!2277227))))))

(assert (=> d!1803156 (validRegex!7449 (regOne!31938 r!7292))))

(assert (=> d!1803156 (= (matchR!7898 (regOne!31938 r!7292) (_1!36113 (get!21829 lt!2277227))) lt!2277416)))

(declare-fun b!5716519 () Bool)

(declare-fun e!3515554 () Bool)

(declare-fun e!3515549 () Bool)

(assert (=> b!5716519 (= e!3515554 e!3515549)))

(declare-fun res!2413716 () Bool)

(assert (=> b!5716519 (=> res!2413716 e!3515549)))

(assert (=> b!5716519 (= res!2413716 call!436435)))

(declare-fun b!5716520 () Bool)

(assert (=> b!5716520 (= e!3515551 (nullable!5745 (regOne!31938 r!7292)))))

(declare-fun b!5716521 () Bool)

(declare-fun res!2413712 () Bool)

(assert (=> b!5716521 (=> res!2413712 e!3515550)))

(assert (=> b!5716521 (= res!2413712 (not ((_ is ElementMatch!15713) (regOne!31938 r!7292))))))

(declare-fun e!3515548 () Bool)

(assert (=> b!5716521 (= e!3515548 e!3515550)))

(declare-fun b!5716522 () Bool)

(assert (=> b!5716522 (= e!3515551 (matchR!7898 (derivativeStep!4516 (regOne!31938 r!7292) (head!12105 (_1!36113 (get!21829 lt!2277227)))) (tail!11200 (_1!36113 (get!21829 lt!2277227)))))))

(declare-fun b!5716523 () Bool)

(declare-fun res!2413709 () Bool)

(assert (=> b!5716523 (=> res!2413709 e!3515549)))

(assert (=> b!5716523 (= res!2413709 (not (isEmpty!35186 (tail!11200 (_1!36113 (get!21829 lt!2277227))))))))

(declare-fun bm!436430 () Bool)

(assert (=> bm!436430 (= call!436435 (isEmpty!35186 (_1!36113 (get!21829 lt!2277227))))))

(declare-fun b!5716524 () Bool)

(assert (=> b!5716524 (= e!3515552 e!3515548)))

(declare-fun c!1007830 () Bool)

(assert (=> b!5716524 (= c!1007830 ((_ is EmptyLang!15713) (regOne!31938 r!7292)))))

(declare-fun b!5716525 () Bool)

(assert (=> b!5716525 (= e!3515550 e!3515554)))

(declare-fun res!2413711 () Bool)

(assert (=> b!5716525 (=> (not res!2413711) (not e!3515554))))

(assert (=> b!5716525 (= res!2413711 (not lt!2277416))))

(declare-fun b!5716526 () Bool)

(assert (=> b!5716526 (= e!3515548 (not lt!2277416))))

(declare-fun b!5716527 () Bool)

(assert (=> b!5716527 (= e!3515553 (= (head!12105 (_1!36113 (get!21829 lt!2277227))) (c!1007275 (regOne!31938 r!7292))))))

(declare-fun b!5716528 () Bool)

(assert (=> b!5716528 (= e!3515552 (= lt!2277416 call!436435))))

(declare-fun b!5716529 () Bool)

(assert (=> b!5716529 (= e!3515549 (not (= (head!12105 (_1!36113 (get!21829 lt!2277227))) (c!1007275 (regOne!31938 r!7292)))))))

(assert (= (and d!1803156 c!1007831) b!5716520))

(assert (= (and d!1803156 (not c!1007831)) b!5716522))

(assert (= (and d!1803156 c!1007832) b!5716528))

(assert (= (and d!1803156 (not c!1007832)) b!5716524))

(assert (= (and b!5716524 c!1007830) b!5716526))

(assert (= (and b!5716524 (not c!1007830)) b!5716521))

(assert (= (and b!5716521 (not res!2413712)) b!5716518))

(assert (= (and b!5716518 res!2413714) b!5716517))

(assert (= (and b!5716517 res!2413713) b!5716516))

(assert (= (and b!5716516 res!2413710) b!5716527))

(assert (= (and b!5716518 (not res!2413715)) b!5716525))

(assert (= (and b!5716525 res!2413711) b!5716519))

(assert (= (and b!5716519 (not res!2413716)) b!5716523))

(assert (= (and b!5716523 (not res!2413709)) b!5716529))

(assert (= (or b!5716528 b!5716517 b!5716519) bm!436430))

(assert (=> b!5716520 m!6669890))

(declare-fun m!6670164 () Bool)

(assert (=> d!1803156 m!6670164))

(assert (=> d!1803156 m!6668432))

(declare-fun m!6670166 () Bool)

(assert (=> b!5716529 m!6670166))

(assert (=> b!5716522 m!6670166))

(assert (=> b!5716522 m!6670166))

(declare-fun m!6670168 () Bool)

(assert (=> b!5716522 m!6670168))

(declare-fun m!6670170 () Bool)

(assert (=> b!5716522 m!6670170))

(assert (=> b!5716522 m!6670168))

(assert (=> b!5716522 m!6670170))

(declare-fun m!6670172 () Bool)

(assert (=> b!5716522 m!6670172))

(assert (=> b!5716516 m!6670170))

(assert (=> b!5716516 m!6670170))

(declare-fun m!6670174 () Bool)

(assert (=> b!5716516 m!6670174))

(assert (=> b!5716523 m!6670170))

(assert (=> b!5716523 m!6670170))

(assert (=> b!5716523 m!6670174))

(assert (=> b!5716527 m!6670166))

(assert (=> bm!436430 m!6670164))

(assert (=> b!5714946 d!1803156))

(assert (=> b!5714946 d!1802846))

(declare-fun b!5716530 () Bool)

(declare-fun res!2413718 () Bool)

(declare-fun e!3515560 () Bool)

(assert (=> b!5716530 (=> (not res!2413718) (not e!3515560))))

(assert (=> b!5716530 (= res!2413718 (isEmpty!35186 (tail!11200 (_2!36113 (get!21829 lt!2277330)))))))

(declare-fun b!5716531 () Bool)

(declare-fun res!2413721 () Bool)

(assert (=> b!5716531 (=> (not res!2413721) (not e!3515560))))

(declare-fun call!436436 () Bool)

(assert (=> b!5716531 (= res!2413721 (not call!436436))))

(declare-fun b!5716532 () Bool)

(declare-fun res!2413723 () Bool)

(declare-fun e!3515557 () Bool)

(assert (=> b!5716532 (=> res!2413723 e!3515557)))

(assert (=> b!5716532 (= res!2413723 e!3515560)))

(declare-fun res!2413722 () Bool)

(assert (=> b!5716532 (=> (not res!2413722) (not e!3515560))))

(declare-fun lt!2277417 () Bool)

(assert (=> b!5716532 (= res!2413722 lt!2277417)))

(declare-fun d!1803158 () Bool)

(declare-fun e!3515559 () Bool)

(assert (=> d!1803158 e!3515559))

(declare-fun c!1007835 () Bool)

(assert (=> d!1803158 (= c!1007835 ((_ is EmptyExpr!15713) (regTwo!31938 r!7292)))))

(declare-fun e!3515558 () Bool)

(assert (=> d!1803158 (= lt!2277417 e!3515558)))

(declare-fun c!1007834 () Bool)

(assert (=> d!1803158 (= c!1007834 (isEmpty!35186 (_2!36113 (get!21829 lt!2277330))))))

(assert (=> d!1803158 (validRegex!7449 (regTwo!31938 r!7292))))

(assert (=> d!1803158 (= (matchR!7898 (regTwo!31938 r!7292) (_2!36113 (get!21829 lt!2277330))) lt!2277417)))

(declare-fun b!5716533 () Bool)

(declare-fun e!3515561 () Bool)

(declare-fun e!3515556 () Bool)

(assert (=> b!5716533 (= e!3515561 e!3515556)))

(declare-fun res!2413724 () Bool)

(assert (=> b!5716533 (=> res!2413724 e!3515556)))

(assert (=> b!5716533 (= res!2413724 call!436436)))

(declare-fun b!5716534 () Bool)

(assert (=> b!5716534 (= e!3515558 (nullable!5745 (regTwo!31938 r!7292)))))

(declare-fun b!5716535 () Bool)

(declare-fun res!2413720 () Bool)

(assert (=> b!5716535 (=> res!2413720 e!3515557)))

(assert (=> b!5716535 (= res!2413720 (not ((_ is ElementMatch!15713) (regTwo!31938 r!7292))))))

(declare-fun e!3515555 () Bool)

(assert (=> b!5716535 (= e!3515555 e!3515557)))

(declare-fun b!5716536 () Bool)

(assert (=> b!5716536 (= e!3515558 (matchR!7898 (derivativeStep!4516 (regTwo!31938 r!7292) (head!12105 (_2!36113 (get!21829 lt!2277330)))) (tail!11200 (_2!36113 (get!21829 lt!2277330)))))))

(declare-fun b!5716537 () Bool)

(declare-fun res!2413717 () Bool)

(assert (=> b!5716537 (=> res!2413717 e!3515556)))

(assert (=> b!5716537 (= res!2413717 (not (isEmpty!35186 (tail!11200 (_2!36113 (get!21829 lt!2277330))))))))

(declare-fun bm!436431 () Bool)

(assert (=> bm!436431 (= call!436436 (isEmpty!35186 (_2!36113 (get!21829 lt!2277330))))))

(declare-fun b!5716538 () Bool)

(assert (=> b!5716538 (= e!3515559 e!3515555)))

(declare-fun c!1007833 () Bool)

(assert (=> b!5716538 (= c!1007833 ((_ is EmptyLang!15713) (regTwo!31938 r!7292)))))

(declare-fun b!5716539 () Bool)

(assert (=> b!5716539 (= e!3515557 e!3515561)))

(declare-fun res!2413719 () Bool)

(assert (=> b!5716539 (=> (not res!2413719) (not e!3515561))))

(assert (=> b!5716539 (= res!2413719 (not lt!2277417))))

(declare-fun b!5716540 () Bool)

(assert (=> b!5716540 (= e!3515555 (not lt!2277417))))

(declare-fun b!5716541 () Bool)

(assert (=> b!5716541 (= e!3515560 (= (head!12105 (_2!36113 (get!21829 lt!2277330))) (c!1007275 (regTwo!31938 r!7292))))))

(declare-fun b!5716542 () Bool)

(assert (=> b!5716542 (= e!3515559 (= lt!2277417 call!436436))))

(declare-fun b!5716543 () Bool)

(assert (=> b!5716543 (= e!3515556 (not (= (head!12105 (_2!36113 (get!21829 lt!2277330))) (c!1007275 (regTwo!31938 r!7292)))))))

(assert (= (and d!1803158 c!1007834) b!5716534))

(assert (= (and d!1803158 (not c!1007834)) b!5716536))

(assert (= (and d!1803158 c!1007835) b!5716542))

(assert (= (and d!1803158 (not c!1007835)) b!5716538))

(assert (= (and b!5716538 c!1007833) b!5716540))

(assert (= (and b!5716538 (not c!1007833)) b!5716535))

(assert (= (and b!5716535 (not res!2413720)) b!5716532))

(assert (= (and b!5716532 res!2413722) b!5716531))

(assert (= (and b!5716531 res!2413721) b!5716530))

(assert (= (and b!5716530 res!2413718) b!5716541))

(assert (= (and b!5716532 (not res!2413723)) b!5716539))

(assert (= (and b!5716539 res!2413719) b!5716533))

(assert (= (and b!5716533 (not res!2413724)) b!5716537))

(assert (= (and b!5716537 (not res!2413717)) b!5716543))

(assert (= (or b!5716542 b!5716531 b!5716533) bm!436431))

(assert (=> b!5716534 m!6668278))

(declare-fun m!6670176 () Bool)

(assert (=> d!1803158 m!6670176))

(assert (=> d!1803158 m!6668284))

(declare-fun m!6670178 () Bool)

(assert (=> b!5716543 m!6670178))

(assert (=> b!5716536 m!6670178))

(assert (=> b!5716536 m!6670178))

(declare-fun m!6670180 () Bool)

(assert (=> b!5716536 m!6670180))

(declare-fun m!6670182 () Bool)

(assert (=> b!5716536 m!6670182))

(assert (=> b!5716536 m!6670180))

(assert (=> b!5716536 m!6670182))

(declare-fun m!6670184 () Bool)

(assert (=> b!5716536 m!6670184))

(assert (=> b!5716530 m!6670182))

(assert (=> b!5716530 m!6670182))

(declare-fun m!6670186 () Bool)

(assert (=> b!5716530 m!6670186))

(assert (=> b!5716537 m!6670182))

(assert (=> b!5716537 m!6670182))

(assert (=> b!5716537 m!6670186))

(assert (=> b!5716541 m!6670178))

(assert (=> bm!436431 m!6670176))

(assert (=> b!5715505 d!1803158))

(assert (=> b!5715505 d!1802934))

(declare-fun d!1803160 () Bool)

(assert (=> d!1803160 true))

(assert (=> d!1803160 true))

(declare-fun res!2413725 () Bool)

(assert (=> d!1803160 (= (choose!43215 lambda!308683) res!2413725)))

(assert (=> d!1802666 d!1803160))

(declare-fun b!5716544 () Bool)

(declare-fun res!2413727 () Bool)

(declare-fun e!3515567 () Bool)

(assert (=> b!5716544 (=> (not res!2413727) (not e!3515567))))

(assert (=> b!5716544 (= res!2413727 (isEmpty!35186 (tail!11200 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))))

(declare-fun b!5716545 () Bool)

(declare-fun res!2413730 () Bool)

(assert (=> b!5716545 (=> (not res!2413730) (not e!3515567))))

(declare-fun call!436437 () Bool)

(assert (=> b!5716545 (= res!2413730 (not call!436437))))

(declare-fun b!5716546 () Bool)

(declare-fun res!2413732 () Bool)

(declare-fun e!3515564 () Bool)

(assert (=> b!5716546 (=> res!2413732 e!3515564)))

(assert (=> b!5716546 (= res!2413732 e!3515567)))

(declare-fun res!2413731 () Bool)

(assert (=> b!5716546 (=> (not res!2413731) (not e!3515567))))

(declare-fun lt!2277418 () Bool)

(assert (=> b!5716546 (= res!2413731 lt!2277418)))

(declare-fun d!1803162 () Bool)

(declare-fun e!3515566 () Bool)

(assert (=> d!1803162 e!3515566))

(declare-fun c!1007838 () Bool)

(assert (=> d!1803162 (= c!1007838 ((_ is EmptyExpr!15713) (Concat!24558 lt!2277097 (regTwo!31938 r!7292))))))

(declare-fun e!3515565 () Bool)

(assert (=> d!1803162 (= lt!2277418 e!3515565)))

(declare-fun c!1007837 () Bool)

(assert (=> d!1803162 (= c!1007837 (isEmpty!35186 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))))))

(assert (=> d!1803162 (validRegex!7449 (Concat!24558 lt!2277097 (regTwo!31938 r!7292)))))

(assert (=> d!1803162 (= (matchR!7898 (Concat!24558 lt!2277097 (regTwo!31938 r!7292)) (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))) lt!2277418)))

(declare-fun b!5716547 () Bool)

(declare-fun e!3515568 () Bool)

(declare-fun e!3515563 () Bool)

(assert (=> b!5716547 (= e!3515568 e!3515563)))

(declare-fun res!2413733 () Bool)

(assert (=> b!5716547 (=> res!2413733 e!3515563)))

(assert (=> b!5716547 (= res!2413733 call!436437)))

(declare-fun b!5716548 () Bool)

(assert (=> b!5716548 (= e!3515565 (nullable!5745 (Concat!24558 lt!2277097 (regTwo!31938 r!7292))))))

(declare-fun b!5716549 () Bool)

(declare-fun res!2413729 () Bool)

(assert (=> b!5716549 (=> res!2413729 e!3515564)))

(assert (=> b!5716549 (= res!2413729 (not ((_ is ElementMatch!15713) (Concat!24558 lt!2277097 (regTwo!31938 r!7292)))))))

(declare-fun e!3515562 () Bool)

(assert (=> b!5716549 (= e!3515562 e!3515564)))

(declare-fun b!5716550 () Bool)

(assert (=> b!5716550 (= e!3515565 (matchR!7898 (derivativeStep!4516 (Concat!24558 lt!2277097 (regTwo!31938 r!7292)) (head!12105 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))) (tail!11200 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))))

(declare-fun b!5716551 () Bool)

(declare-fun res!2413726 () Bool)

(assert (=> b!5716551 (=> res!2413726 e!3515563)))

(assert (=> b!5716551 (= res!2413726 (not (isEmpty!35186 (tail!11200 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))))))))

(declare-fun bm!436432 () Bool)

(assert (=> bm!436432 (= call!436437 (isEmpty!35186 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))))))

(declare-fun b!5716552 () Bool)

(assert (=> b!5716552 (= e!3515566 e!3515562)))

(declare-fun c!1007836 () Bool)

(assert (=> b!5716552 (= c!1007836 ((_ is EmptyLang!15713) (Concat!24558 lt!2277097 (regTwo!31938 r!7292))))))

(declare-fun b!5716553 () Bool)

(assert (=> b!5716553 (= e!3515564 e!3515568)))

(declare-fun res!2413728 () Bool)

(assert (=> b!5716553 (=> (not res!2413728) (not e!3515568))))

(assert (=> b!5716553 (= res!2413728 (not lt!2277418))))

(declare-fun b!5716554 () Bool)

(assert (=> b!5716554 (= e!3515562 (not lt!2277418))))

(declare-fun b!5716555 () Bool)

(assert (=> b!5716555 (= e!3515567 (= (head!12105 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))) (c!1007275 (Concat!24558 lt!2277097 (regTwo!31938 r!7292)))))))

(declare-fun b!5716556 () Bool)

(assert (=> b!5716556 (= e!3515566 (= lt!2277418 call!436437))))

(declare-fun b!5716557 () Bool)

(assert (=> b!5716557 (= e!3515563 (not (= (head!12105 (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139))) (c!1007275 (Concat!24558 lt!2277097 (regTwo!31938 r!7292))))))))

(assert (= (and d!1803162 c!1007837) b!5716548))

(assert (= (and d!1803162 (not c!1007837)) b!5716550))

(assert (= (and d!1803162 c!1007838) b!5716556))

(assert (= (and d!1803162 (not c!1007838)) b!5716552))

(assert (= (and b!5716552 c!1007836) b!5716554))

(assert (= (and b!5716552 (not c!1007836)) b!5716549))

(assert (= (and b!5716549 (not res!2413729)) b!5716546))

(assert (= (and b!5716546 res!2413731) b!5716545))

(assert (= (and b!5716545 res!2413730) b!5716544))

(assert (= (and b!5716544 res!2413727) b!5716555))

(assert (= (and b!5716546 (not res!2413732)) b!5716553))

(assert (= (and b!5716553 res!2413728) b!5716547))

(assert (= (and b!5716547 (not res!2413733)) b!5716551))

(assert (= (and b!5716551 (not res!2413726)) b!5716557))

(assert (= (or b!5716556 b!5716545 b!5716547) bm!436432))

(declare-fun m!6670188 () Bool)

(assert (=> b!5716548 m!6670188))

(assert (=> d!1803162 m!6667966))

(declare-fun m!6670190 () Bool)

(assert (=> d!1803162 m!6670190))

(declare-fun m!6670192 () Bool)

(assert (=> d!1803162 m!6670192))

(assert (=> b!5716557 m!6667966))

(declare-fun m!6670194 () Bool)

(assert (=> b!5716557 m!6670194))

(assert (=> b!5716550 m!6667966))

(assert (=> b!5716550 m!6670194))

(assert (=> b!5716550 m!6670194))

(declare-fun m!6670196 () Bool)

(assert (=> b!5716550 m!6670196))

(assert (=> b!5716550 m!6667966))

(declare-fun m!6670198 () Bool)

(assert (=> b!5716550 m!6670198))

(assert (=> b!5716550 m!6670196))

(assert (=> b!5716550 m!6670198))

(declare-fun m!6670200 () Bool)

(assert (=> b!5716550 m!6670200))

(assert (=> b!5716544 m!6667966))

(assert (=> b!5716544 m!6670198))

(assert (=> b!5716544 m!6670198))

(declare-fun m!6670202 () Bool)

(assert (=> b!5716544 m!6670202))

(assert (=> b!5716551 m!6667966))

(assert (=> b!5716551 m!6670198))

(assert (=> b!5716551 m!6670198))

(assert (=> b!5716551 m!6670202))

(assert (=> b!5716555 m!6667966))

(assert (=> b!5716555 m!6670194))

(assert (=> bm!436432 m!6667966))

(assert (=> bm!436432 m!6670190))

(assert (=> d!1802638 d!1803162))

(assert (=> d!1802638 d!1802540))

(declare-fun d!1803164 () Bool)

(assert (=> d!1803164 (matchR!7898 (Concat!24558 lt!2277097 (regTwo!31938 r!7292)) (++!13908 (_2!36113 lt!2277144) (_2!36113 lt!2277139)))))

(assert (=> d!1803164 true))

(declare-fun _$119!436 () Unit!156384)

(assert (=> d!1803164 (= (choose!43227 lt!2277097 (regTwo!31938 r!7292) (_2!36113 lt!2277144) (_2!36113 lt!2277139)) _$119!436)))

(declare-fun bs!1335750 () Bool)

(assert (= bs!1335750 d!1803164))

(assert (=> bs!1335750 m!6667966))

(assert (=> bs!1335750 m!6667966))

(assert (=> bs!1335750 m!6669022))

(assert (=> d!1802638 d!1803164))

(assert (=> d!1802638 d!1802734))

(declare-fun d!1803166 () Bool)

(assert (=> d!1803166 (= (isEmptyExpr!1221 lt!2277336) ((_ is EmptyExpr!15713) lt!2277336))))

(assert (=> b!5715567 d!1803166))

(declare-fun bs!1335751 () Bool)

(declare-fun d!1803168 () Bool)

(assert (= bs!1335751 (and d!1803168 d!1803062)))

(declare-fun lambda!308841 () Int)

(assert (=> bs!1335751 (= lambda!308841 lambda!308828)))

(declare-fun bs!1335752 () Bool)

(assert (= bs!1335752 (and d!1803168 d!1802648)))

(assert (=> bs!1335752 (= lambda!308841 lambda!308761)))

(declare-fun bs!1335753 () Bool)

(assert (= bs!1335753 (and d!1803168 d!1802606)))

(assert (=> bs!1335753 (= lambda!308841 lambda!308758)))

(declare-fun bs!1335754 () Bool)

(assert (= bs!1335754 (and d!1803168 d!1803152)))

(assert (=> bs!1335754 (= lambda!308841 lambda!308839)))

(declare-fun bs!1335755 () Bool)

(assert (= bs!1335755 (and d!1803168 b!5714528)))

(assert (=> bs!1335755 (= lambda!308841 lambda!308687)))

(declare-fun bs!1335756 () Bool)

(assert (= bs!1335756 (and d!1803168 d!1802958)))

(assert (=> bs!1335756 (= lambda!308841 lambda!308811)))

(declare-fun bs!1335757 () Bool)

(assert (= bs!1335757 (and d!1803168 d!1802682)))

(assert (=> bs!1335757 (= lambda!308841 lambda!308776)))

(declare-fun bs!1335758 () Bool)

(assert (= bs!1335758 (and d!1803168 d!1803132)))

(assert (=> bs!1335758 (= lambda!308841 lambda!308836)))

(declare-fun bs!1335759 () Bool)

(assert (= bs!1335759 (and d!1803168 d!1802650)))

(assert (=> bs!1335759 (= lambda!308841 lambda!308762)))

(declare-fun bs!1335760 () Bool)

(assert (= bs!1335760 (and d!1803168 d!1803134)))

(assert (=> bs!1335760 (= lambda!308841 lambda!308837)))

(declare-fun bs!1335761 () Bool)

(assert (= bs!1335761 (and d!1803168 d!1803038)))

(assert (=> bs!1335761 (= lambda!308841 lambda!308825)))

(declare-fun bs!1335762 () Bool)

(assert (= bs!1335762 (and d!1803168 d!1803036)))

(assert (=> bs!1335762 (= lambda!308841 lambda!308824)))

(declare-fun bs!1335763 () Bool)

(assert (= bs!1335763 (and d!1803168 d!1802986)))

(assert (=> bs!1335763 (= lambda!308841 lambda!308818)))

(declare-fun bs!1335764 () Bool)

(assert (= bs!1335764 (and d!1803168 d!1802678)))

(assert (=> bs!1335764 (= lambda!308841 lambda!308770)))

(declare-fun bs!1335765 () Bool)

(assert (= bs!1335765 (and d!1803168 d!1802680)))

(assert (=> bs!1335765 (= lambda!308841 lambda!308773)))

(assert (=> d!1803168 (= (inv!82529 (h!69764 (t!376760 zl!343))) (forall!14848 (exprs!5597 (h!69764 (t!376760 zl!343))) lambda!308841))))

(declare-fun bs!1335766 () Bool)

(assert (= bs!1335766 d!1803168))

(declare-fun m!6670204 () Bool)

(assert (=> bs!1335766 m!6670204))

(assert (=> b!5715722 d!1803168))

(assert (=> d!1802658 d!1802734))

(declare-fun bs!1335767 () Bool)

(declare-fun d!1803170 () Bool)

(assert (= bs!1335767 (and d!1803170 d!1802448)))

(declare-fun lambda!308842 () Int)

(assert (=> bs!1335767 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308842 lambda!308742))))

(declare-fun bs!1335768 () Bool)

(assert (= bs!1335768 (and d!1803170 b!5714499)))

(assert (=> bs!1335768 (not (= lambda!308842 lambda!308685))))

(declare-fun bs!1335769 () Bool)

(assert (= bs!1335769 (and d!1803170 d!1802776)))

(assert (=> bs!1335769 (not (= lambda!308842 lambda!308794))))

(declare-fun bs!1335770 () Bool)

(assert (= bs!1335770 (and d!1803170 d!1803082)))

(assert (=> bs!1335770 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308842 lambda!308832))))

(declare-fun bs!1335771 () Bool)

(assert (= bs!1335771 (and d!1803170 b!5716226)))

(assert (=> bs!1335771 (not (= lambda!308842 lambda!308821))))

(declare-fun bs!1335772 () Bool)

(assert (= bs!1335772 (and d!1803170 d!1802660)))

(assert (=> bs!1335772 (not (= lambda!308842 lambda!308765))))

(declare-fun bs!1335773 () Bool)

(assert (= bs!1335773 (and d!1803170 b!5716351)))

(assert (=> bs!1335773 (not (= lambda!308842 lambda!308826))))

(assert (=> bs!1335769 (= lambda!308842 lambda!308793)))

(declare-fun bs!1335774 () Bool)

(assert (= bs!1335774 (and d!1803170 d!1802700)))

(assert (=> bs!1335774 (not (= lambda!308842 lambda!308782))))

(declare-fun bs!1335775 () Bool)

(assert (= bs!1335775 (and d!1803170 b!5716132)))

(assert (=> bs!1335775 (not (= lambda!308842 lambda!308809))))

(declare-fun bs!1335776 () Bool)

(assert (= bs!1335776 (and d!1803170 d!1802714)))

(assert (=> bs!1335776 (not (= lambda!308842 lambda!308787))))

(declare-fun bs!1335777 () Bool)

(assert (= bs!1335777 (and d!1803170 d!1802970)))

(assert (=> bs!1335777 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308842 lambda!308816))))

(assert (=> bs!1335772 (= lambda!308842 lambda!308764)))

(declare-fun bs!1335778 () Bool)

(assert (= bs!1335778 (and d!1803170 d!1803100)))

(assert (=> bs!1335778 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308842 lambda!308833))))

(declare-fun bs!1335779 () Bool)

(assert (= bs!1335779 (and d!1803170 b!5715849)))

(assert (=> bs!1335779 (not (= lambda!308842 lambda!308799))))

(assert (=> bs!1335777 (not (= lambda!308842 lambda!308817))))

(declare-fun bs!1335780 () Bool)

(assert (= bs!1335780 (and d!1803170 b!5714753)))

(assert (=> bs!1335780 (not (= lambda!308842 lambda!308716))))

(assert (=> bs!1335776 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308842 lambda!308786))))

(declare-fun bs!1335781 () Bool)

(assert (= bs!1335781 (and d!1803170 b!5714504)))

(assert (=> bs!1335781 (not (= lambda!308842 lambda!308683))))

(declare-fun bs!1335782 () Bool)

(assert (= bs!1335782 (and d!1803170 b!5715508)))

(assert (=> bs!1335782 (not (= lambda!308842 lambda!308767))))

(declare-fun bs!1335783 () Bool)

(assert (= bs!1335783 (and d!1803170 b!5716128)))

(assert (=> bs!1335783 (not (= lambda!308842 lambda!308810))))

(assert (=> bs!1335768 (not (= lambda!308842 lambda!308686))))

(declare-fun bs!1335784 () Bool)

(assert (= bs!1335784 (and d!1803170 b!5715645)))

(assert (=> bs!1335784 (not (= lambda!308842 lambda!308785))))

(declare-fun bs!1335785 () Bool)

(assert (= bs!1335785 (and d!1803170 d!1802830)))

(assert (=> bs!1335785 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308842 lambda!308801))))

(declare-fun bs!1335786 () Bool)

(assert (= bs!1335786 (and d!1803170 b!5716347)))

(assert (=> bs!1335786 (not (= lambda!308842 lambda!308827))))

(assert (=> bs!1335774 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308842 lambda!308781))))

(assert (=> bs!1335767 (not (= lambda!308842 lambda!308743))))

(declare-fun bs!1335787 () Bool)

(assert (= bs!1335787 (and d!1803170 b!5714517)))

(assert (=> bs!1335787 (not (= lambda!308842 lambda!308680))))

(declare-fun bs!1335788 () Bool)

(assert (= bs!1335788 (and d!1803170 d!1802432)))

(assert (=> bs!1335788 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308842 lambda!308728))))

(declare-fun bs!1335789 () Bool)

(assert (= bs!1335789 (and d!1803170 b!5715853)))

(assert (=> bs!1335789 (not (= lambda!308842 lambda!308798))))

(declare-fun bs!1335790 () Bool)

(assert (= bs!1335790 (and d!1803170 b!5715649)))

(assert (=> bs!1335790 (not (= lambda!308842 lambda!308784))))

(declare-fun bs!1335791 () Bool)

(assert (= bs!1335791 (and d!1803170 b!5716230)))

(assert (=> bs!1335791 (not (= lambda!308842 lambda!308820))))

(declare-fun bs!1335792 () Bool)

(assert (= bs!1335792 (and d!1803170 d!1802658)))

(assert (=> bs!1335792 (= lambda!308842 lambda!308763)))

(declare-fun bs!1335793 () Bool)

(assert (= bs!1335793 (and d!1803170 b!5714749)))

(assert (=> bs!1335793 (not (= lambda!308842 lambda!308717))))

(assert (=> bs!1335768 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308842 lambda!308684))))

(assert (=> bs!1335778 (not (= lambda!308842 lambda!308834))))

(assert (=> bs!1335787 (= (= lt!2277097 (regOne!31938 r!7292)) (= lambda!308842 lambda!308679))))

(assert (=> bs!1335781 (= lambda!308842 lambda!308682)))

(declare-fun bs!1335794 () Bool)

(assert (= bs!1335794 (and d!1803170 b!5716248)))

(assert (=> bs!1335794 (not (= lambda!308842 lambda!308823))))

(assert (=> bs!1335785 (not (= lambda!308842 lambda!308802))))

(declare-fun bs!1335795 () Bool)

(assert (= bs!1335795 (and d!1803170 b!5716252)))

(assert (=> bs!1335795 (not (= lambda!308842 lambda!308822))))

(declare-fun bs!1335796 () Bool)

(assert (= bs!1335796 (and d!1803170 d!1802704)))

(assert (=> bs!1335796 (= (and (= s!2326 (_1!36113 lt!2277139)) (= lt!2277097 (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308842 lambda!308783))))

(declare-fun bs!1335797 () Bool)

(assert (= bs!1335797 (and d!1803170 b!5715512)))

(assert (=> bs!1335797 (not (= lambda!308842 lambda!308766))))

(assert (=> d!1803170 true))

(assert (=> d!1803170 true))

(assert (=> d!1803170 true))

(assert (=> d!1803170 (= (isDefined!12425 (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)) (Exists!2813 lambda!308842))))

(assert (=> d!1803170 true))

(declare-fun _$89!1835 () Unit!156384)

(assert (=> d!1803170 (= (choose!43216 lt!2277097 (regTwo!31938 r!7292) s!2326) _$89!1835)))

(declare-fun bs!1335798 () Bool)

(assert (= bs!1335798 d!1803170))

(assert (=> bs!1335798 m!6668034))

(assert (=> bs!1335798 m!6668034))

(assert (=> bs!1335798 m!6669072))

(declare-fun m!6670206 () Bool)

(assert (=> bs!1335798 m!6670206))

(assert (=> d!1802658 d!1803170))

(declare-fun d!1803172 () Bool)

(assert (=> d!1803172 (= (Exists!2813 lambda!308763) (choose!43215 lambda!308763))))

(declare-fun bs!1335799 () Bool)

(assert (= bs!1335799 d!1803172))

(declare-fun m!6670208 () Bool)

(assert (=> bs!1335799 m!6670208))

(assert (=> d!1802658 d!1803172))

(assert (=> d!1802658 d!1802664))

(declare-fun d!1803174 () Bool)

(assert (=> d!1803174 (= (isDefined!12425 (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)) (not (isEmpty!35190 (findConcatSeparation!2136 lt!2277097 (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326))))))

(declare-fun bs!1335800 () Bool)

(assert (= bs!1335800 d!1803174))

(assert (=> bs!1335800 m!6668034))

(declare-fun m!6670210 () Bool)

(assert (=> bs!1335800 m!6670210))

(assert (=> d!1802658 d!1803174))

(declare-fun d!1803176 () Bool)

(assert (=> d!1803176 (= (nullable!5745 (h!69763 (exprs!5597 lt!2277124))) (nullableFct!1808 (h!69763 (exprs!5597 lt!2277124))))))

(declare-fun bs!1335801 () Bool)

(assert (= bs!1335801 d!1803176))

(declare-fun m!6670212 () Bool)

(assert (=> bs!1335801 m!6670212))

(assert (=> b!5715081 d!1803176))

(declare-fun d!1803178 () Bool)

(declare-fun res!2413734 () Bool)

(declare-fun e!3515569 () Bool)

(assert (=> d!1803178 (=> res!2413734 e!3515569)))

(assert (=> d!1803178 (= res!2413734 ((_ is Nil!63315) (exprs!5597 (h!69764 zl!343))))))

(assert (=> d!1803178 (= (forall!14848 (exprs!5597 (h!69764 zl!343)) lambda!308762) e!3515569)))

(declare-fun b!5716558 () Bool)

(declare-fun e!3515570 () Bool)

(assert (=> b!5716558 (= e!3515569 e!3515570)))

(declare-fun res!2413735 () Bool)

(assert (=> b!5716558 (=> (not res!2413735) (not e!3515570))))

(assert (=> b!5716558 (= res!2413735 (dynLambda!24773 lambda!308762 (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716559 () Bool)

(assert (=> b!5716559 (= e!3515570 (forall!14848 (t!376759 (exprs!5597 (h!69764 zl!343))) lambda!308762))))

(assert (= (and d!1803178 (not res!2413734)) b!5716558))

(assert (= (and b!5716558 res!2413735) b!5716559))

(declare-fun b_lambda!215985 () Bool)

(assert (=> (not b_lambda!215985) (not b!5716558)))

(declare-fun m!6670214 () Bool)

(assert (=> b!5716558 m!6670214))

(declare-fun m!6670216 () Bool)

(assert (=> b!5716559 m!6670216))

(assert (=> d!1802650 d!1803178))

(assert (=> b!5715543 d!1802748))

(declare-fun d!1803180 () Bool)

(declare-fun lt!2277421 () Int)

(assert (=> d!1803180 (>= lt!2277421 0)))

(declare-fun e!3515573 () Int)

(assert (=> d!1803180 (= lt!2277421 e!3515573)))

(declare-fun c!1007841 () Bool)

(assert (=> d!1803180 (= c!1007841 ((_ is Nil!63315) lt!2277313))))

(assert (=> d!1803180 (= (size!40025 lt!2277313) lt!2277421)))

(declare-fun b!5716564 () Bool)

(assert (=> b!5716564 (= e!3515573 0)))

(declare-fun b!5716565 () Bool)

(assert (=> b!5716565 (= e!3515573 (+ 1 (size!40025 (t!376759 lt!2277313))))))

(assert (= (and d!1803180 c!1007841) b!5716564))

(assert (= (and d!1803180 (not c!1007841)) b!5716565))

(declare-fun m!6670218 () Bool)

(assert (=> b!5716565 m!6670218))

(assert (=> b!5715452 d!1803180))

(declare-fun d!1803182 () Bool)

(declare-fun lt!2277422 () Int)

(assert (=> d!1803182 (>= lt!2277422 0)))

(declare-fun e!3515574 () Int)

(assert (=> d!1803182 (= lt!2277422 e!3515574)))

(declare-fun c!1007842 () Bool)

(assert (=> d!1803182 (= c!1007842 ((_ is Nil!63315) lt!2277136))))

(assert (=> d!1803182 (= (size!40025 lt!2277136) lt!2277422)))

(declare-fun b!5716566 () Bool)

(assert (=> b!5716566 (= e!3515574 0)))

(declare-fun b!5716567 () Bool)

(assert (=> b!5716567 (= e!3515574 (+ 1 (size!40025 (t!376759 lt!2277136))))))

(assert (= (and d!1803182 c!1007842) b!5716566))

(assert (= (and d!1803182 (not c!1007842)) b!5716567))

(declare-fun m!6670220 () Bool)

(assert (=> b!5716567 m!6670220))

(assert (=> b!5715452 d!1803182))

(declare-fun d!1803184 () Bool)

(declare-fun lt!2277423 () Int)

(assert (=> d!1803184 (>= lt!2277423 0)))

(declare-fun e!3515575 () Int)

(assert (=> d!1803184 (= lt!2277423 e!3515575)))

(declare-fun c!1007843 () Bool)

(assert (=> d!1803184 (= c!1007843 ((_ is Nil!63315) lt!2277109))))

(assert (=> d!1803184 (= (size!40025 lt!2277109) lt!2277423)))

(declare-fun b!5716568 () Bool)

(assert (=> b!5716568 (= e!3515575 0)))

(declare-fun b!5716569 () Bool)

(assert (=> b!5716569 (= e!3515575 (+ 1 (size!40025 (t!376759 lt!2277109))))))

(assert (= (and d!1803184 c!1007843) b!5716568))

(assert (= (and d!1803184 (not c!1007843)) b!5716569))

(declare-fun m!6670222 () Bool)

(assert (=> b!5716569 m!6670222))

(assert (=> b!5715452 d!1803184))

(declare-fun b!5716570 () Bool)

(declare-fun e!3515576 () List!63438)

(assert (=> b!5716570 (= e!3515576 lt!2277140)))

(declare-fun lt!2277424 () List!63438)

(declare-fun b!5716573 () Bool)

(declare-fun e!3515577 () Bool)

(assert (=> b!5716573 (= e!3515577 (or (not (= lt!2277140 Nil!63314)) (= lt!2277424 (t!376758 (_1!36113 lt!2277144)))))))

(declare-fun b!5716572 () Bool)

(declare-fun res!2413736 () Bool)

(assert (=> b!5716572 (=> (not res!2413736) (not e!3515577))))

(assert (=> b!5716572 (= res!2413736 (= (size!40024 lt!2277424) (+ (size!40024 (t!376758 (_1!36113 lt!2277144))) (size!40024 lt!2277140))))))

(declare-fun b!5716571 () Bool)

(assert (=> b!5716571 (= e!3515576 (Cons!63314 (h!69762 (t!376758 (_1!36113 lt!2277144))) (++!13908 (t!376758 (t!376758 (_1!36113 lt!2277144))) lt!2277140)))))

(declare-fun d!1803186 () Bool)

(assert (=> d!1803186 e!3515577))

(declare-fun res!2413737 () Bool)

(assert (=> d!1803186 (=> (not res!2413737) (not e!3515577))))

(assert (=> d!1803186 (= res!2413737 (= (content!11499 lt!2277424) ((_ map or) (content!11499 (t!376758 (_1!36113 lt!2277144))) (content!11499 lt!2277140))))))

(assert (=> d!1803186 (= lt!2277424 e!3515576)))

(declare-fun c!1007844 () Bool)

(assert (=> d!1803186 (= c!1007844 ((_ is Nil!63314) (t!376758 (_1!36113 lt!2277144))))))

(assert (=> d!1803186 (= (++!13908 (t!376758 (_1!36113 lt!2277144)) lt!2277140) lt!2277424)))

(assert (= (and d!1803186 c!1007844) b!5716570))

(assert (= (and d!1803186 (not c!1007844)) b!5716571))

(assert (= (and d!1803186 res!2413737) b!5716572))

(assert (= (and b!5716572 res!2413736) b!5716573))

(declare-fun m!6670224 () Bool)

(assert (=> b!5716572 m!6670224))

(assert (=> b!5716572 m!6669512))

(assert (=> b!5716572 m!6668710))

(declare-fun m!6670226 () Bool)

(assert (=> b!5716571 m!6670226))

(declare-fun m!6670228 () Bool)

(assert (=> d!1803186 m!6670228))

(assert (=> d!1803186 m!6669620))

(assert (=> d!1803186 m!6668718))

(assert (=> b!5715202 d!1803186))

(declare-fun d!1803188 () Bool)

(assert (=> d!1803188 (= (nullable!5745 lt!2277138) (nullableFct!1808 lt!2277138))))

(declare-fun bs!1335802 () Bool)

(assert (= bs!1335802 d!1803188))

(declare-fun m!6670230 () Bool)

(assert (=> bs!1335802 m!6670230))

(assert (=> b!5715458 d!1803188))

(declare-fun bs!1335803 () Bool)

(declare-fun d!1803190 () Bool)

(assert (= bs!1335803 (and d!1803190 d!1803154)))

(declare-fun lambda!308843 () Int)

(assert (=> bs!1335803 (= lambda!308843 lambda!308840)))

(declare-fun bs!1335804 () Bool)

(assert (= bs!1335804 (and d!1803190 d!1802788)))

(assert (=> bs!1335804 (= lambda!308843 lambda!308797)))

(declare-fun bs!1335805 () Bool)

(assert (= bs!1335805 (and d!1803190 d!1803078)))

(assert (=> bs!1335805 (= lambda!308843 lambda!308829)))

(declare-fun bs!1335806 () Bool)

(assert (= bs!1335806 (and d!1803190 d!1802940)))

(assert (=> bs!1335806 (= lambda!308843 lambda!308808)))

(declare-fun bs!1335807 () Bool)

(assert (= bs!1335807 (and d!1803190 d!1802882)))

(assert (=> bs!1335807 (= lambda!308843 lambda!308805)))

(declare-fun bs!1335808 () Bool)

(assert (= bs!1335808 (and d!1803190 d!1802866)))

(assert (=> bs!1335808 (= lambda!308843 lambda!308804)))

(assert (=> d!1803190 (= (nullableZipper!1663 lt!2277143) (exists!2222 lt!2277143 lambda!308843))))

(declare-fun bs!1335809 () Bool)

(assert (= bs!1335809 d!1803190))

(declare-fun m!6670232 () Bool)

(assert (=> bs!1335809 m!6670232))

(assert (=> b!5715322 d!1803190))

(declare-fun bm!436433 () Bool)

(declare-fun call!436440 () Bool)

(declare-fun call!436439 () Bool)

(assert (=> bm!436433 (= call!436440 call!436439)))

(declare-fun b!5716574 () Bool)

(declare-fun res!2413739 () Bool)

(declare-fun e!3515583 () Bool)

(assert (=> b!5716574 (=> res!2413739 e!3515583)))

(assert (=> b!5716574 (= res!2413739 (not ((_ is Concat!24558) lt!2277324)))))

(declare-fun e!3515584 () Bool)

(assert (=> b!5716574 (= e!3515584 e!3515583)))

(declare-fun b!5716575 () Bool)

(declare-fun e!3515578 () Bool)

(assert (=> b!5716575 (= e!3515583 e!3515578)))

(declare-fun res!2413742 () Bool)

(assert (=> b!5716575 (=> (not res!2413742) (not e!3515578))))

(declare-fun call!436438 () Bool)

(assert (=> b!5716575 (= res!2413742 call!436438)))

(declare-fun b!5716576 () Bool)

(declare-fun res!2413738 () Bool)

(declare-fun e!3515582 () Bool)

(assert (=> b!5716576 (=> (not res!2413738) (not e!3515582))))

(assert (=> b!5716576 (= res!2413738 call!436438)))

(assert (=> b!5716576 (= e!3515584 e!3515582)))

(declare-fun b!5716577 () Bool)

(declare-fun e!3515581 () Bool)

(assert (=> b!5716577 (= e!3515581 call!436439)))

(declare-fun b!5716578 () Bool)

(assert (=> b!5716578 (= e!3515578 call!436440)))

(declare-fun b!5716579 () Bool)

(assert (=> b!5716579 (= e!3515582 call!436440)))

(declare-fun d!1803192 () Bool)

(declare-fun res!2413741 () Bool)

(declare-fun e!3515579 () Bool)

(assert (=> d!1803192 (=> res!2413741 e!3515579)))

(assert (=> d!1803192 (= res!2413741 ((_ is ElementMatch!15713) lt!2277324))))

(assert (=> d!1803192 (= (validRegex!7449 lt!2277324) e!3515579)))

(declare-fun b!5716580 () Bool)

(declare-fun e!3515580 () Bool)

(assert (=> b!5716580 (= e!3515580 e!3515584)))

(declare-fun c!1007846 () Bool)

(assert (=> b!5716580 (= c!1007846 ((_ is Union!15713) lt!2277324))))

(declare-fun bm!436434 () Bool)

(declare-fun c!1007845 () Bool)

(assert (=> bm!436434 (= call!436439 (validRegex!7449 (ite c!1007845 (reg!16042 lt!2277324) (ite c!1007846 (regTwo!31939 lt!2277324) (regTwo!31938 lt!2277324)))))))

(declare-fun bm!436435 () Bool)

(assert (=> bm!436435 (= call!436438 (validRegex!7449 (ite c!1007846 (regOne!31939 lt!2277324) (regOne!31938 lt!2277324))))))

(declare-fun b!5716581 () Bool)

(assert (=> b!5716581 (= e!3515580 e!3515581)))

(declare-fun res!2413740 () Bool)

(assert (=> b!5716581 (= res!2413740 (not (nullable!5745 (reg!16042 lt!2277324))))))

(assert (=> b!5716581 (=> (not res!2413740) (not e!3515581))))

(declare-fun b!5716582 () Bool)

(assert (=> b!5716582 (= e!3515579 e!3515580)))

(assert (=> b!5716582 (= c!1007845 ((_ is Star!15713) lt!2277324))))

(assert (= (and d!1803192 (not res!2413741)) b!5716582))

(assert (= (and b!5716582 c!1007845) b!5716581))

(assert (= (and b!5716582 (not c!1007845)) b!5716580))

(assert (= (and b!5716581 res!2413740) b!5716577))

(assert (= (and b!5716580 c!1007846) b!5716576))

(assert (= (and b!5716580 (not c!1007846)) b!5716574))

(assert (= (and b!5716576 res!2413738) b!5716579))

(assert (= (and b!5716574 (not res!2413739)) b!5716575))

(assert (= (and b!5716575 res!2413742) b!5716578))

(assert (= (or b!5716579 b!5716578) bm!436433))

(assert (= (or b!5716576 b!5716575) bm!436435))

(assert (= (or b!5716577 bm!436433) bm!436434))

(declare-fun m!6670234 () Bool)

(assert (=> bm!436434 m!6670234))

(declare-fun m!6670236 () Bool)

(assert (=> bm!436435 m!6670236))

(declare-fun m!6670238 () Bool)

(assert (=> b!5716581 m!6670238))

(assert (=> d!1802646 d!1803192))

(declare-fun bs!1335810 () Bool)

(declare-fun d!1803194 () Bool)

(assert (= bs!1335810 (and d!1803194 d!1803062)))

(declare-fun lambda!308844 () Int)

(assert (=> bs!1335810 (= lambda!308844 lambda!308828)))

(declare-fun bs!1335811 () Bool)

(assert (= bs!1335811 (and d!1803194 d!1802648)))

(assert (=> bs!1335811 (= lambda!308844 lambda!308761)))

(declare-fun bs!1335812 () Bool)

(assert (= bs!1335812 (and d!1803194 d!1802606)))

(assert (=> bs!1335812 (= lambda!308844 lambda!308758)))

(declare-fun bs!1335813 () Bool)

(assert (= bs!1335813 (and d!1803194 d!1803152)))

(assert (=> bs!1335813 (= lambda!308844 lambda!308839)))

(declare-fun bs!1335814 () Bool)

(assert (= bs!1335814 (and d!1803194 b!5714528)))

(assert (=> bs!1335814 (= lambda!308844 lambda!308687)))

(declare-fun bs!1335815 () Bool)

(assert (= bs!1335815 (and d!1803194 d!1802958)))

(assert (=> bs!1335815 (= lambda!308844 lambda!308811)))

(declare-fun bs!1335816 () Bool)

(assert (= bs!1335816 (and d!1803194 d!1802682)))

(assert (=> bs!1335816 (= lambda!308844 lambda!308776)))

(declare-fun bs!1335817 () Bool)

(assert (= bs!1335817 (and d!1803194 d!1803132)))

(assert (=> bs!1335817 (= lambda!308844 lambda!308836)))

(declare-fun bs!1335818 () Bool)

(assert (= bs!1335818 (and d!1803194 d!1802650)))

(assert (=> bs!1335818 (= lambda!308844 lambda!308762)))

(declare-fun bs!1335819 () Bool)

(assert (= bs!1335819 (and d!1803194 d!1803168)))

(assert (=> bs!1335819 (= lambda!308844 lambda!308841)))

(declare-fun bs!1335820 () Bool)

(assert (= bs!1335820 (and d!1803194 d!1803134)))

(assert (=> bs!1335820 (= lambda!308844 lambda!308837)))

(declare-fun bs!1335821 () Bool)

(assert (= bs!1335821 (and d!1803194 d!1803038)))

(assert (=> bs!1335821 (= lambda!308844 lambda!308825)))

(declare-fun bs!1335822 () Bool)

(assert (= bs!1335822 (and d!1803194 d!1803036)))

(assert (=> bs!1335822 (= lambda!308844 lambda!308824)))

(declare-fun bs!1335823 () Bool)

(assert (= bs!1335823 (and d!1803194 d!1802986)))

(assert (=> bs!1335823 (= lambda!308844 lambda!308818)))

(declare-fun bs!1335824 () Bool)

(assert (= bs!1335824 (and d!1803194 d!1802678)))

(assert (=> bs!1335824 (= lambda!308844 lambda!308770)))

(declare-fun bs!1335825 () Bool)

(assert (= bs!1335825 (and d!1803194 d!1802680)))

(assert (=> bs!1335825 (= lambda!308844 lambda!308773)))

(declare-fun e!3515590 () Bool)

(assert (=> d!1803194 e!3515590))

(declare-fun res!2413744 () Bool)

(assert (=> d!1803194 (=> (not res!2413744) (not e!3515590))))

(declare-fun lt!2277425 () Regex!15713)

(assert (=> d!1803194 (= res!2413744 (validRegex!7449 lt!2277425))))

(declare-fun e!3515586 () Regex!15713)

(assert (=> d!1803194 (= lt!2277425 e!3515586)))

(declare-fun c!1007850 () Bool)

(declare-fun e!3515589 () Bool)

(assert (=> d!1803194 (= c!1007850 e!3515589)))

(declare-fun res!2413743 () Bool)

(assert (=> d!1803194 (=> (not res!2413743) (not e!3515589))))

(assert (=> d!1803194 (= res!2413743 ((_ is Cons!63315) (unfocusZipperList!1141 lt!2277128)))))

(assert (=> d!1803194 (forall!14848 (unfocusZipperList!1141 lt!2277128) lambda!308844)))

(assert (=> d!1803194 (= (generalisedUnion!1576 (unfocusZipperList!1141 lt!2277128)) lt!2277425)))

(declare-fun b!5716583 () Bool)

(assert (=> b!5716583 (= e!3515586 (h!69763 (unfocusZipperList!1141 lt!2277128)))))

(declare-fun b!5716584 () Bool)

(declare-fun e!3515588 () Regex!15713)

(assert (=> b!5716584 (= e!3515588 EmptyLang!15713)))

(declare-fun b!5716585 () Bool)

(assert (=> b!5716585 (= e!3515586 e!3515588)))

(declare-fun c!1007847 () Bool)

(assert (=> b!5716585 (= c!1007847 ((_ is Cons!63315) (unfocusZipperList!1141 lt!2277128)))))

(declare-fun b!5716586 () Bool)

(assert (=> b!5716586 (= e!3515589 (isEmpty!35188 (t!376759 (unfocusZipperList!1141 lt!2277128))))))

(declare-fun b!5716587 () Bool)

(declare-fun e!3515587 () Bool)

(assert (=> b!5716587 (= e!3515587 (isUnion!662 lt!2277425))))

(declare-fun b!5716588 () Bool)

(declare-fun e!3515585 () Bool)

(assert (=> b!5716588 (= e!3515585 (isEmptyLang!1232 lt!2277425))))

(declare-fun b!5716589 () Bool)

(assert (=> b!5716589 (= e!3515588 (Union!15713 (h!69763 (unfocusZipperList!1141 lt!2277128)) (generalisedUnion!1576 (t!376759 (unfocusZipperList!1141 lt!2277128)))))))

(declare-fun b!5716590 () Bool)

(assert (=> b!5716590 (= e!3515590 e!3515585)))

(declare-fun c!1007848 () Bool)

(assert (=> b!5716590 (= c!1007848 (isEmpty!35188 (unfocusZipperList!1141 lt!2277128)))))

(declare-fun b!5716591 () Bool)

(assert (=> b!5716591 (= e!3515585 e!3515587)))

(declare-fun c!1007849 () Bool)

(assert (=> b!5716591 (= c!1007849 (isEmpty!35188 (tail!11202 (unfocusZipperList!1141 lt!2277128))))))

(declare-fun b!5716592 () Bool)

(assert (=> b!5716592 (= e!3515587 (= lt!2277425 (head!12107 (unfocusZipperList!1141 lt!2277128))))))

(assert (= (and d!1803194 res!2413743) b!5716586))

(assert (= (and d!1803194 c!1007850) b!5716583))

(assert (= (and d!1803194 (not c!1007850)) b!5716585))

(assert (= (and b!5716585 c!1007847) b!5716589))

(assert (= (and b!5716585 (not c!1007847)) b!5716584))

(assert (= (and d!1803194 res!2413744) b!5716590))

(assert (= (and b!5716590 c!1007848) b!5716588))

(assert (= (and b!5716590 (not c!1007848)) b!5716591))

(assert (= (and b!5716591 c!1007849) b!5716592))

(assert (= (and b!5716591 (not c!1007849)) b!5716587))

(declare-fun m!6670240 () Bool)

(assert (=> d!1803194 m!6670240))

(assert (=> d!1803194 m!6669052))

(declare-fun m!6670242 () Bool)

(assert (=> d!1803194 m!6670242))

(declare-fun m!6670244 () Bool)

(assert (=> b!5716587 m!6670244))

(assert (=> b!5716590 m!6669052))

(declare-fun m!6670246 () Bool)

(assert (=> b!5716590 m!6670246))

(assert (=> b!5716592 m!6669052))

(declare-fun m!6670248 () Bool)

(assert (=> b!5716592 m!6670248))

(declare-fun m!6670250 () Bool)

(assert (=> b!5716586 m!6670250))

(declare-fun m!6670252 () Bool)

(assert (=> b!5716588 m!6670252))

(declare-fun m!6670254 () Bool)

(assert (=> b!5716589 m!6670254))

(assert (=> b!5716591 m!6669052))

(declare-fun m!6670256 () Bool)

(assert (=> b!5716591 m!6670256))

(assert (=> b!5716591 m!6670256))

(declare-fun m!6670258 () Bool)

(assert (=> b!5716591 m!6670258))

(assert (=> d!1802646 d!1803194))

(declare-fun bs!1335826 () Bool)

(declare-fun d!1803196 () Bool)

(assert (= bs!1335826 (and d!1803196 d!1803062)))

(declare-fun lambda!308845 () Int)

(assert (=> bs!1335826 (= lambda!308845 lambda!308828)))

(declare-fun bs!1335827 () Bool)

(assert (= bs!1335827 (and d!1803196 d!1802648)))

(assert (=> bs!1335827 (= lambda!308845 lambda!308761)))

(declare-fun bs!1335828 () Bool)

(assert (= bs!1335828 (and d!1803196 d!1803194)))

(assert (=> bs!1335828 (= lambda!308845 lambda!308844)))

(declare-fun bs!1335829 () Bool)

(assert (= bs!1335829 (and d!1803196 d!1802606)))

(assert (=> bs!1335829 (= lambda!308845 lambda!308758)))

(declare-fun bs!1335830 () Bool)

(assert (= bs!1335830 (and d!1803196 d!1803152)))

(assert (=> bs!1335830 (= lambda!308845 lambda!308839)))

(declare-fun bs!1335831 () Bool)

(assert (= bs!1335831 (and d!1803196 b!5714528)))

(assert (=> bs!1335831 (= lambda!308845 lambda!308687)))

(declare-fun bs!1335832 () Bool)

(assert (= bs!1335832 (and d!1803196 d!1802958)))

(assert (=> bs!1335832 (= lambda!308845 lambda!308811)))

(declare-fun bs!1335833 () Bool)

(assert (= bs!1335833 (and d!1803196 d!1802682)))

(assert (=> bs!1335833 (= lambda!308845 lambda!308776)))

(declare-fun bs!1335834 () Bool)

(assert (= bs!1335834 (and d!1803196 d!1803132)))

(assert (=> bs!1335834 (= lambda!308845 lambda!308836)))

(declare-fun bs!1335835 () Bool)

(assert (= bs!1335835 (and d!1803196 d!1802650)))

(assert (=> bs!1335835 (= lambda!308845 lambda!308762)))

(declare-fun bs!1335836 () Bool)

(assert (= bs!1335836 (and d!1803196 d!1803168)))

(assert (=> bs!1335836 (= lambda!308845 lambda!308841)))

(declare-fun bs!1335837 () Bool)

(assert (= bs!1335837 (and d!1803196 d!1803134)))

(assert (=> bs!1335837 (= lambda!308845 lambda!308837)))

(declare-fun bs!1335838 () Bool)

(assert (= bs!1335838 (and d!1803196 d!1803038)))

(assert (=> bs!1335838 (= lambda!308845 lambda!308825)))

(declare-fun bs!1335839 () Bool)

(assert (= bs!1335839 (and d!1803196 d!1803036)))

(assert (=> bs!1335839 (= lambda!308845 lambda!308824)))

(declare-fun bs!1335840 () Bool)

(assert (= bs!1335840 (and d!1803196 d!1802986)))

(assert (=> bs!1335840 (= lambda!308845 lambda!308818)))

(declare-fun bs!1335841 () Bool)

(assert (= bs!1335841 (and d!1803196 d!1802678)))

(assert (=> bs!1335841 (= lambda!308845 lambda!308770)))

(declare-fun bs!1335842 () Bool)

(assert (= bs!1335842 (and d!1803196 d!1802680)))

(assert (=> bs!1335842 (= lambda!308845 lambda!308773)))

(declare-fun lt!2277426 () List!63439)

(assert (=> d!1803196 (forall!14848 lt!2277426 lambda!308845)))

(declare-fun e!3515591 () List!63439)

(assert (=> d!1803196 (= lt!2277426 e!3515591)))

(declare-fun c!1007851 () Bool)

(assert (=> d!1803196 (= c!1007851 ((_ is Cons!63316) lt!2277128))))

(assert (=> d!1803196 (= (unfocusZipperList!1141 lt!2277128) lt!2277426)))

(declare-fun b!5716593 () Bool)

(assert (=> b!5716593 (= e!3515591 (Cons!63315 (generalisedConcat!1328 (exprs!5597 (h!69764 lt!2277128))) (unfocusZipperList!1141 (t!376760 lt!2277128))))))

(declare-fun b!5716594 () Bool)

(assert (=> b!5716594 (= e!3515591 Nil!63315)))

(assert (= (and d!1803196 c!1007851) b!5716593))

(assert (= (and d!1803196 (not c!1007851)) b!5716594))

(declare-fun m!6670260 () Bool)

(assert (=> d!1803196 m!6670260))

(declare-fun m!6670262 () Bool)

(assert (=> b!5716593 m!6670262))

(declare-fun m!6670264 () Bool)

(assert (=> b!5716593 m!6670264))

(assert (=> d!1802646 d!1803196))

(declare-fun bs!1335843 () Bool)

(declare-fun b!5716600 () Bool)

(assert (= bs!1335843 (and b!5716600 d!1802448)))

(declare-fun lambda!308846 () Int)

(assert (=> bs!1335843 (not (= lambda!308846 lambda!308742))))

(declare-fun bs!1335844 () Bool)

(assert (= bs!1335844 (and b!5716600 b!5714499)))

(assert (=> bs!1335844 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 lt!2277132) lt!2277097)) (= lambda!308846 lambda!308685))))

(declare-fun bs!1335845 () Bool)

(assert (= bs!1335845 (and b!5716600 d!1802776)))

(assert (=> bs!1335845 (not (= lambda!308846 lambda!308794))))

(declare-fun bs!1335846 () Bool)

(assert (= bs!1335846 (and b!5716600 d!1803082)))

(assert (=> bs!1335846 (not (= lambda!308846 lambda!308832))))

(declare-fun bs!1335847 () Bool)

(assert (= bs!1335847 (and b!5716600 b!5716226)))

(assert (=> bs!1335847 (not (= lambda!308846 lambda!308821))))

(declare-fun bs!1335848 () Bool)

(assert (= bs!1335848 (and b!5716600 d!1802660)))

(assert (=> bs!1335848 (not (= lambda!308846 lambda!308765))))

(declare-fun bs!1335849 () Bool)

(assert (= bs!1335849 (and b!5716600 b!5716351)))

(assert (=> bs!1335849 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31939 lt!2277097))) (= (regTwo!31939 lt!2277132) (regOne!31939 lt!2277097))) (= lambda!308846 lambda!308826))))

(assert (=> bs!1335845 (not (= lambda!308846 lambda!308793))))

(declare-fun bs!1335850 () Bool)

(assert (= bs!1335850 (and b!5716600 d!1802700)))

(assert (=> bs!1335850 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 lt!2277132) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308846 lambda!308782))))

(declare-fun bs!1335851 () Bool)

(assert (= bs!1335851 (and b!5716600 b!5716132)))

(assert (=> bs!1335851 (= (and (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31939 r!7292))) (= (regTwo!31939 lt!2277132) (regOne!31939 r!7292))) (= lambda!308846 lambda!308809))))

(declare-fun bs!1335852 () Bool)

(assert (= bs!1335852 (and b!5716600 d!1802714)))

(assert (=> bs!1335852 (not (= lambda!308846 lambda!308787))))

(declare-fun bs!1335853 () Bool)

(assert (= bs!1335853 (and b!5716600 d!1802970)))

(assert (=> bs!1335853 (not (= lambda!308846 lambda!308816))))

(assert (=> bs!1335848 (not (= lambda!308846 lambda!308764))))

(declare-fun bs!1335854 () Bool)

(assert (= bs!1335854 (and b!5716600 d!1803100)))

(assert (=> bs!1335854 (not (= lambda!308846 lambda!308833))))

(declare-fun bs!1335855 () Bool)

(assert (= bs!1335855 (and b!5716600 b!5715849)))

(assert (=> bs!1335855 (not (= lambda!308846 lambda!308799))))

(assert (=> bs!1335853 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31939 lt!2277132) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308846 lambda!308817))))

(declare-fun bs!1335856 () Bool)

(assert (= bs!1335856 (and b!5716600 b!5714753)))

(assert (=> bs!1335856 (= (and (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 lt!2277132)) (= (regTwo!31939 lt!2277132) lt!2277132)) (= lambda!308846 lambda!308716))))

(assert (=> bs!1335852 (not (= lambda!308846 lambda!308786))))

(declare-fun bs!1335857 () Bool)

(assert (= bs!1335857 (and b!5716600 b!5714504)))

(assert (=> bs!1335857 (not (= lambda!308846 lambda!308683))))

(declare-fun bs!1335858 () Bool)

(assert (= bs!1335858 (and b!5716600 b!5715508)))

(assert (=> bs!1335858 (not (= lambda!308846 lambda!308767))))

(declare-fun bs!1335859 () Bool)

(assert (= bs!1335859 (and b!5716600 b!5716128)))

(assert (=> bs!1335859 (not (= lambda!308846 lambda!308810))))

(assert (=> bs!1335844 (not (= lambda!308846 lambda!308686))))

(declare-fun bs!1335860 () Bool)

(assert (= bs!1335860 (and b!5716600 b!5715645)))

(assert (=> bs!1335860 (not (= lambda!308846 lambda!308785))))

(declare-fun bs!1335861 () Bool)

(assert (= bs!1335861 (and b!5716600 d!1802830)))

(assert (=> bs!1335861 (not (= lambda!308846 lambda!308801))))

(declare-fun bs!1335862 () Bool)

(assert (= bs!1335862 (and b!5716600 b!5716347)))

(assert (=> bs!1335862 (not (= lambda!308846 lambda!308827))))

(assert (=> bs!1335850 (not (= lambda!308846 lambda!308781))))

(assert (=> bs!1335843 (not (= lambda!308846 lambda!308743))))

(declare-fun bs!1335863 () Bool)

(assert (= bs!1335863 (and b!5716600 b!5714517)))

(assert (=> bs!1335863 (not (= lambda!308846 lambda!308680))))

(declare-fun bs!1335864 () Bool)

(assert (= bs!1335864 (and b!5716600 d!1802432)))

(assert (=> bs!1335864 (not (= lambda!308846 lambda!308728))))

(declare-fun bs!1335865 () Bool)

(assert (= bs!1335865 (and b!5716600 b!5715853)))

(assert (=> bs!1335865 (= (and (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regTwo!31939 r!7292))) (= (regTwo!31939 lt!2277132) (regTwo!31939 r!7292))) (= lambda!308846 lambda!308798))))

(declare-fun bs!1335866 () Bool)

(assert (= bs!1335866 (and b!5716600 b!5715649)))

(assert (=> bs!1335866 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 lt!2277097)) (= (regTwo!31939 lt!2277132) lt!2277097)) (= lambda!308846 lambda!308784))))

(declare-fun bs!1335867 () Bool)

(assert (= bs!1335867 (and b!5716600 b!5716230)))

(assert (=> bs!1335867 (= (and (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31939 lt!2277132))) (= (regTwo!31939 lt!2277132) (regOne!31939 lt!2277132))) (= lambda!308846 lambda!308820))))

(declare-fun bs!1335868 () Bool)

(assert (= bs!1335868 (and b!5716600 d!1802658)))

(assert (=> bs!1335868 (not (= lambda!308846 lambda!308763))))

(declare-fun bs!1335869 () Bool)

(assert (= bs!1335869 (and b!5716600 b!5714749)))

(assert (=> bs!1335869 (not (= lambda!308846 lambda!308717))))

(assert (=> bs!1335844 (not (= lambda!308846 lambda!308684))))

(declare-fun bs!1335870 () Bool)

(assert (= bs!1335870 (and b!5716600 d!1803170)))

(assert (=> bs!1335870 (not (= lambda!308846 lambda!308842))))

(assert (=> bs!1335854 (not (= lambda!308846 lambda!308834))))

(assert (=> bs!1335863 (not (= lambda!308846 lambda!308679))))

(assert (=> bs!1335857 (not (= lambda!308846 lambda!308682))))

(declare-fun bs!1335871 () Bool)

(assert (= bs!1335871 (and b!5716600 b!5716248)))

(assert (=> bs!1335871 (not (= lambda!308846 lambda!308823))))

(assert (=> bs!1335861 (not (= lambda!308846 lambda!308802))))

(declare-fun bs!1335872 () Bool)

(assert (= bs!1335872 (and b!5716600 b!5716252)))

(assert (=> bs!1335872 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 (regTwo!31939 lt!2277097))) (= (regTwo!31939 lt!2277132) (regTwo!31939 lt!2277097))) (= lambda!308846 lambda!308822))))

(declare-fun bs!1335873 () Bool)

(assert (= bs!1335873 (and b!5716600 d!1802704)))

(assert (=> bs!1335873 (not (= lambda!308846 lambda!308783))))

(declare-fun bs!1335874 () Bool)

(assert (= bs!1335874 (and b!5716600 b!5715512)))

(assert (=> bs!1335874 (= (and (= (reg!16042 (regTwo!31939 lt!2277132)) (reg!16042 r!7292)) (= (regTwo!31939 lt!2277132) r!7292)) (= lambda!308846 lambda!308766))))

(assert (=> b!5716600 true))

(assert (=> b!5716600 true))

(declare-fun bs!1335875 () Bool)

(declare-fun b!5716596 () Bool)

(assert (= bs!1335875 (and b!5716596 d!1802448)))

(declare-fun lambda!308847 () Int)

(assert (=> bs!1335875 (not (= lambda!308847 lambda!308742))))

(declare-fun bs!1335876 () Bool)

(assert (= bs!1335876 (and b!5716596 b!5714499)))

(assert (=> bs!1335876 (not (= lambda!308847 lambda!308685))))

(declare-fun bs!1335877 () Bool)

(assert (= bs!1335877 (and b!5716596 d!1802776)))

(assert (=> bs!1335877 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) lt!2277097) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308847 lambda!308794))))

(declare-fun bs!1335878 () Bool)

(assert (= bs!1335878 (and b!5716596 b!5716226)))

(assert (=> bs!1335878 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 (regOne!31939 lt!2277132))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 (regOne!31939 lt!2277132)))) (= lambda!308847 lambda!308821))))

(declare-fun bs!1335879 () Bool)

(assert (= bs!1335879 (and b!5716596 d!1802660)))

(assert (=> bs!1335879 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) lt!2277097) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308847 lambda!308765))))

(declare-fun bs!1335880 () Bool)

(assert (= bs!1335880 (and b!5716596 b!5716351)))

(assert (=> bs!1335880 (not (= lambda!308847 lambda!308826))))

(assert (=> bs!1335877 (not (= lambda!308847 lambda!308793))))

(declare-fun bs!1335881 () Bool)

(assert (= bs!1335881 (and b!5716596 d!1802700)))

(assert (=> bs!1335881 (not (= lambda!308847 lambda!308782))))

(declare-fun bs!1335882 () Bool)

(assert (= bs!1335882 (and b!5716596 b!5716132)))

(assert (=> bs!1335882 (not (= lambda!308847 lambda!308809))))

(declare-fun bs!1335883 () Bool)

(assert (= bs!1335883 (and b!5716596 d!1802714)))

(assert (=> bs!1335883 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) lt!2277097)) (= lambda!308847 lambda!308787))))

(declare-fun bs!1335884 () Bool)

(assert (= bs!1335884 (and b!5716596 d!1802970)))

(assert (=> bs!1335884 (not (= lambda!308847 lambda!308816))))

(assert (=> bs!1335879 (not (= lambda!308847 lambda!308764))))

(declare-fun bs!1335885 () Bool)

(assert (= bs!1335885 (and b!5716596 d!1803100)))

(assert (=> bs!1335885 (not (= lambda!308847 lambda!308833))))

(declare-fun bs!1335886 () Bool)

(assert (= bs!1335886 (and b!5716596 b!5715849)))

(assert (=> bs!1335886 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 (regTwo!31939 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 (regTwo!31939 r!7292)))) (= lambda!308847 lambda!308799))))

(assert (=> bs!1335884 (not (= lambda!308847 lambda!308817))))

(declare-fun bs!1335887 () Bool)

(assert (= bs!1335887 (and b!5716596 b!5714753)))

(assert (=> bs!1335887 (not (= lambda!308847 lambda!308716))))

(assert (=> bs!1335883 (not (= lambda!308847 lambda!308786))))

(declare-fun bs!1335888 () Bool)

(assert (= bs!1335888 (and b!5716596 b!5714504)))

(assert (=> bs!1335888 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) lt!2277097) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308847 lambda!308683))))

(declare-fun bs!1335889 () Bool)

(assert (= bs!1335889 (and b!5716596 b!5715508)))

(assert (=> bs!1335889 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308847 lambda!308767))))

(declare-fun bs!1335890 () Bool)

(assert (= bs!1335890 (and b!5716596 b!5716128)))

(assert (=> bs!1335890 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 (regOne!31939 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 (regOne!31939 r!7292)))) (= lambda!308847 lambda!308810))))

(assert (=> bs!1335876 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) lt!2277097)) (= lambda!308847 lambda!308686))))

(declare-fun bs!1335891 () Bool)

(assert (= bs!1335891 (and b!5716596 b!5715645)))

(assert (=> bs!1335891 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 lt!2277097)) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 lt!2277097))) (= lambda!308847 lambda!308785))))

(declare-fun bs!1335892 () Bool)

(assert (= bs!1335892 (and b!5716596 b!5716600)))

(assert (=> bs!1335892 (not (= lambda!308847 lambda!308846))))

(declare-fun bs!1335893 () Bool)

(assert (= bs!1335893 (and b!5716596 d!1803082)))

(assert (=> bs!1335893 (not (= lambda!308847 lambda!308832))))

(declare-fun bs!1335894 () Bool)

(assert (= bs!1335894 (and b!5716596 d!1802830)))

(assert (=> bs!1335894 (not (= lambda!308847 lambda!308801))))

(declare-fun bs!1335895 () Bool)

(assert (= bs!1335895 (and b!5716596 b!5716347)))

(assert (=> bs!1335895 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 (regOne!31939 lt!2277097))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 (regOne!31939 lt!2277097)))) (= lambda!308847 lambda!308827))))

(assert (=> bs!1335881 (not (= lambda!308847 lambda!308781))))

(assert (=> bs!1335875 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308847 lambda!308743))))

(declare-fun bs!1335896 () Bool)

(assert (= bs!1335896 (and b!5716596 b!5714517)))

(assert (=> bs!1335896 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308847 lambda!308680))))

(declare-fun bs!1335897 () Bool)

(assert (= bs!1335897 (and b!5716596 d!1802432)))

(assert (=> bs!1335897 (not (= lambda!308847 lambda!308728))))

(declare-fun bs!1335898 () Bool)

(assert (= bs!1335898 (and b!5716596 b!5715853)))

(assert (=> bs!1335898 (not (= lambda!308847 lambda!308798))))

(declare-fun bs!1335899 () Bool)

(assert (= bs!1335899 (and b!5716596 b!5715649)))

(assert (=> bs!1335899 (not (= lambda!308847 lambda!308784))))

(declare-fun bs!1335900 () Bool)

(assert (= bs!1335900 (and b!5716596 b!5716230)))

(assert (=> bs!1335900 (not (= lambda!308847 lambda!308820))))

(declare-fun bs!1335901 () Bool)

(assert (= bs!1335901 (and b!5716596 d!1802658)))

(assert (=> bs!1335901 (not (= lambda!308847 lambda!308763))))

(declare-fun bs!1335902 () Bool)

(assert (= bs!1335902 (and b!5716596 b!5714749)))

(assert (=> bs!1335902 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 lt!2277132)) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 lt!2277132))) (= lambda!308847 lambda!308717))))

(assert (=> bs!1335876 (not (= lambda!308847 lambda!308684))))

(declare-fun bs!1335903 () Bool)

(assert (= bs!1335903 (and b!5716596 d!1803170)))

(assert (=> bs!1335903 (not (= lambda!308847 lambda!308842))))

(assert (=> bs!1335885 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 lt!2277132)) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) lt!2277097)) (= lambda!308847 lambda!308834))))

(assert (=> bs!1335896 (not (= lambda!308847 lambda!308679))))

(assert (=> bs!1335888 (not (= lambda!308847 lambda!308682))))

(declare-fun bs!1335904 () Bool)

(assert (= bs!1335904 (and b!5716596 b!5716248)))

(assert (=> bs!1335904 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 (regTwo!31939 lt!2277097))) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 (regTwo!31939 lt!2277097)))) (= lambda!308847 lambda!308823))))

(assert (=> bs!1335894 (= (and (= (regOne!31938 (regTwo!31939 lt!2277132)) (regOne!31938 r!7292)) (= (regTwo!31938 (regTwo!31939 lt!2277132)) (regTwo!31938 r!7292))) (= lambda!308847 lambda!308802))))

(declare-fun bs!1335905 () Bool)

(assert (= bs!1335905 (and b!5716596 b!5716252)))

(assert (=> bs!1335905 (not (= lambda!308847 lambda!308822))))

(declare-fun bs!1335906 () Bool)

(assert (= bs!1335906 (and b!5716596 d!1802704)))

(assert (=> bs!1335906 (not (= lambda!308847 lambda!308783))))

(declare-fun bs!1335907 () Bool)

(assert (= bs!1335907 (and b!5716596 b!5715512)))

(assert (=> bs!1335907 (not (= lambda!308847 lambda!308766))))

(assert (=> b!5716596 true))

(assert (=> b!5716596 true))

(declare-fun d!1803198 () Bool)

(declare-fun c!1007854 () Bool)

(assert (=> d!1803198 (= c!1007854 ((_ is EmptyExpr!15713) (regTwo!31939 lt!2277132)))))

(declare-fun e!3515598 () Bool)

(assert (=> d!1803198 (= (matchRSpec!2816 (regTwo!31939 lt!2277132) s!2326) e!3515598)))

(declare-fun b!5716595 () Bool)

(declare-fun res!2413745 () Bool)

(declare-fun e!3515592 () Bool)

(assert (=> b!5716595 (=> res!2413745 e!3515592)))

(declare-fun call!436441 () Bool)

(assert (=> b!5716595 (= res!2413745 call!436441)))

(declare-fun e!3515597 () Bool)

(assert (=> b!5716595 (= e!3515597 e!3515592)))

(declare-fun call!436442 () Bool)

(assert (=> b!5716596 (= e!3515597 call!436442)))

(declare-fun b!5716597 () Bool)

(declare-fun c!1007852 () Bool)

(assert (=> b!5716597 (= c!1007852 ((_ is ElementMatch!15713) (regTwo!31939 lt!2277132)))))

(declare-fun e!3515596 () Bool)

(declare-fun e!3515593 () Bool)

(assert (=> b!5716597 (= e!3515596 e!3515593)))

(declare-fun b!5716598 () Bool)

(assert (=> b!5716598 (= e!3515593 (= s!2326 (Cons!63314 (c!1007275 (regTwo!31939 lt!2277132)) Nil!63314)))))

(declare-fun b!5716599 () Bool)

(assert (=> b!5716599 (= e!3515598 e!3515596)))

(declare-fun res!2413746 () Bool)

(assert (=> b!5716599 (= res!2413746 (not ((_ is EmptyLang!15713) (regTwo!31939 lt!2277132))))))

(assert (=> b!5716599 (=> (not res!2413746) (not e!3515596))))

(declare-fun bm!436436 () Bool)

(assert (=> bm!436436 (= call!436441 (isEmpty!35186 s!2326))))

(assert (=> b!5716600 (= e!3515592 call!436442)))

(declare-fun b!5716601 () Bool)

(assert (=> b!5716601 (= e!3515598 call!436441)))

(declare-fun b!5716602 () Bool)

(declare-fun e!3515595 () Bool)

(assert (=> b!5716602 (= e!3515595 (matchRSpec!2816 (regTwo!31939 (regTwo!31939 lt!2277132)) s!2326))))

(declare-fun b!5716603 () Bool)

(declare-fun c!1007853 () Bool)

(assert (=> b!5716603 (= c!1007853 ((_ is Union!15713) (regTwo!31939 lt!2277132)))))

(declare-fun e!3515594 () Bool)

(assert (=> b!5716603 (= e!3515593 e!3515594)))

(declare-fun b!5716604 () Bool)

(assert (=> b!5716604 (= e!3515594 e!3515597)))

(declare-fun c!1007855 () Bool)

(assert (=> b!5716604 (= c!1007855 ((_ is Star!15713) (regTwo!31939 lt!2277132)))))

(declare-fun b!5716605 () Bool)

(assert (=> b!5716605 (= e!3515594 e!3515595)))

(declare-fun res!2413747 () Bool)

(assert (=> b!5716605 (= res!2413747 (matchRSpec!2816 (regOne!31939 (regTwo!31939 lt!2277132)) s!2326))))

(assert (=> b!5716605 (=> res!2413747 e!3515595)))

(declare-fun bm!436437 () Bool)

(assert (=> bm!436437 (= call!436442 (Exists!2813 (ite c!1007855 lambda!308846 lambda!308847)))))

(assert (= (and d!1803198 c!1007854) b!5716601))

(assert (= (and d!1803198 (not c!1007854)) b!5716599))

(assert (= (and b!5716599 res!2413746) b!5716597))

(assert (= (and b!5716597 c!1007852) b!5716598))

(assert (= (and b!5716597 (not c!1007852)) b!5716603))

(assert (= (and b!5716603 c!1007853) b!5716605))

(assert (= (and b!5716603 (not c!1007853)) b!5716604))

(assert (= (and b!5716605 (not res!2413747)) b!5716602))

(assert (= (and b!5716604 c!1007855) b!5716595))

(assert (= (and b!5716604 (not c!1007855)) b!5716596))

(assert (= (and b!5716595 (not res!2413745)) b!5716600))

(assert (= (or b!5716600 b!5716596) bm!436437))

(assert (= (or b!5716601 b!5716595) bm!436436))

(assert (=> bm!436436 m!6668190))

(declare-fun m!6670266 () Bool)

(assert (=> b!5716602 m!6670266))

(declare-fun m!6670268 () Bool)

(assert (=> b!5716605 m!6670268))

(declare-fun m!6670270 () Bool)

(assert (=> bm!436437 m!6670270))

(assert (=> b!5714755 d!1803198))

(assert (=> b!5715435 d!1802840))

(assert (=> b!5715435 d!1802744))

(assert (=> b!5715529 d!1802790))

(assert (=> d!1802610 d!1802718))

(assert (=> d!1802610 d!1802630))

(declare-fun d!1803200 () Bool)

(assert (=> d!1803200 (= (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144)) (matchZipper!1851 lt!2277108 (_1!36113 lt!2277144)))))

(assert (=> d!1803200 true))

(declare-fun _$44!1440 () Unit!156384)

(assert (=> d!1803200 (= (choose!43223 lt!2277108 lt!2277094 (reg!16042 (regOne!31938 r!7292)) (_1!36113 lt!2277144)) _$44!1440)))

(declare-fun bs!1335908 () Bool)

(assert (= bs!1335908 d!1803200))

(assert (=> bs!1335908 m!6667908))

(assert (=> bs!1335908 m!6667950))

(assert (=> d!1802610 d!1803200))

(assert (=> d!1802610 d!1802812))

(declare-fun d!1803202 () Bool)

(assert (=> d!1803202 (= (flatMap!1326 lt!2277101 lambda!308755) (choose!43218 lt!2277101 lambda!308755))))

(declare-fun bs!1335909 () Bool)

(assert (= bs!1335909 d!1803202))

(declare-fun m!6670272 () Bool)

(assert (=> bs!1335909 m!6670272))

(assert (=> d!1802600 d!1803202))

(declare-fun bm!436438 () Bool)

(declare-fun call!436445 () Bool)

(declare-fun call!436444 () Bool)

(assert (=> bm!436438 (= call!436445 call!436444)))

(declare-fun b!5716606 () Bool)

(declare-fun res!2413749 () Bool)

(declare-fun e!3515604 () Bool)

(assert (=> b!5716606 (=> res!2413749 e!3515604)))

(assert (=> b!5716606 (= res!2413749 (not ((_ is Concat!24558) lt!2277268)))))

(declare-fun e!3515605 () Bool)

(assert (=> b!5716606 (= e!3515605 e!3515604)))

(declare-fun b!5716607 () Bool)

(declare-fun e!3515599 () Bool)

(assert (=> b!5716607 (= e!3515604 e!3515599)))

(declare-fun res!2413752 () Bool)

(assert (=> b!5716607 (=> (not res!2413752) (not e!3515599))))

(declare-fun call!436443 () Bool)

(assert (=> b!5716607 (= res!2413752 call!436443)))

(declare-fun b!5716608 () Bool)

(declare-fun res!2413748 () Bool)

(declare-fun e!3515603 () Bool)

(assert (=> b!5716608 (=> (not res!2413748) (not e!3515603))))

(assert (=> b!5716608 (= res!2413748 call!436443)))

(assert (=> b!5716608 (= e!3515605 e!3515603)))

(declare-fun b!5716609 () Bool)

(declare-fun e!3515602 () Bool)

(assert (=> b!5716609 (= e!3515602 call!436444)))

(declare-fun b!5716610 () Bool)

(assert (=> b!5716610 (= e!3515599 call!436445)))

(declare-fun b!5716611 () Bool)

(assert (=> b!5716611 (= e!3515603 call!436445)))

(declare-fun d!1803204 () Bool)

(declare-fun res!2413751 () Bool)

(declare-fun e!3515600 () Bool)

(assert (=> d!1803204 (=> res!2413751 e!3515600)))

(assert (=> d!1803204 (= res!2413751 ((_ is ElementMatch!15713) lt!2277268))))

(assert (=> d!1803204 (= (validRegex!7449 lt!2277268) e!3515600)))

(declare-fun b!5716612 () Bool)

(declare-fun e!3515601 () Bool)

(assert (=> b!5716612 (= e!3515601 e!3515605)))

(declare-fun c!1007857 () Bool)

(assert (=> b!5716612 (= c!1007857 ((_ is Union!15713) lt!2277268))))

(declare-fun c!1007856 () Bool)

(declare-fun bm!436439 () Bool)

(assert (=> bm!436439 (= call!436444 (validRegex!7449 (ite c!1007856 (reg!16042 lt!2277268) (ite c!1007857 (regTwo!31939 lt!2277268) (regTwo!31938 lt!2277268)))))))

(declare-fun bm!436440 () Bool)

(assert (=> bm!436440 (= call!436443 (validRegex!7449 (ite c!1007857 (regOne!31939 lt!2277268) (regOne!31938 lt!2277268))))))

(declare-fun b!5716613 () Bool)

(assert (=> b!5716613 (= e!3515601 e!3515602)))

(declare-fun res!2413750 () Bool)

(assert (=> b!5716613 (= res!2413750 (not (nullable!5745 (reg!16042 lt!2277268))))))

(assert (=> b!5716613 (=> (not res!2413750) (not e!3515602))))

(declare-fun b!5716614 () Bool)

(assert (=> b!5716614 (= e!3515600 e!3515601)))

(assert (=> b!5716614 (= c!1007856 ((_ is Star!15713) lt!2277268))))

(assert (= (and d!1803204 (not res!2413751)) b!5716614))

(assert (= (and b!5716614 c!1007856) b!5716613))

(assert (= (and b!5716614 (not c!1007856)) b!5716612))

(assert (= (and b!5716613 res!2413750) b!5716609))

(assert (= (and b!5716612 c!1007857) b!5716608))

(assert (= (and b!5716612 (not c!1007857)) b!5716606))

(assert (= (and b!5716608 res!2413748) b!5716611))

(assert (= (and b!5716606 (not res!2413749)) b!5716607))

(assert (= (and b!5716607 res!2413752) b!5716610))

(assert (= (or b!5716611 b!5716610) bm!436438))

(assert (= (or b!5716608 b!5716607) bm!436440))

(assert (= (or b!5716609 bm!436438) bm!436439))

(declare-fun m!6670274 () Bool)

(assert (=> bm!436439 m!6670274))

(declare-fun m!6670276 () Bool)

(assert (=> bm!436440 m!6670276))

(declare-fun m!6670278 () Bool)

(assert (=> b!5716613 m!6670278))

(assert (=> d!1802506 d!1803204))

(assert (=> d!1802506 d!1802680))

(assert (=> d!1802506 d!1802682))

(assert (=> d!1802606 d!1802536))

(declare-fun bs!1335910 () Bool)

(declare-fun d!1803206 () Bool)

(assert (= bs!1335910 (and d!1803206 d!1803062)))

(declare-fun lambda!308850 () Int)

(assert (=> bs!1335910 (= lambda!308850 lambda!308828)))

(declare-fun bs!1335911 () Bool)

(assert (= bs!1335911 (and d!1803206 d!1802648)))

(assert (=> bs!1335911 (= lambda!308850 lambda!308761)))

(declare-fun bs!1335912 () Bool)

(assert (= bs!1335912 (and d!1803206 d!1803194)))

(assert (=> bs!1335912 (= lambda!308850 lambda!308844)))

(declare-fun bs!1335913 () Bool)

(assert (= bs!1335913 (and d!1803206 d!1802606)))

(assert (=> bs!1335913 (= lambda!308850 lambda!308758)))

(declare-fun bs!1335914 () Bool)

(assert (= bs!1335914 (and d!1803206 d!1803196)))

(assert (=> bs!1335914 (= lambda!308850 lambda!308845)))

(declare-fun bs!1335915 () Bool)

(assert (= bs!1335915 (and d!1803206 d!1803152)))

(assert (=> bs!1335915 (= lambda!308850 lambda!308839)))

(declare-fun bs!1335916 () Bool)

(assert (= bs!1335916 (and d!1803206 b!5714528)))

(assert (=> bs!1335916 (= lambda!308850 lambda!308687)))

(declare-fun bs!1335917 () Bool)

(assert (= bs!1335917 (and d!1803206 d!1802958)))

(assert (=> bs!1335917 (= lambda!308850 lambda!308811)))

(declare-fun bs!1335918 () Bool)

(assert (= bs!1335918 (and d!1803206 d!1802682)))

(assert (=> bs!1335918 (= lambda!308850 lambda!308776)))

(declare-fun bs!1335919 () Bool)

(assert (= bs!1335919 (and d!1803206 d!1803132)))

(assert (=> bs!1335919 (= lambda!308850 lambda!308836)))

(declare-fun bs!1335920 () Bool)

(assert (= bs!1335920 (and d!1803206 d!1802650)))

(assert (=> bs!1335920 (= lambda!308850 lambda!308762)))

(declare-fun bs!1335921 () Bool)

(assert (= bs!1335921 (and d!1803206 d!1803168)))

(assert (=> bs!1335921 (= lambda!308850 lambda!308841)))

(declare-fun bs!1335922 () Bool)

(assert (= bs!1335922 (and d!1803206 d!1803134)))

(assert (=> bs!1335922 (= lambda!308850 lambda!308837)))

(declare-fun bs!1335923 () Bool)

(assert (= bs!1335923 (and d!1803206 d!1803038)))

(assert (=> bs!1335923 (= lambda!308850 lambda!308825)))

(declare-fun bs!1335924 () Bool)

(assert (= bs!1335924 (and d!1803206 d!1803036)))

(assert (=> bs!1335924 (= lambda!308850 lambda!308824)))

(declare-fun bs!1335925 () Bool)

(assert (= bs!1335925 (and d!1803206 d!1802986)))

(assert (=> bs!1335925 (= lambda!308850 lambda!308818)))

(declare-fun bs!1335926 () Bool)

(assert (= bs!1335926 (and d!1803206 d!1802678)))

(assert (=> bs!1335926 (= lambda!308850 lambda!308770)))

(declare-fun bs!1335927 () Bool)

(assert (= bs!1335927 (and d!1803206 d!1802680)))

(assert (=> bs!1335927 (= lambda!308850 lambda!308773)))

(assert (=> d!1803206 (matchZipper!1851 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119))) true) (++!13908 (_1!36113 lt!2277144) lt!2277140))))

(declare-fun lt!2277429 () Unit!156384)

(assert (=> d!1803206 (= lt!2277429 (lemmaConcatPreservesForall!288 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119) lambda!308850))))

(assert (=> d!1803206 true))

(declare-fun _$56!371 () Unit!156384)

(assert (=> d!1803206 (= (choose!43222 lt!2277124 lt!2277119 (_1!36113 lt!2277144) lt!2277140) _$56!371)))

(declare-fun bs!1335928 () Bool)

(assert (= bs!1335928 d!1803206))

(assert (=> bs!1335928 m!6667962))

(declare-fun m!6670280 () Bool)

(assert (=> bs!1335928 m!6670280))

(assert (=> bs!1335928 m!6668926))

(assert (=> bs!1335928 m!6668922))

(assert (=> bs!1335928 m!6667962))

(assert (=> bs!1335928 m!6668928))

(assert (=> bs!1335928 m!6668922))

(assert (=> d!1802606 d!1803206))

(declare-fun b!5716617 () Bool)

(declare-fun res!2413753 () Bool)

(declare-fun e!3515606 () Bool)

(assert (=> b!5716617 (=> (not res!2413753) (not e!3515606))))

(declare-fun lt!2277430 () List!63439)

(assert (=> b!5716617 (= res!2413753 (= (size!40025 lt!2277430) (+ (size!40025 (exprs!5597 lt!2277124)) (size!40025 (exprs!5597 lt!2277119)))))))

(declare-fun b!5716618 () Bool)

(assert (=> b!5716618 (= e!3515606 (or (not (= (exprs!5597 lt!2277119) Nil!63315)) (= lt!2277430 (exprs!5597 lt!2277124))))))

(declare-fun d!1803208 () Bool)

(assert (=> d!1803208 e!3515606))

(declare-fun res!2413754 () Bool)

(assert (=> d!1803208 (=> (not res!2413754) (not e!3515606))))

(assert (=> d!1803208 (= res!2413754 (= (content!11502 lt!2277430) ((_ map or) (content!11502 (exprs!5597 lt!2277124)) (content!11502 (exprs!5597 lt!2277119)))))))

(declare-fun e!3515607 () List!63439)

(assert (=> d!1803208 (= lt!2277430 e!3515607)))

(declare-fun c!1007858 () Bool)

(assert (=> d!1803208 (= c!1007858 ((_ is Nil!63315) (exprs!5597 lt!2277124)))))

(assert (=> d!1803208 (= (++!13909 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119)) lt!2277430)))

(declare-fun b!5716615 () Bool)

(assert (=> b!5716615 (= e!3515607 (exprs!5597 lt!2277119))))

(declare-fun b!5716616 () Bool)

(assert (=> b!5716616 (= e!3515607 (Cons!63315 (h!69763 (exprs!5597 lt!2277124)) (++!13909 (t!376759 (exprs!5597 lt!2277124)) (exprs!5597 lt!2277119))))))

(assert (= (and d!1803208 c!1007858) b!5716615))

(assert (= (and d!1803208 (not c!1007858)) b!5716616))

(assert (= (and d!1803208 res!2413754) b!5716617))

(assert (= (and b!5716617 res!2413753) b!5716618))

(declare-fun m!6670282 () Bool)

(assert (=> b!5716617 m!6670282))

(declare-fun m!6670284 () Bool)

(assert (=> b!5716617 m!6670284))

(declare-fun m!6670286 () Bool)

(assert (=> b!5716617 m!6670286))

(declare-fun m!6670288 () Bool)

(assert (=> d!1803208 m!6670288))

(declare-fun m!6670290 () Bool)

(assert (=> d!1803208 m!6670290))

(declare-fun m!6670292 () Bool)

(assert (=> d!1803208 m!6670292))

(declare-fun m!6670294 () Bool)

(assert (=> b!5716616 m!6670294))

(assert (=> d!1802606 d!1803208))

(declare-fun d!1803210 () Bool)

(assert (=> d!1803210 (forall!14848 (++!13909 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119)) lambda!308758)))

(declare-fun lt!2277431 () Unit!156384)

(assert (=> d!1803210 (= lt!2277431 (choose!43225 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119) lambda!308758))))

(assert (=> d!1803210 (forall!14848 (exprs!5597 lt!2277124) lambda!308758)))

(assert (=> d!1803210 (= (lemmaConcatPreservesForall!288 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119) lambda!308758) lt!2277431)))

(declare-fun bs!1335929 () Bool)

(assert (= bs!1335929 d!1803210))

(assert (=> bs!1335929 m!6668926))

(assert (=> bs!1335929 m!6668926))

(declare-fun m!6670296 () Bool)

(assert (=> bs!1335929 m!6670296))

(declare-fun m!6670298 () Bool)

(assert (=> bs!1335929 m!6670298))

(declare-fun m!6670300 () Bool)

(assert (=> bs!1335929 m!6670300))

(assert (=> d!1802606 d!1803210))

(declare-fun d!1803212 () Bool)

(declare-fun c!1007859 () Bool)

(assert (=> d!1803212 (= c!1007859 (isEmpty!35186 (_1!36113 lt!2277144)))))

(declare-fun e!3515608 () Bool)

(assert (=> d!1803212 (= (matchZipper!1851 (store ((as const (Array Context!10194 Bool)) false) lt!2277124 true) (_1!36113 lt!2277144)) e!3515608)))

(declare-fun b!5716619 () Bool)

(assert (=> b!5716619 (= e!3515608 (nullableZipper!1663 (store ((as const (Array Context!10194 Bool)) false) lt!2277124 true)))))

(declare-fun b!5716620 () Bool)

(assert (=> b!5716620 (= e!3515608 (matchZipper!1851 (derivationStepZipper!1796 (store ((as const (Array Context!10194 Bool)) false) lt!2277124 true) (head!12105 (_1!36113 lt!2277144))) (tail!11200 (_1!36113 lt!2277144))))))

(assert (= (and d!1803212 c!1007859) b!5716619))

(assert (= (and d!1803212 (not c!1007859)) b!5716620))

(assert (=> d!1803212 m!6668998))

(assert (=> b!5716619 m!6667890))

(declare-fun m!6670302 () Bool)

(assert (=> b!5716619 m!6670302))

(assert (=> b!5716620 m!6669002))

(assert (=> b!5716620 m!6667890))

(assert (=> b!5716620 m!6669002))

(declare-fun m!6670304 () Bool)

(assert (=> b!5716620 m!6670304))

(assert (=> b!5716620 m!6669006))

(assert (=> b!5716620 m!6670304))

(assert (=> b!5716620 m!6669006))

(declare-fun m!6670306 () Bool)

(assert (=> b!5716620 m!6670306))

(assert (=> d!1802606 d!1803212))

(declare-fun d!1803214 () Bool)

(declare-fun c!1007860 () Bool)

(assert (=> d!1803214 (= c!1007860 (isEmpty!35186 (++!13908 (_1!36113 lt!2277144) lt!2277140)))))

(declare-fun e!3515609 () Bool)

(assert (=> d!1803214 (= (matchZipper!1851 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119))) true) (++!13908 (_1!36113 lt!2277144) lt!2277140)) e!3515609)))

(declare-fun b!5716621 () Bool)

(assert (=> b!5716621 (= e!3515609 (nullableZipper!1663 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119))) true)))))

(declare-fun b!5716622 () Bool)

(assert (=> b!5716622 (= e!3515609 (matchZipper!1851 (derivationStepZipper!1796 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (++!13909 (exprs!5597 lt!2277124) (exprs!5597 lt!2277119))) true) (head!12105 (++!13908 (_1!36113 lt!2277144) lt!2277140))) (tail!11200 (++!13908 (_1!36113 lt!2277144) lt!2277140))))))

(assert (= (and d!1803214 c!1007860) b!5716621))

(assert (= (and d!1803214 (not c!1007860)) b!5716622))

(assert (=> d!1803214 m!6667962))

(assert (=> d!1803214 m!6669406))

(assert (=> b!5716621 m!6668922))

(declare-fun m!6670308 () Bool)

(assert (=> b!5716621 m!6670308))

(assert (=> b!5716622 m!6667962))

(assert (=> b!5716622 m!6669410))

(assert (=> b!5716622 m!6668922))

(assert (=> b!5716622 m!6669410))

(declare-fun m!6670310 () Bool)

(assert (=> b!5716622 m!6670310))

(assert (=> b!5716622 m!6667962))

(assert (=> b!5716622 m!6669414))

(assert (=> b!5716622 m!6670310))

(assert (=> b!5716622 m!6669414))

(declare-fun m!6670312 () Bool)

(assert (=> b!5716622 m!6670312))

(assert (=> d!1802606 d!1803214))

(declare-fun b!5716623 () Bool)

(declare-fun res!2413756 () Bool)

(declare-fun e!3515615 () Bool)

(assert (=> b!5716623 (=> (not res!2413756) (not e!3515615))))

(assert (=> b!5716623 (= res!2413756 (isEmpty!35186 (tail!11200 (tail!11200 lt!2277105))))))

(declare-fun b!5716624 () Bool)

(declare-fun res!2413759 () Bool)

(assert (=> b!5716624 (=> (not res!2413759) (not e!3515615))))

(declare-fun call!436446 () Bool)

(assert (=> b!5716624 (= res!2413759 (not call!436446))))

(declare-fun b!5716625 () Bool)

(declare-fun res!2413761 () Bool)

(declare-fun e!3515612 () Bool)

(assert (=> b!5716625 (=> res!2413761 e!3515612)))

(assert (=> b!5716625 (= res!2413761 e!3515615)))

(declare-fun res!2413760 () Bool)

(assert (=> b!5716625 (=> (not res!2413760) (not e!3515615))))

(declare-fun lt!2277432 () Bool)

(assert (=> b!5716625 (= res!2413760 lt!2277432)))

(declare-fun d!1803216 () Bool)

(declare-fun e!3515614 () Bool)

(assert (=> d!1803216 e!3515614))

(declare-fun c!1007863 () Bool)

(assert (=> d!1803216 (= c!1007863 ((_ is EmptyExpr!15713) (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105))))))

(declare-fun e!3515613 () Bool)

(assert (=> d!1803216 (= lt!2277432 e!3515613)))

(declare-fun c!1007862 () Bool)

(assert (=> d!1803216 (= c!1007862 (isEmpty!35186 (tail!11200 lt!2277105)))))

(assert (=> d!1803216 (validRegex!7449 (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105)))))

(assert (=> d!1803216 (= (matchR!7898 (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105)) (tail!11200 lt!2277105)) lt!2277432)))

(declare-fun b!5716626 () Bool)

(declare-fun e!3515616 () Bool)

(declare-fun e!3515611 () Bool)

(assert (=> b!5716626 (= e!3515616 e!3515611)))

(declare-fun res!2413762 () Bool)

(assert (=> b!5716626 (=> res!2413762 e!3515611)))

(assert (=> b!5716626 (= res!2413762 call!436446)))

(declare-fun b!5716627 () Bool)

(assert (=> b!5716627 (= e!3515613 (nullable!5745 (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105))))))

(declare-fun b!5716628 () Bool)

(declare-fun res!2413758 () Bool)

(assert (=> b!5716628 (=> res!2413758 e!3515612)))

(assert (=> b!5716628 (= res!2413758 (not ((_ is ElementMatch!15713) (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105)))))))

(declare-fun e!3515610 () Bool)

(assert (=> b!5716628 (= e!3515610 e!3515612)))

(declare-fun b!5716629 () Bool)

(assert (=> b!5716629 (= e!3515613 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105)) (head!12105 (tail!11200 lt!2277105))) (tail!11200 (tail!11200 lt!2277105))))))

(declare-fun b!5716630 () Bool)

(declare-fun res!2413755 () Bool)

(assert (=> b!5716630 (=> res!2413755 e!3515611)))

(assert (=> b!5716630 (= res!2413755 (not (isEmpty!35186 (tail!11200 (tail!11200 lt!2277105)))))))

(declare-fun bm!436441 () Bool)

(assert (=> bm!436441 (= call!436446 (isEmpty!35186 (tail!11200 lt!2277105)))))

(declare-fun b!5716631 () Bool)

(assert (=> b!5716631 (= e!3515614 e!3515610)))

(declare-fun c!1007861 () Bool)

(assert (=> b!5716631 (= c!1007861 ((_ is EmptyLang!15713) (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105))))))

(declare-fun b!5716632 () Bool)

(assert (=> b!5716632 (= e!3515612 e!3515616)))

(declare-fun res!2413757 () Bool)

(assert (=> b!5716632 (=> (not res!2413757) (not e!3515616))))

(assert (=> b!5716632 (= res!2413757 (not lt!2277432))))

(declare-fun b!5716633 () Bool)

(assert (=> b!5716633 (= e!3515610 (not lt!2277432))))

(declare-fun b!5716634 () Bool)

(assert (=> b!5716634 (= e!3515615 (= (head!12105 (tail!11200 lt!2277105)) (c!1007275 (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105)))))))

(declare-fun b!5716635 () Bool)

(assert (=> b!5716635 (= e!3515614 (= lt!2277432 call!436446))))

(declare-fun b!5716636 () Bool)

(assert (=> b!5716636 (= e!3515611 (not (= (head!12105 (tail!11200 lt!2277105)) (c!1007275 (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105))))))))

(assert (= (and d!1803216 c!1007862) b!5716627))

(assert (= (and d!1803216 (not c!1007862)) b!5716629))

(assert (= (and d!1803216 c!1007863) b!5716635))

(assert (= (and d!1803216 (not c!1007863)) b!5716631))

(assert (= (and b!5716631 c!1007861) b!5716633))

(assert (= (and b!5716631 (not c!1007861)) b!5716628))

(assert (= (and b!5716628 (not res!2413758)) b!5716625))

(assert (= (and b!5716625 res!2413760) b!5716624))

(assert (= (and b!5716624 res!2413759) b!5716623))

(assert (= (and b!5716623 res!2413756) b!5716634))

(assert (= (and b!5716625 (not res!2413761)) b!5716632))

(assert (= (and b!5716632 res!2413757) b!5716626))

(assert (= (and b!5716626 (not res!2413762)) b!5716630))

(assert (= (and b!5716630 (not res!2413755)) b!5716636))

(assert (= (or b!5716635 b!5716624 b!5716626) bm!436441))

(assert (=> b!5716627 m!6668950))

(declare-fun m!6670314 () Bool)

(assert (=> b!5716627 m!6670314))

(assert (=> d!1803216 m!6668938))

(assert (=> d!1803216 m!6668954))

(assert (=> d!1803216 m!6668950))

(declare-fun m!6670316 () Bool)

(assert (=> d!1803216 m!6670316))

(assert (=> b!5716636 m!6668938))

(assert (=> b!5716636 m!6669288))

(assert (=> b!5716629 m!6668938))

(assert (=> b!5716629 m!6669288))

(assert (=> b!5716629 m!6668950))

(assert (=> b!5716629 m!6669288))

(declare-fun m!6670318 () Bool)

(assert (=> b!5716629 m!6670318))

(assert (=> b!5716629 m!6668938))

(assert (=> b!5716629 m!6669292))

(assert (=> b!5716629 m!6670318))

(assert (=> b!5716629 m!6669292))

(declare-fun m!6670320 () Bool)

(assert (=> b!5716629 m!6670320))

(assert (=> b!5716623 m!6668938))

(assert (=> b!5716623 m!6669292))

(assert (=> b!5716623 m!6669292))

(declare-fun m!6670322 () Bool)

(assert (=> b!5716623 m!6670322))

(assert (=> b!5716630 m!6668938))

(assert (=> b!5716630 m!6669292))

(assert (=> b!5716630 m!6669292))

(assert (=> b!5716630 m!6670322))

(assert (=> b!5716634 m!6668938))

(assert (=> b!5716634 m!6669288))

(assert (=> bm!436441 m!6668938))

(assert (=> bm!436441 m!6668954))

(assert (=> b!5715434 d!1803216))

(declare-fun call!436449 () Regex!15713)

(declare-fun c!1007864 () Bool)

(declare-fun bm!436442 () Bool)

(assert (=> bm!436442 (= call!436449 (derivativeStep!4516 (ite c!1007864 (regOne!31939 lt!2277132) (regOne!31938 lt!2277132)) (head!12105 lt!2277105)))))

(declare-fun b!5716637 () Bool)

(declare-fun e!3515619 () Regex!15713)

(declare-fun call!436447 () Regex!15713)

(assert (=> b!5716637 (= e!3515619 (Union!15713 (Concat!24558 call!436447 (regTwo!31938 lt!2277132)) EmptyLang!15713))))

(declare-fun b!5716639 () Bool)

(declare-fun e!3515621 () Regex!15713)

(assert (=> b!5716639 (= e!3515621 EmptyLang!15713)))

(declare-fun b!5716640 () Bool)

(declare-fun e!3515617 () Regex!15713)

(assert (=> b!5716640 (= e!3515617 (ite (= (head!12105 lt!2277105) (c!1007275 lt!2277132)) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5716641 () Bool)

(declare-fun e!3515618 () Regex!15713)

(declare-fun call!436450 () Regex!15713)

(assert (=> b!5716641 (= e!3515618 (Union!15713 call!436449 call!436450))))

(declare-fun b!5716642 () Bool)

(assert (=> b!5716642 (= e!3515619 (Union!15713 (Concat!24558 call!436449 (regTwo!31938 lt!2277132)) call!436447))))

(declare-fun b!5716643 () Bool)

(assert (=> b!5716643 (= c!1007864 ((_ is Union!15713) lt!2277132))))

(assert (=> b!5716643 (= e!3515617 e!3515618)))

(declare-fun c!1007868 () Bool)

(declare-fun c!1007867 () Bool)

(declare-fun bm!436443 () Bool)

(assert (=> bm!436443 (= call!436450 (derivativeStep!4516 (ite c!1007864 (regTwo!31939 lt!2277132) (ite c!1007867 (reg!16042 lt!2277132) (ite c!1007868 (regTwo!31938 lt!2277132) (regOne!31938 lt!2277132)))) (head!12105 lt!2277105)))))

(declare-fun bm!436444 () Bool)

(declare-fun call!436448 () Regex!15713)

(assert (=> bm!436444 (= call!436448 call!436450)))

(declare-fun bm!436445 () Bool)

(assert (=> bm!436445 (= call!436447 call!436448)))

(declare-fun b!5716644 () Bool)

(declare-fun e!3515620 () Regex!15713)

(assert (=> b!5716644 (= e!3515620 (Concat!24558 call!436448 lt!2277132))))

(declare-fun b!5716638 () Bool)

(assert (=> b!5716638 (= e!3515621 e!3515617)))

(declare-fun c!1007865 () Bool)

(assert (=> b!5716638 (= c!1007865 ((_ is ElementMatch!15713) lt!2277132))))

(declare-fun d!1803218 () Bool)

(declare-fun lt!2277433 () Regex!15713)

(assert (=> d!1803218 (validRegex!7449 lt!2277433)))

(assert (=> d!1803218 (= lt!2277433 e!3515621)))

(declare-fun c!1007866 () Bool)

(assert (=> d!1803218 (= c!1007866 (or ((_ is EmptyExpr!15713) lt!2277132) ((_ is EmptyLang!15713) lt!2277132)))))

(assert (=> d!1803218 (validRegex!7449 lt!2277132)))

(assert (=> d!1803218 (= (derivativeStep!4516 lt!2277132 (head!12105 lt!2277105)) lt!2277433)))

(declare-fun b!5716645 () Bool)

(assert (=> b!5716645 (= c!1007868 (nullable!5745 (regOne!31938 lt!2277132)))))

(assert (=> b!5716645 (= e!3515620 e!3515619)))

(declare-fun b!5716646 () Bool)

(assert (=> b!5716646 (= e!3515618 e!3515620)))

(assert (=> b!5716646 (= c!1007867 ((_ is Star!15713) lt!2277132))))

(assert (= (and d!1803218 c!1007866) b!5716639))

(assert (= (and d!1803218 (not c!1007866)) b!5716638))

(assert (= (and b!5716638 c!1007865) b!5716640))

(assert (= (and b!5716638 (not c!1007865)) b!5716643))

(assert (= (and b!5716643 c!1007864) b!5716641))

(assert (= (and b!5716643 (not c!1007864)) b!5716646))

(assert (= (and b!5716646 c!1007867) b!5716644))

(assert (= (and b!5716646 (not c!1007867)) b!5716645))

(assert (= (and b!5716645 c!1007868) b!5716642))

(assert (= (and b!5716645 (not c!1007868)) b!5716637))

(assert (= (or b!5716642 b!5716637) bm!436445))

(assert (= (or b!5716644 bm!436445) bm!436444))

(assert (= (or b!5716641 bm!436444) bm!436443))

(assert (= (or b!5716641 b!5716642) bm!436442))

(assert (=> bm!436442 m!6668934))

(declare-fun m!6670324 () Bool)

(assert (=> bm!436442 m!6670324))

(assert (=> bm!436443 m!6668934))

(declare-fun m!6670326 () Bool)

(assert (=> bm!436443 m!6670326))

(declare-fun m!6670328 () Bool)

(assert (=> d!1803218 m!6670328))

(assert (=> d!1803218 m!6668200))

(declare-fun m!6670330 () Bool)

(assert (=> b!5716645 m!6670330))

(assert (=> b!5715434 d!1803218))

(assert (=> b!5715434 d!1802742))

(assert (=> b!5715434 d!1802744))

(declare-fun d!1803220 () Bool)

(declare-fun res!2413763 () Bool)

(declare-fun e!3515622 () Bool)

(assert (=> d!1803220 (=> res!2413763 e!3515622)))

(assert (=> d!1803220 (= res!2413763 ((_ is Nil!63315) lt!2277342))))

(assert (=> d!1803220 (= (forall!14848 lt!2277342 lambda!308776) e!3515622)))

(declare-fun b!5716647 () Bool)

(declare-fun e!3515623 () Bool)

(assert (=> b!5716647 (= e!3515622 e!3515623)))

(declare-fun res!2413764 () Bool)

(assert (=> b!5716647 (=> (not res!2413764) (not e!3515623))))

(assert (=> b!5716647 (= res!2413764 (dynLambda!24773 lambda!308776 (h!69763 lt!2277342)))))

(declare-fun b!5716648 () Bool)

(assert (=> b!5716648 (= e!3515623 (forall!14848 (t!376759 lt!2277342) lambda!308776))))

(assert (= (and d!1803220 (not res!2413763)) b!5716647))

(assert (= (and b!5716647 res!2413764) b!5716648))

(declare-fun b_lambda!215987 () Bool)

(assert (=> (not b_lambda!215987) (not b!5716647)))

(declare-fun m!6670332 () Bool)

(assert (=> b!5716647 m!6670332))

(declare-fun m!6670334 () Bool)

(assert (=> b!5716648 m!6670334))

(assert (=> d!1802682 d!1803220))

(assert (=> d!1802608 d!1802876))

(assert (=> b!5714802 d!1802960))

(assert (=> b!5714802 d!1802962))

(assert (=> b!5715491 d!1803072))

(declare-fun bs!1335930 () Bool)

(declare-fun d!1803222 () Bool)

(assert (= bs!1335930 (and d!1803222 d!1803154)))

(declare-fun lambda!308851 () Int)

(assert (=> bs!1335930 (= lambda!308851 lambda!308840)))

(declare-fun bs!1335931 () Bool)

(assert (= bs!1335931 (and d!1803222 d!1802788)))

(assert (=> bs!1335931 (= lambda!308851 lambda!308797)))

(declare-fun bs!1335932 () Bool)

(assert (= bs!1335932 (and d!1803222 d!1803078)))

(assert (=> bs!1335932 (= lambda!308851 lambda!308829)))

(declare-fun bs!1335933 () Bool)

(assert (= bs!1335933 (and d!1803222 d!1802940)))

(assert (=> bs!1335933 (= lambda!308851 lambda!308808)))

(declare-fun bs!1335934 () Bool)

(assert (= bs!1335934 (and d!1803222 d!1802882)))

(assert (=> bs!1335934 (= lambda!308851 lambda!308805)))

(declare-fun bs!1335935 () Bool)

(assert (= bs!1335935 (and d!1803222 d!1802866)))

(assert (=> bs!1335935 (= lambda!308851 lambda!308804)))

(declare-fun bs!1335936 () Bool)

(assert (= bs!1335936 (and d!1803222 d!1803190)))

(assert (=> bs!1335936 (= lambda!308851 lambda!308843)))

(assert (=> d!1803222 (= (nullableZipper!1663 lt!2277110) (exists!2222 lt!2277110 lambda!308851))))

(declare-fun bs!1335937 () Bool)

(assert (= bs!1335937 d!1803222))

(declare-fun m!6670336 () Bool)

(assert (=> bs!1335937 m!6670336))

(assert (=> b!5715492 d!1803222))

(declare-fun bm!436446 () Bool)

(declare-fun call!436453 () Bool)

(declare-fun call!436452 () Bool)

(assert (=> bm!436446 (= call!436453 call!436452)))

(declare-fun b!5716649 () Bool)

(declare-fun res!2413766 () Bool)

(declare-fun e!3515629 () Bool)

(assert (=> b!5716649 (=> res!2413766 e!3515629)))

(assert (=> b!5716649 (= res!2413766 (not ((_ is Concat!24558) lt!2277339)))))

(declare-fun e!3515630 () Bool)

(assert (=> b!5716649 (= e!3515630 e!3515629)))

(declare-fun b!5716650 () Bool)

(declare-fun e!3515624 () Bool)

(assert (=> b!5716650 (= e!3515629 e!3515624)))

(declare-fun res!2413769 () Bool)

(assert (=> b!5716650 (=> (not res!2413769) (not e!3515624))))

(declare-fun call!436451 () Bool)

(assert (=> b!5716650 (= res!2413769 call!436451)))

(declare-fun b!5716651 () Bool)

(declare-fun res!2413765 () Bool)

(declare-fun e!3515628 () Bool)

(assert (=> b!5716651 (=> (not res!2413765) (not e!3515628))))

(assert (=> b!5716651 (= res!2413765 call!436451)))

(assert (=> b!5716651 (= e!3515630 e!3515628)))

(declare-fun b!5716652 () Bool)

(declare-fun e!3515627 () Bool)

(assert (=> b!5716652 (= e!3515627 call!436452)))

(declare-fun b!5716653 () Bool)

(assert (=> b!5716653 (= e!3515624 call!436453)))

(declare-fun b!5716654 () Bool)

(assert (=> b!5716654 (= e!3515628 call!436453)))

(declare-fun d!1803224 () Bool)

(declare-fun res!2413768 () Bool)

(declare-fun e!3515625 () Bool)

(assert (=> d!1803224 (=> res!2413768 e!3515625)))

(assert (=> d!1803224 (= res!2413768 ((_ is ElementMatch!15713) lt!2277339))))

(assert (=> d!1803224 (= (validRegex!7449 lt!2277339) e!3515625)))

(declare-fun b!5716655 () Bool)

(declare-fun e!3515626 () Bool)

(assert (=> b!5716655 (= e!3515626 e!3515630)))

(declare-fun c!1007870 () Bool)

(assert (=> b!5716655 (= c!1007870 ((_ is Union!15713) lt!2277339))))

(declare-fun bm!436447 () Bool)

(declare-fun c!1007869 () Bool)

(assert (=> bm!436447 (= call!436452 (validRegex!7449 (ite c!1007869 (reg!16042 lt!2277339) (ite c!1007870 (regTwo!31939 lt!2277339) (regTwo!31938 lt!2277339)))))))

(declare-fun bm!436448 () Bool)

(assert (=> bm!436448 (= call!436451 (validRegex!7449 (ite c!1007870 (regOne!31939 lt!2277339) (regOne!31938 lt!2277339))))))

(declare-fun b!5716656 () Bool)

(assert (=> b!5716656 (= e!3515626 e!3515627)))

(declare-fun res!2413767 () Bool)

(assert (=> b!5716656 (= res!2413767 (not (nullable!5745 (reg!16042 lt!2277339))))))

(assert (=> b!5716656 (=> (not res!2413767) (not e!3515627))))

(declare-fun b!5716657 () Bool)

(assert (=> b!5716657 (= e!3515625 e!3515626)))

(assert (=> b!5716657 (= c!1007869 ((_ is Star!15713) lt!2277339))))

(assert (= (and d!1803224 (not res!2413768)) b!5716657))

(assert (= (and b!5716657 c!1007869) b!5716656))

(assert (= (and b!5716657 (not c!1007869)) b!5716655))

(assert (= (and b!5716656 res!2413767) b!5716652))

(assert (= (and b!5716655 c!1007870) b!5716651))

(assert (= (and b!5716655 (not c!1007870)) b!5716649))

(assert (= (and b!5716651 res!2413765) b!5716654))

(assert (= (and b!5716649 (not res!2413766)) b!5716650))

(assert (= (and b!5716650 res!2413769) b!5716653))

(assert (= (or b!5716654 b!5716653) bm!436446))

(assert (= (or b!5716651 b!5716650) bm!436448))

(assert (= (or b!5716652 bm!436446) bm!436447))

(declare-fun m!6670338 () Bool)

(assert (=> bm!436447 m!6670338))

(declare-fun m!6670340 () Bool)

(assert (=> bm!436448 m!6670340))

(declare-fun m!6670342 () Bool)

(assert (=> b!5716656 m!6670342))

(assert (=> d!1802680 d!1803224))

(declare-fun d!1803226 () Bool)

(declare-fun res!2413770 () Bool)

(declare-fun e!3515631 () Bool)

(assert (=> d!1803226 (=> res!2413770 e!3515631)))

(assert (=> d!1803226 (= res!2413770 ((_ is Nil!63315) (unfocusZipperList!1141 zl!343)))))

(assert (=> d!1803226 (= (forall!14848 (unfocusZipperList!1141 zl!343) lambda!308773) e!3515631)))

(declare-fun b!5716658 () Bool)

(declare-fun e!3515632 () Bool)

(assert (=> b!5716658 (= e!3515631 e!3515632)))

(declare-fun res!2413771 () Bool)

(assert (=> b!5716658 (=> (not res!2413771) (not e!3515632))))

(assert (=> b!5716658 (= res!2413771 (dynLambda!24773 lambda!308773 (h!69763 (unfocusZipperList!1141 zl!343))))))

(declare-fun b!5716659 () Bool)

(assert (=> b!5716659 (= e!3515632 (forall!14848 (t!376759 (unfocusZipperList!1141 zl!343)) lambda!308773))))

(assert (= (and d!1803226 (not res!2413770)) b!5716658))

(assert (= (and b!5716658 res!2413771) b!5716659))

(declare-fun b_lambda!215989 () Bool)

(assert (=> (not b_lambda!215989) (not b!5716658)))

(declare-fun m!6670344 () Bool)

(assert (=> b!5716658 m!6670344))

(declare-fun m!6670346 () Bool)

(assert (=> b!5716659 m!6670346))

(assert (=> d!1802680 d!1803226))

(declare-fun d!1803228 () Bool)

(assert (=> d!1803228 (= (isDefined!12425 lt!2277355) (not (isEmpty!35190 lt!2277355)))))

(declare-fun bs!1335938 () Bool)

(assert (= bs!1335938 d!1803228))

(declare-fun m!6670348 () Bool)

(assert (=> bs!1335938 m!6670348))

(assert (=> d!1802716 d!1803228))

(declare-fun b!5716660 () Bool)

(declare-fun res!2413773 () Bool)

(declare-fun e!3515638 () Bool)

(assert (=> b!5716660 (=> (not res!2413773) (not e!3515638))))

(assert (=> b!5716660 (= res!2413773 (isEmpty!35186 (tail!11200 Nil!63314)))))

(declare-fun b!5716661 () Bool)

(declare-fun res!2413776 () Bool)

(assert (=> b!5716661 (=> (not res!2413776) (not e!3515638))))

(declare-fun call!436454 () Bool)

(assert (=> b!5716661 (= res!2413776 (not call!436454))))

(declare-fun b!5716662 () Bool)

(declare-fun res!2413778 () Bool)

(declare-fun e!3515635 () Bool)

(assert (=> b!5716662 (=> res!2413778 e!3515635)))

(assert (=> b!5716662 (= res!2413778 e!3515638)))

(declare-fun res!2413777 () Bool)

(assert (=> b!5716662 (=> (not res!2413777) (not e!3515638))))

(declare-fun lt!2277434 () Bool)

(assert (=> b!5716662 (= res!2413777 lt!2277434)))

(declare-fun d!1803230 () Bool)

(declare-fun e!3515637 () Bool)

(assert (=> d!1803230 e!3515637))

(declare-fun c!1007873 () Bool)

(assert (=> d!1803230 (= c!1007873 ((_ is EmptyExpr!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun e!3515636 () Bool)

(assert (=> d!1803230 (= lt!2277434 e!3515636)))

(declare-fun c!1007872 () Bool)

(assert (=> d!1803230 (= c!1007872 (isEmpty!35186 Nil!63314))))

(assert (=> d!1803230 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1803230 (= (matchR!7898 (reg!16042 (regOne!31938 r!7292)) Nil!63314) lt!2277434)))

(declare-fun b!5716663 () Bool)

(declare-fun e!3515639 () Bool)

(declare-fun e!3515634 () Bool)

(assert (=> b!5716663 (= e!3515639 e!3515634)))

(declare-fun res!2413779 () Bool)

(assert (=> b!5716663 (=> res!2413779 e!3515634)))

(assert (=> b!5716663 (= res!2413779 call!436454)))

(declare-fun b!5716664 () Bool)

(assert (=> b!5716664 (= e!3515636 (nullable!5745 (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5716665 () Bool)

(declare-fun res!2413775 () Bool)

(assert (=> b!5716665 (=> res!2413775 e!3515635)))

(assert (=> b!5716665 (= res!2413775 (not ((_ is ElementMatch!15713) (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun e!3515633 () Bool)

(assert (=> b!5716665 (= e!3515633 e!3515635)))

(declare-fun b!5716666 () Bool)

(assert (=> b!5716666 (= e!3515636 (matchR!7898 (derivativeStep!4516 (reg!16042 (regOne!31938 r!7292)) (head!12105 Nil!63314)) (tail!11200 Nil!63314)))))

(declare-fun b!5716667 () Bool)

(declare-fun res!2413772 () Bool)

(assert (=> b!5716667 (=> res!2413772 e!3515634)))

(assert (=> b!5716667 (= res!2413772 (not (isEmpty!35186 (tail!11200 Nil!63314))))))

(declare-fun bm!436449 () Bool)

(assert (=> bm!436449 (= call!436454 (isEmpty!35186 Nil!63314))))

(declare-fun b!5716668 () Bool)

(assert (=> b!5716668 (= e!3515637 e!3515633)))

(declare-fun c!1007871 () Bool)

(assert (=> b!5716668 (= c!1007871 ((_ is EmptyLang!15713) (reg!16042 (regOne!31938 r!7292))))))

(declare-fun b!5716669 () Bool)

(assert (=> b!5716669 (= e!3515635 e!3515639)))

(declare-fun res!2413774 () Bool)

(assert (=> b!5716669 (=> (not res!2413774) (not e!3515639))))

(assert (=> b!5716669 (= res!2413774 (not lt!2277434))))

(declare-fun b!5716670 () Bool)

(assert (=> b!5716670 (= e!3515633 (not lt!2277434))))

(declare-fun b!5716671 () Bool)

(assert (=> b!5716671 (= e!3515638 (= (head!12105 Nil!63314) (c!1007275 (reg!16042 (regOne!31938 r!7292)))))))

(declare-fun b!5716672 () Bool)

(assert (=> b!5716672 (= e!3515637 (= lt!2277434 call!436454))))

(declare-fun b!5716673 () Bool)

(assert (=> b!5716673 (= e!3515634 (not (= (head!12105 Nil!63314) (c!1007275 (reg!16042 (regOne!31938 r!7292))))))))

(assert (= (and d!1803230 c!1007872) b!5716664))

(assert (= (and d!1803230 (not c!1007872)) b!5716666))

(assert (= (and d!1803230 c!1007873) b!5716672))

(assert (= (and d!1803230 (not c!1007873)) b!5716668))

(assert (= (and b!5716668 c!1007871) b!5716670))

(assert (= (and b!5716668 (not c!1007871)) b!5716665))

(assert (= (and b!5716665 (not res!2413775)) b!5716662))

(assert (= (and b!5716662 res!2413777) b!5716661))

(assert (= (and b!5716661 res!2413776) b!5716660))

(assert (= (and b!5716660 res!2413773) b!5716671))

(assert (= (and b!5716662 (not res!2413778)) b!5716669))

(assert (= (and b!5716669 res!2413774) b!5716663))

(assert (= (and b!5716663 (not res!2413779)) b!5716667))

(assert (= (and b!5716667 (not res!2413772)) b!5716673))

(assert (= (or b!5716672 b!5716661 b!5716663) bm!436449))

(assert (=> b!5716664 m!6669254))

(assert (=> d!1803230 m!6669268))

(assert (=> d!1803230 m!6668948))

(assert (=> b!5716673 m!6669270))

(assert (=> b!5716666 m!6669270))

(assert (=> b!5716666 m!6669270))

(declare-fun m!6670350 () Bool)

(assert (=> b!5716666 m!6670350))

(assert (=> b!5716666 m!6669274))

(assert (=> b!5716666 m!6670350))

(assert (=> b!5716666 m!6669274))

(declare-fun m!6670352 () Bool)

(assert (=> b!5716666 m!6670352))

(assert (=> b!5716660 m!6669274))

(assert (=> b!5716660 m!6669274))

(assert (=> b!5716660 m!6669278))

(assert (=> b!5716667 m!6669274))

(assert (=> b!5716667 m!6669274))

(assert (=> b!5716667 m!6669278))

(assert (=> b!5716671 m!6669270))

(assert (=> bm!436449 m!6669268))

(assert (=> d!1802716 d!1803230))

(assert (=> d!1802716 d!1802812))

(assert (=> d!1802400 d!1803046))

(declare-fun b!5716674 () Bool)

(declare-fun res!2413781 () Bool)

(declare-fun e!3515645 () Bool)

(assert (=> b!5716674 (=> (not res!2413781) (not e!3515645))))

(assert (=> b!5716674 (= res!2413781 (isEmpty!35186 (tail!11200 Nil!63314)))))

(declare-fun b!5716675 () Bool)

(declare-fun res!2413784 () Bool)

(assert (=> b!5716675 (=> (not res!2413784) (not e!3515645))))

(declare-fun call!436455 () Bool)

(assert (=> b!5716675 (= res!2413784 (not call!436455))))

(declare-fun b!5716676 () Bool)

(declare-fun res!2413786 () Bool)

(declare-fun e!3515642 () Bool)

(assert (=> b!5716676 (=> res!2413786 e!3515642)))

(assert (=> b!5716676 (= res!2413786 e!3515645)))

(declare-fun res!2413785 () Bool)

(assert (=> b!5716676 (=> (not res!2413785) (not e!3515645))))

(declare-fun lt!2277435 () Bool)

(assert (=> b!5716676 (= res!2413785 lt!2277435)))

(declare-fun d!1803232 () Bool)

(declare-fun e!3515644 () Bool)

(assert (=> d!1803232 e!3515644))

(declare-fun c!1007876 () Bool)

(assert (=> d!1803232 (= c!1007876 ((_ is EmptyExpr!15713) (regOne!31938 r!7292)))))

(declare-fun e!3515643 () Bool)

(assert (=> d!1803232 (= lt!2277435 e!3515643)))

(declare-fun c!1007875 () Bool)

(assert (=> d!1803232 (= c!1007875 (isEmpty!35186 Nil!63314))))

(assert (=> d!1803232 (validRegex!7449 (regOne!31938 r!7292))))

(assert (=> d!1803232 (= (matchR!7898 (regOne!31938 r!7292) Nil!63314) lt!2277435)))

(declare-fun b!5716677 () Bool)

(declare-fun e!3515646 () Bool)

(declare-fun e!3515641 () Bool)

(assert (=> b!5716677 (= e!3515646 e!3515641)))

(declare-fun res!2413787 () Bool)

(assert (=> b!5716677 (=> res!2413787 e!3515641)))

(assert (=> b!5716677 (= res!2413787 call!436455)))

(declare-fun b!5716678 () Bool)

(assert (=> b!5716678 (= e!3515643 (nullable!5745 (regOne!31938 r!7292)))))

(declare-fun b!5716679 () Bool)

(declare-fun res!2413783 () Bool)

(assert (=> b!5716679 (=> res!2413783 e!3515642)))

(assert (=> b!5716679 (= res!2413783 (not ((_ is ElementMatch!15713) (regOne!31938 r!7292))))))

(declare-fun e!3515640 () Bool)

(assert (=> b!5716679 (= e!3515640 e!3515642)))

(declare-fun b!5716680 () Bool)

(assert (=> b!5716680 (= e!3515643 (matchR!7898 (derivativeStep!4516 (regOne!31938 r!7292) (head!12105 Nil!63314)) (tail!11200 Nil!63314)))))

(declare-fun b!5716681 () Bool)

(declare-fun res!2413780 () Bool)

(assert (=> b!5716681 (=> res!2413780 e!3515641)))

(assert (=> b!5716681 (= res!2413780 (not (isEmpty!35186 (tail!11200 Nil!63314))))))

(declare-fun bm!436450 () Bool)

(assert (=> bm!436450 (= call!436455 (isEmpty!35186 Nil!63314))))

(declare-fun b!5716682 () Bool)

(assert (=> b!5716682 (= e!3515644 e!3515640)))

(declare-fun c!1007874 () Bool)

(assert (=> b!5716682 (= c!1007874 ((_ is EmptyLang!15713) (regOne!31938 r!7292)))))

(declare-fun b!5716683 () Bool)

(assert (=> b!5716683 (= e!3515642 e!3515646)))

(declare-fun res!2413782 () Bool)

(assert (=> b!5716683 (=> (not res!2413782) (not e!3515646))))

(assert (=> b!5716683 (= res!2413782 (not lt!2277435))))

(declare-fun b!5716684 () Bool)

(assert (=> b!5716684 (= e!3515640 (not lt!2277435))))

(declare-fun b!5716685 () Bool)

(assert (=> b!5716685 (= e!3515645 (= (head!12105 Nil!63314) (c!1007275 (regOne!31938 r!7292))))))

(declare-fun b!5716686 () Bool)

(assert (=> b!5716686 (= e!3515644 (= lt!2277435 call!436455))))

(declare-fun b!5716687 () Bool)

(assert (=> b!5716687 (= e!3515641 (not (= (head!12105 Nil!63314) (c!1007275 (regOne!31938 r!7292)))))))

(assert (= (and d!1803232 c!1007875) b!5716678))

(assert (= (and d!1803232 (not c!1007875)) b!5716680))

(assert (= (and d!1803232 c!1007876) b!5716686))

(assert (= (and d!1803232 (not c!1007876)) b!5716682))

(assert (= (and b!5716682 c!1007874) b!5716684))

(assert (= (and b!5716682 (not c!1007874)) b!5716679))

(assert (= (and b!5716679 (not res!2413783)) b!5716676))

(assert (= (and b!5716676 res!2413785) b!5716675))

(assert (= (and b!5716675 res!2413784) b!5716674))

(assert (= (and b!5716674 res!2413781) b!5716685))

(assert (= (and b!5716676 (not res!2413786)) b!5716683))

(assert (= (and b!5716683 res!2413782) b!5716677))

(assert (= (and b!5716677 (not res!2413787)) b!5716681))

(assert (= (and b!5716681 (not res!2413780)) b!5716687))

(assert (= (or b!5716686 b!5716675 b!5716677) bm!436450))

(assert (=> b!5716678 m!6669890))

(assert (=> d!1803232 m!6669268))

(assert (=> d!1803232 m!6668432))

(assert (=> b!5716687 m!6669270))

(assert (=> b!5716680 m!6669270))

(assert (=> b!5716680 m!6669270))

(declare-fun m!6670354 () Bool)

(assert (=> b!5716680 m!6670354))

(assert (=> b!5716680 m!6669274))

(assert (=> b!5716680 m!6670354))

(assert (=> b!5716680 m!6669274))

(declare-fun m!6670356 () Bool)

(assert (=> b!5716680 m!6670356))

(assert (=> b!5716674 m!6669274))

(assert (=> b!5716674 m!6669274))

(assert (=> b!5716674 m!6669278))

(assert (=> b!5716681 m!6669274))

(assert (=> b!5716681 m!6669274))

(assert (=> b!5716681 m!6669278))

(assert (=> b!5716685 m!6669270))

(assert (=> bm!436450 m!6669268))

(assert (=> d!1802400 d!1803232))

(assert (=> d!1802400 d!1802832))

(declare-fun b!5716689 () Bool)

(declare-fun e!3515649 () Bool)

(assert (=> b!5716689 (= e!3515649 (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 lt!2277104)))))))

(declare-fun bm!436451 () Bool)

(declare-fun call!436459 () List!63439)

(declare-fun call!436456 () List!63439)

(assert (=> bm!436451 (= call!436459 call!436456)))

(declare-fun b!5716690 () Bool)

(declare-fun e!3515647 () (InoxSet Context!10194))

(declare-fun call!436458 () (InoxSet Context!10194))

(assert (=> b!5716690 (= e!3515647 call!436458)))

(declare-fun b!5716691 () Bool)

(declare-fun e!3515652 () (InoxSet Context!10194))

(assert (=> b!5716691 (= e!3515652 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716692 () Bool)

(declare-fun e!3515651 () (InoxSet Context!10194))

(declare-fun call!436457 () (InoxSet Context!10194))

(declare-fun call!436461 () (InoxSet Context!10194))

(assert (=> b!5716692 (= e!3515651 ((_ map or) call!436457 call!436461))))

(declare-fun bm!436452 () Bool)

(declare-fun call!436460 () (InoxSet Context!10194))

(assert (=> bm!436452 (= call!436460 call!436461)))

(declare-fun b!5716693 () Bool)

(declare-fun c!1007878 () Bool)

(assert (=> b!5716693 (= c!1007878 ((_ is Star!15713) (h!69763 (exprs!5597 lt!2277104))))))

(assert (=> b!5716693 (= e!3515647 e!3515652)))

(declare-fun c!1007877 () Bool)

(declare-fun bm!436453 () Bool)

(assert (=> bm!436453 (= call!436457 (derivationStepZipperDown!1055 (ite c!1007877 (regOne!31939 (h!69763 (exprs!5597 lt!2277104))) (regOne!31938 (h!69763 (exprs!5597 lt!2277104)))) (ite c!1007877 (Context!10195 (t!376759 (exprs!5597 lt!2277104))) (Context!10195 call!436456)) (h!69762 s!2326)))))

(declare-fun c!1007879 () Bool)

(declare-fun c!1007880 () Bool)

(declare-fun bm!436454 () Bool)

(assert (=> bm!436454 (= call!436461 (derivationStepZipperDown!1055 (ite c!1007877 (regTwo!31939 (h!69763 (exprs!5597 lt!2277104))) (ite c!1007879 (regTwo!31938 (h!69763 (exprs!5597 lt!2277104))) (ite c!1007880 (regOne!31938 (h!69763 (exprs!5597 lt!2277104))) (reg!16042 (h!69763 (exprs!5597 lt!2277104)))))) (ite (or c!1007877 c!1007879) (Context!10195 (t!376759 (exprs!5597 lt!2277104))) (Context!10195 call!436459)) (h!69762 s!2326)))))

(declare-fun bm!436455 () Bool)

(assert (=> bm!436455 (= call!436458 call!436460)))

(declare-fun b!5716694 () Bool)

(declare-fun e!3515648 () (InoxSet Context!10194))

(assert (=> b!5716694 (= e!3515648 ((_ map or) call!436457 call!436460))))

(declare-fun b!5716695 () Bool)

(assert (=> b!5716695 (= e!3515648 e!3515647)))

(assert (=> b!5716695 (= c!1007880 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277104))))))

(declare-fun d!1803234 () Bool)

(declare-fun c!1007881 () Bool)

(assert (=> d!1803234 (= c!1007881 (and ((_ is ElementMatch!15713) (h!69763 (exprs!5597 lt!2277104))) (= (c!1007275 (h!69763 (exprs!5597 lt!2277104))) (h!69762 s!2326))))))

(declare-fun e!3515650 () (InoxSet Context!10194))

(assert (=> d!1803234 (= (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277104)) (Context!10195 (t!376759 (exprs!5597 lt!2277104))) (h!69762 s!2326)) e!3515650)))

(declare-fun b!5716688 () Bool)

(assert (=> b!5716688 (= e!3515650 e!3515651)))

(assert (=> b!5716688 (= c!1007877 ((_ is Union!15713) (h!69763 (exprs!5597 lt!2277104))))))

(declare-fun b!5716696 () Bool)

(assert (=> b!5716696 (= e!3515650 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (t!376759 (exprs!5597 lt!2277104))) true))))

(declare-fun b!5716697 () Bool)

(assert (=> b!5716697 (= c!1007879 e!3515649)))

(declare-fun res!2413788 () Bool)

(assert (=> b!5716697 (=> (not res!2413788) (not e!3515649))))

(assert (=> b!5716697 (= res!2413788 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277104))))))

(assert (=> b!5716697 (= e!3515651 e!3515648)))

(declare-fun bm!436456 () Bool)

(assert (=> bm!436456 (= call!436456 ($colon$colon!1729 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277104)))) (ite (or c!1007879 c!1007880) (regTwo!31938 (h!69763 (exprs!5597 lt!2277104))) (h!69763 (exprs!5597 lt!2277104)))))))

(declare-fun b!5716698 () Bool)

(assert (=> b!5716698 (= e!3515652 call!436458)))

(assert (= (and d!1803234 c!1007881) b!5716696))

(assert (= (and d!1803234 (not c!1007881)) b!5716688))

(assert (= (and b!5716688 c!1007877) b!5716692))

(assert (= (and b!5716688 (not c!1007877)) b!5716697))

(assert (= (and b!5716697 res!2413788) b!5716689))

(assert (= (and b!5716697 c!1007879) b!5716694))

(assert (= (and b!5716697 (not c!1007879)) b!5716695))

(assert (= (and b!5716695 c!1007880) b!5716690))

(assert (= (and b!5716695 (not c!1007880)) b!5716693))

(assert (= (and b!5716693 c!1007878) b!5716698))

(assert (= (and b!5716693 (not c!1007878)) b!5716691))

(assert (= (or b!5716690 b!5716698) bm!436451))

(assert (= (or b!5716690 b!5716698) bm!436455))

(assert (= (or b!5716694 bm!436451) bm!436456))

(assert (= (or b!5716694 bm!436455) bm!436452))

(assert (= (or b!5716692 bm!436452) bm!436454))

(assert (= (or b!5716692 b!5716694) bm!436453))

(declare-fun m!6670358 () Bool)

(assert (=> b!5716689 m!6670358))

(declare-fun m!6670360 () Bool)

(assert (=> bm!436454 m!6670360))

(declare-fun m!6670362 () Bool)

(assert (=> b!5716696 m!6670362))

(declare-fun m!6670364 () Bool)

(assert (=> bm!436456 m!6670364))

(declare-fun m!6670366 () Bool)

(assert (=> bm!436453 m!6670366))

(assert (=> bm!436200 d!1803234))

(declare-fun d!1803236 () Bool)

(assert (=> d!1803236 true))

(declare-fun setRes!38290 () Bool)

(assert (=> d!1803236 setRes!38290))

(declare-fun condSetEmpty!38290 () Bool)

(declare-fun res!2413789 () (InoxSet Context!10194))

(assert (=> d!1803236 (= condSetEmpty!38290 (= res!2413789 ((as const (Array Context!10194 Bool)) false)))))

(assert (=> d!1803236 (= (choose!43218 lt!2277108 lambda!308681) res!2413789)))

(declare-fun setIsEmpty!38290 () Bool)

(assert (=> setIsEmpty!38290 setRes!38290))

(declare-fun e!3515653 () Bool)

(declare-fun tp!1583546 () Bool)

(declare-fun setNonEmpty!38290 () Bool)

(declare-fun setElem!38290 () Context!10194)

(assert (=> setNonEmpty!38290 (= setRes!38290 (and tp!1583546 (inv!82529 setElem!38290) e!3515653))))

(declare-fun setRest!38290 () (InoxSet Context!10194))

(assert (=> setNonEmpty!38290 (= res!2413789 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) setElem!38290 true) setRest!38290))))

(declare-fun b!5716699 () Bool)

(declare-fun tp!1583545 () Bool)

(assert (=> b!5716699 (= e!3515653 tp!1583545)))

(assert (= (and d!1803236 condSetEmpty!38290) setIsEmpty!38290))

(assert (= (and d!1803236 (not condSetEmpty!38290)) setNonEmpty!38290))

(assert (= setNonEmpty!38290 b!5716699))

(declare-fun m!6670368 () Bool)

(assert (=> setNonEmpty!38290 m!6670368))

(assert (=> d!1802488 d!1803236))

(declare-fun d!1803238 () Bool)

(assert (=> d!1803238 (= (isEmpty!35188 (tail!11202 (exprs!5597 (h!69764 zl!343)))) ((_ is Nil!63315) (tail!11202 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> b!5715575 d!1803238))

(declare-fun d!1803240 () Bool)

(assert (=> d!1803240 (= (tail!11202 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))

(assert (=> b!5715575 d!1803240))

(assert (=> b!5715656 d!1803228))

(assert (=> b!5715465 d!1802766))

(declare-fun b!5716700 () Bool)

(declare-fun e!3515655 () Bool)

(assert (=> b!5716700 (= e!3515655 (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))))))

(declare-fun d!1803242 () Bool)

(declare-fun c!1007882 () Bool)

(assert (=> d!1803242 (= c!1007882 e!3515655)))

(declare-fun res!2413790 () Bool)

(assert (=> d!1803242 (=> (not res!2413790) (not e!3515655))))

(assert (=> d!1803242 (= res!2413790 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))))

(declare-fun e!3515656 () (InoxSet Context!10194))

(assert (=> d!1803242 (= (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (h!69762 s!2326)) e!3515656)))

(declare-fun b!5716701 () Bool)

(declare-fun call!436462 () (InoxSet Context!10194))

(assert (=> b!5716701 (= e!3515656 ((_ map or) call!436462 (derivationStepZipperUp!981 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))) (h!69762 s!2326))))))

(declare-fun b!5716702 () Bool)

(declare-fun e!3515654 () (InoxSet Context!10194))

(assert (=> b!5716702 (= e!3515654 ((as const (Array Context!10194 Bool)) false))))

(declare-fun bm!436457 () Bool)

(assert (=> bm!436457 (= call!436462 (derivationStepZipperDown!1055 (h!69763 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))) (Context!10195 (t!376759 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343))))))))))) (h!69762 s!2326)))))

(declare-fun b!5716703 () Bool)

(assert (=> b!5716703 (= e!3515654 call!436462)))

(declare-fun b!5716704 () Bool)

(assert (=> b!5716704 (= e!3515656 e!3515654)))

(declare-fun c!1007883 () Bool)

(assert (=> b!5716704 (= c!1007883 ((_ is Cons!63315) (exprs!5597 (Context!10195 (t!376759 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))))

(assert (= (and d!1803242 res!2413790) b!5716700))

(assert (= (and d!1803242 c!1007882) b!5716701))

(assert (= (and d!1803242 (not c!1007882)) b!5716704))

(assert (= (and b!5716704 c!1007883) b!5716703))

(assert (= (and b!5716704 (not c!1007883)) b!5716702))

(assert (= (or b!5716701 b!5716703) bm!436457))

(declare-fun m!6670370 () Bool)

(assert (=> b!5716700 m!6670370))

(declare-fun m!6670372 () Bool)

(assert (=> b!5716701 m!6670372))

(declare-fun m!6670374 () Bool)

(assert (=> bm!436457 m!6670374))

(assert (=> b!5715103 d!1803242))

(declare-fun b!5716705 () Bool)

(declare-fun res!2413792 () Bool)

(declare-fun e!3515662 () Bool)

(assert (=> b!5716705 (=> (not res!2413792) (not e!3515662))))

(assert (=> b!5716705 (= res!2413792 (isEmpty!35186 (tail!11200 (tail!11200 lt!2277096))))))

(declare-fun b!5716706 () Bool)

(declare-fun res!2413795 () Bool)

(assert (=> b!5716706 (=> (not res!2413795) (not e!3515662))))

(declare-fun call!436463 () Bool)

(assert (=> b!5716706 (= res!2413795 (not call!436463))))

(declare-fun b!5716707 () Bool)

(declare-fun res!2413797 () Bool)

(declare-fun e!3515659 () Bool)

(assert (=> b!5716707 (=> res!2413797 e!3515659)))

(assert (=> b!5716707 (= res!2413797 e!3515662)))

(declare-fun res!2413796 () Bool)

(assert (=> b!5716707 (=> (not res!2413796) (not e!3515662))))

(declare-fun lt!2277436 () Bool)

(assert (=> b!5716707 (= res!2413796 lt!2277436)))

(declare-fun d!1803244 () Bool)

(declare-fun e!3515661 () Bool)

(assert (=> d!1803244 e!3515661))

(declare-fun c!1007886 () Bool)

(assert (=> d!1803244 (= c!1007886 ((_ is EmptyExpr!15713) (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096))))))

(declare-fun e!3515660 () Bool)

(assert (=> d!1803244 (= lt!2277436 e!3515660)))

(declare-fun c!1007885 () Bool)

(assert (=> d!1803244 (= c!1007885 (isEmpty!35186 (tail!11200 lt!2277096)))))

(assert (=> d!1803244 (validRegex!7449 (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096)))))

(assert (=> d!1803244 (= (matchR!7898 (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096)) (tail!11200 lt!2277096)) lt!2277436)))

(declare-fun b!5716708 () Bool)

(declare-fun e!3515663 () Bool)

(declare-fun e!3515658 () Bool)

(assert (=> b!5716708 (= e!3515663 e!3515658)))

(declare-fun res!2413798 () Bool)

(assert (=> b!5716708 (=> res!2413798 e!3515658)))

(assert (=> b!5716708 (= res!2413798 call!436463)))

(declare-fun b!5716709 () Bool)

(assert (=> b!5716709 (= e!3515660 (nullable!5745 (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096))))))

(declare-fun b!5716710 () Bool)

(declare-fun res!2413794 () Bool)

(assert (=> b!5716710 (=> res!2413794 e!3515659)))

(assert (=> b!5716710 (= res!2413794 (not ((_ is ElementMatch!15713) (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096)))))))

(declare-fun e!3515657 () Bool)

(assert (=> b!5716710 (= e!3515657 e!3515659)))

(declare-fun b!5716711 () Bool)

(assert (=> b!5716711 (= e!3515660 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096)) (head!12105 (tail!11200 lt!2277096))) (tail!11200 (tail!11200 lt!2277096))))))

(declare-fun b!5716712 () Bool)

(declare-fun res!2413791 () Bool)

(assert (=> b!5716712 (=> res!2413791 e!3515658)))

(assert (=> b!5716712 (= res!2413791 (not (isEmpty!35186 (tail!11200 (tail!11200 lt!2277096)))))))

(declare-fun bm!436458 () Bool)

(assert (=> bm!436458 (= call!436463 (isEmpty!35186 (tail!11200 lt!2277096)))))

(declare-fun b!5716713 () Bool)

(assert (=> b!5716713 (= e!3515661 e!3515657)))

(declare-fun c!1007884 () Bool)

(assert (=> b!5716713 (= c!1007884 ((_ is EmptyLang!15713) (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096))))))

(declare-fun b!5716714 () Bool)

(assert (=> b!5716714 (= e!3515659 e!3515663)))

(declare-fun res!2413793 () Bool)

(assert (=> b!5716714 (=> (not res!2413793) (not e!3515663))))

(assert (=> b!5716714 (= res!2413793 (not lt!2277436))))

(declare-fun b!5716715 () Bool)

(assert (=> b!5716715 (= e!3515657 (not lt!2277436))))

(declare-fun b!5716716 () Bool)

(assert (=> b!5716716 (= e!3515662 (= (head!12105 (tail!11200 lt!2277096)) (c!1007275 (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096)))))))

(declare-fun b!5716717 () Bool)

(assert (=> b!5716717 (= e!3515661 (= lt!2277436 call!436463))))

(declare-fun b!5716718 () Bool)

(assert (=> b!5716718 (= e!3515658 (not (= (head!12105 (tail!11200 lt!2277096)) (c!1007275 (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096))))))))

(assert (= (and d!1803244 c!1007885) b!5716709))

(assert (= (and d!1803244 (not c!1007885)) b!5716711))

(assert (= (and d!1803244 c!1007886) b!5716717))

(assert (= (and d!1803244 (not c!1007886)) b!5716713))

(assert (= (and b!5716713 c!1007884) b!5716715))

(assert (= (and b!5716713 (not c!1007884)) b!5716710))

(assert (= (and b!5716710 (not res!2413794)) b!5716707))

(assert (= (and b!5716707 res!2413796) b!5716706))

(assert (= (and b!5716706 res!2413795) b!5716705))

(assert (= (and b!5716705 res!2413792) b!5716716))

(assert (= (and b!5716707 (not res!2413797)) b!5716714))

(assert (= (and b!5716714 res!2413793) b!5716708))

(assert (= (and b!5716708 (not res!2413798)) b!5716712))

(assert (= (and b!5716712 (not res!2413791)) b!5716718))

(assert (= (or b!5716717 b!5716706 b!5716708) bm!436458))

(assert (=> b!5716709 m!6669036))

(declare-fun m!6670376 () Bool)

(assert (=> b!5716709 m!6670376))

(assert (=> d!1803244 m!6669038))

(assert (=> d!1803244 m!6669042))

(assert (=> d!1803244 m!6669036))

(declare-fun m!6670378 () Bool)

(assert (=> d!1803244 m!6670378))

(assert (=> b!5716718 m!6669038))

(declare-fun m!6670380 () Bool)

(assert (=> b!5716718 m!6670380))

(assert (=> b!5716711 m!6669038))

(assert (=> b!5716711 m!6670380))

(assert (=> b!5716711 m!6669036))

(assert (=> b!5716711 m!6670380))

(declare-fun m!6670382 () Bool)

(assert (=> b!5716711 m!6670382))

(assert (=> b!5716711 m!6669038))

(declare-fun m!6670384 () Bool)

(assert (=> b!5716711 m!6670384))

(assert (=> b!5716711 m!6670382))

(assert (=> b!5716711 m!6670384))

(declare-fun m!6670386 () Bool)

(assert (=> b!5716711 m!6670386))

(assert (=> b!5716705 m!6669038))

(assert (=> b!5716705 m!6670384))

(assert (=> b!5716705 m!6670384))

(declare-fun m!6670388 () Bool)

(assert (=> b!5716705 m!6670388))

(assert (=> b!5716712 m!6669038))

(assert (=> b!5716712 m!6670384))

(assert (=> b!5716712 m!6670384))

(assert (=> b!5716712 m!6670388))

(assert (=> b!5716716 m!6669038))

(assert (=> b!5716716 m!6670380))

(assert (=> bm!436458 m!6669038))

(assert (=> bm!436458 m!6669042))

(assert (=> b!5715484 d!1803244))

(declare-fun call!436466 () Regex!15713)

(declare-fun c!1007887 () Bool)

(declare-fun bm!436459 () Bool)

(assert (=> bm!436459 (= call!436466 (derivativeStep!4516 (ite c!1007887 (regOne!31939 lt!2277097) (regOne!31938 lt!2277097)) (head!12105 lt!2277096)))))

(declare-fun b!5716719 () Bool)

(declare-fun e!3515666 () Regex!15713)

(declare-fun call!436464 () Regex!15713)

(assert (=> b!5716719 (= e!3515666 (Union!15713 (Concat!24558 call!436464 (regTwo!31938 lt!2277097)) EmptyLang!15713))))

(declare-fun b!5716721 () Bool)

(declare-fun e!3515668 () Regex!15713)

(assert (=> b!5716721 (= e!3515668 EmptyLang!15713)))

(declare-fun b!5716722 () Bool)

(declare-fun e!3515664 () Regex!15713)

(assert (=> b!5716722 (= e!3515664 (ite (= (head!12105 lt!2277096) (c!1007275 lt!2277097)) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5716723 () Bool)

(declare-fun e!3515665 () Regex!15713)

(declare-fun call!436467 () Regex!15713)

(assert (=> b!5716723 (= e!3515665 (Union!15713 call!436466 call!436467))))

(declare-fun b!5716724 () Bool)

(assert (=> b!5716724 (= e!3515666 (Union!15713 (Concat!24558 call!436466 (regTwo!31938 lt!2277097)) call!436464))))

(declare-fun b!5716725 () Bool)

(assert (=> b!5716725 (= c!1007887 ((_ is Union!15713) lt!2277097))))

(assert (=> b!5716725 (= e!3515664 e!3515665)))

(declare-fun c!1007890 () Bool)

(declare-fun c!1007891 () Bool)

(declare-fun bm!436460 () Bool)

(assert (=> bm!436460 (= call!436467 (derivativeStep!4516 (ite c!1007887 (regTwo!31939 lt!2277097) (ite c!1007890 (reg!16042 lt!2277097) (ite c!1007891 (regTwo!31938 lt!2277097) (regOne!31938 lt!2277097)))) (head!12105 lt!2277096)))))

(declare-fun bm!436461 () Bool)

(declare-fun call!436465 () Regex!15713)

(assert (=> bm!436461 (= call!436465 call!436467)))

(declare-fun bm!436462 () Bool)

(assert (=> bm!436462 (= call!436464 call!436465)))

(declare-fun b!5716726 () Bool)

(declare-fun e!3515667 () Regex!15713)

(assert (=> b!5716726 (= e!3515667 (Concat!24558 call!436465 lt!2277097))))

(declare-fun b!5716720 () Bool)

(assert (=> b!5716720 (= e!3515668 e!3515664)))

(declare-fun c!1007888 () Bool)

(assert (=> b!5716720 (= c!1007888 ((_ is ElementMatch!15713) lt!2277097))))

(declare-fun d!1803246 () Bool)

(declare-fun lt!2277437 () Regex!15713)

(assert (=> d!1803246 (validRegex!7449 lt!2277437)))

(assert (=> d!1803246 (= lt!2277437 e!3515668)))

(declare-fun c!1007889 () Bool)

(assert (=> d!1803246 (= c!1007889 (or ((_ is EmptyExpr!15713) lt!2277097) ((_ is EmptyLang!15713) lt!2277097)))))

(assert (=> d!1803246 (validRegex!7449 lt!2277097)))

(assert (=> d!1803246 (= (derivativeStep!4516 lt!2277097 (head!12105 lt!2277096)) lt!2277437)))

(declare-fun b!5716727 () Bool)

(assert (=> b!5716727 (= c!1007891 (nullable!5745 (regOne!31938 lt!2277097)))))

(assert (=> b!5716727 (= e!3515667 e!3515666)))

(declare-fun b!5716728 () Bool)

(assert (=> b!5716728 (= e!3515665 e!3515667)))

(assert (=> b!5716728 (= c!1007890 ((_ is Star!15713) lt!2277097))))

(assert (= (and d!1803246 c!1007889) b!5716721))

(assert (= (and d!1803246 (not c!1007889)) b!5716720))

(assert (= (and b!5716720 c!1007888) b!5716722))

(assert (= (and b!5716720 (not c!1007888)) b!5716725))

(assert (= (and b!5716725 c!1007887) b!5716723))

(assert (= (and b!5716725 (not c!1007887)) b!5716728))

(assert (= (and b!5716728 c!1007890) b!5716726))

(assert (= (and b!5716728 (not c!1007890)) b!5716727))

(assert (= (and b!5716727 c!1007891) b!5716724))

(assert (= (and b!5716727 (not c!1007891)) b!5716719))

(assert (= (or b!5716724 b!5716719) bm!436462))

(assert (= (or b!5716726 bm!436462) bm!436461))

(assert (= (or b!5716723 bm!436461) bm!436460))

(assert (= (or b!5716723 b!5716724) bm!436459))

(assert (=> bm!436459 m!6669034))

(declare-fun m!6670390 () Bool)

(assert (=> bm!436459 m!6670390))

(assert (=> bm!436460 m!6669034))

(declare-fun m!6670392 () Bool)

(assert (=> bm!436460 m!6670392))

(declare-fun m!6670394 () Bool)

(assert (=> d!1803246 m!6670394))

(assert (=> d!1803246 m!6668140))

(assert (=> b!5716727 m!6669362))

(assert (=> b!5715484 d!1803246))

(assert (=> b!5715484 d!1803072))

(assert (=> b!5715484 d!1802758))

(assert (=> bm!436279 d!1803008))

(assert (=> b!5714795 d!1802960))

(assert (=> b!5714795 d!1802962))

(declare-fun d!1803248 () Bool)

(assert (=> d!1803248 true))

(assert (=> d!1803248 true))

(declare-fun res!2413799 () Bool)

(assert (=> d!1803248 (= (choose!43215 lambda!308686) res!2413799)))

(assert (=> d!1802710 d!1803248))

(declare-fun d!1803250 () Bool)

(assert (=> d!1803250 (= (Exists!2813 (ite c!1007580 lambda!308784 lambda!308785)) (choose!43215 (ite c!1007580 lambda!308784 lambda!308785)))))

(declare-fun bs!1335939 () Bool)

(assert (= bs!1335939 d!1803250))

(declare-fun m!6670396 () Bool)

(assert (=> bs!1335939 m!6670396))

(assert (=> bm!436278 d!1803250))

(assert (=> b!5715441 d!1802742))

(declare-fun b!5716730 () Bool)

(declare-fun e!3515671 () Bool)

(assert (=> b!5716730 (= e!3515671 (nullable!5745 (regOne!31938 (h!69763 (exprs!5597 lt!2277119)))))))

(declare-fun bm!436463 () Bool)

(declare-fun call!436471 () List!63439)

(declare-fun call!436468 () List!63439)

(assert (=> bm!436463 (= call!436471 call!436468)))

(declare-fun b!5716731 () Bool)

(declare-fun e!3515669 () (InoxSet Context!10194))

(declare-fun call!436470 () (InoxSet Context!10194))

(assert (=> b!5716731 (= e!3515669 call!436470)))

(declare-fun b!5716732 () Bool)

(declare-fun e!3515674 () (InoxSet Context!10194))

(assert (=> b!5716732 (= e!3515674 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716733 () Bool)

(declare-fun e!3515673 () (InoxSet Context!10194))

(declare-fun call!436469 () (InoxSet Context!10194))

(declare-fun call!436473 () (InoxSet Context!10194))

(assert (=> b!5716733 (= e!3515673 ((_ map or) call!436469 call!436473))))

(declare-fun bm!436464 () Bool)

(declare-fun call!436472 () (InoxSet Context!10194))

(assert (=> bm!436464 (= call!436472 call!436473)))

(declare-fun b!5716734 () Bool)

(declare-fun c!1007893 () Bool)

(assert (=> b!5716734 (= c!1007893 ((_ is Star!15713) (h!69763 (exprs!5597 lt!2277119))))))

(assert (=> b!5716734 (= e!3515669 e!3515674)))

(declare-fun bm!436465 () Bool)

(declare-fun c!1007892 () Bool)

(assert (=> bm!436465 (= call!436469 (derivationStepZipperDown!1055 (ite c!1007892 (regOne!31939 (h!69763 (exprs!5597 lt!2277119))) (regOne!31938 (h!69763 (exprs!5597 lt!2277119)))) (ite c!1007892 (Context!10195 (t!376759 (exprs!5597 lt!2277119))) (Context!10195 call!436468)) (h!69762 s!2326)))))

(declare-fun bm!436466 () Bool)

(declare-fun c!1007895 () Bool)

(declare-fun c!1007894 () Bool)

(assert (=> bm!436466 (= call!436473 (derivationStepZipperDown!1055 (ite c!1007892 (regTwo!31939 (h!69763 (exprs!5597 lt!2277119))) (ite c!1007894 (regTwo!31938 (h!69763 (exprs!5597 lt!2277119))) (ite c!1007895 (regOne!31938 (h!69763 (exprs!5597 lt!2277119))) (reg!16042 (h!69763 (exprs!5597 lt!2277119)))))) (ite (or c!1007892 c!1007894) (Context!10195 (t!376759 (exprs!5597 lt!2277119))) (Context!10195 call!436471)) (h!69762 s!2326)))))

(declare-fun bm!436467 () Bool)

(assert (=> bm!436467 (= call!436470 call!436472)))

(declare-fun b!5716735 () Bool)

(declare-fun e!3515670 () (InoxSet Context!10194))

(assert (=> b!5716735 (= e!3515670 ((_ map or) call!436469 call!436472))))

(declare-fun b!5716736 () Bool)

(assert (=> b!5716736 (= e!3515670 e!3515669)))

(assert (=> b!5716736 (= c!1007895 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277119))))))

(declare-fun d!1803252 () Bool)

(declare-fun c!1007896 () Bool)

(assert (=> d!1803252 (= c!1007896 (and ((_ is ElementMatch!15713) (h!69763 (exprs!5597 lt!2277119))) (= (c!1007275 (h!69763 (exprs!5597 lt!2277119))) (h!69762 s!2326))))))

(declare-fun e!3515672 () (InoxSet Context!10194))

(assert (=> d!1803252 (= (derivationStepZipperDown!1055 (h!69763 (exprs!5597 lt!2277119)) (Context!10195 (t!376759 (exprs!5597 lt!2277119))) (h!69762 s!2326)) e!3515672)))

(declare-fun b!5716729 () Bool)

(assert (=> b!5716729 (= e!3515672 e!3515673)))

(assert (=> b!5716729 (= c!1007892 ((_ is Union!15713) (h!69763 (exprs!5597 lt!2277119))))))

(declare-fun b!5716737 () Bool)

(assert (=> b!5716737 (= e!3515672 (store ((as const (Array Context!10194 Bool)) false) (Context!10195 (t!376759 (exprs!5597 lt!2277119))) true))))

(declare-fun b!5716738 () Bool)

(assert (=> b!5716738 (= c!1007894 e!3515671)))

(declare-fun res!2413800 () Bool)

(assert (=> b!5716738 (=> (not res!2413800) (not e!3515671))))

(assert (=> b!5716738 (= res!2413800 ((_ is Concat!24558) (h!69763 (exprs!5597 lt!2277119))))))

(assert (=> b!5716738 (= e!3515673 e!3515670)))

(declare-fun bm!436468 () Bool)

(assert (=> bm!436468 (= call!436468 ($colon$colon!1729 (exprs!5597 (Context!10195 (t!376759 (exprs!5597 lt!2277119)))) (ite (or c!1007894 c!1007895) (regTwo!31938 (h!69763 (exprs!5597 lt!2277119))) (h!69763 (exprs!5597 lt!2277119)))))))

(declare-fun b!5716739 () Bool)

(assert (=> b!5716739 (= e!3515674 call!436470)))

(assert (= (and d!1803252 c!1007896) b!5716737))

(assert (= (and d!1803252 (not c!1007896)) b!5716729))

(assert (= (and b!5716729 c!1007892) b!5716733))

(assert (= (and b!5716729 (not c!1007892)) b!5716738))

(assert (= (and b!5716738 res!2413800) b!5716730))

(assert (= (and b!5716738 c!1007894) b!5716735))

(assert (= (and b!5716738 (not c!1007894)) b!5716736))

(assert (= (and b!5716736 c!1007895) b!5716731))

(assert (= (and b!5716736 (not c!1007895)) b!5716734))

(assert (= (and b!5716734 c!1007893) b!5716739))

(assert (= (and b!5716734 (not c!1007893)) b!5716732))

(assert (= (or b!5716731 b!5716739) bm!436463))

(assert (= (or b!5716731 b!5716739) bm!436467))

(assert (= (or b!5716735 bm!436463) bm!436468))

(assert (= (or b!5716735 bm!436467) bm!436464))

(assert (= (or b!5716733 bm!436464) bm!436466))

(assert (= (or b!5716733 b!5716735) bm!436465))

(declare-fun m!6670398 () Bool)

(assert (=> b!5716730 m!6670398))

(declare-fun m!6670400 () Bool)

(assert (=> bm!436466 m!6670400))

(declare-fun m!6670402 () Bool)

(assert (=> b!5716737 m!6670402))

(declare-fun m!6670404 () Bool)

(assert (=> bm!436468 m!6670404))

(declare-fun m!6670406 () Bool)

(assert (=> bm!436465 m!6670406))

(assert (=> bm!436194 d!1803252))

(declare-fun d!1803254 () Bool)

(assert (=> d!1803254 (= (isEmptyLang!1232 lt!2277339) ((_ is EmptyLang!15713) lt!2277339))))

(assert (=> b!5715601 d!1803254))

(declare-fun d!1803256 () Bool)

(assert (=> d!1803256 (= ($colon$colon!1729 (exprs!5597 lt!2277104) (ite (or c!1007444 c!1007445) (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (h!69763 (exprs!5597 (h!69764 zl!343))))) (Cons!63315 (ite (or c!1007444 c!1007445) (regTwo!31938 (h!69763 (exprs!5597 (h!69764 zl!343)))) (h!69763 (exprs!5597 (h!69764 zl!343)))) (exprs!5597 lt!2277104)))))

(assert (=> bm!436228 d!1803256))

(declare-fun d!1803258 () Bool)

(declare-fun c!1007897 () Bool)

(assert (=> d!1803258 (= c!1007897 ((_ is Nil!63314) lt!2277279))))

(declare-fun e!3515675 () (InoxSet C!31696))

(assert (=> d!1803258 (= (content!11499 lt!2277279) e!3515675)))

(declare-fun b!5716740 () Bool)

(assert (=> b!5716740 (= e!3515675 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716741 () Bool)

(assert (=> b!5716741 (= e!3515675 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 lt!2277279) true) (content!11499 (t!376758 lt!2277279))))))

(assert (= (and d!1803258 c!1007897) b!5716740))

(assert (= (and d!1803258 (not c!1007897)) b!5716741))

(declare-fun m!6670408 () Bool)

(assert (=> b!5716741 m!6670408))

(declare-fun m!6670410 () Bool)

(assert (=> b!5716741 m!6670410))

(assert (=> d!1802536 d!1803258))

(assert (=> d!1802536 d!1802952))

(declare-fun d!1803260 () Bool)

(declare-fun c!1007898 () Bool)

(assert (=> d!1803260 (= c!1007898 ((_ is Nil!63314) lt!2277140))))

(declare-fun e!3515676 () (InoxSet C!31696))

(assert (=> d!1803260 (= (content!11499 lt!2277140) e!3515676)))

(declare-fun b!5716742 () Bool)

(assert (=> b!5716742 (= e!3515676 ((as const (Array C!31696 Bool)) false))))

(declare-fun b!5716743 () Bool)

(assert (=> b!5716743 (= e!3515676 ((_ map or) (store ((as const (Array C!31696 Bool)) false) (h!69762 lt!2277140) true) (content!11499 (t!376758 lt!2277140))))))

(assert (= (and d!1803260 c!1007898) b!5716742))

(assert (= (and d!1803260 (not c!1007898)) b!5716743))

(declare-fun m!6670412 () Bool)

(assert (=> b!5716743 m!6670412))

(declare-fun m!6670414 () Bool)

(assert (=> b!5716743 m!6670414))

(assert (=> d!1802536 d!1803260))

(declare-fun b!5716746 () Bool)

(declare-fun res!2413801 () Bool)

(declare-fun e!3515677 () Bool)

(assert (=> b!5716746 (=> (not res!2413801) (not e!3515677))))

(declare-fun lt!2277438 () List!63439)

(assert (=> b!5716746 (= res!2413801 (= (size!40025 lt!2277438) (+ (size!40025 (t!376759 lt!2277136)) (size!40025 lt!2277109))))))

(declare-fun b!5716747 () Bool)

(assert (=> b!5716747 (= e!3515677 (or (not (= lt!2277109 Nil!63315)) (= lt!2277438 (t!376759 lt!2277136))))))

(declare-fun d!1803262 () Bool)

(assert (=> d!1803262 e!3515677))

(declare-fun res!2413802 () Bool)

(assert (=> d!1803262 (=> (not res!2413802) (not e!3515677))))

(assert (=> d!1803262 (= res!2413802 (= (content!11502 lt!2277438) ((_ map or) (content!11502 (t!376759 lt!2277136)) (content!11502 lt!2277109))))))

(declare-fun e!3515678 () List!63439)

(assert (=> d!1803262 (= lt!2277438 e!3515678)))

(declare-fun c!1007899 () Bool)

(assert (=> d!1803262 (= c!1007899 ((_ is Nil!63315) (t!376759 lt!2277136)))))

(assert (=> d!1803262 (= (++!13909 (t!376759 lt!2277136) lt!2277109) lt!2277438)))

(declare-fun b!5716744 () Bool)

(assert (=> b!5716744 (= e!3515678 lt!2277109)))

(declare-fun b!5716745 () Bool)

(assert (=> b!5716745 (= e!3515678 (Cons!63315 (h!69763 (t!376759 lt!2277136)) (++!13909 (t!376759 (t!376759 lt!2277136)) lt!2277109)))))

(assert (= (and d!1803262 c!1007899) b!5716744))

(assert (= (and d!1803262 (not c!1007899)) b!5716745))

(assert (= (and d!1803262 res!2413802) b!5716746))

(assert (= (and b!5716746 res!2413801) b!5716747))

(declare-fun m!6670416 () Bool)

(assert (=> b!5716746 m!6670416))

(assert (=> b!5716746 m!6670220))

(assert (=> b!5716746 m!6668966))

(declare-fun m!6670418 () Bool)

(assert (=> d!1803262 m!6670418))

(declare-fun m!6670420 () Bool)

(assert (=> d!1803262 m!6670420))

(assert (=> d!1803262 m!6668972))

(declare-fun m!6670422 () Bool)

(assert (=> b!5716745 m!6670422))

(assert (=> b!5715451 d!1803262))

(declare-fun d!1803264 () Bool)

(assert (=> d!1803264 (= (isEmpty!35188 (exprs!5597 (h!69764 zl!343))) ((_ is Nil!63315) (exprs!5597 (h!69764 zl!343))))))

(assert (=> b!5715566 d!1803264))

(assert (=> b!5715664 d!1803056))

(assert (=> b!5715664 d!1802902))

(declare-fun bm!436469 () Bool)

(declare-fun call!436476 () Bool)

(declare-fun call!436475 () Bool)

(assert (=> bm!436469 (= call!436476 call!436475)))

(declare-fun b!5716748 () Bool)

(declare-fun res!2413804 () Bool)

(declare-fun e!3515684 () Bool)

(assert (=> b!5716748 (=> res!2413804 e!3515684)))

(assert (=> b!5716748 (= res!2413804 (not ((_ is Concat!24558) lt!2277336)))))

(declare-fun e!3515685 () Bool)

(assert (=> b!5716748 (= e!3515685 e!3515684)))

(declare-fun b!5716749 () Bool)

(declare-fun e!3515679 () Bool)

(assert (=> b!5716749 (= e!3515684 e!3515679)))

(declare-fun res!2413807 () Bool)

(assert (=> b!5716749 (=> (not res!2413807) (not e!3515679))))

(declare-fun call!436474 () Bool)

(assert (=> b!5716749 (= res!2413807 call!436474)))

(declare-fun b!5716750 () Bool)

(declare-fun res!2413803 () Bool)

(declare-fun e!3515683 () Bool)

(assert (=> b!5716750 (=> (not res!2413803) (not e!3515683))))

(assert (=> b!5716750 (= res!2413803 call!436474)))

(assert (=> b!5716750 (= e!3515685 e!3515683)))

(declare-fun b!5716751 () Bool)

(declare-fun e!3515682 () Bool)

(assert (=> b!5716751 (= e!3515682 call!436475)))

(declare-fun b!5716752 () Bool)

(assert (=> b!5716752 (= e!3515679 call!436476)))

(declare-fun b!5716753 () Bool)

(assert (=> b!5716753 (= e!3515683 call!436476)))

(declare-fun d!1803266 () Bool)

(declare-fun res!2413806 () Bool)

(declare-fun e!3515680 () Bool)

(assert (=> d!1803266 (=> res!2413806 e!3515680)))

(assert (=> d!1803266 (= res!2413806 ((_ is ElementMatch!15713) lt!2277336))))

(assert (=> d!1803266 (= (validRegex!7449 lt!2277336) e!3515680)))

(declare-fun b!5716754 () Bool)

(declare-fun e!3515681 () Bool)

(assert (=> b!5716754 (= e!3515681 e!3515685)))

(declare-fun c!1007901 () Bool)

(assert (=> b!5716754 (= c!1007901 ((_ is Union!15713) lt!2277336))))

(declare-fun c!1007900 () Bool)

(declare-fun bm!436470 () Bool)

(assert (=> bm!436470 (= call!436475 (validRegex!7449 (ite c!1007900 (reg!16042 lt!2277336) (ite c!1007901 (regTwo!31939 lt!2277336) (regTwo!31938 lt!2277336)))))))

(declare-fun bm!436471 () Bool)

(assert (=> bm!436471 (= call!436474 (validRegex!7449 (ite c!1007901 (regOne!31939 lt!2277336) (regOne!31938 lt!2277336))))))

(declare-fun b!5716755 () Bool)

(assert (=> b!5716755 (= e!3515681 e!3515682)))

(declare-fun res!2413805 () Bool)

(assert (=> b!5716755 (= res!2413805 (not (nullable!5745 (reg!16042 lt!2277336))))))

(assert (=> b!5716755 (=> (not res!2413805) (not e!3515682))))

(declare-fun b!5716756 () Bool)

(assert (=> b!5716756 (= e!3515680 e!3515681)))

(assert (=> b!5716756 (= c!1007900 ((_ is Star!15713) lt!2277336))))

(assert (= (and d!1803266 (not res!2413806)) b!5716756))

(assert (= (and b!5716756 c!1007900) b!5716755))

(assert (= (and b!5716756 (not c!1007900)) b!5716754))

(assert (= (and b!5716755 res!2413805) b!5716751))

(assert (= (and b!5716754 c!1007901) b!5716750))

(assert (= (and b!5716754 (not c!1007901)) b!5716748))

(assert (= (and b!5716750 res!2413803) b!5716753))

(assert (= (and b!5716748 (not res!2413804)) b!5716749))

(assert (= (and b!5716749 res!2413807) b!5716752))

(assert (= (or b!5716753 b!5716752) bm!436469))

(assert (= (or b!5716750 b!5716749) bm!436471))

(assert (= (or b!5716751 bm!436469) bm!436470))

(declare-fun m!6670424 () Bool)

(assert (=> bm!436470 m!6670424))

(declare-fun m!6670426 () Bool)

(assert (=> bm!436471 m!6670426))

(declare-fun m!6670428 () Bool)

(assert (=> b!5716755 m!6670428))

(assert (=> d!1802678 d!1803266))

(declare-fun d!1803268 () Bool)

(declare-fun res!2413808 () Bool)

(declare-fun e!3515686 () Bool)

(assert (=> d!1803268 (=> res!2413808 e!3515686)))

(assert (=> d!1803268 (= res!2413808 ((_ is Nil!63315) (exprs!5597 (h!69764 zl!343))))))

(assert (=> d!1803268 (= (forall!14848 (exprs!5597 (h!69764 zl!343)) lambda!308770) e!3515686)))

(declare-fun b!5716757 () Bool)

(declare-fun e!3515687 () Bool)

(assert (=> b!5716757 (= e!3515686 e!3515687)))

(declare-fun res!2413809 () Bool)

(assert (=> b!5716757 (=> (not res!2413809) (not e!3515687))))

(assert (=> b!5716757 (= res!2413809 (dynLambda!24773 lambda!308770 (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun b!5716758 () Bool)

(assert (=> b!5716758 (= e!3515687 (forall!14848 (t!376759 (exprs!5597 (h!69764 zl!343))) lambda!308770))))

(assert (= (and d!1803268 (not res!2413808)) b!5716757))

(assert (= (and b!5716757 res!2413809) b!5716758))

(declare-fun b_lambda!215991 () Bool)

(assert (=> (not b_lambda!215991) (not b!5716757)))

(declare-fun m!6670430 () Bool)

(assert (=> b!5716757 m!6670430))

(declare-fun m!6670432 () Bool)

(assert (=> b!5716758 m!6670432))

(assert (=> d!1802678 d!1803268))

(declare-fun d!1803270 () Bool)

(declare-fun c!1007902 () Bool)

(assert (=> d!1803270 (= c!1007902 (isEmpty!35186 (tail!11200 lt!2277140)))))

(declare-fun e!3515688 () Bool)

(assert (=> d!1803270 (= (matchZipper!1851 (derivationStepZipper!1796 lt!2277134 (head!12105 lt!2277140)) (tail!11200 lt!2277140)) e!3515688)))

(declare-fun b!5716759 () Bool)

(assert (=> b!5716759 (= e!3515688 (nullableZipper!1663 (derivationStepZipper!1796 lt!2277134 (head!12105 lt!2277140))))))

(declare-fun b!5716760 () Bool)

(assert (=> b!5716760 (= e!3515688 (matchZipper!1851 (derivationStepZipper!1796 (derivationStepZipper!1796 lt!2277134 (head!12105 lt!2277140)) (head!12105 (tail!11200 lt!2277140))) (tail!11200 (tail!11200 lt!2277140))))))

(assert (= (and d!1803270 c!1007902) b!5716759))

(assert (= (and d!1803270 (not c!1007902)) b!5716760))

(assert (=> d!1803270 m!6668986))

(assert (=> d!1803270 m!6668990))

(assert (=> b!5716759 m!6669028))

(declare-fun m!6670434 () Bool)

(assert (=> b!5716759 m!6670434))

(assert (=> b!5716760 m!6668986))

(assert (=> b!5716760 m!6669304))

(assert (=> b!5716760 m!6669028))

(assert (=> b!5716760 m!6669304))

(declare-fun m!6670436 () Bool)

(assert (=> b!5716760 m!6670436))

(assert (=> b!5716760 m!6668986))

(assert (=> b!5716760 m!6669308))

(assert (=> b!5716760 m!6670436))

(assert (=> b!5716760 m!6669308))

(declare-fun m!6670438 () Bool)

(assert (=> b!5716760 m!6670438))

(assert (=> b!5715477 d!1803270))

(declare-fun bs!1335940 () Bool)

(declare-fun d!1803272 () Bool)

(assert (= bs!1335940 (and d!1803272 b!5714534)))

(declare-fun lambda!308852 () Int)

(assert (=> bs!1335940 (= (= (head!12105 lt!2277140) (h!69762 s!2326)) (= lambda!308852 lambda!308681))))

(declare-fun bs!1335941 () Bool)

(assert (= bs!1335941 (and d!1803272 d!1803146)))

(assert (=> bs!1335941 (= (= (head!12105 lt!2277140) (head!12105 s!2326)) (= lambda!308852 lambda!308838))))

(declare-fun bs!1335942 () Bool)

(assert (= bs!1335942 (and d!1803272 d!1802862)))

(assert (=> bs!1335942 (= (= (head!12105 lt!2277140) (head!12105 (t!376758 s!2326))) (= lambda!308852 lambda!308803))))

(declare-fun bs!1335943 () Bool)

(assert (= bs!1335943 (and d!1803272 d!1803116)))

(assert (=> bs!1335943 (= (= (head!12105 lt!2277140) (head!12105 (t!376758 s!2326))) (= lambda!308852 lambda!308835))))

(declare-fun bs!1335944 () Bool)

(assert (= bs!1335944 (and d!1803272 d!1802740)))

(assert (=> bs!1335944 (= (= (head!12105 lt!2277140) (head!12105 lt!2277105)) (= lambda!308852 lambda!308788))))

(declare-fun bs!1335945 () Bool)

(assert (= bs!1335945 (and d!1803272 d!1802816)))

(assert (=> bs!1335945 (= (= (head!12105 lt!2277140) (head!12105 (t!376758 s!2326))) (= lambda!308852 lambda!308800))))

(declare-fun bs!1335946 () Bool)

(assert (= bs!1335946 (and d!1803272 d!1802898)))

(assert (=> bs!1335946 (= (= (head!12105 lt!2277140) (head!12105 (_1!36113 lt!2277144))) (= lambda!308852 lambda!308807))))

(declare-fun bs!1335947 () Bool)

(assert (= bs!1335947 (and d!1803272 d!1802892)))

(assert (=> bs!1335947 (= (= (head!12105 lt!2277140) (head!12105 (t!376758 s!2326))) (= lambda!308852 lambda!308806))))

(declare-fun bs!1335948 () Bool)

(assert (= bs!1335948 (and d!1803272 d!1803000)))

(assert (=> bs!1335948 (= (= (head!12105 lt!2277140) (head!12105 lt!2277105)) (= lambda!308852 lambda!308819))))

(declare-fun bs!1335949 () Bool)

(assert (= bs!1335949 (and d!1803272 d!1802600)))

(assert (=> bs!1335949 (= (= (head!12105 lt!2277140) (h!69762 s!2326)) (= lambda!308852 lambda!308755))))

(assert (=> d!1803272 true))

(assert (=> d!1803272 (= (derivationStepZipper!1796 lt!2277134 (head!12105 lt!2277140)) (flatMap!1326 lt!2277134 lambda!308852))))

(declare-fun bs!1335950 () Bool)

(assert (= bs!1335950 d!1803272))

(declare-fun m!6670440 () Bool)

(assert (=> bs!1335950 m!6670440))

(assert (=> b!5715477 d!1803272))

(assert (=> b!5715477 d!1802766))

(assert (=> b!5715477 d!1802768))

(declare-fun d!1803274 () Bool)

(assert (=> d!1803274 true))

(declare-fun setRes!38291 () Bool)

(assert (=> d!1803274 setRes!38291))

(declare-fun condSetEmpty!38291 () Bool)

(declare-fun res!2413810 () (InoxSet Context!10194))

(assert (=> d!1803274 (= condSetEmpty!38291 (= res!2413810 ((as const (Array Context!10194 Bool)) false)))))

(assert (=> d!1803274 (= (choose!43218 lt!2277101 lambda!308681) res!2413810)))

(declare-fun setIsEmpty!38291 () Bool)

(assert (=> setIsEmpty!38291 setRes!38291))

(declare-fun setElem!38291 () Context!10194)

(declare-fun setNonEmpty!38291 () Bool)

(declare-fun e!3515689 () Bool)

(declare-fun tp!1583548 () Bool)

(assert (=> setNonEmpty!38291 (= setRes!38291 (and tp!1583548 (inv!82529 setElem!38291) e!3515689))))

(declare-fun setRest!38291 () (InoxSet Context!10194))

(assert (=> setNonEmpty!38291 (= res!2413810 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) setElem!38291 true) setRest!38291))))

(declare-fun b!5716761 () Bool)

(declare-fun tp!1583547 () Bool)

(assert (=> b!5716761 (= e!3515689 tp!1583547)))

(assert (= (and d!1803274 condSetEmpty!38291) setIsEmpty!38291))

(assert (= (and d!1803274 (not condSetEmpty!38291)) setNonEmpty!38291))

(assert (= setNonEmpty!38291 b!5716761))

(declare-fun m!6670442 () Bool)

(assert (=> setNonEmpty!38291 m!6670442))

(assert (=> d!1802590 d!1803274))

(declare-fun b!5716762 () Bool)

(declare-fun e!3515690 () List!63438)

(assert (=> b!5716762 (= e!3515690 (t!376758 (_1!36113 lt!2277139)))))

(declare-fun b!5716765 () Bool)

(declare-fun e!3515691 () Bool)

(declare-fun lt!2277439 () List!63438)

(assert (=> b!5716765 (= e!3515691 (or (not (= (t!376758 (_1!36113 lt!2277139)) Nil!63314)) (= lt!2277439 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)))))))

(declare-fun b!5716764 () Bool)

(declare-fun res!2413811 () Bool)

(assert (=> b!5716764 (=> (not res!2413811) (not e!3515691))))

(assert (=> b!5716764 (= res!2413811 (= (size!40024 lt!2277439) (+ (size!40024 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))) (size!40024 (t!376758 (_1!36113 lt!2277139))))))))

(declare-fun b!5716763 () Bool)

(assert (=> b!5716763 (= e!3515690 (Cons!63314 (h!69762 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))) (++!13908 (t!376758 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))) (t!376758 (_1!36113 lt!2277139)))))))

(declare-fun d!1803276 () Bool)

(assert (=> d!1803276 e!3515691))

(declare-fun res!2413812 () Bool)

(assert (=> d!1803276 (=> (not res!2413812) (not e!3515691))))

(assert (=> d!1803276 (= res!2413812 (= (content!11499 lt!2277439) ((_ map or) (content!11499 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))) (content!11499 (t!376758 (_1!36113 lt!2277139))))))))

(assert (=> d!1803276 (= lt!2277439 e!3515690)))

(declare-fun c!1007903 () Bool)

(assert (=> d!1803276 (= c!1007903 ((_ is Nil!63314) (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))))))

(assert (=> d!1803276 (= (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (t!376758 (_1!36113 lt!2277139))) lt!2277439)))

(assert (= (and d!1803276 c!1007903) b!5716762))

(assert (= (and d!1803276 (not c!1007903)) b!5716763))

(assert (= (and d!1803276 res!2413812) b!5716764))

(assert (= (and b!5716764 res!2413811) b!5716765))

(declare-fun m!6670444 () Bool)

(assert (=> b!5716764 m!6670444))

(assert (=> b!5716764 m!6669240))

(declare-fun m!6670446 () Bool)

(assert (=> b!5716764 m!6670446))

(assert (=> b!5716764 m!6669950))

(declare-fun m!6670448 () Bool)

(assert (=> b!5716763 m!6670448))

(declare-fun m!6670450 () Bool)

(assert (=> d!1803276 m!6670450))

(assert (=> d!1803276 m!6669240))

(declare-fun m!6670452 () Bool)

(assert (=> d!1803276 m!6670452))

(assert (=> d!1803276 m!6670046))

(assert (=> b!5715663 d!1803276))

(declare-fun b!5716766 () Bool)

(declare-fun e!3515692 () List!63438)

(assert (=> b!5716766 (= e!3515692 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))))

(declare-fun b!5716769 () Bool)

(declare-fun e!3515693 () Bool)

(declare-fun lt!2277440 () List!63438)

(assert (=> b!5716769 (= e!3515693 (or (not (= (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314) Nil!63314)) (= lt!2277440 Nil!63314)))))

(declare-fun b!5716768 () Bool)

(declare-fun res!2413813 () Bool)

(assert (=> b!5716768 (=> (not res!2413813) (not e!3515693))))

(assert (=> b!5716768 (= res!2413813 (= (size!40024 lt!2277440) (+ (size!40024 Nil!63314) (size!40024 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)))))))

(declare-fun b!5716767 () Bool)

(assert (=> b!5716767 (= e!3515692 (Cons!63314 (h!69762 Nil!63314) (++!13908 (t!376758 Nil!63314) (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))))))

(declare-fun d!1803278 () Bool)

(assert (=> d!1803278 e!3515693))

(declare-fun res!2413814 () Bool)

(assert (=> d!1803278 (=> (not res!2413814) (not e!3515693))))

(assert (=> d!1803278 (= res!2413814 (= (content!11499 lt!2277440) ((_ map or) (content!11499 Nil!63314) (content!11499 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)))))))

(assert (=> d!1803278 (= lt!2277440 e!3515692)))

(declare-fun c!1007904 () Bool)

(assert (=> d!1803278 (= c!1007904 ((_ is Nil!63314) Nil!63314))))

(assert (=> d!1803278 (= (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) lt!2277440)))

(assert (= (and d!1803278 c!1007904) b!5716766))

(assert (= (and d!1803278 (not c!1007904)) b!5716767))

(assert (= (and d!1803278 res!2413814) b!5716768))

(assert (= (and b!5716768 res!2413813) b!5716769))

(declare-fun m!6670454 () Bool)

(assert (=> b!5716768 m!6670454))

(assert (=> b!5716768 m!6669576))

(declare-fun m!6670456 () Bool)

(assert (=> b!5716768 m!6670456))

(declare-fun m!6670458 () Bool)

(assert (=> b!5716767 m!6670458))

(declare-fun m!6670460 () Bool)

(assert (=> d!1803278 m!6670460))

(assert (=> d!1803278 m!6669584))

(declare-fun m!6670462 () Bool)

(assert (=> d!1803278 m!6670462))

(assert (=> b!5715663 d!1803278))

(declare-fun d!1803280 () Bool)

(assert (=> d!1803280 (= (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (t!376758 (_1!36113 lt!2277139))) (_1!36113 lt!2277139))))

(declare-fun lt!2277441 () Unit!156384)

(assert (=> d!1803280 (= lt!2277441 (choose!43230 Nil!63314 (h!69762 (_1!36113 lt!2277139)) (t!376758 (_1!36113 lt!2277139)) (_1!36113 lt!2277139)))))

(assert (=> d!1803280 (= (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) (t!376758 (_1!36113 lt!2277139)))) (_1!36113 lt!2277139))))

(assert (=> d!1803280 (= (lemmaMoveElementToOtherListKeepsConcatEq!2066 Nil!63314 (h!69762 (_1!36113 lt!2277139)) (t!376758 (_1!36113 lt!2277139)) (_1!36113 lt!2277139)) lt!2277441)))

(declare-fun bs!1335951 () Bool)

(assert (= bs!1335951 d!1803280))

(assert (=> bs!1335951 m!6669240))

(assert (=> bs!1335951 m!6669240))

(assert (=> bs!1335951 m!6669242))

(declare-fun m!6670464 () Bool)

(assert (=> bs!1335951 m!6670464))

(declare-fun m!6670466 () Bool)

(assert (=> bs!1335951 m!6670466))

(assert (=> b!5715663 d!1803280))

(declare-fun d!1803282 () Bool)

(declare-fun e!3515698 () Bool)

(assert (=> d!1803282 e!3515698))

(declare-fun res!2413815 () Bool)

(assert (=> d!1803282 (=> res!2413815 e!3515698)))

(declare-fun e!3515694 () Bool)

(assert (=> d!1803282 (= res!2413815 e!3515694)))

(declare-fun res!2413818 () Bool)

(assert (=> d!1803282 (=> (not res!2413818) (not e!3515694))))

(declare-fun lt!2277444 () Option!15722)

(assert (=> d!1803282 (= res!2413818 (isDefined!12425 lt!2277444))))

(declare-fun e!3515696 () Option!15722)

(assert (=> d!1803282 (= lt!2277444 e!3515696)))

(declare-fun c!1007906 () Bool)

(declare-fun e!3515695 () Bool)

(assert (=> d!1803282 (= c!1007906 e!3515695)))

(declare-fun res!2413816 () Bool)

(assert (=> d!1803282 (=> (not res!2413816) (not e!3515695))))

(assert (=> d!1803282 (= res!2413816 (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314))))))

(assert (=> d!1803282 (validRegex!7449 (reg!16042 (regOne!31938 r!7292)))))

(assert (=> d!1803282 (= (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (t!376758 (_1!36113 lt!2277139)) (_1!36113 lt!2277139)) lt!2277444)))

(declare-fun b!5716770 () Bool)

(assert (=> b!5716770 (= e!3515695 (matchR!7898 lt!2277097 (t!376758 (_1!36113 lt!2277139))))))

(declare-fun b!5716771 () Bool)

(assert (=> b!5716771 (= e!3515698 (not (isDefined!12425 lt!2277444)))))

(declare-fun b!5716772 () Bool)

(declare-fun e!3515697 () Option!15722)

(assert (=> b!5716772 (= e!3515697 None!15721)))

(declare-fun b!5716773 () Bool)

(declare-fun res!2413819 () Bool)

(assert (=> b!5716773 (=> (not res!2413819) (not e!3515694))))

(assert (=> b!5716773 (= res!2413819 (matchR!7898 (reg!16042 (regOne!31938 r!7292)) (_1!36113 (get!21829 lt!2277444))))))

(declare-fun b!5716774 () Bool)

(assert (=> b!5716774 (= e!3515696 e!3515697)))

(declare-fun c!1007905 () Bool)

(assert (=> b!5716774 (= c!1007905 ((_ is Nil!63314) (t!376758 (_1!36113 lt!2277139))))))

(declare-fun b!5716775 () Bool)

(assert (=> b!5716775 (= e!3515694 (= (++!13908 (_1!36113 (get!21829 lt!2277444)) (_2!36113 (get!21829 lt!2277444))) (_1!36113 lt!2277139)))))

(declare-fun b!5716776 () Bool)

(assert (=> b!5716776 (= e!3515696 (Some!15721 (tuple2!65621 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (t!376758 (_1!36113 lt!2277139)))))))

(declare-fun b!5716777 () Bool)

(declare-fun res!2413817 () Bool)

(assert (=> b!5716777 (=> (not res!2413817) (not e!3515694))))

(assert (=> b!5716777 (= res!2413817 (matchR!7898 lt!2277097 (_2!36113 (get!21829 lt!2277444))))))

(declare-fun b!5716778 () Bool)

(declare-fun lt!2277443 () Unit!156384)

(declare-fun lt!2277442 () Unit!156384)

(assert (=> b!5716778 (= lt!2277443 lt!2277442)))

(assert (=> b!5716778 (= (++!13908 (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (Cons!63314 (h!69762 (t!376758 (_1!36113 lt!2277139))) Nil!63314)) (t!376758 (t!376758 (_1!36113 lt!2277139)))) (_1!36113 lt!2277139))))

(assert (=> b!5716778 (= lt!2277442 (lemmaMoveElementToOtherListKeepsConcatEq!2066 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (h!69762 (t!376758 (_1!36113 lt!2277139))) (t!376758 (t!376758 (_1!36113 lt!2277139))) (_1!36113 lt!2277139)))))

(assert (=> b!5716778 (= e!3515697 (findConcatSeparation!2136 (reg!16042 (regOne!31938 r!7292)) lt!2277097 (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 (_1!36113 lt!2277139)) Nil!63314)) (Cons!63314 (h!69762 (t!376758 (_1!36113 lt!2277139))) Nil!63314)) (t!376758 (t!376758 (_1!36113 lt!2277139))) (_1!36113 lt!2277139)))))

(assert (= (and d!1803282 res!2413816) b!5716770))

(assert (= (and d!1803282 c!1007906) b!5716776))

(assert (= (and d!1803282 (not c!1007906)) b!5716774))

(assert (= (and b!5716774 c!1007905) b!5716772))

(assert (= (and b!5716774 (not c!1007905)) b!5716778))

(assert (= (and d!1803282 res!2413818) b!5716773))

(assert (= (and b!5716773 res!2413819) b!5716777))

(assert (= (and b!5716777 res!2413817) b!5716775))

(assert (= (and d!1803282 (not res!2413815)) b!5716771))

(declare-fun m!6670468 () Bool)

(assert (=> b!5716775 m!6670468))

(declare-fun m!6670470 () Bool)

(assert (=> b!5716775 m!6670470))

(assert (=> b!5716773 m!6670468))

(declare-fun m!6670472 () Bool)

(assert (=> b!5716773 m!6670472))

(assert (=> b!5716778 m!6669240))

(declare-fun m!6670474 () Bool)

(assert (=> b!5716778 m!6670474))

(assert (=> b!5716778 m!6670474))

(declare-fun m!6670476 () Bool)

(assert (=> b!5716778 m!6670476))

(assert (=> b!5716778 m!6669240))

(declare-fun m!6670478 () Bool)

(assert (=> b!5716778 m!6670478))

(assert (=> b!5716778 m!6670474))

(declare-fun m!6670480 () Bool)

(assert (=> b!5716778 m!6670480))

(assert (=> b!5716777 m!6670468))

(declare-fun m!6670482 () Bool)

(assert (=> b!5716777 m!6670482))

(declare-fun m!6670484 () Bool)

(assert (=> b!5716770 m!6670484))

(declare-fun m!6670486 () Bool)

(assert (=> d!1803282 m!6670486))

(assert (=> d!1803282 m!6669240))

(declare-fun m!6670488 () Bool)

(assert (=> d!1803282 m!6670488))

(assert (=> d!1803282 m!6668948))

(assert (=> b!5716771 m!6670486))

(assert (=> b!5715663 d!1803282))

(assert (=> b!5714835 d!1803118))

(assert (=> b!5714835 d!1802948))

(assert (=> bm!436267 d!1802852))

(declare-fun b!5716779 () Bool)

(declare-fun res!2413821 () Bool)

(declare-fun e!3515704 () Bool)

(assert (=> b!5716779 (=> (not res!2413821) (not e!3515704))))

(assert (=> b!5716779 (= res!2413821 (isEmpty!35186 (tail!11200 (tail!11200 s!2326))))))

(declare-fun b!5716780 () Bool)

(declare-fun res!2413824 () Bool)

(assert (=> b!5716780 (=> (not res!2413824) (not e!3515704))))

(declare-fun call!436477 () Bool)

(assert (=> b!5716780 (= res!2413824 (not call!436477))))

(declare-fun b!5716781 () Bool)

(declare-fun res!2413826 () Bool)

(declare-fun e!3515701 () Bool)

(assert (=> b!5716781 (=> res!2413826 e!3515701)))

(assert (=> b!5716781 (= res!2413826 e!3515704)))

(declare-fun res!2413825 () Bool)

(assert (=> b!5716781 (=> (not res!2413825) (not e!3515704))))

(declare-fun lt!2277445 () Bool)

(assert (=> b!5716781 (= res!2413825 lt!2277445)))

(declare-fun d!1803284 () Bool)

(declare-fun e!3515703 () Bool)

(assert (=> d!1803284 e!3515703))

(declare-fun c!1007909 () Bool)

(assert (=> d!1803284 (= c!1007909 ((_ is EmptyExpr!15713) (derivativeStep!4516 lt!2277132 (head!12105 s!2326))))))

(declare-fun e!3515702 () Bool)

(assert (=> d!1803284 (= lt!2277445 e!3515702)))

(declare-fun c!1007908 () Bool)

(assert (=> d!1803284 (= c!1007908 (isEmpty!35186 (tail!11200 s!2326)))))

(assert (=> d!1803284 (validRegex!7449 (derivativeStep!4516 lt!2277132 (head!12105 s!2326)))))

(assert (=> d!1803284 (= (matchR!7898 (derivativeStep!4516 lt!2277132 (head!12105 s!2326)) (tail!11200 s!2326)) lt!2277445)))

(declare-fun b!5716782 () Bool)

(declare-fun e!3515705 () Bool)

(declare-fun e!3515700 () Bool)

(assert (=> b!5716782 (= e!3515705 e!3515700)))

(declare-fun res!2413827 () Bool)

(assert (=> b!5716782 (=> res!2413827 e!3515700)))

(assert (=> b!5716782 (= res!2413827 call!436477)))

(declare-fun b!5716783 () Bool)

(assert (=> b!5716783 (= e!3515702 (nullable!5745 (derivativeStep!4516 lt!2277132 (head!12105 s!2326))))))

(declare-fun b!5716784 () Bool)

(declare-fun res!2413823 () Bool)

(assert (=> b!5716784 (=> res!2413823 e!3515701)))

(assert (=> b!5716784 (= res!2413823 (not ((_ is ElementMatch!15713) (derivativeStep!4516 lt!2277132 (head!12105 s!2326)))))))

(declare-fun e!3515699 () Bool)

(assert (=> b!5716784 (= e!3515699 e!3515701)))

(declare-fun b!5716785 () Bool)

(assert (=> b!5716785 (= e!3515702 (matchR!7898 (derivativeStep!4516 (derivativeStep!4516 lt!2277132 (head!12105 s!2326)) (head!12105 (tail!11200 s!2326))) (tail!11200 (tail!11200 s!2326))))))

(declare-fun b!5716786 () Bool)

(declare-fun res!2413820 () Bool)

(assert (=> b!5716786 (=> res!2413820 e!3515700)))

(assert (=> b!5716786 (= res!2413820 (not (isEmpty!35186 (tail!11200 (tail!11200 s!2326)))))))

(declare-fun bm!436472 () Bool)

(assert (=> bm!436472 (= call!436477 (isEmpty!35186 (tail!11200 s!2326)))))

(declare-fun b!5716787 () Bool)

(assert (=> b!5716787 (= e!3515703 e!3515699)))

(declare-fun c!1007907 () Bool)

(assert (=> b!5716787 (= c!1007907 ((_ is EmptyLang!15713) (derivativeStep!4516 lt!2277132 (head!12105 s!2326))))))

(declare-fun b!5716788 () Bool)

(assert (=> b!5716788 (= e!3515701 e!3515705)))

(declare-fun res!2413822 () Bool)

(assert (=> b!5716788 (=> (not res!2413822) (not e!3515705))))

(assert (=> b!5716788 (= res!2413822 (not lt!2277445))))

(declare-fun b!5716789 () Bool)

(assert (=> b!5716789 (= e!3515699 (not lt!2277445))))

(declare-fun b!5716790 () Bool)

(assert (=> b!5716790 (= e!3515704 (= (head!12105 (tail!11200 s!2326)) (c!1007275 (derivativeStep!4516 lt!2277132 (head!12105 s!2326)))))))

(declare-fun b!5716791 () Bool)

(assert (=> b!5716791 (= e!3515703 (= lt!2277445 call!436477))))

(declare-fun b!5716792 () Bool)

(assert (=> b!5716792 (= e!3515700 (not (= (head!12105 (tail!11200 s!2326)) (c!1007275 (derivativeStep!4516 lt!2277132 (head!12105 s!2326))))))))

(assert (= (and d!1803284 c!1007908) b!5716783))

(assert (= (and d!1803284 (not c!1007908)) b!5716785))

(assert (= (and d!1803284 c!1007909) b!5716791))

(assert (= (and d!1803284 (not c!1007909)) b!5716787))

(assert (= (and b!5716787 c!1007907) b!5716789))

(assert (= (and b!5716787 (not c!1007907)) b!5716784))

(assert (= (and b!5716784 (not res!2413823)) b!5716781))

(assert (= (and b!5716781 res!2413825) b!5716780))

(assert (= (and b!5716780 res!2413824) b!5716779))

(assert (= (and b!5716779 res!2413821) b!5716790))

(assert (= (and b!5716781 (not res!2413826)) b!5716788))

(assert (= (and b!5716788 res!2413822) b!5716782))

(assert (= (and b!5716782 (not res!2413827)) b!5716786))

(assert (= (and b!5716786 (not res!2413820)) b!5716792))

(assert (= (or b!5716791 b!5716780 b!5716782) bm!436472))

(assert (=> b!5716783 m!6668204))

(declare-fun m!6670490 () Bool)

(assert (=> b!5716783 m!6670490))

(assert (=> d!1803284 m!6668206))

(assert (=> d!1803284 m!6668210))

(assert (=> d!1803284 m!6668204))

(declare-fun m!6670492 () Bool)

(assert (=> d!1803284 m!6670492))

(assert (=> b!5716792 m!6668206))

(assert (=> b!5716792 m!6669874))

(assert (=> b!5716785 m!6668206))

(assert (=> b!5716785 m!6669874))

(assert (=> b!5716785 m!6668204))

(assert (=> b!5716785 m!6669874))

(declare-fun m!6670494 () Bool)

(assert (=> b!5716785 m!6670494))

(assert (=> b!5716785 m!6668206))

(assert (=> b!5716785 m!6669878))

(assert (=> b!5716785 m!6670494))

(assert (=> b!5716785 m!6669878))

(declare-fun m!6670496 () Bool)

(assert (=> b!5716785 m!6670496))

(assert (=> b!5716779 m!6668206))

(assert (=> b!5716779 m!6669878))

(assert (=> b!5716779 m!6669878))

(assert (=> b!5716779 m!6669882))

(assert (=> b!5716786 m!6668206))

(assert (=> b!5716786 m!6669878))

(assert (=> b!5716786 m!6669878))

(assert (=> b!5716786 m!6669882))

(assert (=> b!5716790 m!6668206))

(assert (=> b!5716790 m!6669874))

(assert (=> bm!436472 m!6668206))

(assert (=> bm!436472 m!6668210))

(assert (=> b!5714801 d!1803284))

(declare-fun call!436480 () Regex!15713)

(declare-fun c!1007910 () Bool)

(declare-fun bm!436473 () Bool)

(assert (=> bm!436473 (= call!436480 (derivativeStep!4516 (ite c!1007910 (regOne!31939 lt!2277132) (regOne!31938 lt!2277132)) (head!12105 s!2326)))))

(declare-fun b!5716793 () Bool)

(declare-fun e!3515708 () Regex!15713)

(declare-fun call!436478 () Regex!15713)

(assert (=> b!5716793 (= e!3515708 (Union!15713 (Concat!24558 call!436478 (regTwo!31938 lt!2277132)) EmptyLang!15713))))

(declare-fun b!5716795 () Bool)

(declare-fun e!3515710 () Regex!15713)

(assert (=> b!5716795 (= e!3515710 EmptyLang!15713)))

(declare-fun b!5716796 () Bool)

(declare-fun e!3515706 () Regex!15713)

(assert (=> b!5716796 (= e!3515706 (ite (= (head!12105 s!2326) (c!1007275 lt!2277132)) EmptyExpr!15713 EmptyLang!15713))))

(declare-fun b!5716797 () Bool)

(declare-fun e!3515707 () Regex!15713)

(declare-fun call!436481 () Regex!15713)

(assert (=> b!5716797 (= e!3515707 (Union!15713 call!436480 call!436481))))

(declare-fun b!5716798 () Bool)

(assert (=> b!5716798 (= e!3515708 (Union!15713 (Concat!24558 call!436480 (regTwo!31938 lt!2277132)) call!436478))))

(declare-fun b!5716799 () Bool)

(assert (=> b!5716799 (= c!1007910 ((_ is Union!15713) lt!2277132))))

(assert (=> b!5716799 (= e!3515706 e!3515707)))

(declare-fun c!1007914 () Bool)

(declare-fun c!1007913 () Bool)

(declare-fun bm!436474 () Bool)

(assert (=> bm!436474 (= call!436481 (derivativeStep!4516 (ite c!1007910 (regTwo!31939 lt!2277132) (ite c!1007913 (reg!16042 lt!2277132) (ite c!1007914 (regTwo!31938 lt!2277132) (regOne!31938 lt!2277132)))) (head!12105 s!2326)))))

(declare-fun bm!436475 () Bool)

(declare-fun call!436479 () Regex!15713)

(assert (=> bm!436475 (= call!436479 call!436481)))

(declare-fun bm!436476 () Bool)

(assert (=> bm!436476 (= call!436478 call!436479)))

(declare-fun b!5716800 () Bool)

(declare-fun e!3515709 () Regex!15713)

(assert (=> b!5716800 (= e!3515709 (Concat!24558 call!436479 lt!2277132))))

(declare-fun b!5716794 () Bool)

(assert (=> b!5716794 (= e!3515710 e!3515706)))

(declare-fun c!1007911 () Bool)

(assert (=> b!5716794 (= c!1007911 ((_ is ElementMatch!15713) lt!2277132))))

(declare-fun d!1803286 () Bool)

(declare-fun lt!2277446 () Regex!15713)

(assert (=> d!1803286 (validRegex!7449 lt!2277446)))

(assert (=> d!1803286 (= lt!2277446 e!3515710)))

(declare-fun c!1007912 () Bool)

(assert (=> d!1803286 (= c!1007912 (or ((_ is EmptyExpr!15713) lt!2277132) ((_ is EmptyLang!15713) lt!2277132)))))

(assert (=> d!1803286 (validRegex!7449 lt!2277132)))

(assert (=> d!1803286 (= (derivativeStep!4516 lt!2277132 (head!12105 s!2326)) lt!2277446)))

(declare-fun b!5716801 () Bool)

(assert (=> b!5716801 (= c!1007914 (nullable!5745 (regOne!31938 lt!2277132)))))

(assert (=> b!5716801 (= e!3515709 e!3515708)))

(declare-fun b!5716802 () Bool)

(assert (=> b!5716802 (= e!3515707 e!3515709)))

(assert (=> b!5716802 (= c!1007913 ((_ is Star!15713) lt!2277132))))

(assert (= (and d!1803286 c!1007912) b!5716795))

(assert (= (and d!1803286 (not c!1007912)) b!5716794))

(assert (= (and b!5716794 c!1007911) b!5716796))

(assert (= (and b!5716794 (not c!1007911)) b!5716799))

(assert (= (and b!5716799 c!1007910) b!5716797))

(assert (= (and b!5716799 (not c!1007910)) b!5716802))

(assert (= (and b!5716802 c!1007913) b!5716800))

(assert (= (and b!5716802 (not c!1007913)) b!5716801))

(assert (= (and b!5716801 c!1007914) b!5716798))

(assert (= (and b!5716801 (not c!1007914)) b!5716793))

(assert (= (or b!5716798 b!5716793) bm!436476))

(assert (= (or b!5716800 bm!436476) bm!436475))

(assert (= (or b!5716797 bm!436475) bm!436474))

(assert (= (or b!5716797 b!5716798) bm!436473))

(assert (=> bm!436473 m!6668202))

(declare-fun m!6670498 () Bool)

(assert (=> bm!436473 m!6670498))

(assert (=> bm!436474 m!6668202))

(declare-fun m!6670500 () Bool)

(assert (=> bm!436474 m!6670500))

(declare-fun m!6670502 () Bool)

(assert (=> d!1803286 m!6670502))

(assert (=> d!1803286 m!6668200))

(assert (=> b!5716801 m!6670330))

(assert (=> b!5714801 d!1803286))

(assert (=> b!5714801 d!1802790))

(assert (=> b!5714801 d!1802962))

(declare-fun d!1803288 () Bool)

(declare-fun c!1007917 () Bool)

(assert (=> d!1803288 (= c!1007917 ((_ is Nil!63316) lt!2277289))))

(declare-fun e!3515713 () (InoxSet Context!10194))

(assert (=> d!1803288 (= (content!11500 lt!2277289) e!3515713)))

(declare-fun b!5716807 () Bool)

(assert (=> b!5716807 (= e!3515713 ((as const (Array Context!10194 Bool)) false))))

(declare-fun b!5716808 () Bool)

(assert (=> b!5716808 (= e!3515713 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) (h!69764 lt!2277289) true) (content!11500 (t!376760 lt!2277289))))))

(assert (= (and d!1803288 c!1007917) b!5716807))

(assert (= (and d!1803288 (not c!1007917)) b!5716808))

(declare-fun m!6670504 () Bool)

(assert (=> b!5716808 m!6670504))

(declare-fun m!6670506 () Bool)

(assert (=> b!5716808 m!6670506))

(assert (=> b!5715246 d!1803288))

(assert (=> b!5714951 d!1802904))

(assert (=> b!5714951 d!1802906))

(assert (=> b!5714951 d!1802908))

(declare-fun d!1803290 () Bool)

(declare-fun e!3515718 () Bool)

(assert (=> d!1803290 e!3515718))

(declare-fun res!2413828 () Bool)

(assert (=> d!1803290 (=> res!2413828 e!3515718)))

(declare-fun e!3515714 () Bool)

(assert (=> d!1803290 (= res!2413828 e!3515714)))

(declare-fun res!2413831 () Bool)

(assert (=> d!1803290 (=> (not res!2413831) (not e!3515714))))

(declare-fun lt!2277449 () Option!15722)

(assert (=> d!1803290 (= res!2413831 (isDefined!12425 lt!2277449))))

(declare-fun e!3515716 () Option!15722)

(assert (=> d!1803290 (= lt!2277449 e!3515716)))

(declare-fun c!1007919 () Bool)

(declare-fun e!3515715 () Bool)

(assert (=> d!1803290 (= c!1007919 e!3515715)))

(declare-fun res!2413829 () Bool)

(assert (=> d!1803290 (=> (not res!2413829) (not e!3515715))))

(assert (=> d!1803290 (= res!2413829 (matchR!7898 (regOne!31938 r!7292) (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314))))))

(assert (=> d!1803290 (validRegex!7449 (regOne!31938 r!7292))))

(assert (=> d!1803290 (= (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326) s!2326) lt!2277449)))

(declare-fun b!5716809 () Bool)

(assert (=> b!5716809 (= e!3515715 (matchR!7898 (regTwo!31938 r!7292) (t!376758 s!2326)))))

(declare-fun b!5716810 () Bool)

(assert (=> b!5716810 (= e!3515718 (not (isDefined!12425 lt!2277449)))))

(declare-fun b!5716811 () Bool)

(declare-fun e!3515717 () Option!15722)

(assert (=> b!5716811 (= e!3515717 None!15721)))

(declare-fun b!5716812 () Bool)

(declare-fun res!2413832 () Bool)

(assert (=> b!5716812 (=> (not res!2413832) (not e!3515714))))

(assert (=> b!5716812 (= res!2413832 (matchR!7898 (regOne!31938 r!7292) (_1!36113 (get!21829 lt!2277449))))))

(declare-fun b!5716813 () Bool)

(assert (=> b!5716813 (= e!3515716 e!3515717)))

(declare-fun c!1007918 () Bool)

(assert (=> b!5716813 (= c!1007918 ((_ is Nil!63314) (t!376758 s!2326)))))

(declare-fun b!5716814 () Bool)

(assert (=> b!5716814 (= e!3515714 (= (++!13908 (_1!36113 (get!21829 lt!2277449)) (_2!36113 (get!21829 lt!2277449))) s!2326))))

(declare-fun b!5716815 () Bool)

(assert (=> b!5716815 (= e!3515716 (Some!15721 (tuple2!65621 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (t!376758 s!2326))))))

(declare-fun b!5716816 () Bool)

(declare-fun res!2413830 () Bool)

(assert (=> b!5716816 (=> (not res!2413830) (not e!3515714))))

(assert (=> b!5716816 (= res!2413830 (matchR!7898 (regTwo!31938 r!7292) (_2!36113 (get!21829 lt!2277449))))))

(declare-fun b!5716817 () Bool)

(declare-fun lt!2277448 () Unit!156384)

(declare-fun lt!2277447 () Unit!156384)

(assert (=> b!5716817 (= lt!2277448 lt!2277447)))

(assert (=> b!5716817 (= (++!13908 (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (Cons!63314 (h!69762 (t!376758 s!2326)) Nil!63314)) (t!376758 (t!376758 s!2326))) s!2326)))

(assert (=> b!5716817 (= lt!2277447 (lemmaMoveElementToOtherListKeepsConcatEq!2066 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (h!69762 (t!376758 s!2326)) (t!376758 (t!376758 s!2326)) s!2326))))

(assert (=> b!5716817 (= e!3515717 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) (++!13908 (++!13908 Nil!63314 (Cons!63314 (h!69762 s!2326) Nil!63314)) (Cons!63314 (h!69762 (t!376758 s!2326)) Nil!63314)) (t!376758 (t!376758 s!2326)) s!2326))))

(assert (= (and d!1803290 res!2413829) b!5716809))

(assert (= (and d!1803290 c!1007919) b!5716815))

(assert (= (and d!1803290 (not c!1007919)) b!5716813))

(assert (= (and b!5716813 c!1007918) b!5716811))

(assert (= (and b!5716813 (not c!1007918)) b!5716817))

(assert (= (and d!1803290 res!2413831) b!5716812))

(assert (= (and b!5716812 res!2413832) b!5716816))

(assert (= (and b!5716816 res!2413830) b!5716814))

(assert (= (and d!1803290 (not res!2413828)) b!5716810))

(declare-fun m!6670508 () Bool)

(assert (=> b!5716814 m!6670508))

(declare-fun m!6670510 () Bool)

(assert (=> b!5716814 m!6670510))

(assert (=> b!5716812 m!6670508))

(declare-fun m!6670512 () Bool)

(assert (=> b!5716812 m!6670512))

(assert (=> b!5716817 m!6668416))

(assert (=> b!5716817 m!6669598))

(assert (=> b!5716817 m!6669598))

(assert (=> b!5716817 m!6669600))

(assert (=> b!5716817 m!6668416))

(assert (=> b!5716817 m!6669602))

(assert (=> b!5716817 m!6669598))

(declare-fun m!6670514 () Bool)

(assert (=> b!5716817 m!6670514))

(assert (=> b!5716816 m!6670508))

(declare-fun m!6670516 () Bool)

(assert (=> b!5716816 m!6670516))

(assert (=> b!5716809 m!6669608))

(declare-fun m!6670518 () Bool)

(assert (=> d!1803290 m!6670518))

(assert (=> d!1803290 m!6668416))

(declare-fun m!6670520 () Bool)

(assert (=> d!1803290 m!6670520))

(assert (=> d!1803290 m!6668432))

(assert (=> b!5716810 m!6670518))

(assert (=> b!5714951 d!1803290))

(declare-fun d!1803292 () Bool)

(declare-fun res!2413833 () Bool)

(declare-fun e!3515719 () Bool)

(assert (=> d!1803292 (=> res!2413833 e!3515719)))

(assert (=> d!1803292 (= res!2413833 ((_ is Nil!63315) (++!13909 lt!2277136 lt!2277109)))))

(assert (=> d!1803292 (= (forall!14848 (++!13909 lt!2277136 lt!2277109) lambda!308687) e!3515719)))

(declare-fun b!5716818 () Bool)

(declare-fun e!3515720 () Bool)

(assert (=> b!5716818 (= e!3515719 e!3515720)))

(declare-fun res!2413834 () Bool)

(assert (=> b!5716818 (=> (not res!2413834) (not e!3515720))))

(assert (=> b!5716818 (= res!2413834 (dynLambda!24773 lambda!308687 (h!69763 (++!13909 lt!2277136 lt!2277109))))))

(declare-fun b!5716819 () Bool)

(assert (=> b!5716819 (= e!3515720 (forall!14848 (t!376759 (++!13909 lt!2277136 lt!2277109)) lambda!308687))))

(assert (= (and d!1803292 (not res!2413833)) b!5716818))

(assert (= (and b!5716818 res!2413834) b!5716819))

(declare-fun b_lambda!215993 () Bool)

(assert (=> (not b_lambda!215993) (not b!5716818)))

(declare-fun m!6670522 () Bool)

(assert (=> b!5716818 m!6670522))

(declare-fun m!6670524 () Bool)

(assert (=> b!5716819 m!6670524))

(assert (=> d!1802622 d!1803292))

(assert (=> d!1802622 d!1802624))

(declare-fun d!1803294 () Bool)

(assert (=> d!1803294 (forall!14848 (++!13909 lt!2277136 lt!2277109) lambda!308687)))

(assert (=> d!1803294 true))

(declare-fun _$78!275 () Unit!156384)

(assert (=> d!1803294 (= (choose!43225 lt!2277136 lt!2277109 lambda!308687) _$78!275)))

(declare-fun bs!1335952 () Bool)

(assert (= bs!1335952 d!1803294))

(assert (=> bs!1335952 m!6667944))

(assert (=> bs!1335952 m!6667944))

(assert (=> bs!1335952 m!6668956))

(assert (=> d!1802622 d!1803294))

(declare-fun d!1803296 () Bool)

(declare-fun res!2413835 () Bool)

(declare-fun e!3515721 () Bool)

(assert (=> d!1803296 (=> res!2413835 e!3515721)))

(assert (=> d!1803296 (= res!2413835 ((_ is Nil!63315) lt!2277136))))

(assert (=> d!1803296 (= (forall!14848 lt!2277136 lambda!308687) e!3515721)))

(declare-fun b!5716820 () Bool)

(declare-fun e!3515722 () Bool)

(assert (=> b!5716820 (= e!3515721 e!3515722)))

(declare-fun res!2413836 () Bool)

(assert (=> b!5716820 (=> (not res!2413836) (not e!3515722))))

(assert (=> b!5716820 (= res!2413836 (dynLambda!24773 lambda!308687 (h!69763 lt!2277136)))))

(declare-fun b!5716821 () Bool)

(assert (=> b!5716821 (= e!3515722 (forall!14848 (t!376759 lt!2277136) lambda!308687))))

(assert (= (and d!1803296 (not res!2413835)) b!5716820))

(assert (= (and b!5716820 res!2413836) b!5716821))

(declare-fun b_lambda!215995 () Bool)

(assert (=> (not b_lambda!215995) (not b!5716820)))

(declare-fun m!6670526 () Bool)

(assert (=> b!5716820 m!6670526))

(declare-fun m!6670528 () Bool)

(assert (=> b!5716821 m!6670528))

(assert (=> d!1802622 d!1803296))

(assert (=> d!1802432 d!1802832))

(assert (=> d!1802432 d!1802484))

(declare-fun bs!1335953 () Bool)

(declare-fun d!1803298 () Bool)

(assert (= bs!1335953 (and d!1803298 d!1802448)))

(declare-fun lambda!308853 () Int)

(assert (=> bs!1335953 (= lambda!308853 lambda!308742)))

(declare-fun bs!1335954 () Bool)

(assert (= bs!1335954 (and d!1803298 b!5716596)))

(assert (=> bs!1335954 (not (= lambda!308853 lambda!308847))))

(declare-fun bs!1335955 () Bool)

(assert (= bs!1335955 (and d!1803298 b!5714499)))

(assert (=> bs!1335955 (not (= lambda!308853 lambda!308685))))

(declare-fun bs!1335956 () Bool)

(assert (= bs!1335956 (and d!1803298 d!1802776)))

(assert (=> bs!1335956 (not (= lambda!308853 lambda!308794))))

(declare-fun bs!1335957 () Bool)

(assert (= bs!1335957 (and d!1803298 b!5716226)))

(assert (=> bs!1335957 (not (= lambda!308853 lambda!308821))))

(declare-fun bs!1335958 () Bool)

(assert (= bs!1335958 (and d!1803298 d!1802660)))

(assert (=> bs!1335958 (not (= lambda!308853 lambda!308765))))

(declare-fun bs!1335959 () Bool)

(assert (= bs!1335959 (and d!1803298 b!5716351)))

(assert (=> bs!1335959 (not (= lambda!308853 lambda!308826))))

(assert (=> bs!1335956 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308853 lambda!308793))))

(declare-fun bs!1335960 () Bool)

(assert (= bs!1335960 (and d!1803298 d!1802700)))

(assert (=> bs!1335960 (not (= lambda!308853 lambda!308782))))

(declare-fun bs!1335961 () Bool)

(assert (= bs!1335961 (and d!1803298 b!5716132)))

(assert (=> bs!1335961 (not (= lambda!308853 lambda!308809))))

(declare-fun bs!1335962 () Bool)

(assert (= bs!1335962 (and d!1803298 d!1802714)))

(assert (=> bs!1335962 (not (= lambda!308853 lambda!308787))))

(declare-fun bs!1335963 () Bool)

(assert (= bs!1335963 (and d!1803298 d!1802970)))

(assert (=> bs!1335963 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308853 lambda!308816))))

(assert (=> bs!1335958 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308853 lambda!308764))))

(declare-fun bs!1335964 () Bool)

(assert (= bs!1335964 (and d!1803298 d!1803100)))

(assert (=> bs!1335964 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308853 lambda!308833))))

(declare-fun bs!1335965 () Bool)

(assert (= bs!1335965 (and d!1803298 b!5715849)))

(assert (=> bs!1335965 (not (= lambda!308853 lambda!308799))))

(assert (=> bs!1335963 (not (= lambda!308853 lambda!308817))))

(declare-fun bs!1335966 () Bool)

(assert (= bs!1335966 (and d!1803298 b!5714753)))

(assert (=> bs!1335966 (not (= lambda!308853 lambda!308716))))

(assert (=> bs!1335962 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308853 lambda!308786))))

(declare-fun bs!1335967 () Bool)

(assert (= bs!1335967 (and d!1803298 b!5714504)))

(assert (=> bs!1335967 (not (= lambda!308853 lambda!308683))))

(declare-fun bs!1335968 () Bool)

(assert (= bs!1335968 (and d!1803298 b!5715508)))

(assert (=> bs!1335968 (not (= lambda!308853 lambda!308767))))

(declare-fun bs!1335969 () Bool)

(assert (= bs!1335969 (and d!1803298 b!5716128)))

(assert (=> bs!1335969 (not (= lambda!308853 lambda!308810))))

(assert (=> bs!1335955 (not (= lambda!308853 lambda!308686))))

(declare-fun bs!1335970 () Bool)

(assert (= bs!1335970 (and d!1803298 b!5715645)))

(assert (=> bs!1335970 (not (= lambda!308853 lambda!308785))))

(declare-fun bs!1335971 () Bool)

(assert (= bs!1335971 (and d!1803298 b!5716600)))

(assert (=> bs!1335971 (not (= lambda!308853 lambda!308846))))

(declare-fun bs!1335972 () Bool)

(assert (= bs!1335972 (and d!1803298 d!1803082)))

(assert (=> bs!1335972 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308853 lambda!308832))))

(declare-fun bs!1335973 () Bool)

(assert (= bs!1335973 (and d!1803298 d!1802830)))

(assert (=> bs!1335973 (= lambda!308853 lambda!308801)))

(declare-fun bs!1335974 () Bool)

(assert (= bs!1335974 (and d!1803298 b!5716347)))

(assert (=> bs!1335974 (not (= lambda!308853 lambda!308827))))

(assert (=> bs!1335960 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) (Star!15713 (reg!16042 (regOne!31938 r!7292))))) (= lambda!308853 lambda!308781))))

(assert (=> bs!1335953 (not (= lambda!308853 lambda!308743))))

(declare-fun bs!1335975 () Bool)

(assert (= bs!1335975 (and d!1803298 b!5714517)))

(assert (=> bs!1335975 (not (= lambda!308853 lambda!308680))))

(declare-fun bs!1335976 () Bool)

(assert (= bs!1335976 (and d!1803298 d!1802432)))

(assert (=> bs!1335976 (= lambda!308853 lambda!308728)))

(declare-fun bs!1335977 () Bool)

(assert (= bs!1335977 (and d!1803298 b!5715853)))

(assert (=> bs!1335977 (not (= lambda!308853 lambda!308798))))

(declare-fun bs!1335978 () Bool)

(assert (= bs!1335978 (and d!1803298 b!5715649)))

(assert (=> bs!1335978 (not (= lambda!308853 lambda!308784))))

(declare-fun bs!1335979 () Bool)

(assert (= bs!1335979 (and d!1803298 b!5716230)))

(assert (=> bs!1335979 (not (= lambda!308853 lambda!308820))))

(declare-fun bs!1335980 () Bool)

(assert (= bs!1335980 (and d!1803298 d!1802658)))

(assert (=> bs!1335980 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308853 lambda!308763))))

(declare-fun bs!1335981 () Bool)

(assert (= bs!1335981 (and d!1803298 b!5714749)))

(assert (=> bs!1335981 (not (= lambda!308853 lambda!308717))))

(assert (=> bs!1335955 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308853 lambda!308684))))

(declare-fun bs!1335982 () Bool)

(assert (= bs!1335982 (and d!1803298 d!1803170)))

(assert (=> bs!1335982 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308853 lambda!308842))))

(assert (=> bs!1335964 (not (= lambda!308853 lambda!308834))))

(assert (=> bs!1335975 (= lambda!308853 lambda!308679)))

(assert (=> bs!1335967 (= (= (regOne!31938 r!7292) lt!2277097) (= lambda!308853 lambda!308682))))

(declare-fun bs!1335983 () Bool)

(assert (= bs!1335983 (and d!1803298 b!5716248)))

(assert (=> bs!1335983 (not (= lambda!308853 lambda!308823))))

(assert (=> bs!1335973 (not (= lambda!308853 lambda!308802))))

(declare-fun bs!1335984 () Bool)

(assert (= bs!1335984 (and d!1803298 b!5716252)))

(assert (=> bs!1335984 (not (= lambda!308853 lambda!308822))))

(declare-fun bs!1335985 () Bool)

(assert (= bs!1335985 (and d!1803298 d!1802704)))

(assert (=> bs!1335985 (= (and (= s!2326 (_1!36113 lt!2277139)) (= (regOne!31938 r!7292) (reg!16042 (regOne!31938 r!7292))) (= (regTwo!31938 r!7292) lt!2277097)) (= lambda!308853 lambda!308783))))

(declare-fun bs!1335986 () Bool)

(assert (= bs!1335986 (and d!1803298 b!5715512)))

(assert (=> bs!1335986 (not (= lambda!308853 lambda!308766))))

(assert (=> d!1803298 true))

(assert (=> d!1803298 true))

(assert (=> d!1803298 true))

(assert (=> d!1803298 (= (isDefined!12425 (findConcatSeparation!2136 (regOne!31938 r!7292) (regTwo!31938 r!7292) Nil!63314 s!2326 s!2326)) (Exists!2813 lambda!308853))))

(assert (=> d!1803298 true))

(declare-fun _$89!1836 () Unit!156384)

(assert (=> d!1803298 (= (choose!43216 (regOne!31938 r!7292) (regTwo!31938 r!7292) s!2326) _$89!1836)))

(declare-fun bs!1335987 () Bool)

(assert (= bs!1335987 d!1803298))

(assert (=> bs!1335987 m!6667980))

(assert (=> bs!1335987 m!6667980))

(assert (=> bs!1335987 m!6667982))

(declare-fun m!6670530 () Bool)

(assert (=> bs!1335987 m!6670530))

(assert (=> d!1802432 d!1803298))

(declare-fun d!1803300 () Bool)

(assert (=> d!1803300 (= (Exists!2813 lambda!308728) (choose!43215 lambda!308728))))

(declare-fun bs!1335988 () Bool)

(assert (= bs!1335988 d!1803300))

(declare-fun m!6670532 () Bool)

(assert (=> bs!1335988 m!6670532))

(assert (=> d!1802432 d!1803300))

(assert (=> d!1802432 d!1802400))

(declare-fun d!1803302 () Bool)

(declare-fun c!1007922 () Bool)

(assert (=> d!1803302 (= c!1007922 ((_ is Nil!63315) lt!2277313))))

(declare-fun e!3515725 () (InoxSet Regex!15713))

(assert (=> d!1803302 (= (content!11502 lt!2277313) e!3515725)))

(declare-fun b!5716826 () Bool)

(assert (=> b!5716826 (= e!3515725 ((as const (Array Regex!15713 Bool)) false))))

(declare-fun b!5716827 () Bool)

(assert (=> b!5716827 (= e!3515725 ((_ map or) (store ((as const (Array Regex!15713 Bool)) false) (h!69763 lt!2277313) true) (content!11502 (t!376759 lt!2277313))))))

(assert (= (and d!1803302 c!1007922) b!5716826))

(assert (= (and d!1803302 (not c!1007922)) b!5716827))

(declare-fun m!6670534 () Bool)

(assert (=> b!5716827 m!6670534))

(declare-fun m!6670536 () Bool)

(assert (=> b!5716827 m!6670536))

(assert (=> d!1802624 d!1803302))

(declare-fun d!1803304 () Bool)

(declare-fun c!1007923 () Bool)

(assert (=> d!1803304 (= c!1007923 ((_ is Nil!63315) lt!2277136))))

(declare-fun e!3515726 () (InoxSet Regex!15713))

(assert (=> d!1803304 (= (content!11502 lt!2277136) e!3515726)))

(declare-fun b!5716828 () Bool)

(assert (=> b!5716828 (= e!3515726 ((as const (Array Regex!15713 Bool)) false))))

(declare-fun b!5716829 () Bool)

(assert (=> b!5716829 (= e!3515726 ((_ map or) (store ((as const (Array Regex!15713 Bool)) false) (h!69763 lt!2277136) true) (content!11502 (t!376759 lt!2277136))))))

(assert (= (and d!1803304 c!1007923) b!5716828))

(assert (= (and d!1803304 (not c!1007923)) b!5716829))

(declare-fun m!6670538 () Bool)

(assert (=> b!5716829 m!6670538))

(assert (=> b!5716829 m!6670420))

(assert (=> d!1802624 d!1803304))

(declare-fun d!1803306 () Bool)

(declare-fun c!1007924 () Bool)

(assert (=> d!1803306 (= c!1007924 ((_ is Nil!63315) lt!2277109))))

(declare-fun e!3515727 () (InoxSet Regex!15713))

(assert (=> d!1803306 (= (content!11502 lt!2277109) e!3515727)))

(declare-fun b!5716830 () Bool)

(assert (=> b!5716830 (= e!3515727 ((as const (Array Regex!15713 Bool)) false))))

(declare-fun b!5716831 () Bool)

(assert (=> b!5716831 (= e!3515727 ((_ map or) (store ((as const (Array Regex!15713 Bool)) false) (h!69763 lt!2277109) true) (content!11502 (t!376759 lt!2277109))))))

(assert (= (and d!1803306 c!1007924) b!5716830))

(assert (= (and d!1803306 (not c!1007924)) b!5716831))

(declare-fun m!6670540 () Bool)

(assert (=> b!5716831 m!6670540))

(declare-fun m!6670542 () Bool)

(assert (=> b!5716831 m!6670542))

(assert (=> d!1802624 d!1803306))

(assert (=> d!1802356 d!1802558))

(assert (=> d!1802356 d!1802734))

(assert (=> b!5715655 d!1802356))

(declare-fun d!1803308 () Bool)

(assert (=> d!1803308 (= (nullable!5745 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))) (nullableFct!1808 (h!69763 (exprs!5597 (Context!10195 (Cons!63315 (h!69763 (exprs!5597 (h!69764 zl!343))) (t!376759 (exprs!5597 (h!69764 zl!343)))))))))))

(declare-fun bs!1335989 () Bool)

(assert (= bs!1335989 d!1803308))

(declare-fun m!6670544 () Bool)

(assert (=> bs!1335989 m!6670544))

(assert (=> b!5715102 d!1803308))

(declare-fun d!1803310 () Bool)

(assert (=> d!1803310 true))

(assert (=> d!1803310 true))

(declare-fun res!2413837 () Bool)

(assert (=> d!1803310 (= (choose!43215 lambda!308685) res!2413837)))

(assert (=> d!1802698 d!1803310))

(declare-fun e!3515728 () Bool)

(assert (=> b!5715731 (= tp!1583528 e!3515728)))

(declare-fun b!5716832 () Bool)

(assert (=> b!5716832 (= e!3515728 tp_is_empty!40679)))

(declare-fun b!5716835 () Bool)

(declare-fun tp!1583551 () Bool)

(declare-fun tp!1583550 () Bool)

(assert (=> b!5716835 (= e!3515728 (and tp!1583551 tp!1583550))))

(declare-fun b!5716834 () Bool)

(declare-fun tp!1583549 () Bool)

(assert (=> b!5716834 (= e!3515728 tp!1583549)))

(declare-fun b!5716833 () Bool)

(declare-fun tp!1583553 () Bool)

(declare-fun tp!1583552 () Bool)

(assert (=> b!5716833 (= e!3515728 (and tp!1583553 tp!1583552))))

(assert (= (and b!5715731 ((_ is ElementMatch!15713) (regOne!31939 (regTwo!31939 r!7292)))) b!5716832))

(assert (= (and b!5715731 ((_ is Concat!24558) (regOne!31939 (regTwo!31939 r!7292)))) b!5716833))

(assert (= (and b!5715731 ((_ is Star!15713) (regOne!31939 (regTwo!31939 r!7292)))) b!5716834))

(assert (= (and b!5715731 ((_ is Union!15713) (regOne!31939 (regTwo!31939 r!7292)))) b!5716835))

(declare-fun e!3515729 () Bool)

(assert (=> b!5715731 (= tp!1583527 e!3515729)))

(declare-fun b!5716836 () Bool)

(assert (=> b!5716836 (= e!3515729 tp_is_empty!40679)))

(declare-fun b!5716839 () Bool)

(declare-fun tp!1583556 () Bool)

(declare-fun tp!1583555 () Bool)

(assert (=> b!5716839 (= e!3515729 (and tp!1583556 tp!1583555))))

(declare-fun b!5716838 () Bool)

(declare-fun tp!1583554 () Bool)

(assert (=> b!5716838 (= e!3515729 tp!1583554)))

(declare-fun b!5716837 () Bool)

(declare-fun tp!1583558 () Bool)

(declare-fun tp!1583557 () Bool)

(assert (=> b!5716837 (= e!3515729 (and tp!1583558 tp!1583557))))

(assert (= (and b!5715731 ((_ is ElementMatch!15713) (regTwo!31939 (regTwo!31939 r!7292)))) b!5716836))

(assert (= (and b!5715731 ((_ is Concat!24558) (regTwo!31939 (regTwo!31939 r!7292)))) b!5716837))

(assert (= (and b!5715731 ((_ is Star!15713) (regTwo!31939 (regTwo!31939 r!7292)))) b!5716838))

(assert (= (and b!5715731 ((_ is Union!15713) (regTwo!31939 (regTwo!31939 r!7292)))) b!5716839))

(declare-fun e!3515730 () Bool)

(assert (=> b!5715710 (= tp!1583507 e!3515730)))

(declare-fun b!5716840 () Bool)

(assert (=> b!5716840 (= e!3515730 tp_is_empty!40679)))

(declare-fun b!5716843 () Bool)

(declare-fun tp!1583561 () Bool)

(declare-fun tp!1583560 () Bool)

(assert (=> b!5716843 (= e!3515730 (and tp!1583561 tp!1583560))))

(declare-fun b!5716842 () Bool)

(declare-fun tp!1583559 () Bool)

(assert (=> b!5716842 (= e!3515730 tp!1583559)))

(declare-fun b!5716841 () Bool)

(declare-fun tp!1583563 () Bool)

(declare-fun tp!1583562 () Bool)

(assert (=> b!5716841 (= e!3515730 (and tp!1583563 tp!1583562))))

(assert (= (and b!5715710 ((_ is ElementMatch!15713) (h!69763 (exprs!5597 (h!69764 zl!343))))) b!5716840))

(assert (= (and b!5715710 ((_ is Concat!24558) (h!69763 (exprs!5597 (h!69764 zl!343))))) b!5716841))

(assert (= (and b!5715710 ((_ is Star!15713) (h!69763 (exprs!5597 (h!69764 zl!343))))) b!5716842))

(assert (= (and b!5715710 ((_ is Union!15713) (h!69763 (exprs!5597 (h!69764 zl!343))))) b!5716843))

(declare-fun b!5716844 () Bool)

(declare-fun e!3515731 () Bool)

(declare-fun tp!1583564 () Bool)

(declare-fun tp!1583565 () Bool)

(assert (=> b!5716844 (= e!3515731 (and tp!1583564 tp!1583565))))

(assert (=> b!5715710 (= tp!1583508 e!3515731)))

(assert (= (and b!5715710 ((_ is Cons!63315) (t!376759 (exprs!5597 (h!69764 zl!343))))) b!5716844))

(declare-fun e!3515732 () Bool)

(assert (=> b!5715702 (= tp!1583503 e!3515732)))

(declare-fun b!5716845 () Bool)

(assert (=> b!5716845 (= e!3515732 tp_is_empty!40679)))

(declare-fun b!5716848 () Bool)

(declare-fun tp!1583568 () Bool)

(declare-fun tp!1583567 () Bool)

(assert (=> b!5716848 (= e!3515732 (and tp!1583568 tp!1583567))))

(declare-fun b!5716847 () Bool)

(declare-fun tp!1583566 () Bool)

(assert (=> b!5716847 (= e!3515732 tp!1583566)))

(declare-fun b!5716846 () Bool)

(declare-fun tp!1583570 () Bool)

(declare-fun tp!1583569 () Bool)

(assert (=> b!5716846 (= e!3515732 (and tp!1583570 tp!1583569))))

(assert (= (and b!5715702 ((_ is ElementMatch!15713) (regOne!31938 (regTwo!31938 r!7292)))) b!5716845))

(assert (= (and b!5715702 ((_ is Concat!24558) (regOne!31938 (regTwo!31938 r!7292)))) b!5716846))

(assert (= (and b!5715702 ((_ is Star!15713) (regOne!31938 (regTwo!31938 r!7292)))) b!5716847))

(assert (= (and b!5715702 ((_ is Union!15713) (regOne!31938 (regTwo!31938 r!7292)))) b!5716848))

(declare-fun e!3515733 () Bool)

(assert (=> b!5715702 (= tp!1583502 e!3515733)))

(declare-fun b!5716849 () Bool)

(assert (=> b!5716849 (= e!3515733 tp_is_empty!40679)))

(declare-fun b!5716852 () Bool)

(declare-fun tp!1583573 () Bool)

(declare-fun tp!1583572 () Bool)

(assert (=> b!5716852 (= e!3515733 (and tp!1583573 tp!1583572))))

(declare-fun b!5716851 () Bool)

(declare-fun tp!1583571 () Bool)

(assert (=> b!5716851 (= e!3515733 tp!1583571)))

(declare-fun b!5716850 () Bool)

(declare-fun tp!1583575 () Bool)

(declare-fun tp!1583574 () Bool)

(assert (=> b!5716850 (= e!3515733 (and tp!1583575 tp!1583574))))

(assert (= (and b!5715702 ((_ is ElementMatch!15713) (regTwo!31938 (regTwo!31938 r!7292)))) b!5716849))

(assert (= (and b!5715702 ((_ is Concat!24558) (regTwo!31938 (regTwo!31938 r!7292)))) b!5716850))

(assert (= (and b!5715702 ((_ is Star!15713) (regTwo!31938 (regTwo!31938 r!7292)))) b!5716851))

(assert (= (and b!5715702 ((_ is Union!15713) (regTwo!31938 (regTwo!31938 r!7292)))) b!5716852))

(declare-fun e!3515734 () Bool)

(assert (=> b!5715703 (= tp!1583499 e!3515734)))

(declare-fun b!5716853 () Bool)

(assert (=> b!5716853 (= e!3515734 tp_is_empty!40679)))

(declare-fun b!5716856 () Bool)

(declare-fun tp!1583578 () Bool)

(declare-fun tp!1583577 () Bool)

(assert (=> b!5716856 (= e!3515734 (and tp!1583578 tp!1583577))))

(declare-fun b!5716855 () Bool)

(declare-fun tp!1583576 () Bool)

(assert (=> b!5716855 (= e!3515734 tp!1583576)))

(declare-fun b!5716854 () Bool)

(declare-fun tp!1583580 () Bool)

(declare-fun tp!1583579 () Bool)

(assert (=> b!5716854 (= e!3515734 (and tp!1583580 tp!1583579))))

(assert (= (and b!5715703 ((_ is ElementMatch!15713) (reg!16042 (regTwo!31938 r!7292)))) b!5716853))

(assert (= (and b!5715703 ((_ is Concat!24558) (reg!16042 (regTwo!31938 r!7292)))) b!5716854))

(assert (= (and b!5715703 ((_ is Star!15713) (reg!16042 (regTwo!31938 r!7292)))) b!5716855))

(assert (= (and b!5715703 ((_ is Union!15713) (reg!16042 (regTwo!31938 r!7292)))) b!5716856))

(declare-fun e!3515735 () Bool)

(assert (=> b!5715694 (= tp!1583493 e!3515735)))

(declare-fun b!5716857 () Bool)

(assert (=> b!5716857 (= e!3515735 tp_is_empty!40679)))

(declare-fun b!5716860 () Bool)

(declare-fun tp!1583583 () Bool)

(declare-fun tp!1583582 () Bool)

(assert (=> b!5716860 (= e!3515735 (and tp!1583583 tp!1583582))))

(declare-fun b!5716859 () Bool)

(declare-fun tp!1583581 () Bool)

(assert (=> b!5716859 (= e!3515735 tp!1583581)))

(declare-fun b!5716858 () Bool)

(declare-fun tp!1583585 () Bool)

(declare-fun tp!1583584 () Bool)

(assert (=> b!5716858 (= e!3515735 (and tp!1583585 tp!1583584))))

(assert (= (and b!5715694 ((_ is ElementMatch!15713) (regOne!31938 (reg!16042 r!7292)))) b!5716857))

(assert (= (and b!5715694 ((_ is Concat!24558) (regOne!31938 (reg!16042 r!7292)))) b!5716858))

(assert (= (and b!5715694 ((_ is Star!15713) (regOne!31938 (reg!16042 r!7292)))) b!5716859))

(assert (= (and b!5715694 ((_ is Union!15713) (regOne!31938 (reg!16042 r!7292)))) b!5716860))

(declare-fun e!3515736 () Bool)

(assert (=> b!5715694 (= tp!1583492 e!3515736)))

(declare-fun b!5716861 () Bool)

(assert (=> b!5716861 (= e!3515736 tp_is_empty!40679)))

(declare-fun b!5716864 () Bool)

(declare-fun tp!1583588 () Bool)

(declare-fun tp!1583587 () Bool)

(assert (=> b!5716864 (= e!3515736 (and tp!1583588 tp!1583587))))

(declare-fun b!5716863 () Bool)

(declare-fun tp!1583586 () Bool)

(assert (=> b!5716863 (= e!3515736 tp!1583586)))

(declare-fun b!5716862 () Bool)

(declare-fun tp!1583590 () Bool)

(declare-fun tp!1583589 () Bool)

(assert (=> b!5716862 (= e!3515736 (and tp!1583590 tp!1583589))))

(assert (= (and b!5715694 ((_ is ElementMatch!15713) (regTwo!31938 (reg!16042 r!7292)))) b!5716861))

(assert (= (and b!5715694 ((_ is Concat!24558) (regTwo!31938 (reg!16042 r!7292)))) b!5716862))

(assert (= (and b!5715694 ((_ is Star!15713) (regTwo!31938 (reg!16042 r!7292)))) b!5716863))

(assert (= (and b!5715694 ((_ is Union!15713) (regTwo!31938 (reg!16042 r!7292)))) b!5716864))

(declare-fun e!3515737 () Bool)

(assert (=> b!5715729 (= tp!1583530 e!3515737)))

(declare-fun b!5716865 () Bool)

(assert (=> b!5716865 (= e!3515737 tp_is_empty!40679)))

(declare-fun b!5716868 () Bool)

(declare-fun tp!1583593 () Bool)

(declare-fun tp!1583592 () Bool)

(assert (=> b!5716868 (= e!3515737 (and tp!1583593 tp!1583592))))

(declare-fun b!5716867 () Bool)

(declare-fun tp!1583591 () Bool)

(assert (=> b!5716867 (= e!3515737 tp!1583591)))

(declare-fun b!5716866 () Bool)

(declare-fun tp!1583595 () Bool)

(declare-fun tp!1583594 () Bool)

(assert (=> b!5716866 (= e!3515737 (and tp!1583595 tp!1583594))))

(assert (= (and b!5715729 ((_ is ElementMatch!15713) (regOne!31938 (regTwo!31939 r!7292)))) b!5716865))

(assert (= (and b!5715729 ((_ is Concat!24558) (regOne!31938 (regTwo!31939 r!7292)))) b!5716866))

(assert (= (and b!5715729 ((_ is Star!15713) (regOne!31938 (regTwo!31939 r!7292)))) b!5716867))

(assert (= (and b!5715729 ((_ is Union!15713) (regOne!31938 (regTwo!31939 r!7292)))) b!5716868))

(declare-fun e!3515738 () Bool)

(assert (=> b!5715729 (= tp!1583529 e!3515738)))

(declare-fun b!5716869 () Bool)

(assert (=> b!5716869 (= e!3515738 tp_is_empty!40679)))

(declare-fun b!5716872 () Bool)

(declare-fun tp!1583598 () Bool)

(declare-fun tp!1583597 () Bool)

(assert (=> b!5716872 (= e!3515738 (and tp!1583598 tp!1583597))))

(declare-fun b!5716871 () Bool)

(declare-fun tp!1583596 () Bool)

(assert (=> b!5716871 (= e!3515738 tp!1583596)))

(declare-fun b!5716870 () Bool)

(declare-fun tp!1583600 () Bool)

(declare-fun tp!1583599 () Bool)

(assert (=> b!5716870 (= e!3515738 (and tp!1583600 tp!1583599))))

(assert (= (and b!5715729 ((_ is ElementMatch!15713) (regTwo!31938 (regTwo!31939 r!7292)))) b!5716869))

(assert (= (and b!5715729 ((_ is Concat!24558) (regTwo!31938 (regTwo!31939 r!7292)))) b!5716870))

(assert (= (and b!5715729 ((_ is Star!15713) (regTwo!31938 (regTwo!31939 r!7292)))) b!5716871))

(assert (= (and b!5715729 ((_ is Union!15713) (regTwo!31938 (regTwo!31939 r!7292)))) b!5716872))

(declare-fun b!5716874 () Bool)

(declare-fun e!3515740 () Bool)

(declare-fun tp!1583601 () Bool)

(assert (=> b!5716874 (= e!3515740 tp!1583601)))

(declare-fun e!3515739 () Bool)

(declare-fun b!5716873 () Bool)

(declare-fun tp!1583602 () Bool)

(assert (=> b!5716873 (= e!3515739 (and (inv!82529 (h!69764 (t!376760 (t!376760 zl!343)))) e!3515740 tp!1583602))))

(assert (=> b!5715722 (= tp!1583520 e!3515739)))

(assert (= b!5716873 b!5716874))

(assert (= (and b!5715722 ((_ is Cons!63316) (t!376760 (t!376760 zl!343)))) b!5716873))

(declare-fun m!6670546 () Bool)

(assert (=> b!5716873 m!6670546))

(declare-fun e!3515741 () Bool)

(assert (=> b!5715730 (= tp!1583526 e!3515741)))

(declare-fun b!5716875 () Bool)

(assert (=> b!5716875 (= e!3515741 tp_is_empty!40679)))

(declare-fun b!5716878 () Bool)

(declare-fun tp!1583605 () Bool)

(declare-fun tp!1583604 () Bool)

(assert (=> b!5716878 (= e!3515741 (and tp!1583605 tp!1583604))))

(declare-fun b!5716877 () Bool)

(declare-fun tp!1583603 () Bool)

(assert (=> b!5716877 (= e!3515741 tp!1583603)))

(declare-fun b!5716876 () Bool)

(declare-fun tp!1583607 () Bool)

(declare-fun tp!1583606 () Bool)

(assert (=> b!5716876 (= e!3515741 (and tp!1583607 tp!1583606))))

(assert (= (and b!5715730 ((_ is ElementMatch!15713) (reg!16042 (regTwo!31939 r!7292)))) b!5716875))

(assert (= (and b!5715730 ((_ is Concat!24558) (reg!16042 (regTwo!31939 r!7292)))) b!5716876))

(assert (= (and b!5715730 ((_ is Star!15713) (reg!16042 (regTwo!31939 r!7292)))) b!5716877))

(assert (= (and b!5715730 ((_ is Union!15713) (reg!16042 (regTwo!31939 r!7292)))) b!5716878))

(declare-fun b!5716879 () Bool)

(declare-fun e!3515742 () Bool)

(declare-fun tp!1583608 () Bool)

(declare-fun tp!1583609 () Bool)

(assert (=> b!5716879 (= e!3515742 (and tp!1583608 tp!1583609))))

(assert (=> b!5715723 (= tp!1583519 e!3515742)))

(assert (= (and b!5715723 ((_ is Cons!63315) (exprs!5597 (h!69764 (t!376760 zl!343))))) b!5716879))

(declare-fun b!5716880 () Bool)

(declare-fun e!3515743 () Bool)

(declare-fun tp!1583610 () Bool)

(assert (=> b!5716880 (= e!3515743 (and tp_is_empty!40679 tp!1583610))))

(assert (=> b!5715709 (= tp!1583506 e!3515743)))

(assert (= (and b!5715709 ((_ is Cons!63314) (t!376758 (t!376758 s!2326)))) b!5716880))

(declare-fun condSetEmpty!38292 () Bool)

(assert (=> setNonEmpty!38285 (= condSetEmpty!38292 (= setRest!38285 ((as const (Array Context!10194 Bool)) false)))))

(declare-fun setRes!38292 () Bool)

(assert (=> setNonEmpty!38285 (= tp!1583514 setRes!38292)))

(declare-fun setIsEmpty!38292 () Bool)

(assert (=> setIsEmpty!38292 setRes!38292))

(declare-fun setElem!38292 () Context!10194)

(declare-fun tp!1583612 () Bool)

(declare-fun e!3515744 () Bool)

(declare-fun setNonEmpty!38292 () Bool)

(assert (=> setNonEmpty!38292 (= setRes!38292 (and tp!1583612 (inv!82529 setElem!38292) e!3515744))))

(declare-fun setRest!38292 () (InoxSet Context!10194))

(assert (=> setNonEmpty!38292 (= setRest!38285 ((_ map or) (store ((as const (Array Context!10194 Bool)) false) setElem!38292 true) setRest!38292))))

(declare-fun b!5716881 () Bool)

(declare-fun tp!1583611 () Bool)

(assert (=> b!5716881 (= e!3515744 tp!1583611)))

(assert (= (and setNonEmpty!38285 condSetEmpty!38292) setIsEmpty!38292))

(assert (= (and setNonEmpty!38285 (not condSetEmpty!38292)) setNonEmpty!38292))

(assert (= setNonEmpty!38292 b!5716881))

(declare-fun m!6670548 () Bool)

(assert (=> setNonEmpty!38292 m!6670548))

(declare-fun e!3515745 () Bool)

(assert (=> b!5715700 (= tp!1583496 e!3515745)))

(declare-fun b!5716882 () Bool)

(assert (=> b!5716882 (= e!3515745 tp_is_empty!40679)))

(declare-fun b!5716885 () Bool)

(declare-fun tp!1583615 () Bool)

(declare-fun tp!1583614 () Bool)

(assert (=> b!5716885 (= e!3515745 (and tp!1583615 tp!1583614))))

(declare-fun b!5716884 () Bool)

(declare-fun tp!1583613 () Bool)

(assert (=> b!5716884 (= e!3515745 tp!1583613)))

(declare-fun b!5716883 () Bool)

(declare-fun tp!1583617 () Bool)

(declare-fun tp!1583616 () Bool)

(assert (=> b!5716883 (= e!3515745 (and tp!1583617 tp!1583616))))

(assert (= (and b!5715700 ((_ is ElementMatch!15713) (regOne!31939 (regOne!31938 r!7292)))) b!5716882))

(assert (= (and b!5715700 ((_ is Concat!24558) (regOne!31939 (regOne!31938 r!7292)))) b!5716883))

(assert (= (and b!5715700 ((_ is Star!15713) (regOne!31939 (regOne!31938 r!7292)))) b!5716884))

(assert (= (and b!5715700 ((_ is Union!15713) (regOne!31939 (regOne!31938 r!7292)))) b!5716885))

(declare-fun e!3515746 () Bool)

(assert (=> b!5715700 (= tp!1583495 e!3515746)))

(declare-fun b!5716886 () Bool)

(assert (=> b!5716886 (= e!3515746 tp_is_empty!40679)))

(declare-fun b!5716889 () Bool)

(declare-fun tp!1583620 () Bool)

(declare-fun tp!1583619 () Bool)

(assert (=> b!5716889 (= e!3515746 (and tp!1583620 tp!1583619))))

(declare-fun b!5716888 () Bool)

(declare-fun tp!1583618 () Bool)

(assert (=> b!5716888 (= e!3515746 tp!1583618)))

(declare-fun b!5716887 () Bool)

(declare-fun tp!1583622 () Bool)

(declare-fun tp!1583621 () Bool)

(assert (=> b!5716887 (= e!3515746 (and tp!1583622 tp!1583621))))

(assert (= (and b!5715700 ((_ is ElementMatch!15713) (regTwo!31939 (regOne!31938 r!7292)))) b!5716886))

(assert (= (and b!5715700 ((_ is Concat!24558) (regTwo!31939 (regOne!31938 r!7292)))) b!5716887))

(assert (= (and b!5715700 ((_ is Star!15713) (regTwo!31939 (regOne!31938 r!7292)))) b!5716888))

(assert (= (and b!5715700 ((_ is Union!15713) (regTwo!31939 (regOne!31938 r!7292)))) b!5716889))

(declare-fun b!5716890 () Bool)

(declare-fun e!3515747 () Bool)

(declare-fun tp!1583623 () Bool)

(declare-fun tp!1583624 () Bool)

(assert (=> b!5716890 (= e!3515747 (and tp!1583623 tp!1583624))))

(assert (=> b!5715715 (= tp!1583513 e!3515747)))

(assert (= (and b!5715715 ((_ is Cons!63315) (exprs!5597 setElem!38285))) b!5716890))

(declare-fun e!3515748 () Bool)

(assert (=> b!5715682 (= tp!1583477 e!3515748)))

(declare-fun b!5716891 () Bool)

(assert (=> b!5716891 (= e!3515748 tp_is_empty!40679)))

(declare-fun b!5716894 () Bool)

(declare-fun tp!1583627 () Bool)

(declare-fun tp!1583626 () Bool)

(assert (=> b!5716894 (= e!3515748 (and tp!1583627 tp!1583626))))

(declare-fun b!5716893 () Bool)

(declare-fun tp!1583625 () Bool)

(assert (=> b!5716893 (= e!3515748 tp!1583625)))

(declare-fun b!5716892 () Bool)

(declare-fun tp!1583629 () Bool)

(declare-fun tp!1583628 () Bool)

(assert (=> b!5716892 (= e!3515748 (and tp!1583629 tp!1583628))))

(assert (= (and b!5715682 ((_ is ElementMatch!15713) (h!69763 (exprs!5597 setElem!38279)))) b!5716891))

(assert (= (and b!5715682 ((_ is Concat!24558) (h!69763 (exprs!5597 setElem!38279)))) b!5716892))

(assert (= (and b!5715682 ((_ is Star!15713) (h!69763 (exprs!5597 setElem!38279)))) b!5716893))

(assert (= (and b!5715682 ((_ is Union!15713) (h!69763 (exprs!5597 setElem!38279)))) b!5716894))

(declare-fun b!5716895 () Bool)

(declare-fun e!3515749 () Bool)

(declare-fun tp!1583630 () Bool)

(declare-fun tp!1583631 () Bool)

(assert (=> b!5716895 (= e!3515749 (and tp!1583630 tp!1583631))))

(assert (=> b!5715682 (= tp!1583478 e!3515749)))

(assert (= (and b!5715682 ((_ is Cons!63315) (t!376759 (exprs!5597 setElem!38279)))) b!5716895))

(declare-fun e!3515750 () Bool)

(assert (=> b!5715727 (= tp!1583523 e!3515750)))

(declare-fun b!5716896 () Bool)

(assert (=> b!5716896 (= e!3515750 tp_is_empty!40679)))

(declare-fun b!5716899 () Bool)

(declare-fun tp!1583634 () Bool)

(declare-fun tp!1583633 () Bool)

(assert (=> b!5716899 (= e!3515750 (and tp!1583634 tp!1583633))))

(declare-fun b!5716898 () Bool)

(declare-fun tp!1583632 () Bool)

(assert (=> b!5716898 (= e!3515750 tp!1583632)))

(declare-fun b!5716897 () Bool)

(declare-fun tp!1583636 () Bool)

(declare-fun tp!1583635 () Bool)

(assert (=> b!5716897 (= e!3515750 (and tp!1583636 tp!1583635))))

(assert (= (and b!5715727 ((_ is ElementMatch!15713) (regOne!31939 (regOne!31939 r!7292)))) b!5716896))

(assert (= (and b!5715727 ((_ is Concat!24558) (regOne!31939 (regOne!31939 r!7292)))) b!5716897))

(assert (= (and b!5715727 ((_ is Star!15713) (regOne!31939 (regOne!31939 r!7292)))) b!5716898))

(assert (= (and b!5715727 ((_ is Union!15713) (regOne!31939 (regOne!31939 r!7292)))) b!5716899))

(declare-fun e!3515751 () Bool)

(assert (=> b!5715727 (= tp!1583522 e!3515751)))

(declare-fun b!5716900 () Bool)

(assert (=> b!5716900 (= e!3515751 tp_is_empty!40679)))

(declare-fun b!5716903 () Bool)

(declare-fun tp!1583639 () Bool)

(declare-fun tp!1583638 () Bool)

(assert (=> b!5716903 (= e!3515751 (and tp!1583639 tp!1583638))))

(declare-fun b!5716902 () Bool)

(declare-fun tp!1583637 () Bool)

(assert (=> b!5716902 (= e!3515751 tp!1583637)))

(declare-fun b!5716901 () Bool)

(declare-fun tp!1583641 () Bool)

(declare-fun tp!1583640 () Bool)

(assert (=> b!5716901 (= e!3515751 (and tp!1583641 tp!1583640))))

(assert (= (and b!5715727 ((_ is ElementMatch!15713) (regTwo!31939 (regOne!31939 r!7292)))) b!5716900))

(assert (= (and b!5715727 ((_ is Concat!24558) (regTwo!31939 (regOne!31939 r!7292)))) b!5716901))

(assert (= (and b!5715727 ((_ is Star!15713) (regTwo!31939 (regOne!31939 r!7292)))) b!5716902))

(assert (= (and b!5715727 ((_ is Union!15713) (regTwo!31939 (regOne!31939 r!7292)))) b!5716903))

(declare-fun e!3515752 () Bool)

(assert (=> b!5715698 (= tp!1583498 e!3515752)))

(declare-fun b!5716904 () Bool)

(assert (=> b!5716904 (= e!3515752 tp_is_empty!40679)))

(declare-fun b!5716907 () Bool)

(declare-fun tp!1583644 () Bool)

(declare-fun tp!1583643 () Bool)

(assert (=> b!5716907 (= e!3515752 (and tp!1583644 tp!1583643))))

(declare-fun b!5716906 () Bool)

(declare-fun tp!1583642 () Bool)

(assert (=> b!5716906 (= e!3515752 tp!1583642)))

(declare-fun b!5716905 () Bool)

(declare-fun tp!1583646 () Bool)

(declare-fun tp!1583645 () Bool)

(assert (=> b!5716905 (= e!3515752 (and tp!1583646 tp!1583645))))

(assert (= (and b!5715698 ((_ is ElementMatch!15713) (regOne!31938 (regOne!31938 r!7292)))) b!5716904))

(assert (= (and b!5715698 ((_ is Concat!24558) (regOne!31938 (regOne!31938 r!7292)))) b!5716905))

(assert (= (and b!5715698 ((_ is Star!15713) (regOne!31938 (regOne!31938 r!7292)))) b!5716906))

(assert (= (and b!5715698 ((_ is Union!15713) (regOne!31938 (regOne!31938 r!7292)))) b!5716907))

(declare-fun e!3515753 () Bool)

(assert (=> b!5715698 (= tp!1583497 e!3515753)))

(declare-fun b!5716908 () Bool)

(assert (=> b!5716908 (= e!3515753 tp_is_empty!40679)))

(declare-fun b!5716911 () Bool)

(declare-fun tp!1583649 () Bool)

(declare-fun tp!1583648 () Bool)

(assert (=> b!5716911 (= e!3515753 (and tp!1583649 tp!1583648))))

(declare-fun b!5716910 () Bool)

(declare-fun tp!1583647 () Bool)

(assert (=> b!5716910 (= e!3515753 tp!1583647)))

(declare-fun b!5716909 () Bool)

(declare-fun tp!1583651 () Bool)

(declare-fun tp!1583650 () Bool)

(assert (=> b!5716909 (= e!3515753 (and tp!1583651 tp!1583650))))

(assert (= (and b!5715698 ((_ is ElementMatch!15713) (regTwo!31938 (regOne!31938 r!7292)))) b!5716908))

(assert (= (and b!5715698 ((_ is Concat!24558) (regTwo!31938 (regOne!31938 r!7292)))) b!5716909))

(assert (= (and b!5715698 ((_ is Star!15713) (regTwo!31938 (regOne!31938 r!7292)))) b!5716910))

(assert (= (and b!5715698 ((_ is Union!15713) (regTwo!31938 (regOne!31938 r!7292)))) b!5716911))

(declare-fun e!3515754 () Bool)

(assert (=> b!5715699 (= tp!1583494 e!3515754)))

(declare-fun b!5716912 () Bool)

(assert (=> b!5716912 (= e!3515754 tp_is_empty!40679)))

(declare-fun b!5716915 () Bool)

(declare-fun tp!1583654 () Bool)

(declare-fun tp!1583653 () Bool)

(assert (=> b!5716915 (= e!3515754 (and tp!1583654 tp!1583653))))

(declare-fun b!5716914 () Bool)

(declare-fun tp!1583652 () Bool)

(assert (=> b!5716914 (= e!3515754 tp!1583652)))

(declare-fun b!5716913 () Bool)

(declare-fun tp!1583656 () Bool)

(declare-fun tp!1583655 () Bool)

(assert (=> b!5716913 (= e!3515754 (and tp!1583656 tp!1583655))))

(assert (= (and b!5715699 ((_ is ElementMatch!15713) (reg!16042 (regOne!31938 r!7292)))) b!5716912))

(assert (= (and b!5715699 ((_ is Concat!24558) (reg!16042 (regOne!31938 r!7292)))) b!5716913))

(assert (= (and b!5715699 ((_ is Star!15713) (reg!16042 (regOne!31938 r!7292)))) b!5716914))

(assert (= (and b!5715699 ((_ is Union!15713) (reg!16042 (regOne!31938 r!7292)))) b!5716915))

(declare-fun e!3515755 () Bool)

(assert (=> b!5715725 (= tp!1583525 e!3515755)))

(declare-fun b!5716916 () Bool)

(assert (=> b!5716916 (= e!3515755 tp_is_empty!40679)))

(declare-fun b!5716919 () Bool)

(declare-fun tp!1583659 () Bool)

(declare-fun tp!1583658 () Bool)

(assert (=> b!5716919 (= e!3515755 (and tp!1583659 tp!1583658))))

(declare-fun b!5716918 () Bool)

(declare-fun tp!1583657 () Bool)

(assert (=> b!5716918 (= e!3515755 tp!1583657)))

(declare-fun b!5716917 () Bool)

(declare-fun tp!1583661 () Bool)

(declare-fun tp!1583660 () Bool)

(assert (=> b!5716917 (= e!3515755 (and tp!1583661 tp!1583660))))

(assert (= (and b!5715725 ((_ is ElementMatch!15713) (regOne!31938 (regOne!31939 r!7292)))) b!5716916))

(assert (= (and b!5715725 ((_ is Concat!24558) (regOne!31938 (regOne!31939 r!7292)))) b!5716917))

(assert (= (and b!5715725 ((_ is Star!15713) (regOne!31938 (regOne!31939 r!7292)))) b!5716918))

(assert (= (and b!5715725 ((_ is Union!15713) (regOne!31938 (regOne!31939 r!7292)))) b!5716919))

(declare-fun e!3515756 () Bool)

(assert (=> b!5715725 (= tp!1583524 e!3515756)))

(declare-fun b!5716920 () Bool)

(assert (=> b!5716920 (= e!3515756 tp_is_empty!40679)))

(declare-fun b!5716923 () Bool)

(declare-fun tp!1583664 () Bool)

(declare-fun tp!1583663 () Bool)

(assert (=> b!5716923 (= e!3515756 (and tp!1583664 tp!1583663))))

(declare-fun b!5716922 () Bool)

(declare-fun tp!1583662 () Bool)

(assert (=> b!5716922 (= e!3515756 tp!1583662)))

(declare-fun b!5716921 () Bool)

(declare-fun tp!1583666 () Bool)

(declare-fun tp!1583665 () Bool)

(assert (=> b!5716921 (= e!3515756 (and tp!1583666 tp!1583665))))

(assert (= (and b!5715725 ((_ is ElementMatch!15713) (regTwo!31938 (regOne!31939 r!7292)))) b!5716920))

(assert (= (and b!5715725 ((_ is Concat!24558) (regTwo!31938 (regOne!31939 r!7292)))) b!5716921))

(assert (= (and b!5715725 ((_ is Star!15713) (regTwo!31938 (regOne!31939 r!7292)))) b!5716922))

(assert (= (and b!5715725 ((_ is Union!15713) (regTwo!31938 (regOne!31939 r!7292)))) b!5716923))

(declare-fun e!3515757 () Bool)

(assert (=> b!5715726 (= tp!1583521 e!3515757)))

(declare-fun b!5716924 () Bool)

(assert (=> b!5716924 (= e!3515757 tp_is_empty!40679)))

(declare-fun b!5716927 () Bool)

(declare-fun tp!1583669 () Bool)

(declare-fun tp!1583668 () Bool)

(assert (=> b!5716927 (= e!3515757 (and tp!1583669 tp!1583668))))

(declare-fun b!5716926 () Bool)

(declare-fun tp!1583667 () Bool)

(assert (=> b!5716926 (= e!3515757 tp!1583667)))

(declare-fun b!5716925 () Bool)

(declare-fun tp!1583671 () Bool)

(declare-fun tp!1583670 () Bool)

(assert (=> b!5716925 (= e!3515757 (and tp!1583671 tp!1583670))))

(assert (= (and b!5715726 ((_ is ElementMatch!15713) (reg!16042 (regOne!31939 r!7292)))) b!5716924))

(assert (= (and b!5715726 ((_ is Concat!24558) (reg!16042 (regOne!31939 r!7292)))) b!5716925))

(assert (= (and b!5715726 ((_ is Star!15713) (reg!16042 (regOne!31939 r!7292)))) b!5716926))

(assert (= (and b!5715726 ((_ is Union!15713) (reg!16042 (regOne!31939 r!7292)))) b!5716927))

(declare-fun e!3515758 () Bool)

(assert (=> b!5715704 (= tp!1583501 e!3515758)))

(declare-fun b!5716928 () Bool)

(assert (=> b!5716928 (= e!3515758 tp_is_empty!40679)))

(declare-fun b!5716931 () Bool)

(declare-fun tp!1583674 () Bool)

(declare-fun tp!1583673 () Bool)

(assert (=> b!5716931 (= e!3515758 (and tp!1583674 tp!1583673))))

(declare-fun b!5716930 () Bool)

(declare-fun tp!1583672 () Bool)

(assert (=> b!5716930 (= e!3515758 tp!1583672)))

(declare-fun b!5716929 () Bool)

(declare-fun tp!1583676 () Bool)

(declare-fun tp!1583675 () Bool)

(assert (=> b!5716929 (= e!3515758 (and tp!1583676 tp!1583675))))

(assert (= (and b!5715704 ((_ is ElementMatch!15713) (regOne!31939 (regTwo!31938 r!7292)))) b!5716928))

(assert (= (and b!5715704 ((_ is Concat!24558) (regOne!31939 (regTwo!31938 r!7292)))) b!5716929))

(assert (= (and b!5715704 ((_ is Star!15713) (regOne!31939 (regTwo!31938 r!7292)))) b!5716930))

(assert (= (and b!5715704 ((_ is Union!15713) (regOne!31939 (regTwo!31938 r!7292)))) b!5716931))

(declare-fun e!3515759 () Bool)

(assert (=> b!5715704 (= tp!1583500 e!3515759)))

(declare-fun b!5716932 () Bool)

(assert (=> b!5716932 (= e!3515759 tp_is_empty!40679)))

(declare-fun b!5716935 () Bool)

(declare-fun tp!1583679 () Bool)

(declare-fun tp!1583678 () Bool)

(assert (=> b!5716935 (= e!3515759 (and tp!1583679 tp!1583678))))

(declare-fun b!5716934 () Bool)

(declare-fun tp!1583677 () Bool)

(assert (=> b!5716934 (= e!3515759 tp!1583677)))

(declare-fun b!5716933 () Bool)

(declare-fun tp!1583681 () Bool)

(declare-fun tp!1583680 () Bool)

(assert (=> b!5716933 (= e!3515759 (and tp!1583681 tp!1583680))))

(assert (= (and b!5715704 ((_ is ElementMatch!15713) (regTwo!31939 (regTwo!31938 r!7292)))) b!5716932))

(assert (= (and b!5715704 ((_ is Concat!24558) (regTwo!31939 (regTwo!31938 r!7292)))) b!5716933))

(assert (= (and b!5715704 ((_ is Star!15713) (regTwo!31939 (regTwo!31938 r!7292)))) b!5716934))

(assert (= (and b!5715704 ((_ is Union!15713) (regTwo!31939 (regTwo!31938 r!7292)))) b!5716935))

(declare-fun e!3515760 () Bool)

(assert (=> b!5715695 (= tp!1583489 e!3515760)))

(declare-fun b!5716936 () Bool)

(assert (=> b!5716936 (= e!3515760 tp_is_empty!40679)))

(declare-fun b!5716939 () Bool)

(declare-fun tp!1583684 () Bool)

(declare-fun tp!1583683 () Bool)

(assert (=> b!5716939 (= e!3515760 (and tp!1583684 tp!1583683))))

(declare-fun b!5716938 () Bool)

(declare-fun tp!1583682 () Bool)

(assert (=> b!5716938 (= e!3515760 tp!1583682)))

(declare-fun b!5716937 () Bool)

(declare-fun tp!1583686 () Bool)

(declare-fun tp!1583685 () Bool)

(assert (=> b!5716937 (= e!3515760 (and tp!1583686 tp!1583685))))

(assert (= (and b!5715695 ((_ is ElementMatch!15713) (reg!16042 (reg!16042 r!7292)))) b!5716936))

(assert (= (and b!5715695 ((_ is Concat!24558) (reg!16042 (reg!16042 r!7292)))) b!5716937))

(assert (= (and b!5715695 ((_ is Star!15713) (reg!16042 (reg!16042 r!7292)))) b!5716938))

(assert (= (and b!5715695 ((_ is Union!15713) (reg!16042 (reg!16042 r!7292)))) b!5716939))

(declare-fun e!3515761 () Bool)

(assert (=> b!5715696 (= tp!1583491 e!3515761)))

(declare-fun b!5716940 () Bool)

(assert (=> b!5716940 (= e!3515761 tp_is_empty!40679)))

(declare-fun b!5716943 () Bool)

(declare-fun tp!1583689 () Bool)

(declare-fun tp!1583688 () Bool)

(assert (=> b!5716943 (= e!3515761 (and tp!1583689 tp!1583688))))

(declare-fun b!5716942 () Bool)

(declare-fun tp!1583687 () Bool)

(assert (=> b!5716942 (= e!3515761 tp!1583687)))

(declare-fun b!5716941 () Bool)

(declare-fun tp!1583691 () Bool)

(declare-fun tp!1583690 () Bool)

(assert (=> b!5716941 (= e!3515761 (and tp!1583691 tp!1583690))))

(assert (= (and b!5715696 ((_ is ElementMatch!15713) (regOne!31939 (reg!16042 r!7292)))) b!5716940))

(assert (= (and b!5715696 ((_ is Concat!24558) (regOne!31939 (reg!16042 r!7292)))) b!5716941))

(assert (= (and b!5715696 ((_ is Star!15713) (regOne!31939 (reg!16042 r!7292)))) b!5716942))

(assert (= (and b!5715696 ((_ is Union!15713) (regOne!31939 (reg!16042 r!7292)))) b!5716943))

(declare-fun e!3515762 () Bool)

(assert (=> b!5715696 (= tp!1583490 e!3515762)))

(declare-fun b!5716944 () Bool)

(assert (=> b!5716944 (= e!3515762 tp_is_empty!40679)))

(declare-fun b!5716947 () Bool)

(declare-fun tp!1583694 () Bool)

(declare-fun tp!1583693 () Bool)

(assert (=> b!5716947 (= e!3515762 (and tp!1583694 tp!1583693))))

(declare-fun b!5716946 () Bool)

(declare-fun tp!1583692 () Bool)

(assert (=> b!5716946 (= e!3515762 tp!1583692)))

(declare-fun b!5716945 () Bool)

(declare-fun tp!1583696 () Bool)

(declare-fun tp!1583695 () Bool)

(assert (=> b!5716945 (= e!3515762 (and tp!1583696 tp!1583695))))

(assert (= (and b!5715696 ((_ is ElementMatch!15713) (regTwo!31939 (reg!16042 r!7292)))) b!5716944))

(assert (= (and b!5715696 ((_ is Concat!24558) (regTwo!31939 (reg!16042 r!7292)))) b!5716945))

(assert (= (and b!5715696 ((_ is Star!15713) (regTwo!31939 (reg!16042 r!7292)))) b!5716946))

(assert (= (and b!5715696 ((_ is Union!15713) (regTwo!31939 (reg!16042 r!7292)))) b!5716947))

(declare-fun b_lambda!215997 () Bool)

(assert (= b_lambda!215979 (or b!5714534 b_lambda!215997)))

(assert (=> d!1803066 d!1802726))

(declare-fun b_lambda!215999 () Bool)

(assert (= b_lambda!215983 (or b!5714534 b_lambda!215999)))

(assert (=> d!1803140 d!1802722))

(declare-fun b_lambda!216001 () Bool)

(assert (= b_lambda!215975 (or d!1802648 b_lambda!216001)))

(declare-fun bs!1335990 () Bool)

(declare-fun d!1803312 () Bool)

(assert (= bs!1335990 (and d!1803312 d!1802648)))

(assert (=> bs!1335990 (= (dynLambda!24773 lambda!308761 (h!69763 (exprs!5597 setElem!38279))) (validRegex!7449 (h!69763 (exprs!5597 setElem!38279))))))

(declare-fun m!6670550 () Bool)

(assert (=> bs!1335990 m!6670550))

(assert (=> b!5715915 d!1803312))

(declare-fun b_lambda!216003 () Bool)

(assert (= b_lambda!215985 (or d!1802650 b_lambda!216003)))

(declare-fun bs!1335991 () Bool)

(declare-fun d!1803314 () Bool)

(assert (= bs!1335991 (and d!1803314 d!1802650)))

(assert (=> bs!1335991 (= (dynLambda!24773 lambda!308762 (h!69763 (exprs!5597 (h!69764 zl!343)))) (validRegex!7449 (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(declare-fun m!6670552 () Bool)

(assert (=> bs!1335991 m!6670552))

(assert (=> b!5716558 d!1803314))

(declare-fun b_lambda!216005 () Bool)

(assert (= b_lambda!215977 (or b!5714534 b_lambda!216005)))

(assert (=> d!1803018 d!1802724))

(declare-fun b_lambda!216007 () Bool)

(assert (= b_lambda!215995 (or b!5714528 b_lambda!216007)))

(declare-fun bs!1335992 () Bool)

(declare-fun d!1803316 () Bool)

(assert (= bs!1335992 (and d!1803316 b!5714528)))

(assert (=> bs!1335992 (= (dynLambda!24773 lambda!308687 (h!69763 lt!2277136)) (validRegex!7449 (h!69763 lt!2277136)))))

(declare-fun m!6670554 () Bool)

(assert (=> bs!1335992 m!6670554))

(assert (=> b!5716820 d!1803316))

(declare-fun b_lambda!216009 () Bool)

(assert (= b_lambda!215989 (or d!1802680 b_lambda!216009)))

(declare-fun bs!1335993 () Bool)

(declare-fun d!1803318 () Bool)

(assert (= bs!1335993 (and d!1803318 d!1802680)))

(assert (=> bs!1335993 (= (dynLambda!24773 lambda!308773 (h!69763 (unfocusZipperList!1141 zl!343))) (validRegex!7449 (h!69763 (unfocusZipperList!1141 zl!343))))))

(declare-fun m!6670556 () Bool)

(assert (=> bs!1335993 m!6670556))

(assert (=> b!5716658 d!1803318))

(declare-fun b_lambda!216011 () Bool)

(assert (= b_lambda!215981 (or b!5714534 b_lambda!216011)))

(assert (=> d!1803106 d!1802720))

(declare-fun b_lambda!216013 () Bool)

(assert (= b_lambda!215993 (or b!5714528 b_lambda!216013)))

(declare-fun bs!1335994 () Bool)

(declare-fun d!1803320 () Bool)

(assert (= bs!1335994 (and d!1803320 b!5714528)))

(assert (=> bs!1335994 (= (dynLambda!24773 lambda!308687 (h!69763 (++!13909 lt!2277136 lt!2277109))) (validRegex!7449 (h!69763 (++!13909 lt!2277136 lt!2277109))))))

(declare-fun m!6670558 () Bool)

(assert (=> bs!1335994 m!6670558))

(assert (=> b!5716818 d!1803320))

(declare-fun b_lambda!216015 () Bool)

(assert (= b_lambda!215987 (or d!1802682 b_lambda!216015)))

(declare-fun bs!1335995 () Bool)

(declare-fun d!1803322 () Bool)

(assert (= bs!1335995 (and d!1803322 d!1802682)))

(assert (=> bs!1335995 (= (dynLambda!24773 lambda!308776 (h!69763 lt!2277342)) (validRegex!7449 (h!69763 lt!2277342)))))

(declare-fun m!6670560 () Bool)

(assert (=> bs!1335995 m!6670560))

(assert (=> b!5716647 d!1803322))

(declare-fun b_lambda!216017 () Bool)

(assert (= b_lambda!215991 (or d!1802678 b_lambda!216017)))

(declare-fun bs!1335996 () Bool)

(declare-fun d!1803324 () Bool)

(assert (= bs!1335996 (and d!1803324 d!1802678)))

(assert (=> bs!1335996 (= (dynLambda!24773 lambda!308770 (h!69763 (exprs!5597 (h!69764 zl!343)))) (validRegex!7449 (h!69763 (exprs!5597 (h!69764 zl!343)))))))

(assert (=> bs!1335996 m!6670552))

(assert (=> b!5716757 d!1803324))

(check-sat (not b!5716006) (not bm!436283) (not d!1803246) (not b!5716660) (not b!5716344) (not b!5716450) (not bm!436427) (not b!5716126) (not b!5716325) (not bm!436367) (not b!5715996) (not bm!436386) (not b!5716321) (not b!5715736) (not d!1803156) (not d!1802938) (not b!5715813) (not d!1802942) (not b!5716881) (not b!5716433) (not b!5716484) (not b!5716080) (not b!5716182) (not b!5716541) (not b_lambda!216007) (not bs!1335994) (not b!5716405) (not b!5716106) (not bm!436456) (not d!1802992) (not b!5715820) (not d!1803138) (not b!5716919) (not b_lambda!216017) (not b!5716889) (not b!5716783) (not d!1803172) (not b!5716943) (not b!5716137) (not b!5716185) (not b!5716888) (not bm!436468) (not d!1803158) (not bm!436398) (not b!5716589) (not d!1803262) (not b_lambda!216011) (not b!5716746) (not b!5716730) (not b!5715939) (not b!5716158) (not b!5716469) (not b!5716841) (not b!5716557) (not d!1802764) (not d!1803210) (not bm!436401) (not b!5715906) (not bm!436338) (not setNonEmpty!38289) (not d!1803230) (not b!5716134) (not b!5716237) (not b!5716520) (not b!5716162) (not d!1803128) (not bm!436336) (not b!5716569) (not b!5716879) (not b!5716674) (not b!5716572) (not bm!436341) (not b!5716172) (not b!5716396) (not d!1803106) (not bm!436449) (not b!5715756) (not b!5716221) (not bm!436400) (not b!5716273) (not d!1803098) (not b!5716514) (not bm!436443) (not b!5716213) (not d!1803004) (not b!5716671) (not b_lambda!215971) (not d!1803018) (not b!5716913) (not bm!436314) (not b!5716938) (not bm!436471) (not b!5716105) (not b!5716931) (not bm!436374) (not b!5716426) (not bm!436309) (not b!5715983) (not d!1802784) (not setNonEmpty!38290) (not b!5716495) (not b!5716414) (not bm!436384) (not bm!436282) (not bm!436280) (not bm!436448) (not bm!436320) (not b!5715764) (not b!5716058) (not b!5716817) (not d!1803164) (not bm!436390) (not b!5716659) (not bs!1335993) (not b!5715745) (not b!5715761) (not b!5716235) (not b!5716124) (not d!1803218) (not b!5716074) (not d!1803100) (not b!5716510) (not bs!1335996) (not bm!436402) (not b!5716066) (not b!5716026) (not b!5716680) (not b!5715866) (not b!5716527) (not b!5716315) (not d!1803088) (not b!5715838) (not b!5715770) (not b!5716933) (not b!5716848) (not b!5716551) (not b!5716619) (not d!1802760) (not d!1803308) (not b!5716602) (not d!1803146) (not b!5716880) (not b!5716835) (not b!5716667) (not b!5716838) (not b!5716078) (not b!5715927) (not b!5716887) (not b!5716498) (not d!1803176) (not d!1803050) (not b!5716318) (not b!5716081) (not bm!436403) (not bm!436430) (not b!5715961) (not d!1803190) (not bm!436457) (not b!5716394) (not d!1802958) (not b!5716031) (not bm!436327) (not b!5716829) (not d!1803174) (not b!5715896) (not b!5716490) (not b!5716223) (not d!1803214) (not b!5716929) (not b!5716901) (not b!5716620) (not b!5716847) (not b!5716773) (not bm!436345) (not b!5716790) (not d!1803086) (not bm!436293) (not b!5715883) (not b!5716200) (not d!1802740) (not b!5716755) (not d!1803194) (not bm!436360) (not b!5716154) (not b!5716523) (not b!5715985) (not d!1802912) (not d!1803076) (not d!1802976) (not d!1802882) (not d!1803084) (not b_lambda!216001) (not b!5715956) (not bm!436373) (not b!5716716) (not bm!436308) (not b!5716947) (not b!5716613) (not bm!436351) (not b!5716775) (not b!5716759) (not bm!436410) (not d!1803206) (not d!1802814) (not b!5716316) (not bm!436284) (not d!1802862) (not b!5716174) (not d!1802732) (not b!5716844) (not b!5716206) (not bm!436332) (not b_lambda!215969) (not b!5716934) (not bm!436347) (not d!1803030) (not b!5716511) (not b!5716621) (not d!1803298) (not bm!436354) (not d!1803186) (not b!5716915) (not b!5716906) (not b!5716008) (not b!5716390) (not bm!436458) (not b!5716873) (not b!5715743) (not b!5716636) (not b!5715953) (not b!5716890) (not b!5715969) (not d!1803208) (not b!5716622) (not d!1803276) (not d!1802874) (not b!5716718) (not bm!436432) (not d!1803074) (not b!5716309) (not b!5716515) (not b!5716441) (not b!5716443) (not b_lambda!216009) (not d!1803228) (not b!5716389) (not bm!436418) (not b!5716656) (not b!5716866) (not b!5716761) (not b!5715738) (not bm!436376) (not b!5716681) (not b!5716204) (not b!5716945) (not d!1802968) (not bm!436453) (not bm!436435) (not d!1802908) (not b!5716571) (not d!1803040) (not d!1803196) (not bm!436375) (not d!1802776) (not b_lambda!216013) (not b!5716087) (not b!5716044) (not d!1803024) (not b!5716461) (not b!5716743) (not b!5716590) (not b!5716860) (not b_lambda!215973) (not d!1803282) (not d!1802842) (not b!5716056) (not d!1803216) (not d!1802944) (not b!5716937) (not bm!436442) (not b!5716489) (not d!1802804) (not d!1803250) (not b!5715894) (not b!5716267) (not b!5715907) (not d!1803294) (not b!5716877) (not bm!436460) (not d!1803000) (not b!5716190) (not b!5716898) (not b!5716407) (not b!5716902) (not b!5716858) (not b!5716254) (not b!5716089) (not b!5715824) (not d!1803038) (not bm!436459) (not d!1803168) (not bm!436371) (not bm!436472) (not b!5716792) (not d!1802890) (not b!5716035) (not d!1803140) (not b_lambda!216015) (not b!5716073) (not b!5716768) (not bm!436439) (not d!1803148) (not b!5715942) (not bm!436431) (not b!5716939) (not b!5715732) (not d!1802914) (not bm!436311) (not bs!1335991) (not b!5715873) (not b_lambda!215967) (not bm!436321) (not b!5716852) (not b!5716559) (not b!5716870) (not b!5716854) (not b!5716623) (not b!5716494) (not b!5716711) (not b!5716336) (not b!5715835) (not bm!436310) (not bm!436297) (not b!5716356) (not bm!436417) (not b!5716864) (not d!1802738) (not b!5716846) (not b!5716685) (not b!5716814) (not b!5716627) (not d!1803116) (not d!1803290) (not b!5715875) (not d!1803152) (not bm!436474) (not b!5716019) (not d!1802892) (not b!5716345) (not b!5716930) (not b!5716138) (not b!5716021) (not bm!436323) (not b!5716894) (not b!5716459) (not d!1802906) (not b!5716868) (not b!5716522) (not b!5716617) (not b!5716834) (not b!5715967) (not b!5716935) (not b!5716745) (not d!1803014) (not d!1803112) (not b!5716851) (not b!5716809) (not b!5715858) (not b!5716666) (not d!1803046) (not b!5716023) (not b!5716380) (not b!5716810) (not b!5716605) (not bm!436331) (not bm!436389) (not bm!436299) (not b!5716274) (not b_lambda!215999) (not b!5715889) (not b!5716437) (not b!5716012) (not d!1802810) (not b!5716042) (not b!5716142) (not b!5716689) (not b!5716188) (not d!1803036) (not d!1803154) (not bm!436346) (not b!5716444) (not d!1802808) (not bm!436379) (not b!5716867) (not b!5716186) (not b!5716831) (not bm!436428) (not b!5716544) (not b!5716038) (not d!1802830) (not b!5716121) (not d!1803280) (not b!5716432) (not d!1802998) (not b!5715976) (not b!5716922) (not bm!436383) (not b!5716827) (not b!5715887) (not b!5715855) (not b!5716103) (not bm!436473) (not d!1803022) (not bm!436396) (not b!5716497) (not bm!436447) (not d!1803142) (not d!1802932) (not b!5716941) (not b!5716821) tp_is_empty!40679 (not b!5715978) (not b!5715739) (not b!5716923) (not bm!436411) (not b!5716436) (not d!1802778) (not b!5716883) (not b!5716180) (not bm!436436) (not bm!436362) (not bm!436388) (not b!5716876) (not b!5716921) (not b!5715763) (not b!5715880) (not b!5715960) (not b!5716771) (not b!5715993) (not b!5715955) (not d!1803270) (not b!5716353) (not b!5716029) (not b!5716593) (not b!5715864) (not b!5716862) (not b!5716408) (not b!5716387) (not bm!436408) (not d!1803062) (not b!5716839) (not bm!436353) (not bm!436326) (not b!5716586) (not bm!436420) (not d!1802826) (not b!5716328) (not b!5715802) (not b!5716588) (not b!5715916) (not d!1802788) (not b!5716053) (not b!5716163) (not bm!436298) (not b!5716871) (not b!5716427) (not setNonEmpty!38288) (not b!5716462) (not b!5716946) (not b!5716907) (not bm!436437) (not d!1802816) (not d!1802730) (not b!5716764) (not bm!436317) (not b!5715819) (not bs!1335992) (not d!1802866) (not b!5716712) (not b!5716028) (not bm!436395) (not b_lambda!215997) (not bm!436421) (not b!5716529) (not b!5716485) (not b!5716833) (not b!5716463) (not b!5716911) (not d!1803066) (not d!1803278) (not b!5716471) (not d!1802762) (not d!1803232) (not d!1802828) (not b!5716843) (not b!5716819) (not d!1802782) (not b!5716487) (not b!5716678) (not b!5716550) (not b!5716016) (not b!5716760) (not b!5716018) (not b!5716343) (not d!1802940) (not b!5716025) (not b!5716555) (not b!5716914) (not b!5716899) (not b!5716382) (not b!5716592) (not d!1803244) (not b!5716292) (not b!5716701) (not b!5716011) (not d!1802966) (not bm!436370) (not b!5715972) (not bm!436363) (not b!5716700) (not bm!436415) (not b!5716727) (not bm!436368) (not b!5716378) (not d!1802772) (not b!5716567) (not d!1802896) (not bm!436387) (not b!5716278) (not b!5716801) (not b!5716179) (not b!5716211) (not b!5716616) (not b!5716486) (not bs!1335995) (not bm!436294) (not b!5716885) (not d!1803136) (not b!5716512) (not b!5715826) (not b!5716917) (not b!5716767) (not b!5715941) (not b!5716699) (not b!5716516) (not b_lambda!216003) (not b!5716918) (not b!5716872) (not b!5716856) (not bm!436426) (not b!5716330) (not bm!436328) (not bm!436419) (not d!1802972) (not b!5716416) (not b!5716664) (not b!5716314) (not b!5716842) (not b!5715817) (not d!1803110) (not b!5716069) (not bm!436339) (not b!5716903) (not b!5716513) (not bm!436465) (not b!5716207) (not b!5715924) (not d!1803272) (not bm!436335) (not d!1802894) (not b!5716648) (not b!5715938) (not b!5716634) (not b!5716893) (not d!1802990) (not b!5716808) (not b!5716007) (not bm!436382) (not b!5716630) (not b!5715868) (not b!5716265) (not bm!436305) (not bm!436356) (not b!5716479) (not b!5716536) (not b!5716925) (not b!5716758) (not b!5715882) (not b!5716257) (not b!5716705) (not b!5715799) (not d!1802770) (not b!5716942) (not bm!436470) (not d!1802970) (not d!1802898) (not b!5716412) (not b!5716863) (not b!5716037) (not b!5716581) (not b!5716816) (not bm!436355) (not b!5716534) (not b!5716280) (not b!5716763) (not d!1803096) (not b!5715757) (not b!5716629) (not b!5716878) (not b!5716448) (not d!1803078) (not b!5716741) (not d!1803200) (not b!5716785) (not b!5716786) (not bm!436454) (not b!5716317) (not b!5716895) (not d!1802946) (not d!1803082) (not b!5716175) (not b!5716271) (not b!5716543) (not d!1803188) (not b!5716159) (not b!5716927) (not b!5716488) (not b!5716645) (not d!1803202) (not b!5715869) (not b!5716335) (not b!5716289) (not b!5716777) (not d!1802774) (not b!5716071) (not bm!436307) (not bm!436424) (not b!5716112) (not b!5716909) (not bm!436441) (not b!5716837) (not b!5715910) (not b!5716770) (not b!5716779) (not bm!436409) (not b!5715979) (not d!1803102) (not b!5716673) (not b!5715904) (not b!5716009) (not b!5715768) (not b!5715876) (not b!5716319) (not b!5716537) (not b!5716232) (not d!1802910) (not d!1803144) (not d!1803080) (not bm!436324) (not d!1802978) (not setNonEmpty!38291) (not b!5716897) (not b!5716874) (not b!5716778) (not b!5715755) (not b!5716565) (not bm!436440) (not bm!436450) (not b!5716224) (not setNonEmpty!38292) (not d!1803170) (not bm!436364) (not b!5716015) (not b!5716855) (not b!5716905) (not b!5716383) (not d!1803114) (not bm!436350) (not b!5716812) (not b!5716859) (not b!5716464) (not d!1803286) (not bm!436380) (not d!1802980) (not b!5716110) (not bm!436313) (not b!5716491) (not d!1803284) (not b!5715971) (not b!5716324) (not b!5716320) (not b!5716892) (not d!1803132) (not d!1802860) (not b!5716155) (not b!5716910) (not bm!436340) (not b!5716591) (not b!5716587) (not b!5715753) (not d!1802904) (not d!1802864) (not b!5716687) (not bs!1335990) (not d!1802986) (not b!5715890) (not b!5716709) (not b!5716509) (not bm!436316) (not d!1802822) (not bm!436329) (not b_lambda!216005) (not bm!436414) (not b!5716926) (not b!5716850) (not d!1803026) (not b!5716099) (not d!1803300) (not bm!436466) (not bm!436434) (not bm!436429) (not d!1803222) (not b!5716183) (not b!5716401) (not b!5715803) (not b!5716530) (not d!1803212) (not d!1802916) (not d!1803134) (not d!1803162) (not d!1802844) (not bm!436304) (not b!5716548) (not bm!436359) (not b!5716884) (not b!5716085))
(check-sat)
