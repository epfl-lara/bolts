; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!527450 () Bool)

(assert start!527450)

(declare-fun setNonEmpty!28196 () Bool)

(declare-fun tp!1398854 () Bool)

(declare-fun e!3118851 () Bool)

(declare-datatypes ((C!27744 0))(
  ( (C!27745 (val!23238 Int)) )
))
(declare-datatypes ((Regex!13747 0))(
  ( (ElementMatch!13747 (c!851359 C!27744)) (Concat!22540 (regOne!28006 Regex!13747) (regTwo!28006 Regex!13747)) (EmptyExpr!13747) (Star!13747 (reg!14076 Regex!13747)) (EmptyLang!13747) (Union!13747 (regOne!28007 Regex!13747) (regTwo!28007 Regex!13747)) )
))
(declare-datatypes ((List!57845 0))(
  ( (Nil!57721) (Cons!57721 (h!64169 Regex!13747) (t!370171 List!57845)) )
))
(declare-datatypes ((Context!6344 0))(
  ( (Context!6345 (exprs!3672 List!57845)) )
))
(declare-fun setElem!28196 () Context!6344)

(declare-fun setRes!28196 () Bool)

(declare-fun inv!75749 (Context!6344) Bool)

(assert (=> setNonEmpty!28196 (= setRes!28196 (and tp!1398854 (inv!75749 setElem!28196) e!3118851))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4183 () (InoxSet Context!6344))

(declare-fun setRest!28196 () (InoxSet Context!6344))

(assert (=> setNonEmpty!28196 (= z!4183 ((_ map or) (store ((as const (Array Context!6344 Bool)) false) setElem!28196 true) setRest!28196))))

(declare-fun b!4990184 () Bool)

(declare-fun e!3118855 () Bool)

(declare-datatypes ((List!57846 0))(
  ( (Nil!57722) (Cons!57722 (h!64170 C!27744) (t!370172 List!57846)) )
))
(declare-datatypes ((IArray!30593 0))(
  ( (IArray!30594 (innerList!15354 List!57846)) )
))
(declare-datatypes ((Conc!15266 0))(
  ( (Node!15266 (left!42229 Conc!15266) (right!42559 Conc!15266) (csize!30762 Int) (cheight!15477 Int)) (Leaf!25348 (xs!18592 IArray!30593) (csize!30763 Int)) (Empty!15266) )
))
(declare-datatypes ((BalanceConc!29962 0))(
  ( (BalanceConc!29963 (c!851360 Conc!15266)) )
))
(declare-fun input!5597 () BalanceConc!29962)

(declare-fun tp!1398857 () Bool)

(declare-fun inv!75750 (Conc!15266) Bool)

(assert (=> b!4990184 (= e!3118855 (and (inv!75750 (c!851360 input!5597)) tp!1398857))))

(declare-fun b!4990185 () Bool)

(declare-fun e!3118856 () Bool)

(declare-fun e!3118846 () Bool)

(assert (=> b!4990185 (= e!3118856 (not e!3118846))))

(declare-fun res!2130371 () Bool)

(assert (=> b!4990185 (=> res!2130371 e!3118846)))

(declare-fun e!3118847 () Bool)

(assert (=> b!4990185 (= res!2130371 e!3118847)))

(declare-fun res!2130364 () Bool)

(assert (=> b!4990185 (=> (not res!2130364) (not e!3118847))))

(declare-fun lt!2063605 () Bool)

(assert (=> b!4990185 (= res!2130364 (not lt!2063605))))

(declare-fun lt!2063607 () List!57846)

(declare-fun matchZipper!523 ((InoxSet Context!6344) List!57846) Bool)

(assert (=> b!4990185 (= lt!2063605 (matchZipper!523 z!4183 lt!2063607))))

(declare-fun e!3118852 () Bool)

(assert (=> b!4990185 e!3118852))

(declare-fun res!2130369 () Bool)

(assert (=> b!4990185 (=> res!2130369 e!3118852)))

(declare-datatypes ((tuple2!62816 0))(
  ( (tuple2!62817 (_1!34711 List!57846) (_2!34711 List!57846)) )
))
(declare-fun lt!2063609 () tuple2!62816)

(declare-fun isEmpty!31228 (List!57846) Bool)

(assert (=> b!4990185 (= res!2130369 (isEmpty!31228 (_1!34711 lt!2063609)))))

(declare-fun r!12727 () Regex!13747)

(declare-fun lt!2063603 () List!57846)

(declare-fun findLongestMatchInner!1936 (Regex!13747 List!57846 Int List!57846 List!57846 Int) tuple2!62816)

(declare-fun size!38346 (List!57846) Int)

(assert (=> b!4990185 (= lt!2063609 (findLongestMatchInner!1936 r!12727 Nil!57722 (size!38346 Nil!57722) lt!2063603 lt!2063603 (size!38346 lt!2063603)))))

(declare-datatypes ((Unit!148859 0))(
  ( (Unit!148860) )
))
(declare-fun lt!2063599 () Unit!148859)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1897 (Regex!13747 List!57846) Unit!148859)

(assert (=> b!4990185 (= lt!2063599 (longestMatchIsAcceptedByMatchOrIsEmpty!1897 r!12727 lt!2063603))))

(declare-fun e!3118858 () Bool)

(assert (=> b!4990185 e!3118858))

(declare-fun res!2130365 () Bool)

(assert (=> b!4990185 (=> res!2130365 e!3118858)))

(declare-fun lt!2063604 () Int)

(assert (=> b!4990185 (= res!2130365 (= lt!2063604 0))))

(declare-fun lt!2063595 () Int)

(declare-fun lt!2063589 () Int)

(declare-fun totalInput!1012 () BalanceConc!29962)

(declare-fun findLongestMatchInnerZipperFastV2!87 ((InoxSet Context!6344) Int BalanceConc!29962 Int) Int)

(assert (=> b!4990185 (= lt!2063604 (findLongestMatchInnerZipperFastV2!87 z!4183 lt!2063589 totalInput!1012 lt!2063595))))

(declare-fun lt!2063602 () Unit!148859)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!14 ((InoxSet Context!6344) Int BalanceConc!29962) Unit!148859)

(assert (=> b!4990185 (= lt!2063602 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!14 z!4183 lt!2063589 totalInput!1012))))

(declare-fun lt!2063610 () List!57846)

(declare-fun isPrefix!5304 (List!57846 List!57846) Bool)

(declare-fun take!612 (List!57846 Int) List!57846)

(assert (=> b!4990185 (isPrefix!5304 (take!612 lt!2063610 lt!2063589) lt!2063610)))

(declare-fun lt!2063598 () Unit!148859)

(declare-fun lemmaTakeIsPrefix!106 (List!57846 Int) Unit!148859)

(assert (=> b!4990185 (= lt!2063598 (lemmaTakeIsPrefix!106 lt!2063610 lt!2063589))))

(declare-fun lt!2063590 () tuple2!62816)

(declare-fun lt!2063585 () List!57846)

(assert (=> b!4990185 (isPrefix!5304 (_1!34711 lt!2063590) lt!2063585)))

(declare-fun lt!2063584 () Unit!148859)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3402 (List!57846 List!57846) Unit!148859)

(assert (=> b!4990185 (= lt!2063584 (lemmaConcatTwoListThenFirstIsPrefix!3402 (_1!34711 lt!2063590) (_2!34711 lt!2063590)))))

(declare-fun lt!2063600 () List!57846)

(assert (=> b!4990185 (isPrefix!5304 lt!2063607 lt!2063600)))

(declare-fun lt!2063612 () Unit!148859)

(declare-fun lt!2063586 () List!57846)

(assert (=> b!4990185 (= lt!2063612 (lemmaConcatTwoListThenFirstIsPrefix!3402 lt!2063607 lt!2063586))))

(declare-fun setIsEmpty!28196 () Bool)

(assert (=> setIsEmpty!28196 setRes!28196))

(declare-fun b!4990186 () Bool)

(declare-fun e!3118854 () Bool)

(declare-fun tp!1398850 () Bool)

(assert (=> b!4990186 (= e!3118854 tp!1398850)))

(declare-fun b!4990187 () Bool)

(declare-fun e!3118857 () Bool)

(assert (=> b!4990187 (= e!3118846 e!3118857)))

(declare-fun res!2130363 () Bool)

(assert (=> b!4990187 (=> res!2130363 e!3118857)))

(declare-fun e!3118850 () Bool)

(assert (=> b!4990187 (= res!2130363 e!3118850)))

(declare-fun res!2130362 () Bool)

(assert (=> b!4990187 (=> (not res!2130362) (not e!3118850))))

(declare-fun lt!2063594 () Bool)

(assert (=> b!4990187 (= res!2130362 (not lt!2063594))))

(declare-fun matchR!6719 (Regex!13747 List!57846) Bool)

(assert (=> b!4990187 (= lt!2063594 (matchR!6719 r!12727 (_1!34711 lt!2063590)))))

(declare-fun b!4990188 () Bool)

(declare-fun e!3118853 () Bool)

(declare-fun e!3118842 () Bool)

(assert (=> b!4990188 (= e!3118853 e!3118842)))

(declare-fun res!2130370 () Bool)

(assert (=> b!4990188 (=> (not res!2130370) (not e!3118842))))

(declare-fun isSuffix!1313 (List!57846 List!57846) Bool)

(assert (=> b!4990188 (= res!2130370 (isSuffix!1313 lt!2063603 lt!2063610))))

(declare-fun list!18550 (BalanceConc!29962) List!57846)

(assert (=> b!4990188 (= lt!2063610 (list!18550 totalInput!1012))))

(assert (=> b!4990188 (= lt!2063603 (list!18550 input!5597))))

(declare-fun res!2130358 () Bool)

(declare-fun e!3118848 () Bool)

(assert (=> start!527450 (=> (not res!2130358) (not e!3118848))))

(declare-fun validRegex!6044 (Regex!13747) Bool)

(assert (=> start!527450 (= res!2130358 (validRegex!6044 r!12727))))

(assert (=> start!527450 e!3118848))

(assert (=> start!527450 e!3118854))

(declare-fun inv!75751 (BalanceConc!29962) Bool)

(assert (=> start!527450 (and (inv!75751 input!5597) e!3118855)))

(declare-fun condSetEmpty!28196 () Bool)

(assert (=> start!527450 (= condSetEmpty!28196 (= z!4183 ((as const (Array Context!6344 Bool)) false)))))

(assert (=> start!527450 setRes!28196))

(declare-fun e!3118844 () Bool)

(assert (=> start!527450 (and (inv!75751 totalInput!1012) e!3118844)))

(declare-fun b!4990189 () Bool)

(declare-fun e!3118845 () Bool)

(declare-fun e!3118843 () Bool)

(assert (=> b!4990189 (= e!3118845 e!3118843)))

(declare-fun res!2130366 () Bool)

(assert (=> b!4990189 (=> res!2130366 e!3118843)))

(declare-fun lt!2063606 () List!57846)

(assert (=> b!4990189 (= res!2130366 (not (= lt!2063606 lt!2063603)))))

(declare-fun lt!2063587 () List!57846)

(declare-fun lt!2063588 () Int)

(assert (=> b!4990189 (= lt!2063587 (take!612 lt!2063606 lt!2063588))))

(declare-fun drop!2410 (List!57846 Int) List!57846)

(assert (=> b!4990189 (= lt!2063606 (drop!2410 lt!2063610 lt!2063589))))

(declare-fun b!4990190 () Bool)

(declare-fun tp!1398852 () Bool)

(declare-fun tp!1398856 () Bool)

(assert (=> b!4990190 (= e!3118854 (and tp!1398852 tp!1398856))))

(declare-fun b!4990191 () Bool)

(declare-fun tp!1398858 () Bool)

(assert (=> b!4990191 (= e!3118851 tp!1398858)))

(declare-fun b!4990192 () Bool)

(declare-fun e!3118859 () Bool)

(assert (=> b!4990192 (= e!3118842 e!3118859)))

(declare-fun res!2130367 () Bool)

(assert (=> b!4990192 (=> (not res!2130367) (not e!3118859))))

(assert (=> b!4990192 (= res!2130367 (= lt!2063600 lt!2063603))))

(declare-fun ++!12591 (List!57846 List!57846) List!57846)

(assert (=> b!4990192 (= lt!2063600 (++!12591 lt!2063607 lt!2063586))))

(declare-datatypes ((tuple2!62818 0))(
  ( (tuple2!62819 (_1!34712 BalanceConc!29962) (_2!34712 BalanceConc!29962)) )
))
(declare-fun lt!2063601 () tuple2!62818)

(assert (=> b!4990192 (= lt!2063586 (list!18550 (_2!34712 lt!2063601)))))

(assert (=> b!4990192 (= lt!2063607 (list!18550 (_1!34712 lt!2063601)))))

(declare-fun findLongestMatch!1760 (Regex!13747 List!57846) tuple2!62816)

(assert (=> b!4990192 (= lt!2063590 (findLongestMatch!1760 r!12727 lt!2063603))))

(declare-fun size!38347 (BalanceConc!29962) Int)

(assert (=> b!4990192 (= lt!2063589 (- lt!2063595 (size!38347 input!5597)))))

(assert (=> b!4990192 (= lt!2063595 (size!38347 totalInput!1012))))

(declare-fun findLongestMatchZipperFastV2!49 ((InoxSet Context!6344) BalanceConc!29962 BalanceConc!29962) tuple2!62818)

(assert (=> b!4990192 (= lt!2063601 (findLongestMatchZipperFastV2!49 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4990193 () Bool)

(declare-fun tp!1398851 () Bool)

(declare-fun tp!1398855 () Bool)

(assert (=> b!4990193 (= e!3118854 (and tp!1398851 tp!1398855))))

(declare-fun b!4990194 () Bool)

(assert (=> b!4990194 (= e!3118858 (matchZipper!523 z!4183 (take!612 (drop!2410 lt!2063610 lt!2063589) lt!2063604)))))

(declare-fun b!4990195 () Bool)

(assert (=> b!4990195 (= e!3118859 e!3118856)))

(declare-fun res!2130360 () Bool)

(assert (=> b!4990195 (=> (not res!2130360) (not e!3118856))))

(assert (=> b!4990195 (= res!2130360 (= lt!2063585 lt!2063603))))

(assert (=> b!4990195 (= lt!2063585 (++!12591 (_1!34711 lt!2063590) (_2!34711 lt!2063590)))))

(declare-fun b!4990196 () Bool)

(declare-fun tp_is_empty!36491 () Bool)

(assert (=> b!4990196 (= e!3118854 tp_is_empty!36491)))

(declare-fun b!4990197 () Bool)

(declare-fun isEmpty!31229 (BalanceConc!29962) Bool)

(assert (=> b!4990197 (= e!3118847 (not (isEmpty!31229 (_1!34712 lt!2063601))))))

(declare-fun b!4990198 () Bool)

(declare-fun e!3118849 () Bool)

(assert (=> b!4990198 (= e!3118849 true)))

(declare-fun lt!2063591 () Bool)

(assert (=> b!4990198 (= lt!2063591 (matchZipper!523 z!4183 lt!2063587))))

(declare-fun b!4990199 () Bool)

(assert (=> b!4990199 (= e!3118857 e!3118845)))

(declare-fun res!2130361 () Bool)

(assert (=> b!4990199 (=> res!2130361 e!3118845)))

(assert (=> b!4990199 (= res!2130361 (<= lt!2063588 (size!38347 (_1!34712 lt!2063601))))))

(assert (=> b!4990199 (= lt!2063588 (size!38346 (_1!34711 lt!2063590)))))

(assert (=> b!4990199 (= (matchR!6719 r!12727 lt!2063607) lt!2063605)))

(declare-fun lt!2063611 () Unit!148859)

(declare-datatypes ((List!57847 0))(
  ( (Nil!57723) (Cons!57723 (h!64171 Context!6344) (t!370173 List!57847)) )
))
(declare-fun lt!2063597 () List!57847)

(declare-fun theoremZipperRegexEquiv!133 ((InoxSet Context!6344) List!57847 Regex!13747 List!57846) Unit!148859)

(assert (=> b!4990199 (= lt!2063611 (theoremZipperRegexEquiv!133 z!4183 lt!2063597 r!12727 lt!2063607))))

(assert (=> b!4990199 (= lt!2063594 (matchZipper!523 z!4183 (_1!34711 lt!2063590)))))

(declare-fun lt!2063608 () Unit!148859)

(assert (=> b!4990199 (= lt!2063608 (theoremZipperRegexEquiv!133 z!4183 lt!2063597 r!12727 (_1!34711 lt!2063590)))))

(declare-fun b!4990200 () Bool)

(declare-fun tp!1398853 () Bool)

(assert (=> b!4990200 (= e!3118844 (and (inv!75750 (c!851360 totalInput!1012)) tp!1398853))))

(declare-fun b!4990201 () Bool)

(assert (=> b!4990201 (= e!3118852 (matchR!6719 r!12727 (_1!34711 lt!2063609)))))

(declare-fun b!4990202 () Bool)

(assert (=> b!4990202 (= e!3118850 (not (isEmpty!31228 (_1!34711 lt!2063590))))))

(declare-fun b!4990203 () Bool)

(assert (=> b!4990203 (= e!3118843 e!3118849)))

(declare-fun res!2130368 () Bool)

(assert (=> b!4990203 (=> res!2130368 e!3118849)))

(declare-fun lt!2063592 () List!57846)

(assert (=> b!4990203 (= res!2130368 (or (not (= lt!2063592 (_1!34711 lt!2063590))) (< lt!2063589 0) (> lt!2063589 lt!2063595) (< lt!2063588 0) (> lt!2063588 (- lt!2063595 lt!2063589))))))

(assert (=> b!4990203 (= lt!2063587 (_1!34711 lt!2063590))))

(declare-fun lt!2063596 () Unit!148859)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1247 (List!57846 List!57846 List!57846) Unit!148859)

(assert (=> b!4990203 (= lt!2063596 (lemmaIsPrefixSameLengthThenSameList!1247 lt!2063587 (_1!34711 lt!2063590) lt!2063603))))

(assert (=> b!4990203 (isPrefix!5304 lt!2063592 lt!2063603)))

(assert (=> b!4990203 (= lt!2063592 (take!612 lt!2063603 lt!2063588))))

(declare-fun lt!2063593 () Unit!148859)

(assert (=> b!4990203 (= lt!2063593 (lemmaTakeIsPrefix!106 lt!2063603 lt!2063588))))

(declare-fun b!4990204 () Bool)

(assert (=> b!4990204 (= e!3118848 e!3118853)))

(declare-fun res!2130359 () Bool)

(assert (=> b!4990204 (=> (not res!2130359) (not e!3118853))))

(declare-fun unfocusZipper!274 (List!57847) Regex!13747)

(assert (=> b!4990204 (= res!2130359 (= (unfocusZipper!274 lt!2063597) r!12727))))

(declare-fun toList!8032 ((InoxSet Context!6344)) List!57847)

(assert (=> b!4990204 (= lt!2063597 (toList!8032 z!4183))))

(assert (= (and start!527450 res!2130358) b!4990204))

(assert (= (and b!4990204 res!2130359) b!4990188))

(assert (= (and b!4990188 res!2130370) b!4990192))

(assert (= (and b!4990192 res!2130367) b!4990195))

(assert (= (and b!4990195 res!2130360) b!4990185))

(assert (= (and b!4990185 (not res!2130365)) b!4990194))

(assert (= (and b!4990185 (not res!2130369)) b!4990201))

(assert (= (and b!4990185 res!2130364) b!4990197))

(assert (= (and b!4990185 (not res!2130371)) b!4990187))

(assert (= (and b!4990187 res!2130362) b!4990202))

(assert (= (and b!4990187 (not res!2130363)) b!4990199))

(assert (= (and b!4990199 (not res!2130361)) b!4990189))

(assert (= (and b!4990189 (not res!2130366)) b!4990203))

(assert (= (and b!4990203 (not res!2130368)) b!4990198))

(get-info :version)

(assert (= (and start!527450 ((_ is ElementMatch!13747) r!12727)) b!4990196))

(assert (= (and start!527450 ((_ is Concat!22540) r!12727)) b!4990190))

(assert (= (and start!527450 ((_ is Star!13747) r!12727)) b!4990186))

(assert (= (and start!527450 ((_ is Union!13747) r!12727)) b!4990193))

(assert (= start!527450 b!4990184))

(assert (= (and start!527450 condSetEmpty!28196) setIsEmpty!28196))

(assert (= (and start!527450 (not condSetEmpty!28196)) setNonEmpty!28196))

(assert (= setNonEmpty!28196 b!4990191))

(assert (= start!527450 b!4990200))

(declare-fun m!6022556 () Bool)

(assert (=> b!4990202 m!6022556))

(declare-fun m!6022558 () Bool)

(assert (=> setNonEmpty!28196 m!6022558))

(declare-fun m!6022560 () Bool)

(assert (=> b!4990192 m!6022560))

(declare-fun m!6022562 () Bool)

(assert (=> b!4990192 m!6022562))

(declare-fun m!6022564 () Bool)

(assert (=> b!4990192 m!6022564))

(declare-fun m!6022566 () Bool)

(assert (=> b!4990192 m!6022566))

(declare-fun m!6022568 () Bool)

(assert (=> b!4990192 m!6022568))

(declare-fun m!6022570 () Bool)

(assert (=> b!4990192 m!6022570))

(declare-fun m!6022572 () Bool)

(assert (=> b!4990192 m!6022572))

(declare-fun m!6022574 () Bool)

(assert (=> b!4990188 m!6022574))

(declare-fun m!6022576 () Bool)

(assert (=> b!4990188 m!6022576))

(declare-fun m!6022578 () Bool)

(assert (=> b!4990188 m!6022578))

(declare-fun m!6022580 () Bool)

(assert (=> b!4990204 m!6022580))

(declare-fun m!6022582 () Bool)

(assert (=> b!4990204 m!6022582))

(declare-fun m!6022584 () Bool)

(assert (=> b!4990185 m!6022584))

(declare-fun m!6022586 () Bool)

(assert (=> b!4990185 m!6022586))

(declare-fun m!6022588 () Bool)

(assert (=> b!4990185 m!6022588))

(declare-fun m!6022590 () Bool)

(assert (=> b!4990185 m!6022590))

(declare-fun m!6022592 () Bool)

(assert (=> b!4990185 m!6022592))

(declare-fun m!6022594 () Bool)

(assert (=> b!4990185 m!6022594))

(declare-fun m!6022596 () Bool)

(assert (=> b!4990185 m!6022596))

(declare-fun m!6022598 () Bool)

(assert (=> b!4990185 m!6022598))

(declare-fun m!6022600 () Bool)

(assert (=> b!4990185 m!6022600))

(declare-fun m!6022602 () Bool)

(assert (=> b!4990185 m!6022602))

(declare-fun m!6022604 () Bool)

(assert (=> b!4990185 m!6022604))

(declare-fun m!6022606 () Bool)

(assert (=> b!4990185 m!6022606))

(assert (=> b!4990185 m!6022602))

(assert (=> b!4990185 m!6022600))

(declare-fun m!6022608 () Bool)

(assert (=> b!4990185 m!6022608))

(declare-fun m!6022610 () Bool)

(assert (=> b!4990185 m!6022610))

(assert (=> b!4990185 m!6022598))

(declare-fun m!6022612 () Bool)

(assert (=> b!4990185 m!6022612))

(declare-fun m!6022614 () Bool)

(assert (=> b!4990194 m!6022614))

(assert (=> b!4990194 m!6022614))

(declare-fun m!6022616 () Bool)

(assert (=> b!4990194 m!6022616))

(assert (=> b!4990194 m!6022616))

(declare-fun m!6022618 () Bool)

(assert (=> b!4990194 m!6022618))

(declare-fun m!6022620 () Bool)

(assert (=> b!4990203 m!6022620))

(declare-fun m!6022622 () Bool)

(assert (=> b!4990203 m!6022622))

(declare-fun m!6022624 () Bool)

(assert (=> b!4990203 m!6022624))

(declare-fun m!6022626 () Bool)

(assert (=> b!4990203 m!6022626))

(declare-fun m!6022628 () Bool)

(assert (=> b!4990201 m!6022628))

(declare-fun m!6022630 () Bool)

(assert (=> b!4990189 m!6022630))

(assert (=> b!4990189 m!6022614))

(declare-fun m!6022632 () Bool)

(assert (=> b!4990197 m!6022632))

(declare-fun m!6022634 () Bool)

(assert (=> start!527450 m!6022634))

(declare-fun m!6022636 () Bool)

(assert (=> start!527450 m!6022636))

(declare-fun m!6022638 () Bool)

(assert (=> start!527450 m!6022638))

(declare-fun m!6022640 () Bool)

(assert (=> b!4990199 m!6022640))

(declare-fun m!6022642 () Bool)

(assert (=> b!4990199 m!6022642))

(declare-fun m!6022644 () Bool)

(assert (=> b!4990199 m!6022644))

(declare-fun m!6022646 () Bool)

(assert (=> b!4990199 m!6022646))

(declare-fun m!6022648 () Bool)

(assert (=> b!4990199 m!6022648))

(declare-fun m!6022650 () Bool)

(assert (=> b!4990199 m!6022650))

(declare-fun m!6022652 () Bool)

(assert (=> b!4990187 m!6022652))

(declare-fun m!6022654 () Bool)

(assert (=> b!4990184 m!6022654))

(declare-fun m!6022656 () Bool)

(assert (=> b!4990198 m!6022656))

(declare-fun m!6022658 () Bool)

(assert (=> b!4990200 m!6022658))

(declare-fun m!6022660 () Bool)

(assert (=> b!4990195 m!6022660))

(check-sat (not b!4990199) (not b!4990190) (not b!4990192) (not b!4990193) (not b!4990184) (not b!4990200) (not b!4990197) (not b!4990204) (not b!4990195) (not setNonEmpty!28196) (not b!4990201) (not b!4990194) (not b!4990202) (not b!4990191) (not start!527450) tp_is_empty!36491 (not b!4990189) (not b!4990188) (not b!4990203) (not b!4990187) (not b!4990198) (not b!4990185) (not b!4990186))
(check-sat)
