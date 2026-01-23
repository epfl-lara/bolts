; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!537788 () Bool)

(assert start!537788)

(declare-fun b!5099528 () Bool)

(declare-fun e!3180477 () Bool)

(declare-fun e!3180468 () Bool)

(assert (=> b!5099528 (= e!3180477 e!3180468)))

(declare-fun res!2170425 () Bool)

(assert (=> b!5099528 (=> res!2170425 e!3180468)))

(declare-datatypes ((C!28320 0))(
  ( (C!28321 (val!23812 Int)) )
))
(declare-datatypes ((List!58879 0))(
  ( (Nil!58755) (Cons!58755 (h!65203 C!28320) (t!371880 List!58879)) )
))
(declare-datatypes ((tuple2!63448 0))(
  ( (tuple2!63449 (_1!35027 List!58879) (_2!35027 List!58879)) )
))
(declare-fun lt!2096132 () tuple2!63448)

(declare-fun input!5654 () List!58879)

(declare-fun isPrefix!5436 (List!58879 List!58879) Bool)

(assert (=> b!5099528 (= res!2170425 (not (isPrefix!5436 (_1!35027 lt!2096132) input!5654)))))

(declare-fun lt!2096142 () tuple2!63448)

(assert (=> b!5099528 (= (_1!35027 lt!2096132) (_1!35027 lt!2096142))))

(declare-datatypes ((Unit!149786 0))(
  ( (Unit!149787) )
))
(declare-fun lt!2096138 () Unit!149786)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1295 (List!58879 List!58879 List!58879) Unit!149786)

(assert (=> b!5099528 (= lt!2096138 (lemmaIsPrefixSameLengthThenSameList!1295 (_1!35027 lt!2096132) (_1!35027 lt!2096142) input!5654))))

(declare-fun b!5099529 () Bool)

(declare-fun e!3180476 () Bool)

(declare-fun tp!1422258 () Bool)

(declare-fun tp!1422263 () Bool)

(assert (=> b!5099529 (= e!3180476 (and tp!1422258 tp!1422263))))

(declare-fun res!2170429 () Bool)

(declare-fun e!3180470 () Bool)

(assert (=> start!537788 (=> (not res!2170429) (not e!3180470))))

(declare-datatypes ((Regex!14031 0))(
  ( (ElementMatch!14031 (c!876137 C!28320)) (Concat!22876 (regOne!28574 Regex!14031) (regTwo!28574 Regex!14031)) (EmptyExpr!14031) (Star!14031 (reg!14360 Regex!14031)) (EmptyLang!14031) (Union!14031 (regOne!28575 Regex!14031) (regTwo!28575 Regex!14031)) )
))
(declare-fun r!12920 () Regex!14031)

(declare-fun validRegex!6158 (Regex!14031) Bool)

(assert (=> start!537788 (= res!2170429 (validRegex!6158 r!12920))))

(assert (=> start!537788 e!3180470))

(assert (=> start!537788 e!3180476))

(declare-fun condSetEmpty!29158 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!58880 0))(
  ( (Nil!58756) (Cons!58756 (h!65204 Regex!14031) (t!371881 List!58880)) )
))
(declare-datatypes ((Context!6830 0))(
  ( (Context!6831 (exprs!3915 List!58880)) )
))
(declare-fun z!4303 () (InoxSet Context!6830))

(assert (=> start!537788 (= condSetEmpty!29158 (= z!4303 ((as const (Array Context!6830 Bool)) false)))))

(declare-fun setRes!29158 () Bool)

(assert (=> start!537788 setRes!29158))

(declare-fun e!3180471 () Bool)

(assert (=> start!537788 e!3180471))

(declare-fun b!5099530 () Bool)

(declare-fun e!3180469 () Bool)

(declare-fun e!3180473 () Bool)

(assert (=> b!5099530 (= e!3180469 e!3180473)))

(declare-fun res!2170422 () Bool)

(assert (=> b!5099530 (=> (not res!2170422) (not e!3180473))))

(declare-fun lt!2096129 () List!58879)

(assert (=> b!5099530 (= res!2170422 (= lt!2096129 input!5654))))

(declare-fun ++!12880 (List!58879 List!58879) List!58879)

(assert (=> b!5099530 (= lt!2096129 (++!12880 (_1!35027 lt!2096132) (_2!35027 lt!2096132)))))

(declare-fun findLongestMatch!1861 (Regex!14031 List!58879) tuple2!63448)

(assert (=> b!5099530 (= lt!2096142 (findLongestMatch!1861 r!12920 input!5654))))

(declare-fun findLongestMatchZipper!55 ((InoxSet Context!6830) List!58879) tuple2!63448)

(assert (=> b!5099530 (= lt!2096132 (findLongestMatchZipper!55 z!4303 input!5654))))

(declare-fun b!5099531 () Bool)

(declare-fun e!3180466 () Bool)

(declare-fun lt!2096145 () tuple2!63448)

(declare-fun matchR!6820 (Regex!14031 List!58879) Bool)

(assert (=> b!5099531 (= e!3180466 (matchR!6820 r!12920 (_1!35027 lt!2096145)))))

(declare-fun b!5099532 () Bool)

(declare-fun tp_is_empty!37327 () Bool)

(declare-fun tp!1422259 () Bool)

(assert (=> b!5099532 (= e!3180471 (and tp_is_empty!37327 tp!1422259))))

(declare-fun b!5099533 () Bool)

(assert (=> b!5099533 (= e!3180468 true)))

(declare-fun lt!2096140 () Bool)

(assert (=> b!5099533 (= lt!2096140 (isPrefix!5436 (_1!35027 lt!2096142) input!5654))))

(declare-fun setIsEmpty!29158 () Bool)

(assert (=> setIsEmpty!29158 setRes!29158))

(declare-fun b!5099534 () Bool)

(declare-fun e!3180464 () Bool)

(declare-fun e!3180475 () Bool)

(assert (=> b!5099534 (= e!3180464 e!3180475)))

(declare-fun res!2170423 () Bool)

(assert (=> b!5099534 (=> res!2170423 e!3180475)))

(declare-fun e!3180465 () Bool)

(assert (=> b!5099534 (= res!2170423 e!3180465)))

(declare-fun res!2170421 () Bool)

(assert (=> b!5099534 (=> (not res!2170421) (not e!3180465))))

(declare-fun lt!2096135 () Bool)

(assert (=> b!5099534 (= res!2170421 (not lt!2096135))))

(assert (=> b!5099534 (= lt!2096135 (matchR!6820 r!12920 (_1!35027 lt!2096142)))))

(declare-fun b!5099535 () Bool)

(declare-fun e!3180472 () Bool)

(declare-fun lt!2096133 () tuple2!63448)

(declare-fun matchZipper!707 ((InoxSet Context!6830) List!58879) Bool)

(assert (=> b!5099535 (= e!3180472 (matchZipper!707 z!4303 (_1!35027 lt!2096133)))))

(declare-fun b!5099536 () Bool)

(declare-fun e!3180474 () Bool)

(declare-fun tp!1422260 () Bool)

(assert (=> b!5099536 (= e!3180474 tp!1422260)))

(declare-fun b!5099537 () Bool)

(assert (=> b!5099537 (= e!3180475 e!3180477)))

(declare-fun res!2170426 () Bool)

(assert (=> b!5099537 (=> res!2170426 e!3180477)))

(declare-fun lt!2096136 () Int)

(declare-fun lt!2096131 () Int)

(assert (=> b!5099537 (= res!2170426 (or (> lt!2096136 lt!2096131) (> lt!2096131 lt!2096136)))))

(declare-fun size!39333 (List!58879) Int)

(assert (=> b!5099537 (= lt!2096131 (size!39333 (_1!35027 lt!2096132)))))

(assert (=> b!5099537 (= lt!2096136 (size!39333 (_1!35027 lt!2096142)))))

(declare-fun lt!2096126 () Bool)

(assert (=> b!5099537 (= (matchR!6820 r!12920 (_1!35027 lt!2096132)) lt!2096126)))

(declare-datatypes ((List!58881 0))(
  ( (Nil!58757) (Cons!58757 (h!65205 Context!6830) (t!371882 List!58881)) )
))
(declare-fun lt!2096128 () List!58881)

(declare-fun lt!2096141 () Unit!149786)

(declare-fun theoremZipperRegexEquiv!205 ((InoxSet Context!6830) List!58881 Regex!14031 List!58879) Unit!149786)

(assert (=> b!5099537 (= lt!2096141 (theoremZipperRegexEquiv!205 z!4303 lt!2096128 r!12920 (_1!35027 lt!2096132)))))

(assert (=> b!5099537 (= lt!2096135 (matchZipper!707 z!4303 (_1!35027 lt!2096142)))))

(declare-fun lt!2096144 () Unit!149786)

(assert (=> b!5099537 (= lt!2096144 (theoremZipperRegexEquiv!205 z!4303 lt!2096128 r!12920 (_1!35027 lt!2096142)))))

(declare-fun b!5099538 () Bool)

(assert (=> b!5099538 (= e!3180476 tp_is_empty!37327)))

(declare-fun b!5099539 () Bool)

(declare-fun isEmpty!31780 (List!58879) Bool)

(assert (=> b!5099539 (= e!3180465 (not (isEmpty!31780 (_1!35027 lt!2096142))))))

(declare-fun b!5099540 () Bool)

(assert (=> b!5099540 (= e!3180470 e!3180469)))

(declare-fun res!2170427 () Bool)

(assert (=> b!5099540 (=> (not res!2170427) (not e!3180469))))

(declare-fun unfocusZipper!373 (List!58881) Regex!14031)

(assert (=> b!5099540 (= res!2170427 (= (unfocusZipper!373 lt!2096128) r!12920))))

(declare-fun toList!8165 ((InoxSet Context!6830)) List!58881)

(assert (=> b!5099540 (= lt!2096128 (toList!8165 z!4303))))

(declare-fun setNonEmpty!29158 () Bool)

(declare-fun tp!1422262 () Bool)

(declare-fun setElem!29158 () Context!6830)

(declare-fun inv!78252 (Context!6830) Bool)

(assert (=> setNonEmpty!29158 (= setRes!29158 (and tp!1422262 (inv!78252 setElem!29158) e!3180474))))

(declare-fun setRest!29158 () (InoxSet Context!6830))

(assert (=> setNonEmpty!29158 (= z!4303 ((_ map or) (store ((as const (Array Context!6830 Bool)) false) setElem!29158 true) setRest!29158))))

(declare-fun b!5099541 () Bool)

(declare-fun tp!1422256 () Bool)

(assert (=> b!5099541 (= e!3180476 tp!1422256)))

(declare-fun b!5099542 () Bool)

(declare-fun tp!1422257 () Bool)

(declare-fun tp!1422261 () Bool)

(assert (=> b!5099542 (= e!3180476 (and tp!1422257 tp!1422261))))

(declare-fun b!5099543 () Bool)

(declare-fun e!3180467 () Bool)

(assert (=> b!5099543 (= e!3180467 (not (isEmpty!31780 (_1!35027 lt!2096132))))))

(declare-fun b!5099544 () Bool)

(declare-fun e!3180463 () Bool)

(assert (=> b!5099544 (= e!3180463 (not e!3180464))))

(declare-fun res!2170430 () Bool)

(assert (=> b!5099544 (=> res!2170430 e!3180464)))

(assert (=> b!5099544 (= res!2170430 e!3180467)))

(declare-fun res!2170431 () Bool)

(assert (=> b!5099544 (=> (not res!2170431) (not e!3180467))))

(assert (=> b!5099544 (= res!2170431 (not lt!2096126))))

(assert (=> b!5099544 (= lt!2096126 (matchZipper!707 z!4303 (_1!35027 lt!2096132)))))

(assert (=> b!5099544 e!3180466))

(declare-fun res!2170428 () Bool)

(assert (=> b!5099544 (=> res!2170428 e!3180466)))

(assert (=> b!5099544 (= res!2170428 (isEmpty!31780 (_1!35027 lt!2096145)))))

(declare-fun lt!2096127 () Int)

(declare-fun lt!2096137 () Int)

(declare-fun findLongestMatchInner!2044 (Regex!14031 List!58879 Int List!58879 List!58879 Int) tuple2!63448)

(assert (=> b!5099544 (= lt!2096145 (findLongestMatchInner!2044 r!12920 Nil!58755 lt!2096137 input!5654 input!5654 lt!2096127))))

(declare-fun lt!2096146 () Unit!149786)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2016 (Regex!14031 List!58879) Unit!149786)

(assert (=> b!5099544 (= lt!2096146 (longestMatchIsAcceptedByMatchOrIsEmpty!2016 r!12920 input!5654))))

(assert (=> b!5099544 e!3180472))

(declare-fun res!2170432 () Bool)

(assert (=> b!5099544 (=> res!2170432 e!3180472)))

(assert (=> b!5099544 (= res!2170432 (isEmpty!31780 (_1!35027 lt!2096133)))))

(declare-fun findLongestMatchInnerZipper!105 ((InoxSet Context!6830) List!58879 Int List!58879 List!58879 Int) tuple2!63448)

(assert (=> b!5099544 (= lt!2096133 (findLongestMatchInnerZipper!105 z!4303 Nil!58755 lt!2096137 input!5654 input!5654 lt!2096127))))

(assert (=> b!5099544 (= lt!2096127 (size!39333 input!5654))))

(assert (=> b!5099544 (= lt!2096137 (size!39333 Nil!58755))))

(declare-fun lt!2096143 () Unit!149786)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2017 ((InoxSet Context!6830) List!58879) Unit!149786)

(assert (=> b!5099544 (= lt!2096143 (longestMatchIsAcceptedByMatchOrIsEmpty!2017 z!4303 input!5654))))

(declare-fun lt!2096130 () List!58879)

(assert (=> b!5099544 (isPrefix!5436 (_1!35027 lt!2096142) lt!2096130)))

(declare-fun lt!2096134 () Unit!149786)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3494 (List!58879 List!58879) Unit!149786)

(assert (=> b!5099544 (= lt!2096134 (lemmaConcatTwoListThenFirstIsPrefix!3494 (_1!35027 lt!2096142) (_2!35027 lt!2096142)))))

(assert (=> b!5099544 (isPrefix!5436 (_1!35027 lt!2096132) lt!2096129)))

(declare-fun lt!2096139 () Unit!149786)

(assert (=> b!5099544 (= lt!2096139 (lemmaConcatTwoListThenFirstIsPrefix!3494 (_1!35027 lt!2096132) (_2!35027 lt!2096132)))))

(declare-fun b!5099545 () Bool)

(assert (=> b!5099545 (= e!3180473 e!3180463)))

(declare-fun res!2170424 () Bool)

(assert (=> b!5099545 (=> (not res!2170424) (not e!3180463))))

(assert (=> b!5099545 (= res!2170424 (= lt!2096130 input!5654))))

(assert (=> b!5099545 (= lt!2096130 (++!12880 (_1!35027 lt!2096142) (_2!35027 lt!2096142)))))

(assert (= (and start!537788 res!2170429) b!5099540))

(assert (= (and b!5099540 res!2170427) b!5099530))

(assert (= (and b!5099530 res!2170422) b!5099545))

(assert (= (and b!5099545 res!2170424) b!5099544))

(assert (= (and b!5099544 (not res!2170432)) b!5099535))

(assert (= (and b!5099544 (not res!2170428)) b!5099531))

(assert (= (and b!5099544 res!2170431) b!5099543))

(assert (= (and b!5099544 (not res!2170430)) b!5099534))

(assert (= (and b!5099534 res!2170421) b!5099539))

(assert (= (and b!5099534 (not res!2170423)) b!5099537))

(assert (= (and b!5099537 (not res!2170426)) b!5099528))

(assert (= (and b!5099528 (not res!2170425)) b!5099533))

(get-info :version)

(assert (= (and start!537788 ((_ is ElementMatch!14031) r!12920)) b!5099538))

(assert (= (and start!537788 ((_ is Concat!22876) r!12920)) b!5099529))

(assert (= (and start!537788 ((_ is Star!14031) r!12920)) b!5099541))

(assert (= (and start!537788 ((_ is Union!14031) r!12920)) b!5099542))

(assert (= (and start!537788 condSetEmpty!29158) setIsEmpty!29158))

(assert (= (and start!537788 (not condSetEmpty!29158)) setNonEmpty!29158))

(assert (= setNonEmpty!29158 b!5099536))

(assert (= (and start!537788 ((_ is Cons!58755) input!5654)) b!5099532))

(declare-fun m!6156968 () Bool)

(assert (=> setNonEmpty!29158 m!6156968))

(declare-fun m!6156970 () Bool)

(assert (=> b!5099531 m!6156970))

(declare-fun m!6156972 () Bool)

(assert (=> b!5099534 m!6156972))

(declare-fun m!6156974 () Bool)

(assert (=> b!5099530 m!6156974))

(declare-fun m!6156976 () Bool)

(assert (=> b!5099530 m!6156976))

(declare-fun m!6156978 () Bool)

(assert (=> b!5099530 m!6156978))

(declare-fun m!6156980 () Bool)

(assert (=> b!5099543 m!6156980))

(declare-fun m!6156982 () Bool)

(assert (=> b!5099533 m!6156982))

(declare-fun m!6156984 () Bool)

(assert (=> b!5099535 m!6156984))

(declare-fun m!6156986 () Bool)

(assert (=> start!537788 m!6156986))

(declare-fun m!6156988 () Bool)

(assert (=> b!5099544 m!6156988))

(declare-fun m!6156990 () Bool)

(assert (=> b!5099544 m!6156990))

(declare-fun m!6156992 () Bool)

(assert (=> b!5099544 m!6156992))

(declare-fun m!6156994 () Bool)

(assert (=> b!5099544 m!6156994))

(declare-fun m!6156996 () Bool)

(assert (=> b!5099544 m!6156996))

(declare-fun m!6156998 () Bool)

(assert (=> b!5099544 m!6156998))

(declare-fun m!6157000 () Bool)

(assert (=> b!5099544 m!6157000))

(declare-fun m!6157002 () Bool)

(assert (=> b!5099544 m!6157002))

(declare-fun m!6157004 () Bool)

(assert (=> b!5099544 m!6157004))

(declare-fun m!6157006 () Bool)

(assert (=> b!5099544 m!6157006))

(declare-fun m!6157008 () Bool)

(assert (=> b!5099544 m!6157008))

(declare-fun m!6157010 () Bool)

(assert (=> b!5099544 m!6157010))

(declare-fun m!6157012 () Bool)

(assert (=> b!5099544 m!6157012))

(declare-fun m!6157014 () Bool)

(assert (=> b!5099539 m!6157014))

(declare-fun m!6157016 () Bool)

(assert (=> b!5099537 m!6157016))

(declare-fun m!6157018 () Bool)

(assert (=> b!5099537 m!6157018))

(declare-fun m!6157020 () Bool)

(assert (=> b!5099537 m!6157020))

(declare-fun m!6157022 () Bool)

(assert (=> b!5099537 m!6157022))

(declare-fun m!6157024 () Bool)

(assert (=> b!5099537 m!6157024))

(declare-fun m!6157026 () Bool)

(assert (=> b!5099537 m!6157026))

(declare-fun m!6157028 () Bool)

(assert (=> b!5099540 m!6157028))

(declare-fun m!6157030 () Bool)

(assert (=> b!5099540 m!6157030))

(declare-fun m!6157032 () Bool)

(assert (=> b!5099528 m!6157032))

(declare-fun m!6157034 () Bool)

(assert (=> b!5099528 m!6157034))

(declare-fun m!6157036 () Bool)

(assert (=> b!5099545 m!6157036))

(check-sat (not b!5099544) (not b!5099542) (not b!5099545) (not b!5099532) (not b!5099530) (not b!5099535) (not b!5099539) (not b!5099534) (not b!5099536) (not b!5099533) (not b!5099540) (not start!537788) (not setNonEmpty!29158) (not b!5099529) (not b!5099528) (not b!5099541) (not b!5099543) tp_is_empty!37327 (not b!5099537) (not b!5099531))
(check-sat)
