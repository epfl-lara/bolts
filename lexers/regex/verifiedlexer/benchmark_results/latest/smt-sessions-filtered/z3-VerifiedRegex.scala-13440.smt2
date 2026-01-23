; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726910 () Bool)

(assert start!726910)

(declare-fun b!7507594 () Bool)

(declare-fun e!4476591 () Bool)

(declare-fun e!4476594 () Bool)

(assert (=> b!7507594 (= e!4476591 e!4476594)))

(declare-fun res!3012025 () Bool)

(assert (=> b!7507594 (=> (not res!3012025) (not e!4476594))))

(declare-fun testedPSize!164 () Int)

(declare-fun lt!2636119 () Int)

(assert (=> b!7507594 (= res!3012025 (= testedPSize!164 lt!2636119))))

(declare-datatypes ((C!39760 0))(
  ( (C!39761 (val!30278 Int)) )
))
(declare-datatypes ((List!72537 0))(
  ( (Nil!72413) (Cons!72413 (h!78861 C!39760) (t!387106 List!72537)) )
))
(declare-fun testedP!204 () List!72537)

(declare-fun size!42288 (List!72537) Int)

(assert (=> b!7507594 (= lt!2636119 (size!42288 testedP!204))))

(declare-fun b!7507595 () Bool)

(declare-fun e!4476600 () Bool)

(declare-fun e!4476602 () Bool)

(assert (=> b!7507595 (= e!4476600 e!4476602)))

(declare-fun res!3012027 () Bool)

(assert (=> b!7507595 (=> res!3012027 e!4476602)))

(declare-fun lt!2636116 () Int)

(assert (=> b!7507595 (= res!3012027 (>= lt!2636119 lt!2636116))))

(declare-datatypes ((Unit!166442 0))(
  ( (Unit!166443) )
))
(declare-fun lt!2636108 () Unit!166442)

(declare-fun e!4476599 () Unit!166442)

(assert (=> b!7507595 (= lt!2636108 e!4476599)))

(declare-fun c!1386133 () Bool)

(assert (=> b!7507595 (= c!1386133 (= lt!2636119 lt!2636116))))

(assert (=> b!7507595 (<= lt!2636119 lt!2636116)))

(declare-fun lt!2636110 () Unit!166442)

(declare-fun totalInput!779 () List!72537)

(declare-fun lemmaIsPrefixThenSmallerEqSize!998 (List!72537 List!72537) Unit!166442)

(assert (=> b!7507595 (= lt!2636110 (lemmaIsPrefixThenSmallerEqSize!998 testedP!204 totalInput!779))))

(declare-fun b!7507596 () Bool)

(declare-fun Unit!166444 () Unit!166442)

(assert (=> b!7507596 (= e!4476599 Unit!166444)))

(declare-fun b!7507597 () Bool)

(declare-fun e!4476601 () Bool)

(assert (=> b!7507597 (= e!4476601 e!4476600)))

(declare-fun res!3012026 () Bool)

(assert (=> b!7507597 (=> res!3012026 e!4476600)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19717 0))(
  ( (ElementMatch!19717 (c!1386134 C!39760)) (Concat!28562 (regOne!39946 Regex!19717) (regTwo!39946 Regex!19717)) (EmptyExpr!19717) (Star!19717 (reg!20046 Regex!19717)) (EmptyLang!19717) (Union!19717 (regOne!39947 Regex!19717) (regTwo!39947 Regex!19717)) )
))
(declare-datatypes ((List!72538 0))(
  ( (Nil!72414) (Cons!72414 (h!78862 Regex!19717) (t!387107 List!72538)) )
))
(declare-datatypes ((Context!16938 0))(
  ( (Context!16939 (exprs!8969 List!72538)) )
))
(declare-fun z!3716 () (InoxSet Context!16938))

(declare-fun lostCauseZipper!1405 ((InoxSet Context!16938)) Bool)

(assert (=> b!7507597 (= res!3012026 (lostCauseZipper!1405 z!3716))))

(declare-fun testedSuffix!164 () List!72537)

(declare-fun lt!2636122 () List!72537)

(assert (=> b!7507597 (and (= testedSuffix!164 lt!2636122) (= lt!2636122 testedSuffix!164))))

(declare-fun lt!2636115 () Unit!166442)

(declare-fun lemmaSamePrefixThenSameSuffix!2810 (List!72537 List!72537 List!72537 List!72537 List!72537) Unit!166442)

(assert (=> b!7507597 (= lt!2636115 (lemmaSamePrefixThenSameSuffix!2810 testedP!204 testedSuffix!164 testedP!204 lt!2636122 totalInput!779))))

(declare-fun getSuffix!3511 (List!72537 List!72537) List!72537)

(assert (=> b!7507597 (= lt!2636122 (getSuffix!3511 totalInput!779 testedP!204))))

(declare-fun b!7507598 () Bool)

(declare-fun e!4476593 () Bool)

(assert (=> b!7507598 (= e!4476594 e!4476593)))

(declare-fun res!3012028 () Bool)

(assert (=> b!7507598 (=> (not res!3012028) (not e!4476593))))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7507598 (= res!3012028 (= totalInputSize!226 lt!2636116))))

(assert (=> b!7507598 (= lt!2636116 (size!42288 totalInput!779))))

(declare-fun e!4476596 () Bool)

(declare-fun lt!2636109 () List!72537)

(declare-fun b!7507599 () Bool)

(assert (=> b!7507599 (= e!4476596 (< (- lt!2636116 (size!42288 lt!2636109)) (- lt!2636116 lt!2636119)))))

(declare-fun b!7507600 () Bool)

(declare-fun e!4476592 () Bool)

(declare-fun tp_is_empty!49775 () Bool)

(declare-fun tp!2179163 () Bool)

(assert (=> b!7507600 (= e!4476592 (and tp_is_empty!49775 tp!2179163))))

(declare-fun b!7507602 () Bool)

(declare-fun e!4476598 () Bool)

(declare-fun tp!2179161 () Bool)

(assert (=> b!7507602 (= e!4476598 (and tp_is_empty!49775 tp!2179161))))

(declare-fun b!7507603 () Bool)

(declare-fun res!3012032 () Bool)

(assert (=> b!7507603 (=> res!3012032 e!4476600)))

(assert (=> b!7507603 (= res!3012032 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7507604 () Bool)

(declare-fun e!4476595 () Bool)

(declare-fun tp!2179164 () Bool)

(assert (=> b!7507604 (= e!4476595 tp!2179164)))

(declare-fun setIsEmpty!57058 () Bool)

(declare-fun setRes!57058 () Bool)

(assert (=> setIsEmpty!57058 setRes!57058))

(declare-fun b!7507605 () Bool)

(assert (=> b!7507605 (= e!4476602 e!4476596)))

(declare-fun res!3012029 () Bool)

(assert (=> b!7507605 (=> res!3012029 e!4476596)))

(declare-fun nullableZipper!3183 ((InoxSet Context!16938)) Bool)

(assert (=> b!7507605 (= res!3012029 (nullableZipper!3183 z!3716))))

(declare-fun lt!2636120 () List!72537)

(declare-fun ++!17346 (List!72537 List!72537) List!72537)

(assert (=> b!7507605 (= (++!17346 lt!2636109 lt!2636120) totalInput!779)))

(declare-fun lt!2636117 () C!39760)

(declare-fun lt!2636112 () Unit!166442)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3159 (List!72537 C!39760 List!72537 List!72537) Unit!166442)

(assert (=> b!7507605 (= lt!2636112 (lemmaMoveElementToOtherListKeepsConcatEq!3159 testedP!204 lt!2636117 lt!2636120 totalInput!779))))

(declare-fun tail!15001 (List!72537) List!72537)

(assert (=> b!7507605 (= lt!2636120 (tail!15001 testedSuffix!164))))

(declare-fun isPrefix!6011 (List!72537 List!72537) Bool)

(declare-fun head!15434 (List!72537) C!39760)

(assert (=> b!7507605 (isPrefix!6011 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413)) totalInput!779)))

(declare-fun lt!2636113 () Unit!166442)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1128 (List!72537 List!72537) Unit!166442)

(assert (=> b!7507605 (= lt!2636113 (lemmaAddHeadSuffixToPrefixStillPrefix!1128 testedP!204 totalInput!779))))

(assert (=> b!7507605 (= lt!2636109 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413)))))

(assert (=> b!7507605 (= lt!2636117 (head!15434 testedSuffix!164))))

(declare-fun setElem!57058 () Context!16938)

(declare-fun tp!2179162 () Bool)

(declare-fun setNonEmpty!57058 () Bool)

(declare-fun inv!92522 (Context!16938) Bool)

(assert (=> setNonEmpty!57058 (= setRes!57058 (and tp!2179162 (inv!92522 setElem!57058) e!4476595))))

(declare-fun setRest!57058 () (InoxSet Context!16938))

(assert (=> setNonEmpty!57058 (= z!3716 ((_ map or) (store ((as const (Array Context!16938 Bool)) false) setElem!57058 true) setRest!57058))))

(declare-fun b!7507606 () Bool)

(declare-fun Unit!166445 () Unit!166442)

(assert (=> b!7507606 (= e!4476599 Unit!166445)))

(declare-fun lt!2636111 () Unit!166442)

(declare-fun lemmaIsPrefixRefl!3850 (List!72537 List!72537) Unit!166442)

(assert (=> b!7507606 (= lt!2636111 (lemmaIsPrefixRefl!3850 totalInput!779 totalInput!779))))

(assert (=> b!7507606 (isPrefix!6011 totalInput!779 totalInput!779)))

(declare-fun lt!2636114 () Unit!166442)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1500 (List!72537 List!72537 List!72537) Unit!166442)

(assert (=> b!7507606 (= lt!2636114 (lemmaIsPrefixSameLengthThenSameList!1500 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7507606 false))

(declare-fun b!7507607 () Bool)

(assert (=> b!7507607 (= e!4476593 (not e!4476601))))

(declare-fun res!3012030 () Bool)

(assert (=> b!7507607 (=> res!3012030 e!4476601)))

(assert (=> b!7507607 (= res!3012030 (not (isPrefix!6011 testedP!204 totalInput!779)))))

(declare-fun lt!2636118 () List!72537)

(assert (=> b!7507607 (isPrefix!6011 testedP!204 lt!2636118)))

(declare-fun lt!2636121 () Unit!166442)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3724 (List!72537 List!72537) Unit!166442)

(assert (=> b!7507607 (= lt!2636121 (lemmaConcatTwoListThenFirstIsPrefix!3724 testedP!204 testedSuffix!164))))

(declare-fun b!7507601 () Bool)

(declare-fun e!4476597 () Bool)

(declare-fun tp!2179165 () Bool)

(assert (=> b!7507601 (= e!4476597 (and tp_is_empty!49775 tp!2179165))))

(declare-fun res!3012031 () Bool)

(assert (=> start!726910 (=> (not res!3012031) (not e!4476591))))

(assert (=> start!726910 (= res!3012031 (= lt!2636118 totalInput!779))))

(assert (=> start!726910 (= lt!2636118 (++!17346 testedP!204 testedSuffix!164))))

(assert (=> start!726910 e!4476591))

(assert (=> start!726910 e!4476598))

(assert (=> start!726910 true))

(assert (=> start!726910 e!4476597))

(assert (=> start!726910 e!4476592))

(declare-fun condSetEmpty!57058 () Bool)

(assert (=> start!726910 (= condSetEmpty!57058 (= z!3716 ((as const (Array Context!16938 Bool)) false)))))

(assert (=> start!726910 setRes!57058))

(assert (= (and start!726910 res!3012031) b!7507594))

(assert (= (and b!7507594 res!3012025) b!7507598))

(assert (= (and b!7507598 res!3012028) b!7507607))

(assert (= (and b!7507607 (not res!3012030)) b!7507597))

(assert (= (and b!7507597 (not res!3012026)) b!7507603))

(assert (= (and b!7507603 (not res!3012032)) b!7507595))

(assert (= (and b!7507595 c!1386133) b!7507606))

(assert (= (and b!7507595 (not c!1386133)) b!7507596))

(assert (= (and b!7507595 (not res!3012027)) b!7507605))

(assert (= (and b!7507605 (not res!3012029)) b!7507599))

(get-info :version)

(assert (= (and start!726910 ((_ is Cons!72413) testedSuffix!164)) b!7507602))

(assert (= (and start!726910 ((_ is Cons!72413) totalInput!779)) b!7507601))

(assert (= (and start!726910 ((_ is Cons!72413) testedP!204)) b!7507600))

(assert (= (and start!726910 condSetEmpty!57058) setIsEmpty!57058))

(assert (= (and start!726910 (not condSetEmpty!57058)) setNonEmpty!57058))

(assert (= setNonEmpty!57058 b!7507604))

(declare-fun m!8090712 () Bool)

(assert (=> b!7507594 m!8090712))

(declare-fun m!8090714 () Bool)

(assert (=> setNonEmpty!57058 m!8090714))

(declare-fun m!8090716 () Bool)

(assert (=> b!7507606 m!8090716))

(declare-fun m!8090718 () Bool)

(assert (=> b!7507606 m!8090718))

(declare-fun m!8090720 () Bool)

(assert (=> b!7507606 m!8090720))

(declare-fun m!8090722 () Bool)

(assert (=> b!7507599 m!8090722))

(declare-fun m!8090724 () Bool)

(assert (=> b!7507598 m!8090724))

(declare-fun m!8090726 () Bool)

(assert (=> b!7507595 m!8090726))

(declare-fun m!8090728 () Bool)

(assert (=> b!7507597 m!8090728))

(declare-fun m!8090730 () Bool)

(assert (=> b!7507597 m!8090730))

(declare-fun m!8090732 () Bool)

(assert (=> b!7507597 m!8090732))

(declare-fun m!8090734 () Bool)

(assert (=> start!726910 m!8090734))

(declare-fun m!8090736 () Bool)

(assert (=> b!7507607 m!8090736))

(declare-fun m!8090738 () Bool)

(assert (=> b!7507607 m!8090738))

(declare-fun m!8090740 () Bool)

(assert (=> b!7507607 m!8090740))

(declare-fun m!8090742 () Bool)

(assert (=> b!7507605 m!8090742))

(declare-fun m!8090744 () Bool)

(assert (=> b!7507605 m!8090744))

(declare-fun m!8090746 () Bool)

(assert (=> b!7507605 m!8090746))

(declare-fun m!8090748 () Bool)

(assert (=> b!7507605 m!8090748))

(declare-fun m!8090750 () Bool)

(assert (=> b!7507605 m!8090750))

(declare-fun m!8090752 () Bool)

(assert (=> b!7507605 m!8090752))

(declare-fun m!8090754 () Bool)

(assert (=> b!7507605 m!8090754))

(declare-fun m!8090756 () Bool)

(assert (=> b!7507605 m!8090756))

(assert (=> b!7507605 m!8090752))

(declare-fun m!8090758 () Bool)

(assert (=> b!7507605 m!8090758))

(declare-fun m!8090760 () Bool)

(assert (=> b!7507605 m!8090760))

(check-sat (not b!7507605) (not b!7507606) (not start!726910) (not setNonEmpty!57058) (not b!7507594) (not b!7507600) (not b!7507604) (not b!7507602) (not b!7507598) tp_is_empty!49775 (not b!7507599) (not b!7507597) (not b!7507601) (not b!7507607) (not b!7507595))
(check-sat)
(get-model)

(declare-fun d!2304941 () Bool)

(declare-fun lambda!465577 () Int)

(declare-fun forall!18301 (List!72538 Int) Bool)

(assert (=> d!2304941 (= (inv!92522 setElem!57058) (forall!18301 (exprs!8969 setElem!57058) lambda!465577))))

(declare-fun bs!1938479 () Bool)

(assert (= bs!1938479 d!2304941))

(declare-fun m!8090890 () Bool)

(assert (=> bs!1938479 m!8090890))

(assert (=> setNonEmpty!57058 d!2304941))

(declare-fun d!2304993 () Bool)

(assert (=> d!2304993 (= (head!15434 lt!2636122) (h!78861 lt!2636122))))

(assert (=> b!7507605 d!2304993))

(declare-fun d!2304995 () Bool)

(declare-fun lambda!465580 () Int)

(declare-fun exists!4871 ((InoxSet Context!16938) Int) Bool)

(assert (=> d!2304995 (= (nullableZipper!3183 z!3716) (exists!4871 z!3716 lambda!465580))))

(declare-fun bs!1938480 () Bool)

(assert (= bs!1938480 d!2304995))

(declare-fun m!8090892 () Bool)

(assert (=> bs!1938480 m!8090892))

(assert (=> b!7507605 d!2304995))

(declare-fun d!2304997 () Bool)

(assert (=> d!2304997 (= (tail!15001 testedSuffix!164) (t!387106 testedSuffix!164))))

(assert (=> b!7507605 d!2304997))

(declare-fun d!2304999 () Bool)

(assert (=> d!2304999 (= (++!17346 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413)) lt!2636120) totalInput!779)))

(declare-fun lt!2636190 () Unit!166442)

(declare-fun choose!58170 (List!72537 C!39760 List!72537 List!72537) Unit!166442)

(assert (=> d!2304999 (= lt!2636190 (choose!58170 testedP!204 lt!2636117 lt!2636120 totalInput!779))))

(assert (=> d!2304999 (= (++!17346 testedP!204 (Cons!72413 lt!2636117 lt!2636120)) totalInput!779)))

(assert (=> d!2304999 (= (lemmaMoveElementToOtherListKeepsConcatEq!3159 testedP!204 lt!2636117 lt!2636120 totalInput!779) lt!2636190)))

(declare-fun bs!1938481 () Bool)

(assert (= bs!1938481 d!2304999))

(assert (=> bs!1938481 m!8090760))

(assert (=> bs!1938481 m!8090760))

(declare-fun m!8090894 () Bool)

(assert (=> bs!1938481 m!8090894))

(declare-fun m!8090896 () Bool)

(assert (=> bs!1938481 m!8090896))

(declare-fun m!8090898 () Bool)

(assert (=> bs!1938481 m!8090898))

(assert (=> b!7507605 d!2304999))

(declare-fun d!2305001 () Bool)

(assert (=> d!2305001 (isPrefix!6011 (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413)) totalInput!779)))

(declare-fun lt!2636193 () Unit!166442)

(declare-fun choose!58171 (List!72537 List!72537) Unit!166442)

(assert (=> d!2305001 (= lt!2636193 (choose!58171 testedP!204 totalInput!779))))

(assert (=> d!2305001 (isPrefix!6011 testedP!204 totalInput!779)))

(assert (=> d!2305001 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1128 testedP!204 totalInput!779) lt!2636193)))

(declare-fun bs!1938482 () Bool)

(assert (= bs!1938482 d!2305001))

(assert (=> bs!1938482 m!8090732))

(declare-fun m!8090900 () Bool)

(assert (=> bs!1938482 m!8090900))

(assert (=> bs!1938482 m!8090732))

(declare-fun m!8090902 () Bool)

(assert (=> bs!1938482 m!8090902))

(declare-fun m!8090904 () Bool)

(assert (=> bs!1938482 m!8090904))

(assert (=> bs!1938482 m!8090902))

(declare-fun m!8090906 () Bool)

(assert (=> bs!1938482 m!8090906))

(assert (=> bs!1938482 m!8090736))

(assert (=> b!7507605 d!2305001))

(declare-fun b!7507703 () Bool)

(declare-fun e!4476663 () List!72537)

(assert (=> b!7507703 (= e!4476663 (Cons!72413 lt!2636117 Nil!72413))))

(declare-fun e!4476664 () Bool)

(declare-fun b!7507706 () Bool)

(declare-fun lt!2636196 () List!72537)

(assert (=> b!7507706 (= e!4476664 (or (not (= (Cons!72413 lt!2636117 Nil!72413) Nil!72413)) (= lt!2636196 testedP!204)))))

(declare-fun d!2305003 () Bool)

(assert (=> d!2305003 e!4476664))

(declare-fun res!3012073 () Bool)

(assert (=> d!2305003 (=> (not res!3012073) (not e!4476664))))

(declare-fun content!15312 (List!72537) (InoxSet C!39760))

(assert (=> d!2305003 (= res!3012073 (= (content!15312 lt!2636196) ((_ map or) (content!15312 testedP!204) (content!15312 (Cons!72413 lt!2636117 Nil!72413)))))))

(assert (=> d!2305003 (= lt!2636196 e!4476663)))

(declare-fun c!1386166 () Bool)

(assert (=> d!2305003 (= c!1386166 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305003 (= (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413)) lt!2636196)))

(declare-fun b!7507704 () Bool)

(assert (=> b!7507704 (= e!4476663 (Cons!72413 (h!78861 testedP!204) (++!17346 (t!387106 testedP!204) (Cons!72413 lt!2636117 Nil!72413))))))

(declare-fun b!7507705 () Bool)

(declare-fun res!3012074 () Bool)

(assert (=> b!7507705 (=> (not res!3012074) (not e!4476664))))

(assert (=> b!7507705 (= res!3012074 (= (size!42288 lt!2636196) (+ (size!42288 testedP!204) (size!42288 (Cons!72413 lt!2636117 Nil!72413)))))))

(assert (= (and d!2305003 c!1386166) b!7507703))

(assert (= (and d!2305003 (not c!1386166)) b!7507704))

(assert (= (and d!2305003 res!3012073) b!7507705))

(assert (= (and b!7507705 res!3012074) b!7507706))

(declare-fun m!8090908 () Bool)

(assert (=> d!2305003 m!8090908))

(declare-fun m!8090910 () Bool)

(assert (=> d!2305003 m!8090910))

(declare-fun m!8090912 () Bool)

(assert (=> d!2305003 m!8090912))

(declare-fun m!8090914 () Bool)

(assert (=> b!7507704 m!8090914))

(declare-fun m!8090916 () Bool)

(assert (=> b!7507705 m!8090916))

(assert (=> b!7507705 m!8090712))

(declare-fun m!8090918 () Bool)

(assert (=> b!7507705 m!8090918))

(assert (=> b!7507605 d!2305003))

(declare-fun d!2305005 () Bool)

(assert (=> d!2305005 (= (head!15434 testedSuffix!164) (h!78861 testedSuffix!164))))

(assert (=> b!7507605 d!2305005))

(declare-fun d!2305007 () Bool)

(declare-fun e!4476672 () Bool)

(assert (=> d!2305007 e!4476672))

(declare-fun res!3012086 () Bool)

(assert (=> d!2305007 (=> res!3012086 e!4476672)))

(declare-fun lt!2636199 () Bool)

(assert (=> d!2305007 (= res!3012086 (not lt!2636199))))

(declare-fun e!4476673 () Bool)

(assert (=> d!2305007 (= lt!2636199 e!4476673)))

(declare-fun res!3012085 () Bool)

(assert (=> d!2305007 (=> res!3012085 e!4476673)))

(assert (=> d!2305007 (= res!3012085 ((_ is Nil!72413) (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))

(assert (=> d!2305007 (= (isPrefix!6011 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413)) totalInput!779) lt!2636199)))

(declare-fun b!7507718 () Bool)

(assert (=> b!7507718 (= e!4476672 (>= (size!42288 totalInput!779) (size!42288 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(declare-fun b!7507715 () Bool)

(declare-fun e!4476671 () Bool)

(assert (=> b!7507715 (= e!4476673 e!4476671)))

(declare-fun res!3012084 () Bool)

(assert (=> b!7507715 (=> (not res!3012084) (not e!4476671))))

(assert (=> b!7507715 (= res!3012084 (not ((_ is Nil!72413) totalInput!779)))))

(declare-fun b!7507717 () Bool)

(assert (=> b!7507717 (= e!4476671 (isPrefix!6011 (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))) (tail!15001 totalInput!779)))))

(declare-fun b!7507716 () Bool)

(declare-fun res!3012083 () Bool)

(assert (=> b!7507716 (=> (not res!3012083) (not e!4476671))))

(assert (=> b!7507716 (= res!3012083 (= (head!15434 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))) (head!15434 totalInput!779)))))

(assert (= (and d!2305007 (not res!3012085)) b!7507715))

(assert (= (and b!7507715 res!3012084) b!7507716))

(assert (= (and b!7507716 res!3012083) b!7507717))

(assert (= (and d!2305007 (not res!3012086)) b!7507718))

(assert (=> b!7507718 m!8090724))

(assert (=> b!7507718 m!8090752))

(declare-fun m!8090920 () Bool)

(assert (=> b!7507718 m!8090920))

(assert (=> b!7507717 m!8090752))

(declare-fun m!8090922 () Bool)

(assert (=> b!7507717 m!8090922))

(declare-fun m!8090924 () Bool)

(assert (=> b!7507717 m!8090924))

(assert (=> b!7507717 m!8090922))

(assert (=> b!7507717 m!8090924))

(declare-fun m!8090926 () Bool)

(assert (=> b!7507717 m!8090926))

(assert (=> b!7507716 m!8090752))

(declare-fun m!8090928 () Bool)

(assert (=> b!7507716 m!8090928))

(declare-fun m!8090930 () Bool)

(assert (=> b!7507716 m!8090930))

(assert (=> b!7507605 d!2305007))

(declare-fun b!7507719 () Bool)

(declare-fun e!4476674 () List!72537)

(assert (=> b!7507719 (= e!4476674 lt!2636120)))

(declare-fun lt!2636200 () List!72537)

(declare-fun e!4476675 () Bool)

(declare-fun b!7507722 () Bool)

(assert (=> b!7507722 (= e!4476675 (or (not (= lt!2636120 Nil!72413)) (= lt!2636200 lt!2636109)))))

(declare-fun d!2305009 () Bool)

(assert (=> d!2305009 e!4476675))

(declare-fun res!3012087 () Bool)

(assert (=> d!2305009 (=> (not res!3012087) (not e!4476675))))

(assert (=> d!2305009 (= res!3012087 (= (content!15312 lt!2636200) ((_ map or) (content!15312 lt!2636109) (content!15312 lt!2636120))))))

(assert (=> d!2305009 (= lt!2636200 e!4476674)))

(declare-fun c!1386167 () Bool)

(assert (=> d!2305009 (= c!1386167 ((_ is Nil!72413) lt!2636109))))

(assert (=> d!2305009 (= (++!17346 lt!2636109 lt!2636120) lt!2636200)))

(declare-fun b!7507720 () Bool)

(assert (=> b!7507720 (= e!4476674 (Cons!72413 (h!78861 lt!2636109) (++!17346 (t!387106 lt!2636109) lt!2636120)))))

(declare-fun b!7507721 () Bool)

(declare-fun res!3012088 () Bool)

(assert (=> b!7507721 (=> (not res!3012088) (not e!4476675))))

(assert (=> b!7507721 (= res!3012088 (= (size!42288 lt!2636200) (+ (size!42288 lt!2636109) (size!42288 lt!2636120))))))

(assert (= (and d!2305009 c!1386167) b!7507719))

(assert (= (and d!2305009 (not c!1386167)) b!7507720))

(assert (= (and d!2305009 res!3012087) b!7507721))

(assert (= (and b!7507721 res!3012088) b!7507722))

(declare-fun m!8090932 () Bool)

(assert (=> d!2305009 m!8090932))

(declare-fun m!8090934 () Bool)

(assert (=> d!2305009 m!8090934))

(declare-fun m!8090936 () Bool)

(assert (=> d!2305009 m!8090936))

(declare-fun m!8090938 () Bool)

(assert (=> b!7507720 m!8090938))

(declare-fun m!8090940 () Bool)

(assert (=> b!7507721 m!8090940))

(assert (=> b!7507721 m!8090722))

(declare-fun m!8090942 () Bool)

(assert (=> b!7507721 m!8090942))

(assert (=> b!7507605 d!2305009))

(declare-fun b!7507723 () Bool)

(declare-fun e!4476676 () List!72537)

(assert (=> b!7507723 (= e!4476676 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))

(declare-fun lt!2636201 () List!72537)

(declare-fun b!7507726 () Bool)

(declare-fun e!4476677 () Bool)

(assert (=> b!7507726 (= e!4476677 (or (not (= (Cons!72413 (head!15434 lt!2636122) Nil!72413) Nil!72413)) (= lt!2636201 testedP!204)))))

(declare-fun d!2305011 () Bool)

(assert (=> d!2305011 e!4476677))

(declare-fun res!3012089 () Bool)

(assert (=> d!2305011 (=> (not res!3012089) (not e!4476677))))

(assert (=> d!2305011 (= res!3012089 (= (content!15312 lt!2636201) ((_ map or) (content!15312 testedP!204) (content!15312 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(assert (=> d!2305011 (= lt!2636201 e!4476676)))

(declare-fun c!1386168 () Bool)

(assert (=> d!2305011 (= c!1386168 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305011 (= (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413)) lt!2636201)))

(declare-fun b!7507724 () Bool)

(assert (=> b!7507724 (= e!4476676 (Cons!72413 (h!78861 testedP!204) (++!17346 (t!387106 testedP!204) (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))

(declare-fun b!7507725 () Bool)

(declare-fun res!3012090 () Bool)

(assert (=> b!7507725 (=> (not res!3012090) (not e!4476677))))

(assert (=> b!7507725 (= res!3012090 (= (size!42288 lt!2636201) (+ (size!42288 testedP!204) (size!42288 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(assert (= (and d!2305011 c!1386168) b!7507723))

(assert (= (and d!2305011 (not c!1386168)) b!7507724))

(assert (= (and d!2305011 res!3012089) b!7507725))

(assert (= (and b!7507725 res!3012090) b!7507726))

(declare-fun m!8090944 () Bool)

(assert (=> d!2305011 m!8090944))

(assert (=> d!2305011 m!8090910))

(declare-fun m!8090946 () Bool)

(assert (=> d!2305011 m!8090946))

(declare-fun m!8090948 () Bool)

(assert (=> b!7507724 m!8090948))

(declare-fun m!8090950 () Bool)

(assert (=> b!7507725 m!8090950))

(assert (=> b!7507725 m!8090712))

(declare-fun m!8090952 () Bool)

(assert (=> b!7507725 m!8090952))

(assert (=> b!7507605 d!2305011))

(declare-fun b!7507727 () Bool)

(declare-fun e!4476678 () List!72537)

(assert (=> b!7507727 (= e!4476678 testedSuffix!164)))

(declare-fun b!7507730 () Bool)

(declare-fun lt!2636202 () List!72537)

(declare-fun e!4476679 () Bool)

(assert (=> b!7507730 (= e!4476679 (or (not (= testedSuffix!164 Nil!72413)) (= lt!2636202 testedP!204)))))

(declare-fun d!2305013 () Bool)

(assert (=> d!2305013 e!4476679))

(declare-fun res!3012091 () Bool)

(assert (=> d!2305013 (=> (not res!3012091) (not e!4476679))))

(assert (=> d!2305013 (= res!3012091 (= (content!15312 lt!2636202) ((_ map or) (content!15312 testedP!204) (content!15312 testedSuffix!164))))))

(assert (=> d!2305013 (= lt!2636202 e!4476678)))

(declare-fun c!1386169 () Bool)

(assert (=> d!2305013 (= c!1386169 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305013 (= (++!17346 testedP!204 testedSuffix!164) lt!2636202)))

(declare-fun b!7507728 () Bool)

(assert (=> b!7507728 (= e!4476678 (Cons!72413 (h!78861 testedP!204) (++!17346 (t!387106 testedP!204) testedSuffix!164)))))

(declare-fun b!7507729 () Bool)

(declare-fun res!3012092 () Bool)

(assert (=> b!7507729 (=> (not res!3012092) (not e!4476679))))

(assert (=> b!7507729 (= res!3012092 (= (size!42288 lt!2636202) (+ (size!42288 testedP!204) (size!42288 testedSuffix!164))))))

(assert (= (and d!2305013 c!1386169) b!7507727))

(assert (= (and d!2305013 (not c!1386169)) b!7507728))

(assert (= (and d!2305013 res!3012091) b!7507729))

(assert (= (and b!7507729 res!3012092) b!7507730))

(declare-fun m!8090954 () Bool)

(assert (=> d!2305013 m!8090954))

(assert (=> d!2305013 m!8090910))

(declare-fun m!8090956 () Bool)

(assert (=> d!2305013 m!8090956))

(declare-fun m!8090958 () Bool)

(assert (=> b!7507728 m!8090958))

(declare-fun m!8090960 () Bool)

(assert (=> b!7507729 m!8090960))

(assert (=> b!7507729 m!8090712))

(declare-fun m!8090962 () Bool)

(assert (=> b!7507729 m!8090962))

(assert (=> start!726910 d!2305013))

(declare-fun d!2305015 () Bool)

(assert (=> d!2305015 (<= (size!42288 testedP!204) (size!42288 totalInput!779))))

(declare-fun lt!2636205 () Unit!166442)

(declare-fun choose!58172 (List!72537 List!72537) Unit!166442)

(assert (=> d!2305015 (= lt!2636205 (choose!58172 testedP!204 totalInput!779))))

(assert (=> d!2305015 (isPrefix!6011 testedP!204 totalInput!779)))

(assert (=> d!2305015 (= (lemmaIsPrefixThenSmallerEqSize!998 testedP!204 totalInput!779) lt!2636205)))

(declare-fun bs!1938483 () Bool)

(assert (= bs!1938483 d!2305015))

(assert (=> bs!1938483 m!8090712))

(assert (=> bs!1938483 m!8090724))

(declare-fun m!8090964 () Bool)

(assert (=> bs!1938483 m!8090964))

(assert (=> bs!1938483 m!8090736))

(assert (=> b!7507595 d!2305015))

(declare-fun d!2305017 () Bool)

(declare-fun lt!2636208 () Int)

(assert (=> d!2305017 (>= lt!2636208 0)))

(declare-fun e!4476682 () Int)

(assert (=> d!2305017 (= lt!2636208 e!4476682)))

(declare-fun c!1386172 () Bool)

(assert (=> d!2305017 (= c!1386172 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305017 (= (size!42288 testedP!204) lt!2636208)))

(declare-fun b!7507735 () Bool)

(assert (=> b!7507735 (= e!4476682 0)))

(declare-fun b!7507736 () Bool)

(assert (=> b!7507736 (= e!4476682 (+ 1 (size!42288 (t!387106 testedP!204))))))

(assert (= (and d!2305017 c!1386172) b!7507735))

(assert (= (and d!2305017 (not c!1386172)) b!7507736))

(declare-fun m!8090966 () Bool)

(assert (=> b!7507736 m!8090966))

(assert (=> b!7507594 d!2305017))

(declare-fun d!2305019 () Bool)

(declare-fun lt!2636209 () Int)

(assert (=> d!2305019 (>= lt!2636209 0)))

(declare-fun e!4476683 () Int)

(assert (=> d!2305019 (= lt!2636209 e!4476683)))

(declare-fun c!1386173 () Bool)

(assert (=> d!2305019 (= c!1386173 ((_ is Nil!72413) lt!2636109))))

(assert (=> d!2305019 (= (size!42288 lt!2636109) lt!2636209)))

(declare-fun b!7507737 () Bool)

(assert (=> b!7507737 (= e!4476683 0)))

(declare-fun b!7507738 () Bool)

(assert (=> b!7507738 (= e!4476683 (+ 1 (size!42288 (t!387106 lt!2636109))))))

(assert (= (and d!2305019 c!1386173) b!7507737))

(assert (= (and d!2305019 (not c!1386173)) b!7507738))

(declare-fun m!8090968 () Bool)

(assert (=> b!7507738 m!8090968))

(assert (=> b!7507599 d!2305019))

(declare-fun d!2305021 () Bool)

(declare-fun lt!2636210 () Int)

(assert (=> d!2305021 (>= lt!2636210 0)))

(declare-fun e!4476684 () Int)

(assert (=> d!2305021 (= lt!2636210 e!4476684)))

(declare-fun c!1386174 () Bool)

(assert (=> d!2305021 (= c!1386174 ((_ is Nil!72413) totalInput!779))))

(assert (=> d!2305021 (= (size!42288 totalInput!779) lt!2636210)))

(declare-fun b!7507739 () Bool)

(assert (=> b!7507739 (= e!4476684 0)))

(declare-fun b!7507740 () Bool)

(assert (=> b!7507740 (= e!4476684 (+ 1 (size!42288 (t!387106 totalInput!779))))))

(assert (= (and d!2305021 c!1386174) b!7507739))

(assert (= (and d!2305021 (not c!1386174)) b!7507740))

(declare-fun m!8090970 () Bool)

(assert (=> b!7507740 m!8090970))

(assert (=> b!7507598 d!2305021))

(declare-fun d!2305023 () Bool)

(declare-fun e!4476686 () Bool)

(assert (=> d!2305023 e!4476686))

(declare-fun res!3012096 () Bool)

(assert (=> d!2305023 (=> res!3012096 e!4476686)))

(declare-fun lt!2636211 () Bool)

(assert (=> d!2305023 (= res!3012096 (not lt!2636211))))

(declare-fun e!4476687 () Bool)

(assert (=> d!2305023 (= lt!2636211 e!4476687)))

(declare-fun res!3012095 () Bool)

(assert (=> d!2305023 (=> res!3012095 e!4476687)))

(assert (=> d!2305023 (= res!3012095 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305023 (= (isPrefix!6011 testedP!204 totalInput!779) lt!2636211)))

(declare-fun b!7507744 () Bool)

(assert (=> b!7507744 (= e!4476686 (>= (size!42288 totalInput!779) (size!42288 testedP!204)))))

(declare-fun b!7507741 () Bool)

(declare-fun e!4476685 () Bool)

(assert (=> b!7507741 (= e!4476687 e!4476685)))

(declare-fun res!3012094 () Bool)

(assert (=> b!7507741 (=> (not res!3012094) (not e!4476685))))

(assert (=> b!7507741 (= res!3012094 (not ((_ is Nil!72413) totalInput!779)))))

(declare-fun b!7507743 () Bool)

(assert (=> b!7507743 (= e!4476685 (isPrefix!6011 (tail!15001 testedP!204) (tail!15001 totalInput!779)))))

(declare-fun b!7507742 () Bool)

(declare-fun res!3012093 () Bool)

(assert (=> b!7507742 (=> (not res!3012093) (not e!4476685))))

(assert (=> b!7507742 (= res!3012093 (= (head!15434 testedP!204) (head!15434 totalInput!779)))))

(assert (= (and d!2305023 (not res!3012095)) b!7507741))

(assert (= (and b!7507741 res!3012094) b!7507742))

(assert (= (and b!7507742 res!3012093) b!7507743))

(assert (= (and d!2305023 (not res!3012096)) b!7507744))

(assert (=> b!7507744 m!8090724))

(assert (=> b!7507744 m!8090712))

(declare-fun m!8090972 () Bool)

(assert (=> b!7507743 m!8090972))

(assert (=> b!7507743 m!8090924))

(assert (=> b!7507743 m!8090972))

(assert (=> b!7507743 m!8090924))

(declare-fun m!8090974 () Bool)

(assert (=> b!7507743 m!8090974))

(declare-fun m!8090976 () Bool)

(assert (=> b!7507742 m!8090976))

(assert (=> b!7507742 m!8090930))

(assert (=> b!7507607 d!2305023))

(declare-fun d!2305025 () Bool)

(declare-fun e!4476689 () Bool)

(assert (=> d!2305025 e!4476689))

(declare-fun res!3012100 () Bool)

(assert (=> d!2305025 (=> res!3012100 e!4476689)))

(declare-fun lt!2636212 () Bool)

(assert (=> d!2305025 (= res!3012100 (not lt!2636212))))

(declare-fun e!4476690 () Bool)

(assert (=> d!2305025 (= lt!2636212 e!4476690)))

(declare-fun res!3012099 () Bool)

(assert (=> d!2305025 (=> res!3012099 e!4476690)))

(assert (=> d!2305025 (= res!3012099 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305025 (= (isPrefix!6011 testedP!204 lt!2636118) lt!2636212)))

(declare-fun b!7507748 () Bool)

(assert (=> b!7507748 (= e!4476689 (>= (size!42288 lt!2636118) (size!42288 testedP!204)))))

(declare-fun b!7507745 () Bool)

(declare-fun e!4476688 () Bool)

(assert (=> b!7507745 (= e!4476690 e!4476688)))

(declare-fun res!3012098 () Bool)

(assert (=> b!7507745 (=> (not res!3012098) (not e!4476688))))

(assert (=> b!7507745 (= res!3012098 (not ((_ is Nil!72413) lt!2636118)))))

(declare-fun b!7507747 () Bool)

(assert (=> b!7507747 (= e!4476688 (isPrefix!6011 (tail!15001 testedP!204) (tail!15001 lt!2636118)))))

(declare-fun b!7507746 () Bool)

(declare-fun res!3012097 () Bool)

(assert (=> b!7507746 (=> (not res!3012097) (not e!4476688))))

(assert (=> b!7507746 (= res!3012097 (= (head!15434 testedP!204) (head!15434 lt!2636118)))))

(assert (= (and d!2305025 (not res!3012099)) b!7507745))

(assert (= (and b!7507745 res!3012098) b!7507746))

(assert (= (and b!7507746 res!3012097) b!7507747))

(assert (= (and d!2305025 (not res!3012100)) b!7507748))

(declare-fun m!8090978 () Bool)

(assert (=> b!7507748 m!8090978))

(assert (=> b!7507748 m!8090712))

(assert (=> b!7507747 m!8090972))

(declare-fun m!8090980 () Bool)

(assert (=> b!7507747 m!8090980))

(assert (=> b!7507747 m!8090972))

(assert (=> b!7507747 m!8090980))

(declare-fun m!8090982 () Bool)

(assert (=> b!7507747 m!8090982))

(assert (=> b!7507746 m!8090976))

(declare-fun m!8090984 () Bool)

(assert (=> b!7507746 m!8090984))

(assert (=> b!7507607 d!2305025))

(declare-fun d!2305027 () Bool)

(assert (=> d!2305027 (isPrefix!6011 testedP!204 (++!17346 testedP!204 testedSuffix!164))))

(declare-fun lt!2636215 () Unit!166442)

(declare-fun choose!58173 (List!72537 List!72537) Unit!166442)

(assert (=> d!2305027 (= lt!2636215 (choose!58173 testedP!204 testedSuffix!164))))

(assert (=> d!2305027 (= (lemmaConcatTwoListThenFirstIsPrefix!3724 testedP!204 testedSuffix!164) lt!2636215)))

(declare-fun bs!1938484 () Bool)

(assert (= bs!1938484 d!2305027))

(assert (=> bs!1938484 m!8090734))

(assert (=> bs!1938484 m!8090734))

(declare-fun m!8090986 () Bool)

(assert (=> bs!1938484 m!8090986))

(declare-fun m!8090988 () Bool)

(assert (=> bs!1938484 m!8090988))

(assert (=> b!7507607 d!2305027))

(declare-fun d!2305029 () Bool)

(assert (=> d!2305029 (isPrefix!6011 totalInput!779 totalInput!779)))

(declare-fun lt!2636218 () Unit!166442)

(declare-fun choose!58174 (List!72537 List!72537) Unit!166442)

(assert (=> d!2305029 (= lt!2636218 (choose!58174 totalInput!779 totalInput!779))))

(assert (=> d!2305029 (= (lemmaIsPrefixRefl!3850 totalInput!779 totalInput!779) lt!2636218)))

(declare-fun bs!1938485 () Bool)

(assert (= bs!1938485 d!2305029))

(assert (=> bs!1938485 m!8090718))

(declare-fun m!8090990 () Bool)

(assert (=> bs!1938485 m!8090990))

(assert (=> b!7507606 d!2305029))

(declare-fun d!2305031 () Bool)

(declare-fun e!4476692 () Bool)

(assert (=> d!2305031 e!4476692))

(declare-fun res!3012104 () Bool)

(assert (=> d!2305031 (=> res!3012104 e!4476692)))

(declare-fun lt!2636219 () Bool)

(assert (=> d!2305031 (= res!3012104 (not lt!2636219))))

(declare-fun e!4476693 () Bool)

(assert (=> d!2305031 (= lt!2636219 e!4476693)))

(declare-fun res!3012103 () Bool)

(assert (=> d!2305031 (=> res!3012103 e!4476693)))

(assert (=> d!2305031 (= res!3012103 ((_ is Nil!72413) totalInput!779))))

(assert (=> d!2305031 (= (isPrefix!6011 totalInput!779 totalInput!779) lt!2636219)))

(declare-fun b!7507752 () Bool)

(assert (=> b!7507752 (= e!4476692 (>= (size!42288 totalInput!779) (size!42288 totalInput!779)))))

(declare-fun b!7507749 () Bool)

(declare-fun e!4476691 () Bool)

(assert (=> b!7507749 (= e!4476693 e!4476691)))

(declare-fun res!3012102 () Bool)

(assert (=> b!7507749 (=> (not res!3012102) (not e!4476691))))

(assert (=> b!7507749 (= res!3012102 (not ((_ is Nil!72413) totalInput!779)))))

(declare-fun b!7507751 () Bool)

(assert (=> b!7507751 (= e!4476691 (isPrefix!6011 (tail!15001 totalInput!779) (tail!15001 totalInput!779)))))

(declare-fun b!7507750 () Bool)

(declare-fun res!3012101 () Bool)

(assert (=> b!7507750 (=> (not res!3012101) (not e!4476691))))

(assert (=> b!7507750 (= res!3012101 (= (head!15434 totalInput!779) (head!15434 totalInput!779)))))

(assert (= (and d!2305031 (not res!3012103)) b!7507749))

(assert (= (and b!7507749 res!3012102) b!7507750))

(assert (= (and b!7507750 res!3012101) b!7507751))

(assert (= (and d!2305031 (not res!3012104)) b!7507752))

(assert (=> b!7507752 m!8090724))

(assert (=> b!7507752 m!8090724))

(assert (=> b!7507751 m!8090924))

(assert (=> b!7507751 m!8090924))

(assert (=> b!7507751 m!8090924))

(assert (=> b!7507751 m!8090924))

(declare-fun m!8090992 () Bool)

(assert (=> b!7507751 m!8090992))

(assert (=> b!7507750 m!8090930))

(assert (=> b!7507750 m!8090930))

(assert (=> b!7507606 d!2305031))

(declare-fun d!2305033 () Bool)

(assert (=> d!2305033 (= totalInput!779 testedP!204)))

(declare-fun lt!2636222 () Unit!166442)

(declare-fun choose!58175 (List!72537 List!72537 List!72537) Unit!166442)

(assert (=> d!2305033 (= lt!2636222 (choose!58175 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2305033 (isPrefix!6011 totalInput!779 totalInput!779)))

(assert (=> d!2305033 (= (lemmaIsPrefixSameLengthThenSameList!1500 totalInput!779 testedP!204 totalInput!779) lt!2636222)))

(declare-fun bs!1938486 () Bool)

(assert (= bs!1938486 d!2305033))

(declare-fun m!8090994 () Bool)

(assert (=> bs!1938486 m!8090994))

(assert (=> bs!1938486 m!8090718))

(assert (=> b!7507606 d!2305033))

(declare-fun bs!1938487 () Bool)

(declare-fun d!2305035 () Bool)

(assert (= bs!1938487 (and d!2305035 d!2304995)))

(declare-fun lambda!465593 () Int)

(assert (=> bs!1938487 (not (= lambda!465593 lambda!465580))))

(declare-fun bs!1938488 () Bool)

(declare-fun b!7507757 () Bool)

(assert (= bs!1938488 (and b!7507757 d!2304995)))

(declare-fun lambda!465594 () Int)

(assert (=> bs!1938488 (not (= lambda!465594 lambda!465580))))

(declare-fun bs!1938489 () Bool)

(assert (= bs!1938489 (and b!7507757 d!2305035)))

(assert (=> bs!1938489 (not (= lambda!465594 lambda!465593))))

(declare-fun bs!1938490 () Bool)

(declare-fun b!7507758 () Bool)

(assert (= bs!1938490 (and b!7507758 d!2304995)))

(declare-fun lambda!465595 () Int)

(assert (=> bs!1938490 (not (= lambda!465595 lambda!465580))))

(declare-fun bs!1938491 () Bool)

(assert (= bs!1938491 (and b!7507758 d!2305035)))

(assert (=> bs!1938491 (not (= lambda!465595 lambda!465593))))

(declare-fun bs!1938492 () Bool)

(assert (= bs!1938492 (and b!7507758 b!7507757)))

(assert (=> bs!1938492 (= lambda!465595 lambda!465594)))

(declare-fun bm!688814 () Bool)

(declare-datatypes ((List!72540 0))(
  ( (Nil!72416) (Cons!72416 (h!78864 Context!16938) (t!387109 List!72540)) )
))
(declare-fun call!688820 () List!72540)

(declare-fun toList!11836 ((InoxSet Context!16938)) List!72540)

(assert (=> bm!688814 (= call!688820 (toList!11836 z!3716))))

(declare-fun call!688819 () Bool)

(declare-fun lt!2636242 () List!72540)

(declare-fun lt!2636246 () List!72540)

(declare-fun c!1386185 () Bool)

(declare-fun bm!688815 () Bool)

(declare-fun exists!4872 (List!72540 Int) Bool)

(assert (=> bm!688815 (= call!688819 (exists!4872 (ite c!1386185 lt!2636246 lt!2636242) (ite c!1386185 lambda!465594 lambda!465595)))))

(declare-fun lt!2636241 () Bool)

(declare-datatypes ((Option!17232 0))(
  ( (None!17231) (Some!17231 (v!54360 List!72537)) )
))
(declare-fun isEmpty!41318 (Option!17232) Bool)

(declare-fun getLanguageWitness!1058 ((InoxSet Context!16938)) Option!17232)

(assert (=> d!2305035 (= lt!2636241 (isEmpty!41318 (getLanguageWitness!1058 z!3716)))))

(declare-fun forall!18302 ((InoxSet Context!16938) Int) Bool)

(assert (=> d!2305035 (= lt!2636241 (forall!18302 z!3716 lambda!465593))))

(declare-fun lt!2636245 () Unit!166442)

(declare-fun e!4476700 () Unit!166442)

(assert (=> d!2305035 (= lt!2636245 e!4476700)))

(assert (=> d!2305035 (= c!1386185 (not (forall!18302 z!3716 lambda!465593)))))

(assert (=> d!2305035 (= (lostCauseZipper!1405 z!3716) lt!2636241)))

(declare-fun Unit!166448 () Unit!166442)

(assert (=> b!7507758 (= e!4476700 Unit!166448)))

(assert (=> b!7507758 (= lt!2636242 call!688820)))

(declare-fun lt!2636244 () Unit!166442)

(declare-fun lemmaForallThenNotExists!474 (List!72540 Int) Unit!166442)

(assert (=> b!7507758 (= lt!2636244 (lemmaForallThenNotExists!474 lt!2636242 lambda!465593))))

(assert (=> b!7507758 (not call!688819)))

(declare-fun lt!2636240 () Unit!166442)

(assert (=> b!7507758 (= lt!2636240 lt!2636244)))

(declare-fun Unit!166449 () Unit!166442)

(assert (=> b!7507757 (= e!4476700 Unit!166449)))

(assert (=> b!7507757 (= lt!2636246 call!688820)))

(declare-fun lt!2636239 () Unit!166442)

(declare-fun lemmaNotForallThenExists!507 (List!72540 Int) Unit!166442)

(assert (=> b!7507757 (= lt!2636239 (lemmaNotForallThenExists!507 lt!2636246 lambda!465593))))

(assert (=> b!7507757 call!688819))

(declare-fun lt!2636243 () Unit!166442)

(assert (=> b!7507757 (= lt!2636243 lt!2636239)))

(assert (= (and d!2305035 c!1386185) b!7507757))

(assert (= (and d!2305035 (not c!1386185)) b!7507758))

(assert (= (or b!7507757 b!7507758) bm!688814))

(assert (= (or b!7507757 b!7507758) bm!688815))

(declare-fun m!8090996 () Bool)

(assert (=> b!7507757 m!8090996))

(declare-fun m!8090998 () Bool)

(assert (=> b!7507758 m!8090998))

(declare-fun m!8091000 () Bool)

(assert (=> bm!688814 m!8091000))

(declare-fun m!8091002 () Bool)

(assert (=> bm!688815 m!8091002))

(declare-fun m!8091004 () Bool)

(assert (=> d!2305035 m!8091004))

(assert (=> d!2305035 m!8091004))

(declare-fun m!8091006 () Bool)

(assert (=> d!2305035 m!8091006))

(declare-fun m!8091008 () Bool)

(assert (=> d!2305035 m!8091008))

(assert (=> d!2305035 m!8091008))

(assert (=> b!7507597 d!2305035))

(declare-fun d!2305037 () Bool)

(assert (=> d!2305037 (= testedSuffix!164 lt!2636122)))

(declare-fun lt!2636249 () Unit!166442)

(declare-fun choose!58176 (List!72537 List!72537 List!72537 List!72537 List!72537) Unit!166442)

(assert (=> d!2305037 (= lt!2636249 (choose!58176 testedP!204 testedSuffix!164 testedP!204 lt!2636122 totalInput!779))))

(assert (=> d!2305037 (isPrefix!6011 testedP!204 totalInput!779)))

(assert (=> d!2305037 (= (lemmaSamePrefixThenSameSuffix!2810 testedP!204 testedSuffix!164 testedP!204 lt!2636122 totalInput!779) lt!2636249)))

(declare-fun bs!1938493 () Bool)

(assert (= bs!1938493 d!2305037))

(declare-fun m!8091010 () Bool)

(assert (=> bs!1938493 m!8091010))

(assert (=> bs!1938493 m!8090736))

(assert (=> b!7507597 d!2305037))

(declare-fun d!2305039 () Bool)

(declare-fun lt!2636252 () List!72537)

(assert (=> d!2305039 (= (++!17346 testedP!204 lt!2636252) totalInput!779)))

(declare-fun e!4476703 () List!72537)

(assert (=> d!2305039 (= lt!2636252 e!4476703)))

(declare-fun c!1386188 () Bool)

(assert (=> d!2305039 (= c!1386188 ((_ is Cons!72413) testedP!204))))

(assert (=> d!2305039 (>= (size!42288 totalInput!779) (size!42288 testedP!204))))

(assert (=> d!2305039 (= (getSuffix!3511 totalInput!779 testedP!204) lt!2636252)))

(declare-fun b!7507763 () Bool)

(assert (=> b!7507763 (= e!4476703 (getSuffix!3511 (tail!15001 totalInput!779) (t!387106 testedP!204)))))

(declare-fun b!7507764 () Bool)

(assert (=> b!7507764 (= e!4476703 totalInput!779)))

(assert (= (and d!2305039 c!1386188) b!7507763))

(assert (= (and d!2305039 (not c!1386188)) b!7507764))

(declare-fun m!8091012 () Bool)

(assert (=> d!2305039 m!8091012))

(assert (=> d!2305039 m!8090724))

(assert (=> d!2305039 m!8090712))

(assert (=> b!7507763 m!8090924))

(assert (=> b!7507763 m!8090924))

(declare-fun m!8091014 () Bool)

(assert (=> b!7507763 m!8091014))

(assert (=> b!7507597 d!2305039))

(declare-fun condSetEmpty!57064 () Bool)

(assert (=> setNonEmpty!57058 (= condSetEmpty!57064 (= setRest!57058 ((as const (Array Context!16938 Bool)) false)))))

(declare-fun setRes!57064 () Bool)

(assert (=> setNonEmpty!57058 (= tp!2179162 setRes!57064)))

(declare-fun setIsEmpty!57064 () Bool)

(assert (=> setIsEmpty!57064 setRes!57064))

(declare-fun setNonEmpty!57064 () Bool)

(declare-fun setElem!57064 () Context!16938)

(declare-fun e!4476706 () Bool)

(declare-fun tp!2179188 () Bool)

(assert (=> setNonEmpty!57064 (= setRes!57064 (and tp!2179188 (inv!92522 setElem!57064) e!4476706))))

(declare-fun setRest!57064 () (InoxSet Context!16938))

(assert (=> setNonEmpty!57064 (= setRest!57058 ((_ map or) (store ((as const (Array Context!16938 Bool)) false) setElem!57064 true) setRest!57064))))

(declare-fun b!7507769 () Bool)

(declare-fun tp!2179187 () Bool)

(assert (=> b!7507769 (= e!4476706 tp!2179187)))

(assert (= (and setNonEmpty!57058 condSetEmpty!57064) setIsEmpty!57064))

(assert (= (and setNonEmpty!57058 (not condSetEmpty!57064)) setNonEmpty!57064))

(assert (= setNonEmpty!57064 b!7507769))

(declare-fun m!8091016 () Bool)

(assert (=> setNonEmpty!57064 m!8091016))

(declare-fun b!7507774 () Bool)

(declare-fun e!4476709 () Bool)

(declare-fun tp!2179191 () Bool)

(assert (=> b!7507774 (= e!4476709 (and tp_is_empty!49775 tp!2179191))))

(assert (=> b!7507601 (= tp!2179165 e!4476709)))

(assert (= (and b!7507601 ((_ is Cons!72413) (t!387106 totalInput!779))) b!7507774))

(declare-fun b!7507775 () Bool)

(declare-fun e!4476710 () Bool)

(declare-fun tp!2179192 () Bool)

(assert (=> b!7507775 (= e!4476710 (and tp_is_empty!49775 tp!2179192))))

(assert (=> b!7507600 (= tp!2179163 e!4476710)))

(assert (= (and b!7507600 ((_ is Cons!72413) (t!387106 testedP!204))) b!7507775))

(declare-fun b!7507780 () Bool)

(declare-fun e!4476713 () Bool)

(declare-fun tp!2179197 () Bool)

(declare-fun tp!2179198 () Bool)

(assert (=> b!7507780 (= e!4476713 (and tp!2179197 tp!2179198))))

(assert (=> b!7507604 (= tp!2179164 e!4476713)))

(assert (= (and b!7507604 ((_ is Cons!72414) (exprs!8969 setElem!57058))) b!7507780))

(declare-fun b!7507781 () Bool)

(declare-fun e!4476714 () Bool)

(declare-fun tp!2179199 () Bool)

(assert (=> b!7507781 (= e!4476714 (and tp_is_empty!49775 tp!2179199))))

(assert (=> b!7507602 (= tp!2179161 e!4476714)))

(assert (= (and b!7507602 ((_ is Cons!72413) (t!387106 testedSuffix!164))) b!7507781))

(check-sat (not b!7507781) (not d!2305013) (not d!2305035) (not b!7507747) (not b!7507775) (not d!2305037) (not b!7507746) (not b!7507740) (not b!7507758) (not setNonEmpty!57064) (not b!7507725) (not d!2305039) (not bm!688814) (not d!2305001) (not b!7507728) (not bm!688815) (not b!7507724) (not d!2304999) (not b!7507769) (not b!7507748) (not d!2305009) (not b!7507744) (not d!2305027) (not b!7507743) (not b!7507742) (not d!2305011) (not b!7507780) (not b!7507718) (not b!7507750) (not b!7507720) (not b!7507738) (not b!7507736) (not d!2304995) (not d!2305015) (not b!7507752) (not b!7507763) (not b!7507774) (not b!7507757) (not d!2305003) (not b!7507716) (not b!7507751) (not b!7507704) (not b!7507717) (not d!2305029) (not b!7507721) (not b!7507729) (not b!7507705) tp_is_empty!49775 (not d!2305033) (not d!2304941))
(check-sat)
(get-model)

(declare-fun d!2305063 () Bool)

(declare-fun lt!2636256 () Int)

(assert (=> d!2305063 (>= lt!2636256 0)))

(declare-fun e!4476724 () Int)

(assert (=> d!2305063 (= lt!2636256 e!4476724)))

(declare-fun c!1386189 () Bool)

(assert (=> d!2305063 (= c!1386189 ((_ is Nil!72413) (t!387106 lt!2636109)))))

(assert (=> d!2305063 (= (size!42288 (t!387106 lt!2636109)) lt!2636256)))

(declare-fun b!7507794 () Bool)

(assert (=> b!7507794 (= e!4476724 0)))

(declare-fun b!7507795 () Bool)

(assert (=> b!7507795 (= e!4476724 (+ 1 (size!42288 (t!387106 (t!387106 lt!2636109)))))))

(assert (= (and d!2305063 c!1386189) b!7507794))

(assert (= (and d!2305063 (not c!1386189)) b!7507795))

(declare-fun m!8091048 () Bool)

(assert (=> b!7507795 m!8091048))

(assert (=> b!7507738 d!2305063))

(declare-fun d!2305065 () Bool)

(assert (=> d!2305065 (= testedSuffix!164 lt!2636122)))

(assert (=> d!2305065 true))

(declare-fun _$63!1364 () Unit!166442)

(assert (=> d!2305065 (= (choose!58176 testedP!204 testedSuffix!164 testedP!204 lt!2636122 totalInput!779) _$63!1364)))

(assert (=> d!2305037 d!2305065))

(assert (=> d!2305037 d!2305023))

(declare-fun b!7507796 () Bool)

(declare-fun e!4476725 () List!72537)

(assert (=> b!7507796 (= e!4476725 lt!2636120)))

(declare-fun e!4476726 () Bool)

(declare-fun lt!2636257 () List!72537)

(declare-fun b!7507799 () Bool)

(assert (=> b!7507799 (= e!4476726 (or (not (= lt!2636120 Nil!72413)) (= lt!2636257 (t!387106 lt!2636109))))))

(declare-fun d!2305067 () Bool)

(assert (=> d!2305067 e!4476726))

(declare-fun res!3012117 () Bool)

(assert (=> d!2305067 (=> (not res!3012117) (not e!4476726))))

(assert (=> d!2305067 (= res!3012117 (= (content!15312 lt!2636257) ((_ map or) (content!15312 (t!387106 lt!2636109)) (content!15312 lt!2636120))))))

(assert (=> d!2305067 (= lt!2636257 e!4476725)))

(declare-fun c!1386190 () Bool)

(assert (=> d!2305067 (= c!1386190 ((_ is Nil!72413) (t!387106 lt!2636109)))))

(assert (=> d!2305067 (= (++!17346 (t!387106 lt!2636109) lt!2636120) lt!2636257)))

(declare-fun b!7507797 () Bool)

(assert (=> b!7507797 (= e!4476725 (Cons!72413 (h!78861 (t!387106 lt!2636109)) (++!17346 (t!387106 (t!387106 lt!2636109)) lt!2636120)))))

(declare-fun b!7507798 () Bool)

(declare-fun res!3012118 () Bool)

(assert (=> b!7507798 (=> (not res!3012118) (not e!4476726))))

(assert (=> b!7507798 (= res!3012118 (= (size!42288 lt!2636257) (+ (size!42288 (t!387106 lt!2636109)) (size!42288 lt!2636120))))))

(assert (= (and d!2305067 c!1386190) b!7507796))

(assert (= (and d!2305067 (not c!1386190)) b!7507797))

(assert (= (and d!2305067 res!3012117) b!7507798))

(assert (= (and b!7507798 res!3012118) b!7507799))

(declare-fun m!8091050 () Bool)

(assert (=> d!2305067 m!8091050))

(declare-fun m!8091052 () Bool)

(assert (=> d!2305067 m!8091052))

(assert (=> d!2305067 m!8090936))

(declare-fun m!8091054 () Bool)

(assert (=> b!7507797 m!8091054))

(declare-fun m!8091056 () Bool)

(assert (=> b!7507798 m!8091056))

(assert (=> b!7507798 m!8090968))

(assert (=> b!7507798 m!8090942))

(assert (=> b!7507720 d!2305067))

(declare-fun d!2305071 () Bool)

(declare-fun e!4476730 () Bool)

(assert (=> d!2305071 e!4476730))

(declare-fun res!3012124 () Bool)

(assert (=> d!2305071 (=> res!3012124 e!4476730)))

(declare-fun lt!2636259 () Bool)

(assert (=> d!2305071 (= res!3012124 (not lt!2636259))))

(declare-fun e!4476731 () Bool)

(assert (=> d!2305071 (= lt!2636259 e!4476731)))

(declare-fun res!3012123 () Bool)

(assert (=> d!2305071 (=> res!3012123 e!4476731)))

(assert (=> d!2305071 (= res!3012123 ((_ is Nil!72413) (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(assert (=> d!2305071 (= (isPrefix!6011 (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))) (tail!15001 totalInput!779)) lt!2636259)))

(declare-fun b!7507807 () Bool)

(assert (=> b!7507807 (= e!4476730 (>= (size!42288 (tail!15001 totalInput!779)) (size!42288 (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))))

(declare-fun b!7507804 () Bool)

(declare-fun e!4476729 () Bool)

(assert (=> b!7507804 (= e!4476731 e!4476729)))

(declare-fun res!3012122 () Bool)

(assert (=> b!7507804 (=> (not res!3012122) (not e!4476729))))

(assert (=> b!7507804 (= res!3012122 (not ((_ is Nil!72413) (tail!15001 totalInput!779))))))

(declare-fun b!7507806 () Bool)

(assert (=> b!7507806 (= e!4476729 (isPrefix!6011 (tail!15001 (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))) (tail!15001 (tail!15001 totalInput!779))))))

(declare-fun b!7507805 () Bool)

(declare-fun res!3012121 () Bool)

(assert (=> b!7507805 (=> (not res!3012121) (not e!4476729))))

(assert (=> b!7507805 (= res!3012121 (= (head!15434 (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))) (head!15434 (tail!15001 totalInput!779))))))

(assert (= (and d!2305071 (not res!3012123)) b!7507804))

(assert (= (and b!7507804 res!3012122) b!7507805))

(assert (= (and b!7507805 res!3012121) b!7507806))

(assert (= (and d!2305071 (not res!3012124)) b!7507807))

(assert (=> b!7507807 m!8090924))

(declare-fun m!8091068 () Bool)

(assert (=> b!7507807 m!8091068))

(assert (=> b!7507807 m!8090922))

(declare-fun m!8091070 () Bool)

(assert (=> b!7507807 m!8091070))

(assert (=> b!7507806 m!8090922))

(declare-fun m!8091072 () Bool)

(assert (=> b!7507806 m!8091072))

(assert (=> b!7507806 m!8090924))

(declare-fun m!8091074 () Bool)

(assert (=> b!7507806 m!8091074))

(assert (=> b!7507806 m!8091072))

(assert (=> b!7507806 m!8091074))

(declare-fun m!8091078 () Bool)

(assert (=> b!7507806 m!8091078))

(assert (=> b!7507805 m!8090922))

(declare-fun m!8091080 () Bool)

(assert (=> b!7507805 m!8091080))

(assert (=> b!7507805 m!8090924))

(declare-fun m!8091082 () Bool)

(assert (=> b!7507805 m!8091082))

(assert (=> b!7507717 d!2305071))

(declare-fun d!2305079 () Bool)

(assert (=> d!2305079 (= (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))) (t!387106 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))

(assert (=> b!7507717 d!2305079))

(declare-fun d!2305081 () Bool)

(assert (=> d!2305081 (= (tail!15001 totalInput!779) (t!387106 totalInput!779))))

(assert (=> b!7507717 d!2305081))

(declare-fun bs!1938496 () Bool)

(declare-fun d!2305083 () Bool)

(assert (= bs!1938496 (and d!2305083 d!2304995)))

(declare-fun lambda!465598 () Int)

(assert (=> bs!1938496 (not (= lambda!465598 lambda!465580))))

(declare-fun bs!1938497 () Bool)

(assert (= bs!1938497 (and d!2305083 d!2305035)))

(assert (=> bs!1938497 (not (= lambda!465598 lambda!465593))))

(declare-fun bs!1938498 () Bool)

(assert (= bs!1938498 (and d!2305083 b!7507757)))

(assert (=> bs!1938498 (not (= lambda!465598 lambda!465594))))

(declare-fun bs!1938499 () Bool)

(assert (= bs!1938499 (and d!2305083 b!7507758)))

(assert (=> bs!1938499 (not (= lambda!465598 lambda!465595))))

(assert (=> d!2305083 true))

(declare-fun order!29653 () Int)

(declare-fun dynLambda!29784 (Int Int) Int)

(assert (=> d!2305083 (< (dynLambda!29784 order!29653 (ite c!1386185 lambda!465594 lambda!465595)) (dynLambda!29784 order!29653 lambda!465598))))

(declare-fun forall!18303 (List!72540 Int) Bool)

(assert (=> d!2305083 (= (exists!4872 (ite c!1386185 lt!2636246 lt!2636242) (ite c!1386185 lambda!465594 lambda!465595)) (not (forall!18303 (ite c!1386185 lt!2636246 lt!2636242) lambda!465598)))))

(declare-fun bs!1938500 () Bool)

(assert (= bs!1938500 d!2305083))

(declare-fun m!8091096 () Bool)

(assert (=> bs!1938500 m!8091096))

(assert (=> bm!688815 d!2305083))

(assert (=> b!7507718 d!2305021))

(declare-fun d!2305093 () Bool)

(declare-fun lt!2636262 () Int)

(assert (=> d!2305093 (>= lt!2636262 0)))

(declare-fun e!4476740 () Int)

(assert (=> d!2305093 (= lt!2636262 e!4476740)))

(declare-fun c!1386199 () Bool)

(assert (=> d!2305093 (= c!1386199 ((_ is Nil!72413) (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))

(assert (=> d!2305093 (= (size!42288 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))) lt!2636262)))

(declare-fun b!7507826 () Bool)

(assert (=> b!7507826 (= e!4476740 0)))

(declare-fun b!7507827 () Bool)

(assert (=> b!7507827 (= e!4476740 (+ 1 (size!42288 (t!387106 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))))

(assert (= (and d!2305093 c!1386199) b!7507826))

(assert (= (and d!2305093 (not c!1386199)) b!7507827))

(declare-fun m!8091102 () Bool)

(assert (=> b!7507827 m!8091102))

(assert (=> b!7507718 d!2305093))

(declare-fun d!2305095 () Bool)

(assert (=> d!2305095 (= (head!15434 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))) (h!78861 (++!17346 testedP!204 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))

(assert (=> b!7507716 d!2305095))

(declare-fun d!2305097 () Bool)

(assert (=> d!2305097 (= (head!15434 totalInput!779) (h!78861 totalInput!779))))

(assert (=> b!7507716 d!2305097))

(declare-fun d!2305101 () Bool)

(declare-fun lt!2636263 () Int)

(assert (=> d!2305101 (>= lt!2636263 0)))

(declare-fun e!4476741 () Int)

(assert (=> d!2305101 (= lt!2636263 e!4476741)))

(declare-fun c!1386200 () Bool)

(assert (=> d!2305101 (= c!1386200 ((_ is Nil!72413) lt!2636196))))

(assert (=> d!2305101 (= (size!42288 lt!2636196) lt!2636263)))

(declare-fun b!7507828 () Bool)

(assert (=> b!7507828 (= e!4476741 0)))

(declare-fun b!7507829 () Bool)

(assert (=> b!7507829 (= e!4476741 (+ 1 (size!42288 (t!387106 lt!2636196))))))

(assert (= (and d!2305101 c!1386200) b!7507828))

(assert (= (and d!2305101 (not c!1386200)) b!7507829))

(declare-fun m!8091110 () Bool)

(assert (=> b!7507829 m!8091110))

(assert (=> b!7507705 d!2305101))

(assert (=> b!7507705 d!2305017))

(declare-fun d!2305103 () Bool)

(declare-fun lt!2636264 () Int)

(assert (=> d!2305103 (>= lt!2636264 0)))

(declare-fun e!4476742 () Int)

(assert (=> d!2305103 (= lt!2636264 e!4476742)))

(declare-fun c!1386201 () Bool)

(assert (=> d!2305103 (= c!1386201 ((_ is Nil!72413) (Cons!72413 lt!2636117 Nil!72413)))))

(assert (=> d!2305103 (= (size!42288 (Cons!72413 lt!2636117 Nil!72413)) lt!2636264)))

(declare-fun b!7507830 () Bool)

(assert (=> b!7507830 (= e!4476742 0)))

(declare-fun b!7507831 () Bool)

(assert (=> b!7507831 (= e!4476742 (+ 1 (size!42288 (t!387106 (Cons!72413 lt!2636117 Nil!72413)))))))

(assert (= (and d!2305103 c!1386201) b!7507830))

(assert (= (and d!2305103 (not c!1386201)) b!7507831))

(declare-fun m!8091112 () Bool)

(assert (=> b!7507831 m!8091112))

(assert (=> b!7507705 d!2305103))

(declare-fun d!2305105 () Bool)

(declare-fun e!4476747 () Bool)

(assert (=> d!2305105 e!4476747))

(declare-fun res!3012131 () Bool)

(assert (=> d!2305105 (=> (not res!3012131) (not e!4476747))))

(declare-fun lt!2636268 () List!72540)

(declare-fun noDuplicate!3146 (List!72540) Bool)

(assert (=> d!2305105 (= res!3012131 (noDuplicate!3146 lt!2636268))))

(declare-fun choose!58177 ((InoxSet Context!16938)) List!72540)

(assert (=> d!2305105 (= lt!2636268 (choose!58177 z!3716))))

(assert (=> d!2305105 (= (toList!11836 z!3716) lt!2636268)))

(declare-fun b!7507838 () Bool)

(declare-fun content!15313 (List!72540) (InoxSet Context!16938))

(assert (=> b!7507838 (= e!4476747 (= (content!15313 lt!2636268) z!3716))))

(assert (= (and d!2305105 res!3012131) b!7507838))

(declare-fun m!8091124 () Bool)

(assert (=> d!2305105 m!8091124))

(declare-fun m!8091126 () Bool)

(assert (=> d!2305105 m!8091126))

(declare-fun m!8091128 () Bool)

(assert (=> b!7507838 m!8091128))

(assert (=> bm!688814 d!2305105))

(declare-fun b!7507839 () Bool)

(declare-fun e!4476748 () List!72537)

(assert (=> b!7507839 (= e!4476748 lt!2636252)))

(declare-fun lt!2636269 () List!72537)

(declare-fun b!7507842 () Bool)

(declare-fun e!4476749 () Bool)

(assert (=> b!7507842 (= e!4476749 (or (not (= lt!2636252 Nil!72413)) (= lt!2636269 testedP!204)))))

(declare-fun d!2305111 () Bool)

(assert (=> d!2305111 e!4476749))

(declare-fun res!3012132 () Bool)

(assert (=> d!2305111 (=> (not res!3012132) (not e!4476749))))

(assert (=> d!2305111 (= res!3012132 (= (content!15312 lt!2636269) ((_ map or) (content!15312 testedP!204) (content!15312 lt!2636252))))))

(assert (=> d!2305111 (= lt!2636269 e!4476748)))

(declare-fun c!1386203 () Bool)

(assert (=> d!2305111 (= c!1386203 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305111 (= (++!17346 testedP!204 lt!2636252) lt!2636269)))

(declare-fun b!7507840 () Bool)

(assert (=> b!7507840 (= e!4476748 (Cons!72413 (h!78861 testedP!204) (++!17346 (t!387106 testedP!204) lt!2636252)))))

(declare-fun b!7507841 () Bool)

(declare-fun res!3012133 () Bool)

(assert (=> b!7507841 (=> (not res!3012133) (not e!4476749))))

(assert (=> b!7507841 (= res!3012133 (= (size!42288 lt!2636269) (+ (size!42288 testedP!204) (size!42288 lt!2636252))))))

(assert (= (and d!2305111 c!1386203) b!7507839))

(assert (= (and d!2305111 (not c!1386203)) b!7507840))

(assert (= (and d!2305111 res!3012132) b!7507841))

(assert (= (and b!7507841 res!3012133) b!7507842))

(declare-fun m!8091130 () Bool)

(assert (=> d!2305111 m!8091130))

(assert (=> d!2305111 m!8090910))

(declare-fun m!8091132 () Bool)

(assert (=> d!2305111 m!8091132))

(declare-fun m!8091134 () Bool)

(assert (=> b!7507840 m!8091134))

(declare-fun m!8091136 () Bool)

(assert (=> b!7507841 m!8091136))

(assert (=> b!7507841 m!8090712))

(declare-fun m!8091138 () Bool)

(assert (=> b!7507841 m!8091138))

(assert (=> d!2305039 d!2305111))

(assert (=> d!2305039 d!2305021))

(assert (=> d!2305039 d!2305017))

(declare-fun d!2305113 () Bool)

(declare-fun c!1386206 () Bool)

(assert (=> d!2305113 (= c!1386206 ((_ is Nil!72413) lt!2636201))))

(declare-fun e!4476752 () (InoxSet C!39760))

(assert (=> d!2305113 (= (content!15312 lt!2636201) e!4476752)))

(declare-fun b!7507849 () Bool)

(assert (=> b!7507849 (= e!4476752 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7507850 () Bool)

(assert (=> b!7507850 (= e!4476752 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 lt!2636201) true) (content!15312 (t!387106 lt!2636201))))))

(assert (= (and d!2305113 c!1386206) b!7507849))

(assert (= (and d!2305113 (not c!1386206)) b!7507850))

(declare-fun m!8091142 () Bool)

(assert (=> b!7507850 m!8091142))

(declare-fun m!8091144 () Bool)

(assert (=> b!7507850 m!8091144))

(assert (=> d!2305011 d!2305113))

(declare-fun d!2305117 () Bool)

(declare-fun c!1386207 () Bool)

(assert (=> d!2305117 (= c!1386207 ((_ is Nil!72413) testedP!204))))

(declare-fun e!4476753 () (InoxSet C!39760))

(assert (=> d!2305117 (= (content!15312 testedP!204) e!4476753)))

(declare-fun b!7507851 () Bool)

(assert (=> b!7507851 (= e!4476753 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7507852 () Bool)

(assert (=> b!7507852 (= e!4476753 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 testedP!204) true) (content!15312 (t!387106 testedP!204))))))

(assert (= (and d!2305117 c!1386207) b!7507851))

(assert (= (and d!2305117 (not c!1386207)) b!7507852))

(declare-fun m!8091146 () Bool)

(assert (=> b!7507852 m!8091146))

(declare-fun m!8091148 () Bool)

(assert (=> b!7507852 m!8091148))

(assert (=> d!2305011 d!2305117))

(declare-fun d!2305119 () Bool)

(declare-fun c!1386208 () Bool)

(assert (=> d!2305119 (= c!1386208 ((_ is Nil!72413) (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))

(declare-fun e!4476754 () (InoxSet C!39760))

(assert (=> d!2305119 (= (content!15312 (Cons!72413 (head!15434 lt!2636122) Nil!72413)) e!4476754)))

(declare-fun b!7507853 () Bool)

(assert (=> b!7507853 (= e!4476754 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7507854 () Bool)

(assert (=> b!7507854 (= e!4476754 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 (Cons!72413 (head!15434 lt!2636122) Nil!72413)) true) (content!15312 (t!387106 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(assert (= (and d!2305119 c!1386208) b!7507853))

(assert (= (and d!2305119 (not c!1386208)) b!7507854))

(declare-fun m!8091150 () Bool)

(assert (=> b!7507854 m!8091150))

(declare-fun m!8091152 () Bool)

(assert (=> b!7507854 m!8091152))

(assert (=> d!2305011 d!2305119))

(declare-fun b!7507855 () Bool)

(declare-fun e!4476755 () List!72537)

(assert (=> b!7507855 (= e!4476755 (Cons!72413 lt!2636117 Nil!72413))))

(declare-fun lt!2636270 () List!72537)

(declare-fun e!4476756 () Bool)

(declare-fun b!7507858 () Bool)

(assert (=> b!7507858 (= e!4476756 (or (not (= (Cons!72413 lt!2636117 Nil!72413) Nil!72413)) (= lt!2636270 (t!387106 testedP!204))))))

(declare-fun d!2305121 () Bool)

(assert (=> d!2305121 e!4476756))

(declare-fun res!3012134 () Bool)

(assert (=> d!2305121 (=> (not res!3012134) (not e!4476756))))

(assert (=> d!2305121 (= res!3012134 (= (content!15312 lt!2636270) ((_ map or) (content!15312 (t!387106 testedP!204)) (content!15312 (Cons!72413 lt!2636117 Nil!72413)))))))

(assert (=> d!2305121 (= lt!2636270 e!4476755)))

(declare-fun c!1386209 () Bool)

(assert (=> d!2305121 (= c!1386209 ((_ is Nil!72413) (t!387106 testedP!204)))))

(assert (=> d!2305121 (= (++!17346 (t!387106 testedP!204) (Cons!72413 lt!2636117 Nil!72413)) lt!2636270)))

(declare-fun b!7507856 () Bool)

(assert (=> b!7507856 (= e!4476755 (Cons!72413 (h!78861 (t!387106 testedP!204)) (++!17346 (t!387106 (t!387106 testedP!204)) (Cons!72413 lt!2636117 Nil!72413))))))

(declare-fun b!7507857 () Bool)

(declare-fun res!3012135 () Bool)

(assert (=> b!7507857 (=> (not res!3012135) (not e!4476756))))

(assert (=> b!7507857 (= res!3012135 (= (size!42288 lt!2636270) (+ (size!42288 (t!387106 testedP!204)) (size!42288 (Cons!72413 lt!2636117 Nil!72413)))))))

(assert (= (and d!2305121 c!1386209) b!7507855))

(assert (= (and d!2305121 (not c!1386209)) b!7507856))

(assert (= (and d!2305121 res!3012134) b!7507857))

(assert (= (and b!7507857 res!3012135) b!7507858))

(declare-fun m!8091154 () Bool)

(assert (=> d!2305121 m!8091154))

(assert (=> d!2305121 m!8091148))

(assert (=> d!2305121 m!8090912))

(declare-fun m!8091156 () Bool)

(assert (=> b!7507856 m!8091156))

(declare-fun m!8091158 () Bool)

(assert (=> b!7507857 m!8091158))

(assert (=> b!7507857 m!8090966))

(assert (=> b!7507857 m!8090918))

(assert (=> b!7507704 d!2305121))

(declare-fun bs!1938507 () Bool)

(declare-fun d!2305123 () Bool)

(assert (= bs!1938507 (and d!2305123 b!7507757)))

(declare-fun lambda!465604 () Int)

(assert (=> bs!1938507 (not (= lambda!465604 lambda!465594))))

(declare-fun bs!1938508 () Bool)

(assert (= bs!1938508 (and d!2305123 d!2305035)))

(assert (=> bs!1938508 (not (= lambda!465604 lambda!465593))))

(declare-fun bs!1938509 () Bool)

(assert (= bs!1938509 (and d!2305123 d!2305083)))

(assert (=> bs!1938509 (= (= lambda!465593 (ite c!1386185 lambda!465594 lambda!465595)) (= lambda!465604 lambda!465598))))

(declare-fun bs!1938510 () Bool)

(assert (= bs!1938510 (and d!2305123 d!2304995)))

(assert (=> bs!1938510 (not (= lambda!465604 lambda!465580))))

(declare-fun bs!1938511 () Bool)

(assert (= bs!1938511 (and d!2305123 b!7507758)))

(assert (=> bs!1938511 (not (= lambda!465604 lambda!465595))))

(assert (=> d!2305123 true))

(assert (=> d!2305123 (< (dynLambda!29784 order!29653 lambda!465593) (dynLambda!29784 order!29653 lambda!465604))))

(assert (=> d!2305123 (not (exists!4872 lt!2636242 lambda!465604))))

(declare-fun lt!2636276 () Unit!166442)

(declare-fun choose!58178 (List!72540 Int) Unit!166442)

(assert (=> d!2305123 (= lt!2636276 (choose!58178 lt!2636242 lambda!465593))))

(assert (=> d!2305123 (forall!18303 lt!2636242 lambda!465593)))

(assert (=> d!2305123 (= (lemmaForallThenNotExists!474 lt!2636242 lambda!465593) lt!2636276)))

(declare-fun bs!1938512 () Bool)

(assert (= bs!1938512 d!2305123))

(declare-fun m!8091186 () Bool)

(assert (=> bs!1938512 m!8091186))

(declare-fun m!8091188 () Bool)

(assert (=> bs!1938512 m!8091188))

(declare-fun m!8091190 () Bool)

(assert (=> bs!1938512 m!8091190))

(assert (=> b!7507758 d!2305123))

(declare-fun bs!1938519 () Bool)

(declare-fun d!2305137 () Bool)

(assert (= bs!1938519 (and d!2305137 d!2305123)))

(declare-fun lambda!465610 () Int)

(assert (=> bs!1938519 (= lambda!465610 lambda!465604)))

(declare-fun bs!1938520 () Bool)

(assert (= bs!1938520 (and d!2305137 b!7507757)))

(assert (=> bs!1938520 (not (= lambda!465610 lambda!465594))))

(declare-fun bs!1938521 () Bool)

(assert (= bs!1938521 (and d!2305137 d!2305035)))

(assert (=> bs!1938521 (not (= lambda!465610 lambda!465593))))

(declare-fun bs!1938522 () Bool)

(assert (= bs!1938522 (and d!2305137 d!2305083)))

(assert (=> bs!1938522 (= (= lambda!465593 (ite c!1386185 lambda!465594 lambda!465595)) (= lambda!465610 lambda!465598))))

(declare-fun bs!1938523 () Bool)

(assert (= bs!1938523 (and d!2305137 d!2304995)))

(assert (=> bs!1938523 (not (= lambda!465610 lambda!465580))))

(declare-fun bs!1938524 () Bool)

(assert (= bs!1938524 (and d!2305137 b!7507758)))

(assert (=> bs!1938524 (not (= lambda!465610 lambda!465595))))

(assert (=> d!2305137 true))

(assert (=> d!2305137 (< (dynLambda!29784 order!29653 lambda!465593) (dynLambda!29784 order!29653 lambda!465610))))

(assert (=> d!2305137 (exists!4872 lt!2636246 lambda!465610)))

(declare-fun lt!2636282 () Unit!166442)

(declare-fun choose!58179 (List!72540 Int) Unit!166442)

(assert (=> d!2305137 (= lt!2636282 (choose!58179 lt!2636246 lambda!465593))))

(assert (=> d!2305137 (not (forall!18303 lt!2636246 lambda!465593))))

(assert (=> d!2305137 (= (lemmaNotForallThenExists!507 lt!2636246 lambda!465593) lt!2636282)))

(declare-fun bs!1938525 () Bool)

(assert (= bs!1938525 d!2305137))

(declare-fun m!8091198 () Bool)

(assert (=> bs!1938525 m!8091198))

(declare-fun m!8091200 () Bool)

(assert (=> bs!1938525 m!8091200))

(declare-fun m!8091202 () Bool)

(assert (=> bs!1938525 m!8091202))

(assert (=> b!7507757 d!2305137))

(declare-fun d!2305141 () Bool)

(declare-fun lt!2636283 () List!72537)

(assert (=> d!2305141 (= (++!17346 (t!387106 testedP!204) lt!2636283) (tail!15001 totalInput!779))))

(declare-fun e!4476775 () List!72537)

(assert (=> d!2305141 (= lt!2636283 e!4476775)))

(declare-fun c!1386215 () Bool)

(assert (=> d!2305141 (= c!1386215 ((_ is Cons!72413) (t!387106 testedP!204)))))

(assert (=> d!2305141 (>= (size!42288 (tail!15001 totalInput!779)) (size!42288 (t!387106 testedP!204)))))

(assert (=> d!2305141 (= (getSuffix!3511 (tail!15001 totalInput!779) (t!387106 testedP!204)) lt!2636283)))

(declare-fun b!7507876 () Bool)

(assert (=> b!7507876 (= e!4476775 (getSuffix!3511 (tail!15001 (tail!15001 totalInput!779)) (t!387106 (t!387106 testedP!204))))))

(declare-fun b!7507877 () Bool)

(assert (=> b!7507877 (= e!4476775 (tail!15001 totalInput!779))))

(assert (= (and d!2305141 c!1386215) b!7507876))

(assert (= (and d!2305141 (not c!1386215)) b!7507877))

(declare-fun m!8091204 () Bool)

(assert (=> d!2305141 m!8091204))

(assert (=> d!2305141 m!8090924))

(assert (=> d!2305141 m!8091068))

(assert (=> d!2305141 m!8090966))

(assert (=> b!7507876 m!8090924))

(assert (=> b!7507876 m!8091074))

(assert (=> b!7507876 m!8091074))

(declare-fun m!8091206 () Bool)

(assert (=> b!7507876 m!8091206))

(assert (=> b!7507763 d!2305141))

(assert (=> b!7507763 d!2305081))

(declare-fun d!2305143 () Bool)

(declare-fun e!4476779 () Bool)

(assert (=> d!2305143 e!4476779))

(declare-fun res!3012148 () Bool)

(assert (=> d!2305143 (=> res!3012148 e!4476779)))

(declare-fun lt!2636284 () Bool)

(assert (=> d!2305143 (= res!3012148 (not lt!2636284))))

(declare-fun e!4476780 () Bool)

(assert (=> d!2305143 (= lt!2636284 e!4476780)))

(declare-fun res!3012147 () Bool)

(assert (=> d!2305143 (=> res!3012147 e!4476780)))

(assert (=> d!2305143 (= res!3012147 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305143 (= (isPrefix!6011 testedP!204 (++!17346 testedP!204 testedSuffix!164)) lt!2636284)))

(declare-fun b!7507883 () Bool)

(assert (=> b!7507883 (= e!4476779 (>= (size!42288 (++!17346 testedP!204 testedSuffix!164)) (size!42288 testedP!204)))))

(declare-fun b!7507880 () Bool)

(declare-fun e!4476778 () Bool)

(assert (=> b!7507880 (= e!4476780 e!4476778)))

(declare-fun res!3012146 () Bool)

(assert (=> b!7507880 (=> (not res!3012146) (not e!4476778))))

(assert (=> b!7507880 (= res!3012146 (not ((_ is Nil!72413) (++!17346 testedP!204 testedSuffix!164))))))

(declare-fun b!7507882 () Bool)

(assert (=> b!7507882 (= e!4476778 (isPrefix!6011 (tail!15001 testedP!204) (tail!15001 (++!17346 testedP!204 testedSuffix!164))))))

(declare-fun b!7507881 () Bool)

(declare-fun res!3012145 () Bool)

(assert (=> b!7507881 (=> (not res!3012145) (not e!4476778))))

(assert (=> b!7507881 (= res!3012145 (= (head!15434 testedP!204) (head!15434 (++!17346 testedP!204 testedSuffix!164))))))

(assert (= (and d!2305143 (not res!3012147)) b!7507880))

(assert (= (and b!7507880 res!3012146) b!7507881))

(assert (= (and b!7507881 res!3012145) b!7507882))

(assert (= (and d!2305143 (not res!3012148)) b!7507883))

(assert (=> b!7507883 m!8090734))

(declare-fun m!8091210 () Bool)

(assert (=> b!7507883 m!8091210))

(assert (=> b!7507883 m!8090712))

(assert (=> b!7507882 m!8090972))

(assert (=> b!7507882 m!8090734))

(declare-fun m!8091214 () Bool)

(assert (=> b!7507882 m!8091214))

(assert (=> b!7507882 m!8090972))

(assert (=> b!7507882 m!8091214))

(declare-fun m!8091216 () Bool)

(assert (=> b!7507882 m!8091216))

(assert (=> b!7507881 m!8090976))

(assert (=> b!7507881 m!8090734))

(declare-fun m!8091218 () Bool)

(assert (=> b!7507881 m!8091218))

(assert (=> d!2305027 d!2305143))

(assert (=> d!2305027 d!2305013))

(declare-fun d!2305147 () Bool)

(assert (=> d!2305147 (isPrefix!6011 testedP!204 (++!17346 testedP!204 testedSuffix!164))))

(assert (=> d!2305147 true))

(declare-fun _$46!2088 () Unit!166442)

(assert (=> d!2305147 (= (choose!58173 testedP!204 testedSuffix!164) _$46!2088)))

(declare-fun bs!1938526 () Bool)

(assert (= bs!1938526 d!2305147))

(assert (=> bs!1938526 m!8090734))

(assert (=> bs!1938526 m!8090734))

(assert (=> bs!1938526 m!8090986))

(assert (=> d!2305027 d!2305147))

(declare-fun d!2305149 () Bool)

(declare-fun c!1386216 () Bool)

(assert (=> d!2305149 (= c!1386216 ((_ is Nil!72413) lt!2636200))))

(declare-fun e!4476783 () (InoxSet C!39760))

(assert (=> d!2305149 (= (content!15312 lt!2636200) e!4476783)))

(declare-fun b!7507884 () Bool)

(assert (=> b!7507884 (= e!4476783 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7507885 () Bool)

(assert (=> b!7507885 (= e!4476783 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 lt!2636200) true) (content!15312 (t!387106 lt!2636200))))))

(assert (= (and d!2305149 c!1386216) b!7507884))

(assert (= (and d!2305149 (not c!1386216)) b!7507885))

(declare-fun m!8091220 () Bool)

(assert (=> b!7507885 m!8091220))

(declare-fun m!8091222 () Bool)

(assert (=> b!7507885 m!8091222))

(assert (=> d!2305009 d!2305149))

(declare-fun d!2305151 () Bool)

(declare-fun c!1386217 () Bool)

(assert (=> d!2305151 (= c!1386217 ((_ is Nil!72413) lt!2636109))))

(declare-fun e!4476784 () (InoxSet C!39760))

(assert (=> d!2305151 (= (content!15312 lt!2636109) e!4476784)))

(declare-fun b!7507886 () Bool)

(assert (=> b!7507886 (= e!4476784 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7507887 () Bool)

(assert (=> b!7507887 (= e!4476784 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 lt!2636109) true) (content!15312 (t!387106 lt!2636109))))))

(assert (= (and d!2305151 c!1386217) b!7507886))

(assert (= (and d!2305151 (not c!1386217)) b!7507887))

(declare-fun m!8091224 () Bool)

(assert (=> b!7507887 m!8091224))

(assert (=> b!7507887 m!8091052))

(assert (=> d!2305009 d!2305151))

(declare-fun d!2305153 () Bool)

(declare-fun c!1386218 () Bool)

(assert (=> d!2305153 (= c!1386218 ((_ is Nil!72413) lt!2636120))))

(declare-fun e!4476785 () (InoxSet C!39760))

(assert (=> d!2305153 (= (content!15312 lt!2636120) e!4476785)))

(declare-fun b!7507888 () Bool)

(assert (=> b!7507888 (= e!4476785 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7507889 () Bool)

(assert (=> b!7507889 (= e!4476785 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 lt!2636120) true) (content!15312 (t!387106 lt!2636120))))))

(assert (= (and d!2305153 c!1386218) b!7507888))

(assert (= (and d!2305153 (not c!1386218)) b!7507889))

(declare-fun m!8091226 () Bool)

(assert (=> b!7507889 m!8091226))

(declare-fun m!8091228 () Bool)

(assert (=> b!7507889 m!8091228))

(assert (=> d!2305009 d!2305153))

(declare-fun d!2305155 () Bool)

(assert (=> d!2305155 (= totalInput!779 testedP!204)))

(assert (=> d!2305155 true))

(declare-fun _$60!1288 () Unit!166442)

(assert (=> d!2305155 (= (choose!58175 totalInput!779 testedP!204 totalInput!779) _$60!1288)))

(assert (=> d!2305033 d!2305155))

(assert (=> d!2305033 d!2305031))

(declare-fun d!2305157 () Bool)

(declare-fun lt!2636288 () Int)

(assert (=> d!2305157 (>= lt!2636288 0)))

(declare-fun e!4476786 () Int)

(assert (=> d!2305157 (= lt!2636288 e!4476786)))

(declare-fun c!1386219 () Bool)

(assert (=> d!2305157 (= c!1386219 ((_ is Nil!72413) (t!387106 testedP!204)))))

(assert (=> d!2305157 (= (size!42288 (t!387106 testedP!204)) lt!2636288)))

(declare-fun b!7507890 () Bool)

(assert (=> b!7507890 (= e!4476786 0)))

(declare-fun b!7507891 () Bool)

(assert (=> b!7507891 (= e!4476786 (+ 1 (size!42288 (t!387106 (t!387106 testedP!204)))))))

(assert (= (and d!2305157 c!1386219) b!7507890))

(assert (= (and d!2305157 (not c!1386219)) b!7507891))

(declare-fun m!8091230 () Bool)

(assert (=> b!7507891 m!8091230))

(assert (=> b!7507736 d!2305157))

(declare-fun bs!1938532 () Bool)

(declare-fun d!2305159 () Bool)

(assert (= bs!1938532 (and d!2305159 d!2304941)))

(declare-fun lambda!465614 () Int)

(assert (=> bs!1938532 (= lambda!465614 lambda!465577)))

(assert (=> d!2305159 (= (inv!92522 setElem!57064) (forall!18301 (exprs!8969 setElem!57064) lambda!465614))))

(declare-fun bs!1938534 () Bool)

(assert (= bs!1938534 d!2305159))

(declare-fun m!8091232 () Bool)

(assert (=> bs!1938534 m!8091232))

(assert (=> setNonEmpty!57064 d!2305159))

(declare-fun d!2305161 () Bool)

(declare-fun lt!2636293 () Bool)

(assert (=> d!2305161 (= lt!2636293 (exists!4872 (toList!11836 z!3716) lambda!465580))))

(declare-fun choose!58182 ((InoxSet Context!16938) Int) Bool)

(assert (=> d!2305161 (= lt!2636293 (choose!58182 z!3716 lambda!465580))))

(assert (=> d!2305161 (= (exists!4871 z!3716 lambda!465580) lt!2636293)))

(declare-fun bs!1938536 () Bool)

(assert (= bs!1938536 d!2305161))

(assert (=> bs!1938536 m!8091000))

(assert (=> bs!1938536 m!8091000))

(declare-fun m!8091240 () Bool)

(assert (=> bs!1938536 m!8091240))

(declare-fun m!8091242 () Bool)

(assert (=> bs!1938536 m!8091242))

(assert (=> d!2304995 d!2305161))

(declare-fun b!7507892 () Bool)

(declare-fun e!4476787 () List!72537)

(assert (=> b!7507892 (= e!4476787 lt!2636120)))

(declare-fun e!4476788 () Bool)

(declare-fun lt!2636295 () List!72537)

(declare-fun b!7507895 () Bool)

(assert (=> b!7507895 (= e!4476788 (or (not (= lt!2636120 Nil!72413)) (= lt!2636295 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413)))))))

(declare-fun d!2305165 () Bool)

(assert (=> d!2305165 e!4476788))

(declare-fun res!3012149 () Bool)

(assert (=> d!2305165 (=> (not res!3012149) (not e!4476788))))

(assert (=> d!2305165 (= res!3012149 (= (content!15312 lt!2636295) ((_ map or) (content!15312 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413))) (content!15312 lt!2636120))))))

(assert (=> d!2305165 (= lt!2636295 e!4476787)))

(declare-fun c!1386220 () Bool)

(assert (=> d!2305165 (= c!1386220 ((_ is Nil!72413) (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413))))))

(assert (=> d!2305165 (= (++!17346 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413)) lt!2636120) lt!2636295)))

(declare-fun b!7507893 () Bool)

(assert (=> b!7507893 (= e!4476787 (Cons!72413 (h!78861 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413))) (++!17346 (t!387106 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413))) lt!2636120)))))

(declare-fun b!7507894 () Bool)

(declare-fun res!3012150 () Bool)

(assert (=> b!7507894 (=> (not res!3012150) (not e!4476788))))

(assert (=> b!7507894 (= res!3012150 (= (size!42288 lt!2636295) (+ (size!42288 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413))) (size!42288 lt!2636120))))))

(assert (= (and d!2305165 c!1386220) b!7507892))

(assert (= (and d!2305165 (not c!1386220)) b!7507893))

(assert (= (and d!2305165 res!3012149) b!7507894))

(assert (= (and b!7507894 res!3012150) b!7507895))

(declare-fun m!8091248 () Bool)

(assert (=> d!2305165 m!8091248))

(assert (=> d!2305165 m!8090760))

(declare-fun m!8091250 () Bool)

(assert (=> d!2305165 m!8091250))

(assert (=> d!2305165 m!8090936))

(declare-fun m!8091252 () Bool)

(assert (=> b!7507893 m!8091252))

(declare-fun m!8091254 () Bool)

(assert (=> b!7507894 m!8091254))

(assert (=> b!7507894 m!8090760))

(declare-fun m!8091256 () Bool)

(assert (=> b!7507894 m!8091256))

(assert (=> b!7507894 m!8090942))

(assert (=> d!2304999 d!2305165))

(assert (=> d!2304999 d!2305003))

(declare-fun d!2305169 () Bool)

(assert (=> d!2305169 (= (++!17346 (++!17346 testedP!204 (Cons!72413 lt!2636117 Nil!72413)) lt!2636120) totalInput!779)))

(assert (=> d!2305169 true))

(declare-fun _$68!1399 () Unit!166442)

(assert (=> d!2305169 (= (choose!58170 testedP!204 lt!2636117 lt!2636120 totalInput!779) _$68!1399)))

(declare-fun bs!1938538 () Bool)

(assert (= bs!1938538 d!2305169))

(assert (=> bs!1938538 m!8090760))

(assert (=> bs!1938538 m!8090760))

(assert (=> bs!1938538 m!8090894))

(assert (=> d!2304999 d!2305169))

(declare-fun b!7507906 () Bool)

(declare-fun e!4476794 () List!72537)

(assert (=> b!7507906 (= e!4476794 (Cons!72413 lt!2636117 lt!2636120))))

(declare-fun e!4476795 () Bool)

(declare-fun b!7507909 () Bool)

(declare-fun lt!2636298 () List!72537)

(assert (=> b!7507909 (= e!4476795 (or (not (= (Cons!72413 lt!2636117 lt!2636120) Nil!72413)) (= lt!2636298 testedP!204)))))

(declare-fun d!2305179 () Bool)

(assert (=> d!2305179 e!4476795))

(declare-fun res!3012153 () Bool)

(assert (=> d!2305179 (=> (not res!3012153) (not e!4476795))))

(assert (=> d!2305179 (= res!3012153 (= (content!15312 lt!2636298) ((_ map or) (content!15312 testedP!204) (content!15312 (Cons!72413 lt!2636117 lt!2636120)))))))

(assert (=> d!2305179 (= lt!2636298 e!4476794)))

(declare-fun c!1386225 () Bool)

(assert (=> d!2305179 (= c!1386225 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305179 (= (++!17346 testedP!204 (Cons!72413 lt!2636117 lt!2636120)) lt!2636298)))

(declare-fun b!7507907 () Bool)

(assert (=> b!7507907 (= e!4476794 (Cons!72413 (h!78861 testedP!204) (++!17346 (t!387106 testedP!204) (Cons!72413 lt!2636117 lt!2636120))))))

(declare-fun b!7507908 () Bool)

(declare-fun res!3012154 () Bool)

(assert (=> b!7507908 (=> (not res!3012154) (not e!4476795))))

(assert (=> b!7507908 (= res!3012154 (= (size!42288 lt!2636298) (+ (size!42288 testedP!204) (size!42288 (Cons!72413 lt!2636117 lt!2636120)))))))

(assert (= (and d!2305179 c!1386225) b!7507906))

(assert (= (and d!2305179 (not c!1386225)) b!7507907))

(assert (= (and d!2305179 res!3012153) b!7507908))

(assert (= (and b!7507908 res!3012154) b!7507909))

(declare-fun m!8091278 () Bool)

(assert (=> d!2305179 m!8091278))

(assert (=> d!2305179 m!8090910))

(declare-fun m!8091280 () Bool)

(assert (=> d!2305179 m!8091280))

(declare-fun m!8091282 () Bool)

(assert (=> b!7507907 m!8091282))

(declare-fun m!8091284 () Bool)

(assert (=> b!7507908 m!8091284))

(assert (=> b!7507908 m!8090712))

(declare-fun m!8091286 () Bool)

(assert (=> b!7507908 m!8091286))

(assert (=> d!2304999 d!2305179))

(declare-fun d!2305183 () Bool)

(declare-fun lt!2636300 () Int)

(assert (=> d!2305183 (>= lt!2636300 0)))

(declare-fun e!4476799 () Int)

(assert (=> d!2305183 (= lt!2636300 e!4476799)))

(declare-fun c!1386226 () Bool)

(assert (=> d!2305183 (= c!1386226 ((_ is Nil!72413) (t!387106 totalInput!779)))))

(assert (=> d!2305183 (= (size!42288 (t!387106 totalInput!779)) lt!2636300)))

(declare-fun b!7507914 () Bool)

(assert (=> b!7507914 (= e!4476799 0)))

(declare-fun b!7507915 () Bool)

(assert (=> b!7507915 (= e!4476799 (+ 1 (size!42288 (t!387106 (t!387106 totalInput!779)))))))

(assert (= (and d!2305183 c!1386226) b!7507914))

(assert (= (and d!2305183 (not c!1386226)) b!7507915))

(declare-fun m!8091294 () Bool)

(assert (=> b!7507915 m!8091294))

(assert (=> b!7507740 d!2305183))

(declare-fun b!7507916 () Bool)

(declare-fun e!4476800 () List!72537)

(assert (=> b!7507916 (= e!4476800 testedSuffix!164)))

(declare-fun b!7507919 () Bool)

(declare-fun lt!2636301 () List!72537)

(declare-fun e!4476801 () Bool)

(assert (=> b!7507919 (= e!4476801 (or (not (= testedSuffix!164 Nil!72413)) (= lt!2636301 (t!387106 testedP!204))))))

(declare-fun d!2305185 () Bool)

(assert (=> d!2305185 e!4476801))

(declare-fun res!3012159 () Bool)

(assert (=> d!2305185 (=> (not res!3012159) (not e!4476801))))

(assert (=> d!2305185 (= res!3012159 (= (content!15312 lt!2636301) ((_ map or) (content!15312 (t!387106 testedP!204)) (content!15312 testedSuffix!164))))))

(assert (=> d!2305185 (= lt!2636301 e!4476800)))

(declare-fun c!1386227 () Bool)

(assert (=> d!2305185 (= c!1386227 ((_ is Nil!72413) (t!387106 testedP!204)))))

(assert (=> d!2305185 (= (++!17346 (t!387106 testedP!204) testedSuffix!164) lt!2636301)))

(declare-fun b!7507917 () Bool)

(assert (=> b!7507917 (= e!4476800 (Cons!72413 (h!78861 (t!387106 testedP!204)) (++!17346 (t!387106 (t!387106 testedP!204)) testedSuffix!164)))))

(declare-fun b!7507918 () Bool)

(declare-fun res!3012160 () Bool)

(assert (=> b!7507918 (=> (not res!3012160) (not e!4476801))))

(assert (=> b!7507918 (= res!3012160 (= (size!42288 lt!2636301) (+ (size!42288 (t!387106 testedP!204)) (size!42288 testedSuffix!164))))))

(assert (= (and d!2305185 c!1386227) b!7507916))

(assert (= (and d!2305185 (not c!1386227)) b!7507917))

(assert (= (and d!2305185 res!3012159) b!7507918))

(assert (= (and b!7507918 res!3012160) b!7507919))

(declare-fun m!8091298 () Bool)

(assert (=> d!2305185 m!8091298))

(assert (=> d!2305185 m!8091148))

(assert (=> d!2305185 m!8090956))

(declare-fun m!8091300 () Bool)

(assert (=> b!7507917 m!8091300))

(declare-fun m!8091302 () Bool)

(assert (=> b!7507918 m!8091302))

(assert (=> b!7507918 m!8090966))

(assert (=> b!7507918 m!8090962))

(assert (=> b!7507728 d!2305185))

(declare-fun d!2305189 () Bool)

(declare-fun lt!2636302 () Int)

(assert (=> d!2305189 (>= lt!2636302 0)))

(declare-fun e!4476802 () Int)

(assert (=> d!2305189 (= lt!2636302 e!4476802)))

(declare-fun c!1386228 () Bool)

(assert (=> d!2305189 (= c!1386228 ((_ is Nil!72413) lt!2636202))))

(assert (=> d!2305189 (= (size!42288 lt!2636202) lt!2636302)))

(declare-fun b!7507920 () Bool)

(assert (=> b!7507920 (= e!4476802 0)))

(declare-fun b!7507921 () Bool)

(assert (=> b!7507921 (= e!4476802 (+ 1 (size!42288 (t!387106 lt!2636202))))))

(assert (= (and d!2305189 c!1386228) b!7507920))

(assert (= (and d!2305189 (not c!1386228)) b!7507921))

(declare-fun m!8091304 () Bool)

(assert (=> b!7507921 m!8091304))

(assert (=> b!7507729 d!2305189))

(assert (=> b!7507729 d!2305017))

(declare-fun d!2305191 () Bool)

(declare-fun lt!2636303 () Int)

(assert (=> d!2305191 (>= lt!2636303 0)))

(declare-fun e!4476803 () Int)

(assert (=> d!2305191 (= lt!2636303 e!4476803)))

(declare-fun c!1386229 () Bool)

(assert (=> d!2305191 (= c!1386229 ((_ is Nil!72413) testedSuffix!164))))

(assert (=> d!2305191 (= (size!42288 testedSuffix!164) lt!2636303)))

(declare-fun b!7507922 () Bool)

(assert (=> b!7507922 (= e!4476803 0)))

(declare-fun b!7507923 () Bool)

(assert (=> b!7507923 (= e!4476803 (+ 1 (size!42288 (t!387106 testedSuffix!164))))))

(assert (= (and d!2305191 c!1386229) b!7507922))

(assert (= (and d!2305191 (not c!1386229)) b!7507923))

(declare-fun m!8091306 () Bool)

(assert (=> b!7507923 m!8091306))

(assert (=> b!7507729 d!2305191))

(assert (=> d!2305001 d!2305023))

(declare-fun d!2305193 () Bool)

(declare-fun e!4476805 () Bool)

(assert (=> d!2305193 e!4476805))

(declare-fun res!3012164 () Bool)

(assert (=> d!2305193 (=> res!3012164 e!4476805)))

(declare-fun lt!2636304 () Bool)

(assert (=> d!2305193 (= res!3012164 (not lt!2636304))))

(declare-fun e!4476806 () Bool)

(assert (=> d!2305193 (= lt!2636304 e!4476806)))

(declare-fun res!3012163 () Bool)

(assert (=> d!2305193 (=> res!3012163 e!4476806)))

(assert (=> d!2305193 (= res!3012163 ((_ is Nil!72413) (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413))))))

(assert (=> d!2305193 (= (isPrefix!6011 (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413)) totalInput!779) lt!2636304)))

(declare-fun b!7507927 () Bool)

(assert (=> b!7507927 (= e!4476805 (>= (size!42288 totalInput!779) (size!42288 (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413)))))))

(declare-fun b!7507924 () Bool)

(declare-fun e!4476804 () Bool)

(assert (=> b!7507924 (= e!4476806 e!4476804)))

(declare-fun res!3012162 () Bool)

(assert (=> b!7507924 (=> (not res!3012162) (not e!4476804))))

(assert (=> b!7507924 (= res!3012162 (not ((_ is Nil!72413) totalInput!779)))))

(declare-fun b!7507926 () Bool)

(assert (=> b!7507926 (= e!4476804 (isPrefix!6011 (tail!15001 (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413))) (tail!15001 totalInput!779)))))

(declare-fun b!7507925 () Bool)

(declare-fun res!3012161 () Bool)

(assert (=> b!7507925 (=> (not res!3012161) (not e!4476804))))

(assert (=> b!7507925 (= res!3012161 (= (head!15434 (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413))) (head!15434 totalInput!779)))))

(assert (= (and d!2305193 (not res!3012163)) b!7507924))

(assert (= (and b!7507924 res!3012162) b!7507925))

(assert (= (and b!7507925 res!3012161) b!7507926))

(assert (= (and d!2305193 (not res!3012164)) b!7507927))

(assert (=> b!7507927 m!8090724))

(assert (=> b!7507927 m!8090902))

(declare-fun m!8091308 () Bool)

(assert (=> b!7507927 m!8091308))

(assert (=> b!7507926 m!8090902))

(declare-fun m!8091310 () Bool)

(assert (=> b!7507926 m!8091310))

(assert (=> b!7507926 m!8090924))

(assert (=> b!7507926 m!8091310))

(assert (=> b!7507926 m!8090924))

(declare-fun m!8091312 () Bool)

(assert (=> b!7507926 m!8091312))

(assert (=> b!7507925 m!8090902))

(declare-fun m!8091314 () Bool)

(assert (=> b!7507925 m!8091314))

(assert (=> b!7507925 m!8090930))

(assert (=> d!2305001 d!2305193))

(assert (=> d!2305001 d!2305039))

(declare-fun d!2305197 () Bool)

(assert (=> d!2305197 (isPrefix!6011 (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413)) totalInput!779)))

(assert (=> d!2305197 true))

(declare-fun _$65!1880 () Unit!166442)

(assert (=> d!2305197 (= (choose!58171 testedP!204 totalInput!779) _$65!1880)))

(declare-fun bs!1938543 () Bool)

(assert (= bs!1938543 d!2305197))

(assert (=> bs!1938543 m!8090732))

(assert (=> bs!1938543 m!8090732))

(assert (=> bs!1938543 m!8090900))

(assert (=> bs!1938543 m!8090902))

(assert (=> bs!1938543 m!8090902))

(assert (=> bs!1938543 m!8090906))

(assert (=> d!2305001 d!2305197))

(declare-fun b!7507936 () Bool)

(declare-fun e!4476812 () List!72537)

(assert (=> b!7507936 (= e!4476812 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413))))

(declare-fun e!4476813 () Bool)

(declare-fun b!7507939 () Bool)

(declare-fun lt!2636308 () List!72537)

(assert (=> b!7507939 (= e!4476813 (or (not (= (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413) Nil!72413)) (= lt!2636308 testedP!204)))))

(declare-fun d!2305211 () Bool)

(assert (=> d!2305211 e!4476813))

(declare-fun res!3012169 () Bool)

(assert (=> d!2305211 (=> (not res!3012169) (not e!4476813))))

(assert (=> d!2305211 (= res!3012169 (= (content!15312 lt!2636308) ((_ map or) (content!15312 testedP!204) (content!15312 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413)))))))

(assert (=> d!2305211 (= lt!2636308 e!4476812)))

(declare-fun c!1386232 () Bool)

(assert (=> d!2305211 (= c!1386232 ((_ is Nil!72413) testedP!204))))

(assert (=> d!2305211 (= (++!17346 testedP!204 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413)) lt!2636308)))

(declare-fun b!7507937 () Bool)

(assert (=> b!7507937 (= e!4476812 (Cons!72413 (h!78861 testedP!204) (++!17346 (t!387106 testedP!204) (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413))))))

(declare-fun b!7507938 () Bool)

(declare-fun res!3012170 () Bool)

(assert (=> b!7507938 (=> (not res!3012170) (not e!4476813))))

(assert (=> b!7507938 (= res!3012170 (= (size!42288 lt!2636308) (+ (size!42288 testedP!204) (size!42288 (Cons!72413 (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) Nil!72413)))))))

(assert (= (and d!2305211 c!1386232) b!7507936))

(assert (= (and d!2305211 (not c!1386232)) b!7507937))

(assert (= (and d!2305211 res!3012169) b!7507938))

(assert (= (and b!7507938 res!3012170) b!7507939))

(declare-fun m!8091334 () Bool)

(assert (=> d!2305211 m!8091334))

(assert (=> d!2305211 m!8090910))

(declare-fun m!8091336 () Bool)

(assert (=> d!2305211 m!8091336))

(declare-fun m!8091338 () Bool)

(assert (=> b!7507937 m!8091338))

(declare-fun m!8091340 () Bool)

(assert (=> b!7507938 m!8091340))

(assert (=> b!7507938 m!8090712))

(declare-fun m!8091342 () Bool)

(assert (=> b!7507938 m!8091342))

(assert (=> d!2305001 d!2305211))

(declare-fun d!2305217 () Bool)

(assert (=> d!2305217 (= (head!15434 (getSuffix!3511 totalInput!779 testedP!204)) (h!78861 (getSuffix!3511 totalInput!779 testedP!204)))))

(assert (=> d!2305001 d!2305217))

(declare-fun d!2305221 () Bool)

(declare-fun e!4476818 () Bool)

(assert (=> d!2305221 e!4476818))

(declare-fun res!3012174 () Bool)

(assert (=> d!2305221 (=> res!3012174 e!4476818)))

(declare-fun lt!2636312 () Bool)

(assert (=> d!2305221 (= res!3012174 (not lt!2636312))))

(declare-fun e!4476819 () Bool)

(assert (=> d!2305221 (= lt!2636312 e!4476819)))

(declare-fun res!3012173 () Bool)

(assert (=> d!2305221 (=> res!3012173 e!4476819)))

(assert (=> d!2305221 (= res!3012173 ((_ is Nil!72413) (tail!15001 totalInput!779)))))

(assert (=> d!2305221 (= (isPrefix!6011 (tail!15001 totalInput!779) (tail!15001 totalInput!779)) lt!2636312)))

(declare-fun b!7507949 () Bool)

(assert (=> b!7507949 (= e!4476818 (>= (size!42288 (tail!15001 totalInput!779)) (size!42288 (tail!15001 totalInput!779))))))

(declare-fun b!7507946 () Bool)

(declare-fun e!4476817 () Bool)

(assert (=> b!7507946 (= e!4476819 e!4476817)))

(declare-fun res!3012172 () Bool)

(assert (=> b!7507946 (=> (not res!3012172) (not e!4476817))))

(assert (=> b!7507946 (= res!3012172 (not ((_ is Nil!72413) (tail!15001 totalInput!779))))))

(declare-fun b!7507948 () Bool)

(assert (=> b!7507948 (= e!4476817 (isPrefix!6011 (tail!15001 (tail!15001 totalInput!779)) (tail!15001 (tail!15001 totalInput!779))))))

(declare-fun b!7507947 () Bool)

(declare-fun res!3012171 () Bool)

(assert (=> b!7507947 (=> (not res!3012171) (not e!4476817))))

(assert (=> b!7507947 (= res!3012171 (= (head!15434 (tail!15001 totalInput!779)) (head!15434 (tail!15001 totalInput!779))))))

(assert (= (and d!2305221 (not res!3012173)) b!7507946))

(assert (= (and b!7507946 res!3012172) b!7507947))

(assert (= (and b!7507947 res!3012171) b!7507948))

(assert (= (and d!2305221 (not res!3012174)) b!7507949))

(assert (=> b!7507949 m!8090924))

(assert (=> b!7507949 m!8091068))

(assert (=> b!7507949 m!8090924))

(assert (=> b!7507949 m!8091068))

(assert (=> b!7507948 m!8090924))

(assert (=> b!7507948 m!8091074))

(assert (=> b!7507948 m!8090924))

(assert (=> b!7507948 m!8091074))

(assert (=> b!7507948 m!8091074))

(assert (=> b!7507948 m!8091074))

(declare-fun m!8091348 () Bool)

(assert (=> b!7507948 m!8091348))

(assert (=> b!7507947 m!8090924))

(assert (=> b!7507947 m!8091082))

(assert (=> b!7507947 m!8090924))

(assert (=> b!7507947 m!8091082))

(assert (=> b!7507751 d!2305221))

(assert (=> b!7507751 d!2305081))

(declare-fun d!2305225 () Bool)

(declare-fun res!3012183 () Bool)

(declare-fun e!4476832 () Bool)

(assert (=> d!2305225 (=> res!3012183 e!4476832)))

(assert (=> d!2305225 (= res!3012183 ((_ is Nil!72414) (exprs!8969 setElem!57058)))))

(assert (=> d!2305225 (= (forall!18301 (exprs!8969 setElem!57058) lambda!465577) e!4476832)))

(declare-fun b!7507970 () Bool)

(declare-fun e!4476833 () Bool)

(assert (=> b!7507970 (= e!4476832 e!4476833)))

(declare-fun res!3012184 () Bool)

(assert (=> b!7507970 (=> (not res!3012184) (not e!4476833))))

(declare-fun dynLambda!29787 (Int Regex!19717) Bool)

(assert (=> b!7507970 (= res!3012184 (dynLambda!29787 lambda!465577 (h!78862 (exprs!8969 setElem!57058))))))

(declare-fun b!7507971 () Bool)

(assert (=> b!7507971 (= e!4476833 (forall!18301 (t!387107 (exprs!8969 setElem!57058)) lambda!465577))))

(assert (= (and d!2305225 (not res!3012183)) b!7507970))

(assert (= (and b!7507970 res!3012184) b!7507971))

(declare-fun b_lambda!287877 () Bool)

(assert (=> (not b_lambda!287877) (not b!7507970)))

(declare-fun m!8091370 () Bool)

(assert (=> b!7507970 m!8091370))

(declare-fun m!8091372 () Bool)

(assert (=> b!7507971 m!8091372))

(assert (=> d!2304941 d!2305225))

(assert (=> b!7507752 d!2305021))

(assert (=> b!7507750 d!2305097))

(declare-fun d!2305241 () Bool)

(assert (=> d!2305241 (= (isEmpty!41318 (getLanguageWitness!1058 z!3716)) (not ((_ is Some!17231) (getLanguageWitness!1058 z!3716))))))

(assert (=> d!2305035 d!2305241))

(declare-fun bs!1938551 () Bool)

(declare-fun d!2305243 () Bool)

(assert (= bs!1938551 (and d!2305243 d!2305123)))

(declare-fun lambda!465629 () Int)

(assert (=> bs!1938551 (not (= lambda!465629 lambda!465604))))

(declare-fun bs!1938552 () Bool)

(assert (= bs!1938552 (and d!2305243 b!7507757)))

(assert (=> bs!1938552 (= lambda!465629 lambda!465594)))

(declare-fun bs!1938553 () Bool)

(assert (= bs!1938553 (and d!2305243 d!2305137)))

(assert (=> bs!1938553 (not (= lambda!465629 lambda!465610))))

(declare-fun bs!1938554 () Bool)

(assert (= bs!1938554 (and d!2305243 d!2305035)))

(assert (=> bs!1938554 (not (= lambda!465629 lambda!465593))))

(declare-fun bs!1938555 () Bool)

(assert (= bs!1938555 (and d!2305243 d!2305083)))

(assert (=> bs!1938555 (not (= lambda!465629 lambda!465598))))

(declare-fun bs!1938556 () Bool)

(assert (= bs!1938556 (and d!2305243 d!2304995)))

(assert (=> bs!1938556 (not (= lambda!465629 lambda!465580))))

(declare-fun bs!1938557 () Bool)

(assert (= bs!1938557 (and d!2305243 b!7507758)))

(assert (=> bs!1938557 (= lambda!465629 lambda!465595)))

(declare-fun lt!2636324 () Option!17232)

(declare-fun isDefined!13906 (Option!17232) Bool)

(assert (=> d!2305243 (= (isDefined!13906 lt!2636324) (exists!4871 z!3716 lambda!465629))))

(declare-fun e!4476839 () Option!17232)

(assert (=> d!2305243 (= lt!2636324 e!4476839)))

(declare-fun c!1386259 () Bool)

(assert (=> d!2305243 (= c!1386259 (exists!4871 z!3716 lambda!465629))))

(assert (=> d!2305243 (= (getLanguageWitness!1058 z!3716) lt!2636324)))

(declare-fun b!7507982 () Bool)

(declare-fun getLanguageWitness!1059 (Context!16938) Option!17232)

(declare-fun getWitness!2479 ((InoxSet Context!16938) Int) Context!16938)

(assert (=> b!7507982 (= e!4476839 (getLanguageWitness!1059 (getWitness!2479 z!3716 lambda!465629)))))

(declare-fun b!7507983 () Bool)

(assert (=> b!7507983 (= e!4476839 None!17231)))

(assert (= (and d!2305243 c!1386259) b!7507982))

(assert (= (and d!2305243 (not c!1386259)) b!7507983))

(declare-fun m!8091382 () Bool)

(assert (=> d!2305243 m!8091382))

(declare-fun m!8091384 () Bool)

(assert (=> d!2305243 m!8091384))

(assert (=> d!2305243 m!8091384))

(declare-fun m!8091386 () Bool)

(assert (=> b!7507982 m!8091386))

(assert (=> b!7507982 m!8091386))

(declare-fun m!8091388 () Bool)

(assert (=> b!7507982 m!8091388))

(assert (=> d!2305035 d!2305243))

(declare-fun d!2305247 () Bool)

(declare-fun lt!2636331 () Bool)

(assert (=> d!2305247 (= lt!2636331 (forall!18303 (toList!11836 z!3716) lambda!465593))))

(declare-fun choose!58185 ((InoxSet Context!16938) Int) Bool)

(assert (=> d!2305247 (= lt!2636331 (choose!58185 z!3716 lambda!465593))))

(assert (=> d!2305247 (= (forall!18302 z!3716 lambda!465593) lt!2636331)))

(declare-fun bs!1938559 () Bool)

(assert (= bs!1938559 d!2305247))

(assert (=> bs!1938559 m!8091000))

(assert (=> bs!1938559 m!8091000))

(declare-fun m!8091398 () Bool)

(assert (=> bs!1938559 m!8091398))

(declare-fun m!8091402 () Bool)

(assert (=> bs!1938559 m!8091402))

(assert (=> d!2305035 d!2305247))

(assert (=> d!2305029 d!2305031))

(declare-fun d!2305253 () Bool)

(assert (=> d!2305253 (isPrefix!6011 totalInput!779 totalInput!779)))

(assert (=> d!2305253 true))

(declare-fun _$45!2407 () Unit!166442)

(assert (=> d!2305253 (= (choose!58174 totalInput!779 totalInput!779) _$45!2407)))

(declare-fun bs!1938560 () Bool)

(assert (= bs!1938560 d!2305253))

(assert (=> bs!1938560 m!8090718))

(assert (=> d!2305029 d!2305253))

(declare-fun d!2305261 () Bool)

(declare-fun e!4476848 () Bool)

(assert (=> d!2305261 e!4476848))

(declare-fun res!3012192 () Bool)

(assert (=> d!2305261 (=> res!3012192 e!4476848)))

(declare-fun lt!2636336 () Bool)

(assert (=> d!2305261 (= res!3012192 (not lt!2636336))))

(declare-fun e!4476849 () Bool)

(assert (=> d!2305261 (= lt!2636336 e!4476849)))

(declare-fun res!3012191 () Bool)

(assert (=> d!2305261 (=> res!3012191 e!4476849)))

(assert (=> d!2305261 (= res!3012191 ((_ is Nil!72413) (tail!15001 testedP!204)))))

(assert (=> d!2305261 (= (isPrefix!6011 (tail!15001 testedP!204) (tail!15001 totalInput!779)) lt!2636336)))

(declare-fun b!7508001 () Bool)

(assert (=> b!7508001 (= e!4476848 (>= (size!42288 (tail!15001 totalInput!779)) (size!42288 (tail!15001 testedP!204))))))

(declare-fun b!7507998 () Bool)

(declare-fun e!4476847 () Bool)

(assert (=> b!7507998 (= e!4476849 e!4476847)))

(declare-fun res!3012190 () Bool)

(assert (=> b!7507998 (=> (not res!3012190) (not e!4476847))))

(assert (=> b!7507998 (= res!3012190 (not ((_ is Nil!72413) (tail!15001 totalInput!779))))))

(declare-fun b!7508000 () Bool)

(assert (=> b!7508000 (= e!4476847 (isPrefix!6011 (tail!15001 (tail!15001 testedP!204)) (tail!15001 (tail!15001 totalInput!779))))))

(declare-fun b!7507999 () Bool)

(declare-fun res!3012189 () Bool)

(assert (=> b!7507999 (=> (not res!3012189) (not e!4476847))))

(assert (=> b!7507999 (= res!3012189 (= (head!15434 (tail!15001 testedP!204)) (head!15434 (tail!15001 totalInput!779))))))

(assert (= (and d!2305261 (not res!3012191)) b!7507998))

(assert (= (and b!7507998 res!3012190) b!7507999))

(assert (= (and b!7507999 res!3012189) b!7508000))

(assert (= (and d!2305261 (not res!3012192)) b!7508001))

(assert (=> b!7508001 m!8090924))

(assert (=> b!7508001 m!8091068))

(assert (=> b!7508001 m!8090972))

(declare-fun m!8091416 () Bool)

(assert (=> b!7508001 m!8091416))

(assert (=> b!7508000 m!8090972))

(declare-fun m!8091418 () Bool)

(assert (=> b!7508000 m!8091418))

(assert (=> b!7508000 m!8090924))

(assert (=> b!7508000 m!8091074))

(assert (=> b!7508000 m!8091418))

(assert (=> b!7508000 m!8091074))

(declare-fun m!8091420 () Bool)

(assert (=> b!7508000 m!8091420))

(assert (=> b!7507999 m!8090972))

(declare-fun m!8091422 () Bool)

(assert (=> b!7507999 m!8091422))

(assert (=> b!7507999 m!8090924))

(assert (=> b!7507999 m!8091082))

(assert (=> b!7507743 d!2305261))

(declare-fun d!2305265 () Bool)

(assert (=> d!2305265 (= (tail!15001 testedP!204) (t!387106 testedP!204))))

(assert (=> b!7507743 d!2305265))

(assert (=> b!7507743 d!2305081))

(declare-fun d!2305267 () Bool)

(declare-fun c!1386265 () Bool)

(assert (=> d!2305267 (= c!1386265 ((_ is Nil!72413) lt!2636196))))

(declare-fun e!4476853 () (InoxSet C!39760))

(assert (=> d!2305267 (= (content!15312 lt!2636196) e!4476853)))

(declare-fun b!7508006 () Bool)

(assert (=> b!7508006 (= e!4476853 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7508007 () Bool)

(assert (=> b!7508007 (= e!4476853 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 lt!2636196) true) (content!15312 (t!387106 lt!2636196))))))

(assert (= (and d!2305267 c!1386265) b!7508006))

(assert (= (and d!2305267 (not c!1386265)) b!7508007))

(declare-fun m!8091426 () Bool)

(assert (=> b!7508007 m!8091426))

(declare-fun m!8091428 () Bool)

(assert (=> b!7508007 m!8091428))

(assert (=> d!2305003 d!2305267))

(assert (=> d!2305003 d!2305117))

(declare-fun d!2305269 () Bool)

(declare-fun c!1386266 () Bool)

(assert (=> d!2305269 (= c!1386266 ((_ is Nil!72413) (Cons!72413 lt!2636117 Nil!72413)))))

(declare-fun e!4476854 () (InoxSet C!39760))

(assert (=> d!2305269 (= (content!15312 (Cons!72413 lt!2636117 Nil!72413)) e!4476854)))

(declare-fun b!7508010 () Bool)

(assert (=> b!7508010 (= e!4476854 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7508011 () Bool)

(assert (=> b!7508011 (= e!4476854 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 (Cons!72413 lt!2636117 Nil!72413)) true) (content!15312 (t!387106 (Cons!72413 lt!2636117 Nil!72413)))))))

(assert (= (and d!2305269 c!1386266) b!7508010))

(assert (= (and d!2305269 (not c!1386266)) b!7508011))

(declare-fun m!8091430 () Bool)

(assert (=> b!7508011 m!8091430))

(declare-fun m!8091432 () Bool)

(assert (=> b!7508011 m!8091432))

(assert (=> d!2305003 d!2305269))

(assert (=> b!7507744 d!2305021))

(assert (=> b!7507744 d!2305017))

(declare-fun d!2305271 () Bool)

(declare-fun lt!2636338 () Int)

(assert (=> d!2305271 (>= lt!2636338 0)))

(declare-fun e!4476857 () Int)

(assert (=> d!2305271 (= lt!2636338 e!4476857)))

(declare-fun c!1386267 () Bool)

(assert (=> d!2305271 (= c!1386267 ((_ is Nil!72413) lt!2636201))))

(assert (=> d!2305271 (= (size!42288 lt!2636201) lt!2636338)))

(declare-fun b!7508016 () Bool)

(assert (=> b!7508016 (= e!4476857 0)))

(declare-fun b!7508017 () Bool)

(assert (=> b!7508017 (= e!4476857 (+ 1 (size!42288 (t!387106 lt!2636201))))))

(assert (= (and d!2305271 c!1386267) b!7508016))

(assert (= (and d!2305271 (not c!1386267)) b!7508017))

(declare-fun m!8091434 () Bool)

(assert (=> b!7508017 m!8091434))

(assert (=> b!7507725 d!2305271))

(assert (=> b!7507725 d!2305017))

(declare-fun d!2305273 () Bool)

(declare-fun lt!2636339 () Int)

(assert (=> d!2305273 (>= lt!2636339 0)))

(declare-fun e!4476858 () Int)

(assert (=> d!2305273 (= lt!2636339 e!4476858)))

(declare-fun c!1386268 () Bool)

(assert (=> d!2305273 (= c!1386268 ((_ is Nil!72413) (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))

(assert (=> d!2305273 (= (size!42288 (Cons!72413 (head!15434 lt!2636122) Nil!72413)) lt!2636339)))

(declare-fun b!7508022 () Bool)

(assert (=> b!7508022 (= e!4476858 0)))

(declare-fun b!7508023 () Bool)

(assert (=> b!7508023 (= e!4476858 (+ 1 (size!42288 (t!387106 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(assert (= (and d!2305273 c!1386268) b!7508022))

(assert (= (and d!2305273 (not c!1386268)) b!7508023))

(declare-fun m!8091436 () Bool)

(assert (=> b!7508023 m!8091436))

(assert (=> b!7507725 d!2305273))

(declare-fun d!2305275 () Bool)

(assert (=> d!2305275 (= (head!15434 testedP!204) (h!78861 testedP!204))))

(assert (=> b!7507742 d!2305275))

(assert (=> b!7507742 d!2305097))

(assert (=> d!2305015 d!2305017))

(assert (=> d!2305015 d!2305021))

(declare-fun d!2305277 () Bool)

(assert (=> d!2305277 (<= (size!42288 testedP!204) (size!42288 totalInput!779))))

(assert (=> d!2305277 true))

(declare-fun _$64!883 () Unit!166442)

(assert (=> d!2305277 (= (choose!58172 testedP!204 totalInput!779) _$64!883)))

(declare-fun bs!1938561 () Bool)

(assert (= bs!1938561 d!2305277))

(assert (=> bs!1938561 m!8090712))

(assert (=> bs!1938561 m!8090724))

(assert (=> d!2305015 d!2305277))

(assert (=> d!2305015 d!2305023))

(declare-fun d!2305279 () Bool)

(declare-fun e!4476863 () Bool)

(assert (=> d!2305279 e!4476863))

(declare-fun res!3012200 () Bool)

(assert (=> d!2305279 (=> res!3012200 e!4476863)))

(declare-fun lt!2636340 () Bool)

(assert (=> d!2305279 (= res!3012200 (not lt!2636340))))

(declare-fun e!4476864 () Bool)

(assert (=> d!2305279 (= lt!2636340 e!4476864)))

(declare-fun res!3012199 () Bool)

(assert (=> d!2305279 (=> res!3012199 e!4476864)))

(assert (=> d!2305279 (= res!3012199 ((_ is Nil!72413) (tail!15001 testedP!204)))))

(assert (=> d!2305279 (= (isPrefix!6011 (tail!15001 testedP!204) (tail!15001 lt!2636118)) lt!2636340)))

(declare-fun b!7508033 () Bool)

(assert (=> b!7508033 (= e!4476863 (>= (size!42288 (tail!15001 lt!2636118)) (size!42288 (tail!15001 testedP!204))))))

(declare-fun b!7508030 () Bool)

(declare-fun e!4476862 () Bool)

(assert (=> b!7508030 (= e!4476864 e!4476862)))

(declare-fun res!3012198 () Bool)

(assert (=> b!7508030 (=> (not res!3012198) (not e!4476862))))

(assert (=> b!7508030 (= res!3012198 (not ((_ is Nil!72413) (tail!15001 lt!2636118))))))

(declare-fun b!7508032 () Bool)

(assert (=> b!7508032 (= e!4476862 (isPrefix!6011 (tail!15001 (tail!15001 testedP!204)) (tail!15001 (tail!15001 lt!2636118))))))

(declare-fun b!7508031 () Bool)

(declare-fun res!3012197 () Bool)

(assert (=> b!7508031 (=> (not res!3012197) (not e!4476862))))

(assert (=> b!7508031 (= res!3012197 (= (head!15434 (tail!15001 testedP!204)) (head!15434 (tail!15001 lt!2636118))))))

(assert (= (and d!2305279 (not res!3012199)) b!7508030))

(assert (= (and b!7508030 res!3012198) b!7508031))

(assert (= (and b!7508031 res!3012197) b!7508032))

(assert (= (and d!2305279 (not res!3012200)) b!7508033))

(assert (=> b!7508033 m!8090980))

(declare-fun m!8091440 () Bool)

(assert (=> b!7508033 m!8091440))

(assert (=> b!7508033 m!8090972))

(assert (=> b!7508033 m!8091416))

(assert (=> b!7508032 m!8090972))

(assert (=> b!7508032 m!8091418))

(assert (=> b!7508032 m!8090980))

(declare-fun m!8091442 () Bool)

(assert (=> b!7508032 m!8091442))

(assert (=> b!7508032 m!8091418))

(assert (=> b!7508032 m!8091442))

(declare-fun m!8091444 () Bool)

(assert (=> b!7508032 m!8091444))

(assert (=> b!7508031 m!8090972))

(assert (=> b!7508031 m!8091422))

(assert (=> b!7508031 m!8090980))

(declare-fun m!8091446 () Bool)

(assert (=> b!7508031 m!8091446))

(assert (=> b!7507747 d!2305279))

(assert (=> b!7507747 d!2305265))

(declare-fun d!2305283 () Bool)

(assert (=> d!2305283 (= (tail!15001 lt!2636118) (t!387106 lt!2636118))))

(assert (=> b!7507747 d!2305283))

(declare-fun b!7508038 () Bool)

(declare-fun e!4476869 () List!72537)

(assert (=> b!7508038 (= e!4476869 (Cons!72413 (head!15434 lt!2636122) Nil!72413))))

(declare-fun lt!2636341 () List!72537)

(declare-fun b!7508041 () Bool)

(declare-fun e!4476870 () Bool)

(assert (=> b!7508041 (= e!4476870 (or (not (= (Cons!72413 (head!15434 lt!2636122) Nil!72413) Nil!72413)) (= lt!2636341 (t!387106 testedP!204))))))

(declare-fun d!2305285 () Bool)

(assert (=> d!2305285 e!4476870))

(declare-fun res!3012201 () Bool)

(assert (=> d!2305285 (=> (not res!3012201) (not e!4476870))))

(assert (=> d!2305285 (= res!3012201 (= (content!15312 lt!2636341) ((_ map or) (content!15312 (t!387106 testedP!204)) (content!15312 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(assert (=> d!2305285 (= lt!2636341 e!4476869)))

(declare-fun c!1386269 () Bool)

(assert (=> d!2305285 (= c!1386269 ((_ is Nil!72413) (t!387106 testedP!204)))))

(assert (=> d!2305285 (= (++!17346 (t!387106 testedP!204) (Cons!72413 (head!15434 lt!2636122) Nil!72413)) lt!2636341)))

(declare-fun b!7508039 () Bool)

(assert (=> b!7508039 (= e!4476869 (Cons!72413 (h!78861 (t!387106 testedP!204)) (++!17346 (t!387106 (t!387106 testedP!204)) (Cons!72413 (head!15434 lt!2636122) Nil!72413))))))

(declare-fun b!7508040 () Bool)

(declare-fun res!3012202 () Bool)

(assert (=> b!7508040 (=> (not res!3012202) (not e!4476870))))

(assert (=> b!7508040 (= res!3012202 (= (size!42288 lt!2636341) (+ (size!42288 (t!387106 testedP!204)) (size!42288 (Cons!72413 (head!15434 lt!2636122) Nil!72413)))))))

(assert (= (and d!2305285 c!1386269) b!7508038))

(assert (= (and d!2305285 (not c!1386269)) b!7508039))

(assert (= (and d!2305285 res!3012201) b!7508040))

(assert (= (and b!7508040 res!3012202) b!7508041))

(declare-fun m!8091450 () Bool)

(assert (=> d!2305285 m!8091450))

(assert (=> d!2305285 m!8091148))

(assert (=> d!2305285 m!8090946))

(declare-fun m!8091452 () Bool)

(assert (=> b!7508039 m!8091452))

(declare-fun m!8091454 () Bool)

(assert (=> b!7508040 m!8091454))

(assert (=> b!7508040 m!8090966))

(assert (=> b!7508040 m!8090952))

(assert (=> b!7507724 d!2305285))

(declare-fun d!2305287 () Bool)

(declare-fun lt!2636342 () Int)

(assert (=> d!2305287 (>= lt!2636342 0)))

(declare-fun e!4476871 () Int)

(assert (=> d!2305287 (= lt!2636342 e!4476871)))

(declare-fun c!1386270 () Bool)

(assert (=> d!2305287 (= c!1386270 ((_ is Nil!72413) lt!2636118))))

(assert (=> d!2305287 (= (size!42288 lt!2636118) lt!2636342)))

(declare-fun b!7508042 () Bool)

(assert (=> b!7508042 (= e!4476871 0)))

(declare-fun b!7508043 () Bool)

(assert (=> b!7508043 (= e!4476871 (+ 1 (size!42288 (t!387106 lt!2636118))))))

(assert (= (and d!2305287 c!1386270) b!7508042))

(assert (= (and d!2305287 (not c!1386270)) b!7508043))

(declare-fun m!8091456 () Bool)

(assert (=> b!7508043 m!8091456))

(assert (=> b!7507748 d!2305287))

(assert (=> b!7507748 d!2305017))

(assert (=> b!7507746 d!2305275))

(declare-fun d!2305289 () Bool)

(assert (=> d!2305289 (= (head!15434 lt!2636118) (h!78861 lt!2636118))))

(assert (=> b!7507746 d!2305289))

(declare-fun d!2305291 () Bool)

(declare-fun c!1386271 () Bool)

(assert (=> d!2305291 (= c!1386271 ((_ is Nil!72413) lt!2636202))))

(declare-fun e!4476872 () (InoxSet C!39760))

(assert (=> d!2305291 (= (content!15312 lt!2636202) e!4476872)))

(declare-fun b!7508044 () Bool)

(assert (=> b!7508044 (= e!4476872 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7508045 () Bool)

(assert (=> b!7508045 (= e!4476872 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 lt!2636202) true) (content!15312 (t!387106 lt!2636202))))))

(assert (= (and d!2305291 c!1386271) b!7508044))

(assert (= (and d!2305291 (not c!1386271)) b!7508045))

(declare-fun m!8091458 () Bool)

(assert (=> b!7508045 m!8091458))

(declare-fun m!8091460 () Bool)

(assert (=> b!7508045 m!8091460))

(assert (=> d!2305013 d!2305291))

(assert (=> d!2305013 d!2305117))

(declare-fun d!2305293 () Bool)

(declare-fun c!1386272 () Bool)

(assert (=> d!2305293 (= c!1386272 ((_ is Nil!72413) testedSuffix!164))))

(declare-fun e!4476873 () (InoxSet C!39760))

(assert (=> d!2305293 (= (content!15312 testedSuffix!164) e!4476873)))

(declare-fun b!7508046 () Bool)

(assert (=> b!7508046 (= e!4476873 ((as const (Array C!39760 Bool)) false))))

(declare-fun b!7508047 () Bool)

(assert (=> b!7508047 (= e!4476873 ((_ map or) (store ((as const (Array C!39760 Bool)) false) (h!78861 testedSuffix!164) true) (content!15312 (t!387106 testedSuffix!164))))))

(assert (= (and d!2305293 c!1386272) b!7508046))

(assert (= (and d!2305293 (not c!1386272)) b!7508047))

(declare-fun m!8091462 () Bool)

(assert (=> b!7508047 m!8091462))

(declare-fun m!8091464 () Bool)

(assert (=> b!7508047 m!8091464))

(assert (=> d!2305013 d!2305293))

(declare-fun d!2305295 () Bool)

(declare-fun lt!2636343 () Int)

(assert (=> d!2305295 (>= lt!2636343 0)))

(declare-fun e!4476874 () Int)

(assert (=> d!2305295 (= lt!2636343 e!4476874)))

(declare-fun c!1386273 () Bool)

(assert (=> d!2305295 (= c!1386273 ((_ is Nil!72413) lt!2636200))))

(assert (=> d!2305295 (= (size!42288 lt!2636200) lt!2636343)))

(declare-fun b!7508048 () Bool)

(assert (=> b!7508048 (= e!4476874 0)))

(declare-fun b!7508049 () Bool)

(assert (=> b!7508049 (= e!4476874 (+ 1 (size!42288 (t!387106 lt!2636200))))))

(assert (= (and d!2305295 c!1386273) b!7508048))

(assert (= (and d!2305295 (not c!1386273)) b!7508049))

(declare-fun m!8091466 () Bool)

(assert (=> b!7508049 m!8091466))

(assert (=> b!7507721 d!2305295))

(assert (=> b!7507721 d!2305019))

(declare-fun d!2305297 () Bool)

(declare-fun lt!2636344 () Int)

(assert (=> d!2305297 (>= lt!2636344 0)))

(declare-fun e!4476875 () Int)

(assert (=> d!2305297 (= lt!2636344 e!4476875)))

(declare-fun c!1386274 () Bool)

(assert (=> d!2305297 (= c!1386274 ((_ is Nil!72413) lt!2636120))))

(assert (=> d!2305297 (= (size!42288 lt!2636120) lt!2636344)))

(declare-fun b!7508050 () Bool)

(assert (=> b!7508050 (= e!4476875 0)))

(declare-fun b!7508051 () Bool)

(assert (=> b!7508051 (= e!4476875 (+ 1 (size!42288 (t!387106 lt!2636120))))))

(assert (= (and d!2305297 c!1386274) b!7508050))

(assert (= (and d!2305297 (not c!1386274)) b!7508051))

(declare-fun m!8091468 () Bool)

(assert (=> b!7508051 m!8091468))

(assert (=> b!7507721 d!2305297))

(declare-fun condSetEmpty!57066 () Bool)

(assert (=> setNonEmpty!57064 (= condSetEmpty!57066 (= setRest!57064 ((as const (Array Context!16938 Bool)) false)))))

(declare-fun setRes!57066 () Bool)

(assert (=> setNonEmpty!57064 (= tp!2179188 setRes!57066)))

(declare-fun setIsEmpty!57066 () Bool)

(assert (=> setIsEmpty!57066 setRes!57066))

(declare-fun e!4476876 () Bool)

(declare-fun setNonEmpty!57066 () Bool)

(declare-fun tp!2179225 () Bool)

(declare-fun setElem!57066 () Context!16938)

(assert (=> setNonEmpty!57066 (= setRes!57066 (and tp!2179225 (inv!92522 setElem!57066) e!4476876))))

(declare-fun setRest!57066 () (InoxSet Context!16938))

(assert (=> setNonEmpty!57066 (= setRest!57064 ((_ map or) (store ((as const (Array Context!16938 Bool)) false) setElem!57066 true) setRest!57066))))

(declare-fun b!7508052 () Bool)

(declare-fun tp!2179224 () Bool)

(assert (=> b!7508052 (= e!4476876 tp!2179224)))

(assert (= (and setNonEmpty!57064 condSetEmpty!57066) setIsEmpty!57066))

(assert (= (and setNonEmpty!57064 (not condSetEmpty!57066)) setNonEmpty!57066))

(assert (= setNonEmpty!57066 b!7508052))

(declare-fun m!8091470 () Bool)

(assert (=> setNonEmpty!57066 m!8091470))

(declare-fun b!7508053 () Bool)

(declare-fun e!4476877 () Bool)

(declare-fun tp!2179226 () Bool)

(assert (=> b!7508053 (= e!4476877 (and tp_is_empty!49775 tp!2179226))))

(assert (=> b!7507775 (= tp!2179192 e!4476877)))

(assert (= (and b!7507775 ((_ is Cons!72413) (t!387106 (t!387106 testedP!204)))) b!7508053))

(declare-fun b!7508054 () Bool)

(declare-fun e!4476878 () Bool)

(declare-fun tp!2179227 () Bool)

(assert (=> b!7508054 (= e!4476878 (and tp_is_empty!49775 tp!2179227))))

(assert (=> b!7507781 (= tp!2179199 e!4476878)))

(assert (= (and b!7507781 ((_ is Cons!72413) (t!387106 (t!387106 testedSuffix!164)))) b!7508054))

(declare-fun b!7508055 () Bool)

(declare-fun e!4476879 () Bool)

(declare-fun tp!2179228 () Bool)

(declare-fun tp!2179229 () Bool)

(assert (=> b!7508055 (= e!4476879 (and tp!2179228 tp!2179229))))

(assert (=> b!7507769 (= tp!2179187 e!4476879)))

(assert (= (and b!7507769 ((_ is Cons!72414) (exprs!8969 setElem!57064))) b!7508055))

(declare-fun b!7508056 () Bool)

(declare-fun e!4476880 () Bool)

(declare-fun tp!2179230 () Bool)

(assert (=> b!7508056 (= e!4476880 (and tp_is_empty!49775 tp!2179230))))

(assert (=> b!7507774 (= tp!2179191 e!4476880)))

(assert (= (and b!7507774 ((_ is Cons!72413) (t!387106 (t!387106 totalInput!779)))) b!7508056))

(declare-fun b!7508068 () Bool)

(declare-fun e!4476883 () Bool)

(declare-fun tp!2179243 () Bool)

(declare-fun tp!2179241 () Bool)

(assert (=> b!7508068 (= e!4476883 (and tp!2179243 tp!2179241))))

(assert (=> b!7507780 (= tp!2179197 e!4476883)))

(declare-fun b!7508067 () Bool)

(assert (=> b!7508067 (= e!4476883 tp_is_empty!49775)))

(declare-fun b!7508069 () Bool)

(declare-fun tp!2179242 () Bool)

(assert (=> b!7508069 (= e!4476883 tp!2179242)))

(declare-fun b!7508070 () Bool)

(declare-fun tp!2179244 () Bool)

(declare-fun tp!2179245 () Bool)

(assert (=> b!7508070 (= e!4476883 (and tp!2179244 tp!2179245))))

(assert (= (and b!7507780 ((_ is ElementMatch!19717) (h!78862 (exprs!8969 setElem!57058)))) b!7508067))

(assert (= (and b!7507780 ((_ is Concat!28562) (h!78862 (exprs!8969 setElem!57058)))) b!7508068))

(assert (= (and b!7507780 ((_ is Star!19717) (h!78862 (exprs!8969 setElem!57058)))) b!7508069))

(assert (= (and b!7507780 ((_ is Union!19717) (h!78862 (exprs!8969 setElem!57058)))) b!7508070))

(declare-fun b!7508071 () Bool)

(declare-fun e!4476884 () Bool)

(declare-fun tp!2179246 () Bool)

(declare-fun tp!2179247 () Bool)

(assert (=> b!7508071 (= e!4476884 (and tp!2179246 tp!2179247))))

(assert (=> b!7507780 (= tp!2179198 e!4476884)))

(assert (= (and b!7507780 ((_ is Cons!72414) (t!387107 (exprs!8969 setElem!57058)))) b!7508071))

(declare-fun b_lambda!287881 () Bool)

(assert (= b_lambda!287877 (or d!2304941 b_lambda!287881)))

(declare-fun bs!1938563 () Bool)

(declare-fun d!2305299 () Bool)

(assert (= bs!1938563 (and d!2305299 d!2304941)))

(declare-fun validRegex!10181 (Regex!19717) Bool)

(assert (=> bs!1938563 (= (dynLambda!29787 lambda!465577 (h!78862 (exprs!8969 setElem!57058))) (validRegex!10181 (h!78862 (exprs!8969 setElem!57058))))))

(declare-fun m!8091472 () Bool)

(assert (=> bs!1938563 m!8091472))

(assert (=> b!7507970 d!2305299))

(check-sat (not b!7507881) (not b!7507797) (not b!7507885) (not d!2305247) (not b!7507827) (not d!2305123) (not b!7507917) (not d!2305197) (not d!2305137) (not d!2305083) (not b!7507971) (not d!2305121) (not d!2305253) (not d!2305141) (not b!7508011) (not b!7507840) (not b!7507829) (not b!7508070) (not b!7508023) (not b!7507806) (not d!2305159) (not b!7507999) (not d!2305147) (not b!7507852) (not d!2305211) (not d!2305067) (not b!7508047) (not b!7507831) (not b!7508033) (not b!7508040) (not b!7507883) (not b_lambda!287881) (not b!7507882) (not b!7508031) (not b!7507854) (not b!7508007) (not b!7507856) (not b!7507925) (not b!7507915) (not b!7507923) (not b!7507937) (not b!7507918) (not b!7507891) (not b!7507894) (not b!7507908) (not b!7508045) (not b!7508053) (not d!2305179) (not d!2305185) (not setNonEmpty!57066) (not b!7508055) (not b!7507947) (not b!7507807) (not d!2305243) (not d!2305285) (not b!7507850) (not b!7507857) (not b!7507907) (not b!7508068) (not b!7508049) (not b!7508056) (not b!7508071) (not d!2305169) (not b!7508001) (not b!7507805) (not b!7507841) (not b!7507948) (not b!7507889) (not b!7507927) (not d!2305161) (not b!7507949) (not b!7507795) (not d!2305111) (not b!7508069) (not d!2305277) (not b!7507926) (not b!7508039) (not b!7508017) (not b!7507838) (not bs!1938563) (not d!2305105) (not b!7507876) (not b!7507887) tp_is_empty!49775 (not b!7507982) (not b!7508043) (not d!2305165) (not b!7507893) (not b!7507938) (not b!7508000) (not b!7507921) (not b!7508054) (not b!7508051) (not b!7507798) (not b!7508052) (not b!7508032))
(check-sat)
