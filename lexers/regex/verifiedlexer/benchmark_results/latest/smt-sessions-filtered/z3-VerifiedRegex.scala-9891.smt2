; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518108 () Bool)

(assert start!518108)

(declare-fun res!2104928 () Bool)

(declare-fun e!3081596 () Bool)

(assert (=> start!518108 (=> (not res!2104928) (not e!3081596))))

(declare-datatypes ((C!27048 0))(
  ( (C!27049 (val!22858 Int)) )
))
(declare-datatypes ((List!56906 0))(
  ( (Nil!56782) (Cons!56782 (h!63230 C!27048) (t!367386 List!56906)) )
))
(declare-fun lt!2030719 () List!56906)

(declare-fun lt!2030714 () List!56906)

(assert (=> start!518108 (= res!2104928 (= lt!2030719 lt!2030714))))

(declare-datatypes ((IArray!29897 0))(
  ( (IArray!29898 (innerList!15006 List!56906)) )
))
(declare-datatypes ((Conc!14918 0))(
  ( (Node!14918 (left!41411 Conc!14918) (right!41741 Conc!14918) (csize!30066 Int) (cheight!15129 Int)) (Leaf!24810 (xs!18242 IArray!29897) (csize!30067 Int)) (Empty!14918) )
))
(declare-datatypes ((BalanceConc!29266 0))(
  ( (BalanceConc!29267 (c!840535 Conc!14918)) )
))
(declare-fun totalInput!685 () BalanceConc!29266)

(declare-fun list!18020 (BalanceConc!29266) List!56906)

(assert (=> start!518108 (= lt!2030714 (list!18020 totalInput!685))))

(declare-fun testedP!110 () List!56906)

(declare-fun testedSuffix!70 () List!56906)

(declare-fun ++!12374 (List!56906 List!56906) List!56906)

(assert (=> start!518108 (= lt!2030719 (++!12374 testedP!110 testedSuffix!70))))

(assert (=> start!518108 e!3081596))

(declare-fun e!3081594 () Bool)

(assert (=> start!518108 e!3081594))

(declare-fun condSetEmpty!27692 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13409 0))(
  ( (ElementMatch!13409 (c!840536 C!27048)) (Concat!21982 (regOne!27330 Regex!13409) (regTwo!27330 Regex!13409)) (EmptyExpr!13409) (Star!13409 (reg!13738 Regex!13409)) (EmptyLang!13409) (Union!13409 (regOne!27331 Regex!13409) (regTwo!27331 Regex!13409)) )
))
(declare-datatypes ((List!56907 0))(
  ( (Nil!56783) (Cons!56783 (h!63231 Regex!13409) (t!367387 List!56907)) )
))
(declare-datatypes ((Context!6102 0))(
  ( (Context!6103 (exprs!3551 List!56907)) )
))
(declare-fun z!3568 () (InoxSet Context!6102))

(assert (=> start!518108 (= condSetEmpty!27692 (= z!3568 ((as const (Array Context!6102 Bool)) false)))))

(declare-fun setRes!27692 () Bool)

(assert (=> start!518108 setRes!27692))

(assert (=> start!518108 true))

(declare-fun e!3081599 () Bool)

(declare-fun inv!73722 (BalanceConc!29266) Bool)

(assert (=> start!518108 (and (inv!73722 totalInput!685) e!3081599)))

(declare-fun e!3081601 () Bool)

(assert (=> start!518108 e!3081601))

(declare-fun b!4932238 () Bool)

(declare-fun e!3081604 () Bool)

(declare-fun e!3081598 () Bool)

(assert (=> b!4932238 (= e!3081604 e!3081598)))

(declare-fun res!2104921 () Bool)

(assert (=> b!4932238 (=> res!2104921 e!3081598)))

(declare-fun testedPSize!70 () Int)

(declare-fun apply!13693 (BalanceConc!29266 Int) C!27048)

(declare-fun head!10546 (List!56906) C!27048)

(assert (=> b!4932238 (= res!2104921 (not (= (apply!13693 totalInput!685 testedPSize!70) (head!10546 testedSuffix!70))))))

(declare-fun drop!2240 (List!56906 Int) List!56906)

(declare-fun apply!13694 (List!56906 Int) C!27048)

(assert (=> b!4932238 (= (head!10546 (drop!2240 lt!2030714 testedPSize!70)) (apply!13694 lt!2030714 testedPSize!70))))

(declare-datatypes ((Unit!147419 0))(
  ( (Unit!147420) )
))
(declare-fun lt!2030711 () Unit!147419)

(declare-fun lemmaDropApply!1298 (List!56906 Int) Unit!147419)

(assert (=> b!4932238 (= lt!2030711 (lemmaDropApply!1298 lt!2030714 testedPSize!70))))

(declare-fun lt!2030716 () List!56906)

(declare-fun lt!2030707 () List!56906)

(assert (=> b!4932238 (not (or (not (= lt!2030707 testedP!110)) (not (= lt!2030716 testedSuffix!70))))))

(declare-fun lt!2030709 () Unit!147419)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!675 (List!56906 List!56906 List!56906 List!56906) Unit!147419)

(assert (=> b!4932238 (= lt!2030709 (lemmaConcatSameAndSameSizesThenSameLists!675 lt!2030707 lt!2030716 testedP!110 testedSuffix!70))))

(declare-fun b!4932239 () Bool)

(declare-fun e!3081593 () Bool)

(declare-fun tp!1384710 () Bool)

(assert (=> b!4932239 (= e!3081593 tp!1384710)))

(declare-fun b!4932240 () Bool)

(declare-fun res!2104926 () Bool)

(assert (=> b!4932240 (=> res!2104926 e!3081604)))

(declare-datatypes ((tuple2!61254 0))(
  ( (tuple2!61255 (_1!33930 BalanceConc!29266) (_2!33930 BalanceConc!29266)) )
))
(declare-fun lt!2030712 () tuple2!61254)

(declare-fun size!37592 (BalanceConc!29266) Int)

(assert (=> b!4932240 (= res!2104926 (not (= (size!37592 (_1!33930 lt!2030712)) testedPSize!70)))))

(declare-fun b!4932241 () Bool)

(declare-fun e!3081600 () Bool)

(assert (=> b!4932241 (= e!3081598 e!3081600)))

(declare-fun res!2104923 () Bool)

(assert (=> b!4932241 (=> res!2104923 e!3081600)))

(declare-fun lt!2030710 () Int)

(declare-fun lt!2030708 () Int)

(assert (=> b!4932241 (= res!2104923 (not (= lt!2030710 lt!2030708)))))

(declare-fun size!37593 (List!56906) Int)

(assert (=> b!4932241 (<= lt!2030710 (size!37593 lt!2030714))))

(declare-fun lt!2030718 () Unit!147419)

(declare-fun lemmaIsPrefixThenSmallerEqSize!695 (List!56906 List!56906) Unit!147419)

(assert (=> b!4932241 (= lt!2030718 (lemmaIsPrefixThenSmallerEqSize!695 testedP!110 lt!2030714))))

(declare-fun b!4932242 () Bool)

(declare-fun tp_is_empty!35995 () Bool)

(declare-fun tp!1384711 () Bool)

(assert (=> b!4932242 (= e!3081594 (and tp_is_empty!35995 tp!1384711))))

(declare-fun b!4932243 () Bool)

(declare-fun e!3081603 () Bool)

(assert (=> b!4932243 (= e!3081596 e!3081603)))

(declare-fun res!2104930 () Bool)

(assert (=> b!4932243 (=> (not res!2104930) (not e!3081603))))

(assert (=> b!4932243 (= res!2104930 (= testedPSize!70 lt!2030710))))

(assert (=> b!4932243 (= lt!2030710 (size!37593 testedP!110))))

(declare-fun b!4932244 () Bool)

(declare-fun res!2104927 () Bool)

(declare-fun e!3081602 () Bool)

(assert (=> b!4932244 (=> res!2104927 e!3081602)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4932244 (= res!2104927 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4932245 () Bool)

(declare-fun tp!1384709 () Bool)

(declare-fun inv!73723 (Conc!14918) Bool)

(assert (=> b!4932245 (= e!3081599 (and (inv!73723 (c!840535 totalInput!685)) tp!1384709))))

(declare-fun b!4932246 () Bool)

(declare-fun e!3081597 () Bool)

(assert (=> b!4932246 (= e!3081603 e!3081597)))

(declare-fun res!2104925 () Bool)

(assert (=> b!4932246 (=> (not res!2104925) (not e!3081597))))

(assert (=> b!4932246 (= res!2104925 (= totalInputSize!132 lt!2030708))))

(assert (=> b!4932246 (= lt!2030708 (size!37592 totalInput!685))))

(declare-fun setIsEmpty!27692 () Bool)

(assert (=> setIsEmpty!27692 setRes!27692))

(declare-fun b!4932247 () Bool)

(declare-fun e!3081595 () Bool)

(assert (=> b!4932247 (= e!3081597 (not e!3081595))))

(declare-fun res!2104924 () Bool)

(assert (=> b!4932247 (=> res!2104924 e!3081595)))

(declare-fun isPrefix!5007 (List!56906 List!56906) Bool)

(assert (=> b!4932247 (= res!2104924 (not (isPrefix!5007 testedP!110 lt!2030714)))))

(assert (=> b!4932247 (isPrefix!5007 testedP!110 lt!2030719)))

(declare-fun lt!2030713 () Unit!147419)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3231 (List!56906 List!56906) Unit!147419)

(assert (=> b!4932247 (= lt!2030713 (lemmaConcatTwoListThenFirstIsPrefix!3231 testedP!110 testedSuffix!70))))

(declare-fun b!4932248 () Bool)

(assert (=> b!4932248 (= e!3081602 e!3081604)))

(declare-fun res!2104922 () Bool)

(assert (=> b!4932248 (=> res!2104922 e!3081604)))

(assert (=> b!4932248 (= res!2104922 (not (= (++!12374 lt!2030707 lt!2030716) lt!2030714)))))

(assert (=> b!4932248 (= lt!2030716 (list!18020 (_2!33930 lt!2030712)))))

(assert (=> b!4932248 (= lt!2030707 (list!18020 (_1!33930 lt!2030712)))))

(declare-fun splitAt!301 (BalanceConc!29266 Int) tuple2!61254)

(assert (=> b!4932248 (= lt!2030712 (splitAt!301 totalInput!685 testedPSize!70))))

(declare-fun tp!1384713 () Bool)

(declare-fun setElem!27692 () Context!6102)

(declare-fun setNonEmpty!27692 () Bool)

(declare-fun inv!73724 (Context!6102) Bool)

(assert (=> setNonEmpty!27692 (= setRes!27692 (and tp!1384713 (inv!73724 setElem!27692) e!3081593))))

(declare-fun setRest!27692 () (InoxSet Context!6102))

(assert (=> setNonEmpty!27692 (= z!3568 ((_ map or) (store ((as const (Array Context!6102 Bool)) false) setElem!27692 true) setRest!27692))))

(declare-fun b!4932249 () Bool)

(declare-fun tp!1384712 () Bool)

(assert (=> b!4932249 (= e!3081601 (and tp_is_empty!35995 tp!1384712))))

(declare-fun b!4932250 () Bool)

(assert (=> b!4932250 (= e!3081595 e!3081602)))

(declare-fun res!2104929 () Bool)

(assert (=> b!4932250 (=> res!2104929 e!3081602)))

(declare-fun lostCauseZipper!727 ((InoxSet Context!6102)) Bool)

(assert (=> b!4932250 (= res!2104929 (lostCauseZipper!727 z!3568))))

(declare-fun lt!2030717 () List!56906)

(assert (=> b!4932250 (and (= testedSuffix!70 lt!2030717) (= lt!2030717 testedSuffix!70))))

(declare-fun lt!2030715 () Unit!147419)

(declare-fun lemmaSamePrefixThenSameSuffix!2405 (List!56906 List!56906 List!56906 List!56906 List!56906) Unit!147419)

(assert (=> b!4932250 (= lt!2030715 (lemmaSamePrefixThenSameSuffix!2405 testedP!110 testedSuffix!70 testedP!110 lt!2030717 lt!2030714))))

(declare-fun getSuffix!2991 (List!56906 List!56906) List!56906)

(assert (=> b!4932250 (= lt!2030717 (getSuffix!2991 lt!2030714 testedP!110))))

(declare-fun b!4932251 () Bool)

(assert (=> b!4932251 (= e!3081600 true)))

(assert (=> b!4932251 (isPrefix!5007 lt!2030714 lt!2030714)))

(declare-fun lt!2030706 () Unit!147419)

(declare-fun lemmaIsPrefixRefl!3373 (List!56906 List!56906) Unit!147419)

(assert (=> b!4932251 (= lt!2030706 (lemmaIsPrefixRefl!3373 lt!2030714 lt!2030714))))

(assert (= (and start!518108 res!2104928) b!4932243))

(assert (= (and b!4932243 res!2104930) b!4932246))

(assert (= (and b!4932246 res!2104925) b!4932247))

(assert (= (and b!4932247 (not res!2104924)) b!4932250))

(assert (= (and b!4932250 (not res!2104929)) b!4932244))

(assert (= (and b!4932244 (not res!2104927)) b!4932248))

(assert (= (and b!4932248 (not res!2104922)) b!4932240))

(assert (= (and b!4932240 (not res!2104926)) b!4932238))

(assert (= (and b!4932238 (not res!2104921)) b!4932241))

(assert (= (and b!4932241 (not res!2104923)) b!4932251))

(get-info :version)

(assert (= (and start!518108 ((_ is Cons!56782) testedP!110)) b!4932242))

(assert (= (and start!518108 condSetEmpty!27692) setIsEmpty!27692))

(assert (= (and start!518108 (not condSetEmpty!27692)) setNonEmpty!27692))

(assert (= setNonEmpty!27692 b!4932239))

(assert (= start!518108 b!4932245))

(assert (= (and start!518108 ((_ is Cons!56782) testedSuffix!70)) b!4932249))

(declare-fun m!5952398 () Bool)

(assert (=> b!4932241 m!5952398))

(declare-fun m!5952400 () Bool)

(assert (=> b!4932241 m!5952400))

(declare-fun m!5952402 () Bool)

(assert (=> b!4932251 m!5952402))

(declare-fun m!5952404 () Bool)

(assert (=> b!4932251 m!5952404))

(declare-fun m!5952406 () Bool)

(assert (=> b!4932250 m!5952406))

(declare-fun m!5952408 () Bool)

(assert (=> b!4932250 m!5952408))

(declare-fun m!5952410 () Bool)

(assert (=> b!4932250 m!5952410))

(declare-fun m!5952412 () Bool)

(assert (=> setNonEmpty!27692 m!5952412))

(declare-fun m!5952414 () Bool)

(assert (=> start!518108 m!5952414))

(declare-fun m!5952416 () Bool)

(assert (=> start!518108 m!5952416))

(declare-fun m!5952418 () Bool)

(assert (=> start!518108 m!5952418))

(declare-fun m!5952420 () Bool)

(assert (=> b!4932240 m!5952420))

(declare-fun m!5952422 () Bool)

(assert (=> b!4932243 m!5952422))

(declare-fun m!5952424 () Bool)

(assert (=> b!4932248 m!5952424))

(declare-fun m!5952426 () Bool)

(assert (=> b!4932248 m!5952426))

(declare-fun m!5952428 () Bool)

(assert (=> b!4932248 m!5952428))

(declare-fun m!5952430 () Bool)

(assert (=> b!4932248 m!5952430))

(declare-fun m!5952432 () Bool)

(assert (=> b!4932245 m!5952432))

(declare-fun m!5952434 () Bool)

(assert (=> b!4932247 m!5952434))

(declare-fun m!5952436 () Bool)

(assert (=> b!4932247 m!5952436))

(declare-fun m!5952438 () Bool)

(assert (=> b!4932247 m!5952438))

(declare-fun m!5952440 () Bool)

(assert (=> b!4932246 m!5952440))

(declare-fun m!5952442 () Bool)

(assert (=> b!4932238 m!5952442))

(declare-fun m!5952444 () Bool)

(assert (=> b!4932238 m!5952444))

(declare-fun m!5952446 () Bool)

(assert (=> b!4932238 m!5952446))

(declare-fun m!5952448 () Bool)

(assert (=> b!4932238 m!5952448))

(assert (=> b!4932238 m!5952442))

(declare-fun m!5952450 () Bool)

(assert (=> b!4932238 m!5952450))

(declare-fun m!5952452 () Bool)

(assert (=> b!4932238 m!5952452))

(declare-fun m!5952454 () Bool)

(assert (=> b!4932238 m!5952454))

(check-sat (not b!4932250) (not b!4932239) (not b!4932240) tp_is_empty!35995 (not b!4932241) (not b!4932251) (not b!4932243) (not b!4932242) (not start!518108) (not b!4932246) (not b!4932249) (not b!4932238) (not b!4932247) (not b!4932245) (not setNonEmpty!27692) (not b!4932248))
(check-sat)
