; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565982 () Bool)

(assert start!565982)

(declare-fun b!5381801 () Bool)

(assert (=> b!5381801 true))

(assert (=> b!5381801 true))

(declare-fun lambda!278537 () Int)

(declare-fun lambda!278536 () Int)

(assert (=> b!5381801 (not (= lambda!278537 lambda!278536))))

(assert (=> b!5381801 true))

(assert (=> b!5381801 true))

(declare-fun b!5381788 () Bool)

(assert (=> b!5381788 true))

(declare-fun bs!1246088 () Bool)

(declare-fun b!5381809 () Bool)

(assert (= bs!1246088 (and b!5381809 b!5381801)))

(declare-fun lambda!278539 () Int)

(declare-datatypes ((C!30484 0))(
  ( (C!30485 (val!24944 Int)) )
))
(declare-datatypes ((Regex!15107 0))(
  ( (ElementMatch!15107 (c!938051 C!30484)) (Concat!23952 (regOne!30726 Regex!15107) (regTwo!30726 Regex!15107)) (EmptyExpr!15107) (Star!15107 (reg!15436 Regex!15107)) (EmptyLang!15107) (Union!15107 (regOne!30727 Regex!15107) (regTwo!30727 Regex!15107)) )
))
(declare-fun lt!2191097 () Regex!15107)

(declare-fun r!7292 () Regex!15107)

(assert (=> bs!1246088 (= (= lt!2191097 (regOne!30726 r!7292)) (= lambda!278539 lambda!278536))))

(assert (=> bs!1246088 (not (= lambda!278539 lambda!278537))))

(assert (=> b!5381809 true))

(assert (=> b!5381809 true))

(assert (=> b!5381809 true))

(declare-fun lambda!278540 () Int)

(assert (=> bs!1246088 (not (= lambda!278540 lambda!278536))))

(assert (=> bs!1246088 (= (= lt!2191097 (regOne!30726 r!7292)) (= lambda!278540 lambda!278537))))

(assert (=> b!5381809 (not (= lambda!278540 lambda!278539))))

(assert (=> b!5381809 true))

(assert (=> b!5381809 true))

(assert (=> b!5381809 true))

(declare-fun bs!1246089 () Bool)

(declare-fun b!5381790 () Bool)

(assert (= bs!1246089 (and b!5381790 b!5381801)))

(declare-datatypes ((List!61620 0))(
  ( (Nil!61496) (Cons!61496 (h!67944 C!30484) (t!374843 List!61620)) )
))
(declare-fun s!2326 () List!61620)

(declare-datatypes ((tuple2!64612 0))(
  ( (tuple2!64613 (_1!35609 List!61620) (_2!35609 List!61620)) )
))
(declare-fun lt!2191084 () tuple2!64612)

(declare-fun lambda!278541 () Int)

(assert (=> bs!1246089 (= (and (= (_1!35609 lt!2191084) s!2326) (= (reg!15436 (regOne!30726 r!7292)) (regOne!30726 r!7292)) (= lt!2191097 (regTwo!30726 r!7292))) (= lambda!278541 lambda!278536))))

(assert (=> bs!1246089 (not (= lambda!278541 lambda!278537))))

(declare-fun bs!1246090 () Bool)

(assert (= bs!1246090 (and b!5381790 b!5381809)))

(assert (=> bs!1246090 (= (and (= (_1!35609 lt!2191084) s!2326) (= (reg!15436 (regOne!30726 r!7292)) lt!2191097) (= lt!2191097 (regTwo!30726 r!7292))) (= lambda!278541 lambda!278539))))

(assert (=> bs!1246090 (not (= lambda!278541 lambda!278540))))

(assert (=> b!5381790 true))

(assert (=> b!5381790 true))

(assert (=> b!5381790 true))

(declare-fun lambda!278542 () Int)

(assert (=> bs!1246089 (not (= lambda!278542 lambda!278536))))

(assert (=> bs!1246090 (not (= lambda!278542 lambda!278539))))

(assert (=> bs!1246089 (not (= lambda!278542 lambda!278537))))

(assert (=> b!5381790 (not (= lambda!278542 lambda!278541))))

(assert (=> bs!1246090 (not (= lambda!278542 lambda!278540))))

(assert (=> b!5381790 true))

(assert (=> b!5381790 true))

(assert (=> b!5381790 true))

(declare-fun lambda!278543 () Int)

(assert (=> bs!1246090 (not (= lambda!278543 lambda!278539))))

(assert (=> bs!1246089 (= (and (= (_1!35609 lt!2191084) s!2326) (= (reg!15436 (regOne!30726 r!7292)) (regOne!30726 r!7292)) (= lt!2191097 (regTwo!30726 r!7292))) (= lambda!278543 lambda!278537))))

(assert (=> b!5381790 (not (= lambda!278543 lambda!278541))))

(assert (=> bs!1246090 (= (and (= (_1!35609 lt!2191084) s!2326) (= (reg!15436 (regOne!30726 r!7292)) lt!2191097) (= lt!2191097 (regTwo!30726 r!7292))) (= lambda!278543 lambda!278540))))

(assert (=> bs!1246089 (not (= lambda!278543 lambda!278536))))

(assert (=> b!5381790 (not (= lambda!278543 lambda!278542))))

(assert (=> b!5381790 true))

(assert (=> b!5381790 true))

(assert (=> b!5381790 true))

(declare-fun e!3338505 () Bool)

(declare-datatypes ((List!61621 0))(
  ( (Nil!61497) (Cons!61497 (h!67945 Regex!15107) (t!374844 List!61621)) )
))
(declare-datatypes ((Context!8982 0))(
  ( (Context!8983 (exprs!4991 List!61621)) )
))
(declare-fun setElem!34913 () Context!8982)

(declare-fun tp!1491509 () Bool)

(declare-fun setNonEmpty!34913 () Bool)

(declare-fun setRes!34913 () Bool)

(declare-fun inv!81014 (Context!8982) Bool)

(assert (=> setNonEmpty!34913 (= setRes!34913 (and tp!1491509 (inv!81014 setElem!34913) e!3338505))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8982))

(declare-fun setRest!34913 () (InoxSet Context!8982))

(assert (=> setNonEmpty!34913 (= z!1189 ((_ map or) (store ((as const (Array Context!8982 Bool)) false) setElem!34913 true) setRest!34913))))

(declare-fun e!3338508 () Bool)

(declare-fun e!3338498 () Bool)

(assert (=> b!5381788 (= e!3338508 e!3338498)))

(declare-fun res!2285027 () Bool)

(assert (=> b!5381788 (=> res!2285027 e!3338498)))

(get-info :version)

(assert (=> b!5381788 (= res!2285027 (or (and ((_ is ElementMatch!15107) (regOne!30726 r!7292)) (= (c!938051 (regOne!30726 r!7292)) (h!67944 s!2326))) ((_ is Union!15107) (regOne!30726 r!7292))))))

(declare-datatypes ((Unit!153946 0))(
  ( (Unit!153947) )
))
(declare-fun lt!2191091 () Unit!153946)

(declare-fun e!3338506 () Unit!153946)

(assert (=> b!5381788 (= lt!2191091 e!3338506)))

(declare-fun c!938050 () Bool)

(declare-datatypes ((List!61622 0))(
  ( (Nil!61498) (Cons!61498 (h!67946 Context!8982) (t!374845 List!61622)) )
))
(declare-fun zl!343 () List!61622)

(declare-fun nullable!5276 (Regex!15107) Bool)

(assert (=> b!5381788 (= c!938050 (nullable!5276 (h!67945 (exprs!4991 (h!67946 zl!343)))))))

(declare-fun lambda!278538 () Int)

(declare-fun flatMap!834 ((InoxSet Context!8982) Int) (InoxSet Context!8982))

(declare-fun derivationStepZipperUp!479 (Context!8982 C!30484) (InoxSet Context!8982))

(assert (=> b!5381788 (= (flatMap!834 z!1189 lambda!278538) (derivationStepZipperUp!479 (h!67946 zl!343) (h!67944 s!2326)))))

(declare-fun lt!2191105 () Unit!153946)

(declare-fun lemmaFlatMapOnSingletonSet!366 ((InoxSet Context!8982) Context!8982 Int) Unit!153946)

(assert (=> b!5381788 (= lt!2191105 (lemmaFlatMapOnSingletonSet!366 z!1189 (h!67946 zl!343) lambda!278538))))

(declare-fun lt!2191077 () (InoxSet Context!8982))

(declare-fun lt!2191107 () Context!8982)

(assert (=> b!5381788 (= lt!2191077 (derivationStepZipperUp!479 lt!2191107 (h!67944 s!2326)))))

(declare-fun lt!2191108 () (InoxSet Context!8982))

(declare-fun derivationStepZipperDown!555 (Regex!15107 Context!8982 C!30484) (InoxSet Context!8982))

(assert (=> b!5381788 (= lt!2191108 (derivationStepZipperDown!555 (h!67945 (exprs!4991 (h!67946 zl!343))) lt!2191107 (h!67944 s!2326)))))

(assert (=> b!5381788 (= lt!2191107 (Context!8983 (t!374844 (exprs!4991 (h!67946 zl!343)))))))

(declare-fun lt!2191085 () (InoxSet Context!8982))

(assert (=> b!5381788 (= lt!2191085 (derivationStepZipperUp!479 (Context!8983 (Cons!61497 (h!67945 (exprs!4991 (h!67946 zl!343))) (t!374844 (exprs!4991 (h!67946 zl!343))))) (h!67944 s!2326)))))

(declare-fun b!5381789 () Bool)

(declare-fun res!2285010 () Bool)

(declare-fun e!3338492 () Bool)

(assert (=> b!5381789 (=> res!2285010 e!3338492)))

(declare-fun lt!2191103 () Context!8982)

(declare-fun lt!2191087 () Regex!15107)

(declare-fun unfocusZipper!849 (List!61622) Regex!15107)

(assert (=> b!5381789 (= res!2285010 (not (= (unfocusZipper!849 (Cons!61498 lt!2191103 Nil!61498)) lt!2191087)))))

(declare-fun res!2285000 () Bool)

(declare-fun e!3338507 () Bool)

(assert (=> start!565982 (=> (not res!2285000) (not e!3338507))))

(declare-fun validRegex!6843 (Regex!15107) Bool)

(assert (=> start!565982 (= res!2285000 (validRegex!6843 r!7292))))

(assert (=> start!565982 e!3338507))

(declare-fun e!3338509 () Bool)

(assert (=> start!565982 e!3338509))

(declare-fun condSetEmpty!34913 () Bool)

(assert (=> start!565982 (= condSetEmpty!34913 (= z!1189 ((as const (Array Context!8982 Bool)) false)))))

(assert (=> start!565982 setRes!34913))

(declare-fun e!3338490 () Bool)

(assert (=> start!565982 e!3338490))

(declare-fun e!3338491 () Bool)

(assert (=> start!565982 e!3338491))

(declare-fun e!3338489 () Bool)

(declare-fun e!3338495 () Bool)

(assert (=> b!5381790 (= e!3338489 e!3338495)))

(declare-fun res!2285019 () Bool)

(assert (=> b!5381790 (=> res!2285019 e!3338495)))

(declare-fun lt!2191081 () List!61620)

(assert (=> b!5381790 (= res!2285019 (not (= (_1!35609 lt!2191084) lt!2191081)))))

(declare-fun lt!2191076 () tuple2!64612)

(declare-fun ++!13410 (List!61620 List!61620) List!61620)

(assert (=> b!5381790 (= lt!2191081 (++!13410 (_1!35609 lt!2191076) (_2!35609 lt!2191076)))))

(declare-datatypes ((Option!15218 0))(
  ( (None!15217) (Some!15217 (v!51246 tuple2!64612)) )
))
(declare-fun lt!2191111 () Option!15218)

(declare-fun get!21169 (Option!15218) tuple2!64612)

(assert (=> b!5381790 (= lt!2191076 (get!21169 lt!2191111))))

(declare-fun Exists!2288 (Int) Bool)

(assert (=> b!5381790 (= (Exists!2288 lambda!278541) (Exists!2288 lambda!278543))))

(declare-fun lt!2191071 () Unit!153946)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!942 (Regex!15107 Regex!15107 List!61620) Unit!153946)

(assert (=> b!5381790 (= lt!2191071 (lemmaExistCutMatchRandMatchRSpecEquivalent!942 (reg!15436 (regOne!30726 r!7292)) lt!2191097 (_1!35609 lt!2191084)))))

(assert (=> b!5381790 (= (Exists!2288 lambda!278541) (Exists!2288 lambda!278542))))

(declare-fun lt!2191079 () Unit!153946)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!372 (Regex!15107 List!61620) Unit!153946)

(assert (=> b!5381790 (= lt!2191079 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!372 (reg!15436 (regOne!30726 r!7292)) (_1!35609 lt!2191084)))))

(declare-fun isDefined!11921 (Option!15218) Bool)

(assert (=> b!5381790 (= (isDefined!11921 lt!2191111) (Exists!2288 lambda!278541))))

(declare-fun findConcatSeparation!1632 (Regex!15107 Regex!15107 List!61620 List!61620 List!61620) Option!15218)

(assert (=> b!5381790 (= lt!2191111 (findConcatSeparation!1632 (reg!15436 (regOne!30726 r!7292)) lt!2191097 Nil!61496 (_1!35609 lt!2191084) (_1!35609 lt!2191084)))))

(declare-fun lt!2191102 () Unit!153946)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1396 (Regex!15107 Regex!15107 List!61620) Unit!153946)

(assert (=> b!5381790 (= lt!2191102 (lemmaFindConcatSeparationEquivalentToExists!1396 (reg!15436 (regOne!30726 r!7292)) lt!2191097 (_1!35609 lt!2191084)))))

(declare-fun matchRSpec!2210 (Regex!15107 List!61620) Bool)

(assert (=> b!5381790 (matchRSpec!2210 lt!2191097 (_1!35609 lt!2191084))))

(declare-fun lt!2191104 () Unit!153946)

(declare-fun mainMatchTheorem!2210 (Regex!15107 List!61620) Unit!153946)

(assert (=> b!5381790 (= lt!2191104 (mainMatchTheorem!2210 lt!2191097 (_1!35609 lt!2191084)))))

(declare-fun b!5381791 () Bool)

(declare-fun res!2285007 () Bool)

(assert (=> b!5381791 (=> res!2285007 e!3338498)))

(assert (=> b!5381791 (= res!2285007 (or ((_ is Concat!23952) (regOne!30726 r!7292)) (not ((_ is Star!15107) (regOne!30726 r!7292)))))))

(declare-fun b!5381792 () Bool)

(declare-fun res!2285024 () Bool)

(assert (=> b!5381792 (=> (not res!2285024) (not e!3338507))))

(declare-fun toList!8891 ((InoxSet Context!8982)) List!61622)

(assert (=> b!5381792 (= res!2285024 (= (toList!8891 z!1189) zl!343))))

(declare-fun b!5381793 () Bool)

(declare-fun res!2285023 () Bool)

(assert (=> b!5381793 (=> res!2285023 e!3338489)))

(declare-fun isEmpty!33490 (List!61620) Bool)

(assert (=> b!5381793 (= res!2285023 (isEmpty!33490 (_1!35609 lt!2191084)))))

(declare-fun b!5381794 () Bool)

(declare-fun res!2285008 () Bool)

(declare-fun e!3338494 () Bool)

(assert (=> b!5381794 (=> res!2285008 e!3338494)))

(declare-fun matchR!7292 (Regex!15107 List!61620) Bool)

(assert (=> b!5381794 (= res!2285008 (not (matchR!7292 (reg!15436 (regOne!30726 r!7292)) (_1!35609 lt!2191076))))))

(declare-fun b!5381795 () Bool)

(declare-fun res!2285028 () Bool)

(declare-fun e!3338503 () Bool)

(assert (=> b!5381795 (=> res!2285028 e!3338503)))

(declare-fun generalisedUnion!1036 (List!61621) Regex!15107)

(declare-fun unfocusZipperList!549 (List!61622) List!61621)

(assert (=> b!5381795 (= res!2285028 (not (= r!7292 (generalisedUnion!1036 (unfocusZipperList!549 zl!343)))))))

(declare-fun b!5381796 () Bool)

(declare-fun res!2284996 () Bool)

(assert (=> b!5381796 (=> res!2284996 e!3338503)))

(declare-fun generalisedConcat!776 (List!61621) Regex!15107)

(assert (=> b!5381796 (= res!2284996 (not (= r!7292 (generalisedConcat!776 (exprs!4991 (h!67946 zl!343))))))))

(declare-fun b!5381797 () Bool)

(declare-fun tp!1491503 () Bool)

(assert (=> b!5381797 (= e!3338509 tp!1491503)))

(declare-fun b!5381798 () Bool)

(declare-fun e!3338501 () Bool)

(declare-fun e!3338510 () Bool)

(assert (=> b!5381798 (= e!3338501 e!3338510)))

(declare-fun res!2285022 () Bool)

(assert (=> b!5381798 (=> res!2285022 e!3338510)))

(assert (=> b!5381798 (= res!2285022 (not (= r!7292 lt!2191087)))))

(assert (=> b!5381798 (= lt!2191087 (Concat!23952 lt!2191097 (regTwo!30726 r!7292)))))

(declare-fun b!5381799 () Bool)

(assert (=> b!5381799 (= e!3338494 true)))

(declare-fun b!5381800 () Bool)

(declare-fun res!2285002 () Bool)

(assert (=> b!5381800 (=> res!2285002 e!3338498)))

(declare-fun e!3338496 () Bool)

(assert (=> b!5381800 (= res!2285002 e!3338496)))

(declare-fun res!2285009 () Bool)

(assert (=> b!5381800 (=> (not res!2285009) (not e!3338496))))

(assert (=> b!5381800 (= res!2285009 ((_ is Concat!23952) (regOne!30726 r!7292)))))

(assert (=> b!5381801 (= e!3338503 e!3338508)))

(declare-fun res!2285020 () Bool)

(assert (=> b!5381801 (=> res!2285020 e!3338508)))

(declare-fun lt!2191093 () Bool)

(declare-fun lt!2191086 () Bool)

(assert (=> b!5381801 (= res!2285020 (or (not (= lt!2191093 lt!2191086)) ((_ is Nil!61496) s!2326)))))

(assert (=> b!5381801 (= (Exists!2288 lambda!278536) (Exists!2288 lambda!278537))))

(declare-fun lt!2191073 () Unit!153946)

(assert (=> b!5381801 (= lt!2191073 (lemmaExistCutMatchRandMatchRSpecEquivalent!942 (regOne!30726 r!7292) (regTwo!30726 r!7292) s!2326))))

(assert (=> b!5381801 (= lt!2191086 (Exists!2288 lambda!278536))))

(assert (=> b!5381801 (= lt!2191086 (isDefined!11921 (findConcatSeparation!1632 (regOne!30726 r!7292) (regTwo!30726 r!7292) Nil!61496 s!2326 s!2326)))))

(declare-fun lt!2191109 () Unit!153946)

(assert (=> b!5381801 (= lt!2191109 (lemmaFindConcatSeparationEquivalentToExists!1396 (regOne!30726 r!7292) (regTwo!30726 r!7292) s!2326))))

(declare-fun b!5381802 () Bool)

(declare-fun tp_is_empty!39467 () Bool)

(assert (=> b!5381802 (= e!3338509 tp_is_empty!39467)))

(declare-fun b!5381803 () Bool)

(declare-fun res!2285012 () Bool)

(assert (=> b!5381803 (=> res!2285012 e!3338503)))

(assert (=> b!5381803 (= res!2285012 (or ((_ is EmptyExpr!15107) r!7292) ((_ is EmptyLang!15107) r!7292) ((_ is ElementMatch!15107) r!7292) ((_ is Union!15107) r!7292) (not ((_ is Concat!23952) r!7292))))))

(declare-fun b!5381804 () Bool)

(declare-fun e!3338497 () Bool)

(assert (=> b!5381804 (= e!3338497 e!3338492)))

(declare-fun res!2285025 () Bool)

(assert (=> b!5381804 (=> res!2285025 e!3338492)))

(declare-fun lt!2191100 () Context!8982)

(assert (=> b!5381804 (= res!2285025 (not (= (unfocusZipper!849 (Cons!61498 lt!2191100 Nil!61498)) (reg!15436 (regOne!30726 r!7292)))))))

(declare-fun lt!2191113 () (InoxSet Context!8982))

(assert (=> b!5381804 (= (flatMap!834 lt!2191113 lambda!278538) (derivationStepZipperUp!479 lt!2191103 (h!67944 s!2326)))))

(declare-fun lt!2191116 () Unit!153946)

(assert (=> b!5381804 (= lt!2191116 (lemmaFlatMapOnSingletonSet!366 lt!2191113 lt!2191103 lambda!278538))))

(declare-fun lt!2191072 () (InoxSet Context!8982))

(assert (=> b!5381804 (= (flatMap!834 lt!2191072 lambda!278538) (derivationStepZipperUp!479 lt!2191100 (h!67944 s!2326)))))

(declare-fun lt!2191101 () Unit!153946)

(assert (=> b!5381804 (= lt!2191101 (lemmaFlatMapOnSingletonSet!366 lt!2191072 lt!2191100 lambda!278538))))

(declare-fun lt!2191099 () (InoxSet Context!8982))

(assert (=> b!5381804 (= lt!2191099 (derivationStepZipperUp!479 lt!2191103 (h!67944 s!2326)))))

(declare-fun lt!2191112 () (InoxSet Context!8982))

(assert (=> b!5381804 (= lt!2191112 (derivationStepZipperUp!479 lt!2191100 (h!67944 s!2326)))))

(assert (=> b!5381804 (= lt!2191113 (store ((as const (Array Context!8982 Bool)) false) lt!2191103 true))))

(assert (=> b!5381804 (= lt!2191072 (store ((as const (Array Context!8982 Bool)) false) lt!2191100 true))))

(assert (=> b!5381804 (= lt!2191100 (Context!8983 (Cons!61497 (reg!15436 (regOne!30726 r!7292)) Nil!61497)))))

(declare-fun b!5381805 () Bool)

(declare-fun e!3338500 () Bool)

(declare-fun lt!2191083 () Bool)

(assert (=> b!5381805 (= e!3338500 (or (not lt!2191093) lt!2191083))))

(declare-fun b!5381806 () Bool)

(assert (=> b!5381806 (= e!3338495 e!3338494)))

(declare-fun res!2285016 () Bool)

(assert (=> b!5381806 (=> res!2285016 e!3338494)))

(declare-fun lt!2191070 () List!61620)

(assert (=> b!5381806 (= res!2285016 (not (= lt!2191070 s!2326)))))

(declare-fun lt!2191106 () List!61620)

(assert (=> b!5381806 (= lt!2191070 (++!13410 (_1!35609 lt!2191076) lt!2191106))))

(assert (=> b!5381806 (= lt!2191070 (++!13410 lt!2191081 (_2!35609 lt!2191084)))))

(assert (=> b!5381806 (= lt!2191106 (++!13410 (_2!35609 lt!2191076) (_2!35609 lt!2191084)))))

(declare-fun lt!2191114 () Unit!153946)

(declare-fun lemmaConcatAssociativity!2804 (List!61620 List!61620 List!61620) Unit!153946)

(assert (=> b!5381806 (= lt!2191114 (lemmaConcatAssociativity!2804 (_1!35609 lt!2191076) (_2!35609 lt!2191076) (_2!35609 lt!2191084)))))

(declare-fun b!5381807 () Bool)

(declare-fun res!2285018 () Bool)

(assert (=> b!5381807 (=> res!2285018 e!3338489)))

(assert (=> b!5381807 (= res!2285018 (not (matchR!7292 lt!2191097 (_1!35609 lt!2191084))))))

(declare-fun b!5381808 () Bool)

(declare-fun res!2285021 () Bool)

(assert (=> b!5381808 (=> res!2285021 e!3338508)))

(declare-fun isEmpty!33491 (List!61621) Bool)

(assert (=> b!5381808 (= res!2285021 (isEmpty!33491 (t!374844 (exprs!4991 (h!67946 zl!343)))))))

(declare-fun e!3338499 () Bool)

(assert (=> b!5381809 (= e!3338499 e!3338489)))

(declare-fun res!2284998 () Bool)

(assert (=> b!5381809 (=> res!2284998 e!3338489)))

(assert (=> b!5381809 (= res!2284998 (not (= (++!13410 (_1!35609 lt!2191084) (_2!35609 lt!2191084)) s!2326)))))

(declare-fun lt!2191075 () Option!15218)

(assert (=> b!5381809 (= lt!2191084 (get!21169 lt!2191075))))

(assert (=> b!5381809 (= (Exists!2288 lambda!278539) (Exists!2288 lambda!278540))))

(declare-fun lt!2191095 () Unit!153946)

(assert (=> b!5381809 (= lt!2191095 (lemmaExistCutMatchRandMatchRSpecEquivalent!942 lt!2191097 (regTwo!30726 r!7292) s!2326))))

(assert (=> b!5381809 (= (isDefined!11921 lt!2191075) (Exists!2288 lambda!278539))))

(assert (=> b!5381809 (= lt!2191075 (findConcatSeparation!1632 lt!2191097 (regTwo!30726 r!7292) Nil!61496 s!2326 s!2326))))

(declare-fun lt!2191088 () Unit!153946)

(assert (=> b!5381809 (= lt!2191088 (lemmaFindConcatSeparationEquivalentToExists!1396 lt!2191097 (regTwo!30726 r!7292) s!2326))))

(declare-fun b!5381810 () Bool)

(assert (=> b!5381810 (= e!3338496 (nullable!5276 (regOne!30726 (regOne!30726 r!7292))))))

(declare-fun b!5381811 () Bool)

(assert (=> b!5381811 (= e!3338492 e!3338499)))

(declare-fun res!2285006 () Bool)

(assert (=> b!5381811 (=> res!2285006 e!3338499)))

(assert (=> b!5381811 (= res!2285006 (not lt!2191093))))

(assert (=> b!5381811 e!3338500))

(declare-fun res!2285017 () Bool)

(assert (=> b!5381811 (=> (not res!2285017) (not e!3338500))))

(declare-fun lt!2191098 () Regex!15107)

(assert (=> b!5381811 (= res!2285017 (= (matchR!7292 lt!2191098 s!2326) (matchRSpec!2210 lt!2191098 s!2326)))))

(declare-fun lt!2191074 () Unit!153946)

(assert (=> b!5381811 (= lt!2191074 (mainMatchTheorem!2210 lt!2191098 s!2326))))

(declare-fun b!5381812 () Bool)

(declare-fun res!2285003 () Bool)

(assert (=> b!5381812 (=> res!2285003 e!3338503)))

(assert (=> b!5381812 (= res!2285003 (not ((_ is Cons!61497) (exprs!4991 (h!67946 zl!343)))))))

(declare-fun b!5381813 () Bool)

(declare-fun e!3338504 () Bool)

(assert (=> b!5381813 (= e!3338498 e!3338504)))

(declare-fun res!2285014 () Bool)

(assert (=> b!5381813 (=> res!2285014 e!3338504)))

(declare-fun lt!2191080 () (InoxSet Context!8982))

(assert (=> b!5381813 (= res!2285014 (not (= lt!2191108 lt!2191080)))))

(assert (=> b!5381813 (= lt!2191080 (derivationStepZipperDown!555 (reg!15436 (regOne!30726 r!7292)) lt!2191103 (h!67944 s!2326)))))

(declare-fun lt!2191115 () List!61621)

(assert (=> b!5381813 (= lt!2191103 (Context!8983 lt!2191115))))

(assert (=> b!5381813 (= lt!2191115 (Cons!61497 lt!2191097 (t!374844 (exprs!4991 (h!67946 zl!343)))))))

(assert (=> b!5381813 (= lt!2191097 (Star!15107 (reg!15436 (regOne!30726 r!7292))))))

(declare-fun b!5381814 () Bool)

(assert (=> b!5381814 (= e!3338510 e!3338497)))

(declare-fun res!2285004 () Bool)

(assert (=> b!5381814 (=> res!2285004 e!3338497)))

(declare-fun lt!2191089 () Context!8982)

(assert (=> b!5381814 (= res!2285004 (not (= (unfocusZipper!849 (Cons!61498 lt!2191089 Nil!61498)) lt!2191098)))))

(assert (=> b!5381814 (= lt!2191098 (Concat!23952 (reg!15436 (regOne!30726 r!7292)) lt!2191087))))

(declare-fun b!5381815 () Bool)

(declare-fun res!2284999 () Bool)

(assert (=> b!5381815 (=> res!2284999 e!3338494)))

(assert (=> b!5381815 (= res!2284999 (not (matchR!7292 lt!2191097 (_2!35609 lt!2191076))))))

(declare-fun b!5381816 () Bool)

(declare-fun e!3338488 () Bool)

(assert (=> b!5381816 (= e!3338488 (not e!3338503))))

(declare-fun res!2285029 () Bool)

(assert (=> b!5381816 (=> res!2285029 e!3338503)))

(assert (=> b!5381816 (= res!2285029 (not ((_ is Cons!61498) zl!343)))))

(assert (=> b!5381816 (= lt!2191093 lt!2191083)))

(assert (=> b!5381816 (= lt!2191083 (matchRSpec!2210 r!7292 s!2326))))

(assert (=> b!5381816 (= lt!2191093 (matchR!7292 r!7292 s!2326))))

(declare-fun lt!2191110 () Unit!153946)

(assert (=> b!5381816 (= lt!2191110 (mainMatchTheorem!2210 r!7292 s!2326))))

(declare-fun b!5381817 () Bool)

(declare-fun e!3338493 () Bool)

(declare-fun tp!1491505 () Bool)

(assert (=> b!5381817 (= e!3338493 tp!1491505)))

(declare-fun b!5381818 () Bool)

(declare-fun res!2285001 () Bool)

(assert (=> b!5381818 (=> res!2285001 e!3338489)))

(assert (=> b!5381818 (= res!2285001 (not (matchR!7292 (regTwo!30726 r!7292) (_2!35609 lt!2191084))))))

(declare-fun b!5381819 () Bool)

(declare-fun Unit!153948 () Unit!153946)

(assert (=> b!5381819 (= e!3338506 Unit!153948)))

(declare-fun b!5381820 () Bool)

(declare-fun res!2285005 () Bool)

(assert (=> b!5381820 (=> res!2285005 e!3338503)))

(declare-fun isEmpty!33492 (List!61622) Bool)

(assert (=> b!5381820 (= res!2285005 (not (isEmpty!33492 (t!374845 zl!343))))))

(declare-fun b!5381821 () Bool)

(declare-fun tp!1491501 () Bool)

(declare-fun tp!1491507 () Bool)

(assert (=> b!5381821 (= e!3338509 (and tp!1491501 tp!1491507))))

(declare-fun setIsEmpty!34913 () Bool)

(assert (=> setIsEmpty!34913 setRes!34913))

(declare-fun b!5381822 () Bool)

(declare-fun tp!1491506 () Bool)

(assert (=> b!5381822 (= e!3338505 tp!1491506)))

(declare-fun b!5381823 () Bool)

(assert (=> b!5381823 (= e!3338507 e!3338488)))

(declare-fun res!2285011 () Bool)

(assert (=> b!5381823 (=> (not res!2285011) (not e!3338488))))

(declare-fun lt!2191090 () Regex!15107)

(assert (=> b!5381823 (= res!2285011 (= r!7292 lt!2191090))))

(assert (=> b!5381823 (= lt!2191090 (unfocusZipper!849 zl!343))))

(declare-fun b!5381824 () Bool)

(declare-fun tp!1491504 () Bool)

(assert (=> b!5381824 (= e!3338491 (and tp_is_empty!39467 tp!1491504))))

(declare-fun b!5381825 () Bool)

(declare-fun e!3338502 () Bool)

(declare-fun matchZipper!1351 ((InoxSet Context!8982) List!61620) Bool)

(assert (=> b!5381825 (= e!3338502 (matchZipper!1351 lt!2191077 (t!374843 s!2326)))))

(declare-fun b!5381826 () Bool)

(declare-fun tp!1491508 () Bool)

(assert (=> b!5381826 (= e!3338490 (and (inv!81014 (h!67946 zl!343)) e!3338493 tp!1491508))))

(declare-fun b!5381827 () Bool)

(declare-fun res!2285015 () Bool)

(assert (=> b!5381827 (=> res!2285015 e!3338501)))

(assert (=> b!5381827 (= res!2285015 (not (= lt!2191090 r!7292)))))

(declare-fun b!5381828 () Bool)

(assert (=> b!5381828 (= e!3338504 e!3338501)))

(declare-fun res!2285026 () Bool)

(assert (=> b!5381828 (=> res!2285026 e!3338501)))

(declare-fun lt!2191094 () (InoxSet Context!8982))

(assert (=> b!5381828 (= res!2285026 (not (= lt!2191094 lt!2191080)))))

(declare-fun lt!2191096 () (InoxSet Context!8982))

(assert (=> b!5381828 (= (flatMap!834 lt!2191096 lambda!278538) (derivationStepZipperUp!479 lt!2191089 (h!67944 s!2326)))))

(declare-fun lt!2191092 () Unit!153946)

(assert (=> b!5381828 (= lt!2191092 (lemmaFlatMapOnSingletonSet!366 lt!2191096 lt!2191089 lambda!278538))))

(declare-fun lt!2191078 () (InoxSet Context!8982))

(assert (=> b!5381828 (= lt!2191078 (derivationStepZipperUp!479 lt!2191089 (h!67944 s!2326)))))

(declare-fun derivationStepZipper!1346 ((InoxSet Context!8982) C!30484) (InoxSet Context!8982))

(assert (=> b!5381828 (= lt!2191094 (derivationStepZipper!1346 lt!2191096 (h!67944 s!2326)))))

(assert (=> b!5381828 (= lt!2191096 (store ((as const (Array Context!8982 Bool)) false) lt!2191089 true))))

(assert (=> b!5381828 (= lt!2191089 (Context!8983 (Cons!61497 (reg!15436 (regOne!30726 r!7292)) lt!2191115)))))

(declare-fun b!5381829 () Bool)

(declare-fun tp!1491502 () Bool)

(declare-fun tp!1491500 () Bool)

(assert (=> b!5381829 (= e!3338509 (and tp!1491502 tp!1491500))))

(declare-fun b!5381830 () Bool)

(declare-fun res!2285013 () Bool)

(assert (=> b!5381830 (=> res!2285013 e!3338501)))

(assert (=> b!5381830 (= res!2285013 (not (= (matchZipper!1351 lt!2191096 s!2326) (matchZipper!1351 lt!2191094 (t!374843 s!2326)))))))

(declare-fun b!5381831 () Bool)

(declare-fun Unit!153949 () Unit!153946)

(assert (=> b!5381831 (= e!3338506 Unit!153949)))

(declare-fun lt!2191082 () Unit!153946)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!344 ((InoxSet Context!8982) (InoxSet Context!8982) List!61620) Unit!153946)

(assert (=> b!5381831 (= lt!2191082 (lemmaZipperConcatMatchesSameAsBothZippers!344 lt!2191108 lt!2191077 (t!374843 s!2326)))))

(declare-fun res!2284997 () Bool)

(assert (=> b!5381831 (= res!2284997 (matchZipper!1351 lt!2191108 (t!374843 s!2326)))))

(assert (=> b!5381831 (=> res!2284997 e!3338502)))

(assert (=> b!5381831 (= (matchZipper!1351 ((_ map or) lt!2191108 lt!2191077) (t!374843 s!2326)) e!3338502)))

(assert (= (and start!565982 res!2285000) b!5381792))

(assert (= (and b!5381792 res!2285024) b!5381823))

(assert (= (and b!5381823 res!2285011) b!5381816))

(assert (= (and b!5381816 (not res!2285029)) b!5381820))

(assert (= (and b!5381820 (not res!2285005)) b!5381796))

(assert (= (and b!5381796 (not res!2284996)) b!5381812))

(assert (= (and b!5381812 (not res!2285003)) b!5381795))

(assert (= (and b!5381795 (not res!2285028)) b!5381803))

(assert (= (and b!5381803 (not res!2285012)) b!5381801))

(assert (= (and b!5381801 (not res!2285020)) b!5381808))

(assert (= (and b!5381808 (not res!2285021)) b!5381788))

(assert (= (and b!5381788 c!938050) b!5381831))

(assert (= (and b!5381788 (not c!938050)) b!5381819))

(assert (= (and b!5381831 (not res!2284997)) b!5381825))

(assert (= (and b!5381788 (not res!2285027)) b!5381800))

(assert (= (and b!5381800 res!2285009) b!5381810))

(assert (= (and b!5381800 (not res!2285002)) b!5381791))

(assert (= (and b!5381791 (not res!2285007)) b!5381813))

(assert (= (and b!5381813 (not res!2285014)) b!5381828))

(assert (= (and b!5381828 (not res!2285026)) b!5381830))

(assert (= (and b!5381830 (not res!2285013)) b!5381827))

(assert (= (and b!5381827 (not res!2285015)) b!5381798))

(assert (= (and b!5381798 (not res!2285022)) b!5381814))

(assert (= (and b!5381814 (not res!2285004)) b!5381804))

(assert (= (and b!5381804 (not res!2285025)) b!5381789))

(assert (= (and b!5381789 (not res!2285010)) b!5381811))

(assert (= (and b!5381811 res!2285017) b!5381805))

(assert (= (and b!5381811 (not res!2285006)) b!5381809))

(assert (= (and b!5381809 (not res!2284998)) b!5381807))

(assert (= (and b!5381807 (not res!2285018)) b!5381818))

(assert (= (and b!5381818 (not res!2285001)) b!5381793))

(assert (= (and b!5381793 (not res!2285023)) b!5381790))

(assert (= (and b!5381790 (not res!2285019)) b!5381806))

(assert (= (and b!5381806 (not res!2285016)) b!5381794))

(assert (= (and b!5381794 (not res!2285008)) b!5381815))

(assert (= (and b!5381815 (not res!2284999)) b!5381799))

(assert (= (and start!565982 ((_ is ElementMatch!15107) r!7292)) b!5381802))

(assert (= (and start!565982 ((_ is Concat!23952) r!7292)) b!5381829))

(assert (= (and start!565982 ((_ is Star!15107) r!7292)) b!5381797))

(assert (= (and start!565982 ((_ is Union!15107) r!7292)) b!5381821))

(assert (= (and start!565982 condSetEmpty!34913) setIsEmpty!34913))

(assert (= (and start!565982 (not condSetEmpty!34913)) setNonEmpty!34913))

(assert (= setNonEmpty!34913 b!5381822))

(assert (= b!5381826 b!5381817))

(assert (= (and start!565982 ((_ is Cons!61498) zl!343)) b!5381826))

(assert (= (and start!565982 ((_ is Cons!61496) s!2326)) b!5381824))

(declare-fun m!6407640 () Bool)

(assert (=> b!5381796 m!6407640))

(declare-fun m!6407642 () Bool)

(assert (=> b!5381823 m!6407642))

(declare-fun m!6407644 () Bool)

(assert (=> start!565982 m!6407644))

(declare-fun m!6407646 () Bool)

(assert (=> b!5381826 m!6407646))

(declare-fun m!6407648 () Bool)

(assert (=> b!5381815 m!6407648))

(declare-fun m!6407650 () Bool)

(assert (=> b!5381792 m!6407650))

(declare-fun m!6407652 () Bool)

(assert (=> b!5381795 m!6407652))

(assert (=> b!5381795 m!6407652))

(declare-fun m!6407654 () Bool)

(assert (=> b!5381795 m!6407654))

(declare-fun m!6407656 () Bool)

(assert (=> b!5381813 m!6407656))

(declare-fun m!6407658 () Bool)

(assert (=> b!5381820 m!6407658))

(declare-fun m!6407660 () Bool)

(assert (=> b!5381816 m!6407660))

(declare-fun m!6407662 () Bool)

(assert (=> b!5381816 m!6407662))

(declare-fun m!6407664 () Bool)

(assert (=> b!5381816 m!6407664))

(declare-fun m!6407666 () Bool)

(assert (=> b!5381814 m!6407666))

(declare-fun m!6407668 () Bool)

(assert (=> b!5381804 m!6407668))

(declare-fun m!6407670 () Bool)

(assert (=> b!5381804 m!6407670))

(declare-fun m!6407672 () Bool)

(assert (=> b!5381804 m!6407672))

(declare-fun m!6407674 () Bool)

(assert (=> b!5381804 m!6407674))

(declare-fun m!6407676 () Bool)

(assert (=> b!5381804 m!6407676))

(declare-fun m!6407678 () Bool)

(assert (=> b!5381804 m!6407678))

(declare-fun m!6407680 () Bool)

(assert (=> b!5381804 m!6407680))

(declare-fun m!6407682 () Bool)

(assert (=> b!5381804 m!6407682))

(declare-fun m!6407684 () Bool)

(assert (=> b!5381804 m!6407684))

(declare-fun m!6407686 () Bool)

(assert (=> b!5381806 m!6407686))

(declare-fun m!6407688 () Bool)

(assert (=> b!5381806 m!6407688))

(declare-fun m!6407690 () Bool)

(assert (=> b!5381806 m!6407690))

(declare-fun m!6407692 () Bool)

(assert (=> b!5381806 m!6407692))

(declare-fun m!6407694 () Bool)

(assert (=> b!5381809 m!6407694))

(declare-fun m!6407696 () Bool)

(assert (=> b!5381809 m!6407696))

(declare-fun m!6407698 () Bool)

(assert (=> b!5381809 m!6407698))

(declare-fun m!6407700 () Bool)

(assert (=> b!5381809 m!6407700))

(declare-fun m!6407702 () Bool)

(assert (=> b!5381809 m!6407702))

(declare-fun m!6407704 () Bool)

(assert (=> b!5381809 m!6407704))

(declare-fun m!6407706 () Bool)

(assert (=> b!5381809 m!6407706))

(declare-fun m!6407708 () Bool)

(assert (=> b!5381809 m!6407708))

(assert (=> b!5381809 m!6407700))

(declare-fun m!6407710 () Bool)

(assert (=> b!5381830 m!6407710))

(declare-fun m!6407712 () Bool)

(assert (=> b!5381830 m!6407712))

(declare-fun m!6407714 () Bool)

(assert (=> b!5381789 m!6407714))

(declare-fun m!6407716 () Bool)

(assert (=> b!5381807 m!6407716))

(declare-fun m!6407718 () Bool)

(assert (=> b!5381828 m!6407718))

(declare-fun m!6407720 () Bool)

(assert (=> b!5381828 m!6407720))

(declare-fun m!6407722 () Bool)

(assert (=> b!5381828 m!6407722))

(declare-fun m!6407724 () Bool)

(assert (=> b!5381828 m!6407724))

(declare-fun m!6407726 () Bool)

(assert (=> b!5381828 m!6407726))

(declare-fun m!6407728 () Bool)

(assert (=> b!5381790 m!6407728))

(declare-fun m!6407730 () Bool)

(assert (=> b!5381790 m!6407730))

(declare-fun m!6407732 () Bool)

(assert (=> b!5381790 m!6407732))

(declare-fun m!6407734 () Bool)

(assert (=> b!5381790 m!6407734))

(declare-fun m!6407736 () Bool)

(assert (=> b!5381790 m!6407736))

(declare-fun m!6407738 () Bool)

(assert (=> b!5381790 m!6407738))

(declare-fun m!6407740 () Bool)

(assert (=> b!5381790 m!6407740))

(assert (=> b!5381790 m!6407732))

(assert (=> b!5381790 m!6407732))

(declare-fun m!6407742 () Bool)

(assert (=> b!5381790 m!6407742))

(declare-fun m!6407744 () Bool)

(assert (=> b!5381790 m!6407744))

(declare-fun m!6407746 () Bool)

(assert (=> b!5381790 m!6407746))

(declare-fun m!6407748 () Bool)

(assert (=> b!5381790 m!6407748))

(declare-fun m!6407750 () Bool)

(assert (=> b!5381790 m!6407750))

(declare-fun m!6407752 () Bool)

(assert (=> b!5381808 m!6407752))

(declare-fun m!6407754 () Bool)

(assert (=> b!5381818 m!6407754))

(declare-fun m!6407756 () Bool)

(assert (=> b!5381794 m!6407756))

(declare-fun m!6407758 () Bool)

(assert (=> b!5381831 m!6407758))

(declare-fun m!6407760 () Bool)

(assert (=> b!5381831 m!6407760))

(declare-fun m!6407762 () Bool)

(assert (=> b!5381831 m!6407762))

(declare-fun m!6407764 () Bool)

(assert (=> b!5381793 m!6407764))

(declare-fun m!6407766 () Bool)

(assert (=> b!5381801 m!6407766))

(declare-fun m!6407768 () Bool)

(assert (=> b!5381801 m!6407768))

(declare-fun m!6407770 () Bool)

(assert (=> b!5381801 m!6407770))

(declare-fun m!6407772 () Bool)

(assert (=> b!5381801 m!6407772))

(assert (=> b!5381801 m!6407766))

(declare-fun m!6407774 () Bool)

(assert (=> b!5381801 m!6407774))

(assert (=> b!5381801 m!6407768))

(declare-fun m!6407776 () Bool)

(assert (=> b!5381801 m!6407776))

(declare-fun m!6407778 () Bool)

(assert (=> setNonEmpty!34913 m!6407778))

(declare-fun m!6407780 () Bool)

(assert (=> b!5381810 m!6407780))

(declare-fun m!6407782 () Bool)

(assert (=> b!5381788 m!6407782))

(declare-fun m!6407784 () Bool)

(assert (=> b!5381788 m!6407784))

(declare-fun m!6407786 () Bool)

(assert (=> b!5381788 m!6407786))

(declare-fun m!6407788 () Bool)

(assert (=> b!5381788 m!6407788))

(declare-fun m!6407790 () Bool)

(assert (=> b!5381788 m!6407790))

(declare-fun m!6407792 () Bool)

(assert (=> b!5381788 m!6407792))

(declare-fun m!6407794 () Bool)

(assert (=> b!5381788 m!6407794))

(declare-fun m!6407796 () Bool)

(assert (=> b!5381811 m!6407796))

(declare-fun m!6407798 () Bool)

(assert (=> b!5381811 m!6407798))

(declare-fun m!6407800 () Bool)

(assert (=> b!5381811 m!6407800))

(declare-fun m!6407802 () Bool)

(assert (=> b!5381825 m!6407802))

(check-sat (not b!5381820) (not b!5381792) (not b!5381794) (not b!5381830) (not b!5381795) (not setNonEmpty!34913) (not b!5381817) (not b!5381821) (not b!5381828) (not b!5381823) (not b!5381796) (not b!5381829) (not b!5381822) (not b!5381810) (not b!5381811) (not b!5381813) (not b!5381831) (not b!5381788) (not b!5381815) (not b!5381790) (not b!5381808) (not b!5381824) (not b!5381825) (not b!5381818) (not b!5381809) (not b!5381797) (not b!5381816) (not b!5381793) (not b!5381789) (not b!5381826) (not b!5381801) (not b!5381807) (not b!5381814) (not start!565982) (not b!5381806) tp_is_empty!39467 (not b!5381804))
(check-sat)
