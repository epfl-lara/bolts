; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570250 () Bool)

(assert start!570250)

(declare-fun b!5435058 () Bool)

(assert (=> b!5435058 true))

(assert (=> b!5435058 true))

(declare-fun lambda!285441 () Int)

(declare-fun lambda!285440 () Int)

(assert (=> b!5435058 (not (= lambda!285441 lambda!285440))))

(assert (=> b!5435058 true))

(assert (=> b!5435058 true))

(declare-fun b!5435077 () Bool)

(assert (=> b!5435077 true))

(declare-fun bs!1254876 () Bool)

(declare-fun b!5435059 () Bool)

(assert (= bs!1254876 (and b!5435059 b!5435058)))

(declare-fun lambda!285443 () Int)

(declare-datatypes ((C!30736 0))(
  ( (C!30737 (val!25070 Int)) )
))
(declare-datatypes ((Regex!15233 0))(
  ( (ElementMatch!15233 (c!948537 C!30736)) (Concat!24078 (regOne!30978 Regex!15233) (regTwo!30978 Regex!15233)) (EmptyExpr!15233) (Star!15233 (reg!15562 Regex!15233)) (EmptyLang!15233) (Union!15233 (regOne!30979 Regex!15233) (regTwo!30979 Regex!15233)) )
))
(declare-fun r!7292 () Regex!15233)

(declare-fun lt!2215981 () Regex!15233)

(declare-datatypes ((List!61998 0))(
  ( (Nil!61874) (Cons!61874 (h!68322 C!30736) (t!375223 List!61998)) )
))
(declare-fun s!2326 () List!61998)

(assert (=> bs!1254876 (= (and (= Nil!61874 s!2326) (= (reg!15562 (regOne!30978 r!7292)) (regOne!30978 r!7292)) (= lt!2215981 (regTwo!30978 r!7292))) (= lambda!285443 lambda!285440))))

(assert (=> bs!1254876 (not (= lambda!285443 lambda!285441))))

(assert (=> b!5435059 true))

(assert (=> b!5435059 true))

(declare-fun b!5435047 () Bool)

(declare-fun e!3367455 () Bool)

(declare-fun e!3367452 () Bool)

(assert (=> b!5435047 (= e!3367455 e!3367452)))

(declare-fun res!2313130 () Bool)

(assert (=> b!5435047 (=> res!2313130 e!3367452)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61999 0))(
  ( (Nil!61875) (Cons!61875 (h!68323 Regex!15233) (t!375224 List!61999)) )
))
(declare-datatypes ((Context!9234 0))(
  ( (Context!9235 (exprs!5117 List!61999)) )
))
(declare-fun lt!2215967 () (InoxSet Context!9234))

(declare-fun lt!2215968 () (InoxSet Context!9234))

(assert (=> b!5435047 (= res!2313130 (not (= lt!2215967 lt!2215968)))))

(declare-fun lt!2215975 () Context!9234)

(declare-fun lambda!285442 () Int)

(declare-fun lt!2215946 () (InoxSet Context!9234))

(declare-fun flatMap!960 ((InoxSet Context!9234) Int) (InoxSet Context!9234))

(declare-fun derivationStepZipperUp!605 (Context!9234 C!30736) (InoxSet Context!9234))

(assert (=> b!5435047 (= (flatMap!960 lt!2215946 lambda!285442) (derivationStepZipperUp!605 lt!2215975 (h!68322 s!2326)))))

(declare-datatypes ((Unit!154454 0))(
  ( (Unit!154455) )
))
(declare-fun lt!2215950 () Unit!154454)

(declare-fun lemmaFlatMapOnSingletonSet!492 ((InoxSet Context!9234) Context!9234 Int) Unit!154454)

(assert (=> b!5435047 (= lt!2215950 (lemmaFlatMapOnSingletonSet!492 lt!2215946 lt!2215975 lambda!285442))))

(declare-fun lt!2215960 () (InoxSet Context!9234))

(assert (=> b!5435047 (= lt!2215960 (derivationStepZipperUp!605 lt!2215975 (h!68322 s!2326)))))

(declare-fun derivationStepZipper!1472 ((InoxSet Context!9234) C!30736) (InoxSet Context!9234))

(assert (=> b!5435047 (= lt!2215967 (derivationStepZipper!1472 lt!2215946 (h!68322 s!2326)))))

(assert (=> b!5435047 (= lt!2215946 (store ((as const (Array Context!9234 Bool)) false) lt!2215975 true))))

(declare-fun lt!2215980 () List!61999)

(assert (=> b!5435047 (= lt!2215975 (Context!9235 (Cons!61875 (reg!15562 (regOne!30978 r!7292)) lt!2215980)))))

(declare-fun b!5435048 () Bool)

(declare-fun res!2313115 () Bool)

(declare-fun e!3367456 () Bool)

(assert (=> b!5435048 (=> res!2313115 e!3367456)))

(declare-fun e!3367446 () Bool)

(assert (=> b!5435048 (= res!2313115 e!3367446)))

(declare-fun res!2313119 () Bool)

(assert (=> b!5435048 (=> (not res!2313119) (not e!3367446))))

(get-info :version)

(assert (=> b!5435048 (= res!2313119 ((_ is Concat!24078) (regOne!30978 r!7292)))))

(declare-fun b!5435049 () Bool)

(declare-fun res!2313108 () Bool)

(declare-fun e!3367451 () Bool)

(assert (=> b!5435049 (=> res!2313108 e!3367451)))

(declare-fun lt!2215957 () (InoxSet Context!9234))

(declare-fun matchZipper!1477 ((InoxSet Context!9234) List!61998) Bool)

(assert (=> b!5435049 (= res!2313108 (not (matchZipper!1477 lt!2215957 (t!375223 s!2326))))))

(declare-fun b!5435050 () Bool)

(declare-fun res!2313127 () Bool)

(declare-fun e!3367438 () Bool)

(assert (=> b!5435050 (=> res!2313127 e!3367438)))

(declare-datatypes ((List!62000 0))(
  ( (Nil!61876) (Cons!61876 (h!68324 Context!9234) (t!375225 List!62000)) )
))
(declare-fun zl!343 () List!62000)

(assert (=> b!5435050 (= res!2313127 (not ((_ is Cons!61875) (exprs!5117 (h!68324 zl!343)))))))

(declare-fun setIsEmpty!35475 () Bool)

(declare-fun setRes!35475 () Bool)

(assert (=> setIsEmpty!35475 setRes!35475))

(declare-fun res!2313124 () Bool)

(declare-fun e!3367443 () Bool)

(assert (=> start!570250 (=> (not res!2313124) (not e!3367443))))

(declare-fun validRegex!6969 (Regex!15233) Bool)

(assert (=> start!570250 (= res!2313124 (validRegex!6969 r!7292))))

(assert (=> start!570250 e!3367443))

(declare-fun e!3367458 () Bool)

(assert (=> start!570250 e!3367458))

(declare-fun condSetEmpty!35475 () Bool)

(declare-fun z!1189 () (InoxSet Context!9234))

(assert (=> start!570250 (= condSetEmpty!35475 (= z!1189 ((as const (Array Context!9234 Bool)) false)))))

(assert (=> start!570250 setRes!35475))

(declare-fun e!3367440 () Bool)

(assert (=> start!570250 e!3367440))

(declare-fun e!3367449 () Bool)

(assert (=> start!570250 e!3367449))

(declare-fun b!5435051 () Bool)

(declare-fun res!2313109 () Bool)

(declare-fun e!3367442 () Bool)

(assert (=> b!5435051 (=> res!2313109 e!3367442)))

(declare-fun lt!2215952 () Bool)

(assert (=> b!5435051 (= res!2313109 (not lt!2215952))))

(declare-fun b!5435052 () Bool)

(declare-fun e!3367448 () Unit!154454)

(declare-fun Unit!154456 () Unit!154454)

(assert (=> b!5435052 (= e!3367448 Unit!154456)))

(declare-fun lt!2215972 () (InoxSet Context!9234))

(declare-fun lt!2215965 () Unit!154454)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!470 ((InoxSet Context!9234) (InoxSet Context!9234) List!61998) Unit!154454)

(assert (=> b!5435052 (= lt!2215965 (lemmaZipperConcatMatchesSameAsBothZippers!470 lt!2215972 lt!2215957 (t!375223 s!2326)))))

(declare-fun res!2313139 () Bool)

(assert (=> b!5435052 (= res!2313139 (matchZipper!1477 lt!2215972 (t!375223 s!2326)))))

(declare-fun e!3367436 () Bool)

(assert (=> b!5435052 (=> res!2313139 e!3367436)))

(assert (=> b!5435052 (= (matchZipper!1477 ((_ map or) lt!2215972 lt!2215957) (t!375223 s!2326)) e!3367436)))

(declare-fun b!5435053 () Bool)

(declare-fun tp!1498892 () Bool)

(assert (=> b!5435053 (= e!3367458 tp!1498892)))

(declare-fun b!5435054 () Bool)

(declare-fun res!2313136 () Bool)

(assert (=> b!5435054 (=> res!2313136 e!3367438)))

(declare-fun isEmpty!33876 (List!62000) Bool)

(assert (=> b!5435054 (= res!2313136 (not (isEmpty!33876 (t!375225 zl!343))))))

(declare-fun b!5435055 () Bool)

(declare-fun res!2313112 () Bool)

(assert (=> b!5435055 (=> res!2313112 e!3367456)))

(assert (=> b!5435055 (= res!2313112 (or ((_ is Concat!24078) (regOne!30978 r!7292)) (not ((_ is Star!15233) (regOne!30978 r!7292)))))))

(declare-fun b!5435056 () Bool)

(declare-fun e!3367439 () Bool)

(assert (=> b!5435056 (= e!3367439 (not (matchZipper!1477 lt!2215957 (t!375223 s!2326))))))

(declare-fun b!5435057 () Bool)

(declare-fun Unit!154457 () Unit!154454)

(assert (=> b!5435057 (= e!3367448 Unit!154457)))

(declare-fun e!3367450 () Bool)

(assert (=> b!5435058 (= e!3367438 e!3367450)))

(declare-fun res!2313113 () Bool)

(assert (=> b!5435058 (=> res!2313113 e!3367450)))

(declare-fun lt!2215978 () Bool)

(declare-fun lt!2215951 () Bool)

(assert (=> b!5435058 (= res!2313113 (or (not (= lt!2215978 lt!2215951)) ((_ is Nil!61874) s!2326)))))

(declare-fun Exists!2414 (Int) Bool)

(assert (=> b!5435058 (= (Exists!2414 lambda!285440) (Exists!2414 lambda!285441))))

(declare-fun lt!2215949 () Unit!154454)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1068 (Regex!15233 Regex!15233 List!61998) Unit!154454)

(assert (=> b!5435058 (= lt!2215949 (lemmaExistCutMatchRandMatchRSpecEquivalent!1068 (regOne!30978 r!7292) (regTwo!30978 r!7292) s!2326))))

(assert (=> b!5435058 (= lt!2215951 (Exists!2414 lambda!285440))))

(declare-datatypes ((tuple2!64864 0))(
  ( (tuple2!64865 (_1!35735 List!61998) (_2!35735 List!61998)) )
))
(declare-datatypes ((Option!15344 0))(
  ( (None!15343) (Some!15343 (v!51372 tuple2!64864)) )
))
(declare-fun isDefined!12047 (Option!15344) Bool)

(declare-fun findConcatSeparation!1758 (Regex!15233 Regex!15233 List!61998 List!61998 List!61998) Option!15344)

(assert (=> b!5435058 (= lt!2215951 (isDefined!12047 (findConcatSeparation!1758 (regOne!30978 r!7292) (regTwo!30978 r!7292) Nil!61874 s!2326 s!2326)))))

(declare-fun lt!2215956 () Unit!154454)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1522 (Regex!15233 Regex!15233 List!61998) Unit!154454)

(assert (=> b!5435058 (= lt!2215956 (lemmaFindConcatSeparationEquivalentToExists!1522 (regOne!30978 r!7292) (regTwo!30978 r!7292) s!2326))))

(declare-fun e!3367453 () Bool)

(assert (=> b!5435059 (= e!3367453 true)))

(assert (=> b!5435059 (= (isDefined!12047 (findConcatSeparation!1758 (reg!15562 (regOne!30978 r!7292)) lt!2215981 Nil!61874 Nil!61874 Nil!61874)) (Exists!2414 lambda!285443))))

(declare-fun lt!2215962 () Unit!154454)

(assert (=> b!5435059 (= lt!2215962 (lemmaFindConcatSeparationEquivalentToExists!1522 (reg!15562 (regOne!30978 r!7292)) lt!2215981 Nil!61874))))

(declare-fun matchR!7418 (Regex!15233 List!61998) Bool)

(declare-fun matchRSpec!2336 (Regex!15233 List!61998) Bool)

(assert (=> b!5435059 (= (matchR!7418 lt!2215981 Nil!61874) (matchRSpec!2336 lt!2215981 Nil!61874))))

(declare-fun lt!2215971 () Unit!154454)

(declare-fun mainMatchTheorem!2336 (Regex!15233 List!61998) Unit!154454)

(assert (=> b!5435059 (= lt!2215971 (mainMatchTheorem!2336 lt!2215981 Nil!61874))))

(declare-fun b!5435060 () Bool)

(declare-fun e!3367445 () Bool)

(declare-fun e!3367444 () Bool)

(assert (=> b!5435060 (= e!3367445 e!3367444)))

(declare-fun res!2313135 () Bool)

(assert (=> b!5435060 (=> res!2313135 e!3367444)))

(declare-fun lt!2215982 () List!62000)

(declare-fun zipperDepth!174 (List!62000) Int)

(assert (=> b!5435060 (= res!2313135 (< (zipperDepth!174 zl!343) (zipperDepth!174 lt!2215982)))))

(declare-fun lt!2215954 () Context!9234)

(assert (=> b!5435060 (= lt!2215982 (Cons!61876 lt!2215954 Nil!61876))))

(declare-fun b!5435061 () Bool)

(declare-fun e!3367459 () Bool)

(declare-fun tp!1498890 () Bool)

(declare-fun inv!81329 (Context!9234) Bool)

(assert (=> b!5435061 (= e!3367440 (and (inv!81329 (h!68324 zl!343)) e!3367459 tp!1498890))))

(declare-fun b!5435062 () Bool)

(declare-fun res!2313125 () Bool)

(assert (=> b!5435062 (=> (not res!2313125) (not e!3367443))))

(declare-fun toList!9017 ((InoxSet Context!9234)) List!62000)

(assert (=> b!5435062 (= res!2313125 (= (toList!9017 z!1189) zl!343))))

(declare-fun b!5435063 () Bool)

(declare-fun tp_is_empty!39719 () Bool)

(assert (=> b!5435063 (= e!3367458 tp_is_empty!39719)))

(declare-fun b!5435064 () Bool)

(assert (=> b!5435064 (= e!3367456 e!3367455)))

(declare-fun res!2313110 () Bool)

(assert (=> b!5435064 (=> res!2313110 e!3367455)))

(assert (=> b!5435064 (= res!2313110 (not (= lt!2215972 lt!2215968)))))

(declare-fun lt!2215964 () Context!9234)

(declare-fun derivationStepZipperDown!681 (Regex!15233 Context!9234 C!30736) (InoxSet Context!9234))

(assert (=> b!5435064 (= lt!2215968 (derivationStepZipperDown!681 (reg!15562 (regOne!30978 r!7292)) lt!2215964 (h!68322 s!2326)))))

(assert (=> b!5435064 (= lt!2215964 (Context!9235 lt!2215980))))

(assert (=> b!5435064 (= lt!2215980 (Cons!61875 lt!2215981 (t!375224 (exprs!5117 (h!68324 zl!343)))))))

(assert (=> b!5435064 (= lt!2215981 (Star!15233 (reg!15562 (regOne!30978 r!7292))))))

(declare-fun b!5435065 () Bool)

(declare-fun e!3367437 () Bool)

(declare-fun e!3367441 () Bool)

(assert (=> b!5435065 (= e!3367437 e!3367441)))

(declare-fun res!2313123 () Bool)

(assert (=> b!5435065 (=> res!2313123 e!3367441)))

(declare-fun lt!2215983 () Context!9234)

(declare-fun unfocusZipper!975 (List!62000) Regex!15233)

(assert (=> b!5435065 (= res!2313123 (not (= (unfocusZipper!975 (Cons!61876 lt!2215983 Nil!61876)) (reg!15562 (regOne!30978 r!7292)))))))

(declare-fun lt!2215963 () (InoxSet Context!9234))

(assert (=> b!5435065 (= (flatMap!960 lt!2215963 lambda!285442) (derivationStepZipperUp!605 lt!2215964 (h!68322 s!2326)))))

(declare-fun lt!2215969 () Unit!154454)

(assert (=> b!5435065 (= lt!2215969 (lemmaFlatMapOnSingletonSet!492 lt!2215963 lt!2215964 lambda!285442))))

(declare-fun lt!2215948 () (InoxSet Context!9234))

(assert (=> b!5435065 (= (flatMap!960 lt!2215948 lambda!285442) (derivationStepZipperUp!605 lt!2215983 (h!68322 s!2326)))))

(declare-fun lt!2215959 () Unit!154454)

(assert (=> b!5435065 (= lt!2215959 (lemmaFlatMapOnSingletonSet!492 lt!2215948 lt!2215983 lambda!285442))))

(declare-fun lt!2215970 () (InoxSet Context!9234))

(assert (=> b!5435065 (= lt!2215970 (derivationStepZipperUp!605 lt!2215964 (h!68322 s!2326)))))

(declare-fun lt!2215979 () (InoxSet Context!9234))

(assert (=> b!5435065 (= lt!2215979 (derivationStepZipperUp!605 lt!2215983 (h!68322 s!2326)))))

(assert (=> b!5435065 (= lt!2215963 (store ((as const (Array Context!9234 Bool)) false) lt!2215964 true))))

(assert (=> b!5435065 (= lt!2215948 (store ((as const (Array Context!9234 Bool)) false) lt!2215983 true))))

(assert (=> b!5435065 (= lt!2215983 (Context!9235 (Cons!61875 (reg!15562 (regOne!30978 r!7292)) Nil!61875)))))

(declare-fun b!5435066 () Bool)

(declare-fun res!2313137 () Bool)

(assert (=> b!5435066 (=> res!2313137 e!3367438)))

(assert (=> b!5435066 (= res!2313137 (or ((_ is EmptyExpr!15233) r!7292) ((_ is EmptyLang!15233) r!7292) ((_ is ElementMatch!15233) r!7292) ((_ is Union!15233) r!7292) (not ((_ is Concat!24078) r!7292))))))

(declare-fun b!5435067 () Bool)

(declare-fun res!2313129 () Bool)

(assert (=> b!5435067 (=> res!2313129 e!3367450)))

(declare-fun isEmpty!33877 (List!61999) Bool)

(assert (=> b!5435067 (= res!2313129 (isEmpty!33877 (t!375224 (exprs!5117 (h!68324 zl!343)))))))

(declare-fun b!5435068 () Bool)

(assert (=> b!5435068 (= e!3367444 e!3367453)))

(declare-fun res!2313122 () Bool)

(assert (=> b!5435068 (=> res!2313122 e!3367453)))

(assert (=> b!5435068 (= res!2313122 (not (matchR!7418 (regTwo!30978 r!7292) s!2326)))))

(declare-fun lt!2215958 () Regex!15233)

(declare-fun lt!2215953 () (InoxSet Context!9234))

(assert (=> b!5435068 (= (matchR!7418 lt!2215958 s!2326) (matchZipper!1477 lt!2215953 s!2326))))

(declare-fun lt!2215947 () Unit!154454)

(declare-fun theoremZipperRegexEquiv!537 ((InoxSet Context!9234) List!62000 Regex!15233 List!61998) Unit!154454)

(assert (=> b!5435068 (= lt!2215947 (theoremZipperRegexEquiv!537 lt!2215953 lt!2215982 lt!2215958 s!2326))))

(declare-fun b!5435069 () Bool)

(declare-fun res!2313114 () Bool)

(assert (=> b!5435069 (=> res!2313114 e!3367442)))

(assert (=> b!5435069 (= res!2313114 (not (matchZipper!1477 z!1189 s!2326)))))

(declare-fun b!5435070 () Bool)

(assert (=> b!5435070 (= e!3367442 e!3367451)))

(declare-fun res!2313111 () Bool)

(assert (=> b!5435070 (=> res!2313111 e!3367451)))

(assert (=> b!5435070 (= res!2313111 e!3367439)))

(declare-fun res!2313106 () Bool)

(assert (=> b!5435070 (=> (not res!2313106) (not e!3367439))))

(declare-fun lt!2215976 () Bool)

(assert (=> b!5435070 (= res!2313106 (not lt!2215976))))

(assert (=> b!5435070 (= lt!2215976 (matchZipper!1477 lt!2215972 (t!375223 s!2326)))))

(declare-fun b!5435071 () Bool)

(declare-fun res!2313107 () Bool)

(assert (=> b!5435071 (=> res!2313107 e!3367438)))

(declare-fun generalisedUnion!1162 (List!61999) Regex!15233)

(declare-fun unfocusZipperList!675 (List!62000) List!61999)

(assert (=> b!5435071 (= res!2313107 (not (= r!7292 (generalisedUnion!1162 (unfocusZipperList!675 zl!343)))))))

(declare-fun b!5435072 () Bool)

(declare-fun tp!1498891 () Bool)

(declare-fun tp!1498889 () Bool)

(assert (=> b!5435072 (= e!3367458 (and tp!1498891 tp!1498889))))

(declare-fun b!5435073 () Bool)

(assert (=> b!5435073 (= e!3367441 e!3367442)))

(declare-fun res!2313116 () Bool)

(assert (=> b!5435073 (=> res!2313116 e!3367442)))

(assert (=> b!5435073 (= res!2313116 lt!2215978)))

(declare-fun lt!2215961 () Regex!15233)

(assert (=> b!5435073 (= (matchR!7418 lt!2215961 s!2326) (matchRSpec!2336 lt!2215961 s!2326))))

(declare-fun lt!2215984 () Unit!154454)

(assert (=> b!5435073 (= lt!2215984 (mainMatchTheorem!2336 lt!2215961 s!2326))))

(declare-fun b!5435074 () Bool)

(declare-fun res!2313126 () Bool)

(assert (=> b!5435074 (=> res!2313126 e!3367438)))

(declare-fun generalisedConcat!902 (List!61999) Regex!15233)

(assert (=> b!5435074 (= res!2313126 (not (= r!7292 (generalisedConcat!902 (exprs!5117 (h!68324 zl!343))))))))

(declare-fun b!5435075 () Bool)

(declare-fun e!3367457 () Bool)

(assert (=> b!5435075 (= e!3367451 e!3367457)))

(declare-fun res!2313133 () Bool)

(assert (=> b!5435075 (=> res!2313133 e!3367457)))

(assert (=> b!5435075 (= res!2313133 (not (= lt!2215957 (derivationStepZipper!1472 lt!2215953 (h!68322 s!2326)))))))

(assert (=> b!5435075 (= (flatMap!960 lt!2215953 lambda!285442) (derivationStepZipperUp!605 lt!2215954 (h!68322 s!2326)))))

(declare-fun lt!2215973 () Unit!154454)

(assert (=> b!5435075 (= lt!2215973 (lemmaFlatMapOnSingletonSet!492 lt!2215953 lt!2215954 lambda!285442))))

(assert (=> b!5435075 (= lt!2215953 (store ((as const (Array Context!9234 Bool)) false) lt!2215954 true))))

(declare-fun b!5435076 () Bool)

(declare-fun e!3367454 () Bool)

(assert (=> b!5435076 (= e!3367454 (not e!3367438))))

(declare-fun res!2313132 () Bool)

(assert (=> b!5435076 (=> res!2313132 e!3367438)))

(assert (=> b!5435076 (= res!2313132 (not ((_ is Cons!61876) zl!343)))))

(assert (=> b!5435076 (= lt!2215978 (matchRSpec!2336 r!7292 s!2326))))

(assert (=> b!5435076 (= lt!2215978 (matchR!7418 r!7292 s!2326))))

(declare-fun lt!2215985 () Unit!154454)

(assert (=> b!5435076 (= lt!2215985 (mainMatchTheorem!2336 r!7292 s!2326))))

(assert (=> b!5435077 (= e!3367450 e!3367456)))

(declare-fun res!2313134 () Bool)

(assert (=> b!5435077 (=> res!2313134 e!3367456)))

(assert (=> b!5435077 (= res!2313134 (or (and ((_ is ElementMatch!15233) (regOne!30978 r!7292)) (= (c!948537 (regOne!30978 r!7292)) (h!68322 s!2326))) ((_ is Union!15233) (regOne!30978 r!7292))))))

(declare-fun lt!2215974 () Unit!154454)

(assert (=> b!5435077 (= lt!2215974 e!3367448)))

(declare-fun c!948536 () Bool)

(assert (=> b!5435077 (= c!948536 lt!2215952)))

(declare-fun nullable!5402 (Regex!15233) Bool)

(assert (=> b!5435077 (= lt!2215952 (nullable!5402 (h!68323 (exprs!5117 (h!68324 zl!343)))))))

(assert (=> b!5435077 (= (flatMap!960 z!1189 lambda!285442) (derivationStepZipperUp!605 (h!68324 zl!343) (h!68322 s!2326)))))

(declare-fun lt!2215966 () Unit!154454)

(assert (=> b!5435077 (= lt!2215966 (lemmaFlatMapOnSingletonSet!492 z!1189 (h!68324 zl!343) lambda!285442))))

(assert (=> b!5435077 (= lt!2215957 (derivationStepZipperUp!605 lt!2215954 (h!68322 s!2326)))))

(assert (=> b!5435077 (= lt!2215972 (derivationStepZipperDown!681 (h!68323 (exprs!5117 (h!68324 zl!343))) lt!2215954 (h!68322 s!2326)))))

(assert (=> b!5435077 (= lt!2215954 (Context!9235 (t!375224 (exprs!5117 (h!68324 zl!343)))))))

(declare-fun lt!2215986 () (InoxSet Context!9234))

(assert (=> b!5435077 (= lt!2215986 (derivationStepZipperUp!605 (Context!9235 (Cons!61875 (h!68323 (exprs!5117 (h!68324 zl!343))) (t!375224 (exprs!5117 (h!68324 zl!343))))) (h!68322 s!2326)))))

(declare-fun b!5435078 () Bool)

(declare-fun tp!1498884 () Bool)

(assert (=> b!5435078 (= e!3367449 (and tp_is_empty!39719 tp!1498884))))

(declare-fun b!5435079 () Bool)

(declare-fun res!2313105 () Bool)

(assert (=> b!5435079 (=> res!2313105 e!3367441)))

(declare-fun lt!2215977 () Regex!15233)

(assert (=> b!5435079 (= res!2313105 (not (= (unfocusZipper!975 (Cons!61876 lt!2215964 Nil!61876)) lt!2215977)))))

(declare-fun b!5435080 () Bool)

(declare-fun tp!1498885 () Bool)

(assert (=> b!5435080 (= e!3367459 tp!1498885)))

(declare-fun b!5435081 () Bool)

(declare-fun e!3367460 () Bool)

(assert (=> b!5435081 (= e!3367460 e!3367437)))

(declare-fun res!2313128 () Bool)

(assert (=> b!5435081 (=> res!2313128 e!3367437)))

(assert (=> b!5435081 (= res!2313128 (not (= (unfocusZipper!975 (Cons!61876 lt!2215975 Nil!61876)) lt!2215961)))))

(assert (=> b!5435081 (= lt!2215961 (Concat!24078 (reg!15562 (regOne!30978 r!7292)) lt!2215977))))

(declare-fun b!5435082 () Bool)

(assert (=> b!5435082 (= e!3367443 e!3367454)))

(declare-fun res!2313121 () Bool)

(assert (=> b!5435082 (=> (not res!2313121) (not e!3367454))))

(declare-fun lt!2215955 () Regex!15233)

(assert (=> b!5435082 (= res!2313121 (= r!7292 lt!2215955))))

(assert (=> b!5435082 (= lt!2215955 (unfocusZipper!975 zl!343))))

(declare-fun b!5435083 () Bool)

(declare-fun res!2313117 () Bool)

(assert (=> b!5435083 (=> res!2313117 e!3367452)))

(assert (=> b!5435083 (= res!2313117 (not (= lt!2215955 r!7292)))))

(declare-fun b!5435084 () Bool)

(assert (=> b!5435084 (= e!3367436 (matchZipper!1477 lt!2215957 (t!375223 s!2326)))))

(declare-fun b!5435085 () Bool)

(assert (=> b!5435085 (= e!3367446 (nullable!5402 (regOne!30978 (regOne!30978 r!7292))))))

(declare-fun b!5435086 () Bool)

(declare-fun e!3367447 () Bool)

(declare-fun tp!1498888 () Bool)

(assert (=> b!5435086 (= e!3367447 tp!1498888)))

(declare-fun b!5435087 () Bool)

(declare-fun tp!1498886 () Bool)

(declare-fun tp!1498893 () Bool)

(assert (=> b!5435087 (= e!3367458 (and tp!1498886 tp!1498893))))

(declare-fun b!5435088 () Bool)

(declare-fun res!2313118 () Bool)

(assert (=> b!5435088 (=> res!2313118 e!3367452)))

(assert (=> b!5435088 (= res!2313118 (not (= (matchZipper!1477 lt!2215946 s!2326) (matchZipper!1477 lt!2215967 (t!375223 s!2326)))))))

(declare-fun b!5435089 () Bool)

(declare-fun res!2313120 () Bool)

(assert (=> b!5435089 (=> res!2313120 e!3367451)))

(assert (=> b!5435089 (= res!2313120 lt!2215976)))

(declare-fun b!5435090 () Bool)

(assert (=> b!5435090 (= e!3367452 e!3367460)))

(declare-fun res!2313138 () Bool)

(assert (=> b!5435090 (=> res!2313138 e!3367460)))

(assert (=> b!5435090 (= res!2313138 (not (= r!7292 lt!2215977)))))

(assert (=> b!5435090 (= lt!2215977 (Concat!24078 lt!2215981 (regTwo!30978 r!7292)))))

(declare-fun setElem!35475 () Context!9234)

(declare-fun tp!1498887 () Bool)

(declare-fun setNonEmpty!35475 () Bool)

(assert (=> setNonEmpty!35475 (= setRes!35475 (and tp!1498887 (inv!81329 setElem!35475) e!3367447))))

(declare-fun setRest!35475 () (InoxSet Context!9234))

(assert (=> setNonEmpty!35475 (= z!1189 ((_ map or) (store ((as const (Array Context!9234 Bool)) false) setElem!35475 true) setRest!35475))))

(declare-fun b!5435091 () Bool)

(assert (=> b!5435091 (= e!3367457 e!3367445)))

(declare-fun res!2313131 () Bool)

(assert (=> b!5435091 (=> res!2313131 e!3367445)))

(declare-fun regexDepth!189 (Regex!15233) Int)

(assert (=> b!5435091 (= res!2313131 (< (regexDepth!189 r!7292) (regexDepth!189 lt!2215958)))))

(assert (=> b!5435091 (= lt!2215958 (generalisedConcat!902 (t!375224 (exprs!5117 (h!68324 zl!343)))))))

(assert (= (and start!570250 res!2313124) b!5435062))

(assert (= (and b!5435062 res!2313125) b!5435082))

(assert (= (and b!5435082 res!2313121) b!5435076))

(assert (= (and b!5435076 (not res!2313132)) b!5435054))

(assert (= (and b!5435054 (not res!2313136)) b!5435074))

(assert (= (and b!5435074 (not res!2313126)) b!5435050))

(assert (= (and b!5435050 (not res!2313127)) b!5435071))

(assert (= (and b!5435071 (not res!2313107)) b!5435066))

(assert (= (and b!5435066 (not res!2313137)) b!5435058))

(assert (= (and b!5435058 (not res!2313113)) b!5435067))

(assert (= (and b!5435067 (not res!2313129)) b!5435077))

(assert (= (and b!5435077 c!948536) b!5435052))

(assert (= (and b!5435077 (not c!948536)) b!5435057))

(assert (= (and b!5435052 (not res!2313139)) b!5435084))

(assert (= (and b!5435077 (not res!2313134)) b!5435048))

(assert (= (and b!5435048 res!2313119) b!5435085))

(assert (= (and b!5435048 (not res!2313115)) b!5435055))

(assert (= (and b!5435055 (not res!2313112)) b!5435064))

(assert (= (and b!5435064 (not res!2313110)) b!5435047))

(assert (= (and b!5435047 (not res!2313130)) b!5435088))

(assert (= (and b!5435088 (not res!2313118)) b!5435083))

(assert (= (and b!5435083 (not res!2313117)) b!5435090))

(assert (= (and b!5435090 (not res!2313138)) b!5435081))

(assert (= (and b!5435081 (not res!2313128)) b!5435065))

(assert (= (and b!5435065 (not res!2313123)) b!5435079))

(assert (= (and b!5435079 (not res!2313105)) b!5435073))

(assert (= (and b!5435073 (not res!2313116)) b!5435069))

(assert (= (and b!5435069 (not res!2313114)) b!5435051))

(assert (= (and b!5435051 (not res!2313109)) b!5435070))

(assert (= (and b!5435070 res!2313106) b!5435056))

(assert (= (and b!5435070 (not res!2313111)) b!5435089))

(assert (= (and b!5435089 (not res!2313120)) b!5435049))

(assert (= (and b!5435049 (not res!2313108)) b!5435075))

(assert (= (and b!5435075 (not res!2313133)) b!5435091))

(assert (= (and b!5435091 (not res!2313131)) b!5435060))

(assert (= (and b!5435060 (not res!2313135)) b!5435068))

(assert (= (and b!5435068 (not res!2313122)) b!5435059))

(assert (= (and start!570250 ((_ is ElementMatch!15233) r!7292)) b!5435063))

(assert (= (and start!570250 ((_ is Concat!24078) r!7292)) b!5435072))

(assert (= (and start!570250 ((_ is Star!15233) r!7292)) b!5435053))

(assert (= (and start!570250 ((_ is Union!15233) r!7292)) b!5435087))

(assert (= (and start!570250 condSetEmpty!35475) setIsEmpty!35475))

(assert (= (and start!570250 (not condSetEmpty!35475)) setNonEmpty!35475))

(assert (= setNonEmpty!35475 b!5435086))

(assert (= b!5435061 b!5435080))

(assert (= (and start!570250 ((_ is Cons!61876) zl!343)) b!5435061))

(assert (= (and start!570250 ((_ is Cons!61874) s!2326)) b!5435078))

(declare-fun m!6457144 () Bool)

(assert (=> b!5435059 m!6457144))

(declare-fun m!6457146 () Bool)

(assert (=> b!5435059 m!6457146))

(declare-fun m!6457148 () Bool)

(assert (=> b!5435059 m!6457148))

(declare-fun m!6457150 () Bool)

(assert (=> b!5435059 m!6457150))

(declare-fun m!6457152 () Bool)

(assert (=> b!5435059 m!6457152))

(declare-fun m!6457154 () Bool)

(assert (=> b!5435059 m!6457154))

(declare-fun m!6457156 () Bool)

(assert (=> b!5435059 m!6457156))

(assert (=> b!5435059 m!6457152))

(declare-fun m!6457158 () Bool)

(assert (=> b!5435060 m!6457158))

(declare-fun m!6457160 () Bool)

(assert (=> b!5435060 m!6457160))

(declare-fun m!6457162 () Bool)

(assert (=> b!5435082 m!6457162))

(declare-fun m!6457164 () Bool)

(assert (=> b!5435067 m!6457164))

(declare-fun m!6457166 () Bool)

(assert (=> b!5435085 m!6457166))

(declare-fun m!6457168 () Bool)

(assert (=> b!5435047 m!6457168))

(declare-fun m!6457170 () Bool)

(assert (=> b!5435047 m!6457170))

(declare-fun m!6457172 () Bool)

(assert (=> b!5435047 m!6457172))

(declare-fun m!6457174 () Bool)

(assert (=> b!5435047 m!6457174))

(declare-fun m!6457176 () Bool)

(assert (=> b!5435047 m!6457176))

(declare-fun m!6457178 () Bool)

(assert (=> b!5435076 m!6457178))

(declare-fun m!6457180 () Bool)

(assert (=> b!5435076 m!6457180))

(declare-fun m!6457182 () Bool)

(assert (=> b!5435076 m!6457182))

(declare-fun m!6457184 () Bool)

(assert (=> b!5435079 m!6457184))

(declare-fun m!6457186 () Bool)

(assert (=> b!5435061 m!6457186))

(declare-fun m!6457188 () Bool)

(assert (=> b!5435070 m!6457188))

(declare-fun m!6457190 () Bool)

(assert (=> b!5435052 m!6457190))

(assert (=> b!5435052 m!6457188))

(declare-fun m!6457192 () Bool)

(assert (=> b!5435052 m!6457192))

(declare-fun m!6457194 () Bool)

(assert (=> b!5435081 m!6457194))

(declare-fun m!6457196 () Bool)

(assert (=> b!5435056 m!6457196))

(declare-fun m!6457198 () Bool)

(assert (=> b!5435091 m!6457198))

(declare-fun m!6457200 () Bool)

(assert (=> b!5435091 m!6457200))

(declare-fun m!6457202 () Bool)

(assert (=> b!5435091 m!6457202))

(declare-fun m!6457204 () Bool)

(assert (=> b!5435054 m!6457204))

(assert (=> b!5435049 m!6457196))

(declare-fun m!6457206 () Bool)

(assert (=> b!5435064 m!6457206))

(declare-fun m!6457208 () Bool)

(assert (=> b!5435068 m!6457208))

(declare-fun m!6457210 () Bool)

(assert (=> b!5435068 m!6457210))

(declare-fun m!6457212 () Bool)

(assert (=> b!5435068 m!6457212))

(declare-fun m!6457214 () Bool)

(assert (=> b!5435068 m!6457214))

(declare-fun m!6457216 () Bool)

(assert (=> b!5435065 m!6457216))

(declare-fun m!6457218 () Bool)

(assert (=> b!5435065 m!6457218))

(declare-fun m!6457220 () Bool)

(assert (=> b!5435065 m!6457220))

(declare-fun m!6457222 () Bool)

(assert (=> b!5435065 m!6457222))

(declare-fun m!6457224 () Bool)

(assert (=> b!5435065 m!6457224))

(declare-fun m!6457226 () Bool)

(assert (=> b!5435065 m!6457226))

(declare-fun m!6457228 () Bool)

(assert (=> b!5435065 m!6457228))

(declare-fun m!6457230 () Bool)

(assert (=> b!5435065 m!6457230))

(declare-fun m!6457232 () Bool)

(assert (=> b!5435065 m!6457232))

(declare-fun m!6457234 () Bool)

(assert (=> b!5435074 m!6457234))

(declare-fun m!6457236 () Bool)

(assert (=> b!5435062 m!6457236))

(declare-fun m!6457238 () Bool)

(assert (=> b!5435075 m!6457238))

(declare-fun m!6457240 () Bool)

(assert (=> b!5435075 m!6457240))

(declare-fun m!6457242 () Bool)

(assert (=> b!5435075 m!6457242))

(declare-fun m!6457244 () Bool)

(assert (=> b!5435075 m!6457244))

(declare-fun m!6457246 () Bool)

(assert (=> b!5435075 m!6457246))

(assert (=> b!5435084 m!6457196))

(declare-fun m!6457248 () Bool)

(assert (=> b!5435077 m!6457248))

(declare-fun m!6457250 () Bool)

(assert (=> b!5435077 m!6457250))

(assert (=> b!5435077 m!6457240))

(declare-fun m!6457252 () Bool)

(assert (=> b!5435077 m!6457252))

(declare-fun m!6457254 () Bool)

(assert (=> b!5435077 m!6457254))

(declare-fun m!6457256 () Bool)

(assert (=> b!5435077 m!6457256))

(declare-fun m!6457258 () Bool)

(assert (=> b!5435077 m!6457258))

(declare-fun m!6457260 () Bool)

(assert (=> b!5435069 m!6457260))

(declare-fun m!6457262 () Bool)

(assert (=> setNonEmpty!35475 m!6457262))

(declare-fun m!6457264 () Bool)

(assert (=> start!570250 m!6457264))

(declare-fun m!6457266 () Bool)

(assert (=> b!5435073 m!6457266))

(declare-fun m!6457268 () Bool)

(assert (=> b!5435073 m!6457268))

(declare-fun m!6457270 () Bool)

(assert (=> b!5435073 m!6457270))

(declare-fun m!6457272 () Bool)

(assert (=> b!5435071 m!6457272))

(assert (=> b!5435071 m!6457272))

(declare-fun m!6457274 () Bool)

(assert (=> b!5435071 m!6457274))

(declare-fun m!6457276 () Bool)

(assert (=> b!5435088 m!6457276))

(declare-fun m!6457278 () Bool)

(assert (=> b!5435088 m!6457278))

(declare-fun m!6457280 () Bool)

(assert (=> b!5435058 m!6457280))

(declare-fun m!6457282 () Bool)

(assert (=> b!5435058 m!6457282))

(declare-fun m!6457284 () Bool)

(assert (=> b!5435058 m!6457284))

(assert (=> b!5435058 m!6457284))

(assert (=> b!5435058 m!6457280))

(declare-fun m!6457286 () Bool)

(assert (=> b!5435058 m!6457286))

(declare-fun m!6457288 () Bool)

(assert (=> b!5435058 m!6457288))

(declare-fun m!6457290 () Bool)

(assert (=> b!5435058 m!6457290))

(check-sat (not b!5435056) (not b!5435047) (not b!5435070) (not b!5435081) (not b!5435074) (not b!5435061) (not b!5435077) (not b!5435082) (not b!5435079) (not b!5435091) (not b!5435076) (not b!5435071) (not b!5435086) (not b!5435078) (not b!5435067) (not b!5435084) (not b!5435064) (not b!5435060) (not b!5435088) (not b!5435075) (not b!5435073) (not b!5435085) (not b!5435065) (not b!5435052) (not b!5435080) (not setNonEmpty!35475) (not b!5435068) (not b!5435054) (not b!5435053) (not b!5435059) (not start!570250) (not b!5435062) (not b!5435058) (not b!5435049) (not b!5435069) (not b!5435072) (not b!5435087) tp_is_empty!39719)
(check-sat)
