; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!726146 () Bool)

(assert start!726146)

(declare-fun b!7503658 () Bool)

(declare-fun e!4473895 () Bool)

(declare-fun tp_is_empty!49695 () Bool)

(declare-fun tp!2178181 () Bool)

(assert (=> b!7503658 (= e!4473895 (and tp_is_empty!49695 tp!2178181))))

(declare-fun setIsEmpty!56914 () Bool)

(declare-fun setRes!56914 () Bool)

(assert (=> setIsEmpty!56914 setRes!56914))

(declare-fun res!3010307 () Bool)

(declare-fun e!4473897 () Bool)

(assert (=> start!726146 (=> (not res!3010307) (not e!4473897))))

(declare-datatypes ((C!39680 0))(
  ( (C!39681 (val!30238 Int)) )
))
(declare-datatypes ((List!72451 0))(
  ( (Nil!72327) (Cons!72327 (h!78775 C!39680) (t!387020 List!72451)) )
))
(declare-fun lt!2633513 () List!72451)

(declare-fun totalInput!779 () List!72451)

(assert (=> start!726146 (= res!3010307 (= lt!2633513 totalInput!779))))

(declare-fun testedP!204 () List!72451)

(declare-fun testedSuffix!164 () List!72451)

(declare-fun ++!17306 (List!72451 List!72451) List!72451)

(assert (=> start!726146 (= lt!2633513 (++!17306 testedP!204 testedSuffix!164))))

(assert (=> start!726146 e!4473897))

(assert (=> start!726146 e!4473895))

(assert (=> start!726146 true))

(declare-fun e!4473898 () Bool)

(assert (=> start!726146 e!4473898))

(declare-fun e!4473894 () Bool)

(assert (=> start!726146 e!4473894))

(declare-fun condSetEmpty!56914 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!19687 0))(
  ( (ElementMatch!19687 (c!1385252 C!39680)) (Concat!28532 (regOne!39886 Regex!19687) (regTwo!39886 Regex!19687)) (EmptyExpr!19687) (Star!19687 (reg!20016 Regex!19687)) (EmptyLang!19687) (Union!19687 (regOne!39887 Regex!19687) (regTwo!39887 Regex!19687)) )
))
(declare-datatypes ((List!72452 0))(
  ( (Nil!72328) (Cons!72328 (h!78776 Regex!19687) (t!387021 List!72452)) )
))
(declare-datatypes ((Context!16878 0))(
  ( (Context!16879 (exprs!8939 List!72452)) )
))
(declare-fun z!3716 () (InoxSet Context!16878))

(assert (=> start!726146 (= condSetEmpty!56914 (= z!3716 ((as const (Array Context!16878 Bool)) false)))))

(assert (=> start!726146 setRes!56914))

(declare-fun b!7503659 () Bool)

(declare-fun e!4473893 () Bool)

(declare-fun e!4473901 () Bool)

(assert (=> b!7503659 (= e!4473893 e!4473901)))

(declare-fun res!3010305 () Bool)

(assert (=> b!7503659 (=> res!3010305 e!4473901)))

(declare-fun lostCauseZipper!1375 ((InoxSet Context!16878)) Bool)

(assert (=> b!7503659 (= res!3010305 (lostCauseZipper!1375 z!3716))))

(declare-fun lt!2633505 () List!72451)

(assert (=> b!7503659 (and (= testedSuffix!164 lt!2633505) (= lt!2633505 testedSuffix!164))))

(declare-datatypes ((Unit!166286 0))(
  ( (Unit!166287) )
))
(declare-fun lt!2633517 () Unit!166286)

(declare-fun lemmaSamePrefixThenSameSuffix!2778 (List!72451 List!72451 List!72451 List!72451 List!72451) Unit!166286)

(assert (=> b!7503659 (= lt!2633517 (lemmaSamePrefixThenSameSuffix!2778 testedP!204 testedSuffix!164 testedP!204 lt!2633505 totalInput!779))))

(declare-fun getSuffix!3475 (List!72451 List!72451) List!72451)

(assert (=> b!7503659 (= lt!2633505 (getSuffix!3475 totalInput!779 testedP!204))))

(declare-fun b!7503660 () Bool)

(declare-fun e!4473900 () Unit!166286)

(declare-fun Unit!166288 () Unit!166286)

(assert (=> b!7503660 (= e!4473900 Unit!166288)))

(declare-fun lt!2633506 () Unit!166286)

(declare-fun lemmaIsPrefixRefl!3822 (List!72451 List!72451) Unit!166286)

(assert (=> b!7503660 (= lt!2633506 (lemmaIsPrefixRefl!3822 totalInput!779 totalInput!779))))

(declare-fun isPrefix!5973 (List!72451 List!72451) Bool)

(assert (=> b!7503660 (isPrefix!5973 totalInput!779 totalInput!779)))

(declare-fun lt!2633510 () Unit!166286)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1476 (List!72451 List!72451 List!72451) Unit!166286)

(assert (=> b!7503660 (= lt!2633510 (lemmaIsPrefixSameLengthThenSameList!1476 totalInput!779 testedP!204 totalInput!779))))

(assert (=> b!7503660 false))

(declare-fun b!7503661 () Bool)

(declare-fun e!4473891 () Bool)

(assert (=> b!7503661 (= e!4473891 (not (= testedSuffix!164 Nil!72327)))))

(declare-fun b!7503662 () Bool)

(declare-fun Unit!166289 () Unit!166286)

(assert (=> b!7503662 (= e!4473900 Unit!166289)))

(declare-fun b!7503663 () Bool)

(declare-fun e!4473899 () Bool)

(assert (=> b!7503663 (= e!4473901 e!4473899)))

(declare-fun res!3010304 () Bool)

(assert (=> b!7503663 (=> res!3010304 e!4473899)))

(declare-fun lt!2633514 () Int)

(declare-fun lt!2633512 () Int)

(assert (=> b!7503663 (= res!3010304 (>= lt!2633514 lt!2633512))))

(declare-fun lt!2633509 () Unit!166286)

(assert (=> b!7503663 (= lt!2633509 e!4473900)))

(declare-fun c!1385251 () Bool)

(assert (=> b!7503663 (= c!1385251 (= lt!2633514 lt!2633512))))

(assert (=> b!7503663 (<= lt!2633514 lt!2633512)))

(declare-fun lt!2633507 () Unit!166286)

(declare-fun lemmaIsPrefixThenSmallerEqSize!978 (List!72451 List!72451) Unit!166286)

(assert (=> b!7503663 (= lt!2633507 (lemmaIsPrefixThenSmallerEqSize!978 testedP!204 totalInput!779))))

(declare-fun b!7503664 () Bool)

(declare-fun tp!2178182 () Bool)

(assert (=> b!7503664 (= e!4473898 (and tp_is_empty!49695 tp!2178182))))

(declare-fun b!7503665 () Bool)

(declare-fun res!3010302 () Bool)

(assert (=> b!7503665 (=> res!3010302 e!4473901)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7503665 (= res!3010302 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7503666 () Bool)

(declare-fun e!4473896 () Bool)

(assert (=> b!7503666 (= e!4473897 e!4473896)))

(declare-fun res!3010301 () Bool)

(assert (=> b!7503666 (=> (not res!3010301) (not e!4473896))))

(assert (=> b!7503666 (= res!3010301 (= testedPSize!164 lt!2633514))))

(declare-fun size!42248 (List!72451) Int)

(assert (=> b!7503666 (= lt!2633514 (size!42248 testedP!204))))

(declare-fun b!7503667 () Bool)

(declare-fun e!4473902 () Bool)

(assert (=> b!7503667 (= e!4473896 e!4473902)))

(declare-fun res!3010306 () Bool)

(assert (=> b!7503667 (=> (not res!3010306) (not e!4473902))))

(assert (=> b!7503667 (= res!3010306 (= totalInputSize!226 lt!2633512))))

(assert (=> b!7503667 (= lt!2633512 (size!42248 totalInput!779))))

(declare-fun e!4473892 () Bool)

(declare-fun tp!2178179 () Bool)

(declare-fun setElem!56914 () Context!16878)

(declare-fun setNonEmpty!56914 () Bool)

(declare-fun inv!92432 (Context!16878) Bool)

(assert (=> setNonEmpty!56914 (= setRes!56914 (and tp!2178179 (inv!92432 setElem!56914) e!4473892))))

(declare-fun setRest!56914 () (InoxSet Context!16878))

(assert (=> setNonEmpty!56914 (= z!3716 ((_ map or) (store ((as const (Array Context!16878 Bool)) false) setElem!56914 true) setRest!56914))))

(declare-fun b!7503668 () Bool)

(declare-fun tp!2178180 () Bool)

(assert (=> b!7503668 (= e!4473894 (and tp_is_empty!49695 tp!2178180))))

(declare-fun b!7503669 () Bool)

(assert (=> b!7503669 (= e!4473899 e!4473891)))

(declare-fun res!3010303 () Bool)

(assert (=> b!7503669 (=> res!3010303 e!4473891)))

(declare-fun nullableZipper!3167 ((InoxSet Context!16878)) Bool)

(assert (=> b!7503669 (= res!3010303 (nullableZipper!3167 z!3716))))

(declare-fun lt!2633515 () List!72451)

(declare-fun lt!2633504 () List!72451)

(assert (=> b!7503669 (= (++!17306 lt!2633515 lt!2633504) totalInput!779)))

(declare-fun lt!2633511 () C!39680)

(declare-fun lt!2633508 () Unit!166286)

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3147 (List!72451 C!39680 List!72451 List!72451) Unit!166286)

(assert (=> b!7503669 (= lt!2633508 (lemmaMoveElementToOtherListKeepsConcatEq!3147 testedP!204 lt!2633511 lt!2633504 totalInput!779))))

(declare-fun tail!14979 (List!72451) List!72451)

(assert (=> b!7503669 (= lt!2633504 (tail!14979 testedSuffix!164))))

(declare-fun head!15413 (List!72451) C!39680)

(assert (=> b!7503669 (isPrefix!5973 (++!17306 testedP!204 (Cons!72327 (head!15413 lt!2633505) Nil!72327)) totalInput!779)))

(declare-fun lt!2633518 () Unit!166286)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1114 (List!72451 List!72451) Unit!166286)

(assert (=> b!7503669 (= lt!2633518 (lemmaAddHeadSuffixToPrefixStillPrefix!1114 testedP!204 totalInput!779))))

(assert (=> b!7503669 (= lt!2633515 (++!17306 testedP!204 (Cons!72327 lt!2633511 Nil!72327)))))

(assert (=> b!7503669 (= lt!2633511 (head!15413 testedSuffix!164))))

(declare-fun b!7503670 () Bool)

(assert (=> b!7503670 (= e!4473902 (not e!4473893))))

(declare-fun res!3010308 () Bool)

(assert (=> b!7503670 (=> res!3010308 e!4473893)))

(assert (=> b!7503670 (= res!3010308 (not (isPrefix!5973 testedP!204 totalInput!779)))))

(assert (=> b!7503670 (isPrefix!5973 testedP!204 lt!2633513)))

(declare-fun lt!2633516 () Unit!166286)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3686 (List!72451 List!72451) Unit!166286)

(assert (=> b!7503670 (= lt!2633516 (lemmaConcatTwoListThenFirstIsPrefix!3686 testedP!204 testedSuffix!164))))

(declare-fun b!7503671 () Bool)

(declare-fun tp!2178183 () Bool)

(assert (=> b!7503671 (= e!4473892 tp!2178183)))

(assert (= (and start!726146 res!3010307) b!7503666))

(assert (= (and b!7503666 res!3010301) b!7503667))

(assert (= (and b!7503667 res!3010306) b!7503670))

(assert (= (and b!7503670 (not res!3010308)) b!7503659))

(assert (= (and b!7503659 (not res!3010305)) b!7503665))

(assert (= (and b!7503665 (not res!3010302)) b!7503663))

(assert (= (and b!7503663 c!1385251) b!7503660))

(assert (= (and b!7503663 (not c!1385251)) b!7503662))

(assert (= (and b!7503663 (not res!3010304)) b!7503669))

(assert (= (and b!7503669 (not res!3010303)) b!7503661))

(get-info :version)

(assert (= (and start!726146 ((_ is Cons!72327) testedSuffix!164)) b!7503658))

(assert (= (and start!726146 ((_ is Cons!72327) totalInput!779)) b!7503664))

(assert (= (and start!726146 ((_ is Cons!72327) testedP!204)) b!7503668))

(assert (= (and start!726146 condSetEmpty!56914) setIsEmpty!56914))

(assert (= (and start!726146 (not condSetEmpty!56914)) setNonEmpty!56914))

(assert (= setNonEmpty!56914 b!7503671))

(declare-fun m!8085642 () Bool)

(assert (=> b!7503666 m!8085642))

(declare-fun m!8085644 () Bool)

(assert (=> b!7503669 m!8085644))

(declare-fun m!8085646 () Bool)

(assert (=> b!7503669 m!8085646))

(declare-fun m!8085648 () Bool)

(assert (=> b!7503669 m!8085648))

(declare-fun m!8085650 () Bool)

(assert (=> b!7503669 m!8085650))

(declare-fun m!8085652 () Bool)

(assert (=> b!7503669 m!8085652))

(declare-fun m!8085654 () Bool)

(assert (=> b!7503669 m!8085654))

(declare-fun m!8085656 () Bool)

(assert (=> b!7503669 m!8085656))

(declare-fun m!8085658 () Bool)

(assert (=> b!7503669 m!8085658))

(declare-fun m!8085660 () Bool)

(assert (=> b!7503669 m!8085660))

(declare-fun m!8085662 () Bool)

(assert (=> b!7503669 m!8085662))

(assert (=> b!7503669 m!8085656))

(declare-fun m!8085664 () Bool)

(assert (=> b!7503667 m!8085664))

(declare-fun m!8085666 () Bool)

(assert (=> start!726146 m!8085666))

(declare-fun m!8085668 () Bool)

(assert (=> b!7503660 m!8085668))

(declare-fun m!8085670 () Bool)

(assert (=> b!7503660 m!8085670))

(declare-fun m!8085672 () Bool)

(assert (=> b!7503660 m!8085672))

(declare-fun m!8085674 () Bool)

(assert (=> b!7503670 m!8085674))

(declare-fun m!8085676 () Bool)

(assert (=> b!7503670 m!8085676))

(declare-fun m!8085678 () Bool)

(assert (=> b!7503670 m!8085678))

(declare-fun m!8085680 () Bool)

(assert (=> b!7503659 m!8085680))

(declare-fun m!8085682 () Bool)

(assert (=> b!7503659 m!8085682))

(declare-fun m!8085684 () Bool)

(assert (=> b!7503659 m!8085684))

(declare-fun m!8085686 () Bool)

(assert (=> b!7503663 m!8085686))

(declare-fun m!8085688 () Bool)

(assert (=> setNonEmpty!56914 m!8085688))

(check-sat tp_is_empty!49695 (not b!7503670) (not b!7503658) (not start!726146) (not b!7503669) (not b!7503659) (not setNonEmpty!56914) (not b!7503663) (not b!7503664) (not b!7503668) (not b!7503671) (not b!7503666) (not b!7503667) (not b!7503660))
(check-sat)
(get-model)

(declare-fun d!2303267 () Bool)

(assert (=> d!2303267 (isPrefix!5973 totalInput!779 totalInput!779)))

(declare-fun lt!2633521 () Unit!166286)

(declare-fun choose!58050 (List!72451 List!72451) Unit!166286)

(assert (=> d!2303267 (= lt!2633521 (choose!58050 totalInput!779 totalInput!779))))

(assert (=> d!2303267 (= (lemmaIsPrefixRefl!3822 totalInput!779 totalInput!779) lt!2633521)))

(declare-fun bs!1937914 () Bool)

(assert (= bs!1937914 d!2303267))

(assert (=> bs!1937914 m!8085670))

(declare-fun m!8085690 () Bool)

(assert (=> bs!1937914 m!8085690))

(assert (=> b!7503660 d!2303267))

(declare-fun b!7503693 () Bool)

(declare-fun res!3010324 () Bool)

(declare-fun e!4473915 () Bool)

(assert (=> b!7503693 (=> (not res!3010324) (not e!4473915))))

(assert (=> b!7503693 (= res!3010324 (= (head!15413 totalInput!779) (head!15413 totalInput!779)))))

(declare-fun b!7503694 () Bool)

(assert (=> b!7503694 (= e!4473915 (isPrefix!5973 (tail!14979 totalInput!779) (tail!14979 totalInput!779)))))

(declare-fun b!7503695 () Bool)

(declare-fun e!4473916 () Bool)

(assert (=> b!7503695 (= e!4473916 (>= (size!42248 totalInput!779) (size!42248 totalInput!779)))))

(declare-fun d!2303269 () Bool)

(assert (=> d!2303269 e!4473916))

(declare-fun res!3010326 () Bool)

(assert (=> d!2303269 (=> res!3010326 e!4473916)))

(declare-fun lt!2633527 () Bool)

(assert (=> d!2303269 (= res!3010326 (not lt!2633527))))

(declare-fun e!4473917 () Bool)

(assert (=> d!2303269 (= lt!2633527 e!4473917)))

(declare-fun res!3010325 () Bool)

(assert (=> d!2303269 (=> res!3010325 e!4473917)))

(assert (=> d!2303269 (= res!3010325 ((_ is Nil!72327) totalInput!779))))

(assert (=> d!2303269 (= (isPrefix!5973 totalInput!779 totalInput!779) lt!2633527)))

(declare-fun b!7503692 () Bool)

(assert (=> b!7503692 (= e!4473917 e!4473915)))

(declare-fun res!3010323 () Bool)

(assert (=> b!7503692 (=> (not res!3010323) (not e!4473915))))

(assert (=> b!7503692 (= res!3010323 (not ((_ is Nil!72327) totalInput!779)))))

(assert (= (and d!2303269 (not res!3010325)) b!7503692))

(assert (= (and b!7503692 res!3010323) b!7503693))

(assert (= (and b!7503693 res!3010324) b!7503694))

(assert (= (and d!2303269 (not res!3010326)) b!7503695))

(declare-fun m!8085706 () Bool)

(assert (=> b!7503693 m!8085706))

(assert (=> b!7503693 m!8085706))

(declare-fun m!8085708 () Bool)

(assert (=> b!7503694 m!8085708))

(assert (=> b!7503694 m!8085708))

(assert (=> b!7503694 m!8085708))

(assert (=> b!7503694 m!8085708))

(declare-fun m!8085710 () Bool)

(assert (=> b!7503694 m!8085710))

(assert (=> b!7503695 m!8085664))

(assert (=> b!7503695 m!8085664))

(assert (=> b!7503660 d!2303269))

(declare-fun d!2303273 () Bool)

(assert (=> d!2303273 (= totalInput!779 testedP!204)))

(declare-fun lt!2633530 () Unit!166286)

(declare-fun choose!58053 (List!72451 List!72451 List!72451) Unit!166286)

(assert (=> d!2303273 (= lt!2633530 (choose!58053 totalInput!779 testedP!204 totalInput!779))))

(assert (=> d!2303273 (isPrefix!5973 totalInput!779 totalInput!779)))

(assert (=> d!2303273 (= (lemmaIsPrefixSameLengthThenSameList!1476 totalInput!779 testedP!204 totalInput!779) lt!2633530)))

(declare-fun bs!1937915 () Bool)

(assert (= bs!1937915 d!2303273))

(declare-fun m!8085712 () Bool)

(assert (=> bs!1937915 m!8085712))

(assert (=> bs!1937915 m!8085670))

(assert (=> b!7503660 d!2303273))

(declare-fun b!7503697 () Bool)

(declare-fun res!3010328 () Bool)

(declare-fun e!4473918 () Bool)

(assert (=> b!7503697 (=> (not res!3010328) (not e!4473918))))

(assert (=> b!7503697 (= res!3010328 (= (head!15413 testedP!204) (head!15413 totalInput!779)))))

(declare-fun b!7503698 () Bool)

(assert (=> b!7503698 (= e!4473918 (isPrefix!5973 (tail!14979 testedP!204) (tail!14979 totalInput!779)))))

(declare-fun b!7503699 () Bool)

(declare-fun e!4473919 () Bool)

(assert (=> b!7503699 (= e!4473919 (>= (size!42248 totalInput!779) (size!42248 testedP!204)))))

(declare-fun d!2303275 () Bool)

(assert (=> d!2303275 e!4473919))

(declare-fun res!3010330 () Bool)

(assert (=> d!2303275 (=> res!3010330 e!4473919)))

(declare-fun lt!2633531 () Bool)

(assert (=> d!2303275 (= res!3010330 (not lt!2633531))))

(declare-fun e!4473920 () Bool)

(assert (=> d!2303275 (= lt!2633531 e!4473920)))

(declare-fun res!3010329 () Bool)

(assert (=> d!2303275 (=> res!3010329 e!4473920)))

(assert (=> d!2303275 (= res!3010329 ((_ is Nil!72327) testedP!204))))

(assert (=> d!2303275 (= (isPrefix!5973 testedP!204 totalInput!779) lt!2633531)))

(declare-fun b!7503696 () Bool)

(assert (=> b!7503696 (= e!4473920 e!4473918)))

(declare-fun res!3010327 () Bool)

(assert (=> b!7503696 (=> (not res!3010327) (not e!4473918))))

(assert (=> b!7503696 (= res!3010327 (not ((_ is Nil!72327) totalInput!779)))))

(assert (= (and d!2303275 (not res!3010329)) b!7503696))

(assert (= (and b!7503696 res!3010327) b!7503697))

(assert (= (and b!7503697 res!3010328) b!7503698))

(assert (= (and d!2303275 (not res!3010330)) b!7503699))

(declare-fun m!8085714 () Bool)

(assert (=> b!7503697 m!8085714))

(assert (=> b!7503697 m!8085706))

(declare-fun m!8085716 () Bool)

(assert (=> b!7503698 m!8085716))

(assert (=> b!7503698 m!8085708))

(assert (=> b!7503698 m!8085716))

(assert (=> b!7503698 m!8085708))

(declare-fun m!8085718 () Bool)

(assert (=> b!7503698 m!8085718))

(assert (=> b!7503699 m!8085664))

(assert (=> b!7503699 m!8085642))

(assert (=> b!7503670 d!2303275))

(declare-fun b!7503701 () Bool)

(declare-fun res!3010332 () Bool)

(declare-fun e!4473921 () Bool)

(assert (=> b!7503701 (=> (not res!3010332) (not e!4473921))))

(assert (=> b!7503701 (= res!3010332 (= (head!15413 testedP!204) (head!15413 lt!2633513)))))

(declare-fun b!7503702 () Bool)

(assert (=> b!7503702 (= e!4473921 (isPrefix!5973 (tail!14979 testedP!204) (tail!14979 lt!2633513)))))

(declare-fun b!7503703 () Bool)

(declare-fun e!4473922 () Bool)

(assert (=> b!7503703 (= e!4473922 (>= (size!42248 lt!2633513) (size!42248 testedP!204)))))

(declare-fun d!2303277 () Bool)

(assert (=> d!2303277 e!4473922))

(declare-fun res!3010334 () Bool)

(assert (=> d!2303277 (=> res!3010334 e!4473922)))

(declare-fun lt!2633532 () Bool)

(assert (=> d!2303277 (= res!3010334 (not lt!2633532))))

(declare-fun e!4473923 () Bool)

(assert (=> d!2303277 (= lt!2633532 e!4473923)))

(declare-fun res!3010333 () Bool)

(assert (=> d!2303277 (=> res!3010333 e!4473923)))

(assert (=> d!2303277 (= res!3010333 ((_ is Nil!72327) testedP!204))))

(assert (=> d!2303277 (= (isPrefix!5973 testedP!204 lt!2633513) lt!2633532)))

(declare-fun b!7503700 () Bool)

(assert (=> b!7503700 (= e!4473923 e!4473921)))

(declare-fun res!3010331 () Bool)

(assert (=> b!7503700 (=> (not res!3010331) (not e!4473921))))

(assert (=> b!7503700 (= res!3010331 (not ((_ is Nil!72327) lt!2633513)))))

(assert (= (and d!2303277 (not res!3010333)) b!7503700))

(assert (= (and b!7503700 res!3010331) b!7503701))

(assert (= (and b!7503701 res!3010332) b!7503702))

(assert (= (and d!2303277 (not res!3010334)) b!7503703))

(assert (=> b!7503701 m!8085714))

(declare-fun m!8085720 () Bool)

(assert (=> b!7503701 m!8085720))

(assert (=> b!7503702 m!8085716))

(declare-fun m!8085722 () Bool)

(assert (=> b!7503702 m!8085722))

(assert (=> b!7503702 m!8085716))

(assert (=> b!7503702 m!8085722))

(declare-fun m!8085724 () Bool)

(assert (=> b!7503702 m!8085724))

(declare-fun m!8085726 () Bool)

(assert (=> b!7503703 m!8085726))

(assert (=> b!7503703 m!8085642))

(assert (=> b!7503670 d!2303277))

(declare-fun d!2303279 () Bool)

(assert (=> d!2303279 (isPrefix!5973 testedP!204 (++!17306 testedP!204 testedSuffix!164))))

(declare-fun lt!2633535 () Unit!166286)

(declare-fun choose!58054 (List!72451 List!72451) Unit!166286)

(assert (=> d!2303279 (= lt!2633535 (choose!58054 testedP!204 testedSuffix!164))))

(assert (=> d!2303279 (= (lemmaConcatTwoListThenFirstIsPrefix!3686 testedP!204 testedSuffix!164) lt!2633535)))

(declare-fun bs!1937916 () Bool)

(assert (= bs!1937916 d!2303279))

(assert (=> bs!1937916 m!8085666))

(assert (=> bs!1937916 m!8085666))

(declare-fun m!8085728 () Bool)

(assert (=> bs!1937916 m!8085728))

(declare-fun m!8085730 () Bool)

(assert (=> bs!1937916 m!8085730))

(assert (=> b!7503670 d!2303279))

(declare-fun d!2303281 () Bool)

(declare-fun lt!2633538 () Int)

(assert (=> d!2303281 (>= lt!2633538 0)))

(declare-fun e!4473926 () Int)

(assert (=> d!2303281 (= lt!2633538 e!4473926)))

(declare-fun c!1385260 () Bool)

(assert (=> d!2303281 (= c!1385260 ((_ is Nil!72327) testedP!204))))

(assert (=> d!2303281 (= (size!42248 testedP!204) lt!2633538)))

(declare-fun b!7503708 () Bool)

(assert (=> b!7503708 (= e!4473926 0)))

(declare-fun b!7503709 () Bool)

(assert (=> b!7503709 (= e!4473926 (+ 1 (size!42248 (t!387020 testedP!204))))))

(assert (= (and d!2303281 c!1385260) b!7503708))

(assert (= (and d!2303281 (not c!1385260)) b!7503709))

(declare-fun m!8085732 () Bool)

(assert (=> b!7503709 m!8085732))

(assert (=> b!7503666 d!2303281))

(declare-fun d!2303283 () Bool)

(declare-fun lt!2633539 () Int)

(assert (=> d!2303283 (>= lt!2633539 0)))

(declare-fun e!4473927 () Int)

(assert (=> d!2303283 (= lt!2633539 e!4473927)))

(declare-fun c!1385261 () Bool)

(assert (=> d!2303283 (= c!1385261 ((_ is Nil!72327) totalInput!779))))

(assert (=> d!2303283 (= (size!42248 totalInput!779) lt!2633539)))

(declare-fun b!7503710 () Bool)

(assert (=> b!7503710 (= e!4473927 0)))

(declare-fun b!7503711 () Bool)

(assert (=> b!7503711 (= e!4473927 (+ 1 (size!42248 (t!387020 totalInput!779))))))

(assert (= (and d!2303283 c!1385261) b!7503710))

(assert (= (and d!2303283 (not c!1385261)) b!7503711))

(declare-fun m!8085734 () Bool)

(assert (=> b!7503711 m!8085734))

(assert (=> b!7503667 d!2303283))

(declare-fun d!2303285 () Bool)

(declare-fun lambda!465135 () Int)

(declare-fun forall!18265 (List!72452 Int) Bool)

(assert (=> d!2303285 (= (inv!92432 setElem!56914) (forall!18265 (exprs!8939 setElem!56914) lambda!465135))))

(declare-fun bs!1937932 () Bool)

(assert (= bs!1937932 d!2303285))

(declare-fun m!8085850 () Bool)

(assert (=> bs!1937932 m!8085850))

(assert (=> setNonEmpty!56914 d!2303285))

(declare-fun b!7503793 () Bool)

(declare-fun e!4473981 () List!72451)

(assert (=> b!7503793 (= e!4473981 testedSuffix!164)))

(declare-fun b!7503794 () Bool)

(assert (=> b!7503794 (= e!4473981 (Cons!72327 (h!78775 testedP!204) (++!17306 (t!387020 testedP!204) testedSuffix!164)))))

(declare-fun b!7503795 () Bool)

(declare-fun res!3010369 () Bool)

(declare-fun e!4473982 () Bool)

(assert (=> b!7503795 (=> (not res!3010369) (not e!4473982))))

(declare-fun lt!2633603 () List!72451)

(assert (=> b!7503795 (= res!3010369 (= (size!42248 lt!2633603) (+ (size!42248 testedP!204) (size!42248 testedSuffix!164))))))

(declare-fun b!7503796 () Bool)

(assert (=> b!7503796 (= e!4473982 (or (not (= testedSuffix!164 Nil!72327)) (= lt!2633603 testedP!204)))))

(declare-fun d!2303331 () Bool)

(assert (=> d!2303331 e!4473982))

(declare-fun res!3010370 () Bool)

(assert (=> d!2303331 (=> (not res!3010370) (not e!4473982))))

(declare-fun content!15287 (List!72451) (InoxSet C!39680))

(assert (=> d!2303331 (= res!3010370 (= (content!15287 lt!2633603) ((_ map or) (content!15287 testedP!204) (content!15287 testedSuffix!164))))))

(assert (=> d!2303331 (= lt!2633603 e!4473981)))

(declare-fun c!1385285 () Bool)

(assert (=> d!2303331 (= c!1385285 ((_ is Nil!72327) testedP!204))))

(assert (=> d!2303331 (= (++!17306 testedP!204 testedSuffix!164) lt!2633603)))

(assert (= (and d!2303331 c!1385285) b!7503793))

(assert (= (and d!2303331 (not c!1385285)) b!7503794))

(assert (= (and d!2303331 res!3010370) b!7503795))

(assert (= (and b!7503795 res!3010369) b!7503796))

(declare-fun m!8085852 () Bool)

(assert (=> b!7503794 m!8085852))

(declare-fun m!8085854 () Bool)

(assert (=> b!7503795 m!8085854))

(assert (=> b!7503795 m!8085642))

(declare-fun m!8085856 () Bool)

(assert (=> b!7503795 m!8085856))

(declare-fun m!8085858 () Bool)

(assert (=> d!2303331 m!8085858))

(declare-fun m!8085860 () Bool)

(assert (=> d!2303331 m!8085860))

(declare-fun m!8085862 () Bool)

(assert (=> d!2303331 m!8085862))

(assert (=> start!726146 d!2303331))

(declare-fun d!2303333 () Bool)

(assert (=> d!2303333 (<= (size!42248 testedP!204) (size!42248 totalInput!779))))

(declare-fun lt!2633606 () Unit!166286)

(declare-fun choose!58056 (List!72451 List!72451) Unit!166286)

(assert (=> d!2303333 (= lt!2633606 (choose!58056 testedP!204 totalInput!779))))

(assert (=> d!2303333 (isPrefix!5973 testedP!204 totalInput!779)))

(assert (=> d!2303333 (= (lemmaIsPrefixThenSmallerEqSize!978 testedP!204 totalInput!779) lt!2633606)))

(declare-fun bs!1937933 () Bool)

(assert (= bs!1937933 d!2303333))

(assert (=> bs!1937933 m!8085642))

(assert (=> bs!1937933 m!8085664))

(declare-fun m!8085864 () Bool)

(assert (=> bs!1937933 m!8085864))

(assert (=> bs!1937933 m!8085674))

(assert (=> b!7503663 d!2303333))

(declare-fun bs!1937934 () Bool)

(declare-fun b!7503801 () Bool)

(declare-fun d!2303335 () Bool)

(assert (= bs!1937934 (and b!7503801 d!2303335)))

(declare-fun lambda!465149 () Int)

(declare-fun lambda!465148 () Int)

(assert (=> bs!1937934 (not (= lambda!465149 lambda!465148))))

(declare-fun bs!1937935 () Bool)

(declare-fun b!7503802 () Bool)

(assert (= bs!1937935 (and b!7503802 d!2303335)))

(declare-fun lambda!465150 () Int)

(assert (=> bs!1937935 (not (= lambda!465150 lambda!465148))))

(declare-fun bs!1937936 () Bool)

(assert (= bs!1937936 (and b!7503802 b!7503801)))

(assert (=> bs!1937936 (= lambda!465150 lambda!465149)))

(declare-fun bm!688650 () Bool)

(declare-datatypes ((List!72454 0))(
  ( (Nil!72330) (Cons!72330 (h!78778 Context!16878) (t!387023 List!72454)) )
))
(declare-fun call!688655 () List!72454)

(declare-fun toList!11820 ((InoxSet Context!16878)) List!72454)

(assert (=> bm!688650 (= call!688655 (toList!11820 z!3716))))

(declare-fun e!4473989 () Unit!166286)

(declare-fun Unit!166292 () Unit!166286)

(assert (=> b!7503802 (= e!4473989 Unit!166292)))

(declare-fun lt!2633623 () List!72454)

(assert (=> b!7503802 (= lt!2633623 call!688655)))

(declare-fun lt!2633629 () Unit!166286)

(declare-fun lemmaForallThenNotExists!458 (List!72454 Int) Unit!166286)

(assert (=> b!7503802 (= lt!2633629 (lemmaForallThenNotExists!458 lt!2633623 lambda!465148))))

(declare-fun call!688656 () Bool)

(assert (=> b!7503802 (not call!688656)))

(declare-fun lt!2633624 () Unit!166286)

(assert (=> b!7503802 (= lt!2633624 lt!2633629)))

(declare-fun c!1385296 () Bool)

(declare-fun lt!2633627 () List!72454)

(declare-fun bm!688651 () Bool)

(declare-fun exists!4844 (List!72454 Int) Bool)

(assert (=> bm!688651 (= call!688656 (exists!4844 (ite c!1385296 lt!2633627 lt!2633623) (ite c!1385296 lambda!465149 lambda!465150)))))

(declare-fun Unit!166293 () Unit!166286)

(assert (=> b!7503801 (= e!4473989 Unit!166293)))

(assert (=> b!7503801 (= lt!2633627 call!688655)))

(declare-fun lt!2633626 () Unit!166286)

(declare-fun lemmaNotForallThenExists!491 (List!72454 Int) Unit!166286)

(assert (=> b!7503801 (= lt!2633626 (lemmaNotForallThenExists!491 lt!2633627 lambda!465148))))

(assert (=> b!7503801 call!688656))

(declare-fun lt!2633625 () Unit!166286)

(assert (=> b!7503801 (= lt!2633625 lt!2633626)))

(declare-fun lt!2633630 () Bool)

(declare-datatypes ((Option!17216 0))(
  ( (None!17215) (Some!17215 (v!54344 List!72451)) )
))
(declare-fun isEmpty!41300 (Option!17216) Bool)

(declare-fun getLanguageWitness!1036 ((InoxSet Context!16878)) Option!17216)

(assert (=> d!2303335 (= lt!2633630 (isEmpty!41300 (getLanguageWitness!1036 z!3716)))))

(declare-fun forall!18266 ((InoxSet Context!16878) Int) Bool)

(assert (=> d!2303335 (= lt!2633630 (forall!18266 z!3716 lambda!465148))))

(declare-fun lt!2633628 () Unit!166286)

(assert (=> d!2303335 (= lt!2633628 e!4473989)))

(assert (=> d!2303335 (= c!1385296 (not (forall!18266 z!3716 lambda!465148)))))

(assert (=> d!2303335 (= (lostCauseZipper!1375 z!3716) lt!2633630)))

(assert (= (and d!2303335 c!1385296) b!7503801))

(assert (= (and d!2303335 (not c!1385296)) b!7503802))

(assert (= (or b!7503801 b!7503802) bm!688650))

(assert (= (or b!7503801 b!7503802) bm!688651))

(declare-fun m!8085866 () Bool)

(assert (=> bm!688650 m!8085866))

(declare-fun m!8085868 () Bool)

(assert (=> d!2303335 m!8085868))

(assert (=> d!2303335 m!8085868))

(declare-fun m!8085870 () Bool)

(assert (=> d!2303335 m!8085870))

(declare-fun m!8085872 () Bool)

(assert (=> d!2303335 m!8085872))

(assert (=> d!2303335 m!8085872))

(declare-fun m!8085874 () Bool)

(assert (=> b!7503802 m!8085874))

(declare-fun m!8085876 () Bool)

(assert (=> bm!688651 m!8085876))

(declare-fun m!8085878 () Bool)

(assert (=> b!7503801 m!8085878))

(assert (=> b!7503659 d!2303335))

(declare-fun d!2303337 () Bool)

(assert (=> d!2303337 (= testedSuffix!164 lt!2633505)))

(declare-fun lt!2633633 () Unit!166286)

(declare-fun choose!58057 (List!72451 List!72451 List!72451 List!72451 List!72451) Unit!166286)

(assert (=> d!2303337 (= lt!2633633 (choose!58057 testedP!204 testedSuffix!164 testedP!204 lt!2633505 totalInput!779))))

(assert (=> d!2303337 (isPrefix!5973 testedP!204 totalInput!779)))

(assert (=> d!2303337 (= (lemmaSamePrefixThenSameSuffix!2778 testedP!204 testedSuffix!164 testedP!204 lt!2633505 totalInput!779) lt!2633633)))

(declare-fun bs!1937937 () Bool)

(assert (= bs!1937937 d!2303337))

(declare-fun m!8085880 () Bool)

(assert (=> bs!1937937 m!8085880))

(assert (=> bs!1937937 m!8085674))

(assert (=> b!7503659 d!2303337))

(declare-fun d!2303339 () Bool)

(declare-fun lt!2633636 () List!72451)

(assert (=> d!2303339 (= (++!17306 testedP!204 lt!2633636) totalInput!779)))

(declare-fun e!4473992 () List!72451)

(assert (=> d!2303339 (= lt!2633636 e!4473992)))

(declare-fun c!1385299 () Bool)

(assert (=> d!2303339 (= c!1385299 ((_ is Cons!72327) testedP!204))))

(assert (=> d!2303339 (>= (size!42248 totalInput!779) (size!42248 testedP!204))))

(assert (=> d!2303339 (= (getSuffix!3475 totalInput!779 testedP!204) lt!2633636)))

(declare-fun b!7503807 () Bool)

(assert (=> b!7503807 (= e!4473992 (getSuffix!3475 (tail!14979 totalInput!779) (t!387020 testedP!204)))))

(declare-fun b!7503808 () Bool)

(assert (=> b!7503808 (= e!4473992 totalInput!779)))

(assert (= (and d!2303339 c!1385299) b!7503807))

(assert (= (and d!2303339 (not c!1385299)) b!7503808))

(declare-fun m!8085882 () Bool)

(assert (=> d!2303339 m!8085882))

(assert (=> d!2303339 m!8085664))

(assert (=> d!2303339 m!8085642))

(assert (=> b!7503807 m!8085708))

(assert (=> b!7503807 m!8085708))

(declare-fun m!8085884 () Bool)

(assert (=> b!7503807 m!8085884))

(assert (=> b!7503659 d!2303339))

(declare-fun b!7503809 () Bool)

(declare-fun e!4473993 () List!72451)

(assert (=> b!7503809 (= e!4473993 (Cons!72327 (head!15413 lt!2633505) Nil!72327))))

(declare-fun b!7503810 () Bool)

(assert (=> b!7503810 (= e!4473993 (Cons!72327 (h!78775 testedP!204) (++!17306 (t!387020 testedP!204) (Cons!72327 (head!15413 lt!2633505) Nil!72327))))))

(declare-fun b!7503811 () Bool)

(declare-fun res!3010371 () Bool)

(declare-fun e!4473994 () Bool)

(assert (=> b!7503811 (=> (not res!3010371) (not e!4473994))))

(declare-fun lt!2633637 () List!72451)

(assert (=> b!7503811 (= res!3010371 (= (size!42248 lt!2633637) (+ (size!42248 testedP!204) (size!42248 (Cons!72327 (head!15413 lt!2633505) Nil!72327)))))))

(declare-fun b!7503812 () Bool)

(assert (=> b!7503812 (= e!4473994 (or (not (= (Cons!72327 (head!15413 lt!2633505) Nil!72327) Nil!72327)) (= lt!2633637 testedP!204)))))

(declare-fun d!2303341 () Bool)

(assert (=> d!2303341 e!4473994))

(declare-fun res!3010372 () Bool)

(assert (=> d!2303341 (=> (not res!3010372) (not e!4473994))))

(assert (=> d!2303341 (= res!3010372 (= (content!15287 lt!2633637) ((_ map or) (content!15287 testedP!204) (content!15287 (Cons!72327 (head!15413 lt!2633505) Nil!72327)))))))

(assert (=> d!2303341 (= lt!2633637 e!4473993)))

(declare-fun c!1385300 () Bool)

(assert (=> d!2303341 (= c!1385300 ((_ is Nil!72327) testedP!204))))

(assert (=> d!2303341 (= (++!17306 testedP!204 (Cons!72327 (head!15413 lt!2633505) Nil!72327)) lt!2633637)))

(assert (= (and d!2303341 c!1385300) b!7503809))

(assert (= (and d!2303341 (not c!1385300)) b!7503810))

(assert (= (and d!2303341 res!3010372) b!7503811))

(assert (= (and b!7503811 res!3010371) b!7503812))

(declare-fun m!8085886 () Bool)

(assert (=> b!7503810 m!8085886))

(declare-fun m!8085888 () Bool)

(assert (=> b!7503811 m!8085888))

(assert (=> b!7503811 m!8085642))

(declare-fun m!8085890 () Bool)

(assert (=> b!7503811 m!8085890))

(declare-fun m!8085892 () Bool)

(assert (=> d!2303341 m!8085892))

(assert (=> d!2303341 m!8085860))

(declare-fun m!8085894 () Bool)

(assert (=> d!2303341 m!8085894))

(assert (=> b!7503669 d!2303341))

(declare-fun d!2303343 () Bool)

(assert (=> d!2303343 (= (head!15413 lt!2633505) (h!78775 lt!2633505))))

(assert (=> b!7503669 d!2303343))

(declare-fun b!7503813 () Bool)

(declare-fun e!4473995 () List!72451)

(assert (=> b!7503813 (= e!4473995 (Cons!72327 lt!2633511 Nil!72327))))

(declare-fun b!7503814 () Bool)

(assert (=> b!7503814 (= e!4473995 (Cons!72327 (h!78775 testedP!204) (++!17306 (t!387020 testedP!204) (Cons!72327 lt!2633511 Nil!72327))))))

(declare-fun b!7503815 () Bool)

(declare-fun res!3010373 () Bool)

(declare-fun e!4473996 () Bool)

(assert (=> b!7503815 (=> (not res!3010373) (not e!4473996))))

(declare-fun lt!2633638 () List!72451)

(assert (=> b!7503815 (= res!3010373 (= (size!42248 lt!2633638) (+ (size!42248 testedP!204) (size!42248 (Cons!72327 lt!2633511 Nil!72327)))))))

(declare-fun b!7503816 () Bool)

(assert (=> b!7503816 (= e!4473996 (or (not (= (Cons!72327 lt!2633511 Nil!72327) Nil!72327)) (= lt!2633638 testedP!204)))))

(declare-fun d!2303345 () Bool)

(assert (=> d!2303345 e!4473996))

(declare-fun res!3010374 () Bool)

(assert (=> d!2303345 (=> (not res!3010374) (not e!4473996))))

(assert (=> d!2303345 (= res!3010374 (= (content!15287 lt!2633638) ((_ map or) (content!15287 testedP!204) (content!15287 (Cons!72327 lt!2633511 Nil!72327)))))))

(assert (=> d!2303345 (= lt!2633638 e!4473995)))

(declare-fun c!1385301 () Bool)

(assert (=> d!2303345 (= c!1385301 ((_ is Nil!72327) testedP!204))))

(assert (=> d!2303345 (= (++!17306 testedP!204 (Cons!72327 lt!2633511 Nil!72327)) lt!2633638)))

(assert (= (and d!2303345 c!1385301) b!7503813))

(assert (= (and d!2303345 (not c!1385301)) b!7503814))

(assert (= (and d!2303345 res!3010374) b!7503815))

(assert (= (and b!7503815 res!3010373) b!7503816))

(declare-fun m!8085896 () Bool)

(assert (=> b!7503814 m!8085896))

(declare-fun m!8085898 () Bool)

(assert (=> b!7503815 m!8085898))

(assert (=> b!7503815 m!8085642))

(declare-fun m!8085900 () Bool)

(assert (=> b!7503815 m!8085900))

(declare-fun m!8085902 () Bool)

(assert (=> d!2303345 m!8085902))

(assert (=> d!2303345 m!8085860))

(declare-fun m!8085904 () Bool)

(assert (=> d!2303345 m!8085904))

(assert (=> b!7503669 d!2303345))

(declare-fun b!7503818 () Bool)

(declare-fun res!3010376 () Bool)

(declare-fun e!4473997 () Bool)

(assert (=> b!7503818 (=> (not res!3010376) (not e!4473997))))

(assert (=> b!7503818 (= res!3010376 (= (head!15413 (++!17306 testedP!204 (Cons!72327 (head!15413 lt!2633505) Nil!72327))) (head!15413 totalInput!779)))))

(declare-fun b!7503819 () Bool)

(assert (=> b!7503819 (= e!4473997 (isPrefix!5973 (tail!14979 (++!17306 testedP!204 (Cons!72327 (head!15413 lt!2633505) Nil!72327))) (tail!14979 totalInput!779)))))

(declare-fun e!4473998 () Bool)

(declare-fun b!7503820 () Bool)

(assert (=> b!7503820 (= e!4473998 (>= (size!42248 totalInput!779) (size!42248 (++!17306 testedP!204 (Cons!72327 (head!15413 lt!2633505) Nil!72327)))))))

(declare-fun d!2303347 () Bool)

(assert (=> d!2303347 e!4473998))

(declare-fun res!3010378 () Bool)

(assert (=> d!2303347 (=> res!3010378 e!4473998)))

(declare-fun lt!2633639 () Bool)

(assert (=> d!2303347 (= res!3010378 (not lt!2633639))))

(declare-fun e!4473999 () Bool)

(assert (=> d!2303347 (= lt!2633639 e!4473999)))

(declare-fun res!3010377 () Bool)

(assert (=> d!2303347 (=> res!3010377 e!4473999)))

(assert (=> d!2303347 (= res!3010377 ((_ is Nil!72327) (++!17306 testedP!204 (Cons!72327 (head!15413 lt!2633505) Nil!72327))))))

(assert (=> d!2303347 (= (isPrefix!5973 (++!17306 testedP!204 (Cons!72327 (head!15413 lt!2633505) Nil!72327)) totalInput!779) lt!2633639)))

(declare-fun b!7503817 () Bool)

(assert (=> b!7503817 (= e!4473999 e!4473997)))

(declare-fun res!3010375 () Bool)

(assert (=> b!7503817 (=> (not res!3010375) (not e!4473997))))

(assert (=> b!7503817 (= res!3010375 (not ((_ is Nil!72327) totalInput!779)))))

(assert (= (and d!2303347 (not res!3010377)) b!7503817))

(assert (= (and b!7503817 res!3010375) b!7503818))

(assert (= (and b!7503818 res!3010376) b!7503819))

(assert (= (and d!2303347 (not res!3010378)) b!7503820))

(assert (=> b!7503818 m!8085656))

(declare-fun m!8085906 () Bool)

(assert (=> b!7503818 m!8085906))

(assert (=> b!7503818 m!8085706))

(assert (=> b!7503819 m!8085656))

(declare-fun m!8085908 () Bool)

(assert (=> b!7503819 m!8085908))

(assert (=> b!7503819 m!8085708))

(assert (=> b!7503819 m!8085908))

(assert (=> b!7503819 m!8085708))

(declare-fun m!8085910 () Bool)

(assert (=> b!7503819 m!8085910))

(assert (=> b!7503820 m!8085664))

(assert (=> b!7503820 m!8085656))

(declare-fun m!8085912 () Bool)

(assert (=> b!7503820 m!8085912))

(assert (=> b!7503669 d!2303347))

(declare-fun bs!1937938 () Bool)

(declare-fun d!2303349 () Bool)

(assert (= bs!1937938 (and d!2303349 d!2303335)))

(declare-fun lambda!465153 () Int)

(assert (=> bs!1937938 (not (= lambda!465153 lambda!465148))))

(declare-fun bs!1937939 () Bool)

(assert (= bs!1937939 (and d!2303349 b!7503801)))

(assert (=> bs!1937939 (not (= lambda!465153 lambda!465149))))

(declare-fun bs!1937940 () Bool)

(assert (= bs!1937940 (and d!2303349 b!7503802)))

(assert (=> bs!1937940 (not (= lambda!465153 lambda!465150))))

(declare-fun exists!4845 ((InoxSet Context!16878) Int) Bool)

(assert (=> d!2303349 (= (nullableZipper!3167 z!3716) (exists!4845 z!3716 lambda!465153))))

(declare-fun bs!1937941 () Bool)

(assert (= bs!1937941 d!2303349))

(declare-fun m!8085914 () Bool)

(assert (=> bs!1937941 m!8085914))

(assert (=> b!7503669 d!2303349))

(declare-fun d!2303351 () Bool)

(assert (=> d!2303351 (= (tail!14979 testedSuffix!164) (t!387020 testedSuffix!164))))

(assert (=> b!7503669 d!2303351))

(declare-fun d!2303353 () Bool)

(assert (=> d!2303353 (= (head!15413 testedSuffix!164) (h!78775 testedSuffix!164))))

(assert (=> b!7503669 d!2303353))

(declare-fun d!2303355 () Bool)

(assert (=> d!2303355 (= (++!17306 (++!17306 testedP!204 (Cons!72327 lt!2633511 Nil!72327)) lt!2633504) totalInput!779)))

(declare-fun lt!2633642 () Unit!166286)

(declare-fun choose!58058 (List!72451 C!39680 List!72451 List!72451) Unit!166286)

(assert (=> d!2303355 (= lt!2633642 (choose!58058 testedP!204 lt!2633511 lt!2633504 totalInput!779))))

(assert (=> d!2303355 (= (++!17306 testedP!204 (Cons!72327 lt!2633511 lt!2633504)) totalInput!779)))

(assert (=> d!2303355 (= (lemmaMoveElementToOtherListKeepsConcatEq!3147 testedP!204 lt!2633511 lt!2633504 totalInput!779) lt!2633642)))

(declare-fun bs!1937942 () Bool)

(assert (= bs!1937942 d!2303355))

(assert (=> bs!1937942 m!8085646))

(assert (=> bs!1937942 m!8085646))

(declare-fun m!8085916 () Bool)

(assert (=> bs!1937942 m!8085916))

(declare-fun m!8085918 () Bool)

(assert (=> bs!1937942 m!8085918))

(declare-fun m!8085920 () Bool)

(assert (=> bs!1937942 m!8085920))

(assert (=> b!7503669 d!2303355))

(declare-fun d!2303357 () Bool)

(assert (=> d!2303357 (isPrefix!5973 (++!17306 testedP!204 (Cons!72327 (head!15413 (getSuffix!3475 totalInput!779 testedP!204)) Nil!72327)) totalInput!779)))

(declare-fun lt!2633645 () Unit!166286)

(declare-fun choose!58059 (List!72451 List!72451) Unit!166286)

(assert (=> d!2303357 (= lt!2633645 (choose!58059 testedP!204 totalInput!779))))

(assert (=> d!2303357 (isPrefix!5973 testedP!204 totalInput!779)))

(assert (=> d!2303357 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1114 testedP!204 totalInput!779) lt!2633645)))

(declare-fun bs!1937943 () Bool)

(assert (= bs!1937943 d!2303357))

(assert (=> bs!1937943 m!8085684))

(declare-fun m!8085922 () Bool)

(assert (=> bs!1937943 m!8085922))

(declare-fun m!8085924 () Bool)

(assert (=> bs!1937943 m!8085924))

(assert (=> bs!1937943 m!8085674))

(declare-fun m!8085926 () Bool)

(assert (=> bs!1937943 m!8085926))

(assert (=> bs!1937943 m!8085926))

(declare-fun m!8085928 () Bool)

(assert (=> bs!1937943 m!8085928))

(assert (=> bs!1937943 m!8085684))

(assert (=> b!7503669 d!2303357))

(declare-fun b!7503821 () Bool)

(declare-fun e!4474000 () List!72451)

(assert (=> b!7503821 (= e!4474000 lt!2633504)))

(declare-fun b!7503822 () Bool)

(assert (=> b!7503822 (= e!4474000 (Cons!72327 (h!78775 lt!2633515) (++!17306 (t!387020 lt!2633515) lt!2633504)))))

(declare-fun b!7503823 () Bool)

(declare-fun res!3010379 () Bool)

(declare-fun e!4474001 () Bool)

(assert (=> b!7503823 (=> (not res!3010379) (not e!4474001))))

(declare-fun lt!2633646 () List!72451)

(assert (=> b!7503823 (= res!3010379 (= (size!42248 lt!2633646) (+ (size!42248 lt!2633515) (size!42248 lt!2633504))))))

(declare-fun b!7503824 () Bool)

(assert (=> b!7503824 (= e!4474001 (or (not (= lt!2633504 Nil!72327)) (= lt!2633646 lt!2633515)))))

(declare-fun d!2303359 () Bool)

(assert (=> d!2303359 e!4474001))

(declare-fun res!3010380 () Bool)

(assert (=> d!2303359 (=> (not res!3010380) (not e!4474001))))

(assert (=> d!2303359 (= res!3010380 (= (content!15287 lt!2633646) ((_ map or) (content!15287 lt!2633515) (content!15287 lt!2633504))))))

(assert (=> d!2303359 (= lt!2633646 e!4474000)))

(declare-fun c!1385304 () Bool)

(assert (=> d!2303359 (= c!1385304 ((_ is Nil!72327) lt!2633515))))

(assert (=> d!2303359 (= (++!17306 lt!2633515 lt!2633504) lt!2633646)))

(assert (= (and d!2303359 c!1385304) b!7503821))

(assert (= (and d!2303359 (not c!1385304)) b!7503822))

(assert (= (and d!2303359 res!3010380) b!7503823))

(assert (= (and b!7503823 res!3010379) b!7503824))

(declare-fun m!8085930 () Bool)

(assert (=> b!7503822 m!8085930))

(declare-fun m!8085932 () Bool)

(assert (=> b!7503823 m!8085932))

(declare-fun m!8085934 () Bool)

(assert (=> b!7503823 m!8085934))

(declare-fun m!8085936 () Bool)

(assert (=> b!7503823 m!8085936))

(declare-fun m!8085938 () Bool)

(assert (=> d!2303359 m!8085938))

(declare-fun m!8085940 () Bool)

(assert (=> d!2303359 m!8085940))

(declare-fun m!8085942 () Bool)

(assert (=> d!2303359 m!8085942))

(assert (=> b!7503669 d!2303359))

(declare-fun b!7503829 () Bool)

(declare-fun e!4474004 () Bool)

(declare-fun tp!2178205 () Bool)

(declare-fun tp!2178206 () Bool)

(assert (=> b!7503829 (= e!4474004 (and tp!2178205 tp!2178206))))

(assert (=> b!7503671 (= tp!2178183 e!4474004)))

(assert (= (and b!7503671 ((_ is Cons!72328) (exprs!8939 setElem!56914))) b!7503829))

(declare-fun b!7503834 () Bool)

(declare-fun e!4474007 () Bool)

(declare-fun tp!2178209 () Bool)

(assert (=> b!7503834 (= e!4474007 (and tp_is_empty!49695 tp!2178209))))

(assert (=> b!7503658 (= tp!2178181 e!4474007)))

(assert (= (and b!7503658 ((_ is Cons!72327) (t!387020 testedSuffix!164))) b!7503834))

(declare-fun condSetEmpty!56920 () Bool)

(assert (=> setNonEmpty!56914 (= condSetEmpty!56920 (= setRest!56914 ((as const (Array Context!16878 Bool)) false)))))

(declare-fun setRes!56920 () Bool)

(assert (=> setNonEmpty!56914 (= tp!2178179 setRes!56920)))

(declare-fun setIsEmpty!56920 () Bool)

(assert (=> setIsEmpty!56920 setRes!56920))

(declare-fun tp!2178215 () Bool)

(declare-fun setNonEmpty!56920 () Bool)

(declare-fun e!4474010 () Bool)

(declare-fun setElem!56920 () Context!16878)

(assert (=> setNonEmpty!56920 (= setRes!56920 (and tp!2178215 (inv!92432 setElem!56920) e!4474010))))

(declare-fun setRest!56920 () (InoxSet Context!16878))

(assert (=> setNonEmpty!56920 (= setRest!56914 ((_ map or) (store ((as const (Array Context!16878 Bool)) false) setElem!56920 true) setRest!56920))))

(declare-fun b!7503839 () Bool)

(declare-fun tp!2178214 () Bool)

(assert (=> b!7503839 (= e!4474010 tp!2178214)))

(assert (= (and setNonEmpty!56914 condSetEmpty!56920) setIsEmpty!56920))

(assert (= (and setNonEmpty!56914 (not condSetEmpty!56920)) setNonEmpty!56920))

(assert (= setNonEmpty!56920 b!7503839))

(declare-fun m!8085944 () Bool)

(assert (=> setNonEmpty!56920 m!8085944))

(declare-fun b!7503840 () Bool)

(declare-fun e!4474011 () Bool)

(declare-fun tp!2178216 () Bool)

(assert (=> b!7503840 (= e!4474011 (and tp_is_empty!49695 tp!2178216))))

(assert (=> b!7503668 (= tp!2178180 e!4474011)))

(assert (= (and b!7503668 ((_ is Cons!72327) (t!387020 testedP!204))) b!7503840))

(declare-fun b!7503841 () Bool)

(declare-fun e!4474012 () Bool)

(declare-fun tp!2178217 () Bool)

(assert (=> b!7503841 (= e!4474012 (and tp_is_empty!49695 tp!2178217))))

(assert (=> b!7503664 (= tp!2178182 e!4474012)))

(assert (= (and b!7503664 ((_ is Cons!72327) (t!387020 totalInput!779))) b!7503841))

(check-sat tp_is_empty!49695 (not d!2303279) (not b!7503701) (not d!2303333) (not b!7503839) (not b!7503711) (not b!7503693) (not b!7503801) (not b!7503820) (not b!7503834) (not b!7503814) (not setNonEmpty!56920) (not b!7503818) (not d!2303357) (not d!2303359) (not b!7503794) (not bm!688651) (not b!7503819) (not b!7503840) (not b!7503702) (not b!7503694) (not b!7503703) (not d!2303273) (not b!7503807) (not b!7503802) (not d!2303339) (not b!7503709) (not d!2303267) (not d!2303337) (not b!7503699) (not b!7503823) (not b!7503697) (not b!7503841) (not b!7503811) (not b!7503829) (not b!7503698) (not d!2303331) (not d!2303341) (not d!2303355) (not b!7503822) (not b!7503815) (not b!7503695) (not d!2303285) (not b!7503795) (not d!2303335) (not b!7503810) (not bm!688650) (not d!2303349) (not d!2303345))
(check-sat)
