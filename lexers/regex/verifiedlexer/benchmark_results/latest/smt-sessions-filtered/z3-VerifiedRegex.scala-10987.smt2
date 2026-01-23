; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!569886 () Bool)

(assert start!569886)

(declare-fun b!5430107 () Bool)

(assert (=> b!5430107 true))

(assert (=> b!5430107 true))

(declare-fun lambda!284920 () Int)

(declare-fun lambda!284919 () Int)

(assert (=> b!5430107 (not (= lambda!284920 lambda!284919))))

(assert (=> b!5430107 true))

(assert (=> b!5430107 true))

(declare-fun b!5430101 () Bool)

(assert (=> b!5430101 true))

(declare-fun b!5430100 () Bool)

(declare-fun e!3364725 () Bool)

(declare-fun tp_is_empty!39695 () Bool)

(declare-fun tp!1498179 () Bool)

(assert (=> b!5430100 (= e!3364725 (and tp_is_empty!39695 tp!1498179))))

(declare-fun e!3364720 () Bool)

(declare-fun e!3364718 () Bool)

(assert (=> b!5430101 (= e!3364720 e!3364718)))

(declare-fun res!2310784 () Bool)

(assert (=> b!5430101 (=> res!2310784 e!3364718)))

(declare-datatypes ((C!30712 0))(
  ( (C!30713 (val!25058 Int)) )
))
(declare-datatypes ((Regex!15221 0))(
  ( (ElementMatch!15221 (c!947395 C!30712)) (Concat!24066 (regOne!30954 Regex!15221) (regTwo!30954 Regex!15221)) (EmptyExpr!15221) (Star!15221 (reg!15550 Regex!15221)) (EmptyLang!15221) (Union!15221 (regOne!30955 Regex!15221) (regTwo!30955 Regex!15221)) )
))
(declare-fun r!7292 () Regex!15221)

(declare-datatypes ((List!61962 0))(
  ( (Nil!61838) (Cons!61838 (h!68286 C!30712) (t!375187 List!61962)) )
))
(declare-fun s!2326 () List!61962)

(get-info :version)

(assert (=> b!5430101 (= res!2310784 (or (and ((_ is ElementMatch!15221) (regOne!30954 r!7292)) (= (c!947395 (regOne!30954 r!7292)) (h!68286 s!2326))) ((_ is Union!15221) (regOne!30954 r!7292))))))

(declare-datatypes ((Unit!154406 0))(
  ( (Unit!154407) )
))
(declare-fun lt!2214093 () Unit!154406)

(declare-fun e!3364730 () Unit!154406)

(assert (=> b!5430101 (= lt!2214093 e!3364730)))

(declare-fun c!947394 () Bool)

(declare-fun lt!2214101 () Bool)

(assert (=> b!5430101 (= c!947394 lt!2214101)))

(declare-datatypes ((List!61963 0))(
  ( (Nil!61839) (Cons!61839 (h!68287 Regex!15221) (t!375188 List!61963)) )
))
(declare-datatypes ((Context!9210 0))(
  ( (Context!9211 (exprs!5105 List!61963)) )
))
(declare-datatypes ((List!61964 0))(
  ( (Nil!61840) (Cons!61840 (h!68288 Context!9210) (t!375189 List!61964)) )
))
(declare-fun zl!343 () List!61964)

(declare-fun nullable!5390 (Regex!15221) Bool)

(assert (=> b!5430101 (= lt!2214101 (nullable!5390 (h!68287 (exprs!5105 (h!68288 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9210))

(declare-fun lambda!284921 () Int)

(declare-fun flatMap!948 ((InoxSet Context!9210) Int) (InoxSet Context!9210))

(declare-fun derivationStepZipperUp!593 (Context!9210 C!30712) (InoxSet Context!9210))

(assert (=> b!5430101 (= (flatMap!948 z!1189 lambda!284921) (derivationStepZipperUp!593 (h!68288 zl!343) (h!68286 s!2326)))))

(declare-fun lt!2214099 () Unit!154406)

(declare-fun lemmaFlatMapOnSingletonSet!480 ((InoxSet Context!9210) Context!9210 Int) Unit!154406)

(assert (=> b!5430101 (= lt!2214099 (lemmaFlatMapOnSingletonSet!480 z!1189 (h!68288 zl!343) lambda!284921))))

(declare-fun lt!2214096 () (InoxSet Context!9210))

(declare-fun lt!2214080 () Context!9210)

(assert (=> b!5430101 (= lt!2214096 (derivationStepZipperUp!593 lt!2214080 (h!68286 s!2326)))))

(declare-fun lt!2214070 () (InoxSet Context!9210))

(declare-fun derivationStepZipperDown!669 (Regex!15221 Context!9210 C!30712) (InoxSet Context!9210))

(assert (=> b!5430101 (= lt!2214070 (derivationStepZipperDown!669 (h!68287 (exprs!5105 (h!68288 zl!343))) lt!2214080 (h!68286 s!2326)))))

(assert (=> b!5430101 (= lt!2214080 (Context!9211 (t!375188 (exprs!5105 (h!68288 zl!343)))))))

(declare-fun lt!2214076 () (InoxSet Context!9210))

(assert (=> b!5430101 (= lt!2214076 (derivationStepZipperUp!593 (Context!9211 (Cons!61839 (h!68287 (exprs!5105 (h!68288 zl!343))) (t!375188 (exprs!5105 (h!68288 zl!343))))) (h!68286 s!2326)))))

(declare-fun b!5430102 () Bool)

(declare-fun e!3364713 () Bool)

(declare-fun e!3364722 () Bool)

(assert (=> b!5430102 (= e!3364713 e!3364722)))

(declare-fun res!2310770 () Bool)

(assert (=> b!5430102 (=> res!2310770 e!3364722)))

(declare-fun lt!2214092 () (InoxSet Context!9210))

(declare-fun derivationStepZipper!1460 ((InoxSet Context!9210) C!30712) (InoxSet Context!9210))

(assert (=> b!5430102 (= res!2310770 (not (= lt!2214096 (derivationStepZipper!1460 lt!2214092 (h!68286 s!2326)))))))

(assert (=> b!5430102 (= (flatMap!948 lt!2214092 lambda!284921) (derivationStepZipperUp!593 lt!2214080 (h!68286 s!2326)))))

(declare-fun lt!2214106 () Unit!154406)

(assert (=> b!5430102 (= lt!2214106 (lemmaFlatMapOnSingletonSet!480 lt!2214092 lt!2214080 lambda!284921))))

(assert (=> b!5430102 (= lt!2214092 (store ((as const (Array Context!9210 Bool)) false) lt!2214080 true))))

(declare-fun b!5430103 () Bool)

(declare-fun Unit!154408 () Unit!154406)

(assert (=> b!5430103 (= e!3364730 Unit!154408)))

(declare-fun lt!2214103 () Unit!154406)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!458 ((InoxSet Context!9210) (InoxSet Context!9210) List!61962) Unit!154406)

(assert (=> b!5430103 (= lt!2214103 (lemmaZipperConcatMatchesSameAsBothZippers!458 lt!2214070 lt!2214096 (t!375187 s!2326)))))

(declare-fun res!2310799 () Bool)

(declare-fun matchZipper!1465 ((InoxSet Context!9210) List!61962) Bool)

(assert (=> b!5430103 (= res!2310799 (matchZipper!1465 lt!2214070 (t!375187 s!2326)))))

(declare-fun e!3364734 () Bool)

(assert (=> b!5430103 (=> res!2310799 e!3364734)))

(assert (=> b!5430103 (= (matchZipper!1465 ((_ map or) lt!2214070 lt!2214096) (t!375187 s!2326)) e!3364734)))

(declare-fun b!5430104 () Bool)

(declare-fun res!2310766 () Bool)

(assert (=> b!5430104 (=> res!2310766 e!3364718)))

(assert (=> b!5430104 (= res!2310766 (or ((_ is Concat!24066) (regOne!30954 r!7292)) (not ((_ is Star!15221) (regOne!30954 r!7292)))))))

(declare-fun setIsEmpty!35421 () Bool)

(declare-fun setRes!35421 () Bool)

(assert (=> setIsEmpty!35421 setRes!35421))

(declare-fun b!5430105 () Bool)

(declare-fun e!3364732 () Bool)

(declare-fun e!3364716 () Bool)

(assert (=> b!5430105 (= e!3364732 (not e!3364716))))

(declare-fun res!2310798 () Bool)

(assert (=> b!5430105 (=> res!2310798 e!3364716)))

(assert (=> b!5430105 (= res!2310798 (not ((_ is Cons!61840) zl!343)))))

(declare-fun lt!2214094 () Bool)

(declare-fun matchRSpec!2324 (Regex!15221 List!61962) Bool)

(assert (=> b!5430105 (= lt!2214094 (matchRSpec!2324 r!7292 s!2326))))

(declare-fun matchR!7406 (Regex!15221 List!61962) Bool)

(assert (=> b!5430105 (= lt!2214094 (matchR!7406 r!7292 s!2326))))

(declare-fun lt!2214100 () Unit!154406)

(declare-fun mainMatchTheorem!2324 (Regex!15221 List!61962) Unit!154406)

(assert (=> b!5430105 (= lt!2214100 (mainMatchTheorem!2324 r!7292 s!2326))))

(declare-fun b!5430106 () Bool)

(declare-fun res!2310791 () Bool)

(declare-fun e!3364721 () Bool)

(assert (=> b!5430106 (=> res!2310791 e!3364721)))

(declare-fun lt!2214108 () (InoxSet Context!9210))

(declare-fun lt!2214095 () (InoxSet Context!9210))

(assert (=> b!5430106 (= res!2310791 (not (= (matchZipper!1465 lt!2214108 s!2326) (matchZipper!1465 lt!2214095 (t!375187 s!2326)))))))

(declare-fun b!5430108 () Bool)

(declare-fun e!3364712 () Bool)

(assert (=> b!5430108 (= e!3364712 e!3364721)))

(declare-fun res!2310787 () Bool)

(assert (=> b!5430108 (=> res!2310787 e!3364721)))

(declare-fun lt!2214088 () (InoxSet Context!9210))

(assert (=> b!5430108 (= res!2310787 (not (= lt!2214095 lt!2214088)))))

(declare-fun lt!2214097 () Context!9210)

(assert (=> b!5430108 (= (flatMap!948 lt!2214108 lambda!284921) (derivationStepZipperUp!593 lt!2214097 (h!68286 s!2326)))))

(declare-fun lt!2214105 () Unit!154406)

(assert (=> b!5430108 (= lt!2214105 (lemmaFlatMapOnSingletonSet!480 lt!2214108 lt!2214097 lambda!284921))))

(declare-fun lt!2214091 () (InoxSet Context!9210))

(assert (=> b!5430108 (= lt!2214091 (derivationStepZipperUp!593 lt!2214097 (h!68286 s!2326)))))

(assert (=> b!5430108 (= lt!2214095 (derivationStepZipper!1460 lt!2214108 (h!68286 s!2326)))))

(assert (=> b!5430108 (= lt!2214108 (store ((as const (Array Context!9210 Bool)) false) lt!2214097 true))))

(declare-fun lt!2214083 () List!61963)

(assert (=> b!5430108 (= lt!2214097 (Context!9211 (Cons!61839 (reg!15550 (regOne!30954 r!7292)) lt!2214083)))))

(declare-fun b!5430109 () Bool)

(declare-fun e!3364728 () Bool)

(declare-fun e!3364729 () Bool)

(assert (=> b!5430109 (= e!3364728 e!3364729)))

(declare-fun res!2310779 () Bool)

(assert (=> b!5430109 (=> res!2310779 e!3364729)))

(declare-fun lt!2214074 () List!61964)

(declare-fun zipperDepth!162 (List!61964) Int)

(assert (=> b!5430109 (= res!2310779 (< (zipperDepth!162 zl!343) (zipperDepth!162 lt!2214074)))))

(assert (=> b!5430109 (= lt!2214074 (Cons!61840 lt!2214080 Nil!61840))))

(declare-fun b!5430110 () Bool)

(declare-fun res!2310776 () Bool)

(declare-fun e!3364719 () Bool)

(assert (=> b!5430110 (=> res!2310776 e!3364719)))

(assert (=> b!5430110 (= res!2310776 (not lt!2214101))))

(declare-fun b!5430111 () Bool)

(declare-fun e!3364711 () Bool)

(declare-fun e!3364733 () Bool)

(assert (=> b!5430111 (= e!3364711 e!3364733)))

(declare-fun res!2310789 () Bool)

(assert (=> b!5430111 (=> res!2310789 e!3364733)))

(declare-fun lt!2214078 () Regex!15221)

(declare-fun unfocusZipper!963 (List!61964) Regex!15221)

(assert (=> b!5430111 (= res!2310789 (not (= (unfocusZipper!963 (Cons!61840 lt!2214097 Nil!61840)) lt!2214078)))))

(declare-fun lt!2214084 () Regex!15221)

(assert (=> b!5430111 (= lt!2214078 (Concat!24066 (reg!15550 (regOne!30954 r!7292)) lt!2214084))))

(declare-fun b!5430112 () Bool)

(declare-fun e!3364726 () Bool)

(assert (=> b!5430112 (= e!3364726 e!3364732)))

(declare-fun res!2310777 () Bool)

(assert (=> b!5430112 (=> (not res!2310777) (not e!3364732))))

(declare-fun lt!2214081 () Regex!15221)

(assert (=> b!5430112 (= res!2310777 (= r!7292 lt!2214081))))

(assert (=> b!5430112 (= lt!2214081 (unfocusZipper!963 zl!343))))

(declare-fun b!5430113 () Bool)

(declare-fun res!2310796 () Bool)

(assert (=> b!5430113 (=> res!2310796 e!3364719)))

(assert (=> b!5430113 (= res!2310796 (not (matchZipper!1465 z!1189 s!2326)))))

(declare-fun b!5430114 () Bool)

(declare-fun res!2310773 () Bool)

(assert (=> b!5430114 (=> res!2310773 e!3364716)))

(assert (=> b!5430114 (= res!2310773 (or ((_ is EmptyExpr!15221) r!7292) ((_ is EmptyLang!15221) r!7292) ((_ is ElementMatch!15221) r!7292) ((_ is Union!15221) r!7292) (not ((_ is Concat!24066) r!7292))))))

(declare-fun b!5430115 () Bool)

(assert (=> b!5430115 (= e!3364729 true)))

(declare-fun lt!2214082 () Regex!15221)

(assert (=> b!5430115 (= lt!2214082 (unfocusZipper!963 lt!2214074))))

(declare-fun b!5430116 () Bool)

(declare-fun res!2310771 () Bool)

(assert (=> b!5430116 (=> res!2310771 e!3364716)))

(declare-fun generalisedUnion!1150 (List!61963) Regex!15221)

(declare-fun unfocusZipperList!663 (List!61964) List!61963)

(assert (=> b!5430116 (= res!2310771 (not (= r!7292 (generalisedUnion!1150 (unfocusZipperList!663 zl!343)))))))

(declare-fun b!5430117 () Bool)

(declare-fun e!3364715 () Bool)

(assert (=> b!5430117 (= e!3364715 e!3364719)))

(declare-fun res!2310778 () Bool)

(assert (=> b!5430117 (=> res!2310778 e!3364719)))

(assert (=> b!5430117 (= res!2310778 lt!2214094)))

(assert (=> b!5430117 (= (matchR!7406 lt!2214078 s!2326) (matchRSpec!2324 lt!2214078 s!2326))))

(declare-fun lt!2214107 () Unit!154406)

(assert (=> b!5430117 (= lt!2214107 (mainMatchTheorem!2324 lt!2214078 s!2326))))

(declare-fun b!5430118 () Bool)

(declare-fun res!2310786 () Bool)

(assert (=> b!5430118 (=> res!2310786 e!3364716)))

(declare-fun generalisedConcat!890 (List!61963) Regex!15221)

(assert (=> b!5430118 (= res!2310786 (not (= r!7292 (generalisedConcat!890 (exprs!5105 (h!68288 zl!343))))))))

(declare-fun b!5430119 () Bool)

(declare-fun res!2310795 () Bool)

(assert (=> b!5430119 (=> res!2310795 e!3364721)))

(assert (=> b!5430119 (= res!2310795 (not (= lt!2214081 r!7292)))))

(declare-fun b!5430120 () Bool)

(assert (=> b!5430120 (= e!3364733 e!3364715)))

(declare-fun res!2310800 () Bool)

(assert (=> b!5430120 (=> res!2310800 e!3364715)))

(declare-fun lt!2214071 () Context!9210)

(assert (=> b!5430120 (= res!2310800 (not (= (unfocusZipper!963 (Cons!61840 lt!2214071 Nil!61840)) (reg!15550 (regOne!30954 r!7292)))))))

(declare-fun lt!2214086 () (InoxSet Context!9210))

(declare-fun lt!2214072 () Context!9210)

(assert (=> b!5430120 (= (flatMap!948 lt!2214086 lambda!284921) (derivationStepZipperUp!593 lt!2214072 (h!68286 s!2326)))))

(declare-fun lt!2214085 () Unit!154406)

(assert (=> b!5430120 (= lt!2214085 (lemmaFlatMapOnSingletonSet!480 lt!2214086 lt!2214072 lambda!284921))))

(declare-fun lt!2214077 () (InoxSet Context!9210))

(assert (=> b!5430120 (= (flatMap!948 lt!2214077 lambda!284921) (derivationStepZipperUp!593 lt!2214071 (h!68286 s!2326)))))

(declare-fun lt!2214098 () Unit!154406)

(assert (=> b!5430120 (= lt!2214098 (lemmaFlatMapOnSingletonSet!480 lt!2214077 lt!2214071 lambda!284921))))

(declare-fun lt!2214079 () (InoxSet Context!9210))

(assert (=> b!5430120 (= lt!2214079 (derivationStepZipperUp!593 lt!2214072 (h!68286 s!2326)))))

(declare-fun lt!2214075 () (InoxSet Context!9210))

(assert (=> b!5430120 (= lt!2214075 (derivationStepZipperUp!593 lt!2214071 (h!68286 s!2326)))))

(assert (=> b!5430120 (= lt!2214086 (store ((as const (Array Context!9210 Bool)) false) lt!2214072 true))))

(assert (=> b!5430120 (= lt!2214077 (store ((as const (Array Context!9210 Bool)) false) lt!2214071 true))))

(assert (=> b!5430120 (= lt!2214071 (Context!9211 (Cons!61839 (reg!15550 (regOne!30954 r!7292)) Nil!61839)))))

(declare-fun tp!1498180 () Bool)

(declare-fun setElem!35421 () Context!9210)

(declare-fun setNonEmpty!35421 () Bool)

(declare-fun e!3364714 () Bool)

(declare-fun inv!81299 (Context!9210) Bool)

(assert (=> setNonEmpty!35421 (= setRes!35421 (and tp!1498180 (inv!81299 setElem!35421) e!3364714))))

(declare-fun setRest!35421 () (InoxSet Context!9210))

(assert (=> setNonEmpty!35421 (= z!1189 ((_ map or) (store ((as const (Array Context!9210 Bool)) false) setElem!35421 true) setRest!35421))))

(declare-fun b!5430121 () Bool)

(declare-fun e!3364724 () Bool)

(declare-fun tp!1498185 () Bool)

(assert (=> b!5430121 (= e!3364724 tp!1498185)))

(declare-fun b!5430122 () Bool)

(declare-fun e!3364717 () Bool)

(declare-fun tp!1498181 () Bool)

(assert (=> b!5430122 (= e!3364717 tp!1498181)))

(declare-fun b!5430123 () Bool)

(declare-fun res!2310774 () Bool)

(assert (=> b!5430123 (=> res!2310774 e!3364713)))

(assert (=> b!5430123 (= res!2310774 (not (matchZipper!1465 lt!2214096 (t!375187 s!2326))))))

(declare-fun b!5430124 () Bool)

(declare-fun res!2310781 () Bool)

(assert (=> b!5430124 (=> (not res!2310781) (not e!3364726))))

(declare-fun toList!9005 ((InoxSet Context!9210)) List!61964)

(assert (=> b!5430124 (= res!2310781 (= (toList!9005 z!1189) zl!343))))

(declare-fun b!5430125 () Bool)

(declare-fun tp!1498178 () Bool)

(assert (=> b!5430125 (= e!3364714 tp!1498178)))

(declare-fun b!5430126 () Bool)

(assert (=> b!5430126 (= e!3364719 e!3364713)))

(declare-fun res!2310790 () Bool)

(assert (=> b!5430126 (=> res!2310790 e!3364713)))

(declare-fun e!3364731 () Bool)

(assert (=> b!5430126 (= res!2310790 e!3364731)))

(declare-fun res!2310767 () Bool)

(assert (=> b!5430126 (=> (not res!2310767) (not e!3364731))))

(declare-fun lt!2214087 () Bool)

(assert (=> b!5430126 (= res!2310767 (not lt!2214087))))

(assert (=> b!5430126 (= lt!2214087 (matchZipper!1465 lt!2214070 (t!375187 s!2326)))))

(declare-fun b!5430127 () Bool)

(assert (=> b!5430127 (= e!3364721 e!3364711)))

(declare-fun res!2310775 () Bool)

(assert (=> b!5430127 (=> res!2310775 e!3364711)))

(assert (=> b!5430127 (= res!2310775 (not (= r!7292 lt!2214084)))))

(declare-fun lt!2214090 () Regex!15221)

(assert (=> b!5430127 (= lt!2214084 (Concat!24066 lt!2214090 (regTwo!30954 r!7292)))))

(declare-fun b!5430128 () Bool)

(declare-fun res!2310793 () Bool)

(assert (=> b!5430128 (=> res!2310793 e!3364729)))

(declare-fun lt!2214073 () Regex!15221)

(declare-fun validRegex!6957 (Regex!15221) Bool)

(assert (=> b!5430128 (= res!2310793 (not (validRegex!6957 lt!2214073)))))

(declare-fun b!5430129 () Bool)

(declare-fun res!2310772 () Bool)

(assert (=> b!5430129 (=> res!2310772 e!3364713)))

(assert (=> b!5430129 (= res!2310772 lt!2214087)))

(declare-fun b!5430130 () Bool)

(declare-fun res!2310797 () Bool)

(assert (=> b!5430130 (=> res!2310797 e!3364716)))

(assert (=> b!5430130 (= res!2310797 (not ((_ is Cons!61839) (exprs!5105 (h!68288 zl!343)))))))

(declare-fun b!5430131 () Bool)

(assert (=> b!5430131 (= e!3364717 tp_is_empty!39695)))

(declare-fun b!5430132 () Bool)

(declare-fun res!2310768 () Bool)

(assert (=> b!5430132 (=> res!2310768 e!3364715)))

(assert (=> b!5430132 (= res!2310768 (not (= (unfocusZipper!963 (Cons!61840 lt!2214072 Nil!61840)) lt!2214084)))))

(declare-fun b!5430133 () Bool)

(assert (=> b!5430133 (= e!3364718 e!3364712)))

(declare-fun res!2310801 () Bool)

(assert (=> b!5430133 (=> res!2310801 e!3364712)))

(assert (=> b!5430133 (= res!2310801 (not (= lt!2214070 lt!2214088)))))

(assert (=> b!5430133 (= lt!2214088 (derivationStepZipperDown!669 (reg!15550 (regOne!30954 r!7292)) lt!2214072 (h!68286 s!2326)))))

(assert (=> b!5430133 (= lt!2214072 (Context!9211 lt!2214083))))

(assert (=> b!5430133 (= lt!2214083 (Cons!61839 lt!2214090 (t!375188 (exprs!5105 (h!68288 zl!343)))))))

(assert (=> b!5430133 (= lt!2214090 (Star!15221 (reg!15550 (regOne!30954 r!7292))))))

(declare-fun b!5430134 () Bool)

(assert (=> b!5430134 (= e!3364731 (not (matchZipper!1465 lt!2214096 (t!375187 s!2326))))))

(declare-fun b!5430135 () Bool)

(declare-fun tp!1498177 () Bool)

(declare-fun tp!1498176 () Bool)

(assert (=> b!5430135 (= e!3364717 (and tp!1498177 tp!1498176))))

(declare-fun b!5430136 () Bool)

(declare-fun res!2310792 () Bool)

(assert (=> b!5430136 (=> res!2310792 e!3364720)))

(declare-fun isEmpty!33840 (List!61963) Bool)

(assert (=> b!5430136 (= res!2310792 (isEmpty!33840 (t!375188 (exprs!5105 (h!68288 zl!343)))))))

(declare-fun b!5430137 () Bool)

(assert (=> b!5430137 (= e!3364734 (matchZipper!1465 lt!2214096 (t!375187 s!2326)))))

(assert (=> b!5430107 (= e!3364716 e!3364720)))

(declare-fun res!2310788 () Bool)

(assert (=> b!5430107 (=> res!2310788 e!3364720)))

(declare-fun lt!2214102 () Bool)

(assert (=> b!5430107 (= res!2310788 (or (not (= lt!2214094 lt!2214102)) ((_ is Nil!61838) s!2326)))))

(declare-fun Exists!2402 (Int) Bool)

(assert (=> b!5430107 (= (Exists!2402 lambda!284919) (Exists!2402 lambda!284920))))

(declare-fun lt!2214104 () Unit!154406)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1056 (Regex!15221 Regex!15221 List!61962) Unit!154406)

(assert (=> b!5430107 (= lt!2214104 (lemmaExistCutMatchRandMatchRSpecEquivalent!1056 (regOne!30954 r!7292) (regTwo!30954 r!7292) s!2326))))

(assert (=> b!5430107 (= lt!2214102 (Exists!2402 lambda!284919))))

(declare-datatypes ((tuple2!64840 0))(
  ( (tuple2!64841 (_1!35723 List!61962) (_2!35723 List!61962)) )
))
(declare-datatypes ((Option!15332 0))(
  ( (None!15331) (Some!15331 (v!51360 tuple2!64840)) )
))
(declare-fun isDefined!12035 (Option!15332) Bool)

(declare-fun findConcatSeparation!1746 (Regex!15221 Regex!15221 List!61962 List!61962 List!61962) Option!15332)

(assert (=> b!5430107 (= lt!2214102 (isDefined!12035 (findConcatSeparation!1746 (regOne!30954 r!7292) (regTwo!30954 r!7292) Nil!61838 s!2326 s!2326)))))

(declare-fun lt!2214089 () Unit!154406)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1510 (Regex!15221 Regex!15221 List!61962) Unit!154406)

(assert (=> b!5430107 (= lt!2214089 (lemmaFindConcatSeparationEquivalentToExists!1510 (regOne!30954 r!7292) (regTwo!30954 r!7292) s!2326))))

(declare-fun res!2310780 () Bool)

(assert (=> start!569886 (=> (not res!2310780) (not e!3364726))))

(assert (=> start!569886 (= res!2310780 (validRegex!6957 r!7292))))

(assert (=> start!569886 e!3364726))

(assert (=> start!569886 e!3364717))

(declare-fun condSetEmpty!35421 () Bool)

(assert (=> start!569886 (= condSetEmpty!35421 (= z!1189 ((as const (Array Context!9210 Bool)) false)))))

(assert (=> start!569886 setRes!35421))

(declare-fun e!3364723 () Bool)

(assert (=> start!569886 e!3364723))

(assert (=> start!569886 e!3364725))

(declare-fun b!5430138 () Bool)

(assert (=> b!5430138 (= e!3364722 e!3364728)))

(declare-fun res!2310794 () Bool)

(assert (=> b!5430138 (=> res!2310794 e!3364728)))

(declare-fun regexDepth!177 (Regex!15221) Int)

(assert (=> b!5430138 (= res!2310794 (< (regexDepth!177 r!7292) (regexDepth!177 lt!2214073)))))

(assert (=> b!5430138 (= lt!2214073 (generalisedConcat!890 (t!375188 (exprs!5105 (h!68288 zl!343)))))))

(declare-fun b!5430139 () Bool)

(declare-fun res!2310785 () Bool)

(assert (=> b!5430139 (=> res!2310785 e!3364729)))

(assert (=> b!5430139 (= res!2310785 (not (= (toList!9005 lt!2214092) lt!2214074)))))

(declare-fun b!5430140 () Bool)

(declare-fun res!2310769 () Bool)

(assert (=> b!5430140 (=> res!2310769 e!3364718)))

(declare-fun e!3364727 () Bool)

(assert (=> b!5430140 (= res!2310769 e!3364727)))

(declare-fun res!2310783 () Bool)

(assert (=> b!5430140 (=> (not res!2310783) (not e!3364727))))

(assert (=> b!5430140 (= res!2310783 ((_ is Concat!24066) (regOne!30954 r!7292)))))

(declare-fun b!5430141 () Bool)

(assert (=> b!5430141 (= e!3364727 (nullable!5390 (regOne!30954 (regOne!30954 r!7292))))))

(declare-fun tp!1498184 () Bool)

(declare-fun b!5430142 () Bool)

(assert (=> b!5430142 (= e!3364723 (and (inv!81299 (h!68288 zl!343)) e!3364724 tp!1498184))))

(declare-fun b!5430143 () Bool)

(declare-fun tp!1498182 () Bool)

(declare-fun tp!1498183 () Bool)

(assert (=> b!5430143 (= e!3364717 (and tp!1498182 tp!1498183))))

(declare-fun b!5430144 () Bool)

(declare-fun Unit!154409 () Unit!154406)

(assert (=> b!5430144 (= e!3364730 Unit!154409)))

(declare-fun b!5430145 () Bool)

(declare-fun res!2310782 () Bool)

(assert (=> b!5430145 (=> res!2310782 e!3364716)))

(declare-fun isEmpty!33841 (List!61964) Bool)

(assert (=> b!5430145 (= res!2310782 (not (isEmpty!33841 (t!375189 zl!343))))))

(assert (= (and start!569886 res!2310780) b!5430124))

(assert (= (and b!5430124 res!2310781) b!5430112))

(assert (= (and b!5430112 res!2310777) b!5430105))

(assert (= (and b!5430105 (not res!2310798)) b!5430145))

(assert (= (and b!5430145 (not res!2310782)) b!5430118))

(assert (= (and b!5430118 (not res!2310786)) b!5430130))

(assert (= (and b!5430130 (not res!2310797)) b!5430116))

(assert (= (and b!5430116 (not res!2310771)) b!5430114))

(assert (= (and b!5430114 (not res!2310773)) b!5430107))

(assert (= (and b!5430107 (not res!2310788)) b!5430136))

(assert (= (and b!5430136 (not res!2310792)) b!5430101))

(assert (= (and b!5430101 c!947394) b!5430103))

(assert (= (and b!5430101 (not c!947394)) b!5430144))

(assert (= (and b!5430103 (not res!2310799)) b!5430137))

(assert (= (and b!5430101 (not res!2310784)) b!5430140))

(assert (= (and b!5430140 res!2310783) b!5430141))

(assert (= (and b!5430140 (not res!2310769)) b!5430104))

(assert (= (and b!5430104 (not res!2310766)) b!5430133))

(assert (= (and b!5430133 (not res!2310801)) b!5430108))

(assert (= (and b!5430108 (not res!2310787)) b!5430106))

(assert (= (and b!5430106 (not res!2310791)) b!5430119))

(assert (= (and b!5430119 (not res!2310795)) b!5430127))

(assert (= (and b!5430127 (not res!2310775)) b!5430111))

(assert (= (and b!5430111 (not res!2310789)) b!5430120))

(assert (= (and b!5430120 (not res!2310800)) b!5430132))

(assert (= (and b!5430132 (not res!2310768)) b!5430117))

(assert (= (and b!5430117 (not res!2310778)) b!5430113))

(assert (= (and b!5430113 (not res!2310796)) b!5430110))

(assert (= (and b!5430110 (not res!2310776)) b!5430126))

(assert (= (and b!5430126 res!2310767) b!5430134))

(assert (= (and b!5430126 (not res!2310790)) b!5430129))

(assert (= (and b!5430129 (not res!2310772)) b!5430123))

(assert (= (and b!5430123 (not res!2310774)) b!5430102))

(assert (= (and b!5430102 (not res!2310770)) b!5430138))

(assert (= (and b!5430138 (not res!2310794)) b!5430109))

(assert (= (and b!5430109 (not res!2310779)) b!5430128))

(assert (= (and b!5430128 (not res!2310793)) b!5430139))

(assert (= (and b!5430139 (not res!2310785)) b!5430115))

(assert (= (and start!569886 ((_ is ElementMatch!15221) r!7292)) b!5430131))

(assert (= (and start!569886 ((_ is Concat!24066) r!7292)) b!5430135))

(assert (= (and start!569886 ((_ is Star!15221) r!7292)) b!5430122))

(assert (= (and start!569886 ((_ is Union!15221) r!7292)) b!5430143))

(assert (= (and start!569886 condSetEmpty!35421) setIsEmpty!35421))

(assert (= (and start!569886 (not condSetEmpty!35421)) setNonEmpty!35421))

(assert (= setNonEmpty!35421 b!5430125))

(assert (= b!5430142 b!5430121))

(assert (= (and start!569886 ((_ is Cons!61840) zl!343)) b!5430142))

(assert (= (and start!569886 ((_ is Cons!61838) s!2326)) b!5430100))

(declare-fun m!6453260 () Bool)

(assert (=> setNonEmpty!35421 m!6453260))

(declare-fun m!6453262 () Bool)

(assert (=> b!5430111 m!6453262))

(declare-fun m!6453264 () Bool)

(assert (=> b!5430136 m!6453264))

(declare-fun m!6453266 () Bool)

(assert (=> b!5430116 m!6453266))

(assert (=> b!5430116 m!6453266))

(declare-fun m!6453268 () Bool)

(assert (=> b!5430116 m!6453268))

(declare-fun m!6453270 () Bool)

(assert (=> b!5430124 m!6453270))

(declare-fun m!6453272 () Bool)

(assert (=> b!5430115 m!6453272))

(declare-fun m!6453274 () Bool)

(assert (=> b!5430117 m!6453274))

(declare-fun m!6453276 () Bool)

(assert (=> b!5430117 m!6453276))

(declare-fun m!6453278 () Bool)

(assert (=> b!5430117 m!6453278))

(declare-fun m!6453280 () Bool)

(assert (=> b!5430107 m!6453280))

(declare-fun m!6453282 () Bool)

(assert (=> b!5430107 m!6453282))

(declare-fun m!6453284 () Bool)

(assert (=> b!5430107 m!6453284))

(assert (=> b!5430107 m!6453280))

(declare-fun m!6453286 () Bool)

(assert (=> b!5430107 m!6453286))

(declare-fun m!6453288 () Bool)

(assert (=> b!5430107 m!6453288))

(assert (=> b!5430107 m!6453282))

(declare-fun m!6453290 () Bool)

(assert (=> b!5430107 m!6453290))

(declare-fun m!6453292 () Bool)

(assert (=> b!5430145 m!6453292))

(declare-fun m!6453294 () Bool)

(assert (=> b!5430112 m!6453294))

(declare-fun m!6453296 () Bool)

(assert (=> b!5430120 m!6453296))

(declare-fun m!6453298 () Bool)

(assert (=> b!5430120 m!6453298))

(declare-fun m!6453300 () Bool)

(assert (=> b!5430120 m!6453300))

(declare-fun m!6453302 () Bool)

(assert (=> b!5430120 m!6453302))

(declare-fun m!6453304 () Bool)

(assert (=> b!5430120 m!6453304))

(declare-fun m!6453306 () Bool)

(assert (=> b!5430120 m!6453306))

(declare-fun m!6453308 () Bool)

(assert (=> b!5430120 m!6453308))

(declare-fun m!6453310 () Bool)

(assert (=> b!5430120 m!6453310))

(declare-fun m!6453312 () Bool)

(assert (=> b!5430120 m!6453312))

(declare-fun m!6453314 () Bool)

(assert (=> b!5430141 m!6453314))

(declare-fun m!6453316 () Bool)

(assert (=> b!5430126 m!6453316))

(declare-fun m!6453318 () Bool)

(assert (=> b!5430128 m!6453318))

(declare-fun m!6453320 () Bool)

(assert (=> b!5430133 m!6453320))

(declare-fun m!6453322 () Bool)

(assert (=> b!5430106 m!6453322))

(declare-fun m!6453324 () Bool)

(assert (=> b!5430106 m!6453324))

(declare-fun m!6453326 () Bool)

(assert (=> b!5430139 m!6453326))

(declare-fun m!6453328 () Bool)

(assert (=> b!5430132 m!6453328))

(declare-fun m!6453330 () Bool)

(assert (=> b!5430103 m!6453330))

(assert (=> b!5430103 m!6453316))

(declare-fun m!6453332 () Bool)

(assert (=> b!5430103 m!6453332))

(declare-fun m!6453334 () Bool)

(assert (=> b!5430108 m!6453334))

(declare-fun m!6453336 () Bool)

(assert (=> b!5430108 m!6453336))

(declare-fun m!6453338 () Bool)

(assert (=> b!5430108 m!6453338))

(declare-fun m!6453340 () Bool)

(assert (=> b!5430108 m!6453340))

(declare-fun m!6453342 () Bool)

(assert (=> b!5430108 m!6453342))

(declare-fun m!6453344 () Bool)

(assert (=> b!5430109 m!6453344))

(declare-fun m!6453346 () Bool)

(assert (=> b!5430109 m!6453346))

(declare-fun m!6453348 () Bool)

(assert (=> b!5430123 m!6453348))

(declare-fun m!6453350 () Bool)

(assert (=> b!5430105 m!6453350))

(declare-fun m!6453352 () Bool)

(assert (=> b!5430105 m!6453352))

(declare-fun m!6453354 () Bool)

(assert (=> b!5430105 m!6453354))

(declare-fun m!6453356 () Bool)

(assert (=> b!5430138 m!6453356))

(declare-fun m!6453358 () Bool)

(assert (=> b!5430138 m!6453358))

(declare-fun m!6453360 () Bool)

(assert (=> b!5430138 m!6453360))

(declare-fun m!6453362 () Bool)

(assert (=> start!569886 m!6453362))

(declare-fun m!6453364 () Bool)

(assert (=> b!5430113 m!6453364))

(declare-fun m!6453366 () Bool)

(assert (=> b!5430142 m!6453366))

(declare-fun m!6453368 () Bool)

(assert (=> b!5430101 m!6453368))

(declare-fun m!6453370 () Bool)

(assert (=> b!5430101 m!6453370))

(declare-fun m!6453372 () Bool)

(assert (=> b!5430101 m!6453372))

(declare-fun m!6453374 () Bool)

(assert (=> b!5430101 m!6453374))

(declare-fun m!6453376 () Bool)

(assert (=> b!5430101 m!6453376))

(declare-fun m!6453378 () Bool)

(assert (=> b!5430101 m!6453378))

(declare-fun m!6453380 () Bool)

(assert (=> b!5430101 m!6453380))

(declare-fun m!6453382 () Bool)

(assert (=> b!5430118 m!6453382))

(declare-fun m!6453384 () Bool)

(assert (=> b!5430102 m!6453384))

(declare-fun m!6453386 () Bool)

(assert (=> b!5430102 m!6453386))

(declare-fun m!6453388 () Bool)

(assert (=> b!5430102 m!6453388))

(declare-fun m!6453390 () Bool)

(assert (=> b!5430102 m!6453390))

(assert (=> b!5430102 m!6453380))

(assert (=> b!5430137 m!6453348))

(assert (=> b!5430134 m!6453348))

(check-sat (not b!5430100) (not b!5430143) (not b!5430134) (not b!5430102) (not b!5430132) (not b!5430109) (not b!5430116) (not b!5430107) (not b!5430141) (not b!5430113) (not b!5430111) (not b!5430123) (not b!5430101) (not b!5430115) (not b!5430108) tp_is_empty!39695 (not b!5430139) (not b!5430136) (not b!5430122) (not b!5430121) (not b!5430128) (not b!5430112) (not setNonEmpty!35421) (not b!5430120) (not b!5430135) (not b!5430142) (not b!5430103) (not b!5430133) (not b!5430118) (not b!5430145) (not b!5430124) (not b!5430138) (not start!569886) (not b!5430117) (not b!5430106) (not b!5430126) (not b!5430137) (not b!5430105) (not b!5430125))
(check-sat)
