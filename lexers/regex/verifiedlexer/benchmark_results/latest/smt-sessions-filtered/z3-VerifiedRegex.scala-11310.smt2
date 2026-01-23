; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!596512 () Bool)

(assert start!596512)

(declare-fun b!5821861 () Bool)

(declare-fun e!3572874 () Bool)

(declare-fun tp!1606703 () Bool)

(assert (=> b!5821861 (= e!3572874 tp!1606703)))

(declare-fun b!5821862 () Bool)

(declare-fun e!3572873 () Bool)

(declare-fun tp!1606702 () Bool)

(declare-fun tp!1606704 () Bool)

(assert (=> b!5821862 (= e!3572873 (and tp!1606702 tp!1606704))))

(declare-fun b!5821863 () Bool)

(declare-fun res!2454900 () Bool)

(declare-fun e!3572870 () Bool)

(assert (=> b!5821863 (=> (not res!2454900) (not e!3572870))))

(declare-datatypes ((C!32004 0))(
  ( (C!32005 (val!25704 Int)) )
))
(declare-datatypes ((Regex!15867 0))(
  ( (ElementMatch!15867 (c!1031731 C!32004)) (Concat!24712 (regOne!32246 Regex!15867) (regTwo!32246 Regex!15867)) (EmptyExpr!15867) (Star!15867 (reg!16196 Regex!15867)) (EmptyLang!15867) (Union!15867 (regOne!32247 Regex!15867) (regTwo!32247 Regex!15867)) )
))
(declare-fun r!7292 () Regex!15867)

(declare-datatypes ((List!63900 0))(
  ( (Nil!63776) (Cons!63776 (h!70224 Regex!15867) (t!377255 List!63900)) )
))
(declare-datatypes ((Context!10502 0))(
  ( (Context!10503 (exprs!5751 List!63900)) )
))
(declare-datatypes ((List!63901 0))(
  ( (Nil!63777) (Cons!63777 (h!70225 Context!10502) (t!377256 List!63901)) )
))
(declare-fun zl!343 () List!63901)

(declare-fun unfocusZipper!1609 (List!63901) Regex!15867)

(assert (=> b!5821863 (= res!2454900 (= r!7292 (unfocusZipper!1609 zl!343)))))

(declare-fun b!5821864 () Bool)

(declare-fun e!3572871 () Bool)

(declare-fun isEmpty!35653 (List!63901) Bool)

(assert (=> b!5821864 (= e!3572871 (isEmpty!35653 (t!377256 zl!343)))))

(declare-fun b!5821865 () Bool)

(declare-fun e!3572875 () Bool)

(declare-fun isEmptyLang!1319 (Regex!15867) Bool)

(assert (=> b!5821865 (= e!3572875 (isEmptyLang!1319 r!7292))))

(declare-fun b!5821866 () Bool)

(declare-fun res!2454899 () Bool)

(assert (=> b!5821866 (=> res!2454899 e!3572875)))

(get-info :version)

(assert (=> b!5821866 (= res!2454899 ((_ is Cons!63777) zl!343))))

(declare-fun res!2454902 () Bool)

(assert (=> start!596512 (=> (not res!2454902) (not e!3572870))))

(declare-fun validRegex!7603 (Regex!15867) Bool)

(assert (=> start!596512 (= res!2454902 (validRegex!7603 r!7292))))

(assert (=> start!596512 e!3572870))

(assert (=> start!596512 e!3572873))

(declare-fun condSetEmpty!39320 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!10502))

(assert (=> start!596512 (= condSetEmpty!39320 (= z!1189 ((as const (Array Context!10502 Bool)) false)))))

(declare-fun setRes!39320 () Bool)

(assert (=> start!596512 setRes!39320))

(declare-fun e!3572876 () Bool)

(assert (=> start!596512 e!3572876))

(declare-fun e!3572872 () Bool)

(assert (=> start!596512 e!3572872))

(declare-fun setIsEmpty!39320 () Bool)

(assert (=> setIsEmpty!39320 setRes!39320))

(declare-fun b!5821867 () Bool)

(declare-fun tp_is_empty!40987 () Bool)

(assert (=> b!5821867 (= e!3572873 tp_is_empty!40987)))

(declare-fun b!5821868 () Bool)

(declare-fun res!2454898 () Bool)

(assert (=> b!5821868 (=> (not res!2454898) (not e!3572870))))

(declare-fun toList!9651 ((InoxSet Context!10502)) List!63901)

(assert (=> b!5821868 (= res!2454898 (= (toList!9651 z!1189) zl!343))))

(declare-fun b!5821869 () Bool)

(declare-fun tp!1606698 () Bool)

(assert (=> b!5821869 (= e!3572873 tp!1606698)))

(declare-fun b!5821870 () Bool)

(declare-fun tp!1606699 () Bool)

(declare-fun tp!1606695 () Bool)

(assert (=> b!5821870 (= e!3572873 (and tp!1606699 tp!1606695))))

(declare-fun b!5821871 () Bool)

(assert (=> b!5821871 (= e!3572870 (not e!3572875))))

(declare-fun res!2454897 () Bool)

(assert (=> b!5821871 (=> res!2454897 e!3572875)))

(assert (=> b!5821871 (= res!2454897 e!3572871)))

(declare-fun res!2454901 () Bool)

(assert (=> b!5821871 (=> (not res!2454901) (not e!3572871))))

(assert (=> b!5821871 (= res!2454901 ((_ is Cons!63777) zl!343))))

(declare-datatypes ((List!63902 0))(
  ( (Nil!63778) (Cons!63778 (h!70226 C!32004) (t!377257 List!63902)) )
))
(declare-fun s!2326 () List!63902)

(declare-fun matchR!8052 (Regex!15867 List!63902) Bool)

(declare-fun matchRSpec!2970 (Regex!15867 List!63902) Bool)

(assert (=> b!5821871 (= (matchR!8052 r!7292 s!2326) (matchRSpec!2970 r!7292 s!2326))))

(declare-datatypes ((Unit!157009 0))(
  ( (Unit!157010) )
))
(declare-fun lt!2302340 () Unit!157009)

(declare-fun mainMatchTheorem!2970 (Regex!15867 List!63902) Unit!157009)

(assert (=> b!5821871 (= lt!2302340 (mainMatchTheorem!2970 r!7292 s!2326))))

(declare-fun b!5821872 () Bool)

(declare-fun tp!1606700 () Bool)

(assert (=> b!5821872 (= e!3572872 (and tp_is_empty!40987 tp!1606700))))

(declare-fun b!5821873 () Bool)

(declare-fun tp!1606697 () Bool)

(declare-fun inv!82914 (Context!10502) Bool)

(assert (=> b!5821873 (= e!3572876 (and (inv!82914 (h!70225 zl!343)) e!3572874 tp!1606697))))

(declare-fun setNonEmpty!39320 () Bool)

(declare-fun setElem!39320 () Context!10502)

(declare-fun e!3572877 () Bool)

(declare-fun tp!1606701 () Bool)

(assert (=> setNonEmpty!39320 (= setRes!39320 (and tp!1606701 (inv!82914 setElem!39320) e!3572877))))

(declare-fun setRest!39320 () (InoxSet Context!10502))

(assert (=> setNonEmpty!39320 (= z!1189 ((_ map or) (store ((as const (Array Context!10502 Bool)) false) setElem!39320 true) setRest!39320))))

(declare-fun b!5821874 () Bool)

(declare-fun tp!1606696 () Bool)

(assert (=> b!5821874 (= e!3572877 tp!1606696)))

(assert (= (and start!596512 res!2454902) b!5821868))

(assert (= (and b!5821868 res!2454898) b!5821863))

(assert (= (and b!5821863 res!2454900) b!5821871))

(assert (= (and b!5821871 res!2454901) b!5821864))

(assert (= (and b!5821871 (not res!2454897)) b!5821866))

(assert (= (and b!5821866 (not res!2454899)) b!5821865))

(assert (= (and start!596512 ((_ is ElementMatch!15867) r!7292)) b!5821867))

(assert (= (and start!596512 ((_ is Concat!24712) r!7292)) b!5821862))

(assert (= (and start!596512 ((_ is Star!15867) r!7292)) b!5821869))

(assert (= (and start!596512 ((_ is Union!15867) r!7292)) b!5821870))

(assert (= (and start!596512 condSetEmpty!39320) setIsEmpty!39320))

(assert (= (and start!596512 (not condSetEmpty!39320)) setNonEmpty!39320))

(assert (= setNonEmpty!39320 b!5821874))

(assert (= b!5821873 b!5821861))

(assert (= (and start!596512 ((_ is Cons!63777) zl!343)) b!5821873))

(assert (= (and start!596512 ((_ is Cons!63778) s!2326)) b!5821872))

(declare-fun m!6756668 () Bool)

(assert (=> b!5821873 m!6756668))

(declare-fun m!6756670 () Bool)

(assert (=> b!5821865 m!6756670))

(declare-fun m!6756672 () Bool)

(assert (=> start!596512 m!6756672))

(declare-fun m!6756674 () Bool)

(assert (=> b!5821871 m!6756674))

(declare-fun m!6756676 () Bool)

(assert (=> b!5821871 m!6756676))

(declare-fun m!6756678 () Bool)

(assert (=> b!5821871 m!6756678))

(declare-fun m!6756680 () Bool)

(assert (=> b!5821864 m!6756680))

(declare-fun m!6756682 () Bool)

(assert (=> b!5821863 m!6756682))

(declare-fun m!6756684 () Bool)

(assert (=> setNonEmpty!39320 m!6756684))

(declare-fun m!6756686 () Bool)

(assert (=> b!5821868 m!6756686))

(check-sat (not b!5821870) (not start!596512) (not b!5821868) (not b!5821874) (not b!5821862) (not b!5821871) (not b!5821861) (not setNonEmpty!39320) (not b!5821863) (not b!5821872) (not b!5821865) (not b!5821873) (not b!5821864) (not b!5821869) tp_is_empty!40987)
(check-sat)
(get-model)

(declare-fun d!1832071 () Bool)

(declare-fun lt!2302343 () Regex!15867)

(assert (=> d!1832071 (validRegex!7603 lt!2302343)))

(declare-fun generalisedUnion!1712 (List!63900) Regex!15867)

(declare-fun unfocusZipperList!1289 (List!63901) List!63900)

(assert (=> d!1832071 (= lt!2302343 (generalisedUnion!1712 (unfocusZipperList!1289 zl!343)))))

(assert (=> d!1832071 (= (unfocusZipper!1609 zl!343) lt!2302343)))

(declare-fun bs!1373616 () Bool)

(assert (= bs!1373616 d!1832071))

(declare-fun m!6756688 () Bool)

(assert (=> bs!1373616 m!6756688))

(declare-fun m!6756690 () Bool)

(assert (=> bs!1373616 m!6756690))

(assert (=> bs!1373616 m!6756690))

(declare-fun m!6756692 () Bool)

(assert (=> bs!1373616 m!6756692))

(assert (=> b!5821863 d!1832071))

(declare-fun d!1832073 () Bool)

(declare-fun lambda!318637 () Int)

(declare-fun forall!14961 (List!63900 Int) Bool)

(assert (=> d!1832073 (= (inv!82914 (h!70225 zl!343)) (forall!14961 (exprs!5751 (h!70225 zl!343)) lambda!318637))))

(declare-fun bs!1373623 () Bool)

(assert (= bs!1373623 d!1832073))

(declare-fun m!6756742 () Bool)

(assert (=> bs!1373623 m!6756742))

(assert (=> b!5821873 d!1832073))

(declare-fun b!5822066 () Bool)

(declare-fun e!3572988 () Bool)

(declare-fun e!3572987 () Bool)

(assert (=> b!5822066 (= e!3572988 e!3572987)))

(declare-fun c!1031764 () Bool)

(assert (=> b!5822066 (= c!1031764 ((_ is Star!15867) r!7292))))

(declare-fun b!5822067 () Bool)

(declare-fun res!2454977 () Bool)

(declare-fun e!3572991 () Bool)

(assert (=> b!5822067 (=> res!2454977 e!3572991)))

(assert (=> b!5822067 (= res!2454977 (not ((_ is Concat!24712) r!7292)))))

(declare-fun e!3572990 () Bool)

(assert (=> b!5822067 (= e!3572990 e!3572991)))

(declare-fun b!5822068 () Bool)

(declare-fun res!2454978 () Bool)

(declare-fun e!3572986 () Bool)

(assert (=> b!5822068 (=> (not res!2454978) (not e!3572986))))

(declare-fun call!454672 () Bool)

(assert (=> b!5822068 (= res!2454978 call!454672)))

(assert (=> b!5822068 (= e!3572990 e!3572986)))

(declare-fun b!5822069 () Bool)

(declare-fun e!3572985 () Bool)

(assert (=> b!5822069 (= e!3572991 e!3572985)))

(declare-fun res!2454976 () Bool)

(assert (=> b!5822069 (=> (not res!2454976) (not e!3572985))))

(assert (=> b!5822069 (= res!2454976 call!454672)))

(declare-fun b!5822070 () Bool)

(declare-fun call!454671 () Bool)

(assert (=> b!5822070 (= e!3572985 call!454671)))

(declare-fun bm!454666 () Bool)

(declare-fun c!1031763 () Bool)

(assert (=> bm!454666 (= call!454672 (validRegex!7603 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))))))

(declare-fun b!5822071 () Bool)

(assert (=> b!5822071 (= e!3572986 call!454671)))

(declare-fun d!1832093 () Bool)

(declare-fun res!2454974 () Bool)

(assert (=> d!1832093 (=> res!2454974 e!3572988)))

(assert (=> d!1832093 (= res!2454974 ((_ is ElementMatch!15867) r!7292))))

(assert (=> d!1832093 (= (validRegex!7603 r!7292) e!3572988)))

(declare-fun b!5822072 () Bool)

(assert (=> b!5822072 (= e!3572987 e!3572990)))

(assert (=> b!5822072 (= c!1031763 ((_ is Union!15867) r!7292))))

(declare-fun b!5822073 () Bool)

(declare-fun e!3572989 () Bool)

(declare-fun call!454673 () Bool)

(assert (=> b!5822073 (= e!3572989 call!454673)))

(declare-fun bm!454667 () Bool)

(assert (=> bm!454667 (= call!454673 (validRegex!7603 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))))))

(declare-fun bm!454668 () Bool)

(assert (=> bm!454668 (= call!454671 call!454673)))

(declare-fun b!5822074 () Bool)

(assert (=> b!5822074 (= e!3572987 e!3572989)))

(declare-fun res!2454975 () Bool)

(declare-fun nullable!5873 (Regex!15867) Bool)

(assert (=> b!5822074 (= res!2454975 (not (nullable!5873 (reg!16196 r!7292))))))

(assert (=> b!5822074 (=> (not res!2454975) (not e!3572989))))

(assert (= (and d!1832093 (not res!2454974)) b!5822066))

(assert (= (and b!5822066 c!1031764) b!5822074))

(assert (= (and b!5822066 (not c!1031764)) b!5822072))

(assert (= (and b!5822074 res!2454975) b!5822073))

(assert (= (and b!5822072 c!1031763) b!5822068))

(assert (= (and b!5822072 (not c!1031763)) b!5822067))

(assert (= (and b!5822068 res!2454978) b!5822071))

(assert (= (and b!5822067 (not res!2454977)) b!5822069))

(assert (= (and b!5822069 res!2454976) b!5822070))

(assert (= (or b!5822071 b!5822070) bm!454668))

(assert (= (or b!5822068 b!5822069) bm!454666))

(assert (= (or b!5822073 bm!454668) bm!454667))

(declare-fun m!6756744 () Bool)

(assert (=> bm!454666 m!6756744))

(declare-fun m!6756746 () Bool)

(assert (=> bm!454667 m!6756746))

(declare-fun m!6756748 () Bool)

(assert (=> b!5822074 m!6756748))

(assert (=> start!596512 d!1832093))

(declare-fun bm!454671 () Bool)

(declare-fun call!454676 () Bool)

(declare-fun isEmpty!35655 (List!63902) Bool)

(assert (=> bm!454671 (= call!454676 (isEmpty!35655 s!2326))))

(declare-fun b!5822103 () Bool)

(declare-fun res!2455001 () Bool)

(declare-fun e!3573007 () Bool)

(assert (=> b!5822103 (=> (not res!2455001) (not e!3573007))))

(assert (=> b!5822103 (= res!2455001 (not call!454676))))

(declare-fun b!5822104 () Bool)

(declare-fun e!3573008 () Bool)

(declare-fun e!3573012 () Bool)

(assert (=> b!5822104 (= e!3573008 e!3573012)))

(declare-fun res!2454997 () Bool)

(assert (=> b!5822104 (=> res!2454997 e!3573012)))

(assert (=> b!5822104 (= res!2454997 call!454676)))

(declare-fun d!1832095 () Bool)

(declare-fun e!3573011 () Bool)

(assert (=> d!1832095 e!3573011))

(declare-fun c!1031772 () Bool)

(assert (=> d!1832095 (= c!1031772 ((_ is EmptyExpr!15867) r!7292))))

(declare-fun lt!2302358 () Bool)

(declare-fun e!3573009 () Bool)

(assert (=> d!1832095 (= lt!2302358 e!3573009)))

(declare-fun c!1031771 () Bool)

(assert (=> d!1832095 (= c!1031771 (isEmpty!35655 s!2326))))

(assert (=> d!1832095 (validRegex!7603 r!7292)))

(assert (=> d!1832095 (= (matchR!8052 r!7292 s!2326) lt!2302358)))

(declare-fun b!5822105 () Bool)

(declare-fun derivativeStep!4614 (Regex!15867 C!32004) Regex!15867)

(declare-fun head!12304 (List!63902) C!32004)

(declare-fun tail!11389 (List!63902) List!63902)

(assert (=> b!5822105 (= e!3573009 (matchR!8052 (derivativeStep!4614 r!7292 (head!12304 s!2326)) (tail!11389 s!2326)))))

(declare-fun b!5822106 () Bool)

(declare-fun e!3573010 () Bool)

(assert (=> b!5822106 (= e!3573010 e!3573008)))

(declare-fun res!2455000 () Bool)

(assert (=> b!5822106 (=> (not res!2455000) (not e!3573008))))

(assert (=> b!5822106 (= res!2455000 (not lt!2302358))))

(declare-fun b!5822107 () Bool)

(declare-fun res!2454998 () Bool)

(assert (=> b!5822107 (=> res!2454998 e!3573012)))

(assert (=> b!5822107 (= res!2454998 (not (isEmpty!35655 (tail!11389 s!2326))))))

(declare-fun b!5822108 () Bool)

(declare-fun res!2455002 () Bool)

(assert (=> b!5822108 (=> res!2455002 e!3573010)))

(assert (=> b!5822108 (= res!2455002 (not ((_ is ElementMatch!15867) r!7292)))))

(declare-fun e!3573006 () Bool)

(assert (=> b!5822108 (= e!3573006 e!3573010)))

(declare-fun b!5822109 () Bool)

(assert (=> b!5822109 (= e!3573011 (= lt!2302358 call!454676))))

(declare-fun b!5822110 () Bool)

(declare-fun res!2454999 () Bool)

(assert (=> b!5822110 (=> (not res!2454999) (not e!3573007))))

(assert (=> b!5822110 (= res!2454999 (isEmpty!35655 (tail!11389 s!2326)))))

(declare-fun b!5822111 () Bool)

(assert (=> b!5822111 (= e!3573012 (not (= (head!12304 s!2326) (c!1031731 r!7292))))))

(declare-fun b!5822112 () Bool)

(declare-fun res!2454996 () Bool)

(assert (=> b!5822112 (=> res!2454996 e!3573010)))

(assert (=> b!5822112 (= res!2454996 e!3573007)))

(declare-fun res!2454995 () Bool)

(assert (=> b!5822112 (=> (not res!2454995) (not e!3573007))))

(assert (=> b!5822112 (= res!2454995 lt!2302358)))

(declare-fun b!5822113 () Bool)

(assert (=> b!5822113 (= e!3573009 (nullable!5873 r!7292))))

(declare-fun b!5822114 () Bool)

(assert (=> b!5822114 (= e!3573006 (not lt!2302358))))

(declare-fun b!5822115 () Bool)

(assert (=> b!5822115 (= e!3573011 e!3573006)))

(declare-fun c!1031773 () Bool)

(assert (=> b!5822115 (= c!1031773 ((_ is EmptyLang!15867) r!7292))))

(declare-fun b!5822116 () Bool)

(assert (=> b!5822116 (= e!3573007 (= (head!12304 s!2326) (c!1031731 r!7292)))))

(assert (= (and d!1832095 c!1031771) b!5822113))

(assert (= (and d!1832095 (not c!1031771)) b!5822105))

(assert (= (and d!1832095 c!1031772) b!5822109))

(assert (= (and d!1832095 (not c!1031772)) b!5822115))

(assert (= (and b!5822115 c!1031773) b!5822114))

(assert (= (and b!5822115 (not c!1031773)) b!5822108))

(assert (= (and b!5822108 (not res!2455002)) b!5822112))

(assert (= (and b!5822112 res!2454995) b!5822103))

(assert (= (and b!5822103 res!2455001) b!5822110))

(assert (= (and b!5822110 res!2454999) b!5822116))

(assert (= (and b!5822112 (not res!2454996)) b!5822106))

(assert (= (and b!5822106 res!2455000) b!5822104))

(assert (= (and b!5822104 (not res!2454997)) b!5822107))

(assert (= (and b!5822107 (not res!2454998)) b!5822111))

(assert (= (or b!5822109 b!5822103 b!5822104) bm!454671))

(declare-fun m!6756750 () Bool)

(assert (=> b!5822107 m!6756750))

(assert (=> b!5822107 m!6756750))

(declare-fun m!6756752 () Bool)

(assert (=> b!5822107 m!6756752))

(declare-fun m!6756754 () Bool)

(assert (=> b!5822113 m!6756754))

(declare-fun m!6756756 () Bool)

(assert (=> b!5822105 m!6756756))

(assert (=> b!5822105 m!6756756))

(declare-fun m!6756758 () Bool)

(assert (=> b!5822105 m!6756758))

(assert (=> b!5822105 m!6756750))

(assert (=> b!5822105 m!6756758))

(assert (=> b!5822105 m!6756750))

(declare-fun m!6756760 () Bool)

(assert (=> b!5822105 m!6756760))

(assert (=> b!5822111 m!6756756))

(declare-fun m!6756762 () Bool)

(assert (=> bm!454671 m!6756762))

(assert (=> b!5822116 m!6756756))

(assert (=> b!5822110 m!6756750))

(assert (=> b!5822110 m!6756750))

(assert (=> b!5822110 m!6756752))

(assert (=> d!1832095 m!6756762))

(assert (=> d!1832095 m!6756672))

(assert (=> b!5821871 d!1832095))

(declare-fun b!5822150 () Bool)

(assert (=> b!5822150 true))

(assert (=> b!5822150 true))

(declare-fun bs!1373624 () Bool)

(declare-fun b!5822149 () Bool)

(assert (= bs!1373624 (and b!5822149 b!5822150)))

(declare-fun lambda!318643 () Int)

(declare-fun lambda!318642 () Int)

(assert (=> bs!1373624 (not (= lambda!318643 lambda!318642))))

(assert (=> b!5822149 true))

(assert (=> b!5822149 true))

(declare-fun e!3573034 () Bool)

(declare-fun call!454681 () Bool)

(assert (=> b!5822149 (= e!3573034 call!454681)))

(declare-fun e!3573032 () Bool)

(assert (=> b!5822150 (= e!3573032 call!454681)))

(declare-fun b!5822151 () Bool)

(declare-fun e!3573035 () Bool)

(declare-fun call!454682 () Bool)

(assert (=> b!5822151 (= e!3573035 call!454682)))

(declare-fun d!1832097 () Bool)

(declare-fun c!1031783 () Bool)

(assert (=> d!1832097 (= c!1031783 ((_ is EmptyExpr!15867) r!7292))))

(assert (=> d!1832097 (= (matchRSpec!2970 r!7292 s!2326) e!3573035)))

(declare-fun b!5822152 () Bool)

(declare-fun res!2455021 () Bool)

(assert (=> b!5822152 (=> res!2455021 e!3573032)))

(assert (=> b!5822152 (= res!2455021 call!454682)))

(assert (=> b!5822152 (= e!3573034 e!3573032)))

(declare-fun bm!454676 () Bool)

(declare-fun c!1031784 () Bool)

(declare-fun Exists!2949 (Int) Bool)

(assert (=> bm!454676 (= call!454681 (Exists!2949 (ite c!1031784 lambda!318642 lambda!318643)))))

(declare-fun b!5822153 () Bool)

(declare-fun e!3573031 () Bool)

(declare-fun e!3573037 () Bool)

(assert (=> b!5822153 (= e!3573031 e!3573037)))

(declare-fun res!2455019 () Bool)

(assert (=> b!5822153 (= res!2455019 (matchRSpec!2970 (regOne!32247 r!7292) s!2326))))

(assert (=> b!5822153 (=> res!2455019 e!3573037)))

(declare-fun b!5822154 () Bool)

(assert (=> b!5822154 (= e!3573037 (matchRSpec!2970 (regTwo!32247 r!7292) s!2326))))

(declare-fun b!5822155 () Bool)

(declare-fun e!3573033 () Bool)

(assert (=> b!5822155 (= e!3573033 (= s!2326 (Cons!63778 (c!1031731 r!7292) Nil!63778)))))

(declare-fun bm!454677 () Bool)

(assert (=> bm!454677 (= call!454682 (isEmpty!35655 s!2326))))

(declare-fun b!5822156 () Bool)

(declare-fun c!1031785 () Bool)

(assert (=> b!5822156 (= c!1031785 ((_ is ElementMatch!15867) r!7292))))

(declare-fun e!3573036 () Bool)

(assert (=> b!5822156 (= e!3573036 e!3573033)))

(declare-fun b!5822157 () Bool)

(declare-fun c!1031782 () Bool)

(assert (=> b!5822157 (= c!1031782 ((_ is Union!15867) r!7292))))

(assert (=> b!5822157 (= e!3573033 e!3573031)))

(declare-fun b!5822158 () Bool)

(assert (=> b!5822158 (= e!3573031 e!3573034)))

(assert (=> b!5822158 (= c!1031784 ((_ is Star!15867) r!7292))))

(declare-fun b!5822159 () Bool)

(assert (=> b!5822159 (= e!3573035 e!3573036)))

(declare-fun res!2455020 () Bool)

(assert (=> b!5822159 (= res!2455020 (not ((_ is EmptyLang!15867) r!7292)))))

(assert (=> b!5822159 (=> (not res!2455020) (not e!3573036))))

(assert (= (and d!1832097 c!1031783) b!5822151))

(assert (= (and d!1832097 (not c!1031783)) b!5822159))

(assert (= (and b!5822159 res!2455020) b!5822156))

(assert (= (and b!5822156 c!1031785) b!5822155))

(assert (= (and b!5822156 (not c!1031785)) b!5822157))

(assert (= (and b!5822157 c!1031782) b!5822153))

(assert (= (and b!5822157 (not c!1031782)) b!5822158))

(assert (= (and b!5822153 (not res!2455019)) b!5822154))

(assert (= (and b!5822158 c!1031784) b!5822152))

(assert (= (and b!5822158 (not c!1031784)) b!5822149))

(assert (= (and b!5822152 (not res!2455021)) b!5822150))

(assert (= (or b!5822150 b!5822149) bm!454676))

(assert (= (or b!5822151 b!5822152) bm!454677))

(declare-fun m!6756764 () Bool)

(assert (=> bm!454676 m!6756764))

(declare-fun m!6756766 () Bool)

(assert (=> b!5822153 m!6756766))

(declare-fun m!6756768 () Bool)

(assert (=> b!5822154 m!6756768))

(assert (=> bm!454677 m!6756762))

(assert (=> b!5821871 d!1832097))

(declare-fun d!1832099 () Bool)

(assert (=> d!1832099 (= (matchR!8052 r!7292 s!2326) (matchRSpec!2970 r!7292 s!2326))))

(declare-fun lt!2302361 () Unit!157009)

(declare-fun choose!44252 (Regex!15867 List!63902) Unit!157009)

(assert (=> d!1832099 (= lt!2302361 (choose!44252 r!7292 s!2326))))

(assert (=> d!1832099 (validRegex!7603 r!7292)))

(assert (=> d!1832099 (= (mainMatchTheorem!2970 r!7292 s!2326) lt!2302361)))

(declare-fun bs!1373625 () Bool)

(assert (= bs!1373625 d!1832099))

(assert (=> bs!1373625 m!6756674))

(assert (=> bs!1373625 m!6756676))

(declare-fun m!6756770 () Bool)

(assert (=> bs!1373625 m!6756770))

(assert (=> bs!1373625 m!6756672))

(assert (=> b!5821871 d!1832099))

(declare-fun d!1832101 () Bool)

(assert (=> d!1832101 (= (isEmptyLang!1319 r!7292) ((_ is EmptyLang!15867) r!7292))))

(assert (=> b!5821865 d!1832101))

(declare-fun bs!1373626 () Bool)

(declare-fun d!1832103 () Bool)

(assert (= bs!1373626 (and d!1832103 d!1832073)))

(declare-fun lambda!318644 () Int)

(assert (=> bs!1373626 (= lambda!318644 lambda!318637)))

(assert (=> d!1832103 (= (inv!82914 setElem!39320) (forall!14961 (exprs!5751 setElem!39320) lambda!318644))))

(declare-fun bs!1373627 () Bool)

(assert (= bs!1373627 d!1832103))

(declare-fun m!6756772 () Bool)

(assert (=> bs!1373627 m!6756772))

(assert (=> setNonEmpty!39320 d!1832103))

(declare-fun d!1832105 () Bool)

(declare-fun e!3573040 () Bool)

(assert (=> d!1832105 e!3573040))

(declare-fun res!2455024 () Bool)

(assert (=> d!1832105 (=> (not res!2455024) (not e!3573040))))

(declare-fun lt!2302364 () List!63901)

(declare-fun noDuplicate!1740 (List!63901) Bool)

(assert (=> d!1832105 (= res!2455024 (noDuplicate!1740 lt!2302364))))

(declare-fun choose!44253 ((InoxSet Context!10502)) List!63901)

(assert (=> d!1832105 (= lt!2302364 (choose!44253 z!1189))))

(assert (=> d!1832105 (= (toList!9651 z!1189) lt!2302364)))

(declare-fun b!5822166 () Bool)

(declare-fun content!11706 (List!63901) (InoxSet Context!10502))

(assert (=> b!5822166 (= e!3573040 (= (content!11706 lt!2302364) z!1189))))

(assert (= (and d!1832105 res!2455024) b!5822166))

(declare-fun m!6756774 () Bool)

(assert (=> d!1832105 m!6756774))

(declare-fun m!6756776 () Bool)

(assert (=> d!1832105 m!6756776))

(declare-fun m!6756778 () Bool)

(assert (=> b!5822166 m!6756778))

(assert (=> b!5821868 d!1832105))

(declare-fun d!1832107 () Bool)

(assert (=> d!1832107 (= (isEmpty!35653 (t!377256 zl!343)) ((_ is Nil!63777) (t!377256 zl!343)))))

(assert (=> b!5821864 d!1832107))

(declare-fun b!5822174 () Bool)

(declare-fun e!3573046 () Bool)

(declare-fun tp!1606767 () Bool)

(assert (=> b!5822174 (= e!3573046 tp!1606767)))

(declare-fun b!5822173 () Bool)

(declare-fun e!3573045 () Bool)

(declare-fun tp!1606768 () Bool)

(assert (=> b!5822173 (= e!3573045 (and (inv!82914 (h!70225 (t!377256 zl!343))) e!3573046 tp!1606768))))

(assert (=> b!5821873 (= tp!1606697 e!3573045)))

(assert (= b!5822173 b!5822174))

(assert (= (and b!5821873 ((_ is Cons!63777) (t!377256 zl!343))) b!5822173))

(declare-fun m!6756780 () Bool)

(assert (=> b!5822173 m!6756780))

(declare-fun b!5822179 () Bool)

(declare-fun e!3573049 () Bool)

(declare-fun tp!1606771 () Bool)

(assert (=> b!5822179 (= e!3573049 (and tp_is_empty!40987 tp!1606771))))

(assert (=> b!5821872 (= tp!1606700 e!3573049)))

(assert (= (and b!5821872 ((_ is Cons!63778) (t!377257 s!2326))) b!5822179))

(declare-fun b!5822193 () Bool)

(declare-fun e!3573052 () Bool)

(declare-fun tp!1606784 () Bool)

(declare-fun tp!1606785 () Bool)

(assert (=> b!5822193 (= e!3573052 (and tp!1606784 tp!1606785))))

(assert (=> b!5821862 (= tp!1606702 e!3573052)))

(declare-fun b!5822192 () Bool)

(declare-fun tp!1606782 () Bool)

(assert (=> b!5822192 (= e!3573052 tp!1606782)))

(declare-fun b!5822190 () Bool)

(assert (=> b!5822190 (= e!3573052 tp_is_empty!40987)))

(declare-fun b!5822191 () Bool)

(declare-fun tp!1606783 () Bool)

(declare-fun tp!1606786 () Bool)

(assert (=> b!5822191 (= e!3573052 (and tp!1606783 tp!1606786))))

(assert (= (and b!5821862 ((_ is ElementMatch!15867) (regOne!32246 r!7292))) b!5822190))

(assert (= (and b!5821862 ((_ is Concat!24712) (regOne!32246 r!7292))) b!5822191))

(assert (= (and b!5821862 ((_ is Star!15867) (regOne!32246 r!7292))) b!5822192))

(assert (= (and b!5821862 ((_ is Union!15867) (regOne!32246 r!7292))) b!5822193))

(declare-fun b!5822197 () Bool)

(declare-fun e!3573053 () Bool)

(declare-fun tp!1606789 () Bool)

(declare-fun tp!1606790 () Bool)

(assert (=> b!5822197 (= e!3573053 (and tp!1606789 tp!1606790))))

(assert (=> b!5821862 (= tp!1606704 e!3573053)))

(declare-fun b!5822196 () Bool)

(declare-fun tp!1606787 () Bool)

(assert (=> b!5822196 (= e!3573053 tp!1606787)))

(declare-fun b!5822194 () Bool)

(assert (=> b!5822194 (= e!3573053 tp_is_empty!40987)))

(declare-fun b!5822195 () Bool)

(declare-fun tp!1606788 () Bool)

(declare-fun tp!1606791 () Bool)

(assert (=> b!5822195 (= e!3573053 (and tp!1606788 tp!1606791))))

(assert (= (and b!5821862 ((_ is ElementMatch!15867) (regTwo!32246 r!7292))) b!5822194))

(assert (= (and b!5821862 ((_ is Concat!24712) (regTwo!32246 r!7292))) b!5822195))

(assert (= (and b!5821862 ((_ is Star!15867) (regTwo!32246 r!7292))) b!5822196))

(assert (= (and b!5821862 ((_ is Union!15867) (regTwo!32246 r!7292))) b!5822197))

(declare-fun b!5822202 () Bool)

(declare-fun e!3573056 () Bool)

(declare-fun tp!1606796 () Bool)

(declare-fun tp!1606797 () Bool)

(assert (=> b!5822202 (= e!3573056 (and tp!1606796 tp!1606797))))

(assert (=> b!5821861 (= tp!1606703 e!3573056)))

(assert (= (and b!5821861 ((_ is Cons!63776) (exprs!5751 (h!70225 zl!343)))) b!5822202))

(declare-fun b!5822206 () Bool)

(declare-fun e!3573057 () Bool)

(declare-fun tp!1606800 () Bool)

(declare-fun tp!1606801 () Bool)

(assert (=> b!5822206 (= e!3573057 (and tp!1606800 tp!1606801))))

(assert (=> b!5821870 (= tp!1606699 e!3573057)))

(declare-fun b!5822205 () Bool)

(declare-fun tp!1606798 () Bool)

(assert (=> b!5822205 (= e!3573057 tp!1606798)))

(declare-fun b!5822203 () Bool)

(assert (=> b!5822203 (= e!3573057 tp_is_empty!40987)))

(declare-fun b!5822204 () Bool)

(declare-fun tp!1606799 () Bool)

(declare-fun tp!1606802 () Bool)

(assert (=> b!5822204 (= e!3573057 (and tp!1606799 tp!1606802))))

(assert (= (and b!5821870 ((_ is ElementMatch!15867) (regOne!32247 r!7292))) b!5822203))

(assert (= (and b!5821870 ((_ is Concat!24712) (regOne!32247 r!7292))) b!5822204))

(assert (= (and b!5821870 ((_ is Star!15867) (regOne!32247 r!7292))) b!5822205))

(assert (= (and b!5821870 ((_ is Union!15867) (regOne!32247 r!7292))) b!5822206))

(declare-fun b!5822210 () Bool)

(declare-fun e!3573058 () Bool)

(declare-fun tp!1606805 () Bool)

(declare-fun tp!1606806 () Bool)

(assert (=> b!5822210 (= e!3573058 (and tp!1606805 tp!1606806))))

(assert (=> b!5821870 (= tp!1606695 e!3573058)))

(declare-fun b!5822209 () Bool)

(declare-fun tp!1606803 () Bool)

(assert (=> b!5822209 (= e!3573058 tp!1606803)))

(declare-fun b!5822207 () Bool)

(assert (=> b!5822207 (= e!3573058 tp_is_empty!40987)))

(declare-fun b!5822208 () Bool)

(declare-fun tp!1606804 () Bool)

(declare-fun tp!1606807 () Bool)

(assert (=> b!5822208 (= e!3573058 (and tp!1606804 tp!1606807))))

(assert (= (and b!5821870 ((_ is ElementMatch!15867) (regTwo!32247 r!7292))) b!5822207))

(assert (= (and b!5821870 ((_ is Concat!24712) (regTwo!32247 r!7292))) b!5822208))

(assert (= (and b!5821870 ((_ is Star!15867) (regTwo!32247 r!7292))) b!5822209))

(assert (= (and b!5821870 ((_ is Union!15867) (regTwo!32247 r!7292))) b!5822210))

(declare-fun b!5822211 () Bool)

(declare-fun e!3573059 () Bool)

(declare-fun tp!1606808 () Bool)

(declare-fun tp!1606809 () Bool)

(assert (=> b!5822211 (= e!3573059 (and tp!1606808 tp!1606809))))

(assert (=> b!5821874 (= tp!1606696 e!3573059)))

(assert (= (and b!5821874 ((_ is Cons!63776) (exprs!5751 setElem!39320))) b!5822211))

(declare-fun condSetEmpty!39326 () Bool)

(assert (=> setNonEmpty!39320 (= condSetEmpty!39326 (= setRest!39320 ((as const (Array Context!10502 Bool)) false)))))

(declare-fun setRes!39326 () Bool)

(assert (=> setNonEmpty!39320 (= tp!1606701 setRes!39326)))

(declare-fun setIsEmpty!39326 () Bool)

(assert (=> setIsEmpty!39326 setRes!39326))

(declare-fun e!3573062 () Bool)

(declare-fun setNonEmpty!39326 () Bool)

(declare-fun setElem!39326 () Context!10502)

(declare-fun tp!1606814 () Bool)

(assert (=> setNonEmpty!39326 (= setRes!39326 (and tp!1606814 (inv!82914 setElem!39326) e!3573062))))

(declare-fun setRest!39326 () (InoxSet Context!10502))

(assert (=> setNonEmpty!39326 (= setRest!39320 ((_ map or) (store ((as const (Array Context!10502 Bool)) false) setElem!39326 true) setRest!39326))))

(declare-fun b!5822216 () Bool)

(declare-fun tp!1606815 () Bool)

(assert (=> b!5822216 (= e!3573062 tp!1606815)))

(assert (= (and setNonEmpty!39320 condSetEmpty!39326) setIsEmpty!39326))

(assert (= (and setNonEmpty!39320 (not condSetEmpty!39326)) setNonEmpty!39326))

(assert (= setNonEmpty!39326 b!5822216))

(declare-fun m!6756782 () Bool)

(assert (=> setNonEmpty!39326 m!6756782))

(declare-fun b!5822220 () Bool)

(declare-fun e!3573063 () Bool)

(declare-fun tp!1606818 () Bool)

(declare-fun tp!1606819 () Bool)

(assert (=> b!5822220 (= e!3573063 (and tp!1606818 tp!1606819))))

(assert (=> b!5821869 (= tp!1606698 e!3573063)))

(declare-fun b!5822219 () Bool)

(declare-fun tp!1606816 () Bool)

(assert (=> b!5822219 (= e!3573063 tp!1606816)))

(declare-fun b!5822217 () Bool)

(assert (=> b!5822217 (= e!3573063 tp_is_empty!40987)))

(declare-fun b!5822218 () Bool)

(declare-fun tp!1606817 () Bool)

(declare-fun tp!1606820 () Bool)

(assert (=> b!5822218 (= e!3573063 (and tp!1606817 tp!1606820))))

(assert (= (and b!5821869 ((_ is ElementMatch!15867) (reg!16196 r!7292))) b!5822217))

(assert (= (and b!5821869 ((_ is Concat!24712) (reg!16196 r!7292))) b!5822218))

(assert (= (and b!5821869 ((_ is Star!15867) (reg!16196 r!7292))) b!5822219))

(assert (= (and b!5821869 ((_ is Union!15867) (reg!16196 r!7292))) b!5822220))

(check-sat (not setNonEmpty!39326) (not d!1832073) (not b!5822179) (not b!5822113) (not b!5822210) (not d!1832103) (not b!5822211) (not b!5822195) (not b!5822202) (not b!5822193) tp_is_empty!40987 (not b!5822205) (not b!5822110) (not b!5822173) (not d!1832095) (not bm!454671) (not b!5822208) (not d!1832099) (not bm!454676) (not b!5822154) (not b!5822209) (not b!5822116) (not b!5822153) (not b!5822191) (not b!5822216) (not b!5822206) (not b!5822196) (not b!5822107) (not d!1832105) (not bm!454666) (not b!5822105) (not b!5822220) (not bm!454677) (not b!5822111) (not d!1832071) (not b!5822166) (not b!5822174) (not b!5822204) (not bm!454667) (not b!5822074) (not b!5822219) (not b!5822218) (not b!5822197) (not b!5822192))
(check-sat)
(get-model)

(declare-fun d!1832133 () Bool)

(assert (=> d!1832133 (= (isEmpty!35655 (tail!11389 s!2326)) ((_ is Nil!63778) (tail!11389 s!2326)))))

(assert (=> b!5822110 d!1832133))

(declare-fun d!1832135 () Bool)

(assert (=> d!1832135 (= (tail!11389 s!2326) (t!377257 s!2326))))

(assert (=> b!5822110 d!1832135))

(declare-fun b!5822301 () Bool)

(declare-fun e!3573122 () Bool)

(declare-fun e!3573121 () Bool)

(assert (=> b!5822301 (= e!3573122 e!3573121)))

(declare-fun c!1031812 () Bool)

(assert (=> b!5822301 (= c!1031812 ((_ is Star!15867) (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))))))

(declare-fun b!5822302 () Bool)

(declare-fun res!2455058 () Bool)

(declare-fun e!3573125 () Bool)

(assert (=> b!5822302 (=> res!2455058 e!3573125)))

(assert (=> b!5822302 (= res!2455058 (not ((_ is Concat!24712) (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292)))))))

(declare-fun e!3573124 () Bool)

(assert (=> b!5822302 (= e!3573124 e!3573125)))

(declare-fun b!5822303 () Bool)

(declare-fun res!2455059 () Bool)

(declare-fun e!3573120 () Bool)

(assert (=> b!5822303 (=> (not res!2455059) (not e!3573120))))

(declare-fun call!454695 () Bool)

(assert (=> b!5822303 (= res!2455059 call!454695)))

(assert (=> b!5822303 (= e!3573124 e!3573120)))

(declare-fun b!5822304 () Bool)

(declare-fun e!3573119 () Bool)

(assert (=> b!5822304 (= e!3573125 e!3573119)))

(declare-fun res!2455057 () Bool)

(assert (=> b!5822304 (=> (not res!2455057) (not e!3573119))))

(assert (=> b!5822304 (= res!2455057 call!454695)))

(declare-fun b!5822305 () Bool)

(declare-fun call!454694 () Bool)

(assert (=> b!5822305 (= e!3573119 call!454694)))

(declare-fun bm!454689 () Bool)

(declare-fun c!1031811 () Bool)

(assert (=> bm!454689 (= call!454695 (validRegex!7603 (ite c!1031811 (regOne!32247 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))) (regOne!32246 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))))))))

(declare-fun b!5822306 () Bool)

(assert (=> b!5822306 (= e!3573120 call!454694)))

(declare-fun d!1832137 () Bool)

(declare-fun res!2455055 () Bool)

(assert (=> d!1832137 (=> res!2455055 e!3573122)))

(assert (=> d!1832137 (= res!2455055 ((_ is ElementMatch!15867) (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))))))

(assert (=> d!1832137 (= (validRegex!7603 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))) e!3573122)))

(declare-fun b!5822307 () Bool)

(assert (=> b!5822307 (= e!3573121 e!3573124)))

(assert (=> b!5822307 (= c!1031811 ((_ is Union!15867) (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))))))

(declare-fun b!5822308 () Bool)

(declare-fun e!3573123 () Bool)

(declare-fun call!454696 () Bool)

(assert (=> b!5822308 (= e!3573123 call!454696)))

(declare-fun bm!454690 () Bool)

(assert (=> bm!454690 (= call!454696 (validRegex!7603 (ite c!1031812 (reg!16196 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))) (ite c!1031811 (regTwo!32247 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))) (regTwo!32246 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292)))))))))

(declare-fun bm!454691 () Bool)

(assert (=> bm!454691 (= call!454694 call!454696)))

(declare-fun b!5822309 () Bool)

(assert (=> b!5822309 (= e!3573121 e!3573123)))

(declare-fun res!2455056 () Bool)

(assert (=> b!5822309 (= res!2455056 (not (nullable!5873 (reg!16196 (ite c!1031763 (regOne!32247 r!7292) (regOne!32246 r!7292))))))))

(assert (=> b!5822309 (=> (not res!2455056) (not e!3573123))))

(assert (= (and d!1832137 (not res!2455055)) b!5822301))

(assert (= (and b!5822301 c!1031812) b!5822309))

(assert (= (and b!5822301 (not c!1031812)) b!5822307))

(assert (= (and b!5822309 res!2455056) b!5822308))

(assert (= (and b!5822307 c!1031811) b!5822303))

(assert (= (and b!5822307 (not c!1031811)) b!5822302))

(assert (= (and b!5822303 res!2455059) b!5822306))

(assert (= (and b!5822302 (not res!2455058)) b!5822304))

(assert (= (and b!5822304 res!2455057) b!5822305))

(assert (= (or b!5822306 b!5822305) bm!454691))

(assert (= (or b!5822303 b!5822304) bm!454689))

(assert (= (or b!5822308 bm!454691) bm!454690))

(declare-fun m!6756844 () Bool)

(assert (=> bm!454689 m!6756844))

(declare-fun m!6756846 () Bool)

(assert (=> bm!454690 m!6756846))

(declare-fun m!6756848 () Bool)

(assert (=> b!5822309 m!6756848))

(assert (=> bm!454666 d!1832137))

(declare-fun d!1832143 () Bool)

(declare-fun choose!44254 (Int) Bool)

(assert (=> d!1832143 (= (Exists!2949 (ite c!1031784 lambda!318642 lambda!318643)) (choose!44254 (ite c!1031784 lambda!318642 lambda!318643)))))

(declare-fun bs!1373644 () Bool)

(assert (= bs!1373644 d!1832143))

(declare-fun m!6756852 () Bool)

(assert (=> bs!1373644 m!6756852))

(assert (=> bm!454676 d!1832143))

(declare-fun d!1832147 () Bool)

(assert (=> d!1832147 (= (isEmpty!35655 s!2326) ((_ is Nil!63778) s!2326))))

(assert (=> bm!454671 d!1832147))

(declare-fun b!5822312 () Bool)

(declare-fun e!3573131 () Bool)

(declare-fun e!3573130 () Bool)

(assert (=> b!5822312 (= e!3573131 e!3573130)))

(declare-fun c!1031814 () Bool)

(assert (=> b!5822312 (= c!1031814 ((_ is Star!15867) (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))))))

(declare-fun b!5822313 () Bool)

(declare-fun res!2455065 () Bool)

(declare-fun e!3573134 () Bool)

(assert (=> b!5822313 (=> res!2455065 e!3573134)))

(assert (=> b!5822313 (= res!2455065 (not ((_ is Concat!24712) (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292))))))))

(declare-fun e!3573133 () Bool)

(assert (=> b!5822313 (= e!3573133 e!3573134)))

(declare-fun b!5822314 () Bool)

(declare-fun res!2455066 () Bool)

(declare-fun e!3573129 () Bool)

(assert (=> b!5822314 (=> (not res!2455066) (not e!3573129))))

(declare-fun call!454698 () Bool)

(assert (=> b!5822314 (= res!2455066 call!454698)))

(assert (=> b!5822314 (= e!3573133 e!3573129)))

(declare-fun b!5822315 () Bool)

(declare-fun e!3573128 () Bool)

(assert (=> b!5822315 (= e!3573134 e!3573128)))

(declare-fun res!2455064 () Bool)

(assert (=> b!5822315 (=> (not res!2455064) (not e!3573128))))

(assert (=> b!5822315 (= res!2455064 call!454698)))

(declare-fun b!5822316 () Bool)

(declare-fun call!454697 () Bool)

(assert (=> b!5822316 (= e!3573128 call!454697)))

(declare-fun bm!454692 () Bool)

(declare-fun c!1031813 () Bool)

(assert (=> bm!454692 (= call!454698 (validRegex!7603 (ite c!1031813 (regOne!32247 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))) (regOne!32246 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))))))))

(declare-fun b!5822317 () Bool)

(assert (=> b!5822317 (= e!3573129 call!454697)))

(declare-fun d!1832149 () Bool)

(declare-fun res!2455062 () Bool)

(assert (=> d!1832149 (=> res!2455062 e!3573131)))

(assert (=> d!1832149 (= res!2455062 ((_ is ElementMatch!15867) (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))))))

(assert (=> d!1832149 (= (validRegex!7603 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))) e!3573131)))

(declare-fun b!5822318 () Bool)

(assert (=> b!5822318 (= e!3573130 e!3573133)))

(assert (=> b!5822318 (= c!1031813 ((_ is Union!15867) (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))))))

(declare-fun b!5822319 () Bool)

(declare-fun e!3573132 () Bool)

(declare-fun call!454699 () Bool)

(assert (=> b!5822319 (= e!3573132 call!454699)))

(declare-fun bm!454693 () Bool)

(assert (=> bm!454693 (= call!454699 (validRegex!7603 (ite c!1031814 (reg!16196 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))) (ite c!1031813 (regTwo!32247 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))) (regTwo!32246 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292))))))))))

(declare-fun bm!454694 () Bool)

(assert (=> bm!454694 (= call!454697 call!454699)))

(declare-fun b!5822320 () Bool)

(assert (=> b!5822320 (= e!3573130 e!3573132)))

(declare-fun res!2455063 () Bool)

(assert (=> b!5822320 (= res!2455063 (not (nullable!5873 (reg!16196 (ite c!1031764 (reg!16196 r!7292) (ite c!1031763 (regTwo!32247 r!7292) (regTwo!32246 r!7292)))))))))

(assert (=> b!5822320 (=> (not res!2455063) (not e!3573132))))

(assert (= (and d!1832149 (not res!2455062)) b!5822312))

(assert (= (and b!5822312 c!1031814) b!5822320))

(assert (= (and b!5822312 (not c!1031814)) b!5822318))

(assert (= (and b!5822320 res!2455063) b!5822319))

(assert (= (and b!5822318 c!1031813) b!5822314))

(assert (= (and b!5822318 (not c!1031813)) b!5822313))

(assert (= (and b!5822314 res!2455066) b!5822317))

(assert (= (and b!5822313 (not res!2455065)) b!5822315))

(assert (= (and b!5822315 res!2455064) b!5822316))

(assert (= (or b!5822317 b!5822316) bm!454694))

(assert (= (or b!5822314 b!5822315) bm!454692))

(assert (= (or b!5822319 bm!454694) bm!454693))

(declare-fun m!6756854 () Bool)

(assert (=> bm!454692 m!6756854))

(declare-fun m!6756856 () Bool)

(assert (=> bm!454693 m!6756856))

(declare-fun m!6756858 () Bool)

(assert (=> b!5822320 m!6756858))

(assert (=> bm!454667 d!1832149))

(declare-fun d!1832151 () Bool)

(declare-fun nullableFct!1881 (Regex!15867) Bool)

(assert (=> d!1832151 (= (nullable!5873 r!7292) (nullableFct!1881 r!7292))))

(declare-fun bs!1373645 () Bool)

(assert (= bs!1373645 d!1832151))

(declare-fun m!6756860 () Bool)

(assert (=> bs!1373645 m!6756860))

(assert (=> b!5822113 d!1832151))

(declare-fun d!1832153 () Bool)

(declare-fun res!2455071 () Bool)

(declare-fun e!3573142 () Bool)

(assert (=> d!1832153 (=> res!2455071 e!3573142)))

(assert (=> d!1832153 (= res!2455071 ((_ is Nil!63776) (exprs!5751 setElem!39320)))))

(assert (=> d!1832153 (= (forall!14961 (exprs!5751 setElem!39320) lambda!318644) e!3573142)))

(declare-fun b!5822331 () Bool)

(declare-fun e!3573143 () Bool)

(assert (=> b!5822331 (= e!3573142 e!3573143)))

(declare-fun res!2455072 () Bool)

(assert (=> b!5822331 (=> (not res!2455072) (not e!3573143))))

(declare-fun dynLambda!24966 (Int Regex!15867) Bool)

(assert (=> b!5822331 (= res!2455072 (dynLambda!24966 lambda!318644 (h!70224 (exprs!5751 setElem!39320))))))

(declare-fun b!5822332 () Bool)

(assert (=> b!5822332 (= e!3573143 (forall!14961 (t!377255 (exprs!5751 setElem!39320)) lambda!318644))))

(assert (= (and d!1832153 (not res!2455071)) b!5822331))

(assert (= (and b!5822331 res!2455072) b!5822332))

(declare-fun b_lambda!219521 () Bool)

(assert (=> (not b_lambda!219521) (not b!5822331)))

(declare-fun m!6756866 () Bool)

(assert (=> b!5822331 m!6756866))

(declare-fun m!6756868 () Bool)

(assert (=> b!5822332 m!6756868))

(assert (=> d!1832103 d!1832153))

(declare-fun d!1832157 () Bool)

(assert (=> d!1832157 (= (head!12304 s!2326) (h!70226 s!2326))))

(assert (=> b!5822111 d!1832157))

(declare-fun d!1832161 () Bool)

(declare-fun res!2455073 () Bool)

(declare-fun e!3573144 () Bool)

(assert (=> d!1832161 (=> res!2455073 e!3573144)))

(assert (=> d!1832161 (= res!2455073 ((_ is Nil!63776) (exprs!5751 (h!70225 zl!343))))))

(assert (=> d!1832161 (= (forall!14961 (exprs!5751 (h!70225 zl!343)) lambda!318637) e!3573144)))

(declare-fun b!5822333 () Bool)

(declare-fun e!3573145 () Bool)

(assert (=> b!5822333 (= e!3573144 e!3573145)))

(declare-fun res!2455074 () Bool)

(assert (=> b!5822333 (=> (not res!2455074) (not e!3573145))))

(assert (=> b!5822333 (= res!2455074 (dynLambda!24966 lambda!318637 (h!70224 (exprs!5751 (h!70225 zl!343)))))))

(declare-fun b!5822334 () Bool)

(assert (=> b!5822334 (= e!3573145 (forall!14961 (t!377255 (exprs!5751 (h!70225 zl!343))) lambda!318637))))

(assert (= (and d!1832161 (not res!2455073)) b!5822333))

(assert (= (and b!5822333 res!2455074) b!5822334))

(declare-fun b_lambda!219523 () Bool)

(assert (=> (not b_lambda!219523) (not b!5822333)))

(declare-fun m!6756870 () Bool)

(assert (=> b!5822333 m!6756870))

(declare-fun m!6756872 () Bool)

(assert (=> b!5822334 m!6756872))

(assert (=> d!1832073 d!1832161))

(declare-fun d!1832163 () Bool)

(declare-fun c!1031820 () Bool)

(assert (=> d!1832163 (= c!1031820 ((_ is Nil!63777) lt!2302364))))

(declare-fun e!3573148 () (InoxSet Context!10502))

(assert (=> d!1832163 (= (content!11706 lt!2302364) e!3573148)))

(declare-fun b!5822339 () Bool)

(assert (=> b!5822339 (= e!3573148 ((as const (Array Context!10502 Bool)) false))))

(declare-fun b!5822340 () Bool)

(assert (=> b!5822340 (= e!3573148 ((_ map or) (store ((as const (Array Context!10502 Bool)) false) (h!70225 lt!2302364) true) (content!11706 (t!377256 lt!2302364))))))

(assert (= (and d!1832163 c!1031820) b!5822339))

(assert (= (and d!1832163 (not c!1031820)) b!5822340))

(declare-fun m!6756880 () Bool)

(assert (=> b!5822340 m!6756880))

(declare-fun m!6756882 () Bool)

(assert (=> b!5822340 m!6756882))

(assert (=> b!5822166 d!1832163))

(declare-fun d!1832171 () Bool)

(assert (=> d!1832171 (= (nullable!5873 (reg!16196 r!7292)) (nullableFct!1881 (reg!16196 r!7292)))))

(declare-fun bs!1373655 () Bool)

(assert (= bs!1373655 d!1832171))

(declare-fun m!6756884 () Bool)

(assert (=> bs!1373655 m!6756884))

(assert (=> b!5822074 d!1832171))

(assert (=> b!5822116 d!1832157))

(assert (=> d!1832099 d!1832095))

(assert (=> d!1832099 d!1832097))

(declare-fun d!1832173 () Bool)

(assert (=> d!1832173 (= (matchR!8052 r!7292 s!2326) (matchRSpec!2970 r!7292 s!2326))))

(assert (=> d!1832173 true))

(declare-fun _$88!4156 () Unit!157009)

(assert (=> d!1832173 (= (choose!44252 r!7292 s!2326) _$88!4156)))

(declare-fun bs!1373656 () Bool)

(assert (= bs!1373656 d!1832173))

(assert (=> bs!1373656 m!6756674))

(assert (=> bs!1373656 m!6756676))

(assert (=> d!1832099 d!1832173))

(assert (=> d!1832099 d!1832093))

(declare-fun bm!454695 () Bool)

(declare-fun call!454700 () Bool)

(assert (=> bm!454695 (= call!454700 (isEmpty!35655 (tail!11389 s!2326)))))

(declare-fun b!5822353 () Bool)

(declare-fun res!2455091 () Bool)

(declare-fun e!3573162 () Bool)

(assert (=> b!5822353 (=> (not res!2455091) (not e!3573162))))

(assert (=> b!5822353 (= res!2455091 (not call!454700))))

(declare-fun b!5822354 () Bool)

(declare-fun e!3573163 () Bool)

(declare-fun e!3573167 () Bool)

(assert (=> b!5822354 (= e!3573163 e!3573167)))

(declare-fun res!2455087 () Bool)

(assert (=> b!5822354 (=> res!2455087 e!3573167)))

(assert (=> b!5822354 (= res!2455087 call!454700)))

(declare-fun d!1832177 () Bool)

(declare-fun e!3573166 () Bool)

(assert (=> d!1832177 e!3573166))

(declare-fun c!1031822 () Bool)

(assert (=> d!1832177 (= c!1031822 ((_ is EmptyExpr!15867) (derivativeStep!4614 r!7292 (head!12304 s!2326))))))

(declare-fun lt!2302371 () Bool)

(declare-fun e!3573164 () Bool)

(assert (=> d!1832177 (= lt!2302371 e!3573164)))

(declare-fun c!1031821 () Bool)

(assert (=> d!1832177 (= c!1031821 (isEmpty!35655 (tail!11389 s!2326)))))

(assert (=> d!1832177 (validRegex!7603 (derivativeStep!4614 r!7292 (head!12304 s!2326)))))

(assert (=> d!1832177 (= (matchR!8052 (derivativeStep!4614 r!7292 (head!12304 s!2326)) (tail!11389 s!2326)) lt!2302371)))

(declare-fun b!5822355 () Bool)

(assert (=> b!5822355 (= e!3573164 (matchR!8052 (derivativeStep!4614 (derivativeStep!4614 r!7292 (head!12304 s!2326)) (head!12304 (tail!11389 s!2326))) (tail!11389 (tail!11389 s!2326))))))

(declare-fun b!5822356 () Bool)

(declare-fun e!3573165 () Bool)

(assert (=> b!5822356 (= e!3573165 e!3573163)))

(declare-fun res!2455090 () Bool)

(assert (=> b!5822356 (=> (not res!2455090) (not e!3573163))))

(assert (=> b!5822356 (= res!2455090 (not lt!2302371))))

(declare-fun b!5822357 () Bool)

(declare-fun res!2455088 () Bool)

(assert (=> b!5822357 (=> res!2455088 e!3573167)))

(assert (=> b!5822357 (= res!2455088 (not (isEmpty!35655 (tail!11389 (tail!11389 s!2326)))))))

(declare-fun b!5822358 () Bool)

(declare-fun res!2455092 () Bool)

(assert (=> b!5822358 (=> res!2455092 e!3573165)))

(assert (=> b!5822358 (= res!2455092 (not ((_ is ElementMatch!15867) (derivativeStep!4614 r!7292 (head!12304 s!2326)))))))

(declare-fun e!3573161 () Bool)

(assert (=> b!5822358 (= e!3573161 e!3573165)))

(declare-fun b!5822359 () Bool)

(assert (=> b!5822359 (= e!3573166 (= lt!2302371 call!454700))))

(declare-fun b!5822360 () Bool)

(declare-fun res!2455089 () Bool)

(assert (=> b!5822360 (=> (not res!2455089) (not e!3573162))))

(assert (=> b!5822360 (= res!2455089 (isEmpty!35655 (tail!11389 (tail!11389 s!2326))))))

(declare-fun b!5822361 () Bool)

(assert (=> b!5822361 (= e!3573167 (not (= (head!12304 (tail!11389 s!2326)) (c!1031731 (derivativeStep!4614 r!7292 (head!12304 s!2326))))))))

(declare-fun b!5822362 () Bool)

(declare-fun res!2455086 () Bool)

(assert (=> b!5822362 (=> res!2455086 e!3573165)))

(assert (=> b!5822362 (= res!2455086 e!3573162)))

(declare-fun res!2455085 () Bool)

(assert (=> b!5822362 (=> (not res!2455085) (not e!3573162))))

(assert (=> b!5822362 (= res!2455085 lt!2302371)))

(declare-fun b!5822363 () Bool)

(assert (=> b!5822363 (= e!3573164 (nullable!5873 (derivativeStep!4614 r!7292 (head!12304 s!2326))))))

(declare-fun b!5822364 () Bool)

(assert (=> b!5822364 (= e!3573161 (not lt!2302371))))

(declare-fun b!5822365 () Bool)

(assert (=> b!5822365 (= e!3573166 e!3573161)))

(declare-fun c!1031823 () Bool)

(assert (=> b!5822365 (= c!1031823 ((_ is EmptyLang!15867) (derivativeStep!4614 r!7292 (head!12304 s!2326))))))

(declare-fun b!5822366 () Bool)

(assert (=> b!5822366 (= e!3573162 (= (head!12304 (tail!11389 s!2326)) (c!1031731 (derivativeStep!4614 r!7292 (head!12304 s!2326)))))))

(assert (= (and d!1832177 c!1031821) b!5822363))

(assert (= (and d!1832177 (not c!1031821)) b!5822355))

(assert (= (and d!1832177 c!1031822) b!5822359))

(assert (= (and d!1832177 (not c!1031822)) b!5822365))

(assert (= (and b!5822365 c!1031823) b!5822364))

(assert (= (and b!5822365 (not c!1031823)) b!5822358))

(assert (= (and b!5822358 (not res!2455092)) b!5822362))

(assert (= (and b!5822362 res!2455085) b!5822353))

(assert (= (and b!5822353 res!2455091) b!5822360))

(assert (= (and b!5822360 res!2455089) b!5822366))

(assert (= (and b!5822362 (not res!2455086)) b!5822356))

(assert (= (and b!5822356 res!2455090) b!5822354))

(assert (= (and b!5822354 (not res!2455087)) b!5822357))

(assert (= (and b!5822357 (not res!2455088)) b!5822361))

(assert (= (or b!5822359 b!5822353 b!5822354) bm!454695))

(assert (=> b!5822357 m!6756750))

(declare-fun m!6756896 () Bool)

(assert (=> b!5822357 m!6756896))

(assert (=> b!5822357 m!6756896))

(declare-fun m!6756898 () Bool)

(assert (=> b!5822357 m!6756898))

(assert (=> b!5822363 m!6756758))

(declare-fun m!6756900 () Bool)

(assert (=> b!5822363 m!6756900))

(assert (=> b!5822355 m!6756750))

(declare-fun m!6756902 () Bool)

(assert (=> b!5822355 m!6756902))

(assert (=> b!5822355 m!6756758))

(assert (=> b!5822355 m!6756902))

(declare-fun m!6756904 () Bool)

(assert (=> b!5822355 m!6756904))

(assert (=> b!5822355 m!6756750))

(assert (=> b!5822355 m!6756896))

(assert (=> b!5822355 m!6756904))

(assert (=> b!5822355 m!6756896))

(declare-fun m!6756906 () Bool)

(assert (=> b!5822355 m!6756906))

(assert (=> b!5822361 m!6756750))

(assert (=> b!5822361 m!6756902))

(assert (=> bm!454695 m!6756750))

(assert (=> bm!454695 m!6756752))

(assert (=> b!5822366 m!6756750))

(assert (=> b!5822366 m!6756902))

(assert (=> b!5822360 m!6756750))

(assert (=> b!5822360 m!6756896))

(assert (=> b!5822360 m!6756896))

(assert (=> b!5822360 m!6756898))

(assert (=> d!1832177 m!6756750))

(assert (=> d!1832177 m!6756752))

(assert (=> d!1832177 m!6756758))

(declare-fun m!6756908 () Bool)

(assert (=> d!1832177 m!6756908))

(assert (=> b!5822105 d!1832177))

(declare-fun b!5822435 () Bool)

(declare-fun e!3573209 () Regex!15867)

(declare-fun call!454719 () Regex!15867)

(assert (=> b!5822435 (= e!3573209 (Concat!24712 call!454719 r!7292))))

(declare-fun b!5822436 () Bool)

(declare-fun e!3573205 () Regex!15867)

(declare-fun e!3573208 () Regex!15867)

(assert (=> b!5822436 (= e!3573205 e!3573208)))

(declare-fun c!1031855 () Bool)

(assert (=> b!5822436 (= c!1031855 ((_ is ElementMatch!15867) r!7292))))

(declare-fun b!5822437 () Bool)

(declare-fun c!1031851 () Bool)

(assert (=> b!5822437 (= c!1031851 ((_ is Union!15867) r!7292))))

(declare-fun e!3573207 () Regex!15867)

(assert (=> b!5822437 (= e!3573208 e!3573207)))

(declare-fun c!1031852 () Bool)

(declare-fun call!454716 () Regex!15867)

(declare-fun bm!454711 () Bool)

(assert (=> bm!454711 (= call!454716 (derivativeStep!4614 (ite c!1031851 (regOne!32247 r!7292) (ite c!1031852 (regTwo!32246 r!7292) (regOne!32246 r!7292))) (head!12304 s!2326)))))

(declare-fun b!5822438 () Bool)

(assert (=> b!5822438 (= e!3573208 (ite (= (head!12304 s!2326) (c!1031731 r!7292)) EmptyExpr!15867 EmptyLang!15867))))

(declare-fun b!5822439 () Bool)

(assert (=> b!5822439 (= e!3573205 EmptyLang!15867)))

(declare-fun bm!454712 () Bool)

(declare-fun call!454718 () Regex!15867)

(assert (=> bm!454712 (= call!454719 call!454718)))

(declare-fun b!5822440 () Bool)

(assert (=> b!5822440 (= c!1031852 (nullable!5873 (regOne!32246 r!7292)))))

(declare-fun e!3573206 () Regex!15867)

(assert (=> b!5822440 (= e!3573209 e!3573206)))

(declare-fun b!5822441 () Bool)

(assert (=> b!5822441 (= e!3573207 (Union!15867 call!454716 call!454718))))

(declare-fun b!5822442 () Bool)

(declare-fun call!454717 () Regex!15867)

(assert (=> b!5822442 (= e!3573206 (Union!15867 (Concat!24712 call!454719 (regTwo!32246 r!7292)) call!454717))))

(declare-fun b!5822443 () Bool)

(assert (=> b!5822443 (= e!3573207 e!3573209)))

(declare-fun c!1031854 () Bool)

(assert (=> b!5822443 (= c!1031854 ((_ is Star!15867) r!7292))))

(declare-fun d!1832181 () Bool)

(declare-fun lt!2302377 () Regex!15867)

(assert (=> d!1832181 (validRegex!7603 lt!2302377)))

(assert (=> d!1832181 (= lt!2302377 e!3573205)))

(declare-fun c!1031853 () Bool)

(assert (=> d!1832181 (= c!1031853 (or ((_ is EmptyExpr!15867) r!7292) ((_ is EmptyLang!15867) r!7292)))))

(assert (=> d!1832181 (validRegex!7603 r!7292)))

(assert (=> d!1832181 (= (derivativeStep!4614 r!7292 (head!12304 s!2326)) lt!2302377)))

(declare-fun bm!454713 () Bool)

(assert (=> bm!454713 (= call!454717 call!454716)))

(declare-fun bm!454714 () Bool)

(assert (=> bm!454714 (= call!454718 (derivativeStep!4614 (ite c!1031851 (regTwo!32247 r!7292) (ite c!1031854 (reg!16196 r!7292) (regOne!32246 r!7292))) (head!12304 s!2326)))))

(declare-fun b!5822444 () Bool)

(assert (=> b!5822444 (= e!3573206 (Union!15867 (Concat!24712 call!454717 (regTwo!32246 r!7292)) EmptyLang!15867))))

(assert (= (and d!1832181 c!1031853) b!5822439))

(assert (= (and d!1832181 (not c!1031853)) b!5822436))

(assert (= (and b!5822436 c!1031855) b!5822438))

(assert (= (and b!5822436 (not c!1031855)) b!5822437))

(assert (= (and b!5822437 c!1031851) b!5822441))

(assert (= (and b!5822437 (not c!1031851)) b!5822443))

(assert (= (and b!5822443 c!1031854) b!5822435))

(assert (= (and b!5822443 (not c!1031854)) b!5822440))

(assert (= (and b!5822440 c!1031852) b!5822442))

(assert (= (and b!5822440 (not c!1031852)) b!5822444))

(assert (= (or b!5822442 b!5822444) bm!454713))

(assert (= (or b!5822435 b!5822442) bm!454712))

(assert (= (or b!5822441 bm!454712) bm!454714))

(assert (= (or b!5822441 bm!454713) bm!454711))

(assert (=> bm!454711 m!6756756))

(declare-fun m!6756930 () Bool)

(assert (=> bm!454711 m!6756930))

(declare-fun m!6756932 () Bool)

(assert (=> b!5822440 m!6756932))

(declare-fun m!6756934 () Bool)

(assert (=> d!1832181 m!6756934))

(assert (=> d!1832181 m!6756672))

(assert (=> bm!454714 m!6756756))

(declare-fun m!6756936 () Bool)

(assert (=> bm!454714 m!6756936))

(assert (=> b!5822105 d!1832181))

(assert (=> b!5822105 d!1832157))

(assert (=> b!5822105 d!1832135))

(declare-fun bs!1373666 () Bool)

(declare-fun d!1832187 () Bool)

(assert (= bs!1373666 (and d!1832187 d!1832073)))

(declare-fun lambda!318657 () Int)

(assert (=> bs!1373666 (= lambda!318657 lambda!318637)))

(declare-fun bs!1373667 () Bool)

(assert (= bs!1373667 (and d!1832187 d!1832103)))

(assert (=> bs!1373667 (= lambda!318657 lambda!318644)))

(assert (=> d!1832187 (= (inv!82914 (h!70225 (t!377256 zl!343))) (forall!14961 (exprs!5751 (h!70225 (t!377256 zl!343))) lambda!318657))))

(declare-fun bs!1373668 () Bool)

(assert (= bs!1373668 d!1832187))

(declare-fun m!6756938 () Bool)

(assert (=> bs!1373668 m!6756938))

(assert (=> b!5822173 d!1832187))

(declare-fun bs!1373669 () Bool)

(declare-fun b!5822446 () Bool)

(assert (= bs!1373669 (and b!5822446 b!5822150)))

(declare-fun lambda!318658 () Int)

(assert (=> bs!1373669 (= (and (= (reg!16196 (regOne!32247 r!7292)) (reg!16196 r!7292)) (= (regOne!32247 r!7292) r!7292)) (= lambda!318658 lambda!318642))))

(declare-fun bs!1373670 () Bool)

(assert (= bs!1373670 (and b!5822446 b!5822149)))

(assert (=> bs!1373670 (not (= lambda!318658 lambda!318643))))

(assert (=> b!5822446 true))

(assert (=> b!5822446 true))

(declare-fun bs!1373671 () Bool)

(declare-fun b!5822445 () Bool)

(assert (= bs!1373671 (and b!5822445 b!5822150)))

(declare-fun lambda!318659 () Int)

(assert (=> bs!1373671 (not (= lambda!318659 lambda!318642))))

(declare-fun bs!1373672 () Bool)

(assert (= bs!1373672 (and b!5822445 b!5822149)))

(assert (=> bs!1373672 (= (and (= (regOne!32246 (regOne!32247 r!7292)) (regOne!32246 r!7292)) (= (regTwo!32246 (regOne!32247 r!7292)) (regTwo!32246 r!7292))) (= lambda!318659 lambda!318643))))

(declare-fun bs!1373673 () Bool)

(assert (= bs!1373673 (and b!5822445 b!5822446)))

(assert (=> bs!1373673 (not (= lambda!318659 lambda!318658))))

(assert (=> b!5822445 true))

(assert (=> b!5822445 true))

(declare-fun e!3573213 () Bool)

(declare-fun call!454724 () Bool)

(assert (=> b!5822445 (= e!3573213 call!454724)))

(declare-fun e!3573211 () Bool)

(assert (=> b!5822446 (= e!3573211 call!454724)))

(declare-fun b!5822447 () Bool)

(declare-fun e!3573214 () Bool)

(declare-fun call!454725 () Bool)

(assert (=> b!5822447 (= e!3573214 call!454725)))

(declare-fun d!1832189 () Bool)

(declare-fun c!1031857 () Bool)

(assert (=> d!1832189 (= c!1031857 ((_ is EmptyExpr!15867) (regOne!32247 r!7292)))))

(assert (=> d!1832189 (= (matchRSpec!2970 (regOne!32247 r!7292) s!2326) e!3573214)))

(declare-fun b!5822448 () Bool)

(declare-fun res!2455108 () Bool)

(assert (=> b!5822448 (=> res!2455108 e!3573211)))

(assert (=> b!5822448 (= res!2455108 call!454725)))

(assert (=> b!5822448 (= e!3573213 e!3573211)))

(declare-fun bm!454719 () Bool)

(declare-fun c!1031858 () Bool)

(assert (=> bm!454719 (= call!454724 (Exists!2949 (ite c!1031858 lambda!318658 lambda!318659)))))

(declare-fun b!5822449 () Bool)

(declare-fun e!3573210 () Bool)

(declare-fun e!3573216 () Bool)

(assert (=> b!5822449 (= e!3573210 e!3573216)))

(declare-fun res!2455106 () Bool)

(assert (=> b!5822449 (= res!2455106 (matchRSpec!2970 (regOne!32247 (regOne!32247 r!7292)) s!2326))))

(assert (=> b!5822449 (=> res!2455106 e!3573216)))

(declare-fun b!5822450 () Bool)

(assert (=> b!5822450 (= e!3573216 (matchRSpec!2970 (regTwo!32247 (regOne!32247 r!7292)) s!2326))))

(declare-fun b!5822451 () Bool)

(declare-fun e!3573212 () Bool)

(assert (=> b!5822451 (= e!3573212 (= s!2326 (Cons!63778 (c!1031731 (regOne!32247 r!7292)) Nil!63778)))))

(declare-fun bm!454720 () Bool)

(assert (=> bm!454720 (= call!454725 (isEmpty!35655 s!2326))))

(declare-fun b!5822452 () Bool)

(declare-fun c!1031859 () Bool)

(assert (=> b!5822452 (= c!1031859 ((_ is ElementMatch!15867) (regOne!32247 r!7292)))))

(declare-fun e!3573215 () Bool)

(assert (=> b!5822452 (= e!3573215 e!3573212)))

(declare-fun b!5822453 () Bool)

(declare-fun c!1031856 () Bool)

(assert (=> b!5822453 (= c!1031856 ((_ is Union!15867) (regOne!32247 r!7292)))))

(assert (=> b!5822453 (= e!3573212 e!3573210)))

(declare-fun b!5822454 () Bool)

(assert (=> b!5822454 (= e!3573210 e!3573213)))

(assert (=> b!5822454 (= c!1031858 ((_ is Star!15867) (regOne!32247 r!7292)))))

(declare-fun b!5822455 () Bool)

(assert (=> b!5822455 (= e!3573214 e!3573215)))

(declare-fun res!2455107 () Bool)

(assert (=> b!5822455 (= res!2455107 (not ((_ is EmptyLang!15867) (regOne!32247 r!7292))))))

(assert (=> b!5822455 (=> (not res!2455107) (not e!3573215))))

(assert (= (and d!1832189 c!1031857) b!5822447))

(assert (= (and d!1832189 (not c!1031857)) b!5822455))

(assert (= (and b!5822455 res!2455107) b!5822452))

(assert (= (and b!5822452 c!1031859) b!5822451))

(assert (= (and b!5822452 (not c!1031859)) b!5822453))

(assert (= (and b!5822453 c!1031856) b!5822449))

(assert (= (and b!5822453 (not c!1031856)) b!5822454))

(assert (= (and b!5822449 (not res!2455106)) b!5822450))

(assert (= (and b!5822454 c!1031858) b!5822448))

(assert (= (and b!5822454 (not c!1031858)) b!5822445))

(assert (= (and b!5822448 (not res!2455108)) b!5822446))

(assert (= (or b!5822446 b!5822445) bm!454719))

(assert (= (or b!5822447 b!5822448) bm!454720))

(declare-fun m!6756940 () Bool)

(assert (=> bm!454719 m!6756940))

(declare-fun m!6756942 () Bool)

(assert (=> b!5822449 m!6756942))

(declare-fun m!6756944 () Bool)

(assert (=> b!5822450 m!6756944))

(assert (=> bm!454720 m!6756762))

(assert (=> b!5822153 d!1832189))

(assert (=> d!1832095 d!1832147))

(assert (=> d!1832095 d!1832093))

(declare-fun bs!1373674 () Bool)

(declare-fun b!5822467 () Bool)

(assert (= bs!1373674 (and b!5822467 b!5822150)))

(declare-fun lambda!318660 () Int)

(assert (=> bs!1373674 (= (and (= (reg!16196 (regTwo!32247 r!7292)) (reg!16196 r!7292)) (= (regTwo!32247 r!7292) r!7292)) (= lambda!318660 lambda!318642))))

(declare-fun bs!1373675 () Bool)

(assert (= bs!1373675 (and b!5822467 b!5822149)))

(assert (=> bs!1373675 (not (= lambda!318660 lambda!318643))))

(declare-fun bs!1373676 () Bool)

(assert (= bs!1373676 (and b!5822467 b!5822446)))

(assert (=> bs!1373676 (= (and (= (reg!16196 (regTwo!32247 r!7292)) (reg!16196 (regOne!32247 r!7292))) (= (regTwo!32247 r!7292) (regOne!32247 r!7292))) (= lambda!318660 lambda!318658))))

(declare-fun bs!1373677 () Bool)

(assert (= bs!1373677 (and b!5822467 b!5822445)))

(assert (=> bs!1373677 (not (= lambda!318660 lambda!318659))))

(assert (=> b!5822467 true))

(assert (=> b!5822467 true))

(declare-fun bs!1373678 () Bool)

(declare-fun b!5822466 () Bool)

(assert (= bs!1373678 (and b!5822466 b!5822445)))

(declare-fun lambda!318661 () Int)

(assert (=> bs!1373678 (= (and (= (regOne!32246 (regTwo!32247 r!7292)) (regOne!32246 (regOne!32247 r!7292))) (= (regTwo!32246 (regTwo!32247 r!7292)) (regTwo!32246 (regOne!32247 r!7292)))) (= lambda!318661 lambda!318659))))

(declare-fun bs!1373679 () Bool)

(assert (= bs!1373679 (and b!5822466 b!5822446)))

(assert (=> bs!1373679 (not (= lambda!318661 lambda!318658))))

(declare-fun bs!1373680 () Bool)

(assert (= bs!1373680 (and b!5822466 b!5822150)))

(assert (=> bs!1373680 (not (= lambda!318661 lambda!318642))))

(declare-fun bs!1373681 () Bool)

(assert (= bs!1373681 (and b!5822466 b!5822149)))

(assert (=> bs!1373681 (= (and (= (regOne!32246 (regTwo!32247 r!7292)) (regOne!32246 r!7292)) (= (regTwo!32246 (regTwo!32247 r!7292)) (regTwo!32246 r!7292))) (= lambda!318661 lambda!318643))))

(declare-fun bs!1373682 () Bool)

(assert (= bs!1373682 (and b!5822466 b!5822467)))

(assert (=> bs!1373682 (not (= lambda!318661 lambda!318660))))

(assert (=> b!5822466 true))

(assert (=> b!5822466 true))

(declare-fun e!3573225 () Bool)

(declare-fun call!454730 () Bool)

(assert (=> b!5822466 (= e!3573225 call!454730)))

(declare-fun e!3573223 () Bool)

(assert (=> b!5822467 (= e!3573223 call!454730)))

(declare-fun b!5822468 () Bool)

(declare-fun e!3573226 () Bool)

(declare-fun call!454731 () Bool)

(assert (=> b!5822468 (= e!3573226 call!454731)))

(declare-fun d!1832191 () Bool)

(declare-fun c!1031866 () Bool)

(assert (=> d!1832191 (= c!1031866 ((_ is EmptyExpr!15867) (regTwo!32247 r!7292)))))

(assert (=> d!1832191 (= (matchRSpec!2970 (regTwo!32247 r!7292) s!2326) e!3573226)))

(declare-fun b!5822469 () Bool)

(declare-fun res!2455111 () Bool)

(assert (=> b!5822469 (=> res!2455111 e!3573223)))

(assert (=> b!5822469 (= res!2455111 call!454731)))

(assert (=> b!5822469 (= e!3573225 e!3573223)))

(declare-fun c!1031867 () Bool)

(declare-fun bm!454725 () Bool)

(assert (=> bm!454725 (= call!454730 (Exists!2949 (ite c!1031867 lambda!318660 lambda!318661)))))

(declare-fun b!5822470 () Bool)

(declare-fun e!3573222 () Bool)

(declare-fun e!3573228 () Bool)

(assert (=> b!5822470 (= e!3573222 e!3573228)))

(declare-fun res!2455109 () Bool)

(assert (=> b!5822470 (= res!2455109 (matchRSpec!2970 (regOne!32247 (regTwo!32247 r!7292)) s!2326))))

(assert (=> b!5822470 (=> res!2455109 e!3573228)))

(declare-fun b!5822471 () Bool)

(assert (=> b!5822471 (= e!3573228 (matchRSpec!2970 (regTwo!32247 (regTwo!32247 r!7292)) s!2326))))

(declare-fun b!5822472 () Bool)

(declare-fun e!3573224 () Bool)

(assert (=> b!5822472 (= e!3573224 (= s!2326 (Cons!63778 (c!1031731 (regTwo!32247 r!7292)) Nil!63778)))))

(declare-fun bm!454726 () Bool)

(assert (=> bm!454726 (= call!454731 (isEmpty!35655 s!2326))))

(declare-fun b!5822473 () Bool)

(declare-fun c!1031868 () Bool)

(assert (=> b!5822473 (= c!1031868 ((_ is ElementMatch!15867) (regTwo!32247 r!7292)))))

(declare-fun e!3573227 () Bool)

(assert (=> b!5822473 (= e!3573227 e!3573224)))

(declare-fun b!5822474 () Bool)

(declare-fun c!1031865 () Bool)

(assert (=> b!5822474 (= c!1031865 ((_ is Union!15867) (regTwo!32247 r!7292)))))

(assert (=> b!5822474 (= e!3573224 e!3573222)))

(declare-fun b!5822475 () Bool)

(assert (=> b!5822475 (= e!3573222 e!3573225)))

(assert (=> b!5822475 (= c!1031867 ((_ is Star!15867) (regTwo!32247 r!7292)))))

(declare-fun b!5822476 () Bool)

(assert (=> b!5822476 (= e!3573226 e!3573227)))

(declare-fun res!2455110 () Bool)

(assert (=> b!5822476 (= res!2455110 (not ((_ is EmptyLang!15867) (regTwo!32247 r!7292))))))

(assert (=> b!5822476 (=> (not res!2455110) (not e!3573227))))

(assert (= (and d!1832191 c!1031866) b!5822468))

(assert (= (and d!1832191 (not c!1031866)) b!5822476))

(assert (= (and b!5822476 res!2455110) b!5822473))

(assert (= (and b!5822473 c!1031868) b!5822472))

(assert (= (and b!5822473 (not c!1031868)) b!5822474))

(assert (= (and b!5822474 c!1031865) b!5822470))

(assert (= (and b!5822474 (not c!1031865)) b!5822475))

(assert (= (and b!5822470 (not res!2455109)) b!5822471))

(assert (= (and b!5822475 c!1031867) b!5822469))

(assert (= (and b!5822475 (not c!1031867)) b!5822466))

(assert (= (and b!5822469 (not res!2455111)) b!5822467))

(assert (= (or b!5822467 b!5822466) bm!454725))

(assert (= (or b!5822468 b!5822469) bm!454726))

(declare-fun m!6756956 () Bool)

(assert (=> bm!454725 m!6756956))

(declare-fun m!6756958 () Bool)

(assert (=> b!5822470 m!6756958))

(declare-fun m!6756960 () Bool)

(assert (=> b!5822471 m!6756960))

(assert (=> bm!454726 m!6756762))

(assert (=> b!5822154 d!1832191))

(assert (=> b!5822107 d!1832133))

(assert (=> b!5822107 d!1832135))

(declare-fun d!1832193 () Bool)

(declare-fun res!2455116 () Bool)

(declare-fun e!3573256 () Bool)

(assert (=> d!1832193 (=> res!2455116 e!3573256)))

(assert (=> d!1832193 (= res!2455116 ((_ is Nil!63777) lt!2302364))))

(assert (=> d!1832193 (= (noDuplicate!1740 lt!2302364) e!3573256)))

(declare-fun b!5822561 () Bool)

(declare-fun e!3573257 () Bool)

(assert (=> b!5822561 (= e!3573256 e!3573257)))

(declare-fun res!2455117 () Bool)

(assert (=> b!5822561 (=> (not res!2455117) (not e!3573257))))

(declare-fun contains!19903 (List!63901 Context!10502) Bool)

(assert (=> b!5822561 (= res!2455117 (not (contains!19903 (t!377256 lt!2302364) (h!70225 lt!2302364))))))

(declare-fun b!5822562 () Bool)

(assert (=> b!5822562 (= e!3573257 (noDuplicate!1740 (t!377256 lt!2302364)))))

(assert (= (and d!1832193 (not res!2455116)) b!5822561))

(assert (= (and b!5822561 res!2455117) b!5822562))

(declare-fun m!6756962 () Bool)

(assert (=> b!5822561 m!6756962))

(declare-fun m!6756964 () Bool)

(assert (=> b!5822562 m!6756964))

(assert (=> d!1832105 d!1832193))

(declare-fun d!1832195 () Bool)

(declare-fun e!3573277 () Bool)

(assert (=> d!1832195 e!3573277))

(declare-fun res!2455122 () Bool)

(assert (=> d!1832195 (=> (not res!2455122) (not e!3573277))))

(declare-fun res!2455123 () List!63901)

(assert (=> d!1832195 (= res!2455122 (noDuplicate!1740 res!2455123))))

(declare-fun e!3573278 () Bool)

(assert (=> d!1832195 e!3573278))

(assert (=> d!1832195 (= (choose!44253 z!1189) res!2455123)))

(declare-fun b!5822606 () Bool)

(declare-fun e!3573276 () Bool)

(declare-fun tp!1606980 () Bool)

(assert (=> b!5822606 (= e!3573276 tp!1606980)))

(declare-fun b!5822605 () Bool)

(declare-fun tp!1606979 () Bool)

(assert (=> b!5822605 (= e!3573278 (and (inv!82914 (h!70225 res!2455123)) e!3573276 tp!1606979))))

(declare-fun b!5822607 () Bool)

(assert (=> b!5822607 (= e!3573277 (= (content!11706 res!2455123) z!1189))))

(assert (= b!5822605 b!5822606))

(assert (= (and d!1832195 ((_ is Cons!63777) res!2455123)) b!5822605))

(assert (= (and d!1832195 res!2455122) b!5822607))

(declare-fun m!6756972 () Bool)

(assert (=> d!1832195 m!6756972))

(declare-fun m!6756974 () Bool)

(assert (=> b!5822605 m!6756974))

(declare-fun m!6756976 () Bool)

(assert (=> b!5822607 m!6756976))

(assert (=> d!1832105 d!1832195))

(assert (=> bm!454677 d!1832147))

(declare-fun b!5822608 () Bool)

(declare-fun e!3573282 () Bool)

(declare-fun e!3573281 () Bool)

(assert (=> b!5822608 (= e!3573282 e!3573281)))

(declare-fun c!1031870 () Bool)

(assert (=> b!5822608 (= c!1031870 ((_ is Star!15867) lt!2302343))))

(declare-fun b!5822609 () Bool)

(declare-fun res!2455127 () Bool)

(declare-fun e!3573285 () Bool)

(assert (=> b!5822609 (=> res!2455127 e!3573285)))

(assert (=> b!5822609 (= res!2455127 (not ((_ is Concat!24712) lt!2302343)))))

(declare-fun e!3573284 () Bool)

(assert (=> b!5822609 (= e!3573284 e!3573285)))

(declare-fun b!5822610 () Bool)

(declare-fun res!2455128 () Bool)

(declare-fun e!3573280 () Bool)

(assert (=> b!5822610 (=> (not res!2455128) (not e!3573280))))

(declare-fun call!454733 () Bool)

(assert (=> b!5822610 (= res!2455128 call!454733)))

(assert (=> b!5822610 (= e!3573284 e!3573280)))

(declare-fun b!5822611 () Bool)

(declare-fun e!3573279 () Bool)

(assert (=> b!5822611 (= e!3573285 e!3573279)))

(declare-fun res!2455126 () Bool)

(assert (=> b!5822611 (=> (not res!2455126) (not e!3573279))))

(assert (=> b!5822611 (= res!2455126 call!454733)))

(declare-fun b!5822612 () Bool)

(declare-fun call!454732 () Bool)

(assert (=> b!5822612 (= e!3573279 call!454732)))

(declare-fun bm!454727 () Bool)

(declare-fun c!1031869 () Bool)

(assert (=> bm!454727 (= call!454733 (validRegex!7603 (ite c!1031869 (regOne!32247 lt!2302343) (regOne!32246 lt!2302343))))))

(declare-fun b!5822613 () Bool)

(assert (=> b!5822613 (= e!3573280 call!454732)))

(declare-fun d!1832201 () Bool)

(declare-fun res!2455124 () Bool)

(assert (=> d!1832201 (=> res!2455124 e!3573282)))

(assert (=> d!1832201 (= res!2455124 ((_ is ElementMatch!15867) lt!2302343))))

(assert (=> d!1832201 (= (validRegex!7603 lt!2302343) e!3573282)))

(declare-fun b!5822614 () Bool)

(assert (=> b!5822614 (= e!3573281 e!3573284)))

(assert (=> b!5822614 (= c!1031869 ((_ is Union!15867) lt!2302343))))

(declare-fun b!5822615 () Bool)

(declare-fun e!3573283 () Bool)

(declare-fun call!454734 () Bool)

(assert (=> b!5822615 (= e!3573283 call!454734)))

(declare-fun bm!454728 () Bool)

(assert (=> bm!454728 (= call!454734 (validRegex!7603 (ite c!1031870 (reg!16196 lt!2302343) (ite c!1031869 (regTwo!32247 lt!2302343) (regTwo!32246 lt!2302343)))))))

(declare-fun bm!454729 () Bool)

(assert (=> bm!454729 (= call!454732 call!454734)))

(declare-fun b!5822616 () Bool)

(assert (=> b!5822616 (= e!3573281 e!3573283)))

(declare-fun res!2455125 () Bool)

(assert (=> b!5822616 (= res!2455125 (not (nullable!5873 (reg!16196 lt!2302343))))))

(assert (=> b!5822616 (=> (not res!2455125) (not e!3573283))))

(assert (= (and d!1832201 (not res!2455124)) b!5822608))

(assert (= (and b!5822608 c!1031870) b!5822616))

(assert (= (and b!5822608 (not c!1031870)) b!5822614))

(assert (= (and b!5822616 res!2455125) b!5822615))

(assert (= (and b!5822614 c!1031869) b!5822610))

(assert (= (and b!5822614 (not c!1031869)) b!5822609))

(assert (= (and b!5822610 res!2455128) b!5822613))

(assert (= (and b!5822609 (not res!2455127)) b!5822611))

(assert (= (and b!5822611 res!2455126) b!5822612))

(assert (= (or b!5822613 b!5822612) bm!454729))

(assert (= (or b!5822610 b!5822611) bm!454727))

(assert (= (or b!5822615 bm!454729) bm!454728))

(declare-fun m!6756978 () Bool)

(assert (=> bm!454727 m!6756978))

(declare-fun m!6756980 () Bool)

(assert (=> bm!454728 m!6756980))

(declare-fun m!6756982 () Bool)

(assert (=> b!5822616 m!6756982))

(assert (=> d!1832071 d!1832201))

(declare-fun bs!1373685 () Bool)

(declare-fun d!1832203 () Bool)

(assert (= bs!1373685 (and d!1832203 d!1832073)))

(declare-fun lambda!318664 () Int)

(assert (=> bs!1373685 (= lambda!318664 lambda!318637)))

(declare-fun bs!1373686 () Bool)

(assert (= bs!1373686 (and d!1832203 d!1832103)))

(assert (=> bs!1373686 (= lambda!318664 lambda!318644)))

(declare-fun bs!1373687 () Bool)

(assert (= bs!1373687 (and d!1832203 d!1832187)))

(assert (=> bs!1373687 (= lambda!318664 lambda!318657)))

(declare-fun b!5822637 () Bool)

(declare-fun e!3573298 () Bool)

(declare-fun lt!2302381 () Regex!15867)

(declare-fun head!12306 (List!63900) Regex!15867)

(assert (=> b!5822637 (= e!3573298 (= lt!2302381 (head!12306 (unfocusZipperList!1289 zl!343))))))

(declare-fun b!5822638 () Bool)

(declare-fun e!3573301 () Regex!15867)

(assert (=> b!5822638 (= e!3573301 (h!70224 (unfocusZipperList!1289 zl!343)))))

(declare-fun b!5822639 () Bool)

(declare-fun e!3573300 () Regex!15867)

(assert (=> b!5822639 (= e!3573301 e!3573300)))

(declare-fun c!1031879 () Bool)

(assert (=> b!5822639 (= c!1031879 ((_ is Cons!63776) (unfocusZipperList!1289 zl!343)))))

(declare-fun b!5822640 () Bool)

(declare-fun e!3573299 () Bool)

(assert (=> b!5822640 (= e!3573299 (isEmptyLang!1319 lt!2302381))))

(declare-fun b!5822641 () Bool)

(assert (=> b!5822641 (= e!3573300 EmptyLang!15867)))

(declare-fun e!3573303 () Bool)

(assert (=> d!1832203 e!3573303))

(declare-fun res!2455133 () Bool)

(assert (=> d!1832203 (=> (not res!2455133) (not e!3573303))))

(assert (=> d!1832203 (= res!2455133 (validRegex!7603 lt!2302381))))

(assert (=> d!1832203 (= lt!2302381 e!3573301)))

(declare-fun c!1031881 () Bool)

(declare-fun e!3573302 () Bool)

(assert (=> d!1832203 (= c!1031881 e!3573302)))

(declare-fun res!2455134 () Bool)

(assert (=> d!1832203 (=> (not res!2455134) (not e!3573302))))

(assert (=> d!1832203 (= res!2455134 ((_ is Cons!63776) (unfocusZipperList!1289 zl!343)))))

(assert (=> d!1832203 (forall!14961 (unfocusZipperList!1289 zl!343) lambda!318664)))

(assert (=> d!1832203 (= (generalisedUnion!1712 (unfocusZipperList!1289 zl!343)) lt!2302381)))

(declare-fun b!5822642 () Bool)

(assert (=> b!5822642 (= e!3573303 e!3573299)))

(declare-fun c!1031882 () Bool)

(declare-fun isEmpty!35657 (List!63900) Bool)

(assert (=> b!5822642 (= c!1031882 (isEmpty!35657 (unfocusZipperList!1289 zl!343)))))

(declare-fun b!5822643 () Bool)

(declare-fun isUnion!749 (Regex!15867) Bool)

(assert (=> b!5822643 (= e!3573298 (isUnion!749 lt!2302381))))

(declare-fun b!5822644 () Bool)

(assert (=> b!5822644 (= e!3573299 e!3573298)))

(declare-fun c!1031880 () Bool)

(declare-fun tail!11391 (List!63900) List!63900)

(assert (=> b!5822644 (= c!1031880 (isEmpty!35657 (tail!11391 (unfocusZipperList!1289 zl!343))))))

(declare-fun b!5822645 () Bool)

(assert (=> b!5822645 (= e!3573300 (Union!15867 (h!70224 (unfocusZipperList!1289 zl!343)) (generalisedUnion!1712 (t!377255 (unfocusZipperList!1289 zl!343)))))))

(declare-fun b!5822646 () Bool)

(assert (=> b!5822646 (= e!3573302 (isEmpty!35657 (t!377255 (unfocusZipperList!1289 zl!343))))))

(assert (= (and d!1832203 res!2455134) b!5822646))

(assert (= (and d!1832203 c!1031881) b!5822638))

(assert (= (and d!1832203 (not c!1031881)) b!5822639))

(assert (= (and b!5822639 c!1031879) b!5822645))

(assert (= (and b!5822639 (not c!1031879)) b!5822641))

(assert (= (and d!1832203 res!2455133) b!5822642))

(assert (= (and b!5822642 c!1031882) b!5822640))

(assert (= (and b!5822642 (not c!1031882)) b!5822644))

(assert (= (and b!5822644 c!1031880) b!5822637))

(assert (= (and b!5822644 (not c!1031880)) b!5822643))

(assert (=> b!5822637 m!6756690))

(declare-fun m!6756984 () Bool)

(assert (=> b!5822637 m!6756984))

(assert (=> b!5822644 m!6756690))

(declare-fun m!6756986 () Bool)

(assert (=> b!5822644 m!6756986))

(assert (=> b!5822644 m!6756986))

(declare-fun m!6756988 () Bool)

(assert (=> b!5822644 m!6756988))

(declare-fun m!6756990 () Bool)

(assert (=> b!5822643 m!6756990))

(declare-fun m!6756992 () Bool)

(assert (=> b!5822645 m!6756992))

(declare-fun m!6756994 () Bool)

(assert (=> b!5822646 m!6756994))

(declare-fun m!6756996 () Bool)

(assert (=> d!1832203 m!6756996))

(assert (=> d!1832203 m!6756690))

(declare-fun m!6756998 () Bool)

(assert (=> d!1832203 m!6756998))

(assert (=> b!5822642 m!6756690))

(declare-fun m!6757000 () Bool)

(assert (=> b!5822642 m!6757000))

(declare-fun m!6757002 () Bool)

(assert (=> b!5822640 m!6757002))

(assert (=> d!1832071 d!1832203))

(declare-fun bs!1373688 () Bool)

(declare-fun d!1832205 () Bool)

(assert (= bs!1373688 (and d!1832205 d!1832073)))

(declare-fun lambda!318667 () Int)

(assert (=> bs!1373688 (= lambda!318667 lambda!318637)))

(declare-fun bs!1373689 () Bool)

(assert (= bs!1373689 (and d!1832205 d!1832103)))

(assert (=> bs!1373689 (= lambda!318667 lambda!318644)))

(declare-fun bs!1373690 () Bool)

(assert (= bs!1373690 (and d!1832205 d!1832187)))

(assert (=> bs!1373690 (= lambda!318667 lambda!318657)))

(declare-fun bs!1373691 () Bool)

(assert (= bs!1373691 (and d!1832205 d!1832203)))

(assert (=> bs!1373691 (= lambda!318667 lambda!318664)))

(declare-fun lt!2302384 () List!63900)

(assert (=> d!1832205 (forall!14961 lt!2302384 lambda!318667)))

(declare-fun e!3573306 () List!63900)

(assert (=> d!1832205 (= lt!2302384 e!3573306)))

(declare-fun c!1031885 () Bool)

(assert (=> d!1832205 (= c!1031885 ((_ is Cons!63777) zl!343))))

(assert (=> d!1832205 (= (unfocusZipperList!1289 zl!343) lt!2302384)))

(declare-fun b!5822651 () Bool)

(declare-fun generalisedConcat!1466 (List!63900) Regex!15867)

(assert (=> b!5822651 (= e!3573306 (Cons!63776 (generalisedConcat!1466 (exprs!5751 (h!70225 zl!343))) (unfocusZipperList!1289 (t!377256 zl!343))))))

(declare-fun b!5822652 () Bool)

(assert (=> b!5822652 (= e!3573306 Nil!63776)))

(assert (= (and d!1832205 c!1031885) b!5822651))

(assert (= (and d!1832205 (not c!1031885)) b!5822652))

(declare-fun m!6757004 () Bool)

(assert (=> d!1832205 m!6757004))

(declare-fun m!6757006 () Bool)

(assert (=> b!5822651 m!6757006))

(declare-fun m!6757008 () Bool)

(assert (=> b!5822651 m!6757008))

(assert (=> d!1832071 d!1832205))

(declare-fun bs!1373692 () Bool)

(declare-fun d!1832207 () Bool)

(assert (= bs!1373692 (and d!1832207 d!1832205)))

(declare-fun lambda!318668 () Int)

(assert (=> bs!1373692 (= lambda!318668 lambda!318667)))

(declare-fun bs!1373693 () Bool)

(assert (= bs!1373693 (and d!1832207 d!1832103)))

(assert (=> bs!1373693 (= lambda!318668 lambda!318644)))

(declare-fun bs!1373694 () Bool)

(assert (= bs!1373694 (and d!1832207 d!1832187)))

(assert (=> bs!1373694 (= lambda!318668 lambda!318657)))

(declare-fun bs!1373695 () Bool)

(assert (= bs!1373695 (and d!1832207 d!1832073)))

(assert (=> bs!1373695 (= lambda!318668 lambda!318637)))

(declare-fun bs!1373696 () Bool)

(assert (= bs!1373696 (and d!1832207 d!1832203)))

(assert (=> bs!1373696 (= lambda!318668 lambda!318664)))

(assert (=> d!1832207 (= (inv!82914 setElem!39326) (forall!14961 (exprs!5751 setElem!39326) lambda!318668))))

(declare-fun bs!1373697 () Bool)

(assert (= bs!1373697 d!1832207))

(declare-fun m!6757010 () Bool)

(assert (=> bs!1373697 m!6757010))

(assert (=> setNonEmpty!39326 d!1832207))

(declare-fun b!5822656 () Bool)

(declare-fun e!3573307 () Bool)

(declare-fun tp!1606983 () Bool)

(declare-fun tp!1606984 () Bool)

(assert (=> b!5822656 (= e!3573307 (and tp!1606983 tp!1606984))))

(assert (=> b!5822202 (= tp!1606796 e!3573307)))

(declare-fun b!5822655 () Bool)

(declare-fun tp!1606981 () Bool)

(assert (=> b!5822655 (= e!3573307 tp!1606981)))

(declare-fun b!5822653 () Bool)

(assert (=> b!5822653 (= e!3573307 tp_is_empty!40987)))

(declare-fun b!5822654 () Bool)

(declare-fun tp!1606982 () Bool)

(declare-fun tp!1606985 () Bool)

(assert (=> b!5822654 (= e!3573307 (and tp!1606982 tp!1606985))))

(assert (= (and b!5822202 ((_ is ElementMatch!15867) (h!70224 (exprs!5751 (h!70225 zl!343))))) b!5822653))

(assert (= (and b!5822202 ((_ is Concat!24712) (h!70224 (exprs!5751 (h!70225 zl!343))))) b!5822654))

(assert (= (and b!5822202 ((_ is Star!15867) (h!70224 (exprs!5751 (h!70225 zl!343))))) b!5822655))

(assert (= (and b!5822202 ((_ is Union!15867) (h!70224 (exprs!5751 (h!70225 zl!343))))) b!5822656))

(declare-fun b!5822657 () Bool)

(declare-fun e!3573308 () Bool)

(declare-fun tp!1606986 () Bool)

(declare-fun tp!1606987 () Bool)

(assert (=> b!5822657 (= e!3573308 (and tp!1606986 tp!1606987))))

(assert (=> b!5822202 (= tp!1606797 e!3573308)))

(assert (= (and b!5822202 ((_ is Cons!63776) (t!377255 (exprs!5751 (h!70225 zl!343))))) b!5822657))

(declare-fun b!5822658 () Bool)

(declare-fun e!3573309 () Bool)

(declare-fun tp!1606988 () Bool)

(assert (=> b!5822658 (= e!3573309 (and tp_is_empty!40987 tp!1606988))))

(assert (=> b!5822179 (= tp!1606771 e!3573309)))

(assert (= (and b!5822179 ((_ is Cons!63778) (t!377257 (t!377257 s!2326)))) b!5822658))

(declare-fun b!5822662 () Bool)

(declare-fun e!3573310 () Bool)

(declare-fun tp!1606991 () Bool)

(declare-fun tp!1606992 () Bool)

(assert (=> b!5822662 (= e!3573310 (and tp!1606991 tp!1606992))))

(assert (=> b!5822209 (= tp!1606803 e!3573310)))

(declare-fun b!5822661 () Bool)

(declare-fun tp!1606989 () Bool)

(assert (=> b!5822661 (= e!3573310 tp!1606989)))

(declare-fun b!5822659 () Bool)

(assert (=> b!5822659 (= e!3573310 tp_is_empty!40987)))

(declare-fun b!5822660 () Bool)

(declare-fun tp!1606990 () Bool)

(declare-fun tp!1606993 () Bool)

(assert (=> b!5822660 (= e!3573310 (and tp!1606990 tp!1606993))))

(assert (= (and b!5822209 ((_ is ElementMatch!15867) (reg!16196 (regTwo!32247 r!7292)))) b!5822659))

(assert (= (and b!5822209 ((_ is Concat!24712) (reg!16196 (regTwo!32247 r!7292)))) b!5822660))

(assert (= (and b!5822209 ((_ is Star!15867) (reg!16196 (regTwo!32247 r!7292)))) b!5822661))

(assert (= (and b!5822209 ((_ is Union!15867) (reg!16196 (regTwo!32247 r!7292)))) b!5822662))

(declare-fun b!5822666 () Bool)

(declare-fun e!3573311 () Bool)

(declare-fun tp!1606996 () Bool)

(declare-fun tp!1606997 () Bool)

(assert (=> b!5822666 (= e!3573311 (and tp!1606996 tp!1606997))))

(assert (=> b!5822210 (= tp!1606805 e!3573311)))

(declare-fun b!5822665 () Bool)

(declare-fun tp!1606994 () Bool)

(assert (=> b!5822665 (= e!3573311 tp!1606994)))

(declare-fun b!5822663 () Bool)

(assert (=> b!5822663 (= e!3573311 tp_is_empty!40987)))

(declare-fun b!5822664 () Bool)

(declare-fun tp!1606995 () Bool)

(declare-fun tp!1606998 () Bool)

(assert (=> b!5822664 (= e!3573311 (and tp!1606995 tp!1606998))))

(assert (= (and b!5822210 ((_ is ElementMatch!15867) (regOne!32247 (regTwo!32247 r!7292)))) b!5822663))

(assert (= (and b!5822210 ((_ is Concat!24712) (regOne!32247 (regTwo!32247 r!7292)))) b!5822664))

(assert (= (and b!5822210 ((_ is Star!15867) (regOne!32247 (regTwo!32247 r!7292)))) b!5822665))

(assert (= (and b!5822210 ((_ is Union!15867) (regOne!32247 (regTwo!32247 r!7292)))) b!5822666))

(declare-fun b!5822670 () Bool)

(declare-fun e!3573312 () Bool)

(declare-fun tp!1607001 () Bool)

(declare-fun tp!1607002 () Bool)

(assert (=> b!5822670 (= e!3573312 (and tp!1607001 tp!1607002))))

(assert (=> b!5822210 (= tp!1606806 e!3573312)))

(declare-fun b!5822669 () Bool)

(declare-fun tp!1606999 () Bool)

(assert (=> b!5822669 (= e!3573312 tp!1606999)))

(declare-fun b!5822667 () Bool)

(assert (=> b!5822667 (= e!3573312 tp_is_empty!40987)))

(declare-fun b!5822668 () Bool)

(declare-fun tp!1607000 () Bool)

(declare-fun tp!1607003 () Bool)

(assert (=> b!5822668 (= e!3573312 (and tp!1607000 tp!1607003))))

(assert (= (and b!5822210 ((_ is ElementMatch!15867) (regTwo!32247 (regTwo!32247 r!7292)))) b!5822667))

(assert (= (and b!5822210 ((_ is Concat!24712) (regTwo!32247 (regTwo!32247 r!7292)))) b!5822668))

(assert (= (and b!5822210 ((_ is Star!15867) (regTwo!32247 (regTwo!32247 r!7292)))) b!5822669))

(assert (= (and b!5822210 ((_ is Union!15867) (regTwo!32247 (regTwo!32247 r!7292)))) b!5822670))

(declare-fun b!5822674 () Bool)

(declare-fun e!3573313 () Bool)

(declare-fun tp!1607006 () Bool)

(declare-fun tp!1607007 () Bool)

(assert (=> b!5822674 (= e!3573313 (and tp!1607006 tp!1607007))))

(assert (=> b!5822211 (= tp!1606808 e!3573313)))

(declare-fun b!5822673 () Bool)

(declare-fun tp!1607004 () Bool)

(assert (=> b!5822673 (= e!3573313 tp!1607004)))

(declare-fun b!5822671 () Bool)

(assert (=> b!5822671 (= e!3573313 tp_is_empty!40987)))

(declare-fun b!5822672 () Bool)

(declare-fun tp!1607005 () Bool)

(declare-fun tp!1607008 () Bool)

(assert (=> b!5822672 (= e!3573313 (and tp!1607005 tp!1607008))))

(assert (= (and b!5822211 ((_ is ElementMatch!15867) (h!70224 (exprs!5751 setElem!39320)))) b!5822671))

(assert (= (and b!5822211 ((_ is Concat!24712) (h!70224 (exprs!5751 setElem!39320)))) b!5822672))

(assert (= (and b!5822211 ((_ is Star!15867) (h!70224 (exprs!5751 setElem!39320)))) b!5822673))

(assert (= (and b!5822211 ((_ is Union!15867) (h!70224 (exprs!5751 setElem!39320)))) b!5822674))

(declare-fun b!5822675 () Bool)

(declare-fun e!3573314 () Bool)

(declare-fun tp!1607009 () Bool)

(declare-fun tp!1607010 () Bool)

(assert (=> b!5822675 (= e!3573314 (and tp!1607009 tp!1607010))))

(assert (=> b!5822211 (= tp!1606809 e!3573314)))

(assert (= (and b!5822211 ((_ is Cons!63776) (t!377255 (exprs!5751 setElem!39320)))) b!5822675))

(declare-fun b!5822679 () Bool)

(declare-fun e!3573315 () Bool)

(declare-fun tp!1607013 () Bool)

(declare-fun tp!1607014 () Bool)

(assert (=> b!5822679 (= e!3573315 (and tp!1607013 tp!1607014))))

(assert (=> b!5822196 (= tp!1606787 e!3573315)))

(declare-fun b!5822678 () Bool)

(declare-fun tp!1607011 () Bool)

(assert (=> b!5822678 (= e!3573315 tp!1607011)))

(declare-fun b!5822676 () Bool)

(assert (=> b!5822676 (= e!3573315 tp_is_empty!40987)))

(declare-fun b!5822677 () Bool)

(declare-fun tp!1607012 () Bool)

(declare-fun tp!1607015 () Bool)

(assert (=> b!5822677 (= e!3573315 (and tp!1607012 tp!1607015))))

(assert (= (and b!5822196 ((_ is ElementMatch!15867) (reg!16196 (regTwo!32246 r!7292)))) b!5822676))

(assert (= (and b!5822196 ((_ is Concat!24712) (reg!16196 (regTwo!32246 r!7292)))) b!5822677))

(assert (= (and b!5822196 ((_ is Star!15867) (reg!16196 (regTwo!32246 r!7292)))) b!5822678))

(assert (= (and b!5822196 ((_ is Union!15867) (reg!16196 (regTwo!32246 r!7292)))) b!5822679))

(declare-fun b!5822683 () Bool)

(declare-fun e!3573316 () Bool)

(declare-fun tp!1607018 () Bool)

(declare-fun tp!1607019 () Bool)

(assert (=> b!5822683 (= e!3573316 (and tp!1607018 tp!1607019))))

(assert (=> b!5822195 (= tp!1606788 e!3573316)))

(declare-fun b!5822682 () Bool)

(declare-fun tp!1607016 () Bool)

(assert (=> b!5822682 (= e!3573316 tp!1607016)))

(declare-fun b!5822680 () Bool)

(assert (=> b!5822680 (= e!3573316 tp_is_empty!40987)))

(declare-fun b!5822681 () Bool)

(declare-fun tp!1607017 () Bool)

(declare-fun tp!1607020 () Bool)

(assert (=> b!5822681 (= e!3573316 (and tp!1607017 tp!1607020))))

(assert (= (and b!5822195 ((_ is ElementMatch!15867) (regOne!32246 (regTwo!32246 r!7292)))) b!5822680))

(assert (= (and b!5822195 ((_ is Concat!24712) (regOne!32246 (regTwo!32246 r!7292)))) b!5822681))

(assert (= (and b!5822195 ((_ is Star!15867) (regOne!32246 (regTwo!32246 r!7292)))) b!5822682))

(assert (= (and b!5822195 ((_ is Union!15867) (regOne!32246 (regTwo!32246 r!7292)))) b!5822683))

(declare-fun b!5822687 () Bool)

(declare-fun e!3573317 () Bool)

(declare-fun tp!1607023 () Bool)

(declare-fun tp!1607024 () Bool)

(assert (=> b!5822687 (= e!3573317 (and tp!1607023 tp!1607024))))

(assert (=> b!5822195 (= tp!1606791 e!3573317)))

(declare-fun b!5822686 () Bool)

(declare-fun tp!1607021 () Bool)

(assert (=> b!5822686 (= e!3573317 tp!1607021)))

(declare-fun b!5822684 () Bool)

(assert (=> b!5822684 (= e!3573317 tp_is_empty!40987)))

(declare-fun b!5822685 () Bool)

(declare-fun tp!1607022 () Bool)

(declare-fun tp!1607025 () Bool)

(assert (=> b!5822685 (= e!3573317 (and tp!1607022 tp!1607025))))

(assert (= (and b!5822195 ((_ is ElementMatch!15867) (regTwo!32246 (regTwo!32246 r!7292)))) b!5822684))

(assert (= (and b!5822195 ((_ is Concat!24712) (regTwo!32246 (regTwo!32246 r!7292)))) b!5822685))

(assert (= (and b!5822195 ((_ is Star!15867) (regTwo!32246 (regTwo!32246 r!7292)))) b!5822686))

(assert (= (and b!5822195 ((_ is Union!15867) (regTwo!32246 (regTwo!32246 r!7292)))) b!5822687))

(declare-fun b!5822691 () Bool)

(declare-fun e!3573318 () Bool)

(declare-fun tp!1607028 () Bool)

(declare-fun tp!1607029 () Bool)

(assert (=> b!5822691 (= e!3573318 (and tp!1607028 tp!1607029))))

(assert (=> b!5822192 (= tp!1606782 e!3573318)))

(declare-fun b!5822690 () Bool)

(declare-fun tp!1607026 () Bool)

(assert (=> b!5822690 (= e!3573318 tp!1607026)))

(declare-fun b!5822688 () Bool)

(assert (=> b!5822688 (= e!3573318 tp_is_empty!40987)))

(declare-fun b!5822689 () Bool)

(declare-fun tp!1607027 () Bool)

(declare-fun tp!1607030 () Bool)

(assert (=> b!5822689 (= e!3573318 (and tp!1607027 tp!1607030))))

(assert (= (and b!5822192 ((_ is ElementMatch!15867) (reg!16196 (regOne!32246 r!7292)))) b!5822688))

(assert (= (and b!5822192 ((_ is Concat!24712) (reg!16196 (regOne!32246 r!7292)))) b!5822689))

(assert (= (and b!5822192 ((_ is Star!15867) (reg!16196 (regOne!32246 r!7292)))) b!5822690))

(assert (= (and b!5822192 ((_ is Union!15867) (reg!16196 (regOne!32246 r!7292)))) b!5822691))

(declare-fun b!5822695 () Bool)

(declare-fun e!3573319 () Bool)

(declare-fun tp!1607033 () Bool)

(declare-fun tp!1607034 () Bool)

(assert (=> b!5822695 (= e!3573319 (and tp!1607033 tp!1607034))))

(assert (=> b!5822193 (= tp!1606784 e!3573319)))

(declare-fun b!5822694 () Bool)

(declare-fun tp!1607031 () Bool)

(assert (=> b!5822694 (= e!3573319 tp!1607031)))

(declare-fun b!5822692 () Bool)

(assert (=> b!5822692 (= e!3573319 tp_is_empty!40987)))

(declare-fun b!5822693 () Bool)

(declare-fun tp!1607032 () Bool)

(declare-fun tp!1607035 () Bool)

(assert (=> b!5822693 (= e!3573319 (and tp!1607032 tp!1607035))))

(assert (= (and b!5822193 ((_ is ElementMatch!15867) (regOne!32247 (regOne!32246 r!7292)))) b!5822692))

(assert (= (and b!5822193 ((_ is Concat!24712) (regOne!32247 (regOne!32246 r!7292)))) b!5822693))

(assert (= (and b!5822193 ((_ is Star!15867) (regOne!32247 (regOne!32246 r!7292)))) b!5822694))

(assert (= (and b!5822193 ((_ is Union!15867) (regOne!32247 (regOne!32246 r!7292)))) b!5822695))

(declare-fun b!5822699 () Bool)

(declare-fun e!3573320 () Bool)

(declare-fun tp!1607038 () Bool)

(declare-fun tp!1607039 () Bool)

(assert (=> b!5822699 (= e!3573320 (and tp!1607038 tp!1607039))))

(assert (=> b!5822193 (= tp!1606785 e!3573320)))

(declare-fun b!5822698 () Bool)

(declare-fun tp!1607036 () Bool)

(assert (=> b!5822698 (= e!3573320 tp!1607036)))

(declare-fun b!5822696 () Bool)

(assert (=> b!5822696 (= e!3573320 tp_is_empty!40987)))

(declare-fun b!5822697 () Bool)

(declare-fun tp!1607037 () Bool)

(declare-fun tp!1607040 () Bool)

(assert (=> b!5822697 (= e!3573320 (and tp!1607037 tp!1607040))))

(assert (= (and b!5822193 ((_ is ElementMatch!15867) (regTwo!32247 (regOne!32246 r!7292)))) b!5822696))

(assert (= (and b!5822193 ((_ is Concat!24712) (regTwo!32247 (regOne!32246 r!7292)))) b!5822697))

(assert (= (and b!5822193 ((_ is Star!15867) (regTwo!32247 (regOne!32246 r!7292)))) b!5822698))

(assert (= (and b!5822193 ((_ is Union!15867) (regTwo!32247 (regOne!32246 r!7292)))) b!5822699))

(declare-fun b!5822703 () Bool)

(declare-fun e!3573321 () Bool)

(declare-fun tp!1607043 () Bool)

(declare-fun tp!1607044 () Bool)

(assert (=> b!5822703 (= e!3573321 (and tp!1607043 tp!1607044))))

(assert (=> b!5822208 (= tp!1606804 e!3573321)))

(declare-fun b!5822702 () Bool)

(declare-fun tp!1607041 () Bool)

(assert (=> b!5822702 (= e!3573321 tp!1607041)))

(declare-fun b!5822700 () Bool)

(assert (=> b!5822700 (= e!3573321 tp_is_empty!40987)))

(declare-fun b!5822701 () Bool)

(declare-fun tp!1607042 () Bool)

(declare-fun tp!1607045 () Bool)

(assert (=> b!5822701 (= e!3573321 (and tp!1607042 tp!1607045))))

(assert (= (and b!5822208 ((_ is ElementMatch!15867) (regOne!32246 (regTwo!32247 r!7292)))) b!5822700))

(assert (= (and b!5822208 ((_ is Concat!24712) (regOne!32246 (regTwo!32247 r!7292)))) b!5822701))

(assert (= (and b!5822208 ((_ is Star!15867) (regOne!32246 (regTwo!32247 r!7292)))) b!5822702))

(assert (= (and b!5822208 ((_ is Union!15867) (regOne!32246 (regTwo!32247 r!7292)))) b!5822703))

(declare-fun b!5822707 () Bool)

(declare-fun e!3573322 () Bool)

(declare-fun tp!1607048 () Bool)

(declare-fun tp!1607049 () Bool)

(assert (=> b!5822707 (= e!3573322 (and tp!1607048 tp!1607049))))

(assert (=> b!5822208 (= tp!1606807 e!3573322)))

(declare-fun b!5822706 () Bool)

(declare-fun tp!1607046 () Bool)

(assert (=> b!5822706 (= e!3573322 tp!1607046)))

(declare-fun b!5822704 () Bool)

(assert (=> b!5822704 (= e!3573322 tp_is_empty!40987)))

(declare-fun b!5822705 () Bool)

(declare-fun tp!1607047 () Bool)

(declare-fun tp!1607050 () Bool)

(assert (=> b!5822705 (= e!3573322 (and tp!1607047 tp!1607050))))

(assert (= (and b!5822208 ((_ is ElementMatch!15867) (regTwo!32246 (regTwo!32247 r!7292)))) b!5822704))

(assert (= (and b!5822208 ((_ is Concat!24712) (regTwo!32246 (regTwo!32247 r!7292)))) b!5822705))

(assert (= (and b!5822208 ((_ is Star!15867) (regTwo!32246 (regTwo!32247 r!7292)))) b!5822706))

(assert (= (and b!5822208 ((_ is Union!15867) (regTwo!32246 (regTwo!32247 r!7292)))) b!5822707))

(declare-fun condSetEmpty!39328 () Bool)

(assert (=> setNonEmpty!39326 (= condSetEmpty!39328 (= setRest!39326 ((as const (Array Context!10502 Bool)) false)))))

(declare-fun setRes!39328 () Bool)

(assert (=> setNonEmpty!39326 (= tp!1606814 setRes!39328)))

(declare-fun setIsEmpty!39328 () Bool)

(assert (=> setIsEmpty!39328 setRes!39328))

(declare-fun tp!1607051 () Bool)

(declare-fun e!3573323 () Bool)

(declare-fun setElem!39328 () Context!10502)

(declare-fun setNonEmpty!39328 () Bool)

(assert (=> setNonEmpty!39328 (= setRes!39328 (and tp!1607051 (inv!82914 setElem!39328) e!3573323))))

(declare-fun setRest!39328 () (InoxSet Context!10502))

(assert (=> setNonEmpty!39328 (= setRest!39326 ((_ map or) (store ((as const (Array Context!10502 Bool)) false) setElem!39328 true) setRest!39328))))

(declare-fun b!5822708 () Bool)

(declare-fun tp!1607052 () Bool)

(assert (=> b!5822708 (= e!3573323 tp!1607052)))

(assert (= (and setNonEmpty!39326 condSetEmpty!39328) setIsEmpty!39328))

(assert (= (and setNonEmpty!39326 (not condSetEmpty!39328)) setNonEmpty!39328))

(assert (= setNonEmpty!39328 b!5822708))

(declare-fun m!6757012 () Bool)

(assert (=> setNonEmpty!39328 m!6757012))

(declare-fun b!5822709 () Bool)

(declare-fun e!3573324 () Bool)

(declare-fun tp!1607053 () Bool)

(declare-fun tp!1607054 () Bool)

(assert (=> b!5822709 (= e!3573324 (and tp!1607053 tp!1607054))))

(assert (=> b!5822216 (= tp!1606815 e!3573324)))

(assert (= (and b!5822216 ((_ is Cons!63776) (exprs!5751 setElem!39326))) b!5822709))

(declare-fun b!5822713 () Bool)

(declare-fun e!3573325 () Bool)

(declare-fun tp!1607057 () Bool)

(declare-fun tp!1607058 () Bool)

(assert (=> b!5822713 (= e!3573325 (and tp!1607057 tp!1607058))))

(assert (=> b!5822206 (= tp!1606800 e!3573325)))

(declare-fun b!5822712 () Bool)

(declare-fun tp!1607055 () Bool)

(assert (=> b!5822712 (= e!3573325 tp!1607055)))

(declare-fun b!5822710 () Bool)

(assert (=> b!5822710 (= e!3573325 tp_is_empty!40987)))

(declare-fun b!5822711 () Bool)

(declare-fun tp!1607056 () Bool)

(declare-fun tp!1607059 () Bool)

(assert (=> b!5822711 (= e!3573325 (and tp!1607056 tp!1607059))))

(assert (= (and b!5822206 ((_ is ElementMatch!15867) (regOne!32247 (regOne!32247 r!7292)))) b!5822710))

(assert (= (and b!5822206 ((_ is Concat!24712) (regOne!32247 (regOne!32247 r!7292)))) b!5822711))

(assert (= (and b!5822206 ((_ is Star!15867) (regOne!32247 (regOne!32247 r!7292)))) b!5822712))

(assert (= (and b!5822206 ((_ is Union!15867) (regOne!32247 (regOne!32247 r!7292)))) b!5822713))

(declare-fun b!5822717 () Bool)

(declare-fun e!3573326 () Bool)

(declare-fun tp!1607062 () Bool)

(declare-fun tp!1607063 () Bool)

(assert (=> b!5822717 (= e!3573326 (and tp!1607062 tp!1607063))))

(assert (=> b!5822206 (= tp!1606801 e!3573326)))

(declare-fun b!5822716 () Bool)

(declare-fun tp!1607060 () Bool)

(assert (=> b!5822716 (= e!3573326 tp!1607060)))

(declare-fun b!5822714 () Bool)

(assert (=> b!5822714 (= e!3573326 tp_is_empty!40987)))

(declare-fun b!5822715 () Bool)

(declare-fun tp!1607061 () Bool)

(declare-fun tp!1607064 () Bool)

(assert (=> b!5822715 (= e!3573326 (and tp!1607061 tp!1607064))))

(assert (= (and b!5822206 ((_ is ElementMatch!15867) (regTwo!32247 (regOne!32247 r!7292)))) b!5822714))

(assert (= (and b!5822206 ((_ is Concat!24712) (regTwo!32247 (regOne!32247 r!7292)))) b!5822715))

(assert (= (and b!5822206 ((_ is Star!15867) (regTwo!32247 (regOne!32247 r!7292)))) b!5822716))

(assert (= (and b!5822206 ((_ is Union!15867) (regTwo!32247 (regOne!32247 r!7292)))) b!5822717))

(declare-fun b!5822721 () Bool)

(declare-fun e!3573327 () Bool)

(declare-fun tp!1607067 () Bool)

(declare-fun tp!1607068 () Bool)

(assert (=> b!5822721 (= e!3573327 (and tp!1607067 tp!1607068))))

(assert (=> b!5822205 (= tp!1606798 e!3573327)))

(declare-fun b!5822720 () Bool)

(declare-fun tp!1607065 () Bool)

(assert (=> b!5822720 (= e!3573327 tp!1607065)))

(declare-fun b!5822718 () Bool)

(assert (=> b!5822718 (= e!3573327 tp_is_empty!40987)))

(declare-fun b!5822719 () Bool)

(declare-fun tp!1607066 () Bool)

(declare-fun tp!1607069 () Bool)

(assert (=> b!5822719 (= e!3573327 (and tp!1607066 tp!1607069))))

(assert (= (and b!5822205 ((_ is ElementMatch!15867) (reg!16196 (regOne!32247 r!7292)))) b!5822718))

(assert (= (and b!5822205 ((_ is Concat!24712) (reg!16196 (regOne!32247 r!7292)))) b!5822719))

(assert (= (and b!5822205 ((_ is Star!15867) (reg!16196 (regOne!32247 r!7292)))) b!5822720))

(assert (= (and b!5822205 ((_ is Union!15867) (reg!16196 (regOne!32247 r!7292)))) b!5822721))

(declare-fun b!5822725 () Bool)

(declare-fun e!3573328 () Bool)

(declare-fun tp!1607072 () Bool)

(declare-fun tp!1607073 () Bool)

(assert (=> b!5822725 (= e!3573328 (and tp!1607072 tp!1607073))))

(assert (=> b!5822191 (= tp!1606783 e!3573328)))

(declare-fun b!5822724 () Bool)

(declare-fun tp!1607070 () Bool)

(assert (=> b!5822724 (= e!3573328 tp!1607070)))

(declare-fun b!5822722 () Bool)

(assert (=> b!5822722 (= e!3573328 tp_is_empty!40987)))

(declare-fun b!5822723 () Bool)

(declare-fun tp!1607071 () Bool)

(declare-fun tp!1607074 () Bool)

(assert (=> b!5822723 (= e!3573328 (and tp!1607071 tp!1607074))))

(assert (= (and b!5822191 ((_ is ElementMatch!15867) (regOne!32246 (regOne!32246 r!7292)))) b!5822722))

(assert (= (and b!5822191 ((_ is Concat!24712) (regOne!32246 (regOne!32246 r!7292)))) b!5822723))

(assert (= (and b!5822191 ((_ is Star!15867) (regOne!32246 (regOne!32246 r!7292)))) b!5822724))

(assert (= (and b!5822191 ((_ is Union!15867) (regOne!32246 (regOne!32246 r!7292)))) b!5822725))

(declare-fun b!5822729 () Bool)

(declare-fun e!3573329 () Bool)

(declare-fun tp!1607077 () Bool)

(declare-fun tp!1607078 () Bool)

(assert (=> b!5822729 (= e!3573329 (and tp!1607077 tp!1607078))))

(assert (=> b!5822191 (= tp!1606786 e!3573329)))

(declare-fun b!5822728 () Bool)

(declare-fun tp!1607075 () Bool)

(assert (=> b!5822728 (= e!3573329 tp!1607075)))

(declare-fun b!5822726 () Bool)

(assert (=> b!5822726 (= e!3573329 tp_is_empty!40987)))

(declare-fun b!5822727 () Bool)

(declare-fun tp!1607076 () Bool)

(declare-fun tp!1607079 () Bool)

(assert (=> b!5822727 (= e!3573329 (and tp!1607076 tp!1607079))))

(assert (= (and b!5822191 ((_ is ElementMatch!15867) (regTwo!32246 (regOne!32246 r!7292)))) b!5822726))

(assert (= (and b!5822191 ((_ is Concat!24712) (regTwo!32246 (regOne!32246 r!7292)))) b!5822727))

(assert (= (and b!5822191 ((_ is Star!15867) (regTwo!32246 (regOne!32246 r!7292)))) b!5822728))

(assert (= (and b!5822191 ((_ is Union!15867) (regTwo!32246 (regOne!32246 r!7292)))) b!5822729))

(declare-fun b!5822730 () Bool)

(declare-fun e!3573330 () Bool)

(declare-fun tp!1607080 () Bool)

(declare-fun tp!1607081 () Bool)

(assert (=> b!5822730 (= e!3573330 (and tp!1607080 tp!1607081))))

(assert (=> b!5822174 (= tp!1606767 e!3573330)))

(assert (= (and b!5822174 ((_ is Cons!63776) (exprs!5751 (h!70225 (t!377256 zl!343))))) b!5822730))

(declare-fun b!5822734 () Bool)

(declare-fun e!3573331 () Bool)

(declare-fun tp!1607084 () Bool)

(declare-fun tp!1607085 () Bool)

(assert (=> b!5822734 (= e!3573331 (and tp!1607084 tp!1607085))))

(assert (=> b!5822197 (= tp!1606789 e!3573331)))

(declare-fun b!5822733 () Bool)

(declare-fun tp!1607082 () Bool)

(assert (=> b!5822733 (= e!3573331 tp!1607082)))

(declare-fun b!5822731 () Bool)

(assert (=> b!5822731 (= e!3573331 tp_is_empty!40987)))

(declare-fun b!5822732 () Bool)

(declare-fun tp!1607083 () Bool)

(declare-fun tp!1607086 () Bool)

(assert (=> b!5822732 (= e!3573331 (and tp!1607083 tp!1607086))))

(assert (= (and b!5822197 ((_ is ElementMatch!15867) (regOne!32247 (regTwo!32246 r!7292)))) b!5822731))

(assert (= (and b!5822197 ((_ is Concat!24712) (regOne!32247 (regTwo!32246 r!7292)))) b!5822732))

(assert (= (and b!5822197 ((_ is Star!15867) (regOne!32247 (regTwo!32246 r!7292)))) b!5822733))

(assert (= (and b!5822197 ((_ is Union!15867) (regOne!32247 (regTwo!32246 r!7292)))) b!5822734))

(declare-fun b!5822738 () Bool)

(declare-fun e!3573332 () Bool)

(declare-fun tp!1607089 () Bool)

(declare-fun tp!1607090 () Bool)

(assert (=> b!5822738 (= e!3573332 (and tp!1607089 tp!1607090))))

(assert (=> b!5822197 (= tp!1606790 e!3573332)))

(declare-fun b!5822737 () Bool)

(declare-fun tp!1607087 () Bool)

(assert (=> b!5822737 (= e!3573332 tp!1607087)))

(declare-fun b!5822735 () Bool)

(assert (=> b!5822735 (= e!3573332 tp_is_empty!40987)))

(declare-fun b!5822736 () Bool)

(declare-fun tp!1607088 () Bool)

(declare-fun tp!1607091 () Bool)

(assert (=> b!5822736 (= e!3573332 (and tp!1607088 tp!1607091))))

(assert (= (and b!5822197 ((_ is ElementMatch!15867) (regTwo!32247 (regTwo!32246 r!7292)))) b!5822735))

(assert (= (and b!5822197 ((_ is Concat!24712) (regTwo!32247 (regTwo!32246 r!7292)))) b!5822736))

(assert (= (and b!5822197 ((_ is Star!15867) (regTwo!32247 (regTwo!32246 r!7292)))) b!5822737))

(assert (= (and b!5822197 ((_ is Union!15867) (regTwo!32247 (regTwo!32246 r!7292)))) b!5822738))

(declare-fun b!5822740 () Bool)

(declare-fun e!3573334 () Bool)

(declare-fun tp!1607092 () Bool)

(assert (=> b!5822740 (= e!3573334 tp!1607092)))

(declare-fun b!5822739 () Bool)

(declare-fun tp!1607093 () Bool)

(declare-fun e!3573333 () Bool)

(assert (=> b!5822739 (= e!3573333 (and (inv!82914 (h!70225 (t!377256 (t!377256 zl!343)))) e!3573334 tp!1607093))))

(assert (=> b!5822173 (= tp!1606768 e!3573333)))

(assert (= b!5822739 b!5822740))

(assert (= (and b!5822173 ((_ is Cons!63777) (t!377256 (t!377256 zl!343)))) b!5822739))

(declare-fun m!6757014 () Bool)

(assert (=> b!5822739 m!6757014))

(declare-fun b!5822744 () Bool)

(declare-fun e!3573335 () Bool)

(declare-fun tp!1607096 () Bool)

(declare-fun tp!1607097 () Bool)

(assert (=> b!5822744 (= e!3573335 (and tp!1607096 tp!1607097))))

(assert (=> b!5822219 (= tp!1606816 e!3573335)))

(declare-fun b!5822743 () Bool)

(declare-fun tp!1607094 () Bool)

(assert (=> b!5822743 (= e!3573335 tp!1607094)))

(declare-fun b!5822741 () Bool)

(assert (=> b!5822741 (= e!3573335 tp_is_empty!40987)))

(declare-fun b!5822742 () Bool)

(declare-fun tp!1607095 () Bool)

(declare-fun tp!1607098 () Bool)

(assert (=> b!5822742 (= e!3573335 (and tp!1607095 tp!1607098))))

(assert (= (and b!5822219 ((_ is ElementMatch!15867) (reg!16196 (reg!16196 r!7292)))) b!5822741))

(assert (= (and b!5822219 ((_ is Concat!24712) (reg!16196 (reg!16196 r!7292)))) b!5822742))

(assert (= (and b!5822219 ((_ is Star!15867) (reg!16196 (reg!16196 r!7292)))) b!5822743))

(assert (= (and b!5822219 ((_ is Union!15867) (reg!16196 (reg!16196 r!7292)))) b!5822744))

(declare-fun b!5822748 () Bool)

(declare-fun e!3573336 () Bool)

(declare-fun tp!1607101 () Bool)

(declare-fun tp!1607102 () Bool)

(assert (=> b!5822748 (= e!3573336 (and tp!1607101 tp!1607102))))

(assert (=> b!5822220 (= tp!1606818 e!3573336)))

(declare-fun b!5822747 () Bool)

(declare-fun tp!1607099 () Bool)

(assert (=> b!5822747 (= e!3573336 tp!1607099)))

(declare-fun b!5822745 () Bool)

(assert (=> b!5822745 (= e!3573336 tp_is_empty!40987)))

(declare-fun b!5822746 () Bool)

(declare-fun tp!1607100 () Bool)

(declare-fun tp!1607103 () Bool)

(assert (=> b!5822746 (= e!3573336 (and tp!1607100 tp!1607103))))

(assert (= (and b!5822220 ((_ is ElementMatch!15867) (regOne!32247 (reg!16196 r!7292)))) b!5822745))

(assert (= (and b!5822220 ((_ is Concat!24712) (regOne!32247 (reg!16196 r!7292)))) b!5822746))

(assert (= (and b!5822220 ((_ is Star!15867) (regOne!32247 (reg!16196 r!7292)))) b!5822747))

(assert (= (and b!5822220 ((_ is Union!15867) (regOne!32247 (reg!16196 r!7292)))) b!5822748))

(declare-fun b!5822752 () Bool)

(declare-fun e!3573337 () Bool)

(declare-fun tp!1607106 () Bool)

(declare-fun tp!1607107 () Bool)

(assert (=> b!5822752 (= e!3573337 (and tp!1607106 tp!1607107))))

(assert (=> b!5822220 (= tp!1606819 e!3573337)))

(declare-fun b!5822751 () Bool)

(declare-fun tp!1607104 () Bool)

(assert (=> b!5822751 (= e!3573337 tp!1607104)))

(declare-fun b!5822749 () Bool)

(assert (=> b!5822749 (= e!3573337 tp_is_empty!40987)))

(declare-fun b!5822750 () Bool)

(declare-fun tp!1607105 () Bool)

(declare-fun tp!1607108 () Bool)

(assert (=> b!5822750 (= e!3573337 (and tp!1607105 tp!1607108))))

(assert (= (and b!5822220 ((_ is ElementMatch!15867) (regTwo!32247 (reg!16196 r!7292)))) b!5822749))

(assert (= (and b!5822220 ((_ is Concat!24712) (regTwo!32247 (reg!16196 r!7292)))) b!5822750))

(assert (= (and b!5822220 ((_ is Star!15867) (regTwo!32247 (reg!16196 r!7292)))) b!5822751))

(assert (= (and b!5822220 ((_ is Union!15867) (regTwo!32247 (reg!16196 r!7292)))) b!5822752))

(declare-fun b!5822756 () Bool)

(declare-fun e!3573338 () Bool)

(declare-fun tp!1607111 () Bool)

(declare-fun tp!1607112 () Bool)

(assert (=> b!5822756 (= e!3573338 (and tp!1607111 tp!1607112))))

(assert (=> b!5822204 (= tp!1606799 e!3573338)))

(declare-fun b!5822755 () Bool)

(declare-fun tp!1607109 () Bool)

(assert (=> b!5822755 (= e!3573338 tp!1607109)))

(declare-fun b!5822753 () Bool)

(assert (=> b!5822753 (= e!3573338 tp_is_empty!40987)))

(declare-fun b!5822754 () Bool)

(declare-fun tp!1607110 () Bool)

(declare-fun tp!1607113 () Bool)

(assert (=> b!5822754 (= e!3573338 (and tp!1607110 tp!1607113))))

(assert (= (and b!5822204 ((_ is ElementMatch!15867) (regOne!32246 (regOne!32247 r!7292)))) b!5822753))

(assert (= (and b!5822204 ((_ is Concat!24712) (regOne!32246 (regOne!32247 r!7292)))) b!5822754))

(assert (= (and b!5822204 ((_ is Star!15867) (regOne!32246 (regOne!32247 r!7292)))) b!5822755))

(assert (= (and b!5822204 ((_ is Union!15867) (regOne!32246 (regOne!32247 r!7292)))) b!5822756))

(declare-fun b!5822760 () Bool)

(declare-fun e!3573339 () Bool)

(declare-fun tp!1607116 () Bool)

(declare-fun tp!1607117 () Bool)

(assert (=> b!5822760 (= e!3573339 (and tp!1607116 tp!1607117))))

(assert (=> b!5822204 (= tp!1606802 e!3573339)))

(declare-fun b!5822759 () Bool)

(declare-fun tp!1607114 () Bool)

(assert (=> b!5822759 (= e!3573339 tp!1607114)))

(declare-fun b!5822757 () Bool)

(assert (=> b!5822757 (= e!3573339 tp_is_empty!40987)))

(declare-fun b!5822758 () Bool)

(declare-fun tp!1607115 () Bool)

(declare-fun tp!1607118 () Bool)

(assert (=> b!5822758 (= e!3573339 (and tp!1607115 tp!1607118))))

(assert (= (and b!5822204 ((_ is ElementMatch!15867) (regTwo!32246 (regOne!32247 r!7292)))) b!5822757))

(assert (= (and b!5822204 ((_ is Concat!24712) (regTwo!32246 (regOne!32247 r!7292)))) b!5822758))

(assert (= (and b!5822204 ((_ is Star!15867) (regTwo!32246 (regOne!32247 r!7292)))) b!5822759))

(assert (= (and b!5822204 ((_ is Union!15867) (regTwo!32246 (regOne!32247 r!7292)))) b!5822760))

(declare-fun b!5822764 () Bool)

(declare-fun e!3573340 () Bool)

(declare-fun tp!1607121 () Bool)

(declare-fun tp!1607122 () Bool)

(assert (=> b!5822764 (= e!3573340 (and tp!1607121 tp!1607122))))

(assert (=> b!5822218 (= tp!1606817 e!3573340)))

(declare-fun b!5822763 () Bool)

(declare-fun tp!1607119 () Bool)

(assert (=> b!5822763 (= e!3573340 tp!1607119)))

(declare-fun b!5822761 () Bool)

(assert (=> b!5822761 (= e!3573340 tp_is_empty!40987)))

(declare-fun b!5822762 () Bool)

(declare-fun tp!1607120 () Bool)

(declare-fun tp!1607123 () Bool)

(assert (=> b!5822762 (= e!3573340 (and tp!1607120 tp!1607123))))

(assert (= (and b!5822218 ((_ is ElementMatch!15867) (regOne!32246 (reg!16196 r!7292)))) b!5822761))

(assert (= (and b!5822218 ((_ is Concat!24712) (regOne!32246 (reg!16196 r!7292)))) b!5822762))

(assert (= (and b!5822218 ((_ is Star!15867) (regOne!32246 (reg!16196 r!7292)))) b!5822763))

(assert (= (and b!5822218 ((_ is Union!15867) (regOne!32246 (reg!16196 r!7292)))) b!5822764))

(declare-fun b!5822768 () Bool)

(declare-fun e!3573341 () Bool)

(declare-fun tp!1607126 () Bool)

(declare-fun tp!1607127 () Bool)

(assert (=> b!5822768 (= e!3573341 (and tp!1607126 tp!1607127))))

(assert (=> b!5822218 (= tp!1606820 e!3573341)))

(declare-fun b!5822767 () Bool)

(declare-fun tp!1607124 () Bool)

(assert (=> b!5822767 (= e!3573341 tp!1607124)))

(declare-fun b!5822765 () Bool)

(assert (=> b!5822765 (= e!3573341 tp_is_empty!40987)))

(declare-fun b!5822766 () Bool)

(declare-fun tp!1607125 () Bool)

(declare-fun tp!1607128 () Bool)

(assert (=> b!5822766 (= e!3573341 (and tp!1607125 tp!1607128))))

(assert (= (and b!5822218 ((_ is ElementMatch!15867) (regTwo!32246 (reg!16196 r!7292)))) b!5822765))

(assert (= (and b!5822218 ((_ is Concat!24712) (regTwo!32246 (reg!16196 r!7292)))) b!5822766))

(assert (= (and b!5822218 ((_ is Star!15867) (regTwo!32246 (reg!16196 r!7292)))) b!5822767))

(assert (= (and b!5822218 ((_ is Union!15867) (regTwo!32246 (reg!16196 r!7292)))) b!5822768))

(declare-fun b_lambda!219529 () Bool)

(assert (= b_lambda!219523 (or d!1832073 b_lambda!219529)))

(declare-fun bs!1373698 () Bool)

(declare-fun d!1832209 () Bool)

(assert (= bs!1373698 (and d!1832209 d!1832073)))

(assert (=> bs!1373698 (= (dynLambda!24966 lambda!318637 (h!70224 (exprs!5751 (h!70225 zl!343)))) (validRegex!7603 (h!70224 (exprs!5751 (h!70225 zl!343)))))))

(declare-fun m!6757016 () Bool)

(assert (=> bs!1373698 m!6757016))

(assert (=> b!5822333 d!1832209))

(declare-fun b_lambda!219531 () Bool)

(assert (= b_lambda!219521 (or d!1832103 b_lambda!219531)))

(declare-fun bs!1373699 () Bool)

(declare-fun d!1832211 () Bool)

(assert (= bs!1373699 (and d!1832211 d!1832103)))

(assert (=> bs!1373699 (= (dynLambda!24966 lambda!318644 (h!70224 (exprs!5751 setElem!39320))) (validRegex!7603 (h!70224 (exprs!5751 setElem!39320))))))

(declare-fun m!6757018 () Bool)

(assert (=> bs!1373699 m!6757018))

(assert (=> b!5822331 d!1832211))

(check-sat (not b!5822657) (not b!5822767) (not b!5822470) (not b!5822471) (not b!5822562) (not b!5822658) (not b!5822686) (not d!1832203) (not d!1832177) (not b!5822655) (not b!5822666) (not b!5822689) (not b!5822752) (not b!5822742) (not bm!454725) (not b!5822764) (not b!5822758) (not b!5822660) (not b!5822717) (not d!1832187) (not b!5822756) (not b!5822645) (not bs!1373698) (not bm!454692) (not b!5822669) (not b!5822687) (not b!5822750) (not b!5822683) (not b!5822664) (not b!5822707) (not b!5822734) (not b!5822363) (not b!5822677) (not b!5822674) (not b!5822656) (not b!5822694) (not b!5822713) (not b!5822670) (not b!5822679) (not b!5822693) (not b!5822450) (not b!5822661) (not d!1832195) (not bm!454693) (not b!5822737) (not b!5822695) (not b!5822736) (not b!5822651) (not b!5822763) (not b!5822751) (not b!5822675) (not b!5822724) (not b!5822709) (not b!5822703) (not b!5822334) (not bm!454719) (not b_lambda!219529) (not b!5822743) (not b!5822332) (not b!5822605) (not b!5822706) (not bs!1373699) (not b!5822366) (not b!5822733) (not b!5822759) (not b!5822673) (not b!5822691) (not b!5822668) (not setNonEmpty!39328) (not b!5822607) (not b!5822715) (not b!5822728) (not b!5822720) (not bm!454690) (not b!5822646) (not b!5822744) (not bm!454711) (not b!5822755) (not d!1832151) (not b!5822644) (not b!5822665) (not b!5822360) (not b!5822746) (not b!5822440) (not b!5822712) (not b!5822701) (not d!1832171) (not b!5822699) (not b!5822642) (not b!5822705) (not b!5822685) (not b!5822640) (not b!5822340) (not b!5822719) (not b!5822711) (not b!5822681) (not b!5822708) (not b!5822449) (not b!5822725) (not b_lambda!219531) (not d!1832205) (not b!5822766) (not b!5822739) (not b!5822637) (not b!5822716) (not b!5822697) (not b!5822643) (not bm!454726) (not b!5822721) (not b!5822729) (not b!5822309) (not b!5822747) (not b!5822730) (not b!5822616) (not d!1832207) (not b!5822740) (not d!1832181) (not b!5822702) (not b!5822361) (not b!5822654) (not b!5822355) (not b!5822698) (not b!5822690) (not b!5822320) (not b!5822760) (not d!1832143) (not b!5822682) (not b!5822723) tp_is_empty!40987 (not bm!454695) (not bm!454727) (not b!5822662) (not bm!454689) (not bm!454720) (not b!5822672) (not bm!454714) (not b!5822754) (not b!5822748) (not b!5822606) (not b!5822678) (not b!5822738) (not b!5822762) (not b!5822561) (not b!5822727) (not b!5822768) (not b!5822732) (not bm!454728) (not d!1832173) (not b!5822357))
(check-sat)
