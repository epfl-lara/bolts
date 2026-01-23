; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!607938 () Bool)

(assert start!607938)

(declare-fun b!6051069 () Bool)

(assert (=> b!6051069 true))

(assert (=> b!6051069 true))

(declare-fun lambda!330047 () Int)

(declare-fun lambda!330046 () Int)

(assert (=> b!6051069 (not (= lambda!330047 lambda!330046))))

(assert (=> b!6051069 true))

(assert (=> b!6051069 true))

(declare-fun b!6051075 () Bool)

(assert (=> b!6051075 true))

(declare-fun tp!1683467 () Bool)

(declare-fun b!6051059 () Bool)

(declare-fun e!3695076 () Bool)

(declare-fun e!3695079 () Bool)

(declare-datatypes ((C!32332 0))(
  ( (C!32333 (val!25868 Int)) )
))
(declare-datatypes ((Regex!16031 0))(
  ( (ElementMatch!16031 (c!1085255 C!32332)) (Concat!24876 (regOne!32574 Regex!16031) (regTwo!32574 Regex!16031)) (EmptyExpr!16031) (Star!16031 (reg!16360 Regex!16031)) (EmptyLang!16031) (Union!16031 (regOne!32575 Regex!16031) (regTwo!32575 Regex!16031)) )
))
(declare-datatypes ((List!64392 0))(
  ( (Nil!64268) (Cons!64268 (h!70716 Regex!16031) (t!377827 List!64392)) )
))
(declare-datatypes ((Context!10830 0))(
  ( (Context!10831 (exprs!5915 List!64392)) )
))
(declare-datatypes ((List!64393 0))(
  ( (Nil!64269) (Cons!64269 (h!70717 Context!10830) (t!377828 List!64393)) )
))
(declare-fun zl!343 () List!64393)

(declare-fun inv!83324 (Context!10830) Bool)

(assert (=> b!6051059 (= e!3695076 (and (inv!83324 (h!70717 zl!343)) e!3695079 tp!1683467))))

(declare-fun b!6051060 () Bool)

(declare-fun e!3695073 () Bool)

(declare-fun tp_is_empty!41315 () Bool)

(declare-fun tp!1683472 () Bool)

(assert (=> b!6051060 (= e!3695073 (and tp_is_empty!41315 tp!1683472))))

(declare-fun b!6051061 () Bool)

(declare-fun tp!1683466 () Bool)

(assert (=> b!6051061 (= e!3695079 tp!1683466)))

(declare-fun b!6051062 () Bool)

(declare-fun e!3695081 () Bool)

(declare-fun e!3695072 () Bool)

(assert (=> b!6051062 (= e!3695081 e!3695072)))

(declare-fun res!2517888 () Bool)

(assert (=> b!6051062 (=> res!2517888 e!3695072)))

(declare-fun r!7292 () Regex!16031)

(declare-fun nullable!6026 (Regex!16031) Bool)

(assert (=> b!6051062 (= res!2517888 (nullable!6026 (regOne!32574 r!7292)))))

(declare-datatypes ((List!64394 0))(
  ( (Nil!64270) (Cons!64270 (h!70718 C!32332) (t!377829 List!64394)) )
))
(declare-fun s!2326 () List!64394)

(declare-fun lt!2324477 () Context!10830)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2324486 () (InoxSet Context!10830))

(declare-fun derivationStepZipperDown!1281 (Regex!16031 Context!10830 C!32332) (InoxSet Context!10830))

(assert (=> b!6051062 (= lt!2324486 (derivationStepZipperDown!1281 (regTwo!32574 r!7292) lt!2324477 (h!70718 s!2326)))))

(declare-fun lt!2324497 () Context!10830)

(declare-fun lt!2324496 () (InoxSet Context!10830))

(assert (=> b!6051062 (= lt!2324496 (derivationStepZipperDown!1281 (regOne!32574 r!7292) lt!2324497 (h!70718 s!2326)))))

(declare-fun lt!2324485 () (InoxSet Context!10830))

(declare-fun lambda!330048 () Int)

(declare-fun flatMap!1544 ((InoxSet Context!10830) Int) (InoxSet Context!10830))

(declare-fun derivationStepZipperUp!1207 (Context!10830 C!32332) (InoxSet Context!10830))

(assert (=> b!6051062 (= (flatMap!1544 lt!2324485 lambda!330048) (derivationStepZipperUp!1207 lt!2324497 (h!70718 s!2326)))))

(declare-datatypes ((Unit!157333 0))(
  ( (Unit!157334) )
))
(declare-fun lt!2324480 () Unit!157333)

(declare-fun lemmaFlatMapOnSingletonSet!1070 ((InoxSet Context!10830) Context!10830 Int) Unit!157333)

(assert (=> b!6051062 (= lt!2324480 (lemmaFlatMapOnSingletonSet!1070 lt!2324485 lt!2324497 lambda!330048))))

(declare-fun lt!2324475 () (InoxSet Context!10830))

(declare-fun lt!2324498 () Context!10830)

(assert (=> b!6051062 (= (flatMap!1544 lt!2324475 lambda!330048) (derivationStepZipperUp!1207 lt!2324498 (h!70718 s!2326)))))

(declare-fun lt!2324494 () Unit!157333)

(assert (=> b!6051062 (= lt!2324494 (lemmaFlatMapOnSingletonSet!1070 lt!2324475 lt!2324498 lambda!330048))))

(declare-fun lt!2324490 () (InoxSet Context!10830))

(assert (=> b!6051062 (= lt!2324490 (derivationStepZipperUp!1207 lt!2324497 (h!70718 s!2326)))))

(declare-fun lt!2324478 () (InoxSet Context!10830))

(assert (=> b!6051062 (= lt!2324478 (derivationStepZipperUp!1207 lt!2324498 (h!70718 s!2326)))))

(assert (=> b!6051062 (= lt!2324485 (store ((as const (Array Context!10830 Bool)) false) lt!2324497 true))))

(declare-fun lt!2324481 () List!64392)

(assert (=> b!6051062 (= lt!2324497 (Context!10831 lt!2324481))))

(assert (=> b!6051062 (= lt!2324475 (store ((as const (Array Context!10830 Bool)) false) lt!2324498 true))))

(assert (=> b!6051062 (= lt!2324498 (Context!10831 (Cons!64268 (regOne!32574 r!7292) lt!2324481)))))

(assert (=> b!6051062 (= lt!2324481 (Cons!64268 (regTwo!32574 r!7292) Nil!64268))))

(declare-fun b!6051063 () Bool)

(declare-fun e!3695075 () Bool)

(declare-fun e!3695078 () Bool)

(assert (=> b!6051063 (= e!3695075 e!3695078)))

(declare-fun res!2517887 () Bool)

(assert (=> b!6051063 (=> (not res!2517887) (not e!3695078))))

(declare-fun lt!2324479 () Regex!16031)

(assert (=> b!6051063 (= res!2517887 (= r!7292 lt!2324479))))

(declare-fun unfocusZipper!1773 (List!64393) Regex!16031)

(assert (=> b!6051063 (= lt!2324479 (unfocusZipper!1773 zl!343))))

(declare-fun b!6051064 () Bool)

(declare-fun e!3695071 () Bool)

(declare-fun tp!1683465 () Bool)

(declare-fun tp!1683470 () Bool)

(assert (=> b!6051064 (= e!3695071 (and tp!1683465 tp!1683470))))

(declare-fun b!6051065 () Bool)

(declare-fun res!2517891 () Bool)

(declare-fun e!3695080 () Bool)

(assert (=> b!6051065 (=> res!2517891 e!3695080)))

(get-info :version)

(assert (=> b!6051065 (= res!2517891 (or ((_ is EmptyExpr!16031) r!7292) ((_ is EmptyLang!16031) r!7292) ((_ is ElementMatch!16031) r!7292) ((_ is Union!16031) r!7292) (not ((_ is Concat!24876) r!7292))))))

(declare-fun b!6051066 () Bool)

(declare-fun tp!1683473 () Bool)

(declare-fun tp!1683468 () Bool)

(assert (=> b!6051066 (= e!3695071 (and tp!1683473 tp!1683468))))

(declare-fun b!6051067 () Bool)

(declare-fun e!3695082 () Bool)

(declare-fun tp!1683469 () Bool)

(assert (=> b!6051067 (= e!3695082 tp!1683469)))

(declare-fun b!6051068 () Bool)

(declare-fun validRegex!7767 (Regex!16031) Bool)

(assert (=> b!6051068 (= e!3695072 (validRegex!7767 (Concat!24876 (regOne!32574 r!7292) (regTwo!32574 r!7292))))))

(declare-fun e!3695074 () Bool)

(assert (=> b!6051069 (= e!3695080 e!3695074)))

(declare-fun res!2517894 () Bool)

(assert (=> b!6051069 (=> res!2517894 e!3695074)))

(declare-fun lt!2324487 () Bool)

(declare-fun lt!2324489 () Bool)

(assert (=> b!6051069 (= res!2517894 (or (not (= lt!2324487 lt!2324489)) ((_ is Nil!64270) s!2326)))))

(declare-fun Exists!3101 (Int) Bool)

(assert (=> b!6051069 (= (Exists!3101 lambda!330046) (Exists!3101 lambda!330047))))

(declare-fun lt!2324483 () Unit!157333)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1638 (Regex!16031 Regex!16031 List!64394) Unit!157333)

(assert (=> b!6051069 (= lt!2324483 (lemmaExistCutMatchRandMatchRSpecEquivalent!1638 (regOne!32574 r!7292) (regTwo!32574 r!7292) s!2326))))

(assert (=> b!6051069 (= lt!2324489 (Exists!3101 lambda!330046))))

(declare-datatypes ((tuple2!66020 0))(
  ( (tuple2!66021 (_1!36313 List!64394) (_2!36313 List!64394)) )
))
(declare-datatypes ((Option!15922 0))(
  ( (None!15921) (Some!15921 (v!52042 tuple2!66020)) )
))
(declare-fun isDefined!12625 (Option!15922) Bool)

(declare-fun findConcatSeparation!2336 (Regex!16031 Regex!16031 List!64394 List!64394 List!64394) Option!15922)

(assert (=> b!6051069 (= lt!2324489 (isDefined!12625 (findConcatSeparation!2336 (regOne!32574 r!7292) (regTwo!32574 r!7292) Nil!64270 s!2326 s!2326)))))

(declare-fun lt!2324491 () Unit!157333)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2100 (Regex!16031 Regex!16031 List!64394) Unit!157333)

(assert (=> b!6051069 (= lt!2324491 (lemmaFindConcatSeparationEquivalentToExists!2100 (regOne!32574 r!7292) (regTwo!32574 r!7292) s!2326))))

(declare-fun b!6051070 () Bool)

(declare-fun res!2517892 () Bool)

(assert (=> b!6051070 (=> res!2517892 e!3695080)))

(assert (=> b!6051070 (= res!2517892 (not ((_ is Cons!64268) (exprs!5915 (h!70717 zl!343)))))))

(declare-fun b!6051071 () Bool)

(assert (=> b!6051071 (= e!3695071 tp_is_empty!41315)))

(declare-fun b!6051072 () Bool)

(declare-fun res!2517897 () Bool)

(assert (=> b!6051072 (=> res!2517897 e!3695072)))

(declare-fun lt!2324482 () Context!10830)

(declare-fun zipperDepth!276 (List!64393) Int)

(assert (=> b!6051072 (= res!2517897 (>= (zipperDepth!276 (Cons!64269 lt!2324498 Nil!64269)) (zipperDepth!276 (Cons!64269 lt!2324482 Nil!64269))))))

(declare-fun b!6051073 () Bool)

(assert (=> b!6051073 (= e!3695078 (not e!3695080))))

(declare-fun res!2517884 () Bool)

(assert (=> b!6051073 (=> res!2517884 e!3695080)))

(assert (=> b!6051073 (= res!2517884 (not ((_ is Cons!64269) zl!343)))))

(declare-fun matchRSpec!3132 (Regex!16031 List!64394) Bool)

(assert (=> b!6051073 (= lt!2324487 (matchRSpec!3132 r!7292 s!2326))))

(declare-fun matchR!8214 (Regex!16031 List!64394) Bool)

(assert (=> b!6051073 (= lt!2324487 (matchR!8214 r!7292 s!2326))))

(declare-fun lt!2324492 () Unit!157333)

(declare-fun mainMatchTheorem!3132 (Regex!16031 List!64394) Unit!157333)

(assert (=> b!6051073 (= lt!2324492 (mainMatchTheorem!3132 r!7292 s!2326))))

(declare-fun b!6051074 () Bool)

(declare-fun res!2517898 () Bool)

(assert (=> b!6051074 (=> res!2517898 e!3695074)))

(declare-fun isEmpty!36173 (List!64392) Bool)

(assert (=> b!6051074 (= res!2517898 (not (isEmpty!36173 (t!377827 (exprs!5915 (h!70717 zl!343))))))))

(declare-fun e!3695077 () Bool)

(assert (=> b!6051075 (= e!3695077 e!3695081)))

(declare-fun res!2517885 () Bool)

(assert (=> b!6051075 (=> res!2517885 e!3695081)))

(declare-fun lt!2324476 () (InoxSet Context!10830))

(declare-fun lt!2324493 () (InoxSet Context!10830))

(assert (=> b!6051075 (= res!2517885 (not (= lt!2324476 lt!2324493)))))

(declare-fun z!1189 () (InoxSet Context!10830))

(assert (=> b!6051075 (= (flatMap!1544 z!1189 lambda!330048) (derivationStepZipperUp!1207 (h!70717 zl!343) (h!70718 s!2326)))))

(declare-fun lt!2324488 () Unit!157333)

(assert (=> b!6051075 (= lt!2324488 (lemmaFlatMapOnSingletonSet!1070 z!1189 (h!70717 zl!343) lambda!330048))))

(declare-fun b!6051076 () Bool)

(assert (=> b!6051076 (= e!3695074 e!3695077)))

(declare-fun res!2517896 () Bool)

(assert (=> b!6051076 (=> res!2517896 e!3695077)))

(declare-fun lt!2324495 () (InoxSet Context!10830))

(assert (=> b!6051076 (= res!2517896 (not (= lt!2324495 lt!2324493)))))

(assert (=> b!6051076 (= lt!2324493 (derivationStepZipperDown!1281 r!7292 lt!2324477 (h!70718 s!2326)))))

(assert (=> b!6051076 (= lt!2324477 (Context!10831 Nil!64268))))

(assert (=> b!6051076 (= lt!2324495 (derivationStepZipperUp!1207 lt!2324482 (h!70718 s!2326)))))

(declare-fun lt!2324484 () List!64392)

(assert (=> b!6051076 (= lt!2324482 (Context!10831 lt!2324484))))

(assert (=> b!6051076 (= lt!2324484 (Cons!64268 r!7292 Nil!64268))))

(declare-fun derivationStepZipper!2012 ((InoxSet Context!10830) C!32332) (InoxSet Context!10830))

(assert (=> b!6051076 (= lt!2324476 (derivationStepZipper!2012 z!1189 (h!70718 s!2326)))))

(declare-fun b!6051077 () Bool)

(declare-fun res!2517890 () Bool)

(assert (=> b!6051077 (=> res!2517890 e!3695080)))

(declare-fun generalisedConcat!1628 (List!64392) Regex!16031)

(assert (=> b!6051077 (= res!2517890 (not (= r!7292 (generalisedConcat!1628 (exprs!5915 (h!70717 zl!343))))))))

(declare-fun b!6051078 () Bool)

(declare-fun res!2517893 () Bool)

(assert (=> b!6051078 (=> res!2517893 e!3695072)))

(assert (=> b!6051078 (= res!2517893 (or (not (= lt!2324476 lt!2324496)) (not (= lt!2324479 r!7292)) (not (= (exprs!5915 (h!70717 zl!343)) lt!2324484))))))

(declare-fun res!2517889 () Bool)

(assert (=> start!607938 (=> (not res!2517889) (not e!3695075))))

(assert (=> start!607938 (= res!2517889 (validRegex!7767 r!7292))))

(assert (=> start!607938 e!3695075))

(assert (=> start!607938 e!3695071))

(declare-fun condSetEmpty!40945 () Bool)

(assert (=> start!607938 (= condSetEmpty!40945 (= z!1189 ((as const (Array Context!10830 Bool)) false)))))

(declare-fun setRes!40945 () Bool)

(assert (=> start!607938 setRes!40945))

(assert (=> start!607938 e!3695076))

(assert (=> start!607938 e!3695073))

(declare-fun b!6051079 () Bool)

(declare-fun res!2517895 () Bool)

(assert (=> b!6051079 (=> (not res!2517895) (not e!3695075))))

(declare-fun toList!9815 ((InoxSet Context!10830)) List!64393)

(assert (=> b!6051079 (= res!2517895 (= (toList!9815 z!1189) zl!343))))

(declare-fun setElem!40945 () Context!10830)

(declare-fun setNonEmpty!40945 () Bool)

(declare-fun tp!1683474 () Bool)

(assert (=> setNonEmpty!40945 (= setRes!40945 (and tp!1683474 (inv!83324 setElem!40945) e!3695082))))

(declare-fun setRest!40945 () (InoxSet Context!10830))

(assert (=> setNonEmpty!40945 (= z!1189 ((_ map or) (store ((as const (Array Context!10830 Bool)) false) setElem!40945 true) setRest!40945))))

(declare-fun b!6051080 () Bool)

(declare-fun res!2517899 () Bool)

(assert (=> b!6051080 (=> res!2517899 e!3695080)))

(declare-fun isEmpty!36174 (List!64393) Bool)

(assert (=> b!6051080 (= res!2517899 (not (isEmpty!36174 (t!377828 zl!343))))))

(declare-fun b!6051081 () Bool)

(declare-fun res!2517886 () Bool)

(assert (=> b!6051081 (=> res!2517886 e!3695080)))

(declare-fun generalisedUnion!1875 (List!64392) Regex!16031)

(declare-fun unfocusZipperList!1452 (List!64393) List!64392)

(assert (=> b!6051081 (= res!2517886 (not (= r!7292 (generalisedUnion!1875 (unfocusZipperList!1452 zl!343)))))))

(declare-fun setIsEmpty!40945 () Bool)

(assert (=> setIsEmpty!40945 setRes!40945))

(declare-fun b!6051082 () Bool)

(declare-fun tp!1683471 () Bool)

(assert (=> b!6051082 (= e!3695071 tp!1683471)))

(assert (= (and start!607938 res!2517889) b!6051079))

(assert (= (and b!6051079 res!2517895) b!6051063))

(assert (= (and b!6051063 res!2517887) b!6051073))

(assert (= (and b!6051073 (not res!2517884)) b!6051080))

(assert (= (and b!6051080 (not res!2517899)) b!6051077))

(assert (= (and b!6051077 (not res!2517890)) b!6051070))

(assert (= (and b!6051070 (not res!2517892)) b!6051081))

(assert (= (and b!6051081 (not res!2517886)) b!6051065))

(assert (= (and b!6051065 (not res!2517891)) b!6051069))

(assert (= (and b!6051069 (not res!2517894)) b!6051074))

(assert (= (and b!6051074 (not res!2517898)) b!6051076))

(assert (= (and b!6051076 (not res!2517896)) b!6051075))

(assert (= (and b!6051075 (not res!2517885)) b!6051062))

(assert (= (and b!6051062 (not res!2517888)) b!6051078))

(assert (= (and b!6051078 (not res!2517893)) b!6051072))

(assert (= (and b!6051072 (not res!2517897)) b!6051068))

(assert (= (and start!607938 ((_ is ElementMatch!16031) r!7292)) b!6051071))

(assert (= (and start!607938 ((_ is Concat!24876) r!7292)) b!6051064))

(assert (= (and start!607938 ((_ is Star!16031) r!7292)) b!6051082))

(assert (= (and start!607938 ((_ is Union!16031) r!7292)) b!6051066))

(assert (= (and start!607938 condSetEmpty!40945) setIsEmpty!40945))

(assert (= (and start!607938 (not condSetEmpty!40945)) setNonEmpty!40945))

(assert (= setNonEmpty!40945 b!6051067))

(assert (= b!6051059 b!6051061))

(assert (= (and start!607938 ((_ is Cons!64269) zl!343)) b!6051059))

(assert (= (and start!607938 ((_ is Cons!64270) s!2326)) b!6051060))

(declare-fun m!6918124 () Bool)

(assert (=> setNonEmpty!40945 m!6918124))

(declare-fun m!6918126 () Bool)

(assert (=> b!6051059 m!6918126))

(declare-fun m!6918128 () Bool)

(assert (=> b!6051080 m!6918128))

(declare-fun m!6918130 () Bool)

(assert (=> b!6051062 m!6918130))

(declare-fun m!6918132 () Bool)

(assert (=> b!6051062 m!6918132))

(declare-fun m!6918134 () Bool)

(assert (=> b!6051062 m!6918134))

(declare-fun m!6918136 () Bool)

(assert (=> b!6051062 m!6918136))

(declare-fun m!6918138 () Bool)

(assert (=> b!6051062 m!6918138))

(declare-fun m!6918140 () Bool)

(assert (=> b!6051062 m!6918140))

(declare-fun m!6918142 () Bool)

(assert (=> b!6051062 m!6918142))

(declare-fun m!6918144 () Bool)

(assert (=> b!6051062 m!6918144))

(declare-fun m!6918146 () Bool)

(assert (=> b!6051062 m!6918146))

(declare-fun m!6918148 () Bool)

(assert (=> b!6051062 m!6918148))

(declare-fun m!6918150 () Bool)

(assert (=> b!6051062 m!6918150))

(declare-fun m!6918152 () Bool)

(assert (=> b!6051077 m!6918152))

(declare-fun m!6918154 () Bool)

(assert (=> b!6051068 m!6918154))

(declare-fun m!6918156 () Bool)

(assert (=> b!6051081 m!6918156))

(assert (=> b!6051081 m!6918156))

(declare-fun m!6918158 () Bool)

(assert (=> b!6051081 m!6918158))

(declare-fun m!6918160 () Bool)

(assert (=> b!6051076 m!6918160))

(declare-fun m!6918162 () Bool)

(assert (=> b!6051076 m!6918162))

(declare-fun m!6918164 () Bool)

(assert (=> b!6051076 m!6918164))

(declare-fun m!6918166 () Bool)

(assert (=> b!6051073 m!6918166))

(declare-fun m!6918168 () Bool)

(assert (=> b!6051073 m!6918168))

(declare-fun m!6918170 () Bool)

(assert (=> b!6051073 m!6918170))

(declare-fun m!6918172 () Bool)

(assert (=> b!6051072 m!6918172))

(declare-fun m!6918174 () Bool)

(assert (=> b!6051072 m!6918174))

(declare-fun m!6918176 () Bool)

(assert (=> b!6051069 m!6918176))

(declare-fun m!6918178 () Bool)

(assert (=> b!6051069 m!6918178))

(declare-fun m!6918180 () Bool)

(assert (=> b!6051069 m!6918180))

(assert (=> b!6051069 m!6918176))

(declare-fun m!6918182 () Bool)

(assert (=> b!6051069 m!6918182))

(declare-fun m!6918184 () Bool)

(assert (=> b!6051069 m!6918184))

(assert (=> b!6051069 m!6918178))

(declare-fun m!6918186 () Bool)

(assert (=> b!6051069 m!6918186))

(declare-fun m!6918188 () Bool)

(assert (=> b!6051079 m!6918188))

(declare-fun m!6918190 () Bool)

(assert (=> b!6051075 m!6918190))

(declare-fun m!6918192 () Bool)

(assert (=> b!6051075 m!6918192))

(declare-fun m!6918194 () Bool)

(assert (=> b!6051075 m!6918194))

(declare-fun m!6918196 () Bool)

(assert (=> b!6051063 m!6918196))

(declare-fun m!6918198 () Bool)

(assert (=> start!607938 m!6918198))

(declare-fun m!6918200 () Bool)

(assert (=> b!6051074 m!6918200))

(check-sat (not b!6051063) (not b!6051069) (not b!6051068) (not b!6051062) (not b!6051067) (not b!6051064) (not b!6051072) (not b!6051077) (not b!6051081) (not b!6051061) (not b!6051059) (not b!6051060) (not b!6051073) (not b!6051076) (not b!6051074) (not setNonEmpty!40945) (not b!6051079) (not b!6051080) (not b!6051082) (not b!6051066) (not start!607938) (not b!6051075) tp_is_empty!41315)
(check-sat)
