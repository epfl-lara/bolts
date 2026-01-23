; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!607934 () Bool)

(assert start!607934)

(declare-fun b!6050884 () Bool)

(assert (=> b!6050884 true))

(assert (=> b!6050884 true))

(declare-fun lambda!330017 () Int)

(declare-fun lambda!330016 () Int)

(assert (=> b!6050884 (not (= lambda!330017 lambda!330016))))

(assert (=> b!6050884 true))

(assert (=> b!6050884 true))

(declare-fun b!6050899 () Bool)

(assert (=> b!6050899 true))

(declare-fun b!6050879 () Bool)

(declare-fun e!3694990 () Bool)

(declare-fun tp!1683411 () Bool)

(assert (=> b!6050879 (= e!3694990 tp!1683411)))

(declare-fun b!6050880 () Bool)

(declare-fun tp!1683407 () Bool)

(declare-fun tp!1683414 () Bool)

(assert (=> b!6050880 (= e!3694990 (and tp!1683407 tp!1683414))))

(declare-fun b!6050881 () Bool)

(declare-fun res!2517777 () Bool)

(declare-fun e!3694992 () Bool)

(assert (=> b!6050881 (=> (not res!2517777) (not e!3694992))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32328 0))(
  ( (C!32329 (val!25866 Int)) )
))
(declare-datatypes ((Regex!16029 0))(
  ( (ElementMatch!16029 (c!1085239 C!32328)) (Concat!24874 (regOne!32570 Regex!16029) (regTwo!32570 Regex!16029)) (EmptyExpr!16029) (Star!16029 (reg!16358 Regex!16029)) (EmptyLang!16029) (Union!16029 (regOne!32571 Regex!16029) (regTwo!32571 Regex!16029)) )
))
(declare-datatypes ((List!64386 0))(
  ( (Nil!64262) (Cons!64262 (h!70710 Regex!16029) (t!377821 List!64386)) )
))
(declare-datatypes ((Context!10826 0))(
  ( (Context!10827 (exprs!5913 List!64386)) )
))
(declare-fun z!1189 () (InoxSet Context!10826))

(declare-datatypes ((List!64387 0))(
  ( (Nil!64263) (Cons!64263 (h!70711 Context!10826) (t!377822 List!64387)) )
))
(declare-fun zl!343 () List!64387)

(declare-fun toList!9813 ((InoxSet Context!10826)) List!64387)

(assert (=> b!6050881 (= res!2517777 (= (toList!9813 z!1189) zl!343))))

(declare-fun b!6050882 () Bool)

(declare-fun e!3694987 () Bool)

(declare-fun tp!1683409 () Bool)

(assert (=> b!6050882 (= e!3694987 tp!1683409)))

(declare-fun b!6050883 () Bool)

(declare-fun res!2517766 () Bool)

(declare-fun e!3694996 () Bool)

(assert (=> b!6050883 (=> res!2517766 e!3694996)))

(get-info :version)

(assert (=> b!6050883 (= res!2517766 (not ((_ is Cons!64262) (exprs!5913 (h!70711 zl!343)))))))

(declare-fun setElem!40939 () Context!10826)

(declare-fun e!3694991 () Bool)

(declare-fun setNonEmpty!40939 () Bool)

(declare-fun tp!1683413 () Bool)

(declare-fun setRes!40939 () Bool)

(declare-fun inv!83319 (Context!10826) Bool)

(assert (=> setNonEmpty!40939 (= setRes!40939 (and tp!1683413 (inv!83319 setElem!40939) e!3694991))))

(declare-fun setRest!40939 () (InoxSet Context!10826))

(assert (=> setNonEmpty!40939 (= z!1189 ((_ map or) (store ((as const (Array Context!10826 Bool)) false) setElem!40939 true) setRest!40939))))

(declare-fun b!6050885 () Bool)

(declare-fun e!3694988 () Bool)

(declare-fun e!3694995 () Bool)

(assert (=> b!6050885 (= e!3694988 e!3694995)))

(declare-fun res!2517778 () Bool)

(assert (=> b!6050885 (=> res!2517778 e!3694995)))

(declare-fun lt!2324336 () (InoxSet Context!10826))

(declare-fun lt!2324338 () (InoxSet Context!10826))

(assert (=> b!6050885 (= res!2517778 (not (= lt!2324336 lt!2324338)))))

(declare-fun lt!2324345 () Context!10826)

(declare-fun r!7292 () Regex!16029)

(declare-datatypes ((List!64388 0))(
  ( (Nil!64264) (Cons!64264 (h!70712 C!32328) (t!377823 List!64388)) )
))
(declare-fun s!2326 () List!64388)

(declare-fun derivationStepZipperDown!1279 (Regex!16029 Context!10826 C!32328) (InoxSet Context!10826))

(assert (=> b!6050885 (= lt!2324338 (derivationStepZipperDown!1279 r!7292 lt!2324345 (h!70712 s!2326)))))

(assert (=> b!6050885 (= lt!2324345 (Context!10827 Nil!64262))))

(declare-fun lt!2324335 () Context!10826)

(declare-fun derivationStepZipperUp!1205 (Context!10826 C!32328) (InoxSet Context!10826))

(assert (=> b!6050885 (= lt!2324336 (derivationStepZipperUp!1205 lt!2324335 (h!70712 s!2326)))))

(declare-fun lt!2324331 () List!64386)

(assert (=> b!6050885 (= lt!2324335 (Context!10827 lt!2324331))))

(assert (=> b!6050885 (= lt!2324331 (Cons!64262 r!7292 Nil!64262))))

(declare-fun lt!2324352 () (InoxSet Context!10826))

(declare-fun derivationStepZipper!2010 ((InoxSet Context!10826) C!32328) (InoxSet Context!10826))

(assert (=> b!6050885 (= lt!2324352 (derivationStepZipper!2010 z!1189 (h!70712 s!2326)))))

(declare-fun b!6050886 () Bool)

(declare-fun e!3694989 () Bool)

(assert (=> b!6050886 (= e!3694989 (not e!3694996))))

(declare-fun res!2517770 () Bool)

(assert (=> b!6050886 (=> res!2517770 e!3694996)))

(assert (=> b!6050886 (= res!2517770 (not ((_ is Cons!64263) zl!343)))))

(declare-fun lt!2324332 () Bool)

(declare-fun matchRSpec!3130 (Regex!16029 List!64388) Bool)

(assert (=> b!6050886 (= lt!2324332 (matchRSpec!3130 r!7292 s!2326))))

(declare-fun matchR!8212 (Regex!16029 List!64388) Bool)

(assert (=> b!6050886 (= lt!2324332 (matchR!8212 r!7292 s!2326))))

(declare-datatypes ((Unit!157329 0))(
  ( (Unit!157330) )
))
(declare-fun lt!2324347 () Unit!157329)

(declare-fun mainMatchTheorem!3130 (Regex!16029 List!64388) Unit!157329)

(assert (=> b!6050886 (= lt!2324347 (mainMatchTheorem!3130 r!7292 s!2326))))

(declare-fun b!6050887 () Bool)

(declare-fun res!2517774 () Bool)

(assert (=> b!6050887 (=> res!2517774 e!3694996)))

(declare-fun isEmpty!36169 (List!64387) Bool)

(assert (=> b!6050887 (= res!2517774 (not (isEmpty!36169 (t!377822 zl!343))))))

(declare-fun b!6050888 () Bool)

(assert (=> b!6050888 (= e!3694992 e!3694989)))

(declare-fun res!2517776 () Bool)

(assert (=> b!6050888 (=> (not res!2517776) (not e!3694989))))

(declare-fun lt!2324346 () Regex!16029)

(assert (=> b!6050888 (= res!2517776 (= r!7292 lt!2324346))))

(declare-fun unfocusZipper!1771 (List!64387) Regex!16029)

(assert (=> b!6050888 (= lt!2324346 (unfocusZipper!1771 zl!343))))

(declare-fun b!6050889 () Bool)

(declare-fun e!3694993 () Bool)

(declare-fun tp_is_empty!41311 () Bool)

(declare-fun tp!1683408 () Bool)

(assert (=> b!6050889 (= e!3694993 (and tp_is_empty!41311 tp!1683408))))

(declare-fun b!6050890 () Bool)

(declare-fun res!2517764 () Bool)

(assert (=> b!6050890 (=> res!2517764 e!3694996)))

(assert (=> b!6050890 (= res!2517764 (or ((_ is EmptyExpr!16029) r!7292) ((_ is EmptyLang!16029) r!7292) ((_ is ElementMatch!16029) r!7292) ((_ is Union!16029) r!7292) (not ((_ is Concat!24874) r!7292))))))

(declare-fun tp!1683410 () Bool)

(declare-fun e!3694998 () Bool)

(declare-fun b!6050891 () Bool)

(assert (=> b!6050891 (= e!3694998 (and (inv!83319 (h!70711 zl!343)) e!3694987 tp!1683410))))

(declare-fun b!6050892 () Bool)

(declare-fun tp!1683406 () Bool)

(declare-fun tp!1683412 () Bool)

(assert (=> b!6050892 (= e!3694990 (and tp!1683406 tp!1683412))))

(declare-fun b!6050893 () Bool)

(declare-fun res!2517769 () Bool)

(declare-fun e!3694997 () Bool)

(assert (=> b!6050893 (=> res!2517769 e!3694997)))

(declare-fun lt!2324348 () (InoxSet Context!10826))

(assert (=> b!6050893 (= res!2517769 (or (not (= lt!2324352 lt!2324348)) (not (= lt!2324346 r!7292)) (not (= (exprs!5913 (h!70711 zl!343)) lt!2324331))))))

(declare-fun setIsEmpty!40939 () Bool)

(assert (=> setIsEmpty!40939 setRes!40939))

(declare-fun b!6050894 () Bool)

(declare-fun res!2517767 () Bool)

(assert (=> b!6050894 (=> res!2517767 e!3694988)))

(declare-fun isEmpty!36170 (List!64386) Bool)

(assert (=> b!6050894 (= res!2517767 (not (isEmpty!36170 (t!377821 (exprs!5913 (h!70711 zl!343))))))))

(declare-fun b!6050895 () Bool)

(declare-fun e!3694994 () Bool)

(assert (=> b!6050895 (= e!3694994 e!3694997)))

(declare-fun res!2517775 () Bool)

(assert (=> b!6050895 (=> res!2517775 e!3694997)))

(declare-fun nullable!6024 (Regex!16029) Bool)

(assert (=> b!6050895 (= res!2517775 (nullable!6024 (regOne!32570 r!7292)))))

(declare-fun lt!2324350 () (InoxSet Context!10826))

(assert (=> b!6050895 (= lt!2324350 (derivationStepZipperDown!1279 (regTwo!32570 r!7292) lt!2324345 (h!70712 s!2326)))))

(declare-fun lt!2324340 () Context!10826)

(assert (=> b!6050895 (= lt!2324348 (derivationStepZipperDown!1279 (regOne!32570 r!7292) lt!2324340 (h!70712 s!2326)))))

(declare-fun lt!2324344 () (InoxSet Context!10826))

(declare-fun lambda!330018 () Int)

(declare-fun flatMap!1542 ((InoxSet Context!10826) Int) (InoxSet Context!10826))

(assert (=> b!6050895 (= (flatMap!1542 lt!2324344 lambda!330018) (derivationStepZipperUp!1205 lt!2324340 (h!70712 s!2326)))))

(declare-fun lt!2324337 () Unit!157329)

(declare-fun lemmaFlatMapOnSingletonSet!1068 ((InoxSet Context!10826) Context!10826 Int) Unit!157329)

(assert (=> b!6050895 (= lt!2324337 (lemmaFlatMapOnSingletonSet!1068 lt!2324344 lt!2324340 lambda!330018))))

(declare-fun lt!2324353 () (InoxSet Context!10826))

(declare-fun lt!2324351 () Context!10826)

(assert (=> b!6050895 (= (flatMap!1542 lt!2324353 lambda!330018) (derivationStepZipperUp!1205 lt!2324351 (h!70712 s!2326)))))

(declare-fun lt!2324334 () Unit!157329)

(assert (=> b!6050895 (= lt!2324334 (lemmaFlatMapOnSingletonSet!1068 lt!2324353 lt!2324351 lambda!330018))))

(declare-fun lt!2324343 () (InoxSet Context!10826))

(assert (=> b!6050895 (= lt!2324343 (derivationStepZipperUp!1205 lt!2324340 (h!70712 s!2326)))))

(declare-fun lt!2324339 () (InoxSet Context!10826))

(assert (=> b!6050895 (= lt!2324339 (derivationStepZipperUp!1205 lt!2324351 (h!70712 s!2326)))))

(assert (=> b!6050895 (= lt!2324344 (store ((as const (Array Context!10826 Bool)) false) lt!2324340 true))))

(declare-fun lt!2324341 () List!64386)

(assert (=> b!6050895 (= lt!2324340 (Context!10827 lt!2324341))))

(assert (=> b!6050895 (= lt!2324353 (store ((as const (Array Context!10826 Bool)) false) lt!2324351 true))))

(assert (=> b!6050895 (= lt!2324351 (Context!10827 (Cons!64262 (regOne!32570 r!7292) lt!2324341)))))

(assert (=> b!6050895 (= lt!2324341 (Cons!64262 (regTwo!32570 r!7292) Nil!64262))))

(declare-fun b!6050896 () Bool)

(declare-fun res!2517772 () Bool)

(assert (=> b!6050896 (=> res!2517772 e!3694997)))

(declare-fun zipperDepth!274 (List!64387) Int)

(assert (=> b!6050896 (= res!2517772 (>= (zipperDepth!274 (Cons!64263 lt!2324351 Nil!64263)) (zipperDepth!274 (Cons!64263 lt!2324335 Nil!64263))))))

(declare-fun b!6050897 () Bool)

(assert (=> b!6050897 (= e!3694990 tp_is_empty!41311)))

(declare-fun b!6050898 () Bool)

(declare-fun res!2517771 () Bool)

(assert (=> b!6050898 (=> res!2517771 e!3694996)))

(declare-fun generalisedConcat!1626 (List!64386) Regex!16029)

(assert (=> b!6050898 (= res!2517771 (not (= r!7292 (generalisedConcat!1626 (exprs!5913 (h!70711 zl!343))))))))

(declare-fun res!2517768 () Bool)

(assert (=> start!607934 (=> (not res!2517768) (not e!3694992))))

(declare-fun validRegex!7765 (Regex!16029) Bool)

(assert (=> start!607934 (= res!2517768 (validRegex!7765 r!7292))))

(assert (=> start!607934 e!3694992))

(assert (=> start!607934 e!3694990))

(declare-fun condSetEmpty!40939 () Bool)

(assert (=> start!607934 (= condSetEmpty!40939 (= z!1189 ((as const (Array Context!10826 Bool)) false)))))

(assert (=> start!607934 setRes!40939))

(assert (=> start!607934 e!3694998))

(assert (=> start!607934 e!3694993))

(assert (=> b!6050884 (= e!3694996 e!3694988)))

(declare-fun res!2517773 () Bool)

(assert (=> b!6050884 (=> res!2517773 e!3694988)))

(declare-fun lt!2324333 () Bool)

(assert (=> b!6050884 (= res!2517773 (or (not (= lt!2324332 lt!2324333)) ((_ is Nil!64264) s!2326)))))

(declare-fun Exists!3099 (Int) Bool)

(assert (=> b!6050884 (= (Exists!3099 lambda!330016) (Exists!3099 lambda!330017))))

(declare-fun lt!2324349 () Unit!157329)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1636 (Regex!16029 Regex!16029 List!64388) Unit!157329)

(assert (=> b!6050884 (= lt!2324349 (lemmaExistCutMatchRandMatchRSpecEquivalent!1636 (regOne!32570 r!7292) (regTwo!32570 r!7292) s!2326))))

(assert (=> b!6050884 (= lt!2324333 (Exists!3099 lambda!330016))))

(declare-datatypes ((tuple2!66016 0))(
  ( (tuple2!66017 (_1!36311 List!64388) (_2!36311 List!64388)) )
))
(declare-datatypes ((Option!15920 0))(
  ( (None!15919) (Some!15919 (v!52040 tuple2!66016)) )
))
(declare-fun isDefined!12623 (Option!15920) Bool)

(declare-fun findConcatSeparation!2334 (Regex!16029 Regex!16029 List!64388 List!64388 List!64388) Option!15920)

(assert (=> b!6050884 (= lt!2324333 (isDefined!12623 (findConcatSeparation!2334 (regOne!32570 r!7292) (regTwo!32570 r!7292) Nil!64264 s!2326 s!2326)))))

(declare-fun lt!2324342 () Unit!157329)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2098 (Regex!16029 Regex!16029 List!64388) Unit!157329)

(assert (=> b!6050884 (= lt!2324342 (lemmaFindConcatSeparationEquivalentToExists!2098 (regOne!32570 r!7292) (regTwo!32570 r!7292) s!2326))))

(assert (=> b!6050899 (= e!3694995 e!3694994)))

(declare-fun res!2517765 () Bool)

(assert (=> b!6050899 (=> res!2517765 e!3694994)))

(assert (=> b!6050899 (= res!2517765 (not (= lt!2324352 lt!2324338)))))

(assert (=> b!6050899 (= (flatMap!1542 z!1189 lambda!330018) (derivationStepZipperUp!1205 (h!70711 zl!343) (h!70712 s!2326)))))

(declare-fun lt!2324354 () Unit!157329)

(assert (=> b!6050899 (= lt!2324354 (lemmaFlatMapOnSingletonSet!1068 z!1189 (h!70711 zl!343) lambda!330018))))

(declare-fun b!6050900 () Bool)

(declare-fun res!2517779 () Bool)

(assert (=> b!6050900 (=> res!2517779 e!3694996)))

(declare-fun generalisedUnion!1873 (List!64386) Regex!16029)

(declare-fun unfocusZipperList!1450 (List!64387) List!64386)

(assert (=> b!6050900 (= res!2517779 (not (= r!7292 (generalisedUnion!1873 (unfocusZipperList!1450 zl!343)))))))

(declare-fun b!6050901 () Bool)

(declare-fun tp!1683405 () Bool)

(assert (=> b!6050901 (= e!3694991 tp!1683405)))

(declare-fun b!6050902 () Bool)

(assert (=> b!6050902 (= e!3694997 (inv!83319 lt!2324335))))

(assert (= (and start!607934 res!2517768) b!6050881))

(assert (= (and b!6050881 res!2517777) b!6050888))

(assert (= (and b!6050888 res!2517776) b!6050886))

(assert (= (and b!6050886 (not res!2517770)) b!6050887))

(assert (= (and b!6050887 (not res!2517774)) b!6050898))

(assert (= (and b!6050898 (not res!2517771)) b!6050883))

(assert (= (and b!6050883 (not res!2517766)) b!6050900))

(assert (= (and b!6050900 (not res!2517779)) b!6050890))

(assert (= (and b!6050890 (not res!2517764)) b!6050884))

(assert (= (and b!6050884 (not res!2517773)) b!6050894))

(assert (= (and b!6050894 (not res!2517767)) b!6050885))

(assert (= (and b!6050885 (not res!2517778)) b!6050899))

(assert (= (and b!6050899 (not res!2517765)) b!6050895))

(assert (= (and b!6050895 (not res!2517775)) b!6050893))

(assert (= (and b!6050893 (not res!2517769)) b!6050896))

(assert (= (and b!6050896 (not res!2517772)) b!6050902))

(assert (= (and start!607934 ((_ is ElementMatch!16029) r!7292)) b!6050897))

(assert (= (and start!607934 ((_ is Concat!24874) r!7292)) b!6050880))

(assert (= (and start!607934 ((_ is Star!16029) r!7292)) b!6050879))

(assert (= (and start!607934 ((_ is Union!16029) r!7292)) b!6050892))

(assert (= (and start!607934 condSetEmpty!40939) setIsEmpty!40939))

(assert (= (and start!607934 (not condSetEmpty!40939)) setNonEmpty!40939))

(assert (= setNonEmpty!40939 b!6050901))

(assert (= b!6050891 b!6050882))

(assert (= (and start!607934 ((_ is Cons!64263) zl!343)) b!6050891))

(assert (= (and start!607934 ((_ is Cons!64264) s!2326)) b!6050889))

(declare-fun m!6917968 () Bool)

(assert (=> b!6050894 m!6917968))

(declare-fun m!6917970 () Bool)

(assert (=> start!607934 m!6917970))

(declare-fun m!6917972 () Bool)

(assert (=> b!6050885 m!6917972))

(declare-fun m!6917974 () Bool)

(assert (=> b!6050885 m!6917974))

(declare-fun m!6917976 () Bool)

(assert (=> b!6050885 m!6917976))

(declare-fun m!6917978 () Bool)

(assert (=> b!6050900 m!6917978))

(assert (=> b!6050900 m!6917978))

(declare-fun m!6917980 () Bool)

(assert (=> b!6050900 m!6917980))

(declare-fun m!6917982 () Bool)

(assert (=> b!6050899 m!6917982))

(declare-fun m!6917984 () Bool)

(assert (=> b!6050899 m!6917984))

(declare-fun m!6917986 () Bool)

(assert (=> b!6050899 m!6917986))

(declare-fun m!6917988 () Bool)

(assert (=> b!6050886 m!6917988))

(declare-fun m!6917990 () Bool)

(assert (=> b!6050886 m!6917990))

(declare-fun m!6917992 () Bool)

(assert (=> b!6050886 m!6917992))

(declare-fun m!6917994 () Bool)

(assert (=> b!6050884 m!6917994))

(declare-fun m!6917996 () Bool)

(assert (=> b!6050884 m!6917996))

(declare-fun m!6917998 () Bool)

(assert (=> b!6050884 m!6917998))

(declare-fun m!6918000 () Bool)

(assert (=> b!6050884 m!6918000))

(declare-fun m!6918002 () Bool)

(assert (=> b!6050884 m!6918002))

(assert (=> b!6050884 m!6917998))

(assert (=> b!6050884 m!6917994))

(declare-fun m!6918004 () Bool)

(assert (=> b!6050884 m!6918004))

(declare-fun m!6918006 () Bool)

(assert (=> setNonEmpty!40939 m!6918006))

(declare-fun m!6918008 () Bool)

(assert (=> b!6050895 m!6918008))

(declare-fun m!6918010 () Bool)

(assert (=> b!6050895 m!6918010))

(declare-fun m!6918012 () Bool)

(assert (=> b!6050895 m!6918012))

(declare-fun m!6918014 () Bool)

(assert (=> b!6050895 m!6918014))

(declare-fun m!6918016 () Bool)

(assert (=> b!6050895 m!6918016))

(declare-fun m!6918018 () Bool)

(assert (=> b!6050895 m!6918018))

(declare-fun m!6918020 () Bool)

(assert (=> b!6050895 m!6918020))

(declare-fun m!6918022 () Bool)

(assert (=> b!6050895 m!6918022))

(declare-fun m!6918024 () Bool)

(assert (=> b!6050895 m!6918024))

(declare-fun m!6918026 () Bool)

(assert (=> b!6050895 m!6918026))

(declare-fun m!6918028 () Bool)

(assert (=> b!6050895 m!6918028))

(declare-fun m!6918030 () Bool)

(assert (=> b!6050896 m!6918030))

(declare-fun m!6918032 () Bool)

(assert (=> b!6050896 m!6918032))

(declare-fun m!6918034 () Bool)

(assert (=> b!6050902 m!6918034))

(declare-fun m!6918036 () Bool)

(assert (=> b!6050881 m!6918036))

(declare-fun m!6918038 () Bool)

(assert (=> b!6050888 m!6918038))

(declare-fun m!6918040 () Bool)

(assert (=> b!6050891 m!6918040))

(declare-fun m!6918042 () Bool)

(assert (=> b!6050898 m!6918042))

(declare-fun m!6918044 () Bool)

(assert (=> b!6050887 m!6918044))

(check-sat (not b!6050898) (not b!6050881) (not b!6050879) (not b!6050895) (not b!6050880) (not b!6050882) (not start!607934) (not b!6050891) (not b!6050889) (not b!6050888) (not b!6050902) (not setNonEmpty!40939) (not b!6050901) (not b!6050894) (not b!6050887) (not b!6050885) (not b!6050892) tp_is_empty!41311 (not b!6050886) (not b!6050896) (not b!6050884) (not b!6050899) (not b!6050900))
(check-sat)
