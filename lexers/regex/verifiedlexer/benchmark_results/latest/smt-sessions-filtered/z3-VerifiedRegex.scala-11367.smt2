; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!603080 () Bool)

(assert start!603080)

(declare-fun b!5934657 () Bool)

(assert (=> b!5934657 true))

(assert (=> b!5934657 true))

(declare-fun lambda!323635 () Int)

(declare-fun lambda!323634 () Int)

(assert (=> b!5934657 (not (= lambda!323635 lambda!323634))))

(assert (=> b!5934657 true))

(assert (=> b!5934657 true))

(declare-fun b!5934641 () Bool)

(assert (=> b!5934641 true))

(declare-fun b!5934638 () Bool)

(declare-fun res!2486100 () Bool)

(declare-fun e!3631840 () Bool)

(assert (=> b!5934638 (=> res!2486100 e!3631840)))

(declare-datatypes ((C!32232 0))(
  ( (C!32233 (val!25818 Int)) )
))
(declare-datatypes ((Regex!15981 0))(
  ( (ElementMatch!15981 (c!1055049 C!32232)) (Concat!24826 (regOne!32474 Regex!15981) (regTwo!32474 Regex!15981)) (EmptyExpr!15981) (Star!15981 (reg!16310 Regex!15981)) (EmptyLang!15981) (Union!15981 (regOne!32475 Regex!15981) (regTwo!32475 Regex!15981)) )
))
(declare-datatypes ((List!64242 0))(
  ( (Nil!64118) (Cons!64118 (h!70566 Regex!15981) (t!377643 List!64242)) )
))
(declare-datatypes ((Context!10730 0))(
  ( (Context!10731 (exprs!5865 List!64242)) )
))
(declare-datatypes ((List!64243 0))(
  ( (Nil!64119) (Cons!64119 (h!70567 Context!10730) (t!377644 List!64243)) )
))
(declare-fun zl!343 () List!64243)

(declare-fun isEmpty!35985 (List!64242) Bool)

(assert (=> b!5934638 (= res!2486100 (not (isEmpty!35985 (t!377643 (exprs!5865 (h!70567 zl!343))))))))

(declare-fun res!2486096 () Bool)

(declare-fun e!3631836 () Bool)

(assert (=> start!603080 (=> (not res!2486096) (not e!3631836))))

(declare-fun r!7292 () Regex!15981)

(declare-fun validRegex!7717 (Regex!15981) Bool)

(assert (=> start!603080 (= res!2486096 (validRegex!7717 r!7292))))

(assert (=> start!603080 e!3631836))

(declare-fun e!3631844 () Bool)

(assert (=> start!603080 e!3631844))

(declare-fun condSetEmpty!40290 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10730))

(assert (=> start!603080 (= condSetEmpty!40290 (= z!1189 ((as const (Array Context!10730 Bool)) false)))))

(declare-fun setRes!40290 () Bool)

(assert (=> start!603080 setRes!40290))

(declare-fun e!3631843 () Bool)

(assert (=> start!603080 e!3631843))

(declare-fun e!3631838 () Bool)

(assert (=> start!603080 e!3631838))

(declare-fun b!5934639 () Bool)

(declare-fun tp_is_empty!41215 () Bool)

(declare-fun tp!1651151 () Bool)

(assert (=> b!5934639 (= e!3631838 (and tp_is_empty!41215 tp!1651151))))

(declare-fun b!5934640 () Bool)

(declare-fun e!3631845 () Bool)

(declare-fun tp!1651146 () Bool)

(assert (=> b!5934640 (= e!3631845 tp!1651146)))

(declare-fun e!3631842 () Bool)

(declare-fun e!3631837 () Bool)

(assert (=> b!5934641 (= e!3631842 e!3631837)))

(declare-fun res!2486101 () Bool)

(assert (=> b!5934641 (=> res!2486101 e!3631837)))

(declare-fun lt!2311090 () (InoxSet Context!10730))

(declare-datatypes ((List!64244 0))(
  ( (Nil!64120) (Cons!64120 (h!70568 C!32232) (t!377645 List!64244)) )
))
(declare-fun s!2326 () List!64244)

(declare-fun derivationStepZipper!1962 ((InoxSet Context!10730) C!32232) (InoxSet Context!10730))

(assert (=> b!5934641 (= res!2486101 (not (= (derivationStepZipper!1962 z!1189 (h!70568 s!2326)) lt!2311090)))))

(declare-fun lambda!323636 () Int)

(declare-fun flatMap!1494 ((InoxSet Context!10730) Int) (InoxSet Context!10730))

(declare-fun derivationStepZipperUp!1157 (Context!10730 C!32232) (InoxSet Context!10730))

(assert (=> b!5934641 (= (flatMap!1494 z!1189 lambda!323636) (derivationStepZipperUp!1157 (h!70567 zl!343) (h!70568 s!2326)))))

(declare-datatypes ((Unit!157233 0))(
  ( (Unit!157234) )
))
(declare-fun lt!2311086 () Unit!157233)

(declare-fun lemmaFlatMapOnSingletonSet!1020 ((InoxSet Context!10730) Context!10730 Int) Unit!157233)

(assert (=> b!5934641 (= lt!2311086 (lemmaFlatMapOnSingletonSet!1020 z!1189 (h!70567 zl!343) lambda!323636))))

(declare-fun setIsEmpty!40290 () Bool)

(assert (=> setIsEmpty!40290 setRes!40290))

(declare-fun b!5934642 () Bool)

(declare-fun e!3631839 () Bool)

(declare-fun tp!1651154 () Bool)

(assert (=> b!5934642 (= e!3631839 tp!1651154)))

(declare-fun b!5934643 () Bool)

(declare-fun res!2486097 () Bool)

(declare-fun e!3631841 () Bool)

(assert (=> b!5934643 (=> res!2486097 e!3631841)))

(declare-fun generalisedUnion!1825 (List!64242) Regex!15981)

(declare-fun unfocusZipperList!1402 (List!64243) List!64242)

(assert (=> b!5934643 (= res!2486097 (not (= r!7292 (generalisedUnion!1825 (unfocusZipperList!1402 zl!343)))))))

(declare-fun b!5934644 () Bool)

(declare-fun tp!1651152 () Bool)

(declare-fun tp!1651153 () Bool)

(assert (=> b!5934644 (= e!3631844 (and tp!1651152 tp!1651153))))

(declare-fun b!5934645 () Bool)

(declare-fun res!2486102 () Bool)

(assert (=> b!5934645 (=> res!2486102 e!3631841)))

(declare-fun generalisedConcat!1578 (List!64242) Regex!15981)

(assert (=> b!5934645 (= res!2486102 (not (= r!7292 (generalisedConcat!1578 (exprs!5865 (h!70567 zl!343))))))))

(declare-fun b!5934646 () Bool)

(assert (=> b!5934646 (= e!3631844 tp_is_empty!41215)))

(declare-fun b!5934647 () Bool)

(declare-fun res!2486093 () Bool)

(assert (=> b!5934647 (=> (not res!2486093) (not e!3631836))))

(declare-fun toList!9765 ((InoxSet Context!10730)) List!64243)

(assert (=> b!5934647 (= res!2486093 (= (toList!9765 z!1189) zl!343))))

(declare-fun b!5934648 () Bool)

(declare-fun lt!2311089 () Context!10730)

(declare-fun inv!83199 (Context!10730) Bool)

(assert (=> b!5934648 (= e!3631837 (inv!83199 lt!2311089))))

(declare-fun lt!2311084 () (InoxSet Context!10730))

(assert (=> b!5934648 (= (flatMap!1494 lt!2311084 lambda!323636) (derivationStepZipperUp!1157 lt!2311089 (h!70568 s!2326)))))

(declare-fun lt!2311097 () Unit!157233)

(assert (=> b!5934648 (= lt!2311097 (lemmaFlatMapOnSingletonSet!1020 lt!2311084 lt!2311089 lambda!323636))))

(declare-fun lt!2311093 () (InoxSet Context!10730))

(declare-fun lt!2311091 () Context!10730)

(assert (=> b!5934648 (= (flatMap!1494 lt!2311093 lambda!323636) (derivationStepZipperUp!1157 lt!2311091 (h!70568 s!2326)))))

(declare-fun lt!2311092 () Unit!157233)

(assert (=> b!5934648 (= lt!2311092 (lemmaFlatMapOnSingletonSet!1020 lt!2311093 lt!2311091 lambda!323636))))

(declare-fun lt!2311088 () (InoxSet Context!10730))

(assert (=> b!5934648 (= lt!2311088 (derivationStepZipperUp!1157 lt!2311089 (h!70568 s!2326)))))

(declare-fun lt!2311095 () (InoxSet Context!10730))

(assert (=> b!5934648 (= lt!2311095 (derivationStepZipperUp!1157 lt!2311091 (h!70568 s!2326)))))

(assert (=> b!5934648 (= lt!2311084 (store ((as const (Array Context!10730 Bool)) false) lt!2311089 true))))

(declare-fun lt!2311087 () List!64242)

(assert (=> b!5934648 (= lt!2311089 (Context!10731 lt!2311087))))

(assert (=> b!5934648 (= lt!2311093 (store ((as const (Array Context!10730 Bool)) false) lt!2311091 true))))

(assert (=> b!5934648 (= lt!2311091 (Context!10731 (Cons!64118 (regOne!32474 r!7292) lt!2311087)))))

(assert (=> b!5934648 (= lt!2311087 (Cons!64118 (regTwo!32474 r!7292) Nil!64118))))

(declare-fun b!5934649 () Bool)

(declare-fun res!2486092 () Bool)

(assert (=> b!5934649 (=> res!2486092 e!3631841)))

(get-info :version)

(assert (=> b!5934649 (= res!2486092 (or ((_ is EmptyExpr!15981) r!7292) ((_ is EmptyLang!15981) r!7292) ((_ is ElementMatch!15981) r!7292) ((_ is Union!15981) r!7292) (not ((_ is Concat!24826) r!7292))))))

(declare-fun b!5934650 () Bool)

(assert (=> b!5934650 (= e!3631836 (not e!3631841))))

(declare-fun res!2486090 () Bool)

(assert (=> b!5934650 (=> res!2486090 e!3631841)))

(assert (=> b!5934650 (= res!2486090 (not ((_ is Cons!64119) zl!343)))))

(declare-fun lt!2311094 () Bool)

(declare-fun matchRSpec!3082 (Regex!15981 List!64244) Bool)

(assert (=> b!5934650 (= lt!2311094 (matchRSpec!3082 r!7292 s!2326))))

(declare-fun matchR!8164 (Regex!15981 List!64244) Bool)

(assert (=> b!5934650 (= lt!2311094 (matchR!8164 r!7292 s!2326))))

(declare-fun lt!2311082 () Unit!157233)

(declare-fun mainMatchTheorem!3082 (Regex!15981 List!64244) Unit!157233)

(assert (=> b!5934650 (= lt!2311082 (mainMatchTheorem!3082 r!7292 s!2326))))

(declare-fun b!5934651 () Bool)

(assert (=> b!5934651 (= e!3631840 e!3631842)))

(declare-fun res!2486094 () Bool)

(assert (=> b!5934651 (=> res!2486094 e!3631842)))

(declare-fun lt!2311083 () (InoxSet Context!10730))

(assert (=> b!5934651 (= res!2486094 (not (= lt!2311083 lt!2311090)))))

(declare-fun derivationStepZipperDown!1231 (Regex!15981 Context!10730 C!32232) (InoxSet Context!10730))

(assert (=> b!5934651 (= lt!2311090 (derivationStepZipperDown!1231 r!7292 (Context!10731 Nil!64118) (h!70568 s!2326)))))

(assert (=> b!5934651 (= lt!2311083 (derivationStepZipperUp!1157 (Context!10731 (Cons!64118 r!7292 Nil!64118)) (h!70568 s!2326)))))

(declare-fun b!5934652 () Bool)

(declare-fun tp!1651149 () Bool)

(assert (=> b!5934652 (= e!3631843 (and (inv!83199 (h!70567 zl!343)) e!3631839 tp!1651149))))

(declare-fun b!5934653 () Bool)

(declare-fun res!2486095 () Bool)

(assert (=> b!5934653 (=> res!2486095 e!3631841)))

(assert (=> b!5934653 (= res!2486095 (not ((_ is Cons!64118) (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5934654 () Bool)

(declare-fun tp!1651150 () Bool)

(assert (=> b!5934654 (= e!3631844 tp!1651150)))

(declare-fun b!5934655 () Bool)

(declare-fun tp!1651147 () Bool)

(declare-fun tp!1651145 () Bool)

(assert (=> b!5934655 (= e!3631844 (and tp!1651147 tp!1651145))))

(declare-fun b!5934656 () Bool)

(declare-fun res!2486099 () Bool)

(assert (=> b!5934656 (=> (not res!2486099) (not e!3631836))))

(declare-fun unfocusZipper!1723 (List!64243) Regex!15981)

(assert (=> b!5934656 (= res!2486099 (= r!7292 (unfocusZipper!1723 zl!343)))))

(assert (=> b!5934657 (= e!3631841 e!3631840)))

(declare-fun res!2486098 () Bool)

(assert (=> b!5934657 (=> res!2486098 e!3631840)))

(declare-fun lt!2311096 () Bool)

(assert (=> b!5934657 (= res!2486098 (or (not (= lt!2311094 lt!2311096)) ((_ is Nil!64120) s!2326)))))

(declare-fun Exists!3051 (Int) Bool)

(assert (=> b!5934657 (= (Exists!3051 lambda!323634) (Exists!3051 lambda!323635))))

(declare-fun lt!2311098 () Unit!157233)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1588 (Regex!15981 Regex!15981 List!64244) Unit!157233)

(assert (=> b!5934657 (= lt!2311098 (lemmaExistCutMatchRandMatchRSpecEquivalent!1588 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326))))

(assert (=> b!5934657 (= lt!2311096 (Exists!3051 lambda!323634))))

(declare-datatypes ((tuple2!65920 0))(
  ( (tuple2!65921 (_1!36263 List!64244) (_2!36263 List!64244)) )
))
(declare-datatypes ((Option!15872 0))(
  ( (None!15871) (Some!15871 (v!51971 tuple2!65920)) )
))
(declare-fun isDefined!12575 (Option!15872) Bool)

(declare-fun findConcatSeparation!2286 (Regex!15981 Regex!15981 List!64244 List!64244 List!64244) Option!15872)

(assert (=> b!5934657 (= lt!2311096 (isDefined!12575 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326)))))

(declare-fun lt!2311085 () Unit!157233)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2050 (Regex!15981 Regex!15981 List!64244) Unit!157233)

(assert (=> b!5934657 (= lt!2311085 (lemmaFindConcatSeparationEquivalentToExists!2050 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326))))

(declare-fun b!5934658 () Bool)

(declare-fun res!2486091 () Bool)

(assert (=> b!5934658 (=> res!2486091 e!3631841)))

(declare-fun isEmpty!35986 (List!64243) Bool)

(assert (=> b!5934658 (= res!2486091 (not (isEmpty!35986 (t!377644 zl!343))))))

(declare-fun setElem!40290 () Context!10730)

(declare-fun setNonEmpty!40290 () Bool)

(declare-fun tp!1651148 () Bool)

(assert (=> setNonEmpty!40290 (= setRes!40290 (and tp!1651148 (inv!83199 setElem!40290) e!3631845))))

(declare-fun setRest!40290 () (InoxSet Context!10730))

(assert (=> setNonEmpty!40290 (= z!1189 ((_ map or) (store ((as const (Array Context!10730 Bool)) false) setElem!40290 true) setRest!40290))))

(assert (= (and start!603080 res!2486096) b!5934647))

(assert (= (and b!5934647 res!2486093) b!5934656))

(assert (= (and b!5934656 res!2486099) b!5934650))

(assert (= (and b!5934650 (not res!2486090)) b!5934658))

(assert (= (and b!5934658 (not res!2486091)) b!5934645))

(assert (= (and b!5934645 (not res!2486102)) b!5934653))

(assert (= (and b!5934653 (not res!2486095)) b!5934643))

(assert (= (and b!5934643 (not res!2486097)) b!5934649))

(assert (= (and b!5934649 (not res!2486092)) b!5934657))

(assert (= (and b!5934657 (not res!2486098)) b!5934638))

(assert (= (and b!5934638 (not res!2486100)) b!5934651))

(assert (= (and b!5934651 (not res!2486094)) b!5934641))

(assert (= (and b!5934641 (not res!2486101)) b!5934648))

(assert (= (and start!603080 ((_ is ElementMatch!15981) r!7292)) b!5934646))

(assert (= (and start!603080 ((_ is Concat!24826) r!7292)) b!5934644))

(assert (= (and start!603080 ((_ is Star!15981) r!7292)) b!5934654))

(assert (= (and start!603080 ((_ is Union!15981) r!7292)) b!5934655))

(assert (= (and start!603080 condSetEmpty!40290) setIsEmpty!40290))

(assert (= (and start!603080 (not condSetEmpty!40290)) setNonEmpty!40290))

(assert (= setNonEmpty!40290 b!5934640))

(assert (= b!5934652 b!5934642))

(assert (= (and start!603080 ((_ is Cons!64119) zl!343)) b!5934652))

(assert (= (and start!603080 ((_ is Cons!64120) s!2326)) b!5934639))

(declare-fun m!6825828 () Bool)

(assert (=> b!5934648 m!6825828))

(declare-fun m!6825830 () Bool)

(assert (=> b!5934648 m!6825830))

(declare-fun m!6825832 () Bool)

(assert (=> b!5934648 m!6825832))

(declare-fun m!6825834 () Bool)

(assert (=> b!5934648 m!6825834))

(declare-fun m!6825836 () Bool)

(assert (=> b!5934648 m!6825836))

(declare-fun m!6825838 () Bool)

(assert (=> b!5934648 m!6825838))

(declare-fun m!6825840 () Bool)

(assert (=> b!5934648 m!6825840))

(declare-fun m!6825842 () Bool)

(assert (=> b!5934648 m!6825842))

(declare-fun m!6825844 () Bool)

(assert (=> b!5934648 m!6825844))

(declare-fun m!6825846 () Bool)

(assert (=> b!5934652 m!6825846))

(declare-fun m!6825848 () Bool)

(assert (=> start!603080 m!6825848))

(declare-fun m!6825850 () Bool)

(assert (=> b!5934651 m!6825850))

(declare-fun m!6825852 () Bool)

(assert (=> b!5934651 m!6825852))

(declare-fun m!6825854 () Bool)

(assert (=> setNonEmpty!40290 m!6825854))

(declare-fun m!6825856 () Bool)

(assert (=> b!5934641 m!6825856))

(declare-fun m!6825858 () Bool)

(assert (=> b!5934641 m!6825858))

(declare-fun m!6825860 () Bool)

(assert (=> b!5934641 m!6825860))

(declare-fun m!6825862 () Bool)

(assert (=> b!5934641 m!6825862))

(declare-fun m!6825864 () Bool)

(assert (=> b!5934657 m!6825864))

(declare-fun m!6825866 () Bool)

(assert (=> b!5934657 m!6825866))

(declare-fun m!6825868 () Bool)

(assert (=> b!5934657 m!6825868))

(declare-fun m!6825870 () Bool)

(assert (=> b!5934657 m!6825870))

(declare-fun m!6825872 () Bool)

(assert (=> b!5934657 m!6825872))

(assert (=> b!5934657 m!6825870))

(assert (=> b!5934657 m!6825866))

(declare-fun m!6825874 () Bool)

(assert (=> b!5934657 m!6825874))

(declare-fun m!6825876 () Bool)

(assert (=> b!5934650 m!6825876))

(declare-fun m!6825878 () Bool)

(assert (=> b!5934650 m!6825878))

(declare-fun m!6825880 () Bool)

(assert (=> b!5934650 m!6825880))

(declare-fun m!6825882 () Bool)

(assert (=> b!5934638 m!6825882))

(declare-fun m!6825884 () Bool)

(assert (=> b!5934647 m!6825884))

(declare-fun m!6825886 () Bool)

(assert (=> b!5934658 m!6825886))

(declare-fun m!6825888 () Bool)

(assert (=> b!5934656 m!6825888))

(declare-fun m!6825890 () Bool)

(assert (=> b!5934645 m!6825890))

(declare-fun m!6825892 () Bool)

(assert (=> b!5934643 m!6825892))

(assert (=> b!5934643 m!6825892))

(declare-fun m!6825894 () Bool)

(assert (=> b!5934643 m!6825894))

(check-sat (not b!5934643) (not b!5934647) (not b!5934655) (not b!5934642) (not b!5934645) tp_is_empty!41215 (not b!5934648) (not start!603080) (not b!5934639) (not b!5934656) (not b!5934638) (not b!5934652) (not b!5934654) (not b!5934640) (not b!5934641) (not b!5934651) (not b!5934658) (not b!5934644) (not b!5934657) (not b!5934650) (not setNonEmpty!40290))
(check-sat)
(get-model)

(declare-fun b!5934710 () Bool)

(declare-fun e!3631886 () Bool)

(declare-fun call!471354 () Bool)

(assert (=> b!5934710 (= e!3631886 call!471354)))

(declare-fun bm!471347 () Bool)

(declare-fun call!471352 () Bool)

(declare-fun call!471353 () Bool)

(assert (=> bm!471347 (= call!471352 call!471353)))

(declare-fun bm!471348 () Bool)

(declare-fun c!1055060 () Bool)

(assert (=> bm!471348 (= call!471354 (validRegex!7717 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))))))

(declare-fun bm!471349 () Bool)

(declare-fun c!1055061 () Bool)

(assert (=> bm!471349 (= call!471353 (validRegex!7717 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))

(declare-fun b!5934711 () Bool)

(declare-fun res!2486132 () Bool)

(declare-fun e!3631881 () Bool)

(assert (=> b!5934711 (=> (not res!2486132) (not e!3631881))))

(assert (=> b!5934711 (= res!2486132 call!471352)))

(declare-fun e!3631882 () Bool)

(assert (=> b!5934711 (= e!3631882 e!3631881)))

(declare-fun b!5934713 () Bool)

(declare-fun e!3631885 () Bool)

(assert (=> b!5934713 (= e!3631885 e!3631886)))

(declare-fun res!2486128 () Bool)

(assert (=> b!5934713 (=> (not res!2486128) (not e!3631886))))

(assert (=> b!5934713 (= res!2486128 call!471352)))

(declare-fun b!5934714 () Bool)

(declare-fun res!2486131 () Bool)

(assert (=> b!5934714 (=> res!2486131 e!3631885)))

(assert (=> b!5934714 (= res!2486131 (not ((_ is Concat!24826) r!7292)))))

(assert (=> b!5934714 (= e!3631882 e!3631885)))

(declare-fun b!5934715 () Bool)

(declare-fun e!3631884 () Bool)

(declare-fun e!3631883 () Bool)

(assert (=> b!5934715 (= e!3631884 e!3631883)))

(assert (=> b!5934715 (= c!1055061 ((_ is Star!15981) r!7292))))

(declare-fun b!5934716 () Bool)

(assert (=> b!5934716 (= e!3631883 e!3631882)))

(assert (=> b!5934716 (= c!1055060 ((_ is Union!15981) r!7292))))

(declare-fun b!5934712 () Bool)

(assert (=> b!5934712 (= e!3631881 call!471354)))

(declare-fun d!1860442 () Bool)

(declare-fun res!2486129 () Bool)

(assert (=> d!1860442 (=> res!2486129 e!3631884)))

(assert (=> d!1860442 (= res!2486129 ((_ is ElementMatch!15981) r!7292))))

(assert (=> d!1860442 (= (validRegex!7717 r!7292) e!3631884)))

(declare-fun b!5934717 () Bool)

(declare-fun e!3631887 () Bool)

(assert (=> b!5934717 (= e!3631883 e!3631887)))

(declare-fun res!2486130 () Bool)

(declare-fun nullable!5976 (Regex!15981) Bool)

(assert (=> b!5934717 (= res!2486130 (not (nullable!5976 (reg!16310 r!7292))))))

(assert (=> b!5934717 (=> (not res!2486130) (not e!3631887))))

(declare-fun b!5934718 () Bool)

(assert (=> b!5934718 (= e!3631887 call!471353)))

(assert (= (and d!1860442 (not res!2486129)) b!5934715))

(assert (= (and b!5934715 c!1055061) b!5934717))

(assert (= (and b!5934715 (not c!1055061)) b!5934716))

(assert (= (and b!5934717 res!2486130) b!5934718))

(assert (= (and b!5934716 c!1055060) b!5934711))

(assert (= (and b!5934716 (not c!1055060)) b!5934714))

(assert (= (and b!5934711 res!2486132) b!5934712))

(assert (= (and b!5934714 (not res!2486131)) b!5934713))

(assert (= (and b!5934713 res!2486128) b!5934710))

(assert (= (or b!5934712 b!5934710) bm!471348))

(assert (= (or b!5934711 b!5934713) bm!471347))

(assert (= (or b!5934718 bm!471347) bm!471349))

(declare-fun m!6825902 () Bool)

(assert (=> bm!471348 m!6825902))

(declare-fun m!6825904 () Bool)

(assert (=> bm!471349 m!6825904))

(declare-fun m!6825906 () Bool)

(assert (=> b!5934717 m!6825906))

(assert (=> start!603080 d!1860442))

(declare-fun b!5934822 () Bool)

(declare-fun c!1055106 () Bool)

(assert (=> b!5934822 (= c!1055106 ((_ is Star!15981) r!7292))))

(declare-fun e!3631952 () (InoxSet Context!10730))

(declare-fun e!3631950 () (InoxSet Context!10730))

(assert (=> b!5934822 (= e!3631952 e!3631950)))

(declare-fun call!471391 () List!64242)

(declare-fun c!1055109 () Bool)

(declare-fun call!471390 () (InoxSet Context!10730))

(declare-fun bm!471383 () Bool)

(assert (=> bm!471383 (= call!471390 (derivationStepZipperDown!1231 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292)) (ite c!1055109 (Context!10731 Nil!64118) (Context!10731 call!471391)) (h!70568 s!2326)))))

(declare-fun b!5934823 () Bool)

(declare-fun e!3631949 () (InoxSet Context!10730))

(declare-fun call!471392 () (InoxSet Context!10730))

(assert (=> b!5934823 (= e!3631949 ((_ map or) call!471390 call!471392))))

(declare-fun bm!471384 () Bool)

(declare-fun call!471389 () (InoxSet Context!10730))

(declare-fun call!471388 () (InoxSet Context!10730))

(assert (=> bm!471384 (= call!471389 call!471388)))

(declare-fun b!5934824 () Bool)

(declare-fun e!3631948 () Bool)

(assert (=> b!5934824 (= e!3631948 (nullable!5976 (regOne!32474 r!7292)))))

(declare-fun call!471393 () List!64242)

(declare-fun bm!471385 () Bool)

(declare-fun c!1055107 () Bool)

(declare-fun c!1055105 () Bool)

(assert (=> bm!471385 (= call!471392 (derivationStepZipperDown!1231 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292)))) (ite (or c!1055109 c!1055107) (Context!10731 Nil!64118) (Context!10731 call!471393)) (h!70568 s!2326)))))

(declare-fun b!5934825 () Bool)

(declare-fun e!3631951 () (InoxSet Context!10730))

(assert (=> b!5934825 (= e!3631951 e!3631949)))

(assert (=> b!5934825 (= c!1055109 ((_ is Union!15981) r!7292))))

(declare-fun b!5934826 () Bool)

(assert (=> b!5934826 (= c!1055107 e!3631948)))

(declare-fun res!2486150 () Bool)

(assert (=> b!5934826 (=> (not res!2486150) (not e!3631948))))

(assert (=> b!5934826 (= res!2486150 ((_ is Concat!24826) r!7292))))

(declare-fun e!3631953 () (InoxSet Context!10730))

(assert (=> b!5934826 (= e!3631949 e!3631953)))

(declare-fun bm!471386 () Bool)

(assert (=> bm!471386 (= call!471393 call!471391)))

(declare-fun b!5934827 () Bool)

(assert (=> b!5934827 (= e!3631951 (store ((as const (Array Context!10730 Bool)) false) (Context!10731 Nil!64118) true))))

(declare-fun b!5934828 () Bool)

(assert (=> b!5934828 (= e!3631953 e!3631952)))

(assert (=> b!5934828 (= c!1055105 ((_ is Concat!24826) r!7292))))

(declare-fun b!5934829 () Bool)

(assert (=> b!5934829 (= e!3631952 call!471389)))

(declare-fun d!1860448 () Bool)

(declare-fun c!1055108 () Bool)

(assert (=> d!1860448 (= c!1055108 (and ((_ is ElementMatch!15981) r!7292) (= (c!1055049 r!7292) (h!70568 s!2326))))))

(assert (=> d!1860448 (= (derivationStepZipperDown!1231 r!7292 (Context!10731 Nil!64118) (h!70568 s!2326)) e!3631951)))

(declare-fun b!5934830 () Bool)

(assert (=> b!5934830 (= e!3631950 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5934831 () Bool)

(assert (=> b!5934831 (= e!3631950 call!471389)))

(declare-fun bm!471387 () Bool)

(assert (=> bm!471387 (= call!471388 call!471392)))

(declare-fun b!5934832 () Bool)

(assert (=> b!5934832 (= e!3631953 ((_ map or) call!471390 call!471388))))

(declare-fun bm!471388 () Bool)

(declare-fun $colon$colon!1868 (List!64242 Regex!15981) List!64242)

(assert (=> bm!471388 (= call!471391 ($colon$colon!1868 (exprs!5865 (Context!10731 Nil!64118)) (ite (or c!1055107 c!1055105) (regTwo!32474 r!7292) r!7292)))))

(assert (= (and d!1860448 c!1055108) b!5934827))

(assert (= (and d!1860448 (not c!1055108)) b!5934825))

(assert (= (and b!5934825 c!1055109) b!5934823))

(assert (= (and b!5934825 (not c!1055109)) b!5934826))

(assert (= (and b!5934826 res!2486150) b!5934824))

(assert (= (and b!5934826 c!1055107) b!5934832))

(assert (= (and b!5934826 (not c!1055107)) b!5934828))

(assert (= (and b!5934828 c!1055105) b!5934829))

(assert (= (and b!5934828 (not c!1055105)) b!5934822))

(assert (= (and b!5934822 c!1055106) b!5934831))

(assert (= (and b!5934822 (not c!1055106)) b!5934830))

(assert (= (or b!5934829 b!5934831) bm!471386))

(assert (= (or b!5934829 b!5934831) bm!471384))

(assert (= (or b!5934832 bm!471386) bm!471388))

(assert (= (or b!5934832 bm!471384) bm!471387))

(assert (= (or b!5934823 bm!471387) bm!471385))

(assert (= (or b!5934823 b!5934832) bm!471383))

(declare-fun m!6825948 () Bool)

(assert (=> bm!471383 m!6825948))

(declare-fun m!6825950 () Bool)

(assert (=> b!5934824 m!6825950))

(declare-fun m!6825952 () Bool)

(assert (=> b!5934827 m!6825952))

(declare-fun m!6825954 () Bool)

(assert (=> bm!471385 m!6825954))

(declare-fun m!6825956 () Bool)

(assert (=> bm!471388 m!6825956))

(assert (=> b!5934651 d!1860448))

(declare-fun b!5934850 () Bool)

(declare-fun e!3631963 () Bool)

(assert (=> b!5934850 (= e!3631963 (nullable!5976 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))

(declare-fun b!5934851 () Bool)

(declare-fun e!3631964 () (InoxSet Context!10730))

(assert (=> b!5934851 (= e!3631964 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471392 () Bool)

(declare-fun call!471397 () (InoxSet Context!10730))

(assert (=> bm!471392 (= call!471397 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (h!70568 s!2326)))))

(declare-fun b!5934852 () Bool)

(assert (=> b!5934852 (= e!3631964 call!471397)))

(declare-fun b!5934853 () Bool)

(declare-fun e!3631965 () (InoxSet Context!10730))

(assert (=> b!5934853 (= e!3631965 e!3631964)))

(declare-fun c!1055119 () Bool)

(assert (=> b!5934853 (= c!1055119 ((_ is Cons!64118) (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))

(declare-fun b!5934854 () Bool)

(assert (=> b!5934854 (= e!3631965 ((_ map or) call!471397 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (h!70568 s!2326))))))

(declare-fun d!1860460 () Bool)

(declare-fun c!1055118 () Bool)

(assert (=> d!1860460 (= c!1055118 e!3631963)))

(declare-fun res!2486154 () Bool)

(assert (=> d!1860460 (=> (not res!2486154) (not e!3631963))))

(assert (=> d!1860460 (= res!2486154 ((_ is Cons!64118) (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))

(assert (=> d!1860460 (= (derivationStepZipperUp!1157 (Context!10731 (Cons!64118 r!7292 Nil!64118)) (h!70568 s!2326)) e!3631965)))

(assert (= (and d!1860460 res!2486154) b!5934850))

(assert (= (and d!1860460 c!1055118) b!5934854))

(assert (= (and d!1860460 (not c!1055118)) b!5934853))

(assert (= (and b!5934853 c!1055119) b!5934852))

(assert (= (and b!5934853 (not c!1055119)) b!5934851))

(assert (= (or b!5934854 b!5934852) bm!471392))

(declare-fun m!6825974 () Bool)

(assert (=> b!5934850 m!6825974))

(declare-fun m!6825976 () Bool)

(assert (=> bm!471392 m!6825976))

(declare-fun m!6825978 () Bool)

(assert (=> b!5934854 m!6825978))

(assert (=> b!5934651 d!1860460))

(declare-fun bs!1403970 () Bool)

(declare-fun d!1860472 () Bool)

(assert (= bs!1403970 (and d!1860472 b!5934641)))

(declare-fun lambda!323649 () Int)

(assert (=> bs!1403970 (= lambda!323649 lambda!323636)))

(assert (=> d!1860472 true))

(assert (=> d!1860472 (= (derivationStepZipper!1962 z!1189 (h!70568 s!2326)) (flatMap!1494 z!1189 lambda!323649))))

(declare-fun bs!1403971 () Bool)

(assert (= bs!1403971 d!1860472))

(declare-fun m!6825980 () Bool)

(assert (=> bs!1403971 m!6825980))

(assert (=> b!5934641 d!1860472))

(declare-fun d!1860474 () Bool)

(declare-fun choose!44728 ((InoxSet Context!10730) Int) (InoxSet Context!10730))

(assert (=> d!1860474 (= (flatMap!1494 z!1189 lambda!323636) (choose!44728 z!1189 lambda!323636))))

(declare-fun bs!1403972 () Bool)

(assert (= bs!1403972 d!1860474))

(declare-fun m!6825982 () Bool)

(assert (=> bs!1403972 m!6825982))

(assert (=> b!5934641 d!1860474))

(declare-fun b!5934889 () Bool)

(declare-fun e!3631984 () Bool)

(assert (=> b!5934889 (= e!3631984 (nullable!5976 (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5934890 () Bool)

(declare-fun e!3631985 () (InoxSet Context!10730))

(assert (=> b!5934890 (= e!3631985 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471397 () Bool)

(declare-fun call!471402 () (InoxSet Context!10730))

(assert (=> bm!471397 (= call!471402 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (h!70567 zl!343))) (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))) (h!70568 s!2326)))))

(declare-fun b!5934891 () Bool)

(assert (=> b!5934891 (= e!3631985 call!471402)))

(declare-fun b!5934892 () Bool)

(declare-fun e!3631986 () (InoxSet Context!10730))

(assert (=> b!5934892 (= e!3631986 e!3631985)))

(declare-fun c!1055131 () Bool)

(assert (=> b!5934892 (= c!1055131 ((_ is Cons!64118) (exprs!5865 (h!70567 zl!343))))))

(declare-fun b!5934893 () Bool)

(assert (=> b!5934893 (= e!3631986 ((_ map or) call!471402 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))) (h!70568 s!2326))))))

(declare-fun d!1860476 () Bool)

(declare-fun c!1055130 () Bool)

(assert (=> d!1860476 (= c!1055130 e!3631984)))

(declare-fun res!2486171 () Bool)

(assert (=> d!1860476 (=> (not res!2486171) (not e!3631984))))

(assert (=> d!1860476 (= res!2486171 ((_ is Cons!64118) (exprs!5865 (h!70567 zl!343))))))

(assert (=> d!1860476 (= (derivationStepZipperUp!1157 (h!70567 zl!343) (h!70568 s!2326)) e!3631986)))

(assert (= (and d!1860476 res!2486171) b!5934889))

(assert (= (and d!1860476 c!1055130) b!5934893))

(assert (= (and d!1860476 (not c!1055130)) b!5934892))

(assert (= (and b!5934892 c!1055131) b!5934891))

(assert (= (and b!5934892 (not c!1055131)) b!5934890))

(assert (= (or b!5934893 b!5934891) bm!471397))

(declare-fun m!6825984 () Bool)

(assert (=> b!5934889 m!6825984))

(declare-fun m!6825986 () Bool)

(assert (=> bm!471397 m!6825986))

(declare-fun m!6825988 () Bool)

(assert (=> b!5934893 m!6825988))

(assert (=> b!5934641 d!1860476))

(declare-fun d!1860478 () Bool)

(declare-fun dynLambda!25076 (Int Context!10730) (InoxSet Context!10730))

(assert (=> d!1860478 (= (flatMap!1494 z!1189 lambda!323636) (dynLambda!25076 lambda!323636 (h!70567 zl!343)))))

(declare-fun lt!2311110 () Unit!157233)

(declare-fun choose!44729 ((InoxSet Context!10730) Context!10730 Int) Unit!157233)

(assert (=> d!1860478 (= lt!2311110 (choose!44729 z!1189 (h!70567 zl!343) lambda!323636))))

(assert (=> d!1860478 (= z!1189 (store ((as const (Array Context!10730 Bool)) false) (h!70567 zl!343) true))))

(assert (=> d!1860478 (= (lemmaFlatMapOnSingletonSet!1020 z!1189 (h!70567 zl!343) lambda!323636) lt!2311110)))

(declare-fun b_lambda!222895 () Bool)

(assert (=> (not b_lambda!222895) (not d!1860478)))

(declare-fun bs!1403976 () Bool)

(assert (= bs!1403976 d!1860478))

(assert (=> bs!1403976 m!6825858))

(declare-fun m!6825998 () Bool)

(assert (=> bs!1403976 m!6825998))

(declare-fun m!6826000 () Bool)

(assert (=> bs!1403976 m!6826000))

(declare-fun m!6826002 () Bool)

(assert (=> bs!1403976 m!6826002))

(assert (=> b!5934641 d!1860478))

(declare-fun bs!1403987 () Bool)

(declare-fun b!5935023 () Bool)

(assert (= bs!1403987 (and b!5935023 b!5934657)))

(declare-fun lambda!323665 () Int)

(assert (=> bs!1403987 (not (= lambda!323665 lambda!323634))))

(assert (=> bs!1403987 (not (= lambda!323665 lambda!323635))))

(assert (=> b!5935023 true))

(assert (=> b!5935023 true))

(declare-fun bs!1403991 () Bool)

(declare-fun b!5935020 () Bool)

(assert (= bs!1403991 (and b!5935020 b!5934657)))

(declare-fun lambda!323667 () Int)

(assert (=> bs!1403991 (not (= lambda!323667 lambda!323634))))

(assert (=> bs!1403991 (= lambda!323667 lambda!323635)))

(declare-fun bs!1403992 () Bool)

(assert (= bs!1403992 (and b!5935020 b!5935023)))

(assert (=> bs!1403992 (not (= lambda!323667 lambda!323665))))

(assert (=> b!5935020 true))

(assert (=> b!5935020 true))

(declare-fun b!5935013 () Bool)

(declare-fun e!3632058 () Bool)

(declare-fun e!3632057 () Bool)

(assert (=> b!5935013 (= e!3632058 e!3632057)))

(declare-fun c!1055170 () Bool)

(assert (=> b!5935013 (= c!1055170 ((_ is Star!15981) r!7292))))

(declare-fun b!5935015 () Bool)

(declare-fun e!3632059 () Bool)

(assert (=> b!5935015 (= e!3632059 (matchRSpec!3082 (regTwo!32475 r!7292) s!2326))))

(declare-fun b!5935016 () Bool)

(declare-fun e!3632056 () Bool)

(assert (=> b!5935016 (= e!3632056 (= s!2326 (Cons!64120 (c!1055049 r!7292) Nil!64120)))))

(declare-fun b!5935017 () Bool)

(declare-fun res!2486222 () Bool)

(declare-fun e!3632054 () Bool)

(assert (=> b!5935017 (=> res!2486222 e!3632054)))

(declare-fun call!471413 () Bool)

(assert (=> b!5935017 (= res!2486222 call!471413)))

(assert (=> b!5935017 (= e!3632057 e!3632054)))

(declare-fun b!5935018 () Bool)

(declare-fun e!3632053 () Bool)

(assert (=> b!5935018 (= e!3632053 call!471413)))

(declare-fun b!5935019 () Bool)

(declare-fun c!1055169 () Bool)

(assert (=> b!5935019 (= c!1055169 ((_ is ElementMatch!15981) r!7292))))

(declare-fun e!3632055 () Bool)

(assert (=> b!5935019 (= e!3632055 e!3632056)))

(declare-fun bm!471407 () Bool)

(declare-fun isEmpty!35988 (List!64244) Bool)

(assert (=> bm!471407 (= call!471413 (isEmpty!35988 s!2326))))

(declare-fun call!471412 () Bool)

(assert (=> b!5935020 (= e!3632057 call!471412)))

(declare-fun b!5935014 () Bool)

(declare-fun c!1055168 () Bool)

(assert (=> b!5935014 (= c!1055168 ((_ is Union!15981) r!7292))))

(assert (=> b!5935014 (= e!3632056 e!3632058)))

(declare-fun d!1860482 () Bool)

(declare-fun c!1055167 () Bool)

(assert (=> d!1860482 (= c!1055167 ((_ is EmptyExpr!15981) r!7292))))

(assert (=> d!1860482 (= (matchRSpec!3082 r!7292 s!2326) e!3632053)))

(declare-fun b!5935021 () Bool)

(assert (=> b!5935021 (= e!3632053 e!3632055)))

(declare-fun res!2486221 () Bool)

(assert (=> b!5935021 (= res!2486221 (not ((_ is EmptyLang!15981) r!7292)))))

(assert (=> b!5935021 (=> (not res!2486221) (not e!3632055))))

(declare-fun b!5935022 () Bool)

(assert (=> b!5935022 (= e!3632058 e!3632059)))

(declare-fun res!2486223 () Bool)

(assert (=> b!5935022 (= res!2486223 (matchRSpec!3082 (regOne!32475 r!7292) s!2326))))

(assert (=> b!5935022 (=> res!2486223 e!3632059)))

(declare-fun bm!471408 () Bool)

(assert (=> bm!471408 (= call!471412 (Exists!3051 (ite c!1055170 lambda!323665 lambda!323667)))))

(assert (=> b!5935023 (= e!3632054 call!471412)))

(assert (= (and d!1860482 c!1055167) b!5935018))

(assert (= (and d!1860482 (not c!1055167)) b!5935021))

(assert (= (and b!5935021 res!2486221) b!5935019))

(assert (= (and b!5935019 c!1055169) b!5935016))

(assert (= (and b!5935019 (not c!1055169)) b!5935014))

(assert (= (and b!5935014 c!1055168) b!5935022))

(assert (= (and b!5935014 (not c!1055168)) b!5935013))

(assert (= (and b!5935022 (not res!2486223)) b!5935015))

(assert (= (and b!5935013 c!1055170) b!5935017))

(assert (= (and b!5935013 (not c!1055170)) b!5935020))

(assert (= (and b!5935017 (not res!2486222)) b!5935023))

(assert (= (or b!5935023 b!5935020) bm!471408))

(assert (= (or b!5935018 b!5935017) bm!471407))

(declare-fun m!6826046 () Bool)

(assert (=> b!5935015 m!6826046))

(declare-fun m!6826048 () Bool)

(assert (=> bm!471407 m!6826048))

(declare-fun m!6826050 () Bool)

(assert (=> b!5935022 m!6826050))

(declare-fun m!6826052 () Bool)

(assert (=> bm!471408 m!6826052))

(assert (=> b!5934650 d!1860482))

(declare-fun b!5935081 () Bool)

(declare-fun res!2486259 () Bool)

(declare-fun e!3632094 () Bool)

(assert (=> b!5935081 (=> res!2486259 e!3632094)))

(assert (=> b!5935081 (= res!2486259 (not ((_ is ElementMatch!15981) r!7292)))))

(declare-fun e!3632095 () Bool)

(assert (=> b!5935081 (= e!3632095 e!3632094)))

(declare-fun b!5935082 () Bool)

(declare-fun e!3632096 () Bool)

(assert (=> b!5935082 (= e!3632096 (nullable!5976 r!7292))))

(declare-fun b!5935083 () Bool)

(declare-fun e!3632092 () Bool)

(declare-fun head!12503 (List!64244) C!32232)

(assert (=> b!5935083 (= e!3632092 (= (head!12503 s!2326) (c!1055049 r!7292)))))

(declare-fun b!5935084 () Bool)

(declare-fun derivativeStep!4712 (Regex!15981 C!32232) Regex!15981)

(declare-fun tail!11588 (List!64244) List!64244)

(assert (=> b!5935084 (= e!3632096 (matchR!8164 (derivativeStep!4712 r!7292 (head!12503 s!2326)) (tail!11588 s!2326)))))

(declare-fun b!5935085 () Bool)

(declare-fun e!3632093 () Bool)

(declare-fun lt!2311134 () Bool)

(declare-fun call!471416 () Bool)

(assert (=> b!5935085 (= e!3632093 (= lt!2311134 call!471416))))

(declare-fun b!5935087 () Bool)

(declare-fun e!3632091 () Bool)

(assert (=> b!5935087 (= e!3632094 e!3632091)))

(declare-fun res!2486262 () Bool)

(assert (=> b!5935087 (=> (not res!2486262) (not e!3632091))))

(assert (=> b!5935087 (= res!2486262 (not lt!2311134))))

(declare-fun b!5935088 () Bool)

(assert (=> b!5935088 (= e!3632095 (not lt!2311134))))

(declare-fun b!5935089 () Bool)

(declare-fun res!2486261 () Bool)

(assert (=> b!5935089 (=> res!2486261 e!3632094)))

(assert (=> b!5935089 (= res!2486261 e!3632092)))

(declare-fun res!2486257 () Bool)

(assert (=> b!5935089 (=> (not res!2486257) (not e!3632092))))

(assert (=> b!5935089 (= res!2486257 lt!2311134)))

(declare-fun b!5935090 () Bool)

(declare-fun e!3632090 () Bool)

(assert (=> b!5935090 (= e!3632091 e!3632090)))

(declare-fun res!2486258 () Bool)

(assert (=> b!5935090 (=> res!2486258 e!3632090)))

(assert (=> b!5935090 (= res!2486258 call!471416)))

(declare-fun b!5935091 () Bool)

(declare-fun res!2486255 () Bool)

(assert (=> b!5935091 (=> res!2486255 e!3632090)))

(assert (=> b!5935091 (= res!2486255 (not (isEmpty!35988 (tail!11588 s!2326))))))

(declare-fun b!5935092 () Bool)

(assert (=> b!5935092 (= e!3632090 (not (= (head!12503 s!2326) (c!1055049 r!7292))))))

(declare-fun bm!471411 () Bool)

(assert (=> bm!471411 (= call!471416 (isEmpty!35988 s!2326))))

(declare-fun b!5935093 () Bool)

(assert (=> b!5935093 (= e!3632093 e!3632095)))

(declare-fun c!1055185 () Bool)

(assert (=> b!5935093 (= c!1055185 ((_ is EmptyLang!15981) r!7292))))

(declare-fun b!5935094 () Bool)

(declare-fun res!2486260 () Bool)

(assert (=> b!5935094 (=> (not res!2486260) (not e!3632092))))

(assert (=> b!5935094 (= res!2486260 (isEmpty!35988 (tail!11588 s!2326)))))

(declare-fun b!5935086 () Bool)

(declare-fun res!2486256 () Bool)

(assert (=> b!5935086 (=> (not res!2486256) (not e!3632092))))

(assert (=> b!5935086 (= res!2486256 (not call!471416))))

(declare-fun d!1860496 () Bool)

(assert (=> d!1860496 e!3632093))

(declare-fun c!1055186 () Bool)

(assert (=> d!1860496 (= c!1055186 ((_ is EmptyExpr!15981) r!7292))))

(assert (=> d!1860496 (= lt!2311134 e!3632096)))

(declare-fun c!1055184 () Bool)

(assert (=> d!1860496 (= c!1055184 (isEmpty!35988 s!2326))))

(assert (=> d!1860496 (validRegex!7717 r!7292)))

(assert (=> d!1860496 (= (matchR!8164 r!7292 s!2326) lt!2311134)))

(assert (= (and d!1860496 c!1055184) b!5935082))

(assert (= (and d!1860496 (not c!1055184)) b!5935084))

(assert (= (and d!1860496 c!1055186) b!5935085))

(assert (= (and d!1860496 (not c!1055186)) b!5935093))

(assert (= (and b!5935093 c!1055185) b!5935088))

(assert (= (and b!5935093 (not c!1055185)) b!5935081))

(assert (= (and b!5935081 (not res!2486259)) b!5935089))

(assert (= (and b!5935089 res!2486257) b!5935086))

(assert (= (and b!5935086 res!2486256) b!5935094))

(assert (= (and b!5935094 res!2486260) b!5935083))

(assert (= (and b!5935089 (not res!2486261)) b!5935087))

(assert (= (and b!5935087 res!2486262) b!5935090))

(assert (= (and b!5935090 (not res!2486258)) b!5935091))

(assert (= (and b!5935091 (not res!2486255)) b!5935092))

(assert (= (or b!5935085 b!5935086 b!5935090) bm!471411))

(declare-fun m!6826082 () Bool)

(assert (=> b!5935083 m!6826082))

(declare-fun m!6826084 () Bool)

(assert (=> b!5935094 m!6826084))

(assert (=> b!5935094 m!6826084))

(declare-fun m!6826086 () Bool)

(assert (=> b!5935094 m!6826086))

(assert (=> bm!471411 m!6826048))

(assert (=> d!1860496 m!6826048))

(assert (=> d!1860496 m!6825848))

(assert (=> b!5935084 m!6826082))

(assert (=> b!5935084 m!6826082))

(declare-fun m!6826088 () Bool)

(assert (=> b!5935084 m!6826088))

(assert (=> b!5935084 m!6826084))

(assert (=> b!5935084 m!6826088))

(assert (=> b!5935084 m!6826084))

(declare-fun m!6826090 () Bool)

(assert (=> b!5935084 m!6826090))

(assert (=> b!5935092 m!6826082))

(declare-fun m!6826092 () Bool)

(assert (=> b!5935082 m!6826092))

(assert (=> b!5935091 m!6826084))

(assert (=> b!5935091 m!6826084))

(assert (=> b!5935091 m!6826086))

(assert (=> b!5934650 d!1860496))

(declare-fun d!1860504 () Bool)

(assert (=> d!1860504 (= (matchR!8164 r!7292 s!2326) (matchRSpec!3082 r!7292 s!2326))))

(declare-fun lt!2311140 () Unit!157233)

(declare-fun choose!44732 (Regex!15981 List!64244) Unit!157233)

(assert (=> d!1860504 (= lt!2311140 (choose!44732 r!7292 s!2326))))

(assert (=> d!1860504 (validRegex!7717 r!7292)))

(assert (=> d!1860504 (= (mainMatchTheorem!3082 r!7292 s!2326) lt!2311140)))

(declare-fun bs!1403999 () Bool)

(assert (= bs!1403999 d!1860504))

(assert (=> bs!1403999 m!6825878))

(assert (=> bs!1403999 m!6825876))

(declare-fun m!6826098 () Bool)

(assert (=> bs!1403999 m!6826098))

(assert (=> bs!1403999 m!6825848))

(assert (=> b!5934650 d!1860504))

(declare-fun d!1860508 () Bool)

(declare-fun e!3632101 () Bool)

(assert (=> d!1860508 e!3632101))

(declare-fun res!2486269 () Bool)

(assert (=> d!1860508 (=> (not res!2486269) (not e!3632101))))

(declare-fun lt!2311145 () List!64243)

(declare-fun noDuplicate!1839 (List!64243) Bool)

(assert (=> d!1860508 (= res!2486269 (noDuplicate!1839 lt!2311145))))

(declare-fun choose!44733 ((InoxSet Context!10730)) List!64243)

(assert (=> d!1860508 (= lt!2311145 (choose!44733 z!1189))))

(assert (=> d!1860508 (= (toList!9765 z!1189) lt!2311145)))

(declare-fun b!5935101 () Bool)

(declare-fun content!11820 (List!64243) (InoxSet Context!10730))

(assert (=> b!5935101 (= e!3632101 (= (content!11820 lt!2311145) z!1189))))

(assert (= (and d!1860508 res!2486269) b!5935101))

(declare-fun m!6826100 () Bool)

(assert (=> d!1860508 m!6826100))

(declare-fun m!6826102 () Bool)

(assert (=> d!1860508 m!6826102))

(declare-fun m!6826104 () Bool)

(assert (=> b!5935101 m!6826104))

(assert (=> b!5934647 d!1860508))

(declare-fun b!5935192 () Bool)

(declare-fun e!3632149 () Bool)

(declare-fun lt!2311159 () Option!15872)

(assert (=> b!5935192 (= e!3632149 (not (isDefined!12575 lt!2311159)))))

(declare-fun b!5935193 () Bool)

(declare-fun e!3632148 () Option!15872)

(declare-fun e!3632147 () Option!15872)

(assert (=> b!5935193 (= e!3632148 e!3632147)))

(declare-fun c!1055196 () Bool)

(assert (=> b!5935193 (= c!1055196 ((_ is Nil!64120) s!2326))))

(declare-fun b!5935194 () Bool)

(declare-fun res!2486290 () Bool)

(declare-fun e!3632146 () Bool)

(assert (=> b!5935194 (=> (not res!2486290) (not e!3632146))))

(declare-fun get!22084 (Option!15872) tuple2!65920)

(assert (=> b!5935194 (= res!2486290 (matchR!8164 (regTwo!32474 r!7292) (_2!36263 (get!22084 lt!2311159))))))

(declare-fun d!1860510 () Bool)

(assert (=> d!1860510 e!3632149))

(declare-fun res!2486293 () Bool)

(assert (=> d!1860510 (=> res!2486293 e!3632149)))

(assert (=> d!1860510 (= res!2486293 e!3632146)))

(declare-fun res!2486291 () Bool)

(assert (=> d!1860510 (=> (not res!2486291) (not e!3632146))))

(assert (=> d!1860510 (= res!2486291 (isDefined!12575 lt!2311159))))

(assert (=> d!1860510 (= lt!2311159 e!3632148)))

(declare-fun c!1055195 () Bool)

(declare-fun e!3632145 () Bool)

(assert (=> d!1860510 (= c!1055195 e!3632145)))

(declare-fun res!2486292 () Bool)

(assert (=> d!1860510 (=> (not res!2486292) (not e!3632145))))

(assert (=> d!1860510 (= res!2486292 (matchR!8164 (regOne!32474 r!7292) Nil!64120))))

(assert (=> d!1860510 (validRegex!7717 (regOne!32474 r!7292))))

(assert (=> d!1860510 (= (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326) lt!2311159)))

(declare-fun b!5935195 () Bool)

(declare-fun ++!14078 (List!64244 List!64244) List!64244)

(assert (=> b!5935195 (= e!3632146 (= (++!14078 (_1!36263 (get!22084 lt!2311159)) (_2!36263 (get!22084 lt!2311159))) s!2326))))

(declare-fun b!5935196 () Bool)

(declare-fun res!2486294 () Bool)

(assert (=> b!5935196 (=> (not res!2486294) (not e!3632146))))

(assert (=> b!5935196 (= res!2486294 (matchR!8164 (regOne!32474 r!7292) (_1!36263 (get!22084 lt!2311159))))))

(declare-fun b!5935197 () Bool)

(assert (=> b!5935197 (= e!3632148 (Some!15871 (tuple2!65921 Nil!64120 s!2326)))))

(declare-fun b!5935198 () Bool)

(declare-fun lt!2311160 () Unit!157233)

(declare-fun lt!2311158 () Unit!157233)

(assert (=> b!5935198 (= lt!2311160 lt!2311158)))

(assert (=> b!5935198 (= (++!14078 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (t!377645 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2173 (List!64244 C!32232 List!64244 List!64244) Unit!157233)

(assert (=> b!5935198 (= lt!2311158 (lemmaMoveElementToOtherListKeepsConcatEq!2173 Nil!64120 (h!70568 s!2326) (t!377645 s!2326) s!2326))))

(assert (=> b!5935198 (= e!3632147 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (t!377645 s!2326) s!2326))))

(declare-fun b!5935199 () Bool)

(assert (=> b!5935199 (= e!3632145 (matchR!8164 (regTwo!32474 r!7292) s!2326))))

(declare-fun b!5935200 () Bool)

(assert (=> b!5935200 (= e!3632147 None!15871)))

(assert (= (and d!1860510 res!2486292) b!5935199))

(assert (= (and d!1860510 c!1055195) b!5935197))

(assert (= (and d!1860510 (not c!1055195)) b!5935193))

(assert (= (and b!5935193 c!1055196) b!5935200))

(assert (= (and b!5935193 (not c!1055196)) b!5935198))

(assert (= (and d!1860510 res!2486291) b!5935196))

(assert (= (and b!5935196 res!2486294) b!5935194))

(assert (= (and b!5935194 res!2486290) b!5935195))

(assert (= (and d!1860510 (not res!2486293)) b!5935192))

(declare-fun m!6826146 () Bool)

(assert (=> d!1860510 m!6826146))

(declare-fun m!6826148 () Bool)

(assert (=> d!1860510 m!6826148))

(declare-fun m!6826150 () Bool)

(assert (=> d!1860510 m!6826150))

(declare-fun m!6826152 () Bool)

(assert (=> b!5935194 m!6826152))

(declare-fun m!6826154 () Bool)

(assert (=> b!5935194 m!6826154))

(declare-fun m!6826156 () Bool)

(assert (=> b!5935198 m!6826156))

(assert (=> b!5935198 m!6826156))

(declare-fun m!6826158 () Bool)

(assert (=> b!5935198 m!6826158))

(declare-fun m!6826160 () Bool)

(assert (=> b!5935198 m!6826160))

(assert (=> b!5935198 m!6826156))

(declare-fun m!6826162 () Bool)

(assert (=> b!5935198 m!6826162))

(assert (=> b!5935195 m!6826152))

(declare-fun m!6826164 () Bool)

(assert (=> b!5935195 m!6826164))

(assert (=> b!5935196 m!6826152))

(declare-fun m!6826166 () Bool)

(assert (=> b!5935196 m!6826166))

(assert (=> b!5935192 m!6826146))

(declare-fun m!6826168 () Bool)

(assert (=> b!5935199 m!6826168))

(assert (=> b!5934657 d!1860510))

(declare-fun d!1860536 () Bool)

(declare-fun choose!44735 (Int) Bool)

(assert (=> d!1860536 (= (Exists!3051 lambda!323634) (choose!44735 lambda!323634))))

(declare-fun bs!1404020 () Bool)

(assert (= bs!1404020 d!1860536))

(declare-fun m!6826170 () Bool)

(assert (=> bs!1404020 m!6826170))

(assert (=> b!5934657 d!1860536))

(declare-fun d!1860538 () Bool)

(assert (=> d!1860538 (= (Exists!3051 lambda!323635) (choose!44735 lambda!323635))))

(declare-fun bs!1404021 () Bool)

(assert (= bs!1404021 d!1860538))

(declare-fun m!6826172 () Bool)

(assert (=> bs!1404021 m!6826172))

(assert (=> b!5934657 d!1860538))

(declare-fun bs!1404022 () Bool)

(declare-fun d!1860540 () Bool)

(assert (= bs!1404022 (and d!1860540 b!5934657)))

(declare-fun lambda!323680 () Int)

(assert (=> bs!1404022 (= lambda!323680 lambda!323634)))

(assert (=> bs!1404022 (not (= lambda!323680 lambda!323635))))

(declare-fun bs!1404023 () Bool)

(assert (= bs!1404023 (and d!1860540 b!5935023)))

(assert (=> bs!1404023 (not (= lambda!323680 lambda!323665))))

(declare-fun bs!1404024 () Bool)

(assert (= bs!1404024 (and d!1860540 b!5935020)))

(assert (=> bs!1404024 (not (= lambda!323680 lambda!323667))))

(assert (=> d!1860540 true))

(assert (=> d!1860540 true))

(assert (=> d!1860540 true))

(assert (=> d!1860540 (= (isDefined!12575 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326)) (Exists!3051 lambda!323680))))

(declare-fun lt!2311163 () Unit!157233)

(declare-fun choose!44736 (Regex!15981 Regex!15981 List!64244) Unit!157233)

(assert (=> d!1860540 (= lt!2311163 (choose!44736 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326))))

(assert (=> d!1860540 (validRegex!7717 (regOne!32474 r!7292))))

(assert (=> d!1860540 (= (lemmaFindConcatSeparationEquivalentToExists!2050 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326) lt!2311163)))

(declare-fun bs!1404025 () Bool)

(assert (= bs!1404025 d!1860540))

(assert (=> bs!1404025 m!6825866))

(assert (=> bs!1404025 m!6826150))

(assert (=> bs!1404025 m!6825866))

(assert (=> bs!1404025 m!6825868))

(declare-fun m!6826174 () Bool)

(assert (=> bs!1404025 m!6826174))

(declare-fun m!6826176 () Bool)

(assert (=> bs!1404025 m!6826176))

(assert (=> b!5934657 d!1860540))

(declare-fun bs!1404026 () Bool)

(declare-fun d!1860542 () Bool)

(assert (= bs!1404026 (and d!1860542 d!1860540)))

(declare-fun lambda!323685 () Int)

(assert (=> bs!1404026 (= lambda!323685 lambda!323680)))

(declare-fun bs!1404027 () Bool)

(assert (= bs!1404027 (and d!1860542 b!5934657)))

(assert (=> bs!1404027 (= lambda!323685 lambda!323634)))

(declare-fun bs!1404028 () Bool)

(assert (= bs!1404028 (and d!1860542 b!5935020)))

(assert (=> bs!1404028 (not (= lambda!323685 lambda!323667))))

(declare-fun bs!1404029 () Bool)

(assert (= bs!1404029 (and d!1860542 b!5935023)))

(assert (=> bs!1404029 (not (= lambda!323685 lambda!323665))))

(assert (=> bs!1404027 (not (= lambda!323685 lambda!323635))))

(assert (=> d!1860542 true))

(assert (=> d!1860542 true))

(assert (=> d!1860542 true))

(declare-fun lambda!323686 () Int)

(assert (=> bs!1404026 (not (= lambda!323686 lambda!323680))))

(assert (=> bs!1404027 (not (= lambda!323686 lambda!323634))))

(assert (=> bs!1404028 (= lambda!323686 lambda!323667)))

(declare-fun bs!1404030 () Bool)

(assert (= bs!1404030 d!1860542))

(assert (=> bs!1404030 (not (= lambda!323686 lambda!323685))))

(assert (=> bs!1404029 (not (= lambda!323686 lambda!323665))))

(assert (=> bs!1404027 (= lambda!323686 lambda!323635)))

(assert (=> d!1860542 true))

(assert (=> d!1860542 true))

(assert (=> d!1860542 true))

(assert (=> d!1860542 (= (Exists!3051 lambda!323685) (Exists!3051 lambda!323686))))

(declare-fun lt!2311166 () Unit!157233)

(declare-fun choose!44737 (Regex!15981 Regex!15981 List!64244) Unit!157233)

(assert (=> d!1860542 (= lt!2311166 (choose!44737 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326))))

(assert (=> d!1860542 (validRegex!7717 (regOne!32474 r!7292))))

(assert (=> d!1860542 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1588 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326) lt!2311166)))

(declare-fun m!6826178 () Bool)

(assert (=> bs!1404030 m!6826178))

(declare-fun m!6826180 () Bool)

(assert (=> bs!1404030 m!6826180))

(declare-fun m!6826182 () Bool)

(assert (=> bs!1404030 m!6826182))

(assert (=> bs!1404030 m!6826150))

(assert (=> b!5934657 d!1860542))

(declare-fun d!1860544 () Bool)

(declare-fun isEmpty!35990 (Option!15872) Bool)

(assert (=> d!1860544 (= (isDefined!12575 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326)) (not (isEmpty!35990 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326))))))

(declare-fun bs!1404031 () Bool)

(assert (= bs!1404031 d!1860544))

(assert (=> bs!1404031 m!6825866))

(declare-fun m!6826184 () Bool)

(assert (=> bs!1404031 m!6826184))

(assert (=> b!5934657 d!1860544))

(declare-fun d!1860546 () Bool)

(declare-fun lambda!323689 () Int)

(declare-fun forall!15064 (List!64242 Int) Bool)

(assert (=> d!1860546 (= (inv!83199 setElem!40290) (forall!15064 (exprs!5865 setElem!40290) lambda!323689))))

(declare-fun bs!1404032 () Bool)

(assert (= bs!1404032 d!1860546))

(declare-fun m!6826186 () Bool)

(assert (=> bs!1404032 m!6826186))

(assert (=> setNonEmpty!40290 d!1860546))

(declare-fun d!1860548 () Bool)

(assert (=> d!1860548 (= (flatMap!1494 lt!2311093 lambda!323636) (choose!44728 lt!2311093 lambda!323636))))

(declare-fun bs!1404033 () Bool)

(assert (= bs!1404033 d!1860548))

(declare-fun m!6826188 () Bool)

(assert (=> bs!1404033 m!6826188))

(assert (=> b!5934648 d!1860548))

(declare-fun bs!1404034 () Bool)

(declare-fun d!1860550 () Bool)

(assert (= bs!1404034 (and d!1860550 d!1860546)))

(declare-fun lambda!323690 () Int)

(assert (=> bs!1404034 (= lambda!323690 lambda!323689)))

(assert (=> d!1860550 (= (inv!83199 lt!2311089) (forall!15064 (exprs!5865 lt!2311089) lambda!323690))))

(declare-fun bs!1404035 () Bool)

(assert (= bs!1404035 d!1860550))

(declare-fun m!6826190 () Bool)

(assert (=> bs!1404035 m!6826190))

(assert (=> b!5934648 d!1860550))

(declare-fun d!1860552 () Bool)

(assert (=> d!1860552 (= (flatMap!1494 lt!2311084 lambda!323636) (dynLambda!25076 lambda!323636 lt!2311089))))

(declare-fun lt!2311167 () Unit!157233)

(assert (=> d!1860552 (= lt!2311167 (choose!44729 lt!2311084 lt!2311089 lambda!323636))))

(assert (=> d!1860552 (= lt!2311084 (store ((as const (Array Context!10730 Bool)) false) lt!2311089 true))))

(assert (=> d!1860552 (= (lemmaFlatMapOnSingletonSet!1020 lt!2311084 lt!2311089 lambda!323636) lt!2311167)))

(declare-fun b_lambda!222907 () Bool)

(assert (=> (not b_lambda!222907) (not d!1860552)))

(declare-fun bs!1404036 () Bool)

(assert (= bs!1404036 d!1860552))

(assert (=> bs!1404036 m!6825836))

(declare-fun m!6826192 () Bool)

(assert (=> bs!1404036 m!6826192))

(declare-fun m!6826194 () Bool)

(assert (=> bs!1404036 m!6826194))

(assert (=> bs!1404036 m!6825844))

(assert (=> b!5934648 d!1860552))

(declare-fun d!1860554 () Bool)

(assert (=> d!1860554 (= (flatMap!1494 lt!2311093 lambda!323636) (dynLambda!25076 lambda!323636 lt!2311091))))

(declare-fun lt!2311168 () Unit!157233)

(assert (=> d!1860554 (= lt!2311168 (choose!44729 lt!2311093 lt!2311091 lambda!323636))))

(assert (=> d!1860554 (= lt!2311093 (store ((as const (Array Context!10730 Bool)) false) lt!2311091 true))))

(assert (=> d!1860554 (= (lemmaFlatMapOnSingletonSet!1020 lt!2311093 lt!2311091 lambda!323636) lt!2311168)))

(declare-fun b_lambda!222909 () Bool)

(assert (=> (not b_lambda!222909) (not d!1860554)))

(declare-fun bs!1404037 () Bool)

(assert (= bs!1404037 d!1860554))

(assert (=> bs!1404037 m!6825828))

(declare-fun m!6826196 () Bool)

(assert (=> bs!1404037 m!6826196))

(declare-fun m!6826198 () Bool)

(assert (=> bs!1404037 m!6826198))

(assert (=> bs!1404037 m!6825832))

(assert (=> b!5934648 d!1860554))

(declare-fun b!5935213 () Bool)

(declare-fun e!3632156 () Bool)

(assert (=> b!5935213 (= e!3632156 (nullable!5976 (h!70566 (exprs!5865 lt!2311091))))))

(declare-fun b!5935214 () Bool)

(declare-fun e!3632157 () (InoxSet Context!10730))

(assert (=> b!5935214 (= e!3632157 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471414 () Bool)

(declare-fun call!471419 () (InoxSet Context!10730))

(assert (=> bm!471414 (= call!471419 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 lt!2311091)) (Context!10731 (t!377643 (exprs!5865 lt!2311091))) (h!70568 s!2326)))))

(declare-fun b!5935215 () Bool)

(assert (=> b!5935215 (= e!3632157 call!471419)))

(declare-fun b!5935216 () Bool)

(declare-fun e!3632158 () (InoxSet Context!10730))

(assert (=> b!5935216 (= e!3632158 e!3632157)))

(declare-fun c!1055198 () Bool)

(assert (=> b!5935216 (= c!1055198 ((_ is Cons!64118) (exprs!5865 lt!2311091)))))

(declare-fun b!5935217 () Bool)

(assert (=> b!5935217 (= e!3632158 ((_ map or) call!471419 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 lt!2311091))) (h!70568 s!2326))))))

(declare-fun d!1860556 () Bool)

(declare-fun c!1055197 () Bool)

(assert (=> d!1860556 (= c!1055197 e!3632156)))

(declare-fun res!2486307 () Bool)

(assert (=> d!1860556 (=> (not res!2486307) (not e!3632156))))

(assert (=> d!1860556 (= res!2486307 ((_ is Cons!64118) (exprs!5865 lt!2311091)))))

(assert (=> d!1860556 (= (derivationStepZipperUp!1157 lt!2311091 (h!70568 s!2326)) e!3632158)))

(assert (= (and d!1860556 res!2486307) b!5935213))

(assert (= (and d!1860556 c!1055197) b!5935217))

(assert (= (and d!1860556 (not c!1055197)) b!5935216))

(assert (= (and b!5935216 c!1055198) b!5935215))

(assert (= (and b!5935216 (not c!1055198)) b!5935214))

(assert (= (or b!5935217 b!5935215) bm!471414))

(declare-fun m!6826200 () Bool)

(assert (=> b!5935213 m!6826200))

(declare-fun m!6826202 () Bool)

(assert (=> bm!471414 m!6826202))

(declare-fun m!6826204 () Bool)

(assert (=> b!5935217 m!6826204))

(assert (=> b!5934648 d!1860556))

(declare-fun d!1860558 () Bool)

(assert (=> d!1860558 (= (flatMap!1494 lt!2311084 lambda!323636) (choose!44728 lt!2311084 lambda!323636))))

(declare-fun bs!1404038 () Bool)

(assert (= bs!1404038 d!1860558))

(declare-fun m!6826206 () Bool)

(assert (=> bs!1404038 m!6826206))

(assert (=> b!5934648 d!1860558))

(declare-fun b!5935218 () Bool)

(declare-fun e!3632159 () Bool)

(assert (=> b!5935218 (= e!3632159 (nullable!5976 (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun b!5935219 () Bool)

(declare-fun e!3632160 () (InoxSet Context!10730))

(assert (=> b!5935219 (= e!3632160 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471415 () Bool)

(declare-fun call!471420 () (InoxSet Context!10730))

(assert (=> bm!471415 (= call!471420 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 lt!2311089)) (Context!10731 (t!377643 (exprs!5865 lt!2311089))) (h!70568 s!2326)))))

(declare-fun b!5935220 () Bool)

(assert (=> b!5935220 (= e!3632160 call!471420)))

(declare-fun b!5935221 () Bool)

(declare-fun e!3632161 () (InoxSet Context!10730))

(assert (=> b!5935221 (= e!3632161 e!3632160)))

(declare-fun c!1055200 () Bool)

(assert (=> b!5935221 (= c!1055200 ((_ is Cons!64118) (exprs!5865 lt!2311089)))))

(declare-fun b!5935222 () Bool)

(assert (=> b!5935222 (= e!3632161 ((_ map or) call!471420 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 lt!2311089))) (h!70568 s!2326))))))

(declare-fun d!1860560 () Bool)

(declare-fun c!1055199 () Bool)

(assert (=> d!1860560 (= c!1055199 e!3632159)))

(declare-fun res!2486308 () Bool)

(assert (=> d!1860560 (=> (not res!2486308) (not e!3632159))))

(assert (=> d!1860560 (= res!2486308 ((_ is Cons!64118) (exprs!5865 lt!2311089)))))

(assert (=> d!1860560 (= (derivationStepZipperUp!1157 lt!2311089 (h!70568 s!2326)) e!3632161)))

(assert (= (and d!1860560 res!2486308) b!5935218))

(assert (= (and d!1860560 c!1055199) b!5935222))

(assert (= (and d!1860560 (not c!1055199)) b!5935221))

(assert (= (and b!5935221 c!1055200) b!5935220))

(assert (= (and b!5935221 (not c!1055200)) b!5935219))

(assert (= (or b!5935222 b!5935220) bm!471415))

(declare-fun m!6826208 () Bool)

(assert (=> b!5935218 m!6826208))

(declare-fun m!6826210 () Bool)

(assert (=> bm!471415 m!6826210))

(declare-fun m!6826212 () Bool)

(assert (=> b!5935222 m!6826212))

(assert (=> b!5934648 d!1860560))

(declare-fun d!1860562 () Bool)

(assert (=> d!1860562 (= (isEmpty!35985 (t!377643 (exprs!5865 (h!70567 zl!343)))) ((_ is Nil!64118) (t!377643 (exprs!5865 (h!70567 zl!343)))))))

(assert (=> b!5934638 d!1860562))

(declare-fun d!1860564 () Bool)

(assert (=> d!1860564 (= (isEmpty!35986 (t!377644 zl!343)) ((_ is Nil!64119) (t!377644 zl!343)))))

(assert (=> b!5934658 d!1860564))

(declare-fun d!1860566 () Bool)

(declare-fun lt!2311171 () Regex!15981)

(assert (=> d!1860566 (validRegex!7717 lt!2311171)))

(assert (=> d!1860566 (= lt!2311171 (generalisedUnion!1825 (unfocusZipperList!1402 zl!343)))))

(assert (=> d!1860566 (= (unfocusZipper!1723 zl!343) lt!2311171)))

(declare-fun bs!1404039 () Bool)

(assert (= bs!1404039 d!1860566))

(declare-fun m!6826214 () Bool)

(assert (=> bs!1404039 m!6826214))

(assert (=> bs!1404039 m!6825892))

(assert (=> bs!1404039 m!6825892))

(assert (=> bs!1404039 m!6825894))

(assert (=> b!5934656 d!1860566))

(declare-fun bs!1404040 () Bool)

(declare-fun d!1860568 () Bool)

(assert (= bs!1404040 (and d!1860568 d!1860546)))

(declare-fun lambda!323693 () Int)

(assert (=> bs!1404040 (= lambda!323693 lambda!323689)))

(declare-fun bs!1404041 () Bool)

(assert (= bs!1404041 (and d!1860568 d!1860550)))

(assert (=> bs!1404041 (= lambda!323693 lambda!323690)))

(declare-fun b!5935243 () Bool)

(declare-fun e!3632179 () Bool)

(declare-fun lt!2311174 () Regex!15981)

(declare-fun head!12504 (List!64242) Regex!15981)

(assert (=> b!5935243 (= e!3632179 (= lt!2311174 (head!12504 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun e!3632174 () Bool)

(assert (=> d!1860568 e!3632174))

(declare-fun res!2486313 () Bool)

(assert (=> d!1860568 (=> (not res!2486313) (not e!3632174))))

(assert (=> d!1860568 (= res!2486313 (validRegex!7717 lt!2311174))))

(declare-fun e!3632176 () Regex!15981)

(assert (=> d!1860568 (= lt!2311174 e!3632176)))

(declare-fun c!1055212 () Bool)

(declare-fun e!3632178 () Bool)

(assert (=> d!1860568 (= c!1055212 e!3632178)))

(declare-fun res!2486314 () Bool)

(assert (=> d!1860568 (=> (not res!2486314) (not e!3632178))))

(assert (=> d!1860568 (= res!2486314 ((_ is Cons!64118) (exprs!5865 (h!70567 zl!343))))))

(assert (=> d!1860568 (forall!15064 (exprs!5865 (h!70567 zl!343)) lambda!323693)))

(assert (=> d!1860568 (= (generalisedConcat!1578 (exprs!5865 (h!70567 zl!343))) lt!2311174)))

(declare-fun b!5935244 () Bool)

(declare-fun e!3632175 () Regex!15981)

(assert (=> b!5935244 (= e!3632175 (Concat!24826 (h!70566 (exprs!5865 (h!70567 zl!343))) (generalisedConcat!1578 (t!377643 (exprs!5865 (h!70567 zl!343))))))))

(declare-fun b!5935245 () Bool)

(declare-fun isConcat!932 (Regex!15981) Bool)

(assert (=> b!5935245 (= e!3632179 (isConcat!932 lt!2311174))))

(declare-fun b!5935246 () Bool)

(declare-fun e!3632177 () Bool)

(assert (=> b!5935246 (= e!3632177 e!3632179)))

(declare-fun c!1055210 () Bool)

(declare-fun tail!11589 (List!64242) List!64242)

(assert (=> b!5935246 (= c!1055210 (isEmpty!35985 (tail!11589 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935247 () Bool)

(assert (=> b!5935247 (= e!3632176 e!3632175)))

(declare-fun c!1055211 () Bool)

(assert (=> b!5935247 (= c!1055211 ((_ is Cons!64118) (exprs!5865 (h!70567 zl!343))))))

(declare-fun b!5935248 () Bool)

(assert (=> b!5935248 (= e!3632174 e!3632177)))

(declare-fun c!1055209 () Bool)

(assert (=> b!5935248 (= c!1055209 (isEmpty!35985 (exprs!5865 (h!70567 zl!343))))))

(declare-fun b!5935249 () Bool)

(assert (=> b!5935249 (= e!3632178 (isEmpty!35985 (t!377643 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935250 () Bool)

(assert (=> b!5935250 (= e!3632175 EmptyExpr!15981)))

(declare-fun b!5935251 () Bool)

(declare-fun isEmptyExpr!1409 (Regex!15981) Bool)

(assert (=> b!5935251 (= e!3632177 (isEmptyExpr!1409 lt!2311174))))

(declare-fun b!5935252 () Bool)

(assert (=> b!5935252 (= e!3632176 (h!70566 (exprs!5865 (h!70567 zl!343))))))

(assert (= (and d!1860568 res!2486314) b!5935249))

(assert (= (and d!1860568 c!1055212) b!5935252))

(assert (= (and d!1860568 (not c!1055212)) b!5935247))

(assert (= (and b!5935247 c!1055211) b!5935244))

(assert (= (and b!5935247 (not c!1055211)) b!5935250))

(assert (= (and d!1860568 res!2486313) b!5935248))

(assert (= (and b!5935248 c!1055209) b!5935251))

(assert (= (and b!5935248 (not c!1055209)) b!5935246))

(assert (= (and b!5935246 c!1055210) b!5935243))

(assert (= (and b!5935246 (not c!1055210)) b!5935245))

(declare-fun m!6826216 () Bool)

(assert (=> d!1860568 m!6826216))

(declare-fun m!6826218 () Bool)

(assert (=> d!1860568 m!6826218))

(declare-fun m!6826220 () Bool)

(assert (=> b!5935246 m!6826220))

(assert (=> b!5935246 m!6826220))

(declare-fun m!6826222 () Bool)

(assert (=> b!5935246 m!6826222))

(declare-fun m!6826224 () Bool)

(assert (=> b!5935244 m!6826224))

(assert (=> b!5935249 m!6825882))

(declare-fun m!6826226 () Bool)

(assert (=> b!5935248 m!6826226))

(declare-fun m!6826228 () Bool)

(assert (=> b!5935243 m!6826228))

(declare-fun m!6826230 () Bool)

(assert (=> b!5935251 m!6826230))

(declare-fun m!6826232 () Bool)

(assert (=> b!5935245 m!6826232))

(assert (=> b!5934645 d!1860568))

(declare-fun bs!1404042 () Bool)

(declare-fun d!1860570 () Bool)

(assert (= bs!1404042 (and d!1860570 d!1860546)))

(declare-fun lambda!323694 () Int)

(assert (=> bs!1404042 (= lambda!323694 lambda!323689)))

(declare-fun bs!1404043 () Bool)

(assert (= bs!1404043 (and d!1860570 d!1860550)))

(assert (=> bs!1404043 (= lambda!323694 lambda!323690)))

(declare-fun bs!1404044 () Bool)

(assert (= bs!1404044 (and d!1860570 d!1860568)))

(assert (=> bs!1404044 (= lambda!323694 lambda!323693)))

(assert (=> d!1860570 (= (inv!83199 (h!70567 zl!343)) (forall!15064 (exprs!5865 (h!70567 zl!343)) lambda!323694))))

(declare-fun bs!1404045 () Bool)

(assert (= bs!1404045 d!1860570))

(declare-fun m!6826234 () Bool)

(assert (=> bs!1404045 m!6826234))

(assert (=> b!5934652 d!1860570))

(declare-fun bs!1404046 () Bool)

(declare-fun d!1860572 () Bool)

(assert (= bs!1404046 (and d!1860572 d!1860546)))

(declare-fun lambda!323697 () Int)

(assert (=> bs!1404046 (= lambda!323697 lambda!323689)))

(declare-fun bs!1404047 () Bool)

(assert (= bs!1404047 (and d!1860572 d!1860550)))

(assert (=> bs!1404047 (= lambda!323697 lambda!323690)))

(declare-fun bs!1404048 () Bool)

(assert (= bs!1404048 (and d!1860572 d!1860568)))

(assert (=> bs!1404048 (= lambda!323697 lambda!323693)))

(declare-fun bs!1404049 () Bool)

(assert (= bs!1404049 (and d!1860572 d!1860570)))

(assert (=> bs!1404049 (= lambda!323697 lambda!323694)))

(declare-fun b!5935273 () Bool)

(declare-fun e!3632195 () Regex!15981)

(assert (=> b!5935273 (= e!3632195 (Union!15981 (h!70566 (unfocusZipperList!1402 zl!343)) (generalisedUnion!1825 (t!377643 (unfocusZipperList!1402 zl!343)))))))

(declare-fun b!5935274 () Bool)

(declare-fun e!3632196 () Regex!15981)

(assert (=> b!5935274 (= e!3632196 e!3632195)))

(declare-fun c!1055224 () Bool)

(assert (=> b!5935274 (= c!1055224 ((_ is Cons!64118) (unfocusZipperList!1402 zl!343)))))

(declare-fun e!3632197 () Bool)

(assert (=> d!1860572 e!3632197))

(declare-fun res!2486320 () Bool)

(assert (=> d!1860572 (=> (not res!2486320) (not e!3632197))))

(declare-fun lt!2311177 () Regex!15981)

(assert (=> d!1860572 (= res!2486320 (validRegex!7717 lt!2311177))))

(assert (=> d!1860572 (= lt!2311177 e!3632196)))

(declare-fun c!1055222 () Bool)

(declare-fun e!3632193 () Bool)

(assert (=> d!1860572 (= c!1055222 e!3632193)))

(declare-fun res!2486319 () Bool)

(assert (=> d!1860572 (=> (not res!2486319) (not e!3632193))))

(assert (=> d!1860572 (= res!2486319 ((_ is Cons!64118) (unfocusZipperList!1402 zl!343)))))

(assert (=> d!1860572 (forall!15064 (unfocusZipperList!1402 zl!343) lambda!323697)))

(assert (=> d!1860572 (= (generalisedUnion!1825 (unfocusZipperList!1402 zl!343)) lt!2311177)))

(declare-fun b!5935275 () Bool)

(declare-fun e!3632194 () Bool)

(declare-fun e!3632192 () Bool)

(assert (=> b!5935275 (= e!3632194 e!3632192)))

(declare-fun c!1055221 () Bool)

(assert (=> b!5935275 (= c!1055221 (isEmpty!35985 (tail!11589 (unfocusZipperList!1402 zl!343))))))

(declare-fun b!5935276 () Bool)

(assert (=> b!5935276 (= e!3632195 EmptyLang!15981)))

(declare-fun b!5935277 () Bool)

(assert (=> b!5935277 (= e!3632197 e!3632194)))

(declare-fun c!1055223 () Bool)

(assert (=> b!5935277 (= c!1055223 (isEmpty!35985 (unfocusZipperList!1402 zl!343)))))

(declare-fun b!5935278 () Bool)

(declare-fun isEmptyLang!1418 (Regex!15981) Bool)

(assert (=> b!5935278 (= e!3632194 (isEmptyLang!1418 lt!2311177))))

(declare-fun b!5935279 () Bool)

(assert (=> b!5935279 (= e!3632193 (isEmpty!35985 (t!377643 (unfocusZipperList!1402 zl!343))))))

(declare-fun b!5935280 () Bool)

(assert (=> b!5935280 (= e!3632196 (h!70566 (unfocusZipperList!1402 zl!343)))))

(declare-fun b!5935281 () Bool)

(assert (=> b!5935281 (= e!3632192 (= lt!2311177 (head!12504 (unfocusZipperList!1402 zl!343))))))

(declare-fun b!5935282 () Bool)

(declare-fun isUnion!848 (Regex!15981) Bool)

(assert (=> b!5935282 (= e!3632192 (isUnion!848 lt!2311177))))

(assert (= (and d!1860572 res!2486319) b!5935279))

(assert (= (and d!1860572 c!1055222) b!5935280))

(assert (= (and d!1860572 (not c!1055222)) b!5935274))

(assert (= (and b!5935274 c!1055224) b!5935273))

(assert (= (and b!5935274 (not c!1055224)) b!5935276))

(assert (= (and d!1860572 res!2486320) b!5935277))

(assert (= (and b!5935277 c!1055223) b!5935278))

(assert (= (and b!5935277 (not c!1055223)) b!5935275))

(assert (= (and b!5935275 c!1055221) b!5935281))

(assert (= (and b!5935275 (not c!1055221)) b!5935282))

(assert (=> b!5935281 m!6825892))

(declare-fun m!6826236 () Bool)

(assert (=> b!5935281 m!6826236))

(declare-fun m!6826238 () Bool)

(assert (=> b!5935279 m!6826238))

(declare-fun m!6826240 () Bool)

(assert (=> b!5935273 m!6826240))

(declare-fun m!6826242 () Bool)

(assert (=> b!5935278 m!6826242))

(declare-fun m!6826244 () Bool)

(assert (=> d!1860572 m!6826244))

(assert (=> d!1860572 m!6825892))

(declare-fun m!6826246 () Bool)

(assert (=> d!1860572 m!6826246))

(declare-fun m!6826248 () Bool)

(assert (=> b!5935282 m!6826248))

(assert (=> b!5935275 m!6825892))

(declare-fun m!6826250 () Bool)

(assert (=> b!5935275 m!6826250))

(assert (=> b!5935275 m!6826250))

(declare-fun m!6826252 () Bool)

(assert (=> b!5935275 m!6826252))

(assert (=> b!5935277 m!6825892))

(declare-fun m!6826254 () Bool)

(assert (=> b!5935277 m!6826254))

(assert (=> b!5934643 d!1860572))

(declare-fun bs!1404050 () Bool)

(declare-fun d!1860574 () Bool)

(assert (= bs!1404050 (and d!1860574 d!1860570)))

(declare-fun lambda!323700 () Int)

(assert (=> bs!1404050 (= lambda!323700 lambda!323694)))

(declare-fun bs!1404051 () Bool)

(assert (= bs!1404051 (and d!1860574 d!1860550)))

(assert (=> bs!1404051 (= lambda!323700 lambda!323690)))

(declare-fun bs!1404052 () Bool)

(assert (= bs!1404052 (and d!1860574 d!1860546)))

(assert (=> bs!1404052 (= lambda!323700 lambda!323689)))

(declare-fun bs!1404053 () Bool)

(assert (= bs!1404053 (and d!1860574 d!1860568)))

(assert (=> bs!1404053 (= lambda!323700 lambda!323693)))

(declare-fun bs!1404054 () Bool)

(assert (= bs!1404054 (and d!1860574 d!1860572)))

(assert (=> bs!1404054 (= lambda!323700 lambda!323697)))

(declare-fun lt!2311180 () List!64242)

(assert (=> d!1860574 (forall!15064 lt!2311180 lambda!323700)))

(declare-fun e!3632200 () List!64242)

(assert (=> d!1860574 (= lt!2311180 e!3632200)))

(declare-fun c!1055227 () Bool)

(assert (=> d!1860574 (= c!1055227 ((_ is Cons!64119) zl!343))))

(assert (=> d!1860574 (= (unfocusZipperList!1402 zl!343) lt!2311180)))

(declare-fun b!5935287 () Bool)

(assert (=> b!5935287 (= e!3632200 (Cons!64118 (generalisedConcat!1578 (exprs!5865 (h!70567 zl!343))) (unfocusZipperList!1402 (t!377644 zl!343))))))

(declare-fun b!5935288 () Bool)

(assert (=> b!5935288 (= e!3632200 Nil!64118)))

(assert (= (and d!1860574 c!1055227) b!5935287))

(assert (= (and d!1860574 (not c!1055227)) b!5935288))

(declare-fun m!6826256 () Bool)

(assert (=> d!1860574 m!6826256))

(assert (=> b!5935287 m!6825890))

(declare-fun m!6826258 () Bool)

(assert (=> b!5935287 m!6826258))

(assert (=> b!5934643 d!1860574))

(declare-fun e!3632203 () Bool)

(assert (=> b!5934655 (= tp!1651147 e!3632203)))

(declare-fun b!5935299 () Bool)

(assert (=> b!5935299 (= e!3632203 tp_is_empty!41215)))

(declare-fun b!5935301 () Bool)

(declare-fun tp!1651226 () Bool)

(assert (=> b!5935301 (= e!3632203 tp!1651226)))

(declare-fun b!5935302 () Bool)

(declare-fun tp!1651224 () Bool)

(declare-fun tp!1651223 () Bool)

(assert (=> b!5935302 (= e!3632203 (and tp!1651224 tp!1651223))))

(declare-fun b!5935300 () Bool)

(declare-fun tp!1651227 () Bool)

(declare-fun tp!1651225 () Bool)

(assert (=> b!5935300 (= e!3632203 (and tp!1651227 tp!1651225))))

(assert (= (and b!5934655 ((_ is ElementMatch!15981) (regOne!32475 r!7292))) b!5935299))

(assert (= (and b!5934655 ((_ is Concat!24826) (regOne!32475 r!7292))) b!5935300))

(assert (= (and b!5934655 ((_ is Star!15981) (regOne!32475 r!7292))) b!5935301))

(assert (= (and b!5934655 ((_ is Union!15981) (regOne!32475 r!7292))) b!5935302))

(declare-fun e!3632204 () Bool)

(assert (=> b!5934655 (= tp!1651145 e!3632204)))

(declare-fun b!5935303 () Bool)

(assert (=> b!5935303 (= e!3632204 tp_is_empty!41215)))

(declare-fun b!5935305 () Bool)

(declare-fun tp!1651231 () Bool)

(assert (=> b!5935305 (= e!3632204 tp!1651231)))

(declare-fun b!5935306 () Bool)

(declare-fun tp!1651229 () Bool)

(declare-fun tp!1651228 () Bool)

(assert (=> b!5935306 (= e!3632204 (and tp!1651229 tp!1651228))))

(declare-fun b!5935304 () Bool)

(declare-fun tp!1651232 () Bool)

(declare-fun tp!1651230 () Bool)

(assert (=> b!5935304 (= e!3632204 (and tp!1651232 tp!1651230))))

(assert (= (and b!5934655 ((_ is ElementMatch!15981) (regTwo!32475 r!7292))) b!5935303))

(assert (= (and b!5934655 ((_ is Concat!24826) (regTwo!32475 r!7292))) b!5935304))

(assert (= (and b!5934655 ((_ is Star!15981) (regTwo!32475 r!7292))) b!5935305))

(assert (= (and b!5934655 ((_ is Union!15981) (regTwo!32475 r!7292))) b!5935306))

(declare-fun b!5935311 () Bool)

(declare-fun e!3632207 () Bool)

(declare-fun tp!1651237 () Bool)

(declare-fun tp!1651238 () Bool)

(assert (=> b!5935311 (= e!3632207 (and tp!1651237 tp!1651238))))

(assert (=> b!5934640 (= tp!1651146 e!3632207)))

(assert (= (and b!5934640 ((_ is Cons!64118) (exprs!5865 setElem!40290))) b!5935311))

(declare-fun e!3632208 () Bool)

(assert (=> b!5934644 (= tp!1651152 e!3632208)))

(declare-fun b!5935312 () Bool)

(assert (=> b!5935312 (= e!3632208 tp_is_empty!41215)))

(declare-fun b!5935314 () Bool)

(declare-fun tp!1651242 () Bool)

(assert (=> b!5935314 (= e!3632208 tp!1651242)))

(declare-fun b!5935315 () Bool)

(declare-fun tp!1651240 () Bool)

(declare-fun tp!1651239 () Bool)

(assert (=> b!5935315 (= e!3632208 (and tp!1651240 tp!1651239))))

(declare-fun b!5935313 () Bool)

(declare-fun tp!1651243 () Bool)

(declare-fun tp!1651241 () Bool)

(assert (=> b!5935313 (= e!3632208 (and tp!1651243 tp!1651241))))

(assert (= (and b!5934644 ((_ is ElementMatch!15981) (regOne!32474 r!7292))) b!5935312))

(assert (= (and b!5934644 ((_ is Concat!24826) (regOne!32474 r!7292))) b!5935313))

(assert (= (and b!5934644 ((_ is Star!15981) (regOne!32474 r!7292))) b!5935314))

(assert (= (and b!5934644 ((_ is Union!15981) (regOne!32474 r!7292))) b!5935315))

(declare-fun e!3632209 () Bool)

(assert (=> b!5934644 (= tp!1651153 e!3632209)))

(declare-fun b!5935316 () Bool)

(assert (=> b!5935316 (= e!3632209 tp_is_empty!41215)))

(declare-fun b!5935318 () Bool)

(declare-fun tp!1651247 () Bool)

(assert (=> b!5935318 (= e!3632209 tp!1651247)))

(declare-fun b!5935319 () Bool)

(declare-fun tp!1651245 () Bool)

(declare-fun tp!1651244 () Bool)

(assert (=> b!5935319 (= e!3632209 (and tp!1651245 tp!1651244))))

(declare-fun b!5935317 () Bool)

(declare-fun tp!1651248 () Bool)

(declare-fun tp!1651246 () Bool)

(assert (=> b!5935317 (= e!3632209 (and tp!1651248 tp!1651246))))

(assert (= (and b!5934644 ((_ is ElementMatch!15981) (regTwo!32474 r!7292))) b!5935316))

(assert (= (and b!5934644 ((_ is Concat!24826) (regTwo!32474 r!7292))) b!5935317))

(assert (= (and b!5934644 ((_ is Star!15981) (regTwo!32474 r!7292))) b!5935318))

(assert (= (and b!5934644 ((_ is Union!15981) (regTwo!32474 r!7292))) b!5935319))

(declare-fun e!3632210 () Bool)

(assert (=> b!5934654 (= tp!1651150 e!3632210)))

(declare-fun b!5935320 () Bool)

(assert (=> b!5935320 (= e!3632210 tp_is_empty!41215)))

(declare-fun b!5935322 () Bool)

(declare-fun tp!1651252 () Bool)

(assert (=> b!5935322 (= e!3632210 tp!1651252)))

(declare-fun b!5935323 () Bool)

(declare-fun tp!1651250 () Bool)

(declare-fun tp!1651249 () Bool)

(assert (=> b!5935323 (= e!3632210 (and tp!1651250 tp!1651249))))

(declare-fun b!5935321 () Bool)

(declare-fun tp!1651253 () Bool)

(declare-fun tp!1651251 () Bool)

(assert (=> b!5935321 (= e!3632210 (and tp!1651253 tp!1651251))))

(assert (= (and b!5934654 ((_ is ElementMatch!15981) (reg!16310 r!7292))) b!5935320))

(assert (= (and b!5934654 ((_ is Concat!24826) (reg!16310 r!7292))) b!5935321))

(assert (= (and b!5934654 ((_ is Star!15981) (reg!16310 r!7292))) b!5935322))

(assert (= (and b!5934654 ((_ is Union!15981) (reg!16310 r!7292))) b!5935323))

(declare-fun b!5935328 () Bool)

(declare-fun e!3632213 () Bool)

(declare-fun tp!1651256 () Bool)

(assert (=> b!5935328 (= e!3632213 (and tp_is_empty!41215 tp!1651256))))

(assert (=> b!5934639 (= tp!1651151 e!3632213)))

(assert (= (and b!5934639 ((_ is Cons!64120) (t!377645 s!2326))) b!5935328))

(declare-fun b!5935336 () Bool)

(declare-fun e!3632219 () Bool)

(declare-fun tp!1651261 () Bool)

(assert (=> b!5935336 (= e!3632219 tp!1651261)))

(declare-fun b!5935335 () Bool)

(declare-fun tp!1651262 () Bool)

(declare-fun e!3632218 () Bool)

(assert (=> b!5935335 (= e!3632218 (and (inv!83199 (h!70567 (t!377644 zl!343))) e!3632219 tp!1651262))))

(assert (=> b!5934652 (= tp!1651149 e!3632218)))

(assert (= b!5935335 b!5935336))

(assert (= (and b!5934652 ((_ is Cons!64119) (t!377644 zl!343))) b!5935335))

(declare-fun m!6826260 () Bool)

(assert (=> b!5935335 m!6826260))

(declare-fun condSetEmpty!40296 () Bool)

(assert (=> setNonEmpty!40290 (= condSetEmpty!40296 (= setRest!40290 ((as const (Array Context!10730 Bool)) false)))))

(declare-fun setRes!40296 () Bool)

(assert (=> setNonEmpty!40290 (= tp!1651148 setRes!40296)))

(declare-fun setIsEmpty!40296 () Bool)

(assert (=> setIsEmpty!40296 setRes!40296))

(declare-fun e!3632222 () Bool)

(declare-fun tp!1651268 () Bool)

(declare-fun setElem!40296 () Context!10730)

(declare-fun setNonEmpty!40296 () Bool)

(assert (=> setNonEmpty!40296 (= setRes!40296 (and tp!1651268 (inv!83199 setElem!40296) e!3632222))))

(declare-fun setRest!40296 () (InoxSet Context!10730))

(assert (=> setNonEmpty!40296 (= setRest!40290 ((_ map or) (store ((as const (Array Context!10730 Bool)) false) setElem!40296 true) setRest!40296))))

(declare-fun b!5935341 () Bool)

(declare-fun tp!1651267 () Bool)

(assert (=> b!5935341 (= e!3632222 tp!1651267)))

(assert (= (and setNonEmpty!40290 condSetEmpty!40296) setIsEmpty!40296))

(assert (= (and setNonEmpty!40290 (not condSetEmpty!40296)) setNonEmpty!40296))

(assert (= setNonEmpty!40296 b!5935341))

(declare-fun m!6826262 () Bool)

(assert (=> setNonEmpty!40296 m!6826262))

(declare-fun b!5935342 () Bool)

(declare-fun e!3632223 () Bool)

(declare-fun tp!1651269 () Bool)

(declare-fun tp!1651270 () Bool)

(assert (=> b!5935342 (= e!3632223 (and tp!1651269 tp!1651270))))

(assert (=> b!5934642 (= tp!1651154 e!3632223)))

(assert (= (and b!5934642 ((_ is Cons!64118) (exprs!5865 (h!70567 zl!343)))) b!5935342))

(declare-fun b_lambda!222911 () Bool)

(assert (= b_lambda!222895 (or b!5934641 b_lambda!222911)))

(declare-fun bs!1404055 () Bool)

(declare-fun d!1860576 () Bool)

(assert (= bs!1404055 (and d!1860576 b!5934641)))

(assert (=> bs!1404055 (= (dynLambda!25076 lambda!323636 (h!70567 zl!343)) (derivationStepZipperUp!1157 (h!70567 zl!343) (h!70568 s!2326)))))

(assert (=> bs!1404055 m!6825860))

(assert (=> d!1860478 d!1860576))

(declare-fun b_lambda!222913 () Bool)

(assert (= b_lambda!222907 (or b!5934641 b_lambda!222913)))

(declare-fun bs!1404056 () Bool)

(declare-fun d!1860578 () Bool)

(assert (= bs!1404056 (and d!1860578 b!5934641)))

(assert (=> bs!1404056 (= (dynLambda!25076 lambda!323636 lt!2311089) (derivationStepZipperUp!1157 lt!2311089 (h!70568 s!2326)))))

(assert (=> bs!1404056 m!6825840))

(assert (=> d!1860552 d!1860578))

(declare-fun b_lambda!222915 () Bool)

(assert (= b_lambda!222909 (or b!5934641 b_lambda!222915)))

(declare-fun bs!1404057 () Bool)

(declare-fun d!1860580 () Bool)

(assert (= bs!1404057 (and d!1860580 b!5934641)))

(assert (=> bs!1404057 (= (dynLambda!25076 lambda!323636 lt!2311091) (derivationStepZipperUp!1157 lt!2311091 (h!70568 s!2326)))))

(assert (=> bs!1404057 m!6825842))

(assert (=> d!1860554 d!1860580))

(check-sat (not d!1860568) (not b!5935101) (not b!5935222) tp_is_empty!41215 (not d!1860536) (not b!5935244) (not b_lambda!222915) (not b!5935305) (not b!5935277) (not b!5935245) (not b!5935194) (not b!5935192) (not b!5935278) (not d!1860554) (not b!5935015) (not b!5935300) (not b!5935336) (not b!5935319) (not d!1860570) (not d!1860546) (not d!1860474) (not b!5934889) (not b!5935213) (not b!5935279) (not b!5935217) (not b!5935195) (not b!5935092) (not b!5935323) (not bs!1404055) (not b!5935273) (not b!5935281) (not bm!471385) (not b!5935251) (not bm!471397) (not b!5935091) (not b!5935318) (not bm!471415) (not b!5935083) (not bm!471407) (not b!5935322) (not b!5934850) (not setNonEmpty!40296) (not b!5935314) (not bm!471414) (not b!5935249) (not b!5935301) (not b!5935304) (not bm!471392) (not bm!471388) (not b!5935198) (not b!5935275) (not d!1860496) (not b!5935302) (not b!5935306) (not b!5935315) (not b!5935084) (not b!5935341) (not d!1860566) (not b!5935022) (not b!5935328) (not b!5935335) (not b!5935094) (not d!1860574) (not d!1860538) (not b!5935246) (not bs!1404057) (not b!5935243) (not bm!471411) (not b_lambda!222911) (not d!1860558) (not b!5935342) (not b!5935313) (not b!5934717) (not bm!471349) (not d!1860552) (not d!1860472) (not d!1860510) (not b!5935218) (not b!5935082) (not b_lambda!222913) (not bm!471408) (not b!5935287) (not d!1860544) (not b!5935321) (not d!1860542) (not b!5935196) (not d!1860540) (not b!5935317) (not b!5934824) (not bm!471348) (not bm!471383) (not b!5934893) (not b!5935282) (not d!1860508) (not d!1860550) (not d!1860548) (not b!5935199) (not b!5935311) (not b!5934854) (not bs!1404056) (not d!1860572) (not b!5935248) (not d!1860478) (not d!1860504))
(check-sat)
(get-model)

(declare-fun b!5935343 () Bool)

(declare-fun res!2486325 () Bool)

(declare-fun e!3632228 () Bool)

(assert (=> b!5935343 (=> res!2486325 e!3632228)))

(assert (=> b!5935343 (= res!2486325 (not ((_ is ElementMatch!15981) (regTwo!32474 r!7292))))))

(declare-fun e!3632229 () Bool)

(assert (=> b!5935343 (= e!3632229 e!3632228)))

(declare-fun b!5935344 () Bool)

(declare-fun e!3632230 () Bool)

(assert (=> b!5935344 (= e!3632230 (nullable!5976 (regTwo!32474 r!7292)))))

(declare-fun b!5935345 () Bool)

(declare-fun e!3632226 () Bool)

(assert (=> b!5935345 (= e!3632226 (= (head!12503 (_2!36263 (get!22084 lt!2311159))) (c!1055049 (regTwo!32474 r!7292))))))

(declare-fun b!5935346 () Bool)

(assert (=> b!5935346 (= e!3632230 (matchR!8164 (derivativeStep!4712 (regTwo!32474 r!7292) (head!12503 (_2!36263 (get!22084 lt!2311159)))) (tail!11588 (_2!36263 (get!22084 lt!2311159)))))))

(declare-fun b!5935347 () Bool)

(declare-fun e!3632227 () Bool)

(declare-fun lt!2311181 () Bool)

(declare-fun call!471421 () Bool)

(assert (=> b!5935347 (= e!3632227 (= lt!2311181 call!471421))))

(declare-fun b!5935349 () Bool)

(declare-fun e!3632225 () Bool)

(assert (=> b!5935349 (= e!3632228 e!3632225)))

(declare-fun res!2486328 () Bool)

(assert (=> b!5935349 (=> (not res!2486328) (not e!3632225))))

(assert (=> b!5935349 (= res!2486328 (not lt!2311181))))

(declare-fun b!5935350 () Bool)

(assert (=> b!5935350 (= e!3632229 (not lt!2311181))))

(declare-fun b!5935351 () Bool)

(declare-fun res!2486327 () Bool)

(assert (=> b!5935351 (=> res!2486327 e!3632228)))

(assert (=> b!5935351 (= res!2486327 e!3632226)))

(declare-fun res!2486323 () Bool)

(assert (=> b!5935351 (=> (not res!2486323) (not e!3632226))))

(assert (=> b!5935351 (= res!2486323 lt!2311181)))

(declare-fun b!5935352 () Bool)

(declare-fun e!3632224 () Bool)

(assert (=> b!5935352 (= e!3632225 e!3632224)))

(declare-fun res!2486324 () Bool)

(assert (=> b!5935352 (=> res!2486324 e!3632224)))

(assert (=> b!5935352 (= res!2486324 call!471421)))

(declare-fun b!5935353 () Bool)

(declare-fun res!2486321 () Bool)

(assert (=> b!5935353 (=> res!2486321 e!3632224)))

(assert (=> b!5935353 (= res!2486321 (not (isEmpty!35988 (tail!11588 (_2!36263 (get!22084 lt!2311159))))))))

(declare-fun b!5935354 () Bool)

(assert (=> b!5935354 (= e!3632224 (not (= (head!12503 (_2!36263 (get!22084 lt!2311159))) (c!1055049 (regTwo!32474 r!7292)))))))

(declare-fun bm!471416 () Bool)

(assert (=> bm!471416 (= call!471421 (isEmpty!35988 (_2!36263 (get!22084 lt!2311159))))))

(declare-fun b!5935355 () Bool)

(assert (=> b!5935355 (= e!3632227 e!3632229)))

(declare-fun c!1055229 () Bool)

(assert (=> b!5935355 (= c!1055229 ((_ is EmptyLang!15981) (regTwo!32474 r!7292)))))

(declare-fun b!5935356 () Bool)

(declare-fun res!2486326 () Bool)

(assert (=> b!5935356 (=> (not res!2486326) (not e!3632226))))

(assert (=> b!5935356 (= res!2486326 (isEmpty!35988 (tail!11588 (_2!36263 (get!22084 lt!2311159)))))))

(declare-fun b!5935348 () Bool)

(declare-fun res!2486322 () Bool)

(assert (=> b!5935348 (=> (not res!2486322) (not e!3632226))))

(assert (=> b!5935348 (= res!2486322 (not call!471421))))

(declare-fun d!1860582 () Bool)

(assert (=> d!1860582 e!3632227))

(declare-fun c!1055230 () Bool)

(assert (=> d!1860582 (= c!1055230 ((_ is EmptyExpr!15981) (regTwo!32474 r!7292)))))

(assert (=> d!1860582 (= lt!2311181 e!3632230)))

(declare-fun c!1055228 () Bool)

(assert (=> d!1860582 (= c!1055228 (isEmpty!35988 (_2!36263 (get!22084 lt!2311159))))))

(assert (=> d!1860582 (validRegex!7717 (regTwo!32474 r!7292))))

(assert (=> d!1860582 (= (matchR!8164 (regTwo!32474 r!7292) (_2!36263 (get!22084 lt!2311159))) lt!2311181)))

(assert (= (and d!1860582 c!1055228) b!5935344))

(assert (= (and d!1860582 (not c!1055228)) b!5935346))

(assert (= (and d!1860582 c!1055230) b!5935347))

(assert (= (and d!1860582 (not c!1055230)) b!5935355))

(assert (= (and b!5935355 c!1055229) b!5935350))

(assert (= (and b!5935355 (not c!1055229)) b!5935343))

(assert (= (and b!5935343 (not res!2486325)) b!5935351))

(assert (= (and b!5935351 res!2486323) b!5935348))

(assert (= (and b!5935348 res!2486322) b!5935356))

(assert (= (and b!5935356 res!2486326) b!5935345))

(assert (= (and b!5935351 (not res!2486327)) b!5935349))

(assert (= (and b!5935349 res!2486328) b!5935352))

(assert (= (and b!5935352 (not res!2486324)) b!5935353))

(assert (= (and b!5935353 (not res!2486321)) b!5935354))

(assert (= (or b!5935347 b!5935348 b!5935352) bm!471416))

(declare-fun m!6826264 () Bool)

(assert (=> b!5935345 m!6826264))

(declare-fun m!6826266 () Bool)

(assert (=> b!5935356 m!6826266))

(assert (=> b!5935356 m!6826266))

(declare-fun m!6826268 () Bool)

(assert (=> b!5935356 m!6826268))

(declare-fun m!6826270 () Bool)

(assert (=> bm!471416 m!6826270))

(assert (=> d!1860582 m!6826270))

(declare-fun m!6826272 () Bool)

(assert (=> d!1860582 m!6826272))

(assert (=> b!5935346 m!6826264))

(assert (=> b!5935346 m!6826264))

(declare-fun m!6826274 () Bool)

(assert (=> b!5935346 m!6826274))

(assert (=> b!5935346 m!6826266))

(assert (=> b!5935346 m!6826274))

(assert (=> b!5935346 m!6826266))

(declare-fun m!6826276 () Bool)

(assert (=> b!5935346 m!6826276))

(assert (=> b!5935354 m!6826264))

(declare-fun m!6826278 () Bool)

(assert (=> b!5935344 m!6826278))

(assert (=> b!5935353 m!6826266))

(assert (=> b!5935353 m!6826266))

(assert (=> b!5935353 m!6826268))

(assert (=> b!5935194 d!1860582))

(declare-fun d!1860584 () Bool)

(assert (=> d!1860584 (= (get!22084 lt!2311159) (v!51971 lt!2311159))))

(assert (=> b!5935194 d!1860584))

(declare-fun bs!1404058 () Bool)

(declare-fun d!1860586 () Bool)

(assert (= bs!1404058 (and d!1860586 d!1860550)))

(declare-fun lambda!323701 () Int)

(assert (=> bs!1404058 (= lambda!323701 lambda!323690)))

(declare-fun bs!1404059 () Bool)

(assert (= bs!1404059 (and d!1860586 d!1860546)))

(assert (=> bs!1404059 (= lambda!323701 lambda!323689)))

(declare-fun bs!1404060 () Bool)

(assert (= bs!1404060 (and d!1860586 d!1860574)))

(assert (=> bs!1404060 (= lambda!323701 lambda!323700)))

(declare-fun bs!1404061 () Bool)

(assert (= bs!1404061 (and d!1860586 d!1860570)))

(assert (=> bs!1404061 (= lambda!323701 lambda!323694)))

(declare-fun bs!1404062 () Bool)

(assert (= bs!1404062 (and d!1860586 d!1860568)))

(assert (=> bs!1404062 (= lambda!323701 lambda!323693)))

(declare-fun bs!1404063 () Bool)

(assert (= bs!1404063 (and d!1860586 d!1860572)))

(assert (=> bs!1404063 (= lambda!323701 lambda!323697)))

(declare-fun b!5935357 () Bool)

(declare-fun e!3632236 () Bool)

(declare-fun lt!2311182 () Regex!15981)

(assert (=> b!5935357 (= e!3632236 (= lt!2311182 (head!12504 (t!377643 (exprs!5865 (h!70567 zl!343))))))))

(declare-fun e!3632231 () Bool)

(assert (=> d!1860586 e!3632231))

(declare-fun res!2486329 () Bool)

(assert (=> d!1860586 (=> (not res!2486329) (not e!3632231))))

(assert (=> d!1860586 (= res!2486329 (validRegex!7717 lt!2311182))))

(declare-fun e!3632233 () Regex!15981)

(assert (=> d!1860586 (= lt!2311182 e!3632233)))

(declare-fun c!1055234 () Bool)

(declare-fun e!3632235 () Bool)

(assert (=> d!1860586 (= c!1055234 e!3632235)))

(declare-fun res!2486330 () Bool)

(assert (=> d!1860586 (=> (not res!2486330) (not e!3632235))))

(assert (=> d!1860586 (= res!2486330 ((_ is Cons!64118) (t!377643 (exprs!5865 (h!70567 zl!343)))))))

(assert (=> d!1860586 (forall!15064 (t!377643 (exprs!5865 (h!70567 zl!343))) lambda!323701)))

(assert (=> d!1860586 (= (generalisedConcat!1578 (t!377643 (exprs!5865 (h!70567 zl!343)))) lt!2311182)))

(declare-fun b!5935358 () Bool)

(declare-fun e!3632232 () Regex!15981)

(assert (=> b!5935358 (= e!3632232 (Concat!24826 (h!70566 (t!377643 (exprs!5865 (h!70567 zl!343)))) (generalisedConcat!1578 (t!377643 (t!377643 (exprs!5865 (h!70567 zl!343)))))))))

(declare-fun b!5935359 () Bool)

(assert (=> b!5935359 (= e!3632236 (isConcat!932 lt!2311182))))

(declare-fun b!5935360 () Bool)

(declare-fun e!3632234 () Bool)

(assert (=> b!5935360 (= e!3632234 e!3632236)))

(declare-fun c!1055232 () Bool)

(assert (=> b!5935360 (= c!1055232 (isEmpty!35985 (tail!11589 (t!377643 (exprs!5865 (h!70567 zl!343))))))))

(declare-fun b!5935361 () Bool)

(assert (=> b!5935361 (= e!3632233 e!3632232)))

(declare-fun c!1055233 () Bool)

(assert (=> b!5935361 (= c!1055233 ((_ is Cons!64118) (t!377643 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935362 () Bool)

(assert (=> b!5935362 (= e!3632231 e!3632234)))

(declare-fun c!1055231 () Bool)

(assert (=> b!5935362 (= c!1055231 (isEmpty!35985 (t!377643 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935363 () Bool)

(assert (=> b!5935363 (= e!3632235 (isEmpty!35985 (t!377643 (t!377643 (exprs!5865 (h!70567 zl!343))))))))

(declare-fun b!5935364 () Bool)

(assert (=> b!5935364 (= e!3632232 EmptyExpr!15981)))

(declare-fun b!5935365 () Bool)

(assert (=> b!5935365 (= e!3632234 (isEmptyExpr!1409 lt!2311182))))

(declare-fun b!5935366 () Bool)

(assert (=> b!5935366 (= e!3632233 (h!70566 (t!377643 (exprs!5865 (h!70567 zl!343)))))))

(assert (= (and d!1860586 res!2486330) b!5935363))

(assert (= (and d!1860586 c!1055234) b!5935366))

(assert (= (and d!1860586 (not c!1055234)) b!5935361))

(assert (= (and b!5935361 c!1055233) b!5935358))

(assert (= (and b!5935361 (not c!1055233)) b!5935364))

(assert (= (and d!1860586 res!2486329) b!5935362))

(assert (= (and b!5935362 c!1055231) b!5935365))

(assert (= (and b!5935362 (not c!1055231)) b!5935360))

(assert (= (and b!5935360 c!1055232) b!5935357))

(assert (= (and b!5935360 (not c!1055232)) b!5935359))

(declare-fun m!6826280 () Bool)

(assert (=> d!1860586 m!6826280))

(declare-fun m!6826282 () Bool)

(assert (=> d!1860586 m!6826282))

(declare-fun m!6826284 () Bool)

(assert (=> b!5935360 m!6826284))

(assert (=> b!5935360 m!6826284))

(declare-fun m!6826286 () Bool)

(assert (=> b!5935360 m!6826286))

(declare-fun m!6826288 () Bool)

(assert (=> b!5935358 m!6826288))

(declare-fun m!6826290 () Bool)

(assert (=> b!5935363 m!6826290))

(assert (=> b!5935362 m!6825882))

(declare-fun m!6826292 () Bool)

(assert (=> b!5935357 m!6826292))

(declare-fun m!6826294 () Bool)

(assert (=> b!5935365 m!6826294))

(declare-fun m!6826296 () Bool)

(assert (=> b!5935359 m!6826296))

(assert (=> b!5935244 d!1860586))

(declare-fun d!1860588 () Bool)

(assert (=> d!1860588 true))

(assert (=> d!1860588 true))

(declare-fun res!2486333 () Bool)

(assert (=> d!1860588 (= (choose!44735 lambda!323635) res!2486333)))

(assert (=> d!1860538 d!1860588))

(declare-fun b!5935367 () Bool)

(declare-fun e!3632242 () Bool)

(declare-fun call!471424 () Bool)

(assert (=> b!5935367 (= e!3632242 call!471424)))

(declare-fun bm!471417 () Bool)

(declare-fun call!471422 () Bool)

(declare-fun call!471423 () Bool)

(assert (=> bm!471417 (= call!471422 call!471423)))

(declare-fun bm!471418 () Bool)

(declare-fun c!1055235 () Bool)

(assert (=> bm!471418 (= call!471424 (validRegex!7717 (ite c!1055235 (regTwo!32475 lt!2311177) (regTwo!32474 lt!2311177))))))

(declare-fun bm!471419 () Bool)

(declare-fun c!1055236 () Bool)

(assert (=> bm!471419 (= call!471423 (validRegex!7717 (ite c!1055236 (reg!16310 lt!2311177) (ite c!1055235 (regOne!32475 lt!2311177) (regOne!32474 lt!2311177)))))))

(declare-fun b!5935368 () Bool)

(declare-fun res!2486338 () Bool)

(declare-fun e!3632237 () Bool)

(assert (=> b!5935368 (=> (not res!2486338) (not e!3632237))))

(assert (=> b!5935368 (= res!2486338 call!471422)))

(declare-fun e!3632238 () Bool)

(assert (=> b!5935368 (= e!3632238 e!3632237)))

(declare-fun b!5935370 () Bool)

(declare-fun e!3632241 () Bool)

(assert (=> b!5935370 (= e!3632241 e!3632242)))

(declare-fun res!2486334 () Bool)

(assert (=> b!5935370 (=> (not res!2486334) (not e!3632242))))

(assert (=> b!5935370 (= res!2486334 call!471422)))

(declare-fun b!5935371 () Bool)

(declare-fun res!2486337 () Bool)

(assert (=> b!5935371 (=> res!2486337 e!3632241)))

(assert (=> b!5935371 (= res!2486337 (not ((_ is Concat!24826) lt!2311177)))))

(assert (=> b!5935371 (= e!3632238 e!3632241)))

(declare-fun b!5935372 () Bool)

(declare-fun e!3632240 () Bool)

(declare-fun e!3632239 () Bool)

(assert (=> b!5935372 (= e!3632240 e!3632239)))

(assert (=> b!5935372 (= c!1055236 ((_ is Star!15981) lt!2311177))))

(declare-fun b!5935373 () Bool)

(assert (=> b!5935373 (= e!3632239 e!3632238)))

(assert (=> b!5935373 (= c!1055235 ((_ is Union!15981) lt!2311177))))

(declare-fun b!5935369 () Bool)

(assert (=> b!5935369 (= e!3632237 call!471424)))

(declare-fun d!1860590 () Bool)

(declare-fun res!2486335 () Bool)

(assert (=> d!1860590 (=> res!2486335 e!3632240)))

(assert (=> d!1860590 (= res!2486335 ((_ is ElementMatch!15981) lt!2311177))))

(assert (=> d!1860590 (= (validRegex!7717 lt!2311177) e!3632240)))

(declare-fun b!5935374 () Bool)

(declare-fun e!3632243 () Bool)

(assert (=> b!5935374 (= e!3632239 e!3632243)))

(declare-fun res!2486336 () Bool)

(assert (=> b!5935374 (= res!2486336 (not (nullable!5976 (reg!16310 lt!2311177))))))

(assert (=> b!5935374 (=> (not res!2486336) (not e!3632243))))

(declare-fun b!5935375 () Bool)

(assert (=> b!5935375 (= e!3632243 call!471423)))

(assert (= (and d!1860590 (not res!2486335)) b!5935372))

(assert (= (and b!5935372 c!1055236) b!5935374))

(assert (= (and b!5935372 (not c!1055236)) b!5935373))

(assert (= (and b!5935374 res!2486336) b!5935375))

(assert (= (and b!5935373 c!1055235) b!5935368))

(assert (= (and b!5935373 (not c!1055235)) b!5935371))

(assert (= (and b!5935368 res!2486338) b!5935369))

(assert (= (and b!5935371 (not res!2486337)) b!5935370))

(assert (= (and b!5935370 res!2486334) b!5935367))

(assert (= (or b!5935369 b!5935367) bm!471418))

(assert (= (or b!5935368 b!5935370) bm!471417))

(assert (= (or b!5935375 bm!471417) bm!471419))

(declare-fun m!6826298 () Bool)

(assert (=> bm!471418 m!6826298))

(declare-fun m!6826300 () Bool)

(assert (=> bm!471419 m!6826300))

(declare-fun m!6826302 () Bool)

(assert (=> b!5935374 m!6826302))

(assert (=> d!1860572 d!1860590))

(declare-fun d!1860592 () Bool)

(declare-fun res!2486343 () Bool)

(declare-fun e!3632248 () Bool)

(assert (=> d!1860592 (=> res!2486343 e!3632248)))

(assert (=> d!1860592 (= res!2486343 ((_ is Nil!64118) (unfocusZipperList!1402 zl!343)))))

(assert (=> d!1860592 (= (forall!15064 (unfocusZipperList!1402 zl!343) lambda!323697) e!3632248)))

(declare-fun b!5935380 () Bool)

(declare-fun e!3632249 () Bool)

(assert (=> b!5935380 (= e!3632248 e!3632249)))

(declare-fun res!2486344 () Bool)

(assert (=> b!5935380 (=> (not res!2486344) (not e!3632249))))

(declare-fun dynLambda!25077 (Int Regex!15981) Bool)

(assert (=> b!5935380 (= res!2486344 (dynLambda!25077 lambda!323697 (h!70566 (unfocusZipperList!1402 zl!343))))))

(declare-fun b!5935381 () Bool)

(assert (=> b!5935381 (= e!3632249 (forall!15064 (t!377643 (unfocusZipperList!1402 zl!343)) lambda!323697))))

(assert (= (and d!1860592 (not res!2486343)) b!5935380))

(assert (= (and b!5935380 res!2486344) b!5935381))

(declare-fun b_lambda!222917 () Bool)

(assert (=> (not b_lambda!222917) (not b!5935380)))

(declare-fun m!6826304 () Bool)

(assert (=> b!5935380 m!6826304))

(declare-fun m!6826306 () Bool)

(assert (=> b!5935381 m!6826306))

(assert (=> d!1860572 d!1860592))

(declare-fun d!1860594 () Bool)

(assert (=> d!1860594 (= (isDefined!12575 lt!2311159) (not (isEmpty!35990 lt!2311159)))))

(declare-fun bs!1404064 () Bool)

(assert (= bs!1404064 d!1860594))

(declare-fun m!6826308 () Bool)

(assert (=> bs!1404064 m!6826308))

(assert (=> b!5935192 d!1860594))

(declare-fun d!1860596 () Bool)

(assert (=> d!1860596 (= (isEmpty!35985 (exprs!5865 (h!70567 zl!343))) ((_ is Nil!64118) (exprs!5865 (h!70567 zl!343))))))

(assert (=> b!5935248 d!1860596))

(declare-fun b!5935382 () Bool)

(declare-fun e!3632250 () Bool)

(assert (=> b!5935382 (= e!3632250 (nullable!5976 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311091)))))))))

(declare-fun b!5935383 () Bool)

(declare-fun e!3632251 () (InoxSet Context!10730))

(assert (=> b!5935383 (= e!3632251 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471420 () Bool)

(declare-fun call!471425 () (InoxSet Context!10730))

(assert (=> bm!471420 (= call!471425 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311091))))) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311091)))))) (h!70568 s!2326)))))

(declare-fun b!5935384 () Bool)

(assert (=> b!5935384 (= e!3632251 call!471425)))

(declare-fun b!5935385 () Bool)

(declare-fun e!3632252 () (InoxSet Context!10730))

(assert (=> b!5935385 (= e!3632252 e!3632251)))

(declare-fun c!1055238 () Bool)

(assert (=> b!5935385 (= c!1055238 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311091))))))))

(declare-fun b!5935386 () Bool)

(assert (=> b!5935386 (= e!3632252 ((_ map or) call!471425 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311091)))))) (h!70568 s!2326))))))

(declare-fun d!1860598 () Bool)

(declare-fun c!1055237 () Bool)

(assert (=> d!1860598 (= c!1055237 e!3632250)))

(declare-fun res!2486345 () Bool)

(assert (=> d!1860598 (=> (not res!2486345) (not e!3632250))))

(assert (=> d!1860598 (= res!2486345 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311091))))))))

(assert (=> d!1860598 (= (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 lt!2311091))) (h!70568 s!2326)) e!3632252)))

(assert (= (and d!1860598 res!2486345) b!5935382))

(assert (= (and d!1860598 c!1055237) b!5935386))

(assert (= (and d!1860598 (not c!1055237)) b!5935385))

(assert (= (and b!5935385 c!1055238) b!5935384))

(assert (= (and b!5935385 (not c!1055238)) b!5935383))

(assert (= (or b!5935386 b!5935384) bm!471420))

(declare-fun m!6826310 () Bool)

(assert (=> b!5935382 m!6826310))

(declare-fun m!6826312 () Bool)

(assert (=> bm!471420 m!6826312))

(declare-fun m!6826314 () Bool)

(assert (=> b!5935386 m!6826314))

(assert (=> b!5935217 d!1860598))

(declare-fun d!1860600 () Bool)

(assert (=> d!1860600 (= (isEmpty!35985 (tail!11589 (unfocusZipperList!1402 zl!343))) ((_ is Nil!64118) (tail!11589 (unfocusZipperList!1402 zl!343))))))

(assert (=> b!5935275 d!1860600))

(declare-fun d!1860602 () Bool)

(assert (=> d!1860602 (= (tail!11589 (unfocusZipperList!1402 zl!343)) (t!377643 (unfocusZipperList!1402 zl!343)))))

(assert (=> b!5935275 d!1860602))

(assert (=> bs!1404055 d!1860476))

(declare-fun b!5935387 () Bool)

(declare-fun e!3632258 () Bool)

(declare-fun call!471428 () Bool)

(assert (=> b!5935387 (= e!3632258 call!471428)))

(declare-fun bm!471421 () Bool)

(declare-fun call!471426 () Bool)

(declare-fun call!471427 () Bool)

(assert (=> bm!471421 (= call!471426 call!471427)))

(declare-fun c!1055239 () Bool)

(declare-fun bm!471422 () Bool)

(assert (=> bm!471422 (= call!471428 (validRegex!7717 (ite c!1055239 (regTwo!32475 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))) (regTwo!32474 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))))

(declare-fun bm!471423 () Bool)

(declare-fun c!1055240 () Bool)

(assert (=> bm!471423 (= call!471427 (validRegex!7717 (ite c!1055240 (reg!16310 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))) (ite c!1055239 (regOne!32475 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))) (regOne!32474 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292))))))))))

(declare-fun b!5935388 () Bool)

(declare-fun res!2486350 () Bool)

(declare-fun e!3632253 () Bool)

(assert (=> b!5935388 (=> (not res!2486350) (not e!3632253))))

(assert (=> b!5935388 (= res!2486350 call!471426)))

(declare-fun e!3632254 () Bool)

(assert (=> b!5935388 (= e!3632254 e!3632253)))

(declare-fun b!5935390 () Bool)

(declare-fun e!3632257 () Bool)

(assert (=> b!5935390 (= e!3632257 e!3632258)))

(declare-fun res!2486346 () Bool)

(assert (=> b!5935390 (=> (not res!2486346) (not e!3632258))))

(assert (=> b!5935390 (= res!2486346 call!471426)))

(declare-fun b!5935391 () Bool)

(declare-fun res!2486349 () Bool)

(assert (=> b!5935391 (=> res!2486349 e!3632257)))

(assert (=> b!5935391 (= res!2486349 (not ((_ is Concat!24826) (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292))))))))

(assert (=> b!5935391 (= e!3632254 e!3632257)))

(declare-fun b!5935392 () Bool)

(declare-fun e!3632256 () Bool)

(declare-fun e!3632255 () Bool)

(assert (=> b!5935392 (= e!3632256 e!3632255)))

(assert (=> b!5935392 (= c!1055240 ((_ is Star!15981) (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))

(declare-fun b!5935393 () Bool)

(assert (=> b!5935393 (= e!3632255 e!3632254)))

(assert (=> b!5935393 (= c!1055239 ((_ is Union!15981) (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))

(declare-fun b!5935389 () Bool)

(assert (=> b!5935389 (= e!3632253 call!471428)))

(declare-fun d!1860604 () Bool)

(declare-fun res!2486347 () Bool)

(assert (=> d!1860604 (=> res!2486347 e!3632256)))

(assert (=> d!1860604 (= res!2486347 ((_ is ElementMatch!15981) (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))

(assert (=> d!1860604 (= (validRegex!7717 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))) e!3632256)))

(declare-fun b!5935394 () Bool)

(declare-fun e!3632259 () Bool)

(assert (=> b!5935394 (= e!3632255 e!3632259)))

(declare-fun res!2486348 () Bool)

(assert (=> b!5935394 (= res!2486348 (not (nullable!5976 (reg!16310 (ite c!1055061 (reg!16310 r!7292) (ite c!1055060 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))))

(assert (=> b!5935394 (=> (not res!2486348) (not e!3632259))))

(declare-fun b!5935395 () Bool)

(assert (=> b!5935395 (= e!3632259 call!471427)))

(assert (= (and d!1860604 (not res!2486347)) b!5935392))

(assert (= (and b!5935392 c!1055240) b!5935394))

(assert (= (and b!5935392 (not c!1055240)) b!5935393))

(assert (= (and b!5935394 res!2486348) b!5935395))

(assert (= (and b!5935393 c!1055239) b!5935388))

(assert (= (and b!5935393 (not c!1055239)) b!5935391))

(assert (= (and b!5935388 res!2486350) b!5935389))

(assert (= (and b!5935391 (not res!2486349)) b!5935390))

(assert (= (and b!5935390 res!2486346) b!5935387))

(assert (= (or b!5935389 b!5935387) bm!471422))

(assert (= (or b!5935388 b!5935390) bm!471421))

(assert (= (or b!5935395 bm!471421) bm!471423))

(declare-fun m!6826316 () Bool)

(assert (=> bm!471422 m!6826316))

(declare-fun m!6826318 () Bool)

(assert (=> bm!471423 m!6826318))

(declare-fun m!6826320 () Bool)

(assert (=> b!5935394 m!6826320))

(assert (=> bm!471349 d!1860604))

(declare-fun b!5935396 () Bool)

(declare-fun e!3632265 () Bool)

(declare-fun call!471431 () Bool)

(assert (=> b!5935396 (= e!3632265 call!471431)))

(declare-fun bm!471424 () Bool)

(declare-fun call!471429 () Bool)

(declare-fun call!471430 () Bool)

(assert (=> bm!471424 (= call!471429 call!471430)))

(declare-fun bm!471425 () Bool)

(declare-fun c!1055241 () Bool)

(assert (=> bm!471425 (= call!471431 (validRegex!7717 (ite c!1055241 (regTwo!32475 lt!2311171) (regTwo!32474 lt!2311171))))))

(declare-fun bm!471426 () Bool)

(declare-fun c!1055242 () Bool)

(assert (=> bm!471426 (= call!471430 (validRegex!7717 (ite c!1055242 (reg!16310 lt!2311171) (ite c!1055241 (regOne!32475 lt!2311171) (regOne!32474 lt!2311171)))))))

(declare-fun b!5935397 () Bool)

(declare-fun res!2486355 () Bool)

(declare-fun e!3632260 () Bool)

(assert (=> b!5935397 (=> (not res!2486355) (not e!3632260))))

(assert (=> b!5935397 (= res!2486355 call!471429)))

(declare-fun e!3632261 () Bool)

(assert (=> b!5935397 (= e!3632261 e!3632260)))

(declare-fun b!5935399 () Bool)

(declare-fun e!3632264 () Bool)

(assert (=> b!5935399 (= e!3632264 e!3632265)))

(declare-fun res!2486351 () Bool)

(assert (=> b!5935399 (=> (not res!2486351) (not e!3632265))))

(assert (=> b!5935399 (= res!2486351 call!471429)))

(declare-fun b!5935400 () Bool)

(declare-fun res!2486354 () Bool)

(assert (=> b!5935400 (=> res!2486354 e!3632264)))

(assert (=> b!5935400 (= res!2486354 (not ((_ is Concat!24826) lt!2311171)))))

(assert (=> b!5935400 (= e!3632261 e!3632264)))

(declare-fun b!5935401 () Bool)

(declare-fun e!3632263 () Bool)

(declare-fun e!3632262 () Bool)

(assert (=> b!5935401 (= e!3632263 e!3632262)))

(assert (=> b!5935401 (= c!1055242 ((_ is Star!15981) lt!2311171))))

(declare-fun b!5935402 () Bool)

(assert (=> b!5935402 (= e!3632262 e!3632261)))

(assert (=> b!5935402 (= c!1055241 ((_ is Union!15981) lt!2311171))))

(declare-fun b!5935398 () Bool)

(assert (=> b!5935398 (= e!3632260 call!471431)))

(declare-fun d!1860606 () Bool)

(declare-fun res!2486352 () Bool)

(assert (=> d!1860606 (=> res!2486352 e!3632263)))

(assert (=> d!1860606 (= res!2486352 ((_ is ElementMatch!15981) lt!2311171))))

(assert (=> d!1860606 (= (validRegex!7717 lt!2311171) e!3632263)))

(declare-fun b!5935403 () Bool)

(declare-fun e!3632266 () Bool)

(assert (=> b!5935403 (= e!3632262 e!3632266)))

(declare-fun res!2486353 () Bool)

(assert (=> b!5935403 (= res!2486353 (not (nullable!5976 (reg!16310 lt!2311171))))))

(assert (=> b!5935403 (=> (not res!2486353) (not e!3632266))))

(declare-fun b!5935404 () Bool)

(assert (=> b!5935404 (= e!3632266 call!471430)))

(assert (= (and d!1860606 (not res!2486352)) b!5935401))

(assert (= (and b!5935401 c!1055242) b!5935403))

(assert (= (and b!5935401 (not c!1055242)) b!5935402))

(assert (= (and b!5935403 res!2486353) b!5935404))

(assert (= (and b!5935402 c!1055241) b!5935397))

(assert (= (and b!5935402 (not c!1055241)) b!5935400))

(assert (= (and b!5935397 res!2486355) b!5935398))

(assert (= (and b!5935400 (not res!2486354)) b!5935399))

(assert (= (and b!5935399 res!2486351) b!5935396))

(assert (= (or b!5935398 b!5935396) bm!471425))

(assert (= (or b!5935397 b!5935399) bm!471424))

(assert (= (or b!5935404 bm!471424) bm!471426))

(declare-fun m!6826322 () Bool)

(assert (=> bm!471425 m!6826322))

(declare-fun m!6826324 () Bool)

(assert (=> bm!471426 m!6826324))

(declare-fun m!6826326 () Bool)

(assert (=> b!5935403 m!6826326))

(assert (=> d!1860566 d!1860606))

(assert (=> d!1860566 d!1860572))

(assert (=> d!1860566 d!1860574))

(declare-fun b!5935405 () Bool)

(declare-fun c!1055244 () Bool)

(assert (=> b!5935405 (= c!1055244 ((_ is Star!15981) (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun e!3632271 () (InoxSet Context!10730))

(declare-fun e!3632269 () (InoxSet Context!10730))

(assert (=> b!5935405 (= e!3632271 e!3632269)))

(declare-fun bm!471427 () Bool)

(declare-fun c!1055247 () Bool)

(declare-fun call!471434 () (InoxSet Context!10730))

(declare-fun call!471435 () List!64242)

(assert (=> bm!471427 (= call!471434 (derivationStepZipperDown!1231 (ite c!1055247 (regOne!32475 (h!70566 (exprs!5865 lt!2311089))) (regOne!32474 (h!70566 (exprs!5865 lt!2311089)))) (ite c!1055247 (Context!10731 (t!377643 (exprs!5865 lt!2311089))) (Context!10731 call!471435)) (h!70568 s!2326)))))

(declare-fun b!5935406 () Bool)

(declare-fun e!3632268 () (InoxSet Context!10730))

(declare-fun call!471436 () (InoxSet Context!10730))

(assert (=> b!5935406 (= e!3632268 ((_ map or) call!471434 call!471436))))

(declare-fun bm!471428 () Bool)

(declare-fun call!471433 () (InoxSet Context!10730))

(declare-fun call!471432 () (InoxSet Context!10730))

(assert (=> bm!471428 (= call!471433 call!471432)))

(declare-fun b!5935407 () Bool)

(declare-fun e!3632267 () Bool)

(assert (=> b!5935407 (= e!3632267 (nullable!5976 (regOne!32474 (h!70566 (exprs!5865 lt!2311089)))))))

(declare-fun bm!471429 () Bool)

(declare-fun c!1055245 () Bool)

(declare-fun c!1055243 () Bool)

(declare-fun call!471437 () List!64242)

(assert (=> bm!471429 (= call!471436 (derivationStepZipperDown!1231 (ite c!1055247 (regTwo!32475 (h!70566 (exprs!5865 lt!2311089))) (ite c!1055245 (regTwo!32474 (h!70566 (exprs!5865 lt!2311089))) (ite c!1055243 (regOne!32474 (h!70566 (exprs!5865 lt!2311089))) (reg!16310 (h!70566 (exprs!5865 lt!2311089)))))) (ite (or c!1055247 c!1055245) (Context!10731 (t!377643 (exprs!5865 lt!2311089))) (Context!10731 call!471437)) (h!70568 s!2326)))))

(declare-fun b!5935408 () Bool)

(declare-fun e!3632270 () (InoxSet Context!10730))

(assert (=> b!5935408 (= e!3632270 e!3632268)))

(assert (=> b!5935408 (= c!1055247 ((_ is Union!15981) (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun b!5935409 () Bool)

(assert (=> b!5935409 (= c!1055245 e!3632267)))

(declare-fun res!2486356 () Bool)

(assert (=> b!5935409 (=> (not res!2486356) (not e!3632267))))

(assert (=> b!5935409 (= res!2486356 ((_ is Concat!24826) (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun e!3632272 () (InoxSet Context!10730))

(assert (=> b!5935409 (= e!3632268 e!3632272)))

(declare-fun bm!471430 () Bool)

(assert (=> bm!471430 (= call!471437 call!471435)))

(declare-fun b!5935410 () Bool)

(assert (=> b!5935410 (= e!3632270 (store ((as const (Array Context!10730 Bool)) false) (Context!10731 (t!377643 (exprs!5865 lt!2311089))) true))))

(declare-fun b!5935411 () Bool)

(assert (=> b!5935411 (= e!3632272 e!3632271)))

(assert (=> b!5935411 (= c!1055243 ((_ is Concat!24826) (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun b!5935412 () Bool)

(assert (=> b!5935412 (= e!3632271 call!471433)))

(declare-fun d!1860608 () Bool)

(declare-fun c!1055246 () Bool)

(assert (=> d!1860608 (= c!1055246 (and ((_ is ElementMatch!15981) (h!70566 (exprs!5865 lt!2311089))) (= (c!1055049 (h!70566 (exprs!5865 lt!2311089))) (h!70568 s!2326))))))

(assert (=> d!1860608 (= (derivationStepZipperDown!1231 (h!70566 (exprs!5865 lt!2311089)) (Context!10731 (t!377643 (exprs!5865 lt!2311089))) (h!70568 s!2326)) e!3632270)))

(declare-fun b!5935413 () Bool)

(assert (=> b!5935413 (= e!3632269 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5935414 () Bool)

(assert (=> b!5935414 (= e!3632269 call!471433)))

(declare-fun bm!471431 () Bool)

(assert (=> bm!471431 (= call!471432 call!471436)))

(declare-fun b!5935415 () Bool)

(assert (=> b!5935415 (= e!3632272 ((_ map or) call!471434 call!471432))))

(declare-fun bm!471432 () Bool)

(assert (=> bm!471432 (= call!471435 ($colon$colon!1868 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311089)))) (ite (or c!1055245 c!1055243) (regTwo!32474 (h!70566 (exprs!5865 lt!2311089))) (h!70566 (exprs!5865 lt!2311089)))))))

(assert (= (and d!1860608 c!1055246) b!5935410))

(assert (= (and d!1860608 (not c!1055246)) b!5935408))

(assert (= (and b!5935408 c!1055247) b!5935406))

(assert (= (and b!5935408 (not c!1055247)) b!5935409))

(assert (= (and b!5935409 res!2486356) b!5935407))

(assert (= (and b!5935409 c!1055245) b!5935415))

(assert (= (and b!5935409 (not c!1055245)) b!5935411))

(assert (= (and b!5935411 c!1055243) b!5935412))

(assert (= (and b!5935411 (not c!1055243)) b!5935405))

(assert (= (and b!5935405 c!1055244) b!5935414))

(assert (= (and b!5935405 (not c!1055244)) b!5935413))

(assert (= (or b!5935412 b!5935414) bm!471430))

(assert (= (or b!5935412 b!5935414) bm!471428))

(assert (= (or b!5935415 bm!471430) bm!471432))

(assert (= (or b!5935415 bm!471428) bm!471431))

(assert (= (or b!5935406 bm!471431) bm!471429))

(assert (= (or b!5935406 b!5935415) bm!471427))

(declare-fun m!6826328 () Bool)

(assert (=> bm!471427 m!6826328))

(declare-fun m!6826330 () Bool)

(assert (=> b!5935407 m!6826330))

(declare-fun m!6826332 () Bool)

(assert (=> b!5935410 m!6826332))

(declare-fun m!6826334 () Bool)

(assert (=> bm!471429 m!6826334))

(declare-fun m!6826336 () Bool)

(assert (=> bm!471432 m!6826336))

(assert (=> bm!471415 d!1860608))

(declare-fun d!1860610 () Bool)

(assert (=> d!1860610 (= (isEmpty!35985 (unfocusZipperList!1402 zl!343)) ((_ is Nil!64118) (unfocusZipperList!1402 zl!343)))))

(assert (=> b!5935277 d!1860610))

(declare-fun d!1860612 () Bool)

(assert (=> d!1860612 (= (head!12503 s!2326) (h!70568 s!2326))))

(assert (=> b!5935092 d!1860612))

(declare-fun b!5935416 () Bool)

(declare-fun res!2486361 () Bool)

(declare-fun e!3632277 () Bool)

(assert (=> b!5935416 (=> res!2486361 e!3632277)))

(assert (=> b!5935416 (= res!2486361 (not ((_ is ElementMatch!15981) (regOne!32474 r!7292))))))

(declare-fun e!3632278 () Bool)

(assert (=> b!5935416 (= e!3632278 e!3632277)))

(declare-fun b!5935417 () Bool)

(declare-fun e!3632279 () Bool)

(assert (=> b!5935417 (= e!3632279 (nullable!5976 (regOne!32474 r!7292)))))

(declare-fun b!5935418 () Bool)

(declare-fun e!3632275 () Bool)

(assert (=> b!5935418 (= e!3632275 (= (head!12503 (_1!36263 (get!22084 lt!2311159))) (c!1055049 (regOne!32474 r!7292))))))

(declare-fun b!5935419 () Bool)

(assert (=> b!5935419 (= e!3632279 (matchR!8164 (derivativeStep!4712 (regOne!32474 r!7292) (head!12503 (_1!36263 (get!22084 lt!2311159)))) (tail!11588 (_1!36263 (get!22084 lt!2311159)))))))

(declare-fun b!5935420 () Bool)

(declare-fun e!3632276 () Bool)

(declare-fun lt!2311183 () Bool)

(declare-fun call!471438 () Bool)

(assert (=> b!5935420 (= e!3632276 (= lt!2311183 call!471438))))

(declare-fun b!5935422 () Bool)

(declare-fun e!3632274 () Bool)

(assert (=> b!5935422 (= e!3632277 e!3632274)))

(declare-fun res!2486364 () Bool)

(assert (=> b!5935422 (=> (not res!2486364) (not e!3632274))))

(assert (=> b!5935422 (= res!2486364 (not lt!2311183))))

(declare-fun b!5935423 () Bool)

(assert (=> b!5935423 (= e!3632278 (not lt!2311183))))

(declare-fun b!5935424 () Bool)

(declare-fun res!2486363 () Bool)

(assert (=> b!5935424 (=> res!2486363 e!3632277)))

(assert (=> b!5935424 (= res!2486363 e!3632275)))

(declare-fun res!2486359 () Bool)

(assert (=> b!5935424 (=> (not res!2486359) (not e!3632275))))

(assert (=> b!5935424 (= res!2486359 lt!2311183)))

(declare-fun b!5935425 () Bool)

(declare-fun e!3632273 () Bool)

(assert (=> b!5935425 (= e!3632274 e!3632273)))

(declare-fun res!2486360 () Bool)

(assert (=> b!5935425 (=> res!2486360 e!3632273)))

(assert (=> b!5935425 (= res!2486360 call!471438)))

(declare-fun b!5935426 () Bool)

(declare-fun res!2486357 () Bool)

(assert (=> b!5935426 (=> res!2486357 e!3632273)))

(assert (=> b!5935426 (= res!2486357 (not (isEmpty!35988 (tail!11588 (_1!36263 (get!22084 lt!2311159))))))))

(declare-fun b!5935427 () Bool)

(assert (=> b!5935427 (= e!3632273 (not (= (head!12503 (_1!36263 (get!22084 lt!2311159))) (c!1055049 (regOne!32474 r!7292)))))))

(declare-fun bm!471433 () Bool)

(assert (=> bm!471433 (= call!471438 (isEmpty!35988 (_1!36263 (get!22084 lt!2311159))))))

(declare-fun b!5935428 () Bool)

(assert (=> b!5935428 (= e!3632276 e!3632278)))

(declare-fun c!1055249 () Bool)

(assert (=> b!5935428 (= c!1055249 ((_ is EmptyLang!15981) (regOne!32474 r!7292)))))

(declare-fun b!5935429 () Bool)

(declare-fun res!2486362 () Bool)

(assert (=> b!5935429 (=> (not res!2486362) (not e!3632275))))

(assert (=> b!5935429 (= res!2486362 (isEmpty!35988 (tail!11588 (_1!36263 (get!22084 lt!2311159)))))))

(declare-fun b!5935421 () Bool)

(declare-fun res!2486358 () Bool)

(assert (=> b!5935421 (=> (not res!2486358) (not e!3632275))))

(assert (=> b!5935421 (= res!2486358 (not call!471438))))

(declare-fun d!1860614 () Bool)

(assert (=> d!1860614 e!3632276))

(declare-fun c!1055250 () Bool)

(assert (=> d!1860614 (= c!1055250 ((_ is EmptyExpr!15981) (regOne!32474 r!7292)))))

(assert (=> d!1860614 (= lt!2311183 e!3632279)))

(declare-fun c!1055248 () Bool)

(assert (=> d!1860614 (= c!1055248 (isEmpty!35988 (_1!36263 (get!22084 lt!2311159))))))

(assert (=> d!1860614 (validRegex!7717 (regOne!32474 r!7292))))

(assert (=> d!1860614 (= (matchR!8164 (regOne!32474 r!7292) (_1!36263 (get!22084 lt!2311159))) lt!2311183)))

(assert (= (and d!1860614 c!1055248) b!5935417))

(assert (= (and d!1860614 (not c!1055248)) b!5935419))

(assert (= (and d!1860614 c!1055250) b!5935420))

(assert (= (and d!1860614 (not c!1055250)) b!5935428))

(assert (= (and b!5935428 c!1055249) b!5935423))

(assert (= (and b!5935428 (not c!1055249)) b!5935416))

(assert (= (and b!5935416 (not res!2486361)) b!5935424))

(assert (= (and b!5935424 res!2486359) b!5935421))

(assert (= (and b!5935421 res!2486358) b!5935429))

(assert (= (and b!5935429 res!2486362) b!5935418))

(assert (= (and b!5935424 (not res!2486363)) b!5935422))

(assert (= (and b!5935422 res!2486364) b!5935425))

(assert (= (and b!5935425 (not res!2486360)) b!5935426))

(assert (= (and b!5935426 (not res!2486357)) b!5935427))

(assert (= (or b!5935420 b!5935421 b!5935425) bm!471433))

(declare-fun m!6826338 () Bool)

(assert (=> b!5935418 m!6826338))

(declare-fun m!6826340 () Bool)

(assert (=> b!5935429 m!6826340))

(assert (=> b!5935429 m!6826340))

(declare-fun m!6826342 () Bool)

(assert (=> b!5935429 m!6826342))

(declare-fun m!6826344 () Bool)

(assert (=> bm!471433 m!6826344))

(assert (=> d!1860614 m!6826344))

(assert (=> d!1860614 m!6826150))

(assert (=> b!5935419 m!6826338))

(assert (=> b!5935419 m!6826338))

(declare-fun m!6826346 () Bool)

(assert (=> b!5935419 m!6826346))

(assert (=> b!5935419 m!6826340))

(assert (=> b!5935419 m!6826346))

(assert (=> b!5935419 m!6826340))

(declare-fun m!6826348 () Bool)

(assert (=> b!5935419 m!6826348))

(assert (=> b!5935427 m!6826338))

(assert (=> b!5935417 m!6825950))

(assert (=> b!5935426 m!6826340))

(assert (=> b!5935426 m!6826340))

(assert (=> b!5935426 m!6826342))

(assert (=> b!5935196 d!1860614))

(assert (=> b!5935196 d!1860584))

(declare-fun d!1860616 () Bool)

(declare-fun res!2486369 () Bool)

(declare-fun e!3632284 () Bool)

(assert (=> d!1860616 (=> res!2486369 e!3632284)))

(assert (=> d!1860616 (= res!2486369 ((_ is Nil!64119) lt!2311145))))

(assert (=> d!1860616 (= (noDuplicate!1839 lt!2311145) e!3632284)))

(declare-fun b!5935434 () Bool)

(declare-fun e!3632285 () Bool)

(assert (=> b!5935434 (= e!3632284 e!3632285)))

(declare-fun res!2486370 () Bool)

(assert (=> b!5935434 (=> (not res!2486370) (not e!3632285))))

(declare-fun contains!19966 (List!64243 Context!10730) Bool)

(assert (=> b!5935434 (= res!2486370 (not (contains!19966 (t!377644 lt!2311145) (h!70567 lt!2311145))))))

(declare-fun b!5935435 () Bool)

(assert (=> b!5935435 (= e!3632285 (noDuplicate!1839 (t!377644 lt!2311145)))))

(assert (= (and d!1860616 (not res!2486369)) b!5935434))

(assert (= (and b!5935434 res!2486370) b!5935435))

(declare-fun m!6826350 () Bool)

(assert (=> b!5935434 m!6826350))

(declare-fun m!6826352 () Bool)

(assert (=> b!5935435 m!6826352))

(assert (=> d!1860508 d!1860616))

(declare-fun d!1860618 () Bool)

(declare-fun e!3632292 () Bool)

(assert (=> d!1860618 e!3632292))

(declare-fun res!2486376 () Bool)

(assert (=> d!1860618 (=> (not res!2486376) (not e!3632292))))

(declare-fun res!2486375 () List!64243)

(assert (=> d!1860618 (= res!2486376 (noDuplicate!1839 res!2486375))))

(declare-fun e!3632294 () Bool)

(assert (=> d!1860618 e!3632294))

(assert (=> d!1860618 (= (choose!44733 z!1189) res!2486375)))

(declare-fun b!5935443 () Bool)

(declare-fun e!3632293 () Bool)

(declare-fun tp!1651275 () Bool)

(assert (=> b!5935443 (= e!3632293 tp!1651275)))

(declare-fun b!5935442 () Bool)

(declare-fun tp!1651276 () Bool)

(assert (=> b!5935442 (= e!3632294 (and (inv!83199 (h!70567 res!2486375)) e!3632293 tp!1651276))))

(declare-fun b!5935444 () Bool)

(assert (=> b!5935444 (= e!3632292 (= (content!11820 res!2486375) z!1189))))

(assert (= b!5935442 b!5935443))

(assert (= (and d!1860618 ((_ is Cons!64119) res!2486375)) b!5935442))

(assert (= (and d!1860618 res!2486376) b!5935444))

(declare-fun m!6826354 () Bool)

(assert (=> d!1860618 m!6826354))

(declare-fun m!6826356 () Bool)

(assert (=> b!5935442 m!6826356))

(declare-fun m!6826358 () Bool)

(assert (=> b!5935444 m!6826358))

(assert (=> d!1860508 d!1860618))

(declare-fun d!1860620 () Bool)

(assert (=> d!1860620 (= (isEmpty!35985 (tail!11589 (exprs!5865 (h!70567 zl!343)))) ((_ is Nil!64118) (tail!11589 (exprs!5865 (h!70567 zl!343)))))))

(assert (=> b!5935246 d!1860620))

(declare-fun d!1860622 () Bool)

(assert (=> d!1860622 (= (tail!11589 (exprs!5865 (h!70567 zl!343))) (t!377643 (exprs!5865 (h!70567 zl!343))))))

(assert (=> b!5935246 d!1860622))

(declare-fun bs!1404065 () Bool)

(declare-fun d!1860624 () Bool)

(assert (= bs!1404065 (and d!1860624 d!1860586)))

(declare-fun lambda!323702 () Int)

(assert (=> bs!1404065 (= lambda!323702 lambda!323701)))

(declare-fun bs!1404066 () Bool)

(assert (= bs!1404066 (and d!1860624 d!1860550)))

(assert (=> bs!1404066 (= lambda!323702 lambda!323690)))

(declare-fun bs!1404067 () Bool)

(assert (= bs!1404067 (and d!1860624 d!1860546)))

(assert (=> bs!1404067 (= lambda!323702 lambda!323689)))

(declare-fun bs!1404068 () Bool)

(assert (= bs!1404068 (and d!1860624 d!1860574)))

(assert (=> bs!1404068 (= lambda!323702 lambda!323700)))

(declare-fun bs!1404069 () Bool)

(assert (= bs!1404069 (and d!1860624 d!1860570)))

(assert (=> bs!1404069 (= lambda!323702 lambda!323694)))

(declare-fun bs!1404070 () Bool)

(assert (= bs!1404070 (and d!1860624 d!1860568)))

(assert (=> bs!1404070 (= lambda!323702 lambda!323693)))

(declare-fun bs!1404071 () Bool)

(assert (= bs!1404071 (and d!1860624 d!1860572)))

(assert (=> bs!1404071 (= lambda!323702 lambda!323697)))

(declare-fun b!5935445 () Bool)

(declare-fun e!3632298 () Regex!15981)

(assert (=> b!5935445 (= e!3632298 (Union!15981 (h!70566 (t!377643 (unfocusZipperList!1402 zl!343))) (generalisedUnion!1825 (t!377643 (t!377643 (unfocusZipperList!1402 zl!343))))))))

(declare-fun b!5935446 () Bool)

(declare-fun e!3632299 () Regex!15981)

(assert (=> b!5935446 (= e!3632299 e!3632298)))

(declare-fun c!1055254 () Bool)

(assert (=> b!5935446 (= c!1055254 ((_ is Cons!64118) (t!377643 (unfocusZipperList!1402 zl!343))))))

(declare-fun e!3632300 () Bool)

(assert (=> d!1860624 e!3632300))

(declare-fun res!2486378 () Bool)

(assert (=> d!1860624 (=> (not res!2486378) (not e!3632300))))

(declare-fun lt!2311184 () Regex!15981)

(assert (=> d!1860624 (= res!2486378 (validRegex!7717 lt!2311184))))

(assert (=> d!1860624 (= lt!2311184 e!3632299)))

(declare-fun c!1055252 () Bool)

(declare-fun e!3632296 () Bool)

(assert (=> d!1860624 (= c!1055252 e!3632296)))

(declare-fun res!2486377 () Bool)

(assert (=> d!1860624 (=> (not res!2486377) (not e!3632296))))

(assert (=> d!1860624 (= res!2486377 ((_ is Cons!64118) (t!377643 (unfocusZipperList!1402 zl!343))))))

(assert (=> d!1860624 (forall!15064 (t!377643 (unfocusZipperList!1402 zl!343)) lambda!323702)))

(assert (=> d!1860624 (= (generalisedUnion!1825 (t!377643 (unfocusZipperList!1402 zl!343))) lt!2311184)))

(declare-fun b!5935447 () Bool)

(declare-fun e!3632297 () Bool)

(declare-fun e!3632295 () Bool)

(assert (=> b!5935447 (= e!3632297 e!3632295)))

(declare-fun c!1055251 () Bool)

(assert (=> b!5935447 (= c!1055251 (isEmpty!35985 (tail!11589 (t!377643 (unfocusZipperList!1402 zl!343)))))))

(declare-fun b!5935448 () Bool)

(assert (=> b!5935448 (= e!3632298 EmptyLang!15981)))

(declare-fun b!5935449 () Bool)

(assert (=> b!5935449 (= e!3632300 e!3632297)))

(declare-fun c!1055253 () Bool)

(assert (=> b!5935449 (= c!1055253 (isEmpty!35985 (t!377643 (unfocusZipperList!1402 zl!343))))))

(declare-fun b!5935450 () Bool)

(assert (=> b!5935450 (= e!3632297 (isEmptyLang!1418 lt!2311184))))

(declare-fun b!5935451 () Bool)

(assert (=> b!5935451 (= e!3632296 (isEmpty!35985 (t!377643 (t!377643 (unfocusZipperList!1402 zl!343)))))))

(declare-fun b!5935452 () Bool)

(assert (=> b!5935452 (= e!3632299 (h!70566 (t!377643 (unfocusZipperList!1402 zl!343))))))

(declare-fun b!5935453 () Bool)

(assert (=> b!5935453 (= e!3632295 (= lt!2311184 (head!12504 (t!377643 (unfocusZipperList!1402 zl!343)))))))

(declare-fun b!5935454 () Bool)

(assert (=> b!5935454 (= e!3632295 (isUnion!848 lt!2311184))))

(assert (= (and d!1860624 res!2486377) b!5935451))

(assert (= (and d!1860624 c!1055252) b!5935452))

(assert (= (and d!1860624 (not c!1055252)) b!5935446))

(assert (= (and b!5935446 c!1055254) b!5935445))

(assert (= (and b!5935446 (not c!1055254)) b!5935448))

(assert (= (and d!1860624 res!2486378) b!5935449))

(assert (= (and b!5935449 c!1055253) b!5935450))

(assert (= (and b!5935449 (not c!1055253)) b!5935447))

(assert (= (and b!5935447 c!1055251) b!5935453))

(assert (= (and b!5935447 (not c!1055251)) b!5935454))

(declare-fun m!6826360 () Bool)

(assert (=> b!5935453 m!6826360))

(declare-fun m!6826362 () Bool)

(assert (=> b!5935451 m!6826362))

(declare-fun m!6826364 () Bool)

(assert (=> b!5935445 m!6826364))

(declare-fun m!6826366 () Bool)

(assert (=> b!5935450 m!6826366))

(declare-fun m!6826368 () Bool)

(assert (=> d!1860624 m!6826368))

(declare-fun m!6826370 () Bool)

(assert (=> d!1860624 m!6826370))

(declare-fun m!6826372 () Bool)

(assert (=> b!5935454 m!6826372))

(declare-fun m!6826374 () Bool)

(assert (=> b!5935447 m!6826374))

(assert (=> b!5935447 m!6826374))

(declare-fun m!6826376 () Bool)

(assert (=> b!5935447 m!6826376))

(assert (=> b!5935449 m!6826238))

(assert (=> b!5935273 d!1860624))

(assert (=> d!1860554 d!1860548))

(declare-fun d!1860626 () Bool)

(assert (=> d!1860626 (= (flatMap!1494 lt!2311093 lambda!323636) (dynLambda!25076 lambda!323636 lt!2311091))))

(assert (=> d!1860626 true))

(declare-fun _$13!2704 () Unit!157233)

(assert (=> d!1860626 (= (choose!44729 lt!2311093 lt!2311091 lambda!323636) _$13!2704)))

(declare-fun b_lambda!222919 () Bool)

(assert (=> (not b_lambda!222919) (not d!1860626)))

(declare-fun bs!1404072 () Bool)

(assert (= bs!1404072 d!1860626))

(assert (=> bs!1404072 m!6825828))

(assert (=> bs!1404072 m!6826196))

(assert (=> d!1860554 d!1860626))

(declare-fun b!5935466 () Bool)

(declare-fun e!3632306 () Bool)

(declare-fun lt!2311187 () List!64244)

(assert (=> b!5935466 (= e!3632306 (or (not (= (t!377645 s!2326) Nil!64120)) (= lt!2311187 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)))))))

(declare-fun b!5935463 () Bool)

(declare-fun e!3632305 () List!64244)

(assert (=> b!5935463 (= e!3632305 (t!377645 s!2326))))

(declare-fun b!5935464 () Bool)

(assert (=> b!5935464 (= e!3632305 (Cons!64120 (h!70568 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120))) (++!14078 (t!377645 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120))) (t!377645 s!2326))))))

(declare-fun b!5935465 () Bool)

(declare-fun res!2486383 () Bool)

(assert (=> b!5935465 (=> (not res!2486383) (not e!3632306))))

(declare-fun size!40147 (List!64244) Int)

(assert (=> b!5935465 (= res!2486383 (= (size!40147 lt!2311187) (+ (size!40147 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120))) (size!40147 (t!377645 s!2326)))))))

(declare-fun d!1860628 () Bool)

(assert (=> d!1860628 e!3632306))

(declare-fun res!2486384 () Bool)

(assert (=> d!1860628 (=> (not res!2486384) (not e!3632306))))

(declare-fun content!11821 (List!64244) (InoxSet C!32232))

(assert (=> d!1860628 (= res!2486384 (= (content!11821 lt!2311187) ((_ map or) (content!11821 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120))) (content!11821 (t!377645 s!2326)))))))

(assert (=> d!1860628 (= lt!2311187 e!3632305)))

(declare-fun c!1055257 () Bool)

(assert (=> d!1860628 (= c!1055257 ((_ is Nil!64120) (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120))))))

(assert (=> d!1860628 (= (++!14078 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (t!377645 s!2326)) lt!2311187)))

(assert (= (and d!1860628 c!1055257) b!5935463))

(assert (= (and d!1860628 (not c!1055257)) b!5935464))

(assert (= (and d!1860628 res!2486384) b!5935465))

(assert (= (and b!5935465 res!2486383) b!5935466))

(declare-fun m!6826378 () Bool)

(assert (=> b!5935464 m!6826378))

(declare-fun m!6826380 () Bool)

(assert (=> b!5935465 m!6826380))

(assert (=> b!5935465 m!6826156))

(declare-fun m!6826382 () Bool)

(assert (=> b!5935465 m!6826382))

(declare-fun m!6826384 () Bool)

(assert (=> b!5935465 m!6826384))

(declare-fun m!6826386 () Bool)

(assert (=> d!1860628 m!6826386))

(assert (=> d!1860628 m!6826156))

(declare-fun m!6826388 () Bool)

(assert (=> d!1860628 m!6826388))

(declare-fun m!6826390 () Bool)

(assert (=> d!1860628 m!6826390))

(assert (=> b!5935198 d!1860628))

(declare-fun b!5935470 () Bool)

(declare-fun e!3632308 () Bool)

(declare-fun lt!2311188 () List!64244)

(assert (=> b!5935470 (= e!3632308 (or (not (= (Cons!64120 (h!70568 s!2326) Nil!64120) Nil!64120)) (= lt!2311188 Nil!64120)))))

(declare-fun b!5935467 () Bool)

(declare-fun e!3632307 () List!64244)

(assert (=> b!5935467 (= e!3632307 (Cons!64120 (h!70568 s!2326) Nil!64120))))

(declare-fun b!5935468 () Bool)

(assert (=> b!5935468 (= e!3632307 (Cons!64120 (h!70568 Nil!64120) (++!14078 (t!377645 Nil!64120) (Cons!64120 (h!70568 s!2326) Nil!64120))))))

(declare-fun b!5935469 () Bool)

(declare-fun res!2486385 () Bool)

(assert (=> b!5935469 (=> (not res!2486385) (not e!3632308))))

(assert (=> b!5935469 (= res!2486385 (= (size!40147 lt!2311188) (+ (size!40147 Nil!64120) (size!40147 (Cons!64120 (h!70568 s!2326) Nil!64120)))))))

(declare-fun d!1860630 () Bool)

(assert (=> d!1860630 e!3632308))

(declare-fun res!2486386 () Bool)

(assert (=> d!1860630 (=> (not res!2486386) (not e!3632308))))

(assert (=> d!1860630 (= res!2486386 (= (content!11821 lt!2311188) ((_ map or) (content!11821 Nil!64120) (content!11821 (Cons!64120 (h!70568 s!2326) Nil!64120)))))))

(assert (=> d!1860630 (= lt!2311188 e!3632307)))

(declare-fun c!1055258 () Bool)

(assert (=> d!1860630 (= c!1055258 ((_ is Nil!64120) Nil!64120))))

(assert (=> d!1860630 (= (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) lt!2311188)))

(assert (= (and d!1860630 c!1055258) b!5935467))

(assert (= (and d!1860630 (not c!1055258)) b!5935468))

(assert (= (and d!1860630 res!2486386) b!5935469))

(assert (= (and b!5935469 res!2486385) b!5935470))

(declare-fun m!6826392 () Bool)

(assert (=> b!5935468 m!6826392))

(declare-fun m!6826394 () Bool)

(assert (=> b!5935469 m!6826394))

(declare-fun m!6826396 () Bool)

(assert (=> b!5935469 m!6826396))

(declare-fun m!6826398 () Bool)

(assert (=> b!5935469 m!6826398))

(declare-fun m!6826400 () Bool)

(assert (=> d!1860630 m!6826400))

(declare-fun m!6826402 () Bool)

(assert (=> d!1860630 m!6826402))

(declare-fun m!6826404 () Bool)

(assert (=> d!1860630 m!6826404))

(assert (=> b!5935198 d!1860630))

(declare-fun d!1860632 () Bool)

(assert (=> d!1860632 (= (++!14078 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (t!377645 s!2326)) s!2326)))

(declare-fun lt!2311191 () Unit!157233)

(declare-fun choose!44738 (List!64244 C!32232 List!64244 List!64244) Unit!157233)

(assert (=> d!1860632 (= lt!2311191 (choose!44738 Nil!64120 (h!70568 s!2326) (t!377645 s!2326) s!2326))))

(assert (=> d!1860632 (= (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) (t!377645 s!2326))) s!2326)))

(assert (=> d!1860632 (= (lemmaMoveElementToOtherListKeepsConcatEq!2173 Nil!64120 (h!70568 s!2326) (t!377645 s!2326) s!2326) lt!2311191)))

(declare-fun bs!1404073 () Bool)

(assert (= bs!1404073 d!1860632))

(assert (=> bs!1404073 m!6826156))

(assert (=> bs!1404073 m!6826156))

(assert (=> bs!1404073 m!6826158))

(declare-fun m!6826406 () Bool)

(assert (=> bs!1404073 m!6826406))

(declare-fun m!6826408 () Bool)

(assert (=> bs!1404073 m!6826408))

(assert (=> b!5935198 d!1860632))

(declare-fun b!5935471 () Bool)

(declare-fun e!3632313 () Bool)

(declare-fun lt!2311193 () Option!15872)

(assert (=> b!5935471 (= e!3632313 (not (isDefined!12575 lt!2311193)))))

(declare-fun b!5935472 () Bool)

(declare-fun e!3632312 () Option!15872)

(declare-fun e!3632311 () Option!15872)

(assert (=> b!5935472 (= e!3632312 e!3632311)))

(declare-fun c!1055260 () Bool)

(assert (=> b!5935472 (= c!1055260 ((_ is Nil!64120) (t!377645 s!2326)))))

(declare-fun b!5935473 () Bool)

(declare-fun res!2486387 () Bool)

(declare-fun e!3632310 () Bool)

(assert (=> b!5935473 (=> (not res!2486387) (not e!3632310))))

(assert (=> b!5935473 (= res!2486387 (matchR!8164 (regTwo!32474 r!7292) (_2!36263 (get!22084 lt!2311193))))))

(declare-fun d!1860634 () Bool)

(assert (=> d!1860634 e!3632313))

(declare-fun res!2486390 () Bool)

(assert (=> d!1860634 (=> res!2486390 e!3632313)))

(assert (=> d!1860634 (= res!2486390 e!3632310)))

(declare-fun res!2486388 () Bool)

(assert (=> d!1860634 (=> (not res!2486388) (not e!3632310))))

(assert (=> d!1860634 (= res!2486388 (isDefined!12575 lt!2311193))))

(assert (=> d!1860634 (= lt!2311193 e!3632312)))

(declare-fun c!1055259 () Bool)

(declare-fun e!3632309 () Bool)

(assert (=> d!1860634 (= c!1055259 e!3632309)))

(declare-fun res!2486389 () Bool)

(assert (=> d!1860634 (=> (not res!2486389) (not e!3632309))))

(assert (=> d!1860634 (= res!2486389 (matchR!8164 (regOne!32474 r!7292) (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120))))))

(assert (=> d!1860634 (validRegex!7717 (regOne!32474 r!7292))))

(assert (=> d!1860634 (= (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (t!377645 s!2326) s!2326) lt!2311193)))

(declare-fun b!5935474 () Bool)

(assert (=> b!5935474 (= e!3632310 (= (++!14078 (_1!36263 (get!22084 lt!2311193)) (_2!36263 (get!22084 lt!2311193))) s!2326))))

(declare-fun b!5935475 () Bool)

(declare-fun res!2486391 () Bool)

(assert (=> b!5935475 (=> (not res!2486391) (not e!3632310))))

(assert (=> b!5935475 (= res!2486391 (matchR!8164 (regOne!32474 r!7292) (_1!36263 (get!22084 lt!2311193))))))

(declare-fun b!5935476 () Bool)

(assert (=> b!5935476 (= e!3632312 (Some!15871 (tuple2!65921 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (t!377645 s!2326))))))

(declare-fun b!5935477 () Bool)

(declare-fun lt!2311194 () Unit!157233)

(declare-fun lt!2311192 () Unit!157233)

(assert (=> b!5935477 (= lt!2311194 lt!2311192)))

(assert (=> b!5935477 (= (++!14078 (++!14078 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (Cons!64120 (h!70568 (t!377645 s!2326)) Nil!64120)) (t!377645 (t!377645 s!2326))) s!2326)))

(assert (=> b!5935477 (= lt!2311192 (lemmaMoveElementToOtherListKeepsConcatEq!2173 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (h!70568 (t!377645 s!2326)) (t!377645 (t!377645 s!2326)) s!2326))))

(assert (=> b!5935477 (= e!3632311 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) (++!14078 (++!14078 Nil!64120 (Cons!64120 (h!70568 s!2326) Nil!64120)) (Cons!64120 (h!70568 (t!377645 s!2326)) Nil!64120)) (t!377645 (t!377645 s!2326)) s!2326))))

(declare-fun b!5935478 () Bool)

(assert (=> b!5935478 (= e!3632309 (matchR!8164 (regTwo!32474 r!7292) (t!377645 s!2326)))))

(declare-fun b!5935479 () Bool)

(assert (=> b!5935479 (= e!3632311 None!15871)))

(assert (= (and d!1860634 res!2486389) b!5935478))

(assert (= (and d!1860634 c!1055259) b!5935476))

(assert (= (and d!1860634 (not c!1055259)) b!5935472))

(assert (= (and b!5935472 c!1055260) b!5935479))

(assert (= (and b!5935472 (not c!1055260)) b!5935477))

(assert (= (and d!1860634 res!2486388) b!5935475))

(assert (= (and b!5935475 res!2486391) b!5935473))

(assert (= (and b!5935473 res!2486387) b!5935474))

(assert (= (and d!1860634 (not res!2486390)) b!5935471))

(declare-fun m!6826410 () Bool)

(assert (=> d!1860634 m!6826410))

(assert (=> d!1860634 m!6826156))

(declare-fun m!6826412 () Bool)

(assert (=> d!1860634 m!6826412))

(assert (=> d!1860634 m!6826150))

(declare-fun m!6826414 () Bool)

(assert (=> b!5935473 m!6826414))

(declare-fun m!6826416 () Bool)

(assert (=> b!5935473 m!6826416))

(assert (=> b!5935477 m!6826156))

(declare-fun m!6826418 () Bool)

(assert (=> b!5935477 m!6826418))

(assert (=> b!5935477 m!6826418))

(declare-fun m!6826420 () Bool)

(assert (=> b!5935477 m!6826420))

(assert (=> b!5935477 m!6826156))

(declare-fun m!6826422 () Bool)

(assert (=> b!5935477 m!6826422))

(assert (=> b!5935477 m!6826418))

(declare-fun m!6826424 () Bool)

(assert (=> b!5935477 m!6826424))

(assert (=> b!5935474 m!6826414))

(declare-fun m!6826426 () Bool)

(assert (=> b!5935474 m!6826426))

(assert (=> b!5935475 m!6826414))

(declare-fun m!6826428 () Bool)

(assert (=> b!5935475 m!6826428))

(assert (=> b!5935471 m!6826410))

(declare-fun m!6826430 () Bool)

(assert (=> b!5935478 m!6826430))

(assert (=> b!5935198 d!1860634))

(declare-fun d!1860636 () Bool)

(declare-fun nullableFct!1947 (Regex!15981) Bool)

(assert (=> d!1860636 (= (nullable!5976 (h!70566 (exprs!5865 lt!2311089))) (nullableFct!1947 (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun bs!1404074 () Bool)

(assert (= bs!1404074 d!1860636))

(declare-fun m!6826432 () Bool)

(assert (=> bs!1404074 m!6826432))

(assert (=> b!5935218 d!1860636))

(declare-fun d!1860638 () Bool)

(assert (=> d!1860638 (= (isEmpty!35988 s!2326) ((_ is Nil!64120) s!2326))))

(assert (=> bm!471407 d!1860638))

(declare-fun d!1860640 () Bool)

(declare-fun res!2486392 () Bool)

(declare-fun e!3632314 () Bool)

(assert (=> d!1860640 (=> res!2486392 e!3632314)))

(assert (=> d!1860640 (= res!2486392 ((_ is Nil!64118) (exprs!5865 (h!70567 zl!343))))))

(assert (=> d!1860640 (= (forall!15064 (exprs!5865 (h!70567 zl!343)) lambda!323694) e!3632314)))

(declare-fun b!5935480 () Bool)

(declare-fun e!3632315 () Bool)

(assert (=> b!5935480 (= e!3632314 e!3632315)))

(declare-fun res!2486393 () Bool)

(assert (=> b!5935480 (=> (not res!2486393) (not e!3632315))))

(assert (=> b!5935480 (= res!2486393 (dynLambda!25077 lambda!323694 (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935481 () Bool)

(assert (=> b!5935481 (= e!3632315 (forall!15064 (t!377643 (exprs!5865 (h!70567 zl!343))) lambda!323694))))

(assert (= (and d!1860640 (not res!2486392)) b!5935480))

(assert (= (and b!5935480 res!2486393) b!5935481))

(declare-fun b_lambda!222921 () Bool)

(assert (=> (not b_lambda!222921) (not b!5935480)))

(declare-fun m!6826434 () Bool)

(assert (=> b!5935480 m!6826434))

(declare-fun m!6826436 () Bool)

(assert (=> b!5935481 m!6826436))

(assert (=> d!1860570 d!1860640))

(declare-fun d!1860642 () Bool)

(assert (=> d!1860642 (= (nullable!5976 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (nullableFct!1947 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))

(declare-fun bs!1404075 () Bool)

(assert (= bs!1404075 d!1860642))

(declare-fun m!6826438 () Bool)

(assert (=> bs!1404075 m!6826438))

(assert (=> b!5934850 d!1860642))

(declare-fun d!1860644 () Bool)

(assert (=> d!1860644 (= (head!12504 (unfocusZipperList!1402 zl!343)) (h!70566 (unfocusZipperList!1402 zl!343)))))

(assert (=> b!5935281 d!1860644))

(assert (=> bs!1404057 d!1860556))

(declare-fun b!5935482 () Bool)

(declare-fun c!1055262 () Bool)

(assert (=> b!5935482 (= c!1055262 ((_ is Star!15981) (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))

(declare-fun e!3632320 () (InoxSet Context!10730))

(declare-fun e!3632318 () (InoxSet Context!10730))

(assert (=> b!5935482 (= e!3632320 e!3632318)))

(declare-fun call!471442 () List!64242)

(declare-fun bm!471434 () Bool)

(declare-fun call!471441 () (InoxSet Context!10730))

(declare-fun c!1055265 () Bool)

(assert (=> bm!471434 (= call!471441 (derivationStepZipperDown!1231 (ite c!1055265 (regOne!32475 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (regOne!32474 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))) (ite c!1055265 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (Context!10731 call!471442)) (h!70568 s!2326)))))

(declare-fun b!5935483 () Bool)

(declare-fun e!3632317 () (InoxSet Context!10730))

(declare-fun call!471443 () (InoxSet Context!10730))

(assert (=> b!5935483 (= e!3632317 ((_ map or) call!471441 call!471443))))

(declare-fun bm!471435 () Bool)

(declare-fun call!471440 () (InoxSet Context!10730))

(declare-fun call!471439 () (InoxSet Context!10730))

(assert (=> bm!471435 (= call!471440 call!471439)))

(declare-fun b!5935484 () Bool)

(declare-fun e!3632316 () Bool)

(assert (=> b!5935484 (= e!3632316 (nullable!5976 (regOne!32474 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))))

(declare-fun c!1055263 () Bool)

(declare-fun call!471444 () List!64242)

(declare-fun bm!471436 () Bool)

(declare-fun c!1055261 () Bool)

(assert (=> bm!471436 (= call!471443 (derivationStepZipperDown!1231 (ite c!1055265 (regTwo!32475 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (ite c!1055263 (regTwo!32474 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (ite c!1055261 (regOne!32474 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (reg!16310 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))) (ite (or c!1055265 c!1055263) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (Context!10731 call!471444)) (h!70568 s!2326)))))

(declare-fun b!5935485 () Bool)

(declare-fun e!3632319 () (InoxSet Context!10730))

(assert (=> b!5935485 (= e!3632319 e!3632317)))

(assert (=> b!5935485 (= c!1055265 ((_ is Union!15981) (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))

(declare-fun b!5935486 () Bool)

(assert (=> b!5935486 (= c!1055263 e!3632316)))

(declare-fun res!2486394 () Bool)

(assert (=> b!5935486 (=> (not res!2486394) (not e!3632316))))

(assert (=> b!5935486 (= res!2486394 ((_ is Concat!24826) (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))

(declare-fun e!3632321 () (InoxSet Context!10730))

(assert (=> b!5935486 (= e!3632317 e!3632321)))

(declare-fun bm!471437 () Bool)

(assert (=> bm!471437 (= call!471444 call!471442)))

(declare-fun b!5935487 () Bool)

(assert (=> b!5935487 (= e!3632319 (store ((as const (Array Context!10730 Bool)) false) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) true))))

(declare-fun b!5935488 () Bool)

(assert (=> b!5935488 (= e!3632321 e!3632320)))

(assert (=> b!5935488 (= c!1055261 ((_ is Concat!24826) (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))

(declare-fun b!5935489 () Bool)

(assert (=> b!5935489 (= e!3632320 call!471440)))

(declare-fun d!1860646 () Bool)

(declare-fun c!1055264 () Bool)

(assert (=> d!1860646 (= c!1055264 (and ((_ is ElementMatch!15981) (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (= (c!1055049 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (h!70568 s!2326))))))

(assert (=> d!1860646 (= (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (h!70568 s!2326)) e!3632319)))

(declare-fun b!5935490 () Bool)

(assert (=> b!5935490 (= e!3632318 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5935491 () Bool)

(assert (=> b!5935491 (= e!3632318 call!471440)))

(declare-fun bm!471438 () Bool)

(assert (=> bm!471438 (= call!471439 call!471443)))

(declare-fun b!5935492 () Bool)

(assert (=> b!5935492 (= e!3632321 ((_ map or) call!471441 call!471439))))

(declare-fun bm!471439 () Bool)

(assert (=> bm!471439 (= call!471442 ($colon$colon!1868 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))) (ite (or c!1055263 c!1055261) (regTwo!32474 (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (h!70566 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))))

(assert (= (and d!1860646 c!1055264) b!5935487))

(assert (= (and d!1860646 (not c!1055264)) b!5935485))

(assert (= (and b!5935485 c!1055265) b!5935483))

(assert (= (and b!5935485 (not c!1055265)) b!5935486))

(assert (= (and b!5935486 res!2486394) b!5935484))

(assert (= (and b!5935486 c!1055263) b!5935492))

(assert (= (and b!5935486 (not c!1055263)) b!5935488))

(assert (= (and b!5935488 c!1055261) b!5935489))

(assert (= (and b!5935488 (not c!1055261)) b!5935482))

(assert (= (and b!5935482 c!1055262) b!5935491))

(assert (= (and b!5935482 (not c!1055262)) b!5935490))

(assert (= (or b!5935489 b!5935491) bm!471437))

(assert (= (or b!5935489 b!5935491) bm!471435))

(assert (= (or b!5935492 bm!471437) bm!471439))

(assert (= (or b!5935492 bm!471435) bm!471438))

(assert (= (or b!5935483 bm!471438) bm!471436))

(assert (= (or b!5935483 b!5935492) bm!471434))

(declare-fun m!6826440 () Bool)

(assert (=> bm!471434 m!6826440))

(declare-fun m!6826442 () Bool)

(assert (=> b!5935484 m!6826442))

(declare-fun m!6826444 () Bool)

(assert (=> b!5935487 m!6826444))

(declare-fun m!6826446 () Bool)

(assert (=> bm!471436 m!6826446))

(declare-fun m!6826448 () Bool)

(assert (=> bm!471439 m!6826448))

(assert (=> bm!471392 d!1860646))

(declare-fun bs!1404076 () Bool)

(declare-fun d!1860648 () Bool)

(assert (= bs!1404076 (and d!1860648 d!1860586)))

(declare-fun lambda!323703 () Int)

(assert (=> bs!1404076 (= lambda!323703 lambda!323701)))

(declare-fun bs!1404077 () Bool)

(assert (= bs!1404077 (and d!1860648 d!1860550)))

(assert (=> bs!1404077 (= lambda!323703 lambda!323690)))

(declare-fun bs!1404078 () Bool)

(assert (= bs!1404078 (and d!1860648 d!1860624)))

(assert (=> bs!1404078 (= lambda!323703 lambda!323702)))

(declare-fun bs!1404079 () Bool)

(assert (= bs!1404079 (and d!1860648 d!1860546)))

(assert (=> bs!1404079 (= lambda!323703 lambda!323689)))

(declare-fun bs!1404080 () Bool)

(assert (= bs!1404080 (and d!1860648 d!1860574)))

(assert (=> bs!1404080 (= lambda!323703 lambda!323700)))

(declare-fun bs!1404081 () Bool)

(assert (= bs!1404081 (and d!1860648 d!1860570)))

(assert (=> bs!1404081 (= lambda!323703 lambda!323694)))

(declare-fun bs!1404082 () Bool)

(assert (= bs!1404082 (and d!1860648 d!1860568)))

(assert (=> bs!1404082 (= lambda!323703 lambda!323693)))

(declare-fun bs!1404083 () Bool)

(assert (= bs!1404083 (and d!1860648 d!1860572)))

(assert (=> bs!1404083 (= lambda!323703 lambda!323697)))

(assert (=> d!1860648 (= (inv!83199 (h!70567 (t!377644 zl!343))) (forall!15064 (exprs!5865 (h!70567 (t!377644 zl!343))) lambda!323703))))

(declare-fun bs!1404084 () Bool)

(assert (= bs!1404084 d!1860648))

(declare-fun m!6826450 () Bool)

(assert (=> bs!1404084 m!6826450))

(assert (=> b!5935335 d!1860648))

(declare-fun d!1860650 () Bool)

(declare-fun res!2486395 () Bool)

(declare-fun e!3632322 () Bool)

(assert (=> d!1860650 (=> res!2486395 e!3632322)))

(assert (=> d!1860650 (= res!2486395 ((_ is Nil!64118) (exprs!5865 lt!2311089)))))

(assert (=> d!1860650 (= (forall!15064 (exprs!5865 lt!2311089) lambda!323690) e!3632322)))

(declare-fun b!5935493 () Bool)

(declare-fun e!3632323 () Bool)

(assert (=> b!5935493 (= e!3632322 e!3632323)))

(declare-fun res!2486396 () Bool)

(assert (=> b!5935493 (=> (not res!2486396) (not e!3632323))))

(assert (=> b!5935493 (= res!2486396 (dynLambda!25077 lambda!323690 (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun b!5935494 () Bool)

(assert (=> b!5935494 (= e!3632323 (forall!15064 (t!377643 (exprs!5865 lt!2311089)) lambda!323690))))

(assert (= (and d!1860650 (not res!2486395)) b!5935493))

(assert (= (and b!5935493 res!2486396) b!5935494))

(declare-fun b_lambda!222923 () Bool)

(assert (=> (not b_lambda!222923) (not b!5935493)))

(declare-fun m!6826452 () Bool)

(assert (=> b!5935493 m!6826452))

(declare-fun m!6826454 () Bool)

(assert (=> b!5935494 m!6826454))

(assert (=> d!1860550 d!1860650))

(declare-fun d!1860652 () Bool)

(assert (=> d!1860652 (= (nullable!5976 (regOne!32474 r!7292)) (nullableFct!1947 (regOne!32474 r!7292)))))

(declare-fun bs!1404085 () Bool)

(assert (= bs!1404085 d!1860652))

(declare-fun m!6826456 () Bool)

(assert (=> bs!1404085 m!6826456))

(assert (=> b!5934824 d!1860652))

(declare-fun d!1860654 () Bool)

(assert (=> d!1860654 (= (isEmpty!35985 (t!377643 (unfocusZipperList!1402 zl!343))) ((_ is Nil!64118) (t!377643 (unfocusZipperList!1402 zl!343))))))

(assert (=> b!5935279 d!1860654))

(declare-fun bs!1404086 () Bool)

(declare-fun d!1860656 () Bool)

(assert (= bs!1404086 (and d!1860656 d!1860648)))

(declare-fun lambda!323704 () Int)

(assert (=> bs!1404086 (= lambda!323704 lambda!323703)))

(declare-fun bs!1404087 () Bool)

(assert (= bs!1404087 (and d!1860656 d!1860586)))

(assert (=> bs!1404087 (= lambda!323704 lambda!323701)))

(declare-fun bs!1404088 () Bool)

(assert (= bs!1404088 (and d!1860656 d!1860550)))

(assert (=> bs!1404088 (= lambda!323704 lambda!323690)))

(declare-fun bs!1404089 () Bool)

(assert (= bs!1404089 (and d!1860656 d!1860624)))

(assert (=> bs!1404089 (= lambda!323704 lambda!323702)))

(declare-fun bs!1404090 () Bool)

(assert (= bs!1404090 (and d!1860656 d!1860546)))

(assert (=> bs!1404090 (= lambda!323704 lambda!323689)))

(declare-fun bs!1404091 () Bool)

(assert (= bs!1404091 (and d!1860656 d!1860574)))

(assert (=> bs!1404091 (= lambda!323704 lambda!323700)))

(declare-fun bs!1404092 () Bool)

(assert (= bs!1404092 (and d!1860656 d!1860570)))

(assert (=> bs!1404092 (= lambda!323704 lambda!323694)))

(declare-fun bs!1404093 () Bool)

(assert (= bs!1404093 (and d!1860656 d!1860568)))

(assert (=> bs!1404093 (= lambda!323704 lambda!323693)))

(declare-fun bs!1404094 () Bool)

(assert (= bs!1404094 (and d!1860656 d!1860572)))

(assert (=> bs!1404094 (= lambda!323704 lambda!323697)))

(assert (=> d!1860656 (= (inv!83199 setElem!40296) (forall!15064 (exprs!5865 setElem!40296) lambda!323704))))

(declare-fun bs!1404095 () Bool)

(assert (= bs!1404095 d!1860656))

(declare-fun m!6826458 () Bool)

(assert (=> bs!1404095 m!6826458))

(assert (=> setNonEmpty!40296 d!1860656))

(declare-fun b!5935495 () Bool)

(declare-fun e!3632324 () Bool)

(assert (=> b!5935495 (= e!3632324 (nullable!5976 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343))))))))))

(declare-fun b!5935496 () Bool)

(declare-fun e!3632325 () (InoxSet Context!10730))

(assert (=> b!5935496 (= e!3632325 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471440 () Bool)

(declare-fun call!471445 () (InoxSet Context!10730))

(assert (=> bm!471440 (= call!471445 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))))) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343))))))) (h!70568 s!2326)))))

(declare-fun b!5935497 () Bool)

(assert (=> b!5935497 (= e!3632325 call!471445)))

(declare-fun b!5935498 () Bool)

(declare-fun e!3632326 () (InoxSet Context!10730))

(assert (=> b!5935498 (= e!3632326 e!3632325)))

(declare-fun c!1055267 () Bool)

(assert (=> b!5935498 (= c!1055267 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))))))))

(declare-fun b!5935499 () Bool)

(assert (=> b!5935499 (= e!3632326 ((_ map or) call!471445 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343))))))) (h!70568 s!2326))))))

(declare-fun d!1860658 () Bool)

(declare-fun c!1055266 () Bool)

(assert (=> d!1860658 (= c!1055266 e!3632324)))

(declare-fun res!2486397 () Bool)

(assert (=> d!1860658 (=> (not res!2486397) (not e!3632324))))

(assert (=> d!1860658 (= res!2486397 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))))))))

(assert (=> d!1860658 (= (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))) (h!70568 s!2326)) e!3632326)))

(assert (= (and d!1860658 res!2486397) b!5935495))

(assert (= (and d!1860658 c!1055266) b!5935499))

(assert (= (and d!1860658 (not c!1055266)) b!5935498))

(assert (= (and b!5935498 c!1055267) b!5935497))

(assert (= (and b!5935498 (not c!1055267)) b!5935496))

(assert (= (or b!5935499 b!5935497) bm!471440))

(declare-fun m!6826460 () Bool)

(assert (=> b!5935495 m!6826460))

(declare-fun m!6826462 () Bool)

(assert (=> bm!471440 m!6826462))

(declare-fun m!6826464 () Bool)

(assert (=> b!5935499 m!6826464))

(assert (=> b!5934893 d!1860658))

(declare-fun d!1860660 () Bool)

(assert (=> d!1860660 true))

(declare-fun setRes!40299 () Bool)

(assert (=> d!1860660 setRes!40299))

(declare-fun condSetEmpty!40299 () Bool)

(declare-fun res!2486400 () (InoxSet Context!10730))

(assert (=> d!1860660 (= condSetEmpty!40299 (= res!2486400 ((as const (Array Context!10730 Bool)) false)))))

(assert (=> d!1860660 (= (choose!44728 lt!2311084 lambda!323636) res!2486400)))

(declare-fun setIsEmpty!40299 () Bool)

(assert (=> setIsEmpty!40299 setRes!40299))

(declare-fun tp!1651281 () Bool)

(declare-fun e!3632329 () Bool)

(declare-fun setNonEmpty!40299 () Bool)

(declare-fun setElem!40299 () Context!10730)

(assert (=> setNonEmpty!40299 (= setRes!40299 (and tp!1651281 (inv!83199 setElem!40299) e!3632329))))

(declare-fun setRest!40299 () (InoxSet Context!10730))

(assert (=> setNonEmpty!40299 (= res!2486400 ((_ map or) (store ((as const (Array Context!10730 Bool)) false) setElem!40299 true) setRest!40299))))

(declare-fun b!5935502 () Bool)

(declare-fun tp!1651282 () Bool)

(assert (=> b!5935502 (= e!3632329 tp!1651282)))

(assert (= (and d!1860660 condSetEmpty!40299) setIsEmpty!40299))

(assert (= (and d!1860660 (not condSetEmpty!40299)) setNonEmpty!40299))

(assert (= setNonEmpty!40299 b!5935502))

(declare-fun m!6826466 () Bool)

(assert (=> setNonEmpty!40299 m!6826466))

(assert (=> d!1860558 d!1860660))

(assert (=> b!5935083 d!1860612))

(declare-fun d!1860662 () Bool)

(assert (=> d!1860662 (= (Exists!3051 (ite c!1055170 lambda!323665 lambda!323667)) (choose!44735 (ite c!1055170 lambda!323665 lambda!323667)))))

(declare-fun bs!1404096 () Bool)

(assert (= bs!1404096 d!1860662))

(declare-fun m!6826468 () Bool)

(assert (=> bs!1404096 m!6826468))

(assert (=> bm!471408 d!1860662))

(declare-fun d!1860664 () Bool)

(assert (=> d!1860664 (= (flatMap!1494 z!1189 lambda!323649) (choose!44728 z!1189 lambda!323649))))

(declare-fun bs!1404097 () Bool)

(assert (= bs!1404097 d!1860664))

(declare-fun m!6826470 () Bool)

(assert (=> bs!1404097 m!6826470))

(assert (=> d!1860472 d!1860664))

(declare-fun d!1860666 () Bool)

(assert (=> d!1860666 (= (Exists!3051 lambda!323685) (choose!44735 lambda!323685))))

(declare-fun bs!1404098 () Bool)

(assert (= bs!1404098 d!1860666))

(declare-fun m!6826472 () Bool)

(assert (=> bs!1404098 m!6826472))

(assert (=> d!1860542 d!1860666))

(declare-fun d!1860668 () Bool)

(assert (=> d!1860668 (= (Exists!3051 lambda!323686) (choose!44735 lambda!323686))))

(declare-fun bs!1404099 () Bool)

(assert (= bs!1404099 d!1860668))

(declare-fun m!6826474 () Bool)

(assert (=> bs!1404099 m!6826474))

(assert (=> d!1860542 d!1860668))

(declare-fun bs!1404100 () Bool)

(declare-fun d!1860670 () Bool)

(assert (= bs!1404100 (and d!1860670 d!1860540)))

(declare-fun lambda!323709 () Int)

(assert (=> bs!1404100 (= lambda!323709 lambda!323680)))

(declare-fun bs!1404101 () Bool)

(assert (= bs!1404101 (and d!1860670 b!5934657)))

(assert (=> bs!1404101 (= lambda!323709 lambda!323634)))

(declare-fun bs!1404102 () Bool)

(assert (= bs!1404102 (and d!1860670 b!5935020)))

(assert (=> bs!1404102 (not (= lambda!323709 lambda!323667))))

(declare-fun bs!1404103 () Bool)

(assert (= bs!1404103 (and d!1860670 d!1860542)))

(assert (=> bs!1404103 (not (= lambda!323709 lambda!323686))))

(assert (=> bs!1404103 (= lambda!323709 lambda!323685)))

(declare-fun bs!1404104 () Bool)

(assert (= bs!1404104 (and d!1860670 b!5935023)))

(assert (=> bs!1404104 (not (= lambda!323709 lambda!323665))))

(assert (=> bs!1404101 (not (= lambda!323709 lambda!323635))))

(assert (=> d!1860670 true))

(assert (=> d!1860670 true))

(assert (=> d!1860670 true))

(declare-fun lambda!323710 () Int)

(assert (=> bs!1404100 (not (= lambda!323710 lambda!323680))))

(assert (=> bs!1404101 (not (= lambda!323710 lambda!323634))))

(assert (=> bs!1404102 (= lambda!323710 lambda!323667)))

(assert (=> bs!1404103 (= lambda!323710 lambda!323686)))

(assert (=> bs!1404103 (not (= lambda!323710 lambda!323685))))

(declare-fun bs!1404105 () Bool)

(assert (= bs!1404105 d!1860670))

(assert (=> bs!1404105 (not (= lambda!323710 lambda!323709))))

(assert (=> bs!1404104 (not (= lambda!323710 lambda!323665))))

(assert (=> bs!1404101 (= lambda!323710 lambda!323635)))

(assert (=> d!1860670 true))

(assert (=> d!1860670 true))

(assert (=> d!1860670 true))

(assert (=> d!1860670 (= (Exists!3051 lambda!323709) (Exists!3051 lambda!323710))))

(assert (=> d!1860670 true))

(declare-fun _$90!1617 () Unit!157233)

(assert (=> d!1860670 (= (choose!44737 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326) _$90!1617)))

(declare-fun m!6826476 () Bool)

(assert (=> bs!1404105 m!6826476))

(declare-fun m!6826478 () Bool)

(assert (=> bs!1404105 m!6826478))

(assert (=> d!1860542 d!1860670))

(declare-fun b!5935511 () Bool)

(declare-fun e!3632339 () Bool)

(declare-fun call!471448 () Bool)

(assert (=> b!5935511 (= e!3632339 call!471448)))

(declare-fun bm!471441 () Bool)

(declare-fun call!471446 () Bool)

(declare-fun call!471447 () Bool)

(assert (=> bm!471441 (= call!471446 call!471447)))

(declare-fun bm!471442 () Bool)

(declare-fun c!1055268 () Bool)

(assert (=> bm!471442 (= call!471448 (validRegex!7717 (ite c!1055268 (regTwo!32475 (regOne!32474 r!7292)) (regTwo!32474 (regOne!32474 r!7292)))))))

(declare-fun bm!471443 () Bool)

(declare-fun c!1055269 () Bool)

(assert (=> bm!471443 (= call!471447 (validRegex!7717 (ite c!1055269 (reg!16310 (regOne!32474 r!7292)) (ite c!1055268 (regOne!32475 (regOne!32474 r!7292)) (regOne!32474 (regOne!32474 r!7292))))))))

(declare-fun b!5935512 () Bool)

(declare-fun res!2486413 () Bool)

(declare-fun e!3632334 () Bool)

(assert (=> b!5935512 (=> (not res!2486413) (not e!3632334))))

(assert (=> b!5935512 (= res!2486413 call!471446)))

(declare-fun e!3632335 () Bool)

(assert (=> b!5935512 (= e!3632335 e!3632334)))

(declare-fun b!5935514 () Bool)

(declare-fun e!3632338 () Bool)

(assert (=> b!5935514 (= e!3632338 e!3632339)))

(declare-fun res!2486409 () Bool)

(assert (=> b!5935514 (=> (not res!2486409) (not e!3632339))))

(assert (=> b!5935514 (= res!2486409 call!471446)))

(declare-fun b!5935515 () Bool)

(declare-fun res!2486412 () Bool)

(assert (=> b!5935515 (=> res!2486412 e!3632338)))

(assert (=> b!5935515 (= res!2486412 (not ((_ is Concat!24826) (regOne!32474 r!7292))))))

(assert (=> b!5935515 (= e!3632335 e!3632338)))

(declare-fun b!5935516 () Bool)

(declare-fun e!3632337 () Bool)

(declare-fun e!3632336 () Bool)

(assert (=> b!5935516 (= e!3632337 e!3632336)))

(assert (=> b!5935516 (= c!1055269 ((_ is Star!15981) (regOne!32474 r!7292)))))

(declare-fun b!5935517 () Bool)

(assert (=> b!5935517 (= e!3632336 e!3632335)))

(assert (=> b!5935517 (= c!1055268 ((_ is Union!15981) (regOne!32474 r!7292)))))

(declare-fun b!5935513 () Bool)

(assert (=> b!5935513 (= e!3632334 call!471448)))

(declare-fun d!1860672 () Bool)

(declare-fun res!2486410 () Bool)

(assert (=> d!1860672 (=> res!2486410 e!3632337)))

(assert (=> d!1860672 (= res!2486410 ((_ is ElementMatch!15981) (regOne!32474 r!7292)))))

(assert (=> d!1860672 (= (validRegex!7717 (regOne!32474 r!7292)) e!3632337)))

(declare-fun b!5935518 () Bool)

(declare-fun e!3632340 () Bool)

(assert (=> b!5935518 (= e!3632336 e!3632340)))

(declare-fun res!2486411 () Bool)

(assert (=> b!5935518 (= res!2486411 (not (nullable!5976 (reg!16310 (regOne!32474 r!7292)))))))

(assert (=> b!5935518 (=> (not res!2486411) (not e!3632340))))

(declare-fun b!5935519 () Bool)

(assert (=> b!5935519 (= e!3632340 call!471447)))

(assert (= (and d!1860672 (not res!2486410)) b!5935516))

(assert (= (and b!5935516 c!1055269) b!5935518))

(assert (= (and b!5935516 (not c!1055269)) b!5935517))

(assert (= (and b!5935518 res!2486411) b!5935519))

(assert (= (and b!5935517 c!1055268) b!5935512))

(assert (= (and b!5935517 (not c!1055268)) b!5935515))

(assert (= (and b!5935512 res!2486413) b!5935513))

(assert (= (and b!5935515 (not res!2486412)) b!5935514))

(assert (= (and b!5935514 res!2486409) b!5935511))

(assert (= (or b!5935513 b!5935511) bm!471442))

(assert (= (or b!5935512 b!5935514) bm!471441))

(assert (= (or b!5935519 bm!471441) bm!471443))

(declare-fun m!6826480 () Bool)

(assert (=> bm!471442 m!6826480))

(declare-fun m!6826482 () Bool)

(assert (=> bm!471443 m!6826482))

(declare-fun m!6826484 () Bool)

(assert (=> b!5935518 m!6826484))

(assert (=> d!1860542 d!1860672))

(declare-fun d!1860674 () Bool)

(assert (=> d!1860674 (= (head!12504 (exprs!5865 (h!70567 zl!343))) (h!70566 (exprs!5865 (h!70567 zl!343))))))

(assert (=> b!5935243 d!1860674))

(declare-fun d!1860676 () Bool)

(assert (=> d!1860676 (= (nullable!5976 (h!70566 (exprs!5865 lt!2311091))) (nullableFct!1947 (h!70566 (exprs!5865 lt!2311091))))))

(declare-fun bs!1404106 () Bool)

(assert (= bs!1404106 d!1860676))

(declare-fun m!6826486 () Bool)

(assert (=> bs!1404106 m!6826486))

(assert (=> b!5935213 d!1860676))

(assert (=> d!1860504 d!1860496))

(assert (=> d!1860504 d!1860482))

(declare-fun d!1860678 () Bool)

(assert (=> d!1860678 (= (matchR!8164 r!7292 s!2326) (matchRSpec!3082 r!7292 s!2326))))

(assert (=> d!1860678 true))

(declare-fun _$88!4431 () Unit!157233)

(assert (=> d!1860678 (= (choose!44732 r!7292 s!2326) _$88!4431)))

(declare-fun bs!1404107 () Bool)

(assert (= bs!1404107 d!1860678))

(assert (=> bs!1404107 m!6825878))

(assert (=> bs!1404107 m!6825876))

(assert (=> d!1860504 d!1860678))

(assert (=> d!1860504 d!1860442))

(declare-fun d!1860680 () Bool)

(assert (=> d!1860680 (= (isEmpty!35988 (tail!11588 s!2326)) ((_ is Nil!64120) (tail!11588 s!2326)))))

(assert (=> b!5935091 d!1860680))

(declare-fun d!1860682 () Bool)

(assert (=> d!1860682 (= (tail!11588 s!2326) (t!377645 s!2326))))

(assert (=> b!5935091 d!1860682))

(declare-fun b!5935523 () Bool)

(declare-fun e!3632342 () Bool)

(declare-fun lt!2311195 () List!64244)

(assert (=> b!5935523 (= e!3632342 (or (not (= (_2!36263 (get!22084 lt!2311159)) Nil!64120)) (= lt!2311195 (_1!36263 (get!22084 lt!2311159)))))))

(declare-fun b!5935520 () Bool)

(declare-fun e!3632341 () List!64244)

(assert (=> b!5935520 (= e!3632341 (_2!36263 (get!22084 lt!2311159)))))

(declare-fun b!5935521 () Bool)

(assert (=> b!5935521 (= e!3632341 (Cons!64120 (h!70568 (_1!36263 (get!22084 lt!2311159))) (++!14078 (t!377645 (_1!36263 (get!22084 lt!2311159))) (_2!36263 (get!22084 lt!2311159)))))))

(declare-fun b!5935522 () Bool)

(declare-fun res!2486414 () Bool)

(assert (=> b!5935522 (=> (not res!2486414) (not e!3632342))))

(assert (=> b!5935522 (= res!2486414 (= (size!40147 lt!2311195) (+ (size!40147 (_1!36263 (get!22084 lt!2311159))) (size!40147 (_2!36263 (get!22084 lt!2311159))))))))

(declare-fun d!1860684 () Bool)

(assert (=> d!1860684 e!3632342))

(declare-fun res!2486415 () Bool)

(assert (=> d!1860684 (=> (not res!2486415) (not e!3632342))))

(assert (=> d!1860684 (= res!2486415 (= (content!11821 lt!2311195) ((_ map or) (content!11821 (_1!36263 (get!22084 lt!2311159))) (content!11821 (_2!36263 (get!22084 lt!2311159))))))))

(assert (=> d!1860684 (= lt!2311195 e!3632341)))

(declare-fun c!1055270 () Bool)

(assert (=> d!1860684 (= c!1055270 ((_ is Nil!64120) (_1!36263 (get!22084 lt!2311159))))))

(assert (=> d!1860684 (= (++!14078 (_1!36263 (get!22084 lt!2311159)) (_2!36263 (get!22084 lt!2311159))) lt!2311195)))

(assert (= (and d!1860684 c!1055270) b!5935520))

(assert (= (and d!1860684 (not c!1055270)) b!5935521))

(assert (= (and d!1860684 res!2486415) b!5935522))

(assert (= (and b!5935522 res!2486414) b!5935523))

(declare-fun m!6826488 () Bool)

(assert (=> b!5935521 m!6826488))

(declare-fun m!6826490 () Bool)

(assert (=> b!5935522 m!6826490))

(declare-fun m!6826492 () Bool)

(assert (=> b!5935522 m!6826492))

(declare-fun m!6826494 () Bool)

(assert (=> b!5935522 m!6826494))

(declare-fun m!6826496 () Bool)

(assert (=> d!1860684 m!6826496))

(declare-fun m!6826498 () Bool)

(assert (=> d!1860684 m!6826498))

(declare-fun m!6826500 () Bool)

(assert (=> d!1860684 m!6826500))

(assert (=> b!5935195 d!1860684))

(assert (=> b!5935195 d!1860584))

(declare-fun d!1860686 () Bool)

(assert (=> d!1860686 (= (isConcat!932 lt!2311174) ((_ is Concat!24826) lt!2311174))))

(assert (=> b!5935245 d!1860686))

(declare-fun b!5935524 () Bool)

(declare-fun c!1055272 () Bool)

(assert (=> b!5935524 (= c!1055272 ((_ is Star!15981) (h!70566 (exprs!5865 lt!2311091))))))

(declare-fun e!3632347 () (InoxSet Context!10730))

(declare-fun e!3632345 () (InoxSet Context!10730))

(assert (=> b!5935524 (= e!3632347 e!3632345)))

(declare-fun bm!471444 () Bool)

(declare-fun c!1055275 () Bool)

(declare-fun call!471451 () (InoxSet Context!10730))

(declare-fun call!471452 () List!64242)

(assert (=> bm!471444 (= call!471451 (derivationStepZipperDown!1231 (ite c!1055275 (regOne!32475 (h!70566 (exprs!5865 lt!2311091))) (regOne!32474 (h!70566 (exprs!5865 lt!2311091)))) (ite c!1055275 (Context!10731 (t!377643 (exprs!5865 lt!2311091))) (Context!10731 call!471452)) (h!70568 s!2326)))))

(declare-fun b!5935525 () Bool)

(declare-fun e!3632344 () (InoxSet Context!10730))

(declare-fun call!471453 () (InoxSet Context!10730))

(assert (=> b!5935525 (= e!3632344 ((_ map or) call!471451 call!471453))))

(declare-fun bm!471445 () Bool)

(declare-fun call!471450 () (InoxSet Context!10730))

(declare-fun call!471449 () (InoxSet Context!10730))

(assert (=> bm!471445 (= call!471450 call!471449)))

(declare-fun b!5935526 () Bool)

(declare-fun e!3632343 () Bool)

(assert (=> b!5935526 (= e!3632343 (nullable!5976 (regOne!32474 (h!70566 (exprs!5865 lt!2311091)))))))

(declare-fun c!1055273 () Bool)

(declare-fun call!471454 () List!64242)

(declare-fun bm!471446 () Bool)

(declare-fun c!1055271 () Bool)

(assert (=> bm!471446 (= call!471453 (derivationStepZipperDown!1231 (ite c!1055275 (regTwo!32475 (h!70566 (exprs!5865 lt!2311091))) (ite c!1055273 (regTwo!32474 (h!70566 (exprs!5865 lt!2311091))) (ite c!1055271 (regOne!32474 (h!70566 (exprs!5865 lt!2311091))) (reg!16310 (h!70566 (exprs!5865 lt!2311091)))))) (ite (or c!1055275 c!1055273) (Context!10731 (t!377643 (exprs!5865 lt!2311091))) (Context!10731 call!471454)) (h!70568 s!2326)))))

(declare-fun b!5935527 () Bool)

(declare-fun e!3632346 () (InoxSet Context!10730))

(assert (=> b!5935527 (= e!3632346 e!3632344)))

(assert (=> b!5935527 (= c!1055275 ((_ is Union!15981) (h!70566 (exprs!5865 lt!2311091))))))

(declare-fun b!5935528 () Bool)

(assert (=> b!5935528 (= c!1055273 e!3632343)))

(declare-fun res!2486416 () Bool)

(assert (=> b!5935528 (=> (not res!2486416) (not e!3632343))))

(assert (=> b!5935528 (= res!2486416 ((_ is Concat!24826) (h!70566 (exprs!5865 lt!2311091))))))

(declare-fun e!3632348 () (InoxSet Context!10730))

(assert (=> b!5935528 (= e!3632344 e!3632348)))

(declare-fun bm!471447 () Bool)

(assert (=> bm!471447 (= call!471454 call!471452)))

(declare-fun b!5935529 () Bool)

(assert (=> b!5935529 (= e!3632346 (store ((as const (Array Context!10730 Bool)) false) (Context!10731 (t!377643 (exprs!5865 lt!2311091))) true))))

(declare-fun b!5935530 () Bool)

(assert (=> b!5935530 (= e!3632348 e!3632347)))

(assert (=> b!5935530 (= c!1055271 ((_ is Concat!24826) (h!70566 (exprs!5865 lt!2311091))))))

(declare-fun b!5935531 () Bool)

(assert (=> b!5935531 (= e!3632347 call!471450)))

(declare-fun d!1860688 () Bool)

(declare-fun c!1055274 () Bool)

(assert (=> d!1860688 (= c!1055274 (and ((_ is ElementMatch!15981) (h!70566 (exprs!5865 lt!2311091))) (= (c!1055049 (h!70566 (exprs!5865 lt!2311091))) (h!70568 s!2326))))))

(assert (=> d!1860688 (= (derivationStepZipperDown!1231 (h!70566 (exprs!5865 lt!2311091)) (Context!10731 (t!377643 (exprs!5865 lt!2311091))) (h!70568 s!2326)) e!3632346)))

(declare-fun b!5935532 () Bool)

(assert (=> b!5935532 (= e!3632345 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5935533 () Bool)

(assert (=> b!5935533 (= e!3632345 call!471450)))

(declare-fun bm!471448 () Bool)

(assert (=> bm!471448 (= call!471449 call!471453)))

(declare-fun b!5935534 () Bool)

(assert (=> b!5935534 (= e!3632348 ((_ map or) call!471451 call!471449))))

(declare-fun bm!471449 () Bool)

(assert (=> bm!471449 (= call!471452 ($colon$colon!1868 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311091)))) (ite (or c!1055273 c!1055271) (regTwo!32474 (h!70566 (exprs!5865 lt!2311091))) (h!70566 (exprs!5865 lt!2311091)))))))

(assert (= (and d!1860688 c!1055274) b!5935529))

(assert (= (and d!1860688 (not c!1055274)) b!5935527))

(assert (= (and b!5935527 c!1055275) b!5935525))

(assert (= (and b!5935527 (not c!1055275)) b!5935528))

(assert (= (and b!5935528 res!2486416) b!5935526))

(assert (= (and b!5935528 c!1055273) b!5935534))

(assert (= (and b!5935528 (not c!1055273)) b!5935530))

(assert (= (and b!5935530 c!1055271) b!5935531))

(assert (= (and b!5935530 (not c!1055271)) b!5935524))

(assert (= (and b!5935524 c!1055272) b!5935533))

(assert (= (and b!5935524 (not c!1055272)) b!5935532))

(assert (= (or b!5935531 b!5935533) bm!471447))

(assert (= (or b!5935531 b!5935533) bm!471445))

(assert (= (or b!5935534 bm!471447) bm!471449))

(assert (= (or b!5935534 bm!471445) bm!471448))

(assert (= (or b!5935525 bm!471448) bm!471446))

(assert (= (or b!5935525 b!5935534) bm!471444))

(declare-fun m!6826502 () Bool)

(assert (=> bm!471444 m!6826502))

(declare-fun m!6826504 () Bool)

(assert (=> b!5935526 m!6826504))

(declare-fun m!6826506 () Bool)

(assert (=> b!5935529 m!6826506))

(declare-fun m!6826508 () Bool)

(assert (=> bm!471446 m!6826508))

(declare-fun m!6826510 () Bool)

(assert (=> bm!471449 m!6826510))

(assert (=> bm!471414 d!1860688))

(assert (=> b!5935287 d!1860568))

(declare-fun bs!1404108 () Bool)

(declare-fun d!1860690 () Bool)

(assert (= bs!1404108 (and d!1860690 d!1860648)))

(declare-fun lambda!323711 () Int)

(assert (=> bs!1404108 (= lambda!323711 lambda!323703)))

(declare-fun bs!1404109 () Bool)

(assert (= bs!1404109 (and d!1860690 d!1860586)))

(assert (=> bs!1404109 (= lambda!323711 lambda!323701)))

(declare-fun bs!1404110 () Bool)

(assert (= bs!1404110 (and d!1860690 d!1860550)))

(assert (=> bs!1404110 (= lambda!323711 lambda!323690)))

(declare-fun bs!1404111 () Bool)

(assert (= bs!1404111 (and d!1860690 d!1860624)))

(assert (=> bs!1404111 (= lambda!323711 lambda!323702)))

(declare-fun bs!1404112 () Bool)

(assert (= bs!1404112 (and d!1860690 d!1860546)))

(assert (=> bs!1404112 (= lambda!323711 lambda!323689)))

(declare-fun bs!1404113 () Bool)

(assert (= bs!1404113 (and d!1860690 d!1860656)))

(assert (=> bs!1404113 (= lambda!323711 lambda!323704)))

(declare-fun bs!1404114 () Bool)

(assert (= bs!1404114 (and d!1860690 d!1860574)))

(assert (=> bs!1404114 (= lambda!323711 lambda!323700)))

(declare-fun bs!1404115 () Bool)

(assert (= bs!1404115 (and d!1860690 d!1860570)))

(assert (=> bs!1404115 (= lambda!323711 lambda!323694)))

(declare-fun bs!1404116 () Bool)

(assert (= bs!1404116 (and d!1860690 d!1860568)))

(assert (=> bs!1404116 (= lambda!323711 lambda!323693)))

(declare-fun bs!1404117 () Bool)

(assert (= bs!1404117 (and d!1860690 d!1860572)))

(assert (=> bs!1404117 (= lambda!323711 lambda!323697)))

(declare-fun lt!2311196 () List!64242)

(assert (=> d!1860690 (forall!15064 lt!2311196 lambda!323711)))

(declare-fun e!3632349 () List!64242)

(assert (=> d!1860690 (= lt!2311196 e!3632349)))

(declare-fun c!1055276 () Bool)

(assert (=> d!1860690 (= c!1055276 ((_ is Cons!64119) (t!377644 zl!343)))))

(assert (=> d!1860690 (= (unfocusZipperList!1402 (t!377644 zl!343)) lt!2311196)))

(declare-fun b!5935535 () Bool)

(assert (=> b!5935535 (= e!3632349 (Cons!64118 (generalisedConcat!1578 (exprs!5865 (h!70567 (t!377644 zl!343)))) (unfocusZipperList!1402 (t!377644 (t!377644 zl!343)))))))

(declare-fun b!5935536 () Bool)

(assert (=> b!5935536 (= e!3632349 Nil!64118)))

(assert (= (and d!1860690 c!1055276) b!5935535))

(assert (= (and d!1860690 (not c!1055276)) b!5935536))

(declare-fun m!6826512 () Bool)

(assert (=> d!1860690 m!6826512))

(declare-fun m!6826514 () Bool)

(assert (=> b!5935535 m!6826514))

(declare-fun m!6826516 () Bool)

(assert (=> b!5935535 m!6826516))

(assert (=> b!5935287 d!1860690))

(declare-fun d!1860692 () Bool)

(assert (=> d!1860692 (= ($colon$colon!1868 (exprs!5865 (Context!10731 Nil!64118)) (ite (or c!1055107 c!1055105) (regTwo!32474 r!7292) r!7292)) (Cons!64118 (ite (or c!1055107 c!1055105) (regTwo!32474 r!7292) r!7292) (exprs!5865 (Context!10731 Nil!64118))))))

(assert (=> bm!471388 d!1860692))

(declare-fun d!1860694 () Bool)

(assert (=> d!1860694 (= (isEmpty!35990 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326)) (not ((_ is Some!15871) (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326))))))

(assert (=> d!1860544 d!1860694))

(declare-fun b!5935537 () Bool)

(declare-fun c!1055278 () Bool)

(assert (=> b!5935537 (= c!1055278 ((_ is Star!15981) (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))))))

(declare-fun e!3632354 () (InoxSet Context!10730))

(declare-fun e!3632352 () (InoxSet Context!10730))

(assert (=> b!5935537 (= e!3632354 e!3632352)))

(declare-fun call!471457 () (InoxSet Context!10730))

(declare-fun bm!471450 () Bool)

(declare-fun call!471458 () List!64242)

(declare-fun c!1055281 () Bool)

(assert (=> bm!471450 (= call!471457 (derivationStepZipperDown!1231 (ite c!1055281 (regOne!32475 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))) (regOne!32474 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292)))) (ite c!1055281 (ite c!1055109 (Context!10731 Nil!64118) (Context!10731 call!471391)) (Context!10731 call!471458)) (h!70568 s!2326)))))

(declare-fun b!5935538 () Bool)

(declare-fun e!3632351 () (InoxSet Context!10730))

(declare-fun call!471459 () (InoxSet Context!10730))

(assert (=> b!5935538 (= e!3632351 ((_ map or) call!471457 call!471459))))

(declare-fun bm!471451 () Bool)

(declare-fun call!471456 () (InoxSet Context!10730))

(declare-fun call!471455 () (InoxSet Context!10730))

(assert (=> bm!471451 (= call!471456 call!471455)))

(declare-fun b!5935539 () Bool)

(declare-fun e!3632350 () Bool)

(assert (=> b!5935539 (= e!3632350 (nullable!5976 (regOne!32474 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))

(declare-fun call!471460 () List!64242)

(declare-fun c!1055277 () Bool)

(declare-fun c!1055279 () Bool)

(declare-fun bm!471452 () Bool)

(assert (=> bm!471452 (= call!471459 (derivationStepZipperDown!1231 (ite c!1055281 (regTwo!32475 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))) (ite c!1055279 (regTwo!32474 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))) (ite c!1055277 (regOne!32474 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))) (reg!16310 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292)))))) (ite (or c!1055281 c!1055279) (ite c!1055109 (Context!10731 Nil!64118) (Context!10731 call!471391)) (Context!10731 call!471460)) (h!70568 s!2326)))))

(declare-fun b!5935540 () Bool)

(declare-fun e!3632353 () (InoxSet Context!10730))

(assert (=> b!5935540 (= e!3632353 e!3632351)))

(assert (=> b!5935540 (= c!1055281 ((_ is Union!15981) (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))))))

(declare-fun b!5935541 () Bool)

(assert (=> b!5935541 (= c!1055279 e!3632350)))

(declare-fun res!2486417 () Bool)

(assert (=> b!5935541 (=> (not res!2486417) (not e!3632350))))

(assert (=> b!5935541 (= res!2486417 ((_ is Concat!24826) (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))))))

(declare-fun e!3632355 () (InoxSet Context!10730))

(assert (=> b!5935541 (= e!3632351 e!3632355)))

(declare-fun bm!471453 () Bool)

(assert (=> bm!471453 (= call!471460 call!471458)))

(declare-fun b!5935542 () Bool)

(assert (=> b!5935542 (= e!3632353 (store ((as const (Array Context!10730 Bool)) false) (ite c!1055109 (Context!10731 Nil!64118) (Context!10731 call!471391)) true))))

(declare-fun b!5935543 () Bool)

(assert (=> b!5935543 (= e!3632355 e!3632354)))

(assert (=> b!5935543 (= c!1055277 ((_ is Concat!24826) (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))))))

(declare-fun b!5935544 () Bool)

(assert (=> b!5935544 (= e!3632354 call!471456)))

(declare-fun d!1860696 () Bool)

(declare-fun c!1055280 () Bool)

(assert (=> d!1860696 (= c!1055280 (and ((_ is ElementMatch!15981) (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))) (= (c!1055049 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))) (h!70568 s!2326))))))

(assert (=> d!1860696 (= (derivationStepZipperDown!1231 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292)) (ite c!1055109 (Context!10731 Nil!64118) (Context!10731 call!471391)) (h!70568 s!2326)) e!3632353)))

(declare-fun b!5935545 () Bool)

(assert (=> b!5935545 (= e!3632352 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5935546 () Bool)

(assert (=> b!5935546 (= e!3632352 call!471456)))

(declare-fun bm!471454 () Bool)

(assert (=> bm!471454 (= call!471455 call!471459)))

(declare-fun b!5935547 () Bool)

(assert (=> b!5935547 (= e!3632355 ((_ map or) call!471457 call!471455))))

(declare-fun bm!471455 () Bool)

(assert (=> bm!471455 (= call!471458 ($colon$colon!1868 (exprs!5865 (ite c!1055109 (Context!10731 Nil!64118) (Context!10731 call!471391))) (ite (or c!1055279 c!1055277) (regTwo!32474 (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292))) (ite c!1055109 (regOne!32475 r!7292) (regOne!32474 r!7292)))))))

(assert (= (and d!1860696 c!1055280) b!5935542))

(assert (= (and d!1860696 (not c!1055280)) b!5935540))

(assert (= (and b!5935540 c!1055281) b!5935538))

(assert (= (and b!5935540 (not c!1055281)) b!5935541))

(assert (= (and b!5935541 res!2486417) b!5935539))

(assert (= (and b!5935541 c!1055279) b!5935547))

(assert (= (and b!5935541 (not c!1055279)) b!5935543))

(assert (= (and b!5935543 c!1055277) b!5935544))

(assert (= (and b!5935543 (not c!1055277)) b!5935537))

(assert (= (and b!5935537 c!1055278) b!5935546))

(assert (= (and b!5935537 (not c!1055278)) b!5935545))

(assert (= (or b!5935544 b!5935546) bm!471453))

(assert (= (or b!5935544 b!5935546) bm!471451))

(assert (= (or b!5935547 bm!471453) bm!471455))

(assert (= (or b!5935547 bm!471451) bm!471454))

(assert (= (or b!5935538 bm!471454) bm!471452))

(assert (= (or b!5935538 b!5935547) bm!471450))

(declare-fun m!6826518 () Bool)

(assert (=> bm!471450 m!6826518))

(declare-fun m!6826520 () Bool)

(assert (=> b!5935539 m!6826520))

(declare-fun m!6826522 () Bool)

(assert (=> b!5935542 m!6826522))

(declare-fun m!6826524 () Bool)

(assert (=> bm!471452 m!6826524))

(declare-fun m!6826526 () Bool)

(assert (=> bm!471455 m!6826526))

(assert (=> bm!471383 d!1860696))

(assert (=> b!5935094 d!1860680))

(assert (=> b!5935094 d!1860682))

(declare-fun b!5935548 () Bool)

(declare-fun res!2486422 () Bool)

(declare-fun e!3632360 () Bool)

(assert (=> b!5935548 (=> res!2486422 e!3632360)))

(assert (=> b!5935548 (= res!2486422 (not ((_ is ElementMatch!15981) (regTwo!32474 r!7292))))))

(declare-fun e!3632361 () Bool)

(assert (=> b!5935548 (= e!3632361 e!3632360)))

(declare-fun b!5935549 () Bool)

(declare-fun e!3632362 () Bool)

(assert (=> b!5935549 (= e!3632362 (nullable!5976 (regTwo!32474 r!7292)))))

(declare-fun b!5935550 () Bool)

(declare-fun e!3632358 () Bool)

(assert (=> b!5935550 (= e!3632358 (= (head!12503 s!2326) (c!1055049 (regTwo!32474 r!7292))))))

(declare-fun b!5935551 () Bool)

(assert (=> b!5935551 (= e!3632362 (matchR!8164 (derivativeStep!4712 (regTwo!32474 r!7292) (head!12503 s!2326)) (tail!11588 s!2326)))))

(declare-fun b!5935552 () Bool)

(declare-fun e!3632359 () Bool)

(declare-fun lt!2311197 () Bool)

(declare-fun call!471461 () Bool)

(assert (=> b!5935552 (= e!3632359 (= lt!2311197 call!471461))))

(declare-fun b!5935554 () Bool)

(declare-fun e!3632357 () Bool)

(assert (=> b!5935554 (= e!3632360 e!3632357)))

(declare-fun res!2486425 () Bool)

(assert (=> b!5935554 (=> (not res!2486425) (not e!3632357))))

(assert (=> b!5935554 (= res!2486425 (not lt!2311197))))

(declare-fun b!5935555 () Bool)

(assert (=> b!5935555 (= e!3632361 (not lt!2311197))))

(declare-fun b!5935556 () Bool)

(declare-fun res!2486424 () Bool)

(assert (=> b!5935556 (=> res!2486424 e!3632360)))

(assert (=> b!5935556 (= res!2486424 e!3632358)))

(declare-fun res!2486420 () Bool)

(assert (=> b!5935556 (=> (not res!2486420) (not e!3632358))))

(assert (=> b!5935556 (= res!2486420 lt!2311197)))

(declare-fun b!5935557 () Bool)

(declare-fun e!3632356 () Bool)

(assert (=> b!5935557 (= e!3632357 e!3632356)))

(declare-fun res!2486421 () Bool)

(assert (=> b!5935557 (=> res!2486421 e!3632356)))

(assert (=> b!5935557 (= res!2486421 call!471461)))

(declare-fun b!5935558 () Bool)

(declare-fun res!2486418 () Bool)

(assert (=> b!5935558 (=> res!2486418 e!3632356)))

(assert (=> b!5935558 (= res!2486418 (not (isEmpty!35988 (tail!11588 s!2326))))))

(declare-fun b!5935559 () Bool)

(assert (=> b!5935559 (= e!3632356 (not (= (head!12503 s!2326) (c!1055049 (regTwo!32474 r!7292)))))))

(declare-fun bm!471456 () Bool)

(assert (=> bm!471456 (= call!471461 (isEmpty!35988 s!2326))))

(declare-fun b!5935560 () Bool)

(assert (=> b!5935560 (= e!3632359 e!3632361)))

(declare-fun c!1055283 () Bool)

(assert (=> b!5935560 (= c!1055283 ((_ is EmptyLang!15981) (regTwo!32474 r!7292)))))

(declare-fun b!5935561 () Bool)

(declare-fun res!2486423 () Bool)

(assert (=> b!5935561 (=> (not res!2486423) (not e!3632358))))

(assert (=> b!5935561 (= res!2486423 (isEmpty!35988 (tail!11588 s!2326)))))

(declare-fun b!5935553 () Bool)

(declare-fun res!2486419 () Bool)

(assert (=> b!5935553 (=> (not res!2486419) (not e!3632358))))

(assert (=> b!5935553 (= res!2486419 (not call!471461))))

(declare-fun d!1860698 () Bool)

(assert (=> d!1860698 e!3632359))

(declare-fun c!1055284 () Bool)

(assert (=> d!1860698 (= c!1055284 ((_ is EmptyExpr!15981) (regTwo!32474 r!7292)))))

(assert (=> d!1860698 (= lt!2311197 e!3632362)))

(declare-fun c!1055282 () Bool)

(assert (=> d!1860698 (= c!1055282 (isEmpty!35988 s!2326))))

(assert (=> d!1860698 (validRegex!7717 (regTwo!32474 r!7292))))

(assert (=> d!1860698 (= (matchR!8164 (regTwo!32474 r!7292) s!2326) lt!2311197)))

(assert (= (and d!1860698 c!1055282) b!5935549))

(assert (= (and d!1860698 (not c!1055282)) b!5935551))

(assert (= (and d!1860698 c!1055284) b!5935552))

(assert (= (and d!1860698 (not c!1055284)) b!5935560))

(assert (= (and b!5935560 c!1055283) b!5935555))

(assert (= (and b!5935560 (not c!1055283)) b!5935548))

(assert (= (and b!5935548 (not res!2486422)) b!5935556))

(assert (= (and b!5935556 res!2486420) b!5935553))

(assert (= (and b!5935553 res!2486419) b!5935561))

(assert (= (and b!5935561 res!2486423) b!5935550))

(assert (= (and b!5935556 (not res!2486424)) b!5935554))

(assert (= (and b!5935554 res!2486425) b!5935557))

(assert (= (and b!5935557 (not res!2486421)) b!5935558))

(assert (= (and b!5935558 (not res!2486418)) b!5935559))

(assert (= (or b!5935552 b!5935553 b!5935557) bm!471456))

(assert (=> b!5935550 m!6826082))

(assert (=> b!5935561 m!6826084))

(assert (=> b!5935561 m!6826084))

(assert (=> b!5935561 m!6826086))

(assert (=> bm!471456 m!6826048))

(assert (=> d!1860698 m!6826048))

(assert (=> d!1860698 m!6826272))

(assert (=> b!5935551 m!6826082))

(assert (=> b!5935551 m!6826082))

(declare-fun m!6826528 () Bool)

(assert (=> b!5935551 m!6826528))

(assert (=> b!5935551 m!6826084))

(assert (=> b!5935551 m!6826528))

(assert (=> b!5935551 m!6826084))

(declare-fun m!6826530 () Bool)

(assert (=> b!5935551 m!6826530))

(assert (=> b!5935559 m!6826082))

(assert (=> b!5935549 m!6826278))

(assert (=> b!5935558 m!6826084))

(assert (=> b!5935558 m!6826084))

(assert (=> b!5935558 m!6826086))

(assert (=> b!5935199 d!1860698))

(declare-fun bs!1404118 () Bool)

(declare-fun b!5935572 () Bool)

(assert (= bs!1404118 (and b!5935572 d!1860670)))

(declare-fun lambda!323712 () Int)

(assert (=> bs!1404118 (not (= lambda!323712 lambda!323710))))

(declare-fun bs!1404119 () Bool)

(assert (= bs!1404119 (and b!5935572 d!1860540)))

(assert (=> bs!1404119 (not (= lambda!323712 lambda!323680))))

(declare-fun bs!1404120 () Bool)

(assert (= bs!1404120 (and b!5935572 b!5934657)))

(assert (=> bs!1404120 (not (= lambda!323712 lambda!323634))))

(declare-fun bs!1404121 () Bool)

(assert (= bs!1404121 (and b!5935572 b!5935020)))

(assert (=> bs!1404121 (not (= lambda!323712 lambda!323667))))

(declare-fun bs!1404122 () Bool)

(assert (= bs!1404122 (and b!5935572 d!1860542)))

(assert (=> bs!1404122 (not (= lambda!323712 lambda!323686))))

(assert (=> bs!1404122 (not (= lambda!323712 lambda!323685))))

(assert (=> bs!1404118 (not (= lambda!323712 lambda!323709))))

(declare-fun bs!1404123 () Bool)

(assert (= bs!1404123 (and b!5935572 b!5935023)))

(assert (=> bs!1404123 (= (and (= (reg!16310 (regTwo!32475 r!7292)) (reg!16310 r!7292)) (= (regTwo!32475 r!7292) r!7292)) (= lambda!323712 lambda!323665))))

(assert (=> bs!1404120 (not (= lambda!323712 lambda!323635))))

(assert (=> b!5935572 true))

(assert (=> b!5935572 true))

(declare-fun bs!1404124 () Bool)

(declare-fun b!5935569 () Bool)

(assert (= bs!1404124 (and b!5935569 d!1860670)))

(declare-fun lambda!323713 () Int)

(assert (=> bs!1404124 (= (and (= (regOne!32474 (regTwo!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regTwo!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323713 lambda!323710))))

(declare-fun bs!1404125 () Bool)

(assert (= bs!1404125 (and b!5935569 d!1860540)))

(assert (=> bs!1404125 (not (= lambda!323713 lambda!323680))))

(declare-fun bs!1404126 () Bool)

(assert (= bs!1404126 (and b!5935569 b!5934657)))

(assert (=> bs!1404126 (not (= lambda!323713 lambda!323634))))

(declare-fun bs!1404127 () Bool)

(assert (= bs!1404127 (and b!5935569 b!5935020)))

(assert (=> bs!1404127 (= (and (= (regOne!32474 (regTwo!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regTwo!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323713 lambda!323667))))

(declare-fun bs!1404128 () Bool)

(assert (= bs!1404128 (and b!5935569 d!1860542)))

(assert (=> bs!1404128 (= (and (= (regOne!32474 (regTwo!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regTwo!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323713 lambda!323686))))

(declare-fun bs!1404129 () Bool)

(assert (= bs!1404129 (and b!5935569 b!5935572)))

(assert (=> bs!1404129 (not (= lambda!323713 lambda!323712))))

(assert (=> bs!1404128 (not (= lambda!323713 lambda!323685))))

(assert (=> bs!1404124 (not (= lambda!323713 lambda!323709))))

(declare-fun bs!1404130 () Bool)

(assert (= bs!1404130 (and b!5935569 b!5935023)))

(assert (=> bs!1404130 (not (= lambda!323713 lambda!323665))))

(assert (=> bs!1404126 (= (and (= (regOne!32474 (regTwo!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regTwo!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323713 lambda!323635))))

(assert (=> b!5935569 true))

(assert (=> b!5935569 true))

(declare-fun b!5935562 () Bool)

(declare-fun e!3632368 () Bool)

(declare-fun e!3632367 () Bool)

(assert (=> b!5935562 (= e!3632368 e!3632367)))

(declare-fun c!1055288 () Bool)

(assert (=> b!5935562 (= c!1055288 ((_ is Star!15981) (regTwo!32475 r!7292)))))

(declare-fun b!5935564 () Bool)

(declare-fun e!3632369 () Bool)

(assert (=> b!5935564 (= e!3632369 (matchRSpec!3082 (regTwo!32475 (regTwo!32475 r!7292)) s!2326))))

(declare-fun b!5935565 () Bool)

(declare-fun e!3632366 () Bool)

(assert (=> b!5935565 (= e!3632366 (= s!2326 (Cons!64120 (c!1055049 (regTwo!32475 r!7292)) Nil!64120)))))

(declare-fun b!5935566 () Bool)

(declare-fun res!2486427 () Bool)

(declare-fun e!3632364 () Bool)

(assert (=> b!5935566 (=> res!2486427 e!3632364)))

(declare-fun call!471463 () Bool)

(assert (=> b!5935566 (= res!2486427 call!471463)))

(assert (=> b!5935566 (= e!3632367 e!3632364)))

(declare-fun b!5935567 () Bool)

(declare-fun e!3632363 () Bool)

(assert (=> b!5935567 (= e!3632363 call!471463)))

(declare-fun b!5935568 () Bool)

(declare-fun c!1055287 () Bool)

(assert (=> b!5935568 (= c!1055287 ((_ is ElementMatch!15981) (regTwo!32475 r!7292)))))

(declare-fun e!3632365 () Bool)

(assert (=> b!5935568 (= e!3632365 e!3632366)))

(declare-fun bm!471457 () Bool)

(assert (=> bm!471457 (= call!471463 (isEmpty!35988 s!2326))))

(declare-fun call!471462 () Bool)

(assert (=> b!5935569 (= e!3632367 call!471462)))

(declare-fun b!5935563 () Bool)

(declare-fun c!1055286 () Bool)

(assert (=> b!5935563 (= c!1055286 ((_ is Union!15981) (regTwo!32475 r!7292)))))

(assert (=> b!5935563 (= e!3632366 e!3632368)))

(declare-fun d!1860700 () Bool)

(declare-fun c!1055285 () Bool)

(assert (=> d!1860700 (= c!1055285 ((_ is EmptyExpr!15981) (regTwo!32475 r!7292)))))

(assert (=> d!1860700 (= (matchRSpec!3082 (regTwo!32475 r!7292) s!2326) e!3632363)))

(declare-fun b!5935570 () Bool)

(assert (=> b!5935570 (= e!3632363 e!3632365)))

(declare-fun res!2486426 () Bool)

(assert (=> b!5935570 (= res!2486426 (not ((_ is EmptyLang!15981) (regTwo!32475 r!7292))))))

(assert (=> b!5935570 (=> (not res!2486426) (not e!3632365))))

(declare-fun b!5935571 () Bool)

(assert (=> b!5935571 (= e!3632368 e!3632369)))

(declare-fun res!2486428 () Bool)

(assert (=> b!5935571 (= res!2486428 (matchRSpec!3082 (regOne!32475 (regTwo!32475 r!7292)) s!2326))))

(assert (=> b!5935571 (=> res!2486428 e!3632369)))

(declare-fun bm!471458 () Bool)

(assert (=> bm!471458 (= call!471462 (Exists!3051 (ite c!1055288 lambda!323712 lambda!323713)))))

(assert (=> b!5935572 (= e!3632364 call!471462)))

(assert (= (and d!1860700 c!1055285) b!5935567))

(assert (= (and d!1860700 (not c!1055285)) b!5935570))

(assert (= (and b!5935570 res!2486426) b!5935568))

(assert (= (and b!5935568 c!1055287) b!5935565))

(assert (= (and b!5935568 (not c!1055287)) b!5935563))

(assert (= (and b!5935563 c!1055286) b!5935571))

(assert (= (and b!5935563 (not c!1055286)) b!5935562))

(assert (= (and b!5935571 (not res!2486428)) b!5935564))

(assert (= (and b!5935562 c!1055288) b!5935566))

(assert (= (and b!5935562 (not c!1055288)) b!5935569))

(assert (= (and b!5935566 (not res!2486427)) b!5935572))

(assert (= (or b!5935572 b!5935569) bm!471458))

(assert (= (or b!5935567 b!5935566) bm!471457))

(declare-fun m!6826532 () Bool)

(assert (=> b!5935564 m!6826532))

(assert (=> bm!471457 m!6826048))

(declare-fun m!6826534 () Bool)

(assert (=> b!5935571 m!6826534))

(declare-fun m!6826536 () Bool)

(assert (=> bm!471458 m!6826536))

(assert (=> b!5935015 d!1860700))

(assert (=> b!5935249 d!1860562))

(declare-fun d!1860702 () Bool)

(declare-fun res!2486429 () Bool)

(declare-fun e!3632370 () Bool)

(assert (=> d!1860702 (=> res!2486429 e!3632370)))

(assert (=> d!1860702 (= res!2486429 ((_ is Nil!64118) (exprs!5865 setElem!40290)))))

(assert (=> d!1860702 (= (forall!15064 (exprs!5865 setElem!40290) lambda!323689) e!3632370)))

(declare-fun b!5935573 () Bool)

(declare-fun e!3632371 () Bool)

(assert (=> b!5935573 (= e!3632370 e!3632371)))

(declare-fun res!2486430 () Bool)

(assert (=> b!5935573 (=> (not res!2486430) (not e!3632371))))

(assert (=> b!5935573 (= res!2486430 (dynLambda!25077 lambda!323689 (h!70566 (exprs!5865 setElem!40290))))))

(declare-fun b!5935574 () Bool)

(assert (=> b!5935574 (= e!3632371 (forall!15064 (t!377643 (exprs!5865 setElem!40290)) lambda!323689))))

(assert (= (and d!1860702 (not res!2486429)) b!5935573))

(assert (= (and b!5935573 res!2486430) b!5935574))

(declare-fun b_lambda!222925 () Bool)

(assert (=> (not b_lambda!222925) (not b!5935573)))

(declare-fun m!6826538 () Bool)

(assert (=> b!5935573 m!6826538))

(declare-fun m!6826540 () Bool)

(assert (=> b!5935574 m!6826540))

(assert (=> d!1860546 d!1860702))

(assert (=> d!1860540 d!1860510))

(assert (=> d!1860540 d!1860672))

(assert (=> d!1860540 d!1860544))

(declare-fun d!1860704 () Bool)

(assert (=> d!1860704 (= (Exists!3051 lambda!323680) (choose!44735 lambda!323680))))

(declare-fun bs!1404131 () Bool)

(assert (= bs!1404131 d!1860704))

(declare-fun m!6826542 () Bool)

(assert (=> bs!1404131 m!6826542))

(assert (=> d!1860540 d!1860704))

(declare-fun bs!1404132 () Bool)

(declare-fun d!1860706 () Bool)

(assert (= bs!1404132 (and d!1860706 d!1860670)))

(declare-fun lambda!323716 () Int)

(assert (=> bs!1404132 (not (= lambda!323716 lambda!323710))))

(declare-fun bs!1404133 () Bool)

(assert (= bs!1404133 (and d!1860706 b!5935569)))

(assert (=> bs!1404133 (not (= lambda!323716 lambda!323713))))

(declare-fun bs!1404134 () Bool)

(assert (= bs!1404134 (and d!1860706 d!1860540)))

(assert (=> bs!1404134 (= lambda!323716 lambda!323680)))

(declare-fun bs!1404135 () Bool)

(assert (= bs!1404135 (and d!1860706 b!5934657)))

(assert (=> bs!1404135 (= lambda!323716 lambda!323634)))

(declare-fun bs!1404136 () Bool)

(assert (= bs!1404136 (and d!1860706 b!5935020)))

(assert (=> bs!1404136 (not (= lambda!323716 lambda!323667))))

(declare-fun bs!1404137 () Bool)

(assert (= bs!1404137 (and d!1860706 d!1860542)))

(assert (=> bs!1404137 (not (= lambda!323716 lambda!323686))))

(declare-fun bs!1404138 () Bool)

(assert (= bs!1404138 (and d!1860706 b!5935572)))

(assert (=> bs!1404138 (not (= lambda!323716 lambda!323712))))

(assert (=> bs!1404137 (= lambda!323716 lambda!323685)))

(assert (=> bs!1404132 (= lambda!323716 lambda!323709)))

(declare-fun bs!1404139 () Bool)

(assert (= bs!1404139 (and d!1860706 b!5935023)))

(assert (=> bs!1404139 (not (= lambda!323716 lambda!323665))))

(assert (=> bs!1404135 (not (= lambda!323716 lambda!323635))))

(assert (=> d!1860706 true))

(assert (=> d!1860706 true))

(assert (=> d!1860706 true))

(assert (=> d!1860706 (= (isDefined!12575 (findConcatSeparation!2286 (regOne!32474 r!7292) (regTwo!32474 r!7292) Nil!64120 s!2326 s!2326)) (Exists!3051 lambda!323716))))

(assert (=> d!1860706 true))

(declare-fun _$89!1993 () Unit!157233)

(assert (=> d!1860706 (= (choose!44736 (regOne!32474 r!7292) (regTwo!32474 r!7292) s!2326) _$89!1993)))

(declare-fun bs!1404140 () Bool)

(assert (= bs!1404140 d!1860706))

(assert (=> bs!1404140 m!6825866))

(assert (=> bs!1404140 m!6825866))

(assert (=> bs!1404140 m!6825868))

(declare-fun m!6826544 () Bool)

(assert (=> bs!1404140 m!6826544))

(assert (=> d!1860540 d!1860706))

(declare-fun d!1860708 () Bool)

(assert (=> d!1860708 true))

(declare-fun setRes!40300 () Bool)

(assert (=> d!1860708 setRes!40300))

(declare-fun condSetEmpty!40300 () Bool)

(declare-fun res!2486435 () (InoxSet Context!10730))

(assert (=> d!1860708 (= condSetEmpty!40300 (= res!2486435 ((as const (Array Context!10730 Bool)) false)))))

(assert (=> d!1860708 (= (choose!44728 lt!2311093 lambda!323636) res!2486435)))

(declare-fun setIsEmpty!40300 () Bool)

(assert (=> setIsEmpty!40300 setRes!40300))

(declare-fun setNonEmpty!40300 () Bool)

(declare-fun tp!1651283 () Bool)

(declare-fun setElem!40300 () Context!10730)

(declare-fun e!3632374 () Bool)

(assert (=> setNonEmpty!40300 (= setRes!40300 (and tp!1651283 (inv!83199 setElem!40300) e!3632374))))

(declare-fun setRest!40300 () (InoxSet Context!10730))

(assert (=> setNonEmpty!40300 (= res!2486435 ((_ map or) (store ((as const (Array Context!10730 Bool)) false) setElem!40300 true) setRest!40300))))

(declare-fun b!5935579 () Bool)

(declare-fun tp!1651284 () Bool)

(assert (=> b!5935579 (= e!3632374 tp!1651284)))

(assert (= (and d!1860708 condSetEmpty!40300) setIsEmpty!40300))

(assert (= (and d!1860708 (not condSetEmpty!40300)) setNonEmpty!40300))

(assert (= setNonEmpty!40300 b!5935579))

(declare-fun m!6826546 () Bool)

(assert (=> setNonEmpty!40300 m!6826546))

(assert (=> d!1860548 d!1860708))

(assert (=> bm!471411 d!1860638))

(assert (=> d!1860478 d!1860474))

(declare-fun d!1860710 () Bool)

(assert (=> d!1860710 (= (flatMap!1494 z!1189 lambda!323636) (dynLambda!25076 lambda!323636 (h!70567 zl!343)))))

(assert (=> d!1860710 true))

(declare-fun _$13!2705 () Unit!157233)

(assert (=> d!1860710 (= (choose!44729 z!1189 (h!70567 zl!343) lambda!323636) _$13!2705)))

(declare-fun b_lambda!222927 () Bool)

(assert (=> (not b_lambda!222927) (not d!1860710)))

(declare-fun bs!1404141 () Bool)

(assert (= bs!1404141 d!1860710))

(assert (=> bs!1404141 m!6825858))

(assert (=> bs!1404141 m!6825998))

(assert (=> d!1860478 d!1860710))

(declare-fun b!5935580 () Bool)

(declare-fun e!3632380 () Bool)

(declare-fun call!471466 () Bool)

(assert (=> b!5935580 (= e!3632380 call!471466)))

(declare-fun bm!471459 () Bool)

(declare-fun call!471464 () Bool)

(declare-fun call!471465 () Bool)

(assert (=> bm!471459 (= call!471464 call!471465)))

(declare-fun c!1055289 () Bool)

(declare-fun bm!471460 () Bool)

(assert (=> bm!471460 (= call!471466 (validRegex!7717 (ite c!1055289 (regTwo!32475 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))) (regTwo!32474 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))))))))

(declare-fun bm!471461 () Bool)

(declare-fun c!1055290 () Bool)

(assert (=> bm!471461 (= call!471465 (validRegex!7717 (ite c!1055290 (reg!16310 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))) (ite c!1055289 (regOne!32475 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))) (regOne!32474 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292)))))))))

(declare-fun b!5935581 () Bool)

(declare-fun res!2486440 () Bool)

(declare-fun e!3632375 () Bool)

(assert (=> b!5935581 (=> (not res!2486440) (not e!3632375))))

(assert (=> b!5935581 (= res!2486440 call!471464)))

(declare-fun e!3632376 () Bool)

(assert (=> b!5935581 (= e!3632376 e!3632375)))

(declare-fun b!5935583 () Bool)

(declare-fun e!3632379 () Bool)

(assert (=> b!5935583 (= e!3632379 e!3632380)))

(declare-fun res!2486436 () Bool)

(assert (=> b!5935583 (=> (not res!2486436) (not e!3632380))))

(assert (=> b!5935583 (= res!2486436 call!471464)))

(declare-fun b!5935584 () Bool)

(declare-fun res!2486439 () Bool)

(assert (=> b!5935584 (=> res!2486439 e!3632379)))

(assert (=> b!5935584 (= res!2486439 (not ((_ is Concat!24826) (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292)))))))

(assert (=> b!5935584 (= e!3632376 e!3632379)))

(declare-fun b!5935585 () Bool)

(declare-fun e!3632378 () Bool)

(declare-fun e!3632377 () Bool)

(assert (=> b!5935585 (= e!3632378 e!3632377)))

(assert (=> b!5935585 (= c!1055290 ((_ is Star!15981) (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))))))

(declare-fun b!5935586 () Bool)

(assert (=> b!5935586 (= e!3632377 e!3632376)))

(assert (=> b!5935586 (= c!1055289 ((_ is Union!15981) (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))))))

(declare-fun b!5935582 () Bool)

(assert (=> b!5935582 (= e!3632375 call!471466)))

(declare-fun d!1860712 () Bool)

(declare-fun res!2486437 () Bool)

(assert (=> d!1860712 (=> res!2486437 e!3632378)))

(assert (=> d!1860712 (= res!2486437 ((_ is ElementMatch!15981) (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))))))

(assert (=> d!1860712 (= (validRegex!7717 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))) e!3632378)))

(declare-fun b!5935587 () Bool)

(declare-fun e!3632381 () Bool)

(assert (=> b!5935587 (= e!3632377 e!3632381)))

(declare-fun res!2486438 () Bool)

(assert (=> b!5935587 (= res!2486438 (not (nullable!5976 (reg!16310 (ite c!1055060 (regTwo!32475 r!7292) (regTwo!32474 r!7292))))))))

(assert (=> b!5935587 (=> (not res!2486438) (not e!3632381))))

(declare-fun b!5935588 () Bool)

(assert (=> b!5935588 (= e!3632381 call!471465)))

(assert (= (and d!1860712 (not res!2486437)) b!5935585))

(assert (= (and b!5935585 c!1055290) b!5935587))

(assert (= (and b!5935585 (not c!1055290)) b!5935586))

(assert (= (and b!5935587 res!2486438) b!5935588))

(assert (= (and b!5935586 c!1055289) b!5935581))

(assert (= (and b!5935586 (not c!1055289)) b!5935584))

(assert (= (and b!5935581 res!2486440) b!5935582))

(assert (= (and b!5935584 (not res!2486439)) b!5935583))

(assert (= (and b!5935583 res!2486436) b!5935580))

(assert (= (or b!5935582 b!5935580) bm!471460))

(assert (= (or b!5935581 b!5935583) bm!471459))

(assert (= (or b!5935588 bm!471459) bm!471461))

(declare-fun m!6826548 () Bool)

(assert (=> bm!471460 m!6826548))

(declare-fun m!6826550 () Bool)

(assert (=> bm!471461 m!6826550))

(declare-fun m!6826552 () Bool)

(assert (=> b!5935587 m!6826552))

(assert (=> bm!471348 d!1860712))

(declare-fun d!1860714 () Bool)

(assert (=> d!1860714 true))

(assert (=> d!1860714 true))

(declare-fun res!2486441 () Bool)

(assert (=> d!1860714 (= (choose!44735 lambda!323634) res!2486441)))

(assert (=> d!1860536 d!1860714))

(declare-fun d!1860716 () Bool)

(assert (=> d!1860716 (= (isUnion!848 lt!2311177) ((_ is Union!15981) lt!2311177))))

(assert (=> b!5935282 d!1860716))

(declare-fun d!1860718 () Bool)

(assert (=> d!1860718 (= (nullable!5976 (reg!16310 r!7292)) (nullableFct!1947 (reg!16310 r!7292)))))

(declare-fun bs!1404142 () Bool)

(assert (= bs!1404142 d!1860718))

(declare-fun m!6826554 () Bool)

(assert (=> bs!1404142 m!6826554))

(assert (=> b!5934717 d!1860718))

(assert (=> d!1860510 d!1860594))

(declare-fun b!5935589 () Bool)

(declare-fun res!2486446 () Bool)

(declare-fun e!3632386 () Bool)

(assert (=> b!5935589 (=> res!2486446 e!3632386)))

(assert (=> b!5935589 (= res!2486446 (not ((_ is ElementMatch!15981) (regOne!32474 r!7292))))))

(declare-fun e!3632387 () Bool)

(assert (=> b!5935589 (= e!3632387 e!3632386)))

(declare-fun b!5935590 () Bool)

(declare-fun e!3632388 () Bool)

(assert (=> b!5935590 (= e!3632388 (nullable!5976 (regOne!32474 r!7292)))))

(declare-fun b!5935591 () Bool)

(declare-fun e!3632384 () Bool)

(assert (=> b!5935591 (= e!3632384 (= (head!12503 Nil!64120) (c!1055049 (regOne!32474 r!7292))))))

(declare-fun b!5935592 () Bool)

(assert (=> b!5935592 (= e!3632388 (matchR!8164 (derivativeStep!4712 (regOne!32474 r!7292) (head!12503 Nil!64120)) (tail!11588 Nil!64120)))))

(declare-fun b!5935593 () Bool)

(declare-fun e!3632385 () Bool)

(declare-fun lt!2311198 () Bool)

(declare-fun call!471467 () Bool)

(assert (=> b!5935593 (= e!3632385 (= lt!2311198 call!471467))))

(declare-fun b!5935595 () Bool)

(declare-fun e!3632383 () Bool)

(assert (=> b!5935595 (= e!3632386 e!3632383)))

(declare-fun res!2486449 () Bool)

(assert (=> b!5935595 (=> (not res!2486449) (not e!3632383))))

(assert (=> b!5935595 (= res!2486449 (not lt!2311198))))

(declare-fun b!5935596 () Bool)

(assert (=> b!5935596 (= e!3632387 (not lt!2311198))))

(declare-fun b!5935597 () Bool)

(declare-fun res!2486448 () Bool)

(assert (=> b!5935597 (=> res!2486448 e!3632386)))

(assert (=> b!5935597 (= res!2486448 e!3632384)))

(declare-fun res!2486444 () Bool)

(assert (=> b!5935597 (=> (not res!2486444) (not e!3632384))))

(assert (=> b!5935597 (= res!2486444 lt!2311198)))

(declare-fun b!5935598 () Bool)

(declare-fun e!3632382 () Bool)

(assert (=> b!5935598 (= e!3632383 e!3632382)))

(declare-fun res!2486445 () Bool)

(assert (=> b!5935598 (=> res!2486445 e!3632382)))

(assert (=> b!5935598 (= res!2486445 call!471467)))

(declare-fun b!5935599 () Bool)

(declare-fun res!2486442 () Bool)

(assert (=> b!5935599 (=> res!2486442 e!3632382)))

(assert (=> b!5935599 (= res!2486442 (not (isEmpty!35988 (tail!11588 Nil!64120))))))

(declare-fun b!5935600 () Bool)

(assert (=> b!5935600 (= e!3632382 (not (= (head!12503 Nil!64120) (c!1055049 (regOne!32474 r!7292)))))))

(declare-fun bm!471462 () Bool)

(assert (=> bm!471462 (= call!471467 (isEmpty!35988 Nil!64120))))

(declare-fun b!5935601 () Bool)

(assert (=> b!5935601 (= e!3632385 e!3632387)))

(declare-fun c!1055292 () Bool)

(assert (=> b!5935601 (= c!1055292 ((_ is EmptyLang!15981) (regOne!32474 r!7292)))))

(declare-fun b!5935602 () Bool)

(declare-fun res!2486447 () Bool)

(assert (=> b!5935602 (=> (not res!2486447) (not e!3632384))))

(assert (=> b!5935602 (= res!2486447 (isEmpty!35988 (tail!11588 Nil!64120)))))

(declare-fun b!5935594 () Bool)

(declare-fun res!2486443 () Bool)

(assert (=> b!5935594 (=> (not res!2486443) (not e!3632384))))

(assert (=> b!5935594 (= res!2486443 (not call!471467))))

(declare-fun d!1860720 () Bool)

(assert (=> d!1860720 e!3632385))

(declare-fun c!1055293 () Bool)

(assert (=> d!1860720 (= c!1055293 ((_ is EmptyExpr!15981) (regOne!32474 r!7292)))))

(assert (=> d!1860720 (= lt!2311198 e!3632388)))

(declare-fun c!1055291 () Bool)

(assert (=> d!1860720 (= c!1055291 (isEmpty!35988 Nil!64120))))

(assert (=> d!1860720 (validRegex!7717 (regOne!32474 r!7292))))

(assert (=> d!1860720 (= (matchR!8164 (regOne!32474 r!7292) Nil!64120) lt!2311198)))

(assert (= (and d!1860720 c!1055291) b!5935590))

(assert (= (and d!1860720 (not c!1055291)) b!5935592))

(assert (= (and d!1860720 c!1055293) b!5935593))

(assert (= (and d!1860720 (not c!1055293)) b!5935601))

(assert (= (and b!5935601 c!1055292) b!5935596))

(assert (= (and b!5935601 (not c!1055292)) b!5935589))

(assert (= (and b!5935589 (not res!2486446)) b!5935597))

(assert (= (and b!5935597 res!2486444) b!5935594))

(assert (= (and b!5935594 res!2486443) b!5935602))

(assert (= (and b!5935602 res!2486447) b!5935591))

(assert (= (and b!5935597 (not res!2486448)) b!5935595))

(assert (= (and b!5935595 res!2486449) b!5935598))

(assert (= (and b!5935598 (not res!2486445)) b!5935599))

(assert (= (and b!5935599 (not res!2486442)) b!5935600))

(assert (= (or b!5935593 b!5935594 b!5935598) bm!471462))

(declare-fun m!6826556 () Bool)

(assert (=> b!5935591 m!6826556))

(declare-fun m!6826558 () Bool)

(assert (=> b!5935602 m!6826558))

(assert (=> b!5935602 m!6826558))

(declare-fun m!6826560 () Bool)

(assert (=> b!5935602 m!6826560))

(declare-fun m!6826562 () Bool)

(assert (=> bm!471462 m!6826562))

(assert (=> d!1860720 m!6826562))

(assert (=> d!1860720 m!6826150))

(assert (=> b!5935592 m!6826556))

(assert (=> b!5935592 m!6826556))

(declare-fun m!6826564 () Bool)

(assert (=> b!5935592 m!6826564))

(assert (=> b!5935592 m!6826558))

(assert (=> b!5935592 m!6826564))

(assert (=> b!5935592 m!6826558))

(declare-fun m!6826566 () Bool)

(assert (=> b!5935592 m!6826566))

(assert (=> b!5935600 m!6826556))

(assert (=> b!5935590 m!6825950))

(assert (=> b!5935599 m!6826558))

(assert (=> b!5935599 m!6826558))

(assert (=> b!5935599 m!6826560))

(assert (=> d!1860510 d!1860720))

(assert (=> d!1860510 d!1860672))

(declare-fun d!1860722 () Bool)

(assert (=> d!1860722 (= (isEmptyExpr!1409 lt!2311174) ((_ is EmptyExpr!15981) lt!2311174))))

(assert (=> b!5935251 d!1860722))

(declare-fun d!1860724 () Bool)

(assert (=> d!1860724 (= (isEmptyLang!1418 lt!2311177) ((_ is EmptyLang!15981) lt!2311177))))

(assert (=> b!5935278 d!1860724))

(assert (=> bs!1404056 d!1860560))

(declare-fun c!1055295 () Bool)

(declare-fun b!5935603 () Bool)

(assert (=> b!5935603 (= c!1055295 ((_ is Star!15981) (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))))))

(declare-fun e!3632393 () (InoxSet Context!10730))

(declare-fun e!3632391 () (InoxSet Context!10730))

(assert (=> b!5935603 (= e!3632393 e!3632391)))

(declare-fun c!1055298 () Bool)

(declare-fun bm!471463 () Bool)

(declare-fun call!471471 () List!64242)

(declare-fun call!471470 () (InoxSet Context!10730))

(assert (=> bm!471463 (= call!471470 (derivationStepZipperDown!1231 (ite c!1055298 (regOne!32475 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))) (regOne!32474 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292)))))) (ite c!1055298 (ite (or c!1055109 c!1055107) (Context!10731 Nil!64118) (Context!10731 call!471393)) (Context!10731 call!471471)) (h!70568 s!2326)))))

(declare-fun b!5935604 () Bool)

(declare-fun e!3632390 () (InoxSet Context!10730))

(declare-fun call!471472 () (InoxSet Context!10730))

(assert (=> b!5935604 (= e!3632390 ((_ map or) call!471470 call!471472))))

(declare-fun bm!471464 () Bool)

(declare-fun call!471469 () (InoxSet Context!10730))

(declare-fun call!471468 () (InoxSet Context!10730))

(assert (=> bm!471464 (= call!471469 call!471468)))

(declare-fun b!5935605 () Bool)

(declare-fun e!3632389 () Bool)

(assert (=> b!5935605 (= e!3632389 (nullable!5976 (regOne!32474 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292)))))))))

(declare-fun c!1055296 () Bool)

(declare-fun c!1055294 () Bool)

(declare-fun call!471473 () List!64242)

(declare-fun bm!471465 () Bool)

(assert (=> bm!471465 (= call!471472 (derivationStepZipperDown!1231 (ite c!1055298 (regTwo!32475 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))) (ite c!1055296 (regTwo!32474 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))) (ite c!1055294 (regOne!32474 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))) (reg!16310 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292)))))))) (ite (or c!1055298 c!1055296) (ite (or c!1055109 c!1055107) (Context!10731 Nil!64118) (Context!10731 call!471393)) (Context!10731 call!471473)) (h!70568 s!2326)))))

(declare-fun b!5935606 () Bool)

(declare-fun e!3632392 () (InoxSet Context!10730))

(assert (=> b!5935606 (= e!3632392 e!3632390)))

(assert (=> b!5935606 (= c!1055298 ((_ is Union!15981) (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))))))

(declare-fun b!5935607 () Bool)

(assert (=> b!5935607 (= c!1055296 e!3632389)))

(declare-fun res!2486450 () Bool)

(assert (=> b!5935607 (=> (not res!2486450) (not e!3632389))))

(assert (=> b!5935607 (= res!2486450 ((_ is Concat!24826) (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))))))

(declare-fun e!3632394 () (InoxSet Context!10730))

(assert (=> b!5935607 (= e!3632390 e!3632394)))

(declare-fun bm!471466 () Bool)

(assert (=> bm!471466 (= call!471473 call!471471)))

(declare-fun b!5935608 () Bool)

(assert (=> b!5935608 (= e!3632392 (store ((as const (Array Context!10730 Bool)) false) (ite (or c!1055109 c!1055107) (Context!10731 Nil!64118) (Context!10731 call!471393)) true))))

(declare-fun b!5935609 () Bool)

(assert (=> b!5935609 (= e!3632394 e!3632393)))

(assert (=> b!5935609 (= c!1055294 ((_ is Concat!24826) (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))))))

(declare-fun b!5935610 () Bool)

(assert (=> b!5935610 (= e!3632393 call!471469)))

(declare-fun d!1860726 () Bool)

(declare-fun c!1055297 () Bool)

(assert (=> d!1860726 (= c!1055297 (and ((_ is ElementMatch!15981) (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))) (= (c!1055049 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))) (h!70568 s!2326))))))

(assert (=> d!1860726 (= (derivationStepZipperDown!1231 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292)))) (ite (or c!1055109 c!1055107) (Context!10731 Nil!64118) (Context!10731 call!471393)) (h!70568 s!2326)) e!3632392)))

(declare-fun b!5935611 () Bool)

(assert (=> b!5935611 (= e!3632391 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5935612 () Bool)

(assert (=> b!5935612 (= e!3632391 call!471469)))

(declare-fun bm!471467 () Bool)

(assert (=> bm!471467 (= call!471468 call!471472)))

(declare-fun b!5935613 () Bool)

(assert (=> b!5935613 (= e!3632394 ((_ map or) call!471470 call!471468))))

(declare-fun bm!471468 () Bool)

(assert (=> bm!471468 (= call!471471 ($colon$colon!1868 (exprs!5865 (ite (or c!1055109 c!1055107) (Context!10731 Nil!64118) (Context!10731 call!471393))) (ite (or c!1055296 c!1055294) (regTwo!32474 (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292))))) (ite c!1055109 (regTwo!32475 r!7292) (ite c!1055107 (regTwo!32474 r!7292) (ite c!1055105 (regOne!32474 r!7292) (reg!16310 r!7292)))))))))

(assert (= (and d!1860726 c!1055297) b!5935608))

(assert (= (and d!1860726 (not c!1055297)) b!5935606))

(assert (= (and b!5935606 c!1055298) b!5935604))

(assert (= (and b!5935606 (not c!1055298)) b!5935607))

(assert (= (and b!5935607 res!2486450) b!5935605))

(assert (= (and b!5935607 c!1055296) b!5935613))

(assert (= (and b!5935607 (not c!1055296)) b!5935609))

(assert (= (and b!5935609 c!1055294) b!5935610))

(assert (= (and b!5935609 (not c!1055294)) b!5935603))

(assert (= (and b!5935603 c!1055295) b!5935612))

(assert (= (and b!5935603 (not c!1055295)) b!5935611))

(assert (= (or b!5935610 b!5935612) bm!471466))

(assert (= (or b!5935610 b!5935612) bm!471464))

(assert (= (or b!5935613 bm!471466) bm!471468))

(assert (= (or b!5935613 bm!471464) bm!471467))

(assert (= (or b!5935604 bm!471467) bm!471465))

(assert (= (or b!5935604 b!5935613) bm!471463))

(declare-fun m!6826568 () Bool)

(assert (=> bm!471463 m!6826568))

(declare-fun m!6826570 () Bool)

(assert (=> b!5935605 m!6826570))

(declare-fun m!6826572 () Bool)

(assert (=> b!5935608 m!6826572))

(declare-fun m!6826574 () Bool)

(assert (=> bm!471465 m!6826574))

(declare-fun m!6826576 () Bool)

(assert (=> bm!471468 m!6826576))

(assert (=> bm!471385 d!1860726))

(declare-fun d!1860728 () Bool)

(declare-fun c!1055301 () Bool)

(assert (=> d!1860728 (= c!1055301 ((_ is Nil!64119) lt!2311145))))

(declare-fun e!3632397 () (InoxSet Context!10730))

(assert (=> d!1860728 (= (content!11820 lt!2311145) e!3632397)))

(declare-fun b!5935618 () Bool)

(assert (=> b!5935618 (= e!3632397 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5935619 () Bool)

(assert (=> b!5935619 (= e!3632397 ((_ map or) (store ((as const (Array Context!10730 Bool)) false) (h!70567 lt!2311145) true) (content!11820 (t!377644 lt!2311145))))))

(assert (= (and d!1860728 c!1055301) b!5935618))

(assert (= (and d!1860728 (not c!1055301)) b!5935619))

(declare-fun m!6826578 () Bool)

(assert (=> b!5935619 m!6826578))

(declare-fun m!6826580 () Bool)

(assert (=> b!5935619 m!6826580))

(assert (=> b!5935101 d!1860728))

(declare-fun b!5935620 () Bool)

(declare-fun e!3632398 () Bool)

(assert (=> b!5935620 (= e!3632398 (nullable!5976 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311089)))))))))

(declare-fun b!5935621 () Bool)

(declare-fun e!3632399 () (InoxSet Context!10730))

(assert (=> b!5935621 (= e!3632399 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471469 () Bool)

(declare-fun call!471474 () (InoxSet Context!10730))

(assert (=> bm!471469 (= call!471474 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311089))))) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311089)))))) (h!70568 s!2326)))))

(declare-fun b!5935622 () Bool)

(assert (=> b!5935622 (= e!3632399 call!471474)))

(declare-fun b!5935623 () Bool)

(declare-fun e!3632400 () (InoxSet Context!10730))

(assert (=> b!5935623 (= e!3632400 e!3632399)))

(declare-fun c!1055303 () Bool)

(assert (=> b!5935623 (= c!1055303 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311089))))))))

(declare-fun b!5935624 () Bool)

(assert (=> b!5935624 (= e!3632400 ((_ map or) call!471474 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311089)))))) (h!70568 s!2326))))))

(declare-fun d!1860730 () Bool)

(declare-fun c!1055302 () Bool)

(assert (=> d!1860730 (= c!1055302 e!3632398)))

(declare-fun res!2486451 () Bool)

(assert (=> d!1860730 (=> (not res!2486451) (not e!3632398))))

(assert (=> d!1860730 (= res!2486451 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 lt!2311089))))))))

(assert (=> d!1860730 (= (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 lt!2311089))) (h!70568 s!2326)) e!3632400)))

(assert (= (and d!1860730 res!2486451) b!5935620))

(assert (= (and d!1860730 c!1055302) b!5935624))

(assert (= (and d!1860730 (not c!1055302)) b!5935623))

(assert (= (and b!5935623 c!1055303) b!5935622))

(assert (= (and b!5935623 (not c!1055303)) b!5935621))

(assert (= (or b!5935624 b!5935622) bm!471469))

(declare-fun m!6826582 () Bool)

(assert (=> b!5935620 m!6826582))

(declare-fun m!6826584 () Bool)

(assert (=> bm!471469 m!6826584))

(declare-fun m!6826586 () Bool)

(assert (=> b!5935624 m!6826586))

(assert (=> b!5935222 d!1860730))

(declare-fun d!1860732 () Bool)

(assert (=> d!1860732 true))

(declare-fun setRes!40301 () Bool)

(assert (=> d!1860732 setRes!40301))

(declare-fun condSetEmpty!40301 () Bool)

(declare-fun res!2486452 () (InoxSet Context!10730))

(assert (=> d!1860732 (= condSetEmpty!40301 (= res!2486452 ((as const (Array Context!10730 Bool)) false)))))

(assert (=> d!1860732 (= (choose!44728 z!1189 lambda!323636) res!2486452)))

(declare-fun setIsEmpty!40301 () Bool)

(assert (=> setIsEmpty!40301 setRes!40301))

(declare-fun tp!1651285 () Bool)

(declare-fun setElem!40301 () Context!10730)

(declare-fun e!3632401 () Bool)

(declare-fun setNonEmpty!40301 () Bool)

(assert (=> setNonEmpty!40301 (= setRes!40301 (and tp!1651285 (inv!83199 setElem!40301) e!3632401))))

(declare-fun setRest!40301 () (InoxSet Context!10730))

(assert (=> setNonEmpty!40301 (= res!2486452 ((_ map or) (store ((as const (Array Context!10730 Bool)) false) setElem!40301 true) setRest!40301))))

(declare-fun b!5935625 () Bool)

(declare-fun tp!1651286 () Bool)

(assert (=> b!5935625 (= e!3632401 tp!1651286)))

(assert (= (and d!1860732 condSetEmpty!40301) setIsEmpty!40301))

(assert (= (and d!1860732 (not condSetEmpty!40301)) setNonEmpty!40301))

(assert (= setNonEmpty!40301 b!5935625))

(declare-fun m!6826588 () Bool)

(assert (=> setNonEmpty!40301 m!6826588))

(assert (=> d!1860474 d!1860732))

(declare-fun b!5935626 () Bool)

(declare-fun res!2486457 () Bool)

(declare-fun e!3632406 () Bool)

(assert (=> b!5935626 (=> res!2486457 e!3632406)))

(assert (=> b!5935626 (= res!2486457 (not ((_ is ElementMatch!15981) (derivativeStep!4712 r!7292 (head!12503 s!2326)))))))

(declare-fun e!3632407 () Bool)

(assert (=> b!5935626 (= e!3632407 e!3632406)))

(declare-fun b!5935627 () Bool)

(declare-fun e!3632408 () Bool)

(assert (=> b!5935627 (= e!3632408 (nullable!5976 (derivativeStep!4712 r!7292 (head!12503 s!2326))))))

(declare-fun b!5935628 () Bool)

(declare-fun e!3632404 () Bool)

(assert (=> b!5935628 (= e!3632404 (= (head!12503 (tail!11588 s!2326)) (c!1055049 (derivativeStep!4712 r!7292 (head!12503 s!2326)))))))

(declare-fun b!5935629 () Bool)

(assert (=> b!5935629 (= e!3632408 (matchR!8164 (derivativeStep!4712 (derivativeStep!4712 r!7292 (head!12503 s!2326)) (head!12503 (tail!11588 s!2326))) (tail!11588 (tail!11588 s!2326))))))

(declare-fun b!5935630 () Bool)

(declare-fun e!3632405 () Bool)

(declare-fun lt!2311199 () Bool)

(declare-fun call!471475 () Bool)

(assert (=> b!5935630 (= e!3632405 (= lt!2311199 call!471475))))

(declare-fun b!5935632 () Bool)

(declare-fun e!3632403 () Bool)

(assert (=> b!5935632 (= e!3632406 e!3632403)))

(declare-fun res!2486460 () Bool)

(assert (=> b!5935632 (=> (not res!2486460) (not e!3632403))))

(assert (=> b!5935632 (= res!2486460 (not lt!2311199))))

(declare-fun b!5935633 () Bool)

(assert (=> b!5935633 (= e!3632407 (not lt!2311199))))

(declare-fun b!5935634 () Bool)

(declare-fun res!2486459 () Bool)

(assert (=> b!5935634 (=> res!2486459 e!3632406)))

(assert (=> b!5935634 (= res!2486459 e!3632404)))

(declare-fun res!2486455 () Bool)

(assert (=> b!5935634 (=> (not res!2486455) (not e!3632404))))

(assert (=> b!5935634 (= res!2486455 lt!2311199)))

(declare-fun b!5935635 () Bool)

(declare-fun e!3632402 () Bool)

(assert (=> b!5935635 (= e!3632403 e!3632402)))

(declare-fun res!2486456 () Bool)

(assert (=> b!5935635 (=> res!2486456 e!3632402)))

(assert (=> b!5935635 (= res!2486456 call!471475)))

(declare-fun b!5935636 () Bool)

(declare-fun res!2486453 () Bool)

(assert (=> b!5935636 (=> res!2486453 e!3632402)))

(assert (=> b!5935636 (= res!2486453 (not (isEmpty!35988 (tail!11588 (tail!11588 s!2326)))))))

(declare-fun b!5935637 () Bool)

(assert (=> b!5935637 (= e!3632402 (not (= (head!12503 (tail!11588 s!2326)) (c!1055049 (derivativeStep!4712 r!7292 (head!12503 s!2326))))))))

(declare-fun bm!471470 () Bool)

(assert (=> bm!471470 (= call!471475 (isEmpty!35988 (tail!11588 s!2326)))))

(declare-fun b!5935638 () Bool)

(assert (=> b!5935638 (= e!3632405 e!3632407)))

(declare-fun c!1055305 () Bool)

(assert (=> b!5935638 (= c!1055305 ((_ is EmptyLang!15981) (derivativeStep!4712 r!7292 (head!12503 s!2326))))))

(declare-fun b!5935639 () Bool)

(declare-fun res!2486458 () Bool)

(assert (=> b!5935639 (=> (not res!2486458) (not e!3632404))))

(assert (=> b!5935639 (= res!2486458 (isEmpty!35988 (tail!11588 (tail!11588 s!2326))))))

(declare-fun b!5935631 () Bool)

(declare-fun res!2486454 () Bool)

(assert (=> b!5935631 (=> (not res!2486454) (not e!3632404))))

(assert (=> b!5935631 (= res!2486454 (not call!471475))))

(declare-fun d!1860734 () Bool)

(assert (=> d!1860734 e!3632405))

(declare-fun c!1055306 () Bool)

(assert (=> d!1860734 (= c!1055306 ((_ is EmptyExpr!15981) (derivativeStep!4712 r!7292 (head!12503 s!2326))))))

(assert (=> d!1860734 (= lt!2311199 e!3632408)))

(declare-fun c!1055304 () Bool)

(assert (=> d!1860734 (= c!1055304 (isEmpty!35988 (tail!11588 s!2326)))))

(assert (=> d!1860734 (validRegex!7717 (derivativeStep!4712 r!7292 (head!12503 s!2326)))))

(assert (=> d!1860734 (= (matchR!8164 (derivativeStep!4712 r!7292 (head!12503 s!2326)) (tail!11588 s!2326)) lt!2311199)))

(assert (= (and d!1860734 c!1055304) b!5935627))

(assert (= (and d!1860734 (not c!1055304)) b!5935629))

(assert (= (and d!1860734 c!1055306) b!5935630))

(assert (= (and d!1860734 (not c!1055306)) b!5935638))

(assert (= (and b!5935638 c!1055305) b!5935633))

(assert (= (and b!5935638 (not c!1055305)) b!5935626))

(assert (= (and b!5935626 (not res!2486457)) b!5935634))

(assert (= (and b!5935634 res!2486455) b!5935631))

(assert (= (and b!5935631 res!2486454) b!5935639))

(assert (= (and b!5935639 res!2486458) b!5935628))

(assert (= (and b!5935634 (not res!2486459)) b!5935632))

(assert (= (and b!5935632 res!2486460) b!5935635))

(assert (= (and b!5935635 (not res!2486456)) b!5935636))

(assert (= (and b!5935636 (not res!2486453)) b!5935637))

(assert (= (or b!5935630 b!5935631 b!5935635) bm!471470))

(assert (=> b!5935628 m!6826084))

(declare-fun m!6826590 () Bool)

(assert (=> b!5935628 m!6826590))

(assert (=> b!5935639 m!6826084))

(declare-fun m!6826592 () Bool)

(assert (=> b!5935639 m!6826592))

(assert (=> b!5935639 m!6826592))

(declare-fun m!6826594 () Bool)

(assert (=> b!5935639 m!6826594))

(assert (=> bm!471470 m!6826084))

(assert (=> bm!471470 m!6826086))

(assert (=> d!1860734 m!6826084))

(assert (=> d!1860734 m!6826086))

(assert (=> d!1860734 m!6826088))

(declare-fun m!6826596 () Bool)

(assert (=> d!1860734 m!6826596))

(assert (=> b!5935629 m!6826084))

(assert (=> b!5935629 m!6826590))

(assert (=> b!5935629 m!6826088))

(assert (=> b!5935629 m!6826590))

(declare-fun m!6826598 () Bool)

(assert (=> b!5935629 m!6826598))

(assert (=> b!5935629 m!6826084))

(assert (=> b!5935629 m!6826592))

(assert (=> b!5935629 m!6826598))

(assert (=> b!5935629 m!6826592))

(declare-fun m!6826600 () Bool)

(assert (=> b!5935629 m!6826600))

(assert (=> b!5935637 m!6826084))

(assert (=> b!5935637 m!6826590))

(assert (=> b!5935627 m!6826088))

(declare-fun m!6826602 () Bool)

(assert (=> b!5935627 m!6826602))

(assert (=> b!5935636 m!6826084))

(assert (=> b!5935636 m!6826592))

(assert (=> b!5935636 m!6826592))

(assert (=> b!5935636 m!6826594))

(assert (=> b!5935084 d!1860734))

(declare-fun b!5935660 () Bool)

(declare-fun e!3632422 () Regex!15981)

(declare-fun e!3632419 () Regex!15981)

(assert (=> b!5935660 (= e!3632422 e!3632419)))

(declare-fun c!1055320 () Bool)

(assert (=> b!5935660 (= c!1055320 ((_ is ElementMatch!15981) r!7292))))

(declare-fun b!5935661 () Bool)

(declare-fun e!3632420 () Regex!15981)

(declare-fun call!471485 () Regex!15981)

(assert (=> b!5935661 (= e!3632420 (Concat!24826 call!471485 r!7292))))

(declare-fun b!5935662 () Bool)

(declare-fun c!1055318 () Bool)

(assert (=> b!5935662 (= c!1055318 (nullable!5976 (regOne!32474 r!7292)))))

(declare-fun e!3632421 () Regex!15981)

(assert (=> b!5935662 (= e!3632420 e!3632421)))

(declare-fun bm!471479 () Bool)

(declare-fun call!471484 () Regex!15981)

(assert (=> bm!471479 (= call!471485 call!471484)))

(declare-fun call!471487 () Regex!15981)

(declare-fun b!5935663 () Bool)

(assert (=> b!5935663 (= e!3632421 (Union!15981 (Concat!24826 call!471485 (regTwo!32474 r!7292)) call!471487))))

(declare-fun b!5935664 () Bool)

(declare-fun c!1055319 () Bool)

(assert (=> b!5935664 (= c!1055319 ((_ is Union!15981) r!7292))))

(declare-fun e!3632423 () Regex!15981)

(assert (=> b!5935664 (= e!3632419 e!3632423)))

(declare-fun b!5935665 () Bool)

(assert (=> b!5935665 (= e!3632422 EmptyLang!15981)))

(declare-fun b!5935666 () Bool)

(assert (=> b!5935666 (= e!3632423 e!3632420)))

(declare-fun c!1055317 () Bool)

(assert (=> b!5935666 (= c!1055317 ((_ is Star!15981) r!7292))))

(declare-fun bm!471480 () Bool)

(assert (=> bm!471480 (= call!471484 (derivativeStep!4712 (ite c!1055319 (regTwo!32475 r!7292) (ite c!1055317 (reg!16310 r!7292) (regOne!32474 r!7292))) (head!12503 s!2326)))))

(declare-fun b!5935667 () Bool)

(assert (=> b!5935667 (= e!3632419 (ite (= (head!12503 s!2326) (c!1055049 r!7292)) EmptyExpr!15981 EmptyLang!15981))))

(declare-fun call!471486 () Regex!15981)

(declare-fun bm!471481 () Bool)

(assert (=> bm!471481 (= call!471486 (derivativeStep!4712 (ite c!1055319 (regOne!32475 r!7292) (ite c!1055318 (regTwo!32474 r!7292) (regOne!32474 r!7292))) (head!12503 s!2326)))))

(declare-fun b!5935668 () Bool)

(assert (=> b!5935668 (= e!3632423 (Union!15981 call!471486 call!471484))))

(declare-fun b!5935669 () Bool)

(assert (=> b!5935669 (= e!3632421 (Union!15981 (Concat!24826 call!471487 (regTwo!32474 r!7292)) EmptyLang!15981))))

(declare-fun d!1860736 () Bool)

(declare-fun lt!2311202 () Regex!15981)

(assert (=> d!1860736 (validRegex!7717 lt!2311202)))

(assert (=> d!1860736 (= lt!2311202 e!3632422)))

(declare-fun c!1055321 () Bool)

(assert (=> d!1860736 (= c!1055321 (or ((_ is EmptyExpr!15981) r!7292) ((_ is EmptyLang!15981) r!7292)))))

(assert (=> d!1860736 (validRegex!7717 r!7292)))

(assert (=> d!1860736 (= (derivativeStep!4712 r!7292 (head!12503 s!2326)) lt!2311202)))

(declare-fun bm!471482 () Bool)

(assert (=> bm!471482 (= call!471487 call!471486)))

(assert (= (and d!1860736 c!1055321) b!5935665))

(assert (= (and d!1860736 (not c!1055321)) b!5935660))

(assert (= (and b!5935660 c!1055320) b!5935667))

(assert (= (and b!5935660 (not c!1055320)) b!5935664))

(assert (= (and b!5935664 c!1055319) b!5935668))

(assert (= (and b!5935664 (not c!1055319)) b!5935666))

(assert (= (and b!5935666 c!1055317) b!5935661))

(assert (= (and b!5935666 (not c!1055317)) b!5935662))

(assert (= (and b!5935662 c!1055318) b!5935663))

(assert (= (and b!5935662 (not c!1055318)) b!5935669))

(assert (= (or b!5935663 b!5935669) bm!471482))

(assert (= (or b!5935661 b!5935663) bm!471479))

(assert (= (or b!5935668 bm!471479) bm!471480))

(assert (= (or b!5935668 bm!471482) bm!471481))

(assert (=> b!5935662 m!6825950))

(assert (=> bm!471480 m!6826082))

(declare-fun m!6826604 () Bool)

(assert (=> bm!471480 m!6826604))

(assert (=> bm!471481 m!6826082))

(declare-fun m!6826606 () Bool)

(assert (=> bm!471481 m!6826606))

(declare-fun m!6826608 () Bool)

(assert (=> d!1860736 m!6826608))

(assert (=> d!1860736 m!6825848))

(assert (=> b!5935084 d!1860736))

(assert (=> b!5935084 d!1860612))

(assert (=> b!5935084 d!1860682))

(declare-fun b!5935670 () Bool)

(declare-fun e!3632429 () Bool)

(declare-fun call!471490 () Bool)

(assert (=> b!5935670 (= e!3632429 call!471490)))

(declare-fun bm!471483 () Bool)

(declare-fun call!471488 () Bool)

(declare-fun call!471489 () Bool)

(assert (=> bm!471483 (= call!471488 call!471489)))

(declare-fun bm!471484 () Bool)

(declare-fun c!1055322 () Bool)

(assert (=> bm!471484 (= call!471490 (validRegex!7717 (ite c!1055322 (regTwo!32475 lt!2311174) (regTwo!32474 lt!2311174))))))

(declare-fun c!1055323 () Bool)

(declare-fun bm!471485 () Bool)

(assert (=> bm!471485 (= call!471489 (validRegex!7717 (ite c!1055323 (reg!16310 lt!2311174) (ite c!1055322 (regOne!32475 lt!2311174) (regOne!32474 lt!2311174)))))))

(declare-fun b!5935671 () Bool)

(declare-fun res!2486465 () Bool)

(declare-fun e!3632424 () Bool)

(assert (=> b!5935671 (=> (not res!2486465) (not e!3632424))))

(assert (=> b!5935671 (= res!2486465 call!471488)))

(declare-fun e!3632425 () Bool)

(assert (=> b!5935671 (= e!3632425 e!3632424)))

(declare-fun b!5935673 () Bool)

(declare-fun e!3632428 () Bool)

(assert (=> b!5935673 (= e!3632428 e!3632429)))

(declare-fun res!2486461 () Bool)

(assert (=> b!5935673 (=> (not res!2486461) (not e!3632429))))

(assert (=> b!5935673 (= res!2486461 call!471488)))

(declare-fun b!5935674 () Bool)

(declare-fun res!2486464 () Bool)

(assert (=> b!5935674 (=> res!2486464 e!3632428)))

(assert (=> b!5935674 (= res!2486464 (not ((_ is Concat!24826) lt!2311174)))))

(assert (=> b!5935674 (= e!3632425 e!3632428)))

(declare-fun b!5935675 () Bool)

(declare-fun e!3632427 () Bool)

(declare-fun e!3632426 () Bool)

(assert (=> b!5935675 (= e!3632427 e!3632426)))

(assert (=> b!5935675 (= c!1055323 ((_ is Star!15981) lt!2311174))))

(declare-fun b!5935676 () Bool)

(assert (=> b!5935676 (= e!3632426 e!3632425)))

(assert (=> b!5935676 (= c!1055322 ((_ is Union!15981) lt!2311174))))

(declare-fun b!5935672 () Bool)

(assert (=> b!5935672 (= e!3632424 call!471490)))

(declare-fun d!1860738 () Bool)

(declare-fun res!2486462 () Bool)

(assert (=> d!1860738 (=> res!2486462 e!3632427)))

(assert (=> d!1860738 (= res!2486462 ((_ is ElementMatch!15981) lt!2311174))))

(assert (=> d!1860738 (= (validRegex!7717 lt!2311174) e!3632427)))

(declare-fun b!5935677 () Bool)

(declare-fun e!3632430 () Bool)

(assert (=> b!5935677 (= e!3632426 e!3632430)))

(declare-fun res!2486463 () Bool)

(assert (=> b!5935677 (= res!2486463 (not (nullable!5976 (reg!16310 lt!2311174))))))

(assert (=> b!5935677 (=> (not res!2486463) (not e!3632430))))

(declare-fun b!5935678 () Bool)

(assert (=> b!5935678 (= e!3632430 call!471489)))

(assert (= (and d!1860738 (not res!2486462)) b!5935675))

(assert (= (and b!5935675 c!1055323) b!5935677))

(assert (= (and b!5935675 (not c!1055323)) b!5935676))

(assert (= (and b!5935677 res!2486463) b!5935678))

(assert (= (and b!5935676 c!1055322) b!5935671))

(assert (= (and b!5935676 (not c!1055322)) b!5935674))

(assert (= (and b!5935671 res!2486465) b!5935672))

(assert (= (and b!5935674 (not res!2486464)) b!5935673))

(assert (= (and b!5935673 res!2486461) b!5935670))

(assert (= (or b!5935672 b!5935670) bm!471484))

(assert (= (or b!5935671 b!5935673) bm!471483))

(assert (= (or b!5935678 bm!471483) bm!471485))

(declare-fun m!6826610 () Bool)

(assert (=> bm!471484 m!6826610))

(declare-fun m!6826612 () Bool)

(assert (=> bm!471485 m!6826612))

(declare-fun m!6826614 () Bool)

(assert (=> b!5935677 m!6826614))

(assert (=> d!1860568 d!1860738))

(declare-fun d!1860740 () Bool)

(declare-fun res!2486466 () Bool)

(declare-fun e!3632431 () Bool)

(assert (=> d!1860740 (=> res!2486466 e!3632431)))

(assert (=> d!1860740 (= res!2486466 ((_ is Nil!64118) (exprs!5865 (h!70567 zl!343))))))

(assert (=> d!1860740 (= (forall!15064 (exprs!5865 (h!70567 zl!343)) lambda!323693) e!3632431)))

(declare-fun b!5935679 () Bool)

(declare-fun e!3632432 () Bool)

(assert (=> b!5935679 (= e!3632431 e!3632432)))

(declare-fun res!2486467 () Bool)

(assert (=> b!5935679 (=> (not res!2486467) (not e!3632432))))

(assert (=> b!5935679 (= res!2486467 (dynLambda!25077 lambda!323693 (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935680 () Bool)

(assert (=> b!5935680 (= e!3632432 (forall!15064 (t!377643 (exprs!5865 (h!70567 zl!343))) lambda!323693))))

(assert (= (and d!1860740 (not res!2486466)) b!5935679))

(assert (= (and b!5935679 res!2486467) b!5935680))

(declare-fun b_lambda!222929 () Bool)

(assert (=> (not b_lambda!222929) (not b!5935679)))

(declare-fun m!6826616 () Bool)

(assert (=> b!5935679 m!6826616))

(declare-fun m!6826618 () Bool)

(assert (=> b!5935680 m!6826618))

(assert (=> d!1860568 d!1860740))

(declare-fun d!1860742 () Bool)

(declare-fun res!2486468 () Bool)

(declare-fun e!3632433 () Bool)

(assert (=> d!1860742 (=> res!2486468 e!3632433)))

(assert (=> d!1860742 (= res!2486468 ((_ is Nil!64118) lt!2311180))))

(assert (=> d!1860742 (= (forall!15064 lt!2311180 lambda!323700) e!3632433)))

(declare-fun b!5935681 () Bool)

(declare-fun e!3632434 () Bool)

(assert (=> b!5935681 (= e!3632433 e!3632434)))

(declare-fun res!2486469 () Bool)

(assert (=> b!5935681 (=> (not res!2486469) (not e!3632434))))

(assert (=> b!5935681 (= res!2486469 (dynLambda!25077 lambda!323700 (h!70566 lt!2311180)))))

(declare-fun b!5935682 () Bool)

(assert (=> b!5935682 (= e!3632434 (forall!15064 (t!377643 lt!2311180) lambda!323700))))

(assert (= (and d!1860742 (not res!2486468)) b!5935681))

(assert (= (and b!5935681 res!2486469) b!5935682))

(declare-fun b_lambda!222931 () Bool)

(assert (=> (not b_lambda!222931) (not b!5935681)))

(declare-fun m!6826620 () Bool)

(assert (=> b!5935681 m!6826620))

(declare-fun m!6826622 () Bool)

(assert (=> b!5935682 m!6826622))

(assert (=> d!1860574 d!1860742))

(assert (=> d!1860496 d!1860638))

(assert (=> d!1860496 d!1860442))

(declare-fun d!1860744 () Bool)

(assert (=> d!1860744 (= (nullable!5976 (h!70566 (exprs!5865 (h!70567 zl!343)))) (nullableFct!1947 (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun bs!1404143 () Bool)

(assert (= bs!1404143 d!1860744))

(declare-fun m!6826624 () Bool)

(assert (=> bs!1404143 m!6826624))

(assert (=> b!5934889 d!1860744))

(declare-fun d!1860746 () Bool)

(assert (=> d!1860746 (= (nullable!5976 r!7292) (nullableFct!1947 r!7292))))

(declare-fun bs!1404144 () Bool)

(assert (= bs!1404144 d!1860746))

(declare-fun m!6826626 () Bool)

(assert (=> bs!1404144 m!6826626))

(assert (=> b!5935082 d!1860746))

(declare-fun bs!1404145 () Bool)

(declare-fun b!5935693 () Bool)

(assert (= bs!1404145 (and b!5935693 d!1860670)))

(declare-fun lambda!323717 () Int)

(assert (=> bs!1404145 (not (= lambda!323717 lambda!323710))))

(declare-fun bs!1404146 () Bool)

(assert (= bs!1404146 (and b!5935693 b!5935569)))

(assert (=> bs!1404146 (not (= lambda!323717 lambda!323713))))

(declare-fun bs!1404147 () Bool)

(assert (= bs!1404147 (and b!5935693 d!1860540)))

(assert (=> bs!1404147 (not (= lambda!323717 lambda!323680))))

(declare-fun bs!1404148 () Bool)

(assert (= bs!1404148 (and b!5935693 b!5934657)))

(assert (=> bs!1404148 (not (= lambda!323717 lambda!323634))))

(declare-fun bs!1404149 () Bool)

(assert (= bs!1404149 (and b!5935693 d!1860706)))

(assert (=> bs!1404149 (not (= lambda!323717 lambda!323716))))

(declare-fun bs!1404150 () Bool)

(assert (= bs!1404150 (and b!5935693 b!5935020)))

(assert (=> bs!1404150 (not (= lambda!323717 lambda!323667))))

(declare-fun bs!1404151 () Bool)

(assert (= bs!1404151 (and b!5935693 d!1860542)))

(assert (=> bs!1404151 (not (= lambda!323717 lambda!323686))))

(declare-fun bs!1404152 () Bool)

(assert (= bs!1404152 (and b!5935693 b!5935572)))

(assert (=> bs!1404152 (= (and (= (reg!16310 (regOne!32475 r!7292)) (reg!16310 (regTwo!32475 r!7292))) (= (regOne!32475 r!7292) (regTwo!32475 r!7292))) (= lambda!323717 lambda!323712))))

(assert (=> bs!1404151 (not (= lambda!323717 lambda!323685))))

(assert (=> bs!1404145 (not (= lambda!323717 lambda!323709))))

(declare-fun bs!1404153 () Bool)

(assert (= bs!1404153 (and b!5935693 b!5935023)))

(assert (=> bs!1404153 (= (and (= (reg!16310 (regOne!32475 r!7292)) (reg!16310 r!7292)) (= (regOne!32475 r!7292) r!7292)) (= lambda!323717 lambda!323665))))

(assert (=> bs!1404148 (not (= lambda!323717 lambda!323635))))

(assert (=> b!5935693 true))

(assert (=> b!5935693 true))

(declare-fun bs!1404154 () Bool)

(declare-fun b!5935690 () Bool)

(assert (= bs!1404154 (and b!5935690 d!1860670)))

(declare-fun lambda!323718 () Int)

(assert (=> bs!1404154 (= (and (= (regOne!32474 (regOne!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regOne!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323718 lambda!323710))))

(declare-fun bs!1404155 () Bool)

(assert (= bs!1404155 (and b!5935690 b!5935569)))

(assert (=> bs!1404155 (= (and (= (regOne!32474 (regOne!32475 r!7292)) (regOne!32474 (regTwo!32475 r!7292))) (= (regTwo!32474 (regOne!32475 r!7292)) (regTwo!32474 (regTwo!32475 r!7292)))) (= lambda!323718 lambda!323713))))

(declare-fun bs!1404156 () Bool)

(assert (= bs!1404156 (and b!5935690 d!1860540)))

(assert (=> bs!1404156 (not (= lambda!323718 lambda!323680))))

(declare-fun bs!1404157 () Bool)

(assert (= bs!1404157 (and b!5935690 b!5934657)))

(assert (=> bs!1404157 (not (= lambda!323718 lambda!323634))))

(declare-fun bs!1404158 () Bool)

(assert (= bs!1404158 (and b!5935690 d!1860706)))

(assert (=> bs!1404158 (not (= lambda!323718 lambda!323716))))

(declare-fun bs!1404159 () Bool)

(assert (= bs!1404159 (and b!5935690 b!5935020)))

(assert (=> bs!1404159 (= (and (= (regOne!32474 (regOne!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regOne!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323718 lambda!323667))))

(declare-fun bs!1404160 () Bool)

(assert (= bs!1404160 (and b!5935690 b!5935572)))

(assert (=> bs!1404160 (not (= lambda!323718 lambda!323712))))

(declare-fun bs!1404161 () Bool)

(assert (= bs!1404161 (and b!5935690 d!1860542)))

(assert (=> bs!1404161 (not (= lambda!323718 lambda!323685))))

(assert (=> bs!1404154 (not (= lambda!323718 lambda!323709))))

(declare-fun bs!1404162 () Bool)

(assert (= bs!1404162 (and b!5935690 b!5935023)))

(assert (=> bs!1404162 (not (= lambda!323718 lambda!323665))))

(assert (=> bs!1404157 (= (and (= (regOne!32474 (regOne!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regOne!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323718 lambda!323635))))

(assert (=> bs!1404161 (= (and (= (regOne!32474 (regOne!32475 r!7292)) (regOne!32474 r!7292)) (= (regTwo!32474 (regOne!32475 r!7292)) (regTwo!32474 r!7292))) (= lambda!323718 lambda!323686))))

(declare-fun bs!1404163 () Bool)

(assert (= bs!1404163 (and b!5935690 b!5935693)))

(assert (=> bs!1404163 (not (= lambda!323718 lambda!323717))))

(assert (=> b!5935690 true))

(assert (=> b!5935690 true))

(declare-fun b!5935683 () Bool)

(declare-fun e!3632440 () Bool)

(declare-fun e!3632439 () Bool)

(assert (=> b!5935683 (= e!3632440 e!3632439)))

(declare-fun c!1055327 () Bool)

(assert (=> b!5935683 (= c!1055327 ((_ is Star!15981) (regOne!32475 r!7292)))))

(declare-fun b!5935685 () Bool)

(declare-fun e!3632441 () Bool)

(assert (=> b!5935685 (= e!3632441 (matchRSpec!3082 (regTwo!32475 (regOne!32475 r!7292)) s!2326))))

(declare-fun b!5935686 () Bool)

(declare-fun e!3632438 () Bool)

(assert (=> b!5935686 (= e!3632438 (= s!2326 (Cons!64120 (c!1055049 (regOne!32475 r!7292)) Nil!64120)))))

(declare-fun b!5935687 () Bool)

(declare-fun res!2486471 () Bool)

(declare-fun e!3632436 () Bool)

(assert (=> b!5935687 (=> res!2486471 e!3632436)))

(declare-fun call!471492 () Bool)

(assert (=> b!5935687 (= res!2486471 call!471492)))

(assert (=> b!5935687 (= e!3632439 e!3632436)))

(declare-fun b!5935688 () Bool)

(declare-fun e!3632435 () Bool)

(assert (=> b!5935688 (= e!3632435 call!471492)))

(declare-fun b!5935689 () Bool)

(declare-fun c!1055326 () Bool)

(assert (=> b!5935689 (= c!1055326 ((_ is ElementMatch!15981) (regOne!32475 r!7292)))))

(declare-fun e!3632437 () Bool)

(assert (=> b!5935689 (= e!3632437 e!3632438)))

(declare-fun bm!471486 () Bool)

(assert (=> bm!471486 (= call!471492 (isEmpty!35988 s!2326))))

(declare-fun call!471491 () Bool)

(assert (=> b!5935690 (= e!3632439 call!471491)))

(declare-fun b!5935684 () Bool)

(declare-fun c!1055325 () Bool)

(assert (=> b!5935684 (= c!1055325 ((_ is Union!15981) (regOne!32475 r!7292)))))

(assert (=> b!5935684 (= e!3632438 e!3632440)))

(declare-fun d!1860748 () Bool)

(declare-fun c!1055324 () Bool)

(assert (=> d!1860748 (= c!1055324 ((_ is EmptyExpr!15981) (regOne!32475 r!7292)))))

(assert (=> d!1860748 (= (matchRSpec!3082 (regOne!32475 r!7292) s!2326) e!3632435)))

(declare-fun b!5935691 () Bool)

(assert (=> b!5935691 (= e!3632435 e!3632437)))

(declare-fun res!2486470 () Bool)

(assert (=> b!5935691 (= res!2486470 (not ((_ is EmptyLang!15981) (regOne!32475 r!7292))))))

(assert (=> b!5935691 (=> (not res!2486470) (not e!3632437))))

(declare-fun b!5935692 () Bool)

(assert (=> b!5935692 (= e!3632440 e!3632441)))

(declare-fun res!2486472 () Bool)

(assert (=> b!5935692 (= res!2486472 (matchRSpec!3082 (regOne!32475 (regOne!32475 r!7292)) s!2326))))

(assert (=> b!5935692 (=> res!2486472 e!3632441)))

(declare-fun bm!471487 () Bool)

(assert (=> bm!471487 (= call!471491 (Exists!3051 (ite c!1055327 lambda!323717 lambda!323718)))))

(assert (=> b!5935693 (= e!3632436 call!471491)))

(assert (= (and d!1860748 c!1055324) b!5935688))

(assert (= (and d!1860748 (not c!1055324)) b!5935691))

(assert (= (and b!5935691 res!2486470) b!5935689))

(assert (= (and b!5935689 c!1055326) b!5935686))

(assert (= (and b!5935689 (not c!1055326)) b!5935684))

(assert (= (and b!5935684 c!1055325) b!5935692))

(assert (= (and b!5935684 (not c!1055325)) b!5935683))

(assert (= (and b!5935692 (not res!2486472)) b!5935685))

(assert (= (and b!5935683 c!1055327) b!5935687))

(assert (= (and b!5935683 (not c!1055327)) b!5935690))

(assert (= (and b!5935687 (not res!2486471)) b!5935693))

(assert (= (or b!5935693 b!5935690) bm!471487))

(assert (= (or b!5935688 b!5935687) bm!471486))

(declare-fun m!6826628 () Bool)

(assert (=> b!5935685 m!6826628))

(assert (=> bm!471486 m!6826048))

(declare-fun m!6826630 () Bool)

(assert (=> b!5935692 m!6826630))

(declare-fun m!6826632 () Bool)

(assert (=> bm!471487 m!6826632))

(assert (=> b!5935022 d!1860748))

(declare-fun b!5935694 () Bool)

(declare-fun c!1055329 () Bool)

(assert (=> b!5935694 (= c!1055329 ((_ is Star!15981) (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun e!3632446 () (InoxSet Context!10730))

(declare-fun e!3632444 () (InoxSet Context!10730))

(assert (=> b!5935694 (= e!3632446 e!3632444)))

(declare-fun bm!471488 () Bool)

(declare-fun c!1055332 () Bool)

(declare-fun call!471495 () (InoxSet Context!10730))

(declare-fun call!471496 () List!64242)

(assert (=> bm!471488 (= call!471495 (derivationStepZipperDown!1231 (ite c!1055332 (regOne!32475 (h!70566 (exprs!5865 (h!70567 zl!343)))) (regOne!32474 (h!70566 (exprs!5865 (h!70567 zl!343))))) (ite c!1055332 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))) (Context!10731 call!471496)) (h!70568 s!2326)))))

(declare-fun b!5935695 () Bool)

(declare-fun e!3632443 () (InoxSet Context!10730))

(declare-fun call!471497 () (InoxSet Context!10730))

(assert (=> b!5935695 (= e!3632443 ((_ map or) call!471495 call!471497))))

(declare-fun bm!471489 () Bool)

(declare-fun call!471494 () (InoxSet Context!10730))

(declare-fun call!471493 () (InoxSet Context!10730))

(assert (=> bm!471489 (= call!471494 call!471493)))

(declare-fun b!5935696 () Bool)

(declare-fun e!3632442 () Bool)

(assert (=> b!5935696 (= e!3632442 (nullable!5976 (regOne!32474 (h!70566 (exprs!5865 (h!70567 zl!343))))))))

(declare-fun bm!471490 () Bool)

(declare-fun call!471498 () List!64242)

(declare-fun c!1055330 () Bool)

(declare-fun c!1055328 () Bool)

(assert (=> bm!471490 (= call!471497 (derivationStepZipperDown!1231 (ite c!1055332 (regTwo!32475 (h!70566 (exprs!5865 (h!70567 zl!343)))) (ite c!1055330 (regTwo!32474 (h!70566 (exprs!5865 (h!70567 zl!343)))) (ite c!1055328 (regOne!32474 (h!70566 (exprs!5865 (h!70567 zl!343)))) (reg!16310 (h!70566 (exprs!5865 (h!70567 zl!343))))))) (ite (or c!1055332 c!1055330) (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))) (Context!10731 call!471498)) (h!70568 s!2326)))))

(declare-fun b!5935697 () Bool)

(declare-fun e!3632445 () (InoxSet Context!10730))

(assert (=> b!5935697 (= e!3632445 e!3632443)))

(assert (=> b!5935697 (= c!1055332 ((_ is Union!15981) (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935698 () Bool)

(assert (=> b!5935698 (= c!1055330 e!3632442)))

(declare-fun res!2486473 () Bool)

(assert (=> b!5935698 (=> (not res!2486473) (not e!3632442))))

(assert (=> b!5935698 (= res!2486473 ((_ is Concat!24826) (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun e!3632447 () (InoxSet Context!10730))

(assert (=> b!5935698 (= e!3632443 e!3632447)))

(declare-fun bm!471491 () Bool)

(assert (=> bm!471491 (= call!471498 call!471496)))

(declare-fun b!5935699 () Bool)

(assert (=> b!5935699 (= e!3632445 (store ((as const (Array Context!10730 Bool)) false) (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))) true))))

(declare-fun b!5935700 () Bool)

(assert (=> b!5935700 (= e!3632447 e!3632446)))

(assert (=> b!5935700 (= c!1055328 ((_ is Concat!24826) (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun b!5935701 () Bool)

(assert (=> b!5935701 (= e!3632446 call!471494)))

(declare-fun d!1860750 () Bool)

(declare-fun c!1055331 () Bool)

(assert (=> d!1860750 (= c!1055331 (and ((_ is ElementMatch!15981) (h!70566 (exprs!5865 (h!70567 zl!343)))) (= (c!1055049 (h!70566 (exprs!5865 (h!70567 zl!343)))) (h!70568 s!2326))))))

(assert (=> d!1860750 (= (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (h!70567 zl!343))) (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343)))) (h!70568 s!2326)) e!3632445)))

(declare-fun b!5935702 () Bool)

(assert (=> b!5935702 (= e!3632444 ((as const (Array Context!10730 Bool)) false))))

(declare-fun b!5935703 () Bool)

(assert (=> b!5935703 (= e!3632444 call!471494)))

(declare-fun bm!471492 () Bool)

(assert (=> bm!471492 (= call!471493 call!471497)))

(declare-fun b!5935704 () Bool)

(assert (=> b!5935704 (= e!3632447 ((_ map or) call!471495 call!471493))))

(declare-fun bm!471493 () Bool)

(assert (=> bm!471493 (= call!471496 ($colon$colon!1868 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (h!70567 zl!343))))) (ite (or c!1055330 c!1055328) (regTwo!32474 (h!70566 (exprs!5865 (h!70567 zl!343)))) (h!70566 (exprs!5865 (h!70567 zl!343))))))))

(assert (= (and d!1860750 c!1055331) b!5935699))

(assert (= (and d!1860750 (not c!1055331)) b!5935697))

(assert (= (and b!5935697 c!1055332) b!5935695))

(assert (= (and b!5935697 (not c!1055332)) b!5935698))

(assert (= (and b!5935698 res!2486473) b!5935696))

(assert (= (and b!5935698 c!1055330) b!5935704))

(assert (= (and b!5935698 (not c!1055330)) b!5935700))

(assert (= (and b!5935700 c!1055328) b!5935701))

(assert (= (and b!5935700 (not c!1055328)) b!5935694))

(assert (= (and b!5935694 c!1055329) b!5935703))

(assert (= (and b!5935694 (not c!1055329)) b!5935702))

(assert (= (or b!5935701 b!5935703) bm!471491))

(assert (= (or b!5935701 b!5935703) bm!471489))

(assert (= (or b!5935704 bm!471491) bm!471493))

(assert (= (or b!5935704 bm!471489) bm!471492))

(assert (= (or b!5935695 bm!471492) bm!471490))

(assert (= (or b!5935695 b!5935704) bm!471488))

(declare-fun m!6826634 () Bool)

(assert (=> bm!471488 m!6826634))

(declare-fun m!6826636 () Bool)

(assert (=> b!5935696 m!6826636))

(declare-fun m!6826638 () Bool)

(assert (=> b!5935699 m!6826638))

(declare-fun m!6826640 () Bool)

(assert (=> bm!471490 m!6826640))

(declare-fun m!6826642 () Bool)

(assert (=> bm!471493 m!6826642))

(assert (=> bm!471397 d!1860750))

(declare-fun b!5935705 () Bool)

(declare-fun e!3632448 () Bool)

(assert (=> b!5935705 (= e!3632448 (nullable!5976 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))))))

(declare-fun b!5935706 () Bool)

(declare-fun e!3632449 () (InoxSet Context!10730))

(assert (=> b!5935706 (= e!3632449 ((as const (Array Context!10730 Bool)) false))))

(declare-fun bm!471494 () Bool)

(declare-fun call!471499 () (InoxSet Context!10730))

(assert (=> bm!471494 (= call!471499 (derivationStepZipperDown!1231 (h!70566 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))) (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))) (h!70568 s!2326)))))

(declare-fun b!5935707 () Bool)

(assert (=> b!5935707 (= e!3632449 call!471499)))

(declare-fun b!5935708 () Bool)

(declare-fun e!3632450 () (InoxSet Context!10730))

(assert (=> b!5935708 (= e!3632450 e!3632449)))

(declare-fun c!1055334 () Bool)

(assert (=> b!5935708 (= c!1055334 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))))

(declare-fun b!5935709 () Bool)

(assert (=> b!5935709 (= e!3632450 ((_ map or) call!471499 (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118)))))))) (h!70568 s!2326))))))

(declare-fun d!1860752 () Bool)

(declare-fun c!1055333 () Bool)

(assert (=> d!1860752 (= c!1055333 e!3632448)))

(declare-fun res!2486474 () Bool)

(assert (=> d!1860752 (=> (not res!2486474) (not e!3632448))))

(assert (=> d!1860752 (= res!2486474 ((_ is Cons!64118) (exprs!5865 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))))))))

(assert (=> d!1860752 (= (derivationStepZipperUp!1157 (Context!10731 (t!377643 (exprs!5865 (Context!10731 (Cons!64118 r!7292 Nil!64118))))) (h!70568 s!2326)) e!3632450)))

(assert (= (and d!1860752 res!2486474) b!5935705))

(assert (= (and d!1860752 c!1055333) b!5935709))

(assert (= (and d!1860752 (not c!1055333)) b!5935708))

(assert (= (and b!5935708 c!1055334) b!5935707))

(assert (= (and b!5935708 (not c!1055334)) b!5935706))

(assert (= (or b!5935709 b!5935707) bm!471494))

(declare-fun m!6826644 () Bool)

(assert (=> b!5935705 m!6826644))

(declare-fun m!6826646 () Bool)

(assert (=> bm!471494 m!6826646))

(declare-fun m!6826648 () Bool)

(assert (=> b!5935709 m!6826648))

(assert (=> b!5934854 d!1860752))

(assert (=> d!1860552 d!1860558))

(declare-fun d!1860754 () Bool)

(assert (=> d!1860754 (= (flatMap!1494 lt!2311084 lambda!323636) (dynLambda!25076 lambda!323636 lt!2311089))))

(assert (=> d!1860754 true))

(declare-fun _$13!2706 () Unit!157233)

(assert (=> d!1860754 (= (choose!44729 lt!2311084 lt!2311089 lambda!323636) _$13!2706)))

(declare-fun b_lambda!222933 () Bool)

(assert (=> (not b_lambda!222933) (not d!1860754)))

(declare-fun bs!1404164 () Bool)

(assert (= bs!1404164 d!1860754))

(assert (=> bs!1404164 m!6825836))

(assert (=> bs!1404164 m!6826192))

(assert (=> d!1860552 d!1860754))

(declare-fun e!3632451 () Bool)

(assert (=> b!5935300 (= tp!1651227 e!3632451)))

(declare-fun b!5935710 () Bool)

(assert (=> b!5935710 (= e!3632451 tp_is_empty!41215)))

(declare-fun b!5935712 () Bool)

(declare-fun tp!1651290 () Bool)

(assert (=> b!5935712 (= e!3632451 tp!1651290)))

(declare-fun b!5935713 () Bool)

(declare-fun tp!1651288 () Bool)

(declare-fun tp!1651287 () Bool)

(assert (=> b!5935713 (= e!3632451 (and tp!1651288 tp!1651287))))

(declare-fun b!5935711 () Bool)

(declare-fun tp!1651291 () Bool)

(declare-fun tp!1651289 () Bool)

(assert (=> b!5935711 (= e!3632451 (and tp!1651291 tp!1651289))))

(assert (= (and b!5935300 ((_ is ElementMatch!15981) (regOne!32474 (regOne!32475 r!7292)))) b!5935710))

(assert (= (and b!5935300 ((_ is Concat!24826) (regOne!32474 (regOne!32475 r!7292)))) b!5935711))

(assert (= (and b!5935300 ((_ is Star!15981) (regOne!32474 (regOne!32475 r!7292)))) b!5935712))

(assert (= (and b!5935300 ((_ is Union!15981) (regOne!32474 (regOne!32475 r!7292)))) b!5935713))

(declare-fun e!3632452 () Bool)

(assert (=> b!5935300 (= tp!1651225 e!3632452)))

(declare-fun b!5935714 () Bool)

(assert (=> b!5935714 (= e!3632452 tp_is_empty!41215)))

(declare-fun b!5935716 () Bool)

(declare-fun tp!1651295 () Bool)

(assert (=> b!5935716 (= e!3632452 tp!1651295)))

(declare-fun b!5935717 () Bool)

(declare-fun tp!1651293 () Bool)

(declare-fun tp!1651292 () Bool)

(assert (=> b!5935717 (= e!3632452 (and tp!1651293 tp!1651292))))

(declare-fun b!5935715 () Bool)

(declare-fun tp!1651296 () Bool)

(declare-fun tp!1651294 () Bool)

(assert (=> b!5935715 (= e!3632452 (and tp!1651296 tp!1651294))))

(assert (= (and b!5935300 ((_ is ElementMatch!15981) (regTwo!32474 (regOne!32475 r!7292)))) b!5935714))

(assert (= (and b!5935300 ((_ is Concat!24826) (regTwo!32474 (regOne!32475 r!7292)))) b!5935715))

(assert (= (and b!5935300 ((_ is Star!15981) (regTwo!32474 (regOne!32475 r!7292)))) b!5935716))

(assert (= (and b!5935300 ((_ is Union!15981) (regTwo!32474 (regOne!32475 r!7292)))) b!5935717))

(declare-fun e!3632453 () Bool)

(assert (=> b!5935301 (= tp!1651226 e!3632453)))

(declare-fun b!5935718 () Bool)

(assert (=> b!5935718 (= e!3632453 tp_is_empty!41215)))

(declare-fun b!5935720 () Bool)

(declare-fun tp!1651300 () Bool)

(assert (=> b!5935720 (= e!3632453 tp!1651300)))

(declare-fun b!5935721 () Bool)

(declare-fun tp!1651298 () Bool)

(declare-fun tp!1651297 () Bool)

(assert (=> b!5935721 (= e!3632453 (and tp!1651298 tp!1651297))))

(declare-fun b!5935719 () Bool)

(declare-fun tp!1651301 () Bool)

(declare-fun tp!1651299 () Bool)

(assert (=> b!5935719 (= e!3632453 (and tp!1651301 tp!1651299))))

(assert (= (and b!5935301 ((_ is ElementMatch!15981) (reg!16310 (regOne!32475 r!7292)))) b!5935718))

(assert (= (and b!5935301 ((_ is Concat!24826) (reg!16310 (regOne!32475 r!7292)))) b!5935719))

(assert (= (and b!5935301 ((_ is Star!15981) (reg!16310 (regOne!32475 r!7292)))) b!5935720))

(assert (= (and b!5935301 ((_ is Union!15981) (reg!16310 (regOne!32475 r!7292)))) b!5935721))

(declare-fun e!3632454 () Bool)

(assert (=> b!5935302 (= tp!1651224 e!3632454)))

(declare-fun b!5935722 () Bool)

(assert (=> b!5935722 (= e!3632454 tp_is_empty!41215)))

(declare-fun b!5935724 () Bool)

(declare-fun tp!1651305 () Bool)

(assert (=> b!5935724 (= e!3632454 tp!1651305)))

(declare-fun b!5935725 () Bool)

(declare-fun tp!1651303 () Bool)

(declare-fun tp!1651302 () Bool)

(assert (=> b!5935725 (= e!3632454 (and tp!1651303 tp!1651302))))

(declare-fun b!5935723 () Bool)

(declare-fun tp!1651306 () Bool)

(declare-fun tp!1651304 () Bool)

(assert (=> b!5935723 (= e!3632454 (and tp!1651306 tp!1651304))))

(assert (= (and b!5935302 ((_ is ElementMatch!15981) (regOne!32475 (regOne!32475 r!7292)))) b!5935722))

(assert (= (and b!5935302 ((_ is Concat!24826) (regOne!32475 (regOne!32475 r!7292)))) b!5935723))

(assert (= (and b!5935302 ((_ is Star!15981) (regOne!32475 (regOne!32475 r!7292)))) b!5935724))

(assert (= (and b!5935302 ((_ is Union!15981) (regOne!32475 (regOne!32475 r!7292)))) b!5935725))

(declare-fun e!3632455 () Bool)

(assert (=> b!5935302 (= tp!1651223 e!3632455)))

(declare-fun b!5935726 () Bool)

(assert (=> b!5935726 (= e!3632455 tp_is_empty!41215)))

(declare-fun b!5935728 () Bool)

(declare-fun tp!1651310 () Bool)

(assert (=> b!5935728 (= e!3632455 tp!1651310)))

(declare-fun b!5935729 () Bool)

(declare-fun tp!1651308 () Bool)

(declare-fun tp!1651307 () Bool)

(assert (=> b!5935729 (= e!3632455 (and tp!1651308 tp!1651307))))

(declare-fun b!5935727 () Bool)

(declare-fun tp!1651311 () Bool)

(declare-fun tp!1651309 () Bool)

(assert (=> b!5935727 (= e!3632455 (and tp!1651311 tp!1651309))))

(assert (= (and b!5935302 ((_ is ElementMatch!15981) (regTwo!32475 (regOne!32475 r!7292)))) b!5935726))

(assert (= (and b!5935302 ((_ is Concat!24826) (regTwo!32475 (regOne!32475 r!7292)))) b!5935727))

(assert (= (and b!5935302 ((_ is Star!15981) (regTwo!32475 (regOne!32475 r!7292)))) b!5935728))

(assert (= (and b!5935302 ((_ is Union!15981) (regTwo!32475 (regOne!32475 r!7292)))) b!5935729))

(declare-fun e!3632456 () Bool)

(assert (=> b!5935315 (= tp!1651240 e!3632456)))

(declare-fun b!5935730 () Bool)

(assert (=> b!5935730 (= e!3632456 tp_is_empty!41215)))

(declare-fun b!5935732 () Bool)

(declare-fun tp!1651315 () Bool)

(assert (=> b!5935732 (= e!3632456 tp!1651315)))

(declare-fun b!5935733 () Bool)

(declare-fun tp!1651313 () Bool)

(declare-fun tp!1651312 () Bool)

(assert (=> b!5935733 (= e!3632456 (and tp!1651313 tp!1651312))))

(declare-fun b!5935731 () Bool)

(declare-fun tp!1651316 () Bool)

(declare-fun tp!1651314 () Bool)

(assert (=> b!5935731 (= e!3632456 (and tp!1651316 tp!1651314))))

(assert (= (and b!5935315 ((_ is ElementMatch!15981) (regOne!32475 (regOne!32474 r!7292)))) b!5935730))

(assert (= (and b!5935315 ((_ is Concat!24826) (regOne!32475 (regOne!32474 r!7292)))) b!5935731))

(assert (= (and b!5935315 ((_ is Star!15981) (regOne!32475 (regOne!32474 r!7292)))) b!5935732))

(assert (= (and b!5935315 ((_ is Union!15981) (regOne!32475 (regOne!32474 r!7292)))) b!5935733))

(declare-fun e!3632457 () Bool)

(assert (=> b!5935315 (= tp!1651239 e!3632457)))

(declare-fun b!5935734 () Bool)

(assert (=> b!5935734 (= e!3632457 tp_is_empty!41215)))

(declare-fun b!5935736 () Bool)

(declare-fun tp!1651320 () Bool)

(assert (=> b!5935736 (= e!3632457 tp!1651320)))

(declare-fun b!5935737 () Bool)

(declare-fun tp!1651318 () Bool)

(declare-fun tp!1651317 () Bool)

(assert (=> b!5935737 (= e!3632457 (and tp!1651318 tp!1651317))))

(declare-fun b!5935735 () Bool)

(declare-fun tp!1651321 () Bool)

(declare-fun tp!1651319 () Bool)

(assert (=> b!5935735 (= e!3632457 (and tp!1651321 tp!1651319))))

(assert (= (and b!5935315 ((_ is ElementMatch!15981) (regTwo!32475 (regOne!32474 r!7292)))) b!5935734))

(assert (= (and b!5935315 ((_ is Concat!24826) (regTwo!32475 (regOne!32474 r!7292)))) b!5935735))

(assert (= (and b!5935315 ((_ is Star!15981) (regTwo!32475 (regOne!32474 r!7292)))) b!5935736))

(assert (= (and b!5935315 ((_ is Union!15981) (regTwo!32475 (regOne!32474 r!7292)))) b!5935737))

(declare-fun e!3632458 () Bool)

(assert (=> b!5935317 (= tp!1651248 e!3632458)))

(declare-fun b!5935738 () Bool)

(assert (=> b!5935738 (= e!3632458 tp_is_empty!41215)))

(declare-fun b!5935740 () Bool)

(declare-fun tp!1651325 () Bool)

(assert (=> b!5935740 (= e!3632458 tp!1651325)))

(declare-fun b!5935741 () Bool)

(declare-fun tp!1651323 () Bool)

(declare-fun tp!1651322 () Bool)

(assert (=> b!5935741 (= e!3632458 (and tp!1651323 tp!1651322))))

(declare-fun b!5935739 () Bool)

(declare-fun tp!1651326 () Bool)

(declare-fun tp!1651324 () Bool)

(assert (=> b!5935739 (= e!3632458 (and tp!1651326 tp!1651324))))

(assert (= (and b!5935317 ((_ is ElementMatch!15981) (regOne!32474 (regTwo!32474 r!7292)))) b!5935738))

(assert (= (and b!5935317 ((_ is Concat!24826) (regOne!32474 (regTwo!32474 r!7292)))) b!5935739))

(assert (= (and b!5935317 ((_ is Star!15981) (regOne!32474 (regTwo!32474 r!7292)))) b!5935740))

(assert (= (and b!5935317 ((_ is Union!15981) (regOne!32474 (regTwo!32474 r!7292)))) b!5935741))

(declare-fun e!3632459 () Bool)

(assert (=> b!5935317 (= tp!1651246 e!3632459)))

(declare-fun b!5935742 () Bool)

(assert (=> b!5935742 (= e!3632459 tp_is_empty!41215)))

(declare-fun b!5935744 () Bool)

(declare-fun tp!1651330 () Bool)

(assert (=> b!5935744 (= e!3632459 tp!1651330)))

(declare-fun b!5935745 () Bool)

(declare-fun tp!1651328 () Bool)

(declare-fun tp!1651327 () Bool)

(assert (=> b!5935745 (= e!3632459 (and tp!1651328 tp!1651327))))

(declare-fun b!5935743 () Bool)

(declare-fun tp!1651331 () Bool)

(declare-fun tp!1651329 () Bool)

(assert (=> b!5935743 (= e!3632459 (and tp!1651331 tp!1651329))))

(assert (= (and b!5935317 ((_ is ElementMatch!15981) (regTwo!32474 (regTwo!32474 r!7292)))) b!5935742))

(assert (= (and b!5935317 ((_ is Concat!24826) (regTwo!32474 (regTwo!32474 r!7292)))) b!5935743))

(assert (= (and b!5935317 ((_ is Star!15981) (regTwo!32474 (regTwo!32474 r!7292)))) b!5935744))

(assert (= (and b!5935317 ((_ is Union!15981) (regTwo!32474 (regTwo!32474 r!7292)))) b!5935745))

(declare-fun e!3632460 () Bool)

(assert (=> b!5935318 (= tp!1651247 e!3632460)))

(declare-fun b!5935746 () Bool)

(assert (=> b!5935746 (= e!3632460 tp_is_empty!41215)))

(declare-fun b!5935748 () Bool)

(declare-fun tp!1651335 () Bool)

(assert (=> b!5935748 (= e!3632460 tp!1651335)))

(declare-fun b!5935749 () Bool)

(declare-fun tp!1651333 () Bool)

(declare-fun tp!1651332 () Bool)

(assert (=> b!5935749 (= e!3632460 (and tp!1651333 tp!1651332))))

(declare-fun b!5935747 () Bool)

(declare-fun tp!1651336 () Bool)

(declare-fun tp!1651334 () Bool)

(assert (=> b!5935747 (= e!3632460 (and tp!1651336 tp!1651334))))

(assert (= (and b!5935318 ((_ is ElementMatch!15981) (reg!16310 (regTwo!32474 r!7292)))) b!5935746))

(assert (= (and b!5935318 ((_ is Concat!24826) (reg!16310 (regTwo!32474 r!7292)))) b!5935747))

(assert (= (and b!5935318 ((_ is Star!15981) (reg!16310 (regTwo!32474 r!7292)))) b!5935748))

(assert (= (and b!5935318 ((_ is Union!15981) (reg!16310 (regTwo!32474 r!7292)))) b!5935749))

(declare-fun e!3632461 () Bool)

(assert (=> b!5935319 (= tp!1651245 e!3632461)))

(declare-fun b!5935750 () Bool)

(assert (=> b!5935750 (= e!3632461 tp_is_empty!41215)))

(declare-fun b!5935752 () Bool)

(declare-fun tp!1651340 () Bool)

(assert (=> b!5935752 (= e!3632461 tp!1651340)))

(declare-fun b!5935753 () Bool)

(declare-fun tp!1651338 () Bool)

(declare-fun tp!1651337 () Bool)

(assert (=> b!5935753 (= e!3632461 (and tp!1651338 tp!1651337))))

(declare-fun b!5935751 () Bool)

(declare-fun tp!1651341 () Bool)

(declare-fun tp!1651339 () Bool)

(assert (=> b!5935751 (= e!3632461 (and tp!1651341 tp!1651339))))

(assert (= (and b!5935319 ((_ is ElementMatch!15981) (regOne!32475 (regTwo!32474 r!7292)))) b!5935750))

(assert (= (and b!5935319 ((_ is Concat!24826) (regOne!32475 (regTwo!32474 r!7292)))) b!5935751))

(assert (= (and b!5935319 ((_ is Star!15981) (regOne!32475 (regTwo!32474 r!7292)))) b!5935752))

(assert (= (and b!5935319 ((_ is Union!15981) (regOne!32475 (regTwo!32474 r!7292)))) b!5935753))

(declare-fun e!3632462 () Bool)

(assert (=> b!5935319 (= tp!1651244 e!3632462)))

(declare-fun b!5935754 () Bool)

(assert (=> b!5935754 (= e!3632462 tp_is_empty!41215)))

(declare-fun b!5935756 () Bool)

(declare-fun tp!1651345 () Bool)

(assert (=> b!5935756 (= e!3632462 tp!1651345)))

(declare-fun b!5935757 () Bool)

(declare-fun tp!1651343 () Bool)

(declare-fun tp!1651342 () Bool)

(assert (=> b!5935757 (= e!3632462 (and tp!1651343 tp!1651342))))

(declare-fun b!5935755 () Bool)

(declare-fun tp!1651346 () Bool)

(declare-fun tp!1651344 () Bool)

(assert (=> b!5935755 (= e!3632462 (and tp!1651346 tp!1651344))))

(assert (= (and b!5935319 ((_ is ElementMatch!15981) (regTwo!32475 (regTwo!32474 r!7292)))) b!5935754))

(assert (= (and b!5935319 ((_ is Concat!24826) (regTwo!32475 (regTwo!32474 r!7292)))) b!5935755))

(assert (= (and b!5935319 ((_ is Star!15981) (regTwo!32475 (regTwo!32474 r!7292)))) b!5935756))

(assert (= (and b!5935319 ((_ is Union!15981) (regTwo!32475 (regTwo!32474 r!7292)))) b!5935757))

(declare-fun b!5935758 () Bool)

(declare-fun e!3632463 () Bool)

(declare-fun tp!1651347 () Bool)

(assert (=> b!5935758 (= e!3632463 (and tp_is_empty!41215 tp!1651347))))

(assert (=> b!5935328 (= tp!1651256 e!3632463)))

(assert (= (and b!5935328 ((_ is Cons!64120) (t!377645 (t!377645 s!2326)))) b!5935758))

(declare-fun e!3632464 () Bool)

(assert (=> b!5935305 (= tp!1651231 e!3632464)))

(declare-fun b!5935759 () Bool)

(assert (=> b!5935759 (= e!3632464 tp_is_empty!41215)))

(declare-fun b!5935761 () Bool)

(declare-fun tp!1651351 () Bool)

(assert (=> b!5935761 (= e!3632464 tp!1651351)))

(declare-fun b!5935762 () Bool)

(declare-fun tp!1651349 () Bool)

(declare-fun tp!1651348 () Bool)

(assert (=> b!5935762 (= e!3632464 (and tp!1651349 tp!1651348))))

(declare-fun b!5935760 () Bool)

(declare-fun tp!1651352 () Bool)

(declare-fun tp!1651350 () Bool)

(assert (=> b!5935760 (= e!3632464 (and tp!1651352 tp!1651350))))

(assert (= (and b!5935305 ((_ is ElementMatch!15981) (reg!16310 (regTwo!32475 r!7292)))) b!5935759))

(assert (= (and b!5935305 ((_ is Concat!24826) (reg!16310 (regTwo!32475 r!7292)))) b!5935760))

(assert (= (and b!5935305 ((_ is Star!15981) (reg!16310 (regTwo!32475 r!7292)))) b!5935761))

(assert (= (and b!5935305 ((_ is Union!15981) (reg!16310 (regTwo!32475 r!7292)))) b!5935762))

(declare-fun b!5935763 () Bool)

(declare-fun e!3632465 () Bool)

(declare-fun tp!1651353 () Bool)

(declare-fun tp!1651354 () Bool)

(assert (=> b!5935763 (= e!3632465 (and tp!1651353 tp!1651354))))

(assert (=> b!5935341 (= tp!1651267 e!3632465)))

(assert (= (and b!5935341 ((_ is Cons!64118) (exprs!5865 setElem!40296))) b!5935763))

(declare-fun e!3632466 () Bool)

(assert (=> b!5935306 (= tp!1651229 e!3632466)))

(declare-fun b!5935764 () Bool)

(assert (=> b!5935764 (= e!3632466 tp_is_empty!41215)))

(declare-fun b!5935766 () Bool)

(declare-fun tp!1651358 () Bool)

(assert (=> b!5935766 (= e!3632466 tp!1651358)))

(declare-fun b!5935767 () Bool)

(declare-fun tp!1651356 () Bool)

(declare-fun tp!1651355 () Bool)

(assert (=> b!5935767 (= e!3632466 (and tp!1651356 tp!1651355))))

(declare-fun b!5935765 () Bool)

(declare-fun tp!1651359 () Bool)

(declare-fun tp!1651357 () Bool)

(assert (=> b!5935765 (= e!3632466 (and tp!1651359 tp!1651357))))

(assert (= (and b!5935306 ((_ is ElementMatch!15981) (regOne!32475 (regTwo!32475 r!7292)))) b!5935764))

(assert (= (and b!5935306 ((_ is Concat!24826) (regOne!32475 (regTwo!32475 r!7292)))) b!5935765))

(assert (= (and b!5935306 ((_ is Star!15981) (regOne!32475 (regTwo!32475 r!7292)))) b!5935766))

(assert (= (and b!5935306 ((_ is Union!15981) (regOne!32475 (regTwo!32475 r!7292)))) b!5935767))

(declare-fun e!3632467 () Bool)

(assert (=> b!5935306 (= tp!1651228 e!3632467)))

(declare-fun b!5935768 () Bool)

(assert (=> b!5935768 (= e!3632467 tp_is_empty!41215)))

(declare-fun b!5935770 () Bool)

(declare-fun tp!1651363 () Bool)

(assert (=> b!5935770 (= e!3632467 tp!1651363)))

(declare-fun b!5935771 () Bool)

(declare-fun tp!1651361 () Bool)

(declare-fun tp!1651360 () Bool)

(assert (=> b!5935771 (= e!3632467 (and tp!1651361 tp!1651360))))

(declare-fun b!5935769 () Bool)

(declare-fun tp!1651364 () Bool)

(declare-fun tp!1651362 () Bool)

(assert (=> b!5935769 (= e!3632467 (and tp!1651364 tp!1651362))))

(assert (= (and b!5935306 ((_ is ElementMatch!15981) (regTwo!32475 (regTwo!32475 r!7292)))) b!5935768))

(assert (= (and b!5935306 ((_ is Concat!24826) (regTwo!32475 (regTwo!32475 r!7292)))) b!5935769))

(assert (= (and b!5935306 ((_ is Star!15981) (regTwo!32475 (regTwo!32475 r!7292)))) b!5935770))

(assert (= (and b!5935306 ((_ is Union!15981) (regTwo!32475 (regTwo!32475 r!7292)))) b!5935771))

(declare-fun b!5935773 () Bool)

(declare-fun e!3632469 () Bool)

(declare-fun tp!1651365 () Bool)

(assert (=> b!5935773 (= e!3632469 tp!1651365)))

(declare-fun b!5935772 () Bool)

(declare-fun e!3632468 () Bool)

(declare-fun tp!1651366 () Bool)

(assert (=> b!5935772 (= e!3632468 (and (inv!83199 (h!70567 (t!377644 (t!377644 zl!343)))) e!3632469 tp!1651366))))

(assert (=> b!5935335 (= tp!1651262 e!3632468)))

(assert (= b!5935772 b!5935773))

(assert (= (and b!5935335 ((_ is Cons!64119) (t!377644 (t!377644 zl!343)))) b!5935772))

(declare-fun m!6826650 () Bool)

(assert (=> b!5935772 m!6826650))

(declare-fun e!3632470 () Bool)

(assert (=> b!5935311 (= tp!1651237 e!3632470)))

(declare-fun b!5935774 () Bool)

(assert (=> b!5935774 (= e!3632470 tp_is_empty!41215)))

(declare-fun b!5935776 () Bool)

(declare-fun tp!1651370 () Bool)

(assert (=> b!5935776 (= e!3632470 tp!1651370)))

(declare-fun b!5935777 () Bool)

(declare-fun tp!1651368 () Bool)

(declare-fun tp!1651367 () Bool)

(assert (=> b!5935777 (= e!3632470 (and tp!1651368 tp!1651367))))

(declare-fun b!5935775 () Bool)

(declare-fun tp!1651371 () Bool)

(declare-fun tp!1651369 () Bool)

(assert (=> b!5935775 (= e!3632470 (and tp!1651371 tp!1651369))))

(assert (= (and b!5935311 ((_ is ElementMatch!15981) (h!70566 (exprs!5865 setElem!40290)))) b!5935774))

(assert (= (and b!5935311 ((_ is Concat!24826) (h!70566 (exprs!5865 setElem!40290)))) b!5935775))

(assert (= (and b!5935311 ((_ is Star!15981) (h!70566 (exprs!5865 setElem!40290)))) b!5935776))

(assert (= (and b!5935311 ((_ is Union!15981) (h!70566 (exprs!5865 setElem!40290)))) b!5935777))

(declare-fun b!5935778 () Bool)

(declare-fun e!3632471 () Bool)

(declare-fun tp!1651372 () Bool)

(declare-fun tp!1651373 () Bool)

(assert (=> b!5935778 (= e!3632471 (and tp!1651372 tp!1651373))))

(assert (=> b!5935311 (= tp!1651238 e!3632471)))

(assert (= (and b!5935311 ((_ is Cons!64118) (t!377643 (exprs!5865 setElem!40290)))) b!5935778))

(declare-fun e!3632472 () Bool)

(assert (=> b!5935304 (= tp!1651232 e!3632472)))

(declare-fun b!5935779 () Bool)

(assert (=> b!5935779 (= e!3632472 tp_is_empty!41215)))

(declare-fun b!5935781 () Bool)

(declare-fun tp!1651377 () Bool)

(assert (=> b!5935781 (= e!3632472 tp!1651377)))

(declare-fun b!5935782 () Bool)

(declare-fun tp!1651375 () Bool)

(declare-fun tp!1651374 () Bool)

(assert (=> b!5935782 (= e!3632472 (and tp!1651375 tp!1651374))))

(declare-fun b!5935780 () Bool)

(declare-fun tp!1651378 () Bool)

(declare-fun tp!1651376 () Bool)

(assert (=> b!5935780 (= e!3632472 (and tp!1651378 tp!1651376))))

(assert (= (and b!5935304 ((_ is ElementMatch!15981) (regOne!32474 (regTwo!32475 r!7292)))) b!5935779))

(assert (= (and b!5935304 ((_ is Concat!24826) (regOne!32474 (regTwo!32475 r!7292)))) b!5935780))

(assert (= (and b!5935304 ((_ is Star!15981) (regOne!32474 (regTwo!32475 r!7292)))) b!5935781))

(assert (= (and b!5935304 ((_ is Union!15981) (regOne!32474 (regTwo!32475 r!7292)))) b!5935782))

(declare-fun e!3632473 () Bool)

(assert (=> b!5935304 (= tp!1651230 e!3632473)))

(declare-fun b!5935783 () Bool)

(assert (=> b!5935783 (= e!3632473 tp_is_empty!41215)))

(declare-fun b!5935785 () Bool)

(declare-fun tp!1651382 () Bool)

(assert (=> b!5935785 (= e!3632473 tp!1651382)))

(declare-fun b!5935786 () Bool)

(declare-fun tp!1651380 () Bool)

(declare-fun tp!1651379 () Bool)

(assert (=> b!5935786 (= e!3632473 (and tp!1651380 tp!1651379))))

(declare-fun b!5935784 () Bool)

(declare-fun tp!1651383 () Bool)

(declare-fun tp!1651381 () Bool)

(assert (=> b!5935784 (= e!3632473 (and tp!1651383 tp!1651381))))

(assert (= (and b!5935304 ((_ is ElementMatch!15981) (regTwo!32474 (regTwo!32475 r!7292)))) b!5935783))

(assert (= (and b!5935304 ((_ is Concat!24826) (regTwo!32474 (regTwo!32475 r!7292)))) b!5935784))

(assert (= (and b!5935304 ((_ is Star!15981) (regTwo!32474 (regTwo!32475 r!7292)))) b!5935785))

(assert (= (and b!5935304 ((_ is Union!15981) (regTwo!32474 (regTwo!32475 r!7292)))) b!5935786))

(declare-fun condSetEmpty!40302 () Bool)

(assert (=> setNonEmpty!40296 (= condSetEmpty!40302 (= setRest!40296 ((as const (Array Context!10730 Bool)) false)))))

(declare-fun setRes!40302 () Bool)

(assert (=> setNonEmpty!40296 (= tp!1651268 setRes!40302)))

(declare-fun setIsEmpty!40302 () Bool)

(assert (=> setIsEmpty!40302 setRes!40302))

(declare-fun tp!1651385 () Bool)

(declare-fun setElem!40302 () Context!10730)

(declare-fun e!3632474 () Bool)

(declare-fun setNonEmpty!40302 () Bool)

(assert (=> setNonEmpty!40302 (= setRes!40302 (and tp!1651385 (inv!83199 setElem!40302) e!3632474))))

(declare-fun setRest!40302 () (InoxSet Context!10730))

(assert (=> setNonEmpty!40302 (= setRest!40296 ((_ map or) (store ((as const (Array Context!10730 Bool)) false) setElem!40302 true) setRest!40302))))

(declare-fun b!5935787 () Bool)

(declare-fun tp!1651384 () Bool)

(assert (=> b!5935787 (= e!3632474 tp!1651384)))

(assert (= (and setNonEmpty!40296 condSetEmpty!40302) setIsEmpty!40302))

(assert (= (and setNonEmpty!40296 (not condSetEmpty!40302)) setNonEmpty!40302))

(assert (= setNonEmpty!40302 b!5935787))

(declare-fun m!6826652 () Bool)

(assert (=> setNonEmpty!40302 m!6826652))

(declare-fun e!3632475 () Bool)

(assert (=> b!5935322 (= tp!1651252 e!3632475)))

(declare-fun b!5935788 () Bool)

(assert (=> b!5935788 (= e!3632475 tp_is_empty!41215)))

(declare-fun b!5935790 () Bool)

(declare-fun tp!1651389 () Bool)

(assert (=> b!5935790 (= e!3632475 tp!1651389)))

(declare-fun b!5935791 () Bool)

(declare-fun tp!1651387 () Bool)

(declare-fun tp!1651386 () Bool)

(assert (=> b!5935791 (= e!3632475 (and tp!1651387 tp!1651386))))

(declare-fun b!5935789 () Bool)

(declare-fun tp!1651390 () Bool)

(declare-fun tp!1651388 () Bool)

(assert (=> b!5935789 (= e!3632475 (and tp!1651390 tp!1651388))))

(assert (= (and b!5935322 ((_ is ElementMatch!15981) (reg!16310 (reg!16310 r!7292)))) b!5935788))

(assert (= (and b!5935322 ((_ is Concat!24826) (reg!16310 (reg!16310 r!7292)))) b!5935789))

(assert (= (and b!5935322 ((_ is Star!15981) (reg!16310 (reg!16310 r!7292)))) b!5935790))

(assert (= (and b!5935322 ((_ is Union!15981) (reg!16310 (reg!16310 r!7292)))) b!5935791))

(declare-fun e!3632476 () Bool)

(assert (=> b!5935313 (= tp!1651243 e!3632476)))

(declare-fun b!5935792 () Bool)

(assert (=> b!5935792 (= e!3632476 tp_is_empty!41215)))

(declare-fun b!5935794 () Bool)

(declare-fun tp!1651394 () Bool)

(assert (=> b!5935794 (= e!3632476 tp!1651394)))

(declare-fun b!5935795 () Bool)

(declare-fun tp!1651392 () Bool)

(declare-fun tp!1651391 () Bool)

(assert (=> b!5935795 (= e!3632476 (and tp!1651392 tp!1651391))))

(declare-fun b!5935793 () Bool)

(declare-fun tp!1651395 () Bool)

(declare-fun tp!1651393 () Bool)

(assert (=> b!5935793 (= e!3632476 (and tp!1651395 tp!1651393))))

(assert (= (and b!5935313 ((_ is ElementMatch!15981) (regOne!32474 (regOne!32474 r!7292)))) b!5935792))

(assert (= (and b!5935313 ((_ is Concat!24826) (regOne!32474 (regOne!32474 r!7292)))) b!5935793))

(assert (= (and b!5935313 ((_ is Star!15981) (regOne!32474 (regOne!32474 r!7292)))) b!5935794))

(assert (= (and b!5935313 ((_ is Union!15981) (regOne!32474 (regOne!32474 r!7292)))) b!5935795))

(declare-fun e!3632477 () Bool)

(assert (=> b!5935313 (= tp!1651241 e!3632477)))

(declare-fun b!5935796 () Bool)

(assert (=> b!5935796 (= e!3632477 tp_is_empty!41215)))

(declare-fun b!5935798 () Bool)

(declare-fun tp!1651399 () Bool)

(assert (=> b!5935798 (= e!3632477 tp!1651399)))

(declare-fun b!5935799 () Bool)

(declare-fun tp!1651397 () Bool)

(declare-fun tp!1651396 () Bool)

(assert (=> b!5935799 (= e!3632477 (and tp!1651397 tp!1651396))))

(declare-fun b!5935797 () Bool)

(declare-fun tp!1651400 () Bool)

(declare-fun tp!1651398 () Bool)

(assert (=> b!5935797 (= e!3632477 (and tp!1651400 tp!1651398))))

(assert (= (and b!5935313 ((_ is ElementMatch!15981) (regTwo!32474 (regOne!32474 r!7292)))) b!5935796))

(assert (= (and b!5935313 ((_ is Concat!24826) (regTwo!32474 (regOne!32474 r!7292)))) b!5935797))

(assert (= (and b!5935313 ((_ is Star!15981) (regTwo!32474 (regOne!32474 r!7292)))) b!5935798))

(assert (= (and b!5935313 ((_ is Union!15981) (regTwo!32474 (regOne!32474 r!7292)))) b!5935799))

(declare-fun e!3632478 () Bool)

(assert (=> b!5935323 (= tp!1651250 e!3632478)))

(declare-fun b!5935800 () Bool)

(assert (=> b!5935800 (= e!3632478 tp_is_empty!41215)))

(declare-fun b!5935802 () Bool)

(declare-fun tp!1651404 () Bool)

(assert (=> b!5935802 (= e!3632478 tp!1651404)))

(declare-fun b!5935803 () Bool)

(declare-fun tp!1651402 () Bool)

(declare-fun tp!1651401 () Bool)

(assert (=> b!5935803 (= e!3632478 (and tp!1651402 tp!1651401))))

(declare-fun b!5935801 () Bool)

(declare-fun tp!1651405 () Bool)

(declare-fun tp!1651403 () Bool)

(assert (=> b!5935801 (= e!3632478 (and tp!1651405 tp!1651403))))

(assert (= (and b!5935323 ((_ is ElementMatch!15981) (regOne!32475 (reg!16310 r!7292)))) b!5935800))

(assert (= (and b!5935323 ((_ is Concat!24826) (regOne!32475 (reg!16310 r!7292)))) b!5935801))

(assert (= (and b!5935323 ((_ is Star!15981) (regOne!32475 (reg!16310 r!7292)))) b!5935802))

(assert (= (and b!5935323 ((_ is Union!15981) (regOne!32475 (reg!16310 r!7292)))) b!5935803))

(declare-fun e!3632479 () Bool)

(assert (=> b!5935323 (= tp!1651249 e!3632479)))

(declare-fun b!5935804 () Bool)

(assert (=> b!5935804 (= e!3632479 tp_is_empty!41215)))

(declare-fun b!5935806 () Bool)

(declare-fun tp!1651409 () Bool)

(assert (=> b!5935806 (= e!3632479 tp!1651409)))

(declare-fun b!5935807 () Bool)

(declare-fun tp!1651407 () Bool)

(declare-fun tp!1651406 () Bool)

(assert (=> b!5935807 (= e!3632479 (and tp!1651407 tp!1651406))))

(declare-fun b!5935805 () Bool)

(declare-fun tp!1651410 () Bool)

(declare-fun tp!1651408 () Bool)

(assert (=> b!5935805 (= e!3632479 (and tp!1651410 tp!1651408))))

(assert (= (and b!5935323 ((_ is ElementMatch!15981) (regTwo!32475 (reg!16310 r!7292)))) b!5935804))

(assert (= (and b!5935323 ((_ is Concat!24826) (regTwo!32475 (reg!16310 r!7292)))) b!5935805))

(assert (= (and b!5935323 ((_ is Star!15981) (regTwo!32475 (reg!16310 r!7292)))) b!5935806))

(assert (= (and b!5935323 ((_ is Union!15981) (regTwo!32475 (reg!16310 r!7292)))) b!5935807))

(declare-fun e!3632480 () Bool)

(assert (=> b!5935314 (= tp!1651242 e!3632480)))

(declare-fun b!5935808 () Bool)

(assert (=> b!5935808 (= e!3632480 tp_is_empty!41215)))

(declare-fun b!5935810 () Bool)

(declare-fun tp!1651414 () Bool)

(assert (=> b!5935810 (= e!3632480 tp!1651414)))

(declare-fun b!5935811 () Bool)

(declare-fun tp!1651412 () Bool)

(declare-fun tp!1651411 () Bool)

(assert (=> b!5935811 (= e!3632480 (and tp!1651412 tp!1651411))))

(declare-fun b!5935809 () Bool)

(declare-fun tp!1651415 () Bool)

(declare-fun tp!1651413 () Bool)

(assert (=> b!5935809 (= e!3632480 (and tp!1651415 tp!1651413))))

(assert (= (and b!5935314 ((_ is ElementMatch!15981) (reg!16310 (regOne!32474 r!7292)))) b!5935808))

(assert (= (and b!5935314 ((_ is Concat!24826) (reg!16310 (regOne!32474 r!7292)))) b!5935809))

(assert (= (and b!5935314 ((_ is Star!15981) (reg!16310 (regOne!32474 r!7292)))) b!5935810))

(assert (= (and b!5935314 ((_ is Union!15981) (reg!16310 (regOne!32474 r!7292)))) b!5935811))

(declare-fun e!3632481 () Bool)

(assert (=> b!5935342 (= tp!1651269 e!3632481)))

(declare-fun b!5935812 () Bool)

(assert (=> b!5935812 (= e!3632481 tp_is_empty!41215)))

(declare-fun b!5935814 () Bool)

(declare-fun tp!1651419 () Bool)

(assert (=> b!5935814 (= e!3632481 tp!1651419)))

(declare-fun b!5935815 () Bool)

(declare-fun tp!1651417 () Bool)

(declare-fun tp!1651416 () Bool)

(assert (=> b!5935815 (= e!3632481 (and tp!1651417 tp!1651416))))

(declare-fun b!5935813 () Bool)

(declare-fun tp!1651420 () Bool)

(declare-fun tp!1651418 () Bool)

(assert (=> b!5935813 (= e!3632481 (and tp!1651420 tp!1651418))))

(assert (= (and b!5935342 ((_ is ElementMatch!15981) (h!70566 (exprs!5865 (h!70567 zl!343))))) b!5935812))

(assert (= (and b!5935342 ((_ is Concat!24826) (h!70566 (exprs!5865 (h!70567 zl!343))))) b!5935813))

(assert (= (and b!5935342 ((_ is Star!15981) (h!70566 (exprs!5865 (h!70567 zl!343))))) b!5935814))

(assert (= (and b!5935342 ((_ is Union!15981) (h!70566 (exprs!5865 (h!70567 zl!343))))) b!5935815))

(declare-fun b!5935816 () Bool)

(declare-fun e!3632482 () Bool)

(declare-fun tp!1651421 () Bool)

(declare-fun tp!1651422 () Bool)

(assert (=> b!5935816 (= e!3632482 (and tp!1651421 tp!1651422))))

(assert (=> b!5935342 (= tp!1651270 e!3632482)))

(assert (= (and b!5935342 ((_ is Cons!64118) (t!377643 (exprs!5865 (h!70567 zl!343))))) b!5935816))

(declare-fun b!5935817 () Bool)

(declare-fun e!3632483 () Bool)

(declare-fun tp!1651423 () Bool)

(declare-fun tp!1651424 () Bool)

(assert (=> b!5935817 (= e!3632483 (and tp!1651423 tp!1651424))))

(assert (=> b!5935336 (= tp!1651261 e!3632483)))

(assert (= (and b!5935336 ((_ is Cons!64118) (exprs!5865 (h!70567 (t!377644 zl!343))))) b!5935817))

(declare-fun e!3632484 () Bool)

(assert (=> b!5935321 (= tp!1651253 e!3632484)))

(declare-fun b!5935818 () Bool)

(assert (=> b!5935818 (= e!3632484 tp_is_empty!41215)))

(declare-fun b!5935820 () Bool)

(declare-fun tp!1651428 () Bool)

(assert (=> b!5935820 (= e!3632484 tp!1651428)))

(declare-fun b!5935821 () Bool)

(declare-fun tp!1651426 () Bool)

(declare-fun tp!1651425 () Bool)

(assert (=> b!5935821 (= e!3632484 (and tp!1651426 tp!1651425))))

(declare-fun b!5935819 () Bool)

(declare-fun tp!1651429 () Bool)

(declare-fun tp!1651427 () Bool)

(assert (=> b!5935819 (= e!3632484 (and tp!1651429 tp!1651427))))

(assert (= (and b!5935321 ((_ is ElementMatch!15981) (regOne!32474 (reg!16310 r!7292)))) b!5935818))

(assert (= (and b!5935321 ((_ is Concat!24826) (regOne!32474 (reg!16310 r!7292)))) b!5935819))

(assert (= (and b!5935321 ((_ is Star!15981) (regOne!32474 (reg!16310 r!7292)))) b!5935820))

(assert (= (and b!5935321 ((_ is Union!15981) (regOne!32474 (reg!16310 r!7292)))) b!5935821))

(declare-fun e!3632485 () Bool)

(assert (=> b!5935321 (= tp!1651251 e!3632485)))

(declare-fun b!5935822 () Bool)

(assert (=> b!5935822 (= e!3632485 tp_is_empty!41215)))

(declare-fun b!5935824 () Bool)

(declare-fun tp!1651433 () Bool)

(assert (=> b!5935824 (= e!3632485 tp!1651433)))

(declare-fun b!5935825 () Bool)

(declare-fun tp!1651431 () Bool)

(declare-fun tp!1651430 () Bool)

(assert (=> b!5935825 (= e!3632485 (and tp!1651431 tp!1651430))))

(declare-fun b!5935823 () Bool)

(declare-fun tp!1651434 () Bool)

(declare-fun tp!1651432 () Bool)

(assert (=> b!5935823 (= e!3632485 (and tp!1651434 tp!1651432))))

(assert (= (and b!5935321 ((_ is ElementMatch!15981) (regTwo!32474 (reg!16310 r!7292)))) b!5935822))

(assert (= (and b!5935321 ((_ is Concat!24826) (regTwo!32474 (reg!16310 r!7292)))) b!5935823))

(assert (= (and b!5935321 ((_ is Star!15981) (regTwo!32474 (reg!16310 r!7292)))) b!5935824))

(assert (= (and b!5935321 ((_ is Union!15981) (regTwo!32474 (reg!16310 r!7292)))) b!5935825))

(declare-fun b_lambda!222935 () Bool)

(assert (= b_lambda!222925 (or d!1860546 b_lambda!222935)))

(declare-fun bs!1404165 () Bool)

(declare-fun d!1860756 () Bool)

(assert (= bs!1404165 (and d!1860756 d!1860546)))

(assert (=> bs!1404165 (= (dynLambda!25077 lambda!323689 (h!70566 (exprs!5865 setElem!40290))) (validRegex!7717 (h!70566 (exprs!5865 setElem!40290))))))

(declare-fun m!6826654 () Bool)

(assert (=> bs!1404165 m!6826654))

(assert (=> b!5935573 d!1860756))

(declare-fun b_lambda!222937 () Bool)

(assert (= b_lambda!222927 (or b!5934641 b_lambda!222937)))

(assert (=> d!1860710 d!1860576))

(declare-fun b_lambda!222939 () Bool)

(assert (= b_lambda!222917 (or d!1860572 b_lambda!222939)))

(declare-fun bs!1404166 () Bool)

(declare-fun d!1860758 () Bool)

(assert (= bs!1404166 (and d!1860758 d!1860572)))

(assert (=> bs!1404166 (= (dynLambda!25077 lambda!323697 (h!70566 (unfocusZipperList!1402 zl!343))) (validRegex!7717 (h!70566 (unfocusZipperList!1402 zl!343))))))

(declare-fun m!6826656 () Bool)

(assert (=> bs!1404166 m!6826656))

(assert (=> b!5935380 d!1860758))

(declare-fun b_lambda!222941 () Bool)

(assert (= b_lambda!222919 (or b!5934641 b_lambda!222941)))

(assert (=> d!1860626 d!1860580))

(declare-fun b_lambda!222943 () Bool)

(assert (= b_lambda!222931 (or d!1860574 b_lambda!222943)))

(declare-fun bs!1404167 () Bool)

(declare-fun d!1860760 () Bool)

(assert (= bs!1404167 (and d!1860760 d!1860574)))

(assert (=> bs!1404167 (= (dynLambda!25077 lambda!323700 (h!70566 lt!2311180)) (validRegex!7717 (h!70566 lt!2311180)))))

(declare-fun m!6826658 () Bool)

(assert (=> bs!1404167 m!6826658))

(assert (=> b!5935681 d!1860760))

(declare-fun b_lambda!222945 () Bool)

(assert (= b_lambda!222923 (or d!1860550 b_lambda!222945)))

(declare-fun bs!1404168 () Bool)

(declare-fun d!1860762 () Bool)

(assert (= bs!1404168 (and d!1860762 d!1860550)))

(assert (=> bs!1404168 (= (dynLambda!25077 lambda!323690 (h!70566 (exprs!5865 lt!2311089))) (validRegex!7717 (h!70566 (exprs!5865 lt!2311089))))))

(declare-fun m!6826660 () Bool)

(assert (=> bs!1404168 m!6826660))

(assert (=> b!5935493 d!1860762))

(declare-fun b_lambda!222947 () Bool)

(assert (= b_lambda!222933 (or b!5934641 b_lambda!222947)))

(assert (=> d!1860754 d!1860578))

(declare-fun b_lambda!222949 () Bool)

(assert (= b_lambda!222921 (or d!1860570 b_lambda!222949)))

(declare-fun bs!1404169 () Bool)

(declare-fun d!1860764 () Bool)

(assert (= bs!1404169 (and d!1860764 d!1860570)))

(assert (=> bs!1404169 (= (dynLambda!25077 lambda!323694 (h!70566 (exprs!5865 (h!70567 zl!343)))) (validRegex!7717 (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(declare-fun m!6826662 () Bool)

(assert (=> bs!1404169 m!6826662))

(assert (=> b!5935480 d!1860764))

(declare-fun b_lambda!222951 () Bool)

(assert (= b_lambda!222929 (or d!1860568 b_lambda!222951)))

(declare-fun bs!1404170 () Bool)

(declare-fun d!1860766 () Bool)

(assert (= bs!1404170 (and d!1860766 d!1860568)))

(assert (=> bs!1404170 (= (dynLambda!25077 lambda!323693 (h!70566 (exprs!5865 (h!70567 zl!343)))) (validRegex!7717 (h!70566 (exprs!5865 (h!70567 zl!343)))))))

(assert (=> bs!1404170 m!6826662))

(assert (=> b!5935679 d!1860766))

(check-sat (not b_lambda!222915) (not b!5935813) (not b!5935817) (not b!5935819) (not b!5935427) (not bm!471420) (not b!5935797) (not b!5935526) (not d!1860720) (not b!5935773) (not b!5935798) (not b!5935522) (not b!5935477) (not b!5935417) (not b!5935801) (not bs!1404166) (not b!5935454) (not b!5935354) (not b!5935749) (not b!5935358) (not bm!471462) (not b!5935727) (not b!5935807) (not b!5935469) (not d!1860656) (not b!5935629) (not b!5935824) (not bs!1404168) (not b!5935789) (not b!5935478) (not b!5935766) (not b!5935753) (not bm!471443) (not b!5935785) (not bm!471465) (not bm!471422) (not b!5935468) (not b!5935602) (not b!5935725) (not b!5935747) (not b!5935805) (not b!5935628) (not bm!471429) (not b!5935816) (not b!5935625) (not bs!1404170) (not b!5935711) (not b!5935760) (not b!5935356) (not b!5935728) (not b!5935758) (not b!5935784) (not b!5935765) (not d!1860628) (not b!5935815) (not b!5935434) (not bm!471461) (not b!5935549) (not d!1860754) (not b!5935767) (not b!5935748) (not b!5935724) (not b!5935775) (not bm!471490) (not b!5935823) (not b!5935571) (not bm!471436) (not b!5935551) (not b!5935499) (not b!5935680) (not b!5935709) (not b!5935453) (not b!5935362) (not b!5935450) (not b!5935781) (not b!5935782) (not b!5935731) (not b!5935791) (not d!1860668) (not b!5935394) (not d!1860706) (not d!1860744) (not setNonEmpty!40299) (not bm!471457) (not b_lambda!222951) (not b!5935756) (not b!5935521) (not b!5935762) (not bm!471484) (not bm!471423) (not b!5935451) (not b!5935481) (not b!5935713) (not b!5935723) (not b!5935770) (not bm!471487) (not d!1860618) (not b!5935502) (not b!5935780) (not b!5935587) (not b!5935442) (not bm!471439) (not b_lambda!222945) (not bm!471463) (not b!5935682) (not d!1860670) (not b!5935795) (not d!1860624) (not b!5935745) (not bm!471426) (not b!5935740) (not b!5935814) (not d!1860648) (not b!5935820) (not d!1860634) (not bm!471494) (not bm!471469) (not bm!471440) (not b!5935445) (not d!1860736) (not d!1860594) (not b!5935809) (not b!5935353) (not b!5935712) (not bm!471433) (not d!1860614) (not b!5935741) (not bm!471446) (not b!5935637) (not b!5935443) (not b!5935465) (not b_lambda!222941) (not b!5935464) (not b!5935771) (not b!5935761) (not bm!471425) (not d!1860582) (not bm!471450) (not d!1860652) (not b!5935810) (not bm!471486) (not d!1860632) (not bm!471458) (not b!5935429) (not b!5935751) tp_is_empty!41215 (not d!1860664) (not b!5935811) (not bm!471452) (not b!5935696) (not b!5935627) (not bm!471493) (not b!5935435) (not b!5935790) (not b!5935561) (not bm!471442) (not b!5935763) (not b!5935662) (not d!1860710) (not bm!471481) (not b!5935733) (not bs!1404169) (not b!5935677) (not b!5935605) (not b!5935619) (not b_lambda!222937) (not b!5935692) (not b!5935564) (not bm!471434) (not b!5935359) (not b!5935475) (not b!5935382) (not b!5935757) (not b!5935495) (not b!5935550) (not b!5935739) (not b!5935574) (not b!5935744) (not b!5935471) (not b!5935743) (not b!5935535) (not b!5935685) (not b!5935825) (not bm!471432) (not b!5935776) (not setNonEmpty!40300) (not b!5935821) (not b!5935484) (not bs!1404165) (not b!5935600) (not b!5935426) (not bm!471416) (not d!1860690) (not d!1860662) (not d!1860676) (not b!5935539) (not b_lambda!222935) (not bm!471456) (not b!5935444) (not b!5935717) (not b!5935639) (not b!5935407) (not b!5935357) (not bm!471485) (not b_lambda!222943) (not b!5935806) (not b!5935447) (not b!5935419) (not d!1860718) (not bm!471480) (not b!5935474) (not bm!471418) (not bm!471419) (not b_lambda!222949) (not b!5935769) (not d!1860704) (not d!1860666) (not b_lambda!222939) (not b!5935365) (not d!1860734) (not b!5935799) (not b_lambda!222911) (not b!5935559) (not b!5935360) (not b!5935737) (not b!5935755) (not b!5935418) (not b!5935363) (not b!5935793) (not bm!471455) (not b!5935636) (not b!5935579) (not b!5935449) (not b!5935403) (not d!1860642) (not b!5935729) (not b!5935620) (not b!5935346) (not b!5935518) (not b!5935803) (not bs!1404167) (not b!5935599) (not bm!471468) (not b_lambda!222913) (not b!5935381) (not d!1860698) (not setNonEmpty!40302) (not d!1860746) (not b!5935374) (not d!1860636) (not b!5935345) (not b!5935794) (not b!5935732) (not b!5935735) (not bm!471488) (not bm!471470) (not b!5935752) (not b!5935721) (not b!5935386) (not d!1860630) (not b!5935716) (not b!5935720) (not b!5935558) (not b!5935494) (not b!5935736) (not bm!471460) (not b!5935473) (not b!5935802) (not b!5935786) (not b!5935787) (not b!5935778) (not d!1860684) (not bm!471427) (not b!5935591) (not b!5935590) (not bm!471449) (not d!1860586) (not d!1860678) (not b!5935772) (not bm!471444) (not setNonEmpty!40301) (not b!5935592) (not b!5935344) (not b!5935624) (not b!5935719) (not b!5935715) (not d!1860626) (not b!5935705) (not b!5935777) (not b_lambda!222947))
(check-sat)
