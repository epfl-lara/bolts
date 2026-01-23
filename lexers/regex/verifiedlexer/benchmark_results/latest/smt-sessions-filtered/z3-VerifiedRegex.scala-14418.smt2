; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751428 () Bool)

(assert start!751428)

(declare-fun b!7967126 () Bool)

(declare-fun e!4697917 () Bool)

(declare-datatypes ((C!43372 0))(
  ( (C!43373 (val!32234 Int)) )
))
(declare-datatypes ((List!74746 0))(
  ( (Nil!74622) (Cons!74622 (h!81070 C!43372) (t!390489 List!74746)) )
))
(declare-fun lt!2706227 () List!74746)

(assert (=> b!7967126 (= e!4697917 (not (= lt!2706227 Nil!74622)))))

(declare-datatypes ((Regex!21517 0))(
  ( (ElementMatch!21517 (c!1463130 C!43372)) (Concat!30516 (regOne!43546 Regex!21517) (regTwo!43546 Regex!21517)) (EmptyExpr!21517) (Star!21517 (reg!21846 Regex!21517)) (EmptyLang!21517) (Union!21517 (regOne!43547 Regex!21517) (regTwo!43547 Regex!21517)) )
))
(declare-fun baseR!116 () Regex!21517)

(declare-fun lt!2706230 () List!74746)

(declare-fun lt!2706223 () C!43372)

(declare-fun r!24602 () Regex!21517)

(declare-fun derivative!703 (Regex!21517 List!74746) Regex!21517)

(declare-fun derivativeStep!6543 (Regex!21517 C!43372) Regex!21517)

(assert (=> b!7967126 (= (derivative!703 baseR!116 lt!2706230) (derivativeStep!6543 r!24602 lt!2706223))))

(declare-fun testedP!447 () List!74746)

(declare-datatypes ((Unit!170206 0))(
  ( (Unit!170207) )
))
(declare-fun lt!2706233 () Unit!170206)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!225 (Regex!21517 Regex!21517 List!74746 C!43372) Unit!170206)

(assert (=> b!7967126 (= lt!2706233 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!225 baseR!116 r!24602 testedP!447 lt!2706223))))

(declare-fun b!7967127 () Bool)

(declare-fun e!4697921 () Bool)

(declare-fun tp_is_empty!53577 () Bool)

(assert (=> b!7967127 (= e!4697921 tp_is_empty!53577)))

(declare-fun b!7967128 () Bool)

(declare-fun e!4697923 () Bool)

(assert (=> b!7967128 (= e!4697923 e!4697917)))

(declare-fun res!3156953 () Bool)

(assert (=> b!7967128 (=> res!3156953 e!4697917)))

(declare-fun nullable!9616 (Regex!21517) Bool)

(assert (=> b!7967128 (= res!3156953 (nullable!9616 r!24602))))

(declare-fun input!7927 () List!74746)

(declare-fun isPrefix!6617 (List!74746 List!74746) Bool)

(assert (=> b!7967128 (isPrefix!6617 lt!2706230 input!7927)))

(declare-fun lt!2706226 () Unit!170206)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1344 (List!74746 List!74746) Unit!170206)

(assert (=> b!7967128 (= lt!2706226 (lemmaAddHeadSuffixToPrefixStillPrefix!1344 testedP!447 input!7927))))

(declare-fun ++!18387 (List!74746 List!74746) List!74746)

(assert (=> b!7967128 (= lt!2706230 (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622)))))

(declare-fun head!16269 (List!74746) C!43372)

(assert (=> b!7967128 (= lt!2706223 (head!16269 lt!2706227))))

(declare-fun b!7967129 () Bool)

(declare-fun res!3156950 () Bool)

(declare-fun e!4697920 () Bool)

(assert (=> b!7967129 (=> (not res!3156950) (not e!4697920))))

(assert (=> b!7967129 (= res!3156950 (isPrefix!6617 testedP!447 input!7927))))

(declare-fun b!7967130 () Bool)

(declare-fun tp!2374645 () Bool)

(declare-fun tp!2374637 () Bool)

(assert (=> b!7967130 (= e!4697921 (and tp!2374645 tp!2374637))))

(declare-fun b!7967131 () Bool)

(declare-fun e!4697922 () Bool)

(assert (=> b!7967131 (= e!4697920 e!4697922)))

(declare-fun res!3156955 () Bool)

(assert (=> b!7967131 (=> (not res!3156955) (not e!4697922))))

(declare-fun lt!2706229 () Int)

(declare-fun lt!2706224 () Int)

(declare-fun isEmpty!42923 (List!74746) Bool)

(declare-datatypes ((tuple2!70696 0))(
  ( (tuple2!70697 (_1!38651 List!74746) (_2!38651 List!74746)) )
))
(declare-fun findLongestMatchInner!2298 (Regex!21517 List!74746 Int List!74746 List!74746 Int) tuple2!70696)

(assert (=> b!7967131 (= res!3156955 (not (isEmpty!42923 (_1!38651 (findLongestMatchInner!2298 r!24602 testedP!447 lt!2706224 lt!2706227 input!7927 lt!2706229)))))))

(declare-fun size!43453 (List!74746) Int)

(assert (=> b!7967131 (= lt!2706229 (size!43453 input!7927))))

(declare-fun getSuffix!3820 (List!74746 List!74746) List!74746)

(assert (=> b!7967131 (= lt!2706227 (getSuffix!3820 input!7927 testedP!447))))

(assert (=> b!7967131 (= lt!2706224 (size!43453 testedP!447))))

(declare-fun b!7967132 () Bool)

(declare-fun tp!2374638 () Bool)

(assert (=> b!7967132 (= e!4697921 tp!2374638)))

(declare-fun b!7967134 () Bool)

(declare-fun tp!2374636 () Bool)

(declare-fun tp!2374640 () Bool)

(assert (=> b!7967134 (= e!4697921 (and tp!2374636 tp!2374640))))

(declare-fun b!7967135 () Bool)

(declare-fun e!4697925 () Bool)

(assert (=> b!7967135 (= e!4697925 tp_is_empty!53577)))

(declare-fun b!7967136 () Bool)

(declare-fun e!4697919 () Bool)

(declare-fun tp!2374643 () Bool)

(assert (=> b!7967136 (= e!4697919 (and tp_is_empty!53577 tp!2374643))))

(declare-fun b!7967137 () Bool)

(declare-fun tp!2374644 () Bool)

(declare-fun tp!2374639 () Bool)

(assert (=> b!7967137 (= e!4697925 (and tp!2374644 tp!2374639))))

(declare-fun b!7967138 () Bool)

(assert (=> b!7967138 (= e!4697922 (not e!4697923))))

(declare-fun res!3156951 () Bool)

(assert (=> b!7967138 (=> res!3156951 e!4697923)))

(assert (=> b!7967138 (= res!3156951 (>= lt!2706224 lt!2706229))))

(declare-fun lt!2706232 () Unit!170206)

(declare-fun e!4697924 () Unit!170206)

(assert (=> b!7967138 (= lt!2706232 e!4697924)))

(declare-fun c!1463129 () Bool)

(assert (=> b!7967138 (= c!1463129 (= lt!2706224 lt!2706229))))

(assert (=> b!7967138 (<= lt!2706224 lt!2706229)))

(declare-fun lt!2706231 () Unit!170206)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1134 (List!74746 List!74746) Unit!170206)

(assert (=> b!7967138 (= lt!2706231 (lemmaIsPrefixThenSmallerEqSize!1134 testedP!447 input!7927))))

(declare-fun b!7967139 () Bool)

(declare-fun Unit!170208 () Unit!170206)

(assert (=> b!7967139 (= e!4697924 Unit!170208)))

(declare-fun b!7967140 () Bool)

(declare-fun res!3156954 () Bool)

(assert (=> b!7967140 (=> (not res!3156954) (not e!4697922))))

(assert (=> b!7967140 (= res!3156954 (not (= testedP!447 input!7927)))))

(declare-fun b!7967141 () Bool)

(declare-fun tp!2374641 () Bool)

(declare-fun tp!2374646 () Bool)

(assert (=> b!7967141 (= e!4697925 (and tp!2374641 tp!2374646))))

(declare-fun res!3156952 () Bool)

(assert (=> start!751428 (=> (not res!3156952) (not e!4697920))))

(declare-fun validRegex!11821 (Regex!21517) Bool)

(assert (=> start!751428 (= res!3156952 (validRegex!11821 baseR!116))))

(assert (=> start!751428 e!4697920))

(assert (=> start!751428 e!4697925))

(assert (=> start!751428 e!4697919))

(declare-fun e!4697918 () Bool)

(assert (=> start!751428 e!4697918))

(assert (=> start!751428 e!4697921))

(declare-fun b!7967133 () Bool)

(declare-fun res!3156956 () Bool)

(assert (=> b!7967133 (=> (not res!3156956) (not e!4697920))))

(assert (=> b!7967133 (= res!3156956 (= (derivative!703 baseR!116 testedP!447) r!24602))))

(declare-fun b!7967142 () Bool)

(declare-fun tp!2374642 () Bool)

(assert (=> b!7967142 (= e!4697925 tp!2374642)))

(declare-fun b!7967143 () Bool)

(declare-fun tp!2374635 () Bool)

(assert (=> b!7967143 (= e!4697918 (and tp_is_empty!53577 tp!2374635))))

(declare-fun b!7967144 () Bool)

(declare-fun Unit!170209 () Unit!170206)

(assert (=> b!7967144 (= e!4697924 Unit!170209)))

(declare-fun lt!2706228 () Unit!170206)

(declare-fun lemmaIsPrefixRefl!4085 (List!74746 List!74746) Unit!170206)

(assert (=> b!7967144 (= lt!2706228 (lemmaIsPrefixRefl!4085 input!7927 input!7927))))

(assert (=> b!7967144 (isPrefix!6617 input!7927 input!7927)))

(declare-fun lt!2706225 () Unit!170206)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1665 (List!74746 List!74746 List!74746) Unit!170206)

(assert (=> b!7967144 (= lt!2706225 (lemmaIsPrefixSameLengthThenSameList!1665 input!7927 testedP!447 input!7927))))

(assert (=> b!7967144 false))

(assert (= (and start!751428 res!3156952) b!7967129))

(assert (= (and b!7967129 res!3156950) b!7967133))

(assert (= (and b!7967133 res!3156956) b!7967131))

(assert (= (and b!7967131 res!3156955) b!7967140))

(assert (= (and b!7967140 res!3156954) b!7967138))

(assert (= (and b!7967138 c!1463129) b!7967144))

(assert (= (and b!7967138 (not c!1463129)) b!7967139))

(assert (= (and b!7967138 (not res!3156951)) b!7967128))

(assert (= (and b!7967128 (not res!3156953)) b!7967126))

(get-info :version)

(assert (= (and start!751428 ((_ is ElementMatch!21517) baseR!116)) b!7967135))

(assert (= (and start!751428 ((_ is Concat!30516) baseR!116)) b!7967137))

(assert (= (and start!751428 ((_ is Star!21517) baseR!116)) b!7967142))

(assert (= (and start!751428 ((_ is Union!21517) baseR!116)) b!7967141))

(assert (= (and start!751428 ((_ is Cons!74622) testedP!447)) b!7967136))

(assert (= (and start!751428 ((_ is Cons!74622) input!7927)) b!7967143))

(assert (= (and start!751428 ((_ is ElementMatch!21517) r!24602)) b!7967127))

(assert (= (and start!751428 ((_ is Concat!30516) r!24602)) b!7967134))

(assert (= (and start!751428 ((_ is Star!21517) r!24602)) b!7967132))

(assert (= (and start!751428 ((_ is Union!21517) r!24602)) b!7967130))

(declare-fun m!8346406 () Bool)

(assert (=> b!7967126 m!8346406))

(declare-fun m!8346408 () Bool)

(assert (=> b!7967126 m!8346408))

(declare-fun m!8346410 () Bool)

(assert (=> b!7967126 m!8346410))

(declare-fun m!8346412 () Bool)

(assert (=> b!7967129 m!8346412))

(declare-fun m!8346414 () Bool)

(assert (=> start!751428 m!8346414))

(declare-fun m!8346416 () Bool)

(assert (=> b!7967144 m!8346416))

(declare-fun m!8346418 () Bool)

(assert (=> b!7967144 m!8346418))

(declare-fun m!8346420 () Bool)

(assert (=> b!7967144 m!8346420))

(declare-fun m!8346422 () Bool)

(assert (=> b!7967128 m!8346422))

(declare-fun m!8346424 () Bool)

(assert (=> b!7967128 m!8346424))

(declare-fun m!8346426 () Bool)

(assert (=> b!7967128 m!8346426))

(declare-fun m!8346428 () Bool)

(assert (=> b!7967128 m!8346428))

(declare-fun m!8346430 () Bool)

(assert (=> b!7967128 m!8346430))

(declare-fun m!8346432 () Bool)

(assert (=> b!7967131 m!8346432))

(declare-fun m!8346434 () Bool)

(assert (=> b!7967131 m!8346434))

(declare-fun m!8346436 () Bool)

(assert (=> b!7967131 m!8346436))

(declare-fun m!8346438 () Bool)

(assert (=> b!7967131 m!8346438))

(declare-fun m!8346440 () Bool)

(assert (=> b!7967131 m!8346440))

(declare-fun m!8346442 () Bool)

(assert (=> b!7967138 m!8346442))

(declare-fun m!8346444 () Bool)

(assert (=> b!7967133 m!8346444))

(check-sat (not b!7967133) (not b!7967134) tp_is_empty!53577 (not b!7967142) (not b!7967130) (not b!7967144) (not b!7967126) (not start!751428) (not b!7967128) (not b!7967138) (not b!7967132) (not b!7967143) (not b!7967141) (not b!7967136) (not b!7967137) (not b!7967131) (not b!7967129))
(check-sat)
(get-model)

(declare-fun d!2379251 () Bool)

(assert (=> d!2379251 (<= (size!43453 testedP!447) (size!43453 input!7927))))

(declare-fun lt!2706245 () Unit!170206)

(declare-fun choose!60063 (List!74746 List!74746) Unit!170206)

(assert (=> d!2379251 (= lt!2706245 (choose!60063 testedP!447 input!7927))))

(assert (=> d!2379251 (isPrefix!6617 testedP!447 input!7927)))

(assert (=> d!2379251 (= (lemmaIsPrefixThenSmallerEqSize!1134 testedP!447 input!7927) lt!2706245)))

(declare-fun bs!1969891 () Bool)

(assert (= bs!1969891 d!2379251))

(assert (=> bs!1969891 m!8346434))

(assert (=> bs!1969891 m!8346436))

(declare-fun m!8346456 () Bool)

(assert (=> bs!1969891 m!8346456))

(assert (=> bs!1969891 m!8346412))

(assert (=> b!7967138 d!2379251))

(declare-fun d!2379257 () Bool)

(declare-fun lt!2706253 () Regex!21517)

(assert (=> d!2379257 (validRegex!11821 lt!2706253)))

(declare-fun e!4697940 () Regex!21517)

(assert (=> d!2379257 (= lt!2706253 e!4697940)))

(declare-fun c!1463136 () Bool)

(assert (=> d!2379257 (= c!1463136 ((_ is Cons!74622) testedP!447))))

(assert (=> d!2379257 (validRegex!11821 baseR!116)))

(assert (=> d!2379257 (= (derivative!703 baseR!116 testedP!447) lt!2706253)))

(declare-fun b!7967167 () Bool)

(assert (=> b!7967167 (= e!4697940 (derivative!703 (derivativeStep!6543 baseR!116 (h!81070 testedP!447)) (t!390489 testedP!447)))))

(declare-fun b!7967168 () Bool)

(assert (=> b!7967168 (= e!4697940 baseR!116)))

(assert (= (and d!2379257 c!1463136) b!7967167))

(assert (= (and d!2379257 (not c!1463136)) b!7967168))

(declare-fun m!8346466 () Bool)

(assert (=> d!2379257 m!8346466))

(assert (=> d!2379257 m!8346414))

(declare-fun m!8346468 () Bool)

(assert (=> b!7967167 m!8346468))

(assert (=> b!7967167 m!8346468))

(declare-fun m!8346470 () Bool)

(assert (=> b!7967167 m!8346470))

(assert (=> b!7967133 d!2379257))

(declare-fun d!2379263 () Bool)

(assert (=> d!2379263 (isPrefix!6617 (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)) input!7927)))

(declare-fun lt!2706258 () Unit!170206)

(declare-fun choose!60064 (List!74746 List!74746) Unit!170206)

(assert (=> d!2379263 (= lt!2706258 (choose!60064 testedP!447 input!7927))))

(assert (=> d!2379263 (isPrefix!6617 testedP!447 input!7927)))

(assert (=> d!2379263 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1344 testedP!447 input!7927) lt!2706258)))

(declare-fun bs!1969893 () Bool)

(assert (= bs!1969893 d!2379263))

(assert (=> bs!1969893 m!8346440))

(declare-fun m!8346478 () Bool)

(assert (=> bs!1969893 m!8346478))

(assert (=> bs!1969893 m!8346412))

(declare-fun m!8346480 () Bool)

(assert (=> bs!1969893 m!8346480))

(declare-fun m!8346482 () Bool)

(assert (=> bs!1969893 m!8346482))

(assert (=> bs!1969893 m!8346482))

(declare-fun m!8346484 () Bool)

(assert (=> bs!1969893 m!8346484))

(assert (=> bs!1969893 m!8346440))

(assert (=> b!7967128 d!2379263))

(declare-fun b!7967200 () Bool)

(declare-fun res!3156980 () Bool)

(declare-fun e!4697960 () Bool)

(assert (=> b!7967200 (=> (not res!3156980) (not e!4697960))))

(assert (=> b!7967200 (= res!3156980 (= (head!16269 lt!2706230) (head!16269 input!7927)))))

(declare-fun d!2379267 () Bool)

(declare-fun e!4697959 () Bool)

(assert (=> d!2379267 e!4697959))

(declare-fun res!3156978 () Bool)

(assert (=> d!2379267 (=> res!3156978 e!4697959)))

(declare-fun lt!2706263 () Bool)

(assert (=> d!2379267 (= res!3156978 (not lt!2706263))))

(declare-fun e!4697958 () Bool)

(assert (=> d!2379267 (= lt!2706263 e!4697958)))

(declare-fun res!3156977 () Bool)

(assert (=> d!2379267 (=> res!3156977 e!4697958)))

(assert (=> d!2379267 (= res!3156977 ((_ is Nil!74622) lt!2706230))))

(assert (=> d!2379267 (= (isPrefix!6617 lt!2706230 input!7927) lt!2706263)))

(declare-fun b!7967202 () Bool)

(assert (=> b!7967202 (= e!4697959 (>= (size!43453 input!7927) (size!43453 lt!2706230)))))

(declare-fun b!7967199 () Bool)

(assert (=> b!7967199 (= e!4697958 e!4697960)))

(declare-fun res!3156979 () Bool)

(assert (=> b!7967199 (=> (not res!3156979) (not e!4697960))))

(assert (=> b!7967199 (= res!3156979 (not ((_ is Nil!74622) input!7927)))))

(declare-fun b!7967201 () Bool)

(declare-fun tail!15804 (List!74746) List!74746)

(assert (=> b!7967201 (= e!4697960 (isPrefix!6617 (tail!15804 lt!2706230) (tail!15804 input!7927)))))

(assert (= (and d!2379267 (not res!3156977)) b!7967199))

(assert (= (and b!7967199 res!3156979) b!7967200))

(assert (= (and b!7967200 res!3156980) b!7967201))

(assert (= (and d!2379267 (not res!3156978)) b!7967202))

(declare-fun m!8346486 () Bool)

(assert (=> b!7967200 m!8346486))

(declare-fun m!8346488 () Bool)

(assert (=> b!7967200 m!8346488))

(assert (=> b!7967202 m!8346436))

(declare-fun m!8346490 () Bool)

(assert (=> b!7967202 m!8346490))

(declare-fun m!8346492 () Bool)

(assert (=> b!7967201 m!8346492))

(declare-fun m!8346494 () Bool)

(assert (=> b!7967201 m!8346494))

(assert (=> b!7967201 m!8346492))

(assert (=> b!7967201 m!8346494))

(declare-fun m!8346496 () Bool)

(assert (=> b!7967201 m!8346496))

(assert (=> b!7967128 d!2379267))

(declare-fun d!2379269 () Bool)

(declare-fun nullableFct!3796 (Regex!21517) Bool)

(assert (=> d!2379269 (= (nullable!9616 r!24602) (nullableFct!3796 r!24602))))

(declare-fun bs!1969894 () Bool)

(assert (= bs!1969894 d!2379269))

(declare-fun m!8346498 () Bool)

(assert (=> bs!1969894 m!8346498))

(assert (=> b!7967128 d!2379269))

(declare-fun d!2379271 () Bool)

(assert (=> d!2379271 (= (head!16269 lt!2706227) (h!81070 lt!2706227))))

(assert (=> b!7967128 d!2379271))

(declare-fun d!2379273 () Bool)

(declare-fun e!4697971 () Bool)

(assert (=> d!2379273 e!4697971))

(declare-fun res!3156985 () Bool)

(assert (=> d!2379273 (=> (not res!3156985) (not e!4697971))))

(declare-fun lt!2706267 () List!74746)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15854 (List!74746) (InoxSet C!43372))

(assert (=> d!2379273 (= res!3156985 (= (content!15854 lt!2706267) ((_ map or) (content!15854 testedP!447) (content!15854 (Cons!74622 lt!2706223 Nil!74622)))))))

(declare-fun e!4697970 () List!74746)

(assert (=> d!2379273 (= lt!2706267 e!4697970)))

(declare-fun c!1463155 () Bool)

(assert (=> d!2379273 (= c!1463155 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379273 (= (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622)) lt!2706267)))

(declare-fun b!7967223 () Bool)

(declare-fun res!3156986 () Bool)

(assert (=> b!7967223 (=> (not res!3156986) (not e!4697971))))

(assert (=> b!7967223 (= res!3156986 (= (size!43453 lt!2706267) (+ (size!43453 testedP!447) (size!43453 (Cons!74622 lt!2706223 Nil!74622)))))))

(declare-fun b!7967222 () Bool)

(assert (=> b!7967222 (= e!4697970 (Cons!74622 (h!81070 testedP!447) (++!18387 (t!390489 testedP!447) (Cons!74622 lt!2706223 Nil!74622))))))

(declare-fun b!7967224 () Bool)

(assert (=> b!7967224 (= e!4697971 (or (not (= (Cons!74622 lt!2706223 Nil!74622) Nil!74622)) (= lt!2706267 testedP!447)))))

(declare-fun b!7967221 () Bool)

(assert (=> b!7967221 (= e!4697970 (Cons!74622 lt!2706223 Nil!74622))))

(assert (= (and d!2379273 c!1463155) b!7967221))

(assert (= (and d!2379273 (not c!1463155)) b!7967222))

(assert (= (and d!2379273 res!3156985) b!7967223))

(assert (= (and b!7967223 res!3156986) b!7967224))

(declare-fun m!8346510 () Bool)

(assert (=> d!2379273 m!8346510))

(declare-fun m!8346512 () Bool)

(assert (=> d!2379273 m!8346512))

(declare-fun m!8346514 () Bool)

(assert (=> d!2379273 m!8346514))

(declare-fun m!8346516 () Bool)

(assert (=> b!7967223 m!8346516))

(assert (=> b!7967223 m!8346434))

(declare-fun m!8346518 () Bool)

(assert (=> b!7967223 m!8346518))

(declare-fun m!8346520 () Bool)

(assert (=> b!7967222 m!8346520))

(assert (=> b!7967128 d!2379273))

(declare-fun d!2379277 () Bool)

(assert (=> d!2379277 (isPrefix!6617 input!7927 input!7927)))

(declare-fun lt!2706273 () Unit!170206)

(declare-fun choose!60065 (List!74746 List!74746) Unit!170206)

(assert (=> d!2379277 (= lt!2706273 (choose!60065 input!7927 input!7927))))

(assert (=> d!2379277 (= (lemmaIsPrefixRefl!4085 input!7927 input!7927) lt!2706273)))

(declare-fun bs!1969896 () Bool)

(assert (= bs!1969896 d!2379277))

(assert (=> bs!1969896 m!8346418))

(declare-fun m!8346526 () Bool)

(assert (=> bs!1969896 m!8346526))

(assert (=> b!7967144 d!2379277))

(declare-fun b!7967226 () Bool)

(declare-fun res!3156990 () Bool)

(declare-fun e!4697974 () Bool)

(assert (=> b!7967226 (=> (not res!3156990) (not e!4697974))))

(assert (=> b!7967226 (= res!3156990 (= (head!16269 input!7927) (head!16269 input!7927)))))

(declare-fun d!2379281 () Bool)

(declare-fun e!4697973 () Bool)

(assert (=> d!2379281 e!4697973))

(declare-fun res!3156988 () Bool)

(assert (=> d!2379281 (=> res!3156988 e!4697973)))

(declare-fun lt!2706274 () Bool)

(assert (=> d!2379281 (= res!3156988 (not lt!2706274))))

(declare-fun e!4697972 () Bool)

(assert (=> d!2379281 (= lt!2706274 e!4697972)))

(declare-fun res!3156987 () Bool)

(assert (=> d!2379281 (=> res!3156987 e!4697972)))

(assert (=> d!2379281 (= res!3156987 ((_ is Nil!74622) input!7927))))

(assert (=> d!2379281 (= (isPrefix!6617 input!7927 input!7927) lt!2706274)))

(declare-fun b!7967228 () Bool)

(assert (=> b!7967228 (= e!4697973 (>= (size!43453 input!7927) (size!43453 input!7927)))))

(declare-fun b!7967225 () Bool)

(assert (=> b!7967225 (= e!4697972 e!4697974)))

(declare-fun res!3156989 () Bool)

(assert (=> b!7967225 (=> (not res!3156989) (not e!4697974))))

(assert (=> b!7967225 (= res!3156989 (not ((_ is Nil!74622) input!7927)))))

(declare-fun b!7967227 () Bool)

(assert (=> b!7967227 (= e!4697974 (isPrefix!6617 (tail!15804 input!7927) (tail!15804 input!7927)))))

(assert (= (and d!2379281 (not res!3156987)) b!7967225))

(assert (= (and b!7967225 res!3156989) b!7967226))

(assert (= (and b!7967226 res!3156990) b!7967227))

(assert (= (and d!2379281 (not res!3156988)) b!7967228))

(assert (=> b!7967226 m!8346488))

(assert (=> b!7967226 m!8346488))

(assert (=> b!7967228 m!8346436))

(assert (=> b!7967228 m!8346436))

(assert (=> b!7967227 m!8346494))

(assert (=> b!7967227 m!8346494))

(assert (=> b!7967227 m!8346494))

(assert (=> b!7967227 m!8346494))

(declare-fun m!8346528 () Bool)

(assert (=> b!7967227 m!8346528))

(assert (=> b!7967144 d!2379281))

(declare-fun d!2379283 () Bool)

(assert (=> d!2379283 (= input!7927 testedP!447)))

(declare-fun lt!2706279 () Unit!170206)

(declare-fun choose!60066 (List!74746 List!74746 List!74746) Unit!170206)

(assert (=> d!2379283 (= lt!2706279 (choose!60066 input!7927 testedP!447 input!7927))))

(assert (=> d!2379283 (isPrefix!6617 input!7927 input!7927)))

(assert (=> d!2379283 (= (lemmaIsPrefixSameLengthThenSameList!1665 input!7927 testedP!447 input!7927) lt!2706279)))

(declare-fun bs!1969897 () Bool)

(assert (= bs!1969897 d!2379283))

(declare-fun m!8346530 () Bool)

(assert (=> bs!1969897 m!8346530))

(assert (=> bs!1969897 m!8346418))

(assert (=> b!7967144 d!2379283))

(declare-fun b!7967230 () Bool)

(declare-fun res!3156994 () Bool)

(declare-fun e!4697977 () Bool)

(assert (=> b!7967230 (=> (not res!3156994) (not e!4697977))))

(assert (=> b!7967230 (= res!3156994 (= (head!16269 testedP!447) (head!16269 input!7927)))))

(declare-fun d!2379285 () Bool)

(declare-fun e!4697976 () Bool)

(assert (=> d!2379285 e!4697976))

(declare-fun res!3156992 () Bool)

(assert (=> d!2379285 (=> res!3156992 e!4697976)))

(declare-fun lt!2706281 () Bool)

(assert (=> d!2379285 (= res!3156992 (not lt!2706281))))

(declare-fun e!4697975 () Bool)

(assert (=> d!2379285 (= lt!2706281 e!4697975)))

(declare-fun res!3156991 () Bool)

(assert (=> d!2379285 (=> res!3156991 e!4697975)))

(assert (=> d!2379285 (= res!3156991 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379285 (= (isPrefix!6617 testedP!447 input!7927) lt!2706281)))

(declare-fun b!7967232 () Bool)

(assert (=> b!7967232 (= e!4697976 (>= (size!43453 input!7927) (size!43453 testedP!447)))))

(declare-fun b!7967229 () Bool)

(assert (=> b!7967229 (= e!4697975 e!4697977)))

(declare-fun res!3156993 () Bool)

(assert (=> b!7967229 (=> (not res!3156993) (not e!4697977))))

(assert (=> b!7967229 (= res!3156993 (not ((_ is Nil!74622) input!7927)))))

(declare-fun b!7967231 () Bool)

(assert (=> b!7967231 (= e!4697977 (isPrefix!6617 (tail!15804 testedP!447) (tail!15804 input!7927)))))

(assert (= (and d!2379285 (not res!3156991)) b!7967229))

(assert (= (and b!7967229 res!3156993) b!7967230))

(assert (= (and b!7967230 res!3156994) b!7967231))

(assert (= (and d!2379285 (not res!3156992)) b!7967232))

(declare-fun m!8346540 () Bool)

(assert (=> b!7967230 m!8346540))

(assert (=> b!7967230 m!8346488))

(assert (=> b!7967232 m!8346436))

(assert (=> b!7967232 m!8346434))

(declare-fun m!8346542 () Bool)

(assert (=> b!7967231 m!8346542))

(assert (=> b!7967231 m!8346494))

(assert (=> b!7967231 m!8346542))

(assert (=> b!7967231 m!8346494))

(declare-fun m!8346544 () Bool)

(assert (=> b!7967231 m!8346544))

(assert (=> b!7967129 d!2379285))

(declare-fun b!7967267 () Bool)

(declare-fun e!4698006 () Bool)

(declare-fun e!4698004 () Bool)

(assert (=> b!7967267 (= e!4698006 e!4698004)))

(declare-fun c!1463164 () Bool)

(assert (=> b!7967267 (= c!1463164 ((_ is Union!21517) baseR!116))))

(declare-fun b!7967268 () Bool)

(declare-fun res!3157017 () Bool)

(declare-fun e!4698003 () Bool)

(assert (=> b!7967268 (=> (not res!3157017) (not e!4698003))))

(declare-fun call!739099 () Bool)

(assert (=> b!7967268 (= res!3157017 call!739099)))

(assert (=> b!7967268 (= e!4698004 e!4698003)))

(declare-fun b!7967269 () Bool)

(declare-fun e!4698001 () Bool)

(assert (=> b!7967269 (= e!4698001 e!4698006)))

(declare-fun c!1463165 () Bool)

(assert (=> b!7967269 (= c!1463165 ((_ is Star!21517) baseR!116))))

(declare-fun bm!739094 () Bool)

(declare-fun call!739101 () Bool)

(assert (=> bm!739094 (= call!739101 (validRegex!11821 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))))))

(declare-fun b!7967270 () Bool)

(declare-fun e!4698002 () Bool)

(assert (=> b!7967270 (= e!4698002 call!739101)))

(declare-fun b!7967271 () Bool)

(declare-fun call!739100 () Bool)

(assert (=> b!7967271 (= e!4698003 call!739100)))

(declare-fun bm!739095 () Bool)

(assert (=> bm!739095 (= call!739100 (validRegex!11821 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))))))

(declare-fun bm!739096 () Bool)

(assert (=> bm!739096 (= call!739099 call!739101)))

(declare-fun b!7967272 () Bool)

(declare-fun e!4698005 () Bool)

(assert (=> b!7967272 (= e!4698005 call!739100)))

(declare-fun b!7967273 () Bool)

(assert (=> b!7967273 (= e!4698006 e!4698002)))

(declare-fun res!3157016 () Bool)

(assert (=> b!7967273 (= res!3157016 (not (nullable!9616 (reg!21846 baseR!116))))))

(assert (=> b!7967273 (=> (not res!3157016) (not e!4698002))))

(declare-fun d!2379289 () Bool)

(declare-fun res!3157019 () Bool)

(assert (=> d!2379289 (=> res!3157019 e!4698001)))

(assert (=> d!2379289 (= res!3157019 ((_ is ElementMatch!21517) baseR!116))))

(assert (=> d!2379289 (= (validRegex!11821 baseR!116) e!4698001)))

(declare-fun b!7967274 () Bool)

(declare-fun e!4698007 () Bool)

(assert (=> b!7967274 (= e!4698007 e!4698005)))

(declare-fun res!3157018 () Bool)

(assert (=> b!7967274 (=> (not res!3157018) (not e!4698005))))

(assert (=> b!7967274 (= res!3157018 call!739099)))

(declare-fun b!7967275 () Bool)

(declare-fun res!3157015 () Bool)

(assert (=> b!7967275 (=> res!3157015 e!4698007)))

(assert (=> b!7967275 (= res!3157015 (not ((_ is Concat!30516) baseR!116)))))

(assert (=> b!7967275 (= e!4698004 e!4698007)))

(assert (= (and d!2379289 (not res!3157019)) b!7967269))

(assert (= (and b!7967269 c!1463165) b!7967273))

(assert (= (and b!7967269 (not c!1463165)) b!7967267))

(assert (= (and b!7967273 res!3157016) b!7967270))

(assert (= (and b!7967267 c!1463164) b!7967268))

(assert (= (and b!7967267 (not c!1463164)) b!7967275))

(assert (= (and b!7967268 res!3157017) b!7967271))

(assert (= (and b!7967275 (not res!3157015)) b!7967274))

(assert (= (and b!7967274 res!3157018) b!7967272))

(assert (= (or b!7967271 b!7967272) bm!739095))

(assert (= (or b!7967268 b!7967274) bm!739096))

(assert (= (or b!7967270 bm!739096) bm!739094))

(declare-fun m!8346568 () Bool)

(assert (=> bm!739094 m!8346568))

(declare-fun m!8346570 () Bool)

(assert (=> bm!739095 m!8346570))

(declare-fun m!8346572 () Bool)

(assert (=> b!7967273 m!8346572))

(assert (=> start!751428 d!2379289))

(declare-fun d!2379299 () Bool)

(declare-fun lt!2706293 () Int)

(assert (=> d!2379299 (>= lt!2706293 0)))

(declare-fun e!4698015 () Int)

(assert (=> d!2379299 (= lt!2706293 e!4698015)))

(declare-fun c!1463173 () Bool)

(assert (=> d!2379299 (= c!1463173 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379299 (= (size!43453 testedP!447) lt!2706293)))

(declare-fun b!7967290 () Bool)

(assert (=> b!7967290 (= e!4698015 0)))

(declare-fun b!7967291 () Bool)

(assert (=> b!7967291 (= e!4698015 (+ 1 (size!43453 (t!390489 testedP!447))))))

(assert (= (and d!2379299 c!1463173) b!7967290))

(assert (= (and d!2379299 (not c!1463173)) b!7967291))

(declare-fun m!8346576 () Bool)

(assert (=> b!7967291 m!8346576))

(assert (=> b!7967131 d!2379299))

(declare-fun d!2379303 () Bool)

(assert (=> d!2379303 (= (isEmpty!42923 (_1!38651 (findLongestMatchInner!2298 r!24602 testedP!447 lt!2706224 lt!2706227 input!7927 lt!2706229))) ((_ is Nil!74622) (_1!38651 (findLongestMatchInner!2298 r!24602 testedP!447 lt!2706224 lt!2706227 input!7927 lt!2706229))))))

(assert (=> b!7967131 d!2379303))

(declare-fun d!2379307 () Bool)

(declare-fun lt!2706295 () Int)

(assert (=> d!2379307 (>= lt!2706295 0)))

(declare-fun e!4698017 () Int)

(assert (=> d!2379307 (= lt!2706295 e!4698017)))

(declare-fun c!1463175 () Bool)

(assert (=> d!2379307 (= c!1463175 ((_ is Nil!74622) input!7927))))

(assert (=> d!2379307 (= (size!43453 input!7927) lt!2706295)))

(declare-fun b!7967294 () Bool)

(assert (=> b!7967294 (= e!4698017 0)))

(declare-fun b!7967295 () Bool)

(assert (=> b!7967295 (= e!4698017 (+ 1 (size!43453 (t!390489 input!7927))))))

(assert (= (and d!2379307 c!1463175) b!7967294))

(assert (= (and d!2379307 (not c!1463175)) b!7967295))

(declare-fun m!8346582 () Bool)

(assert (=> b!7967295 m!8346582))

(assert (=> b!7967131 d!2379307))

(declare-fun b!7967455 () Bool)

(declare-fun e!4698100 () tuple2!70696)

(assert (=> b!7967455 (= e!4698100 (tuple2!70697 testedP!447 lt!2706227))))

(declare-fun b!7967456 () Bool)

(declare-fun e!4698099 () tuple2!70696)

(assert (=> b!7967456 (= e!4698099 e!4698100)))

(declare-fun lt!2706447 () tuple2!70696)

(declare-fun call!739158 () tuple2!70696)

(assert (=> b!7967456 (= lt!2706447 call!739158)))

(declare-fun c!1463215 () Bool)

(assert (=> b!7967456 (= c!1463215 (isEmpty!42923 (_1!38651 lt!2706447)))))

(declare-fun b!7967457 () Bool)

(declare-fun c!1463216 () Bool)

(declare-fun call!739154 () Bool)

(assert (=> b!7967457 (= c!1463216 call!739154)))

(declare-fun lt!2706449 () Unit!170206)

(declare-fun lt!2706460 () Unit!170206)

(assert (=> b!7967457 (= lt!2706449 lt!2706460)))

(declare-fun lt!2706465 () C!43372)

(declare-fun lt!2706457 () List!74746)

(assert (=> b!7967457 (= (++!18387 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622)) lt!2706457) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3542 (List!74746 C!43372 List!74746 List!74746) Unit!170206)

(assert (=> b!7967457 (= lt!2706460 (lemmaMoveElementToOtherListKeepsConcatEq!3542 testedP!447 lt!2706465 lt!2706457 input!7927))))

(assert (=> b!7967457 (= lt!2706457 (tail!15804 lt!2706227))))

(assert (=> b!7967457 (= lt!2706465 (head!16269 lt!2706227))))

(declare-fun lt!2706454 () Unit!170206)

(declare-fun lt!2706448 () Unit!170206)

(assert (=> b!7967457 (= lt!2706454 lt!2706448)))

(assert (=> b!7967457 (isPrefix!6617 (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)) input!7927)))

(assert (=> b!7967457 (= lt!2706448 (lemmaAddHeadSuffixToPrefixStillPrefix!1344 testedP!447 input!7927))))

(declare-fun lt!2706440 () Unit!170206)

(declare-fun lt!2706463 () Unit!170206)

(assert (=> b!7967457 (= lt!2706440 lt!2706463)))

(assert (=> b!7967457 (= lt!2706463 (lemmaAddHeadSuffixToPrefixStillPrefix!1344 testedP!447 input!7927))))

(declare-fun lt!2706445 () List!74746)

(assert (=> b!7967457 (= lt!2706445 (++!18387 testedP!447 (Cons!74622 (head!16269 lt!2706227) Nil!74622)))))

(declare-fun lt!2706442 () Unit!170206)

(declare-fun e!4698105 () Unit!170206)

(assert (=> b!7967457 (= lt!2706442 e!4698105)))

(declare-fun c!1463218 () Bool)

(assert (=> b!7967457 (= c!1463218 (= (size!43453 testedP!447) (size!43453 input!7927)))))

(declare-fun lt!2706438 () Unit!170206)

(declare-fun lt!2706441 () Unit!170206)

(assert (=> b!7967457 (= lt!2706438 lt!2706441)))

(assert (=> b!7967457 (<= (size!43453 testedP!447) (size!43453 input!7927))))

(assert (=> b!7967457 (= lt!2706441 (lemmaIsPrefixThenSmallerEqSize!1134 testedP!447 input!7927))))

(declare-fun e!4698106 () tuple2!70696)

(assert (=> b!7967457 (= e!4698106 e!4698099)))

(declare-fun b!7967458 () Bool)

(declare-fun Unit!170213 () Unit!170206)

(assert (=> b!7967458 (= e!4698105 Unit!170213)))

(declare-fun lt!2706443 () Unit!170206)

(declare-fun call!739152 () Unit!170206)

(assert (=> b!7967458 (= lt!2706443 call!739152)))

(declare-fun call!739151 () Bool)

(assert (=> b!7967458 call!739151))

(declare-fun lt!2706456 () Unit!170206)

(assert (=> b!7967458 (= lt!2706456 lt!2706443)))

(declare-fun lt!2706446 () Unit!170206)

(declare-fun call!739155 () Unit!170206)

(assert (=> b!7967458 (= lt!2706446 call!739155)))

(assert (=> b!7967458 (= input!7927 testedP!447)))

(declare-fun lt!2706455 () Unit!170206)

(assert (=> b!7967458 (= lt!2706455 lt!2706446)))

(assert (=> b!7967458 false))

(declare-fun bm!739146 () Bool)

(assert (=> bm!739146 (= call!739155 (lemmaIsPrefixSameLengthThenSameList!1665 input!7927 testedP!447 input!7927))))

(declare-fun bm!739147 () Bool)

(declare-fun call!739157 () C!43372)

(assert (=> bm!739147 (= call!739157 (head!16269 lt!2706227))))

(declare-fun bm!739148 () Bool)

(assert (=> bm!739148 (= call!739152 (lemmaIsPrefixRefl!4085 input!7927 input!7927))))

(declare-fun d!2379309 () Bool)

(declare-fun e!4698101 () Bool)

(assert (=> d!2379309 e!4698101))

(declare-fun res!3157049 () Bool)

(assert (=> d!2379309 (=> (not res!3157049) (not e!4698101))))

(declare-fun lt!2706450 () tuple2!70696)

(assert (=> d!2379309 (= res!3157049 (= (++!18387 (_1!38651 lt!2706450) (_2!38651 lt!2706450)) input!7927))))

(declare-fun e!4698103 () tuple2!70696)

(assert (=> d!2379309 (= lt!2706450 e!4698103)))

(declare-fun c!1463213 () Bool)

(declare-fun lostCause!1986 (Regex!21517) Bool)

(assert (=> d!2379309 (= c!1463213 (lostCause!1986 r!24602))))

(declare-fun lt!2706451 () Unit!170206)

(declare-fun Unit!170214 () Unit!170206)

(assert (=> d!2379309 (= lt!2706451 Unit!170214)))

(assert (=> d!2379309 (= (getSuffix!3820 input!7927 testedP!447) lt!2706227)))

(declare-fun lt!2706464 () Unit!170206)

(declare-fun lt!2706439 () Unit!170206)

(assert (=> d!2379309 (= lt!2706464 lt!2706439)))

(declare-fun lt!2706444 () List!74746)

(assert (=> d!2379309 (= lt!2706227 lt!2706444)))

(declare-fun lemmaSamePrefixThenSameSuffix!3002 (List!74746 List!74746 List!74746 List!74746 List!74746) Unit!170206)

(assert (=> d!2379309 (= lt!2706439 (lemmaSamePrefixThenSameSuffix!3002 testedP!447 lt!2706227 testedP!447 lt!2706444 input!7927))))

(assert (=> d!2379309 (= lt!2706444 (getSuffix!3820 input!7927 testedP!447))))

(declare-fun lt!2706461 () Unit!170206)

(declare-fun lt!2706453 () Unit!170206)

(assert (=> d!2379309 (= lt!2706461 lt!2706453)))

(assert (=> d!2379309 (isPrefix!6617 testedP!447 (++!18387 testedP!447 lt!2706227))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3864 (List!74746 List!74746) Unit!170206)

(assert (=> d!2379309 (= lt!2706453 (lemmaConcatTwoListThenFirstIsPrefix!3864 testedP!447 lt!2706227))))

(assert (=> d!2379309 (validRegex!11821 r!24602)))

(assert (=> d!2379309 (= (findLongestMatchInner!2298 r!24602 testedP!447 lt!2706224 lt!2706227 input!7927 lt!2706229) lt!2706450)))

(declare-fun b!7967459 () Bool)

(declare-fun e!4698102 () Bool)

(assert (=> b!7967459 (= e!4698101 e!4698102)))

(declare-fun res!3157050 () Bool)

(assert (=> b!7967459 (=> res!3157050 e!4698102)))

(assert (=> b!7967459 (= res!3157050 (isEmpty!42923 (_1!38651 lt!2706450)))))

(declare-fun b!7967460 () Bool)

(assert (=> b!7967460 (= e!4698100 lt!2706447)))

(declare-fun bm!739149 () Bool)

(assert (=> bm!739149 (= call!739151 (isPrefix!6617 input!7927 input!7927))))

(declare-fun bm!739150 () Bool)

(declare-fun call!739156 () Regex!21517)

(assert (=> bm!739150 (= call!739156 (derivativeStep!6543 r!24602 call!739157))))

(declare-fun b!7967461 () Bool)

(assert (=> b!7967461 (= e!4698099 call!739158)))

(declare-fun b!7967462 () Bool)

(assert (=> b!7967462 (= e!4698102 (>= (size!43453 (_1!38651 lt!2706450)) (size!43453 testedP!447)))))

(declare-fun b!7967463 () Bool)

(assert (=> b!7967463 (= e!4698103 e!4698106)))

(declare-fun c!1463217 () Bool)

(assert (=> b!7967463 (= c!1463217 (= lt!2706224 lt!2706229))))

(declare-fun bm!739151 () Bool)

(declare-fun call!739153 () List!74746)

(assert (=> bm!739151 (= call!739158 (findLongestMatchInner!2298 call!739156 lt!2706445 (+ lt!2706224 1) call!739153 input!7927 lt!2706229))))

(declare-fun b!7967464 () Bool)

(assert (=> b!7967464 (= e!4698103 (tuple2!70697 Nil!74622 input!7927))))

(declare-fun b!7967465 () Bool)

(declare-fun e!4698104 () tuple2!70696)

(assert (=> b!7967465 (= e!4698104 (tuple2!70697 testedP!447 Nil!74622))))

(declare-fun bm!739152 () Bool)

(assert (=> bm!739152 (= call!739153 (tail!15804 lt!2706227))))

(declare-fun b!7967466 () Bool)

(declare-fun Unit!170215 () Unit!170206)

(assert (=> b!7967466 (= e!4698105 Unit!170215)))

(declare-fun bm!739153 () Bool)

(assert (=> bm!739153 (= call!739154 (nullable!9616 r!24602))))

(declare-fun b!7967467 () Bool)

(assert (=> b!7967467 (= e!4698104 (tuple2!70697 Nil!74622 input!7927))))

(declare-fun b!7967468 () Bool)

(declare-fun c!1463214 () Bool)

(assert (=> b!7967468 (= c!1463214 call!739154)))

(declare-fun lt!2706462 () Unit!170206)

(declare-fun lt!2706458 () Unit!170206)

(assert (=> b!7967468 (= lt!2706462 lt!2706458)))

(assert (=> b!7967468 (= input!7927 testedP!447)))

(assert (=> b!7967468 (= lt!2706458 call!739155)))

(declare-fun lt!2706459 () Unit!170206)

(declare-fun lt!2706452 () Unit!170206)

(assert (=> b!7967468 (= lt!2706459 lt!2706452)))

(assert (=> b!7967468 call!739151))

(assert (=> b!7967468 (= lt!2706452 call!739152)))

(assert (=> b!7967468 (= e!4698106 e!4698104)))

(assert (= (and d!2379309 c!1463213) b!7967464))

(assert (= (and d!2379309 (not c!1463213)) b!7967463))

(assert (= (and b!7967463 c!1463217) b!7967468))

(assert (= (and b!7967463 (not c!1463217)) b!7967457))

(assert (= (and b!7967468 c!1463214) b!7967465))

(assert (= (and b!7967468 (not c!1463214)) b!7967467))

(assert (= (and b!7967457 c!1463218) b!7967458))

(assert (= (and b!7967457 (not c!1463218)) b!7967466))

(assert (= (and b!7967457 c!1463216) b!7967456))

(assert (= (and b!7967457 (not c!1463216)) b!7967461))

(assert (= (and b!7967456 c!1463215) b!7967455))

(assert (= (and b!7967456 (not c!1463215)) b!7967460))

(assert (= (or b!7967456 b!7967461) bm!739147))

(assert (= (or b!7967456 b!7967461) bm!739152))

(assert (= (or b!7967456 b!7967461) bm!739150))

(assert (= (or b!7967456 b!7967461) bm!739151))

(assert (= (or b!7967468 b!7967457) bm!739153))

(assert (= (or b!7967468 b!7967458) bm!739146))

(assert (= (or b!7967468 b!7967458) bm!739148))

(assert (= (or b!7967468 b!7967458) bm!739149))

(assert (= (and d!2379309 res!3157049) b!7967459))

(assert (= (and b!7967459 (not res!3157050)) b!7967462))

(assert (=> bm!739149 m!8346418))

(declare-fun m!8346630 () Bool)

(assert (=> b!7967459 m!8346630))

(declare-fun m!8346632 () Bool)

(assert (=> bm!739152 m!8346632))

(assert (=> bm!739148 m!8346416))

(assert (=> bm!739147 m!8346426))

(assert (=> bm!739146 m!8346420))

(declare-fun m!8346634 () Bool)

(assert (=> bm!739151 m!8346634))

(declare-fun m!8346636 () Bool)

(assert (=> b!7967456 m!8346636))

(declare-fun m!8346638 () Bool)

(assert (=> bm!739150 m!8346638))

(assert (=> b!7967457 m!8346632))

(assert (=> b!7967457 m!8346436))

(declare-fun m!8346640 () Bool)

(assert (=> b!7967457 m!8346640))

(declare-fun m!8346642 () Bool)

(assert (=> b!7967457 m!8346642))

(declare-fun m!8346644 () Bool)

(assert (=> b!7967457 m!8346644))

(declare-fun m!8346646 () Bool)

(assert (=> b!7967457 m!8346646))

(assert (=> b!7967457 m!8346642))

(assert (=> b!7967457 m!8346442))

(assert (=> b!7967457 m!8346440))

(assert (=> b!7967457 m!8346428))

(assert (=> b!7967457 m!8346482))

(assert (=> b!7967457 m!8346440))

(assert (=> b!7967457 m!8346478))

(assert (=> b!7967457 m!8346434))

(assert (=> b!7967457 m!8346426))

(assert (=> b!7967457 m!8346482))

(assert (=> b!7967457 m!8346484))

(assert (=> bm!739153 m!8346424))

(assert (=> d!2379309 m!8346440))

(declare-fun m!8346648 () Bool)

(assert (=> d!2379309 m!8346648))

(declare-fun m!8346650 () Bool)

(assert (=> d!2379309 m!8346650))

(declare-fun m!8346652 () Bool)

(assert (=> d!2379309 m!8346652))

(assert (=> d!2379309 m!8346652))

(declare-fun m!8346654 () Bool)

(assert (=> d!2379309 m!8346654))

(declare-fun m!8346656 () Bool)

(assert (=> d!2379309 m!8346656))

(declare-fun m!8346658 () Bool)

(assert (=> d!2379309 m!8346658))

(declare-fun m!8346660 () Bool)

(assert (=> d!2379309 m!8346660))

(declare-fun m!8346662 () Bool)

(assert (=> b!7967462 m!8346662))

(assert (=> b!7967462 m!8346434))

(assert (=> b!7967131 d!2379309))

(declare-fun d!2379319 () Bool)

(declare-fun lt!2706468 () List!74746)

(assert (=> d!2379319 (= (++!18387 testedP!447 lt!2706468) input!7927)))

(declare-fun e!4698109 () List!74746)

(assert (=> d!2379319 (= lt!2706468 e!4698109)))

(declare-fun c!1463221 () Bool)

(assert (=> d!2379319 (= c!1463221 ((_ is Cons!74622) testedP!447))))

(assert (=> d!2379319 (>= (size!43453 input!7927) (size!43453 testedP!447))))

(assert (=> d!2379319 (= (getSuffix!3820 input!7927 testedP!447) lt!2706468)))

(declare-fun b!7967473 () Bool)

(assert (=> b!7967473 (= e!4698109 (getSuffix!3820 (tail!15804 input!7927) (t!390489 testedP!447)))))

(declare-fun b!7967474 () Bool)

(assert (=> b!7967474 (= e!4698109 input!7927)))

(assert (= (and d!2379319 c!1463221) b!7967473))

(assert (= (and d!2379319 (not c!1463221)) b!7967474))

(declare-fun m!8346664 () Bool)

(assert (=> d!2379319 m!8346664))

(assert (=> d!2379319 m!8346436))

(assert (=> d!2379319 m!8346434))

(assert (=> b!7967473 m!8346494))

(assert (=> b!7967473 m!8346494))

(declare-fun m!8346666 () Bool)

(assert (=> b!7967473 m!8346666))

(assert (=> b!7967131 d!2379319))

(declare-fun d!2379321 () Bool)

(declare-fun lt!2706469 () Regex!21517)

(assert (=> d!2379321 (validRegex!11821 lt!2706469)))

(declare-fun e!4698110 () Regex!21517)

(assert (=> d!2379321 (= lt!2706469 e!4698110)))

(declare-fun c!1463222 () Bool)

(assert (=> d!2379321 (= c!1463222 ((_ is Cons!74622) lt!2706230))))

(assert (=> d!2379321 (validRegex!11821 baseR!116)))

(assert (=> d!2379321 (= (derivative!703 baseR!116 lt!2706230) lt!2706469)))

(declare-fun b!7967475 () Bool)

(assert (=> b!7967475 (= e!4698110 (derivative!703 (derivativeStep!6543 baseR!116 (h!81070 lt!2706230)) (t!390489 lt!2706230)))))

(declare-fun b!7967476 () Bool)

(assert (=> b!7967476 (= e!4698110 baseR!116)))

(assert (= (and d!2379321 c!1463222) b!7967475))

(assert (= (and d!2379321 (not c!1463222)) b!7967476))

(declare-fun m!8346668 () Bool)

(assert (=> d!2379321 m!8346668))

(assert (=> d!2379321 m!8346414))

(declare-fun m!8346670 () Bool)

(assert (=> b!7967475 m!8346670))

(assert (=> b!7967475 m!8346670))

(declare-fun m!8346672 () Bool)

(assert (=> b!7967475 m!8346672))

(assert (=> b!7967126 d!2379321))

(declare-fun bm!739162 () Bool)

(declare-fun call!739168 () Regex!21517)

(declare-fun call!739167 () Regex!21517)

(assert (=> bm!739162 (= call!739168 call!739167)))

(declare-fun bm!739163 () Bool)

(declare-fun c!1463234 () Bool)

(declare-fun c!1463237 () Bool)

(declare-fun c!1463235 () Bool)

(assert (=> bm!739163 (= call!739167 (derivativeStep!6543 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))) lt!2706223))))

(declare-fun b!7967498 () Bool)

(declare-fun e!4698121 () Regex!21517)

(declare-fun call!739169 () Regex!21517)

(assert (=> b!7967498 (= e!4698121 (Union!21517 (Concat!30516 call!739169 (regTwo!43546 r!24602)) EmptyLang!21517))))

(declare-fun b!7967499 () Bool)

(declare-fun e!4698122 () Regex!21517)

(declare-fun call!739170 () Regex!21517)

(assert (=> b!7967499 (= e!4698122 (Union!21517 call!739170 call!739167))))

(declare-fun bm!739164 () Bool)

(assert (=> bm!739164 (= call!739169 call!739168)))

(declare-fun b!7967500 () Bool)

(declare-fun e!4698124 () Regex!21517)

(declare-fun e!4698123 () Regex!21517)

(assert (=> b!7967500 (= e!4698124 e!4698123)))

(declare-fun c!1463233 () Bool)

(assert (=> b!7967500 (= c!1463233 ((_ is ElementMatch!21517) r!24602))))

(declare-fun b!7967501 () Bool)

(assert (=> b!7967501 (= e!4698124 EmptyLang!21517)))

(declare-fun b!7967502 () Bool)

(assert (=> b!7967502 (= c!1463235 (nullable!9616 (regOne!43546 r!24602)))))

(declare-fun e!4698125 () Regex!21517)

(assert (=> b!7967502 (= e!4698125 e!4698121)))

(declare-fun bm!739165 () Bool)

(assert (=> bm!739165 (= call!739170 (derivativeStep!6543 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)) lt!2706223))))

(declare-fun b!7967497 () Bool)

(assert (=> b!7967497 (= c!1463237 ((_ is Union!21517) r!24602))))

(assert (=> b!7967497 (= e!4698123 e!4698122)))

(declare-fun d!2379323 () Bool)

(declare-fun lt!2706472 () Regex!21517)

(assert (=> d!2379323 (validRegex!11821 lt!2706472)))

(assert (=> d!2379323 (= lt!2706472 e!4698124)))

(declare-fun c!1463236 () Bool)

(assert (=> d!2379323 (= c!1463236 (or ((_ is EmptyExpr!21517) r!24602) ((_ is EmptyLang!21517) r!24602)))))

(assert (=> d!2379323 (validRegex!11821 r!24602)))

(assert (=> d!2379323 (= (derivativeStep!6543 r!24602 lt!2706223) lt!2706472)))

(declare-fun b!7967503 () Bool)

(assert (=> b!7967503 (= e!4698125 (Concat!30516 call!739168 r!24602))))

(declare-fun b!7967504 () Bool)

(assert (=> b!7967504 (= e!4698122 e!4698125)))

(assert (=> b!7967504 (= c!1463234 ((_ is Star!21517) r!24602))))

(declare-fun b!7967505 () Bool)

(assert (=> b!7967505 (= e!4698121 (Union!21517 (Concat!30516 call!739170 (regTwo!43546 r!24602)) call!739169))))

(declare-fun b!7967506 () Bool)

(assert (=> b!7967506 (= e!4698123 (ite (= lt!2706223 (c!1463130 r!24602)) EmptyExpr!21517 EmptyLang!21517))))

(assert (= (and d!2379323 c!1463236) b!7967501))

(assert (= (and d!2379323 (not c!1463236)) b!7967500))

(assert (= (and b!7967500 c!1463233) b!7967506))

(assert (= (and b!7967500 (not c!1463233)) b!7967497))

(assert (= (and b!7967497 c!1463237) b!7967499))

(assert (= (and b!7967497 (not c!1463237)) b!7967504))

(assert (= (and b!7967504 c!1463234) b!7967503))

(assert (= (and b!7967504 (not c!1463234)) b!7967502))

(assert (= (and b!7967502 c!1463235) b!7967505))

(assert (= (and b!7967502 (not c!1463235)) b!7967498))

(assert (= (or b!7967505 b!7967498) bm!739164))

(assert (= (or b!7967503 bm!739164) bm!739162))

(assert (= (or b!7967499 bm!739162) bm!739163))

(assert (= (or b!7967499 b!7967505) bm!739165))

(declare-fun m!8346674 () Bool)

(assert (=> bm!739163 m!8346674))

(declare-fun m!8346676 () Bool)

(assert (=> b!7967502 m!8346676))

(declare-fun m!8346678 () Bool)

(assert (=> bm!739165 m!8346678))

(declare-fun m!8346680 () Bool)

(assert (=> d!2379323 m!8346680))

(assert (=> d!2379323 m!8346660))

(assert (=> b!7967126 d!2379323))

(declare-fun d!2379325 () Bool)

(assert (=> d!2379325 (= (derivative!703 baseR!116 (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622))) (derivativeStep!6543 r!24602 lt!2706223))))

(declare-fun lt!2706475 () Unit!170206)

(declare-fun choose!60067 (Regex!21517 Regex!21517 List!74746 C!43372) Unit!170206)

(assert (=> d!2379325 (= lt!2706475 (choose!60067 baseR!116 r!24602 testedP!447 lt!2706223))))

(assert (=> d!2379325 (validRegex!11821 baseR!116)))

(assert (=> d!2379325 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!225 baseR!116 r!24602 testedP!447 lt!2706223) lt!2706475)))

(declare-fun bs!1969900 () Bool)

(assert (= bs!1969900 d!2379325))

(assert (=> bs!1969900 m!8346430))

(assert (=> bs!1969900 m!8346414))

(assert (=> bs!1969900 m!8346408))

(declare-fun m!8346682 () Bool)

(assert (=> bs!1969900 m!8346682))

(assert (=> bs!1969900 m!8346430))

(declare-fun m!8346684 () Bool)

(assert (=> bs!1969900 m!8346684))

(assert (=> b!7967126 d!2379325))

(declare-fun b!7967518 () Bool)

(declare-fun e!4698128 () Bool)

(declare-fun tp!2374724 () Bool)

(declare-fun tp!2374723 () Bool)

(assert (=> b!7967518 (= e!4698128 (and tp!2374724 tp!2374723))))

(declare-fun b!7967520 () Bool)

(declare-fun tp!2374721 () Bool)

(declare-fun tp!2374725 () Bool)

(assert (=> b!7967520 (= e!4698128 (and tp!2374721 tp!2374725))))

(declare-fun b!7967519 () Bool)

(declare-fun tp!2374722 () Bool)

(assert (=> b!7967519 (= e!4698128 tp!2374722)))

(declare-fun b!7967517 () Bool)

(assert (=> b!7967517 (= e!4698128 tp_is_empty!53577)))

(assert (=> b!7967132 (= tp!2374638 e!4698128)))

(assert (= (and b!7967132 ((_ is ElementMatch!21517) (reg!21846 r!24602))) b!7967517))

(assert (= (and b!7967132 ((_ is Concat!30516) (reg!21846 r!24602))) b!7967518))

(assert (= (and b!7967132 ((_ is Star!21517) (reg!21846 r!24602))) b!7967519))

(assert (= (and b!7967132 ((_ is Union!21517) (reg!21846 r!24602))) b!7967520))

(declare-fun b!7967525 () Bool)

(declare-fun e!4698131 () Bool)

(declare-fun tp!2374728 () Bool)

(assert (=> b!7967525 (= e!4698131 (and tp_is_empty!53577 tp!2374728))))

(assert (=> b!7967143 (= tp!2374635 e!4698131)))

(assert (= (and b!7967143 ((_ is Cons!74622) (t!390489 input!7927))) b!7967525))

(declare-fun b!7967527 () Bool)

(declare-fun e!4698132 () Bool)

(declare-fun tp!2374732 () Bool)

(declare-fun tp!2374731 () Bool)

(assert (=> b!7967527 (= e!4698132 (and tp!2374732 tp!2374731))))

(declare-fun b!7967529 () Bool)

(declare-fun tp!2374729 () Bool)

(declare-fun tp!2374733 () Bool)

(assert (=> b!7967529 (= e!4698132 (and tp!2374729 tp!2374733))))

(declare-fun b!7967528 () Bool)

(declare-fun tp!2374730 () Bool)

(assert (=> b!7967528 (= e!4698132 tp!2374730)))

(declare-fun b!7967526 () Bool)

(assert (=> b!7967526 (= e!4698132 tp_is_empty!53577)))

(assert (=> b!7967134 (= tp!2374636 e!4698132)))

(assert (= (and b!7967134 ((_ is ElementMatch!21517) (regOne!43546 r!24602))) b!7967526))

(assert (= (and b!7967134 ((_ is Concat!30516) (regOne!43546 r!24602))) b!7967527))

(assert (= (and b!7967134 ((_ is Star!21517) (regOne!43546 r!24602))) b!7967528))

(assert (= (and b!7967134 ((_ is Union!21517) (regOne!43546 r!24602))) b!7967529))

(declare-fun b!7967531 () Bool)

(declare-fun e!4698133 () Bool)

(declare-fun tp!2374737 () Bool)

(declare-fun tp!2374736 () Bool)

(assert (=> b!7967531 (= e!4698133 (and tp!2374737 tp!2374736))))

(declare-fun b!7967533 () Bool)

(declare-fun tp!2374734 () Bool)

(declare-fun tp!2374738 () Bool)

(assert (=> b!7967533 (= e!4698133 (and tp!2374734 tp!2374738))))

(declare-fun b!7967532 () Bool)

(declare-fun tp!2374735 () Bool)

(assert (=> b!7967532 (= e!4698133 tp!2374735)))

(declare-fun b!7967530 () Bool)

(assert (=> b!7967530 (= e!4698133 tp_is_empty!53577)))

(assert (=> b!7967134 (= tp!2374640 e!4698133)))

(assert (= (and b!7967134 ((_ is ElementMatch!21517) (regTwo!43546 r!24602))) b!7967530))

(assert (= (and b!7967134 ((_ is Concat!30516) (regTwo!43546 r!24602))) b!7967531))

(assert (= (and b!7967134 ((_ is Star!21517) (regTwo!43546 r!24602))) b!7967532))

(assert (= (and b!7967134 ((_ is Union!21517) (regTwo!43546 r!24602))) b!7967533))

(declare-fun b!7967535 () Bool)

(declare-fun e!4698134 () Bool)

(declare-fun tp!2374742 () Bool)

(declare-fun tp!2374741 () Bool)

(assert (=> b!7967535 (= e!4698134 (and tp!2374742 tp!2374741))))

(declare-fun b!7967537 () Bool)

(declare-fun tp!2374739 () Bool)

(declare-fun tp!2374743 () Bool)

(assert (=> b!7967537 (= e!4698134 (and tp!2374739 tp!2374743))))

(declare-fun b!7967536 () Bool)

(declare-fun tp!2374740 () Bool)

(assert (=> b!7967536 (= e!4698134 tp!2374740)))

(declare-fun b!7967534 () Bool)

(assert (=> b!7967534 (= e!4698134 tp_is_empty!53577)))

(assert (=> b!7967130 (= tp!2374645 e!4698134)))

(assert (= (and b!7967130 ((_ is ElementMatch!21517) (regOne!43547 r!24602))) b!7967534))

(assert (= (and b!7967130 ((_ is Concat!30516) (regOne!43547 r!24602))) b!7967535))

(assert (= (and b!7967130 ((_ is Star!21517) (regOne!43547 r!24602))) b!7967536))

(assert (= (and b!7967130 ((_ is Union!21517) (regOne!43547 r!24602))) b!7967537))

(declare-fun b!7967539 () Bool)

(declare-fun e!4698135 () Bool)

(declare-fun tp!2374747 () Bool)

(declare-fun tp!2374746 () Bool)

(assert (=> b!7967539 (= e!4698135 (and tp!2374747 tp!2374746))))

(declare-fun b!7967541 () Bool)

(declare-fun tp!2374744 () Bool)

(declare-fun tp!2374748 () Bool)

(assert (=> b!7967541 (= e!4698135 (and tp!2374744 tp!2374748))))

(declare-fun b!7967540 () Bool)

(declare-fun tp!2374745 () Bool)

(assert (=> b!7967540 (= e!4698135 tp!2374745)))

(declare-fun b!7967538 () Bool)

(assert (=> b!7967538 (= e!4698135 tp_is_empty!53577)))

(assert (=> b!7967130 (= tp!2374637 e!4698135)))

(assert (= (and b!7967130 ((_ is ElementMatch!21517) (regTwo!43547 r!24602))) b!7967538))

(assert (= (and b!7967130 ((_ is Concat!30516) (regTwo!43547 r!24602))) b!7967539))

(assert (= (and b!7967130 ((_ is Star!21517) (regTwo!43547 r!24602))) b!7967540))

(assert (= (and b!7967130 ((_ is Union!21517) (regTwo!43547 r!24602))) b!7967541))

(declare-fun b!7967543 () Bool)

(declare-fun e!4698136 () Bool)

(declare-fun tp!2374752 () Bool)

(declare-fun tp!2374751 () Bool)

(assert (=> b!7967543 (= e!4698136 (and tp!2374752 tp!2374751))))

(declare-fun b!7967545 () Bool)

(declare-fun tp!2374749 () Bool)

(declare-fun tp!2374753 () Bool)

(assert (=> b!7967545 (= e!4698136 (and tp!2374749 tp!2374753))))

(declare-fun b!7967544 () Bool)

(declare-fun tp!2374750 () Bool)

(assert (=> b!7967544 (= e!4698136 tp!2374750)))

(declare-fun b!7967542 () Bool)

(assert (=> b!7967542 (= e!4698136 tp_is_empty!53577)))

(assert (=> b!7967141 (= tp!2374641 e!4698136)))

(assert (= (and b!7967141 ((_ is ElementMatch!21517) (regOne!43547 baseR!116))) b!7967542))

(assert (= (and b!7967141 ((_ is Concat!30516) (regOne!43547 baseR!116))) b!7967543))

(assert (= (and b!7967141 ((_ is Star!21517) (regOne!43547 baseR!116))) b!7967544))

(assert (= (and b!7967141 ((_ is Union!21517) (regOne!43547 baseR!116))) b!7967545))

(declare-fun b!7967547 () Bool)

(declare-fun e!4698137 () Bool)

(declare-fun tp!2374757 () Bool)

(declare-fun tp!2374756 () Bool)

(assert (=> b!7967547 (= e!4698137 (and tp!2374757 tp!2374756))))

(declare-fun b!7967549 () Bool)

(declare-fun tp!2374754 () Bool)

(declare-fun tp!2374758 () Bool)

(assert (=> b!7967549 (= e!4698137 (and tp!2374754 tp!2374758))))

(declare-fun b!7967548 () Bool)

(declare-fun tp!2374755 () Bool)

(assert (=> b!7967548 (= e!4698137 tp!2374755)))

(declare-fun b!7967546 () Bool)

(assert (=> b!7967546 (= e!4698137 tp_is_empty!53577)))

(assert (=> b!7967141 (= tp!2374646 e!4698137)))

(assert (= (and b!7967141 ((_ is ElementMatch!21517) (regTwo!43547 baseR!116))) b!7967546))

(assert (= (and b!7967141 ((_ is Concat!30516) (regTwo!43547 baseR!116))) b!7967547))

(assert (= (and b!7967141 ((_ is Star!21517) (regTwo!43547 baseR!116))) b!7967548))

(assert (= (and b!7967141 ((_ is Union!21517) (regTwo!43547 baseR!116))) b!7967549))

(declare-fun b!7967550 () Bool)

(declare-fun e!4698138 () Bool)

(declare-fun tp!2374759 () Bool)

(assert (=> b!7967550 (= e!4698138 (and tp_is_empty!53577 tp!2374759))))

(assert (=> b!7967136 (= tp!2374643 e!4698138)))

(assert (= (and b!7967136 ((_ is Cons!74622) (t!390489 testedP!447))) b!7967550))

(declare-fun b!7967552 () Bool)

(declare-fun e!4698139 () Bool)

(declare-fun tp!2374763 () Bool)

(declare-fun tp!2374762 () Bool)

(assert (=> b!7967552 (= e!4698139 (and tp!2374763 tp!2374762))))

(declare-fun b!7967554 () Bool)

(declare-fun tp!2374760 () Bool)

(declare-fun tp!2374764 () Bool)

(assert (=> b!7967554 (= e!4698139 (and tp!2374760 tp!2374764))))

(declare-fun b!7967553 () Bool)

(declare-fun tp!2374761 () Bool)

(assert (=> b!7967553 (= e!4698139 tp!2374761)))

(declare-fun b!7967551 () Bool)

(assert (=> b!7967551 (= e!4698139 tp_is_empty!53577)))

(assert (=> b!7967142 (= tp!2374642 e!4698139)))

(assert (= (and b!7967142 ((_ is ElementMatch!21517) (reg!21846 baseR!116))) b!7967551))

(assert (= (and b!7967142 ((_ is Concat!30516) (reg!21846 baseR!116))) b!7967552))

(assert (= (and b!7967142 ((_ is Star!21517) (reg!21846 baseR!116))) b!7967553))

(assert (= (and b!7967142 ((_ is Union!21517) (reg!21846 baseR!116))) b!7967554))

(declare-fun b!7967556 () Bool)

(declare-fun e!4698140 () Bool)

(declare-fun tp!2374768 () Bool)

(declare-fun tp!2374767 () Bool)

(assert (=> b!7967556 (= e!4698140 (and tp!2374768 tp!2374767))))

(declare-fun b!7967558 () Bool)

(declare-fun tp!2374765 () Bool)

(declare-fun tp!2374769 () Bool)

(assert (=> b!7967558 (= e!4698140 (and tp!2374765 tp!2374769))))

(declare-fun b!7967557 () Bool)

(declare-fun tp!2374766 () Bool)

(assert (=> b!7967557 (= e!4698140 tp!2374766)))

(declare-fun b!7967555 () Bool)

(assert (=> b!7967555 (= e!4698140 tp_is_empty!53577)))

(assert (=> b!7967137 (= tp!2374644 e!4698140)))

(assert (= (and b!7967137 ((_ is ElementMatch!21517) (regOne!43546 baseR!116))) b!7967555))

(assert (= (and b!7967137 ((_ is Concat!30516) (regOne!43546 baseR!116))) b!7967556))

(assert (= (and b!7967137 ((_ is Star!21517) (regOne!43546 baseR!116))) b!7967557))

(assert (= (and b!7967137 ((_ is Union!21517) (regOne!43546 baseR!116))) b!7967558))

(declare-fun b!7967560 () Bool)

(declare-fun e!4698141 () Bool)

(declare-fun tp!2374773 () Bool)

(declare-fun tp!2374772 () Bool)

(assert (=> b!7967560 (= e!4698141 (and tp!2374773 tp!2374772))))

(declare-fun b!7967562 () Bool)

(declare-fun tp!2374770 () Bool)

(declare-fun tp!2374774 () Bool)

(assert (=> b!7967562 (= e!4698141 (and tp!2374770 tp!2374774))))

(declare-fun b!7967561 () Bool)

(declare-fun tp!2374771 () Bool)

(assert (=> b!7967561 (= e!4698141 tp!2374771)))

(declare-fun b!7967559 () Bool)

(assert (=> b!7967559 (= e!4698141 tp_is_empty!53577)))

(assert (=> b!7967137 (= tp!2374639 e!4698141)))

(assert (= (and b!7967137 ((_ is ElementMatch!21517) (regTwo!43546 baseR!116))) b!7967559))

(assert (= (and b!7967137 ((_ is Concat!30516) (regTwo!43546 baseR!116))) b!7967560))

(assert (= (and b!7967137 ((_ is Star!21517) (regTwo!43546 baseR!116))) b!7967561))

(assert (= (and b!7967137 ((_ is Union!21517) (regTwo!43546 baseR!116))) b!7967562))

(check-sat (not d!2379269) (not b!7967462) (not b!7967556) (not b!7967502) (not bm!739149) (not b!7967560) (not b!7967547) (not b!7967537) (not b!7967456) (not b!7967230) (not bm!739152) (not b!7967543) (not bm!739150) (not b!7967561) (not b!7967553) (not b!7967550) (not bm!739163) (not b!7967557) (not d!2379321) tp_is_empty!53577 (not bm!739151) (not b!7967202) (not b!7967228) (not b!7967232) (not d!2379251) (not b!7967552) (not bm!739153) (not d!2379273) (not d!2379325) (not b!7967535) (not b!7967554) (not bm!739094) (not b!7967519) (not b!7967558) (not b!7967227) (not b!7967231) (not b!7967531) (not b!7967167) (not b!7967520) (not b!7967562) (not b!7967473) (not b!7967222) (not bm!739095) (not b!7967201) (not b!7967527) (not b!7967545) (not b!7967548) (not b!7967549) (not d!2379323) (not b!7967459) (not b!7967295) (not b!7967518) (not b!7967540) (not b!7967541) (not b!7967200) (not b!7967457) (not d!2379263) (not d!2379283) (not b!7967273) (not bm!739165) (not b!7967528) (not b!7967539) (not bm!739148) (not d!2379319) (not b!7967475) (not d!2379309) (not b!7967544) (not b!7967525) (not b!7967223) (not bm!739147) (not b!7967529) (not b!7967291) (not b!7967226) (not bm!739146) (not b!7967533) (not b!7967532) (not b!7967536) (not d!2379277) (not d!2379257))
(check-sat)
(get-model)

(assert (=> bm!739153 d!2379269))

(declare-fun b!7967563 () Bool)

(declare-fun e!4698147 () Bool)

(declare-fun e!4698145 () Bool)

(assert (=> b!7967563 (= e!4698147 e!4698145)))

(declare-fun c!1463239 () Bool)

(assert (=> b!7967563 (= c!1463239 ((_ is Union!21517) (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))))))

(declare-fun b!7967564 () Bool)

(declare-fun res!3157053 () Bool)

(declare-fun e!4698144 () Bool)

(assert (=> b!7967564 (=> (not res!3157053) (not e!4698144))))

(declare-fun call!739171 () Bool)

(assert (=> b!7967564 (= res!3157053 call!739171)))

(assert (=> b!7967564 (= e!4698145 e!4698144)))

(declare-fun b!7967565 () Bool)

(declare-fun e!4698142 () Bool)

(assert (=> b!7967565 (= e!4698142 e!4698147)))

(declare-fun c!1463240 () Bool)

(assert (=> b!7967565 (= c!1463240 ((_ is Star!21517) (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))))))

(declare-fun call!739173 () Bool)

(declare-fun bm!739166 () Bool)

(assert (=> bm!739166 (= call!739173 (validRegex!11821 (ite c!1463240 (reg!21846 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))) (ite c!1463239 (regOne!43547 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))) (regOne!43546 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116))))))))))

(declare-fun b!7967566 () Bool)

(declare-fun e!4698143 () Bool)

(assert (=> b!7967566 (= e!4698143 call!739173)))

(declare-fun b!7967567 () Bool)

(declare-fun call!739172 () Bool)

(assert (=> b!7967567 (= e!4698144 call!739172)))

(declare-fun bm!739167 () Bool)

(assert (=> bm!739167 (= call!739172 (validRegex!11821 (ite c!1463239 (regTwo!43547 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))) (regTwo!43546 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))))))))

(declare-fun bm!739168 () Bool)

(assert (=> bm!739168 (= call!739171 call!739173)))

(declare-fun b!7967568 () Bool)

(declare-fun e!4698146 () Bool)

(assert (=> b!7967568 (= e!4698146 call!739172)))

(declare-fun b!7967569 () Bool)

(assert (=> b!7967569 (= e!4698147 e!4698143)))

(declare-fun res!3157052 () Bool)

(assert (=> b!7967569 (= res!3157052 (not (nullable!9616 (reg!21846 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))))))))

(assert (=> b!7967569 (=> (not res!3157052) (not e!4698143))))

(declare-fun d!2379327 () Bool)

(declare-fun res!3157055 () Bool)

(assert (=> d!2379327 (=> res!3157055 e!4698142)))

(assert (=> d!2379327 (= res!3157055 ((_ is ElementMatch!21517) (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))))))

(assert (=> d!2379327 (= (validRegex!11821 (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116)))) e!4698142)))

(declare-fun b!7967570 () Bool)

(declare-fun e!4698148 () Bool)

(assert (=> b!7967570 (= e!4698148 e!4698146)))

(declare-fun res!3157054 () Bool)

(assert (=> b!7967570 (=> (not res!3157054) (not e!4698146))))

(assert (=> b!7967570 (= res!3157054 call!739171)))

(declare-fun b!7967571 () Bool)

(declare-fun res!3157051 () Bool)

(assert (=> b!7967571 (=> res!3157051 e!4698148)))

(assert (=> b!7967571 (= res!3157051 (not ((_ is Concat!30516) (ite c!1463165 (reg!21846 baseR!116) (ite c!1463164 (regOne!43547 baseR!116) (regOne!43546 baseR!116))))))))

(assert (=> b!7967571 (= e!4698145 e!4698148)))

(assert (= (and d!2379327 (not res!3157055)) b!7967565))

(assert (= (and b!7967565 c!1463240) b!7967569))

(assert (= (and b!7967565 (not c!1463240)) b!7967563))

(assert (= (and b!7967569 res!3157052) b!7967566))

(assert (= (and b!7967563 c!1463239) b!7967564))

(assert (= (and b!7967563 (not c!1463239)) b!7967571))

(assert (= (and b!7967564 res!3157053) b!7967567))

(assert (= (and b!7967571 (not res!3157051)) b!7967570))

(assert (= (and b!7967570 res!3157054) b!7967568))

(assert (= (or b!7967567 b!7967568) bm!739167))

(assert (= (or b!7967564 b!7967570) bm!739168))

(assert (= (or b!7967566 bm!739168) bm!739166))

(declare-fun m!8346686 () Bool)

(assert (=> bm!739166 m!8346686))

(declare-fun m!8346688 () Bool)

(assert (=> bm!739167 m!8346688))

(declare-fun m!8346690 () Bool)

(assert (=> b!7967569 m!8346690))

(assert (=> bm!739094 d!2379327))

(assert (=> b!7967228 d!2379307))

(declare-fun b!7967572 () Bool)

(declare-fun e!4698154 () Bool)

(declare-fun e!4698152 () Bool)

(assert (=> b!7967572 (= e!4698154 e!4698152)))

(declare-fun c!1463241 () Bool)

(assert (=> b!7967572 (= c!1463241 ((_ is Union!21517) lt!2706469))))

(declare-fun b!7967573 () Bool)

(declare-fun res!3157058 () Bool)

(declare-fun e!4698151 () Bool)

(assert (=> b!7967573 (=> (not res!3157058) (not e!4698151))))

(declare-fun call!739174 () Bool)

(assert (=> b!7967573 (= res!3157058 call!739174)))

(assert (=> b!7967573 (= e!4698152 e!4698151)))

(declare-fun b!7967574 () Bool)

(declare-fun e!4698149 () Bool)

(assert (=> b!7967574 (= e!4698149 e!4698154)))

(declare-fun c!1463242 () Bool)

(assert (=> b!7967574 (= c!1463242 ((_ is Star!21517) lt!2706469))))

(declare-fun call!739176 () Bool)

(declare-fun bm!739169 () Bool)

(assert (=> bm!739169 (= call!739176 (validRegex!11821 (ite c!1463242 (reg!21846 lt!2706469) (ite c!1463241 (regOne!43547 lt!2706469) (regOne!43546 lt!2706469)))))))

(declare-fun b!7967575 () Bool)

(declare-fun e!4698150 () Bool)

(assert (=> b!7967575 (= e!4698150 call!739176)))

(declare-fun b!7967576 () Bool)

(declare-fun call!739175 () Bool)

(assert (=> b!7967576 (= e!4698151 call!739175)))

(declare-fun bm!739170 () Bool)

(assert (=> bm!739170 (= call!739175 (validRegex!11821 (ite c!1463241 (regTwo!43547 lt!2706469) (regTwo!43546 lt!2706469))))))

(declare-fun bm!739171 () Bool)

(assert (=> bm!739171 (= call!739174 call!739176)))

(declare-fun b!7967577 () Bool)

(declare-fun e!4698153 () Bool)

(assert (=> b!7967577 (= e!4698153 call!739175)))

(declare-fun b!7967578 () Bool)

(assert (=> b!7967578 (= e!4698154 e!4698150)))

(declare-fun res!3157057 () Bool)

(assert (=> b!7967578 (= res!3157057 (not (nullable!9616 (reg!21846 lt!2706469))))))

(assert (=> b!7967578 (=> (not res!3157057) (not e!4698150))))

(declare-fun d!2379329 () Bool)

(declare-fun res!3157060 () Bool)

(assert (=> d!2379329 (=> res!3157060 e!4698149)))

(assert (=> d!2379329 (= res!3157060 ((_ is ElementMatch!21517) lt!2706469))))

(assert (=> d!2379329 (= (validRegex!11821 lt!2706469) e!4698149)))

(declare-fun b!7967579 () Bool)

(declare-fun e!4698155 () Bool)

(assert (=> b!7967579 (= e!4698155 e!4698153)))

(declare-fun res!3157059 () Bool)

(assert (=> b!7967579 (=> (not res!3157059) (not e!4698153))))

(assert (=> b!7967579 (= res!3157059 call!739174)))

(declare-fun b!7967580 () Bool)

(declare-fun res!3157056 () Bool)

(assert (=> b!7967580 (=> res!3157056 e!4698155)))

(assert (=> b!7967580 (= res!3157056 (not ((_ is Concat!30516) lt!2706469)))))

(assert (=> b!7967580 (= e!4698152 e!4698155)))

(assert (= (and d!2379329 (not res!3157060)) b!7967574))

(assert (= (and b!7967574 c!1463242) b!7967578))

(assert (= (and b!7967574 (not c!1463242)) b!7967572))

(assert (= (and b!7967578 res!3157057) b!7967575))

(assert (= (and b!7967572 c!1463241) b!7967573))

(assert (= (and b!7967572 (not c!1463241)) b!7967580))

(assert (= (and b!7967573 res!3157058) b!7967576))

(assert (= (and b!7967580 (not res!3157056)) b!7967579))

(assert (= (and b!7967579 res!3157059) b!7967577))

(assert (= (or b!7967576 b!7967577) bm!739170))

(assert (= (or b!7967573 b!7967579) bm!739171))

(assert (= (or b!7967575 bm!739171) bm!739169))

(declare-fun m!8346692 () Bool)

(assert (=> bm!739169 m!8346692))

(declare-fun m!8346694 () Bool)

(assert (=> bm!739170 m!8346694))

(declare-fun m!8346696 () Bool)

(assert (=> b!7967578 m!8346696))

(assert (=> d!2379321 d!2379329))

(assert (=> d!2379321 d!2379289))

(declare-fun d!2379331 () Bool)

(assert (=> d!2379331 (= (tail!15804 lt!2706227) (t!390489 lt!2706227))))

(assert (=> bm!739152 d!2379331))

(declare-fun d!2379333 () Bool)

(assert (=> d!2379333 (= lt!2706227 lt!2706444)))

(declare-fun lt!2706478 () Unit!170206)

(declare-fun choose!60068 (List!74746 List!74746 List!74746 List!74746 List!74746) Unit!170206)

(assert (=> d!2379333 (= lt!2706478 (choose!60068 testedP!447 lt!2706227 testedP!447 lt!2706444 input!7927))))

(assert (=> d!2379333 (isPrefix!6617 testedP!447 input!7927)))

(assert (=> d!2379333 (= (lemmaSamePrefixThenSameSuffix!3002 testedP!447 lt!2706227 testedP!447 lt!2706444 input!7927) lt!2706478)))

(declare-fun bs!1969901 () Bool)

(assert (= bs!1969901 d!2379333))

(declare-fun m!8346698 () Bool)

(assert (=> bs!1969901 m!8346698))

(assert (=> bs!1969901 m!8346412))

(assert (=> d!2379309 d!2379333))

(declare-fun d!2379335 () Bool)

(declare-fun e!4698157 () Bool)

(assert (=> d!2379335 e!4698157))

(declare-fun res!3157061 () Bool)

(assert (=> d!2379335 (=> (not res!3157061) (not e!4698157))))

(declare-fun lt!2706479 () List!74746)

(assert (=> d!2379335 (= res!3157061 (= (content!15854 lt!2706479) ((_ map or) (content!15854 (_1!38651 lt!2706450)) (content!15854 (_2!38651 lt!2706450)))))))

(declare-fun e!4698156 () List!74746)

(assert (=> d!2379335 (= lt!2706479 e!4698156)))

(declare-fun c!1463243 () Bool)

(assert (=> d!2379335 (= c!1463243 ((_ is Nil!74622) (_1!38651 lt!2706450)))))

(assert (=> d!2379335 (= (++!18387 (_1!38651 lt!2706450) (_2!38651 lt!2706450)) lt!2706479)))

(declare-fun b!7967583 () Bool)

(declare-fun res!3157062 () Bool)

(assert (=> b!7967583 (=> (not res!3157062) (not e!4698157))))

(assert (=> b!7967583 (= res!3157062 (= (size!43453 lt!2706479) (+ (size!43453 (_1!38651 lt!2706450)) (size!43453 (_2!38651 lt!2706450)))))))

(declare-fun b!7967582 () Bool)

(assert (=> b!7967582 (= e!4698156 (Cons!74622 (h!81070 (_1!38651 lt!2706450)) (++!18387 (t!390489 (_1!38651 lt!2706450)) (_2!38651 lt!2706450))))))

(declare-fun b!7967584 () Bool)

(assert (=> b!7967584 (= e!4698157 (or (not (= (_2!38651 lt!2706450) Nil!74622)) (= lt!2706479 (_1!38651 lt!2706450))))))

(declare-fun b!7967581 () Bool)

(assert (=> b!7967581 (= e!4698156 (_2!38651 lt!2706450))))

(assert (= (and d!2379335 c!1463243) b!7967581))

(assert (= (and d!2379335 (not c!1463243)) b!7967582))

(assert (= (and d!2379335 res!3157061) b!7967583))

(assert (= (and b!7967583 res!3157062) b!7967584))

(declare-fun m!8346700 () Bool)

(assert (=> d!2379335 m!8346700))

(declare-fun m!8346702 () Bool)

(assert (=> d!2379335 m!8346702))

(declare-fun m!8346704 () Bool)

(assert (=> d!2379335 m!8346704))

(declare-fun m!8346706 () Bool)

(assert (=> b!7967583 m!8346706))

(assert (=> b!7967583 m!8346662))

(declare-fun m!8346708 () Bool)

(assert (=> b!7967583 m!8346708))

(declare-fun m!8346710 () Bool)

(assert (=> b!7967582 m!8346710))

(assert (=> d!2379309 d!2379335))

(declare-fun b!7967586 () Bool)

(declare-fun res!3157066 () Bool)

(declare-fun e!4698160 () Bool)

(assert (=> b!7967586 (=> (not res!3157066) (not e!4698160))))

(assert (=> b!7967586 (= res!3157066 (= (head!16269 testedP!447) (head!16269 (++!18387 testedP!447 lt!2706227))))))

(declare-fun d!2379337 () Bool)

(declare-fun e!4698159 () Bool)

(assert (=> d!2379337 e!4698159))

(declare-fun res!3157064 () Bool)

(assert (=> d!2379337 (=> res!3157064 e!4698159)))

(declare-fun lt!2706480 () Bool)

(assert (=> d!2379337 (= res!3157064 (not lt!2706480))))

(declare-fun e!4698158 () Bool)

(assert (=> d!2379337 (= lt!2706480 e!4698158)))

(declare-fun res!3157063 () Bool)

(assert (=> d!2379337 (=> res!3157063 e!4698158)))

(assert (=> d!2379337 (= res!3157063 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379337 (= (isPrefix!6617 testedP!447 (++!18387 testedP!447 lt!2706227)) lt!2706480)))

(declare-fun b!7967588 () Bool)

(assert (=> b!7967588 (= e!4698159 (>= (size!43453 (++!18387 testedP!447 lt!2706227)) (size!43453 testedP!447)))))

(declare-fun b!7967585 () Bool)

(assert (=> b!7967585 (= e!4698158 e!4698160)))

(declare-fun res!3157065 () Bool)

(assert (=> b!7967585 (=> (not res!3157065) (not e!4698160))))

(assert (=> b!7967585 (= res!3157065 (not ((_ is Nil!74622) (++!18387 testedP!447 lt!2706227))))))

(declare-fun b!7967587 () Bool)

(assert (=> b!7967587 (= e!4698160 (isPrefix!6617 (tail!15804 testedP!447) (tail!15804 (++!18387 testedP!447 lt!2706227))))))

(assert (= (and d!2379337 (not res!3157063)) b!7967585))

(assert (= (and b!7967585 res!3157065) b!7967586))

(assert (= (and b!7967586 res!3157066) b!7967587))

(assert (= (and d!2379337 (not res!3157064)) b!7967588))

(assert (=> b!7967586 m!8346540))

(assert (=> b!7967586 m!8346652))

(declare-fun m!8346712 () Bool)

(assert (=> b!7967586 m!8346712))

(assert (=> b!7967588 m!8346652))

(declare-fun m!8346714 () Bool)

(assert (=> b!7967588 m!8346714))

(assert (=> b!7967588 m!8346434))

(assert (=> b!7967587 m!8346542))

(assert (=> b!7967587 m!8346652))

(declare-fun m!8346716 () Bool)

(assert (=> b!7967587 m!8346716))

(assert (=> b!7967587 m!8346542))

(assert (=> b!7967587 m!8346716))

(declare-fun m!8346718 () Bool)

(assert (=> b!7967587 m!8346718))

(assert (=> d!2379309 d!2379337))

(assert (=> d!2379309 d!2379319))

(declare-fun b!7967589 () Bool)

(declare-fun e!4698166 () Bool)

(declare-fun e!4698164 () Bool)

(assert (=> b!7967589 (= e!4698166 e!4698164)))

(declare-fun c!1463244 () Bool)

(assert (=> b!7967589 (= c!1463244 ((_ is Union!21517) r!24602))))

(declare-fun b!7967590 () Bool)

(declare-fun res!3157069 () Bool)

(declare-fun e!4698163 () Bool)

(assert (=> b!7967590 (=> (not res!3157069) (not e!4698163))))

(declare-fun call!739177 () Bool)

(assert (=> b!7967590 (= res!3157069 call!739177)))

(assert (=> b!7967590 (= e!4698164 e!4698163)))

(declare-fun b!7967591 () Bool)

(declare-fun e!4698161 () Bool)

(assert (=> b!7967591 (= e!4698161 e!4698166)))

(declare-fun c!1463245 () Bool)

(assert (=> b!7967591 (= c!1463245 ((_ is Star!21517) r!24602))))

(declare-fun call!739179 () Bool)

(declare-fun bm!739172 () Bool)

(assert (=> bm!739172 (= call!739179 (validRegex!11821 (ite c!1463245 (reg!21846 r!24602) (ite c!1463244 (regOne!43547 r!24602) (regOne!43546 r!24602)))))))

(declare-fun b!7967592 () Bool)

(declare-fun e!4698162 () Bool)

(assert (=> b!7967592 (= e!4698162 call!739179)))

(declare-fun b!7967593 () Bool)

(declare-fun call!739178 () Bool)

(assert (=> b!7967593 (= e!4698163 call!739178)))

(declare-fun bm!739173 () Bool)

(assert (=> bm!739173 (= call!739178 (validRegex!11821 (ite c!1463244 (regTwo!43547 r!24602) (regTwo!43546 r!24602))))))

(declare-fun bm!739174 () Bool)

(assert (=> bm!739174 (= call!739177 call!739179)))

(declare-fun b!7967594 () Bool)

(declare-fun e!4698165 () Bool)

(assert (=> b!7967594 (= e!4698165 call!739178)))

(declare-fun b!7967595 () Bool)

(assert (=> b!7967595 (= e!4698166 e!4698162)))

(declare-fun res!3157068 () Bool)

(assert (=> b!7967595 (= res!3157068 (not (nullable!9616 (reg!21846 r!24602))))))

(assert (=> b!7967595 (=> (not res!3157068) (not e!4698162))))

(declare-fun d!2379339 () Bool)

(declare-fun res!3157071 () Bool)

(assert (=> d!2379339 (=> res!3157071 e!4698161)))

(assert (=> d!2379339 (= res!3157071 ((_ is ElementMatch!21517) r!24602))))

(assert (=> d!2379339 (= (validRegex!11821 r!24602) e!4698161)))

(declare-fun b!7967596 () Bool)

(declare-fun e!4698167 () Bool)

(assert (=> b!7967596 (= e!4698167 e!4698165)))

(declare-fun res!3157070 () Bool)

(assert (=> b!7967596 (=> (not res!3157070) (not e!4698165))))

(assert (=> b!7967596 (= res!3157070 call!739177)))

(declare-fun b!7967597 () Bool)

(declare-fun res!3157067 () Bool)

(assert (=> b!7967597 (=> res!3157067 e!4698167)))

(assert (=> b!7967597 (= res!3157067 (not ((_ is Concat!30516) r!24602)))))

(assert (=> b!7967597 (= e!4698164 e!4698167)))

(assert (= (and d!2379339 (not res!3157071)) b!7967591))

(assert (= (and b!7967591 c!1463245) b!7967595))

(assert (= (and b!7967591 (not c!1463245)) b!7967589))

(assert (= (and b!7967595 res!3157068) b!7967592))

(assert (= (and b!7967589 c!1463244) b!7967590))

(assert (= (and b!7967589 (not c!1463244)) b!7967597))

(assert (= (and b!7967590 res!3157069) b!7967593))

(assert (= (and b!7967597 (not res!3157067)) b!7967596))

(assert (= (and b!7967596 res!3157070) b!7967594))

(assert (= (or b!7967593 b!7967594) bm!739173))

(assert (= (or b!7967590 b!7967596) bm!739174))

(assert (= (or b!7967592 bm!739174) bm!739172))

(declare-fun m!8346720 () Bool)

(assert (=> bm!739172 m!8346720))

(declare-fun m!8346722 () Bool)

(assert (=> bm!739173 m!8346722))

(declare-fun m!8346724 () Bool)

(assert (=> b!7967595 m!8346724))

(assert (=> d!2379309 d!2379339))

(declare-fun d!2379341 () Bool)

(declare-fun lostCauseFct!575 (Regex!21517) Bool)

(assert (=> d!2379341 (= (lostCause!1986 r!24602) (lostCauseFct!575 r!24602))))

(declare-fun bs!1969902 () Bool)

(assert (= bs!1969902 d!2379341))

(declare-fun m!8346726 () Bool)

(assert (=> bs!1969902 m!8346726))

(assert (=> d!2379309 d!2379341))

(declare-fun d!2379343 () Bool)

(declare-fun e!4698169 () Bool)

(assert (=> d!2379343 e!4698169))

(declare-fun res!3157072 () Bool)

(assert (=> d!2379343 (=> (not res!3157072) (not e!4698169))))

(declare-fun lt!2706481 () List!74746)

(assert (=> d!2379343 (= res!3157072 (= (content!15854 lt!2706481) ((_ map or) (content!15854 testedP!447) (content!15854 lt!2706227))))))

(declare-fun e!4698168 () List!74746)

(assert (=> d!2379343 (= lt!2706481 e!4698168)))

(declare-fun c!1463246 () Bool)

(assert (=> d!2379343 (= c!1463246 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379343 (= (++!18387 testedP!447 lt!2706227) lt!2706481)))

(declare-fun b!7967600 () Bool)

(declare-fun res!3157073 () Bool)

(assert (=> b!7967600 (=> (not res!3157073) (not e!4698169))))

(assert (=> b!7967600 (= res!3157073 (= (size!43453 lt!2706481) (+ (size!43453 testedP!447) (size!43453 lt!2706227))))))

(declare-fun b!7967599 () Bool)

(assert (=> b!7967599 (= e!4698168 (Cons!74622 (h!81070 testedP!447) (++!18387 (t!390489 testedP!447) lt!2706227)))))

(declare-fun b!7967601 () Bool)

(assert (=> b!7967601 (= e!4698169 (or (not (= lt!2706227 Nil!74622)) (= lt!2706481 testedP!447)))))

(declare-fun b!7967598 () Bool)

(assert (=> b!7967598 (= e!4698168 lt!2706227)))

(assert (= (and d!2379343 c!1463246) b!7967598))

(assert (= (and d!2379343 (not c!1463246)) b!7967599))

(assert (= (and d!2379343 res!3157072) b!7967600))

(assert (= (and b!7967600 res!3157073) b!7967601))

(declare-fun m!8346728 () Bool)

(assert (=> d!2379343 m!8346728))

(assert (=> d!2379343 m!8346512))

(declare-fun m!8346730 () Bool)

(assert (=> d!2379343 m!8346730))

(declare-fun m!8346732 () Bool)

(assert (=> b!7967600 m!8346732))

(assert (=> b!7967600 m!8346434))

(declare-fun m!8346734 () Bool)

(assert (=> b!7967600 m!8346734))

(declare-fun m!8346736 () Bool)

(assert (=> b!7967599 m!8346736))

(assert (=> d!2379309 d!2379343))

(declare-fun d!2379345 () Bool)

(assert (=> d!2379345 (isPrefix!6617 testedP!447 (++!18387 testedP!447 lt!2706227))))

(declare-fun lt!2706484 () Unit!170206)

(declare-fun choose!60069 (List!74746 List!74746) Unit!170206)

(assert (=> d!2379345 (= lt!2706484 (choose!60069 testedP!447 lt!2706227))))

(assert (=> d!2379345 (= (lemmaConcatTwoListThenFirstIsPrefix!3864 testedP!447 lt!2706227) lt!2706484)))

(declare-fun bs!1969903 () Bool)

(assert (= bs!1969903 d!2379345))

(assert (=> bs!1969903 m!8346652))

(assert (=> bs!1969903 m!8346652))

(assert (=> bs!1969903 m!8346654))

(declare-fun m!8346738 () Bool)

(assert (=> bs!1969903 m!8346738))

(assert (=> d!2379309 d!2379345))

(declare-fun d!2379347 () Bool)

(declare-fun c!1463249 () Bool)

(assert (=> d!2379347 (= c!1463249 ((_ is Nil!74622) lt!2706267))))

(declare-fun e!4698172 () (InoxSet C!43372))

(assert (=> d!2379347 (= (content!15854 lt!2706267) e!4698172)))

(declare-fun b!7967606 () Bool)

(assert (=> b!7967606 (= e!4698172 ((as const (Array C!43372 Bool)) false))))

(declare-fun b!7967607 () Bool)

(assert (=> b!7967607 (= e!4698172 ((_ map or) (store ((as const (Array C!43372 Bool)) false) (h!81070 lt!2706267) true) (content!15854 (t!390489 lt!2706267))))))

(assert (= (and d!2379347 c!1463249) b!7967606))

(assert (= (and d!2379347 (not c!1463249)) b!7967607))

(declare-fun m!8346740 () Bool)

(assert (=> b!7967607 m!8346740))

(declare-fun m!8346742 () Bool)

(assert (=> b!7967607 m!8346742))

(assert (=> d!2379273 d!2379347))

(declare-fun d!2379349 () Bool)

(declare-fun c!1463250 () Bool)

(assert (=> d!2379349 (= c!1463250 ((_ is Nil!74622) testedP!447))))

(declare-fun e!4698173 () (InoxSet C!43372))

(assert (=> d!2379349 (= (content!15854 testedP!447) e!4698173)))

(declare-fun b!7967608 () Bool)

(assert (=> b!7967608 (= e!4698173 ((as const (Array C!43372 Bool)) false))))

(declare-fun b!7967609 () Bool)

(assert (=> b!7967609 (= e!4698173 ((_ map or) (store ((as const (Array C!43372 Bool)) false) (h!81070 testedP!447) true) (content!15854 (t!390489 testedP!447))))))

(assert (= (and d!2379349 c!1463250) b!7967608))

(assert (= (and d!2379349 (not c!1463250)) b!7967609))

(declare-fun m!8346744 () Bool)

(assert (=> b!7967609 m!8346744))

(declare-fun m!8346746 () Bool)

(assert (=> b!7967609 m!8346746))

(assert (=> d!2379273 d!2379349))

(declare-fun d!2379351 () Bool)

(declare-fun c!1463251 () Bool)

(assert (=> d!2379351 (= c!1463251 ((_ is Nil!74622) (Cons!74622 lt!2706223 Nil!74622)))))

(declare-fun e!4698174 () (InoxSet C!43372))

(assert (=> d!2379351 (= (content!15854 (Cons!74622 lt!2706223 Nil!74622)) e!4698174)))

(declare-fun b!7967610 () Bool)

(assert (=> b!7967610 (= e!4698174 ((as const (Array C!43372 Bool)) false))))

(declare-fun b!7967611 () Bool)

(assert (=> b!7967611 (= e!4698174 ((_ map or) (store ((as const (Array C!43372 Bool)) false) (h!81070 (Cons!74622 lt!2706223 Nil!74622)) true) (content!15854 (t!390489 (Cons!74622 lt!2706223 Nil!74622)))))))

(assert (= (and d!2379351 c!1463251) b!7967610))

(assert (= (and d!2379351 (not c!1463251)) b!7967611))

(declare-fun m!8346748 () Bool)

(assert (=> b!7967611 m!8346748))

(declare-fun m!8346750 () Bool)

(assert (=> b!7967611 m!8346750))

(assert (=> d!2379273 d!2379351))

(declare-fun b!7967613 () Bool)

(declare-fun res!3157077 () Bool)

(declare-fun e!4698177 () Bool)

(assert (=> b!7967613 (=> (not res!3157077) (not e!4698177))))

(assert (=> b!7967613 (= res!3157077 (= (head!16269 (tail!15804 input!7927)) (head!16269 (tail!15804 input!7927))))))

(declare-fun d!2379353 () Bool)

(declare-fun e!4698176 () Bool)

(assert (=> d!2379353 e!4698176))

(declare-fun res!3157075 () Bool)

(assert (=> d!2379353 (=> res!3157075 e!4698176)))

(declare-fun lt!2706485 () Bool)

(assert (=> d!2379353 (= res!3157075 (not lt!2706485))))

(declare-fun e!4698175 () Bool)

(assert (=> d!2379353 (= lt!2706485 e!4698175)))

(declare-fun res!3157074 () Bool)

(assert (=> d!2379353 (=> res!3157074 e!4698175)))

(assert (=> d!2379353 (= res!3157074 ((_ is Nil!74622) (tail!15804 input!7927)))))

(assert (=> d!2379353 (= (isPrefix!6617 (tail!15804 input!7927) (tail!15804 input!7927)) lt!2706485)))

(declare-fun b!7967615 () Bool)

(assert (=> b!7967615 (= e!4698176 (>= (size!43453 (tail!15804 input!7927)) (size!43453 (tail!15804 input!7927))))))

(declare-fun b!7967612 () Bool)

(assert (=> b!7967612 (= e!4698175 e!4698177)))

(declare-fun res!3157076 () Bool)

(assert (=> b!7967612 (=> (not res!3157076) (not e!4698177))))

(assert (=> b!7967612 (= res!3157076 (not ((_ is Nil!74622) (tail!15804 input!7927))))))

(declare-fun b!7967614 () Bool)

(assert (=> b!7967614 (= e!4698177 (isPrefix!6617 (tail!15804 (tail!15804 input!7927)) (tail!15804 (tail!15804 input!7927))))))

(assert (= (and d!2379353 (not res!3157074)) b!7967612))

(assert (= (and b!7967612 res!3157076) b!7967613))

(assert (= (and b!7967613 res!3157077) b!7967614))

(assert (= (and d!2379353 (not res!3157075)) b!7967615))

(assert (=> b!7967613 m!8346494))

(declare-fun m!8346752 () Bool)

(assert (=> b!7967613 m!8346752))

(assert (=> b!7967613 m!8346494))

(assert (=> b!7967613 m!8346752))

(assert (=> b!7967615 m!8346494))

(declare-fun m!8346754 () Bool)

(assert (=> b!7967615 m!8346754))

(assert (=> b!7967615 m!8346494))

(assert (=> b!7967615 m!8346754))

(assert (=> b!7967614 m!8346494))

(declare-fun m!8346756 () Bool)

(assert (=> b!7967614 m!8346756))

(assert (=> b!7967614 m!8346494))

(assert (=> b!7967614 m!8346756))

(assert (=> b!7967614 m!8346756))

(assert (=> b!7967614 m!8346756))

(declare-fun m!8346758 () Bool)

(assert (=> b!7967614 m!8346758))

(assert (=> b!7967227 d!2379353))

(declare-fun d!2379355 () Bool)

(assert (=> d!2379355 (= (tail!15804 input!7927) (t!390489 input!7927))))

(assert (=> b!7967227 d!2379355))

(declare-fun d!2379357 () Bool)

(assert (=> d!2379357 (= (head!16269 input!7927) (h!81070 input!7927))))

(assert (=> b!7967226 d!2379357))

(declare-fun d!2379359 () Bool)

(declare-fun e!4698179 () Bool)

(assert (=> d!2379359 e!4698179))

(declare-fun res!3157078 () Bool)

(assert (=> d!2379359 (=> (not res!3157078) (not e!4698179))))

(declare-fun lt!2706486 () List!74746)

(assert (=> d!2379359 (= res!3157078 (= (content!15854 lt!2706486) ((_ map or) (content!15854 (t!390489 testedP!447)) (content!15854 (Cons!74622 lt!2706223 Nil!74622)))))))

(declare-fun e!4698178 () List!74746)

(assert (=> d!2379359 (= lt!2706486 e!4698178)))

(declare-fun c!1463252 () Bool)

(assert (=> d!2379359 (= c!1463252 ((_ is Nil!74622) (t!390489 testedP!447)))))

(assert (=> d!2379359 (= (++!18387 (t!390489 testedP!447) (Cons!74622 lt!2706223 Nil!74622)) lt!2706486)))

(declare-fun b!7967618 () Bool)

(declare-fun res!3157079 () Bool)

(assert (=> b!7967618 (=> (not res!3157079) (not e!4698179))))

(assert (=> b!7967618 (= res!3157079 (= (size!43453 lt!2706486) (+ (size!43453 (t!390489 testedP!447)) (size!43453 (Cons!74622 lt!2706223 Nil!74622)))))))

(declare-fun b!7967617 () Bool)

(assert (=> b!7967617 (= e!4698178 (Cons!74622 (h!81070 (t!390489 testedP!447)) (++!18387 (t!390489 (t!390489 testedP!447)) (Cons!74622 lt!2706223 Nil!74622))))))

(declare-fun b!7967619 () Bool)

(assert (=> b!7967619 (= e!4698179 (or (not (= (Cons!74622 lt!2706223 Nil!74622) Nil!74622)) (= lt!2706486 (t!390489 testedP!447))))))

(declare-fun b!7967616 () Bool)

(assert (=> b!7967616 (= e!4698178 (Cons!74622 lt!2706223 Nil!74622))))

(assert (= (and d!2379359 c!1463252) b!7967616))

(assert (= (and d!2379359 (not c!1463252)) b!7967617))

(assert (= (and d!2379359 res!3157078) b!7967618))

(assert (= (and b!7967618 res!3157079) b!7967619))

(declare-fun m!8346760 () Bool)

(assert (=> d!2379359 m!8346760))

(assert (=> d!2379359 m!8346746))

(assert (=> d!2379359 m!8346514))

(declare-fun m!8346762 () Bool)

(assert (=> b!7967618 m!8346762))

(assert (=> b!7967618 m!8346576))

(assert (=> b!7967618 m!8346518))

(declare-fun m!8346764 () Bool)

(assert (=> b!7967617 m!8346764))

(assert (=> b!7967222 d!2379359))

(declare-fun b!7967634 () Bool)

(declare-fun e!4698196 () Bool)

(declare-fun call!739185 () Bool)

(assert (=> b!7967634 (= e!4698196 call!739185)))

(declare-fun bm!739179 () Bool)

(declare-fun c!1463255 () Bool)

(assert (=> bm!739179 (= call!739185 (nullable!9616 (ite c!1463255 (regOne!43547 r!24602) (regTwo!43546 r!24602))))))

(declare-fun b!7967635 () Bool)

(declare-fun e!4698194 () Bool)

(declare-fun e!4698193 () Bool)

(assert (=> b!7967635 (= e!4698194 e!4698193)))

(declare-fun res!3157093 () Bool)

(assert (=> b!7967635 (=> res!3157093 e!4698193)))

(assert (=> b!7967635 (= res!3157093 ((_ is Star!21517) r!24602))))

(declare-fun b!7967636 () Bool)

(declare-fun e!4698192 () Bool)

(assert (=> b!7967636 (= e!4698192 e!4698196)))

(declare-fun res!3157091 () Bool)

(declare-fun call!739184 () Bool)

(assert (=> b!7967636 (= res!3157091 call!739184)))

(assert (=> b!7967636 (=> (not res!3157091) (not e!4698196))))

(declare-fun bm!739180 () Bool)

(assert (=> bm!739180 (= call!739184 (nullable!9616 (ite c!1463255 (regTwo!43547 r!24602) (regOne!43546 r!24602))))))

(declare-fun d!2379361 () Bool)

(declare-fun res!3157092 () Bool)

(declare-fun e!4698195 () Bool)

(assert (=> d!2379361 (=> res!3157092 e!4698195)))

(assert (=> d!2379361 (= res!3157092 ((_ is EmptyExpr!21517) r!24602))))

(assert (=> d!2379361 (= (nullableFct!3796 r!24602) e!4698195)))

(declare-fun b!7967637 () Bool)

(assert (=> b!7967637 (= e!4698193 e!4698192)))

(assert (=> b!7967637 (= c!1463255 ((_ is Union!21517) r!24602))))

(declare-fun b!7967638 () Bool)

(declare-fun e!4698197 () Bool)

(assert (=> b!7967638 (= e!4698192 e!4698197)))

(declare-fun res!3157094 () Bool)

(assert (=> b!7967638 (= res!3157094 call!739185)))

(assert (=> b!7967638 (=> res!3157094 e!4698197)))

(declare-fun b!7967639 () Bool)

(assert (=> b!7967639 (= e!4698195 e!4698194)))

(declare-fun res!3157090 () Bool)

(assert (=> b!7967639 (=> (not res!3157090) (not e!4698194))))

(assert (=> b!7967639 (= res!3157090 (and (not ((_ is EmptyLang!21517) r!24602)) (not ((_ is ElementMatch!21517) r!24602))))))

(declare-fun b!7967640 () Bool)

(assert (=> b!7967640 (= e!4698197 call!739184)))

(assert (= (and d!2379361 (not res!3157092)) b!7967639))

(assert (= (and b!7967639 res!3157090) b!7967635))

(assert (= (and b!7967635 (not res!3157093)) b!7967637))

(assert (= (and b!7967637 c!1463255) b!7967638))

(assert (= (and b!7967637 (not c!1463255)) b!7967636))

(assert (= (and b!7967638 (not res!3157094)) b!7967640))

(assert (= (and b!7967636 res!3157091) b!7967634))

(assert (= (or b!7967638 b!7967634) bm!739179))

(assert (= (or b!7967640 b!7967636) bm!739180))

(declare-fun m!8346766 () Bool)

(assert (=> bm!739179 m!8346766))

(declare-fun m!8346768 () Bool)

(assert (=> bm!739180 m!8346768))

(assert (=> d!2379269 d!2379361))

(declare-fun b!7967641 () Bool)

(declare-fun e!4698203 () Bool)

(declare-fun e!4698201 () Bool)

(assert (=> b!7967641 (= e!4698203 e!4698201)))

(declare-fun c!1463256 () Bool)

(assert (=> b!7967641 (= c!1463256 ((_ is Union!21517) lt!2706253))))

(declare-fun b!7967642 () Bool)

(declare-fun res!3157097 () Bool)

(declare-fun e!4698200 () Bool)

(assert (=> b!7967642 (=> (not res!3157097) (not e!4698200))))

(declare-fun call!739186 () Bool)

(assert (=> b!7967642 (= res!3157097 call!739186)))

(assert (=> b!7967642 (= e!4698201 e!4698200)))

(declare-fun b!7967643 () Bool)

(declare-fun e!4698198 () Bool)

(assert (=> b!7967643 (= e!4698198 e!4698203)))

(declare-fun c!1463257 () Bool)

(assert (=> b!7967643 (= c!1463257 ((_ is Star!21517) lt!2706253))))

(declare-fun bm!739181 () Bool)

(declare-fun call!739188 () Bool)

(assert (=> bm!739181 (= call!739188 (validRegex!11821 (ite c!1463257 (reg!21846 lt!2706253) (ite c!1463256 (regOne!43547 lt!2706253) (regOne!43546 lt!2706253)))))))

(declare-fun b!7967644 () Bool)

(declare-fun e!4698199 () Bool)

(assert (=> b!7967644 (= e!4698199 call!739188)))

(declare-fun b!7967645 () Bool)

(declare-fun call!739187 () Bool)

(assert (=> b!7967645 (= e!4698200 call!739187)))

(declare-fun bm!739182 () Bool)

(assert (=> bm!739182 (= call!739187 (validRegex!11821 (ite c!1463256 (regTwo!43547 lt!2706253) (regTwo!43546 lt!2706253))))))

(declare-fun bm!739183 () Bool)

(assert (=> bm!739183 (= call!739186 call!739188)))

(declare-fun b!7967646 () Bool)

(declare-fun e!4698202 () Bool)

(assert (=> b!7967646 (= e!4698202 call!739187)))

(declare-fun b!7967647 () Bool)

(assert (=> b!7967647 (= e!4698203 e!4698199)))

(declare-fun res!3157096 () Bool)

(assert (=> b!7967647 (= res!3157096 (not (nullable!9616 (reg!21846 lt!2706253))))))

(assert (=> b!7967647 (=> (not res!3157096) (not e!4698199))))

(declare-fun d!2379363 () Bool)

(declare-fun res!3157099 () Bool)

(assert (=> d!2379363 (=> res!3157099 e!4698198)))

(assert (=> d!2379363 (= res!3157099 ((_ is ElementMatch!21517) lt!2706253))))

(assert (=> d!2379363 (= (validRegex!11821 lt!2706253) e!4698198)))

(declare-fun b!7967648 () Bool)

(declare-fun e!4698204 () Bool)

(assert (=> b!7967648 (= e!4698204 e!4698202)))

(declare-fun res!3157098 () Bool)

(assert (=> b!7967648 (=> (not res!3157098) (not e!4698202))))

(assert (=> b!7967648 (= res!3157098 call!739186)))

(declare-fun b!7967649 () Bool)

(declare-fun res!3157095 () Bool)

(assert (=> b!7967649 (=> res!3157095 e!4698204)))

(assert (=> b!7967649 (= res!3157095 (not ((_ is Concat!30516) lt!2706253)))))

(assert (=> b!7967649 (= e!4698201 e!4698204)))

(assert (= (and d!2379363 (not res!3157099)) b!7967643))

(assert (= (and b!7967643 c!1463257) b!7967647))

(assert (= (and b!7967643 (not c!1463257)) b!7967641))

(assert (= (and b!7967647 res!3157096) b!7967644))

(assert (= (and b!7967641 c!1463256) b!7967642))

(assert (= (and b!7967641 (not c!1463256)) b!7967649))

(assert (= (and b!7967642 res!3157097) b!7967645))

(assert (= (and b!7967649 (not res!3157095)) b!7967648))

(assert (= (and b!7967648 res!3157098) b!7967646))

(assert (= (or b!7967645 b!7967646) bm!739182))

(assert (= (or b!7967642 b!7967648) bm!739183))

(assert (= (or b!7967644 bm!739183) bm!739181))

(declare-fun m!8346770 () Bool)

(assert (=> bm!739181 m!8346770))

(declare-fun m!8346772 () Bool)

(assert (=> bm!739182 m!8346772))

(declare-fun m!8346774 () Bool)

(assert (=> b!7967647 m!8346774))

(assert (=> d!2379257 d!2379363))

(assert (=> d!2379257 d!2379289))

(assert (=> bm!739146 d!2379283))

(declare-fun b!7967650 () Bool)

(declare-fun e!4698210 () Bool)

(declare-fun e!4698208 () Bool)

(assert (=> b!7967650 (= e!4698210 e!4698208)))

(declare-fun c!1463258 () Bool)

(assert (=> b!7967650 (= c!1463258 ((_ is Union!21517) (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))))))

(declare-fun b!7967651 () Bool)

(declare-fun res!3157102 () Bool)

(declare-fun e!4698207 () Bool)

(assert (=> b!7967651 (=> (not res!3157102) (not e!4698207))))

(declare-fun call!739189 () Bool)

(assert (=> b!7967651 (= res!3157102 call!739189)))

(assert (=> b!7967651 (= e!4698208 e!4698207)))

(declare-fun b!7967652 () Bool)

(declare-fun e!4698205 () Bool)

(assert (=> b!7967652 (= e!4698205 e!4698210)))

(declare-fun c!1463259 () Bool)

(assert (=> b!7967652 (= c!1463259 ((_ is Star!21517) (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))))))

(declare-fun bm!739184 () Bool)

(declare-fun call!739191 () Bool)

(assert (=> bm!739184 (= call!739191 (validRegex!11821 (ite c!1463259 (reg!21846 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))) (ite c!1463258 (regOne!43547 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))) (regOne!43546 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116)))))))))

(declare-fun b!7967653 () Bool)

(declare-fun e!4698206 () Bool)

(assert (=> b!7967653 (= e!4698206 call!739191)))

(declare-fun b!7967654 () Bool)

(declare-fun call!739190 () Bool)

(assert (=> b!7967654 (= e!4698207 call!739190)))

(declare-fun bm!739185 () Bool)

(assert (=> bm!739185 (= call!739190 (validRegex!11821 (ite c!1463258 (regTwo!43547 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))) (regTwo!43546 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))))))))

(declare-fun bm!739186 () Bool)

(assert (=> bm!739186 (= call!739189 call!739191)))

(declare-fun b!7967655 () Bool)

(declare-fun e!4698209 () Bool)

(assert (=> b!7967655 (= e!4698209 call!739190)))

(declare-fun b!7967656 () Bool)

(assert (=> b!7967656 (= e!4698210 e!4698206)))

(declare-fun res!3157101 () Bool)

(assert (=> b!7967656 (= res!3157101 (not (nullable!9616 (reg!21846 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))))))))

(assert (=> b!7967656 (=> (not res!3157101) (not e!4698206))))

(declare-fun d!2379365 () Bool)

(declare-fun res!3157104 () Bool)

(assert (=> d!2379365 (=> res!3157104 e!4698205)))

(assert (=> d!2379365 (= res!3157104 ((_ is ElementMatch!21517) (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))))))

(assert (=> d!2379365 (= (validRegex!11821 (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116))) e!4698205)))

(declare-fun b!7967657 () Bool)

(declare-fun e!4698211 () Bool)

(assert (=> b!7967657 (= e!4698211 e!4698209)))

(declare-fun res!3157103 () Bool)

(assert (=> b!7967657 (=> (not res!3157103) (not e!4698209))))

(assert (=> b!7967657 (= res!3157103 call!739189)))

(declare-fun b!7967658 () Bool)

(declare-fun res!3157100 () Bool)

(assert (=> b!7967658 (=> res!3157100 e!4698211)))

(assert (=> b!7967658 (= res!3157100 (not ((_ is Concat!30516) (ite c!1463164 (regTwo!43547 baseR!116) (regTwo!43546 baseR!116)))))))

(assert (=> b!7967658 (= e!4698208 e!4698211)))

(assert (= (and d!2379365 (not res!3157104)) b!7967652))

(assert (= (and b!7967652 c!1463259) b!7967656))

(assert (= (and b!7967652 (not c!1463259)) b!7967650))

(assert (= (and b!7967656 res!3157101) b!7967653))

(assert (= (and b!7967650 c!1463258) b!7967651))

(assert (= (and b!7967650 (not c!1463258)) b!7967658))

(assert (= (and b!7967651 res!3157102) b!7967654))

(assert (= (and b!7967658 (not res!3157100)) b!7967657))

(assert (= (and b!7967657 res!3157103) b!7967655))

(assert (= (or b!7967654 b!7967655) bm!739185))

(assert (= (or b!7967651 b!7967657) bm!739186))

(assert (= (or b!7967653 bm!739186) bm!739184))

(declare-fun m!8346776 () Bool)

(assert (=> bm!739184 m!8346776))

(declare-fun m!8346778 () Bool)

(assert (=> bm!739185 m!8346778))

(declare-fun m!8346780 () Bool)

(assert (=> b!7967656 m!8346780))

(assert (=> bm!739095 d!2379365))

(assert (=> b!7967457 d!2379307))

(assert (=> b!7967457 d!2379263))

(declare-fun d!2379367 () Bool)

(declare-fun e!4698213 () Bool)

(assert (=> d!2379367 e!4698213))

(declare-fun res!3157105 () Bool)

(assert (=> d!2379367 (=> (not res!3157105) (not e!4698213))))

(declare-fun lt!2706487 () List!74746)

(assert (=> d!2379367 (= res!3157105 (= (content!15854 lt!2706487) ((_ map or) (content!15854 testedP!447) (content!15854 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)))))))

(declare-fun e!4698212 () List!74746)

(assert (=> d!2379367 (= lt!2706487 e!4698212)))

(declare-fun c!1463260 () Bool)

(assert (=> d!2379367 (= c!1463260 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379367 (= (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)) lt!2706487)))

(declare-fun b!7967661 () Bool)

(declare-fun res!3157106 () Bool)

(assert (=> b!7967661 (=> (not res!3157106) (not e!4698213))))

(assert (=> b!7967661 (= res!3157106 (= (size!43453 lt!2706487) (+ (size!43453 testedP!447) (size!43453 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)))))))

(declare-fun b!7967660 () Bool)

(assert (=> b!7967660 (= e!4698212 (Cons!74622 (h!81070 testedP!447) (++!18387 (t!390489 testedP!447) (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622))))))

(declare-fun b!7967662 () Bool)

(assert (=> b!7967662 (= e!4698213 (or (not (= (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622) Nil!74622)) (= lt!2706487 testedP!447)))))

(declare-fun b!7967659 () Bool)

(assert (=> b!7967659 (= e!4698212 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622))))

(assert (= (and d!2379367 c!1463260) b!7967659))

(assert (= (and d!2379367 (not c!1463260)) b!7967660))

(assert (= (and d!2379367 res!3157105) b!7967661))

(assert (= (and b!7967661 res!3157106) b!7967662))

(declare-fun m!8346782 () Bool)

(assert (=> d!2379367 m!8346782))

(assert (=> d!2379367 m!8346512))

(declare-fun m!8346784 () Bool)

(assert (=> d!2379367 m!8346784))

(declare-fun m!8346786 () Bool)

(assert (=> b!7967661 m!8346786))

(assert (=> b!7967661 m!8346434))

(declare-fun m!8346788 () Bool)

(assert (=> b!7967661 m!8346788))

(declare-fun m!8346790 () Bool)

(assert (=> b!7967660 m!8346790))

(assert (=> b!7967457 d!2379367))

(declare-fun d!2379369 () Bool)

(declare-fun e!4698215 () Bool)

(assert (=> d!2379369 e!4698215))

(declare-fun res!3157107 () Bool)

(assert (=> d!2379369 (=> (not res!3157107) (not e!4698215))))

(declare-fun lt!2706488 () List!74746)

(assert (=> d!2379369 (= res!3157107 (= (content!15854 lt!2706488) ((_ map or) (content!15854 testedP!447) (content!15854 (Cons!74622 (head!16269 lt!2706227) Nil!74622)))))))

(declare-fun e!4698214 () List!74746)

(assert (=> d!2379369 (= lt!2706488 e!4698214)))

(declare-fun c!1463261 () Bool)

(assert (=> d!2379369 (= c!1463261 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379369 (= (++!18387 testedP!447 (Cons!74622 (head!16269 lt!2706227) Nil!74622)) lt!2706488)))

(declare-fun b!7967665 () Bool)

(declare-fun res!3157108 () Bool)

(assert (=> b!7967665 (=> (not res!3157108) (not e!4698215))))

(assert (=> b!7967665 (= res!3157108 (= (size!43453 lt!2706488) (+ (size!43453 testedP!447) (size!43453 (Cons!74622 (head!16269 lt!2706227) Nil!74622)))))))

(declare-fun b!7967664 () Bool)

(assert (=> b!7967664 (= e!4698214 (Cons!74622 (h!81070 testedP!447) (++!18387 (t!390489 testedP!447) (Cons!74622 (head!16269 lt!2706227) Nil!74622))))))

(declare-fun b!7967666 () Bool)

(assert (=> b!7967666 (= e!4698215 (or (not (= (Cons!74622 (head!16269 lt!2706227) Nil!74622) Nil!74622)) (= lt!2706488 testedP!447)))))

(declare-fun b!7967663 () Bool)

(assert (=> b!7967663 (= e!4698214 (Cons!74622 (head!16269 lt!2706227) Nil!74622))))

(assert (= (and d!2379369 c!1463261) b!7967663))

(assert (= (and d!2379369 (not c!1463261)) b!7967664))

(assert (= (and d!2379369 res!3157107) b!7967665))

(assert (= (and b!7967665 res!3157108) b!7967666))

(declare-fun m!8346792 () Bool)

(assert (=> d!2379369 m!8346792))

(assert (=> d!2379369 m!8346512))

(declare-fun m!8346794 () Bool)

(assert (=> d!2379369 m!8346794))

(declare-fun m!8346796 () Bool)

(assert (=> b!7967665 m!8346796))

(assert (=> b!7967665 m!8346434))

(declare-fun m!8346798 () Bool)

(assert (=> b!7967665 m!8346798))

(declare-fun m!8346800 () Bool)

(assert (=> b!7967664 m!8346800))

(assert (=> b!7967457 d!2379369))

(declare-fun d!2379371 () Bool)

(declare-fun e!4698217 () Bool)

(assert (=> d!2379371 e!4698217))

(declare-fun res!3157109 () Bool)

(assert (=> d!2379371 (=> (not res!3157109) (not e!4698217))))

(declare-fun lt!2706489 () List!74746)

(assert (=> d!2379371 (= res!3157109 (= (content!15854 lt!2706489) ((_ map or) (content!15854 testedP!447) (content!15854 (Cons!74622 lt!2706465 Nil!74622)))))))

(declare-fun e!4698216 () List!74746)

(assert (=> d!2379371 (= lt!2706489 e!4698216)))

(declare-fun c!1463262 () Bool)

(assert (=> d!2379371 (= c!1463262 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379371 (= (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622)) lt!2706489)))

(declare-fun b!7967669 () Bool)

(declare-fun res!3157110 () Bool)

(assert (=> b!7967669 (=> (not res!3157110) (not e!4698217))))

(assert (=> b!7967669 (= res!3157110 (= (size!43453 lt!2706489) (+ (size!43453 testedP!447) (size!43453 (Cons!74622 lt!2706465 Nil!74622)))))))

(declare-fun b!7967668 () Bool)

(assert (=> b!7967668 (= e!4698216 (Cons!74622 (h!81070 testedP!447) (++!18387 (t!390489 testedP!447) (Cons!74622 lt!2706465 Nil!74622))))))

(declare-fun b!7967670 () Bool)

(assert (=> b!7967670 (= e!4698217 (or (not (= (Cons!74622 lt!2706465 Nil!74622) Nil!74622)) (= lt!2706489 testedP!447)))))

(declare-fun b!7967667 () Bool)

(assert (=> b!7967667 (= e!4698216 (Cons!74622 lt!2706465 Nil!74622))))

(assert (= (and d!2379371 c!1463262) b!7967667))

(assert (= (and d!2379371 (not c!1463262)) b!7967668))

(assert (= (and d!2379371 res!3157109) b!7967669))

(assert (= (and b!7967669 res!3157110) b!7967670))

(declare-fun m!8346802 () Bool)

(assert (=> d!2379371 m!8346802))

(assert (=> d!2379371 m!8346512))

(declare-fun m!8346804 () Bool)

(assert (=> d!2379371 m!8346804))

(declare-fun m!8346806 () Bool)

(assert (=> b!7967669 m!8346806))

(assert (=> b!7967669 m!8346434))

(declare-fun m!8346808 () Bool)

(assert (=> b!7967669 m!8346808))

(declare-fun m!8346810 () Bool)

(assert (=> b!7967668 m!8346810))

(assert (=> b!7967457 d!2379371))

(assert (=> b!7967457 d!2379331))

(assert (=> b!7967457 d!2379319))

(assert (=> b!7967457 d!2379251))

(assert (=> b!7967457 d!2379299))

(declare-fun d!2379373 () Bool)

(assert (=> d!2379373 (= (++!18387 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622)) lt!2706457) input!7927)))

(declare-fun lt!2706494 () Unit!170206)

(declare-fun choose!60071 (List!74746 C!43372 List!74746 List!74746) Unit!170206)

(assert (=> d!2379373 (= lt!2706494 (choose!60071 testedP!447 lt!2706465 lt!2706457 input!7927))))

(assert (=> d!2379373 (= (++!18387 testedP!447 (Cons!74622 lt!2706465 lt!2706457)) input!7927)))

(assert (=> d!2379373 (= (lemmaMoveElementToOtherListKeepsConcatEq!3542 testedP!447 lt!2706465 lt!2706457 input!7927) lt!2706494)))

(declare-fun bs!1969904 () Bool)

(assert (= bs!1969904 d!2379373))

(assert (=> bs!1969904 m!8346642))

(assert (=> bs!1969904 m!8346642))

(assert (=> bs!1969904 m!8346644))

(declare-fun m!8346824 () Bool)

(assert (=> bs!1969904 m!8346824))

(declare-fun m!8346828 () Bool)

(assert (=> bs!1969904 m!8346828))

(assert (=> b!7967457 d!2379373))

(declare-fun d!2379379 () Bool)

(declare-fun e!4698225 () Bool)

(assert (=> d!2379379 e!4698225))

(declare-fun res!3157111 () Bool)

(assert (=> d!2379379 (=> (not res!3157111) (not e!4698225))))

(declare-fun lt!2706495 () List!74746)

(assert (=> d!2379379 (= res!3157111 (= (content!15854 lt!2706495) ((_ map or) (content!15854 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622))) (content!15854 lt!2706457))))))

(declare-fun e!4698224 () List!74746)

(assert (=> d!2379379 (= lt!2706495 e!4698224)))

(declare-fun c!1463269 () Bool)

(assert (=> d!2379379 (= c!1463269 ((_ is Nil!74622) (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622))))))

(assert (=> d!2379379 (= (++!18387 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622)) lt!2706457) lt!2706495)))

(declare-fun b!7967685 () Bool)

(declare-fun res!3157112 () Bool)

(assert (=> b!7967685 (=> (not res!3157112) (not e!4698225))))

(assert (=> b!7967685 (= res!3157112 (= (size!43453 lt!2706495) (+ (size!43453 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622))) (size!43453 lt!2706457))))))

(declare-fun b!7967684 () Bool)

(assert (=> b!7967684 (= e!4698224 (Cons!74622 (h!81070 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622))) (++!18387 (t!390489 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622))) lt!2706457)))))

(declare-fun b!7967686 () Bool)

(assert (=> b!7967686 (= e!4698225 (or (not (= lt!2706457 Nil!74622)) (= lt!2706495 (++!18387 testedP!447 (Cons!74622 lt!2706465 Nil!74622)))))))

(declare-fun b!7967683 () Bool)

(assert (=> b!7967683 (= e!4698224 lt!2706457)))

(assert (= (and d!2379379 c!1463269) b!7967683))

(assert (= (and d!2379379 (not c!1463269)) b!7967684))

(assert (= (and d!2379379 res!3157111) b!7967685))

(assert (= (and b!7967685 res!3157112) b!7967686))

(declare-fun m!8346832 () Bool)

(assert (=> d!2379379 m!8346832))

(assert (=> d!2379379 m!8346642))

(declare-fun m!8346834 () Bool)

(assert (=> d!2379379 m!8346834))

(declare-fun m!8346836 () Bool)

(assert (=> d!2379379 m!8346836))

(declare-fun m!8346838 () Bool)

(assert (=> b!7967685 m!8346838))

(assert (=> b!7967685 m!8346642))

(declare-fun m!8346840 () Bool)

(assert (=> b!7967685 m!8346840))

(declare-fun m!8346842 () Bool)

(assert (=> b!7967685 m!8346842))

(declare-fun m!8346844 () Bool)

(assert (=> b!7967684 m!8346844))

(assert (=> b!7967457 d!2379379))

(declare-fun d!2379383 () Bool)

(assert (=> d!2379383 (= (head!16269 (getSuffix!3820 input!7927 testedP!447)) (h!81070 (getSuffix!3820 input!7927 testedP!447)))))

(assert (=> b!7967457 d!2379383))

(assert (=> b!7967457 d!2379271))

(declare-fun b!7967692 () Bool)

(declare-fun res!3157118 () Bool)

(declare-fun e!4698230 () Bool)

(assert (=> b!7967692 (=> (not res!3157118) (not e!4698230))))

(assert (=> b!7967692 (= res!3157118 (= (head!16269 (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622))) (head!16269 input!7927)))))

(declare-fun d!2379385 () Bool)

(declare-fun e!4698229 () Bool)

(assert (=> d!2379385 e!4698229))

(declare-fun res!3157116 () Bool)

(assert (=> d!2379385 (=> res!3157116 e!4698229)))

(declare-fun lt!2706497 () Bool)

(assert (=> d!2379385 (= res!3157116 (not lt!2706497))))

(declare-fun e!4698228 () Bool)

(assert (=> d!2379385 (= lt!2706497 e!4698228)))

(declare-fun res!3157115 () Bool)

(assert (=> d!2379385 (=> res!3157115 e!4698228)))

(assert (=> d!2379385 (= res!3157115 ((_ is Nil!74622) (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622))))))

(assert (=> d!2379385 (= (isPrefix!6617 (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)) input!7927) lt!2706497)))

(declare-fun b!7967694 () Bool)

(assert (=> b!7967694 (= e!4698229 (>= (size!43453 input!7927) (size!43453 (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)))))))

(declare-fun b!7967691 () Bool)

(assert (=> b!7967691 (= e!4698228 e!4698230)))

(declare-fun res!3157117 () Bool)

(assert (=> b!7967691 (=> (not res!3157117) (not e!4698230))))

(assert (=> b!7967691 (= res!3157117 (not ((_ is Nil!74622) input!7927)))))

(declare-fun b!7967693 () Bool)

(assert (=> b!7967693 (= e!4698230 (isPrefix!6617 (tail!15804 (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622))) (tail!15804 input!7927)))))

(assert (= (and d!2379385 (not res!3157115)) b!7967691))

(assert (= (and b!7967691 res!3157117) b!7967692))

(assert (= (and b!7967692 res!3157118) b!7967693))

(assert (= (and d!2379385 (not res!3157116)) b!7967694))

(assert (=> b!7967692 m!8346482))

(declare-fun m!8346856 () Bool)

(assert (=> b!7967692 m!8346856))

(assert (=> b!7967692 m!8346488))

(assert (=> b!7967694 m!8346436))

(assert (=> b!7967694 m!8346482))

(declare-fun m!8346858 () Bool)

(assert (=> b!7967694 m!8346858))

(assert (=> b!7967693 m!8346482))

(declare-fun m!8346860 () Bool)

(assert (=> b!7967693 m!8346860))

(assert (=> b!7967693 m!8346494))

(assert (=> b!7967693 m!8346860))

(assert (=> b!7967693 m!8346494))

(declare-fun m!8346862 () Bool)

(assert (=> b!7967693 m!8346862))

(assert (=> b!7967457 d!2379385))

(declare-fun d!2379389 () Bool)

(assert (=> d!2379389 (= (isEmpty!42923 (_1!38651 lt!2706447)) ((_ is Nil!74622) (_1!38651 lt!2706447)))))

(assert (=> b!7967456 d!2379389))

(declare-fun d!2379391 () Bool)

(assert (=> d!2379391 (= input!7927 testedP!447)))

(assert (=> d!2379391 true))

(declare-fun _$60!1348 () Unit!170206)

(assert (=> d!2379391 (= (choose!60066 input!7927 testedP!447 input!7927) _$60!1348)))

(assert (=> d!2379283 d!2379391))

(assert (=> d!2379283 d!2379281))

(declare-fun d!2379393 () Bool)

(declare-fun lt!2706498 () Regex!21517)

(assert (=> d!2379393 (validRegex!11821 lt!2706498)))

(declare-fun e!4698238 () Regex!21517)

(assert (=> d!2379393 (= lt!2706498 e!4698238)))

(declare-fun c!1463273 () Bool)

(assert (=> d!2379393 (= c!1463273 ((_ is Cons!74622) (t!390489 lt!2706230)))))

(assert (=> d!2379393 (validRegex!11821 (derivativeStep!6543 baseR!116 (h!81070 lt!2706230)))))

(assert (=> d!2379393 (= (derivative!703 (derivativeStep!6543 baseR!116 (h!81070 lt!2706230)) (t!390489 lt!2706230)) lt!2706498)))

(declare-fun b!7967704 () Bool)

(assert (=> b!7967704 (= e!4698238 (derivative!703 (derivativeStep!6543 (derivativeStep!6543 baseR!116 (h!81070 lt!2706230)) (h!81070 (t!390489 lt!2706230))) (t!390489 (t!390489 lt!2706230))))))

(declare-fun b!7967705 () Bool)

(assert (=> b!7967705 (= e!4698238 (derivativeStep!6543 baseR!116 (h!81070 lt!2706230)))))

(assert (= (and d!2379393 c!1463273) b!7967704))

(assert (= (and d!2379393 (not c!1463273)) b!7967705))

(declare-fun m!8346870 () Bool)

(assert (=> d!2379393 m!8346870))

(assert (=> d!2379393 m!8346670))

(declare-fun m!8346872 () Bool)

(assert (=> d!2379393 m!8346872))

(assert (=> b!7967704 m!8346670))

(declare-fun m!8346874 () Bool)

(assert (=> b!7967704 m!8346874))

(assert (=> b!7967704 m!8346874))

(declare-fun m!8346876 () Bool)

(assert (=> b!7967704 m!8346876))

(assert (=> b!7967475 d!2379393))

(declare-fun bm!739194 () Bool)

(declare-fun call!739200 () Regex!21517)

(declare-fun call!739199 () Regex!21517)

(assert (=> bm!739194 (= call!739200 call!739199)))

(declare-fun c!1463276 () Bool)

(declare-fun c!1463275 () Bool)

(declare-fun bm!739195 () Bool)

(declare-fun c!1463278 () Bool)

(assert (=> bm!739195 (= call!739199 (derivativeStep!6543 (ite c!1463278 (regTwo!43547 baseR!116) (ite c!1463275 (reg!21846 baseR!116) (ite c!1463276 (regTwo!43546 baseR!116) (regOne!43546 baseR!116)))) (h!81070 lt!2706230)))))

(declare-fun b!7967711 () Bool)

(declare-fun e!4698242 () Regex!21517)

(declare-fun call!739201 () Regex!21517)

(assert (=> b!7967711 (= e!4698242 (Union!21517 (Concat!30516 call!739201 (regTwo!43546 baseR!116)) EmptyLang!21517))))

(declare-fun b!7967712 () Bool)

(declare-fun e!4698243 () Regex!21517)

(declare-fun call!739202 () Regex!21517)

(assert (=> b!7967712 (= e!4698243 (Union!21517 call!739202 call!739199))))

(declare-fun bm!739196 () Bool)

(assert (=> bm!739196 (= call!739201 call!739200)))

(declare-fun b!7967713 () Bool)

(declare-fun e!4698245 () Regex!21517)

(declare-fun e!4698244 () Regex!21517)

(assert (=> b!7967713 (= e!4698245 e!4698244)))

(declare-fun c!1463274 () Bool)

(assert (=> b!7967713 (= c!1463274 ((_ is ElementMatch!21517) baseR!116))))

(declare-fun b!7967714 () Bool)

(assert (=> b!7967714 (= e!4698245 EmptyLang!21517)))

(declare-fun b!7967715 () Bool)

(assert (=> b!7967715 (= c!1463276 (nullable!9616 (regOne!43546 baseR!116)))))

(declare-fun e!4698246 () Regex!21517)

(assert (=> b!7967715 (= e!4698246 e!4698242)))

(declare-fun bm!739197 () Bool)

(assert (=> bm!739197 (= call!739202 (derivativeStep!6543 (ite c!1463278 (regOne!43547 baseR!116) (regOne!43546 baseR!116)) (h!81070 lt!2706230)))))

(declare-fun b!7967710 () Bool)

(assert (=> b!7967710 (= c!1463278 ((_ is Union!21517) baseR!116))))

(assert (=> b!7967710 (= e!4698244 e!4698243)))

(declare-fun d!2379397 () Bool)

(declare-fun lt!2706500 () Regex!21517)

(assert (=> d!2379397 (validRegex!11821 lt!2706500)))

(assert (=> d!2379397 (= lt!2706500 e!4698245)))

(declare-fun c!1463277 () Bool)

(assert (=> d!2379397 (= c!1463277 (or ((_ is EmptyExpr!21517) baseR!116) ((_ is EmptyLang!21517) baseR!116)))))

(assert (=> d!2379397 (validRegex!11821 baseR!116)))

(assert (=> d!2379397 (= (derivativeStep!6543 baseR!116 (h!81070 lt!2706230)) lt!2706500)))

(declare-fun b!7967716 () Bool)

(assert (=> b!7967716 (= e!4698246 (Concat!30516 call!739200 baseR!116))))

(declare-fun b!7967717 () Bool)

(assert (=> b!7967717 (= e!4698243 e!4698246)))

(assert (=> b!7967717 (= c!1463275 ((_ is Star!21517) baseR!116))))

(declare-fun b!7967718 () Bool)

(assert (=> b!7967718 (= e!4698242 (Union!21517 (Concat!30516 call!739202 (regTwo!43546 baseR!116)) call!739201))))

(declare-fun b!7967719 () Bool)

(assert (=> b!7967719 (= e!4698244 (ite (= (h!81070 lt!2706230) (c!1463130 baseR!116)) EmptyExpr!21517 EmptyLang!21517))))

(assert (= (and d!2379397 c!1463277) b!7967714))

(assert (= (and d!2379397 (not c!1463277)) b!7967713))

(assert (= (and b!7967713 c!1463274) b!7967719))

(assert (= (and b!7967713 (not c!1463274)) b!7967710))

(assert (= (and b!7967710 c!1463278) b!7967712))

(assert (= (and b!7967710 (not c!1463278)) b!7967717))

(assert (= (and b!7967717 c!1463275) b!7967716))

(assert (= (and b!7967717 (not c!1463275)) b!7967715))

(assert (= (and b!7967715 c!1463276) b!7967718))

(assert (= (and b!7967715 (not c!1463276)) b!7967711))

(assert (= (or b!7967718 b!7967711) bm!739196))

(assert (= (or b!7967716 bm!739196) bm!739194))

(assert (= (or b!7967712 bm!739194) bm!739195))

(assert (= (or b!7967712 b!7967718) bm!739197))

(declare-fun m!8346892 () Bool)

(assert (=> bm!739195 m!8346892))

(declare-fun m!8346894 () Bool)

(assert (=> b!7967715 m!8346894))

(declare-fun m!8346896 () Bool)

(assert (=> bm!739197 m!8346896))

(declare-fun m!8346898 () Bool)

(assert (=> d!2379397 m!8346898))

(assert (=> d!2379397 m!8346414))

(assert (=> b!7967475 d!2379397))

(declare-fun b!7967720 () Bool)

(declare-fun e!4698252 () Bool)

(declare-fun e!4698250 () Bool)

(assert (=> b!7967720 (= e!4698252 e!4698250)))

(declare-fun c!1463279 () Bool)

(assert (=> b!7967720 (= c!1463279 ((_ is Union!21517) lt!2706472))))

(declare-fun b!7967721 () Bool)

(declare-fun res!3157130 () Bool)

(declare-fun e!4698249 () Bool)

(assert (=> b!7967721 (=> (not res!3157130) (not e!4698249))))

(declare-fun call!739203 () Bool)

(assert (=> b!7967721 (= res!3157130 call!739203)))

(assert (=> b!7967721 (= e!4698250 e!4698249)))

(declare-fun b!7967722 () Bool)

(declare-fun e!4698247 () Bool)

(assert (=> b!7967722 (= e!4698247 e!4698252)))

(declare-fun c!1463280 () Bool)

(assert (=> b!7967722 (= c!1463280 ((_ is Star!21517) lt!2706472))))

(declare-fun call!739205 () Bool)

(declare-fun bm!739198 () Bool)

(assert (=> bm!739198 (= call!739205 (validRegex!11821 (ite c!1463280 (reg!21846 lt!2706472) (ite c!1463279 (regOne!43547 lt!2706472) (regOne!43546 lt!2706472)))))))

(declare-fun b!7967723 () Bool)

(declare-fun e!4698248 () Bool)

(assert (=> b!7967723 (= e!4698248 call!739205)))

(declare-fun b!7967724 () Bool)

(declare-fun call!739204 () Bool)

(assert (=> b!7967724 (= e!4698249 call!739204)))

(declare-fun bm!739199 () Bool)

(assert (=> bm!739199 (= call!739204 (validRegex!11821 (ite c!1463279 (regTwo!43547 lt!2706472) (regTwo!43546 lt!2706472))))))

(declare-fun bm!739200 () Bool)

(assert (=> bm!739200 (= call!739203 call!739205)))

(declare-fun b!7967725 () Bool)

(declare-fun e!4698251 () Bool)

(assert (=> b!7967725 (= e!4698251 call!739204)))

(declare-fun b!7967726 () Bool)

(assert (=> b!7967726 (= e!4698252 e!4698248)))

(declare-fun res!3157129 () Bool)

(assert (=> b!7967726 (= res!3157129 (not (nullable!9616 (reg!21846 lt!2706472))))))

(assert (=> b!7967726 (=> (not res!3157129) (not e!4698248))))

(declare-fun d!2379401 () Bool)

(declare-fun res!3157132 () Bool)

(assert (=> d!2379401 (=> res!3157132 e!4698247)))

(assert (=> d!2379401 (= res!3157132 ((_ is ElementMatch!21517) lt!2706472))))

(assert (=> d!2379401 (= (validRegex!11821 lt!2706472) e!4698247)))

(declare-fun b!7967727 () Bool)

(declare-fun e!4698253 () Bool)

(assert (=> b!7967727 (= e!4698253 e!4698251)))

(declare-fun res!3157131 () Bool)

(assert (=> b!7967727 (=> (not res!3157131) (not e!4698251))))

(assert (=> b!7967727 (= res!3157131 call!739203)))

(declare-fun b!7967728 () Bool)

(declare-fun res!3157128 () Bool)

(assert (=> b!7967728 (=> res!3157128 e!4698253)))

(assert (=> b!7967728 (= res!3157128 (not ((_ is Concat!30516) lt!2706472)))))

(assert (=> b!7967728 (= e!4698250 e!4698253)))

(assert (= (and d!2379401 (not res!3157132)) b!7967722))

(assert (= (and b!7967722 c!1463280) b!7967726))

(assert (= (and b!7967722 (not c!1463280)) b!7967720))

(assert (= (and b!7967726 res!3157129) b!7967723))

(assert (= (and b!7967720 c!1463279) b!7967721))

(assert (= (and b!7967720 (not c!1463279)) b!7967728))

(assert (= (and b!7967721 res!3157130) b!7967724))

(assert (= (and b!7967728 (not res!3157128)) b!7967727))

(assert (= (and b!7967727 res!3157131) b!7967725))

(assert (= (or b!7967724 b!7967725) bm!739199))

(assert (= (or b!7967721 b!7967727) bm!739200))

(assert (= (or b!7967723 bm!739200) bm!739198))

(declare-fun m!8346900 () Bool)

(assert (=> bm!739198 m!8346900))

(declare-fun m!8346902 () Bool)

(assert (=> bm!739199 m!8346902))

(declare-fun m!8346904 () Bool)

(assert (=> b!7967726 m!8346904))

(assert (=> d!2379323 d!2379401))

(assert (=> d!2379323 d!2379339))

(declare-fun bm!739201 () Bool)

(declare-fun call!739207 () Regex!21517)

(declare-fun call!739206 () Regex!21517)

(assert (=> bm!739201 (= call!739207 call!739206)))

(declare-fun bm!739202 () Bool)

(declare-fun c!1463285 () Bool)

(declare-fun c!1463282 () Bool)

(declare-fun c!1463283 () Bool)

(assert (=> bm!739202 (= call!739206 (derivativeStep!6543 (ite c!1463285 (regTwo!43547 r!24602) (ite c!1463282 (reg!21846 r!24602) (ite c!1463283 (regTwo!43546 r!24602) (regOne!43546 r!24602)))) call!739157))))

(declare-fun b!7967730 () Bool)

(declare-fun e!4698254 () Regex!21517)

(declare-fun call!739208 () Regex!21517)

(assert (=> b!7967730 (= e!4698254 (Union!21517 (Concat!30516 call!739208 (regTwo!43546 r!24602)) EmptyLang!21517))))

(declare-fun b!7967731 () Bool)

(declare-fun e!4698255 () Regex!21517)

(declare-fun call!739209 () Regex!21517)

(assert (=> b!7967731 (= e!4698255 (Union!21517 call!739209 call!739206))))

(declare-fun bm!739203 () Bool)

(assert (=> bm!739203 (= call!739208 call!739207)))

(declare-fun b!7967732 () Bool)

(declare-fun e!4698257 () Regex!21517)

(declare-fun e!4698256 () Regex!21517)

(assert (=> b!7967732 (= e!4698257 e!4698256)))

(declare-fun c!1463281 () Bool)

(assert (=> b!7967732 (= c!1463281 ((_ is ElementMatch!21517) r!24602))))

(declare-fun b!7967733 () Bool)

(assert (=> b!7967733 (= e!4698257 EmptyLang!21517)))

(declare-fun b!7967734 () Bool)

(assert (=> b!7967734 (= c!1463283 (nullable!9616 (regOne!43546 r!24602)))))

(declare-fun e!4698258 () Regex!21517)

(assert (=> b!7967734 (= e!4698258 e!4698254)))

(declare-fun bm!739204 () Bool)

(assert (=> bm!739204 (= call!739209 (derivativeStep!6543 (ite c!1463285 (regOne!43547 r!24602) (regOne!43546 r!24602)) call!739157))))

(declare-fun b!7967729 () Bool)

(assert (=> b!7967729 (= c!1463285 ((_ is Union!21517) r!24602))))

(assert (=> b!7967729 (= e!4698256 e!4698255)))

(declare-fun d!2379403 () Bool)

(declare-fun lt!2706501 () Regex!21517)

(assert (=> d!2379403 (validRegex!11821 lt!2706501)))

(assert (=> d!2379403 (= lt!2706501 e!4698257)))

(declare-fun c!1463284 () Bool)

(assert (=> d!2379403 (= c!1463284 (or ((_ is EmptyExpr!21517) r!24602) ((_ is EmptyLang!21517) r!24602)))))

(assert (=> d!2379403 (validRegex!11821 r!24602)))

(assert (=> d!2379403 (= (derivativeStep!6543 r!24602 call!739157) lt!2706501)))

(declare-fun b!7967735 () Bool)

(assert (=> b!7967735 (= e!4698258 (Concat!30516 call!739207 r!24602))))

(declare-fun b!7967736 () Bool)

(assert (=> b!7967736 (= e!4698255 e!4698258)))

(assert (=> b!7967736 (= c!1463282 ((_ is Star!21517) r!24602))))

(declare-fun b!7967737 () Bool)

(assert (=> b!7967737 (= e!4698254 (Union!21517 (Concat!30516 call!739209 (regTwo!43546 r!24602)) call!739208))))

(declare-fun b!7967738 () Bool)

(assert (=> b!7967738 (= e!4698256 (ite (= call!739157 (c!1463130 r!24602)) EmptyExpr!21517 EmptyLang!21517))))

(assert (= (and d!2379403 c!1463284) b!7967733))

(assert (= (and d!2379403 (not c!1463284)) b!7967732))

(assert (= (and b!7967732 c!1463281) b!7967738))

(assert (= (and b!7967732 (not c!1463281)) b!7967729))

(assert (= (and b!7967729 c!1463285) b!7967731))

(assert (= (and b!7967729 (not c!1463285)) b!7967736))

(assert (= (and b!7967736 c!1463282) b!7967735))

(assert (= (and b!7967736 (not c!1463282)) b!7967734))

(assert (= (and b!7967734 c!1463283) b!7967737))

(assert (= (and b!7967734 (not c!1463283)) b!7967730))

(assert (= (or b!7967737 b!7967730) bm!739203))

(assert (= (or b!7967735 bm!739203) bm!739201))

(assert (= (or b!7967731 bm!739201) bm!739202))

(assert (= (or b!7967731 b!7967737) bm!739204))

(declare-fun m!8346906 () Bool)

(assert (=> bm!739202 m!8346906))

(assert (=> b!7967734 m!8346676))

(declare-fun m!8346908 () Bool)

(assert (=> bm!739204 m!8346908))

(declare-fun m!8346910 () Bool)

(assert (=> d!2379403 m!8346910))

(assert (=> d!2379403 m!8346660))

(assert (=> bm!739150 d!2379403))

(declare-fun d!2379409 () Bool)

(declare-fun lt!2706502 () Int)

(assert (=> d!2379409 (>= lt!2706502 0)))

(declare-fun e!4698266 () Int)

(assert (=> d!2379409 (= lt!2706502 e!4698266)))

(declare-fun c!1463288 () Bool)

(assert (=> d!2379409 (= c!1463288 ((_ is Nil!74622) (t!390489 testedP!447)))))

(assert (=> d!2379409 (= (size!43453 (t!390489 testedP!447)) lt!2706502)))

(declare-fun b!7967748 () Bool)

(assert (=> b!7967748 (= e!4698266 0)))

(declare-fun b!7967749 () Bool)

(assert (=> b!7967749 (= e!4698266 (+ 1 (size!43453 (t!390489 (t!390489 testedP!447)))))))

(assert (= (and d!2379409 c!1463288) b!7967748))

(assert (= (and d!2379409 (not c!1463288)) b!7967749))

(declare-fun m!8346912 () Bool)

(assert (=> b!7967749 m!8346912))

(assert (=> b!7967291 d!2379409))

(declare-fun d!2379411 () Bool)

(assert (=> d!2379411 (= (head!16269 lt!2706230) (h!81070 lt!2706230))))

(assert (=> b!7967200 d!2379411))

(assert (=> b!7967200 d!2379357))

(assert (=> bm!739149 d!2379281))

(assert (=> d!2379277 d!2379281))

(declare-fun d!2379413 () Bool)

(assert (=> d!2379413 (isPrefix!6617 input!7927 input!7927)))

(assert (=> d!2379413 true))

(declare-fun _$45!2488 () Unit!170206)

(assert (=> d!2379413 (= (choose!60065 input!7927 input!7927) _$45!2488)))

(declare-fun bs!1969905 () Bool)

(assert (= bs!1969905 d!2379413))

(assert (=> bs!1969905 m!8346418))

(assert (=> d!2379277 d!2379413))

(declare-fun d!2379417 () Bool)

(assert (=> d!2379417 (= (isEmpty!42923 (_1!38651 lt!2706450)) ((_ is Nil!74622) (_1!38651 lt!2706450)))))

(assert (=> b!7967459 d!2379417))

(declare-fun d!2379419 () Bool)

(declare-fun lt!2706503 () Int)

(assert (=> d!2379419 (>= lt!2706503 0)))

(declare-fun e!4698274 () Int)

(assert (=> d!2379419 (= lt!2706503 e!4698274)))

(declare-fun c!1463291 () Bool)

(assert (=> d!2379419 (= c!1463291 ((_ is Nil!74622) lt!2706267))))

(assert (=> d!2379419 (= (size!43453 lt!2706267) lt!2706503)))

(declare-fun b!7967759 () Bool)

(assert (=> b!7967759 (= e!4698274 0)))

(declare-fun b!7967760 () Bool)

(assert (=> b!7967760 (= e!4698274 (+ 1 (size!43453 (t!390489 lt!2706267))))))

(assert (= (and d!2379419 c!1463291) b!7967759))

(assert (= (and d!2379419 (not c!1463291)) b!7967760))

(declare-fun m!8346920 () Bool)

(assert (=> b!7967760 m!8346920))

(assert (=> b!7967223 d!2379419))

(assert (=> b!7967223 d!2379299))

(declare-fun d!2379421 () Bool)

(declare-fun lt!2706504 () Int)

(assert (=> d!2379421 (>= lt!2706504 0)))

(declare-fun e!4698275 () Int)

(assert (=> d!2379421 (= lt!2706504 e!4698275)))

(declare-fun c!1463292 () Bool)

(assert (=> d!2379421 (= c!1463292 ((_ is Nil!74622) (Cons!74622 lt!2706223 Nil!74622)))))

(assert (=> d!2379421 (= (size!43453 (Cons!74622 lt!2706223 Nil!74622)) lt!2706504)))

(declare-fun b!7967761 () Bool)

(assert (=> b!7967761 (= e!4698275 0)))

(declare-fun b!7967762 () Bool)

(assert (=> b!7967762 (= e!4698275 (+ 1 (size!43453 (t!390489 (Cons!74622 lt!2706223 Nil!74622)))))))

(assert (= (and d!2379421 c!1463292) b!7967761))

(assert (= (and d!2379421 (not c!1463292)) b!7967762))

(declare-fun m!8346922 () Bool)

(assert (=> b!7967762 m!8346922))

(assert (=> b!7967223 d!2379421))

(assert (=> d!2379325 d!2379289))

(assert (=> d!2379325 d!2379273))

(assert (=> d!2379325 d!2379323))

(declare-fun d!2379423 () Bool)

(assert (=> d!2379423 (= (derivative!703 baseR!116 (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622))) (derivativeStep!6543 r!24602 lt!2706223))))

(assert (=> d!2379423 true))

(declare-fun _$109!66 () Unit!170206)

(assert (=> d!2379423 (= (choose!60067 baseR!116 r!24602 testedP!447 lt!2706223) _$109!66)))

(declare-fun bs!1969906 () Bool)

(assert (= bs!1969906 d!2379423))

(assert (=> bs!1969906 m!8346430))

(assert (=> bs!1969906 m!8346430))

(assert (=> bs!1969906 m!8346684))

(assert (=> bs!1969906 m!8346408))

(assert (=> d!2379325 d!2379423))

(declare-fun d!2379431 () Bool)

(declare-fun lt!2706505 () Regex!21517)

(assert (=> d!2379431 (validRegex!11821 lt!2706505)))

(declare-fun e!4698276 () Regex!21517)

(assert (=> d!2379431 (= lt!2706505 e!4698276)))

(declare-fun c!1463294 () Bool)

(assert (=> d!2379431 (= c!1463294 ((_ is Cons!74622) (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622))))))

(assert (=> d!2379431 (validRegex!11821 baseR!116)))

(assert (=> d!2379431 (= (derivative!703 baseR!116 (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622))) lt!2706505)))

(declare-fun b!7967763 () Bool)

(assert (=> b!7967763 (= e!4698276 (derivative!703 (derivativeStep!6543 baseR!116 (h!81070 (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622)))) (t!390489 (++!18387 testedP!447 (Cons!74622 lt!2706223 Nil!74622)))))))

(declare-fun b!7967764 () Bool)

(assert (=> b!7967764 (= e!4698276 baseR!116)))

(assert (= (and d!2379431 c!1463294) b!7967763))

(assert (= (and d!2379431 (not c!1463294)) b!7967764))

(declare-fun m!8346930 () Bool)

(assert (=> d!2379431 m!8346930))

(assert (=> d!2379431 m!8346414))

(declare-fun m!8346932 () Bool)

(assert (=> b!7967763 m!8346932))

(assert (=> b!7967763 m!8346932))

(declare-fun m!8346934 () Bool)

(assert (=> b!7967763 m!8346934))

(assert (=> d!2379325 d!2379431))

(assert (=> bm!739148 d!2379277))

(declare-fun d!2379433 () Bool)

(assert (=> d!2379433 (= (nullable!9616 (reg!21846 baseR!116)) (nullableFct!3796 (reg!21846 baseR!116)))))

(declare-fun bs!1969907 () Bool)

(assert (= bs!1969907 d!2379433))

(declare-fun m!8346936 () Bool)

(assert (=> bs!1969907 m!8346936))

(assert (=> b!7967273 d!2379433))

(assert (=> bm!739147 d!2379271))

(declare-fun bm!739211 () Bool)

(declare-fun call!739217 () Regex!21517)

(declare-fun call!739216 () Regex!21517)

(assert (=> bm!739211 (= call!739217 call!739216)))

(declare-fun c!1463296 () Bool)

(declare-fun c!1463299 () Bool)

(declare-fun c!1463297 () Bool)

(declare-fun bm!739212 () Bool)

(assert (=> bm!739212 (= call!739216 (derivativeStep!6543 (ite c!1463299 (regTwo!43547 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))) (ite c!1463296 (reg!21846 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))) (ite c!1463297 (regTwo!43546 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))) (regOne!43546 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))))) lt!2706223))))

(declare-fun b!7967766 () Bool)

(declare-fun call!739218 () Regex!21517)

(declare-fun e!4698277 () Regex!21517)

(assert (=> b!7967766 (= e!4698277 (Union!21517 (Concat!30516 call!739218 (regTwo!43546 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))) EmptyLang!21517))))

(declare-fun b!7967767 () Bool)

(declare-fun e!4698278 () Regex!21517)

(declare-fun call!739219 () Regex!21517)

(assert (=> b!7967767 (= e!4698278 (Union!21517 call!739219 call!739216))))

(declare-fun bm!739213 () Bool)

(assert (=> bm!739213 (= call!739218 call!739217)))

(declare-fun b!7967768 () Bool)

(declare-fun e!4698280 () Regex!21517)

(declare-fun e!4698279 () Regex!21517)

(assert (=> b!7967768 (= e!4698280 e!4698279)))

(declare-fun c!1463295 () Bool)

(assert (=> b!7967768 (= c!1463295 ((_ is ElementMatch!21517) (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))))))

(declare-fun b!7967769 () Bool)

(assert (=> b!7967769 (= e!4698280 EmptyLang!21517)))

(declare-fun b!7967770 () Bool)

(assert (=> b!7967770 (= c!1463297 (nullable!9616 (regOne!43546 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))))))

(declare-fun e!4698281 () Regex!21517)

(assert (=> b!7967770 (= e!4698281 e!4698277)))

(declare-fun bm!739214 () Bool)

(assert (=> bm!739214 (= call!739219 (derivativeStep!6543 (ite c!1463299 (regOne!43547 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))) (regOne!43546 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))) lt!2706223))))

(declare-fun b!7967765 () Bool)

(assert (=> b!7967765 (= c!1463299 ((_ is Union!21517) (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))))))

(assert (=> b!7967765 (= e!4698279 e!4698278)))

(declare-fun d!2379435 () Bool)

(declare-fun lt!2706506 () Regex!21517)

(assert (=> d!2379435 (validRegex!11821 lt!2706506)))

(assert (=> d!2379435 (= lt!2706506 e!4698280)))

(declare-fun c!1463298 () Bool)

(assert (=> d!2379435 (= c!1463298 (or ((_ is EmptyExpr!21517) (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))) ((_ is EmptyLang!21517) (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))))))

(assert (=> d!2379435 (validRegex!11821 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))))

(assert (=> d!2379435 (= (derivativeStep!6543 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))) lt!2706223) lt!2706506)))

(declare-fun b!7967771 () Bool)

(assert (=> b!7967771 (= e!4698281 (Concat!30516 call!739217 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))))))

(declare-fun b!7967772 () Bool)

(assert (=> b!7967772 (= e!4698278 e!4698281)))

(assert (=> b!7967772 (= c!1463296 ((_ is Star!21517) (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602))))))))

(declare-fun b!7967773 () Bool)

(assert (=> b!7967773 (= e!4698277 (Union!21517 (Concat!30516 call!739219 (regTwo!43546 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))) call!739218))))

(declare-fun b!7967774 () Bool)

(assert (=> b!7967774 (= e!4698279 (ite (= lt!2706223 (c!1463130 (ite c!1463237 (regTwo!43547 r!24602) (ite c!1463234 (reg!21846 r!24602) (ite c!1463235 (regTwo!43546 r!24602) (regOne!43546 r!24602)))))) EmptyExpr!21517 EmptyLang!21517))))

(assert (= (and d!2379435 c!1463298) b!7967769))

(assert (= (and d!2379435 (not c!1463298)) b!7967768))

(assert (= (and b!7967768 c!1463295) b!7967774))

(assert (= (and b!7967768 (not c!1463295)) b!7967765))

(assert (= (and b!7967765 c!1463299) b!7967767))

(assert (= (and b!7967765 (not c!1463299)) b!7967772))

(assert (= (and b!7967772 c!1463296) b!7967771))

(assert (= (and b!7967772 (not c!1463296)) b!7967770))

(assert (= (and b!7967770 c!1463297) b!7967773))

(assert (= (and b!7967770 (not c!1463297)) b!7967766))

(assert (= (or b!7967773 b!7967766) bm!739213))

(assert (= (or b!7967771 bm!739213) bm!739211))

(assert (= (or b!7967767 bm!739211) bm!739212))

(assert (= (or b!7967767 b!7967773) bm!739214))

(declare-fun m!8346938 () Bool)

(assert (=> bm!739212 m!8346938))

(declare-fun m!8346940 () Bool)

(assert (=> b!7967770 m!8346940))

(declare-fun m!8346942 () Bool)

(assert (=> bm!739214 m!8346942))

(declare-fun m!8346944 () Bool)

(assert (=> d!2379435 m!8346944))

(declare-fun m!8346946 () Bool)

(assert (=> d!2379435 m!8346946))

(assert (=> bm!739163 d!2379435))

(declare-fun d!2379437 () Bool)

(declare-fun e!4698283 () Bool)

(assert (=> d!2379437 e!4698283))

(declare-fun res!3157143 () Bool)

(assert (=> d!2379437 (=> (not res!3157143) (not e!4698283))))

(declare-fun lt!2706507 () List!74746)

(assert (=> d!2379437 (= res!3157143 (= (content!15854 lt!2706507) ((_ map or) (content!15854 testedP!447) (content!15854 lt!2706468))))))

(declare-fun e!4698282 () List!74746)

(assert (=> d!2379437 (= lt!2706507 e!4698282)))

(declare-fun c!1463300 () Bool)

(assert (=> d!2379437 (= c!1463300 ((_ is Nil!74622) testedP!447))))

(assert (=> d!2379437 (= (++!18387 testedP!447 lt!2706468) lt!2706507)))

(declare-fun b!7967777 () Bool)

(declare-fun res!3157144 () Bool)

(assert (=> b!7967777 (=> (not res!3157144) (not e!4698283))))

(assert (=> b!7967777 (= res!3157144 (= (size!43453 lt!2706507) (+ (size!43453 testedP!447) (size!43453 lt!2706468))))))

(declare-fun b!7967776 () Bool)

(assert (=> b!7967776 (= e!4698282 (Cons!74622 (h!81070 testedP!447) (++!18387 (t!390489 testedP!447) lt!2706468)))))

(declare-fun b!7967778 () Bool)

(assert (=> b!7967778 (= e!4698283 (or (not (= lt!2706468 Nil!74622)) (= lt!2706507 testedP!447)))))

(declare-fun b!7967775 () Bool)

(assert (=> b!7967775 (= e!4698282 lt!2706468)))

(assert (= (and d!2379437 c!1463300) b!7967775))

(assert (= (and d!2379437 (not c!1463300)) b!7967776))

(assert (= (and d!2379437 res!3157143) b!7967777))

(assert (= (and b!7967777 res!3157144) b!7967778))

(declare-fun m!8346948 () Bool)

(assert (=> d!2379437 m!8346948))

(assert (=> d!2379437 m!8346512))

(declare-fun m!8346950 () Bool)

(assert (=> d!2379437 m!8346950))

(declare-fun m!8346952 () Bool)

(assert (=> b!7967777 m!8346952))

(assert (=> b!7967777 m!8346434))

(declare-fun m!8346954 () Bool)

(assert (=> b!7967777 m!8346954))

(declare-fun m!8346956 () Bool)

(assert (=> b!7967776 m!8346956))

(assert (=> d!2379319 d!2379437))

(assert (=> d!2379319 d!2379307))

(assert (=> d!2379319 d!2379299))

(assert (=> b!7967232 d!2379307))

(assert (=> b!7967232 d!2379299))

(declare-fun b!7967779 () Bool)

(declare-fun e!4698285 () tuple2!70696)

(assert (=> b!7967779 (= e!4698285 (tuple2!70697 lt!2706445 call!739153))))

(declare-fun b!7967780 () Bool)

(declare-fun e!4698284 () tuple2!70696)

(assert (=> b!7967780 (= e!4698284 e!4698285)))

(declare-fun lt!2706517 () tuple2!70696)

(declare-fun call!739227 () tuple2!70696)

(assert (=> b!7967780 (= lt!2706517 call!739227)))

(declare-fun c!1463303 () Bool)

(assert (=> b!7967780 (= c!1463303 (isEmpty!42923 (_1!38651 lt!2706517)))))

(declare-fun b!7967781 () Bool)

(declare-fun c!1463304 () Bool)

(declare-fun call!739223 () Bool)

(assert (=> b!7967781 (= c!1463304 call!739223)))

(declare-fun lt!2706519 () Unit!170206)

(declare-fun lt!2706530 () Unit!170206)

(assert (=> b!7967781 (= lt!2706519 lt!2706530)))

(declare-fun lt!2706535 () C!43372)

(declare-fun lt!2706527 () List!74746)

(assert (=> b!7967781 (= (++!18387 (++!18387 lt!2706445 (Cons!74622 lt!2706535 Nil!74622)) lt!2706527) input!7927)))

(assert (=> b!7967781 (= lt!2706530 (lemmaMoveElementToOtherListKeepsConcatEq!3542 lt!2706445 lt!2706535 lt!2706527 input!7927))))

(assert (=> b!7967781 (= lt!2706527 (tail!15804 call!739153))))

(assert (=> b!7967781 (= lt!2706535 (head!16269 call!739153))))

(declare-fun lt!2706524 () Unit!170206)

(declare-fun lt!2706518 () Unit!170206)

(assert (=> b!7967781 (= lt!2706524 lt!2706518)))

(assert (=> b!7967781 (isPrefix!6617 (++!18387 lt!2706445 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 lt!2706445)) Nil!74622)) input!7927)))

(assert (=> b!7967781 (= lt!2706518 (lemmaAddHeadSuffixToPrefixStillPrefix!1344 lt!2706445 input!7927))))

(declare-fun lt!2706510 () Unit!170206)

(declare-fun lt!2706533 () Unit!170206)

(assert (=> b!7967781 (= lt!2706510 lt!2706533)))

(assert (=> b!7967781 (= lt!2706533 (lemmaAddHeadSuffixToPrefixStillPrefix!1344 lt!2706445 input!7927))))

(declare-fun lt!2706515 () List!74746)

(assert (=> b!7967781 (= lt!2706515 (++!18387 lt!2706445 (Cons!74622 (head!16269 call!739153) Nil!74622)))))

(declare-fun lt!2706512 () Unit!170206)

(declare-fun e!4698290 () Unit!170206)

(assert (=> b!7967781 (= lt!2706512 e!4698290)))

(declare-fun c!1463306 () Bool)

(assert (=> b!7967781 (= c!1463306 (= (size!43453 lt!2706445) (size!43453 input!7927)))))

(declare-fun lt!2706508 () Unit!170206)

(declare-fun lt!2706511 () Unit!170206)

(assert (=> b!7967781 (= lt!2706508 lt!2706511)))

(assert (=> b!7967781 (<= (size!43453 lt!2706445) (size!43453 input!7927))))

(assert (=> b!7967781 (= lt!2706511 (lemmaIsPrefixThenSmallerEqSize!1134 lt!2706445 input!7927))))

(declare-fun e!4698291 () tuple2!70696)

(assert (=> b!7967781 (= e!4698291 e!4698284)))

(declare-fun b!7967782 () Bool)

(declare-fun Unit!170219 () Unit!170206)

(assert (=> b!7967782 (= e!4698290 Unit!170219)))

(declare-fun lt!2706513 () Unit!170206)

(declare-fun call!739221 () Unit!170206)

(assert (=> b!7967782 (= lt!2706513 call!739221)))

(declare-fun call!739220 () Bool)

(assert (=> b!7967782 call!739220))

(declare-fun lt!2706526 () Unit!170206)

(assert (=> b!7967782 (= lt!2706526 lt!2706513)))

(declare-fun lt!2706516 () Unit!170206)

(declare-fun call!739224 () Unit!170206)

(assert (=> b!7967782 (= lt!2706516 call!739224)))

(assert (=> b!7967782 (= input!7927 lt!2706445)))

(declare-fun lt!2706525 () Unit!170206)

(assert (=> b!7967782 (= lt!2706525 lt!2706516)))

(assert (=> b!7967782 false))

(declare-fun bm!739215 () Bool)

(assert (=> bm!739215 (= call!739224 (lemmaIsPrefixSameLengthThenSameList!1665 input!7927 lt!2706445 input!7927))))

(declare-fun bm!739216 () Bool)

(declare-fun call!739226 () C!43372)

(assert (=> bm!739216 (= call!739226 (head!16269 call!739153))))

(declare-fun bm!739217 () Bool)

(assert (=> bm!739217 (= call!739221 (lemmaIsPrefixRefl!4085 input!7927 input!7927))))

(declare-fun d!2379439 () Bool)

(declare-fun e!4698286 () Bool)

(assert (=> d!2379439 e!4698286))

(declare-fun res!3157145 () Bool)

(assert (=> d!2379439 (=> (not res!3157145) (not e!4698286))))

(declare-fun lt!2706520 () tuple2!70696)

(assert (=> d!2379439 (= res!3157145 (= (++!18387 (_1!38651 lt!2706520) (_2!38651 lt!2706520)) input!7927))))

(declare-fun e!4698288 () tuple2!70696)

(assert (=> d!2379439 (= lt!2706520 e!4698288)))

(declare-fun c!1463301 () Bool)

(assert (=> d!2379439 (= c!1463301 (lostCause!1986 call!739156))))

(declare-fun lt!2706521 () Unit!170206)

(declare-fun Unit!170220 () Unit!170206)

(assert (=> d!2379439 (= lt!2706521 Unit!170220)))

(assert (=> d!2379439 (= (getSuffix!3820 input!7927 lt!2706445) call!739153)))

(declare-fun lt!2706534 () Unit!170206)

(declare-fun lt!2706509 () Unit!170206)

(assert (=> d!2379439 (= lt!2706534 lt!2706509)))

(declare-fun lt!2706514 () List!74746)

(assert (=> d!2379439 (= call!739153 lt!2706514)))

(assert (=> d!2379439 (= lt!2706509 (lemmaSamePrefixThenSameSuffix!3002 lt!2706445 call!739153 lt!2706445 lt!2706514 input!7927))))

(assert (=> d!2379439 (= lt!2706514 (getSuffix!3820 input!7927 lt!2706445))))

(declare-fun lt!2706531 () Unit!170206)

(declare-fun lt!2706523 () Unit!170206)

(assert (=> d!2379439 (= lt!2706531 lt!2706523)))

(assert (=> d!2379439 (isPrefix!6617 lt!2706445 (++!18387 lt!2706445 call!739153))))

(assert (=> d!2379439 (= lt!2706523 (lemmaConcatTwoListThenFirstIsPrefix!3864 lt!2706445 call!739153))))

(assert (=> d!2379439 (validRegex!11821 call!739156)))

(assert (=> d!2379439 (= (findLongestMatchInner!2298 call!739156 lt!2706445 (+ lt!2706224 1) call!739153 input!7927 lt!2706229) lt!2706520)))

(declare-fun b!7967783 () Bool)

(declare-fun e!4698287 () Bool)

(assert (=> b!7967783 (= e!4698286 e!4698287)))

(declare-fun res!3157146 () Bool)

(assert (=> b!7967783 (=> res!3157146 e!4698287)))

(assert (=> b!7967783 (= res!3157146 (isEmpty!42923 (_1!38651 lt!2706520)))))

(declare-fun b!7967784 () Bool)

(assert (=> b!7967784 (= e!4698285 lt!2706517)))

(declare-fun bm!739218 () Bool)

(assert (=> bm!739218 (= call!739220 (isPrefix!6617 input!7927 input!7927))))

(declare-fun bm!739219 () Bool)

(declare-fun call!739225 () Regex!21517)

(assert (=> bm!739219 (= call!739225 (derivativeStep!6543 call!739156 call!739226))))

(declare-fun b!7967785 () Bool)

(assert (=> b!7967785 (= e!4698284 call!739227)))

(declare-fun b!7967786 () Bool)

(assert (=> b!7967786 (= e!4698287 (>= (size!43453 (_1!38651 lt!2706520)) (size!43453 lt!2706445)))))

(declare-fun b!7967787 () Bool)

(assert (=> b!7967787 (= e!4698288 e!4698291)))

(declare-fun c!1463305 () Bool)

(assert (=> b!7967787 (= c!1463305 (= (+ lt!2706224 1) lt!2706229))))

(declare-fun call!739222 () List!74746)

(declare-fun bm!739220 () Bool)

(assert (=> bm!739220 (= call!739227 (findLongestMatchInner!2298 call!739225 lt!2706515 (+ lt!2706224 1 1) call!739222 input!7927 lt!2706229))))

(declare-fun b!7967788 () Bool)

(assert (=> b!7967788 (= e!4698288 (tuple2!70697 Nil!74622 input!7927))))

(declare-fun b!7967789 () Bool)

(declare-fun e!4698289 () tuple2!70696)

(assert (=> b!7967789 (= e!4698289 (tuple2!70697 lt!2706445 Nil!74622))))

(declare-fun bm!739221 () Bool)

(assert (=> bm!739221 (= call!739222 (tail!15804 call!739153))))

(declare-fun b!7967790 () Bool)

(declare-fun Unit!170221 () Unit!170206)

(assert (=> b!7967790 (= e!4698290 Unit!170221)))

(declare-fun bm!739222 () Bool)

(assert (=> bm!739222 (= call!739223 (nullable!9616 call!739156))))

(declare-fun b!7967791 () Bool)

(assert (=> b!7967791 (= e!4698289 (tuple2!70697 Nil!74622 input!7927))))

(declare-fun b!7967792 () Bool)

(declare-fun c!1463302 () Bool)

(assert (=> b!7967792 (= c!1463302 call!739223)))

(declare-fun lt!2706532 () Unit!170206)

(declare-fun lt!2706528 () Unit!170206)

(assert (=> b!7967792 (= lt!2706532 lt!2706528)))

(assert (=> b!7967792 (= input!7927 lt!2706445)))

(assert (=> b!7967792 (= lt!2706528 call!739224)))

(declare-fun lt!2706529 () Unit!170206)

(declare-fun lt!2706522 () Unit!170206)

(assert (=> b!7967792 (= lt!2706529 lt!2706522)))

(assert (=> b!7967792 call!739220))

(assert (=> b!7967792 (= lt!2706522 call!739221)))

(assert (=> b!7967792 (= e!4698291 e!4698289)))

(assert (= (and d!2379439 c!1463301) b!7967788))

(assert (= (and d!2379439 (not c!1463301)) b!7967787))

(assert (= (and b!7967787 c!1463305) b!7967792))

(assert (= (and b!7967787 (not c!1463305)) b!7967781))

(assert (= (and b!7967792 c!1463302) b!7967789))

(assert (= (and b!7967792 (not c!1463302)) b!7967791))

(assert (= (and b!7967781 c!1463306) b!7967782))

(assert (= (and b!7967781 (not c!1463306)) b!7967790))

(assert (= (and b!7967781 c!1463304) b!7967780))

(assert (= (and b!7967781 (not c!1463304)) b!7967785))

(assert (= (and b!7967780 c!1463303) b!7967779))

(assert (= (and b!7967780 (not c!1463303)) b!7967784))

(assert (= (or b!7967780 b!7967785) bm!739216))

(assert (= (or b!7967780 b!7967785) bm!739221))

(assert (= (or b!7967780 b!7967785) bm!739219))

(assert (= (or b!7967780 b!7967785) bm!739220))

(assert (= (or b!7967792 b!7967781) bm!739222))

(assert (= (or b!7967792 b!7967782) bm!739215))

(assert (= (or b!7967792 b!7967782) bm!739217))

(assert (= (or b!7967792 b!7967782) bm!739218))

(assert (= (and d!2379439 res!3157145) b!7967783))

(assert (= (and b!7967783 (not res!3157146)) b!7967786))

(assert (=> bm!739218 m!8346418))

(declare-fun m!8346958 () Bool)

(assert (=> b!7967783 m!8346958))

(declare-fun m!8346960 () Bool)

(assert (=> bm!739221 m!8346960))

(assert (=> bm!739217 m!8346416))

(declare-fun m!8346962 () Bool)

(assert (=> bm!739216 m!8346962))

(declare-fun m!8346964 () Bool)

(assert (=> bm!739215 m!8346964))

(declare-fun m!8346966 () Bool)

(assert (=> bm!739220 m!8346966))

(declare-fun m!8346968 () Bool)

(assert (=> b!7967780 m!8346968))

(declare-fun m!8346970 () Bool)

(assert (=> bm!739219 m!8346970))

(assert (=> b!7967781 m!8346960))

(assert (=> b!7967781 m!8346436))

(declare-fun m!8346972 () Bool)

(assert (=> b!7967781 m!8346972))

(declare-fun m!8346974 () Bool)

(assert (=> b!7967781 m!8346974))

(declare-fun m!8346976 () Bool)

(assert (=> b!7967781 m!8346976))

(declare-fun m!8346978 () Bool)

(assert (=> b!7967781 m!8346978))

(assert (=> b!7967781 m!8346974))

(declare-fun m!8346980 () Bool)

(assert (=> b!7967781 m!8346980))

(declare-fun m!8346982 () Bool)

(assert (=> b!7967781 m!8346982))

(declare-fun m!8346984 () Bool)

(assert (=> b!7967781 m!8346984))

(declare-fun m!8346986 () Bool)

(assert (=> b!7967781 m!8346986))

(assert (=> b!7967781 m!8346982))

(declare-fun m!8346989 () Bool)

(assert (=> b!7967781 m!8346989))

(declare-fun m!8346992 () Bool)

(assert (=> b!7967781 m!8346992))

(assert (=> b!7967781 m!8346962))

(assert (=> b!7967781 m!8346986))

(declare-fun m!8346996 () Bool)

(assert (=> b!7967781 m!8346996))

(declare-fun m!8346998 () Bool)

(assert (=> bm!739222 m!8346998))

(assert (=> d!2379439 m!8346982))

(declare-fun m!8347000 () Bool)

(assert (=> d!2379439 m!8347000))

(declare-fun m!8347002 () Bool)

(assert (=> d!2379439 m!8347002))

(declare-fun m!8347004 () Bool)

(assert (=> d!2379439 m!8347004))

(assert (=> d!2379439 m!8347004))

(declare-fun m!8347006 () Bool)

(assert (=> d!2379439 m!8347006))

(declare-fun m!8347008 () Bool)

(assert (=> d!2379439 m!8347008))

(declare-fun m!8347010 () Bool)

(assert (=> d!2379439 m!8347010))

(declare-fun m!8347012 () Bool)

(assert (=> d!2379439 m!8347012))

(declare-fun m!8347014 () Bool)

(assert (=> b!7967786 m!8347014))

(assert (=> b!7967786 m!8346992))

(assert (=> bm!739151 d!2379439))

(declare-fun b!7967798 () Bool)

(declare-fun res!3157152 () Bool)

(declare-fun e!4698296 () Bool)

(assert (=> b!7967798 (=> (not res!3157152) (not e!4698296))))

(assert (=> b!7967798 (= res!3157152 (= (head!16269 (tail!15804 testedP!447)) (head!16269 (tail!15804 input!7927))))))

(declare-fun d!2379443 () Bool)

(declare-fun e!4698295 () Bool)

(assert (=> d!2379443 e!4698295))

(declare-fun res!3157150 () Bool)

(assert (=> d!2379443 (=> res!3157150 e!4698295)))

(declare-fun lt!2706540 () Bool)

(assert (=> d!2379443 (= res!3157150 (not lt!2706540))))

(declare-fun e!4698294 () Bool)

(assert (=> d!2379443 (= lt!2706540 e!4698294)))

(declare-fun res!3157149 () Bool)

(assert (=> d!2379443 (=> res!3157149 e!4698294)))

(assert (=> d!2379443 (= res!3157149 ((_ is Nil!74622) (tail!15804 testedP!447)))))

(assert (=> d!2379443 (= (isPrefix!6617 (tail!15804 testedP!447) (tail!15804 input!7927)) lt!2706540)))

(declare-fun b!7967800 () Bool)

(assert (=> b!7967800 (= e!4698295 (>= (size!43453 (tail!15804 input!7927)) (size!43453 (tail!15804 testedP!447))))))

(declare-fun b!7967797 () Bool)

(assert (=> b!7967797 (= e!4698294 e!4698296)))

(declare-fun res!3157151 () Bool)

(assert (=> b!7967797 (=> (not res!3157151) (not e!4698296))))

(assert (=> b!7967797 (= res!3157151 (not ((_ is Nil!74622) (tail!15804 input!7927))))))

(declare-fun b!7967799 () Bool)

(assert (=> b!7967799 (= e!4698296 (isPrefix!6617 (tail!15804 (tail!15804 testedP!447)) (tail!15804 (tail!15804 input!7927))))))

(assert (= (and d!2379443 (not res!3157149)) b!7967797))

(assert (= (and b!7967797 res!3157151) b!7967798))

(assert (= (and b!7967798 res!3157152) b!7967799))

(assert (= (and d!2379443 (not res!3157150)) b!7967800))

(assert (=> b!7967798 m!8346542))

(declare-fun m!8347016 () Bool)

(assert (=> b!7967798 m!8347016))

(assert (=> b!7967798 m!8346494))

(assert (=> b!7967798 m!8346752))

(assert (=> b!7967800 m!8346494))

(assert (=> b!7967800 m!8346754))

(assert (=> b!7967800 m!8346542))

(declare-fun m!8347018 () Bool)

(assert (=> b!7967800 m!8347018))

(assert (=> b!7967799 m!8346542))

(declare-fun m!8347020 () Bool)

(assert (=> b!7967799 m!8347020))

(assert (=> b!7967799 m!8346494))

(assert (=> b!7967799 m!8346756))

(assert (=> b!7967799 m!8347020))

(assert (=> b!7967799 m!8346756))

(declare-fun m!8347022 () Bool)

(assert (=> b!7967799 m!8347022))

(assert (=> b!7967231 d!2379443))

(declare-fun d!2379445 () Bool)

(assert (=> d!2379445 (= (tail!15804 testedP!447) (t!390489 testedP!447))))

(assert (=> b!7967231 d!2379445))

(assert (=> b!7967231 d!2379355))

(assert (=> d!2379263 d!2379383))

(declare-fun d!2379447 () Bool)

(assert (=> d!2379447 (isPrefix!6617 (++!18387 testedP!447 (Cons!74622 (head!16269 (getSuffix!3820 input!7927 testedP!447)) Nil!74622)) input!7927)))

(assert (=> d!2379447 true))

(declare-fun _$65!1961 () Unit!170206)

(assert (=> d!2379447 (= (choose!60064 testedP!447 input!7927) _$65!1961)))

(declare-fun bs!1969909 () Bool)

(assert (= bs!1969909 d!2379447))

(assert (=> bs!1969909 m!8346440))

(assert (=> bs!1969909 m!8346440))

(assert (=> bs!1969909 m!8346478))

(assert (=> bs!1969909 m!8346482))

(assert (=> bs!1969909 m!8346482))

(assert (=> bs!1969909 m!8346484))

(assert (=> d!2379263 d!2379447))

(assert (=> d!2379263 d!2379367))

(assert (=> d!2379263 d!2379385))

(assert (=> d!2379263 d!2379285))

(assert (=> d!2379263 d!2379319))

(declare-fun d!2379453 () Bool)

(declare-fun lt!2706543 () Int)

(assert (=> d!2379453 (>= lt!2706543 0)))

(declare-fun e!4698302 () Int)

(assert (=> d!2379453 (= lt!2706543 e!4698302)))

(declare-fun c!1463309 () Bool)

(assert (=> d!2379453 (= c!1463309 ((_ is Nil!74622) (t!390489 input!7927)))))

(assert (=> d!2379453 (= (size!43453 (t!390489 input!7927)) lt!2706543)))

(declare-fun b!7967809 () Bool)

(assert (=> b!7967809 (= e!4698302 0)))

(declare-fun b!7967810 () Bool)

(assert (=> b!7967810 (= e!4698302 (+ 1 (size!43453 (t!390489 (t!390489 input!7927)))))))

(assert (= (and d!2379453 c!1463309) b!7967809))

(assert (= (and d!2379453 (not c!1463309)) b!7967810))

(declare-fun m!8347054 () Bool)

(assert (=> b!7967810 m!8347054))

(assert (=> b!7967295 d!2379453))

(declare-fun bm!739223 () Bool)

(declare-fun call!739229 () Regex!21517)

(declare-fun call!739228 () Regex!21517)

(assert (=> bm!739223 (= call!739229 call!739228)))

(declare-fun bm!739224 () Bool)

(declare-fun c!1463314 () Bool)

(declare-fun c!1463312 () Bool)

(declare-fun c!1463311 () Bool)

(assert (=> bm!739224 (= call!739228 (derivativeStep!6543 (ite c!1463314 (regTwo!43547 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))) (ite c!1463311 (reg!21846 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))) (ite c!1463312 (regTwo!43546 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))) (regOne!43546 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))))) lt!2706223))))

(declare-fun b!7967812 () Bool)

(declare-fun e!4698303 () Regex!21517)

(declare-fun call!739230 () Regex!21517)

(assert (=> b!7967812 (= e!4698303 (Union!21517 (Concat!30516 call!739230 (regTwo!43546 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))) EmptyLang!21517))))

(declare-fun b!7967813 () Bool)

(declare-fun e!4698304 () Regex!21517)

(declare-fun call!739231 () Regex!21517)

(assert (=> b!7967813 (= e!4698304 (Union!21517 call!739231 call!739228))))

(declare-fun bm!739225 () Bool)

(assert (=> bm!739225 (= call!739230 call!739229)))

(declare-fun b!7967814 () Bool)

(declare-fun e!4698306 () Regex!21517)

(declare-fun e!4698305 () Regex!21517)

(assert (=> b!7967814 (= e!4698306 e!4698305)))

(declare-fun c!1463310 () Bool)

(assert (=> b!7967814 (= c!1463310 ((_ is ElementMatch!21517) (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))))))

(declare-fun b!7967815 () Bool)

(assert (=> b!7967815 (= e!4698306 EmptyLang!21517)))

(declare-fun b!7967816 () Bool)

(assert (=> b!7967816 (= c!1463312 (nullable!9616 (regOne!43546 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))))))

(declare-fun e!4698307 () Regex!21517)

(assert (=> b!7967816 (= e!4698307 e!4698303)))

(declare-fun bm!739226 () Bool)

(assert (=> bm!739226 (= call!739231 (derivativeStep!6543 (ite c!1463314 (regOne!43547 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))) (regOne!43546 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))) lt!2706223))))

(declare-fun b!7967811 () Bool)

(assert (=> b!7967811 (= c!1463314 ((_ is Union!21517) (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))))))

(assert (=> b!7967811 (= e!4698305 e!4698304)))

(declare-fun d!2379455 () Bool)

(declare-fun lt!2706544 () Regex!21517)

(assert (=> d!2379455 (validRegex!11821 lt!2706544)))

(assert (=> d!2379455 (= lt!2706544 e!4698306)))

(declare-fun c!1463313 () Bool)

(assert (=> d!2379455 (= c!1463313 (or ((_ is EmptyExpr!21517) (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))) ((_ is EmptyLang!21517) (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))))))

(assert (=> d!2379455 (validRegex!11821 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))))

(assert (=> d!2379455 (= (derivativeStep!6543 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)) lt!2706223) lt!2706544)))

(declare-fun b!7967817 () Bool)

(assert (=> b!7967817 (= e!4698307 (Concat!30516 call!739229 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))))))

(declare-fun b!7967818 () Bool)

(assert (=> b!7967818 (= e!4698304 e!4698307)))

(assert (=> b!7967818 (= c!1463311 ((_ is Star!21517) (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602))))))

(declare-fun b!7967819 () Bool)

(assert (=> b!7967819 (= e!4698303 (Union!21517 (Concat!30516 call!739231 (regTwo!43546 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))) call!739230))))

(declare-fun b!7967820 () Bool)

(assert (=> b!7967820 (= e!4698305 (ite (= lt!2706223 (c!1463130 (ite c!1463237 (regOne!43547 r!24602) (regOne!43546 r!24602)))) EmptyExpr!21517 EmptyLang!21517))))

(assert (= (and d!2379455 c!1463313) b!7967815))

(assert (= (and d!2379455 (not c!1463313)) b!7967814))

(assert (= (and b!7967814 c!1463310) b!7967820))

(assert (= (and b!7967814 (not c!1463310)) b!7967811))

(assert (= (and b!7967811 c!1463314) b!7967813))

(assert (= (and b!7967811 (not c!1463314)) b!7967818))

(assert (= (and b!7967818 c!1463311) b!7967817))

(assert (= (and b!7967818 (not c!1463311)) b!7967816))

(assert (= (and b!7967816 c!1463312) b!7967819))

(assert (= (and b!7967816 (not c!1463312)) b!7967812))

(assert (= (or b!7967819 b!7967812) bm!739225))

(assert (= (or b!7967817 bm!739225) bm!739223))

(assert (= (or b!7967813 bm!739223) bm!739224))

(assert (= (or b!7967813 b!7967819) bm!739226))

(declare-fun m!8347060 () Bool)

(assert (=> bm!739224 m!8347060))

(declare-fun m!8347064 () Bool)

(assert (=> b!7967816 m!8347064))

(declare-fun m!8347068 () Bool)

(assert (=> bm!739226 m!8347068))

(declare-fun m!8347072 () Bool)

(assert (=> d!2379455 m!8347072))

(declare-fun m!8347074 () Bool)

(assert (=> d!2379455 m!8347074))

(assert (=> bm!739165 d!2379455))

(declare-fun d!2379461 () Bool)

(declare-fun lt!2706546 () Regex!21517)

(assert (=> d!2379461 (validRegex!11821 lt!2706546)))

(declare-fun e!4698310 () Regex!21517)

(assert (=> d!2379461 (= lt!2706546 e!4698310)))

(declare-fun c!1463316 () Bool)

(assert (=> d!2379461 (= c!1463316 ((_ is Cons!74622) (t!390489 testedP!447)))))

(assert (=> d!2379461 (validRegex!11821 (derivativeStep!6543 baseR!116 (h!81070 testedP!447)))))

(assert (=> d!2379461 (= (derivative!703 (derivativeStep!6543 baseR!116 (h!81070 testedP!447)) (t!390489 testedP!447)) lt!2706546)))

(declare-fun b!7967825 () Bool)

(assert (=> b!7967825 (= e!4698310 (derivative!703 (derivativeStep!6543 (derivativeStep!6543 baseR!116 (h!81070 testedP!447)) (h!81070 (t!390489 testedP!447))) (t!390489 (t!390489 testedP!447))))))

(declare-fun b!7967826 () Bool)

(assert (=> b!7967826 (= e!4698310 (derivativeStep!6543 baseR!116 (h!81070 testedP!447)))))

(assert (= (and d!2379461 c!1463316) b!7967825))

(assert (= (and d!2379461 (not c!1463316)) b!7967826))

(declare-fun m!8347078 () Bool)

(assert (=> d!2379461 m!8347078))

(assert (=> d!2379461 m!8346468))

(declare-fun m!8347080 () Bool)

(assert (=> d!2379461 m!8347080))

(assert (=> b!7967825 m!8346468))

(declare-fun m!8347082 () Bool)

(assert (=> b!7967825 m!8347082))

(assert (=> b!7967825 m!8347082))

(declare-fun m!8347084 () Bool)

(assert (=> b!7967825 m!8347084))

(assert (=> b!7967167 d!2379461))

(declare-fun bm!739227 () Bool)

(declare-fun call!739233 () Regex!21517)

(declare-fun call!739232 () Regex!21517)

(assert (=> bm!739227 (= call!739233 call!739232)))

(declare-fun c!1463322 () Bool)

(declare-fun bm!739228 () Bool)

(declare-fun c!1463320 () Bool)

(declare-fun c!1463319 () Bool)

(assert (=> bm!739228 (= call!739232 (derivativeStep!6543 (ite c!1463322 (regTwo!43547 baseR!116) (ite c!1463319 (reg!21846 baseR!116) (ite c!1463320 (regTwo!43546 baseR!116) (regOne!43546 baseR!116)))) (h!81070 testedP!447)))))

(declare-fun b!7967832 () Bool)

(declare-fun e!4698313 () Regex!21517)

(declare-fun call!739234 () Regex!21517)

(assert (=> b!7967832 (= e!4698313 (Union!21517 (Concat!30516 call!739234 (regTwo!43546 baseR!116)) EmptyLang!21517))))

(declare-fun b!7967833 () Bool)

(declare-fun e!4698314 () Regex!21517)

(declare-fun call!739235 () Regex!21517)

(assert (=> b!7967833 (= e!4698314 (Union!21517 call!739235 call!739232))))

(declare-fun bm!739229 () Bool)

(assert (=> bm!739229 (= call!739234 call!739233)))

(declare-fun b!7967834 () Bool)

(declare-fun e!4698316 () Regex!21517)

(declare-fun e!4698315 () Regex!21517)

(assert (=> b!7967834 (= e!4698316 e!4698315)))

(declare-fun c!1463318 () Bool)

(assert (=> b!7967834 (= c!1463318 ((_ is ElementMatch!21517) baseR!116))))

(declare-fun b!7967835 () Bool)

(assert (=> b!7967835 (= e!4698316 EmptyLang!21517)))

(declare-fun b!7967836 () Bool)

(assert (=> b!7967836 (= c!1463320 (nullable!9616 (regOne!43546 baseR!116)))))

(declare-fun e!4698317 () Regex!21517)

(assert (=> b!7967836 (= e!4698317 e!4698313)))

(declare-fun bm!739230 () Bool)

(assert (=> bm!739230 (= call!739235 (derivativeStep!6543 (ite c!1463322 (regOne!43547 baseR!116) (regOne!43546 baseR!116)) (h!81070 testedP!447)))))

(declare-fun b!7967831 () Bool)

(assert (=> b!7967831 (= c!1463322 ((_ is Union!21517) baseR!116))))

(assert (=> b!7967831 (= e!4698315 e!4698314)))

(declare-fun d!2379467 () Bool)

(declare-fun lt!2706548 () Regex!21517)

(assert (=> d!2379467 (validRegex!11821 lt!2706548)))

(assert (=> d!2379467 (= lt!2706548 e!4698316)))

(declare-fun c!1463321 () Bool)

(assert (=> d!2379467 (= c!1463321 (or ((_ is EmptyExpr!21517) baseR!116) ((_ is EmptyLang!21517) baseR!116)))))

(assert (=> d!2379467 (validRegex!11821 baseR!116)))

(assert (=> d!2379467 (= (derivativeStep!6543 baseR!116 (h!81070 testedP!447)) lt!2706548)))

(declare-fun b!7967837 () Bool)

(assert (=> b!7967837 (= e!4698317 (Concat!30516 call!739233 baseR!116))))

(declare-fun b!7967838 () Bool)

(assert (=> b!7967838 (= e!4698314 e!4698317)))

(assert (=> b!7967838 (= c!1463319 ((_ is Star!21517) baseR!116))))

(declare-fun b!7967839 () Bool)

(assert (=> b!7967839 (= e!4698313 (Union!21517 (Concat!30516 call!739235 (regTwo!43546 baseR!116)) call!739234))))

(declare-fun b!7967840 () Bool)

(assert (=> b!7967840 (= e!4698315 (ite (= (h!81070 testedP!447) (c!1463130 baseR!116)) EmptyExpr!21517 EmptyLang!21517))))

(assert (= (and d!2379467 c!1463321) b!7967835))

(assert (= (and d!2379467 (not c!1463321)) b!7967834))

(assert (= (and b!7967834 c!1463318) b!7967840))

(assert (= (and b!7967834 (not c!1463318)) b!7967831))

(assert (= (and b!7967831 c!1463322) b!7967833))

(assert (= (and b!7967831 (not c!1463322)) b!7967838))

(assert (= (and b!7967838 c!1463319) b!7967837))

(assert (= (and b!7967838 (not c!1463319)) b!7967836))

(assert (= (and b!7967836 c!1463320) b!7967839))

(assert (= (and b!7967836 (not c!1463320)) b!7967832))

(assert (= (or b!7967839 b!7967832) bm!739229))

(assert (= (or b!7967837 bm!739229) bm!739227))

(assert (= (or b!7967833 bm!739227) bm!739228))

(assert (= (or b!7967833 b!7967839) bm!739230))

(declare-fun m!8347096 () Bool)

(assert (=> bm!739228 m!8347096))

(assert (=> b!7967836 m!8346894))

(declare-fun m!8347098 () Bool)

(assert (=> bm!739230 m!8347098))

(declare-fun m!8347100 () Bool)

(assert (=> d!2379467 m!8347100))

(assert (=> d!2379467 m!8346414))

(assert (=> b!7967167 d!2379467))

(declare-fun d!2379471 () Bool)

(assert (=> d!2379471 (= (nullable!9616 (regOne!43546 r!24602)) (nullableFct!3796 (regOne!43546 r!24602)))))

(declare-fun bs!1969910 () Bool)

(assert (= bs!1969910 d!2379471))

(declare-fun m!8347102 () Bool)

(assert (=> bs!1969910 m!8347102))

(assert (=> b!7967502 d!2379471))

(declare-fun d!2379473 () Bool)

(assert (=> d!2379473 (= (head!16269 testedP!447) (h!81070 testedP!447))))

(assert (=> b!7967230 d!2379473))

(assert (=> b!7967230 d!2379357))

(declare-fun d!2379475 () Bool)

(declare-fun lt!2706549 () Int)

(assert (=> d!2379475 (>= lt!2706549 0)))

(declare-fun e!4698318 () Int)

(assert (=> d!2379475 (= lt!2706549 e!4698318)))

(declare-fun c!1463323 () Bool)

(assert (=> d!2379475 (= c!1463323 ((_ is Nil!74622) (_1!38651 lt!2706450)))))

(assert (=> d!2379475 (= (size!43453 (_1!38651 lt!2706450)) lt!2706549)))

(declare-fun b!7967841 () Bool)

(assert (=> b!7967841 (= e!4698318 0)))

(declare-fun b!7967842 () Bool)

(assert (=> b!7967842 (= e!4698318 (+ 1 (size!43453 (t!390489 (_1!38651 lt!2706450)))))))

(assert (= (and d!2379475 c!1463323) b!7967841))

(assert (= (and d!2379475 (not c!1463323)) b!7967842))

(declare-fun m!8347104 () Bool)

(assert (=> b!7967842 m!8347104))

(assert (=> b!7967462 d!2379475))

(assert (=> b!7967462 d!2379299))

(assert (=> b!7967202 d!2379307))

(declare-fun d!2379477 () Bool)

(declare-fun lt!2706550 () Int)

(assert (=> d!2379477 (>= lt!2706550 0)))

(declare-fun e!4698319 () Int)

(assert (=> d!2379477 (= lt!2706550 e!4698319)))

(declare-fun c!1463324 () Bool)

(assert (=> d!2379477 (= c!1463324 ((_ is Nil!74622) lt!2706230))))

(assert (=> d!2379477 (= (size!43453 lt!2706230) lt!2706550)))

(declare-fun b!7967843 () Bool)

(assert (=> b!7967843 (= e!4698319 0)))

(declare-fun b!7967844 () Bool)

(assert (=> b!7967844 (= e!4698319 (+ 1 (size!43453 (t!390489 lt!2706230))))))

(assert (= (and d!2379477 c!1463324) b!7967843))

(assert (= (and d!2379477 (not c!1463324)) b!7967844))

(declare-fun m!8347106 () Bool)

(assert (=> b!7967844 m!8347106))

(assert (=> b!7967202 d!2379477))

(declare-fun d!2379479 () Bool)

(declare-fun lt!2706551 () List!74746)

(assert (=> d!2379479 (= (++!18387 (t!390489 testedP!447) lt!2706551) (tail!15804 input!7927))))

(declare-fun e!4698320 () List!74746)

(assert (=> d!2379479 (= lt!2706551 e!4698320)))

(declare-fun c!1463325 () Bool)

(assert (=> d!2379479 (= c!1463325 ((_ is Cons!74622) (t!390489 testedP!447)))))

(assert (=> d!2379479 (>= (size!43453 (tail!15804 input!7927)) (size!43453 (t!390489 testedP!447)))))

(assert (=> d!2379479 (= (getSuffix!3820 (tail!15804 input!7927) (t!390489 testedP!447)) lt!2706551)))

(declare-fun b!7967845 () Bool)

(assert (=> b!7967845 (= e!4698320 (getSuffix!3820 (tail!15804 (tail!15804 input!7927)) (t!390489 (t!390489 testedP!447))))))

(declare-fun b!7967846 () Bool)

(assert (=> b!7967846 (= e!4698320 (tail!15804 input!7927))))

(assert (= (and d!2379479 c!1463325) b!7967845))

(assert (= (and d!2379479 (not c!1463325)) b!7967846))

(declare-fun m!8347108 () Bool)

(assert (=> d!2379479 m!8347108))

(assert (=> d!2379479 m!8346494))

(assert (=> d!2379479 m!8346754))

(assert (=> d!2379479 m!8346576))

(assert (=> b!7967845 m!8346494))

(assert (=> b!7967845 m!8346756))

(assert (=> b!7967845 m!8346756))

(declare-fun m!8347110 () Bool)

(assert (=> b!7967845 m!8347110))

(assert (=> b!7967473 d!2379479))

(assert (=> b!7967473 d!2379355))

(assert (=> d!2379251 d!2379299))

(assert (=> d!2379251 d!2379307))

(declare-fun d!2379481 () Bool)

(assert (=> d!2379481 (<= (size!43453 testedP!447) (size!43453 input!7927))))

(assert (=> d!2379481 true))

(declare-fun _$64!934 () Unit!170206)

(assert (=> d!2379481 (= (choose!60063 testedP!447 input!7927) _$64!934)))

(declare-fun bs!1969911 () Bool)

(assert (= bs!1969911 d!2379481))

(assert (=> bs!1969911 m!8346434))

(assert (=> bs!1969911 m!8346436))

(assert (=> d!2379251 d!2379481))

(assert (=> d!2379251 d!2379285))

(declare-fun b!7967848 () Bool)

(declare-fun res!3157166 () Bool)

(declare-fun e!4698323 () Bool)

(assert (=> b!7967848 (=> (not res!3157166) (not e!4698323))))

(assert (=> b!7967848 (= res!3157166 (= (head!16269 (tail!15804 lt!2706230)) (head!16269 (tail!15804 input!7927))))))

(declare-fun d!2379483 () Bool)

(declare-fun e!4698322 () Bool)

(assert (=> d!2379483 e!4698322))

(declare-fun res!3157164 () Bool)

(assert (=> d!2379483 (=> res!3157164 e!4698322)))

(declare-fun lt!2706552 () Bool)

(assert (=> d!2379483 (= res!3157164 (not lt!2706552))))

(declare-fun e!4698321 () Bool)

(assert (=> d!2379483 (= lt!2706552 e!4698321)))

(declare-fun res!3157163 () Bool)

(assert (=> d!2379483 (=> res!3157163 e!4698321)))

(assert (=> d!2379483 (= res!3157163 ((_ is Nil!74622) (tail!15804 lt!2706230)))))

(assert (=> d!2379483 (= (isPrefix!6617 (tail!15804 lt!2706230) (tail!15804 input!7927)) lt!2706552)))

(declare-fun b!7967850 () Bool)

(assert (=> b!7967850 (= e!4698322 (>= (size!43453 (tail!15804 input!7927)) (size!43453 (tail!15804 lt!2706230))))))

(declare-fun b!7967847 () Bool)

(assert (=> b!7967847 (= e!4698321 e!4698323)))

(declare-fun res!3157165 () Bool)

(assert (=> b!7967847 (=> (not res!3157165) (not e!4698323))))

(assert (=> b!7967847 (= res!3157165 (not ((_ is Nil!74622) (tail!15804 input!7927))))))

(declare-fun b!7967849 () Bool)

(assert (=> b!7967849 (= e!4698323 (isPrefix!6617 (tail!15804 (tail!15804 lt!2706230)) (tail!15804 (tail!15804 input!7927))))))

(assert (= (and d!2379483 (not res!3157163)) b!7967847))

(assert (= (and b!7967847 res!3157165) b!7967848))

(assert (= (and b!7967848 res!3157166) b!7967849))

(assert (= (and d!2379483 (not res!3157164)) b!7967850))

(assert (=> b!7967848 m!8346492))

(declare-fun m!8347112 () Bool)

(assert (=> b!7967848 m!8347112))

(assert (=> b!7967848 m!8346494))

(assert (=> b!7967848 m!8346752))

(assert (=> b!7967850 m!8346494))

(assert (=> b!7967850 m!8346754))

(assert (=> b!7967850 m!8346492))

(declare-fun m!8347114 () Bool)

(assert (=> b!7967850 m!8347114))

(assert (=> b!7967849 m!8346492))

(declare-fun m!8347116 () Bool)

(assert (=> b!7967849 m!8347116))

(assert (=> b!7967849 m!8346494))

(assert (=> b!7967849 m!8346756))

(assert (=> b!7967849 m!8347116))

(assert (=> b!7967849 m!8346756))

(declare-fun m!8347118 () Bool)

(assert (=> b!7967849 m!8347118))

(assert (=> b!7967201 d!2379483))

(declare-fun d!2379485 () Bool)

(assert (=> d!2379485 (= (tail!15804 lt!2706230) (t!390489 lt!2706230))))

(assert (=> b!7967201 d!2379485))

(assert (=> b!7967201 d!2379355))

(declare-fun b!7967852 () Bool)

(declare-fun e!4698324 () Bool)

(declare-fun tp!2374778 () Bool)

(declare-fun tp!2374777 () Bool)

(assert (=> b!7967852 (= e!4698324 (and tp!2374778 tp!2374777))))

(declare-fun b!7967854 () Bool)

(declare-fun tp!2374775 () Bool)

(declare-fun tp!2374779 () Bool)

(assert (=> b!7967854 (= e!4698324 (and tp!2374775 tp!2374779))))

(declare-fun b!7967853 () Bool)

(declare-fun tp!2374776 () Bool)

(assert (=> b!7967853 (= e!4698324 tp!2374776)))

(declare-fun b!7967851 () Bool)

(assert (=> b!7967851 (= e!4698324 tp_is_empty!53577)))

(assert (=> b!7967529 (= tp!2374729 e!4698324)))

(assert (= (and b!7967529 ((_ is ElementMatch!21517) (regOne!43547 (regOne!43546 r!24602)))) b!7967851))

(assert (= (and b!7967529 ((_ is Concat!30516) (regOne!43547 (regOne!43546 r!24602)))) b!7967852))

(assert (= (and b!7967529 ((_ is Star!21517) (regOne!43547 (regOne!43546 r!24602)))) b!7967853))

(assert (= (and b!7967529 ((_ is Union!21517) (regOne!43547 (regOne!43546 r!24602)))) b!7967854))

(declare-fun b!7967860 () Bool)

(declare-fun e!4698329 () Bool)

(declare-fun tp!2374783 () Bool)

(declare-fun tp!2374782 () Bool)

(assert (=> b!7967860 (= e!4698329 (and tp!2374783 tp!2374782))))

(declare-fun b!7967862 () Bool)

(declare-fun tp!2374780 () Bool)

(declare-fun tp!2374784 () Bool)

(assert (=> b!7967862 (= e!4698329 (and tp!2374780 tp!2374784))))

(declare-fun b!7967861 () Bool)

(declare-fun tp!2374781 () Bool)

(assert (=> b!7967861 (= e!4698329 tp!2374781)))

(declare-fun b!7967859 () Bool)

(assert (=> b!7967859 (= e!4698329 tp_is_empty!53577)))

(assert (=> b!7967529 (= tp!2374733 e!4698329)))

(assert (= (and b!7967529 ((_ is ElementMatch!21517) (regTwo!43547 (regOne!43546 r!24602)))) b!7967859))

(assert (= (and b!7967529 ((_ is Concat!30516) (regTwo!43547 (regOne!43546 r!24602)))) b!7967860))

(assert (= (and b!7967529 ((_ is Star!21517) (regTwo!43547 (regOne!43546 r!24602)))) b!7967861))

(assert (= (and b!7967529 ((_ is Union!21517) (regTwo!43547 (regOne!43546 r!24602)))) b!7967862))

(declare-fun b!7967868 () Bool)

(declare-fun e!4698332 () Bool)

(declare-fun tp!2374788 () Bool)

(declare-fun tp!2374787 () Bool)

(assert (=> b!7967868 (= e!4698332 (and tp!2374788 tp!2374787))))

(declare-fun b!7967870 () Bool)

(declare-fun tp!2374785 () Bool)

(declare-fun tp!2374789 () Bool)

(assert (=> b!7967870 (= e!4698332 (and tp!2374785 tp!2374789))))

(declare-fun b!7967869 () Bool)

(declare-fun tp!2374786 () Bool)

(assert (=> b!7967869 (= e!4698332 tp!2374786)))

(declare-fun b!7967867 () Bool)

(assert (=> b!7967867 (= e!4698332 tp_is_empty!53577)))

(assert (=> b!7967528 (= tp!2374730 e!4698332)))

(assert (= (and b!7967528 ((_ is ElementMatch!21517) (reg!21846 (regOne!43546 r!24602)))) b!7967867))

(assert (= (and b!7967528 ((_ is Concat!30516) (reg!21846 (regOne!43546 r!24602)))) b!7967868))

(assert (= (and b!7967528 ((_ is Star!21517) (reg!21846 (regOne!43546 r!24602)))) b!7967869))

(assert (= (and b!7967528 ((_ is Union!21517) (reg!21846 (regOne!43546 r!24602)))) b!7967870))

(declare-fun b!7967876 () Bool)

(declare-fun e!4698337 () Bool)

(declare-fun tp!2374793 () Bool)

(declare-fun tp!2374792 () Bool)

(assert (=> b!7967876 (= e!4698337 (and tp!2374793 tp!2374792))))

(declare-fun b!7967878 () Bool)

(declare-fun tp!2374790 () Bool)

(declare-fun tp!2374794 () Bool)

(assert (=> b!7967878 (= e!4698337 (and tp!2374790 tp!2374794))))

(declare-fun b!7967877 () Bool)

(declare-fun tp!2374791 () Bool)

(assert (=> b!7967877 (= e!4698337 tp!2374791)))

(declare-fun b!7967875 () Bool)

(assert (=> b!7967875 (= e!4698337 tp_is_empty!53577)))

(assert (=> b!7967554 (= tp!2374760 e!4698337)))

(assert (= (and b!7967554 ((_ is ElementMatch!21517) (regOne!43547 (reg!21846 baseR!116)))) b!7967875))

(assert (= (and b!7967554 ((_ is Concat!30516) (regOne!43547 (reg!21846 baseR!116)))) b!7967876))

(assert (= (and b!7967554 ((_ is Star!21517) (regOne!43547 (reg!21846 baseR!116)))) b!7967877))

(assert (= (and b!7967554 ((_ is Union!21517) (regOne!43547 (reg!21846 baseR!116)))) b!7967878))

(declare-fun b!7967882 () Bool)

(declare-fun e!4698340 () Bool)

(declare-fun tp!2374798 () Bool)

(declare-fun tp!2374797 () Bool)

(assert (=> b!7967882 (= e!4698340 (and tp!2374798 tp!2374797))))

(declare-fun b!7967884 () Bool)

(declare-fun tp!2374795 () Bool)

(declare-fun tp!2374799 () Bool)

(assert (=> b!7967884 (= e!4698340 (and tp!2374795 tp!2374799))))

(declare-fun b!7967883 () Bool)

(declare-fun tp!2374796 () Bool)

(assert (=> b!7967883 (= e!4698340 tp!2374796)))

(declare-fun b!7967881 () Bool)

(assert (=> b!7967881 (= e!4698340 tp_is_empty!53577)))

(assert (=> b!7967554 (= tp!2374764 e!4698340)))

(assert (= (and b!7967554 ((_ is ElementMatch!21517) (regTwo!43547 (reg!21846 baseR!116)))) b!7967881))

(assert (= (and b!7967554 ((_ is Concat!30516) (regTwo!43547 (reg!21846 baseR!116)))) b!7967882))

(assert (= (and b!7967554 ((_ is Star!21517) (regTwo!43547 (reg!21846 baseR!116)))) b!7967883))

(assert (= (and b!7967554 ((_ is Union!21517) (regTwo!43547 (reg!21846 baseR!116)))) b!7967884))

(declare-fun b!7967886 () Bool)

(declare-fun e!4698341 () Bool)

(declare-fun tp!2374803 () Bool)

(declare-fun tp!2374802 () Bool)

(assert (=> b!7967886 (= e!4698341 (and tp!2374803 tp!2374802))))

(declare-fun b!7967888 () Bool)

(declare-fun tp!2374800 () Bool)

(declare-fun tp!2374804 () Bool)

(assert (=> b!7967888 (= e!4698341 (and tp!2374800 tp!2374804))))

(declare-fun b!7967887 () Bool)

(declare-fun tp!2374801 () Bool)

(assert (=> b!7967887 (= e!4698341 tp!2374801)))

(declare-fun b!7967885 () Bool)

(assert (=> b!7967885 (= e!4698341 tp_is_empty!53577)))

(assert (=> b!7967537 (= tp!2374739 e!4698341)))

(assert (= (and b!7967537 ((_ is ElementMatch!21517) (regOne!43547 (regOne!43547 r!24602)))) b!7967885))

(assert (= (and b!7967537 ((_ is Concat!30516) (regOne!43547 (regOne!43547 r!24602)))) b!7967886))

(assert (= (and b!7967537 ((_ is Star!21517) (regOne!43547 (regOne!43547 r!24602)))) b!7967887))

(assert (= (and b!7967537 ((_ is Union!21517) (regOne!43547 (regOne!43547 r!24602)))) b!7967888))

(declare-fun b!7967890 () Bool)

(declare-fun e!4698342 () Bool)

(declare-fun tp!2374808 () Bool)

(declare-fun tp!2374807 () Bool)

(assert (=> b!7967890 (= e!4698342 (and tp!2374808 tp!2374807))))

(declare-fun b!7967892 () Bool)

(declare-fun tp!2374805 () Bool)

(declare-fun tp!2374809 () Bool)

(assert (=> b!7967892 (= e!4698342 (and tp!2374805 tp!2374809))))

(declare-fun b!7967891 () Bool)

(declare-fun tp!2374806 () Bool)

(assert (=> b!7967891 (= e!4698342 tp!2374806)))

(declare-fun b!7967889 () Bool)

(assert (=> b!7967889 (= e!4698342 tp_is_empty!53577)))

(assert (=> b!7967537 (= tp!2374743 e!4698342)))

(assert (= (and b!7967537 ((_ is ElementMatch!21517) (regTwo!43547 (regOne!43547 r!24602)))) b!7967889))

(assert (= (and b!7967537 ((_ is Concat!30516) (regTwo!43547 (regOne!43547 r!24602)))) b!7967890))

(assert (= (and b!7967537 ((_ is Star!21517) (regTwo!43547 (regOne!43547 r!24602)))) b!7967891))

(assert (= (and b!7967537 ((_ is Union!21517) (regTwo!43547 (regOne!43547 r!24602)))) b!7967892))

(declare-fun b!7967894 () Bool)

(declare-fun e!4698343 () Bool)

(declare-fun tp!2374813 () Bool)

(declare-fun tp!2374812 () Bool)

(assert (=> b!7967894 (= e!4698343 (and tp!2374813 tp!2374812))))

(declare-fun b!7967896 () Bool)

(declare-fun tp!2374810 () Bool)

(declare-fun tp!2374814 () Bool)

(assert (=> b!7967896 (= e!4698343 (and tp!2374810 tp!2374814))))

(declare-fun b!7967895 () Bool)

(declare-fun tp!2374811 () Bool)

(assert (=> b!7967895 (= e!4698343 tp!2374811)))

(declare-fun b!7967893 () Bool)

(assert (=> b!7967893 (= e!4698343 tp_is_empty!53577)))

(assert (=> b!7967562 (= tp!2374770 e!4698343)))

(assert (= (and b!7967562 ((_ is ElementMatch!21517) (regOne!43547 (regTwo!43546 baseR!116)))) b!7967893))

(assert (= (and b!7967562 ((_ is Concat!30516) (regOne!43547 (regTwo!43546 baseR!116)))) b!7967894))

(assert (= (and b!7967562 ((_ is Star!21517) (regOne!43547 (regTwo!43546 baseR!116)))) b!7967895))

(assert (= (and b!7967562 ((_ is Union!21517) (regOne!43547 (regTwo!43546 baseR!116)))) b!7967896))

(declare-fun b!7967898 () Bool)

(declare-fun e!4698344 () Bool)

(declare-fun tp!2374818 () Bool)

(declare-fun tp!2374817 () Bool)

(assert (=> b!7967898 (= e!4698344 (and tp!2374818 tp!2374817))))

(declare-fun b!7967900 () Bool)

(declare-fun tp!2374815 () Bool)

(declare-fun tp!2374819 () Bool)

(assert (=> b!7967900 (= e!4698344 (and tp!2374815 tp!2374819))))

(declare-fun b!7967899 () Bool)

(declare-fun tp!2374816 () Bool)

(assert (=> b!7967899 (= e!4698344 tp!2374816)))

(declare-fun b!7967897 () Bool)

(assert (=> b!7967897 (= e!4698344 tp_is_empty!53577)))

(assert (=> b!7967562 (= tp!2374774 e!4698344)))

(assert (= (and b!7967562 ((_ is ElementMatch!21517) (regTwo!43547 (regTwo!43546 baseR!116)))) b!7967897))

(assert (= (and b!7967562 ((_ is Concat!30516) (regTwo!43547 (regTwo!43546 baseR!116)))) b!7967898))

(assert (= (and b!7967562 ((_ is Star!21517) (regTwo!43547 (regTwo!43546 baseR!116)))) b!7967899))

(assert (= (and b!7967562 ((_ is Union!21517) (regTwo!43547 (regTwo!43546 baseR!116)))) b!7967900))

(declare-fun b!7967902 () Bool)

(declare-fun e!4698345 () Bool)

(declare-fun tp!2374823 () Bool)

(declare-fun tp!2374822 () Bool)

(assert (=> b!7967902 (= e!4698345 (and tp!2374823 tp!2374822))))

(declare-fun b!7967904 () Bool)

(declare-fun tp!2374820 () Bool)

(declare-fun tp!2374824 () Bool)

(assert (=> b!7967904 (= e!4698345 (and tp!2374820 tp!2374824))))

(declare-fun b!7967903 () Bool)

(declare-fun tp!2374821 () Bool)

(assert (=> b!7967903 (= e!4698345 tp!2374821)))

(declare-fun b!7967901 () Bool)

(assert (=> b!7967901 (= e!4698345 tp_is_empty!53577)))

(assert (=> b!7967536 (= tp!2374740 e!4698345)))

(assert (= (and b!7967536 ((_ is ElementMatch!21517) (reg!21846 (regOne!43547 r!24602)))) b!7967901))

(assert (= (and b!7967536 ((_ is Concat!30516) (reg!21846 (regOne!43547 r!24602)))) b!7967902))

(assert (= (and b!7967536 ((_ is Star!21517) (reg!21846 (regOne!43547 r!24602)))) b!7967903))

(assert (= (and b!7967536 ((_ is Union!21517) (reg!21846 (regOne!43547 r!24602)))) b!7967904))

(declare-fun b!7967906 () Bool)

(declare-fun e!4698346 () Bool)

(declare-fun tp!2374828 () Bool)

(declare-fun tp!2374827 () Bool)

(assert (=> b!7967906 (= e!4698346 (and tp!2374828 tp!2374827))))

(declare-fun b!7967908 () Bool)

(declare-fun tp!2374825 () Bool)

(declare-fun tp!2374829 () Bool)

(assert (=> b!7967908 (= e!4698346 (and tp!2374825 tp!2374829))))

(declare-fun b!7967907 () Bool)

(declare-fun tp!2374826 () Bool)

(assert (=> b!7967907 (= e!4698346 tp!2374826)))

(declare-fun b!7967905 () Bool)

(assert (=> b!7967905 (= e!4698346 tp_is_empty!53577)))

(assert (=> b!7967527 (= tp!2374732 e!4698346)))

(assert (= (and b!7967527 ((_ is ElementMatch!21517) (regOne!43546 (regOne!43546 r!24602)))) b!7967905))

(assert (= (and b!7967527 ((_ is Concat!30516) (regOne!43546 (regOne!43546 r!24602)))) b!7967906))

(assert (= (and b!7967527 ((_ is Star!21517) (regOne!43546 (regOne!43546 r!24602)))) b!7967907))

(assert (= (and b!7967527 ((_ is Union!21517) (regOne!43546 (regOne!43546 r!24602)))) b!7967908))

(declare-fun b!7967910 () Bool)

(declare-fun e!4698347 () Bool)

(declare-fun tp!2374833 () Bool)

(declare-fun tp!2374832 () Bool)

(assert (=> b!7967910 (= e!4698347 (and tp!2374833 tp!2374832))))

(declare-fun b!7967912 () Bool)

(declare-fun tp!2374830 () Bool)

(declare-fun tp!2374834 () Bool)

(assert (=> b!7967912 (= e!4698347 (and tp!2374830 tp!2374834))))

(declare-fun b!7967911 () Bool)

(declare-fun tp!2374831 () Bool)

(assert (=> b!7967911 (= e!4698347 tp!2374831)))

(declare-fun b!7967909 () Bool)

(assert (=> b!7967909 (= e!4698347 tp_is_empty!53577)))

(assert (=> b!7967527 (= tp!2374731 e!4698347)))

(assert (= (and b!7967527 ((_ is ElementMatch!21517) (regTwo!43546 (regOne!43546 r!24602)))) b!7967909))

(assert (= (and b!7967527 ((_ is Concat!30516) (regTwo!43546 (regOne!43546 r!24602)))) b!7967910))

(assert (= (and b!7967527 ((_ is Star!21517) (regTwo!43546 (regOne!43546 r!24602)))) b!7967911))

(assert (= (and b!7967527 ((_ is Union!21517) (regTwo!43546 (regOne!43546 r!24602)))) b!7967912))

(declare-fun b!7967914 () Bool)

(declare-fun e!4698348 () Bool)

(declare-fun tp!2374838 () Bool)

(declare-fun tp!2374837 () Bool)

(assert (=> b!7967914 (= e!4698348 (and tp!2374838 tp!2374837))))

(declare-fun b!7967916 () Bool)

(declare-fun tp!2374835 () Bool)

(declare-fun tp!2374839 () Bool)

(assert (=> b!7967916 (= e!4698348 (and tp!2374835 tp!2374839))))

(declare-fun b!7967915 () Bool)

(declare-fun tp!2374836 () Bool)

(assert (=> b!7967915 (= e!4698348 tp!2374836)))

(declare-fun b!7967913 () Bool)

(assert (=> b!7967913 (= e!4698348 tp_is_empty!53577)))

(assert (=> b!7967553 (= tp!2374761 e!4698348)))

(assert (= (and b!7967553 ((_ is ElementMatch!21517) (reg!21846 (reg!21846 baseR!116)))) b!7967913))

(assert (= (and b!7967553 ((_ is Concat!30516) (reg!21846 (reg!21846 baseR!116)))) b!7967914))

(assert (= (and b!7967553 ((_ is Star!21517) (reg!21846 (reg!21846 baseR!116)))) b!7967915))

(assert (= (and b!7967553 ((_ is Union!21517) (reg!21846 (reg!21846 baseR!116)))) b!7967916))

(declare-fun b!7967918 () Bool)

(declare-fun e!4698349 () Bool)

(declare-fun tp!2374843 () Bool)

(declare-fun tp!2374842 () Bool)

(assert (=> b!7967918 (= e!4698349 (and tp!2374843 tp!2374842))))

(declare-fun b!7967920 () Bool)

(declare-fun tp!2374840 () Bool)

(declare-fun tp!2374844 () Bool)

(assert (=> b!7967920 (= e!4698349 (and tp!2374840 tp!2374844))))

(declare-fun b!7967919 () Bool)

(declare-fun tp!2374841 () Bool)

(assert (=> b!7967919 (= e!4698349 tp!2374841)))

(declare-fun b!7967917 () Bool)

(assert (=> b!7967917 (= e!4698349 tp_is_empty!53577)))

(assert (=> b!7967540 (= tp!2374745 e!4698349)))

(assert (= (and b!7967540 ((_ is ElementMatch!21517) (reg!21846 (regTwo!43547 r!24602)))) b!7967917))

(assert (= (and b!7967540 ((_ is Concat!30516) (reg!21846 (regTwo!43547 r!24602)))) b!7967918))

(assert (= (and b!7967540 ((_ is Star!21517) (reg!21846 (regTwo!43547 r!24602)))) b!7967919))

(assert (= (and b!7967540 ((_ is Union!21517) (reg!21846 (regTwo!43547 r!24602)))) b!7967920))

(declare-fun b!7967922 () Bool)

(declare-fun e!4698350 () Bool)

(declare-fun tp!2374848 () Bool)

(declare-fun tp!2374847 () Bool)

(assert (=> b!7967922 (= e!4698350 (and tp!2374848 tp!2374847))))

(declare-fun b!7967924 () Bool)

(declare-fun tp!2374845 () Bool)

(declare-fun tp!2374849 () Bool)

(assert (=> b!7967924 (= e!4698350 (and tp!2374845 tp!2374849))))

(declare-fun b!7967923 () Bool)

(declare-fun tp!2374846 () Bool)

(assert (=> b!7967923 (= e!4698350 tp!2374846)))

(declare-fun b!7967921 () Bool)

(assert (=> b!7967921 (= e!4698350 tp_is_empty!53577)))

(assert (=> b!7967531 (= tp!2374737 e!4698350)))

(assert (= (and b!7967531 ((_ is ElementMatch!21517) (regOne!43546 (regTwo!43546 r!24602)))) b!7967921))

(assert (= (and b!7967531 ((_ is Concat!30516) (regOne!43546 (regTwo!43546 r!24602)))) b!7967922))

(assert (= (and b!7967531 ((_ is Star!21517) (regOne!43546 (regTwo!43546 r!24602)))) b!7967923))

(assert (= (and b!7967531 ((_ is Union!21517) (regOne!43546 (regTwo!43546 r!24602)))) b!7967924))

(declare-fun b!7967926 () Bool)

(declare-fun e!4698351 () Bool)

(declare-fun tp!2374853 () Bool)

(declare-fun tp!2374852 () Bool)

(assert (=> b!7967926 (= e!4698351 (and tp!2374853 tp!2374852))))

(declare-fun b!7967928 () Bool)

(declare-fun tp!2374850 () Bool)

(declare-fun tp!2374854 () Bool)

(assert (=> b!7967928 (= e!4698351 (and tp!2374850 tp!2374854))))

(declare-fun b!7967927 () Bool)

(declare-fun tp!2374851 () Bool)

(assert (=> b!7967927 (= e!4698351 tp!2374851)))

(declare-fun b!7967925 () Bool)

(assert (=> b!7967925 (= e!4698351 tp_is_empty!53577)))

(assert (=> b!7967531 (= tp!2374736 e!4698351)))

(assert (= (and b!7967531 ((_ is ElementMatch!21517) (regTwo!43546 (regTwo!43546 r!24602)))) b!7967925))

(assert (= (and b!7967531 ((_ is Concat!30516) (regTwo!43546 (regTwo!43546 r!24602)))) b!7967926))

(assert (= (and b!7967531 ((_ is Star!21517) (regTwo!43546 (regTwo!43546 r!24602)))) b!7967927))

(assert (= (and b!7967531 ((_ is Union!21517) (regTwo!43546 (regTwo!43546 r!24602)))) b!7967928))

(declare-fun b!7967930 () Bool)

(declare-fun e!4698352 () Bool)

(declare-fun tp!2374858 () Bool)

(declare-fun tp!2374857 () Bool)

(assert (=> b!7967930 (= e!4698352 (and tp!2374858 tp!2374857))))

(declare-fun b!7967932 () Bool)

(declare-fun tp!2374855 () Bool)

(declare-fun tp!2374859 () Bool)

(assert (=> b!7967932 (= e!4698352 (and tp!2374855 tp!2374859))))

(declare-fun b!7967931 () Bool)

(declare-fun tp!2374856 () Bool)

(assert (=> b!7967931 (= e!4698352 tp!2374856)))

(declare-fun b!7967929 () Bool)

(assert (=> b!7967929 (= e!4698352 tp_is_empty!53577)))

(assert (=> b!7967557 (= tp!2374766 e!4698352)))

(assert (= (and b!7967557 ((_ is ElementMatch!21517) (reg!21846 (regOne!43546 baseR!116)))) b!7967929))

(assert (= (and b!7967557 ((_ is Concat!30516) (reg!21846 (regOne!43546 baseR!116)))) b!7967930))

(assert (= (and b!7967557 ((_ is Star!21517) (reg!21846 (regOne!43546 baseR!116)))) b!7967931))

(assert (= (and b!7967557 ((_ is Union!21517) (reg!21846 (regOne!43546 baseR!116)))) b!7967932))

(declare-fun b!7967934 () Bool)

(declare-fun e!4698353 () Bool)

(declare-fun tp!2374863 () Bool)

(declare-fun tp!2374862 () Bool)

(assert (=> b!7967934 (= e!4698353 (and tp!2374863 tp!2374862))))

(declare-fun b!7967936 () Bool)

(declare-fun tp!2374860 () Bool)

(declare-fun tp!2374864 () Bool)

(assert (=> b!7967936 (= e!4698353 (and tp!2374860 tp!2374864))))

(declare-fun b!7967935 () Bool)

(declare-fun tp!2374861 () Bool)

(assert (=> b!7967935 (= e!4698353 tp!2374861)))

(declare-fun b!7967933 () Bool)

(assert (=> b!7967933 (= e!4698353 tp_is_empty!53577)))

(assert (=> b!7967556 (= tp!2374768 e!4698353)))

(assert (= (and b!7967556 ((_ is ElementMatch!21517) (regOne!43546 (regOne!43546 baseR!116)))) b!7967933))

(assert (= (and b!7967556 ((_ is Concat!30516) (regOne!43546 (regOne!43546 baseR!116)))) b!7967934))

(assert (= (and b!7967556 ((_ is Star!21517) (regOne!43546 (regOne!43546 baseR!116)))) b!7967935))

(assert (= (and b!7967556 ((_ is Union!21517) (regOne!43546 (regOne!43546 baseR!116)))) b!7967936))

(declare-fun b!7967938 () Bool)

(declare-fun e!4698354 () Bool)

(declare-fun tp!2374868 () Bool)

(declare-fun tp!2374867 () Bool)

(assert (=> b!7967938 (= e!4698354 (and tp!2374868 tp!2374867))))

(declare-fun b!7967940 () Bool)

(declare-fun tp!2374865 () Bool)

(declare-fun tp!2374869 () Bool)

(assert (=> b!7967940 (= e!4698354 (and tp!2374865 tp!2374869))))

(declare-fun b!7967939 () Bool)

(declare-fun tp!2374866 () Bool)

(assert (=> b!7967939 (= e!4698354 tp!2374866)))

(declare-fun b!7967937 () Bool)

(assert (=> b!7967937 (= e!4698354 tp_is_empty!53577)))

(assert (=> b!7967556 (= tp!2374767 e!4698354)))

(assert (= (and b!7967556 ((_ is ElementMatch!21517) (regTwo!43546 (regOne!43546 baseR!116)))) b!7967937))

(assert (= (and b!7967556 ((_ is Concat!30516) (regTwo!43546 (regOne!43546 baseR!116)))) b!7967938))

(assert (= (and b!7967556 ((_ is Star!21517) (regTwo!43546 (regOne!43546 baseR!116)))) b!7967939))

(assert (= (and b!7967556 ((_ is Union!21517) (regTwo!43546 (regOne!43546 baseR!116)))) b!7967940))

(declare-fun b!7967942 () Bool)

(declare-fun e!4698355 () Bool)

(declare-fun tp!2374873 () Bool)

(declare-fun tp!2374872 () Bool)

(assert (=> b!7967942 (= e!4698355 (and tp!2374873 tp!2374872))))

(declare-fun b!7967944 () Bool)

(declare-fun tp!2374870 () Bool)

(declare-fun tp!2374874 () Bool)

(assert (=> b!7967944 (= e!4698355 (and tp!2374870 tp!2374874))))

(declare-fun b!7967943 () Bool)

(declare-fun tp!2374871 () Bool)

(assert (=> b!7967943 (= e!4698355 tp!2374871)))

(declare-fun b!7967941 () Bool)

(assert (=> b!7967941 (= e!4698355 tp_is_empty!53577)))

(assert (=> b!7967549 (= tp!2374754 e!4698355)))

(assert (= (and b!7967549 ((_ is ElementMatch!21517) (regOne!43547 (regTwo!43547 baseR!116)))) b!7967941))

(assert (= (and b!7967549 ((_ is Concat!30516) (regOne!43547 (regTwo!43547 baseR!116)))) b!7967942))

(assert (= (and b!7967549 ((_ is Star!21517) (regOne!43547 (regTwo!43547 baseR!116)))) b!7967943))

(assert (= (and b!7967549 ((_ is Union!21517) (regOne!43547 (regTwo!43547 baseR!116)))) b!7967944))

(declare-fun b!7967946 () Bool)

(declare-fun e!4698356 () Bool)

(declare-fun tp!2374878 () Bool)

(declare-fun tp!2374877 () Bool)

(assert (=> b!7967946 (= e!4698356 (and tp!2374878 tp!2374877))))

(declare-fun b!7967948 () Bool)

(declare-fun tp!2374875 () Bool)

(declare-fun tp!2374879 () Bool)

(assert (=> b!7967948 (= e!4698356 (and tp!2374875 tp!2374879))))

(declare-fun b!7967947 () Bool)

(declare-fun tp!2374876 () Bool)

(assert (=> b!7967947 (= e!4698356 tp!2374876)))

(declare-fun b!7967945 () Bool)

(assert (=> b!7967945 (= e!4698356 tp_is_empty!53577)))

(assert (=> b!7967549 (= tp!2374758 e!4698356)))

(assert (= (and b!7967549 ((_ is ElementMatch!21517) (regTwo!43547 (regTwo!43547 baseR!116)))) b!7967945))

(assert (= (and b!7967549 ((_ is Concat!30516) (regTwo!43547 (regTwo!43547 baseR!116)))) b!7967946))

(assert (= (and b!7967549 ((_ is Star!21517) (regTwo!43547 (regTwo!43547 baseR!116)))) b!7967947))

(assert (= (and b!7967549 ((_ is Union!21517) (regTwo!43547 (regTwo!43547 baseR!116)))) b!7967948))

(declare-fun b!7967950 () Bool)

(declare-fun e!4698357 () Bool)

(declare-fun tp!2374883 () Bool)

(declare-fun tp!2374882 () Bool)

(assert (=> b!7967950 (= e!4698357 (and tp!2374883 tp!2374882))))

(declare-fun b!7967952 () Bool)

(declare-fun tp!2374880 () Bool)

(declare-fun tp!2374884 () Bool)

(assert (=> b!7967952 (= e!4698357 (and tp!2374880 tp!2374884))))

(declare-fun b!7967951 () Bool)

(declare-fun tp!2374881 () Bool)

(assert (=> b!7967951 (= e!4698357 tp!2374881)))

(declare-fun b!7967949 () Bool)

(assert (=> b!7967949 (= e!4698357 tp_is_empty!53577)))

(assert (=> b!7967548 (= tp!2374755 e!4698357)))

(assert (= (and b!7967548 ((_ is ElementMatch!21517) (reg!21846 (regTwo!43547 baseR!116)))) b!7967949))

(assert (= (and b!7967548 ((_ is Concat!30516) (reg!21846 (regTwo!43547 baseR!116)))) b!7967950))

(assert (= (and b!7967548 ((_ is Star!21517) (reg!21846 (regTwo!43547 baseR!116)))) b!7967951))

(assert (= (and b!7967548 ((_ is Union!21517) (reg!21846 (regTwo!43547 baseR!116)))) b!7967952))

(declare-fun b!7967954 () Bool)

(declare-fun e!4698358 () Bool)

(declare-fun tp!2374888 () Bool)

(declare-fun tp!2374887 () Bool)

(assert (=> b!7967954 (= e!4698358 (and tp!2374888 tp!2374887))))

(declare-fun b!7967956 () Bool)

(declare-fun tp!2374885 () Bool)

(declare-fun tp!2374889 () Bool)

(assert (=> b!7967956 (= e!4698358 (and tp!2374885 tp!2374889))))

(declare-fun b!7967955 () Bool)

(declare-fun tp!2374886 () Bool)

(assert (=> b!7967955 (= e!4698358 tp!2374886)))

(declare-fun b!7967953 () Bool)

(assert (=> b!7967953 (= e!4698358 tp_is_empty!53577)))

(assert (=> b!7967539 (= tp!2374747 e!4698358)))

(assert (= (and b!7967539 ((_ is ElementMatch!21517) (regOne!43546 (regTwo!43547 r!24602)))) b!7967953))

(assert (= (and b!7967539 ((_ is Concat!30516) (regOne!43546 (regTwo!43547 r!24602)))) b!7967954))

(assert (= (and b!7967539 ((_ is Star!21517) (regOne!43546 (regTwo!43547 r!24602)))) b!7967955))

(assert (= (and b!7967539 ((_ is Union!21517) (regOne!43546 (regTwo!43547 r!24602)))) b!7967956))

(declare-fun b!7967958 () Bool)

(declare-fun e!4698359 () Bool)

(declare-fun tp!2374893 () Bool)

(declare-fun tp!2374892 () Bool)

(assert (=> b!7967958 (= e!4698359 (and tp!2374893 tp!2374892))))

(declare-fun b!7967960 () Bool)

(declare-fun tp!2374890 () Bool)

(declare-fun tp!2374894 () Bool)

(assert (=> b!7967960 (= e!4698359 (and tp!2374890 tp!2374894))))

(declare-fun b!7967959 () Bool)

(declare-fun tp!2374891 () Bool)

(assert (=> b!7967959 (= e!4698359 tp!2374891)))

(declare-fun b!7967957 () Bool)

(assert (=> b!7967957 (= e!4698359 tp_is_empty!53577)))

(assert (=> b!7967539 (= tp!2374746 e!4698359)))

(assert (= (and b!7967539 ((_ is ElementMatch!21517) (regTwo!43546 (regTwo!43547 r!24602)))) b!7967957))

(assert (= (and b!7967539 ((_ is Concat!30516) (regTwo!43546 (regTwo!43547 r!24602)))) b!7967958))

(assert (= (and b!7967539 ((_ is Star!21517) (regTwo!43546 (regTwo!43547 r!24602)))) b!7967959))

(assert (= (and b!7967539 ((_ is Union!21517) (regTwo!43546 (regTwo!43547 r!24602)))) b!7967960))

(declare-fun b!7967962 () Bool)

(declare-fun e!4698360 () Bool)

(declare-fun tp!2374898 () Bool)

(declare-fun tp!2374897 () Bool)

(assert (=> b!7967962 (= e!4698360 (and tp!2374898 tp!2374897))))

(declare-fun b!7967964 () Bool)

(declare-fun tp!2374895 () Bool)

(declare-fun tp!2374899 () Bool)

(assert (=> b!7967964 (= e!4698360 (and tp!2374895 tp!2374899))))

(declare-fun b!7967963 () Bool)

(declare-fun tp!2374896 () Bool)

(assert (=> b!7967963 (= e!4698360 tp!2374896)))

(declare-fun b!7967961 () Bool)

(assert (=> b!7967961 (= e!4698360 tp_is_empty!53577)))

(assert (=> b!7967547 (= tp!2374757 e!4698360)))

(assert (= (and b!7967547 ((_ is ElementMatch!21517) (regOne!43546 (regTwo!43547 baseR!116)))) b!7967961))

(assert (= (and b!7967547 ((_ is Concat!30516) (regOne!43546 (regTwo!43547 baseR!116)))) b!7967962))

(assert (= (and b!7967547 ((_ is Star!21517) (regOne!43546 (regTwo!43547 baseR!116)))) b!7967963))

(assert (= (and b!7967547 ((_ is Union!21517) (regOne!43546 (regTwo!43547 baseR!116)))) b!7967964))

(declare-fun b!7967966 () Bool)

(declare-fun e!4698361 () Bool)

(declare-fun tp!2374903 () Bool)

(declare-fun tp!2374902 () Bool)

(assert (=> b!7967966 (= e!4698361 (and tp!2374903 tp!2374902))))

(declare-fun b!7967968 () Bool)

(declare-fun tp!2374900 () Bool)

(declare-fun tp!2374904 () Bool)

(assert (=> b!7967968 (= e!4698361 (and tp!2374900 tp!2374904))))

(declare-fun b!7967967 () Bool)

(declare-fun tp!2374901 () Bool)

(assert (=> b!7967967 (= e!4698361 tp!2374901)))

(declare-fun b!7967965 () Bool)

(assert (=> b!7967965 (= e!4698361 tp_is_empty!53577)))

(assert (=> b!7967547 (= tp!2374756 e!4698361)))

(assert (= (and b!7967547 ((_ is ElementMatch!21517) (regTwo!43546 (regTwo!43547 baseR!116)))) b!7967965))

(assert (= (and b!7967547 ((_ is Concat!30516) (regTwo!43546 (regTwo!43547 baseR!116)))) b!7967966))

(assert (= (and b!7967547 ((_ is Star!21517) (regTwo!43546 (regTwo!43547 baseR!116)))) b!7967967))

(assert (= (and b!7967547 ((_ is Union!21517) (regTwo!43546 (regTwo!43547 baseR!116)))) b!7967968))

(declare-fun b!7967969 () Bool)

(declare-fun e!4698362 () Bool)

(declare-fun tp!2374905 () Bool)

(assert (=> b!7967969 (= e!4698362 (and tp_is_empty!53577 tp!2374905))))

(assert (=> b!7967525 (= tp!2374728 e!4698362)))

(assert (= (and b!7967525 ((_ is Cons!74622) (t!390489 (t!390489 input!7927)))) b!7967969))

(declare-fun b!7967970 () Bool)

(declare-fun e!4698363 () Bool)

(declare-fun tp!2374906 () Bool)

(assert (=> b!7967970 (= e!4698363 (and tp_is_empty!53577 tp!2374906))))

(assert (=> b!7967550 (= tp!2374759 e!4698363)))

(assert (= (and b!7967550 ((_ is Cons!74622) (t!390489 (t!390489 testedP!447)))) b!7967970))

(declare-fun b!7967972 () Bool)

(declare-fun e!4698364 () Bool)

(declare-fun tp!2374910 () Bool)

(declare-fun tp!2374909 () Bool)

(assert (=> b!7967972 (= e!4698364 (and tp!2374910 tp!2374909))))

(declare-fun b!7967974 () Bool)

(declare-fun tp!2374907 () Bool)

(declare-fun tp!2374911 () Bool)

(assert (=> b!7967974 (= e!4698364 (and tp!2374907 tp!2374911))))

(declare-fun b!7967973 () Bool)

(declare-fun tp!2374908 () Bool)

(assert (=> b!7967973 (= e!4698364 tp!2374908)))

(declare-fun b!7967971 () Bool)

(assert (=> b!7967971 (= e!4698364 tp_is_empty!53577)))

(assert (=> b!7967533 (= tp!2374734 e!4698364)))

(assert (= (and b!7967533 ((_ is ElementMatch!21517) (regOne!43547 (regTwo!43546 r!24602)))) b!7967971))

(assert (= (and b!7967533 ((_ is Concat!30516) (regOne!43547 (regTwo!43546 r!24602)))) b!7967972))

(assert (= (and b!7967533 ((_ is Star!21517) (regOne!43547 (regTwo!43546 r!24602)))) b!7967973))

(assert (= (and b!7967533 ((_ is Union!21517) (regOne!43547 (regTwo!43546 r!24602)))) b!7967974))

(declare-fun b!7967976 () Bool)

(declare-fun e!4698365 () Bool)

(declare-fun tp!2374915 () Bool)

(declare-fun tp!2374914 () Bool)

(assert (=> b!7967976 (= e!4698365 (and tp!2374915 tp!2374914))))

(declare-fun b!7967978 () Bool)

(declare-fun tp!2374912 () Bool)

(declare-fun tp!2374916 () Bool)

(assert (=> b!7967978 (= e!4698365 (and tp!2374912 tp!2374916))))

(declare-fun b!7967977 () Bool)

(declare-fun tp!2374913 () Bool)

(assert (=> b!7967977 (= e!4698365 tp!2374913)))

(declare-fun b!7967975 () Bool)

(assert (=> b!7967975 (= e!4698365 tp_is_empty!53577)))

(assert (=> b!7967533 (= tp!2374738 e!4698365)))

(assert (= (and b!7967533 ((_ is ElementMatch!21517) (regTwo!43547 (regTwo!43546 r!24602)))) b!7967975))

(assert (= (and b!7967533 ((_ is Concat!30516) (regTwo!43547 (regTwo!43546 r!24602)))) b!7967976))

(assert (= (and b!7967533 ((_ is Star!21517) (regTwo!43547 (regTwo!43546 r!24602)))) b!7967977))

(assert (= (and b!7967533 ((_ is Union!21517) (regTwo!43547 (regTwo!43546 r!24602)))) b!7967978))

(declare-fun b!7967980 () Bool)

(declare-fun e!4698366 () Bool)

(declare-fun tp!2374920 () Bool)

(declare-fun tp!2374919 () Bool)

(assert (=> b!7967980 (= e!4698366 (and tp!2374920 tp!2374919))))

(declare-fun b!7967982 () Bool)

(declare-fun tp!2374917 () Bool)

(declare-fun tp!2374921 () Bool)

(assert (=> b!7967982 (= e!4698366 (and tp!2374917 tp!2374921))))

(declare-fun b!7967981 () Bool)

(declare-fun tp!2374918 () Bool)

(assert (=> b!7967981 (= e!4698366 tp!2374918)))

(declare-fun b!7967979 () Bool)

(assert (=> b!7967979 (= e!4698366 tp_is_empty!53577)))

(assert (=> b!7967532 (= tp!2374735 e!4698366)))

(assert (= (and b!7967532 ((_ is ElementMatch!21517) (reg!21846 (regTwo!43546 r!24602)))) b!7967979))

(assert (= (and b!7967532 ((_ is Concat!30516) (reg!21846 (regTwo!43546 r!24602)))) b!7967980))

(assert (= (and b!7967532 ((_ is Star!21517) (reg!21846 (regTwo!43546 r!24602)))) b!7967981))

(assert (= (and b!7967532 ((_ is Union!21517) (reg!21846 (regTwo!43546 r!24602)))) b!7967982))

(declare-fun b!7967984 () Bool)

(declare-fun e!4698367 () Bool)

(declare-fun tp!2374925 () Bool)

(declare-fun tp!2374924 () Bool)

(assert (=> b!7967984 (= e!4698367 (and tp!2374925 tp!2374924))))

(declare-fun b!7967986 () Bool)

(declare-fun tp!2374922 () Bool)

(declare-fun tp!2374926 () Bool)

(assert (=> b!7967986 (= e!4698367 (and tp!2374922 tp!2374926))))

(declare-fun b!7967985 () Bool)

(declare-fun tp!2374923 () Bool)

(assert (=> b!7967985 (= e!4698367 tp!2374923)))

(declare-fun b!7967983 () Bool)

(assert (=> b!7967983 (= e!4698367 tp_is_empty!53577)))

(assert (=> b!7967558 (= tp!2374765 e!4698367)))

(assert (= (and b!7967558 ((_ is ElementMatch!21517) (regOne!43547 (regOne!43546 baseR!116)))) b!7967983))

(assert (= (and b!7967558 ((_ is Concat!30516) (regOne!43547 (regOne!43546 baseR!116)))) b!7967984))

(assert (= (and b!7967558 ((_ is Star!21517) (regOne!43547 (regOne!43546 baseR!116)))) b!7967985))

(assert (= (and b!7967558 ((_ is Union!21517) (regOne!43547 (regOne!43546 baseR!116)))) b!7967986))

(declare-fun b!7967991 () Bool)

(declare-fun e!4698373 () Bool)

(declare-fun tp!2374930 () Bool)

(declare-fun tp!2374929 () Bool)

(assert (=> b!7967991 (= e!4698373 (and tp!2374930 tp!2374929))))

(declare-fun b!7967994 () Bool)

(declare-fun tp!2374927 () Bool)

(declare-fun tp!2374931 () Bool)

(assert (=> b!7967994 (= e!4698373 (and tp!2374927 tp!2374931))))

(declare-fun b!7967992 () Bool)

(declare-fun tp!2374928 () Bool)

(assert (=> b!7967992 (= e!4698373 tp!2374928)))

(declare-fun b!7967987 () Bool)

(assert (=> b!7967987 (= e!4698373 tp_is_empty!53577)))

(assert (=> b!7967558 (= tp!2374769 e!4698373)))

(assert (= (and b!7967558 ((_ is ElementMatch!21517) (regTwo!43547 (regOne!43546 baseR!116)))) b!7967987))

(assert (= (and b!7967558 ((_ is Concat!30516) (regTwo!43547 (regOne!43546 baseR!116)))) b!7967991))

(assert (= (and b!7967558 ((_ is Star!21517) (regTwo!43547 (regOne!43546 baseR!116)))) b!7967992))

(assert (= (and b!7967558 ((_ is Union!21517) (regTwo!43547 (regOne!43546 baseR!116)))) b!7967994))

(declare-fun b!7967999 () Bool)

(declare-fun e!4698375 () Bool)

(declare-fun tp!2374935 () Bool)

(declare-fun tp!2374934 () Bool)

(assert (=> b!7967999 (= e!4698375 (and tp!2374935 tp!2374934))))

(declare-fun b!7968001 () Bool)

(declare-fun tp!2374932 () Bool)

(declare-fun tp!2374936 () Bool)

(assert (=> b!7968001 (= e!4698375 (and tp!2374932 tp!2374936))))

(declare-fun b!7968000 () Bool)

(declare-fun tp!2374933 () Bool)

(assert (=> b!7968000 (= e!4698375 tp!2374933)))

(declare-fun b!7967998 () Bool)

(assert (=> b!7967998 (= e!4698375 tp_is_empty!53577)))

(assert (=> b!7967541 (= tp!2374744 e!4698375)))

(assert (= (and b!7967541 ((_ is ElementMatch!21517) (regOne!43547 (regTwo!43547 r!24602)))) b!7967998))

(assert (= (and b!7967541 ((_ is Concat!30516) (regOne!43547 (regTwo!43547 r!24602)))) b!7967999))

(assert (= (and b!7967541 ((_ is Star!21517) (regOne!43547 (regTwo!43547 r!24602)))) b!7968000))

(assert (= (and b!7967541 ((_ is Union!21517) (regOne!43547 (regTwo!43547 r!24602)))) b!7968001))

(declare-fun b!7968003 () Bool)

(declare-fun e!4698376 () Bool)

(declare-fun tp!2374940 () Bool)

(declare-fun tp!2374939 () Bool)

(assert (=> b!7968003 (= e!4698376 (and tp!2374940 tp!2374939))))

(declare-fun b!7968005 () Bool)

(declare-fun tp!2374937 () Bool)

(declare-fun tp!2374941 () Bool)

(assert (=> b!7968005 (= e!4698376 (and tp!2374937 tp!2374941))))

(declare-fun b!7968004 () Bool)

(declare-fun tp!2374938 () Bool)

(assert (=> b!7968004 (= e!4698376 tp!2374938)))

(declare-fun b!7968002 () Bool)

(assert (=> b!7968002 (= e!4698376 tp_is_empty!53577)))

(assert (=> b!7967541 (= tp!2374748 e!4698376)))

(assert (= (and b!7967541 ((_ is ElementMatch!21517) (regTwo!43547 (regTwo!43547 r!24602)))) b!7968002))

(assert (= (and b!7967541 ((_ is Concat!30516) (regTwo!43547 (regTwo!43547 r!24602)))) b!7968003))

(assert (= (and b!7967541 ((_ is Star!21517) (regTwo!43547 (regTwo!43547 r!24602)))) b!7968004))

(assert (= (and b!7967541 ((_ is Union!21517) (regTwo!43547 (regTwo!43547 r!24602)))) b!7968005))

(declare-fun b!7968007 () Bool)

(declare-fun e!4698377 () Bool)

(declare-fun tp!2374945 () Bool)

(declare-fun tp!2374944 () Bool)

(assert (=> b!7968007 (= e!4698377 (and tp!2374945 tp!2374944))))

(declare-fun b!7968009 () Bool)

(declare-fun tp!2374942 () Bool)

(declare-fun tp!2374946 () Bool)

(assert (=> b!7968009 (= e!4698377 (and tp!2374942 tp!2374946))))

(declare-fun b!7968008 () Bool)

(declare-fun tp!2374943 () Bool)

(assert (=> b!7968008 (= e!4698377 tp!2374943)))

(declare-fun b!7968006 () Bool)

(assert (=> b!7968006 (= e!4698377 tp_is_empty!53577)))

(assert (=> b!7967552 (= tp!2374763 e!4698377)))

(assert (= (and b!7967552 ((_ is ElementMatch!21517) (regOne!43546 (reg!21846 baseR!116)))) b!7968006))

(assert (= (and b!7967552 ((_ is Concat!30516) (regOne!43546 (reg!21846 baseR!116)))) b!7968007))

(assert (= (and b!7967552 ((_ is Star!21517) (regOne!43546 (reg!21846 baseR!116)))) b!7968008))

(assert (= (and b!7967552 ((_ is Union!21517) (regOne!43546 (reg!21846 baseR!116)))) b!7968009))

(declare-fun b!7968011 () Bool)

(declare-fun e!4698378 () Bool)

(declare-fun tp!2374950 () Bool)

(declare-fun tp!2374949 () Bool)

(assert (=> b!7968011 (= e!4698378 (and tp!2374950 tp!2374949))))

(declare-fun b!7968013 () Bool)

(declare-fun tp!2374947 () Bool)

(declare-fun tp!2374951 () Bool)

(assert (=> b!7968013 (= e!4698378 (and tp!2374947 tp!2374951))))

(declare-fun b!7968012 () Bool)

(declare-fun tp!2374948 () Bool)

(assert (=> b!7968012 (= e!4698378 tp!2374948)))

(declare-fun b!7968010 () Bool)

(assert (=> b!7968010 (= e!4698378 tp_is_empty!53577)))

(assert (=> b!7967552 (= tp!2374762 e!4698378)))

(assert (= (and b!7967552 ((_ is ElementMatch!21517) (regTwo!43546 (reg!21846 baseR!116)))) b!7968010))

(assert (= (and b!7967552 ((_ is Concat!30516) (regTwo!43546 (reg!21846 baseR!116)))) b!7968011))

(assert (= (and b!7967552 ((_ is Star!21517) (regTwo!43546 (reg!21846 baseR!116)))) b!7968012))

(assert (= (and b!7967552 ((_ is Union!21517) (regTwo!43546 (reg!21846 baseR!116)))) b!7968013))

(declare-fun b!7968015 () Bool)

(declare-fun e!4698379 () Bool)

(declare-fun tp!2374955 () Bool)

(declare-fun tp!2374954 () Bool)

(assert (=> b!7968015 (= e!4698379 (and tp!2374955 tp!2374954))))

(declare-fun b!7968017 () Bool)

(declare-fun tp!2374952 () Bool)

(declare-fun tp!2374956 () Bool)

(assert (=> b!7968017 (= e!4698379 (and tp!2374952 tp!2374956))))

(declare-fun b!7968016 () Bool)

(declare-fun tp!2374953 () Bool)

(assert (=> b!7968016 (= e!4698379 tp!2374953)))

(declare-fun b!7968014 () Bool)

(assert (=> b!7968014 (= e!4698379 tp_is_empty!53577)))

(assert (=> b!7967545 (= tp!2374749 e!4698379)))

(assert (= (and b!7967545 ((_ is ElementMatch!21517) (regOne!43547 (regOne!43547 baseR!116)))) b!7968014))

(assert (= (and b!7967545 ((_ is Concat!30516) (regOne!43547 (regOne!43547 baseR!116)))) b!7968015))

(assert (= (and b!7967545 ((_ is Star!21517) (regOne!43547 (regOne!43547 baseR!116)))) b!7968016))

(assert (= (and b!7967545 ((_ is Union!21517) (regOne!43547 (regOne!43547 baseR!116)))) b!7968017))

(declare-fun b!7968019 () Bool)

(declare-fun e!4698380 () Bool)

(declare-fun tp!2374960 () Bool)

(declare-fun tp!2374959 () Bool)

(assert (=> b!7968019 (= e!4698380 (and tp!2374960 tp!2374959))))

(declare-fun b!7968021 () Bool)

(declare-fun tp!2374957 () Bool)

(declare-fun tp!2374961 () Bool)

(assert (=> b!7968021 (= e!4698380 (and tp!2374957 tp!2374961))))

(declare-fun b!7968020 () Bool)

(declare-fun tp!2374958 () Bool)

(assert (=> b!7968020 (= e!4698380 tp!2374958)))

(declare-fun b!7968018 () Bool)

(assert (=> b!7968018 (= e!4698380 tp_is_empty!53577)))

(assert (=> b!7967545 (= tp!2374753 e!4698380)))

(assert (= (and b!7967545 ((_ is ElementMatch!21517) (regTwo!43547 (regOne!43547 baseR!116)))) b!7968018))

(assert (= (and b!7967545 ((_ is Concat!30516) (regTwo!43547 (regOne!43547 baseR!116)))) b!7968019))

(assert (= (and b!7967545 ((_ is Star!21517) (regTwo!43547 (regOne!43547 baseR!116)))) b!7968020))

(assert (= (and b!7967545 ((_ is Union!21517) (regTwo!43547 (regOne!43547 baseR!116)))) b!7968021))

(declare-fun b!7968025 () Bool)

(declare-fun e!4698382 () Bool)

(declare-fun tp!2374965 () Bool)

(declare-fun tp!2374964 () Bool)

(assert (=> b!7968025 (= e!4698382 (and tp!2374965 tp!2374964))))

(declare-fun b!7968027 () Bool)

(declare-fun tp!2374962 () Bool)

(declare-fun tp!2374966 () Bool)

(assert (=> b!7968027 (= e!4698382 (and tp!2374962 tp!2374966))))

(declare-fun b!7968026 () Bool)

(declare-fun tp!2374963 () Bool)

(assert (=> b!7968026 (= e!4698382 tp!2374963)))

(declare-fun b!7968024 () Bool)

(assert (=> b!7968024 (= e!4698382 tp_is_empty!53577)))

(assert (=> b!7967520 (= tp!2374721 e!4698382)))

(assert (= (and b!7967520 ((_ is ElementMatch!21517) (regOne!43547 (reg!21846 r!24602)))) b!7968024))

(assert (= (and b!7967520 ((_ is Concat!30516) (regOne!43547 (reg!21846 r!24602)))) b!7968025))

(assert (= (and b!7967520 ((_ is Star!21517) (regOne!43547 (reg!21846 r!24602)))) b!7968026))

(assert (= (and b!7967520 ((_ is Union!21517) (regOne!43547 (reg!21846 r!24602)))) b!7968027))

(declare-fun b!7968029 () Bool)

(declare-fun e!4698383 () Bool)

(declare-fun tp!2374970 () Bool)

(declare-fun tp!2374969 () Bool)

(assert (=> b!7968029 (= e!4698383 (and tp!2374970 tp!2374969))))

(declare-fun b!7968031 () Bool)

(declare-fun tp!2374967 () Bool)

(declare-fun tp!2374971 () Bool)

(assert (=> b!7968031 (= e!4698383 (and tp!2374967 tp!2374971))))

(declare-fun b!7968030 () Bool)

(declare-fun tp!2374968 () Bool)

(assert (=> b!7968030 (= e!4698383 tp!2374968)))

(declare-fun b!7968028 () Bool)

(assert (=> b!7968028 (= e!4698383 tp_is_empty!53577)))

(assert (=> b!7967520 (= tp!2374725 e!4698383)))

(assert (= (and b!7967520 ((_ is ElementMatch!21517) (regTwo!43547 (reg!21846 r!24602)))) b!7968028))

(assert (= (and b!7967520 ((_ is Concat!30516) (regTwo!43547 (reg!21846 r!24602)))) b!7968029))

(assert (= (and b!7967520 ((_ is Star!21517) (regTwo!43547 (reg!21846 r!24602)))) b!7968030))

(assert (= (and b!7967520 ((_ is Union!21517) (regTwo!43547 (reg!21846 r!24602)))) b!7968031))

(declare-fun b!7968033 () Bool)

(declare-fun e!4698384 () Bool)

(declare-fun tp!2374975 () Bool)

(declare-fun tp!2374974 () Bool)

(assert (=> b!7968033 (= e!4698384 (and tp!2374975 tp!2374974))))

(declare-fun b!7968035 () Bool)

(declare-fun tp!2374972 () Bool)

(declare-fun tp!2374976 () Bool)

(assert (=> b!7968035 (= e!4698384 (and tp!2374972 tp!2374976))))

(declare-fun b!7968034 () Bool)

(declare-fun tp!2374973 () Bool)

(assert (=> b!7968034 (= e!4698384 tp!2374973)))

(declare-fun b!7968032 () Bool)

(assert (=> b!7968032 (= e!4698384 tp_is_empty!53577)))

(assert (=> b!7967544 (= tp!2374750 e!4698384)))

(assert (= (and b!7967544 ((_ is ElementMatch!21517) (reg!21846 (regOne!43547 baseR!116)))) b!7968032))

(assert (= (and b!7967544 ((_ is Concat!30516) (reg!21846 (regOne!43547 baseR!116)))) b!7968033))

(assert (= (and b!7967544 ((_ is Star!21517) (reg!21846 (regOne!43547 baseR!116)))) b!7968034))

(assert (= (and b!7967544 ((_ is Union!21517) (reg!21846 (regOne!43547 baseR!116)))) b!7968035))

(declare-fun b!7968037 () Bool)

(declare-fun e!4698385 () Bool)

(declare-fun tp!2374980 () Bool)

(declare-fun tp!2374979 () Bool)

(assert (=> b!7968037 (= e!4698385 (and tp!2374980 tp!2374979))))

(declare-fun b!7968039 () Bool)

(declare-fun tp!2374977 () Bool)

(declare-fun tp!2374981 () Bool)

(assert (=> b!7968039 (= e!4698385 (and tp!2374977 tp!2374981))))

(declare-fun b!7968038 () Bool)

(declare-fun tp!2374978 () Bool)

(assert (=> b!7968038 (= e!4698385 tp!2374978)))

(declare-fun b!7968036 () Bool)

(assert (=> b!7968036 (= e!4698385 tp_is_empty!53577)))

(assert (=> b!7967561 (= tp!2374771 e!4698385)))

(assert (= (and b!7967561 ((_ is ElementMatch!21517) (reg!21846 (regTwo!43546 baseR!116)))) b!7968036))

(assert (= (and b!7967561 ((_ is Concat!30516) (reg!21846 (regTwo!43546 baseR!116)))) b!7968037))

(assert (= (and b!7967561 ((_ is Star!21517) (reg!21846 (regTwo!43546 baseR!116)))) b!7968038))

(assert (= (and b!7967561 ((_ is Union!21517) (reg!21846 (regTwo!43546 baseR!116)))) b!7968039))

(declare-fun b!7968041 () Bool)

(declare-fun e!4698386 () Bool)

(declare-fun tp!2374985 () Bool)

(declare-fun tp!2374984 () Bool)

(assert (=> b!7968041 (= e!4698386 (and tp!2374985 tp!2374984))))

(declare-fun b!7968043 () Bool)

(declare-fun tp!2374982 () Bool)

(declare-fun tp!2374986 () Bool)

(assert (=> b!7968043 (= e!4698386 (and tp!2374982 tp!2374986))))

(declare-fun b!7968042 () Bool)

(declare-fun tp!2374983 () Bool)

(assert (=> b!7968042 (= e!4698386 tp!2374983)))

(declare-fun b!7968040 () Bool)

(assert (=> b!7968040 (= e!4698386 tp_is_empty!53577)))

(assert (=> b!7967535 (= tp!2374742 e!4698386)))

(assert (= (and b!7967535 ((_ is ElementMatch!21517) (regOne!43546 (regOne!43547 r!24602)))) b!7968040))

(assert (= (and b!7967535 ((_ is Concat!30516) (regOne!43546 (regOne!43547 r!24602)))) b!7968041))

(assert (= (and b!7967535 ((_ is Star!21517) (regOne!43546 (regOne!43547 r!24602)))) b!7968042))

(assert (= (and b!7967535 ((_ is Union!21517) (regOne!43546 (regOne!43547 r!24602)))) b!7968043))

(declare-fun b!7968045 () Bool)

(declare-fun e!4698387 () Bool)

(declare-fun tp!2374990 () Bool)

(declare-fun tp!2374989 () Bool)

(assert (=> b!7968045 (= e!4698387 (and tp!2374990 tp!2374989))))

(declare-fun b!7968047 () Bool)

(declare-fun tp!2374987 () Bool)

(declare-fun tp!2374991 () Bool)

(assert (=> b!7968047 (= e!4698387 (and tp!2374987 tp!2374991))))

(declare-fun b!7968046 () Bool)

(declare-fun tp!2374988 () Bool)

(assert (=> b!7968046 (= e!4698387 tp!2374988)))

(declare-fun b!7968044 () Bool)

(assert (=> b!7968044 (= e!4698387 tp_is_empty!53577)))

(assert (=> b!7967535 (= tp!2374741 e!4698387)))

(assert (= (and b!7967535 ((_ is ElementMatch!21517) (regTwo!43546 (regOne!43547 r!24602)))) b!7968044))

(assert (= (and b!7967535 ((_ is Concat!30516) (regTwo!43546 (regOne!43547 r!24602)))) b!7968045))

(assert (= (and b!7967535 ((_ is Star!21517) (regTwo!43546 (regOne!43547 r!24602)))) b!7968046))

(assert (= (and b!7967535 ((_ is Union!21517) (regTwo!43546 (regOne!43547 r!24602)))) b!7968047))

(declare-fun b!7968049 () Bool)

(declare-fun e!4698388 () Bool)

(declare-fun tp!2374995 () Bool)

(declare-fun tp!2374994 () Bool)

(assert (=> b!7968049 (= e!4698388 (and tp!2374995 tp!2374994))))

(declare-fun b!7968051 () Bool)

(declare-fun tp!2374992 () Bool)

(declare-fun tp!2374996 () Bool)

(assert (=> b!7968051 (= e!4698388 (and tp!2374992 tp!2374996))))

(declare-fun b!7968050 () Bool)

(declare-fun tp!2374993 () Bool)

(assert (=> b!7968050 (= e!4698388 tp!2374993)))

(declare-fun b!7968048 () Bool)

(assert (=> b!7968048 (= e!4698388 tp_is_empty!53577)))

(assert (=> b!7967560 (= tp!2374773 e!4698388)))

(assert (= (and b!7967560 ((_ is ElementMatch!21517) (regOne!43546 (regTwo!43546 baseR!116)))) b!7968048))

(assert (= (and b!7967560 ((_ is Concat!30516) (regOne!43546 (regTwo!43546 baseR!116)))) b!7968049))

(assert (= (and b!7967560 ((_ is Star!21517) (regOne!43546 (regTwo!43546 baseR!116)))) b!7968050))

(assert (= (and b!7967560 ((_ is Union!21517) (regOne!43546 (regTwo!43546 baseR!116)))) b!7968051))

(declare-fun b!7968053 () Bool)

(declare-fun e!4698389 () Bool)

(declare-fun tp!2375000 () Bool)

(declare-fun tp!2374999 () Bool)

(assert (=> b!7968053 (= e!4698389 (and tp!2375000 tp!2374999))))

(declare-fun b!7968055 () Bool)

(declare-fun tp!2374997 () Bool)

(declare-fun tp!2375001 () Bool)

(assert (=> b!7968055 (= e!4698389 (and tp!2374997 tp!2375001))))

(declare-fun b!7968054 () Bool)

(declare-fun tp!2374998 () Bool)

(assert (=> b!7968054 (= e!4698389 tp!2374998)))

(declare-fun b!7968052 () Bool)

(assert (=> b!7968052 (= e!4698389 tp_is_empty!53577)))

(assert (=> b!7967560 (= tp!2374772 e!4698389)))

(assert (= (and b!7967560 ((_ is ElementMatch!21517) (regTwo!43546 (regTwo!43546 baseR!116)))) b!7968052))

(assert (= (and b!7967560 ((_ is Concat!30516) (regTwo!43546 (regTwo!43546 baseR!116)))) b!7968053))

(assert (= (and b!7967560 ((_ is Star!21517) (regTwo!43546 (regTwo!43546 baseR!116)))) b!7968054))

(assert (= (and b!7967560 ((_ is Union!21517) (regTwo!43546 (regTwo!43546 baseR!116)))) b!7968055))

(declare-fun b!7968057 () Bool)

(declare-fun e!4698390 () Bool)

(declare-fun tp!2375005 () Bool)

(declare-fun tp!2375004 () Bool)

(assert (=> b!7968057 (= e!4698390 (and tp!2375005 tp!2375004))))

(declare-fun b!7968059 () Bool)

(declare-fun tp!2375002 () Bool)

(declare-fun tp!2375006 () Bool)

(assert (=> b!7968059 (= e!4698390 (and tp!2375002 tp!2375006))))

(declare-fun b!7968058 () Bool)

(declare-fun tp!2375003 () Bool)

(assert (=> b!7968058 (= e!4698390 tp!2375003)))

(declare-fun b!7968056 () Bool)

(assert (=> b!7968056 (= e!4698390 tp_is_empty!53577)))

(assert (=> b!7967519 (= tp!2374722 e!4698390)))

(assert (= (and b!7967519 ((_ is ElementMatch!21517) (reg!21846 (reg!21846 r!24602)))) b!7968056))

(assert (= (and b!7967519 ((_ is Concat!30516) (reg!21846 (reg!21846 r!24602)))) b!7968057))

(assert (= (and b!7967519 ((_ is Star!21517) (reg!21846 (reg!21846 r!24602)))) b!7968058))

(assert (= (and b!7967519 ((_ is Union!21517) (reg!21846 (reg!21846 r!24602)))) b!7968059))

(declare-fun b!7968061 () Bool)

(declare-fun e!4698391 () Bool)

(declare-fun tp!2375010 () Bool)

(declare-fun tp!2375009 () Bool)

(assert (=> b!7968061 (= e!4698391 (and tp!2375010 tp!2375009))))

(declare-fun b!7968063 () Bool)

(declare-fun tp!2375007 () Bool)

(declare-fun tp!2375011 () Bool)

(assert (=> b!7968063 (= e!4698391 (and tp!2375007 tp!2375011))))

(declare-fun b!7968062 () Bool)

(declare-fun tp!2375008 () Bool)

(assert (=> b!7968062 (= e!4698391 tp!2375008)))

(declare-fun b!7968060 () Bool)

(assert (=> b!7968060 (= e!4698391 tp_is_empty!53577)))

(assert (=> b!7967543 (= tp!2374752 e!4698391)))

(assert (= (and b!7967543 ((_ is ElementMatch!21517) (regOne!43546 (regOne!43547 baseR!116)))) b!7968060))

(assert (= (and b!7967543 ((_ is Concat!30516) (regOne!43546 (regOne!43547 baseR!116)))) b!7968061))

(assert (= (and b!7967543 ((_ is Star!21517) (regOne!43546 (regOne!43547 baseR!116)))) b!7968062))

(assert (= (and b!7967543 ((_ is Union!21517) (regOne!43546 (regOne!43547 baseR!116)))) b!7968063))

(declare-fun b!7968065 () Bool)

(declare-fun e!4698392 () Bool)

(declare-fun tp!2375015 () Bool)

(declare-fun tp!2375014 () Bool)

(assert (=> b!7968065 (= e!4698392 (and tp!2375015 tp!2375014))))

(declare-fun b!7968067 () Bool)

(declare-fun tp!2375012 () Bool)

(declare-fun tp!2375016 () Bool)

(assert (=> b!7968067 (= e!4698392 (and tp!2375012 tp!2375016))))

(declare-fun b!7968066 () Bool)

(declare-fun tp!2375013 () Bool)

(assert (=> b!7968066 (= e!4698392 tp!2375013)))

(declare-fun b!7968064 () Bool)

(assert (=> b!7968064 (= e!4698392 tp_is_empty!53577)))

(assert (=> b!7967543 (= tp!2374751 e!4698392)))

(assert (= (and b!7967543 ((_ is ElementMatch!21517) (regTwo!43546 (regOne!43547 baseR!116)))) b!7968064))

(assert (= (and b!7967543 ((_ is Concat!30516) (regTwo!43546 (regOne!43547 baseR!116)))) b!7968065))

(assert (= (and b!7967543 ((_ is Star!21517) (regTwo!43546 (regOne!43547 baseR!116)))) b!7968066))

(assert (= (and b!7967543 ((_ is Union!21517) (regTwo!43546 (regOne!43547 baseR!116)))) b!7968067))

(declare-fun b!7968069 () Bool)

(declare-fun e!4698393 () Bool)

(declare-fun tp!2375020 () Bool)

(declare-fun tp!2375019 () Bool)

(assert (=> b!7968069 (= e!4698393 (and tp!2375020 tp!2375019))))

(declare-fun b!7968071 () Bool)

(declare-fun tp!2375017 () Bool)

(declare-fun tp!2375021 () Bool)

(assert (=> b!7968071 (= e!4698393 (and tp!2375017 tp!2375021))))

(declare-fun b!7968070 () Bool)

(declare-fun tp!2375018 () Bool)

(assert (=> b!7968070 (= e!4698393 tp!2375018)))

(declare-fun b!7968068 () Bool)

(assert (=> b!7968068 (= e!4698393 tp_is_empty!53577)))

(assert (=> b!7967518 (= tp!2374724 e!4698393)))

(assert (= (and b!7967518 ((_ is ElementMatch!21517) (regOne!43546 (reg!21846 r!24602)))) b!7968068))

(assert (= (and b!7967518 ((_ is Concat!30516) (regOne!43546 (reg!21846 r!24602)))) b!7968069))

(assert (= (and b!7967518 ((_ is Star!21517) (regOne!43546 (reg!21846 r!24602)))) b!7968070))

(assert (= (and b!7967518 ((_ is Union!21517) (regOne!43546 (reg!21846 r!24602)))) b!7968071))

(declare-fun b!7968073 () Bool)

(declare-fun e!4698394 () Bool)

(declare-fun tp!2375025 () Bool)

(declare-fun tp!2375024 () Bool)

(assert (=> b!7968073 (= e!4698394 (and tp!2375025 tp!2375024))))

(declare-fun b!7968075 () Bool)

(declare-fun tp!2375022 () Bool)

(declare-fun tp!2375026 () Bool)

(assert (=> b!7968075 (= e!4698394 (and tp!2375022 tp!2375026))))

(declare-fun b!7968074 () Bool)

(declare-fun tp!2375023 () Bool)

(assert (=> b!7968074 (= e!4698394 tp!2375023)))

(declare-fun b!7968072 () Bool)

(assert (=> b!7968072 (= e!4698394 tp_is_empty!53577)))

(assert (=> b!7967518 (= tp!2374723 e!4698394)))

(assert (= (and b!7967518 ((_ is ElementMatch!21517) (regTwo!43546 (reg!21846 r!24602)))) b!7968072))

(assert (= (and b!7967518 ((_ is Concat!30516) (regTwo!43546 (reg!21846 r!24602)))) b!7968073))

(assert (= (and b!7967518 ((_ is Star!21517) (regTwo!43546 (reg!21846 r!24602)))) b!7968074))

(assert (= (and b!7967518 ((_ is Union!21517) (regTwo!43546 (reg!21846 r!24602)))) b!7968075))

(check-sat (not b!7967968) (not b!7967798) (not b!7967848) (not b!7967799) (not b!7967956) (not d!2379467) (not b!7967607) (not bm!739221) (not b!7968054) (not b!7967944) (not b!7967845) (not b!7967942) (not bm!739216) (not b!7967943) (not b!7967966) (not d!2379373) (not b!7967852) (not b!7967939) (not b!7968065) (not d!2379345) (not b!7968059) (not b!7967860) (not b!7967692) (not bm!739218) (not d!2379461) (not b!7967884) (not b!7967963) (not bm!739179) (not b!7968034) (not b!7967935) (not b!7967770) (not b!7967950) (not b!7967861) (not b!7967894) (not b!7967883) (not b!7967984) (not b!7967952) (not b!7968011) (not bm!739199) (not b!7968019) (not b!7967783) (not b!7968026) (not b!7967786) (not b!7967876) (not b!7967611) (not b!7968047) (not bm!739222) (not b!7967777) (not b!7967776) (not b!7967992) (not b!7967890) (not b!7967930) (not b!7967853) (not b!7968037) (not b!7968074) (not b!7967918) (not b!7968035) (not b!7967898) (not b!7968013) (not b!7968025) (not b!7967969) (not b!7968069) (not b!7967940) (not b!7967999) (not bm!739173) (not b!7967781) (not b!7968027) (not b!7967878) (not b!7968053) (not b!7967915) (not d!2379341) (not bm!739226) (not b!7968030) (not b!7967588) tp_is_empty!53577 (not b!7967892) (not b!7967986) (not b!7967912) (not b!7967902) (not b!7968055) (not b!7967922) (not b!7967849) (not b!7967582) (not b!7967715) (not b!7967836) (not b!7967656) (not b!7967931) (not b!7967618) (not b!7967900) (not b!7967842) (not b!7968000) (not b!7967844) (not b!7968062) (not bm!739197) (not b!7967586) (not b!7968012) (not d!2379423) (not b!7968043) (not b!7968057) (not b!7967780) (not bm!739220) (not d!2379397) (not b!7967609) (not b!7967617) (not b!7967985) (not bm!739202) (not b!7967668) (not b!7968071) (not b!7967959) (not b!7967854) (not b!7967928) (not b!7967924) (not bm!739172) (not d!2379413) (not b!7967595) (not d!2379455) (not bm!739184) (not bm!739195) (not d!2379359) (not b!7967800) (not b!7967870) (not b!7967896) (not b!7967974) (not bm!739217) (not b!7968038) (not b!7967877) (not bm!739180) (not bm!739214) (not b!7967955) (not b!7967919) (not b!7967669) (not b!7967904) (not b!7967613) (not b!7967749) (not b!7967970) (not b!7967762) (not bm!739212) (not b!7967684) (not b!7967991) (not b!7967583) (not b!7967693) (not b!7967911) (not d!2379435) (not b!7967978) (not b!7967850) (not b!7967923) (not b!7967895) (not b!7968051) (not b!7967587) (not b!7968029) (not b!7967891) (not b!7967886) (not b!7967914) (not b!7967962) (not b!7968039) (not b!7968015) (not d!2379367) (not b!7968003) (not d!2379439) (not d!2379471) (not b!7967947) (not b!7967972) (not b!7967934) (not b!7968066) (not d!2379393) (not b!7968041) (not bm!739230) (not d!2379403) (not b!7967946) (not b!7967958) (not d!2379431) (not b!7967908) (not b!7967614) (not d!2379433) (not bm!739228) (not b!7967948) (not b!7967977) (not b!7967810) (not d!2379371) (not b!7967887) (not b!7967982) (not b!7967615) (not b!7967906) (not b!7967763) (not b!7967964) (not b!7967916) (not b!7967661) (not b!7968049) (not b!7967734) (not b!7967960) (not d!2379447) (not bm!739166) (not b!7968050) (not b!7968033) (not b!7968009) (not b!7968001) (not bm!739170) (not b!7967910) (not b!7967862) (not b!7967951) (not b!7967760) (not b!7967938) (not d!2379479) (not d!2379481) (not b!7968007) (not b!7968070) (not b!7968075) (not d!2379379) (not d!2379343) (not b!7967664) (not bm!739224) (not bm!739185) (not b!7967694) (not bm!739167) (not bm!739182) (not b!7968021) (not b!7967868) (not b!7968008) (not d!2379333) (not b!7967600) (not b!7967920) (not b!7968067) (not b!7967980) (not b!7967976) (not b!7968046) (not d!2379437) (not b!7967825) (not b!7968058) (not bm!739198) (not bm!739219) (not b!7967578) (not b!7967685) (not b!7967973) (not b!7967882) (not b!7967926) (not b!7967599) (not b!7967907) (not bm!739215) (not bm!739204) (not b!7968005) (not b!7967888) (not b!7968073) (not b!7967726) (not bm!739169) (not b!7967954) (not b!7967869) (not b!7968020) (not b!7967647) (not b!7968004) (not b!7968017) (not b!7967981) (not b!7967569) (not b!7967936) (not b!7968042) (not b!7968061) (not b!7967665) (not b!7967704) (not b!7967967) (not b!7968045) (not b!7967899) (not b!7967927) (not d!2379335) (not b!7968031) (not b!7968016) (not b!7967932) (not b!7968063) (not b!7967816) (not b!7967660) (not b!7967903) (not b!7967994) (not d!2379369) (not bm!739181))
(check-sat)
