; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!528538 () Bool)

(assert start!528538)

(declare-fun setIsEmpty!28364 () Bool)

(declare-fun setRes!28364 () Bool)

(assert (=> setIsEmpty!28364 setRes!28364))

(declare-fun b!5001487 () Bool)

(declare-fun e!3125335 () Bool)

(declare-fun e!3125343 () Bool)

(assert (=> b!5001487 (= e!3125335 e!3125343)))

(declare-fun res!2134117 () Bool)

(assert (=> b!5001487 (=> (not res!2134117) (not e!3125343))))

(declare-datatypes ((C!27820 0))(
  ( (C!27821 (val!23276 Int)) )
))
(declare-datatypes ((List!57959 0))(
  ( (Nil!57835) (Cons!57835 (h!64283 C!27820) (t!370305 List!57959)) )
))
(declare-fun lt!2069070 () List!57959)

(declare-fun lt!2069056 () List!57959)

(assert (=> b!5001487 (= res!2134117 (= lt!2069070 lt!2069056))))

(declare-fun lt!2069068 () List!57959)

(declare-fun lt!2069062 () List!57959)

(declare-fun ++!12631 (List!57959 List!57959) List!57959)

(assert (=> b!5001487 (= lt!2069070 (++!12631 lt!2069068 lt!2069062))))

(declare-datatypes ((IArray!30669 0))(
  ( (IArray!30670 (innerList!15392 List!57959)) )
))
(declare-datatypes ((Conc!15304 0))(
  ( (Node!15304 (left!42290 Conc!15304) (right!42620 Conc!15304) (csize!30838 Int) (cheight!15515 Int)) (Leaf!25405 (xs!18630 IArray!30669) (csize!30839 Int)) (Empty!15304) )
))
(declare-datatypes ((BalanceConc!30038 0))(
  ( (BalanceConc!30039 (c!853587 Conc!15304)) )
))
(declare-datatypes ((tuple2!62976 0))(
  ( (tuple2!62977 (_1!34791 BalanceConc!30038) (_2!34791 BalanceConc!30038)) )
))
(declare-fun lt!2069074 () tuple2!62976)

(declare-fun list!18608 (BalanceConc!30038) List!57959)

(assert (=> b!5001487 (= lt!2069062 (list!18608 (_2!34791 lt!2069074)))))

(assert (=> b!5001487 (= lt!2069068 (list!18608 (_1!34791 lt!2069074)))))

(declare-datatypes ((tuple2!62978 0))(
  ( (tuple2!62979 (_1!34792 List!57959) (_2!34792 List!57959)) )
))
(declare-fun lt!2069069 () tuple2!62978)

(declare-datatypes ((Regex!13785 0))(
  ( (ElementMatch!13785 (c!853588 C!27820)) (Concat!22578 (regOne!28082 Regex!13785) (regTwo!28082 Regex!13785)) (EmptyExpr!13785) (Star!13785 (reg!14114 Regex!13785)) (EmptyLang!13785) (Union!13785 (regOne!28083 Regex!13785) (regTwo!28083 Regex!13785)) )
))
(declare-fun r!12727 () Regex!13785)

(declare-fun findLongestMatch!1798 (Regex!13785 List!57959) tuple2!62978)

(assert (=> b!5001487 (= lt!2069069 (findLongestMatch!1798 r!12727 lt!2069056))))

(declare-fun lt!2069060 () Int)

(declare-fun lt!2069063 () Int)

(declare-fun input!5597 () BalanceConc!30038)

(declare-fun size!38438 (BalanceConc!30038) Int)

(assert (=> b!5001487 (= lt!2069060 (- lt!2069063 (size!38438 input!5597)))))

(declare-fun totalInput!1012 () BalanceConc!30038)

(assert (=> b!5001487 (= lt!2069063 (size!38438 totalInput!1012))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!57960 0))(
  ( (Nil!57836) (Cons!57836 (h!64284 Regex!13785) (t!370306 List!57960)) )
))
(declare-datatypes ((Context!6420 0))(
  ( (Context!6421 (exprs!3710 List!57960)) )
))
(declare-fun z!4183 () (InoxSet Context!6420))

(declare-fun findLongestMatchZipperFastV2!87 ((InoxSet Context!6420) BalanceConc!30038 BalanceConc!30038) tuple2!62976)

(assert (=> b!5001487 (= lt!2069074 (findLongestMatchZipperFastV2!87 z!4183 input!5597 totalInput!1012))))

(declare-fun b!5001488 () Bool)

(declare-fun e!3125348 () Bool)

(declare-fun tp!1402870 () Bool)

(assert (=> b!5001488 (= e!3125348 tp!1402870)))

(declare-fun res!2134113 () Bool)

(declare-fun e!3125346 () Bool)

(assert (=> start!528538 (=> (not res!2134113) (not e!3125346))))

(declare-fun validRegex!6082 (Regex!13785) Bool)

(assert (=> start!528538 (= res!2134113 (validRegex!6082 r!12727))))

(assert (=> start!528538 e!3125346))

(declare-fun e!3125349 () Bool)

(assert (=> start!528538 e!3125349))

(declare-fun e!3125341 () Bool)

(declare-fun inv!75966 (BalanceConc!30038) Bool)

(assert (=> start!528538 (and (inv!75966 input!5597) e!3125341)))

(declare-fun condSetEmpty!28364 () Bool)

(assert (=> start!528538 (= condSetEmpty!28364 (= z!4183 ((as const (Array Context!6420 Bool)) false)))))

(assert (=> start!528538 setRes!28364))

(declare-fun e!3125351 () Bool)

(assert (=> start!528538 (and (inv!75966 totalInput!1012) e!3125351)))

(declare-fun b!5001489 () Bool)

(declare-fun lt!2069053 () Int)

(declare-fun e!3125340 () Bool)

(declare-fun lt!2069076 () List!57959)

(declare-fun matchZipper!553 ((InoxSet Context!6420) List!57959) Bool)

(declare-fun take!644 (List!57959 Int) List!57959)

(declare-fun drop!2448 (List!57959 Int) List!57959)

(assert (=> b!5001489 (= e!3125340 (matchZipper!553 z!4183 (take!644 (drop!2448 lt!2069076 lt!2069060) lt!2069053)))))

(declare-fun b!5001490 () Bool)

(declare-fun e!3125338 () Bool)

(declare-fun e!3125339 () Bool)

(assert (=> b!5001490 (= e!3125338 e!3125339)))

(declare-fun res!2134110 () Bool)

(assert (=> b!5001490 (=> res!2134110 e!3125339)))

(declare-fun e!3125344 () Bool)

(assert (=> b!5001490 (= res!2134110 e!3125344)))

(declare-fun res!2134106 () Bool)

(assert (=> b!5001490 (=> (not res!2134106) (not e!3125344))))

(declare-fun lt!2069066 () Bool)

(assert (=> b!5001490 (= res!2134106 (not lt!2069066))))

(declare-fun matchR!6749 (Regex!13785 List!57959) Bool)

(assert (=> b!5001490 (= lt!2069066 (matchR!6749 r!12727 (_1!34792 lt!2069069)))))

(declare-fun b!5001491 () Bool)

(declare-fun tp!1402869 () Bool)

(declare-fun tp!1402871 () Bool)

(assert (=> b!5001491 (= e!3125349 (and tp!1402869 tp!1402871))))

(declare-fun b!5001492 () Bool)

(declare-fun e!3125350 () Bool)

(declare-fun lt!2069057 () List!57959)

(declare-fun isPrefix!5338 (List!57959 List!57959) Bool)

(assert (=> b!5001492 (= e!3125350 (isPrefix!5338 lt!2069057 lt!2069056))))

(declare-fun lt!2069075 () Int)

(assert (=> b!5001492 (isPrefix!5338 (take!644 lt!2069056 lt!2069075) lt!2069056)))

(declare-datatypes ((Unit!148997 0))(
  ( (Unit!148998) )
))
(declare-fun lt!2069058 () Unit!148997)

(declare-fun lemmaTakeIsPrefix!138 (List!57959 Int) Unit!148997)

(assert (=> b!5001492 (= lt!2069058 (lemmaTakeIsPrefix!138 lt!2069056 lt!2069075))))

(declare-fun b!5001493 () Bool)

(declare-fun tp!1402872 () Bool)

(declare-fun inv!75967 (Conc!15304) Bool)

(assert (=> b!5001493 (= e!3125341 (and (inv!75967 (c!853587 input!5597)) tp!1402872))))

(declare-fun b!5001494 () Bool)

(declare-fun tp!1402866 () Bool)

(assert (=> b!5001494 (= e!3125349 tp!1402866)))

(declare-fun b!5001495 () Bool)

(declare-fun tp!1402865 () Bool)

(assert (=> b!5001495 (= e!3125351 (and (inv!75967 (c!853587 totalInput!1012)) tp!1402865))))

(declare-fun b!5001496 () Bool)

(declare-fun e!3125347 () Bool)

(assert (=> b!5001496 (= e!3125346 e!3125347)))

(declare-fun res!2134109 () Bool)

(assert (=> b!5001496 (=> (not res!2134109) (not e!3125347))))

(declare-datatypes ((List!57961 0))(
  ( (Nil!57837) (Cons!57837 (h!64285 Context!6420) (t!370307 List!57961)) )
))
(declare-fun lt!2069061 () List!57961)

(declare-fun unfocusZipper!312 (List!57961) Regex!13785)

(assert (=> b!5001496 (= res!2134109 (= (unfocusZipper!312 lt!2069061) r!12727))))

(declare-fun toList!8070 ((InoxSet Context!6420)) List!57961)

(assert (=> b!5001496 (= lt!2069061 (toList!8070 z!4183))))

(declare-fun setNonEmpty!28364 () Bool)

(declare-fun tp!1402867 () Bool)

(declare-fun setElem!28364 () Context!6420)

(declare-fun inv!75968 (Context!6420) Bool)

(assert (=> setNonEmpty!28364 (= setRes!28364 (and tp!1402867 (inv!75968 setElem!28364) e!3125348))))

(declare-fun setRest!28364 () (InoxSet Context!6420))

(assert (=> setNonEmpty!28364 (= z!4183 ((_ map or) (store ((as const (Array Context!6420 Bool)) false) setElem!28364 true) setRest!28364))))

(declare-fun b!5001497 () Bool)

(declare-fun isEmpty!31306 (List!57959) Bool)

(assert (=> b!5001497 (= e!3125344 (not (isEmpty!31306 (_1!34792 lt!2069069))))))

(declare-fun b!5001498 () Bool)

(assert (=> b!5001498 (= e!3125347 e!3125335)))

(declare-fun res!2134107 () Bool)

(assert (=> b!5001498 (=> (not res!2134107) (not e!3125335))))

(declare-fun isSuffix!1351 (List!57959 List!57959) Bool)

(assert (=> b!5001498 (= res!2134107 (isSuffix!1351 lt!2069056 lt!2069076))))

(assert (=> b!5001498 (= lt!2069076 (list!18608 totalInput!1012))))

(assert (=> b!5001498 (= lt!2069056 (list!18608 input!5597))))

(declare-fun b!5001499 () Bool)

(declare-fun e!3125336 () Bool)

(declare-fun isEmpty!31307 (BalanceConc!30038) Bool)

(assert (=> b!5001499 (= e!3125336 (not (isEmpty!31307 (_1!34791 lt!2069074))))))

(declare-fun b!5001500 () Bool)

(declare-fun tp!1402864 () Bool)

(declare-fun tp!1402868 () Bool)

(assert (=> b!5001500 (= e!3125349 (and tp!1402864 tp!1402868))))

(declare-fun b!5001501 () Bool)

(declare-fun e!3125337 () Bool)

(assert (=> b!5001501 (= e!3125337 e!3125350)))

(declare-fun res!2134114 () Bool)

(assert (=> b!5001501 (=> res!2134114 e!3125350)))

(declare-fun lt!2069072 () List!57959)

(assert (=> b!5001501 (= res!2134114 (not (= lt!2069072 lt!2069056)))))

(assert (=> b!5001501 (= lt!2069057 (take!644 lt!2069072 lt!2069075))))

(assert (=> b!5001501 (= lt!2069072 (drop!2448 lt!2069076 lt!2069060))))

(declare-fun b!5001502 () Bool)

(assert (=> b!5001502 (= e!3125339 e!3125337)))

(declare-fun res!2134115 () Bool)

(assert (=> b!5001502 (=> res!2134115 e!3125337)))

(assert (=> b!5001502 (= res!2134115 (<= lt!2069075 (size!38438 (_1!34791 lt!2069074))))))

(declare-fun size!38439 (List!57959) Int)

(assert (=> b!5001502 (= lt!2069075 (size!38439 (_1!34792 lt!2069069)))))

(declare-fun lt!2069073 () Bool)

(assert (=> b!5001502 (= (matchR!6749 r!12727 lt!2069068) lt!2069073)))

(declare-fun lt!2069052 () Unit!148997)

(declare-fun theoremZipperRegexEquiv!157 ((InoxSet Context!6420) List!57961 Regex!13785 List!57959) Unit!148997)

(assert (=> b!5001502 (= lt!2069052 (theoremZipperRegexEquiv!157 z!4183 lt!2069061 r!12727 lt!2069068))))

(assert (=> b!5001502 (= lt!2069066 (matchZipper!553 z!4183 (_1!34792 lt!2069069)))))

(declare-fun lt!2069054 () Unit!148997)

(assert (=> b!5001502 (= lt!2069054 (theoremZipperRegexEquiv!157 z!4183 lt!2069061 r!12727 (_1!34792 lt!2069069)))))

(declare-fun b!5001503 () Bool)

(declare-fun e!3125342 () Bool)

(assert (=> b!5001503 (= e!3125342 (not e!3125338))))

(declare-fun res!2134116 () Bool)

(assert (=> b!5001503 (=> res!2134116 e!3125338)))

(assert (=> b!5001503 (= res!2134116 e!3125336)))

(declare-fun res!2134105 () Bool)

(assert (=> b!5001503 (=> (not res!2134105) (not e!3125336))))

(assert (=> b!5001503 (= res!2134105 (not lt!2069073))))

(assert (=> b!5001503 (= lt!2069073 (matchZipper!553 z!4183 lt!2069068))))

(declare-fun e!3125345 () Bool)

(assert (=> b!5001503 e!3125345))

(declare-fun res!2134112 () Bool)

(assert (=> b!5001503 (=> res!2134112 e!3125345)))

(declare-fun lt!2069055 () tuple2!62978)

(assert (=> b!5001503 (= res!2134112 (isEmpty!31306 (_1!34792 lt!2069055)))))

(declare-fun findLongestMatchInner!1974 (Regex!13785 List!57959 Int List!57959 List!57959 Int) tuple2!62978)

(assert (=> b!5001503 (= lt!2069055 (findLongestMatchInner!1974 r!12727 Nil!57835 (size!38439 Nil!57835) lt!2069056 lt!2069056 (size!38439 lt!2069056)))))

(declare-fun lt!2069051 () Unit!148997)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1927 (Regex!13785 List!57959) Unit!148997)

(assert (=> b!5001503 (= lt!2069051 (longestMatchIsAcceptedByMatchOrIsEmpty!1927 r!12727 lt!2069056))))

(assert (=> b!5001503 e!3125340))

(declare-fun res!2134108 () Bool)

(assert (=> b!5001503 (=> res!2134108 e!3125340)))

(assert (=> b!5001503 (= res!2134108 (= lt!2069053 0))))

(declare-fun findLongestMatchInnerZipperFastV2!125 ((InoxSet Context!6420) Int BalanceConc!30038 Int) Int)

(assert (=> b!5001503 (= lt!2069053 (findLongestMatchInnerZipperFastV2!125 z!4183 lt!2069060 totalInput!1012 lt!2069063))))

(declare-fun lt!2069059 () Unit!148997)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!44 ((InoxSet Context!6420) Int BalanceConc!30038) Unit!148997)

(assert (=> b!5001503 (= lt!2069059 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!44 z!4183 lt!2069060 totalInput!1012))))

(assert (=> b!5001503 (isPrefix!5338 (take!644 lt!2069076 lt!2069060) lt!2069076)))

(declare-fun lt!2069071 () Unit!148997)

(assert (=> b!5001503 (= lt!2069071 (lemmaTakeIsPrefix!138 lt!2069076 lt!2069060))))

(declare-fun lt!2069065 () List!57959)

(assert (=> b!5001503 (isPrefix!5338 (_1!34792 lt!2069069) lt!2069065)))

(declare-fun lt!2069064 () Unit!148997)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3436 (List!57959 List!57959) Unit!148997)

(assert (=> b!5001503 (= lt!2069064 (lemmaConcatTwoListThenFirstIsPrefix!3436 (_1!34792 lt!2069069) (_2!34792 lt!2069069)))))

(assert (=> b!5001503 (isPrefix!5338 lt!2069068 lt!2069070)))

(declare-fun lt!2069067 () Unit!148997)

(assert (=> b!5001503 (= lt!2069067 (lemmaConcatTwoListThenFirstIsPrefix!3436 lt!2069068 lt!2069062))))

(declare-fun b!5001504 () Bool)

(declare-fun tp_is_empty!36567 () Bool)

(assert (=> b!5001504 (= e!3125349 tp_is_empty!36567)))

(declare-fun b!5001505 () Bool)

(assert (=> b!5001505 (= e!3125343 e!3125342)))

(declare-fun res!2134111 () Bool)

(assert (=> b!5001505 (=> (not res!2134111) (not e!3125342))))

(assert (=> b!5001505 (= res!2134111 (= lt!2069065 lt!2069056))))

(assert (=> b!5001505 (= lt!2069065 (++!12631 (_1!34792 lt!2069069) (_2!34792 lt!2069069)))))

(declare-fun b!5001506 () Bool)

(assert (=> b!5001506 (= e!3125345 (matchR!6749 r!12727 (_1!34792 lt!2069055)))))

(assert (= (and start!528538 res!2134113) b!5001496))

(assert (= (and b!5001496 res!2134109) b!5001498))

(assert (= (and b!5001498 res!2134107) b!5001487))

(assert (= (and b!5001487 res!2134117) b!5001505))

(assert (= (and b!5001505 res!2134111) b!5001503))

(assert (= (and b!5001503 (not res!2134108)) b!5001489))

(assert (= (and b!5001503 (not res!2134112)) b!5001506))

(assert (= (and b!5001503 res!2134105) b!5001499))

(assert (= (and b!5001503 (not res!2134116)) b!5001490))

(assert (= (and b!5001490 res!2134106) b!5001497))

(assert (= (and b!5001490 (not res!2134110)) b!5001502))

(assert (= (and b!5001502 (not res!2134115)) b!5001501))

(assert (= (and b!5001501 (not res!2134114)) b!5001492))

(get-info :version)

(assert (= (and start!528538 ((_ is ElementMatch!13785) r!12727)) b!5001504))

(assert (= (and start!528538 ((_ is Concat!22578) r!12727)) b!5001500))

(assert (= (and start!528538 ((_ is Star!13785) r!12727)) b!5001494))

(assert (= (and start!528538 ((_ is Union!13785) r!12727)) b!5001491))

(assert (= start!528538 b!5001493))

(assert (= (and start!528538 condSetEmpty!28364) setIsEmpty!28364))

(assert (= (and start!528538 (not condSetEmpty!28364)) setNonEmpty!28364))

(assert (= setNonEmpty!28364 b!5001488))

(assert (= start!528538 b!5001495))

(declare-fun m!6035050 () Bool)

(assert (=> b!5001495 m!6035050))

(declare-fun m!6035052 () Bool)

(assert (=> b!5001490 m!6035052))

(declare-fun m!6035054 () Bool)

(assert (=> b!5001505 m!6035054))

(declare-fun m!6035056 () Bool)

(assert (=> b!5001506 m!6035056))

(declare-fun m!6035058 () Bool)

(assert (=> b!5001489 m!6035058))

(assert (=> b!5001489 m!6035058))

(declare-fun m!6035060 () Bool)

(assert (=> b!5001489 m!6035060))

(assert (=> b!5001489 m!6035060))

(declare-fun m!6035062 () Bool)

(assert (=> b!5001489 m!6035062))

(declare-fun m!6035064 () Bool)

(assert (=> b!5001502 m!6035064))

(declare-fun m!6035066 () Bool)

(assert (=> b!5001502 m!6035066))

(declare-fun m!6035068 () Bool)

(assert (=> b!5001502 m!6035068))

(declare-fun m!6035070 () Bool)

(assert (=> b!5001502 m!6035070))

(declare-fun m!6035072 () Bool)

(assert (=> b!5001502 m!6035072))

(declare-fun m!6035074 () Bool)

(assert (=> b!5001502 m!6035074))

(declare-fun m!6035076 () Bool)

(assert (=> b!5001493 m!6035076))

(declare-fun m!6035078 () Bool)

(assert (=> b!5001498 m!6035078))

(declare-fun m!6035080 () Bool)

(assert (=> b!5001498 m!6035080))

(declare-fun m!6035082 () Bool)

(assert (=> b!5001498 m!6035082))

(declare-fun m!6035084 () Bool)

(assert (=> b!5001499 m!6035084))

(declare-fun m!6035086 () Bool)

(assert (=> b!5001496 m!6035086))

(declare-fun m!6035088 () Bool)

(assert (=> b!5001496 m!6035088))

(declare-fun m!6035090 () Bool)

(assert (=> b!5001492 m!6035090))

(declare-fun m!6035092 () Bool)

(assert (=> b!5001492 m!6035092))

(assert (=> b!5001492 m!6035092))

(declare-fun m!6035094 () Bool)

(assert (=> b!5001492 m!6035094))

(declare-fun m!6035096 () Bool)

(assert (=> b!5001492 m!6035096))

(declare-fun m!6035098 () Bool)

(assert (=> b!5001503 m!6035098))

(declare-fun m!6035100 () Bool)

(assert (=> b!5001503 m!6035100))

(declare-fun m!6035102 () Bool)

(assert (=> b!5001503 m!6035102))

(declare-fun m!6035104 () Bool)

(assert (=> b!5001503 m!6035104))

(declare-fun m!6035106 () Bool)

(assert (=> b!5001503 m!6035106))

(declare-fun m!6035108 () Bool)

(assert (=> b!5001503 m!6035108))

(declare-fun m!6035110 () Bool)

(assert (=> b!5001503 m!6035110))

(declare-fun m!6035112 () Bool)

(assert (=> b!5001503 m!6035112))

(declare-fun m!6035114 () Bool)

(assert (=> b!5001503 m!6035114))

(assert (=> b!5001503 m!6035114))

(assert (=> b!5001503 m!6035100))

(declare-fun m!6035116 () Bool)

(assert (=> b!5001503 m!6035116))

(assert (=> b!5001503 m!6035102))

(declare-fun m!6035118 () Bool)

(assert (=> b!5001503 m!6035118))

(declare-fun m!6035120 () Bool)

(assert (=> b!5001503 m!6035120))

(declare-fun m!6035122 () Bool)

(assert (=> b!5001503 m!6035122))

(declare-fun m!6035124 () Bool)

(assert (=> b!5001503 m!6035124))

(declare-fun m!6035126 () Bool)

(assert (=> b!5001503 m!6035126))

(declare-fun m!6035128 () Bool)

(assert (=> b!5001497 m!6035128))

(declare-fun m!6035130 () Bool)

(assert (=> setNonEmpty!28364 m!6035130))

(declare-fun m!6035132 () Bool)

(assert (=> b!5001501 m!6035132))

(assert (=> b!5001501 m!6035058))

(declare-fun m!6035134 () Bool)

(assert (=> start!528538 m!6035134))

(declare-fun m!6035136 () Bool)

(assert (=> start!528538 m!6035136))

(declare-fun m!6035138 () Bool)

(assert (=> start!528538 m!6035138))

(declare-fun m!6035140 () Bool)

(assert (=> b!5001487 m!6035140))

(declare-fun m!6035142 () Bool)

(assert (=> b!5001487 m!6035142))

(declare-fun m!6035144 () Bool)

(assert (=> b!5001487 m!6035144))

(declare-fun m!6035146 () Bool)

(assert (=> b!5001487 m!6035146))

(declare-fun m!6035148 () Bool)

(assert (=> b!5001487 m!6035148))

(declare-fun m!6035150 () Bool)

(assert (=> b!5001487 m!6035150))

(declare-fun m!6035152 () Bool)

(assert (=> b!5001487 m!6035152))

(check-sat (not b!5001506) (not setNonEmpty!28364) (not start!528538) (not b!5001490) (not b!5001488) (not b!5001489) (not b!5001493) (not b!5001495) (not b!5001492) (not b!5001505) (not b!5001487) (not b!5001503) (not b!5001501) (not b!5001498) (not b!5001497) (not b!5001496) (not b!5001500) (not b!5001502) (not b!5001499) tp_is_empty!36567 (not b!5001494) (not b!5001491))
(check-sat)
