; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518756 () Bool)

(assert start!518756)

(declare-fun setIsEmpty!27778 () Bool)

(declare-fun setRes!27778 () Bool)

(assert (=> setIsEmpty!27778 setRes!27778))

(declare-fun b!4935409 () Bool)

(declare-fun e!3083692 () Bool)

(declare-fun e!3083690 () Bool)

(assert (=> b!4935409 (= e!3083692 e!3083690)))

(declare-fun res!2106296 () Bool)

(assert (=> b!4935409 (=> res!2106296 e!3083690)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27084 0))(
  ( (C!27085 (val!22876 Int)) )
))
(declare-datatypes ((Regex!13427 0))(
  ( (ElementMatch!13427 (c!841303 C!27084)) (Concat!22000 (regOne!27366 Regex!13427) (regTwo!27366 Regex!13427)) (EmptyExpr!13427) (Star!13427 (reg!13756 Regex!13427)) (EmptyLang!13427) (Union!13427 (regOne!27367 Regex!13427) (regTwo!27367 Regex!13427)) )
))
(declare-datatypes ((List!56952 0))(
  ( (Nil!56828) (Cons!56828 (h!63276 Regex!13427) (t!367442 List!56952)) )
))
(declare-datatypes ((Context!6138 0))(
  ( (Context!6139 (exprs!3569 List!56952)) )
))
(declare-fun z!3568 () (InoxSet Context!6138))

(declare-fun nullableZipper!832 ((InoxSet Context!6138)) Bool)

(assert (=> b!4935409 (= res!2106296 (not (nullableZipper!832 z!3568)))))

(declare-datatypes ((List!56953 0))(
  ( (Nil!56829) (Cons!56829 (h!63277 C!27084) (t!367443 List!56953)) )
))
(declare-fun lt!2032863 () List!56953)

(declare-fun lt!2032856 () List!56953)

(declare-fun lt!2032866 () List!56953)

(declare-fun ++!12394 (List!56953 List!56953) List!56953)

(assert (=> b!4935409 (= (++!12394 lt!2032863 lt!2032856) lt!2032866)))

(declare-fun testedP!110 () List!56953)

(declare-fun lt!2032858 () C!27084)

(assert (=> b!4935409 (= lt!2032863 (++!12394 testedP!110 (Cons!56829 lt!2032858 Nil!56829)))))

(declare-datatypes ((Unit!147509 0))(
  ( (Unit!147510) )
))
(declare-fun lt!2032860 () Unit!147509)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1407 (List!56953 C!27084 List!56953 List!56953) Unit!147509)

(assert (=> b!4935409 (= lt!2032860 (lemmaMoveElementToOtherListKeepsConcatEq!1407 testedP!110 lt!2032858 lt!2032856 lt!2032866))))

(declare-fun testedSuffix!70 () List!56953)

(declare-fun tail!9703 (List!56953) List!56953)

(assert (=> b!4935409 (= lt!2032856 (tail!9703 testedSuffix!70))))

(declare-fun lt!2032867 () List!56953)

(declare-fun isPrefix!5025 (List!56953 List!56953) Bool)

(declare-fun head!10564 (List!56953) C!27084)

(assert (=> b!4935409 (isPrefix!5025 (++!12394 testedP!110 (Cons!56829 (head!10564 lt!2032867) Nil!56829)) lt!2032866)))

(declare-fun lt!2032848 () Unit!147509)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!795 (List!56953 List!56953) Unit!147509)

(assert (=> b!4935409 (= lt!2032848 (lemmaAddHeadSuffixToPrefixStillPrefix!795 testedP!110 lt!2032866))))

(declare-fun b!4935410 () Bool)

(declare-fun e!3083691 () Bool)

(declare-fun tp!1385290 () Bool)

(assert (=> b!4935410 (= e!3083691 tp!1385290)))

(declare-fun b!4935412 () Bool)

(declare-fun e!3083698 () Bool)

(declare-datatypes ((IArray!29933 0))(
  ( (IArray!29934 (innerList!15024 List!56953)) )
))
(declare-datatypes ((Conc!14936 0))(
  ( (Node!14936 (left!41442 Conc!14936) (right!41772 Conc!14936) (csize!30102 Int) (cheight!15147 Int)) (Leaf!24837 (xs!18260 IArray!29933) (csize!30103 Int)) (Empty!14936) )
))
(declare-datatypes ((BalanceConc!29302 0))(
  ( (BalanceConc!29303 (c!841304 Conc!14936)) )
))
(declare-fun totalInput!685 () BalanceConc!29302)

(declare-fun tp!1385293 () Bool)

(declare-fun inv!73831 (Conc!14936) Bool)

(assert (=> b!4935412 (= e!3083698 (and (inv!73831 (c!841304 totalInput!685)) tp!1385293))))

(declare-fun b!4935413 () Bool)

(declare-fun e!3083695 () Bool)

(declare-fun e!3083689 () Bool)

(assert (=> b!4935413 (= e!3083695 e!3083689)))

(declare-fun res!2106302 () Bool)

(assert (=> b!4935413 (=> (not res!2106302) (not e!3083689))))

(declare-fun totalInputSize!132 () Int)

(declare-fun lt!2032854 () Int)

(assert (=> b!4935413 (= res!2106302 (= totalInputSize!132 lt!2032854))))

(declare-fun size!37638 (BalanceConc!29302) Int)

(assert (=> b!4935413 (= lt!2032854 (size!37638 totalInput!685))))

(declare-fun b!4935414 () Bool)

(declare-fun res!2106300 () Bool)

(declare-fun e!3083686 () Bool)

(assert (=> b!4935414 (=> res!2106300 e!3083686)))

(declare-datatypes ((tuple2!61330 0))(
  ( (tuple2!61331 (_1!33968 BalanceConc!29302) (_2!33968 BalanceConc!29302)) )
))
(declare-fun lt!2032864 () tuple2!61330)

(declare-fun testedPSize!70 () Int)

(assert (=> b!4935414 (= res!2106300 (not (= (size!37638 (_1!33968 lt!2032864)) testedPSize!70)))))

(declare-fun b!4935415 () Bool)

(declare-fun e!3083687 () Bool)

(declare-fun e!3083694 () Bool)

(assert (=> b!4935415 (= e!3083687 e!3083694)))

(declare-fun res!2106298 () Bool)

(assert (=> b!4935415 (=> res!2106298 e!3083694)))

(declare-fun lostCauseZipper!745 ((InoxSet Context!6138)) Bool)

(assert (=> b!4935415 (= res!2106298 (lostCauseZipper!745 z!3568))))

(assert (=> b!4935415 (and (= testedSuffix!70 lt!2032867) (= lt!2032867 testedSuffix!70))))

(declare-fun lt!2032850 () Unit!147509)

(declare-fun lemmaSamePrefixThenSameSuffix!2423 (List!56953 List!56953 List!56953 List!56953 List!56953) Unit!147509)

(assert (=> b!4935415 (= lt!2032850 (lemmaSamePrefixThenSameSuffix!2423 testedP!110 testedSuffix!70 testedP!110 lt!2032867 lt!2032866))))

(declare-fun getSuffix!3009 (List!56953 List!56953) List!56953)

(assert (=> b!4935415 (= lt!2032867 (getSuffix!3009 lt!2032866 testedP!110))))

(declare-fun b!4935416 () Bool)

(declare-fun res!2106304 () Bool)

(assert (=> b!4935416 (=> res!2106304 e!3083694)))

(assert (=> b!4935416 (= res!2106304 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4935417 () Bool)

(assert (=> b!4935417 (= e!3083690 true)))

(declare-fun lt!2032862 () Int)

(declare-fun size!37639 (List!56953) Int)

(assert (=> b!4935417 (= lt!2032862 (size!37639 lt!2032863))))

(declare-fun b!4935418 () Bool)

(declare-fun e!3083688 () Bool)

(assert (=> b!4935418 (= e!3083688 e!3083695)))

(declare-fun res!2106305 () Bool)

(assert (=> b!4935418 (=> (not res!2106305) (not e!3083695))))

(declare-fun lt!2032846 () Int)

(assert (=> b!4935418 (= res!2106305 (= testedPSize!70 lt!2032846))))

(assert (=> b!4935418 (= lt!2032846 (size!37639 testedP!110))))

(declare-fun b!4935419 () Bool)

(declare-fun e!3083696 () Bool)

(declare-fun tp_is_empty!36031 () Bool)

(declare-fun tp!1385289 () Bool)

(assert (=> b!4935419 (= e!3083696 (and tp_is_empty!36031 tp!1385289))))

(declare-fun setElem!27778 () Context!6138)

(declare-fun setNonEmpty!27778 () Bool)

(declare-fun tp!1385292 () Bool)

(declare-fun inv!73832 (Context!6138) Bool)

(assert (=> setNonEmpty!27778 (= setRes!27778 (and tp!1385292 (inv!73832 setElem!27778) e!3083691))))

(declare-fun setRest!27778 () (InoxSet Context!6138))

(assert (=> setNonEmpty!27778 (= z!3568 ((_ map or) (store ((as const (Array Context!6138 Bool)) false) setElem!27778 true) setRest!27778))))

(declare-fun b!4935420 () Bool)

(declare-fun e!3083685 () Unit!147509)

(declare-fun Unit!147511 () Unit!147509)

(assert (=> b!4935420 (= e!3083685 Unit!147511)))

(declare-fun b!4935421 () Bool)

(declare-fun Unit!147512 () Unit!147509)

(assert (=> b!4935421 (= e!3083685 Unit!147512)))

(declare-fun lt!2032853 () Unit!147509)

(declare-fun lemmaIsPrefixRefl!3391 (List!56953 List!56953) Unit!147509)

(assert (=> b!4935421 (= lt!2032853 (lemmaIsPrefixRefl!3391 lt!2032866 lt!2032866))))

(assert (=> b!4935421 (isPrefix!5025 lt!2032866 lt!2032866)))

(declare-fun lt!2032855 () Unit!147509)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1149 (List!56953 List!56953 List!56953) Unit!147509)

(assert (=> b!4935421 (= lt!2032855 (lemmaIsPrefixSameLengthThenSameList!1149 lt!2032866 testedP!110 lt!2032866))))

(assert (=> b!4935421 false))

(declare-fun b!4935411 () Bool)

(declare-fun e!3083697 () Bool)

(assert (=> b!4935411 (= e!3083697 e!3083692)))

(declare-fun res!2106297 () Bool)

(assert (=> b!4935411 (=> res!2106297 e!3083692)))

(assert (=> b!4935411 (= res!2106297 (>= lt!2032846 lt!2032854))))

(declare-fun lt!2032847 () Unit!147509)

(assert (=> b!4935411 (= lt!2032847 e!3083685)))

(declare-fun c!841302 () Bool)

(assert (=> b!4935411 (= c!841302 (= lt!2032846 lt!2032854))))

(assert (=> b!4935411 (<= lt!2032846 (size!37639 lt!2032866))))

(declare-fun lt!2032859 () Unit!147509)

(declare-fun lemmaIsPrefixThenSmallerEqSize!713 (List!56953 List!56953) Unit!147509)

(assert (=> b!4935411 (= lt!2032859 (lemmaIsPrefixThenSmallerEqSize!713 testedP!110 lt!2032866))))

(declare-fun res!2106301 () Bool)

(assert (=> start!518756 (=> (not res!2106301) (not e!3083688))))

(declare-fun lt!2032865 () List!56953)

(assert (=> start!518756 (= res!2106301 (= lt!2032865 lt!2032866))))

(declare-fun list!18050 (BalanceConc!29302) List!56953)

(assert (=> start!518756 (= lt!2032866 (list!18050 totalInput!685))))

(assert (=> start!518756 (= lt!2032865 (++!12394 testedP!110 testedSuffix!70))))

(assert (=> start!518756 e!3083688))

(assert (=> start!518756 e!3083696))

(declare-fun condSetEmpty!27778 () Bool)

(assert (=> start!518756 (= condSetEmpty!27778 (= z!3568 ((as const (Array Context!6138 Bool)) false)))))

(assert (=> start!518756 setRes!27778))

(assert (=> start!518756 true))

(declare-fun inv!73833 (BalanceConc!29302) Bool)

(assert (=> start!518756 (and (inv!73833 totalInput!685) e!3083698)))

(declare-fun e!3083693 () Bool)

(assert (=> start!518756 e!3083693))

(declare-fun b!4935422 () Bool)

(assert (=> b!4935422 (= e!3083689 (not e!3083687))))

(declare-fun res!2106303 () Bool)

(assert (=> b!4935422 (=> res!2106303 e!3083687)))

(assert (=> b!4935422 (= res!2106303 (not (isPrefix!5025 testedP!110 lt!2032866)))))

(assert (=> b!4935422 (isPrefix!5025 testedP!110 lt!2032865)))

(declare-fun lt!2032852 () Unit!147509)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3249 (List!56953 List!56953) Unit!147509)

(assert (=> b!4935422 (= lt!2032852 (lemmaConcatTwoListThenFirstIsPrefix!3249 testedP!110 testedSuffix!70))))

(declare-fun b!4935423 () Bool)

(assert (=> b!4935423 (= e!3083694 e!3083686)))

(declare-fun res!2106306 () Bool)

(assert (=> b!4935423 (=> res!2106306 e!3083686)))

(declare-fun lt!2032861 () List!56953)

(declare-fun lt!2032851 () List!56953)

(assert (=> b!4935423 (= res!2106306 (not (= (++!12394 lt!2032861 lt!2032851) lt!2032866)))))

(assert (=> b!4935423 (= lt!2032851 (list!18050 (_2!33968 lt!2032864)))))

(assert (=> b!4935423 (= lt!2032861 (list!18050 (_1!33968 lt!2032864)))))

(declare-fun splitAt!329 (BalanceConc!29302 Int) tuple2!61330)

(assert (=> b!4935423 (= lt!2032864 (splitAt!329 totalInput!685 testedPSize!70))))

(declare-fun b!4935424 () Bool)

(assert (=> b!4935424 (= e!3083686 e!3083697)))

(declare-fun res!2106299 () Bool)

(assert (=> b!4935424 (=> res!2106299 e!3083697)))

(assert (=> b!4935424 (= res!2106299 (not (= lt!2032858 (head!10564 testedSuffix!70))))))

(declare-fun apply!13740 (BalanceConc!29302 Int) C!27084)

(assert (=> b!4935424 (= lt!2032858 (apply!13740 totalInput!685 testedPSize!70))))

(declare-fun drop!2258 (List!56953 Int) List!56953)

(declare-fun apply!13741 (List!56953 Int) C!27084)

(assert (=> b!4935424 (= (head!10564 (drop!2258 lt!2032866 testedPSize!70)) (apply!13741 lt!2032866 testedPSize!70))))

(declare-fun lt!2032857 () Unit!147509)

(declare-fun lemmaDropApply!1316 (List!56953 Int) Unit!147509)

(assert (=> b!4935424 (= lt!2032857 (lemmaDropApply!1316 lt!2032866 testedPSize!70))))

(assert (=> b!4935424 (not (or (not (= lt!2032861 testedP!110)) (not (= lt!2032851 testedSuffix!70))))))

(declare-fun lt!2032849 () Unit!147509)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!693 (List!56953 List!56953 List!56953 List!56953) Unit!147509)

(assert (=> b!4935424 (= lt!2032849 (lemmaConcatSameAndSameSizesThenSameLists!693 lt!2032861 lt!2032851 testedP!110 testedSuffix!70))))

(declare-fun b!4935425 () Bool)

(declare-fun tp!1385291 () Bool)

(assert (=> b!4935425 (= e!3083693 (and tp_is_empty!36031 tp!1385291))))

(assert (= (and start!518756 res!2106301) b!4935418))

(assert (= (and b!4935418 res!2106305) b!4935413))

(assert (= (and b!4935413 res!2106302) b!4935422))

(assert (= (and b!4935422 (not res!2106303)) b!4935415))

(assert (= (and b!4935415 (not res!2106298)) b!4935416))

(assert (= (and b!4935416 (not res!2106304)) b!4935423))

(assert (= (and b!4935423 (not res!2106306)) b!4935414))

(assert (= (and b!4935414 (not res!2106300)) b!4935424))

(assert (= (and b!4935424 (not res!2106299)) b!4935411))

(assert (= (and b!4935411 c!841302) b!4935421))

(assert (= (and b!4935411 (not c!841302)) b!4935420))

(assert (= (and b!4935411 (not res!2106297)) b!4935409))

(assert (= (and b!4935409 (not res!2106296)) b!4935417))

(get-info :version)

(assert (= (and start!518756 ((_ is Cons!56829) testedP!110)) b!4935419))

(assert (= (and start!518756 condSetEmpty!27778) setIsEmpty!27778))

(assert (= (and start!518756 (not condSetEmpty!27778)) setNonEmpty!27778))

(assert (= setNonEmpty!27778 b!4935410))

(assert (= start!518756 b!4935412))

(assert (= (and start!518756 ((_ is Cons!56829) testedSuffix!70)) b!4935425))

(declare-fun m!5956440 () Bool)

(assert (=> b!4935424 m!5956440))

(declare-fun m!5956442 () Bool)

(assert (=> b!4935424 m!5956442))

(declare-fun m!5956444 () Bool)

(assert (=> b!4935424 m!5956444))

(assert (=> b!4935424 m!5956440))

(declare-fun m!5956446 () Bool)

(assert (=> b!4935424 m!5956446))

(declare-fun m!5956448 () Bool)

(assert (=> b!4935424 m!5956448))

(declare-fun m!5956450 () Bool)

(assert (=> b!4935424 m!5956450))

(declare-fun m!5956452 () Bool)

(assert (=> b!4935424 m!5956452))

(declare-fun m!5956454 () Bool)

(assert (=> b!4935421 m!5956454))

(declare-fun m!5956456 () Bool)

(assert (=> b!4935421 m!5956456))

(declare-fun m!5956458 () Bool)

(assert (=> b!4935421 m!5956458))

(declare-fun m!5956460 () Bool)

(assert (=> b!4935418 m!5956460))

(declare-fun m!5956462 () Bool)

(assert (=> b!4935413 m!5956462))

(declare-fun m!5956464 () Bool)

(assert (=> b!4935409 m!5956464))

(declare-fun m!5956466 () Bool)

(assert (=> b!4935409 m!5956466))

(declare-fun m!5956468 () Bool)

(assert (=> b!4935409 m!5956468))

(declare-fun m!5956470 () Bool)

(assert (=> b!4935409 m!5956470))

(declare-fun m!5956472 () Bool)

(assert (=> b!4935409 m!5956472))

(assert (=> b!4935409 m!5956472))

(declare-fun m!5956474 () Bool)

(assert (=> b!4935409 m!5956474))

(declare-fun m!5956476 () Bool)

(assert (=> b!4935409 m!5956476))

(declare-fun m!5956478 () Bool)

(assert (=> b!4935409 m!5956478))

(declare-fun m!5956480 () Bool)

(assert (=> b!4935409 m!5956480))

(declare-fun m!5956482 () Bool)

(assert (=> b!4935414 m!5956482))

(declare-fun m!5956484 () Bool)

(assert (=> b!4935422 m!5956484))

(declare-fun m!5956486 () Bool)

(assert (=> b!4935422 m!5956486))

(declare-fun m!5956488 () Bool)

(assert (=> b!4935422 m!5956488))

(declare-fun m!5956490 () Bool)

(assert (=> b!4935411 m!5956490))

(declare-fun m!5956492 () Bool)

(assert (=> b!4935411 m!5956492))

(declare-fun m!5956494 () Bool)

(assert (=> b!4935417 m!5956494))

(declare-fun m!5956496 () Bool)

(assert (=> b!4935412 m!5956496))

(declare-fun m!5956498 () Bool)

(assert (=> b!4935423 m!5956498))

(declare-fun m!5956500 () Bool)

(assert (=> b!4935423 m!5956500))

(declare-fun m!5956502 () Bool)

(assert (=> b!4935423 m!5956502))

(declare-fun m!5956504 () Bool)

(assert (=> b!4935423 m!5956504))

(declare-fun m!5956506 () Bool)

(assert (=> setNonEmpty!27778 m!5956506))

(declare-fun m!5956508 () Bool)

(assert (=> start!518756 m!5956508))

(declare-fun m!5956510 () Bool)

(assert (=> start!518756 m!5956510))

(declare-fun m!5956512 () Bool)

(assert (=> start!518756 m!5956512))

(declare-fun m!5956514 () Bool)

(assert (=> b!4935415 m!5956514))

(declare-fun m!5956516 () Bool)

(assert (=> b!4935415 m!5956516))

(declare-fun m!5956518 () Bool)

(assert (=> b!4935415 m!5956518))

(check-sat tp_is_empty!36031 (not b!4935418) (not b!4935423) (not start!518756) (not b!4935410) (not setNonEmpty!27778) (not b!4935417) (not b!4935413) (not b!4935412) (not b!4935425) (not b!4935424) (not b!4935422) (not b!4935419) (not b!4935421) (not b!4935415) (not b!4935414) (not b!4935411) (not b!4935409))
(check-sat)
