; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!516832 () Bool)

(assert start!516832)

(declare-datatypes ((C!26952 0))(
  ( (C!26953 (val!22810 Int)) )
))
(declare-datatypes ((Regex!13371 0))(
  ( (ElementMatch!13371 (c!837730 C!26952)) (Concat!21944 (regOne!27254 Regex!13371) (regTwo!27254 Regex!13371)) (EmptyExpr!13371) (Star!13371 (reg!13700 Regex!13371)) (EmptyLang!13371) (Union!13371 (regOne!27255 Regex!13371) (regTwo!27255 Regex!13371)) )
))
(declare-datatypes ((List!56805 0))(
  ( (Nil!56681) (Cons!56681 (h!63129 Regex!13371) (t!367243 List!56805)) )
))
(declare-datatypes ((Context!6026 0))(
  ( (Context!6027 (exprs!3513 List!56805)) )
))
(declare-fun setElem!27508 () Context!6026)

(declare-fun setRes!27508 () Bool)

(declare-fun setNonEmpty!27508 () Bool)

(declare-fun e!3075823 () Bool)

(declare-fun tp!1383177 () Bool)

(declare-fun inv!73448 (Context!6026) Bool)

(assert (=> setNonEmpty!27508 (= setRes!27508 (and tp!1383177 (inv!73448 setElem!27508) e!3075823))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3559 () (InoxSet Context!6026))

(declare-fun setRest!27508 () (InoxSet Context!6026))

(assert (=> setNonEmpty!27508 (= z!3559 ((_ map or) (store ((as const (Array Context!6026 Bool)) false) setElem!27508 true) setRest!27508))))

(declare-fun b!4922178 () Bool)

(declare-fun e!3075822 () Bool)

(declare-datatypes ((List!56806 0))(
  ( (Nil!56682) (Cons!56682 (h!63130 C!26952) (t!367244 List!56806)) )
))
(declare-datatypes ((IArray!29801 0))(
  ( (IArray!29802 (innerList!14958 List!56806)) )
))
(declare-datatypes ((Conc!14870 0))(
  ( (Node!14870 (left!41327 Conc!14870) (right!41657 Conc!14870) (csize!29970 Int) (cheight!15081 Int)) (Leaf!24738 (xs!18190 IArray!29801) (csize!29971 Int)) (Empty!14870) )
))
(declare-datatypes ((BalanceConc!29170 0))(
  ( (BalanceConc!29171 (c!837731 Conc!14870)) )
))
(declare-fun input!5492 () BalanceConc!29170)

(declare-fun tp!1383175 () Bool)

(declare-fun inv!73449 (Conc!14870) Bool)

(assert (=> b!4922178 (= e!3075822 (and (inv!73449 (c!837731 input!5492)) tp!1383175))))

(declare-fun b!4922179 () Bool)

(declare-fun tp!1383176 () Bool)

(assert (=> b!4922179 (= e!3075823 tp!1383176)))

(declare-fun lt!2023849 () List!56806)

(declare-datatypes ((tuple2!61156 0))(
  ( (tuple2!61157 (_1!33881 List!56806) (_2!33881 List!56806)) )
))
(declare-fun lt!2023847 () tuple2!61156)

(declare-fun lt!2023846 () List!56806)

(assert (=> start!516832 (and (= lt!2023849 (_1!33881 lt!2023847)) (= lt!2023846 (_2!33881 lt!2023847)))))

(declare-datatypes ((Unit!147115 0))(
  ( (Unit!147116) )
))
(declare-fun lt!2023843 () Unit!147115)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!655 (List!56806 List!56806 List!56806 List!56806) Unit!147115)

(assert (=> start!516832 (= lt!2023843 (lemmaConcatSameAndSameSizesThenSameLists!655 lt!2023849 lt!2023846 (_1!33881 lt!2023847) (_2!33881 lt!2023847)))))

(declare-fun lt!2023845 () List!56806)

(declare-fun lt!2023848 () Int)

(declare-fun findLongestMatchInnerZipper!56 ((InoxSet Context!6026) List!56806 Int List!56806 List!56806 Int) tuple2!61156)

(assert (=> start!516832 (= lt!2023847 (findLongestMatchInnerZipper!56 z!3559 Nil!56682 0 lt!2023845 lt!2023845 lt!2023848))))

(declare-datatypes ((tuple2!61158 0))(
  ( (tuple2!61159 (_1!33882 BalanceConc!29170) (_2!33882 BalanceConc!29170)) )
))
(declare-fun lt!2023844 () tuple2!61158)

(declare-fun list!17943 (BalanceConc!29170) List!56806)

(assert (=> start!516832 (= lt!2023846 (list!17943 (_2!33882 lt!2023844)))))

(assert (=> start!516832 (= lt!2023849 (list!17943 (_1!33882 lt!2023844)))))

(declare-fun splitAt!265 (BalanceConc!29170 Int) tuple2!61158)

(declare-fun findLongestMatchInnerZipperFast!83 ((InoxSet Context!6026) List!56806 Int List!56806 BalanceConc!29170 Int) Int)

(assert (=> start!516832 (= lt!2023844 (splitAt!265 input!5492 (findLongestMatchInnerZipperFast!83 z!3559 Nil!56682 0 lt!2023845 input!5492 lt!2023848)))))

(declare-fun size!37468 (BalanceConc!29170) Int)

(assert (=> start!516832 (= lt!2023848 (size!37468 input!5492))))

(assert (=> start!516832 (= lt!2023845 (list!17943 input!5492))))

(declare-fun isBalanced!4083 (Conc!14870) Bool)

(assert (=> start!516832 (not (isBalanced!4083 (c!837731 input!5492)))))

(declare-fun inv!73450 (BalanceConc!29170) Bool)

(assert (=> start!516832 (and (inv!73450 input!5492) e!3075822)))

(declare-fun condSetEmpty!27508 () Bool)

(assert (=> start!516832 (= condSetEmpty!27508 (= z!3559 ((as const (Array Context!6026 Bool)) false)))))

(assert (=> start!516832 setRes!27508))

(declare-fun setIsEmpty!27508 () Bool)

(assert (=> setIsEmpty!27508 setRes!27508))

(assert (= start!516832 b!4922178))

(assert (= (and start!516832 condSetEmpty!27508) setIsEmpty!27508))

(assert (= (and start!516832 (not condSetEmpty!27508)) setNonEmpty!27508))

(assert (= setNonEmpty!27508 b!4922179))

(declare-fun m!5937156 () Bool)

(assert (=> setNonEmpty!27508 m!5937156))

(declare-fun m!5937158 () Bool)

(assert (=> b!4922178 m!5937158))

(declare-fun m!5937160 () Bool)

(assert (=> start!516832 m!5937160))

(declare-fun m!5937162 () Bool)

(assert (=> start!516832 m!5937162))

(declare-fun m!5937164 () Bool)

(assert (=> start!516832 m!5937164))

(declare-fun m!5937166 () Bool)

(assert (=> start!516832 m!5937166))

(declare-fun m!5937168 () Bool)

(assert (=> start!516832 m!5937168))

(declare-fun m!5937170 () Bool)

(assert (=> start!516832 m!5937170))

(declare-fun m!5937172 () Bool)

(assert (=> start!516832 m!5937172))

(declare-fun m!5937174 () Bool)

(assert (=> start!516832 m!5937174))

(declare-fun m!5937176 () Bool)

(assert (=> start!516832 m!5937176))

(assert (=> start!516832 m!5937162))

(declare-fun m!5937178 () Bool)

(assert (=> start!516832 m!5937178))

(check-sat (not b!4922178) (not start!516832) (not setNonEmpty!27508) (not b!4922179))
(check-sat)
(get-model)

(declare-fun d!1583294 () Bool)

(declare-fun c!837737 () Bool)

(get-info :version)

(assert (=> d!1583294 (= c!837737 ((_ is Node!14870) (c!837731 input!5492)))))

(declare-fun e!3075834 () Bool)

(assert (=> d!1583294 (= (inv!73449 (c!837731 input!5492)) e!3075834)))

(declare-fun b!4922195 () Bool)

(declare-fun inv!73451 (Conc!14870) Bool)

(assert (=> b!4922195 (= e!3075834 (inv!73451 (c!837731 input!5492)))))

(declare-fun b!4922196 () Bool)

(declare-fun e!3075835 () Bool)

(assert (=> b!4922196 (= e!3075834 e!3075835)))

(declare-fun res!2101372 () Bool)

(assert (=> b!4922196 (= res!2101372 (not ((_ is Leaf!24738) (c!837731 input!5492))))))

(assert (=> b!4922196 (=> res!2101372 e!3075835)))

(declare-fun b!4922197 () Bool)

(declare-fun inv!73452 (Conc!14870) Bool)

(assert (=> b!4922197 (= e!3075835 (inv!73452 (c!837731 input!5492)))))

(assert (= (and d!1583294 c!837737) b!4922195))

(assert (= (and d!1583294 (not c!837737)) b!4922196))

(assert (= (and b!4922196 (not res!2101372)) b!4922197))

(declare-fun m!5937188 () Bool)

(assert (=> b!4922195 m!5937188))

(declare-fun m!5937190 () Bool)

(assert (=> b!4922197 m!5937190))

(assert (=> b!4922178 d!1583294))

(declare-fun d!1583302 () Bool)

(declare-fun list!17944 (Conc!14870) List!56806)

(assert (=> d!1583302 (= (list!17943 (_1!33882 lt!2023844)) (list!17944 (c!837731 (_1!33882 lt!2023844))))))

(declare-fun bs!1179207 () Bool)

(assert (= bs!1179207 d!1583302))

(declare-fun m!5937192 () Bool)

(assert (=> bs!1179207 m!5937192))

(assert (=> start!516832 d!1583302))

(declare-fun d!1583304 () Bool)

(assert (=> d!1583304 (= (list!17943 (_2!33882 lt!2023844)) (list!17944 (c!837731 (_2!33882 lt!2023844))))))

(declare-fun bs!1179208 () Bool)

(assert (= bs!1179208 d!1583304))

(declare-fun m!5937194 () Bool)

(assert (=> bs!1179208 m!5937194))

(assert (=> start!516832 d!1583304))

(declare-fun b!4922250 () Bool)

(declare-fun e!3075864 () tuple2!61156)

(assert (=> b!4922250 (= e!3075864 (tuple2!61157 Nil!56682 Nil!56682))))

(declare-fun lt!2023929 () List!56806)

(declare-fun bm!342786 () Bool)

(declare-fun call!342792 () tuple2!61156)

(declare-fun call!342793 () (InoxSet Context!6026))

(declare-fun call!342798 () List!56806)

(assert (=> bm!342786 (= call!342792 (findLongestMatchInnerZipper!56 call!342793 lt!2023929 (+ 0 1) call!342798 lt!2023845 lt!2023848))))

(declare-fun b!4922251 () Bool)

(declare-fun c!837751 () Bool)

(declare-fun call!342796 () Bool)

(assert (=> b!4922251 (= c!837751 call!342796)))

(declare-fun lt!2023913 () Unit!147115)

(declare-fun lt!2023917 () Unit!147115)

(assert (=> b!4922251 (= lt!2023913 lt!2023917)))

(declare-fun lt!2023922 () C!26952)

(declare-fun lt!2023935 () List!56806)

(declare-fun ++!12319 (List!56806 List!56806) List!56806)

(assert (=> b!4922251 (= (++!12319 (++!12319 Nil!56682 (Cons!56682 lt!2023922 Nil!56682)) lt!2023935) lt!2023845)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1388 (List!56806 C!26952 List!56806 List!56806) Unit!147115)

(assert (=> b!4922251 (= lt!2023917 (lemmaMoveElementToOtherListKeepsConcatEq!1388 Nil!56682 lt!2023922 lt!2023935 lt!2023845))))

(declare-fun tail!9664 (List!56806) List!56806)

(assert (=> b!4922251 (= lt!2023935 (tail!9664 lt!2023845))))

(declare-fun head!10517 (List!56806) C!26952)

(assert (=> b!4922251 (= lt!2023922 (head!10517 lt!2023845))))

(declare-fun lt!2023926 () Unit!147115)

(declare-fun lt!2023932 () Unit!147115)

(assert (=> b!4922251 (= lt!2023926 lt!2023932)))

(declare-fun isPrefix!4958 (List!56806 List!56806) Bool)

(declare-fun getSuffix!2946 (List!56806 List!56806) List!56806)

(assert (=> b!4922251 (isPrefix!4958 (++!12319 Nil!56682 (Cons!56682 (head!10517 (getSuffix!2946 lt!2023845 Nil!56682)) Nil!56682)) lt!2023845)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!770 (List!56806 List!56806) Unit!147115)

(assert (=> b!4922251 (= lt!2023932 (lemmaAddHeadSuffixToPrefixStillPrefix!770 Nil!56682 lt!2023845))))

(assert (=> b!4922251 (= lt!2023929 (++!12319 Nil!56682 (Cons!56682 (head!10517 lt!2023845) Nil!56682)))))

(declare-fun lt!2023916 () Unit!147115)

(declare-fun e!3075867 () Unit!147115)

(assert (=> b!4922251 (= lt!2023916 e!3075867)))

(declare-fun c!837752 () Bool)

(declare-fun size!37469 (List!56806) Int)

(assert (=> b!4922251 (= c!837752 (= (size!37469 Nil!56682) (size!37469 lt!2023845)))))

(declare-fun lt!2023914 () Unit!147115)

(declare-fun lt!2023918 () Unit!147115)

(assert (=> b!4922251 (= lt!2023914 lt!2023918)))

(assert (=> b!4922251 (<= (size!37469 Nil!56682) (size!37469 lt!2023845))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!682 (List!56806 List!56806) Unit!147115)

(assert (=> b!4922251 (= lt!2023918 (lemmaIsPrefixThenSmallerEqSize!682 Nil!56682 lt!2023845))))

(declare-fun e!3075866 () tuple2!61156)

(declare-fun e!3075861 () tuple2!61156)

(assert (=> b!4922251 (= e!3075866 e!3075861)))

(declare-fun b!4922252 () Bool)

(declare-fun e!3075863 () tuple2!61156)

(assert (=> b!4922252 (= e!3075861 e!3075863)))

(declare-fun lt!2023930 () tuple2!61156)

(assert (=> b!4922252 (= lt!2023930 call!342792)))

(declare-fun c!837755 () Bool)

(declare-fun isEmpty!30562 (List!56806) Bool)

(assert (=> b!4922252 (= c!837755 (isEmpty!30562 (_1!33881 lt!2023930)))))

(declare-fun bm!342788 () Bool)

(declare-fun call!342791 () C!26952)

(assert (=> bm!342788 (= call!342791 (head!10517 lt!2023845))))

(declare-fun b!4922253 () Bool)

(assert (=> b!4922253 (= e!3075863 (tuple2!61157 Nil!56682 lt!2023845))))

(declare-fun bm!342789 () Bool)

(declare-fun call!342794 () Unit!147115)

(declare-fun lemmaIsPrefixRefl!3354 (List!56806 List!56806) Unit!147115)

(assert (=> bm!342789 (= call!342794 (lemmaIsPrefixRefl!3354 lt!2023845 lt!2023845))))

(declare-fun bm!342790 () Bool)

(declare-fun call!342797 () Unit!147115)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1116 (List!56806 List!56806 List!56806) Unit!147115)

(assert (=> bm!342790 (= call!342797 (lemmaIsPrefixSameLengthThenSameList!1116 lt!2023845 Nil!56682 lt!2023845))))

(declare-fun b!4922254 () Bool)

(assert (=> b!4922254 (= e!3075864 (tuple2!61157 Nil!56682 lt!2023845))))

(declare-fun d!1583306 () Bool)

(declare-fun e!3075865 () Bool)

(assert (=> d!1583306 e!3075865))

(declare-fun res!2101402 () Bool)

(assert (=> d!1583306 (=> (not res!2101402) (not e!3075865))))

(declare-fun lt!2023927 () tuple2!61156)

(assert (=> d!1583306 (= res!2101402 (= (++!12319 (_1!33881 lt!2023927) (_2!33881 lt!2023927)) lt!2023845))))

(declare-fun e!3075868 () tuple2!61156)

(assert (=> d!1583306 (= lt!2023927 e!3075868)))

(declare-fun c!837750 () Bool)

(declare-fun lostCauseZipper!688 ((InoxSet Context!6026)) Bool)

(assert (=> d!1583306 (= c!837750 (lostCauseZipper!688 z!3559))))

(declare-fun lt!2023915 () Unit!147115)

(declare-fun Unit!147117 () Unit!147115)

(assert (=> d!1583306 (= lt!2023915 Unit!147117)))

(assert (=> d!1583306 (= (getSuffix!2946 lt!2023845 Nil!56682) lt!2023845)))

(declare-fun lt!2023920 () Unit!147115)

(declare-fun lt!2023921 () Unit!147115)

(assert (=> d!1583306 (= lt!2023920 lt!2023921)))

(declare-fun lt!2023912 () List!56806)

(assert (=> d!1583306 (= lt!2023845 lt!2023912)))

(declare-fun lemmaSamePrefixThenSameSuffix!2362 (List!56806 List!56806 List!56806 List!56806 List!56806) Unit!147115)

(assert (=> d!1583306 (= lt!2023921 (lemmaSamePrefixThenSameSuffix!2362 Nil!56682 lt!2023845 Nil!56682 lt!2023912 lt!2023845))))

(assert (=> d!1583306 (= lt!2023912 (getSuffix!2946 lt!2023845 Nil!56682))))

(declare-fun lt!2023923 () Unit!147115)

(declare-fun lt!2023924 () Unit!147115)

(assert (=> d!1583306 (= lt!2023923 lt!2023924)))

(assert (=> d!1583306 (isPrefix!4958 Nil!56682 (++!12319 Nil!56682 lt!2023845))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3182 (List!56806 List!56806) Unit!147115)

(assert (=> d!1583306 (= lt!2023924 (lemmaConcatTwoListThenFirstIsPrefix!3182 Nil!56682 lt!2023845))))

(assert (=> d!1583306 (= (++!12319 Nil!56682 lt!2023845) lt!2023845)))

(assert (=> d!1583306 (= (findLongestMatchInnerZipper!56 z!3559 Nil!56682 0 lt!2023845 lt!2023845 lt!2023848) lt!2023927)))

(declare-fun bm!342787 () Bool)

(declare-fun nullableZipper!807 ((InoxSet Context!6026)) Bool)

(assert (=> bm!342787 (= call!342796 (nullableZipper!807 z!3559))))

(declare-fun b!4922255 () Bool)

(declare-fun Unit!147118 () Unit!147115)

(assert (=> b!4922255 (= e!3075867 Unit!147118)))

(declare-fun bm!342791 () Bool)

(declare-fun call!342795 () Bool)

(assert (=> bm!342791 (= call!342795 (isPrefix!4958 lt!2023845 lt!2023845))))

(declare-fun b!4922256 () Bool)

(assert (=> b!4922256 (= e!3075868 (tuple2!61157 Nil!56682 lt!2023845))))

(declare-fun bm!342792 () Bool)

(assert (=> bm!342792 (= call!342798 (tail!9664 lt!2023845))))

(declare-fun b!4922257 () Bool)

(assert (=> b!4922257 (= e!3075868 e!3075866)))

(declare-fun c!837754 () Bool)

(assert (=> b!4922257 (= c!837754 (= 0 lt!2023848))))

(declare-fun b!4922258 () Bool)

(assert (=> b!4922258 (= e!3075861 call!342792)))

(declare-fun bm!342793 () Bool)

(declare-fun derivationStepZipper!585 ((InoxSet Context!6026) C!26952) (InoxSet Context!6026))

(assert (=> bm!342793 (= call!342793 (derivationStepZipper!585 z!3559 call!342791))))

(declare-fun b!4922259 () Bool)

(assert (=> b!4922259 (= e!3075863 lt!2023930)))

(declare-fun b!4922260 () Bool)

(declare-fun e!3075862 () Bool)

(assert (=> b!4922260 (= e!3075865 e!3075862)))

(declare-fun res!2101401 () Bool)

(assert (=> b!4922260 (=> res!2101401 e!3075862)))

(assert (=> b!4922260 (= res!2101401 (isEmpty!30562 (_1!33881 lt!2023927)))))

(declare-fun b!4922261 () Bool)

(assert (=> b!4922261 (= e!3075862 (>= (size!37469 (_1!33881 lt!2023927)) (size!37469 Nil!56682)))))

(declare-fun b!4922262 () Bool)

(declare-fun c!837753 () Bool)

(assert (=> b!4922262 (= c!837753 call!342796)))

(declare-fun lt!2023928 () Unit!147115)

(declare-fun lt!2023933 () Unit!147115)

(assert (=> b!4922262 (= lt!2023928 lt!2023933)))

(assert (=> b!4922262 (= lt!2023845 Nil!56682)))

(assert (=> b!4922262 (= lt!2023933 call!342797)))

(declare-fun lt!2023936 () Unit!147115)

(declare-fun lt!2023925 () Unit!147115)

(assert (=> b!4922262 (= lt!2023936 lt!2023925)))

(assert (=> b!4922262 call!342795))

(assert (=> b!4922262 (= lt!2023925 call!342794)))

(assert (=> b!4922262 (= e!3075866 e!3075864)))

(declare-fun b!4922263 () Bool)

(declare-fun Unit!147119 () Unit!147115)

(assert (=> b!4922263 (= e!3075867 Unit!147119)))

(declare-fun lt!2023911 () Unit!147115)

(assert (=> b!4922263 (= lt!2023911 call!342794)))

(assert (=> b!4922263 call!342795))

(declare-fun lt!2023934 () Unit!147115)

(assert (=> b!4922263 (= lt!2023934 lt!2023911)))

(declare-fun lt!2023919 () Unit!147115)

(assert (=> b!4922263 (= lt!2023919 call!342797)))

(assert (=> b!4922263 (= lt!2023845 Nil!56682)))

(declare-fun lt!2023931 () Unit!147115)

(assert (=> b!4922263 (= lt!2023931 lt!2023919)))

(assert (=> b!4922263 false))

(assert (= (and d!1583306 c!837750) b!4922256))

(assert (= (and d!1583306 (not c!837750)) b!4922257))

(assert (= (and b!4922257 c!837754) b!4922262))

(assert (= (and b!4922257 (not c!837754)) b!4922251))

(assert (= (and b!4922262 c!837753) b!4922250))

(assert (= (and b!4922262 (not c!837753)) b!4922254))

(assert (= (and b!4922251 c!837752) b!4922263))

(assert (= (and b!4922251 (not c!837752)) b!4922255))

(assert (= (and b!4922251 c!837751) b!4922252))

(assert (= (and b!4922251 (not c!837751)) b!4922258))

(assert (= (and b!4922252 c!837755) b!4922253))

(assert (= (and b!4922252 (not c!837755)) b!4922259))

(assert (= (or b!4922252 b!4922258) bm!342792))

(assert (= (or b!4922252 b!4922258) bm!342788))

(assert (= (or b!4922252 b!4922258) bm!342793))

(assert (= (or b!4922252 b!4922258) bm!342786))

(assert (= (or b!4922262 b!4922263) bm!342791))

(assert (= (or b!4922262 b!4922263) bm!342789))

(assert (= (or b!4922262 b!4922263) bm!342790))

(assert (= (or b!4922262 b!4922251) bm!342787))

(assert (= (and d!1583306 res!2101402) b!4922260))

(assert (= (and b!4922260 (not res!2101401)) b!4922261))

(declare-fun m!5937224 () Bool)

(assert (=> bm!342787 m!5937224))

(declare-fun m!5937226 () Bool)

(assert (=> bm!342793 m!5937226))

(declare-fun m!5937228 () Bool)

(assert (=> bm!342790 m!5937228))

(declare-fun m!5937230 () Bool)

(assert (=> bm!342791 m!5937230))

(declare-fun m!5937232 () Bool)

(assert (=> bm!342792 m!5937232))

(declare-fun m!5937234 () Bool)

(assert (=> bm!342789 m!5937234))

(declare-fun m!5937236 () Bool)

(assert (=> bm!342788 m!5937236))

(declare-fun m!5937238 () Bool)

(assert (=> b!4922251 m!5937238))

(declare-fun m!5937240 () Bool)

(assert (=> b!4922251 m!5937240))

(declare-fun m!5937242 () Bool)

(assert (=> b!4922251 m!5937242))

(declare-fun m!5937244 () Bool)

(assert (=> b!4922251 m!5937244))

(declare-fun m!5937246 () Bool)

(assert (=> b!4922251 m!5937246))

(declare-fun m!5937248 () Bool)

(assert (=> b!4922251 m!5937248))

(declare-fun m!5937250 () Bool)

(assert (=> b!4922251 m!5937250))

(declare-fun m!5937252 () Bool)

(assert (=> b!4922251 m!5937252))

(declare-fun m!5937254 () Bool)

(assert (=> b!4922251 m!5937254))

(assert (=> b!4922251 m!5937236))

(assert (=> b!4922251 m!5937238))

(assert (=> b!4922251 m!5937244))

(assert (=> b!4922251 m!5937232))

(declare-fun m!5937256 () Bool)

(assert (=> b!4922251 m!5937256))

(declare-fun m!5937258 () Bool)

(assert (=> b!4922251 m!5937258))

(assert (=> b!4922251 m!5937248))

(declare-fun m!5937260 () Bool)

(assert (=> b!4922251 m!5937260))

(declare-fun m!5937262 () Bool)

(assert (=> bm!342786 m!5937262))

(declare-fun m!5937264 () Bool)

(assert (=> b!4922252 m!5937264))

(assert (=> d!1583306 m!5937238))

(declare-fun m!5937266 () Bool)

(assert (=> d!1583306 m!5937266))

(declare-fun m!5937268 () Bool)

(assert (=> d!1583306 m!5937268))

(declare-fun m!5937270 () Bool)

(assert (=> d!1583306 m!5937270))

(declare-fun m!5937272 () Bool)

(assert (=> d!1583306 m!5937272))

(assert (=> d!1583306 m!5937266))

(declare-fun m!5937274 () Bool)

(assert (=> d!1583306 m!5937274))

(declare-fun m!5937276 () Bool)

(assert (=> d!1583306 m!5937276))

(declare-fun m!5937278 () Bool)

(assert (=> b!4922260 m!5937278))

(declare-fun m!5937280 () Bool)

(assert (=> b!4922261 m!5937280))

(assert (=> b!4922261 m!5937256))

(assert (=> start!516832 d!1583306))

(declare-fun b!4922276 () Bool)

(declare-fun res!2101416 () Bool)

(declare-fun e!3075874 () Bool)

(assert (=> b!4922276 (=> (not res!2101416) (not e!3075874))))

(assert (=> b!4922276 (= res!2101416 (isBalanced!4083 (left!41327 (c!837731 input!5492))))))

(declare-fun b!4922277 () Bool)

(declare-fun res!2101417 () Bool)

(assert (=> b!4922277 (=> (not res!2101417) (not e!3075874))))

(declare-fun isEmpty!30564 (Conc!14870) Bool)

(assert (=> b!4922277 (= res!2101417 (not (isEmpty!30564 (left!41327 (c!837731 input!5492)))))))

(declare-fun b!4922278 () Bool)

(declare-fun res!2101418 () Bool)

(assert (=> b!4922278 (=> (not res!2101418) (not e!3075874))))

(declare-fun height!1980 (Conc!14870) Int)

(assert (=> b!4922278 (= res!2101418 (<= (- (height!1980 (left!41327 (c!837731 input!5492))) (height!1980 (right!41657 (c!837731 input!5492)))) 1))))

(declare-fun b!4922279 () Bool)

(declare-fun e!3075873 () Bool)

(assert (=> b!4922279 (= e!3075873 e!3075874)))

(declare-fun res!2101419 () Bool)

(assert (=> b!4922279 (=> (not res!2101419) (not e!3075874))))

(assert (=> b!4922279 (= res!2101419 (<= (- 1) (- (height!1980 (left!41327 (c!837731 input!5492))) (height!1980 (right!41657 (c!837731 input!5492))))))))

(declare-fun b!4922280 () Bool)

(declare-fun res!2101415 () Bool)

(assert (=> b!4922280 (=> (not res!2101415) (not e!3075874))))

(assert (=> b!4922280 (= res!2101415 (isBalanced!4083 (right!41657 (c!837731 input!5492))))))

(declare-fun d!1583314 () Bool)

(declare-fun res!2101420 () Bool)

(assert (=> d!1583314 (=> res!2101420 e!3075873)))

(assert (=> d!1583314 (= res!2101420 (not ((_ is Node!14870) (c!837731 input!5492))))))

(assert (=> d!1583314 (= (isBalanced!4083 (c!837731 input!5492)) e!3075873)))

(declare-fun b!4922281 () Bool)

(assert (=> b!4922281 (= e!3075874 (not (isEmpty!30564 (right!41657 (c!837731 input!5492)))))))

(assert (= (and d!1583314 (not res!2101420)) b!4922279))

(assert (= (and b!4922279 res!2101419) b!4922278))

(assert (= (and b!4922278 res!2101418) b!4922276))

(assert (= (and b!4922276 res!2101416) b!4922280))

(assert (= (and b!4922280 res!2101415) b!4922277))

(assert (= (and b!4922277 res!2101417) b!4922281))

(declare-fun m!5937282 () Bool)

(assert (=> b!4922280 m!5937282))

(declare-fun m!5937284 () Bool)

(assert (=> b!4922281 m!5937284))

(declare-fun m!5937286 () Bool)

(assert (=> b!4922276 m!5937286))

(declare-fun m!5937288 () Bool)

(assert (=> b!4922278 m!5937288))

(declare-fun m!5937290 () Bool)

(assert (=> b!4922278 m!5937290))

(declare-fun m!5937292 () Bool)

(assert (=> b!4922277 m!5937292))

(assert (=> b!4922279 m!5937288))

(assert (=> b!4922279 m!5937290))

(assert (=> start!516832 d!1583314))

(declare-fun d!1583316 () Bool)

(declare-fun lt!2023939 () Int)

(assert (=> d!1583316 (= lt!2023939 (size!37469 (list!17943 input!5492)))))

(declare-fun size!37472 (Conc!14870) Int)

(assert (=> d!1583316 (= lt!2023939 (size!37472 (c!837731 input!5492)))))

(assert (=> d!1583316 (= (size!37468 input!5492) lt!2023939)))

(declare-fun bs!1179210 () Bool)

(assert (= bs!1179210 d!1583316))

(assert (=> bs!1179210 m!5937178))

(assert (=> bs!1179210 m!5937178))

(declare-fun m!5937294 () Bool)

(assert (=> bs!1179210 m!5937294))

(declare-fun m!5937296 () Bool)

(assert (=> bs!1179210 m!5937296))

(assert (=> start!516832 d!1583316))

(declare-fun d!1583318 () Bool)

(assert (=> d!1583318 (and (= lt!2023849 (_1!33881 lt!2023847)) (= lt!2023846 (_2!33881 lt!2023847)))))

(declare-fun lt!2023942 () Unit!147115)

(declare-fun choose!36029 (List!56806 List!56806 List!56806 List!56806) Unit!147115)

(assert (=> d!1583318 (= lt!2023942 (choose!36029 lt!2023849 lt!2023846 (_1!33881 lt!2023847) (_2!33881 lt!2023847)))))

(assert (=> d!1583318 (= (++!12319 lt!2023849 lt!2023846) (++!12319 (_1!33881 lt!2023847) (_2!33881 lt!2023847)))))

(assert (=> d!1583318 (= (lemmaConcatSameAndSameSizesThenSameLists!655 lt!2023849 lt!2023846 (_1!33881 lt!2023847) (_2!33881 lt!2023847)) lt!2023942)))

(declare-fun bs!1179211 () Bool)

(assert (= bs!1179211 d!1583318))

(declare-fun m!5937298 () Bool)

(assert (=> bs!1179211 m!5937298))

(declare-fun m!5937300 () Bool)

(assert (=> bs!1179211 m!5937300))

(declare-fun m!5937302 () Bool)

(assert (=> bs!1179211 m!5937302))

(assert (=> start!516832 d!1583318))

(declare-fun d!1583320 () Bool)

(assert (=> d!1583320 (= (inv!73450 input!5492) (isBalanced!4083 (c!837731 input!5492)))))

(declare-fun bs!1179212 () Bool)

(assert (= bs!1179212 d!1583320))

(assert (=> bs!1179212 m!5937170))

(assert (=> start!516832 d!1583320))

(declare-fun d!1583322 () Bool)

(declare-fun e!3075877 () Bool)

(assert (=> d!1583322 e!3075877))

(declare-fun res!2101425 () Bool)

(assert (=> d!1583322 (=> (not res!2101425) (not e!3075877))))

(declare-fun lt!2023948 () tuple2!61158)

(assert (=> d!1583322 (= res!2101425 (isBalanced!4083 (c!837731 (_1!33882 lt!2023948))))))

(declare-datatypes ((tuple2!61162 0))(
  ( (tuple2!61163 (_1!33884 Conc!14870) (_2!33884 Conc!14870)) )
))
(declare-fun lt!2023947 () tuple2!61162)

(assert (=> d!1583322 (= lt!2023948 (tuple2!61159 (BalanceConc!29171 (_1!33884 lt!2023947)) (BalanceConc!29171 (_2!33884 lt!2023947))))))

(declare-fun splitAt!267 (Conc!14870 Int) tuple2!61162)

(assert (=> d!1583322 (= lt!2023947 (splitAt!267 (c!837731 input!5492) (findLongestMatchInnerZipperFast!83 z!3559 Nil!56682 0 lt!2023845 input!5492 lt!2023848)))))

(assert (=> d!1583322 (isBalanced!4083 (c!837731 input!5492))))

(assert (=> d!1583322 (= (splitAt!265 input!5492 (findLongestMatchInnerZipperFast!83 z!3559 Nil!56682 0 lt!2023845 input!5492 lt!2023848)) lt!2023948)))

(declare-fun b!4922286 () Bool)

(declare-fun res!2101426 () Bool)

(assert (=> b!4922286 (=> (not res!2101426) (not e!3075877))))

(assert (=> b!4922286 (= res!2101426 (isBalanced!4083 (c!837731 (_2!33882 lt!2023948))))))

(declare-fun b!4922287 () Bool)

(declare-fun splitAtIndex!99 (List!56806 Int) tuple2!61156)

(assert (=> b!4922287 (= e!3075877 (= (tuple2!61157 (list!17943 (_1!33882 lt!2023948)) (list!17943 (_2!33882 lt!2023948))) (splitAtIndex!99 (list!17943 input!5492) (findLongestMatchInnerZipperFast!83 z!3559 Nil!56682 0 lt!2023845 input!5492 lt!2023848))))))

(assert (= (and d!1583322 res!2101425) b!4922286))

(assert (= (and b!4922286 res!2101426) b!4922287))

(declare-fun m!5937304 () Bool)

(assert (=> d!1583322 m!5937304))

(assert (=> d!1583322 m!5937162))

(declare-fun m!5937306 () Bool)

(assert (=> d!1583322 m!5937306))

(assert (=> d!1583322 m!5937170))

(declare-fun m!5937308 () Bool)

(assert (=> b!4922286 m!5937308))

(declare-fun m!5937310 () Bool)

(assert (=> b!4922287 m!5937310))

(declare-fun m!5937312 () Bool)

(assert (=> b!4922287 m!5937312))

(assert (=> b!4922287 m!5937178))

(assert (=> b!4922287 m!5937178))

(assert (=> b!4922287 m!5937162))

(declare-fun m!5937314 () Bool)

(assert (=> b!4922287 m!5937314))

(assert (=> start!516832 d!1583322))

(declare-fun d!1583324 () Bool)

(assert (=> d!1583324 (= (list!17943 input!5492) (list!17944 (c!837731 input!5492)))))

(declare-fun bs!1179213 () Bool)

(assert (= bs!1179213 d!1583324))

(declare-fun m!5937316 () Bool)

(assert (=> bs!1179213 m!5937316))

(assert (=> start!516832 d!1583324))

(declare-fun b!4922344 () Bool)

(declare-fun c!837786 () Bool)

(declare-fun call!342850 () Bool)

(assert (=> b!4922344 (= c!837786 call!342850)))

(declare-fun lt!2024193 () Unit!147115)

(declare-fun lt!2024177 () Unit!147115)

(assert (=> b!4922344 (= lt!2024193 lt!2024177)))

(declare-fun lt!2024165 () C!26952)

(declare-fun lt!2024162 () List!56806)

(declare-fun lt!2024172 () List!56806)

(assert (=> b!4922344 (= (++!12319 (++!12319 Nil!56682 (Cons!56682 lt!2024165 Nil!56682)) lt!2024162) lt!2024172)))

(assert (=> b!4922344 (= lt!2024177 (lemmaMoveElementToOtherListKeepsConcatEq!1388 Nil!56682 lt!2024165 lt!2024162 lt!2024172))))

(declare-fun call!342852 () List!56806)

(assert (=> b!4922344 (= lt!2024172 call!342852)))

(assert (=> b!4922344 (= lt!2024162 (tail!9664 lt!2023845))))

(declare-fun apply!13651 (BalanceConc!29170 Int) C!26952)

(assert (=> b!4922344 (= lt!2024165 (apply!13651 input!5492 0))))

(declare-fun lt!2024160 () Unit!147115)

(declare-fun lt!2024176 () Unit!147115)

(assert (=> b!4922344 (= lt!2024160 lt!2024176)))

(declare-fun lt!2024174 () List!56806)

(assert (=> b!4922344 (isPrefix!4958 (++!12319 Nil!56682 (Cons!56682 (head!10517 (getSuffix!2946 lt!2024174 Nil!56682)) Nil!56682)) lt!2024174)))

(assert (=> b!4922344 (= lt!2024176 (lemmaAddHeadSuffixToPrefixStillPrefix!770 Nil!56682 lt!2024174))))

(assert (=> b!4922344 (= lt!2024174 call!342852)))

(declare-fun lt!2024164 () Unit!147115)

(declare-fun e!3075909 () Unit!147115)

(assert (=> b!4922344 (= lt!2024164 e!3075909)))

(declare-fun c!837784 () Bool)

(assert (=> b!4922344 (= c!837784 (= (size!37469 Nil!56682) (size!37468 input!5492)))))

(declare-fun lt!2024159 () Unit!147115)

(declare-fun lt!2024194 () Unit!147115)

(assert (=> b!4922344 (= lt!2024159 lt!2024194)))

(declare-fun lt!2024178 () List!56806)

(assert (=> b!4922344 (<= (size!37469 Nil!56682) (size!37469 lt!2024178))))

(assert (=> b!4922344 (= lt!2024194 (lemmaIsPrefixThenSmallerEqSize!682 Nil!56682 lt!2024178))))

(assert (=> b!4922344 (= lt!2024178 call!342852)))

(declare-fun lt!2024171 () Unit!147115)

(declare-fun lt!2024163 () Unit!147115)

(assert (=> b!4922344 (= lt!2024171 lt!2024163)))

(declare-fun lt!2024188 () List!56806)

(declare-fun drop!2222 (List!56806 Int) List!56806)

(declare-fun apply!13652 (List!56806 Int) C!26952)

(assert (=> b!4922344 (= (head!10517 (drop!2222 lt!2024188 0)) (apply!13652 lt!2024188 0))))

(declare-fun lemmaDropApply!1280 (List!56806 Int) Unit!147115)

(assert (=> b!4922344 (= lt!2024163 (lemmaDropApply!1280 lt!2024188 0))))

(assert (=> b!4922344 (= lt!2024188 call!342852)))

(declare-fun lt!2024198 () Unit!147115)

(declare-fun lt!2024168 () Unit!147115)

(assert (=> b!4922344 (= lt!2024198 lt!2024168)))

(declare-fun lt!2024195 () List!56806)

(declare-fun lt!2024200 () List!56806)

(assert (=> b!4922344 (and (= lt!2024195 Nil!56682) (= lt!2024200 lt!2023845))))

(assert (=> b!4922344 (= lt!2024168 (lemmaConcatSameAndSameSizesThenSameLists!655 lt!2024195 lt!2024200 Nil!56682 lt!2023845))))

(declare-fun lt!2024180 () tuple2!61158)

(assert (=> b!4922344 (= lt!2024200 (list!17943 (_2!33882 lt!2024180)))))

(assert (=> b!4922344 (= lt!2024195 (list!17943 (_1!33882 lt!2024180)))))

(assert (=> b!4922344 (= lt!2024180 (splitAt!265 input!5492 0))))

(declare-fun e!3075908 () Int)

(declare-fun e!3075906 () Int)

(assert (=> b!4922344 (= e!3075908 e!3075906)))

(declare-fun bm!342844 () Bool)

(declare-fun call!342858 () C!26952)

(assert (=> bm!342844 (= call!342858 (apply!13651 input!5492 0))))

(declare-fun b!4922345 () Bool)

(declare-fun Unit!147123 () Unit!147115)

(assert (=> b!4922345 (= e!3075909 Unit!147123)))

(declare-fun lt!2024187 () List!56806)

(assert (=> b!4922345 (= lt!2024187 call!342852)))

(declare-fun lt!2024185 () List!56806)

(assert (=> b!4922345 (= lt!2024185 call!342852)))

(declare-fun lt!2024183 () Unit!147115)

(declare-fun call!342853 () Unit!147115)

(assert (=> b!4922345 (= lt!2024183 call!342853)))

(declare-fun call!342857 () Bool)

(assert (=> b!4922345 call!342857))

(declare-fun lt!2024170 () Unit!147115)

(assert (=> b!4922345 (= lt!2024170 lt!2024183)))

(declare-fun lt!2024167 () List!56806)

(assert (=> b!4922345 (= lt!2024167 call!342852)))

(declare-fun lt!2024161 () Unit!147115)

(declare-fun call!342856 () Unit!147115)

(assert (=> b!4922345 (= lt!2024161 call!342856)))

(assert (=> b!4922345 (= lt!2024167 Nil!56682)))

(declare-fun lt!2024190 () Unit!147115)

(assert (=> b!4922345 (= lt!2024190 lt!2024161)))

(assert (=> b!4922345 false))

(declare-fun b!4922346 () Bool)

(declare-fun e!3075907 () Int)

(assert (=> b!4922346 (= e!3075907 e!3075908)))

(declare-fun c!837787 () Bool)

(assert (=> b!4922346 (= c!837787 (= 0 lt!2023848))))

(declare-fun lt!2024189 () List!56806)

(declare-fun bm!342845 () Bool)

(declare-fun lt!2024182 () List!56806)

(assert (=> bm!342845 (= call!342853 (lemmaIsPrefixRefl!3354 (ite c!837787 lt!2024189 lt!2024187) (ite c!837787 lt!2024182 lt!2024185)))))

(declare-fun bm!342846 () Bool)

(declare-fun call!342851 () List!56806)

(assert (=> bm!342846 (= call!342851 (++!12319 Nil!56682 (Cons!56682 call!342858 Nil!56682)))))

(declare-fun bm!342847 () Bool)

(declare-fun call!342854 () List!56806)

(assert (=> bm!342847 (= call!342854 (tail!9664 lt!2023845))))

(declare-fun b!4922347 () Bool)

(assert (=> b!4922347 (= e!3075907 0)))

(declare-fun bm!342848 () Bool)

(declare-fun call!342855 () (InoxSet Context!6026))

(assert (=> bm!342848 (= call!342855 (derivationStepZipper!585 z!3559 call!342858))))

(declare-fun call!342849 () Int)

(declare-fun bm!342849 () Bool)

(assert (=> bm!342849 (= call!342849 (findLongestMatchInnerZipperFast!83 call!342855 call!342851 (+ 0 1) call!342854 input!5492 lt!2023848))))

(declare-fun b!4922348 () Bool)

(declare-fun lt!2024169 () Int)

(assert (=> b!4922348 (= e!3075906 (ite (= lt!2024169 0) 0 lt!2024169))))

(assert (=> b!4922348 (= lt!2024169 call!342849)))

(declare-fun bm!342850 () Bool)

(assert (=> bm!342850 (= call!342857 (isPrefix!4958 (ite c!837787 lt!2024189 lt!2024187) (ite c!837787 lt!2024182 lt!2024185)))))

(declare-fun b!4922349 () Bool)

(declare-fun Unit!147124 () Unit!147115)

(assert (=> b!4922349 (= e!3075909 Unit!147124)))

(declare-fun b!4922350 () Bool)

(declare-fun e!3075910 () Int)

(assert (=> b!4922350 (= e!3075910 0)))

(declare-fun b!4922351 () Bool)

(declare-fun c!837785 () Bool)

(assert (=> b!4922351 (= c!837785 call!342850)))

(declare-fun lt!2024175 () Unit!147115)

(declare-fun lt!2024197 () Unit!147115)

(assert (=> b!4922351 (= lt!2024175 lt!2024197)))

(declare-fun lt!2024179 () List!56806)

(assert (=> b!4922351 (= lt!2024179 Nil!56682)))

(assert (=> b!4922351 (= lt!2024197 call!342856)))

(assert (=> b!4922351 (= lt!2024179 call!342852)))

(declare-fun lt!2024192 () Unit!147115)

(declare-fun lt!2024173 () Unit!147115)

(assert (=> b!4922351 (= lt!2024192 lt!2024173)))

(assert (=> b!4922351 call!342857))

(assert (=> b!4922351 (= lt!2024173 call!342853)))

(assert (=> b!4922351 (= lt!2024182 call!342852)))

(assert (=> b!4922351 (= lt!2024189 call!342852)))

(assert (=> b!4922351 (= e!3075908 e!3075910)))

(declare-fun b!4922352 () Bool)

(assert (=> b!4922352 (= e!3075906 call!342849)))

(declare-fun bm!342851 () Bool)

(assert (=> bm!342851 (= call!342852 (list!17943 input!5492))))

(declare-fun b!4922353 () Bool)

(assert (=> b!4922353 (= e!3075910 0)))

(declare-fun d!1583326 () Bool)

(declare-fun lt!2024196 () Int)

(assert (=> d!1583326 (= (size!37469 (_1!33881 (findLongestMatchInnerZipper!56 z!3559 Nil!56682 0 lt!2023845 (list!17943 input!5492) lt!2023848))) lt!2024196)))

(assert (=> d!1583326 (= lt!2024196 e!3075907)))

(declare-fun c!837788 () Bool)

(assert (=> d!1583326 (= c!837788 (lostCauseZipper!688 z!3559))))

(declare-fun lt!2024166 () Unit!147115)

(declare-fun Unit!147125 () Unit!147115)

(assert (=> d!1583326 (= lt!2024166 Unit!147125)))

(assert (=> d!1583326 (= (getSuffix!2946 (list!17943 input!5492) Nil!56682) lt!2023845)))

(declare-fun lt!2024191 () Unit!147115)

(declare-fun lt!2024181 () Unit!147115)

(assert (=> d!1583326 (= lt!2024191 lt!2024181)))

(declare-fun lt!2024199 () List!56806)

(assert (=> d!1583326 (= lt!2023845 lt!2024199)))

(assert (=> d!1583326 (= lt!2024181 (lemmaSamePrefixThenSameSuffix!2362 Nil!56682 lt!2023845 Nil!56682 lt!2024199 (list!17943 input!5492)))))

(assert (=> d!1583326 (= lt!2024199 (getSuffix!2946 (list!17943 input!5492) Nil!56682))))

(declare-fun lt!2024184 () Unit!147115)

(declare-fun lt!2024186 () Unit!147115)

(assert (=> d!1583326 (= lt!2024184 lt!2024186)))

(assert (=> d!1583326 (isPrefix!4958 Nil!56682 (++!12319 Nil!56682 lt!2023845))))

(assert (=> d!1583326 (= lt!2024186 (lemmaConcatTwoListThenFirstIsPrefix!3182 Nil!56682 lt!2023845))))

(assert (=> d!1583326 (= (++!12319 Nil!56682 lt!2023845) (list!17943 input!5492))))

(assert (=> d!1583326 (= (findLongestMatchInnerZipperFast!83 z!3559 Nil!56682 0 lt!2023845 input!5492 lt!2023848) lt!2024196)))

(declare-fun bm!342852 () Bool)

(assert (=> bm!342852 (= call!342856 (lemmaIsPrefixSameLengthThenSameList!1116 (ite c!837787 lt!2024179 lt!2024167) Nil!56682 call!342852))))

(declare-fun bm!342853 () Bool)

(assert (=> bm!342853 (= call!342850 (nullableZipper!807 z!3559))))

(assert (= (and d!1583326 c!837788) b!4922347))

(assert (= (and d!1583326 (not c!837788)) b!4922346))

(assert (= (and b!4922346 c!837787) b!4922351))

(assert (= (and b!4922346 (not c!837787)) b!4922344))

(assert (= (and b!4922351 c!837785) b!4922353))

(assert (= (and b!4922351 (not c!837785)) b!4922350))

(assert (= (and b!4922344 c!837784) b!4922345))

(assert (= (and b!4922344 (not c!837784)) b!4922349))

(assert (= (and b!4922344 c!837786) b!4922348))

(assert (= (and b!4922344 (not c!837786)) b!4922352))

(assert (= (or b!4922348 b!4922352) bm!342847))

(assert (= (or b!4922348 b!4922352) bm!342844))

(assert (= (or b!4922348 b!4922352) bm!342846))

(assert (= (or b!4922348 b!4922352) bm!342848))

(assert (= (or b!4922348 b!4922352) bm!342849))

(assert (= (or b!4922351 b!4922345) bm!342850))

(assert (= (or b!4922351 b!4922345) bm!342845))

(assert (= (or b!4922351 b!4922344 b!4922345) bm!342851))

(assert (= (or b!4922351 b!4922344) bm!342853))

(assert (= (or b!4922351 b!4922345) bm!342852))

(declare-fun m!5937390 () Bool)

(assert (=> bm!342846 m!5937390))

(assert (=> d!1583326 m!5937178))

(declare-fun m!5937392 () Bool)

(assert (=> d!1583326 m!5937392))

(assert (=> d!1583326 m!5937268))

(assert (=> d!1583326 m!5937178))

(declare-fun m!5937394 () Bool)

(assert (=> d!1583326 m!5937394))

(assert (=> d!1583326 m!5937266))

(assert (=> d!1583326 m!5937266))

(assert (=> d!1583326 m!5937274))

(assert (=> d!1583326 m!5937178))

(declare-fun m!5937396 () Bool)

(assert (=> d!1583326 m!5937396))

(assert (=> d!1583326 m!5937178))

(declare-fun m!5937398 () Bool)

(assert (=> d!1583326 m!5937398))

(assert (=> d!1583326 m!5937276))

(declare-fun m!5937400 () Bool)

(assert (=> bm!342848 m!5937400))

(assert (=> bm!342853 m!5937224))

(declare-fun m!5937402 () Bool)

(assert (=> bm!342852 m!5937402))

(assert (=> bm!342847 m!5937232))

(declare-fun m!5937404 () Bool)

(assert (=> bm!342849 m!5937404))

(declare-fun m!5937406 () Bool)

(assert (=> bm!342844 m!5937406))

(assert (=> bm!342851 m!5937178))

(declare-fun m!5937408 () Bool)

(assert (=> b!4922344 m!5937408))

(declare-fun m!5937410 () Bool)

(assert (=> b!4922344 m!5937410))

(declare-fun m!5937412 () Bool)

(assert (=> b!4922344 m!5937412))

(assert (=> b!4922344 m!5937410))

(declare-fun m!5937414 () Bool)

(assert (=> b!4922344 m!5937414))

(declare-fun m!5937416 () Bool)

(assert (=> b!4922344 m!5937416))

(declare-fun m!5937418 () Bool)

(assert (=> b!4922344 m!5937418))

(declare-fun m!5937420 () Bool)

(assert (=> b!4922344 m!5937420))

(declare-fun m!5937422 () Bool)

(assert (=> b!4922344 m!5937422))

(declare-fun m!5937424 () Bool)

(assert (=> b!4922344 m!5937424))

(assert (=> b!4922344 m!5937172))

(declare-fun m!5937426 () Bool)

(assert (=> b!4922344 m!5937426))

(declare-fun m!5937428 () Bool)

(assert (=> b!4922344 m!5937428))

(assert (=> b!4922344 m!5937232))

(declare-fun m!5937430 () Bool)

(assert (=> b!4922344 m!5937430))

(assert (=> b!4922344 m!5937406))

(declare-fun m!5937432 () Bool)

(assert (=> b!4922344 m!5937432))

(assert (=> b!4922344 m!5937256))

(declare-fun m!5937434 () Bool)

(assert (=> b!4922344 m!5937434))

(declare-fun m!5937436 () Bool)

(assert (=> b!4922344 m!5937436))

(assert (=> b!4922344 m!5937418))

(declare-fun m!5937438 () Bool)

(assert (=> b!4922344 m!5937438))

(assert (=> b!4922344 m!5937424))

(declare-fun m!5937440 () Bool)

(assert (=> b!4922344 m!5937440))

(assert (=> b!4922344 m!5937438))

(declare-fun m!5937442 () Bool)

(assert (=> b!4922344 m!5937442))

(declare-fun m!5937444 () Bool)

(assert (=> bm!342845 m!5937444))

(declare-fun m!5937446 () Bool)

(assert (=> bm!342850 m!5937446))

(assert (=> start!516832 d!1583326))

(declare-fun d!1583330 () Bool)

(declare-fun lambda!245115 () Int)

(declare-fun forall!13129 (List!56805 Int) Bool)

(assert (=> d!1583330 (= (inv!73448 setElem!27508) (forall!13129 (exprs!3513 setElem!27508) lambda!245115))))

(declare-fun bs!1179217 () Bool)

(assert (= bs!1179217 d!1583330))

(declare-fun m!5937500 () Bool)

(assert (=> bs!1179217 m!5937500))

(assert (=> setNonEmpty!27508 d!1583330))

(declare-fun tp!1383186 () Bool)

(declare-fun e!3075940 () Bool)

(declare-fun b!4922404 () Bool)

(declare-fun tp!1383185 () Bool)

(assert (=> b!4922404 (= e!3075940 (and (inv!73449 (left!41327 (c!837731 input!5492))) tp!1383186 (inv!73449 (right!41657 (c!837731 input!5492))) tp!1383185))))

(declare-fun b!4922406 () Bool)

(declare-fun e!3075939 () Bool)

(declare-fun tp!1383184 () Bool)

(assert (=> b!4922406 (= e!3075939 tp!1383184)))

(declare-fun b!4922405 () Bool)

(declare-fun inv!73455 (IArray!29801) Bool)

(assert (=> b!4922405 (= e!3075940 (and (inv!73455 (xs!18190 (c!837731 input!5492))) e!3075939))))

(assert (=> b!4922178 (= tp!1383175 (and (inv!73449 (c!837731 input!5492)) e!3075940))))

(assert (= (and b!4922178 ((_ is Node!14870) (c!837731 input!5492))) b!4922404))

(assert (= b!4922405 b!4922406))

(assert (= (and b!4922178 ((_ is Leaf!24738) (c!837731 input!5492))) b!4922405))

(declare-fun m!5937502 () Bool)

(assert (=> b!4922404 m!5937502))

(declare-fun m!5937504 () Bool)

(assert (=> b!4922404 m!5937504))

(declare-fun m!5937506 () Bool)

(assert (=> b!4922405 m!5937506))

(assert (=> b!4922178 m!5937158))

(declare-fun condSetEmpty!27511 () Bool)

(assert (=> setNonEmpty!27508 (= condSetEmpty!27511 (= setRest!27508 ((as const (Array Context!6026 Bool)) false)))))

(declare-fun setRes!27511 () Bool)

(assert (=> setNonEmpty!27508 (= tp!1383177 setRes!27511)))

(declare-fun setIsEmpty!27511 () Bool)

(assert (=> setIsEmpty!27511 setRes!27511))

(declare-fun e!3075943 () Bool)

(declare-fun tp!1383192 () Bool)

(declare-fun setElem!27511 () Context!6026)

(declare-fun setNonEmpty!27511 () Bool)

(assert (=> setNonEmpty!27511 (= setRes!27511 (and tp!1383192 (inv!73448 setElem!27511) e!3075943))))

(declare-fun setRest!27511 () (InoxSet Context!6026))

(assert (=> setNonEmpty!27511 (= setRest!27508 ((_ map or) (store ((as const (Array Context!6026 Bool)) false) setElem!27511 true) setRest!27511))))

(declare-fun b!4922411 () Bool)

(declare-fun tp!1383191 () Bool)

(assert (=> b!4922411 (= e!3075943 tp!1383191)))

(assert (= (and setNonEmpty!27508 condSetEmpty!27511) setIsEmpty!27511))

(assert (= (and setNonEmpty!27508 (not condSetEmpty!27511)) setNonEmpty!27511))

(assert (= setNonEmpty!27511 b!4922411))

(declare-fun m!5937508 () Bool)

(assert (=> setNonEmpty!27511 m!5937508))

(declare-fun b!4922416 () Bool)

(declare-fun e!3075946 () Bool)

(declare-fun tp!1383197 () Bool)

(declare-fun tp!1383198 () Bool)

(assert (=> b!4922416 (= e!3075946 (and tp!1383197 tp!1383198))))

(assert (=> b!4922179 (= tp!1383176 e!3075946)))

(assert (= (and b!4922179 ((_ is Cons!56681) (exprs!3513 setElem!27508))) b!4922416))

(check-sat (not bm!342847) (not bm!342844) (not bm!342849) (not bm!342853) (not d!1583330) (not d!1583320) (not bm!342786) (not b!4922277) (not b!4922195) (not b!4922411) (not bm!342791) (not b!4922178) (not bm!342851) (not bm!342852) (not b!4922406) (not b!4922287) (not bm!342790) (not b!4922252) (not bm!342788) (not d!1583306) (not d!1583302) (not bm!342789) (not d!1583304) (not b!4922260) (not d!1583322) (not bm!342792) (not b!4922286) (not d!1583324) (not bm!342793) (not b!4922404) (not d!1583326) (not b!4922279) (not b!4922405) (not b!4922278) (not b!4922281) (not b!4922261) (not bm!342787) (not bm!342845) (not d!1583318) (not setNonEmpty!27511) (not b!4922197) (not b!4922276) (not d!1583316) (not b!4922251) (not b!4922280) (not b!4922416) (not bm!342850) (not bm!342846) (not b!4922344) (not bm!342848))
(check-sat)
