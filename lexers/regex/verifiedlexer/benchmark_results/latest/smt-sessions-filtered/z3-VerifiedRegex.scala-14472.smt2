; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753072 () Bool)

(assert start!753072)

(declare-fun b!8004664 () Bool)

(declare-fun e!4715389 () Bool)

(declare-fun tp_is_empty!53793 () Bool)

(declare-fun tp!2394986 () Bool)

(assert (=> b!8004664 (= e!4715389 (and tp_is_empty!53793 tp!2394986))))

(declare-fun b!8004665 () Bool)

(declare-fun e!4715393 () Bool)

(declare-fun e!4715391 () Bool)

(assert (=> b!8004665 (= e!4715393 e!4715391)))

(declare-fun res!3165313 () Bool)

(assert (=> b!8004665 (=> res!3165313 e!4715391)))

(declare-datatypes ((C!43588 0))(
  ( (C!43589 (val!32342 Int)) )
))
(declare-datatypes ((Regex!21625 0))(
  ( (ElementMatch!21625 (c!1469506 C!43588)) (Concat!30624 (regOne!43762 Regex!21625) (regTwo!43762 Regex!21625)) (EmptyExpr!21625) (Star!21625 (reg!21954 Regex!21625)) (EmptyLang!21625) (Union!21625 (regOne!43763 Regex!21625) (regTwo!43763 Regex!21625)) )
))
(declare-fun r!15422 () Regex!21625)

(declare-fun lostCause!2022 (Regex!21625) Bool)

(assert (=> b!8004665 (= res!3165313 (lostCause!2022 r!15422))))

(declare-datatypes ((List!74854 0))(
  ( (Nil!74730) (Cons!74730 (h!81178 C!43588) (t!390597 List!74854)) )
))
(declare-fun testedSuffix!271 () List!74854)

(declare-fun lt!2714494 () List!74854)

(assert (=> b!8004665 (and (= testedSuffix!271 lt!2714494) (= lt!2714494 testedSuffix!271))))

(declare-fun totalInput!1349 () List!74854)

(declare-datatypes ((Unit!170658 0))(
  ( (Unit!170659) )
))
(declare-fun lt!2714487 () Unit!170658)

(declare-fun testedP!353 () List!74854)

(declare-fun lemmaSamePrefixThenSameSuffix!3042 (List!74854 List!74854 List!74854 List!74854 List!74854) Unit!170658)

(assert (=> b!8004665 (= lt!2714487 (lemmaSamePrefixThenSameSuffix!3042 testedP!353 testedSuffix!271 testedP!353 lt!2714494 totalInput!1349))))

(declare-fun getSuffix!3876 (List!74854 List!74854) List!74854)

(assert (=> b!8004665 (= lt!2714494 (getSuffix!3876 totalInput!1349 testedP!353))))

(declare-fun b!8004666 () Bool)

(declare-fun e!4715385 () Bool)

(declare-fun tp!2394983 () Bool)

(assert (=> b!8004666 (= e!4715385 (and tp_is_empty!53793 tp!2394983))))

(declare-fun b!8004667 () Bool)

(declare-fun e!4715388 () Bool)

(declare-fun tp!2394984 () Bool)

(assert (=> b!8004667 (= e!4715388 tp!2394984)))

(declare-fun res!3165316 () Bool)

(declare-fun e!4715395 () Bool)

(assert (=> start!753072 (=> (not res!3165316) (not e!4715395))))

(declare-fun validRegex!11929 (Regex!21625) Bool)

(assert (=> start!753072 (= res!3165316 (validRegex!11929 r!15422))))

(assert (=> start!753072 e!4715395))

(assert (=> start!753072 e!4715389))

(assert (=> start!753072 true))

(assert (=> start!753072 e!4715385))

(assert (=> start!753072 e!4715388))

(declare-fun e!4715394 () Bool)

(assert (=> start!753072 e!4715394))

(declare-fun b!8004668 () Bool)

(declare-fun tp!2394985 () Bool)

(declare-fun tp!2394982 () Bool)

(assert (=> b!8004668 (= e!4715388 (and tp!2394985 tp!2394982))))

(declare-fun b!8004669 () Bool)

(assert (=> b!8004669 (= e!4715388 tp_is_empty!53793)))

(declare-fun b!8004670 () Bool)

(declare-fun e!4715387 () Unit!170658)

(declare-fun Unit!170660 () Unit!170658)

(assert (=> b!8004670 (= e!4715387 Unit!170660)))

(declare-fun lt!2714493 () Unit!170658)

(declare-fun lemmaIsPrefixRefl!4131 (List!74854 List!74854) Unit!170658)

(assert (=> b!8004670 (= lt!2714493 (lemmaIsPrefixRefl!4131 totalInput!1349 totalInput!1349))))

(declare-fun isPrefix!6679 (List!74854 List!74854) Bool)

(assert (=> b!8004670 (isPrefix!6679 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714490 () Unit!170658)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1705 (List!74854 List!74854 List!74854) Unit!170658)

(assert (=> b!8004670 (= lt!2714490 (lemmaIsPrefixSameLengthThenSameList!1705 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8004670 false))

(declare-fun b!8004671 () Bool)

(declare-fun e!4715386 () Bool)

(declare-fun e!4715390 () Bool)

(assert (=> b!8004671 (= e!4715386 e!4715390)))

(declare-fun res!3165314 () Bool)

(assert (=> b!8004671 (=> (not res!3165314) (not e!4715390))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2714492 () Int)

(assert (=> b!8004671 (= res!3165314 (= totalInputSize!629 lt!2714492))))

(declare-fun size!43527 (List!74854) Int)

(assert (=> b!8004671 (= lt!2714492 (size!43527 totalInput!1349))))

(declare-fun b!8004672 () Bool)

(declare-fun res!3165315 () Bool)

(assert (=> b!8004672 (=> res!3165315 e!4715391)))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8004672 (= res!3165315 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8004673 () Bool)

(declare-fun e!4715392 () Bool)

(assert (=> b!8004673 (= e!4715395 e!4715392)))

(declare-fun res!3165310 () Bool)

(assert (=> b!8004673 (=> (not res!3165310) (not e!4715392))))

(declare-fun lt!2714491 () List!74854)

(assert (=> b!8004673 (= res!3165310 (= lt!2714491 totalInput!1349))))

(declare-fun ++!18451 (List!74854 List!74854) List!74854)

(assert (=> b!8004673 (= lt!2714491 (++!18451 testedP!353 testedSuffix!271))))

(declare-fun b!8004674 () Bool)

(declare-fun e!4715384 () Bool)

(assert (=> b!8004674 (= e!4715391 e!4715384)))

(declare-fun res!3165312 () Bool)

(assert (=> b!8004674 (=> res!3165312 e!4715384)))

(declare-fun lt!2714484 () Int)

(assert (=> b!8004674 (= res!3165312 (>= lt!2714484 lt!2714492))))

(declare-fun lt!2714495 () Unit!170658)

(assert (=> b!8004674 (= lt!2714495 e!4715387)))

(declare-fun c!1469505 () Bool)

(assert (=> b!8004674 (= c!1469505 (= lt!2714484 lt!2714492))))

(assert (=> b!8004674 (<= lt!2714484 lt!2714492)))

(declare-fun lt!2714486 () Unit!170658)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1180 (List!74854 List!74854) Unit!170658)

(assert (=> b!8004674 (= lt!2714486 (lemmaIsPrefixThenSmallerEqSize!1180 testedP!353 totalInput!1349))))

(declare-fun b!8004675 () Bool)

(assert (=> b!8004675 (= e!4715390 (not e!4715393))))

(declare-fun res!3165309 () Bool)

(assert (=> b!8004675 (=> res!3165309 e!4715393)))

(assert (=> b!8004675 (= res!3165309 (not (isPrefix!6679 testedP!353 totalInput!1349)))))

(assert (=> b!8004675 (isPrefix!6679 testedP!353 lt!2714491)))

(declare-fun lt!2714488 () Unit!170658)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3910 (List!74854 List!74854) Unit!170658)

(assert (=> b!8004675 (= lt!2714488 (lemmaConcatTwoListThenFirstIsPrefix!3910 testedP!353 testedSuffix!271))))

(declare-fun b!8004676 () Bool)

(declare-fun tp!2394981 () Bool)

(assert (=> b!8004676 (= e!4715394 (and tp_is_empty!53793 tp!2394981))))

(declare-fun b!8004677 () Bool)

(assert (=> b!8004677 (= e!4715384 (not (= testedSuffix!271 Nil!74730)))))

(declare-fun head!16317 (List!74854) C!43588)

(assert (=> b!8004677 (isPrefix!6679 (++!18451 testedP!353 (Cons!74730 (head!16317 lt!2714494) Nil!74730)) totalInput!1349)))

(declare-fun lt!2714485 () Unit!170658)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1376 (List!74854 List!74854) Unit!170658)

(assert (=> b!8004677 (= lt!2714485 (lemmaAddHeadSuffixToPrefixStillPrefix!1376 testedP!353 totalInput!1349))))

(declare-fun lt!2714489 () List!74854)

(assert (=> b!8004677 (= lt!2714489 (++!18451 testedP!353 (Cons!74730 (head!16317 testedSuffix!271) Nil!74730)))))

(declare-fun b!8004678 () Bool)

(declare-fun Unit!170661 () Unit!170658)

(assert (=> b!8004678 (= e!4715387 Unit!170661)))

(declare-fun b!8004679 () Bool)

(declare-fun tp!2394979 () Bool)

(declare-fun tp!2394980 () Bool)

(assert (=> b!8004679 (= e!4715388 (and tp!2394979 tp!2394980))))

(declare-fun b!8004680 () Bool)

(assert (=> b!8004680 (= e!4715392 e!4715386)))

(declare-fun res!3165311 () Bool)

(assert (=> b!8004680 (=> (not res!3165311) (not e!4715386))))

(assert (=> b!8004680 (= res!3165311 (= testedPSize!271 lt!2714484))))

(assert (=> b!8004680 (= lt!2714484 (size!43527 testedP!353))))

(assert (= (and start!753072 res!3165316) b!8004673))

(assert (= (and b!8004673 res!3165310) b!8004680))

(assert (= (and b!8004680 res!3165311) b!8004671))

(assert (= (and b!8004671 res!3165314) b!8004675))

(assert (= (and b!8004675 (not res!3165309)) b!8004665))

(assert (= (and b!8004665 (not res!3165313)) b!8004672))

(assert (= (and b!8004672 (not res!3165315)) b!8004674))

(assert (= (and b!8004674 c!1469505) b!8004670))

(assert (= (and b!8004674 (not c!1469505)) b!8004678))

(assert (= (and b!8004674 (not res!3165312)) b!8004677))

(get-info :version)

(assert (= (and start!753072 ((_ is Cons!74730) totalInput!1349)) b!8004664))

(assert (= (and start!753072 ((_ is Cons!74730) testedSuffix!271)) b!8004666))

(assert (= (and start!753072 ((_ is ElementMatch!21625) r!15422)) b!8004669))

(assert (= (and start!753072 ((_ is Concat!30624) r!15422)) b!8004668))

(assert (= (and start!753072 ((_ is Star!21625) r!15422)) b!8004667))

(assert (= (and start!753072 ((_ is Union!21625) r!15422)) b!8004679))

(assert (= (and start!753072 ((_ is Cons!74730) testedP!353)) b!8004676))

(declare-fun m!8370162 () Bool)

(assert (=> b!8004680 m!8370162))

(declare-fun m!8370164 () Bool)

(assert (=> b!8004677 m!8370164))

(declare-fun m!8370166 () Bool)

(assert (=> b!8004677 m!8370166))

(declare-fun m!8370168 () Bool)

(assert (=> b!8004677 m!8370168))

(declare-fun m!8370170 () Bool)

(assert (=> b!8004677 m!8370170))

(declare-fun m!8370172 () Bool)

(assert (=> b!8004677 m!8370172))

(assert (=> b!8004677 m!8370164))

(declare-fun m!8370174 () Bool)

(assert (=> b!8004677 m!8370174))

(declare-fun m!8370176 () Bool)

(assert (=> start!753072 m!8370176))

(declare-fun m!8370178 () Bool)

(assert (=> b!8004671 m!8370178))

(declare-fun m!8370180 () Bool)

(assert (=> b!8004675 m!8370180))

(declare-fun m!8370182 () Bool)

(assert (=> b!8004675 m!8370182))

(declare-fun m!8370184 () Bool)

(assert (=> b!8004675 m!8370184))

(declare-fun m!8370186 () Bool)

(assert (=> b!8004670 m!8370186))

(declare-fun m!8370188 () Bool)

(assert (=> b!8004670 m!8370188))

(declare-fun m!8370190 () Bool)

(assert (=> b!8004670 m!8370190))

(declare-fun m!8370192 () Bool)

(assert (=> b!8004665 m!8370192))

(declare-fun m!8370194 () Bool)

(assert (=> b!8004665 m!8370194))

(declare-fun m!8370196 () Bool)

(assert (=> b!8004665 m!8370196))

(declare-fun m!8370198 () Bool)

(assert (=> b!8004673 m!8370198))

(declare-fun m!8370200 () Bool)

(assert (=> b!8004674 m!8370200))

(check-sat (not b!8004665) (not b!8004671) (not b!8004668) (not b!8004674) (not b!8004664) (not start!753072) (not b!8004667) (not b!8004670) (not b!8004675) (not b!8004673) tp_is_empty!53793 (not b!8004666) (not b!8004679) (not b!8004676) (not b!8004677) (not b!8004680))
(check-sat)
(get-model)

(declare-fun d!2387089 () Bool)

(assert (=> d!2387089 (<= (size!43527 testedP!353) (size!43527 totalInput!1349))))

(declare-fun lt!2714498 () Unit!170658)

(declare-fun choose!60225 (List!74854 List!74854) Unit!170658)

(assert (=> d!2387089 (= lt!2714498 (choose!60225 testedP!353 totalInput!1349))))

(assert (=> d!2387089 (isPrefix!6679 testedP!353 totalInput!1349)))

(assert (=> d!2387089 (= (lemmaIsPrefixThenSmallerEqSize!1180 testedP!353 totalInput!1349) lt!2714498)))

(declare-fun bs!1970627 () Bool)

(assert (= bs!1970627 d!2387089))

(assert (=> bs!1970627 m!8370162))

(assert (=> bs!1970627 m!8370178))

(declare-fun m!8370202 () Bool)

(assert (=> bs!1970627 m!8370202))

(assert (=> bs!1970627 m!8370180))

(assert (=> b!8004674 d!2387089))

(declare-fun d!2387091 () Bool)

(declare-fun res!3165327 () Bool)

(declare-fun e!4715415 () Bool)

(assert (=> d!2387091 (=> res!3165327 e!4715415)))

(assert (=> d!2387091 (= res!3165327 ((_ is ElementMatch!21625) r!15422))))

(assert (=> d!2387091 (= (validRegex!11929 r!15422) e!4715415)))

(declare-fun b!8004699 () Bool)

(declare-fun e!4715416 () Bool)

(declare-fun e!4715413 () Bool)

(assert (=> b!8004699 (= e!4715416 e!4715413)))

(declare-fun res!3165328 () Bool)

(assert (=> b!8004699 (=> (not res!3165328) (not e!4715413))))

(declare-fun call!743685 () Bool)

(assert (=> b!8004699 (= res!3165328 call!743685)))

(declare-fun b!8004700 () Bool)

(declare-fun res!3165329 () Bool)

(assert (=> b!8004700 (=> res!3165329 e!4715416)))

(assert (=> b!8004700 (= res!3165329 (not ((_ is Concat!30624) r!15422)))))

(declare-fun e!4715410 () Bool)

(assert (=> b!8004700 (= e!4715410 e!4715416)))

(declare-fun b!8004701 () Bool)

(declare-fun e!4715412 () Bool)

(assert (=> b!8004701 (= e!4715412 e!4715410)))

(declare-fun c!1469511 () Bool)

(assert (=> b!8004701 (= c!1469511 ((_ is Union!21625) r!15422))))

(declare-fun bm!743678 () Bool)

(declare-fun c!1469512 () Bool)

(declare-fun call!743684 () Bool)

(assert (=> bm!743678 (= call!743684 (validRegex!11929 (ite c!1469512 (reg!21954 r!15422) (ite c!1469511 (regOne!43763 r!15422) (regOne!43762 r!15422)))))))

(declare-fun b!8004702 () Bool)

(declare-fun e!4715414 () Bool)

(declare-fun call!743683 () Bool)

(assert (=> b!8004702 (= e!4715414 call!743683)))

(declare-fun b!8004703 () Bool)

(declare-fun res!3165331 () Bool)

(assert (=> b!8004703 (=> (not res!3165331) (not e!4715414))))

(assert (=> b!8004703 (= res!3165331 call!743685)))

(assert (=> b!8004703 (= e!4715410 e!4715414)))

(declare-fun bm!743679 () Bool)

(assert (=> bm!743679 (= call!743685 call!743684)))

(declare-fun b!8004704 () Bool)

(assert (=> b!8004704 (= e!4715415 e!4715412)))

(assert (=> b!8004704 (= c!1469512 ((_ is Star!21625) r!15422))))

(declare-fun bm!743680 () Bool)

(assert (=> bm!743680 (= call!743683 (validRegex!11929 (ite c!1469511 (regTwo!43763 r!15422) (regTwo!43762 r!15422))))))

(declare-fun b!8004705 () Bool)

(declare-fun e!4715411 () Bool)

(assert (=> b!8004705 (= e!4715411 call!743684)))

(declare-fun b!8004706 () Bool)

(assert (=> b!8004706 (= e!4715412 e!4715411)))

(declare-fun res!3165330 () Bool)

(declare-fun nullable!9687 (Regex!21625) Bool)

(assert (=> b!8004706 (= res!3165330 (not (nullable!9687 (reg!21954 r!15422))))))

(assert (=> b!8004706 (=> (not res!3165330) (not e!4715411))))

(declare-fun b!8004707 () Bool)

(assert (=> b!8004707 (= e!4715413 call!743683)))

(assert (= (and d!2387091 (not res!3165327)) b!8004704))

(assert (= (and b!8004704 c!1469512) b!8004706))

(assert (= (and b!8004704 (not c!1469512)) b!8004701))

(assert (= (and b!8004706 res!3165330) b!8004705))

(assert (= (and b!8004701 c!1469511) b!8004703))

(assert (= (and b!8004701 (not c!1469511)) b!8004700))

(assert (= (and b!8004703 res!3165331) b!8004702))

(assert (= (and b!8004700 (not res!3165329)) b!8004699))

(assert (= (and b!8004699 res!3165328) b!8004707))

(assert (= (or b!8004702 b!8004707) bm!743680))

(assert (= (or b!8004703 b!8004699) bm!743679))

(assert (= (or b!8004705 bm!743679) bm!743678))

(declare-fun m!8370204 () Bool)

(assert (=> bm!743678 m!8370204))

(declare-fun m!8370206 () Bool)

(assert (=> bm!743680 m!8370206))

(declare-fun m!8370208 () Bool)

(assert (=> b!8004706 m!8370208))

(assert (=> start!753072 d!2387091))

(declare-fun d!2387093 () Bool)

(declare-fun lt!2714501 () Int)

(assert (=> d!2387093 (>= lt!2714501 0)))

(declare-fun e!4715419 () Int)

(assert (=> d!2387093 (= lt!2714501 e!4715419)))

(declare-fun c!1469515 () Bool)

(assert (=> d!2387093 (= c!1469515 ((_ is Nil!74730) testedP!353))))

(assert (=> d!2387093 (= (size!43527 testedP!353) lt!2714501)))

(declare-fun b!8004712 () Bool)

(assert (=> b!8004712 (= e!4715419 0)))

(declare-fun b!8004713 () Bool)

(assert (=> b!8004713 (= e!4715419 (+ 1 (size!43527 (t!390597 testedP!353))))))

(assert (= (and d!2387093 c!1469515) b!8004712))

(assert (= (and d!2387093 (not c!1469515)) b!8004713))

(declare-fun m!8370210 () Bool)

(assert (=> b!8004713 m!8370210))

(assert (=> b!8004680 d!2387093))

(declare-fun d!2387097 () Bool)

(assert (=> d!2387097 (isPrefix!6679 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714504 () Unit!170658)

(declare-fun choose!60226 (List!74854 List!74854) Unit!170658)

(assert (=> d!2387097 (= lt!2714504 (choose!60226 totalInput!1349 totalInput!1349))))

(assert (=> d!2387097 (= (lemmaIsPrefixRefl!4131 totalInput!1349 totalInput!1349) lt!2714504)))

(declare-fun bs!1970628 () Bool)

(assert (= bs!1970628 d!2387097))

(assert (=> bs!1970628 m!8370188))

(declare-fun m!8370212 () Bool)

(assert (=> bs!1970628 m!8370212))

(assert (=> b!8004670 d!2387097))

(declare-fun b!8004743 () Bool)

(declare-fun e!4715444 () Bool)

(assert (=> b!8004743 (= e!4715444 (>= (size!43527 totalInput!1349) (size!43527 totalInput!1349)))))

(declare-fun b!8004742 () Bool)

(declare-fun e!4715440 () Bool)

(declare-fun tail!15840 (List!74854) List!74854)

(assert (=> b!8004742 (= e!4715440 (isPrefix!6679 (tail!15840 totalInput!1349) (tail!15840 totalInput!1349)))))

(declare-fun b!8004740 () Bool)

(declare-fun e!4715446 () Bool)

(assert (=> b!8004740 (= e!4715446 e!4715440)))

(declare-fun res!3165351 () Bool)

(assert (=> b!8004740 (=> (not res!3165351) (not e!4715440))))

(assert (=> b!8004740 (= res!3165351 (not ((_ is Nil!74730) totalInput!1349)))))

(declare-fun d!2387099 () Bool)

(assert (=> d!2387099 e!4715444))

(declare-fun res!3165352 () Bool)

(assert (=> d!2387099 (=> res!3165352 e!4715444)))

(declare-fun lt!2714507 () Bool)

(assert (=> d!2387099 (= res!3165352 (not lt!2714507))))

(assert (=> d!2387099 (= lt!2714507 e!4715446)))

(declare-fun res!3165350 () Bool)

(assert (=> d!2387099 (=> res!3165350 e!4715446)))

(assert (=> d!2387099 (= res!3165350 ((_ is Nil!74730) totalInput!1349))))

(assert (=> d!2387099 (= (isPrefix!6679 totalInput!1349 totalInput!1349) lt!2714507)))

(declare-fun b!8004741 () Bool)

(declare-fun res!3165353 () Bool)

(assert (=> b!8004741 (=> (not res!3165353) (not e!4715440))))

(assert (=> b!8004741 (= res!3165353 (= (head!16317 totalInput!1349) (head!16317 totalInput!1349)))))

(assert (= (and d!2387099 (not res!3165350)) b!8004740))

(assert (= (and b!8004740 res!3165351) b!8004741))

(assert (= (and b!8004741 res!3165353) b!8004742))

(assert (= (and d!2387099 (not res!3165352)) b!8004743))

(assert (=> b!8004743 m!8370178))

(assert (=> b!8004743 m!8370178))

(declare-fun m!8370214 () Bool)

(assert (=> b!8004742 m!8370214))

(assert (=> b!8004742 m!8370214))

(assert (=> b!8004742 m!8370214))

(assert (=> b!8004742 m!8370214))

(declare-fun m!8370216 () Bool)

(assert (=> b!8004742 m!8370216))

(declare-fun m!8370218 () Bool)

(assert (=> b!8004741 m!8370218))

(assert (=> b!8004741 m!8370218))

(assert (=> b!8004670 d!2387099))

(declare-fun d!2387101 () Bool)

(assert (=> d!2387101 (= totalInput!1349 testedP!353)))

(declare-fun lt!2714510 () Unit!170658)

(declare-fun choose!60228 (List!74854 List!74854 List!74854) Unit!170658)

(assert (=> d!2387101 (= lt!2714510 (choose!60228 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2387101 (isPrefix!6679 totalInput!1349 totalInput!1349)))

(assert (=> d!2387101 (= (lemmaIsPrefixSameLengthThenSameList!1705 totalInput!1349 testedP!353 totalInput!1349) lt!2714510)))

(declare-fun bs!1970629 () Bool)

(assert (= bs!1970629 d!2387101))

(declare-fun m!8370226 () Bool)

(assert (=> bs!1970629 m!8370226))

(assert (=> bs!1970629 m!8370188))

(assert (=> b!8004670 d!2387101))

(declare-fun b!8004756 () Bool)

(declare-fun e!4715451 () Bool)

(assert (=> b!8004756 (= e!4715451 (>= (size!43527 totalInput!1349) (size!43527 testedP!353)))))

(declare-fun b!8004755 () Bool)

(declare-fun e!4715450 () Bool)

(assert (=> b!8004755 (= e!4715450 (isPrefix!6679 (tail!15840 testedP!353) (tail!15840 totalInput!1349)))))

(declare-fun b!8004753 () Bool)

(declare-fun e!4715452 () Bool)

(assert (=> b!8004753 (= e!4715452 e!4715450)))

(declare-fun res!3165360 () Bool)

(assert (=> b!8004753 (=> (not res!3165360) (not e!4715450))))

(assert (=> b!8004753 (= res!3165360 (not ((_ is Nil!74730) totalInput!1349)))))

(declare-fun d!2387105 () Bool)

(assert (=> d!2387105 e!4715451))

(declare-fun res!3165361 () Bool)

(assert (=> d!2387105 (=> res!3165361 e!4715451)))

(declare-fun lt!2714511 () Bool)

(assert (=> d!2387105 (= res!3165361 (not lt!2714511))))

(assert (=> d!2387105 (= lt!2714511 e!4715452)))

(declare-fun res!3165359 () Bool)

(assert (=> d!2387105 (=> res!3165359 e!4715452)))

(assert (=> d!2387105 (= res!3165359 ((_ is Nil!74730) testedP!353))))

(assert (=> d!2387105 (= (isPrefix!6679 testedP!353 totalInput!1349) lt!2714511)))

(declare-fun b!8004754 () Bool)

(declare-fun res!3165362 () Bool)

(assert (=> b!8004754 (=> (not res!3165362) (not e!4715450))))

(assert (=> b!8004754 (= res!3165362 (= (head!16317 testedP!353) (head!16317 totalInput!1349)))))

(assert (= (and d!2387105 (not res!3165359)) b!8004753))

(assert (= (and b!8004753 res!3165360) b!8004754))

(assert (= (and b!8004754 res!3165362) b!8004755))

(assert (= (and d!2387105 (not res!3165361)) b!8004756))

(assert (=> b!8004756 m!8370178))

(assert (=> b!8004756 m!8370162))

(declare-fun m!8370228 () Bool)

(assert (=> b!8004755 m!8370228))

(assert (=> b!8004755 m!8370214))

(assert (=> b!8004755 m!8370228))

(assert (=> b!8004755 m!8370214))

(declare-fun m!8370230 () Bool)

(assert (=> b!8004755 m!8370230))

(declare-fun m!8370232 () Bool)

(assert (=> b!8004754 m!8370232))

(assert (=> b!8004754 m!8370218))

(assert (=> b!8004675 d!2387105))

(declare-fun b!8004760 () Bool)

(declare-fun e!4715454 () Bool)

(assert (=> b!8004760 (= e!4715454 (>= (size!43527 lt!2714491) (size!43527 testedP!353)))))

(declare-fun b!8004759 () Bool)

(declare-fun e!4715453 () Bool)

(assert (=> b!8004759 (= e!4715453 (isPrefix!6679 (tail!15840 testedP!353) (tail!15840 lt!2714491)))))

(declare-fun b!8004757 () Bool)

(declare-fun e!4715455 () Bool)

(assert (=> b!8004757 (= e!4715455 e!4715453)))

(declare-fun res!3165364 () Bool)

(assert (=> b!8004757 (=> (not res!3165364) (not e!4715453))))

(assert (=> b!8004757 (= res!3165364 (not ((_ is Nil!74730) lt!2714491)))))

(declare-fun d!2387107 () Bool)

(assert (=> d!2387107 e!4715454))

(declare-fun res!3165365 () Bool)

(assert (=> d!2387107 (=> res!3165365 e!4715454)))

(declare-fun lt!2714512 () Bool)

(assert (=> d!2387107 (= res!3165365 (not lt!2714512))))

(assert (=> d!2387107 (= lt!2714512 e!4715455)))

(declare-fun res!3165363 () Bool)

(assert (=> d!2387107 (=> res!3165363 e!4715455)))

(assert (=> d!2387107 (= res!3165363 ((_ is Nil!74730) testedP!353))))

(assert (=> d!2387107 (= (isPrefix!6679 testedP!353 lt!2714491) lt!2714512)))

(declare-fun b!8004758 () Bool)

(declare-fun res!3165366 () Bool)

(assert (=> b!8004758 (=> (not res!3165366) (not e!4715453))))

(assert (=> b!8004758 (= res!3165366 (= (head!16317 testedP!353) (head!16317 lt!2714491)))))

(assert (= (and d!2387107 (not res!3165363)) b!8004757))

(assert (= (and b!8004757 res!3165364) b!8004758))

(assert (= (and b!8004758 res!3165366) b!8004759))

(assert (= (and d!2387107 (not res!3165365)) b!8004760))

(declare-fun m!8370234 () Bool)

(assert (=> b!8004760 m!8370234))

(assert (=> b!8004760 m!8370162))

(assert (=> b!8004759 m!8370228))

(declare-fun m!8370236 () Bool)

(assert (=> b!8004759 m!8370236))

(assert (=> b!8004759 m!8370228))

(assert (=> b!8004759 m!8370236))

(declare-fun m!8370238 () Bool)

(assert (=> b!8004759 m!8370238))

(assert (=> b!8004758 m!8370232))

(declare-fun m!8370240 () Bool)

(assert (=> b!8004758 m!8370240))

(assert (=> b!8004675 d!2387107))

(declare-fun d!2387109 () Bool)

(assert (=> d!2387109 (isPrefix!6679 testedP!353 (++!18451 testedP!353 testedSuffix!271))))

(declare-fun lt!2714518 () Unit!170658)

(declare-fun choose!60232 (List!74854 List!74854) Unit!170658)

(assert (=> d!2387109 (= lt!2714518 (choose!60232 testedP!353 testedSuffix!271))))

(assert (=> d!2387109 (= (lemmaConcatTwoListThenFirstIsPrefix!3910 testedP!353 testedSuffix!271) lt!2714518)))

(declare-fun bs!1970630 () Bool)

(assert (= bs!1970630 d!2387109))

(assert (=> bs!1970630 m!8370198))

(assert (=> bs!1970630 m!8370198))

(declare-fun m!8370248 () Bool)

(assert (=> bs!1970630 m!8370248))

(declare-fun m!8370252 () Bool)

(assert (=> bs!1970630 m!8370252))

(assert (=> b!8004675 d!2387109))

(declare-fun d!2387111 () Bool)

(declare-fun lostCauseFct!589 (Regex!21625) Bool)

(assert (=> d!2387111 (= (lostCause!2022 r!15422) (lostCauseFct!589 r!15422))))

(declare-fun bs!1970631 () Bool)

(assert (= bs!1970631 d!2387111))

(declare-fun m!8370264 () Bool)

(assert (=> bs!1970631 m!8370264))

(assert (=> b!8004665 d!2387111))

(declare-fun d!2387117 () Bool)

(assert (=> d!2387117 (= testedSuffix!271 lt!2714494)))

(declare-fun lt!2714525 () Unit!170658)

(declare-fun choose!60233 (List!74854 List!74854 List!74854 List!74854 List!74854) Unit!170658)

(assert (=> d!2387117 (= lt!2714525 (choose!60233 testedP!353 testedSuffix!271 testedP!353 lt!2714494 totalInput!1349))))

(assert (=> d!2387117 (isPrefix!6679 testedP!353 totalInput!1349)))

(assert (=> d!2387117 (= (lemmaSamePrefixThenSameSuffix!3042 testedP!353 testedSuffix!271 testedP!353 lt!2714494 totalInput!1349) lt!2714525)))

(declare-fun bs!1970633 () Bool)

(assert (= bs!1970633 d!2387117))

(declare-fun m!8370270 () Bool)

(assert (=> bs!1970633 m!8370270))

(assert (=> bs!1970633 m!8370180))

(assert (=> b!8004665 d!2387117))

(declare-fun d!2387121 () Bool)

(declare-fun lt!2714537 () List!74854)

(assert (=> d!2387121 (= (++!18451 testedP!353 lt!2714537) totalInput!1349)))

(declare-fun e!4715473 () List!74854)

(assert (=> d!2387121 (= lt!2714537 e!4715473)))

(declare-fun c!1469527 () Bool)

(assert (=> d!2387121 (= c!1469527 ((_ is Cons!74730) testedP!353))))

(assert (=> d!2387121 (>= (size!43527 totalInput!1349) (size!43527 testedP!353))))

(assert (=> d!2387121 (= (getSuffix!3876 totalInput!1349 testedP!353) lt!2714537)))

(declare-fun b!8004787 () Bool)

(assert (=> b!8004787 (= e!4715473 (getSuffix!3876 (tail!15840 totalInput!1349) (t!390597 testedP!353)))))

(declare-fun b!8004788 () Bool)

(assert (=> b!8004788 (= e!4715473 totalInput!1349)))

(assert (= (and d!2387121 c!1469527) b!8004787))

(assert (= (and d!2387121 (not c!1469527)) b!8004788))

(declare-fun m!8370278 () Bool)

(assert (=> d!2387121 m!8370278))

(assert (=> d!2387121 m!8370178))

(assert (=> d!2387121 m!8370162))

(assert (=> b!8004787 m!8370214))

(assert (=> b!8004787 m!8370214))

(declare-fun m!8370280 () Bool)

(assert (=> b!8004787 m!8370280))

(assert (=> b!8004665 d!2387121))

(declare-fun d!2387129 () Bool)

(declare-fun lt!2714539 () Int)

(assert (=> d!2387129 (>= lt!2714539 0)))

(declare-fun e!4715477 () Int)

(assert (=> d!2387129 (= lt!2714539 e!4715477)))

(declare-fun c!1469528 () Bool)

(assert (=> d!2387129 (= c!1469528 ((_ is Nil!74730) totalInput!1349))))

(assert (=> d!2387129 (= (size!43527 totalInput!1349) lt!2714539)))

(declare-fun b!8004793 () Bool)

(assert (=> b!8004793 (= e!4715477 0)))

(declare-fun b!8004794 () Bool)

(assert (=> b!8004794 (= e!4715477 (+ 1 (size!43527 (t!390597 totalInput!1349))))))

(assert (= (and d!2387129 c!1469528) b!8004793))

(assert (= (and d!2387129 (not c!1469528)) b!8004794))

(declare-fun m!8370284 () Bool)

(assert (=> b!8004794 m!8370284))

(assert (=> b!8004671 d!2387129))

(declare-fun d!2387133 () Bool)

(assert (=> d!2387133 (isPrefix!6679 (++!18451 testedP!353 (Cons!74730 (head!16317 (getSuffix!3876 totalInput!1349 testedP!353)) Nil!74730)) totalInput!1349)))

(declare-fun lt!2714547 () Unit!170658)

(declare-fun choose!60236 (List!74854 List!74854) Unit!170658)

(assert (=> d!2387133 (= lt!2714547 (choose!60236 testedP!353 totalInput!1349))))

(assert (=> d!2387133 (isPrefix!6679 testedP!353 totalInput!1349)))

(assert (=> d!2387133 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1376 testedP!353 totalInput!1349) lt!2714547)))

(declare-fun bs!1970637 () Bool)

(assert (= bs!1970637 d!2387133))

(declare-fun m!8370288 () Bool)

(assert (=> bs!1970637 m!8370288))

(assert (=> bs!1970637 m!8370196))

(declare-fun m!8370290 () Bool)

(assert (=> bs!1970637 m!8370290))

(declare-fun m!8370292 () Bool)

(assert (=> bs!1970637 m!8370292))

(declare-fun m!8370294 () Bool)

(assert (=> bs!1970637 m!8370294))

(assert (=> bs!1970637 m!8370180))

(assert (=> bs!1970637 m!8370196))

(assert (=> bs!1970637 m!8370292))

(assert (=> b!8004677 d!2387133))

(declare-fun d!2387137 () Bool)

(assert (=> d!2387137 (= (head!16317 testedSuffix!271) (h!81178 testedSuffix!271))))

(assert (=> b!8004677 d!2387137))

(declare-fun e!4715483 () Bool)

(declare-fun b!8004806 () Bool)

(assert (=> b!8004806 (= e!4715483 (>= (size!43527 totalInput!1349) (size!43527 (++!18451 testedP!353 (Cons!74730 (head!16317 lt!2714494) Nil!74730)))))))

(declare-fun b!8004805 () Bool)

(declare-fun e!4715482 () Bool)

(assert (=> b!8004805 (= e!4715482 (isPrefix!6679 (tail!15840 (++!18451 testedP!353 (Cons!74730 (head!16317 lt!2714494) Nil!74730))) (tail!15840 totalInput!1349)))))

(declare-fun b!8004803 () Bool)

(declare-fun e!4715484 () Bool)

(assert (=> b!8004803 (= e!4715484 e!4715482)))

(declare-fun res!3165392 () Bool)

(assert (=> b!8004803 (=> (not res!3165392) (not e!4715482))))

(assert (=> b!8004803 (= res!3165392 (not ((_ is Nil!74730) totalInput!1349)))))

(declare-fun d!2387139 () Bool)

(assert (=> d!2387139 e!4715483))

(declare-fun res!3165393 () Bool)

(assert (=> d!2387139 (=> res!3165393 e!4715483)))

(declare-fun lt!2714548 () Bool)

(assert (=> d!2387139 (= res!3165393 (not lt!2714548))))

(assert (=> d!2387139 (= lt!2714548 e!4715484)))

(declare-fun res!3165391 () Bool)

(assert (=> d!2387139 (=> res!3165391 e!4715484)))

(assert (=> d!2387139 (= res!3165391 ((_ is Nil!74730) (++!18451 testedP!353 (Cons!74730 (head!16317 lt!2714494) Nil!74730))))))

(assert (=> d!2387139 (= (isPrefix!6679 (++!18451 testedP!353 (Cons!74730 (head!16317 lt!2714494) Nil!74730)) totalInput!1349) lt!2714548)))

(declare-fun b!8004804 () Bool)

(declare-fun res!3165394 () Bool)

(assert (=> b!8004804 (=> (not res!3165394) (not e!4715482))))

(assert (=> b!8004804 (= res!3165394 (= (head!16317 (++!18451 testedP!353 (Cons!74730 (head!16317 lt!2714494) Nil!74730))) (head!16317 totalInput!1349)))))

(assert (= (and d!2387139 (not res!3165391)) b!8004803))

(assert (= (and b!8004803 res!3165392) b!8004804))

(assert (= (and b!8004804 res!3165394) b!8004805))

(assert (= (and d!2387139 (not res!3165393)) b!8004806))

(assert (=> b!8004806 m!8370178))

(assert (=> b!8004806 m!8370164))

(declare-fun m!8370296 () Bool)

(assert (=> b!8004806 m!8370296))

(assert (=> b!8004805 m!8370164))

(declare-fun m!8370298 () Bool)

(assert (=> b!8004805 m!8370298))

(assert (=> b!8004805 m!8370214))

(assert (=> b!8004805 m!8370298))

(assert (=> b!8004805 m!8370214))

(declare-fun m!8370310 () Bool)

(assert (=> b!8004805 m!8370310))

(assert (=> b!8004804 m!8370164))

(declare-fun m!8370314 () Bool)

(assert (=> b!8004804 m!8370314))

(assert (=> b!8004804 m!8370218))

(assert (=> b!8004677 d!2387139))

(declare-fun b!8004827 () Bool)

(declare-fun res!3165401 () Bool)

(declare-fun e!4715493 () Bool)

(assert (=> b!8004827 (=> (not res!3165401) (not e!4715493))))

(declare-fun lt!2714557 () List!74854)

(assert (=> b!8004827 (= res!3165401 (= (size!43527 lt!2714557) (+ (size!43527 testedP!353) (size!43527 (Cons!74730 (head!16317 testedSuffix!271) Nil!74730)))))))

(declare-fun b!8004828 () Bool)

(assert (=> b!8004828 (= e!4715493 (or (not (= (Cons!74730 (head!16317 testedSuffix!271) Nil!74730) Nil!74730)) (= lt!2714557 testedP!353)))))

(declare-fun d!2387143 () Bool)

(assert (=> d!2387143 e!4715493))

(declare-fun res!3165402 () Bool)

(assert (=> d!2387143 (=> (not res!3165402) (not e!4715493))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15886 (List!74854) (InoxSet C!43588))

(assert (=> d!2387143 (= res!3165402 (= (content!15886 lt!2714557) ((_ map or) (content!15886 testedP!353) (content!15886 (Cons!74730 (head!16317 testedSuffix!271) Nil!74730)))))))

(declare-fun e!4715494 () List!74854)

(assert (=> d!2387143 (= lt!2714557 e!4715494)))

(declare-fun c!1469536 () Bool)

(assert (=> d!2387143 (= c!1469536 ((_ is Nil!74730) testedP!353))))

(assert (=> d!2387143 (= (++!18451 testedP!353 (Cons!74730 (head!16317 testedSuffix!271) Nil!74730)) lt!2714557)))

(declare-fun b!8004823 () Bool)

(assert (=> b!8004823 (= e!4715494 (Cons!74730 (head!16317 testedSuffix!271) Nil!74730))))

(declare-fun b!8004825 () Bool)

(assert (=> b!8004825 (= e!4715494 (Cons!74730 (h!81178 testedP!353) (++!18451 (t!390597 testedP!353) (Cons!74730 (head!16317 testedSuffix!271) Nil!74730))))))

(assert (= (and d!2387143 c!1469536) b!8004823))

(assert (= (and d!2387143 (not c!1469536)) b!8004825))

(assert (= (and d!2387143 res!3165402) b!8004827))

(assert (= (and b!8004827 res!3165401) b!8004828))

(declare-fun m!8370326 () Bool)

(assert (=> b!8004827 m!8370326))

(assert (=> b!8004827 m!8370162))

(declare-fun m!8370328 () Bool)

(assert (=> b!8004827 m!8370328))

(declare-fun m!8370330 () Bool)

(assert (=> d!2387143 m!8370330))

(declare-fun m!8370332 () Bool)

(assert (=> d!2387143 m!8370332))

(declare-fun m!8370334 () Bool)

(assert (=> d!2387143 m!8370334))

(declare-fun m!8370336 () Bool)

(assert (=> b!8004825 m!8370336))

(assert (=> b!8004677 d!2387143))

(declare-fun b!8004833 () Bool)

(declare-fun res!3165403 () Bool)

(declare-fun e!4715497 () Bool)

(assert (=> b!8004833 (=> (not res!3165403) (not e!4715497))))

(declare-fun lt!2714560 () List!74854)

(assert (=> b!8004833 (= res!3165403 (= (size!43527 lt!2714560) (+ (size!43527 testedP!353) (size!43527 (Cons!74730 (head!16317 lt!2714494) Nil!74730)))))))

(declare-fun b!8004834 () Bool)

(assert (=> b!8004834 (= e!4715497 (or (not (= (Cons!74730 (head!16317 lt!2714494) Nil!74730) Nil!74730)) (= lt!2714560 testedP!353)))))

(declare-fun d!2387153 () Bool)

(assert (=> d!2387153 e!4715497))

(declare-fun res!3165404 () Bool)

(assert (=> d!2387153 (=> (not res!3165404) (not e!4715497))))

(assert (=> d!2387153 (= res!3165404 (= (content!15886 lt!2714560) ((_ map or) (content!15886 testedP!353) (content!15886 (Cons!74730 (head!16317 lt!2714494) Nil!74730)))))))

(declare-fun e!4715498 () List!74854)

(assert (=> d!2387153 (= lt!2714560 e!4715498)))

(declare-fun c!1469539 () Bool)

(assert (=> d!2387153 (= c!1469539 ((_ is Nil!74730) testedP!353))))

(assert (=> d!2387153 (= (++!18451 testedP!353 (Cons!74730 (head!16317 lt!2714494) Nil!74730)) lt!2714560)))

(declare-fun b!8004831 () Bool)

(assert (=> b!8004831 (= e!4715498 (Cons!74730 (head!16317 lt!2714494) Nil!74730))))

(declare-fun b!8004832 () Bool)

(assert (=> b!8004832 (= e!4715498 (Cons!74730 (h!81178 testedP!353) (++!18451 (t!390597 testedP!353) (Cons!74730 (head!16317 lt!2714494) Nil!74730))))))

(assert (= (and d!2387153 c!1469539) b!8004831))

(assert (= (and d!2387153 (not c!1469539)) b!8004832))

(assert (= (and d!2387153 res!3165404) b!8004833))

(assert (= (and b!8004833 res!3165403) b!8004834))

(declare-fun m!8370338 () Bool)

(assert (=> b!8004833 m!8370338))

(assert (=> b!8004833 m!8370162))

(declare-fun m!8370340 () Bool)

(assert (=> b!8004833 m!8370340))

(declare-fun m!8370342 () Bool)

(assert (=> d!2387153 m!8370342))

(assert (=> d!2387153 m!8370332))

(declare-fun m!8370344 () Bool)

(assert (=> d!2387153 m!8370344))

(declare-fun m!8370346 () Bool)

(assert (=> b!8004832 m!8370346))

(assert (=> b!8004677 d!2387153))

(declare-fun d!2387155 () Bool)

(assert (=> d!2387155 (= (head!16317 lt!2714494) (h!81178 lt!2714494))))

(assert (=> b!8004677 d!2387155))

(declare-fun b!8004837 () Bool)

(declare-fun res!3165405 () Bool)

(declare-fun e!4715499 () Bool)

(assert (=> b!8004837 (=> (not res!3165405) (not e!4715499))))

(declare-fun lt!2714561 () List!74854)

(assert (=> b!8004837 (= res!3165405 (= (size!43527 lt!2714561) (+ (size!43527 testedP!353) (size!43527 testedSuffix!271))))))

(declare-fun b!8004838 () Bool)

(assert (=> b!8004838 (= e!4715499 (or (not (= testedSuffix!271 Nil!74730)) (= lt!2714561 testedP!353)))))

(declare-fun d!2387157 () Bool)

(assert (=> d!2387157 e!4715499))

(declare-fun res!3165406 () Bool)

(assert (=> d!2387157 (=> (not res!3165406) (not e!4715499))))

(assert (=> d!2387157 (= res!3165406 (= (content!15886 lt!2714561) ((_ map or) (content!15886 testedP!353) (content!15886 testedSuffix!271))))))

(declare-fun e!4715500 () List!74854)

(assert (=> d!2387157 (= lt!2714561 e!4715500)))

(declare-fun c!1469540 () Bool)

(assert (=> d!2387157 (= c!1469540 ((_ is Nil!74730) testedP!353))))

(assert (=> d!2387157 (= (++!18451 testedP!353 testedSuffix!271) lt!2714561)))

(declare-fun b!8004835 () Bool)

(assert (=> b!8004835 (= e!4715500 testedSuffix!271)))

(declare-fun b!8004836 () Bool)

(assert (=> b!8004836 (= e!4715500 (Cons!74730 (h!81178 testedP!353) (++!18451 (t!390597 testedP!353) testedSuffix!271)))))

(assert (= (and d!2387157 c!1469540) b!8004835))

(assert (= (and d!2387157 (not c!1469540)) b!8004836))

(assert (= (and d!2387157 res!3165406) b!8004837))

(assert (= (and b!8004837 res!3165405) b!8004838))

(declare-fun m!8370348 () Bool)

(assert (=> b!8004837 m!8370348))

(assert (=> b!8004837 m!8370162))

(declare-fun m!8370350 () Bool)

(assert (=> b!8004837 m!8370350))

(declare-fun m!8370352 () Bool)

(assert (=> d!2387157 m!8370352))

(assert (=> d!2387157 m!8370332))

(declare-fun m!8370354 () Bool)

(assert (=> d!2387157 m!8370354))

(declare-fun m!8370356 () Bool)

(assert (=> b!8004836 m!8370356))

(assert (=> b!8004673 d!2387157))

(declare-fun b!8004851 () Bool)

(declare-fun e!4715503 () Bool)

(declare-fun tp!2394998 () Bool)

(assert (=> b!8004851 (= e!4715503 tp!2394998)))

(declare-fun b!8004852 () Bool)

(declare-fun tp!2394999 () Bool)

(declare-fun tp!2394997 () Bool)

(assert (=> b!8004852 (= e!4715503 (and tp!2394999 tp!2394997))))

(assert (=> b!8004679 (= tp!2394979 e!4715503)))

(declare-fun b!8004850 () Bool)

(declare-fun tp!2395000 () Bool)

(declare-fun tp!2395001 () Bool)

(assert (=> b!8004850 (= e!4715503 (and tp!2395000 tp!2395001))))

(declare-fun b!8004849 () Bool)

(assert (=> b!8004849 (= e!4715503 tp_is_empty!53793)))

(assert (= (and b!8004679 ((_ is ElementMatch!21625) (regOne!43763 r!15422))) b!8004849))

(assert (= (and b!8004679 ((_ is Concat!30624) (regOne!43763 r!15422))) b!8004850))

(assert (= (and b!8004679 ((_ is Star!21625) (regOne!43763 r!15422))) b!8004851))

(assert (= (and b!8004679 ((_ is Union!21625) (regOne!43763 r!15422))) b!8004852))

(declare-fun b!8004855 () Bool)

(declare-fun e!4715504 () Bool)

(declare-fun tp!2395003 () Bool)

(assert (=> b!8004855 (= e!4715504 tp!2395003)))

(declare-fun b!8004856 () Bool)

(declare-fun tp!2395004 () Bool)

(declare-fun tp!2395002 () Bool)

(assert (=> b!8004856 (= e!4715504 (and tp!2395004 tp!2395002))))

(assert (=> b!8004679 (= tp!2394980 e!4715504)))

(declare-fun b!8004854 () Bool)

(declare-fun tp!2395005 () Bool)

(declare-fun tp!2395006 () Bool)

(assert (=> b!8004854 (= e!4715504 (and tp!2395005 tp!2395006))))

(declare-fun b!8004853 () Bool)

(assert (=> b!8004853 (= e!4715504 tp_is_empty!53793)))

(assert (= (and b!8004679 ((_ is ElementMatch!21625) (regTwo!43763 r!15422))) b!8004853))

(assert (= (and b!8004679 ((_ is Concat!30624) (regTwo!43763 r!15422))) b!8004854))

(assert (= (and b!8004679 ((_ is Star!21625) (regTwo!43763 r!15422))) b!8004855))

(assert (= (and b!8004679 ((_ is Union!21625) (regTwo!43763 r!15422))) b!8004856))

(declare-fun b!8004869 () Bool)

(declare-fun e!4715511 () Bool)

(declare-fun tp!2395009 () Bool)

(assert (=> b!8004869 (= e!4715511 (and tp_is_empty!53793 tp!2395009))))

(assert (=> b!8004664 (= tp!2394986 e!4715511)))

(assert (= (and b!8004664 ((_ is Cons!74730) (t!390597 totalInput!1349))) b!8004869))

(declare-fun b!8004870 () Bool)

(declare-fun e!4715512 () Bool)

(declare-fun tp!2395010 () Bool)

(assert (=> b!8004870 (= e!4715512 (and tp_is_empty!53793 tp!2395010))))

(assert (=> b!8004676 (= tp!2394981 e!4715512)))

(assert (= (and b!8004676 ((_ is Cons!74730) (t!390597 testedP!353))) b!8004870))

(declare-fun b!8004871 () Bool)

(declare-fun e!4715513 () Bool)

(declare-fun tp!2395011 () Bool)

(assert (=> b!8004871 (= e!4715513 (and tp_is_empty!53793 tp!2395011))))

(assert (=> b!8004666 (= tp!2394983 e!4715513)))

(assert (= (and b!8004666 ((_ is Cons!74730) (t!390597 testedSuffix!271))) b!8004871))

(declare-fun b!8004874 () Bool)

(declare-fun e!4715514 () Bool)

(declare-fun tp!2395013 () Bool)

(assert (=> b!8004874 (= e!4715514 tp!2395013)))

(declare-fun b!8004875 () Bool)

(declare-fun tp!2395014 () Bool)

(declare-fun tp!2395012 () Bool)

(assert (=> b!8004875 (= e!4715514 (and tp!2395014 tp!2395012))))

(assert (=> b!8004667 (= tp!2394984 e!4715514)))

(declare-fun b!8004873 () Bool)

(declare-fun tp!2395015 () Bool)

(declare-fun tp!2395016 () Bool)

(assert (=> b!8004873 (= e!4715514 (and tp!2395015 tp!2395016))))

(declare-fun b!8004872 () Bool)

(assert (=> b!8004872 (= e!4715514 tp_is_empty!53793)))

(assert (= (and b!8004667 ((_ is ElementMatch!21625) (reg!21954 r!15422))) b!8004872))

(assert (= (and b!8004667 ((_ is Concat!30624) (reg!21954 r!15422))) b!8004873))

(assert (= (and b!8004667 ((_ is Star!21625) (reg!21954 r!15422))) b!8004874))

(assert (= (and b!8004667 ((_ is Union!21625) (reg!21954 r!15422))) b!8004875))

(declare-fun b!8004882 () Bool)

(declare-fun e!4715518 () Bool)

(declare-fun tp!2395018 () Bool)

(assert (=> b!8004882 (= e!4715518 tp!2395018)))

(declare-fun b!8004883 () Bool)

(declare-fun tp!2395019 () Bool)

(declare-fun tp!2395017 () Bool)

(assert (=> b!8004883 (= e!4715518 (and tp!2395019 tp!2395017))))

(assert (=> b!8004668 (= tp!2394985 e!4715518)))

(declare-fun b!8004881 () Bool)

(declare-fun tp!2395020 () Bool)

(declare-fun tp!2395021 () Bool)

(assert (=> b!8004881 (= e!4715518 (and tp!2395020 tp!2395021))))

(declare-fun b!8004880 () Bool)

(assert (=> b!8004880 (= e!4715518 tp_is_empty!53793)))

(assert (= (and b!8004668 ((_ is ElementMatch!21625) (regOne!43762 r!15422))) b!8004880))

(assert (= (and b!8004668 ((_ is Concat!30624) (regOne!43762 r!15422))) b!8004881))

(assert (= (and b!8004668 ((_ is Star!21625) (regOne!43762 r!15422))) b!8004882))

(assert (= (and b!8004668 ((_ is Union!21625) (regOne!43762 r!15422))) b!8004883))

(declare-fun b!8004886 () Bool)

(declare-fun e!4715519 () Bool)

(declare-fun tp!2395023 () Bool)

(assert (=> b!8004886 (= e!4715519 tp!2395023)))

(declare-fun b!8004887 () Bool)

(declare-fun tp!2395024 () Bool)

(declare-fun tp!2395022 () Bool)

(assert (=> b!8004887 (= e!4715519 (and tp!2395024 tp!2395022))))

(assert (=> b!8004668 (= tp!2394982 e!4715519)))

(declare-fun b!8004885 () Bool)

(declare-fun tp!2395025 () Bool)

(declare-fun tp!2395026 () Bool)

(assert (=> b!8004885 (= e!4715519 (and tp!2395025 tp!2395026))))

(declare-fun b!8004884 () Bool)

(assert (=> b!8004884 (= e!4715519 tp_is_empty!53793)))

(assert (= (and b!8004668 ((_ is ElementMatch!21625) (regTwo!43762 r!15422))) b!8004884))

(assert (= (and b!8004668 ((_ is Concat!30624) (regTwo!43762 r!15422))) b!8004885))

(assert (= (and b!8004668 ((_ is Star!21625) (regTwo!43762 r!15422))) b!8004886))

(assert (= (and b!8004668 ((_ is Union!21625) (regTwo!43762 r!15422))) b!8004887))

(check-sat (not d!2387153) (not b!8004806) (not b!8004851) (not b!8004833) (not b!8004755) (not bm!743680) (not b!8004885) (not d!2387097) (not b!8004706) (not b!8004887) (not b!8004873) (not d!2387101) (not b!8004713) (not b!8004871) (not b!8004837) (not b!8004882) (not b!8004836) (not bm!743678) (not b!8004741) (not d!2387109) (not b!8004825) (not b!8004743) (not b!8004869) (not b!8004886) (not d!2387121) (not b!8004883) (not d!2387111) (not b!8004759) (not b!8004805) (not d!2387157) (not b!8004881) (not b!8004758) (not b!8004874) (not b!8004794) (not b!8004804) (not b!8004855) (not b!8004875) (not b!8004754) (not d!2387143) (not b!8004827) (not b!8004742) (not b!8004856) tp_is_empty!53793 (not b!8004870) (not d!2387117) (not d!2387089) (not b!8004854) (not d!2387133) (not b!8004850) (not b!8004832) (not b!8004787) (not b!8004852) (not b!8004760) (not b!8004756))
(check-sat)
