; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549142 () Bool)

(assert start!549142)

(declare-fun e!3230777 () Bool)

(declare-fun e!3230776 () Bool)

(declare-datatypes ((C!29680 0))(
  ( (C!29681 (val!24542 Int)) )
))
(declare-datatypes ((Regex!14705 0))(
  ( (ElementMatch!14705 (c!893770 C!29680)) (Concat!23550 (regOne!29922 Regex!14705) (regTwo!29922 Regex!14705)) (EmptyExpr!14705) (Star!14705 (reg!15034 Regex!14705)) (EmptyLang!14705) (Union!14705 (regOne!29923 Regex!14705) (regTwo!29923 Regex!14705)) )
))
(declare-datatypes ((List!60414 0))(
  ( (Nil!60290) (Cons!60290 (h!66738 Regex!14705) (t!373567 List!60414)) )
))
(declare-datatypes ((Context!8178 0))(
  ( (Context!8179 (exprs!4589 List!60414)) )
))
(declare-datatypes ((List!60415 0))(
  ( (Nil!60291) (Cons!60291 (h!66739 Context!8178) (t!373568 List!60415)) )
))
(declare-fun zl!343 () List!60415)

(declare-fun tp!1454989 () Bool)

(declare-fun b!5186096 () Bool)

(declare-fun inv!80009 (Context!8178) Bool)

(assert (=> b!5186096 (= e!3230776 (and (inv!80009 (h!66739 zl!343)) e!3230777 tp!1454989))))

(declare-fun b!5186097 () Bool)

(declare-fun res!2202932 () Bool)

(declare-fun e!3230779 () Bool)

(assert (=> b!5186097 (=> res!2202932 e!3230779)))

(declare-fun r!7292 () Regex!14705)

(declare-fun generalisedUnion!634 (List!60414) Regex!14705)

(declare-fun unfocusZipperList!147 (List!60415) List!60414)

(assert (=> b!5186097 (= res!2202932 (not (= r!7292 (generalisedUnion!634 (unfocusZipperList!147 zl!343)))))))

(declare-fun b!5186098 () Bool)

(declare-fun res!2202928 () Bool)

(assert (=> b!5186098 (=> res!2202928 e!3230779)))

(declare-fun isEmpty!32270 (List!60415) Bool)

(assert (=> b!5186098 (= res!2202928 (not (isEmpty!32270 (t!373568 zl!343))))))

(declare-fun b!5186099 () Bool)

(declare-fun res!2202925 () Bool)

(declare-fun e!3230782 () Bool)

(assert (=> b!5186099 (=> (not res!2202925) (not e!3230782))))

(declare-fun unfocusZipper!447 (List!60415) Regex!14705)

(assert (=> b!5186099 (= res!2202925 (= r!7292 (unfocusZipper!447 zl!343)))))

(declare-fun res!2202927 () Bool)

(declare-fun e!3230775 () Bool)

(assert (=> start!549142 (=> (not res!2202927) (not e!3230775))))

(declare-fun validRegex!6441 (Regex!14705) Bool)

(assert (=> start!549142 (= res!2202927 (validRegex!6441 r!7292))))

(assert (=> start!549142 e!3230775))

(declare-fun e!3230781 () Bool)

(assert (=> start!549142 e!3230781))

(declare-fun e!3230778 () Bool)

(assert (=> start!549142 e!3230778))

(declare-fun condSetEmpty!32674 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8178))

(assert (=> start!549142 (= condSetEmpty!32674 (= z!1189 ((as const (Array Context!8178 Bool)) false)))))

(declare-fun setRes!32674 () Bool)

(assert (=> start!549142 setRes!32674))

(assert (=> start!549142 e!3230776))

(declare-fun b!5186100 () Bool)

(declare-fun tp_is_empty!38663 () Bool)

(assert (=> b!5186100 (= e!3230781 tp_is_empty!38663)))

(declare-fun setIsEmpty!32674 () Bool)

(assert (=> setIsEmpty!32674 setRes!32674))

(declare-fun b!5186101 () Bool)

(declare-fun e!3230783 () Bool)

(declare-fun tp!1454992 () Bool)

(assert (=> b!5186101 (= e!3230783 tp!1454992)))

(declare-fun b!5186102 () Bool)

(assert (=> b!5186102 (= e!3230782 (not e!3230779))))

(declare-fun res!2202929 () Bool)

(assert (=> b!5186102 (=> res!2202929 e!3230779)))

(get-info :version)

(assert (=> b!5186102 (= res!2202929 (not ((_ is Cons!60291) zl!343)))))

(declare-fun lt!2136499 () Bool)

(declare-datatypes ((List!60416 0))(
  ( (Nil!60292) (Cons!60292 (h!66740 C!29680) (t!373569 List!60416)) )
))
(declare-fun s!2326 () List!60416)

(declare-fun matchRSpec!1808 (Regex!14705 List!60416) Bool)

(assert (=> b!5186102 (= lt!2136499 (matchRSpec!1808 r!7292 s!2326))))

(declare-fun matchR!6890 (Regex!14705 List!60416) Bool)

(assert (=> b!5186102 (= lt!2136499 (matchR!6890 r!7292 s!2326))))

(declare-datatypes ((Unit!152244 0))(
  ( (Unit!152245) )
))
(declare-fun lt!2136501 () Unit!152244)

(declare-fun mainMatchTheorem!1808 (Regex!14705 List!60416) Unit!152244)

(assert (=> b!5186102 (= lt!2136501 (mainMatchTheorem!1808 r!7292 s!2326))))

(declare-fun b!5186103 () Bool)

(declare-fun tp!1454991 () Bool)

(declare-fun tp!1454996 () Bool)

(assert (=> b!5186103 (= e!3230781 (and tp!1454991 tp!1454996))))

(declare-fun b!5186104 () Bool)

(assert (=> b!5186104 (= e!3230775 e!3230782)))

(declare-fun res!2202931 () Bool)

(assert (=> b!5186104 (=> (not res!2202931) (not e!3230782))))

(declare-fun lt!2136497 () List!60415)

(assert (=> b!5186104 (= res!2202931 (= lt!2136497 zl!343))))

(declare-fun toList!8489 ((InoxSet Context!8178)) List!60415)

(assert (=> b!5186104 (= lt!2136497 (toList!8489 z!1189))))

(declare-fun b!5186105 () Bool)

(declare-fun res!2202934 () Bool)

(assert (=> b!5186105 (=> res!2202934 e!3230779)))

(assert (=> b!5186105 (= res!2202934 (not ((_ is Cons!60290) (exprs!4589 (h!66739 zl!343)))))))

(declare-fun b!5186106 () Bool)

(declare-fun e!3230780 () Bool)

(assert (=> b!5186106 (= e!3230780 true)))

(declare-fun lt!2136500 () Regex!14705)

(assert (=> b!5186106 (= lt!2136500 (unfocusZipper!447 lt!2136497))))

(declare-fun b!5186107 () Bool)

(assert (=> b!5186107 (= e!3230779 e!3230780)))

(declare-fun res!2202930 () Bool)

(assert (=> b!5186107 (=> res!2202930 e!3230780)))

(declare-fun lt!2136502 () Bool)

(declare-fun lt!2136503 () Bool)

(assert (=> b!5186107 (= res!2202930 (or (not (= lt!2136499 (or lt!2136502 lt!2136503))) (not ((_ is Nil!60292) s!2326))))))

(assert (=> b!5186107 (= lt!2136503 (matchRSpec!1808 (regTwo!29923 r!7292) s!2326))))

(assert (=> b!5186107 (= lt!2136503 (matchR!6890 (regTwo!29923 r!7292) s!2326))))

(declare-fun lt!2136496 () Unit!152244)

(assert (=> b!5186107 (= lt!2136496 (mainMatchTheorem!1808 (regTwo!29923 r!7292) s!2326))))

(assert (=> b!5186107 (= lt!2136502 (matchRSpec!1808 (regOne!29923 r!7292) s!2326))))

(assert (=> b!5186107 (= lt!2136502 (matchR!6890 (regOne!29923 r!7292) s!2326))))

(declare-fun lt!2136498 () Unit!152244)

(assert (=> b!5186107 (= lt!2136498 (mainMatchTheorem!1808 (regOne!29923 r!7292) s!2326))))

(declare-fun setNonEmpty!32674 () Bool)

(declare-fun setElem!32674 () Context!8178)

(declare-fun tp!1454995 () Bool)

(assert (=> setNonEmpty!32674 (= setRes!32674 (and tp!1454995 (inv!80009 setElem!32674) e!3230783))))

(declare-fun setRest!32674 () (InoxSet Context!8178))

(assert (=> setNonEmpty!32674 (= z!1189 ((_ map or) (store ((as const (Array Context!8178 Bool)) false) setElem!32674 true) setRest!32674))))

(declare-fun b!5186108 () Bool)

(declare-fun tp!1454990 () Bool)

(assert (=> b!5186108 (= e!3230781 tp!1454990)))

(declare-fun b!5186109 () Bool)

(declare-fun res!2202926 () Bool)

(assert (=> b!5186109 (=> res!2202926 e!3230779)))

(declare-fun generalisedConcat!374 (List!60414) Regex!14705)

(assert (=> b!5186109 (= res!2202926 (not (= r!7292 (generalisedConcat!374 (exprs!4589 (h!66739 zl!343))))))))

(declare-fun b!5186110 () Bool)

(declare-fun tp!1454988 () Bool)

(assert (=> b!5186110 (= e!3230777 tp!1454988)))

(declare-fun b!5186111 () Bool)

(declare-fun tp!1454993 () Bool)

(assert (=> b!5186111 (= e!3230778 (and tp_is_empty!38663 tp!1454993))))

(declare-fun b!5186112 () Bool)

(declare-fun res!2202933 () Bool)

(assert (=> b!5186112 (=> res!2202933 e!3230779)))

(assert (=> b!5186112 (= res!2202933 (or ((_ is EmptyExpr!14705) r!7292) ((_ is EmptyLang!14705) r!7292) ((_ is ElementMatch!14705) r!7292) (not ((_ is Union!14705) r!7292))))))

(declare-fun b!5186113 () Bool)

(declare-fun tp!1454997 () Bool)

(declare-fun tp!1454994 () Bool)

(assert (=> b!5186113 (= e!3230781 (and tp!1454997 tp!1454994))))

(assert (= (and start!549142 res!2202927) b!5186104))

(assert (= (and b!5186104 res!2202931) b!5186099))

(assert (= (and b!5186099 res!2202925) b!5186102))

(assert (= (and b!5186102 (not res!2202929)) b!5186098))

(assert (= (and b!5186098 (not res!2202928)) b!5186109))

(assert (= (and b!5186109 (not res!2202926)) b!5186105))

(assert (= (and b!5186105 (not res!2202934)) b!5186097))

(assert (= (and b!5186097 (not res!2202932)) b!5186112))

(assert (= (and b!5186112 (not res!2202933)) b!5186107))

(assert (= (and b!5186107 (not res!2202930)) b!5186106))

(assert (= (and start!549142 ((_ is ElementMatch!14705) r!7292)) b!5186100))

(assert (= (and start!549142 ((_ is Concat!23550) r!7292)) b!5186103))

(assert (= (and start!549142 ((_ is Star!14705) r!7292)) b!5186108))

(assert (= (and start!549142 ((_ is Union!14705) r!7292)) b!5186113))

(assert (= (and start!549142 ((_ is Cons!60292) s!2326)) b!5186111))

(assert (= (and start!549142 condSetEmpty!32674) setIsEmpty!32674))

(assert (= (and start!549142 (not condSetEmpty!32674)) setNonEmpty!32674))

(assert (= setNonEmpty!32674 b!5186101))

(assert (= b!5186096 b!5186110))

(assert (= (and start!549142 ((_ is Cons!60291) zl!343)) b!5186096))

(declare-fun m!6244436 () Bool)

(assert (=> b!5186104 m!6244436))

(declare-fun m!6244438 () Bool)

(assert (=> b!5186107 m!6244438))

(declare-fun m!6244440 () Bool)

(assert (=> b!5186107 m!6244440))

(declare-fun m!6244442 () Bool)

(assert (=> b!5186107 m!6244442))

(declare-fun m!6244444 () Bool)

(assert (=> b!5186107 m!6244444))

(declare-fun m!6244446 () Bool)

(assert (=> b!5186107 m!6244446))

(declare-fun m!6244448 () Bool)

(assert (=> b!5186107 m!6244448))

(declare-fun m!6244450 () Bool)

(assert (=> b!5186096 m!6244450))

(declare-fun m!6244452 () Bool)

(assert (=> b!5186106 m!6244452))

(declare-fun m!6244454 () Bool)

(assert (=> b!5186109 m!6244454))

(declare-fun m!6244456 () Bool)

(assert (=> b!5186099 m!6244456))

(declare-fun m!6244458 () Bool)

(assert (=> b!5186098 m!6244458))

(declare-fun m!6244460 () Bool)

(assert (=> b!5186097 m!6244460))

(assert (=> b!5186097 m!6244460))

(declare-fun m!6244462 () Bool)

(assert (=> b!5186097 m!6244462))

(declare-fun m!6244464 () Bool)

(assert (=> setNonEmpty!32674 m!6244464))

(declare-fun m!6244466 () Bool)

(assert (=> start!549142 m!6244466))

(declare-fun m!6244468 () Bool)

(assert (=> b!5186102 m!6244468))

(declare-fun m!6244470 () Bool)

(assert (=> b!5186102 m!6244470))

(declare-fun m!6244472 () Bool)

(assert (=> b!5186102 m!6244472))

(check-sat (not b!5186097) (not setNonEmpty!32674) (not start!549142) (not b!5186103) (not b!5186101) (not b!5186113) (not b!5186107) (not b!5186108) (not b!5186109) (not b!5186099) tp_is_empty!38663 (not b!5186104) (not b!5186110) (not b!5186096) (not b!5186106) (not b!5186102) (not b!5186111) (not b!5186098))
(check-sat)
