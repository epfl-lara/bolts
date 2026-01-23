; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726214 () Bool)

(assert start!726214)

(declare-fun b!7503912 () Bool)

(declare-fun e!4474081 () Bool)

(declare-fun testedPSize!164 () Int)

(declare-datatypes ((C!39684 0))(
  ( (C!39685 (val!30240 Int)) )
))
(declare-datatypes ((List!72457 0))(
  ( (Nil!72333) (Cons!72333 (h!78781 C!39684) (t!387026 List!72457)) )
))
(declare-fun lt!2633734 () List!72457)

(declare-fun size!42250 (List!72457) Int)

(assert (=> b!7503912 (= e!4474081 (= (+ 1 testedPSize!164) (size!42250 lt!2633734)))))

(declare-fun res!3010423 () Bool)

(declare-fun e!4474074 () Bool)

(assert (=> start!726214 (=> (not res!3010423) (not e!4474074))))

(declare-fun lt!2633732 () List!72457)

(declare-fun totalInput!779 () List!72457)

(assert (=> start!726214 (= res!3010423 (= lt!2633732 totalInput!779))))

(declare-fun testedP!204 () List!72457)

(declare-fun testedSuffix!164 () List!72457)

(declare-fun ++!17308 (List!72457 List!72457) List!72457)

(assert (=> start!726214 (= lt!2633732 (++!17308 testedP!204 testedSuffix!164))))

(assert (=> start!726214 e!4474074))

(declare-fun e!4474078 () Bool)

(assert (=> start!726214 e!4474078))

(assert (=> start!726214 true))

(declare-fun e!4474083 () Bool)

(assert (=> start!726214 e!4474083))

(declare-fun e!4474082 () Bool)

(assert (=> start!726214 e!4474082))

(declare-fun condSetEmpty!56926 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19689 0))(
  ( (ElementMatch!19689 (c!1385312 C!39684)) (Concat!28534 (regOne!39890 Regex!19689) (regTwo!39890 Regex!19689)) (EmptyExpr!19689) (Star!19689 (reg!20018 Regex!19689)) (EmptyLang!19689) (Union!19689 (regOne!39891 Regex!19689) (regTwo!39891 Regex!19689)) )
))
(declare-datatypes ((List!72458 0))(
  ( (Nil!72334) (Cons!72334 (h!78782 Regex!19689) (t!387027 List!72458)) )
))
(declare-datatypes ((Context!16882 0))(
  ( (Context!16883 (exprs!8941 List!72458)) )
))
(declare-fun z!3716 () (InoxSet Context!16882))

(assert (=> start!726214 (= condSetEmpty!56926 (= z!3716 ((as const (Array Context!16882 Bool)) false)))))

(declare-fun setRes!56926 () Bool)

(assert (=> start!726214 setRes!56926))

(declare-fun b!7503913 () Bool)

(declare-fun tp_is_empty!49699 () Bool)

(declare-fun tp!2178244 () Bool)

(assert (=> b!7503913 (= e!4474078 (and tp_is_empty!49699 tp!2178244))))

(declare-fun b!7503914 () Bool)

(declare-fun tp!2178243 () Bool)

(assert (=> b!7503914 (= e!4474082 (and tp_is_empty!49699 tp!2178243))))

(declare-fun b!7503915 () Bool)

(declare-fun e!4474073 () Bool)

(declare-fun e!4474077 () Bool)

(assert (=> b!7503915 (= e!4474073 e!4474077)))

(declare-fun res!3010424 () Bool)

(assert (=> b!7503915 (=> res!3010424 e!4474077)))

(declare-fun lt!2633726 () Int)

(declare-fun lt!2633722 () Int)

(assert (=> b!7503915 (= res!3010424 (>= lt!2633726 lt!2633722))))

(declare-datatypes ((Unit!166298 0))(
  ( (Unit!166299) )
))
(declare-fun lt!2633735 () Unit!166298)

(declare-fun e!4474084 () Unit!166298)

(assert (=> b!7503915 (= lt!2633735 e!4474084)))

(declare-fun c!1385311 () Bool)

(assert (=> b!7503915 (= c!1385311 (= lt!2633726 lt!2633722))))

(assert (=> b!7503915 (<= lt!2633726 lt!2633722)))

(declare-fun lt!2633728 () Unit!166298)

(declare-fun lemmaIsPrefixThenSmallerEqSize!980 (List!72457 List!72457) Unit!166298)

(assert (=> b!7503915 (= lt!2633728 (lemmaIsPrefixThenSmallerEqSize!980 testedP!204 totalInput!779))))

(declare-fun b!7503916 () Bool)

(declare-fun Unit!166300 () Unit!166298)

(assert (=> b!7503916 (= e!4474084 Unit!166300)))

(declare-fun lt!2633729 () Unit!166298)

(declare-fun lemmaIsPrefixRefl!3824 (List!72457 List!72457) Unit!166298)

(assert (=> b!7503916 (= lt!2633729 (lemmaIsPrefixRefl!3824 totalInput!779 totalInput!779))))

(declare-fun isPrefix!5975 (List!72457 List!72457) Bool)

(assert (=> b!7503916 (isPrefix!5975 totalInput!779 totalInput!779)))

(declare-fun lt!2633731 () Unit!166298)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1478 (List!72457 List!72457 List!72457) Unit!166298)

(assert (=> b!7503916 (= lt!2633731 (lemmaIsPrefixSameLengthThenSameList!1478 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7503916 false))

(declare-fun b!7503917 () Bool)

(declare-fun e!4474075 () Bool)

(assert (=> b!7503917 (= e!4474075 e!4474073)))

(declare-fun res!3010428 () Bool)

(assert (=> b!7503917 (=> res!3010428 e!4474073)))

(declare-fun lostCauseZipper!1377 ((InoxSet Context!16882)) Bool)

(assert (=> b!7503917 (= res!3010428 (lostCauseZipper!1377 z!3716))))

(declare-fun lt!2633730 () List!72457)

(assert (=> b!7503917 (and (= testedSuffix!164 lt!2633730) (= lt!2633730 testedSuffix!164))))

(declare-fun lt!2633733 () Unit!166298)

(declare-fun lemmaSamePrefixThenSameSuffix!2780 (List!72457 List!72457 List!72457 List!72457 List!72457) Unit!166298)

(assert (=> b!7503917 (= lt!2633733 (lemmaSamePrefixThenSameSuffix!2780 testedP!204 testedSuffix!164 testedP!204 lt!2633730 totalInput!779))))

(declare-fun getSuffix!3477 (List!72457 List!72457) List!72457)

(assert (=> b!7503917 (= lt!2633730 (getSuffix!3477 totalInput!779 testedP!204))))

(declare-fun b!7503918 () Bool)

(declare-fun e!4474076 () Bool)

(assert (=> b!7503918 (= e!4474076 (not e!4474075))))

(declare-fun res!3010426 () Bool)

(assert (=> b!7503918 (=> res!3010426 e!4474075)))

(assert (=> b!7503918 (= res!3010426 (not (isPrefix!5975 testedP!204 totalInput!779)))))

(assert (=> b!7503918 (isPrefix!5975 testedP!204 lt!2633732)))

(declare-fun lt!2633736 () Unit!166298)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3688 (List!72457 List!72457) Unit!166298)

(assert (=> b!7503918 (= lt!2633736 (lemmaConcatTwoListThenFirstIsPrefix!3688 testedP!204 testedSuffix!164))))

(declare-fun b!7503919 () Bool)

(declare-fun tp!2178246 () Bool)

(assert (=> b!7503919 (= e!4474083 (and tp_is_empty!49699 tp!2178246))))

(declare-fun b!7503920 () Bool)

(declare-fun e!4474080 () Bool)

(assert (=> b!7503920 (= e!4474074 e!4474080)))

(declare-fun res!3010422 () Bool)

(assert (=> b!7503920 (=> (not res!3010422) (not e!4474080))))

(assert (=> b!7503920 (= res!3010422 (= testedPSize!164 lt!2633726))))

(assert (=> b!7503920 (= lt!2633726 (size!42250 testedP!204))))

(declare-fun b!7503921 () Bool)

(assert (=> b!7503921 (= e!4474077 e!4474081)))

(declare-fun res!3010427 () Bool)

(assert (=> b!7503921 (=> res!3010427 e!4474081)))

(declare-fun nullableZipper!3169 ((InoxSet Context!16882)) Bool)

(assert (=> b!7503921 (= res!3010427 (nullableZipper!3169 z!3716))))

(declare-fun lt!2633723 () List!72457)

(assert (=> b!7503921 (= (++!17308 lt!2633734 lt!2633723) totalInput!779)))

(declare-fun lt!2633725 () C!39684)

(declare-fun lt!2633724 () Unit!166298)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3149 (List!72457 C!39684 List!72457 List!72457) Unit!166298)

(assert (=> b!7503921 (= lt!2633724 (lemmaMoveElementToOtherListKeepsConcatEq!3149 testedP!204 lt!2633725 lt!2633723 totalInput!779))))

(declare-fun tail!14981 (List!72457) List!72457)

(assert (=> b!7503921 (= lt!2633723 (tail!14981 testedSuffix!164))))

(declare-fun head!15415 (List!72457) C!39684)

(assert (=> b!7503921 (isPrefix!5975 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333)) totalInput!779)))

(declare-fun lt!2633727 () Unit!166298)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1116 (List!72457 List!72457) Unit!166298)

(assert (=> b!7503921 (= lt!2633727 (lemmaAddHeadSuffixToPrefixStillPrefix!1116 testedP!204 totalInput!779))))

(assert (=> b!7503921 (= lt!2633734 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333)))))

(assert (=> b!7503921 (= lt!2633725 (head!15415 testedSuffix!164))))

(declare-fun b!7503922 () Bool)

(assert (=> b!7503922 (= e!4474080 e!4474076)))

(declare-fun res!3010425 () Bool)

(assert (=> b!7503922 (=> (not res!3010425) (not e!4474076))))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7503922 (= res!3010425 (= totalInputSize!226 lt!2633722))))

(assert (=> b!7503922 (= lt!2633722 (size!42250 totalInput!779))))

(declare-fun b!7503923 () Bool)

(declare-fun res!3010421 () Bool)

(assert (=> b!7503923 (=> res!3010421 e!4474073)))

(assert (=> b!7503923 (= res!3010421 (= testedPSize!164 totalInputSize!226))))

(declare-fun setNonEmpty!56926 () Bool)

(declare-fun e!4474079 () Bool)

(declare-fun setElem!56926 () Context!16882)

(declare-fun tp!2178247 () Bool)

(declare-fun inv!92437 (Context!16882) Bool)

(assert (=> setNonEmpty!56926 (= setRes!56926 (and tp!2178247 (inv!92437 setElem!56926) e!4474079))))

(declare-fun setRest!56926 () (InoxSet Context!16882))

(assert (=> setNonEmpty!56926 (= z!3716 ((_ map or) (store ((as const (Array Context!16882 Bool)) false) setElem!56926 true) setRest!56926))))

(declare-fun setIsEmpty!56926 () Bool)

(assert (=> setIsEmpty!56926 setRes!56926))

(declare-fun b!7503924 () Bool)

(declare-fun tp!2178245 () Bool)

(assert (=> b!7503924 (= e!4474079 tp!2178245)))

(declare-fun b!7503925 () Bool)

(declare-fun Unit!166301 () Unit!166298)

(assert (=> b!7503925 (= e!4474084 Unit!166301)))

(assert (= (and start!726214 res!3010423) b!7503920))

(assert (= (and b!7503920 res!3010422) b!7503922))

(assert (= (and b!7503922 res!3010425) b!7503918))

(assert (= (and b!7503918 (not res!3010426)) b!7503917))

(assert (= (and b!7503917 (not res!3010428)) b!7503923))

(assert (= (and b!7503923 (not res!3010421)) b!7503915))

(assert (= (and b!7503915 c!1385311) b!7503916))

(assert (= (and b!7503915 (not c!1385311)) b!7503925))

(assert (= (and b!7503915 (not res!3010424)) b!7503921))

(assert (= (and b!7503921 (not res!3010427)) b!7503912))

(get-info :version)

(assert (= (and start!726214 ((_ is Cons!72333) testedSuffix!164)) b!7503913))

(assert (= (and start!726214 ((_ is Cons!72333) totalInput!779)) b!7503919))

(assert (= (and start!726214 ((_ is Cons!72333) testedP!204)) b!7503914))

(assert (= (and start!726214 condSetEmpty!56926) setIsEmpty!56926))

(assert (= (and start!726214 (not condSetEmpty!56926)) setNonEmpty!56926))

(assert (= setNonEmpty!56926 b!7503924))

(declare-fun m!8085996 () Bool)

(assert (=> b!7503918 m!8085996))

(declare-fun m!8085998 () Bool)

(assert (=> b!7503918 m!8085998))

(declare-fun m!8086000 () Bool)

(assert (=> b!7503918 m!8086000))

(declare-fun m!8086002 () Bool)

(assert (=> b!7503921 m!8086002))

(declare-fun m!8086004 () Bool)

(assert (=> b!7503921 m!8086004))

(declare-fun m!8086006 () Bool)

(assert (=> b!7503921 m!8086006))

(declare-fun m!8086008 () Bool)

(assert (=> b!7503921 m!8086008))

(declare-fun m!8086010 () Bool)

(assert (=> b!7503921 m!8086010))

(declare-fun m!8086012 () Bool)

(assert (=> b!7503921 m!8086012))

(declare-fun m!8086014 () Bool)

(assert (=> b!7503921 m!8086014))

(declare-fun m!8086016 () Bool)

(assert (=> b!7503921 m!8086016))

(declare-fun m!8086018 () Bool)

(assert (=> b!7503921 m!8086018))

(declare-fun m!8086020 () Bool)

(assert (=> b!7503921 m!8086020))

(assert (=> b!7503921 m!8086018))

(declare-fun m!8086022 () Bool)

(assert (=> setNonEmpty!56926 m!8086022))

(declare-fun m!8086024 () Bool)

(assert (=> b!7503915 m!8086024))

(declare-fun m!8086026 () Bool)

(assert (=> start!726214 m!8086026))

(declare-fun m!8086028 () Bool)

(assert (=> b!7503920 m!8086028))

(declare-fun m!8086030 () Bool)

(assert (=> b!7503922 m!8086030))

(declare-fun m!8086032 () Bool)

(assert (=> b!7503916 m!8086032))

(declare-fun m!8086034 () Bool)

(assert (=> b!7503916 m!8086034))

(declare-fun m!8086036 () Bool)

(assert (=> b!7503916 m!8086036))

(declare-fun m!8086038 () Bool)

(assert (=> b!7503917 m!8086038))

(declare-fun m!8086040 () Bool)

(assert (=> b!7503917 m!8086040))

(declare-fun m!8086042 () Bool)

(assert (=> b!7503917 m!8086042))

(declare-fun m!8086044 () Bool)

(assert (=> b!7503912 m!8086044))

(check-sat (not b!7503916) (not b!7503915) (not start!726214) (not b!7503921) (not b!7503912) (not b!7503914) (not b!7503917) (not b!7503924) (not setNonEmpty!56926) (not b!7503922) (not b!7503913) (not b!7503918) tp_is_empty!49699 (not b!7503920) (not b!7503919))
(check-sat)
(get-model)

(declare-fun d!2303362 () Bool)

(assert (=> d!2303362 (isPrefix!5975 totalInput!779 totalInput!779)))

(declare-fun lt!2633739 () Unit!166298)

(declare-fun choose!58066 (List!72457 List!72457) Unit!166298)

(assert (=> d!2303362 (= lt!2633739 (choose!58066 totalInput!779 totalInput!779))))

(assert (=> d!2303362 (= (lemmaIsPrefixRefl!3824 totalInput!779 totalInput!779) lt!2633739)))

(declare-fun bs!1937946 () Bool)

(assert (= bs!1937946 d!2303362))

(assert (=> bs!1937946 m!8086034))

(declare-fun m!8086046 () Bool)

(assert (=> bs!1937946 m!8086046))

(assert (=> b!7503916 d!2303362))

(declare-fun b!7503937 () Bool)

(declare-fun e!4474092 () Bool)

(assert (=> b!7503937 (= e!4474092 (>= (size!42250 totalInput!779) (size!42250 totalInput!779)))))

(declare-fun b!7503934 () Bool)

(declare-fun e!4474093 () Bool)

(declare-fun e!4474091 () Bool)

(assert (=> b!7503934 (= e!4474093 e!4474091)))

(declare-fun res!3010439 () Bool)

(assert (=> b!7503934 (=> (not res!3010439) (not e!4474091))))

(assert (=> b!7503934 (= res!3010439 (not ((_ is Nil!72333) totalInput!779)))))

(declare-fun d!2303364 () Bool)

(assert (=> d!2303364 e!4474092))

(declare-fun res!3010438 () Bool)

(assert (=> d!2303364 (=> res!3010438 e!4474092)))

(declare-fun lt!2633742 () Bool)

(assert (=> d!2303364 (= res!3010438 (not lt!2633742))))

(assert (=> d!2303364 (= lt!2633742 e!4474093)))

(declare-fun res!3010437 () Bool)

(assert (=> d!2303364 (=> res!3010437 e!4474093)))

(assert (=> d!2303364 (= res!3010437 ((_ is Nil!72333) totalInput!779))))

(assert (=> d!2303364 (= (isPrefix!5975 totalInput!779 totalInput!779) lt!2633742)))

(declare-fun b!7503935 () Bool)

(declare-fun res!3010440 () Bool)

(assert (=> b!7503935 (=> (not res!3010440) (not e!4474091))))

(assert (=> b!7503935 (= res!3010440 (= (head!15415 totalInput!779) (head!15415 totalInput!779)))))

(declare-fun b!7503936 () Bool)

(assert (=> b!7503936 (= e!4474091 (isPrefix!5975 (tail!14981 totalInput!779) (tail!14981 totalInput!779)))))

(assert (= (and d!2303364 (not res!3010437)) b!7503934))

(assert (= (and b!7503934 res!3010439) b!7503935))

(assert (= (and b!7503935 res!3010440) b!7503936))

(assert (= (and d!2303364 (not res!3010438)) b!7503937))

(assert (=> b!7503937 m!8086030))

(assert (=> b!7503937 m!8086030))

(declare-fun m!8086048 () Bool)

(assert (=> b!7503935 m!8086048))

(assert (=> b!7503935 m!8086048))

(declare-fun m!8086050 () Bool)

(assert (=> b!7503936 m!8086050))

(assert (=> b!7503936 m!8086050))

(assert (=> b!7503936 m!8086050))

(assert (=> b!7503936 m!8086050))

(declare-fun m!8086052 () Bool)

(assert (=> b!7503936 m!8086052))

(assert (=> b!7503916 d!2303364))

(declare-fun d!2303366 () Bool)

(assert (=> d!2303366 (= totalInput!779 testedP!204)))

(declare-fun lt!2633745 () Unit!166298)

(declare-fun choose!58068 (List!72457 List!72457 List!72457) Unit!166298)

(assert (=> d!2303366 (= lt!2633745 (choose!58068 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2303366 (isPrefix!5975 totalInput!779 totalInput!779)))

(assert (=> d!2303366 (= (lemmaIsPrefixSameLengthThenSameList!1478 totalInput!779 testedP!204 totalInput!779) lt!2633745)))

(declare-fun bs!1937947 () Bool)

(assert (= bs!1937947 d!2303366))

(declare-fun m!8086054 () Bool)

(assert (=> bs!1937947 m!8086054))

(assert (=> bs!1937947 m!8086034))

(assert (=> b!7503916 d!2303366))

(declare-fun d!2303370 () Bool)

(assert (=> d!2303370 (= (++!17308 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333)) lt!2633723) totalInput!779)))

(declare-fun lt!2633756 () Unit!166298)

(declare-fun choose!58069 (List!72457 C!39684 List!72457 List!72457) Unit!166298)

(assert (=> d!2303370 (= lt!2633756 (choose!58069 testedP!204 lt!2633725 lt!2633723 totalInput!779))))

(assert (=> d!2303370 (= (++!17308 testedP!204 (Cons!72333 lt!2633725 lt!2633723)) totalInput!779)))

(assert (=> d!2303370 (= (lemmaMoveElementToOtherListKeepsConcatEq!3149 testedP!204 lt!2633725 lt!2633723 totalInput!779) lt!2633756)))

(declare-fun bs!1937949 () Bool)

(assert (= bs!1937949 d!2303370))

(assert (=> bs!1937949 m!8086014))

(assert (=> bs!1937949 m!8086014))

(declare-fun m!8086060 () Bool)

(assert (=> bs!1937949 m!8086060))

(declare-fun m!8086062 () Bool)

(assert (=> bs!1937949 m!8086062))

(declare-fun m!8086064 () Bool)

(assert (=> bs!1937949 m!8086064))

(assert (=> b!7503921 d!2303370))

(declare-fun b!7503980 () Bool)

(declare-fun e!4474119 () List!72457)

(assert (=> b!7503980 (= e!4474119 (Cons!72333 lt!2633725 Nil!72333))))

(declare-fun b!7503982 () Bool)

(declare-fun res!3010465 () Bool)

(declare-fun e!4474118 () Bool)

(assert (=> b!7503982 (=> (not res!3010465) (not e!4474118))))

(declare-fun lt!2633767 () List!72457)

(assert (=> b!7503982 (= res!3010465 (= (size!42250 lt!2633767) (+ (size!42250 testedP!204) (size!42250 (Cons!72333 lt!2633725 Nil!72333)))))))

(declare-fun b!7503983 () Bool)

(assert (=> b!7503983 (= e!4474118 (or (not (= (Cons!72333 lt!2633725 Nil!72333) Nil!72333)) (= lt!2633767 testedP!204)))))

(declare-fun b!7503981 () Bool)

(assert (=> b!7503981 (= e!4474119 (Cons!72333 (h!78781 testedP!204) (++!17308 (t!387026 testedP!204) (Cons!72333 lt!2633725 Nil!72333))))))

(declare-fun d!2303376 () Bool)

(assert (=> d!2303376 e!4474118))

(declare-fun res!3010466 () Bool)

(assert (=> d!2303376 (=> (not res!3010466) (not e!4474118))))

(declare-fun content!15289 (List!72457) (InoxSet C!39684))

(assert (=> d!2303376 (= res!3010466 (= (content!15289 lt!2633767) ((_ map or) (content!15289 testedP!204) (content!15289 (Cons!72333 lt!2633725 Nil!72333)))))))

(assert (=> d!2303376 (= lt!2633767 e!4474119)))

(declare-fun c!1385322 () Bool)

(assert (=> d!2303376 (= c!1385322 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303376 (= (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333)) lt!2633767)))

(assert (= (and d!2303376 c!1385322) b!7503980))

(assert (= (and d!2303376 (not c!1385322)) b!7503981))

(assert (= (and d!2303376 res!3010466) b!7503982))

(assert (= (and b!7503982 res!3010465) b!7503983))

(declare-fun m!8086106 () Bool)

(assert (=> b!7503982 m!8086106))

(assert (=> b!7503982 m!8086028))

(declare-fun m!8086108 () Bool)

(assert (=> b!7503982 m!8086108))

(declare-fun m!8086110 () Bool)

(assert (=> b!7503981 m!8086110))

(declare-fun m!8086112 () Bool)

(assert (=> d!2303376 m!8086112))

(declare-fun m!8086114 () Bool)

(assert (=> d!2303376 m!8086114))

(declare-fun m!8086116 () Bool)

(assert (=> d!2303376 m!8086116))

(assert (=> b!7503921 d!2303376))

(declare-fun e!4474121 () Bool)

(declare-fun b!7503987 () Bool)

(assert (=> b!7503987 (= e!4474121 (>= (size!42250 totalInput!779) (size!42250 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(declare-fun b!7503984 () Bool)

(declare-fun e!4474122 () Bool)

(declare-fun e!4474120 () Bool)

(assert (=> b!7503984 (= e!4474122 e!4474120)))

(declare-fun res!3010469 () Bool)

(assert (=> b!7503984 (=> (not res!3010469) (not e!4474120))))

(assert (=> b!7503984 (= res!3010469 (not ((_ is Nil!72333) totalInput!779)))))

(declare-fun d!2303388 () Bool)

(assert (=> d!2303388 e!4474121))

(declare-fun res!3010468 () Bool)

(assert (=> d!2303388 (=> res!3010468 e!4474121)))

(declare-fun lt!2633768 () Bool)

(assert (=> d!2303388 (= res!3010468 (not lt!2633768))))

(assert (=> d!2303388 (= lt!2633768 e!4474122)))

(declare-fun res!3010467 () Bool)

(assert (=> d!2303388 (=> res!3010467 e!4474122)))

(assert (=> d!2303388 (= res!3010467 ((_ is Nil!72333) (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))

(assert (=> d!2303388 (= (isPrefix!5975 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333)) totalInput!779) lt!2633768)))

(declare-fun b!7503985 () Bool)

(declare-fun res!3010470 () Bool)

(assert (=> b!7503985 (=> (not res!3010470) (not e!4474120))))

(assert (=> b!7503985 (= res!3010470 (= (head!15415 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))) (head!15415 totalInput!779)))))

(declare-fun b!7503986 () Bool)

(assert (=> b!7503986 (= e!4474120 (isPrefix!5975 (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))) (tail!14981 totalInput!779)))))

(assert (= (and d!2303388 (not res!3010467)) b!7503984))

(assert (= (and b!7503984 res!3010469) b!7503985))

(assert (= (and b!7503985 res!3010470) b!7503986))

(assert (= (and d!2303388 (not res!3010468)) b!7503987))

(assert (=> b!7503987 m!8086030))

(assert (=> b!7503987 m!8086018))

(declare-fun m!8086118 () Bool)

(assert (=> b!7503987 m!8086118))

(assert (=> b!7503985 m!8086018))

(declare-fun m!8086120 () Bool)

(assert (=> b!7503985 m!8086120))

(assert (=> b!7503985 m!8086048))

(assert (=> b!7503986 m!8086018))

(declare-fun m!8086122 () Bool)

(assert (=> b!7503986 m!8086122))

(assert (=> b!7503986 m!8086050))

(assert (=> b!7503986 m!8086122))

(assert (=> b!7503986 m!8086050))

(declare-fun m!8086124 () Bool)

(assert (=> b!7503986 m!8086124))

(assert (=> b!7503921 d!2303388))

(declare-fun d!2303390 () Bool)

(declare-fun lambda!465177 () Int)

(declare-fun exists!4848 ((InoxSet Context!16882) Int) Bool)

(assert (=> d!2303390 (= (nullableZipper!3169 z!3716) (exists!4848 z!3716 lambda!465177))))

(declare-fun bs!1937964 () Bool)

(assert (= bs!1937964 d!2303390))

(declare-fun m!8086210 () Bool)

(assert (=> bs!1937964 m!8086210))

(assert (=> b!7503921 d!2303390))

(declare-fun d!2303426 () Bool)

(assert (=> d!2303426 (= (tail!14981 testedSuffix!164) (t!387026 testedSuffix!164))))

(assert (=> b!7503921 d!2303426))

(declare-fun d!2303428 () Bool)

(assert (=> d!2303428 (= (head!15415 testedSuffix!164) (h!78781 testedSuffix!164))))

(assert (=> b!7503921 d!2303428))

(declare-fun b!7504041 () Bool)

(declare-fun e!4474160 () List!72457)

(assert (=> b!7504041 (= e!4474160 lt!2633723)))

(declare-fun b!7504043 () Bool)

(declare-fun res!3010487 () Bool)

(declare-fun e!4474159 () Bool)

(assert (=> b!7504043 (=> (not res!3010487) (not e!4474159))))

(declare-fun lt!2633818 () List!72457)

(assert (=> b!7504043 (= res!3010487 (= (size!42250 lt!2633818) (+ (size!42250 lt!2633734) (size!42250 lt!2633723))))))

(declare-fun b!7504044 () Bool)

(assert (=> b!7504044 (= e!4474159 (or (not (= lt!2633723 Nil!72333)) (= lt!2633818 lt!2633734)))))

(declare-fun b!7504042 () Bool)

(assert (=> b!7504042 (= e!4474160 (Cons!72333 (h!78781 lt!2633734) (++!17308 (t!387026 lt!2633734) lt!2633723)))))

(declare-fun d!2303430 () Bool)

(assert (=> d!2303430 e!4474159))

(declare-fun res!3010488 () Bool)

(assert (=> d!2303430 (=> (not res!3010488) (not e!4474159))))

(assert (=> d!2303430 (= res!3010488 (= (content!15289 lt!2633818) ((_ map or) (content!15289 lt!2633734) (content!15289 lt!2633723))))))

(assert (=> d!2303430 (= lt!2633818 e!4474160)))

(declare-fun c!1385345 () Bool)

(assert (=> d!2303430 (= c!1385345 ((_ is Nil!72333) lt!2633734))))

(assert (=> d!2303430 (= (++!17308 lt!2633734 lt!2633723) lt!2633818)))

(assert (= (and d!2303430 c!1385345) b!7504041))

(assert (= (and d!2303430 (not c!1385345)) b!7504042))

(assert (= (and d!2303430 res!3010488) b!7504043))

(assert (= (and b!7504043 res!3010487) b!7504044))

(declare-fun m!8086212 () Bool)

(assert (=> b!7504043 m!8086212))

(assert (=> b!7504043 m!8086044))

(declare-fun m!8086214 () Bool)

(assert (=> b!7504043 m!8086214))

(declare-fun m!8086216 () Bool)

(assert (=> b!7504042 m!8086216))

(declare-fun m!8086218 () Bool)

(assert (=> d!2303430 m!8086218))

(declare-fun m!8086220 () Bool)

(assert (=> d!2303430 m!8086220))

(declare-fun m!8086222 () Bool)

(assert (=> d!2303430 m!8086222))

(assert (=> b!7503921 d!2303430))

(declare-fun d!2303432 () Bool)

(assert (=> d!2303432 (= (head!15415 lt!2633730) (h!78781 lt!2633730))))

(assert (=> b!7503921 d!2303432))

(declare-fun d!2303434 () Bool)

(assert (=> d!2303434 (isPrefix!5975 (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333)) totalInput!779)))

(declare-fun lt!2633821 () Unit!166298)

(declare-fun choose!58070 (List!72457 List!72457) Unit!166298)

(assert (=> d!2303434 (= lt!2633821 (choose!58070 testedP!204 totalInput!779))))

(assert (=> d!2303434 (isPrefix!5975 testedP!204 totalInput!779)))

(assert (=> d!2303434 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1116 testedP!204 totalInput!779) lt!2633821)))

(declare-fun bs!1937965 () Bool)

(assert (= bs!1937965 d!2303434))

(declare-fun m!8086224 () Bool)

(assert (=> bs!1937965 m!8086224))

(declare-fun m!8086226 () Bool)

(assert (=> bs!1937965 m!8086226))

(declare-fun m!8086228 () Bool)

(assert (=> bs!1937965 m!8086228))

(assert (=> bs!1937965 m!8085996))

(assert (=> bs!1937965 m!8086042))

(declare-fun m!8086230 () Bool)

(assert (=> bs!1937965 m!8086230))

(assert (=> bs!1937965 m!8086042))

(assert (=> bs!1937965 m!8086226))

(assert (=> b!7503921 d!2303434))

(declare-fun b!7504045 () Bool)

(declare-fun e!4474162 () List!72457)

(assert (=> b!7504045 (= e!4474162 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))

(declare-fun b!7504047 () Bool)

(declare-fun res!3010489 () Bool)

(declare-fun e!4474161 () Bool)

(assert (=> b!7504047 (=> (not res!3010489) (not e!4474161))))

(declare-fun lt!2633822 () List!72457)

(assert (=> b!7504047 (= res!3010489 (= (size!42250 lt!2633822) (+ (size!42250 testedP!204) (size!42250 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(declare-fun b!7504048 () Bool)

(assert (=> b!7504048 (= e!4474161 (or (not (= (Cons!72333 (head!15415 lt!2633730) Nil!72333) Nil!72333)) (= lt!2633822 testedP!204)))))

(declare-fun b!7504046 () Bool)

(assert (=> b!7504046 (= e!4474162 (Cons!72333 (h!78781 testedP!204) (++!17308 (t!387026 testedP!204) (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))

(declare-fun d!2303436 () Bool)

(assert (=> d!2303436 e!4474161))

(declare-fun res!3010490 () Bool)

(assert (=> d!2303436 (=> (not res!3010490) (not e!4474161))))

(assert (=> d!2303436 (= res!3010490 (= (content!15289 lt!2633822) ((_ map or) (content!15289 testedP!204) (content!15289 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(assert (=> d!2303436 (= lt!2633822 e!4474162)))

(declare-fun c!1385346 () Bool)

(assert (=> d!2303436 (= c!1385346 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303436 (= (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333)) lt!2633822)))

(assert (= (and d!2303436 c!1385346) b!7504045))

(assert (= (and d!2303436 (not c!1385346)) b!7504046))

(assert (= (and d!2303436 res!3010490) b!7504047))

(assert (= (and b!7504047 res!3010489) b!7504048))

(declare-fun m!8086232 () Bool)

(assert (=> b!7504047 m!8086232))

(assert (=> b!7504047 m!8086028))

(declare-fun m!8086234 () Bool)

(assert (=> b!7504047 m!8086234))

(declare-fun m!8086236 () Bool)

(assert (=> b!7504046 m!8086236))

(declare-fun m!8086238 () Bool)

(assert (=> d!2303436 m!8086238))

(assert (=> d!2303436 m!8086114))

(declare-fun m!8086240 () Bool)

(assert (=> d!2303436 m!8086240))

(assert (=> b!7503921 d!2303436))

(declare-fun d!2303438 () Bool)

(declare-fun lt!2633825 () Int)

(assert (=> d!2303438 (>= lt!2633825 0)))

(declare-fun e!4474165 () Int)

(assert (=> d!2303438 (= lt!2633825 e!4474165)))

(declare-fun c!1385349 () Bool)

(assert (=> d!2303438 (= c!1385349 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303438 (= (size!42250 testedP!204) lt!2633825)))

(declare-fun b!7504053 () Bool)

(assert (=> b!7504053 (= e!4474165 0)))

(declare-fun b!7504054 () Bool)

(assert (=> b!7504054 (= e!4474165 (+ 1 (size!42250 (t!387026 testedP!204))))))

(assert (= (and d!2303438 c!1385349) b!7504053))

(assert (= (and d!2303438 (not c!1385349)) b!7504054))

(declare-fun m!8086242 () Bool)

(assert (=> b!7504054 m!8086242))

(assert (=> b!7503920 d!2303438))

(declare-fun d!2303440 () Bool)

(assert (=> d!2303440 (<= (size!42250 testedP!204) (size!42250 totalInput!779))))

(declare-fun lt!2633828 () Unit!166298)

(declare-fun choose!58071 (List!72457 List!72457) Unit!166298)

(assert (=> d!2303440 (= lt!2633828 (choose!58071 testedP!204 totalInput!779))))

(assert (=> d!2303440 (isPrefix!5975 testedP!204 totalInput!779)))

(assert (=> d!2303440 (= (lemmaIsPrefixThenSmallerEqSize!980 testedP!204 totalInput!779) lt!2633828)))

(declare-fun bs!1937966 () Bool)

(assert (= bs!1937966 d!2303440))

(assert (=> bs!1937966 m!8086028))

(assert (=> bs!1937966 m!8086030))

(declare-fun m!8086244 () Bool)

(assert (=> bs!1937966 m!8086244))

(assert (=> bs!1937966 m!8085996))

(assert (=> b!7503915 d!2303440))

(declare-fun d!2303442 () Bool)

(declare-fun lambda!465180 () Int)

(declare-fun forall!18269 (List!72458 Int) Bool)

(assert (=> d!2303442 (= (inv!92437 setElem!56926) (forall!18269 (exprs!8941 setElem!56926) lambda!465180))))

(declare-fun bs!1937967 () Bool)

(assert (= bs!1937967 d!2303442))

(declare-fun m!8086246 () Bool)

(assert (=> bs!1937967 m!8086246))

(assert (=> setNonEmpty!56926 d!2303442))

(declare-fun b!7504055 () Bool)

(declare-fun e!4474167 () List!72457)

(assert (=> b!7504055 (= e!4474167 testedSuffix!164)))

(declare-fun b!7504057 () Bool)

(declare-fun res!3010491 () Bool)

(declare-fun e!4474166 () Bool)

(assert (=> b!7504057 (=> (not res!3010491) (not e!4474166))))

(declare-fun lt!2633829 () List!72457)

(assert (=> b!7504057 (= res!3010491 (= (size!42250 lt!2633829) (+ (size!42250 testedP!204) (size!42250 testedSuffix!164))))))

(declare-fun b!7504058 () Bool)

(assert (=> b!7504058 (= e!4474166 (or (not (= testedSuffix!164 Nil!72333)) (= lt!2633829 testedP!204)))))

(declare-fun b!7504056 () Bool)

(assert (=> b!7504056 (= e!4474167 (Cons!72333 (h!78781 testedP!204) (++!17308 (t!387026 testedP!204) testedSuffix!164)))))

(declare-fun d!2303444 () Bool)

(assert (=> d!2303444 e!4474166))

(declare-fun res!3010492 () Bool)

(assert (=> d!2303444 (=> (not res!3010492) (not e!4474166))))

(assert (=> d!2303444 (= res!3010492 (= (content!15289 lt!2633829) ((_ map or) (content!15289 testedP!204) (content!15289 testedSuffix!164))))))

(assert (=> d!2303444 (= lt!2633829 e!4474167)))

(declare-fun c!1385350 () Bool)

(assert (=> d!2303444 (= c!1385350 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303444 (= (++!17308 testedP!204 testedSuffix!164) lt!2633829)))

(assert (= (and d!2303444 c!1385350) b!7504055))

(assert (= (and d!2303444 (not c!1385350)) b!7504056))

(assert (= (and d!2303444 res!3010492) b!7504057))

(assert (= (and b!7504057 res!3010491) b!7504058))

(declare-fun m!8086248 () Bool)

(assert (=> b!7504057 m!8086248))

(assert (=> b!7504057 m!8086028))

(declare-fun m!8086250 () Bool)

(assert (=> b!7504057 m!8086250))

(declare-fun m!8086252 () Bool)

(assert (=> b!7504056 m!8086252))

(declare-fun m!8086254 () Bool)

(assert (=> d!2303444 m!8086254))

(assert (=> d!2303444 m!8086114))

(declare-fun m!8086256 () Bool)

(assert (=> d!2303444 m!8086256))

(assert (=> start!726214 d!2303444))

(declare-fun b!7504062 () Bool)

(declare-fun e!4474169 () Bool)

(assert (=> b!7504062 (= e!4474169 (>= (size!42250 totalInput!779) (size!42250 testedP!204)))))

(declare-fun b!7504059 () Bool)

(declare-fun e!4474170 () Bool)

(declare-fun e!4474168 () Bool)

(assert (=> b!7504059 (= e!4474170 e!4474168)))

(declare-fun res!3010495 () Bool)

(assert (=> b!7504059 (=> (not res!3010495) (not e!4474168))))

(assert (=> b!7504059 (= res!3010495 (not ((_ is Nil!72333) totalInput!779)))))

(declare-fun d!2303446 () Bool)

(assert (=> d!2303446 e!4474169))

(declare-fun res!3010494 () Bool)

(assert (=> d!2303446 (=> res!3010494 e!4474169)))

(declare-fun lt!2633830 () Bool)

(assert (=> d!2303446 (= res!3010494 (not lt!2633830))))

(assert (=> d!2303446 (= lt!2633830 e!4474170)))

(declare-fun res!3010493 () Bool)

(assert (=> d!2303446 (=> res!3010493 e!4474170)))

(assert (=> d!2303446 (= res!3010493 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303446 (= (isPrefix!5975 testedP!204 totalInput!779) lt!2633830)))

(declare-fun b!7504060 () Bool)

(declare-fun res!3010496 () Bool)

(assert (=> b!7504060 (=> (not res!3010496) (not e!4474168))))

(assert (=> b!7504060 (= res!3010496 (= (head!15415 testedP!204) (head!15415 totalInput!779)))))

(declare-fun b!7504061 () Bool)

(assert (=> b!7504061 (= e!4474168 (isPrefix!5975 (tail!14981 testedP!204) (tail!14981 totalInput!779)))))

(assert (= (and d!2303446 (not res!3010493)) b!7504059))

(assert (= (and b!7504059 res!3010495) b!7504060))

(assert (= (and b!7504060 res!3010496) b!7504061))

(assert (= (and d!2303446 (not res!3010494)) b!7504062))

(assert (=> b!7504062 m!8086030))

(assert (=> b!7504062 m!8086028))

(declare-fun m!8086258 () Bool)

(assert (=> b!7504060 m!8086258))

(assert (=> b!7504060 m!8086048))

(declare-fun m!8086260 () Bool)

(assert (=> b!7504061 m!8086260))

(assert (=> b!7504061 m!8086050))

(assert (=> b!7504061 m!8086260))

(assert (=> b!7504061 m!8086050))

(declare-fun m!8086262 () Bool)

(assert (=> b!7504061 m!8086262))

(assert (=> b!7503918 d!2303446))

(declare-fun b!7504066 () Bool)

(declare-fun e!4474172 () Bool)

(assert (=> b!7504066 (= e!4474172 (>= (size!42250 lt!2633732) (size!42250 testedP!204)))))

(declare-fun b!7504063 () Bool)

(declare-fun e!4474173 () Bool)

(declare-fun e!4474171 () Bool)

(assert (=> b!7504063 (= e!4474173 e!4474171)))

(declare-fun res!3010499 () Bool)

(assert (=> b!7504063 (=> (not res!3010499) (not e!4474171))))

(assert (=> b!7504063 (= res!3010499 (not ((_ is Nil!72333) lt!2633732)))))

(declare-fun d!2303448 () Bool)

(assert (=> d!2303448 e!4474172))

(declare-fun res!3010498 () Bool)

(assert (=> d!2303448 (=> res!3010498 e!4474172)))

(declare-fun lt!2633831 () Bool)

(assert (=> d!2303448 (= res!3010498 (not lt!2633831))))

(assert (=> d!2303448 (= lt!2633831 e!4474173)))

(declare-fun res!3010497 () Bool)

(assert (=> d!2303448 (=> res!3010497 e!4474173)))

(assert (=> d!2303448 (= res!3010497 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303448 (= (isPrefix!5975 testedP!204 lt!2633732) lt!2633831)))

(declare-fun b!7504064 () Bool)

(declare-fun res!3010500 () Bool)

(assert (=> b!7504064 (=> (not res!3010500) (not e!4474171))))

(assert (=> b!7504064 (= res!3010500 (= (head!15415 testedP!204) (head!15415 lt!2633732)))))

(declare-fun b!7504065 () Bool)

(assert (=> b!7504065 (= e!4474171 (isPrefix!5975 (tail!14981 testedP!204) (tail!14981 lt!2633732)))))

(assert (= (and d!2303448 (not res!3010497)) b!7504063))

(assert (= (and b!7504063 res!3010499) b!7504064))

(assert (= (and b!7504064 res!3010500) b!7504065))

(assert (= (and d!2303448 (not res!3010498)) b!7504066))

(declare-fun m!8086264 () Bool)

(assert (=> b!7504066 m!8086264))

(assert (=> b!7504066 m!8086028))

(assert (=> b!7504064 m!8086258))

(declare-fun m!8086266 () Bool)

(assert (=> b!7504064 m!8086266))

(assert (=> b!7504065 m!8086260))

(declare-fun m!8086268 () Bool)

(assert (=> b!7504065 m!8086268))

(assert (=> b!7504065 m!8086260))

(assert (=> b!7504065 m!8086268))

(declare-fun m!8086270 () Bool)

(assert (=> b!7504065 m!8086270))

(assert (=> b!7503918 d!2303448))

(declare-fun d!2303450 () Bool)

(assert (=> d!2303450 (isPrefix!5975 testedP!204 (++!17308 testedP!204 testedSuffix!164))))

(declare-fun lt!2633834 () Unit!166298)

(declare-fun choose!58072 (List!72457 List!72457) Unit!166298)

(assert (=> d!2303450 (= lt!2633834 (choose!58072 testedP!204 testedSuffix!164))))

(assert (=> d!2303450 (= (lemmaConcatTwoListThenFirstIsPrefix!3688 testedP!204 testedSuffix!164) lt!2633834)))

(declare-fun bs!1937968 () Bool)

(assert (= bs!1937968 d!2303450))

(assert (=> bs!1937968 m!8086026))

(assert (=> bs!1937968 m!8086026))

(declare-fun m!8086272 () Bool)

(assert (=> bs!1937968 m!8086272))

(declare-fun m!8086274 () Bool)

(assert (=> bs!1937968 m!8086274))

(assert (=> b!7503918 d!2303450))

(declare-fun d!2303452 () Bool)

(declare-fun lt!2633835 () Int)

(assert (=> d!2303452 (>= lt!2633835 0)))

(declare-fun e!4474174 () Int)

(assert (=> d!2303452 (= lt!2633835 e!4474174)))

(declare-fun c!1385351 () Bool)

(assert (=> d!2303452 (= c!1385351 ((_ is Nil!72333) lt!2633734))))

(assert (=> d!2303452 (= (size!42250 lt!2633734) lt!2633835)))

(declare-fun b!7504067 () Bool)

(assert (=> b!7504067 (= e!4474174 0)))

(declare-fun b!7504068 () Bool)

(assert (=> b!7504068 (= e!4474174 (+ 1 (size!42250 (t!387026 lt!2633734))))))

(assert (= (and d!2303452 c!1385351) b!7504067))

(assert (= (and d!2303452 (not c!1385351)) b!7504068))

(declare-fun m!8086276 () Bool)

(assert (=> b!7504068 m!8086276))

(assert (=> b!7503912 d!2303452))

(declare-fun d!2303454 () Bool)

(declare-fun lt!2633836 () Int)

(assert (=> d!2303454 (>= lt!2633836 0)))

(declare-fun e!4474175 () Int)

(assert (=> d!2303454 (= lt!2633836 e!4474175)))

(declare-fun c!1385352 () Bool)

(assert (=> d!2303454 (= c!1385352 ((_ is Nil!72333) totalInput!779))))

(assert (=> d!2303454 (= (size!42250 totalInput!779) lt!2633836)))

(declare-fun b!7504069 () Bool)

(assert (=> b!7504069 (= e!4474175 0)))

(declare-fun b!7504070 () Bool)

(assert (=> b!7504070 (= e!4474175 (+ 1 (size!42250 (t!387026 totalInput!779))))))

(assert (= (and d!2303454 c!1385352) b!7504069))

(assert (= (and d!2303454 (not c!1385352)) b!7504070))

(declare-fun m!8086278 () Bool)

(assert (=> b!7504070 m!8086278))

(assert (=> b!7503922 d!2303454))

(declare-fun bs!1937969 () Bool)

(declare-fun d!2303456 () Bool)

(assert (= bs!1937969 (and d!2303456 d!2303390)))

(declare-fun lambda!465193 () Int)

(assert (=> bs!1937969 (not (= lambda!465193 lambda!465177))))

(declare-fun bs!1937970 () Bool)

(declare-fun b!7504075 () Bool)

(assert (= bs!1937970 (and b!7504075 d!2303390)))

(declare-fun lambda!465194 () Int)

(assert (=> bs!1937970 (not (= lambda!465194 lambda!465177))))

(declare-fun bs!1937971 () Bool)

(assert (= bs!1937971 (and b!7504075 d!2303456)))

(assert (=> bs!1937971 (not (= lambda!465194 lambda!465193))))

(declare-fun bs!1937972 () Bool)

(declare-fun b!7504076 () Bool)

(assert (= bs!1937972 (and b!7504076 d!2303390)))

(declare-fun lambda!465195 () Int)

(assert (=> bs!1937972 (not (= lambda!465195 lambda!465177))))

(declare-fun bs!1937973 () Bool)

(assert (= bs!1937973 (and b!7504076 d!2303456)))

(assert (=> bs!1937973 (not (= lambda!465195 lambda!465193))))

(declare-fun bs!1937974 () Bool)

(assert (= bs!1937974 (and b!7504076 b!7504075)))

(assert (=> bs!1937974 (= lambda!465195 lambda!465194)))

(declare-fun bm!688662 () Bool)

(declare-datatypes ((List!72460 0))(
  ( (Nil!72336) (Cons!72336 (h!78784 Context!16882) (t!387029 List!72460)) )
))
(declare-fun call!688667 () List!72460)

(declare-fun toList!11822 ((InoxSet Context!16882)) List!72460)

(assert (=> bm!688662 (= call!688667 (toList!11822 z!3716))))

(declare-fun call!688668 () Bool)

(declare-fun c!1385363 () Bool)

(declare-fun bm!688663 () Bool)

(declare-fun lt!2633860 () List!72460)

(declare-fun lt!2633859 () List!72460)

(declare-fun exists!4849 (List!72460 Int) Bool)

(assert (=> bm!688663 (= call!688668 (exists!4849 (ite c!1385363 lt!2633859 lt!2633860) (ite c!1385363 lambda!465194 lambda!465195)))))

(declare-fun e!4474182 () Unit!166298)

(declare-fun Unit!166304 () Unit!166298)

(assert (=> b!7504076 (= e!4474182 Unit!166304)))

(assert (=> b!7504076 (= lt!2633860 call!688667)))

(declare-fun lt!2633856 () Unit!166298)

(declare-fun lemmaForallThenNotExists!460 (List!72460 Int) Unit!166298)

(assert (=> b!7504076 (= lt!2633856 (lemmaForallThenNotExists!460 lt!2633860 lambda!465193))))

(assert (=> b!7504076 (not call!688668)))

(declare-fun lt!2633853 () Unit!166298)

(assert (=> b!7504076 (= lt!2633853 lt!2633856)))

(declare-fun lt!2633855 () Bool)

(declare-datatypes ((Option!17218 0))(
  ( (None!17217) (Some!17217 (v!54346 List!72457)) )
))
(declare-fun isEmpty!41302 (Option!17218) Bool)

(declare-fun getLanguageWitness!1038 ((InoxSet Context!16882)) Option!17218)

(assert (=> d!2303456 (= lt!2633855 (isEmpty!41302 (getLanguageWitness!1038 z!3716)))))

(declare-fun forall!18270 ((InoxSet Context!16882) Int) Bool)

(assert (=> d!2303456 (= lt!2633855 (forall!18270 z!3716 lambda!465193))))

(declare-fun lt!2633857 () Unit!166298)

(assert (=> d!2303456 (= lt!2633857 e!4474182)))

(assert (=> d!2303456 (= c!1385363 (not (forall!18270 z!3716 lambda!465193)))))

(assert (=> d!2303456 (= (lostCauseZipper!1377 z!3716) lt!2633855)))

(declare-fun Unit!166305 () Unit!166298)

(assert (=> b!7504075 (= e!4474182 Unit!166305)))

(assert (=> b!7504075 (= lt!2633859 call!688667)))

(declare-fun lt!2633854 () Unit!166298)

(declare-fun lemmaNotForallThenExists!493 (List!72460 Int) Unit!166298)

(assert (=> b!7504075 (= lt!2633854 (lemmaNotForallThenExists!493 lt!2633859 lambda!465193))))

(assert (=> b!7504075 call!688668))

(declare-fun lt!2633858 () Unit!166298)

(assert (=> b!7504075 (= lt!2633858 lt!2633854)))

(assert (= (and d!2303456 c!1385363) b!7504075))

(assert (= (and d!2303456 (not c!1385363)) b!7504076))

(assert (= (or b!7504075 b!7504076) bm!688662))

(assert (= (or b!7504075 b!7504076) bm!688663))

(declare-fun m!8086280 () Bool)

(assert (=> bm!688662 m!8086280))

(declare-fun m!8086282 () Bool)

(assert (=> d!2303456 m!8086282))

(assert (=> d!2303456 m!8086282))

(declare-fun m!8086284 () Bool)

(assert (=> d!2303456 m!8086284))

(declare-fun m!8086286 () Bool)

(assert (=> d!2303456 m!8086286))

(assert (=> d!2303456 m!8086286))

(declare-fun m!8086288 () Bool)

(assert (=> b!7504076 m!8086288))

(declare-fun m!8086290 () Bool)

(assert (=> bm!688663 m!8086290))

(declare-fun m!8086292 () Bool)

(assert (=> b!7504075 m!8086292))

(assert (=> b!7503917 d!2303456))

(declare-fun d!2303458 () Bool)

(assert (=> d!2303458 (= testedSuffix!164 lt!2633730)))

(declare-fun lt!2633863 () Unit!166298)

(declare-fun choose!58073 (List!72457 List!72457 List!72457 List!72457 List!72457) Unit!166298)

(assert (=> d!2303458 (= lt!2633863 (choose!58073 testedP!204 testedSuffix!164 testedP!204 lt!2633730 totalInput!779))))

(assert (=> d!2303458 (isPrefix!5975 testedP!204 totalInput!779)))

(assert (=> d!2303458 (= (lemmaSamePrefixThenSameSuffix!2780 testedP!204 testedSuffix!164 testedP!204 lt!2633730 totalInput!779) lt!2633863)))

(declare-fun bs!1937975 () Bool)

(assert (= bs!1937975 d!2303458))

(declare-fun m!8086294 () Bool)

(assert (=> bs!1937975 m!8086294))

(assert (=> bs!1937975 m!8085996))

(assert (=> b!7503917 d!2303458))

(declare-fun d!2303460 () Bool)

(declare-fun lt!2633866 () List!72457)

(assert (=> d!2303460 (= (++!17308 testedP!204 lt!2633866) totalInput!779)))

(declare-fun e!4474185 () List!72457)

(assert (=> d!2303460 (= lt!2633866 e!4474185)))

(declare-fun c!1385366 () Bool)

(assert (=> d!2303460 (= c!1385366 ((_ is Cons!72333) testedP!204))))

(assert (=> d!2303460 (>= (size!42250 totalInput!779) (size!42250 testedP!204))))

(assert (=> d!2303460 (= (getSuffix!3477 totalInput!779 testedP!204) lt!2633866)))

(declare-fun b!7504081 () Bool)

(assert (=> b!7504081 (= e!4474185 (getSuffix!3477 (tail!14981 totalInput!779) (t!387026 testedP!204)))))

(declare-fun b!7504082 () Bool)

(assert (=> b!7504082 (= e!4474185 totalInput!779)))

(assert (= (and d!2303460 c!1385366) b!7504081))

(assert (= (and d!2303460 (not c!1385366)) b!7504082))

(declare-fun m!8086296 () Bool)

(assert (=> d!2303460 m!8086296))

(assert (=> d!2303460 m!8086030))

(assert (=> d!2303460 m!8086028))

(assert (=> b!7504081 m!8086050))

(assert (=> b!7504081 m!8086050))

(declare-fun m!8086298 () Bool)

(assert (=> b!7504081 m!8086298))

(assert (=> b!7503917 d!2303460))

(declare-fun b!7504087 () Bool)

(declare-fun e!4474188 () Bool)

(declare-fun tp!2178269 () Bool)

(declare-fun tp!2178270 () Bool)

(assert (=> b!7504087 (= e!4474188 (and tp!2178269 tp!2178270))))

(assert (=> b!7503924 (= tp!2178245 e!4474188)))

(assert (= (and b!7503924 ((_ is Cons!72334) (exprs!8941 setElem!56926))) b!7504087))

(declare-fun b!7504092 () Bool)

(declare-fun e!4474191 () Bool)

(declare-fun tp!2178273 () Bool)

(assert (=> b!7504092 (= e!4474191 (and tp_is_empty!49699 tp!2178273))))

(assert (=> b!7503914 (= tp!2178243 e!4474191)))

(assert (= (and b!7503914 ((_ is Cons!72333) (t!387026 testedP!204))) b!7504092))

(declare-fun condSetEmpty!56932 () Bool)

(assert (=> setNonEmpty!56926 (= condSetEmpty!56932 (= setRest!56926 ((as const (Array Context!16882 Bool)) false)))))

(declare-fun setRes!56932 () Bool)

(assert (=> setNonEmpty!56926 (= tp!2178247 setRes!56932)))

(declare-fun setIsEmpty!56932 () Bool)

(assert (=> setIsEmpty!56932 setRes!56932))

(declare-fun tp!2178278 () Bool)

(declare-fun e!4474194 () Bool)

(declare-fun setNonEmpty!56932 () Bool)

(declare-fun setElem!56932 () Context!16882)

(assert (=> setNonEmpty!56932 (= setRes!56932 (and tp!2178278 (inv!92437 setElem!56932) e!4474194))))

(declare-fun setRest!56932 () (InoxSet Context!16882))

(assert (=> setNonEmpty!56932 (= setRest!56926 ((_ map or) (store ((as const (Array Context!16882 Bool)) false) setElem!56932 true) setRest!56932))))

(declare-fun b!7504097 () Bool)

(declare-fun tp!2178279 () Bool)

(assert (=> b!7504097 (= e!4474194 tp!2178279)))

(assert (= (and setNonEmpty!56926 condSetEmpty!56932) setIsEmpty!56932))

(assert (= (and setNonEmpty!56926 (not condSetEmpty!56932)) setNonEmpty!56932))

(assert (= setNonEmpty!56932 b!7504097))

(declare-fun m!8086300 () Bool)

(assert (=> setNonEmpty!56932 m!8086300))

(declare-fun b!7504098 () Bool)

(declare-fun e!4474195 () Bool)

(declare-fun tp!2178280 () Bool)

(assert (=> b!7504098 (= e!4474195 (and tp_is_empty!49699 tp!2178280))))

(assert (=> b!7503919 (= tp!2178246 e!4474195)))

(assert (= (and b!7503919 ((_ is Cons!72333) (t!387026 totalInput!779))) b!7504098))

(declare-fun b!7504099 () Bool)

(declare-fun e!4474196 () Bool)

(declare-fun tp!2178281 () Bool)

(assert (=> b!7504099 (= e!4474196 (and tp_is_empty!49699 tp!2178281))))

(assert (=> b!7503913 (= tp!2178244 e!4474196)))

(assert (= (and b!7503913 ((_ is Cons!72333) (t!387026 testedSuffix!164))) b!7504099))

(check-sat (not b!7503981) (not b!7504068) tp_is_empty!49699 (not b!7504047) (not b!7504056) (not d!2303442) (not b!7504066) (not b!7504064) (not b!7504057) (not b!7503986) (not d!2303458) (not b!7503982) (not d!2303436) (not bm!688663) (not b!7504098) (not b!7504097) (not b!7503937) (not b!7503985) (not b!7504092) (not d!2303376) (not d!2303390) (not d!2303456) (not d!2303434) (not d!2303440) (not d!2303362) (not b!7504087) (not b!7504061) (not setNonEmpty!56932) (not b!7504054) (not b!7504042) (not b!7504081) (not b!7504076) (not b!7504075) (not d!2303366) (not b!7504043) (not b!7504062) (not b!7504099) (not d!2303460) (not b!7504060) (not d!2303444) (not b!7504046) (not b!7504070) (not b!7503987) (not d!2303450) (not d!2303430) (not b!7503935) (not bm!688662) (not d!2303370) (not b!7503936) (not b!7504065))
(check-sat)
(get-model)

(declare-fun d!2303570 () Bool)

(declare-fun e!4474264 () Bool)

(assert (=> d!2303570 e!4474264))

(declare-fun res!3010547 () Bool)

(assert (=> d!2303570 (=> (not res!3010547) (not e!4474264))))

(declare-fun lt!2633905 () List!72460)

(declare-fun noDuplicate!3140 (List!72460) Bool)

(assert (=> d!2303570 (= res!3010547 (noDuplicate!3140 lt!2633905))))

(declare-fun choose!58075 ((InoxSet Context!16882)) List!72460)

(assert (=> d!2303570 (= lt!2633905 (choose!58075 z!3716))))

(assert (=> d!2303570 (= (toList!11822 z!3716) lt!2633905)))

(declare-fun b!7504216 () Bool)

(declare-fun content!15290 (List!72460) (InoxSet Context!16882))

(assert (=> b!7504216 (= e!4474264 (= (content!15290 lt!2633905) z!3716))))

(assert (= (and d!2303570 res!3010547) b!7504216))

(declare-fun m!8086490 () Bool)

(assert (=> d!2303570 m!8086490))

(declare-fun m!8086492 () Bool)

(assert (=> d!2303570 m!8086492))

(declare-fun m!8086494 () Bool)

(assert (=> b!7504216 m!8086494))

(assert (=> bm!688662 d!2303570))

(declare-fun bs!1937995 () Bool)

(declare-fun d!2303582 () Bool)

(assert (= bs!1937995 (and d!2303582 d!2303390)))

(declare-fun lambda!465209 () Int)

(assert (=> bs!1937995 (not (= lambda!465209 lambda!465177))))

(declare-fun bs!1937996 () Bool)

(assert (= bs!1937996 (and d!2303582 d!2303456)))

(assert (=> bs!1937996 (not (= lambda!465209 lambda!465193))))

(declare-fun bs!1937997 () Bool)

(assert (= bs!1937997 (and d!2303582 b!7504075)))

(assert (=> bs!1937997 (not (= lambda!465209 lambda!465194))))

(declare-fun bs!1937998 () Bool)

(assert (= bs!1937998 (and d!2303582 b!7504076)))

(assert (=> bs!1937998 (not (= lambda!465209 lambda!465195))))

(assert (=> d!2303582 true))

(declare-fun order!29643 () Int)

(declare-fun dynLambda!29772 (Int Int) Int)

(assert (=> d!2303582 (< (dynLambda!29772 order!29643 (ite c!1385363 lambda!465194 lambda!465195)) (dynLambda!29772 order!29643 lambda!465209))))

(declare-fun forall!18272 (List!72460 Int) Bool)

(assert (=> d!2303582 (= (exists!4849 (ite c!1385363 lt!2633859 lt!2633860) (ite c!1385363 lambda!465194 lambda!465195)) (not (forall!18272 (ite c!1385363 lt!2633859 lt!2633860) lambda!465209)))))

(declare-fun bs!1937999 () Bool)

(assert (= bs!1937999 d!2303582))

(declare-fun m!8086502 () Bool)

(assert (=> bs!1937999 m!8086502))

(assert (=> bm!688663 d!2303582))

(assert (=> b!7503987 d!2303454))

(declare-fun d!2303586 () Bool)

(declare-fun lt!2633911 () Int)

(assert (=> d!2303586 (>= lt!2633911 0)))

(declare-fun e!4474270 () Int)

(assert (=> d!2303586 (= lt!2633911 e!4474270)))

(declare-fun c!1385407 () Bool)

(assert (=> d!2303586 (= c!1385407 ((_ is Nil!72333) (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))

(assert (=> d!2303586 (= (size!42250 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))) lt!2633911)))

(declare-fun b!7504222 () Bool)

(assert (=> b!7504222 (= e!4474270 0)))

(declare-fun b!7504223 () Bool)

(assert (=> b!7504223 (= e!4474270 (+ 1 (size!42250 (t!387026 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))))

(assert (= (and d!2303586 c!1385407) b!7504222))

(assert (= (and d!2303586 (not c!1385407)) b!7504223))

(declare-fun m!8086504 () Bool)

(assert (=> b!7504223 m!8086504))

(assert (=> b!7503987 d!2303586))

(declare-fun e!4474272 () Bool)

(declare-fun b!7504227 () Bool)

(assert (=> b!7504227 (= e!4474272 (>= (size!42250 (tail!14981 totalInput!779)) (size!42250 (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))))

(declare-fun b!7504224 () Bool)

(declare-fun e!4474273 () Bool)

(declare-fun e!4474271 () Bool)

(assert (=> b!7504224 (= e!4474273 e!4474271)))

(declare-fun res!3010553 () Bool)

(assert (=> b!7504224 (=> (not res!3010553) (not e!4474271))))

(assert (=> b!7504224 (= res!3010553 (not ((_ is Nil!72333) (tail!14981 totalInput!779))))))

(declare-fun d!2303588 () Bool)

(assert (=> d!2303588 e!4474272))

(declare-fun res!3010552 () Bool)

(assert (=> d!2303588 (=> res!3010552 e!4474272)))

(declare-fun lt!2633912 () Bool)

(assert (=> d!2303588 (= res!3010552 (not lt!2633912))))

(assert (=> d!2303588 (= lt!2633912 e!4474273)))

(declare-fun res!3010551 () Bool)

(assert (=> d!2303588 (=> res!3010551 e!4474273)))

(assert (=> d!2303588 (= res!3010551 ((_ is Nil!72333) (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(assert (=> d!2303588 (= (isPrefix!5975 (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))) (tail!14981 totalInput!779)) lt!2633912)))

(declare-fun b!7504225 () Bool)

(declare-fun res!3010554 () Bool)

(assert (=> b!7504225 (=> (not res!3010554) (not e!4474271))))

(assert (=> b!7504225 (= res!3010554 (= (head!15415 (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))) (head!15415 (tail!14981 totalInput!779))))))

(declare-fun b!7504226 () Bool)

(assert (=> b!7504226 (= e!4474271 (isPrefix!5975 (tail!14981 (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))) (tail!14981 (tail!14981 totalInput!779))))))

(assert (= (and d!2303588 (not res!3010551)) b!7504224))

(assert (= (and b!7504224 res!3010553) b!7504225))

(assert (= (and b!7504225 res!3010554) b!7504226))

(assert (= (and d!2303588 (not res!3010552)) b!7504227))

(assert (=> b!7504227 m!8086050))

(declare-fun m!8086506 () Bool)

(assert (=> b!7504227 m!8086506))

(assert (=> b!7504227 m!8086122))

(declare-fun m!8086508 () Bool)

(assert (=> b!7504227 m!8086508))

(assert (=> b!7504225 m!8086122))

(declare-fun m!8086510 () Bool)

(assert (=> b!7504225 m!8086510))

(assert (=> b!7504225 m!8086050))

(declare-fun m!8086512 () Bool)

(assert (=> b!7504225 m!8086512))

(assert (=> b!7504226 m!8086122))

(declare-fun m!8086514 () Bool)

(assert (=> b!7504226 m!8086514))

(assert (=> b!7504226 m!8086050))

(declare-fun m!8086516 () Bool)

(assert (=> b!7504226 m!8086516))

(assert (=> b!7504226 m!8086514))

(assert (=> b!7504226 m!8086516))

(declare-fun m!8086518 () Bool)

(assert (=> b!7504226 m!8086518))

(assert (=> b!7503986 d!2303588))

(declare-fun d!2303590 () Bool)

(assert (=> d!2303590 (= (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))) (t!387026 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))

(assert (=> b!7503986 d!2303590))

(declare-fun d!2303592 () Bool)

(assert (=> d!2303592 (= (tail!14981 totalInput!779) (t!387026 totalInput!779))))

(assert (=> b!7503986 d!2303592))

(declare-fun d!2303594 () Bool)

(assert (=> d!2303594 (= testedSuffix!164 lt!2633730)))

(assert (=> d!2303594 true))

(declare-fun _$63!1349 () Unit!166298)

(assert (=> d!2303594 (= (choose!58073 testedP!204 testedSuffix!164 testedP!204 lt!2633730 totalInput!779) _$63!1349)))

(assert (=> d!2303458 d!2303594))

(assert (=> d!2303458 d!2303446))

(declare-fun d!2303596 () Bool)

(assert (=> d!2303596 (= totalInput!779 testedP!204)))

(assert (=> d!2303596 true))

(declare-fun _$60!1273 () Unit!166298)

(assert (=> d!2303596 (= (choose!58068 totalInput!779 testedP!204 totalInput!779) _$60!1273)))

(assert (=> d!2303366 d!2303596))

(assert (=> d!2303366 d!2303364))

(declare-fun d!2303602 () Bool)

(declare-fun res!3010559 () Bool)

(declare-fun e!4474282 () Bool)

(assert (=> d!2303602 (=> res!3010559 e!4474282)))

(assert (=> d!2303602 (= res!3010559 ((_ is Nil!72334) (exprs!8941 setElem!56926)))))

(assert (=> d!2303602 (= (forall!18269 (exprs!8941 setElem!56926) lambda!465180) e!4474282)))

(declare-fun b!7504236 () Bool)

(declare-fun e!4474283 () Bool)

(assert (=> b!7504236 (= e!4474282 e!4474283)))

(declare-fun res!3010560 () Bool)

(assert (=> b!7504236 (=> (not res!3010560) (not e!4474283))))

(declare-fun dynLambda!29773 (Int Regex!19689) Bool)

(assert (=> b!7504236 (= res!3010560 (dynLambda!29773 lambda!465180 (h!78782 (exprs!8941 setElem!56926))))))

(declare-fun b!7504237 () Bool)

(assert (=> b!7504237 (= e!4474283 (forall!18269 (t!387027 (exprs!8941 setElem!56926)) lambda!465180))))

(assert (= (and d!2303602 (not res!3010559)) b!7504236))

(assert (= (and b!7504236 res!3010560) b!7504237))

(declare-fun b_lambda!287853 () Bool)

(assert (=> (not b_lambda!287853) (not b!7504236)))

(declare-fun m!8086534 () Bool)

(assert (=> b!7504236 m!8086534))

(declare-fun m!8086536 () Bool)

(assert (=> b!7504237 m!8086536))

(assert (=> d!2303442 d!2303602))

(declare-fun d!2303606 () Bool)

(declare-fun lt!2633916 () List!72457)

(assert (=> d!2303606 (= (++!17308 (t!387026 testedP!204) lt!2633916) (tail!14981 totalInput!779))))

(declare-fun e!4474284 () List!72457)

(assert (=> d!2303606 (= lt!2633916 e!4474284)))

(declare-fun c!1385410 () Bool)

(assert (=> d!2303606 (= c!1385410 ((_ is Cons!72333) (t!387026 testedP!204)))))

(assert (=> d!2303606 (>= (size!42250 (tail!14981 totalInput!779)) (size!42250 (t!387026 testedP!204)))))

(assert (=> d!2303606 (= (getSuffix!3477 (tail!14981 totalInput!779) (t!387026 testedP!204)) lt!2633916)))

(declare-fun b!7504238 () Bool)

(assert (=> b!7504238 (= e!4474284 (getSuffix!3477 (tail!14981 (tail!14981 totalInput!779)) (t!387026 (t!387026 testedP!204))))))

(declare-fun b!7504239 () Bool)

(assert (=> b!7504239 (= e!4474284 (tail!14981 totalInput!779))))

(assert (= (and d!2303606 c!1385410) b!7504238))

(assert (= (and d!2303606 (not c!1385410)) b!7504239))

(declare-fun m!8086538 () Bool)

(assert (=> d!2303606 m!8086538))

(assert (=> d!2303606 m!8086050))

(assert (=> d!2303606 m!8086506))

(assert (=> d!2303606 m!8086242))

(assert (=> b!7504238 m!8086050))

(assert (=> b!7504238 m!8086516))

(assert (=> b!7504238 m!8086516))

(declare-fun m!8086540 () Bool)

(assert (=> b!7504238 m!8086540))

(assert (=> b!7504081 d!2303606))

(assert (=> b!7504081 d!2303592))

(declare-fun d!2303608 () Bool)

(assert (=> d!2303608 (= (head!15415 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))) (h!78781 (++!17308 testedP!204 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))

(assert (=> b!7503985 d!2303608))

(declare-fun d!2303610 () Bool)

(assert (=> d!2303610 (= (head!15415 totalInput!779) (h!78781 totalInput!779))))

(assert (=> b!7503985 d!2303610))

(declare-fun bs!1938009 () Bool)

(declare-fun d!2303612 () Bool)

(assert (= bs!1938009 (and d!2303612 d!2303442)))

(declare-fun lambda!465216 () Int)

(assert (=> bs!1938009 (= lambda!465216 lambda!465180)))

(assert (=> d!2303612 (= (inv!92437 setElem!56932) (forall!18269 (exprs!8941 setElem!56932) lambda!465216))))

(declare-fun bs!1938012 () Bool)

(assert (= bs!1938012 d!2303612))

(declare-fun m!8086542 () Bool)

(assert (=> bs!1938012 m!8086542))

(assert (=> setNonEmpty!56932 d!2303612))

(declare-fun b!7504240 () Bool)

(declare-fun e!4474286 () List!72457)

(assert (=> b!7504240 (= e!4474286 (Cons!72333 (head!15415 lt!2633730) Nil!72333))))

(declare-fun b!7504242 () Bool)

(declare-fun res!3010561 () Bool)

(declare-fun e!4474285 () Bool)

(assert (=> b!7504242 (=> (not res!3010561) (not e!4474285))))

(declare-fun lt!2633918 () List!72457)

(assert (=> b!7504242 (= res!3010561 (= (size!42250 lt!2633918) (+ (size!42250 (t!387026 testedP!204)) (size!42250 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(declare-fun b!7504243 () Bool)

(assert (=> b!7504243 (= e!4474285 (or (not (= (Cons!72333 (head!15415 lt!2633730) Nil!72333) Nil!72333)) (= lt!2633918 (t!387026 testedP!204))))))

(declare-fun b!7504241 () Bool)

(assert (=> b!7504241 (= e!4474286 (Cons!72333 (h!78781 (t!387026 testedP!204)) (++!17308 (t!387026 (t!387026 testedP!204)) (Cons!72333 (head!15415 lt!2633730) Nil!72333))))))

(declare-fun d!2303614 () Bool)

(assert (=> d!2303614 e!4474285))

(declare-fun res!3010562 () Bool)

(assert (=> d!2303614 (=> (not res!3010562) (not e!4474285))))

(assert (=> d!2303614 (= res!3010562 (= (content!15289 lt!2633918) ((_ map or) (content!15289 (t!387026 testedP!204)) (content!15289 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(assert (=> d!2303614 (= lt!2633918 e!4474286)))

(declare-fun c!1385411 () Bool)

(assert (=> d!2303614 (= c!1385411 ((_ is Nil!72333) (t!387026 testedP!204)))))

(assert (=> d!2303614 (= (++!17308 (t!387026 testedP!204) (Cons!72333 (head!15415 lt!2633730) Nil!72333)) lt!2633918)))

(assert (= (and d!2303614 c!1385411) b!7504240))

(assert (= (and d!2303614 (not c!1385411)) b!7504241))

(assert (= (and d!2303614 res!3010562) b!7504242))

(assert (= (and b!7504242 res!3010561) b!7504243))

(declare-fun m!8086548 () Bool)

(assert (=> b!7504242 m!8086548))

(assert (=> b!7504242 m!8086242))

(assert (=> b!7504242 m!8086234))

(declare-fun m!8086552 () Bool)

(assert (=> b!7504241 m!8086552))

(declare-fun m!8086554 () Bool)

(assert (=> d!2303614 m!8086554))

(declare-fun m!8086556 () Bool)

(assert (=> d!2303614 m!8086556))

(assert (=> d!2303614 m!8086240))

(assert (=> b!7504046 d!2303614))

(assert (=> b!7503937 d!2303454))

(declare-fun d!2303618 () Bool)

(declare-fun c!1385415 () Bool)

(assert (=> d!2303618 (= c!1385415 ((_ is Nil!72333) lt!2633767))))

(declare-fun e!4474293 () (InoxSet C!39684))

(assert (=> d!2303618 (= (content!15289 lt!2633767) e!4474293)))

(declare-fun b!7504262 () Bool)

(assert (=> b!7504262 (= e!4474293 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504263 () Bool)

(assert (=> b!7504263 (= e!4474293 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 lt!2633767) true) (content!15289 (t!387026 lt!2633767))))))

(assert (= (and d!2303618 c!1385415) b!7504262))

(assert (= (and d!2303618 (not c!1385415)) b!7504263))

(declare-fun m!8086568 () Bool)

(assert (=> b!7504263 m!8086568))

(declare-fun m!8086570 () Bool)

(assert (=> b!7504263 m!8086570))

(assert (=> d!2303376 d!2303618))

(declare-fun d!2303620 () Bool)

(declare-fun c!1385416 () Bool)

(assert (=> d!2303620 (= c!1385416 ((_ is Nil!72333) testedP!204))))

(declare-fun e!4474295 () (InoxSet C!39684))

(assert (=> d!2303620 (= (content!15289 testedP!204) e!4474295)))

(declare-fun b!7504268 () Bool)

(assert (=> b!7504268 (= e!4474295 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504269 () Bool)

(assert (=> b!7504269 (= e!4474295 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 testedP!204) true) (content!15289 (t!387026 testedP!204))))))

(assert (= (and d!2303620 c!1385416) b!7504268))

(assert (= (and d!2303620 (not c!1385416)) b!7504269))

(declare-fun m!8086572 () Bool)

(assert (=> b!7504269 m!8086572))

(assert (=> b!7504269 m!8086556))

(assert (=> d!2303376 d!2303620))

(declare-fun d!2303622 () Bool)

(declare-fun c!1385417 () Bool)

(assert (=> d!2303622 (= c!1385417 ((_ is Nil!72333) (Cons!72333 lt!2633725 Nil!72333)))))

(declare-fun e!4474298 () (InoxSet C!39684))

(assert (=> d!2303622 (= (content!15289 (Cons!72333 lt!2633725 Nil!72333)) e!4474298)))

(declare-fun b!7504272 () Bool)

(assert (=> b!7504272 (= e!4474298 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504273 () Bool)

(assert (=> b!7504273 (= e!4474298 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 (Cons!72333 lt!2633725 Nil!72333)) true) (content!15289 (t!387026 (Cons!72333 lt!2633725 Nil!72333)))))))

(assert (= (and d!2303622 c!1385417) b!7504272))

(assert (= (and d!2303622 (not c!1385417)) b!7504273))

(declare-fun m!8086574 () Bool)

(assert (=> b!7504273 m!8086574))

(declare-fun m!8086576 () Bool)

(assert (=> b!7504273 m!8086576))

(assert (=> d!2303376 d!2303622))

(declare-fun d!2303624 () Bool)

(declare-fun lt!2633920 () Int)

(assert (=> d!2303624 (>= lt!2633920 0)))

(declare-fun e!4474301 () Int)

(assert (=> d!2303624 (= lt!2633920 e!4474301)))

(declare-fun c!1385418 () Bool)

(assert (=> d!2303624 (= c!1385418 ((_ is Nil!72333) lt!2633818))))

(assert (=> d!2303624 (= (size!42250 lt!2633818) lt!2633920)))

(declare-fun b!7504276 () Bool)

(assert (=> b!7504276 (= e!4474301 0)))

(declare-fun b!7504277 () Bool)

(assert (=> b!7504277 (= e!4474301 (+ 1 (size!42250 (t!387026 lt!2633818))))))

(assert (= (and d!2303624 c!1385418) b!7504276))

(assert (= (and d!2303624 (not c!1385418)) b!7504277))

(declare-fun m!8086578 () Bool)

(assert (=> b!7504277 m!8086578))

(assert (=> b!7504043 d!2303624))

(assert (=> b!7504043 d!2303452))

(declare-fun d!2303626 () Bool)

(declare-fun lt!2633921 () Int)

(assert (=> d!2303626 (>= lt!2633921 0)))

(declare-fun e!4474304 () Int)

(assert (=> d!2303626 (= lt!2633921 e!4474304)))

(declare-fun c!1385419 () Bool)

(assert (=> d!2303626 (= c!1385419 ((_ is Nil!72333) lt!2633723))))

(assert (=> d!2303626 (= (size!42250 lt!2633723) lt!2633921)))

(declare-fun b!7504280 () Bool)

(assert (=> b!7504280 (= e!4474304 0)))

(declare-fun b!7504281 () Bool)

(assert (=> b!7504281 (= e!4474304 (+ 1 (size!42250 (t!387026 lt!2633723))))))

(assert (= (and d!2303626 c!1385419) b!7504280))

(assert (= (and d!2303626 (not c!1385419)) b!7504281))

(declare-fun m!8086580 () Bool)

(assert (=> b!7504281 m!8086580))

(assert (=> b!7504043 d!2303626))

(declare-fun bs!1938018 () Bool)

(declare-fun d!2303628 () Bool)

(assert (= bs!1938018 (and d!2303628 d!2303456)))

(declare-fun lambda!465219 () Int)

(assert (=> bs!1938018 (not (= lambda!465219 lambda!465193))))

(declare-fun bs!1938019 () Bool)

(assert (= bs!1938019 (and d!2303628 b!7504075)))

(assert (=> bs!1938019 (not (= lambda!465219 lambda!465194))))

(declare-fun bs!1938020 () Bool)

(assert (= bs!1938020 (and d!2303628 d!2303582)))

(assert (=> bs!1938020 (= (= lambda!465193 (ite c!1385363 lambda!465194 lambda!465195)) (= lambda!465219 lambda!465209))))

(declare-fun bs!1938021 () Bool)

(assert (= bs!1938021 (and d!2303628 d!2303390)))

(assert (=> bs!1938021 (not (= lambda!465219 lambda!465177))))

(declare-fun bs!1938022 () Bool)

(assert (= bs!1938022 (and d!2303628 b!7504076)))

(assert (=> bs!1938022 (not (= lambda!465219 lambda!465195))))

(assert (=> d!2303628 true))

(assert (=> d!2303628 (< (dynLambda!29772 order!29643 lambda!465193) (dynLambda!29772 order!29643 lambda!465219))))

(assert (=> d!2303628 (not (exists!4849 lt!2633860 lambda!465219))))

(declare-fun lt!2633924 () Unit!166298)

(declare-fun choose!58076 (List!72460 Int) Unit!166298)

(assert (=> d!2303628 (= lt!2633924 (choose!58076 lt!2633860 lambda!465193))))

(assert (=> d!2303628 (forall!18272 lt!2633860 lambda!465193)))

(assert (=> d!2303628 (= (lemmaForallThenNotExists!460 lt!2633860 lambda!465193) lt!2633924)))

(declare-fun bs!1938023 () Bool)

(assert (= bs!1938023 d!2303628))

(declare-fun m!8086586 () Bool)

(assert (=> bs!1938023 m!8086586))

(declare-fun m!8086588 () Bool)

(assert (=> bs!1938023 m!8086588))

(declare-fun m!8086590 () Bool)

(assert (=> bs!1938023 m!8086590))

(assert (=> b!7504076 d!2303628))

(declare-fun b!7504285 () Bool)

(declare-fun e!4474308 () Bool)

(assert (=> b!7504285 (= e!4474308 (>= (size!42250 (++!17308 testedP!204 testedSuffix!164)) (size!42250 testedP!204)))))

(declare-fun b!7504282 () Bool)

(declare-fun e!4474309 () Bool)

(declare-fun e!4474307 () Bool)

(assert (=> b!7504282 (= e!4474309 e!4474307)))

(declare-fun res!3010567 () Bool)

(assert (=> b!7504282 (=> (not res!3010567) (not e!4474307))))

(assert (=> b!7504282 (= res!3010567 (not ((_ is Nil!72333) (++!17308 testedP!204 testedSuffix!164))))))

(declare-fun d!2303632 () Bool)

(assert (=> d!2303632 e!4474308))

(declare-fun res!3010566 () Bool)

(assert (=> d!2303632 (=> res!3010566 e!4474308)))

(declare-fun lt!2633925 () Bool)

(assert (=> d!2303632 (= res!3010566 (not lt!2633925))))

(assert (=> d!2303632 (= lt!2633925 e!4474309)))

(declare-fun res!3010565 () Bool)

(assert (=> d!2303632 (=> res!3010565 e!4474309)))

(assert (=> d!2303632 (= res!3010565 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303632 (= (isPrefix!5975 testedP!204 (++!17308 testedP!204 testedSuffix!164)) lt!2633925)))

(declare-fun b!7504283 () Bool)

(declare-fun res!3010568 () Bool)

(assert (=> b!7504283 (=> (not res!3010568) (not e!4474307))))

(assert (=> b!7504283 (= res!3010568 (= (head!15415 testedP!204) (head!15415 (++!17308 testedP!204 testedSuffix!164))))))

(declare-fun b!7504284 () Bool)

(assert (=> b!7504284 (= e!4474307 (isPrefix!5975 (tail!14981 testedP!204) (tail!14981 (++!17308 testedP!204 testedSuffix!164))))))

(assert (= (and d!2303632 (not res!3010565)) b!7504282))

(assert (= (and b!7504282 res!3010567) b!7504283))

(assert (= (and b!7504283 res!3010568) b!7504284))

(assert (= (and d!2303632 (not res!3010566)) b!7504285))

(assert (=> b!7504285 m!8086026))

(declare-fun m!8086592 () Bool)

(assert (=> b!7504285 m!8086592))

(assert (=> b!7504285 m!8086028))

(assert (=> b!7504283 m!8086258))

(assert (=> b!7504283 m!8086026))

(declare-fun m!8086594 () Bool)

(assert (=> b!7504283 m!8086594))

(assert (=> b!7504284 m!8086260))

(assert (=> b!7504284 m!8086026))

(declare-fun m!8086596 () Bool)

(assert (=> b!7504284 m!8086596))

(assert (=> b!7504284 m!8086260))

(assert (=> b!7504284 m!8086596))

(declare-fun m!8086598 () Bool)

(assert (=> b!7504284 m!8086598))

(assert (=> d!2303450 d!2303632))

(assert (=> d!2303450 d!2303444))

(declare-fun d!2303634 () Bool)

(assert (=> d!2303634 (isPrefix!5975 testedP!204 (++!17308 testedP!204 testedSuffix!164))))

(assert (=> d!2303634 true))

(declare-fun _$46!2073 () Unit!166298)

(assert (=> d!2303634 (= (choose!58072 testedP!204 testedSuffix!164) _$46!2073)))

(declare-fun bs!1938024 () Bool)

(assert (= bs!1938024 d!2303634))

(assert (=> bs!1938024 m!8086026))

(assert (=> bs!1938024 m!8086026))

(assert (=> bs!1938024 m!8086272))

(assert (=> d!2303450 d!2303634))

(declare-fun d!2303636 () Bool)

(declare-fun c!1385420 () Bool)

(assert (=> d!2303636 (= c!1385420 ((_ is Nil!72333) lt!2633829))))

(declare-fun e!4474310 () (InoxSet C!39684))

(assert (=> d!2303636 (= (content!15289 lt!2633829) e!4474310)))

(declare-fun b!7504286 () Bool)

(assert (=> b!7504286 (= e!4474310 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504287 () Bool)

(assert (=> b!7504287 (= e!4474310 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 lt!2633829) true) (content!15289 (t!387026 lt!2633829))))))

(assert (= (and d!2303636 c!1385420) b!7504286))

(assert (= (and d!2303636 (not c!1385420)) b!7504287))

(declare-fun m!8086600 () Bool)

(assert (=> b!7504287 m!8086600))

(declare-fun m!8086602 () Bool)

(assert (=> b!7504287 m!8086602))

(assert (=> d!2303444 d!2303636))

(assert (=> d!2303444 d!2303620))

(declare-fun d!2303638 () Bool)

(declare-fun c!1385421 () Bool)

(assert (=> d!2303638 (= c!1385421 ((_ is Nil!72333) testedSuffix!164))))

(declare-fun e!4474311 () (InoxSet C!39684))

(assert (=> d!2303638 (= (content!15289 testedSuffix!164) e!4474311)))

(declare-fun b!7504288 () Bool)

(assert (=> b!7504288 (= e!4474311 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504289 () Bool)

(assert (=> b!7504289 (= e!4474311 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 testedSuffix!164) true) (content!15289 (t!387026 testedSuffix!164))))))

(assert (= (and d!2303638 c!1385421) b!7504288))

(assert (= (and d!2303638 (not c!1385421)) b!7504289))

(declare-fun m!8086604 () Bool)

(assert (=> b!7504289 m!8086604))

(declare-fun m!8086606 () Bool)

(assert (=> b!7504289 m!8086606))

(assert (=> d!2303444 d!2303638))

(declare-fun d!2303640 () Bool)

(declare-fun lt!2633926 () Int)

(assert (=> d!2303640 (>= lt!2633926 0)))

(declare-fun e!4474312 () Int)

(assert (=> d!2303640 (= lt!2633926 e!4474312)))

(declare-fun c!1385422 () Bool)

(assert (=> d!2303640 (= c!1385422 ((_ is Nil!72333) lt!2633822))))

(assert (=> d!2303640 (= (size!42250 lt!2633822) lt!2633926)))

(declare-fun b!7504290 () Bool)

(assert (=> b!7504290 (= e!4474312 0)))

(declare-fun b!7504291 () Bool)

(assert (=> b!7504291 (= e!4474312 (+ 1 (size!42250 (t!387026 lt!2633822))))))

(assert (= (and d!2303640 c!1385422) b!7504290))

(assert (= (and d!2303640 (not c!1385422)) b!7504291))

(declare-fun m!8086608 () Bool)

(assert (=> b!7504291 m!8086608))

(assert (=> b!7504047 d!2303640))

(assert (=> b!7504047 d!2303438))

(declare-fun d!2303642 () Bool)

(declare-fun lt!2633927 () Int)

(assert (=> d!2303642 (>= lt!2633927 0)))

(declare-fun e!4474313 () Int)

(assert (=> d!2303642 (= lt!2633927 e!4474313)))

(declare-fun c!1385423 () Bool)

(assert (=> d!2303642 (= c!1385423 ((_ is Nil!72333) (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))

(assert (=> d!2303642 (= (size!42250 (Cons!72333 (head!15415 lt!2633730) Nil!72333)) lt!2633927)))

(declare-fun b!7504292 () Bool)

(assert (=> b!7504292 (= e!4474313 0)))

(declare-fun b!7504293 () Bool)

(assert (=> b!7504293 (= e!4474313 (+ 1 (size!42250 (t!387026 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(assert (= (and d!2303642 c!1385423) b!7504292))

(assert (= (and d!2303642 (not c!1385423)) b!7504293))

(declare-fun m!8086610 () Bool)

(assert (=> b!7504293 m!8086610))

(assert (=> b!7504047 d!2303642))

(declare-fun d!2303644 () Bool)

(declare-fun lt!2633928 () Int)

(assert (=> d!2303644 (>= lt!2633928 0)))

(declare-fun e!4474314 () Int)

(assert (=> d!2303644 (= lt!2633928 e!4474314)))

(declare-fun c!1385424 () Bool)

(assert (=> d!2303644 (= c!1385424 ((_ is Nil!72333) (t!387026 lt!2633734)))))

(assert (=> d!2303644 (= (size!42250 (t!387026 lt!2633734)) lt!2633928)))

(declare-fun b!7504294 () Bool)

(assert (=> b!7504294 (= e!4474314 0)))

(declare-fun b!7504295 () Bool)

(assert (=> b!7504295 (= e!4474314 (+ 1 (size!42250 (t!387026 (t!387026 lt!2633734)))))))

(assert (= (and d!2303644 c!1385424) b!7504294))

(assert (= (and d!2303644 (not c!1385424)) b!7504295))

(declare-fun m!8086612 () Bool)

(assert (=> b!7504295 m!8086612))

(assert (=> b!7504068 d!2303644))

(declare-fun b!7504296 () Bool)

(declare-fun e!4474316 () List!72457)

(assert (=> b!7504296 (= e!4474316 lt!2633866)))

(declare-fun b!7504298 () Bool)

(declare-fun res!3010569 () Bool)

(declare-fun e!4474315 () Bool)

(assert (=> b!7504298 (=> (not res!3010569) (not e!4474315))))

(declare-fun lt!2633929 () List!72457)

(assert (=> b!7504298 (= res!3010569 (= (size!42250 lt!2633929) (+ (size!42250 testedP!204) (size!42250 lt!2633866))))))

(declare-fun b!7504299 () Bool)

(assert (=> b!7504299 (= e!4474315 (or (not (= lt!2633866 Nil!72333)) (= lt!2633929 testedP!204)))))

(declare-fun b!7504297 () Bool)

(assert (=> b!7504297 (= e!4474316 (Cons!72333 (h!78781 testedP!204) (++!17308 (t!387026 testedP!204) lt!2633866)))))

(declare-fun d!2303646 () Bool)

(assert (=> d!2303646 e!4474315))

(declare-fun res!3010570 () Bool)

(assert (=> d!2303646 (=> (not res!3010570) (not e!4474315))))

(assert (=> d!2303646 (= res!3010570 (= (content!15289 lt!2633929) ((_ map or) (content!15289 testedP!204) (content!15289 lt!2633866))))))

(assert (=> d!2303646 (= lt!2633929 e!4474316)))

(declare-fun c!1385425 () Bool)

(assert (=> d!2303646 (= c!1385425 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303646 (= (++!17308 testedP!204 lt!2633866) lt!2633929)))

(assert (= (and d!2303646 c!1385425) b!7504296))

(assert (= (and d!2303646 (not c!1385425)) b!7504297))

(assert (= (and d!2303646 res!3010570) b!7504298))

(assert (= (and b!7504298 res!3010569) b!7504299))

(declare-fun m!8086614 () Bool)

(assert (=> b!7504298 m!8086614))

(assert (=> b!7504298 m!8086028))

(declare-fun m!8086616 () Bool)

(assert (=> b!7504298 m!8086616))

(declare-fun m!8086618 () Bool)

(assert (=> b!7504297 m!8086618))

(declare-fun m!8086620 () Bool)

(assert (=> d!2303646 m!8086620))

(assert (=> d!2303646 m!8086114))

(declare-fun m!8086622 () Bool)

(assert (=> d!2303646 m!8086622))

(assert (=> d!2303460 d!2303646))

(assert (=> d!2303460 d!2303454))

(assert (=> d!2303460 d!2303438))

(declare-fun bs!1938025 () Bool)

(declare-fun d!2303648 () Bool)

(assert (= bs!1938025 (and d!2303648 d!2303456)))

(declare-fun lambda!465222 () Int)

(assert (=> bs!1938025 (not (= lambda!465222 lambda!465193))))

(declare-fun bs!1938026 () Bool)

(assert (= bs!1938026 (and d!2303648 b!7504075)))

(assert (=> bs!1938026 (not (= lambda!465222 lambda!465194))))

(declare-fun bs!1938027 () Bool)

(assert (= bs!1938027 (and d!2303648 d!2303628)))

(assert (=> bs!1938027 (= lambda!465222 lambda!465219)))

(declare-fun bs!1938028 () Bool)

(assert (= bs!1938028 (and d!2303648 d!2303582)))

(assert (=> bs!1938028 (= (= lambda!465193 (ite c!1385363 lambda!465194 lambda!465195)) (= lambda!465222 lambda!465209))))

(declare-fun bs!1938029 () Bool)

(assert (= bs!1938029 (and d!2303648 d!2303390)))

(assert (=> bs!1938029 (not (= lambda!465222 lambda!465177))))

(declare-fun bs!1938030 () Bool)

(assert (= bs!1938030 (and d!2303648 b!7504076)))

(assert (=> bs!1938030 (not (= lambda!465222 lambda!465195))))

(assert (=> d!2303648 true))

(assert (=> d!2303648 (< (dynLambda!29772 order!29643 lambda!465193) (dynLambda!29772 order!29643 lambda!465222))))

(assert (=> d!2303648 (exists!4849 lt!2633859 lambda!465222)))

(declare-fun lt!2633932 () Unit!166298)

(declare-fun choose!58077 (List!72460 Int) Unit!166298)

(assert (=> d!2303648 (= lt!2633932 (choose!58077 lt!2633859 lambda!465193))))

(assert (=> d!2303648 (not (forall!18272 lt!2633859 lambda!465193))))

(assert (=> d!2303648 (= (lemmaNotForallThenExists!493 lt!2633859 lambda!465193) lt!2633932)))

(declare-fun bs!1938031 () Bool)

(assert (= bs!1938031 d!2303648))

(declare-fun m!8086624 () Bool)

(assert (=> bs!1938031 m!8086624))

(declare-fun m!8086626 () Bool)

(assert (=> bs!1938031 m!8086626))

(declare-fun m!8086628 () Bool)

(assert (=> bs!1938031 m!8086628))

(assert (=> b!7504075 d!2303648))

(assert (=> d!2303434 d!2303446))

(declare-fun b!7504303 () Bool)

(declare-fun e!4474320 () Bool)

(assert (=> b!7504303 (= e!4474320 (>= (size!42250 totalInput!779) (size!42250 (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333)))))))

(declare-fun b!7504300 () Bool)

(declare-fun e!4474321 () Bool)

(declare-fun e!4474319 () Bool)

(assert (=> b!7504300 (= e!4474321 e!4474319)))

(declare-fun res!3010573 () Bool)

(assert (=> b!7504300 (=> (not res!3010573) (not e!4474319))))

(assert (=> b!7504300 (= res!3010573 (not ((_ is Nil!72333) totalInput!779)))))

(declare-fun d!2303650 () Bool)

(assert (=> d!2303650 e!4474320))

(declare-fun res!3010572 () Bool)

(assert (=> d!2303650 (=> res!3010572 e!4474320)))

(declare-fun lt!2633933 () Bool)

(assert (=> d!2303650 (= res!3010572 (not lt!2633933))))

(assert (=> d!2303650 (= lt!2633933 e!4474321)))

(declare-fun res!3010571 () Bool)

(assert (=> d!2303650 (=> res!3010571 e!4474321)))

(assert (=> d!2303650 (= res!3010571 ((_ is Nil!72333) (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333))))))

(assert (=> d!2303650 (= (isPrefix!5975 (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333)) totalInput!779) lt!2633933)))

(declare-fun b!7504301 () Bool)

(declare-fun res!3010574 () Bool)

(assert (=> b!7504301 (=> (not res!3010574) (not e!4474319))))

(assert (=> b!7504301 (= res!3010574 (= (head!15415 (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333))) (head!15415 totalInput!779)))))

(declare-fun b!7504302 () Bool)

(assert (=> b!7504302 (= e!4474319 (isPrefix!5975 (tail!14981 (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333))) (tail!14981 totalInput!779)))))

(assert (= (and d!2303650 (not res!3010571)) b!7504300))

(assert (= (and b!7504300 res!3010573) b!7504301))

(assert (= (and b!7504301 res!3010574) b!7504302))

(assert (= (and d!2303650 (not res!3010572)) b!7504303))

(assert (=> b!7504303 m!8086030))

(assert (=> b!7504303 m!8086226))

(declare-fun m!8086630 () Bool)

(assert (=> b!7504303 m!8086630))

(assert (=> b!7504301 m!8086226))

(declare-fun m!8086632 () Bool)

(assert (=> b!7504301 m!8086632))

(assert (=> b!7504301 m!8086048))

(assert (=> b!7504302 m!8086226))

(declare-fun m!8086634 () Bool)

(assert (=> b!7504302 m!8086634))

(assert (=> b!7504302 m!8086050))

(assert (=> b!7504302 m!8086634))

(assert (=> b!7504302 m!8086050))

(declare-fun m!8086636 () Bool)

(assert (=> b!7504302 m!8086636))

(assert (=> d!2303434 d!2303650))

(assert (=> d!2303434 d!2303460))

(declare-fun d!2303652 () Bool)

(assert (=> d!2303652 (isPrefix!5975 (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333)) totalInput!779)))

(assert (=> d!2303652 true))

(declare-fun _$65!1862 () Unit!166298)

(assert (=> d!2303652 (= (choose!58070 testedP!204 totalInput!779) _$65!1862)))

(declare-fun bs!1938032 () Bool)

(assert (= bs!1938032 d!2303652))

(assert (=> bs!1938032 m!8086042))

(assert (=> bs!1938032 m!8086042))

(assert (=> bs!1938032 m!8086230))

(assert (=> bs!1938032 m!8086226))

(assert (=> bs!1938032 m!8086226))

(assert (=> bs!1938032 m!8086228))

(assert (=> d!2303434 d!2303652))

(declare-fun b!7504304 () Bool)

(declare-fun e!4474323 () List!72457)

(assert (=> b!7504304 (= e!4474323 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333))))

(declare-fun b!7504306 () Bool)

(declare-fun res!3010575 () Bool)

(declare-fun e!4474322 () Bool)

(assert (=> b!7504306 (=> (not res!3010575) (not e!4474322))))

(declare-fun lt!2633934 () List!72457)

(assert (=> b!7504306 (= res!3010575 (= (size!42250 lt!2633934) (+ (size!42250 testedP!204) (size!42250 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333)))))))

(declare-fun b!7504307 () Bool)

(assert (=> b!7504307 (= e!4474322 (or (not (= (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333) Nil!72333)) (= lt!2633934 testedP!204)))))

(declare-fun b!7504305 () Bool)

(assert (=> b!7504305 (= e!4474323 (Cons!72333 (h!78781 testedP!204) (++!17308 (t!387026 testedP!204) (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333))))))

(declare-fun d!2303654 () Bool)

(assert (=> d!2303654 e!4474322))

(declare-fun res!3010576 () Bool)

(assert (=> d!2303654 (=> (not res!3010576) (not e!4474322))))

(assert (=> d!2303654 (= res!3010576 (= (content!15289 lt!2633934) ((_ map or) (content!15289 testedP!204) (content!15289 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333)))))))

(assert (=> d!2303654 (= lt!2633934 e!4474323)))

(declare-fun c!1385426 () Bool)

(assert (=> d!2303654 (= c!1385426 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303654 (= (++!17308 testedP!204 (Cons!72333 (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) Nil!72333)) lt!2633934)))

(assert (= (and d!2303654 c!1385426) b!7504304))

(assert (= (and d!2303654 (not c!1385426)) b!7504305))

(assert (= (and d!2303654 res!3010576) b!7504306))

(assert (= (and b!7504306 res!3010575) b!7504307))

(declare-fun m!8086638 () Bool)

(assert (=> b!7504306 m!8086638))

(assert (=> b!7504306 m!8086028))

(declare-fun m!8086640 () Bool)

(assert (=> b!7504306 m!8086640))

(declare-fun m!8086642 () Bool)

(assert (=> b!7504305 m!8086642))

(declare-fun m!8086644 () Bool)

(assert (=> d!2303654 m!8086644))

(assert (=> d!2303654 m!8086114))

(declare-fun m!8086646 () Bool)

(assert (=> d!2303654 m!8086646))

(assert (=> d!2303434 d!2303654))

(declare-fun d!2303656 () Bool)

(assert (=> d!2303656 (= (head!15415 (getSuffix!3477 totalInput!779 testedP!204)) (h!78781 (getSuffix!3477 totalInput!779 testedP!204)))))

(assert (=> d!2303434 d!2303656))

(assert (=> b!7504062 d!2303454))

(assert (=> b!7504062 d!2303438))

(declare-fun d!2303658 () Bool)

(declare-fun lt!2633935 () Int)

(assert (=> d!2303658 (>= lt!2633935 0)))

(declare-fun e!4474324 () Int)

(assert (=> d!2303658 (= lt!2633935 e!4474324)))

(declare-fun c!1385427 () Bool)

(assert (=> d!2303658 (= c!1385427 ((_ is Nil!72333) lt!2633732))))

(assert (=> d!2303658 (= (size!42250 lt!2633732) lt!2633935)))

(declare-fun b!7504308 () Bool)

(assert (=> b!7504308 (= e!4474324 0)))

(declare-fun b!7504309 () Bool)

(assert (=> b!7504309 (= e!4474324 (+ 1 (size!42250 (t!387026 lt!2633732))))))

(assert (= (and d!2303658 c!1385427) b!7504308))

(assert (= (and d!2303658 (not c!1385427)) b!7504309))

(declare-fun m!8086648 () Bool)

(assert (=> b!7504309 m!8086648))

(assert (=> b!7504066 d!2303658))

(assert (=> b!7504066 d!2303438))

(assert (=> d!2303440 d!2303438))

(assert (=> d!2303440 d!2303454))

(declare-fun d!2303660 () Bool)

(assert (=> d!2303660 (<= (size!42250 testedP!204) (size!42250 totalInput!779))))

(assert (=> d!2303660 true))

(declare-fun _$64!865 () Unit!166298)

(assert (=> d!2303660 (= (choose!58071 testedP!204 totalInput!779) _$64!865)))

(declare-fun bs!1938033 () Bool)

(assert (= bs!1938033 d!2303660))

(assert (=> bs!1938033 m!8086028))

(assert (=> bs!1938033 m!8086030))

(assert (=> d!2303440 d!2303660))

(assert (=> d!2303440 d!2303446))

(declare-fun b!7504313 () Bool)

(declare-fun e!4474326 () Bool)

(assert (=> b!7504313 (= e!4474326 (>= (size!42250 (tail!14981 totalInput!779)) (size!42250 (tail!14981 testedP!204))))))

(declare-fun b!7504310 () Bool)

(declare-fun e!4474327 () Bool)

(declare-fun e!4474325 () Bool)

(assert (=> b!7504310 (= e!4474327 e!4474325)))

(declare-fun res!3010579 () Bool)

(assert (=> b!7504310 (=> (not res!3010579) (not e!4474325))))

(assert (=> b!7504310 (= res!3010579 (not ((_ is Nil!72333) (tail!14981 totalInput!779))))))

(declare-fun d!2303662 () Bool)

(assert (=> d!2303662 e!4474326))

(declare-fun res!3010578 () Bool)

(assert (=> d!2303662 (=> res!3010578 e!4474326)))

(declare-fun lt!2633936 () Bool)

(assert (=> d!2303662 (= res!3010578 (not lt!2633936))))

(assert (=> d!2303662 (= lt!2633936 e!4474327)))

(declare-fun res!3010577 () Bool)

(assert (=> d!2303662 (=> res!3010577 e!4474327)))

(assert (=> d!2303662 (= res!3010577 ((_ is Nil!72333) (tail!14981 testedP!204)))))

(assert (=> d!2303662 (= (isPrefix!5975 (tail!14981 testedP!204) (tail!14981 totalInput!779)) lt!2633936)))

(declare-fun b!7504311 () Bool)

(declare-fun res!3010580 () Bool)

(assert (=> b!7504311 (=> (not res!3010580) (not e!4474325))))

(assert (=> b!7504311 (= res!3010580 (= (head!15415 (tail!14981 testedP!204)) (head!15415 (tail!14981 totalInput!779))))))

(declare-fun b!7504312 () Bool)

(assert (=> b!7504312 (= e!4474325 (isPrefix!5975 (tail!14981 (tail!14981 testedP!204)) (tail!14981 (tail!14981 totalInput!779))))))

(assert (= (and d!2303662 (not res!3010577)) b!7504310))

(assert (= (and b!7504310 res!3010579) b!7504311))

(assert (= (and b!7504311 res!3010580) b!7504312))

(assert (= (and d!2303662 (not res!3010578)) b!7504313))

(assert (=> b!7504313 m!8086050))

(assert (=> b!7504313 m!8086506))

(assert (=> b!7504313 m!8086260))

(declare-fun m!8086650 () Bool)

(assert (=> b!7504313 m!8086650))

(assert (=> b!7504311 m!8086260))

(declare-fun m!8086652 () Bool)

(assert (=> b!7504311 m!8086652))

(assert (=> b!7504311 m!8086050))

(assert (=> b!7504311 m!8086512))

(assert (=> b!7504312 m!8086260))

(declare-fun m!8086654 () Bool)

(assert (=> b!7504312 m!8086654))

(assert (=> b!7504312 m!8086050))

(assert (=> b!7504312 m!8086516))

(assert (=> b!7504312 m!8086654))

(assert (=> b!7504312 m!8086516))

(declare-fun m!8086656 () Bool)

(assert (=> b!7504312 m!8086656))

(assert (=> b!7504061 d!2303662))

(declare-fun d!2303664 () Bool)

(assert (=> d!2303664 (= (tail!14981 testedP!204) (t!387026 testedP!204))))

(assert (=> b!7504061 d!2303664))

(assert (=> b!7504061 d!2303592))

(declare-fun d!2303666 () Bool)

(declare-fun lt!2633937 () Int)

(assert (=> d!2303666 (>= lt!2633937 0)))

(declare-fun e!4474328 () Int)

(assert (=> d!2303666 (= lt!2633937 e!4474328)))

(declare-fun c!1385428 () Bool)

(assert (=> d!2303666 (= c!1385428 ((_ is Nil!72333) lt!2633767))))

(assert (=> d!2303666 (= (size!42250 lt!2633767) lt!2633937)))

(declare-fun b!7504314 () Bool)

(assert (=> b!7504314 (= e!4474328 0)))

(declare-fun b!7504315 () Bool)

(assert (=> b!7504315 (= e!4474328 (+ 1 (size!42250 (t!387026 lt!2633767))))))

(assert (= (and d!2303666 c!1385428) b!7504314))

(assert (= (and d!2303666 (not c!1385428)) b!7504315))

(declare-fun m!8086658 () Bool)

(assert (=> b!7504315 m!8086658))

(assert (=> b!7503982 d!2303666))

(assert (=> b!7503982 d!2303438))

(declare-fun d!2303668 () Bool)

(declare-fun lt!2633938 () Int)

(assert (=> d!2303668 (>= lt!2633938 0)))

(declare-fun e!4474329 () Int)

(assert (=> d!2303668 (= lt!2633938 e!4474329)))

(declare-fun c!1385429 () Bool)

(assert (=> d!2303668 (= c!1385429 ((_ is Nil!72333) (Cons!72333 lt!2633725 Nil!72333)))))

(assert (=> d!2303668 (= (size!42250 (Cons!72333 lt!2633725 Nil!72333)) lt!2633938)))

(declare-fun b!7504316 () Bool)

(assert (=> b!7504316 (= e!4474329 0)))

(declare-fun b!7504317 () Bool)

(assert (=> b!7504317 (= e!4474329 (+ 1 (size!42250 (t!387026 (Cons!72333 lt!2633725 Nil!72333)))))))

(assert (= (and d!2303668 c!1385429) b!7504316))

(assert (= (and d!2303668 (not c!1385429)) b!7504317))

(declare-fun m!8086660 () Bool)

(assert (=> b!7504317 m!8086660))

(assert (=> b!7503982 d!2303668))

(declare-fun b!7504321 () Bool)

(declare-fun e!4474331 () Bool)

(assert (=> b!7504321 (= e!4474331 (>= (size!42250 (tail!14981 totalInput!779)) (size!42250 (tail!14981 totalInput!779))))))

(declare-fun b!7504318 () Bool)

(declare-fun e!4474332 () Bool)

(declare-fun e!4474330 () Bool)

(assert (=> b!7504318 (= e!4474332 e!4474330)))

(declare-fun res!3010583 () Bool)

(assert (=> b!7504318 (=> (not res!3010583) (not e!4474330))))

(assert (=> b!7504318 (= res!3010583 (not ((_ is Nil!72333) (tail!14981 totalInput!779))))))

(declare-fun d!2303670 () Bool)

(assert (=> d!2303670 e!4474331))

(declare-fun res!3010582 () Bool)

(assert (=> d!2303670 (=> res!3010582 e!4474331)))

(declare-fun lt!2633939 () Bool)

(assert (=> d!2303670 (= res!3010582 (not lt!2633939))))

(assert (=> d!2303670 (= lt!2633939 e!4474332)))

(declare-fun res!3010581 () Bool)

(assert (=> d!2303670 (=> res!3010581 e!4474332)))

(assert (=> d!2303670 (= res!3010581 ((_ is Nil!72333) (tail!14981 totalInput!779)))))

(assert (=> d!2303670 (= (isPrefix!5975 (tail!14981 totalInput!779) (tail!14981 totalInput!779)) lt!2633939)))

(declare-fun b!7504319 () Bool)

(declare-fun res!3010584 () Bool)

(assert (=> b!7504319 (=> (not res!3010584) (not e!4474330))))

(assert (=> b!7504319 (= res!3010584 (= (head!15415 (tail!14981 totalInput!779)) (head!15415 (tail!14981 totalInput!779))))))

(declare-fun b!7504320 () Bool)

(assert (=> b!7504320 (= e!4474330 (isPrefix!5975 (tail!14981 (tail!14981 totalInput!779)) (tail!14981 (tail!14981 totalInput!779))))))

(assert (= (and d!2303670 (not res!3010581)) b!7504318))

(assert (= (and b!7504318 res!3010583) b!7504319))

(assert (= (and b!7504319 res!3010584) b!7504320))

(assert (= (and d!2303670 (not res!3010582)) b!7504321))

(assert (=> b!7504321 m!8086050))

(assert (=> b!7504321 m!8086506))

(assert (=> b!7504321 m!8086050))

(assert (=> b!7504321 m!8086506))

(assert (=> b!7504319 m!8086050))

(assert (=> b!7504319 m!8086512))

(assert (=> b!7504319 m!8086050))

(assert (=> b!7504319 m!8086512))

(assert (=> b!7504320 m!8086050))

(assert (=> b!7504320 m!8086516))

(assert (=> b!7504320 m!8086050))

(assert (=> b!7504320 m!8086516))

(assert (=> b!7504320 m!8086516))

(assert (=> b!7504320 m!8086516))

(declare-fun m!8086662 () Bool)

(assert (=> b!7504320 m!8086662))

(assert (=> b!7503936 d!2303670))

(assert (=> b!7503936 d!2303592))

(declare-fun b!7504322 () Bool)

(declare-fun e!4474334 () List!72457)

(assert (=> b!7504322 (= e!4474334 (Cons!72333 lt!2633725 Nil!72333))))

(declare-fun b!7504324 () Bool)

(declare-fun res!3010585 () Bool)

(declare-fun e!4474333 () Bool)

(assert (=> b!7504324 (=> (not res!3010585) (not e!4474333))))

(declare-fun lt!2633940 () List!72457)

(assert (=> b!7504324 (= res!3010585 (= (size!42250 lt!2633940) (+ (size!42250 (t!387026 testedP!204)) (size!42250 (Cons!72333 lt!2633725 Nil!72333)))))))

(declare-fun b!7504325 () Bool)

(assert (=> b!7504325 (= e!4474333 (or (not (= (Cons!72333 lt!2633725 Nil!72333) Nil!72333)) (= lt!2633940 (t!387026 testedP!204))))))

(declare-fun b!7504323 () Bool)

(assert (=> b!7504323 (= e!4474334 (Cons!72333 (h!78781 (t!387026 testedP!204)) (++!17308 (t!387026 (t!387026 testedP!204)) (Cons!72333 lt!2633725 Nil!72333))))))

(declare-fun d!2303672 () Bool)

(assert (=> d!2303672 e!4474333))

(declare-fun res!3010586 () Bool)

(assert (=> d!2303672 (=> (not res!3010586) (not e!4474333))))

(assert (=> d!2303672 (= res!3010586 (= (content!15289 lt!2633940) ((_ map or) (content!15289 (t!387026 testedP!204)) (content!15289 (Cons!72333 lt!2633725 Nil!72333)))))))

(assert (=> d!2303672 (= lt!2633940 e!4474334)))

(declare-fun c!1385430 () Bool)

(assert (=> d!2303672 (= c!1385430 ((_ is Nil!72333) (t!387026 testedP!204)))))

(assert (=> d!2303672 (= (++!17308 (t!387026 testedP!204) (Cons!72333 lt!2633725 Nil!72333)) lt!2633940)))

(assert (= (and d!2303672 c!1385430) b!7504322))

(assert (= (and d!2303672 (not c!1385430)) b!7504323))

(assert (= (and d!2303672 res!3010586) b!7504324))

(assert (= (and b!7504324 res!3010585) b!7504325))

(declare-fun m!8086664 () Bool)

(assert (=> b!7504324 m!8086664))

(assert (=> b!7504324 m!8086242))

(assert (=> b!7504324 m!8086108))

(declare-fun m!8086666 () Bool)

(assert (=> b!7504323 m!8086666))

(declare-fun m!8086668 () Bool)

(assert (=> d!2303672 m!8086668))

(assert (=> d!2303672 m!8086556))

(assert (=> d!2303672 m!8086116))

(assert (=> b!7503981 d!2303672))

(assert (=> b!7503935 d!2303610))

(declare-fun b!7504326 () Bool)

(declare-fun e!4474336 () List!72457)

(assert (=> b!7504326 (= e!4474336 lt!2633723)))

(declare-fun b!7504328 () Bool)

(declare-fun res!3010587 () Bool)

(declare-fun e!4474335 () Bool)

(assert (=> b!7504328 (=> (not res!3010587) (not e!4474335))))

(declare-fun lt!2633941 () List!72457)

(assert (=> b!7504328 (= res!3010587 (= (size!42250 lt!2633941) (+ (size!42250 (t!387026 lt!2633734)) (size!42250 lt!2633723))))))

(declare-fun b!7504329 () Bool)

(assert (=> b!7504329 (= e!4474335 (or (not (= lt!2633723 Nil!72333)) (= lt!2633941 (t!387026 lt!2633734))))))

(declare-fun b!7504327 () Bool)

(assert (=> b!7504327 (= e!4474336 (Cons!72333 (h!78781 (t!387026 lt!2633734)) (++!17308 (t!387026 (t!387026 lt!2633734)) lt!2633723)))))

(declare-fun d!2303674 () Bool)

(assert (=> d!2303674 e!4474335))

(declare-fun res!3010588 () Bool)

(assert (=> d!2303674 (=> (not res!3010588) (not e!4474335))))

(assert (=> d!2303674 (= res!3010588 (= (content!15289 lt!2633941) ((_ map or) (content!15289 (t!387026 lt!2633734)) (content!15289 lt!2633723))))))

(assert (=> d!2303674 (= lt!2633941 e!4474336)))

(declare-fun c!1385431 () Bool)

(assert (=> d!2303674 (= c!1385431 ((_ is Nil!72333) (t!387026 lt!2633734)))))

(assert (=> d!2303674 (= (++!17308 (t!387026 lt!2633734) lt!2633723) lt!2633941)))

(assert (= (and d!2303674 c!1385431) b!7504326))

(assert (= (and d!2303674 (not c!1385431)) b!7504327))

(assert (= (and d!2303674 res!3010588) b!7504328))

(assert (= (and b!7504328 res!3010587) b!7504329))

(declare-fun m!8086670 () Bool)

(assert (=> b!7504328 m!8086670))

(assert (=> b!7504328 m!8086276))

(assert (=> b!7504328 m!8086214))

(declare-fun m!8086672 () Bool)

(assert (=> b!7504327 m!8086672))

(declare-fun m!8086674 () Bool)

(assert (=> d!2303674 m!8086674))

(declare-fun m!8086676 () Bool)

(assert (=> d!2303674 m!8086676))

(assert (=> d!2303674 m!8086222))

(assert (=> b!7504042 d!2303674))

(declare-fun d!2303676 () Bool)

(declare-fun lt!2633944 () Bool)

(assert (=> d!2303676 (= lt!2633944 (exists!4849 (toList!11822 z!3716) lambda!465177))))

(declare-fun choose!58079 ((InoxSet Context!16882) Int) Bool)

(assert (=> d!2303676 (= lt!2633944 (choose!58079 z!3716 lambda!465177))))

(assert (=> d!2303676 (= (exists!4848 z!3716 lambda!465177) lt!2633944)))

(declare-fun bs!1938034 () Bool)

(assert (= bs!1938034 d!2303676))

(assert (=> bs!1938034 m!8086280))

(assert (=> bs!1938034 m!8086280))

(declare-fun m!8086678 () Bool)

(assert (=> bs!1938034 m!8086678))

(declare-fun m!8086680 () Bool)

(assert (=> bs!1938034 m!8086680))

(assert (=> d!2303390 d!2303676))

(assert (=> d!2303362 d!2303364))

(declare-fun d!2303678 () Bool)

(assert (=> d!2303678 (isPrefix!5975 totalInput!779 totalInput!779)))

(assert (=> d!2303678 true))

(declare-fun _$45!2389 () Unit!166298)

(assert (=> d!2303678 (= (choose!58066 totalInput!779 totalInput!779) _$45!2389)))

(declare-fun bs!1938035 () Bool)

(assert (= bs!1938035 d!2303678))

(assert (=> bs!1938035 m!8086034))

(assert (=> d!2303362 d!2303678))

(declare-fun d!2303680 () Bool)

(declare-fun c!1385432 () Bool)

(assert (=> d!2303680 (= c!1385432 ((_ is Nil!72333) lt!2633818))))

(declare-fun e!4474337 () (InoxSet C!39684))

(assert (=> d!2303680 (= (content!15289 lt!2633818) e!4474337)))

(declare-fun b!7504330 () Bool)

(assert (=> b!7504330 (= e!4474337 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504331 () Bool)

(assert (=> b!7504331 (= e!4474337 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 lt!2633818) true) (content!15289 (t!387026 lt!2633818))))))

(assert (= (and d!2303680 c!1385432) b!7504330))

(assert (= (and d!2303680 (not c!1385432)) b!7504331))

(declare-fun m!8086682 () Bool)

(assert (=> b!7504331 m!8086682))

(declare-fun m!8086684 () Bool)

(assert (=> b!7504331 m!8086684))

(assert (=> d!2303430 d!2303680))

(declare-fun d!2303682 () Bool)

(declare-fun c!1385433 () Bool)

(assert (=> d!2303682 (= c!1385433 ((_ is Nil!72333) lt!2633734))))

(declare-fun e!4474338 () (InoxSet C!39684))

(assert (=> d!2303682 (= (content!15289 lt!2633734) e!4474338)))

(declare-fun b!7504332 () Bool)

(assert (=> b!7504332 (= e!4474338 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504333 () Bool)

(assert (=> b!7504333 (= e!4474338 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 lt!2633734) true) (content!15289 (t!387026 lt!2633734))))))

(assert (= (and d!2303682 c!1385433) b!7504332))

(assert (= (and d!2303682 (not c!1385433)) b!7504333))

(declare-fun m!8086686 () Bool)

(assert (=> b!7504333 m!8086686))

(assert (=> b!7504333 m!8086676))

(assert (=> d!2303430 d!2303682))

(declare-fun d!2303684 () Bool)

(declare-fun c!1385434 () Bool)

(assert (=> d!2303684 (= c!1385434 ((_ is Nil!72333) lt!2633723))))

(declare-fun e!4474339 () (InoxSet C!39684))

(assert (=> d!2303684 (= (content!15289 lt!2633723) e!4474339)))

(declare-fun b!7504334 () Bool)

(assert (=> b!7504334 (= e!4474339 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504335 () Bool)

(assert (=> b!7504335 (= e!4474339 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 lt!2633723) true) (content!15289 (t!387026 lt!2633723))))))

(assert (= (and d!2303684 c!1385434) b!7504334))

(assert (= (and d!2303684 (not c!1385434)) b!7504335))

(declare-fun m!8086688 () Bool)

(assert (=> b!7504335 m!8086688))

(declare-fun m!8086690 () Bool)

(assert (=> b!7504335 m!8086690))

(assert (=> d!2303430 d!2303684))

(declare-fun b!7504336 () Bool)

(declare-fun e!4474341 () List!72457)

(assert (=> b!7504336 (= e!4474341 testedSuffix!164)))

(declare-fun b!7504338 () Bool)

(declare-fun res!3010589 () Bool)

(declare-fun e!4474340 () Bool)

(assert (=> b!7504338 (=> (not res!3010589) (not e!4474340))))

(declare-fun lt!2633945 () List!72457)

(assert (=> b!7504338 (= res!3010589 (= (size!42250 lt!2633945) (+ (size!42250 (t!387026 testedP!204)) (size!42250 testedSuffix!164))))))

(declare-fun b!7504339 () Bool)

(assert (=> b!7504339 (= e!4474340 (or (not (= testedSuffix!164 Nil!72333)) (= lt!2633945 (t!387026 testedP!204))))))

(declare-fun b!7504337 () Bool)

(assert (=> b!7504337 (= e!4474341 (Cons!72333 (h!78781 (t!387026 testedP!204)) (++!17308 (t!387026 (t!387026 testedP!204)) testedSuffix!164)))))

(declare-fun d!2303686 () Bool)

(assert (=> d!2303686 e!4474340))

(declare-fun res!3010590 () Bool)

(assert (=> d!2303686 (=> (not res!3010590) (not e!4474340))))

(assert (=> d!2303686 (= res!3010590 (= (content!15289 lt!2633945) ((_ map or) (content!15289 (t!387026 testedP!204)) (content!15289 testedSuffix!164))))))

(assert (=> d!2303686 (= lt!2633945 e!4474341)))

(declare-fun c!1385435 () Bool)

(assert (=> d!2303686 (= c!1385435 ((_ is Nil!72333) (t!387026 testedP!204)))))

(assert (=> d!2303686 (= (++!17308 (t!387026 testedP!204) testedSuffix!164) lt!2633945)))

(assert (= (and d!2303686 c!1385435) b!7504336))

(assert (= (and d!2303686 (not c!1385435)) b!7504337))

(assert (= (and d!2303686 res!3010590) b!7504338))

(assert (= (and b!7504338 res!3010589) b!7504339))

(declare-fun m!8086692 () Bool)

(assert (=> b!7504338 m!8086692))

(assert (=> b!7504338 m!8086242))

(assert (=> b!7504338 m!8086250))

(declare-fun m!8086694 () Bool)

(assert (=> b!7504337 m!8086694))

(declare-fun m!8086696 () Bool)

(assert (=> d!2303686 m!8086696))

(assert (=> d!2303686 m!8086556))

(assert (=> d!2303686 m!8086256))

(assert (=> b!7504056 d!2303686))

(declare-fun d!2303688 () Bool)

(declare-fun lt!2633946 () Int)

(assert (=> d!2303688 (>= lt!2633946 0)))

(declare-fun e!4474342 () Int)

(assert (=> d!2303688 (= lt!2633946 e!4474342)))

(declare-fun c!1385436 () Bool)

(assert (=> d!2303688 (= c!1385436 ((_ is Nil!72333) (t!387026 testedP!204)))))

(assert (=> d!2303688 (= (size!42250 (t!387026 testedP!204)) lt!2633946)))

(declare-fun b!7504340 () Bool)

(assert (=> b!7504340 (= e!4474342 0)))

(declare-fun b!7504341 () Bool)

(assert (=> b!7504341 (= e!4474342 (+ 1 (size!42250 (t!387026 (t!387026 testedP!204)))))))

(assert (= (and d!2303688 c!1385436) b!7504340))

(assert (= (and d!2303688 (not c!1385436)) b!7504341))

(declare-fun m!8086698 () Bool)

(assert (=> b!7504341 m!8086698))

(assert (=> b!7504054 d!2303688))

(declare-fun d!2303690 () Bool)

(declare-fun lt!2633947 () Int)

(assert (=> d!2303690 (>= lt!2633947 0)))

(declare-fun e!4474343 () Int)

(assert (=> d!2303690 (= lt!2633947 e!4474343)))

(declare-fun c!1385437 () Bool)

(assert (=> d!2303690 (= c!1385437 ((_ is Nil!72333) (t!387026 totalInput!779)))))

(assert (=> d!2303690 (= (size!42250 (t!387026 totalInput!779)) lt!2633947)))

(declare-fun b!7504342 () Bool)

(assert (=> b!7504342 (= e!4474343 0)))

(declare-fun b!7504343 () Bool)

(assert (=> b!7504343 (= e!4474343 (+ 1 (size!42250 (t!387026 (t!387026 totalInput!779)))))))

(assert (= (and d!2303690 c!1385437) b!7504342))

(assert (= (and d!2303690 (not c!1385437)) b!7504343))

(declare-fun m!8086700 () Bool)

(assert (=> b!7504343 m!8086700))

(assert (=> b!7504070 d!2303690))

(declare-fun b!7504344 () Bool)

(declare-fun e!4474345 () List!72457)

(assert (=> b!7504344 (= e!4474345 lt!2633723)))

(declare-fun b!7504346 () Bool)

(declare-fun res!3010591 () Bool)

(declare-fun e!4474344 () Bool)

(assert (=> b!7504346 (=> (not res!3010591) (not e!4474344))))

(declare-fun lt!2633948 () List!72457)

(assert (=> b!7504346 (= res!3010591 (= (size!42250 lt!2633948) (+ (size!42250 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333))) (size!42250 lt!2633723))))))

(declare-fun b!7504347 () Bool)

(assert (=> b!7504347 (= e!4474344 (or (not (= lt!2633723 Nil!72333)) (= lt!2633948 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333)))))))

(declare-fun b!7504345 () Bool)

(assert (=> b!7504345 (= e!4474345 (Cons!72333 (h!78781 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333))) (++!17308 (t!387026 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333))) lt!2633723)))))

(declare-fun d!2303692 () Bool)

(assert (=> d!2303692 e!4474344))

(declare-fun res!3010592 () Bool)

(assert (=> d!2303692 (=> (not res!3010592) (not e!4474344))))

(assert (=> d!2303692 (= res!3010592 (= (content!15289 lt!2633948) ((_ map or) (content!15289 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333))) (content!15289 lt!2633723))))))

(assert (=> d!2303692 (= lt!2633948 e!4474345)))

(declare-fun c!1385438 () Bool)

(assert (=> d!2303692 (= c!1385438 ((_ is Nil!72333) (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333))))))

(assert (=> d!2303692 (= (++!17308 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333)) lt!2633723) lt!2633948)))

(assert (= (and d!2303692 c!1385438) b!7504344))

(assert (= (and d!2303692 (not c!1385438)) b!7504345))

(assert (= (and d!2303692 res!3010592) b!7504346))

(assert (= (and b!7504346 res!3010591) b!7504347))

(declare-fun m!8086702 () Bool)

(assert (=> b!7504346 m!8086702))

(assert (=> b!7504346 m!8086014))

(declare-fun m!8086704 () Bool)

(assert (=> b!7504346 m!8086704))

(assert (=> b!7504346 m!8086214))

(declare-fun m!8086706 () Bool)

(assert (=> b!7504345 m!8086706))

(declare-fun m!8086708 () Bool)

(assert (=> d!2303692 m!8086708))

(assert (=> d!2303692 m!8086014))

(declare-fun m!8086710 () Bool)

(assert (=> d!2303692 m!8086710))

(assert (=> d!2303692 m!8086222))

(assert (=> d!2303370 d!2303692))

(assert (=> d!2303370 d!2303376))

(declare-fun d!2303694 () Bool)

(assert (=> d!2303694 (= (++!17308 (++!17308 testedP!204 (Cons!72333 lt!2633725 Nil!72333)) lt!2633723) totalInput!779)))

(assert (=> d!2303694 true))

(declare-fun _$68!1381 () Unit!166298)

(assert (=> d!2303694 (= (choose!58069 testedP!204 lt!2633725 lt!2633723 totalInput!779) _$68!1381)))

(declare-fun bs!1938036 () Bool)

(assert (= bs!1938036 d!2303694))

(assert (=> bs!1938036 m!8086014))

(assert (=> bs!1938036 m!8086014))

(assert (=> bs!1938036 m!8086060))

(assert (=> d!2303370 d!2303694))

(declare-fun b!7504348 () Bool)

(declare-fun e!4474347 () List!72457)

(assert (=> b!7504348 (= e!4474347 (Cons!72333 lt!2633725 lt!2633723))))

(declare-fun b!7504350 () Bool)

(declare-fun res!3010593 () Bool)

(declare-fun e!4474346 () Bool)

(assert (=> b!7504350 (=> (not res!3010593) (not e!4474346))))

(declare-fun lt!2633949 () List!72457)

(assert (=> b!7504350 (= res!3010593 (= (size!42250 lt!2633949) (+ (size!42250 testedP!204) (size!42250 (Cons!72333 lt!2633725 lt!2633723)))))))

(declare-fun b!7504351 () Bool)

(assert (=> b!7504351 (= e!4474346 (or (not (= (Cons!72333 lt!2633725 lt!2633723) Nil!72333)) (= lt!2633949 testedP!204)))))

(declare-fun b!7504349 () Bool)

(assert (=> b!7504349 (= e!4474347 (Cons!72333 (h!78781 testedP!204) (++!17308 (t!387026 testedP!204) (Cons!72333 lt!2633725 lt!2633723))))))

(declare-fun d!2303696 () Bool)

(assert (=> d!2303696 e!4474346))

(declare-fun res!3010594 () Bool)

(assert (=> d!2303696 (=> (not res!3010594) (not e!4474346))))

(assert (=> d!2303696 (= res!3010594 (= (content!15289 lt!2633949) ((_ map or) (content!15289 testedP!204) (content!15289 (Cons!72333 lt!2633725 lt!2633723)))))))

(assert (=> d!2303696 (= lt!2633949 e!4474347)))

(declare-fun c!1385439 () Bool)

(assert (=> d!2303696 (= c!1385439 ((_ is Nil!72333) testedP!204))))

(assert (=> d!2303696 (= (++!17308 testedP!204 (Cons!72333 lt!2633725 lt!2633723)) lt!2633949)))

(assert (= (and d!2303696 c!1385439) b!7504348))

(assert (= (and d!2303696 (not c!1385439)) b!7504349))

(assert (= (and d!2303696 res!3010594) b!7504350))

(assert (= (and b!7504350 res!3010593) b!7504351))

(declare-fun m!8086712 () Bool)

(assert (=> b!7504350 m!8086712))

(assert (=> b!7504350 m!8086028))

(declare-fun m!8086714 () Bool)

(assert (=> b!7504350 m!8086714))

(declare-fun m!8086716 () Bool)

(assert (=> b!7504349 m!8086716))

(declare-fun m!8086718 () Bool)

(assert (=> d!2303696 m!8086718))

(assert (=> d!2303696 m!8086114))

(declare-fun m!8086720 () Bool)

(assert (=> d!2303696 m!8086720))

(assert (=> d!2303370 d!2303696))

(declare-fun d!2303698 () Bool)

(assert (=> d!2303698 (= (isEmpty!41302 (getLanguageWitness!1038 z!3716)) (not ((_ is Some!17217) (getLanguageWitness!1038 z!3716))))))

(assert (=> d!2303456 d!2303698))

(declare-fun bs!1938037 () Bool)

(declare-fun d!2303700 () Bool)

(assert (= bs!1938037 (and d!2303700 d!2303648)))

(declare-fun lambda!465229 () Int)

(assert (=> bs!1938037 (not (= lambda!465229 lambda!465222))))

(declare-fun bs!1938038 () Bool)

(assert (= bs!1938038 (and d!2303700 d!2303456)))

(assert (=> bs!1938038 (not (= lambda!465229 lambda!465193))))

(declare-fun bs!1938039 () Bool)

(assert (= bs!1938039 (and d!2303700 b!7504075)))

(assert (=> bs!1938039 (= lambda!465229 lambda!465194)))

(declare-fun bs!1938040 () Bool)

(assert (= bs!1938040 (and d!2303700 d!2303628)))

(assert (=> bs!1938040 (not (= lambda!465229 lambda!465219))))

(declare-fun bs!1938041 () Bool)

(assert (= bs!1938041 (and d!2303700 d!2303582)))

(assert (=> bs!1938041 (not (= lambda!465229 lambda!465209))))

(declare-fun bs!1938042 () Bool)

(assert (= bs!1938042 (and d!2303700 d!2303390)))

(assert (=> bs!1938042 (not (= lambda!465229 lambda!465177))))

(declare-fun bs!1938043 () Bool)

(assert (= bs!1938043 (and d!2303700 b!7504076)))

(assert (=> bs!1938043 (= lambda!465229 lambda!465195)))

(declare-fun lt!2633952 () Option!17218)

(declare-fun isDefined!13901 (Option!17218) Bool)

(assert (=> d!2303700 (= (isDefined!13901 lt!2633952) (exists!4848 z!3716 lambda!465229))))

(declare-fun e!4474350 () Option!17218)

(assert (=> d!2303700 (= lt!2633952 e!4474350)))

(declare-fun c!1385448 () Bool)

(assert (=> d!2303700 (= c!1385448 (exists!4848 z!3716 lambda!465229))))

(assert (=> d!2303700 (= (getLanguageWitness!1038 z!3716) lt!2633952)))

(declare-fun b!7504356 () Bool)

(declare-fun getLanguageWitness!1040 (Context!16882) Option!17218)

(declare-fun getWitness!2474 ((InoxSet Context!16882) Int) Context!16882)

(assert (=> b!7504356 (= e!4474350 (getLanguageWitness!1040 (getWitness!2474 z!3716 lambda!465229)))))

(declare-fun b!7504357 () Bool)

(assert (=> b!7504357 (= e!4474350 None!17217)))

(assert (= (and d!2303700 c!1385448) b!7504356))

(assert (= (and d!2303700 (not c!1385448)) b!7504357))

(declare-fun m!8086722 () Bool)

(assert (=> d!2303700 m!8086722))

(declare-fun m!8086724 () Bool)

(assert (=> d!2303700 m!8086724))

(assert (=> d!2303700 m!8086724))

(declare-fun m!8086726 () Bool)

(assert (=> b!7504356 m!8086726))

(assert (=> b!7504356 m!8086726))

(declare-fun m!8086728 () Bool)

(assert (=> b!7504356 m!8086728))

(assert (=> d!2303456 d!2303700))

(declare-fun d!2303702 () Bool)

(declare-fun lt!2633955 () Bool)

(assert (=> d!2303702 (= lt!2633955 (forall!18272 (toList!11822 z!3716) lambda!465193))))

(declare-fun choose!58083 ((InoxSet Context!16882) Int) Bool)

(assert (=> d!2303702 (= lt!2633955 (choose!58083 z!3716 lambda!465193))))

(assert (=> d!2303702 (= (forall!18270 z!3716 lambda!465193) lt!2633955)))

(declare-fun bs!1938044 () Bool)

(assert (= bs!1938044 d!2303702))

(assert (=> bs!1938044 m!8086280))

(assert (=> bs!1938044 m!8086280))

(declare-fun m!8086730 () Bool)

(assert (=> bs!1938044 m!8086730))

(declare-fun m!8086732 () Bool)

(assert (=> bs!1938044 m!8086732))

(assert (=> d!2303456 d!2303702))

(declare-fun d!2303704 () Bool)

(assert (=> d!2303704 (= (head!15415 testedP!204) (h!78781 testedP!204))))

(assert (=> b!7504060 d!2303704))

(assert (=> b!7504060 d!2303610))

(declare-fun d!2303706 () Bool)

(declare-fun c!1385449 () Bool)

(assert (=> d!2303706 (= c!1385449 ((_ is Nil!72333) lt!2633822))))

(declare-fun e!4474351 () (InoxSet C!39684))

(assert (=> d!2303706 (= (content!15289 lt!2633822) e!4474351)))

(declare-fun b!7504358 () Bool)

(assert (=> b!7504358 (= e!4474351 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504359 () Bool)

(assert (=> b!7504359 (= e!4474351 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 lt!2633822) true) (content!15289 (t!387026 lt!2633822))))))

(assert (= (and d!2303706 c!1385449) b!7504358))

(assert (= (and d!2303706 (not c!1385449)) b!7504359))

(declare-fun m!8086734 () Bool)

(assert (=> b!7504359 m!8086734))

(declare-fun m!8086736 () Bool)

(assert (=> b!7504359 m!8086736))

(assert (=> d!2303436 d!2303706))

(assert (=> d!2303436 d!2303620))

(declare-fun d!2303708 () Bool)

(declare-fun c!1385450 () Bool)

(assert (=> d!2303708 (= c!1385450 ((_ is Nil!72333) (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))

(declare-fun e!4474352 () (InoxSet C!39684))

(assert (=> d!2303708 (= (content!15289 (Cons!72333 (head!15415 lt!2633730) Nil!72333)) e!4474352)))

(declare-fun b!7504360 () Bool)

(assert (=> b!7504360 (= e!4474352 ((as const (Array C!39684 Bool)) false))))

(declare-fun b!7504361 () Bool)

(assert (=> b!7504361 (= e!4474352 ((_ map or) (store ((as const (Array C!39684 Bool)) false) (h!78781 (Cons!72333 (head!15415 lt!2633730) Nil!72333)) true) (content!15289 (t!387026 (Cons!72333 (head!15415 lt!2633730) Nil!72333)))))))

(assert (= (and d!2303708 c!1385450) b!7504360))

(assert (= (and d!2303708 (not c!1385450)) b!7504361))

(declare-fun m!8086738 () Bool)

(assert (=> b!7504361 m!8086738))

(declare-fun m!8086740 () Bool)

(assert (=> b!7504361 m!8086740))

(assert (=> d!2303436 d!2303708))

(declare-fun b!7504365 () Bool)

(declare-fun e!4474354 () Bool)

(assert (=> b!7504365 (= e!4474354 (>= (size!42250 (tail!14981 lt!2633732)) (size!42250 (tail!14981 testedP!204))))))

(declare-fun b!7504362 () Bool)

(declare-fun e!4474355 () Bool)

(declare-fun e!4474353 () Bool)

(assert (=> b!7504362 (= e!4474355 e!4474353)))

(declare-fun res!3010597 () Bool)

(assert (=> b!7504362 (=> (not res!3010597) (not e!4474353))))

(assert (=> b!7504362 (= res!3010597 (not ((_ is Nil!72333) (tail!14981 lt!2633732))))))

(declare-fun d!2303710 () Bool)

(assert (=> d!2303710 e!4474354))

(declare-fun res!3010596 () Bool)

(assert (=> d!2303710 (=> res!3010596 e!4474354)))

(declare-fun lt!2633956 () Bool)

(assert (=> d!2303710 (= res!3010596 (not lt!2633956))))

(assert (=> d!2303710 (= lt!2633956 e!4474355)))

(declare-fun res!3010595 () Bool)

(assert (=> d!2303710 (=> res!3010595 e!4474355)))

(assert (=> d!2303710 (= res!3010595 ((_ is Nil!72333) (tail!14981 testedP!204)))))

(assert (=> d!2303710 (= (isPrefix!5975 (tail!14981 testedP!204) (tail!14981 lt!2633732)) lt!2633956)))

(declare-fun b!7504363 () Bool)

(declare-fun res!3010598 () Bool)

(assert (=> b!7504363 (=> (not res!3010598) (not e!4474353))))

(assert (=> b!7504363 (= res!3010598 (= (head!15415 (tail!14981 testedP!204)) (head!15415 (tail!14981 lt!2633732))))))

(declare-fun b!7504364 () Bool)

(assert (=> b!7504364 (= e!4474353 (isPrefix!5975 (tail!14981 (tail!14981 testedP!204)) (tail!14981 (tail!14981 lt!2633732))))))

(assert (= (and d!2303710 (not res!3010595)) b!7504362))

(assert (= (and b!7504362 res!3010597) b!7504363))

(assert (= (and b!7504363 res!3010598) b!7504364))

(assert (= (and d!2303710 (not res!3010596)) b!7504365))

(assert (=> b!7504365 m!8086268))

(declare-fun m!8086742 () Bool)

(assert (=> b!7504365 m!8086742))

(assert (=> b!7504365 m!8086260))

(assert (=> b!7504365 m!8086650))

(assert (=> b!7504363 m!8086260))

(assert (=> b!7504363 m!8086652))

(assert (=> b!7504363 m!8086268))

(declare-fun m!8086744 () Bool)

(assert (=> b!7504363 m!8086744))

(assert (=> b!7504364 m!8086260))

(assert (=> b!7504364 m!8086654))

(assert (=> b!7504364 m!8086268))

(declare-fun m!8086746 () Bool)

(assert (=> b!7504364 m!8086746))

(assert (=> b!7504364 m!8086654))

(assert (=> b!7504364 m!8086746))

(declare-fun m!8086748 () Bool)

(assert (=> b!7504364 m!8086748))

(assert (=> b!7504065 d!2303710))

(assert (=> b!7504065 d!2303664))

(declare-fun d!2303712 () Bool)

(assert (=> d!2303712 (= (tail!14981 lt!2633732) (t!387026 lt!2633732))))

(assert (=> b!7504065 d!2303712))

(assert (=> b!7504064 d!2303704))

(declare-fun d!2303714 () Bool)

(assert (=> d!2303714 (= (head!15415 lt!2633732) (h!78781 lt!2633732))))

(assert (=> b!7504064 d!2303714))

(declare-fun d!2303716 () Bool)

(declare-fun lt!2633957 () Int)

(assert (=> d!2303716 (>= lt!2633957 0)))

(declare-fun e!4474356 () Int)

(assert (=> d!2303716 (= lt!2633957 e!4474356)))

(declare-fun c!1385451 () Bool)

(assert (=> d!2303716 (= c!1385451 ((_ is Nil!72333) lt!2633829))))

(assert (=> d!2303716 (= (size!42250 lt!2633829) lt!2633957)))

(declare-fun b!7504366 () Bool)

(assert (=> b!7504366 (= e!4474356 0)))

(declare-fun b!7504367 () Bool)

(assert (=> b!7504367 (= e!4474356 (+ 1 (size!42250 (t!387026 lt!2633829))))))

(assert (= (and d!2303716 c!1385451) b!7504366))

(assert (= (and d!2303716 (not c!1385451)) b!7504367))

(declare-fun m!8086750 () Bool)

(assert (=> b!7504367 m!8086750))

(assert (=> b!7504057 d!2303716))

(assert (=> b!7504057 d!2303438))

(declare-fun d!2303718 () Bool)

(declare-fun lt!2633958 () Int)

(assert (=> d!2303718 (>= lt!2633958 0)))

(declare-fun e!4474357 () Int)

(assert (=> d!2303718 (= lt!2633958 e!4474357)))

(declare-fun c!1385452 () Bool)

(assert (=> d!2303718 (= c!1385452 ((_ is Nil!72333) testedSuffix!164))))

(assert (=> d!2303718 (= (size!42250 testedSuffix!164) lt!2633958)))

(declare-fun b!7504368 () Bool)

(assert (=> b!7504368 (= e!4474357 0)))

(declare-fun b!7504369 () Bool)

(assert (=> b!7504369 (= e!4474357 (+ 1 (size!42250 (t!387026 testedSuffix!164))))))

(assert (= (and d!2303718 c!1385452) b!7504368))

(assert (= (and d!2303718 (not c!1385452)) b!7504369))

(declare-fun m!8086752 () Bool)

(assert (=> b!7504369 m!8086752))

(assert (=> b!7504057 d!2303718))

(declare-fun b!7504370 () Bool)

(declare-fun e!4474358 () Bool)

(declare-fun tp!2178306 () Bool)

(assert (=> b!7504370 (= e!4474358 (and tp_is_empty!49699 tp!2178306))))

(assert (=> b!7504099 (= tp!2178281 e!4474358)))

(assert (= (and b!7504099 ((_ is Cons!72333) (t!387026 (t!387026 testedSuffix!164)))) b!7504370))

(declare-fun condSetEmpty!56934 () Bool)

(assert (=> setNonEmpty!56932 (= condSetEmpty!56934 (= setRest!56932 ((as const (Array Context!16882 Bool)) false)))))

(declare-fun setRes!56934 () Bool)

(assert (=> setNonEmpty!56932 (= tp!2178278 setRes!56934)))

(declare-fun setIsEmpty!56934 () Bool)

(assert (=> setIsEmpty!56934 setRes!56934))

(declare-fun setElem!56934 () Context!16882)

(declare-fun tp!2178307 () Bool)

(declare-fun setNonEmpty!56934 () Bool)

(declare-fun e!4474359 () Bool)

(assert (=> setNonEmpty!56934 (= setRes!56934 (and tp!2178307 (inv!92437 setElem!56934) e!4474359))))

(declare-fun setRest!56934 () (InoxSet Context!16882))

(assert (=> setNonEmpty!56934 (= setRest!56932 ((_ map or) (store ((as const (Array Context!16882 Bool)) false) setElem!56934 true) setRest!56934))))

(declare-fun b!7504371 () Bool)

(declare-fun tp!2178308 () Bool)

(assert (=> b!7504371 (= e!4474359 tp!2178308)))

(assert (= (and setNonEmpty!56932 condSetEmpty!56934) setIsEmpty!56934))

(assert (= (and setNonEmpty!56932 (not condSetEmpty!56934)) setNonEmpty!56934))

(assert (= setNonEmpty!56934 b!7504371))

(declare-fun m!8086754 () Bool)

(assert (=> setNonEmpty!56934 m!8086754))

(declare-fun b!7504385 () Bool)

(declare-fun e!4474362 () Bool)

(declare-fun tp!2178323 () Bool)

(declare-fun tp!2178321 () Bool)

(assert (=> b!7504385 (= e!4474362 (and tp!2178323 tp!2178321))))

(assert (=> b!7504087 (= tp!2178269 e!4474362)))

(declare-fun b!7504384 () Bool)

(declare-fun tp!2178320 () Bool)

(assert (=> b!7504384 (= e!4474362 tp!2178320)))

(declare-fun b!7504383 () Bool)

(declare-fun tp!2178322 () Bool)

(declare-fun tp!2178319 () Bool)

(assert (=> b!7504383 (= e!4474362 (and tp!2178322 tp!2178319))))

(declare-fun b!7504382 () Bool)

(assert (=> b!7504382 (= e!4474362 tp_is_empty!49699)))

(assert (= (and b!7504087 ((_ is ElementMatch!19689) (h!78782 (exprs!8941 setElem!56926)))) b!7504382))

(assert (= (and b!7504087 ((_ is Concat!28534) (h!78782 (exprs!8941 setElem!56926)))) b!7504383))

(assert (= (and b!7504087 ((_ is Star!19689) (h!78782 (exprs!8941 setElem!56926)))) b!7504384))

(assert (= (and b!7504087 ((_ is Union!19689) (h!78782 (exprs!8941 setElem!56926)))) b!7504385))

(declare-fun b!7504386 () Bool)

(declare-fun e!4474363 () Bool)

(declare-fun tp!2178324 () Bool)

(declare-fun tp!2178325 () Bool)

(assert (=> b!7504386 (= e!4474363 (and tp!2178324 tp!2178325))))

(assert (=> b!7504087 (= tp!2178270 e!4474363)))

(assert (= (and b!7504087 ((_ is Cons!72334) (t!387027 (exprs!8941 setElem!56926)))) b!7504386))

(declare-fun b!7504387 () Bool)

(declare-fun e!4474364 () Bool)

(declare-fun tp!2178326 () Bool)

(assert (=> b!7504387 (= e!4474364 (and tp_is_empty!49699 tp!2178326))))

(assert (=> b!7504092 (= tp!2178273 e!4474364)))

(assert (= (and b!7504092 ((_ is Cons!72333) (t!387026 (t!387026 testedP!204)))) b!7504387))

(declare-fun b!7504388 () Bool)

(declare-fun e!4474365 () Bool)

(declare-fun tp!2178327 () Bool)

(declare-fun tp!2178328 () Bool)

(assert (=> b!7504388 (= e!4474365 (and tp!2178327 tp!2178328))))

(assert (=> b!7504097 (= tp!2178279 e!4474365)))

(assert (= (and b!7504097 ((_ is Cons!72334) (exprs!8941 setElem!56932))) b!7504388))

(declare-fun b!7504389 () Bool)

(declare-fun e!4474366 () Bool)

(declare-fun tp!2178329 () Bool)

(assert (=> b!7504389 (= e!4474366 (and tp_is_empty!49699 tp!2178329))))

(assert (=> b!7504098 (= tp!2178280 e!4474366)))

(assert (= (and b!7504098 ((_ is Cons!72333) (t!387026 (t!387026 totalInput!779)))) b!7504389))

(declare-fun b_lambda!287857 () Bool)

(assert (= b_lambda!287853 (or d!2303442 b_lambda!287857)))

(declare-fun bs!1938045 () Bool)

(declare-fun d!2303720 () Bool)

(assert (= bs!1938045 (and d!2303720 d!2303442)))

(declare-fun validRegex!10176 (Regex!19689) Bool)

(assert (=> bs!1938045 (= (dynLambda!29773 lambda!465180 (h!78782 (exprs!8941 setElem!56926))) (validRegex!10176 (h!78782 (exprs!8941 setElem!56926))))))

(declare-fun m!8086756 () Bool)

(assert (=> bs!1938045 m!8086756))

(assert (=> b!7504236 d!2303720))

(check-sat (not b!7504345) (not d!2303628) (not b!7504387) (not b!7504367) (not b!7504320) (not d!2303634) (not d!2303606) (not b!7504370) (not b!7504356) (not b!7504383) (not b!7504323) (not b!7504359) (not d!2303614) (not b!7504319) (not b!7504263) (not b!7504289) (not b!7504301) (not d!2303570) (not b!7504341) (not b!7504350) (not b!7504338) (not b!7504216) (not b!7504309) (not b!7504324) (not b!7504313) (not setNonEmpty!56934) (not b!7504371) tp_is_empty!49699 (not b!7504327) (not b!7504363) (not d!2303646) (not b!7504317) (not b!7504237) (not b!7504287) (not b!7504285) (not d!2303700) (not b!7504284) (not b!7504364) (not b!7504361) (not d!2303672) (not d!2303692) (not b!7504385) (not b!7504225) (not b!7504269) (not b!7504331) (not b!7504337) (not b!7504297) (not d!2303678) (not b!7504226) (not d!2303694) (not b!7504335) (not d!2303676) (not b!7504241) (not d!2303702) (not b!7504302) (not d!2303582) (not d!2303652) (not b!7504312) (not b!7504291) (not b_lambda!287857) (not b!7504349) (not b!7504283) (not b!7504328) (not b!7504305) (not b!7504365) (not b!7504295) (not d!2303686) (not d!2303648) (not b!7504303) (not d!2303612) (not b!7504293) (not bs!1938045) (not b!7504369) (not b!7504223) (not d!2303674) (not b!7504273) (not b!7504388) (not b!7504384) (not b!7504277) (not b!7504386) (not b!7504227) (not d!2303654) (not b!7504343) (not b!7504346) (not b!7504321) (not b!7504242) (not b!7504238) (not b!7504298) (not d!2303696) (not b!7504281) (not b!7504333) (not d!2303660) (not b!7504306) (not b!7504311) (not b!7504389) (not b!7504315))
(check-sat)
