; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!557138 () Bool)

(assert start!557138)

(declare-fun b!5275981 () Bool)

(assert (=> b!5275981 true))

(assert (=> b!5275981 true))

(declare-fun lambda!266287 () Int)

(declare-fun lambda!266286 () Int)

(assert (=> b!5275981 (not (= lambda!266287 lambda!266286))))

(assert (=> b!5275981 true))

(assert (=> b!5275981 true))

(declare-fun b!5275973 () Bool)

(assert (=> b!5275973 true))

(declare-fun b!5275960 () Bool)

(declare-fun res!2237882 () Bool)

(declare-fun e!3280917 () Bool)

(assert (=> b!5275960 (=> (not res!2237882) (not e!3280917))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30064 0))(
  ( (C!30065 (val!24734 Int)) )
))
(declare-datatypes ((Regex!14897 0))(
  ( (ElementMatch!14897 (c!914175 C!30064)) (Concat!23742 (regOne!30306 Regex!14897) (regTwo!30306 Regex!14897)) (EmptyExpr!14897) (Star!14897 (reg!15226 Regex!14897)) (EmptyLang!14897) (Union!14897 (regOne!30307 Regex!14897) (regTwo!30307 Regex!14897)) )
))
(declare-datatypes ((List!60990 0))(
  ( (Nil!60866) (Cons!60866 (h!67314 Regex!14897) (t!374189 List!60990)) )
))
(declare-datatypes ((Context!8562 0))(
  ( (Context!8563 (exprs!4781 List!60990)) )
))
(declare-fun z!1189 () (InoxSet Context!8562))

(declare-datatypes ((List!60991 0))(
  ( (Nil!60867) (Cons!60867 (h!67315 Context!8562) (t!374190 List!60991)) )
))
(declare-fun zl!343 () List!60991)

(declare-fun toList!8681 ((InoxSet Context!8562)) List!60991)

(assert (=> b!5275960 (= res!2237882 (= (toList!8681 z!1189) zl!343))))

(declare-fun b!5275961 () Bool)

(declare-fun res!2237870 () Bool)

(declare-fun e!3280914 () Bool)

(assert (=> b!5275961 (=> res!2237870 e!3280914)))

(declare-fun r!7292 () Regex!14897)

(declare-fun generalisedUnion!826 (List!60990) Regex!14897)

(declare-fun unfocusZipperList!339 (List!60991) List!60990)

(assert (=> b!5275961 (= res!2237870 (not (= r!7292 (generalisedUnion!826 (unfocusZipperList!339 zl!343)))))))

(declare-fun b!5275962 () Bool)

(declare-fun e!3280916 () Bool)

(declare-fun tp!1474348 () Bool)

(declare-fun tp!1474344 () Bool)

(assert (=> b!5275962 (= e!3280916 (and tp!1474348 tp!1474344))))

(declare-fun b!5275963 () Bool)

(declare-fun res!2237884 () Bool)

(declare-fun e!3280901 () Bool)

(assert (=> b!5275963 (=> res!2237884 e!3280901)))

(assert (=> b!5275963 (= res!2237884 (not (= (exprs!4781 (h!67315 zl!343)) (Cons!60866 (Concat!23742 (regOne!30306 (regOne!30306 r!7292)) (regTwo!30306 (regOne!30306 r!7292))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun b!5275964 () Bool)

(declare-fun e!3280908 () Bool)

(declare-fun e!3280903 () Bool)

(assert (=> b!5275964 (= e!3280908 e!3280903)))

(declare-fun res!2237873 () Bool)

(assert (=> b!5275964 (=> res!2237873 e!3280903)))

(declare-fun e!3280918 () Bool)

(assert (=> b!5275964 (= res!2237873 e!3280918)))

(declare-fun res!2237880 () Bool)

(assert (=> b!5275964 (=> (not res!2237880) (not e!3280918))))

(declare-fun lt!2157414 () Bool)

(declare-fun lt!2157416 () Bool)

(assert (=> b!5275964 (= res!2237880 (not (= lt!2157414 lt!2157416)))))

(declare-fun lt!2157430 () (InoxSet Context!8562))

(declare-datatypes ((List!60992 0))(
  ( (Nil!60868) (Cons!60868 (h!67316 C!30064) (t!374191 List!60992)) )
))
(declare-fun s!2326 () List!60992)

(declare-fun matchZipper!1141 ((InoxSet Context!8562) List!60992) Bool)

(assert (=> b!5275964 (= lt!2157414 (matchZipper!1141 lt!2157430 (t!374191 s!2326)))))

(declare-fun lt!2157409 () (InoxSet Context!8562))

(declare-fun e!3280919 () Bool)

(assert (=> b!5275964 (= (matchZipper!1141 lt!2157409 (t!374191 s!2326)) e!3280919)))

(declare-fun res!2237887 () Bool)

(assert (=> b!5275964 (=> res!2237887 e!3280919)))

(assert (=> b!5275964 (= res!2237887 lt!2157416)))

(declare-fun lt!2157431 () (InoxSet Context!8562))

(assert (=> b!5275964 (= lt!2157416 (matchZipper!1141 lt!2157431 (t!374191 s!2326)))))

(declare-datatypes ((Unit!153106 0))(
  ( (Unit!153107) )
))
(declare-fun lt!2157413 () Unit!153106)

(declare-fun lt!2157424 () (InoxSet Context!8562))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!134 ((InoxSet Context!8562) (InoxSet Context!8562) List!60992) Unit!153106)

(assert (=> b!5275964 (= lt!2157413 (lemmaZipperConcatMatchesSameAsBothZippers!134 lt!2157431 lt!2157424 (t!374191 s!2326)))))

(declare-fun b!5275965 () Bool)

(assert (=> b!5275965 (= e!3280917 (not e!3280914))))

(declare-fun res!2237871 () Bool)

(assert (=> b!5275965 (=> res!2237871 e!3280914)))

(get-info :version)

(assert (=> b!5275965 (= res!2237871 (not ((_ is Cons!60867) zl!343)))))

(declare-fun lt!2157420 () Bool)

(declare-fun matchRSpec!2000 (Regex!14897 List!60992) Bool)

(assert (=> b!5275965 (= lt!2157420 (matchRSpec!2000 r!7292 s!2326))))

(declare-fun matchR!7082 (Regex!14897 List!60992) Bool)

(assert (=> b!5275965 (= lt!2157420 (matchR!7082 r!7292 s!2326))))

(declare-fun lt!2157410 () Unit!153106)

(declare-fun mainMatchTheorem!2000 (Regex!14897 List!60992) Unit!153106)

(assert (=> b!5275965 (= lt!2157410 (mainMatchTheorem!2000 r!7292 s!2326))))

(declare-fun tp!1474347 () Bool)

(declare-fun setNonEmpty!33797 () Bool)

(declare-fun setElem!33797 () Context!8562)

(declare-fun e!3280912 () Bool)

(declare-fun setRes!33797 () Bool)

(declare-fun inv!80489 (Context!8562) Bool)

(assert (=> setNonEmpty!33797 (= setRes!33797 (and tp!1474347 (inv!80489 setElem!33797) e!3280912))))

(declare-fun setRest!33797 () (InoxSet Context!8562))

(assert (=> setNonEmpty!33797 (= z!1189 ((_ map or) (store ((as const (Array Context!8562 Bool)) false) setElem!33797 true) setRest!33797))))

(declare-fun b!5275966 () Bool)

(declare-fun e!3280907 () Bool)

(declare-fun tp!1474342 () Bool)

(declare-fun e!3280920 () Bool)

(assert (=> b!5275966 (= e!3280920 (and (inv!80489 (h!67315 zl!343)) e!3280907 tp!1474342))))

(declare-fun b!5275967 () Bool)

(declare-fun res!2237886 () Bool)

(assert (=> b!5275967 (=> res!2237886 e!3280901)))

(declare-fun lt!2157408 () Context!8562)

(declare-fun contextDepthTotal!38 (Context!8562) Int)

(assert (=> b!5275967 (= res!2237886 (>= (contextDepthTotal!38 lt!2157408) (contextDepthTotal!38 (h!67315 zl!343))))))

(declare-fun b!5275968 () Bool)

(assert (=> b!5275968 (= e!3280918 (not (matchZipper!1141 lt!2157424 (t!374191 s!2326))))))

(declare-fun b!5275969 () Bool)

(declare-fun res!2237877 () Bool)

(assert (=> b!5275969 (=> res!2237877 e!3280914)))

(assert (=> b!5275969 (= res!2237877 (not ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5275970 () Bool)

(declare-fun tp_is_empty!39047 () Bool)

(assert (=> b!5275970 (= e!3280916 tp_is_empty!39047)))

(declare-fun b!5275971 () Bool)

(declare-fun res!2237883 () Bool)

(declare-fun e!3280915 () Bool)

(assert (=> b!5275971 (=> res!2237883 e!3280915)))

(declare-fun lt!2157429 () List!60991)

(declare-fun zipperDepth!14 (List!60991) Int)

(assert (=> b!5275971 (= res!2237883 (> (zipperDepth!14 lt!2157429) (zipperDepth!14 zl!343)))))

(declare-fun b!5275972 () Bool)

(declare-fun res!2237872 () Bool)

(assert (=> b!5275972 (=> res!2237872 e!3280914)))

(assert (=> b!5275972 (= res!2237872 (or ((_ is EmptyExpr!14897) r!7292) ((_ is EmptyLang!14897) r!7292) ((_ is ElementMatch!14897) r!7292) ((_ is Union!14897) r!7292) (not ((_ is Concat!23742) r!7292))))))

(declare-fun e!3280909 () Bool)

(declare-fun e!3280910 () Bool)

(assert (=> b!5275973 (= e!3280909 e!3280910)))

(declare-fun res!2237878 () Bool)

(assert (=> b!5275973 (=> res!2237878 e!3280910)))

(assert (=> b!5275973 (= res!2237878 (or (and ((_ is ElementMatch!14897) (regOne!30306 r!7292)) (= (c!914175 (regOne!30306 r!7292)) (h!67316 s!2326))) ((_ is Union!14897) (regOne!30306 r!7292)) (not ((_ is Concat!23742) (regOne!30306 r!7292)))))))

(declare-fun lt!2157411 () Unit!153106)

(declare-fun e!3280911 () Unit!153106)

(assert (=> b!5275973 (= lt!2157411 e!3280911)))

(declare-fun c!914174 () Bool)

(declare-fun nullable!5066 (Regex!14897) Bool)

(assert (=> b!5275973 (= c!914174 (nullable!5066 (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun lambda!266288 () Int)

(declare-fun flatMap!624 ((InoxSet Context!8562) Int) (InoxSet Context!8562))

(declare-fun derivationStepZipperUp!269 (Context!8562 C!30064) (InoxSet Context!8562))

(assert (=> b!5275973 (= (flatMap!624 z!1189 lambda!266288) (derivationStepZipperUp!269 (h!67315 zl!343) (h!67316 s!2326)))))

(declare-fun lt!2157419 () Unit!153106)

(declare-fun lemmaFlatMapOnSingletonSet!156 ((InoxSet Context!8562) Context!8562 Int) Unit!153106)

(assert (=> b!5275973 (= lt!2157419 (lemmaFlatMapOnSingletonSet!156 z!1189 (h!67315 zl!343) lambda!266288))))

(declare-fun lt!2157418 () (InoxSet Context!8562))

(declare-fun lt!2157412 () Context!8562)

(assert (=> b!5275973 (= lt!2157418 (derivationStepZipperUp!269 lt!2157412 (h!67316 s!2326)))))

(declare-fun derivationStepZipperDown!345 (Regex!14897 Context!8562 C!30064) (InoxSet Context!8562))

(assert (=> b!5275973 (= lt!2157430 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (h!67315 zl!343))) lt!2157412 (h!67316 s!2326)))))

(assert (=> b!5275973 (= lt!2157412 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun lt!2157428 () (InoxSet Context!8562))

(assert (=> b!5275973 (= lt!2157428 (derivationStepZipperUp!269 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))) (h!67316 s!2326)))))

(declare-fun b!5275974 () Bool)

(declare-fun Unit!153108 () Unit!153106)

(assert (=> b!5275974 (= e!3280911 Unit!153108)))

(declare-fun lt!2157401 () Unit!153106)

(assert (=> b!5275974 (= lt!2157401 (lemmaZipperConcatMatchesSameAsBothZippers!134 lt!2157430 lt!2157418 (t!374191 s!2326)))))

(declare-fun res!2237865 () Bool)

(assert (=> b!5275974 (= res!2237865 (matchZipper!1141 lt!2157430 (t!374191 s!2326)))))

(declare-fun e!3280905 () Bool)

(assert (=> b!5275974 (=> res!2237865 e!3280905)))

(assert (=> b!5275974 (= (matchZipper!1141 ((_ map or) lt!2157430 lt!2157418) (t!374191 s!2326)) e!3280905)))

(declare-fun setIsEmpty!33797 () Bool)

(assert (=> setIsEmpty!33797 setRes!33797))

(declare-fun b!5275975 () Bool)

(declare-fun res!2237863 () Bool)

(assert (=> b!5275975 (=> res!2237863 e!3280914)))

(declare-fun generalisedConcat!566 (List!60990) Regex!14897)

(assert (=> b!5275975 (= res!2237863 (not (= r!7292 (generalisedConcat!566 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun b!5275976 () Bool)

(declare-fun tp!1474349 () Bool)

(assert (=> b!5275976 (= e!3280912 tp!1474349)))

(declare-fun b!5275977 () Bool)

(declare-fun e!3280902 () Bool)

(assert (=> b!5275977 (= e!3280903 e!3280902)))

(declare-fun res!2237879 () Bool)

(assert (=> b!5275977 (=> res!2237879 e!3280902)))

(declare-fun lt!2157421 () (InoxSet Context!8562))

(declare-fun lt!2157422 () (InoxSet Context!8562))

(assert (=> b!5275977 (= res!2237879 (not (= lt!2157421 lt!2157422)))))

(declare-fun lt!2157407 () (InoxSet Context!8562))

(assert (=> b!5275977 (= lt!2157422 ((_ map or) lt!2157431 lt!2157407))))

(declare-fun lt!2157404 () Context!8562)

(assert (=> b!5275977 (= lt!2157407 (derivationStepZipperUp!269 lt!2157404 (h!67316 s!2326)))))

(declare-fun lt!2157405 () (InoxSet Context!8562))

(assert (=> b!5275977 (= (flatMap!624 lt!2157405 lambda!266288) (derivationStepZipperUp!269 lt!2157408 (h!67316 s!2326)))))

(declare-fun lt!2157415 () Unit!153106)

(assert (=> b!5275977 (= lt!2157415 (lemmaFlatMapOnSingletonSet!156 lt!2157405 lt!2157408 lambda!266288))))

(declare-fun lt!2157432 () (InoxSet Context!8562))

(assert (=> b!5275977 (= lt!2157432 (derivationStepZipperUp!269 lt!2157408 (h!67316 s!2326)))))

(declare-fun derivationStepZipper!1140 ((InoxSet Context!8562) C!30064) (InoxSet Context!8562))

(assert (=> b!5275977 (= lt!2157421 (derivationStepZipper!1140 lt!2157405 (h!67316 s!2326)))))

(declare-fun lt!2157425 () (InoxSet Context!8562))

(assert (=> b!5275977 (= lt!2157425 (store ((as const (Array Context!8562 Bool)) false) lt!2157404 true))))

(assert (=> b!5275977 (= lt!2157405 (store ((as const (Array Context!8562 Bool)) false) lt!2157408 true))))

(declare-fun lt!2157426 () List!60990)

(assert (=> b!5275977 (= lt!2157408 (Context!8563 lt!2157426))))

(declare-fun lt!2157417 () List!60990)

(assert (=> b!5275977 (= lt!2157426 (Cons!60866 (regOne!30306 (regOne!30306 r!7292)) lt!2157417))))

(declare-fun b!5275978 () Bool)

(assert (=> b!5275978 (= e!3280919 (matchZipper!1141 lt!2157424 (t!374191 s!2326)))))

(declare-fun b!5275979 () Bool)

(assert (=> b!5275979 (= e!3280901 e!3280915)))

(declare-fun res!2237866 () Bool)

(assert (=> b!5275979 (=> res!2237866 e!3280915)))

(declare-fun zipperDepthTotal!58 (List!60991) Int)

(assert (=> b!5275979 (= res!2237866 (>= (zipperDepthTotal!58 lt!2157429) (zipperDepthTotal!58 zl!343)))))

(assert (=> b!5275979 (= lt!2157429 (Cons!60867 lt!2157408 Nil!60867))))

(declare-fun b!5275980 () Bool)

(declare-fun e!3280913 () Bool)

(assert (=> b!5275980 (= e!3280913 (matchZipper!1141 lt!2157407 (t!374191 s!2326)))))

(assert (=> b!5275981 (= e!3280914 e!3280909)))

(declare-fun res!2237868 () Bool)

(assert (=> b!5275981 (=> res!2237868 e!3280909)))

(declare-fun lt!2157423 () Bool)

(assert (=> b!5275981 (= res!2237868 (or (not (= lt!2157420 lt!2157423)) ((_ is Nil!60868) s!2326)))))

(declare-fun Exists!2078 (Int) Bool)

(assert (=> b!5275981 (= (Exists!2078 lambda!266286) (Exists!2078 lambda!266287))))

(declare-fun lt!2157402 () Unit!153106)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!732 (Regex!14897 Regex!14897 List!60992) Unit!153106)

(assert (=> b!5275981 (= lt!2157402 (lemmaExistCutMatchRandMatchRSpecEquivalent!732 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326))))

(assert (=> b!5275981 (= lt!2157423 (Exists!2078 lambda!266286))))

(declare-datatypes ((tuple2!64192 0))(
  ( (tuple2!64193 (_1!35399 List!60992) (_2!35399 List!60992)) )
))
(declare-datatypes ((Option!15008 0))(
  ( (None!15007) (Some!15007 (v!51036 tuple2!64192)) )
))
(declare-fun isDefined!11711 (Option!15008) Bool)

(declare-fun findConcatSeparation!1422 (Regex!14897 Regex!14897 List!60992 List!60992 List!60992) Option!15008)

(assert (=> b!5275981 (= lt!2157423 (isDefined!11711 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326)))))

(declare-fun lt!2157406 () Unit!153106)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1186 (Regex!14897 Regex!14897 List!60992) Unit!153106)

(assert (=> b!5275981 (= lt!2157406 (lemmaFindConcatSeparationEquivalentToExists!1186 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326))))

(declare-fun b!5275982 () Bool)

(declare-fun e!3280906 () Bool)

(assert (=> b!5275982 (= e!3280906 (not (matchZipper!1141 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (t!374191 s!2326))))))

(declare-fun b!5275983 () Bool)

(declare-fun res!2237875 () Bool)

(assert (=> b!5275983 (=> (not res!2237875) (not e!3280917))))

(declare-fun unfocusZipper!639 (List!60991) Regex!14897)

(assert (=> b!5275983 (= res!2237875 (= r!7292 (unfocusZipper!639 zl!343)))))

(declare-fun b!5275984 () Bool)

(assert (=> b!5275984 (= e!3280905 (matchZipper!1141 lt!2157418 (t!374191 s!2326)))))

(declare-fun b!5275985 () Bool)

(declare-fun tp!1474345 () Bool)

(assert (=> b!5275985 (= e!3280907 tp!1474345)))

(declare-fun b!5275986 () Bool)

(declare-fun lambda!266289 () Int)

(declare-fun forall!14305 (List!60990 Int) Bool)

(assert (=> b!5275986 (= e!3280915 (forall!14305 lt!2157426 lambda!266289))))

(declare-fun b!5275987 () Bool)

(declare-fun e!3280904 () Bool)

(declare-fun tp!1474340 () Bool)

(assert (=> b!5275987 (= e!3280904 (and tp_is_empty!39047 tp!1474340))))

(declare-fun b!5275988 () Bool)

(declare-fun res!2237881 () Bool)

(assert (=> b!5275988 (=> res!2237881 e!3280909)))

(declare-fun isEmpty!32819 (List!60990) Bool)

(assert (=> b!5275988 (= res!2237881 (isEmpty!32819 (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5275989 () Bool)

(declare-fun res!2237867 () Bool)

(assert (=> b!5275989 (=> res!2237867 e!3280914)))

(declare-fun isEmpty!32820 (List!60991) Bool)

(assert (=> b!5275989 (= res!2237867 (not (isEmpty!32820 (t!374190 zl!343))))))

(declare-fun b!5275990 () Bool)

(declare-fun tp!1474343 () Bool)

(assert (=> b!5275990 (= e!3280916 tp!1474343)))

(declare-fun res!2237874 () Bool)

(assert (=> start!557138 (=> (not res!2237874) (not e!3280917))))

(declare-fun validRegex!6633 (Regex!14897) Bool)

(assert (=> start!557138 (= res!2237874 (validRegex!6633 r!7292))))

(assert (=> start!557138 e!3280917))

(assert (=> start!557138 e!3280916))

(declare-fun condSetEmpty!33797 () Bool)

(assert (=> start!557138 (= condSetEmpty!33797 (= z!1189 ((as const (Array Context!8562 Bool)) false)))))

(assert (=> start!557138 setRes!33797))

(assert (=> start!557138 e!3280920))

(assert (=> start!557138 e!3280904))

(declare-fun b!5275991 () Bool)

(declare-fun tp!1474346 () Bool)

(declare-fun tp!1474341 () Bool)

(assert (=> b!5275991 (= e!3280916 (and tp!1474346 tp!1474341))))

(declare-fun b!5275992 () Bool)

(declare-fun Unit!153109 () Unit!153106)

(assert (=> b!5275992 (= e!3280911 Unit!153109)))

(declare-fun b!5275993 () Bool)

(assert (=> b!5275993 (= e!3280902 e!3280901)))

(declare-fun res!2237862 () Bool)

(assert (=> b!5275993 (=> res!2237862 e!3280901)))

(assert (=> b!5275993 (= res!2237862 e!3280906)))

(declare-fun res!2237885 () Bool)

(assert (=> b!5275993 (=> (not res!2237885) (not e!3280906))))

(assert (=> b!5275993 (= res!2237885 (not (= lt!2157414 (matchZipper!1141 lt!2157421 (t!374191 s!2326)))))))

(assert (=> b!5275993 (= (matchZipper!1141 lt!2157422 (t!374191 s!2326)) e!3280913)))

(declare-fun res!2237876 () Bool)

(assert (=> b!5275993 (=> res!2237876 e!3280913)))

(assert (=> b!5275993 (= res!2237876 lt!2157416)))

(declare-fun lt!2157427 () Unit!153106)

(assert (=> b!5275993 (= lt!2157427 (lemmaZipperConcatMatchesSameAsBothZippers!134 lt!2157431 lt!2157407 (t!374191 s!2326)))))

(assert (=> b!5275993 (= (flatMap!624 lt!2157425 lambda!266288) (derivationStepZipperUp!269 lt!2157404 (h!67316 s!2326)))))

(declare-fun lt!2157403 () Unit!153106)

(assert (=> b!5275993 (= lt!2157403 (lemmaFlatMapOnSingletonSet!156 lt!2157425 lt!2157404 lambda!266288))))

(declare-fun b!5275994 () Bool)

(declare-fun res!2237864 () Bool)

(assert (=> b!5275994 (=> res!2237864 e!3280910)))

(assert (=> b!5275994 (= res!2237864 (not (nullable!5066 (regOne!30306 (regOne!30306 r!7292)))))))

(declare-fun b!5275995 () Bool)

(assert (=> b!5275995 (= e!3280910 e!3280908)))

(declare-fun res!2237869 () Bool)

(assert (=> b!5275995 (=> res!2237869 e!3280908)))

(assert (=> b!5275995 (= res!2237869 (not (= lt!2157430 lt!2157409)))))

(assert (=> b!5275995 (= lt!2157409 ((_ map or) lt!2157431 lt!2157424))))

(assert (=> b!5275995 (= lt!2157424 (derivationStepZipperDown!345 (regTwo!30306 (regOne!30306 r!7292)) lt!2157412 (h!67316 s!2326)))))

(assert (=> b!5275995 (= lt!2157431 (derivationStepZipperDown!345 (regOne!30306 (regOne!30306 r!7292)) lt!2157404 (h!67316 s!2326)))))

(assert (=> b!5275995 (= lt!2157404 (Context!8563 lt!2157417))))

(assert (=> b!5275995 (= lt!2157417 (Cons!60866 (regTwo!30306 (regOne!30306 r!7292)) (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(assert (= (and start!557138 res!2237874) b!5275960))

(assert (= (and b!5275960 res!2237882) b!5275983))

(assert (= (and b!5275983 res!2237875) b!5275965))

(assert (= (and b!5275965 (not res!2237871)) b!5275989))

(assert (= (and b!5275989 (not res!2237867)) b!5275975))

(assert (= (and b!5275975 (not res!2237863)) b!5275969))

(assert (= (and b!5275969 (not res!2237877)) b!5275961))

(assert (= (and b!5275961 (not res!2237870)) b!5275972))

(assert (= (and b!5275972 (not res!2237872)) b!5275981))

(assert (= (and b!5275981 (not res!2237868)) b!5275988))

(assert (= (and b!5275988 (not res!2237881)) b!5275973))

(assert (= (and b!5275973 c!914174) b!5275974))

(assert (= (and b!5275973 (not c!914174)) b!5275992))

(assert (= (and b!5275974 (not res!2237865)) b!5275984))

(assert (= (and b!5275973 (not res!2237878)) b!5275994))

(assert (= (and b!5275994 (not res!2237864)) b!5275995))

(assert (= (and b!5275995 (not res!2237869)) b!5275964))

(assert (= (and b!5275964 (not res!2237887)) b!5275978))

(assert (= (and b!5275964 res!2237880) b!5275968))

(assert (= (and b!5275964 (not res!2237873)) b!5275977))

(assert (= (and b!5275977 (not res!2237879)) b!5275993))

(assert (= (and b!5275993 (not res!2237876)) b!5275980))

(assert (= (and b!5275993 res!2237885) b!5275982))

(assert (= (and b!5275993 (not res!2237862)) b!5275963))

(assert (= (and b!5275963 (not res!2237884)) b!5275967))

(assert (= (and b!5275967 (not res!2237886)) b!5275979))

(assert (= (and b!5275979 (not res!2237866)) b!5275971))

(assert (= (and b!5275971 (not res!2237883)) b!5275986))

(assert (= (and start!557138 ((_ is ElementMatch!14897) r!7292)) b!5275970))

(assert (= (and start!557138 ((_ is Concat!23742) r!7292)) b!5275962))

(assert (= (and start!557138 ((_ is Star!14897) r!7292)) b!5275990))

(assert (= (and start!557138 ((_ is Union!14897) r!7292)) b!5275991))

(assert (= (and start!557138 condSetEmpty!33797) setIsEmpty!33797))

(assert (= (and start!557138 (not condSetEmpty!33797)) setNonEmpty!33797))

(assert (= setNonEmpty!33797 b!5275976))

(assert (= b!5275966 b!5275985))

(assert (= (and start!557138 ((_ is Cons!60867) zl!343)) b!5275966))

(assert (= (and start!557138 ((_ is Cons!60868) s!2326)) b!5275987))

(declare-fun m!6314206 () Bool)

(assert (=> b!5275979 m!6314206))

(declare-fun m!6314208 () Bool)

(assert (=> b!5275979 m!6314208))

(declare-fun m!6314210 () Bool)

(assert (=> setNonEmpty!33797 m!6314210))

(declare-fun m!6314212 () Bool)

(assert (=> b!5275989 m!6314212))

(declare-fun m!6314214 () Bool)

(assert (=> b!5275966 m!6314214))

(declare-fun m!6314216 () Bool)

(assert (=> b!5275978 m!6314216))

(declare-fun m!6314218 () Bool)

(assert (=> b!5275986 m!6314218))

(declare-fun m!6314220 () Bool)

(assert (=> b!5275974 m!6314220))

(declare-fun m!6314222 () Bool)

(assert (=> b!5275974 m!6314222))

(declare-fun m!6314224 () Bool)

(assert (=> b!5275974 m!6314224))

(declare-fun m!6314226 () Bool)

(assert (=> b!5275965 m!6314226))

(declare-fun m!6314228 () Bool)

(assert (=> b!5275965 m!6314228))

(declare-fun m!6314230 () Bool)

(assert (=> b!5275965 m!6314230))

(declare-fun m!6314232 () Bool)

(assert (=> b!5275961 m!6314232))

(assert (=> b!5275961 m!6314232))

(declare-fun m!6314234 () Bool)

(assert (=> b!5275961 m!6314234))

(declare-fun m!6314236 () Bool)

(assert (=> b!5275981 m!6314236))

(declare-fun m!6314238 () Bool)

(assert (=> b!5275981 m!6314238))

(declare-fun m!6314240 () Bool)

(assert (=> b!5275981 m!6314240))

(declare-fun m!6314242 () Bool)

(assert (=> b!5275981 m!6314242))

(declare-fun m!6314244 () Bool)

(assert (=> b!5275981 m!6314244))

(assert (=> b!5275981 m!6314240))

(assert (=> b!5275981 m!6314236))

(declare-fun m!6314246 () Bool)

(assert (=> b!5275981 m!6314246))

(declare-fun m!6314248 () Bool)

(assert (=> b!5275977 m!6314248))

(declare-fun m!6314250 () Bool)

(assert (=> b!5275977 m!6314250))

(declare-fun m!6314252 () Bool)

(assert (=> b!5275977 m!6314252))

(declare-fun m!6314254 () Bool)

(assert (=> b!5275977 m!6314254))

(declare-fun m!6314256 () Bool)

(assert (=> b!5275977 m!6314256))

(declare-fun m!6314258 () Bool)

(assert (=> b!5275977 m!6314258))

(declare-fun m!6314260 () Bool)

(assert (=> b!5275977 m!6314260))

(assert (=> b!5275968 m!6314216))

(declare-fun m!6314262 () Bool)

(assert (=> b!5275994 m!6314262))

(declare-fun m!6314264 () Bool)

(assert (=> b!5275973 m!6314264))

(declare-fun m!6314266 () Bool)

(assert (=> b!5275973 m!6314266))

(declare-fun m!6314268 () Bool)

(assert (=> b!5275973 m!6314268))

(declare-fun m!6314270 () Bool)

(assert (=> b!5275973 m!6314270))

(declare-fun m!6314272 () Bool)

(assert (=> b!5275973 m!6314272))

(declare-fun m!6314274 () Bool)

(assert (=> b!5275973 m!6314274))

(declare-fun m!6314276 () Bool)

(assert (=> b!5275973 m!6314276))

(declare-fun m!6314278 () Bool)

(assert (=> b!5275960 m!6314278))

(assert (=> b!5275964 m!6314222))

(declare-fun m!6314280 () Bool)

(assert (=> b!5275964 m!6314280))

(declare-fun m!6314282 () Bool)

(assert (=> b!5275964 m!6314282))

(declare-fun m!6314284 () Bool)

(assert (=> b!5275964 m!6314284))

(declare-fun m!6314286 () Bool)

(assert (=> b!5275995 m!6314286))

(declare-fun m!6314288 () Bool)

(assert (=> b!5275995 m!6314288))

(declare-fun m!6314290 () Bool)

(assert (=> b!5275983 m!6314290))

(declare-fun m!6314292 () Bool)

(assert (=> b!5275984 m!6314292))

(declare-fun m!6314294 () Bool)

(assert (=> b!5275980 m!6314294))

(declare-fun m!6314296 () Bool)

(assert (=> b!5275967 m!6314296))

(declare-fun m!6314298 () Bool)

(assert (=> b!5275967 m!6314298))

(declare-fun m!6314300 () Bool)

(assert (=> b!5275975 m!6314300))

(declare-fun m!6314302 () Bool)

(assert (=> b!5275993 m!6314302))

(declare-fun m!6314304 () Bool)

(assert (=> b!5275993 m!6314304))

(assert (=> b!5275993 m!6314256))

(declare-fun m!6314306 () Bool)

(assert (=> b!5275993 m!6314306))

(declare-fun m!6314308 () Bool)

(assert (=> b!5275993 m!6314308))

(declare-fun m!6314310 () Bool)

(assert (=> b!5275993 m!6314310))

(declare-fun m!6314312 () Bool)

(assert (=> start!557138 m!6314312))

(declare-fun m!6314314 () Bool)

(assert (=> b!5275971 m!6314314))

(declare-fun m!6314316 () Bool)

(assert (=> b!5275971 m!6314316))

(declare-fun m!6314318 () Bool)

(assert (=> b!5275988 m!6314318))

(declare-fun m!6314320 () Bool)

(assert (=> b!5275982 m!6314320))

(assert (=> b!5275982 m!6314320))

(declare-fun m!6314322 () Bool)

(assert (=> b!5275982 m!6314322))

(check-sat (not b!5275973) (not b!5275984) (not b!5275978) (not b!5275966) (not b!5275990) (not setNonEmpty!33797) (not b!5275979) (not b!5275987) (not b!5275965) (not b!5275982) (not b!5275962) (not b!5275991) tp_is_empty!39047 (not b!5275994) (not b!5275967) (not b!5275989) (not b!5275971) (not b!5275976) (not b!5275995) (not b!5275968) (not b!5275985) (not b!5275983) (not b!5275975) (not b!5275960) (not b!5275974) (not start!557138) (not b!5275980) (not b!5275988) (not b!5275977) (not b!5275964) (not b!5275986) (not b!5275961) (not b!5275993) (not b!5275981))
(check-sat)
(get-model)

(declare-fun call!375417 () List!60990)

(declare-fun c!914267 () Bool)

(declare-fun bm!375410 () Bool)

(declare-fun c!914270 () Bool)

(declare-fun $colon$colon!1346 (List!60990 Regex!14897) List!60990)

(assert (=> bm!375410 (= call!375417 ($colon$colon!1346 (exprs!4781 lt!2157412) (ite (or c!914270 c!914267) (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (regTwo!30306 (regOne!30306 r!7292)))))))

(declare-fun b!5276239 () Bool)

(declare-fun e!3281060 () Bool)

(assert (=> b!5276239 (= e!3281060 (nullable!5066 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))))))

(declare-fun b!5276240 () Bool)

(declare-fun e!3281062 () (InoxSet Context!8562))

(declare-fun call!375415 () (InoxSet Context!8562))

(declare-fun call!375419 () (InoxSet Context!8562))

(assert (=> b!5276240 (= e!3281062 ((_ map or) call!375415 call!375419))))

(declare-fun b!5276241 () Bool)

(declare-fun e!3281064 () (InoxSet Context!8562))

(assert (=> b!5276241 (= e!3281064 (store ((as const (Array Context!8562 Bool)) false) lt!2157412 true))))

(declare-fun b!5276242 () Bool)

(declare-fun e!3281065 () (InoxSet Context!8562))

(declare-fun e!3281063 () (InoxSet Context!8562))

(assert (=> b!5276242 (= e!3281065 e!3281063)))

(assert (=> b!5276242 (= c!914267 ((_ is Concat!23742) (regTwo!30306 (regOne!30306 r!7292))))))

(declare-fun bm!375411 () Bool)

(declare-fun call!375420 () (InoxSet Context!8562))

(assert (=> bm!375411 (= call!375420 call!375415)))

(declare-fun b!5276243 () Bool)

(declare-fun e!3281061 () (InoxSet Context!8562))

(assert (=> b!5276243 (= e!3281061 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5276244 () Bool)

(assert (=> b!5276244 (= c!914270 e!3281060)))

(declare-fun res!2237953 () Bool)

(assert (=> b!5276244 (=> (not res!2237953) (not e!3281060))))

(assert (=> b!5276244 (= res!2237953 ((_ is Concat!23742) (regTwo!30306 (regOne!30306 r!7292))))))

(assert (=> b!5276244 (= e!3281062 e!3281065)))

(declare-fun b!5276245 () Bool)

(assert (=> b!5276245 (= e!3281064 e!3281062)))

(declare-fun c!914268 () Bool)

(assert (=> b!5276245 (= c!914268 ((_ is Union!14897) (regTwo!30306 (regOne!30306 r!7292))))))

(declare-fun bm!375412 () Bool)

(assert (=> bm!375412 (= call!375419 (derivationStepZipperDown!345 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))) (ite c!914268 lt!2157412 (Context!8563 call!375417)) (h!67316 s!2326)))))

(declare-fun b!5276246 () Bool)

(declare-fun c!914266 () Bool)

(assert (=> b!5276246 (= c!914266 ((_ is Star!14897) (regTwo!30306 (regOne!30306 r!7292))))))

(assert (=> b!5276246 (= e!3281063 e!3281061)))

(declare-fun b!5276247 () Bool)

(declare-fun call!375418 () (InoxSet Context!8562))

(assert (=> b!5276247 (= e!3281063 call!375418)))

(declare-fun bm!375413 () Bool)

(assert (=> bm!375413 (= call!375418 call!375420)))

(declare-fun b!5276248 () Bool)

(assert (=> b!5276248 (= e!3281061 call!375418)))

(declare-fun b!5276249 () Bool)

(assert (=> b!5276249 (= e!3281065 ((_ map or) call!375419 call!375420))))

(declare-fun d!1697894 () Bool)

(declare-fun c!914269 () Bool)

(assert (=> d!1697894 (= c!914269 (and ((_ is ElementMatch!14897) (regTwo!30306 (regOne!30306 r!7292))) (= (c!914175 (regTwo!30306 (regOne!30306 r!7292))) (h!67316 s!2326))))))

(assert (=> d!1697894 (= (derivationStepZipperDown!345 (regTwo!30306 (regOne!30306 r!7292)) lt!2157412 (h!67316 s!2326)) e!3281064)))

(declare-fun bm!375414 () Bool)

(declare-fun call!375416 () List!60990)

(assert (=> bm!375414 (= call!375415 (derivationStepZipperDown!345 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292)))))) (ite (or c!914268 c!914270) lt!2157412 (Context!8563 call!375416)) (h!67316 s!2326)))))

(declare-fun bm!375415 () Bool)

(assert (=> bm!375415 (= call!375416 call!375417)))

(assert (= (and d!1697894 c!914269) b!5276241))

(assert (= (and d!1697894 (not c!914269)) b!5276245))

(assert (= (and b!5276245 c!914268) b!5276240))

(assert (= (and b!5276245 (not c!914268)) b!5276244))

(assert (= (and b!5276244 res!2237953) b!5276239))

(assert (= (and b!5276244 c!914270) b!5276249))

(assert (= (and b!5276244 (not c!914270)) b!5276242))

(assert (= (and b!5276242 c!914267) b!5276247))

(assert (= (and b!5276242 (not c!914267)) b!5276246))

(assert (= (and b!5276246 c!914266) b!5276248))

(assert (= (and b!5276246 (not c!914266)) b!5276243))

(assert (= (or b!5276247 b!5276248) bm!375415))

(assert (= (or b!5276247 b!5276248) bm!375413))

(assert (= (or b!5276249 bm!375415) bm!375410))

(assert (= (or b!5276249 bm!375413) bm!375411))

(assert (= (or b!5276240 b!5276249) bm!375412))

(assert (= (or b!5276240 bm!375411) bm!375414))

(declare-fun m!6314510 () Bool)

(assert (=> bm!375412 m!6314510))

(declare-fun m!6314512 () Bool)

(assert (=> bm!375414 m!6314512))

(declare-fun m!6314514 () Bool)

(assert (=> bm!375410 m!6314514))

(declare-fun m!6314516 () Bool)

(assert (=> b!5276239 m!6314516))

(declare-fun m!6314518 () Bool)

(assert (=> b!5276241 m!6314518))

(assert (=> b!5275995 d!1697894))

(declare-fun c!914275 () Bool)

(declare-fun bm!375416 () Bool)

(declare-fun c!914272 () Bool)

(declare-fun call!375423 () List!60990)

(assert (=> bm!375416 (= call!375423 ($colon$colon!1346 (exprs!4781 lt!2157404) (ite (or c!914275 c!914272) (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 r!7292)))))))

(declare-fun b!5276250 () Bool)

(declare-fun e!3281066 () Bool)

(assert (=> b!5276250 (= e!3281066 (nullable!5066 (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))))))

(declare-fun b!5276251 () Bool)

(declare-fun e!3281068 () (InoxSet Context!8562))

(declare-fun call!375421 () (InoxSet Context!8562))

(declare-fun call!375425 () (InoxSet Context!8562))

(assert (=> b!5276251 (= e!3281068 ((_ map or) call!375421 call!375425))))

(declare-fun b!5276252 () Bool)

(declare-fun e!3281070 () (InoxSet Context!8562))

(assert (=> b!5276252 (= e!3281070 (store ((as const (Array Context!8562 Bool)) false) lt!2157404 true))))

(declare-fun b!5276253 () Bool)

(declare-fun e!3281071 () (InoxSet Context!8562))

(declare-fun e!3281069 () (InoxSet Context!8562))

(assert (=> b!5276253 (= e!3281071 e!3281069)))

(assert (=> b!5276253 (= c!914272 ((_ is Concat!23742) (regOne!30306 (regOne!30306 r!7292))))))

(declare-fun bm!375417 () Bool)

(declare-fun call!375426 () (InoxSet Context!8562))

(assert (=> bm!375417 (= call!375426 call!375421)))

(declare-fun b!5276254 () Bool)

(declare-fun e!3281067 () (InoxSet Context!8562))

(assert (=> b!5276254 (= e!3281067 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5276255 () Bool)

(assert (=> b!5276255 (= c!914275 e!3281066)))

(declare-fun res!2237956 () Bool)

(assert (=> b!5276255 (=> (not res!2237956) (not e!3281066))))

(assert (=> b!5276255 (= res!2237956 ((_ is Concat!23742) (regOne!30306 (regOne!30306 r!7292))))))

(assert (=> b!5276255 (= e!3281068 e!3281071)))

(declare-fun b!5276256 () Bool)

(assert (=> b!5276256 (= e!3281070 e!3281068)))

(declare-fun c!914273 () Bool)

(assert (=> b!5276256 (= c!914273 ((_ is Union!14897) (regOne!30306 (regOne!30306 r!7292))))))

(declare-fun bm!375418 () Bool)

(assert (=> bm!375418 (= call!375425 (derivationStepZipperDown!345 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))) (ite c!914273 lt!2157404 (Context!8563 call!375423)) (h!67316 s!2326)))))

(declare-fun b!5276257 () Bool)

(declare-fun c!914271 () Bool)

(assert (=> b!5276257 (= c!914271 ((_ is Star!14897) (regOne!30306 (regOne!30306 r!7292))))))

(assert (=> b!5276257 (= e!3281069 e!3281067)))

(declare-fun b!5276258 () Bool)

(declare-fun call!375424 () (InoxSet Context!8562))

(assert (=> b!5276258 (= e!3281069 call!375424)))

(declare-fun bm!375419 () Bool)

(assert (=> bm!375419 (= call!375424 call!375426)))

(declare-fun b!5276259 () Bool)

(assert (=> b!5276259 (= e!3281067 call!375424)))

(declare-fun b!5276260 () Bool)

(assert (=> b!5276260 (= e!3281071 ((_ map or) call!375425 call!375426))))

(declare-fun d!1697904 () Bool)

(declare-fun c!914274 () Bool)

(assert (=> d!1697904 (= c!914274 (and ((_ is ElementMatch!14897) (regOne!30306 (regOne!30306 r!7292))) (= (c!914175 (regOne!30306 (regOne!30306 r!7292))) (h!67316 s!2326))))))

(assert (=> d!1697904 (= (derivationStepZipperDown!345 (regOne!30306 (regOne!30306 r!7292)) lt!2157404 (h!67316 s!2326)) e!3281070)))

(declare-fun bm!375420 () Bool)

(declare-fun call!375422 () List!60990)

(assert (=> bm!375420 (= call!375421 (derivationStepZipperDown!345 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292)))))) (ite (or c!914273 c!914275) lt!2157404 (Context!8563 call!375422)) (h!67316 s!2326)))))

(declare-fun bm!375421 () Bool)

(assert (=> bm!375421 (= call!375422 call!375423)))

(assert (= (and d!1697904 c!914274) b!5276252))

(assert (= (and d!1697904 (not c!914274)) b!5276256))

(assert (= (and b!5276256 c!914273) b!5276251))

(assert (= (and b!5276256 (not c!914273)) b!5276255))

(assert (= (and b!5276255 res!2237956) b!5276250))

(assert (= (and b!5276255 c!914275) b!5276260))

(assert (= (and b!5276255 (not c!914275)) b!5276253))

(assert (= (and b!5276253 c!914272) b!5276258))

(assert (= (and b!5276253 (not c!914272)) b!5276257))

(assert (= (and b!5276257 c!914271) b!5276259))

(assert (= (and b!5276257 (not c!914271)) b!5276254))

(assert (= (or b!5276258 b!5276259) bm!375421))

(assert (= (or b!5276258 b!5276259) bm!375419))

(assert (= (or b!5276260 bm!375421) bm!375416))

(assert (= (or b!5276260 bm!375419) bm!375417))

(assert (= (or b!5276251 b!5276260) bm!375418))

(assert (= (or b!5276251 bm!375417) bm!375420))

(declare-fun m!6314530 () Bool)

(assert (=> bm!375418 m!6314530))

(declare-fun m!6314536 () Bool)

(assert (=> bm!375420 m!6314536))

(declare-fun m!6314540 () Bool)

(assert (=> bm!375416 m!6314540))

(declare-fun m!6314544 () Bool)

(assert (=> b!5276250 m!6314544))

(assert (=> b!5276252 m!6314248))

(assert (=> b!5275995 d!1697904))

(declare-fun d!1697916 () Bool)

(declare-fun e!3281086 () Bool)

(assert (=> d!1697916 (= (matchZipper!1141 ((_ map or) lt!2157430 lt!2157418) (t!374191 s!2326)) e!3281086)))

(declare-fun res!2237965 () Bool)

(assert (=> d!1697916 (=> res!2237965 e!3281086)))

(assert (=> d!1697916 (= res!2237965 (matchZipper!1141 lt!2157430 (t!374191 s!2326)))))

(declare-fun lt!2157483 () Unit!153106)

(declare-fun choose!39371 ((InoxSet Context!8562) (InoxSet Context!8562) List!60992) Unit!153106)

(assert (=> d!1697916 (= lt!2157483 (choose!39371 lt!2157430 lt!2157418 (t!374191 s!2326)))))

(assert (=> d!1697916 (= (lemmaZipperConcatMatchesSameAsBothZippers!134 lt!2157430 lt!2157418 (t!374191 s!2326)) lt!2157483)))

(declare-fun b!5276283 () Bool)

(assert (=> b!5276283 (= e!3281086 (matchZipper!1141 lt!2157418 (t!374191 s!2326)))))

(assert (= (and d!1697916 (not res!2237965)) b!5276283))

(assert (=> d!1697916 m!6314224))

(assert (=> d!1697916 m!6314222))

(declare-fun m!6314582 () Bool)

(assert (=> d!1697916 m!6314582))

(assert (=> b!5276283 m!6314292))

(assert (=> b!5275974 d!1697916))

(declare-fun d!1697940 () Bool)

(declare-fun c!914294 () Bool)

(declare-fun isEmpty!32823 (List!60992) Bool)

(assert (=> d!1697940 (= c!914294 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281107 () Bool)

(assert (=> d!1697940 (= (matchZipper!1141 lt!2157430 (t!374191 s!2326)) e!3281107)))

(declare-fun b!5276320 () Bool)

(declare-fun nullableZipper!1296 ((InoxSet Context!8562)) Bool)

(assert (=> b!5276320 (= e!3281107 (nullableZipper!1296 lt!2157430))))

(declare-fun b!5276321 () Bool)

(declare-fun head!11310 (List!60992) C!30064)

(declare-fun tail!10407 (List!60992) List!60992)

(assert (=> b!5276321 (= e!3281107 (matchZipper!1141 (derivationStepZipper!1140 lt!2157430 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1697940 c!914294) b!5276320))

(assert (= (and d!1697940 (not c!914294)) b!5276321))

(declare-fun m!6314584 () Bool)

(assert (=> d!1697940 m!6314584))

(declare-fun m!6314586 () Bool)

(assert (=> b!5276320 m!6314586))

(declare-fun m!6314588 () Bool)

(assert (=> b!5276321 m!6314588))

(assert (=> b!5276321 m!6314588))

(declare-fun m!6314590 () Bool)

(assert (=> b!5276321 m!6314590))

(declare-fun m!6314592 () Bool)

(assert (=> b!5276321 m!6314592))

(assert (=> b!5276321 m!6314590))

(assert (=> b!5276321 m!6314592))

(declare-fun m!6314594 () Bool)

(assert (=> b!5276321 m!6314594))

(assert (=> b!5275974 d!1697940))

(declare-fun d!1697942 () Bool)

(declare-fun c!914295 () Bool)

(assert (=> d!1697942 (= c!914295 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281108 () Bool)

(assert (=> d!1697942 (= (matchZipper!1141 ((_ map or) lt!2157430 lt!2157418) (t!374191 s!2326)) e!3281108)))

(declare-fun b!5276322 () Bool)

(assert (=> b!5276322 (= e!3281108 (nullableZipper!1296 ((_ map or) lt!2157430 lt!2157418)))))

(declare-fun b!5276323 () Bool)

(assert (=> b!5276323 (= e!3281108 (matchZipper!1141 (derivationStepZipper!1140 ((_ map or) lt!2157430 lt!2157418) (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1697942 c!914295) b!5276322))

(assert (= (and d!1697942 (not c!914295)) b!5276323))

(assert (=> d!1697942 m!6314584))

(declare-fun m!6314596 () Bool)

(assert (=> b!5276322 m!6314596))

(assert (=> b!5276323 m!6314588))

(assert (=> b!5276323 m!6314588))

(declare-fun m!6314598 () Bool)

(assert (=> b!5276323 m!6314598))

(assert (=> b!5276323 m!6314592))

(assert (=> b!5276323 m!6314598))

(assert (=> b!5276323 m!6314592))

(declare-fun m!6314600 () Bool)

(assert (=> b!5276323 m!6314600))

(assert (=> b!5275974 d!1697942))

(declare-fun d!1697944 () Bool)

(declare-fun nullableFct!1448 (Regex!14897) Bool)

(assert (=> d!1697944 (= (nullable!5066 (regOne!30306 (regOne!30306 r!7292))) (nullableFct!1448 (regOne!30306 (regOne!30306 r!7292))))))

(declare-fun bs!1222290 () Bool)

(assert (= bs!1222290 d!1697944))

(declare-fun m!6314602 () Bool)

(assert (=> bs!1222290 m!6314602))

(assert (=> b!5275994 d!1697944))

(declare-fun d!1697946 () Bool)

(declare-fun choose!39373 ((InoxSet Context!8562) Int) (InoxSet Context!8562))

(assert (=> d!1697946 (= (flatMap!624 z!1189 lambda!266288) (choose!39373 z!1189 lambda!266288))))

(declare-fun bs!1222291 () Bool)

(assert (= bs!1222291 d!1697946))

(declare-fun m!6314604 () Bool)

(assert (=> bs!1222291 m!6314604))

(assert (=> b!5275973 d!1697946))

(declare-fun d!1697948 () Bool)

(assert (=> d!1697948 (= (nullable!5066 (h!67314 (exprs!4781 (h!67315 zl!343)))) (nullableFct!1448 (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun bs!1222294 () Bool)

(assert (= bs!1222294 d!1697948))

(declare-fun m!6314606 () Bool)

(assert (=> bs!1222294 m!6314606))

(assert (=> b!5275973 d!1697948))

(declare-fun b!5276373 () Bool)

(declare-fun e!3281137 () Bool)

(assert (=> b!5276373 (= e!3281137 (nullable!5066 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))

(declare-fun call!375439 () (InoxSet Context!8562))

(declare-fun e!3281136 () (InoxSet Context!8562))

(declare-fun b!5276374 () Bool)

(assert (=> b!5276374 (= e!3281136 ((_ map or) call!375439 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (h!67316 s!2326))))))

(declare-fun b!5276375 () Bool)

(declare-fun e!3281138 () (InoxSet Context!8562))

(assert (=> b!5276375 (= e!3281136 e!3281138)))

(declare-fun c!914310 () Bool)

(assert (=> b!5276375 (= c!914310 ((_ is Cons!60866) (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))

(declare-fun b!5276376 () Bool)

(assert (=> b!5276376 (= e!3281138 call!375439)))

(declare-fun bm!375434 () Bool)

(assert (=> bm!375434 (= call!375439 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (h!67316 s!2326)))))

(declare-fun d!1697950 () Bool)

(declare-fun c!914311 () Bool)

(assert (=> d!1697950 (= c!914311 e!3281137)))

(declare-fun res!2238003 () Bool)

(assert (=> d!1697950 (=> (not res!2238003) (not e!3281137))))

(assert (=> d!1697950 (= res!2238003 ((_ is Cons!60866) (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))

(assert (=> d!1697950 (= (derivationStepZipperUp!269 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))) (h!67316 s!2326)) e!3281136)))

(declare-fun b!5276377 () Bool)

(assert (=> b!5276377 (= e!3281138 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1697950 res!2238003) b!5276373))

(assert (= (and d!1697950 c!914311) b!5276374))

(assert (= (and d!1697950 (not c!914311)) b!5276375))

(assert (= (and b!5276375 c!914310) b!5276376))

(assert (= (and b!5276375 (not c!914310)) b!5276377))

(assert (= (or b!5276374 b!5276376) bm!375434))

(declare-fun m!6314616 () Bool)

(assert (=> b!5276373 m!6314616))

(declare-fun m!6314618 () Bool)

(assert (=> b!5276374 m!6314618))

(declare-fun m!6314620 () Bool)

(assert (=> bm!375434 m!6314620))

(assert (=> b!5275973 d!1697950))

(declare-fun b!5276378 () Bool)

(declare-fun e!3281140 () Bool)

(assert (=> b!5276378 (= e!3281140 (nullable!5066 (h!67314 (exprs!4781 lt!2157412))))))

(declare-fun call!375440 () (InoxSet Context!8562))

(declare-fun e!3281139 () (InoxSet Context!8562))

(declare-fun b!5276379 () Bool)

(assert (=> b!5276379 (= e!3281139 ((_ map or) call!375440 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 lt!2157412))) (h!67316 s!2326))))))

(declare-fun b!5276380 () Bool)

(declare-fun e!3281141 () (InoxSet Context!8562))

(assert (=> b!5276380 (= e!3281139 e!3281141)))

(declare-fun c!914312 () Bool)

(assert (=> b!5276380 (= c!914312 ((_ is Cons!60866) (exprs!4781 lt!2157412)))))

(declare-fun b!5276381 () Bool)

(assert (=> b!5276381 (= e!3281141 call!375440)))

(declare-fun bm!375435 () Bool)

(assert (=> bm!375435 (= call!375440 (derivationStepZipperDown!345 (h!67314 (exprs!4781 lt!2157412)) (Context!8563 (t!374189 (exprs!4781 lt!2157412))) (h!67316 s!2326)))))

(declare-fun d!1697954 () Bool)

(declare-fun c!914313 () Bool)

(assert (=> d!1697954 (= c!914313 e!3281140)))

(declare-fun res!2238004 () Bool)

(assert (=> d!1697954 (=> (not res!2238004) (not e!3281140))))

(assert (=> d!1697954 (= res!2238004 ((_ is Cons!60866) (exprs!4781 lt!2157412)))))

(assert (=> d!1697954 (= (derivationStepZipperUp!269 lt!2157412 (h!67316 s!2326)) e!3281139)))

(declare-fun b!5276382 () Bool)

(assert (=> b!5276382 (= e!3281141 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1697954 res!2238004) b!5276378))

(assert (= (and d!1697954 c!914313) b!5276379))

(assert (= (and d!1697954 (not c!914313)) b!5276380))

(assert (= (and b!5276380 c!914312) b!5276381))

(assert (= (and b!5276380 (not c!914312)) b!5276382))

(assert (= (or b!5276379 b!5276381) bm!375435))

(declare-fun m!6314622 () Bool)

(assert (=> b!5276378 m!6314622))

(declare-fun m!6314624 () Bool)

(assert (=> b!5276379 m!6314624))

(declare-fun m!6314626 () Bool)

(assert (=> bm!375435 m!6314626))

(assert (=> b!5275973 d!1697954))

(declare-fun d!1697956 () Bool)

(declare-fun dynLambda!24055 (Int Context!8562) (InoxSet Context!8562))

(assert (=> d!1697956 (= (flatMap!624 z!1189 lambda!266288) (dynLambda!24055 lambda!266288 (h!67315 zl!343)))))

(declare-fun lt!2157492 () Unit!153106)

(declare-fun choose!39374 ((InoxSet Context!8562) Context!8562 Int) Unit!153106)

(assert (=> d!1697956 (= lt!2157492 (choose!39374 z!1189 (h!67315 zl!343) lambda!266288))))

(assert (=> d!1697956 (= z!1189 (store ((as const (Array Context!8562 Bool)) false) (h!67315 zl!343) true))))

(assert (=> d!1697956 (= (lemmaFlatMapOnSingletonSet!156 z!1189 (h!67315 zl!343) lambda!266288) lt!2157492)))

(declare-fun b_lambda!203513 () Bool)

(assert (=> (not b_lambda!203513) (not d!1697956)))

(declare-fun bs!1222301 () Bool)

(assert (= bs!1222301 d!1697956))

(assert (=> bs!1222301 m!6314274))

(declare-fun m!6314642 () Bool)

(assert (=> bs!1222301 m!6314642))

(declare-fun m!6314644 () Bool)

(assert (=> bs!1222301 m!6314644))

(declare-fun m!6314646 () Bool)

(assert (=> bs!1222301 m!6314646))

(assert (=> b!5275973 d!1697956))

(declare-fun c!914318 () Bool)

(declare-fun call!375444 () List!60990)

(declare-fun c!914321 () Bool)

(declare-fun bm!375437 () Bool)

(assert (=> bm!375437 (= call!375444 ($colon$colon!1346 (exprs!4781 lt!2157412) (ite (or c!914321 c!914318) (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (h!67314 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun b!5276397 () Bool)

(declare-fun e!3281149 () Bool)

(assert (=> b!5276397 (= e!3281149 (nullable!5066 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun b!5276398 () Bool)

(declare-fun e!3281151 () (InoxSet Context!8562))

(declare-fun call!375442 () (InoxSet Context!8562))

(declare-fun call!375446 () (InoxSet Context!8562))

(assert (=> b!5276398 (= e!3281151 ((_ map or) call!375442 call!375446))))

(declare-fun b!5276399 () Bool)

(declare-fun e!3281153 () (InoxSet Context!8562))

(assert (=> b!5276399 (= e!3281153 (store ((as const (Array Context!8562 Bool)) false) lt!2157412 true))))

(declare-fun b!5276400 () Bool)

(declare-fun e!3281154 () (InoxSet Context!8562))

(declare-fun e!3281152 () (InoxSet Context!8562))

(assert (=> b!5276400 (= e!3281154 e!3281152)))

(assert (=> b!5276400 (= c!914318 ((_ is Concat!23742) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun bm!375438 () Bool)

(declare-fun call!375447 () (InoxSet Context!8562))

(assert (=> bm!375438 (= call!375447 call!375442)))

(declare-fun b!5276401 () Bool)

(declare-fun e!3281150 () (InoxSet Context!8562))

(assert (=> b!5276401 (= e!3281150 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5276402 () Bool)

(assert (=> b!5276402 (= c!914321 e!3281149)))

(declare-fun res!2238013 () Bool)

(assert (=> b!5276402 (=> (not res!2238013) (not e!3281149))))

(assert (=> b!5276402 (= res!2238013 ((_ is Concat!23742) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> b!5276402 (= e!3281151 e!3281154)))

(declare-fun b!5276403 () Bool)

(assert (=> b!5276403 (= e!3281153 e!3281151)))

(declare-fun c!914319 () Bool)

(assert (=> b!5276403 (= c!914319 ((_ is Union!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun bm!375439 () Bool)

(assert (=> bm!375439 (= call!375446 (derivationStepZipperDown!345 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))) (ite c!914319 lt!2157412 (Context!8563 call!375444)) (h!67316 s!2326)))))

(declare-fun b!5276404 () Bool)

(declare-fun c!914317 () Bool)

(assert (=> b!5276404 (= c!914317 ((_ is Star!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> b!5276404 (= e!3281152 e!3281150)))

(declare-fun b!5276405 () Bool)

(declare-fun call!375445 () (InoxSet Context!8562))

(assert (=> b!5276405 (= e!3281152 call!375445)))

(declare-fun bm!375440 () Bool)

(assert (=> bm!375440 (= call!375445 call!375447)))

(declare-fun b!5276406 () Bool)

(assert (=> b!5276406 (= e!3281150 call!375445)))

(declare-fun b!5276407 () Bool)

(assert (=> b!5276407 (= e!3281154 ((_ map or) call!375446 call!375447))))

(declare-fun d!1697962 () Bool)

(declare-fun c!914320 () Bool)

(assert (=> d!1697962 (= c!914320 (and ((_ is ElementMatch!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))) (= (c!914175 (h!67314 (exprs!4781 (h!67315 zl!343)))) (h!67316 s!2326))))))

(assert (=> d!1697962 (= (derivationStepZipperDown!345 (h!67314 (exprs!4781 (h!67315 zl!343))) lt!2157412 (h!67316 s!2326)) e!3281153)))

(declare-fun bm!375441 () Bool)

(declare-fun call!375443 () List!60990)

(assert (=> bm!375441 (= call!375442 (derivationStepZipperDown!345 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343))))))) (ite (or c!914319 c!914321) lt!2157412 (Context!8563 call!375443)) (h!67316 s!2326)))))

(declare-fun bm!375442 () Bool)

(assert (=> bm!375442 (= call!375443 call!375444)))

(assert (= (and d!1697962 c!914320) b!5276399))

(assert (= (and d!1697962 (not c!914320)) b!5276403))

(assert (= (and b!5276403 c!914319) b!5276398))

(assert (= (and b!5276403 (not c!914319)) b!5276402))

(assert (= (and b!5276402 res!2238013) b!5276397))

(assert (= (and b!5276402 c!914321) b!5276407))

(assert (= (and b!5276402 (not c!914321)) b!5276400))

(assert (= (and b!5276400 c!914318) b!5276405))

(assert (= (and b!5276400 (not c!914318)) b!5276404))

(assert (= (and b!5276404 c!914317) b!5276406))

(assert (= (and b!5276404 (not c!914317)) b!5276401))

(assert (= (or b!5276405 b!5276406) bm!375442))

(assert (= (or b!5276405 b!5276406) bm!375440))

(assert (= (or b!5276407 bm!375442) bm!375437))

(assert (= (or b!5276407 bm!375440) bm!375438))

(assert (= (or b!5276398 b!5276407) bm!375439))

(assert (= (or b!5276398 bm!375438) bm!375441))

(declare-fun m!6314648 () Bool)

(assert (=> bm!375439 m!6314648))

(declare-fun m!6314650 () Bool)

(assert (=> bm!375441 m!6314650))

(declare-fun m!6314652 () Bool)

(assert (=> bm!375437 m!6314652))

(declare-fun m!6314654 () Bool)

(assert (=> b!5276397 m!6314654))

(assert (=> b!5276399 m!6314518))

(assert (=> b!5275973 d!1697962))

(declare-fun b!5276408 () Bool)

(declare-fun e!3281156 () Bool)

(assert (=> b!5276408 (= e!3281156 (nullable!5066 (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun e!3281155 () (InoxSet Context!8562))

(declare-fun call!375448 () (InoxSet Context!8562))

(declare-fun b!5276409 () Bool)

(assert (=> b!5276409 (= e!3281155 ((_ map or) call!375448 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))) (h!67316 s!2326))))))

(declare-fun b!5276410 () Bool)

(declare-fun e!3281157 () (InoxSet Context!8562))

(assert (=> b!5276410 (= e!3281155 e!3281157)))

(declare-fun c!914322 () Bool)

(assert (=> b!5276410 (= c!914322 ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343))))))

(declare-fun b!5276411 () Bool)

(assert (=> b!5276411 (= e!3281157 call!375448)))

(declare-fun bm!375443 () Bool)

(assert (=> bm!375443 (= call!375448 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (h!67315 zl!343))) (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))) (h!67316 s!2326)))))

(declare-fun d!1697964 () Bool)

(declare-fun c!914323 () Bool)

(assert (=> d!1697964 (= c!914323 e!3281156)))

(declare-fun res!2238014 () Bool)

(assert (=> d!1697964 (=> (not res!2238014) (not e!3281156))))

(assert (=> d!1697964 (= res!2238014 ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343))))))

(assert (=> d!1697964 (= (derivationStepZipperUp!269 (h!67315 zl!343) (h!67316 s!2326)) e!3281155)))

(declare-fun b!5276412 () Bool)

(assert (=> b!5276412 (= e!3281157 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1697964 res!2238014) b!5276408))

(assert (= (and d!1697964 c!914323) b!5276409))

(assert (= (and d!1697964 (not c!914323)) b!5276410))

(assert (= (and b!5276410 c!914322) b!5276411))

(assert (= (and b!5276410 (not c!914322)) b!5276412))

(assert (= (or b!5276409 b!5276411) bm!375443))

(assert (=> b!5276408 m!6314272))

(declare-fun m!6314656 () Bool)

(assert (=> b!5276409 m!6314656))

(declare-fun m!6314658 () Bool)

(assert (=> bm!375443 m!6314658))

(assert (=> b!5275973 d!1697964))

(declare-fun d!1697966 () Bool)

(declare-fun c!914332 () Bool)

(assert (=> d!1697966 (= c!914332 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281170 () Bool)

(assert (=> d!1697966 (= (matchZipper!1141 lt!2157422 (t!374191 s!2326)) e!3281170)))

(declare-fun b!5276433 () Bool)

(assert (=> b!5276433 (= e!3281170 (nullableZipper!1296 lt!2157422))))

(declare-fun b!5276434 () Bool)

(assert (=> b!5276434 (= e!3281170 (matchZipper!1141 (derivationStepZipper!1140 lt!2157422 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1697966 c!914332) b!5276433))

(assert (= (and d!1697966 (not c!914332)) b!5276434))

(assert (=> d!1697966 m!6314584))

(declare-fun m!6314660 () Bool)

(assert (=> b!5276433 m!6314660))

(assert (=> b!5276434 m!6314588))

(assert (=> b!5276434 m!6314588))

(declare-fun m!6314662 () Bool)

(assert (=> b!5276434 m!6314662))

(assert (=> b!5276434 m!6314592))

(assert (=> b!5276434 m!6314662))

(assert (=> b!5276434 m!6314592))

(declare-fun m!6314664 () Bool)

(assert (=> b!5276434 m!6314664))

(assert (=> b!5275993 d!1697966))

(declare-fun d!1697968 () Bool)

(declare-fun c!914333 () Bool)

(assert (=> d!1697968 (= c!914333 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281171 () Bool)

(assert (=> d!1697968 (= (matchZipper!1141 lt!2157421 (t!374191 s!2326)) e!3281171)))

(declare-fun b!5276435 () Bool)

(assert (=> b!5276435 (= e!3281171 (nullableZipper!1296 lt!2157421))))

(declare-fun b!5276436 () Bool)

(assert (=> b!5276436 (= e!3281171 (matchZipper!1141 (derivationStepZipper!1140 lt!2157421 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1697968 c!914333) b!5276435))

(assert (= (and d!1697968 (not c!914333)) b!5276436))

(assert (=> d!1697968 m!6314584))

(declare-fun m!6314666 () Bool)

(assert (=> b!5276435 m!6314666))

(assert (=> b!5276436 m!6314588))

(assert (=> b!5276436 m!6314588))

(declare-fun m!6314668 () Bool)

(assert (=> b!5276436 m!6314668))

(assert (=> b!5276436 m!6314592))

(assert (=> b!5276436 m!6314668))

(assert (=> b!5276436 m!6314592))

(declare-fun m!6314670 () Bool)

(assert (=> b!5276436 m!6314670))

(assert (=> b!5275993 d!1697968))

(declare-fun b!5276437 () Bool)

(declare-fun e!3281173 () Bool)

(assert (=> b!5276437 (= e!3281173 (nullable!5066 (h!67314 (exprs!4781 lt!2157404))))))

(declare-fun e!3281172 () (InoxSet Context!8562))

(declare-fun b!5276438 () Bool)

(declare-fun call!375449 () (InoxSet Context!8562))

(assert (=> b!5276438 (= e!3281172 ((_ map or) call!375449 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 lt!2157404))) (h!67316 s!2326))))))

(declare-fun b!5276439 () Bool)

(declare-fun e!3281174 () (InoxSet Context!8562))

(assert (=> b!5276439 (= e!3281172 e!3281174)))

(declare-fun c!914334 () Bool)

(assert (=> b!5276439 (= c!914334 ((_ is Cons!60866) (exprs!4781 lt!2157404)))))

(declare-fun b!5276440 () Bool)

(assert (=> b!5276440 (= e!3281174 call!375449)))

(declare-fun bm!375444 () Bool)

(assert (=> bm!375444 (= call!375449 (derivationStepZipperDown!345 (h!67314 (exprs!4781 lt!2157404)) (Context!8563 (t!374189 (exprs!4781 lt!2157404))) (h!67316 s!2326)))))

(declare-fun d!1697970 () Bool)

(declare-fun c!914335 () Bool)

(assert (=> d!1697970 (= c!914335 e!3281173)))

(declare-fun res!2238019 () Bool)

(assert (=> d!1697970 (=> (not res!2238019) (not e!3281173))))

(assert (=> d!1697970 (= res!2238019 ((_ is Cons!60866) (exprs!4781 lt!2157404)))))

(assert (=> d!1697970 (= (derivationStepZipperUp!269 lt!2157404 (h!67316 s!2326)) e!3281172)))

(declare-fun b!5276441 () Bool)

(assert (=> b!5276441 (= e!3281174 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1697970 res!2238019) b!5276437))

(assert (= (and d!1697970 c!914335) b!5276438))

(assert (= (and d!1697970 (not c!914335)) b!5276439))

(assert (= (and b!5276439 c!914334) b!5276440))

(assert (= (and b!5276439 (not c!914334)) b!5276441))

(assert (= (or b!5276438 b!5276440) bm!375444))

(declare-fun m!6314672 () Bool)

(assert (=> b!5276437 m!6314672))

(declare-fun m!6314674 () Bool)

(assert (=> b!5276438 m!6314674))

(declare-fun m!6314676 () Bool)

(assert (=> bm!375444 m!6314676))

(assert (=> b!5275993 d!1697970))

(declare-fun d!1697972 () Bool)

(assert (=> d!1697972 (= (flatMap!624 lt!2157425 lambda!266288) (choose!39373 lt!2157425 lambda!266288))))

(declare-fun bs!1222302 () Bool)

(assert (= bs!1222302 d!1697972))

(declare-fun m!6314678 () Bool)

(assert (=> bs!1222302 m!6314678))

(assert (=> b!5275993 d!1697972))

(declare-fun d!1697974 () Bool)

(assert (=> d!1697974 (= (flatMap!624 lt!2157425 lambda!266288) (dynLambda!24055 lambda!266288 lt!2157404))))

(declare-fun lt!2157496 () Unit!153106)

(assert (=> d!1697974 (= lt!2157496 (choose!39374 lt!2157425 lt!2157404 lambda!266288))))

(assert (=> d!1697974 (= lt!2157425 (store ((as const (Array Context!8562 Bool)) false) lt!2157404 true))))

(assert (=> d!1697974 (= (lemmaFlatMapOnSingletonSet!156 lt!2157425 lt!2157404 lambda!266288) lt!2157496)))

(declare-fun b_lambda!203515 () Bool)

(assert (=> (not b_lambda!203515) (not d!1697974)))

(declare-fun bs!1222305 () Bool)

(assert (= bs!1222305 d!1697974))

(assert (=> bs!1222305 m!6314308))

(declare-fun m!6314680 () Bool)

(assert (=> bs!1222305 m!6314680))

(declare-fun m!6314682 () Bool)

(assert (=> bs!1222305 m!6314682))

(assert (=> bs!1222305 m!6314248))

(assert (=> b!5275993 d!1697974))

(declare-fun d!1697976 () Bool)

(declare-fun e!3281181 () Bool)

(assert (=> d!1697976 (= (matchZipper!1141 ((_ map or) lt!2157431 lt!2157407) (t!374191 s!2326)) e!3281181)))

(declare-fun res!2238022 () Bool)

(assert (=> d!1697976 (=> res!2238022 e!3281181)))

(assert (=> d!1697976 (= res!2238022 (matchZipper!1141 lt!2157431 (t!374191 s!2326)))))

(declare-fun lt!2157497 () Unit!153106)

(assert (=> d!1697976 (= lt!2157497 (choose!39371 lt!2157431 lt!2157407 (t!374191 s!2326)))))

(assert (=> d!1697976 (= (lemmaZipperConcatMatchesSameAsBothZippers!134 lt!2157431 lt!2157407 (t!374191 s!2326)) lt!2157497)))

(declare-fun b!5276452 () Bool)

(assert (=> b!5276452 (= e!3281181 (matchZipper!1141 lt!2157407 (t!374191 s!2326)))))

(assert (= (and d!1697976 (not res!2238022)) b!5276452))

(declare-fun m!6314684 () Bool)

(assert (=> d!1697976 m!6314684))

(assert (=> d!1697976 m!6314282))

(declare-fun m!6314686 () Bool)

(assert (=> d!1697976 m!6314686))

(assert (=> b!5276452 m!6314294))

(assert (=> b!5275993 d!1697976))

(declare-fun bs!1222312 () Bool)

(declare-fun d!1697978 () Bool)

(assert (= bs!1222312 (and d!1697978 b!5275986)))

(declare-fun lambda!266336 () Int)

(assert (=> bs!1222312 (= lambda!266336 lambda!266289)))

(declare-fun b!5276522 () Bool)

(declare-fun e!3281229 () Regex!14897)

(assert (=> b!5276522 (= e!3281229 (Concat!23742 (h!67314 (exprs!4781 (h!67315 zl!343))) (generalisedConcat!566 (t!374189 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun b!5276523 () Bool)

(declare-fun e!3281230 () Regex!14897)

(assert (=> b!5276523 (= e!3281230 e!3281229)))

(declare-fun c!914360 () Bool)

(assert (=> b!5276523 (= c!914360 ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343))))))

(declare-fun b!5276524 () Bool)

(declare-fun e!3281228 () Bool)

(assert (=> b!5276524 (= e!3281228 (isEmpty!32819 (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun e!3281227 () Bool)

(assert (=> d!1697978 e!3281227))

(declare-fun res!2238034 () Bool)

(assert (=> d!1697978 (=> (not res!2238034) (not e!3281227))))

(declare-fun lt!2157513 () Regex!14897)

(assert (=> d!1697978 (= res!2238034 (validRegex!6633 lt!2157513))))

(assert (=> d!1697978 (= lt!2157513 e!3281230)))

(declare-fun c!914361 () Bool)

(assert (=> d!1697978 (= c!914361 e!3281228)))

(declare-fun res!2238035 () Bool)

(assert (=> d!1697978 (=> (not res!2238035) (not e!3281228))))

(assert (=> d!1697978 (= res!2238035 ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343))))))

(assert (=> d!1697978 (forall!14305 (exprs!4781 (h!67315 zl!343)) lambda!266336)))

(assert (=> d!1697978 (= (generalisedConcat!566 (exprs!4781 (h!67315 zl!343))) lt!2157513)))

(declare-fun b!5276525 () Bool)

(declare-fun e!3281226 () Bool)

(declare-fun isEmptyExpr!831 (Regex!14897) Bool)

(assert (=> b!5276525 (= e!3281226 (isEmptyExpr!831 lt!2157513))))

(declare-fun b!5276526 () Bool)

(declare-fun e!3281225 () Bool)

(declare-fun isConcat!354 (Regex!14897) Bool)

(assert (=> b!5276526 (= e!3281225 (isConcat!354 lt!2157513))))

(declare-fun b!5276527 () Bool)

(assert (=> b!5276527 (= e!3281227 e!3281226)))

(declare-fun c!914362 () Bool)

(assert (=> b!5276527 (= c!914362 (isEmpty!32819 (exprs!4781 (h!67315 zl!343))))))

(declare-fun b!5276528 () Bool)

(assert (=> b!5276528 (= e!3281229 EmptyExpr!14897)))

(declare-fun b!5276529 () Bool)

(assert (=> b!5276529 (= e!3281230 (h!67314 (exprs!4781 (h!67315 zl!343))))))

(declare-fun b!5276530 () Bool)

(assert (=> b!5276530 (= e!3281226 e!3281225)))

(declare-fun c!914359 () Bool)

(declare-fun tail!10408 (List!60990) List!60990)

(assert (=> b!5276530 (= c!914359 (isEmpty!32819 (tail!10408 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5276531 () Bool)

(declare-fun head!11311 (List!60990) Regex!14897)

(assert (=> b!5276531 (= e!3281225 (= lt!2157513 (head!11311 (exprs!4781 (h!67315 zl!343)))))))

(assert (= (and d!1697978 res!2238035) b!5276524))

(assert (= (and d!1697978 c!914361) b!5276529))

(assert (= (and d!1697978 (not c!914361)) b!5276523))

(assert (= (and b!5276523 c!914360) b!5276522))

(assert (= (and b!5276523 (not c!914360)) b!5276528))

(assert (= (and d!1697978 res!2238034) b!5276527))

(assert (= (and b!5276527 c!914362) b!5276525))

(assert (= (and b!5276527 (not c!914362)) b!5276530))

(assert (= (and b!5276530 c!914359) b!5276531))

(assert (= (and b!5276530 (not c!914359)) b!5276526))

(declare-fun m!6314752 () Bool)

(assert (=> b!5276527 m!6314752))

(declare-fun m!6314754 () Bool)

(assert (=> b!5276531 m!6314754))

(declare-fun m!6314756 () Bool)

(assert (=> d!1697978 m!6314756))

(declare-fun m!6314758 () Bool)

(assert (=> d!1697978 m!6314758))

(assert (=> b!5276524 m!6314318))

(declare-fun m!6314760 () Bool)

(assert (=> b!5276522 m!6314760))

(declare-fun m!6314762 () Bool)

(assert (=> b!5276530 m!6314762))

(assert (=> b!5276530 m!6314762))

(declare-fun m!6314764 () Bool)

(assert (=> b!5276530 m!6314764))

(declare-fun m!6314766 () Bool)

(assert (=> b!5276526 m!6314766))

(declare-fun m!6314768 () Bool)

(assert (=> b!5276525 m!6314768))

(assert (=> b!5275975 d!1697978))

(declare-fun d!1698002 () Bool)

(assert (=> d!1698002 (= (isEmpty!32820 (t!374190 zl!343)) ((_ is Nil!60867) (t!374190 zl!343)))))

(assert (=> b!5275989 d!1698002))

(declare-fun d!1698012 () Bool)

(declare-fun c!914363 () Bool)

(assert (=> d!1698012 (= c!914363 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281240 () Bool)

(assert (=> d!1698012 (= (matchZipper!1141 lt!2157424 (t!374191 s!2326)) e!3281240)))

(declare-fun b!5276564 () Bool)

(assert (=> b!5276564 (= e!3281240 (nullableZipper!1296 lt!2157424))))

(declare-fun b!5276565 () Bool)

(assert (=> b!5276565 (= e!3281240 (matchZipper!1141 (derivationStepZipper!1140 lt!2157424 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698012 c!914363) b!5276564))

(assert (= (and d!1698012 (not c!914363)) b!5276565))

(assert (=> d!1698012 m!6314584))

(declare-fun m!6314772 () Bool)

(assert (=> b!5276564 m!6314772))

(assert (=> b!5276565 m!6314588))

(assert (=> b!5276565 m!6314588))

(declare-fun m!6314774 () Bool)

(assert (=> b!5276565 m!6314774))

(assert (=> b!5276565 m!6314592))

(assert (=> b!5276565 m!6314774))

(assert (=> b!5276565 m!6314592))

(declare-fun m!6314776 () Bool)

(assert (=> b!5276565 m!6314776))

(assert (=> b!5275968 d!1698012))

(declare-fun d!1698014 () Bool)

(assert (=> d!1698014 (= (isEmpty!32819 (t!374189 (exprs!4781 (h!67315 zl!343)))) ((_ is Nil!60866) (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> b!5275988 d!1698014))

(declare-fun d!1698016 () Bool)

(declare-fun lt!2157516 () Int)

(assert (=> d!1698016 (>= lt!2157516 0)))

(declare-fun e!3281243 () Int)

(assert (=> d!1698016 (= lt!2157516 e!3281243)))

(declare-fun c!914367 () Bool)

(assert (=> d!1698016 (= c!914367 ((_ is Cons!60866) (exprs!4781 lt!2157408)))))

(assert (=> d!1698016 (= (contextDepthTotal!38 lt!2157408) lt!2157516)))

(declare-fun b!5276570 () Bool)

(declare-fun regexDepthTotal!8 (Regex!14897) Int)

(assert (=> b!5276570 (= e!3281243 (+ (regexDepthTotal!8 (h!67314 (exprs!4781 lt!2157408))) (contextDepthTotal!38 (Context!8563 (t!374189 (exprs!4781 lt!2157408))))))))

(declare-fun b!5276571 () Bool)

(assert (=> b!5276571 (= e!3281243 1)))

(assert (= (and d!1698016 c!914367) b!5276570))

(assert (= (and d!1698016 (not c!914367)) b!5276571))

(declare-fun m!6314778 () Bool)

(assert (=> b!5276570 m!6314778))

(declare-fun m!6314780 () Bool)

(assert (=> b!5276570 m!6314780))

(assert (=> b!5275967 d!1698016))

(declare-fun d!1698018 () Bool)

(declare-fun lt!2157517 () Int)

(assert (=> d!1698018 (>= lt!2157517 0)))

(declare-fun e!3281244 () Int)

(assert (=> d!1698018 (= lt!2157517 e!3281244)))

(declare-fun c!914368 () Bool)

(assert (=> d!1698018 (= c!914368 ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343))))))

(assert (=> d!1698018 (= (contextDepthTotal!38 (h!67315 zl!343)) lt!2157517)))

(declare-fun b!5276572 () Bool)

(assert (=> b!5276572 (= e!3281244 (+ (regexDepthTotal!8 (h!67314 (exprs!4781 (h!67315 zl!343)))) (contextDepthTotal!38 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun b!5276573 () Bool)

(assert (=> b!5276573 (= e!3281244 1)))

(assert (= (and d!1698018 c!914368) b!5276572))

(assert (= (and d!1698018 (not c!914368)) b!5276573))

(declare-fun m!6314782 () Bool)

(assert (=> b!5276572 m!6314782))

(declare-fun m!6314784 () Bool)

(assert (=> b!5276572 m!6314784))

(assert (=> b!5275967 d!1698018))

(declare-fun b!5276580 () Bool)

(assert (=> b!5276580 true))

(declare-fun bs!1222317 () Bool)

(declare-fun b!5276582 () Bool)

(assert (= bs!1222317 (and b!5276582 b!5276580)))

(declare-fun lt!2157528 () Int)

(declare-fun lambda!266345 () Int)

(declare-fun lambda!266344 () Int)

(declare-fun lt!2157526 () Int)

(assert (=> bs!1222317 (= (= lt!2157526 lt!2157528) (= lambda!266345 lambda!266344))))

(assert (=> b!5276582 true))

(declare-fun d!1698020 () Bool)

(declare-fun e!3281250 () Bool)

(assert (=> d!1698020 e!3281250))

(declare-fun res!2238038 () Bool)

(assert (=> d!1698020 (=> (not res!2238038) (not e!3281250))))

(assert (=> d!1698020 (= res!2238038 (>= lt!2157526 0))))

(declare-fun e!3281249 () Int)

(assert (=> d!1698020 (= lt!2157526 e!3281249)))

(declare-fun c!914377 () Bool)

(assert (=> d!1698020 (= c!914377 ((_ is Cons!60867) lt!2157429))))

(assert (=> d!1698020 (= (zipperDepth!14 lt!2157429) lt!2157526)))

(assert (=> b!5276580 (= e!3281249 lt!2157528)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!8 (Context!8562) Int)

(assert (=> b!5276580 (= lt!2157528 (maxBigInt!0 (contextDepth!8 (h!67315 lt!2157429)) (zipperDepth!14 (t!374190 lt!2157429))))))

(declare-fun lt!2157527 () Unit!153106)

(declare-fun lambda!266343 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!2 (List!60991 Int Int Int) Unit!153106)

(assert (=> b!5276580 (= lt!2157527 (lemmaForallContextDepthBiggerThanTransitive!2 (t!374190 lt!2157429) lt!2157528 (zipperDepth!14 (t!374190 lt!2157429)) lambda!266343))))

(declare-fun forall!14307 (List!60991 Int) Bool)

(assert (=> b!5276580 (forall!14307 (t!374190 lt!2157429) lambda!266344)))

(declare-fun lt!2157529 () Unit!153106)

(assert (=> b!5276580 (= lt!2157529 lt!2157527)))

(declare-fun b!5276581 () Bool)

(assert (=> b!5276581 (= e!3281249 0)))

(assert (=> b!5276582 (= e!3281250 (forall!14307 lt!2157429 lambda!266345))))

(assert (= (and d!1698020 c!914377) b!5276580))

(assert (= (and d!1698020 (not c!914377)) b!5276581))

(assert (= (and d!1698020 res!2238038) b!5276582))

(declare-fun m!6314786 () Bool)

(assert (=> b!5276580 m!6314786))

(declare-fun m!6314788 () Bool)

(assert (=> b!5276580 m!6314788))

(declare-fun m!6314790 () Bool)

(assert (=> b!5276580 m!6314790))

(assert (=> b!5276580 m!6314786))

(declare-fun m!6314792 () Bool)

(assert (=> b!5276580 m!6314792))

(assert (=> b!5276580 m!6314788))

(assert (=> b!5276580 m!6314788))

(declare-fun m!6314794 () Bool)

(assert (=> b!5276580 m!6314794))

(declare-fun m!6314796 () Bool)

(assert (=> b!5276582 m!6314796))

(assert (=> b!5275971 d!1698020))

(declare-fun bs!1222318 () Bool)

(declare-fun b!5276585 () Bool)

(assert (= bs!1222318 (and b!5276585 b!5276580)))

(declare-fun lambda!266346 () Int)

(assert (=> bs!1222318 (= lambda!266346 lambda!266343)))

(declare-fun lambda!266347 () Int)

(declare-fun lt!2157532 () Int)

(assert (=> bs!1222318 (= (= lt!2157532 lt!2157528) (= lambda!266347 lambda!266344))))

(declare-fun bs!1222319 () Bool)

(assert (= bs!1222319 (and b!5276585 b!5276582)))

(assert (=> bs!1222319 (= (= lt!2157532 lt!2157526) (= lambda!266347 lambda!266345))))

(assert (=> b!5276585 true))

(declare-fun bs!1222320 () Bool)

(declare-fun b!5276587 () Bool)

(assert (= bs!1222320 (and b!5276587 b!5276580)))

(declare-fun lambda!266348 () Int)

(declare-fun lt!2157530 () Int)

(assert (=> bs!1222320 (= (= lt!2157530 lt!2157528) (= lambda!266348 lambda!266344))))

(declare-fun bs!1222321 () Bool)

(assert (= bs!1222321 (and b!5276587 b!5276582)))

(assert (=> bs!1222321 (= (= lt!2157530 lt!2157526) (= lambda!266348 lambda!266345))))

(declare-fun bs!1222322 () Bool)

(assert (= bs!1222322 (and b!5276587 b!5276585)))

(assert (=> bs!1222322 (= (= lt!2157530 lt!2157532) (= lambda!266348 lambda!266347))))

(assert (=> b!5276587 true))

(declare-fun d!1698022 () Bool)

(declare-fun e!3281252 () Bool)

(assert (=> d!1698022 e!3281252))

(declare-fun res!2238039 () Bool)

(assert (=> d!1698022 (=> (not res!2238039) (not e!3281252))))

(assert (=> d!1698022 (= res!2238039 (>= lt!2157530 0))))

(declare-fun e!3281251 () Int)

(assert (=> d!1698022 (= lt!2157530 e!3281251)))

(declare-fun c!914378 () Bool)

(assert (=> d!1698022 (= c!914378 ((_ is Cons!60867) zl!343))))

(assert (=> d!1698022 (= (zipperDepth!14 zl!343) lt!2157530)))

(assert (=> b!5276585 (= e!3281251 lt!2157532)))

(assert (=> b!5276585 (= lt!2157532 (maxBigInt!0 (contextDepth!8 (h!67315 zl!343)) (zipperDepth!14 (t!374190 zl!343))))))

(declare-fun lt!2157531 () Unit!153106)

(assert (=> b!5276585 (= lt!2157531 (lemmaForallContextDepthBiggerThanTransitive!2 (t!374190 zl!343) lt!2157532 (zipperDepth!14 (t!374190 zl!343)) lambda!266346))))

(assert (=> b!5276585 (forall!14307 (t!374190 zl!343) lambda!266347)))

(declare-fun lt!2157533 () Unit!153106)

(assert (=> b!5276585 (= lt!2157533 lt!2157531)))

(declare-fun b!5276586 () Bool)

(assert (=> b!5276586 (= e!3281251 0)))

(assert (=> b!5276587 (= e!3281252 (forall!14307 zl!343 lambda!266348))))

(assert (= (and d!1698022 c!914378) b!5276585))

(assert (= (and d!1698022 (not c!914378)) b!5276586))

(assert (= (and d!1698022 res!2238039) b!5276587))

(declare-fun m!6314798 () Bool)

(assert (=> b!5276585 m!6314798))

(declare-fun m!6314800 () Bool)

(assert (=> b!5276585 m!6314800))

(declare-fun m!6314802 () Bool)

(assert (=> b!5276585 m!6314802))

(assert (=> b!5276585 m!6314798))

(declare-fun m!6314804 () Bool)

(assert (=> b!5276585 m!6314804))

(assert (=> b!5276585 m!6314800))

(assert (=> b!5276585 m!6314800))

(declare-fun m!6314806 () Bool)

(assert (=> b!5276585 m!6314806))

(declare-fun m!6314808 () Bool)

(assert (=> b!5276587 m!6314808))

(assert (=> b!5275971 d!1698022))

(declare-fun bs!1222323 () Bool)

(declare-fun b!5276621 () Bool)

(assert (= bs!1222323 (and b!5276621 b!5275981)))

(declare-fun lambda!266353 () Int)

(assert (=> bs!1222323 (not (= lambda!266353 lambda!266286))))

(assert (=> bs!1222323 (not (= lambda!266353 lambda!266287))))

(assert (=> b!5276621 true))

(assert (=> b!5276621 true))

(declare-fun bs!1222324 () Bool)

(declare-fun b!5276627 () Bool)

(assert (= bs!1222324 (and b!5276627 b!5275981)))

(declare-fun lambda!266354 () Int)

(assert (=> bs!1222324 (not (= lambda!266354 lambda!266286))))

(assert (=> bs!1222324 (= lambda!266354 lambda!266287)))

(declare-fun bs!1222325 () Bool)

(assert (= bs!1222325 (and b!5276627 b!5276621)))

(assert (=> bs!1222325 (not (= lambda!266354 lambda!266353))))

(assert (=> b!5276627 true))

(assert (=> b!5276627 true))

(declare-fun b!5276620 () Bool)

(declare-fun c!914389 () Bool)

(assert (=> b!5276620 (= c!914389 ((_ is ElementMatch!14897) r!7292))))

(declare-fun e!3281272 () Bool)

(declare-fun e!3281274 () Bool)

(assert (=> b!5276620 (= e!3281272 e!3281274)))

(declare-fun e!3281271 () Bool)

(declare-fun call!375455 () Bool)

(assert (=> b!5276621 (= e!3281271 call!375455)))

(declare-fun b!5276622 () Bool)

(declare-fun e!3281277 () Bool)

(assert (=> b!5276622 (= e!3281277 e!3281272)))

(declare-fun res!2238057 () Bool)

(assert (=> b!5276622 (= res!2238057 (not ((_ is EmptyLang!14897) r!7292)))))

(assert (=> b!5276622 (=> (not res!2238057) (not e!3281272))))

(declare-fun d!1698024 () Bool)

(declare-fun c!914388 () Bool)

(assert (=> d!1698024 (= c!914388 ((_ is EmptyExpr!14897) r!7292))))

(assert (=> d!1698024 (= (matchRSpec!2000 r!7292 s!2326) e!3281277)))

(declare-fun b!5276623 () Bool)

(declare-fun res!2238056 () Bool)

(assert (=> b!5276623 (=> res!2238056 e!3281271)))

(declare-fun call!375454 () Bool)

(assert (=> b!5276623 (= res!2238056 call!375454)))

(declare-fun e!3281275 () Bool)

(assert (=> b!5276623 (= e!3281275 e!3281271)))

(declare-fun b!5276624 () Bool)

(declare-fun c!914390 () Bool)

(assert (=> b!5276624 (= c!914390 ((_ is Union!14897) r!7292))))

(declare-fun e!3281276 () Bool)

(assert (=> b!5276624 (= e!3281274 e!3281276)))

(declare-fun b!5276625 () Bool)

(assert (=> b!5276625 (= e!3281277 call!375454)))

(declare-fun b!5276626 () Bool)

(declare-fun e!3281273 () Bool)

(assert (=> b!5276626 (= e!3281276 e!3281273)))

(declare-fun res!2238058 () Bool)

(assert (=> b!5276626 (= res!2238058 (matchRSpec!2000 (regOne!30307 r!7292) s!2326))))

(assert (=> b!5276626 (=> res!2238058 e!3281273)))

(declare-fun bm!375449 () Bool)

(declare-fun c!914387 () Bool)

(assert (=> bm!375449 (= call!375455 (Exists!2078 (ite c!914387 lambda!266353 lambda!266354)))))

(assert (=> b!5276627 (= e!3281275 call!375455)))

(declare-fun b!5276628 () Bool)

(assert (=> b!5276628 (= e!3281274 (= s!2326 (Cons!60868 (c!914175 r!7292) Nil!60868)))))

(declare-fun b!5276629 () Bool)

(assert (=> b!5276629 (= e!3281276 e!3281275)))

(assert (=> b!5276629 (= c!914387 ((_ is Star!14897) r!7292))))

(declare-fun bm!375450 () Bool)

(assert (=> bm!375450 (= call!375454 (isEmpty!32823 s!2326))))

(declare-fun b!5276630 () Bool)

(assert (=> b!5276630 (= e!3281273 (matchRSpec!2000 (regTwo!30307 r!7292) s!2326))))

(assert (= (and d!1698024 c!914388) b!5276625))

(assert (= (and d!1698024 (not c!914388)) b!5276622))

(assert (= (and b!5276622 res!2238057) b!5276620))

(assert (= (and b!5276620 c!914389) b!5276628))

(assert (= (and b!5276620 (not c!914389)) b!5276624))

(assert (= (and b!5276624 c!914390) b!5276626))

(assert (= (and b!5276624 (not c!914390)) b!5276629))

(assert (= (and b!5276626 (not res!2238058)) b!5276630))

(assert (= (and b!5276629 c!914387) b!5276623))

(assert (= (and b!5276629 (not c!914387)) b!5276627))

(assert (= (and b!5276623 (not res!2238056)) b!5276621))

(assert (= (or b!5276621 b!5276627) bm!375449))

(assert (= (or b!5276625 b!5276623) bm!375450))

(declare-fun m!6314810 () Bool)

(assert (=> b!5276626 m!6314810))

(declare-fun m!6314812 () Bool)

(assert (=> bm!375449 m!6314812))

(declare-fun m!6314814 () Bool)

(assert (=> bm!375450 m!6314814))

(declare-fun m!6314816 () Bool)

(assert (=> b!5276630 m!6314816))

(assert (=> b!5275965 d!1698024))

(declare-fun b!5276659 () Bool)

(declare-fun res!2238081 () Bool)

(declare-fun e!3281292 () Bool)

(assert (=> b!5276659 (=> res!2238081 e!3281292)))

(assert (=> b!5276659 (= res!2238081 (not ((_ is ElementMatch!14897) r!7292)))))

(declare-fun e!3281296 () Bool)

(assert (=> b!5276659 (= e!3281296 e!3281292)))

(declare-fun b!5276660 () Bool)

(declare-fun e!3281295 () Bool)

(assert (=> b!5276660 (= e!3281292 e!3281295)))

(declare-fun res!2238077 () Bool)

(assert (=> b!5276660 (=> (not res!2238077) (not e!3281295))))

(declare-fun lt!2157536 () Bool)

(assert (=> b!5276660 (= res!2238077 (not lt!2157536))))

(declare-fun b!5276661 () Bool)

(declare-fun e!3281297 () Bool)

(declare-fun derivativeStep!4117 (Regex!14897 C!30064) Regex!14897)

(assert (=> b!5276661 (= e!3281297 (matchR!7082 (derivativeStep!4117 r!7292 (head!11310 s!2326)) (tail!10407 s!2326)))))

(declare-fun b!5276662 () Bool)

(declare-fun res!2238082 () Bool)

(assert (=> b!5276662 (=> res!2238082 e!3281292)))

(declare-fun e!3281298 () Bool)

(assert (=> b!5276662 (= res!2238082 e!3281298)))

(declare-fun res!2238075 () Bool)

(assert (=> b!5276662 (=> (not res!2238075) (not e!3281298))))

(assert (=> b!5276662 (= res!2238075 lt!2157536)))

(declare-fun b!5276663 () Bool)

(declare-fun res!2238078 () Bool)

(assert (=> b!5276663 (=> (not res!2238078) (not e!3281298))))

(declare-fun call!375458 () Bool)

(assert (=> b!5276663 (= res!2238078 (not call!375458))))

(declare-fun b!5276664 () Bool)

(declare-fun res!2238079 () Bool)

(assert (=> b!5276664 (=> (not res!2238079) (not e!3281298))))

(assert (=> b!5276664 (= res!2238079 (isEmpty!32823 (tail!10407 s!2326)))))

(declare-fun d!1698026 () Bool)

(declare-fun e!3281293 () Bool)

(assert (=> d!1698026 e!3281293))

(declare-fun c!914399 () Bool)

(assert (=> d!1698026 (= c!914399 ((_ is EmptyExpr!14897) r!7292))))

(assert (=> d!1698026 (= lt!2157536 e!3281297)))

(declare-fun c!914398 () Bool)

(assert (=> d!1698026 (= c!914398 (isEmpty!32823 s!2326))))

(assert (=> d!1698026 (validRegex!6633 r!7292)))

(assert (=> d!1698026 (= (matchR!7082 r!7292 s!2326) lt!2157536)))

(declare-fun b!5276665 () Bool)

(assert (=> b!5276665 (= e!3281298 (= (head!11310 s!2326) (c!914175 r!7292)))))

(declare-fun b!5276666 () Bool)

(assert (=> b!5276666 (= e!3281293 e!3281296)))

(declare-fun c!914397 () Bool)

(assert (=> b!5276666 (= c!914397 ((_ is EmptyLang!14897) r!7292))))

(declare-fun b!5276667 () Bool)

(declare-fun e!3281294 () Bool)

(assert (=> b!5276667 (= e!3281295 e!3281294)))

(declare-fun res!2238076 () Bool)

(assert (=> b!5276667 (=> res!2238076 e!3281294)))

(assert (=> b!5276667 (= res!2238076 call!375458)))

(declare-fun b!5276668 () Bool)

(declare-fun res!2238080 () Bool)

(assert (=> b!5276668 (=> res!2238080 e!3281294)))

(assert (=> b!5276668 (= res!2238080 (not (isEmpty!32823 (tail!10407 s!2326))))))

(declare-fun b!5276669 () Bool)

(assert (=> b!5276669 (= e!3281297 (nullable!5066 r!7292))))

(declare-fun bm!375453 () Bool)

(assert (=> bm!375453 (= call!375458 (isEmpty!32823 s!2326))))

(declare-fun b!5276670 () Bool)

(assert (=> b!5276670 (= e!3281293 (= lt!2157536 call!375458))))

(declare-fun b!5276671 () Bool)

(assert (=> b!5276671 (= e!3281296 (not lt!2157536))))

(declare-fun b!5276672 () Bool)

(assert (=> b!5276672 (= e!3281294 (not (= (head!11310 s!2326) (c!914175 r!7292))))))

(assert (= (and d!1698026 c!914398) b!5276669))

(assert (= (and d!1698026 (not c!914398)) b!5276661))

(assert (= (and d!1698026 c!914399) b!5276670))

(assert (= (and d!1698026 (not c!914399)) b!5276666))

(assert (= (and b!5276666 c!914397) b!5276671))

(assert (= (and b!5276666 (not c!914397)) b!5276659))

(assert (= (and b!5276659 (not res!2238081)) b!5276662))

(assert (= (and b!5276662 res!2238075) b!5276663))

(assert (= (and b!5276663 res!2238078) b!5276664))

(assert (= (and b!5276664 res!2238079) b!5276665))

(assert (= (and b!5276662 (not res!2238082)) b!5276660))

(assert (= (and b!5276660 res!2238077) b!5276667))

(assert (= (and b!5276667 (not res!2238076)) b!5276668))

(assert (= (and b!5276668 (not res!2238080)) b!5276672))

(assert (= (or b!5276670 b!5276663 b!5276667) bm!375453))

(declare-fun m!6314818 () Bool)

(assert (=> b!5276669 m!6314818))

(declare-fun m!6314820 () Bool)

(assert (=> b!5276668 m!6314820))

(assert (=> b!5276668 m!6314820))

(declare-fun m!6314822 () Bool)

(assert (=> b!5276668 m!6314822))

(declare-fun m!6314824 () Bool)

(assert (=> b!5276672 m!6314824))

(assert (=> b!5276664 m!6314820))

(assert (=> b!5276664 m!6314820))

(assert (=> b!5276664 m!6314822))

(assert (=> d!1698026 m!6314814))

(assert (=> d!1698026 m!6314312))

(assert (=> b!5276665 m!6314824))

(assert (=> bm!375453 m!6314814))

(assert (=> b!5276661 m!6314824))

(assert (=> b!5276661 m!6314824))

(declare-fun m!6314826 () Bool)

(assert (=> b!5276661 m!6314826))

(assert (=> b!5276661 m!6314820))

(assert (=> b!5276661 m!6314826))

(assert (=> b!5276661 m!6314820))

(declare-fun m!6314828 () Bool)

(assert (=> b!5276661 m!6314828))

(assert (=> b!5275965 d!1698026))

(declare-fun d!1698028 () Bool)

(assert (=> d!1698028 (= (matchR!7082 r!7292 s!2326) (matchRSpec!2000 r!7292 s!2326))))

(declare-fun lt!2157539 () Unit!153106)

(declare-fun choose!39376 (Regex!14897 List!60992) Unit!153106)

(assert (=> d!1698028 (= lt!2157539 (choose!39376 r!7292 s!2326))))

(assert (=> d!1698028 (validRegex!6633 r!7292)))

(assert (=> d!1698028 (= (mainMatchTheorem!2000 r!7292 s!2326) lt!2157539)))

(declare-fun bs!1222326 () Bool)

(assert (= bs!1222326 d!1698028))

(assert (=> bs!1222326 m!6314228))

(assert (=> bs!1222326 m!6314226))

(declare-fun m!6314830 () Bool)

(assert (=> bs!1222326 m!6314830))

(assert (=> bs!1222326 m!6314312))

(assert (=> b!5275965 d!1698028))

(declare-fun d!1698030 () Bool)

(declare-fun c!914400 () Bool)

(assert (=> d!1698030 (= c!914400 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281299 () Bool)

(assert (=> d!1698030 (= (matchZipper!1141 lt!2157418 (t!374191 s!2326)) e!3281299)))

(declare-fun b!5276673 () Bool)

(assert (=> b!5276673 (= e!3281299 (nullableZipper!1296 lt!2157418))))

(declare-fun b!5276674 () Bool)

(assert (=> b!5276674 (= e!3281299 (matchZipper!1141 (derivationStepZipper!1140 lt!2157418 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698030 c!914400) b!5276673))

(assert (= (and d!1698030 (not c!914400)) b!5276674))

(assert (=> d!1698030 m!6314584))

(declare-fun m!6314832 () Bool)

(assert (=> b!5276673 m!6314832))

(assert (=> b!5276674 m!6314588))

(assert (=> b!5276674 m!6314588))

(declare-fun m!6314834 () Bool)

(assert (=> b!5276674 m!6314834))

(assert (=> b!5276674 m!6314592))

(assert (=> b!5276674 m!6314834))

(assert (=> b!5276674 m!6314592))

(declare-fun m!6314836 () Bool)

(assert (=> b!5276674 m!6314836))

(assert (=> b!5275984 d!1698030))

(assert (=> b!5275964 d!1697940))

(declare-fun d!1698032 () Bool)

(declare-fun c!914401 () Bool)

(assert (=> d!1698032 (= c!914401 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281300 () Bool)

(assert (=> d!1698032 (= (matchZipper!1141 lt!2157409 (t!374191 s!2326)) e!3281300)))

(declare-fun b!5276675 () Bool)

(assert (=> b!5276675 (= e!3281300 (nullableZipper!1296 lt!2157409))))

(declare-fun b!5276676 () Bool)

(assert (=> b!5276676 (= e!3281300 (matchZipper!1141 (derivationStepZipper!1140 lt!2157409 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698032 c!914401) b!5276675))

(assert (= (and d!1698032 (not c!914401)) b!5276676))

(assert (=> d!1698032 m!6314584))

(declare-fun m!6314838 () Bool)

(assert (=> b!5276675 m!6314838))

(assert (=> b!5276676 m!6314588))

(assert (=> b!5276676 m!6314588))

(declare-fun m!6314840 () Bool)

(assert (=> b!5276676 m!6314840))

(assert (=> b!5276676 m!6314592))

(assert (=> b!5276676 m!6314840))

(assert (=> b!5276676 m!6314592))

(declare-fun m!6314842 () Bool)

(assert (=> b!5276676 m!6314842))

(assert (=> b!5275964 d!1698032))

(declare-fun d!1698034 () Bool)

(declare-fun c!914402 () Bool)

(assert (=> d!1698034 (= c!914402 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281301 () Bool)

(assert (=> d!1698034 (= (matchZipper!1141 lt!2157431 (t!374191 s!2326)) e!3281301)))

(declare-fun b!5276677 () Bool)

(assert (=> b!5276677 (= e!3281301 (nullableZipper!1296 lt!2157431))))

(declare-fun b!5276678 () Bool)

(assert (=> b!5276678 (= e!3281301 (matchZipper!1141 (derivationStepZipper!1140 lt!2157431 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698034 c!914402) b!5276677))

(assert (= (and d!1698034 (not c!914402)) b!5276678))

(assert (=> d!1698034 m!6314584))

(declare-fun m!6314844 () Bool)

(assert (=> b!5276677 m!6314844))

(assert (=> b!5276678 m!6314588))

(assert (=> b!5276678 m!6314588))

(declare-fun m!6314846 () Bool)

(assert (=> b!5276678 m!6314846))

(assert (=> b!5276678 m!6314592))

(assert (=> b!5276678 m!6314846))

(assert (=> b!5276678 m!6314592))

(declare-fun m!6314848 () Bool)

(assert (=> b!5276678 m!6314848))

(assert (=> b!5275964 d!1698034))

(declare-fun e!3281302 () Bool)

(declare-fun d!1698036 () Bool)

(assert (=> d!1698036 (= (matchZipper!1141 ((_ map or) lt!2157431 lt!2157424) (t!374191 s!2326)) e!3281302)))

(declare-fun res!2238083 () Bool)

(assert (=> d!1698036 (=> res!2238083 e!3281302)))

(assert (=> d!1698036 (= res!2238083 (matchZipper!1141 lt!2157431 (t!374191 s!2326)))))

(declare-fun lt!2157540 () Unit!153106)

(assert (=> d!1698036 (= lt!2157540 (choose!39371 lt!2157431 lt!2157424 (t!374191 s!2326)))))

(assert (=> d!1698036 (= (lemmaZipperConcatMatchesSameAsBothZippers!134 lt!2157431 lt!2157424 (t!374191 s!2326)) lt!2157540)))

(declare-fun b!5276679 () Bool)

(assert (=> b!5276679 (= e!3281302 (matchZipper!1141 lt!2157424 (t!374191 s!2326)))))

(assert (= (and d!1698036 (not res!2238083)) b!5276679))

(declare-fun m!6314850 () Bool)

(assert (=> d!1698036 m!6314850))

(assert (=> d!1698036 m!6314282))

(declare-fun m!6314852 () Bool)

(assert (=> d!1698036 m!6314852))

(assert (=> b!5276679 m!6314216))

(assert (=> b!5275964 d!1698036))

(declare-fun d!1698038 () Bool)

(declare-fun lt!2157543 () Regex!14897)

(assert (=> d!1698038 (validRegex!6633 lt!2157543)))

(assert (=> d!1698038 (= lt!2157543 (generalisedUnion!826 (unfocusZipperList!339 zl!343)))))

(assert (=> d!1698038 (= (unfocusZipper!639 zl!343) lt!2157543)))

(declare-fun bs!1222327 () Bool)

(assert (= bs!1222327 d!1698038))

(declare-fun m!6314854 () Bool)

(assert (=> bs!1222327 m!6314854))

(assert (=> bs!1222327 m!6314232))

(assert (=> bs!1222327 m!6314232))

(assert (=> bs!1222327 m!6314234))

(assert (=> b!5275983 d!1698038))

(declare-fun b!5276698 () Bool)

(declare-fun e!3281317 () Bool)

(declare-fun call!375467 () Bool)

(assert (=> b!5276698 (= e!3281317 call!375467)))

(declare-fun b!5276699 () Bool)

(declare-fun e!3281323 () Bool)

(assert (=> b!5276699 (= e!3281323 call!375467)))

(declare-fun b!5276700 () Bool)

(declare-fun res!2238098 () Bool)

(declare-fun e!3281321 () Bool)

(assert (=> b!5276700 (=> res!2238098 e!3281321)))

(assert (=> b!5276700 (= res!2238098 (not ((_ is Concat!23742) r!7292)))))

(declare-fun e!3281319 () Bool)

(assert (=> b!5276700 (= e!3281319 e!3281321)))

(declare-fun b!5276701 () Bool)

(assert (=> b!5276701 (= e!3281321 e!3281323)))

(declare-fun res!2238095 () Bool)

(assert (=> b!5276701 (=> (not res!2238095) (not e!3281323))))

(declare-fun call!375465 () Bool)

(assert (=> b!5276701 (= res!2238095 call!375465)))

(declare-fun c!914407 () Bool)

(declare-fun c!914408 () Bool)

(declare-fun bm!375460 () Bool)

(declare-fun call!375466 () Bool)

(assert (=> bm!375460 (= call!375466 (validRegex!6633 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))))))

(declare-fun d!1698040 () Bool)

(declare-fun res!2238097 () Bool)

(declare-fun e!3281318 () Bool)

(assert (=> d!1698040 (=> res!2238097 e!3281318)))

(assert (=> d!1698040 (= res!2238097 ((_ is ElementMatch!14897) r!7292))))

(assert (=> d!1698040 (= (validRegex!6633 r!7292) e!3281318)))

(declare-fun bm!375461 () Bool)

(assert (=> bm!375461 (= call!375465 call!375466)))

(declare-fun bm!375462 () Bool)

(assert (=> bm!375462 (= call!375467 (validRegex!6633 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))))))

(declare-fun b!5276702 () Bool)

(declare-fun e!3281320 () Bool)

(assert (=> b!5276702 (= e!3281318 e!3281320)))

(assert (=> b!5276702 (= c!914408 ((_ is Star!14897) r!7292))))

(declare-fun b!5276703 () Bool)

(declare-fun e!3281322 () Bool)

(assert (=> b!5276703 (= e!3281322 call!375466)))

(declare-fun b!5276704 () Bool)

(assert (=> b!5276704 (= e!3281320 e!3281322)))

(declare-fun res!2238094 () Bool)

(assert (=> b!5276704 (= res!2238094 (not (nullable!5066 (reg!15226 r!7292))))))

(assert (=> b!5276704 (=> (not res!2238094) (not e!3281322))))

(declare-fun b!5276705 () Bool)

(assert (=> b!5276705 (= e!3281320 e!3281319)))

(assert (=> b!5276705 (= c!914407 ((_ is Union!14897) r!7292))))

(declare-fun b!5276706 () Bool)

(declare-fun res!2238096 () Bool)

(assert (=> b!5276706 (=> (not res!2238096) (not e!3281317))))

(assert (=> b!5276706 (= res!2238096 call!375465)))

(assert (=> b!5276706 (= e!3281319 e!3281317)))

(assert (= (and d!1698040 (not res!2238097)) b!5276702))

(assert (= (and b!5276702 c!914408) b!5276704))

(assert (= (and b!5276702 (not c!914408)) b!5276705))

(assert (= (and b!5276704 res!2238094) b!5276703))

(assert (= (and b!5276705 c!914407) b!5276706))

(assert (= (and b!5276705 (not c!914407)) b!5276700))

(assert (= (and b!5276706 res!2238096) b!5276698))

(assert (= (and b!5276700 (not res!2238098)) b!5276701))

(assert (= (and b!5276701 res!2238095) b!5276699))

(assert (= (or b!5276698 b!5276699) bm!375462))

(assert (= (or b!5276706 b!5276701) bm!375461))

(assert (= (or b!5276703 bm!375461) bm!375460))

(declare-fun m!6314856 () Bool)

(assert (=> bm!375460 m!6314856))

(declare-fun m!6314858 () Bool)

(assert (=> bm!375462 m!6314858))

(declare-fun m!6314860 () Bool)

(assert (=> b!5276704 m!6314860))

(assert (=> start!557138 d!1698040))

(declare-fun d!1698042 () Bool)

(declare-fun c!914409 () Bool)

(assert (=> d!1698042 (= c!914409 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281324 () Bool)

(assert (=> d!1698042 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (t!374191 s!2326)) e!3281324)))

(declare-fun b!5276707 () Bool)

(assert (=> b!5276707 (= e!3281324 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326))))))

(declare-fun b!5276708 () Bool)

(assert (=> b!5276708 (= e!3281324 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698042 c!914409) b!5276707))

(assert (= (and d!1698042 (not c!914409)) b!5276708))

(assert (=> d!1698042 m!6314584))

(assert (=> b!5276707 m!6314320))

(declare-fun m!6314862 () Bool)

(assert (=> b!5276707 m!6314862))

(assert (=> b!5276708 m!6314588))

(assert (=> b!5276708 m!6314320))

(assert (=> b!5276708 m!6314588))

(declare-fun m!6314864 () Bool)

(assert (=> b!5276708 m!6314864))

(assert (=> b!5276708 m!6314592))

(assert (=> b!5276708 m!6314864))

(assert (=> b!5276708 m!6314592))

(declare-fun m!6314866 () Bool)

(assert (=> b!5276708 m!6314866))

(assert (=> b!5275982 d!1698042))

(declare-fun bs!1222328 () Bool)

(declare-fun d!1698044 () Bool)

(assert (= bs!1222328 (and d!1698044 b!5275973)))

(declare-fun lambda!266357 () Int)

(assert (=> bs!1222328 (= lambda!266357 lambda!266288)))

(assert (=> d!1698044 true))

(assert (=> d!1698044 (= (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (flatMap!624 lt!2157425 lambda!266357))))

(declare-fun bs!1222329 () Bool)

(assert (= bs!1222329 d!1698044))

(declare-fun m!6314868 () Bool)

(assert (=> bs!1222329 m!6314868))

(assert (=> b!5275982 d!1698044))

(declare-fun bs!1222330 () Bool)

(declare-fun d!1698046 () Bool)

(assert (= bs!1222330 (and d!1698046 b!5275986)))

(declare-fun lambda!266360 () Int)

(assert (=> bs!1222330 (= lambda!266360 lambda!266289)))

(declare-fun bs!1222331 () Bool)

(assert (= bs!1222331 (and d!1698046 d!1697978)))

(assert (=> bs!1222331 (= lambda!266360 lambda!266336)))

(assert (=> d!1698046 (= (inv!80489 (h!67315 zl!343)) (forall!14305 (exprs!4781 (h!67315 zl!343)) lambda!266360))))

(declare-fun bs!1222332 () Bool)

(assert (= bs!1222332 d!1698046))

(declare-fun m!6314870 () Bool)

(assert (=> bs!1222332 m!6314870))

(assert (=> b!5275966 d!1698046))

(declare-fun d!1698048 () Bool)

(declare-fun res!2238103 () Bool)

(declare-fun e!3281329 () Bool)

(assert (=> d!1698048 (=> res!2238103 e!3281329)))

(assert (=> d!1698048 (= res!2238103 ((_ is Nil!60866) lt!2157426))))

(assert (=> d!1698048 (= (forall!14305 lt!2157426 lambda!266289) e!3281329)))

(declare-fun b!5276715 () Bool)

(declare-fun e!3281330 () Bool)

(assert (=> b!5276715 (= e!3281329 e!3281330)))

(declare-fun res!2238104 () Bool)

(assert (=> b!5276715 (=> (not res!2238104) (not e!3281330))))

(declare-fun dynLambda!24057 (Int Regex!14897) Bool)

(assert (=> b!5276715 (= res!2238104 (dynLambda!24057 lambda!266289 (h!67314 lt!2157426)))))

(declare-fun b!5276716 () Bool)

(assert (=> b!5276716 (= e!3281330 (forall!14305 (t!374189 lt!2157426) lambda!266289))))

(assert (= (and d!1698048 (not res!2238103)) b!5276715))

(assert (= (and b!5276715 res!2238104) b!5276716))

(declare-fun b_lambda!203529 () Bool)

(assert (=> (not b_lambda!203529) (not b!5276715)))

(declare-fun m!6314872 () Bool)

(assert (=> b!5276715 m!6314872))

(declare-fun m!6314874 () Bool)

(assert (=> b!5276716 m!6314874))

(assert (=> b!5275986 d!1698048))

(declare-fun bs!1222333 () Bool)

(declare-fun d!1698050 () Bool)

(assert (= bs!1222333 (and d!1698050 b!5275986)))

(declare-fun lambda!266361 () Int)

(assert (=> bs!1222333 (= lambda!266361 lambda!266289)))

(declare-fun bs!1222334 () Bool)

(assert (= bs!1222334 (and d!1698050 d!1697978)))

(assert (=> bs!1222334 (= lambda!266361 lambda!266336)))

(declare-fun bs!1222335 () Bool)

(assert (= bs!1222335 (and d!1698050 d!1698046)))

(assert (=> bs!1222335 (= lambda!266361 lambda!266360)))

(assert (=> d!1698050 (= (inv!80489 setElem!33797) (forall!14305 (exprs!4781 setElem!33797) lambda!266361))))

(declare-fun bs!1222336 () Bool)

(assert (= bs!1222336 d!1698050))

(declare-fun m!6314876 () Bool)

(assert (=> bs!1222336 m!6314876))

(assert (=> setNonEmpty!33797 d!1698050))

(declare-fun d!1698052 () Bool)

(declare-fun lt!2157546 () Int)

(assert (=> d!1698052 (>= lt!2157546 0)))

(declare-fun e!3281333 () Int)

(assert (=> d!1698052 (= lt!2157546 e!3281333)))

(declare-fun c!914414 () Bool)

(assert (=> d!1698052 (= c!914414 ((_ is Cons!60867) lt!2157429))))

(assert (=> d!1698052 (= (zipperDepthTotal!58 lt!2157429) lt!2157546)))

(declare-fun b!5276721 () Bool)

(assert (=> b!5276721 (= e!3281333 (+ (contextDepthTotal!38 (h!67315 lt!2157429)) (zipperDepthTotal!58 (t!374190 lt!2157429))))))

(declare-fun b!5276722 () Bool)

(assert (=> b!5276722 (= e!3281333 0)))

(assert (= (and d!1698052 c!914414) b!5276721))

(assert (= (and d!1698052 (not c!914414)) b!5276722))

(declare-fun m!6314878 () Bool)

(assert (=> b!5276721 m!6314878))

(declare-fun m!6314880 () Bool)

(assert (=> b!5276721 m!6314880))

(assert (=> b!5275979 d!1698052))

(declare-fun d!1698054 () Bool)

(declare-fun lt!2157547 () Int)

(assert (=> d!1698054 (>= lt!2157547 0)))

(declare-fun e!3281334 () Int)

(assert (=> d!1698054 (= lt!2157547 e!3281334)))

(declare-fun c!914415 () Bool)

(assert (=> d!1698054 (= c!914415 ((_ is Cons!60867) zl!343))))

(assert (=> d!1698054 (= (zipperDepthTotal!58 zl!343) lt!2157547)))

(declare-fun b!5276723 () Bool)

(assert (=> b!5276723 (= e!3281334 (+ (contextDepthTotal!38 (h!67315 zl!343)) (zipperDepthTotal!58 (t!374190 zl!343))))))

(declare-fun b!5276724 () Bool)

(assert (=> b!5276724 (= e!3281334 0)))

(assert (= (and d!1698054 c!914415) b!5276723))

(assert (= (and d!1698054 (not c!914415)) b!5276724))

(assert (=> b!5276723 m!6314298))

(declare-fun m!6314882 () Bool)

(assert (=> b!5276723 m!6314882))

(assert (=> b!5275979 d!1698054))

(assert (=> b!5275978 d!1698012))

(declare-fun bs!1222337 () Bool)

(declare-fun d!1698056 () Bool)

(assert (= bs!1222337 (and d!1698056 b!5275973)))

(declare-fun lambda!266362 () Int)

(assert (=> bs!1222337 (= lambda!266362 lambda!266288)))

(declare-fun bs!1222338 () Bool)

(assert (= bs!1222338 (and d!1698056 d!1698044)))

(assert (=> bs!1222338 (= lambda!266362 lambda!266357)))

(assert (=> d!1698056 true))

(assert (=> d!1698056 (= (derivationStepZipper!1140 lt!2157405 (h!67316 s!2326)) (flatMap!624 lt!2157405 lambda!266362))))

(declare-fun bs!1222339 () Bool)

(assert (= bs!1222339 d!1698056))

(declare-fun m!6314884 () Bool)

(assert (=> bs!1222339 m!6314884))

(assert (=> b!5275977 d!1698056))

(declare-fun d!1698058 () Bool)

(assert (=> d!1698058 (= (flatMap!624 lt!2157405 lambda!266288) (dynLambda!24055 lambda!266288 lt!2157408))))

(declare-fun lt!2157548 () Unit!153106)

(assert (=> d!1698058 (= lt!2157548 (choose!39374 lt!2157405 lt!2157408 lambda!266288))))

(assert (=> d!1698058 (= lt!2157405 (store ((as const (Array Context!8562 Bool)) false) lt!2157408 true))))

(assert (=> d!1698058 (= (lemmaFlatMapOnSingletonSet!156 lt!2157405 lt!2157408 lambda!266288) lt!2157548)))

(declare-fun b_lambda!203531 () Bool)

(assert (=> (not b_lambda!203531) (not d!1698058)))

(declare-fun bs!1222340 () Bool)

(assert (= bs!1222340 d!1698058))

(assert (=> bs!1222340 m!6314254))

(declare-fun m!6314886 () Bool)

(assert (=> bs!1222340 m!6314886))

(declare-fun m!6314888 () Bool)

(assert (=> bs!1222340 m!6314888))

(assert (=> bs!1222340 m!6314252))

(assert (=> b!5275977 d!1698058))

(assert (=> b!5275977 d!1697970))

(declare-fun d!1698060 () Bool)

(assert (=> d!1698060 (= (flatMap!624 lt!2157405 lambda!266288) (choose!39373 lt!2157405 lambda!266288))))

(declare-fun bs!1222341 () Bool)

(assert (= bs!1222341 d!1698060))

(declare-fun m!6314890 () Bool)

(assert (=> bs!1222341 m!6314890))

(assert (=> b!5275977 d!1698060))

(declare-fun b!5276725 () Bool)

(declare-fun e!3281336 () Bool)

(assert (=> b!5276725 (= e!3281336 (nullable!5066 (h!67314 (exprs!4781 lt!2157408))))))

(declare-fun e!3281335 () (InoxSet Context!8562))

(declare-fun b!5276726 () Bool)

(declare-fun call!375468 () (InoxSet Context!8562))

(assert (=> b!5276726 (= e!3281335 ((_ map or) call!375468 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 lt!2157408))) (h!67316 s!2326))))))

(declare-fun b!5276727 () Bool)

(declare-fun e!3281337 () (InoxSet Context!8562))

(assert (=> b!5276727 (= e!3281335 e!3281337)))

(declare-fun c!914416 () Bool)

(assert (=> b!5276727 (= c!914416 ((_ is Cons!60866) (exprs!4781 lt!2157408)))))

(declare-fun b!5276728 () Bool)

(assert (=> b!5276728 (= e!3281337 call!375468)))

(declare-fun bm!375463 () Bool)

(assert (=> bm!375463 (= call!375468 (derivationStepZipperDown!345 (h!67314 (exprs!4781 lt!2157408)) (Context!8563 (t!374189 (exprs!4781 lt!2157408))) (h!67316 s!2326)))))

(declare-fun d!1698062 () Bool)

(declare-fun c!914417 () Bool)

(assert (=> d!1698062 (= c!914417 e!3281336)))

(declare-fun res!2238105 () Bool)

(assert (=> d!1698062 (=> (not res!2238105) (not e!3281336))))

(assert (=> d!1698062 (= res!2238105 ((_ is Cons!60866) (exprs!4781 lt!2157408)))))

(assert (=> d!1698062 (= (derivationStepZipperUp!269 lt!2157408 (h!67316 s!2326)) e!3281335)))

(declare-fun b!5276729 () Bool)

(assert (=> b!5276729 (= e!3281337 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1698062 res!2238105) b!5276725))

(assert (= (and d!1698062 c!914417) b!5276726))

(assert (= (and d!1698062 (not c!914417)) b!5276727))

(assert (= (and b!5276727 c!914416) b!5276728))

(assert (= (and b!5276727 (not c!914416)) b!5276729))

(assert (= (or b!5276726 b!5276728) bm!375463))

(declare-fun m!6314892 () Bool)

(assert (=> b!5276725 m!6314892))

(declare-fun m!6314894 () Bool)

(assert (=> b!5276726 m!6314894))

(declare-fun m!6314896 () Bool)

(assert (=> bm!375463 m!6314896))

(assert (=> b!5275977 d!1698062))

(declare-fun d!1698064 () Bool)

(declare-fun choose!39377 (Int) Bool)

(assert (=> d!1698064 (= (Exists!2078 lambda!266287) (choose!39377 lambda!266287))))

(declare-fun bs!1222342 () Bool)

(assert (= bs!1222342 d!1698064))

(declare-fun m!6314898 () Bool)

(assert (=> bs!1222342 m!6314898))

(assert (=> b!5275981 d!1698064))

(declare-fun b!5276748 () Bool)

(declare-fun e!3281349 () Bool)

(assert (=> b!5276748 (= e!3281349 (matchR!7082 (regTwo!30306 r!7292) s!2326))))

(declare-fun b!5276749 () Bool)

(declare-fun e!3281351 () Option!15008)

(assert (=> b!5276749 (= e!3281351 None!15007)))

(declare-fun b!5276750 () Bool)

(declare-fun e!3281350 () Option!15008)

(assert (=> b!5276750 (= e!3281350 e!3281351)))

(declare-fun c!914423 () Bool)

(assert (=> b!5276750 (= c!914423 ((_ is Nil!60868) s!2326))))

(declare-fun b!5276751 () Bool)

(assert (=> b!5276751 (= e!3281350 (Some!15007 (tuple2!64193 Nil!60868 s!2326)))))

(declare-fun b!5276752 () Bool)

(declare-fun lt!2157557 () Unit!153106)

(declare-fun lt!2157556 () Unit!153106)

(assert (=> b!5276752 (= lt!2157557 lt!2157556)))

(declare-fun ++!13276 (List!60992 List!60992) List!60992)

(assert (=> b!5276752 (= (++!13276 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (t!374191 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1691 (List!60992 C!30064 List!60992 List!60992) Unit!153106)

(assert (=> b!5276752 (= lt!2157556 (lemmaMoveElementToOtherListKeepsConcatEq!1691 Nil!60868 (h!67316 s!2326) (t!374191 s!2326) s!2326))))

(assert (=> b!5276752 (= e!3281351 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (t!374191 s!2326) s!2326))))

(declare-fun b!5276753 () Bool)

(declare-fun e!3281352 () Bool)

(declare-fun lt!2157555 () Option!15008)

(declare-fun get!20930 (Option!15008) tuple2!64192)

(assert (=> b!5276753 (= e!3281352 (= (++!13276 (_1!35399 (get!20930 lt!2157555)) (_2!35399 (get!20930 lt!2157555))) s!2326))))

(declare-fun b!5276755 () Bool)

(declare-fun res!2238117 () Bool)

(assert (=> b!5276755 (=> (not res!2238117) (not e!3281352))))

(assert (=> b!5276755 (= res!2238117 (matchR!7082 (regTwo!30306 r!7292) (_2!35399 (get!20930 lt!2157555))))))

(declare-fun b!5276756 () Bool)

(declare-fun res!2238120 () Bool)

(assert (=> b!5276756 (=> (not res!2238120) (not e!3281352))))

(assert (=> b!5276756 (= res!2238120 (matchR!7082 (regOne!30306 r!7292) (_1!35399 (get!20930 lt!2157555))))))

(declare-fun d!1698066 () Bool)

(declare-fun e!3281348 () Bool)

(assert (=> d!1698066 e!3281348))

(declare-fun res!2238116 () Bool)

(assert (=> d!1698066 (=> res!2238116 e!3281348)))

(assert (=> d!1698066 (= res!2238116 e!3281352)))

(declare-fun res!2238118 () Bool)

(assert (=> d!1698066 (=> (not res!2238118) (not e!3281352))))

(assert (=> d!1698066 (= res!2238118 (isDefined!11711 lt!2157555))))

(assert (=> d!1698066 (= lt!2157555 e!3281350)))

(declare-fun c!914422 () Bool)

(assert (=> d!1698066 (= c!914422 e!3281349)))

(declare-fun res!2238119 () Bool)

(assert (=> d!1698066 (=> (not res!2238119) (not e!3281349))))

(assert (=> d!1698066 (= res!2238119 (matchR!7082 (regOne!30306 r!7292) Nil!60868))))

(assert (=> d!1698066 (validRegex!6633 (regOne!30306 r!7292))))

(assert (=> d!1698066 (= (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326) lt!2157555)))

(declare-fun b!5276754 () Bool)

(assert (=> b!5276754 (= e!3281348 (not (isDefined!11711 lt!2157555)))))

(assert (= (and d!1698066 res!2238119) b!5276748))

(assert (= (and d!1698066 c!914422) b!5276751))

(assert (= (and d!1698066 (not c!914422)) b!5276750))

(assert (= (and b!5276750 c!914423) b!5276749))

(assert (= (and b!5276750 (not c!914423)) b!5276752))

(assert (= (and d!1698066 res!2238118) b!5276756))

(assert (= (and b!5276756 res!2238120) b!5276755))

(assert (= (and b!5276755 res!2238117) b!5276753))

(assert (= (and d!1698066 (not res!2238116)) b!5276754))

(declare-fun m!6314900 () Bool)

(assert (=> b!5276755 m!6314900))

(declare-fun m!6314902 () Bool)

(assert (=> b!5276755 m!6314902))

(declare-fun m!6314904 () Bool)

(assert (=> d!1698066 m!6314904))

(declare-fun m!6314906 () Bool)

(assert (=> d!1698066 m!6314906))

(declare-fun m!6314908 () Bool)

(assert (=> d!1698066 m!6314908))

(assert (=> b!5276756 m!6314900))

(declare-fun m!6314910 () Bool)

(assert (=> b!5276756 m!6314910))

(assert (=> b!5276753 m!6314900))

(declare-fun m!6314912 () Bool)

(assert (=> b!5276753 m!6314912))

(declare-fun m!6314914 () Bool)

(assert (=> b!5276748 m!6314914))

(declare-fun m!6314916 () Bool)

(assert (=> b!5276752 m!6314916))

(assert (=> b!5276752 m!6314916))

(declare-fun m!6314918 () Bool)

(assert (=> b!5276752 m!6314918))

(declare-fun m!6314920 () Bool)

(assert (=> b!5276752 m!6314920))

(assert (=> b!5276752 m!6314916))

(declare-fun m!6314922 () Bool)

(assert (=> b!5276752 m!6314922))

(assert (=> b!5276754 m!6314904))

(assert (=> b!5275981 d!1698066))

(declare-fun d!1698068 () Bool)

(assert (=> d!1698068 (= (Exists!2078 lambda!266286) (choose!39377 lambda!266286))))

(declare-fun bs!1222343 () Bool)

(assert (= bs!1222343 d!1698068))

(declare-fun m!6314924 () Bool)

(assert (=> bs!1222343 m!6314924))

(assert (=> b!5275981 d!1698068))

(declare-fun bs!1222344 () Bool)

(declare-fun d!1698070 () Bool)

(assert (= bs!1222344 (and d!1698070 b!5275981)))

(declare-fun lambda!266365 () Int)

(assert (=> bs!1222344 (= lambda!266365 lambda!266286)))

(assert (=> bs!1222344 (not (= lambda!266365 lambda!266287))))

(declare-fun bs!1222345 () Bool)

(assert (= bs!1222345 (and d!1698070 b!5276621)))

(assert (=> bs!1222345 (not (= lambda!266365 lambda!266353))))

(declare-fun bs!1222346 () Bool)

(assert (= bs!1222346 (and d!1698070 b!5276627)))

(assert (=> bs!1222346 (not (= lambda!266365 lambda!266354))))

(assert (=> d!1698070 true))

(assert (=> d!1698070 true))

(assert (=> d!1698070 true))

(assert (=> d!1698070 (= (isDefined!11711 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326)) (Exists!2078 lambda!266365))))

(declare-fun lt!2157560 () Unit!153106)

(declare-fun choose!39378 (Regex!14897 Regex!14897 List!60992) Unit!153106)

(assert (=> d!1698070 (= lt!2157560 (choose!39378 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326))))

(assert (=> d!1698070 (validRegex!6633 (regOne!30306 r!7292))))

(assert (=> d!1698070 (= (lemmaFindConcatSeparationEquivalentToExists!1186 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326) lt!2157560)))

(declare-fun bs!1222347 () Bool)

(assert (= bs!1222347 d!1698070))

(assert (=> bs!1222347 m!6314908))

(declare-fun m!6314926 () Bool)

(assert (=> bs!1222347 m!6314926))

(assert (=> bs!1222347 m!6314236))

(assert (=> bs!1222347 m!6314238))

(declare-fun m!6314928 () Bool)

(assert (=> bs!1222347 m!6314928))

(assert (=> bs!1222347 m!6314236))

(assert (=> b!5275981 d!1698070))

(declare-fun bs!1222348 () Bool)

(declare-fun d!1698072 () Bool)

(assert (= bs!1222348 (and d!1698072 d!1698070)))

(declare-fun lambda!266370 () Int)

(assert (=> bs!1222348 (= lambda!266370 lambda!266365)))

(declare-fun bs!1222349 () Bool)

(assert (= bs!1222349 (and d!1698072 b!5276621)))

(assert (=> bs!1222349 (not (= lambda!266370 lambda!266353))))

(declare-fun bs!1222350 () Bool)

(assert (= bs!1222350 (and d!1698072 b!5275981)))

(assert (=> bs!1222350 (not (= lambda!266370 lambda!266287))))

(declare-fun bs!1222351 () Bool)

(assert (= bs!1222351 (and d!1698072 b!5276627)))

(assert (=> bs!1222351 (not (= lambda!266370 lambda!266354))))

(assert (=> bs!1222350 (= lambda!266370 lambda!266286)))

(assert (=> d!1698072 true))

(assert (=> d!1698072 true))

(assert (=> d!1698072 true))

(declare-fun lambda!266371 () Int)

(assert (=> bs!1222348 (not (= lambda!266371 lambda!266365))))

(assert (=> bs!1222349 (not (= lambda!266371 lambda!266353))))

(assert (=> bs!1222350 (= lambda!266371 lambda!266287)))

(assert (=> bs!1222351 (= lambda!266371 lambda!266354)))

(assert (=> bs!1222350 (not (= lambda!266371 lambda!266286))))

(declare-fun bs!1222352 () Bool)

(assert (= bs!1222352 d!1698072))

(assert (=> bs!1222352 (not (= lambda!266371 lambda!266370))))

(assert (=> d!1698072 true))

(assert (=> d!1698072 true))

(assert (=> d!1698072 true))

(assert (=> d!1698072 (= (Exists!2078 lambda!266370) (Exists!2078 lambda!266371))))

(declare-fun lt!2157563 () Unit!153106)

(declare-fun choose!39379 (Regex!14897 Regex!14897 List!60992) Unit!153106)

(assert (=> d!1698072 (= lt!2157563 (choose!39379 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326))))

(assert (=> d!1698072 (validRegex!6633 (regOne!30306 r!7292))))

(assert (=> d!1698072 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!732 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326) lt!2157563)))

(declare-fun m!6314930 () Bool)

(assert (=> bs!1222352 m!6314930))

(declare-fun m!6314932 () Bool)

(assert (=> bs!1222352 m!6314932))

(declare-fun m!6314934 () Bool)

(assert (=> bs!1222352 m!6314934))

(assert (=> bs!1222352 m!6314908))

(assert (=> b!5275981 d!1698072))

(declare-fun d!1698074 () Bool)

(declare-fun isEmpty!32824 (Option!15008) Bool)

(assert (=> d!1698074 (= (isDefined!11711 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326)) (not (isEmpty!32824 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326))))))

(declare-fun bs!1222353 () Bool)

(assert (= bs!1222353 d!1698074))

(assert (=> bs!1222353 m!6314236))

(declare-fun m!6314936 () Bool)

(assert (=> bs!1222353 m!6314936))

(assert (=> b!5275981 d!1698074))

(declare-fun bs!1222354 () Bool)

(declare-fun d!1698076 () Bool)

(assert (= bs!1222354 (and d!1698076 b!5275986)))

(declare-fun lambda!266374 () Int)

(assert (=> bs!1222354 (= lambda!266374 lambda!266289)))

(declare-fun bs!1222355 () Bool)

(assert (= bs!1222355 (and d!1698076 d!1697978)))

(assert (=> bs!1222355 (= lambda!266374 lambda!266336)))

(declare-fun bs!1222356 () Bool)

(assert (= bs!1222356 (and d!1698076 d!1698046)))

(assert (=> bs!1222356 (= lambda!266374 lambda!266360)))

(declare-fun bs!1222357 () Bool)

(assert (= bs!1222357 (and d!1698076 d!1698050)))

(assert (=> bs!1222357 (= lambda!266374 lambda!266361)))

(declare-fun b!5276789 () Bool)

(declare-fun e!3281374 () Regex!14897)

(declare-fun e!3281373 () Regex!14897)

(assert (=> b!5276789 (= e!3281374 e!3281373)))

(declare-fun c!914434 () Bool)

(assert (=> b!5276789 (= c!914434 ((_ is Cons!60866) (unfocusZipperList!339 zl!343)))))

(declare-fun b!5276790 () Bool)

(declare-fun e!3281371 () Bool)

(declare-fun lt!2157566 () Regex!14897)

(declare-fun isEmptyLang!839 (Regex!14897) Bool)

(assert (=> b!5276790 (= e!3281371 (isEmptyLang!839 lt!2157566))))

(declare-fun b!5276791 () Bool)

(declare-fun e!3281375 () Bool)

(declare-fun isUnion!271 (Regex!14897) Bool)

(assert (=> b!5276791 (= e!3281375 (isUnion!271 lt!2157566))))

(declare-fun b!5276792 () Bool)

(assert (=> b!5276792 (= e!3281373 (Union!14897 (h!67314 (unfocusZipperList!339 zl!343)) (generalisedUnion!826 (t!374189 (unfocusZipperList!339 zl!343)))))))

(declare-fun b!5276793 () Bool)

(declare-fun e!3281372 () Bool)

(assert (=> b!5276793 (= e!3281372 (isEmpty!32819 (t!374189 (unfocusZipperList!339 zl!343))))))

(declare-fun b!5276794 () Bool)

(assert (=> b!5276794 (= e!3281373 EmptyLang!14897)))

(declare-fun b!5276795 () Bool)

(assert (=> b!5276795 (= e!3281371 e!3281375)))

(declare-fun c!914432 () Bool)

(assert (=> b!5276795 (= c!914432 (isEmpty!32819 (tail!10408 (unfocusZipperList!339 zl!343))))))

(declare-fun b!5276796 () Bool)

(assert (=> b!5276796 (= e!3281374 (h!67314 (unfocusZipperList!339 zl!343)))))

(declare-fun e!3281376 () Bool)

(assert (=> d!1698076 e!3281376))

(declare-fun res!2238137 () Bool)

(assert (=> d!1698076 (=> (not res!2238137) (not e!3281376))))

(assert (=> d!1698076 (= res!2238137 (validRegex!6633 lt!2157566))))

(assert (=> d!1698076 (= lt!2157566 e!3281374)))

(declare-fun c!914435 () Bool)

(assert (=> d!1698076 (= c!914435 e!3281372)))

(declare-fun res!2238138 () Bool)

(assert (=> d!1698076 (=> (not res!2238138) (not e!3281372))))

(assert (=> d!1698076 (= res!2238138 ((_ is Cons!60866) (unfocusZipperList!339 zl!343)))))

(assert (=> d!1698076 (forall!14305 (unfocusZipperList!339 zl!343) lambda!266374)))

(assert (=> d!1698076 (= (generalisedUnion!826 (unfocusZipperList!339 zl!343)) lt!2157566)))

(declare-fun b!5276797 () Bool)

(assert (=> b!5276797 (= e!3281375 (= lt!2157566 (head!11311 (unfocusZipperList!339 zl!343))))))

(declare-fun b!5276798 () Bool)

(assert (=> b!5276798 (= e!3281376 e!3281371)))

(declare-fun c!914433 () Bool)

(assert (=> b!5276798 (= c!914433 (isEmpty!32819 (unfocusZipperList!339 zl!343)))))

(assert (= (and d!1698076 res!2238138) b!5276793))

(assert (= (and d!1698076 c!914435) b!5276796))

(assert (= (and d!1698076 (not c!914435)) b!5276789))

(assert (= (and b!5276789 c!914434) b!5276792))

(assert (= (and b!5276789 (not c!914434)) b!5276794))

(assert (= (and d!1698076 res!2238137) b!5276798))

(assert (= (and b!5276798 c!914433) b!5276790))

(assert (= (and b!5276798 (not c!914433)) b!5276795))

(assert (= (and b!5276795 c!914432) b!5276797))

(assert (= (and b!5276795 (not c!914432)) b!5276791))

(declare-fun m!6314938 () Bool)

(assert (=> b!5276791 m!6314938))

(declare-fun m!6314940 () Bool)

(assert (=> d!1698076 m!6314940))

(assert (=> d!1698076 m!6314232))

(declare-fun m!6314942 () Bool)

(assert (=> d!1698076 m!6314942))

(assert (=> b!5276798 m!6314232))

(declare-fun m!6314944 () Bool)

(assert (=> b!5276798 m!6314944))

(assert (=> b!5276797 m!6314232))

(declare-fun m!6314946 () Bool)

(assert (=> b!5276797 m!6314946))

(declare-fun m!6314948 () Bool)

(assert (=> b!5276793 m!6314948))

(declare-fun m!6314950 () Bool)

(assert (=> b!5276790 m!6314950))

(assert (=> b!5276795 m!6314232))

(declare-fun m!6314952 () Bool)

(assert (=> b!5276795 m!6314952))

(assert (=> b!5276795 m!6314952))

(declare-fun m!6314954 () Bool)

(assert (=> b!5276795 m!6314954))

(declare-fun m!6314956 () Bool)

(assert (=> b!5276792 m!6314956))

(assert (=> b!5275961 d!1698076))

(declare-fun bs!1222358 () Bool)

(declare-fun d!1698078 () Bool)

(assert (= bs!1222358 (and d!1698078 b!5275986)))

(declare-fun lambda!266377 () Int)

(assert (=> bs!1222358 (= lambda!266377 lambda!266289)))

(declare-fun bs!1222359 () Bool)

(assert (= bs!1222359 (and d!1698078 d!1698076)))

(assert (=> bs!1222359 (= lambda!266377 lambda!266374)))

(declare-fun bs!1222360 () Bool)

(assert (= bs!1222360 (and d!1698078 d!1698046)))

(assert (=> bs!1222360 (= lambda!266377 lambda!266360)))

(declare-fun bs!1222361 () Bool)

(assert (= bs!1222361 (and d!1698078 d!1697978)))

(assert (=> bs!1222361 (= lambda!266377 lambda!266336)))

(declare-fun bs!1222362 () Bool)

(assert (= bs!1222362 (and d!1698078 d!1698050)))

(assert (=> bs!1222362 (= lambda!266377 lambda!266361)))

(declare-fun lt!2157569 () List!60990)

(assert (=> d!1698078 (forall!14305 lt!2157569 lambda!266377)))

(declare-fun e!3281379 () List!60990)

(assert (=> d!1698078 (= lt!2157569 e!3281379)))

(declare-fun c!914438 () Bool)

(assert (=> d!1698078 (= c!914438 ((_ is Cons!60867) zl!343))))

(assert (=> d!1698078 (= (unfocusZipperList!339 zl!343) lt!2157569)))

(declare-fun b!5276803 () Bool)

(assert (=> b!5276803 (= e!3281379 (Cons!60866 (generalisedConcat!566 (exprs!4781 (h!67315 zl!343))) (unfocusZipperList!339 (t!374190 zl!343))))))

(declare-fun b!5276804 () Bool)

(assert (=> b!5276804 (= e!3281379 Nil!60866)))

(assert (= (and d!1698078 c!914438) b!5276803))

(assert (= (and d!1698078 (not c!914438)) b!5276804))

(declare-fun m!6314958 () Bool)

(assert (=> d!1698078 m!6314958))

(assert (=> b!5276803 m!6314300))

(declare-fun m!6314960 () Bool)

(assert (=> b!5276803 m!6314960))

(assert (=> b!5275961 d!1698078))

(declare-fun d!1698080 () Bool)

(declare-fun c!914439 () Bool)

(assert (=> d!1698080 (= c!914439 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3281380 () Bool)

(assert (=> d!1698080 (= (matchZipper!1141 lt!2157407 (t!374191 s!2326)) e!3281380)))

(declare-fun b!5276805 () Bool)

(assert (=> b!5276805 (= e!3281380 (nullableZipper!1296 lt!2157407))))

(declare-fun b!5276806 () Bool)

(assert (=> b!5276806 (= e!3281380 (matchZipper!1141 (derivationStepZipper!1140 lt!2157407 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698080 c!914439) b!5276805))

(assert (= (and d!1698080 (not c!914439)) b!5276806))

(assert (=> d!1698080 m!6314584))

(declare-fun m!6314962 () Bool)

(assert (=> b!5276805 m!6314962))

(assert (=> b!5276806 m!6314588))

(assert (=> b!5276806 m!6314588))

(declare-fun m!6314964 () Bool)

(assert (=> b!5276806 m!6314964))

(assert (=> b!5276806 m!6314592))

(assert (=> b!5276806 m!6314964))

(assert (=> b!5276806 m!6314592))

(declare-fun m!6314966 () Bool)

(assert (=> b!5276806 m!6314966))

(assert (=> b!5275980 d!1698080))

(declare-fun d!1698082 () Bool)

(declare-fun e!3281383 () Bool)

(assert (=> d!1698082 e!3281383))

(declare-fun res!2238141 () Bool)

(assert (=> d!1698082 (=> (not res!2238141) (not e!3281383))))

(declare-fun lt!2157572 () List!60991)

(declare-fun noDuplicate!1251 (List!60991) Bool)

(assert (=> d!1698082 (= res!2238141 (noDuplicate!1251 lt!2157572))))

(declare-fun choose!39380 ((InoxSet Context!8562)) List!60991)

(assert (=> d!1698082 (= lt!2157572 (choose!39380 z!1189))))

(assert (=> d!1698082 (= (toList!8681 z!1189) lt!2157572)))

(declare-fun b!5276809 () Bool)

(declare-fun content!10833 (List!60991) (InoxSet Context!8562))

(assert (=> b!5276809 (= e!3281383 (= (content!10833 lt!2157572) z!1189))))

(assert (= (and d!1698082 res!2238141) b!5276809))

(declare-fun m!6314968 () Bool)

(assert (=> d!1698082 m!6314968))

(declare-fun m!6314970 () Bool)

(assert (=> d!1698082 m!6314970))

(declare-fun m!6314972 () Bool)

(assert (=> b!5276809 m!6314972))

(assert (=> b!5275960 d!1698082))

(declare-fun b!5276814 () Bool)

(declare-fun e!3281386 () Bool)

(declare-fun tp!1474410 () Bool)

(assert (=> b!5276814 (= e!3281386 (and tp_is_empty!39047 tp!1474410))))

(assert (=> b!5275987 (= tp!1474340 e!3281386)))

(assert (= (and b!5275987 ((_ is Cons!60868) (t!374191 s!2326))) b!5276814))

(declare-fun b!5276828 () Bool)

(declare-fun e!3281389 () Bool)

(declare-fun tp!1474424 () Bool)

(declare-fun tp!1474421 () Bool)

(assert (=> b!5276828 (= e!3281389 (and tp!1474424 tp!1474421))))

(assert (=> b!5275962 (= tp!1474348 e!3281389)))

(declare-fun b!5276827 () Bool)

(declare-fun tp!1474425 () Bool)

(assert (=> b!5276827 (= e!3281389 tp!1474425)))

(declare-fun b!5276826 () Bool)

(declare-fun tp!1474423 () Bool)

(declare-fun tp!1474422 () Bool)

(assert (=> b!5276826 (= e!3281389 (and tp!1474423 tp!1474422))))

(declare-fun b!5276825 () Bool)

(assert (=> b!5276825 (= e!3281389 tp_is_empty!39047)))

(assert (= (and b!5275962 ((_ is ElementMatch!14897) (regOne!30306 r!7292))) b!5276825))

(assert (= (and b!5275962 ((_ is Concat!23742) (regOne!30306 r!7292))) b!5276826))

(assert (= (and b!5275962 ((_ is Star!14897) (regOne!30306 r!7292))) b!5276827))

(assert (= (and b!5275962 ((_ is Union!14897) (regOne!30306 r!7292))) b!5276828))

(declare-fun b!5276832 () Bool)

(declare-fun e!3281390 () Bool)

(declare-fun tp!1474429 () Bool)

(declare-fun tp!1474426 () Bool)

(assert (=> b!5276832 (= e!3281390 (and tp!1474429 tp!1474426))))

(assert (=> b!5275962 (= tp!1474344 e!3281390)))

(declare-fun b!5276831 () Bool)

(declare-fun tp!1474430 () Bool)

(assert (=> b!5276831 (= e!3281390 tp!1474430)))

(declare-fun b!5276830 () Bool)

(declare-fun tp!1474428 () Bool)

(declare-fun tp!1474427 () Bool)

(assert (=> b!5276830 (= e!3281390 (and tp!1474428 tp!1474427))))

(declare-fun b!5276829 () Bool)

(assert (=> b!5276829 (= e!3281390 tp_is_empty!39047)))

(assert (= (and b!5275962 ((_ is ElementMatch!14897) (regTwo!30306 r!7292))) b!5276829))

(assert (= (and b!5275962 ((_ is Concat!23742) (regTwo!30306 r!7292))) b!5276830))

(assert (= (and b!5275962 ((_ is Star!14897) (regTwo!30306 r!7292))) b!5276831))

(assert (= (and b!5275962 ((_ is Union!14897) (regTwo!30306 r!7292))) b!5276832))

(declare-fun b!5276837 () Bool)

(declare-fun e!3281393 () Bool)

(declare-fun tp!1474435 () Bool)

(declare-fun tp!1474436 () Bool)

(assert (=> b!5276837 (= e!3281393 (and tp!1474435 tp!1474436))))

(assert (=> b!5275976 (= tp!1474349 e!3281393)))

(assert (= (and b!5275976 ((_ is Cons!60866) (exprs!4781 setElem!33797))) b!5276837))

(declare-fun b!5276845 () Bool)

(declare-fun e!3281399 () Bool)

(declare-fun tp!1474441 () Bool)

(assert (=> b!5276845 (= e!3281399 tp!1474441)))

(declare-fun tp!1474442 () Bool)

(declare-fun b!5276844 () Bool)

(declare-fun e!3281398 () Bool)

(assert (=> b!5276844 (= e!3281398 (and (inv!80489 (h!67315 (t!374190 zl!343))) e!3281399 tp!1474442))))

(assert (=> b!5275966 (= tp!1474342 e!3281398)))

(assert (= b!5276844 b!5276845))

(assert (= (and b!5275966 ((_ is Cons!60867) (t!374190 zl!343))) b!5276844))

(declare-fun m!6314974 () Bool)

(assert (=> b!5276844 m!6314974))

(declare-fun b!5276849 () Bool)

(declare-fun e!3281400 () Bool)

(declare-fun tp!1474446 () Bool)

(declare-fun tp!1474443 () Bool)

(assert (=> b!5276849 (= e!3281400 (and tp!1474446 tp!1474443))))

(assert (=> b!5275991 (= tp!1474346 e!3281400)))

(declare-fun b!5276848 () Bool)

(declare-fun tp!1474447 () Bool)

(assert (=> b!5276848 (= e!3281400 tp!1474447)))

(declare-fun b!5276847 () Bool)

(declare-fun tp!1474445 () Bool)

(declare-fun tp!1474444 () Bool)

(assert (=> b!5276847 (= e!3281400 (and tp!1474445 tp!1474444))))

(declare-fun b!5276846 () Bool)

(assert (=> b!5276846 (= e!3281400 tp_is_empty!39047)))

(assert (= (and b!5275991 ((_ is ElementMatch!14897) (regOne!30307 r!7292))) b!5276846))

(assert (= (and b!5275991 ((_ is Concat!23742) (regOne!30307 r!7292))) b!5276847))

(assert (= (and b!5275991 ((_ is Star!14897) (regOne!30307 r!7292))) b!5276848))

(assert (= (and b!5275991 ((_ is Union!14897) (regOne!30307 r!7292))) b!5276849))

(declare-fun b!5276853 () Bool)

(declare-fun e!3281401 () Bool)

(declare-fun tp!1474451 () Bool)

(declare-fun tp!1474448 () Bool)

(assert (=> b!5276853 (= e!3281401 (and tp!1474451 tp!1474448))))

(assert (=> b!5275991 (= tp!1474341 e!3281401)))

(declare-fun b!5276852 () Bool)

(declare-fun tp!1474452 () Bool)

(assert (=> b!5276852 (= e!3281401 tp!1474452)))

(declare-fun b!5276851 () Bool)

(declare-fun tp!1474450 () Bool)

(declare-fun tp!1474449 () Bool)

(assert (=> b!5276851 (= e!3281401 (and tp!1474450 tp!1474449))))

(declare-fun b!5276850 () Bool)

(assert (=> b!5276850 (= e!3281401 tp_is_empty!39047)))

(assert (= (and b!5275991 ((_ is ElementMatch!14897) (regTwo!30307 r!7292))) b!5276850))

(assert (= (and b!5275991 ((_ is Concat!23742) (regTwo!30307 r!7292))) b!5276851))

(assert (= (and b!5275991 ((_ is Star!14897) (regTwo!30307 r!7292))) b!5276852))

(assert (= (and b!5275991 ((_ is Union!14897) (regTwo!30307 r!7292))) b!5276853))

(declare-fun condSetEmpty!33803 () Bool)

(assert (=> setNonEmpty!33797 (= condSetEmpty!33803 (= setRest!33797 ((as const (Array Context!8562 Bool)) false)))))

(declare-fun setRes!33803 () Bool)

(assert (=> setNonEmpty!33797 (= tp!1474347 setRes!33803)))

(declare-fun setIsEmpty!33803 () Bool)

(assert (=> setIsEmpty!33803 setRes!33803))

(declare-fun tp!1474458 () Bool)

(declare-fun setNonEmpty!33803 () Bool)

(declare-fun e!3281404 () Bool)

(declare-fun setElem!33803 () Context!8562)

(assert (=> setNonEmpty!33803 (= setRes!33803 (and tp!1474458 (inv!80489 setElem!33803) e!3281404))))

(declare-fun setRest!33803 () (InoxSet Context!8562))

(assert (=> setNonEmpty!33803 (= setRest!33797 ((_ map or) (store ((as const (Array Context!8562 Bool)) false) setElem!33803 true) setRest!33803))))

(declare-fun b!5276858 () Bool)

(declare-fun tp!1474457 () Bool)

(assert (=> b!5276858 (= e!3281404 tp!1474457)))

(assert (= (and setNonEmpty!33797 condSetEmpty!33803) setIsEmpty!33803))

(assert (= (and setNonEmpty!33797 (not condSetEmpty!33803)) setNonEmpty!33803))

(assert (= setNonEmpty!33803 b!5276858))

(declare-fun m!6314976 () Bool)

(assert (=> setNonEmpty!33803 m!6314976))

(declare-fun b!5276859 () Bool)

(declare-fun e!3281405 () Bool)

(declare-fun tp!1474459 () Bool)

(declare-fun tp!1474460 () Bool)

(assert (=> b!5276859 (= e!3281405 (and tp!1474459 tp!1474460))))

(assert (=> b!5275985 (= tp!1474345 e!3281405)))

(assert (= (and b!5275985 ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343)))) b!5276859))

(declare-fun b!5276863 () Bool)

(declare-fun e!3281406 () Bool)

(declare-fun tp!1474464 () Bool)

(declare-fun tp!1474461 () Bool)

(assert (=> b!5276863 (= e!3281406 (and tp!1474464 tp!1474461))))

(assert (=> b!5275990 (= tp!1474343 e!3281406)))

(declare-fun b!5276862 () Bool)

(declare-fun tp!1474465 () Bool)

(assert (=> b!5276862 (= e!3281406 tp!1474465)))

(declare-fun b!5276861 () Bool)

(declare-fun tp!1474463 () Bool)

(declare-fun tp!1474462 () Bool)

(assert (=> b!5276861 (= e!3281406 (and tp!1474463 tp!1474462))))

(declare-fun b!5276860 () Bool)

(assert (=> b!5276860 (= e!3281406 tp_is_empty!39047)))

(assert (= (and b!5275990 ((_ is ElementMatch!14897) (reg!15226 r!7292))) b!5276860))

(assert (= (and b!5275990 ((_ is Concat!23742) (reg!15226 r!7292))) b!5276861))

(assert (= (and b!5275990 ((_ is Star!14897) (reg!15226 r!7292))) b!5276862))

(assert (= (and b!5275990 ((_ is Union!14897) (reg!15226 r!7292))) b!5276863))

(declare-fun b_lambda!203533 () Bool)

(assert (= b_lambda!203529 (or b!5275986 b_lambda!203533)))

(declare-fun bs!1222363 () Bool)

(declare-fun d!1698084 () Bool)

(assert (= bs!1222363 (and d!1698084 b!5275986)))

(assert (=> bs!1222363 (= (dynLambda!24057 lambda!266289 (h!67314 lt!2157426)) (validRegex!6633 (h!67314 lt!2157426)))))

(declare-fun m!6314978 () Bool)

(assert (=> bs!1222363 m!6314978))

(assert (=> b!5276715 d!1698084))

(declare-fun b_lambda!203535 () Bool)

(assert (= b_lambda!203513 (or b!5275973 b_lambda!203535)))

(declare-fun bs!1222364 () Bool)

(declare-fun d!1698086 () Bool)

(assert (= bs!1222364 (and d!1698086 b!5275973)))

(assert (=> bs!1222364 (= (dynLambda!24055 lambda!266288 (h!67315 zl!343)) (derivationStepZipperUp!269 (h!67315 zl!343) (h!67316 s!2326)))))

(assert (=> bs!1222364 m!6314268))

(assert (=> d!1697956 d!1698086))

(declare-fun b_lambda!203537 () Bool)

(assert (= b_lambda!203531 (or b!5275973 b_lambda!203537)))

(declare-fun bs!1222365 () Bool)

(declare-fun d!1698088 () Bool)

(assert (= bs!1222365 (and d!1698088 b!5275973)))

(assert (=> bs!1222365 (= (dynLambda!24055 lambda!266288 lt!2157408) (derivationStepZipperUp!269 lt!2157408 (h!67316 s!2326)))))

(assert (=> bs!1222365 m!6314260))

(assert (=> d!1698058 d!1698088))

(declare-fun b_lambda!203539 () Bool)

(assert (= b_lambda!203515 (or b!5275973 b_lambda!203539)))

(declare-fun bs!1222366 () Bool)

(declare-fun d!1698090 () Bool)

(assert (= bs!1222366 (and d!1698090 b!5275973)))

(assert (=> bs!1222366 (= (dynLambda!24055 lambda!266288 lt!2157404) (derivationStepZipperUp!269 lt!2157404 (h!67316 s!2326)))))

(assert (=> bs!1222366 m!6314256))

(assert (=> d!1697974 d!1698090))

(check-sat (not b!5276378) (not b!5276678) tp_is_empty!39047 (not b!5276250) (not bm!375450) (not bs!1222365) (not bm!375420) (not d!1697972) (not b!5276570) (not bm!375449) (not b!5276408) (not b!5276827) (not b!5276587) (not b!5276526) (not b_lambda!203537) (not d!1698066) (not b!5276239) (not d!1697966) (not b!5276837) (not b!5276397) (not b!5276530) (not b!5276844) (not d!1698060) (not b_lambda!203539) (not b!5276809) (not d!1698046) (not b!5276754) (not d!1697942) (not b!5276320) (not d!1698026) (not bm!375463) (not bm!375453) (not b!5276753) (not b!5276527) (not b!5276321) (not bm!375434) (not bm!375460) (not bm!375437) (not b!5276795) (not b!5276626) (not b!5276437) (not b!5276814) (not b!5276630) (not b!5276792) (not b!5276826) (not d!1698030) (not b!5276452) (not b!5276704) (not b!5276373) (not b_lambda!203535) (not b!5276582) (not b!5276716) (not b!5276379) (not b!5276679) (not d!1698074) (not b!5276853) (not bm!375443) (not b!5276862) (not b!5276433) (not b!5276793) (not b!5276572) (not b!5276435) (not b!5276798) (not b!5276725) (not b!5276852) (not d!1697976) (not b!5276531) (not bm!375410) (not setNonEmpty!33803) (not bm!375441) (not b!5276848) (not b!5276863) (not b!5276707) (not b!5276805) (not b!5276661) (not b!5276374) (not b!5276580) (not d!1698064) (not b!5276803) (not b!5276322) (not d!1698044) (not bm!375444) (not b!5276756) (not d!1698076) (not b!5276323) (not b!5276669) (not b!5276585) (not d!1697956) (not b!5276522) (not b!5276668) (not d!1697974) (not d!1698056) (not b!5276851) (not b!5276723) (not bm!375462) (not b!5276748) (not b!5276675) (not b!5276564) (not b!5276831) (not b!5276438) (not b!5276434) (not bm!375412) (not b!5276721) (not d!1697940) (not b!5276673) (not bs!1222364) (not d!1698078) (not d!1697978) (not b!5276845) (not b!5276791) (not d!1698038) (not b!5276665) (not d!1698070) (not d!1697946) (not b!5276830) (not d!1698028) (not d!1697968) (not d!1698072) (not d!1698068) (not b_lambda!203533) (not b!5276677) (not bs!1222363) (not b!5276672) (not d!1698058) (not b!5276436) (not bm!375416) (not d!1697916) (not b!5276859) (not bm!375418) (not d!1698034) (not d!1698042) (not b!5276797) (not b!5276676) (not b!5276755) (not d!1698036) (not b!5276409) (not d!1697944) (not bm!375435) (not b!5276849) (not bs!1222366) (not d!1697948) (not b!5276858) (not d!1698082) (not b!5276806) (not b!5276828) (not b!5276861) (not b!5276832) (not b!5276790) (not b!5276283) (not d!1698050) (not b!5276708) (not b!5276664) (not b!5276525) (not b!5276752) (not b!5276565) (not b!5276726) (not bm!375414) (not d!1698012) (not b!5276524) (not b!5276847) (not b!5276674) (not d!1698080) (not bm!375439) (not d!1698032))
(check-sat)
(get-model)

(declare-fun d!1698264 () Bool)

(assert (=> d!1698264 (= (nullable!5066 (h!67314 (exprs!4781 lt!2157404))) (nullableFct!1448 (h!67314 (exprs!4781 lt!2157404))))))

(declare-fun bs!1222511 () Bool)

(assert (= bs!1222511 d!1698264))

(declare-fun m!6315266 () Bool)

(assert (=> bs!1222511 m!6315266))

(assert (=> b!5276437 d!1698264))

(declare-fun d!1698268 () Bool)

(assert (=> d!1698268 true))

(declare-fun setRes!33811 () Bool)

(assert (=> d!1698268 setRes!33811))

(declare-fun condSetEmpty!33811 () Bool)

(declare-fun res!2238238 () (InoxSet Context!8562))

(assert (=> d!1698268 (= condSetEmpty!33811 (= res!2238238 ((as const (Array Context!8562 Bool)) false)))))

(assert (=> d!1698268 (= (choose!39373 lt!2157405 lambda!266288) res!2238238)))

(declare-fun setIsEmpty!33811 () Bool)

(assert (=> setIsEmpty!33811 setRes!33811))

(declare-fun setElem!33811 () Context!8562)

(declare-fun e!3281562 () Bool)

(declare-fun setNonEmpty!33811 () Bool)

(declare-fun tp!1474486 () Bool)

(assert (=> setNonEmpty!33811 (= setRes!33811 (and tp!1474486 (inv!80489 setElem!33811) e!3281562))))

(declare-fun setRest!33811 () (InoxSet Context!8562))

(assert (=> setNonEmpty!33811 (= res!2238238 ((_ map or) (store ((as const (Array Context!8562 Bool)) false) setElem!33811 true) setRest!33811))))

(declare-fun b!5277097 () Bool)

(declare-fun tp!1474487 () Bool)

(assert (=> b!5277097 (= e!3281562 tp!1474487)))

(assert (= (and d!1698268 condSetEmpty!33811) setIsEmpty!33811))

(assert (= (and d!1698268 (not condSetEmpty!33811)) setNonEmpty!33811))

(assert (= setNonEmpty!33811 b!5277097))

(declare-fun m!6315268 () Bool)

(assert (=> setNonEmpty!33811 m!6315268))

(assert (=> d!1698060 d!1698268))

(declare-fun d!1698270 () Bool)

(assert (=> d!1698270 (= ($colon$colon!1346 (exprs!4781 lt!2157412) (ite (or c!914321 c!914318) (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (h!67314 (exprs!4781 (h!67315 zl!343))))) (Cons!60866 (ite (or c!914321 c!914318) (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (h!67314 (exprs!4781 (h!67315 zl!343)))) (exprs!4781 lt!2157412)))))

(assert (=> bm!375437 d!1698270))

(declare-fun bs!1222525 () Bool)

(declare-fun b!5277098 () Bool)

(assert (= bs!1222525 (and b!5277098 b!5276580)))

(declare-fun lambda!266409 () Int)

(assert (=> bs!1222525 (= lambda!266409 lambda!266343)))

(declare-fun bs!1222526 () Bool)

(assert (= bs!1222526 (and b!5277098 b!5276585)))

(assert (=> bs!1222526 (= lambda!266409 lambda!266346)))

(declare-fun lt!2157603 () Int)

(declare-fun lambda!266410 () Int)

(assert (=> bs!1222525 (= (= lt!2157603 lt!2157528) (= lambda!266410 lambda!266344))))

(declare-fun bs!1222527 () Bool)

(assert (= bs!1222527 (and b!5277098 b!5276582)))

(assert (=> bs!1222527 (= (= lt!2157603 lt!2157526) (= lambda!266410 lambda!266345))))

(assert (=> bs!1222526 (= (= lt!2157603 lt!2157532) (= lambda!266410 lambda!266347))))

(declare-fun bs!1222528 () Bool)

(assert (= bs!1222528 (and b!5277098 b!5276587)))

(assert (=> bs!1222528 (= (= lt!2157603 lt!2157530) (= lambda!266410 lambda!266348))))

(assert (=> b!5277098 true))

(declare-fun bs!1222529 () Bool)

(declare-fun b!5277100 () Bool)

(assert (= bs!1222529 (and b!5277100 b!5277098)))

(declare-fun lt!2157601 () Int)

(declare-fun lambda!266411 () Int)

(assert (=> bs!1222529 (= (= lt!2157601 lt!2157603) (= lambda!266411 lambda!266410))))

(declare-fun bs!1222530 () Bool)

(assert (= bs!1222530 (and b!5277100 b!5276580)))

(assert (=> bs!1222530 (= (= lt!2157601 lt!2157528) (= lambda!266411 lambda!266344))))

(declare-fun bs!1222531 () Bool)

(assert (= bs!1222531 (and b!5277100 b!5276582)))

(assert (=> bs!1222531 (= (= lt!2157601 lt!2157526) (= lambda!266411 lambda!266345))))

(declare-fun bs!1222532 () Bool)

(assert (= bs!1222532 (and b!5277100 b!5276585)))

(assert (=> bs!1222532 (= (= lt!2157601 lt!2157532) (= lambda!266411 lambda!266347))))

(declare-fun bs!1222533 () Bool)

(assert (= bs!1222533 (and b!5277100 b!5276587)))

(assert (=> bs!1222533 (= (= lt!2157601 lt!2157530) (= lambda!266411 lambda!266348))))

(assert (=> b!5277100 true))

(declare-fun d!1698272 () Bool)

(declare-fun e!3281564 () Bool)

(assert (=> d!1698272 e!3281564))

(declare-fun res!2238239 () Bool)

(assert (=> d!1698272 (=> (not res!2238239) (not e!3281564))))

(assert (=> d!1698272 (= res!2238239 (>= lt!2157601 0))))

(declare-fun e!3281563 () Int)

(assert (=> d!1698272 (= lt!2157601 e!3281563)))

(declare-fun c!914511 () Bool)

(assert (=> d!1698272 (= c!914511 ((_ is Cons!60867) (t!374190 lt!2157429)))))

(assert (=> d!1698272 (= (zipperDepth!14 (t!374190 lt!2157429)) lt!2157601)))

(assert (=> b!5277098 (= e!3281563 lt!2157603)))

(assert (=> b!5277098 (= lt!2157603 (maxBigInt!0 (contextDepth!8 (h!67315 (t!374190 lt!2157429))) (zipperDepth!14 (t!374190 (t!374190 lt!2157429)))))))

(declare-fun lt!2157602 () Unit!153106)

(assert (=> b!5277098 (= lt!2157602 (lemmaForallContextDepthBiggerThanTransitive!2 (t!374190 (t!374190 lt!2157429)) lt!2157603 (zipperDepth!14 (t!374190 (t!374190 lt!2157429))) lambda!266409))))

(assert (=> b!5277098 (forall!14307 (t!374190 (t!374190 lt!2157429)) lambda!266410)))

(declare-fun lt!2157604 () Unit!153106)

(assert (=> b!5277098 (= lt!2157604 lt!2157602)))

(declare-fun b!5277099 () Bool)

(assert (=> b!5277099 (= e!3281563 0)))

(assert (=> b!5277100 (= e!3281564 (forall!14307 (t!374190 lt!2157429) lambda!266411))))

(assert (= (and d!1698272 c!914511) b!5277098))

(assert (= (and d!1698272 (not c!914511)) b!5277099))

(assert (= (and d!1698272 res!2238239) b!5277100))

(declare-fun m!6315276 () Bool)

(assert (=> b!5277098 m!6315276))

(declare-fun m!6315278 () Bool)

(assert (=> b!5277098 m!6315278))

(declare-fun m!6315280 () Bool)

(assert (=> b!5277098 m!6315280))

(assert (=> b!5277098 m!6315276))

(declare-fun m!6315282 () Bool)

(assert (=> b!5277098 m!6315282))

(assert (=> b!5277098 m!6315278))

(assert (=> b!5277098 m!6315278))

(declare-fun m!6315284 () Bool)

(assert (=> b!5277098 m!6315284))

(declare-fun m!6315286 () Bool)

(assert (=> b!5277100 m!6315286))

(assert (=> b!5276580 d!1698272))

(declare-fun bs!1222544 () Bool)

(declare-fun d!1698278 () Bool)

(assert (= bs!1222544 (and d!1698278 b!5277098)))

(declare-fun lambda!266415 () Int)

(assert (=> bs!1222544 (not (= lambda!266415 lambda!266410))))

(declare-fun bs!1222545 () Bool)

(assert (= bs!1222545 (and d!1698278 b!5276580)))

(assert (=> bs!1222545 (not (= lambda!266415 lambda!266344))))

(declare-fun bs!1222546 () Bool)

(assert (= bs!1222546 (and d!1698278 b!5276582)))

(assert (=> bs!1222546 (not (= lambda!266415 lambda!266345))))

(declare-fun bs!1222547 () Bool)

(assert (= bs!1222547 (and d!1698278 b!5277100)))

(assert (=> bs!1222547 (not (= lambda!266415 lambda!266411))))

(declare-fun bs!1222548 () Bool)

(assert (= bs!1222548 (and d!1698278 b!5276585)))

(assert (=> bs!1222548 (not (= lambda!266415 lambda!266347))))

(declare-fun bs!1222549 () Bool)

(assert (= bs!1222549 (and d!1698278 b!5276587)))

(assert (=> bs!1222549 (not (= lambda!266415 lambda!266348))))

(assert (=> d!1698278 true))

(assert (=> d!1698278 true))

(declare-fun order!27057 () Int)

(declare-fun order!27055 () Int)

(declare-fun dynLambda!24061 (Int Int) Int)

(declare-fun dynLambda!24062 (Int Int) Int)

(assert (=> d!1698278 (< (dynLambda!24061 order!27055 lambda!266343) (dynLambda!24062 order!27057 lambda!266415))))

(assert (=> d!1698278 (forall!14307 (t!374190 lt!2157429) lambda!266415)))

(declare-fun lt!2157608 () Unit!153106)

(declare-fun choose!39382 (List!60991 Int Int Int) Unit!153106)

(assert (=> d!1698278 (= lt!2157608 (choose!39382 (t!374190 lt!2157429) lt!2157528 (zipperDepth!14 (t!374190 lt!2157429)) lambda!266343))))

(assert (=> d!1698278 (>= lt!2157528 (zipperDepth!14 (t!374190 lt!2157429)))))

(assert (=> d!1698278 (= (lemmaForallContextDepthBiggerThanTransitive!2 (t!374190 lt!2157429) lt!2157528 (zipperDepth!14 (t!374190 lt!2157429)) lambda!266343) lt!2157608)))

(declare-fun bs!1222550 () Bool)

(assert (= bs!1222550 d!1698278))

(declare-fun m!6315320 () Bool)

(assert (=> bs!1222550 m!6315320))

(assert (=> bs!1222550 m!6314788))

(declare-fun m!6315324 () Bool)

(assert (=> bs!1222550 m!6315324))

(assert (=> b!5276580 d!1698278))

(declare-fun d!1698292 () Bool)

(assert (=> d!1698292 (= (maxBigInt!0 (contextDepth!8 (h!67315 lt!2157429)) (zipperDepth!14 (t!374190 lt!2157429))) (ite (>= (contextDepth!8 (h!67315 lt!2157429)) (zipperDepth!14 (t!374190 lt!2157429))) (contextDepth!8 (h!67315 lt!2157429)) (zipperDepth!14 (t!374190 lt!2157429))))))

(assert (=> b!5276580 d!1698292))

(declare-fun d!1698300 () Bool)

(declare-fun res!2238255 () Bool)

(declare-fun e!3281594 () Bool)

(assert (=> d!1698300 (=> res!2238255 e!3281594)))

(assert (=> d!1698300 (= res!2238255 ((_ is Nil!60867) (t!374190 lt!2157429)))))

(assert (=> d!1698300 (= (forall!14307 (t!374190 lt!2157429) lambda!266344) e!3281594)))

(declare-fun b!5277148 () Bool)

(declare-fun e!3281595 () Bool)

(assert (=> b!5277148 (= e!3281594 e!3281595)))

(declare-fun res!2238256 () Bool)

(assert (=> b!5277148 (=> (not res!2238256) (not e!3281595))))

(declare-fun dynLambda!24063 (Int Context!8562) Bool)

(assert (=> b!5277148 (= res!2238256 (dynLambda!24063 lambda!266344 (h!67315 (t!374190 lt!2157429))))))

(declare-fun b!5277149 () Bool)

(assert (=> b!5277149 (= e!3281595 (forall!14307 (t!374190 (t!374190 lt!2157429)) lambda!266344))))

(assert (= (and d!1698300 (not res!2238255)) b!5277148))

(assert (= (and b!5277148 res!2238256) b!5277149))

(declare-fun b_lambda!203561 () Bool)

(assert (=> (not b_lambda!203561) (not b!5277148)))

(declare-fun m!6315342 () Bool)

(assert (=> b!5277148 m!6315342))

(declare-fun m!6315344 () Bool)

(assert (=> b!5277149 m!6315344))

(assert (=> b!5276580 d!1698300))

(declare-fun bs!1222603 () Bool)

(declare-fun b!5277198 () Bool)

(assert (= bs!1222603 (and b!5277198 b!5275986)))

(declare-fun lambda!266424 () Int)

(assert (=> bs!1222603 (not (= lambda!266424 lambda!266289))))

(declare-fun bs!1222604 () Bool)

(assert (= bs!1222604 (and b!5277198 d!1698076)))

(assert (=> bs!1222604 (not (= lambda!266424 lambda!266374))))

(declare-fun bs!1222605 () Bool)

(assert (= bs!1222605 (and b!5277198 d!1698046)))

(assert (=> bs!1222605 (not (= lambda!266424 lambda!266360))))

(declare-fun bs!1222606 () Bool)

(assert (= bs!1222606 (and b!5277198 d!1697978)))

(assert (=> bs!1222606 (not (= lambda!266424 lambda!266336))))

(declare-fun bs!1222607 () Bool)

(assert (= bs!1222607 (and b!5277198 d!1698050)))

(assert (=> bs!1222607 (not (= lambda!266424 lambda!266361))))

(declare-fun bs!1222608 () Bool)

(assert (= bs!1222608 (and b!5277198 d!1698078)))

(assert (=> bs!1222608 (not (= lambda!266424 lambda!266377))))

(assert (=> b!5277198 true))

(declare-fun bs!1222612 () Bool)

(declare-fun b!5277200 () Bool)

(assert (= bs!1222612 (and b!5277200 b!5275986)))

(declare-fun lambda!266426 () Int)

(assert (=> bs!1222612 (not (= lambda!266426 lambda!266289))))

(declare-fun bs!1222614 () Bool)

(assert (= bs!1222614 (and b!5277200 d!1698046)))

(assert (=> bs!1222614 (not (= lambda!266426 lambda!266360))))

(declare-fun bs!1222616 () Bool)

(assert (= bs!1222616 (and b!5277200 d!1697978)))

(assert (=> bs!1222616 (not (= lambda!266426 lambda!266336))))

(declare-fun bs!1222618 () Bool)

(assert (= bs!1222618 (and b!5277200 d!1698050)))

(assert (=> bs!1222618 (not (= lambda!266426 lambda!266361))))

(declare-fun bs!1222620 () Bool)

(assert (= bs!1222620 (and b!5277200 d!1698078)))

(assert (=> bs!1222620 (not (= lambda!266426 lambda!266377))))

(declare-fun bs!1222622 () Bool)

(assert (= bs!1222622 (and b!5277200 b!5277198)))

(declare-fun lt!2157624 () Int)

(declare-fun lt!2157623 () Int)

(assert (=> bs!1222622 (= (= lt!2157623 lt!2157624) (= lambda!266426 lambda!266424))))

(declare-fun bs!1222625 () Bool)

(assert (= bs!1222625 (and b!5277200 d!1698076)))

(assert (=> bs!1222625 (not (= lambda!266426 lambda!266374))))

(assert (=> b!5277200 true))

(declare-fun d!1698306 () Bool)

(declare-fun e!3281626 () Bool)

(assert (=> d!1698306 e!3281626))

(declare-fun res!2238283 () Bool)

(assert (=> d!1698306 (=> (not res!2238283) (not e!3281626))))

(assert (=> d!1698306 (= res!2238283 (>= lt!2157623 0))))

(declare-fun e!3281627 () Int)

(assert (=> d!1698306 (= lt!2157623 e!3281627)))

(declare-fun c!914540 () Bool)

(assert (=> d!1698306 (= c!914540 ((_ is Cons!60866) (exprs!4781 (h!67315 lt!2157429))))))

(assert (=> d!1698306 (= (contextDepth!8 (h!67315 lt!2157429)) lt!2157623)))

(assert (=> b!5277198 (= e!3281627 lt!2157624)))

(declare-fun regexDepth!153 (Regex!14897) Int)

(assert (=> b!5277198 (= lt!2157624 (maxBigInt!0 (regexDepth!153 (h!67314 (exprs!4781 (h!67315 lt!2157429)))) (contextDepth!8 (Context!8563 (t!374189 (exprs!4781 (h!67315 lt!2157429)))))))))

(declare-fun lt!2157622 () Unit!153106)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!2 (List!60990 Int Int) Unit!153106)

(assert (=> b!5277198 (= lt!2157622 (lemmaForallRegexDepthBiggerThanTransitive!2 (t!374189 (exprs!4781 (h!67315 lt!2157429))) lt!2157624 (contextDepth!8 (Context!8563 (t!374189 (exprs!4781 (h!67315 lt!2157429)))))))))

(assert (=> b!5277198 (forall!14305 (t!374189 (exprs!4781 (h!67315 lt!2157429))) lambda!266424)))

(declare-fun lt!2157621 () Unit!153106)

(assert (=> b!5277198 (= lt!2157621 lt!2157622)))

(declare-fun b!5277199 () Bool)

(assert (=> b!5277199 (= e!3281627 0)))

(assert (=> b!5277200 (= e!3281626 (forall!14305 (exprs!4781 (h!67315 lt!2157429)) lambda!266426))))

(assert (= (and d!1698306 c!914540) b!5277198))

(assert (= (and d!1698306 (not c!914540)) b!5277199))

(assert (= (and d!1698306 res!2238283) b!5277200))

(declare-fun m!6315394 () Bool)

(assert (=> b!5277198 m!6315394))

(declare-fun m!6315396 () Bool)

(assert (=> b!5277198 m!6315396))

(declare-fun m!6315398 () Bool)

(assert (=> b!5277198 m!6315398))

(assert (=> b!5277198 m!6315396))

(declare-fun m!6315400 () Bool)

(assert (=> b!5277198 m!6315400))

(assert (=> b!5277198 m!6315394))

(assert (=> b!5277198 m!6315396))

(declare-fun m!6315402 () Bool)

(assert (=> b!5277198 m!6315402))

(declare-fun m!6315404 () Bool)

(assert (=> b!5277200 m!6315404))

(assert (=> b!5276580 d!1698306))

(declare-fun bs!1222643 () Bool)

(declare-fun b!5277206 () Bool)

(assert (= bs!1222643 (and b!5277206 d!1698070)))

(declare-fun lambda!266428 () Int)

(assert (=> bs!1222643 (not (= lambda!266428 lambda!266365))))

(declare-fun bs!1222644 () Bool)

(assert (= bs!1222644 (and b!5277206 b!5276621)))

(assert (=> bs!1222644 (= (and (= (reg!15226 (regTwo!30307 r!7292)) (reg!15226 r!7292)) (= (regTwo!30307 r!7292) r!7292)) (= lambda!266428 lambda!266353))))

(declare-fun bs!1222645 () Bool)

(assert (= bs!1222645 (and b!5277206 b!5275981)))

(assert (=> bs!1222645 (not (= lambda!266428 lambda!266287))))

(declare-fun bs!1222646 () Bool)

(assert (= bs!1222646 (and b!5277206 d!1698072)))

(assert (=> bs!1222646 (not (= lambda!266428 lambda!266371))))

(declare-fun bs!1222647 () Bool)

(assert (= bs!1222647 (and b!5277206 b!5276627)))

(assert (=> bs!1222647 (not (= lambda!266428 lambda!266354))))

(assert (=> bs!1222645 (not (= lambda!266428 lambda!266286))))

(assert (=> bs!1222646 (not (= lambda!266428 lambda!266370))))

(assert (=> b!5277206 true))

(assert (=> b!5277206 true))

(declare-fun bs!1222649 () Bool)

(declare-fun b!5277212 () Bool)

(assert (= bs!1222649 (and b!5277212 d!1698070)))

(declare-fun lambda!266429 () Int)

(assert (=> bs!1222649 (not (= lambda!266429 lambda!266365))))

(declare-fun bs!1222650 () Bool)

(assert (= bs!1222650 (and b!5277212 b!5276621)))

(assert (=> bs!1222650 (not (= lambda!266429 lambda!266353))))

(declare-fun bs!1222651 () Bool)

(assert (= bs!1222651 (and b!5277212 b!5275981)))

(assert (=> bs!1222651 (= (and (= (regOne!30306 (regTwo!30307 r!7292)) (regOne!30306 r!7292)) (= (regTwo!30306 (regTwo!30307 r!7292)) (regTwo!30306 r!7292))) (= lambda!266429 lambda!266287))))

(declare-fun bs!1222652 () Bool)

(assert (= bs!1222652 (and b!5277212 b!5277206)))

(assert (=> bs!1222652 (not (= lambda!266429 lambda!266428))))

(declare-fun bs!1222653 () Bool)

(assert (= bs!1222653 (and b!5277212 d!1698072)))

(assert (=> bs!1222653 (= (and (= (regOne!30306 (regTwo!30307 r!7292)) (regOne!30306 r!7292)) (= (regTwo!30306 (regTwo!30307 r!7292)) (regTwo!30306 r!7292))) (= lambda!266429 lambda!266371))))

(declare-fun bs!1222654 () Bool)

(assert (= bs!1222654 (and b!5277212 b!5276627)))

(assert (=> bs!1222654 (= (and (= (regOne!30306 (regTwo!30307 r!7292)) (regOne!30306 r!7292)) (= (regTwo!30306 (regTwo!30307 r!7292)) (regTwo!30306 r!7292))) (= lambda!266429 lambda!266354))))

(assert (=> bs!1222651 (not (= lambda!266429 lambda!266286))))

(assert (=> bs!1222653 (not (= lambda!266429 lambda!266370))))

(assert (=> b!5277212 true))

(assert (=> b!5277212 true))

(declare-fun b!5277205 () Bool)

(declare-fun c!914544 () Bool)

(assert (=> b!5277205 (= c!914544 ((_ is ElementMatch!14897) (regTwo!30307 r!7292)))))

(declare-fun e!3281630 () Bool)

(declare-fun e!3281632 () Bool)

(assert (=> b!5277205 (= e!3281630 e!3281632)))

(declare-fun e!3281629 () Bool)

(declare-fun call!375532 () Bool)

(assert (=> b!5277206 (= e!3281629 call!375532)))

(declare-fun b!5277207 () Bool)

(declare-fun e!3281635 () Bool)

(assert (=> b!5277207 (= e!3281635 e!3281630)))

(declare-fun res!2238285 () Bool)

(assert (=> b!5277207 (= res!2238285 (not ((_ is EmptyLang!14897) (regTwo!30307 r!7292))))))

(assert (=> b!5277207 (=> (not res!2238285) (not e!3281630))))

(declare-fun d!1698334 () Bool)

(declare-fun c!914543 () Bool)

(assert (=> d!1698334 (= c!914543 ((_ is EmptyExpr!14897) (regTwo!30307 r!7292)))))

(assert (=> d!1698334 (= (matchRSpec!2000 (regTwo!30307 r!7292) s!2326) e!3281635)))

(declare-fun b!5277208 () Bool)

(declare-fun res!2238284 () Bool)

(assert (=> b!5277208 (=> res!2238284 e!3281629)))

(declare-fun call!375531 () Bool)

(assert (=> b!5277208 (= res!2238284 call!375531)))

(declare-fun e!3281633 () Bool)

(assert (=> b!5277208 (= e!3281633 e!3281629)))

(declare-fun b!5277209 () Bool)

(declare-fun c!914545 () Bool)

(assert (=> b!5277209 (= c!914545 ((_ is Union!14897) (regTwo!30307 r!7292)))))

(declare-fun e!3281634 () Bool)

(assert (=> b!5277209 (= e!3281632 e!3281634)))

(declare-fun b!5277210 () Bool)

(assert (=> b!5277210 (= e!3281635 call!375531)))

(declare-fun b!5277211 () Bool)

(declare-fun e!3281631 () Bool)

(assert (=> b!5277211 (= e!3281634 e!3281631)))

(declare-fun res!2238286 () Bool)

(assert (=> b!5277211 (= res!2238286 (matchRSpec!2000 (regOne!30307 (regTwo!30307 r!7292)) s!2326))))

(assert (=> b!5277211 (=> res!2238286 e!3281631)))

(declare-fun bm!375526 () Bool)

(declare-fun c!914542 () Bool)

(assert (=> bm!375526 (= call!375532 (Exists!2078 (ite c!914542 lambda!266428 lambda!266429)))))

(assert (=> b!5277212 (= e!3281633 call!375532)))

(declare-fun b!5277213 () Bool)

(assert (=> b!5277213 (= e!3281632 (= s!2326 (Cons!60868 (c!914175 (regTwo!30307 r!7292)) Nil!60868)))))

(declare-fun b!5277214 () Bool)

(assert (=> b!5277214 (= e!3281634 e!3281633)))

(assert (=> b!5277214 (= c!914542 ((_ is Star!14897) (regTwo!30307 r!7292)))))

(declare-fun bm!375527 () Bool)

(assert (=> bm!375527 (= call!375531 (isEmpty!32823 s!2326))))

(declare-fun b!5277215 () Bool)

(assert (=> b!5277215 (= e!3281631 (matchRSpec!2000 (regTwo!30307 (regTwo!30307 r!7292)) s!2326))))

(assert (= (and d!1698334 c!914543) b!5277210))

(assert (= (and d!1698334 (not c!914543)) b!5277207))

(assert (= (and b!5277207 res!2238285) b!5277205))

(assert (= (and b!5277205 c!914544) b!5277213))

(assert (= (and b!5277205 (not c!914544)) b!5277209))

(assert (= (and b!5277209 c!914545) b!5277211))

(assert (= (and b!5277209 (not c!914545)) b!5277214))

(assert (= (and b!5277211 (not res!2238286)) b!5277215))

(assert (= (and b!5277214 c!914542) b!5277208))

(assert (= (and b!5277214 (not c!914542)) b!5277212))

(assert (= (and b!5277208 (not res!2238284)) b!5277206))

(assert (= (or b!5277206 b!5277212) bm!375526))

(assert (= (or b!5277210 b!5277208) bm!375527))

(declare-fun m!6315428 () Bool)

(assert (=> b!5277211 m!6315428))

(declare-fun m!6315430 () Bool)

(assert (=> bm!375526 m!6315430))

(assert (=> bm!375527 m!6314814))

(declare-fun m!6315432 () Bool)

(assert (=> b!5277215 m!6315432))

(assert (=> b!5276630 d!1698334))

(declare-fun d!1698350 () Bool)

(assert (=> d!1698350 (= (isEmpty!32819 (tail!10408 (unfocusZipperList!339 zl!343))) ((_ is Nil!60866) (tail!10408 (unfocusZipperList!339 zl!343))))))

(assert (=> b!5276795 d!1698350))

(declare-fun d!1698352 () Bool)

(assert (=> d!1698352 (= (tail!10408 (unfocusZipperList!339 zl!343)) (t!374189 (unfocusZipperList!339 zl!343)))))

(assert (=> b!5276795 d!1698352))

(declare-fun d!1698356 () Bool)

(assert (=> d!1698356 (= (isEmpty!32823 (t!374191 s!2326)) ((_ is Nil!60868) (t!374191 s!2326)))))

(assert (=> d!1698080 d!1698356))

(declare-fun d!1698358 () Bool)

(assert (=> d!1698358 (= (isEmptyExpr!831 lt!2157513) ((_ is EmptyExpr!14897) lt!2157513))))

(assert (=> b!5276525 d!1698358))

(declare-fun bs!1222655 () Bool)

(declare-fun d!1698360 () Bool)

(assert (= bs!1222655 (and d!1698360 b!5275986)))

(declare-fun lambda!266430 () Int)

(assert (=> bs!1222655 (= lambda!266430 lambda!266289)))

(declare-fun bs!1222656 () Bool)

(assert (= bs!1222656 (and d!1698360 d!1698046)))

(assert (=> bs!1222656 (= lambda!266430 lambda!266360)))

(declare-fun bs!1222657 () Bool)

(assert (= bs!1222657 (and d!1698360 d!1697978)))

(assert (=> bs!1222657 (= lambda!266430 lambda!266336)))

(declare-fun bs!1222658 () Bool)

(assert (= bs!1222658 (and d!1698360 d!1698050)))

(assert (=> bs!1222658 (= lambda!266430 lambda!266361)))

(declare-fun bs!1222659 () Bool)

(assert (= bs!1222659 (and d!1698360 b!5277198)))

(assert (=> bs!1222659 (not (= lambda!266430 lambda!266424))))

(declare-fun bs!1222660 () Bool)

(assert (= bs!1222660 (and d!1698360 d!1698076)))

(assert (=> bs!1222660 (= lambda!266430 lambda!266374)))

(declare-fun bs!1222661 () Bool)

(assert (= bs!1222661 (and d!1698360 b!5277200)))

(assert (=> bs!1222661 (not (= lambda!266430 lambda!266426))))

(declare-fun bs!1222662 () Bool)

(assert (= bs!1222662 (and d!1698360 d!1698078)))

(assert (=> bs!1222662 (= lambda!266430 lambda!266377)))

(assert (=> d!1698360 (= (inv!80489 setElem!33803) (forall!14305 (exprs!4781 setElem!33803) lambda!266430))))

(declare-fun bs!1222663 () Bool)

(assert (= bs!1222663 d!1698360))

(declare-fun m!6315450 () Bool)

(assert (=> bs!1222663 m!6315450))

(assert (=> setNonEmpty!33803 d!1698360))

(assert (=> d!1698030 d!1698356))

(declare-fun d!1698364 () Bool)

(declare-fun res!2238307 () Bool)

(declare-fun e!3281669 () Bool)

(assert (=> d!1698364 (=> res!2238307 e!3281669)))

(assert (=> d!1698364 (= res!2238307 ((_ is Nil!60866) (exprs!4781 (h!67315 zl!343))))))

(assert (=> d!1698364 (= (forall!14305 (exprs!4781 (h!67315 zl!343)) lambda!266360) e!3281669)))

(declare-fun b!5277270 () Bool)

(declare-fun e!3281670 () Bool)

(assert (=> b!5277270 (= e!3281669 e!3281670)))

(declare-fun res!2238308 () Bool)

(assert (=> b!5277270 (=> (not res!2238308) (not e!3281670))))

(assert (=> b!5277270 (= res!2238308 (dynLambda!24057 lambda!266360 (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5277271 () Bool)

(assert (=> b!5277271 (= e!3281670 (forall!14305 (t!374189 (exprs!4781 (h!67315 zl!343))) lambda!266360))))

(assert (= (and d!1698364 (not res!2238307)) b!5277270))

(assert (= (and b!5277270 res!2238308) b!5277271))

(declare-fun b_lambda!203565 () Bool)

(assert (=> (not b_lambda!203565) (not b!5277270)))

(declare-fun m!6315458 () Bool)

(assert (=> b!5277270 m!6315458))

(declare-fun m!6315464 () Bool)

(assert (=> b!5277271 m!6315464))

(assert (=> d!1698046 d!1698364))

(assert (=> bs!1222364 d!1697964))

(declare-fun d!1698368 () Bool)

(assert (=> d!1698368 (= (isUnion!271 lt!2157566) ((_ is Union!14897) lt!2157566))))

(assert (=> b!5276791 d!1698368))

(declare-fun bs!1222672 () Bool)

(declare-fun d!1698370 () Bool)

(assert (= bs!1222672 (and d!1698370 d!1698278)))

(declare-fun lambda!266435 () Int)

(assert (=> bs!1222672 (not (= lambda!266435 lambda!266415))))

(declare-fun bs!1222673 () Bool)

(assert (= bs!1222673 (and d!1698370 b!5277098)))

(assert (=> bs!1222673 (not (= lambda!266435 lambda!266410))))

(declare-fun bs!1222675 () Bool)

(assert (= bs!1222675 (and d!1698370 b!5276580)))

(assert (=> bs!1222675 (not (= lambda!266435 lambda!266344))))

(declare-fun bs!1222676 () Bool)

(assert (= bs!1222676 (and d!1698370 b!5276582)))

(assert (=> bs!1222676 (not (= lambda!266435 lambda!266345))))

(declare-fun bs!1222678 () Bool)

(assert (= bs!1222678 (and d!1698370 b!5277100)))

(assert (=> bs!1222678 (not (= lambda!266435 lambda!266411))))

(declare-fun bs!1222679 () Bool)

(assert (= bs!1222679 (and d!1698370 b!5276585)))

(assert (=> bs!1222679 (not (= lambda!266435 lambda!266347))))

(declare-fun bs!1222681 () Bool)

(assert (= bs!1222681 (and d!1698370 b!5276587)))

(assert (=> bs!1222681 (not (= lambda!266435 lambda!266348))))

(declare-fun exists!1999 ((InoxSet Context!8562) Int) Bool)

(assert (=> d!1698370 (= (nullableZipper!1296 lt!2157422) (exists!1999 lt!2157422 lambda!266435))))

(declare-fun bs!1222683 () Bool)

(assert (= bs!1222683 d!1698370))

(declare-fun m!6315466 () Bool)

(assert (=> bs!1222683 m!6315466))

(assert (=> b!5276433 d!1698370))

(declare-fun d!1698372 () Bool)

(assert (=> d!1698372 (= (isEmpty!32823 s!2326) ((_ is Nil!60868) s!2326))))

(assert (=> bm!375453 d!1698372))

(declare-fun d!1698374 () Bool)

(assert (=> d!1698374 (= ($colon$colon!1346 (exprs!4781 lt!2157404) (ite (or c!914275 c!914272) (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 r!7292)))) (Cons!60866 (ite (or c!914275 c!914272) (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 r!7292))) (exprs!4781 lt!2157404)))))

(assert (=> bm!375416 d!1698374))

(declare-fun d!1698376 () Bool)

(declare-fun res!2238312 () Bool)

(declare-fun e!3281678 () Bool)

(assert (=> d!1698376 (=> res!2238312 e!3281678)))

(assert (=> d!1698376 (= res!2238312 ((_ is Nil!60867) zl!343))))

(assert (=> d!1698376 (= (forall!14307 zl!343 lambda!266348) e!3281678)))

(declare-fun b!5277283 () Bool)

(declare-fun e!3281679 () Bool)

(assert (=> b!5277283 (= e!3281678 e!3281679)))

(declare-fun res!2238313 () Bool)

(assert (=> b!5277283 (=> (not res!2238313) (not e!3281679))))

(assert (=> b!5277283 (= res!2238313 (dynLambda!24063 lambda!266348 (h!67315 zl!343)))))

(declare-fun b!5277284 () Bool)

(assert (=> b!5277284 (= e!3281679 (forall!14307 (t!374190 zl!343) lambda!266348))))

(assert (= (and d!1698376 (not res!2238312)) b!5277283))

(assert (= (and b!5277283 res!2238313) b!5277284))

(declare-fun b_lambda!203567 () Bool)

(assert (=> (not b_lambda!203567) (not b!5277283)))

(declare-fun m!6315468 () Bool)

(assert (=> b!5277283 m!6315468))

(declare-fun m!6315470 () Bool)

(assert (=> b!5277284 m!6315470))

(assert (=> b!5276587 d!1698376))

(declare-fun b!5277285 () Bool)

(declare-fun e!3281681 () Bool)

(assert (=> b!5277285 (= e!3281681 (nullable!5066 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343))))))))))

(declare-fun e!3281680 () (InoxSet Context!8562))

(declare-fun call!375554 () (InoxSet Context!8562))

(declare-fun b!5277286 () Bool)

(assert (=> b!5277286 (= e!3281680 ((_ map or) call!375554 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343))))))) (h!67316 s!2326))))))

(declare-fun b!5277287 () Bool)

(declare-fun e!3281682 () (InoxSet Context!8562))

(assert (=> b!5277287 (= e!3281680 e!3281682)))

(declare-fun c!914569 () Bool)

(assert (=> b!5277287 (= c!914569 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun b!5277288 () Bool)

(assert (=> b!5277288 (= e!3281682 call!375554)))

(declare-fun bm!375549 () Bool)

(assert (=> bm!375549 (= call!375554 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343))))))) (h!67316 s!2326)))))

(declare-fun d!1698378 () Bool)

(declare-fun c!914570 () Bool)

(assert (=> d!1698378 (= c!914570 e!3281681)))

(declare-fun res!2238314 () Bool)

(assert (=> d!1698378 (=> (not res!2238314) (not e!3281681))))

(assert (=> d!1698378 (= res!2238314 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(assert (=> d!1698378 (= (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))) (h!67316 s!2326)) e!3281680)))

(declare-fun b!5277289 () Bool)

(assert (=> b!5277289 (= e!3281682 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1698378 res!2238314) b!5277285))

(assert (= (and d!1698378 c!914570) b!5277286))

(assert (= (and d!1698378 (not c!914570)) b!5277287))

(assert (= (and b!5277287 c!914569) b!5277288))

(assert (= (and b!5277287 (not c!914569)) b!5277289))

(assert (= (or b!5277286 b!5277288) bm!375549))

(declare-fun m!6315472 () Bool)

(assert (=> b!5277285 m!6315472))

(declare-fun m!6315474 () Bool)

(assert (=> b!5277286 m!6315474))

(declare-fun m!6315478 () Bool)

(assert (=> bm!375549 m!6315478))

(assert (=> b!5276409 d!1698378))

(declare-fun bm!375550 () Bool)

(declare-fun c!914572 () Bool)

(declare-fun call!375557 () List!60990)

(declare-fun c!914575 () Bool)

(assert (=> bm!375550 (= call!375557 ($colon$colon!1346 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408)))) (ite (or c!914575 c!914572) (regTwo!30306 (h!67314 (exprs!4781 lt!2157408))) (h!67314 (exprs!4781 lt!2157408)))))))

(declare-fun b!5277290 () Bool)

(declare-fun e!3281683 () Bool)

(assert (=> b!5277290 (= e!3281683 (nullable!5066 (regOne!30306 (h!67314 (exprs!4781 lt!2157408)))))))

(declare-fun b!5277291 () Bool)

(declare-fun e!3281685 () (InoxSet Context!8562))

(declare-fun call!375555 () (InoxSet Context!8562))

(declare-fun call!375559 () (InoxSet Context!8562))

(assert (=> b!5277291 (= e!3281685 ((_ map or) call!375555 call!375559))))

(declare-fun b!5277292 () Bool)

(declare-fun e!3281687 () (InoxSet Context!8562))

(assert (=> b!5277292 (= e!3281687 (store ((as const (Array Context!8562 Bool)) false) (Context!8563 (t!374189 (exprs!4781 lt!2157408))) true))))

(declare-fun b!5277293 () Bool)

(declare-fun e!3281688 () (InoxSet Context!8562))

(declare-fun e!3281686 () (InoxSet Context!8562))

(assert (=> b!5277293 (= e!3281688 e!3281686)))

(assert (=> b!5277293 (= c!914572 ((_ is Concat!23742) (h!67314 (exprs!4781 lt!2157408))))))

(declare-fun bm!375551 () Bool)

(declare-fun call!375560 () (InoxSet Context!8562))

(assert (=> bm!375551 (= call!375560 call!375555)))

(declare-fun b!5277294 () Bool)

(declare-fun e!3281684 () (InoxSet Context!8562))

(assert (=> b!5277294 (= e!3281684 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5277295 () Bool)

(assert (=> b!5277295 (= c!914575 e!3281683)))

(declare-fun res!2238315 () Bool)

(assert (=> b!5277295 (=> (not res!2238315) (not e!3281683))))

(assert (=> b!5277295 (= res!2238315 ((_ is Concat!23742) (h!67314 (exprs!4781 lt!2157408))))))

(assert (=> b!5277295 (= e!3281685 e!3281688)))

(declare-fun b!5277296 () Bool)

(assert (=> b!5277296 (= e!3281687 e!3281685)))

(declare-fun c!914573 () Bool)

(assert (=> b!5277296 (= c!914573 ((_ is Union!14897) (h!67314 (exprs!4781 lt!2157408))))))

(declare-fun bm!375552 () Bool)

(assert (=> bm!375552 (= call!375559 (derivationStepZipperDown!345 (ite c!914573 (regTwo!30307 (h!67314 (exprs!4781 lt!2157408))) (regOne!30306 (h!67314 (exprs!4781 lt!2157408)))) (ite c!914573 (Context!8563 (t!374189 (exprs!4781 lt!2157408))) (Context!8563 call!375557)) (h!67316 s!2326)))))

(declare-fun b!5277297 () Bool)

(declare-fun c!914571 () Bool)

(assert (=> b!5277297 (= c!914571 ((_ is Star!14897) (h!67314 (exprs!4781 lt!2157408))))))

(assert (=> b!5277297 (= e!3281686 e!3281684)))

(declare-fun b!5277298 () Bool)

(declare-fun call!375558 () (InoxSet Context!8562))

(assert (=> b!5277298 (= e!3281686 call!375558)))

(declare-fun bm!375553 () Bool)

(assert (=> bm!375553 (= call!375558 call!375560)))

(declare-fun b!5277299 () Bool)

(assert (=> b!5277299 (= e!3281684 call!375558)))

(declare-fun b!5277300 () Bool)

(assert (=> b!5277300 (= e!3281688 ((_ map or) call!375559 call!375560))))

(declare-fun d!1698380 () Bool)

(declare-fun c!914574 () Bool)

(assert (=> d!1698380 (= c!914574 (and ((_ is ElementMatch!14897) (h!67314 (exprs!4781 lt!2157408))) (= (c!914175 (h!67314 (exprs!4781 lt!2157408))) (h!67316 s!2326))))))

(assert (=> d!1698380 (= (derivationStepZipperDown!345 (h!67314 (exprs!4781 lt!2157408)) (Context!8563 (t!374189 (exprs!4781 lt!2157408))) (h!67316 s!2326)) e!3281687)))

(declare-fun bm!375554 () Bool)

(declare-fun call!375556 () List!60990)

(assert (=> bm!375554 (= call!375555 (derivationStepZipperDown!345 (ite c!914573 (regOne!30307 (h!67314 (exprs!4781 lt!2157408))) (ite c!914575 (regTwo!30306 (h!67314 (exprs!4781 lt!2157408))) (ite c!914572 (regOne!30306 (h!67314 (exprs!4781 lt!2157408))) (reg!15226 (h!67314 (exprs!4781 lt!2157408)))))) (ite (or c!914573 c!914575) (Context!8563 (t!374189 (exprs!4781 lt!2157408))) (Context!8563 call!375556)) (h!67316 s!2326)))))

(declare-fun bm!375555 () Bool)

(assert (=> bm!375555 (= call!375556 call!375557)))

(assert (= (and d!1698380 c!914574) b!5277292))

(assert (= (and d!1698380 (not c!914574)) b!5277296))

(assert (= (and b!5277296 c!914573) b!5277291))

(assert (= (and b!5277296 (not c!914573)) b!5277295))

(assert (= (and b!5277295 res!2238315) b!5277290))

(assert (= (and b!5277295 c!914575) b!5277300))

(assert (= (and b!5277295 (not c!914575)) b!5277293))

(assert (= (and b!5277293 c!914572) b!5277298))

(assert (= (and b!5277293 (not c!914572)) b!5277297))

(assert (= (and b!5277297 c!914571) b!5277299))

(assert (= (and b!5277297 (not c!914571)) b!5277294))

(assert (= (or b!5277298 b!5277299) bm!375555))

(assert (= (or b!5277298 b!5277299) bm!375553))

(assert (= (or b!5277300 bm!375555) bm!375550))

(assert (= (or b!5277300 bm!375553) bm!375551))

(assert (= (or b!5277291 b!5277300) bm!375552))

(assert (= (or b!5277291 bm!375551) bm!375554))

(declare-fun m!6315486 () Bool)

(assert (=> bm!375552 m!6315486))

(declare-fun m!6315488 () Bool)

(assert (=> bm!375554 m!6315488))

(declare-fun m!6315490 () Bool)

(assert (=> bm!375550 m!6315490))

(declare-fun m!6315492 () Bool)

(assert (=> b!5277290 m!6315492))

(declare-fun m!6315494 () Bool)

(assert (=> b!5277292 m!6315494))

(assert (=> bm!375463 d!1698380))

(assert (=> d!1697940 d!1698356))

(assert (=> d!1698028 d!1698026))

(assert (=> d!1698028 d!1698024))

(declare-fun d!1698386 () Bool)

(assert (=> d!1698386 (= (matchR!7082 r!7292 s!2326) (matchRSpec!2000 r!7292 s!2326))))

(assert (=> d!1698386 true))

(declare-fun _$88!3580 () Unit!153106)

(assert (=> d!1698386 (= (choose!39376 r!7292 s!2326) _$88!3580)))

(declare-fun bs!1222711 () Bool)

(assert (= bs!1222711 d!1698386))

(assert (=> bs!1222711 m!6314228))

(assert (=> bs!1222711 m!6314226))

(assert (=> d!1698028 d!1698386))

(assert (=> d!1698028 d!1698040))

(declare-fun d!1698392 () Bool)

(assert (=> d!1698392 (= (Exists!2078 lambda!266370) (choose!39377 lambda!266370))))

(declare-fun bs!1222712 () Bool)

(assert (= bs!1222712 d!1698392))

(declare-fun m!6315518 () Bool)

(assert (=> bs!1222712 m!6315518))

(assert (=> d!1698072 d!1698392))

(declare-fun d!1698394 () Bool)

(assert (=> d!1698394 (= (Exists!2078 lambda!266371) (choose!39377 lambda!266371))))

(declare-fun bs!1222713 () Bool)

(assert (= bs!1222713 d!1698394))

(declare-fun m!6315520 () Bool)

(assert (=> bs!1222713 m!6315520))

(assert (=> d!1698072 d!1698394))

(declare-fun bs!1222716 () Bool)

(declare-fun d!1698396 () Bool)

(assert (= bs!1222716 (and d!1698396 b!5277212)))

(declare-fun lambda!266446 () Int)

(assert (=> bs!1222716 (not (= lambda!266446 lambda!266429))))

(declare-fun bs!1222717 () Bool)

(assert (= bs!1222717 (and d!1698396 d!1698070)))

(assert (=> bs!1222717 (= lambda!266446 lambda!266365)))

(declare-fun bs!1222718 () Bool)

(assert (= bs!1222718 (and d!1698396 b!5276621)))

(assert (=> bs!1222718 (not (= lambda!266446 lambda!266353))))

(declare-fun bs!1222719 () Bool)

(assert (= bs!1222719 (and d!1698396 b!5275981)))

(assert (=> bs!1222719 (not (= lambda!266446 lambda!266287))))

(declare-fun bs!1222720 () Bool)

(assert (= bs!1222720 (and d!1698396 b!5277206)))

(assert (=> bs!1222720 (not (= lambda!266446 lambda!266428))))

(declare-fun bs!1222722 () Bool)

(assert (= bs!1222722 (and d!1698396 d!1698072)))

(assert (=> bs!1222722 (not (= lambda!266446 lambda!266371))))

(declare-fun bs!1222724 () Bool)

(assert (= bs!1222724 (and d!1698396 b!5276627)))

(assert (=> bs!1222724 (not (= lambda!266446 lambda!266354))))

(assert (=> bs!1222719 (= lambda!266446 lambda!266286)))

(assert (=> bs!1222722 (= lambda!266446 lambda!266370)))

(assert (=> d!1698396 true))

(assert (=> d!1698396 true))

(assert (=> d!1698396 true))

(declare-fun bs!1222731 () Bool)

(assert (= bs!1222731 d!1698396))

(declare-fun lambda!266448 () Int)

(assert (=> bs!1222731 (not (= lambda!266448 lambda!266446))))

(assert (=> bs!1222716 (= (and (= (regOne!30306 r!7292) (regOne!30306 (regTwo!30307 r!7292))) (= (regTwo!30306 r!7292) (regTwo!30306 (regTwo!30307 r!7292)))) (= lambda!266448 lambda!266429))))

(assert (=> bs!1222717 (not (= lambda!266448 lambda!266365))))

(assert (=> bs!1222718 (not (= lambda!266448 lambda!266353))))

(assert (=> bs!1222719 (= lambda!266448 lambda!266287)))

(assert (=> bs!1222720 (not (= lambda!266448 lambda!266428))))

(assert (=> bs!1222722 (= lambda!266448 lambda!266371)))

(assert (=> bs!1222724 (= lambda!266448 lambda!266354)))

(assert (=> bs!1222719 (not (= lambda!266448 lambda!266286))))

(assert (=> bs!1222722 (not (= lambda!266448 lambda!266370))))

(assert (=> d!1698396 true))

(assert (=> d!1698396 true))

(assert (=> d!1698396 true))

(assert (=> d!1698396 (= (Exists!2078 lambda!266446) (Exists!2078 lambda!266448))))

(assert (=> d!1698396 true))

(declare-fun _$90!1107 () Unit!153106)

(assert (=> d!1698396 (= (choose!39379 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326) _$90!1107)))

(declare-fun m!6315530 () Bool)

(assert (=> bs!1222731 m!6315530))

(declare-fun m!6315532 () Bool)

(assert (=> bs!1222731 m!6315532))

(assert (=> d!1698072 d!1698396))

(declare-fun b!5277337 () Bool)

(declare-fun e!3281708 () Bool)

(declare-fun call!375566 () Bool)

(assert (=> b!5277337 (= e!3281708 call!375566)))

(declare-fun b!5277338 () Bool)

(declare-fun e!3281714 () Bool)

(assert (=> b!5277338 (= e!3281714 call!375566)))

(declare-fun b!5277339 () Bool)

(declare-fun res!2238338 () Bool)

(declare-fun e!3281712 () Bool)

(assert (=> b!5277339 (=> res!2238338 e!3281712)))

(assert (=> b!5277339 (= res!2238338 (not ((_ is Concat!23742) (regOne!30306 r!7292))))))

(declare-fun e!3281710 () Bool)

(assert (=> b!5277339 (= e!3281710 e!3281712)))

(declare-fun b!5277340 () Bool)

(assert (=> b!5277340 (= e!3281712 e!3281714)))

(declare-fun res!2238335 () Bool)

(assert (=> b!5277340 (=> (not res!2238335) (not e!3281714))))

(declare-fun call!375564 () Bool)

(assert (=> b!5277340 (= res!2238335 call!375564)))

(declare-fun c!914586 () Bool)

(declare-fun c!914585 () Bool)

(declare-fun bm!375559 () Bool)

(declare-fun call!375565 () Bool)

(assert (=> bm!375559 (= call!375565 (validRegex!6633 (ite c!914586 (reg!15226 (regOne!30306 r!7292)) (ite c!914585 (regOne!30307 (regOne!30306 r!7292)) (regOne!30306 (regOne!30306 r!7292))))))))

(declare-fun d!1698404 () Bool)

(declare-fun res!2238337 () Bool)

(declare-fun e!3281709 () Bool)

(assert (=> d!1698404 (=> res!2238337 e!3281709)))

(assert (=> d!1698404 (= res!2238337 ((_ is ElementMatch!14897) (regOne!30306 r!7292)))))

(assert (=> d!1698404 (= (validRegex!6633 (regOne!30306 r!7292)) e!3281709)))

(declare-fun bm!375560 () Bool)

(assert (=> bm!375560 (= call!375564 call!375565)))

(declare-fun bm!375561 () Bool)

(assert (=> bm!375561 (= call!375566 (validRegex!6633 (ite c!914585 (regTwo!30307 (regOne!30306 r!7292)) (regTwo!30306 (regOne!30306 r!7292)))))))

(declare-fun b!5277341 () Bool)

(declare-fun e!3281711 () Bool)

(assert (=> b!5277341 (= e!3281709 e!3281711)))

(assert (=> b!5277341 (= c!914586 ((_ is Star!14897) (regOne!30306 r!7292)))))

(declare-fun b!5277342 () Bool)

(declare-fun e!3281713 () Bool)

(assert (=> b!5277342 (= e!3281713 call!375565)))

(declare-fun b!5277343 () Bool)

(assert (=> b!5277343 (= e!3281711 e!3281713)))

(declare-fun res!2238334 () Bool)

(assert (=> b!5277343 (= res!2238334 (not (nullable!5066 (reg!15226 (regOne!30306 r!7292)))))))

(assert (=> b!5277343 (=> (not res!2238334) (not e!3281713))))

(declare-fun b!5277344 () Bool)

(assert (=> b!5277344 (= e!3281711 e!3281710)))

(assert (=> b!5277344 (= c!914585 ((_ is Union!14897) (regOne!30306 r!7292)))))

(declare-fun b!5277345 () Bool)

(declare-fun res!2238336 () Bool)

(assert (=> b!5277345 (=> (not res!2238336) (not e!3281708))))

(assert (=> b!5277345 (= res!2238336 call!375564)))

(assert (=> b!5277345 (= e!3281710 e!3281708)))

(assert (= (and d!1698404 (not res!2238337)) b!5277341))

(assert (= (and b!5277341 c!914586) b!5277343))

(assert (= (and b!5277341 (not c!914586)) b!5277344))

(assert (= (and b!5277343 res!2238334) b!5277342))

(assert (= (and b!5277344 c!914585) b!5277345))

(assert (= (and b!5277344 (not c!914585)) b!5277339))

(assert (= (and b!5277345 res!2238336) b!5277337))

(assert (= (and b!5277339 (not res!2238338)) b!5277340))

(assert (= (and b!5277340 res!2238335) b!5277338))

(assert (= (or b!5277337 b!5277338) bm!375561))

(assert (= (or b!5277345 b!5277340) bm!375560))

(assert (= (or b!5277342 bm!375560) bm!375559))

(declare-fun m!6315534 () Bool)

(assert (=> bm!375559 m!6315534))

(declare-fun m!6315536 () Bool)

(assert (=> bm!375561 m!6315536))

(declare-fun m!6315538 () Bool)

(assert (=> b!5277343 m!6315538))

(assert (=> d!1698072 d!1698404))

(declare-fun bs!1222735 () Bool)

(declare-fun d!1698406 () Bool)

(assert (= bs!1222735 (and d!1698406 b!5275986)))

(declare-fun lambda!266450 () Int)

(assert (=> bs!1222735 (= lambda!266450 lambda!266289)))

(declare-fun bs!1222736 () Bool)

(assert (= bs!1222736 (and d!1698406 d!1698046)))

(assert (=> bs!1222736 (= lambda!266450 lambda!266360)))

(declare-fun bs!1222737 () Bool)

(assert (= bs!1222737 (and d!1698406 d!1697978)))

(assert (=> bs!1222737 (= lambda!266450 lambda!266336)))

(declare-fun bs!1222738 () Bool)

(assert (= bs!1222738 (and d!1698406 d!1698360)))

(assert (=> bs!1222738 (= lambda!266450 lambda!266430)))

(declare-fun bs!1222739 () Bool)

(assert (= bs!1222739 (and d!1698406 d!1698050)))

(assert (=> bs!1222739 (= lambda!266450 lambda!266361)))

(declare-fun bs!1222740 () Bool)

(assert (= bs!1222740 (and d!1698406 b!5277198)))

(assert (=> bs!1222740 (not (= lambda!266450 lambda!266424))))

(declare-fun bs!1222742 () Bool)

(assert (= bs!1222742 (and d!1698406 d!1698076)))

(assert (=> bs!1222742 (= lambda!266450 lambda!266374)))

(declare-fun bs!1222744 () Bool)

(assert (= bs!1222744 (and d!1698406 b!5277200)))

(assert (=> bs!1222744 (not (= lambda!266450 lambda!266426))))

(declare-fun bs!1222746 () Bool)

(assert (= bs!1222746 (and d!1698406 d!1698078)))

(assert (=> bs!1222746 (= lambda!266450 lambda!266377)))

(assert (=> d!1698406 (= (inv!80489 (h!67315 (t!374190 zl!343))) (forall!14305 (exprs!4781 (h!67315 (t!374190 zl!343))) lambda!266450))))

(declare-fun bs!1222749 () Bool)

(assert (= bs!1222749 d!1698406))

(declare-fun m!6315544 () Bool)

(assert (=> bs!1222749 m!6315544))

(assert (=> b!5276844 d!1698406))

(assert (=> d!1697942 d!1698356))

(declare-fun d!1698410 () Bool)

(assert (=> d!1698410 (= (isDefined!11711 lt!2157555) (not (isEmpty!32824 lt!2157555)))))

(declare-fun bs!1222752 () Bool)

(assert (= bs!1222752 d!1698410))

(declare-fun m!6315546 () Bool)

(assert (=> bs!1222752 m!6315546))

(assert (=> d!1698066 d!1698410))

(declare-fun b!5277346 () Bool)

(declare-fun res!2238345 () Bool)

(declare-fun e!3281715 () Bool)

(assert (=> b!5277346 (=> res!2238345 e!3281715)))

(assert (=> b!5277346 (= res!2238345 (not ((_ is ElementMatch!14897) (regOne!30306 r!7292))))))

(declare-fun e!3281719 () Bool)

(assert (=> b!5277346 (= e!3281719 e!3281715)))

(declare-fun b!5277347 () Bool)

(declare-fun e!3281718 () Bool)

(assert (=> b!5277347 (= e!3281715 e!3281718)))

(declare-fun res!2238341 () Bool)

(assert (=> b!5277347 (=> (not res!2238341) (not e!3281718))))

(declare-fun lt!2157629 () Bool)

(assert (=> b!5277347 (= res!2238341 (not lt!2157629))))

(declare-fun b!5277348 () Bool)

(declare-fun e!3281720 () Bool)

(assert (=> b!5277348 (= e!3281720 (matchR!7082 (derivativeStep!4117 (regOne!30306 r!7292) (head!11310 Nil!60868)) (tail!10407 Nil!60868)))))

(declare-fun b!5277349 () Bool)

(declare-fun res!2238346 () Bool)

(assert (=> b!5277349 (=> res!2238346 e!3281715)))

(declare-fun e!3281721 () Bool)

(assert (=> b!5277349 (= res!2238346 e!3281721)))

(declare-fun res!2238339 () Bool)

(assert (=> b!5277349 (=> (not res!2238339) (not e!3281721))))

(assert (=> b!5277349 (= res!2238339 lt!2157629)))

(declare-fun b!5277350 () Bool)

(declare-fun res!2238342 () Bool)

(assert (=> b!5277350 (=> (not res!2238342) (not e!3281721))))

(declare-fun call!375567 () Bool)

(assert (=> b!5277350 (= res!2238342 (not call!375567))))

(declare-fun b!5277351 () Bool)

(declare-fun res!2238343 () Bool)

(assert (=> b!5277351 (=> (not res!2238343) (not e!3281721))))

(assert (=> b!5277351 (= res!2238343 (isEmpty!32823 (tail!10407 Nil!60868)))))

(declare-fun d!1698412 () Bool)

(declare-fun e!3281716 () Bool)

(assert (=> d!1698412 e!3281716))

(declare-fun c!914589 () Bool)

(assert (=> d!1698412 (= c!914589 ((_ is EmptyExpr!14897) (regOne!30306 r!7292)))))

(assert (=> d!1698412 (= lt!2157629 e!3281720)))

(declare-fun c!914588 () Bool)

(assert (=> d!1698412 (= c!914588 (isEmpty!32823 Nil!60868))))

(assert (=> d!1698412 (validRegex!6633 (regOne!30306 r!7292))))

(assert (=> d!1698412 (= (matchR!7082 (regOne!30306 r!7292) Nil!60868) lt!2157629)))

(declare-fun b!5277352 () Bool)

(assert (=> b!5277352 (= e!3281721 (= (head!11310 Nil!60868) (c!914175 (regOne!30306 r!7292))))))

(declare-fun b!5277353 () Bool)

(assert (=> b!5277353 (= e!3281716 e!3281719)))

(declare-fun c!914587 () Bool)

(assert (=> b!5277353 (= c!914587 ((_ is EmptyLang!14897) (regOne!30306 r!7292)))))

(declare-fun b!5277354 () Bool)

(declare-fun e!3281717 () Bool)

(assert (=> b!5277354 (= e!3281718 e!3281717)))

(declare-fun res!2238340 () Bool)

(assert (=> b!5277354 (=> res!2238340 e!3281717)))

(assert (=> b!5277354 (= res!2238340 call!375567)))

(declare-fun b!5277355 () Bool)

(declare-fun res!2238344 () Bool)

(assert (=> b!5277355 (=> res!2238344 e!3281717)))

(assert (=> b!5277355 (= res!2238344 (not (isEmpty!32823 (tail!10407 Nil!60868))))))

(declare-fun b!5277356 () Bool)

(assert (=> b!5277356 (= e!3281720 (nullable!5066 (regOne!30306 r!7292)))))

(declare-fun bm!375562 () Bool)

(assert (=> bm!375562 (= call!375567 (isEmpty!32823 Nil!60868))))

(declare-fun b!5277357 () Bool)

(assert (=> b!5277357 (= e!3281716 (= lt!2157629 call!375567))))

(declare-fun b!5277358 () Bool)

(assert (=> b!5277358 (= e!3281719 (not lt!2157629))))

(declare-fun b!5277359 () Bool)

(assert (=> b!5277359 (= e!3281717 (not (= (head!11310 Nil!60868) (c!914175 (regOne!30306 r!7292)))))))

(assert (= (and d!1698412 c!914588) b!5277356))

(assert (= (and d!1698412 (not c!914588)) b!5277348))

(assert (= (and d!1698412 c!914589) b!5277357))

(assert (= (and d!1698412 (not c!914589)) b!5277353))

(assert (= (and b!5277353 c!914587) b!5277358))

(assert (= (and b!5277353 (not c!914587)) b!5277346))

(assert (= (and b!5277346 (not res!2238345)) b!5277349))

(assert (= (and b!5277349 res!2238339) b!5277350))

(assert (= (and b!5277350 res!2238342) b!5277351))

(assert (= (and b!5277351 res!2238343) b!5277352))

(assert (= (and b!5277349 (not res!2238346)) b!5277347))

(assert (= (and b!5277347 res!2238341) b!5277354))

(assert (= (and b!5277354 (not res!2238340)) b!5277355))

(assert (= (and b!5277355 (not res!2238344)) b!5277359))

(assert (= (or b!5277357 b!5277350 b!5277354) bm!375562))

(declare-fun m!6315550 () Bool)

(assert (=> b!5277356 m!6315550))

(declare-fun m!6315552 () Bool)

(assert (=> b!5277355 m!6315552))

(assert (=> b!5277355 m!6315552))

(declare-fun m!6315554 () Bool)

(assert (=> b!5277355 m!6315554))

(declare-fun m!6315556 () Bool)

(assert (=> b!5277359 m!6315556))

(assert (=> b!5277351 m!6315552))

(assert (=> b!5277351 m!6315552))

(assert (=> b!5277351 m!6315554))

(declare-fun m!6315558 () Bool)

(assert (=> d!1698412 m!6315558))

(assert (=> d!1698412 m!6314908))

(assert (=> b!5277352 m!6315556))

(assert (=> bm!375562 m!6315558))

(assert (=> b!5277348 m!6315556))

(assert (=> b!5277348 m!6315556))

(declare-fun m!6315560 () Bool)

(assert (=> b!5277348 m!6315560))

(assert (=> b!5277348 m!6315552))

(assert (=> b!5277348 m!6315560))

(assert (=> b!5277348 m!6315552))

(declare-fun m!6315562 () Bool)

(assert (=> b!5277348 m!6315562))

(assert (=> d!1698066 d!1698412))

(assert (=> d!1698066 d!1698404))

(declare-fun d!1698416 () Bool)

(assert (=> d!1698416 (= (nullable!5066 (h!67314 (exprs!4781 lt!2157408))) (nullableFct!1448 (h!67314 (exprs!4781 lt!2157408))))))

(declare-fun bs!1222762 () Bool)

(assert (= bs!1222762 d!1698416))

(declare-fun m!6315564 () Bool)

(assert (=> bs!1222762 m!6315564))

(assert (=> b!5276725 d!1698416))

(declare-fun d!1698418 () Bool)

(declare-fun c!914595 () Bool)

(assert (=> d!1698418 (= c!914595 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281728 () Bool)

(assert (=> d!1698418 (= (matchZipper!1141 (derivationStepZipper!1140 ((_ map or) lt!2157430 lt!2157418) (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281728)))

(declare-fun b!5277371 () Bool)

(assert (=> b!5277371 (= e!3281728 (nullableZipper!1296 (derivationStepZipper!1140 ((_ map or) lt!2157430 lt!2157418) (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277372 () Bool)

(assert (=> b!5277372 (= e!3281728 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 ((_ map or) lt!2157430 lt!2157418) (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698418 c!914595) b!5277371))

(assert (= (and d!1698418 (not c!914595)) b!5277372))

(assert (=> d!1698418 m!6314592))

(declare-fun m!6315570 () Bool)

(assert (=> d!1698418 m!6315570))

(assert (=> b!5277371 m!6314598))

(declare-fun m!6315572 () Bool)

(assert (=> b!5277371 m!6315572))

(assert (=> b!5277372 m!6314592))

(declare-fun m!6315576 () Bool)

(assert (=> b!5277372 m!6315576))

(assert (=> b!5277372 m!6314598))

(assert (=> b!5277372 m!6315576))

(declare-fun m!6315580 () Bool)

(assert (=> b!5277372 m!6315580))

(assert (=> b!5277372 m!6314592))

(declare-fun m!6315584 () Bool)

(assert (=> b!5277372 m!6315584))

(assert (=> b!5277372 m!6315580))

(assert (=> b!5277372 m!6315584))

(declare-fun m!6315586 () Bool)

(assert (=> b!5277372 m!6315586))

(assert (=> b!5276323 d!1698418))

(declare-fun bs!1222763 () Bool)

(declare-fun d!1698422 () Bool)

(assert (= bs!1222763 (and d!1698422 b!5275973)))

(declare-fun lambda!266452 () Int)

(assert (=> bs!1222763 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266452 lambda!266288))))

(declare-fun bs!1222764 () Bool)

(assert (= bs!1222764 (and d!1698422 d!1698044)))

(assert (=> bs!1222764 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266452 lambda!266357))))

(declare-fun bs!1222765 () Bool)

(assert (= bs!1222765 (and d!1698422 d!1698056)))

(assert (=> bs!1222765 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266452 lambda!266362))))

(assert (=> d!1698422 true))

(assert (=> d!1698422 (= (derivationStepZipper!1140 ((_ map or) lt!2157430 lt!2157418) (head!11310 (t!374191 s!2326))) (flatMap!624 ((_ map or) lt!2157430 lt!2157418) lambda!266452))))

(declare-fun bs!1222766 () Bool)

(assert (= bs!1222766 d!1698422))

(declare-fun m!6315588 () Bool)

(assert (=> bs!1222766 m!6315588))

(assert (=> b!5276323 d!1698422))

(declare-fun d!1698424 () Bool)

(assert (=> d!1698424 (= (head!11310 (t!374191 s!2326)) (h!67316 (t!374191 s!2326)))))

(assert (=> b!5276323 d!1698424))

(declare-fun d!1698426 () Bool)

(assert (=> d!1698426 (= (tail!10407 (t!374191 s!2326)) (t!374191 (t!374191 s!2326)))))

(assert (=> b!5276323 d!1698426))

(declare-fun d!1698430 () Bool)

(assert (=> d!1698430 true))

(declare-fun setRes!33812 () Bool)

(assert (=> d!1698430 setRes!33812))

(declare-fun condSetEmpty!33812 () Bool)

(declare-fun res!2238356 () (InoxSet Context!8562))

(assert (=> d!1698430 (= condSetEmpty!33812 (= res!2238356 ((as const (Array Context!8562 Bool)) false)))))

(assert (=> d!1698430 (= (choose!39373 lt!2157425 lambda!266288) res!2238356)))

(declare-fun setIsEmpty!33812 () Bool)

(assert (=> setIsEmpty!33812 setRes!33812))

(declare-fun setNonEmpty!33812 () Bool)

(declare-fun e!3281736 () Bool)

(declare-fun tp!1474488 () Bool)

(declare-fun setElem!33812 () Context!8562)

(assert (=> setNonEmpty!33812 (= setRes!33812 (and tp!1474488 (inv!80489 setElem!33812) e!3281736))))

(declare-fun setRest!33812 () (InoxSet Context!8562))

(assert (=> setNonEmpty!33812 (= res!2238356 ((_ map or) (store ((as const (Array Context!8562 Bool)) false) setElem!33812 true) setRest!33812))))

(declare-fun b!5277387 () Bool)

(declare-fun tp!1474489 () Bool)

(assert (=> b!5277387 (= e!3281736 tp!1474489)))

(assert (= (and d!1698430 condSetEmpty!33812) setIsEmpty!33812))

(assert (= (and d!1698430 (not condSetEmpty!33812)) setNonEmpty!33812))

(assert (= setNonEmpty!33812 b!5277387))

(declare-fun m!6315604 () Bool)

(assert (=> setNonEmpty!33812 m!6315604))

(assert (=> d!1697972 d!1698430))

(declare-fun d!1698432 () Bool)

(assert (=> d!1698432 true))

(assert (=> d!1698432 true))

(declare-fun res!2238359 () Bool)

(assert (=> d!1698432 (= (choose!39377 lambda!266287) res!2238359)))

(assert (=> d!1698064 d!1698432))

(declare-fun d!1698434 () Bool)

(declare-fun c!914599 () Bool)

(assert (=> d!1698434 (= c!914599 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281737 () Bool)

(assert (=> d!1698434 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157421 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281737)))

(declare-fun b!5277388 () Bool)

(assert (=> b!5277388 (= e!3281737 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157421 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277389 () Bool)

(assert (=> b!5277389 (= e!3281737 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157421 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698434 c!914599) b!5277388))

(assert (= (and d!1698434 (not c!914599)) b!5277389))

(assert (=> d!1698434 m!6314592))

(assert (=> d!1698434 m!6315570))

(assert (=> b!5277388 m!6314668))

(declare-fun m!6315606 () Bool)

(assert (=> b!5277388 m!6315606))

(assert (=> b!5277389 m!6314592))

(assert (=> b!5277389 m!6315576))

(assert (=> b!5277389 m!6314668))

(assert (=> b!5277389 m!6315576))

(declare-fun m!6315608 () Bool)

(assert (=> b!5277389 m!6315608))

(assert (=> b!5277389 m!6314592))

(assert (=> b!5277389 m!6315584))

(assert (=> b!5277389 m!6315608))

(assert (=> b!5277389 m!6315584))

(declare-fun m!6315610 () Bool)

(assert (=> b!5277389 m!6315610))

(assert (=> b!5276436 d!1698434))

(declare-fun bs!1222767 () Bool)

(declare-fun d!1698436 () Bool)

(assert (= bs!1222767 (and d!1698436 b!5275973)))

(declare-fun lambda!266453 () Int)

(assert (=> bs!1222767 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266453 lambda!266288))))

(declare-fun bs!1222768 () Bool)

(assert (= bs!1222768 (and d!1698436 d!1698044)))

(assert (=> bs!1222768 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266453 lambda!266357))))

(declare-fun bs!1222769 () Bool)

(assert (= bs!1222769 (and d!1698436 d!1698056)))

(assert (=> bs!1222769 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266453 lambda!266362))))

(declare-fun bs!1222770 () Bool)

(assert (= bs!1222770 (and d!1698436 d!1698422)))

(assert (=> bs!1222770 (= lambda!266453 lambda!266452)))

(assert (=> d!1698436 true))

(assert (=> d!1698436 (= (derivationStepZipper!1140 lt!2157421 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157421 lambda!266453))))

(declare-fun bs!1222771 () Bool)

(assert (= bs!1222771 d!1698436))

(declare-fun m!6315612 () Bool)

(assert (=> bs!1222771 m!6315612))

(assert (=> b!5276436 d!1698436))

(assert (=> b!5276436 d!1698424))

(assert (=> b!5276436 d!1698426))

(declare-fun d!1698438 () Bool)

(declare-fun e!3281752 () Bool)

(assert (=> d!1698438 e!3281752))

(declare-fun res!2238365 () Bool)

(assert (=> d!1698438 (=> (not res!2238365) (not e!3281752))))

(declare-fun lt!2157635 () List!60992)

(declare-fun content!10834 (List!60992) (InoxSet C!30064))

(assert (=> d!1698438 (= res!2238365 (= (content!10834 lt!2157635) ((_ map or) (content!10834 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868))) (content!10834 (t!374191 s!2326)))))))

(declare-fun e!3281753 () List!60992)

(assert (=> d!1698438 (= lt!2157635 e!3281753)))

(declare-fun c!914612 () Bool)

(assert (=> d!1698438 (= c!914612 ((_ is Nil!60868) (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868))))))

(assert (=> d!1698438 (= (++!13276 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (t!374191 s!2326)) lt!2157635)))

(declare-fun b!5277419 () Bool)

(assert (=> b!5277419 (= e!3281753 (Cons!60868 (h!67316 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868))) (++!13276 (t!374191 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868))) (t!374191 s!2326))))))

(declare-fun b!5277420 () Bool)

(declare-fun res!2238364 () Bool)

(assert (=> b!5277420 (=> (not res!2238364) (not e!3281752))))

(declare-fun size!39752 (List!60992) Int)

(assert (=> b!5277420 (= res!2238364 (= (size!39752 lt!2157635) (+ (size!39752 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868))) (size!39752 (t!374191 s!2326)))))))

(declare-fun b!5277421 () Bool)

(assert (=> b!5277421 (= e!3281752 (or (not (= (t!374191 s!2326) Nil!60868)) (= lt!2157635 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)))))))

(declare-fun b!5277418 () Bool)

(assert (=> b!5277418 (= e!3281753 (t!374191 s!2326))))

(assert (= (and d!1698438 c!914612) b!5277418))

(assert (= (and d!1698438 (not c!914612)) b!5277419))

(assert (= (and d!1698438 res!2238365) b!5277420))

(assert (= (and b!5277420 res!2238364) b!5277421))

(declare-fun m!6315614 () Bool)

(assert (=> d!1698438 m!6315614))

(assert (=> d!1698438 m!6314916))

(declare-fun m!6315616 () Bool)

(assert (=> d!1698438 m!6315616))

(declare-fun m!6315618 () Bool)

(assert (=> d!1698438 m!6315618))

(declare-fun m!6315620 () Bool)

(assert (=> b!5277419 m!6315620))

(declare-fun m!6315622 () Bool)

(assert (=> b!5277420 m!6315622))

(assert (=> b!5277420 m!6314916))

(declare-fun m!6315624 () Bool)

(assert (=> b!5277420 m!6315624))

(declare-fun m!6315626 () Bool)

(assert (=> b!5277420 m!6315626))

(assert (=> b!5276752 d!1698438))

(declare-fun d!1698440 () Bool)

(declare-fun e!3281754 () Bool)

(assert (=> d!1698440 e!3281754))

(declare-fun res!2238367 () Bool)

(assert (=> d!1698440 (=> (not res!2238367) (not e!3281754))))

(declare-fun lt!2157636 () List!60992)

(assert (=> d!1698440 (= res!2238367 (= (content!10834 lt!2157636) ((_ map or) (content!10834 Nil!60868) (content!10834 (Cons!60868 (h!67316 s!2326) Nil!60868)))))))

(declare-fun e!3281755 () List!60992)

(assert (=> d!1698440 (= lt!2157636 e!3281755)))

(declare-fun c!914613 () Bool)

(assert (=> d!1698440 (= c!914613 ((_ is Nil!60868) Nil!60868))))

(assert (=> d!1698440 (= (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) lt!2157636)))

(declare-fun b!5277423 () Bool)

(assert (=> b!5277423 (= e!3281755 (Cons!60868 (h!67316 Nil!60868) (++!13276 (t!374191 Nil!60868) (Cons!60868 (h!67316 s!2326) Nil!60868))))))

(declare-fun b!5277424 () Bool)

(declare-fun res!2238366 () Bool)

(assert (=> b!5277424 (=> (not res!2238366) (not e!3281754))))

(assert (=> b!5277424 (= res!2238366 (= (size!39752 lt!2157636) (+ (size!39752 Nil!60868) (size!39752 (Cons!60868 (h!67316 s!2326) Nil!60868)))))))

(declare-fun b!5277425 () Bool)

(assert (=> b!5277425 (= e!3281754 (or (not (= (Cons!60868 (h!67316 s!2326) Nil!60868) Nil!60868)) (= lt!2157636 Nil!60868)))))

(declare-fun b!5277422 () Bool)

(assert (=> b!5277422 (= e!3281755 (Cons!60868 (h!67316 s!2326) Nil!60868))))

(assert (= (and d!1698440 c!914613) b!5277422))

(assert (= (and d!1698440 (not c!914613)) b!5277423))

(assert (= (and d!1698440 res!2238367) b!5277424))

(assert (= (and b!5277424 res!2238366) b!5277425))

(declare-fun m!6315628 () Bool)

(assert (=> d!1698440 m!6315628))

(declare-fun m!6315630 () Bool)

(assert (=> d!1698440 m!6315630))

(declare-fun m!6315632 () Bool)

(assert (=> d!1698440 m!6315632))

(declare-fun m!6315634 () Bool)

(assert (=> b!5277423 m!6315634))

(declare-fun m!6315636 () Bool)

(assert (=> b!5277424 m!6315636))

(declare-fun m!6315638 () Bool)

(assert (=> b!5277424 m!6315638))

(declare-fun m!6315640 () Bool)

(assert (=> b!5277424 m!6315640))

(assert (=> b!5276752 d!1698440))

(declare-fun d!1698442 () Bool)

(assert (=> d!1698442 (= (++!13276 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (t!374191 s!2326)) s!2326)))

(declare-fun lt!2157640 () Unit!153106)

(declare-fun choose!39383 (List!60992 C!30064 List!60992 List!60992) Unit!153106)

(assert (=> d!1698442 (= lt!2157640 (choose!39383 Nil!60868 (h!67316 s!2326) (t!374191 s!2326) s!2326))))

(assert (=> d!1698442 (= (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) (t!374191 s!2326))) s!2326)))

(assert (=> d!1698442 (= (lemmaMoveElementToOtherListKeepsConcatEq!1691 Nil!60868 (h!67316 s!2326) (t!374191 s!2326) s!2326) lt!2157640)))

(declare-fun bs!1222772 () Bool)

(assert (= bs!1222772 d!1698442))

(assert (=> bs!1222772 m!6314916))

(assert (=> bs!1222772 m!6314916))

(assert (=> bs!1222772 m!6314918))

(declare-fun m!6315648 () Bool)

(assert (=> bs!1222772 m!6315648))

(declare-fun m!6315650 () Bool)

(assert (=> bs!1222772 m!6315650))

(assert (=> b!5276752 d!1698442))

(declare-fun b!5277436 () Bool)

(declare-fun e!3281762 () Bool)

(assert (=> b!5277436 (= e!3281762 (matchR!7082 (regTwo!30306 r!7292) (t!374191 s!2326)))))

(declare-fun b!5277437 () Bool)

(declare-fun e!3281764 () Option!15008)

(assert (=> b!5277437 (= e!3281764 None!15007)))

(declare-fun b!5277438 () Bool)

(declare-fun e!3281763 () Option!15008)

(assert (=> b!5277438 (= e!3281763 e!3281764)))

(declare-fun c!914620 () Bool)

(assert (=> b!5277438 (= c!914620 ((_ is Nil!60868) (t!374191 s!2326)))))

(declare-fun b!5277439 () Bool)

(assert (=> b!5277439 (= e!3281763 (Some!15007 (tuple2!64193 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (t!374191 s!2326))))))

(declare-fun b!5277440 () Bool)

(declare-fun lt!2157643 () Unit!153106)

(declare-fun lt!2157642 () Unit!153106)

(assert (=> b!5277440 (= lt!2157643 lt!2157642)))

(assert (=> b!5277440 (= (++!13276 (++!13276 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (Cons!60868 (h!67316 (t!374191 s!2326)) Nil!60868)) (t!374191 (t!374191 s!2326))) s!2326)))

(assert (=> b!5277440 (= lt!2157642 (lemmaMoveElementToOtherListKeepsConcatEq!1691 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (h!67316 (t!374191 s!2326)) (t!374191 (t!374191 s!2326)) s!2326))))

(assert (=> b!5277440 (= e!3281764 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) (++!13276 (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (Cons!60868 (h!67316 (t!374191 s!2326)) Nil!60868)) (t!374191 (t!374191 s!2326)) s!2326))))

(declare-fun b!5277441 () Bool)

(declare-fun e!3281765 () Bool)

(declare-fun lt!2157641 () Option!15008)

(assert (=> b!5277441 (= e!3281765 (= (++!13276 (_1!35399 (get!20930 lt!2157641)) (_2!35399 (get!20930 lt!2157641))) s!2326))))

(declare-fun b!5277443 () Bool)

(declare-fun res!2238369 () Bool)

(assert (=> b!5277443 (=> (not res!2238369) (not e!3281765))))

(assert (=> b!5277443 (= res!2238369 (matchR!7082 (regTwo!30306 r!7292) (_2!35399 (get!20930 lt!2157641))))))

(declare-fun b!5277444 () Bool)

(declare-fun res!2238372 () Bool)

(assert (=> b!5277444 (=> (not res!2238372) (not e!3281765))))

(assert (=> b!5277444 (= res!2238372 (matchR!7082 (regOne!30306 r!7292) (_1!35399 (get!20930 lt!2157641))))))

(declare-fun d!1698446 () Bool)

(declare-fun e!3281761 () Bool)

(assert (=> d!1698446 e!3281761))

(declare-fun res!2238368 () Bool)

(assert (=> d!1698446 (=> res!2238368 e!3281761)))

(assert (=> d!1698446 (= res!2238368 e!3281765)))

(declare-fun res!2238370 () Bool)

(assert (=> d!1698446 (=> (not res!2238370) (not e!3281765))))

(assert (=> d!1698446 (= res!2238370 (isDefined!11711 lt!2157641))))

(assert (=> d!1698446 (= lt!2157641 e!3281763)))

(declare-fun c!914619 () Bool)

(assert (=> d!1698446 (= c!914619 e!3281762)))

(declare-fun res!2238371 () Bool)

(assert (=> d!1698446 (=> (not res!2238371) (not e!3281762))))

(assert (=> d!1698446 (= res!2238371 (matchR!7082 (regOne!30306 r!7292) (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868))))))

(assert (=> d!1698446 (validRegex!6633 (regOne!30306 r!7292))))

(assert (=> d!1698446 (= (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) (++!13276 Nil!60868 (Cons!60868 (h!67316 s!2326) Nil!60868)) (t!374191 s!2326) s!2326) lt!2157641)))

(declare-fun b!5277442 () Bool)

(assert (=> b!5277442 (= e!3281761 (not (isDefined!11711 lt!2157641)))))

(assert (= (and d!1698446 res!2238371) b!5277436))

(assert (= (and d!1698446 c!914619) b!5277439))

(assert (= (and d!1698446 (not c!914619)) b!5277438))

(assert (= (and b!5277438 c!914620) b!5277437))

(assert (= (and b!5277438 (not c!914620)) b!5277440))

(assert (= (and d!1698446 res!2238370) b!5277444))

(assert (= (and b!5277444 res!2238372) b!5277443))

(assert (= (and b!5277443 res!2238369) b!5277441))

(assert (= (and d!1698446 (not res!2238368)) b!5277442))

(declare-fun m!6315654 () Bool)

(assert (=> b!5277443 m!6315654))

(declare-fun m!6315656 () Bool)

(assert (=> b!5277443 m!6315656))

(declare-fun m!6315658 () Bool)

(assert (=> d!1698446 m!6315658))

(assert (=> d!1698446 m!6314916))

(declare-fun m!6315660 () Bool)

(assert (=> d!1698446 m!6315660))

(assert (=> d!1698446 m!6314908))

(assert (=> b!5277444 m!6315654))

(declare-fun m!6315662 () Bool)

(assert (=> b!5277444 m!6315662))

(assert (=> b!5277441 m!6315654))

(declare-fun m!6315664 () Bool)

(assert (=> b!5277441 m!6315664))

(declare-fun m!6315666 () Bool)

(assert (=> b!5277436 m!6315666))

(assert (=> b!5277440 m!6314916))

(declare-fun m!6315668 () Bool)

(assert (=> b!5277440 m!6315668))

(assert (=> b!5277440 m!6315668))

(declare-fun m!6315670 () Bool)

(assert (=> b!5277440 m!6315670))

(assert (=> b!5277440 m!6314916))

(declare-fun m!6315672 () Bool)

(assert (=> b!5277440 m!6315672))

(assert (=> b!5277440 m!6315668))

(declare-fun m!6315674 () Bool)

(assert (=> b!5277440 m!6315674))

(assert (=> b!5277442 m!6315658))

(assert (=> b!5276752 d!1698446))

(declare-fun b!5277456 () Bool)

(declare-fun res!2238380 () Bool)

(declare-fun e!3281772 () Bool)

(assert (=> b!5277456 (=> res!2238380 e!3281772)))

(assert (=> b!5277456 (= res!2238380 (not ((_ is ElementMatch!14897) (regOne!30306 r!7292))))))

(declare-fun e!3281776 () Bool)

(assert (=> b!5277456 (= e!3281776 e!3281772)))

(declare-fun b!5277457 () Bool)

(declare-fun e!3281775 () Bool)

(assert (=> b!5277457 (= e!3281772 e!3281775)))

(declare-fun res!2238376 () Bool)

(assert (=> b!5277457 (=> (not res!2238376) (not e!3281775))))

(declare-fun lt!2157644 () Bool)

(assert (=> b!5277457 (= res!2238376 (not lt!2157644))))

(declare-fun b!5277458 () Bool)

(declare-fun e!3281777 () Bool)

(assert (=> b!5277458 (= e!3281777 (matchR!7082 (derivativeStep!4117 (regOne!30306 r!7292) (head!11310 (_1!35399 (get!20930 lt!2157555)))) (tail!10407 (_1!35399 (get!20930 lt!2157555)))))))

(declare-fun b!5277459 () Bool)

(declare-fun res!2238381 () Bool)

(assert (=> b!5277459 (=> res!2238381 e!3281772)))

(declare-fun e!3281778 () Bool)

(assert (=> b!5277459 (= res!2238381 e!3281778)))

(declare-fun res!2238374 () Bool)

(assert (=> b!5277459 (=> (not res!2238374) (not e!3281778))))

(assert (=> b!5277459 (= res!2238374 lt!2157644)))

(declare-fun b!5277460 () Bool)

(declare-fun res!2238377 () Bool)

(assert (=> b!5277460 (=> (not res!2238377) (not e!3281778))))

(declare-fun call!375593 () Bool)

(assert (=> b!5277460 (= res!2238377 (not call!375593))))

(declare-fun b!5277461 () Bool)

(declare-fun res!2238378 () Bool)

(assert (=> b!5277461 (=> (not res!2238378) (not e!3281778))))

(assert (=> b!5277461 (= res!2238378 (isEmpty!32823 (tail!10407 (_1!35399 (get!20930 lt!2157555)))))))

(declare-fun d!1698450 () Bool)

(declare-fun e!3281773 () Bool)

(assert (=> d!1698450 e!3281773))

(declare-fun c!914628 () Bool)

(assert (=> d!1698450 (= c!914628 ((_ is EmptyExpr!14897) (regOne!30306 r!7292)))))

(assert (=> d!1698450 (= lt!2157644 e!3281777)))

(declare-fun c!914627 () Bool)

(assert (=> d!1698450 (= c!914627 (isEmpty!32823 (_1!35399 (get!20930 lt!2157555))))))

(assert (=> d!1698450 (validRegex!6633 (regOne!30306 r!7292))))

(assert (=> d!1698450 (= (matchR!7082 (regOne!30306 r!7292) (_1!35399 (get!20930 lt!2157555))) lt!2157644)))

(declare-fun b!5277462 () Bool)

(assert (=> b!5277462 (= e!3281778 (= (head!11310 (_1!35399 (get!20930 lt!2157555))) (c!914175 (regOne!30306 r!7292))))))

(declare-fun b!5277463 () Bool)

(assert (=> b!5277463 (= e!3281773 e!3281776)))

(declare-fun c!914626 () Bool)

(assert (=> b!5277463 (= c!914626 ((_ is EmptyLang!14897) (regOne!30306 r!7292)))))

(declare-fun b!5277464 () Bool)

(declare-fun e!3281774 () Bool)

(assert (=> b!5277464 (= e!3281775 e!3281774)))

(declare-fun res!2238375 () Bool)

(assert (=> b!5277464 (=> res!2238375 e!3281774)))

(assert (=> b!5277464 (= res!2238375 call!375593)))

(declare-fun b!5277465 () Bool)

(declare-fun res!2238379 () Bool)

(assert (=> b!5277465 (=> res!2238379 e!3281774)))

(assert (=> b!5277465 (= res!2238379 (not (isEmpty!32823 (tail!10407 (_1!35399 (get!20930 lt!2157555))))))))

(declare-fun b!5277466 () Bool)

(assert (=> b!5277466 (= e!3281777 (nullable!5066 (regOne!30306 r!7292)))))

(declare-fun bm!375588 () Bool)

(assert (=> bm!375588 (= call!375593 (isEmpty!32823 (_1!35399 (get!20930 lt!2157555))))))

(declare-fun b!5277467 () Bool)

(assert (=> b!5277467 (= e!3281773 (= lt!2157644 call!375593))))

(declare-fun b!5277468 () Bool)

(assert (=> b!5277468 (= e!3281776 (not lt!2157644))))

(declare-fun b!5277469 () Bool)

(assert (=> b!5277469 (= e!3281774 (not (= (head!11310 (_1!35399 (get!20930 lt!2157555))) (c!914175 (regOne!30306 r!7292)))))))

(assert (= (and d!1698450 c!914627) b!5277466))

(assert (= (and d!1698450 (not c!914627)) b!5277458))

(assert (= (and d!1698450 c!914628) b!5277467))

(assert (= (and d!1698450 (not c!914628)) b!5277463))

(assert (= (and b!5277463 c!914626) b!5277468))

(assert (= (and b!5277463 (not c!914626)) b!5277456))

(assert (= (and b!5277456 (not res!2238380)) b!5277459))

(assert (= (and b!5277459 res!2238374) b!5277460))

(assert (= (and b!5277460 res!2238377) b!5277461))

(assert (= (and b!5277461 res!2238378) b!5277462))

(assert (= (and b!5277459 (not res!2238381)) b!5277457))

(assert (= (and b!5277457 res!2238376) b!5277464))

(assert (= (and b!5277464 (not res!2238375)) b!5277465))

(assert (= (and b!5277465 (not res!2238379)) b!5277469))

(assert (= (or b!5277467 b!5277460 b!5277464) bm!375588))

(assert (=> b!5277466 m!6315550))

(declare-fun m!6315682 () Bool)

(assert (=> b!5277465 m!6315682))

(assert (=> b!5277465 m!6315682))

(declare-fun m!6315684 () Bool)

(assert (=> b!5277465 m!6315684))

(declare-fun m!6315686 () Bool)

(assert (=> b!5277469 m!6315686))

(assert (=> b!5277461 m!6315682))

(assert (=> b!5277461 m!6315682))

(assert (=> b!5277461 m!6315684))

(declare-fun m!6315692 () Bool)

(assert (=> d!1698450 m!6315692))

(assert (=> d!1698450 m!6314908))

(assert (=> b!5277462 m!6315686))

(assert (=> bm!375588 m!6315692))

(assert (=> b!5277458 m!6315686))

(assert (=> b!5277458 m!6315686))

(declare-fun m!6315694 () Bool)

(assert (=> b!5277458 m!6315694))

(assert (=> b!5277458 m!6315682))

(assert (=> b!5277458 m!6315694))

(assert (=> b!5277458 m!6315682))

(declare-fun m!6315696 () Bool)

(assert (=> b!5277458 m!6315696))

(assert (=> b!5276756 d!1698450))

(declare-fun d!1698454 () Bool)

(assert (=> d!1698454 (= (get!20930 lt!2157555) (v!51036 lt!2157555))))

(assert (=> b!5276756 d!1698454))

(declare-fun call!375596 () List!60990)

(declare-fun c!914633 () Bool)

(declare-fun c!914630 () Bool)

(declare-fun bm!375589 () Bool)

(assert (=> bm!375589 (= call!375596 ($colon$colon!1346 (exprs!4781 (ite c!914319 lt!2157412 (Context!8563 call!375444))) (ite (or c!914633 c!914630) (regTwo!30306 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))) (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))))))

(declare-fun b!5277470 () Bool)

(declare-fun e!3281779 () Bool)

(assert (=> b!5277470 (= e!3281779 (nullable!5066 (regOne!30306 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))))))

(declare-fun b!5277471 () Bool)

(declare-fun e!3281781 () (InoxSet Context!8562))

(declare-fun call!375594 () (InoxSet Context!8562))

(declare-fun call!375598 () (InoxSet Context!8562))

(assert (=> b!5277471 (= e!3281781 ((_ map or) call!375594 call!375598))))

(declare-fun e!3281783 () (InoxSet Context!8562))

(declare-fun b!5277472 () Bool)

(assert (=> b!5277472 (= e!3281783 (store ((as const (Array Context!8562 Bool)) false) (ite c!914319 lt!2157412 (Context!8563 call!375444)) true))))

(declare-fun b!5277473 () Bool)

(declare-fun e!3281784 () (InoxSet Context!8562))

(declare-fun e!3281782 () (InoxSet Context!8562))

(assert (=> b!5277473 (= e!3281784 e!3281782)))

(assert (=> b!5277473 (= c!914630 ((_ is Concat!23742) (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun bm!375590 () Bool)

(declare-fun call!375599 () (InoxSet Context!8562))

(assert (=> bm!375590 (= call!375599 call!375594)))

(declare-fun b!5277474 () Bool)

(declare-fun e!3281780 () (InoxSet Context!8562))

(assert (=> b!5277474 (= e!3281780 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5277475 () Bool)

(assert (=> b!5277475 (= c!914633 e!3281779)))

(declare-fun res!2238382 () Bool)

(assert (=> b!5277475 (=> (not res!2238382) (not e!3281779))))

(assert (=> b!5277475 (= res!2238382 ((_ is Concat!23742) (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(assert (=> b!5277475 (= e!3281781 e!3281784)))

(declare-fun b!5277476 () Bool)

(assert (=> b!5277476 (= e!3281783 e!3281781)))

(declare-fun c!914631 () Bool)

(assert (=> b!5277476 (= c!914631 ((_ is Union!14897) (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun bm!375591 () Bool)

(assert (=> bm!375591 (= call!375598 (derivationStepZipperDown!345 (ite c!914631 (regTwo!30307 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))) (regOne!30306 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))) (ite c!914631 (ite c!914319 lt!2157412 (Context!8563 call!375444)) (Context!8563 call!375596)) (h!67316 s!2326)))))

(declare-fun b!5277477 () Bool)

(declare-fun c!914629 () Bool)

(assert (=> b!5277477 (= c!914629 ((_ is Star!14897) (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(assert (=> b!5277477 (= e!3281782 e!3281780)))

(declare-fun b!5277478 () Bool)

(declare-fun call!375597 () (InoxSet Context!8562))

(assert (=> b!5277478 (= e!3281782 call!375597)))

(declare-fun bm!375592 () Bool)

(assert (=> bm!375592 (= call!375597 call!375599)))

(declare-fun b!5277479 () Bool)

(assert (=> b!5277479 (= e!3281780 call!375597)))

(declare-fun b!5277480 () Bool)

(assert (=> b!5277480 (= e!3281784 ((_ map or) call!375598 call!375599))))

(declare-fun c!914632 () Bool)

(declare-fun d!1698456 () Bool)

(assert (=> d!1698456 (= c!914632 (and ((_ is ElementMatch!14897) (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))) (= (c!914175 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))) (h!67316 s!2326))))))

(assert (=> d!1698456 (= (derivationStepZipperDown!345 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))) (ite c!914319 lt!2157412 (Context!8563 call!375444)) (h!67316 s!2326)) e!3281783)))

(declare-fun bm!375593 () Bool)

(declare-fun call!375595 () List!60990)

(assert (=> bm!375593 (= call!375594 (derivationStepZipperDown!345 (ite c!914631 (regOne!30307 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))) (ite c!914633 (regTwo!30306 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))) (ite c!914630 (regOne!30306 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))) (reg!15226 (ite c!914319 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))))) (ite (or c!914631 c!914633) (ite c!914319 lt!2157412 (Context!8563 call!375444)) (Context!8563 call!375595)) (h!67316 s!2326)))))

(declare-fun bm!375594 () Bool)

(assert (=> bm!375594 (= call!375595 call!375596)))

(assert (= (and d!1698456 c!914632) b!5277472))

(assert (= (and d!1698456 (not c!914632)) b!5277476))

(assert (= (and b!5277476 c!914631) b!5277471))

(assert (= (and b!5277476 (not c!914631)) b!5277475))

(assert (= (and b!5277475 res!2238382) b!5277470))

(assert (= (and b!5277475 c!914633) b!5277480))

(assert (= (and b!5277475 (not c!914633)) b!5277473))

(assert (= (and b!5277473 c!914630) b!5277478))

(assert (= (and b!5277473 (not c!914630)) b!5277477))

(assert (= (and b!5277477 c!914629) b!5277479))

(assert (= (and b!5277477 (not c!914629)) b!5277474))

(assert (= (or b!5277478 b!5277479) bm!375594))

(assert (= (or b!5277478 b!5277479) bm!375592))

(assert (= (or b!5277480 bm!375594) bm!375589))

(assert (= (or b!5277480 bm!375592) bm!375590))

(assert (= (or b!5277471 b!5277480) bm!375591))

(assert (= (or b!5277471 bm!375590) bm!375593))

(declare-fun m!6315706 () Bool)

(assert (=> bm!375591 m!6315706))

(declare-fun m!6315708 () Bool)

(assert (=> bm!375593 m!6315708))

(declare-fun m!6315710 () Bool)

(assert (=> bm!375589 m!6315710))

(declare-fun m!6315712 () Bool)

(assert (=> b!5277470 m!6315712))

(declare-fun m!6315714 () Bool)

(assert (=> b!5277472 m!6315714))

(assert (=> bm!375439 d!1698456))

(declare-fun b!5277523 () Bool)

(declare-fun e!3281819 () Bool)

(declare-fun call!375608 () Bool)

(assert (=> b!5277523 (= e!3281819 call!375608)))

(declare-fun b!5277524 () Bool)

(declare-fun e!3281815 () Bool)

(assert (=> b!5277524 (= e!3281815 call!375608)))

(declare-fun bm!375602 () Bool)

(declare-fun call!375607 () Bool)

(declare-fun c!914644 () Bool)

(assert (=> bm!375602 (= call!375607 (nullable!5066 (ite c!914644 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun b!5277525 () Bool)

(declare-fun e!3281816 () Bool)

(declare-fun e!3281817 () Bool)

(assert (=> b!5277525 (= e!3281816 e!3281817)))

(declare-fun res!2238405 () Bool)

(assert (=> b!5277525 (=> res!2238405 e!3281817)))

(assert (=> b!5277525 (= res!2238405 ((_ is Star!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5277526 () Bool)

(declare-fun e!3281818 () Bool)

(assert (=> b!5277526 (= e!3281818 e!3281819)))

(declare-fun res!2238407 () Bool)

(assert (=> b!5277526 (= res!2238407 call!375607)))

(assert (=> b!5277526 (=> res!2238407 e!3281819)))

(declare-fun b!5277527 () Bool)

(assert (=> b!5277527 (= e!3281817 e!3281818)))

(assert (=> b!5277527 (= c!914644 ((_ is Union!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun d!1698464 () Bool)

(declare-fun res!2238408 () Bool)

(declare-fun e!3281820 () Bool)

(assert (=> d!1698464 (=> res!2238408 e!3281820)))

(assert (=> d!1698464 (= res!2238408 ((_ is EmptyExpr!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> d!1698464 (= (nullableFct!1448 (h!67314 (exprs!4781 (h!67315 zl!343)))) e!3281820)))

(declare-fun b!5277528 () Bool)

(assert (=> b!5277528 (= e!3281818 e!3281815)))

(declare-fun res!2238406 () Bool)

(assert (=> b!5277528 (= res!2238406 call!375607)))

(assert (=> b!5277528 (=> (not res!2238406) (not e!3281815))))

(declare-fun bm!375603 () Bool)

(assert (=> bm!375603 (= call!375608 (nullable!5066 (ite c!914644 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun b!5277529 () Bool)

(assert (=> b!5277529 (= e!3281820 e!3281816)))

(declare-fun res!2238409 () Bool)

(assert (=> b!5277529 (=> (not res!2238409) (not e!3281816))))

(assert (=> b!5277529 (= res!2238409 (and (not ((_ is EmptyLang!14897) (h!67314 (exprs!4781 (h!67315 zl!343))))) (not ((_ is ElementMatch!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(assert (= (and d!1698464 (not res!2238408)) b!5277529))

(assert (= (and b!5277529 res!2238409) b!5277525))

(assert (= (and b!5277525 (not res!2238405)) b!5277527))

(assert (= (and b!5277527 c!914644) b!5277526))

(assert (= (and b!5277527 (not c!914644)) b!5277528))

(assert (= (and b!5277526 (not res!2238407)) b!5277523))

(assert (= (and b!5277528 res!2238406) b!5277524))

(assert (= (or b!5277523 b!5277524) bm!375603))

(assert (= (or b!5277526 b!5277528) bm!375602))

(declare-fun m!6315758 () Bool)

(assert (=> bm!375602 m!6315758))

(declare-fun m!6315760 () Bool)

(assert (=> bm!375603 m!6315760))

(assert (=> d!1697948 d!1698464))

(assert (=> b!5276283 d!1698030))

(declare-fun d!1698476 () Bool)

(assert (=> d!1698476 (= (isEmpty!32819 (tail!10408 (exprs!4781 (h!67315 zl!343)))) ((_ is Nil!60866) (tail!10408 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> b!5276530 d!1698476))

(declare-fun d!1698478 () Bool)

(assert (=> d!1698478 (= (tail!10408 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))

(assert (=> b!5276530 d!1698478))

(assert (=> bm!375450 d!1698372))

(declare-fun d!1698480 () Bool)

(assert (=> d!1698480 (= (isEmpty!32819 (unfocusZipperList!339 zl!343)) ((_ is Nil!60866) (unfocusZipperList!339 zl!343)))))

(assert (=> b!5276798 d!1698480))

(assert (=> b!5276524 d!1698014))

(declare-fun c!914646 () Bool)

(declare-fun bm!375604 () Bool)

(declare-fun call!375611 () List!60990)

(declare-fun c!914649 () Bool)

(assert (=> bm!375604 (= call!375611 ($colon$colon!1346 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343))))) (ite (or c!914649 c!914646) (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (h!67314 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun b!5277530 () Bool)

(declare-fun e!3281821 () Bool)

(assert (=> b!5277530 (= e!3281821 (nullable!5066 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun b!5277531 () Bool)

(declare-fun e!3281823 () (InoxSet Context!8562))

(declare-fun call!375609 () (InoxSet Context!8562))

(declare-fun call!375613 () (InoxSet Context!8562))

(assert (=> b!5277531 (= e!3281823 ((_ map or) call!375609 call!375613))))

(declare-fun b!5277532 () Bool)

(declare-fun e!3281825 () (InoxSet Context!8562))

(assert (=> b!5277532 (= e!3281825 (store ((as const (Array Context!8562 Bool)) false) (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))) true))))

(declare-fun b!5277533 () Bool)

(declare-fun e!3281826 () (InoxSet Context!8562))

(declare-fun e!3281824 () (InoxSet Context!8562))

(assert (=> b!5277533 (= e!3281826 e!3281824)))

(assert (=> b!5277533 (= c!914646 ((_ is Concat!23742) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun bm!375605 () Bool)

(declare-fun call!375614 () (InoxSet Context!8562))

(assert (=> bm!375605 (= call!375614 call!375609)))

(declare-fun b!5277534 () Bool)

(declare-fun e!3281822 () (InoxSet Context!8562))

(assert (=> b!5277534 (= e!3281822 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5277535 () Bool)

(assert (=> b!5277535 (= c!914649 e!3281821)))

(declare-fun res!2238410 () Bool)

(assert (=> b!5277535 (=> (not res!2238410) (not e!3281821))))

(assert (=> b!5277535 (= res!2238410 ((_ is Concat!23742) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> b!5277535 (= e!3281823 e!3281826)))

(declare-fun b!5277536 () Bool)

(assert (=> b!5277536 (= e!3281825 e!3281823)))

(declare-fun c!914647 () Bool)

(assert (=> b!5277536 (= c!914647 ((_ is Union!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun bm!375606 () Bool)

(assert (=> bm!375606 (= call!375613 (derivationStepZipperDown!345 (ite c!914647 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))) (ite c!914647 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))) (Context!8563 call!375611)) (h!67316 s!2326)))))

(declare-fun b!5277537 () Bool)

(declare-fun c!914645 () Bool)

(assert (=> b!5277537 (= c!914645 ((_ is Star!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> b!5277537 (= e!3281824 e!3281822)))

(declare-fun b!5277538 () Bool)

(declare-fun call!375612 () (InoxSet Context!8562))

(assert (=> b!5277538 (= e!3281824 call!375612)))

(declare-fun bm!375607 () Bool)

(assert (=> bm!375607 (= call!375612 call!375614)))

(declare-fun b!5277539 () Bool)

(assert (=> b!5277539 (= e!3281822 call!375612)))

(declare-fun b!5277540 () Bool)

(assert (=> b!5277540 (= e!3281826 ((_ map or) call!375613 call!375614))))

(declare-fun d!1698482 () Bool)

(declare-fun c!914648 () Bool)

(assert (=> d!1698482 (= c!914648 (and ((_ is ElementMatch!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))) (= (c!914175 (h!67314 (exprs!4781 (h!67315 zl!343)))) (h!67316 s!2326))))))

(assert (=> d!1698482 (= (derivationStepZipperDown!345 (h!67314 (exprs!4781 (h!67315 zl!343))) (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))) (h!67316 s!2326)) e!3281825)))

(declare-fun call!375610 () List!60990)

(declare-fun bm!375608 () Bool)

(assert (=> bm!375608 (= call!375609 (derivationStepZipperDown!345 (ite c!914647 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914649 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914646 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343))))))) (ite (or c!914647 c!914649) (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))) (Context!8563 call!375610)) (h!67316 s!2326)))))

(declare-fun bm!375609 () Bool)

(assert (=> bm!375609 (= call!375610 call!375611)))

(assert (= (and d!1698482 c!914648) b!5277532))

(assert (= (and d!1698482 (not c!914648)) b!5277536))

(assert (= (and b!5277536 c!914647) b!5277531))

(assert (= (and b!5277536 (not c!914647)) b!5277535))

(assert (= (and b!5277535 res!2238410) b!5277530))

(assert (= (and b!5277535 c!914649) b!5277540))

(assert (= (and b!5277535 (not c!914649)) b!5277533))

(assert (= (and b!5277533 c!914646) b!5277538))

(assert (= (and b!5277533 (not c!914646)) b!5277537))

(assert (= (and b!5277537 c!914645) b!5277539))

(assert (= (and b!5277537 (not c!914645)) b!5277534))

(assert (= (or b!5277538 b!5277539) bm!375609))

(assert (= (or b!5277538 b!5277539) bm!375607))

(assert (= (or b!5277540 bm!375609) bm!375604))

(assert (= (or b!5277540 bm!375607) bm!375605))

(assert (= (or b!5277531 b!5277540) bm!375606))

(assert (= (or b!5277531 bm!375605) bm!375608))

(declare-fun m!6315762 () Bool)

(assert (=> bm!375606 m!6315762))

(declare-fun m!6315764 () Bool)

(assert (=> bm!375608 m!6315764))

(declare-fun m!6315766 () Bool)

(assert (=> bm!375604 m!6315766))

(assert (=> b!5277530 m!6314654))

(declare-fun m!6315768 () Bool)

(assert (=> b!5277532 m!6315768))

(assert (=> bm!375443 d!1698482))

(declare-fun d!1698484 () Bool)

(assert (=> d!1698484 (= (flatMap!624 lt!2157425 lambda!266357) (choose!39373 lt!2157425 lambda!266357))))

(declare-fun bs!1222803 () Bool)

(assert (= bs!1222803 d!1698484))

(declare-fun m!6315770 () Bool)

(assert (=> bs!1222803 m!6315770))

(assert (=> d!1698044 d!1698484))

(declare-fun d!1698486 () Bool)

(assert (=> d!1698486 (= (isEmptyLang!839 lt!2157566) ((_ is EmptyLang!14897) lt!2157566))))

(assert (=> b!5276790 d!1698486))

(declare-fun d!1698488 () Bool)

(assert (=> d!1698488 (= (Exists!2078 (ite c!914387 lambda!266353 lambda!266354)) (choose!39377 (ite c!914387 lambda!266353 lambda!266354)))))

(declare-fun bs!1222805 () Bool)

(assert (= bs!1222805 d!1698488))

(declare-fun m!6315776 () Bool)

(assert (=> bs!1222805 m!6315776))

(assert (=> bm!375449 d!1698488))

(declare-fun d!1698492 () Bool)

(declare-fun c!914650 () Bool)

(assert (=> d!1698492 (= c!914650 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281827 () Bool)

(assert (=> d!1698492 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157424 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281827)))

(declare-fun b!5277541 () Bool)

(assert (=> b!5277541 (= e!3281827 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157424 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277542 () Bool)

(assert (=> b!5277542 (= e!3281827 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157424 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698492 c!914650) b!5277541))

(assert (= (and d!1698492 (not c!914650)) b!5277542))

(assert (=> d!1698492 m!6314592))

(assert (=> d!1698492 m!6315570))

(assert (=> b!5277541 m!6314774))

(declare-fun m!6315778 () Bool)

(assert (=> b!5277541 m!6315778))

(assert (=> b!5277542 m!6314592))

(assert (=> b!5277542 m!6315576))

(assert (=> b!5277542 m!6314774))

(assert (=> b!5277542 m!6315576))

(declare-fun m!6315780 () Bool)

(assert (=> b!5277542 m!6315780))

(assert (=> b!5277542 m!6314592))

(assert (=> b!5277542 m!6315584))

(assert (=> b!5277542 m!6315780))

(assert (=> b!5277542 m!6315584))

(declare-fun m!6315782 () Bool)

(assert (=> b!5277542 m!6315782))

(assert (=> b!5276565 d!1698492))

(declare-fun bs!1222806 () Bool)

(declare-fun d!1698494 () Bool)

(assert (= bs!1222806 (and d!1698494 b!5275973)))

(declare-fun lambda!266456 () Int)

(assert (=> bs!1222806 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266456 lambda!266288))))

(declare-fun bs!1222807 () Bool)

(assert (= bs!1222807 (and d!1698494 d!1698422)))

(assert (=> bs!1222807 (= lambda!266456 lambda!266452)))

(declare-fun bs!1222808 () Bool)

(assert (= bs!1222808 (and d!1698494 d!1698056)))

(assert (=> bs!1222808 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266456 lambda!266362))))

(declare-fun bs!1222809 () Bool)

(assert (= bs!1222809 (and d!1698494 d!1698044)))

(assert (=> bs!1222809 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266456 lambda!266357))))

(declare-fun bs!1222810 () Bool)

(assert (= bs!1222810 (and d!1698494 d!1698436)))

(assert (=> bs!1222810 (= lambda!266456 lambda!266453)))

(assert (=> d!1698494 true))

(assert (=> d!1698494 (= (derivationStepZipper!1140 lt!2157424 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157424 lambda!266456))))

(declare-fun bs!1222811 () Bool)

(assert (= bs!1222811 d!1698494))

(declare-fun m!6315784 () Bool)

(assert (=> bs!1222811 m!6315784))

(assert (=> b!5276565 d!1698494))

(assert (=> b!5276565 d!1698424))

(assert (=> b!5276565 d!1698426))

(declare-fun d!1698496 () Bool)

(declare-fun res!2238420 () Bool)

(declare-fun e!3281838 () Bool)

(assert (=> d!1698496 (=> res!2238420 e!3281838)))

(assert (=> d!1698496 (= res!2238420 ((_ is Nil!60867) lt!2157572))))

(assert (=> d!1698496 (= (noDuplicate!1251 lt!2157572) e!3281838)))

(declare-fun b!5277558 () Bool)

(declare-fun e!3281839 () Bool)

(assert (=> b!5277558 (= e!3281838 e!3281839)))

(declare-fun res!2238421 () Bool)

(assert (=> b!5277558 (=> (not res!2238421) (not e!3281839))))

(declare-fun contains!19699 (List!60991 Context!8562) Bool)

(assert (=> b!5277558 (= res!2238421 (not (contains!19699 (t!374190 lt!2157572) (h!67315 lt!2157572))))))

(declare-fun b!5277559 () Bool)

(assert (=> b!5277559 (= e!3281839 (noDuplicate!1251 (t!374190 lt!2157572)))))

(assert (= (and d!1698496 (not res!2238420)) b!5277558))

(assert (= (and b!5277558 res!2238421) b!5277559))

(declare-fun m!6315814 () Bool)

(assert (=> b!5277558 m!6315814))

(declare-fun m!6315816 () Bool)

(assert (=> b!5277559 m!6315816))

(assert (=> d!1698082 d!1698496))

(declare-fun d!1698502 () Bool)

(declare-fun e!3281847 () Bool)

(assert (=> d!1698502 e!3281847))

(declare-fun res!2238426 () Bool)

(assert (=> d!1698502 (=> (not res!2238426) (not e!3281847))))

(declare-fun res!2238427 () List!60991)

(assert (=> d!1698502 (= res!2238426 (noDuplicate!1251 res!2238427))))

(declare-fun e!3281846 () Bool)

(assert (=> d!1698502 e!3281846))

(assert (=> d!1698502 (= (choose!39380 z!1189) res!2238427)))

(declare-fun b!5277567 () Bool)

(declare-fun e!3281848 () Bool)

(declare-fun tp!1474495 () Bool)

(assert (=> b!5277567 (= e!3281848 tp!1474495)))

(declare-fun tp!1474494 () Bool)

(declare-fun b!5277566 () Bool)

(assert (=> b!5277566 (= e!3281846 (and (inv!80489 (h!67315 res!2238427)) e!3281848 tp!1474494))))

(declare-fun b!5277568 () Bool)

(assert (=> b!5277568 (= e!3281847 (= (content!10833 res!2238427) z!1189))))

(assert (= b!5277566 b!5277567))

(assert (= (and d!1698502 ((_ is Cons!60867) res!2238427)) b!5277566))

(assert (= (and d!1698502 res!2238426) b!5277568))

(declare-fun m!6315820 () Bool)

(assert (=> d!1698502 m!6315820))

(declare-fun m!6315824 () Bool)

(assert (=> b!5277566 m!6315824))

(declare-fun m!6315826 () Bool)

(assert (=> b!5277568 m!6315826))

(assert (=> d!1698082 d!1698502))

(declare-fun d!1698506 () Bool)

(declare-fun c!914655 () Bool)

(assert (=> d!1698506 (= c!914655 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281849 () Bool)

(assert (=> d!1698506 (= (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281849)))

(declare-fun b!5277569 () Bool)

(assert (=> b!5277569 (= e!3281849 (nullableZipper!1296 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277571 () Bool)

(assert (=> b!5277571 (= e!3281849 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698506 c!914655) b!5277569))

(assert (= (and d!1698506 (not c!914655)) b!5277571))

(assert (=> d!1698506 m!6314592))

(assert (=> d!1698506 m!6315570))

(assert (=> b!5277569 m!6314864))

(declare-fun m!6315830 () Bool)

(assert (=> b!5277569 m!6315830))

(assert (=> b!5277571 m!6314592))

(assert (=> b!5277571 m!6315576))

(assert (=> b!5277571 m!6314864))

(assert (=> b!5277571 m!6315576))

(declare-fun m!6315832 () Bool)

(assert (=> b!5277571 m!6315832))

(assert (=> b!5277571 m!6314592))

(assert (=> b!5277571 m!6315584))

(assert (=> b!5277571 m!6315832))

(assert (=> b!5277571 m!6315584))

(declare-fun m!6315834 () Bool)

(assert (=> b!5277571 m!6315834))

(assert (=> b!5276708 d!1698506))

(declare-fun bs!1222851 () Bool)

(declare-fun d!1698510 () Bool)

(assert (= bs!1222851 (and d!1698510 d!1698494)))

(declare-fun lambda!266460 () Int)

(assert (=> bs!1222851 (= lambda!266460 lambda!266456)))

(declare-fun bs!1222854 () Bool)

(assert (= bs!1222854 (and d!1698510 b!5275973)))

(assert (=> bs!1222854 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266460 lambda!266288))))

(declare-fun bs!1222856 () Bool)

(assert (= bs!1222856 (and d!1698510 d!1698422)))

(assert (=> bs!1222856 (= lambda!266460 lambda!266452)))

(declare-fun bs!1222858 () Bool)

(assert (= bs!1222858 (and d!1698510 d!1698056)))

(assert (=> bs!1222858 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266460 lambda!266362))))

(declare-fun bs!1222860 () Bool)

(assert (= bs!1222860 (and d!1698510 d!1698044)))

(assert (=> bs!1222860 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266460 lambda!266357))))

(declare-fun bs!1222861 () Bool)

(assert (= bs!1222861 (and d!1698510 d!1698436)))

(assert (=> bs!1222861 (= lambda!266460 lambda!266453)))

(assert (=> d!1698510 true))

(assert (=> d!1698510 (= (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) (head!11310 (t!374191 s!2326))) (flatMap!624 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) lambda!266460))))

(declare-fun bs!1222863 () Bool)

(assert (= bs!1222863 d!1698510))

(assert (=> bs!1222863 m!6314320))

(declare-fun m!6315836 () Bool)

(assert (=> bs!1222863 m!6315836))

(assert (=> b!5276708 d!1698510))

(assert (=> b!5276708 d!1698424))

(assert (=> b!5276708 d!1698426))

(declare-fun c!914660 () Bool)

(declare-fun bm!375610 () Bool)

(declare-fun c!914657 () Bool)

(declare-fun call!375617 () List!60990)

(assert (=> bm!375610 (= call!375617 ($colon$colon!1346 (exprs!4781 (ite c!914268 lt!2157412 (Context!8563 call!375417))) (ite (or c!914660 c!914657) (regTwo!30306 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))) (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))))))))

(declare-fun b!5277574 () Bool)

(declare-fun e!3281852 () Bool)

(assert (=> b!5277574 (= e!3281852 (nullable!5066 (regOne!30306 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))))))))

(declare-fun b!5277575 () Bool)

(declare-fun e!3281854 () (InoxSet Context!8562))

(declare-fun call!375615 () (InoxSet Context!8562))

(declare-fun call!375619 () (InoxSet Context!8562))

(assert (=> b!5277575 (= e!3281854 ((_ map or) call!375615 call!375619))))

(declare-fun b!5277576 () Bool)

(declare-fun e!3281856 () (InoxSet Context!8562))

(assert (=> b!5277576 (= e!3281856 (store ((as const (Array Context!8562 Bool)) false) (ite c!914268 lt!2157412 (Context!8563 call!375417)) true))))

(declare-fun b!5277577 () Bool)

(declare-fun e!3281857 () (InoxSet Context!8562))

(declare-fun e!3281855 () (InoxSet Context!8562))

(assert (=> b!5277577 (= e!3281857 e!3281855)))

(assert (=> b!5277577 (= c!914657 ((_ is Concat!23742) (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))))))

(declare-fun bm!375611 () Bool)

(declare-fun call!375620 () (InoxSet Context!8562))

(assert (=> bm!375611 (= call!375620 call!375615)))

(declare-fun b!5277578 () Bool)

(declare-fun e!3281853 () (InoxSet Context!8562))

(assert (=> b!5277578 (= e!3281853 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5277579 () Bool)

(assert (=> b!5277579 (= c!914660 e!3281852)))

(declare-fun res!2238429 () Bool)

(assert (=> b!5277579 (=> (not res!2238429) (not e!3281852))))

(assert (=> b!5277579 (= res!2238429 ((_ is Concat!23742) (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))))))

(assert (=> b!5277579 (= e!3281854 e!3281857)))

(declare-fun b!5277580 () Bool)

(assert (=> b!5277580 (= e!3281856 e!3281854)))

(declare-fun c!914658 () Bool)

(assert (=> b!5277580 (= c!914658 ((_ is Union!14897) (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))))))

(declare-fun bm!375612 () Bool)

(assert (=> bm!375612 (= call!375619 (derivationStepZipperDown!345 (ite c!914658 (regTwo!30307 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))) (regOne!30306 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))))) (ite c!914658 (ite c!914268 lt!2157412 (Context!8563 call!375417)) (Context!8563 call!375617)) (h!67316 s!2326)))))

(declare-fun b!5277581 () Bool)

(declare-fun c!914656 () Bool)

(assert (=> b!5277581 (= c!914656 ((_ is Star!14897) (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))))))

(assert (=> b!5277581 (= e!3281855 e!3281853)))

(declare-fun b!5277582 () Bool)

(declare-fun call!375618 () (InoxSet Context!8562))

(assert (=> b!5277582 (= e!3281855 call!375618)))

(declare-fun bm!375613 () Bool)

(assert (=> bm!375613 (= call!375618 call!375620)))

(declare-fun b!5277583 () Bool)

(assert (=> b!5277583 (= e!3281853 call!375618)))

(declare-fun b!5277584 () Bool)

(assert (=> b!5277584 (= e!3281857 ((_ map or) call!375619 call!375620))))

(declare-fun c!914659 () Bool)

(declare-fun d!1698512 () Bool)

(assert (=> d!1698512 (= c!914659 (and ((_ is ElementMatch!14897) (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))) (= (c!914175 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))) (h!67316 s!2326))))))

(assert (=> d!1698512 (= (derivationStepZipperDown!345 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))) (ite c!914268 lt!2157412 (Context!8563 call!375417)) (h!67316 s!2326)) e!3281856)))

(declare-fun bm!375614 () Bool)

(declare-fun call!375616 () List!60990)

(assert (=> bm!375614 (= call!375615 (derivationStepZipperDown!345 (ite c!914658 (regOne!30307 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))) (ite c!914660 (regTwo!30306 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))) (ite c!914657 (regOne!30306 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))))) (reg!15226 (ite c!914268 (regTwo!30307 (regTwo!30306 (regOne!30306 r!7292))) (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))))))) (ite (or c!914658 c!914660) (ite c!914268 lt!2157412 (Context!8563 call!375417)) (Context!8563 call!375616)) (h!67316 s!2326)))))

(declare-fun bm!375615 () Bool)

(assert (=> bm!375615 (= call!375616 call!375617)))

(assert (= (and d!1698512 c!914659) b!5277576))

(assert (= (and d!1698512 (not c!914659)) b!5277580))

(assert (= (and b!5277580 c!914658) b!5277575))

(assert (= (and b!5277580 (not c!914658)) b!5277579))

(assert (= (and b!5277579 res!2238429) b!5277574))

(assert (= (and b!5277579 c!914660) b!5277584))

(assert (= (and b!5277579 (not c!914660)) b!5277577))

(assert (= (and b!5277577 c!914657) b!5277582))

(assert (= (and b!5277577 (not c!914657)) b!5277581))

(assert (= (and b!5277581 c!914656) b!5277583))

(assert (= (and b!5277581 (not c!914656)) b!5277578))

(assert (= (or b!5277582 b!5277583) bm!375615))

(assert (= (or b!5277582 b!5277583) bm!375613))

(assert (= (or b!5277584 bm!375615) bm!375610))

(assert (= (or b!5277584 bm!375613) bm!375611))

(assert (= (or b!5277575 b!5277584) bm!375612))

(assert (= (or b!5277575 bm!375611) bm!375614))

(declare-fun m!6315838 () Bool)

(assert (=> bm!375612 m!6315838))

(declare-fun m!6315840 () Bool)

(assert (=> bm!375614 m!6315840))

(declare-fun m!6315844 () Bool)

(assert (=> bm!375610 m!6315844))

(declare-fun m!6315848 () Bool)

(assert (=> b!5277574 m!6315848))

(declare-fun m!6315851 () Bool)

(assert (=> b!5277576 m!6315851))

(assert (=> bm!375412 d!1698512))

(assert (=> b!5276408 d!1697948))

(declare-fun b!5277585 () Bool)

(declare-fun e!3281858 () Bool)

(declare-fun call!375623 () Bool)

(assert (=> b!5277585 (= e!3281858 call!375623)))

(declare-fun b!5277586 () Bool)

(declare-fun e!3281864 () Bool)

(assert (=> b!5277586 (= e!3281864 call!375623)))

(declare-fun b!5277587 () Bool)

(declare-fun res!2238434 () Bool)

(declare-fun e!3281862 () Bool)

(assert (=> b!5277587 (=> res!2238434 e!3281862)))

(assert (=> b!5277587 (= res!2238434 (not ((_ is Concat!23742) (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292)))))))

(declare-fun e!3281860 () Bool)

(assert (=> b!5277587 (= e!3281860 e!3281862)))

(declare-fun b!5277588 () Bool)

(assert (=> b!5277588 (= e!3281862 e!3281864)))

(declare-fun res!2238431 () Bool)

(assert (=> b!5277588 (=> (not res!2238431) (not e!3281864))))

(declare-fun call!375621 () Bool)

(assert (=> b!5277588 (= res!2238431 call!375621)))

(declare-fun bm!375616 () Bool)

(declare-fun c!914661 () Bool)

(declare-fun c!914662 () Bool)

(declare-fun call!375622 () Bool)

(assert (=> bm!375616 (= call!375622 (validRegex!6633 (ite c!914662 (reg!15226 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))) (ite c!914661 (regOne!30307 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))) (regOne!30306 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292)))))))))

(declare-fun d!1698514 () Bool)

(declare-fun res!2238433 () Bool)

(declare-fun e!3281859 () Bool)

(assert (=> d!1698514 (=> res!2238433 e!3281859)))

(assert (=> d!1698514 (= res!2238433 ((_ is ElementMatch!14897) (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))))))

(assert (=> d!1698514 (= (validRegex!6633 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))) e!3281859)))

(declare-fun bm!375617 () Bool)

(assert (=> bm!375617 (= call!375621 call!375622)))

(declare-fun bm!375618 () Bool)

(assert (=> bm!375618 (= call!375623 (validRegex!6633 (ite c!914661 (regTwo!30307 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))) (regTwo!30306 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))))))))

(declare-fun b!5277589 () Bool)

(declare-fun e!3281861 () Bool)

(assert (=> b!5277589 (= e!3281859 e!3281861)))

(assert (=> b!5277589 (= c!914662 ((_ is Star!14897) (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))))))

(declare-fun b!5277590 () Bool)

(declare-fun e!3281863 () Bool)

(assert (=> b!5277590 (= e!3281863 call!375622)))

(declare-fun b!5277591 () Bool)

(assert (=> b!5277591 (= e!3281861 e!3281863)))

(declare-fun res!2238430 () Bool)

(assert (=> b!5277591 (= res!2238430 (not (nullable!5066 (reg!15226 (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))))))))

(assert (=> b!5277591 (=> (not res!2238430) (not e!3281863))))

(declare-fun b!5277592 () Bool)

(assert (=> b!5277592 (= e!3281861 e!3281860)))

(assert (=> b!5277592 (= c!914661 ((_ is Union!14897) (ite c!914407 (regTwo!30307 r!7292) (regTwo!30306 r!7292))))))

(declare-fun b!5277593 () Bool)

(declare-fun res!2238432 () Bool)

(assert (=> b!5277593 (=> (not res!2238432) (not e!3281858))))

(assert (=> b!5277593 (= res!2238432 call!375621)))

(assert (=> b!5277593 (= e!3281860 e!3281858)))

(assert (= (and d!1698514 (not res!2238433)) b!5277589))

(assert (= (and b!5277589 c!914662) b!5277591))

(assert (= (and b!5277589 (not c!914662)) b!5277592))

(assert (= (and b!5277591 res!2238430) b!5277590))

(assert (= (and b!5277592 c!914661) b!5277593))

(assert (= (and b!5277592 (not c!914661)) b!5277587))

(assert (= (and b!5277593 res!2238432) b!5277585))

(assert (= (and b!5277587 (not res!2238434)) b!5277588))

(assert (= (and b!5277588 res!2238431) b!5277586))

(assert (= (or b!5277585 b!5277586) bm!375618))

(assert (= (or b!5277593 b!5277588) bm!375617))

(assert (= (or b!5277590 bm!375617) bm!375616))

(declare-fun m!6315864 () Bool)

(assert (=> bm!375616 m!6315864))

(declare-fun m!6315866 () Bool)

(assert (=> bm!375618 m!6315866))

(declare-fun m!6315868 () Bool)

(assert (=> b!5277591 m!6315868))

(assert (=> bm!375462 d!1698514))

(assert (=> bs!1222365 d!1698062))

(declare-fun d!1698520 () Bool)

(declare-fun c!914664 () Bool)

(assert (=> d!1698520 (= c!914664 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281869 () Bool)

(assert (=> d!1698520 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157409 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281869)))

(declare-fun b!5277599 () Bool)

(assert (=> b!5277599 (= e!3281869 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157409 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277600 () Bool)

(assert (=> b!5277600 (= e!3281869 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157409 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698520 c!914664) b!5277599))

(assert (= (and d!1698520 (not c!914664)) b!5277600))

(assert (=> d!1698520 m!6314592))

(assert (=> d!1698520 m!6315570))

(assert (=> b!5277599 m!6314840))

(declare-fun m!6315870 () Bool)

(assert (=> b!5277599 m!6315870))

(assert (=> b!5277600 m!6314592))

(assert (=> b!5277600 m!6315576))

(assert (=> b!5277600 m!6314840))

(assert (=> b!5277600 m!6315576))

(declare-fun m!6315872 () Bool)

(assert (=> b!5277600 m!6315872))

(assert (=> b!5277600 m!6314592))

(assert (=> b!5277600 m!6315584))

(assert (=> b!5277600 m!6315872))

(assert (=> b!5277600 m!6315584))

(declare-fun m!6315874 () Bool)

(assert (=> b!5277600 m!6315874))

(assert (=> b!5276676 d!1698520))

(declare-fun bs!1222884 () Bool)

(declare-fun d!1698522 () Bool)

(assert (= bs!1222884 (and d!1698522 d!1698510)))

(declare-fun lambda!266464 () Int)

(assert (=> bs!1222884 (= lambda!266464 lambda!266460)))

(declare-fun bs!1222887 () Bool)

(assert (= bs!1222887 (and d!1698522 d!1698494)))

(assert (=> bs!1222887 (= lambda!266464 lambda!266456)))

(declare-fun bs!1222889 () Bool)

(assert (= bs!1222889 (and d!1698522 b!5275973)))

(assert (=> bs!1222889 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266464 lambda!266288))))

(declare-fun bs!1222891 () Bool)

(assert (= bs!1222891 (and d!1698522 d!1698422)))

(assert (=> bs!1222891 (= lambda!266464 lambda!266452)))

(declare-fun bs!1222893 () Bool)

(assert (= bs!1222893 (and d!1698522 d!1698056)))

(assert (=> bs!1222893 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266464 lambda!266362))))

(declare-fun bs!1222895 () Bool)

(assert (= bs!1222895 (and d!1698522 d!1698044)))

(assert (=> bs!1222895 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266464 lambda!266357))))

(declare-fun bs!1222897 () Bool)

(assert (= bs!1222897 (and d!1698522 d!1698436)))

(assert (=> bs!1222897 (= lambda!266464 lambda!266453)))

(assert (=> d!1698522 true))

(assert (=> d!1698522 (= (derivationStepZipper!1140 lt!2157409 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157409 lambda!266464))))

(declare-fun bs!1222899 () Bool)

(assert (= bs!1222899 d!1698522))

(declare-fun m!6315876 () Bool)

(assert (=> bs!1222899 m!6315876))

(assert (=> b!5276676 d!1698522))

(assert (=> b!5276676 d!1698424))

(assert (=> b!5276676 d!1698426))

(declare-fun d!1698524 () Bool)

(declare-fun res!2238438 () Bool)

(declare-fun e!3281870 () Bool)

(assert (=> d!1698524 (=> res!2238438 e!3281870)))

(assert (=> d!1698524 (= res!2238438 ((_ is Nil!60866) (t!374189 lt!2157426)))))

(assert (=> d!1698524 (= (forall!14305 (t!374189 lt!2157426) lambda!266289) e!3281870)))

(declare-fun b!5277601 () Bool)

(declare-fun e!3281871 () Bool)

(assert (=> b!5277601 (= e!3281870 e!3281871)))

(declare-fun res!2238439 () Bool)

(assert (=> b!5277601 (=> (not res!2238439) (not e!3281871))))

(assert (=> b!5277601 (= res!2238439 (dynLambda!24057 lambda!266289 (h!67314 (t!374189 lt!2157426))))))

(declare-fun b!5277602 () Bool)

(assert (=> b!5277602 (= e!3281871 (forall!14305 (t!374189 (t!374189 lt!2157426)) lambda!266289))))

(assert (= (and d!1698524 (not res!2238438)) b!5277601))

(assert (= (and b!5277601 res!2238439) b!5277602))

(declare-fun b_lambda!203573 () Bool)

(assert (=> (not b_lambda!203573) (not b!5277601)))

(declare-fun m!6315878 () Bool)

(assert (=> b!5277601 m!6315878))

(declare-fun m!6315880 () Bool)

(assert (=> b!5277602 m!6315880))

(assert (=> b!5276716 d!1698524))

(declare-fun d!1698526 () Bool)

(assert (=> d!1698526 (= (head!11310 s!2326) (h!67316 s!2326))))

(assert (=> b!5276672 d!1698526))

(assert (=> d!1698042 d!1698356))

(assert (=> b!5276803 d!1697978))

(declare-fun bs!1222909 () Bool)

(declare-fun d!1698528 () Bool)

(assert (= bs!1222909 (and d!1698528 b!5275986)))

(declare-fun lambda!266466 () Int)

(assert (=> bs!1222909 (= lambda!266466 lambda!266289)))

(declare-fun bs!1222911 () Bool)

(assert (= bs!1222911 (and d!1698528 d!1697978)))

(assert (=> bs!1222911 (= lambda!266466 lambda!266336)))

(declare-fun bs!1222913 () Bool)

(assert (= bs!1222913 (and d!1698528 d!1698360)))

(assert (=> bs!1222913 (= lambda!266466 lambda!266430)))

(declare-fun bs!1222915 () Bool)

(assert (= bs!1222915 (and d!1698528 d!1698050)))

(assert (=> bs!1222915 (= lambda!266466 lambda!266361)))

(declare-fun bs!1222917 () Bool)

(assert (= bs!1222917 (and d!1698528 b!5277198)))

(assert (=> bs!1222917 (not (= lambda!266466 lambda!266424))))

(declare-fun bs!1222919 () Bool)

(assert (= bs!1222919 (and d!1698528 d!1698076)))

(assert (=> bs!1222919 (= lambda!266466 lambda!266374)))

(declare-fun bs!1222921 () Bool)

(assert (= bs!1222921 (and d!1698528 d!1698406)))

(assert (=> bs!1222921 (= lambda!266466 lambda!266450)))

(declare-fun bs!1222923 () Bool)

(assert (= bs!1222923 (and d!1698528 d!1698046)))

(assert (=> bs!1222923 (= lambda!266466 lambda!266360)))

(declare-fun bs!1222925 () Bool)

(assert (= bs!1222925 (and d!1698528 b!5277200)))

(assert (=> bs!1222925 (not (= lambda!266466 lambda!266426))))

(declare-fun bs!1222927 () Bool)

(assert (= bs!1222927 (and d!1698528 d!1698078)))

(assert (=> bs!1222927 (= lambda!266466 lambda!266377)))

(declare-fun lt!2157662 () List!60990)

(assert (=> d!1698528 (forall!14305 lt!2157662 lambda!266466)))

(declare-fun e!3281872 () List!60990)

(assert (=> d!1698528 (= lt!2157662 e!3281872)))

(declare-fun c!914665 () Bool)

(assert (=> d!1698528 (= c!914665 ((_ is Cons!60867) (t!374190 zl!343)))))

(assert (=> d!1698528 (= (unfocusZipperList!339 (t!374190 zl!343)) lt!2157662)))

(declare-fun b!5277603 () Bool)

(assert (=> b!5277603 (= e!3281872 (Cons!60866 (generalisedConcat!566 (exprs!4781 (h!67315 (t!374190 zl!343)))) (unfocusZipperList!339 (t!374190 (t!374190 zl!343)))))))

(declare-fun b!5277604 () Bool)

(assert (=> b!5277604 (= e!3281872 Nil!60866)))

(assert (= (and d!1698528 c!914665) b!5277603))

(assert (= (and d!1698528 (not c!914665)) b!5277604))

(declare-fun m!6315882 () Bool)

(assert (=> d!1698528 m!6315882))

(declare-fun m!6315884 () Bool)

(assert (=> b!5277603 m!6315884))

(declare-fun m!6315886 () Bool)

(assert (=> b!5277603 m!6315886))

(assert (=> b!5276803 d!1698528))

(declare-fun b!5277605 () Bool)

(declare-fun e!3281873 () Bool)

(declare-fun call!375626 () Bool)

(assert (=> b!5277605 (= e!3281873 call!375626)))

(declare-fun b!5277606 () Bool)

(declare-fun e!3281879 () Bool)

(assert (=> b!5277606 (= e!3281879 call!375626)))

(declare-fun b!5277607 () Bool)

(declare-fun res!2238444 () Bool)

(declare-fun e!3281877 () Bool)

(assert (=> b!5277607 (=> res!2238444 e!3281877)))

(assert (=> b!5277607 (= res!2238444 (not ((_ is Concat!23742) (h!67314 lt!2157426))))))

(declare-fun e!3281875 () Bool)

(assert (=> b!5277607 (= e!3281875 e!3281877)))

(declare-fun b!5277608 () Bool)

(assert (=> b!5277608 (= e!3281877 e!3281879)))

(declare-fun res!2238441 () Bool)

(assert (=> b!5277608 (=> (not res!2238441) (not e!3281879))))

(declare-fun call!375624 () Bool)

(assert (=> b!5277608 (= res!2238441 call!375624)))

(declare-fun call!375625 () Bool)

(declare-fun c!914666 () Bool)

(declare-fun bm!375619 () Bool)

(declare-fun c!914667 () Bool)

(assert (=> bm!375619 (= call!375625 (validRegex!6633 (ite c!914667 (reg!15226 (h!67314 lt!2157426)) (ite c!914666 (regOne!30307 (h!67314 lt!2157426)) (regOne!30306 (h!67314 lt!2157426))))))))

(declare-fun d!1698530 () Bool)

(declare-fun res!2238443 () Bool)

(declare-fun e!3281874 () Bool)

(assert (=> d!1698530 (=> res!2238443 e!3281874)))

(assert (=> d!1698530 (= res!2238443 ((_ is ElementMatch!14897) (h!67314 lt!2157426)))))

(assert (=> d!1698530 (= (validRegex!6633 (h!67314 lt!2157426)) e!3281874)))

(declare-fun bm!375620 () Bool)

(assert (=> bm!375620 (= call!375624 call!375625)))

(declare-fun bm!375621 () Bool)

(assert (=> bm!375621 (= call!375626 (validRegex!6633 (ite c!914666 (regTwo!30307 (h!67314 lt!2157426)) (regTwo!30306 (h!67314 lt!2157426)))))))

(declare-fun b!5277609 () Bool)

(declare-fun e!3281876 () Bool)

(assert (=> b!5277609 (= e!3281874 e!3281876)))

(assert (=> b!5277609 (= c!914667 ((_ is Star!14897) (h!67314 lt!2157426)))))

(declare-fun b!5277610 () Bool)

(declare-fun e!3281878 () Bool)

(assert (=> b!5277610 (= e!3281878 call!375625)))

(declare-fun b!5277611 () Bool)

(assert (=> b!5277611 (= e!3281876 e!3281878)))

(declare-fun res!2238440 () Bool)

(assert (=> b!5277611 (= res!2238440 (not (nullable!5066 (reg!15226 (h!67314 lt!2157426)))))))

(assert (=> b!5277611 (=> (not res!2238440) (not e!3281878))))

(declare-fun b!5277612 () Bool)

(assert (=> b!5277612 (= e!3281876 e!3281875)))

(assert (=> b!5277612 (= c!914666 ((_ is Union!14897) (h!67314 lt!2157426)))))

(declare-fun b!5277613 () Bool)

(declare-fun res!2238442 () Bool)

(assert (=> b!5277613 (=> (not res!2238442) (not e!3281873))))

(assert (=> b!5277613 (= res!2238442 call!375624)))

(assert (=> b!5277613 (= e!3281875 e!3281873)))

(assert (= (and d!1698530 (not res!2238443)) b!5277609))

(assert (= (and b!5277609 c!914667) b!5277611))

(assert (= (and b!5277609 (not c!914667)) b!5277612))

(assert (= (and b!5277611 res!2238440) b!5277610))

(assert (= (and b!5277612 c!914666) b!5277613))

(assert (= (and b!5277612 (not c!914666)) b!5277607))

(assert (= (and b!5277613 res!2238442) b!5277605))

(assert (= (and b!5277607 (not res!2238444)) b!5277608))

(assert (= (and b!5277608 res!2238441) b!5277606))

(assert (= (or b!5277605 b!5277606) bm!375621))

(assert (= (or b!5277613 b!5277608) bm!375620))

(assert (= (or b!5277610 bm!375620) bm!375619))

(declare-fun m!6315900 () Bool)

(assert (=> bm!375619 m!6315900))

(declare-fun m!6315902 () Bool)

(assert (=> bm!375621 m!6315902))

(declare-fun m!6315904 () Bool)

(assert (=> b!5277611 m!6315904))

(assert (=> bs!1222363 d!1698530))

(declare-fun d!1698534 () Bool)

(declare-fun lt!2157663 () Int)

(assert (=> d!1698534 (>= lt!2157663 0)))

(declare-fun e!3281880 () Int)

(assert (=> d!1698534 (= lt!2157663 e!3281880)))

(declare-fun c!914668 () Bool)

(assert (=> d!1698534 (= c!914668 ((_ is Cons!60866) (exprs!4781 (h!67315 lt!2157429))))))

(assert (=> d!1698534 (= (contextDepthTotal!38 (h!67315 lt!2157429)) lt!2157663)))

(declare-fun b!5277614 () Bool)

(assert (=> b!5277614 (= e!3281880 (+ (regexDepthTotal!8 (h!67314 (exprs!4781 (h!67315 lt!2157429)))) (contextDepthTotal!38 (Context!8563 (t!374189 (exprs!4781 (h!67315 lt!2157429)))))))))

(declare-fun b!5277615 () Bool)

(assert (=> b!5277615 (= e!3281880 1)))

(assert (= (and d!1698534 c!914668) b!5277614))

(assert (= (and d!1698534 (not c!914668)) b!5277615))

(declare-fun m!6315906 () Bool)

(assert (=> b!5277614 m!6315906))

(declare-fun m!6315908 () Bool)

(assert (=> b!5277614 m!6315908))

(assert (=> b!5276721 d!1698534))

(declare-fun d!1698538 () Bool)

(declare-fun lt!2157664 () Int)

(assert (=> d!1698538 (>= lt!2157664 0)))

(declare-fun e!3281887 () Int)

(assert (=> d!1698538 (= lt!2157664 e!3281887)))

(declare-fun c!914674 () Bool)

(assert (=> d!1698538 (= c!914674 ((_ is Cons!60867) (t!374190 lt!2157429)))))

(assert (=> d!1698538 (= (zipperDepthTotal!58 (t!374190 lt!2157429)) lt!2157664)))

(declare-fun b!5277627 () Bool)

(assert (=> b!5277627 (= e!3281887 (+ (contextDepthTotal!38 (h!67315 (t!374190 lt!2157429))) (zipperDepthTotal!58 (t!374190 (t!374190 lt!2157429)))))))

(declare-fun b!5277628 () Bool)

(assert (=> b!5277628 (= e!3281887 0)))

(assert (= (and d!1698538 c!914674) b!5277627))

(assert (= (and d!1698538 (not c!914674)) b!5277628))

(declare-fun m!6315910 () Bool)

(assert (=> b!5277627 m!6315910))

(declare-fun m!6315912 () Bool)

(assert (=> b!5277627 m!6315912))

(assert (=> b!5276721 d!1698538))

(assert (=> b!5276665 d!1698526))

(assert (=> d!1698032 d!1698356))

(declare-fun d!1698540 () Bool)

(assert (=> d!1698540 (= (nullable!5066 r!7292) (nullableFct!1448 r!7292))))

(declare-fun bs!1222932 () Bool)

(assert (= bs!1222932 d!1698540))

(declare-fun m!6315914 () Bool)

(assert (=> bs!1222932 m!6315914))

(assert (=> b!5276669 d!1698540))

(declare-fun d!1698542 () Bool)

(declare-fun c!914675 () Bool)

(assert (=> d!1698542 (= c!914675 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281888 () Bool)

(assert (=> d!1698542 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157430 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281888)))

(declare-fun b!5277629 () Bool)

(assert (=> b!5277629 (= e!3281888 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157430 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277630 () Bool)

(assert (=> b!5277630 (= e!3281888 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157430 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698542 c!914675) b!5277629))

(assert (= (and d!1698542 (not c!914675)) b!5277630))

(assert (=> d!1698542 m!6314592))

(assert (=> d!1698542 m!6315570))

(assert (=> b!5277629 m!6314590))

(declare-fun m!6315916 () Bool)

(assert (=> b!5277629 m!6315916))

(assert (=> b!5277630 m!6314592))

(assert (=> b!5277630 m!6315576))

(assert (=> b!5277630 m!6314590))

(assert (=> b!5277630 m!6315576))

(declare-fun m!6315918 () Bool)

(assert (=> b!5277630 m!6315918))

(assert (=> b!5277630 m!6314592))

(assert (=> b!5277630 m!6315584))

(assert (=> b!5277630 m!6315918))

(assert (=> b!5277630 m!6315584))

(declare-fun m!6315920 () Bool)

(assert (=> b!5277630 m!6315920))

(assert (=> b!5276321 d!1698542))

(declare-fun bs!1222933 () Bool)

(declare-fun d!1698544 () Bool)

(assert (= bs!1222933 (and d!1698544 d!1698510)))

(declare-fun lambda!266467 () Int)

(assert (=> bs!1222933 (= lambda!266467 lambda!266460)))

(declare-fun bs!1222934 () Bool)

(assert (= bs!1222934 (and d!1698544 d!1698494)))

(assert (=> bs!1222934 (= lambda!266467 lambda!266456)))

(declare-fun bs!1222935 () Bool)

(assert (= bs!1222935 (and d!1698544 b!5275973)))

(assert (=> bs!1222935 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266467 lambda!266288))))

(declare-fun bs!1222936 () Bool)

(assert (= bs!1222936 (and d!1698544 d!1698422)))

(assert (=> bs!1222936 (= lambda!266467 lambda!266452)))

(declare-fun bs!1222937 () Bool)

(assert (= bs!1222937 (and d!1698544 d!1698056)))

(assert (=> bs!1222937 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266467 lambda!266362))))

(declare-fun bs!1222938 () Bool)

(assert (= bs!1222938 (and d!1698544 d!1698436)))

(assert (=> bs!1222938 (= lambda!266467 lambda!266453)))

(declare-fun bs!1222939 () Bool)

(assert (= bs!1222939 (and d!1698544 d!1698044)))

(assert (=> bs!1222939 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266467 lambda!266357))))

(declare-fun bs!1222940 () Bool)

(assert (= bs!1222940 (and d!1698544 d!1698522)))

(assert (=> bs!1222940 (= lambda!266467 lambda!266464)))

(assert (=> d!1698544 true))

(assert (=> d!1698544 (= (derivationStepZipper!1140 lt!2157430 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157430 lambda!266467))))

(declare-fun bs!1222941 () Bool)

(assert (= bs!1222941 d!1698544))

(declare-fun m!6315932 () Bool)

(assert (=> bs!1222941 m!6315932))

(assert (=> b!5276321 d!1698544))

(assert (=> b!5276321 d!1698424))

(assert (=> b!5276321 d!1698426))

(declare-fun d!1698548 () Bool)

(assert (=> d!1698548 true))

(declare-fun setRes!33813 () Bool)

(assert (=> d!1698548 setRes!33813))

(declare-fun condSetEmpty!33813 () Bool)

(declare-fun res!2238447 () (InoxSet Context!8562))

(assert (=> d!1698548 (= condSetEmpty!33813 (= res!2238447 ((as const (Array Context!8562 Bool)) false)))))

(assert (=> d!1698548 (= (choose!39373 z!1189 lambda!266288) res!2238447)))

(declare-fun setIsEmpty!33813 () Bool)

(assert (=> setIsEmpty!33813 setRes!33813))

(declare-fun e!3281895 () Bool)

(declare-fun setNonEmpty!33813 () Bool)

(declare-fun setElem!33813 () Context!8562)

(declare-fun tp!1474496 () Bool)

(assert (=> setNonEmpty!33813 (= setRes!33813 (and tp!1474496 (inv!80489 setElem!33813) e!3281895))))

(declare-fun setRest!33813 () (InoxSet Context!8562))

(assert (=> setNonEmpty!33813 (= res!2238447 ((_ map or) (store ((as const (Array Context!8562 Bool)) false) setElem!33813 true) setRest!33813))))

(declare-fun b!5277642 () Bool)

(declare-fun tp!1474497 () Bool)

(assert (=> b!5277642 (= e!3281895 tp!1474497)))

(assert (= (and d!1698548 condSetEmpty!33813) setIsEmpty!33813))

(assert (= (and d!1698548 (not condSetEmpty!33813)) setNonEmpty!33813))

(assert (= setNonEmpty!33813 b!5277642))

(declare-fun m!6315934 () Bool)

(assert (=> setNonEmpty!33813 m!6315934))

(assert (=> d!1697946 d!1698548))

(declare-fun bs!1222942 () Bool)

(declare-fun d!1698550 () Bool)

(assert (= bs!1222942 (and d!1698550 d!1698278)))

(declare-fun lambda!266468 () Int)

(assert (=> bs!1222942 (not (= lambda!266468 lambda!266415))))

(declare-fun bs!1222943 () Bool)

(assert (= bs!1222943 (and d!1698550 b!5277098)))

(assert (=> bs!1222943 (not (= lambda!266468 lambda!266410))))

(declare-fun bs!1222944 () Bool)

(assert (= bs!1222944 (and d!1698550 b!5276580)))

(assert (=> bs!1222944 (not (= lambda!266468 lambda!266344))))

(declare-fun bs!1222945 () Bool)

(assert (= bs!1222945 (and d!1698550 b!5276582)))

(assert (=> bs!1222945 (not (= lambda!266468 lambda!266345))))

(declare-fun bs!1222946 () Bool)

(assert (= bs!1222946 (and d!1698550 b!5277100)))

(assert (=> bs!1222946 (not (= lambda!266468 lambda!266411))))

(declare-fun bs!1222947 () Bool)

(assert (= bs!1222947 (and d!1698550 d!1698370)))

(assert (=> bs!1222947 (= lambda!266468 lambda!266435)))

(declare-fun bs!1222948 () Bool)

(assert (= bs!1222948 (and d!1698550 b!5276585)))

(assert (=> bs!1222948 (not (= lambda!266468 lambda!266347))))

(declare-fun bs!1222949 () Bool)

(assert (= bs!1222949 (and d!1698550 b!5276587)))

(assert (=> bs!1222949 (not (= lambda!266468 lambda!266348))))

(assert (=> d!1698550 (= (nullableZipper!1296 ((_ map or) lt!2157430 lt!2157418)) (exists!1999 ((_ map or) lt!2157430 lt!2157418) lambda!266468))))

(declare-fun bs!1222950 () Bool)

(assert (= bs!1222950 d!1698550))

(declare-fun m!6315946 () Bool)

(assert (=> bs!1222950 m!6315946))

(assert (=> b!5276322 d!1698550))

(assert (=> d!1698012 d!1698356))

(declare-fun d!1698554 () Bool)

(declare-fun c!914686 () Bool)

(assert (=> d!1698554 (= c!914686 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281902 () Bool)

(assert (=> d!1698554 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157418 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281902)))

(declare-fun b!5277654 () Bool)

(assert (=> b!5277654 (= e!3281902 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157418 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277655 () Bool)

(assert (=> b!5277655 (= e!3281902 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157418 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698554 c!914686) b!5277654))

(assert (= (and d!1698554 (not c!914686)) b!5277655))

(assert (=> d!1698554 m!6314592))

(assert (=> d!1698554 m!6315570))

(assert (=> b!5277654 m!6314834))

(declare-fun m!6315948 () Bool)

(assert (=> b!5277654 m!6315948))

(assert (=> b!5277655 m!6314592))

(assert (=> b!5277655 m!6315576))

(assert (=> b!5277655 m!6314834))

(assert (=> b!5277655 m!6315576))

(declare-fun m!6315950 () Bool)

(assert (=> b!5277655 m!6315950))

(assert (=> b!5277655 m!6314592))

(assert (=> b!5277655 m!6315584))

(assert (=> b!5277655 m!6315950))

(assert (=> b!5277655 m!6315584))

(declare-fun m!6315952 () Bool)

(assert (=> b!5277655 m!6315952))

(assert (=> b!5276674 d!1698554))

(declare-fun bs!1222951 () Bool)

(declare-fun d!1698556 () Bool)

(assert (= bs!1222951 (and d!1698556 d!1698510)))

(declare-fun lambda!266469 () Int)

(assert (=> bs!1222951 (= lambda!266469 lambda!266460)))

(declare-fun bs!1222952 () Bool)

(assert (= bs!1222952 (and d!1698556 d!1698494)))

(assert (=> bs!1222952 (= lambda!266469 lambda!266456)))

(declare-fun bs!1222953 () Bool)

(assert (= bs!1222953 (and d!1698556 b!5275973)))

(assert (=> bs!1222953 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266469 lambda!266288))))

(declare-fun bs!1222954 () Bool)

(assert (= bs!1222954 (and d!1698556 d!1698422)))

(assert (=> bs!1222954 (= lambda!266469 lambda!266452)))

(declare-fun bs!1222955 () Bool)

(assert (= bs!1222955 (and d!1698556 d!1698056)))

(assert (=> bs!1222955 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266469 lambda!266362))))

(declare-fun bs!1222956 () Bool)

(assert (= bs!1222956 (and d!1698556 d!1698544)))

(assert (=> bs!1222956 (= lambda!266469 lambda!266467)))

(declare-fun bs!1222957 () Bool)

(assert (= bs!1222957 (and d!1698556 d!1698436)))

(assert (=> bs!1222957 (= lambda!266469 lambda!266453)))

(declare-fun bs!1222958 () Bool)

(assert (= bs!1222958 (and d!1698556 d!1698044)))

(assert (=> bs!1222958 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266469 lambda!266357))))

(declare-fun bs!1222959 () Bool)

(assert (= bs!1222959 (and d!1698556 d!1698522)))

(assert (=> bs!1222959 (= lambda!266469 lambda!266464)))

(assert (=> d!1698556 true))

(assert (=> d!1698556 (= (derivationStepZipper!1140 lt!2157418 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157418 lambda!266469))))

(declare-fun bs!1222960 () Bool)

(assert (= bs!1222960 d!1698556))

(declare-fun m!6315962 () Bool)

(assert (=> bs!1222960 m!6315962))

(assert (=> b!5276674 d!1698556))

(assert (=> b!5276674 d!1698424))

(assert (=> b!5276674 d!1698426))

(declare-fun bs!1222961 () Bool)

(declare-fun d!1698560 () Bool)

(assert (= bs!1222961 (and d!1698560 d!1698278)))

(declare-fun lambda!266470 () Int)

(assert (=> bs!1222961 (not (= lambda!266470 lambda!266415))))

(declare-fun bs!1222962 () Bool)

(assert (= bs!1222962 (and d!1698560 b!5277098)))

(assert (=> bs!1222962 (not (= lambda!266470 lambda!266410))))

(declare-fun bs!1222963 () Bool)

(assert (= bs!1222963 (and d!1698560 b!5276580)))

(assert (=> bs!1222963 (not (= lambda!266470 lambda!266344))))

(declare-fun bs!1222964 () Bool)

(assert (= bs!1222964 (and d!1698560 b!5276582)))

(assert (=> bs!1222964 (not (= lambda!266470 lambda!266345))))

(declare-fun bs!1222965 () Bool)

(assert (= bs!1222965 (and d!1698560 b!5277100)))

(assert (=> bs!1222965 (not (= lambda!266470 lambda!266411))))

(declare-fun bs!1222966 () Bool)

(assert (= bs!1222966 (and d!1698560 d!1698370)))

(assert (=> bs!1222966 (= lambda!266470 lambda!266435)))

(declare-fun bs!1222967 () Bool)

(assert (= bs!1222967 (and d!1698560 b!5276585)))

(assert (=> bs!1222967 (not (= lambda!266470 lambda!266347))))

(declare-fun bs!1222968 () Bool)

(assert (= bs!1222968 (and d!1698560 d!1698550)))

(assert (=> bs!1222968 (= lambda!266470 lambda!266468)))

(declare-fun bs!1222969 () Bool)

(assert (= bs!1222969 (and d!1698560 b!5276587)))

(assert (=> bs!1222969 (not (= lambda!266470 lambda!266348))))

(assert (=> d!1698560 (= (nullableZipper!1296 lt!2157421) (exists!1999 lt!2157421 lambda!266470))))

(declare-fun bs!1222970 () Bool)

(assert (= bs!1222970 d!1698560))

(declare-fun m!6315976 () Bool)

(assert (=> bs!1222970 m!6315976))

(assert (=> b!5276435 d!1698560))

(declare-fun b!5277670 () Bool)

(declare-fun res!2238463 () Bool)

(declare-fun e!3281910 () Bool)

(assert (=> b!5277670 (=> res!2238463 e!3281910)))

(assert (=> b!5277670 (= res!2238463 (not ((_ is ElementMatch!14897) (derivativeStep!4117 r!7292 (head!11310 s!2326)))))))

(declare-fun e!3281914 () Bool)

(assert (=> b!5277670 (= e!3281914 e!3281910)))

(declare-fun b!5277671 () Bool)

(declare-fun e!3281913 () Bool)

(assert (=> b!5277671 (= e!3281910 e!3281913)))

(declare-fun res!2238459 () Bool)

(assert (=> b!5277671 (=> (not res!2238459) (not e!3281913))))

(declare-fun lt!2157666 () Bool)

(assert (=> b!5277671 (= res!2238459 (not lt!2157666))))

(declare-fun b!5277672 () Bool)

(declare-fun e!3281915 () Bool)

(assert (=> b!5277672 (= e!3281915 (matchR!7082 (derivativeStep!4117 (derivativeStep!4117 r!7292 (head!11310 s!2326)) (head!11310 (tail!10407 s!2326))) (tail!10407 (tail!10407 s!2326))))))

(declare-fun b!5277673 () Bool)

(declare-fun res!2238464 () Bool)

(assert (=> b!5277673 (=> res!2238464 e!3281910)))

(declare-fun e!3281916 () Bool)

(assert (=> b!5277673 (= res!2238464 e!3281916)))

(declare-fun res!2238457 () Bool)

(assert (=> b!5277673 (=> (not res!2238457) (not e!3281916))))

(assert (=> b!5277673 (= res!2238457 lt!2157666)))

(declare-fun b!5277674 () Bool)

(declare-fun res!2238460 () Bool)

(assert (=> b!5277674 (=> (not res!2238460) (not e!3281916))))

(declare-fun call!375646 () Bool)

(assert (=> b!5277674 (= res!2238460 (not call!375646))))

(declare-fun b!5277675 () Bool)

(declare-fun res!2238461 () Bool)

(assert (=> b!5277675 (=> (not res!2238461) (not e!3281916))))

(assert (=> b!5277675 (= res!2238461 (isEmpty!32823 (tail!10407 (tail!10407 s!2326))))))

(declare-fun d!1698562 () Bool)

(declare-fun e!3281911 () Bool)

(assert (=> d!1698562 e!3281911))

(declare-fun c!914692 () Bool)

(assert (=> d!1698562 (= c!914692 ((_ is EmptyExpr!14897) (derivativeStep!4117 r!7292 (head!11310 s!2326))))))

(assert (=> d!1698562 (= lt!2157666 e!3281915)))

(declare-fun c!914691 () Bool)

(assert (=> d!1698562 (= c!914691 (isEmpty!32823 (tail!10407 s!2326)))))

(assert (=> d!1698562 (validRegex!6633 (derivativeStep!4117 r!7292 (head!11310 s!2326)))))

(assert (=> d!1698562 (= (matchR!7082 (derivativeStep!4117 r!7292 (head!11310 s!2326)) (tail!10407 s!2326)) lt!2157666)))

(declare-fun b!5277676 () Bool)

(assert (=> b!5277676 (= e!3281916 (= (head!11310 (tail!10407 s!2326)) (c!914175 (derivativeStep!4117 r!7292 (head!11310 s!2326)))))))

(declare-fun b!5277677 () Bool)

(assert (=> b!5277677 (= e!3281911 e!3281914)))

(declare-fun c!914690 () Bool)

(assert (=> b!5277677 (= c!914690 ((_ is EmptyLang!14897) (derivativeStep!4117 r!7292 (head!11310 s!2326))))))

(declare-fun b!5277678 () Bool)

(declare-fun e!3281912 () Bool)

(assert (=> b!5277678 (= e!3281913 e!3281912)))

(declare-fun res!2238458 () Bool)

(assert (=> b!5277678 (=> res!2238458 e!3281912)))

(assert (=> b!5277678 (= res!2238458 call!375646)))

(declare-fun b!5277679 () Bool)

(declare-fun res!2238462 () Bool)

(assert (=> b!5277679 (=> res!2238462 e!3281912)))

(assert (=> b!5277679 (= res!2238462 (not (isEmpty!32823 (tail!10407 (tail!10407 s!2326)))))))

(declare-fun b!5277680 () Bool)

(assert (=> b!5277680 (= e!3281915 (nullable!5066 (derivativeStep!4117 r!7292 (head!11310 s!2326))))))

(declare-fun bm!375641 () Bool)

(assert (=> bm!375641 (= call!375646 (isEmpty!32823 (tail!10407 s!2326)))))

(declare-fun b!5277681 () Bool)

(assert (=> b!5277681 (= e!3281911 (= lt!2157666 call!375646))))

(declare-fun b!5277682 () Bool)

(assert (=> b!5277682 (= e!3281914 (not lt!2157666))))

(declare-fun b!5277683 () Bool)

(assert (=> b!5277683 (= e!3281912 (not (= (head!11310 (tail!10407 s!2326)) (c!914175 (derivativeStep!4117 r!7292 (head!11310 s!2326))))))))

(assert (= (and d!1698562 c!914691) b!5277680))

(assert (= (and d!1698562 (not c!914691)) b!5277672))

(assert (= (and d!1698562 c!914692) b!5277681))

(assert (= (and d!1698562 (not c!914692)) b!5277677))

(assert (= (and b!5277677 c!914690) b!5277682))

(assert (= (and b!5277677 (not c!914690)) b!5277670))

(assert (= (and b!5277670 (not res!2238463)) b!5277673))

(assert (= (and b!5277673 res!2238457) b!5277674))

(assert (= (and b!5277674 res!2238460) b!5277675))

(assert (= (and b!5277675 res!2238461) b!5277676))

(assert (= (and b!5277673 (not res!2238464)) b!5277671))

(assert (= (and b!5277671 res!2238459) b!5277678))

(assert (= (and b!5277678 (not res!2238458)) b!5277679))

(assert (= (and b!5277679 (not res!2238462)) b!5277683))

(assert (= (or b!5277681 b!5277674 b!5277678) bm!375641))

(assert (=> b!5277680 m!6314826))

(declare-fun m!6315978 () Bool)

(assert (=> b!5277680 m!6315978))

(assert (=> b!5277679 m!6314820))

(declare-fun m!6315980 () Bool)

(assert (=> b!5277679 m!6315980))

(assert (=> b!5277679 m!6315980))

(declare-fun m!6315982 () Bool)

(assert (=> b!5277679 m!6315982))

(assert (=> b!5277683 m!6314820))

(declare-fun m!6315984 () Bool)

(assert (=> b!5277683 m!6315984))

(assert (=> b!5277675 m!6314820))

(assert (=> b!5277675 m!6315980))

(assert (=> b!5277675 m!6315980))

(assert (=> b!5277675 m!6315982))

(assert (=> d!1698562 m!6314820))

(assert (=> d!1698562 m!6314822))

(assert (=> d!1698562 m!6314826))

(declare-fun m!6315986 () Bool)

(assert (=> d!1698562 m!6315986))

(assert (=> b!5277676 m!6314820))

(assert (=> b!5277676 m!6315984))

(assert (=> bm!375641 m!6314820))

(assert (=> bm!375641 m!6314822))

(assert (=> b!5277672 m!6314820))

(assert (=> b!5277672 m!6315984))

(assert (=> b!5277672 m!6314826))

(assert (=> b!5277672 m!6315984))

(declare-fun m!6315988 () Bool)

(assert (=> b!5277672 m!6315988))

(assert (=> b!5277672 m!6314820))

(assert (=> b!5277672 m!6315980))

(assert (=> b!5277672 m!6315988))

(assert (=> b!5277672 m!6315980))

(declare-fun m!6315990 () Bool)

(assert (=> b!5277672 m!6315990))

(assert (=> b!5276661 d!1698562))

(declare-fun b!5277820 () Bool)

(declare-fun c!914706 () Bool)

(assert (=> b!5277820 (= c!914706 (nullable!5066 (regOne!30306 r!7292)))))

(declare-fun e!3281964 () Regex!14897)

(declare-fun e!3281965 () Regex!14897)

(assert (=> b!5277820 (= e!3281964 e!3281965)))

(declare-fun b!5277821 () Bool)

(declare-fun call!375655 () Regex!14897)

(assert (=> b!5277821 (= e!3281964 (Concat!23742 call!375655 r!7292))))

(declare-fun b!5277822 () Bool)

(declare-fun e!3281962 () Regex!14897)

(assert (=> b!5277822 (= e!3281962 e!3281964)))

(declare-fun c!914704 () Bool)

(assert (=> b!5277822 (= c!914704 ((_ is Star!14897) r!7292))))

(declare-fun c!914705 () Bool)

(declare-fun call!375657 () Regex!14897)

(declare-fun bm!375650 () Bool)

(assert (=> bm!375650 (= call!375657 (derivativeStep!4117 (ite c!914705 (regOne!30307 r!7292) (ite c!914704 (reg!15226 r!7292) (ite c!914706 (regTwo!30306 r!7292) (regOne!30306 r!7292)))) (head!11310 s!2326)))))

(declare-fun call!375658 () Regex!14897)

(declare-fun bm!375651 () Bool)

(assert (=> bm!375651 (= call!375658 (derivativeStep!4117 (ite c!914705 (regTwo!30307 r!7292) (regOne!30306 r!7292)) (head!11310 s!2326)))))

(declare-fun b!5277824 () Bool)

(declare-fun e!3281963 () Regex!14897)

(assert (=> b!5277824 (= e!3281963 EmptyLang!14897)))

(declare-fun b!5277825 () Bool)

(declare-fun call!375656 () Regex!14897)

(assert (=> b!5277825 (= e!3281965 (Union!14897 (Concat!23742 call!375658 (regTwo!30306 r!7292)) call!375656))))

(declare-fun b!5277826 () Bool)

(assert (=> b!5277826 (= e!3281965 (Union!14897 (Concat!23742 call!375656 (regTwo!30306 r!7292)) EmptyLang!14897))))

(declare-fun bm!375652 () Bool)

(assert (=> bm!375652 (= call!375655 call!375657)))

(declare-fun b!5277827 () Bool)

(assert (=> b!5277827 (= e!3281962 (Union!14897 call!375657 call!375658))))

(declare-fun bm!375653 () Bool)

(assert (=> bm!375653 (= call!375656 call!375655)))

(declare-fun d!1698566 () Bool)

(declare-fun lt!2157669 () Regex!14897)

(assert (=> d!1698566 (validRegex!6633 lt!2157669)))

(assert (=> d!1698566 (= lt!2157669 e!3281963)))

(declare-fun c!914707 () Bool)

(assert (=> d!1698566 (= c!914707 (or ((_ is EmptyExpr!14897) r!7292) ((_ is EmptyLang!14897) r!7292)))))

(assert (=> d!1698566 (validRegex!6633 r!7292)))

(assert (=> d!1698566 (= (derivativeStep!4117 r!7292 (head!11310 s!2326)) lt!2157669)))

(declare-fun b!5277823 () Bool)

(declare-fun e!3281966 () Regex!14897)

(assert (=> b!5277823 (= e!3281966 (ite (= (head!11310 s!2326) (c!914175 r!7292)) EmptyExpr!14897 EmptyLang!14897))))

(declare-fun b!5277828 () Bool)

(assert (=> b!5277828 (= c!914705 ((_ is Union!14897) r!7292))))

(assert (=> b!5277828 (= e!3281966 e!3281962)))

(declare-fun b!5277829 () Bool)

(assert (=> b!5277829 (= e!3281963 e!3281966)))

(declare-fun c!914703 () Bool)

(assert (=> b!5277829 (= c!914703 ((_ is ElementMatch!14897) r!7292))))

(assert (= (and d!1698566 c!914707) b!5277824))

(assert (= (and d!1698566 (not c!914707)) b!5277829))

(assert (= (and b!5277829 c!914703) b!5277823))

(assert (= (and b!5277829 (not c!914703)) b!5277828))

(assert (= (and b!5277828 c!914705) b!5277827))

(assert (= (and b!5277828 (not c!914705)) b!5277822))

(assert (= (and b!5277822 c!914704) b!5277821))

(assert (= (and b!5277822 (not c!914704)) b!5277820))

(assert (= (and b!5277820 c!914706) b!5277825))

(assert (= (and b!5277820 (not c!914706)) b!5277826))

(assert (= (or b!5277825 b!5277826) bm!375653))

(assert (= (or b!5277821 bm!375653) bm!375652))

(assert (= (or b!5277827 b!5277825) bm!375651))

(assert (= (or b!5277827 bm!375652) bm!375650))

(assert (=> b!5277820 m!6315550))

(assert (=> bm!375650 m!6314824))

(declare-fun m!6316006 () Bool)

(assert (=> bm!375650 m!6316006))

(assert (=> bm!375651 m!6314824))

(declare-fun m!6316008 () Bool)

(assert (=> bm!375651 m!6316008))

(declare-fun m!6316010 () Bool)

(assert (=> d!1698566 m!6316010))

(assert (=> d!1698566 m!6314312))

(assert (=> b!5276661 d!1698566))

(assert (=> b!5276661 d!1698526))

(declare-fun d!1698588 () Bool)

(assert (=> d!1698588 (= (tail!10407 s!2326) (t!374191 s!2326))))

(assert (=> b!5276661 d!1698588))

(declare-fun b!5277830 () Bool)

(declare-fun e!3281967 () Bool)

(declare-fun call!375661 () Bool)

(assert (=> b!5277830 (= e!3281967 call!375661)))

(declare-fun b!5277831 () Bool)

(declare-fun e!3281973 () Bool)

(assert (=> b!5277831 (= e!3281973 call!375661)))

(declare-fun b!5277832 () Bool)

(declare-fun res!2238469 () Bool)

(declare-fun e!3281971 () Bool)

(assert (=> b!5277832 (=> res!2238469 e!3281971)))

(assert (=> b!5277832 (= res!2238469 (not ((_ is Concat!23742) lt!2157513)))))

(declare-fun e!3281969 () Bool)

(assert (=> b!5277832 (= e!3281969 e!3281971)))

(declare-fun b!5277833 () Bool)

(assert (=> b!5277833 (= e!3281971 e!3281973)))

(declare-fun res!2238466 () Bool)

(assert (=> b!5277833 (=> (not res!2238466) (not e!3281973))))

(declare-fun call!375659 () Bool)

(assert (=> b!5277833 (= res!2238466 call!375659)))

(declare-fun bm!375654 () Bool)

(declare-fun call!375660 () Bool)

(declare-fun c!914708 () Bool)

(declare-fun c!914709 () Bool)

(assert (=> bm!375654 (= call!375660 (validRegex!6633 (ite c!914709 (reg!15226 lt!2157513) (ite c!914708 (regOne!30307 lt!2157513) (regOne!30306 lt!2157513)))))))

(declare-fun d!1698590 () Bool)

(declare-fun res!2238468 () Bool)

(declare-fun e!3281968 () Bool)

(assert (=> d!1698590 (=> res!2238468 e!3281968)))

(assert (=> d!1698590 (= res!2238468 ((_ is ElementMatch!14897) lt!2157513))))

(assert (=> d!1698590 (= (validRegex!6633 lt!2157513) e!3281968)))

(declare-fun bm!375655 () Bool)

(assert (=> bm!375655 (= call!375659 call!375660)))

(declare-fun bm!375656 () Bool)

(assert (=> bm!375656 (= call!375661 (validRegex!6633 (ite c!914708 (regTwo!30307 lt!2157513) (regTwo!30306 lt!2157513))))))

(declare-fun b!5277834 () Bool)

(declare-fun e!3281970 () Bool)

(assert (=> b!5277834 (= e!3281968 e!3281970)))

(assert (=> b!5277834 (= c!914709 ((_ is Star!14897) lt!2157513))))

(declare-fun b!5277835 () Bool)

(declare-fun e!3281972 () Bool)

(assert (=> b!5277835 (= e!3281972 call!375660)))

(declare-fun b!5277836 () Bool)

(assert (=> b!5277836 (= e!3281970 e!3281972)))

(declare-fun res!2238465 () Bool)

(assert (=> b!5277836 (= res!2238465 (not (nullable!5066 (reg!15226 lt!2157513))))))

(assert (=> b!5277836 (=> (not res!2238465) (not e!3281972))))

(declare-fun b!5277837 () Bool)

(assert (=> b!5277837 (= e!3281970 e!3281969)))

(assert (=> b!5277837 (= c!914708 ((_ is Union!14897) lt!2157513))))

(declare-fun b!5277838 () Bool)

(declare-fun res!2238467 () Bool)

(assert (=> b!5277838 (=> (not res!2238467) (not e!3281967))))

(assert (=> b!5277838 (= res!2238467 call!375659)))

(assert (=> b!5277838 (= e!3281969 e!3281967)))

(assert (= (and d!1698590 (not res!2238468)) b!5277834))

(assert (= (and b!5277834 c!914709) b!5277836))

(assert (= (and b!5277834 (not c!914709)) b!5277837))

(assert (= (and b!5277836 res!2238465) b!5277835))

(assert (= (and b!5277837 c!914708) b!5277838))

(assert (= (and b!5277837 (not c!914708)) b!5277832))

(assert (= (and b!5277838 res!2238467) b!5277830))

(assert (= (and b!5277832 (not res!2238469)) b!5277833))

(assert (= (and b!5277833 res!2238466) b!5277831))

(assert (= (or b!5277830 b!5277831) bm!375656))

(assert (= (or b!5277838 b!5277833) bm!375655))

(assert (= (or b!5277835 bm!375655) bm!375654))

(declare-fun m!6316012 () Bool)

(assert (=> bm!375654 m!6316012))

(declare-fun m!6316014 () Bool)

(assert (=> bm!375656 m!6316014))

(declare-fun m!6316016 () Bool)

(assert (=> b!5277836 m!6316016))

(assert (=> d!1697978 d!1698590))

(declare-fun d!1698592 () Bool)

(declare-fun res!2238470 () Bool)

(declare-fun e!3281974 () Bool)

(assert (=> d!1698592 (=> res!2238470 e!3281974)))

(assert (=> d!1698592 (= res!2238470 ((_ is Nil!60866) (exprs!4781 (h!67315 zl!343))))))

(assert (=> d!1698592 (= (forall!14305 (exprs!4781 (h!67315 zl!343)) lambda!266336) e!3281974)))

(declare-fun b!5277839 () Bool)

(declare-fun e!3281975 () Bool)

(assert (=> b!5277839 (= e!3281974 e!3281975)))

(declare-fun res!2238471 () Bool)

(assert (=> b!5277839 (=> (not res!2238471) (not e!3281975))))

(assert (=> b!5277839 (= res!2238471 (dynLambda!24057 lambda!266336 (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5277840 () Bool)

(assert (=> b!5277840 (= e!3281975 (forall!14305 (t!374189 (exprs!4781 (h!67315 zl!343))) lambda!266336))))

(assert (= (and d!1698592 (not res!2238470)) b!5277839))

(assert (= (and b!5277839 res!2238471) b!5277840))

(declare-fun b_lambda!203601 () Bool)

(assert (=> (not b_lambda!203601) (not b!5277839)))

(declare-fun m!6316018 () Bool)

(assert (=> b!5277839 m!6316018))

(declare-fun m!6316020 () Bool)

(assert (=> b!5277840 m!6316020))

(assert (=> d!1697978 d!1698592))

(declare-fun b!5277841 () Bool)

(declare-fun e!3281980 () Bool)

(declare-fun call!375663 () Bool)

(assert (=> b!5277841 (= e!3281980 call!375663)))

(declare-fun b!5277842 () Bool)

(declare-fun e!3281976 () Bool)

(assert (=> b!5277842 (= e!3281976 call!375663)))

(declare-fun bm!375657 () Bool)

(declare-fun call!375662 () Bool)

(declare-fun c!914710 () Bool)

(assert (=> bm!375657 (= call!375662 (nullable!5066 (ite c!914710 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))))))

(declare-fun b!5277843 () Bool)

(declare-fun e!3281977 () Bool)

(declare-fun e!3281978 () Bool)

(assert (=> b!5277843 (= e!3281977 e!3281978)))

(declare-fun res!2238472 () Bool)

(assert (=> b!5277843 (=> res!2238472 e!3281978)))

(assert (=> b!5277843 (= res!2238472 ((_ is Star!14897) (regOne!30306 (regOne!30306 r!7292))))))

(declare-fun b!5277844 () Bool)

(declare-fun e!3281979 () Bool)

(assert (=> b!5277844 (= e!3281979 e!3281980)))

(declare-fun res!2238474 () Bool)

(assert (=> b!5277844 (= res!2238474 call!375662)))

(assert (=> b!5277844 (=> res!2238474 e!3281980)))

(declare-fun b!5277845 () Bool)

(assert (=> b!5277845 (= e!3281978 e!3281979)))

(assert (=> b!5277845 (= c!914710 ((_ is Union!14897) (regOne!30306 (regOne!30306 r!7292))))))

(declare-fun d!1698594 () Bool)

(declare-fun res!2238475 () Bool)

(declare-fun e!3281981 () Bool)

(assert (=> d!1698594 (=> res!2238475 e!3281981)))

(assert (=> d!1698594 (= res!2238475 ((_ is EmptyExpr!14897) (regOne!30306 (regOne!30306 r!7292))))))

(assert (=> d!1698594 (= (nullableFct!1448 (regOne!30306 (regOne!30306 r!7292))) e!3281981)))

(declare-fun b!5277846 () Bool)

(assert (=> b!5277846 (= e!3281979 e!3281976)))

(declare-fun res!2238473 () Bool)

(assert (=> b!5277846 (= res!2238473 call!375662)))

(assert (=> b!5277846 (=> (not res!2238473) (not e!3281976))))

(declare-fun bm!375658 () Bool)

(assert (=> bm!375658 (= call!375663 (nullable!5066 (ite c!914710 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))))))))

(declare-fun b!5277847 () Bool)

(assert (=> b!5277847 (= e!3281981 e!3281977)))

(declare-fun res!2238476 () Bool)

(assert (=> b!5277847 (=> (not res!2238476) (not e!3281977))))

(assert (=> b!5277847 (= res!2238476 (and (not ((_ is EmptyLang!14897) (regOne!30306 (regOne!30306 r!7292)))) (not ((_ is ElementMatch!14897) (regOne!30306 (regOne!30306 r!7292))))))))

(assert (= (and d!1698594 (not res!2238475)) b!5277847))

(assert (= (and b!5277847 res!2238476) b!5277843))

(assert (= (and b!5277843 (not res!2238472)) b!5277845))

(assert (= (and b!5277845 c!914710) b!5277844))

(assert (= (and b!5277845 (not c!914710)) b!5277846))

(assert (= (and b!5277844 (not res!2238474)) b!5277841))

(assert (= (and b!5277846 res!2238473) b!5277842))

(assert (= (or b!5277841 b!5277842) bm!375658))

(assert (= (or b!5277844 b!5277846) bm!375657))

(declare-fun m!6316022 () Bool)

(assert (=> bm!375657 m!6316022))

(declare-fun m!6316024 () Bool)

(assert (=> bm!375658 m!6316024))

(assert (=> d!1697944 d!1698594))

(declare-fun c!914712 () Bool)

(declare-fun c!914715 () Bool)

(declare-fun call!375666 () List!60990)

(declare-fun bm!375659 () Bool)

(assert (=> bm!375659 (= call!375666 ($colon$colon!1346 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157404)))) (ite (or c!914715 c!914712) (regTwo!30306 (h!67314 (exprs!4781 lt!2157404))) (h!67314 (exprs!4781 lt!2157404)))))))

(declare-fun b!5277848 () Bool)

(declare-fun e!3281982 () Bool)

(assert (=> b!5277848 (= e!3281982 (nullable!5066 (regOne!30306 (h!67314 (exprs!4781 lt!2157404)))))))

(declare-fun b!5277849 () Bool)

(declare-fun e!3281984 () (InoxSet Context!8562))

(declare-fun call!375664 () (InoxSet Context!8562))

(declare-fun call!375668 () (InoxSet Context!8562))

(assert (=> b!5277849 (= e!3281984 ((_ map or) call!375664 call!375668))))

(declare-fun b!5277850 () Bool)

(declare-fun e!3281986 () (InoxSet Context!8562))

(assert (=> b!5277850 (= e!3281986 (store ((as const (Array Context!8562 Bool)) false) (Context!8563 (t!374189 (exprs!4781 lt!2157404))) true))))

(declare-fun b!5277851 () Bool)

(declare-fun e!3281987 () (InoxSet Context!8562))

(declare-fun e!3281985 () (InoxSet Context!8562))

(assert (=> b!5277851 (= e!3281987 e!3281985)))

(assert (=> b!5277851 (= c!914712 ((_ is Concat!23742) (h!67314 (exprs!4781 lt!2157404))))))

(declare-fun bm!375660 () Bool)

(declare-fun call!375669 () (InoxSet Context!8562))

(assert (=> bm!375660 (= call!375669 call!375664)))

(declare-fun b!5277852 () Bool)

(declare-fun e!3281983 () (InoxSet Context!8562))

(assert (=> b!5277852 (= e!3281983 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5277853 () Bool)

(assert (=> b!5277853 (= c!914715 e!3281982)))

(declare-fun res!2238477 () Bool)

(assert (=> b!5277853 (=> (not res!2238477) (not e!3281982))))

(assert (=> b!5277853 (= res!2238477 ((_ is Concat!23742) (h!67314 (exprs!4781 lt!2157404))))))

(assert (=> b!5277853 (= e!3281984 e!3281987)))

(declare-fun b!5277854 () Bool)

(assert (=> b!5277854 (= e!3281986 e!3281984)))

(declare-fun c!914713 () Bool)

(assert (=> b!5277854 (= c!914713 ((_ is Union!14897) (h!67314 (exprs!4781 lt!2157404))))))

(declare-fun bm!375661 () Bool)

(assert (=> bm!375661 (= call!375668 (derivationStepZipperDown!345 (ite c!914713 (regTwo!30307 (h!67314 (exprs!4781 lt!2157404))) (regOne!30306 (h!67314 (exprs!4781 lt!2157404)))) (ite c!914713 (Context!8563 (t!374189 (exprs!4781 lt!2157404))) (Context!8563 call!375666)) (h!67316 s!2326)))))

(declare-fun b!5277855 () Bool)

(declare-fun c!914711 () Bool)

(assert (=> b!5277855 (= c!914711 ((_ is Star!14897) (h!67314 (exprs!4781 lt!2157404))))))

(assert (=> b!5277855 (= e!3281985 e!3281983)))

(declare-fun b!5277856 () Bool)

(declare-fun call!375667 () (InoxSet Context!8562))

(assert (=> b!5277856 (= e!3281985 call!375667)))

(declare-fun bm!375662 () Bool)

(assert (=> bm!375662 (= call!375667 call!375669)))

(declare-fun b!5277857 () Bool)

(assert (=> b!5277857 (= e!3281983 call!375667)))

(declare-fun b!5277858 () Bool)

(assert (=> b!5277858 (= e!3281987 ((_ map or) call!375668 call!375669))))

(declare-fun d!1698596 () Bool)

(declare-fun c!914714 () Bool)

(assert (=> d!1698596 (= c!914714 (and ((_ is ElementMatch!14897) (h!67314 (exprs!4781 lt!2157404))) (= (c!914175 (h!67314 (exprs!4781 lt!2157404))) (h!67316 s!2326))))))

(assert (=> d!1698596 (= (derivationStepZipperDown!345 (h!67314 (exprs!4781 lt!2157404)) (Context!8563 (t!374189 (exprs!4781 lt!2157404))) (h!67316 s!2326)) e!3281986)))

(declare-fun call!375665 () List!60990)

(declare-fun bm!375663 () Bool)

(assert (=> bm!375663 (= call!375664 (derivationStepZipperDown!345 (ite c!914713 (regOne!30307 (h!67314 (exprs!4781 lt!2157404))) (ite c!914715 (regTwo!30306 (h!67314 (exprs!4781 lt!2157404))) (ite c!914712 (regOne!30306 (h!67314 (exprs!4781 lt!2157404))) (reg!15226 (h!67314 (exprs!4781 lt!2157404)))))) (ite (or c!914713 c!914715) (Context!8563 (t!374189 (exprs!4781 lt!2157404))) (Context!8563 call!375665)) (h!67316 s!2326)))))

(declare-fun bm!375664 () Bool)

(assert (=> bm!375664 (= call!375665 call!375666)))

(assert (= (and d!1698596 c!914714) b!5277850))

(assert (= (and d!1698596 (not c!914714)) b!5277854))

(assert (= (and b!5277854 c!914713) b!5277849))

(assert (= (and b!5277854 (not c!914713)) b!5277853))

(assert (= (and b!5277853 res!2238477) b!5277848))

(assert (= (and b!5277853 c!914715) b!5277858))

(assert (= (and b!5277853 (not c!914715)) b!5277851))

(assert (= (and b!5277851 c!914712) b!5277856))

(assert (= (and b!5277851 (not c!914712)) b!5277855))

(assert (= (and b!5277855 c!914711) b!5277857))

(assert (= (and b!5277855 (not c!914711)) b!5277852))

(assert (= (or b!5277856 b!5277857) bm!375664))

(assert (= (or b!5277856 b!5277857) bm!375662))

(assert (= (or b!5277858 bm!375664) bm!375659))

(assert (= (or b!5277858 bm!375662) bm!375660))

(assert (= (or b!5277849 b!5277858) bm!375661))

(assert (= (or b!5277849 bm!375660) bm!375663))

(declare-fun m!6316026 () Bool)

(assert (=> bm!375661 m!6316026))

(declare-fun m!6316028 () Bool)

(assert (=> bm!375663 m!6316028))

(declare-fun m!6316030 () Bool)

(assert (=> bm!375659 m!6316030))

(declare-fun m!6316032 () Bool)

(assert (=> b!5277848 m!6316032))

(declare-fun m!6316034 () Bool)

(assert (=> b!5277850 m!6316034))

(assert (=> bm!375444 d!1698596))

(declare-fun b!5277859 () Bool)

(declare-fun e!3281988 () Bool)

(declare-fun call!375672 () Bool)

(assert (=> b!5277859 (= e!3281988 call!375672)))

(declare-fun b!5277860 () Bool)

(declare-fun e!3281994 () Bool)

(assert (=> b!5277860 (= e!3281994 call!375672)))

(declare-fun b!5277861 () Bool)

(declare-fun res!2238482 () Bool)

(declare-fun e!3281992 () Bool)

(assert (=> b!5277861 (=> res!2238482 e!3281992)))

(assert (=> b!5277861 (= res!2238482 (not ((_ is Concat!23742) lt!2157543)))))

(declare-fun e!3281990 () Bool)

(assert (=> b!5277861 (= e!3281990 e!3281992)))

(declare-fun b!5277862 () Bool)

(assert (=> b!5277862 (= e!3281992 e!3281994)))

(declare-fun res!2238479 () Bool)

(assert (=> b!5277862 (=> (not res!2238479) (not e!3281994))))

(declare-fun call!375670 () Bool)

(assert (=> b!5277862 (= res!2238479 call!375670)))

(declare-fun call!375671 () Bool)

(declare-fun bm!375665 () Bool)

(declare-fun c!914716 () Bool)

(declare-fun c!914717 () Bool)

(assert (=> bm!375665 (= call!375671 (validRegex!6633 (ite c!914717 (reg!15226 lt!2157543) (ite c!914716 (regOne!30307 lt!2157543) (regOne!30306 lt!2157543)))))))

(declare-fun d!1698598 () Bool)

(declare-fun res!2238481 () Bool)

(declare-fun e!3281989 () Bool)

(assert (=> d!1698598 (=> res!2238481 e!3281989)))

(assert (=> d!1698598 (= res!2238481 ((_ is ElementMatch!14897) lt!2157543))))

(assert (=> d!1698598 (= (validRegex!6633 lt!2157543) e!3281989)))

(declare-fun bm!375666 () Bool)

(assert (=> bm!375666 (= call!375670 call!375671)))

(declare-fun bm!375667 () Bool)

(assert (=> bm!375667 (= call!375672 (validRegex!6633 (ite c!914716 (regTwo!30307 lt!2157543) (regTwo!30306 lt!2157543))))))

(declare-fun b!5277863 () Bool)

(declare-fun e!3281991 () Bool)

(assert (=> b!5277863 (= e!3281989 e!3281991)))

(assert (=> b!5277863 (= c!914717 ((_ is Star!14897) lt!2157543))))

(declare-fun b!5277864 () Bool)

(declare-fun e!3281993 () Bool)

(assert (=> b!5277864 (= e!3281993 call!375671)))

(declare-fun b!5277865 () Bool)

(assert (=> b!5277865 (= e!3281991 e!3281993)))

(declare-fun res!2238478 () Bool)

(assert (=> b!5277865 (= res!2238478 (not (nullable!5066 (reg!15226 lt!2157543))))))

(assert (=> b!5277865 (=> (not res!2238478) (not e!3281993))))

(declare-fun b!5277866 () Bool)

(assert (=> b!5277866 (= e!3281991 e!3281990)))

(assert (=> b!5277866 (= c!914716 ((_ is Union!14897) lt!2157543))))

(declare-fun b!5277867 () Bool)

(declare-fun res!2238480 () Bool)

(assert (=> b!5277867 (=> (not res!2238480) (not e!3281988))))

(assert (=> b!5277867 (= res!2238480 call!375670)))

(assert (=> b!5277867 (= e!3281990 e!3281988)))

(assert (= (and d!1698598 (not res!2238481)) b!5277863))

(assert (= (and b!5277863 c!914717) b!5277865))

(assert (= (and b!5277863 (not c!914717)) b!5277866))

(assert (= (and b!5277865 res!2238478) b!5277864))

(assert (= (and b!5277866 c!914716) b!5277867))

(assert (= (and b!5277866 (not c!914716)) b!5277861))

(assert (= (and b!5277867 res!2238480) b!5277859))

(assert (= (and b!5277861 (not res!2238482)) b!5277862))

(assert (= (and b!5277862 res!2238479) b!5277860))

(assert (= (or b!5277859 b!5277860) bm!375667))

(assert (= (or b!5277867 b!5277862) bm!375666))

(assert (= (or b!5277864 bm!375666) bm!375665))

(declare-fun m!6316036 () Bool)

(assert (=> bm!375665 m!6316036))

(declare-fun m!6316038 () Bool)

(assert (=> bm!375667 m!6316038))

(declare-fun m!6316040 () Bool)

(assert (=> b!5277865 m!6316040))

(assert (=> d!1698038 d!1698598))

(assert (=> d!1698038 d!1698076))

(assert (=> d!1698038 d!1698078))

(declare-fun d!1698600 () Bool)

(declare-fun c!914718 () Bool)

(assert (=> d!1698600 (= c!914718 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3281995 () Bool)

(assert (=> d!1698600 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157407 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3281995)))

(declare-fun b!5277868 () Bool)

(assert (=> b!5277868 (= e!3281995 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157407 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277869 () Bool)

(assert (=> b!5277869 (= e!3281995 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157407 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698600 c!914718) b!5277868))

(assert (= (and d!1698600 (not c!914718)) b!5277869))

(assert (=> d!1698600 m!6314592))

(assert (=> d!1698600 m!6315570))

(assert (=> b!5277868 m!6314964))

(declare-fun m!6316042 () Bool)

(assert (=> b!5277868 m!6316042))

(assert (=> b!5277869 m!6314592))

(assert (=> b!5277869 m!6315576))

(assert (=> b!5277869 m!6314964))

(assert (=> b!5277869 m!6315576))

(declare-fun m!6316044 () Bool)

(assert (=> b!5277869 m!6316044))

(assert (=> b!5277869 m!6314592))

(assert (=> b!5277869 m!6315584))

(assert (=> b!5277869 m!6316044))

(assert (=> b!5277869 m!6315584))

(declare-fun m!6316046 () Bool)

(assert (=> b!5277869 m!6316046))

(assert (=> b!5276806 d!1698600))

(declare-fun bs!1222981 () Bool)

(declare-fun d!1698602 () Bool)

(assert (= bs!1222981 (and d!1698602 d!1698510)))

(declare-fun lambda!266471 () Int)

(assert (=> bs!1222981 (= lambda!266471 lambda!266460)))

(declare-fun bs!1222982 () Bool)

(assert (= bs!1222982 (and d!1698602 d!1698494)))

(assert (=> bs!1222982 (= lambda!266471 lambda!266456)))

(declare-fun bs!1222983 () Bool)

(assert (= bs!1222983 (and d!1698602 b!5275973)))

(assert (=> bs!1222983 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266471 lambda!266288))))

(declare-fun bs!1222984 () Bool)

(assert (= bs!1222984 (and d!1698602 d!1698422)))

(assert (=> bs!1222984 (= lambda!266471 lambda!266452)))

(declare-fun bs!1222985 () Bool)

(assert (= bs!1222985 (and d!1698602 d!1698056)))

(assert (=> bs!1222985 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266471 lambda!266362))))

(declare-fun bs!1222986 () Bool)

(assert (= bs!1222986 (and d!1698602 d!1698544)))

(assert (=> bs!1222986 (= lambda!266471 lambda!266467)))

(declare-fun bs!1222987 () Bool)

(assert (= bs!1222987 (and d!1698602 d!1698556)))

(assert (=> bs!1222987 (= lambda!266471 lambda!266469)))

(declare-fun bs!1222988 () Bool)

(assert (= bs!1222988 (and d!1698602 d!1698436)))

(assert (=> bs!1222988 (= lambda!266471 lambda!266453)))

(declare-fun bs!1222989 () Bool)

(assert (= bs!1222989 (and d!1698602 d!1698044)))

(assert (=> bs!1222989 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266471 lambda!266357))))

(declare-fun bs!1222990 () Bool)

(assert (= bs!1222990 (and d!1698602 d!1698522)))

(assert (=> bs!1222990 (= lambda!266471 lambda!266464)))

(assert (=> d!1698602 true))

(assert (=> d!1698602 (= (derivationStepZipper!1140 lt!2157407 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157407 lambda!266471))))

(declare-fun bs!1222991 () Bool)

(assert (= bs!1222991 d!1698602))

(declare-fun m!6316048 () Bool)

(assert (=> bs!1222991 m!6316048))

(assert (=> b!5276806 d!1698602))

(assert (=> b!5276806 d!1698424))

(assert (=> b!5276806 d!1698426))

(declare-fun b!5277870 () Bool)

(declare-fun res!2238489 () Bool)

(declare-fun e!3281996 () Bool)

(assert (=> b!5277870 (=> res!2238489 e!3281996)))

(assert (=> b!5277870 (= res!2238489 (not ((_ is ElementMatch!14897) (regTwo!30306 r!7292))))))

(declare-fun e!3282000 () Bool)

(assert (=> b!5277870 (= e!3282000 e!3281996)))

(declare-fun b!5277871 () Bool)

(declare-fun e!3281999 () Bool)

(assert (=> b!5277871 (= e!3281996 e!3281999)))

(declare-fun res!2238485 () Bool)

(assert (=> b!5277871 (=> (not res!2238485) (not e!3281999))))

(declare-fun lt!2157670 () Bool)

(assert (=> b!5277871 (= res!2238485 (not lt!2157670))))

(declare-fun b!5277872 () Bool)

(declare-fun e!3282001 () Bool)

(assert (=> b!5277872 (= e!3282001 (matchR!7082 (derivativeStep!4117 (regTwo!30306 r!7292) (head!11310 (_2!35399 (get!20930 lt!2157555)))) (tail!10407 (_2!35399 (get!20930 lt!2157555)))))))

(declare-fun b!5277873 () Bool)

(declare-fun res!2238490 () Bool)

(assert (=> b!5277873 (=> res!2238490 e!3281996)))

(declare-fun e!3282002 () Bool)

(assert (=> b!5277873 (= res!2238490 e!3282002)))

(declare-fun res!2238483 () Bool)

(assert (=> b!5277873 (=> (not res!2238483) (not e!3282002))))

(assert (=> b!5277873 (= res!2238483 lt!2157670)))

(declare-fun b!5277874 () Bool)

(declare-fun res!2238486 () Bool)

(assert (=> b!5277874 (=> (not res!2238486) (not e!3282002))))

(declare-fun call!375673 () Bool)

(assert (=> b!5277874 (= res!2238486 (not call!375673))))

(declare-fun b!5277875 () Bool)

(declare-fun res!2238487 () Bool)

(assert (=> b!5277875 (=> (not res!2238487) (not e!3282002))))

(assert (=> b!5277875 (= res!2238487 (isEmpty!32823 (tail!10407 (_2!35399 (get!20930 lt!2157555)))))))

(declare-fun d!1698604 () Bool)

(declare-fun e!3281997 () Bool)

(assert (=> d!1698604 e!3281997))

(declare-fun c!914721 () Bool)

(assert (=> d!1698604 (= c!914721 ((_ is EmptyExpr!14897) (regTwo!30306 r!7292)))))

(assert (=> d!1698604 (= lt!2157670 e!3282001)))

(declare-fun c!914720 () Bool)

(assert (=> d!1698604 (= c!914720 (isEmpty!32823 (_2!35399 (get!20930 lt!2157555))))))

(assert (=> d!1698604 (validRegex!6633 (regTwo!30306 r!7292))))

(assert (=> d!1698604 (= (matchR!7082 (regTwo!30306 r!7292) (_2!35399 (get!20930 lt!2157555))) lt!2157670)))

(declare-fun b!5277876 () Bool)

(assert (=> b!5277876 (= e!3282002 (= (head!11310 (_2!35399 (get!20930 lt!2157555))) (c!914175 (regTwo!30306 r!7292))))))

(declare-fun b!5277877 () Bool)

(assert (=> b!5277877 (= e!3281997 e!3282000)))

(declare-fun c!914719 () Bool)

(assert (=> b!5277877 (= c!914719 ((_ is EmptyLang!14897) (regTwo!30306 r!7292)))))

(declare-fun b!5277878 () Bool)

(declare-fun e!3281998 () Bool)

(assert (=> b!5277878 (= e!3281999 e!3281998)))

(declare-fun res!2238484 () Bool)

(assert (=> b!5277878 (=> res!2238484 e!3281998)))

(assert (=> b!5277878 (= res!2238484 call!375673)))

(declare-fun b!5277879 () Bool)

(declare-fun res!2238488 () Bool)

(assert (=> b!5277879 (=> res!2238488 e!3281998)))

(assert (=> b!5277879 (= res!2238488 (not (isEmpty!32823 (tail!10407 (_2!35399 (get!20930 lt!2157555))))))))

(declare-fun b!5277880 () Bool)

(assert (=> b!5277880 (= e!3282001 (nullable!5066 (regTwo!30306 r!7292)))))

(declare-fun bm!375668 () Bool)

(assert (=> bm!375668 (= call!375673 (isEmpty!32823 (_2!35399 (get!20930 lt!2157555))))))

(declare-fun b!5277881 () Bool)

(assert (=> b!5277881 (= e!3281997 (= lt!2157670 call!375673))))

(declare-fun b!5277882 () Bool)

(assert (=> b!5277882 (= e!3282000 (not lt!2157670))))

(declare-fun b!5277883 () Bool)

(assert (=> b!5277883 (= e!3281998 (not (= (head!11310 (_2!35399 (get!20930 lt!2157555))) (c!914175 (regTwo!30306 r!7292)))))))

(assert (= (and d!1698604 c!914720) b!5277880))

(assert (= (and d!1698604 (not c!914720)) b!5277872))

(assert (= (and d!1698604 c!914721) b!5277881))

(assert (= (and d!1698604 (not c!914721)) b!5277877))

(assert (= (and b!5277877 c!914719) b!5277882))

(assert (= (and b!5277877 (not c!914719)) b!5277870))

(assert (= (and b!5277870 (not res!2238489)) b!5277873))

(assert (= (and b!5277873 res!2238483) b!5277874))

(assert (= (and b!5277874 res!2238486) b!5277875))

(assert (= (and b!5277875 res!2238487) b!5277876))

(assert (= (and b!5277873 (not res!2238490)) b!5277871))

(assert (= (and b!5277871 res!2238485) b!5277878))

(assert (= (and b!5277878 (not res!2238484)) b!5277879))

(assert (= (and b!5277879 (not res!2238488)) b!5277883))

(assert (= (or b!5277881 b!5277874 b!5277878) bm!375668))

(declare-fun m!6316050 () Bool)

(assert (=> b!5277880 m!6316050))

(declare-fun m!6316052 () Bool)

(assert (=> b!5277879 m!6316052))

(assert (=> b!5277879 m!6316052))

(declare-fun m!6316054 () Bool)

(assert (=> b!5277879 m!6316054))

(declare-fun m!6316056 () Bool)

(assert (=> b!5277883 m!6316056))

(assert (=> b!5277875 m!6316052))

(assert (=> b!5277875 m!6316052))

(assert (=> b!5277875 m!6316054))

(declare-fun m!6316058 () Bool)

(assert (=> d!1698604 m!6316058))

(declare-fun m!6316060 () Bool)

(assert (=> d!1698604 m!6316060))

(assert (=> b!5277876 m!6316056))

(assert (=> bm!375668 m!6316058))

(assert (=> b!5277872 m!6316056))

(assert (=> b!5277872 m!6316056))

(declare-fun m!6316062 () Bool)

(assert (=> b!5277872 m!6316062))

(assert (=> b!5277872 m!6316052))

(assert (=> b!5277872 m!6316062))

(assert (=> b!5277872 m!6316052))

(declare-fun m!6316064 () Bool)

(assert (=> b!5277872 m!6316064))

(assert (=> b!5276755 d!1698604))

(assert (=> b!5276755 d!1698454))

(declare-fun d!1698606 () Bool)

(assert (=> d!1698606 (= (nullable!5066 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))) (nullableFct!1448 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292)))))))

(declare-fun bs!1222992 () Bool)

(assert (= bs!1222992 d!1698606))

(declare-fun m!6316066 () Bool)

(assert (=> bs!1222992 m!6316066))

(assert (=> b!5276239 d!1698606))

(declare-fun d!1698608 () Bool)

(declare-fun res!2238491 () Bool)

(declare-fun e!3282003 () Bool)

(assert (=> d!1698608 (=> res!2238491 e!3282003)))

(assert (=> d!1698608 (= res!2238491 ((_ is Nil!60867) lt!2157429))))

(assert (=> d!1698608 (= (forall!14307 lt!2157429 lambda!266345) e!3282003)))

(declare-fun b!5277884 () Bool)

(declare-fun e!3282004 () Bool)

(assert (=> b!5277884 (= e!3282003 e!3282004)))

(declare-fun res!2238492 () Bool)

(assert (=> b!5277884 (=> (not res!2238492) (not e!3282004))))

(assert (=> b!5277884 (= res!2238492 (dynLambda!24063 lambda!266345 (h!67315 lt!2157429)))))

(declare-fun b!5277885 () Bool)

(assert (=> b!5277885 (= e!3282004 (forall!14307 (t!374190 lt!2157429) lambda!266345))))

(assert (= (and d!1698608 (not res!2238491)) b!5277884))

(assert (= (and b!5277884 res!2238492) b!5277885))

(declare-fun b_lambda!203603 () Bool)

(assert (=> (not b_lambda!203603) (not b!5277884)))

(declare-fun m!6316068 () Bool)

(assert (=> b!5277884 m!6316068))

(declare-fun m!6316070 () Bool)

(assert (=> b!5277885 m!6316070))

(assert (=> b!5276582 d!1698608))

(declare-fun d!1698610 () Bool)

(assert (=> d!1698610 (= (nullable!5066 (reg!15226 r!7292)) (nullableFct!1448 (reg!15226 r!7292)))))

(declare-fun bs!1222993 () Bool)

(assert (= bs!1222993 d!1698610))

(declare-fun m!6316072 () Bool)

(assert (=> bs!1222993 m!6316072))

(assert (=> b!5276704 d!1698610))

(assert (=> bs!1222366 d!1697970))

(assert (=> b!5276679 d!1698012))

(assert (=> b!5276723 d!1698018))

(declare-fun d!1698612 () Bool)

(declare-fun lt!2157671 () Int)

(assert (=> d!1698612 (>= lt!2157671 0)))

(declare-fun e!3282005 () Int)

(assert (=> d!1698612 (= lt!2157671 e!3282005)))

(declare-fun c!914722 () Bool)

(assert (=> d!1698612 (= c!914722 ((_ is Cons!60867) (t!374190 zl!343)))))

(assert (=> d!1698612 (= (zipperDepthTotal!58 (t!374190 zl!343)) lt!2157671)))

(declare-fun b!5277886 () Bool)

(assert (=> b!5277886 (= e!3282005 (+ (contextDepthTotal!38 (h!67315 (t!374190 zl!343))) (zipperDepthTotal!58 (t!374190 (t!374190 zl!343)))))))

(declare-fun b!5277887 () Bool)

(assert (=> b!5277887 (= e!3282005 0)))

(assert (= (and d!1698612 c!914722) b!5277886))

(assert (= (and d!1698612 (not c!914722)) b!5277887))

(declare-fun m!6316074 () Bool)

(assert (=> b!5277886 m!6316074))

(declare-fun m!6316076 () Bool)

(assert (=> b!5277886 m!6316076))

(assert (=> b!5276723 d!1698612))

(assert (=> d!1697956 d!1697946))

(declare-fun d!1698614 () Bool)

(assert (=> d!1698614 (= (flatMap!624 z!1189 lambda!266288) (dynLambda!24055 lambda!266288 (h!67315 zl!343)))))

(assert (=> d!1698614 true))

(declare-fun _$13!1848 () Unit!153106)

(assert (=> d!1698614 (= (choose!39374 z!1189 (h!67315 zl!343) lambda!266288) _$13!1848)))

(declare-fun b_lambda!203605 () Bool)

(assert (=> (not b_lambda!203605) (not d!1698614)))

(declare-fun bs!1222994 () Bool)

(assert (= bs!1222994 d!1698614))

(assert (=> bs!1222994 m!6314274))

(assert (=> bs!1222994 m!6314642))

(assert (=> d!1697956 d!1698614))

(declare-fun d!1698616 () Bool)

(assert (=> d!1698616 (= (head!11311 (unfocusZipperList!339 zl!343)) (h!67314 (unfocusZipperList!339 zl!343)))))

(assert (=> b!5276797 d!1698616))

(declare-fun d!1698618 () Bool)

(declare-fun c!914723 () Bool)

(assert (=> d!1698618 (= c!914723 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3282006 () Bool)

(assert (=> d!1698618 (= (matchZipper!1141 ((_ map or) lt!2157431 lt!2157424) (t!374191 s!2326)) e!3282006)))

(declare-fun b!5277888 () Bool)

(assert (=> b!5277888 (= e!3282006 (nullableZipper!1296 ((_ map or) lt!2157431 lt!2157424)))))

(declare-fun b!5277889 () Bool)

(assert (=> b!5277889 (= e!3282006 (matchZipper!1141 (derivationStepZipper!1140 ((_ map or) lt!2157431 lt!2157424) (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698618 c!914723) b!5277888))

(assert (= (and d!1698618 (not c!914723)) b!5277889))

(assert (=> d!1698618 m!6314584))

(declare-fun m!6316078 () Bool)

(assert (=> b!5277888 m!6316078))

(assert (=> b!5277889 m!6314588))

(assert (=> b!5277889 m!6314588))

(declare-fun m!6316080 () Bool)

(assert (=> b!5277889 m!6316080))

(assert (=> b!5277889 m!6314592))

(assert (=> b!5277889 m!6316080))

(assert (=> b!5277889 m!6314592))

(declare-fun m!6316082 () Bool)

(assert (=> b!5277889 m!6316082))

(assert (=> d!1698036 d!1698618))

(assert (=> d!1698036 d!1698034))

(declare-fun e!3282009 () Bool)

(declare-fun d!1698620 () Bool)

(assert (=> d!1698620 (= (matchZipper!1141 ((_ map or) lt!2157431 lt!2157424) (t!374191 s!2326)) e!3282009)))

(declare-fun res!2238495 () Bool)

(assert (=> d!1698620 (=> res!2238495 e!3282009)))

(assert (=> d!1698620 (= res!2238495 (matchZipper!1141 lt!2157431 (t!374191 s!2326)))))

(assert (=> d!1698620 true))

(declare-fun _$48!954 () Unit!153106)

(assert (=> d!1698620 (= (choose!39371 lt!2157431 lt!2157424 (t!374191 s!2326)) _$48!954)))

(declare-fun b!5277892 () Bool)

(assert (=> b!5277892 (= e!3282009 (matchZipper!1141 lt!2157424 (t!374191 s!2326)))))

(assert (= (and d!1698620 (not res!2238495)) b!5277892))

(assert (=> d!1698620 m!6314850))

(assert (=> d!1698620 m!6314282))

(assert (=> b!5277892 m!6314216))

(assert (=> d!1698036 d!1698620))

(declare-fun bs!1222995 () Bool)

(declare-fun d!1698622 () Bool)

(assert (= bs!1222995 (and d!1698622 d!1698278)))

(declare-fun lambda!266472 () Int)

(assert (=> bs!1222995 (not (= lambda!266472 lambda!266415))))

(declare-fun bs!1222996 () Bool)

(assert (= bs!1222996 (and d!1698622 b!5277098)))

(assert (=> bs!1222996 (not (= lambda!266472 lambda!266410))))

(declare-fun bs!1222997 () Bool)

(assert (= bs!1222997 (and d!1698622 b!5276580)))

(assert (=> bs!1222997 (not (= lambda!266472 lambda!266344))))

(declare-fun bs!1222998 () Bool)

(assert (= bs!1222998 (and d!1698622 b!5276582)))

(assert (=> bs!1222998 (not (= lambda!266472 lambda!266345))))

(declare-fun bs!1222999 () Bool)

(assert (= bs!1222999 (and d!1698622 b!5277100)))

(assert (=> bs!1222999 (not (= lambda!266472 lambda!266411))))

(declare-fun bs!1223000 () Bool)

(assert (= bs!1223000 (and d!1698622 d!1698560)))

(assert (=> bs!1223000 (= lambda!266472 lambda!266470)))

(declare-fun bs!1223001 () Bool)

(assert (= bs!1223001 (and d!1698622 d!1698370)))

(assert (=> bs!1223001 (= lambda!266472 lambda!266435)))

(declare-fun bs!1223002 () Bool)

(assert (= bs!1223002 (and d!1698622 b!5276585)))

(assert (=> bs!1223002 (not (= lambda!266472 lambda!266347))))

(declare-fun bs!1223003 () Bool)

(assert (= bs!1223003 (and d!1698622 d!1698550)))

(assert (=> bs!1223003 (= lambda!266472 lambda!266468)))

(declare-fun bs!1223004 () Bool)

(assert (= bs!1223004 (and d!1698622 b!5276587)))

(assert (=> bs!1223004 (not (= lambda!266472 lambda!266348))))

(assert (=> d!1698622 (= (nullableZipper!1296 lt!2157409) (exists!1999 lt!2157409 lambda!266472))))

(declare-fun bs!1223005 () Bool)

(assert (= bs!1223005 d!1698622))

(declare-fun m!6316084 () Bool)

(assert (=> bs!1223005 m!6316084))

(assert (=> b!5276675 d!1698622))

(declare-fun b!5277893 () Bool)

(declare-fun e!3282011 () Bool)

(assert (=> b!5277893 (= e!3282011 (nullable!5066 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157412)))))))))

(declare-fun b!5277894 () Bool)

(declare-fun e!3282010 () (InoxSet Context!8562))

(declare-fun call!375674 () (InoxSet Context!8562))

(assert (=> b!5277894 (= e!3282010 ((_ map or) call!375674 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157412)))))) (h!67316 s!2326))))))

(declare-fun b!5277895 () Bool)

(declare-fun e!3282012 () (InoxSet Context!8562))

(assert (=> b!5277895 (= e!3282010 e!3282012)))

(declare-fun c!914724 () Bool)

(assert (=> b!5277895 (= c!914724 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157412))))))))

(declare-fun b!5277896 () Bool)

(assert (=> b!5277896 (= e!3282012 call!375674)))

(declare-fun bm!375669 () Bool)

(assert (=> bm!375669 (= call!375674 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157412))))) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157412)))))) (h!67316 s!2326)))))

(declare-fun d!1698624 () Bool)

(declare-fun c!914725 () Bool)

(assert (=> d!1698624 (= c!914725 e!3282011)))

(declare-fun res!2238496 () Bool)

(assert (=> d!1698624 (=> (not res!2238496) (not e!3282011))))

(assert (=> d!1698624 (= res!2238496 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157412))))))))

(assert (=> d!1698624 (= (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 lt!2157412))) (h!67316 s!2326)) e!3282010)))

(declare-fun b!5277897 () Bool)

(assert (=> b!5277897 (= e!3282012 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1698624 res!2238496) b!5277893))

(assert (= (and d!1698624 c!914725) b!5277894))

(assert (= (and d!1698624 (not c!914725)) b!5277895))

(assert (= (and b!5277895 c!914724) b!5277896))

(assert (= (and b!5277895 (not c!914724)) b!5277897))

(assert (= (or b!5277894 b!5277896) bm!375669))

(declare-fun m!6316086 () Bool)

(assert (=> b!5277893 m!6316086))

(declare-fun m!6316088 () Bool)

(assert (=> b!5277894 m!6316088))

(declare-fun m!6316090 () Bool)

(assert (=> bm!375669 m!6316090))

(assert (=> b!5276379 d!1698624))

(declare-fun b!5277898 () Bool)

(declare-fun e!3282014 () Bool)

(assert (=> b!5277898 (= e!3282014 (nullable!5066 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))))))

(declare-fun b!5277899 () Bool)

(declare-fun e!3282013 () (InoxSet Context!8562))

(declare-fun call!375675 () (InoxSet Context!8562))

(assert (=> b!5277899 (= e!3282013 ((_ map or) call!375675 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))) (h!67316 s!2326))))))

(declare-fun b!5277900 () Bool)

(declare-fun e!3282015 () (InoxSet Context!8562))

(assert (=> b!5277900 (= e!3282013 e!3282015)))

(declare-fun c!914726 () Bool)

(assert (=> b!5277900 (= c!914726 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))))

(declare-fun b!5277901 () Bool)

(assert (=> b!5277901 (= e!3282015 call!375675)))

(declare-fun bm!375670 () Bool)

(assert (=> bm!375670 (= call!375675 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))) (h!67316 s!2326)))))

(declare-fun d!1698626 () Bool)

(declare-fun c!914727 () Bool)

(assert (=> d!1698626 (= c!914727 e!3282014)))

(declare-fun res!2238497 () Bool)

(assert (=> d!1698626 (=> (not res!2238497) (not e!3282014))))

(assert (=> d!1698626 (= res!2238497 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))))

(assert (=> d!1698626 (= (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (h!67316 s!2326)) e!3282013)))

(declare-fun b!5277902 () Bool)

(assert (=> b!5277902 (= e!3282015 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1698626 res!2238497) b!5277898))

(assert (= (and d!1698626 c!914727) b!5277899))

(assert (= (and d!1698626 (not c!914727)) b!5277900))

(assert (= (and b!5277900 c!914726) b!5277901))

(assert (= (and b!5277900 (not c!914726)) b!5277902))

(assert (= (or b!5277899 b!5277901) bm!375670))

(declare-fun m!6316092 () Bool)

(assert (=> b!5277898 m!6316092))

(declare-fun m!6316094 () Bool)

(assert (=> b!5277899 m!6316094))

(declare-fun m!6316096 () Bool)

(assert (=> bm!375670 m!6316096))

(assert (=> b!5276374 d!1698626))

(declare-fun bs!1223006 () Bool)

(declare-fun b!5277904 () Bool)

(assert (= bs!1223006 (and b!5277904 d!1698396)))

(declare-fun lambda!266473 () Int)

(assert (=> bs!1223006 (not (= lambda!266473 lambda!266446))))

(declare-fun bs!1223007 () Bool)

(assert (= bs!1223007 (and b!5277904 b!5277212)))

(assert (=> bs!1223007 (not (= lambda!266473 lambda!266429))))

(declare-fun bs!1223008 () Bool)

(assert (= bs!1223008 (and b!5277904 d!1698070)))

(assert (=> bs!1223008 (not (= lambda!266473 lambda!266365))))

(declare-fun bs!1223009 () Bool)

(assert (= bs!1223009 (and b!5277904 b!5276621)))

(assert (=> bs!1223009 (= (and (= (reg!15226 (regOne!30307 r!7292)) (reg!15226 r!7292)) (= (regOne!30307 r!7292) r!7292)) (= lambda!266473 lambda!266353))))

(declare-fun bs!1223010 () Bool)

(assert (= bs!1223010 (and b!5277904 b!5277206)))

(assert (=> bs!1223010 (= (and (= (reg!15226 (regOne!30307 r!7292)) (reg!15226 (regTwo!30307 r!7292))) (= (regOne!30307 r!7292) (regTwo!30307 r!7292))) (= lambda!266473 lambda!266428))))

(declare-fun bs!1223011 () Bool)

(assert (= bs!1223011 (and b!5277904 d!1698072)))

(assert (=> bs!1223011 (not (= lambda!266473 lambda!266371))))

(declare-fun bs!1223012 () Bool)

(assert (= bs!1223012 (and b!5277904 b!5276627)))

(assert (=> bs!1223012 (not (= lambda!266473 lambda!266354))))

(declare-fun bs!1223013 () Bool)

(assert (= bs!1223013 (and b!5277904 b!5275981)))

(assert (=> bs!1223013 (not (= lambda!266473 lambda!266286))))

(assert (=> bs!1223011 (not (= lambda!266473 lambda!266370))))

(assert (=> bs!1223013 (not (= lambda!266473 lambda!266287))))

(assert (=> bs!1223006 (not (= lambda!266473 lambda!266448))))

(assert (=> b!5277904 true))

(assert (=> b!5277904 true))

(declare-fun bs!1223014 () Bool)

(declare-fun b!5277910 () Bool)

(assert (= bs!1223014 (and b!5277910 d!1698396)))

(declare-fun lambda!266474 () Int)

(assert (=> bs!1223014 (not (= lambda!266474 lambda!266446))))

(declare-fun bs!1223015 () Bool)

(assert (= bs!1223015 (and b!5277910 b!5277212)))

(assert (=> bs!1223015 (= (and (= (regOne!30306 (regOne!30307 r!7292)) (regOne!30306 (regTwo!30307 r!7292))) (= (regTwo!30306 (regOne!30307 r!7292)) (regTwo!30306 (regTwo!30307 r!7292)))) (= lambda!266474 lambda!266429))))

(declare-fun bs!1223016 () Bool)

(assert (= bs!1223016 (and b!5277910 d!1698070)))

(assert (=> bs!1223016 (not (= lambda!266474 lambda!266365))))

(declare-fun bs!1223017 () Bool)

(assert (= bs!1223017 (and b!5277910 b!5276621)))

(assert (=> bs!1223017 (not (= lambda!266474 lambda!266353))))

(declare-fun bs!1223018 () Bool)

(assert (= bs!1223018 (and b!5277910 b!5277206)))

(assert (=> bs!1223018 (not (= lambda!266474 lambda!266428))))

(declare-fun bs!1223019 () Bool)

(assert (= bs!1223019 (and b!5277910 b!5276627)))

(assert (=> bs!1223019 (= (and (= (regOne!30306 (regOne!30307 r!7292)) (regOne!30306 r!7292)) (= (regTwo!30306 (regOne!30307 r!7292)) (regTwo!30306 r!7292))) (= lambda!266474 lambda!266354))))

(declare-fun bs!1223020 () Bool)

(assert (= bs!1223020 (and b!5277910 b!5275981)))

(assert (=> bs!1223020 (not (= lambda!266474 lambda!266286))))

(declare-fun bs!1223021 () Bool)

(assert (= bs!1223021 (and b!5277910 d!1698072)))

(assert (=> bs!1223021 (not (= lambda!266474 lambda!266370))))

(assert (=> bs!1223020 (= (and (= (regOne!30306 (regOne!30307 r!7292)) (regOne!30306 r!7292)) (= (regTwo!30306 (regOne!30307 r!7292)) (regTwo!30306 r!7292))) (= lambda!266474 lambda!266287))))

(assert (=> bs!1223014 (= (and (= (regOne!30306 (regOne!30307 r!7292)) (regOne!30306 r!7292)) (= (regTwo!30306 (regOne!30307 r!7292)) (regTwo!30306 r!7292))) (= lambda!266474 lambda!266448))))

(assert (=> bs!1223021 (= (and (= (regOne!30306 (regOne!30307 r!7292)) (regOne!30306 r!7292)) (= (regTwo!30306 (regOne!30307 r!7292)) (regTwo!30306 r!7292))) (= lambda!266474 lambda!266371))))

(declare-fun bs!1223022 () Bool)

(assert (= bs!1223022 (and b!5277910 b!5277904)))

(assert (=> bs!1223022 (not (= lambda!266474 lambda!266473))))

(assert (=> b!5277910 true))

(assert (=> b!5277910 true))

(declare-fun b!5277903 () Bool)

(declare-fun c!914730 () Bool)

(assert (=> b!5277903 (= c!914730 ((_ is ElementMatch!14897) (regOne!30307 r!7292)))))

(declare-fun e!3282017 () Bool)

(declare-fun e!3282019 () Bool)

(assert (=> b!5277903 (= e!3282017 e!3282019)))

(declare-fun e!3282016 () Bool)

(declare-fun call!375677 () Bool)

(assert (=> b!5277904 (= e!3282016 call!375677)))

(declare-fun b!5277905 () Bool)

(declare-fun e!3282022 () Bool)

(assert (=> b!5277905 (= e!3282022 e!3282017)))

(declare-fun res!2238499 () Bool)

(assert (=> b!5277905 (= res!2238499 (not ((_ is EmptyLang!14897) (regOne!30307 r!7292))))))

(assert (=> b!5277905 (=> (not res!2238499) (not e!3282017))))

(declare-fun d!1698628 () Bool)

(declare-fun c!914729 () Bool)

(assert (=> d!1698628 (= c!914729 ((_ is EmptyExpr!14897) (regOne!30307 r!7292)))))

(assert (=> d!1698628 (= (matchRSpec!2000 (regOne!30307 r!7292) s!2326) e!3282022)))

(declare-fun b!5277906 () Bool)

(declare-fun res!2238498 () Bool)

(assert (=> b!5277906 (=> res!2238498 e!3282016)))

(declare-fun call!375676 () Bool)

(assert (=> b!5277906 (= res!2238498 call!375676)))

(declare-fun e!3282020 () Bool)

(assert (=> b!5277906 (= e!3282020 e!3282016)))

(declare-fun b!5277907 () Bool)

(declare-fun c!914731 () Bool)

(assert (=> b!5277907 (= c!914731 ((_ is Union!14897) (regOne!30307 r!7292)))))

(declare-fun e!3282021 () Bool)

(assert (=> b!5277907 (= e!3282019 e!3282021)))

(declare-fun b!5277908 () Bool)

(assert (=> b!5277908 (= e!3282022 call!375676)))

(declare-fun b!5277909 () Bool)

(declare-fun e!3282018 () Bool)

(assert (=> b!5277909 (= e!3282021 e!3282018)))

(declare-fun res!2238500 () Bool)

(assert (=> b!5277909 (= res!2238500 (matchRSpec!2000 (regOne!30307 (regOne!30307 r!7292)) s!2326))))

(assert (=> b!5277909 (=> res!2238500 e!3282018)))

(declare-fun c!914728 () Bool)

(declare-fun bm!375671 () Bool)

(assert (=> bm!375671 (= call!375677 (Exists!2078 (ite c!914728 lambda!266473 lambda!266474)))))

(assert (=> b!5277910 (= e!3282020 call!375677)))

(declare-fun b!5277911 () Bool)

(assert (=> b!5277911 (= e!3282019 (= s!2326 (Cons!60868 (c!914175 (regOne!30307 r!7292)) Nil!60868)))))

(declare-fun b!5277912 () Bool)

(assert (=> b!5277912 (= e!3282021 e!3282020)))

(assert (=> b!5277912 (= c!914728 ((_ is Star!14897) (regOne!30307 r!7292)))))

(declare-fun bm!375672 () Bool)

(assert (=> bm!375672 (= call!375676 (isEmpty!32823 s!2326))))

(declare-fun b!5277913 () Bool)

(assert (=> b!5277913 (= e!3282018 (matchRSpec!2000 (regTwo!30307 (regOne!30307 r!7292)) s!2326))))

(assert (= (and d!1698628 c!914729) b!5277908))

(assert (= (and d!1698628 (not c!914729)) b!5277905))

(assert (= (and b!5277905 res!2238499) b!5277903))

(assert (= (and b!5277903 c!914730) b!5277911))

(assert (= (and b!5277903 (not c!914730)) b!5277907))

(assert (= (and b!5277907 c!914731) b!5277909))

(assert (= (and b!5277907 (not c!914731)) b!5277912))

(assert (= (and b!5277909 (not res!2238500)) b!5277913))

(assert (= (and b!5277912 c!914728) b!5277906))

(assert (= (and b!5277912 (not c!914728)) b!5277910))

(assert (= (and b!5277906 (not res!2238498)) b!5277904))

(assert (= (or b!5277904 b!5277910) bm!375671))

(assert (= (or b!5277908 b!5277906) bm!375672))

(declare-fun m!6316098 () Bool)

(assert (=> b!5277909 m!6316098))

(declare-fun m!6316100 () Bool)

(assert (=> bm!375671 m!6316100))

(assert (=> bm!375672 m!6314814))

(declare-fun m!6316102 () Bool)

(assert (=> b!5277913 m!6316102))

(assert (=> b!5276626 d!1698628))

(assert (=> d!1698026 d!1698372))

(assert (=> d!1698026 d!1698040))

(declare-fun bs!1223023 () Bool)

(declare-fun d!1698630 () Bool)

(assert (= bs!1223023 (and d!1698630 d!1698278)))

(declare-fun lambda!266475 () Int)

(assert (=> bs!1223023 (not (= lambda!266475 lambda!266415))))

(declare-fun bs!1223024 () Bool)

(assert (= bs!1223024 (and d!1698630 b!5277098)))

(assert (=> bs!1223024 (not (= lambda!266475 lambda!266410))))

(declare-fun bs!1223025 () Bool)

(assert (= bs!1223025 (and d!1698630 b!5276580)))

(assert (=> bs!1223025 (not (= lambda!266475 lambda!266344))))

(declare-fun bs!1223026 () Bool)

(assert (= bs!1223026 (and d!1698630 b!5276582)))

(assert (=> bs!1223026 (not (= lambda!266475 lambda!266345))))

(declare-fun bs!1223027 () Bool)

(assert (= bs!1223027 (and d!1698630 d!1698560)))

(assert (=> bs!1223027 (= lambda!266475 lambda!266470)))

(declare-fun bs!1223028 () Bool)

(assert (= bs!1223028 (and d!1698630 d!1698370)))

(assert (=> bs!1223028 (= lambda!266475 lambda!266435)))

(declare-fun bs!1223029 () Bool)

(assert (= bs!1223029 (and d!1698630 b!5276585)))

(assert (=> bs!1223029 (not (= lambda!266475 lambda!266347))))

(declare-fun bs!1223030 () Bool)

(assert (= bs!1223030 (and d!1698630 d!1698550)))

(assert (=> bs!1223030 (= lambda!266475 lambda!266468)))

(declare-fun bs!1223031 () Bool)

(assert (= bs!1223031 (and d!1698630 b!5276587)))

(assert (=> bs!1223031 (not (= lambda!266475 lambda!266348))))

(declare-fun bs!1223032 () Bool)

(assert (= bs!1223032 (and d!1698630 b!5277100)))

(assert (=> bs!1223032 (not (= lambda!266475 lambda!266411))))

(declare-fun bs!1223033 () Bool)

(assert (= bs!1223033 (and d!1698630 d!1698622)))

(assert (=> bs!1223033 (= lambda!266475 lambda!266472)))

(assert (=> d!1698630 (= (nullableZipper!1296 lt!2157424) (exists!1999 lt!2157424 lambda!266475))))

(declare-fun bs!1223034 () Bool)

(assert (= bs!1223034 d!1698630))

(declare-fun m!6316104 () Bool)

(assert (=> bs!1223034 m!6316104))

(assert (=> b!5276564 d!1698630))

(declare-fun d!1698632 () Bool)

(declare-fun c!914732 () Bool)

(assert (=> d!1698632 (= c!914732 (isEmpty!32823 (t!374191 s!2326)))))

(declare-fun e!3282023 () Bool)

(assert (=> d!1698632 (= (matchZipper!1141 ((_ map or) lt!2157431 lt!2157407) (t!374191 s!2326)) e!3282023)))

(declare-fun b!5277914 () Bool)

(assert (=> b!5277914 (= e!3282023 (nullableZipper!1296 ((_ map or) lt!2157431 lt!2157407)))))

(declare-fun b!5277915 () Bool)

(assert (=> b!5277915 (= e!3282023 (matchZipper!1141 (derivationStepZipper!1140 ((_ map or) lt!2157431 lt!2157407) (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))))))

(assert (= (and d!1698632 c!914732) b!5277914))

(assert (= (and d!1698632 (not c!914732)) b!5277915))

(assert (=> d!1698632 m!6314584))

(declare-fun m!6316106 () Bool)

(assert (=> b!5277914 m!6316106))

(assert (=> b!5277915 m!6314588))

(assert (=> b!5277915 m!6314588))

(declare-fun m!6316108 () Bool)

(assert (=> b!5277915 m!6316108))

(assert (=> b!5277915 m!6314592))

(assert (=> b!5277915 m!6316108))

(assert (=> b!5277915 m!6314592))

(declare-fun m!6316110 () Bool)

(assert (=> b!5277915 m!6316110))

(assert (=> d!1697976 d!1698632))

(assert (=> d!1697976 d!1698034))

(declare-fun e!3282024 () Bool)

(declare-fun d!1698634 () Bool)

(assert (=> d!1698634 (= (matchZipper!1141 ((_ map or) lt!2157431 lt!2157407) (t!374191 s!2326)) e!3282024)))

(declare-fun res!2238501 () Bool)

(assert (=> d!1698634 (=> res!2238501 e!3282024)))

(assert (=> d!1698634 (= res!2238501 (matchZipper!1141 lt!2157431 (t!374191 s!2326)))))

(assert (=> d!1698634 true))

(declare-fun _$48!955 () Unit!153106)

(assert (=> d!1698634 (= (choose!39371 lt!2157431 lt!2157407 (t!374191 s!2326)) _$48!955)))

(declare-fun b!5277916 () Bool)

(assert (=> b!5277916 (= e!3282024 (matchZipper!1141 lt!2157407 (t!374191 s!2326)))))

(assert (= (and d!1698634 (not res!2238501)) b!5277916))

(assert (=> d!1698634 m!6314684))

(assert (=> d!1698634 m!6314282))

(assert (=> b!5277916 m!6314294))

(assert (=> d!1697976 d!1698634))

(declare-fun d!1698636 () Bool)

(assert (=> d!1698636 (= (isEmpty!32819 (t!374189 (unfocusZipperList!339 zl!343))) ((_ is Nil!60866) (t!374189 (unfocusZipperList!339 zl!343))))))

(assert (=> b!5276793 d!1698636))

(assert (=> b!5276452 d!1698080))

(assert (=> d!1698070 d!1698066))

(declare-fun d!1698638 () Bool)

(assert (=> d!1698638 (= (Exists!2078 lambda!266365) (choose!39377 lambda!266365))))

(declare-fun bs!1223035 () Bool)

(assert (= bs!1223035 d!1698638))

(declare-fun m!6316112 () Bool)

(assert (=> bs!1223035 m!6316112))

(assert (=> d!1698070 d!1698638))

(assert (=> d!1698070 d!1698404))

(assert (=> d!1698070 d!1698074))

(declare-fun bs!1223036 () Bool)

(declare-fun d!1698640 () Bool)

(assert (= bs!1223036 (and d!1698640 d!1698396)))

(declare-fun lambda!266478 () Int)

(assert (=> bs!1223036 (= lambda!266478 lambda!266446)))

(declare-fun bs!1223037 () Bool)

(assert (= bs!1223037 (and d!1698640 b!5277212)))

(assert (=> bs!1223037 (not (= lambda!266478 lambda!266429))))

(declare-fun bs!1223038 () Bool)

(assert (= bs!1223038 (and d!1698640 d!1698070)))

(assert (=> bs!1223038 (= lambda!266478 lambda!266365)))

(declare-fun bs!1223039 () Bool)

(assert (= bs!1223039 (and d!1698640 b!5276621)))

(assert (=> bs!1223039 (not (= lambda!266478 lambda!266353))))

(declare-fun bs!1223040 () Bool)

(assert (= bs!1223040 (and d!1698640 b!5277910)))

(assert (=> bs!1223040 (not (= lambda!266478 lambda!266474))))

(declare-fun bs!1223041 () Bool)

(assert (= bs!1223041 (and d!1698640 b!5277206)))

(assert (=> bs!1223041 (not (= lambda!266478 lambda!266428))))

(declare-fun bs!1223042 () Bool)

(assert (= bs!1223042 (and d!1698640 b!5276627)))

(assert (=> bs!1223042 (not (= lambda!266478 lambda!266354))))

(declare-fun bs!1223043 () Bool)

(assert (= bs!1223043 (and d!1698640 b!5275981)))

(assert (=> bs!1223043 (= lambda!266478 lambda!266286)))

(declare-fun bs!1223044 () Bool)

(assert (= bs!1223044 (and d!1698640 d!1698072)))

(assert (=> bs!1223044 (= lambda!266478 lambda!266370)))

(assert (=> bs!1223043 (not (= lambda!266478 lambda!266287))))

(assert (=> bs!1223036 (not (= lambda!266478 lambda!266448))))

(assert (=> bs!1223044 (not (= lambda!266478 lambda!266371))))

(declare-fun bs!1223045 () Bool)

(assert (= bs!1223045 (and d!1698640 b!5277904)))

(assert (=> bs!1223045 (not (= lambda!266478 lambda!266473))))

(assert (=> d!1698640 true))

(assert (=> d!1698640 true))

(assert (=> d!1698640 true))

(assert (=> d!1698640 (= (isDefined!11711 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326)) (Exists!2078 lambda!266478))))

(assert (=> d!1698640 true))

(declare-fun _$89!1484 () Unit!153106)

(assert (=> d!1698640 (= (choose!39378 (regOne!30306 r!7292) (regTwo!30306 r!7292) s!2326) _$89!1484)))

(declare-fun bs!1223046 () Bool)

(assert (= bs!1223046 d!1698640))

(assert (=> bs!1223046 m!6314236))

(assert (=> bs!1223046 m!6314236))

(assert (=> bs!1223046 m!6314238))

(declare-fun m!6316114 () Bool)

(assert (=> bs!1223046 m!6316114))

(assert (=> d!1698070 d!1698640))

(declare-fun bs!1223047 () Bool)

(declare-fun d!1698642 () Bool)

(assert (= bs!1223047 (and d!1698642 d!1698278)))

(declare-fun lambda!266479 () Int)

(assert (=> bs!1223047 (not (= lambda!266479 lambda!266415))))

(declare-fun bs!1223048 () Bool)

(assert (= bs!1223048 (and d!1698642 b!5277098)))

(assert (=> bs!1223048 (not (= lambda!266479 lambda!266410))))

(declare-fun bs!1223049 () Bool)

(assert (= bs!1223049 (and d!1698642 b!5276580)))

(assert (=> bs!1223049 (not (= lambda!266479 lambda!266344))))

(declare-fun bs!1223050 () Bool)

(assert (= bs!1223050 (and d!1698642 b!5276582)))

(assert (=> bs!1223050 (not (= lambda!266479 lambda!266345))))

(declare-fun bs!1223051 () Bool)

(assert (= bs!1223051 (and d!1698642 d!1698560)))

(assert (=> bs!1223051 (= lambda!266479 lambda!266470)))

(declare-fun bs!1223052 () Bool)

(assert (= bs!1223052 (and d!1698642 d!1698370)))

(assert (=> bs!1223052 (= lambda!266479 lambda!266435)))

(declare-fun bs!1223053 () Bool)

(assert (= bs!1223053 (and d!1698642 d!1698630)))

(assert (=> bs!1223053 (= lambda!266479 lambda!266475)))

(declare-fun bs!1223054 () Bool)

(assert (= bs!1223054 (and d!1698642 b!5276585)))

(assert (=> bs!1223054 (not (= lambda!266479 lambda!266347))))

(declare-fun bs!1223055 () Bool)

(assert (= bs!1223055 (and d!1698642 d!1698550)))

(assert (=> bs!1223055 (= lambda!266479 lambda!266468)))

(declare-fun bs!1223056 () Bool)

(assert (= bs!1223056 (and d!1698642 b!5276587)))

(assert (=> bs!1223056 (not (= lambda!266479 lambda!266348))))

(declare-fun bs!1223057 () Bool)

(assert (= bs!1223057 (and d!1698642 b!5277100)))

(assert (=> bs!1223057 (not (= lambda!266479 lambda!266411))))

(declare-fun bs!1223058 () Bool)

(assert (= bs!1223058 (and d!1698642 d!1698622)))

(assert (=> bs!1223058 (= lambda!266479 lambda!266472)))

(assert (=> d!1698642 (= (nullableZipper!1296 lt!2157430) (exists!1999 lt!2157430 lambda!266479))))

(declare-fun bs!1223059 () Bool)

(assert (= bs!1223059 d!1698642))

(declare-fun m!6316116 () Bool)

(assert (=> bs!1223059 m!6316116))

(assert (=> b!5276320 d!1698642))

(declare-fun d!1698644 () Bool)

(declare-fun res!2238506 () Bool)

(declare-fun e!3282027 () Bool)

(assert (=> d!1698644 (=> res!2238506 e!3282027)))

(assert (=> d!1698644 (= res!2238506 ((_ is Nil!60866) lt!2157569))))

(assert (=> d!1698644 (= (forall!14305 lt!2157569 lambda!266377) e!3282027)))

(declare-fun b!5277921 () Bool)

(declare-fun e!3282028 () Bool)

(assert (=> b!5277921 (= e!3282027 e!3282028)))

(declare-fun res!2238507 () Bool)

(assert (=> b!5277921 (=> (not res!2238507) (not e!3282028))))

(assert (=> b!5277921 (= res!2238507 (dynLambda!24057 lambda!266377 (h!67314 lt!2157569)))))

(declare-fun b!5277922 () Bool)

(assert (=> b!5277922 (= e!3282028 (forall!14305 (t!374189 lt!2157569) lambda!266377))))

(assert (= (and d!1698644 (not res!2238506)) b!5277921))

(assert (= (and b!5277921 res!2238507) b!5277922))

(declare-fun b_lambda!203607 () Bool)

(assert (=> (not b_lambda!203607) (not b!5277921)))

(declare-fun m!6316118 () Bool)

(assert (=> b!5277921 m!6316118))

(declare-fun m!6316120 () Bool)

(assert (=> b!5277922 m!6316120))

(assert (=> d!1698078 d!1698644))

(declare-fun bs!1223060 () Bool)

(declare-fun b!5277923 () Bool)

(assert (= bs!1223060 (and b!5277923 b!5275986)))

(declare-fun lambda!266480 () Int)

(assert (=> bs!1223060 (not (= lambda!266480 lambda!266289))))

(declare-fun bs!1223061 () Bool)

(assert (= bs!1223061 (and b!5277923 d!1697978)))

(assert (=> bs!1223061 (not (= lambda!266480 lambda!266336))))

(declare-fun bs!1223062 () Bool)

(assert (= bs!1223062 (and b!5277923 d!1698360)))

(assert (=> bs!1223062 (not (= lambda!266480 lambda!266430))))

(declare-fun bs!1223063 () Bool)

(assert (= bs!1223063 (and b!5277923 d!1698050)))

(assert (=> bs!1223063 (not (= lambda!266480 lambda!266361))))

(declare-fun bs!1223064 () Bool)

(assert (= bs!1223064 (and b!5277923 d!1698528)))

(assert (=> bs!1223064 (not (= lambda!266480 lambda!266466))))

(declare-fun bs!1223065 () Bool)

(assert (= bs!1223065 (and b!5277923 b!5277198)))

(declare-fun lt!2157675 () Int)

(assert (=> bs!1223065 (= (= lt!2157675 lt!2157624) (= lambda!266480 lambda!266424))))

(declare-fun bs!1223066 () Bool)

(assert (= bs!1223066 (and b!5277923 d!1698076)))

(assert (=> bs!1223066 (not (= lambda!266480 lambda!266374))))

(declare-fun bs!1223067 () Bool)

(assert (= bs!1223067 (and b!5277923 d!1698406)))

(assert (=> bs!1223067 (not (= lambda!266480 lambda!266450))))

(declare-fun bs!1223068 () Bool)

(assert (= bs!1223068 (and b!5277923 d!1698046)))

(assert (=> bs!1223068 (not (= lambda!266480 lambda!266360))))

(declare-fun bs!1223069 () Bool)

(assert (= bs!1223069 (and b!5277923 b!5277200)))

(assert (=> bs!1223069 (= (= lt!2157675 lt!2157623) (= lambda!266480 lambda!266426))))

(declare-fun bs!1223070 () Bool)

(assert (= bs!1223070 (and b!5277923 d!1698078)))

(assert (=> bs!1223070 (not (= lambda!266480 lambda!266377))))

(assert (=> b!5277923 true))

(declare-fun bs!1223071 () Bool)

(declare-fun b!5277925 () Bool)

(assert (= bs!1223071 (and b!5277925 b!5275986)))

(declare-fun lambda!266481 () Int)

(assert (=> bs!1223071 (not (= lambda!266481 lambda!266289))))

(declare-fun bs!1223072 () Bool)

(assert (= bs!1223072 (and b!5277925 b!5277923)))

(declare-fun lt!2157674 () Int)

(assert (=> bs!1223072 (= (= lt!2157674 lt!2157675) (= lambda!266481 lambda!266480))))

(declare-fun bs!1223073 () Bool)

(assert (= bs!1223073 (and b!5277925 d!1697978)))

(assert (=> bs!1223073 (not (= lambda!266481 lambda!266336))))

(declare-fun bs!1223074 () Bool)

(assert (= bs!1223074 (and b!5277925 d!1698360)))

(assert (=> bs!1223074 (not (= lambda!266481 lambda!266430))))

(declare-fun bs!1223075 () Bool)

(assert (= bs!1223075 (and b!5277925 d!1698050)))

(assert (=> bs!1223075 (not (= lambda!266481 lambda!266361))))

(declare-fun bs!1223076 () Bool)

(assert (= bs!1223076 (and b!5277925 d!1698528)))

(assert (=> bs!1223076 (not (= lambda!266481 lambda!266466))))

(declare-fun bs!1223077 () Bool)

(assert (= bs!1223077 (and b!5277925 b!5277198)))

(assert (=> bs!1223077 (= (= lt!2157674 lt!2157624) (= lambda!266481 lambda!266424))))

(declare-fun bs!1223078 () Bool)

(assert (= bs!1223078 (and b!5277925 d!1698076)))

(assert (=> bs!1223078 (not (= lambda!266481 lambda!266374))))

(declare-fun bs!1223079 () Bool)

(assert (= bs!1223079 (and b!5277925 d!1698406)))

(assert (=> bs!1223079 (not (= lambda!266481 lambda!266450))))

(declare-fun bs!1223080 () Bool)

(assert (= bs!1223080 (and b!5277925 d!1698046)))

(assert (=> bs!1223080 (not (= lambda!266481 lambda!266360))))

(declare-fun bs!1223081 () Bool)

(assert (= bs!1223081 (and b!5277925 b!5277200)))

(assert (=> bs!1223081 (= (= lt!2157674 lt!2157623) (= lambda!266481 lambda!266426))))

(declare-fun bs!1223082 () Bool)

(assert (= bs!1223082 (and b!5277925 d!1698078)))

(assert (=> bs!1223082 (not (= lambda!266481 lambda!266377))))

(assert (=> b!5277925 true))

(declare-fun d!1698646 () Bool)

(declare-fun e!3282029 () Bool)

(assert (=> d!1698646 e!3282029))

(declare-fun res!2238508 () Bool)

(assert (=> d!1698646 (=> (not res!2238508) (not e!3282029))))

(assert (=> d!1698646 (= res!2238508 (>= lt!2157674 0))))

(declare-fun e!3282030 () Int)

(assert (=> d!1698646 (= lt!2157674 e!3282030)))

(declare-fun c!914733 () Bool)

(assert (=> d!1698646 (= c!914733 ((_ is Cons!60866) (exprs!4781 (h!67315 zl!343))))))

(assert (=> d!1698646 (= (contextDepth!8 (h!67315 zl!343)) lt!2157674)))

(assert (=> b!5277923 (= e!3282030 lt!2157675)))

(assert (=> b!5277923 (= lt!2157675 (maxBigInt!0 (regexDepth!153 (h!67314 (exprs!4781 (h!67315 zl!343)))) (contextDepth!8 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun lt!2157673 () Unit!153106)

(assert (=> b!5277923 (= lt!2157673 (lemmaForallRegexDepthBiggerThanTransitive!2 (t!374189 (exprs!4781 (h!67315 zl!343))) lt!2157675 (contextDepth!8 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(assert (=> b!5277923 (forall!14305 (t!374189 (exprs!4781 (h!67315 zl!343))) lambda!266480)))

(declare-fun lt!2157672 () Unit!153106)

(assert (=> b!5277923 (= lt!2157672 lt!2157673)))

(declare-fun b!5277924 () Bool)

(assert (=> b!5277924 (= e!3282030 0)))

(assert (=> b!5277925 (= e!3282029 (forall!14305 (exprs!4781 (h!67315 zl!343)) lambda!266481))))

(assert (= (and d!1698646 c!914733) b!5277923))

(assert (= (and d!1698646 (not c!914733)) b!5277924))

(assert (= (and d!1698646 res!2238508) b!5277925))

(declare-fun m!6316122 () Bool)

(assert (=> b!5277923 m!6316122))

(declare-fun m!6316124 () Bool)

(assert (=> b!5277923 m!6316124))

(declare-fun m!6316126 () Bool)

(assert (=> b!5277923 m!6316126))

(assert (=> b!5277923 m!6316124))

(declare-fun m!6316128 () Bool)

(assert (=> b!5277923 m!6316128))

(assert (=> b!5277923 m!6316122))

(assert (=> b!5277923 m!6316124))

(declare-fun m!6316130 () Bool)

(assert (=> b!5277923 m!6316130))

(declare-fun m!6316132 () Bool)

(assert (=> b!5277925 m!6316132))

(assert (=> b!5276585 d!1698646))

(declare-fun d!1698648 () Bool)

(declare-fun res!2238509 () Bool)

(declare-fun e!3282031 () Bool)

(assert (=> d!1698648 (=> res!2238509 e!3282031)))

(assert (=> d!1698648 (= res!2238509 ((_ is Nil!60867) (t!374190 zl!343)))))

(assert (=> d!1698648 (= (forall!14307 (t!374190 zl!343) lambda!266347) e!3282031)))

(declare-fun b!5277926 () Bool)

(declare-fun e!3282032 () Bool)

(assert (=> b!5277926 (= e!3282031 e!3282032)))

(declare-fun res!2238510 () Bool)

(assert (=> b!5277926 (=> (not res!2238510) (not e!3282032))))

(assert (=> b!5277926 (= res!2238510 (dynLambda!24063 lambda!266347 (h!67315 (t!374190 zl!343))))))

(declare-fun b!5277927 () Bool)

(assert (=> b!5277927 (= e!3282032 (forall!14307 (t!374190 (t!374190 zl!343)) lambda!266347))))

(assert (= (and d!1698648 (not res!2238509)) b!5277926))

(assert (= (and b!5277926 res!2238510) b!5277927))

(declare-fun b_lambda!203609 () Bool)

(assert (=> (not b_lambda!203609) (not b!5277926)))

(declare-fun m!6316134 () Bool)

(assert (=> b!5277926 m!6316134))

(declare-fun m!6316136 () Bool)

(assert (=> b!5277927 m!6316136))

(assert (=> b!5276585 d!1698648))

(declare-fun bs!1223083 () Bool)

(declare-fun b!5277928 () Bool)

(assert (= bs!1223083 (and b!5277928 b!5276580)))

(declare-fun lambda!266482 () Int)

(assert (=> bs!1223083 (= lambda!266482 lambda!266343)))

(declare-fun bs!1223084 () Bool)

(assert (= bs!1223084 (and b!5277928 b!5276585)))

(assert (=> bs!1223084 (= lambda!266482 lambda!266346)))

(declare-fun bs!1223085 () Bool)

(assert (= bs!1223085 (and b!5277928 b!5277098)))

(assert (=> bs!1223085 (= lambda!266482 lambda!266409)))

(declare-fun bs!1223086 () Bool)

(assert (= bs!1223086 (and b!5277928 d!1698278)))

(declare-fun lambda!266483 () Int)

(assert (=> bs!1223086 (not (= lambda!266483 lambda!266415))))

(declare-fun lt!2157678 () Int)

(assert (=> bs!1223085 (= (= lt!2157678 lt!2157603) (= lambda!266483 lambda!266410))))

(assert (=> bs!1223083 (= (= lt!2157678 lt!2157528) (= lambda!266483 lambda!266344))))

(declare-fun bs!1223087 () Bool)

(assert (= bs!1223087 (and b!5277928 b!5276582)))

(assert (=> bs!1223087 (= (= lt!2157678 lt!2157526) (= lambda!266483 lambda!266345))))

(declare-fun bs!1223088 () Bool)

(assert (= bs!1223088 (and b!5277928 d!1698560)))

(assert (=> bs!1223088 (not (= lambda!266483 lambda!266470))))

(declare-fun bs!1223089 () Bool)

(assert (= bs!1223089 (and b!5277928 d!1698370)))

(assert (=> bs!1223089 (not (= lambda!266483 lambda!266435))))

(declare-fun bs!1223090 () Bool)

(assert (= bs!1223090 (and b!5277928 d!1698630)))

(assert (=> bs!1223090 (not (= lambda!266483 lambda!266475))))

(assert (=> bs!1223084 (= (= lt!2157678 lt!2157532) (= lambda!266483 lambda!266347))))

(declare-fun bs!1223091 () Bool)

(assert (= bs!1223091 (and b!5277928 d!1698550)))

(assert (=> bs!1223091 (not (= lambda!266483 lambda!266468))))

(declare-fun bs!1223092 () Bool)

(assert (= bs!1223092 (and b!5277928 d!1698642)))

(assert (=> bs!1223092 (not (= lambda!266483 lambda!266479))))

(declare-fun bs!1223093 () Bool)

(assert (= bs!1223093 (and b!5277928 b!5276587)))

(assert (=> bs!1223093 (= (= lt!2157678 lt!2157530) (= lambda!266483 lambda!266348))))

(declare-fun bs!1223094 () Bool)

(assert (= bs!1223094 (and b!5277928 b!5277100)))

(assert (=> bs!1223094 (= (= lt!2157678 lt!2157601) (= lambda!266483 lambda!266411))))

(declare-fun bs!1223095 () Bool)

(assert (= bs!1223095 (and b!5277928 d!1698622)))

(assert (=> bs!1223095 (not (= lambda!266483 lambda!266472))))

(assert (=> b!5277928 true))

(declare-fun bs!1223096 () Bool)

(declare-fun b!5277930 () Bool)

(assert (= bs!1223096 (and b!5277930 d!1698278)))

(declare-fun lambda!266484 () Int)

(assert (=> bs!1223096 (not (= lambda!266484 lambda!266415))))

(declare-fun bs!1223097 () Bool)

(assert (= bs!1223097 (and b!5277930 b!5277928)))

(declare-fun lt!2157676 () Int)

(assert (=> bs!1223097 (= (= lt!2157676 lt!2157678) (= lambda!266484 lambda!266483))))

(declare-fun bs!1223098 () Bool)

(assert (= bs!1223098 (and b!5277930 b!5277098)))

(assert (=> bs!1223098 (= (= lt!2157676 lt!2157603) (= lambda!266484 lambda!266410))))

(declare-fun bs!1223099 () Bool)

(assert (= bs!1223099 (and b!5277930 b!5276580)))

(assert (=> bs!1223099 (= (= lt!2157676 lt!2157528) (= lambda!266484 lambda!266344))))

(declare-fun bs!1223100 () Bool)

(assert (= bs!1223100 (and b!5277930 b!5276582)))

(assert (=> bs!1223100 (= (= lt!2157676 lt!2157526) (= lambda!266484 lambda!266345))))

(declare-fun bs!1223101 () Bool)

(assert (= bs!1223101 (and b!5277930 d!1698560)))

(assert (=> bs!1223101 (not (= lambda!266484 lambda!266470))))

(declare-fun bs!1223102 () Bool)

(assert (= bs!1223102 (and b!5277930 d!1698370)))

(assert (=> bs!1223102 (not (= lambda!266484 lambda!266435))))

(declare-fun bs!1223103 () Bool)

(assert (= bs!1223103 (and b!5277930 d!1698630)))

(assert (=> bs!1223103 (not (= lambda!266484 lambda!266475))))

(declare-fun bs!1223104 () Bool)

(assert (= bs!1223104 (and b!5277930 b!5276585)))

(assert (=> bs!1223104 (= (= lt!2157676 lt!2157532) (= lambda!266484 lambda!266347))))

(declare-fun bs!1223105 () Bool)

(assert (= bs!1223105 (and b!5277930 d!1698550)))

(assert (=> bs!1223105 (not (= lambda!266484 lambda!266468))))

(declare-fun bs!1223106 () Bool)

(assert (= bs!1223106 (and b!5277930 d!1698642)))

(assert (=> bs!1223106 (not (= lambda!266484 lambda!266479))))

(declare-fun bs!1223107 () Bool)

(assert (= bs!1223107 (and b!5277930 b!5276587)))

(assert (=> bs!1223107 (= (= lt!2157676 lt!2157530) (= lambda!266484 lambda!266348))))

(declare-fun bs!1223108 () Bool)

(assert (= bs!1223108 (and b!5277930 b!5277100)))

(assert (=> bs!1223108 (= (= lt!2157676 lt!2157601) (= lambda!266484 lambda!266411))))

(declare-fun bs!1223109 () Bool)

(assert (= bs!1223109 (and b!5277930 d!1698622)))

(assert (=> bs!1223109 (not (= lambda!266484 lambda!266472))))

(assert (=> b!5277930 true))

(declare-fun d!1698650 () Bool)

(declare-fun e!3282034 () Bool)

(assert (=> d!1698650 e!3282034))

(declare-fun res!2238511 () Bool)

(assert (=> d!1698650 (=> (not res!2238511) (not e!3282034))))

(assert (=> d!1698650 (= res!2238511 (>= lt!2157676 0))))

(declare-fun e!3282033 () Int)

(assert (=> d!1698650 (= lt!2157676 e!3282033)))

(declare-fun c!914734 () Bool)

(assert (=> d!1698650 (= c!914734 ((_ is Cons!60867) (t!374190 zl!343)))))

(assert (=> d!1698650 (= (zipperDepth!14 (t!374190 zl!343)) lt!2157676)))

(assert (=> b!5277928 (= e!3282033 lt!2157678)))

(assert (=> b!5277928 (= lt!2157678 (maxBigInt!0 (contextDepth!8 (h!67315 (t!374190 zl!343))) (zipperDepth!14 (t!374190 (t!374190 zl!343)))))))

(declare-fun lt!2157677 () Unit!153106)

(assert (=> b!5277928 (= lt!2157677 (lemmaForallContextDepthBiggerThanTransitive!2 (t!374190 (t!374190 zl!343)) lt!2157678 (zipperDepth!14 (t!374190 (t!374190 zl!343))) lambda!266482))))

(assert (=> b!5277928 (forall!14307 (t!374190 (t!374190 zl!343)) lambda!266483)))

(declare-fun lt!2157679 () Unit!153106)

(assert (=> b!5277928 (= lt!2157679 lt!2157677)))

(declare-fun b!5277929 () Bool)

(assert (=> b!5277929 (= e!3282033 0)))

(assert (=> b!5277930 (= e!3282034 (forall!14307 (t!374190 zl!343) lambda!266484))))

(assert (= (and d!1698650 c!914734) b!5277928))

(assert (= (and d!1698650 (not c!914734)) b!5277929))

(assert (= (and d!1698650 res!2238511) b!5277930))

(declare-fun m!6316138 () Bool)

(assert (=> b!5277928 m!6316138))

(declare-fun m!6316140 () Bool)

(assert (=> b!5277928 m!6316140))

(declare-fun m!6316142 () Bool)

(assert (=> b!5277928 m!6316142))

(assert (=> b!5277928 m!6316138))

(declare-fun m!6316144 () Bool)

(assert (=> b!5277928 m!6316144))

(assert (=> b!5277928 m!6316140))

(assert (=> b!5277928 m!6316140))

(declare-fun m!6316146 () Bool)

(assert (=> b!5277928 m!6316146))

(declare-fun m!6316148 () Bool)

(assert (=> b!5277930 m!6316148))

(assert (=> b!5276585 d!1698650))

(declare-fun d!1698652 () Bool)

(assert (=> d!1698652 (= (maxBigInt!0 (contextDepth!8 (h!67315 zl!343)) (zipperDepth!14 (t!374190 zl!343))) (ite (>= (contextDepth!8 (h!67315 zl!343)) (zipperDepth!14 (t!374190 zl!343))) (contextDepth!8 (h!67315 zl!343)) (zipperDepth!14 (t!374190 zl!343))))))

(assert (=> b!5276585 d!1698652))

(declare-fun bs!1223110 () Bool)

(declare-fun d!1698654 () Bool)

(assert (= bs!1223110 (and d!1698654 d!1698278)))

(declare-fun lambda!266485 () Int)

(assert (=> bs!1223110 (= (and (= lt!2157532 lt!2157528) (= lambda!266346 lambda!266343)) (= lambda!266485 lambda!266415))))

(declare-fun bs!1223111 () Bool)

(assert (= bs!1223111 (and d!1698654 b!5277928)))

(assert (=> bs!1223111 (not (= lambda!266485 lambda!266483))))

(declare-fun bs!1223112 () Bool)

(assert (= bs!1223112 (and d!1698654 b!5277098)))

(assert (=> bs!1223112 (not (= lambda!266485 lambda!266410))))

(declare-fun bs!1223113 () Bool)

(assert (= bs!1223113 (and d!1698654 b!5277930)))

(assert (=> bs!1223113 (not (= lambda!266485 lambda!266484))))

(declare-fun bs!1223114 () Bool)

(assert (= bs!1223114 (and d!1698654 b!5276580)))

(assert (=> bs!1223114 (not (= lambda!266485 lambda!266344))))

(declare-fun bs!1223115 () Bool)

(assert (= bs!1223115 (and d!1698654 b!5276582)))

(assert (=> bs!1223115 (not (= lambda!266485 lambda!266345))))

(declare-fun bs!1223116 () Bool)

(assert (= bs!1223116 (and d!1698654 d!1698560)))

(assert (=> bs!1223116 (not (= lambda!266485 lambda!266470))))

(declare-fun bs!1223117 () Bool)

(assert (= bs!1223117 (and d!1698654 d!1698370)))

(assert (=> bs!1223117 (not (= lambda!266485 lambda!266435))))

(declare-fun bs!1223118 () Bool)

(assert (= bs!1223118 (and d!1698654 d!1698630)))

(assert (=> bs!1223118 (not (= lambda!266485 lambda!266475))))

(declare-fun bs!1223119 () Bool)

(assert (= bs!1223119 (and d!1698654 b!5276585)))

(assert (=> bs!1223119 (not (= lambda!266485 lambda!266347))))

(declare-fun bs!1223120 () Bool)

(assert (= bs!1223120 (and d!1698654 d!1698550)))

(assert (=> bs!1223120 (not (= lambda!266485 lambda!266468))))

(declare-fun bs!1223121 () Bool)

(assert (= bs!1223121 (and d!1698654 d!1698642)))

(assert (=> bs!1223121 (not (= lambda!266485 lambda!266479))))

(declare-fun bs!1223122 () Bool)

(assert (= bs!1223122 (and d!1698654 b!5276587)))

(assert (=> bs!1223122 (not (= lambda!266485 lambda!266348))))

(declare-fun bs!1223123 () Bool)

(assert (= bs!1223123 (and d!1698654 b!5277100)))

(assert (=> bs!1223123 (not (= lambda!266485 lambda!266411))))

(declare-fun bs!1223124 () Bool)

(assert (= bs!1223124 (and d!1698654 d!1698622)))

(assert (=> bs!1223124 (not (= lambda!266485 lambda!266472))))

(assert (=> d!1698654 true))

(assert (=> d!1698654 true))

(assert (=> d!1698654 (< (dynLambda!24061 order!27055 lambda!266346) (dynLambda!24062 order!27057 lambda!266485))))

(assert (=> d!1698654 (forall!14307 (t!374190 zl!343) lambda!266485)))

(declare-fun lt!2157680 () Unit!153106)

(assert (=> d!1698654 (= lt!2157680 (choose!39382 (t!374190 zl!343) lt!2157532 (zipperDepth!14 (t!374190 zl!343)) lambda!266346))))

(assert (=> d!1698654 (>= lt!2157532 (zipperDepth!14 (t!374190 zl!343)))))

(assert (=> d!1698654 (= (lemmaForallContextDepthBiggerThanTransitive!2 (t!374190 zl!343) lt!2157532 (zipperDepth!14 (t!374190 zl!343)) lambda!266346) lt!2157680)))

(declare-fun bs!1223125 () Bool)

(assert (= bs!1223125 d!1698654))

(declare-fun m!6316150 () Bool)

(assert (=> bs!1223125 m!6316150))

(assert (=> bs!1223125 m!6314800))

(declare-fun m!6316152 () Bool)

(assert (=> bs!1223125 m!6316152))

(assert (=> b!5276585 d!1698654))

(declare-fun bs!1223126 () Bool)

(declare-fun d!1698656 () Bool)

(assert (= bs!1223126 (and d!1698656 d!1698278)))

(declare-fun lambda!266486 () Int)

(assert (=> bs!1223126 (not (= lambda!266486 lambda!266415))))

(declare-fun bs!1223127 () Bool)

(assert (= bs!1223127 (and d!1698656 b!5277928)))

(assert (=> bs!1223127 (not (= lambda!266486 lambda!266483))))

(declare-fun bs!1223128 () Bool)

(assert (= bs!1223128 (and d!1698656 b!5277098)))

(assert (=> bs!1223128 (not (= lambda!266486 lambda!266410))))

(declare-fun bs!1223129 () Bool)

(assert (= bs!1223129 (and d!1698656 b!5277930)))

(assert (=> bs!1223129 (not (= lambda!266486 lambda!266484))))

(declare-fun bs!1223130 () Bool)

(assert (= bs!1223130 (and d!1698656 b!5276580)))

(assert (=> bs!1223130 (not (= lambda!266486 lambda!266344))))

(declare-fun bs!1223131 () Bool)

(assert (= bs!1223131 (and d!1698656 b!5276582)))

(assert (=> bs!1223131 (not (= lambda!266486 lambda!266345))))

(declare-fun bs!1223132 () Bool)

(assert (= bs!1223132 (and d!1698656 d!1698560)))

(assert (=> bs!1223132 (= lambda!266486 lambda!266470)))

(declare-fun bs!1223133 () Bool)

(assert (= bs!1223133 (and d!1698656 d!1698370)))

(assert (=> bs!1223133 (= lambda!266486 lambda!266435)))

(declare-fun bs!1223134 () Bool)

(assert (= bs!1223134 (and d!1698656 d!1698630)))

(assert (=> bs!1223134 (= lambda!266486 lambda!266475)))

(declare-fun bs!1223135 () Bool)

(assert (= bs!1223135 (and d!1698656 b!5276585)))

(assert (=> bs!1223135 (not (= lambda!266486 lambda!266347))))

(declare-fun bs!1223136 () Bool)

(assert (= bs!1223136 (and d!1698656 d!1698550)))

(assert (=> bs!1223136 (= lambda!266486 lambda!266468)))

(declare-fun bs!1223137 () Bool)

(assert (= bs!1223137 (and d!1698656 d!1698642)))

(assert (=> bs!1223137 (= lambda!266486 lambda!266479)))

(declare-fun bs!1223138 () Bool)

(assert (= bs!1223138 (and d!1698656 d!1698654)))

(assert (=> bs!1223138 (not (= lambda!266486 lambda!266485))))

(declare-fun bs!1223139 () Bool)

(assert (= bs!1223139 (and d!1698656 b!5276587)))

(assert (=> bs!1223139 (not (= lambda!266486 lambda!266348))))

(declare-fun bs!1223140 () Bool)

(assert (= bs!1223140 (and d!1698656 b!5277100)))

(assert (=> bs!1223140 (not (= lambda!266486 lambda!266411))))

(declare-fun bs!1223141 () Bool)

(assert (= bs!1223141 (and d!1698656 d!1698622)))

(assert (=> bs!1223141 (= lambda!266486 lambda!266472)))

(assert (=> d!1698656 (= (nullableZipper!1296 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326))) (exists!1999 (derivationStepZipper!1140 lt!2157425 (h!67316 s!2326)) lambda!266486))))

(declare-fun bs!1223142 () Bool)

(assert (= bs!1223142 d!1698656))

(assert (=> bs!1223142 m!6314320))

(declare-fun m!6316154 () Bool)

(assert (=> bs!1223142 m!6316154))

(assert (=> b!5276707 d!1698656))

(declare-fun call!375680 () List!60990)

(declare-fun c!914739 () Bool)

(declare-fun c!914736 () Bool)

(declare-fun bm!375673 () Bool)

(assert (=> bm!375673 (= call!375680 ($colon$colon!1346 (exprs!4781 (ite (or c!914319 c!914321) lt!2157412 (Context!8563 call!375443))) (ite (or c!914739 c!914736) (regTwo!30306 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))) (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343))))))))))))

(declare-fun b!5277931 () Bool)

(declare-fun e!3282035 () Bool)

(assert (=> b!5277931 (= e!3282035 (nullable!5066 (regOne!30306 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343))))))))))))

(declare-fun b!5277932 () Bool)

(declare-fun e!3282037 () (InoxSet Context!8562))

(declare-fun call!375678 () (InoxSet Context!8562))

(declare-fun call!375682 () (InoxSet Context!8562))

(assert (=> b!5277932 (= e!3282037 ((_ map or) call!375678 call!375682))))

(declare-fun b!5277933 () Bool)

(declare-fun e!3282039 () (InoxSet Context!8562))

(assert (=> b!5277933 (= e!3282039 (store ((as const (Array Context!8562 Bool)) false) (ite (or c!914319 c!914321) lt!2157412 (Context!8563 call!375443)) true))))

(declare-fun b!5277934 () Bool)

(declare-fun e!3282040 () (InoxSet Context!8562))

(declare-fun e!3282038 () (InoxSet Context!8562))

(assert (=> b!5277934 (= e!3282040 e!3282038)))

(assert (=> b!5277934 (= c!914736 ((_ is Concat!23742) (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))))

(declare-fun bm!375674 () Bool)

(declare-fun call!375683 () (InoxSet Context!8562))

(assert (=> bm!375674 (= call!375683 call!375678)))

(declare-fun b!5277935 () Bool)

(declare-fun e!3282036 () (InoxSet Context!8562))

(assert (=> b!5277935 (= e!3282036 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5277936 () Bool)

(assert (=> b!5277936 (= c!914739 e!3282035)))

(declare-fun res!2238512 () Bool)

(assert (=> b!5277936 (=> (not res!2238512) (not e!3282035))))

(assert (=> b!5277936 (= res!2238512 ((_ is Concat!23742) (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))))

(assert (=> b!5277936 (= e!3282037 e!3282040)))

(declare-fun b!5277937 () Bool)

(assert (=> b!5277937 (= e!3282039 e!3282037)))

(declare-fun c!914737 () Bool)

(assert (=> b!5277937 (= c!914737 ((_ is Union!14897) (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))))

(declare-fun bm!375675 () Bool)

(assert (=> bm!375675 (= call!375682 (derivationStepZipperDown!345 (ite c!914737 (regTwo!30307 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))) (regOne!30306 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343))))))))) (ite c!914737 (ite (or c!914319 c!914321) lt!2157412 (Context!8563 call!375443)) (Context!8563 call!375680)) (h!67316 s!2326)))))

(declare-fun c!914735 () Bool)

(declare-fun b!5277938 () Bool)

(assert (=> b!5277938 (= c!914735 ((_ is Star!14897) (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))))

(assert (=> b!5277938 (= e!3282038 e!3282036)))

(declare-fun b!5277939 () Bool)

(declare-fun call!375681 () (InoxSet Context!8562))

(assert (=> b!5277939 (= e!3282038 call!375681)))

(declare-fun bm!375676 () Bool)

(assert (=> bm!375676 (= call!375681 call!375683)))

(declare-fun b!5277940 () Bool)

(assert (=> b!5277940 (= e!3282036 call!375681)))

(declare-fun b!5277941 () Bool)

(assert (=> b!5277941 (= e!3282040 ((_ map or) call!375682 call!375683))))

(declare-fun d!1698658 () Bool)

(declare-fun c!914738 () Bool)

(assert (=> d!1698658 (= c!914738 (and ((_ is ElementMatch!14897) (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))) (= (c!914175 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))) (h!67316 s!2326))))))

(assert (=> d!1698658 (= (derivationStepZipperDown!345 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343))))))) (ite (or c!914319 c!914321) lt!2157412 (Context!8563 call!375443)) (h!67316 s!2326)) e!3282039)))

(declare-fun call!375679 () List!60990)

(declare-fun bm!375677 () Bool)

(assert (=> bm!375677 (= call!375678 (derivationStepZipperDown!345 (ite c!914737 (regOne!30307 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))) (ite c!914739 (regTwo!30306 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))) (ite c!914736 (regOne!30306 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))))))) (reg!15226 (ite c!914319 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914321 (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914318 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))) (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343))))))))))) (ite (or c!914737 c!914739) (ite (or c!914319 c!914321) lt!2157412 (Context!8563 call!375443)) (Context!8563 call!375679)) (h!67316 s!2326)))))

(declare-fun bm!375678 () Bool)

(assert (=> bm!375678 (= call!375679 call!375680)))

(assert (= (and d!1698658 c!914738) b!5277933))

(assert (= (and d!1698658 (not c!914738)) b!5277937))

(assert (= (and b!5277937 c!914737) b!5277932))

(assert (= (and b!5277937 (not c!914737)) b!5277936))

(assert (= (and b!5277936 res!2238512) b!5277931))

(assert (= (and b!5277936 c!914739) b!5277941))

(assert (= (and b!5277936 (not c!914739)) b!5277934))

(assert (= (and b!5277934 c!914736) b!5277939))

(assert (= (and b!5277934 (not c!914736)) b!5277938))

(assert (= (and b!5277938 c!914735) b!5277940))

(assert (= (and b!5277938 (not c!914735)) b!5277935))

(assert (= (or b!5277939 b!5277940) bm!375678))

(assert (= (or b!5277939 b!5277940) bm!375676))

(assert (= (or b!5277941 bm!375678) bm!375673))

(assert (= (or b!5277941 bm!375676) bm!375674))

(assert (= (or b!5277932 b!5277941) bm!375675))

(assert (= (or b!5277932 bm!375674) bm!375677))

(declare-fun m!6316156 () Bool)

(assert (=> bm!375675 m!6316156))

(declare-fun m!6316158 () Bool)

(assert (=> bm!375677 m!6316158))

(declare-fun m!6316160 () Bool)

(assert (=> bm!375673 m!6316160))

(declare-fun m!6316162 () Bool)

(assert (=> b!5277931 m!6316162))

(declare-fun m!6316164 () Bool)

(assert (=> b!5277933 m!6316164))

(assert (=> bm!375441 d!1698658))

(assert (=> d!1698058 d!1698060))

(declare-fun d!1698660 () Bool)

(assert (=> d!1698660 (= (flatMap!624 lt!2157405 lambda!266288) (dynLambda!24055 lambda!266288 lt!2157408))))

(assert (=> d!1698660 true))

(declare-fun _$13!1849 () Unit!153106)

(assert (=> d!1698660 (= (choose!39374 lt!2157405 lt!2157408 lambda!266288) _$13!1849)))

(declare-fun b_lambda!203611 () Bool)

(assert (=> (not b_lambda!203611) (not d!1698660)))

(declare-fun bs!1223143 () Bool)

(assert (= bs!1223143 d!1698660))

(assert (=> bs!1223143 m!6314254))

(assert (=> bs!1223143 m!6314886))

(assert (=> d!1698058 d!1698660))

(declare-fun b!5277942 () Bool)

(declare-fun e!3282041 () Bool)

(declare-fun call!375686 () Bool)

(assert (=> b!5277942 (= e!3282041 call!375686)))

(declare-fun b!5277943 () Bool)

(declare-fun e!3282047 () Bool)

(assert (=> b!5277943 (= e!3282047 call!375686)))

(declare-fun b!5277944 () Bool)

(declare-fun res!2238517 () Bool)

(declare-fun e!3282045 () Bool)

(assert (=> b!5277944 (=> res!2238517 e!3282045)))

(assert (=> b!5277944 (= res!2238517 (not ((_ is Concat!23742) lt!2157566)))))

(declare-fun e!3282043 () Bool)

(assert (=> b!5277944 (= e!3282043 e!3282045)))

(declare-fun b!5277945 () Bool)

(assert (=> b!5277945 (= e!3282045 e!3282047)))

(declare-fun res!2238514 () Bool)

(assert (=> b!5277945 (=> (not res!2238514) (not e!3282047))))

(declare-fun call!375684 () Bool)

(assert (=> b!5277945 (= res!2238514 call!375684)))

(declare-fun c!914741 () Bool)

(declare-fun c!914740 () Bool)

(declare-fun bm!375679 () Bool)

(declare-fun call!375685 () Bool)

(assert (=> bm!375679 (= call!375685 (validRegex!6633 (ite c!914741 (reg!15226 lt!2157566) (ite c!914740 (regOne!30307 lt!2157566) (regOne!30306 lt!2157566)))))))

(declare-fun d!1698662 () Bool)

(declare-fun res!2238516 () Bool)

(declare-fun e!3282042 () Bool)

(assert (=> d!1698662 (=> res!2238516 e!3282042)))

(assert (=> d!1698662 (= res!2238516 ((_ is ElementMatch!14897) lt!2157566))))

(assert (=> d!1698662 (= (validRegex!6633 lt!2157566) e!3282042)))

(declare-fun bm!375680 () Bool)

(assert (=> bm!375680 (= call!375684 call!375685)))

(declare-fun bm!375681 () Bool)

(assert (=> bm!375681 (= call!375686 (validRegex!6633 (ite c!914740 (regTwo!30307 lt!2157566) (regTwo!30306 lt!2157566))))))

(declare-fun b!5277946 () Bool)

(declare-fun e!3282044 () Bool)

(assert (=> b!5277946 (= e!3282042 e!3282044)))

(assert (=> b!5277946 (= c!914741 ((_ is Star!14897) lt!2157566))))

(declare-fun b!5277947 () Bool)

(declare-fun e!3282046 () Bool)

(assert (=> b!5277947 (= e!3282046 call!375685)))

(declare-fun b!5277948 () Bool)

(assert (=> b!5277948 (= e!3282044 e!3282046)))

(declare-fun res!2238513 () Bool)

(assert (=> b!5277948 (= res!2238513 (not (nullable!5066 (reg!15226 lt!2157566))))))

(assert (=> b!5277948 (=> (not res!2238513) (not e!3282046))))

(declare-fun b!5277949 () Bool)

(assert (=> b!5277949 (= e!3282044 e!3282043)))

(assert (=> b!5277949 (= c!914740 ((_ is Union!14897) lt!2157566))))

(declare-fun b!5277950 () Bool)

(declare-fun res!2238515 () Bool)

(assert (=> b!5277950 (=> (not res!2238515) (not e!3282041))))

(assert (=> b!5277950 (= res!2238515 call!375684)))

(assert (=> b!5277950 (= e!3282043 e!3282041)))

(assert (= (and d!1698662 (not res!2238516)) b!5277946))

(assert (= (and b!5277946 c!914741) b!5277948))

(assert (= (and b!5277946 (not c!914741)) b!5277949))

(assert (= (and b!5277948 res!2238513) b!5277947))

(assert (= (and b!5277949 c!914740) b!5277950))

(assert (= (and b!5277949 (not c!914740)) b!5277944))

(assert (= (and b!5277950 res!2238515) b!5277942))

(assert (= (and b!5277944 (not res!2238517)) b!5277945))

(assert (= (and b!5277945 res!2238514) b!5277943))

(assert (= (or b!5277942 b!5277943) bm!375681))

(assert (= (or b!5277950 b!5277945) bm!375680))

(assert (= (or b!5277947 bm!375680) bm!375679))

(declare-fun m!6316166 () Bool)

(assert (=> bm!375679 m!6316166))

(declare-fun m!6316168 () Bool)

(assert (=> bm!375681 m!6316168))

(declare-fun m!6316170 () Bool)

(assert (=> b!5277948 m!6316170))

(assert (=> d!1698076 d!1698662))

(declare-fun d!1698664 () Bool)

(declare-fun res!2238518 () Bool)

(declare-fun e!3282048 () Bool)

(assert (=> d!1698664 (=> res!2238518 e!3282048)))

(assert (=> d!1698664 (= res!2238518 ((_ is Nil!60866) (unfocusZipperList!339 zl!343)))))

(assert (=> d!1698664 (= (forall!14305 (unfocusZipperList!339 zl!343) lambda!266374) e!3282048)))

(declare-fun b!5277951 () Bool)

(declare-fun e!3282049 () Bool)

(assert (=> b!5277951 (= e!3282048 e!3282049)))

(declare-fun res!2238519 () Bool)

(assert (=> b!5277951 (=> (not res!2238519) (not e!3282049))))

(assert (=> b!5277951 (= res!2238519 (dynLambda!24057 lambda!266374 (h!67314 (unfocusZipperList!339 zl!343))))))

(declare-fun b!5277952 () Bool)

(assert (=> b!5277952 (= e!3282049 (forall!14305 (t!374189 (unfocusZipperList!339 zl!343)) lambda!266374))))

(assert (= (and d!1698664 (not res!2238518)) b!5277951))

(assert (= (and b!5277951 res!2238519) b!5277952))

(declare-fun b_lambda!203613 () Bool)

(assert (=> (not b_lambda!203613) (not b!5277951)))

(declare-fun m!6316172 () Bool)

(assert (=> b!5277951 m!6316172))

(declare-fun m!6316174 () Bool)

(assert (=> b!5277952 m!6316174))

(assert (=> d!1698076 d!1698664))

(declare-fun d!1698666 () Bool)

(assert (=> d!1698666 (= (isEmpty!32823 (tail!10407 s!2326)) ((_ is Nil!60868) (tail!10407 s!2326)))))

(assert (=> b!5276668 d!1698666))

(assert (=> b!5276668 d!1698588))

(declare-fun bs!1223144 () Bool)

(declare-fun d!1698668 () Bool)

(assert (= bs!1223144 (and d!1698668 d!1698278)))

(declare-fun lambda!266487 () Int)

(assert (=> bs!1223144 (not (= lambda!266487 lambda!266415))))

(declare-fun bs!1223145 () Bool)

(assert (= bs!1223145 (and d!1698668 b!5277928)))

(assert (=> bs!1223145 (not (= lambda!266487 lambda!266483))))

(declare-fun bs!1223146 () Bool)

(assert (= bs!1223146 (and d!1698668 b!5277098)))

(assert (=> bs!1223146 (not (= lambda!266487 lambda!266410))))

(declare-fun bs!1223147 () Bool)

(assert (= bs!1223147 (and d!1698668 b!5277930)))

(assert (=> bs!1223147 (not (= lambda!266487 lambda!266484))))

(declare-fun bs!1223148 () Bool)

(assert (= bs!1223148 (and d!1698668 b!5276582)))

(assert (=> bs!1223148 (not (= lambda!266487 lambda!266345))))

(declare-fun bs!1223149 () Bool)

(assert (= bs!1223149 (and d!1698668 d!1698560)))

(assert (=> bs!1223149 (= lambda!266487 lambda!266470)))

(declare-fun bs!1223150 () Bool)

(assert (= bs!1223150 (and d!1698668 d!1698370)))

(assert (=> bs!1223150 (= lambda!266487 lambda!266435)))

(declare-fun bs!1223151 () Bool)

(assert (= bs!1223151 (and d!1698668 d!1698630)))

(assert (=> bs!1223151 (= lambda!266487 lambda!266475)))

(declare-fun bs!1223152 () Bool)

(assert (= bs!1223152 (and d!1698668 b!5276585)))

(assert (=> bs!1223152 (not (= lambda!266487 lambda!266347))))

(declare-fun bs!1223153 () Bool)

(assert (= bs!1223153 (and d!1698668 d!1698550)))

(assert (=> bs!1223153 (= lambda!266487 lambda!266468)))

(declare-fun bs!1223154 () Bool)

(assert (= bs!1223154 (and d!1698668 d!1698642)))

(assert (=> bs!1223154 (= lambda!266487 lambda!266479)))

(declare-fun bs!1223155 () Bool)

(assert (= bs!1223155 (and d!1698668 d!1698654)))

(assert (=> bs!1223155 (not (= lambda!266487 lambda!266485))))

(declare-fun bs!1223156 () Bool)

(assert (= bs!1223156 (and d!1698668 b!5276587)))

(assert (=> bs!1223156 (not (= lambda!266487 lambda!266348))))

(declare-fun bs!1223157 () Bool)

(assert (= bs!1223157 (and d!1698668 d!1698656)))

(assert (=> bs!1223157 (= lambda!266487 lambda!266486)))

(declare-fun bs!1223158 () Bool)

(assert (= bs!1223158 (and d!1698668 b!5276580)))

(assert (=> bs!1223158 (not (= lambda!266487 lambda!266344))))

(declare-fun bs!1223159 () Bool)

(assert (= bs!1223159 (and d!1698668 b!5277100)))

(assert (=> bs!1223159 (not (= lambda!266487 lambda!266411))))

(declare-fun bs!1223160 () Bool)

(assert (= bs!1223160 (and d!1698668 d!1698622)))

(assert (=> bs!1223160 (= lambda!266487 lambda!266472)))

(assert (=> d!1698668 (= (nullableZipper!1296 lt!2157407) (exists!1999 lt!2157407 lambda!266487))))

(declare-fun bs!1223161 () Bool)

(assert (= bs!1223161 d!1698668))

(declare-fun m!6316176 () Bool)

(assert (=> bs!1223161 m!6316176))

(assert (=> b!5276805 d!1698668))

(assert (=> b!5276754 d!1698410))

(declare-fun d!1698670 () Bool)

(assert (=> d!1698670 (= ($colon$colon!1346 (exprs!4781 lt!2157412) (ite (or c!914270 c!914267) (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (regTwo!30306 (regOne!30306 r!7292)))) (Cons!60866 (ite (or c!914270 c!914267) (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (regTwo!30306 (regOne!30306 r!7292))) (exprs!4781 lt!2157412)))))

(assert (=> bm!375410 d!1698670))

(declare-fun d!1698672 () Bool)

(assert (=> d!1698672 (= (flatMap!624 lt!2157405 lambda!266362) (choose!39373 lt!2157405 lambda!266362))))

(declare-fun bs!1223162 () Bool)

(assert (= bs!1223162 d!1698672))

(declare-fun m!6316178 () Bool)

(assert (=> bs!1223162 m!6316178))

(assert (=> d!1698056 d!1698672))

(assert (=> d!1698034 d!1698356))

(declare-fun d!1698674 () Bool)

(assert (=> d!1698674 (= (isEmpty!32824 (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326)) (not ((_ is Some!15007) (findConcatSeparation!1422 (regOne!30306 r!7292) (regTwo!30306 r!7292) Nil!60868 s!2326 s!2326))))))

(assert (=> d!1698074 d!1698674))

(declare-fun bs!1223163 () Bool)

(declare-fun d!1698676 () Bool)

(assert (= bs!1223163 (and d!1698676 d!1698278)))

(declare-fun lambda!266488 () Int)

(assert (=> bs!1223163 (not (= lambda!266488 lambda!266415))))

(declare-fun bs!1223164 () Bool)

(assert (= bs!1223164 (and d!1698676 b!5277928)))

(assert (=> bs!1223164 (not (= lambda!266488 lambda!266483))))

(declare-fun bs!1223165 () Bool)

(assert (= bs!1223165 (and d!1698676 b!5277098)))

(assert (=> bs!1223165 (not (= lambda!266488 lambda!266410))))

(declare-fun bs!1223166 () Bool)

(assert (= bs!1223166 (and d!1698676 b!5277930)))

(assert (=> bs!1223166 (not (= lambda!266488 lambda!266484))))

(declare-fun bs!1223167 () Bool)

(assert (= bs!1223167 (and d!1698676 b!5276582)))

(assert (=> bs!1223167 (not (= lambda!266488 lambda!266345))))

(declare-fun bs!1223168 () Bool)

(assert (= bs!1223168 (and d!1698676 d!1698560)))

(assert (=> bs!1223168 (= lambda!266488 lambda!266470)))

(declare-fun bs!1223169 () Bool)

(assert (= bs!1223169 (and d!1698676 d!1698370)))

(assert (=> bs!1223169 (= lambda!266488 lambda!266435)))

(declare-fun bs!1223170 () Bool)

(assert (= bs!1223170 (and d!1698676 d!1698630)))

(assert (=> bs!1223170 (= lambda!266488 lambda!266475)))

(declare-fun bs!1223171 () Bool)

(assert (= bs!1223171 (and d!1698676 b!5276585)))

(assert (=> bs!1223171 (not (= lambda!266488 lambda!266347))))

(declare-fun bs!1223172 () Bool)

(assert (= bs!1223172 (and d!1698676 d!1698550)))

(assert (=> bs!1223172 (= lambda!266488 lambda!266468)))

(declare-fun bs!1223173 () Bool)

(assert (= bs!1223173 (and d!1698676 d!1698642)))

(assert (=> bs!1223173 (= lambda!266488 lambda!266479)))

(declare-fun bs!1223174 () Bool)

(assert (= bs!1223174 (and d!1698676 d!1698654)))

(assert (=> bs!1223174 (not (= lambda!266488 lambda!266485))))

(declare-fun bs!1223175 () Bool)

(assert (= bs!1223175 (and d!1698676 d!1698668)))

(assert (=> bs!1223175 (= lambda!266488 lambda!266487)))

(declare-fun bs!1223176 () Bool)

(assert (= bs!1223176 (and d!1698676 b!5276587)))

(assert (=> bs!1223176 (not (= lambda!266488 lambda!266348))))

(declare-fun bs!1223177 () Bool)

(assert (= bs!1223177 (and d!1698676 d!1698656)))

(assert (=> bs!1223177 (= lambda!266488 lambda!266486)))

(declare-fun bs!1223178 () Bool)

(assert (= bs!1223178 (and d!1698676 b!5276580)))

(assert (=> bs!1223178 (not (= lambda!266488 lambda!266344))))

(declare-fun bs!1223179 () Bool)

(assert (= bs!1223179 (and d!1698676 b!5277100)))

(assert (=> bs!1223179 (not (= lambda!266488 lambda!266411))))

(declare-fun bs!1223180 () Bool)

(assert (= bs!1223180 (and d!1698676 d!1698622)))

(assert (=> bs!1223180 (= lambda!266488 lambda!266472)))

(assert (=> d!1698676 (= (nullableZipper!1296 lt!2157418) (exists!1999 lt!2157418 lambda!266488))))

(declare-fun bs!1223181 () Bool)

(assert (= bs!1223181 d!1698676))

(declare-fun m!6316180 () Bool)

(assert (=> bs!1223181 m!6316180))

(assert (=> b!5276673 d!1698676))

(declare-fun d!1698678 () Bool)

(declare-fun res!2238520 () Bool)

(declare-fun e!3282050 () Bool)

(assert (=> d!1698678 (=> res!2238520 e!3282050)))

(assert (=> d!1698678 (= res!2238520 ((_ is Nil!60866) (exprs!4781 setElem!33797)))))

(assert (=> d!1698678 (= (forall!14305 (exprs!4781 setElem!33797) lambda!266361) e!3282050)))

(declare-fun b!5277953 () Bool)

(declare-fun e!3282051 () Bool)

(assert (=> b!5277953 (= e!3282050 e!3282051)))

(declare-fun res!2238521 () Bool)

(assert (=> b!5277953 (=> (not res!2238521) (not e!3282051))))

(assert (=> b!5277953 (= res!2238521 (dynLambda!24057 lambda!266361 (h!67314 (exprs!4781 setElem!33797))))))

(declare-fun b!5277954 () Bool)

(assert (=> b!5277954 (= e!3282051 (forall!14305 (t!374189 (exprs!4781 setElem!33797)) lambda!266361))))

(assert (= (and d!1698678 (not res!2238520)) b!5277953))

(assert (= (and b!5277953 res!2238521) b!5277954))

(declare-fun b_lambda!203615 () Bool)

(assert (=> (not b_lambda!203615) (not b!5277953)))

(declare-fun m!6316182 () Bool)

(assert (=> b!5277953 m!6316182))

(declare-fun m!6316184 () Bool)

(assert (=> b!5277954 m!6316184))

(assert (=> d!1698050 d!1698678))

(declare-fun call!375689 () List!60990)

(declare-fun bm!375682 () Bool)

(declare-fun c!914746 () Bool)

(declare-fun c!914743 () Bool)

(assert (=> bm!375682 (= call!375689 ($colon$colon!1346 (exprs!4781 (ite (or c!914273 c!914275) lt!2157404 (Context!8563 call!375422))) (ite (or c!914746 c!914743) (regTwo!30306 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))) (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292)))))))))))

(declare-fun e!3282052 () Bool)

(declare-fun b!5277955 () Bool)

(assert (=> b!5277955 (= e!3282052 (nullable!5066 (regOne!30306 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292)))))))))))

(declare-fun b!5277956 () Bool)

(declare-fun e!3282054 () (InoxSet Context!8562))

(declare-fun call!375687 () (InoxSet Context!8562))

(declare-fun call!375691 () (InoxSet Context!8562))

(assert (=> b!5277956 (= e!3282054 ((_ map or) call!375687 call!375691))))

(declare-fun b!5277957 () Bool)

(declare-fun e!3282056 () (InoxSet Context!8562))

(assert (=> b!5277957 (= e!3282056 (store ((as const (Array Context!8562 Bool)) false) (ite (or c!914273 c!914275) lt!2157404 (Context!8563 call!375422)) true))))

(declare-fun b!5277958 () Bool)

(declare-fun e!3282057 () (InoxSet Context!8562))

(declare-fun e!3282055 () (InoxSet Context!8562))

(assert (=> b!5277958 (= e!3282057 e!3282055)))

(assert (=> b!5277958 (= c!914743 ((_ is Concat!23742) (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))))))

(declare-fun bm!375683 () Bool)

(declare-fun call!375692 () (InoxSet Context!8562))

(assert (=> bm!375683 (= call!375692 call!375687)))

(declare-fun b!5277959 () Bool)

(declare-fun e!3282053 () (InoxSet Context!8562))

(assert (=> b!5277959 (= e!3282053 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5277960 () Bool)

(assert (=> b!5277960 (= c!914746 e!3282052)))

(declare-fun res!2238522 () Bool)

(assert (=> b!5277960 (=> (not res!2238522) (not e!3282052))))

(assert (=> b!5277960 (= res!2238522 ((_ is Concat!23742) (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))))))

(assert (=> b!5277960 (= e!3282054 e!3282057)))

(declare-fun b!5277961 () Bool)

(assert (=> b!5277961 (= e!3282056 e!3282054)))

(declare-fun c!914744 () Bool)

(assert (=> b!5277961 (= c!914744 ((_ is Union!14897) (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))))))

(declare-fun bm!375684 () Bool)

(assert (=> bm!375684 (= call!375691 (derivationStepZipperDown!345 (ite c!914744 (regTwo!30307 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))) (regOne!30306 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292)))))))) (ite c!914744 (ite (or c!914273 c!914275) lt!2157404 (Context!8563 call!375422)) (Context!8563 call!375689)) (h!67316 s!2326)))))

(declare-fun b!5277962 () Bool)

(declare-fun c!914742 () Bool)

(assert (=> b!5277962 (= c!914742 ((_ is Star!14897) (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))))))

(assert (=> b!5277962 (= e!3282055 e!3282053)))

(declare-fun b!5277963 () Bool)

(declare-fun call!375690 () (InoxSet Context!8562))

(assert (=> b!5277963 (= e!3282055 call!375690)))

(declare-fun bm!375685 () Bool)

(assert (=> bm!375685 (= call!375690 call!375692)))

(declare-fun b!5277964 () Bool)

(assert (=> b!5277964 (= e!3282053 call!375690)))

(declare-fun b!5277965 () Bool)

(assert (=> b!5277965 (= e!3282057 ((_ map or) call!375691 call!375692))))

(declare-fun c!914745 () Bool)

(declare-fun d!1698680 () Bool)

(assert (=> d!1698680 (= c!914745 (and ((_ is ElementMatch!14897) (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))) (= (c!914175 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))) (h!67316 s!2326))))))

(assert (=> d!1698680 (= (derivationStepZipperDown!345 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292)))))) (ite (or c!914273 c!914275) lt!2157404 (Context!8563 call!375422)) (h!67316 s!2326)) e!3282056)))

(declare-fun bm!375686 () Bool)

(declare-fun call!375688 () List!60990)

(assert (=> bm!375686 (= call!375687 (derivationStepZipperDown!345 (ite c!914744 (regOne!30307 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))) (ite c!914746 (regTwo!30306 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))) (ite c!914743 (regOne!30306 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292))))))) (reg!15226 (ite c!914273 (regOne!30307 (regOne!30306 (regOne!30306 r!7292))) (ite c!914275 (regTwo!30306 (regOne!30306 (regOne!30306 r!7292))) (ite c!914272 (regOne!30306 (regOne!30306 (regOne!30306 r!7292))) (reg!15226 (regOne!30306 (regOne!30306 r!7292)))))))))) (ite (or c!914744 c!914746) (ite (or c!914273 c!914275) lt!2157404 (Context!8563 call!375422)) (Context!8563 call!375688)) (h!67316 s!2326)))))

(declare-fun bm!375687 () Bool)

(assert (=> bm!375687 (= call!375688 call!375689)))

(assert (= (and d!1698680 c!914745) b!5277957))

(assert (= (and d!1698680 (not c!914745)) b!5277961))

(assert (= (and b!5277961 c!914744) b!5277956))

(assert (= (and b!5277961 (not c!914744)) b!5277960))

(assert (= (and b!5277960 res!2238522) b!5277955))

(assert (= (and b!5277960 c!914746) b!5277965))

(assert (= (and b!5277960 (not c!914746)) b!5277958))

(assert (= (and b!5277958 c!914743) b!5277963))

(assert (= (and b!5277958 (not c!914743)) b!5277962))

(assert (= (and b!5277962 c!914742) b!5277964))

(assert (= (and b!5277962 (not c!914742)) b!5277959))

(assert (= (or b!5277963 b!5277964) bm!375687))

(assert (= (or b!5277963 b!5277964) bm!375685))

(assert (= (or b!5277965 bm!375687) bm!375682))

(assert (= (or b!5277965 bm!375685) bm!375683))

(assert (= (or b!5277956 b!5277965) bm!375684))

(assert (= (or b!5277956 bm!375683) bm!375686))

(declare-fun m!6316186 () Bool)

(assert (=> bm!375684 m!6316186))

(declare-fun m!6316188 () Bool)

(assert (=> bm!375686 m!6316188))

(declare-fun m!6316190 () Bool)

(assert (=> bm!375682 m!6316190))

(declare-fun m!6316192 () Bool)

(assert (=> b!5277955 m!6316192))

(declare-fun m!6316194 () Bool)

(assert (=> b!5277957 m!6316194))

(assert (=> bm!375420 d!1698680))

(declare-fun d!1698682 () Bool)

(declare-fun c!914747 () Bool)

(assert (=> d!1698682 (= c!914747 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3282058 () Bool)

(assert (=> d!1698682 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157431 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3282058)))

(declare-fun b!5277966 () Bool)

(assert (=> b!5277966 (= e!3282058 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157431 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5277967 () Bool)

(assert (=> b!5277967 (= e!3282058 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157431 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698682 c!914747) b!5277966))

(assert (= (and d!1698682 (not c!914747)) b!5277967))

(assert (=> d!1698682 m!6314592))

(assert (=> d!1698682 m!6315570))

(assert (=> b!5277966 m!6314846))

(declare-fun m!6316196 () Bool)

(assert (=> b!5277966 m!6316196))

(assert (=> b!5277967 m!6314592))

(assert (=> b!5277967 m!6315576))

(assert (=> b!5277967 m!6314846))

(assert (=> b!5277967 m!6315576))

(declare-fun m!6316198 () Bool)

(assert (=> b!5277967 m!6316198))

(assert (=> b!5277967 m!6314592))

(assert (=> b!5277967 m!6315584))

(assert (=> b!5277967 m!6316198))

(assert (=> b!5277967 m!6315584))

(declare-fun m!6316200 () Bool)

(assert (=> b!5277967 m!6316200))

(assert (=> b!5276678 d!1698682))

(declare-fun bs!1223182 () Bool)

(declare-fun d!1698684 () Bool)

(assert (= bs!1223182 (and d!1698684 d!1698510)))

(declare-fun lambda!266489 () Int)

(assert (=> bs!1223182 (= lambda!266489 lambda!266460)))

(declare-fun bs!1223183 () Bool)

(assert (= bs!1223183 (and d!1698684 d!1698494)))

(assert (=> bs!1223183 (= lambda!266489 lambda!266456)))

(declare-fun bs!1223184 () Bool)

(assert (= bs!1223184 (and d!1698684 b!5275973)))

(assert (=> bs!1223184 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266489 lambda!266288))))

(declare-fun bs!1223185 () Bool)

(assert (= bs!1223185 (and d!1698684 d!1698422)))

(assert (=> bs!1223185 (= lambda!266489 lambda!266452)))

(declare-fun bs!1223186 () Bool)

(assert (= bs!1223186 (and d!1698684 d!1698056)))

(assert (=> bs!1223186 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266489 lambda!266362))))

(declare-fun bs!1223187 () Bool)

(assert (= bs!1223187 (and d!1698684 d!1698544)))

(assert (=> bs!1223187 (= lambda!266489 lambda!266467)))

(declare-fun bs!1223188 () Bool)

(assert (= bs!1223188 (and d!1698684 d!1698556)))

(assert (=> bs!1223188 (= lambda!266489 lambda!266469)))

(declare-fun bs!1223189 () Bool)

(assert (= bs!1223189 (and d!1698684 d!1698602)))

(assert (=> bs!1223189 (= lambda!266489 lambda!266471)))

(declare-fun bs!1223190 () Bool)

(assert (= bs!1223190 (and d!1698684 d!1698436)))

(assert (=> bs!1223190 (= lambda!266489 lambda!266453)))

(declare-fun bs!1223191 () Bool)

(assert (= bs!1223191 (and d!1698684 d!1698044)))

(assert (=> bs!1223191 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266489 lambda!266357))))

(declare-fun bs!1223192 () Bool)

(assert (= bs!1223192 (and d!1698684 d!1698522)))

(assert (=> bs!1223192 (= lambda!266489 lambda!266464)))

(assert (=> d!1698684 true))

(assert (=> d!1698684 (= (derivationStepZipper!1140 lt!2157431 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157431 lambda!266489))))

(declare-fun bs!1223193 () Bool)

(assert (= bs!1223193 d!1698684))

(declare-fun m!6316202 () Bool)

(assert (=> bs!1223193 m!6316202))

(assert (=> b!5276678 d!1698684))

(assert (=> b!5276678 d!1698424))

(assert (=> b!5276678 d!1698426))

(assert (=> b!5276664 d!1698666))

(assert (=> b!5276664 d!1698588))

(declare-fun d!1698686 () Bool)

(declare-fun lt!2157683 () Int)

(assert (=> d!1698686 (> lt!2157683 0)))

(declare-fun e!3282070 () Int)

(assert (=> d!1698686 (= lt!2157683 e!3282070)))

(declare-fun c!914757 () Bool)

(assert (=> d!1698686 (= c!914757 ((_ is ElementMatch!14897) (h!67314 (exprs!4781 lt!2157408))))))

(assert (=> d!1698686 (= (regexDepthTotal!8 (h!67314 (exprs!4781 lt!2157408))) lt!2157683)))

(declare-fun b!5277984 () Bool)

(declare-fun e!3282067 () Int)

(declare-fun e!3282068 () Int)

(assert (=> b!5277984 (= e!3282067 e!3282068)))

(declare-fun c!914756 () Bool)

(assert (=> b!5277984 (= c!914756 ((_ is Concat!23742) (h!67314 (exprs!4781 lt!2157408))))))

(declare-fun bm!375694 () Bool)

(declare-fun call!375701 () Int)

(declare-fun c!914759 () Bool)

(assert (=> bm!375694 (= call!375701 (regexDepthTotal!8 (ite c!914759 (regTwo!30307 (h!67314 (exprs!4781 lt!2157408))) (regTwo!30306 (h!67314 (exprs!4781 lt!2157408))))))))

(declare-fun b!5277985 () Bool)

(assert (=> b!5277985 (= e!3282068 1)))

(declare-fun bm!375695 () Bool)

(declare-fun call!375699 () Int)

(declare-fun call!375700 () Int)

(assert (=> bm!375695 (= call!375699 call!375700)))

(declare-fun b!5277986 () Bool)

(declare-fun e!3282069 () Int)

(assert (=> b!5277986 (= e!3282069 (+ 1 call!375700))))

(declare-fun b!5277987 () Bool)

(assert (=> b!5277987 (= e!3282070 1)))

(declare-fun b!5277988 () Bool)

(assert (=> b!5277988 (= e!3282068 (+ 1 call!375699 call!375701))))

(declare-fun c!914758 () Bool)

(declare-fun bm!375696 () Bool)

(assert (=> bm!375696 (= call!375700 (regexDepthTotal!8 (ite c!914758 (reg!15226 (h!67314 (exprs!4781 lt!2157408))) (ite c!914759 (regOne!30307 (h!67314 (exprs!4781 lt!2157408))) (regOne!30306 (h!67314 (exprs!4781 lt!2157408)))))))))

(declare-fun b!5277989 () Bool)

(assert (=> b!5277989 (= c!914759 ((_ is Union!14897) (h!67314 (exprs!4781 lt!2157408))))))

(assert (=> b!5277989 (= e!3282069 e!3282067)))

(declare-fun b!5277990 () Bool)

(assert (=> b!5277990 (= e!3282070 e!3282069)))

(assert (=> b!5277990 (= c!914758 ((_ is Star!14897) (h!67314 (exprs!4781 lt!2157408))))))

(declare-fun b!5277991 () Bool)

(assert (=> b!5277991 (= e!3282067 (+ 1 call!375699 call!375701))))

(assert (= (and d!1698686 c!914757) b!5277987))

(assert (= (and d!1698686 (not c!914757)) b!5277990))

(assert (= (and b!5277990 c!914758) b!5277986))

(assert (= (and b!5277990 (not c!914758)) b!5277989))

(assert (= (and b!5277989 c!914759) b!5277991))

(assert (= (and b!5277989 (not c!914759)) b!5277984))

(assert (= (and b!5277984 c!914756) b!5277988))

(assert (= (and b!5277984 (not c!914756)) b!5277985))

(assert (= (or b!5277991 b!5277988) bm!375694))

(assert (= (or b!5277991 b!5277988) bm!375695))

(assert (= (or b!5277986 bm!375695) bm!375696))

(declare-fun m!6316204 () Bool)

(assert (=> bm!375694 m!6316204))

(declare-fun m!6316206 () Bool)

(assert (=> bm!375696 m!6316206))

(assert (=> b!5276570 d!1698686))

(declare-fun d!1698688 () Bool)

(declare-fun lt!2157684 () Int)

(assert (=> d!1698688 (>= lt!2157684 0)))

(declare-fun e!3282071 () Int)

(assert (=> d!1698688 (= lt!2157684 e!3282071)))

(declare-fun c!914760 () Bool)

(assert (=> d!1698688 (= c!914760 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408))))))))

(assert (=> d!1698688 (= (contextDepthTotal!38 (Context!8563 (t!374189 (exprs!4781 lt!2157408)))) lt!2157684)))

(declare-fun b!5277992 () Bool)

(assert (=> b!5277992 (= e!3282071 (+ (regexDepthTotal!8 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408)))))) (contextDepthTotal!38 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408)))))))))))

(declare-fun b!5277993 () Bool)

(assert (=> b!5277993 (= e!3282071 1)))

(assert (= (and d!1698688 c!914760) b!5277992))

(assert (= (and d!1698688 (not c!914760)) b!5277993))

(declare-fun m!6316208 () Bool)

(assert (=> b!5277992 m!6316208))

(declare-fun m!6316210 () Bool)

(assert (=> b!5277992 m!6316210))

(assert (=> b!5276570 d!1698688))

(declare-fun b!5277994 () Bool)

(declare-fun res!2238529 () Bool)

(declare-fun e!3282072 () Bool)

(assert (=> b!5277994 (=> res!2238529 e!3282072)))

(assert (=> b!5277994 (= res!2238529 (not ((_ is ElementMatch!14897) (regTwo!30306 r!7292))))))

(declare-fun e!3282076 () Bool)

(assert (=> b!5277994 (= e!3282076 e!3282072)))

(declare-fun b!5277995 () Bool)

(declare-fun e!3282075 () Bool)

(assert (=> b!5277995 (= e!3282072 e!3282075)))

(declare-fun res!2238525 () Bool)

(assert (=> b!5277995 (=> (not res!2238525) (not e!3282075))))

(declare-fun lt!2157685 () Bool)

(assert (=> b!5277995 (= res!2238525 (not lt!2157685))))

(declare-fun b!5277996 () Bool)

(declare-fun e!3282077 () Bool)

(assert (=> b!5277996 (= e!3282077 (matchR!7082 (derivativeStep!4117 (regTwo!30306 r!7292) (head!11310 s!2326)) (tail!10407 s!2326)))))

(declare-fun b!5277997 () Bool)

(declare-fun res!2238530 () Bool)

(assert (=> b!5277997 (=> res!2238530 e!3282072)))

(declare-fun e!3282078 () Bool)

(assert (=> b!5277997 (= res!2238530 e!3282078)))

(declare-fun res!2238523 () Bool)

(assert (=> b!5277997 (=> (not res!2238523) (not e!3282078))))

(assert (=> b!5277997 (= res!2238523 lt!2157685)))

(declare-fun b!5277998 () Bool)

(declare-fun res!2238526 () Bool)

(assert (=> b!5277998 (=> (not res!2238526) (not e!3282078))))

(declare-fun call!375702 () Bool)

(assert (=> b!5277998 (= res!2238526 (not call!375702))))

(declare-fun b!5277999 () Bool)

(declare-fun res!2238527 () Bool)

(assert (=> b!5277999 (=> (not res!2238527) (not e!3282078))))

(assert (=> b!5277999 (= res!2238527 (isEmpty!32823 (tail!10407 s!2326)))))

(declare-fun d!1698690 () Bool)

(declare-fun e!3282073 () Bool)

(assert (=> d!1698690 e!3282073))

(declare-fun c!914763 () Bool)

(assert (=> d!1698690 (= c!914763 ((_ is EmptyExpr!14897) (regTwo!30306 r!7292)))))

(assert (=> d!1698690 (= lt!2157685 e!3282077)))

(declare-fun c!914762 () Bool)

(assert (=> d!1698690 (= c!914762 (isEmpty!32823 s!2326))))

(assert (=> d!1698690 (validRegex!6633 (regTwo!30306 r!7292))))

(assert (=> d!1698690 (= (matchR!7082 (regTwo!30306 r!7292) s!2326) lt!2157685)))

(declare-fun b!5278000 () Bool)

(assert (=> b!5278000 (= e!3282078 (= (head!11310 s!2326) (c!914175 (regTwo!30306 r!7292))))))

(declare-fun b!5278001 () Bool)

(assert (=> b!5278001 (= e!3282073 e!3282076)))

(declare-fun c!914761 () Bool)

(assert (=> b!5278001 (= c!914761 ((_ is EmptyLang!14897) (regTwo!30306 r!7292)))))

(declare-fun b!5278002 () Bool)

(declare-fun e!3282074 () Bool)

(assert (=> b!5278002 (= e!3282075 e!3282074)))

(declare-fun res!2238524 () Bool)

(assert (=> b!5278002 (=> res!2238524 e!3282074)))

(assert (=> b!5278002 (= res!2238524 call!375702)))

(declare-fun b!5278003 () Bool)

(declare-fun res!2238528 () Bool)

(assert (=> b!5278003 (=> res!2238528 e!3282074)))

(assert (=> b!5278003 (= res!2238528 (not (isEmpty!32823 (tail!10407 s!2326))))))

(declare-fun b!5278004 () Bool)

(assert (=> b!5278004 (= e!3282077 (nullable!5066 (regTwo!30306 r!7292)))))

(declare-fun bm!375697 () Bool)

(assert (=> bm!375697 (= call!375702 (isEmpty!32823 s!2326))))

(declare-fun b!5278005 () Bool)

(assert (=> b!5278005 (= e!3282073 (= lt!2157685 call!375702))))

(declare-fun b!5278006 () Bool)

(assert (=> b!5278006 (= e!3282076 (not lt!2157685))))

(declare-fun b!5278007 () Bool)

(assert (=> b!5278007 (= e!3282074 (not (= (head!11310 s!2326) (c!914175 (regTwo!30306 r!7292)))))))

(assert (= (and d!1698690 c!914762) b!5278004))

(assert (= (and d!1698690 (not c!914762)) b!5277996))

(assert (= (and d!1698690 c!914763) b!5278005))

(assert (= (and d!1698690 (not c!914763)) b!5278001))

(assert (= (and b!5278001 c!914761) b!5278006))

(assert (= (and b!5278001 (not c!914761)) b!5277994))

(assert (= (and b!5277994 (not res!2238529)) b!5277997))

(assert (= (and b!5277997 res!2238523) b!5277998))

(assert (= (and b!5277998 res!2238526) b!5277999))

(assert (= (and b!5277999 res!2238527) b!5278000))

(assert (= (and b!5277997 (not res!2238530)) b!5277995))

(assert (= (and b!5277995 res!2238525) b!5278002))

(assert (= (and b!5278002 (not res!2238524)) b!5278003))

(assert (= (and b!5278003 (not res!2238528)) b!5278007))

(assert (= (or b!5278005 b!5277998 b!5278002) bm!375697))

(assert (=> b!5278004 m!6316050))

(assert (=> b!5278003 m!6314820))

(assert (=> b!5278003 m!6314820))

(assert (=> b!5278003 m!6314822))

(assert (=> b!5278007 m!6314824))

(assert (=> b!5277999 m!6314820))

(assert (=> b!5277999 m!6314820))

(assert (=> b!5277999 m!6314822))

(assert (=> d!1698690 m!6314814))

(assert (=> d!1698690 m!6316060))

(assert (=> b!5278000 m!6314824))

(assert (=> bm!375697 m!6314814))

(assert (=> b!5277996 m!6314824))

(assert (=> b!5277996 m!6314824))

(declare-fun m!6316212 () Bool)

(assert (=> b!5277996 m!6316212))

(assert (=> b!5277996 m!6314820))

(assert (=> b!5277996 m!6316212))

(assert (=> b!5277996 m!6314820))

(declare-fun m!6316214 () Bool)

(assert (=> b!5277996 m!6316214))

(assert (=> b!5276748 d!1698690))

(declare-fun d!1698692 () Bool)

(assert (=> d!1698692 (= (nullable!5066 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))) (nullableFct!1448 (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun bs!1223194 () Bool)

(assert (= bs!1223194 d!1698692))

(declare-fun m!6316216 () Bool)

(assert (=> bs!1223194 m!6316216))

(assert (=> b!5276397 d!1698692))

(declare-fun c!914768 () Bool)

(declare-fun c!914765 () Bool)

(declare-fun call!375705 () List!60990)

(declare-fun bm!375698 () Bool)

(assert (=> bm!375698 (= call!375705 ($colon$colon!1346 (exprs!4781 (ite (or c!914268 c!914270) lt!2157412 (Context!8563 call!375416))) (ite (or c!914768 c!914765) (regTwo!30306 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))) (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292)))))))))))

(declare-fun e!3282079 () Bool)

(declare-fun b!5278008 () Bool)

(assert (=> b!5278008 (= e!3282079 (nullable!5066 (regOne!30306 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292)))))))))))

(declare-fun b!5278009 () Bool)

(declare-fun e!3282081 () (InoxSet Context!8562))

(declare-fun call!375703 () (InoxSet Context!8562))

(declare-fun call!375707 () (InoxSet Context!8562))

(assert (=> b!5278009 (= e!3282081 ((_ map or) call!375703 call!375707))))

(declare-fun e!3282083 () (InoxSet Context!8562))

(declare-fun b!5278010 () Bool)

(assert (=> b!5278010 (= e!3282083 (store ((as const (Array Context!8562 Bool)) false) (ite (or c!914268 c!914270) lt!2157412 (Context!8563 call!375416)) true))))

(declare-fun b!5278011 () Bool)

(declare-fun e!3282084 () (InoxSet Context!8562))

(declare-fun e!3282082 () (InoxSet Context!8562))

(assert (=> b!5278011 (= e!3282084 e!3282082)))

(assert (=> b!5278011 (= c!914765 ((_ is Concat!23742) (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))))))

(declare-fun bm!375699 () Bool)

(declare-fun call!375708 () (InoxSet Context!8562))

(assert (=> bm!375699 (= call!375708 call!375703)))

(declare-fun b!5278012 () Bool)

(declare-fun e!3282080 () (InoxSet Context!8562))

(assert (=> b!5278012 (= e!3282080 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5278013 () Bool)

(assert (=> b!5278013 (= c!914768 e!3282079)))

(declare-fun res!2238531 () Bool)

(assert (=> b!5278013 (=> (not res!2238531) (not e!3282079))))

(assert (=> b!5278013 (= res!2238531 ((_ is Concat!23742) (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))))))

(assert (=> b!5278013 (= e!3282081 e!3282084)))

(declare-fun b!5278014 () Bool)

(assert (=> b!5278014 (= e!3282083 e!3282081)))

(declare-fun c!914766 () Bool)

(assert (=> b!5278014 (= c!914766 ((_ is Union!14897) (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))))))

(declare-fun bm!375700 () Bool)

(assert (=> bm!375700 (= call!375707 (derivationStepZipperDown!345 (ite c!914766 (regTwo!30307 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))) (regOne!30306 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292)))))))) (ite c!914766 (ite (or c!914268 c!914270) lt!2157412 (Context!8563 call!375416)) (Context!8563 call!375705)) (h!67316 s!2326)))))

(declare-fun c!914764 () Bool)

(declare-fun b!5278015 () Bool)

(assert (=> b!5278015 (= c!914764 ((_ is Star!14897) (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))))))

(assert (=> b!5278015 (= e!3282082 e!3282080)))

(declare-fun b!5278016 () Bool)

(declare-fun call!375706 () (InoxSet Context!8562))

(assert (=> b!5278016 (= e!3282082 call!375706)))

(declare-fun bm!375701 () Bool)

(assert (=> bm!375701 (= call!375706 call!375708)))

(declare-fun b!5278017 () Bool)

(assert (=> b!5278017 (= e!3282080 call!375706)))

(declare-fun b!5278018 () Bool)

(assert (=> b!5278018 (= e!3282084 ((_ map or) call!375707 call!375708))))

(declare-fun d!1698694 () Bool)

(declare-fun c!914767 () Bool)

(assert (=> d!1698694 (= c!914767 (and ((_ is ElementMatch!14897) (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))) (= (c!914175 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))) (h!67316 s!2326))))))

(assert (=> d!1698694 (= (derivationStepZipperDown!345 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292)))))) (ite (or c!914268 c!914270) lt!2157412 (Context!8563 call!375416)) (h!67316 s!2326)) e!3282083)))

(declare-fun bm!375702 () Bool)

(declare-fun call!375704 () List!60990)

(assert (=> bm!375702 (= call!375703 (derivationStepZipperDown!345 (ite c!914766 (regOne!30307 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))) (ite c!914768 (regTwo!30306 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))) (ite c!914765 (regOne!30306 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292))))))) (reg!15226 (ite c!914268 (regOne!30307 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914270 (regTwo!30306 (regTwo!30306 (regOne!30306 r!7292))) (ite c!914267 (regOne!30306 (regTwo!30306 (regOne!30306 r!7292))) (reg!15226 (regTwo!30306 (regOne!30306 r!7292)))))))))) (ite (or c!914766 c!914768) (ite (or c!914268 c!914270) lt!2157412 (Context!8563 call!375416)) (Context!8563 call!375704)) (h!67316 s!2326)))))

(declare-fun bm!375703 () Bool)

(assert (=> bm!375703 (= call!375704 call!375705)))

(assert (= (and d!1698694 c!914767) b!5278010))

(assert (= (and d!1698694 (not c!914767)) b!5278014))

(assert (= (and b!5278014 c!914766) b!5278009))

(assert (= (and b!5278014 (not c!914766)) b!5278013))

(assert (= (and b!5278013 res!2238531) b!5278008))

(assert (= (and b!5278013 c!914768) b!5278018))

(assert (= (and b!5278013 (not c!914768)) b!5278011))

(assert (= (and b!5278011 c!914765) b!5278016))

(assert (= (and b!5278011 (not c!914765)) b!5278015))

(assert (= (and b!5278015 c!914764) b!5278017))

(assert (= (and b!5278015 (not c!914764)) b!5278012))

(assert (= (or b!5278016 b!5278017) bm!375703))

(assert (= (or b!5278016 b!5278017) bm!375701))

(assert (= (or b!5278018 bm!375703) bm!375698))

(assert (= (or b!5278018 bm!375701) bm!375699))

(assert (= (or b!5278009 b!5278018) bm!375700))

(assert (= (or b!5278009 bm!375699) bm!375702))

(declare-fun m!6316218 () Bool)

(assert (=> bm!375700 m!6316218))

(declare-fun m!6316220 () Bool)

(assert (=> bm!375702 m!6316220))

(declare-fun m!6316222 () Bool)

(assert (=> bm!375698 m!6316222))

(declare-fun m!6316224 () Bool)

(assert (=> b!5278008 m!6316224))

(declare-fun m!6316226 () Bool)

(assert (=> b!5278010 m!6316226))

(assert (=> bm!375414 d!1698694))

(declare-fun bs!1223195 () Bool)

(declare-fun d!1698696 () Bool)

(assert (= bs!1223195 (and d!1698696 b!5277923)))

(declare-fun lambda!266490 () Int)

(assert (=> bs!1223195 (not (= lambda!266490 lambda!266480))))

(declare-fun bs!1223196 () Bool)

(assert (= bs!1223196 (and d!1698696 d!1697978)))

(assert (=> bs!1223196 (= lambda!266490 lambda!266336)))

(declare-fun bs!1223197 () Bool)

(assert (= bs!1223197 (and d!1698696 d!1698360)))

(assert (=> bs!1223197 (= lambda!266490 lambda!266430)))

(declare-fun bs!1223198 () Bool)

(assert (= bs!1223198 (and d!1698696 d!1698050)))

(assert (=> bs!1223198 (= lambda!266490 lambda!266361)))

(declare-fun bs!1223199 () Bool)

(assert (= bs!1223199 (and d!1698696 d!1698528)))

(assert (=> bs!1223199 (= lambda!266490 lambda!266466)))

(declare-fun bs!1223200 () Bool)

(assert (= bs!1223200 (and d!1698696 b!5277925)))

(assert (=> bs!1223200 (not (= lambda!266490 lambda!266481))))

(declare-fun bs!1223201 () Bool)

(assert (= bs!1223201 (and d!1698696 b!5275986)))

(assert (=> bs!1223201 (= lambda!266490 lambda!266289)))

(declare-fun bs!1223202 () Bool)

(assert (= bs!1223202 (and d!1698696 b!5277198)))

(assert (=> bs!1223202 (not (= lambda!266490 lambda!266424))))

(declare-fun bs!1223203 () Bool)

(assert (= bs!1223203 (and d!1698696 d!1698076)))

(assert (=> bs!1223203 (= lambda!266490 lambda!266374)))

(declare-fun bs!1223204 () Bool)

(assert (= bs!1223204 (and d!1698696 d!1698406)))

(assert (=> bs!1223204 (= lambda!266490 lambda!266450)))

(declare-fun bs!1223205 () Bool)

(assert (= bs!1223205 (and d!1698696 d!1698046)))

(assert (=> bs!1223205 (= lambda!266490 lambda!266360)))

(declare-fun bs!1223206 () Bool)

(assert (= bs!1223206 (and d!1698696 b!5277200)))

(assert (=> bs!1223206 (not (= lambda!266490 lambda!266426))))

(declare-fun bs!1223207 () Bool)

(assert (= bs!1223207 (and d!1698696 d!1698078)))

(assert (=> bs!1223207 (= lambda!266490 lambda!266377)))

(declare-fun b!5278019 () Bool)

(declare-fun e!3282089 () Regex!14897)

(assert (=> b!5278019 (= e!3282089 (Concat!23742 (h!67314 (t!374189 (exprs!4781 (h!67315 zl!343)))) (generalisedConcat!566 (t!374189 (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun b!5278020 () Bool)

(declare-fun e!3282090 () Regex!14897)

(assert (=> b!5278020 (= e!3282090 e!3282089)))

(declare-fun c!914770 () Bool)

(assert (=> b!5278020 (= c!914770 ((_ is Cons!60866) (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5278021 () Bool)

(declare-fun e!3282088 () Bool)

(assert (=> b!5278021 (= e!3282088 (isEmpty!32819 (t!374189 (t!374189 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun e!3282087 () Bool)

(assert (=> d!1698696 e!3282087))

(declare-fun res!2238532 () Bool)

(assert (=> d!1698696 (=> (not res!2238532) (not e!3282087))))

(declare-fun lt!2157686 () Regex!14897)

(assert (=> d!1698696 (= res!2238532 (validRegex!6633 lt!2157686))))

(assert (=> d!1698696 (= lt!2157686 e!3282090)))

(declare-fun c!914771 () Bool)

(assert (=> d!1698696 (= c!914771 e!3282088)))

(declare-fun res!2238533 () Bool)

(assert (=> d!1698696 (=> (not res!2238533) (not e!3282088))))

(assert (=> d!1698696 (= res!2238533 ((_ is Cons!60866) (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> d!1698696 (forall!14305 (t!374189 (exprs!4781 (h!67315 zl!343))) lambda!266490)))

(assert (=> d!1698696 (= (generalisedConcat!566 (t!374189 (exprs!4781 (h!67315 zl!343)))) lt!2157686)))

(declare-fun b!5278022 () Bool)

(declare-fun e!3282086 () Bool)

(assert (=> b!5278022 (= e!3282086 (isEmptyExpr!831 lt!2157686))))

(declare-fun b!5278023 () Bool)

(declare-fun e!3282085 () Bool)

(assert (=> b!5278023 (= e!3282085 (isConcat!354 lt!2157686))))

(declare-fun b!5278024 () Bool)

(assert (=> b!5278024 (= e!3282087 e!3282086)))

(declare-fun c!914772 () Bool)

(assert (=> b!5278024 (= c!914772 (isEmpty!32819 (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5278025 () Bool)

(assert (=> b!5278025 (= e!3282089 EmptyExpr!14897)))

(declare-fun b!5278026 () Bool)

(assert (=> b!5278026 (= e!3282090 (h!67314 (t!374189 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5278027 () Bool)

(assert (=> b!5278027 (= e!3282086 e!3282085)))

(declare-fun c!914769 () Bool)

(assert (=> b!5278027 (= c!914769 (isEmpty!32819 (tail!10408 (t!374189 (exprs!4781 (h!67315 zl!343))))))))

(declare-fun b!5278028 () Bool)

(assert (=> b!5278028 (= e!3282085 (= lt!2157686 (head!11311 (t!374189 (exprs!4781 (h!67315 zl!343))))))))

(assert (= (and d!1698696 res!2238533) b!5278021))

(assert (= (and d!1698696 c!914771) b!5278026))

(assert (= (and d!1698696 (not c!914771)) b!5278020))

(assert (= (and b!5278020 c!914770) b!5278019))

(assert (= (and b!5278020 (not c!914770)) b!5278025))

(assert (= (and d!1698696 res!2238532) b!5278024))

(assert (= (and b!5278024 c!914772) b!5278022))

(assert (= (and b!5278024 (not c!914772)) b!5278027))

(assert (= (and b!5278027 c!914769) b!5278028))

(assert (= (and b!5278027 (not c!914769)) b!5278023))

(assert (=> b!5278024 m!6314318))

(declare-fun m!6316228 () Bool)

(assert (=> b!5278028 m!6316228))

(declare-fun m!6316230 () Bool)

(assert (=> d!1698696 m!6316230))

(declare-fun m!6316232 () Bool)

(assert (=> d!1698696 m!6316232))

(declare-fun m!6316234 () Bool)

(assert (=> b!5278021 m!6316234))

(declare-fun m!6316236 () Bool)

(assert (=> b!5278019 m!6316236))

(declare-fun m!6316238 () Bool)

(assert (=> b!5278027 m!6316238))

(assert (=> b!5278027 m!6316238))

(declare-fun m!6316240 () Bool)

(assert (=> b!5278027 m!6316240))

(declare-fun m!6316242 () Bool)

(assert (=> b!5278023 m!6316242))

(declare-fun m!6316244 () Bool)

(assert (=> b!5278022 m!6316244))

(assert (=> b!5276522 d!1698696))

(declare-fun call!375711 () List!60990)

(declare-fun c!914777 () Bool)

(declare-fun bm!375704 () Bool)

(declare-fun c!914774 () Bool)

(assert (=> bm!375704 (= call!375711 ($colon$colon!1346 (exprs!4781 (ite c!914273 lt!2157404 (Context!8563 call!375423))) (ite (or c!914777 c!914774) (regTwo!30306 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))) (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))))))))

(declare-fun b!5278029 () Bool)

(declare-fun e!3282091 () Bool)

(assert (=> b!5278029 (= e!3282091 (nullable!5066 (regOne!30306 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))))))))

(declare-fun b!5278030 () Bool)

(declare-fun e!3282093 () (InoxSet Context!8562))

(declare-fun call!375709 () (InoxSet Context!8562))

(declare-fun call!375713 () (InoxSet Context!8562))

(assert (=> b!5278030 (= e!3282093 ((_ map or) call!375709 call!375713))))

(declare-fun e!3282095 () (InoxSet Context!8562))

(declare-fun b!5278031 () Bool)

(assert (=> b!5278031 (= e!3282095 (store ((as const (Array Context!8562 Bool)) false) (ite c!914273 lt!2157404 (Context!8563 call!375423)) true))))

(declare-fun b!5278032 () Bool)

(declare-fun e!3282096 () (InoxSet Context!8562))

(declare-fun e!3282094 () (InoxSet Context!8562))

(assert (=> b!5278032 (= e!3282096 e!3282094)))

(assert (=> b!5278032 (= c!914774 ((_ is Concat!23742) (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))))))

(declare-fun bm!375705 () Bool)

(declare-fun call!375714 () (InoxSet Context!8562))

(assert (=> bm!375705 (= call!375714 call!375709)))

(declare-fun b!5278033 () Bool)

(declare-fun e!3282092 () (InoxSet Context!8562))

(assert (=> b!5278033 (= e!3282092 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5278034 () Bool)

(assert (=> b!5278034 (= c!914777 e!3282091)))

(declare-fun res!2238534 () Bool)

(assert (=> b!5278034 (=> (not res!2238534) (not e!3282091))))

(assert (=> b!5278034 (= res!2238534 ((_ is Concat!23742) (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))))))

(assert (=> b!5278034 (= e!3282093 e!3282096)))

(declare-fun b!5278035 () Bool)

(assert (=> b!5278035 (= e!3282095 e!3282093)))

(declare-fun c!914775 () Bool)

(assert (=> b!5278035 (= c!914775 ((_ is Union!14897) (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))))))

(declare-fun bm!375706 () Bool)

(assert (=> bm!375706 (= call!375713 (derivationStepZipperDown!345 (ite c!914775 (regTwo!30307 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))) (regOne!30306 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))))) (ite c!914775 (ite c!914273 lt!2157404 (Context!8563 call!375423)) (Context!8563 call!375711)) (h!67316 s!2326)))))

(declare-fun b!5278036 () Bool)

(declare-fun c!914773 () Bool)

(assert (=> b!5278036 (= c!914773 ((_ is Star!14897) (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))))))

(assert (=> b!5278036 (= e!3282094 e!3282092)))

(declare-fun b!5278037 () Bool)

(declare-fun call!375712 () (InoxSet Context!8562))

(assert (=> b!5278037 (= e!3282094 call!375712)))

(declare-fun bm!375707 () Bool)

(assert (=> bm!375707 (= call!375712 call!375714)))

(declare-fun b!5278038 () Bool)

(assert (=> b!5278038 (= e!3282092 call!375712)))

(declare-fun b!5278039 () Bool)

(assert (=> b!5278039 (= e!3282096 ((_ map or) call!375713 call!375714))))

(declare-fun c!914776 () Bool)

(declare-fun d!1698698 () Bool)

(assert (=> d!1698698 (= c!914776 (and ((_ is ElementMatch!14897) (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))) (= (c!914175 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))) (h!67316 s!2326))))))

(assert (=> d!1698698 (= (derivationStepZipperDown!345 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))) (ite c!914273 lt!2157404 (Context!8563 call!375423)) (h!67316 s!2326)) e!3282095)))

(declare-fun call!375710 () List!60990)

(declare-fun bm!375708 () Bool)

(assert (=> bm!375708 (= call!375709 (derivationStepZipperDown!345 (ite c!914775 (regOne!30307 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))) (ite c!914777 (regTwo!30306 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))) (ite c!914774 (regOne!30306 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292))))) (reg!15226 (ite c!914273 (regTwo!30307 (regOne!30306 (regOne!30306 r!7292))) (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))))))) (ite (or c!914775 c!914777) (ite c!914273 lt!2157404 (Context!8563 call!375423)) (Context!8563 call!375710)) (h!67316 s!2326)))))

(declare-fun bm!375709 () Bool)

(assert (=> bm!375709 (= call!375710 call!375711)))

(assert (= (and d!1698698 c!914776) b!5278031))

(assert (= (and d!1698698 (not c!914776)) b!5278035))

(assert (= (and b!5278035 c!914775) b!5278030))

(assert (= (and b!5278035 (not c!914775)) b!5278034))

(assert (= (and b!5278034 res!2238534) b!5278029))

(assert (= (and b!5278034 c!914777) b!5278039))

(assert (= (and b!5278034 (not c!914777)) b!5278032))

(assert (= (and b!5278032 c!914774) b!5278037))

(assert (= (and b!5278032 (not c!914774)) b!5278036))

(assert (= (and b!5278036 c!914773) b!5278038))

(assert (= (and b!5278036 (not c!914773)) b!5278033))

(assert (= (or b!5278037 b!5278038) bm!375709))

(assert (= (or b!5278037 b!5278038) bm!375707))

(assert (= (or b!5278039 bm!375709) bm!375704))

(assert (= (or b!5278039 bm!375707) bm!375705))

(assert (= (or b!5278030 b!5278039) bm!375706))

(assert (= (or b!5278030 bm!375705) bm!375708))

(declare-fun m!6316246 () Bool)

(assert (=> bm!375706 m!6316246))

(declare-fun m!6316248 () Bool)

(assert (=> bm!375708 m!6316248))

(declare-fun m!6316250 () Bool)

(assert (=> bm!375704 m!6316250))

(declare-fun m!6316252 () Bool)

(assert (=> b!5278029 m!6316252))

(declare-fun m!6316254 () Bool)

(assert (=> b!5278031 m!6316254))

(assert (=> bm!375418 d!1698698))

(declare-fun d!1698700 () Bool)

(assert (=> d!1698700 (= (isConcat!354 lt!2157513) ((_ is Concat!23742) lt!2157513))))

(assert (=> b!5276526 d!1698700))

(assert (=> d!1697968 d!1698356))

(declare-fun b!5278040 () Bool)

(declare-fun e!3282098 () Bool)

(assert (=> b!5278040 (= e!3282098 (nullable!5066 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157404)))))))))

(declare-fun call!375715 () (InoxSet Context!8562))

(declare-fun b!5278041 () Bool)

(declare-fun e!3282097 () (InoxSet Context!8562))

(assert (=> b!5278041 (= e!3282097 ((_ map or) call!375715 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157404)))))) (h!67316 s!2326))))))

(declare-fun b!5278042 () Bool)

(declare-fun e!3282099 () (InoxSet Context!8562))

(assert (=> b!5278042 (= e!3282097 e!3282099)))

(declare-fun c!914778 () Bool)

(assert (=> b!5278042 (= c!914778 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157404))))))))

(declare-fun b!5278043 () Bool)

(assert (=> b!5278043 (= e!3282099 call!375715)))

(declare-fun bm!375710 () Bool)

(assert (=> bm!375710 (= call!375715 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157404))))) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157404)))))) (h!67316 s!2326)))))

(declare-fun d!1698702 () Bool)

(declare-fun c!914779 () Bool)

(assert (=> d!1698702 (= c!914779 e!3282098)))

(declare-fun res!2238535 () Bool)

(assert (=> d!1698702 (=> (not res!2238535) (not e!3282098))))

(assert (=> d!1698702 (= res!2238535 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157404))))))))

(assert (=> d!1698702 (= (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 lt!2157404))) (h!67316 s!2326)) e!3282097)))

(declare-fun b!5278044 () Bool)

(assert (=> b!5278044 (= e!3282099 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1698702 res!2238535) b!5278040))

(assert (= (and d!1698702 c!914779) b!5278041))

(assert (= (and d!1698702 (not c!914779)) b!5278042))

(assert (= (and b!5278042 c!914778) b!5278043))

(assert (= (and b!5278042 (not c!914778)) b!5278044))

(assert (= (or b!5278041 b!5278043) bm!375710))

(declare-fun m!6316256 () Bool)

(assert (=> b!5278040 m!6316256))

(declare-fun m!6316258 () Bool)

(assert (=> b!5278041 m!6316258))

(declare-fun m!6316260 () Bool)

(assert (=> bm!375710 m!6316260))

(assert (=> b!5276438 d!1698702))

(declare-fun d!1698704 () Bool)

(assert (=> d!1698704 (= (nullable!5066 (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))) (nullableFct!1448 (regOne!30306 (regOne!30306 (regOne!30306 r!7292)))))))

(declare-fun bs!1223208 () Bool)

(assert (= bs!1223208 d!1698704))

(declare-fun m!6316262 () Bool)

(assert (=> bs!1223208 m!6316262))

(assert (=> b!5276250 d!1698704))

(declare-fun d!1698706 () Bool)

(assert (=> d!1698706 (= (nullable!5066 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (nullableFct!1448 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))

(declare-fun bs!1223209 () Bool)

(assert (= bs!1223209 d!1698706))

(declare-fun m!6316264 () Bool)

(assert (=> bs!1223209 m!6316264))

(assert (=> b!5276373 d!1698706))

(declare-fun b!5278045 () Bool)

(declare-fun e!3282101 () Bool)

(assert (=> b!5278045 (= e!3282101 (nullable!5066 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408)))))))))

(declare-fun b!5278046 () Bool)

(declare-fun e!3282100 () (InoxSet Context!8562))

(declare-fun call!375716 () (InoxSet Context!8562))

(assert (=> b!5278046 (= e!3282100 ((_ map or) call!375716 (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408)))))) (h!67316 s!2326))))))

(declare-fun b!5278047 () Bool)

(declare-fun e!3282102 () (InoxSet Context!8562))

(assert (=> b!5278047 (= e!3282100 e!3282102)))

(declare-fun c!914780 () Bool)

(assert (=> b!5278047 (= c!914780 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408))))))))

(declare-fun b!5278048 () Bool)

(assert (=> b!5278048 (= e!3282102 call!375716)))

(declare-fun bm!375711 () Bool)

(assert (=> bm!375711 (= call!375716 (derivationStepZipperDown!345 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408))))) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408)))))) (h!67316 s!2326)))))

(declare-fun d!1698708 () Bool)

(declare-fun c!914781 () Bool)

(assert (=> d!1698708 (= c!914781 e!3282101)))

(declare-fun res!2238536 () Bool)

(assert (=> d!1698708 (=> (not res!2238536) (not e!3282101))))

(assert (=> d!1698708 (= res!2238536 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157408))))))))

(assert (=> d!1698708 (= (derivationStepZipperUp!269 (Context!8563 (t!374189 (exprs!4781 lt!2157408))) (h!67316 s!2326)) e!3282100)))

(declare-fun b!5278049 () Bool)

(assert (=> b!5278049 (= e!3282102 ((as const (Array Context!8562 Bool)) false))))

(assert (= (and d!1698708 res!2238536) b!5278045))

(assert (= (and d!1698708 c!914781) b!5278046))

(assert (= (and d!1698708 (not c!914781)) b!5278047))

(assert (= (and b!5278047 c!914780) b!5278048))

(assert (= (and b!5278047 (not c!914780)) b!5278049))

(assert (= (or b!5278046 b!5278048) bm!375711))

(declare-fun m!6316266 () Bool)

(assert (=> b!5278045 m!6316266))

(declare-fun m!6316268 () Bool)

(assert (=> b!5278046 m!6316268))

(declare-fun m!6316270 () Bool)

(assert (=> bm!375711 m!6316270))

(assert (=> b!5276726 d!1698708))

(declare-fun d!1698710 () Bool)

(declare-fun c!914782 () Bool)

(assert (=> d!1698710 (= c!914782 (isEmpty!32823 (tail!10407 (t!374191 s!2326))))))

(declare-fun e!3282103 () Bool)

(assert (=> d!1698710 (= (matchZipper!1141 (derivationStepZipper!1140 lt!2157422 (head!11310 (t!374191 s!2326))) (tail!10407 (t!374191 s!2326))) e!3282103)))

(declare-fun b!5278050 () Bool)

(assert (=> b!5278050 (= e!3282103 (nullableZipper!1296 (derivationStepZipper!1140 lt!2157422 (head!11310 (t!374191 s!2326)))))))

(declare-fun b!5278051 () Bool)

(assert (=> b!5278051 (= e!3282103 (matchZipper!1141 (derivationStepZipper!1140 (derivationStepZipper!1140 lt!2157422 (head!11310 (t!374191 s!2326))) (head!11310 (tail!10407 (t!374191 s!2326)))) (tail!10407 (tail!10407 (t!374191 s!2326)))))))

(assert (= (and d!1698710 c!914782) b!5278050))

(assert (= (and d!1698710 (not c!914782)) b!5278051))

(assert (=> d!1698710 m!6314592))

(assert (=> d!1698710 m!6315570))

(assert (=> b!5278050 m!6314662))

(declare-fun m!6316272 () Bool)

(assert (=> b!5278050 m!6316272))

(assert (=> b!5278051 m!6314592))

(assert (=> b!5278051 m!6315576))

(assert (=> b!5278051 m!6314662))

(assert (=> b!5278051 m!6315576))

(declare-fun m!6316274 () Bool)

(assert (=> b!5278051 m!6316274))

(assert (=> b!5278051 m!6314592))

(assert (=> b!5278051 m!6315584))

(assert (=> b!5278051 m!6316274))

(assert (=> b!5278051 m!6315584))

(declare-fun m!6316276 () Bool)

(assert (=> b!5278051 m!6316276))

(assert (=> b!5276434 d!1698710))

(declare-fun bs!1223210 () Bool)

(declare-fun d!1698712 () Bool)

(assert (= bs!1223210 (and d!1698712 d!1698510)))

(declare-fun lambda!266491 () Int)

(assert (=> bs!1223210 (= lambda!266491 lambda!266460)))

(declare-fun bs!1223211 () Bool)

(assert (= bs!1223211 (and d!1698712 d!1698494)))

(assert (=> bs!1223211 (= lambda!266491 lambda!266456)))

(declare-fun bs!1223212 () Bool)

(assert (= bs!1223212 (and d!1698712 b!5275973)))

(assert (=> bs!1223212 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266491 lambda!266288))))

(declare-fun bs!1223213 () Bool)

(assert (= bs!1223213 (and d!1698712 d!1698422)))

(assert (=> bs!1223213 (= lambda!266491 lambda!266452)))

(declare-fun bs!1223214 () Bool)

(assert (= bs!1223214 (and d!1698712 d!1698056)))

(assert (=> bs!1223214 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266491 lambda!266362))))

(declare-fun bs!1223215 () Bool)

(assert (= bs!1223215 (and d!1698712 d!1698684)))

(assert (=> bs!1223215 (= lambda!266491 lambda!266489)))

(declare-fun bs!1223216 () Bool)

(assert (= bs!1223216 (and d!1698712 d!1698544)))

(assert (=> bs!1223216 (= lambda!266491 lambda!266467)))

(declare-fun bs!1223217 () Bool)

(assert (= bs!1223217 (and d!1698712 d!1698556)))

(assert (=> bs!1223217 (= lambda!266491 lambda!266469)))

(declare-fun bs!1223218 () Bool)

(assert (= bs!1223218 (and d!1698712 d!1698602)))

(assert (=> bs!1223218 (= lambda!266491 lambda!266471)))

(declare-fun bs!1223219 () Bool)

(assert (= bs!1223219 (and d!1698712 d!1698436)))

(assert (=> bs!1223219 (= lambda!266491 lambda!266453)))

(declare-fun bs!1223220 () Bool)

(assert (= bs!1223220 (and d!1698712 d!1698044)))

(assert (=> bs!1223220 (= (= (head!11310 (t!374191 s!2326)) (h!67316 s!2326)) (= lambda!266491 lambda!266357))))

(declare-fun bs!1223221 () Bool)

(assert (= bs!1223221 (and d!1698712 d!1698522)))

(assert (=> bs!1223221 (= lambda!266491 lambda!266464)))

(assert (=> d!1698712 true))

(assert (=> d!1698712 (= (derivationStepZipper!1140 lt!2157422 (head!11310 (t!374191 s!2326))) (flatMap!624 lt!2157422 lambda!266491))))

(declare-fun bs!1223222 () Bool)

(assert (= bs!1223222 d!1698712))

(declare-fun m!6316278 () Bool)

(assert (=> bs!1223222 m!6316278))

(assert (=> b!5276434 d!1698712))

(assert (=> b!5276434 d!1698424))

(assert (=> b!5276434 d!1698426))

(declare-fun d!1698714 () Bool)

(assert (=> d!1698714 (= (nullable!5066 (h!67314 (exprs!4781 lt!2157412))) (nullableFct!1448 (h!67314 (exprs!4781 lt!2157412))))))

(declare-fun bs!1223223 () Bool)

(assert (= bs!1223223 d!1698714))

(declare-fun m!6316280 () Bool)

(assert (=> bs!1223223 m!6316280))

(assert (=> b!5276378 d!1698714))

(declare-fun c!914784 () Bool)

(declare-fun bm!375712 () Bool)

(declare-fun c!914787 () Bool)

(declare-fun call!375719 () List!60990)

(assert (=> bm!375712 (= call!375719 ($colon$colon!1346 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))) (ite (or c!914787 c!914784) (regTwo!30306 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))))

(declare-fun b!5278052 () Bool)

(declare-fun e!3282104 () Bool)

(assert (=> b!5278052 (= e!3282104 (nullable!5066 (regOne!30306 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))))

(declare-fun b!5278053 () Bool)

(declare-fun e!3282106 () (InoxSet Context!8562))

(declare-fun call!375717 () (InoxSet Context!8562))

(declare-fun call!375721 () (InoxSet Context!8562))

(assert (=> b!5278053 (= e!3282106 ((_ map or) call!375717 call!375721))))

(declare-fun b!5278054 () Bool)

(declare-fun e!3282108 () (InoxSet Context!8562))

(assert (=> b!5278054 (= e!3282108 (store ((as const (Array Context!8562 Bool)) false) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) true))))

(declare-fun b!5278055 () Bool)

(declare-fun e!3282109 () (InoxSet Context!8562))

(declare-fun e!3282107 () (InoxSet Context!8562))

(assert (=> b!5278055 (= e!3282109 e!3282107)))

(assert (=> b!5278055 (= c!914784 ((_ is Concat!23742) (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))

(declare-fun bm!375713 () Bool)

(declare-fun call!375722 () (InoxSet Context!8562))

(assert (=> bm!375713 (= call!375722 call!375717)))

(declare-fun b!5278056 () Bool)

(declare-fun e!3282105 () (InoxSet Context!8562))

(assert (=> b!5278056 (= e!3282105 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5278057 () Bool)

(assert (=> b!5278057 (= c!914787 e!3282104)))

(declare-fun res!2238537 () Bool)

(assert (=> b!5278057 (=> (not res!2238537) (not e!3282104))))

(assert (=> b!5278057 (= res!2238537 ((_ is Concat!23742) (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))

(assert (=> b!5278057 (= e!3282106 e!3282109)))

(declare-fun b!5278058 () Bool)

(assert (=> b!5278058 (= e!3282108 e!3282106)))

(declare-fun c!914785 () Bool)

(assert (=> b!5278058 (= c!914785 ((_ is Union!14897) (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))

(declare-fun bm!375714 () Bool)

(assert (=> bm!375714 (= call!375721 (derivationStepZipperDown!345 (ite c!914785 (regTwo!30307 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (regOne!30306 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))) (ite c!914785 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (Context!8563 call!375719)) (h!67316 s!2326)))))

(declare-fun b!5278059 () Bool)

(declare-fun c!914783 () Bool)

(assert (=> b!5278059 (= c!914783 ((_ is Star!14897) (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))))))

(assert (=> b!5278059 (= e!3282107 e!3282105)))

(declare-fun b!5278060 () Bool)

(declare-fun call!375720 () (InoxSet Context!8562))

(assert (=> b!5278060 (= e!3282107 call!375720)))

(declare-fun bm!375715 () Bool)

(assert (=> bm!375715 (= call!375720 call!375722)))

(declare-fun b!5278061 () Bool)

(assert (=> b!5278061 (= e!3282105 call!375720)))

(declare-fun b!5278062 () Bool)

(assert (=> b!5278062 (= e!3282109 ((_ map or) call!375721 call!375722))))

(declare-fun d!1698716 () Bool)

(declare-fun c!914786 () Bool)

(assert (=> d!1698716 (= c!914786 (and ((_ is ElementMatch!14897) (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (= (c!914175 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (h!67316 s!2326))))))

(assert (=> d!1698716 (= (derivationStepZipperDown!345 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (h!67316 s!2326)) e!3282108)))

(declare-fun call!375718 () List!60990)

(declare-fun bm!375716 () Bool)

(assert (=> bm!375716 (= call!375717 (derivationStepZipperDown!345 (ite c!914785 (regOne!30307 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (ite c!914787 (regTwo!30306 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (ite c!914784 (regOne!30306 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (reg!15226 (h!67314 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343))))))))))) (ite (or c!914785 c!914787) (Context!8563 (t!374189 (exprs!4781 (Context!8563 (Cons!60866 (h!67314 (exprs!4781 (h!67315 zl!343))) (t!374189 (exprs!4781 (h!67315 zl!343)))))))) (Context!8563 call!375718)) (h!67316 s!2326)))))

(declare-fun bm!375717 () Bool)

(assert (=> bm!375717 (= call!375718 call!375719)))

(assert (= (and d!1698716 c!914786) b!5278054))

(assert (= (and d!1698716 (not c!914786)) b!5278058))

(assert (= (and b!5278058 c!914785) b!5278053))

(assert (= (and b!5278058 (not c!914785)) b!5278057))

(assert (= (and b!5278057 res!2238537) b!5278052))

(assert (= (and b!5278057 c!914787) b!5278062))

(assert (= (and b!5278057 (not c!914787)) b!5278055))

(assert (= (and b!5278055 c!914784) b!5278060))

(assert (= (and b!5278055 (not c!914784)) b!5278059))

(assert (= (and b!5278059 c!914783) b!5278061))

(assert (= (and b!5278059 (not c!914783)) b!5278056))

(assert (= (or b!5278060 b!5278061) bm!375717))

(assert (= (or b!5278060 b!5278061) bm!375715))

(assert (= (or b!5278062 bm!375717) bm!375712))

(assert (= (or b!5278062 bm!375715) bm!375713))

(assert (= (or b!5278053 b!5278062) bm!375714))

(assert (= (or b!5278053 bm!375713) bm!375716))

(declare-fun m!6316282 () Bool)

(assert (=> bm!375714 m!6316282))

(declare-fun m!6316284 () Bool)

(assert (=> bm!375716 m!6316284))

(declare-fun m!6316286 () Bool)

(assert (=> bm!375712 m!6316286))

(declare-fun m!6316288 () Bool)

(assert (=> b!5278052 m!6316288))

(declare-fun m!6316290 () Bool)

(assert (=> b!5278054 m!6316290))

(assert (=> bm!375434 d!1698716))

(assert (=> d!1697974 d!1697972))

(declare-fun d!1698718 () Bool)

(assert (=> d!1698718 (= (flatMap!624 lt!2157425 lambda!266288) (dynLambda!24055 lambda!266288 lt!2157404))))

(assert (=> d!1698718 true))

(declare-fun _$13!1850 () Unit!153106)

(assert (=> d!1698718 (= (choose!39374 lt!2157425 lt!2157404 lambda!266288) _$13!1850)))

(declare-fun b_lambda!203617 () Bool)

(assert (=> (not b_lambda!203617) (not d!1698718)))

(declare-fun bs!1223224 () Bool)

(assert (= bs!1223224 d!1698718))

(assert (=> bs!1223224 m!6314308))

(assert (=> bs!1223224 m!6314680))

(assert (=> d!1697974 d!1698718))

(assert (=> d!1697916 d!1697942))

(assert (=> d!1697916 d!1697940))

(declare-fun e!3282110 () Bool)

(declare-fun d!1698720 () Bool)

(assert (=> d!1698720 (= (matchZipper!1141 ((_ map or) lt!2157430 lt!2157418) (t!374191 s!2326)) e!3282110)))

(declare-fun res!2238538 () Bool)

(assert (=> d!1698720 (=> res!2238538 e!3282110)))

(assert (=> d!1698720 (= res!2238538 (matchZipper!1141 lt!2157430 (t!374191 s!2326)))))

(assert (=> d!1698720 true))

(declare-fun _$48!956 () Unit!153106)

(assert (=> d!1698720 (= (choose!39371 lt!2157430 lt!2157418 (t!374191 s!2326)) _$48!956)))

(declare-fun b!5278063 () Bool)

(assert (=> b!5278063 (= e!3282110 (matchZipper!1141 lt!2157418 (t!374191 s!2326)))))

(assert (= (and d!1698720 (not res!2238538)) b!5278063))

(assert (=> d!1698720 m!6314224))

(assert (=> d!1698720 m!6314222))

(assert (=> b!5278063 m!6314292))

(assert (=> d!1697916 d!1698720))

(declare-fun c!914792 () Bool)

(declare-fun c!914789 () Bool)

(declare-fun bm!375718 () Bool)

(declare-fun call!375725 () List!60990)

(assert (=> bm!375718 (= call!375725 ($colon$colon!1346 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 lt!2157412)))) (ite (or c!914792 c!914789) (regTwo!30306 (h!67314 (exprs!4781 lt!2157412))) (h!67314 (exprs!4781 lt!2157412)))))))

(declare-fun b!5278064 () Bool)

(declare-fun e!3282111 () Bool)

(assert (=> b!5278064 (= e!3282111 (nullable!5066 (regOne!30306 (h!67314 (exprs!4781 lt!2157412)))))))

(declare-fun b!5278065 () Bool)

(declare-fun e!3282113 () (InoxSet Context!8562))

(declare-fun call!375723 () (InoxSet Context!8562))

(declare-fun call!375727 () (InoxSet Context!8562))

(assert (=> b!5278065 (= e!3282113 ((_ map or) call!375723 call!375727))))

(declare-fun b!5278066 () Bool)

(declare-fun e!3282115 () (InoxSet Context!8562))

(assert (=> b!5278066 (= e!3282115 (store ((as const (Array Context!8562 Bool)) false) (Context!8563 (t!374189 (exprs!4781 lt!2157412))) true))))

(declare-fun b!5278067 () Bool)

(declare-fun e!3282116 () (InoxSet Context!8562))

(declare-fun e!3282114 () (InoxSet Context!8562))

(assert (=> b!5278067 (= e!3282116 e!3282114)))

(assert (=> b!5278067 (= c!914789 ((_ is Concat!23742) (h!67314 (exprs!4781 lt!2157412))))))

(declare-fun bm!375719 () Bool)

(declare-fun call!375728 () (InoxSet Context!8562))

(assert (=> bm!375719 (= call!375728 call!375723)))

(declare-fun b!5278068 () Bool)

(declare-fun e!3282112 () (InoxSet Context!8562))

(assert (=> b!5278068 (= e!3282112 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5278069 () Bool)

(assert (=> b!5278069 (= c!914792 e!3282111)))

(declare-fun res!2238539 () Bool)

(assert (=> b!5278069 (=> (not res!2238539) (not e!3282111))))

(assert (=> b!5278069 (= res!2238539 ((_ is Concat!23742) (h!67314 (exprs!4781 lt!2157412))))))

(assert (=> b!5278069 (= e!3282113 e!3282116)))

(declare-fun b!5278070 () Bool)

(assert (=> b!5278070 (= e!3282115 e!3282113)))

(declare-fun c!914790 () Bool)

(assert (=> b!5278070 (= c!914790 ((_ is Union!14897) (h!67314 (exprs!4781 lt!2157412))))))

(declare-fun bm!375720 () Bool)

(assert (=> bm!375720 (= call!375727 (derivationStepZipperDown!345 (ite c!914790 (regTwo!30307 (h!67314 (exprs!4781 lt!2157412))) (regOne!30306 (h!67314 (exprs!4781 lt!2157412)))) (ite c!914790 (Context!8563 (t!374189 (exprs!4781 lt!2157412))) (Context!8563 call!375725)) (h!67316 s!2326)))))

(declare-fun b!5278071 () Bool)

(declare-fun c!914788 () Bool)

(assert (=> b!5278071 (= c!914788 ((_ is Star!14897) (h!67314 (exprs!4781 lt!2157412))))))

(assert (=> b!5278071 (= e!3282114 e!3282112)))

(declare-fun b!5278072 () Bool)

(declare-fun call!375726 () (InoxSet Context!8562))

(assert (=> b!5278072 (= e!3282114 call!375726)))

(declare-fun bm!375721 () Bool)

(assert (=> bm!375721 (= call!375726 call!375728)))

(declare-fun b!5278073 () Bool)

(assert (=> b!5278073 (= e!3282112 call!375726)))

(declare-fun b!5278074 () Bool)

(assert (=> b!5278074 (= e!3282116 ((_ map or) call!375727 call!375728))))

(declare-fun d!1698722 () Bool)

(declare-fun c!914791 () Bool)

(assert (=> d!1698722 (= c!914791 (and ((_ is ElementMatch!14897) (h!67314 (exprs!4781 lt!2157412))) (= (c!914175 (h!67314 (exprs!4781 lt!2157412))) (h!67316 s!2326))))))

(assert (=> d!1698722 (= (derivationStepZipperDown!345 (h!67314 (exprs!4781 lt!2157412)) (Context!8563 (t!374189 (exprs!4781 lt!2157412))) (h!67316 s!2326)) e!3282115)))

(declare-fun bm!375722 () Bool)

(declare-fun call!375724 () List!60990)

(assert (=> bm!375722 (= call!375723 (derivationStepZipperDown!345 (ite c!914790 (regOne!30307 (h!67314 (exprs!4781 lt!2157412))) (ite c!914792 (regTwo!30306 (h!67314 (exprs!4781 lt!2157412))) (ite c!914789 (regOne!30306 (h!67314 (exprs!4781 lt!2157412))) (reg!15226 (h!67314 (exprs!4781 lt!2157412)))))) (ite (or c!914790 c!914792) (Context!8563 (t!374189 (exprs!4781 lt!2157412))) (Context!8563 call!375724)) (h!67316 s!2326)))))

(declare-fun bm!375723 () Bool)

(assert (=> bm!375723 (= call!375724 call!375725)))

(assert (= (and d!1698722 c!914791) b!5278066))

(assert (= (and d!1698722 (not c!914791)) b!5278070))

(assert (= (and b!5278070 c!914790) b!5278065))

(assert (= (and b!5278070 (not c!914790)) b!5278069))

(assert (= (and b!5278069 res!2238539) b!5278064))

(assert (= (and b!5278069 c!914792) b!5278074))

(assert (= (and b!5278069 (not c!914792)) b!5278067))

(assert (= (and b!5278067 c!914789) b!5278072))

(assert (= (and b!5278067 (not c!914789)) b!5278071))

(assert (= (and b!5278071 c!914788) b!5278073))

(assert (= (and b!5278071 (not c!914788)) b!5278068))

(assert (= (or b!5278072 b!5278073) bm!375723))

(assert (= (or b!5278072 b!5278073) bm!375721))

(assert (= (or b!5278074 bm!375723) bm!375718))

(assert (= (or b!5278074 bm!375721) bm!375719))

(assert (= (or b!5278065 b!5278074) bm!375720))

(assert (= (or b!5278065 bm!375719) bm!375722))

(declare-fun m!6316292 () Bool)

(assert (=> bm!375720 m!6316292))

(declare-fun m!6316294 () Bool)

(assert (=> bm!375722 m!6316294))

(declare-fun m!6316296 () Bool)

(assert (=> bm!375718 m!6316296))

(declare-fun m!6316298 () Bool)

(assert (=> b!5278064 m!6316298))

(declare-fun m!6316300 () Bool)

(assert (=> b!5278066 m!6316300))

(assert (=> bm!375435 d!1698722))

(declare-fun b!5278075 () Bool)

(declare-fun e!3282117 () Bool)

(declare-fun call!375731 () Bool)

(assert (=> b!5278075 (= e!3282117 call!375731)))

(declare-fun b!5278076 () Bool)

(declare-fun e!3282123 () Bool)

(assert (=> b!5278076 (= e!3282123 call!375731)))

(declare-fun b!5278077 () Bool)

(declare-fun res!2238544 () Bool)

(declare-fun e!3282121 () Bool)

(assert (=> b!5278077 (=> res!2238544 e!3282121)))

(assert (=> b!5278077 (= res!2238544 (not ((_ is Concat!23742) (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292))))))))

(declare-fun e!3282119 () Bool)

(assert (=> b!5278077 (= e!3282119 e!3282121)))

(declare-fun b!5278078 () Bool)

(assert (=> b!5278078 (= e!3282121 e!3282123)))

(declare-fun res!2238541 () Bool)

(assert (=> b!5278078 (=> (not res!2238541) (not e!3282123))))

(declare-fun call!375729 () Bool)

(assert (=> b!5278078 (= res!2238541 call!375729)))

(declare-fun bm!375724 () Bool)

(declare-fun call!375730 () Bool)

(declare-fun c!914793 () Bool)

(declare-fun c!914794 () Bool)

(assert (=> bm!375724 (= call!375730 (validRegex!6633 (ite c!914794 (reg!15226 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))) (ite c!914793 (regOne!30307 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))) (regOne!30306 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292))))))))))

(declare-fun d!1698724 () Bool)

(declare-fun res!2238543 () Bool)

(declare-fun e!3282118 () Bool)

(assert (=> d!1698724 (=> res!2238543 e!3282118)))

(assert (=> d!1698724 (= res!2238543 ((_ is ElementMatch!14897) (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))))))

(assert (=> d!1698724 (= (validRegex!6633 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))) e!3282118)))

(declare-fun bm!375725 () Bool)

(assert (=> bm!375725 (= call!375729 call!375730)))

(declare-fun bm!375726 () Bool)

(assert (=> bm!375726 (= call!375731 (validRegex!6633 (ite c!914793 (regTwo!30307 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))) (regTwo!30306 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))))))))

(declare-fun b!5278079 () Bool)

(declare-fun e!3282120 () Bool)

(assert (=> b!5278079 (= e!3282118 e!3282120)))

(assert (=> b!5278079 (= c!914794 ((_ is Star!14897) (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))))))

(declare-fun b!5278080 () Bool)

(declare-fun e!3282122 () Bool)

(assert (=> b!5278080 (= e!3282122 call!375730)))

(declare-fun b!5278081 () Bool)

(assert (=> b!5278081 (= e!3282120 e!3282122)))

(declare-fun res!2238540 () Bool)

(assert (=> b!5278081 (= res!2238540 (not (nullable!5066 (reg!15226 (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))))))))

(assert (=> b!5278081 (=> (not res!2238540) (not e!3282122))))

(declare-fun b!5278082 () Bool)

(assert (=> b!5278082 (= e!3282120 e!3282119)))

(assert (=> b!5278082 (= c!914793 ((_ is Union!14897) (ite c!914408 (reg!15226 r!7292) (ite c!914407 (regOne!30307 r!7292) (regOne!30306 r!7292)))))))

(declare-fun b!5278083 () Bool)

(declare-fun res!2238542 () Bool)

(assert (=> b!5278083 (=> (not res!2238542) (not e!3282117))))

(assert (=> b!5278083 (= res!2238542 call!375729)))

(assert (=> b!5278083 (= e!3282119 e!3282117)))

(assert (= (and d!1698724 (not res!2238543)) b!5278079))

(assert (= (and b!5278079 c!914794) b!5278081))

(assert (= (and b!5278079 (not c!914794)) b!5278082))

(assert (= (and b!5278081 res!2238540) b!5278080))

(assert (= (and b!5278082 c!914793) b!5278083))

(assert (= (and b!5278082 (not c!914793)) b!5278077))

(assert (= (and b!5278083 res!2238542) b!5278075))

(assert (= (and b!5278077 (not res!2238544)) b!5278078))

(assert (= (and b!5278078 res!2238541) b!5278076))

(assert (= (or b!5278075 b!5278076) bm!375726))

(assert (= (or b!5278083 b!5278078) bm!375725))

(assert (= (or b!5278080 bm!375725) bm!375724))

(declare-fun m!6316302 () Bool)

(assert (=> bm!375724 m!6316302))

(declare-fun m!6316304 () Bool)

(assert (=> bm!375726 m!6316304))

(declare-fun m!6316306 () Bool)

(assert (=> b!5278081 m!6316306))

(assert (=> bm!375460 d!1698724))

(declare-fun bs!1223225 () Bool)

(declare-fun d!1698726 () Bool)

(assert (= bs!1223225 (and d!1698726 b!5277923)))

(declare-fun lambda!266492 () Int)

(assert (=> bs!1223225 (not (= lambda!266492 lambda!266480))))

(declare-fun bs!1223226 () Bool)

(assert (= bs!1223226 (and d!1698726 d!1698696)))

(assert (=> bs!1223226 (= lambda!266492 lambda!266490)))

(declare-fun bs!1223227 () Bool)

(assert (= bs!1223227 (and d!1698726 d!1697978)))

(assert (=> bs!1223227 (= lambda!266492 lambda!266336)))

(declare-fun bs!1223228 () Bool)

(assert (= bs!1223228 (and d!1698726 d!1698360)))

(assert (=> bs!1223228 (= lambda!266492 lambda!266430)))

(declare-fun bs!1223229 () Bool)

(assert (= bs!1223229 (and d!1698726 d!1698050)))

(assert (=> bs!1223229 (= lambda!266492 lambda!266361)))

(declare-fun bs!1223230 () Bool)

(assert (= bs!1223230 (and d!1698726 d!1698528)))

(assert (=> bs!1223230 (= lambda!266492 lambda!266466)))

(declare-fun bs!1223231 () Bool)

(assert (= bs!1223231 (and d!1698726 b!5277925)))

(assert (=> bs!1223231 (not (= lambda!266492 lambda!266481))))

(declare-fun bs!1223232 () Bool)

(assert (= bs!1223232 (and d!1698726 b!5275986)))

(assert (=> bs!1223232 (= lambda!266492 lambda!266289)))

(declare-fun bs!1223233 () Bool)

(assert (= bs!1223233 (and d!1698726 b!5277198)))

(assert (=> bs!1223233 (not (= lambda!266492 lambda!266424))))

(declare-fun bs!1223234 () Bool)

(assert (= bs!1223234 (and d!1698726 d!1698076)))

(assert (=> bs!1223234 (= lambda!266492 lambda!266374)))

(declare-fun bs!1223235 () Bool)

(assert (= bs!1223235 (and d!1698726 d!1698406)))

(assert (=> bs!1223235 (= lambda!266492 lambda!266450)))

(declare-fun bs!1223236 () Bool)

(assert (= bs!1223236 (and d!1698726 d!1698046)))

(assert (=> bs!1223236 (= lambda!266492 lambda!266360)))

(declare-fun bs!1223237 () Bool)

(assert (= bs!1223237 (and d!1698726 b!5277200)))

(assert (=> bs!1223237 (not (= lambda!266492 lambda!266426))))

(declare-fun bs!1223238 () Bool)

(assert (= bs!1223238 (and d!1698726 d!1698078)))

(assert (=> bs!1223238 (= lambda!266492 lambda!266377)))

(declare-fun b!5278084 () Bool)

(declare-fun e!3282127 () Regex!14897)

(declare-fun e!3282126 () Regex!14897)

(assert (=> b!5278084 (= e!3282127 e!3282126)))

(declare-fun c!914797 () Bool)

(assert (=> b!5278084 (= c!914797 ((_ is Cons!60866) (t!374189 (unfocusZipperList!339 zl!343))))))

(declare-fun b!5278085 () Bool)

(declare-fun e!3282124 () Bool)

(declare-fun lt!2157687 () Regex!14897)

(assert (=> b!5278085 (= e!3282124 (isEmptyLang!839 lt!2157687))))

(declare-fun b!5278086 () Bool)

(declare-fun e!3282128 () Bool)

(assert (=> b!5278086 (= e!3282128 (isUnion!271 lt!2157687))))

(declare-fun b!5278087 () Bool)

(assert (=> b!5278087 (= e!3282126 (Union!14897 (h!67314 (t!374189 (unfocusZipperList!339 zl!343))) (generalisedUnion!826 (t!374189 (t!374189 (unfocusZipperList!339 zl!343))))))))

(declare-fun b!5278088 () Bool)

(declare-fun e!3282125 () Bool)

(assert (=> b!5278088 (= e!3282125 (isEmpty!32819 (t!374189 (t!374189 (unfocusZipperList!339 zl!343)))))))

(declare-fun b!5278089 () Bool)

(assert (=> b!5278089 (= e!3282126 EmptyLang!14897)))

(declare-fun b!5278090 () Bool)

(assert (=> b!5278090 (= e!3282124 e!3282128)))

(declare-fun c!914795 () Bool)

(assert (=> b!5278090 (= c!914795 (isEmpty!32819 (tail!10408 (t!374189 (unfocusZipperList!339 zl!343)))))))

(declare-fun b!5278091 () Bool)

(assert (=> b!5278091 (= e!3282127 (h!67314 (t!374189 (unfocusZipperList!339 zl!343))))))

(declare-fun e!3282129 () Bool)

(assert (=> d!1698726 e!3282129))

(declare-fun res!2238545 () Bool)

(assert (=> d!1698726 (=> (not res!2238545) (not e!3282129))))

(assert (=> d!1698726 (= res!2238545 (validRegex!6633 lt!2157687))))

(assert (=> d!1698726 (= lt!2157687 e!3282127)))

(declare-fun c!914798 () Bool)

(assert (=> d!1698726 (= c!914798 e!3282125)))

(declare-fun res!2238546 () Bool)

(assert (=> d!1698726 (=> (not res!2238546) (not e!3282125))))

(assert (=> d!1698726 (= res!2238546 ((_ is Cons!60866) (t!374189 (unfocusZipperList!339 zl!343))))))

(assert (=> d!1698726 (forall!14305 (t!374189 (unfocusZipperList!339 zl!343)) lambda!266492)))

(assert (=> d!1698726 (= (generalisedUnion!826 (t!374189 (unfocusZipperList!339 zl!343))) lt!2157687)))

(declare-fun b!5278092 () Bool)

(assert (=> b!5278092 (= e!3282128 (= lt!2157687 (head!11311 (t!374189 (unfocusZipperList!339 zl!343)))))))

(declare-fun b!5278093 () Bool)

(assert (=> b!5278093 (= e!3282129 e!3282124)))

(declare-fun c!914796 () Bool)

(assert (=> b!5278093 (= c!914796 (isEmpty!32819 (t!374189 (unfocusZipperList!339 zl!343))))))

(assert (= (and d!1698726 res!2238546) b!5278088))

(assert (= (and d!1698726 c!914798) b!5278091))

(assert (= (and d!1698726 (not c!914798)) b!5278084))

(assert (= (and b!5278084 c!914797) b!5278087))

(assert (= (and b!5278084 (not c!914797)) b!5278089))

(assert (= (and d!1698726 res!2238545) b!5278093))

(assert (= (and b!5278093 c!914796) b!5278085))

(assert (= (and b!5278093 (not c!914796)) b!5278090))

(assert (= (and b!5278090 c!914795) b!5278092))

(assert (= (and b!5278090 (not c!914795)) b!5278086))

(declare-fun m!6316308 () Bool)

(assert (=> b!5278086 m!6316308))

(declare-fun m!6316310 () Bool)

(assert (=> d!1698726 m!6316310))

(declare-fun m!6316312 () Bool)

(assert (=> d!1698726 m!6316312))

(assert (=> b!5278093 m!6314948))

(declare-fun m!6316314 () Bool)

(assert (=> b!5278092 m!6316314))

(declare-fun m!6316316 () Bool)

(assert (=> b!5278088 m!6316316))

(declare-fun m!6316318 () Bool)

(assert (=> b!5278085 m!6316318))

(declare-fun m!6316320 () Bool)

(assert (=> b!5278090 m!6316320))

(assert (=> b!5278090 m!6316320))

(declare-fun m!6316322 () Bool)

(assert (=> b!5278090 m!6316322))

(declare-fun m!6316324 () Bool)

(assert (=> b!5278087 m!6316324))

(assert (=> b!5276792 d!1698726))

(declare-fun d!1698728 () Bool)

(declare-fun lt!2157688 () Int)

(assert (=> d!1698728 (> lt!2157688 0)))

(declare-fun e!3282133 () Int)

(assert (=> d!1698728 (= lt!2157688 e!3282133)))

(declare-fun c!914800 () Bool)

(assert (=> d!1698728 (= c!914800 ((_ is ElementMatch!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> d!1698728 (= (regexDepthTotal!8 (h!67314 (exprs!4781 (h!67315 zl!343)))) lt!2157688)))

(declare-fun b!5278094 () Bool)

(declare-fun e!3282130 () Int)

(declare-fun e!3282131 () Int)

(assert (=> b!5278094 (= e!3282130 e!3282131)))

(declare-fun c!914799 () Bool)

(assert (=> b!5278094 (= c!914799 ((_ is Concat!23742) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun bm!375727 () Bool)

(declare-fun call!375734 () Int)

(declare-fun c!914802 () Bool)

(assert (=> bm!375727 (= call!375734 (regexDepthTotal!8 (ite c!914802 (regTwo!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regTwo!30306 (h!67314 (exprs!4781 (h!67315 zl!343)))))))))

(declare-fun b!5278095 () Bool)

(assert (=> b!5278095 (= e!3282131 1)))

(declare-fun bm!375728 () Bool)

(declare-fun call!375732 () Int)

(declare-fun call!375733 () Int)

(assert (=> bm!375728 (= call!375732 call!375733)))

(declare-fun b!5278096 () Bool)

(declare-fun e!3282132 () Int)

(assert (=> b!5278096 (= e!3282132 (+ 1 call!375733))))

(declare-fun b!5278097 () Bool)

(assert (=> b!5278097 (= e!3282133 1)))

(declare-fun b!5278098 () Bool)

(assert (=> b!5278098 (= e!3282131 (+ 1 call!375732 call!375734))))

(declare-fun bm!375729 () Bool)

(declare-fun c!914801 () Bool)

(assert (=> bm!375729 (= call!375733 (regexDepthTotal!8 (ite c!914801 (reg!15226 (h!67314 (exprs!4781 (h!67315 zl!343)))) (ite c!914802 (regOne!30307 (h!67314 (exprs!4781 (h!67315 zl!343)))) (regOne!30306 (h!67314 (exprs!4781 (h!67315 zl!343))))))))))

(declare-fun b!5278099 () Bool)

(assert (=> b!5278099 (= c!914802 ((_ is Union!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> b!5278099 (= e!3282132 e!3282130)))

(declare-fun b!5278100 () Bool)

(assert (=> b!5278100 (= e!3282133 e!3282132)))

(assert (=> b!5278100 (= c!914801 ((_ is Star!14897) (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun b!5278101 () Bool)

(assert (=> b!5278101 (= e!3282130 (+ 1 call!375732 call!375734))))

(assert (= (and d!1698728 c!914800) b!5278097))

(assert (= (and d!1698728 (not c!914800)) b!5278100))

(assert (= (and b!5278100 c!914801) b!5278096))

(assert (= (and b!5278100 (not c!914801)) b!5278099))

(assert (= (and b!5278099 c!914802) b!5278101))

(assert (= (and b!5278099 (not c!914802)) b!5278094))

(assert (= (and b!5278094 c!914799) b!5278098))

(assert (= (and b!5278094 (not c!914799)) b!5278095))

(assert (= (or b!5278101 b!5278098) bm!375727))

(assert (= (or b!5278101 b!5278098) bm!375728))

(assert (= (or b!5278096 bm!375728) bm!375729))

(declare-fun m!6316326 () Bool)

(assert (=> bm!375727 m!6316326))

(declare-fun m!6316328 () Bool)

(assert (=> bm!375729 m!6316328))

(assert (=> b!5276572 d!1698728))

(declare-fun d!1698730 () Bool)

(declare-fun lt!2157689 () Int)

(assert (=> d!1698730 (>= lt!2157689 0)))

(declare-fun e!3282134 () Int)

(assert (=> d!1698730 (= lt!2157689 e!3282134)))

(declare-fun c!914803 () Bool)

(assert (=> d!1698730 (= c!914803 ((_ is Cons!60866) (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343)))))))))

(assert (=> d!1698730 (= (contextDepthTotal!38 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343))))) lt!2157689)))

(declare-fun b!5278102 () Bool)

(assert (=> b!5278102 (= e!3282134 (+ (regexDepthTotal!8 (h!67314 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343))))))) (contextDepthTotal!38 (Context!8563 (t!374189 (exprs!4781 (Context!8563 (t!374189 (exprs!4781 (h!67315 zl!343))))))))))))

(declare-fun b!5278103 () Bool)

(assert (=> b!5278103 (= e!3282134 1)))

(assert (= (and d!1698730 c!914803) b!5278102))

(assert (= (and d!1698730 (not c!914803)) b!5278103))

(declare-fun m!6316330 () Bool)

(assert (=> b!5278102 m!6316330))

(declare-fun m!6316332 () Bool)

(assert (=> b!5278102 m!6316332))

(assert (=> b!5276572 d!1698730))

(assert (=> d!1697966 d!1698356))

(declare-fun d!1698732 () Bool)

(assert (=> d!1698732 true))

(assert (=> d!1698732 true))

(declare-fun res!2238547 () Bool)

(assert (=> d!1698732 (= (choose!39377 lambda!266286) res!2238547)))

(assert (=> d!1698068 d!1698732))

(declare-fun d!1698734 () Bool)

(assert (=> d!1698734 (= (isEmpty!32819 (exprs!4781 (h!67315 zl!343))) ((_ is Nil!60866) (exprs!4781 (h!67315 zl!343))))))

(assert (=> b!5276527 d!1698734))

(declare-fun d!1698736 () Bool)

(declare-fun e!3282135 () Bool)

(assert (=> d!1698736 e!3282135))

(declare-fun res!2238549 () Bool)

(assert (=> d!1698736 (=> (not res!2238549) (not e!3282135))))

(declare-fun lt!2157690 () List!60992)

(assert (=> d!1698736 (= res!2238549 (= (content!10834 lt!2157690) ((_ map or) (content!10834 (_1!35399 (get!20930 lt!2157555))) (content!10834 (_2!35399 (get!20930 lt!2157555))))))))

(declare-fun e!3282136 () List!60992)

(assert (=> d!1698736 (= lt!2157690 e!3282136)))

(declare-fun c!914804 () Bool)

(assert (=> d!1698736 (= c!914804 ((_ is Nil!60868) (_1!35399 (get!20930 lt!2157555))))))

(assert (=> d!1698736 (= (++!13276 (_1!35399 (get!20930 lt!2157555)) (_2!35399 (get!20930 lt!2157555))) lt!2157690)))

(declare-fun b!5278105 () Bool)

(assert (=> b!5278105 (= e!3282136 (Cons!60868 (h!67316 (_1!35399 (get!20930 lt!2157555))) (++!13276 (t!374191 (_1!35399 (get!20930 lt!2157555))) (_2!35399 (get!20930 lt!2157555)))))))

(declare-fun b!5278106 () Bool)

(declare-fun res!2238548 () Bool)

(assert (=> b!5278106 (=> (not res!2238548) (not e!3282135))))

(assert (=> b!5278106 (= res!2238548 (= (size!39752 lt!2157690) (+ (size!39752 (_1!35399 (get!20930 lt!2157555))) (size!39752 (_2!35399 (get!20930 lt!2157555))))))))

(declare-fun b!5278107 () Bool)

(assert (=> b!5278107 (= e!3282135 (or (not (= (_2!35399 (get!20930 lt!2157555)) Nil!60868)) (= lt!2157690 (_1!35399 (get!20930 lt!2157555)))))))

(declare-fun b!5278104 () Bool)

(assert (=> b!5278104 (= e!3282136 (_2!35399 (get!20930 lt!2157555)))))

(assert (= (and d!1698736 c!914804) b!5278104))

(assert (= (and d!1698736 (not c!914804)) b!5278105))

(assert (= (and d!1698736 res!2238549) b!5278106))

(assert (= (and b!5278106 res!2238548) b!5278107))

(declare-fun m!6316334 () Bool)

(assert (=> d!1698736 m!6316334))

(declare-fun m!6316336 () Bool)

(assert (=> d!1698736 m!6316336))

(declare-fun m!6316338 () Bool)

(assert (=> d!1698736 m!6316338))

(declare-fun m!6316340 () Bool)

(assert (=> b!5278105 m!6316340))

(declare-fun m!6316342 () Bool)

(assert (=> b!5278106 m!6316342))

(declare-fun m!6316344 () Bool)

(assert (=> b!5278106 m!6316344))

(declare-fun m!6316346 () Bool)

(assert (=> b!5278106 m!6316346))

(assert (=> b!5276753 d!1698736))

(assert (=> b!5276753 d!1698454))

(declare-fun d!1698738 () Bool)

(declare-fun c!914807 () Bool)

(assert (=> d!1698738 (= c!914807 ((_ is Nil!60867) lt!2157572))))

(declare-fun e!3282139 () (InoxSet Context!8562))

(assert (=> d!1698738 (= (content!10833 lt!2157572) e!3282139)))

(declare-fun b!5278112 () Bool)

(assert (=> b!5278112 (= e!3282139 ((as const (Array Context!8562 Bool)) false))))

(declare-fun b!5278113 () Bool)

(assert (=> b!5278113 (= e!3282139 ((_ map or) (store ((as const (Array Context!8562 Bool)) false) (h!67315 lt!2157572) true) (content!10833 (t!374190 lt!2157572))))))

(assert (= (and d!1698738 c!914807) b!5278112))

(assert (= (and d!1698738 (not c!914807)) b!5278113))

(declare-fun m!6316348 () Bool)

(assert (=> b!5278113 m!6316348))

(declare-fun m!6316350 () Bool)

(assert (=> b!5278113 m!6316350))

(assert (=> b!5276809 d!1698738))

(declare-fun d!1698740 () Bool)

(assert (=> d!1698740 (= (head!11311 (exprs!4781 (h!67315 zl!343))) (h!67314 (exprs!4781 (h!67315 zl!343))))))

(assert (=> b!5276531 d!1698740))

(declare-fun bs!1223239 () Bool)

(declare-fun d!1698742 () Bool)

(assert (= bs!1223239 (and d!1698742 d!1698278)))

(declare-fun lambda!266493 () Int)

(assert (=> bs!1223239 (not (= lambda!266493 lambda!266415))))

(declare-fun bs!1223240 () Bool)

(assert (= bs!1223240 (and d!1698742 b!5277928)))

(assert (=> bs!1223240 (not (= lambda!266493 lambda!266483))))

(declare-fun bs!1223241 () Bool)

(assert (= bs!1223241 (and d!1698742 b!5277098)))

(assert (=> bs!1223241 (not (= lambda!266493 lambda!266410))))

(declare-fun bs!1223242 () Bool)

(assert (= bs!1223242 (and d!1698742 b!5277930)))

(assert (=> bs!1223242 (not (= lambda!266493 lambda!266484))))

(declare-fun bs!1223243 () Bool)

(assert (= bs!1223243 (and d!1698742 b!5276582)))

(assert (=> bs!1223243 (not (= lambda!266493 lambda!266345))))

(declare-fun bs!1223244 () Bool)

(assert (= bs!1223244 (and d!1698742 d!1698560)))

(assert (=> bs!1223244 (= lambda!266493 lambda!266470)))

(declare-fun bs!1223245 () Bool)

(assert (= bs!1223245 (and d!1698742 d!1698370)))

(assert (=> bs!1223245 (= lambda!266493 lambda!266435)))

(declare-fun bs!1223246 () Bool)

(assert (= bs!1223246 (and d!1698742 d!1698630)))

(assert (=> bs!1223246 (= lambda!266493 lambda!266475)))

(declare-fun bs!1223247 () Bool)

(assert (= bs!1223247 (and d!1698742 b!5276585)))

(assert (=> bs!1223247 (not (= lambda!266493 lambda!266347))))

(declare-fun bs!1223248 () Bool)

(assert (= bs!1223248 (and d!1698742 d!1698676)))

(assert (=> bs!1223248 (= lambda!266493 lambda!266488)))

(declare-fun bs!1223249 () Bool)

(assert (= bs!1223249 (and d!1698742 d!1698550)))

(assert (=> bs!1223249 (= lambda!266493 lambda!266468)))

(declare-fun bs!1223250 () Bool)

(assert (= bs!1223250 (and d!1698742 d!1698642)))

(assert (=> bs!1223250 (= lambda!266493 lambda!266479)))

(declare-fun bs!1223251 () Bool)

(assert (= bs!1223251 (and d!1698742 d!1698654)))

(assert (=> bs!1223251 (not (= lambda!266493 lambda!266485))))

(declare-fun bs!1223252 () Bool)

(assert (= bs!1223252 (and d!1698742 d!1698668)))

(assert (=> bs!1223252 (= lambda!266493 lambda!266487)))

(declare-fun bs!1223253 () Bool)

(assert (= bs!1223253 (and d!1698742 b!5276587)))

(assert (=> bs!1223253 (not (= lambda!266493 lambda!266348))))

(declare-fun bs!1223254 () Bool)

(assert (= bs!1223254 (and d!1698742 d!1698656)))

(assert (=> bs!1223254 (= lambda!266493 lambda!266486)))

(declare-fun bs!1223255 () Bool)

(assert (= bs!1223255 (and d!1698742 b!5276580)))

(assert (=> bs!1223255 (not (= lambda!266493 lambda!266344))))

(declare-fun bs!1223256 () Bool)

(assert (= bs!1223256 (and d!1698742 b!5277100)))

(assert (=> bs!1223256 (not (= lambda!266493 lambda!266411))))

(declare-fun bs!1223257 () Bool)

(assert (= bs!1223257 (and d!1698742 d!1698622)))

(assert (=> bs!1223257 (= lambda!266493 lambda!266472)))

(assert (=> d!1698742 (= (nullableZipper!1296 lt!2157431) (exists!1999 lt!2157431 lambda!266493))))

(declare-fun bs!1223258 () Bool)

(assert (= bs!1223258 d!1698742))

(declare-fun m!6316352 () Bool)

(assert (=> bs!1223258 m!6316352))

(assert (=> b!5276677 d!1698742))

(declare-fun b!5278117 () Bool)

(declare-fun e!3282140 () Bool)

(declare-fun tp!1474649 () Bool)

(declare-fun tp!1474646 () Bool)

(assert (=> b!5278117 (= e!3282140 (and tp!1474649 tp!1474646))))

(assert (=> b!5276827 (= tp!1474425 e!3282140)))

(declare-fun b!5278116 () Bool)

(declare-fun tp!1474650 () Bool)

(assert (=> b!5278116 (= e!3282140 tp!1474650)))

(declare-fun b!5278115 () Bool)

(declare-fun tp!1474648 () Bool)

(declare-fun tp!1474647 () Bool)

(assert (=> b!5278115 (= e!3282140 (and tp!1474648 tp!1474647))))

(declare-fun b!5278114 () Bool)

(assert (=> b!5278114 (= e!3282140 tp_is_empty!39047)))

(assert (= (and b!5276827 ((_ is ElementMatch!14897) (reg!15226 (regOne!30306 r!7292)))) b!5278114))

(assert (= (and b!5276827 ((_ is Concat!23742) (reg!15226 (regOne!30306 r!7292)))) b!5278115))

(assert (= (and b!5276827 ((_ is Star!14897) (reg!15226 (regOne!30306 r!7292)))) b!5278116))

(assert (= (and b!5276827 ((_ is Union!14897) (reg!15226 (regOne!30306 r!7292)))) b!5278117))

(declare-fun b!5278121 () Bool)

(declare-fun e!3282141 () Bool)

(declare-fun tp!1474654 () Bool)

(declare-fun tp!1474651 () Bool)

(assert (=> b!5278121 (= e!3282141 (and tp!1474654 tp!1474651))))

(assert (=> b!5276848 (= tp!1474447 e!3282141)))

(declare-fun b!5278120 () Bool)

(declare-fun tp!1474655 () Bool)

(assert (=> b!5278120 (= e!3282141 tp!1474655)))

(declare-fun b!5278119 () Bool)

(declare-fun tp!1474653 () Bool)

(declare-fun tp!1474652 () Bool)

(assert (=> b!5278119 (= e!3282141 (and tp!1474653 tp!1474652))))

(declare-fun b!5278118 () Bool)

(assert (=> b!5278118 (= e!3282141 tp_is_empty!39047)))

(assert (= (and b!5276848 ((_ is ElementMatch!14897) (reg!15226 (regOne!30307 r!7292)))) b!5278118))

(assert (= (and b!5276848 ((_ is Concat!23742) (reg!15226 (regOne!30307 r!7292)))) b!5278119))

(assert (= (and b!5276848 ((_ is Star!14897) (reg!15226 (regOne!30307 r!7292)))) b!5278120))

(assert (= (and b!5276848 ((_ is Union!14897) (reg!15226 (regOne!30307 r!7292)))) b!5278121))

(declare-fun b!5278125 () Bool)

(declare-fun e!3282142 () Bool)

(declare-fun tp!1474659 () Bool)

(declare-fun tp!1474656 () Bool)

(assert (=> b!5278125 (= e!3282142 (and tp!1474659 tp!1474656))))

(assert (=> b!5276863 (= tp!1474464 e!3282142)))

(declare-fun b!5278124 () Bool)

(declare-fun tp!1474660 () Bool)

(assert (=> b!5278124 (= e!3282142 tp!1474660)))

(declare-fun b!5278123 () Bool)

(declare-fun tp!1474658 () Bool)

(declare-fun tp!1474657 () Bool)

(assert (=> b!5278123 (= e!3282142 (and tp!1474658 tp!1474657))))

(declare-fun b!5278122 () Bool)

(assert (=> b!5278122 (= e!3282142 tp_is_empty!39047)))

(assert (= (and b!5276863 ((_ is ElementMatch!14897) (regOne!30307 (reg!15226 r!7292)))) b!5278122))

(assert (= (and b!5276863 ((_ is Concat!23742) (regOne!30307 (reg!15226 r!7292)))) b!5278123))

(assert (= (and b!5276863 ((_ is Star!14897) (regOne!30307 (reg!15226 r!7292)))) b!5278124))

(assert (= (and b!5276863 ((_ is Union!14897) (regOne!30307 (reg!15226 r!7292)))) b!5278125))

(declare-fun b!5278129 () Bool)

(declare-fun e!3282143 () Bool)

(declare-fun tp!1474664 () Bool)

(declare-fun tp!1474661 () Bool)

(assert (=> b!5278129 (= e!3282143 (and tp!1474664 tp!1474661))))

(assert (=> b!5276863 (= tp!1474461 e!3282143)))

(declare-fun b!5278128 () Bool)

(declare-fun tp!1474665 () Bool)

(assert (=> b!5278128 (= e!3282143 tp!1474665)))

(declare-fun b!5278127 () Bool)

(declare-fun tp!1474663 () Bool)

(declare-fun tp!1474662 () Bool)

(assert (=> b!5278127 (= e!3282143 (and tp!1474663 tp!1474662))))

(declare-fun b!5278126 () Bool)

(assert (=> b!5278126 (= e!3282143 tp_is_empty!39047)))

(assert (= (and b!5276863 ((_ is ElementMatch!14897) (regTwo!30307 (reg!15226 r!7292)))) b!5278126))

(assert (= (and b!5276863 ((_ is Concat!23742) (regTwo!30307 (reg!15226 r!7292)))) b!5278127))

(assert (= (and b!5276863 ((_ is Star!14897) (regTwo!30307 (reg!15226 r!7292)))) b!5278128))

(assert (= (and b!5276863 ((_ is Union!14897) (regTwo!30307 (reg!15226 r!7292)))) b!5278129))

(declare-fun b!5278133 () Bool)

(declare-fun e!3282144 () Bool)

(declare-fun tp!1474669 () Bool)

(declare-fun tp!1474666 () Bool)

(assert (=> b!5278133 (= e!3282144 (and tp!1474669 tp!1474666))))

(assert (=> b!5276826 (= tp!1474423 e!3282144)))

(declare-fun b!5278132 () Bool)

(declare-fun tp!1474670 () Bool)

(assert (=> b!5278132 (= e!3282144 tp!1474670)))

(declare-fun b!5278131 () Bool)

(declare-fun tp!1474668 () Bool)

(declare-fun tp!1474667 () Bool)

(assert (=> b!5278131 (= e!3282144 (and tp!1474668 tp!1474667))))

(declare-fun b!5278130 () Bool)

(assert (=> b!5278130 (= e!3282144 tp_is_empty!39047)))

(assert (= (and b!5276826 ((_ is ElementMatch!14897) (regOne!30306 (regOne!30306 r!7292)))) b!5278130))

(assert (= (and b!5276826 ((_ is Concat!23742) (regOne!30306 (regOne!30306 r!7292)))) b!5278131))

(assert (= (and b!5276826 ((_ is Star!14897) (regOne!30306 (regOne!30306 r!7292)))) b!5278132))

(assert (= (and b!5276826 ((_ is Union!14897) (regOne!30306 (regOne!30306 r!7292)))) b!5278133))

(declare-fun b!5278137 () Bool)

(declare-fun e!3282145 () Bool)

(declare-fun tp!1474674 () Bool)

(declare-fun tp!1474671 () Bool)

(assert (=> b!5278137 (= e!3282145 (and tp!1474674 tp!1474671))))

(assert (=> b!5276826 (= tp!1474422 e!3282145)))

(declare-fun b!5278136 () Bool)

(declare-fun tp!1474675 () Bool)

(assert (=> b!5278136 (= e!3282145 tp!1474675)))

(declare-fun b!5278135 () Bool)

(declare-fun tp!1474673 () Bool)

(declare-fun tp!1474672 () Bool)

(assert (=> b!5278135 (= e!3282145 (and tp!1474673 tp!1474672))))

(declare-fun b!5278134 () Bool)

(assert (=> b!5278134 (= e!3282145 tp_is_empty!39047)))

(assert (= (and b!5276826 ((_ is ElementMatch!14897) (regTwo!30306 (regOne!30306 r!7292)))) b!5278134))

(assert (= (and b!5276826 ((_ is Concat!23742) (regTwo!30306 (regOne!30306 r!7292)))) b!5278135))

(assert (= (and b!5276826 ((_ is Star!14897) (regTwo!30306 (regOne!30306 r!7292)))) b!5278136))

(assert (= (and b!5276826 ((_ is Union!14897) (regTwo!30306 (regOne!30306 r!7292)))) b!5278137))

(declare-fun b!5278141 () Bool)

(declare-fun e!3282146 () Bool)

(declare-fun tp!1474679 () Bool)

(declare-fun tp!1474676 () Bool)

(assert (=> b!5278141 (= e!3282146 (and tp!1474679 tp!1474676))))

(assert (=> b!5276847 (= tp!1474445 e!3282146)))

(declare-fun b!5278140 () Bool)

(declare-fun tp!1474680 () Bool)

(assert (=> b!5278140 (= e!3282146 tp!1474680)))

(declare-fun b!5278139 () Bool)

(declare-fun tp!1474678 () Bool)

(declare-fun tp!1474677 () Bool)

(assert (=> b!5278139 (= e!3282146 (and tp!1474678 tp!1474677))))

(declare-fun b!5278138 () Bool)

(assert (=> b!5278138 (= e!3282146 tp_is_empty!39047)))

(assert (= (and b!5276847 ((_ is ElementMatch!14897) (regOne!30306 (regOne!30307 r!7292)))) b!5278138))

(assert (= (and b!5276847 ((_ is Concat!23742) (regOne!30306 (regOne!30307 r!7292)))) b!5278139))

(assert (= (and b!5276847 ((_ is Star!14897) (regOne!30306 (regOne!30307 r!7292)))) b!5278140))

(assert (= (and b!5276847 ((_ is Union!14897) (regOne!30306 (regOne!30307 r!7292)))) b!5278141))

(declare-fun b!5278145 () Bool)

(declare-fun e!3282147 () Bool)

(declare-fun tp!1474684 () Bool)

(declare-fun tp!1474681 () Bool)

(assert (=> b!5278145 (= e!3282147 (and tp!1474684 tp!1474681))))

(assert (=> b!5276847 (= tp!1474444 e!3282147)))

(declare-fun b!5278144 () Bool)

(declare-fun tp!1474685 () Bool)

(assert (=> b!5278144 (= e!3282147 tp!1474685)))

(declare-fun b!5278143 () Bool)

(declare-fun tp!1474683 () Bool)

(declare-fun tp!1474682 () Bool)

(assert (=> b!5278143 (= e!3282147 (and tp!1474683 tp!1474682))))

(declare-fun b!5278142 () Bool)

(assert (=> b!5278142 (= e!3282147 tp_is_empty!39047)))

(assert (= (and b!5276847 ((_ is ElementMatch!14897) (regTwo!30306 (regOne!30307 r!7292)))) b!5278142))

(assert (= (and b!5276847 ((_ is Concat!23742) (regTwo!30306 (regOne!30307 r!7292)))) b!5278143))

(assert (= (and b!5276847 ((_ is Star!14897) (regTwo!30306 (regOne!30307 r!7292)))) b!5278144))

(assert (= (and b!5276847 ((_ is Union!14897) (regTwo!30306 (regOne!30307 r!7292)))) b!5278145))

(declare-fun condSetEmpty!33815 () Bool)

(assert (=> setNonEmpty!33803 (= condSetEmpty!33815 (= setRest!33803 ((as const (Array Context!8562 Bool)) false)))))

(declare-fun setRes!33815 () Bool)

(assert (=> setNonEmpty!33803 (= tp!1474458 setRes!33815)))

(declare-fun setIsEmpty!33815 () Bool)

(assert (=> setIsEmpty!33815 setRes!33815))

(declare-fun setElem!33815 () Context!8562)

(declare-fun e!3282148 () Bool)

(declare-fun tp!1474687 () Bool)

(declare-fun setNonEmpty!33815 () Bool)

(assert (=> setNonEmpty!33815 (= setRes!33815 (and tp!1474687 (inv!80489 setElem!33815) e!3282148))))

(declare-fun setRest!33815 () (InoxSet Context!8562))

(assert (=> setNonEmpty!33815 (= setRest!33803 ((_ map or) (store ((as const (Array Context!8562 Bool)) false) setElem!33815 true) setRest!33815))))

(declare-fun b!5278146 () Bool)

(declare-fun tp!1474686 () Bool)

(assert (=> b!5278146 (= e!3282148 tp!1474686)))

(assert (= (and setNonEmpty!33803 condSetEmpty!33815) setIsEmpty!33815))

(assert (= (and setNonEmpty!33803 (not condSetEmpty!33815)) setNonEmpty!33815))

(assert (= setNonEmpty!33815 b!5278146))

(declare-fun m!6316354 () Bool)

(assert (=> setNonEmpty!33815 m!6316354))

(declare-fun b!5278150 () Bool)

(declare-fun e!3282149 () Bool)

(declare-fun tp!1474691 () Bool)

(declare-fun tp!1474688 () Bool)

(assert (=> b!5278150 (= e!3282149 (and tp!1474691 tp!1474688))))

(assert (=> b!5276828 (= tp!1474424 e!3282149)))

(declare-fun b!5278149 () Bool)

(declare-fun tp!1474692 () Bool)

(assert (=> b!5278149 (= e!3282149 tp!1474692)))

(declare-fun b!5278148 () Bool)

(declare-fun tp!1474690 () Bool)

(declare-fun tp!1474689 () Bool)

(assert (=> b!5278148 (= e!3282149 (and tp!1474690 tp!1474689))))

(declare-fun b!5278147 () Bool)

(assert (=> b!5278147 (= e!3282149 tp_is_empty!39047)))

(assert (= (and b!5276828 ((_ is ElementMatch!14897) (regOne!30307 (regOne!30306 r!7292)))) b!5278147))

(assert (= (and b!5276828 ((_ is Concat!23742) (regOne!30307 (regOne!30306 r!7292)))) b!5278148))

(assert (= (and b!5276828 ((_ is Star!14897) (regOne!30307 (regOne!30306 r!7292)))) b!5278149))

(assert (= (and b!5276828 ((_ is Union!14897) (regOne!30307 (regOne!30306 r!7292)))) b!5278150))

(declare-fun b!5278154 () Bool)

(declare-fun e!3282150 () Bool)

(declare-fun tp!1474696 () Bool)

(declare-fun tp!1474693 () Bool)

(assert (=> b!5278154 (= e!3282150 (and tp!1474696 tp!1474693))))

(assert (=> b!5276828 (= tp!1474421 e!3282150)))

(declare-fun b!5278153 () Bool)

(declare-fun tp!1474697 () Bool)

(assert (=> b!5278153 (= e!3282150 tp!1474697)))

(declare-fun b!5278152 () Bool)

(declare-fun tp!1474695 () Bool)

(declare-fun tp!1474694 () Bool)

(assert (=> b!5278152 (= e!3282150 (and tp!1474695 tp!1474694))))

(declare-fun b!5278151 () Bool)

(assert (=> b!5278151 (= e!3282150 tp_is_empty!39047)))

(assert (= (and b!5276828 ((_ is ElementMatch!14897) (regTwo!30307 (regOne!30306 r!7292)))) b!5278151))

(assert (= (and b!5276828 ((_ is Concat!23742) (regTwo!30307 (regOne!30306 r!7292)))) b!5278152))

(assert (= (and b!5276828 ((_ is Star!14897) (regTwo!30307 (regOne!30306 r!7292)))) b!5278153))

(assert (= (and b!5276828 ((_ is Union!14897) (regTwo!30307 (regOne!30306 r!7292)))) b!5278154))

(declare-fun b!5278158 () Bool)

(declare-fun e!3282151 () Bool)

(declare-fun tp!1474701 () Bool)

(declare-fun tp!1474698 () Bool)

(assert (=> b!5278158 (= e!3282151 (and tp!1474701 tp!1474698))))

(assert (=> b!5276849 (= tp!1474446 e!3282151)))

(declare-fun b!5278157 () Bool)

(declare-fun tp!1474702 () Bool)

(assert (=> b!5278157 (= e!3282151 tp!1474702)))

(declare-fun b!5278156 () Bool)

(declare-fun tp!1474700 () Bool)

(declare-fun tp!1474699 () Bool)

(assert (=> b!5278156 (= e!3282151 (and tp!1474700 tp!1474699))))

(declare-fun b!5278155 () Bool)

(assert (=> b!5278155 (= e!3282151 tp_is_empty!39047)))

(assert (= (and b!5276849 ((_ is ElementMatch!14897) (regOne!30307 (regOne!30307 r!7292)))) b!5278155))

(assert (= (and b!5276849 ((_ is Concat!23742) (regOne!30307 (regOne!30307 r!7292)))) b!5278156))

(assert (= (and b!5276849 ((_ is Star!14897) (regOne!30307 (regOne!30307 r!7292)))) b!5278157))

(assert (= (and b!5276849 ((_ is Union!14897) (regOne!30307 (regOne!30307 r!7292)))) b!5278158))

(declare-fun b!5278162 () Bool)

(declare-fun e!3282152 () Bool)

(declare-fun tp!1474706 () Bool)

(declare-fun tp!1474703 () Bool)

(assert (=> b!5278162 (= e!3282152 (and tp!1474706 tp!1474703))))

(assert (=> b!5276849 (= tp!1474443 e!3282152)))

(declare-fun b!5278161 () Bool)

(declare-fun tp!1474707 () Bool)

(assert (=> b!5278161 (= e!3282152 tp!1474707)))

(declare-fun b!5278160 () Bool)

(declare-fun tp!1474705 () Bool)

(declare-fun tp!1474704 () Bool)

(assert (=> b!5278160 (= e!3282152 (and tp!1474705 tp!1474704))))

(declare-fun b!5278159 () Bool)

(assert (=> b!5278159 (= e!3282152 tp_is_empty!39047)))

(assert (= (and b!5276849 ((_ is ElementMatch!14897) (regTwo!30307 (regOne!30307 r!7292)))) b!5278159))

(assert (= (and b!5276849 ((_ is Concat!23742) (regTwo!30307 (regOne!30307 r!7292)))) b!5278160))

(assert (= (and b!5276849 ((_ is Star!14897) (regTwo!30307 (regOne!30307 r!7292)))) b!5278161))

(assert (= (and b!5276849 ((_ is Union!14897) (regTwo!30307 (regOne!30307 r!7292)))) b!5278162))

(declare-fun b!5278166 () Bool)

(declare-fun e!3282153 () Bool)

(declare-fun tp!1474711 () Bool)

(declare-fun tp!1474708 () Bool)

(assert (=> b!5278166 (= e!3282153 (and tp!1474711 tp!1474708))))

(assert (=> b!5276861 (= tp!1474463 e!3282153)))

(declare-fun b!5278165 () Bool)

(declare-fun tp!1474712 () Bool)

(assert (=> b!5278165 (= e!3282153 tp!1474712)))

(declare-fun b!5278164 () Bool)

(declare-fun tp!1474710 () Bool)

(declare-fun tp!1474709 () Bool)

(assert (=> b!5278164 (= e!3282153 (and tp!1474710 tp!1474709))))

(declare-fun b!5278163 () Bool)

(assert (=> b!5278163 (= e!3282153 tp_is_empty!39047)))

(assert (= (and b!5276861 ((_ is ElementMatch!14897) (regOne!30306 (reg!15226 r!7292)))) b!5278163))

(assert (= (and b!5276861 ((_ is Concat!23742) (regOne!30306 (reg!15226 r!7292)))) b!5278164))

(assert (= (and b!5276861 ((_ is Star!14897) (regOne!30306 (reg!15226 r!7292)))) b!5278165))

(assert (= (and b!5276861 ((_ is Union!14897) (regOne!30306 (reg!15226 r!7292)))) b!5278166))

(declare-fun b!5278170 () Bool)

(declare-fun e!3282154 () Bool)

(declare-fun tp!1474716 () Bool)

(declare-fun tp!1474713 () Bool)

(assert (=> b!5278170 (= e!3282154 (and tp!1474716 tp!1474713))))

(assert (=> b!5276861 (= tp!1474462 e!3282154)))

(declare-fun b!5278169 () Bool)

(declare-fun tp!1474717 () Bool)

(assert (=> b!5278169 (= e!3282154 tp!1474717)))

(declare-fun b!5278168 () Bool)

(declare-fun tp!1474715 () Bool)

(declare-fun tp!1474714 () Bool)

(assert (=> b!5278168 (= e!3282154 (and tp!1474715 tp!1474714))))

(declare-fun b!5278167 () Bool)

(assert (=> b!5278167 (= e!3282154 tp_is_empty!39047)))

(assert (= (and b!5276861 ((_ is ElementMatch!14897) (regTwo!30306 (reg!15226 r!7292)))) b!5278167))

(assert (= (and b!5276861 ((_ is Concat!23742) (regTwo!30306 (reg!15226 r!7292)))) b!5278168))

(assert (= (and b!5276861 ((_ is Star!14897) (regTwo!30306 (reg!15226 r!7292)))) b!5278169))

(assert (= (and b!5276861 ((_ is Union!14897) (regTwo!30306 (reg!15226 r!7292)))) b!5278170))

(declare-fun b!5278174 () Bool)

(declare-fun e!3282155 () Bool)

(declare-fun tp!1474721 () Bool)

(declare-fun tp!1474718 () Bool)

(assert (=> b!5278174 (= e!3282155 (and tp!1474721 tp!1474718))))

(assert (=> b!5276862 (= tp!1474465 e!3282155)))

(declare-fun b!5278173 () Bool)

(declare-fun tp!1474722 () Bool)

(assert (=> b!5278173 (= e!3282155 tp!1474722)))

(declare-fun b!5278172 () Bool)

(declare-fun tp!1474720 () Bool)

(declare-fun tp!1474719 () Bool)

(assert (=> b!5278172 (= e!3282155 (and tp!1474720 tp!1474719))))

(declare-fun b!5278171 () Bool)

(assert (=> b!5278171 (= e!3282155 tp_is_empty!39047)))

(assert (= (and b!5276862 ((_ is ElementMatch!14897) (reg!15226 (reg!15226 r!7292)))) b!5278171))

(assert (= (and b!5276862 ((_ is Concat!23742) (reg!15226 (reg!15226 r!7292)))) b!5278172))

(assert (= (and b!5276862 ((_ is Star!14897) (reg!15226 (reg!15226 r!7292)))) b!5278173))

(assert (= (and b!5276862 ((_ is Union!14897) (reg!15226 (reg!15226 r!7292)))) b!5278174))

(declare-fun b!5278178 () Bool)

(declare-fun e!3282156 () Bool)

(declare-fun tp!1474726 () Bool)

(declare-fun tp!1474723 () Bool)

(assert (=> b!5278178 (= e!3282156 (and tp!1474726 tp!1474723))))

(assert (=> b!5276859 (= tp!1474459 e!3282156)))

(declare-fun b!5278177 () Bool)

(declare-fun tp!1474727 () Bool)

(assert (=> b!5278177 (= e!3282156 tp!1474727)))

(declare-fun b!5278176 () Bool)

(declare-fun tp!1474725 () Bool)

(declare-fun tp!1474724 () Bool)

(assert (=> b!5278176 (= e!3282156 (and tp!1474725 tp!1474724))))

(declare-fun b!5278175 () Bool)

(assert (=> b!5278175 (= e!3282156 tp_is_empty!39047)))

(assert (= (and b!5276859 ((_ is ElementMatch!14897) (h!67314 (exprs!4781 (h!67315 zl!343))))) b!5278175))

(assert (= (and b!5276859 ((_ is Concat!23742) (h!67314 (exprs!4781 (h!67315 zl!343))))) b!5278176))

(assert (= (and b!5276859 ((_ is Star!14897) (h!67314 (exprs!4781 (h!67315 zl!343))))) b!5278177))

(assert (= (and b!5276859 ((_ is Union!14897) (h!67314 (exprs!4781 (h!67315 zl!343))))) b!5278178))

(declare-fun b!5278179 () Bool)

(declare-fun e!3282157 () Bool)

(declare-fun tp!1474728 () Bool)

(declare-fun tp!1474729 () Bool)

(assert (=> b!5278179 (= e!3282157 (and tp!1474728 tp!1474729))))

(assert (=> b!5276859 (= tp!1474460 e!3282157)))

(assert (= (and b!5276859 ((_ is Cons!60866) (t!374189 (exprs!4781 (h!67315 zl!343))))) b!5278179))

(declare-fun b!5278180 () Bool)

(declare-fun e!3282158 () Bool)

(declare-fun tp!1474730 () Bool)

(declare-fun tp!1474731 () Bool)

(assert (=> b!5278180 (= e!3282158 (and tp!1474730 tp!1474731))))

(assert (=> b!5276845 (= tp!1474441 e!3282158)))

(assert (= (and b!5276845 ((_ is Cons!60866) (exprs!4781 (h!67315 (t!374190 zl!343))))) b!5278180))

(declare-fun b!5278184 () Bool)

(declare-fun e!3282159 () Bool)

(declare-fun tp!1474735 () Bool)

(declare-fun tp!1474732 () Bool)

(assert (=> b!5278184 (= e!3282159 (and tp!1474735 tp!1474732))))

(assert (=> b!5276853 (= tp!1474451 e!3282159)))

(declare-fun b!5278183 () Bool)

(declare-fun tp!1474736 () Bool)

(assert (=> b!5278183 (= e!3282159 tp!1474736)))

(declare-fun b!5278182 () Bool)

(declare-fun tp!1474734 () Bool)

(declare-fun tp!1474733 () Bool)

(assert (=> b!5278182 (= e!3282159 (and tp!1474734 tp!1474733))))

(declare-fun b!5278181 () Bool)

(assert (=> b!5278181 (= e!3282159 tp_is_empty!39047)))

(assert (= (and b!5276853 ((_ is ElementMatch!14897) (regOne!30307 (regTwo!30307 r!7292)))) b!5278181))

(assert (= (and b!5276853 ((_ is Concat!23742) (regOne!30307 (regTwo!30307 r!7292)))) b!5278182))

(assert (= (and b!5276853 ((_ is Star!14897) (regOne!30307 (regTwo!30307 r!7292)))) b!5278183))

(assert (= (and b!5276853 ((_ is Union!14897) (regOne!30307 (regTwo!30307 r!7292)))) b!5278184))

(declare-fun b!5278188 () Bool)

(declare-fun e!3282160 () Bool)

(declare-fun tp!1474740 () Bool)

(declare-fun tp!1474737 () Bool)

(assert (=> b!5278188 (= e!3282160 (and tp!1474740 tp!1474737))))

(assert (=> b!5276853 (= tp!1474448 e!3282160)))

(declare-fun b!5278187 () Bool)

(declare-fun tp!1474741 () Bool)

(assert (=> b!5278187 (= e!3282160 tp!1474741)))

(declare-fun b!5278186 () Bool)

(declare-fun tp!1474739 () Bool)

(declare-fun tp!1474738 () Bool)

(assert (=> b!5278186 (= e!3282160 (and tp!1474739 tp!1474738))))

(declare-fun b!5278185 () Bool)

(assert (=> b!5278185 (= e!3282160 tp_is_empty!39047)))

(assert (= (and b!5276853 ((_ is ElementMatch!14897) (regTwo!30307 (regTwo!30307 r!7292)))) b!5278185))

(assert (= (and b!5276853 ((_ is Concat!23742) (regTwo!30307 (regTwo!30307 r!7292)))) b!5278186))

(assert (= (and b!5276853 ((_ is Star!14897) (regTwo!30307 (regTwo!30307 r!7292)))) b!5278187))

(assert (= (and b!5276853 ((_ is Union!14897) (regTwo!30307 (regTwo!30307 r!7292)))) b!5278188))

(declare-fun b!5278192 () Bool)

(declare-fun e!3282161 () Bool)

(declare-fun tp!1474745 () Bool)

(declare-fun tp!1474742 () Bool)

(assert (=> b!5278192 (= e!3282161 (and tp!1474745 tp!1474742))))

(assert (=> b!5276832 (= tp!1474429 e!3282161)))

(declare-fun b!5278191 () Bool)

(declare-fun tp!1474746 () Bool)

(assert (=> b!5278191 (= e!3282161 tp!1474746)))

(declare-fun b!5278190 () Bool)

(declare-fun tp!1474744 () Bool)

(declare-fun tp!1474743 () Bool)

(assert (=> b!5278190 (= e!3282161 (and tp!1474744 tp!1474743))))

(declare-fun b!5278189 () Bool)

(assert (=> b!5278189 (= e!3282161 tp_is_empty!39047)))

(assert (= (and b!5276832 ((_ is ElementMatch!14897) (regOne!30307 (regTwo!30306 r!7292)))) b!5278189))

(assert (= (and b!5276832 ((_ is Concat!23742) (regOne!30307 (regTwo!30306 r!7292)))) b!5278190))

(assert (= (and b!5276832 ((_ is Star!14897) (regOne!30307 (regTwo!30306 r!7292)))) b!5278191))

(assert (= (and b!5276832 ((_ is Union!14897) (regOne!30307 (regTwo!30306 r!7292)))) b!5278192))

(declare-fun b!5278196 () Bool)

(declare-fun e!3282162 () Bool)

(declare-fun tp!1474750 () Bool)

(declare-fun tp!1474747 () Bool)

(assert (=> b!5278196 (= e!3282162 (and tp!1474750 tp!1474747))))

(assert (=> b!5276832 (= tp!1474426 e!3282162)))

(declare-fun b!5278195 () Bool)

(declare-fun tp!1474751 () Bool)

(assert (=> b!5278195 (= e!3282162 tp!1474751)))

(declare-fun b!5278194 () Bool)

(declare-fun tp!1474749 () Bool)

(declare-fun tp!1474748 () Bool)

(assert (=> b!5278194 (= e!3282162 (and tp!1474749 tp!1474748))))

(declare-fun b!5278193 () Bool)

(assert (=> b!5278193 (= e!3282162 tp_is_empty!39047)))

(assert (= (and b!5276832 ((_ is ElementMatch!14897) (regTwo!30307 (regTwo!30306 r!7292)))) b!5278193))

(assert (= (and b!5276832 ((_ is Concat!23742) (regTwo!30307 (regTwo!30306 r!7292)))) b!5278194))

(assert (= (and b!5276832 ((_ is Star!14897) (regTwo!30307 (regTwo!30306 r!7292)))) b!5278195))

(assert (= (and b!5276832 ((_ is Union!14897) (regTwo!30307 (regTwo!30306 r!7292)))) b!5278196))

(declare-fun b!5278200 () Bool)

(declare-fun e!3282163 () Bool)

(declare-fun tp!1474755 () Bool)

(declare-fun tp!1474752 () Bool)

(assert (=> b!5278200 (= e!3282163 (and tp!1474755 tp!1474752))))

(assert (=> b!5276851 (= tp!1474450 e!3282163)))

(declare-fun b!5278199 () Bool)

(declare-fun tp!1474756 () Bool)

(assert (=> b!5278199 (= e!3282163 tp!1474756)))

(declare-fun b!5278198 () Bool)

(declare-fun tp!1474754 () Bool)

(declare-fun tp!1474753 () Bool)

(assert (=> b!5278198 (= e!3282163 (and tp!1474754 tp!1474753))))

(declare-fun b!5278197 () Bool)

(assert (=> b!5278197 (= e!3282163 tp_is_empty!39047)))

(assert (= (and b!5276851 ((_ is ElementMatch!14897) (regOne!30306 (regTwo!30307 r!7292)))) b!5278197))

(assert (= (and b!5276851 ((_ is Concat!23742) (regOne!30306 (regTwo!30307 r!7292)))) b!5278198))

(assert (= (and b!5276851 ((_ is Star!14897) (regOne!30306 (regTwo!30307 r!7292)))) b!5278199))

(assert (= (and b!5276851 ((_ is Union!14897) (regOne!30306 (regTwo!30307 r!7292)))) b!5278200))

(declare-fun b!5278204 () Bool)

(declare-fun e!3282164 () Bool)

(declare-fun tp!1474760 () Bool)

(declare-fun tp!1474757 () Bool)

(assert (=> b!5278204 (= e!3282164 (and tp!1474760 tp!1474757))))

(assert (=> b!5276851 (= tp!1474449 e!3282164)))

(declare-fun b!5278203 () Bool)

(declare-fun tp!1474761 () Bool)

(assert (=> b!5278203 (= e!3282164 tp!1474761)))

(declare-fun b!5278202 () Bool)

(declare-fun tp!1474759 () Bool)

(declare-fun tp!1474758 () Bool)

(assert (=> b!5278202 (= e!3282164 (and tp!1474759 tp!1474758))))

(declare-fun b!5278201 () Bool)

(assert (=> b!5278201 (= e!3282164 tp_is_empty!39047)))

(assert (= (and b!5276851 ((_ is ElementMatch!14897) (regTwo!30306 (regTwo!30307 r!7292)))) b!5278201))

(assert (= (and b!5276851 ((_ is Concat!23742) (regTwo!30306 (regTwo!30307 r!7292)))) b!5278202))

(assert (= (and b!5276851 ((_ is Star!14897) (regTwo!30306 (regTwo!30307 r!7292)))) b!5278203))

(assert (= (and b!5276851 ((_ is Union!14897) (regTwo!30306 (regTwo!30307 r!7292)))) b!5278204))

(declare-fun b!5278208 () Bool)

(declare-fun e!3282165 () Bool)

(declare-fun tp!1474765 () Bool)

(declare-fun tp!1474762 () Bool)

(assert (=> b!5278208 (= e!3282165 (and tp!1474765 tp!1474762))))

(assert (=> b!5276830 (= tp!1474428 e!3282165)))

(declare-fun b!5278207 () Bool)

(declare-fun tp!1474766 () Bool)

(assert (=> b!5278207 (= e!3282165 tp!1474766)))

(declare-fun b!5278206 () Bool)

(declare-fun tp!1474764 () Bool)

(declare-fun tp!1474763 () Bool)

(assert (=> b!5278206 (= e!3282165 (and tp!1474764 tp!1474763))))

(declare-fun b!5278205 () Bool)

(assert (=> b!5278205 (= e!3282165 tp_is_empty!39047)))

(assert (= (and b!5276830 ((_ is ElementMatch!14897) (regOne!30306 (regTwo!30306 r!7292)))) b!5278205))

(assert (= (and b!5276830 ((_ is Concat!23742) (regOne!30306 (regTwo!30306 r!7292)))) b!5278206))

(assert (= (and b!5276830 ((_ is Star!14897) (regOne!30306 (regTwo!30306 r!7292)))) b!5278207))

(assert (= (and b!5276830 ((_ is Union!14897) (regOne!30306 (regTwo!30306 r!7292)))) b!5278208))

(declare-fun b!5278212 () Bool)

(declare-fun e!3282166 () Bool)

(declare-fun tp!1474770 () Bool)

(declare-fun tp!1474767 () Bool)

(assert (=> b!5278212 (= e!3282166 (and tp!1474770 tp!1474767))))

(assert (=> b!5276830 (= tp!1474427 e!3282166)))

(declare-fun b!5278211 () Bool)

(declare-fun tp!1474771 () Bool)

(assert (=> b!5278211 (= e!3282166 tp!1474771)))

(declare-fun b!5278210 () Bool)

(declare-fun tp!1474769 () Bool)

(declare-fun tp!1474768 () Bool)

(assert (=> b!5278210 (= e!3282166 (and tp!1474769 tp!1474768))))

(declare-fun b!5278209 () Bool)

(assert (=> b!5278209 (= e!3282166 tp_is_empty!39047)))

(assert (= (and b!5276830 ((_ is ElementMatch!14897) (regTwo!30306 (regTwo!30306 r!7292)))) b!5278209))

(assert (= (and b!5276830 ((_ is Concat!23742) (regTwo!30306 (regTwo!30306 r!7292)))) b!5278210))

(assert (= (and b!5276830 ((_ is Star!14897) (regTwo!30306 (regTwo!30306 r!7292)))) b!5278211))

(assert (= (and b!5276830 ((_ is Union!14897) (regTwo!30306 (regTwo!30306 r!7292)))) b!5278212))

(declare-fun b!5278214 () Bool)

(declare-fun e!3282168 () Bool)

(declare-fun tp!1474772 () Bool)

(assert (=> b!5278214 (= e!3282168 tp!1474772)))

(declare-fun tp!1474773 () Bool)

(declare-fun b!5278213 () Bool)

(declare-fun e!3282167 () Bool)

(assert (=> b!5278213 (= e!3282167 (and (inv!80489 (h!67315 (t!374190 (t!374190 zl!343)))) e!3282168 tp!1474773))))

(assert (=> b!5276844 (= tp!1474442 e!3282167)))

(assert (= b!5278213 b!5278214))

(assert (= (and b!5276844 ((_ is Cons!60867) (t!374190 (t!374190 zl!343)))) b!5278213))

(declare-fun m!6316356 () Bool)

(assert (=> b!5278213 m!6316356))

(declare-fun b!5278218 () Bool)

(declare-fun e!3282169 () Bool)

(declare-fun tp!1474777 () Bool)

(declare-fun tp!1474774 () Bool)

(assert (=> b!5278218 (= e!3282169 (and tp!1474777 tp!1474774))))

(assert (=> b!5276852 (= tp!1474452 e!3282169)))

(declare-fun b!5278217 () Bool)

(declare-fun tp!1474778 () Bool)

(assert (=> b!5278217 (= e!3282169 tp!1474778)))

(declare-fun b!5278216 () Bool)

(declare-fun tp!1474776 () Bool)

(declare-fun tp!1474775 () Bool)

(assert (=> b!5278216 (= e!3282169 (and tp!1474776 tp!1474775))))

(declare-fun b!5278215 () Bool)

(assert (=> b!5278215 (= e!3282169 tp_is_empty!39047)))

(assert (= (and b!5276852 ((_ is ElementMatch!14897) (reg!15226 (regTwo!30307 r!7292)))) b!5278215))

(assert (= (and b!5276852 ((_ is Concat!23742) (reg!15226 (regTwo!30307 r!7292)))) b!5278216))

(assert (= (and b!5276852 ((_ is Star!14897) (reg!15226 (regTwo!30307 r!7292)))) b!5278217))

(assert (= (and b!5276852 ((_ is Union!14897) (reg!15226 (regTwo!30307 r!7292)))) b!5278218))

(declare-fun b!5278222 () Bool)

(declare-fun e!3282170 () Bool)

(declare-fun tp!1474782 () Bool)

(declare-fun tp!1474779 () Bool)

(assert (=> b!5278222 (= e!3282170 (and tp!1474782 tp!1474779))))

(assert (=> b!5276831 (= tp!1474430 e!3282170)))

(declare-fun b!5278221 () Bool)

(declare-fun tp!1474783 () Bool)

(assert (=> b!5278221 (= e!3282170 tp!1474783)))

(declare-fun b!5278220 () Bool)

(declare-fun tp!1474781 () Bool)

(declare-fun tp!1474780 () Bool)

(assert (=> b!5278220 (= e!3282170 (and tp!1474781 tp!1474780))))

(declare-fun b!5278219 () Bool)

(assert (=> b!5278219 (= e!3282170 tp_is_empty!39047)))

(assert (= (and b!5276831 ((_ is ElementMatch!14897) (reg!15226 (regTwo!30306 r!7292)))) b!5278219))

(assert (= (and b!5276831 ((_ is Concat!23742) (reg!15226 (regTwo!30306 r!7292)))) b!5278220))

(assert (= (and b!5276831 ((_ is Star!14897) (reg!15226 (regTwo!30306 r!7292)))) b!5278221))

(assert (= (and b!5276831 ((_ is Union!14897) (reg!15226 (regTwo!30306 r!7292)))) b!5278222))

(declare-fun b!5278223 () Bool)

(declare-fun e!3282171 () Bool)

(declare-fun tp!1474784 () Bool)

(declare-fun tp!1474785 () Bool)

(assert (=> b!5278223 (= e!3282171 (and tp!1474784 tp!1474785))))

(assert (=> b!5276858 (= tp!1474457 e!3282171)))

(assert (= (and b!5276858 ((_ is Cons!60866) (exprs!4781 setElem!33803))) b!5278223))

(declare-fun b!5278224 () Bool)

(declare-fun e!3282172 () Bool)

(declare-fun tp!1474786 () Bool)

(assert (=> b!5278224 (= e!3282172 (and tp_is_empty!39047 tp!1474786))))

(assert (=> b!5276814 (= tp!1474410 e!3282172)))

(assert (= (and b!5276814 ((_ is Cons!60868) (t!374191 (t!374191 s!2326)))) b!5278224))

(declare-fun b!5278228 () Bool)

(declare-fun e!3282173 () Bool)

(declare-fun tp!1474790 () Bool)

(declare-fun tp!1474787 () Bool)

(assert (=> b!5278228 (= e!3282173 (and tp!1474790 tp!1474787))))

(assert (=> b!5276837 (= tp!1474435 e!3282173)))

(declare-fun b!5278227 () Bool)

(declare-fun tp!1474791 () Bool)

(assert (=> b!5278227 (= e!3282173 tp!1474791)))

(declare-fun b!5278226 () Bool)

(declare-fun tp!1474789 () Bool)

(declare-fun tp!1474788 () Bool)

(assert (=> b!5278226 (= e!3282173 (and tp!1474789 tp!1474788))))

(declare-fun b!5278225 () Bool)

(assert (=> b!5278225 (= e!3282173 tp_is_empty!39047)))

(assert (= (and b!5276837 ((_ is ElementMatch!14897) (h!67314 (exprs!4781 setElem!33797)))) b!5278225))

(assert (= (and b!5276837 ((_ is Concat!23742) (h!67314 (exprs!4781 setElem!33797)))) b!5278226))

(assert (= (and b!5276837 ((_ is Star!14897) (h!67314 (exprs!4781 setElem!33797)))) b!5278227))

(assert (= (and b!5276837 ((_ is Union!14897) (h!67314 (exprs!4781 setElem!33797)))) b!5278228))

(declare-fun b!5278229 () Bool)

(declare-fun e!3282174 () Bool)

(declare-fun tp!1474792 () Bool)

(declare-fun tp!1474793 () Bool)

(assert (=> b!5278229 (= e!3282174 (and tp!1474792 tp!1474793))))

(assert (=> b!5276837 (= tp!1474436 e!3282174)))

(assert (= (and b!5276837 ((_ is Cons!60866) (t!374189 (exprs!4781 setElem!33797)))) b!5278229))

(declare-fun b_lambda!203619 () Bool)

(assert (= b_lambda!203573 (or b!5275986 b_lambda!203619)))

(declare-fun bs!1223259 () Bool)

(declare-fun d!1698744 () Bool)

(assert (= bs!1223259 (and d!1698744 b!5275986)))

(assert (=> bs!1223259 (= (dynLambda!24057 lambda!266289 (h!67314 (t!374189 lt!2157426))) (validRegex!6633 (h!67314 (t!374189 lt!2157426))))))

(declare-fun m!6316358 () Bool)

(assert (=> bs!1223259 m!6316358))

(assert (=> b!5277601 d!1698744))

(declare-fun b_lambda!203621 () Bool)

(assert (= b_lambda!203617 (or b!5275973 b_lambda!203621)))

(assert (=> d!1698718 d!1698090))

(declare-fun b_lambda!203623 () Bool)

(assert (= b_lambda!203605 (or b!5275973 b_lambda!203623)))

(assert (=> d!1698614 d!1698086))

(declare-fun b_lambda!203625 () Bool)

(assert (= b_lambda!203607 (or d!1698078 b_lambda!203625)))

(declare-fun bs!1223260 () Bool)

(declare-fun d!1698746 () Bool)

(assert (= bs!1223260 (and d!1698746 d!1698078)))

(assert (=> bs!1223260 (= (dynLambda!24057 lambda!266377 (h!67314 lt!2157569)) (validRegex!6633 (h!67314 lt!2157569)))))

(declare-fun m!6316360 () Bool)

(assert (=> bs!1223260 m!6316360))

(assert (=> b!5277921 d!1698746))

(declare-fun b_lambda!203627 () Bool)

(assert (= b_lambda!203565 (or d!1698046 b_lambda!203627)))

(declare-fun bs!1223261 () Bool)

(declare-fun d!1698748 () Bool)

(assert (= bs!1223261 (and d!1698748 d!1698046)))

(assert (=> bs!1223261 (= (dynLambda!24057 lambda!266360 (h!67314 (exprs!4781 (h!67315 zl!343)))) (validRegex!6633 (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(declare-fun m!6316362 () Bool)

(assert (=> bs!1223261 m!6316362))

(assert (=> b!5277270 d!1698748))

(declare-fun b_lambda!203629 () Bool)

(assert (= b_lambda!203609 (or b!5276585 b_lambda!203629)))

(declare-fun bs!1223262 () Bool)

(declare-fun d!1698750 () Bool)

(assert (= bs!1223262 (and d!1698750 b!5276585)))

(assert (=> bs!1223262 (= (dynLambda!24063 lambda!266347 (h!67315 (t!374190 zl!343))) (>= lt!2157532 (contextDepth!8 (h!67315 (t!374190 zl!343)))))))

(assert (=> bs!1223262 m!6316138))

(assert (=> b!5277926 d!1698750))

(declare-fun b_lambda!203631 () Bool)

(assert (= b_lambda!203567 (or b!5276587 b_lambda!203631)))

(declare-fun bs!1223263 () Bool)

(declare-fun d!1698752 () Bool)

(assert (= bs!1223263 (and d!1698752 b!5276587)))

(assert (=> bs!1223263 (= (dynLambda!24063 lambda!266348 (h!67315 zl!343)) (>= lt!2157530 (contextDepth!8 (h!67315 zl!343))))))

(assert (=> bs!1223263 m!6314798))

(assert (=> b!5277283 d!1698752))

(declare-fun b_lambda!203633 () Bool)

(assert (= b_lambda!203561 (or b!5276580 b_lambda!203633)))

(declare-fun bs!1223264 () Bool)

(declare-fun d!1698754 () Bool)

(assert (= bs!1223264 (and d!1698754 b!5276580)))

(assert (=> bs!1223264 (= (dynLambda!24063 lambda!266344 (h!67315 (t!374190 lt!2157429))) (>= lt!2157528 (contextDepth!8 (h!67315 (t!374190 lt!2157429)))))))

(assert (=> bs!1223264 m!6315276))

(assert (=> b!5277148 d!1698754))

(declare-fun b_lambda!203635 () Bool)

(assert (= b_lambda!203611 (or b!5275973 b_lambda!203635)))

(assert (=> d!1698660 d!1698088))

(declare-fun b_lambda!203637 () Bool)

(assert (= b_lambda!203613 (or d!1698076 b_lambda!203637)))

(declare-fun bs!1223265 () Bool)

(declare-fun d!1698756 () Bool)

(assert (= bs!1223265 (and d!1698756 d!1698076)))

(assert (=> bs!1223265 (= (dynLambda!24057 lambda!266374 (h!67314 (unfocusZipperList!339 zl!343))) (validRegex!6633 (h!67314 (unfocusZipperList!339 zl!343))))))

(declare-fun m!6316364 () Bool)

(assert (=> bs!1223265 m!6316364))

(assert (=> b!5277951 d!1698756))

(declare-fun b_lambda!203639 () Bool)

(assert (= b_lambda!203601 (or d!1697978 b_lambda!203639)))

(declare-fun bs!1223266 () Bool)

(declare-fun d!1698758 () Bool)

(assert (= bs!1223266 (and d!1698758 d!1697978)))

(assert (=> bs!1223266 (= (dynLambda!24057 lambda!266336 (h!67314 (exprs!4781 (h!67315 zl!343)))) (validRegex!6633 (h!67314 (exprs!4781 (h!67315 zl!343)))))))

(assert (=> bs!1223266 m!6316362))

(assert (=> b!5277839 d!1698758))

(declare-fun b_lambda!203641 () Bool)

(assert (= b_lambda!203603 (or b!5276582 b_lambda!203641)))

(declare-fun bs!1223267 () Bool)

(declare-fun d!1698760 () Bool)

(assert (= bs!1223267 (and d!1698760 b!5276582)))

(assert (=> bs!1223267 (= (dynLambda!24063 lambda!266345 (h!67315 lt!2157429)) (>= lt!2157526 (contextDepth!8 (h!67315 lt!2157429))))))

(assert (=> bs!1223267 m!6314786))

(assert (=> b!5277884 d!1698760))

(declare-fun b_lambda!203643 () Bool)

(assert (= b_lambda!203615 (or d!1698050 b_lambda!203643)))

(declare-fun bs!1223268 () Bool)

(declare-fun d!1698762 () Bool)

(assert (= bs!1223268 (and d!1698762 d!1698050)))

(assert (=> bs!1223268 (= (dynLambda!24057 lambda!266361 (h!67314 (exprs!4781 setElem!33797))) (validRegex!6633 (h!67314 (exprs!4781 setElem!33797))))))

(declare-fun m!6316366 () Bool)

(assert (=> bs!1223268 m!6316366))

(assert (=> b!5277953 d!1698762))

(check-sat (not d!1698264) tp_is_empty!39047 (not b!5278190) (not d!1698450) (not b!5278162) (not bm!375673) (not b!5278220) (not b!5277886) (not b!5278132) (not d!1698672) (not bm!375672) (not b!5278024) (not b!5277419) (not b!5277611) (not bs!1223262) (not bm!375661) (not b!5278117) (not d!1698676) (not b!5277465) (not b!5278125) (not d!1698410) (not d!1698562) (not bm!375641) (not b!5278174) (not b!5278192) (not b!5277149) (not b!5278116) (not bs!1223261) (not b!5278129) (not b!5277371) (not b_lambda!203537) (not d!1698438) (not b!5277443) (not d!1698556) (not bm!375549) (not b!5278046) (not b!5278160) (not b!5278115) (not setNonEmpty!33813) (not b!5277285) (not d!1698742) (not b!5278168) (not b!5277200) (not d!1698712) (not b!5277889) (not bs!1223268) (not b!5278203) (not b_lambda!203641) (not b!5277922) (not b!5277215) (not d!1698736) (not b!5277602) (not b!5278081) (not bm!375677) (not b!5278199) (not b!5278166) (not bm!375724) (not b!5278218) (not b!5278146) (not b!5278169) (not b!5277820) (not b_lambda!203539) (not b!5278113) (not d!1698614) (not bm!375716) (not b!5277680) (not d!1698392) (not b!5278123) (not bm!375561) (not bm!375681) (not bm!375714) (not b!5277211) (not d!1698640) (not b!5278173) (not bm!375729) (not bs!1223259) (not b!5278041) (not bm!375718) (not d!1698360) (not b!5277629) (not b!5278224) (not b_lambda!203629) (not d!1698442) (not bm!375694) (not b!5278140) (not b!5277865) (not b!5278177) (not d!1698510) (not b!5278228) (not bm!375669) (not b!5278085) (not b!5277348) (not b!5278004) (not bm!375684) (not b!5278194) (not d!1698434) (not d!1698656) (not b!5278028) (not b!5277999) (not b!5278207) (not b!5278150) (not bm!375657) (not b!5278216) (not b!5277952) (not b!5278195) (not b!5278214) (not b!5278208) (not bm!375679) (not b!5278139) (not b!5278204) (not b_lambda!203621) (not setNonEmpty!33815) (not b!5277899) (not b!5278184) (not b!5277271) (not d!1698522) (not bm!375656) (not b!5278152) (not b!5277600) (not bm!375712) (not b!5277930) (not d!1698278) (not b!5277469) (not bm!375654) (not bm!375610) (not b!5278141) (not bs!1223260) (not b!5277931) (not d!1698654) (not bm!375671) (not b!5277603) (not b!5277683) (not bm!375621) (not bm!375665) (not bm!375663) (not d!1698418) (not b!5278144) (not d!1698566) (not b!5278086) (not d!1698696) (not bm!375726) (not d!1698554) (not b!5277928) (not b!5277914) (not b!5277423) (not b!5277343) (not b!5278157) (not d!1698602) (not b!5278127) (not d!1698692) (not b!5278124) (not b!5277869) (not bm!375527) (not b!5278223) (not bm!375710) (not d!1698506) (not b!5278182) (not b!5277893) (not d!1698416) (not d!1698600) (not b!5278093) (not b!5278198) (not b_lambda!203535) (not b!5277892) (not b!5277630) (not d!1698422) (not b!5277542) (not bm!375593) (not b!5277566) (not b!5277913) (not b!5277436) (not bm!375708) (not bm!375670) (not b!5278128) (not b!5277655) (not b_lambda!203619) (not b!5278202) (not bm!375697) (not bm!375698) (not b!5277879) (not b!5277916) (not d!1698642) (not bm!375696) (not bm!375602) (not b!5277098) (not b!5278229) (not bm!375616) (not b_lambda!203639) (not d!1698542) (not b!5278135) (not b!5278051) (not b!5278007) (not d!1698660) (not d!1698494) (not d!1698610) (not bs!1223266) (not b!5278161) (not b!5278003) (not b!5277848) (not bm!375554) (not b!5277868) (not d!1698440) (not b!5277097) (not b!5278156) (not bs!1223264) (not b!5278176) (not bm!375618) (not d!1698540) (not b!5278121) (not b!5278029) (not bm!375619) (not d!1698714) (not b!5278178) (not d!1698492) (not d!1698720) (not b!5277441) (not b!5277569) (not b!5278040) (not b!5278211) (not b!5278063) (not b!5278212) (not b!5277898) (not b!5277915) (not d!1698632) (not bm!375608) (not bm!375686) (not b!5278188) (not b!5278186) (not b!5277875) (not b!5277883) (not d!1698528) (not b!5278092) (not b!5278227) (not d!1698704) (not d!1698560) (not bm!375675) (not bs!1223265) (not b_lambda!203633) (not b!5278213) (not b!5277927) (not b!5277420) (not b!5278045) (not b!5278158) (not bm!375591) (not d!1698604) (not b!5278164) (not d!1698634) (not bm!375559) (not d!1698630) (not setNonEmpty!33811) (not b!5277888) (not b!5278087) (not b_lambda!203643) (not b!5278106) (not d!1698622) (not b!5277966) (not b!5277925) (not b!5278222) (not b!5277355) (not b_lambda!203627) (not b!5278131) (not d!1698718) (not d!1698484) (not b!5278052) (not b!5278154) (not b!5278179) (not b!5277286) (not bm!375552) (not b!5277387) (not d!1698606) (not b!5278191) (not b!5278206) (not b!5278149) (not d!1698386) (not b!5277359) (not bm!375720) (not b!5277290) (not b!5278136) (not b!5277559) (not bs!1223263) (not b!5278200) (not b!5277872) (not b!5277351) (not b!5277840) (not d!1698406) (not b!5277470) (not bm!375650) (not bm!375604) (not b!5277909) (not b!5277558) (not d!1698544) (not d!1698668) (not d!1698446) (not b_lambda!203631) (not b!5277894) (not b!5278187) (not b!5278148) (not b!5277440) (not b_lambda!203623) (not d!1698690) (not b!5278180) (not bm!375526) (not b!5278172) (not b!5277372) (not bm!375711) (not b!5278000) (not d!1698412) (not bm!375562) (not bm!375700) (not b!5278008) (not bm!375702) (not d!1698620) (not b!5277923) (not b_lambda!203635) (not d!1698502) (not b!5278027) (not b!5277876) (not b!5278133) (not b!5278196) (not bm!375667) (not b!5278023) (not b!5277948) (not b!5277466) (not b!5278221) (not bm!375682) (not bm!375658) (not b!5277352) (not b!5277642) (not b!5277954) (not b_lambda!203533) (not b!5277442) (not b!5277389) (not b!5278105) (not d!1698370) (not b!5278137) (not b!5278170) (not bm!375614) (not b!5278064) (not setNonEmpty!33812) (not b!5277424) (not b!5277880) (not d!1698726) (not b!5277676) (not bm!375589) (not b!5278050) (not b!5277356) (not b!5277614) (not b!5278226) (not b!5278217) (not b!5277591) (not d!1698684) (not bm!375668) (not b!5277967) (not b!5277462) (not b_lambda!203625) (not bm!375659) (not b!5277675) (not b!5277388) (not b!5278019) (not bm!375603) (not b!5277100) (not d!1698436) (not b!5278021) (not bm!375588) (not d!1698520) (not b!5278145) (not b!5277627) (not b!5277574) (not b!5277444) (not b!5278022) (not d!1698394) (not b!5277284) (not bm!375651) (not d!1698618) (not b!5277996) (not d!1698488) (not bm!375550) (not b!5278153) (not b!5278088) (not b!5277654) (not b!5277530) (not b!5277599) (not b_lambda!203637) (not b!5277836) (not b!5277885) (not b!5278210) (not b!5278143) (not b!5277461) (not bm!375706) (not bm!375722) (not bm!375704) (not bm!375727) (not b!5277992) (not bs!1223267) (not b!5277571) (not d!1698682) (not b!5277955) (not d!1698706) (not b!5277568) (not d!1698638) (not b!5277679) (not b!5278165) (not b!5277541) (not b!5277567) (not b!5278102) (not b!5277198) (not b!5277458) (not b!5278183) (not b!5278119) (not b!5278120) (not b!5277672) (not b!5278090) (not d!1698550) (not d!1698710) (not d!1698396) (not bm!375606) (not bm!375612))
(check-sat)
