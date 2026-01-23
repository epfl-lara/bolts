; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!602884 () Bool)

(assert start!602884)

(declare-fun b!5932851 () Bool)

(assert (=> b!5932851 true))

(assert (=> b!5932851 true))

(declare-fun lambda!323505 () Int)

(declare-fun lambda!323504 () Int)

(assert (=> b!5932851 (not (= lambda!323505 lambda!323504))))

(assert (=> b!5932851 true))

(assert (=> b!5932851 true))

(declare-fun b!5932837 () Bool)

(assert (=> b!5932837 true))

(declare-fun b!5932834 () Bool)

(declare-fun e!3630873 () Bool)

(declare-fun tp!1650645 () Bool)

(assert (=> b!5932834 (= e!3630873 tp!1650645)))

(declare-fun b!5932835 () Bool)

(declare-fun e!3630864 () Bool)

(declare-fun tp_is_empty!41211 () Bool)

(declare-fun tp!1650650 () Bool)

(assert (=> b!5932835 (= e!3630864 (and tp_is_empty!41211 tp!1650650))))

(declare-fun b!5932836 () Bool)

(declare-fun res!2485474 () Bool)

(declare-fun e!3630870 () Bool)

(assert (=> b!5932836 (=> (not res!2485474) (not e!3630870))))

(declare-datatypes ((C!32228 0))(
  ( (C!32229 (val!25816 Int)) )
))
(declare-datatypes ((Regex!15979 0))(
  ( (ElementMatch!15979 (c!1054641 C!32228)) (Concat!24824 (regOne!32470 Regex!15979) (regTwo!32470 Regex!15979)) (EmptyExpr!15979) (Star!15979 (reg!16308 Regex!15979)) (EmptyLang!15979) (Union!15979 (regOne!32471 Regex!15979) (regTwo!32471 Regex!15979)) )
))
(declare-fun r!7292 () Regex!15979)

(declare-datatypes ((List!64236 0))(
  ( (Nil!64112) (Cons!64112 (h!70560 Regex!15979) (t!377635 List!64236)) )
))
(declare-datatypes ((Context!10726 0))(
  ( (Context!10727 (exprs!5863 List!64236)) )
))
(declare-datatypes ((List!64237 0))(
  ( (Nil!64113) (Cons!64113 (h!70561 Context!10726) (t!377636 List!64237)) )
))
(declare-fun zl!343 () List!64237)

(declare-fun unfocusZipper!1721 (List!64237) Regex!15979)

(assert (=> b!5932836 (= res!2485474 (= r!7292 (unfocusZipper!1721 zl!343)))))

(declare-fun e!3630865 () Bool)

(declare-fun e!3630868 () Bool)

(assert (=> b!5932837 (= e!3630865 e!3630868)))

(declare-fun res!2485472 () Bool)

(assert (=> b!5932837 (=> res!2485472 e!3630868)))

(declare-datatypes ((List!64238 0))(
  ( (Nil!64114) (Cons!64114 (h!70562 C!32228) (t!377637 List!64238)) )
))
(declare-fun s!2326 () List!64238)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10726))

(declare-fun lt!2310861 () (InoxSet Context!10726))

(declare-fun derivationStepZipper!1960 ((InoxSet Context!10726) C!32228) (InoxSet Context!10726))

(assert (=> b!5932837 (= res!2485472 (not (= (derivationStepZipper!1960 z!1189 (h!70562 s!2326)) lt!2310861)))))

(declare-fun lambda!323506 () Int)

(declare-fun flatMap!1492 ((InoxSet Context!10726) Int) (InoxSet Context!10726))

(declare-fun derivationStepZipperUp!1155 (Context!10726 C!32228) (InoxSet Context!10726))

(assert (=> b!5932837 (= (flatMap!1492 z!1189 lambda!323506) (derivationStepZipperUp!1155 (h!70561 zl!343) (h!70562 s!2326)))))

(declare-datatypes ((Unit!157229 0))(
  ( (Unit!157230) )
))
(declare-fun lt!2310865 () Unit!157229)

(declare-fun lemmaFlatMapOnSingletonSet!1018 ((InoxSet Context!10726) Context!10726 Int) Unit!157229)

(assert (=> b!5932837 (= lt!2310865 (lemmaFlatMapOnSingletonSet!1018 z!1189 (h!70561 zl!343) lambda!323506))))

(declare-fun b!5932838 () Bool)

(declare-fun res!2485466 () Bool)

(declare-fun e!3630872 () Bool)

(assert (=> b!5932838 (=> res!2485466 e!3630872)))

(declare-fun generalisedConcat!1576 (List!64236) Regex!15979)

(assert (=> b!5932838 (= res!2485466 (not (= r!7292 (generalisedConcat!1576 (exprs!5863 (h!70561 zl!343))))))))

(declare-fun b!5932839 () Bool)

(assert (=> b!5932839 (= e!3630873 tp_is_empty!41211)))

(declare-fun b!5932841 () Bool)

(declare-fun res!2485471 () Bool)

(assert (=> b!5932841 (=> res!2485471 e!3630872)))

(get-info :version)

(assert (=> b!5932841 (= res!2485471 (not ((_ is Cons!64112) (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5932842 () Bool)

(declare-fun tp!1650652 () Bool)

(declare-fun tp!1650649 () Bool)

(assert (=> b!5932842 (= e!3630873 (and tp!1650652 tp!1650649))))

(declare-fun e!3630871 () Bool)

(declare-fun tp!1650654 () Bool)

(declare-fun b!5932843 () Bool)

(declare-fun e!3630867 () Bool)

(declare-fun inv!83194 (Context!10726) Bool)

(assert (=> b!5932843 (= e!3630871 (and (inv!83194 (h!70561 zl!343)) e!3630867 tp!1650654))))

(declare-fun b!5932844 () Bool)

(declare-fun res!2485475 () Bool)

(assert (=> b!5932844 (=> (not res!2485475) (not e!3630870))))

(declare-fun toList!9763 ((InoxSet Context!10726)) List!64237)

(assert (=> b!5932844 (= res!2485475 (= (toList!9763 z!1189) zl!343))))

(declare-fun b!5932845 () Bool)

(declare-fun e!3630869 () Bool)

(assert (=> b!5932845 (= e!3630869 e!3630865)))

(declare-fun res!2485476 () Bool)

(assert (=> b!5932845 (=> res!2485476 e!3630865)))

(declare-fun lt!2310858 () (InoxSet Context!10726))

(assert (=> b!5932845 (= res!2485476 (not (= lt!2310858 lt!2310861)))))

(declare-fun derivationStepZipperDown!1229 (Regex!15979 Context!10726 C!32228) (InoxSet Context!10726))

(assert (=> b!5932845 (= lt!2310861 (derivationStepZipperDown!1229 r!7292 (Context!10727 Nil!64112) (h!70562 s!2326)))))

(assert (=> b!5932845 (= lt!2310858 (derivationStepZipperUp!1155 (Context!10727 (Cons!64112 r!7292 Nil!64112)) (h!70562 s!2326)))))

(declare-fun setIsEmpty!40268 () Bool)

(declare-fun setRes!40268 () Bool)

(assert (=> setIsEmpty!40268 setRes!40268))

(declare-fun b!5932846 () Bool)

(declare-fun tp!1650651 () Bool)

(declare-fun tp!1650647 () Bool)

(assert (=> b!5932846 (= e!3630873 (and tp!1650651 tp!1650647))))

(declare-fun b!5932847 () Bool)

(declare-fun res!2485468 () Bool)

(assert (=> b!5932847 (=> res!2485468 e!3630869)))

(declare-fun isEmpty!35977 (List!64236) Bool)

(assert (=> b!5932847 (= res!2485468 (not (isEmpty!35977 (t!377635 (exprs!5863 (h!70561 zl!343))))))))

(declare-fun b!5932848 () Bool)

(declare-fun res!2485467 () Bool)

(assert (=> b!5932848 (=> res!2485467 e!3630872)))

(declare-fun generalisedUnion!1823 (List!64236) Regex!15979)

(declare-fun unfocusZipperList!1400 (List!64237) List!64236)

(assert (=> b!5932848 (= res!2485467 (not (= r!7292 (generalisedUnion!1823 (unfocusZipperList!1400 zl!343)))))))

(declare-fun b!5932849 () Bool)

(assert (=> b!5932849 (= e!3630870 (not e!3630872))))

(declare-fun res!2485469 () Bool)

(assert (=> b!5932849 (=> res!2485469 e!3630872)))

(assert (=> b!5932849 (= res!2485469 (not ((_ is Cons!64113) zl!343)))))

(declare-fun lt!2310864 () Bool)

(declare-fun matchRSpec!3080 (Regex!15979 List!64238) Bool)

(assert (=> b!5932849 (= lt!2310864 (matchRSpec!3080 r!7292 s!2326))))

(declare-fun matchR!8162 (Regex!15979 List!64238) Bool)

(assert (=> b!5932849 (= lt!2310864 (matchR!8162 r!7292 s!2326))))

(declare-fun lt!2310870 () Unit!157229)

(declare-fun mainMatchTheorem!3080 (Regex!15979 List!64238) Unit!157229)

(assert (=> b!5932849 (= lt!2310870 (mainMatchTheorem!3080 r!7292 s!2326))))

(declare-fun b!5932850 () Bool)

(declare-fun e!3630866 () Bool)

(declare-fun tp!1650646 () Bool)

(assert (=> b!5932850 (= e!3630866 tp!1650646)))

(declare-fun setElem!40268 () Context!10726)

(declare-fun tp!1650653 () Bool)

(declare-fun setNonEmpty!40268 () Bool)

(assert (=> setNonEmpty!40268 (= setRes!40268 (and tp!1650653 (inv!83194 setElem!40268) e!3630866))))

(declare-fun setRest!40268 () (InoxSet Context!10726))

(assert (=> setNonEmpty!40268 (= z!1189 ((_ map or) (store ((as const (Array Context!10726 Bool)) false) setElem!40268 true) setRest!40268))))

(assert (=> b!5932851 (= e!3630872 e!3630869)))

(declare-fun res!2485470 () Bool)

(assert (=> b!5932851 (=> res!2485470 e!3630869)))

(declare-fun lt!2310871 () Bool)

(assert (=> b!5932851 (= res!2485470 (or (not (= lt!2310864 lt!2310871)) ((_ is Nil!64114) s!2326)))))

(declare-fun Exists!3049 (Int) Bool)

(assert (=> b!5932851 (= (Exists!3049 lambda!323504) (Exists!3049 lambda!323505))))

(declare-fun lt!2310862 () Unit!157229)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1586 (Regex!15979 Regex!15979 List!64238) Unit!157229)

(assert (=> b!5932851 (= lt!2310862 (lemmaExistCutMatchRandMatchRSpecEquivalent!1586 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326))))

(assert (=> b!5932851 (= lt!2310871 (Exists!3049 lambda!323504))))

(declare-datatypes ((tuple2!65916 0))(
  ( (tuple2!65917 (_1!36261 List!64238) (_2!36261 List!64238)) )
))
(declare-datatypes ((Option!15870 0))(
  ( (None!15869) (Some!15869 (v!51969 tuple2!65916)) )
))
(declare-fun isDefined!12573 (Option!15870) Bool)

(declare-fun findConcatSeparation!2284 (Regex!15979 Regex!15979 List!64238 List!64238 List!64238) Option!15870)

(assert (=> b!5932851 (= lt!2310871 (isDefined!12573 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326)))))

(declare-fun lt!2310869 () Unit!157229)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2048 (Regex!15979 Regex!15979 List!64238) Unit!157229)

(assert (=> b!5932851 (= lt!2310869 (lemmaFindConcatSeparationEquivalentToExists!2048 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326))))

(declare-fun b!5932852 () Bool)

(declare-fun res!2485464 () Bool)

(assert (=> b!5932852 (=> res!2485464 e!3630872)))

(assert (=> b!5932852 (= res!2485464 (or ((_ is EmptyExpr!15979) r!7292) ((_ is EmptyLang!15979) r!7292) ((_ is ElementMatch!15979) r!7292) ((_ is Union!15979) r!7292) (not ((_ is Concat!24824) r!7292))))))

(declare-fun b!5932853 () Bool)

(declare-fun res!2485473 () Bool)

(assert (=> b!5932853 (=> res!2485473 e!3630872)))

(declare-fun isEmpty!35978 (List!64237) Bool)

(assert (=> b!5932853 (= res!2485473 (not (isEmpty!35978 (t!377636 zl!343))))))

(declare-fun b!5932854 () Bool)

(declare-fun tp!1650648 () Bool)

(assert (=> b!5932854 (= e!3630867 tp!1650648)))

(declare-fun res!2485465 () Bool)

(assert (=> start!602884 (=> (not res!2485465) (not e!3630870))))

(declare-fun validRegex!7715 (Regex!15979) Bool)

(assert (=> start!602884 (= res!2485465 (validRegex!7715 r!7292))))

(assert (=> start!602884 e!3630870))

(assert (=> start!602884 e!3630873))

(declare-fun condSetEmpty!40268 () Bool)

(assert (=> start!602884 (= condSetEmpty!40268 (= z!1189 ((as const (Array Context!10726 Bool)) false)))))

(assert (=> start!602884 setRes!40268))

(assert (=> start!602884 e!3630871))

(assert (=> start!602884 e!3630864))

(declare-fun b!5932840 () Bool)

(declare-fun lt!2310867 () Context!10726)

(assert (=> b!5932840 (= e!3630868 (inv!83194 lt!2310867))))

(declare-fun lt!2310868 () Context!10726)

(declare-fun lt!2310863 () (InoxSet Context!10726))

(assert (=> b!5932840 (= (flatMap!1492 lt!2310863 lambda!323506) (derivationStepZipperUp!1155 lt!2310868 (h!70562 s!2326)))))

(declare-fun lt!2310872 () Unit!157229)

(assert (=> b!5932840 (= lt!2310872 (lemmaFlatMapOnSingletonSet!1018 lt!2310863 lt!2310868 lambda!323506))))

(declare-fun lt!2310866 () (InoxSet Context!10726))

(assert (=> b!5932840 (= lt!2310866 (derivationStepZipperUp!1155 lt!2310867 (h!70562 s!2326)))))

(declare-fun lt!2310859 () (InoxSet Context!10726))

(assert (=> b!5932840 (= lt!2310859 (derivationStepZipperUp!1155 lt!2310868 (h!70562 s!2326)))))

(declare-fun lt!2310860 () List!64236)

(assert (=> b!5932840 (= lt!2310867 (Context!10727 lt!2310860))))

(assert (=> b!5932840 (= lt!2310863 (store ((as const (Array Context!10726 Bool)) false) lt!2310868 true))))

(assert (=> b!5932840 (= lt!2310868 (Context!10727 (Cons!64112 (regOne!32470 r!7292) lt!2310860)))))

(assert (=> b!5932840 (= lt!2310860 (Cons!64112 (regTwo!32470 r!7292) Nil!64112))))

(assert (= (and start!602884 res!2485465) b!5932844))

(assert (= (and b!5932844 res!2485475) b!5932836))

(assert (= (and b!5932836 res!2485474) b!5932849))

(assert (= (and b!5932849 (not res!2485469)) b!5932853))

(assert (= (and b!5932853 (not res!2485473)) b!5932838))

(assert (= (and b!5932838 (not res!2485466)) b!5932841))

(assert (= (and b!5932841 (not res!2485471)) b!5932848))

(assert (= (and b!5932848 (not res!2485467)) b!5932852))

(assert (= (and b!5932852 (not res!2485464)) b!5932851))

(assert (= (and b!5932851 (not res!2485470)) b!5932847))

(assert (= (and b!5932847 (not res!2485468)) b!5932845))

(assert (= (and b!5932845 (not res!2485476)) b!5932837))

(assert (= (and b!5932837 (not res!2485472)) b!5932840))

(assert (= (and start!602884 ((_ is ElementMatch!15979) r!7292)) b!5932839))

(assert (= (and start!602884 ((_ is Concat!24824) r!7292)) b!5932846))

(assert (= (and start!602884 ((_ is Star!15979) r!7292)) b!5932834))

(assert (= (and start!602884 ((_ is Union!15979) r!7292)) b!5932842))

(assert (= (and start!602884 condSetEmpty!40268) setIsEmpty!40268))

(assert (= (and start!602884 (not condSetEmpty!40268)) setNonEmpty!40268))

(assert (= setNonEmpty!40268 b!5932850))

(assert (= b!5932843 b!5932854))

(assert (= (and start!602884 ((_ is Cons!64113) zl!343)) b!5932843))

(assert (= (and start!602884 ((_ is Cons!64114) s!2326)) b!5932835))

(declare-fun m!6824546 () Bool)

(assert (=> b!5932849 m!6824546))

(declare-fun m!6824548 () Bool)

(assert (=> b!5932849 m!6824548))

(declare-fun m!6824550 () Bool)

(assert (=> b!5932849 m!6824550))

(declare-fun m!6824552 () Bool)

(assert (=> b!5932848 m!6824552))

(assert (=> b!5932848 m!6824552))

(declare-fun m!6824554 () Bool)

(assert (=> b!5932848 m!6824554))

(declare-fun m!6824556 () Bool)

(assert (=> start!602884 m!6824556))

(declare-fun m!6824558 () Bool)

(assert (=> b!5932837 m!6824558))

(declare-fun m!6824560 () Bool)

(assert (=> b!5932837 m!6824560))

(declare-fun m!6824562 () Bool)

(assert (=> b!5932837 m!6824562))

(declare-fun m!6824564 () Bool)

(assert (=> b!5932837 m!6824564))

(declare-fun m!6824566 () Bool)

(assert (=> setNonEmpty!40268 m!6824566))

(declare-fun m!6824568 () Bool)

(assert (=> b!5932838 m!6824568))

(declare-fun m!6824570 () Bool)

(assert (=> b!5932845 m!6824570))

(declare-fun m!6824572 () Bool)

(assert (=> b!5932845 m!6824572))

(declare-fun m!6824574 () Bool)

(assert (=> b!5932840 m!6824574))

(declare-fun m!6824576 () Bool)

(assert (=> b!5932840 m!6824576))

(declare-fun m!6824578 () Bool)

(assert (=> b!5932840 m!6824578))

(declare-fun m!6824580 () Bool)

(assert (=> b!5932840 m!6824580))

(declare-fun m!6824582 () Bool)

(assert (=> b!5932840 m!6824582))

(declare-fun m!6824584 () Bool)

(assert (=> b!5932840 m!6824584))

(declare-fun m!6824586 () Bool)

(assert (=> b!5932851 m!6824586))

(declare-fun m!6824588 () Bool)

(assert (=> b!5932851 m!6824588))

(declare-fun m!6824590 () Bool)

(assert (=> b!5932851 m!6824590))

(assert (=> b!5932851 m!6824586))

(declare-fun m!6824592 () Bool)

(assert (=> b!5932851 m!6824592))

(declare-fun m!6824594 () Bool)

(assert (=> b!5932851 m!6824594))

(assert (=> b!5932851 m!6824588))

(declare-fun m!6824596 () Bool)

(assert (=> b!5932851 m!6824596))

(declare-fun m!6824598 () Bool)

(assert (=> b!5932843 m!6824598))

(declare-fun m!6824600 () Bool)

(assert (=> b!5932847 m!6824600))

(declare-fun m!6824602 () Bool)

(assert (=> b!5932836 m!6824602))

(declare-fun m!6824604 () Bool)

(assert (=> b!5932853 m!6824604))

(declare-fun m!6824606 () Bool)

(assert (=> b!5932844 m!6824606))

(check-sat (not start!602884) (not b!5932851) (not b!5932854) (not b!5932843) (not b!5932847) (not b!5932842) (not setNonEmpty!40268) (not b!5932846) tp_is_empty!41211 (not b!5932838) (not b!5932850) (not b!5932845) (not b!5932835) (not b!5932853) (not b!5932837) (not b!5932844) (not b!5932849) (not b!5932834) (not b!5932848) (not b!5932836) (not b!5932840))
(check-sat)
(get-model)

(declare-fun b!5932926 () Bool)

(declare-fun e!3630915 () Bool)

(declare-fun e!3630913 () Bool)

(assert (=> b!5932926 (= e!3630915 e!3630913)))

(declare-fun c!1054669 () Bool)

(assert (=> b!5932926 (= c!1054669 (isEmpty!35977 (exprs!5863 (h!70561 zl!343))))))

(declare-fun d!1859959 () Bool)

(assert (=> d!1859959 e!3630915))

(declare-fun res!2485490 () Bool)

(assert (=> d!1859959 (=> (not res!2485490) (not e!3630915))))

(declare-fun lt!2310881 () Regex!15979)

(assert (=> d!1859959 (= res!2485490 (validRegex!7715 lt!2310881))))

(declare-fun e!3630917 () Regex!15979)

(assert (=> d!1859959 (= lt!2310881 e!3630917)))

(declare-fun c!1054670 () Bool)

(declare-fun e!3630916 () Bool)

(assert (=> d!1859959 (= c!1054670 e!3630916)))

(declare-fun res!2485491 () Bool)

(assert (=> d!1859959 (=> (not res!2485491) (not e!3630916))))

(assert (=> d!1859959 (= res!2485491 ((_ is Cons!64112) (exprs!5863 (h!70561 zl!343))))))

(declare-fun lambda!323512 () Int)

(declare-fun forall!15062 (List!64236 Int) Bool)

(assert (=> d!1859959 (forall!15062 (exprs!5863 (h!70561 zl!343)) lambda!323512)))

(assert (=> d!1859959 (= (generalisedConcat!1576 (exprs!5863 (h!70561 zl!343))) lt!2310881)))

(declare-fun b!5932927 () Bool)

(assert (=> b!5932927 (= e!3630916 (isEmpty!35977 (t!377635 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5932928 () Bool)

(declare-fun isEmptyExpr!1406 (Regex!15979) Bool)

(assert (=> b!5932928 (= e!3630913 (isEmptyExpr!1406 lt!2310881))))

(declare-fun b!5932929 () Bool)

(assert (=> b!5932929 (= e!3630917 (h!70560 (exprs!5863 (h!70561 zl!343))))))

(declare-fun b!5932930 () Bool)

(declare-fun e!3630918 () Regex!15979)

(assert (=> b!5932930 (= e!3630918 EmptyExpr!15979)))

(declare-fun b!5932931 () Bool)

(declare-fun e!3630914 () Bool)

(declare-fun isConcat!929 (Regex!15979) Bool)

(assert (=> b!5932931 (= e!3630914 (isConcat!929 lt!2310881))))

(declare-fun b!5932932 () Bool)

(declare-fun head!12497 (List!64236) Regex!15979)

(assert (=> b!5932932 (= e!3630914 (= lt!2310881 (head!12497 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5932933 () Bool)

(assert (=> b!5932933 (= e!3630913 e!3630914)))

(declare-fun c!1054668 () Bool)

(declare-fun tail!11582 (List!64236) List!64236)

(assert (=> b!5932933 (= c!1054668 (isEmpty!35977 (tail!11582 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5932934 () Bool)

(assert (=> b!5932934 (= e!3630917 e!3630918)))

(declare-fun c!1054671 () Bool)

(assert (=> b!5932934 (= c!1054671 ((_ is Cons!64112) (exprs!5863 (h!70561 zl!343))))))

(declare-fun b!5932935 () Bool)

(assert (=> b!5932935 (= e!3630918 (Concat!24824 (h!70560 (exprs!5863 (h!70561 zl!343))) (generalisedConcat!1576 (t!377635 (exprs!5863 (h!70561 zl!343))))))))

(assert (= (and d!1859959 res!2485491) b!5932927))

(assert (= (and d!1859959 c!1054670) b!5932929))

(assert (= (and d!1859959 (not c!1054670)) b!5932934))

(assert (= (and b!5932934 c!1054671) b!5932935))

(assert (= (and b!5932934 (not c!1054671)) b!5932930))

(assert (= (and d!1859959 res!2485490) b!5932926))

(assert (= (and b!5932926 c!1054669) b!5932928))

(assert (= (and b!5932926 (not c!1054669)) b!5932933))

(assert (= (and b!5932933 c!1054668) b!5932932))

(assert (= (and b!5932933 (not c!1054668)) b!5932931))

(declare-fun m!6824634 () Bool)

(assert (=> b!5932933 m!6824634))

(assert (=> b!5932933 m!6824634))

(declare-fun m!6824636 () Bool)

(assert (=> b!5932933 m!6824636))

(declare-fun m!6824638 () Bool)

(assert (=> b!5932931 m!6824638))

(declare-fun m!6824640 () Bool)

(assert (=> b!5932932 m!6824640))

(declare-fun m!6824642 () Bool)

(assert (=> b!5932926 m!6824642))

(assert (=> b!5932927 m!6824600))

(declare-fun m!6824644 () Bool)

(assert (=> b!5932928 m!6824644))

(declare-fun m!6824646 () Bool)

(assert (=> d!1859959 m!6824646))

(declare-fun m!6824648 () Bool)

(assert (=> d!1859959 m!6824648))

(declare-fun m!6824650 () Bool)

(assert (=> b!5932935 m!6824650))

(assert (=> b!5932838 d!1859959))

(declare-fun d!1859965 () Bool)

(assert (=> d!1859965 (= (isEmpty!35977 (t!377635 (exprs!5863 (h!70561 zl!343)))) ((_ is Nil!64112) (t!377635 (exprs!5863 (h!70561 zl!343)))))))

(assert (=> b!5932847 d!1859965))

(declare-fun bs!1403657 () Bool)

(declare-fun d!1859967 () Bool)

(assert (= bs!1403657 (and d!1859967 b!5932837)))

(declare-fun lambda!323515 () Int)

(assert (=> bs!1403657 (= lambda!323515 lambda!323506)))

(assert (=> d!1859967 true))

(assert (=> d!1859967 (= (derivationStepZipper!1960 z!1189 (h!70562 s!2326)) (flatMap!1492 z!1189 lambda!323515))))

(declare-fun bs!1403658 () Bool)

(assert (= bs!1403658 d!1859967))

(declare-fun m!6824668 () Bool)

(assert (=> bs!1403658 m!6824668))

(assert (=> b!5932837 d!1859967))

(declare-fun d!1859973 () Bool)

(declare-fun choose!44714 ((InoxSet Context!10726) Int) (InoxSet Context!10726))

(assert (=> d!1859973 (= (flatMap!1492 z!1189 lambda!323506) (choose!44714 z!1189 lambda!323506))))

(declare-fun bs!1403661 () Bool)

(assert (= bs!1403661 d!1859973))

(declare-fun m!6824672 () Bool)

(assert (=> bs!1403661 m!6824672))

(assert (=> b!5932837 d!1859973))

(declare-fun b!5932964 () Bool)

(declare-fun e!3630935 () Bool)

(declare-fun nullable!5974 (Regex!15979) Bool)

(assert (=> b!5932964 (= e!3630935 (nullable!5974 (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun bm!471115 () Bool)

(declare-fun call!471120 () (InoxSet Context!10726))

(assert (=> bm!471115 (= call!471120 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (h!70561 zl!343))) (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))) (h!70562 s!2326)))))

(declare-fun b!5932965 () Bool)

(declare-fun e!3630936 () (InoxSet Context!10726))

(assert (=> b!5932965 (= e!3630936 call!471120)))

(declare-fun e!3630934 () (InoxSet Context!10726))

(declare-fun b!5932966 () Bool)

(assert (=> b!5932966 (= e!3630934 ((_ map or) call!471120 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))) (h!70562 s!2326))))))

(declare-fun b!5932967 () Bool)

(assert (=> b!5932967 (= e!3630936 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1859979 () Bool)

(declare-fun c!1054685 () Bool)

(assert (=> d!1859979 (= c!1054685 e!3630935)))

(declare-fun res!2485496 () Bool)

(assert (=> d!1859979 (=> (not res!2485496) (not e!3630935))))

(assert (=> d!1859979 (= res!2485496 ((_ is Cons!64112) (exprs!5863 (h!70561 zl!343))))))

(assert (=> d!1859979 (= (derivationStepZipperUp!1155 (h!70561 zl!343) (h!70562 s!2326)) e!3630934)))

(declare-fun b!5932968 () Bool)

(assert (=> b!5932968 (= e!3630934 e!3630936)))

(declare-fun c!1054686 () Bool)

(assert (=> b!5932968 (= c!1054686 ((_ is Cons!64112) (exprs!5863 (h!70561 zl!343))))))

(assert (= (and d!1859979 res!2485496) b!5932964))

(assert (= (and d!1859979 c!1054685) b!5932966))

(assert (= (and d!1859979 (not c!1054685)) b!5932968))

(assert (= (and b!5932968 c!1054686) b!5932965))

(assert (= (and b!5932968 (not c!1054686)) b!5932967))

(assert (= (or b!5932966 b!5932965) bm!471115))

(declare-fun m!6824674 () Bool)

(assert (=> b!5932964 m!6824674))

(declare-fun m!6824676 () Bool)

(assert (=> bm!471115 m!6824676))

(declare-fun m!6824678 () Bool)

(assert (=> b!5932966 m!6824678))

(assert (=> b!5932837 d!1859979))

(declare-fun d!1859981 () Bool)

(declare-fun dynLambda!25072 (Int Context!10726) (InoxSet Context!10726))

(assert (=> d!1859981 (= (flatMap!1492 z!1189 lambda!323506) (dynLambda!25072 lambda!323506 (h!70561 zl!343)))))

(declare-fun lt!2310884 () Unit!157229)

(declare-fun choose!44715 ((InoxSet Context!10726) Context!10726 Int) Unit!157229)

(assert (=> d!1859981 (= lt!2310884 (choose!44715 z!1189 (h!70561 zl!343) lambda!323506))))

(assert (=> d!1859981 (= z!1189 (store ((as const (Array Context!10726 Bool)) false) (h!70561 zl!343) true))))

(assert (=> d!1859981 (= (lemmaFlatMapOnSingletonSet!1018 z!1189 (h!70561 zl!343) lambda!323506) lt!2310884)))

(declare-fun b_lambda!222815 () Bool)

(assert (=> (not b_lambda!222815) (not d!1859981)))

(declare-fun bs!1403662 () Bool)

(assert (= bs!1403662 d!1859981))

(assert (=> bs!1403662 m!6824560))

(declare-fun m!6824680 () Bool)

(assert (=> bs!1403662 m!6824680))

(declare-fun m!6824682 () Bool)

(assert (=> bs!1403662 m!6824682))

(declare-fun m!6824684 () Bool)

(assert (=> bs!1403662 m!6824684))

(assert (=> b!5932837 d!1859981))

(declare-fun bs!1403667 () Bool)

(declare-fun b!5933039 () Bool)

(assert (= bs!1403667 (and b!5933039 b!5932851)))

(declare-fun lambda!323524 () Int)

(assert (=> bs!1403667 (not (= lambda!323524 lambda!323504))))

(assert (=> bs!1403667 (not (= lambda!323524 lambda!323505))))

(assert (=> b!5933039 true))

(assert (=> b!5933039 true))

(declare-fun bs!1403668 () Bool)

(declare-fun b!5933037 () Bool)

(assert (= bs!1403668 (and b!5933037 b!5932851)))

(declare-fun lambda!323525 () Int)

(assert (=> bs!1403668 (not (= lambda!323525 lambda!323504))))

(assert (=> bs!1403668 (= lambda!323525 lambda!323505)))

(declare-fun bs!1403669 () Bool)

(assert (= bs!1403669 (and b!5933037 b!5933039)))

(assert (=> bs!1403669 (not (= lambda!323525 lambda!323524))))

(assert (=> b!5933037 true))

(assert (=> b!5933037 true))

(declare-fun b!5933032 () Bool)

(declare-fun e!3630975 () Bool)

(assert (=> b!5933032 (= e!3630975 (matchRSpec!3080 (regTwo!32471 r!7292) s!2326))))

(declare-fun call!471125 () Bool)

(declare-fun bm!471120 () Bool)

(declare-fun c!1054704 () Bool)

(assert (=> bm!471120 (= call!471125 (Exists!3049 (ite c!1054704 lambda!323524 lambda!323525)))))

(declare-fun b!5933034 () Bool)

(declare-fun e!3630976 () Bool)

(declare-fun e!3630977 () Bool)

(assert (=> b!5933034 (= e!3630976 e!3630977)))

(assert (=> b!5933034 (= c!1054704 ((_ is Star!15979) r!7292))))

(declare-fun bm!471121 () Bool)

(declare-fun call!471126 () Bool)

(declare-fun isEmpty!35980 (List!64238) Bool)

(assert (=> bm!471121 (= call!471126 (isEmpty!35980 s!2326))))

(declare-fun b!5933035 () Bool)

(declare-fun e!3630973 () Bool)

(declare-fun e!3630974 () Bool)

(assert (=> b!5933035 (= e!3630973 e!3630974)))

(declare-fun res!2485533 () Bool)

(assert (=> b!5933035 (= res!2485533 (not ((_ is EmptyLang!15979) r!7292)))))

(assert (=> b!5933035 (=> (not res!2485533) (not e!3630974))))

(declare-fun b!5933036 () Bool)

(declare-fun e!3630978 () Bool)

(assert (=> b!5933036 (= e!3630978 (= s!2326 (Cons!64114 (c!1054641 r!7292) Nil!64114)))))

(assert (=> b!5933037 (= e!3630977 call!471125)))

(declare-fun b!5933038 () Bool)

(declare-fun c!1054702 () Bool)

(assert (=> b!5933038 (= c!1054702 ((_ is Union!15979) r!7292))))

(assert (=> b!5933038 (= e!3630978 e!3630976)))

(declare-fun b!5933033 () Bool)

(assert (=> b!5933033 (= e!3630973 call!471126)))

(declare-fun d!1859983 () Bool)

(declare-fun c!1054701 () Bool)

(assert (=> d!1859983 (= c!1054701 ((_ is EmptyExpr!15979) r!7292))))

(assert (=> d!1859983 (= (matchRSpec!3080 r!7292 s!2326) e!3630973)))

(declare-fun e!3630972 () Bool)

(assert (=> b!5933039 (= e!3630972 call!471125)))

(declare-fun b!5933040 () Bool)

(declare-fun c!1054703 () Bool)

(assert (=> b!5933040 (= c!1054703 ((_ is ElementMatch!15979) r!7292))))

(assert (=> b!5933040 (= e!3630974 e!3630978)))

(declare-fun b!5933041 () Bool)

(declare-fun res!2485532 () Bool)

(assert (=> b!5933041 (=> res!2485532 e!3630972)))

(assert (=> b!5933041 (= res!2485532 call!471126)))

(assert (=> b!5933041 (= e!3630977 e!3630972)))

(declare-fun b!5933042 () Bool)

(assert (=> b!5933042 (= e!3630976 e!3630975)))

(declare-fun res!2485534 () Bool)

(assert (=> b!5933042 (= res!2485534 (matchRSpec!3080 (regOne!32471 r!7292) s!2326))))

(assert (=> b!5933042 (=> res!2485534 e!3630975)))

(assert (= (and d!1859983 c!1054701) b!5933033))

(assert (= (and d!1859983 (not c!1054701)) b!5933035))

(assert (= (and b!5933035 res!2485533) b!5933040))

(assert (= (and b!5933040 c!1054703) b!5933036))

(assert (= (and b!5933040 (not c!1054703)) b!5933038))

(assert (= (and b!5933038 c!1054702) b!5933042))

(assert (= (and b!5933038 (not c!1054702)) b!5933034))

(assert (= (and b!5933042 (not res!2485534)) b!5933032))

(assert (= (and b!5933034 c!1054704) b!5933041))

(assert (= (and b!5933034 (not c!1054704)) b!5933037))

(assert (= (and b!5933041 (not res!2485532)) b!5933039))

(assert (= (or b!5933039 b!5933037) bm!471120))

(assert (= (or b!5933033 b!5933041) bm!471121))

(declare-fun m!6824718 () Bool)

(assert (=> b!5933032 m!6824718))

(declare-fun m!6824720 () Bool)

(assert (=> bm!471120 m!6824720))

(declare-fun m!6824722 () Bool)

(assert (=> bm!471121 m!6824722))

(declare-fun m!6824724 () Bool)

(assert (=> b!5933042 m!6824724))

(assert (=> b!5932849 d!1859983))

(declare-fun b!5933086 () Bool)

(declare-fun e!3631001 () Bool)

(declare-fun e!3631005 () Bool)

(assert (=> b!5933086 (= e!3631001 e!3631005)))

(declare-fun res!2485564 () Bool)

(assert (=> b!5933086 (=> res!2485564 e!3631005)))

(declare-fun call!471130 () Bool)

(assert (=> b!5933086 (= res!2485564 call!471130)))

(declare-fun b!5933087 () Bool)

(declare-fun res!2485565 () Bool)

(declare-fun e!3631000 () Bool)

(assert (=> b!5933087 (=> res!2485565 e!3631000)))

(assert (=> b!5933087 (= res!2485565 (not ((_ is ElementMatch!15979) r!7292)))))

(declare-fun e!3631003 () Bool)

(assert (=> b!5933087 (= e!3631003 e!3631000)))

(declare-fun b!5933088 () Bool)

(declare-fun e!3631006 () Bool)

(declare-fun head!12499 (List!64238) C!32228)

(assert (=> b!5933088 (= e!3631006 (= (head!12499 s!2326) (c!1054641 r!7292)))))

(declare-fun b!5933090 () Bool)

(declare-fun res!2485566 () Bool)

(assert (=> b!5933090 (=> res!2485566 e!3631005)))

(declare-fun tail!11584 (List!64238) List!64238)

(assert (=> b!5933090 (= res!2485566 (not (isEmpty!35980 (tail!11584 s!2326))))))

(declare-fun b!5933091 () Bool)

(assert (=> b!5933091 (= e!3631005 (not (= (head!12499 s!2326) (c!1054641 r!7292))))))

(declare-fun b!5933092 () Bool)

(declare-fun e!3631004 () Bool)

(assert (=> b!5933092 (= e!3631004 (nullable!5974 r!7292))))

(declare-fun bm!471125 () Bool)

(assert (=> bm!471125 (= call!471130 (isEmpty!35980 s!2326))))

(declare-fun b!5933093 () Bool)

(declare-fun res!2485561 () Bool)

(assert (=> b!5933093 (=> res!2485561 e!3631000)))

(assert (=> b!5933093 (= res!2485561 e!3631006)))

(declare-fun res!2485560 () Bool)

(assert (=> b!5933093 (=> (not res!2485560) (not e!3631006))))

(declare-fun lt!2310906 () Bool)

(assert (=> b!5933093 (= res!2485560 lt!2310906)))

(declare-fun d!1859993 () Bool)

(declare-fun e!3631002 () Bool)

(assert (=> d!1859993 e!3631002))

(declare-fun c!1054715 () Bool)

(assert (=> d!1859993 (= c!1054715 ((_ is EmptyExpr!15979) r!7292))))

(assert (=> d!1859993 (= lt!2310906 e!3631004)))

(declare-fun c!1054717 () Bool)

(assert (=> d!1859993 (= c!1054717 (isEmpty!35980 s!2326))))

(assert (=> d!1859993 (validRegex!7715 r!7292)))

(assert (=> d!1859993 (= (matchR!8162 r!7292 s!2326) lt!2310906)))

(declare-fun b!5933089 () Bool)

(assert (=> b!5933089 (= e!3631002 (= lt!2310906 call!471130))))

(declare-fun b!5933094 () Bool)

(declare-fun derivativeStep!4709 (Regex!15979 C!32228) Regex!15979)

(assert (=> b!5933094 (= e!3631004 (matchR!8162 (derivativeStep!4709 r!7292 (head!12499 s!2326)) (tail!11584 s!2326)))))

(declare-fun b!5933095 () Bool)

(declare-fun res!2485563 () Bool)

(assert (=> b!5933095 (=> (not res!2485563) (not e!3631006))))

(assert (=> b!5933095 (= res!2485563 (not call!471130))))

(declare-fun b!5933096 () Bool)

(assert (=> b!5933096 (= e!3631000 e!3631001)))

(declare-fun res!2485567 () Bool)

(assert (=> b!5933096 (=> (not res!2485567) (not e!3631001))))

(assert (=> b!5933096 (= res!2485567 (not lt!2310906))))

(declare-fun b!5933097 () Bool)

(assert (=> b!5933097 (= e!3631003 (not lt!2310906))))

(declare-fun b!5933098 () Bool)

(declare-fun res!2485562 () Bool)

(assert (=> b!5933098 (=> (not res!2485562) (not e!3631006))))

(assert (=> b!5933098 (= res!2485562 (isEmpty!35980 (tail!11584 s!2326)))))

(declare-fun b!5933099 () Bool)

(assert (=> b!5933099 (= e!3631002 e!3631003)))

(declare-fun c!1054716 () Bool)

(assert (=> b!5933099 (= c!1054716 ((_ is EmptyLang!15979) r!7292))))

(assert (= (and d!1859993 c!1054717) b!5933092))

(assert (= (and d!1859993 (not c!1054717)) b!5933094))

(assert (= (and d!1859993 c!1054715) b!5933089))

(assert (= (and d!1859993 (not c!1054715)) b!5933099))

(assert (= (and b!5933099 c!1054716) b!5933097))

(assert (= (and b!5933099 (not c!1054716)) b!5933087))

(assert (= (and b!5933087 (not res!2485565)) b!5933093))

(assert (= (and b!5933093 res!2485560) b!5933095))

(assert (= (and b!5933095 res!2485563) b!5933098))

(assert (= (and b!5933098 res!2485562) b!5933088))

(assert (= (and b!5933093 (not res!2485561)) b!5933096))

(assert (= (and b!5933096 res!2485567) b!5933086))

(assert (= (and b!5933086 (not res!2485564)) b!5933090))

(assert (= (and b!5933090 (not res!2485566)) b!5933091))

(assert (= (or b!5933089 b!5933086 b!5933095) bm!471125))

(declare-fun m!6824752 () Bool)

(assert (=> b!5933090 m!6824752))

(assert (=> b!5933090 m!6824752))

(declare-fun m!6824754 () Bool)

(assert (=> b!5933090 m!6824754))

(assert (=> b!5933098 m!6824752))

(assert (=> b!5933098 m!6824752))

(assert (=> b!5933098 m!6824754))

(declare-fun m!6824756 () Bool)

(assert (=> b!5933088 m!6824756))

(assert (=> b!5933094 m!6824756))

(assert (=> b!5933094 m!6824756))

(declare-fun m!6824758 () Bool)

(assert (=> b!5933094 m!6824758))

(assert (=> b!5933094 m!6824752))

(assert (=> b!5933094 m!6824758))

(assert (=> b!5933094 m!6824752))

(declare-fun m!6824760 () Bool)

(assert (=> b!5933094 m!6824760))

(assert (=> b!5933091 m!6824756))

(declare-fun m!6824762 () Bool)

(assert (=> b!5933092 m!6824762))

(assert (=> bm!471125 m!6824722))

(assert (=> d!1859993 m!6824722))

(assert (=> d!1859993 m!6824556))

(assert (=> b!5932849 d!1859993))

(declare-fun d!1860009 () Bool)

(assert (=> d!1860009 (= (matchR!8162 r!7292 s!2326) (matchRSpec!3080 r!7292 s!2326))))

(declare-fun lt!2310911 () Unit!157229)

(declare-fun choose!44716 (Regex!15979 List!64238) Unit!157229)

(assert (=> d!1860009 (= lt!2310911 (choose!44716 r!7292 s!2326))))

(assert (=> d!1860009 (validRegex!7715 r!7292)))

(assert (=> d!1860009 (= (mainMatchTheorem!3080 r!7292 s!2326) lt!2310911)))

(declare-fun bs!1403679 () Bool)

(assert (= bs!1403679 d!1860009))

(assert (=> bs!1403679 m!6824548))

(assert (=> bs!1403679 m!6824546))

(declare-fun m!6824764 () Bool)

(assert (=> bs!1403679 m!6824764))

(assert (=> bs!1403679 m!6824556))

(assert (=> b!5932849 d!1860009))

(declare-fun bs!1403682 () Bool)

(declare-fun d!1860011 () Bool)

(assert (= bs!1403682 (and d!1860011 d!1859959)))

(declare-fun lambda!323540 () Int)

(assert (=> bs!1403682 (= lambda!323540 lambda!323512)))

(declare-fun b!5933177 () Bool)

(declare-fun e!3631061 () Bool)

(declare-fun lt!2310915 () Regex!15979)

(declare-fun isEmptyLang!1415 (Regex!15979) Bool)

(assert (=> b!5933177 (= e!3631061 (isEmptyLang!1415 lt!2310915))))

(declare-fun e!3631058 () Bool)

(assert (=> d!1860011 e!3631058))

(declare-fun res!2485594 () Bool)

(assert (=> d!1860011 (=> (not res!2485594) (not e!3631058))))

(assert (=> d!1860011 (= res!2485594 (validRegex!7715 lt!2310915))))

(declare-fun e!3631060 () Regex!15979)

(assert (=> d!1860011 (= lt!2310915 e!3631060)))

(declare-fun c!1054744 () Bool)

(declare-fun e!3631063 () Bool)

(assert (=> d!1860011 (= c!1054744 e!3631063)))

(declare-fun res!2485593 () Bool)

(assert (=> d!1860011 (=> (not res!2485593) (not e!3631063))))

(assert (=> d!1860011 (= res!2485593 ((_ is Cons!64112) (unfocusZipperList!1400 zl!343)))))

(assert (=> d!1860011 (forall!15062 (unfocusZipperList!1400 zl!343) lambda!323540)))

(assert (=> d!1860011 (= (generalisedUnion!1823 (unfocusZipperList!1400 zl!343)) lt!2310915)))

(declare-fun b!5933178 () Bool)

(declare-fun e!3631062 () Regex!15979)

(assert (=> b!5933178 (= e!3631062 (Union!15979 (h!70560 (unfocusZipperList!1400 zl!343)) (generalisedUnion!1823 (t!377635 (unfocusZipperList!1400 zl!343)))))))

(declare-fun b!5933179 () Bool)

(assert (=> b!5933179 (= e!3631063 (isEmpty!35977 (t!377635 (unfocusZipperList!1400 zl!343))))))

(declare-fun b!5933180 () Bool)

(declare-fun e!3631059 () Bool)

(declare-fun isUnion!845 (Regex!15979) Bool)

(assert (=> b!5933180 (= e!3631059 (isUnion!845 lt!2310915))))

(declare-fun b!5933181 () Bool)

(assert (=> b!5933181 (= e!3631059 (= lt!2310915 (head!12497 (unfocusZipperList!1400 zl!343))))))

(declare-fun b!5933182 () Bool)

(assert (=> b!5933182 (= e!3631060 (h!70560 (unfocusZipperList!1400 zl!343)))))

(declare-fun b!5933183 () Bool)

(assert (=> b!5933183 (= e!3631061 e!3631059)))

(declare-fun c!1054745 () Bool)

(assert (=> b!5933183 (= c!1054745 (isEmpty!35977 (tail!11582 (unfocusZipperList!1400 zl!343))))))

(declare-fun b!5933184 () Bool)

(assert (=> b!5933184 (= e!3631060 e!3631062)))

(declare-fun c!1054747 () Bool)

(assert (=> b!5933184 (= c!1054747 ((_ is Cons!64112) (unfocusZipperList!1400 zl!343)))))

(declare-fun b!5933185 () Bool)

(assert (=> b!5933185 (= e!3631058 e!3631061)))

(declare-fun c!1054746 () Bool)

(assert (=> b!5933185 (= c!1054746 (isEmpty!35977 (unfocusZipperList!1400 zl!343)))))

(declare-fun b!5933186 () Bool)

(assert (=> b!5933186 (= e!3631062 EmptyLang!15979)))

(assert (= (and d!1860011 res!2485593) b!5933179))

(assert (= (and d!1860011 c!1054744) b!5933182))

(assert (= (and d!1860011 (not c!1054744)) b!5933184))

(assert (= (and b!5933184 c!1054747) b!5933178))

(assert (= (and b!5933184 (not c!1054747)) b!5933186))

(assert (= (and d!1860011 res!2485594) b!5933185))

(assert (= (and b!5933185 c!1054746) b!5933177))

(assert (= (and b!5933185 (not c!1054746)) b!5933183))

(assert (= (and b!5933183 c!1054745) b!5933181))

(assert (= (and b!5933183 (not c!1054745)) b!5933180))

(declare-fun m!6824790 () Bool)

(assert (=> b!5933179 m!6824790))

(declare-fun m!6824792 () Bool)

(assert (=> b!5933180 m!6824792))

(assert (=> b!5933183 m!6824552))

(declare-fun m!6824794 () Bool)

(assert (=> b!5933183 m!6824794))

(assert (=> b!5933183 m!6824794))

(declare-fun m!6824796 () Bool)

(assert (=> b!5933183 m!6824796))

(assert (=> b!5933185 m!6824552))

(declare-fun m!6824798 () Bool)

(assert (=> b!5933185 m!6824798))

(declare-fun m!6824800 () Bool)

(assert (=> b!5933177 m!6824800))

(declare-fun m!6824802 () Bool)

(assert (=> d!1860011 m!6824802))

(assert (=> d!1860011 m!6824552))

(declare-fun m!6824804 () Bool)

(assert (=> d!1860011 m!6824804))

(assert (=> b!5933181 m!6824552))

(declare-fun m!6824806 () Bool)

(assert (=> b!5933181 m!6824806))

(declare-fun m!6824808 () Bool)

(assert (=> b!5933178 m!6824808))

(assert (=> b!5932848 d!1860011))

(declare-fun bs!1403683 () Bool)

(declare-fun d!1860019 () Bool)

(assert (= bs!1403683 (and d!1860019 d!1859959)))

(declare-fun lambda!323547 () Int)

(assert (=> bs!1403683 (= lambda!323547 lambda!323512)))

(declare-fun bs!1403684 () Bool)

(assert (= bs!1403684 (and d!1860019 d!1860011)))

(assert (=> bs!1403684 (= lambda!323547 lambda!323540)))

(declare-fun lt!2310918 () List!64236)

(assert (=> d!1860019 (forall!15062 lt!2310918 lambda!323547)))

(declare-fun e!3631084 () List!64236)

(assert (=> d!1860019 (= lt!2310918 e!3631084)))

(declare-fun c!1054758 () Bool)

(assert (=> d!1860019 (= c!1054758 ((_ is Cons!64113) zl!343))))

(assert (=> d!1860019 (= (unfocusZipperList!1400 zl!343) lt!2310918)))

(declare-fun b!5933223 () Bool)

(assert (=> b!5933223 (= e!3631084 (Cons!64112 (generalisedConcat!1576 (exprs!5863 (h!70561 zl!343))) (unfocusZipperList!1400 (t!377636 zl!343))))))

(declare-fun b!5933224 () Bool)

(assert (=> b!5933224 (= e!3631084 Nil!64112)))

(assert (= (and d!1860019 c!1054758) b!5933223))

(assert (= (and d!1860019 (not c!1054758)) b!5933224))

(declare-fun m!6824810 () Bool)

(assert (=> d!1860019 m!6824810))

(assert (=> b!5933223 m!6824568))

(declare-fun m!6824812 () Bool)

(assert (=> b!5933223 m!6824812))

(assert (=> b!5932848 d!1860019))

(declare-fun b!5933225 () Bool)

(declare-fun e!3631086 () Bool)

(assert (=> b!5933225 (= e!3631086 (nullable!5974 (h!70560 (exprs!5863 lt!2310868))))))

(declare-fun bm!471137 () Bool)

(declare-fun call!471142 () (InoxSet Context!10726))

(assert (=> bm!471137 (= call!471142 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 lt!2310868)) (Context!10727 (t!377635 (exprs!5863 lt!2310868))) (h!70562 s!2326)))))

(declare-fun b!5933226 () Bool)

(declare-fun e!3631087 () (InoxSet Context!10726))

(assert (=> b!5933226 (= e!3631087 call!471142)))

(declare-fun e!3631085 () (InoxSet Context!10726))

(declare-fun b!5933227 () Bool)

(assert (=> b!5933227 (= e!3631085 ((_ map or) call!471142 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 lt!2310868))) (h!70562 s!2326))))))

(declare-fun b!5933228 () Bool)

(assert (=> b!5933228 (= e!3631087 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1860021 () Bool)

(declare-fun c!1054759 () Bool)

(assert (=> d!1860021 (= c!1054759 e!3631086)))

(declare-fun res!2485611 () Bool)

(assert (=> d!1860021 (=> (not res!2485611) (not e!3631086))))

(assert (=> d!1860021 (= res!2485611 ((_ is Cons!64112) (exprs!5863 lt!2310868)))))

(assert (=> d!1860021 (= (derivationStepZipperUp!1155 lt!2310868 (h!70562 s!2326)) e!3631085)))

(declare-fun b!5933229 () Bool)

(assert (=> b!5933229 (= e!3631085 e!3631087)))

(declare-fun c!1054760 () Bool)

(assert (=> b!5933229 (= c!1054760 ((_ is Cons!64112) (exprs!5863 lt!2310868)))))

(assert (= (and d!1860021 res!2485611) b!5933225))

(assert (= (and d!1860021 c!1054759) b!5933227))

(assert (= (and d!1860021 (not c!1054759)) b!5933229))

(assert (= (and b!5933229 c!1054760) b!5933226))

(assert (= (and b!5933229 (not c!1054760)) b!5933228))

(assert (= (or b!5933227 b!5933226) bm!471137))

(declare-fun m!6824814 () Bool)

(assert (=> b!5933225 m!6824814))

(declare-fun m!6824816 () Bool)

(assert (=> bm!471137 m!6824816))

(declare-fun m!6824818 () Bool)

(assert (=> b!5933227 m!6824818))

(assert (=> b!5932840 d!1860021))

(declare-fun b!5933230 () Bool)

(declare-fun e!3631089 () Bool)

(assert (=> b!5933230 (= e!3631089 (nullable!5974 (h!70560 (exprs!5863 lt!2310867))))))

(declare-fun bm!471138 () Bool)

(declare-fun call!471143 () (InoxSet Context!10726))

(assert (=> bm!471138 (= call!471143 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 lt!2310867)) (Context!10727 (t!377635 (exprs!5863 lt!2310867))) (h!70562 s!2326)))))

(declare-fun b!5933231 () Bool)

(declare-fun e!3631090 () (InoxSet Context!10726))

(assert (=> b!5933231 (= e!3631090 call!471143)))

(declare-fun e!3631088 () (InoxSet Context!10726))

(declare-fun b!5933232 () Bool)

(assert (=> b!5933232 (= e!3631088 ((_ map or) call!471143 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 lt!2310867))) (h!70562 s!2326))))))

(declare-fun b!5933233 () Bool)

(assert (=> b!5933233 (= e!3631090 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1860023 () Bool)

(declare-fun c!1054761 () Bool)

(assert (=> d!1860023 (= c!1054761 e!3631089)))

(declare-fun res!2485612 () Bool)

(assert (=> d!1860023 (=> (not res!2485612) (not e!3631089))))

(assert (=> d!1860023 (= res!2485612 ((_ is Cons!64112) (exprs!5863 lt!2310867)))))

(assert (=> d!1860023 (= (derivationStepZipperUp!1155 lt!2310867 (h!70562 s!2326)) e!3631088)))

(declare-fun b!5933234 () Bool)

(assert (=> b!5933234 (= e!3631088 e!3631090)))

(declare-fun c!1054762 () Bool)

(assert (=> b!5933234 (= c!1054762 ((_ is Cons!64112) (exprs!5863 lt!2310867)))))

(assert (= (and d!1860023 res!2485612) b!5933230))

(assert (= (and d!1860023 c!1054761) b!5933232))

(assert (= (and d!1860023 (not c!1054761)) b!5933234))

(assert (= (and b!5933234 c!1054762) b!5933231))

(assert (= (and b!5933234 (not c!1054762)) b!5933233))

(assert (= (or b!5933232 b!5933231) bm!471138))

(declare-fun m!6824820 () Bool)

(assert (=> b!5933230 m!6824820))

(declare-fun m!6824822 () Bool)

(assert (=> bm!471138 m!6824822))

(declare-fun m!6824824 () Bool)

(assert (=> b!5933232 m!6824824))

(assert (=> b!5932840 d!1860023))

(declare-fun d!1860025 () Bool)

(assert (=> d!1860025 (= (flatMap!1492 lt!2310863 lambda!323506) (choose!44714 lt!2310863 lambda!323506))))

(declare-fun bs!1403685 () Bool)

(assert (= bs!1403685 d!1860025))

(declare-fun m!6824826 () Bool)

(assert (=> bs!1403685 m!6824826))

(assert (=> b!5932840 d!1860025))

(declare-fun d!1860027 () Bool)

(assert (=> d!1860027 (= (flatMap!1492 lt!2310863 lambda!323506) (dynLambda!25072 lambda!323506 lt!2310868))))

(declare-fun lt!2310919 () Unit!157229)

(assert (=> d!1860027 (= lt!2310919 (choose!44715 lt!2310863 lt!2310868 lambda!323506))))

(assert (=> d!1860027 (= lt!2310863 (store ((as const (Array Context!10726 Bool)) false) lt!2310868 true))))

(assert (=> d!1860027 (= (lemmaFlatMapOnSingletonSet!1018 lt!2310863 lt!2310868 lambda!323506) lt!2310919)))

(declare-fun b_lambda!222819 () Bool)

(assert (=> (not b_lambda!222819) (not d!1860027)))

(declare-fun bs!1403686 () Bool)

(assert (= bs!1403686 d!1860027))

(assert (=> bs!1403686 m!6824582))

(declare-fun m!6824828 () Bool)

(assert (=> bs!1403686 m!6824828))

(declare-fun m!6824830 () Bool)

(assert (=> bs!1403686 m!6824830))

(assert (=> bs!1403686 m!6824584))

(assert (=> b!5932840 d!1860027))

(declare-fun bs!1403687 () Bool)

(declare-fun d!1860029 () Bool)

(assert (= bs!1403687 (and d!1860029 d!1859959)))

(declare-fun lambda!323550 () Int)

(assert (=> bs!1403687 (= lambda!323550 lambda!323512)))

(declare-fun bs!1403688 () Bool)

(assert (= bs!1403688 (and d!1860029 d!1860011)))

(assert (=> bs!1403688 (= lambda!323550 lambda!323540)))

(declare-fun bs!1403689 () Bool)

(assert (= bs!1403689 (and d!1860029 d!1860019)))

(assert (=> bs!1403689 (= lambda!323550 lambda!323547)))

(assert (=> d!1860029 (= (inv!83194 lt!2310867) (forall!15062 (exprs!5863 lt!2310867) lambda!323550))))

(declare-fun bs!1403690 () Bool)

(assert (= bs!1403690 d!1860029))

(declare-fun m!6824832 () Bool)

(assert (=> bs!1403690 m!6824832))

(assert (=> b!5932840 d!1860029))

(declare-fun bs!1403691 () Bool)

(declare-fun d!1860031 () Bool)

(assert (= bs!1403691 (and d!1860031 d!1859959)))

(declare-fun lambda!323551 () Int)

(assert (=> bs!1403691 (= lambda!323551 lambda!323512)))

(declare-fun bs!1403692 () Bool)

(assert (= bs!1403692 (and d!1860031 d!1860011)))

(assert (=> bs!1403692 (= lambda!323551 lambda!323540)))

(declare-fun bs!1403693 () Bool)

(assert (= bs!1403693 (and d!1860031 d!1860019)))

(assert (=> bs!1403693 (= lambda!323551 lambda!323547)))

(declare-fun bs!1403694 () Bool)

(assert (= bs!1403694 (and d!1860031 d!1860029)))

(assert (=> bs!1403694 (= lambda!323551 lambda!323550)))

(assert (=> d!1860031 (= (inv!83194 setElem!40268) (forall!15062 (exprs!5863 setElem!40268) lambda!323551))))

(declare-fun bs!1403695 () Bool)

(assert (= bs!1403695 d!1860031))

(declare-fun m!6824834 () Bool)

(assert (=> bs!1403695 m!6824834))

(assert (=> setNonEmpty!40268 d!1860031))

(declare-fun bs!1403696 () Bool)

(declare-fun d!1860033 () Bool)

(assert (= bs!1403696 (and d!1860033 d!1860029)))

(declare-fun lambda!323553 () Int)

(assert (=> bs!1403696 (= lambda!323553 lambda!323550)))

(declare-fun bs!1403697 () Bool)

(assert (= bs!1403697 (and d!1860033 d!1860031)))

(assert (=> bs!1403697 (= lambda!323553 lambda!323551)))

(declare-fun bs!1403698 () Bool)

(assert (= bs!1403698 (and d!1860033 d!1860011)))

(assert (=> bs!1403698 (= lambda!323553 lambda!323540)))

(declare-fun bs!1403700 () Bool)

(assert (= bs!1403700 (and d!1860033 d!1859959)))

(assert (=> bs!1403700 (= lambda!323553 lambda!323512)))

(declare-fun bs!1403701 () Bool)

(assert (= bs!1403701 (and d!1860033 d!1860019)))

(assert (=> bs!1403701 (= lambda!323553 lambda!323547)))

(assert (=> d!1860033 (= (inv!83194 (h!70561 zl!343)) (forall!15062 (exprs!5863 (h!70561 zl!343)) lambda!323553))))

(declare-fun bs!1403703 () Bool)

(assert (= bs!1403703 d!1860033))

(declare-fun m!6824836 () Bool)

(assert (=> bs!1403703 m!6824836))

(assert (=> b!5932843 d!1860033))

(declare-fun b!5933306 () Bool)

(declare-fun e!3631131 () Bool)

(assert (=> b!5933306 (= e!3631131 (matchR!8162 (regTwo!32470 r!7292) s!2326))))

(declare-fun b!5933307 () Bool)

(declare-fun e!3631130 () Bool)

(declare-fun lt!2310931 () Option!15870)

(declare-fun ++!14076 (List!64238 List!64238) List!64238)

(declare-fun get!22081 (Option!15870) tuple2!65916)

(assert (=> b!5933307 (= e!3631130 (= (++!14076 (_1!36261 (get!22081 lt!2310931)) (_2!36261 (get!22081 lt!2310931))) s!2326))))

(declare-fun b!5933308 () Bool)

(declare-fun res!2485654 () Bool)

(assert (=> b!5933308 (=> (not res!2485654) (not e!3631130))))

(assert (=> b!5933308 (= res!2485654 (matchR!8162 (regOne!32470 r!7292) (_1!36261 (get!22081 lt!2310931))))))

(declare-fun b!5933309 () Bool)

(declare-fun e!3631129 () Option!15870)

(assert (=> b!5933309 (= e!3631129 (Some!15869 (tuple2!65917 Nil!64114 s!2326)))))

(declare-fun b!5933310 () Bool)

(declare-fun lt!2310929 () Unit!157229)

(declare-fun lt!2310930 () Unit!157229)

(assert (=> b!5933310 (= lt!2310929 lt!2310930)))

(assert (=> b!5933310 (= (++!14076 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (t!377637 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2171 (List!64238 C!32228 List!64238 List!64238) Unit!157229)

(assert (=> b!5933310 (= lt!2310930 (lemmaMoveElementToOtherListKeepsConcatEq!2171 Nil!64114 (h!70562 s!2326) (t!377637 s!2326) s!2326))))

(declare-fun e!3631133 () Option!15870)

(assert (=> b!5933310 (= e!3631133 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (t!377637 s!2326) s!2326))))

(declare-fun d!1860035 () Bool)

(declare-fun e!3631132 () Bool)

(assert (=> d!1860035 e!3631132))

(declare-fun res!2485652 () Bool)

(assert (=> d!1860035 (=> res!2485652 e!3631132)))

(assert (=> d!1860035 (= res!2485652 e!3631130)))

(declare-fun res!2485650 () Bool)

(assert (=> d!1860035 (=> (not res!2485650) (not e!3631130))))

(assert (=> d!1860035 (= res!2485650 (isDefined!12573 lt!2310931))))

(assert (=> d!1860035 (= lt!2310931 e!3631129)))

(declare-fun c!1054781 () Bool)

(assert (=> d!1860035 (= c!1054781 e!3631131)))

(declare-fun res!2485653 () Bool)

(assert (=> d!1860035 (=> (not res!2485653) (not e!3631131))))

(assert (=> d!1860035 (= res!2485653 (matchR!8162 (regOne!32470 r!7292) Nil!64114))))

(assert (=> d!1860035 (validRegex!7715 (regOne!32470 r!7292))))

(assert (=> d!1860035 (= (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326) lt!2310931)))

(declare-fun b!5933311 () Bool)

(assert (=> b!5933311 (= e!3631132 (not (isDefined!12573 lt!2310931)))))

(declare-fun b!5933312 () Bool)

(assert (=> b!5933312 (= e!3631129 e!3631133)))

(declare-fun c!1054780 () Bool)

(assert (=> b!5933312 (= c!1054780 ((_ is Nil!64114) s!2326))))

(declare-fun b!5933313 () Bool)

(declare-fun res!2485651 () Bool)

(assert (=> b!5933313 (=> (not res!2485651) (not e!3631130))))

(assert (=> b!5933313 (= res!2485651 (matchR!8162 (regTwo!32470 r!7292) (_2!36261 (get!22081 lt!2310931))))))

(declare-fun b!5933314 () Bool)

(assert (=> b!5933314 (= e!3631133 None!15869)))

(assert (= (and d!1860035 res!2485653) b!5933306))

(assert (= (and d!1860035 c!1054781) b!5933309))

(assert (= (and d!1860035 (not c!1054781)) b!5933312))

(assert (= (and b!5933312 c!1054780) b!5933314))

(assert (= (and b!5933312 (not c!1054780)) b!5933310))

(assert (= (and d!1860035 res!2485650) b!5933308))

(assert (= (and b!5933308 res!2485654) b!5933313))

(assert (= (and b!5933313 res!2485651) b!5933307))

(assert (= (and d!1860035 (not res!2485652)) b!5933311))

(declare-fun m!6824858 () Bool)

(assert (=> b!5933311 m!6824858))

(declare-fun m!6824860 () Bool)

(assert (=> b!5933308 m!6824860))

(declare-fun m!6824862 () Bool)

(assert (=> b!5933308 m!6824862))

(assert (=> b!5933307 m!6824860))

(declare-fun m!6824864 () Bool)

(assert (=> b!5933307 m!6824864))

(declare-fun m!6824866 () Bool)

(assert (=> b!5933306 m!6824866))

(assert (=> d!1860035 m!6824858))

(declare-fun m!6824868 () Bool)

(assert (=> d!1860035 m!6824868))

(declare-fun m!6824870 () Bool)

(assert (=> d!1860035 m!6824870))

(declare-fun m!6824872 () Bool)

(assert (=> b!5933310 m!6824872))

(assert (=> b!5933310 m!6824872))

(declare-fun m!6824874 () Bool)

(assert (=> b!5933310 m!6824874))

(declare-fun m!6824876 () Bool)

(assert (=> b!5933310 m!6824876))

(assert (=> b!5933310 m!6824872))

(declare-fun m!6824878 () Bool)

(assert (=> b!5933310 m!6824878))

(assert (=> b!5933313 m!6824860))

(declare-fun m!6824880 () Bool)

(assert (=> b!5933313 m!6824880))

(assert (=> b!5932851 d!1860035))

(declare-fun d!1860041 () Bool)

(declare-fun choose!44718 (Int) Bool)

(assert (=> d!1860041 (= (Exists!3049 lambda!323505) (choose!44718 lambda!323505))))

(declare-fun bs!1403709 () Bool)

(assert (= bs!1403709 d!1860041))

(declare-fun m!6824882 () Bool)

(assert (=> bs!1403709 m!6824882))

(assert (=> b!5932851 d!1860041))

(declare-fun bs!1403718 () Bool)

(declare-fun d!1860043 () Bool)

(assert (= bs!1403718 (and d!1860043 b!5932851)))

(declare-fun lambda!323563 () Int)

(assert (=> bs!1403718 (= lambda!323563 lambda!323504)))

(assert (=> bs!1403718 (not (= lambda!323563 lambda!323505))))

(declare-fun bs!1403720 () Bool)

(assert (= bs!1403720 (and d!1860043 b!5933039)))

(assert (=> bs!1403720 (not (= lambda!323563 lambda!323524))))

(declare-fun bs!1403721 () Bool)

(assert (= bs!1403721 (and d!1860043 b!5933037)))

(assert (=> bs!1403721 (not (= lambda!323563 lambda!323525))))

(assert (=> d!1860043 true))

(assert (=> d!1860043 true))

(assert (=> d!1860043 true))

(declare-fun lambda!323564 () Int)

(assert (=> bs!1403718 (= lambda!323564 lambda!323505)))

(assert (=> bs!1403721 (= lambda!323564 lambda!323525)))

(assert (=> bs!1403718 (not (= lambda!323564 lambda!323504))))

(declare-fun bs!1403722 () Bool)

(assert (= bs!1403722 d!1860043))

(assert (=> bs!1403722 (not (= lambda!323564 lambda!323563))))

(assert (=> bs!1403720 (not (= lambda!323564 lambda!323524))))

(assert (=> d!1860043 true))

(assert (=> d!1860043 true))

(assert (=> d!1860043 true))

(assert (=> d!1860043 (= (Exists!3049 lambda!323563) (Exists!3049 lambda!323564))))

(declare-fun lt!2310939 () Unit!157229)

(declare-fun choose!44719 (Regex!15979 Regex!15979 List!64238) Unit!157229)

(assert (=> d!1860043 (= lt!2310939 (choose!44719 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326))))

(assert (=> d!1860043 (validRegex!7715 (regOne!32470 r!7292))))

(assert (=> d!1860043 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1586 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326) lt!2310939)))

(declare-fun m!6824908 () Bool)

(assert (=> bs!1403722 m!6824908))

(declare-fun m!6824910 () Bool)

(assert (=> bs!1403722 m!6824910))

(declare-fun m!6824912 () Bool)

(assert (=> bs!1403722 m!6824912))

(assert (=> bs!1403722 m!6824870))

(assert (=> b!5932851 d!1860043))

(declare-fun d!1860051 () Bool)

(declare-fun isEmpty!35982 (Option!15870) Bool)

(assert (=> d!1860051 (= (isDefined!12573 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326)) (not (isEmpty!35982 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326))))))

(declare-fun bs!1403723 () Bool)

(assert (= bs!1403723 d!1860051))

(assert (=> bs!1403723 m!6824588))

(declare-fun m!6824914 () Bool)

(assert (=> bs!1403723 m!6824914))

(assert (=> b!5932851 d!1860051))

(declare-fun bs!1403729 () Bool)

(declare-fun d!1860053 () Bool)

(assert (= bs!1403729 (and d!1860053 b!5932851)))

(declare-fun lambda!323570 () Int)

(assert (=> bs!1403729 (not (= lambda!323570 lambda!323505))))

(declare-fun bs!1403731 () Bool)

(assert (= bs!1403731 (and d!1860053 b!5933037)))

(assert (=> bs!1403731 (not (= lambda!323570 lambda!323525))))

(assert (=> bs!1403729 (= lambda!323570 lambda!323504)))

(declare-fun bs!1403733 () Bool)

(assert (= bs!1403733 (and d!1860053 d!1860043)))

(assert (=> bs!1403733 (not (= lambda!323570 lambda!323564))))

(assert (=> bs!1403733 (= lambda!323570 lambda!323563)))

(declare-fun bs!1403734 () Bool)

(assert (= bs!1403734 (and d!1860053 b!5933039)))

(assert (=> bs!1403734 (not (= lambda!323570 lambda!323524))))

(assert (=> d!1860053 true))

(assert (=> d!1860053 true))

(assert (=> d!1860053 true))

(assert (=> d!1860053 (= (isDefined!12573 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326)) (Exists!3049 lambda!323570))))

(declare-fun lt!2310946 () Unit!157229)

(declare-fun choose!44720 (Regex!15979 Regex!15979 List!64238) Unit!157229)

(assert (=> d!1860053 (= lt!2310946 (choose!44720 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326))))

(assert (=> d!1860053 (validRegex!7715 (regOne!32470 r!7292))))

(assert (=> d!1860053 (= (lemmaFindConcatSeparationEquivalentToExists!2048 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326) lt!2310946)))

(declare-fun bs!1403735 () Bool)

(assert (= bs!1403735 d!1860053))

(assert (=> bs!1403735 m!6824588))

(assert (=> bs!1403735 m!6824588))

(assert (=> bs!1403735 m!6824590))

(declare-fun m!6824924 () Bool)

(assert (=> bs!1403735 m!6824924))

(declare-fun m!6824926 () Bool)

(assert (=> bs!1403735 m!6824926))

(assert (=> bs!1403735 m!6824870))

(assert (=> b!5932851 d!1860053))

(declare-fun d!1860059 () Bool)

(assert (=> d!1860059 (= (Exists!3049 lambda!323504) (choose!44718 lambda!323504))))

(declare-fun bs!1403736 () Bool)

(assert (= bs!1403736 d!1860059))

(declare-fun m!6824928 () Bool)

(assert (=> bs!1403736 m!6824928))

(assert (=> b!5932851 d!1860059))

(declare-fun d!1860061 () Bool)

(assert (=> d!1860061 (= (isEmpty!35978 (t!377636 zl!343)) ((_ is Nil!64113) (t!377636 zl!343)))))

(assert (=> b!5932853 d!1860061))

(declare-fun d!1860063 () Bool)

(declare-fun e!3631186 () Bool)

(assert (=> d!1860063 e!3631186))

(declare-fun res!2485675 () Bool)

(assert (=> d!1860063 (=> (not res!2485675) (not e!3631186))))

(declare-fun lt!2310949 () List!64237)

(declare-fun noDuplicate!1837 (List!64237) Bool)

(assert (=> d!1860063 (= res!2485675 (noDuplicate!1837 lt!2310949))))

(declare-fun choose!44721 ((InoxSet Context!10726)) List!64237)

(assert (=> d!1860063 (= lt!2310949 (choose!44721 z!1189))))

(assert (=> d!1860063 (= (toList!9763 z!1189) lt!2310949)))

(declare-fun b!5933419 () Bool)

(declare-fun content!11816 (List!64237) (InoxSet Context!10726))

(assert (=> b!5933419 (= e!3631186 (= (content!11816 lt!2310949) z!1189))))

(assert (= (and d!1860063 res!2485675) b!5933419))

(declare-fun m!6824930 () Bool)

(assert (=> d!1860063 m!6824930))

(declare-fun m!6824932 () Bool)

(assert (=> d!1860063 m!6824932))

(declare-fun m!6824934 () Bool)

(assert (=> b!5933419 m!6824934))

(assert (=> b!5932844 d!1860063))

(declare-fun c!1054809 () Bool)

(declare-fun call!471167 () (InoxSet Context!10726))

(declare-fun call!471168 () List!64236)

(declare-fun bm!471158 () Bool)

(assert (=> bm!471158 (= call!471167 (derivationStepZipperDown!1229 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292)) (ite c!1054809 (Context!10727 Nil!64112) (Context!10727 call!471168)) (h!70562 s!2326)))))

(declare-fun bm!471159 () Bool)

(declare-fun call!471166 () (InoxSet Context!10726))

(declare-fun call!471164 () (InoxSet Context!10726))

(assert (=> bm!471159 (= call!471166 call!471164)))

(declare-fun c!1054808 () Bool)

(declare-fun call!471165 () List!64236)

(declare-fun c!1054810 () Bool)

(declare-fun bm!471160 () Bool)

(assert (=> bm!471160 (= call!471164 (derivationStepZipperDown!1229 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292)))) (ite (or c!1054809 c!1054810) (Context!10727 Nil!64112) (Context!10727 call!471165)) (h!70562 s!2326)))))

(declare-fun b!5933442 () Bool)

(declare-fun e!3631204 () Bool)

(assert (=> b!5933442 (= c!1054810 e!3631204)))

(declare-fun res!2485678 () Bool)

(assert (=> b!5933442 (=> (not res!2485678) (not e!3631204))))

(assert (=> b!5933442 (= res!2485678 ((_ is Concat!24824) r!7292))))

(declare-fun e!3631202 () (InoxSet Context!10726))

(declare-fun e!3631201 () (InoxSet Context!10726))

(assert (=> b!5933442 (= e!3631202 e!3631201)))

(declare-fun b!5933443 () Bool)

(declare-fun e!3631199 () (InoxSet Context!10726))

(assert (=> b!5933443 (= e!3631199 (store ((as const (Array Context!10726 Bool)) false) (Context!10727 Nil!64112) true))))

(declare-fun bm!471161 () Bool)

(declare-fun $colon$colon!1866 (List!64236 Regex!15979) List!64236)

(assert (=> bm!471161 (= call!471168 ($colon$colon!1866 (exprs!5863 (Context!10727 Nil!64112)) (ite (or c!1054810 c!1054808) (regTwo!32470 r!7292) r!7292)))))

(declare-fun bm!471162 () Bool)

(declare-fun call!471163 () (InoxSet Context!10726))

(assert (=> bm!471162 (= call!471163 call!471166)))

(declare-fun b!5933444 () Bool)

(assert (=> b!5933444 (= e!3631204 (nullable!5974 (regOne!32470 r!7292)))))

(declare-fun b!5933445 () Bool)

(assert (=> b!5933445 (= e!3631202 ((_ map or) call!471164 call!471167))))

(declare-fun b!5933446 () Bool)

(declare-fun e!3631200 () (InoxSet Context!10726))

(assert (=> b!5933446 (= e!3631200 call!471163)))

(declare-fun b!5933447 () Bool)

(assert (=> b!5933447 (= e!3631200 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5933448 () Bool)

(declare-fun e!3631203 () (InoxSet Context!10726))

(assert (=> b!5933448 (= e!3631201 e!3631203)))

(assert (=> b!5933448 (= c!1054808 ((_ is Concat!24824) r!7292))))

(declare-fun b!5933449 () Bool)

(assert (=> b!5933449 (= e!3631201 ((_ map or) call!471167 call!471166))))

(declare-fun b!5933450 () Bool)

(assert (=> b!5933450 (= e!3631203 call!471163)))

(declare-fun b!5933451 () Bool)

(declare-fun c!1054807 () Bool)

(assert (=> b!5933451 (= c!1054807 ((_ is Star!15979) r!7292))))

(assert (=> b!5933451 (= e!3631203 e!3631200)))

(declare-fun b!5933452 () Bool)

(assert (=> b!5933452 (= e!3631199 e!3631202)))

(assert (=> b!5933452 (= c!1054809 ((_ is Union!15979) r!7292))))

(declare-fun d!1860065 () Bool)

(declare-fun c!1054811 () Bool)

(assert (=> d!1860065 (= c!1054811 (and ((_ is ElementMatch!15979) r!7292) (= (c!1054641 r!7292) (h!70562 s!2326))))))

(assert (=> d!1860065 (= (derivationStepZipperDown!1229 r!7292 (Context!10727 Nil!64112) (h!70562 s!2326)) e!3631199)))

(declare-fun bm!471163 () Bool)

(assert (=> bm!471163 (= call!471165 call!471168)))

(assert (= (and d!1860065 c!1054811) b!5933443))

(assert (= (and d!1860065 (not c!1054811)) b!5933452))

(assert (= (and b!5933452 c!1054809) b!5933445))

(assert (= (and b!5933452 (not c!1054809)) b!5933442))

(assert (= (and b!5933442 res!2485678) b!5933444))

(assert (= (and b!5933442 c!1054810) b!5933449))

(assert (= (and b!5933442 (not c!1054810)) b!5933448))

(assert (= (and b!5933448 c!1054808) b!5933450))

(assert (= (and b!5933448 (not c!1054808)) b!5933451))

(assert (= (and b!5933451 c!1054807) b!5933446))

(assert (= (and b!5933451 (not c!1054807)) b!5933447))

(assert (= (or b!5933450 b!5933446) bm!471163))

(assert (= (or b!5933450 b!5933446) bm!471162))

(assert (= (or b!5933449 bm!471163) bm!471161))

(assert (= (or b!5933449 bm!471162) bm!471159))

(assert (= (or b!5933445 b!5933449) bm!471158))

(assert (= (or b!5933445 bm!471159) bm!471160))

(declare-fun m!6824936 () Bool)

(assert (=> b!5933443 m!6824936))

(declare-fun m!6824938 () Bool)

(assert (=> bm!471160 m!6824938))

(declare-fun m!6824940 () Bool)

(assert (=> b!5933444 m!6824940))

(declare-fun m!6824942 () Bool)

(assert (=> bm!471158 m!6824942))

(declare-fun m!6824944 () Bool)

(assert (=> bm!471161 m!6824944))

(assert (=> b!5932845 d!1860065))

(declare-fun b!5933453 () Bool)

(declare-fun e!3631206 () Bool)

(assert (=> b!5933453 (= e!3631206 (nullable!5974 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))

(declare-fun bm!471164 () Bool)

(declare-fun call!471169 () (InoxSet Context!10726))

(assert (=> bm!471164 (= call!471169 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (h!70562 s!2326)))))

(declare-fun b!5933454 () Bool)

(declare-fun e!3631207 () (InoxSet Context!10726))

(assert (=> b!5933454 (= e!3631207 call!471169)))

(declare-fun e!3631205 () (InoxSet Context!10726))

(declare-fun b!5933455 () Bool)

(assert (=> b!5933455 (= e!3631205 ((_ map or) call!471169 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (h!70562 s!2326))))))

(declare-fun b!5933456 () Bool)

(assert (=> b!5933456 (= e!3631207 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1860067 () Bool)

(declare-fun c!1054812 () Bool)

(assert (=> d!1860067 (= c!1054812 e!3631206)))

(declare-fun res!2485679 () Bool)

(assert (=> d!1860067 (=> (not res!2485679) (not e!3631206))))

(assert (=> d!1860067 (= res!2485679 ((_ is Cons!64112) (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))

(assert (=> d!1860067 (= (derivationStepZipperUp!1155 (Context!10727 (Cons!64112 r!7292 Nil!64112)) (h!70562 s!2326)) e!3631205)))

(declare-fun b!5933457 () Bool)

(assert (=> b!5933457 (= e!3631205 e!3631207)))

(declare-fun c!1054813 () Bool)

(assert (=> b!5933457 (= c!1054813 ((_ is Cons!64112) (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))

(assert (= (and d!1860067 res!2485679) b!5933453))

(assert (= (and d!1860067 c!1054812) b!5933455))

(assert (= (and d!1860067 (not c!1054812)) b!5933457))

(assert (= (and b!5933457 c!1054813) b!5933454))

(assert (= (and b!5933457 (not c!1054813)) b!5933456))

(assert (= (or b!5933455 b!5933454) bm!471164))

(declare-fun m!6824946 () Bool)

(assert (=> b!5933453 m!6824946))

(declare-fun m!6824948 () Bool)

(assert (=> bm!471164 m!6824948))

(declare-fun m!6824950 () Bool)

(assert (=> b!5933455 m!6824950))

(assert (=> b!5932845 d!1860067))

(declare-fun b!5933477 () Bool)

(declare-fun e!3631222 () Bool)

(declare-fun e!3631228 () Bool)

(assert (=> b!5933477 (= e!3631222 e!3631228)))

(declare-fun res!2485690 () Bool)

(assert (=> b!5933477 (= res!2485690 (not (nullable!5974 (reg!16308 r!7292))))))

(assert (=> b!5933477 (=> (not res!2485690) (not e!3631228))))

(declare-fun b!5933478 () Bool)

(declare-fun e!3631224 () Bool)

(declare-fun e!3631227 () Bool)

(assert (=> b!5933478 (= e!3631224 e!3631227)))

(declare-fun res!2485691 () Bool)

(assert (=> b!5933478 (=> (not res!2485691) (not e!3631227))))

(declare-fun call!471177 () Bool)

(assert (=> b!5933478 (= res!2485691 call!471177)))

(declare-fun bm!471171 () Bool)

(declare-fun c!1054819 () Bool)

(assert (=> bm!471171 (= call!471177 (validRegex!7715 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))))))

(declare-fun b!5933479 () Bool)

(declare-fun e!3631225 () Bool)

(assert (=> b!5933479 (= e!3631225 e!3631222)))

(declare-fun c!1054818 () Bool)

(assert (=> b!5933479 (= c!1054818 ((_ is Star!15979) r!7292))))

(declare-fun b!5933480 () Bool)

(declare-fun call!471176 () Bool)

(assert (=> b!5933480 (= e!3631227 call!471176)))

(declare-fun d!1860069 () Bool)

(declare-fun res!2485694 () Bool)

(assert (=> d!1860069 (=> res!2485694 e!3631225)))

(assert (=> d!1860069 (= res!2485694 ((_ is ElementMatch!15979) r!7292))))

(assert (=> d!1860069 (= (validRegex!7715 r!7292) e!3631225)))

(declare-fun b!5933476 () Bool)

(declare-fun res!2485692 () Bool)

(declare-fun e!3631223 () Bool)

(assert (=> b!5933476 (=> (not res!2485692) (not e!3631223))))

(assert (=> b!5933476 (= res!2485692 call!471177)))

(declare-fun e!3631226 () Bool)

(assert (=> b!5933476 (= e!3631226 e!3631223)))

(declare-fun call!471178 () Bool)

(declare-fun bm!471172 () Bool)

(assert (=> bm!471172 (= call!471178 (validRegex!7715 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))))))

(declare-fun b!5933481 () Bool)

(declare-fun res!2485693 () Bool)

(assert (=> b!5933481 (=> res!2485693 e!3631224)))

(assert (=> b!5933481 (= res!2485693 (not ((_ is Concat!24824) r!7292)))))

(assert (=> b!5933481 (= e!3631226 e!3631224)))

(declare-fun b!5933482 () Bool)

(assert (=> b!5933482 (= e!3631223 call!471176)))

(declare-fun bm!471173 () Bool)

(assert (=> bm!471173 (= call!471176 call!471178)))

(declare-fun b!5933483 () Bool)

(assert (=> b!5933483 (= e!3631222 e!3631226)))

(assert (=> b!5933483 (= c!1054819 ((_ is Union!15979) r!7292))))

(declare-fun b!5933484 () Bool)

(assert (=> b!5933484 (= e!3631228 call!471178)))

(assert (= (and d!1860069 (not res!2485694)) b!5933479))

(assert (= (and b!5933479 c!1054818) b!5933477))

(assert (= (and b!5933479 (not c!1054818)) b!5933483))

(assert (= (and b!5933477 res!2485690) b!5933484))

(assert (= (and b!5933483 c!1054819) b!5933476))

(assert (= (and b!5933483 (not c!1054819)) b!5933481))

(assert (= (and b!5933476 res!2485692) b!5933482))

(assert (= (and b!5933481 (not res!2485693)) b!5933478))

(assert (= (and b!5933478 res!2485691) b!5933480))

(assert (= (or b!5933482 b!5933480) bm!471173))

(assert (= (or b!5933476 b!5933478) bm!471171))

(assert (= (or b!5933484 bm!471173) bm!471172))

(declare-fun m!6824952 () Bool)

(assert (=> b!5933477 m!6824952))

(declare-fun m!6824954 () Bool)

(assert (=> bm!471171 m!6824954))

(declare-fun m!6824956 () Bool)

(assert (=> bm!471172 m!6824956))

(assert (=> start!602884 d!1860069))

(declare-fun d!1860071 () Bool)

(declare-fun lt!2310952 () Regex!15979)

(assert (=> d!1860071 (validRegex!7715 lt!2310952)))

(assert (=> d!1860071 (= lt!2310952 (generalisedUnion!1823 (unfocusZipperList!1400 zl!343)))))

(assert (=> d!1860071 (= (unfocusZipper!1721 zl!343) lt!2310952)))

(declare-fun bs!1403737 () Bool)

(assert (= bs!1403737 d!1860071))

(declare-fun m!6824958 () Bool)

(assert (=> bs!1403737 m!6824958))

(assert (=> bs!1403737 m!6824552))

(assert (=> bs!1403737 m!6824552))

(assert (=> bs!1403737 m!6824554))

(assert (=> b!5932836 d!1860071))

(declare-fun b!5933492 () Bool)

(declare-fun e!3631234 () Bool)

(declare-fun tp!1650717 () Bool)

(assert (=> b!5933492 (= e!3631234 tp!1650717)))

(declare-fun e!3631233 () Bool)

(declare-fun b!5933491 () Bool)

(declare-fun tp!1650718 () Bool)

(assert (=> b!5933491 (= e!3631233 (and (inv!83194 (h!70561 (t!377636 zl!343))) e!3631234 tp!1650718))))

(assert (=> b!5932843 (= tp!1650654 e!3631233)))

(assert (= b!5933491 b!5933492))

(assert (= (and b!5932843 ((_ is Cons!64113) (t!377636 zl!343))) b!5933491))

(declare-fun m!6824960 () Bool)

(assert (=> b!5933491 m!6824960))

(declare-fun b!5933503 () Bool)

(declare-fun e!3631237 () Bool)

(assert (=> b!5933503 (= e!3631237 tp_is_empty!41211)))

(declare-fun b!5933506 () Bool)

(declare-fun tp!1650729 () Bool)

(declare-fun tp!1650733 () Bool)

(assert (=> b!5933506 (= e!3631237 (and tp!1650729 tp!1650733))))

(declare-fun b!5933505 () Bool)

(declare-fun tp!1650732 () Bool)

(assert (=> b!5933505 (= e!3631237 tp!1650732)))

(assert (=> b!5932834 (= tp!1650645 e!3631237)))

(declare-fun b!5933504 () Bool)

(declare-fun tp!1650730 () Bool)

(declare-fun tp!1650731 () Bool)

(assert (=> b!5933504 (= e!3631237 (and tp!1650730 tp!1650731))))

(assert (= (and b!5932834 ((_ is ElementMatch!15979) (reg!16308 r!7292))) b!5933503))

(assert (= (and b!5932834 ((_ is Concat!24824) (reg!16308 r!7292))) b!5933504))

(assert (= (and b!5932834 ((_ is Star!15979) (reg!16308 r!7292))) b!5933505))

(assert (= (and b!5932834 ((_ is Union!15979) (reg!16308 r!7292))) b!5933506))

(declare-fun b!5933511 () Bool)

(declare-fun e!3631240 () Bool)

(declare-fun tp!1650738 () Bool)

(declare-fun tp!1650739 () Bool)

(assert (=> b!5933511 (= e!3631240 (and tp!1650738 tp!1650739))))

(assert (=> b!5932850 (= tp!1650646 e!3631240)))

(assert (= (and b!5932850 ((_ is Cons!64112) (exprs!5863 setElem!40268))) b!5933511))

(declare-fun b!5933516 () Bool)

(declare-fun e!3631243 () Bool)

(declare-fun tp!1650742 () Bool)

(assert (=> b!5933516 (= e!3631243 (and tp_is_empty!41211 tp!1650742))))

(assert (=> b!5932835 (= tp!1650650 e!3631243)))

(assert (= (and b!5932835 ((_ is Cons!64114) (t!377637 s!2326))) b!5933516))

(declare-fun b!5933517 () Bool)

(declare-fun e!3631244 () Bool)

(declare-fun tp!1650743 () Bool)

(declare-fun tp!1650744 () Bool)

(assert (=> b!5933517 (= e!3631244 (and tp!1650743 tp!1650744))))

(assert (=> b!5932854 (= tp!1650648 e!3631244)))

(assert (= (and b!5932854 ((_ is Cons!64112) (exprs!5863 (h!70561 zl!343)))) b!5933517))

(declare-fun b!5933518 () Bool)

(declare-fun e!3631245 () Bool)

(assert (=> b!5933518 (= e!3631245 tp_is_empty!41211)))

(declare-fun b!5933521 () Bool)

(declare-fun tp!1650745 () Bool)

(declare-fun tp!1650749 () Bool)

(assert (=> b!5933521 (= e!3631245 (and tp!1650745 tp!1650749))))

(declare-fun b!5933520 () Bool)

(declare-fun tp!1650748 () Bool)

(assert (=> b!5933520 (= e!3631245 tp!1650748)))

(assert (=> b!5932842 (= tp!1650652 e!3631245)))

(declare-fun b!5933519 () Bool)

(declare-fun tp!1650746 () Bool)

(declare-fun tp!1650747 () Bool)

(assert (=> b!5933519 (= e!3631245 (and tp!1650746 tp!1650747))))

(assert (= (and b!5932842 ((_ is ElementMatch!15979) (regOne!32471 r!7292))) b!5933518))

(assert (= (and b!5932842 ((_ is Concat!24824) (regOne!32471 r!7292))) b!5933519))

(assert (= (and b!5932842 ((_ is Star!15979) (regOne!32471 r!7292))) b!5933520))

(assert (= (and b!5932842 ((_ is Union!15979) (regOne!32471 r!7292))) b!5933521))

(declare-fun b!5933522 () Bool)

(declare-fun e!3631246 () Bool)

(assert (=> b!5933522 (= e!3631246 tp_is_empty!41211)))

(declare-fun b!5933525 () Bool)

(declare-fun tp!1650750 () Bool)

(declare-fun tp!1650754 () Bool)

(assert (=> b!5933525 (= e!3631246 (and tp!1650750 tp!1650754))))

(declare-fun b!5933524 () Bool)

(declare-fun tp!1650753 () Bool)

(assert (=> b!5933524 (= e!3631246 tp!1650753)))

(assert (=> b!5932842 (= tp!1650649 e!3631246)))

(declare-fun b!5933523 () Bool)

(declare-fun tp!1650751 () Bool)

(declare-fun tp!1650752 () Bool)

(assert (=> b!5933523 (= e!3631246 (and tp!1650751 tp!1650752))))

(assert (= (and b!5932842 ((_ is ElementMatch!15979) (regTwo!32471 r!7292))) b!5933522))

(assert (= (and b!5932842 ((_ is Concat!24824) (regTwo!32471 r!7292))) b!5933523))

(assert (= (and b!5932842 ((_ is Star!15979) (regTwo!32471 r!7292))) b!5933524))

(assert (= (and b!5932842 ((_ is Union!15979) (regTwo!32471 r!7292))) b!5933525))

(declare-fun b!5933526 () Bool)

(declare-fun e!3631247 () Bool)

(assert (=> b!5933526 (= e!3631247 tp_is_empty!41211)))

(declare-fun b!5933529 () Bool)

(declare-fun tp!1650755 () Bool)

(declare-fun tp!1650759 () Bool)

(assert (=> b!5933529 (= e!3631247 (and tp!1650755 tp!1650759))))

(declare-fun b!5933528 () Bool)

(declare-fun tp!1650758 () Bool)

(assert (=> b!5933528 (= e!3631247 tp!1650758)))

(assert (=> b!5932846 (= tp!1650651 e!3631247)))

(declare-fun b!5933527 () Bool)

(declare-fun tp!1650756 () Bool)

(declare-fun tp!1650757 () Bool)

(assert (=> b!5933527 (= e!3631247 (and tp!1650756 tp!1650757))))

(assert (= (and b!5932846 ((_ is ElementMatch!15979) (regOne!32470 r!7292))) b!5933526))

(assert (= (and b!5932846 ((_ is Concat!24824) (regOne!32470 r!7292))) b!5933527))

(assert (= (and b!5932846 ((_ is Star!15979) (regOne!32470 r!7292))) b!5933528))

(assert (= (and b!5932846 ((_ is Union!15979) (regOne!32470 r!7292))) b!5933529))

(declare-fun b!5933530 () Bool)

(declare-fun e!3631248 () Bool)

(assert (=> b!5933530 (= e!3631248 tp_is_empty!41211)))

(declare-fun b!5933533 () Bool)

(declare-fun tp!1650760 () Bool)

(declare-fun tp!1650764 () Bool)

(assert (=> b!5933533 (= e!3631248 (and tp!1650760 tp!1650764))))

(declare-fun b!5933532 () Bool)

(declare-fun tp!1650763 () Bool)

(assert (=> b!5933532 (= e!3631248 tp!1650763)))

(assert (=> b!5932846 (= tp!1650647 e!3631248)))

(declare-fun b!5933531 () Bool)

(declare-fun tp!1650761 () Bool)

(declare-fun tp!1650762 () Bool)

(assert (=> b!5933531 (= e!3631248 (and tp!1650761 tp!1650762))))

(assert (= (and b!5932846 ((_ is ElementMatch!15979) (regTwo!32470 r!7292))) b!5933530))

(assert (= (and b!5932846 ((_ is Concat!24824) (regTwo!32470 r!7292))) b!5933531))

(assert (= (and b!5932846 ((_ is Star!15979) (regTwo!32470 r!7292))) b!5933532))

(assert (= (and b!5932846 ((_ is Union!15979) (regTwo!32470 r!7292))) b!5933533))

(declare-fun condSetEmpty!40274 () Bool)

(assert (=> setNonEmpty!40268 (= condSetEmpty!40274 (= setRest!40268 ((as const (Array Context!10726 Bool)) false)))))

(declare-fun setRes!40274 () Bool)

(assert (=> setNonEmpty!40268 (= tp!1650653 setRes!40274)))

(declare-fun setIsEmpty!40274 () Bool)

(assert (=> setIsEmpty!40274 setRes!40274))

(declare-fun e!3631251 () Bool)

(declare-fun setElem!40274 () Context!10726)

(declare-fun setNonEmpty!40274 () Bool)

(declare-fun tp!1650769 () Bool)

(assert (=> setNonEmpty!40274 (= setRes!40274 (and tp!1650769 (inv!83194 setElem!40274) e!3631251))))

(declare-fun setRest!40274 () (InoxSet Context!10726))

(assert (=> setNonEmpty!40274 (= setRest!40268 ((_ map or) (store ((as const (Array Context!10726 Bool)) false) setElem!40274 true) setRest!40274))))

(declare-fun b!5933538 () Bool)

(declare-fun tp!1650770 () Bool)

(assert (=> b!5933538 (= e!3631251 tp!1650770)))

(assert (= (and setNonEmpty!40268 condSetEmpty!40274) setIsEmpty!40274))

(assert (= (and setNonEmpty!40268 (not condSetEmpty!40274)) setNonEmpty!40274))

(assert (= setNonEmpty!40274 b!5933538))

(declare-fun m!6824962 () Bool)

(assert (=> setNonEmpty!40274 m!6824962))

(declare-fun b_lambda!222825 () Bool)

(assert (= b_lambda!222819 (or b!5932837 b_lambda!222825)))

(declare-fun bs!1403738 () Bool)

(declare-fun d!1860073 () Bool)

(assert (= bs!1403738 (and d!1860073 b!5932837)))

(assert (=> bs!1403738 (= (dynLambda!25072 lambda!323506 lt!2310868) (derivationStepZipperUp!1155 lt!2310868 (h!70562 s!2326)))))

(assert (=> bs!1403738 m!6824578))

(assert (=> d!1860027 d!1860073))

(declare-fun b_lambda!222827 () Bool)

(assert (= b_lambda!222815 (or b!5932837 b_lambda!222827)))

(declare-fun bs!1403739 () Bool)

(declare-fun d!1860075 () Bool)

(assert (= bs!1403739 (and d!1860075 b!5932837)))

(assert (=> bs!1403739 (= (dynLambda!25072 lambda!323506 (h!70561 zl!343)) (derivationStepZipperUp!1155 (h!70561 zl!343) (h!70562 s!2326)))))

(assert (=> bs!1403739 m!6824562))

(assert (=> d!1859981 d!1860075))

(check-sat (not d!1860011) (not b!5933042) (not b!5933533) (not b!5933516) (not d!1860053) (not bm!471120) (not b_lambda!222827) (not b!5933511) (not b!5933453) (not b!5932966) (not b!5933306) (not d!1859967) (not bm!471125) (not bm!471137) (not d!1860051) (not b!5933492) (not d!1860035) (not bm!471121) (not b!5933491) (not setNonEmpty!40274) (not bm!471115) (not bm!471138) (not b!5933311) (not d!1860031) (not b!5933505) (not b!5933180) (not b!5933524) (not b!5932928) (not b_lambda!222825) (not b!5933517) (not bm!471161) (not b!5932932) (not b!5933179) (not d!1859981) (not b!5933094) (not b!5933477) (not bm!471172) (not b!5932926) (not bs!1403738) (not b!5933098) (not b!5933419) (not b!5933091) (not b!5933308) (not b!5932927) (not b!5933181) (not d!1860009) (not b!5933088) (not b!5933521) (not b!5932935) (not b!5933183) (not bm!471164) (not b!5933090) (not d!1860041) (not b!5933531) (not b!5933032) (not b!5933519) (not b!5932933) (not b!5933223) (not d!1860029) (not bm!471158) (not d!1859973) (not d!1859959) (not b!5932931) (not b!5933225) (not b!5932964) (not d!1860027) (not b!5933528) (not d!1860019) (not b!5933444) (not b!5933525) (not b!5933232) (not b!5933532) (not b!5933520) (not bs!1403739) (not bm!471160) (not b!5933527) (not b!5933313) (not bm!471171) (not d!1860071) (not d!1860033) (not b!5933504) (not b!5933227) (not b!5933177) (not b!5933310) (not b!5933230) (not d!1860059) (not b!5933455) (not b!5933523) (not b!5933506) (not b!5933529) (not b!5933178) (not b!5933185) (not d!1860025) (not b!5933307) (not b!5933092) (not d!1859993) tp_is_empty!41211 (not d!1860043) (not b!5933538) (not d!1860063))
(check-sat)
(get-model)

(declare-fun d!1860143 () Bool)

(declare-fun res!2485764 () Bool)

(declare-fun e!3631349 () Bool)

(assert (=> d!1860143 (=> res!2485764 e!3631349)))

(assert (=> d!1860143 (= res!2485764 ((_ is Nil!64112) (exprs!5863 setElem!40268)))))

(assert (=> d!1860143 (= (forall!15062 (exprs!5863 setElem!40268) lambda!323551) e!3631349)))

(declare-fun b!5933690 () Bool)

(declare-fun e!3631350 () Bool)

(assert (=> b!5933690 (= e!3631349 e!3631350)))

(declare-fun res!2485765 () Bool)

(assert (=> b!5933690 (=> (not res!2485765) (not e!3631350))))

(declare-fun dynLambda!25074 (Int Regex!15979) Bool)

(assert (=> b!5933690 (= res!2485765 (dynLambda!25074 lambda!323551 (h!70560 (exprs!5863 setElem!40268))))))

(declare-fun b!5933691 () Bool)

(assert (=> b!5933691 (= e!3631350 (forall!15062 (t!377635 (exprs!5863 setElem!40268)) lambda!323551))))

(assert (= (and d!1860143 (not res!2485764)) b!5933690))

(assert (= (and b!5933690 res!2485765) b!5933691))

(declare-fun b_lambda!222835 () Bool)

(assert (=> (not b_lambda!222835) (not b!5933690)))

(declare-fun m!6825116 () Bool)

(assert (=> b!5933690 m!6825116))

(declare-fun m!6825118 () Bool)

(assert (=> b!5933691 m!6825118))

(assert (=> d!1860031 d!1860143))

(declare-fun bm!471203 () Bool)

(declare-fun call!471212 () (InoxSet Context!10726))

(declare-fun c!1054863 () Bool)

(declare-fun call!471213 () List!64236)

(assert (=> bm!471203 (= call!471212 (derivationStepZipperDown!1229 (ite c!1054863 (regTwo!32471 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (regOne!32470 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))) (ite c!1054863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (Context!10727 call!471213)) (h!70562 s!2326)))))

(declare-fun bm!471204 () Bool)

(declare-fun call!471211 () (InoxSet Context!10726))

(declare-fun call!471209 () (InoxSet Context!10726))

(assert (=> bm!471204 (= call!471211 call!471209)))

(declare-fun bm!471205 () Bool)

(declare-fun c!1054862 () Bool)

(declare-fun call!471210 () List!64236)

(declare-fun c!1054864 () Bool)

(assert (=> bm!471205 (= call!471209 (derivationStepZipperDown!1229 (ite c!1054863 (regOne!32471 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (ite c!1054864 (regTwo!32470 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (ite c!1054862 (regOne!32470 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (reg!16308 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))) (ite (or c!1054863 c!1054864) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (Context!10727 call!471210)) (h!70562 s!2326)))))

(declare-fun b!5933694 () Bool)

(declare-fun e!3631358 () Bool)

(assert (=> b!5933694 (= c!1054864 e!3631358)))

(declare-fun res!2485768 () Bool)

(assert (=> b!5933694 (=> (not res!2485768) (not e!3631358))))

(assert (=> b!5933694 (= res!2485768 ((_ is Concat!24824) (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))

(declare-fun e!3631356 () (InoxSet Context!10726))

(declare-fun e!3631355 () (InoxSet Context!10726))

(assert (=> b!5933694 (= e!3631356 e!3631355)))

(declare-fun b!5933695 () Bool)

(declare-fun e!3631353 () (InoxSet Context!10726))

(assert (=> b!5933695 (= e!3631353 (store ((as const (Array Context!10726 Bool)) false) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) true))))

(declare-fun bm!471206 () Bool)

(assert (=> bm!471206 (= call!471213 ($colon$colon!1866 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))) (ite (or c!1054864 c!1054862) (regTwo!32470 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))))

(declare-fun bm!471207 () Bool)

(declare-fun call!471208 () (InoxSet Context!10726))

(assert (=> bm!471207 (= call!471208 call!471211)))

(declare-fun b!5933696 () Bool)

(assert (=> b!5933696 (= e!3631358 (nullable!5974 (regOne!32470 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))))

(declare-fun b!5933697 () Bool)

(assert (=> b!5933697 (= e!3631356 ((_ map or) call!471209 call!471212))))

(declare-fun b!5933698 () Bool)

(declare-fun e!3631354 () (InoxSet Context!10726))

(assert (=> b!5933698 (= e!3631354 call!471208)))

(declare-fun b!5933699 () Bool)

(assert (=> b!5933699 (= e!3631354 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5933700 () Bool)

(declare-fun e!3631357 () (InoxSet Context!10726))

(assert (=> b!5933700 (= e!3631355 e!3631357)))

(assert (=> b!5933700 (= c!1054862 ((_ is Concat!24824) (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))

(declare-fun b!5933701 () Bool)

(assert (=> b!5933701 (= e!3631355 ((_ map or) call!471212 call!471211))))

(declare-fun b!5933702 () Bool)

(assert (=> b!5933702 (= e!3631357 call!471208)))

(declare-fun b!5933703 () Bool)

(declare-fun c!1054861 () Bool)

(assert (=> b!5933703 (= c!1054861 ((_ is Star!15979) (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))

(assert (=> b!5933703 (= e!3631357 e!3631354)))

(declare-fun b!5933704 () Bool)

(assert (=> b!5933704 (= e!3631353 e!3631356)))

(assert (=> b!5933704 (= c!1054863 ((_ is Union!15979) (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))

(declare-fun d!1860151 () Bool)

(declare-fun c!1054865 () Bool)

(assert (=> d!1860151 (= c!1054865 (and ((_ is ElementMatch!15979) (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (= (c!1054641 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (h!70562 s!2326))))))

(assert (=> d!1860151 (= (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (h!70562 s!2326)) e!3631353)))

(declare-fun bm!471208 () Bool)

(assert (=> bm!471208 (= call!471210 call!471213)))

(assert (= (and d!1860151 c!1054865) b!5933695))

(assert (= (and d!1860151 (not c!1054865)) b!5933704))

(assert (= (and b!5933704 c!1054863) b!5933697))

(assert (= (and b!5933704 (not c!1054863)) b!5933694))

(assert (= (and b!5933694 res!2485768) b!5933696))

(assert (= (and b!5933694 c!1054864) b!5933701))

(assert (= (and b!5933694 (not c!1054864)) b!5933700))

(assert (= (and b!5933700 c!1054862) b!5933702))

(assert (= (and b!5933700 (not c!1054862)) b!5933703))

(assert (= (and b!5933703 c!1054861) b!5933698))

(assert (= (and b!5933703 (not c!1054861)) b!5933699))

(assert (= (or b!5933702 b!5933698) bm!471208))

(assert (= (or b!5933702 b!5933698) bm!471207))

(assert (= (or b!5933701 bm!471208) bm!471206))

(assert (= (or b!5933701 bm!471207) bm!471204))

(assert (= (or b!5933697 b!5933701) bm!471203))

(assert (= (or b!5933697 bm!471204) bm!471205))

(declare-fun m!6825124 () Bool)

(assert (=> b!5933695 m!6825124))

(declare-fun m!6825126 () Bool)

(assert (=> bm!471205 m!6825126))

(declare-fun m!6825128 () Bool)

(assert (=> b!5933696 m!6825128))

(declare-fun m!6825130 () Bool)

(assert (=> bm!471203 m!6825130))

(declare-fun m!6825132 () Bool)

(assert (=> bm!471206 m!6825132))

(assert (=> bm!471164 d!1860151))

(declare-fun c!1054868 () Bool)

(declare-fun bm!471209 () Bool)

(declare-fun call!471219 () List!64236)

(declare-fun call!471218 () (InoxSet Context!10726))

(assert (=> bm!471209 (= call!471218 (derivationStepZipperDown!1229 (ite c!1054868 (regTwo!32471 (h!70560 (exprs!5863 (h!70561 zl!343)))) (regOne!32470 (h!70560 (exprs!5863 (h!70561 zl!343))))) (ite c!1054868 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))) (Context!10727 call!471219)) (h!70562 s!2326)))))

(declare-fun bm!471210 () Bool)

(declare-fun call!471217 () (InoxSet Context!10726))

(declare-fun call!471215 () (InoxSet Context!10726))

(assert (=> bm!471210 (= call!471217 call!471215)))

(declare-fun bm!471211 () Bool)

(declare-fun c!1054869 () Bool)

(declare-fun call!471216 () List!64236)

(declare-fun c!1054867 () Bool)

(assert (=> bm!471211 (= call!471215 (derivationStepZipperDown!1229 (ite c!1054868 (regOne!32471 (h!70560 (exprs!5863 (h!70561 zl!343)))) (ite c!1054869 (regTwo!32470 (h!70560 (exprs!5863 (h!70561 zl!343)))) (ite c!1054867 (regOne!32470 (h!70560 (exprs!5863 (h!70561 zl!343)))) (reg!16308 (h!70560 (exprs!5863 (h!70561 zl!343))))))) (ite (or c!1054868 c!1054869) (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))) (Context!10727 call!471216)) (h!70562 s!2326)))))

(declare-fun b!5933711 () Bool)

(declare-fun e!3631370 () Bool)

(assert (=> b!5933711 (= c!1054869 e!3631370)))

(declare-fun res!2485773 () Bool)

(assert (=> b!5933711 (=> (not res!2485773) (not e!3631370))))

(assert (=> b!5933711 (= res!2485773 ((_ is Concat!24824) (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun e!3631368 () (InoxSet Context!10726))

(declare-fun e!3631367 () (InoxSet Context!10726))

(assert (=> b!5933711 (= e!3631368 e!3631367)))

(declare-fun b!5933712 () Bool)

(declare-fun e!3631365 () (InoxSet Context!10726))

(assert (=> b!5933712 (= e!3631365 (store ((as const (Array Context!10726 Bool)) false) (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))) true))))

(declare-fun bm!471212 () Bool)

(assert (=> bm!471212 (= call!471219 ($colon$colon!1866 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343))))) (ite (or c!1054869 c!1054867) (regTwo!32470 (h!70560 (exprs!5863 (h!70561 zl!343)))) (h!70560 (exprs!5863 (h!70561 zl!343))))))))

(declare-fun bm!471213 () Bool)

(declare-fun call!471214 () (InoxSet Context!10726))

(assert (=> bm!471213 (= call!471214 call!471217)))

(declare-fun b!5933713 () Bool)

(assert (=> b!5933713 (= e!3631370 (nullable!5974 (regOne!32470 (h!70560 (exprs!5863 (h!70561 zl!343))))))))

(declare-fun b!5933714 () Bool)

(assert (=> b!5933714 (= e!3631368 ((_ map or) call!471215 call!471218))))

(declare-fun b!5933715 () Bool)

(declare-fun e!3631366 () (InoxSet Context!10726))

(assert (=> b!5933715 (= e!3631366 call!471214)))

(declare-fun b!5933716 () Bool)

(assert (=> b!5933716 (= e!3631366 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5933717 () Bool)

(declare-fun e!3631369 () (InoxSet Context!10726))

(assert (=> b!5933717 (= e!3631367 e!3631369)))

(assert (=> b!5933717 (= c!1054867 ((_ is Concat!24824) (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5933718 () Bool)

(assert (=> b!5933718 (= e!3631367 ((_ map or) call!471218 call!471217))))

(declare-fun b!5933719 () Bool)

(assert (=> b!5933719 (= e!3631369 call!471214)))

(declare-fun b!5933720 () Bool)

(declare-fun c!1054866 () Bool)

(assert (=> b!5933720 (= c!1054866 ((_ is Star!15979) (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(assert (=> b!5933720 (= e!3631369 e!3631366)))

(declare-fun b!5933721 () Bool)

(assert (=> b!5933721 (= e!3631365 e!3631368)))

(assert (=> b!5933721 (= c!1054868 ((_ is Union!15979) (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun d!1860155 () Bool)

(declare-fun c!1054870 () Bool)

(assert (=> d!1860155 (= c!1054870 (and ((_ is ElementMatch!15979) (h!70560 (exprs!5863 (h!70561 zl!343)))) (= (c!1054641 (h!70560 (exprs!5863 (h!70561 zl!343)))) (h!70562 s!2326))))))

(assert (=> d!1860155 (= (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (h!70561 zl!343))) (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))) (h!70562 s!2326)) e!3631365)))

(declare-fun bm!471214 () Bool)

(assert (=> bm!471214 (= call!471216 call!471219)))

(assert (= (and d!1860155 c!1054870) b!5933712))

(assert (= (and d!1860155 (not c!1054870)) b!5933721))

(assert (= (and b!5933721 c!1054868) b!5933714))

(assert (= (and b!5933721 (not c!1054868)) b!5933711))

(assert (= (and b!5933711 res!2485773) b!5933713))

(assert (= (and b!5933711 c!1054869) b!5933718))

(assert (= (and b!5933711 (not c!1054869)) b!5933717))

(assert (= (and b!5933717 c!1054867) b!5933719))

(assert (= (and b!5933717 (not c!1054867)) b!5933720))

(assert (= (and b!5933720 c!1054866) b!5933715))

(assert (= (and b!5933720 (not c!1054866)) b!5933716))

(assert (= (or b!5933719 b!5933715) bm!471214))

(assert (= (or b!5933719 b!5933715) bm!471213))

(assert (= (or b!5933718 bm!471214) bm!471212))

(assert (= (or b!5933718 bm!471213) bm!471210))

(assert (= (or b!5933714 b!5933718) bm!471209))

(assert (= (or b!5933714 bm!471210) bm!471211))

(declare-fun m!6825136 () Bool)

(assert (=> b!5933712 m!6825136))

(declare-fun m!6825142 () Bool)

(assert (=> bm!471211 m!6825142))

(declare-fun m!6825144 () Bool)

(assert (=> b!5933713 m!6825144))

(declare-fun m!6825148 () Bool)

(assert (=> bm!471209 m!6825148))

(declare-fun m!6825150 () Bool)

(assert (=> bm!471212 m!6825150))

(assert (=> bm!471115 d!1860155))

(declare-fun b!5933737 () Bool)

(declare-fun e!3631380 () List!64238)

(assert (=> b!5933737 (= e!3631380 (_2!36261 (get!22081 lt!2310931)))))

(declare-fun b!5933738 () Bool)

(assert (=> b!5933738 (= e!3631380 (Cons!64114 (h!70562 (_1!36261 (get!22081 lt!2310931))) (++!14076 (t!377637 (_1!36261 (get!22081 lt!2310931))) (_2!36261 (get!22081 lt!2310931)))))))

(declare-fun d!1860161 () Bool)

(declare-fun e!3631381 () Bool)

(assert (=> d!1860161 e!3631381))

(declare-fun res!2485785 () Bool)

(assert (=> d!1860161 (=> (not res!2485785) (not e!3631381))))

(declare-fun lt!2310962 () List!64238)

(declare-fun content!11817 (List!64238) (InoxSet C!32228))

(assert (=> d!1860161 (= res!2485785 (= (content!11817 lt!2310962) ((_ map or) (content!11817 (_1!36261 (get!22081 lt!2310931))) (content!11817 (_2!36261 (get!22081 lt!2310931))))))))

(assert (=> d!1860161 (= lt!2310962 e!3631380)))

(declare-fun c!1054873 () Bool)

(assert (=> d!1860161 (= c!1054873 ((_ is Nil!64114) (_1!36261 (get!22081 lt!2310931))))))

(assert (=> d!1860161 (= (++!14076 (_1!36261 (get!22081 lt!2310931)) (_2!36261 (get!22081 lt!2310931))) lt!2310962)))

(declare-fun b!5933739 () Bool)

(declare-fun res!2485784 () Bool)

(assert (=> b!5933739 (=> (not res!2485784) (not e!3631381))))

(declare-fun size!40145 (List!64238) Int)

(assert (=> b!5933739 (= res!2485784 (= (size!40145 lt!2310962) (+ (size!40145 (_1!36261 (get!22081 lt!2310931))) (size!40145 (_2!36261 (get!22081 lt!2310931))))))))

(declare-fun b!5933740 () Bool)

(assert (=> b!5933740 (= e!3631381 (or (not (= (_2!36261 (get!22081 lt!2310931)) Nil!64114)) (= lt!2310962 (_1!36261 (get!22081 lt!2310931)))))))

(assert (= (and d!1860161 c!1054873) b!5933737))

(assert (= (and d!1860161 (not c!1054873)) b!5933738))

(assert (= (and d!1860161 res!2485785) b!5933739))

(assert (= (and b!5933739 res!2485784) b!5933740))

(declare-fun m!6825154 () Bool)

(assert (=> b!5933738 m!6825154))

(declare-fun m!6825156 () Bool)

(assert (=> d!1860161 m!6825156))

(declare-fun m!6825158 () Bool)

(assert (=> d!1860161 m!6825158))

(declare-fun m!6825160 () Bool)

(assert (=> d!1860161 m!6825160))

(declare-fun m!6825162 () Bool)

(assert (=> b!5933739 m!6825162))

(declare-fun m!6825164 () Bool)

(assert (=> b!5933739 m!6825164))

(declare-fun m!6825166 () Bool)

(assert (=> b!5933739 m!6825166))

(assert (=> b!5933307 d!1860161))

(declare-fun d!1860165 () Bool)

(assert (=> d!1860165 (= (get!22081 lt!2310931) (v!51969 lt!2310931))))

(assert (=> b!5933307 d!1860165))

(declare-fun b!5933741 () Bool)

(declare-fun e!3631383 () Bool)

(assert (=> b!5933741 (= e!3631383 (nullable!5974 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343))))))))))

(declare-fun bm!471215 () Bool)

(declare-fun call!471220 () (InoxSet Context!10726))

(assert (=> bm!471215 (= call!471220 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))))) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343))))))) (h!70562 s!2326)))))

(declare-fun b!5933742 () Bool)

(declare-fun e!3631384 () (InoxSet Context!10726))

(assert (=> b!5933742 (= e!3631384 call!471220)))

(declare-fun e!3631382 () (InoxSet Context!10726))

(declare-fun b!5933743 () Bool)

(assert (=> b!5933743 (= e!3631382 ((_ map or) call!471220 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343))))))) (h!70562 s!2326))))))

(declare-fun b!5933744 () Bool)

(assert (=> b!5933744 (= e!3631384 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1860167 () Bool)

(declare-fun c!1054874 () Bool)

(assert (=> d!1860167 (= c!1054874 e!3631383)))

(declare-fun res!2485786 () Bool)

(assert (=> d!1860167 (=> (not res!2485786) (not e!3631383))))

(assert (=> d!1860167 (= res!2485786 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))))))))

(assert (=> d!1860167 (= (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))) (h!70562 s!2326)) e!3631382)))

(declare-fun b!5933745 () Bool)

(assert (=> b!5933745 (= e!3631382 e!3631384)))

(declare-fun c!1054875 () Bool)

(assert (=> b!5933745 (= c!1054875 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (h!70561 zl!343)))))))))

(assert (= (and d!1860167 res!2485786) b!5933741))

(assert (= (and d!1860167 c!1054874) b!5933743))

(assert (= (and d!1860167 (not c!1054874)) b!5933745))

(assert (= (and b!5933745 c!1054875) b!5933742))

(assert (= (and b!5933745 (not c!1054875)) b!5933744))

(assert (= (or b!5933743 b!5933742) bm!471215))

(declare-fun m!6825168 () Bool)

(assert (=> b!5933741 m!6825168))

(declare-fun m!6825170 () Bool)

(assert (=> bm!471215 m!6825170))

(declare-fun m!6825172 () Bool)

(assert (=> b!5933743 m!6825172))

(assert (=> b!5932966 d!1860167))

(declare-fun bs!1403768 () Bool)

(declare-fun b!5933757 () Bool)

(assert (= bs!1403768 (and b!5933757 b!5932851)))

(declare-fun lambda!323580 () Int)

(assert (=> bs!1403768 (not (= lambda!323580 lambda!323505))))

(declare-fun bs!1403769 () Bool)

(assert (= bs!1403769 (and b!5933757 b!5933037)))

(assert (=> bs!1403769 (not (= lambda!323580 lambda!323525))))

(assert (=> bs!1403768 (not (= lambda!323580 lambda!323504))))

(declare-fun bs!1403770 () Bool)

(assert (= bs!1403770 (and b!5933757 d!1860043)))

(assert (=> bs!1403770 (not (= lambda!323580 lambda!323564))))

(declare-fun bs!1403771 () Bool)

(assert (= bs!1403771 (and b!5933757 b!5933039)))

(assert (=> bs!1403771 (= (and (= (reg!16308 (regTwo!32471 r!7292)) (reg!16308 r!7292)) (= (regTwo!32471 r!7292) r!7292)) (= lambda!323580 lambda!323524))))

(declare-fun bs!1403772 () Bool)

(assert (= bs!1403772 (and b!5933757 d!1860053)))

(assert (=> bs!1403772 (not (= lambda!323580 lambda!323570))))

(assert (=> bs!1403770 (not (= lambda!323580 lambda!323563))))

(assert (=> b!5933757 true))

(assert (=> b!5933757 true))

(declare-fun bs!1403779 () Bool)

(declare-fun b!5933755 () Bool)

(assert (= bs!1403779 (and b!5933755 b!5932851)))

(declare-fun lambda!323582 () Int)

(assert (=> bs!1403779 (= (and (= (regOne!32470 (regTwo!32471 r!7292)) (regOne!32470 r!7292)) (= (regTwo!32470 (regTwo!32471 r!7292)) (regTwo!32470 r!7292))) (= lambda!323582 lambda!323505))))

(declare-fun bs!1403780 () Bool)

(assert (= bs!1403780 (and b!5933755 b!5933037)))

(assert (=> bs!1403780 (= (and (= (regOne!32470 (regTwo!32471 r!7292)) (regOne!32470 r!7292)) (= (regTwo!32470 (regTwo!32471 r!7292)) (regTwo!32470 r!7292))) (= lambda!323582 lambda!323525))))

(assert (=> bs!1403779 (not (= lambda!323582 lambda!323504))))

(declare-fun bs!1403781 () Bool)

(assert (= bs!1403781 (and b!5933755 d!1860043)))

(assert (=> bs!1403781 (= (and (= (regOne!32470 (regTwo!32471 r!7292)) (regOne!32470 r!7292)) (= (regTwo!32470 (regTwo!32471 r!7292)) (regTwo!32470 r!7292))) (= lambda!323582 lambda!323564))))

(declare-fun bs!1403782 () Bool)

(assert (= bs!1403782 (and b!5933755 b!5933757)))

(assert (=> bs!1403782 (not (= lambda!323582 lambda!323580))))

(declare-fun bs!1403783 () Bool)

(assert (= bs!1403783 (and b!5933755 b!5933039)))

(assert (=> bs!1403783 (not (= lambda!323582 lambda!323524))))

(declare-fun bs!1403784 () Bool)

(assert (= bs!1403784 (and b!5933755 d!1860053)))

(assert (=> bs!1403784 (not (= lambda!323582 lambda!323570))))

(assert (=> bs!1403781 (not (= lambda!323582 lambda!323563))))

(assert (=> b!5933755 true))

(assert (=> b!5933755 true))

(declare-fun b!5933750 () Bool)

(declare-fun e!3631390 () Bool)

(assert (=> b!5933750 (= e!3631390 (matchRSpec!3080 (regTwo!32471 (regTwo!32471 r!7292)) s!2326))))

(declare-fun call!471221 () Bool)

(declare-fun c!1054879 () Bool)

(declare-fun bm!471216 () Bool)

(assert (=> bm!471216 (= call!471221 (Exists!3049 (ite c!1054879 lambda!323580 lambda!323582)))))

(declare-fun b!5933752 () Bool)

(declare-fun e!3631391 () Bool)

(declare-fun e!3631392 () Bool)

(assert (=> b!5933752 (= e!3631391 e!3631392)))

(assert (=> b!5933752 (= c!1054879 ((_ is Star!15979) (regTwo!32471 r!7292)))))

(declare-fun bm!471217 () Bool)

(declare-fun call!471222 () Bool)

(assert (=> bm!471217 (= call!471222 (isEmpty!35980 s!2326))))

(declare-fun b!5933753 () Bool)

(declare-fun e!3631388 () Bool)

(declare-fun e!3631389 () Bool)

(assert (=> b!5933753 (= e!3631388 e!3631389)))

(declare-fun res!2485792 () Bool)

(assert (=> b!5933753 (= res!2485792 (not ((_ is EmptyLang!15979) (regTwo!32471 r!7292))))))

(assert (=> b!5933753 (=> (not res!2485792) (not e!3631389))))

(declare-fun b!5933754 () Bool)

(declare-fun e!3631393 () Bool)

(assert (=> b!5933754 (= e!3631393 (= s!2326 (Cons!64114 (c!1054641 (regTwo!32471 r!7292)) Nil!64114)))))

(assert (=> b!5933755 (= e!3631392 call!471221)))

(declare-fun b!5933756 () Bool)

(declare-fun c!1054877 () Bool)

(assert (=> b!5933756 (= c!1054877 ((_ is Union!15979) (regTwo!32471 r!7292)))))

(assert (=> b!5933756 (= e!3631393 e!3631391)))

(declare-fun b!5933751 () Bool)

(assert (=> b!5933751 (= e!3631388 call!471222)))

(declare-fun d!1860169 () Bool)

(declare-fun c!1054876 () Bool)

(assert (=> d!1860169 (= c!1054876 ((_ is EmptyExpr!15979) (regTwo!32471 r!7292)))))

(assert (=> d!1860169 (= (matchRSpec!3080 (regTwo!32471 r!7292) s!2326) e!3631388)))

(declare-fun e!3631387 () Bool)

(assert (=> b!5933757 (= e!3631387 call!471221)))

(declare-fun b!5933758 () Bool)

(declare-fun c!1054878 () Bool)

(assert (=> b!5933758 (= c!1054878 ((_ is ElementMatch!15979) (regTwo!32471 r!7292)))))

(assert (=> b!5933758 (= e!3631389 e!3631393)))

(declare-fun b!5933759 () Bool)

(declare-fun res!2485791 () Bool)

(assert (=> b!5933759 (=> res!2485791 e!3631387)))

(assert (=> b!5933759 (= res!2485791 call!471222)))

(assert (=> b!5933759 (= e!3631392 e!3631387)))

(declare-fun b!5933760 () Bool)

(assert (=> b!5933760 (= e!3631391 e!3631390)))

(declare-fun res!2485793 () Bool)

(assert (=> b!5933760 (= res!2485793 (matchRSpec!3080 (regOne!32471 (regTwo!32471 r!7292)) s!2326))))

(assert (=> b!5933760 (=> res!2485793 e!3631390)))

(assert (= (and d!1860169 c!1054876) b!5933751))

(assert (= (and d!1860169 (not c!1054876)) b!5933753))

(assert (= (and b!5933753 res!2485792) b!5933758))

(assert (= (and b!5933758 c!1054878) b!5933754))

(assert (= (and b!5933758 (not c!1054878)) b!5933756))

(assert (= (and b!5933756 c!1054877) b!5933760))

(assert (= (and b!5933756 (not c!1054877)) b!5933752))

(assert (= (and b!5933760 (not res!2485793)) b!5933750))

(assert (= (and b!5933752 c!1054879) b!5933759))

(assert (= (and b!5933752 (not c!1054879)) b!5933755))

(assert (= (and b!5933759 (not res!2485791)) b!5933757))

(assert (= (or b!5933757 b!5933755) bm!471216))

(assert (= (or b!5933751 b!5933759) bm!471217))

(declare-fun m!6825174 () Bool)

(assert (=> b!5933750 m!6825174))

(declare-fun m!6825176 () Bool)

(assert (=> bm!471216 m!6825176))

(assert (=> bm!471217 m!6824722))

(declare-fun m!6825178 () Bool)

(assert (=> b!5933760 m!6825178))

(assert (=> b!5933032 d!1860169))

(declare-fun d!1860171 () Bool)

(declare-fun res!2485794 () Bool)

(declare-fun e!3631394 () Bool)

(assert (=> d!1860171 (=> res!2485794 e!3631394)))

(assert (=> d!1860171 (= res!2485794 ((_ is Nil!64112) lt!2310918))))

(assert (=> d!1860171 (= (forall!15062 lt!2310918 lambda!323547) e!3631394)))

(declare-fun b!5933761 () Bool)

(declare-fun e!3631395 () Bool)

(assert (=> b!5933761 (= e!3631394 e!3631395)))

(declare-fun res!2485795 () Bool)

(assert (=> b!5933761 (=> (not res!2485795) (not e!3631395))))

(assert (=> b!5933761 (= res!2485795 (dynLambda!25074 lambda!323547 (h!70560 lt!2310918)))))

(declare-fun b!5933762 () Bool)

(assert (=> b!5933762 (= e!3631395 (forall!15062 (t!377635 lt!2310918) lambda!323547))))

(assert (= (and d!1860171 (not res!2485794)) b!5933761))

(assert (= (and b!5933761 res!2485795) b!5933762))

(declare-fun b_lambda!222837 () Bool)

(assert (=> (not b_lambda!222837) (not b!5933761)))

(declare-fun m!6825184 () Bool)

(assert (=> b!5933761 m!6825184))

(declare-fun m!6825186 () Bool)

(assert (=> b!5933762 m!6825186))

(assert (=> d!1860019 d!1860171))

(declare-fun b!5933765 () Bool)

(declare-fun e!3631399 () Bool)

(assert (=> b!5933765 (= e!3631399 (nullable!5974 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))))))

(declare-fun bm!471218 () Bool)

(declare-fun call!471223 () (InoxSet Context!10726))

(assert (=> bm!471218 (= call!471223 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))) (h!70562 s!2326)))))

(declare-fun b!5933766 () Bool)

(declare-fun e!3631400 () (InoxSet Context!10726))

(assert (=> b!5933766 (= e!3631400 call!471223)))

(declare-fun e!3631398 () (InoxSet Context!10726))

(declare-fun b!5933767 () Bool)

(assert (=> b!5933767 (= e!3631398 ((_ map or) call!471223 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112)))))))) (h!70562 s!2326))))))

(declare-fun b!5933768 () Bool)

(assert (=> b!5933768 (= e!3631400 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1860175 () Bool)

(declare-fun c!1054880 () Bool)

(assert (=> d!1860175 (= c!1054880 e!3631399)))

(declare-fun res!2485798 () Bool)

(assert (=> d!1860175 (=> (not res!2485798) (not e!3631399))))

(assert (=> d!1860175 (= res!2485798 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))))

(assert (=> d!1860175 (= (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (h!70562 s!2326)) e!3631398)))

(declare-fun b!5933769 () Bool)

(assert (=> b!5933769 (= e!3631398 e!3631400)))

(declare-fun c!1054881 () Bool)

(assert (=> b!5933769 (= c!1054881 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))))

(assert (= (and d!1860175 res!2485798) b!5933765))

(assert (= (and d!1860175 c!1054880) b!5933767))

(assert (= (and d!1860175 (not c!1054880)) b!5933769))

(assert (= (and b!5933769 c!1054881) b!5933766))

(assert (= (and b!5933769 (not c!1054881)) b!5933768))

(assert (= (or b!5933767 b!5933766) bm!471218))

(declare-fun m!6825192 () Bool)

(assert (=> b!5933765 m!6825192))

(declare-fun m!6825194 () Bool)

(assert (=> bm!471218 m!6825194))

(declare-fun m!6825196 () Bool)

(assert (=> b!5933767 m!6825196))

(assert (=> b!5933455 d!1860175))

(declare-fun d!1860179 () Bool)

(assert (=> d!1860179 (= (head!12499 s!2326) (h!70562 s!2326))))

(assert (=> b!5933088 d!1860179))

(declare-fun d!1860181 () Bool)

(assert (=> d!1860181 (= (head!12497 (unfocusZipperList!1400 zl!343)) (h!70560 (unfocusZipperList!1400 zl!343)))))

(assert (=> b!5933181 d!1860181))

(declare-fun b!5933781 () Bool)

(declare-fun e!3631407 () Bool)

(declare-fun e!3631413 () Bool)

(assert (=> b!5933781 (= e!3631407 e!3631413)))

(declare-fun res!2485801 () Bool)

(assert (=> b!5933781 (= res!2485801 (not (nullable!5974 (reg!16308 lt!2310881))))))

(assert (=> b!5933781 (=> (not res!2485801) (not e!3631413))))

(declare-fun b!5933782 () Bool)

(declare-fun e!3631409 () Bool)

(declare-fun e!3631412 () Bool)

(assert (=> b!5933782 (= e!3631409 e!3631412)))

(declare-fun res!2485802 () Bool)

(assert (=> b!5933782 (=> (not res!2485802) (not e!3631412))))

(declare-fun call!471225 () Bool)

(assert (=> b!5933782 (= res!2485802 call!471225)))

(declare-fun bm!471219 () Bool)

(declare-fun c!1054887 () Bool)

(assert (=> bm!471219 (= call!471225 (validRegex!7715 (ite c!1054887 (regOne!32471 lt!2310881) (regOne!32470 lt!2310881))))))

(declare-fun b!5933783 () Bool)

(declare-fun e!3631410 () Bool)

(assert (=> b!5933783 (= e!3631410 e!3631407)))

(declare-fun c!1054886 () Bool)

(assert (=> b!5933783 (= c!1054886 ((_ is Star!15979) lt!2310881))))

(declare-fun b!5933784 () Bool)

(declare-fun call!471224 () Bool)

(assert (=> b!5933784 (= e!3631412 call!471224)))

(declare-fun d!1860183 () Bool)

(declare-fun res!2485805 () Bool)

(assert (=> d!1860183 (=> res!2485805 e!3631410)))

(assert (=> d!1860183 (= res!2485805 ((_ is ElementMatch!15979) lt!2310881))))

(assert (=> d!1860183 (= (validRegex!7715 lt!2310881) e!3631410)))

(declare-fun b!5933780 () Bool)

(declare-fun res!2485803 () Bool)

(declare-fun e!3631408 () Bool)

(assert (=> b!5933780 (=> (not res!2485803) (not e!3631408))))

(assert (=> b!5933780 (= res!2485803 call!471225)))

(declare-fun e!3631411 () Bool)

(assert (=> b!5933780 (= e!3631411 e!3631408)))

(declare-fun bm!471220 () Bool)

(declare-fun call!471226 () Bool)

(assert (=> bm!471220 (= call!471226 (validRegex!7715 (ite c!1054886 (reg!16308 lt!2310881) (ite c!1054887 (regTwo!32471 lt!2310881) (regTwo!32470 lt!2310881)))))))

(declare-fun b!5933785 () Bool)

(declare-fun res!2485804 () Bool)

(assert (=> b!5933785 (=> res!2485804 e!3631409)))

(assert (=> b!5933785 (= res!2485804 (not ((_ is Concat!24824) lt!2310881)))))

(assert (=> b!5933785 (= e!3631411 e!3631409)))

(declare-fun b!5933786 () Bool)

(assert (=> b!5933786 (= e!3631408 call!471224)))

(declare-fun bm!471221 () Bool)

(assert (=> bm!471221 (= call!471224 call!471226)))

(declare-fun b!5933787 () Bool)

(assert (=> b!5933787 (= e!3631407 e!3631411)))

(assert (=> b!5933787 (= c!1054887 ((_ is Union!15979) lt!2310881))))

(declare-fun b!5933788 () Bool)

(assert (=> b!5933788 (= e!3631413 call!471226)))

(assert (= (and d!1860183 (not res!2485805)) b!5933783))

(assert (= (and b!5933783 c!1054886) b!5933781))

(assert (= (and b!5933783 (not c!1054886)) b!5933787))

(assert (= (and b!5933781 res!2485801) b!5933788))

(assert (= (and b!5933787 c!1054887) b!5933780))

(assert (= (and b!5933787 (not c!1054887)) b!5933785))

(assert (= (and b!5933780 res!2485803) b!5933786))

(assert (= (and b!5933785 (not res!2485804)) b!5933782))

(assert (= (and b!5933782 res!2485802) b!5933784))

(assert (= (or b!5933786 b!5933784) bm!471221))

(assert (= (or b!5933780 b!5933782) bm!471219))

(assert (= (or b!5933788 bm!471221) bm!471220))

(declare-fun m!6825216 () Bool)

(assert (=> b!5933781 m!6825216))

(declare-fun m!6825218 () Bool)

(assert (=> bm!471219 m!6825218))

(declare-fun m!6825220 () Bool)

(assert (=> bm!471220 m!6825220))

(assert (=> d!1859959 d!1860183))

(declare-fun d!1860187 () Bool)

(declare-fun res!2485808 () Bool)

(declare-fun e!3631416 () Bool)

(assert (=> d!1860187 (=> res!2485808 e!3631416)))

(assert (=> d!1860187 (= res!2485808 ((_ is Nil!64112) (exprs!5863 (h!70561 zl!343))))))

(assert (=> d!1860187 (= (forall!15062 (exprs!5863 (h!70561 zl!343)) lambda!323512) e!3631416)))

(declare-fun b!5933791 () Bool)

(declare-fun e!3631417 () Bool)

(assert (=> b!5933791 (= e!3631416 e!3631417)))

(declare-fun res!2485809 () Bool)

(assert (=> b!5933791 (=> (not res!2485809) (not e!3631417))))

(assert (=> b!5933791 (= res!2485809 (dynLambda!25074 lambda!323512 (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5933792 () Bool)

(assert (=> b!5933792 (= e!3631417 (forall!15062 (t!377635 (exprs!5863 (h!70561 zl!343))) lambda!323512))))

(assert (= (and d!1860187 (not res!2485808)) b!5933791))

(assert (= (and b!5933791 res!2485809) b!5933792))

(declare-fun b_lambda!222843 () Bool)

(assert (=> (not b_lambda!222843) (not b!5933791)))

(declare-fun m!6825226 () Bool)

(assert (=> b!5933791 m!6825226))

(declare-fun m!6825228 () Bool)

(assert (=> b!5933792 m!6825228))

(assert (=> d!1859959 d!1860187))

(assert (=> d!1860053 d!1860035))

(declare-fun b!5933803 () Bool)

(declare-fun e!3631425 () Bool)

(declare-fun e!3631431 () Bool)

(assert (=> b!5933803 (= e!3631425 e!3631431)))

(declare-fun res!2485815 () Bool)

(assert (=> b!5933803 (= res!2485815 (not (nullable!5974 (reg!16308 (regOne!32470 r!7292)))))))

(assert (=> b!5933803 (=> (not res!2485815) (not e!3631431))))

(declare-fun b!5933804 () Bool)

(declare-fun e!3631427 () Bool)

(declare-fun e!3631430 () Bool)

(assert (=> b!5933804 (= e!3631427 e!3631430)))

(declare-fun res!2485816 () Bool)

(assert (=> b!5933804 (=> (not res!2485816) (not e!3631430))))

(declare-fun call!471231 () Bool)

(assert (=> b!5933804 (= res!2485816 call!471231)))

(declare-fun bm!471225 () Bool)

(declare-fun c!1054891 () Bool)

(assert (=> bm!471225 (= call!471231 (validRegex!7715 (ite c!1054891 (regOne!32471 (regOne!32470 r!7292)) (regOne!32470 (regOne!32470 r!7292)))))))

(declare-fun b!5933805 () Bool)

(declare-fun e!3631428 () Bool)

(assert (=> b!5933805 (= e!3631428 e!3631425)))

(declare-fun c!1054890 () Bool)

(assert (=> b!5933805 (= c!1054890 ((_ is Star!15979) (regOne!32470 r!7292)))))

(declare-fun b!5933806 () Bool)

(declare-fun call!471230 () Bool)

(assert (=> b!5933806 (= e!3631430 call!471230)))

(declare-fun d!1860191 () Bool)

(declare-fun res!2485819 () Bool)

(assert (=> d!1860191 (=> res!2485819 e!3631428)))

(assert (=> d!1860191 (= res!2485819 ((_ is ElementMatch!15979) (regOne!32470 r!7292)))))

(assert (=> d!1860191 (= (validRegex!7715 (regOne!32470 r!7292)) e!3631428)))

(declare-fun b!5933802 () Bool)

(declare-fun res!2485817 () Bool)

(declare-fun e!3631426 () Bool)

(assert (=> b!5933802 (=> (not res!2485817) (not e!3631426))))

(assert (=> b!5933802 (= res!2485817 call!471231)))

(declare-fun e!3631429 () Bool)

(assert (=> b!5933802 (= e!3631429 e!3631426)))

(declare-fun bm!471226 () Bool)

(declare-fun call!471232 () Bool)

(assert (=> bm!471226 (= call!471232 (validRegex!7715 (ite c!1054890 (reg!16308 (regOne!32470 r!7292)) (ite c!1054891 (regTwo!32471 (regOne!32470 r!7292)) (regTwo!32470 (regOne!32470 r!7292))))))))

(declare-fun b!5933807 () Bool)

(declare-fun res!2485818 () Bool)

(assert (=> b!5933807 (=> res!2485818 e!3631427)))

(assert (=> b!5933807 (= res!2485818 (not ((_ is Concat!24824) (regOne!32470 r!7292))))))

(assert (=> b!5933807 (= e!3631429 e!3631427)))

(declare-fun b!5933808 () Bool)

(assert (=> b!5933808 (= e!3631426 call!471230)))

(declare-fun bm!471227 () Bool)

(assert (=> bm!471227 (= call!471230 call!471232)))

(declare-fun b!5933809 () Bool)

(assert (=> b!5933809 (= e!3631425 e!3631429)))

(assert (=> b!5933809 (= c!1054891 ((_ is Union!15979) (regOne!32470 r!7292)))))

(declare-fun b!5933810 () Bool)

(assert (=> b!5933810 (= e!3631431 call!471232)))

(assert (= (and d!1860191 (not res!2485819)) b!5933805))

(assert (= (and b!5933805 c!1054890) b!5933803))

(assert (= (and b!5933805 (not c!1054890)) b!5933809))

(assert (= (and b!5933803 res!2485815) b!5933810))

(assert (= (and b!5933809 c!1054891) b!5933802))

(assert (= (and b!5933809 (not c!1054891)) b!5933807))

(assert (= (and b!5933802 res!2485817) b!5933808))

(assert (= (and b!5933807 (not res!2485818)) b!5933804))

(assert (= (and b!5933804 res!2485816) b!5933806))

(assert (= (or b!5933808 b!5933806) bm!471227))

(assert (= (or b!5933802 b!5933804) bm!471225))

(assert (= (or b!5933810 bm!471227) bm!471226))

(declare-fun m!6825236 () Bool)

(assert (=> b!5933803 m!6825236))

(declare-fun m!6825238 () Bool)

(assert (=> bm!471225 m!6825238))

(declare-fun m!6825240 () Bool)

(assert (=> bm!471226 m!6825240))

(assert (=> d!1860053 d!1860191))

(assert (=> d!1860053 d!1860051))

(declare-fun d!1860195 () Bool)

(assert (=> d!1860195 (= (Exists!3049 lambda!323570) (choose!44718 lambda!323570))))

(declare-fun bs!1403794 () Bool)

(assert (= bs!1403794 d!1860195))

(declare-fun m!6825242 () Bool)

(assert (=> bs!1403794 m!6825242))

(assert (=> d!1860053 d!1860195))

(declare-fun bs!1403810 () Bool)

(declare-fun d!1860197 () Bool)

(assert (= bs!1403810 (and d!1860197 b!5933755)))

(declare-fun lambda!323589 () Int)

(assert (=> bs!1403810 (not (= lambda!323589 lambda!323582))))

(declare-fun bs!1403811 () Bool)

(assert (= bs!1403811 (and d!1860197 b!5932851)))

(assert (=> bs!1403811 (not (= lambda!323589 lambda!323505))))

(declare-fun bs!1403812 () Bool)

(assert (= bs!1403812 (and d!1860197 b!5933037)))

(assert (=> bs!1403812 (not (= lambda!323589 lambda!323525))))

(assert (=> bs!1403811 (= lambda!323589 lambda!323504)))

(declare-fun bs!1403813 () Bool)

(assert (= bs!1403813 (and d!1860197 d!1860043)))

(assert (=> bs!1403813 (not (= lambda!323589 lambda!323564))))

(declare-fun bs!1403814 () Bool)

(assert (= bs!1403814 (and d!1860197 b!5933757)))

(assert (=> bs!1403814 (not (= lambda!323589 lambda!323580))))

(declare-fun bs!1403815 () Bool)

(assert (= bs!1403815 (and d!1860197 b!5933039)))

(assert (=> bs!1403815 (not (= lambda!323589 lambda!323524))))

(declare-fun bs!1403816 () Bool)

(assert (= bs!1403816 (and d!1860197 d!1860053)))

(assert (=> bs!1403816 (= lambda!323589 lambda!323570)))

(assert (=> bs!1403813 (= lambda!323589 lambda!323563)))

(assert (=> d!1860197 true))

(assert (=> d!1860197 true))

(assert (=> d!1860197 true))

(assert (=> d!1860197 (= (isDefined!12573 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326)) (Exists!3049 lambda!323589))))

(assert (=> d!1860197 true))

(declare-fun _$89!1990 () Unit!157229)

(assert (=> d!1860197 (= (choose!44720 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326) _$89!1990)))

(declare-fun bs!1403817 () Bool)

(assert (= bs!1403817 d!1860197))

(assert (=> bs!1403817 m!6824588))

(assert (=> bs!1403817 m!6824588))

(assert (=> bs!1403817 m!6824590))

(declare-fun m!6825268 () Bool)

(assert (=> bs!1403817 m!6825268))

(assert (=> d!1860053 d!1860197))

(declare-fun bs!1403818 () Bool)

(declare-fun d!1860209 () Bool)

(assert (= bs!1403818 (and d!1860209 d!1860029)))

(declare-fun lambda!323590 () Int)

(assert (=> bs!1403818 (= lambda!323590 lambda!323550)))

(declare-fun bs!1403819 () Bool)

(assert (= bs!1403819 (and d!1860209 d!1860033)))

(assert (=> bs!1403819 (= lambda!323590 lambda!323553)))

(declare-fun bs!1403820 () Bool)

(assert (= bs!1403820 (and d!1860209 d!1860031)))

(assert (=> bs!1403820 (= lambda!323590 lambda!323551)))

(declare-fun bs!1403821 () Bool)

(assert (= bs!1403821 (and d!1860209 d!1860011)))

(assert (=> bs!1403821 (= lambda!323590 lambda!323540)))

(declare-fun bs!1403822 () Bool)

(assert (= bs!1403822 (and d!1860209 d!1859959)))

(assert (=> bs!1403822 (= lambda!323590 lambda!323512)))

(declare-fun bs!1403823 () Bool)

(assert (= bs!1403823 (and d!1860209 d!1860019)))

(assert (=> bs!1403823 (= lambda!323590 lambda!323547)))

(declare-fun b!5933851 () Bool)

(declare-fun e!3631459 () Bool)

(declare-fun e!3631457 () Bool)

(assert (=> b!5933851 (= e!3631459 e!3631457)))

(declare-fun c!1054902 () Bool)

(assert (=> b!5933851 (= c!1054902 (isEmpty!35977 (t!377635 (exprs!5863 (h!70561 zl!343)))))))

(assert (=> d!1860209 e!3631459))

(declare-fun res!2485845 () Bool)

(assert (=> d!1860209 (=> (not res!2485845) (not e!3631459))))

(declare-fun lt!2310965 () Regex!15979)

(assert (=> d!1860209 (= res!2485845 (validRegex!7715 lt!2310965))))

(declare-fun e!3631461 () Regex!15979)

(assert (=> d!1860209 (= lt!2310965 e!3631461)))

(declare-fun c!1054903 () Bool)

(declare-fun e!3631460 () Bool)

(assert (=> d!1860209 (= c!1054903 e!3631460)))

(declare-fun res!2485846 () Bool)

(assert (=> d!1860209 (=> (not res!2485846) (not e!3631460))))

(assert (=> d!1860209 (= res!2485846 ((_ is Cons!64112) (t!377635 (exprs!5863 (h!70561 zl!343)))))))

(assert (=> d!1860209 (forall!15062 (t!377635 (exprs!5863 (h!70561 zl!343))) lambda!323590)))

(assert (=> d!1860209 (= (generalisedConcat!1576 (t!377635 (exprs!5863 (h!70561 zl!343)))) lt!2310965)))

(declare-fun b!5933852 () Bool)

(assert (=> b!5933852 (= e!3631460 (isEmpty!35977 (t!377635 (t!377635 (exprs!5863 (h!70561 zl!343))))))))

(declare-fun b!5933853 () Bool)

(assert (=> b!5933853 (= e!3631457 (isEmptyExpr!1406 lt!2310965))))

(declare-fun b!5933854 () Bool)

(assert (=> b!5933854 (= e!3631461 (h!70560 (t!377635 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5933855 () Bool)

(declare-fun e!3631462 () Regex!15979)

(assert (=> b!5933855 (= e!3631462 EmptyExpr!15979)))

(declare-fun b!5933856 () Bool)

(declare-fun e!3631458 () Bool)

(assert (=> b!5933856 (= e!3631458 (isConcat!929 lt!2310965))))

(declare-fun b!5933857 () Bool)

(assert (=> b!5933857 (= e!3631458 (= lt!2310965 (head!12497 (t!377635 (exprs!5863 (h!70561 zl!343))))))))

(declare-fun b!5933858 () Bool)

(assert (=> b!5933858 (= e!3631457 e!3631458)))

(declare-fun c!1054901 () Bool)

(assert (=> b!5933858 (= c!1054901 (isEmpty!35977 (tail!11582 (t!377635 (exprs!5863 (h!70561 zl!343))))))))

(declare-fun b!5933859 () Bool)

(assert (=> b!5933859 (= e!3631461 e!3631462)))

(declare-fun c!1054904 () Bool)

(assert (=> b!5933859 (= c!1054904 ((_ is Cons!64112) (t!377635 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5933860 () Bool)

(assert (=> b!5933860 (= e!3631462 (Concat!24824 (h!70560 (t!377635 (exprs!5863 (h!70561 zl!343)))) (generalisedConcat!1576 (t!377635 (t!377635 (exprs!5863 (h!70561 zl!343)))))))))

(assert (= (and d!1860209 res!2485846) b!5933852))

(assert (= (and d!1860209 c!1054903) b!5933854))

(assert (= (and d!1860209 (not c!1054903)) b!5933859))

(assert (= (and b!5933859 c!1054904) b!5933860))

(assert (= (and b!5933859 (not c!1054904)) b!5933855))

(assert (= (and d!1860209 res!2485845) b!5933851))

(assert (= (and b!5933851 c!1054902) b!5933853))

(assert (= (and b!5933851 (not c!1054902)) b!5933858))

(assert (= (and b!5933858 c!1054901) b!5933857))

(assert (= (and b!5933858 (not c!1054901)) b!5933856))

(declare-fun m!6825274 () Bool)

(assert (=> b!5933858 m!6825274))

(assert (=> b!5933858 m!6825274))

(declare-fun m!6825276 () Bool)

(assert (=> b!5933858 m!6825276))

(declare-fun m!6825278 () Bool)

(assert (=> b!5933856 m!6825278))

(declare-fun m!6825282 () Bool)

(assert (=> b!5933857 m!6825282))

(assert (=> b!5933851 m!6824600))

(declare-fun m!6825284 () Bool)

(assert (=> b!5933852 m!6825284))

(declare-fun m!6825286 () Bool)

(assert (=> b!5933853 m!6825286))

(declare-fun m!6825288 () Bool)

(assert (=> d!1860209 m!6825288))

(declare-fun m!6825290 () Bool)

(assert (=> d!1860209 m!6825290))

(declare-fun m!6825292 () Bool)

(assert (=> b!5933860 m!6825292))

(assert (=> b!5932935 d!1860209))

(declare-fun d!1860217 () Bool)

(assert (=> d!1860217 (= (isEmpty!35977 (tail!11582 (unfocusZipperList!1400 zl!343))) ((_ is Nil!64112) (tail!11582 (unfocusZipperList!1400 zl!343))))))

(assert (=> b!5933183 d!1860217))

(declare-fun d!1860219 () Bool)

(assert (=> d!1860219 (= (tail!11582 (unfocusZipperList!1400 zl!343)) (t!377635 (unfocusZipperList!1400 zl!343)))))

(assert (=> b!5933183 d!1860219))

(declare-fun bs!1403825 () Bool)

(declare-fun d!1860223 () Bool)

(assert (= bs!1403825 (and d!1860223 d!1860029)))

(declare-fun lambda!323591 () Int)

(assert (=> bs!1403825 (= lambda!323591 lambda!323550)))

(declare-fun bs!1403826 () Bool)

(assert (= bs!1403826 (and d!1860223 d!1860209)))

(assert (=> bs!1403826 (= lambda!323591 lambda!323590)))

(declare-fun bs!1403827 () Bool)

(assert (= bs!1403827 (and d!1860223 d!1860033)))

(assert (=> bs!1403827 (= lambda!323591 lambda!323553)))

(declare-fun bs!1403828 () Bool)

(assert (= bs!1403828 (and d!1860223 d!1860031)))

(assert (=> bs!1403828 (= lambda!323591 lambda!323551)))

(declare-fun bs!1403829 () Bool)

(assert (= bs!1403829 (and d!1860223 d!1860011)))

(assert (=> bs!1403829 (= lambda!323591 lambda!323540)))

(declare-fun bs!1403830 () Bool)

(assert (= bs!1403830 (and d!1860223 d!1859959)))

(assert (=> bs!1403830 (= lambda!323591 lambda!323512)))

(declare-fun bs!1403831 () Bool)

(assert (= bs!1403831 (and d!1860223 d!1860019)))

(assert (=> bs!1403831 (= lambda!323591 lambda!323547)))

(assert (=> d!1860223 (= (inv!83194 setElem!40274) (forall!15062 (exprs!5863 setElem!40274) lambda!323591))))

(declare-fun bs!1403832 () Bool)

(assert (= bs!1403832 d!1860223))

(declare-fun m!6825294 () Bool)

(assert (=> bs!1403832 m!6825294))

(assert (=> setNonEmpty!40274 d!1860223))

(declare-fun d!1860225 () Bool)

(assert (=> d!1860225 (= (isEmpty!35977 (unfocusZipperList!1400 zl!343)) ((_ is Nil!64112) (unfocusZipperList!1400 zl!343)))))

(assert (=> b!5933185 d!1860225))

(declare-fun call!471250 () List!64236)

(declare-fun call!471249 () (InoxSet Context!10726))

(declare-fun c!1054912 () Bool)

(declare-fun bm!471240 () Bool)

(assert (=> bm!471240 (= call!471249 (derivationStepZipperDown!1229 (ite c!1054912 (regTwo!32471 (h!70560 (exprs!5863 lt!2310867))) (regOne!32470 (h!70560 (exprs!5863 lt!2310867)))) (ite c!1054912 (Context!10727 (t!377635 (exprs!5863 lt!2310867))) (Context!10727 call!471250)) (h!70562 s!2326)))))

(declare-fun bm!471241 () Bool)

(declare-fun call!471248 () (InoxSet Context!10726))

(declare-fun call!471246 () (InoxSet Context!10726))

(assert (=> bm!471241 (= call!471248 call!471246)))

(declare-fun bm!471242 () Bool)

(declare-fun call!471247 () List!64236)

(declare-fun c!1054911 () Bool)

(declare-fun c!1054913 () Bool)

(assert (=> bm!471242 (= call!471246 (derivationStepZipperDown!1229 (ite c!1054912 (regOne!32471 (h!70560 (exprs!5863 lt!2310867))) (ite c!1054913 (regTwo!32470 (h!70560 (exprs!5863 lt!2310867))) (ite c!1054911 (regOne!32470 (h!70560 (exprs!5863 lt!2310867))) (reg!16308 (h!70560 (exprs!5863 lt!2310867)))))) (ite (or c!1054912 c!1054913) (Context!10727 (t!377635 (exprs!5863 lt!2310867))) (Context!10727 call!471247)) (h!70562 s!2326)))))

(declare-fun b!5933872 () Bool)

(declare-fun e!3631474 () Bool)

(assert (=> b!5933872 (= c!1054913 e!3631474)))

(declare-fun res!2485848 () Bool)

(assert (=> b!5933872 (=> (not res!2485848) (not e!3631474))))

(assert (=> b!5933872 (= res!2485848 ((_ is Concat!24824) (h!70560 (exprs!5863 lt!2310867))))))

(declare-fun e!3631472 () (InoxSet Context!10726))

(declare-fun e!3631471 () (InoxSet Context!10726))

(assert (=> b!5933872 (= e!3631472 e!3631471)))

(declare-fun b!5933873 () Bool)

(declare-fun e!3631469 () (InoxSet Context!10726))

(assert (=> b!5933873 (= e!3631469 (store ((as const (Array Context!10726 Bool)) false) (Context!10727 (t!377635 (exprs!5863 lt!2310867))) true))))

(declare-fun bm!471243 () Bool)

(assert (=> bm!471243 (= call!471250 ($colon$colon!1866 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310867)))) (ite (or c!1054913 c!1054911) (regTwo!32470 (h!70560 (exprs!5863 lt!2310867))) (h!70560 (exprs!5863 lt!2310867)))))))

(declare-fun bm!471244 () Bool)

(declare-fun call!471245 () (InoxSet Context!10726))

(assert (=> bm!471244 (= call!471245 call!471248)))

(declare-fun b!5933874 () Bool)

(assert (=> b!5933874 (= e!3631474 (nullable!5974 (regOne!32470 (h!70560 (exprs!5863 lt!2310867)))))))

(declare-fun b!5933875 () Bool)

(assert (=> b!5933875 (= e!3631472 ((_ map or) call!471246 call!471249))))

(declare-fun b!5933876 () Bool)

(declare-fun e!3631470 () (InoxSet Context!10726))

(assert (=> b!5933876 (= e!3631470 call!471245)))

(declare-fun b!5933877 () Bool)

(assert (=> b!5933877 (= e!3631470 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5933878 () Bool)

(declare-fun e!3631473 () (InoxSet Context!10726))

(assert (=> b!5933878 (= e!3631471 e!3631473)))

(assert (=> b!5933878 (= c!1054911 ((_ is Concat!24824) (h!70560 (exprs!5863 lt!2310867))))))

(declare-fun b!5933879 () Bool)

(assert (=> b!5933879 (= e!3631471 ((_ map or) call!471249 call!471248))))

(declare-fun b!5933880 () Bool)

(assert (=> b!5933880 (= e!3631473 call!471245)))

(declare-fun b!5933881 () Bool)

(declare-fun c!1054910 () Bool)

(assert (=> b!5933881 (= c!1054910 ((_ is Star!15979) (h!70560 (exprs!5863 lt!2310867))))))

(assert (=> b!5933881 (= e!3631473 e!3631470)))

(declare-fun b!5933882 () Bool)

(assert (=> b!5933882 (= e!3631469 e!3631472)))

(assert (=> b!5933882 (= c!1054912 ((_ is Union!15979) (h!70560 (exprs!5863 lt!2310867))))))

(declare-fun d!1860227 () Bool)

(declare-fun c!1054914 () Bool)

(assert (=> d!1860227 (= c!1054914 (and ((_ is ElementMatch!15979) (h!70560 (exprs!5863 lt!2310867))) (= (c!1054641 (h!70560 (exprs!5863 lt!2310867))) (h!70562 s!2326))))))

(assert (=> d!1860227 (= (derivationStepZipperDown!1229 (h!70560 (exprs!5863 lt!2310867)) (Context!10727 (t!377635 (exprs!5863 lt!2310867))) (h!70562 s!2326)) e!3631469)))

(declare-fun bm!471245 () Bool)

(assert (=> bm!471245 (= call!471247 call!471250)))

(assert (= (and d!1860227 c!1054914) b!5933873))

(assert (= (and d!1860227 (not c!1054914)) b!5933882))

(assert (= (and b!5933882 c!1054912) b!5933875))

(assert (= (and b!5933882 (not c!1054912)) b!5933872))

(assert (= (and b!5933872 res!2485848) b!5933874))

(assert (= (and b!5933872 c!1054913) b!5933879))

(assert (= (and b!5933872 (not c!1054913)) b!5933878))

(assert (= (and b!5933878 c!1054911) b!5933880))

(assert (= (and b!5933878 (not c!1054911)) b!5933881))

(assert (= (and b!5933881 c!1054910) b!5933876))

(assert (= (and b!5933881 (not c!1054910)) b!5933877))

(assert (= (or b!5933880 b!5933876) bm!471245))

(assert (= (or b!5933880 b!5933876) bm!471244))

(assert (= (or b!5933879 bm!471245) bm!471243))

(assert (= (or b!5933879 bm!471244) bm!471241))

(assert (= (or b!5933875 b!5933879) bm!471240))

(assert (= (or b!5933875 bm!471241) bm!471242))

(declare-fun m!6825320 () Bool)

(assert (=> b!5933873 m!6825320))

(declare-fun m!6825322 () Bool)

(assert (=> bm!471242 m!6825322))

(declare-fun m!6825324 () Bool)

(assert (=> b!5933874 m!6825324))

(declare-fun m!6825326 () Bool)

(assert (=> bm!471240 m!6825326))

(declare-fun m!6825328 () Bool)

(assert (=> bm!471243 m!6825328))

(assert (=> bm!471138 d!1860227))

(assert (=> d!1860027 d!1860025))

(declare-fun d!1860233 () Bool)

(assert (=> d!1860233 (= (flatMap!1492 lt!2310863 lambda!323506) (dynLambda!25072 lambda!323506 lt!2310868))))

(assert (=> d!1860233 true))

(declare-fun _$13!2699 () Unit!157229)

(assert (=> d!1860233 (= (choose!44715 lt!2310863 lt!2310868 lambda!323506) _$13!2699)))

(declare-fun b_lambda!222847 () Bool)

(assert (=> (not b_lambda!222847) (not d!1860233)))

(declare-fun bs!1403833 () Bool)

(assert (= bs!1403833 d!1860233))

(assert (=> bs!1403833 m!6824582))

(assert (=> bs!1403833 m!6824828))

(assert (=> d!1860027 d!1860233))

(declare-fun d!1860237 () Bool)

(declare-fun res!2485853 () Bool)

(declare-fun e!3631479 () Bool)

(assert (=> d!1860237 (=> res!2485853 e!3631479)))

(assert (=> d!1860237 (= res!2485853 ((_ is Nil!64112) (exprs!5863 (h!70561 zl!343))))))

(assert (=> d!1860237 (= (forall!15062 (exprs!5863 (h!70561 zl!343)) lambda!323553) e!3631479)))

(declare-fun b!5933891 () Bool)

(declare-fun e!3631480 () Bool)

(assert (=> b!5933891 (= e!3631479 e!3631480)))

(declare-fun res!2485854 () Bool)

(assert (=> b!5933891 (=> (not res!2485854) (not e!3631480))))

(assert (=> b!5933891 (= res!2485854 (dynLambda!25074 lambda!323553 (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun b!5933892 () Bool)

(assert (=> b!5933892 (= e!3631480 (forall!15062 (t!377635 (exprs!5863 (h!70561 zl!343))) lambda!323553))))

(assert (= (and d!1860237 (not res!2485853)) b!5933891))

(assert (= (and b!5933891 res!2485854) b!5933892))

(declare-fun b_lambda!222849 () Bool)

(assert (=> (not b_lambda!222849) (not b!5933891)))

(declare-fun m!6825344 () Bool)

(assert (=> b!5933891 m!6825344))

(declare-fun m!6825346 () Bool)

(assert (=> b!5933892 m!6825346))

(assert (=> d!1860033 d!1860237))

(declare-fun bm!471246 () Bool)

(declare-fun call!471255 () (InoxSet Context!10726))

(declare-fun call!471256 () List!64236)

(declare-fun c!1054919 () Bool)

(assert (=> bm!471246 (= call!471255 (derivationStepZipperDown!1229 (ite c!1054919 (regTwo!32471 (h!70560 (exprs!5863 lt!2310868))) (regOne!32470 (h!70560 (exprs!5863 lt!2310868)))) (ite c!1054919 (Context!10727 (t!377635 (exprs!5863 lt!2310868))) (Context!10727 call!471256)) (h!70562 s!2326)))))

(declare-fun bm!471247 () Bool)

(declare-fun call!471254 () (InoxSet Context!10726))

(declare-fun call!471252 () (InoxSet Context!10726))

(assert (=> bm!471247 (= call!471254 call!471252)))

(declare-fun call!471253 () List!64236)

(declare-fun c!1054918 () Bool)

(declare-fun bm!471248 () Bool)

(declare-fun c!1054920 () Bool)

(assert (=> bm!471248 (= call!471252 (derivationStepZipperDown!1229 (ite c!1054919 (regOne!32471 (h!70560 (exprs!5863 lt!2310868))) (ite c!1054920 (regTwo!32470 (h!70560 (exprs!5863 lt!2310868))) (ite c!1054918 (regOne!32470 (h!70560 (exprs!5863 lt!2310868))) (reg!16308 (h!70560 (exprs!5863 lt!2310868)))))) (ite (or c!1054919 c!1054920) (Context!10727 (t!377635 (exprs!5863 lt!2310868))) (Context!10727 call!471253)) (h!70562 s!2326)))))

(declare-fun b!5933893 () Bool)

(declare-fun e!3631486 () Bool)

(assert (=> b!5933893 (= c!1054920 e!3631486)))

(declare-fun res!2485855 () Bool)

(assert (=> b!5933893 (=> (not res!2485855) (not e!3631486))))

(assert (=> b!5933893 (= res!2485855 ((_ is Concat!24824) (h!70560 (exprs!5863 lt!2310868))))))

(declare-fun e!3631484 () (InoxSet Context!10726))

(declare-fun e!3631483 () (InoxSet Context!10726))

(assert (=> b!5933893 (= e!3631484 e!3631483)))

(declare-fun b!5933894 () Bool)

(declare-fun e!3631481 () (InoxSet Context!10726))

(assert (=> b!5933894 (= e!3631481 (store ((as const (Array Context!10726 Bool)) false) (Context!10727 (t!377635 (exprs!5863 lt!2310868))) true))))

(declare-fun bm!471249 () Bool)

(assert (=> bm!471249 (= call!471256 ($colon$colon!1866 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310868)))) (ite (or c!1054920 c!1054918) (regTwo!32470 (h!70560 (exprs!5863 lt!2310868))) (h!70560 (exprs!5863 lt!2310868)))))))

(declare-fun bm!471250 () Bool)

(declare-fun call!471251 () (InoxSet Context!10726))

(assert (=> bm!471250 (= call!471251 call!471254)))

(declare-fun b!5933895 () Bool)

(assert (=> b!5933895 (= e!3631486 (nullable!5974 (regOne!32470 (h!70560 (exprs!5863 lt!2310868)))))))

(declare-fun b!5933896 () Bool)

(assert (=> b!5933896 (= e!3631484 ((_ map or) call!471252 call!471255))))

(declare-fun b!5933897 () Bool)

(declare-fun e!3631482 () (InoxSet Context!10726))

(assert (=> b!5933897 (= e!3631482 call!471251)))

(declare-fun b!5933898 () Bool)

(assert (=> b!5933898 (= e!3631482 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5933899 () Bool)

(declare-fun e!3631485 () (InoxSet Context!10726))

(assert (=> b!5933899 (= e!3631483 e!3631485)))

(assert (=> b!5933899 (= c!1054918 ((_ is Concat!24824) (h!70560 (exprs!5863 lt!2310868))))))

(declare-fun b!5933900 () Bool)

(assert (=> b!5933900 (= e!3631483 ((_ map or) call!471255 call!471254))))

(declare-fun b!5933901 () Bool)

(assert (=> b!5933901 (= e!3631485 call!471251)))

(declare-fun b!5933902 () Bool)

(declare-fun c!1054917 () Bool)

(assert (=> b!5933902 (= c!1054917 ((_ is Star!15979) (h!70560 (exprs!5863 lt!2310868))))))

(assert (=> b!5933902 (= e!3631485 e!3631482)))

(declare-fun b!5933903 () Bool)

(assert (=> b!5933903 (= e!3631481 e!3631484)))

(assert (=> b!5933903 (= c!1054919 ((_ is Union!15979) (h!70560 (exprs!5863 lt!2310868))))))

(declare-fun d!1860239 () Bool)

(declare-fun c!1054921 () Bool)

(assert (=> d!1860239 (= c!1054921 (and ((_ is ElementMatch!15979) (h!70560 (exprs!5863 lt!2310868))) (= (c!1054641 (h!70560 (exprs!5863 lt!2310868))) (h!70562 s!2326))))))

(assert (=> d!1860239 (= (derivationStepZipperDown!1229 (h!70560 (exprs!5863 lt!2310868)) (Context!10727 (t!377635 (exprs!5863 lt!2310868))) (h!70562 s!2326)) e!3631481)))

(declare-fun bm!471251 () Bool)

(assert (=> bm!471251 (= call!471253 call!471256)))

(assert (= (and d!1860239 c!1054921) b!5933894))

(assert (= (and d!1860239 (not c!1054921)) b!5933903))

(assert (= (and b!5933903 c!1054919) b!5933896))

(assert (= (and b!5933903 (not c!1054919)) b!5933893))

(assert (= (and b!5933893 res!2485855) b!5933895))

(assert (= (and b!5933893 c!1054920) b!5933900))

(assert (= (and b!5933893 (not c!1054920)) b!5933899))

(assert (= (and b!5933899 c!1054918) b!5933901))

(assert (= (and b!5933899 (not c!1054918)) b!5933902))

(assert (= (and b!5933902 c!1054917) b!5933897))

(assert (= (and b!5933902 (not c!1054917)) b!5933898))

(assert (= (or b!5933901 b!5933897) bm!471251))

(assert (= (or b!5933901 b!5933897) bm!471250))

(assert (= (or b!5933900 bm!471251) bm!471249))

(assert (= (or b!5933900 bm!471250) bm!471247))

(assert (= (or b!5933896 b!5933900) bm!471246))

(assert (= (or b!5933896 bm!471247) bm!471248))

(declare-fun m!6825348 () Bool)

(assert (=> b!5933894 m!6825348))

(declare-fun m!6825350 () Bool)

(assert (=> bm!471248 m!6825350))

(declare-fun m!6825352 () Bool)

(assert (=> b!5933895 m!6825352))

(declare-fun m!6825354 () Bool)

(assert (=> bm!471246 m!6825354))

(declare-fun m!6825356 () Bool)

(assert (=> bm!471249 m!6825356))

(assert (=> bm!471137 d!1860239))

(declare-fun d!1860241 () Bool)

(assert (=> d!1860241 (= ($colon$colon!1866 (exprs!5863 (Context!10727 Nil!64112)) (ite (or c!1054810 c!1054808) (regTwo!32470 r!7292) r!7292)) (Cons!64112 (ite (or c!1054810 c!1054808) (regTwo!32470 r!7292) r!7292) (exprs!5863 (Context!10727 Nil!64112))))))

(assert (=> bm!471161 d!1860241))

(declare-fun b!5933913 () Bool)

(declare-fun e!3631493 () Bool)

(assert (=> b!5933913 (= e!3631493 (nullable!5974 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310867)))))))))

(declare-fun bm!471252 () Bool)

(declare-fun call!471257 () (InoxSet Context!10726))

(assert (=> bm!471252 (= call!471257 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310867))))) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310867)))))) (h!70562 s!2326)))))

(declare-fun b!5933914 () Bool)

(declare-fun e!3631494 () (InoxSet Context!10726))

(assert (=> b!5933914 (= e!3631494 call!471257)))

(declare-fun e!3631492 () (InoxSet Context!10726))

(declare-fun b!5933915 () Bool)

(assert (=> b!5933915 (= e!3631492 ((_ map or) call!471257 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310867)))))) (h!70562 s!2326))))))

(declare-fun b!5933916 () Bool)

(assert (=> b!5933916 (= e!3631494 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1860245 () Bool)

(declare-fun c!1054924 () Bool)

(assert (=> d!1860245 (= c!1054924 e!3631493)))

(declare-fun res!2485861 () Bool)

(assert (=> d!1860245 (=> (not res!2485861) (not e!3631493))))

(assert (=> d!1860245 (= res!2485861 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310867))))))))

(assert (=> d!1860245 (= (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 lt!2310867))) (h!70562 s!2326)) e!3631492)))

(declare-fun b!5933917 () Bool)

(assert (=> b!5933917 (= e!3631492 e!3631494)))

(declare-fun c!1054925 () Bool)

(assert (=> b!5933917 (= c!1054925 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310867))))))))

(assert (= (and d!1860245 res!2485861) b!5933913))

(assert (= (and d!1860245 c!1054924) b!5933915))

(assert (= (and d!1860245 (not c!1054924)) b!5933917))

(assert (= (and b!5933917 c!1054925) b!5933914))

(assert (= (and b!5933917 (not c!1054925)) b!5933916))

(assert (= (or b!5933915 b!5933914) bm!471252))

(declare-fun m!6825362 () Bool)

(assert (=> b!5933913 m!6825362))

(declare-fun m!6825364 () Bool)

(assert (=> bm!471252 m!6825364))

(declare-fun m!6825366 () Bool)

(assert (=> b!5933915 m!6825366))

(assert (=> b!5933232 d!1860245))

(declare-fun b!5933919 () Bool)

(declare-fun e!3631495 () Bool)

(declare-fun e!3631501 () Bool)

(assert (=> b!5933919 (= e!3631495 e!3631501)))

(declare-fun res!2485862 () Bool)

(assert (=> b!5933919 (= res!2485862 (not (nullable!5974 (reg!16308 lt!2310915))))))

(assert (=> b!5933919 (=> (not res!2485862) (not e!3631501))))

(declare-fun b!5933920 () Bool)

(declare-fun e!3631497 () Bool)

(declare-fun e!3631500 () Bool)

(assert (=> b!5933920 (= e!3631497 e!3631500)))

(declare-fun res!2485863 () Bool)

(assert (=> b!5933920 (=> (not res!2485863) (not e!3631500))))

(declare-fun call!471259 () Bool)

(assert (=> b!5933920 (= res!2485863 call!471259)))

(declare-fun bm!471253 () Bool)

(declare-fun c!1054927 () Bool)

(assert (=> bm!471253 (= call!471259 (validRegex!7715 (ite c!1054927 (regOne!32471 lt!2310915) (regOne!32470 lt!2310915))))))

(declare-fun b!5933921 () Bool)

(declare-fun e!3631498 () Bool)

(assert (=> b!5933921 (= e!3631498 e!3631495)))

(declare-fun c!1054926 () Bool)

(assert (=> b!5933921 (= c!1054926 ((_ is Star!15979) lt!2310915))))

(declare-fun b!5933922 () Bool)

(declare-fun call!471258 () Bool)

(assert (=> b!5933922 (= e!3631500 call!471258)))

(declare-fun d!1860247 () Bool)

(declare-fun res!2485866 () Bool)

(assert (=> d!1860247 (=> res!2485866 e!3631498)))

(assert (=> d!1860247 (= res!2485866 ((_ is ElementMatch!15979) lt!2310915))))

(assert (=> d!1860247 (= (validRegex!7715 lt!2310915) e!3631498)))

(declare-fun b!5933918 () Bool)

(declare-fun res!2485864 () Bool)

(declare-fun e!3631496 () Bool)

(assert (=> b!5933918 (=> (not res!2485864) (not e!3631496))))

(assert (=> b!5933918 (= res!2485864 call!471259)))

(declare-fun e!3631499 () Bool)

(assert (=> b!5933918 (= e!3631499 e!3631496)))

(declare-fun call!471260 () Bool)

(declare-fun bm!471254 () Bool)

(assert (=> bm!471254 (= call!471260 (validRegex!7715 (ite c!1054926 (reg!16308 lt!2310915) (ite c!1054927 (regTwo!32471 lt!2310915) (regTwo!32470 lt!2310915)))))))

(declare-fun b!5933923 () Bool)

(declare-fun res!2485865 () Bool)

(assert (=> b!5933923 (=> res!2485865 e!3631497)))

(assert (=> b!5933923 (= res!2485865 (not ((_ is Concat!24824) lt!2310915)))))

(assert (=> b!5933923 (= e!3631499 e!3631497)))

(declare-fun b!5933924 () Bool)

(assert (=> b!5933924 (= e!3631496 call!471258)))

(declare-fun bm!471255 () Bool)

(assert (=> bm!471255 (= call!471258 call!471260)))

(declare-fun b!5933925 () Bool)

(assert (=> b!5933925 (= e!3631495 e!3631499)))

(assert (=> b!5933925 (= c!1054927 ((_ is Union!15979) lt!2310915))))

(declare-fun b!5933926 () Bool)

(assert (=> b!5933926 (= e!3631501 call!471260)))

(assert (= (and d!1860247 (not res!2485866)) b!5933921))

(assert (= (and b!5933921 c!1054926) b!5933919))

(assert (= (and b!5933921 (not c!1054926)) b!5933925))

(assert (= (and b!5933919 res!2485862) b!5933926))

(assert (= (and b!5933925 c!1054927) b!5933918))

(assert (= (and b!5933925 (not c!1054927)) b!5933923))

(assert (= (and b!5933918 res!2485864) b!5933924))

(assert (= (and b!5933923 (not res!2485865)) b!5933920))

(assert (= (and b!5933920 res!2485863) b!5933922))

(assert (= (or b!5933924 b!5933922) bm!471255))

(assert (= (or b!5933918 b!5933920) bm!471253))

(assert (= (or b!5933926 bm!471255) bm!471254))

(declare-fun m!6825380 () Bool)

(assert (=> b!5933919 m!6825380))

(declare-fun m!6825384 () Bool)

(assert (=> bm!471253 m!6825384))

(declare-fun m!6825388 () Bool)

(assert (=> bm!471254 m!6825388))

(assert (=> d!1860011 d!1860247))

(declare-fun d!1860249 () Bool)

(declare-fun res!2485867 () Bool)

(declare-fun e!3631502 () Bool)

(assert (=> d!1860249 (=> res!2485867 e!3631502)))

(assert (=> d!1860249 (= res!2485867 ((_ is Nil!64112) (unfocusZipperList!1400 zl!343)))))

(assert (=> d!1860249 (= (forall!15062 (unfocusZipperList!1400 zl!343) lambda!323540) e!3631502)))

(declare-fun b!5933927 () Bool)

(declare-fun e!3631503 () Bool)

(assert (=> b!5933927 (= e!3631502 e!3631503)))

(declare-fun res!2485868 () Bool)

(assert (=> b!5933927 (=> (not res!2485868) (not e!3631503))))

(assert (=> b!5933927 (= res!2485868 (dynLambda!25074 lambda!323540 (h!70560 (unfocusZipperList!1400 zl!343))))))

(declare-fun b!5933928 () Bool)

(assert (=> b!5933928 (= e!3631503 (forall!15062 (t!377635 (unfocusZipperList!1400 zl!343)) lambda!323540))))

(assert (= (and d!1860249 (not res!2485867)) b!5933927))

(assert (= (and b!5933927 res!2485868) b!5933928))

(declare-fun b_lambda!222851 () Bool)

(assert (=> (not b_lambda!222851) (not b!5933927)))

(declare-fun m!6825396 () Bool)

(assert (=> b!5933927 m!6825396))

(declare-fun m!6825398 () Bool)

(assert (=> b!5933928 m!6825398))

(assert (=> d!1860011 d!1860249))

(declare-fun d!1860253 () Bool)

(assert (=> d!1860253 true))

(assert (=> d!1860253 true))

(declare-fun res!2485879 () Bool)

(assert (=> d!1860253 (= (choose!44718 lambda!323505) res!2485879)))

(assert (=> d!1860041 d!1860253))

(declare-fun d!1860255 () Bool)

(assert (=> d!1860255 (= (head!12497 (exprs!5863 (h!70561 zl!343))) (h!70560 (exprs!5863 (h!70561 zl!343))))))

(assert (=> b!5932932 d!1860255))

(declare-fun b!5933943 () Bool)

(declare-fun e!3631512 () Bool)

(assert (=> b!5933943 (= e!3631512 (nullable!5974 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310868)))))))))

(declare-fun bm!471257 () Bool)

(declare-fun call!471262 () (InoxSet Context!10726))

(assert (=> bm!471257 (= call!471262 (derivationStepZipperDown!1229 (h!70560 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310868))))) (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310868)))))) (h!70562 s!2326)))))

(declare-fun b!5933944 () Bool)

(declare-fun e!3631513 () (InoxSet Context!10726))

(assert (=> b!5933944 (= e!3631513 call!471262)))

(declare-fun b!5933945 () Bool)

(declare-fun e!3631511 () (InoxSet Context!10726))

(assert (=> b!5933945 (= e!3631511 ((_ map or) call!471262 (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310868)))))) (h!70562 s!2326))))))

(declare-fun b!5933946 () Bool)

(assert (=> b!5933946 (= e!3631513 ((as const (Array Context!10726 Bool)) false))))

(declare-fun d!1860257 () Bool)

(declare-fun c!1054931 () Bool)

(assert (=> d!1860257 (= c!1054931 e!3631512)))

(declare-fun res!2485880 () Bool)

(assert (=> d!1860257 (=> (not res!2485880) (not e!3631512))))

(assert (=> d!1860257 (= res!2485880 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310868))))))))

(assert (=> d!1860257 (= (derivationStepZipperUp!1155 (Context!10727 (t!377635 (exprs!5863 lt!2310868))) (h!70562 s!2326)) e!3631511)))

(declare-fun b!5933947 () Bool)

(assert (=> b!5933947 (= e!3631511 e!3631513)))

(declare-fun c!1054932 () Bool)

(assert (=> b!5933947 (= c!1054932 ((_ is Cons!64112) (exprs!5863 (Context!10727 (t!377635 (exprs!5863 lt!2310868))))))))

(assert (= (and d!1860257 res!2485880) b!5933943))

(assert (= (and d!1860257 c!1054931) b!5933945))

(assert (= (and d!1860257 (not c!1054931)) b!5933947))

(assert (= (and b!5933947 c!1054932) b!5933944))

(assert (= (and b!5933947 (not c!1054932)) b!5933946))

(assert (= (or b!5933945 b!5933944) bm!471257))

(declare-fun m!6825414 () Bool)

(assert (=> b!5933943 m!6825414))

(declare-fun m!6825416 () Bool)

(assert (=> bm!471257 m!6825416))

(declare-fun m!6825418 () Bool)

(assert (=> b!5933945 m!6825418))

(assert (=> b!5933227 d!1860257))

(assert (=> d!1859981 d!1859973))

(declare-fun d!1860261 () Bool)

(assert (=> d!1860261 (= (flatMap!1492 z!1189 lambda!323506) (dynLambda!25072 lambda!323506 (h!70561 zl!343)))))

(assert (=> d!1860261 true))

(declare-fun _$13!2700 () Unit!157229)

(assert (=> d!1860261 (= (choose!44715 z!1189 (h!70561 zl!343) lambda!323506) _$13!2700)))

(declare-fun b_lambda!222853 () Bool)

(assert (=> (not b_lambda!222853) (not d!1860261)))

(declare-fun bs!1403835 () Bool)

(assert (= bs!1403835 d!1860261))

(assert (=> bs!1403835 m!6824560))

(assert (=> bs!1403835 m!6824680))

(assert (=> d!1859981 d!1860261))

(declare-fun bs!1403836 () Bool)

(declare-fun d!1860263 () Bool)

(assert (= bs!1403836 (and d!1860263 d!1860223)))

(declare-fun lambda!323592 () Int)

(assert (=> bs!1403836 (= lambda!323592 lambda!323591)))

(declare-fun bs!1403837 () Bool)

(assert (= bs!1403837 (and d!1860263 d!1860029)))

(assert (=> bs!1403837 (= lambda!323592 lambda!323550)))

(declare-fun bs!1403838 () Bool)

(assert (= bs!1403838 (and d!1860263 d!1860209)))

(assert (=> bs!1403838 (= lambda!323592 lambda!323590)))

(declare-fun bs!1403839 () Bool)

(assert (= bs!1403839 (and d!1860263 d!1860033)))

(assert (=> bs!1403839 (= lambda!323592 lambda!323553)))

(declare-fun bs!1403840 () Bool)

(assert (= bs!1403840 (and d!1860263 d!1860031)))

(assert (=> bs!1403840 (= lambda!323592 lambda!323551)))

(declare-fun bs!1403841 () Bool)

(assert (= bs!1403841 (and d!1860263 d!1860011)))

(assert (=> bs!1403841 (= lambda!323592 lambda!323540)))

(declare-fun bs!1403842 () Bool)

(assert (= bs!1403842 (and d!1860263 d!1859959)))

(assert (=> bs!1403842 (= lambda!323592 lambda!323512)))

(declare-fun bs!1403843 () Bool)

(assert (= bs!1403843 (and d!1860263 d!1860019)))

(assert (=> bs!1403843 (= lambda!323592 lambda!323547)))

(declare-fun b!5933948 () Bool)

(declare-fun e!3631517 () Bool)

(declare-fun lt!2310975 () Regex!15979)

(assert (=> b!5933948 (= e!3631517 (isEmptyLang!1415 lt!2310975))))

(declare-fun e!3631514 () Bool)

(assert (=> d!1860263 e!3631514))

(declare-fun res!2485882 () Bool)

(assert (=> d!1860263 (=> (not res!2485882) (not e!3631514))))

(assert (=> d!1860263 (= res!2485882 (validRegex!7715 lt!2310975))))

(declare-fun e!3631516 () Regex!15979)

(assert (=> d!1860263 (= lt!2310975 e!3631516)))

(declare-fun c!1054933 () Bool)

(declare-fun e!3631519 () Bool)

(assert (=> d!1860263 (= c!1054933 e!3631519)))

(declare-fun res!2485881 () Bool)

(assert (=> d!1860263 (=> (not res!2485881) (not e!3631519))))

(assert (=> d!1860263 (= res!2485881 ((_ is Cons!64112) (t!377635 (unfocusZipperList!1400 zl!343))))))

(assert (=> d!1860263 (forall!15062 (t!377635 (unfocusZipperList!1400 zl!343)) lambda!323592)))

(assert (=> d!1860263 (= (generalisedUnion!1823 (t!377635 (unfocusZipperList!1400 zl!343))) lt!2310975)))

(declare-fun b!5933949 () Bool)

(declare-fun e!3631518 () Regex!15979)

(assert (=> b!5933949 (= e!3631518 (Union!15979 (h!70560 (t!377635 (unfocusZipperList!1400 zl!343))) (generalisedUnion!1823 (t!377635 (t!377635 (unfocusZipperList!1400 zl!343))))))))

(declare-fun b!5933950 () Bool)

(assert (=> b!5933950 (= e!3631519 (isEmpty!35977 (t!377635 (t!377635 (unfocusZipperList!1400 zl!343)))))))

(declare-fun b!5933951 () Bool)

(declare-fun e!3631515 () Bool)

(assert (=> b!5933951 (= e!3631515 (isUnion!845 lt!2310975))))

(declare-fun b!5933952 () Bool)

(assert (=> b!5933952 (= e!3631515 (= lt!2310975 (head!12497 (t!377635 (unfocusZipperList!1400 zl!343)))))))

(declare-fun b!5933953 () Bool)

(assert (=> b!5933953 (= e!3631516 (h!70560 (t!377635 (unfocusZipperList!1400 zl!343))))))

(declare-fun b!5933954 () Bool)

(assert (=> b!5933954 (= e!3631517 e!3631515)))

(declare-fun c!1054934 () Bool)

(assert (=> b!5933954 (= c!1054934 (isEmpty!35977 (tail!11582 (t!377635 (unfocusZipperList!1400 zl!343)))))))

(declare-fun b!5933955 () Bool)

(assert (=> b!5933955 (= e!3631516 e!3631518)))

(declare-fun c!1054936 () Bool)

(assert (=> b!5933955 (= c!1054936 ((_ is Cons!64112) (t!377635 (unfocusZipperList!1400 zl!343))))))

(declare-fun b!5933956 () Bool)

(assert (=> b!5933956 (= e!3631514 e!3631517)))

(declare-fun c!1054935 () Bool)

(assert (=> b!5933956 (= c!1054935 (isEmpty!35977 (t!377635 (unfocusZipperList!1400 zl!343))))))

(declare-fun b!5933957 () Bool)

(assert (=> b!5933957 (= e!3631518 EmptyLang!15979)))

(assert (= (and d!1860263 res!2485881) b!5933950))

(assert (= (and d!1860263 c!1054933) b!5933953))

(assert (= (and d!1860263 (not c!1054933)) b!5933955))

(assert (= (and b!5933955 c!1054936) b!5933949))

(assert (= (and b!5933955 (not c!1054936)) b!5933957))

(assert (= (and d!1860263 res!2485882) b!5933956))

(assert (= (and b!5933956 c!1054935) b!5933948))

(assert (= (and b!5933956 (not c!1054935)) b!5933954))

(assert (= (and b!5933954 c!1054934) b!5933952))

(assert (= (and b!5933954 (not c!1054934)) b!5933951))

(declare-fun m!6825420 () Bool)

(assert (=> b!5933950 m!6825420))

(declare-fun m!6825422 () Bool)

(assert (=> b!5933951 m!6825422))

(declare-fun m!6825424 () Bool)

(assert (=> b!5933954 m!6825424))

(assert (=> b!5933954 m!6825424))

(declare-fun m!6825426 () Bool)

(assert (=> b!5933954 m!6825426))

(assert (=> b!5933956 m!6824790))

(declare-fun m!6825428 () Bool)

(assert (=> b!5933948 m!6825428))

(declare-fun m!6825430 () Bool)

(assert (=> d!1860263 m!6825430))

(declare-fun m!6825432 () Bool)

(assert (=> d!1860263 m!6825432))

(declare-fun m!6825434 () Bool)

(assert (=> b!5933952 m!6825434))

(declare-fun m!6825436 () Bool)

(assert (=> b!5933949 m!6825436))

(assert (=> b!5933178 d!1860263))

(declare-fun d!1860265 () Bool)

(declare-fun nullableFct!1946 (Regex!15979) Bool)

(assert (=> d!1860265 (= (nullable!5974 (regOne!32470 r!7292)) (nullableFct!1946 (regOne!32470 r!7292)))))

(declare-fun bs!1403844 () Bool)

(assert (= bs!1403844 d!1860265))

(declare-fun m!6825438 () Bool)

(assert (=> bs!1403844 m!6825438))

(assert (=> b!5933444 d!1860265))

(declare-fun bs!1403845 () Bool)

(declare-fun b!5933965 () Bool)

(assert (= bs!1403845 (and b!5933965 b!5933755)))

(declare-fun lambda!323593 () Int)

(assert (=> bs!1403845 (not (= lambda!323593 lambda!323582))))

(declare-fun bs!1403846 () Bool)

(assert (= bs!1403846 (and b!5933965 d!1860197)))

(assert (=> bs!1403846 (not (= lambda!323593 lambda!323589))))

(declare-fun bs!1403847 () Bool)

(assert (= bs!1403847 (and b!5933965 b!5932851)))

(assert (=> bs!1403847 (not (= lambda!323593 lambda!323505))))

(declare-fun bs!1403848 () Bool)

(assert (= bs!1403848 (and b!5933965 b!5933037)))

(assert (=> bs!1403848 (not (= lambda!323593 lambda!323525))))

(assert (=> bs!1403847 (not (= lambda!323593 lambda!323504))))

(declare-fun bs!1403849 () Bool)

(assert (= bs!1403849 (and b!5933965 d!1860043)))

(assert (=> bs!1403849 (not (= lambda!323593 lambda!323564))))

(declare-fun bs!1403850 () Bool)

(assert (= bs!1403850 (and b!5933965 b!5933757)))

(assert (=> bs!1403850 (= (and (= (reg!16308 (regOne!32471 r!7292)) (reg!16308 (regTwo!32471 r!7292))) (= (regOne!32471 r!7292) (regTwo!32471 r!7292))) (= lambda!323593 lambda!323580))))

(declare-fun bs!1403851 () Bool)

(assert (= bs!1403851 (and b!5933965 b!5933039)))

(assert (=> bs!1403851 (= (and (= (reg!16308 (regOne!32471 r!7292)) (reg!16308 r!7292)) (= (regOne!32471 r!7292) r!7292)) (= lambda!323593 lambda!323524))))

(declare-fun bs!1403852 () Bool)

(assert (= bs!1403852 (and b!5933965 d!1860053)))

(assert (=> bs!1403852 (not (= lambda!323593 lambda!323570))))

(assert (=> bs!1403849 (not (= lambda!323593 lambda!323563))))

(assert (=> b!5933965 true))

(assert (=> b!5933965 true))

(declare-fun bs!1403853 () Bool)

(declare-fun b!5933963 () Bool)

(assert (= bs!1403853 (and b!5933963 b!5933755)))

(declare-fun lambda!323594 () Int)

(assert (=> bs!1403853 (= (and (= (regOne!32470 (regOne!32471 r!7292)) (regOne!32470 (regTwo!32471 r!7292))) (= (regTwo!32470 (regOne!32471 r!7292)) (regTwo!32470 (regTwo!32471 r!7292)))) (= lambda!323594 lambda!323582))))

(declare-fun bs!1403854 () Bool)

(assert (= bs!1403854 (and b!5933963 d!1860197)))

(assert (=> bs!1403854 (not (= lambda!323594 lambda!323589))))

(declare-fun bs!1403855 () Bool)

(assert (= bs!1403855 (and b!5933963 b!5932851)))

(assert (=> bs!1403855 (= (and (= (regOne!32470 (regOne!32471 r!7292)) (regOne!32470 r!7292)) (= (regTwo!32470 (regOne!32471 r!7292)) (regTwo!32470 r!7292))) (= lambda!323594 lambda!323505))))

(declare-fun bs!1403856 () Bool)

(assert (= bs!1403856 (and b!5933963 b!5933037)))

(assert (=> bs!1403856 (= (and (= (regOne!32470 (regOne!32471 r!7292)) (regOne!32470 r!7292)) (= (regTwo!32470 (regOne!32471 r!7292)) (regTwo!32470 r!7292))) (= lambda!323594 lambda!323525))))

(assert (=> bs!1403855 (not (= lambda!323594 lambda!323504))))

(declare-fun bs!1403857 () Bool)

(assert (= bs!1403857 (and b!5933963 b!5933965)))

(assert (=> bs!1403857 (not (= lambda!323594 lambda!323593))))

(declare-fun bs!1403858 () Bool)

(assert (= bs!1403858 (and b!5933963 d!1860043)))

(assert (=> bs!1403858 (= (and (= (regOne!32470 (regOne!32471 r!7292)) (regOne!32470 r!7292)) (= (regTwo!32470 (regOne!32471 r!7292)) (regTwo!32470 r!7292))) (= lambda!323594 lambda!323564))))

(declare-fun bs!1403859 () Bool)

(assert (= bs!1403859 (and b!5933963 b!5933757)))

(assert (=> bs!1403859 (not (= lambda!323594 lambda!323580))))

(declare-fun bs!1403860 () Bool)

(assert (= bs!1403860 (and b!5933963 b!5933039)))

(assert (=> bs!1403860 (not (= lambda!323594 lambda!323524))))

(declare-fun bs!1403861 () Bool)

(assert (= bs!1403861 (and b!5933963 d!1860053)))

(assert (=> bs!1403861 (not (= lambda!323594 lambda!323570))))

(assert (=> bs!1403858 (not (= lambda!323594 lambda!323563))))

(assert (=> b!5933963 true))

(assert (=> b!5933963 true))

(declare-fun b!5933958 () Bool)

(declare-fun e!3631523 () Bool)

(assert (=> b!5933958 (= e!3631523 (matchRSpec!3080 (regTwo!32471 (regOne!32471 r!7292)) s!2326))))

(declare-fun call!471263 () Bool)

(declare-fun c!1054940 () Bool)

(declare-fun bm!471258 () Bool)

(assert (=> bm!471258 (= call!471263 (Exists!3049 (ite c!1054940 lambda!323593 lambda!323594)))))

(declare-fun b!5933960 () Bool)

(declare-fun e!3631524 () Bool)

(declare-fun e!3631525 () Bool)

(assert (=> b!5933960 (= e!3631524 e!3631525)))

(assert (=> b!5933960 (= c!1054940 ((_ is Star!15979) (regOne!32471 r!7292)))))

(declare-fun bm!471259 () Bool)

(declare-fun call!471264 () Bool)

(assert (=> bm!471259 (= call!471264 (isEmpty!35980 s!2326))))

(declare-fun b!5933961 () Bool)

(declare-fun e!3631521 () Bool)

(declare-fun e!3631522 () Bool)

(assert (=> b!5933961 (= e!3631521 e!3631522)))

(declare-fun res!2485884 () Bool)

(assert (=> b!5933961 (= res!2485884 (not ((_ is EmptyLang!15979) (regOne!32471 r!7292))))))

(assert (=> b!5933961 (=> (not res!2485884) (not e!3631522))))

(declare-fun b!5933962 () Bool)

(declare-fun e!3631526 () Bool)

(assert (=> b!5933962 (= e!3631526 (= s!2326 (Cons!64114 (c!1054641 (regOne!32471 r!7292)) Nil!64114)))))

(assert (=> b!5933963 (= e!3631525 call!471263)))

(declare-fun b!5933964 () Bool)

(declare-fun c!1054938 () Bool)

(assert (=> b!5933964 (= c!1054938 ((_ is Union!15979) (regOne!32471 r!7292)))))

(assert (=> b!5933964 (= e!3631526 e!3631524)))

(declare-fun b!5933959 () Bool)

(assert (=> b!5933959 (= e!3631521 call!471264)))

(declare-fun d!1860267 () Bool)

(declare-fun c!1054937 () Bool)

(assert (=> d!1860267 (= c!1054937 ((_ is EmptyExpr!15979) (regOne!32471 r!7292)))))

(assert (=> d!1860267 (= (matchRSpec!3080 (regOne!32471 r!7292) s!2326) e!3631521)))

(declare-fun e!3631520 () Bool)

(assert (=> b!5933965 (= e!3631520 call!471263)))

(declare-fun b!5933966 () Bool)

(declare-fun c!1054939 () Bool)

(assert (=> b!5933966 (= c!1054939 ((_ is ElementMatch!15979) (regOne!32471 r!7292)))))

(assert (=> b!5933966 (= e!3631522 e!3631526)))

(declare-fun b!5933967 () Bool)

(declare-fun res!2485883 () Bool)

(assert (=> b!5933967 (=> res!2485883 e!3631520)))

(assert (=> b!5933967 (= res!2485883 call!471264)))

(assert (=> b!5933967 (= e!3631525 e!3631520)))

(declare-fun b!5933968 () Bool)

(assert (=> b!5933968 (= e!3631524 e!3631523)))

(declare-fun res!2485885 () Bool)

(assert (=> b!5933968 (= res!2485885 (matchRSpec!3080 (regOne!32471 (regOne!32471 r!7292)) s!2326))))

(assert (=> b!5933968 (=> res!2485885 e!3631523)))

(assert (= (and d!1860267 c!1054937) b!5933959))

(assert (= (and d!1860267 (not c!1054937)) b!5933961))

(assert (= (and b!5933961 res!2485884) b!5933966))

(assert (= (and b!5933966 c!1054939) b!5933962))

(assert (= (and b!5933966 (not c!1054939)) b!5933964))

(assert (= (and b!5933964 c!1054938) b!5933968))

(assert (= (and b!5933964 (not c!1054938)) b!5933960))

(assert (= (and b!5933968 (not res!2485885)) b!5933958))

(assert (= (and b!5933960 c!1054940) b!5933967))

(assert (= (and b!5933960 (not c!1054940)) b!5933963))

(assert (= (and b!5933967 (not res!2485883)) b!5933965))

(assert (= (or b!5933965 b!5933963) bm!471258))

(assert (= (or b!5933959 b!5933967) bm!471259))

(declare-fun m!6825440 () Bool)

(assert (=> b!5933958 m!6825440))

(declare-fun m!6825442 () Bool)

(assert (=> bm!471258 m!6825442))

(assert (=> bm!471259 m!6824722))

(declare-fun m!6825444 () Bool)

(assert (=> b!5933968 m!6825444))

(assert (=> b!5933042 d!1860267))

(declare-fun bs!1403862 () Bool)

(declare-fun d!1860269 () Bool)

(assert (= bs!1403862 (and d!1860269 d!1860223)))

(declare-fun lambda!323595 () Int)

(assert (=> bs!1403862 (= lambda!323595 lambda!323591)))

(declare-fun bs!1403863 () Bool)

(assert (= bs!1403863 (and d!1860269 d!1860029)))

(assert (=> bs!1403863 (= lambda!323595 lambda!323550)))

(declare-fun bs!1403864 () Bool)

(assert (= bs!1403864 (and d!1860269 d!1860263)))

(assert (=> bs!1403864 (= lambda!323595 lambda!323592)))

(declare-fun bs!1403865 () Bool)

(assert (= bs!1403865 (and d!1860269 d!1860209)))

(assert (=> bs!1403865 (= lambda!323595 lambda!323590)))

(declare-fun bs!1403866 () Bool)

(assert (= bs!1403866 (and d!1860269 d!1860033)))

(assert (=> bs!1403866 (= lambda!323595 lambda!323553)))

(declare-fun bs!1403867 () Bool)

(assert (= bs!1403867 (and d!1860269 d!1860031)))

(assert (=> bs!1403867 (= lambda!323595 lambda!323551)))

(declare-fun bs!1403868 () Bool)

(assert (= bs!1403868 (and d!1860269 d!1860011)))

(assert (=> bs!1403868 (= lambda!323595 lambda!323540)))

(declare-fun bs!1403869 () Bool)

(assert (= bs!1403869 (and d!1860269 d!1859959)))

(assert (=> bs!1403869 (= lambda!323595 lambda!323512)))

(declare-fun bs!1403870 () Bool)

(assert (= bs!1403870 (and d!1860269 d!1860019)))

(assert (=> bs!1403870 (= lambda!323595 lambda!323547)))

(assert (=> d!1860269 (= (inv!83194 (h!70561 (t!377636 zl!343))) (forall!15062 (exprs!5863 (h!70561 (t!377636 zl!343))) lambda!323595))))

(declare-fun bs!1403871 () Bool)

(assert (= bs!1403871 d!1860269))

(declare-fun m!6825446 () Bool)

(assert (=> bs!1403871 m!6825446))

(assert (=> b!5933491 d!1860269))

(declare-fun d!1860271 () Bool)

(assert (=> d!1860271 (= (isDefined!12573 lt!2310931) (not (isEmpty!35982 lt!2310931)))))

(declare-fun bs!1403872 () Bool)

(assert (= bs!1403872 d!1860271))

(declare-fun m!6825448 () Bool)

(assert (=> bs!1403872 m!6825448))

(assert (=> d!1860035 d!1860271))

(declare-fun b!5933989 () Bool)

(declare-fun e!3631538 () Bool)

(declare-fun e!3631542 () Bool)

(assert (=> b!5933989 (= e!3631538 e!3631542)))

(declare-fun res!2485890 () Bool)

(assert (=> b!5933989 (=> res!2485890 e!3631542)))

(declare-fun call!471273 () Bool)

(assert (=> b!5933989 (= res!2485890 call!471273)))

(declare-fun b!5933990 () Bool)

(declare-fun res!2485891 () Bool)

(declare-fun e!3631537 () Bool)

(assert (=> b!5933990 (=> res!2485891 e!3631537)))

(assert (=> b!5933990 (= res!2485891 (not ((_ is ElementMatch!15979) (regOne!32470 r!7292))))))

(declare-fun e!3631540 () Bool)

(assert (=> b!5933990 (= e!3631540 e!3631537)))

(declare-fun b!5933991 () Bool)

(declare-fun e!3631543 () Bool)

(assert (=> b!5933991 (= e!3631543 (= (head!12499 Nil!64114) (c!1054641 (regOne!32470 r!7292))))))

(declare-fun b!5933993 () Bool)

(declare-fun res!2485892 () Bool)

(assert (=> b!5933993 (=> res!2485892 e!3631542)))

(assert (=> b!5933993 (= res!2485892 (not (isEmpty!35980 (tail!11584 Nil!64114))))))

(declare-fun b!5933994 () Bool)

(assert (=> b!5933994 (= e!3631542 (not (= (head!12499 Nil!64114) (c!1054641 (regOne!32470 r!7292)))))))

(declare-fun b!5933995 () Bool)

(declare-fun e!3631541 () Bool)

(assert (=> b!5933995 (= e!3631541 (nullable!5974 (regOne!32470 r!7292)))))

(declare-fun bm!471268 () Bool)

(assert (=> bm!471268 (= call!471273 (isEmpty!35980 Nil!64114))))

(declare-fun b!5933996 () Bool)

(declare-fun res!2485887 () Bool)

(assert (=> b!5933996 (=> res!2485887 e!3631537)))

(assert (=> b!5933996 (= res!2485887 e!3631543)))

(declare-fun res!2485886 () Bool)

(assert (=> b!5933996 (=> (not res!2485886) (not e!3631543))))

(declare-fun lt!2310978 () Bool)

(assert (=> b!5933996 (= res!2485886 lt!2310978)))

(declare-fun d!1860273 () Bool)

(declare-fun e!3631539 () Bool)

(assert (=> d!1860273 e!3631539))

(declare-fun c!1054951 () Bool)

(assert (=> d!1860273 (= c!1054951 ((_ is EmptyExpr!15979) (regOne!32470 r!7292)))))

(assert (=> d!1860273 (= lt!2310978 e!3631541)))

(declare-fun c!1054953 () Bool)

(assert (=> d!1860273 (= c!1054953 (isEmpty!35980 Nil!64114))))

(assert (=> d!1860273 (validRegex!7715 (regOne!32470 r!7292))))

(assert (=> d!1860273 (= (matchR!8162 (regOne!32470 r!7292) Nil!64114) lt!2310978)))

(declare-fun b!5933992 () Bool)

(assert (=> b!5933992 (= e!3631539 (= lt!2310978 call!471273))))

(declare-fun b!5933997 () Bool)

(assert (=> b!5933997 (= e!3631541 (matchR!8162 (derivativeStep!4709 (regOne!32470 r!7292) (head!12499 Nil!64114)) (tail!11584 Nil!64114)))))

(declare-fun b!5933998 () Bool)

(declare-fun res!2485889 () Bool)

(assert (=> b!5933998 (=> (not res!2485889) (not e!3631543))))

(assert (=> b!5933998 (= res!2485889 (not call!471273))))

(declare-fun b!5933999 () Bool)

(assert (=> b!5933999 (= e!3631537 e!3631538)))

(declare-fun res!2485893 () Bool)

(assert (=> b!5933999 (=> (not res!2485893) (not e!3631538))))

(assert (=> b!5933999 (= res!2485893 (not lt!2310978))))

(declare-fun b!5934000 () Bool)

(assert (=> b!5934000 (= e!3631540 (not lt!2310978))))

(declare-fun b!5934001 () Bool)

(declare-fun res!2485888 () Bool)

(assert (=> b!5934001 (=> (not res!2485888) (not e!3631543))))

(assert (=> b!5934001 (= res!2485888 (isEmpty!35980 (tail!11584 Nil!64114)))))

(declare-fun b!5934002 () Bool)

(assert (=> b!5934002 (= e!3631539 e!3631540)))

(declare-fun c!1054952 () Bool)

(assert (=> b!5934002 (= c!1054952 ((_ is EmptyLang!15979) (regOne!32470 r!7292)))))

(assert (= (and d!1860273 c!1054953) b!5933995))

(assert (= (and d!1860273 (not c!1054953)) b!5933997))

(assert (= (and d!1860273 c!1054951) b!5933992))

(assert (= (and d!1860273 (not c!1054951)) b!5934002))

(assert (= (and b!5934002 c!1054952) b!5934000))

(assert (= (and b!5934002 (not c!1054952)) b!5933990))

(assert (= (and b!5933990 (not res!2485891)) b!5933996))

(assert (= (and b!5933996 res!2485886) b!5933998))

(assert (= (and b!5933998 res!2485889) b!5934001))

(assert (= (and b!5934001 res!2485888) b!5933991))

(assert (= (and b!5933996 (not res!2485887)) b!5933999))

(assert (= (and b!5933999 res!2485893) b!5933989))

(assert (= (and b!5933989 (not res!2485890)) b!5933993))

(assert (= (and b!5933993 (not res!2485892)) b!5933994))

(assert (= (or b!5933992 b!5933989 b!5933998) bm!471268))

(declare-fun m!6825450 () Bool)

(assert (=> b!5933993 m!6825450))

(assert (=> b!5933993 m!6825450))

(declare-fun m!6825452 () Bool)

(assert (=> b!5933993 m!6825452))

(assert (=> b!5934001 m!6825450))

(assert (=> b!5934001 m!6825450))

(assert (=> b!5934001 m!6825452))

(declare-fun m!6825454 () Bool)

(assert (=> b!5933991 m!6825454))

(assert (=> b!5933997 m!6825454))

(assert (=> b!5933997 m!6825454))

(declare-fun m!6825456 () Bool)

(assert (=> b!5933997 m!6825456))

(assert (=> b!5933997 m!6825450))

(assert (=> b!5933997 m!6825456))

(assert (=> b!5933997 m!6825450))

(declare-fun m!6825458 () Bool)

(assert (=> b!5933997 m!6825458))

(assert (=> b!5933994 m!6825454))

(assert (=> b!5933995 m!6824940))

(declare-fun m!6825460 () Bool)

(assert (=> bm!471268 m!6825460))

(assert (=> d!1860273 m!6825460))

(assert (=> d!1860273 m!6824870))

(assert (=> d!1860035 d!1860273))

(assert (=> d!1860035 d!1860191))

(assert (=> b!5933311 d!1860271))

(declare-fun d!1860275 () Bool)

(assert (=> d!1860275 (= (isEmpty!35980 (tail!11584 s!2326)) ((_ is Nil!64114) (tail!11584 s!2326)))))

(assert (=> b!5933090 d!1860275))

(declare-fun d!1860277 () Bool)

(assert (=> d!1860277 (= (tail!11584 s!2326) (t!377637 s!2326))))

(assert (=> b!5933090 d!1860277))

(declare-fun d!1860279 () Bool)

(assert (=> d!1860279 (= (isEmpty!35980 s!2326) ((_ is Nil!64114) s!2326))))

(assert (=> bm!471121 d!1860279))

(declare-fun d!1860281 () Bool)

(assert (=> d!1860281 (= (nullable!5974 r!7292) (nullableFct!1946 r!7292))))

(declare-fun bs!1403873 () Bool)

(assert (= bs!1403873 d!1860281))

(declare-fun m!6825462 () Bool)

(assert (=> bs!1403873 m!6825462))

(assert (=> b!5933092 d!1860281))

(declare-fun b!5934013 () Bool)

(declare-fun e!3631550 () Bool)

(declare-fun e!3631554 () Bool)

(assert (=> b!5934013 (= e!3631550 e!3631554)))

(declare-fun res!2485898 () Bool)

(assert (=> b!5934013 (=> res!2485898 e!3631554)))

(declare-fun call!471278 () Bool)

(assert (=> b!5934013 (= res!2485898 call!471278)))

(declare-fun b!5934014 () Bool)

(declare-fun res!2485899 () Bool)

(declare-fun e!3631549 () Bool)

(assert (=> b!5934014 (=> res!2485899 e!3631549)))

(assert (=> b!5934014 (= res!2485899 (not ((_ is ElementMatch!15979) (regTwo!32470 r!7292))))))

(declare-fun e!3631552 () Bool)

(assert (=> b!5934014 (= e!3631552 e!3631549)))

(declare-fun b!5934015 () Bool)

(declare-fun e!3631555 () Bool)

(assert (=> b!5934015 (= e!3631555 (= (head!12499 (_2!36261 (get!22081 lt!2310931))) (c!1054641 (regTwo!32470 r!7292))))))

(declare-fun b!5934017 () Bool)

(declare-fun res!2485900 () Bool)

(assert (=> b!5934017 (=> res!2485900 e!3631554)))

(assert (=> b!5934017 (= res!2485900 (not (isEmpty!35980 (tail!11584 (_2!36261 (get!22081 lt!2310931))))))))

(declare-fun b!5934018 () Bool)

(assert (=> b!5934018 (= e!3631554 (not (= (head!12499 (_2!36261 (get!22081 lt!2310931))) (c!1054641 (regTwo!32470 r!7292)))))))

(declare-fun b!5934019 () Bool)

(declare-fun e!3631553 () Bool)

(assert (=> b!5934019 (= e!3631553 (nullable!5974 (regTwo!32470 r!7292)))))

(declare-fun bm!471273 () Bool)

(assert (=> bm!471273 (= call!471278 (isEmpty!35980 (_2!36261 (get!22081 lt!2310931))))))

(declare-fun b!5934020 () Bool)

(declare-fun res!2485895 () Bool)

(assert (=> b!5934020 (=> res!2485895 e!3631549)))

(assert (=> b!5934020 (= res!2485895 e!3631555)))

(declare-fun res!2485894 () Bool)

(assert (=> b!5934020 (=> (not res!2485894) (not e!3631555))))

(declare-fun lt!2310980 () Bool)

(assert (=> b!5934020 (= res!2485894 lt!2310980)))

(declare-fun d!1860283 () Bool)

(declare-fun e!3631551 () Bool)

(assert (=> d!1860283 e!3631551))

(declare-fun c!1054959 () Bool)

(assert (=> d!1860283 (= c!1054959 ((_ is EmptyExpr!15979) (regTwo!32470 r!7292)))))

(assert (=> d!1860283 (= lt!2310980 e!3631553)))

(declare-fun c!1054961 () Bool)

(assert (=> d!1860283 (= c!1054961 (isEmpty!35980 (_2!36261 (get!22081 lt!2310931))))))

(assert (=> d!1860283 (validRegex!7715 (regTwo!32470 r!7292))))

(assert (=> d!1860283 (= (matchR!8162 (regTwo!32470 r!7292) (_2!36261 (get!22081 lt!2310931))) lt!2310980)))

(declare-fun b!5934016 () Bool)

(assert (=> b!5934016 (= e!3631551 (= lt!2310980 call!471278))))

(declare-fun b!5934021 () Bool)

(assert (=> b!5934021 (= e!3631553 (matchR!8162 (derivativeStep!4709 (regTwo!32470 r!7292) (head!12499 (_2!36261 (get!22081 lt!2310931)))) (tail!11584 (_2!36261 (get!22081 lt!2310931)))))))

(declare-fun b!5934022 () Bool)

(declare-fun res!2485897 () Bool)

(assert (=> b!5934022 (=> (not res!2485897) (not e!3631555))))

(assert (=> b!5934022 (= res!2485897 (not call!471278))))

(declare-fun b!5934023 () Bool)

(assert (=> b!5934023 (= e!3631549 e!3631550)))

(declare-fun res!2485901 () Bool)

(assert (=> b!5934023 (=> (not res!2485901) (not e!3631550))))

(assert (=> b!5934023 (= res!2485901 (not lt!2310980))))

(declare-fun b!5934024 () Bool)

(assert (=> b!5934024 (= e!3631552 (not lt!2310980))))

(declare-fun b!5934025 () Bool)

(declare-fun res!2485896 () Bool)

(assert (=> b!5934025 (=> (not res!2485896) (not e!3631555))))

(assert (=> b!5934025 (= res!2485896 (isEmpty!35980 (tail!11584 (_2!36261 (get!22081 lt!2310931)))))))

(declare-fun b!5934026 () Bool)

(assert (=> b!5934026 (= e!3631551 e!3631552)))

(declare-fun c!1054960 () Bool)

(assert (=> b!5934026 (= c!1054960 ((_ is EmptyLang!15979) (regTwo!32470 r!7292)))))

(assert (= (and d!1860283 c!1054961) b!5934019))

(assert (= (and d!1860283 (not c!1054961)) b!5934021))

(assert (= (and d!1860283 c!1054959) b!5934016))

(assert (= (and d!1860283 (not c!1054959)) b!5934026))

(assert (= (and b!5934026 c!1054960) b!5934024))

(assert (= (and b!5934026 (not c!1054960)) b!5934014))

(assert (= (and b!5934014 (not res!2485899)) b!5934020))

(assert (= (and b!5934020 res!2485894) b!5934022))

(assert (= (and b!5934022 res!2485897) b!5934025))

(assert (= (and b!5934025 res!2485896) b!5934015))

(assert (= (and b!5934020 (not res!2485895)) b!5934023))

(assert (= (and b!5934023 res!2485901) b!5934013))

(assert (= (and b!5934013 (not res!2485898)) b!5934017))

(assert (= (and b!5934017 (not res!2485900)) b!5934018))

(assert (= (or b!5934016 b!5934013 b!5934022) bm!471273))

(declare-fun m!6825470 () Bool)

(assert (=> b!5934017 m!6825470))

(assert (=> b!5934017 m!6825470))

(declare-fun m!6825472 () Bool)

(assert (=> b!5934017 m!6825472))

(assert (=> b!5934025 m!6825470))

(assert (=> b!5934025 m!6825470))

(assert (=> b!5934025 m!6825472))

(declare-fun m!6825474 () Bool)

(assert (=> b!5934015 m!6825474))

(assert (=> b!5934021 m!6825474))

(assert (=> b!5934021 m!6825474))

(declare-fun m!6825476 () Bool)

(assert (=> b!5934021 m!6825476))

(assert (=> b!5934021 m!6825470))

(assert (=> b!5934021 m!6825476))

(assert (=> b!5934021 m!6825470))

(declare-fun m!6825478 () Bool)

(assert (=> b!5934021 m!6825478))

(assert (=> b!5934018 m!6825474))

(declare-fun m!6825482 () Bool)

(assert (=> b!5934019 m!6825482))

(declare-fun m!6825484 () Bool)

(assert (=> bm!471273 m!6825484))

(assert (=> d!1860283 m!6825484))

(declare-fun m!6825486 () Bool)

(assert (=> d!1860283 m!6825486))

(assert (=> b!5933313 d!1860283))

(assert (=> b!5933313 d!1860165))

(declare-fun d!1860293 () Bool)

(assert (=> d!1860293 (= (nullable!5974 (reg!16308 r!7292)) (nullableFct!1946 (reg!16308 r!7292)))))

(declare-fun bs!1403876 () Bool)

(assert (= bs!1403876 d!1860293))

(declare-fun m!6825490 () Bool)

(assert (=> bs!1403876 m!6825490))

(assert (=> b!5933477 d!1860293))

(declare-fun d!1860297 () Bool)

(assert (=> d!1860297 true))

(declare-fun setRes!40279 () Bool)

(assert (=> d!1860297 setRes!40279))

(declare-fun condSetEmpty!40279 () Bool)

(declare-fun res!2485906 () (InoxSet Context!10726))

(assert (=> d!1860297 (= condSetEmpty!40279 (= res!2485906 ((as const (Array Context!10726 Bool)) false)))))

(assert (=> d!1860297 (= (choose!44714 z!1189 lambda!323506) res!2485906)))

(declare-fun setIsEmpty!40279 () Bool)

(assert (=> setIsEmpty!40279 setRes!40279))

(declare-fun e!3631560 () Bool)

(declare-fun setElem!40279 () Context!10726)

(declare-fun setNonEmpty!40279 () Bool)

(declare-fun tp!1650785 () Bool)

(assert (=> setNonEmpty!40279 (= setRes!40279 (and tp!1650785 (inv!83194 setElem!40279) e!3631560))))

(declare-fun setRest!40279 () (InoxSet Context!10726))

(assert (=> setNonEmpty!40279 (= res!2485906 ((_ map or) (store ((as const (Array Context!10726 Bool)) false) setElem!40279 true) setRest!40279))))

(declare-fun b!5934031 () Bool)

(declare-fun tp!1650786 () Bool)

(assert (=> b!5934031 (= e!3631560 tp!1650786)))

(assert (= (and d!1860297 condSetEmpty!40279) setIsEmpty!40279))

(assert (= (and d!1860297 (not condSetEmpty!40279)) setNonEmpty!40279))

(assert (= setNonEmpty!40279 b!5934031))

(declare-fun m!6825494 () Bool)

(assert (=> setNonEmpty!40279 m!6825494))

(assert (=> d!1859973 d!1860297))

(declare-fun d!1860303 () Bool)

(assert (=> d!1860303 (= (isEmpty!35977 (exprs!5863 (h!70561 zl!343))) ((_ is Nil!64112) (exprs!5863 (h!70561 zl!343))))))

(assert (=> b!5932926 d!1860303))

(assert (=> bs!1403738 d!1860021))

(assert (=> b!5933223 d!1859959))

(declare-fun bs!1403879 () Bool)

(declare-fun d!1860305 () Bool)

(assert (= bs!1403879 (and d!1860305 d!1860269)))

(declare-fun lambda!323596 () Int)

(assert (=> bs!1403879 (= lambda!323596 lambda!323595)))

(declare-fun bs!1403880 () Bool)

(assert (= bs!1403880 (and d!1860305 d!1860223)))

(assert (=> bs!1403880 (= lambda!323596 lambda!323591)))

(declare-fun bs!1403881 () Bool)

(assert (= bs!1403881 (and d!1860305 d!1860029)))

(assert (=> bs!1403881 (= lambda!323596 lambda!323550)))

(declare-fun bs!1403882 () Bool)

(assert (= bs!1403882 (and d!1860305 d!1860263)))

(assert (=> bs!1403882 (= lambda!323596 lambda!323592)))

(declare-fun bs!1403883 () Bool)

(assert (= bs!1403883 (and d!1860305 d!1860209)))

(assert (=> bs!1403883 (= lambda!323596 lambda!323590)))

(declare-fun bs!1403884 () Bool)

(assert (= bs!1403884 (and d!1860305 d!1860033)))

(assert (=> bs!1403884 (= lambda!323596 lambda!323553)))

(declare-fun bs!1403885 () Bool)

(assert (= bs!1403885 (and d!1860305 d!1860031)))

(assert (=> bs!1403885 (= lambda!323596 lambda!323551)))

(declare-fun bs!1403886 () Bool)

(assert (= bs!1403886 (and d!1860305 d!1860011)))

(assert (=> bs!1403886 (= lambda!323596 lambda!323540)))

(declare-fun bs!1403887 () Bool)

(assert (= bs!1403887 (and d!1860305 d!1859959)))

(assert (=> bs!1403887 (= lambda!323596 lambda!323512)))

(declare-fun bs!1403888 () Bool)

(assert (= bs!1403888 (and d!1860305 d!1860019)))

(assert (=> bs!1403888 (= lambda!323596 lambda!323547)))

(declare-fun lt!2310981 () List!64236)

(assert (=> d!1860305 (forall!15062 lt!2310981 lambda!323596)))

(declare-fun e!3631562 () List!64236)

(assert (=> d!1860305 (= lt!2310981 e!3631562)))

(declare-fun c!1054962 () Bool)

(assert (=> d!1860305 (= c!1054962 ((_ is Cons!64113) (t!377636 zl!343)))))

(assert (=> d!1860305 (= (unfocusZipperList!1400 (t!377636 zl!343)) lt!2310981)))

(declare-fun b!5934033 () Bool)

(assert (=> b!5934033 (= e!3631562 (Cons!64112 (generalisedConcat!1576 (exprs!5863 (h!70561 (t!377636 zl!343)))) (unfocusZipperList!1400 (t!377636 (t!377636 zl!343)))))))

(declare-fun b!5934034 () Bool)

(assert (=> b!5934034 (= e!3631562 Nil!64112)))

(assert (= (and d!1860305 c!1054962) b!5934033))

(assert (= (and d!1860305 (not c!1054962)) b!5934034))

(declare-fun m!6825500 () Bool)

(assert (=> d!1860305 m!6825500))

(declare-fun m!6825502 () Bool)

(assert (=> b!5934033 m!6825502))

(declare-fun m!6825504 () Bool)

(assert (=> b!5934033 m!6825504))

(assert (=> b!5933223 d!1860305))

(declare-fun d!1860315 () Bool)

(assert (=> d!1860315 (= (isEmptyExpr!1406 lt!2310881) ((_ is EmptyExpr!15979) lt!2310881))))

(assert (=> b!5932928 d!1860315))

(declare-fun b!5934051 () Bool)

(declare-fun e!3631571 () Bool)

(declare-fun e!3631577 () Bool)

(assert (=> b!5934051 (= e!3631571 e!3631577)))

(declare-fun res!2485917 () Bool)

(assert (=> b!5934051 (= res!2485917 (not (nullable!5974 (reg!16308 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))))))))

(assert (=> b!5934051 (=> (not res!2485917) (not e!3631577))))

(declare-fun b!5934052 () Bool)

(declare-fun e!3631573 () Bool)

(declare-fun e!3631576 () Bool)

(assert (=> b!5934052 (= e!3631573 e!3631576)))

(declare-fun res!2485918 () Bool)

(assert (=> b!5934052 (=> (not res!2485918) (not e!3631576))))

(declare-fun call!471281 () Bool)

(assert (=> b!5934052 (= res!2485918 call!471281)))

(declare-fun c!1054967 () Bool)

(declare-fun bm!471275 () Bool)

(assert (=> bm!471275 (= call!471281 (validRegex!7715 (ite c!1054967 (regOne!32471 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))) (regOne!32470 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))))))))

(declare-fun b!5934053 () Bool)

(declare-fun e!3631574 () Bool)

(assert (=> b!5934053 (= e!3631574 e!3631571)))

(declare-fun c!1054966 () Bool)

(assert (=> b!5934053 (= c!1054966 ((_ is Star!15979) (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))))))

(declare-fun b!5934054 () Bool)

(declare-fun call!471280 () Bool)

(assert (=> b!5934054 (= e!3631576 call!471280)))

(declare-fun d!1860317 () Bool)

(declare-fun res!2485921 () Bool)

(assert (=> d!1860317 (=> res!2485921 e!3631574)))

(assert (=> d!1860317 (= res!2485921 ((_ is ElementMatch!15979) (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))))))

(assert (=> d!1860317 (= (validRegex!7715 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))) e!3631574)))

(declare-fun b!5934050 () Bool)

(declare-fun res!2485919 () Bool)

(declare-fun e!3631572 () Bool)

(assert (=> b!5934050 (=> (not res!2485919) (not e!3631572))))

(assert (=> b!5934050 (= res!2485919 call!471281)))

(declare-fun e!3631575 () Bool)

(assert (=> b!5934050 (= e!3631575 e!3631572)))

(declare-fun call!471282 () Bool)

(declare-fun bm!471276 () Bool)

(assert (=> bm!471276 (= call!471282 (validRegex!7715 (ite c!1054966 (reg!16308 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))) (ite c!1054967 (regTwo!32471 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))) (regTwo!32470 (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292)))))))))

(declare-fun b!5934055 () Bool)

(declare-fun res!2485920 () Bool)

(assert (=> b!5934055 (=> res!2485920 e!3631573)))

(assert (=> b!5934055 (= res!2485920 (not ((_ is Concat!24824) (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292)))))))

(assert (=> b!5934055 (= e!3631575 e!3631573)))

(declare-fun b!5934056 () Bool)

(assert (=> b!5934056 (= e!3631572 call!471280)))

(declare-fun bm!471277 () Bool)

(assert (=> bm!471277 (= call!471280 call!471282)))

(declare-fun b!5934057 () Bool)

(assert (=> b!5934057 (= e!3631571 e!3631575)))

(assert (=> b!5934057 (= c!1054967 ((_ is Union!15979) (ite c!1054819 (regOne!32471 r!7292) (regOne!32470 r!7292))))))

(declare-fun b!5934058 () Bool)

(assert (=> b!5934058 (= e!3631577 call!471282)))

(assert (= (and d!1860317 (not res!2485921)) b!5934053))

(assert (= (and b!5934053 c!1054966) b!5934051))

(assert (= (and b!5934053 (not c!1054966)) b!5934057))

(assert (= (and b!5934051 res!2485917) b!5934058))

(assert (= (and b!5934057 c!1054967) b!5934050))

(assert (= (and b!5934057 (not c!1054967)) b!5934055))

(assert (= (and b!5934050 res!2485919) b!5934056))

(assert (= (and b!5934055 (not res!2485920)) b!5934052))

(assert (= (and b!5934052 res!2485918) b!5934054))

(assert (= (or b!5934056 b!5934054) bm!471277))

(assert (= (or b!5934050 b!5934052) bm!471275))

(assert (= (or b!5934058 bm!471277) bm!471276))

(declare-fun m!6825510 () Bool)

(assert (=> b!5934051 m!6825510))

(declare-fun m!6825512 () Bool)

(assert (=> bm!471275 m!6825512))

(declare-fun m!6825514 () Bool)

(assert (=> bm!471276 m!6825514))

(assert (=> bm!471171 d!1860317))

(declare-fun d!1860323 () Bool)

(assert (=> d!1860323 (= (flatMap!1492 z!1189 lambda!323515) (choose!44714 z!1189 lambda!323515))))

(declare-fun bs!1403895 () Bool)

(assert (= bs!1403895 d!1860323))

(declare-fun m!6825516 () Bool)

(assert (=> bs!1403895 m!6825516))

(assert (=> d!1859967 d!1860323))

(declare-fun d!1860325 () Bool)

(assert (=> d!1860325 (= (Exists!3049 lambda!323563) (choose!44718 lambda!323563))))

(declare-fun bs!1403898 () Bool)

(assert (= bs!1403898 d!1860325))

(declare-fun m!6825518 () Bool)

(assert (=> bs!1403898 m!6825518))

(assert (=> d!1860043 d!1860325))

(declare-fun d!1860327 () Bool)

(assert (=> d!1860327 (= (Exists!3049 lambda!323564) (choose!44718 lambda!323564))))

(declare-fun bs!1403900 () Bool)

(assert (= bs!1403900 d!1860327))

(declare-fun m!6825520 () Bool)

(assert (=> bs!1403900 m!6825520))

(assert (=> d!1860043 d!1860327))

(declare-fun bs!1403926 () Bool)

(declare-fun d!1860329 () Bool)

(assert (= bs!1403926 (and d!1860329 b!5933755)))

(declare-fun lambda!323605 () Int)

(assert (=> bs!1403926 (not (= lambda!323605 lambda!323582))))

(declare-fun bs!1403928 () Bool)

(assert (= bs!1403928 (and d!1860329 d!1860197)))

(assert (=> bs!1403928 (= lambda!323605 lambda!323589)))

(declare-fun bs!1403930 () Bool)

(assert (= bs!1403930 (and d!1860329 b!5932851)))

(assert (=> bs!1403930 (not (= lambda!323605 lambda!323505))))

(declare-fun bs!1403932 () Bool)

(assert (= bs!1403932 (and d!1860329 b!5933037)))

(assert (=> bs!1403932 (not (= lambda!323605 lambda!323525))))

(assert (=> bs!1403930 (= lambda!323605 lambda!323504)))

(declare-fun bs!1403935 () Bool)

(assert (= bs!1403935 (and d!1860329 b!5933965)))

(assert (=> bs!1403935 (not (= lambda!323605 lambda!323593))))

(declare-fun bs!1403937 () Bool)

(assert (= bs!1403937 (and d!1860329 b!5933963)))

(assert (=> bs!1403937 (not (= lambda!323605 lambda!323594))))

(declare-fun bs!1403939 () Bool)

(assert (= bs!1403939 (and d!1860329 d!1860043)))

(assert (=> bs!1403939 (not (= lambda!323605 lambda!323564))))

(declare-fun bs!1403940 () Bool)

(assert (= bs!1403940 (and d!1860329 b!5933757)))

(assert (=> bs!1403940 (not (= lambda!323605 lambda!323580))))

(declare-fun bs!1403941 () Bool)

(assert (= bs!1403941 (and d!1860329 b!5933039)))

(assert (=> bs!1403941 (not (= lambda!323605 lambda!323524))))

(declare-fun bs!1403942 () Bool)

(assert (= bs!1403942 (and d!1860329 d!1860053)))

(assert (=> bs!1403942 (= lambda!323605 lambda!323570)))

(assert (=> bs!1403939 (= lambda!323605 lambda!323563)))

(assert (=> d!1860329 true))

(assert (=> d!1860329 true))

(assert (=> d!1860329 true))

(declare-fun lambda!323606 () Int)

(assert (=> bs!1403926 (= (and (= (regOne!32470 r!7292) (regOne!32470 (regTwo!32471 r!7292))) (= (regTwo!32470 r!7292) (regTwo!32470 (regTwo!32471 r!7292)))) (= lambda!323606 lambda!323582))))

(assert (=> bs!1403928 (not (= lambda!323606 lambda!323589))))

(assert (=> bs!1403930 (= lambda!323606 lambda!323505)))

(assert (=> bs!1403932 (= lambda!323606 lambda!323525)))

(assert (=> bs!1403930 (not (= lambda!323606 lambda!323504))))

(assert (=> bs!1403935 (not (= lambda!323606 lambda!323593))))

(assert (=> bs!1403937 (= (and (= (regOne!32470 r!7292) (regOne!32470 (regOne!32471 r!7292))) (= (regTwo!32470 r!7292) (regTwo!32470 (regOne!32471 r!7292)))) (= lambda!323606 lambda!323594))))

(assert (=> bs!1403939 (= lambda!323606 lambda!323564)))

(assert (=> bs!1403940 (not (= lambda!323606 lambda!323580))))

(assert (=> bs!1403941 (not (= lambda!323606 lambda!323524))))

(declare-fun bs!1403944 () Bool)

(assert (= bs!1403944 d!1860329))

(assert (=> bs!1403944 (not (= lambda!323606 lambda!323605))))

(assert (=> bs!1403942 (not (= lambda!323606 lambda!323570))))

(assert (=> bs!1403939 (not (= lambda!323606 lambda!323563))))

(assert (=> d!1860329 true))

(assert (=> d!1860329 true))

(assert (=> d!1860329 true))

(assert (=> d!1860329 (= (Exists!3049 lambda!323605) (Exists!3049 lambda!323606))))

(assert (=> d!1860329 true))

(declare-fun _$90!1614 () Unit!157229)

(assert (=> d!1860329 (= (choose!44719 (regOne!32470 r!7292) (regTwo!32470 r!7292) s!2326) _$90!1614)))

(declare-fun m!6825576 () Bool)

(assert (=> bs!1403944 m!6825576))

(declare-fun m!6825578 () Bool)

(assert (=> bs!1403944 m!6825578))

(assert (=> d!1860043 d!1860329))

(assert (=> d!1860043 d!1860191))

(declare-fun b!5934118 () Bool)

(declare-fun e!3631613 () Bool)

(declare-fun e!3631617 () Bool)

(assert (=> b!5934118 (= e!3631613 e!3631617)))

(declare-fun res!2485944 () Bool)

(assert (=> b!5934118 (=> res!2485944 e!3631617)))

(declare-fun call!471304 () Bool)

(assert (=> b!5934118 (= res!2485944 call!471304)))

(declare-fun b!5934119 () Bool)

(declare-fun res!2485945 () Bool)

(declare-fun e!3631612 () Bool)

(assert (=> b!5934119 (=> res!2485945 e!3631612)))

(assert (=> b!5934119 (= res!2485945 (not ((_ is ElementMatch!15979) (regTwo!32470 r!7292))))))

(declare-fun e!3631615 () Bool)

(assert (=> b!5934119 (= e!3631615 e!3631612)))

(declare-fun b!5934120 () Bool)

(declare-fun e!3631618 () Bool)

(assert (=> b!5934120 (= e!3631618 (= (head!12499 s!2326) (c!1054641 (regTwo!32470 r!7292))))))

(declare-fun b!5934122 () Bool)

(declare-fun res!2485946 () Bool)

(assert (=> b!5934122 (=> res!2485946 e!3631617)))

(assert (=> b!5934122 (= res!2485946 (not (isEmpty!35980 (tail!11584 s!2326))))))

(declare-fun b!5934123 () Bool)

(assert (=> b!5934123 (= e!3631617 (not (= (head!12499 s!2326) (c!1054641 (regTwo!32470 r!7292)))))))

(declare-fun b!5934124 () Bool)

(declare-fun e!3631616 () Bool)

(assert (=> b!5934124 (= e!3631616 (nullable!5974 (regTwo!32470 r!7292)))))

(declare-fun bm!471299 () Bool)

(assert (=> bm!471299 (= call!471304 (isEmpty!35980 s!2326))))

(declare-fun b!5934125 () Bool)

(declare-fun res!2485941 () Bool)

(assert (=> b!5934125 (=> res!2485941 e!3631612)))

(assert (=> b!5934125 (= res!2485941 e!3631618)))

(declare-fun res!2485940 () Bool)

(assert (=> b!5934125 (=> (not res!2485940) (not e!3631618))))

(declare-fun lt!2310983 () Bool)

(assert (=> b!5934125 (= res!2485940 lt!2310983)))

(declare-fun d!1860355 () Bool)

(declare-fun e!3631614 () Bool)

(assert (=> d!1860355 e!3631614))

(declare-fun c!1054989 () Bool)

(assert (=> d!1860355 (= c!1054989 ((_ is EmptyExpr!15979) (regTwo!32470 r!7292)))))

(assert (=> d!1860355 (= lt!2310983 e!3631616)))

(declare-fun c!1054991 () Bool)

(assert (=> d!1860355 (= c!1054991 (isEmpty!35980 s!2326))))

(assert (=> d!1860355 (validRegex!7715 (regTwo!32470 r!7292))))

(assert (=> d!1860355 (= (matchR!8162 (regTwo!32470 r!7292) s!2326) lt!2310983)))

(declare-fun b!5934121 () Bool)

(assert (=> b!5934121 (= e!3631614 (= lt!2310983 call!471304))))

(declare-fun b!5934126 () Bool)

(assert (=> b!5934126 (= e!3631616 (matchR!8162 (derivativeStep!4709 (regTwo!32470 r!7292) (head!12499 s!2326)) (tail!11584 s!2326)))))

(declare-fun b!5934127 () Bool)

(declare-fun res!2485943 () Bool)

(assert (=> b!5934127 (=> (not res!2485943) (not e!3631618))))

(assert (=> b!5934127 (= res!2485943 (not call!471304))))

(declare-fun b!5934128 () Bool)

(assert (=> b!5934128 (= e!3631612 e!3631613)))

(declare-fun res!2485947 () Bool)

(assert (=> b!5934128 (=> (not res!2485947) (not e!3631613))))

(assert (=> b!5934128 (= res!2485947 (not lt!2310983))))

(declare-fun b!5934129 () Bool)

(assert (=> b!5934129 (= e!3631615 (not lt!2310983))))

(declare-fun b!5934130 () Bool)

(declare-fun res!2485942 () Bool)

(assert (=> b!5934130 (=> (not res!2485942) (not e!3631618))))

(assert (=> b!5934130 (= res!2485942 (isEmpty!35980 (tail!11584 s!2326)))))

(declare-fun b!5934131 () Bool)

(assert (=> b!5934131 (= e!3631614 e!3631615)))

(declare-fun c!1054990 () Bool)

(assert (=> b!5934131 (= c!1054990 ((_ is EmptyLang!15979) (regTwo!32470 r!7292)))))

(assert (= (and d!1860355 c!1054991) b!5934124))

(assert (= (and d!1860355 (not c!1054991)) b!5934126))

(assert (= (and d!1860355 c!1054989) b!5934121))

(assert (= (and d!1860355 (not c!1054989)) b!5934131))

(assert (= (and b!5934131 c!1054990) b!5934129))

(assert (= (and b!5934131 (not c!1054990)) b!5934119))

(assert (= (and b!5934119 (not res!2485945)) b!5934125))

(assert (= (and b!5934125 res!2485940) b!5934127))

(assert (= (and b!5934127 res!2485943) b!5934130))

(assert (= (and b!5934130 res!2485942) b!5934120))

(assert (= (and b!5934125 (not res!2485941)) b!5934128))

(assert (= (and b!5934128 res!2485947) b!5934118))

(assert (= (and b!5934118 (not res!2485944)) b!5934122))

(assert (= (and b!5934122 (not res!2485946)) b!5934123))

(assert (= (or b!5934121 b!5934118 b!5934127) bm!471299))

(assert (=> b!5934122 m!6824752))

(assert (=> b!5934122 m!6824752))

(assert (=> b!5934122 m!6824754))

(assert (=> b!5934130 m!6824752))

(assert (=> b!5934130 m!6824752))

(assert (=> b!5934130 m!6824754))

(assert (=> b!5934120 m!6824756))

(assert (=> b!5934126 m!6824756))

(assert (=> b!5934126 m!6824756))

(declare-fun m!6825580 () Bool)

(assert (=> b!5934126 m!6825580))

(assert (=> b!5934126 m!6824752))

(assert (=> b!5934126 m!6825580))

(assert (=> b!5934126 m!6824752))

(declare-fun m!6825582 () Bool)

(assert (=> b!5934126 m!6825582))

(assert (=> b!5934123 m!6824756))

(assert (=> b!5934124 m!6825482))

(assert (=> bm!471299 m!6824722))

(assert (=> d!1860355 m!6824722))

(assert (=> d!1860355 m!6825486))

(assert (=> b!5933306 d!1860355))

(declare-fun d!1860357 () Bool)

(assert (=> d!1860357 (= (nullable!5974 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))) (nullableFct!1946 (h!70560 (exprs!5863 (Context!10727 (Cons!64112 r!7292 Nil!64112))))))))

(declare-fun bs!1403945 () Bool)

(assert (= bs!1403945 d!1860357))

(declare-fun m!6825584 () Bool)

(assert (=> bs!1403945 m!6825584))

(assert (=> b!5933453 d!1860357))

(declare-fun d!1860359 () Bool)

(assert (=> d!1860359 (= (nullable!5974 (h!70560 (exprs!5863 (h!70561 zl!343)))) (nullableFct!1946 (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun bs!1403946 () Bool)

(assert (= bs!1403946 d!1860359))

(declare-fun m!6825586 () Bool)

(assert (=> bs!1403946 m!6825586))

(assert (=> b!5932964 d!1860359))

(declare-fun d!1860361 () Bool)

(declare-fun c!1054994 () Bool)

(assert (=> d!1860361 (= c!1054994 ((_ is Nil!64113) lt!2310949))))

(declare-fun e!3631637 () (InoxSet Context!10726))

(assert (=> d!1860361 (= (content!11816 lt!2310949) e!3631637)))

(declare-fun b!5934191 () Bool)

(assert (=> b!5934191 (= e!3631637 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5934192 () Bool)

(assert (=> b!5934192 (= e!3631637 ((_ map or) (store ((as const (Array Context!10726 Bool)) false) (h!70561 lt!2310949) true) (content!11816 (t!377636 lt!2310949))))))

(assert (= (and d!1860361 c!1054994) b!5934191))

(assert (= (and d!1860361 (not c!1054994)) b!5934192))

(declare-fun m!6825590 () Bool)

(assert (=> b!5934192 m!6825590))

(declare-fun m!6825592 () Bool)

(assert (=> b!5934192 m!6825592))

(assert (=> b!5933419 d!1860361))

(declare-fun b!5934198 () Bool)

(declare-fun e!3631640 () Bool)

(declare-fun e!3631645 () Bool)

(assert (=> b!5934198 (= e!3631640 e!3631645)))

(declare-fun res!2485952 () Bool)

(assert (=> b!5934198 (=> res!2485952 e!3631645)))

(declare-fun call!471305 () Bool)

(assert (=> b!5934198 (= res!2485952 call!471305)))

(declare-fun b!5934199 () Bool)

(declare-fun res!2485953 () Bool)

(declare-fun e!3631639 () Bool)

(assert (=> b!5934199 (=> res!2485953 e!3631639)))

(assert (=> b!5934199 (= res!2485953 (not ((_ is ElementMatch!15979) (regOne!32470 r!7292))))))

(declare-fun e!3631642 () Bool)

(assert (=> b!5934199 (= e!3631642 e!3631639)))

(declare-fun b!5934200 () Bool)

(declare-fun e!3631646 () Bool)

(assert (=> b!5934200 (= e!3631646 (= (head!12499 (_1!36261 (get!22081 lt!2310931))) (c!1054641 (regOne!32470 r!7292))))))

(declare-fun b!5934202 () Bool)

(declare-fun res!2485954 () Bool)

(assert (=> b!5934202 (=> res!2485954 e!3631645)))

(assert (=> b!5934202 (= res!2485954 (not (isEmpty!35980 (tail!11584 (_1!36261 (get!22081 lt!2310931))))))))

(declare-fun b!5934203 () Bool)

(assert (=> b!5934203 (= e!3631645 (not (= (head!12499 (_1!36261 (get!22081 lt!2310931))) (c!1054641 (regOne!32470 r!7292)))))))

(declare-fun b!5934204 () Bool)

(declare-fun e!3631643 () Bool)

(assert (=> b!5934204 (= e!3631643 (nullable!5974 (regOne!32470 r!7292)))))

(declare-fun bm!471300 () Bool)

(assert (=> bm!471300 (= call!471305 (isEmpty!35980 (_1!36261 (get!22081 lt!2310931))))))

(declare-fun b!5934205 () Bool)

(declare-fun res!2485949 () Bool)

(assert (=> b!5934205 (=> res!2485949 e!3631639)))

(assert (=> b!5934205 (= res!2485949 e!3631646)))

(declare-fun res!2485948 () Bool)

(assert (=> b!5934205 (=> (not res!2485948) (not e!3631646))))

(declare-fun lt!2310984 () Bool)

(assert (=> b!5934205 (= res!2485948 lt!2310984)))

(declare-fun d!1860363 () Bool)

(declare-fun e!3631641 () Bool)

(assert (=> d!1860363 e!3631641))

(declare-fun c!1054995 () Bool)

(assert (=> d!1860363 (= c!1054995 ((_ is EmptyExpr!15979) (regOne!32470 r!7292)))))

(assert (=> d!1860363 (= lt!2310984 e!3631643)))

(declare-fun c!1054997 () Bool)

(assert (=> d!1860363 (= c!1054997 (isEmpty!35980 (_1!36261 (get!22081 lt!2310931))))))

(assert (=> d!1860363 (validRegex!7715 (regOne!32470 r!7292))))

(assert (=> d!1860363 (= (matchR!8162 (regOne!32470 r!7292) (_1!36261 (get!22081 lt!2310931))) lt!2310984)))

(declare-fun b!5934201 () Bool)

(assert (=> b!5934201 (= e!3631641 (= lt!2310984 call!471305))))

(declare-fun b!5934206 () Bool)

(assert (=> b!5934206 (= e!3631643 (matchR!8162 (derivativeStep!4709 (regOne!32470 r!7292) (head!12499 (_1!36261 (get!22081 lt!2310931)))) (tail!11584 (_1!36261 (get!22081 lt!2310931)))))))

(declare-fun b!5934207 () Bool)

(declare-fun res!2485951 () Bool)

(assert (=> b!5934207 (=> (not res!2485951) (not e!3631646))))

(assert (=> b!5934207 (= res!2485951 (not call!471305))))

(declare-fun b!5934208 () Bool)

(assert (=> b!5934208 (= e!3631639 e!3631640)))

(declare-fun res!2485955 () Bool)

(assert (=> b!5934208 (=> (not res!2485955) (not e!3631640))))

(assert (=> b!5934208 (= res!2485955 (not lt!2310984))))

(declare-fun b!5934209 () Bool)

(assert (=> b!5934209 (= e!3631642 (not lt!2310984))))

(declare-fun b!5934210 () Bool)

(declare-fun res!2485950 () Bool)

(assert (=> b!5934210 (=> (not res!2485950) (not e!3631646))))

(assert (=> b!5934210 (= res!2485950 (isEmpty!35980 (tail!11584 (_1!36261 (get!22081 lt!2310931)))))))

(declare-fun b!5934211 () Bool)

(assert (=> b!5934211 (= e!3631641 e!3631642)))

(declare-fun c!1054996 () Bool)

(assert (=> b!5934211 (= c!1054996 ((_ is EmptyLang!15979) (regOne!32470 r!7292)))))

(assert (= (and d!1860363 c!1054997) b!5934204))

(assert (= (and d!1860363 (not c!1054997)) b!5934206))

(assert (= (and d!1860363 c!1054995) b!5934201))

(assert (= (and d!1860363 (not c!1054995)) b!5934211))

(assert (= (and b!5934211 c!1054996) b!5934209))

(assert (= (and b!5934211 (not c!1054996)) b!5934199))

(assert (= (and b!5934199 (not res!2485953)) b!5934205))

(assert (= (and b!5934205 res!2485948) b!5934207))

(assert (= (and b!5934207 res!2485951) b!5934210))

(assert (= (and b!5934210 res!2485950) b!5934200))

(assert (= (and b!5934205 (not res!2485949)) b!5934208))

(assert (= (and b!5934208 res!2485955) b!5934198))

(assert (= (and b!5934198 (not res!2485952)) b!5934202))

(assert (= (and b!5934202 (not res!2485954)) b!5934203))

(assert (= (or b!5934201 b!5934198 b!5934207) bm!471300))

(declare-fun m!6825594 () Bool)

(assert (=> b!5934202 m!6825594))

(assert (=> b!5934202 m!6825594))

(declare-fun m!6825596 () Bool)

(assert (=> b!5934202 m!6825596))

(assert (=> b!5934210 m!6825594))

(assert (=> b!5934210 m!6825594))

(assert (=> b!5934210 m!6825596))

(declare-fun m!6825598 () Bool)

(assert (=> b!5934200 m!6825598))

(assert (=> b!5934206 m!6825598))

(assert (=> b!5934206 m!6825598))

(declare-fun m!6825600 () Bool)

(assert (=> b!5934206 m!6825600))

(assert (=> b!5934206 m!6825594))

(assert (=> b!5934206 m!6825600))

(assert (=> b!5934206 m!6825594))

(declare-fun m!6825602 () Bool)

(assert (=> b!5934206 m!6825602))

(assert (=> b!5934203 m!6825598))

(assert (=> b!5934204 m!6824940))

(declare-fun m!6825604 () Bool)

(assert (=> bm!471300 m!6825604))

(assert (=> d!1860363 m!6825604))

(assert (=> d!1860363 m!6824870))

(assert (=> b!5933308 d!1860363))

(assert (=> b!5933308 d!1860165))

(declare-fun d!1860365 () Bool)

(assert (=> d!1860365 (= (Exists!3049 (ite c!1054704 lambda!323524 lambda!323525)) (choose!44718 (ite c!1054704 lambda!323524 lambda!323525)))))

(declare-fun bs!1403947 () Bool)

(assert (= bs!1403947 d!1860365))

(declare-fun m!6825606 () Bool)

(assert (=> bs!1403947 m!6825606))

(assert (=> bm!471120 d!1860365))

(declare-fun b!5934238 () Bool)

(declare-fun e!3631655 () List!64238)

(assert (=> b!5934238 (= e!3631655 (t!377637 s!2326))))

(declare-fun b!5934239 () Bool)

(assert (=> b!5934239 (= e!3631655 (Cons!64114 (h!70562 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114))) (++!14076 (t!377637 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114))) (t!377637 s!2326))))))

(declare-fun d!1860367 () Bool)

(declare-fun e!3631656 () Bool)

(assert (=> d!1860367 e!3631656))

(declare-fun res!2485957 () Bool)

(assert (=> d!1860367 (=> (not res!2485957) (not e!3631656))))

(declare-fun lt!2310985 () List!64238)

(assert (=> d!1860367 (= res!2485957 (= (content!11817 lt!2310985) ((_ map or) (content!11817 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114))) (content!11817 (t!377637 s!2326)))))))

(assert (=> d!1860367 (= lt!2310985 e!3631655)))

(declare-fun c!1054998 () Bool)

(assert (=> d!1860367 (= c!1054998 ((_ is Nil!64114) (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114))))))

(assert (=> d!1860367 (= (++!14076 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (t!377637 s!2326)) lt!2310985)))

(declare-fun b!5934240 () Bool)

(declare-fun res!2485956 () Bool)

(assert (=> b!5934240 (=> (not res!2485956) (not e!3631656))))

(assert (=> b!5934240 (= res!2485956 (= (size!40145 lt!2310985) (+ (size!40145 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114))) (size!40145 (t!377637 s!2326)))))))

(declare-fun b!5934241 () Bool)

(assert (=> b!5934241 (= e!3631656 (or (not (= (t!377637 s!2326) Nil!64114)) (= lt!2310985 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)))))))

(assert (= (and d!1860367 c!1054998) b!5934238))

(assert (= (and d!1860367 (not c!1054998)) b!5934239))

(assert (= (and d!1860367 res!2485957) b!5934240))

(assert (= (and b!5934240 res!2485956) b!5934241))

(declare-fun m!6825610 () Bool)

(assert (=> b!5934239 m!6825610))

(declare-fun m!6825612 () Bool)

(assert (=> d!1860367 m!6825612))

(assert (=> d!1860367 m!6824872))

(declare-fun m!6825614 () Bool)

(assert (=> d!1860367 m!6825614))

(declare-fun m!6825616 () Bool)

(assert (=> d!1860367 m!6825616))

(declare-fun m!6825618 () Bool)

(assert (=> b!5934240 m!6825618))

(assert (=> b!5934240 m!6824872))

(declare-fun m!6825620 () Bool)

(assert (=> b!5934240 m!6825620))

(declare-fun m!6825622 () Bool)

(assert (=> b!5934240 m!6825622))

(assert (=> b!5933310 d!1860367))

(declare-fun b!5934256 () Bool)

(declare-fun e!3631662 () List!64238)

(assert (=> b!5934256 (= e!3631662 (Cons!64114 (h!70562 s!2326) Nil!64114))))

(declare-fun b!5934257 () Bool)

(assert (=> b!5934257 (= e!3631662 (Cons!64114 (h!70562 Nil!64114) (++!14076 (t!377637 Nil!64114) (Cons!64114 (h!70562 s!2326) Nil!64114))))))

(declare-fun d!1860369 () Bool)

(declare-fun e!3631663 () Bool)

(assert (=> d!1860369 e!3631663))

(declare-fun res!2485959 () Bool)

(assert (=> d!1860369 (=> (not res!2485959) (not e!3631663))))

(declare-fun lt!2310986 () List!64238)

(assert (=> d!1860369 (= res!2485959 (= (content!11817 lt!2310986) ((_ map or) (content!11817 Nil!64114) (content!11817 (Cons!64114 (h!70562 s!2326) Nil!64114)))))))

(assert (=> d!1860369 (= lt!2310986 e!3631662)))

(declare-fun c!1054999 () Bool)

(assert (=> d!1860369 (= c!1054999 ((_ is Nil!64114) Nil!64114))))

(assert (=> d!1860369 (= (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) lt!2310986)))

(declare-fun b!5934258 () Bool)

(declare-fun res!2485958 () Bool)

(assert (=> b!5934258 (=> (not res!2485958) (not e!3631663))))

(assert (=> b!5934258 (= res!2485958 (= (size!40145 lt!2310986) (+ (size!40145 Nil!64114) (size!40145 (Cons!64114 (h!70562 s!2326) Nil!64114)))))))

(declare-fun b!5934259 () Bool)

(assert (=> b!5934259 (= e!3631663 (or (not (= (Cons!64114 (h!70562 s!2326) Nil!64114) Nil!64114)) (= lt!2310986 Nil!64114)))))

(assert (= (and d!1860369 c!1054999) b!5934256))

(assert (= (and d!1860369 (not c!1054999)) b!5934257))

(assert (= (and d!1860369 res!2485959) b!5934258))

(assert (= (and b!5934258 res!2485958) b!5934259))

(declare-fun m!6825624 () Bool)

(assert (=> b!5934257 m!6825624))

(declare-fun m!6825626 () Bool)

(assert (=> d!1860369 m!6825626))

(declare-fun m!6825628 () Bool)

(assert (=> d!1860369 m!6825628))

(declare-fun m!6825630 () Bool)

(assert (=> d!1860369 m!6825630))

(declare-fun m!6825632 () Bool)

(assert (=> b!5934258 m!6825632))

(declare-fun m!6825634 () Bool)

(assert (=> b!5934258 m!6825634))

(declare-fun m!6825636 () Bool)

(assert (=> b!5934258 m!6825636))

(assert (=> b!5933310 d!1860369))

(declare-fun d!1860371 () Bool)

(assert (=> d!1860371 (= (++!14076 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (t!377637 s!2326)) s!2326)))

(declare-fun lt!2310989 () Unit!157229)

(declare-fun choose!44723 (List!64238 C!32228 List!64238 List!64238) Unit!157229)

(assert (=> d!1860371 (= lt!2310989 (choose!44723 Nil!64114 (h!70562 s!2326) (t!377637 s!2326) s!2326))))

(assert (=> d!1860371 (= (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) (t!377637 s!2326))) s!2326)))

(assert (=> d!1860371 (= (lemmaMoveElementToOtherListKeepsConcatEq!2171 Nil!64114 (h!70562 s!2326) (t!377637 s!2326) s!2326) lt!2310989)))

(declare-fun bs!1403954 () Bool)

(assert (= bs!1403954 d!1860371))

(assert (=> bs!1403954 m!6824872))

(assert (=> bs!1403954 m!6824872))

(assert (=> bs!1403954 m!6824874))

(declare-fun m!6825648 () Bool)

(assert (=> bs!1403954 m!6825648))

(declare-fun m!6825650 () Bool)

(assert (=> bs!1403954 m!6825650))

(assert (=> b!5933310 d!1860371))

(declare-fun b!5934276 () Bool)

(declare-fun e!3631670 () Bool)

(assert (=> b!5934276 (= e!3631670 (matchR!8162 (regTwo!32470 r!7292) (t!377637 s!2326)))))

(declare-fun b!5934277 () Bool)

(declare-fun e!3631669 () Bool)

(declare-fun lt!2310992 () Option!15870)

(assert (=> b!5934277 (= e!3631669 (= (++!14076 (_1!36261 (get!22081 lt!2310992)) (_2!36261 (get!22081 lt!2310992))) s!2326))))

(declare-fun b!5934278 () Bool)

(declare-fun res!2485964 () Bool)

(assert (=> b!5934278 (=> (not res!2485964) (not e!3631669))))

(assert (=> b!5934278 (= res!2485964 (matchR!8162 (regOne!32470 r!7292) (_1!36261 (get!22081 lt!2310992))))))

(declare-fun b!5934279 () Bool)

(declare-fun e!3631668 () Option!15870)

(assert (=> b!5934279 (= e!3631668 (Some!15869 (tuple2!65917 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (t!377637 s!2326))))))

(declare-fun b!5934280 () Bool)

(declare-fun lt!2310990 () Unit!157229)

(declare-fun lt!2310991 () Unit!157229)

(assert (=> b!5934280 (= lt!2310990 lt!2310991)))

(assert (=> b!5934280 (= (++!14076 (++!14076 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (Cons!64114 (h!70562 (t!377637 s!2326)) Nil!64114)) (t!377637 (t!377637 s!2326))) s!2326)))

(assert (=> b!5934280 (= lt!2310991 (lemmaMoveElementToOtherListKeepsConcatEq!2171 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (h!70562 (t!377637 s!2326)) (t!377637 (t!377637 s!2326)) s!2326))))

(declare-fun e!3631672 () Option!15870)

(assert (=> b!5934280 (= e!3631672 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) (++!14076 (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (Cons!64114 (h!70562 (t!377637 s!2326)) Nil!64114)) (t!377637 (t!377637 s!2326)) s!2326))))

(declare-fun d!1860385 () Bool)

(declare-fun e!3631671 () Bool)

(assert (=> d!1860385 e!3631671))

(declare-fun res!2485962 () Bool)

(assert (=> d!1860385 (=> res!2485962 e!3631671)))

(assert (=> d!1860385 (= res!2485962 e!3631669)))

(declare-fun res!2485960 () Bool)

(assert (=> d!1860385 (=> (not res!2485960) (not e!3631669))))

(assert (=> d!1860385 (= res!2485960 (isDefined!12573 lt!2310992))))

(assert (=> d!1860385 (= lt!2310992 e!3631668)))

(declare-fun c!1055001 () Bool)

(assert (=> d!1860385 (= c!1055001 e!3631670)))

(declare-fun res!2485963 () Bool)

(assert (=> d!1860385 (=> (not res!2485963) (not e!3631670))))

(assert (=> d!1860385 (= res!2485963 (matchR!8162 (regOne!32470 r!7292) (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114))))))

(assert (=> d!1860385 (validRegex!7715 (regOne!32470 r!7292))))

(assert (=> d!1860385 (= (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) (++!14076 Nil!64114 (Cons!64114 (h!70562 s!2326) Nil!64114)) (t!377637 s!2326) s!2326) lt!2310992)))

(declare-fun b!5934281 () Bool)

(assert (=> b!5934281 (= e!3631671 (not (isDefined!12573 lt!2310992)))))

(declare-fun b!5934282 () Bool)

(assert (=> b!5934282 (= e!3631668 e!3631672)))

(declare-fun c!1055000 () Bool)

(assert (=> b!5934282 (= c!1055000 ((_ is Nil!64114) (t!377637 s!2326)))))

(declare-fun b!5934283 () Bool)

(declare-fun res!2485961 () Bool)

(assert (=> b!5934283 (=> (not res!2485961) (not e!3631669))))

(assert (=> b!5934283 (= res!2485961 (matchR!8162 (regTwo!32470 r!7292) (_2!36261 (get!22081 lt!2310992))))))

(declare-fun b!5934284 () Bool)

(assert (=> b!5934284 (= e!3631672 None!15869)))

(assert (= (and d!1860385 res!2485963) b!5934276))

(assert (= (and d!1860385 c!1055001) b!5934279))

(assert (= (and d!1860385 (not c!1055001)) b!5934282))

(assert (= (and b!5934282 c!1055000) b!5934284))

(assert (= (and b!5934282 (not c!1055000)) b!5934280))

(assert (= (and d!1860385 res!2485960) b!5934278))

(assert (= (and b!5934278 res!2485964) b!5934283))

(assert (= (and b!5934283 res!2485961) b!5934277))

(assert (= (and d!1860385 (not res!2485962)) b!5934281))

(declare-fun m!6825652 () Bool)

(assert (=> b!5934281 m!6825652))

(declare-fun m!6825654 () Bool)

(assert (=> b!5934278 m!6825654))

(declare-fun m!6825656 () Bool)

(assert (=> b!5934278 m!6825656))

(assert (=> b!5934277 m!6825654))

(declare-fun m!6825658 () Bool)

(assert (=> b!5934277 m!6825658))

(declare-fun m!6825660 () Bool)

(assert (=> b!5934276 m!6825660))

(assert (=> d!1860385 m!6825652))

(assert (=> d!1860385 m!6824872))

(declare-fun m!6825662 () Bool)

(assert (=> d!1860385 m!6825662))

(assert (=> d!1860385 m!6824870))

(assert (=> b!5934280 m!6824872))

(declare-fun m!6825664 () Bool)

(assert (=> b!5934280 m!6825664))

(assert (=> b!5934280 m!6825664))

(declare-fun m!6825666 () Bool)

(assert (=> b!5934280 m!6825666))

(assert (=> b!5934280 m!6824872))

(declare-fun m!6825668 () Bool)

(assert (=> b!5934280 m!6825668))

(assert (=> b!5934280 m!6825664))

(declare-fun m!6825670 () Bool)

(assert (=> b!5934280 m!6825670))

(assert (=> b!5934283 m!6825654))

(declare-fun m!6825672 () Bool)

(assert (=> b!5934283 m!6825672))

(assert (=> b!5933310 d!1860385))

(declare-fun b!5934286 () Bool)

(declare-fun e!3631673 () Bool)

(declare-fun e!3631679 () Bool)

(assert (=> b!5934286 (= e!3631673 e!3631679)))

(declare-fun res!2485965 () Bool)

(assert (=> b!5934286 (= res!2485965 (not (nullable!5974 (reg!16308 lt!2310952))))))

(assert (=> b!5934286 (=> (not res!2485965) (not e!3631679))))

(declare-fun b!5934287 () Bool)

(declare-fun e!3631675 () Bool)

(declare-fun e!3631678 () Bool)

(assert (=> b!5934287 (= e!3631675 e!3631678)))

(declare-fun res!2485966 () Bool)

(assert (=> b!5934287 (=> (not res!2485966) (not e!3631678))))

(declare-fun call!471307 () Bool)

(assert (=> b!5934287 (= res!2485966 call!471307)))

(declare-fun bm!471301 () Bool)

(declare-fun c!1055003 () Bool)

(assert (=> bm!471301 (= call!471307 (validRegex!7715 (ite c!1055003 (regOne!32471 lt!2310952) (regOne!32470 lt!2310952))))))

(declare-fun b!5934288 () Bool)

(declare-fun e!3631676 () Bool)

(assert (=> b!5934288 (= e!3631676 e!3631673)))

(declare-fun c!1055002 () Bool)

(assert (=> b!5934288 (= c!1055002 ((_ is Star!15979) lt!2310952))))

(declare-fun b!5934289 () Bool)

(declare-fun call!471306 () Bool)

(assert (=> b!5934289 (= e!3631678 call!471306)))

(declare-fun d!1860387 () Bool)

(declare-fun res!2485969 () Bool)

(assert (=> d!1860387 (=> res!2485969 e!3631676)))

(assert (=> d!1860387 (= res!2485969 ((_ is ElementMatch!15979) lt!2310952))))

(assert (=> d!1860387 (= (validRegex!7715 lt!2310952) e!3631676)))

(declare-fun b!5934285 () Bool)

(declare-fun res!2485967 () Bool)

(declare-fun e!3631674 () Bool)

(assert (=> b!5934285 (=> (not res!2485967) (not e!3631674))))

(assert (=> b!5934285 (= res!2485967 call!471307)))

(declare-fun e!3631677 () Bool)

(assert (=> b!5934285 (= e!3631677 e!3631674)))

(declare-fun bm!471302 () Bool)

(declare-fun call!471308 () Bool)

(assert (=> bm!471302 (= call!471308 (validRegex!7715 (ite c!1055002 (reg!16308 lt!2310952) (ite c!1055003 (regTwo!32471 lt!2310952) (regTwo!32470 lt!2310952)))))))

(declare-fun b!5934290 () Bool)

(declare-fun res!2485968 () Bool)

(assert (=> b!5934290 (=> res!2485968 e!3631675)))

(assert (=> b!5934290 (= res!2485968 (not ((_ is Concat!24824) lt!2310952)))))

(assert (=> b!5934290 (= e!3631677 e!3631675)))

(declare-fun b!5934291 () Bool)

(assert (=> b!5934291 (= e!3631674 call!471306)))

(declare-fun bm!471303 () Bool)

(assert (=> bm!471303 (= call!471306 call!471308)))

(declare-fun b!5934292 () Bool)

(assert (=> b!5934292 (= e!3631673 e!3631677)))

(assert (=> b!5934292 (= c!1055003 ((_ is Union!15979) lt!2310952))))

(declare-fun b!5934293 () Bool)

(assert (=> b!5934293 (= e!3631679 call!471308)))

(assert (= (and d!1860387 (not res!2485969)) b!5934288))

(assert (= (and b!5934288 c!1055002) b!5934286))

(assert (= (and b!5934288 (not c!1055002)) b!5934292))

(assert (= (and b!5934286 res!2485965) b!5934293))

(assert (= (and b!5934292 c!1055003) b!5934285))

(assert (= (and b!5934292 (not c!1055003)) b!5934290))

(assert (= (and b!5934285 res!2485967) b!5934291))

(assert (= (and b!5934290 (not res!2485968)) b!5934287))

(assert (= (and b!5934287 res!2485966) b!5934289))

(assert (= (or b!5934291 b!5934289) bm!471303))

(assert (= (or b!5934285 b!5934287) bm!471301))

(assert (= (or b!5934293 bm!471303) bm!471302))

(declare-fun m!6825674 () Bool)

(assert (=> b!5934286 m!6825674))

(declare-fun m!6825676 () Bool)

(assert (=> bm!471301 m!6825676))

(declare-fun m!6825678 () Bool)

(assert (=> bm!471302 m!6825678))

(assert (=> d!1860071 d!1860387))

(assert (=> d!1860071 d!1860011))

(assert (=> d!1860071 d!1860019))

(declare-fun d!1860389 () Bool)

(assert (=> d!1860389 (= (isUnion!845 lt!2310915) ((_ is Union!15979) lt!2310915))))

(assert (=> b!5933180 d!1860389))

(declare-fun d!1860391 () Bool)

(assert (=> d!1860391 true))

(assert (=> d!1860391 true))

(declare-fun res!2485970 () Bool)

(assert (=> d!1860391 (= (choose!44718 lambda!323504) res!2485970)))

(assert (=> d!1860059 d!1860391))

(declare-fun d!1860393 () Bool)

(declare-fun res!2485971 () Bool)

(declare-fun e!3631680 () Bool)

(assert (=> d!1860393 (=> res!2485971 e!3631680)))

(assert (=> d!1860393 (= res!2485971 ((_ is Nil!64112) (exprs!5863 lt!2310867)))))

(assert (=> d!1860393 (= (forall!15062 (exprs!5863 lt!2310867) lambda!323550) e!3631680)))

(declare-fun b!5934294 () Bool)

(declare-fun e!3631681 () Bool)

(assert (=> b!5934294 (= e!3631680 e!3631681)))

(declare-fun res!2485972 () Bool)

(assert (=> b!5934294 (=> (not res!2485972) (not e!3631681))))

(assert (=> b!5934294 (= res!2485972 (dynLambda!25074 lambda!323550 (h!70560 (exprs!5863 lt!2310867))))))

(declare-fun b!5934295 () Bool)

(assert (=> b!5934295 (= e!3631681 (forall!15062 (t!377635 (exprs!5863 lt!2310867)) lambda!323550))))

(assert (= (and d!1860393 (not res!2485971)) b!5934294))

(assert (= (and b!5934294 res!2485972) b!5934295))

(declare-fun b_lambda!222875 () Bool)

(assert (=> (not b_lambda!222875) (not b!5934294)))

(declare-fun m!6825680 () Bool)

(assert (=> b!5934294 m!6825680))

(declare-fun m!6825682 () Bool)

(assert (=> b!5934295 m!6825682))

(assert (=> d!1860029 d!1860393))

(declare-fun b!5934296 () Bool)

(declare-fun e!3631683 () Bool)

(declare-fun e!3631687 () Bool)

(assert (=> b!5934296 (= e!3631683 e!3631687)))

(declare-fun res!2485977 () Bool)

(assert (=> b!5934296 (=> res!2485977 e!3631687)))

(declare-fun call!471309 () Bool)

(assert (=> b!5934296 (= res!2485977 call!471309)))

(declare-fun b!5934297 () Bool)

(declare-fun res!2485978 () Bool)

(declare-fun e!3631682 () Bool)

(assert (=> b!5934297 (=> res!2485978 e!3631682)))

(assert (=> b!5934297 (= res!2485978 (not ((_ is ElementMatch!15979) (derivativeStep!4709 r!7292 (head!12499 s!2326)))))))

(declare-fun e!3631685 () Bool)

(assert (=> b!5934297 (= e!3631685 e!3631682)))

(declare-fun b!5934298 () Bool)

(declare-fun e!3631688 () Bool)

(assert (=> b!5934298 (= e!3631688 (= (head!12499 (tail!11584 s!2326)) (c!1054641 (derivativeStep!4709 r!7292 (head!12499 s!2326)))))))

(declare-fun b!5934300 () Bool)

(declare-fun res!2485979 () Bool)

(assert (=> b!5934300 (=> res!2485979 e!3631687)))

(assert (=> b!5934300 (= res!2485979 (not (isEmpty!35980 (tail!11584 (tail!11584 s!2326)))))))

(declare-fun b!5934301 () Bool)

(assert (=> b!5934301 (= e!3631687 (not (= (head!12499 (tail!11584 s!2326)) (c!1054641 (derivativeStep!4709 r!7292 (head!12499 s!2326))))))))

(declare-fun b!5934302 () Bool)

(declare-fun e!3631686 () Bool)

(assert (=> b!5934302 (= e!3631686 (nullable!5974 (derivativeStep!4709 r!7292 (head!12499 s!2326))))))

(declare-fun bm!471304 () Bool)

(assert (=> bm!471304 (= call!471309 (isEmpty!35980 (tail!11584 s!2326)))))

(declare-fun b!5934303 () Bool)

(declare-fun res!2485974 () Bool)

(assert (=> b!5934303 (=> res!2485974 e!3631682)))

(assert (=> b!5934303 (= res!2485974 e!3631688)))

(declare-fun res!2485973 () Bool)

(assert (=> b!5934303 (=> (not res!2485973) (not e!3631688))))

(declare-fun lt!2310993 () Bool)

(assert (=> b!5934303 (= res!2485973 lt!2310993)))

(declare-fun d!1860395 () Bool)

(declare-fun e!3631684 () Bool)

(assert (=> d!1860395 e!3631684))

(declare-fun c!1055004 () Bool)

(assert (=> d!1860395 (= c!1055004 ((_ is EmptyExpr!15979) (derivativeStep!4709 r!7292 (head!12499 s!2326))))))

(assert (=> d!1860395 (= lt!2310993 e!3631686)))

(declare-fun c!1055006 () Bool)

(assert (=> d!1860395 (= c!1055006 (isEmpty!35980 (tail!11584 s!2326)))))

(assert (=> d!1860395 (validRegex!7715 (derivativeStep!4709 r!7292 (head!12499 s!2326)))))

(assert (=> d!1860395 (= (matchR!8162 (derivativeStep!4709 r!7292 (head!12499 s!2326)) (tail!11584 s!2326)) lt!2310993)))

(declare-fun b!5934299 () Bool)

(assert (=> b!5934299 (= e!3631684 (= lt!2310993 call!471309))))

(declare-fun b!5934304 () Bool)

(assert (=> b!5934304 (= e!3631686 (matchR!8162 (derivativeStep!4709 (derivativeStep!4709 r!7292 (head!12499 s!2326)) (head!12499 (tail!11584 s!2326))) (tail!11584 (tail!11584 s!2326))))))

(declare-fun b!5934305 () Bool)

(declare-fun res!2485976 () Bool)

(assert (=> b!5934305 (=> (not res!2485976) (not e!3631688))))

(assert (=> b!5934305 (= res!2485976 (not call!471309))))

(declare-fun b!5934306 () Bool)

(assert (=> b!5934306 (= e!3631682 e!3631683)))

(declare-fun res!2485980 () Bool)

(assert (=> b!5934306 (=> (not res!2485980) (not e!3631683))))

(assert (=> b!5934306 (= res!2485980 (not lt!2310993))))

(declare-fun b!5934307 () Bool)

(assert (=> b!5934307 (= e!3631685 (not lt!2310993))))

(declare-fun b!5934308 () Bool)

(declare-fun res!2485975 () Bool)

(assert (=> b!5934308 (=> (not res!2485975) (not e!3631688))))

(assert (=> b!5934308 (= res!2485975 (isEmpty!35980 (tail!11584 (tail!11584 s!2326))))))

(declare-fun b!5934309 () Bool)

(assert (=> b!5934309 (= e!3631684 e!3631685)))

(declare-fun c!1055005 () Bool)

(assert (=> b!5934309 (= c!1055005 ((_ is EmptyLang!15979) (derivativeStep!4709 r!7292 (head!12499 s!2326))))))

(assert (= (and d!1860395 c!1055006) b!5934302))

(assert (= (and d!1860395 (not c!1055006)) b!5934304))

(assert (= (and d!1860395 c!1055004) b!5934299))

(assert (= (and d!1860395 (not c!1055004)) b!5934309))

(assert (= (and b!5934309 c!1055005) b!5934307))

(assert (= (and b!5934309 (not c!1055005)) b!5934297))

(assert (= (and b!5934297 (not res!2485978)) b!5934303))

(assert (= (and b!5934303 res!2485973) b!5934305))

(assert (= (and b!5934305 res!2485976) b!5934308))

(assert (= (and b!5934308 res!2485975) b!5934298))

(assert (= (and b!5934303 (not res!2485974)) b!5934306))

(assert (= (and b!5934306 res!2485980) b!5934296))

(assert (= (and b!5934296 (not res!2485977)) b!5934300))

(assert (= (and b!5934300 (not res!2485979)) b!5934301))

(assert (= (or b!5934299 b!5934296 b!5934305) bm!471304))

(assert (=> b!5934300 m!6824752))

(declare-fun m!6825684 () Bool)

(assert (=> b!5934300 m!6825684))

(assert (=> b!5934300 m!6825684))

(declare-fun m!6825686 () Bool)

(assert (=> b!5934300 m!6825686))

(assert (=> b!5934308 m!6824752))

(assert (=> b!5934308 m!6825684))

(assert (=> b!5934308 m!6825684))

(assert (=> b!5934308 m!6825686))

(assert (=> b!5934298 m!6824752))

(declare-fun m!6825688 () Bool)

(assert (=> b!5934298 m!6825688))

(assert (=> b!5934304 m!6824752))

(assert (=> b!5934304 m!6825688))

(assert (=> b!5934304 m!6824758))

(assert (=> b!5934304 m!6825688))

(declare-fun m!6825690 () Bool)

(assert (=> b!5934304 m!6825690))

(assert (=> b!5934304 m!6824752))

(assert (=> b!5934304 m!6825684))

(assert (=> b!5934304 m!6825690))

(assert (=> b!5934304 m!6825684))

(declare-fun m!6825692 () Bool)

(assert (=> b!5934304 m!6825692))

(assert (=> b!5934301 m!6824752))

(assert (=> b!5934301 m!6825688))

(assert (=> b!5934302 m!6824758))

(declare-fun m!6825694 () Bool)

(assert (=> b!5934302 m!6825694))

(assert (=> bm!471304 m!6824752))

(assert (=> bm!471304 m!6824754))

(assert (=> d!1860395 m!6824752))

(assert (=> d!1860395 m!6824754))

(assert (=> d!1860395 m!6824758))

(declare-fun m!6825696 () Bool)

(assert (=> d!1860395 m!6825696))

(assert (=> b!5933094 d!1860395))

(declare-fun call!471320 () Regex!15979)

(declare-fun bm!471313 () Bool)

(declare-fun c!1055019 () Bool)

(assert (=> bm!471313 (= call!471320 (derivativeStep!4709 (ite c!1055019 (regTwo!32471 r!7292) (regOne!32470 r!7292)) (head!12499 s!2326)))))

(declare-fun b!5934330 () Bool)

(declare-fun e!3631703 () Regex!15979)

(declare-fun call!471319 () Regex!15979)

(assert (=> b!5934330 (= e!3631703 (Concat!24824 call!471319 r!7292))))

(declare-fun b!5934331 () Bool)

(declare-fun c!1055018 () Bool)

(assert (=> b!5934331 (= c!1055018 (nullable!5974 (regOne!32470 r!7292)))))

(declare-fun e!3631699 () Regex!15979)

(assert (=> b!5934331 (= e!3631703 e!3631699)))

(declare-fun b!5934332 () Bool)

(assert (=> b!5934332 (= c!1055019 ((_ is Union!15979) r!7292))))

(declare-fun e!3631701 () Regex!15979)

(declare-fun e!3631702 () Regex!15979)

(assert (=> b!5934332 (= e!3631701 e!3631702)))

(declare-fun b!5934333 () Bool)

(declare-fun call!471321 () Regex!15979)

(assert (=> b!5934333 (= e!3631699 (Union!15979 (Concat!24824 call!471321 (regTwo!32470 r!7292)) EmptyLang!15979))))

(declare-fun bm!471314 () Bool)

(declare-fun call!471318 () Regex!15979)

(assert (=> bm!471314 (= call!471319 call!471318)))

(declare-fun d!1860397 () Bool)

(declare-fun lt!2310996 () Regex!15979)

(assert (=> d!1860397 (validRegex!7715 lt!2310996)))

(declare-fun e!3631700 () Regex!15979)

(assert (=> d!1860397 (= lt!2310996 e!3631700)))

(declare-fun c!1055021 () Bool)

(assert (=> d!1860397 (= c!1055021 (or ((_ is EmptyExpr!15979) r!7292) ((_ is EmptyLang!15979) r!7292)))))

(assert (=> d!1860397 (validRegex!7715 r!7292)))

(assert (=> d!1860397 (= (derivativeStep!4709 r!7292 (head!12499 s!2326)) lt!2310996)))

(declare-fun b!5934334 () Bool)

(assert (=> b!5934334 (= e!3631702 (Union!15979 call!471318 call!471320))))

(declare-fun b!5934335 () Bool)

(assert (=> b!5934335 (= e!3631699 (Union!15979 (Concat!24824 call!471320 (regTwo!32470 r!7292)) call!471321))))

(declare-fun b!5934336 () Bool)

(assert (=> b!5934336 (= e!3631700 EmptyLang!15979)))

(declare-fun bm!471315 () Bool)

(assert (=> bm!471315 (= call!471321 call!471319)))

(declare-fun b!5934337 () Bool)

(assert (=> b!5934337 (= e!3631701 (ite (= (head!12499 s!2326) (c!1054641 r!7292)) EmptyExpr!15979 EmptyLang!15979))))

(declare-fun b!5934338 () Bool)

(assert (=> b!5934338 (= e!3631700 e!3631701)))

(declare-fun c!1055017 () Bool)

(assert (=> b!5934338 (= c!1055017 ((_ is ElementMatch!15979) r!7292))))

(declare-fun bm!471316 () Bool)

(declare-fun c!1055020 () Bool)

(assert (=> bm!471316 (= call!471318 (derivativeStep!4709 (ite c!1055019 (regOne!32471 r!7292) (ite c!1055020 (reg!16308 r!7292) (ite c!1055018 (regTwo!32470 r!7292) (regOne!32470 r!7292)))) (head!12499 s!2326)))))

(declare-fun b!5934339 () Bool)

(assert (=> b!5934339 (= e!3631702 e!3631703)))

(assert (=> b!5934339 (= c!1055020 ((_ is Star!15979) r!7292))))

(assert (= (and d!1860397 c!1055021) b!5934336))

(assert (= (and d!1860397 (not c!1055021)) b!5934338))

(assert (= (and b!5934338 c!1055017) b!5934337))

(assert (= (and b!5934338 (not c!1055017)) b!5934332))

(assert (= (and b!5934332 c!1055019) b!5934334))

(assert (= (and b!5934332 (not c!1055019)) b!5934339))

(assert (= (and b!5934339 c!1055020) b!5934330))

(assert (= (and b!5934339 (not c!1055020)) b!5934331))

(assert (= (and b!5934331 c!1055018) b!5934335))

(assert (= (and b!5934331 (not c!1055018)) b!5934333))

(assert (= (or b!5934335 b!5934333) bm!471315))

(assert (= (or b!5934330 bm!471315) bm!471314))

(assert (= (or b!5934334 b!5934335) bm!471313))

(assert (= (or b!5934334 bm!471314) bm!471316))

(assert (=> bm!471313 m!6824756))

(declare-fun m!6825698 () Bool)

(assert (=> bm!471313 m!6825698))

(assert (=> b!5934331 m!6824940))

(declare-fun m!6825700 () Bool)

(assert (=> d!1860397 m!6825700))

(assert (=> d!1860397 m!6824556))

(assert (=> bm!471316 m!6824756))

(declare-fun m!6825702 () Bool)

(assert (=> bm!471316 m!6825702))

(assert (=> b!5933094 d!1860397))

(assert (=> b!5933094 d!1860179))

(assert (=> b!5933094 d!1860277))

(assert (=> d!1859993 d!1860279))

(assert (=> d!1859993 d!1860069))

(assert (=> bs!1403739 d!1859979))

(declare-fun d!1860399 () Bool)

(assert (=> d!1860399 (= (isEmptyLang!1415 lt!2310915) ((_ is EmptyLang!15979) lt!2310915))))

(assert (=> b!5933177 d!1860399))

(declare-fun b!5934341 () Bool)

(declare-fun e!3631704 () Bool)

(declare-fun e!3631710 () Bool)

(assert (=> b!5934341 (= e!3631704 e!3631710)))

(declare-fun res!2485981 () Bool)

(assert (=> b!5934341 (= res!2485981 (not (nullable!5974 (reg!16308 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))))))))

(assert (=> b!5934341 (=> (not res!2485981) (not e!3631710))))

(declare-fun b!5934342 () Bool)

(declare-fun e!3631706 () Bool)

(declare-fun e!3631709 () Bool)

(assert (=> b!5934342 (= e!3631706 e!3631709)))

(declare-fun res!2485982 () Bool)

(assert (=> b!5934342 (=> (not res!2485982) (not e!3631709))))

(declare-fun call!471323 () Bool)

(assert (=> b!5934342 (= res!2485982 call!471323)))

(declare-fun bm!471317 () Bool)

(declare-fun c!1055023 () Bool)

(assert (=> bm!471317 (= call!471323 (validRegex!7715 (ite c!1055023 (regOne!32471 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))) (regOne!32470 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))))))))

(declare-fun b!5934343 () Bool)

(declare-fun e!3631707 () Bool)

(assert (=> b!5934343 (= e!3631707 e!3631704)))

(declare-fun c!1055022 () Bool)

(assert (=> b!5934343 (= c!1055022 ((_ is Star!15979) (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))))))

(declare-fun b!5934344 () Bool)

(declare-fun call!471322 () Bool)

(assert (=> b!5934344 (= e!3631709 call!471322)))

(declare-fun d!1860401 () Bool)

(declare-fun res!2485985 () Bool)

(assert (=> d!1860401 (=> res!2485985 e!3631707)))

(assert (=> d!1860401 (= res!2485985 ((_ is ElementMatch!15979) (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))))))

(assert (=> d!1860401 (= (validRegex!7715 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))) e!3631707)))

(declare-fun b!5934340 () Bool)

(declare-fun res!2485983 () Bool)

(declare-fun e!3631705 () Bool)

(assert (=> b!5934340 (=> (not res!2485983) (not e!3631705))))

(assert (=> b!5934340 (= res!2485983 call!471323)))

(declare-fun e!3631708 () Bool)

(assert (=> b!5934340 (= e!3631708 e!3631705)))

(declare-fun call!471324 () Bool)

(declare-fun bm!471318 () Bool)

(assert (=> bm!471318 (= call!471324 (validRegex!7715 (ite c!1055022 (reg!16308 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))) (ite c!1055023 (regTwo!32471 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))) (regTwo!32470 (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292))))))))))

(declare-fun b!5934345 () Bool)

(declare-fun res!2485984 () Bool)

(assert (=> b!5934345 (=> res!2485984 e!3631706)))

(assert (=> b!5934345 (= res!2485984 (not ((_ is Concat!24824) (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292))))))))

(assert (=> b!5934345 (= e!3631708 e!3631706)))

(declare-fun b!5934346 () Bool)

(assert (=> b!5934346 (= e!3631705 call!471322)))

(declare-fun bm!471319 () Bool)

(assert (=> bm!471319 (= call!471322 call!471324)))

(declare-fun b!5934347 () Bool)

(assert (=> b!5934347 (= e!3631704 e!3631708)))

(assert (=> b!5934347 (= c!1055023 ((_ is Union!15979) (ite c!1054818 (reg!16308 r!7292) (ite c!1054819 (regTwo!32471 r!7292) (regTwo!32470 r!7292)))))))

(declare-fun b!5934348 () Bool)

(assert (=> b!5934348 (= e!3631710 call!471324)))

(assert (= (and d!1860401 (not res!2485985)) b!5934343))

(assert (= (and b!5934343 c!1055022) b!5934341))

(assert (= (and b!5934343 (not c!1055022)) b!5934347))

(assert (= (and b!5934341 res!2485981) b!5934348))

(assert (= (and b!5934347 c!1055023) b!5934340))

(assert (= (and b!5934347 (not c!1055023)) b!5934345))

(assert (= (and b!5934340 res!2485983) b!5934346))

(assert (= (and b!5934345 (not res!2485984)) b!5934342))

(assert (= (and b!5934342 res!2485982) b!5934344))

(assert (= (or b!5934346 b!5934344) bm!471319))

(assert (= (or b!5934340 b!5934342) bm!471317))

(assert (= (or b!5934348 bm!471319) bm!471318))

(declare-fun m!6825704 () Bool)

(assert (=> b!5934341 m!6825704))

(declare-fun m!6825706 () Bool)

(assert (=> bm!471317 m!6825706))

(declare-fun m!6825708 () Bool)

(assert (=> bm!471318 m!6825708))

(assert (=> bm!471172 d!1860401))

(declare-fun d!1860403 () Bool)

(assert (=> d!1860403 (= (isConcat!929 lt!2310881) ((_ is Concat!24824) lt!2310881))))

(assert (=> b!5932931 d!1860403))

(declare-fun d!1860405 () Bool)

(assert (=> d!1860405 (= (isEmpty!35977 (tail!11582 (exprs!5863 (h!70561 zl!343)))) ((_ is Nil!64112) (tail!11582 (exprs!5863 (h!70561 zl!343)))))))

(assert (=> b!5932933 d!1860405))

(declare-fun d!1860407 () Bool)

(assert (=> d!1860407 (= (tail!11582 (exprs!5863 (h!70561 zl!343))) (t!377635 (exprs!5863 (h!70561 zl!343))))))

(assert (=> b!5932933 d!1860407))

(declare-fun d!1860409 () Bool)

(assert (=> d!1860409 (= (isEmpty!35977 (t!377635 (unfocusZipperList!1400 zl!343))) ((_ is Nil!64112) (t!377635 (unfocusZipperList!1400 zl!343))))))

(assert (=> b!5933179 d!1860409))

(assert (=> b!5933098 d!1860275))

(assert (=> b!5933098 d!1860277))

(declare-fun d!1860411 () Bool)

(assert (=> d!1860411 true))

(declare-fun setRes!40283 () Bool)

(assert (=> d!1860411 setRes!40283))

(declare-fun condSetEmpty!40283 () Bool)

(declare-fun res!2485986 () (InoxSet Context!10726))

(assert (=> d!1860411 (= condSetEmpty!40283 (= res!2485986 ((as const (Array Context!10726 Bool)) false)))))

(assert (=> d!1860411 (= (choose!44714 lt!2310863 lambda!323506) res!2485986)))

(declare-fun setIsEmpty!40283 () Bool)

(assert (=> setIsEmpty!40283 setRes!40283))

(declare-fun setNonEmpty!40283 () Bool)

(declare-fun setElem!40283 () Context!10726)

(declare-fun e!3631711 () Bool)

(declare-fun tp!1650939 () Bool)

(assert (=> setNonEmpty!40283 (= setRes!40283 (and tp!1650939 (inv!83194 setElem!40283) e!3631711))))

(declare-fun setRest!40283 () (InoxSet Context!10726))

(assert (=> setNonEmpty!40283 (= res!2485986 ((_ map or) (store ((as const (Array Context!10726 Bool)) false) setElem!40283 true) setRest!40283))))

(declare-fun b!5934349 () Bool)

(declare-fun tp!1650940 () Bool)

(assert (=> b!5934349 (= e!3631711 tp!1650940)))

(assert (= (and d!1860411 condSetEmpty!40283) setIsEmpty!40283))

(assert (= (and d!1860411 (not condSetEmpty!40283)) setNonEmpty!40283))

(assert (= setNonEmpty!40283 b!5934349))

(declare-fun m!6825710 () Bool)

(assert (=> setNonEmpty!40283 m!6825710))

(assert (=> d!1860025 d!1860411))

(assert (=> b!5933091 d!1860179))

(declare-fun call!471329 () (InoxSet Context!10726))

(declare-fun call!471330 () List!64236)

(declare-fun bm!471320 () Bool)

(declare-fun c!1055026 () Bool)

(assert (=> bm!471320 (= call!471329 (derivationStepZipperDown!1229 (ite c!1055026 (regTwo!32471 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))) (regOne!32470 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292)))) (ite c!1055026 (ite c!1054809 (Context!10727 Nil!64112) (Context!10727 call!471168)) (Context!10727 call!471330)) (h!70562 s!2326)))))

(declare-fun bm!471321 () Bool)

(declare-fun call!471328 () (InoxSet Context!10726))

(declare-fun call!471326 () (InoxSet Context!10726))

(assert (=> bm!471321 (= call!471328 call!471326)))

(declare-fun call!471327 () List!64236)

(declare-fun bm!471322 () Bool)

(declare-fun c!1055027 () Bool)

(declare-fun c!1055025 () Bool)

(assert (=> bm!471322 (= call!471326 (derivationStepZipperDown!1229 (ite c!1055026 (regOne!32471 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))) (ite c!1055027 (regTwo!32470 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))) (ite c!1055025 (regOne!32470 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))) (reg!16308 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292)))))) (ite (or c!1055026 c!1055027) (ite c!1054809 (Context!10727 Nil!64112) (Context!10727 call!471168)) (Context!10727 call!471327)) (h!70562 s!2326)))))

(declare-fun b!5934350 () Bool)

(declare-fun e!3631717 () Bool)

(assert (=> b!5934350 (= c!1055027 e!3631717)))

(declare-fun res!2485987 () Bool)

(assert (=> b!5934350 (=> (not res!2485987) (not e!3631717))))

(assert (=> b!5934350 (= res!2485987 ((_ is Concat!24824) (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))))))

(declare-fun e!3631715 () (InoxSet Context!10726))

(declare-fun e!3631714 () (InoxSet Context!10726))

(assert (=> b!5934350 (= e!3631715 e!3631714)))

(declare-fun b!5934351 () Bool)

(declare-fun e!3631712 () (InoxSet Context!10726))

(assert (=> b!5934351 (= e!3631712 (store ((as const (Array Context!10726 Bool)) false) (ite c!1054809 (Context!10727 Nil!64112) (Context!10727 call!471168)) true))))

(declare-fun bm!471323 () Bool)

(assert (=> bm!471323 (= call!471330 ($colon$colon!1866 (exprs!5863 (ite c!1054809 (Context!10727 Nil!64112) (Context!10727 call!471168))) (ite (or c!1055027 c!1055025) (regTwo!32470 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))) (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292)))))))

(declare-fun bm!471324 () Bool)

(declare-fun call!471325 () (InoxSet Context!10726))

(assert (=> bm!471324 (= call!471325 call!471328)))

(declare-fun b!5934352 () Bool)

(assert (=> b!5934352 (= e!3631717 (nullable!5974 (regOne!32470 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292)))))))

(declare-fun b!5934353 () Bool)

(assert (=> b!5934353 (= e!3631715 ((_ map or) call!471326 call!471329))))

(declare-fun b!5934354 () Bool)

(declare-fun e!3631713 () (InoxSet Context!10726))

(assert (=> b!5934354 (= e!3631713 call!471325)))

(declare-fun b!5934355 () Bool)

(assert (=> b!5934355 (= e!3631713 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5934356 () Bool)

(declare-fun e!3631716 () (InoxSet Context!10726))

(assert (=> b!5934356 (= e!3631714 e!3631716)))

(assert (=> b!5934356 (= c!1055025 ((_ is Concat!24824) (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))))))

(declare-fun b!5934357 () Bool)

(assert (=> b!5934357 (= e!3631714 ((_ map or) call!471329 call!471328))))

(declare-fun b!5934358 () Bool)

(assert (=> b!5934358 (= e!3631716 call!471325)))

(declare-fun b!5934359 () Bool)

(declare-fun c!1055024 () Bool)

(assert (=> b!5934359 (= c!1055024 ((_ is Star!15979) (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))))))

(assert (=> b!5934359 (= e!3631716 e!3631713)))

(declare-fun b!5934360 () Bool)

(assert (=> b!5934360 (= e!3631712 e!3631715)))

(assert (=> b!5934360 (= c!1055026 ((_ is Union!15979) (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))))))

(declare-fun d!1860413 () Bool)

(declare-fun c!1055028 () Bool)

(assert (=> d!1860413 (= c!1055028 (and ((_ is ElementMatch!15979) (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))) (= (c!1054641 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292))) (h!70562 s!2326))))))

(assert (=> d!1860413 (= (derivationStepZipperDown!1229 (ite c!1054809 (regTwo!32471 r!7292) (regOne!32470 r!7292)) (ite c!1054809 (Context!10727 Nil!64112) (Context!10727 call!471168)) (h!70562 s!2326)) e!3631712)))

(declare-fun bm!471325 () Bool)

(assert (=> bm!471325 (= call!471327 call!471330)))

(assert (= (and d!1860413 c!1055028) b!5934351))

(assert (= (and d!1860413 (not c!1055028)) b!5934360))

(assert (= (and b!5934360 c!1055026) b!5934353))

(assert (= (and b!5934360 (not c!1055026)) b!5934350))

(assert (= (and b!5934350 res!2485987) b!5934352))

(assert (= (and b!5934350 c!1055027) b!5934357))

(assert (= (and b!5934350 (not c!1055027)) b!5934356))

(assert (= (and b!5934356 c!1055025) b!5934358))

(assert (= (and b!5934356 (not c!1055025)) b!5934359))

(assert (= (and b!5934359 c!1055024) b!5934354))

(assert (= (and b!5934359 (not c!1055024)) b!5934355))

(assert (= (or b!5934358 b!5934354) bm!471325))

(assert (= (or b!5934358 b!5934354) bm!471324))

(assert (= (or b!5934357 bm!471325) bm!471323))

(assert (= (or b!5934357 bm!471324) bm!471321))

(assert (= (or b!5934353 b!5934357) bm!471320))

(assert (= (or b!5934353 bm!471321) bm!471322))

(declare-fun m!6825712 () Bool)

(assert (=> b!5934351 m!6825712))

(declare-fun m!6825714 () Bool)

(assert (=> bm!471322 m!6825714))

(declare-fun m!6825716 () Bool)

(assert (=> b!5934352 m!6825716))

(declare-fun m!6825718 () Bool)

(assert (=> bm!471320 m!6825718))

(declare-fun m!6825720 () Bool)

(assert (=> bm!471323 m!6825720))

(assert (=> bm!471158 d!1860413))

(declare-fun d!1860415 () Bool)

(declare-fun res!2485992 () Bool)

(declare-fun e!3631722 () Bool)

(assert (=> d!1860415 (=> res!2485992 e!3631722)))

(assert (=> d!1860415 (= res!2485992 ((_ is Nil!64113) lt!2310949))))

(assert (=> d!1860415 (= (noDuplicate!1837 lt!2310949) e!3631722)))

(declare-fun b!5934365 () Bool)

(declare-fun e!3631723 () Bool)

(assert (=> b!5934365 (= e!3631722 e!3631723)))

(declare-fun res!2485993 () Bool)

(assert (=> b!5934365 (=> (not res!2485993) (not e!3631723))))

(declare-fun contains!19965 (List!64237 Context!10726) Bool)

(assert (=> b!5934365 (= res!2485993 (not (contains!19965 (t!377636 lt!2310949) (h!70561 lt!2310949))))))

(declare-fun b!5934366 () Bool)

(assert (=> b!5934366 (= e!3631723 (noDuplicate!1837 (t!377636 lt!2310949)))))

(assert (= (and d!1860415 (not res!2485992)) b!5934365))

(assert (= (and b!5934365 res!2485993) b!5934366))

(declare-fun m!6825722 () Bool)

(assert (=> b!5934365 m!6825722))

(declare-fun m!6825724 () Bool)

(assert (=> b!5934366 m!6825724))

(assert (=> d!1860063 d!1860415))

(declare-fun d!1860417 () Bool)

(declare-fun e!3631731 () Bool)

(assert (=> d!1860417 e!3631731))

(declare-fun res!2485999 () Bool)

(assert (=> d!1860417 (=> (not res!2485999) (not e!3631731))))

(declare-fun res!2485998 () List!64237)

(assert (=> d!1860417 (= res!2485999 (noDuplicate!1837 res!2485998))))

(declare-fun e!3631730 () Bool)

(assert (=> d!1860417 e!3631730))

(assert (=> d!1860417 (= (choose!44721 z!1189) res!2485998)))

(declare-fun b!5934374 () Bool)

(declare-fun e!3631732 () Bool)

(declare-fun tp!1650946 () Bool)

(assert (=> b!5934374 (= e!3631732 tp!1650946)))

(declare-fun b!5934373 () Bool)

(declare-fun tp!1650945 () Bool)

(assert (=> b!5934373 (= e!3631730 (and (inv!83194 (h!70561 res!2485998)) e!3631732 tp!1650945))))

(declare-fun b!5934375 () Bool)

(assert (=> b!5934375 (= e!3631731 (= (content!11816 res!2485998) z!1189))))

(assert (= b!5934373 b!5934374))

(assert (= (and d!1860417 ((_ is Cons!64113) res!2485998)) b!5934373))

(assert (= (and d!1860417 res!2485999) b!5934375))

(declare-fun m!6825726 () Bool)

(assert (=> d!1860417 m!6825726))

(declare-fun m!6825728 () Bool)

(assert (=> b!5934373 m!6825728))

(declare-fun m!6825730 () Bool)

(assert (=> b!5934375 m!6825730))

(assert (=> d!1860063 d!1860417))

(declare-fun d!1860419 () Bool)

(assert (=> d!1860419 (= (isEmpty!35982 (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326)) (not ((_ is Some!15869) (findConcatSeparation!2284 (regOne!32470 r!7292) (regTwo!32470 r!7292) Nil!64114 s!2326 s!2326))))))

(assert (=> d!1860051 d!1860419))

(declare-fun c!1055031 () Bool)

(declare-fun bm!471326 () Bool)

(declare-fun call!471336 () List!64236)

(declare-fun call!471335 () (InoxSet Context!10726))

(assert (=> bm!471326 (= call!471335 (derivationStepZipperDown!1229 (ite c!1055031 (regTwo!32471 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))) (regOne!32470 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292)))))) (ite c!1055031 (ite (or c!1054809 c!1054810) (Context!10727 Nil!64112) (Context!10727 call!471165)) (Context!10727 call!471336)) (h!70562 s!2326)))))

(declare-fun bm!471327 () Bool)

(declare-fun call!471334 () (InoxSet Context!10726))

(declare-fun call!471332 () (InoxSet Context!10726))

(assert (=> bm!471327 (= call!471334 call!471332)))

(declare-fun call!471333 () List!64236)

(declare-fun c!1055032 () Bool)

(declare-fun c!1055030 () Bool)

(declare-fun bm!471328 () Bool)

(assert (=> bm!471328 (= call!471332 (derivationStepZipperDown!1229 (ite c!1055031 (regOne!32471 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))) (ite c!1055032 (regTwo!32470 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))) (ite c!1055030 (regOne!32470 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))) (reg!16308 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292)))))))) (ite (or c!1055031 c!1055032) (ite (or c!1054809 c!1054810) (Context!10727 Nil!64112) (Context!10727 call!471165)) (Context!10727 call!471333)) (h!70562 s!2326)))))

(declare-fun b!5934376 () Bool)

(declare-fun e!3631738 () Bool)

(assert (=> b!5934376 (= c!1055032 e!3631738)))

(declare-fun res!2486000 () Bool)

(assert (=> b!5934376 (=> (not res!2486000) (not e!3631738))))

(assert (=> b!5934376 (= res!2486000 ((_ is Concat!24824) (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))))))

(declare-fun e!3631736 () (InoxSet Context!10726))

(declare-fun e!3631735 () (InoxSet Context!10726))

(assert (=> b!5934376 (= e!3631736 e!3631735)))

(declare-fun b!5934377 () Bool)

(declare-fun e!3631733 () (InoxSet Context!10726))

(assert (=> b!5934377 (= e!3631733 (store ((as const (Array Context!10726 Bool)) false) (ite (or c!1054809 c!1054810) (Context!10727 Nil!64112) (Context!10727 call!471165)) true))))

(declare-fun bm!471329 () Bool)

(assert (=> bm!471329 (= call!471336 ($colon$colon!1866 (exprs!5863 (ite (or c!1054809 c!1054810) (Context!10727 Nil!64112) (Context!10727 call!471165))) (ite (or c!1055032 c!1055030) (regTwo!32470 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))) (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292)))))))))

(declare-fun bm!471330 () Bool)

(declare-fun call!471331 () (InoxSet Context!10726))

(assert (=> bm!471330 (= call!471331 call!471334)))

(declare-fun b!5934378 () Bool)

(assert (=> b!5934378 (= e!3631738 (nullable!5974 (regOne!32470 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292)))))))))

(declare-fun b!5934379 () Bool)

(assert (=> b!5934379 (= e!3631736 ((_ map or) call!471332 call!471335))))

(declare-fun b!5934380 () Bool)

(declare-fun e!3631734 () (InoxSet Context!10726))

(assert (=> b!5934380 (= e!3631734 call!471331)))

(declare-fun b!5934381 () Bool)

(assert (=> b!5934381 (= e!3631734 ((as const (Array Context!10726 Bool)) false))))

(declare-fun b!5934382 () Bool)

(declare-fun e!3631737 () (InoxSet Context!10726))

(assert (=> b!5934382 (= e!3631735 e!3631737)))

(assert (=> b!5934382 (= c!1055030 ((_ is Concat!24824) (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))))))

(declare-fun b!5934383 () Bool)

(assert (=> b!5934383 (= e!3631735 ((_ map or) call!471335 call!471334))))

(declare-fun b!5934384 () Bool)

(assert (=> b!5934384 (= e!3631737 call!471331)))

(declare-fun c!1055029 () Bool)

(declare-fun b!5934385 () Bool)

(assert (=> b!5934385 (= c!1055029 ((_ is Star!15979) (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))))))

(assert (=> b!5934385 (= e!3631737 e!3631734)))

(declare-fun b!5934386 () Bool)

(assert (=> b!5934386 (= e!3631733 e!3631736)))

(assert (=> b!5934386 (= c!1055031 ((_ is Union!15979) (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))))))

(declare-fun c!1055033 () Bool)

(declare-fun d!1860421 () Bool)

(assert (=> d!1860421 (= c!1055033 (and ((_ is ElementMatch!15979) (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))) (= (c!1054641 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292))))) (h!70562 s!2326))))))

(assert (=> d!1860421 (= (derivationStepZipperDown!1229 (ite c!1054809 (regOne!32471 r!7292) (ite c!1054810 (regTwo!32470 r!7292) (ite c!1054808 (regOne!32470 r!7292) (reg!16308 r!7292)))) (ite (or c!1054809 c!1054810) (Context!10727 Nil!64112) (Context!10727 call!471165)) (h!70562 s!2326)) e!3631733)))

(declare-fun bm!471331 () Bool)

(assert (=> bm!471331 (= call!471333 call!471336)))

(assert (= (and d!1860421 c!1055033) b!5934377))

(assert (= (and d!1860421 (not c!1055033)) b!5934386))

(assert (= (and b!5934386 c!1055031) b!5934379))

(assert (= (and b!5934386 (not c!1055031)) b!5934376))

(assert (= (and b!5934376 res!2486000) b!5934378))

(assert (= (and b!5934376 c!1055032) b!5934383))

(assert (= (and b!5934376 (not c!1055032)) b!5934382))

(assert (= (and b!5934382 c!1055030) b!5934384))

(assert (= (and b!5934382 (not c!1055030)) b!5934385))

(assert (= (and b!5934385 c!1055029) b!5934380))

(assert (= (and b!5934385 (not c!1055029)) b!5934381))

(assert (= (or b!5934384 b!5934380) bm!471331))

(assert (= (or b!5934384 b!5934380) bm!471330))

(assert (= (or b!5934383 bm!471331) bm!471329))

(assert (= (or b!5934383 bm!471330) bm!471327))

(assert (= (or b!5934379 b!5934383) bm!471326))

(assert (= (or b!5934379 bm!471327) bm!471328))

(declare-fun m!6825732 () Bool)

(assert (=> b!5934377 m!6825732))

(declare-fun m!6825734 () Bool)

(assert (=> bm!471328 m!6825734))

(declare-fun m!6825736 () Bool)

(assert (=> b!5934378 m!6825736))

(declare-fun m!6825738 () Bool)

(assert (=> bm!471326 m!6825738))

(declare-fun m!6825740 () Bool)

(assert (=> bm!471329 m!6825740))

(assert (=> bm!471160 d!1860421))

(assert (=> b!5932927 d!1859965))

(assert (=> d!1860009 d!1859993))

(assert (=> d!1860009 d!1859983))

(declare-fun d!1860423 () Bool)

(assert (=> d!1860423 (= (matchR!8162 r!7292 s!2326) (matchRSpec!3080 r!7292 s!2326))))

(assert (=> d!1860423 true))

(declare-fun _$88!4428 () Unit!157229)

(assert (=> d!1860423 (= (choose!44716 r!7292 s!2326) _$88!4428)))

(declare-fun bs!1403955 () Bool)

(assert (= bs!1403955 d!1860423))

(assert (=> bs!1403955 m!6824548))

(assert (=> bs!1403955 m!6824546))

(assert (=> d!1860009 d!1860423))

(assert (=> d!1860009 d!1860069))

(declare-fun d!1860425 () Bool)

(assert (=> d!1860425 (= (nullable!5974 (h!70560 (exprs!5863 lt!2310868))) (nullableFct!1946 (h!70560 (exprs!5863 lt!2310868))))))

(declare-fun bs!1403956 () Bool)

(assert (= bs!1403956 d!1860425))

(declare-fun m!6825742 () Bool)

(assert (=> bs!1403956 m!6825742))

(assert (=> b!5933225 d!1860425))

(assert (=> bm!471125 d!1860279))

(declare-fun d!1860427 () Bool)

(assert (=> d!1860427 (= (nullable!5974 (h!70560 (exprs!5863 lt!2310867))) (nullableFct!1946 (h!70560 (exprs!5863 lt!2310867))))))

(declare-fun bs!1403957 () Bool)

(assert (= bs!1403957 d!1860427))

(declare-fun m!6825744 () Bool)

(assert (=> bs!1403957 m!6825744))

(assert (=> b!5933230 d!1860427))

(declare-fun b!5934387 () Bool)

(declare-fun e!3631739 () Bool)

(declare-fun tp!1650947 () Bool)

(declare-fun tp!1650948 () Bool)

(assert (=> b!5934387 (= e!3631739 (and tp!1650947 tp!1650948))))

(assert (=> b!5933538 (= tp!1650770 e!3631739)))

(assert (= (and b!5933538 ((_ is Cons!64112) (exprs!5863 setElem!40274))) b!5934387))

(declare-fun b!5934388 () Bool)

(declare-fun e!3631740 () Bool)

(assert (=> b!5934388 (= e!3631740 tp_is_empty!41211)))

(declare-fun b!5934391 () Bool)

(declare-fun tp!1650949 () Bool)

(declare-fun tp!1650953 () Bool)

(assert (=> b!5934391 (= e!3631740 (and tp!1650949 tp!1650953))))

(declare-fun b!5934390 () Bool)

(declare-fun tp!1650952 () Bool)

(assert (=> b!5934390 (= e!3631740 tp!1650952)))

(assert (=> b!5933531 (= tp!1650761 e!3631740)))

(declare-fun b!5934389 () Bool)

(declare-fun tp!1650950 () Bool)

(declare-fun tp!1650951 () Bool)

(assert (=> b!5934389 (= e!3631740 (and tp!1650950 tp!1650951))))

(assert (= (and b!5933531 ((_ is ElementMatch!15979) (regOne!32470 (regTwo!32470 r!7292)))) b!5934388))

(assert (= (and b!5933531 ((_ is Concat!24824) (regOne!32470 (regTwo!32470 r!7292)))) b!5934389))

(assert (= (and b!5933531 ((_ is Star!15979) (regOne!32470 (regTwo!32470 r!7292)))) b!5934390))

(assert (= (and b!5933531 ((_ is Union!15979) (regOne!32470 (regTwo!32470 r!7292)))) b!5934391))

(declare-fun b!5934392 () Bool)

(declare-fun e!3631741 () Bool)

(assert (=> b!5934392 (= e!3631741 tp_is_empty!41211)))

(declare-fun b!5934395 () Bool)

(declare-fun tp!1650954 () Bool)

(declare-fun tp!1650958 () Bool)

(assert (=> b!5934395 (= e!3631741 (and tp!1650954 tp!1650958))))

(declare-fun b!5934394 () Bool)

(declare-fun tp!1650957 () Bool)

(assert (=> b!5934394 (= e!3631741 tp!1650957)))

(assert (=> b!5933531 (= tp!1650762 e!3631741)))

(declare-fun b!5934393 () Bool)

(declare-fun tp!1650955 () Bool)

(declare-fun tp!1650956 () Bool)

(assert (=> b!5934393 (= e!3631741 (and tp!1650955 tp!1650956))))

(assert (= (and b!5933531 ((_ is ElementMatch!15979) (regTwo!32470 (regTwo!32470 r!7292)))) b!5934392))

(assert (= (and b!5933531 ((_ is Concat!24824) (regTwo!32470 (regTwo!32470 r!7292)))) b!5934393))

(assert (= (and b!5933531 ((_ is Star!15979) (regTwo!32470 (regTwo!32470 r!7292)))) b!5934394))

(assert (= (and b!5933531 ((_ is Union!15979) (regTwo!32470 (regTwo!32470 r!7292)))) b!5934395))

(declare-fun b!5934396 () Bool)

(declare-fun e!3631742 () Bool)

(assert (=> b!5934396 (= e!3631742 tp_is_empty!41211)))

(declare-fun b!5934399 () Bool)

(declare-fun tp!1650959 () Bool)

(declare-fun tp!1650963 () Bool)

(assert (=> b!5934399 (= e!3631742 (and tp!1650959 tp!1650963))))

(declare-fun b!5934398 () Bool)

(declare-fun tp!1650962 () Bool)

(assert (=> b!5934398 (= e!3631742 tp!1650962)))

(assert (=> b!5933527 (= tp!1650756 e!3631742)))

(declare-fun b!5934397 () Bool)

(declare-fun tp!1650960 () Bool)

(declare-fun tp!1650961 () Bool)

(assert (=> b!5934397 (= e!3631742 (and tp!1650960 tp!1650961))))

(assert (= (and b!5933527 ((_ is ElementMatch!15979) (regOne!32470 (regOne!32470 r!7292)))) b!5934396))

(assert (= (and b!5933527 ((_ is Concat!24824) (regOne!32470 (regOne!32470 r!7292)))) b!5934397))

(assert (= (and b!5933527 ((_ is Star!15979) (regOne!32470 (regOne!32470 r!7292)))) b!5934398))

(assert (= (and b!5933527 ((_ is Union!15979) (regOne!32470 (regOne!32470 r!7292)))) b!5934399))

(declare-fun b!5934400 () Bool)

(declare-fun e!3631743 () Bool)

(assert (=> b!5934400 (= e!3631743 tp_is_empty!41211)))

(declare-fun b!5934403 () Bool)

(declare-fun tp!1650964 () Bool)

(declare-fun tp!1650968 () Bool)

(assert (=> b!5934403 (= e!3631743 (and tp!1650964 tp!1650968))))

(declare-fun b!5934402 () Bool)

(declare-fun tp!1650967 () Bool)

(assert (=> b!5934402 (= e!3631743 tp!1650967)))

(assert (=> b!5933527 (= tp!1650757 e!3631743)))

(declare-fun b!5934401 () Bool)

(declare-fun tp!1650965 () Bool)

(declare-fun tp!1650966 () Bool)

(assert (=> b!5934401 (= e!3631743 (and tp!1650965 tp!1650966))))

(assert (= (and b!5933527 ((_ is ElementMatch!15979) (regTwo!32470 (regOne!32470 r!7292)))) b!5934400))

(assert (= (and b!5933527 ((_ is Concat!24824) (regTwo!32470 (regOne!32470 r!7292)))) b!5934401))

(assert (= (and b!5933527 ((_ is Star!15979) (regTwo!32470 (regOne!32470 r!7292)))) b!5934402))

(assert (= (and b!5933527 ((_ is Union!15979) (regTwo!32470 (regOne!32470 r!7292)))) b!5934403))

(declare-fun b!5934404 () Bool)

(declare-fun e!3631744 () Bool)

(declare-fun tp!1650969 () Bool)

(declare-fun tp!1650970 () Bool)

(assert (=> b!5934404 (= e!3631744 (and tp!1650969 tp!1650970))))

(assert (=> b!5933492 (= tp!1650717 e!3631744)))

(assert (= (and b!5933492 ((_ is Cons!64112) (exprs!5863 (h!70561 (t!377636 zl!343))))) b!5934404))

(declare-fun b!5934405 () Bool)

(declare-fun e!3631745 () Bool)

(assert (=> b!5934405 (= e!3631745 tp_is_empty!41211)))

(declare-fun b!5934408 () Bool)

(declare-fun tp!1650971 () Bool)

(declare-fun tp!1650975 () Bool)

(assert (=> b!5934408 (= e!3631745 (and tp!1650971 tp!1650975))))

(declare-fun b!5934407 () Bool)

(declare-fun tp!1650974 () Bool)

(assert (=> b!5934407 (= e!3631745 tp!1650974)))

(assert (=> b!5933528 (= tp!1650758 e!3631745)))

(declare-fun b!5934406 () Bool)

(declare-fun tp!1650972 () Bool)

(declare-fun tp!1650973 () Bool)

(assert (=> b!5934406 (= e!3631745 (and tp!1650972 tp!1650973))))

(assert (= (and b!5933528 ((_ is ElementMatch!15979) (reg!16308 (regOne!32470 r!7292)))) b!5934405))

(assert (= (and b!5933528 ((_ is Concat!24824) (reg!16308 (regOne!32470 r!7292)))) b!5934406))

(assert (= (and b!5933528 ((_ is Star!15979) (reg!16308 (regOne!32470 r!7292)))) b!5934407))

(assert (= (and b!5933528 ((_ is Union!15979) (reg!16308 (regOne!32470 r!7292)))) b!5934408))

(declare-fun b!5934409 () Bool)

(declare-fun e!3631746 () Bool)

(assert (=> b!5934409 (= e!3631746 tp_is_empty!41211)))

(declare-fun b!5934412 () Bool)

(declare-fun tp!1650976 () Bool)

(declare-fun tp!1650980 () Bool)

(assert (=> b!5934412 (= e!3631746 (and tp!1650976 tp!1650980))))

(declare-fun b!5934411 () Bool)

(declare-fun tp!1650979 () Bool)

(assert (=> b!5934411 (= e!3631746 tp!1650979)))

(assert (=> b!5933519 (= tp!1650746 e!3631746)))

(declare-fun b!5934410 () Bool)

(declare-fun tp!1650977 () Bool)

(declare-fun tp!1650978 () Bool)

(assert (=> b!5934410 (= e!3631746 (and tp!1650977 tp!1650978))))

(assert (= (and b!5933519 ((_ is ElementMatch!15979) (regOne!32470 (regOne!32471 r!7292)))) b!5934409))

(assert (= (and b!5933519 ((_ is Concat!24824) (regOne!32470 (regOne!32471 r!7292)))) b!5934410))

(assert (= (and b!5933519 ((_ is Star!15979) (regOne!32470 (regOne!32471 r!7292)))) b!5934411))

(assert (= (and b!5933519 ((_ is Union!15979) (regOne!32470 (regOne!32471 r!7292)))) b!5934412))

(declare-fun b!5934413 () Bool)

(declare-fun e!3631747 () Bool)

(assert (=> b!5934413 (= e!3631747 tp_is_empty!41211)))

(declare-fun b!5934416 () Bool)

(declare-fun tp!1650981 () Bool)

(declare-fun tp!1650985 () Bool)

(assert (=> b!5934416 (= e!3631747 (and tp!1650981 tp!1650985))))

(declare-fun b!5934415 () Bool)

(declare-fun tp!1650984 () Bool)

(assert (=> b!5934415 (= e!3631747 tp!1650984)))

(assert (=> b!5933519 (= tp!1650747 e!3631747)))

(declare-fun b!5934414 () Bool)

(declare-fun tp!1650982 () Bool)

(declare-fun tp!1650983 () Bool)

(assert (=> b!5934414 (= e!3631747 (and tp!1650982 tp!1650983))))

(assert (= (and b!5933519 ((_ is ElementMatch!15979) (regTwo!32470 (regOne!32471 r!7292)))) b!5934413))

(assert (= (and b!5933519 ((_ is Concat!24824) (regTwo!32470 (regOne!32471 r!7292)))) b!5934414))

(assert (= (and b!5933519 ((_ is Star!15979) (regTwo!32470 (regOne!32471 r!7292)))) b!5934415))

(assert (= (and b!5933519 ((_ is Union!15979) (regTwo!32470 (regOne!32471 r!7292)))) b!5934416))

(declare-fun b!5934417 () Bool)

(declare-fun e!3631748 () Bool)

(assert (=> b!5934417 (= e!3631748 tp_is_empty!41211)))

(declare-fun b!5934420 () Bool)

(declare-fun tp!1650986 () Bool)

(declare-fun tp!1650990 () Bool)

(assert (=> b!5934420 (= e!3631748 (and tp!1650986 tp!1650990))))

(declare-fun b!5934419 () Bool)

(declare-fun tp!1650989 () Bool)

(assert (=> b!5934419 (= e!3631748 tp!1650989)))

(assert (=> b!5933529 (= tp!1650755 e!3631748)))

(declare-fun b!5934418 () Bool)

(declare-fun tp!1650987 () Bool)

(declare-fun tp!1650988 () Bool)

(assert (=> b!5934418 (= e!3631748 (and tp!1650987 tp!1650988))))

(assert (= (and b!5933529 ((_ is ElementMatch!15979) (regOne!32471 (regOne!32470 r!7292)))) b!5934417))

(assert (= (and b!5933529 ((_ is Concat!24824) (regOne!32471 (regOne!32470 r!7292)))) b!5934418))

(assert (= (and b!5933529 ((_ is Star!15979) (regOne!32471 (regOne!32470 r!7292)))) b!5934419))

(assert (= (and b!5933529 ((_ is Union!15979) (regOne!32471 (regOne!32470 r!7292)))) b!5934420))

(declare-fun b!5934421 () Bool)

(declare-fun e!3631749 () Bool)

(assert (=> b!5934421 (= e!3631749 tp_is_empty!41211)))

(declare-fun b!5934424 () Bool)

(declare-fun tp!1650991 () Bool)

(declare-fun tp!1650995 () Bool)

(assert (=> b!5934424 (= e!3631749 (and tp!1650991 tp!1650995))))

(declare-fun b!5934423 () Bool)

(declare-fun tp!1650994 () Bool)

(assert (=> b!5934423 (= e!3631749 tp!1650994)))

(assert (=> b!5933529 (= tp!1650759 e!3631749)))

(declare-fun b!5934422 () Bool)

(declare-fun tp!1650992 () Bool)

(declare-fun tp!1650993 () Bool)

(assert (=> b!5934422 (= e!3631749 (and tp!1650992 tp!1650993))))

(assert (= (and b!5933529 ((_ is ElementMatch!15979) (regTwo!32471 (regOne!32470 r!7292)))) b!5934421))

(assert (= (and b!5933529 ((_ is Concat!24824) (regTwo!32471 (regOne!32470 r!7292)))) b!5934422))

(assert (= (and b!5933529 ((_ is Star!15979) (regTwo!32471 (regOne!32470 r!7292)))) b!5934423))

(assert (= (and b!5933529 ((_ is Union!15979) (regTwo!32471 (regOne!32470 r!7292)))) b!5934424))

(declare-fun b!5934425 () Bool)

(declare-fun e!3631750 () Bool)

(assert (=> b!5934425 (= e!3631750 tp_is_empty!41211)))

(declare-fun b!5934428 () Bool)

(declare-fun tp!1650996 () Bool)

(declare-fun tp!1651000 () Bool)

(assert (=> b!5934428 (= e!3631750 (and tp!1650996 tp!1651000))))

(declare-fun b!5934427 () Bool)

(declare-fun tp!1650999 () Bool)

(assert (=> b!5934427 (= e!3631750 tp!1650999)))

(assert (=> b!5933520 (= tp!1650748 e!3631750)))

(declare-fun b!5934426 () Bool)

(declare-fun tp!1650997 () Bool)

(declare-fun tp!1650998 () Bool)

(assert (=> b!5934426 (= e!3631750 (and tp!1650997 tp!1650998))))

(assert (= (and b!5933520 ((_ is ElementMatch!15979) (reg!16308 (regOne!32471 r!7292)))) b!5934425))

(assert (= (and b!5933520 ((_ is Concat!24824) (reg!16308 (regOne!32471 r!7292)))) b!5934426))

(assert (= (and b!5933520 ((_ is Star!15979) (reg!16308 (regOne!32471 r!7292)))) b!5934427))

(assert (= (and b!5933520 ((_ is Union!15979) (reg!16308 (regOne!32471 r!7292)))) b!5934428))

(declare-fun b!5934429 () Bool)

(declare-fun e!3631751 () Bool)

(assert (=> b!5934429 (= e!3631751 tp_is_empty!41211)))

(declare-fun b!5934432 () Bool)

(declare-fun tp!1651001 () Bool)

(declare-fun tp!1651005 () Bool)

(assert (=> b!5934432 (= e!3631751 (and tp!1651001 tp!1651005))))

(declare-fun b!5934431 () Bool)

(declare-fun tp!1651004 () Bool)

(assert (=> b!5934431 (= e!3631751 tp!1651004)))

(assert (=> b!5933521 (= tp!1650745 e!3631751)))

(declare-fun b!5934430 () Bool)

(declare-fun tp!1651002 () Bool)

(declare-fun tp!1651003 () Bool)

(assert (=> b!5934430 (= e!3631751 (and tp!1651002 tp!1651003))))

(assert (= (and b!5933521 ((_ is ElementMatch!15979) (regOne!32471 (regOne!32471 r!7292)))) b!5934429))

(assert (= (and b!5933521 ((_ is Concat!24824) (regOne!32471 (regOne!32471 r!7292)))) b!5934430))

(assert (= (and b!5933521 ((_ is Star!15979) (regOne!32471 (regOne!32471 r!7292)))) b!5934431))

(assert (= (and b!5933521 ((_ is Union!15979) (regOne!32471 (regOne!32471 r!7292)))) b!5934432))

(declare-fun b!5934433 () Bool)

(declare-fun e!3631752 () Bool)

(assert (=> b!5934433 (= e!3631752 tp_is_empty!41211)))

(declare-fun b!5934436 () Bool)

(declare-fun tp!1651006 () Bool)

(declare-fun tp!1651010 () Bool)

(assert (=> b!5934436 (= e!3631752 (and tp!1651006 tp!1651010))))

(declare-fun b!5934435 () Bool)

(declare-fun tp!1651009 () Bool)

(assert (=> b!5934435 (= e!3631752 tp!1651009)))

(assert (=> b!5933521 (= tp!1650749 e!3631752)))

(declare-fun b!5934434 () Bool)

(declare-fun tp!1651007 () Bool)

(declare-fun tp!1651008 () Bool)

(assert (=> b!5934434 (= e!3631752 (and tp!1651007 tp!1651008))))

(assert (= (and b!5933521 ((_ is ElementMatch!15979) (regTwo!32471 (regOne!32471 r!7292)))) b!5934433))

(assert (= (and b!5933521 ((_ is Concat!24824) (regTwo!32471 (regOne!32471 r!7292)))) b!5934434))

(assert (= (and b!5933521 ((_ is Star!15979) (regTwo!32471 (regOne!32471 r!7292)))) b!5934435))

(assert (= (and b!5933521 ((_ is Union!15979) (regTwo!32471 (regOne!32471 r!7292)))) b!5934436))

(declare-fun condSetEmpty!40284 () Bool)

(assert (=> setNonEmpty!40274 (= condSetEmpty!40284 (= setRest!40274 ((as const (Array Context!10726 Bool)) false)))))

(declare-fun setRes!40284 () Bool)

(assert (=> setNonEmpty!40274 (= tp!1650769 setRes!40284)))

(declare-fun setIsEmpty!40284 () Bool)

(assert (=> setIsEmpty!40284 setRes!40284))

(declare-fun setElem!40284 () Context!10726)

(declare-fun e!3631753 () Bool)

(declare-fun tp!1651011 () Bool)

(declare-fun setNonEmpty!40284 () Bool)

(assert (=> setNonEmpty!40284 (= setRes!40284 (and tp!1651011 (inv!83194 setElem!40284) e!3631753))))

(declare-fun setRest!40284 () (InoxSet Context!10726))

(assert (=> setNonEmpty!40284 (= setRest!40274 ((_ map or) (store ((as const (Array Context!10726 Bool)) false) setElem!40284 true) setRest!40284))))

(declare-fun b!5934437 () Bool)

(declare-fun tp!1651012 () Bool)

(assert (=> b!5934437 (= e!3631753 tp!1651012)))

(assert (= (and setNonEmpty!40274 condSetEmpty!40284) setIsEmpty!40284))

(assert (= (and setNonEmpty!40274 (not condSetEmpty!40284)) setNonEmpty!40284))

(assert (= setNonEmpty!40284 b!5934437))

(declare-fun m!6825746 () Bool)

(assert (=> setNonEmpty!40284 m!6825746))

(declare-fun b!5934438 () Bool)

(declare-fun e!3631754 () Bool)

(assert (=> b!5934438 (= e!3631754 tp_is_empty!41211)))

(declare-fun b!5934441 () Bool)

(declare-fun tp!1651013 () Bool)

(declare-fun tp!1651017 () Bool)

(assert (=> b!5934441 (= e!3631754 (and tp!1651013 tp!1651017))))

(declare-fun b!5934440 () Bool)

(declare-fun tp!1651016 () Bool)

(assert (=> b!5934440 (= e!3631754 tp!1651016)))

(assert (=> b!5933511 (= tp!1650738 e!3631754)))

(declare-fun b!5934439 () Bool)

(declare-fun tp!1651014 () Bool)

(declare-fun tp!1651015 () Bool)

(assert (=> b!5934439 (= e!3631754 (and tp!1651014 tp!1651015))))

(assert (= (and b!5933511 ((_ is ElementMatch!15979) (h!70560 (exprs!5863 setElem!40268)))) b!5934438))

(assert (= (and b!5933511 ((_ is Concat!24824) (h!70560 (exprs!5863 setElem!40268)))) b!5934439))

(assert (= (and b!5933511 ((_ is Star!15979) (h!70560 (exprs!5863 setElem!40268)))) b!5934440))

(assert (= (and b!5933511 ((_ is Union!15979) (h!70560 (exprs!5863 setElem!40268)))) b!5934441))

(declare-fun b!5934442 () Bool)

(declare-fun e!3631755 () Bool)

(declare-fun tp!1651018 () Bool)

(declare-fun tp!1651019 () Bool)

(assert (=> b!5934442 (= e!3631755 (and tp!1651018 tp!1651019))))

(assert (=> b!5933511 (= tp!1650739 e!3631755)))

(assert (= (and b!5933511 ((_ is Cons!64112) (t!377635 (exprs!5863 setElem!40268)))) b!5934442))

(declare-fun b!5934443 () Bool)

(declare-fun e!3631756 () Bool)

(assert (=> b!5934443 (= e!3631756 tp_is_empty!41211)))

(declare-fun b!5934446 () Bool)

(declare-fun tp!1651020 () Bool)

(declare-fun tp!1651024 () Bool)

(assert (=> b!5934446 (= e!3631756 (and tp!1651020 tp!1651024))))

(declare-fun b!5934445 () Bool)

(declare-fun tp!1651023 () Bool)

(assert (=> b!5934445 (= e!3631756 tp!1651023)))

(assert (=> b!5933504 (= tp!1650730 e!3631756)))

(declare-fun b!5934444 () Bool)

(declare-fun tp!1651021 () Bool)

(declare-fun tp!1651022 () Bool)

(assert (=> b!5934444 (= e!3631756 (and tp!1651021 tp!1651022))))

(assert (= (and b!5933504 ((_ is ElementMatch!15979) (regOne!32470 (reg!16308 r!7292)))) b!5934443))

(assert (= (and b!5933504 ((_ is Concat!24824) (regOne!32470 (reg!16308 r!7292)))) b!5934444))

(assert (= (and b!5933504 ((_ is Star!15979) (regOne!32470 (reg!16308 r!7292)))) b!5934445))

(assert (= (and b!5933504 ((_ is Union!15979) (regOne!32470 (reg!16308 r!7292)))) b!5934446))

(declare-fun b!5934447 () Bool)

(declare-fun e!3631757 () Bool)

(assert (=> b!5934447 (= e!3631757 tp_is_empty!41211)))

(declare-fun b!5934450 () Bool)

(declare-fun tp!1651025 () Bool)

(declare-fun tp!1651029 () Bool)

(assert (=> b!5934450 (= e!3631757 (and tp!1651025 tp!1651029))))

(declare-fun b!5934449 () Bool)

(declare-fun tp!1651028 () Bool)

(assert (=> b!5934449 (= e!3631757 tp!1651028)))

(assert (=> b!5933504 (= tp!1650731 e!3631757)))

(declare-fun b!5934448 () Bool)

(declare-fun tp!1651026 () Bool)

(declare-fun tp!1651027 () Bool)

(assert (=> b!5934448 (= e!3631757 (and tp!1651026 tp!1651027))))

(assert (= (and b!5933504 ((_ is ElementMatch!15979) (regTwo!32470 (reg!16308 r!7292)))) b!5934447))

(assert (= (and b!5933504 ((_ is Concat!24824) (regTwo!32470 (reg!16308 r!7292)))) b!5934448))

(assert (= (and b!5933504 ((_ is Star!15979) (regTwo!32470 (reg!16308 r!7292)))) b!5934449))

(assert (= (and b!5933504 ((_ is Union!15979) (regTwo!32470 (reg!16308 r!7292)))) b!5934450))

(declare-fun b!5934451 () Bool)

(declare-fun e!3631758 () Bool)

(assert (=> b!5934451 (= e!3631758 tp_is_empty!41211)))

(declare-fun b!5934454 () Bool)

(declare-fun tp!1651030 () Bool)

(declare-fun tp!1651034 () Bool)

(assert (=> b!5934454 (= e!3631758 (and tp!1651030 tp!1651034))))

(declare-fun b!5934453 () Bool)

(declare-fun tp!1651033 () Bool)

(assert (=> b!5934453 (= e!3631758 tp!1651033)))

(assert (=> b!5933505 (= tp!1650732 e!3631758)))

(declare-fun b!5934452 () Bool)

(declare-fun tp!1651031 () Bool)

(declare-fun tp!1651032 () Bool)

(assert (=> b!5934452 (= e!3631758 (and tp!1651031 tp!1651032))))

(assert (= (and b!5933505 ((_ is ElementMatch!15979) (reg!16308 (reg!16308 r!7292)))) b!5934451))

(assert (= (and b!5933505 ((_ is Concat!24824) (reg!16308 (reg!16308 r!7292)))) b!5934452))

(assert (= (and b!5933505 ((_ is Star!15979) (reg!16308 (reg!16308 r!7292)))) b!5934453))

(assert (= (and b!5933505 ((_ is Union!15979) (reg!16308 (reg!16308 r!7292)))) b!5934454))

(declare-fun b!5934455 () Bool)

(declare-fun e!3631759 () Bool)

(assert (=> b!5934455 (= e!3631759 tp_is_empty!41211)))

(declare-fun b!5934458 () Bool)

(declare-fun tp!1651035 () Bool)

(declare-fun tp!1651039 () Bool)

(assert (=> b!5934458 (= e!3631759 (and tp!1651035 tp!1651039))))

(declare-fun b!5934457 () Bool)

(declare-fun tp!1651038 () Bool)

(assert (=> b!5934457 (= e!3631759 tp!1651038)))

(assert (=> b!5933506 (= tp!1650729 e!3631759)))

(declare-fun b!5934456 () Bool)

(declare-fun tp!1651036 () Bool)

(declare-fun tp!1651037 () Bool)

(assert (=> b!5934456 (= e!3631759 (and tp!1651036 tp!1651037))))

(assert (= (and b!5933506 ((_ is ElementMatch!15979) (regOne!32471 (reg!16308 r!7292)))) b!5934455))

(assert (= (and b!5933506 ((_ is Concat!24824) (regOne!32471 (reg!16308 r!7292)))) b!5934456))

(assert (= (and b!5933506 ((_ is Star!15979) (regOne!32471 (reg!16308 r!7292)))) b!5934457))

(assert (= (and b!5933506 ((_ is Union!15979) (regOne!32471 (reg!16308 r!7292)))) b!5934458))

(declare-fun b!5934459 () Bool)

(declare-fun e!3631760 () Bool)

(assert (=> b!5934459 (= e!3631760 tp_is_empty!41211)))

(declare-fun b!5934462 () Bool)

(declare-fun tp!1651040 () Bool)

(declare-fun tp!1651044 () Bool)

(assert (=> b!5934462 (= e!3631760 (and tp!1651040 tp!1651044))))

(declare-fun b!5934461 () Bool)

(declare-fun tp!1651043 () Bool)

(assert (=> b!5934461 (= e!3631760 tp!1651043)))

(assert (=> b!5933506 (= tp!1650733 e!3631760)))

(declare-fun b!5934460 () Bool)

(declare-fun tp!1651041 () Bool)

(declare-fun tp!1651042 () Bool)

(assert (=> b!5934460 (= e!3631760 (and tp!1651041 tp!1651042))))

(assert (= (and b!5933506 ((_ is ElementMatch!15979) (regTwo!32471 (reg!16308 r!7292)))) b!5934459))

(assert (= (and b!5933506 ((_ is Concat!24824) (regTwo!32471 (reg!16308 r!7292)))) b!5934460))

(assert (= (and b!5933506 ((_ is Star!15979) (regTwo!32471 (reg!16308 r!7292)))) b!5934461))

(assert (= (and b!5933506 ((_ is Union!15979) (regTwo!32471 (reg!16308 r!7292)))) b!5934462))

(declare-fun b!5934464 () Bool)

(declare-fun e!3631762 () Bool)

(declare-fun tp!1651045 () Bool)

(assert (=> b!5934464 (= e!3631762 tp!1651045)))

(declare-fun tp!1651046 () Bool)

(declare-fun b!5934463 () Bool)

(declare-fun e!3631761 () Bool)

(assert (=> b!5934463 (= e!3631761 (and (inv!83194 (h!70561 (t!377636 (t!377636 zl!343)))) e!3631762 tp!1651046))))

(assert (=> b!5933491 (= tp!1650718 e!3631761)))

(assert (= b!5934463 b!5934464))

(assert (= (and b!5933491 ((_ is Cons!64113) (t!377636 (t!377636 zl!343)))) b!5934463))

(declare-fun m!6825748 () Bool)

(assert (=> b!5934463 m!6825748))

(declare-fun b!5934465 () Bool)

(declare-fun e!3631763 () Bool)

(declare-fun tp!1651047 () Bool)

(assert (=> b!5934465 (= e!3631763 (and tp_is_empty!41211 tp!1651047))))

(assert (=> b!5933516 (= tp!1650742 e!3631763)))

(assert (= (and b!5933516 ((_ is Cons!64114) (t!377637 (t!377637 s!2326)))) b!5934465))

(declare-fun b!5934466 () Bool)

(declare-fun e!3631764 () Bool)

(assert (=> b!5934466 (= e!3631764 tp_is_empty!41211)))

(declare-fun b!5934469 () Bool)

(declare-fun tp!1651048 () Bool)

(declare-fun tp!1651052 () Bool)

(assert (=> b!5934469 (= e!3631764 (and tp!1651048 tp!1651052))))

(declare-fun b!5934468 () Bool)

(declare-fun tp!1651051 () Bool)

(assert (=> b!5934468 (= e!3631764 tp!1651051)))

(assert (=> b!5933532 (= tp!1650763 e!3631764)))

(declare-fun b!5934467 () Bool)

(declare-fun tp!1651049 () Bool)

(declare-fun tp!1651050 () Bool)

(assert (=> b!5934467 (= e!3631764 (and tp!1651049 tp!1651050))))

(assert (= (and b!5933532 ((_ is ElementMatch!15979) (reg!16308 (regTwo!32470 r!7292)))) b!5934466))

(assert (= (and b!5933532 ((_ is Concat!24824) (reg!16308 (regTwo!32470 r!7292)))) b!5934467))

(assert (= (and b!5933532 ((_ is Star!15979) (reg!16308 (regTwo!32470 r!7292)))) b!5934468))

(assert (= (and b!5933532 ((_ is Union!15979) (reg!16308 (regTwo!32470 r!7292)))) b!5934469))

(declare-fun b!5934470 () Bool)

(declare-fun e!3631765 () Bool)

(assert (=> b!5934470 (= e!3631765 tp_is_empty!41211)))

(declare-fun b!5934473 () Bool)

(declare-fun tp!1651053 () Bool)

(declare-fun tp!1651057 () Bool)

(assert (=> b!5934473 (= e!3631765 (and tp!1651053 tp!1651057))))

(declare-fun b!5934472 () Bool)

(declare-fun tp!1651056 () Bool)

(assert (=> b!5934472 (= e!3631765 tp!1651056)))

(assert (=> b!5933523 (= tp!1650751 e!3631765)))

(declare-fun b!5934471 () Bool)

(declare-fun tp!1651054 () Bool)

(declare-fun tp!1651055 () Bool)

(assert (=> b!5934471 (= e!3631765 (and tp!1651054 tp!1651055))))

(assert (= (and b!5933523 ((_ is ElementMatch!15979) (regOne!32470 (regTwo!32471 r!7292)))) b!5934470))

(assert (= (and b!5933523 ((_ is Concat!24824) (regOne!32470 (regTwo!32471 r!7292)))) b!5934471))

(assert (= (and b!5933523 ((_ is Star!15979) (regOne!32470 (regTwo!32471 r!7292)))) b!5934472))

(assert (= (and b!5933523 ((_ is Union!15979) (regOne!32470 (regTwo!32471 r!7292)))) b!5934473))

(declare-fun b!5934474 () Bool)

(declare-fun e!3631766 () Bool)

(assert (=> b!5934474 (= e!3631766 tp_is_empty!41211)))

(declare-fun b!5934477 () Bool)

(declare-fun tp!1651058 () Bool)

(declare-fun tp!1651062 () Bool)

(assert (=> b!5934477 (= e!3631766 (and tp!1651058 tp!1651062))))

(declare-fun b!5934476 () Bool)

(declare-fun tp!1651061 () Bool)

(assert (=> b!5934476 (= e!3631766 tp!1651061)))

(assert (=> b!5933523 (= tp!1650752 e!3631766)))

(declare-fun b!5934475 () Bool)

(declare-fun tp!1651059 () Bool)

(declare-fun tp!1651060 () Bool)

(assert (=> b!5934475 (= e!3631766 (and tp!1651059 tp!1651060))))

(assert (= (and b!5933523 ((_ is ElementMatch!15979) (regTwo!32470 (regTwo!32471 r!7292)))) b!5934474))

(assert (= (and b!5933523 ((_ is Concat!24824) (regTwo!32470 (regTwo!32471 r!7292)))) b!5934475))

(assert (= (and b!5933523 ((_ is Star!15979) (regTwo!32470 (regTwo!32471 r!7292)))) b!5934476))

(assert (= (and b!5933523 ((_ is Union!15979) (regTwo!32470 (regTwo!32471 r!7292)))) b!5934477))

(declare-fun b!5934478 () Bool)

(declare-fun e!3631767 () Bool)

(assert (=> b!5934478 (= e!3631767 tp_is_empty!41211)))

(declare-fun b!5934481 () Bool)

(declare-fun tp!1651063 () Bool)

(declare-fun tp!1651067 () Bool)

(assert (=> b!5934481 (= e!3631767 (and tp!1651063 tp!1651067))))

(declare-fun b!5934480 () Bool)

(declare-fun tp!1651066 () Bool)

(assert (=> b!5934480 (= e!3631767 tp!1651066)))

(assert (=> b!5933533 (= tp!1650760 e!3631767)))

(declare-fun b!5934479 () Bool)

(declare-fun tp!1651064 () Bool)

(declare-fun tp!1651065 () Bool)

(assert (=> b!5934479 (= e!3631767 (and tp!1651064 tp!1651065))))

(assert (= (and b!5933533 ((_ is ElementMatch!15979) (regOne!32471 (regTwo!32470 r!7292)))) b!5934478))

(assert (= (and b!5933533 ((_ is Concat!24824) (regOne!32471 (regTwo!32470 r!7292)))) b!5934479))

(assert (= (and b!5933533 ((_ is Star!15979) (regOne!32471 (regTwo!32470 r!7292)))) b!5934480))

(assert (= (and b!5933533 ((_ is Union!15979) (regOne!32471 (regTwo!32470 r!7292)))) b!5934481))

(declare-fun b!5934482 () Bool)

(declare-fun e!3631768 () Bool)

(assert (=> b!5934482 (= e!3631768 tp_is_empty!41211)))

(declare-fun b!5934485 () Bool)

(declare-fun tp!1651068 () Bool)

(declare-fun tp!1651072 () Bool)

(assert (=> b!5934485 (= e!3631768 (and tp!1651068 tp!1651072))))

(declare-fun b!5934484 () Bool)

(declare-fun tp!1651071 () Bool)

(assert (=> b!5934484 (= e!3631768 tp!1651071)))

(assert (=> b!5933533 (= tp!1650764 e!3631768)))

(declare-fun b!5934483 () Bool)

(declare-fun tp!1651069 () Bool)

(declare-fun tp!1651070 () Bool)

(assert (=> b!5934483 (= e!3631768 (and tp!1651069 tp!1651070))))

(assert (= (and b!5933533 ((_ is ElementMatch!15979) (regTwo!32471 (regTwo!32470 r!7292)))) b!5934482))

(assert (= (and b!5933533 ((_ is Concat!24824) (regTwo!32471 (regTwo!32470 r!7292)))) b!5934483))

(assert (= (and b!5933533 ((_ is Star!15979) (regTwo!32471 (regTwo!32470 r!7292)))) b!5934484))

(assert (= (and b!5933533 ((_ is Union!15979) (regTwo!32471 (regTwo!32470 r!7292)))) b!5934485))

(declare-fun b!5934486 () Bool)

(declare-fun e!3631769 () Bool)

(assert (=> b!5934486 (= e!3631769 tp_is_empty!41211)))

(declare-fun b!5934489 () Bool)

(declare-fun tp!1651073 () Bool)

(declare-fun tp!1651077 () Bool)

(assert (=> b!5934489 (= e!3631769 (and tp!1651073 tp!1651077))))

(declare-fun b!5934488 () Bool)

(declare-fun tp!1651076 () Bool)

(assert (=> b!5934488 (= e!3631769 tp!1651076)))

(assert (=> b!5933524 (= tp!1650753 e!3631769)))

(declare-fun b!5934487 () Bool)

(declare-fun tp!1651074 () Bool)

(declare-fun tp!1651075 () Bool)

(assert (=> b!5934487 (= e!3631769 (and tp!1651074 tp!1651075))))

(assert (= (and b!5933524 ((_ is ElementMatch!15979) (reg!16308 (regTwo!32471 r!7292)))) b!5934486))

(assert (= (and b!5933524 ((_ is Concat!24824) (reg!16308 (regTwo!32471 r!7292)))) b!5934487))

(assert (= (and b!5933524 ((_ is Star!15979) (reg!16308 (regTwo!32471 r!7292)))) b!5934488))

(assert (= (and b!5933524 ((_ is Union!15979) (reg!16308 (regTwo!32471 r!7292)))) b!5934489))

(declare-fun b!5934490 () Bool)

(declare-fun e!3631770 () Bool)

(assert (=> b!5934490 (= e!3631770 tp_is_empty!41211)))

(declare-fun b!5934493 () Bool)

(declare-fun tp!1651078 () Bool)

(declare-fun tp!1651082 () Bool)

(assert (=> b!5934493 (= e!3631770 (and tp!1651078 tp!1651082))))

(declare-fun b!5934492 () Bool)

(declare-fun tp!1651081 () Bool)

(assert (=> b!5934492 (= e!3631770 tp!1651081)))

(assert (=> b!5933525 (= tp!1650750 e!3631770)))

(declare-fun b!5934491 () Bool)

(declare-fun tp!1651079 () Bool)

(declare-fun tp!1651080 () Bool)

(assert (=> b!5934491 (= e!3631770 (and tp!1651079 tp!1651080))))

(assert (= (and b!5933525 ((_ is ElementMatch!15979) (regOne!32471 (regTwo!32471 r!7292)))) b!5934490))

(assert (= (and b!5933525 ((_ is Concat!24824) (regOne!32471 (regTwo!32471 r!7292)))) b!5934491))

(assert (= (and b!5933525 ((_ is Star!15979) (regOne!32471 (regTwo!32471 r!7292)))) b!5934492))

(assert (= (and b!5933525 ((_ is Union!15979) (regOne!32471 (regTwo!32471 r!7292)))) b!5934493))

(declare-fun b!5934494 () Bool)

(declare-fun e!3631771 () Bool)

(assert (=> b!5934494 (= e!3631771 tp_is_empty!41211)))

(declare-fun b!5934497 () Bool)

(declare-fun tp!1651083 () Bool)

(declare-fun tp!1651087 () Bool)

(assert (=> b!5934497 (= e!3631771 (and tp!1651083 tp!1651087))))

(declare-fun b!5934496 () Bool)

(declare-fun tp!1651086 () Bool)

(assert (=> b!5934496 (= e!3631771 tp!1651086)))

(assert (=> b!5933525 (= tp!1650754 e!3631771)))

(declare-fun b!5934495 () Bool)

(declare-fun tp!1651084 () Bool)

(declare-fun tp!1651085 () Bool)

(assert (=> b!5934495 (= e!3631771 (and tp!1651084 tp!1651085))))

(assert (= (and b!5933525 ((_ is ElementMatch!15979) (regTwo!32471 (regTwo!32471 r!7292)))) b!5934494))

(assert (= (and b!5933525 ((_ is Concat!24824) (regTwo!32471 (regTwo!32471 r!7292)))) b!5934495))

(assert (= (and b!5933525 ((_ is Star!15979) (regTwo!32471 (regTwo!32471 r!7292)))) b!5934496))

(assert (= (and b!5933525 ((_ is Union!15979) (regTwo!32471 (regTwo!32471 r!7292)))) b!5934497))

(declare-fun b!5934498 () Bool)

(declare-fun e!3631772 () Bool)

(assert (=> b!5934498 (= e!3631772 tp_is_empty!41211)))

(declare-fun b!5934501 () Bool)

(declare-fun tp!1651088 () Bool)

(declare-fun tp!1651092 () Bool)

(assert (=> b!5934501 (= e!3631772 (and tp!1651088 tp!1651092))))

(declare-fun b!5934500 () Bool)

(declare-fun tp!1651091 () Bool)

(assert (=> b!5934500 (= e!3631772 tp!1651091)))

(assert (=> b!5933517 (= tp!1650743 e!3631772)))

(declare-fun b!5934499 () Bool)

(declare-fun tp!1651089 () Bool)

(declare-fun tp!1651090 () Bool)

(assert (=> b!5934499 (= e!3631772 (and tp!1651089 tp!1651090))))

(assert (= (and b!5933517 ((_ is ElementMatch!15979) (h!70560 (exprs!5863 (h!70561 zl!343))))) b!5934498))

(assert (= (and b!5933517 ((_ is Concat!24824) (h!70560 (exprs!5863 (h!70561 zl!343))))) b!5934499))

(assert (= (and b!5933517 ((_ is Star!15979) (h!70560 (exprs!5863 (h!70561 zl!343))))) b!5934500))

(assert (= (and b!5933517 ((_ is Union!15979) (h!70560 (exprs!5863 (h!70561 zl!343))))) b!5934501))

(declare-fun b!5934502 () Bool)

(declare-fun e!3631773 () Bool)

(declare-fun tp!1651093 () Bool)

(declare-fun tp!1651094 () Bool)

(assert (=> b!5934502 (= e!3631773 (and tp!1651093 tp!1651094))))

(assert (=> b!5933517 (= tp!1650744 e!3631773)))

(assert (= (and b!5933517 ((_ is Cons!64112) (t!377635 (exprs!5863 (h!70561 zl!343))))) b!5934502))

(declare-fun b_lambda!222877 () Bool)

(assert (= b_lambda!222843 (or d!1859959 b_lambda!222877)))

(declare-fun bs!1403958 () Bool)

(declare-fun d!1860429 () Bool)

(assert (= bs!1403958 (and d!1860429 d!1859959)))

(assert (=> bs!1403958 (= (dynLambda!25074 lambda!323512 (h!70560 (exprs!5863 (h!70561 zl!343)))) (validRegex!7715 (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(declare-fun m!6825750 () Bool)

(assert (=> bs!1403958 m!6825750))

(assert (=> b!5933791 d!1860429))

(declare-fun b_lambda!222879 () Bool)

(assert (= b_lambda!222847 (or b!5932837 b_lambda!222879)))

(assert (=> d!1860233 d!1860073))

(declare-fun b_lambda!222881 () Bool)

(assert (= b_lambda!222853 (or b!5932837 b_lambda!222881)))

(assert (=> d!1860261 d!1860075))

(declare-fun b_lambda!222883 () Bool)

(assert (= b_lambda!222875 (or d!1860029 b_lambda!222883)))

(declare-fun bs!1403959 () Bool)

(declare-fun d!1860431 () Bool)

(assert (= bs!1403959 (and d!1860431 d!1860029)))

(assert (=> bs!1403959 (= (dynLambda!25074 lambda!323550 (h!70560 (exprs!5863 lt!2310867))) (validRegex!7715 (h!70560 (exprs!5863 lt!2310867))))))

(declare-fun m!6825752 () Bool)

(assert (=> bs!1403959 m!6825752))

(assert (=> b!5934294 d!1860431))

(declare-fun b_lambda!222885 () Bool)

(assert (= b_lambda!222835 (or d!1860031 b_lambda!222885)))

(declare-fun bs!1403960 () Bool)

(declare-fun d!1860433 () Bool)

(assert (= bs!1403960 (and d!1860433 d!1860031)))

(assert (=> bs!1403960 (= (dynLambda!25074 lambda!323551 (h!70560 (exprs!5863 setElem!40268))) (validRegex!7715 (h!70560 (exprs!5863 setElem!40268))))))

(declare-fun m!6825754 () Bool)

(assert (=> bs!1403960 m!6825754))

(assert (=> b!5933690 d!1860433))

(declare-fun b_lambda!222887 () Bool)

(assert (= b_lambda!222837 (or d!1860019 b_lambda!222887)))

(declare-fun bs!1403961 () Bool)

(declare-fun d!1860435 () Bool)

(assert (= bs!1403961 (and d!1860435 d!1860019)))

(assert (=> bs!1403961 (= (dynLambda!25074 lambda!323547 (h!70560 lt!2310918)) (validRegex!7715 (h!70560 lt!2310918)))))

(declare-fun m!6825756 () Bool)

(assert (=> bs!1403961 m!6825756))

(assert (=> b!5933761 d!1860435))

(declare-fun b_lambda!222889 () Bool)

(assert (= b_lambda!222851 (or d!1860011 b_lambda!222889)))

(declare-fun bs!1403962 () Bool)

(declare-fun d!1860437 () Bool)

(assert (= bs!1403962 (and d!1860437 d!1860011)))

(assert (=> bs!1403962 (= (dynLambda!25074 lambda!323540 (h!70560 (unfocusZipperList!1400 zl!343))) (validRegex!7715 (h!70560 (unfocusZipperList!1400 zl!343))))))

(declare-fun m!6825758 () Bool)

(assert (=> bs!1403962 m!6825758))

(assert (=> b!5933927 d!1860437))

(declare-fun b_lambda!222891 () Bool)

(assert (= b_lambda!222849 (or d!1860033 b_lambda!222891)))

(declare-fun bs!1403963 () Bool)

(declare-fun d!1860439 () Bool)

(assert (= bs!1403963 (and d!1860439 d!1860033)))

(assert (=> bs!1403963 (= (dynLambda!25074 lambda!323553 (h!70560 (exprs!5863 (h!70561 zl!343)))) (validRegex!7715 (h!70560 (exprs!5863 (h!70561 zl!343)))))))

(assert (=> bs!1403963 m!6825750))

(assert (=> b!5933891 d!1860439))

(check-sat (not d!1860365) (not bm!471211) (not b!5934500) (not b!5933853) (not b!5934401) (not b!5934469) (not b!5934420) (not b!5933856) (not d!1860273) (not b!5934123) (not b!5934257) (not bm!471268) (not b!5933952) (not b!5934277) (not b!5934489) (not bs!1403963) (not b!5934475) (not bm!471258) (not b!5934001) (not b!5934428) (not bm!471254) (not b!5934283) (not b!5934426) (not b!5933943) (not b!5933915) (not b!5934471) (not b!5934467) (not bm!471249) (not b!5934373) (not b!5934378) (not d!1860427) (not b!5934404) (not b!5934281) (not b!5933968) (not b!5934456) (not d!1860209) (not b!5934210) (not d!1860161) (not b!5934483) (not bs!1403960) (not d!1860327) (not b!5934374) (not b!5934477) (not bm!471216) (not b!5933743) (not bm!471304) (not b!5934391) (not d!1860371) (not b!5934051) (not d!1860223) (not bm!471299) (not b!5933691) (not bm!471320) (not d!1860425) (not b!5934122) (not b!5933781) (not b!5933949) (not b!5934415) (not b!5934304) (not setNonEmpty!40284) (not b!5934436) (not b!5934416) (not b!5934407) (not b!5934204) (not d!1860385) (not b!5934423) (not b!5934431) (not bm!471226) (not d!1860367) (not b!5934492) (not d!1860359) (not bm!471220) (not bm!471322) (not d!1860197) (not bm!471302) (not bm!471215) (not b!5934445) (not b!5934390) (not bm!471259) (not b_lambda!222825) (not d!1860397) (not b!5934203) (not b!5933762) (not b!5933741) (not b!5934479) (not b!5933928) (not b!5934468) (not b!5934485) (not bm!471301) (not d!1860261) (not bm!471316) (not b!5934410) (not d!1860423) (not d!1860269) (not bm!471323) (not b!5933852) (not b!5934461) (not b!5934015) (not bm!471318) (not b!5934394) (not setNonEmpty!40279) (not b_lambda!222879) (not bs!1403962) (not b!5933858) (not b!5934366) (not b!5934240) (not b!5934349) (not b!5934300) (not d!1860369) (not d!1860233) (not b!5934276) (not b!5934352) (not b!5933919) (not b!5933713) (not b!5933945) (not b!5934493) (not bm!471329) (not b!5933739) (not b!5934395) (not b!5934120) (not bm!471218) (not b!5934442) (not b!5934430) (not b!5934497) (not bs!1403961) (not b!5933851) (not d!1860329) (not b!5934427) (not bm!471205) (not b!5934488) (not b!5934496) (not b!5934464) (not b!5934397) (not b!5934460) (not bm!471275) (not b!5934389) (not b!5934424) (not b!5933803) (not b!5934033) (not b_lambda!222889) (not bm!471242) (not b!5934017) (not bm!471225) (not b!5934302) (not b!5934437) (not b!5934481) (not d!1860417) (not b!5934402) (not bm!471212) (not b!5934448) (not b!5934495) (not bm!471203) (not b!5934406) (not b!5934480) (not b!5934025) (not b!5934439) (not b!5933892) (not d!1860271) (not d!1860263) (not bm!471257) (not b!5933895) (not b!5934280) (not b!5934450) (not bm!471248) (not b!5934502) (not b!5934278) (not bm!471253) (not b_lambda!222883) (not b!5934422) (not b!5934019) (not b!5934452) (not b!5934412) (not b!5934491) (not b!5934018) (not b!5934472) (not d!1860195) (not b!5933767) (not bm!471240) (not b!5933951) (not b!5934206) (not d!1860355) (not b!5934126) (not b!5933913) (not b!5934202) (not b!5934419) (not b!5934200) (not b!5934454) (not b!5933750) (not b!5934432) (not bm!471313) (not bm!471209) (not d!1860281) (not b!5934375) (not b!5934341) (not b!5934465) (not b!5934414) (not bm!471276) (not b!5934449) (not b!5934399) (not b!5934453) (not b!5934387) (not b!5933958) (not b!5933994) (not b!5934444) (not b!5934411) (not b!5933696) (not b!5934446) (not b!5933857) (not d!1860323) (not bm!471252) (not b!5934124) (not b!5933997) (not b_lambda!222887) (not b!5934435) (not d!1860305) (not bm!471273) (not b!5933956) (not b!5934441) (not d!1860395) (not b!5934484) (not b!5933995) (not b!5934331) (not b!5934130) (not b!5933792) (not bm!471300) (not d!1860265) (not b!5934476) (not b_lambda!222885) (not b!5934192) (not b!5933874) (not b!5934398) (not b!5934365) (not d!1860325) (not b!5934286) (not b!5934440) (not b!5934298) (not b!5933765) (not d!1860293) (not b!5934295) (not d!1860283) (not bs!1403958) tp_is_empty!41211 (not bm!471243) (not b!5934403) (not b_lambda!222891) (not b_lambda!222877) (not bm!471246) (not b!5934462) (not bm!471328) (not b!5934499) (not b!5934308) (not b!5933954) (not b!5934021) (not b!5934473) (not b!5934458) (not bm!471206) (not b!5933950) (not b!5933860) (not bs!1403959) (not b_lambda!222827) (not b!5934434) (not setNonEmpty!40283) (not b!5933948) (not b_lambda!222881) (not d!1860357) (not bm!471219) (not b!5933738) (not b!5934393) (not b!5934239) (not b!5934457) (not bm!471217) (not b!5933760) (not b!5934301) (not b!5934487) (not bm!471317) (not bm!471326) (not b!5934463) (not b!5934408) (not b!5933993) (not b!5934031) (not b!5934501) (not b!5933991) (not d!1860363) (not b!5934418) (not b!5934258))
(check-sat)
