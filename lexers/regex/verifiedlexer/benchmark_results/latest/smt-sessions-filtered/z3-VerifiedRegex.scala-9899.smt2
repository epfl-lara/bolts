; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!518532 () Bool)

(assert start!518532)

(declare-fun b!4934231 () Bool)

(declare-datatypes ((Unit!147497 0))(
  ( (Unit!147498) )
))
(declare-fun e!3082996 () Unit!147497)

(declare-fun Unit!147499 () Unit!147497)

(assert (=> b!4934231 (= e!3082996 Unit!147499)))

(declare-fun lt!2032309 () Unit!147497)

(declare-datatypes ((C!27080 0))(
  ( (C!27081 (val!22874 Int)) )
))
(declare-datatypes ((List!56946 0))(
  ( (Nil!56822) (Cons!56822 (h!63270 C!27080) (t!367426 List!56946)) )
))
(declare-fun lt!2032314 () List!56946)

(declare-fun lemmaIsPrefixRefl!3389 (List!56946 List!56946) Unit!147497)

(assert (=> b!4934231 (= lt!2032309 (lemmaIsPrefixRefl!3389 lt!2032314 lt!2032314))))

(declare-fun isPrefix!5023 (List!56946 List!56946) Bool)

(assert (=> b!4934231 (isPrefix!5023 lt!2032314 lt!2032314)))

(declare-fun lt!2032324 () Unit!147497)

(declare-fun testedP!110 () List!56946)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1147 (List!56946 List!56946 List!56946) Unit!147497)

(assert (=> b!4934231 (= lt!2032324 (lemmaIsPrefixSameLengthThenSameList!1147 lt!2032314 testedP!110 lt!2032314))))

(assert (=> b!4934231 false))

(declare-fun b!4934232 () Bool)

(declare-fun e!3083006 () Bool)

(declare-fun tp_is_empty!36027 () Bool)

(declare-fun tp!1385153 () Bool)

(assert (=> b!4934232 (= e!3083006 (and tp_is_empty!36027 tp!1385153))))

(declare-fun b!4934233 () Bool)

(declare-fun e!3083002 () Bool)

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2032311 () List!56946)

(declare-fun size!37632 (List!56946) Int)

(assert (=> b!4934233 (= e!3083002 (= (+ 1 testedPSize!70) (size!37632 lt!2032311)))))

(declare-fun b!4934234 () Bool)

(declare-fun res!2105868 () Bool)

(declare-fun e!3082995 () Bool)

(assert (=> b!4934234 (=> res!2105868 e!3082995)))

(declare-datatypes ((IArray!29929 0))(
  ( (IArray!29930 (innerList!15022 List!56946)) )
))
(declare-datatypes ((Conc!14934 0))(
  ( (Node!14934 (left!41435 Conc!14934) (right!41765 Conc!14934) (csize!30098 Int) (cheight!15145 Int)) (Leaf!24834 (xs!18258 IArray!29929) (csize!30099 Int)) (Empty!14934) )
))
(declare-datatypes ((BalanceConc!29298 0))(
  ( (BalanceConc!29299 (c!840959 Conc!14934)) )
))
(declare-datatypes ((tuple2!61318 0))(
  ( (tuple2!61319 (_1!33962 BalanceConc!29298) (_2!33962 BalanceConc!29298)) )
))
(declare-fun lt!2032308 () tuple2!61318)

(declare-fun size!37633 (BalanceConc!29298) Int)

(assert (=> b!4934234 (= res!2105868 (not (= (size!37633 (_1!33962 lt!2032308)) testedPSize!70)))))

(declare-fun b!4934235 () Bool)

(declare-fun e!3083005 () Bool)

(declare-fun tp!1385152 () Bool)

(assert (=> b!4934235 (= e!3083005 tp!1385152)))

(declare-fun b!4934236 () Bool)

(declare-fun e!3082998 () Bool)

(declare-fun e!3083000 () Bool)

(assert (=> b!4934236 (= e!3082998 e!3083000)))

(declare-fun res!2105870 () Bool)

(assert (=> b!4934236 (=> res!2105870 e!3083000)))

(declare-fun lt!2032307 () Int)

(declare-fun lt!2032319 () Int)

(assert (=> b!4934236 (= res!2105870 (>= lt!2032307 lt!2032319))))

(declare-fun lt!2032313 () Unit!147497)

(assert (=> b!4934236 (= lt!2032313 e!3082996)))

(declare-fun c!840958 () Bool)

(assert (=> b!4934236 (= c!840958 (= lt!2032307 lt!2032319))))

(assert (=> b!4934236 (<= lt!2032307 (size!37632 lt!2032314))))

(declare-fun lt!2032325 () Unit!147497)

(declare-fun lemmaIsPrefixThenSmallerEqSize!711 (List!56946 List!56946) Unit!147497)

(assert (=> b!4934236 (= lt!2032325 (lemmaIsPrefixThenSmallerEqSize!711 testedP!110 lt!2032314))))

(declare-fun tp!1385151 () Bool)

(declare-fun setRes!27764 () Bool)

(declare-datatypes ((Regex!13425 0))(
  ( (ElementMatch!13425 (c!840960 C!27080)) (Concat!21998 (regOne!27362 Regex!13425) (regTwo!27362 Regex!13425)) (EmptyExpr!13425) (Star!13425 (reg!13754 Regex!13425)) (EmptyLang!13425) (Union!13425 (regOne!27363 Regex!13425) (regTwo!27363 Regex!13425)) )
))
(declare-datatypes ((List!56947 0))(
  ( (Nil!56823) (Cons!56823 (h!63271 Regex!13425) (t!367427 List!56947)) )
))
(declare-datatypes ((Context!6134 0))(
  ( (Context!6135 (exprs!3567 List!56947)) )
))
(declare-fun setElem!27764 () Context!6134)

(declare-fun setNonEmpty!27764 () Bool)

(declare-fun inv!73816 (Context!6134) Bool)

(assert (=> setNonEmpty!27764 (= setRes!27764 (and tp!1385151 (inv!73816 setElem!27764) e!3083005))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3568 () (InoxSet Context!6134))

(declare-fun setRest!27764 () (InoxSet Context!6134))

(assert (=> setNonEmpty!27764 (= z!3568 ((_ map or) (store ((as const (Array Context!6134 Bool)) false) setElem!27764 true) setRest!27764))))

(declare-fun b!4934237 () Bool)

(declare-fun res!2105874 () Bool)

(declare-fun e!3083008 () Bool)

(assert (=> b!4934237 (=> res!2105874 e!3083008)))

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4934237 (= res!2105874 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4934238 () Bool)

(assert (=> b!4934238 (= e!3083000 e!3083002)))

(declare-fun res!2105878 () Bool)

(assert (=> b!4934238 (=> res!2105878 e!3083002)))

(declare-fun nullableZipper!830 ((InoxSet Context!6134)) Bool)

(assert (=> b!4934238 (= res!2105878 (not (nullableZipper!830 z!3568)))))

(declare-fun lt!2032315 () List!56946)

(declare-fun ++!12390 (List!56946 List!56946) List!56946)

(assert (=> b!4934238 (= (++!12390 lt!2032311 lt!2032315) lt!2032314)))

(declare-fun lt!2032310 () C!27080)

(assert (=> b!4934238 (= lt!2032311 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822)))))

(declare-fun lt!2032306 () Unit!147497)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1405 (List!56946 C!27080 List!56946 List!56946) Unit!147497)

(assert (=> b!4934238 (= lt!2032306 (lemmaMoveElementToOtherListKeepsConcatEq!1405 testedP!110 lt!2032310 lt!2032315 lt!2032314))))

(declare-fun testedSuffix!70 () List!56946)

(declare-fun tail!9701 (List!56946) List!56946)

(assert (=> b!4934238 (= lt!2032315 (tail!9701 testedSuffix!70))))

(declare-fun lt!2032312 () List!56946)

(declare-fun head!10562 (List!56946) C!27080)

(assert (=> b!4934238 (isPrefix!5023 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822)) lt!2032314)))

(declare-fun lt!2032320 () Unit!147497)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!793 (List!56946 List!56946) Unit!147497)

(assert (=> b!4934238 (= lt!2032320 (lemmaAddHeadSuffixToPrefixStillPrefix!793 testedP!110 lt!2032314))))

(declare-fun b!4934239 () Bool)

(assert (=> b!4934239 (= e!3082995 e!3082998)))

(declare-fun res!2105872 () Bool)

(assert (=> b!4934239 (=> res!2105872 e!3082998)))

(assert (=> b!4934239 (= res!2105872 (not (= lt!2032310 (head!10562 testedSuffix!70))))))

(declare-fun totalInput!685 () BalanceConc!29298)

(declare-fun apply!13732 (BalanceConc!29298 Int) C!27080)

(assert (=> b!4934239 (= lt!2032310 (apply!13732 totalInput!685 testedPSize!70))))

(declare-fun drop!2256 (List!56946 Int) List!56946)

(declare-fun apply!13733 (List!56946 Int) C!27080)

(assert (=> b!4934239 (= (head!10562 (drop!2256 lt!2032314 testedPSize!70)) (apply!13733 lt!2032314 testedPSize!70))))

(declare-fun lt!2032322 () Unit!147497)

(declare-fun lemmaDropApply!1314 (List!56946 Int) Unit!147497)

(assert (=> b!4934239 (= lt!2032322 (lemmaDropApply!1314 lt!2032314 testedPSize!70))))

(declare-fun lt!2032317 () List!56946)

(declare-fun lt!2032318 () List!56946)

(assert (=> b!4934239 (not (or (not (= lt!2032317 testedP!110)) (not (= lt!2032318 testedSuffix!70))))))

(declare-fun lt!2032305 () Unit!147497)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!691 (List!56946 List!56946 List!56946 List!56946) Unit!147497)

(assert (=> b!4934239 (= lt!2032305 (lemmaConcatSameAndSameSizesThenSameLists!691 lt!2032317 lt!2032318 testedP!110 testedSuffix!70))))

(declare-fun b!4934240 () Bool)

(declare-fun e!3083003 () Bool)

(assert (=> b!4934240 (= e!3083003 e!3083008)))

(declare-fun res!2105875 () Bool)

(assert (=> b!4934240 (=> res!2105875 e!3083008)))

(declare-fun lostCauseZipper!743 ((InoxSet Context!6134)) Bool)

(assert (=> b!4934240 (= res!2105875 (lostCauseZipper!743 z!3568))))

(assert (=> b!4934240 (and (= testedSuffix!70 lt!2032312) (= lt!2032312 testedSuffix!70))))

(declare-fun lt!2032316 () Unit!147497)

(declare-fun lemmaSamePrefixThenSameSuffix!2421 (List!56946 List!56946 List!56946 List!56946 List!56946) Unit!147497)

(assert (=> b!4934240 (= lt!2032316 (lemmaSamePrefixThenSameSuffix!2421 testedP!110 testedSuffix!70 testedP!110 lt!2032312 lt!2032314))))

(declare-fun getSuffix!3007 (List!56946 List!56946) List!56946)

(assert (=> b!4934240 (= lt!2032312 (getSuffix!3007 lt!2032314 testedP!110))))

(declare-fun res!2105873 () Bool)

(declare-fun e!3083001 () Bool)

(assert (=> start!518532 (=> (not res!2105873) (not e!3083001))))

(declare-fun lt!2032323 () List!56946)

(assert (=> start!518532 (= res!2105873 (= lt!2032323 lt!2032314))))

(declare-fun list!18044 (BalanceConc!29298) List!56946)

(assert (=> start!518532 (= lt!2032314 (list!18044 totalInput!685))))

(assert (=> start!518532 (= lt!2032323 (++!12390 testedP!110 testedSuffix!70))))

(assert (=> start!518532 e!3083001))

(assert (=> start!518532 e!3083006))

(declare-fun condSetEmpty!27764 () Bool)

(assert (=> start!518532 (= condSetEmpty!27764 (= z!3568 ((as const (Array Context!6134 Bool)) false)))))

(assert (=> start!518532 setRes!27764))

(assert (=> start!518532 true))

(declare-fun e!3082997 () Bool)

(declare-fun inv!73817 (BalanceConc!29298) Bool)

(assert (=> start!518532 (and (inv!73817 totalInput!685) e!3082997)))

(declare-fun e!3083007 () Bool)

(assert (=> start!518532 e!3083007))

(declare-fun b!4934241 () Bool)

(declare-fun e!3083004 () Bool)

(declare-fun e!3082999 () Bool)

(assert (=> b!4934241 (= e!3083004 e!3082999)))

(declare-fun res!2105871 () Bool)

(assert (=> b!4934241 (=> (not res!2105871) (not e!3082999))))

(assert (=> b!4934241 (= res!2105871 (= totalInputSize!132 lt!2032319))))

(assert (=> b!4934241 (= lt!2032319 (size!37633 totalInput!685))))

(declare-fun b!4934242 () Bool)

(declare-fun tp!1385149 () Bool)

(assert (=> b!4934242 (= e!3083007 (and tp_is_empty!36027 tp!1385149))))

(declare-fun b!4934243 () Bool)

(assert (=> b!4934243 (= e!3083008 e!3082995)))

(declare-fun res!2105876 () Bool)

(assert (=> b!4934243 (=> res!2105876 e!3082995)))

(assert (=> b!4934243 (= res!2105876 (not (= (++!12390 lt!2032317 lt!2032318) lt!2032314)))))

(assert (=> b!4934243 (= lt!2032318 (list!18044 (_2!33962 lt!2032308)))))

(assert (=> b!4934243 (= lt!2032317 (list!18044 (_1!33962 lt!2032308)))))

(declare-fun splitAt!325 (BalanceConc!29298 Int) tuple2!61318)

(assert (=> b!4934243 (= lt!2032308 (splitAt!325 totalInput!685 testedPSize!70))))

(declare-fun b!4934244 () Bool)

(declare-fun Unit!147500 () Unit!147497)

(assert (=> b!4934244 (= e!3082996 Unit!147500)))

(declare-fun setIsEmpty!27764 () Bool)

(assert (=> setIsEmpty!27764 setRes!27764))

(declare-fun b!4934245 () Bool)

(assert (=> b!4934245 (= e!3083001 e!3083004)))

(declare-fun res!2105877 () Bool)

(assert (=> b!4934245 (=> (not res!2105877) (not e!3083004))))

(assert (=> b!4934245 (= res!2105877 (= testedPSize!70 lt!2032307))))

(assert (=> b!4934245 (= lt!2032307 (size!37632 testedP!110))))

(declare-fun b!4934246 () Bool)

(assert (=> b!4934246 (= e!3082999 (not e!3083003))))

(declare-fun res!2105869 () Bool)

(assert (=> b!4934246 (=> res!2105869 e!3083003)))

(assert (=> b!4934246 (= res!2105869 (not (isPrefix!5023 testedP!110 lt!2032314)))))

(assert (=> b!4934246 (isPrefix!5023 testedP!110 lt!2032323)))

(declare-fun lt!2032321 () Unit!147497)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3247 (List!56946 List!56946) Unit!147497)

(assert (=> b!4934246 (= lt!2032321 (lemmaConcatTwoListThenFirstIsPrefix!3247 testedP!110 testedSuffix!70))))

(declare-fun b!4934247 () Bool)

(declare-fun tp!1385150 () Bool)

(declare-fun inv!73818 (Conc!14934) Bool)

(assert (=> b!4934247 (= e!3082997 (and (inv!73818 (c!840959 totalInput!685)) tp!1385150))))

(assert (= (and start!518532 res!2105873) b!4934245))

(assert (= (and b!4934245 res!2105877) b!4934241))

(assert (= (and b!4934241 res!2105871) b!4934246))

(assert (= (and b!4934246 (not res!2105869)) b!4934240))

(assert (= (and b!4934240 (not res!2105875)) b!4934237))

(assert (= (and b!4934237 (not res!2105874)) b!4934243))

(assert (= (and b!4934243 (not res!2105876)) b!4934234))

(assert (= (and b!4934234 (not res!2105868)) b!4934239))

(assert (= (and b!4934239 (not res!2105872)) b!4934236))

(assert (= (and b!4934236 c!840958) b!4934231))

(assert (= (and b!4934236 (not c!840958)) b!4934244))

(assert (= (and b!4934236 (not res!2105870)) b!4934238))

(assert (= (and b!4934238 (not res!2105878)) b!4934233))

(get-info :version)

(assert (= (and start!518532 ((_ is Cons!56822) testedP!110)) b!4934232))

(assert (= (and start!518532 condSetEmpty!27764) setIsEmpty!27764))

(assert (= (and start!518532 (not condSetEmpty!27764)) setNonEmpty!27764))

(assert (= setNonEmpty!27764 b!4934235))

(assert (= start!518532 b!4934247))

(assert (= (and start!518532 ((_ is Cons!56822) testedSuffix!70)) b!4934242))

(declare-fun m!5955004 () Bool)

(assert (=> setNonEmpty!27764 m!5955004))

(declare-fun m!5955006 () Bool)

(assert (=> b!4934231 m!5955006))

(declare-fun m!5955008 () Bool)

(assert (=> b!4934231 m!5955008))

(declare-fun m!5955010 () Bool)

(assert (=> b!4934231 m!5955010))

(declare-fun m!5955012 () Bool)

(assert (=> b!4934246 m!5955012))

(declare-fun m!5955014 () Bool)

(assert (=> b!4934246 m!5955014))

(declare-fun m!5955016 () Bool)

(assert (=> b!4934246 m!5955016))

(declare-fun m!5955018 () Bool)

(assert (=> b!4934243 m!5955018))

(declare-fun m!5955020 () Bool)

(assert (=> b!4934243 m!5955020))

(declare-fun m!5955022 () Bool)

(assert (=> b!4934243 m!5955022))

(declare-fun m!5955024 () Bool)

(assert (=> b!4934243 m!5955024))

(declare-fun m!5955026 () Bool)

(assert (=> b!4934233 m!5955026))

(declare-fun m!5955028 () Bool)

(assert (=> b!4934245 m!5955028))

(declare-fun m!5955030 () Bool)

(assert (=> b!4934236 m!5955030))

(declare-fun m!5955032 () Bool)

(assert (=> b!4934236 m!5955032))

(declare-fun m!5955034 () Bool)

(assert (=> b!4934240 m!5955034))

(declare-fun m!5955036 () Bool)

(assert (=> b!4934240 m!5955036))

(declare-fun m!5955038 () Bool)

(assert (=> b!4934240 m!5955038))

(declare-fun m!5955040 () Bool)

(assert (=> b!4934247 m!5955040))

(declare-fun m!5955042 () Bool)

(assert (=> b!4934241 m!5955042))

(declare-fun m!5955044 () Bool)

(assert (=> b!4934238 m!5955044))

(declare-fun m!5955046 () Bool)

(assert (=> b!4934238 m!5955046))

(declare-fun m!5955048 () Bool)

(assert (=> b!4934238 m!5955048))

(declare-fun m!5955050 () Bool)

(assert (=> b!4934238 m!5955050))

(declare-fun m!5955052 () Bool)

(assert (=> b!4934238 m!5955052))

(declare-fun m!5955054 () Bool)

(assert (=> b!4934238 m!5955054))

(declare-fun m!5955056 () Bool)

(assert (=> b!4934238 m!5955056))

(declare-fun m!5955058 () Bool)

(assert (=> b!4934238 m!5955058))

(assert (=> b!4934238 m!5955046))

(declare-fun m!5955060 () Bool)

(assert (=> b!4934238 m!5955060))

(declare-fun m!5955062 () Bool)

(assert (=> start!518532 m!5955062))

(declare-fun m!5955064 () Bool)

(assert (=> start!518532 m!5955064))

(declare-fun m!5955066 () Bool)

(assert (=> start!518532 m!5955066))

(declare-fun m!5955068 () Bool)

(assert (=> b!4934239 m!5955068))

(declare-fun m!5955070 () Bool)

(assert (=> b!4934239 m!5955070))

(declare-fun m!5955072 () Bool)

(assert (=> b!4934239 m!5955072))

(declare-fun m!5955074 () Bool)

(assert (=> b!4934239 m!5955074))

(assert (=> b!4934239 m!5955072))

(declare-fun m!5955076 () Bool)

(assert (=> b!4934239 m!5955076))

(declare-fun m!5955078 () Bool)

(assert (=> b!4934239 m!5955078))

(declare-fun m!5955080 () Bool)

(assert (=> b!4934239 m!5955080))

(declare-fun m!5955082 () Bool)

(assert (=> b!4934234 m!5955082))

(check-sat (not b!4934238) (not setNonEmpty!27764) (not b!4934233) (not b!4934240) (not b!4934246) (not b!4934241) (not b!4934235) (not start!518532) (not b!4934247) (not b!4934232) (not b!4934243) (not b!4934234) (not b!4934242) (not b!4934239) (not b!4934236) (not b!4934245) tp_is_empty!36027 (not b!4934231))
(check-sat)
(get-model)

(declare-fun bs!1180563 () Bool)

(declare-fun b!4934256 () Bool)

(declare-fun d!1588248 () Bool)

(assert (= bs!1180563 (and b!4934256 d!1588248)))

(declare-fun lambda!245742 () Int)

(declare-fun lambda!245741 () Int)

(assert (=> bs!1180563 (not (= lambda!245742 lambda!245741))))

(declare-fun bs!1180564 () Bool)

(declare-fun b!4934257 () Bool)

(assert (= bs!1180564 (and b!4934257 d!1588248)))

(declare-fun lambda!245743 () Int)

(assert (=> bs!1180564 (not (= lambda!245743 lambda!245741))))

(declare-fun bs!1180565 () Bool)

(assert (= bs!1180565 (and b!4934257 b!4934256)))

(assert (=> bs!1180565 (= lambda!245743 lambda!245742)))

(declare-fun c!840975 () Bool)

(declare-datatypes ((List!56948 0))(
  ( (Nil!56824) (Cons!56824 (h!63272 Context!6134) (t!367428 List!56948)) )
))
(declare-fun lt!2032350 () List!56948)

(declare-fun lt!2032352 () List!56948)

(declare-fun bm!344256 () Bool)

(declare-fun call!344261 () Bool)

(declare-fun exists!1275 (List!56948 Int) Bool)

(assert (=> bm!344256 (= call!344261 (exists!1275 (ite c!840975 lt!2032352 lt!2032350) (ite c!840975 lambda!245742 lambda!245743)))))

(declare-fun e!3083017 () Unit!147497)

(declare-fun Unit!147501 () Unit!147497)

(assert (=> b!4934257 (= e!3083017 Unit!147501)))

(declare-fun call!344262 () List!56948)

(assert (=> b!4934257 (= lt!2032350 call!344262)))

(declare-fun lt!2032353 () Unit!147497)

(declare-fun lemmaForallThenNotExists!185 (List!56948 Int) Unit!147497)

(assert (=> b!4934257 (= lt!2032353 (lemmaForallThenNotExists!185 lt!2032350 lambda!245741))))

(assert (=> b!4934257 (not call!344261)))

(declare-fun lt!2032349 () Unit!147497)

(assert (=> b!4934257 (= lt!2032349 lt!2032353)))

(declare-fun Unit!147502 () Unit!147497)

(assert (=> b!4934256 (= e!3083017 Unit!147502)))

(assert (=> b!4934256 (= lt!2032352 call!344262)))

(declare-fun lt!2032351 () Unit!147497)

(declare-fun lemmaNotForallThenExists!202 (List!56948 Int) Unit!147497)

(assert (=> b!4934256 (= lt!2032351 (lemmaNotForallThenExists!202 lt!2032352 lambda!245741))))

(assert (=> b!4934256 call!344261))

(declare-fun lt!2032346 () Unit!147497)

(assert (=> b!4934256 (= lt!2032346 lt!2032351)))

(declare-fun lt!2032348 () Bool)

(declare-datatypes ((Option!14182 0))(
  ( (None!14181) (Some!14181 (v!50151 List!56946)) )
))
(declare-fun isEmpty!30607 (Option!14182) Bool)

(declare-fun getLanguageWitness!640 ((InoxSet Context!6134)) Option!14182)

(assert (=> d!1588248 (= lt!2032348 (isEmpty!30607 (getLanguageWitness!640 z!3568)))))

(declare-fun forall!13183 ((InoxSet Context!6134) Int) Bool)

(assert (=> d!1588248 (= lt!2032348 (forall!13183 z!3568 lambda!245741))))

(declare-fun lt!2032347 () Unit!147497)

(assert (=> d!1588248 (= lt!2032347 e!3083017)))

(assert (=> d!1588248 (= c!840975 (not (forall!13183 z!3568 lambda!245741)))))

(assert (=> d!1588248 (= (lostCauseZipper!743 z!3568) lt!2032348)))

(declare-fun bm!344257 () Bool)

(declare-fun toList!7964 ((InoxSet Context!6134)) List!56948)

(assert (=> bm!344257 (= call!344262 (toList!7964 z!3568))))

(assert (= (and d!1588248 c!840975) b!4934256))

(assert (= (and d!1588248 (not c!840975)) b!4934257))

(assert (= (or b!4934256 b!4934257) bm!344256))

(assert (= (or b!4934256 b!4934257) bm!344257))

(declare-fun m!5955084 () Bool)

(assert (=> b!4934256 m!5955084))

(declare-fun m!5955086 () Bool)

(assert (=> b!4934257 m!5955086))

(declare-fun m!5955088 () Bool)

(assert (=> d!1588248 m!5955088))

(assert (=> d!1588248 m!5955088))

(declare-fun m!5955090 () Bool)

(assert (=> d!1588248 m!5955090))

(declare-fun m!5955092 () Bool)

(assert (=> d!1588248 m!5955092))

(assert (=> d!1588248 m!5955092))

(declare-fun m!5955094 () Bool)

(assert (=> bm!344257 m!5955094))

(declare-fun m!5955096 () Bool)

(assert (=> bm!344256 m!5955096))

(assert (=> b!4934240 d!1588248))

(declare-fun d!1588252 () Bool)

(assert (=> d!1588252 (= testedSuffix!70 lt!2032312)))

(declare-fun lt!2032356 () Unit!147497)

(declare-fun choose!36220 (List!56946 List!56946 List!56946 List!56946 List!56946) Unit!147497)

(assert (=> d!1588252 (= lt!2032356 (choose!36220 testedP!110 testedSuffix!70 testedP!110 lt!2032312 lt!2032314))))

(assert (=> d!1588252 (isPrefix!5023 testedP!110 lt!2032314)))

(assert (=> d!1588252 (= (lemmaSamePrefixThenSameSuffix!2421 testedP!110 testedSuffix!70 testedP!110 lt!2032312 lt!2032314) lt!2032356)))

(declare-fun bs!1180566 () Bool)

(assert (= bs!1180566 d!1588252))

(declare-fun m!5955098 () Bool)

(assert (=> bs!1180566 m!5955098))

(assert (=> bs!1180566 m!5955012))

(assert (=> b!4934240 d!1588252))

(declare-fun d!1588254 () Bool)

(declare-fun lt!2032365 () List!56946)

(assert (=> d!1588254 (= (++!12390 testedP!110 lt!2032365) lt!2032314)))

(declare-fun e!3083020 () List!56946)

(assert (=> d!1588254 (= lt!2032365 e!3083020)))

(declare-fun c!840980 () Bool)

(assert (=> d!1588254 (= c!840980 ((_ is Cons!56822) testedP!110))))

(assert (=> d!1588254 (>= (size!37632 lt!2032314) (size!37632 testedP!110))))

(assert (=> d!1588254 (= (getSuffix!3007 lt!2032314 testedP!110) lt!2032365)))

(declare-fun b!4934262 () Bool)

(assert (=> b!4934262 (= e!3083020 (getSuffix!3007 (tail!9701 lt!2032314) (t!367426 testedP!110)))))

(declare-fun b!4934263 () Bool)

(assert (=> b!4934263 (= e!3083020 lt!2032314)))

(assert (= (and d!1588254 c!840980) b!4934262))

(assert (= (and d!1588254 (not c!840980)) b!4934263))

(declare-fun m!5955100 () Bool)

(assert (=> d!1588254 m!5955100))

(assert (=> d!1588254 m!5955030))

(assert (=> d!1588254 m!5955028))

(declare-fun m!5955102 () Bool)

(assert (=> b!4934262 m!5955102))

(assert (=> b!4934262 m!5955102))

(declare-fun m!5955104 () Bool)

(assert (=> b!4934262 m!5955104))

(assert (=> b!4934240 d!1588254))

(declare-fun d!1588256 () Bool)

(assert (=> d!1588256 (= (head!10562 (drop!2256 lt!2032314 testedPSize!70)) (h!63270 (drop!2256 lt!2032314 testedPSize!70)))))

(assert (=> b!4934239 d!1588256))

(declare-fun b!4934284 () Bool)

(declare-fun e!3083039 () Int)

(declare-fun call!344271 () Int)

(assert (=> b!4934284 (= e!3083039 call!344271)))

(declare-fun b!4934285 () Bool)

(declare-fun e!3083036 () Bool)

(declare-fun lt!2032382 () List!56946)

(assert (=> b!4934285 (= e!3083036 (= (size!37632 lt!2032382) e!3083039))))

(declare-fun c!840994 () Bool)

(assert (=> b!4934285 (= c!840994 (<= testedPSize!70 0))))

(declare-fun b!4934286 () Bool)

(declare-fun e!3083037 () Int)

(assert (=> b!4934286 (= e!3083037 0)))

(declare-fun b!4934287 () Bool)

(assert (=> b!4934287 (= e!3083037 (- call!344271 testedPSize!70))))

(declare-fun b!4934288 () Bool)

(assert (=> b!4934288 (= e!3083039 e!3083037)))

(declare-fun c!840996 () Bool)

(assert (=> b!4934288 (= c!840996 (>= testedPSize!70 call!344271))))

(declare-fun bm!344266 () Bool)

(assert (=> bm!344266 (= call!344271 (size!37632 lt!2032314))))

(declare-fun b!4934289 () Bool)

(declare-fun e!3083038 () List!56946)

(declare-fun e!3083040 () List!56946)

(assert (=> b!4934289 (= e!3083038 e!3083040)))

(declare-fun c!840995 () Bool)

(assert (=> b!4934289 (= c!840995 (<= testedPSize!70 0))))

(declare-fun d!1588258 () Bool)

(assert (=> d!1588258 e!3083036))

(declare-fun res!2105881 () Bool)

(assert (=> d!1588258 (=> (not res!2105881) (not e!3083036))))

(declare-fun content!10099 (List!56946) (InoxSet C!27080))

(assert (=> d!1588258 (= res!2105881 (= ((_ map implies) (content!10099 lt!2032382) (content!10099 lt!2032314)) ((as const (InoxSet C!27080)) true)))))

(assert (=> d!1588258 (= lt!2032382 e!3083038)))

(declare-fun c!840997 () Bool)

(assert (=> d!1588258 (= c!840997 ((_ is Nil!56822) lt!2032314))))

(assert (=> d!1588258 (= (drop!2256 lt!2032314 testedPSize!70) lt!2032382)))

(declare-fun b!4934290 () Bool)

(assert (=> b!4934290 (= e!3083040 lt!2032314)))

(declare-fun b!4934291 () Bool)

(assert (=> b!4934291 (= e!3083040 (drop!2256 (t!367426 lt!2032314) (- testedPSize!70 1)))))

(declare-fun b!4934292 () Bool)

(assert (=> b!4934292 (= e!3083038 Nil!56822)))

(assert (= (and d!1588258 c!840997) b!4934292))

(assert (= (and d!1588258 (not c!840997)) b!4934289))

(assert (= (and b!4934289 c!840995) b!4934290))

(assert (= (and b!4934289 (not c!840995)) b!4934291))

(assert (= (and d!1588258 res!2105881) b!4934285))

(assert (= (and b!4934285 c!840994) b!4934284))

(assert (= (and b!4934285 (not c!840994)) b!4934288))

(assert (= (and b!4934288 c!840996) b!4934286))

(assert (= (and b!4934288 (not c!840996)) b!4934287))

(assert (= (or b!4934284 b!4934288 b!4934287) bm!344266))

(declare-fun m!5955120 () Bool)

(assert (=> b!4934285 m!5955120))

(assert (=> bm!344266 m!5955030))

(declare-fun m!5955122 () Bool)

(assert (=> d!1588258 m!5955122))

(declare-fun m!5955124 () Bool)

(assert (=> d!1588258 m!5955124))

(declare-fun m!5955126 () Bool)

(assert (=> b!4934291 m!5955126))

(assert (=> b!4934239 d!1588258))

(declare-fun d!1588262 () Bool)

(assert (=> d!1588262 (= (head!10562 testedSuffix!70) (h!63270 testedSuffix!70))))

(assert (=> b!4934239 d!1588262))

(declare-fun d!1588264 () Bool)

(assert (=> d!1588264 (= (head!10562 (drop!2256 lt!2032314 testedPSize!70)) (apply!13733 lt!2032314 testedPSize!70))))

(declare-fun lt!2032388 () Unit!147497)

(declare-fun choose!36222 (List!56946 Int) Unit!147497)

(assert (=> d!1588264 (= lt!2032388 (choose!36222 lt!2032314 testedPSize!70))))

(declare-fun e!3083043 () Bool)

(assert (=> d!1588264 e!3083043))

(declare-fun res!2105884 () Bool)

(assert (=> d!1588264 (=> (not res!2105884) (not e!3083043))))

(assert (=> d!1588264 (= res!2105884 (>= testedPSize!70 0))))

(assert (=> d!1588264 (= (lemmaDropApply!1314 lt!2032314 testedPSize!70) lt!2032388)))

(declare-fun b!4934295 () Bool)

(assert (=> b!4934295 (= e!3083043 (< testedPSize!70 (size!37632 lt!2032314)))))

(assert (= (and d!1588264 res!2105884) b!4934295))

(assert (=> d!1588264 m!5955072))

(assert (=> d!1588264 m!5955072))

(assert (=> d!1588264 m!5955074))

(assert (=> d!1588264 m!5955080))

(declare-fun m!5955130 () Bool)

(assert (=> d!1588264 m!5955130))

(assert (=> b!4934295 m!5955030))

(assert (=> b!4934239 d!1588264))

(declare-fun d!1588268 () Bool)

(declare-fun lt!2032394 () C!27080)

(declare-fun contains!19471 (List!56946 C!27080) Bool)

(assert (=> d!1588268 (contains!19471 lt!2032314 lt!2032394)))

(declare-fun e!3083052 () C!27080)

(assert (=> d!1588268 (= lt!2032394 e!3083052)))

(declare-fun c!841003 () Bool)

(assert (=> d!1588268 (= c!841003 (= testedPSize!70 0))))

(declare-fun e!3083051 () Bool)

(assert (=> d!1588268 e!3083051))

(declare-fun res!2105887 () Bool)

(assert (=> d!1588268 (=> (not res!2105887) (not e!3083051))))

(assert (=> d!1588268 (= res!2105887 (<= 0 testedPSize!70))))

(assert (=> d!1588268 (= (apply!13733 lt!2032314 testedPSize!70) lt!2032394)))

(declare-fun b!4934308 () Bool)

(assert (=> b!4934308 (= e!3083051 (< testedPSize!70 (size!37632 lt!2032314)))))

(declare-fun b!4934309 () Bool)

(assert (=> b!4934309 (= e!3083052 (head!10562 lt!2032314))))

(declare-fun b!4934310 () Bool)

(assert (=> b!4934310 (= e!3083052 (apply!13733 (tail!9701 lt!2032314) (- testedPSize!70 1)))))

(assert (= (and d!1588268 res!2105887) b!4934308))

(assert (= (and d!1588268 c!841003) b!4934309))

(assert (= (and d!1588268 (not c!841003)) b!4934310))

(declare-fun m!5955138 () Bool)

(assert (=> d!1588268 m!5955138))

(assert (=> b!4934308 m!5955030))

(declare-fun m!5955140 () Bool)

(assert (=> b!4934309 m!5955140))

(assert (=> b!4934310 m!5955102))

(assert (=> b!4934310 m!5955102))

(declare-fun m!5955142 () Bool)

(assert (=> b!4934310 m!5955142))

(assert (=> b!4934239 d!1588268))

(declare-fun d!1588274 () Bool)

(declare-fun lt!2032402 () C!27080)

(assert (=> d!1588274 (= lt!2032402 (apply!13733 (list!18044 totalInput!685) testedPSize!70))))

(declare-fun apply!13734 (Conc!14934 Int) C!27080)

(assert (=> d!1588274 (= lt!2032402 (apply!13734 (c!840959 totalInput!685) testedPSize!70))))

(declare-fun e!3083061 () Bool)

(assert (=> d!1588274 e!3083061))

(declare-fun res!2105893 () Bool)

(assert (=> d!1588274 (=> (not res!2105893) (not e!3083061))))

(assert (=> d!1588274 (= res!2105893 (<= 0 testedPSize!70))))

(assert (=> d!1588274 (= (apply!13732 totalInput!685 testedPSize!70) lt!2032402)))

(declare-fun b!4934322 () Bool)

(assert (=> b!4934322 (= e!3083061 (< testedPSize!70 (size!37633 totalInput!685)))))

(assert (= (and d!1588274 res!2105893) b!4934322))

(assert (=> d!1588274 m!5955062))

(assert (=> d!1588274 m!5955062))

(declare-fun m!5955152 () Bool)

(assert (=> d!1588274 m!5955152))

(declare-fun m!5955154 () Bool)

(assert (=> d!1588274 m!5955154))

(assert (=> b!4934322 m!5955042))

(assert (=> b!4934239 d!1588274))

(declare-fun d!1588280 () Bool)

(assert (=> d!1588280 (and (= lt!2032317 testedP!110) (= lt!2032318 testedSuffix!70))))

(declare-fun lt!2032406 () Unit!147497)

(declare-fun choose!36224 (List!56946 List!56946 List!56946 List!56946) Unit!147497)

(assert (=> d!1588280 (= lt!2032406 (choose!36224 lt!2032317 lt!2032318 testedP!110 testedSuffix!70))))

(assert (=> d!1588280 (= (++!12390 lt!2032317 lt!2032318) (++!12390 testedP!110 testedSuffix!70))))

(assert (=> d!1588280 (= (lemmaConcatSameAndSameSizesThenSameLists!691 lt!2032317 lt!2032318 testedP!110 testedSuffix!70) lt!2032406)))

(declare-fun bs!1180572 () Bool)

(assert (= bs!1180572 d!1588280))

(declare-fun m!5955156 () Bool)

(assert (=> bs!1180572 m!5955156))

(assert (=> bs!1180572 m!5955018))

(assert (=> bs!1180572 m!5955064))

(assert (=> b!4934239 d!1588280))

(declare-fun bs!1180573 () Bool)

(declare-fun d!1588282 () Bool)

(assert (= bs!1180573 (and d!1588282 d!1588248)))

(declare-fun lambda!245761 () Int)

(assert (=> bs!1180573 (not (= lambda!245761 lambda!245741))))

(declare-fun bs!1180574 () Bool)

(assert (= bs!1180574 (and d!1588282 b!4934256)))

(assert (=> bs!1180574 (not (= lambda!245761 lambda!245742))))

(declare-fun bs!1180575 () Bool)

(assert (= bs!1180575 (and d!1588282 b!4934257)))

(assert (=> bs!1180575 (not (= lambda!245761 lambda!245743))))

(declare-fun exists!1277 ((InoxSet Context!6134) Int) Bool)

(assert (=> d!1588282 (= (nullableZipper!830 z!3568) (exists!1277 z!3568 lambda!245761))))

(declare-fun bs!1180576 () Bool)

(assert (= bs!1180576 d!1588282))

(declare-fun m!5955158 () Bool)

(assert (=> bs!1180576 m!5955158))

(assert (=> b!4934238 d!1588282))

(declare-fun b!4934359 () Bool)

(declare-fun res!2105906 () Bool)

(declare-fun e!3083084 () Bool)

(assert (=> b!4934359 (=> (not res!2105906) (not e!3083084))))

(assert (=> b!4934359 (= res!2105906 (= (head!10562 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))) (head!10562 lt!2032314)))))

(declare-fun d!1588284 () Bool)

(declare-fun e!3083083 () Bool)

(assert (=> d!1588284 e!3083083))

(declare-fun res!2105907 () Bool)

(assert (=> d!1588284 (=> res!2105907 e!3083083)))

(declare-fun lt!2032412 () Bool)

(assert (=> d!1588284 (= res!2105907 (not lt!2032412))))

(declare-fun e!3083085 () Bool)

(assert (=> d!1588284 (= lt!2032412 e!3083085)))

(declare-fun res!2105908 () Bool)

(assert (=> d!1588284 (=> res!2105908 e!3083085)))

(assert (=> d!1588284 (= res!2105908 ((_ is Nil!56822) (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))

(assert (=> d!1588284 (= (isPrefix!5023 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822)) lt!2032314) lt!2032412)))

(declare-fun b!4934361 () Bool)

(assert (=> b!4934361 (= e!3083083 (>= (size!37632 lt!2032314) (size!37632 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(declare-fun b!4934358 () Bool)

(assert (=> b!4934358 (= e!3083085 e!3083084)))

(declare-fun res!2105905 () Bool)

(assert (=> b!4934358 (=> (not res!2105905) (not e!3083084))))

(assert (=> b!4934358 (= res!2105905 (not ((_ is Nil!56822) lt!2032314)))))

(declare-fun b!4934360 () Bool)

(assert (=> b!4934360 (= e!3083084 (isPrefix!5023 (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))) (tail!9701 lt!2032314)))))

(assert (= (and d!1588284 (not res!2105908)) b!4934358))

(assert (= (and b!4934358 res!2105905) b!4934359))

(assert (= (and b!4934359 res!2105906) b!4934360))

(assert (= (and d!1588284 (not res!2105907)) b!4934361))

(assert (=> b!4934359 m!5955046))

(declare-fun m!5955168 () Bool)

(assert (=> b!4934359 m!5955168))

(assert (=> b!4934359 m!5955140))

(assert (=> b!4934361 m!5955030))

(assert (=> b!4934361 m!5955046))

(declare-fun m!5955170 () Bool)

(assert (=> b!4934361 m!5955170))

(assert (=> b!4934360 m!5955046))

(declare-fun m!5955172 () Bool)

(assert (=> b!4934360 m!5955172))

(assert (=> b!4934360 m!5955102))

(assert (=> b!4934360 m!5955172))

(assert (=> b!4934360 m!5955102))

(declare-fun m!5955174 () Bool)

(assert (=> b!4934360 m!5955174))

(assert (=> b!4934238 d!1588284))

(declare-fun d!1588288 () Bool)

(assert (=> d!1588288 (= (head!10562 lt!2032312) (h!63270 lt!2032312))))

(assert (=> b!4934238 d!1588288))

(declare-fun b!4934375 () Bool)

(declare-fun e!3083095 () List!56946)

(assert (=> b!4934375 (= e!3083095 lt!2032315)))

(declare-fun b!4934378 () Bool)

(declare-fun e!3083096 () Bool)

(declare-fun lt!2032420 () List!56946)

(assert (=> b!4934378 (= e!3083096 (or (not (= lt!2032315 Nil!56822)) (= lt!2032420 lt!2032311)))))

(declare-fun b!4934376 () Bool)

(assert (=> b!4934376 (= e!3083095 (Cons!56822 (h!63270 lt!2032311) (++!12390 (t!367426 lt!2032311) lt!2032315)))))

(declare-fun d!1588290 () Bool)

(assert (=> d!1588290 e!3083096))

(declare-fun res!2105919 () Bool)

(assert (=> d!1588290 (=> (not res!2105919) (not e!3083096))))

(assert (=> d!1588290 (= res!2105919 (= (content!10099 lt!2032420) ((_ map or) (content!10099 lt!2032311) (content!10099 lt!2032315))))))

(assert (=> d!1588290 (= lt!2032420 e!3083095)))

(declare-fun c!841023 () Bool)

(assert (=> d!1588290 (= c!841023 ((_ is Nil!56822) lt!2032311))))

(assert (=> d!1588290 (= (++!12390 lt!2032311 lt!2032315) lt!2032420)))

(declare-fun b!4934377 () Bool)

(declare-fun res!2105918 () Bool)

(assert (=> b!4934377 (=> (not res!2105918) (not e!3083096))))

(assert (=> b!4934377 (= res!2105918 (= (size!37632 lt!2032420) (+ (size!37632 lt!2032311) (size!37632 lt!2032315))))))

(assert (= (and d!1588290 c!841023) b!4934375))

(assert (= (and d!1588290 (not c!841023)) b!4934376))

(assert (= (and d!1588290 res!2105919) b!4934377))

(assert (= (and b!4934377 res!2105918) b!4934378))

(declare-fun m!5955180 () Bool)

(assert (=> b!4934376 m!5955180))

(declare-fun m!5955182 () Bool)

(assert (=> d!1588290 m!5955182))

(declare-fun m!5955184 () Bool)

(assert (=> d!1588290 m!5955184))

(declare-fun m!5955186 () Bool)

(assert (=> d!1588290 m!5955186))

(declare-fun m!5955188 () Bool)

(assert (=> b!4934377 m!5955188))

(assert (=> b!4934377 m!5955026))

(declare-fun m!5955190 () Bool)

(assert (=> b!4934377 m!5955190))

(assert (=> b!4934238 d!1588290))

(declare-fun b!4934379 () Bool)

(declare-fun e!3083097 () List!56946)

(assert (=> b!4934379 (= e!3083097 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))

(declare-fun lt!2032421 () List!56946)

(declare-fun b!4934382 () Bool)

(declare-fun e!3083098 () Bool)

(assert (=> b!4934382 (= e!3083098 (or (not (= (Cons!56822 (head!10562 lt!2032312) Nil!56822) Nil!56822)) (= lt!2032421 testedP!110)))))

(declare-fun b!4934380 () Bool)

(assert (=> b!4934380 (= e!3083097 (Cons!56822 (h!63270 testedP!110) (++!12390 (t!367426 testedP!110) (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))

(declare-fun d!1588296 () Bool)

(assert (=> d!1588296 e!3083098))

(declare-fun res!2105921 () Bool)

(assert (=> d!1588296 (=> (not res!2105921) (not e!3083098))))

(assert (=> d!1588296 (= res!2105921 (= (content!10099 lt!2032421) ((_ map or) (content!10099 testedP!110) (content!10099 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(assert (=> d!1588296 (= lt!2032421 e!3083097)))

(declare-fun c!841024 () Bool)

(assert (=> d!1588296 (= c!841024 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588296 (= (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822)) lt!2032421)))

(declare-fun b!4934381 () Bool)

(declare-fun res!2105920 () Bool)

(assert (=> b!4934381 (=> (not res!2105920) (not e!3083098))))

(assert (=> b!4934381 (= res!2105920 (= (size!37632 lt!2032421) (+ (size!37632 testedP!110) (size!37632 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(assert (= (and d!1588296 c!841024) b!4934379))

(assert (= (and d!1588296 (not c!841024)) b!4934380))

(assert (= (and d!1588296 res!2105921) b!4934381))

(assert (= (and b!4934381 res!2105920) b!4934382))

(declare-fun m!5955192 () Bool)

(assert (=> b!4934380 m!5955192))

(declare-fun m!5955194 () Bool)

(assert (=> d!1588296 m!5955194))

(declare-fun m!5955196 () Bool)

(assert (=> d!1588296 m!5955196))

(declare-fun m!5955198 () Bool)

(assert (=> d!1588296 m!5955198))

(declare-fun m!5955202 () Bool)

(assert (=> b!4934381 m!5955202))

(assert (=> b!4934381 m!5955028))

(declare-fun m!5955204 () Bool)

(assert (=> b!4934381 m!5955204))

(assert (=> b!4934238 d!1588296))

(declare-fun d!1588298 () Bool)

(assert (=> d!1588298 (= (tail!9701 testedSuffix!70) (t!367426 testedSuffix!70))))

(assert (=> b!4934238 d!1588298))

(declare-fun d!1588302 () Bool)

(assert (=> d!1588302 (= (++!12390 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822)) lt!2032315) lt!2032314)))

(declare-fun lt!2032425 () Unit!147497)

(declare-fun choose!36228 (List!56946 C!27080 List!56946 List!56946) Unit!147497)

(assert (=> d!1588302 (= lt!2032425 (choose!36228 testedP!110 lt!2032310 lt!2032315 lt!2032314))))

(assert (=> d!1588302 (= (++!12390 testedP!110 (Cons!56822 lt!2032310 lt!2032315)) lt!2032314)))

(assert (=> d!1588302 (= (lemmaMoveElementToOtherListKeepsConcatEq!1405 testedP!110 lt!2032310 lt!2032315 lt!2032314) lt!2032425)))

(declare-fun bs!1180577 () Bool)

(assert (= bs!1180577 d!1588302))

(assert (=> bs!1180577 m!5955056))

(assert (=> bs!1180577 m!5955056))

(declare-fun m!5955206 () Bool)

(assert (=> bs!1180577 m!5955206))

(declare-fun m!5955208 () Bool)

(assert (=> bs!1180577 m!5955208))

(declare-fun m!5955210 () Bool)

(assert (=> bs!1180577 m!5955210))

(assert (=> b!4934238 d!1588302))

(declare-fun b!4934384 () Bool)

(declare-fun e!3083100 () List!56946)

(assert (=> b!4934384 (= e!3083100 (Cons!56822 lt!2032310 Nil!56822))))

(declare-fun lt!2032426 () List!56946)

(declare-fun e!3083101 () Bool)

(declare-fun b!4934387 () Bool)

(assert (=> b!4934387 (= e!3083101 (or (not (= (Cons!56822 lt!2032310 Nil!56822) Nil!56822)) (= lt!2032426 testedP!110)))))

(declare-fun b!4934385 () Bool)

(assert (=> b!4934385 (= e!3083100 (Cons!56822 (h!63270 testedP!110) (++!12390 (t!367426 testedP!110) (Cons!56822 lt!2032310 Nil!56822))))))

(declare-fun d!1588304 () Bool)

(assert (=> d!1588304 e!3083101))

(declare-fun res!2105924 () Bool)

(assert (=> d!1588304 (=> (not res!2105924) (not e!3083101))))

(assert (=> d!1588304 (= res!2105924 (= (content!10099 lt!2032426) ((_ map or) (content!10099 testedP!110) (content!10099 (Cons!56822 lt!2032310 Nil!56822)))))))

(assert (=> d!1588304 (= lt!2032426 e!3083100)))

(declare-fun c!841025 () Bool)

(assert (=> d!1588304 (= c!841025 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588304 (= (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822)) lt!2032426)))

(declare-fun b!4934386 () Bool)

(declare-fun res!2105923 () Bool)

(assert (=> b!4934386 (=> (not res!2105923) (not e!3083101))))

(assert (=> b!4934386 (= res!2105923 (= (size!37632 lt!2032426) (+ (size!37632 testedP!110) (size!37632 (Cons!56822 lt!2032310 Nil!56822)))))))

(assert (= (and d!1588304 c!841025) b!4934384))

(assert (= (and d!1588304 (not c!841025)) b!4934385))

(assert (= (and d!1588304 res!2105924) b!4934386))

(assert (= (and b!4934386 res!2105923) b!4934387))

(declare-fun m!5955214 () Bool)

(assert (=> b!4934385 m!5955214))

(declare-fun m!5955216 () Bool)

(assert (=> d!1588304 m!5955216))

(assert (=> d!1588304 m!5955196))

(declare-fun m!5955218 () Bool)

(assert (=> d!1588304 m!5955218))

(declare-fun m!5955220 () Bool)

(assert (=> b!4934386 m!5955220))

(assert (=> b!4934386 m!5955028))

(declare-fun m!5955222 () Bool)

(assert (=> b!4934386 m!5955222))

(assert (=> b!4934238 d!1588304))

(declare-fun d!1588308 () Bool)

(assert (=> d!1588308 (isPrefix!5023 (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822)) lt!2032314)))

(declare-fun lt!2032432 () Unit!147497)

(declare-fun choose!36229 (List!56946 List!56946) Unit!147497)

(assert (=> d!1588308 (= lt!2032432 (choose!36229 testedP!110 lt!2032314))))

(assert (=> d!1588308 (isPrefix!5023 testedP!110 lt!2032314)))

(assert (=> d!1588308 (= (lemmaAddHeadSuffixToPrefixStillPrefix!793 testedP!110 lt!2032314) lt!2032432)))

(declare-fun bs!1180580 () Bool)

(assert (= bs!1180580 d!1588308))

(declare-fun m!5955226 () Bool)

(assert (=> bs!1180580 m!5955226))

(declare-fun m!5955228 () Bool)

(assert (=> bs!1180580 m!5955228))

(assert (=> bs!1180580 m!5955012))

(assert (=> bs!1180580 m!5955038))

(declare-fun m!5955230 () Bool)

(assert (=> bs!1180580 m!5955230))

(assert (=> bs!1180580 m!5955038))

(declare-fun m!5955232 () Bool)

(assert (=> bs!1180580 m!5955232))

(assert (=> bs!1180580 m!5955226))

(assert (=> b!4934238 d!1588308))

(declare-fun d!1588312 () Bool)

(declare-fun lt!2032437 () Int)

(assert (=> d!1588312 (>= lt!2032437 0)))

(declare-fun e!3083110 () Int)

(assert (=> d!1588312 (= lt!2032437 e!3083110)))

(declare-fun c!841028 () Bool)

(assert (=> d!1588312 (= c!841028 ((_ is Nil!56822) lt!2032311))))

(assert (=> d!1588312 (= (size!37632 lt!2032311) lt!2032437)))

(declare-fun b!4934400 () Bool)

(assert (=> b!4934400 (= e!3083110 0)))

(declare-fun b!4934401 () Bool)

(assert (=> b!4934401 (= e!3083110 (+ 1 (size!37632 (t!367426 lt!2032311))))))

(assert (= (and d!1588312 c!841028) b!4934400))

(assert (= (and d!1588312 (not c!841028)) b!4934401))

(declare-fun m!5955234 () Bool)

(assert (=> b!4934401 m!5955234))

(assert (=> b!4934233 d!1588312))

(declare-fun d!1588314 () Bool)

(declare-fun lt!2032443 () Int)

(assert (=> d!1588314 (= lt!2032443 (size!37632 (list!18044 totalInput!685)))))

(declare-fun size!37635 (Conc!14934) Int)

(assert (=> d!1588314 (= lt!2032443 (size!37635 (c!840959 totalInput!685)))))

(assert (=> d!1588314 (= (size!37633 totalInput!685) lt!2032443)))

(declare-fun bs!1180581 () Bool)

(assert (= bs!1180581 d!1588314))

(assert (=> bs!1180581 m!5955062))

(assert (=> bs!1180581 m!5955062))

(declare-fun m!5955238 () Bool)

(assert (=> bs!1180581 m!5955238))

(declare-fun m!5955240 () Bool)

(assert (=> bs!1180581 m!5955240))

(assert (=> b!4934241 d!1588314))

(declare-fun d!1588318 () Bool)

(assert (=> d!1588318 (isPrefix!5023 lt!2032314 lt!2032314)))

(declare-fun lt!2032449 () Unit!147497)

(declare-fun choose!36230 (List!56946 List!56946) Unit!147497)

(assert (=> d!1588318 (= lt!2032449 (choose!36230 lt!2032314 lt!2032314))))

(assert (=> d!1588318 (= (lemmaIsPrefixRefl!3389 lt!2032314 lt!2032314) lt!2032449)))

(declare-fun bs!1180583 () Bool)

(assert (= bs!1180583 d!1588318))

(assert (=> bs!1180583 m!5955008))

(declare-fun m!5955244 () Bool)

(assert (=> bs!1180583 m!5955244))

(assert (=> b!4934231 d!1588318))

(declare-fun b!4934411 () Bool)

(declare-fun res!2105938 () Bool)

(declare-fun e!3083117 () Bool)

(assert (=> b!4934411 (=> (not res!2105938) (not e!3083117))))

(assert (=> b!4934411 (= res!2105938 (= (head!10562 lt!2032314) (head!10562 lt!2032314)))))

(declare-fun d!1588322 () Bool)

(declare-fun e!3083116 () Bool)

(assert (=> d!1588322 e!3083116))

(declare-fun res!2105939 () Bool)

(assert (=> d!1588322 (=> res!2105939 e!3083116)))

(declare-fun lt!2032450 () Bool)

(assert (=> d!1588322 (= res!2105939 (not lt!2032450))))

(declare-fun e!3083118 () Bool)

(assert (=> d!1588322 (= lt!2032450 e!3083118)))

(declare-fun res!2105940 () Bool)

(assert (=> d!1588322 (=> res!2105940 e!3083118)))

(assert (=> d!1588322 (= res!2105940 ((_ is Nil!56822) lt!2032314))))

(assert (=> d!1588322 (= (isPrefix!5023 lt!2032314 lt!2032314) lt!2032450)))

(declare-fun b!4934413 () Bool)

(assert (=> b!4934413 (= e!3083116 (>= (size!37632 lt!2032314) (size!37632 lt!2032314)))))

(declare-fun b!4934410 () Bool)

(assert (=> b!4934410 (= e!3083118 e!3083117)))

(declare-fun res!2105937 () Bool)

(assert (=> b!4934410 (=> (not res!2105937) (not e!3083117))))

(assert (=> b!4934410 (= res!2105937 (not ((_ is Nil!56822) lt!2032314)))))

(declare-fun b!4934412 () Bool)

(assert (=> b!4934412 (= e!3083117 (isPrefix!5023 (tail!9701 lt!2032314) (tail!9701 lt!2032314)))))

(assert (= (and d!1588322 (not res!2105940)) b!4934410))

(assert (= (and b!4934410 res!2105937) b!4934411))

(assert (= (and b!4934411 res!2105938) b!4934412))

(assert (= (and d!1588322 (not res!2105939)) b!4934413))

(assert (=> b!4934411 m!5955140))

(assert (=> b!4934411 m!5955140))

(assert (=> b!4934413 m!5955030))

(assert (=> b!4934413 m!5955030))

(assert (=> b!4934412 m!5955102))

(assert (=> b!4934412 m!5955102))

(assert (=> b!4934412 m!5955102))

(assert (=> b!4934412 m!5955102))

(declare-fun m!5955246 () Bool)

(assert (=> b!4934412 m!5955246))

(assert (=> b!4934231 d!1588322))

(declare-fun d!1588324 () Bool)

(assert (=> d!1588324 (= lt!2032314 testedP!110)))

(declare-fun lt!2032456 () Unit!147497)

(declare-fun choose!36231 (List!56946 List!56946 List!56946) Unit!147497)

(assert (=> d!1588324 (= lt!2032456 (choose!36231 lt!2032314 testedP!110 lt!2032314))))

(assert (=> d!1588324 (isPrefix!5023 lt!2032314 lt!2032314)))

(assert (=> d!1588324 (= (lemmaIsPrefixSameLengthThenSameList!1147 lt!2032314 testedP!110 lt!2032314) lt!2032456)))

(declare-fun bs!1180584 () Bool)

(assert (= bs!1180584 d!1588324))

(declare-fun m!5955250 () Bool)

(assert (=> bs!1180584 m!5955250))

(assert (=> bs!1180584 m!5955008))

(assert (=> b!4934231 d!1588324))

(declare-fun d!1588328 () Bool)

(declare-fun list!18046 (Conc!14934) List!56946)

(assert (=> d!1588328 (= (list!18044 totalInput!685) (list!18046 (c!840959 totalInput!685)))))

(declare-fun bs!1180586 () Bool)

(assert (= bs!1180586 d!1588328))

(declare-fun m!5955258 () Bool)

(assert (=> bs!1180586 m!5955258))

(assert (=> start!518532 d!1588328))

(declare-fun b!4934418 () Bool)

(declare-fun e!3083121 () List!56946)

(assert (=> b!4934418 (= e!3083121 testedSuffix!70)))

(declare-fun e!3083122 () Bool)

(declare-fun lt!2032459 () List!56946)

(declare-fun b!4934421 () Bool)

(assert (=> b!4934421 (= e!3083122 (or (not (= testedSuffix!70 Nil!56822)) (= lt!2032459 testedP!110)))))

(declare-fun b!4934419 () Bool)

(assert (=> b!4934419 (= e!3083121 (Cons!56822 (h!63270 testedP!110) (++!12390 (t!367426 testedP!110) testedSuffix!70)))))

(declare-fun d!1588334 () Bool)

(assert (=> d!1588334 e!3083122))

(declare-fun res!2105942 () Bool)

(assert (=> d!1588334 (=> (not res!2105942) (not e!3083122))))

(assert (=> d!1588334 (= res!2105942 (= (content!10099 lt!2032459) ((_ map or) (content!10099 testedP!110) (content!10099 testedSuffix!70))))))

(assert (=> d!1588334 (= lt!2032459 e!3083121)))

(declare-fun c!841033 () Bool)

(assert (=> d!1588334 (= c!841033 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588334 (= (++!12390 testedP!110 testedSuffix!70) lt!2032459)))

(declare-fun b!4934420 () Bool)

(declare-fun res!2105941 () Bool)

(assert (=> b!4934420 (=> (not res!2105941) (not e!3083122))))

(assert (=> b!4934420 (= res!2105941 (= (size!37632 lt!2032459) (+ (size!37632 testedP!110) (size!37632 testedSuffix!70))))))

(assert (= (and d!1588334 c!841033) b!4934418))

(assert (= (and d!1588334 (not c!841033)) b!4934419))

(assert (= (and d!1588334 res!2105942) b!4934420))

(assert (= (and b!4934420 res!2105941) b!4934421))

(declare-fun m!5955262 () Bool)

(assert (=> b!4934419 m!5955262))

(declare-fun m!5955264 () Bool)

(assert (=> d!1588334 m!5955264))

(assert (=> d!1588334 m!5955196))

(declare-fun m!5955266 () Bool)

(assert (=> d!1588334 m!5955266))

(declare-fun m!5955268 () Bool)

(assert (=> b!4934420 m!5955268))

(assert (=> b!4934420 m!5955028))

(declare-fun m!5955270 () Bool)

(assert (=> b!4934420 m!5955270))

(assert (=> start!518532 d!1588334))

(declare-fun d!1588338 () Bool)

(declare-fun isBalanced!4115 (Conc!14934) Bool)

(assert (=> d!1588338 (= (inv!73817 totalInput!685) (isBalanced!4115 (c!840959 totalInput!685)))))

(declare-fun bs!1180588 () Bool)

(assert (= bs!1180588 d!1588338))

(declare-fun m!5955272 () Bool)

(assert (=> bs!1180588 m!5955272))

(assert (=> start!518532 d!1588338))

(declare-fun d!1588340 () Bool)

(declare-fun lt!2032460 () Int)

(assert (=> d!1588340 (= lt!2032460 (size!37632 (list!18044 (_1!33962 lt!2032308))))))

(assert (=> d!1588340 (= lt!2032460 (size!37635 (c!840959 (_1!33962 lt!2032308))))))

(assert (=> d!1588340 (= (size!37633 (_1!33962 lt!2032308)) lt!2032460)))

(declare-fun bs!1180589 () Bool)

(assert (= bs!1180589 d!1588340))

(assert (=> bs!1180589 m!5955022))

(assert (=> bs!1180589 m!5955022))

(declare-fun m!5955274 () Bool)

(assert (=> bs!1180589 m!5955274))

(declare-fun m!5955276 () Bool)

(assert (=> bs!1180589 m!5955276))

(assert (=> b!4934234 d!1588340))

(declare-fun b!4934422 () Bool)

(declare-fun e!3083123 () List!56946)

(assert (=> b!4934422 (= e!3083123 lt!2032318)))

(declare-fun e!3083124 () Bool)

(declare-fun b!4934425 () Bool)

(declare-fun lt!2032461 () List!56946)

(assert (=> b!4934425 (= e!3083124 (or (not (= lt!2032318 Nil!56822)) (= lt!2032461 lt!2032317)))))

(declare-fun b!4934423 () Bool)

(assert (=> b!4934423 (= e!3083123 (Cons!56822 (h!63270 lt!2032317) (++!12390 (t!367426 lt!2032317) lt!2032318)))))

(declare-fun d!1588342 () Bool)

(assert (=> d!1588342 e!3083124))

(declare-fun res!2105944 () Bool)

(assert (=> d!1588342 (=> (not res!2105944) (not e!3083124))))

(assert (=> d!1588342 (= res!2105944 (= (content!10099 lt!2032461) ((_ map or) (content!10099 lt!2032317) (content!10099 lt!2032318))))))

(assert (=> d!1588342 (= lt!2032461 e!3083123)))

(declare-fun c!841034 () Bool)

(assert (=> d!1588342 (= c!841034 ((_ is Nil!56822) lt!2032317))))

(assert (=> d!1588342 (= (++!12390 lt!2032317 lt!2032318) lt!2032461)))

(declare-fun b!4934424 () Bool)

(declare-fun res!2105943 () Bool)

(assert (=> b!4934424 (=> (not res!2105943) (not e!3083124))))

(assert (=> b!4934424 (= res!2105943 (= (size!37632 lt!2032461) (+ (size!37632 lt!2032317) (size!37632 lt!2032318))))))

(assert (= (and d!1588342 c!841034) b!4934422))

(assert (= (and d!1588342 (not c!841034)) b!4934423))

(assert (= (and d!1588342 res!2105944) b!4934424))

(assert (= (and b!4934424 res!2105943) b!4934425))

(declare-fun m!5955278 () Bool)

(assert (=> b!4934423 m!5955278))

(declare-fun m!5955280 () Bool)

(assert (=> d!1588342 m!5955280))

(declare-fun m!5955282 () Bool)

(assert (=> d!1588342 m!5955282))

(declare-fun m!5955284 () Bool)

(assert (=> d!1588342 m!5955284))

(declare-fun m!5955286 () Bool)

(assert (=> b!4934424 m!5955286))

(declare-fun m!5955288 () Bool)

(assert (=> b!4934424 m!5955288))

(declare-fun m!5955290 () Bool)

(assert (=> b!4934424 m!5955290))

(assert (=> b!4934243 d!1588342))

(declare-fun d!1588344 () Bool)

(assert (=> d!1588344 (= (list!18044 (_2!33962 lt!2032308)) (list!18046 (c!840959 (_2!33962 lt!2032308))))))

(declare-fun bs!1180590 () Bool)

(assert (= bs!1180590 d!1588344))

(declare-fun m!5955292 () Bool)

(assert (=> bs!1180590 m!5955292))

(assert (=> b!4934243 d!1588344))

(declare-fun d!1588346 () Bool)

(assert (=> d!1588346 (= (list!18044 (_1!33962 lt!2032308)) (list!18046 (c!840959 (_1!33962 lt!2032308))))))

(declare-fun bs!1180591 () Bool)

(assert (= bs!1180591 d!1588346))

(declare-fun m!5955294 () Bool)

(assert (=> bs!1180591 m!5955294))

(assert (=> b!4934243 d!1588346))

(declare-fun d!1588348 () Bool)

(declare-fun e!3083135 () Bool)

(assert (=> d!1588348 e!3083135))

(declare-fun res!2105958 () Bool)

(assert (=> d!1588348 (=> (not res!2105958) (not e!3083135))))

(declare-fun lt!2032470 () tuple2!61318)

(assert (=> d!1588348 (= res!2105958 (isBalanced!4115 (c!840959 (_1!33962 lt!2032470))))))

(declare-datatypes ((tuple2!61324 0))(
  ( (tuple2!61325 (_1!33965 Conc!14934) (_2!33965 Conc!14934)) )
))
(declare-fun lt!2032471 () tuple2!61324)

(assert (=> d!1588348 (= lt!2032470 (tuple2!61319 (BalanceConc!29299 (_1!33965 lt!2032471)) (BalanceConc!29299 (_2!33965 lt!2032471))))))

(declare-fun splitAt!327 (Conc!14934 Int) tuple2!61324)

(assert (=> d!1588348 (= lt!2032471 (splitAt!327 (c!840959 totalInput!685) testedPSize!70))))

(assert (=> d!1588348 (isBalanced!4115 (c!840959 totalInput!685))))

(assert (=> d!1588348 (= (splitAt!325 totalInput!685 testedPSize!70) lt!2032470)))

(declare-fun b!4934446 () Bool)

(declare-fun res!2105957 () Bool)

(assert (=> b!4934446 (=> (not res!2105957) (not e!3083135))))

(assert (=> b!4934446 (= res!2105957 (isBalanced!4115 (c!840959 (_2!33962 lt!2032470))))))

(declare-fun b!4934447 () Bool)

(declare-datatypes ((tuple2!61326 0))(
  ( (tuple2!61327 (_1!33966 List!56946) (_2!33966 List!56946)) )
))
(declare-fun splitAtIndex!121 (List!56946 Int) tuple2!61326)

(assert (=> b!4934447 (= e!3083135 (= (tuple2!61327 (list!18044 (_1!33962 lt!2032470)) (list!18044 (_2!33962 lt!2032470))) (splitAtIndex!121 (list!18044 totalInput!685) testedPSize!70)))))

(assert (= (and d!1588348 res!2105958) b!4934446))

(assert (= (and b!4934446 res!2105957) b!4934447))

(declare-fun m!5955328 () Bool)

(assert (=> d!1588348 m!5955328))

(declare-fun m!5955330 () Bool)

(assert (=> d!1588348 m!5955330))

(assert (=> d!1588348 m!5955272))

(declare-fun m!5955332 () Bool)

(assert (=> b!4934446 m!5955332))

(declare-fun m!5955334 () Bool)

(assert (=> b!4934447 m!5955334))

(declare-fun m!5955336 () Bool)

(assert (=> b!4934447 m!5955336))

(assert (=> b!4934447 m!5955062))

(assert (=> b!4934447 m!5955062))

(declare-fun m!5955338 () Bool)

(assert (=> b!4934447 m!5955338))

(assert (=> b!4934243 d!1588348))

(declare-fun d!1588360 () Bool)

(declare-fun c!841041 () Bool)

(assert (=> d!1588360 (= c!841041 ((_ is Node!14934) (c!840959 totalInput!685)))))

(declare-fun e!3083142 () Bool)

(assert (=> d!1588360 (= (inv!73818 (c!840959 totalInput!685)) e!3083142)))

(declare-fun b!4934458 () Bool)

(declare-fun inv!73821 (Conc!14934) Bool)

(assert (=> b!4934458 (= e!3083142 (inv!73821 (c!840959 totalInput!685)))))

(declare-fun b!4934459 () Bool)

(declare-fun e!3083143 () Bool)

(assert (=> b!4934459 (= e!3083142 e!3083143)))

(declare-fun res!2105965 () Bool)

(assert (=> b!4934459 (= res!2105965 (not ((_ is Leaf!24834) (c!840959 totalInput!685))))))

(assert (=> b!4934459 (=> res!2105965 e!3083143)))

(declare-fun b!4934460 () Bool)

(declare-fun inv!73822 (Conc!14934) Bool)

(assert (=> b!4934460 (= e!3083143 (inv!73822 (c!840959 totalInput!685)))))

(assert (= (and d!1588360 c!841041) b!4934458))

(assert (= (and d!1588360 (not c!841041)) b!4934459))

(assert (= (and b!4934459 (not res!2105965)) b!4934460))

(declare-fun m!5955340 () Bool)

(assert (=> b!4934458 m!5955340))

(declare-fun m!5955342 () Bool)

(assert (=> b!4934460 m!5955342))

(assert (=> b!4934247 d!1588360))

(declare-fun b!4934462 () Bool)

(declare-fun res!2105967 () Bool)

(declare-fun e!3083145 () Bool)

(assert (=> b!4934462 (=> (not res!2105967) (not e!3083145))))

(assert (=> b!4934462 (= res!2105967 (= (head!10562 testedP!110) (head!10562 lt!2032314)))))

(declare-fun d!1588362 () Bool)

(declare-fun e!3083144 () Bool)

(assert (=> d!1588362 e!3083144))

(declare-fun res!2105968 () Bool)

(assert (=> d!1588362 (=> res!2105968 e!3083144)))

(declare-fun lt!2032476 () Bool)

(assert (=> d!1588362 (= res!2105968 (not lt!2032476))))

(declare-fun e!3083146 () Bool)

(assert (=> d!1588362 (= lt!2032476 e!3083146)))

(declare-fun res!2105969 () Bool)

(assert (=> d!1588362 (=> res!2105969 e!3083146)))

(assert (=> d!1588362 (= res!2105969 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588362 (= (isPrefix!5023 testedP!110 lt!2032314) lt!2032476)))

(declare-fun b!4934464 () Bool)

(assert (=> b!4934464 (= e!3083144 (>= (size!37632 lt!2032314) (size!37632 testedP!110)))))

(declare-fun b!4934461 () Bool)

(assert (=> b!4934461 (= e!3083146 e!3083145)))

(declare-fun res!2105966 () Bool)

(assert (=> b!4934461 (=> (not res!2105966) (not e!3083145))))

(assert (=> b!4934461 (= res!2105966 (not ((_ is Nil!56822) lt!2032314)))))

(declare-fun b!4934463 () Bool)

(assert (=> b!4934463 (= e!3083145 (isPrefix!5023 (tail!9701 testedP!110) (tail!9701 lt!2032314)))))

(assert (= (and d!1588362 (not res!2105969)) b!4934461))

(assert (= (and b!4934461 res!2105966) b!4934462))

(assert (= (and b!4934462 res!2105967) b!4934463))

(assert (= (and d!1588362 (not res!2105968)) b!4934464))

(declare-fun m!5955344 () Bool)

(assert (=> b!4934462 m!5955344))

(assert (=> b!4934462 m!5955140))

(assert (=> b!4934464 m!5955030))

(assert (=> b!4934464 m!5955028))

(declare-fun m!5955346 () Bool)

(assert (=> b!4934463 m!5955346))

(assert (=> b!4934463 m!5955102))

(assert (=> b!4934463 m!5955346))

(assert (=> b!4934463 m!5955102))

(declare-fun m!5955348 () Bool)

(assert (=> b!4934463 m!5955348))

(assert (=> b!4934246 d!1588362))

(declare-fun b!4934468 () Bool)

(declare-fun res!2105973 () Bool)

(declare-fun e!3083149 () Bool)

(assert (=> b!4934468 (=> (not res!2105973) (not e!3083149))))

(assert (=> b!4934468 (= res!2105973 (= (head!10562 testedP!110) (head!10562 lt!2032323)))))

(declare-fun d!1588364 () Bool)

(declare-fun e!3083148 () Bool)

(assert (=> d!1588364 e!3083148))

(declare-fun res!2105974 () Bool)

(assert (=> d!1588364 (=> res!2105974 e!3083148)))

(declare-fun lt!2032479 () Bool)

(assert (=> d!1588364 (= res!2105974 (not lt!2032479))))

(declare-fun e!3083150 () Bool)

(assert (=> d!1588364 (= lt!2032479 e!3083150)))

(declare-fun res!2105975 () Bool)

(assert (=> d!1588364 (=> res!2105975 e!3083150)))

(assert (=> d!1588364 (= res!2105975 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588364 (= (isPrefix!5023 testedP!110 lt!2032323) lt!2032479)))

(declare-fun b!4934470 () Bool)

(assert (=> b!4934470 (= e!3083148 (>= (size!37632 lt!2032323) (size!37632 testedP!110)))))

(declare-fun b!4934467 () Bool)

(assert (=> b!4934467 (= e!3083150 e!3083149)))

(declare-fun res!2105972 () Bool)

(assert (=> b!4934467 (=> (not res!2105972) (not e!3083149))))

(assert (=> b!4934467 (= res!2105972 (not ((_ is Nil!56822) lt!2032323)))))

(declare-fun b!4934469 () Bool)

(assert (=> b!4934469 (= e!3083149 (isPrefix!5023 (tail!9701 testedP!110) (tail!9701 lt!2032323)))))

(assert (= (and d!1588364 (not res!2105975)) b!4934467))

(assert (= (and b!4934467 res!2105972) b!4934468))

(assert (= (and b!4934468 res!2105973) b!4934469))

(assert (= (and d!1588364 (not res!2105974)) b!4934470))

(assert (=> b!4934468 m!5955344))

(declare-fun m!5955354 () Bool)

(assert (=> b!4934468 m!5955354))

(declare-fun m!5955358 () Bool)

(assert (=> b!4934470 m!5955358))

(assert (=> b!4934470 m!5955028))

(assert (=> b!4934469 m!5955346))

(declare-fun m!5955362 () Bool)

(assert (=> b!4934469 m!5955362))

(assert (=> b!4934469 m!5955346))

(assert (=> b!4934469 m!5955362))

(declare-fun m!5955366 () Bool)

(assert (=> b!4934469 m!5955366))

(assert (=> b!4934246 d!1588364))

(declare-fun d!1588366 () Bool)

(assert (=> d!1588366 (isPrefix!5023 testedP!110 (++!12390 testedP!110 testedSuffix!70))))

(declare-fun lt!2032482 () Unit!147497)

(declare-fun choose!36234 (List!56946 List!56946) Unit!147497)

(assert (=> d!1588366 (= lt!2032482 (choose!36234 testedP!110 testedSuffix!70))))

(assert (=> d!1588366 (= (lemmaConcatTwoListThenFirstIsPrefix!3247 testedP!110 testedSuffix!70) lt!2032482)))

(declare-fun bs!1180595 () Bool)

(assert (= bs!1180595 d!1588366))

(assert (=> bs!1180595 m!5955064))

(assert (=> bs!1180595 m!5955064))

(declare-fun m!5955370 () Bool)

(assert (=> bs!1180595 m!5955370))

(declare-fun m!5955372 () Bool)

(assert (=> bs!1180595 m!5955372))

(assert (=> b!4934246 d!1588366))

(declare-fun d!1588370 () Bool)

(declare-fun lambda!245767 () Int)

(declare-fun forall!13186 (List!56947 Int) Bool)

(assert (=> d!1588370 (= (inv!73816 setElem!27764) (forall!13186 (exprs!3567 setElem!27764) lambda!245767))))

(declare-fun bs!1180597 () Bool)

(assert (= bs!1180597 d!1588370))

(declare-fun m!5955384 () Bool)

(assert (=> bs!1180597 m!5955384))

(assert (=> setNonEmpty!27764 d!1588370))

(declare-fun d!1588378 () Bool)

(declare-fun lt!2032487 () Int)

(assert (=> d!1588378 (>= lt!2032487 0)))

(declare-fun e!3083158 () Int)

(assert (=> d!1588378 (= lt!2032487 e!3083158)))

(declare-fun c!841046 () Bool)

(assert (=> d!1588378 (= c!841046 ((_ is Nil!56822) lt!2032314))))

(assert (=> d!1588378 (= (size!37632 lt!2032314) lt!2032487)))

(declare-fun b!4934482 () Bool)

(assert (=> b!4934482 (= e!3083158 0)))

(declare-fun b!4934483 () Bool)

(assert (=> b!4934483 (= e!3083158 (+ 1 (size!37632 (t!367426 lt!2032314))))))

(assert (= (and d!1588378 c!841046) b!4934482))

(assert (= (and d!1588378 (not c!841046)) b!4934483))

(declare-fun m!5955386 () Bool)

(assert (=> b!4934483 m!5955386))

(assert (=> b!4934236 d!1588378))

(declare-fun d!1588380 () Bool)

(assert (=> d!1588380 (<= (size!37632 testedP!110) (size!37632 lt!2032314))))

(declare-fun lt!2032491 () Unit!147497)

(declare-fun choose!36236 (List!56946 List!56946) Unit!147497)

(assert (=> d!1588380 (= lt!2032491 (choose!36236 testedP!110 lt!2032314))))

(assert (=> d!1588380 (isPrefix!5023 testedP!110 lt!2032314)))

(assert (=> d!1588380 (= (lemmaIsPrefixThenSmallerEqSize!711 testedP!110 lt!2032314) lt!2032491)))

(declare-fun bs!1180599 () Bool)

(assert (= bs!1180599 d!1588380))

(assert (=> bs!1180599 m!5955028))

(assert (=> bs!1180599 m!5955030))

(declare-fun m!5955390 () Bool)

(assert (=> bs!1180599 m!5955390))

(assert (=> bs!1180599 m!5955012))

(assert (=> b!4934236 d!1588380))

(declare-fun d!1588384 () Bool)

(declare-fun lt!2032492 () Int)

(assert (=> d!1588384 (>= lt!2032492 0)))

(declare-fun e!3083159 () Int)

(assert (=> d!1588384 (= lt!2032492 e!3083159)))

(declare-fun c!841049 () Bool)

(assert (=> d!1588384 (= c!841049 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588384 (= (size!37632 testedP!110) lt!2032492)))

(declare-fun b!4934484 () Bool)

(assert (=> b!4934484 (= e!3083159 0)))

(declare-fun b!4934485 () Bool)

(assert (=> b!4934485 (= e!3083159 (+ 1 (size!37632 (t!367426 testedP!110))))))

(assert (= (and d!1588384 c!841049) b!4934484))

(assert (= (and d!1588384 (not c!841049)) b!4934485))

(declare-fun m!5955392 () Bool)

(assert (=> b!4934485 m!5955392))

(assert (=> b!4934245 d!1588384))

(declare-fun b!4934490 () Bool)

(declare-fun e!3083162 () Bool)

(declare-fun tp!1385158 () Bool)

(declare-fun tp!1385159 () Bool)

(assert (=> b!4934490 (= e!3083162 (and tp!1385158 tp!1385159))))

(assert (=> b!4934235 (= tp!1385152 e!3083162)))

(assert (= (and b!4934235 ((_ is Cons!56823) (exprs!3567 setElem!27764))) b!4934490))

(declare-fun e!3083168 () Bool)

(declare-fun b!4934499 () Bool)

(declare-fun tp!1385166 () Bool)

(declare-fun tp!1385167 () Bool)

(assert (=> b!4934499 (= e!3083168 (and (inv!73818 (left!41435 (c!840959 totalInput!685))) tp!1385167 (inv!73818 (right!41765 (c!840959 totalInput!685))) tp!1385166))))

(declare-fun b!4934501 () Bool)

(declare-fun e!3083167 () Bool)

(declare-fun tp!1385168 () Bool)

(assert (=> b!4934501 (= e!3083167 tp!1385168)))

(declare-fun b!4934500 () Bool)

(declare-fun inv!73823 (IArray!29929) Bool)

(assert (=> b!4934500 (= e!3083168 (and (inv!73823 (xs!18258 (c!840959 totalInput!685))) e!3083167))))

(assert (=> b!4934247 (= tp!1385150 (and (inv!73818 (c!840959 totalInput!685)) e!3083168))))

(assert (= (and b!4934247 ((_ is Node!14934) (c!840959 totalInput!685))) b!4934499))

(assert (= b!4934500 b!4934501))

(assert (= (and b!4934247 ((_ is Leaf!24834) (c!840959 totalInput!685))) b!4934500))

(declare-fun m!5955396 () Bool)

(assert (=> b!4934499 m!5955396))

(declare-fun m!5955398 () Bool)

(assert (=> b!4934499 m!5955398))

(declare-fun m!5955400 () Bool)

(assert (=> b!4934500 m!5955400))

(assert (=> b!4934247 m!5955040))

(declare-fun b!4934506 () Bool)

(declare-fun e!3083171 () Bool)

(declare-fun tp!1385171 () Bool)

(assert (=> b!4934506 (= e!3083171 (and tp_is_empty!36027 tp!1385171))))

(assert (=> b!4934232 (= tp!1385153 e!3083171)))

(assert (= (and b!4934232 ((_ is Cons!56822) (t!367426 testedP!110))) b!4934506))

(declare-fun b!4934507 () Bool)

(declare-fun e!3083172 () Bool)

(declare-fun tp!1385172 () Bool)

(assert (=> b!4934507 (= e!3083172 (and tp_is_empty!36027 tp!1385172))))

(assert (=> b!4934242 (= tp!1385149 e!3083172)))

(assert (= (and b!4934242 ((_ is Cons!56822) (t!367426 testedSuffix!70))) b!4934507))

(declare-fun condSetEmpty!27767 () Bool)

(assert (=> setNonEmpty!27764 (= condSetEmpty!27767 (= setRest!27764 ((as const (Array Context!6134 Bool)) false)))))

(declare-fun setRes!27767 () Bool)

(assert (=> setNonEmpty!27764 (= tp!1385151 setRes!27767)))

(declare-fun setIsEmpty!27767 () Bool)

(assert (=> setIsEmpty!27767 setRes!27767))

(declare-fun tp!1385177 () Bool)

(declare-fun e!3083175 () Bool)

(declare-fun setElem!27767 () Context!6134)

(declare-fun setNonEmpty!27767 () Bool)

(assert (=> setNonEmpty!27767 (= setRes!27767 (and tp!1385177 (inv!73816 setElem!27767) e!3083175))))

(declare-fun setRest!27767 () (InoxSet Context!6134))

(assert (=> setNonEmpty!27767 (= setRest!27764 ((_ map or) (store ((as const (Array Context!6134 Bool)) false) setElem!27767 true) setRest!27767))))

(declare-fun b!4934512 () Bool)

(declare-fun tp!1385178 () Bool)

(assert (=> b!4934512 (= e!3083175 tp!1385178)))

(assert (= (and setNonEmpty!27764 condSetEmpty!27767) setIsEmpty!27767))

(assert (= (and setNonEmpty!27764 (not condSetEmpty!27767)) setNonEmpty!27767))

(assert (= setNonEmpty!27767 b!4934512))

(declare-fun m!5955410 () Bool)

(assert (=> setNonEmpty!27767 m!5955410))

(check-sat (not b!4934285) (not b!4934507) (not b!4934469) (not b!4934458) (not d!1588342) (not d!1588370) (not b!4934262) (not d!1588264) (not b!4934464) (not b!4934420) (not b!4934483) (not d!1588346) (not b!4934309) (not b!4934499) (not b!4934359) (not d!1588348) (not b!4934501) (not b!4934377) (not d!1588318) (not b!4934413) (not b!4934512) (not d!1588380) (not b!4934257) (not d!1588282) (not b!4934291) (not b!4934361) (not d!1588268) (not d!1588344) (not d!1588248) (not b!4934411) (not d!1588252) (not b!4934423) (not b!4934485) (not b!4934386) (not b!4934376) (not d!1588340) (not b!4934360) (not bm!344266) (not b!4934381) (not d!1588258) (not b!4934385) (not b!4934468) (not b!4934447) (not b!4934490) (not b!4934506) (not b!4934308) (not b!4934322) (not d!1588308) (not d!1588296) (not d!1588338) (not b!4934247) (not d!1588328) (not b!4934295) (not d!1588324) (not b!4934424) (not b!4934462) (not setNonEmpty!27767) (not d!1588280) (not b!4934380) (not b!4934256) (not d!1588314) (not d!1588334) (not d!1588302) (not b!4934419) (not bm!344257) (not b!4934463) (not d!1588366) (not b!4934470) (not b!4934412) (not b!4934446) (not b!4934500) (not d!1588254) (not bm!344256) (not b!4934310) (not d!1588274) (not b!4934401) (not b!4934460) tp_is_empty!36027 (not d!1588304) (not d!1588290))
(check-sat)
(get-model)

(declare-fun bs!1180607 () Bool)

(declare-fun d!1588408 () Bool)

(assert (= bs!1180607 (and d!1588408 d!1588248)))

(declare-fun lambda!245773 () Int)

(assert (=> bs!1180607 (not (= lambda!245773 lambda!245741))))

(declare-fun bs!1180608 () Bool)

(assert (= bs!1180608 (and d!1588408 b!4934256)))

(assert (=> bs!1180608 (not (= lambda!245773 lambda!245742))))

(declare-fun bs!1180609 () Bool)

(assert (= bs!1180609 (and d!1588408 b!4934257)))

(assert (=> bs!1180609 (not (= lambda!245773 lambda!245743))))

(declare-fun bs!1180610 () Bool)

(assert (= bs!1180610 (and d!1588408 d!1588282)))

(assert (=> bs!1180610 (not (= lambda!245773 lambda!245761))))

(assert (=> d!1588408 true))

(declare-fun order!25983 () Int)

(declare-fun dynLambda!23015 (Int Int) Int)

(assert (=> d!1588408 (< (dynLambda!23015 order!25983 (ite c!840975 lambda!245742 lambda!245743)) (dynLambda!23015 order!25983 lambda!245773))))

(declare-fun forall!13187 (List!56948 Int) Bool)

(assert (=> d!1588408 (= (exists!1275 (ite c!840975 lt!2032352 lt!2032350) (ite c!840975 lambda!245742 lambda!245743)) (not (forall!13187 (ite c!840975 lt!2032352 lt!2032350) lambda!245773)))))

(declare-fun bs!1180611 () Bool)

(assert (= bs!1180611 d!1588408))

(declare-fun m!5955484 () Bool)

(assert (=> bs!1180611 m!5955484))

(assert (=> bm!344256 d!1588408))

(declare-fun b!4934567 () Bool)

(declare-fun res!2105998 () Bool)

(declare-fun e!3083208 () Bool)

(assert (=> b!4934567 (=> (not res!2105998) (not e!3083208))))

(assert (=> b!4934567 (= res!2105998 (= (head!10562 (tail!9701 testedP!110)) (head!10562 (tail!9701 lt!2032314))))))

(declare-fun d!1588410 () Bool)

(declare-fun e!3083207 () Bool)

(assert (=> d!1588410 e!3083207))

(declare-fun res!2105999 () Bool)

(assert (=> d!1588410 (=> res!2105999 e!3083207)))

(declare-fun lt!2032508 () Bool)

(assert (=> d!1588410 (= res!2105999 (not lt!2032508))))

(declare-fun e!3083209 () Bool)

(assert (=> d!1588410 (= lt!2032508 e!3083209)))

(declare-fun res!2106000 () Bool)

(assert (=> d!1588410 (=> res!2106000 e!3083209)))

(assert (=> d!1588410 (= res!2106000 ((_ is Nil!56822) (tail!9701 testedP!110)))))

(assert (=> d!1588410 (= (isPrefix!5023 (tail!9701 testedP!110) (tail!9701 lt!2032314)) lt!2032508)))

(declare-fun b!4934569 () Bool)

(assert (=> b!4934569 (= e!3083207 (>= (size!37632 (tail!9701 lt!2032314)) (size!37632 (tail!9701 testedP!110))))))

(declare-fun b!4934566 () Bool)

(assert (=> b!4934566 (= e!3083209 e!3083208)))

(declare-fun res!2105997 () Bool)

(assert (=> b!4934566 (=> (not res!2105997) (not e!3083208))))

(assert (=> b!4934566 (= res!2105997 (not ((_ is Nil!56822) (tail!9701 lt!2032314))))))

(declare-fun b!4934568 () Bool)

(assert (=> b!4934568 (= e!3083208 (isPrefix!5023 (tail!9701 (tail!9701 testedP!110)) (tail!9701 (tail!9701 lt!2032314))))))

(assert (= (and d!1588410 (not res!2106000)) b!4934566))

(assert (= (and b!4934566 res!2105997) b!4934567))

(assert (= (and b!4934567 res!2105998) b!4934568))

(assert (= (and d!1588410 (not res!2105999)) b!4934569))

(assert (=> b!4934567 m!5955346))

(declare-fun m!5955486 () Bool)

(assert (=> b!4934567 m!5955486))

(assert (=> b!4934567 m!5955102))

(declare-fun m!5955488 () Bool)

(assert (=> b!4934567 m!5955488))

(assert (=> b!4934569 m!5955102))

(declare-fun m!5955490 () Bool)

(assert (=> b!4934569 m!5955490))

(assert (=> b!4934569 m!5955346))

(declare-fun m!5955492 () Bool)

(assert (=> b!4934569 m!5955492))

(assert (=> b!4934568 m!5955346))

(declare-fun m!5955494 () Bool)

(assert (=> b!4934568 m!5955494))

(assert (=> b!4934568 m!5955102))

(declare-fun m!5955496 () Bool)

(assert (=> b!4934568 m!5955496))

(assert (=> b!4934568 m!5955494))

(assert (=> b!4934568 m!5955496))

(declare-fun m!5955498 () Bool)

(assert (=> b!4934568 m!5955498))

(assert (=> b!4934463 d!1588410))

(declare-fun d!1588412 () Bool)

(assert (=> d!1588412 (= (tail!9701 testedP!110) (t!367426 testedP!110))))

(assert (=> b!4934463 d!1588412))

(declare-fun d!1588414 () Bool)

(assert (=> d!1588414 (= (tail!9701 lt!2032314) (t!367426 lt!2032314))))

(assert (=> b!4934463 d!1588414))

(declare-fun d!1588416 () Bool)

(assert (=> d!1588416 (= (inv!73823 (xs!18258 (c!840959 totalInput!685))) (<= (size!37632 (innerList!15022 (xs!18258 (c!840959 totalInput!685)))) 2147483647))))

(declare-fun bs!1180612 () Bool)

(assert (= bs!1180612 d!1588416))

(declare-fun m!5955500 () Bool)

(assert (=> bs!1180612 m!5955500))

(assert (=> b!4934500 d!1588416))

(declare-fun d!1588418 () Bool)

(declare-fun lt!2032509 () Int)

(assert (=> d!1588418 (>= lt!2032509 0)))

(declare-fun e!3083210 () Int)

(assert (=> d!1588418 (= lt!2032509 e!3083210)))

(declare-fun c!841053 () Bool)

(assert (=> d!1588418 (= c!841053 ((_ is Nil!56822) lt!2032382))))

(assert (=> d!1588418 (= (size!37632 lt!2032382) lt!2032509)))

(declare-fun b!4934570 () Bool)

(assert (=> b!4934570 (= e!3083210 0)))

(declare-fun b!4934571 () Bool)

(assert (=> b!4934571 (= e!3083210 (+ 1 (size!37632 (t!367426 lt!2032382))))))

(assert (= (and d!1588418 c!841053) b!4934570))

(assert (= (and d!1588418 (not c!841053)) b!4934571))

(declare-fun m!5955502 () Bool)

(assert (=> b!4934571 m!5955502))

(assert (=> b!4934285 d!1588418))

(declare-fun d!1588420 () Bool)

(declare-fun res!2106007 () Bool)

(declare-fun e!3083213 () Bool)

(assert (=> d!1588420 (=> (not res!2106007) (not e!3083213))))

(assert (=> d!1588420 (= res!2106007 (= (csize!30098 (c!840959 totalInput!685)) (+ (size!37635 (left!41435 (c!840959 totalInput!685))) (size!37635 (right!41765 (c!840959 totalInput!685))))))))

(assert (=> d!1588420 (= (inv!73821 (c!840959 totalInput!685)) e!3083213)))

(declare-fun b!4934578 () Bool)

(declare-fun res!2106008 () Bool)

(assert (=> b!4934578 (=> (not res!2106008) (not e!3083213))))

(assert (=> b!4934578 (= res!2106008 (and (not (= (left!41435 (c!840959 totalInput!685)) Empty!14934)) (not (= (right!41765 (c!840959 totalInput!685)) Empty!14934))))))

(declare-fun b!4934579 () Bool)

(declare-fun res!2106009 () Bool)

(assert (=> b!4934579 (=> (not res!2106009) (not e!3083213))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1991 (Conc!14934) Int)

(assert (=> b!4934579 (= res!2106009 (= (cheight!15145 (c!840959 totalInput!685)) (+ (max!0 (height!1991 (left!41435 (c!840959 totalInput!685))) (height!1991 (right!41765 (c!840959 totalInput!685)))) 1)))))

(declare-fun b!4934580 () Bool)

(assert (=> b!4934580 (= e!3083213 (<= 0 (cheight!15145 (c!840959 totalInput!685))))))

(assert (= (and d!1588420 res!2106007) b!4934578))

(assert (= (and b!4934578 res!2106008) b!4934579))

(assert (= (and b!4934579 res!2106009) b!4934580))

(declare-fun m!5955504 () Bool)

(assert (=> d!1588420 m!5955504))

(declare-fun m!5955506 () Bool)

(assert (=> d!1588420 m!5955506))

(declare-fun m!5955508 () Bool)

(assert (=> b!4934579 m!5955508))

(declare-fun m!5955510 () Bool)

(assert (=> b!4934579 m!5955510))

(assert (=> b!4934579 m!5955508))

(assert (=> b!4934579 m!5955510))

(declare-fun m!5955512 () Bool)

(assert (=> b!4934579 m!5955512))

(assert (=> b!4934458 d!1588420))

(declare-fun d!1588422 () Bool)

(declare-fun lt!2032510 () Int)

(assert (=> d!1588422 (>= lt!2032510 0)))

(declare-fun e!3083214 () Int)

(assert (=> d!1588422 (= lt!2032510 e!3083214)))

(declare-fun c!841054 () Bool)

(assert (=> d!1588422 (= c!841054 ((_ is Nil!56822) lt!2032420))))

(assert (=> d!1588422 (= (size!37632 lt!2032420) lt!2032510)))

(declare-fun b!4934581 () Bool)

(assert (=> b!4934581 (= e!3083214 0)))

(declare-fun b!4934582 () Bool)

(assert (=> b!4934582 (= e!3083214 (+ 1 (size!37632 (t!367426 lt!2032420))))))

(assert (= (and d!1588422 c!841054) b!4934581))

(assert (= (and d!1588422 (not c!841054)) b!4934582))

(declare-fun m!5955514 () Bool)

(assert (=> b!4934582 m!5955514))

(assert (=> b!4934377 d!1588422))

(assert (=> b!4934377 d!1588312))

(declare-fun d!1588424 () Bool)

(declare-fun lt!2032511 () Int)

(assert (=> d!1588424 (>= lt!2032511 0)))

(declare-fun e!3083215 () Int)

(assert (=> d!1588424 (= lt!2032511 e!3083215)))

(declare-fun c!841055 () Bool)

(assert (=> d!1588424 (= c!841055 ((_ is Nil!56822) lt!2032315))))

(assert (=> d!1588424 (= (size!37632 lt!2032315) lt!2032511)))

(declare-fun b!4934583 () Bool)

(assert (=> b!4934583 (= e!3083215 0)))

(declare-fun b!4934584 () Bool)

(assert (=> b!4934584 (= e!3083215 (+ 1 (size!37632 (t!367426 lt!2032315))))))

(assert (= (and d!1588424 c!841055) b!4934583))

(assert (= (and d!1588424 (not c!841055)) b!4934584))

(declare-fun m!5955516 () Bool)

(assert (=> b!4934584 m!5955516))

(assert (=> b!4934377 d!1588424))

(declare-fun d!1588426 () Bool)

(assert (=> d!1588426 (= lt!2032314 testedP!110)))

(assert (=> d!1588426 true))

(declare-fun _$60!884 () Unit!147497)

(assert (=> d!1588426 (= (choose!36231 lt!2032314 testedP!110 lt!2032314) _$60!884)))

(assert (=> d!1588324 d!1588426))

(assert (=> d!1588324 d!1588322))

(declare-fun d!1588428 () Bool)

(assert (=> d!1588428 (= testedSuffix!70 lt!2032312)))

(assert (=> d!1588428 true))

(declare-fun _$63!1192 () Unit!147497)

(assert (=> d!1588428 (= (choose!36220 testedP!110 testedSuffix!70 testedP!110 lt!2032312 lt!2032314) _$63!1192)))

(assert (=> d!1588252 d!1588428))

(assert (=> d!1588252 d!1588362))

(declare-fun b!4934586 () Bool)

(declare-fun res!2106011 () Bool)

(declare-fun e!3083217 () Bool)

(assert (=> b!4934586 (=> (not res!2106011) (not e!3083217))))

(assert (=> b!4934586 (= res!2106011 (= (head!10562 (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))) (head!10562 (tail!9701 lt!2032314))))))

(declare-fun d!1588430 () Bool)

(declare-fun e!3083216 () Bool)

(assert (=> d!1588430 e!3083216))

(declare-fun res!2106012 () Bool)

(assert (=> d!1588430 (=> res!2106012 e!3083216)))

(declare-fun lt!2032512 () Bool)

(assert (=> d!1588430 (= res!2106012 (not lt!2032512))))

(declare-fun e!3083218 () Bool)

(assert (=> d!1588430 (= lt!2032512 e!3083218)))

(declare-fun res!2106013 () Bool)

(assert (=> d!1588430 (=> res!2106013 e!3083218)))

(assert (=> d!1588430 (= res!2106013 ((_ is Nil!56822) (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(assert (=> d!1588430 (= (isPrefix!5023 (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))) (tail!9701 lt!2032314)) lt!2032512)))

(declare-fun b!4934588 () Bool)

(assert (=> b!4934588 (= e!3083216 (>= (size!37632 (tail!9701 lt!2032314)) (size!37632 (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))))

(declare-fun b!4934585 () Bool)

(assert (=> b!4934585 (= e!3083218 e!3083217)))

(declare-fun res!2106010 () Bool)

(assert (=> b!4934585 (=> (not res!2106010) (not e!3083217))))

(assert (=> b!4934585 (= res!2106010 (not ((_ is Nil!56822) (tail!9701 lt!2032314))))))

(declare-fun b!4934587 () Bool)

(assert (=> b!4934587 (= e!3083217 (isPrefix!5023 (tail!9701 (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))) (tail!9701 (tail!9701 lt!2032314))))))

(assert (= (and d!1588430 (not res!2106013)) b!4934585))

(assert (= (and b!4934585 res!2106010) b!4934586))

(assert (= (and b!4934586 res!2106011) b!4934587))

(assert (= (and d!1588430 (not res!2106012)) b!4934588))

(assert (=> b!4934586 m!5955172))

(declare-fun m!5955518 () Bool)

(assert (=> b!4934586 m!5955518))

(assert (=> b!4934586 m!5955102))

(assert (=> b!4934586 m!5955488))

(assert (=> b!4934588 m!5955102))

(assert (=> b!4934588 m!5955490))

(assert (=> b!4934588 m!5955172))

(declare-fun m!5955520 () Bool)

(assert (=> b!4934588 m!5955520))

(assert (=> b!4934587 m!5955172))

(declare-fun m!5955522 () Bool)

(assert (=> b!4934587 m!5955522))

(assert (=> b!4934587 m!5955102))

(assert (=> b!4934587 m!5955496))

(assert (=> b!4934587 m!5955522))

(assert (=> b!4934587 m!5955496))

(declare-fun m!5955524 () Bool)

(assert (=> b!4934587 m!5955524))

(assert (=> b!4934360 d!1588430))

(declare-fun d!1588432 () Bool)

(assert (=> d!1588432 (= (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))) (t!367426 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))

(assert (=> b!4934360 d!1588432))

(assert (=> b!4934360 d!1588414))

(declare-fun d!1588434 () Bool)

(declare-fun res!2106018 () Bool)

(declare-fun e!3083221 () Bool)

(assert (=> d!1588434 (=> (not res!2106018) (not e!3083221))))

(declare-fun list!18047 (IArray!29929) List!56946)

(assert (=> d!1588434 (= res!2106018 (<= (size!37632 (list!18047 (xs!18258 (c!840959 totalInput!685)))) 512))))

(assert (=> d!1588434 (= (inv!73822 (c!840959 totalInput!685)) e!3083221)))

(declare-fun b!4934593 () Bool)

(declare-fun res!2106019 () Bool)

(assert (=> b!4934593 (=> (not res!2106019) (not e!3083221))))

(assert (=> b!4934593 (= res!2106019 (= (csize!30099 (c!840959 totalInput!685)) (size!37632 (list!18047 (xs!18258 (c!840959 totalInput!685))))))))

(declare-fun b!4934594 () Bool)

(assert (=> b!4934594 (= e!3083221 (and (> (csize!30099 (c!840959 totalInput!685)) 0) (<= (csize!30099 (c!840959 totalInput!685)) 512)))))

(assert (= (and d!1588434 res!2106018) b!4934593))

(assert (= (and b!4934593 res!2106019) b!4934594))

(declare-fun m!5955526 () Bool)

(assert (=> d!1588434 m!5955526))

(assert (=> d!1588434 m!5955526))

(declare-fun m!5955528 () Bool)

(assert (=> d!1588434 m!5955528))

(assert (=> b!4934593 m!5955526))

(assert (=> b!4934593 m!5955526))

(assert (=> b!4934593 m!5955528))

(assert (=> b!4934460 d!1588434))

(declare-fun b!4934607 () Bool)

(declare-fun res!2106037 () Bool)

(declare-fun e!3083226 () Bool)

(assert (=> b!4934607 (=> (not res!2106037) (not e!3083226))))

(declare-fun isEmpty!30609 (Conc!14934) Bool)

(assert (=> b!4934607 (= res!2106037 (not (isEmpty!30609 (left!41435 (c!840959 (_1!33962 lt!2032470))))))))

(declare-fun b!4934608 () Bool)

(assert (=> b!4934608 (= e!3083226 (not (isEmpty!30609 (right!41765 (c!840959 (_1!33962 lt!2032470))))))))

(declare-fun d!1588436 () Bool)

(declare-fun res!2106032 () Bool)

(declare-fun e!3083227 () Bool)

(assert (=> d!1588436 (=> res!2106032 e!3083227)))

(assert (=> d!1588436 (= res!2106032 (not ((_ is Node!14934) (c!840959 (_1!33962 lt!2032470)))))))

(assert (=> d!1588436 (= (isBalanced!4115 (c!840959 (_1!33962 lt!2032470))) e!3083227)))

(declare-fun b!4934609 () Bool)

(declare-fun res!2106033 () Bool)

(assert (=> b!4934609 (=> (not res!2106033) (not e!3083226))))

(assert (=> b!4934609 (= res!2106033 (<= (- (height!1991 (left!41435 (c!840959 (_1!33962 lt!2032470)))) (height!1991 (right!41765 (c!840959 (_1!33962 lt!2032470))))) 1))))

(declare-fun b!4934610 () Bool)

(declare-fun res!2106036 () Bool)

(assert (=> b!4934610 (=> (not res!2106036) (not e!3083226))))

(assert (=> b!4934610 (= res!2106036 (isBalanced!4115 (right!41765 (c!840959 (_1!33962 lt!2032470)))))))

(declare-fun b!4934611 () Bool)

(declare-fun res!2106035 () Bool)

(assert (=> b!4934611 (=> (not res!2106035) (not e!3083226))))

(assert (=> b!4934611 (= res!2106035 (isBalanced!4115 (left!41435 (c!840959 (_1!33962 lt!2032470)))))))

(declare-fun b!4934612 () Bool)

(assert (=> b!4934612 (= e!3083227 e!3083226)))

(declare-fun res!2106034 () Bool)

(assert (=> b!4934612 (=> (not res!2106034) (not e!3083226))))

(assert (=> b!4934612 (= res!2106034 (<= (- 1) (- (height!1991 (left!41435 (c!840959 (_1!33962 lt!2032470)))) (height!1991 (right!41765 (c!840959 (_1!33962 lt!2032470)))))))))

(assert (= (and d!1588436 (not res!2106032)) b!4934612))

(assert (= (and b!4934612 res!2106034) b!4934609))

(assert (= (and b!4934609 res!2106033) b!4934611))

(assert (= (and b!4934611 res!2106035) b!4934610))

(assert (= (and b!4934610 res!2106036) b!4934607))

(assert (= (and b!4934607 res!2106037) b!4934608))

(declare-fun m!5955530 () Bool)

(assert (=> b!4934607 m!5955530))

(declare-fun m!5955532 () Bool)

(assert (=> b!4934610 m!5955532))

(declare-fun m!5955534 () Bool)

(assert (=> b!4934608 m!5955534))

(declare-fun m!5955536 () Bool)

(assert (=> b!4934612 m!5955536))

(declare-fun m!5955538 () Bool)

(assert (=> b!4934612 m!5955538))

(assert (=> b!4934609 m!5955536))

(assert (=> b!4934609 m!5955538))

(declare-fun m!5955540 () Bool)

(assert (=> b!4934611 m!5955540))

(assert (=> d!1588348 d!1588436))

(declare-fun b!4934751 () Bool)

(declare-fun lt!2032563 () List!56946)

(declare-fun c!841111 () Bool)

(declare-fun lt!2032572 () List!56946)

(declare-fun e!3083306 () List!56946)

(assert (=> b!4934751 (= e!3083306 (ite c!841111 lt!2032572 lt!2032563))))

(declare-fun b!4934752 () Bool)

(declare-fun lt!2032569 () tuple2!61326)

(declare-fun call!344288 () tuple2!61326)

(assert (=> b!4934752 (= lt!2032569 call!344288)))

(declare-fun e!3083305 () tuple2!61326)

(declare-fun call!344291 () List!56946)

(assert (=> b!4934752 (= e!3083305 (tuple2!61327 (_1!33966 lt!2032569) call!344291))))

(declare-fun b!4934753 () Bool)

(declare-fun e!3083304 () tuple2!61324)

(assert (=> b!4934753 (= e!3083304 (tuple2!61325 (c!840959 totalInput!685) Empty!14934))))

(declare-fun b!4934754 () Bool)

(declare-fun e!3083311 () tuple2!61324)

(assert (=> b!4934754 (= e!3083311 (tuple2!61325 (c!840959 totalInput!685) (c!840959 totalInput!685)))))

(declare-fun b!4934755 () Bool)

(declare-fun c!841105 () Bool)

(assert (=> b!4934755 (= c!841105 (<= testedPSize!70 0))))

(declare-fun e!3083307 () tuple2!61324)

(declare-fun e!3083302 () tuple2!61324)

(assert (=> b!4934755 (= e!3083307 e!3083302)))

(declare-fun b!4934756 () Bool)

(declare-fun e!3083301 () Int)

(declare-fun call!344292 () Int)

(assert (=> b!4934756 (= e!3083301 (- testedPSize!70 call!344292))))

(declare-fun b!4934757 () Bool)

(declare-fun lt!2032565 () tuple2!61324)

(declare-fun call!344287 () tuple2!61324)

(assert (=> b!4934757 (= lt!2032565 call!344287)))

(declare-fun e!3083310 () tuple2!61324)

(declare-fun call!344289 () Conc!14934)

(assert (=> b!4934757 (= e!3083310 (tuple2!61325 (_1!33965 lt!2032565) call!344289))))

(declare-fun c!841107 () Bool)

(declare-fun lt!2032567 () tuple2!61324)

(declare-fun bm!344282 () Bool)

(declare-fun ++!12391 (Conc!14934 Conc!14934) Conc!14934)

(assert (=> bm!344282 (= call!344289 (++!12391 (ite c!841107 (_2!33965 lt!2032565) (left!41435 (c!840959 totalInput!685))) (ite c!841107 (right!41765 (c!840959 totalInput!685)) (_1!33965 lt!2032567))))))

(declare-fun b!4934758 () Bool)

(assert (=> b!4934758 (= lt!2032567 call!344287)))

(assert (=> b!4934758 (= e!3083310 (tuple2!61325 call!344289 (_2!33965 lt!2032567)))))

(declare-fun b!4934759 () Bool)

(assert (=> b!4934759 (= e!3083306 (list!18047 (xs!18258 (c!840959 totalInput!685))))))

(declare-fun b!4934760 () Bool)

(declare-fun e!3083303 () tuple2!61326)

(assert (=> b!4934760 (= e!3083303 e!3083305)))

(assert (=> b!4934760 (= c!841111 (< testedPSize!70 call!344292))))

(declare-fun bm!344283 () Bool)

(declare-fun lt!2032566 () tuple2!61326)

(assert (=> bm!344283 (= call!344291 (++!12390 (ite c!841111 (_2!33966 lt!2032569) lt!2032572) (ite c!841111 lt!2032563 (_1!33966 lt!2032566))))))

(declare-fun b!4934761 () Bool)

(declare-fun e!3083300 () Int)

(assert (=> b!4934761 (= e!3083300 (- testedPSize!70 (size!37635 (left!41435 (c!840959 totalInput!685)))))))

(declare-fun b!4934762 () Bool)

(assert (=> b!4934762 (= lt!2032566 call!344288)))

(assert (=> b!4934762 (= e!3083305 (tuple2!61327 call!344291 (_2!33966 lt!2032566)))))

(declare-fun d!1588438 () Bool)

(declare-fun e!3083308 () Bool)

(assert (=> d!1588438 e!3083308))

(declare-fun res!2106080 () Bool)

(assert (=> d!1588438 (=> (not res!2106080) (not e!3083308))))

(declare-fun lt!2032568 () tuple2!61324)

(assert (=> d!1588438 (= res!2106080 (isBalanced!4115 (_1!33965 lt!2032568)))))

(assert (=> d!1588438 (= lt!2032568 e!3083311)))

(declare-fun c!841106 () Bool)

(assert (=> d!1588438 (= c!841106 ((_ is Empty!14934) (c!840959 totalInput!685)))))

(assert (=> d!1588438 (isBalanced!4115 (c!840959 totalInput!685))))

(assert (=> d!1588438 (= (splitAt!327 (c!840959 totalInput!685) testedPSize!70) lt!2032568)))

(declare-fun b!4934763 () Bool)

(assert (=> b!4934763 (= e!3083300 testedPSize!70)))

(declare-fun b!4934764 () Bool)

(assert (=> b!4934764 (= e!3083302 (tuple2!61325 Empty!14934 (c!840959 totalInput!685)))))

(declare-fun bm!344284 () Bool)

(declare-fun c!841110 () Bool)

(assert (=> bm!344284 (= c!841110 c!841107)))

(assert (=> bm!344284 (= call!344287 (splitAt!327 (ite c!841107 (left!41435 (c!840959 totalInput!685)) (right!41765 (c!840959 totalInput!685))) e!3083300))))

(declare-fun b!4934765 () Bool)

(assert (=> b!4934765 (= e!3083308 (= (tuple2!61327 (list!18046 (_1!33965 lt!2032568)) (list!18046 (_2!33965 lt!2032568))) (splitAtIndex!121 (list!18046 (c!840959 totalInput!685)) testedPSize!70)))))

(declare-fun b!4934766 () Bool)

(assert (=> b!4934766 (= e!3083302 e!3083304)))

(declare-fun c!841108 () Bool)

(assert (=> b!4934766 (= c!841108 (= testedPSize!70 (csize!30099 (c!840959 totalInput!685))))))

(declare-fun b!4934767 () Bool)

(assert (=> b!4934767 (= e!3083303 (tuple2!61327 lt!2032572 lt!2032563))))

(declare-fun b!4934768 () Bool)

(declare-fun lt!2032571 () Unit!147497)

(declare-fun lt!2032560 () Unit!147497)

(assert (=> b!4934768 (= lt!2032571 lt!2032560)))

(declare-fun lt!2032562 () List!56946)

(declare-fun slice!778 (List!56946 Int Int) List!56946)

(assert (=> b!4934768 (= (drop!2256 lt!2032562 testedPSize!70) (slice!778 lt!2032562 testedPSize!70 call!344292))))

(declare-fun dropLemma!31 (List!56946 Int) Unit!147497)

(assert (=> b!4934768 (= lt!2032560 (dropLemma!31 lt!2032562 testedPSize!70))))

(assert (=> b!4934768 (= lt!2032562 (list!18047 (xs!18258 (c!840959 totalInput!685))))))

(declare-fun lt!2032564 () tuple2!61326)

(declare-fun call!344290 () tuple2!61326)

(assert (=> b!4934768 (= lt!2032564 call!344290)))

(declare-fun slice!779 (IArray!29929 Int Int) IArray!29929)

(assert (=> b!4934768 (= e!3083304 (tuple2!61325 (Leaf!24834 (slice!779 (xs!18258 (c!840959 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24834 (slice!779 (xs!18258 (c!840959 totalInput!685)) testedPSize!70 (csize!30099 (c!840959 totalInput!685))) (- (csize!30099 (c!840959 totalInput!685)) testedPSize!70))))))

(declare-fun bm!344285 () Bool)

(declare-fun c!841104 () Bool)

(assert (=> bm!344285 (= call!344292 (size!37632 (ite c!841104 lt!2032562 lt!2032572)))))

(declare-fun b!4934769 () Bool)

(declare-fun e!3083309 () tuple2!61324)

(assert (=> b!4934769 (= e!3083309 (tuple2!61325 (left!41435 (c!840959 totalInput!685)) (right!41765 (c!840959 totalInput!685))))))

(declare-fun b!4934770 () Bool)

(assert (=> b!4934770 (= e!3083301 testedPSize!70)))

(declare-fun b!4934771 () Bool)

(assert (=> b!4934771 (= e!3083309 e!3083310)))

(assert (=> b!4934771 (= c!841107 (< testedPSize!70 (size!37635 (left!41435 (c!840959 totalInput!685)))))))

(declare-fun bm!344286 () Bool)

(declare-fun c!841112 () Bool)

(assert (=> bm!344286 (= c!841112 c!841111)))

(assert (=> bm!344286 (= call!344288 call!344290)))

(declare-fun b!4934772 () Bool)

(assert (=> b!4934772 (= e!3083311 e!3083307)))

(assert (=> b!4934772 (= c!841104 ((_ is Leaf!24834) (c!840959 totalInput!685)))))

(declare-fun bm!344287 () Bool)

(declare-fun c!841109 () Bool)

(assert (=> bm!344287 (= c!841109 c!841104)))

(assert (=> bm!344287 (= call!344290 (splitAtIndex!121 e!3083306 (ite c!841104 testedPSize!70 e!3083301)))))

(declare-fun b!4934773 () Bool)

(declare-fun res!2106081 () Bool)

(assert (=> b!4934773 (=> (not res!2106081) (not e!3083308))))

(assert (=> b!4934773 (= res!2106081 (isBalanced!4115 (_2!33965 lt!2032568)))))

(declare-fun b!4934774 () Bool)

(declare-fun c!841103 () Bool)

(assert (=> b!4934774 (= c!841103 (= (size!37635 (left!41435 (c!840959 totalInput!685))) testedPSize!70))))

(declare-fun lt!2032561 () Unit!147497)

(declare-fun lt!2032570 () Unit!147497)

(assert (=> b!4934774 (= lt!2032561 lt!2032570)))

(assert (=> b!4934774 (= (splitAtIndex!121 (++!12390 lt!2032572 lt!2032563) testedPSize!70) e!3083303)))

(declare-fun c!841113 () Bool)

(assert (=> b!4934774 (= c!841113 (= call!344292 testedPSize!70))))

(declare-fun splitAtLemma!31 (List!56946 List!56946 Int) Unit!147497)

(assert (=> b!4934774 (= lt!2032570 (splitAtLemma!31 lt!2032572 lt!2032563 testedPSize!70))))

(assert (=> b!4934774 (= lt!2032563 (list!18046 (right!41765 (c!840959 totalInput!685))))))

(assert (=> b!4934774 (= lt!2032572 (list!18046 (left!41435 (c!840959 totalInput!685))))))

(assert (=> b!4934774 (= e!3083307 e!3083309)))

(assert (= (and d!1588438 c!841106) b!4934754))

(assert (= (and d!1588438 (not c!841106)) b!4934772))

(assert (= (and b!4934772 c!841104) b!4934755))

(assert (= (and b!4934772 (not c!841104)) b!4934774))

(assert (= (and b!4934755 c!841105) b!4934764))

(assert (= (and b!4934755 (not c!841105)) b!4934766))

(assert (= (and b!4934766 c!841108) b!4934753))

(assert (= (and b!4934766 (not c!841108)) b!4934768))

(assert (= (and b!4934774 c!841113) b!4934767))

(assert (= (and b!4934774 (not c!841113)) b!4934760))

(assert (= (and b!4934760 c!841111) b!4934752))

(assert (= (and b!4934760 (not c!841111)) b!4934762))

(assert (= (or b!4934752 b!4934762) bm!344283))

(assert (= (or b!4934752 b!4934762) bm!344286))

(assert (= (and bm!344286 c!841112) b!4934770))

(assert (= (and bm!344286 (not c!841112)) b!4934756))

(assert (= (and b!4934774 c!841103) b!4934769))

(assert (= (and b!4934774 (not c!841103)) b!4934771))

(assert (= (and b!4934771 c!841107) b!4934757))

(assert (= (and b!4934771 (not c!841107)) b!4934758))

(assert (= (or b!4934757 b!4934758) bm!344282))

(assert (= (or b!4934757 b!4934758) bm!344284))

(assert (= (and bm!344284 c!841110) b!4934763))

(assert (= (and bm!344284 (not c!841110)) b!4934761))

(assert (= (or b!4934768 b!4934756 b!4934760 b!4934774) bm!344285))

(assert (= (or b!4934768 bm!344286) bm!344287))

(assert (= (and bm!344287 c!841109) b!4934759))

(assert (= (and bm!344287 (not c!841109)) b!4934751))

(assert (= (and d!1588438 res!2106080) b!4934773))

(assert (= (and b!4934773 res!2106081) b!4934765))

(declare-fun m!5955690 () Bool)

(assert (=> bm!344282 m!5955690))

(assert (=> b!4934761 m!5955504))

(declare-fun m!5955692 () Bool)

(assert (=> b!4934773 m!5955692))

(declare-fun m!5955694 () Bool)

(assert (=> bm!344285 m!5955694))

(declare-fun m!5955696 () Bool)

(assert (=> b!4934774 m!5955696))

(declare-fun m!5955698 () Bool)

(assert (=> b!4934774 m!5955698))

(declare-fun m!5955700 () Bool)

(assert (=> b!4934774 m!5955700))

(assert (=> b!4934774 m!5955696))

(declare-fun m!5955702 () Bool)

(assert (=> b!4934774 m!5955702))

(assert (=> b!4934774 m!5955504))

(declare-fun m!5955704 () Bool)

(assert (=> b!4934774 m!5955704))

(declare-fun m!5955706 () Bool)

(assert (=> bm!344287 m!5955706))

(declare-fun m!5955708 () Bool)

(assert (=> bm!344283 m!5955708))

(declare-fun m!5955710 () Bool)

(assert (=> b!4934765 m!5955710))

(declare-fun m!5955712 () Bool)

(assert (=> b!4934765 m!5955712))

(assert (=> b!4934765 m!5955258))

(assert (=> b!4934765 m!5955258))

(declare-fun m!5955714 () Bool)

(assert (=> b!4934765 m!5955714))

(assert (=> b!4934759 m!5955526))

(declare-fun m!5955716 () Bool)

(assert (=> bm!344284 m!5955716))

(declare-fun m!5955718 () Bool)

(assert (=> d!1588438 m!5955718))

(assert (=> d!1588438 m!5955272))

(declare-fun m!5955720 () Bool)

(assert (=> b!4934768 m!5955720))

(declare-fun m!5955722 () Bool)

(assert (=> b!4934768 m!5955722))

(assert (=> b!4934768 m!5955526))

(declare-fun m!5955724 () Bool)

(assert (=> b!4934768 m!5955724))

(declare-fun m!5955726 () Bool)

(assert (=> b!4934768 m!5955726))

(declare-fun m!5955728 () Bool)

(assert (=> b!4934768 m!5955728))

(assert (=> b!4934771 m!5955504))

(assert (=> d!1588348 d!1588438))

(declare-fun b!4934779 () Bool)

(declare-fun res!2106087 () Bool)

(declare-fun e!3083314 () Bool)

(assert (=> b!4934779 (=> (not res!2106087) (not e!3083314))))

(assert (=> b!4934779 (= res!2106087 (not (isEmpty!30609 (left!41435 (c!840959 totalInput!685)))))))

(declare-fun b!4934780 () Bool)

(assert (=> b!4934780 (= e!3083314 (not (isEmpty!30609 (right!41765 (c!840959 totalInput!685)))))))

(declare-fun d!1588508 () Bool)

(declare-fun res!2106082 () Bool)

(declare-fun e!3083315 () Bool)

(assert (=> d!1588508 (=> res!2106082 e!3083315)))

(assert (=> d!1588508 (= res!2106082 (not ((_ is Node!14934) (c!840959 totalInput!685))))))

(assert (=> d!1588508 (= (isBalanced!4115 (c!840959 totalInput!685)) e!3083315)))

(declare-fun b!4934781 () Bool)

(declare-fun res!2106083 () Bool)

(assert (=> b!4934781 (=> (not res!2106083) (not e!3083314))))

(assert (=> b!4934781 (= res!2106083 (<= (- (height!1991 (left!41435 (c!840959 totalInput!685))) (height!1991 (right!41765 (c!840959 totalInput!685)))) 1))))

(declare-fun b!4934782 () Bool)

(declare-fun res!2106086 () Bool)

(assert (=> b!4934782 (=> (not res!2106086) (not e!3083314))))

(assert (=> b!4934782 (= res!2106086 (isBalanced!4115 (right!41765 (c!840959 totalInput!685))))))

(declare-fun b!4934783 () Bool)

(declare-fun res!2106085 () Bool)

(assert (=> b!4934783 (=> (not res!2106085) (not e!3083314))))

(assert (=> b!4934783 (= res!2106085 (isBalanced!4115 (left!41435 (c!840959 totalInput!685))))))

(declare-fun b!4934784 () Bool)

(assert (=> b!4934784 (= e!3083315 e!3083314)))

(declare-fun res!2106084 () Bool)

(assert (=> b!4934784 (=> (not res!2106084) (not e!3083314))))

(assert (=> b!4934784 (= res!2106084 (<= (- 1) (- (height!1991 (left!41435 (c!840959 totalInput!685))) (height!1991 (right!41765 (c!840959 totalInput!685))))))))

(assert (= (and d!1588508 (not res!2106082)) b!4934784))

(assert (= (and b!4934784 res!2106084) b!4934781))

(assert (= (and b!4934781 res!2106083) b!4934783))

(assert (= (and b!4934783 res!2106085) b!4934782))

(assert (= (and b!4934782 res!2106086) b!4934779))

(assert (= (and b!4934779 res!2106087) b!4934780))

(declare-fun m!5955730 () Bool)

(assert (=> b!4934779 m!5955730))

(declare-fun m!5955732 () Bool)

(assert (=> b!4934782 m!5955732))

(declare-fun m!5955734 () Bool)

(assert (=> b!4934780 m!5955734))

(assert (=> b!4934784 m!5955508))

(assert (=> b!4934784 m!5955510))

(assert (=> b!4934781 m!5955508))

(assert (=> b!4934781 m!5955510))

(declare-fun m!5955736 () Bool)

(assert (=> b!4934783 m!5955736))

(assert (=> d!1588348 d!1588508))

(declare-fun d!1588510 () Bool)

(assert (=> d!1588510 (and (= lt!2032317 testedP!110) (= lt!2032318 testedSuffix!70))))

(assert (=> d!1588510 true))

(declare-fun _$50!413 () Unit!147497)

(assert (=> d!1588510 (= (choose!36224 lt!2032317 lt!2032318 testedP!110 testedSuffix!70) _$50!413)))

(assert (=> d!1588280 d!1588510))

(assert (=> d!1588280 d!1588342))

(assert (=> d!1588280 d!1588334))

(declare-fun b!4934787 () Bool)

(declare-fun e!3083317 () List!56946)

(assert (=> b!4934787 (= e!3083317 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))

(declare-fun e!3083318 () Bool)

(declare-fun lt!2032576 () List!56946)

(declare-fun b!4934790 () Bool)

(assert (=> b!4934790 (= e!3083318 (or (not (= (Cons!56822 (head!10562 lt!2032312) Nil!56822) Nil!56822)) (= lt!2032576 (t!367426 testedP!110))))))

(declare-fun b!4934788 () Bool)

(assert (=> b!4934788 (= e!3083317 (Cons!56822 (h!63270 (t!367426 testedP!110)) (++!12390 (t!367426 (t!367426 testedP!110)) (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))

(declare-fun d!1588512 () Bool)

(assert (=> d!1588512 e!3083318))

(declare-fun res!2106089 () Bool)

(assert (=> d!1588512 (=> (not res!2106089) (not e!3083318))))

(assert (=> d!1588512 (= res!2106089 (= (content!10099 lt!2032576) ((_ map or) (content!10099 (t!367426 testedP!110)) (content!10099 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(assert (=> d!1588512 (= lt!2032576 e!3083317)))

(declare-fun c!841123 () Bool)

(assert (=> d!1588512 (= c!841123 ((_ is Nil!56822) (t!367426 testedP!110)))))

(assert (=> d!1588512 (= (++!12390 (t!367426 testedP!110) (Cons!56822 (head!10562 lt!2032312) Nil!56822)) lt!2032576)))

(declare-fun b!4934789 () Bool)

(declare-fun res!2106088 () Bool)

(assert (=> b!4934789 (=> (not res!2106088) (not e!3083318))))

(assert (=> b!4934789 (= res!2106088 (= (size!37632 lt!2032576) (+ (size!37632 (t!367426 testedP!110)) (size!37632 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(assert (= (and d!1588512 c!841123) b!4934787))

(assert (= (and d!1588512 (not c!841123)) b!4934788))

(assert (= (and d!1588512 res!2106089) b!4934789))

(assert (= (and b!4934789 res!2106088) b!4934790))

(declare-fun m!5955740 () Bool)

(assert (=> b!4934788 m!5955740))

(declare-fun m!5955744 () Bool)

(assert (=> d!1588512 m!5955744))

(declare-fun m!5955746 () Bool)

(assert (=> d!1588512 m!5955746))

(assert (=> d!1588512 m!5955198))

(declare-fun m!5955750 () Bool)

(assert (=> b!4934789 m!5955750))

(assert (=> b!4934789 m!5955392))

(assert (=> b!4934789 m!5955204))

(assert (=> b!4934380 d!1588512))

(declare-fun d!1588516 () Bool)

(declare-fun c!841126 () Bool)

(assert (=> d!1588516 (= c!841126 ((_ is Nil!56822) lt!2032382))))

(declare-fun e!3083321 () (InoxSet C!27080))

(assert (=> d!1588516 (= (content!10099 lt!2032382) e!3083321)))

(declare-fun b!4934795 () Bool)

(assert (=> b!4934795 (= e!3083321 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934796 () Bool)

(assert (=> b!4934796 (= e!3083321 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032382) true) (content!10099 (t!367426 lt!2032382))))))

(assert (= (and d!1588516 c!841126) b!4934795))

(assert (= (and d!1588516 (not c!841126)) b!4934796))

(declare-fun m!5955754 () Bool)

(assert (=> b!4934796 m!5955754))

(declare-fun m!5955756 () Bool)

(assert (=> b!4934796 m!5955756))

(assert (=> d!1588258 d!1588516))

(declare-fun d!1588518 () Bool)

(declare-fun c!841127 () Bool)

(assert (=> d!1588518 (= c!841127 ((_ is Nil!56822) lt!2032314))))

(declare-fun e!3083322 () (InoxSet C!27080))

(assert (=> d!1588518 (= (content!10099 lt!2032314) e!3083322)))

(declare-fun b!4934797 () Bool)

(assert (=> b!4934797 (= e!3083322 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934798 () Bool)

(assert (=> b!4934798 (= e!3083322 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032314) true) (content!10099 (t!367426 lt!2032314))))))

(assert (= (and d!1588518 c!841127) b!4934797))

(assert (= (and d!1588518 (not c!841127)) b!4934798))

(declare-fun m!5955762 () Bool)

(assert (=> b!4934798 m!5955762))

(declare-fun m!5955764 () Bool)

(assert (=> b!4934798 m!5955764))

(assert (=> d!1588258 d!1588518))

(declare-fun d!1588522 () Bool)

(assert (=> d!1588522 (isPrefix!5023 (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822)) lt!2032314)))

(assert (=> d!1588522 true))

(declare-fun _$65!1709 () Unit!147497)

(assert (=> d!1588522 (= (choose!36229 testedP!110 lt!2032314) _$65!1709)))

(declare-fun bs!1180628 () Bool)

(assert (= bs!1180628 d!1588522))

(assert (=> bs!1180628 m!5955038))

(assert (=> bs!1180628 m!5955038))

(assert (=> bs!1180628 m!5955230))

(assert (=> bs!1180628 m!5955226))

(assert (=> bs!1180628 m!5955226))

(assert (=> bs!1180628 m!5955228))

(assert (=> d!1588308 d!1588522))

(declare-fun b!4934806 () Bool)

(declare-fun e!3083327 () List!56946)

(assert (=> b!4934806 (= e!3083327 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822))))

(declare-fun b!4934809 () Bool)

(declare-fun lt!2032583 () List!56946)

(declare-fun e!3083328 () Bool)

(assert (=> b!4934809 (= e!3083328 (or (not (= (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822) Nil!56822)) (= lt!2032583 testedP!110)))))

(declare-fun b!4934807 () Bool)

(assert (=> b!4934807 (= e!3083327 (Cons!56822 (h!63270 testedP!110) (++!12390 (t!367426 testedP!110) (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822))))))

(declare-fun d!1588532 () Bool)

(assert (=> d!1588532 e!3083328))

(declare-fun res!2106092 () Bool)

(assert (=> d!1588532 (=> (not res!2106092) (not e!3083328))))

(assert (=> d!1588532 (= res!2106092 (= (content!10099 lt!2032583) ((_ map or) (content!10099 testedP!110) (content!10099 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822)))))))

(assert (=> d!1588532 (= lt!2032583 e!3083327)))

(declare-fun c!841131 () Bool)

(assert (=> d!1588532 (= c!841131 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588532 (= (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822)) lt!2032583)))

(declare-fun b!4934808 () Bool)

(declare-fun res!2106091 () Bool)

(assert (=> b!4934808 (=> (not res!2106091) (not e!3083328))))

(assert (=> b!4934808 (= res!2106091 (= (size!37632 lt!2032583) (+ (size!37632 testedP!110) (size!37632 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822)))))))

(assert (= (and d!1588532 c!841131) b!4934806))

(assert (= (and d!1588532 (not c!841131)) b!4934807))

(assert (= (and d!1588532 res!2106092) b!4934808))

(assert (= (and b!4934808 res!2106091) b!4934809))

(declare-fun m!5955778 () Bool)

(assert (=> b!4934807 m!5955778))

(declare-fun m!5955780 () Bool)

(assert (=> d!1588532 m!5955780))

(assert (=> d!1588532 m!5955196))

(declare-fun m!5955782 () Bool)

(assert (=> d!1588532 m!5955782))

(declare-fun m!5955784 () Bool)

(assert (=> b!4934808 m!5955784))

(assert (=> b!4934808 m!5955028))

(declare-fun m!5955786 () Bool)

(assert (=> b!4934808 m!5955786))

(assert (=> d!1588308 d!1588532))

(declare-fun b!4934811 () Bool)

(declare-fun res!2106094 () Bool)

(declare-fun e!3083330 () Bool)

(assert (=> b!4934811 (=> (not res!2106094) (not e!3083330))))

(assert (=> b!4934811 (= res!2106094 (= (head!10562 (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822))) (head!10562 lt!2032314)))))

(declare-fun d!1588534 () Bool)

(declare-fun e!3083329 () Bool)

(assert (=> d!1588534 e!3083329))

(declare-fun res!2106095 () Bool)

(assert (=> d!1588534 (=> res!2106095 e!3083329)))

(declare-fun lt!2032584 () Bool)

(assert (=> d!1588534 (= res!2106095 (not lt!2032584))))

(declare-fun e!3083331 () Bool)

(assert (=> d!1588534 (= lt!2032584 e!3083331)))

(declare-fun res!2106096 () Bool)

(assert (=> d!1588534 (=> res!2106096 e!3083331)))

(assert (=> d!1588534 (= res!2106096 ((_ is Nil!56822) (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822))))))

(assert (=> d!1588534 (= (isPrefix!5023 (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822)) lt!2032314) lt!2032584)))

(declare-fun b!4934813 () Bool)

(assert (=> b!4934813 (= e!3083329 (>= (size!37632 lt!2032314) (size!37632 (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822)))))))

(declare-fun b!4934810 () Bool)

(assert (=> b!4934810 (= e!3083331 e!3083330)))

(declare-fun res!2106093 () Bool)

(assert (=> b!4934810 (=> (not res!2106093) (not e!3083330))))

(assert (=> b!4934810 (= res!2106093 (not ((_ is Nil!56822) lt!2032314)))))

(declare-fun b!4934812 () Bool)

(assert (=> b!4934812 (= e!3083330 (isPrefix!5023 (tail!9701 (++!12390 testedP!110 (Cons!56822 (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) Nil!56822))) (tail!9701 lt!2032314)))))

(assert (= (and d!1588534 (not res!2106096)) b!4934810))

(assert (= (and b!4934810 res!2106093) b!4934811))

(assert (= (and b!4934811 res!2106094) b!4934812))

(assert (= (and d!1588534 (not res!2106095)) b!4934813))

(assert (=> b!4934811 m!5955226))

(declare-fun m!5955788 () Bool)

(assert (=> b!4934811 m!5955788))

(assert (=> b!4934811 m!5955140))

(assert (=> b!4934813 m!5955030))

(assert (=> b!4934813 m!5955226))

(declare-fun m!5955790 () Bool)

(assert (=> b!4934813 m!5955790))

(assert (=> b!4934812 m!5955226))

(declare-fun m!5955792 () Bool)

(assert (=> b!4934812 m!5955792))

(assert (=> b!4934812 m!5955102))

(assert (=> b!4934812 m!5955792))

(assert (=> b!4934812 m!5955102))

(declare-fun m!5955794 () Bool)

(assert (=> b!4934812 m!5955794))

(assert (=> d!1588308 d!1588534))

(assert (=> d!1588308 d!1588254))

(assert (=> d!1588308 d!1588362))

(declare-fun d!1588536 () Bool)

(assert (=> d!1588536 (= (head!10562 (getSuffix!3007 lt!2032314 testedP!110)) (h!63270 (getSuffix!3007 lt!2032314 testedP!110)))))

(assert (=> d!1588308 d!1588536))

(declare-fun d!1588538 () Bool)

(declare-fun lt!2032587 () Bool)

(assert (=> d!1588538 (= lt!2032587 (select (content!10099 lt!2032314) lt!2032394))))

(declare-fun e!3083337 () Bool)

(assert (=> d!1588538 (= lt!2032587 e!3083337)))

(declare-fun res!2106101 () Bool)

(assert (=> d!1588538 (=> (not res!2106101) (not e!3083337))))

(assert (=> d!1588538 (= res!2106101 ((_ is Cons!56822) lt!2032314))))

(assert (=> d!1588538 (= (contains!19471 lt!2032314 lt!2032394) lt!2032587)))

(declare-fun b!4934818 () Bool)

(declare-fun e!3083336 () Bool)

(assert (=> b!4934818 (= e!3083337 e!3083336)))

(declare-fun res!2106102 () Bool)

(assert (=> b!4934818 (=> res!2106102 e!3083336)))

(assert (=> b!4934818 (= res!2106102 (= (h!63270 lt!2032314) lt!2032394))))

(declare-fun b!4934819 () Bool)

(assert (=> b!4934819 (= e!3083336 (contains!19471 (t!367426 lt!2032314) lt!2032394))))

(assert (= (and d!1588538 res!2106101) b!4934818))

(assert (= (and b!4934818 (not res!2106102)) b!4934819))

(assert (=> d!1588538 m!5955124))

(declare-fun m!5955796 () Bool)

(assert (=> d!1588538 m!5955796))

(declare-fun m!5955798 () Bool)

(assert (=> b!4934819 m!5955798))

(assert (=> d!1588268 d!1588538))

(declare-fun b!4934821 () Bool)

(declare-fun res!2106104 () Bool)

(declare-fun e!3083339 () Bool)

(assert (=> b!4934821 (=> (not res!2106104) (not e!3083339))))

(assert (=> b!4934821 (= res!2106104 (= (head!10562 testedP!110) (head!10562 (++!12390 testedP!110 testedSuffix!70))))))

(declare-fun d!1588540 () Bool)

(declare-fun e!3083338 () Bool)

(assert (=> d!1588540 e!3083338))

(declare-fun res!2106105 () Bool)

(assert (=> d!1588540 (=> res!2106105 e!3083338)))

(declare-fun lt!2032588 () Bool)

(assert (=> d!1588540 (= res!2106105 (not lt!2032588))))

(declare-fun e!3083340 () Bool)

(assert (=> d!1588540 (= lt!2032588 e!3083340)))

(declare-fun res!2106106 () Bool)

(assert (=> d!1588540 (=> res!2106106 e!3083340)))

(assert (=> d!1588540 (= res!2106106 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588540 (= (isPrefix!5023 testedP!110 (++!12390 testedP!110 testedSuffix!70)) lt!2032588)))

(declare-fun b!4934823 () Bool)

(assert (=> b!4934823 (= e!3083338 (>= (size!37632 (++!12390 testedP!110 testedSuffix!70)) (size!37632 testedP!110)))))

(declare-fun b!4934820 () Bool)

(assert (=> b!4934820 (= e!3083340 e!3083339)))

(declare-fun res!2106103 () Bool)

(assert (=> b!4934820 (=> (not res!2106103) (not e!3083339))))

(assert (=> b!4934820 (= res!2106103 (not ((_ is Nil!56822) (++!12390 testedP!110 testedSuffix!70))))))

(declare-fun b!4934822 () Bool)

(assert (=> b!4934822 (= e!3083339 (isPrefix!5023 (tail!9701 testedP!110) (tail!9701 (++!12390 testedP!110 testedSuffix!70))))))

(assert (= (and d!1588540 (not res!2106106)) b!4934820))

(assert (= (and b!4934820 res!2106103) b!4934821))

(assert (= (and b!4934821 res!2106104) b!4934822))

(assert (= (and d!1588540 (not res!2106105)) b!4934823))

(assert (=> b!4934821 m!5955344))

(assert (=> b!4934821 m!5955064))

(declare-fun m!5955800 () Bool)

(assert (=> b!4934821 m!5955800))

(assert (=> b!4934823 m!5955064))

(declare-fun m!5955802 () Bool)

(assert (=> b!4934823 m!5955802))

(assert (=> b!4934823 m!5955028))

(assert (=> b!4934822 m!5955346))

(assert (=> b!4934822 m!5955064))

(declare-fun m!5955804 () Bool)

(assert (=> b!4934822 m!5955804))

(assert (=> b!4934822 m!5955346))

(assert (=> b!4934822 m!5955804))

(declare-fun m!5955806 () Bool)

(assert (=> b!4934822 m!5955806))

(assert (=> d!1588366 d!1588540))

(assert (=> d!1588366 d!1588334))

(declare-fun d!1588542 () Bool)

(assert (=> d!1588542 (isPrefix!5023 testedP!110 (++!12390 testedP!110 testedSuffix!70))))

(assert (=> d!1588542 true))

(declare-fun _$46!1888 () Unit!147497)

(assert (=> d!1588542 (= (choose!36234 testedP!110 testedSuffix!70) _$46!1888)))

(declare-fun bs!1180629 () Bool)

(assert (= bs!1180629 d!1588542))

(assert (=> bs!1180629 m!5955064))

(assert (=> bs!1180629 m!5955064))

(assert (=> bs!1180629 m!5955370))

(assert (=> d!1588366 d!1588542))

(assert (=> bm!344266 d!1588378))

(declare-fun b!4934834 () Bool)

(declare-fun e!3083347 () List!56946)

(assert (=> b!4934834 (= e!3083347 (Cons!56822 lt!2032310 Nil!56822))))

(declare-fun lt!2032593 () List!56946)

(declare-fun b!4934837 () Bool)

(declare-fun e!3083348 () Bool)

(assert (=> b!4934837 (= e!3083348 (or (not (= (Cons!56822 lt!2032310 Nil!56822) Nil!56822)) (= lt!2032593 (t!367426 testedP!110))))))

(declare-fun b!4934835 () Bool)

(assert (=> b!4934835 (= e!3083347 (Cons!56822 (h!63270 (t!367426 testedP!110)) (++!12390 (t!367426 (t!367426 testedP!110)) (Cons!56822 lt!2032310 Nil!56822))))))

(declare-fun d!1588544 () Bool)

(assert (=> d!1588544 e!3083348))

(declare-fun res!2106110 () Bool)

(assert (=> d!1588544 (=> (not res!2106110) (not e!3083348))))

(assert (=> d!1588544 (= res!2106110 (= (content!10099 lt!2032593) ((_ map or) (content!10099 (t!367426 testedP!110)) (content!10099 (Cons!56822 lt!2032310 Nil!56822)))))))

(assert (=> d!1588544 (= lt!2032593 e!3083347)))

(declare-fun c!841136 () Bool)

(assert (=> d!1588544 (= c!841136 ((_ is Nil!56822) (t!367426 testedP!110)))))

(assert (=> d!1588544 (= (++!12390 (t!367426 testedP!110) (Cons!56822 lt!2032310 Nil!56822)) lt!2032593)))

(declare-fun b!4934836 () Bool)

(declare-fun res!2106109 () Bool)

(assert (=> b!4934836 (=> (not res!2106109) (not e!3083348))))

(assert (=> b!4934836 (= res!2106109 (= (size!37632 lt!2032593) (+ (size!37632 (t!367426 testedP!110)) (size!37632 (Cons!56822 lt!2032310 Nil!56822)))))))

(assert (= (and d!1588544 c!841136) b!4934834))

(assert (= (and d!1588544 (not c!841136)) b!4934835))

(assert (= (and d!1588544 res!2106110) b!4934836))

(assert (= (and b!4934836 res!2106109) b!4934837))

(declare-fun m!5955808 () Bool)

(assert (=> b!4934835 m!5955808))

(declare-fun m!5955810 () Bool)

(assert (=> d!1588544 m!5955810))

(assert (=> d!1588544 m!5955746))

(assert (=> d!1588544 m!5955218))

(declare-fun m!5955812 () Bool)

(assert (=> b!4934836 m!5955812))

(assert (=> b!4934836 m!5955392))

(assert (=> b!4934836 m!5955222))

(assert (=> b!4934385 d!1588544))

(declare-fun b!4934843 () Bool)

(declare-fun res!2106112 () Bool)

(declare-fun e!3083352 () Bool)

(assert (=> b!4934843 (=> (not res!2106112) (not e!3083352))))

(assert (=> b!4934843 (= res!2106112 (= (head!10562 (tail!9701 testedP!110)) (head!10562 (tail!9701 lt!2032323))))))

(declare-fun d!1588546 () Bool)

(declare-fun e!3083351 () Bool)

(assert (=> d!1588546 e!3083351))

(declare-fun res!2106113 () Bool)

(assert (=> d!1588546 (=> res!2106113 e!3083351)))

(declare-fun lt!2032594 () Bool)

(assert (=> d!1588546 (= res!2106113 (not lt!2032594))))

(declare-fun e!3083353 () Bool)

(assert (=> d!1588546 (= lt!2032594 e!3083353)))

(declare-fun res!2106114 () Bool)

(assert (=> d!1588546 (=> res!2106114 e!3083353)))

(assert (=> d!1588546 (= res!2106114 ((_ is Nil!56822) (tail!9701 testedP!110)))))

(assert (=> d!1588546 (= (isPrefix!5023 (tail!9701 testedP!110) (tail!9701 lt!2032323)) lt!2032594)))

(declare-fun b!4934845 () Bool)

(assert (=> b!4934845 (= e!3083351 (>= (size!37632 (tail!9701 lt!2032323)) (size!37632 (tail!9701 testedP!110))))))

(declare-fun b!4934842 () Bool)

(assert (=> b!4934842 (= e!3083353 e!3083352)))

(declare-fun res!2106111 () Bool)

(assert (=> b!4934842 (=> (not res!2106111) (not e!3083352))))

(assert (=> b!4934842 (= res!2106111 (not ((_ is Nil!56822) (tail!9701 lt!2032323))))))

(declare-fun b!4934844 () Bool)

(assert (=> b!4934844 (= e!3083352 (isPrefix!5023 (tail!9701 (tail!9701 testedP!110)) (tail!9701 (tail!9701 lt!2032323))))))

(assert (= (and d!1588546 (not res!2106114)) b!4934842))

(assert (= (and b!4934842 res!2106111) b!4934843))

(assert (= (and b!4934843 res!2106112) b!4934844))

(assert (= (and d!1588546 (not res!2106113)) b!4934845))

(assert (=> b!4934843 m!5955346))

(assert (=> b!4934843 m!5955486))

(assert (=> b!4934843 m!5955362))

(declare-fun m!5955814 () Bool)

(assert (=> b!4934843 m!5955814))

(assert (=> b!4934845 m!5955362))

(declare-fun m!5955816 () Bool)

(assert (=> b!4934845 m!5955816))

(assert (=> b!4934845 m!5955346))

(assert (=> b!4934845 m!5955492))

(assert (=> b!4934844 m!5955346))

(assert (=> b!4934844 m!5955494))

(assert (=> b!4934844 m!5955362))

(declare-fun m!5955818 () Bool)

(assert (=> b!4934844 m!5955818))

(assert (=> b!4934844 m!5955494))

(assert (=> b!4934844 m!5955818))

(declare-fun m!5955820 () Bool)

(assert (=> b!4934844 m!5955820))

(assert (=> b!4934469 d!1588546))

(assert (=> b!4934469 d!1588412))

(declare-fun d!1588548 () Bool)

(assert (=> d!1588548 (= (tail!9701 lt!2032323) (t!367426 lt!2032323))))

(assert (=> b!4934469 d!1588548))

(assert (=> b!4934295 d!1588378))

(declare-fun bs!1180630 () Bool)

(declare-fun d!1588550 () Bool)

(assert (= bs!1180630 (and d!1588550 d!1588370)))

(declare-fun lambda!245784 () Int)

(assert (=> bs!1180630 (= lambda!245784 lambda!245767)))

(assert (=> d!1588550 (= (inv!73816 setElem!27767) (forall!13186 (exprs!3567 setElem!27767) lambda!245784))))

(declare-fun bs!1180631 () Bool)

(assert (= bs!1180631 d!1588550))

(declare-fun m!5955822 () Bool)

(assert (=> bs!1180631 m!5955822))

(assert (=> setNonEmpty!27767 d!1588550))

(declare-fun d!1588552 () Bool)

(declare-fun c!841139 () Bool)

(assert (=> d!1588552 (= c!841139 ((_ is Nil!56822) lt!2032461))))

(declare-fun e!3083354 () (InoxSet C!27080))

(assert (=> d!1588552 (= (content!10099 lt!2032461) e!3083354)))

(declare-fun b!4934846 () Bool)

(assert (=> b!4934846 (= e!3083354 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934847 () Bool)

(assert (=> b!4934847 (= e!3083354 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032461) true) (content!10099 (t!367426 lt!2032461))))))

(assert (= (and d!1588552 c!841139) b!4934846))

(assert (= (and d!1588552 (not c!841139)) b!4934847))

(declare-fun m!5955824 () Bool)

(assert (=> b!4934847 m!5955824))

(declare-fun m!5955826 () Bool)

(assert (=> b!4934847 m!5955826))

(assert (=> d!1588342 d!1588552))

(declare-fun d!1588554 () Bool)

(declare-fun c!841140 () Bool)

(assert (=> d!1588554 (= c!841140 ((_ is Nil!56822) lt!2032317))))

(declare-fun e!3083355 () (InoxSet C!27080))

(assert (=> d!1588554 (= (content!10099 lt!2032317) e!3083355)))

(declare-fun b!4934848 () Bool)

(assert (=> b!4934848 (= e!3083355 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934849 () Bool)

(assert (=> b!4934849 (= e!3083355 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032317) true) (content!10099 (t!367426 lt!2032317))))))

(assert (= (and d!1588554 c!841140) b!4934848))

(assert (= (and d!1588554 (not c!841140)) b!4934849))

(declare-fun m!5955828 () Bool)

(assert (=> b!4934849 m!5955828))

(declare-fun m!5955830 () Bool)

(assert (=> b!4934849 m!5955830))

(assert (=> d!1588342 d!1588554))

(declare-fun d!1588556 () Bool)

(declare-fun c!841141 () Bool)

(assert (=> d!1588556 (= c!841141 ((_ is Nil!56822) lt!2032318))))

(declare-fun e!3083356 () (InoxSet C!27080))

(assert (=> d!1588556 (= (content!10099 lt!2032318) e!3083356)))

(declare-fun b!4934850 () Bool)

(assert (=> b!4934850 (= e!3083356 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934851 () Bool)

(assert (=> b!4934851 (= e!3083356 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032318) true) (content!10099 (t!367426 lt!2032318))))))

(assert (= (and d!1588556 c!841141) b!4934850))

(assert (= (and d!1588556 (not c!841141)) b!4934851))

(declare-fun m!5955832 () Bool)

(assert (=> b!4934851 m!5955832))

(declare-fun m!5955834 () Bool)

(assert (=> b!4934851 m!5955834))

(assert (=> d!1588342 d!1588556))

(declare-fun d!1588558 () Bool)

(assert (=> d!1588558 (= (head!10562 lt!2032314) (h!63270 lt!2032314))))

(assert (=> b!4934309 d!1588558))

(declare-fun b!4934852 () Bool)

(declare-fun e!3083360 () Int)

(declare-fun call!344295 () Int)

(assert (=> b!4934852 (= e!3083360 call!344295)))

(declare-fun b!4934853 () Bool)

(declare-fun e!3083357 () Bool)

(declare-fun lt!2032595 () List!56946)

(assert (=> b!4934853 (= e!3083357 (= (size!37632 lt!2032595) e!3083360))))

(declare-fun c!841142 () Bool)

(assert (=> b!4934853 (= c!841142 (<= (- testedPSize!70 1) 0))))

(declare-fun b!4934854 () Bool)

(declare-fun e!3083358 () Int)

(assert (=> b!4934854 (= e!3083358 0)))

(declare-fun b!4934855 () Bool)

(assert (=> b!4934855 (= e!3083358 (- call!344295 (- testedPSize!70 1)))))

(declare-fun b!4934856 () Bool)

(assert (=> b!4934856 (= e!3083360 e!3083358)))

(declare-fun c!841144 () Bool)

(assert (=> b!4934856 (= c!841144 (>= (- testedPSize!70 1) call!344295))))

(declare-fun bm!344290 () Bool)

(assert (=> bm!344290 (= call!344295 (size!37632 (t!367426 lt!2032314)))))

(declare-fun b!4934857 () Bool)

(declare-fun e!3083359 () List!56946)

(declare-fun e!3083361 () List!56946)

(assert (=> b!4934857 (= e!3083359 e!3083361)))

(declare-fun c!841143 () Bool)

(assert (=> b!4934857 (= c!841143 (<= (- testedPSize!70 1) 0))))

(declare-fun d!1588560 () Bool)

(assert (=> d!1588560 e!3083357))

(declare-fun res!2106115 () Bool)

(assert (=> d!1588560 (=> (not res!2106115) (not e!3083357))))

(assert (=> d!1588560 (= res!2106115 (= ((_ map implies) (content!10099 lt!2032595) (content!10099 (t!367426 lt!2032314))) ((as const (InoxSet C!27080)) true)))))

(assert (=> d!1588560 (= lt!2032595 e!3083359)))

(declare-fun c!841145 () Bool)

(assert (=> d!1588560 (= c!841145 ((_ is Nil!56822) (t!367426 lt!2032314)))))

(assert (=> d!1588560 (= (drop!2256 (t!367426 lt!2032314) (- testedPSize!70 1)) lt!2032595)))

(declare-fun b!4934858 () Bool)

(assert (=> b!4934858 (= e!3083361 (t!367426 lt!2032314))))

(declare-fun b!4934859 () Bool)

(assert (=> b!4934859 (= e!3083361 (drop!2256 (t!367426 (t!367426 lt!2032314)) (- (- testedPSize!70 1) 1)))))

(declare-fun b!4934860 () Bool)

(assert (=> b!4934860 (= e!3083359 Nil!56822)))

(assert (= (and d!1588560 c!841145) b!4934860))

(assert (= (and d!1588560 (not c!841145)) b!4934857))

(assert (= (and b!4934857 c!841143) b!4934858))

(assert (= (and b!4934857 (not c!841143)) b!4934859))

(assert (= (and d!1588560 res!2106115) b!4934853))

(assert (= (and b!4934853 c!841142) b!4934852))

(assert (= (and b!4934853 (not c!841142)) b!4934856))

(assert (= (and b!4934856 c!841144) b!4934854))

(assert (= (and b!4934856 (not c!841144)) b!4934855))

(assert (= (or b!4934852 b!4934856 b!4934855) bm!344290))

(declare-fun m!5955836 () Bool)

(assert (=> b!4934853 m!5955836))

(assert (=> bm!344290 m!5955386))

(declare-fun m!5955838 () Bool)

(assert (=> d!1588560 m!5955838))

(assert (=> d!1588560 m!5955764))

(declare-fun m!5955840 () Bool)

(assert (=> b!4934859 m!5955840))

(assert (=> b!4934291 d!1588560))

(declare-fun d!1588562 () Bool)

(assert (=> d!1588562 (= (list!18044 (_1!33962 lt!2032470)) (list!18046 (c!840959 (_1!33962 lt!2032470))))))

(declare-fun bs!1180632 () Bool)

(assert (= bs!1180632 d!1588562))

(declare-fun m!5955842 () Bool)

(assert (=> bs!1180632 m!5955842))

(assert (=> b!4934447 d!1588562))

(declare-fun d!1588564 () Bool)

(assert (=> d!1588564 (= (list!18044 (_2!33962 lt!2032470)) (list!18046 (c!840959 (_2!33962 lt!2032470))))))

(declare-fun bs!1180633 () Bool)

(assert (= bs!1180633 d!1588564))

(declare-fun m!5955844 () Bool)

(assert (=> bs!1180633 m!5955844))

(assert (=> b!4934447 d!1588564))

(declare-fun d!1588566 () Bool)

(declare-fun e!3083378 () Bool)

(assert (=> d!1588566 e!3083378))

(declare-fun res!2106139 () Bool)

(assert (=> d!1588566 (=> (not res!2106139) (not e!3083378))))

(declare-fun lt!2032603 () tuple2!61326)

(assert (=> d!1588566 (= res!2106139 (= (++!12390 (_1!33966 lt!2032603) (_2!33966 lt!2032603)) (list!18044 totalInput!685)))))

(declare-fun e!3083379 () tuple2!61326)

(assert (=> d!1588566 (= lt!2032603 e!3083379)))

(declare-fun c!841154 () Bool)

(assert (=> d!1588566 (= c!841154 ((_ is Nil!56822) (list!18044 totalInput!685)))))

(assert (=> d!1588566 (= (splitAtIndex!121 (list!18044 totalInput!685) testedPSize!70) lt!2032603)))

(declare-fun b!4934898 () Bool)

(declare-fun e!3083380 () tuple2!61326)

(assert (=> b!4934898 (= e!3083380 (tuple2!61327 Nil!56822 (list!18044 totalInput!685)))))

(declare-fun b!4934899 () Bool)

(declare-fun lt!2032602 () tuple2!61326)

(assert (=> b!4934899 (= lt!2032602 (splitAtIndex!121 (t!367426 (list!18044 totalInput!685)) (- testedPSize!70 1)))))

(assert (=> b!4934899 (= e!3083380 (tuple2!61327 (Cons!56822 (h!63270 (list!18044 totalInput!685)) (_1!33966 lt!2032602)) (_2!33966 lt!2032602)))))

(declare-fun b!4934900 () Bool)

(declare-fun res!2106140 () Bool)

(assert (=> b!4934900 (=> (not res!2106140) (not e!3083378))))

(declare-fun take!582 (List!56946 Int) List!56946)

(assert (=> b!4934900 (= res!2106140 (= (_1!33966 lt!2032603) (take!582 (list!18044 totalInput!685) testedPSize!70)))))

(declare-fun b!4934901 () Bool)

(assert (=> b!4934901 (= e!3083379 e!3083380)))

(declare-fun c!841153 () Bool)

(assert (=> b!4934901 (= c!841153 (<= testedPSize!70 0))))

(declare-fun b!4934902 () Bool)

(assert (=> b!4934902 (= e!3083378 (= (_2!33966 lt!2032603) (drop!2256 (list!18044 totalInput!685) testedPSize!70)))))

(declare-fun b!4934903 () Bool)

(assert (=> b!4934903 (= e!3083379 (tuple2!61327 Nil!56822 Nil!56822))))

(assert (= (and d!1588566 c!841154) b!4934903))

(assert (= (and d!1588566 (not c!841154)) b!4934901))

(assert (= (and b!4934901 c!841153) b!4934898))

(assert (= (and b!4934901 (not c!841153)) b!4934899))

(assert (= (and d!1588566 res!2106139) b!4934900))

(assert (= (and b!4934900 res!2106140) b!4934902))

(declare-fun m!5955870 () Bool)

(assert (=> d!1588566 m!5955870))

(declare-fun m!5955872 () Bool)

(assert (=> b!4934899 m!5955872))

(assert (=> b!4934900 m!5955062))

(declare-fun m!5955874 () Bool)

(assert (=> b!4934900 m!5955874))

(assert (=> b!4934902 m!5955062))

(declare-fun m!5955876 () Bool)

(assert (=> b!4934902 m!5955876))

(assert (=> b!4934447 d!1588566))

(assert (=> b!4934447 d!1588328))

(declare-fun b!4934905 () Bool)

(declare-fun res!2106142 () Bool)

(declare-fun e!3083382 () Bool)

(assert (=> b!4934905 (=> (not res!2106142) (not e!3083382))))

(assert (=> b!4934905 (= res!2106142 (= (head!10562 (tail!9701 lt!2032314)) (head!10562 (tail!9701 lt!2032314))))))

(declare-fun d!1588572 () Bool)

(declare-fun e!3083381 () Bool)

(assert (=> d!1588572 e!3083381))

(declare-fun res!2106143 () Bool)

(assert (=> d!1588572 (=> res!2106143 e!3083381)))

(declare-fun lt!2032604 () Bool)

(assert (=> d!1588572 (= res!2106143 (not lt!2032604))))

(declare-fun e!3083383 () Bool)

(assert (=> d!1588572 (= lt!2032604 e!3083383)))

(declare-fun res!2106144 () Bool)

(assert (=> d!1588572 (=> res!2106144 e!3083383)))

(assert (=> d!1588572 (= res!2106144 ((_ is Nil!56822) (tail!9701 lt!2032314)))))

(assert (=> d!1588572 (= (isPrefix!5023 (tail!9701 lt!2032314) (tail!9701 lt!2032314)) lt!2032604)))

(declare-fun b!4934907 () Bool)

(assert (=> b!4934907 (= e!3083381 (>= (size!37632 (tail!9701 lt!2032314)) (size!37632 (tail!9701 lt!2032314))))))

(declare-fun b!4934904 () Bool)

(assert (=> b!4934904 (= e!3083383 e!3083382)))

(declare-fun res!2106141 () Bool)

(assert (=> b!4934904 (=> (not res!2106141) (not e!3083382))))

(assert (=> b!4934904 (= res!2106141 (not ((_ is Nil!56822) (tail!9701 lt!2032314))))))

(declare-fun b!4934906 () Bool)

(assert (=> b!4934906 (= e!3083382 (isPrefix!5023 (tail!9701 (tail!9701 lt!2032314)) (tail!9701 (tail!9701 lt!2032314))))))

(assert (= (and d!1588572 (not res!2106144)) b!4934904))

(assert (= (and b!4934904 res!2106141) b!4934905))

(assert (= (and b!4934905 res!2106142) b!4934906))

(assert (= (and d!1588572 (not res!2106143)) b!4934907))

(assert (=> b!4934905 m!5955102))

(assert (=> b!4934905 m!5955488))

(assert (=> b!4934905 m!5955102))

(assert (=> b!4934905 m!5955488))

(assert (=> b!4934907 m!5955102))

(assert (=> b!4934907 m!5955490))

(assert (=> b!4934907 m!5955102))

(assert (=> b!4934907 m!5955490))

(assert (=> b!4934906 m!5955102))

(assert (=> b!4934906 m!5955496))

(assert (=> b!4934906 m!5955102))

(assert (=> b!4934906 m!5955496))

(assert (=> b!4934906 m!5955496))

(assert (=> b!4934906 m!5955496))

(declare-fun m!5955878 () Bool)

(assert (=> b!4934906 m!5955878))

(assert (=> b!4934412 d!1588572))

(assert (=> b!4934412 d!1588414))

(declare-fun d!1588574 () Bool)

(declare-fun lt!2032605 () Int)

(assert (=> d!1588574 (>= lt!2032605 0)))

(declare-fun e!3083384 () Int)

(assert (=> d!1588574 (= lt!2032605 e!3083384)))

(declare-fun c!841155 () Bool)

(assert (=> d!1588574 (= c!841155 ((_ is Nil!56822) (t!367426 lt!2032314)))))

(assert (=> d!1588574 (= (size!37632 (t!367426 lt!2032314)) lt!2032605)))

(declare-fun b!4934908 () Bool)

(assert (=> b!4934908 (= e!3083384 0)))

(declare-fun b!4934909 () Bool)

(assert (=> b!4934909 (= e!3083384 (+ 1 (size!37632 (t!367426 (t!367426 lt!2032314)))))))

(assert (= (and d!1588574 c!841155) b!4934908))

(assert (= (and d!1588574 (not c!841155)) b!4934909))

(declare-fun m!5955880 () Bool)

(assert (=> b!4934909 m!5955880))

(assert (=> b!4934483 d!1588574))

(assert (=> d!1588318 d!1588322))

(declare-fun d!1588576 () Bool)

(assert (=> d!1588576 (isPrefix!5023 lt!2032314 lt!2032314)))

(assert (=> d!1588576 true))

(declare-fun _$45!2230 () Unit!147497)

(assert (=> d!1588576 (= (choose!36230 lt!2032314 lt!2032314) _$45!2230)))

(declare-fun bs!1180634 () Bool)

(assert (= bs!1180634 d!1588576))

(assert (=> bs!1180634 m!5955008))

(assert (=> d!1588318 d!1588576))

(declare-fun b!4934910 () Bool)

(declare-fun e!3083385 () List!56946)

(assert (=> b!4934910 (= e!3083385 testedSuffix!70)))

(declare-fun lt!2032606 () List!56946)

(declare-fun e!3083386 () Bool)

(declare-fun b!4934913 () Bool)

(assert (=> b!4934913 (= e!3083386 (or (not (= testedSuffix!70 Nil!56822)) (= lt!2032606 (t!367426 testedP!110))))))

(declare-fun b!4934911 () Bool)

(assert (=> b!4934911 (= e!3083385 (Cons!56822 (h!63270 (t!367426 testedP!110)) (++!12390 (t!367426 (t!367426 testedP!110)) testedSuffix!70)))))

(declare-fun d!1588578 () Bool)

(assert (=> d!1588578 e!3083386))

(declare-fun res!2106146 () Bool)

(assert (=> d!1588578 (=> (not res!2106146) (not e!3083386))))

(assert (=> d!1588578 (= res!2106146 (= (content!10099 lt!2032606) ((_ map or) (content!10099 (t!367426 testedP!110)) (content!10099 testedSuffix!70))))))

(assert (=> d!1588578 (= lt!2032606 e!3083385)))

(declare-fun c!841156 () Bool)

(assert (=> d!1588578 (= c!841156 ((_ is Nil!56822) (t!367426 testedP!110)))))

(assert (=> d!1588578 (= (++!12390 (t!367426 testedP!110) testedSuffix!70) lt!2032606)))

(declare-fun b!4934912 () Bool)

(declare-fun res!2106145 () Bool)

(assert (=> b!4934912 (=> (not res!2106145) (not e!3083386))))

(assert (=> b!4934912 (= res!2106145 (= (size!37632 lt!2032606) (+ (size!37632 (t!367426 testedP!110)) (size!37632 testedSuffix!70))))))

(assert (= (and d!1588578 c!841156) b!4934910))

(assert (= (and d!1588578 (not c!841156)) b!4934911))

(assert (= (and d!1588578 res!2106146) b!4934912))

(assert (= (and b!4934912 res!2106145) b!4934913))

(declare-fun m!5955882 () Bool)

(assert (=> b!4934911 m!5955882))

(declare-fun m!5955884 () Bool)

(assert (=> d!1588578 m!5955884))

(assert (=> d!1588578 m!5955746))

(assert (=> d!1588578 m!5955266))

(declare-fun m!5955886 () Bool)

(assert (=> b!4934912 m!5955886))

(assert (=> b!4934912 m!5955392))

(assert (=> b!4934912 m!5955270))

(assert (=> b!4934419 d!1588578))

(declare-fun b!4934914 () Bool)

(declare-fun e!3083387 () List!56946)

(assert (=> b!4934914 (= e!3083387 lt!2032365)))

(declare-fun lt!2032607 () List!56946)

(declare-fun e!3083388 () Bool)

(declare-fun b!4934917 () Bool)

(assert (=> b!4934917 (= e!3083388 (or (not (= lt!2032365 Nil!56822)) (= lt!2032607 testedP!110)))))

(declare-fun b!4934915 () Bool)

(assert (=> b!4934915 (= e!3083387 (Cons!56822 (h!63270 testedP!110) (++!12390 (t!367426 testedP!110) lt!2032365)))))

(declare-fun d!1588580 () Bool)

(assert (=> d!1588580 e!3083388))

(declare-fun res!2106148 () Bool)

(assert (=> d!1588580 (=> (not res!2106148) (not e!3083388))))

(assert (=> d!1588580 (= res!2106148 (= (content!10099 lt!2032607) ((_ map or) (content!10099 testedP!110) (content!10099 lt!2032365))))))

(assert (=> d!1588580 (= lt!2032607 e!3083387)))

(declare-fun c!841157 () Bool)

(assert (=> d!1588580 (= c!841157 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588580 (= (++!12390 testedP!110 lt!2032365) lt!2032607)))

(declare-fun b!4934916 () Bool)

(declare-fun res!2106147 () Bool)

(assert (=> b!4934916 (=> (not res!2106147) (not e!3083388))))

(assert (=> b!4934916 (= res!2106147 (= (size!37632 lt!2032607) (+ (size!37632 testedP!110) (size!37632 lt!2032365))))))

(assert (= (and d!1588580 c!841157) b!4934914))

(assert (= (and d!1588580 (not c!841157)) b!4934915))

(assert (= (and d!1588580 res!2106148) b!4934916))

(assert (= (and b!4934916 res!2106147) b!4934917))

(declare-fun m!5955888 () Bool)

(assert (=> b!4934915 m!5955888))

(declare-fun m!5955890 () Bool)

(assert (=> d!1588580 m!5955890))

(assert (=> d!1588580 m!5955196))

(declare-fun m!5955892 () Bool)

(assert (=> d!1588580 m!5955892))

(declare-fun m!5955894 () Bool)

(assert (=> b!4934916 m!5955894))

(assert (=> b!4934916 m!5955028))

(declare-fun m!5955896 () Bool)

(assert (=> b!4934916 m!5955896))

(assert (=> d!1588254 d!1588580))

(assert (=> d!1588254 d!1588378))

(assert (=> d!1588254 d!1588384))

(declare-fun d!1588582 () Bool)

(declare-fun lt!2032608 () Int)

(assert (=> d!1588582 (>= lt!2032608 0)))

(declare-fun e!3083389 () Int)

(assert (=> d!1588582 (= lt!2032608 e!3083389)))

(declare-fun c!841158 () Bool)

(assert (=> d!1588582 (= c!841158 ((_ is Nil!56822) (t!367426 lt!2032311)))))

(assert (=> d!1588582 (= (size!37632 (t!367426 lt!2032311)) lt!2032608)))

(declare-fun b!4934918 () Bool)

(assert (=> b!4934918 (= e!3083389 0)))

(declare-fun b!4934919 () Bool)

(assert (=> b!4934919 (= e!3083389 (+ 1 (size!37632 (t!367426 (t!367426 lt!2032311)))))))

(assert (= (and d!1588582 c!841158) b!4934918))

(assert (= (and d!1588582 (not c!841158)) b!4934919))

(declare-fun m!5955898 () Bool)

(assert (=> b!4934919 m!5955898))

(assert (=> b!4934401 d!1588582))

(assert (=> b!4934322 d!1588314))

(assert (=> b!4934247 d!1588360))

(declare-fun d!1588584 () Bool)

(declare-fun c!841159 () Bool)

(assert (=> d!1588584 (= c!841159 ((_ is Nil!56822) lt!2032420))))

(declare-fun e!3083390 () (InoxSet C!27080))

(assert (=> d!1588584 (= (content!10099 lt!2032420) e!3083390)))

(declare-fun b!4934920 () Bool)

(assert (=> b!4934920 (= e!3083390 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934921 () Bool)

(assert (=> b!4934921 (= e!3083390 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032420) true) (content!10099 (t!367426 lt!2032420))))))

(assert (= (and d!1588584 c!841159) b!4934920))

(assert (= (and d!1588584 (not c!841159)) b!4934921))

(declare-fun m!5955900 () Bool)

(assert (=> b!4934921 m!5955900))

(declare-fun m!5955902 () Bool)

(assert (=> b!4934921 m!5955902))

(assert (=> d!1588290 d!1588584))

(declare-fun d!1588586 () Bool)

(declare-fun c!841160 () Bool)

(assert (=> d!1588586 (= c!841160 ((_ is Nil!56822) lt!2032311))))

(declare-fun e!3083391 () (InoxSet C!27080))

(assert (=> d!1588586 (= (content!10099 lt!2032311) e!3083391)))

(declare-fun b!4934922 () Bool)

(assert (=> b!4934922 (= e!3083391 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934923 () Bool)

(assert (=> b!4934923 (= e!3083391 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032311) true) (content!10099 (t!367426 lt!2032311))))))

(assert (= (and d!1588586 c!841160) b!4934922))

(assert (= (and d!1588586 (not c!841160)) b!4934923))

(declare-fun m!5955904 () Bool)

(assert (=> b!4934923 m!5955904))

(declare-fun m!5955906 () Bool)

(assert (=> b!4934923 m!5955906))

(assert (=> d!1588290 d!1588586))

(declare-fun d!1588588 () Bool)

(declare-fun c!841161 () Bool)

(assert (=> d!1588588 (= c!841161 ((_ is Nil!56822) lt!2032315))))

(declare-fun e!3083392 () (InoxSet C!27080))

(assert (=> d!1588588 (= (content!10099 lt!2032315) e!3083392)))

(declare-fun b!4934924 () Bool)

(assert (=> b!4934924 (= e!3083392 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934925 () Bool)

(assert (=> b!4934925 (= e!3083392 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032315) true) (content!10099 (t!367426 lt!2032315))))))

(assert (= (and d!1588588 c!841161) b!4934924))

(assert (= (and d!1588588 (not c!841161)) b!4934925))

(declare-fun m!5955908 () Bool)

(assert (=> b!4934925 m!5955908))

(declare-fun m!5955910 () Bool)

(assert (=> b!4934925 m!5955910))

(assert (=> d!1588290 d!1588588))

(declare-fun bs!1180635 () Bool)

(declare-fun d!1588590 () Bool)

(assert (= bs!1180635 (and d!1588590 b!4934256)))

(declare-fun lambda!245787 () Int)

(assert (=> bs!1180635 (not (= lambda!245787 lambda!245742))))

(declare-fun bs!1180636 () Bool)

(assert (= bs!1180636 (and d!1588590 d!1588248)))

(assert (=> bs!1180636 (not (= lambda!245787 lambda!245741))))

(declare-fun bs!1180637 () Bool)

(assert (= bs!1180637 (and d!1588590 b!4934257)))

(assert (=> bs!1180637 (not (= lambda!245787 lambda!245743))))

(declare-fun bs!1180638 () Bool)

(assert (= bs!1180638 (and d!1588590 d!1588408)))

(assert (=> bs!1180638 (= (= lambda!245741 (ite c!840975 lambda!245742 lambda!245743)) (= lambda!245787 lambda!245773))))

(declare-fun bs!1180639 () Bool)

(assert (= bs!1180639 (and d!1588590 d!1588282)))

(assert (=> bs!1180639 (not (= lambda!245787 lambda!245761))))

(assert (=> d!1588590 true))

(assert (=> d!1588590 (< (dynLambda!23015 order!25983 lambda!245741) (dynLambda!23015 order!25983 lambda!245787))))

(assert (=> d!1588590 (exists!1275 lt!2032352 lambda!245787)))

(declare-fun lt!2032611 () Unit!147497)

(declare-fun choose!36240 (List!56948 Int) Unit!147497)

(assert (=> d!1588590 (= lt!2032611 (choose!36240 lt!2032352 lambda!245741))))

(assert (=> d!1588590 (not (forall!13187 lt!2032352 lambda!245741))))

(assert (=> d!1588590 (= (lemmaNotForallThenExists!202 lt!2032352 lambda!245741) lt!2032611)))

(declare-fun bs!1180640 () Bool)

(assert (= bs!1180640 d!1588590))

(declare-fun m!5955912 () Bool)

(assert (=> bs!1180640 m!5955912))

(declare-fun m!5955914 () Bool)

(assert (=> bs!1180640 m!5955914))

(declare-fun m!5955916 () Bool)

(assert (=> bs!1180640 m!5955916))

(assert (=> b!4934256 d!1588590))

(declare-fun d!1588592 () Bool)

(declare-fun c!841162 () Bool)

(assert (=> d!1588592 (= c!841162 ((_ is Nil!56822) lt!2032421))))

(declare-fun e!3083395 () (InoxSet C!27080))

(assert (=> d!1588592 (= (content!10099 lt!2032421) e!3083395)))

(declare-fun b!4934926 () Bool)

(assert (=> b!4934926 (= e!3083395 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934927 () Bool)

(assert (=> b!4934927 (= e!3083395 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032421) true) (content!10099 (t!367426 lt!2032421))))))

(assert (= (and d!1588592 c!841162) b!4934926))

(assert (= (and d!1588592 (not c!841162)) b!4934927))

(declare-fun m!5955918 () Bool)

(assert (=> b!4934927 m!5955918))

(declare-fun m!5955920 () Bool)

(assert (=> b!4934927 m!5955920))

(assert (=> d!1588296 d!1588592))

(declare-fun d!1588594 () Bool)

(declare-fun c!841163 () Bool)

(assert (=> d!1588594 (= c!841163 ((_ is Nil!56822) testedP!110))))

(declare-fun e!3083396 () (InoxSet C!27080))

(assert (=> d!1588594 (= (content!10099 testedP!110) e!3083396)))

(declare-fun b!4934928 () Bool)

(assert (=> b!4934928 (= e!3083396 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934929 () Bool)

(assert (=> b!4934929 (= e!3083396 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 testedP!110) true) (content!10099 (t!367426 testedP!110))))))

(assert (= (and d!1588594 c!841163) b!4934928))

(assert (= (and d!1588594 (not c!841163)) b!4934929))

(declare-fun m!5955922 () Bool)

(assert (=> b!4934929 m!5955922))

(assert (=> b!4934929 m!5955746))

(assert (=> d!1588296 d!1588594))

(declare-fun d!1588596 () Bool)

(declare-fun c!841164 () Bool)

(assert (=> d!1588596 (= c!841164 ((_ is Nil!56822) (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))

(declare-fun e!3083397 () (InoxSet C!27080))

(assert (=> d!1588596 (= (content!10099 (Cons!56822 (head!10562 lt!2032312) Nil!56822)) e!3083397)))

(declare-fun b!4934930 () Bool)

(assert (=> b!4934930 (= e!3083397 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934931 () Bool)

(assert (=> b!4934931 (= e!3083397 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 (Cons!56822 (head!10562 lt!2032312) Nil!56822)) true) (content!10099 (t!367426 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(assert (= (and d!1588596 c!841164) b!4934930))

(assert (= (and d!1588596 (not c!841164)) b!4934931))

(declare-fun m!5955924 () Bool)

(assert (=> b!4934931 m!5955924))

(declare-fun m!5955926 () Bool)

(assert (=> b!4934931 m!5955926))

(assert (=> d!1588296 d!1588596))

(declare-fun b!4934932 () Bool)

(declare-fun e!3083398 () List!56946)

(assert (=> b!4934932 (= e!3083398 lt!2032318)))

(declare-fun b!4934935 () Bool)

(declare-fun lt!2032612 () List!56946)

(declare-fun e!3083399 () Bool)

(assert (=> b!4934935 (= e!3083399 (or (not (= lt!2032318 Nil!56822)) (= lt!2032612 (t!367426 lt!2032317))))))

(declare-fun b!4934933 () Bool)

(assert (=> b!4934933 (= e!3083398 (Cons!56822 (h!63270 (t!367426 lt!2032317)) (++!12390 (t!367426 (t!367426 lt!2032317)) lt!2032318)))))

(declare-fun d!1588598 () Bool)

(assert (=> d!1588598 e!3083399))

(declare-fun res!2106150 () Bool)

(assert (=> d!1588598 (=> (not res!2106150) (not e!3083399))))

(assert (=> d!1588598 (= res!2106150 (= (content!10099 lt!2032612) ((_ map or) (content!10099 (t!367426 lt!2032317)) (content!10099 lt!2032318))))))

(assert (=> d!1588598 (= lt!2032612 e!3083398)))

(declare-fun c!841165 () Bool)

(assert (=> d!1588598 (= c!841165 ((_ is Nil!56822) (t!367426 lt!2032317)))))

(assert (=> d!1588598 (= (++!12390 (t!367426 lt!2032317) lt!2032318) lt!2032612)))

(declare-fun b!4934934 () Bool)

(declare-fun res!2106149 () Bool)

(assert (=> b!4934934 (=> (not res!2106149) (not e!3083399))))

(assert (=> b!4934934 (= res!2106149 (= (size!37632 lt!2032612) (+ (size!37632 (t!367426 lt!2032317)) (size!37632 lt!2032318))))))

(assert (= (and d!1588598 c!841165) b!4934932))

(assert (= (and d!1588598 (not c!841165)) b!4934933))

(assert (= (and d!1588598 res!2106150) b!4934934))

(assert (= (and b!4934934 res!2106149) b!4934935))

(declare-fun m!5955928 () Bool)

(assert (=> b!4934933 m!5955928))

(declare-fun m!5955930 () Bool)

(assert (=> d!1588598 m!5955930))

(assert (=> d!1588598 m!5955830))

(assert (=> d!1588598 m!5955284))

(declare-fun m!5955932 () Bool)

(assert (=> b!4934934 m!5955932))

(declare-fun m!5955934 () Bool)

(assert (=> b!4934934 m!5955934))

(assert (=> b!4934934 m!5955290))

(assert (=> b!4934423 d!1588598))

(assert (=> d!1588380 d!1588384))

(assert (=> d!1588380 d!1588378))

(declare-fun d!1588600 () Bool)

(assert (=> d!1588600 (<= (size!37632 testedP!110) (size!37632 lt!2032314))))

(assert (=> d!1588600 true))

(declare-fun _$64!625 () Unit!147497)

(assert (=> d!1588600 (= (choose!36236 testedP!110 lt!2032314) _$64!625)))

(declare-fun bs!1180641 () Bool)

(assert (= bs!1180641 d!1588600))

(assert (=> bs!1180641 m!5955028))

(assert (=> bs!1180641 m!5955030))

(assert (=> d!1588380 d!1588600))

(assert (=> d!1588380 d!1588362))

(declare-fun d!1588602 () Bool)

(assert (=> d!1588602 (= (head!10562 testedP!110) (h!63270 testedP!110))))

(assert (=> b!4934462 d!1588602))

(assert (=> b!4934462 d!1588558))

(declare-fun b!4934944 () Bool)

(declare-fun e!3083404 () List!56946)

(assert (=> b!4934944 (= e!3083404 Nil!56822)))

(declare-fun d!1588604 () Bool)

(declare-fun c!841170 () Bool)

(assert (=> d!1588604 (= c!841170 ((_ is Empty!14934) (c!840959 (_1!33962 lt!2032308))))))

(assert (=> d!1588604 (= (list!18046 (c!840959 (_1!33962 lt!2032308))) e!3083404)))

(declare-fun b!4934947 () Bool)

(declare-fun e!3083405 () List!56946)

(assert (=> b!4934947 (= e!3083405 (++!12390 (list!18046 (left!41435 (c!840959 (_1!33962 lt!2032308)))) (list!18046 (right!41765 (c!840959 (_1!33962 lt!2032308))))))))

(declare-fun b!4934945 () Bool)

(assert (=> b!4934945 (= e!3083404 e!3083405)))

(declare-fun c!841171 () Bool)

(assert (=> b!4934945 (= c!841171 ((_ is Leaf!24834) (c!840959 (_1!33962 lt!2032308))))))

(declare-fun b!4934946 () Bool)

(assert (=> b!4934946 (= e!3083405 (list!18047 (xs!18258 (c!840959 (_1!33962 lt!2032308)))))))

(assert (= (and d!1588604 c!841170) b!4934944))

(assert (= (and d!1588604 (not c!841170)) b!4934945))

(assert (= (and b!4934945 c!841171) b!4934946))

(assert (= (and b!4934945 (not c!841171)) b!4934947))

(declare-fun m!5955936 () Bool)

(assert (=> b!4934947 m!5955936))

(declare-fun m!5955938 () Bool)

(assert (=> b!4934947 m!5955938))

(assert (=> b!4934947 m!5955936))

(assert (=> b!4934947 m!5955938))

(declare-fun m!5955940 () Bool)

(assert (=> b!4934947 m!5955940))

(declare-fun m!5955942 () Bool)

(assert (=> b!4934946 m!5955942))

(assert (=> d!1588346 d!1588604))

(declare-fun d!1588606 () Bool)

(declare-fun lt!2032615 () Bool)

(assert (=> d!1588606 (= lt!2032615 (exists!1275 (toList!7964 z!3568) lambda!245761))))

(declare-fun choose!36242 ((InoxSet Context!6134) Int) Bool)

(assert (=> d!1588606 (= lt!2032615 (choose!36242 z!3568 lambda!245761))))

(assert (=> d!1588606 (= (exists!1277 z!3568 lambda!245761) lt!2032615)))

(declare-fun bs!1180642 () Bool)

(assert (= bs!1180642 d!1588606))

(assert (=> bs!1180642 m!5955094))

(assert (=> bs!1180642 m!5955094))

(declare-fun m!5955944 () Bool)

(assert (=> bs!1180642 m!5955944))

(declare-fun m!5955946 () Bool)

(assert (=> bs!1180642 m!5955946))

(assert (=> d!1588282 d!1588606))

(declare-fun bs!1180643 () Bool)

(declare-fun d!1588608 () Bool)

(assert (= bs!1180643 (and d!1588608 b!4934256)))

(declare-fun lambda!245790 () Int)

(assert (=> bs!1180643 (not (= lambda!245790 lambda!245742))))

(declare-fun bs!1180644 () Bool)

(assert (= bs!1180644 (and d!1588608 d!1588248)))

(assert (=> bs!1180644 (not (= lambda!245790 lambda!245741))))

(declare-fun bs!1180645 () Bool)

(assert (= bs!1180645 (and d!1588608 d!1588590)))

(assert (=> bs!1180645 (= lambda!245790 lambda!245787)))

(declare-fun bs!1180646 () Bool)

(assert (= bs!1180646 (and d!1588608 b!4934257)))

(assert (=> bs!1180646 (not (= lambda!245790 lambda!245743))))

(declare-fun bs!1180647 () Bool)

(assert (= bs!1180647 (and d!1588608 d!1588408)))

(assert (=> bs!1180647 (= (= lambda!245741 (ite c!840975 lambda!245742 lambda!245743)) (= lambda!245790 lambda!245773))))

(declare-fun bs!1180648 () Bool)

(assert (= bs!1180648 (and d!1588608 d!1588282)))

(assert (=> bs!1180648 (not (= lambda!245790 lambda!245761))))

(assert (=> d!1588608 true))

(assert (=> d!1588608 (< (dynLambda!23015 order!25983 lambda!245741) (dynLambda!23015 order!25983 lambda!245790))))

(assert (=> d!1588608 (not (exists!1275 lt!2032350 lambda!245790))))

(declare-fun lt!2032618 () Unit!147497)

(declare-fun choose!36243 (List!56948 Int) Unit!147497)

(assert (=> d!1588608 (= lt!2032618 (choose!36243 lt!2032350 lambda!245741))))

(assert (=> d!1588608 (forall!13187 lt!2032350 lambda!245741)))

(assert (=> d!1588608 (= (lemmaForallThenNotExists!185 lt!2032350 lambda!245741) lt!2032618)))

(declare-fun bs!1180649 () Bool)

(assert (= bs!1180649 d!1588608))

(declare-fun m!5955948 () Bool)

(assert (=> bs!1180649 m!5955948))

(declare-fun m!5955950 () Bool)

(assert (=> bs!1180649 m!5955950))

(declare-fun m!5955952 () Bool)

(assert (=> bs!1180649 m!5955952))

(assert (=> b!4934257 d!1588608))

(declare-fun b!4934948 () Bool)

(declare-fun e!3083408 () List!56946)

(assert (=> b!4934948 (= e!3083408 Nil!56822)))

(declare-fun d!1588610 () Bool)

(declare-fun c!841172 () Bool)

(assert (=> d!1588610 (= c!841172 ((_ is Empty!14934) (c!840959 totalInput!685)))))

(assert (=> d!1588610 (= (list!18046 (c!840959 totalInput!685)) e!3083408)))

(declare-fun b!4934951 () Bool)

(declare-fun e!3083409 () List!56946)

(assert (=> b!4934951 (= e!3083409 (++!12390 (list!18046 (left!41435 (c!840959 totalInput!685))) (list!18046 (right!41765 (c!840959 totalInput!685)))))))

(declare-fun b!4934949 () Bool)

(assert (=> b!4934949 (= e!3083408 e!3083409)))

(declare-fun c!841173 () Bool)

(assert (=> b!4934949 (= c!841173 ((_ is Leaf!24834) (c!840959 totalInput!685)))))

(declare-fun b!4934950 () Bool)

(assert (=> b!4934950 (= e!3083409 (list!18047 (xs!18258 (c!840959 totalInput!685))))))

(assert (= (and d!1588610 c!841172) b!4934948))

(assert (= (and d!1588610 (not c!841172)) b!4934949))

(assert (= (and b!4934949 c!841173) b!4934950))

(assert (= (and b!4934949 (not c!841173)) b!4934951))

(assert (=> b!4934951 m!5955700))

(assert (=> b!4934951 m!5955704))

(assert (=> b!4934951 m!5955700))

(assert (=> b!4934951 m!5955704))

(declare-fun m!5955954 () Bool)

(assert (=> b!4934951 m!5955954))

(assert (=> b!4934950 m!5955526))

(assert (=> d!1588328 d!1588610))

(declare-fun d!1588612 () Bool)

(declare-fun res!2106155 () Bool)

(declare-fun e!3083414 () Bool)

(assert (=> d!1588612 (=> res!2106155 e!3083414)))

(assert (=> d!1588612 (= res!2106155 ((_ is Nil!56823) (exprs!3567 setElem!27764)))))

(assert (=> d!1588612 (= (forall!13186 (exprs!3567 setElem!27764) lambda!245767) e!3083414)))

(declare-fun b!4934956 () Bool)

(declare-fun e!3083415 () Bool)

(assert (=> b!4934956 (= e!3083414 e!3083415)))

(declare-fun res!2106156 () Bool)

(assert (=> b!4934956 (=> (not res!2106156) (not e!3083415))))

(declare-fun dynLambda!23017 (Int Regex!13425) Bool)

(assert (=> b!4934956 (= res!2106156 (dynLambda!23017 lambda!245767 (h!63271 (exprs!3567 setElem!27764))))))

(declare-fun b!4934957 () Bool)

(assert (=> b!4934957 (= e!3083415 (forall!13186 (t!367427 (exprs!3567 setElem!27764)) lambda!245767))))

(assert (= (and d!1588612 (not res!2106155)) b!4934956))

(assert (= (and b!4934956 res!2106156) b!4934957))

(declare-fun b_lambda!196321 () Bool)

(assert (=> (not b_lambda!196321) (not b!4934956)))

(declare-fun m!5955956 () Bool)

(assert (=> b!4934956 m!5955956))

(declare-fun m!5955958 () Bool)

(assert (=> b!4934957 m!5955958))

(assert (=> d!1588370 d!1588612))

(assert (=> d!1588264 d!1588256))

(assert (=> d!1588264 d!1588258))

(assert (=> d!1588264 d!1588268))

(declare-fun d!1588614 () Bool)

(assert (=> d!1588614 (= (head!10562 (drop!2256 lt!2032314 testedPSize!70)) (apply!13733 lt!2032314 testedPSize!70))))

(assert (=> d!1588614 true))

(declare-fun _$27!1666 () Unit!147497)

(assert (=> d!1588614 (= (choose!36222 lt!2032314 testedPSize!70) _$27!1666)))

(declare-fun bs!1180650 () Bool)

(assert (= bs!1180650 d!1588614))

(assert (=> bs!1180650 m!5955072))

(assert (=> bs!1180650 m!5955072))

(assert (=> bs!1180650 m!5955074))

(assert (=> bs!1180650 m!5955080))

(assert (=> d!1588264 d!1588614))

(declare-fun d!1588616 () Bool)

(declare-fun e!3083418 () Bool)

(assert (=> d!1588616 e!3083418))

(declare-fun res!2106159 () Bool)

(assert (=> d!1588616 (=> (not res!2106159) (not e!3083418))))

(declare-fun lt!2032621 () List!56948)

(declare-fun noDuplicate!992 (List!56948) Bool)

(assert (=> d!1588616 (= res!2106159 (noDuplicate!992 lt!2032621))))

(declare-fun choose!36244 ((InoxSet Context!6134)) List!56948)

(assert (=> d!1588616 (= lt!2032621 (choose!36244 z!3568))))

(assert (=> d!1588616 (= (toList!7964 z!3568) lt!2032621)))

(declare-fun b!4934960 () Bool)

(declare-fun content!10101 (List!56948) (InoxSet Context!6134))

(assert (=> b!4934960 (= e!3083418 (= (content!10101 lt!2032621) z!3568))))

(assert (= (and d!1588616 res!2106159) b!4934960))

(declare-fun m!5955960 () Bool)

(assert (=> d!1588616 m!5955960))

(declare-fun m!5955962 () Bool)

(assert (=> d!1588616 m!5955962))

(declare-fun m!5955964 () Bool)

(assert (=> b!4934960 m!5955964))

(assert (=> bm!344257 d!1588616))

(declare-fun b!4934961 () Bool)

(declare-fun e!3083419 () List!56946)

(assert (=> b!4934961 (= e!3083419 lt!2032315)))

(declare-fun lt!2032622 () List!56946)

(declare-fun b!4934964 () Bool)

(declare-fun e!3083420 () Bool)

(assert (=> b!4934964 (= e!3083420 (or (not (= lt!2032315 Nil!56822)) (= lt!2032622 (t!367426 lt!2032311))))))

(declare-fun b!4934962 () Bool)

(assert (=> b!4934962 (= e!3083419 (Cons!56822 (h!63270 (t!367426 lt!2032311)) (++!12390 (t!367426 (t!367426 lt!2032311)) lt!2032315)))))

(declare-fun d!1588618 () Bool)

(assert (=> d!1588618 e!3083420))

(declare-fun res!2106161 () Bool)

(assert (=> d!1588618 (=> (not res!2106161) (not e!3083420))))

(assert (=> d!1588618 (= res!2106161 (= (content!10099 lt!2032622) ((_ map or) (content!10099 (t!367426 lt!2032311)) (content!10099 lt!2032315))))))

(assert (=> d!1588618 (= lt!2032622 e!3083419)))

(declare-fun c!841174 () Bool)

(assert (=> d!1588618 (= c!841174 ((_ is Nil!56822) (t!367426 lt!2032311)))))

(assert (=> d!1588618 (= (++!12390 (t!367426 lt!2032311) lt!2032315) lt!2032622)))

(declare-fun b!4934963 () Bool)

(declare-fun res!2106160 () Bool)

(assert (=> b!4934963 (=> (not res!2106160) (not e!3083420))))

(assert (=> b!4934963 (= res!2106160 (= (size!37632 lt!2032622) (+ (size!37632 (t!367426 lt!2032311)) (size!37632 lt!2032315))))))

(assert (= (and d!1588618 c!841174) b!4934961))

(assert (= (and d!1588618 (not c!841174)) b!4934962))

(assert (= (and d!1588618 res!2106161) b!4934963))

(assert (= (and b!4934963 res!2106160) b!4934964))

(declare-fun m!5955966 () Bool)

(assert (=> b!4934962 m!5955966))

(declare-fun m!5955968 () Bool)

(assert (=> d!1588618 m!5955968))

(assert (=> d!1588618 m!5955906))

(assert (=> d!1588618 m!5955186))

(declare-fun m!5955970 () Bool)

(assert (=> b!4934963 m!5955970))

(assert (=> b!4934963 m!5955234))

(assert (=> b!4934963 m!5955190))

(assert (=> b!4934376 d!1588618))

(declare-fun d!1588620 () Bool)

(declare-fun lt!2032623 () Int)

(assert (=> d!1588620 (>= lt!2032623 0)))

(declare-fun e!3083421 () Int)

(assert (=> d!1588620 (= lt!2032623 e!3083421)))

(declare-fun c!841175 () Bool)

(assert (=> d!1588620 (= c!841175 ((_ is Nil!56822) (list!18044 (_1!33962 lt!2032308))))))

(assert (=> d!1588620 (= (size!37632 (list!18044 (_1!33962 lt!2032308))) lt!2032623)))

(declare-fun b!4934965 () Bool)

(assert (=> b!4934965 (= e!3083421 0)))

(declare-fun b!4934966 () Bool)

(assert (=> b!4934966 (= e!3083421 (+ 1 (size!37632 (t!367426 (list!18044 (_1!33962 lt!2032308))))))))

(assert (= (and d!1588620 c!841175) b!4934965))

(assert (= (and d!1588620 (not c!841175)) b!4934966))

(declare-fun m!5955972 () Bool)

(assert (=> b!4934966 m!5955972))

(assert (=> d!1588340 d!1588620))

(assert (=> d!1588340 d!1588346))

(declare-fun d!1588622 () Bool)

(declare-fun lt!2032626 () Int)

(assert (=> d!1588622 (= lt!2032626 (size!37632 (list!18046 (c!840959 (_1!33962 lt!2032308)))))))

(assert (=> d!1588622 (= lt!2032626 (ite ((_ is Empty!14934) (c!840959 (_1!33962 lt!2032308))) 0 (ite ((_ is Leaf!24834) (c!840959 (_1!33962 lt!2032308))) (csize!30099 (c!840959 (_1!33962 lt!2032308))) (csize!30098 (c!840959 (_1!33962 lt!2032308))))))))

(assert (=> d!1588622 (= (size!37635 (c!840959 (_1!33962 lt!2032308))) lt!2032626)))

(declare-fun bs!1180651 () Bool)

(assert (= bs!1180651 d!1588622))

(assert (=> bs!1180651 m!5955294))

(assert (=> bs!1180651 m!5955294))

(declare-fun m!5955974 () Bool)

(assert (=> bs!1180651 m!5955974))

(assert (=> d!1588340 d!1588622))

(assert (=> b!4934464 d!1588378))

(assert (=> b!4934464 d!1588384))

(declare-fun d!1588624 () Bool)

(declare-fun lt!2032627 () Int)

(assert (=> d!1588624 (>= lt!2032627 0)))

(declare-fun e!3083422 () Int)

(assert (=> d!1588624 (= lt!2032627 e!3083422)))

(declare-fun c!841176 () Bool)

(assert (=> d!1588624 (= c!841176 ((_ is Nil!56822) (t!367426 testedP!110)))))

(assert (=> d!1588624 (= (size!37632 (t!367426 testedP!110)) lt!2032627)))

(declare-fun b!4934967 () Bool)

(assert (=> b!4934967 (= e!3083422 0)))

(declare-fun b!4934968 () Bool)

(assert (=> b!4934968 (= e!3083422 (+ 1 (size!37632 (t!367426 (t!367426 testedP!110)))))))

(assert (= (and d!1588624 c!841176) b!4934967))

(assert (= (and d!1588624 (not c!841176)) b!4934968))

(declare-fun m!5955976 () Bool)

(assert (=> b!4934968 m!5955976))

(assert (=> b!4934485 d!1588624))

(assert (=> b!4934468 d!1588602))

(declare-fun d!1588626 () Bool)

(assert (=> d!1588626 (= (head!10562 lt!2032323) (h!63270 lt!2032323))))

(assert (=> b!4934468 d!1588626))

(declare-fun d!1588628 () Bool)

(declare-fun lt!2032628 () List!56946)

(assert (=> d!1588628 (= (++!12390 (t!367426 testedP!110) lt!2032628) (tail!9701 lt!2032314))))

(declare-fun e!3083423 () List!56946)

(assert (=> d!1588628 (= lt!2032628 e!3083423)))

(declare-fun c!841177 () Bool)

(assert (=> d!1588628 (= c!841177 ((_ is Cons!56822) (t!367426 testedP!110)))))

(assert (=> d!1588628 (>= (size!37632 (tail!9701 lt!2032314)) (size!37632 (t!367426 testedP!110)))))

(assert (=> d!1588628 (= (getSuffix!3007 (tail!9701 lt!2032314) (t!367426 testedP!110)) lt!2032628)))

(declare-fun b!4934969 () Bool)

(assert (=> b!4934969 (= e!3083423 (getSuffix!3007 (tail!9701 (tail!9701 lt!2032314)) (t!367426 (t!367426 testedP!110))))))

(declare-fun b!4934970 () Bool)

(assert (=> b!4934970 (= e!3083423 (tail!9701 lt!2032314))))

(assert (= (and d!1588628 c!841177) b!4934969))

(assert (= (and d!1588628 (not c!841177)) b!4934970))

(declare-fun m!5955978 () Bool)

(assert (=> d!1588628 m!5955978))

(assert (=> d!1588628 m!5955102))

(assert (=> d!1588628 m!5955490))

(assert (=> d!1588628 m!5955392))

(assert (=> b!4934969 m!5955102))

(assert (=> b!4934969 m!5955496))

(assert (=> b!4934969 m!5955496))

(declare-fun m!5955980 () Bool)

(assert (=> b!4934969 m!5955980))

(assert (=> b!4934262 d!1588628))

(assert (=> b!4934262 d!1588414))

(declare-fun d!1588630 () Bool)

(declare-fun c!841178 () Bool)

(assert (=> d!1588630 (= c!841178 ((_ is Nil!56822) lt!2032459))))

(declare-fun e!3083424 () (InoxSet C!27080))

(assert (=> d!1588630 (= (content!10099 lt!2032459) e!3083424)))

(declare-fun b!4934971 () Bool)

(assert (=> b!4934971 (= e!3083424 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934972 () Bool)

(assert (=> b!4934972 (= e!3083424 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032459) true) (content!10099 (t!367426 lt!2032459))))))

(assert (= (and d!1588630 c!841178) b!4934971))

(assert (= (and d!1588630 (not c!841178)) b!4934972))

(declare-fun m!5955982 () Bool)

(assert (=> b!4934972 m!5955982))

(declare-fun m!5955984 () Bool)

(assert (=> b!4934972 m!5955984))

(assert (=> d!1588334 d!1588630))

(assert (=> d!1588334 d!1588594))

(declare-fun d!1588632 () Bool)

(declare-fun c!841179 () Bool)

(assert (=> d!1588632 (= c!841179 ((_ is Nil!56822) testedSuffix!70))))

(declare-fun e!3083425 () (InoxSet C!27080))

(assert (=> d!1588632 (= (content!10099 testedSuffix!70) e!3083425)))

(declare-fun b!4934973 () Bool)

(assert (=> b!4934973 (= e!3083425 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4934974 () Bool)

(assert (=> b!4934974 (= e!3083425 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 testedSuffix!70) true) (content!10099 (t!367426 testedSuffix!70))))))

(assert (= (and d!1588632 c!841179) b!4934973))

(assert (= (and d!1588632 (not c!841179)) b!4934974))

(declare-fun m!5955986 () Bool)

(assert (=> b!4934974 m!5955986))

(declare-fun m!5955988 () Bool)

(assert (=> b!4934974 m!5955988))

(assert (=> d!1588334 d!1588632))

(declare-fun d!1588634 () Bool)

(declare-fun lt!2032629 () Int)

(assert (=> d!1588634 (>= lt!2032629 0)))

(declare-fun e!3083426 () Int)

(assert (=> d!1588634 (= lt!2032629 e!3083426)))

(declare-fun c!841180 () Bool)

(assert (=> d!1588634 (= c!841180 ((_ is Nil!56822) lt!2032421))))

(assert (=> d!1588634 (= (size!37632 lt!2032421) lt!2032629)))

(declare-fun b!4934975 () Bool)

(assert (=> b!4934975 (= e!3083426 0)))

(declare-fun b!4934976 () Bool)

(assert (=> b!4934976 (= e!3083426 (+ 1 (size!37632 (t!367426 lt!2032421))))))

(assert (= (and d!1588634 c!841180) b!4934975))

(assert (= (and d!1588634 (not c!841180)) b!4934976))

(declare-fun m!5955990 () Bool)

(assert (=> b!4934976 m!5955990))

(assert (=> b!4934381 d!1588634))

(assert (=> b!4934381 d!1588384))

(declare-fun d!1588636 () Bool)

(declare-fun lt!2032630 () Int)

(assert (=> d!1588636 (>= lt!2032630 0)))

(declare-fun e!3083427 () Int)

(assert (=> d!1588636 (= lt!2032630 e!3083427)))

(declare-fun c!841181 () Bool)

(assert (=> d!1588636 (= c!841181 ((_ is Nil!56822) (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))

(assert (=> d!1588636 (= (size!37632 (Cons!56822 (head!10562 lt!2032312) Nil!56822)) lt!2032630)))

(declare-fun b!4934977 () Bool)

(assert (=> b!4934977 (= e!3083427 0)))

(declare-fun b!4934978 () Bool)

(assert (=> b!4934978 (= e!3083427 (+ 1 (size!37632 (t!367426 (Cons!56822 (head!10562 lt!2032312) Nil!56822)))))))

(assert (= (and d!1588636 c!841181) b!4934977))

(assert (= (and d!1588636 (not c!841181)) b!4934978))

(declare-fun m!5955992 () Bool)

(assert (=> b!4934978 m!5955992))

(assert (=> b!4934381 d!1588636))

(declare-fun d!1588638 () Bool)

(assert (=> d!1588638 (= (head!10562 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))) (h!63270 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))

(assert (=> b!4934359 d!1588638))

(assert (=> b!4934359 d!1588558))

(declare-fun d!1588640 () Bool)

(declare-fun lt!2032631 () Int)

(assert (=> d!1588640 (>= lt!2032631 0)))

(declare-fun e!3083428 () Int)

(assert (=> d!1588640 (= lt!2032631 e!3083428)))

(declare-fun c!841182 () Bool)

(assert (=> d!1588640 (= c!841182 ((_ is Nil!56822) lt!2032426))))

(assert (=> d!1588640 (= (size!37632 lt!2032426) lt!2032631)))

(declare-fun b!4934979 () Bool)

(assert (=> b!4934979 (= e!3083428 0)))

(declare-fun b!4934980 () Bool)

(assert (=> b!4934980 (= e!3083428 (+ 1 (size!37632 (t!367426 lt!2032426))))))

(assert (= (and d!1588640 c!841182) b!4934979))

(assert (= (and d!1588640 (not c!841182)) b!4934980))

(declare-fun m!5955994 () Bool)

(assert (=> b!4934980 m!5955994))

(assert (=> b!4934386 d!1588640))

(assert (=> b!4934386 d!1588384))

(declare-fun d!1588642 () Bool)

(declare-fun lt!2032632 () Int)

(assert (=> d!1588642 (>= lt!2032632 0)))

(declare-fun e!3083429 () Int)

(assert (=> d!1588642 (= lt!2032632 e!3083429)))

(declare-fun c!841183 () Bool)

(assert (=> d!1588642 (= c!841183 ((_ is Nil!56822) (Cons!56822 lt!2032310 Nil!56822)))))

(assert (=> d!1588642 (= (size!37632 (Cons!56822 lt!2032310 Nil!56822)) lt!2032632)))

(declare-fun b!4934981 () Bool)

(assert (=> b!4934981 (= e!3083429 0)))

(declare-fun b!4934982 () Bool)

(assert (=> b!4934982 (= e!3083429 (+ 1 (size!37632 (t!367426 (Cons!56822 lt!2032310 Nil!56822)))))))

(assert (= (and d!1588642 c!841183) b!4934981))

(assert (= (and d!1588642 (not c!841183)) b!4934982))

(declare-fun m!5955996 () Bool)

(assert (=> b!4934982 m!5955996))

(assert (=> b!4934386 d!1588642))

(assert (=> b!4934361 d!1588378))

(declare-fun d!1588644 () Bool)

(declare-fun lt!2032633 () Int)

(assert (=> d!1588644 (>= lt!2032633 0)))

(declare-fun e!3083430 () Int)

(assert (=> d!1588644 (= lt!2032633 e!3083430)))

(declare-fun c!841184 () Bool)

(assert (=> d!1588644 (= c!841184 ((_ is Nil!56822) (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))

(assert (=> d!1588644 (= (size!37632 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))) lt!2032633)))

(declare-fun b!4934983 () Bool)

(assert (=> b!4934983 (= e!3083430 0)))

(declare-fun b!4934984 () Bool)

(assert (=> b!4934984 (= e!3083430 (+ 1 (size!37632 (t!367426 (++!12390 testedP!110 (Cons!56822 (head!10562 lt!2032312) Nil!56822))))))))

(assert (= (and d!1588644 c!841184) b!4934983))

(assert (= (and d!1588644 (not c!841184)) b!4934984))

(declare-fun m!5955998 () Bool)

(assert (=> b!4934984 m!5955998))

(assert (=> b!4934361 d!1588644))

(declare-fun b!4934985 () Bool)

(declare-fun e!3083431 () List!56946)

(assert (=> b!4934985 (= e!3083431 Nil!56822)))

(declare-fun d!1588646 () Bool)

(declare-fun c!841185 () Bool)

(assert (=> d!1588646 (= c!841185 ((_ is Empty!14934) (c!840959 (_2!33962 lt!2032308))))))

(assert (=> d!1588646 (= (list!18046 (c!840959 (_2!33962 lt!2032308))) e!3083431)))

(declare-fun b!4934988 () Bool)

(declare-fun e!3083432 () List!56946)

(assert (=> b!4934988 (= e!3083432 (++!12390 (list!18046 (left!41435 (c!840959 (_2!33962 lt!2032308)))) (list!18046 (right!41765 (c!840959 (_2!33962 lt!2032308))))))))

(declare-fun b!4934986 () Bool)

(assert (=> b!4934986 (= e!3083431 e!3083432)))

(declare-fun c!841186 () Bool)

(assert (=> b!4934986 (= c!841186 ((_ is Leaf!24834) (c!840959 (_2!33962 lt!2032308))))))

(declare-fun b!4934987 () Bool)

(assert (=> b!4934987 (= e!3083432 (list!18047 (xs!18258 (c!840959 (_2!33962 lt!2032308)))))))

(assert (= (and d!1588646 c!841185) b!4934985))

(assert (= (and d!1588646 (not c!841185)) b!4934986))

(assert (= (and b!4934986 c!841186) b!4934987))

(assert (= (and b!4934986 (not c!841186)) b!4934988))

(declare-fun m!5956000 () Bool)

(assert (=> b!4934988 m!5956000))

(declare-fun m!5956002 () Bool)

(assert (=> b!4934988 m!5956002))

(assert (=> b!4934988 m!5956000))

(assert (=> b!4934988 m!5956002))

(declare-fun m!5956004 () Bool)

(assert (=> b!4934988 m!5956004))

(declare-fun m!5956006 () Bool)

(assert (=> b!4934987 m!5956006))

(assert (=> d!1588344 d!1588646))

(declare-fun d!1588648 () Bool)

(declare-fun lt!2032634 () Int)

(assert (=> d!1588648 (>= lt!2032634 0)))

(declare-fun e!3083433 () Int)

(assert (=> d!1588648 (= lt!2032634 e!3083433)))

(declare-fun c!841187 () Bool)

(assert (=> d!1588648 (= c!841187 ((_ is Nil!56822) lt!2032323))))

(assert (=> d!1588648 (= (size!37632 lt!2032323) lt!2032634)))

(declare-fun b!4934989 () Bool)

(assert (=> b!4934989 (= e!3083433 0)))

(declare-fun b!4934990 () Bool)

(assert (=> b!4934990 (= e!3083433 (+ 1 (size!37632 (t!367426 lt!2032323))))))

(assert (= (and d!1588648 c!841187) b!4934989))

(assert (= (and d!1588648 (not c!841187)) b!4934990))

(declare-fun m!5956008 () Bool)

(assert (=> b!4934990 m!5956008))

(assert (=> b!4934470 d!1588648))

(assert (=> b!4934470 d!1588384))

(declare-fun b!4934991 () Bool)

(declare-fun e!3083434 () List!56946)

(assert (=> b!4934991 (= e!3083434 lt!2032315)))

(declare-fun b!4934994 () Bool)

(declare-fun lt!2032635 () List!56946)

(declare-fun e!3083435 () Bool)

(assert (=> b!4934994 (= e!3083435 (or (not (= lt!2032315 Nil!56822)) (= lt!2032635 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822)))))))

(declare-fun b!4934992 () Bool)

(assert (=> b!4934992 (= e!3083434 (Cons!56822 (h!63270 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822))) (++!12390 (t!367426 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822))) lt!2032315)))))

(declare-fun d!1588650 () Bool)

(assert (=> d!1588650 e!3083435))

(declare-fun res!2106163 () Bool)

(assert (=> d!1588650 (=> (not res!2106163) (not e!3083435))))

(assert (=> d!1588650 (= res!2106163 (= (content!10099 lt!2032635) ((_ map or) (content!10099 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822))) (content!10099 lt!2032315))))))

(assert (=> d!1588650 (= lt!2032635 e!3083434)))

(declare-fun c!841188 () Bool)

(assert (=> d!1588650 (= c!841188 ((_ is Nil!56822) (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822))))))

(assert (=> d!1588650 (= (++!12390 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822)) lt!2032315) lt!2032635)))

(declare-fun b!4934993 () Bool)

(declare-fun res!2106162 () Bool)

(assert (=> b!4934993 (=> (not res!2106162) (not e!3083435))))

(assert (=> b!4934993 (= res!2106162 (= (size!37632 lt!2032635) (+ (size!37632 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822))) (size!37632 lt!2032315))))))

(assert (= (and d!1588650 c!841188) b!4934991))

(assert (= (and d!1588650 (not c!841188)) b!4934992))

(assert (= (and d!1588650 res!2106163) b!4934993))

(assert (= (and b!4934993 res!2106162) b!4934994))

(declare-fun m!5956010 () Bool)

(assert (=> b!4934992 m!5956010))

(declare-fun m!5956012 () Bool)

(assert (=> d!1588650 m!5956012))

(assert (=> d!1588650 m!5955056))

(declare-fun m!5956014 () Bool)

(assert (=> d!1588650 m!5956014))

(assert (=> d!1588650 m!5955186))

(declare-fun m!5956016 () Bool)

(assert (=> b!4934993 m!5956016))

(assert (=> b!4934993 m!5955056))

(declare-fun m!5956018 () Bool)

(assert (=> b!4934993 m!5956018))

(assert (=> b!4934993 m!5955190))

(assert (=> d!1588302 d!1588650))

(assert (=> d!1588302 d!1588304))

(declare-fun d!1588652 () Bool)

(assert (=> d!1588652 (= (++!12390 (++!12390 testedP!110 (Cons!56822 lt!2032310 Nil!56822)) lt!2032315) lt!2032314)))

(assert (=> d!1588652 true))

(declare-fun _$68!819 () Unit!147497)

(assert (=> d!1588652 (= (choose!36228 testedP!110 lt!2032310 lt!2032315 lt!2032314) _$68!819)))

(declare-fun bs!1180652 () Bool)

(assert (= bs!1180652 d!1588652))

(assert (=> bs!1180652 m!5955056))

(assert (=> bs!1180652 m!5955056))

(assert (=> bs!1180652 m!5955206))

(assert (=> d!1588302 d!1588652))

(declare-fun b!4934995 () Bool)

(declare-fun e!3083436 () List!56946)

(assert (=> b!4934995 (= e!3083436 (Cons!56822 lt!2032310 lt!2032315))))

(declare-fun b!4934998 () Bool)

(declare-fun e!3083437 () Bool)

(declare-fun lt!2032636 () List!56946)

(assert (=> b!4934998 (= e!3083437 (or (not (= (Cons!56822 lt!2032310 lt!2032315) Nil!56822)) (= lt!2032636 testedP!110)))))

(declare-fun b!4934996 () Bool)

(assert (=> b!4934996 (= e!3083436 (Cons!56822 (h!63270 testedP!110) (++!12390 (t!367426 testedP!110) (Cons!56822 lt!2032310 lt!2032315))))))

(declare-fun d!1588654 () Bool)

(assert (=> d!1588654 e!3083437))

(declare-fun res!2106165 () Bool)

(assert (=> d!1588654 (=> (not res!2106165) (not e!3083437))))

(assert (=> d!1588654 (= res!2106165 (= (content!10099 lt!2032636) ((_ map or) (content!10099 testedP!110) (content!10099 (Cons!56822 lt!2032310 lt!2032315)))))))

(assert (=> d!1588654 (= lt!2032636 e!3083436)))

(declare-fun c!841189 () Bool)

(assert (=> d!1588654 (= c!841189 ((_ is Nil!56822) testedP!110))))

(assert (=> d!1588654 (= (++!12390 testedP!110 (Cons!56822 lt!2032310 lt!2032315)) lt!2032636)))

(declare-fun b!4934997 () Bool)

(declare-fun res!2106164 () Bool)

(assert (=> b!4934997 (=> (not res!2106164) (not e!3083437))))

(assert (=> b!4934997 (= res!2106164 (= (size!37632 lt!2032636) (+ (size!37632 testedP!110) (size!37632 (Cons!56822 lt!2032310 lt!2032315)))))))

(assert (= (and d!1588654 c!841189) b!4934995))

(assert (= (and d!1588654 (not c!841189)) b!4934996))

(assert (= (and d!1588654 res!2106165) b!4934997))

(assert (= (and b!4934997 res!2106164) b!4934998))

(declare-fun m!5956020 () Bool)

(assert (=> b!4934996 m!5956020))

(declare-fun m!5956022 () Bool)

(assert (=> d!1588654 m!5956022))

(assert (=> d!1588654 m!5955196))

(declare-fun m!5956024 () Bool)

(assert (=> d!1588654 m!5956024))

(declare-fun m!5956026 () Bool)

(assert (=> b!4934997 m!5956026))

(assert (=> b!4934997 m!5955028))

(declare-fun m!5956028 () Bool)

(assert (=> b!4934997 m!5956028))

(assert (=> d!1588302 d!1588654))

(declare-fun d!1588656 () Bool)

(declare-fun lt!2032637 () Int)

(assert (=> d!1588656 (>= lt!2032637 0)))

(declare-fun e!3083438 () Int)

(assert (=> d!1588656 (= lt!2032637 e!3083438)))

(declare-fun c!841190 () Bool)

(assert (=> d!1588656 (= c!841190 ((_ is Nil!56822) (list!18044 totalInput!685)))))

(assert (=> d!1588656 (= (size!37632 (list!18044 totalInput!685)) lt!2032637)))

(declare-fun b!4934999 () Bool)

(assert (=> b!4934999 (= e!3083438 0)))

(declare-fun b!4935000 () Bool)

(assert (=> b!4935000 (= e!3083438 (+ 1 (size!37632 (t!367426 (list!18044 totalInput!685)))))))

(assert (= (and d!1588656 c!841190) b!4934999))

(assert (= (and d!1588656 (not c!841190)) b!4935000))

(declare-fun m!5956030 () Bool)

(assert (=> b!4935000 m!5956030))

(assert (=> d!1588314 d!1588656))

(assert (=> d!1588314 d!1588328))

(declare-fun d!1588658 () Bool)

(declare-fun lt!2032638 () Int)

(assert (=> d!1588658 (= lt!2032638 (size!37632 (list!18046 (c!840959 totalInput!685))))))

(assert (=> d!1588658 (= lt!2032638 (ite ((_ is Empty!14934) (c!840959 totalInput!685)) 0 (ite ((_ is Leaf!24834) (c!840959 totalInput!685)) (csize!30099 (c!840959 totalInput!685)) (csize!30098 (c!840959 totalInput!685)))))))

(assert (=> d!1588658 (= (size!37635 (c!840959 totalInput!685)) lt!2032638)))

(declare-fun bs!1180653 () Bool)

(assert (= bs!1180653 d!1588658))

(assert (=> bs!1180653 m!5955258))

(assert (=> bs!1180653 m!5955258))

(declare-fun m!5956032 () Bool)

(assert (=> bs!1180653 m!5956032))

(assert (=> d!1588314 d!1588658))

(declare-fun d!1588660 () Bool)

(declare-fun lt!2032639 () C!27080)

(assert (=> d!1588660 (contains!19471 (tail!9701 lt!2032314) lt!2032639)))

(declare-fun e!3083440 () C!27080)

(assert (=> d!1588660 (= lt!2032639 e!3083440)))

(declare-fun c!841191 () Bool)

(assert (=> d!1588660 (= c!841191 (= (- testedPSize!70 1) 0))))

(declare-fun e!3083439 () Bool)

(assert (=> d!1588660 e!3083439))

(declare-fun res!2106166 () Bool)

(assert (=> d!1588660 (=> (not res!2106166) (not e!3083439))))

(assert (=> d!1588660 (= res!2106166 (<= 0 (- testedPSize!70 1)))))

(assert (=> d!1588660 (= (apply!13733 (tail!9701 lt!2032314) (- testedPSize!70 1)) lt!2032639)))

(declare-fun b!4935001 () Bool)

(assert (=> b!4935001 (= e!3083439 (< (- testedPSize!70 1) (size!37632 (tail!9701 lt!2032314))))))

(declare-fun b!4935002 () Bool)

(assert (=> b!4935002 (= e!3083440 (head!10562 (tail!9701 lt!2032314)))))

(declare-fun b!4935003 () Bool)

(assert (=> b!4935003 (= e!3083440 (apply!13733 (tail!9701 (tail!9701 lt!2032314)) (- (- testedPSize!70 1) 1)))))

(assert (= (and d!1588660 res!2106166) b!4935001))

(assert (= (and d!1588660 c!841191) b!4935002))

(assert (= (and d!1588660 (not c!841191)) b!4935003))

(assert (=> d!1588660 m!5955102))

(declare-fun m!5956034 () Bool)

(assert (=> d!1588660 m!5956034))

(assert (=> b!4935001 m!5955102))

(assert (=> b!4935001 m!5955490))

(assert (=> b!4935002 m!5955102))

(assert (=> b!4935002 m!5955488))

(assert (=> b!4935003 m!5955102))

(assert (=> b!4935003 m!5955496))

(assert (=> b!4935003 m!5955496))

(declare-fun m!5956036 () Bool)

(assert (=> b!4935003 m!5956036))

(assert (=> b!4934310 d!1588660))

(assert (=> b!4934310 d!1588414))

(assert (=> b!4934308 d!1588378))

(declare-fun d!1588662 () Bool)

(assert (=> d!1588662 (= (isEmpty!30607 (getLanguageWitness!640 z!3568)) (not ((_ is Some!14181) (getLanguageWitness!640 z!3568))))))

(assert (=> d!1588248 d!1588662))

(declare-fun bs!1180654 () Bool)

(declare-fun d!1588664 () Bool)

(assert (= bs!1180654 (and d!1588664 b!4934256)))

(declare-fun lambda!245797 () Int)

(assert (=> bs!1180654 (= lambda!245797 lambda!245742)))

(declare-fun bs!1180655 () Bool)

(assert (= bs!1180655 (and d!1588664 d!1588248)))

(assert (=> bs!1180655 (not (= lambda!245797 lambda!245741))))

(declare-fun bs!1180656 () Bool)

(assert (= bs!1180656 (and d!1588664 d!1588590)))

(assert (=> bs!1180656 (not (= lambda!245797 lambda!245787))))

(declare-fun bs!1180657 () Bool)

(assert (= bs!1180657 (and d!1588664 d!1588608)))

(assert (=> bs!1180657 (not (= lambda!245797 lambda!245790))))

(declare-fun bs!1180658 () Bool)

(assert (= bs!1180658 (and d!1588664 b!4934257)))

(assert (=> bs!1180658 (= lambda!245797 lambda!245743)))

(declare-fun bs!1180659 () Bool)

(assert (= bs!1180659 (and d!1588664 d!1588408)))

(assert (=> bs!1180659 (not (= lambda!245797 lambda!245773))))

(declare-fun bs!1180660 () Bool)

(assert (= bs!1180660 (and d!1588664 d!1588282)))

(assert (=> bs!1180660 (not (= lambda!245797 lambda!245761))))

(declare-fun lt!2032644 () Option!14182)

(declare-fun isDefined!11171 (Option!14182) Bool)

(assert (=> d!1588664 (= (isDefined!11171 lt!2032644) (exists!1277 z!3568 lambda!245797))))

(declare-fun e!3083443 () Option!14182)

(assert (=> d!1588664 (= lt!2032644 e!3083443)))

(declare-fun c!841200 () Bool)

(assert (=> d!1588664 (= c!841200 (exists!1277 z!3568 lambda!245797))))

(assert (=> d!1588664 (= (getLanguageWitness!640 z!3568) lt!2032644)))

(declare-fun b!4935010 () Bool)

(declare-fun getLanguageWitness!643 (Context!6134) Option!14182)

(declare-fun getWitness!636 ((InoxSet Context!6134) Int) Context!6134)

(assert (=> b!4935010 (= e!3083443 (getLanguageWitness!643 (getWitness!636 z!3568 lambda!245797)))))

(declare-fun b!4935011 () Bool)

(assert (=> b!4935011 (= e!3083443 None!14181)))

(assert (= (and d!1588664 c!841200) b!4935010))

(assert (= (and d!1588664 (not c!841200)) b!4935011))

(declare-fun m!5956038 () Bool)

(assert (=> d!1588664 m!5956038))

(declare-fun m!5956040 () Bool)

(assert (=> d!1588664 m!5956040))

(assert (=> d!1588664 m!5956040))

(declare-fun m!5956042 () Bool)

(assert (=> b!4935010 m!5956042))

(assert (=> b!4935010 m!5956042))

(declare-fun m!5956044 () Bool)

(assert (=> b!4935010 m!5956044))

(assert (=> d!1588248 d!1588664))

(declare-fun d!1588666 () Bool)

(declare-fun lt!2032667 () Bool)

(assert (=> d!1588666 (= lt!2032667 (forall!13187 (toList!7964 z!3568) lambda!245741))))

(declare-fun choose!36245 ((InoxSet Context!6134) Int) Bool)

(assert (=> d!1588666 (= lt!2032667 (choose!36245 z!3568 lambda!245741))))

(assert (=> d!1588666 (= (forall!13183 z!3568 lambda!245741) lt!2032667)))

(declare-fun bs!1180661 () Bool)

(assert (= bs!1180661 d!1588666))

(assert (=> bs!1180661 m!5955094))

(assert (=> bs!1180661 m!5955094))

(declare-fun m!5956046 () Bool)

(assert (=> bs!1180661 m!5956046))

(declare-fun m!5956048 () Bool)

(assert (=> bs!1180661 m!5956048))

(assert (=> d!1588248 d!1588666))

(assert (=> b!4934413 d!1588378))

(declare-fun b!4935038 () Bool)

(declare-fun res!2106172 () Bool)

(declare-fun e!3083458 () Bool)

(assert (=> b!4935038 (=> (not res!2106172) (not e!3083458))))

(assert (=> b!4935038 (= res!2106172 (not (isEmpty!30609 (left!41435 (c!840959 (_2!33962 lt!2032470))))))))

(declare-fun b!4935039 () Bool)

(assert (=> b!4935039 (= e!3083458 (not (isEmpty!30609 (right!41765 (c!840959 (_2!33962 lt!2032470))))))))

(declare-fun d!1588668 () Bool)

(declare-fun res!2106167 () Bool)

(declare-fun e!3083459 () Bool)

(assert (=> d!1588668 (=> res!2106167 e!3083459)))

(assert (=> d!1588668 (= res!2106167 (not ((_ is Node!14934) (c!840959 (_2!33962 lt!2032470)))))))

(assert (=> d!1588668 (= (isBalanced!4115 (c!840959 (_2!33962 lt!2032470))) e!3083459)))

(declare-fun b!4935040 () Bool)

(declare-fun res!2106168 () Bool)

(assert (=> b!4935040 (=> (not res!2106168) (not e!3083458))))

(assert (=> b!4935040 (= res!2106168 (<= (- (height!1991 (left!41435 (c!840959 (_2!33962 lt!2032470)))) (height!1991 (right!41765 (c!840959 (_2!33962 lt!2032470))))) 1))))

(declare-fun b!4935041 () Bool)

(declare-fun res!2106171 () Bool)

(assert (=> b!4935041 (=> (not res!2106171) (not e!3083458))))

(assert (=> b!4935041 (= res!2106171 (isBalanced!4115 (right!41765 (c!840959 (_2!33962 lt!2032470)))))))

(declare-fun b!4935042 () Bool)

(declare-fun res!2106170 () Bool)

(assert (=> b!4935042 (=> (not res!2106170) (not e!3083458))))

(assert (=> b!4935042 (= res!2106170 (isBalanced!4115 (left!41435 (c!840959 (_2!33962 lt!2032470)))))))

(declare-fun b!4935043 () Bool)

(assert (=> b!4935043 (= e!3083459 e!3083458)))

(declare-fun res!2106169 () Bool)

(assert (=> b!4935043 (=> (not res!2106169) (not e!3083458))))

(assert (=> b!4935043 (= res!2106169 (<= (- 1) (- (height!1991 (left!41435 (c!840959 (_2!33962 lt!2032470)))) (height!1991 (right!41765 (c!840959 (_2!33962 lt!2032470)))))))))

(assert (= (and d!1588668 (not res!2106167)) b!4935043))

(assert (= (and b!4935043 res!2106169) b!4935040))

(assert (= (and b!4935040 res!2106168) b!4935042))

(assert (= (and b!4935042 res!2106170) b!4935041))

(assert (= (and b!4935041 res!2106171) b!4935038))

(assert (= (and b!4935038 res!2106172) b!4935039))

(declare-fun m!5956050 () Bool)

(assert (=> b!4935038 m!5956050))

(declare-fun m!5956052 () Bool)

(assert (=> b!4935041 m!5956052))

(declare-fun m!5956054 () Bool)

(assert (=> b!4935039 m!5956054))

(declare-fun m!5956056 () Bool)

(assert (=> b!4935043 m!5956056))

(declare-fun m!5956058 () Bool)

(assert (=> b!4935043 m!5956058))

(assert (=> b!4935040 m!5956056))

(assert (=> b!4935040 m!5956058))

(declare-fun m!5956060 () Bool)

(assert (=> b!4935042 m!5956060))

(assert (=> b!4934446 d!1588668))

(assert (=> b!4934411 d!1588558))

(assert (=> d!1588338 d!1588508))

(declare-fun d!1588670 () Bool)

(declare-fun lt!2032672 () Int)

(assert (=> d!1588670 (>= lt!2032672 0)))

(declare-fun e!3083465 () Int)

(assert (=> d!1588670 (= lt!2032672 e!3083465)))

(declare-fun c!841220 () Bool)

(assert (=> d!1588670 (= c!841220 ((_ is Nil!56822) lt!2032459))))

(assert (=> d!1588670 (= (size!37632 lt!2032459) lt!2032672)))

(declare-fun b!4935056 () Bool)

(assert (=> b!4935056 (= e!3083465 0)))

(declare-fun b!4935057 () Bool)

(assert (=> b!4935057 (= e!3083465 (+ 1 (size!37632 (t!367426 lt!2032459))))))

(assert (= (and d!1588670 c!841220) b!4935056))

(assert (= (and d!1588670 (not c!841220)) b!4935057))

(declare-fun m!5956062 () Bool)

(assert (=> b!4935057 m!5956062))

(assert (=> b!4934420 d!1588670))

(assert (=> b!4934420 d!1588384))

(declare-fun d!1588672 () Bool)

(declare-fun lt!2032673 () Int)

(assert (=> d!1588672 (>= lt!2032673 0)))

(declare-fun e!3083467 () Int)

(assert (=> d!1588672 (= lt!2032673 e!3083467)))

(declare-fun c!841222 () Bool)

(assert (=> d!1588672 (= c!841222 ((_ is Nil!56822) testedSuffix!70))))

(assert (=> d!1588672 (= (size!37632 testedSuffix!70) lt!2032673)))

(declare-fun b!4935058 () Bool)

(assert (=> b!4935058 (= e!3083467 0)))

(declare-fun b!4935059 () Bool)

(assert (=> b!4935059 (= e!3083467 (+ 1 (size!37632 (t!367426 testedSuffix!70))))))

(assert (= (and d!1588672 c!841222) b!4935058))

(assert (= (and d!1588672 (not c!841222)) b!4935059))

(declare-fun m!5956064 () Bool)

(assert (=> b!4935059 m!5956064))

(assert (=> b!4934420 d!1588672))

(declare-fun d!1588674 () Bool)

(declare-fun lt!2032674 () Int)

(assert (=> d!1588674 (>= lt!2032674 0)))

(declare-fun e!3083468 () Int)

(assert (=> d!1588674 (= lt!2032674 e!3083468)))

(declare-fun c!841223 () Bool)

(assert (=> d!1588674 (= c!841223 ((_ is Nil!56822) lt!2032461))))

(assert (=> d!1588674 (= (size!37632 lt!2032461) lt!2032674)))

(declare-fun b!4935060 () Bool)

(assert (=> b!4935060 (= e!3083468 0)))

(declare-fun b!4935061 () Bool)

(assert (=> b!4935061 (= e!3083468 (+ 1 (size!37632 (t!367426 lt!2032461))))))

(assert (= (and d!1588674 c!841223) b!4935060))

(assert (= (and d!1588674 (not c!841223)) b!4935061))

(declare-fun m!5956066 () Bool)

(assert (=> b!4935061 m!5956066))

(assert (=> b!4934424 d!1588674))

(declare-fun d!1588676 () Bool)

(declare-fun lt!2032675 () Int)

(assert (=> d!1588676 (>= lt!2032675 0)))

(declare-fun e!3083469 () Int)

(assert (=> d!1588676 (= lt!2032675 e!3083469)))

(declare-fun c!841224 () Bool)

(assert (=> d!1588676 (= c!841224 ((_ is Nil!56822) lt!2032317))))

(assert (=> d!1588676 (= (size!37632 lt!2032317) lt!2032675)))

(declare-fun b!4935062 () Bool)

(assert (=> b!4935062 (= e!3083469 0)))

(declare-fun b!4935063 () Bool)

(assert (=> b!4935063 (= e!3083469 (+ 1 (size!37632 (t!367426 lt!2032317))))))

(assert (= (and d!1588676 c!841224) b!4935062))

(assert (= (and d!1588676 (not c!841224)) b!4935063))

(assert (=> b!4935063 m!5955934))

(assert (=> b!4934424 d!1588676))

(declare-fun d!1588678 () Bool)

(declare-fun lt!2032676 () Int)

(assert (=> d!1588678 (>= lt!2032676 0)))

(declare-fun e!3083470 () Int)

(assert (=> d!1588678 (= lt!2032676 e!3083470)))

(declare-fun c!841225 () Bool)

(assert (=> d!1588678 (= c!841225 ((_ is Nil!56822) lt!2032318))))

(assert (=> d!1588678 (= (size!37632 lt!2032318) lt!2032676)))

(declare-fun b!4935064 () Bool)

(assert (=> b!4935064 (= e!3083470 0)))

(declare-fun b!4935065 () Bool)

(assert (=> b!4935065 (= e!3083470 (+ 1 (size!37632 (t!367426 lt!2032318))))))

(assert (= (and d!1588678 c!841225) b!4935064))

(assert (= (and d!1588678 (not c!841225)) b!4935065))

(declare-fun m!5956068 () Bool)

(assert (=> b!4935065 m!5956068))

(assert (=> b!4934424 d!1588678))

(declare-fun d!1588680 () Bool)

(declare-fun c!841226 () Bool)

(assert (=> d!1588680 (= c!841226 ((_ is Nil!56822) lt!2032426))))

(declare-fun e!3083471 () (InoxSet C!27080))

(assert (=> d!1588680 (= (content!10099 lt!2032426) e!3083471)))

(declare-fun b!4935066 () Bool)

(assert (=> b!4935066 (= e!3083471 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4935067 () Bool)

(assert (=> b!4935067 (= e!3083471 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 lt!2032426) true) (content!10099 (t!367426 lt!2032426))))))

(assert (= (and d!1588680 c!841226) b!4935066))

(assert (= (and d!1588680 (not c!841226)) b!4935067))

(declare-fun m!5956070 () Bool)

(assert (=> b!4935067 m!5956070))

(declare-fun m!5956072 () Bool)

(assert (=> b!4935067 m!5956072))

(assert (=> d!1588304 d!1588680))

(assert (=> d!1588304 d!1588594))

(declare-fun d!1588682 () Bool)

(declare-fun c!841227 () Bool)

(assert (=> d!1588682 (= c!841227 ((_ is Nil!56822) (Cons!56822 lt!2032310 Nil!56822)))))

(declare-fun e!3083472 () (InoxSet C!27080))

(assert (=> d!1588682 (= (content!10099 (Cons!56822 lt!2032310 Nil!56822)) e!3083472)))

(declare-fun b!4935068 () Bool)

(assert (=> b!4935068 (= e!3083472 ((as const (Array C!27080 Bool)) false))))

(declare-fun b!4935069 () Bool)

(assert (=> b!4935069 (= e!3083472 ((_ map or) (store ((as const (Array C!27080 Bool)) false) (h!63270 (Cons!56822 lt!2032310 Nil!56822)) true) (content!10099 (t!367426 (Cons!56822 lt!2032310 Nil!56822)))))))

(assert (= (and d!1588682 c!841227) b!4935068))

(assert (= (and d!1588682 (not c!841227)) b!4935069))

(declare-fun m!5956074 () Bool)

(assert (=> b!4935069 m!5956074))

(declare-fun m!5956076 () Bool)

(assert (=> b!4935069 m!5956076))

(assert (=> d!1588304 d!1588682))

(declare-fun d!1588684 () Bool)

(declare-fun lt!2032677 () C!27080)

(assert (=> d!1588684 (contains!19471 (list!18044 totalInput!685) lt!2032677)))

(declare-fun e!3083474 () C!27080)

(assert (=> d!1588684 (= lt!2032677 e!3083474)))

(declare-fun c!841228 () Bool)

(assert (=> d!1588684 (= c!841228 (= testedPSize!70 0))))

(declare-fun e!3083473 () Bool)

(assert (=> d!1588684 e!3083473))

(declare-fun res!2106173 () Bool)

(assert (=> d!1588684 (=> (not res!2106173) (not e!3083473))))

(assert (=> d!1588684 (= res!2106173 (<= 0 testedPSize!70))))

(assert (=> d!1588684 (= (apply!13733 (list!18044 totalInput!685) testedPSize!70) lt!2032677)))

(declare-fun b!4935070 () Bool)

(assert (=> b!4935070 (= e!3083473 (< testedPSize!70 (size!37632 (list!18044 totalInput!685))))))

(declare-fun b!4935071 () Bool)

(assert (=> b!4935071 (= e!3083474 (head!10562 (list!18044 totalInput!685)))))

(declare-fun b!4935072 () Bool)

(assert (=> b!4935072 (= e!3083474 (apply!13733 (tail!9701 (list!18044 totalInput!685)) (- testedPSize!70 1)))))

(assert (= (and d!1588684 res!2106173) b!4935070))

(assert (= (and d!1588684 c!841228) b!4935071))

(assert (= (and d!1588684 (not c!841228)) b!4935072))

(assert (=> d!1588684 m!5955062))

(declare-fun m!5956078 () Bool)

(assert (=> d!1588684 m!5956078))

(assert (=> b!4935070 m!5955062))

(assert (=> b!4935070 m!5955238))

(assert (=> b!4935071 m!5955062))

(declare-fun m!5956080 () Bool)

(assert (=> b!4935071 m!5956080))

(assert (=> b!4935072 m!5955062))

(declare-fun m!5956082 () Bool)

(assert (=> b!4935072 m!5956082))

(assert (=> b!4935072 m!5956082))

(declare-fun m!5956084 () Bool)

(assert (=> b!4935072 m!5956084))

(assert (=> d!1588274 d!1588684))

(assert (=> d!1588274 d!1588328))

(declare-fun b!4935095 () Bool)

(declare-fun e!3083490 () C!27080)

(declare-fun e!3083489 () C!27080)

(assert (=> b!4935095 (= e!3083490 e!3083489)))

(declare-fun lt!2032683 () Bool)

(declare-fun appendIndex!381 (List!56946 List!56946 Int) Bool)

(assert (=> b!4935095 (= lt!2032683 (appendIndex!381 (list!18046 (left!41435 (c!840959 totalInput!685))) (list!18046 (right!41765 (c!840959 totalInput!685))) testedPSize!70))))

(declare-fun c!841238 () Bool)

(assert (=> b!4935095 (= c!841238 (< testedPSize!70 (size!37635 (left!41435 (c!840959 totalInput!685)))))))

(declare-fun b!4935096 () Bool)

(declare-fun apply!13737 (IArray!29929 Int) C!27080)

(assert (=> b!4935096 (= e!3083490 (apply!13737 (xs!18258 (c!840959 totalInput!685)) testedPSize!70))))

(declare-fun b!4935097 () Bool)

(declare-fun e!3083487 () Int)

(assert (=> b!4935097 (= e!3083487 (- testedPSize!70 (size!37635 (left!41435 (c!840959 totalInput!685)))))))

(declare-fun bm!344306 () Bool)

(declare-fun c!841239 () Bool)

(assert (=> bm!344306 (= c!841239 c!841238)))

(declare-fun call!344311 () C!27080)

(assert (=> bm!344306 (= call!344311 (apply!13734 (ite c!841238 (left!41435 (c!840959 totalInput!685)) (right!41765 (c!840959 totalInput!685))) e!3083487))))

(declare-fun d!1588686 () Bool)

(declare-fun lt!2032682 () C!27080)

(assert (=> d!1588686 (= lt!2032682 (apply!13733 (list!18046 (c!840959 totalInput!685)) testedPSize!70))))

(assert (=> d!1588686 (= lt!2032682 e!3083490)))

(declare-fun c!841237 () Bool)

(assert (=> d!1588686 (= c!841237 ((_ is Leaf!24834) (c!840959 totalInput!685)))))

(declare-fun e!3083488 () Bool)

(assert (=> d!1588686 e!3083488))

(declare-fun res!2106180 () Bool)

(assert (=> d!1588686 (=> (not res!2106180) (not e!3083488))))

(assert (=> d!1588686 (= res!2106180 (<= 0 testedPSize!70))))

(assert (=> d!1588686 (= (apply!13734 (c!840959 totalInput!685) testedPSize!70) lt!2032682)))

(declare-fun b!4935098 () Bool)

(assert (=> b!4935098 (= e!3083487 testedPSize!70)))

(declare-fun b!4935099 () Bool)

(assert (=> b!4935099 (= e!3083489 call!344311)))

(declare-fun b!4935100 () Bool)

(assert (=> b!4935100 (= e!3083488 (< testedPSize!70 (size!37635 (c!840959 totalInput!685))))))

(declare-fun b!4935101 () Bool)

(assert (=> b!4935101 (= e!3083489 call!344311)))

(assert (= (and d!1588686 res!2106180) b!4935100))

(assert (= (and d!1588686 c!841237) b!4935096))

(assert (= (and d!1588686 (not c!841237)) b!4935095))

(assert (= (and b!4935095 c!841238) b!4935099))

(assert (= (and b!4935095 (not c!841238)) b!4935101))

(assert (= (or b!4935099 b!4935101) bm!344306))

(assert (= (and bm!344306 c!841239) b!4935098))

(assert (= (and bm!344306 (not c!841239)) b!4935097))

(assert (=> b!4935100 m!5955240))

(assert (=> b!4935095 m!5955700))

(assert (=> b!4935095 m!5955704))

(assert (=> b!4935095 m!5955700))

(assert (=> b!4935095 m!5955704))

(declare-fun m!5956086 () Bool)

(assert (=> b!4935095 m!5956086))

(assert (=> b!4935095 m!5955504))

(declare-fun m!5956088 () Bool)

(assert (=> b!4935096 m!5956088))

(assert (=> b!4935097 m!5955504))

(declare-fun m!5956090 () Bool)

(assert (=> bm!344306 m!5956090))

(assert (=> d!1588686 m!5955258))

(assert (=> d!1588686 m!5955258))

(declare-fun m!5956092 () Bool)

(assert (=> d!1588686 m!5956092))

(assert (=> d!1588274 d!1588686))

(declare-fun d!1588688 () Bool)

(declare-fun c!841240 () Bool)

(assert (=> d!1588688 (= c!841240 ((_ is Node!14934) (left!41435 (c!840959 totalInput!685))))))

(declare-fun e!3083491 () Bool)

(assert (=> d!1588688 (= (inv!73818 (left!41435 (c!840959 totalInput!685))) e!3083491)))

(declare-fun b!4935102 () Bool)

(assert (=> b!4935102 (= e!3083491 (inv!73821 (left!41435 (c!840959 totalInput!685))))))

(declare-fun b!4935103 () Bool)

(declare-fun e!3083492 () Bool)

(assert (=> b!4935103 (= e!3083491 e!3083492)))

(declare-fun res!2106181 () Bool)

(assert (=> b!4935103 (= res!2106181 (not ((_ is Leaf!24834) (left!41435 (c!840959 totalInput!685)))))))

(assert (=> b!4935103 (=> res!2106181 e!3083492)))

(declare-fun b!4935104 () Bool)

(assert (=> b!4935104 (= e!3083492 (inv!73822 (left!41435 (c!840959 totalInput!685))))))

(assert (= (and d!1588688 c!841240) b!4935102))

(assert (= (and d!1588688 (not c!841240)) b!4935103))

(assert (= (and b!4935103 (not res!2106181)) b!4935104))

(declare-fun m!5956094 () Bool)

(assert (=> b!4935102 m!5956094))

(declare-fun m!5956096 () Bool)

(assert (=> b!4935104 m!5956096))

(assert (=> b!4934499 d!1588688))

(declare-fun d!1588690 () Bool)

(declare-fun c!841241 () Bool)

(assert (=> d!1588690 (= c!841241 ((_ is Node!14934) (right!41765 (c!840959 totalInput!685))))))

(declare-fun e!3083493 () Bool)

(assert (=> d!1588690 (= (inv!73818 (right!41765 (c!840959 totalInput!685))) e!3083493)))

(declare-fun b!4935105 () Bool)

(assert (=> b!4935105 (= e!3083493 (inv!73821 (right!41765 (c!840959 totalInput!685))))))

(declare-fun b!4935106 () Bool)

(declare-fun e!3083494 () Bool)

(assert (=> b!4935106 (= e!3083493 e!3083494)))

(declare-fun res!2106182 () Bool)

(assert (=> b!4935106 (= res!2106182 (not ((_ is Leaf!24834) (right!41765 (c!840959 totalInput!685)))))))

(assert (=> b!4935106 (=> res!2106182 e!3083494)))

(declare-fun b!4935107 () Bool)

(assert (=> b!4935107 (= e!3083494 (inv!73822 (right!41765 (c!840959 totalInput!685))))))

(assert (= (and d!1588690 c!841241) b!4935105))

(assert (= (and d!1588690 (not c!841241)) b!4935106))

(assert (= (and b!4935106 (not res!2106182)) b!4935107))

(declare-fun m!5956098 () Bool)

(assert (=> b!4935105 m!5956098))

(declare-fun m!5956100 () Bool)

(assert (=> b!4935107 m!5956100))

(assert (=> b!4934499 d!1588690))

(declare-fun b!4935132 () Bool)

(declare-fun e!3083507 () Bool)

(declare-fun tp!1385204 () Bool)

(assert (=> b!4935132 (= e!3083507 (and tp_is_empty!36027 tp!1385204))))

(assert (=> b!4934501 (= tp!1385168 e!3083507)))

(assert (= (and b!4934501 ((_ is Cons!56822) (innerList!15022 (xs!18258 (c!840959 totalInput!685))))) b!4935132))

(declare-fun b!4935133 () Bool)

(declare-fun e!3083508 () Bool)

(declare-fun tp!1385205 () Bool)

(assert (=> b!4935133 (= e!3083508 (and tp_is_empty!36027 tp!1385205))))

(assert (=> b!4934506 (= tp!1385171 e!3083508)))

(assert (= (and b!4934506 ((_ is Cons!56822) (t!367426 (t!367426 testedP!110)))) b!4935133))

(declare-fun condSetEmpty!27771 () Bool)

(assert (=> setNonEmpty!27767 (= condSetEmpty!27771 (= setRest!27767 ((as const (Array Context!6134 Bool)) false)))))

(declare-fun setRes!27771 () Bool)

(assert (=> setNonEmpty!27767 (= tp!1385177 setRes!27771)))

(declare-fun setIsEmpty!27771 () Bool)

(assert (=> setIsEmpty!27771 setRes!27771))

(declare-fun tp!1385206 () Bool)

(declare-fun setNonEmpty!27771 () Bool)

(declare-fun setElem!27771 () Context!6134)

(declare-fun e!3083509 () Bool)

(assert (=> setNonEmpty!27771 (= setRes!27771 (and tp!1385206 (inv!73816 setElem!27771) e!3083509))))

(declare-fun setRest!27771 () (InoxSet Context!6134))

(assert (=> setNonEmpty!27771 (= setRest!27767 ((_ map or) (store ((as const (Array Context!6134 Bool)) false) setElem!27771 true) setRest!27771))))

(declare-fun b!4935134 () Bool)

(declare-fun tp!1385207 () Bool)

(assert (=> b!4935134 (= e!3083509 tp!1385207)))

(assert (= (and setNonEmpty!27767 condSetEmpty!27771) setIsEmpty!27771))

(assert (= (and setNonEmpty!27767 (not condSetEmpty!27771)) setNonEmpty!27771))

(assert (= setNonEmpty!27771 b!4935134))

(declare-fun m!5956102 () Bool)

(assert (=> setNonEmpty!27771 m!5956102))

(declare-fun b!4935135 () Bool)

(declare-fun e!3083510 () Bool)

(declare-fun tp!1385208 () Bool)

(declare-fun tp!1385209 () Bool)

(assert (=> b!4935135 (= e!3083510 (and tp!1385208 tp!1385209))))

(assert (=> b!4934512 (= tp!1385178 e!3083510)))

(assert (= (and b!4934512 ((_ is Cons!56823) (exprs!3567 setElem!27767))) b!4935135))

(declare-fun e!3083512 () Bool)

(declare-fun tp!1385211 () Bool)

(declare-fun tp!1385210 () Bool)

(declare-fun b!4935136 () Bool)

(assert (=> b!4935136 (= e!3083512 (and (inv!73818 (left!41435 (left!41435 (c!840959 totalInput!685)))) tp!1385211 (inv!73818 (right!41765 (left!41435 (c!840959 totalInput!685)))) tp!1385210))))

(declare-fun b!4935138 () Bool)

(declare-fun e!3083511 () Bool)

(declare-fun tp!1385212 () Bool)

(assert (=> b!4935138 (= e!3083511 tp!1385212)))

(declare-fun b!4935137 () Bool)

(assert (=> b!4935137 (= e!3083512 (and (inv!73823 (xs!18258 (left!41435 (c!840959 totalInput!685)))) e!3083511))))

(assert (=> b!4934499 (= tp!1385167 (and (inv!73818 (left!41435 (c!840959 totalInput!685))) e!3083512))))

(assert (= (and b!4934499 ((_ is Node!14934) (left!41435 (c!840959 totalInput!685)))) b!4935136))

(assert (= b!4935137 b!4935138))

(assert (= (and b!4934499 ((_ is Leaf!24834) (left!41435 (c!840959 totalInput!685)))) b!4935137))

(declare-fun m!5956104 () Bool)

(assert (=> b!4935136 m!5956104))

(declare-fun m!5956106 () Bool)

(assert (=> b!4935136 m!5956106))

(declare-fun m!5956108 () Bool)

(assert (=> b!4935137 m!5956108))

(assert (=> b!4934499 m!5955396))

(declare-fun b!4935139 () Bool)

(declare-fun tp!1385214 () Bool)

(declare-fun tp!1385213 () Bool)

(declare-fun e!3083514 () Bool)

(assert (=> b!4935139 (= e!3083514 (and (inv!73818 (left!41435 (right!41765 (c!840959 totalInput!685)))) tp!1385214 (inv!73818 (right!41765 (right!41765 (c!840959 totalInput!685)))) tp!1385213))))

(declare-fun b!4935141 () Bool)

(declare-fun e!3083513 () Bool)

(declare-fun tp!1385215 () Bool)

(assert (=> b!4935141 (= e!3083513 tp!1385215)))

(declare-fun b!4935140 () Bool)

(assert (=> b!4935140 (= e!3083514 (and (inv!73823 (xs!18258 (right!41765 (c!840959 totalInput!685)))) e!3083513))))

(assert (=> b!4934499 (= tp!1385166 (and (inv!73818 (right!41765 (c!840959 totalInput!685))) e!3083514))))

(assert (= (and b!4934499 ((_ is Node!14934) (right!41765 (c!840959 totalInput!685)))) b!4935139))

(assert (= b!4935140 b!4935141))

(assert (= (and b!4934499 ((_ is Leaf!24834) (right!41765 (c!840959 totalInput!685)))) b!4935140))

(declare-fun m!5956110 () Bool)

(assert (=> b!4935139 m!5956110))

(declare-fun m!5956112 () Bool)

(assert (=> b!4935139 m!5956112))

(declare-fun m!5956114 () Bool)

(assert (=> b!4935140 m!5956114))

(assert (=> b!4934499 m!5955398))

(declare-fun b!4935142 () Bool)

(declare-fun e!3083515 () Bool)

(declare-fun tp!1385216 () Bool)

(assert (=> b!4935142 (= e!3083515 (and tp_is_empty!36027 tp!1385216))))

(assert (=> b!4934507 (= tp!1385172 e!3083515)))

(assert (= (and b!4934507 ((_ is Cons!56822) (t!367426 (t!367426 testedSuffix!70)))) b!4935142))

(declare-fun b!4935154 () Bool)

(declare-fun e!3083518 () Bool)

(declare-fun tp!1385231 () Bool)

(declare-fun tp!1385227 () Bool)

(assert (=> b!4935154 (= e!3083518 (and tp!1385231 tp!1385227))))

(declare-fun b!4935153 () Bool)

(assert (=> b!4935153 (= e!3083518 tp_is_empty!36027)))

(assert (=> b!4934490 (= tp!1385158 e!3083518)))

(declare-fun b!4935156 () Bool)

(declare-fun tp!1385228 () Bool)

(declare-fun tp!1385229 () Bool)

(assert (=> b!4935156 (= e!3083518 (and tp!1385228 tp!1385229))))

(declare-fun b!4935155 () Bool)

(declare-fun tp!1385230 () Bool)

(assert (=> b!4935155 (= e!3083518 tp!1385230)))

(assert (= (and b!4934490 ((_ is ElementMatch!13425) (h!63271 (exprs!3567 setElem!27764)))) b!4935153))

(assert (= (and b!4934490 ((_ is Concat!21998) (h!63271 (exprs!3567 setElem!27764)))) b!4935154))

(assert (= (and b!4934490 ((_ is Star!13425) (h!63271 (exprs!3567 setElem!27764)))) b!4935155))

(assert (= (and b!4934490 ((_ is Union!13425) (h!63271 (exprs!3567 setElem!27764)))) b!4935156))

(declare-fun b!4935157 () Bool)

(declare-fun e!3083519 () Bool)

(declare-fun tp!1385232 () Bool)

(declare-fun tp!1385233 () Bool)

(assert (=> b!4935157 (= e!3083519 (and tp!1385232 tp!1385233))))

(assert (=> b!4934490 (= tp!1385159 e!3083519)))

(assert (= (and b!4934490 ((_ is Cons!56823) (t!367427 (exprs!3567 setElem!27764)))) b!4935157))

(declare-fun b_lambda!196323 () Bool)

(assert (= b_lambda!196321 (or d!1588370 b_lambda!196323)))

(declare-fun bs!1180662 () Bool)

(declare-fun d!1588692 () Bool)

(assert (= bs!1180662 (and d!1588692 d!1588370)))

(declare-fun validRegex!5947 (Regex!13425) Bool)

(assert (=> bs!1180662 (= (dynLambda!23017 lambda!245767 (h!63271 (exprs!3567 setElem!27764))) (validRegex!5947 (h!63271 (exprs!3567 setElem!27764))))))

(declare-fun m!5956150 () Bool)

(assert (=> bs!1180662 m!5956150))

(assert (=> b!4934956 d!1588692))

(check-sat (not b!4935038) (not b!4935063) (not b!4934582) (not bm!344290) (not b!4934586) (not b!4935067) (not b!4934990) (not d!1588578) (not b!4934968) (not b!4934499) (not b!4934849) (not b!4935097) (not b!4934780) (not d!1588434) (not b!4934963) (not b!4935139) (not b!4935042) (not b!4934974) (not b!4934612) (not b!4934925) (not b_lambda!196323) (not b!4934853) (not b!4934844) (not bm!344306) (not b!4934607) (not d!1588616) (not b!4934821) (not b!4934761) (not b!4935141) (not b!4934609) (not b!4934568) (not b!4934969) (not b!4935059) (not d!1588654) (not d!1588666) (not b!4935041) (not b!4934957) (not b!4935043) (not b!4934899) (not b!4935071) (not b!4934987) (not b!4934584) (not d!1588628) (not d!1588580) (not b!4934843) (not b!4934845) (not b!4935136) (not b!4934900) (not b!4935142) (not b!4934992) (not b!4935132) (not d!1588606) (not b!4934765) (not b!4935040) (not b!4934836) (not b!4934947) (not b!4934962) (not b!4934783) (not b!4934588) (not b!4935156) (not b!4935095) (not b!4935105) (not b!4934923) (not b!4935002) (not d!1588614) (not b!4935003) (not b!4935157) (not b!4934567) (not b!4935061) (not b!4934610) (not d!1588562) (not b!4935138) (not b!4934771) (not b!4935100) (not d!1588686) (not b!4934960) (not b!4935057) (not b!4934972) (not b!4934927) (not bm!344287) (not b!4934912) (not b!4934859) (not b!4934779) (not b!4935065) (not b!4934851) (not b!4934980) (not b!4934808) (not bs!1180662) (not bm!344283) (not b!4934906) (not d!1588550) (not d!1588652) (not b!4934921) (not bm!344282) (not b!4934976) (not b!4934933) (not b!4934774) (not b!4935154) (not d!1588408) (not b!4935010) (not d!1588598) (not b!4934951) (not b!4934996) (not d!1588660) (not d!1588544) (not b!4934916) (not b!4934571) (not b!4934768) (not bm!344285) (not b!4934907) (not d!1588416) (not b!4935140) (not d!1588608) (not b!4934915) (not b!4934587) (not b!4935096) (not b!4935039) (not d!1588618) (not b!4935134) (not b!4934781) (not b!4935000) (not b!4934984) (not b!4934823) (not d!1588600) (not b!4934905) (not b!4934931) (not b!4934569) (not d!1588420) (not b!4934909) (not d!1588532) (not bm!344284) (not b!4934807) (not b!4934950) (not b!4934982) (not setNonEmpty!27771) (not d!1588438) (not b!4934788) (not b!4934919) (not b!4934966) (not b!4934988) (not b!4934911) (not b!4934929) (not d!1588590) (not b!4935070) (not d!1588522) (not d!1588650) (not d!1588542) (not b!4935155) (not d!1588560) (not b!4934847) (not b!4935104) (not d!1588576) (not d!1588664) (not b!4934997) (not d!1588658) (not b!4934811) (not d!1588512) (not b!4934993) (not b!4934819) (not b!4934773) (not b!4934789) (not b!4934611) (not b!4934579) (not b!4934978) (not d!1588538) (not b!4934902) (not b!4934813) (not b!4934759) (not d!1588566) (not b!4935135) (not b!4935069) (not d!1588684) (not b!4934798) (not b!4934822) (not b!4935107) (not b!4934812) (not b!4934608) (not b!4934784) (not d!1588622) (not b!4934835) (not b!4935072) (not b!4935001) (not b!4934946) (not b!4934593) (not b!4935137) (not b!4935102) (not b!4934782) (not d!1588564) (not b!4934796) (not b!4935133) tp_is_empty!36027 (not b!4934934))
(check-sat)
