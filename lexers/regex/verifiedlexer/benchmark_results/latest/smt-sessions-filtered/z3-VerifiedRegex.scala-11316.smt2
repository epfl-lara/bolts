; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596948 () Bool)

(assert start!596948)

(declare-fun b!5827937 () Bool)

(declare-fun e!3575918 () Bool)

(declare-fun tp!1609993 () Bool)

(assert (=> b!5827937 (= e!3575918 tp!1609993)))

(declare-fun b!5827938 () Bool)

(declare-fun res!2456516 () Bool)

(declare-fun e!3575920 () Bool)

(assert (=> b!5827938 (=> (not res!2456516) (not e!3575920))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32028 0))(
  ( (C!32029 (val!25716 Int)) )
))
(declare-datatypes ((Regex!15879 0))(
  ( (ElementMatch!15879 (c!1032621 C!32028)) (Concat!24724 (regOne!32270 Regex!15879) (regTwo!32270 Regex!15879)) (EmptyExpr!15879) (Star!15879 (reg!16208 Regex!15879)) (EmptyLang!15879) (Union!15879 (regOne!32271 Regex!15879) (regTwo!32271 Regex!15879)) )
))
(declare-datatypes ((List!63936 0))(
  ( (Nil!63812) (Cons!63812 (h!70260 Regex!15879) (t!377291 List!63936)) )
))
(declare-datatypes ((Context!10526 0))(
  ( (Context!10527 (exprs!5763 List!63936)) )
))
(declare-fun z!1189 () (InoxSet Context!10526))

(declare-datatypes ((List!63937 0))(
  ( (Nil!63813) (Cons!63813 (h!70261 Context!10526) (t!377292 List!63937)) )
))
(declare-fun zl!343 () List!63937)

(declare-fun toList!9663 ((InoxSet Context!10526)) List!63937)

(assert (=> b!5827938 (= res!2456516 (= (toList!9663 z!1189) zl!343))))

(declare-fun b!5827939 () Bool)

(declare-fun e!3575922 () Bool)

(declare-fun tp!1609995 () Bool)

(declare-fun tp!1609997 () Bool)

(assert (=> b!5827939 (= e!3575922 (and tp!1609995 tp!1609997))))

(declare-fun b!5827940 () Bool)

(declare-fun res!2456511 () Bool)

(declare-fun e!3575919 () Bool)

(assert (=> b!5827940 (=> res!2456511 e!3575919)))

(declare-fun r!7292 () Regex!15879)

(declare-fun generalisedUnion!1723 (List!63936) Regex!15879)

(declare-fun unfocusZipperList!1300 (List!63937) List!63936)

(assert (=> b!5827940 (= res!2456511 (not (= r!7292 (generalisedUnion!1723 (unfocusZipperList!1300 zl!343)))))))

(declare-fun b!5827941 () Bool)

(declare-fun tp!1609996 () Bool)

(declare-fun tp!1609991 () Bool)

(assert (=> b!5827941 (= e!3575922 (and tp!1609996 tp!1609991))))

(declare-fun b!5827942 () Bool)

(assert (=> b!5827942 (= e!3575920 (not e!3575919))))

(declare-fun res!2456512 () Bool)

(assert (=> b!5827942 (=> res!2456512 e!3575919)))

(get-info :version)

(assert (=> b!5827942 (= res!2456512 (not ((_ is Cons!63813) zl!343)))))

(declare-datatypes ((List!63938 0))(
  ( (Nil!63814) (Cons!63814 (h!70262 C!32028) (t!377293 List!63938)) )
))
(declare-fun s!2326 () List!63938)

(declare-fun matchR!8062 (Regex!15879 List!63938) Bool)

(declare-fun matchRSpec!2980 (Regex!15879 List!63938) Bool)

(assert (=> b!5827942 (= (matchR!8062 r!7292 s!2326) (matchRSpec!2980 r!7292 s!2326))))

(declare-datatypes ((Unit!157029 0))(
  ( (Unit!157030) )
))
(declare-fun lt!2302670 () Unit!157029)

(declare-fun mainMatchTheorem!2980 (Regex!15879 List!63938) Unit!157029)

(assert (=> b!5827942 (= lt!2302670 (mainMatchTheorem!2980 r!7292 s!2326))))

(declare-fun res!2456513 () Bool)

(assert (=> start!596948 (=> (not res!2456513) (not e!3575920))))

(declare-fun validRegex!7615 (Regex!15879) Bool)

(assert (=> start!596948 (= res!2456513 (validRegex!7615 r!7292))))

(assert (=> start!596948 e!3575920))

(assert (=> start!596948 e!3575922))

(declare-fun condSetEmpty!39394 () Bool)

(assert (=> start!596948 (= condSetEmpty!39394 (= z!1189 ((as const (Array Context!10526 Bool)) false)))))

(declare-fun setRes!39394 () Bool)

(assert (=> start!596948 setRes!39394))

(declare-fun e!3575916 () Bool)

(assert (=> start!596948 e!3575916))

(declare-fun e!3575923 () Bool)

(assert (=> start!596948 e!3575923))

(declare-fun b!5827943 () Bool)

(declare-fun tp_is_empty!41011 () Bool)

(assert (=> b!5827943 (= e!3575922 tp_is_empty!41011)))

(declare-fun b!5827944 () Bool)

(declare-fun res!2456515 () Bool)

(assert (=> b!5827944 (=> res!2456515 e!3575919)))

(assert (=> b!5827944 (= res!2456515 (not ((_ is Cons!63812) (exprs!5763 (h!70261 zl!343)))))))

(declare-fun e!3575917 () Bool)

(declare-fun setElem!39394 () Context!10526)

(declare-fun setNonEmpty!39394 () Bool)

(declare-fun tp!1609994 () Bool)

(declare-fun inv!82944 (Context!10526) Bool)

(assert (=> setNonEmpty!39394 (= setRes!39394 (and tp!1609994 (inv!82944 setElem!39394) e!3575917))))

(declare-fun setRest!39394 () (InoxSet Context!10526))

(assert (=> setNonEmpty!39394 (= z!1189 ((_ map or) (store ((as const (Array Context!10526 Bool)) false) setElem!39394 true) setRest!39394))))

(declare-fun b!5827945 () Bool)

(declare-fun e!3575921 () Bool)

(assert (=> b!5827945 (= e!3575919 e!3575921)))

(declare-fun res!2456519 () Bool)

(assert (=> b!5827945 (=> res!2456519 e!3575921)))

(declare-fun lt!2302669 () List!63936)

(assert (=> b!5827945 (= res!2456519 (not (= z!1189 (store ((as const (Array Context!10526 Bool)) false) (Context!10527 lt!2302669) true))))))

(assert (=> b!5827945 (= lt!2302669 (Cons!63812 r!7292 Nil!63812))))

(declare-fun b!5827946 () Bool)

(declare-fun res!2456518 () Bool)

(assert (=> b!5827946 (=> res!2456518 e!3575919)))

(declare-fun isEmpty!35680 (List!63937) Bool)

(assert (=> b!5827946 (= res!2456518 (not (isEmpty!35680 (t!377292 zl!343))))))

(declare-fun b!5827947 () Bool)

(declare-fun isEmpty!35681 (List!63936) Bool)

(assert (=> b!5827947 (= e!3575921 (not (isEmpty!35681 lt!2302669)))))

(declare-fun setIsEmpty!39394 () Bool)

(assert (=> setIsEmpty!39394 setRes!39394))

(declare-fun b!5827948 () Bool)

(declare-fun tp!1609999 () Bool)

(assert (=> b!5827948 (= e!3575916 (and (inv!82944 (h!70261 zl!343)) e!3575918 tp!1609999))))

(declare-fun b!5827949 () Bool)

(declare-fun tp!1610000 () Bool)

(assert (=> b!5827949 (= e!3575917 tp!1610000)))

(declare-fun b!5827950 () Bool)

(declare-fun res!2456517 () Bool)

(assert (=> b!5827950 (=> res!2456517 e!3575919)))

(assert (=> b!5827950 (= res!2456517 (or ((_ is EmptyExpr!15879) r!7292) (not ((_ is EmptyLang!15879) r!7292))))))

(declare-fun b!5827951 () Bool)

(declare-fun tp!1609992 () Bool)

(assert (=> b!5827951 (= e!3575923 (and tp_is_empty!41011 tp!1609992))))

(declare-fun b!5827952 () Bool)

(declare-fun res!2456514 () Bool)

(assert (=> b!5827952 (=> (not res!2456514) (not e!3575920))))

(declare-fun unfocusZipper!1621 (List!63937) Regex!15879)

(assert (=> b!5827952 (= res!2456514 (= r!7292 (unfocusZipper!1621 zl!343)))))

(declare-fun b!5827953 () Bool)

(declare-fun res!2456520 () Bool)

(assert (=> b!5827953 (=> res!2456520 e!3575919)))

(declare-fun generalisedConcat!1476 (List!63936) Regex!15879)

(assert (=> b!5827953 (= res!2456520 (not (= r!7292 (generalisedConcat!1476 (exprs!5763 (h!70261 zl!343))))))))

(declare-fun b!5827954 () Bool)

(declare-fun tp!1609998 () Bool)

(assert (=> b!5827954 (= e!3575922 tp!1609998)))

(assert (= (and start!596948 res!2456513) b!5827938))

(assert (= (and b!5827938 res!2456516) b!5827952))

(assert (= (and b!5827952 res!2456514) b!5827942))

(assert (= (and b!5827942 (not res!2456512)) b!5827946))

(assert (= (and b!5827946 (not res!2456518)) b!5827953))

(assert (= (and b!5827953 (not res!2456520)) b!5827944))

(assert (= (and b!5827944 (not res!2456515)) b!5827940))

(assert (= (and b!5827940 (not res!2456511)) b!5827950))

(assert (= (and b!5827950 (not res!2456517)) b!5827945))

(assert (= (and b!5827945 (not res!2456519)) b!5827947))

(assert (= (and start!596948 ((_ is ElementMatch!15879) r!7292)) b!5827943))

(assert (= (and start!596948 ((_ is Concat!24724) r!7292)) b!5827941))

(assert (= (and start!596948 ((_ is Star!15879) r!7292)) b!5827954))

(assert (= (and start!596948 ((_ is Union!15879) r!7292)) b!5827939))

(assert (= (and start!596948 condSetEmpty!39394) setIsEmpty!39394))

(assert (= (and start!596948 (not condSetEmpty!39394)) setNonEmpty!39394))

(assert (= setNonEmpty!39394 b!5827949))

(assert (= b!5827948 b!5827937))

(assert (= (and start!596948 ((_ is Cons!63813) zl!343)) b!5827948))

(assert (= (and start!596948 ((_ is Cons!63814) s!2326)) b!5827951))

(declare-fun m!6759276 () Bool)

(assert (=> b!5827945 m!6759276))

(declare-fun m!6759278 () Bool)

(assert (=> setNonEmpty!39394 m!6759278))

(declare-fun m!6759280 () Bool)

(assert (=> b!5827953 m!6759280))

(declare-fun m!6759282 () Bool)

(assert (=> start!596948 m!6759282))

(declare-fun m!6759284 () Bool)

(assert (=> b!5827947 m!6759284))

(declare-fun m!6759286 () Bool)

(assert (=> b!5827952 m!6759286))

(declare-fun m!6759288 () Bool)

(assert (=> b!5827946 m!6759288))

(declare-fun m!6759290 () Bool)

(assert (=> b!5827940 m!6759290))

(assert (=> b!5827940 m!6759290))

(declare-fun m!6759292 () Bool)

(assert (=> b!5827940 m!6759292))

(declare-fun m!6759294 () Bool)

(assert (=> b!5827938 m!6759294))

(declare-fun m!6759296 () Bool)

(assert (=> b!5827948 m!6759296))

(declare-fun m!6759298 () Bool)

(assert (=> b!5827942 m!6759298))

(declare-fun m!6759300 () Bool)

(assert (=> b!5827942 m!6759300))

(declare-fun m!6759302 () Bool)

(assert (=> b!5827942 m!6759302))

(check-sat (not b!5827947) (not b!5827946) (not b!5827937) (not b!5827952) (not b!5827938) (not setNonEmpty!39394) (not b!5827941) (not b!5827942) (not b!5827939) (not b!5827949) (not b!5827954) (not b!5827951) (not b!5827940) (not start!596948) tp_is_empty!41011 (not b!5827953) (not b!5827948))
(check-sat)
(get-model)

(declare-fun b!5827975 () Bool)

(declare-fun e!3575937 () Bool)

(declare-fun lt!2302673 () Regex!15879)

(declare-fun isUnion!756 (Regex!15879) Bool)

(assert (=> b!5827975 (= e!3575937 (isUnion!756 lt!2302673))))

(declare-fun b!5827976 () Bool)

(declare-fun e!3575936 () Regex!15879)

(declare-fun e!3575940 () Regex!15879)

(assert (=> b!5827976 (= e!3575936 e!3575940)))

(declare-fun c!1032631 () Bool)

(assert (=> b!5827976 (= c!1032631 ((_ is Cons!63812) (unfocusZipperList!1300 zl!343)))))

(declare-fun b!5827977 () Bool)

(assert (=> b!5827977 (= e!3575936 (h!70260 (unfocusZipperList!1300 zl!343)))))

(declare-fun b!5827978 () Bool)

(assert (=> b!5827978 (= e!3575940 (Union!15879 (h!70260 (unfocusZipperList!1300 zl!343)) (generalisedUnion!1723 (t!377291 (unfocusZipperList!1300 zl!343)))))))

(declare-fun b!5827979 () Bool)

(declare-fun head!12319 (List!63936) Regex!15879)

(assert (=> b!5827979 (= e!3575937 (= lt!2302673 (head!12319 (unfocusZipperList!1300 zl!343))))))

(declare-fun b!5827980 () Bool)

(declare-fun e!3575938 () Bool)

(assert (=> b!5827980 (= e!3575938 (isEmpty!35681 (t!377291 (unfocusZipperList!1300 zl!343))))))

(declare-fun b!5827981 () Bool)

(declare-fun e!3575941 () Bool)

(declare-fun e!3575939 () Bool)

(assert (=> b!5827981 (= e!3575941 e!3575939)))

(declare-fun c!1032632 () Bool)

(assert (=> b!5827981 (= c!1032632 (isEmpty!35681 (unfocusZipperList!1300 zl!343)))))

(declare-fun b!5827983 () Bool)

(assert (=> b!5827983 (= e!3575939 e!3575937)))

(declare-fun c!1032633 () Bool)

(declare-fun tail!11404 (List!63936) List!63936)

(assert (=> b!5827983 (= c!1032633 (isEmpty!35681 (tail!11404 (unfocusZipperList!1300 zl!343))))))

(declare-fun b!5827984 () Bool)

(declare-fun isEmptyLang!1326 (Regex!15879) Bool)

(assert (=> b!5827984 (= e!3575939 (isEmptyLang!1326 lt!2302673))))

(declare-fun d!1833151 () Bool)

(assert (=> d!1833151 e!3575941))

(declare-fun res!2456526 () Bool)

(assert (=> d!1833151 (=> (not res!2456526) (not e!3575941))))

(assert (=> d!1833151 (= res!2456526 (validRegex!7615 lt!2302673))))

(assert (=> d!1833151 (= lt!2302673 e!3575936)))

(declare-fun c!1032630 () Bool)

(assert (=> d!1833151 (= c!1032630 e!3575938)))

(declare-fun res!2456525 () Bool)

(assert (=> d!1833151 (=> (not res!2456525) (not e!3575938))))

(assert (=> d!1833151 (= res!2456525 ((_ is Cons!63812) (unfocusZipperList!1300 zl!343)))))

(declare-fun lambda!318861 () Int)

(declare-fun forall!14969 (List!63936 Int) Bool)

(assert (=> d!1833151 (forall!14969 (unfocusZipperList!1300 zl!343) lambda!318861)))

(assert (=> d!1833151 (= (generalisedUnion!1723 (unfocusZipperList!1300 zl!343)) lt!2302673)))

(declare-fun b!5827982 () Bool)

(assert (=> b!5827982 (= e!3575940 EmptyLang!15879)))

(assert (= (and d!1833151 res!2456525) b!5827980))

(assert (= (and d!1833151 c!1032630) b!5827977))

(assert (= (and d!1833151 (not c!1032630)) b!5827976))

(assert (= (and b!5827976 c!1032631) b!5827978))

(assert (= (and b!5827976 (not c!1032631)) b!5827982))

(assert (= (and d!1833151 res!2456526) b!5827981))

(assert (= (and b!5827981 c!1032632) b!5827984))

(assert (= (and b!5827981 (not c!1032632)) b!5827983))

(assert (= (and b!5827983 c!1032633) b!5827979))

(assert (= (and b!5827983 (not c!1032633)) b!5827975))

(declare-fun m!6759304 () Bool)

(assert (=> b!5827978 m!6759304))

(assert (=> b!5827981 m!6759290))

(declare-fun m!6759306 () Bool)

(assert (=> b!5827981 m!6759306))

(declare-fun m!6759308 () Bool)

(assert (=> b!5827984 m!6759308))

(declare-fun m!6759310 () Bool)

(assert (=> b!5827980 m!6759310))

(declare-fun m!6759312 () Bool)

(assert (=> d!1833151 m!6759312))

(assert (=> d!1833151 m!6759290))

(declare-fun m!6759314 () Bool)

(assert (=> d!1833151 m!6759314))

(assert (=> b!5827979 m!6759290))

(declare-fun m!6759316 () Bool)

(assert (=> b!5827979 m!6759316))

(declare-fun m!6759318 () Bool)

(assert (=> b!5827975 m!6759318))

(assert (=> b!5827983 m!6759290))

(declare-fun m!6759320 () Bool)

(assert (=> b!5827983 m!6759320))

(assert (=> b!5827983 m!6759320))

(declare-fun m!6759322 () Bool)

(assert (=> b!5827983 m!6759322))

(assert (=> b!5827940 d!1833151))

(declare-fun bs!1374456 () Bool)

(declare-fun d!1833155 () Bool)

(assert (= bs!1374456 (and d!1833155 d!1833151)))

(declare-fun lambda!318864 () Int)

(assert (=> bs!1374456 (= lambda!318864 lambda!318861)))

(declare-fun lt!2302676 () List!63936)

(assert (=> d!1833155 (forall!14969 lt!2302676 lambda!318864)))

(declare-fun e!3575944 () List!63936)

(assert (=> d!1833155 (= lt!2302676 e!3575944)))

(declare-fun c!1032636 () Bool)

(assert (=> d!1833155 (= c!1032636 ((_ is Cons!63813) zl!343))))

(assert (=> d!1833155 (= (unfocusZipperList!1300 zl!343) lt!2302676)))

(declare-fun b!5827989 () Bool)

(assert (=> b!5827989 (= e!3575944 (Cons!63812 (generalisedConcat!1476 (exprs!5763 (h!70261 zl!343))) (unfocusZipperList!1300 (t!377292 zl!343))))))

(declare-fun b!5827990 () Bool)

(assert (=> b!5827990 (= e!3575944 Nil!63812)))

(assert (= (and d!1833155 c!1032636) b!5827989))

(assert (= (and d!1833155 (not c!1032636)) b!5827990))

(declare-fun m!6759324 () Bool)

(assert (=> d!1833155 m!6759324))

(assert (=> b!5827989 m!6759280))

(declare-fun m!6759326 () Bool)

(assert (=> b!5827989 m!6759326))

(assert (=> b!5827940 d!1833155))

(declare-fun bs!1374457 () Bool)

(declare-fun d!1833157 () Bool)

(assert (= bs!1374457 (and d!1833157 d!1833151)))

(declare-fun lambda!318867 () Int)

(assert (=> bs!1374457 (= lambda!318867 lambda!318861)))

(declare-fun bs!1374458 () Bool)

(assert (= bs!1374458 (and d!1833157 d!1833155)))

(assert (=> bs!1374458 (= lambda!318867 lambda!318864)))

(assert (=> d!1833157 (= (inv!82944 setElem!39394) (forall!14969 (exprs!5763 setElem!39394) lambda!318867))))

(declare-fun bs!1374459 () Bool)

(assert (= bs!1374459 d!1833157))

(declare-fun m!6759328 () Bool)

(assert (=> bs!1374459 m!6759328))

(assert (=> setNonEmpty!39394 d!1833157))

(declare-fun bs!1374460 () Bool)

(declare-fun d!1833159 () Bool)

(assert (= bs!1374460 (and d!1833159 d!1833151)))

(declare-fun lambda!318868 () Int)

(assert (=> bs!1374460 (= lambda!318868 lambda!318861)))

(declare-fun bs!1374461 () Bool)

(assert (= bs!1374461 (and d!1833159 d!1833155)))

(assert (=> bs!1374461 (= lambda!318868 lambda!318864)))

(declare-fun bs!1374462 () Bool)

(assert (= bs!1374462 (and d!1833159 d!1833157)))

(assert (=> bs!1374462 (= lambda!318868 lambda!318867)))

(assert (=> d!1833159 (= (inv!82944 (h!70261 zl!343)) (forall!14969 (exprs!5763 (h!70261 zl!343)) lambda!318868))))

(declare-fun bs!1374463 () Bool)

(assert (= bs!1374463 d!1833159))

(declare-fun m!6759330 () Bool)

(assert (=> bs!1374463 m!6759330))

(assert (=> b!5827948 d!1833159))

(declare-fun b!5828009 () Bool)

(declare-fun e!3575959 () Bool)

(declare-fun e!3575964 () Bool)

(assert (=> b!5828009 (= e!3575959 e!3575964)))

(declare-fun res!2456538 () Bool)

(assert (=> b!5828009 (=> (not res!2456538) (not e!3575964))))

(declare-fun call!455162 () Bool)

(assert (=> b!5828009 (= res!2456538 call!455162)))

(declare-fun b!5828010 () Bool)

(declare-fun e!3575965 () Bool)

(declare-fun e!3575962 () Bool)

(assert (=> b!5828010 (= e!3575965 e!3575962)))

(declare-fun c!1032641 () Bool)

(assert (=> b!5828010 (= c!1032641 ((_ is Star!15879) r!7292))))

(declare-fun bm!455156 () Bool)

(declare-fun c!1032642 () Bool)

(assert (=> bm!455156 (= call!455162 (validRegex!7615 (ite c!1032642 (regOne!32271 r!7292) (regOne!32270 r!7292))))))

(declare-fun b!5828012 () Bool)

(declare-fun res!2456537 () Bool)

(declare-fun e!3575960 () Bool)

(assert (=> b!5828012 (=> (not res!2456537) (not e!3575960))))

(assert (=> b!5828012 (= res!2456537 call!455162)))

(declare-fun e!3575963 () Bool)

(assert (=> b!5828012 (= e!3575963 e!3575960)))

(declare-fun call!455161 () Bool)

(declare-fun bm!455157 () Bool)

(assert (=> bm!455157 (= call!455161 (validRegex!7615 (ite c!1032641 (reg!16208 r!7292) (ite c!1032642 (regTwo!32271 r!7292) (regTwo!32270 r!7292)))))))

(declare-fun b!5828013 () Bool)

(declare-fun e!3575961 () Bool)

(assert (=> b!5828013 (= e!3575962 e!3575961)))

(declare-fun res!2456541 () Bool)

(declare-fun nullable!5881 (Regex!15879) Bool)

(assert (=> b!5828013 (= res!2456541 (not (nullable!5881 (reg!16208 r!7292))))))

(assert (=> b!5828013 (=> (not res!2456541) (not e!3575961))))

(declare-fun b!5828014 () Bool)

(declare-fun call!455163 () Bool)

(assert (=> b!5828014 (= e!3575960 call!455163)))

(declare-fun b!5828015 () Bool)

(assert (=> b!5828015 (= e!3575964 call!455163)))

(declare-fun b!5828016 () Bool)

(assert (=> b!5828016 (= e!3575961 call!455161)))

(declare-fun bm!455158 () Bool)

(assert (=> bm!455158 (= call!455163 call!455161)))

(declare-fun b!5828017 () Bool)

(assert (=> b!5828017 (= e!3575962 e!3575963)))

(assert (=> b!5828017 (= c!1032642 ((_ is Union!15879) r!7292))))

(declare-fun d!1833161 () Bool)

(declare-fun res!2456540 () Bool)

(assert (=> d!1833161 (=> res!2456540 e!3575965)))

(assert (=> d!1833161 (= res!2456540 ((_ is ElementMatch!15879) r!7292))))

(assert (=> d!1833161 (= (validRegex!7615 r!7292) e!3575965)))

(declare-fun b!5828011 () Bool)

(declare-fun res!2456539 () Bool)

(assert (=> b!5828011 (=> res!2456539 e!3575959)))

(assert (=> b!5828011 (= res!2456539 (not ((_ is Concat!24724) r!7292)))))

(assert (=> b!5828011 (= e!3575963 e!3575959)))

(assert (= (and d!1833161 (not res!2456540)) b!5828010))

(assert (= (and b!5828010 c!1032641) b!5828013))

(assert (= (and b!5828010 (not c!1032641)) b!5828017))

(assert (= (and b!5828013 res!2456541) b!5828016))

(assert (= (and b!5828017 c!1032642) b!5828012))

(assert (= (and b!5828017 (not c!1032642)) b!5828011))

(assert (= (and b!5828012 res!2456537) b!5828014))

(assert (= (and b!5828011 (not res!2456539)) b!5828009))

(assert (= (and b!5828009 res!2456538) b!5828015))

(assert (= (or b!5828014 b!5828015) bm!455158))

(assert (= (or b!5828012 b!5828009) bm!455156))

(assert (= (or b!5828016 bm!455158) bm!455157))

(declare-fun m!6759332 () Bool)

(assert (=> bm!455156 m!6759332))

(declare-fun m!6759334 () Bool)

(assert (=> bm!455157 m!6759334))

(declare-fun m!6759336 () Bool)

(assert (=> b!5828013 m!6759336))

(assert (=> start!596948 d!1833161))

(declare-fun bs!1374464 () Bool)

(declare-fun d!1833163 () Bool)

(assert (= bs!1374464 (and d!1833163 d!1833151)))

(declare-fun lambda!318871 () Int)

(assert (=> bs!1374464 (= lambda!318871 lambda!318861)))

(declare-fun bs!1374465 () Bool)

(assert (= bs!1374465 (and d!1833163 d!1833155)))

(assert (=> bs!1374465 (= lambda!318871 lambda!318864)))

(declare-fun bs!1374466 () Bool)

(assert (= bs!1374466 (and d!1833163 d!1833157)))

(assert (=> bs!1374466 (= lambda!318871 lambda!318867)))

(declare-fun bs!1374467 () Bool)

(assert (= bs!1374467 (and d!1833163 d!1833159)))

(assert (=> bs!1374467 (= lambda!318871 lambda!318868)))

(declare-fun b!5828038 () Bool)

(declare-fun e!3575983 () Bool)

(declare-fun e!3575978 () Bool)

(assert (=> b!5828038 (= e!3575983 e!3575978)))

(declare-fun c!1032652 () Bool)

(assert (=> b!5828038 (= c!1032652 (isEmpty!35681 (tail!11404 (exprs!5763 (h!70261 zl!343)))))))

(declare-fun b!5828039 () Bool)

(declare-fun lt!2302679 () Regex!15879)

(assert (=> b!5828039 (= e!3575978 (= lt!2302679 (head!12319 (exprs!5763 (h!70261 zl!343)))))))

(declare-fun e!3575979 () Bool)

(assert (=> d!1833163 e!3575979))

(declare-fun res!2456547 () Bool)

(assert (=> d!1833163 (=> (not res!2456547) (not e!3575979))))

(assert (=> d!1833163 (= res!2456547 (validRegex!7615 lt!2302679))))

(declare-fun e!3575982 () Regex!15879)

(assert (=> d!1833163 (= lt!2302679 e!3575982)))

(declare-fun c!1032654 () Bool)

(declare-fun e!3575981 () Bool)

(assert (=> d!1833163 (= c!1032654 e!3575981)))

(declare-fun res!2456546 () Bool)

(assert (=> d!1833163 (=> (not res!2456546) (not e!3575981))))

(assert (=> d!1833163 (= res!2456546 ((_ is Cons!63812) (exprs!5763 (h!70261 zl!343))))))

(assert (=> d!1833163 (forall!14969 (exprs!5763 (h!70261 zl!343)) lambda!318871)))

(assert (=> d!1833163 (= (generalisedConcat!1476 (exprs!5763 (h!70261 zl!343))) lt!2302679)))

(declare-fun b!5828040 () Bool)

(assert (=> b!5828040 (= e!3575982 (h!70260 (exprs!5763 (h!70261 zl!343))))))

(declare-fun b!5828041 () Bool)

(declare-fun isConcat!840 (Regex!15879) Bool)

(assert (=> b!5828041 (= e!3575978 (isConcat!840 lt!2302679))))

(declare-fun b!5828042 () Bool)

(assert (=> b!5828042 (= e!3575981 (isEmpty!35681 (t!377291 (exprs!5763 (h!70261 zl!343)))))))

(declare-fun b!5828043 () Bool)

(assert (=> b!5828043 (= e!3575979 e!3575983)))

(declare-fun c!1032653 () Bool)

(assert (=> b!5828043 (= c!1032653 (isEmpty!35681 (exprs!5763 (h!70261 zl!343))))))

(declare-fun b!5828044 () Bool)

(declare-fun e!3575980 () Regex!15879)

(assert (=> b!5828044 (= e!3575980 (Concat!24724 (h!70260 (exprs!5763 (h!70261 zl!343))) (generalisedConcat!1476 (t!377291 (exprs!5763 (h!70261 zl!343))))))))

(declare-fun b!5828045 () Bool)

(assert (=> b!5828045 (= e!3575982 e!3575980)))

(declare-fun c!1032651 () Bool)

(assert (=> b!5828045 (= c!1032651 ((_ is Cons!63812) (exprs!5763 (h!70261 zl!343))))))

(declare-fun b!5828046 () Bool)

(declare-fun isEmptyExpr!1317 (Regex!15879) Bool)

(assert (=> b!5828046 (= e!3575983 (isEmptyExpr!1317 lt!2302679))))

(declare-fun b!5828047 () Bool)

(assert (=> b!5828047 (= e!3575980 EmptyExpr!15879)))

(assert (= (and d!1833163 res!2456546) b!5828042))

(assert (= (and d!1833163 c!1032654) b!5828040))

(assert (= (and d!1833163 (not c!1032654)) b!5828045))

(assert (= (and b!5828045 c!1032651) b!5828044))

(assert (= (and b!5828045 (not c!1032651)) b!5828047))

(assert (= (and d!1833163 res!2456547) b!5828043))

(assert (= (and b!5828043 c!1032653) b!5828046))

(assert (= (and b!5828043 (not c!1032653)) b!5828038))

(assert (= (and b!5828038 c!1032652) b!5828039))

(assert (= (and b!5828038 (not c!1032652)) b!5828041))

(declare-fun m!6759338 () Bool)

(assert (=> b!5828038 m!6759338))

(assert (=> b!5828038 m!6759338))

(declare-fun m!6759340 () Bool)

(assert (=> b!5828038 m!6759340))

(declare-fun m!6759342 () Bool)

(assert (=> b!5828039 m!6759342))

(declare-fun m!6759344 () Bool)

(assert (=> b!5828044 m!6759344))

(declare-fun m!6759346 () Bool)

(assert (=> d!1833163 m!6759346))

(declare-fun m!6759348 () Bool)

(assert (=> d!1833163 m!6759348))

(declare-fun m!6759350 () Bool)

(assert (=> b!5828041 m!6759350))

(declare-fun m!6759352 () Bool)

(assert (=> b!5828043 m!6759352))

(declare-fun m!6759354 () Bool)

(assert (=> b!5828042 m!6759354))

(declare-fun m!6759356 () Bool)

(assert (=> b!5828046 m!6759356))

(assert (=> b!5827953 d!1833163))

(declare-fun d!1833165 () Bool)

(declare-fun e!3575986 () Bool)

(assert (=> d!1833165 e!3575986))

(declare-fun res!2456550 () Bool)

(assert (=> d!1833165 (=> (not res!2456550) (not e!3575986))))

(declare-fun lt!2302682 () List!63937)

(declare-fun noDuplicate!1748 (List!63937) Bool)

(assert (=> d!1833165 (= res!2456550 (noDuplicate!1748 lt!2302682))))

(declare-fun choose!44275 ((InoxSet Context!10526)) List!63937)

(assert (=> d!1833165 (= lt!2302682 (choose!44275 z!1189))))

(assert (=> d!1833165 (= (toList!9663 z!1189) lt!2302682)))

(declare-fun b!5828050 () Bool)

(declare-fun content!11714 (List!63937) (InoxSet Context!10526))

(assert (=> b!5828050 (= e!3575986 (= (content!11714 lt!2302682) z!1189))))

(assert (= (and d!1833165 res!2456550) b!5828050))

(declare-fun m!6759358 () Bool)

(assert (=> d!1833165 m!6759358))

(declare-fun m!6759360 () Bool)

(assert (=> d!1833165 m!6759360))

(declare-fun m!6759362 () Bool)

(assert (=> b!5828050 m!6759362))

(assert (=> b!5827938 d!1833165))

(declare-fun d!1833167 () Bool)

(declare-fun lt!2302685 () Regex!15879)

(assert (=> d!1833167 (validRegex!7615 lt!2302685)))

(assert (=> d!1833167 (= lt!2302685 (generalisedUnion!1723 (unfocusZipperList!1300 zl!343)))))

(assert (=> d!1833167 (= (unfocusZipper!1621 zl!343) lt!2302685)))

(declare-fun bs!1374468 () Bool)

(assert (= bs!1374468 d!1833167))

(declare-fun m!6759364 () Bool)

(assert (=> bs!1374468 m!6759364))

(assert (=> bs!1374468 m!6759290))

(assert (=> bs!1374468 m!6759290))

(assert (=> bs!1374468 m!6759292))

(assert (=> b!5827952 d!1833167))

(declare-fun d!1833169 () Bool)

(assert (=> d!1833169 (= (isEmpty!35681 lt!2302669) ((_ is Nil!63812) lt!2302669))))

(assert (=> b!5827947 d!1833169))

(declare-fun b!5828079 () Bool)

(declare-fun e!3576001 () Bool)

(declare-fun lt!2302688 () Bool)

(declare-fun call!455166 () Bool)

(assert (=> b!5828079 (= e!3576001 (= lt!2302688 call!455166))))

(declare-fun bm!455161 () Bool)

(declare-fun isEmpty!35682 (List!63938) Bool)

(assert (=> bm!455161 (= call!455166 (isEmpty!35682 s!2326))))

(declare-fun b!5828080 () Bool)

(declare-fun res!2456568 () Bool)

(declare-fun e!3576003 () Bool)

(assert (=> b!5828080 (=> res!2456568 e!3576003)))

(declare-fun e!3576005 () Bool)

(assert (=> b!5828080 (= res!2456568 e!3576005)))

(declare-fun res!2456567 () Bool)

(assert (=> b!5828080 (=> (not res!2456567) (not e!3576005))))

(assert (=> b!5828080 (= res!2456567 lt!2302688)))

(declare-fun b!5828081 () Bool)

(declare-fun res!2456572 () Bool)

(declare-fun e!3576004 () Bool)

(assert (=> b!5828081 (=> res!2456572 e!3576004)))

(declare-fun tail!11405 (List!63938) List!63938)

(assert (=> b!5828081 (= res!2456572 (not (isEmpty!35682 (tail!11405 s!2326))))))

(declare-fun b!5828083 () Bool)

(declare-fun e!3576007 () Bool)

(assert (=> b!5828083 (= e!3576003 e!3576007)))

(declare-fun res!2456569 () Bool)

(assert (=> b!5828083 (=> (not res!2456569) (not e!3576007))))

(assert (=> b!5828083 (= res!2456569 (not lt!2302688))))

(declare-fun b!5828084 () Bool)

(declare-fun head!12320 (List!63938) C!32028)

(assert (=> b!5828084 (= e!3576005 (= (head!12320 s!2326) (c!1032621 r!7292)))))

(declare-fun b!5828085 () Bool)

(declare-fun e!3576002 () Bool)

(assert (=> b!5828085 (= e!3576002 (not lt!2302688))))

(declare-fun b!5828086 () Bool)

(declare-fun e!3576006 () Bool)

(declare-fun derivativeStep!4621 (Regex!15879 C!32028) Regex!15879)

(assert (=> b!5828086 (= e!3576006 (matchR!8062 (derivativeStep!4621 r!7292 (head!12320 s!2326)) (tail!11405 s!2326)))))

(declare-fun d!1833171 () Bool)

(assert (=> d!1833171 e!3576001))

(declare-fun c!1032661 () Bool)

(assert (=> d!1833171 (= c!1032661 ((_ is EmptyExpr!15879) r!7292))))

(assert (=> d!1833171 (= lt!2302688 e!3576006)))

(declare-fun c!1032663 () Bool)

(assert (=> d!1833171 (= c!1032663 (isEmpty!35682 s!2326))))

(assert (=> d!1833171 (validRegex!7615 r!7292)))

(assert (=> d!1833171 (= (matchR!8062 r!7292 s!2326) lt!2302688)))

(declare-fun b!5828082 () Bool)

(assert (=> b!5828082 (= e!3576007 e!3576004)))

(declare-fun res!2456570 () Bool)

(assert (=> b!5828082 (=> res!2456570 e!3576004)))

(assert (=> b!5828082 (= res!2456570 call!455166)))

(declare-fun b!5828087 () Bool)

(declare-fun res!2456573 () Bool)

(assert (=> b!5828087 (=> (not res!2456573) (not e!3576005))))

(assert (=> b!5828087 (= res!2456573 (not call!455166))))

(declare-fun b!5828088 () Bool)

(assert (=> b!5828088 (= e!3576004 (not (= (head!12320 s!2326) (c!1032621 r!7292))))))

(declare-fun b!5828089 () Bool)

(declare-fun res!2456574 () Bool)

(assert (=> b!5828089 (=> res!2456574 e!3576003)))

(assert (=> b!5828089 (= res!2456574 (not ((_ is ElementMatch!15879) r!7292)))))

(assert (=> b!5828089 (= e!3576002 e!3576003)))

(declare-fun b!5828090 () Bool)

(assert (=> b!5828090 (= e!3576001 e!3576002)))

(declare-fun c!1032662 () Bool)

(assert (=> b!5828090 (= c!1032662 ((_ is EmptyLang!15879) r!7292))))

(declare-fun b!5828091 () Bool)

(declare-fun res!2456571 () Bool)

(assert (=> b!5828091 (=> (not res!2456571) (not e!3576005))))

(assert (=> b!5828091 (= res!2456571 (isEmpty!35682 (tail!11405 s!2326)))))

(declare-fun b!5828092 () Bool)

(assert (=> b!5828092 (= e!3576006 (nullable!5881 r!7292))))

(assert (= (and d!1833171 c!1032663) b!5828092))

(assert (= (and d!1833171 (not c!1032663)) b!5828086))

(assert (= (and d!1833171 c!1032661) b!5828079))

(assert (= (and d!1833171 (not c!1032661)) b!5828090))

(assert (= (and b!5828090 c!1032662) b!5828085))

(assert (= (and b!5828090 (not c!1032662)) b!5828089))

(assert (= (and b!5828089 (not res!2456574)) b!5828080))

(assert (= (and b!5828080 res!2456567) b!5828087))

(assert (= (and b!5828087 res!2456573) b!5828091))

(assert (= (and b!5828091 res!2456571) b!5828084))

(assert (= (and b!5828080 (not res!2456568)) b!5828083))

(assert (= (and b!5828083 res!2456569) b!5828082))

(assert (= (and b!5828082 (not res!2456570)) b!5828081))

(assert (= (and b!5828081 (not res!2456572)) b!5828088))

(assert (= (or b!5828079 b!5828082 b!5828087) bm!455161))

(declare-fun m!6759366 () Bool)

(assert (=> b!5828086 m!6759366))

(assert (=> b!5828086 m!6759366))

(declare-fun m!6759368 () Bool)

(assert (=> b!5828086 m!6759368))

(declare-fun m!6759370 () Bool)

(assert (=> b!5828086 m!6759370))

(assert (=> b!5828086 m!6759368))

(assert (=> b!5828086 m!6759370))

(declare-fun m!6759372 () Bool)

(assert (=> b!5828086 m!6759372))

(declare-fun m!6759374 () Bool)

(assert (=> d!1833171 m!6759374))

(assert (=> d!1833171 m!6759282))

(assert (=> b!5828088 m!6759366))

(assert (=> b!5828081 m!6759370))

(assert (=> b!5828081 m!6759370))

(declare-fun m!6759376 () Bool)

(assert (=> b!5828081 m!6759376))

(assert (=> bm!455161 m!6759374))

(declare-fun m!6759378 () Bool)

(assert (=> b!5828092 m!6759378))

(assert (=> b!5828091 m!6759370))

(assert (=> b!5828091 m!6759370))

(assert (=> b!5828091 m!6759376))

(assert (=> b!5828084 m!6759366))

(assert (=> b!5827942 d!1833171))

(declare-fun b!5828134 () Bool)

(assert (=> b!5828134 true))

(assert (=> b!5828134 true))

(declare-fun bs!1374469 () Bool)

(declare-fun b!5828129 () Bool)

(assert (= bs!1374469 (and b!5828129 b!5828134)))

(declare-fun lambda!318877 () Int)

(declare-fun lambda!318876 () Int)

(assert (=> bs!1374469 (not (= lambda!318877 lambda!318876))))

(assert (=> b!5828129 true))

(assert (=> b!5828129 true))

(declare-fun b!5828125 () Bool)

(declare-fun e!3576029 () Bool)

(assert (=> b!5828125 (= e!3576029 (= s!2326 (Cons!63814 (c!1032621 r!7292) Nil!63814)))))

(declare-fun b!5828126 () Bool)

(declare-fun e!3576028 () Bool)

(declare-fun e!3576031 () Bool)

(assert (=> b!5828126 (= e!3576028 e!3576031)))

(declare-fun res!2456593 () Bool)

(assert (=> b!5828126 (= res!2456593 (matchRSpec!2980 (regOne!32271 r!7292) s!2326))))

(assert (=> b!5828126 (=> res!2456593 e!3576031)))

(declare-fun c!1032672 () Bool)

(declare-fun call!455172 () Bool)

(declare-fun bm!455166 () Bool)

(declare-fun Exists!2956 (Int) Bool)

(assert (=> bm!455166 (= call!455172 (Exists!2956 (ite c!1032672 lambda!318876 lambda!318877)))))

(declare-fun d!1833173 () Bool)

(declare-fun c!1032674 () Bool)

(assert (=> d!1833173 (= c!1032674 ((_ is EmptyExpr!15879) r!7292))))

(declare-fun e!3576032 () Bool)

(assert (=> d!1833173 (= (matchRSpec!2980 r!7292 s!2326) e!3576032)))

(declare-fun b!5828127 () Bool)

(declare-fun e!3576027 () Bool)

(assert (=> b!5828127 (= e!3576028 e!3576027)))

(assert (=> b!5828127 (= c!1032672 ((_ is Star!15879) r!7292))))

(declare-fun b!5828128 () Bool)

(declare-fun e!3576026 () Bool)

(assert (=> b!5828128 (= e!3576032 e!3576026)))

(declare-fun res!2456592 () Bool)

(assert (=> b!5828128 (= res!2456592 (not ((_ is EmptyLang!15879) r!7292)))))

(assert (=> b!5828128 (=> (not res!2456592) (not e!3576026))))

(assert (=> b!5828129 (= e!3576027 call!455172)))

(declare-fun b!5828130 () Bool)

(declare-fun call!455171 () Bool)

(assert (=> b!5828130 (= e!3576032 call!455171)))

(declare-fun b!5828131 () Bool)

(declare-fun res!2456591 () Bool)

(declare-fun e!3576030 () Bool)

(assert (=> b!5828131 (=> res!2456591 e!3576030)))

(assert (=> b!5828131 (= res!2456591 call!455171)))

(assert (=> b!5828131 (= e!3576027 e!3576030)))

(declare-fun b!5828132 () Bool)

(assert (=> b!5828132 (= e!3576031 (matchRSpec!2980 (regTwo!32271 r!7292) s!2326))))

(declare-fun b!5828133 () Bool)

(declare-fun c!1032675 () Bool)

(assert (=> b!5828133 (= c!1032675 ((_ is ElementMatch!15879) r!7292))))

(assert (=> b!5828133 (= e!3576026 e!3576029)))

(assert (=> b!5828134 (= e!3576030 call!455172)))

(declare-fun bm!455167 () Bool)

(assert (=> bm!455167 (= call!455171 (isEmpty!35682 s!2326))))

(declare-fun b!5828135 () Bool)

(declare-fun c!1032673 () Bool)

(assert (=> b!5828135 (= c!1032673 ((_ is Union!15879) r!7292))))

(assert (=> b!5828135 (= e!3576029 e!3576028)))

(assert (= (and d!1833173 c!1032674) b!5828130))

(assert (= (and d!1833173 (not c!1032674)) b!5828128))

(assert (= (and b!5828128 res!2456592) b!5828133))

(assert (= (and b!5828133 c!1032675) b!5828125))

(assert (= (and b!5828133 (not c!1032675)) b!5828135))

(assert (= (and b!5828135 c!1032673) b!5828126))

(assert (= (and b!5828135 (not c!1032673)) b!5828127))

(assert (= (and b!5828126 (not res!2456593)) b!5828132))

(assert (= (and b!5828127 c!1032672) b!5828131))

(assert (= (and b!5828127 (not c!1032672)) b!5828129))

(assert (= (and b!5828131 (not res!2456591)) b!5828134))

(assert (= (or b!5828134 b!5828129) bm!455166))

(assert (= (or b!5828130 b!5828131) bm!455167))

(declare-fun m!6759380 () Bool)

(assert (=> b!5828126 m!6759380))

(declare-fun m!6759382 () Bool)

(assert (=> bm!455166 m!6759382))

(declare-fun m!6759384 () Bool)

(assert (=> b!5828132 m!6759384))

(assert (=> bm!455167 m!6759374))

(assert (=> b!5827942 d!1833173))

(declare-fun d!1833175 () Bool)

(assert (=> d!1833175 (= (matchR!8062 r!7292 s!2326) (matchRSpec!2980 r!7292 s!2326))))

(declare-fun lt!2302691 () Unit!157029)

(declare-fun choose!44276 (Regex!15879 List!63938) Unit!157029)

(assert (=> d!1833175 (= lt!2302691 (choose!44276 r!7292 s!2326))))

(assert (=> d!1833175 (validRegex!7615 r!7292)))

(assert (=> d!1833175 (= (mainMatchTheorem!2980 r!7292 s!2326) lt!2302691)))

(declare-fun bs!1374470 () Bool)

(assert (= bs!1374470 d!1833175))

(assert (=> bs!1374470 m!6759298))

(assert (=> bs!1374470 m!6759300))

(declare-fun m!6759386 () Bool)

(assert (=> bs!1374470 m!6759386))

(assert (=> bs!1374470 m!6759282))

(assert (=> b!5827942 d!1833175))

(declare-fun d!1833177 () Bool)

(assert (=> d!1833177 (= (isEmpty!35680 (t!377292 zl!343)) ((_ is Nil!63813) (t!377292 zl!343)))))

(assert (=> b!5827946 d!1833177))

(declare-fun b!5828150 () Bool)

(declare-fun e!3576035 () Bool)

(assert (=> b!5828150 (= e!3576035 tp_is_empty!41011)))

(declare-fun b!5828152 () Bool)

(declare-fun tp!1610012 () Bool)

(assert (=> b!5828152 (= e!3576035 tp!1610012)))

(declare-fun b!5828153 () Bool)

(declare-fun tp!1610014 () Bool)

(declare-fun tp!1610011 () Bool)

(assert (=> b!5828153 (= e!3576035 (and tp!1610014 tp!1610011))))

(assert (=> b!5827954 (= tp!1609998 e!3576035)))

(declare-fun b!5828151 () Bool)

(declare-fun tp!1610013 () Bool)

(declare-fun tp!1610015 () Bool)

(assert (=> b!5828151 (= e!3576035 (and tp!1610013 tp!1610015))))

(assert (= (and b!5827954 ((_ is ElementMatch!15879) (reg!16208 r!7292))) b!5828150))

(assert (= (and b!5827954 ((_ is Concat!24724) (reg!16208 r!7292))) b!5828151))

(assert (= (and b!5827954 ((_ is Star!15879) (reg!16208 r!7292))) b!5828152))

(assert (= (and b!5827954 ((_ is Union!15879) (reg!16208 r!7292))) b!5828153))

(declare-fun condSetEmpty!39397 () Bool)

(assert (=> setNonEmpty!39394 (= condSetEmpty!39397 (= setRest!39394 ((as const (Array Context!10526 Bool)) false)))))

(declare-fun setRes!39397 () Bool)

(assert (=> setNonEmpty!39394 (= tp!1609994 setRes!39397)))

(declare-fun setIsEmpty!39397 () Bool)

(assert (=> setIsEmpty!39397 setRes!39397))

(declare-fun e!3576038 () Bool)

(declare-fun tp!1610020 () Bool)

(declare-fun setElem!39397 () Context!10526)

(declare-fun setNonEmpty!39397 () Bool)

(assert (=> setNonEmpty!39397 (= setRes!39397 (and tp!1610020 (inv!82944 setElem!39397) e!3576038))))

(declare-fun setRest!39397 () (InoxSet Context!10526))

(assert (=> setNonEmpty!39397 (= setRest!39394 ((_ map or) (store ((as const (Array Context!10526 Bool)) false) setElem!39397 true) setRest!39397))))

(declare-fun b!5828158 () Bool)

(declare-fun tp!1610021 () Bool)

(assert (=> b!5828158 (= e!3576038 tp!1610021)))

(assert (= (and setNonEmpty!39394 condSetEmpty!39397) setIsEmpty!39397))

(assert (= (and setNonEmpty!39394 (not condSetEmpty!39397)) setNonEmpty!39397))

(assert (= setNonEmpty!39397 b!5828158))

(declare-fun m!6759388 () Bool)

(assert (=> setNonEmpty!39397 m!6759388))

(declare-fun b!5828166 () Bool)

(declare-fun e!3576044 () Bool)

(declare-fun tp!1610026 () Bool)

(assert (=> b!5828166 (= e!3576044 tp!1610026)))

(declare-fun tp!1610027 () Bool)

(declare-fun b!5828165 () Bool)

(declare-fun e!3576043 () Bool)

(assert (=> b!5828165 (= e!3576043 (and (inv!82944 (h!70261 (t!377292 zl!343))) e!3576044 tp!1610027))))

(assert (=> b!5827948 (= tp!1609999 e!3576043)))

(assert (= b!5828165 b!5828166))

(assert (= (and b!5827948 ((_ is Cons!63813) (t!377292 zl!343))) b!5828165))

(declare-fun m!6759390 () Bool)

(assert (=> b!5828165 m!6759390))

(declare-fun b!5828167 () Bool)

(declare-fun e!3576045 () Bool)

(assert (=> b!5828167 (= e!3576045 tp_is_empty!41011)))

(declare-fun b!5828169 () Bool)

(declare-fun tp!1610029 () Bool)

(assert (=> b!5828169 (= e!3576045 tp!1610029)))

(declare-fun b!5828170 () Bool)

(declare-fun tp!1610031 () Bool)

(declare-fun tp!1610028 () Bool)

(assert (=> b!5828170 (= e!3576045 (and tp!1610031 tp!1610028))))

(assert (=> b!5827939 (= tp!1609995 e!3576045)))

(declare-fun b!5828168 () Bool)

(declare-fun tp!1610030 () Bool)

(declare-fun tp!1610032 () Bool)

(assert (=> b!5828168 (= e!3576045 (and tp!1610030 tp!1610032))))

(assert (= (and b!5827939 ((_ is ElementMatch!15879) (regOne!32271 r!7292))) b!5828167))

(assert (= (and b!5827939 ((_ is Concat!24724) (regOne!32271 r!7292))) b!5828168))

(assert (= (and b!5827939 ((_ is Star!15879) (regOne!32271 r!7292))) b!5828169))

(assert (= (and b!5827939 ((_ is Union!15879) (regOne!32271 r!7292))) b!5828170))

(declare-fun b!5828171 () Bool)

(declare-fun e!3576046 () Bool)

(assert (=> b!5828171 (= e!3576046 tp_is_empty!41011)))

(declare-fun b!5828173 () Bool)

(declare-fun tp!1610034 () Bool)

(assert (=> b!5828173 (= e!3576046 tp!1610034)))

(declare-fun b!5828174 () Bool)

(declare-fun tp!1610036 () Bool)

(declare-fun tp!1610033 () Bool)

(assert (=> b!5828174 (= e!3576046 (and tp!1610036 tp!1610033))))

(assert (=> b!5827939 (= tp!1609997 e!3576046)))

(declare-fun b!5828172 () Bool)

(declare-fun tp!1610035 () Bool)

(declare-fun tp!1610037 () Bool)

(assert (=> b!5828172 (= e!3576046 (and tp!1610035 tp!1610037))))

(assert (= (and b!5827939 ((_ is ElementMatch!15879) (regTwo!32271 r!7292))) b!5828171))

(assert (= (and b!5827939 ((_ is Concat!24724) (regTwo!32271 r!7292))) b!5828172))

(assert (= (and b!5827939 ((_ is Star!15879) (regTwo!32271 r!7292))) b!5828173))

(assert (= (and b!5827939 ((_ is Union!15879) (regTwo!32271 r!7292))) b!5828174))

(declare-fun b!5828179 () Bool)

(declare-fun e!3576049 () Bool)

(declare-fun tp!1610042 () Bool)

(declare-fun tp!1610043 () Bool)

(assert (=> b!5828179 (= e!3576049 (and tp!1610042 tp!1610043))))

(assert (=> b!5827937 (= tp!1609993 e!3576049)))

(assert (= (and b!5827937 ((_ is Cons!63812) (exprs!5763 (h!70261 zl!343)))) b!5828179))

(declare-fun b!5828184 () Bool)

(declare-fun e!3576052 () Bool)

(declare-fun tp!1610046 () Bool)

(assert (=> b!5828184 (= e!3576052 (and tp_is_empty!41011 tp!1610046))))

(assert (=> b!5827951 (= tp!1609992 e!3576052)))

(assert (= (and b!5827951 ((_ is Cons!63814) (t!377293 s!2326))) b!5828184))

(declare-fun b!5828185 () Bool)

(declare-fun e!3576053 () Bool)

(assert (=> b!5828185 (= e!3576053 tp_is_empty!41011)))

(declare-fun b!5828187 () Bool)

(declare-fun tp!1610048 () Bool)

(assert (=> b!5828187 (= e!3576053 tp!1610048)))

(declare-fun b!5828188 () Bool)

(declare-fun tp!1610050 () Bool)

(declare-fun tp!1610047 () Bool)

(assert (=> b!5828188 (= e!3576053 (and tp!1610050 tp!1610047))))

(assert (=> b!5827941 (= tp!1609996 e!3576053)))

(declare-fun b!5828186 () Bool)

(declare-fun tp!1610049 () Bool)

(declare-fun tp!1610051 () Bool)

(assert (=> b!5828186 (= e!3576053 (and tp!1610049 tp!1610051))))

(assert (= (and b!5827941 ((_ is ElementMatch!15879) (regOne!32270 r!7292))) b!5828185))

(assert (= (and b!5827941 ((_ is Concat!24724) (regOne!32270 r!7292))) b!5828186))

(assert (= (and b!5827941 ((_ is Star!15879) (regOne!32270 r!7292))) b!5828187))

(assert (= (and b!5827941 ((_ is Union!15879) (regOne!32270 r!7292))) b!5828188))

(declare-fun b!5828189 () Bool)

(declare-fun e!3576054 () Bool)

(assert (=> b!5828189 (= e!3576054 tp_is_empty!41011)))

(declare-fun b!5828191 () Bool)

(declare-fun tp!1610053 () Bool)

(assert (=> b!5828191 (= e!3576054 tp!1610053)))

(declare-fun b!5828192 () Bool)

(declare-fun tp!1610055 () Bool)

(declare-fun tp!1610052 () Bool)

(assert (=> b!5828192 (= e!3576054 (and tp!1610055 tp!1610052))))

(assert (=> b!5827941 (= tp!1609991 e!3576054)))

(declare-fun b!5828190 () Bool)

(declare-fun tp!1610054 () Bool)

(declare-fun tp!1610056 () Bool)

(assert (=> b!5828190 (= e!3576054 (and tp!1610054 tp!1610056))))

(assert (= (and b!5827941 ((_ is ElementMatch!15879) (regTwo!32270 r!7292))) b!5828189))

(assert (= (and b!5827941 ((_ is Concat!24724) (regTwo!32270 r!7292))) b!5828190))

(assert (= (and b!5827941 ((_ is Star!15879) (regTwo!32270 r!7292))) b!5828191))

(assert (= (and b!5827941 ((_ is Union!15879) (regTwo!32270 r!7292))) b!5828192))

(declare-fun b!5828193 () Bool)

(declare-fun e!3576055 () Bool)

(declare-fun tp!1610057 () Bool)

(declare-fun tp!1610058 () Bool)

(assert (=> b!5828193 (= e!3576055 (and tp!1610057 tp!1610058))))

(assert (=> b!5827949 (= tp!1610000 e!3576055)))

(assert (= (and b!5827949 ((_ is Cons!63812) (exprs!5763 setElem!39394))) b!5828193))

(check-sat (not b!5827981) (not b!5828088) (not b!5828132) (not b!5828170) (not b!5828192) (not d!1833159) (not b!5828084) tp_is_empty!41011 (not b!5828188) (not b!5828187) (not bm!455161) (not b!5828168) (not b!5828038) (not b!5828186) (not b!5828184) (not b!5828174) (not b!5828153) (not b!5827983) (not b!5827975) (not b!5828165) (not b!5828092) (not b!5828126) (not bm!455167) (not b!5828050) (not d!1833155) (not d!1833151) (not b!5828086) (not b!5827989) (not b!5827980) (not b!5827984) (not b!5828013) (not b!5828190) (not bm!455157) (not bm!455156) (not b!5828158) (not d!1833171) (not bm!455166) (not b!5827978) (not d!1833167) (not setNonEmpty!39397) (not b!5828046) (not b!5828152) (not b!5828042) (not b!5828169) (not b!5828091) (not b!5828193) (not b!5828179) (not b!5828039) (not b!5828151) (not d!1833163) (not b!5827979) (not d!1833165) (not b!5828191) (not b!5828173) (not d!1833157) (not b!5828043) (not b!5828041) (not d!1833175) (not b!5828172) (not b!5828044) (not b!5828166) (not b!5828081))
(check-sat)
