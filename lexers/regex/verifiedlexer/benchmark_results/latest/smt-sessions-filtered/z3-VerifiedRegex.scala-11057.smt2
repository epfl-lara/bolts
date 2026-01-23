; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573250 () Bool)

(assert start!573250)

(declare-fun b!5480015 () Bool)

(assert (=> b!5480015 true))

(assert (=> b!5480015 true))

(declare-fun lambda!292323 () Int)

(declare-fun lambda!292322 () Int)

(assert (=> b!5480015 (not (= lambda!292323 lambda!292322))))

(assert (=> b!5480015 true))

(assert (=> b!5480015 true))

(declare-fun lambda!292324 () Int)

(assert (=> b!5480015 (not (= lambda!292324 lambda!292322))))

(assert (=> b!5480015 (not (= lambda!292324 lambda!292323))))

(assert (=> b!5480015 true))

(assert (=> b!5480015 true))

(declare-fun b!5480017 () Bool)

(assert (=> b!5480017 true))

(declare-fun e!3391659 () Bool)

(declare-fun setNonEmpty!36027 () Bool)

(declare-fun tp!1506092 () Bool)

(declare-datatypes ((C!30992 0))(
  ( (C!30993 (val!25198 Int)) )
))
(declare-datatypes ((Regex!15361 0))(
  ( (ElementMatch!15361 (c!957547 C!30992)) (Concat!24206 (regOne!31234 Regex!15361) (regTwo!31234 Regex!15361)) (EmptyExpr!15361) (Star!15361 (reg!15690 Regex!15361)) (EmptyLang!15361) (Union!15361 (regOne!31235 Regex!15361) (regTwo!31235 Regex!15361)) )
))
(declare-datatypes ((List!62382 0))(
  ( (Nil!62258) (Cons!62258 (h!68706 Regex!15361) (t!375613 List!62382)) )
))
(declare-datatypes ((Context!9490 0))(
  ( (Context!9491 (exprs!5245 List!62382)) )
))
(declare-fun setElem!36027 () Context!9490)

(declare-fun setRes!36027 () Bool)

(declare-fun inv!81649 (Context!9490) Bool)

(assert (=> setNonEmpty!36027 (= setRes!36027 (and tp!1506092 (inv!81649 setElem!36027) e!3391659))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9490))

(declare-fun setRest!36027 () (InoxSet Context!9490))

(assert (=> setNonEmpty!36027 (= z!1189 ((_ map or) (store ((as const (Array Context!9490 Bool)) false) setElem!36027 true) setRest!36027))))

(declare-fun b!5479997 () Bool)

(declare-fun res!2335990 () Bool)

(declare-fun e!3391654 () Bool)

(assert (=> b!5479997 (=> res!2335990 e!3391654)))

(declare-fun r!7292 () Regex!15361)

(get-info :version)

(assert (=> b!5479997 (= res!2335990 (or ((_ is EmptyExpr!15361) r!7292) ((_ is EmptyLang!15361) r!7292) ((_ is ElementMatch!15361) r!7292) ((_ is Union!15361) r!7292) ((_ is Concat!24206) r!7292)))))

(declare-fun b!5479998 () Bool)

(declare-fun e!3391662 () Bool)

(declare-fun e!3391655 () Bool)

(assert (=> b!5479998 (= e!3391662 e!3391655)))

(declare-fun res!2335998 () Bool)

(assert (=> b!5479998 (=> res!2335998 e!3391655)))

(declare-fun lt!2237885 () (InoxSet Context!9490))

(declare-fun lt!2237887 () (InoxSet Context!9490))

(assert (=> b!5479998 (= res!2335998 (not (= lt!2237885 lt!2237887)))))

(declare-datatypes ((List!62383 0))(
  ( (Nil!62259) (Cons!62259 (h!68707 C!30992) (t!375614 List!62383)) )
))
(declare-fun s!2326 () List!62383)

(declare-fun derivationStepZipperDown!787 (Regex!15361 Context!9490 C!30992) (InoxSet Context!9490))

(assert (=> b!5479998 (= lt!2237887 (derivationStepZipperDown!787 r!7292 (Context!9491 Nil!62258) (h!68707 s!2326)))))

(declare-fun derivationStepZipperUp!713 (Context!9490 C!30992) (InoxSet Context!9490))

(assert (=> b!5479998 (= lt!2237885 (derivationStepZipperUp!713 (Context!9491 (Cons!62258 r!7292 Nil!62258)) (h!68707 s!2326)))))

(declare-fun lt!2237870 () (InoxSet Context!9490))

(declare-fun derivationStepZipper!1556 ((InoxSet Context!9490) C!30992) (InoxSet Context!9490))

(assert (=> b!5479998 (= lt!2237870 (derivationStepZipper!1556 z!1189 (h!68707 s!2326)))))

(declare-fun tp!1506089 () Bool)

(declare-datatypes ((List!62384 0))(
  ( (Nil!62260) (Cons!62260 (h!68708 Context!9490) (t!375615 List!62384)) )
))
(declare-fun zl!343 () List!62384)

(declare-fun e!3391663 () Bool)

(declare-fun b!5479999 () Bool)

(declare-fun e!3391660 () Bool)

(assert (=> b!5479999 (= e!3391663 (and (inv!81649 (h!68708 zl!343)) e!3391660 tp!1506089))))

(declare-fun b!5480000 () Bool)

(declare-fun e!3391665 () Bool)

(assert (=> b!5480000 (= e!3391665 true)))

(declare-fun lt!2237862 () Bool)

(declare-fun matchZipper!1579 ((InoxSet Context!9490) List!62383) Bool)

(assert (=> b!5480000 (= lt!2237862 (matchZipper!1579 z!1189 s!2326))))

(declare-fun b!5480001 () Bool)

(declare-fun res!2335987 () Bool)

(declare-fun e!3391653 () Bool)

(assert (=> b!5480001 (=> (not res!2335987) (not e!3391653))))

(declare-fun toList!9145 ((InoxSet Context!9490)) List!62384)

(assert (=> b!5480001 (= res!2335987 (= (toList!9145 z!1189) zl!343))))

(declare-fun b!5480003 () Bool)

(declare-fun e!3391656 () Bool)

(declare-fun tp_is_empty!39975 () Bool)

(declare-fun tp!1506093 () Bool)

(assert (=> b!5480003 (= e!3391656 (and tp_is_empty!39975 tp!1506093))))

(declare-fun b!5480004 () Bool)

(declare-fun e!3391667 () Bool)

(assert (=> b!5480004 (= e!3391667 (not e!3391654))))

(declare-fun res!2335985 () Bool)

(assert (=> b!5480004 (=> res!2335985 e!3391654)))

(assert (=> b!5480004 (= res!2335985 (not ((_ is Cons!62260) zl!343)))))

(declare-fun lt!2237879 () Bool)

(declare-fun matchRSpec!2464 (Regex!15361 List!62383) Bool)

(assert (=> b!5480004 (= lt!2237879 (matchRSpec!2464 r!7292 s!2326))))

(declare-fun matchR!7546 (Regex!15361 List!62383) Bool)

(assert (=> b!5480004 (= lt!2237879 (matchR!7546 r!7292 s!2326))))

(declare-datatypes ((Unit!155172 0))(
  ( (Unit!155173) )
))
(declare-fun lt!2237872 () Unit!155172)

(declare-fun mainMatchTheorem!2464 (Regex!15361 List!62383) Unit!155172)

(assert (=> b!5480004 (= lt!2237872 (mainMatchTheorem!2464 r!7292 s!2326))))

(declare-fun b!5480005 () Bool)

(declare-fun tp!1506091 () Bool)

(assert (=> b!5480005 (= e!3391660 tp!1506091)))

(declare-fun b!5480006 () Bool)

(declare-fun res!2336001 () Bool)

(assert (=> b!5480006 (=> res!2336001 e!3391654)))

(declare-fun generalisedUnion!1290 (List!62382) Regex!15361)

(declare-fun unfocusZipperList!803 (List!62384) List!62382)

(assert (=> b!5480006 (= res!2336001 (not (= r!7292 (generalisedUnion!1290 (unfocusZipperList!803 zl!343)))))))

(declare-fun b!5480007 () Bool)

(declare-fun res!2336004 () Bool)

(declare-fun e!3391661 () Bool)

(assert (=> b!5480007 (=> res!2336004 e!3391661)))

(declare-fun lt!2237866 () Context!9490)

(declare-fun unfocusZipper!1103 (List!62384) Regex!15361)

(assert (=> b!5480007 (= res!2336004 (not (= (unfocusZipper!1103 (Cons!62260 lt!2237866 Nil!62260)) r!7292)))))

(declare-fun b!5480008 () Bool)

(assert (=> b!5480008 (= e!3391653 e!3391667)))

(declare-fun res!2335999 () Bool)

(assert (=> b!5480008 (=> (not res!2335999) (not e!3391667))))

(declare-fun lt!2237880 () Regex!15361)

(assert (=> b!5480008 (= res!2335999 (= r!7292 lt!2237880))))

(assert (=> b!5480008 (= lt!2237880 (unfocusZipper!1103 zl!343))))

(declare-fun b!5480009 () Bool)

(declare-fun res!2336002 () Bool)

(assert (=> b!5480009 (=> res!2336002 e!3391661)))

(declare-fun lt!2237877 () Context!9490)

(assert (=> b!5480009 (= res!2336002 (not (= (unfocusZipper!1103 (Cons!62260 lt!2237877 Nil!62260)) (reg!15690 r!7292))))))

(declare-fun b!5480010 () Bool)

(declare-fun e!3391658 () Bool)

(declare-fun e!3391668 () Bool)

(assert (=> b!5480010 (= e!3391658 e!3391668)))

(declare-fun res!2335996 () Bool)

(assert (=> b!5480010 (=> res!2335996 e!3391668)))

(assert (=> b!5480010 (= res!2335996 (not (= lt!2237870 (derivationStepZipperDown!787 (reg!15690 r!7292) lt!2237866 (h!68707 s!2326)))))))

(declare-fun lt!2237876 () List!62382)

(assert (=> b!5480010 (= lt!2237866 (Context!9491 lt!2237876))))

(declare-fun lambda!292325 () Int)

(declare-fun lt!2237884 () Context!9490)

(declare-fun lt!2237881 () (InoxSet Context!9490))

(declare-fun flatMap!1064 ((InoxSet Context!9490) Int) (InoxSet Context!9490))

(assert (=> b!5480010 (= (flatMap!1064 lt!2237881 lambda!292325) (derivationStepZipperUp!713 lt!2237884 (h!68707 s!2326)))))

(declare-fun lt!2237874 () Unit!155172)

(declare-fun lemmaFlatMapOnSingletonSet!596 ((InoxSet Context!9490) Context!9490 Int) Unit!155172)

(assert (=> b!5480010 (= lt!2237874 (lemmaFlatMapOnSingletonSet!596 lt!2237881 lt!2237884 lambda!292325))))

(declare-fun lt!2237883 () (InoxSet Context!9490))

(assert (=> b!5480010 (= lt!2237883 (derivationStepZipperUp!713 lt!2237884 (h!68707 s!2326)))))

(assert (=> b!5480010 (= lt!2237881 (store ((as const (Array Context!9490 Bool)) false) lt!2237884 true))))

(assert (=> b!5480010 (= lt!2237884 (Context!9491 (Cons!62258 (reg!15690 r!7292) lt!2237876)))))

(assert (=> b!5480010 (= lt!2237876 (Cons!62258 r!7292 Nil!62258))))

(declare-fun setIsEmpty!36027 () Bool)

(assert (=> setIsEmpty!36027 setRes!36027))

(declare-fun b!5480011 () Bool)

(declare-fun e!3391666 () Bool)

(assert (=> b!5480011 (= e!3391666 e!3391661)))

(declare-fun res!2335986 () Bool)

(assert (=> b!5480011 (=> res!2335986 e!3391661)))

(declare-fun lt!2237867 () (InoxSet Context!9490))

(assert (=> b!5480011 (= res!2335986 (not (= lt!2237870 (derivationStepZipper!1556 lt!2237867 (h!68707 s!2326)))))))

(assert (=> b!5480011 (= (flatMap!1064 lt!2237867 lambda!292325) (derivationStepZipperUp!713 lt!2237866 (h!68707 s!2326)))))

(declare-fun lt!2237869 () Unit!155172)

(assert (=> b!5480011 (= lt!2237869 (lemmaFlatMapOnSingletonSet!596 lt!2237867 lt!2237866 lambda!292325))))

(declare-fun lt!2237878 () (InoxSet Context!9490))

(assert (=> b!5480011 (= (flatMap!1064 lt!2237878 lambda!292325) (derivationStepZipperUp!713 lt!2237877 (h!68707 s!2326)))))

(declare-fun lt!2237868 () Unit!155172)

(assert (=> b!5480011 (= lt!2237868 (lemmaFlatMapOnSingletonSet!596 lt!2237878 lt!2237877 lambda!292325))))

(declare-fun lt!2237886 () (InoxSet Context!9490))

(assert (=> b!5480011 (= lt!2237886 (derivationStepZipperUp!713 lt!2237866 (h!68707 s!2326)))))

(declare-fun lt!2237865 () (InoxSet Context!9490))

(assert (=> b!5480011 (= lt!2237865 (derivationStepZipperUp!713 lt!2237877 (h!68707 s!2326)))))

(assert (=> b!5480011 (= lt!2237867 (store ((as const (Array Context!9490 Bool)) false) lt!2237866 true))))

(assert (=> b!5480011 (= lt!2237878 (store ((as const (Array Context!9490 Bool)) false) lt!2237877 true))))

(assert (=> b!5480011 (= lt!2237877 (Context!9491 (Cons!62258 (reg!15690 r!7292) Nil!62258)))))

(declare-fun b!5480012 () Bool)

(declare-fun e!3391664 () Bool)

(declare-fun tp!1506087 () Bool)

(assert (=> b!5480012 (= e!3391664 tp!1506087)))

(declare-fun b!5480013 () Bool)

(declare-fun tp!1506090 () Bool)

(declare-fun tp!1506095 () Bool)

(assert (=> b!5480013 (= e!3391664 (and tp!1506090 tp!1506095))))

(declare-fun b!5480014 () Bool)

(declare-fun e!3391657 () Bool)

(declare-fun lt!2237863 () Bool)

(assert (=> b!5480014 (= e!3391657 lt!2237863)))

(assert (=> b!5480015 (= e!3391654 e!3391662)))

(declare-fun res!2336005 () Bool)

(assert (=> b!5480015 (=> res!2336005 e!3391662)))

(assert (=> b!5480015 (= res!2336005 (not (= lt!2237879 e!3391657)))))

(declare-fun res!2335992 () Bool)

(assert (=> b!5480015 (=> res!2335992 e!3391657)))

(declare-fun isEmpty!34214 (List!62383) Bool)

(assert (=> b!5480015 (= res!2335992 (isEmpty!34214 s!2326))))

(declare-fun Exists!2540 (Int) Bool)

(assert (=> b!5480015 (= (Exists!2540 lambda!292322) (Exists!2540 lambda!292324))))

(declare-fun lt!2237873 () Unit!155172)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1190 (Regex!15361 Regex!15361 List!62383) Unit!155172)

(assert (=> b!5480015 (= lt!2237873 (lemmaExistCutMatchRandMatchRSpecEquivalent!1190 (reg!15690 r!7292) r!7292 s!2326))))

(assert (=> b!5480015 (= (Exists!2540 lambda!292322) (Exists!2540 lambda!292323))))

(declare-fun lt!2237871 () Unit!155172)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!514 (Regex!15361 List!62383) Unit!155172)

(assert (=> b!5480015 (= lt!2237871 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!514 (reg!15690 r!7292) s!2326))))

(assert (=> b!5480015 (= lt!2237863 (Exists!2540 lambda!292322))))

(declare-datatypes ((tuple2!65116 0))(
  ( (tuple2!65117 (_1!35861 List!62383) (_2!35861 List!62383)) )
))
(declare-datatypes ((Option!15470 0))(
  ( (None!15469) (Some!15469 (v!51498 tuple2!65116)) )
))
(declare-fun isDefined!12173 (Option!15470) Bool)

(declare-fun findConcatSeparation!1884 (Regex!15361 Regex!15361 List!62383 List!62383 List!62383) Option!15470)

(assert (=> b!5480015 (= lt!2237863 (isDefined!12173 (findConcatSeparation!1884 (reg!15690 r!7292) r!7292 Nil!62259 s!2326 s!2326)))))

(declare-fun lt!2237875 () Unit!155172)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1648 (Regex!15361 Regex!15361 List!62383) Unit!155172)

(assert (=> b!5480015 (= lt!2237875 (lemmaFindConcatSeparationEquivalentToExists!1648 (reg!15690 r!7292) r!7292 s!2326))))

(declare-fun b!5480016 () Bool)

(declare-fun res!2335997 () Bool)

(assert (=> b!5480016 (=> res!2335997 e!3391668)))

(assert (=> b!5480016 (= res!2335997 (not (= (matchZipper!1579 lt!2237881 s!2326) (matchZipper!1579 (derivationStepZipper!1556 lt!2237881 (h!68707 s!2326)) (t!375614 s!2326)))))))

(assert (=> b!5480017 (= e!3391655 e!3391658)))

(declare-fun res!2335995 () Bool)

(assert (=> b!5480017 (=> res!2335995 e!3391658)))

(assert (=> b!5480017 (= res!2335995 (not (= lt!2237870 lt!2237887)))))

(assert (=> b!5480017 (= (flatMap!1064 z!1189 lambda!292325) (derivationStepZipperUp!713 (h!68708 zl!343) (h!68707 s!2326)))))

(declare-fun lt!2237860 () Unit!155172)

(assert (=> b!5480017 (= lt!2237860 (lemmaFlatMapOnSingletonSet!596 z!1189 (h!68708 zl!343) lambda!292325))))

(declare-fun b!5480018 () Bool)

(declare-fun res!2335989 () Bool)

(assert (=> b!5480018 (=> res!2335989 e!3391654)))

(declare-fun isEmpty!34215 (List!62384) Bool)

(assert (=> b!5480018 (= res!2335989 (not (isEmpty!34215 (t!375615 zl!343))))))

(declare-fun b!5480019 () Bool)

(declare-fun tp!1506086 () Bool)

(assert (=> b!5480019 (= e!3391659 tp!1506086)))

(declare-fun b!5480020 () Bool)

(declare-fun res!2336003 () Bool)

(assert (=> b!5480020 (=> res!2336003 e!3391654)))

(assert (=> b!5480020 (= res!2336003 (not ((_ is Cons!62258) (exprs!5245 (h!68708 zl!343)))))))

(declare-fun b!5480021 () Bool)

(assert (=> b!5480021 (= e!3391668 e!3391666)))

(declare-fun res!2336006 () Bool)

(assert (=> b!5480021 (=> res!2336006 e!3391666)))

(declare-fun lt!2237861 () Regex!15361)

(assert (=> b!5480021 (= res!2336006 (not (= (unfocusZipper!1103 (Cons!62260 lt!2237884 Nil!62260)) lt!2237861)))))

(assert (=> b!5480021 (= lt!2237861 (Concat!24206 (reg!15690 r!7292) r!7292))))

(declare-fun b!5480022 () Bool)

(declare-fun res!2336000 () Bool)

(assert (=> b!5480022 (=> res!2336000 e!3391662)))

(assert (=> b!5480022 (= res!2336000 ((_ is Nil!62259) s!2326))))

(declare-fun b!5480023 () Bool)

(assert (=> b!5480023 (= e!3391661 e!3391665)))

(declare-fun res!2335993 () Bool)

(assert (=> b!5480023 (=> res!2335993 e!3391665)))

(declare-fun lt!2237882 () Bool)

(assert (=> b!5480023 (= res!2335993 lt!2237882)))

(assert (=> b!5480023 (= lt!2237882 (matchRSpec!2464 lt!2237861 s!2326))))

(assert (=> b!5480023 (= lt!2237882 (matchR!7546 lt!2237861 s!2326))))

(declare-fun lt!2237864 () Unit!155172)

(assert (=> b!5480023 (= lt!2237864 (mainMatchTheorem!2464 lt!2237861 s!2326))))

(declare-fun b!5480024 () Bool)

(declare-fun tp!1506094 () Bool)

(declare-fun tp!1506088 () Bool)

(assert (=> b!5480024 (= e!3391664 (and tp!1506094 tp!1506088))))

(declare-fun b!5480025 () Bool)

(declare-fun res!2335994 () Bool)

(assert (=> b!5480025 (=> res!2335994 e!3391668)))

(assert (=> b!5480025 (= res!2335994 (or (not (= lt!2237880 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5480026 () Bool)

(declare-fun res!2335991 () Bool)

(assert (=> b!5480026 (=> res!2335991 e!3391654)))

(declare-fun generalisedConcat!1030 (List!62382) Regex!15361)

(assert (=> b!5480026 (= res!2335991 (not (= r!7292 (generalisedConcat!1030 (exprs!5245 (h!68708 zl!343))))))))

(declare-fun res!2335988 () Bool)

(assert (=> start!573250 (=> (not res!2335988) (not e!3391653))))

(declare-fun validRegex!7097 (Regex!15361) Bool)

(assert (=> start!573250 (= res!2335988 (validRegex!7097 r!7292))))

(assert (=> start!573250 e!3391653))

(assert (=> start!573250 e!3391664))

(declare-fun condSetEmpty!36027 () Bool)

(assert (=> start!573250 (= condSetEmpty!36027 (= z!1189 ((as const (Array Context!9490 Bool)) false)))))

(assert (=> start!573250 setRes!36027))

(assert (=> start!573250 e!3391663))

(assert (=> start!573250 e!3391656))

(declare-fun b!5480002 () Bool)

(assert (=> b!5480002 (= e!3391664 tp_is_empty!39975)))

(assert (= (and start!573250 res!2335988) b!5480001))

(assert (= (and b!5480001 res!2335987) b!5480008))

(assert (= (and b!5480008 res!2335999) b!5480004))

(assert (= (and b!5480004 (not res!2335985)) b!5480018))

(assert (= (and b!5480018 (not res!2335989)) b!5480026))

(assert (= (and b!5480026 (not res!2335991)) b!5480020))

(assert (= (and b!5480020 (not res!2336003)) b!5480006))

(assert (= (and b!5480006 (not res!2336001)) b!5479997))

(assert (= (and b!5479997 (not res!2335990)) b!5480015))

(assert (= (and b!5480015 (not res!2335992)) b!5480014))

(assert (= (and b!5480015 (not res!2336005)) b!5480022))

(assert (= (and b!5480022 (not res!2336000)) b!5479998))

(assert (= (and b!5479998 (not res!2335998)) b!5480017))

(assert (= (and b!5480017 (not res!2335995)) b!5480010))

(assert (= (and b!5480010 (not res!2335996)) b!5480016))

(assert (= (and b!5480016 (not res!2335997)) b!5480025))

(assert (= (and b!5480025 (not res!2335994)) b!5480021))

(assert (= (and b!5480021 (not res!2336006)) b!5480011))

(assert (= (and b!5480011 (not res!2335986)) b!5480009))

(assert (= (and b!5480009 (not res!2336002)) b!5480007))

(assert (= (and b!5480007 (not res!2336004)) b!5480023))

(assert (= (and b!5480023 (not res!2335993)) b!5480000))

(assert (= (and start!573250 ((_ is ElementMatch!15361) r!7292)) b!5480002))

(assert (= (and start!573250 ((_ is Concat!24206) r!7292)) b!5480013))

(assert (= (and start!573250 ((_ is Star!15361) r!7292)) b!5480012))

(assert (= (and start!573250 ((_ is Union!15361) r!7292)) b!5480024))

(assert (= (and start!573250 condSetEmpty!36027) setIsEmpty!36027))

(assert (= (and start!573250 (not condSetEmpty!36027)) setNonEmpty!36027))

(assert (= setNonEmpty!36027 b!5480019))

(assert (= b!5479999 b!5480005))

(assert (= (and start!573250 ((_ is Cons!62260) zl!343)) b!5479999))

(assert (= (and start!573250 ((_ is Cons!62259) s!2326)) b!5480003))

(declare-fun m!6495886 () Bool)

(assert (=> b!5480021 m!6495886))

(declare-fun m!6495888 () Bool)

(assert (=> b!5480001 m!6495888))

(declare-fun m!6495890 () Bool)

(assert (=> b!5480011 m!6495890))

(declare-fun m!6495892 () Bool)

(assert (=> b!5480011 m!6495892))

(declare-fun m!6495894 () Bool)

(assert (=> b!5480011 m!6495894))

(declare-fun m!6495896 () Bool)

(assert (=> b!5480011 m!6495896))

(declare-fun m!6495898 () Bool)

(assert (=> b!5480011 m!6495898))

(declare-fun m!6495900 () Bool)

(assert (=> b!5480011 m!6495900))

(declare-fun m!6495902 () Bool)

(assert (=> b!5480011 m!6495902))

(declare-fun m!6495904 () Bool)

(assert (=> b!5480011 m!6495904))

(declare-fun m!6495906 () Bool)

(assert (=> b!5480011 m!6495906))

(declare-fun m!6495908 () Bool)

(assert (=> b!5480004 m!6495908))

(declare-fun m!6495910 () Bool)

(assert (=> b!5480004 m!6495910))

(declare-fun m!6495912 () Bool)

(assert (=> b!5480004 m!6495912))

(declare-fun m!6495914 () Bool)

(assert (=> b!5480006 m!6495914))

(assert (=> b!5480006 m!6495914))

(declare-fun m!6495916 () Bool)

(assert (=> b!5480006 m!6495916))

(declare-fun m!6495918 () Bool)

(assert (=> b!5480018 m!6495918))

(declare-fun m!6495920 () Bool)

(assert (=> b!5480023 m!6495920))

(declare-fun m!6495922 () Bool)

(assert (=> b!5480023 m!6495922))

(declare-fun m!6495924 () Bool)

(assert (=> b!5480023 m!6495924))

(declare-fun m!6495926 () Bool)

(assert (=> b!5480009 m!6495926))

(declare-fun m!6495928 () Bool)

(assert (=> b!5480026 m!6495928))

(declare-fun m!6495930 () Bool)

(assert (=> b!5480016 m!6495930))

(declare-fun m!6495932 () Bool)

(assert (=> b!5480016 m!6495932))

(assert (=> b!5480016 m!6495932))

(declare-fun m!6495934 () Bool)

(assert (=> b!5480016 m!6495934))

(declare-fun m!6495936 () Bool)

(assert (=> setNonEmpty!36027 m!6495936))

(declare-fun m!6495938 () Bool)

(assert (=> b!5480015 m!6495938))

(declare-fun m!6495940 () Bool)

(assert (=> b!5480015 m!6495940))

(declare-fun m!6495942 () Bool)

(assert (=> b!5480015 m!6495942))

(declare-fun m!6495944 () Bool)

(assert (=> b!5480015 m!6495944))

(declare-fun m!6495946 () Bool)

(assert (=> b!5480015 m!6495946))

(declare-fun m!6495948 () Bool)

(assert (=> b!5480015 m!6495948))

(assert (=> b!5480015 m!6495946))

(declare-fun m!6495950 () Bool)

(assert (=> b!5480015 m!6495950))

(declare-fun m!6495952 () Bool)

(assert (=> b!5480015 m!6495952))

(assert (=> b!5480015 m!6495946))

(assert (=> b!5480015 m!6495950))

(declare-fun m!6495954 () Bool)

(assert (=> b!5480015 m!6495954))

(declare-fun m!6495956 () Bool)

(assert (=> b!5480000 m!6495956))

(declare-fun m!6495958 () Bool)

(assert (=> b!5480017 m!6495958))

(declare-fun m!6495960 () Bool)

(assert (=> b!5480017 m!6495960))

(declare-fun m!6495962 () Bool)

(assert (=> b!5480017 m!6495962))

(declare-fun m!6495964 () Bool)

(assert (=> b!5479999 m!6495964))

(declare-fun m!6495966 () Bool)

(assert (=> b!5480008 m!6495966))

(declare-fun m!6495968 () Bool)

(assert (=> b!5480007 m!6495968))

(declare-fun m!6495970 () Bool)

(assert (=> b!5479998 m!6495970))

(declare-fun m!6495972 () Bool)

(assert (=> b!5479998 m!6495972))

(declare-fun m!6495974 () Bool)

(assert (=> b!5479998 m!6495974))

(declare-fun m!6495976 () Bool)

(assert (=> b!5480010 m!6495976))

(declare-fun m!6495978 () Bool)

(assert (=> b!5480010 m!6495978))

(declare-fun m!6495980 () Bool)

(assert (=> b!5480010 m!6495980))

(declare-fun m!6495982 () Bool)

(assert (=> b!5480010 m!6495982))

(declare-fun m!6495984 () Bool)

(assert (=> b!5480010 m!6495984))

(declare-fun m!6495986 () Bool)

(assert (=> start!573250 m!6495986))

(check-sat (not b!5480024) (not b!5480023) (not b!5480011) (not b!5480007) (not start!573250) (not setNonEmpty!36027) (not b!5480016) (not b!5480019) (not b!5480013) (not b!5479998) (not b!5480009) (not b!5479999) (not b!5480015) (not b!5480021) (not b!5480003) (not b!5480017) (not b!5480026) (not b!5480008) (not b!5480001) (not b!5480005) (not b!5480012) (not b!5480004) tp_is_empty!39975 (not b!5480000) (not b!5480018) (not b!5480006) (not b!5480010))
(check-sat)
