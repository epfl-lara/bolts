; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518760 () Bool)

(assert start!518760)

(declare-fun b!4935511 () Bool)

(declare-fun e!3083781 () Bool)

(declare-fun e!3083774 () Bool)

(assert (=> b!4935511 (= e!3083781 e!3083774)))

(declare-fun res!2106370 () Bool)

(assert (=> b!4935511 (=> res!2106370 e!3083774)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!27088 0))(
  ( (C!27089 (val!22878 Int)) )
))
(declare-datatypes ((Regex!13429 0))(
  ( (ElementMatch!13429 (c!841313 C!27088)) (Concat!22002 (regOne!27370 Regex!13429) (regTwo!27370 Regex!13429)) (EmptyExpr!13429) (Star!13429 (reg!13758 Regex!13429)) (EmptyLang!13429) (Union!13429 (regOne!27371 Regex!13429) (regTwo!27371 Regex!13429)) )
))
(declare-datatypes ((List!56956 0))(
  ( (Nil!56832) (Cons!56832 (h!63280 Regex!13429) (t!367446 List!56956)) )
))
(declare-datatypes ((Context!6142 0))(
  ( (Context!6143 (exprs!3571 List!56956)) )
))
(declare-fun z!3568 () (InoxSet Context!6142))

(declare-fun nullableZipper!834 ((InoxSet Context!6142)) Bool)

(assert (=> b!4935511 (= res!2106370 (not (nullableZipper!834 z!3568)))))

(declare-datatypes ((List!56957 0))(
  ( (Nil!56833) (Cons!56833 (h!63281 C!27088) (t!367447 List!56957)) )
))
(declare-fun lt!2032992 () List!56957)

(declare-fun lt!2032986 () List!56957)

(declare-fun lt!2032983 () List!56957)

(declare-fun ++!12396 (List!56957 List!56957) List!56957)

(assert (=> b!4935511 (= (++!12396 lt!2032992 lt!2032986) lt!2032983)))

(declare-fun testedP!110 () List!56957)

(declare-fun lt!2032991 () C!27088)

(assert (=> b!4935511 (= lt!2032992 (++!12396 testedP!110 (Cons!56833 lt!2032991 Nil!56833)))))

(declare-datatypes ((Unit!147517 0))(
  ( (Unit!147518) )
))
(declare-fun lt!2032995 () Unit!147517)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1409 (List!56957 C!27088 List!56957 List!56957) Unit!147517)

(assert (=> b!4935511 (= lt!2032995 (lemmaMoveElementToOtherListKeepsConcatEq!1409 testedP!110 lt!2032991 lt!2032986 lt!2032983))))

(declare-fun testedSuffix!70 () List!56957)

(declare-fun tail!9705 (List!56957) List!56957)

(assert (=> b!4935511 (= lt!2032986 (tail!9705 testedSuffix!70))))

(declare-fun lt!2032999 () List!56957)

(declare-fun isPrefix!5027 (List!56957 List!56957) Bool)

(declare-fun head!10566 (List!56957) C!27088)

(assert (=> b!4935511 (isPrefix!5027 (++!12396 testedP!110 (Cons!56833 (head!10566 lt!2032999) Nil!56833)) lt!2032983)))

(declare-fun lt!2032981 () Unit!147517)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!797 (List!56957 List!56957) Unit!147517)

(assert (=> b!4935511 (= lt!2032981 (lemmaAddHeadSuffixToPrefixStillPrefix!797 testedP!110 lt!2032983))))

(declare-fun b!4935512 () Bool)

(declare-fun e!3083769 () Bool)

(declare-fun e!3083773 () Bool)

(assert (=> b!4935512 (= e!3083769 e!3083773)))

(declare-fun res!2106366 () Bool)

(assert (=> b!4935512 (=> (not res!2106366) (not e!3083773))))

(declare-fun totalInputSize!132 () Int)

(declare-fun lt!2032989 () Int)

(assert (=> b!4935512 (= res!2106366 (= totalInputSize!132 lt!2032989))))

(declare-datatypes ((IArray!29937 0))(
  ( (IArray!29938 (innerList!15026 List!56957)) )
))
(declare-datatypes ((Conc!14938 0))(
  ( (Node!14938 (left!41445 Conc!14938) (right!41775 Conc!14938) (csize!30106 Int) (cheight!15149 Int)) (Leaf!24840 (xs!18262 IArray!29937) (csize!30107 Int)) (Empty!14938) )
))
(declare-datatypes ((BalanceConc!29306 0))(
  ( (BalanceConc!29307 (c!841314 Conc!14938)) )
))
(declare-fun totalInput!685 () BalanceConc!29306)

(declare-fun size!37642 (BalanceConc!29306) Int)

(assert (=> b!4935512 (= lt!2032989 (size!37642 totalInput!685))))

(declare-fun b!4935513 () Bool)

(declare-fun res!2106367 () Bool)

(declare-fun e!3083778 () Bool)

(assert (=> b!4935513 (=> res!2106367 e!3083778)))

(declare-datatypes ((tuple2!61334 0))(
  ( (tuple2!61335 (_1!33970 BalanceConc!29306) (_2!33970 BalanceConc!29306)) )
))
(declare-fun lt!2032996 () tuple2!61334)

(declare-fun testedPSize!70 () Int)

(assert (=> b!4935513 (= res!2106367 (not (= (size!37642 (_1!33970 lt!2032996)) testedPSize!70)))))

(declare-fun res!2106363 () Bool)

(declare-fun e!3083770 () Bool)

(assert (=> start!518760 (=> (not res!2106363) (not e!3083770))))

(declare-fun lt!2032990 () List!56957)

(assert (=> start!518760 (= res!2106363 (= lt!2032990 lt!2032983))))

(declare-fun list!18052 (BalanceConc!29306) List!56957)

(assert (=> start!518760 (= lt!2032983 (list!18052 totalInput!685))))

(assert (=> start!518760 (= lt!2032990 (++!12396 testedP!110 testedSuffix!70))))

(assert (=> start!518760 e!3083770))

(declare-fun e!3083776 () Bool)

(assert (=> start!518760 e!3083776))

(declare-fun condSetEmpty!27784 () Bool)

(assert (=> start!518760 (= condSetEmpty!27784 (= z!3568 ((as const (Array Context!6142 Bool)) false)))))

(declare-fun setRes!27784 () Bool)

(assert (=> start!518760 setRes!27784))

(assert (=> start!518760 true))

(declare-fun e!3083777 () Bool)

(declare-fun inv!73840 (BalanceConc!29306) Bool)

(assert (=> start!518760 (and (inv!73840 totalInput!685) e!3083777)))

(declare-fun e!3083780 () Bool)

(assert (=> start!518760 e!3083780))

(declare-fun b!4935514 () Bool)

(declare-fun e!3083775 () Bool)

(assert (=> b!4935514 (= e!3083775 e!3083781)))

(declare-fun res!2106372 () Bool)

(assert (=> b!4935514 (=> res!2106372 e!3083781)))

(declare-fun lt!2032978 () Int)

(assert (=> b!4935514 (= res!2106372 (>= lt!2032978 lt!2032989))))

(declare-fun lt!2032994 () Unit!147517)

(declare-fun e!3083772 () Unit!147517)

(assert (=> b!4935514 (= lt!2032994 e!3083772)))

(declare-fun c!841312 () Bool)

(assert (=> b!4935514 (= c!841312 (= lt!2032978 lt!2032989))))

(declare-fun size!37643 (List!56957) Int)

(assert (=> b!4935514 (<= lt!2032978 (size!37643 lt!2032983))))

(declare-fun lt!2032987 () Unit!147517)

(declare-fun lemmaIsPrefixThenSmallerEqSize!715 (List!56957 List!56957) Unit!147517)

(assert (=> b!4935514 (= lt!2032987 (lemmaIsPrefixThenSmallerEqSize!715 testedP!110 lt!2032983))))

(declare-fun b!4935515 () Bool)

(declare-fun e!3083779 () Bool)

(declare-fun tp!1385322 () Bool)

(assert (=> b!4935515 (= e!3083779 tp!1385322)))

(declare-fun b!4935516 () Bool)

(declare-fun e!3083771 () Bool)

(assert (=> b!4935516 (= e!3083773 (not e!3083771))))

(declare-fun res!2106362 () Bool)

(assert (=> b!4935516 (=> res!2106362 e!3083771)))

(assert (=> b!4935516 (= res!2106362 (not (isPrefix!5027 testedP!110 lt!2032983)))))

(assert (=> b!4935516 (isPrefix!5027 testedP!110 lt!2032990)))

(declare-fun lt!2032985 () Unit!147517)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3251 (List!56957 List!56957) Unit!147517)

(assert (=> b!4935516 (= lt!2032985 (lemmaConcatTwoListThenFirstIsPrefix!3251 testedP!110 testedSuffix!70))))

(declare-fun b!4935517 () Bool)

(declare-fun Unit!147519 () Unit!147517)

(assert (=> b!4935517 (= e!3083772 Unit!147519)))

(declare-fun b!4935518 () Bool)

(declare-fun tp_is_empty!36035 () Bool)

(declare-fun tp!1385319 () Bool)

(assert (=> b!4935518 (= e!3083780 (and tp_is_empty!36035 tp!1385319))))

(declare-fun b!4935519 () Bool)

(declare-fun Unit!147520 () Unit!147517)

(assert (=> b!4935519 (= e!3083772 Unit!147520)))

(declare-fun lt!2032982 () Unit!147517)

(declare-fun lemmaIsPrefixRefl!3393 (List!56957 List!56957) Unit!147517)

(assert (=> b!4935519 (= lt!2032982 (lemmaIsPrefixRefl!3393 lt!2032983 lt!2032983))))

(assert (=> b!4935519 (isPrefix!5027 lt!2032983 lt!2032983)))

(declare-fun lt!2032993 () Unit!147517)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1151 (List!56957 List!56957 List!56957) Unit!147517)

(assert (=> b!4935519 (= lt!2032993 (lemmaIsPrefixSameLengthThenSameList!1151 lt!2032983 testedP!110 lt!2032983))))

(assert (=> b!4935519 false))

(declare-fun setIsEmpty!27784 () Bool)

(assert (=> setIsEmpty!27784 setRes!27784))

(declare-fun b!4935520 () Bool)

(assert (=> b!4935520 (= e!3083778 e!3083775)))

(declare-fun res!2106369 () Bool)

(assert (=> b!4935520 (=> res!2106369 e!3083775)))

(assert (=> b!4935520 (= res!2106369 (not (= lt!2032991 (head!10566 testedSuffix!70))))))

(declare-fun apply!13744 (BalanceConc!29306 Int) C!27088)

(assert (=> b!4935520 (= lt!2032991 (apply!13744 totalInput!685 testedPSize!70))))

(declare-fun drop!2260 (List!56957 Int) List!56957)

(declare-fun apply!13745 (List!56957 Int) C!27088)

(assert (=> b!4935520 (= (head!10566 (drop!2260 lt!2032983 testedPSize!70)) (apply!13745 lt!2032983 testedPSize!70))))

(declare-fun lt!2032979 () Unit!147517)

(declare-fun lemmaDropApply!1318 (List!56957 Int) Unit!147517)

(assert (=> b!4935520 (= lt!2032979 (lemmaDropApply!1318 lt!2032983 testedPSize!70))))

(declare-fun lt!2032998 () List!56957)

(declare-fun lt!2032984 () List!56957)

(assert (=> b!4935520 (not (or (not (= lt!2032998 testedP!110)) (not (= lt!2032984 testedSuffix!70))))))

(declare-fun lt!2032997 () Unit!147517)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!695 (List!56957 List!56957 List!56957 List!56957) Unit!147517)

(assert (=> b!4935520 (= lt!2032997 (lemmaConcatSameAndSameSizesThenSameLists!695 lt!2032998 lt!2032984 testedP!110 testedSuffix!70))))

(declare-fun b!4935521 () Bool)

(declare-fun tp!1385323 () Bool)

(declare-fun inv!73841 (Conc!14938) Bool)

(assert (=> b!4935521 (= e!3083777 (and (inv!73841 (c!841314 totalInput!685)) tp!1385323))))

(declare-fun b!4935522 () Bool)

(declare-fun e!3083782 () Bool)

(assert (=> b!4935522 (= e!3083771 e!3083782)))

(declare-fun res!2106364 () Bool)

(assert (=> b!4935522 (=> res!2106364 e!3083782)))

(declare-fun lostCauseZipper!747 ((InoxSet Context!6142)) Bool)

(assert (=> b!4935522 (= res!2106364 (lostCauseZipper!747 z!3568))))

(assert (=> b!4935522 (and (= testedSuffix!70 lt!2032999) (= lt!2032999 testedSuffix!70))))

(declare-fun lt!2032980 () Unit!147517)

(declare-fun lemmaSamePrefixThenSameSuffix!2425 (List!56957 List!56957 List!56957 List!56957 List!56957) Unit!147517)

(assert (=> b!4935522 (= lt!2032980 (lemmaSamePrefixThenSameSuffix!2425 testedP!110 testedSuffix!70 testedP!110 lt!2032999 lt!2032983))))

(declare-fun getSuffix!3011 (List!56957 List!56957) List!56957)

(assert (=> b!4935522 (= lt!2032999 (getSuffix!3011 lt!2032983 testedP!110))))

(declare-fun b!4935523 () Bool)

(declare-fun res!2106365 () Bool)

(assert (=> b!4935523 (=> res!2106365 e!3083782)))

(assert (=> b!4935523 (= res!2106365 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4935524 () Bool)

(assert (=> b!4935524 (= e!3083774 true)))

(declare-fun lt!2032988 () Int)

(declare-fun findLongestMatchInnerZipperFast!93 ((InoxSet Context!6142) List!56957 Int List!56957 BalanceConc!29306 Int) Int)

(declare-fun derivationStepZipper!596 ((InoxSet Context!6142) C!27088) (InoxSet Context!6142))

(assert (=> b!4935524 (= lt!2032988 (findLongestMatchInnerZipperFast!93 (derivationStepZipper!596 z!3568 lt!2032991) lt!2032992 (+ 1 testedPSize!70) lt!2032986 totalInput!685 totalInputSize!132))))

(declare-fun tp!1385320 () Bool)

(declare-fun setNonEmpty!27784 () Bool)

(declare-fun setElem!27784 () Context!6142)

(declare-fun inv!73842 (Context!6142) Bool)

(assert (=> setNonEmpty!27784 (= setRes!27784 (and tp!1385320 (inv!73842 setElem!27784) e!3083779))))

(declare-fun setRest!27784 () (InoxSet Context!6142))

(assert (=> setNonEmpty!27784 (= z!3568 ((_ map or) (store ((as const (Array Context!6142 Bool)) false) setElem!27784 true) setRest!27784))))

(declare-fun b!4935525 () Bool)

(assert (=> b!4935525 (= e!3083770 e!3083769)))

(declare-fun res!2106371 () Bool)

(assert (=> b!4935525 (=> (not res!2106371) (not e!3083769))))

(assert (=> b!4935525 (= res!2106371 (= testedPSize!70 lt!2032978))))

(assert (=> b!4935525 (= lt!2032978 (size!37643 testedP!110))))

(declare-fun b!4935526 () Bool)

(declare-fun tp!1385321 () Bool)

(assert (=> b!4935526 (= e!3083776 (and tp_is_empty!36035 tp!1385321))))

(declare-fun b!4935527 () Bool)

(assert (=> b!4935527 (= e!3083782 e!3083778)))

(declare-fun res!2106368 () Bool)

(assert (=> b!4935527 (=> res!2106368 e!3083778)))

(assert (=> b!4935527 (= res!2106368 (not (= (++!12396 lt!2032998 lt!2032984) lt!2032983)))))

(assert (=> b!4935527 (= lt!2032984 (list!18052 (_2!33970 lt!2032996)))))

(assert (=> b!4935527 (= lt!2032998 (list!18052 (_1!33970 lt!2032996)))))

(declare-fun splitAt!331 (BalanceConc!29306 Int) tuple2!61334)

(assert (=> b!4935527 (= lt!2032996 (splitAt!331 totalInput!685 testedPSize!70))))

(assert (= (and start!518760 res!2106363) b!4935525))

(assert (= (and b!4935525 res!2106371) b!4935512))

(assert (= (and b!4935512 res!2106366) b!4935516))

(assert (= (and b!4935516 (not res!2106362)) b!4935522))

(assert (= (and b!4935522 (not res!2106364)) b!4935523))

(assert (= (and b!4935523 (not res!2106365)) b!4935527))

(assert (= (and b!4935527 (not res!2106368)) b!4935513))

(assert (= (and b!4935513 (not res!2106367)) b!4935520))

(assert (= (and b!4935520 (not res!2106369)) b!4935514))

(assert (= (and b!4935514 c!841312) b!4935519))

(assert (= (and b!4935514 (not c!841312)) b!4935517))

(assert (= (and b!4935514 (not res!2106372)) b!4935511))

(assert (= (and b!4935511 (not res!2106370)) b!4935524))

(get-info :version)

(assert (= (and start!518760 ((_ is Cons!56833) testedP!110)) b!4935526))

(assert (= (and start!518760 condSetEmpty!27784) setIsEmpty!27784))

(assert (= (and start!518760 (not condSetEmpty!27784)) setNonEmpty!27784))

(assert (= setNonEmpty!27784 b!4935515))

(assert (= start!518760 b!4935521))

(assert (= (and start!518760 ((_ is Cons!56833) testedSuffix!70)) b!4935518))

(declare-fun m!5956602 () Bool)

(assert (=> b!4935524 m!5956602))

(assert (=> b!4935524 m!5956602))

(declare-fun m!5956604 () Bool)

(assert (=> b!4935524 m!5956604))

(declare-fun m!5956606 () Bool)

(assert (=> b!4935513 m!5956606))

(declare-fun m!5956608 () Bool)

(assert (=> b!4935514 m!5956608))

(declare-fun m!5956610 () Bool)

(assert (=> b!4935514 m!5956610))

(declare-fun m!5956612 () Bool)

(assert (=> b!4935527 m!5956612))

(declare-fun m!5956614 () Bool)

(assert (=> b!4935527 m!5956614))

(declare-fun m!5956616 () Bool)

(assert (=> b!4935527 m!5956616))

(declare-fun m!5956618 () Bool)

(assert (=> b!4935527 m!5956618))

(declare-fun m!5956620 () Bool)

(assert (=> setNonEmpty!27784 m!5956620))

(declare-fun m!5956622 () Bool)

(assert (=> b!4935519 m!5956622))

(declare-fun m!5956624 () Bool)

(assert (=> b!4935519 m!5956624))

(declare-fun m!5956626 () Bool)

(assert (=> b!4935519 m!5956626))

(declare-fun m!5956628 () Bool)

(assert (=> b!4935512 m!5956628))

(declare-fun m!5956630 () Bool)

(assert (=> b!4935525 m!5956630))

(declare-fun m!5956632 () Bool)

(assert (=> b!4935520 m!5956632))

(declare-fun m!5956634 () Bool)

(assert (=> b!4935520 m!5956634))

(declare-fun m!5956636 () Bool)

(assert (=> b!4935520 m!5956636))

(declare-fun m!5956638 () Bool)

(assert (=> b!4935520 m!5956638))

(declare-fun m!5956640 () Bool)

(assert (=> b!4935520 m!5956640))

(declare-fun m!5956642 () Bool)

(assert (=> b!4935520 m!5956642))

(assert (=> b!4935520 m!5956640))

(declare-fun m!5956644 () Bool)

(assert (=> b!4935520 m!5956644))

(declare-fun m!5956646 () Bool)

(assert (=> b!4935516 m!5956646))

(declare-fun m!5956648 () Bool)

(assert (=> b!4935516 m!5956648))

(declare-fun m!5956650 () Bool)

(assert (=> b!4935516 m!5956650))

(declare-fun m!5956652 () Bool)

(assert (=> b!4935522 m!5956652))

(declare-fun m!5956654 () Bool)

(assert (=> b!4935522 m!5956654))

(declare-fun m!5956656 () Bool)

(assert (=> b!4935522 m!5956656))

(declare-fun m!5956658 () Bool)

(assert (=> b!4935511 m!5956658))

(declare-fun m!5956660 () Bool)

(assert (=> b!4935511 m!5956660))

(declare-fun m!5956662 () Bool)

(assert (=> b!4935511 m!5956662))

(declare-fun m!5956664 () Bool)

(assert (=> b!4935511 m!5956664))

(declare-fun m!5956666 () Bool)

(assert (=> b!4935511 m!5956666))

(declare-fun m!5956668 () Bool)

(assert (=> b!4935511 m!5956668))

(declare-fun m!5956670 () Bool)

(assert (=> b!4935511 m!5956670))

(assert (=> b!4935511 m!5956662))

(declare-fun m!5956672 () Bool)

(assert (=> b!4935511 m!5956672))

(declare-fun m!5956674 () Bool)

(assert (=> b!4935511 m!5956674))

(declare-fun m!5956676 () Bool)

(assert (=> start!518760 m!5956676))

(declare-fun m!5956678 () Bool)

(assert (=> start!518760 m!5956678))

(declare-fun m!5956680 () Bool)

(assert (=> start!518760 m!5956680))

(declare-fun m!5956682 () Bool)

(assert (=> b!4935521 m!5956682))

(check-sat (not b!4935524) (not b!4935514) (not start!518760) (not b!4935513) (not b!4935519) (not b!4935511) (not b!4935520) (not b!4935512) (not b!4935522) (not b!4935525) (not b!4935527) (not b!4935515) (not b!4935526) (not setNonEmpty!27784) (not b!4935518) (not b!4935516) (not b!4935521) tp_is_empty!36035)
(check-sat)
