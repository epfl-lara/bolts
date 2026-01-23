; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!706988 () Bool)

(assert start!706988)

(declare-fun b!7257794 () Bool)

(assert (=> b!7257794 true))

(declare-fun b!7257795 () Bool)

(assert (=> b!7257795 true))

(declare-fun bs!1908036 () Bool)

(assert (= bs!1908036 (and b!7257795 b!7257794)))

(declare-fun lambda!445633 () Int)

(declare-fun lambda!445635 () Int)

(declare-datatypes ((C!37620 0))(
  ( (C!37621 (val!28758 Int)) )
))
(declare-datatypes ((List!70599 0))(
  ( (Nil!70475) (Cons!70475 (h!76923 C!37620) (t!384663 List!70599)) )
))
(declare-fun lt!2588547 () List!70599)

(declare-fun s1!1971 () List!70599)

(assert (=> bs!1908036 (= (= lt!2588547 (t!384663 s1!1971)) (= lambda!445635 lambda!445633))))

(assert (=> b!7257795 true))

(declare-fun b!7257788 () Bool)

(declare-fun e!4352000 () Bool)

(declare-fun tp_is_empty!46811 () Bool)

(declare-fun tp!2038409 () Bool)

(assert (=> b!7257788 (= e!4352000 (and tp_is_empty!46811 tp!2038409))))

(declare-fun b!7257789 () Bool)

(declare-fun e!4351991 () Bool)

(declare-fun tp!2038408 () Bool)

(assert (=> b!7257789 (= e!4351991 (and tp_is_empty!46811 tp!2038408))))

(declare-fun b!7257790 () Bool)

(declare-fun e!4351993 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!18673 0))(
  ( (ElementMatch!18673 (c!1349763 C!37620)) (Concat!27518 (regOne!37858 Regex!18673) (regTwo!37858 Regex!18673)) (EmptyExpr!18673) (Star!18673 (reg!19002 Regex!18673)) (EmptyLang!18673) (Union!18673 (regOne!37859 Regex!18673) (regTwo!37859 Regex!18673)) )
))
(declare-datatypes ((List!70600 0))(
  ( (Nil!70476) (Cons!70476 (h!76924 Regex!18673) (t!384664 List!70600)) )
))
(declare-datatypes ((Context!15226 0))(
  ( (Context!15227 (exprs!8113 List!70600)) )
))
(declare-fun lt!2588561 () (InoxSet Context!15226))

(declare-fun matchZipper!3583 ((InoxSet Context!15226) List!70599) Bool)

(assert (=> b!7257790 (= e!4351993 (matchZipper!3583 lt!2588561 (t!384663 s1!1971)))))

(declare-fun b!7257791 () Bool)

(declare-datatypes ((Unit!163960 0))(
  ( (Unit!163961) )
))
(declare-fun e!4351992 () Unit!163960)

(declare-fun Unit!163962 () Unit!163960)

(assert (=> b!7257791 (= e!4351992 Unit!163962)))

(declare-fun ct1!232 () Context!15226)

(declare-fun lambda!445632 () Int)

(declare-fun lt!2588527 () Unit!163960)

(declare-fun ct2!328 () Context!15226)

(declare-fun lemmaConcatPreservesForall!1480 (List!70600 List!70600 Int) Unit!163960)

(assert (=> b!7257791 (= lt!2588527 (lemmaConcatPreservesForall!1480 (exprs!8113 ct1!232) (exprs!8113 ct2!328) lambda!445632))))

(declare-fun lt!2588557 () Context!15226)

(declare-fun derivationStepZipperUp!2497 (Context!15226 C!37620) (InoxSet Context!15226))

(assert (=> b!7257791 (= lt!2588561 (derivationStepZipperUp!2497 lt!2588557 (h!76923 s1!1971)))))

(declare-fun lt!2588556 () (InoxSet Context!15226))

(declare-fun lt!2588535 () Unit!163960)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1728 ((InoxSet Context!15226) (InoxSet Context!15226) List!70599) Unit!163960)

(assert (=> b!7257791 (= lt!2588535 (lemmaZipperConcatMatchesSameAsBothZippers!1728 lt!2588556 lt!2588561 (t!384663 s1!1971)))))

(declare-fun res!2943034 () Bool)

(assert (=> b!7257791 (= res!2943034 (matchZipper!3583 lt!2588556 (t!384663 s1!1971)))))

(assert (=> b!7257791 (=> res!2943034 e!4351993)))

(assert (=> b!7257791 (= (matchZipper!3583 ((_ map or) lt!2588556 lt!2588561) (t!384663 s1!1971)) e!4351993)))

(declare-fun lt!2588563 () Unit!163960)

(assert (=> b!7257791 (= lt!2588563 (lemmaConcatPreservesForall!1480 (exprs!8113 ct1!232) (exprs!8113 ct2!328) lambda!445632))))

(declare-fun lt!2588541 () (InoxSet Context!15226))

(declare-fun lt!2588528 () Context!15226)

(assert (=> b!7257791 (= lt!2588541 (derivationStepZipperUp!2497 lt!2588528 (h!76923 s1!1971)))))

(declare-fun lt!2588545 () (InoxSet Context!15226))

(declare-fun lt!2588537 () Unit!163960)

(assert (=> b!7257791 (= lt!2588537 (lemmaZipperConcatMatchesSameAsBothZippers!1728 lt!2588545 lt!2588541 lt!2588547))))

(declare-fun res!2943042 () Bool)

(assert (=> b!7257791 (= res!2943042 (matchZipper!3583 lt!2588545 lt!2588547))))

(declare-fun e!4351996 () Bool)

(assert (=> b!7257791 (=> res!2943042 e!4351996)))

(assert (=> b!7257791 (= (matchZipper!3583 ((_ map or) lt!2588545 lt!2588541) lt!2588547) e!4351996)))

(declare-fun b!7257792 () Bool)

(declare-fun e!4351990 () Bool)

(declare-fun e!4351998 () Bool)

(assert (=> b!7257792 (= e!4351990 e!4351998)))

(declare-fun res!2943037 () Bool)

(assert (=> b!7257792 (=> (not res!2943037) (not e!4351998))))

(declare-fun lt!2588551 () (InoxSet Context!15226))

(assert (=> b!7257792 (= res!2943037 (matchZipper!3583 lt!2588551 (t!384663 s1!1971)))))

(declare-fun lt!2588531 () (InoxSet Context!15226))

(declare-fun derivationStepZipper!3451 ((InoxSet Context!15226) C!37620) (InoxSet Context!15226))

(assert (=> b!7257792 (= lt!2588551 (derivationStepZipper!3451 lt!2588531 (h!76923 s1!1971)))))

(declare-fun res!2943039 () Bool)

(declare-fun e!4351994 () Bool)

(assert (=> start!706988 (=> (not res!2943039) (not e!4351994))))

(assert (=> start!706988 (= res!2943039 (matchZipper!3583 lt!2588531 s1!1971))))

(assert (=> start!706988 (= lt!2588531 (store ((as const (Array Context!15226 Bool)) false) ct1!232 true))))

(assert (=> start!706988 e!4351994))

(declare-fun e!4352001 () Bool)

(declare-fun inv!89692 (Context!15226) Bool)

(assert (=> start!706988 (and (inv!89692 ct1!232) e!4352001)))

(assert (=> start!706988 e!4351991))

(assert (=> start!706988 e!4352000))

(declare-fun e!4351989 () Bool)

(assert (=> start!706988 (and (inv!89692 ct2!328) e!4351989)))

(declare-fun b!7257793 () Bool)

(declare-fun res!2943041 () Bool)

(assert (=> b!7257793 (=> (not res!2943041) (not e!4351994))))

(declare-fun s2!1849 () List!70599)

(assert (=> b!7257793 (= res!2943041 (matchZipper!3583 (store ((as const (Array Context!15226 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun e!4351997 () Bool)

(assert (=> b!7257794 (= e!4351998 (not e!4351997))))

(declare-fun res!2943035 () Bool)

(assert (=> b!7257794 (=> res!2943035 e!4351997)))

(declare-fun exists!4424 ((InoxSet Context!15226) Int) Bool)

(assert (=> b!7257794 (= res!2943035 (not (exists!4424 lt!2588551 lambda!445633)))))

(declare-datatypes ((List!70601 0))(
  ( (Nil!70477) (Cons!70477 (h!76925 Context!15226) (t!384665 List!70601)) )
))
(declare-fun lt!2588552 () List!70601)

(declare-fun exists!4425 (List!70601 Int) Bool)

(assert (=> b!7257794 (exists!4425 lt!2588552 lambda!445633)))

(declare-fun lt!2588526 () Unit!163960)

(declare-fun lemmaZipperMatchesExistsMatchingContext!776 (List!70601 List!70599) Unit!163960)

(assert (=> b!7257794 (= lt!2588526 (lemmaZipperMatchesExistsMatchingContext!776 lt!2588552 (t!384663 s1!1971)))))

(declare-fun toList!11502 ((InoxSet Context!15226)) List!70601)

(assert (=> b!7257794 (= lt!2588552 (toList!11502 lt!2588551))))

(declare-fun lt!2588550 () (InoxSet Context!15226))

(declare-fun lt!2588558 () (InoxSet Context!15226))

(assert (=> b!7257794 (= lt!2588550 (derivationStepZipper!3451 lt!2588558 (h!76923 s1!1971)))))

(declare-fun e!4351995 () Bool)

(assert (=> b!7257795 (= e!4351995 (exists!4424 lt!2588550 lambda!445635))))

(assert (=> b!7257795 (exists!4424 lt!2588550 lambda!445635)))

(declare-fun lt!2588536 () Unit!163960)

(declare-fun lt!2588553 () Context!15226)

(declare-fun lemmaContainsThenExists!221 ((InoxSet Context!15226) Context!15226 Int) Unit!163960)

(assert (=> b!7257795 (= lt!2588536 (lemmaContainsThenExists!221 lt!2588550 lt!2588553 lambda!445635))))

(declare-fun lt!2588529 () Unit!163960)

(declare-fun lt!2588546 () Context!15226)

(assert (=> b!7257795 (= lt!2588529 (lemmaConcatPreservesForall!1480 (exprs!8113 lt!2588546) (exprs!8113 ct2!328) lambda!445632))))

(assert (=> b!7257795 (select lt!2588550 lt!2588553)))

(declare-fun lt!2588540 () Unit!163960)

(assert (=> b!7257795 (= lt!2588540 (lemmaConcatPreservesForall!1480 (exprs!8113 lt!2588546) (exprs!8113 ct2!328) lambda!445632))))

(declare-fun lt!2588534 () (InoxSet Context!15226))

(assert (=> b!7257795 (select lt!2588534 lt!2588553)))

(declare-fun lt!2588532 () Unit!163960)

(assert (=> b!7257795 (= lt!2588532 (lemmaConcatPreservesForall!1480 (exprs!8113 ct1!232) (exprs!8113 ct2!328) lambda!445632))))

(declare-fun lt!2588549 () Unit!163960)

(assert (=> b!7257795 (= lt!2588549 (lemmaConcatPreservesForall!1480 (exprs!8113 lt!2588546) (exprs!8113 ct2!328) lambda!445632))))

(declare-fun lt!2588533 () Unit!163960)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!28 (Context!15226 Context!15226 Context!15226 C!37620) Unit!163960)

(assert (=> b!7257795 (= lt!2588533 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!28 ct1!232 ct2!328 lt!2588546 (h!76923 s1!1971)))))

(declare-fun tail!14370 (List!70599) List!70599)

(declare-fun ++!16608 (List!70599 List!70599) List!70599)

(assert (=> b!7257795 (= (tail!14370 (++!16608 s1!1971 s2!1849)) lt!2588547)))

(declare-fun lt!2588544 () Unit!163960)

(assert (=> b!7257795 (= lt!2588544 e!4351992)))

(declare-fun c!1349762 () Bool)

(declare-fun nullable!7933 (Regex!18673) Bool)

(assert (=> b!7257795 (= c!1349762 (nullable!7933 (h!76924 (exprs!8113 ct1!232))))))

(declare-fun lambda!445634 () Int)

(declare-fun lt!2588525 () Context!15226)

(declare-fun flatMap!2838 ((InoxSet Context!15226) Int) (InoxSet Context!15226))

(assert (=> b!7257795 (= (flatMap!2838 lt!2588558 lambda!445634) (derivationStepZipperUp!2497 lt!2588525 (h!76923 s1!1971)))))

(declare-fun lt!2588543 () Unit!163960)

(declare-fun lemmaFlatMapOnSingletonSet!2242 ((InoxSet Context!15226) Context!15226 Int) Unit!163960)

(assert (=> b!7257795 (= lt!2588543 (lemmaFlatMapOnSingletonSet!2242 lt!2588558 lt!2588525 lambda!445634))))

(declare-fun lt!2588539 () Unit!163960)

(assert (=> b!7257795 (= lt!2588539 (lemmaConcatPreservesForall!1480 (exprs!8113 ct1!232) (exprs!8113 ct2!328) lambda!445632))))

(assert (=> b!7257795 (= (flatMap!2838 lt!2588531 lambda!445634) (derivationStepZipperUp!2497 ct1!232 (h!76923 s1!1971)))))

(declare-fun lt!2588530 () Unit!163960)

(assert (=> b!7257795 (= lt!2588530 (lemmaFlatMapOnSingletonSet!2242 lt!2588531 ct1!232 lambda!445634))))

(declare-fun derivationStepZipperDown!2667 (Regex!18673 Context!15226 C!37620) (InoxSet Context!15226))

(assert (=> b!7257795 (= lt!2588545 (derivationStepZipperDown!2667 (h!76924 (exprs!8113 ct1!232)) lt!2588528 (h!76923 s1!1971)))))

(declare-fun lt!2588555 () List!70600)

(declare-fun tail!14371 (List!70600) List!70600)

(assert (=> b!7257795 (= lt!2588528 (Context!15227 (tail!14371 lt!2588555)))))

(declare-fun b!7257796 () Bool)

(declare-fun tp!2038410 () Bool)

(assert (=> b!7257796 (= e!4351989 tp!2038410)))

(declare-fun b!7257797 () Bool)

(declare-fun Unit!163963 () Unit!163960)

(assert (=> b!7257797 (= e!4351992 Unit!163963)))

(declare-fun b!7257798 () Bool)

(declare-fun tp!2038407 () Bool)

(assert (=> b!7257798 (= e!4352001 tp!2038407)))

(declare-fun b!7257799 () Bool)

(declare-fun e!4351999 () Bool)

(assert (=> b!7257799 (= e!4351997 e!4351999)))

(declare-fun res!2943036 () Bool)

(assert (=> b!7257799 (=> res!2943036 e!4351999)))

(declare-fun isEmpty!40584 (List!70600) Bool)

(assert (=> b!7257799 (= res!2943036 (isEmpty!40584 (exprs!8113 ct1!232)))))

(declare-fun lt!2588554 () (InoxSet Context!15226))

(assert (=> b!7257799 (= lt!2588554 (derivationStepZipperUp!2497 ct1!232 (h!76923 s1!1971)))))

(declare-fun lt!2588548 () Unit!163960)

(assert (=> b!7257799 (= lt!2588548 (lemmaConcatPreservesForall!1480 (exprs!8113 lt!2588546) (exprs!8113 ct2!328) lambda!445632))))

(assert (=> b!7257799 (matchZipper!3583 (store ((as const (Array Context!15226 Bool)) false) lt!2588553 true) lt!2588547)))

(assert (=> b!7257799 (= lt!2588547 (++!16608 (t!384663 s1!1971) s2!1849))))

(declare-fun ++!16609 (List!70600 List!70600) List!70600)

(assert (=> b!7257799 (= lt!2588553 (Context!15227 (++!16609 (exprs!8113 lt!2588546) (exprs!8113 ct2!328))))))

(declare-fun lt!2588562 () Unit!163960)

(assert (=> b!7257799 (= lt!2588562 (lemmaConcatPreservesForall!1480 (exprs!8113 lt!2588546) (exprs!8113 ct2!328) lambda!445632))))

(declare-fun lt!2588559 () Unit!163960)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!418 (Context!15226 Context!15226 List!70599 List!70599) Unit!163960)

(assert (=> b!7257799 (= lt!2588559 (lemmaConcatenateContextMatchesConcatOfStrings!418 lt!2588546 ct2!328 (t!384663 s1!1971) s2!1849))))

(declare-fun getWitness!2248 ((InoxSet Context!15226) Int) Context!15226)

(assert (=> b!7257799 (= lt!2588546 (getWitness!2248 lt!2588551 lambda!445633))))

(declare-fun b!7257800 () Bool)

(assert (=> b!7257800 (= e!4351999 e!4351995)))

(declare-fun res!2943038 () Bool)

(assert (=> b!7257800 (=> res!2943038 e!4351995)))

(assert (=> b!7257800 (= res!2943038 (isEmpty!40584 lt!2588555))))

(declare-fun lt!2588560 () Unit!163960)

(assert (=> b!7257800 (= lt!2588560 (lemmaConcatPreservesForall!1480 (exprs!8113 ct1!232) (exprs!8113 ct2!328) lambda!445632))))

(assert (=> b!7257800 (= lt!2588534 (derivationStepZipperUp!2497 lt!2588525 (h!76923 s1!1971)))))

(declare-fun lt!2588542 () Unit!163960)

(assert (=> b!7257800 (= lt!2588542 (lemmaConcatPreservesForall!1480 (exprs!8113 ct1!232) (exprs!8113 ct2!328) lambda!445632))))

(assert (=> b!7257800 (= lt!2588556 (derivationStepZipperDown!2667 (h!76924 (exprs!8113 ct1!232)) lt!2588557 (h!76923 s1!1971)))))

(assert (=> b!7257800 (= lt!2588557 (Context!15227 (tail!14371 (exprs!8113 ct1!232))))))

(declare-fun b!7257801 () Bool)

(assert (=> b!7257801 (= e!4351996 (matchZipper!3583 lt!2588541 lt!2588547))))

(declare-fun b!7257802 () Bool)

(assert (=> b!7257802 (= e!4351994 e!4351990)))

(declare-fun res!2943040 () Bool)

(assert (=> b!7257802 (=> (not res!2943040) (not e!4351990))))

(get-info :version)

(assert (=> b!7257802 (= res!2943040 (and (not ((_ is Nil!70476) (exprs!8113 ct1!232))) ((_ is Cons!70475) s1!1971)))))

(assert (=> b!7257802 (= lt!2588558 (store ((as const (Array Context!15226 Bool)) false) lt!2588525 true))))

(assert (=> b!7257802 (= lt!2588525 (Context!15227 lt!2588555))))

(assert (=> b!7257802 (= lt!2588555 (++!16609 (exprs!8113 ct1!232) (exprs!8113 ct2!328)))))

(declare-fun lt!2588538 () Unit!163960)

(assert (=> b!7257802 (= lt!2588538 (lemmaConcatPreservesForall!1480 (exprs!8113 ct1!232) (exprs!8113 ct2!328) lambda!445632))))

(assert (= (and start!706988 res!2943039) b!7257793))

(assert (= (and b!7257793 res!2943041) b!7257802))

(assert (= (and b!7257802 res!2943040) b!7257792))

(assert (= (and b!7257792 res!2943037) b!7257794))

(assert (= (and b!7257794 (not res!2943035)) b!7257799))

(assert (= (and b!7257799 (not res!2943036)) b!7257800))

(assert (= (and b!7257800 (not res!2943038)) b!7257795))

(assert (= (and b!7257795 c!1349762) b!7257791))

(assert (= (and b!7257795 (not c!1349762)) b!7257797))

(assert (= (and b!7257791 (not res!2943034)) b!7257790))

(assert (= (and b!7257791 (not res!2943042)) b!7257801))

(assert (= start!706988 b!7257798))

(assert (= (and start!706988 ((_ is Cons!70475) s1!1971)) b!7257789))

(assert (= (and start!706988 ((_ is Cons!70475) s2!1849)) b!7257788))

(assert (= start!706988 b!7257796))

(declare-fun m!7940238 () Bool)

(assert (=> b!7257795 m!7940238))

(declare-fun m!7940240 () Bool)

(assert (=> b!7257795 m!7940240))

(declare-fun m!7940242 () Bool)

(assert (=> b!7257795 m!7940242))

(declare-fun m!7940244 () Bool)

(assert (=> b!7257795 m!7940244))

(declare-fun m!7940246 () Bool)

(assert (=> b!7257795 m!7940246))

(declare-fun m!7940248 () Bool)

(assert (=> b!7257795 m!7940248))

(declare-fun m!7940250 () Bool)

(assert (=> b!7257795 m!7940250))

(assert (=> b!7257795 m!7940238))

(declare-fun m!7940252 () Bool)

(assert (=> b!7257795 m!7940252))

(declare-fun m!7940254 () Bool)

(assert (=> b!7257795 m!7940254))

(declare-fun m!7940256 () Bool)

(assert (=> b!7257795 m!7940256))

(declare-fun m!7940258 () Bool)

(assert (=> b!7257795 m!7940258))

(assert (=> b!7257795 m!7940240))

(declare-fun m!7940260 () Bool)

(assert (=> b!7257795 m!7940260))

(declare-fun m!7940262 () Bool)

(assert (=> b!7257795 m!7940262))

(assert (=> b!7257795 m!7940248))

(declare-fun m!7940264 () Bool)

(assert (=> b!7257795 m!7940264))

(assert (=> b!7257795 m!7940250))

(declare-fun m!7940266 () Bool)

(assert (=> b!7257795 m!7940266))

(declare-fun m!7940268 () Bool)

(assert (=> b!7257795 m!7940268))

(assert (=> b!7257795 m!7940248))

(declare-fun m!7940270 () Bool)

(assert (=> b!7257795 m!7940270))

(declare-fun m!7940272 () Bool)

(assert (=> b!7257795 m!7940272))

(declare-fun m!7940274 () Bool)

(assert (=> start!706988 m!7940274))

(declare-fun m!7940276 () Bool)

(assert (=> start!706988 m!7940276))

(declare-fun m!7940278 () Bool)

(assert (=> start!706988 m!7940278))

(declare-fun m!7940280 () Bool)

(assert (=> start!706988 m!7940280))

(declare-fun m!7940282 () Bool)

(assert (=> b!7257794 m!7940282))

(declare-fun m!7940284 () Bool)

(assert (=> b!7257794 m!7940284))

(declare-fun m!7940286 () Bool)

(assert (=> b!7257794 m!7940286))

(declare-fun m!7940288 () Bool)

(assert (=> b!7257794 m!7940288))

(declare-fun m!7940290 () Bool)

(assert (=> b!7257794 m!7940290))

(declare-fun m!7940292 () Bool)

(assert (=> b!7257800 m!7940292))

(assert (=> b!7257800 m!7940238))

(assert (=> b!7257800 m!7940238))

(declare-fun m!7940294 () Bool)

(assert (=> b!7257800 m!7940294))

(declare-fun m!7940296 () Bool)

(assert (=> b!7257800 m!7940296))

(assert (=> b!7257800 m!7940254))

(declare-fun m!7940298 () Bool)

(assert (=> b!7257790 m!7940298))

(assert (=> b!7257799 m!7940248))

(declare-fun m!7940300 () Bool)

(assert (=> b!7257799 m!7940300))

(assert (=> b!7257799 m!7940268))

(declare-fun m!7940302 () Bool)

(assert (=> b!7257799 m!7940302))

(declare-fun m!7940304 () Bool)

(assert (=> b!7257799 m!7940304))

(declare-fun m!7940306 () Bool)

(assert (=> b!7257799 m!7940306))

(declare-fun m!7940308 () Bool)

(assert (=> b!7257799 m!7940308))

(assert (=> b!7257799 m!7940306))

(assert (=> b!7257799 m!7940248))

(declare-fun m!7940310 () Bool)

(assert (=> b!7257799 m!7940310))

(declare-fun m!7940312 () Bool)

(assert (=> b!7257799 m!7940312))

(declare-fun m!7940314 () Bool)

(assert (=> b!7257792 m!7940314))

(declare-fun m!7940316 () Bool)

(assert (=> b!7257792 m!7940316))

(declare-fun m!7940318 () Bool)

(assert (=> b!7257802 m!7940318))

(declare-fun m!7940320 () Bool)

(assert (=> b!7257802 m!7940320))

(assert (=> b!7257802 m!7940238))

(assert (=> b!7257791 m!7940238))

(declare-fun m!7940322 () Bool)

(assert (=> b!7257791 m!7940322))

(declare-fun m!7940324 () Bool)

(assert (=> b!7257791 m!7940324))

(declare-fun m!7940326 () Bool)

(assert (=> b!7257791 m!7940326))

(declare-fun m!7940328 () Bool)

(assert (=> b!7257791 m!7940328))

(assert (=> b!7257791 m!7940238))

(declare-fun m!7940330 () Bool)

(assert (=> b!7257791 m!7940330))

(declare-fun m!7940332 () Bool)

(assert (=> b!7257791 m!7940332))

(declare-fun m!7940334 () Bool)

(assert (=> b!7257791 m!7940334))

(declare-fun m!7940336 () Bool)

(assert (=> b!7257791 m!7940336))

(declare-fun m!7940338 () Bool)

(assert (=> b!7257801 m!7940338))

(declare-fun m!7940340 () Bool)

(assert (=> b!7257793 m!7940340))

(assert (=> b!7257793 m!7940340))

(declare-fun m!7940342 () Bool)

(assert (=> b!7257793 m!7940342))

(check-sat (not b!7257791) (not b!7257794) (not b!7257795) (not b!7257792) (not start!706988) (not b!7257800) (not b!7257793) (not b!7257788) (not b!7257799) (not b!7257801) tp_is_empty!46811 (not b!7257796) (not b!7257798) (not b!7257802) (not b!7257789) (not b!7257790))
(check-sat)
