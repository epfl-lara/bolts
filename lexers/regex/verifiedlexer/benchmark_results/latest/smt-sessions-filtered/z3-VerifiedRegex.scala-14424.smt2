; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751700 () Bool)

(assert start!751700)

(declare-fun b!7970100 () Bool)

(declare-datatypes ((C!43396 0))(
  ( (C!43397 (val!32246 Int)) )
))
(declare-datatypes ((List!74758 0))(
  ( (Nil!74634) (Cons!74634 (h!81082 C!43396) (t!390501 List!74758)) )
))
(declare-fun testedP!447 () List!74758)

(declare-fun lt!2707644 () List!74758)

(declare-fun input!7927 () List!74758)

(declare-fun e!4699405 () Bool)

(declare-fun ++!18399 (List!74758 List!74758) List!74758)

(assert (=> b!7970100 (= e!4699405 (= (++!18399 testedP!447 lt!2707644) input!7927))))

(declare-fun b!7970101 () Bool)

(declare-fun e!4699403 () Bool)

(declare-fun tp_is_empty!53601 () Bool)

(declare-fun tp!2375962 () Bool)

(assert (=> b!7970101 (= e!4699403 (and tp_is_empty!53601 tp!2375962))))

(declare-fun b!7970102 () Bool)

(declare-fun e!4699404 () Bool)

(declare-fun e!4699395 () Bool)

(assert (=> b!7970102 (= e!4699404 e!4699395)))

(declare-fun res!3157760 () Bool)

(assert (=> b!7970102 (=> (not res!3157760) (not e!4699395))))

(declare-fun lt!2707643 () Int)

(declare-fun lt!2707651 () Int)

(declare-datatypes ((Regex!21529 0))(
  ( (ElementMatch!21529 (c!1463684 C!43396)) (Concat!30528 (regOne!43570 Regex!21529) (regTwo!43570 Regex!21529)) (EmptyExpr!21529) (Star!21529 (reg!21858 Regex!21529)) (EmptyLang!21529) (Union!21529 (regOne!43571 Regex!21529) (regTwo!43571 Regex!21529)) )
))
(declare-fun r!24602 () Regex!21529)

(declare-fun isEmpty!42935 (List!74758) Bool)

(declare-datatypes ((tuple2!70720 0))(
  ( (tuple2!70721 (_1!38663 List!74758) (_2!38663 List!74758)) )
))
(declare-fun findLongestMatchInner!2310 (Regex!21529 List!74758 Int List!74758 List!74758 Int) tuple2!70720)

(assert (=> b!7970102 (= res!3157760 (not (isEmpty!42935 (_1!38663 (findLongestMatchInner!2310 r!24602 testedP!447 lt!2707643 lt!2707644 input!7927 lt!2707651)))))))

(declare-fun size!43465 (List!74758) Int)

(assert (=> b!7970102 (= lt!2707651 (size!43465 input!7927))))

(declare-fun getSuffix!3832 (List!74758 List!74758) List!74758)

(assert (=> b!7970102 (= lt!2707644 (getSuffix!3832 input!7927 testedP!447))))

(assert (=> b!7970102 (= lt!2707643 (size!43465 testedP!447))))

(declare-fun b!7970103 () Bool)

(declare-fun e!4699400 () Bool)

(declare-fun tp!2375956 () Bool)

(declare-fun tp!2375959 () Bool)

(assert (=> b!7970103 (= e!4699400 (and tp!2375956 tp!2375959))))

(declare-fun b!7970104 () Bool)

(declare-fun res!3157758 () Bool)

(assert (=> b!7970104 (=> (not res!3157758) (not e!4699395))))

(assert (=> b!7970104 (= res!3157758 (not (= testedP!447 input!7927)))))

(declare-fun b!7970105 () Bool)

(declare-fun e!4699396 () Bool)

(declare-fun baseR!116 () Regex!21529)

(declare-fun lt!2707646 () tuple2!70720)

(declare-fun matchR!10752 (Regex!21529 List!74758) Bool)

(assert (=> b!7970105 (= e!4699396 (matchR!10752 baseR!116 (_1!38663 lt!2707646)))))

(declare-fun b!7970106 () Bool)

(declare-fun e!4699399 () Bool)

(declare-fun tp!2375966 () Bool)

(assert (=> b!7970106 (= e!4699399 (and tp_is_empty!53601 tp!2375966))))

(declare-fun b!7970107 () Bool)

(declare-datatypes ((Unit!170284 0))(
  ( (Unit!170285) )
))
(declare-fun e!4699397 () Unit!170284)

(declare-fun Unit!170286 () Unit!170284)

(assert (=> b!7970107 (= e!4699397 Unit!170286)))

(declare-fun lt!2707650 () Unit!170284)

(declare-fun lemmaIsPrefixRefl!4097 (List!74758 List!74758) Unit!170284)

(assert (=> b!7970107 (= lt!2707650 (lemmaIsPrefixRefl!4097 input!7927 input!7927))))

(declare-fun isPrefix!6629 (List!74758 List!74758) Bool)

(assert (=> b!7970107 (isPrefix!6629 input!7927 input!7927)))

(declare-fun lt!2707642 () Unit!170284)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1677 (List!74758 List!74758 List!74758) Unit!170284)

(assert (=> b!7970107 (= lt!2707642 (lemmaIsPrefixSameLengthThenSameList!1677 input!7927 testedP!447 input!7927))))

(assert (=> b!7970107 false))

(declare-fun b!7970108 () Bool)

(declare-fun Unit!170287 () Unit!170284)

(assert (=> b!7970108 (= e!4699397 Unit!170287)))

(declare-fun b!7970109 () Bool)

(declare-fun tp!2375958 () Bool)

(declare-fun tp!2375957 () Bool)

(assert (=> b!7970109 (= e!4699400 (and tp!2375958 tp!2375957))))

(declare-fun b!7970111 () Bool)

(declare-fun e!4699402 () Bool)

(declare-fun tp!2375965 () Bool)

(declare-fun tp!2375963 () Bool)

(assert (=> b!7970111 (= e!4699402 (and tp!2375965 tp!2375963))))

(declare-fun b!7970112 () Bool)

(declare-fun tp!2375955 () Bool)

(declare-fun tp!2375961 () Bool)

(assert (=> b!7970112 (= e!4699402 (and tp!2375955 tp!2375961))))

(declare-fun b!7970113 () Bool)

(declare-fun e!4699401 () Bool)

(assert (=> b!7970113 (= e!4699395 (not e!4699401))))

(declare-fun res!3157763 () Bool)

(assert (=> b!7970113 (=> res!3157763 e!4699401)))

(assert (=> b!7970113 (= res!3157763 (>= lt!2707643 lt!2707651))))

(declare-fun lt!2707641 () Unit!170284)

(assert (=> b!7970113 (= lt!2707641 e!4699397)))

(declare-fun c!1463683 () Bool)

(assert (=> b!7970113 (= c!1463683 (= lt!2707643 lt!2707651))))

(assert (=> b!7970113 (<= lt!2707643 lt!2707651)))

(declare-fun lt!2707653 () Unit!170284)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1146 (List!74758 List!74758) Unit!170284)

(assert (=> b!7970113 (= lt!2707653 (lemmaIsPrefixThenSmallerEqSize!1146 testedP!447 input!7927))))

(declare-fun b!7970114 () Bool)

(declare-fun e!4699398 () Bool)

(assert (=> b!7970114 (= e!4699398 e!4699405)))

(declare-fun res!3157756 () Bool)

(assert (=> b!7970114 (=> res!3157756 e!4699405)))

(declare-fun validRegex!11833 (Regex!21529) Bool)

(assert (=> b!7970114 (= res!3157756 (not (validRegex!11833 r!24602)))))

(assert (=> b!7970114 e!4699396))

(declare-fun res!3157761 () Bool)

(assert (=> b!7970114 (=> res!3157761 e!4699396)))

(assert (=> b!7970114 (= res!3157761 (isEmpty!42935 (_1!38663 lt!2707646)))))

(declare-fun lt!2707645 () List!74758)

(declare-fun lt!2707652 () Regex!21529)

(assert (=> b!7970114 (= lt!2707646 (findLongestMatchInner!2310 lt!2707652 lt!2707645 (size!43465 lt!2707645) (getSuffix!3832 input!7927 lt!2707645) input!7927 lt!2707651))))

(declare-fun lt!2707639 () Unit!170284)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!63 (Regex!21529 Regex!21529 List!74758 List!74758) Unit!170284)

(assert (=> b!7970114 (= lt!2707639 (longestMatchIsAcceptedByMatchOrIsEmptyRec!63 baseR!116 lt!2707652 lt!2707645 input!7927))))

(declare-fun lt!2707647 () Regex!21529)

(assert (=> b!7970114 (= lt!2707647 lt!2707652)))

(declare-fun lt!2707649 () C!43396)

(declare-fun derivativeStep!6555 (Regex!21529 C!43396) Regex!21529)

(assert (=> b!7970114 (= lt!2707652 (derivativeStep!6555 r!24602 lt!2707649))))

(declare-fun derivative!715 (Regex!21529 List!74758) Regex!21529)

(assert (=> b!7970114 (= lt!2707647 (derivative!715 baseR!116 lt!2707645))))

(declare-fun lt!2707648 () Unit!170284)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!237 (Regex!21529 Regex!21529 List!74758 C!43396) Unit!170284)

(assert (=> b!7970114 (= lt!2707648 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!237 baseR!116 r!24602 testedP!447 lt!2707649))))

(declare-fun b!7970115 () Bool)

(assert (=> b!7970115 (= e!4699401 e!4699398)))

(declare-fun res!3157759 () Bool)

(assert (=> b!7970115 (=> res!3157759 e!4699398)))

(declare-fun nullable!9628 (Regex!21529) Bool)

(assert (=> b!7970115 (= res!3157759 (nullable!9628 r!24602))))

(assert (=> b!7970115 (isPrefix!6629 lt!2707645 input!7927)))

(declare-fun lt!2707640 () Unit!170284)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1356 (List!74758 List!74758) Unit!170284)

(assert (=> b!7970115 (= lt!2707640 (lemmaAddHeadSuffixToPrefixStillPrefix!1356 testedP!447 input!7927))))

(assert (=> b!7970115 (= lt!2707645 (++!18399 testedP!447 (Cons!74634 lt!2707649 Nil!74634)))))

(declare-fun head!16281 (List!74758) C!43396)

(assert (=> b!7970115 (= lt!2707649 (head!16281 lt!2707644))))

(declare-fun b!7970116 () Bool)

(assert (=> b!7970116 (= e!4699402 tp_is_empty!53601)))

(declare-fun b!7970117 () Bool)

(assert (=> b!7970117 (= e!4699400 tp_is_empty!53601)))

(declare-fun b!7970118 () Bool)

(declare-fun res!3157757 () Bool)

(assert (=> b!7970118 (=> (not res!3157757) (not e!4699404))))

(assert (=> b!7970118 (= res!3157757 (= (derivative!715 baseR!116 testedP!447) r!24602))))

(declare-fun b!7970119 () Bool)

(declare-fun tp!2375960 () Bool)

(assert (=> b!7970119 (= e!4699402 tp!2375960)))

(declare-fun b!7970120 () Bool)

(declare-fun tp!2375964 () Bool)

(assert (=> b!7970120 (= e!4699400 tp!2375964)))

(declare-fun res!3157764 () Bool)

(assert (=> start!751700 (=> (not res!3157764) (not e!4699404))))

(assert (=> start!751700 (= res!3157764 (validRegex!11833 baseR!116))))

(assert (=> start!751700 e!4699404))

(assert (=> start!751700 e!4699400))

(assert (=> start!751700 e!4699399))

(assert (=> start!751700 e!4699403))

(assert (=> start!751700 e!4699402))

(declare-fun b!7970110 () Bool)

(declare-fun res!3157762 () Bool)

(assert (=> b!7970110 (=> (not res!3157762) (not e!4699404))))

(assert (=> b!7970110 (= res!3157762 (isPrefix!6629 testedP!447 input!7927))))

(assert (= (and start!751700 res!3157764) b!7970110))

(assert (= (and b!7970110 res!3157762) b!7970118))

(assert (= (and b!7970118 res!3157757) b!7970102))

(assert (= (and b!7970102 res!3157760) b!7970104))

(assert (= (and b!7970104 res!3157758) b!7970113))

(assert (= (and b!7970113 c!1463683) b!7970107))

(assert (= (and b!7970113 (not c!1463683)) b!7970108))

(assert (= (and b!7970113 (not res!3157763)) b!7970115))

(assert (= (and b!7970115 (not res!3157759)) b!7970114))

(assert (= (and b!7970114 (not res!3157761)) b!7970105))

(assert (= (and b!7970114 (not res!3157756)) b!7970100))

(get-info :version)

(assert (= (and start!751700 ((_ is ElementMatch!21529) baseR!116)) b!7970117))

(assert (= (and start!751700 ((_ is Concat!30528) baseR!116)) b!7970103))

(assert (= (and start!751700 ((_ is Star!21529) baseR!116)) b!7970120))

(assert (= (and start!751700 ((_ is Union!21529) baseR!116)) b!7970109))

(assert (= (and start!751700 ((_ is Cons!74634) testedP!447)) b!7970106))

(assert (= (and start!751700 ((_ is Cons!74634) input!7927)) b!7970101))

(assert (= (and start!751700 ((_ is ElementMatch!21529) r!24602)) b!7970116))

(assert (= (and start!751700 ((_ is Concat!30528) r!24602)) b!7970112))

(assert (= (and start!751700 ((_ is Star!21529) r!24602)) b!7970119))

(assert (= (and start!751700 ((_ is Union!21529) r!24602)) b!7970111))

(declare-fun m!8348498 () Bool)

(assert (=> b!7970100 m!8348498))

(declare-fun m!8348500 () Bool)

(assert (=> b!7970105 m!8348500))

(declare-fun m!8348502 () Bool)

(assert (=> b!7970107 m!8348502))

(declare-fun m!8348504 () Bool)

(assert (=> b!7970107 m!8348504))

(declare-fun m!8348506 () Bool)

(assert (=> b!7970107 m!8348506))

(declare-fun m!8348508 () Bool)

(assert (=> b!7970102 m!8348508))

(declare-fun m!8348510 () Bool)

(assert (=> b!7970102 m!8348510))

(declare-fun m!8348512 () Bool)

(assert (=> b!7970102 m!8348512))

(declare-fun m!8348514 () Bool)

(assert (=> b!7970102 m!8348514))

(declare-fun m!8348516 () Bool)

(assert (=> b!7970102 m!8348516))

(declare-fun m!8348518 () Bool)

(assert (=> b!7970118 m!8348518))

(declare-fun m!8348520 () Bool)

(assert (=> start!751700 m!8348520))

(declare-fun m!8348522 () Bool)

(assert (=> b!7970110 m!8348522))

(declare-fun m!8348524 () Bool)

(assert (=> b!7970115 m!8348524))

(declare-fun m!8348526 () Bool)

(assert (=> b!7970115 m!8348526))

(declare-fun m!8348528 () Bool)

(assert (=> b!7970115 m!8348528))

(declare-fun m!8348530 () Bool)

(assert (=> b!7970115 m!8348530))

(declare-fun m!8348532 () Bool)

(assert (=> b!7970115 m!8348532))

(declare-fun m!8348534 () Bool)

(assert (=> b!7970114 m!8348534))

(declare-fun m!8348536 () Bool)

(assert (=> b!7970114 m!8348536))

(declare-fun m!8348538 () Bool)

(assert (=> b!7970114 m!8348538))

(assert (=> b!7970114 m!8348536))

(declare-fun m!8348540 () Bool)

(assert (=> b!7970114 m!8348540))

(declare-fun m!8348542 () Bool)

(assert (=> b!7970114 m!8348542))

(declare-fun m!8348544 () Bool)

(assert (=> b!7970114 m!8348544))

(declare-fun m!8348546 () Bool)

(assert (=> b!7970114 m!8348546))

(declare-fun m!8348548 () Bool)

(assert (=> b!7970114 m!8348548))

(declare-fun m!8348550 () Bool)

(assert (=> b!7970114 m!8348550))

(assert (=> b!7970114 m!8348534))

(declare-fun m!8348552 () Bool)

(assert (=> b!7970113 m!8348552))

(check-sat (not b!7970113) (not b!7970102) (not b!7970110) (not b!7970119) (not b!7970103) (not b!7970105) (not b!7970120) (not b!7970115) (not b!7970118) (not b!7970109) (not b!7970101) (not start!751700) (not b!7970107) (not b!7970106) tp_is_empty!53601 (not b!7970100) (not b!7970112) (not b!7970114) (not b!7970111))
(check-sat)
(get-model)

(declare-fun b!7970151 () Bool)

(declare-fun e!4699432 () Bool)

(declare-fun call!739495 () Bool)

(assert (=> b!7970151 (= e!4699432 call!739495)))

(declare-fun b!7970152 () Bool)

(declare-fun e!4699427 () Bool)

(declare-fun e!4699429 () Bool)

(assert (=> b!7970152 (= e!4699427 e!4699429)))

(declare-fun c!1463693 () Bool)

(assert (=> b!7970152 (= c!1463693 ((_ is Union!21529) baseR!116))))

(declare-fun b!7970153 () Bool)

(declare-fun e!4699428 () Bool)

(declare-fun call!739497 () Bool)

(assert (=> b!7970153 (= e!4699428 call!739497)))

(declare-fun c!1463692 () Bool)

(declare-fun bm!739491 () Bool)

(assert (=> bm!739491 (= call!739495 (validRegex!11833 (ite c!1463692 (reg!21858 baseR!116) (ite c!1463693 (regTwo!43571 baseR!116) (regTwo!43570 baseR!116)))))))

(declare-fun bm!739492 () Bool)

(assert (=> bm!739492 (= call!739497 call!739495)))

(declare-fun b!7970154 () Bool)

(declare-fun e!4699431 () Bool)

(assert (=> b!7970154 (= e!4699431 e!4699428)))

(declare-fun res!3157783 () Bool)

(assert (=> b!7970154 (=> (not res!3157783) (not e!4699428))))

(declare-fun call!739496 () Bool)

(assert (=> b!7970154 (= res!3157783 call!739496)))

(declare-fun b!7970155 () Bool)

(assert (=> b!7970155 (= e!4699427 e!4699432)))

(declare-fun res!3157781 () Bool)

(assert (=> b!7970155 (= res!3157781 (not (nullable!9628 (reg!21858 baseR!116))))))

(assert (=> b!7970155 (=> (not res!3157781) (not e!4699432))))

(declare-fun d!2379765 () Bool)

(declare-fun res!3157782 () Bool)

(declare-fun e!4699426 () Bool)

(assert (=> d!2379765 (=> res!3157782 e!4699426)))

(assert (=> d!2379765 (= res!3157782 ((_ is ElementMatch!21529) baseR!116))))

(assert (=> d!2379765 (= (validRegex!11833 baseR!116) e!4699426)))

(declare-fun bm!739490 () Bool)

(assert (=> bm!739490 (= call!739496 (validRegex!11833 (ite c!1463693 (regOne!43571 baseR!116) (regOne!43570 baseR!116))))))

(declare-fun b!7970156 () Bool)

(declare-fun res!3157785 () Bool)

(declare-fun e!4699430 () Bool)

(assert (=> b!7970156 (=> (not res!3157785) (not e!4699430))))

(assert (=> b!7970156 (= res!3157785 call!739496)))

(assert (=> b!7970156 (= e!4699429 e!4699430)))

(declare-fun b!7970157 () Bool)

(assert (=> b!7970157 (= e!4699430 call!739497)))

(declare-fun b!7970158 () Bool)

(assert (=> b!7970158 (= e!4699426 e!4699427)))

(assert (=> b!7970158 (= c!1463692 ((_ is Star!21529) baseR!116))))

(declare-fun b!7970159 () Bool)

(declare-fun res!3157784 () Bool)

(assert (=> b!7970159 (=> res!3157784 e!4699431)))

(assert (=> b!7970159 (= res!3157784 (not ((_ is Concat!30528) baseR!116)))))

(assert (=> b!7970159 (= e!4699429 e!4699431)))

(assert (= (and d!2379765 (not res!3157782)) b!7970158))

(assert (= (and b!7970158 c!1463692) b!7970155))

(assert (= (and b!7970158 (not c!1463692)) b!7970152))

(assert (= (and b!7970155 res!3157781) b!7970151))

(assert (= (and b!7970152 c!1463693) b!7970156))

(assert (= (and b!7970152 (not c!1463693)) b!7970159))

(assert (= (and b!7970156 res!3157785) b!7970157))

(assert (= (and b!7970159 (not res!3157784)) b!7970154))

(assert (= (and b!7970154 res!3157783) b!7970153))

(assert (= (or b!7970157 b!7970153) bm!739492))

(assert (= (or b!7970156 b!7970154) bm!739490))

(assert (= (or b!7970151 bm!739492) bm!739491))

(declare-fun m!8348566 () Bool)

(assert (=> bm!739491 m!8348566))

(declare-fun m!8348568 () Bool)

(assert (=> b!7970155 m!8348568))

(declare-fun m!8348572 () Bool)

(assert (=> bm!739490 m!8348572))

(assert (=> start!751700 d!2379765))

(declare-fun d!2379773 () Bool)

(assert (=> d!2379773 (<= (size!43465 testedP!447) (size!43465 input!7927))))

(declare-fun lt!2707665 () Unit!170284)

(declare-fun choose!60098 (List!74758 List!74758) Unit!170284)

(assert (=> d!2379773 (= lt!2707665 (choose!60098 testedP!447 input!7927))))

(assert (=> d!2379773 (isPrefix!6629 testedP!447 input!7927)))

(assert (=> d!2379773 (= (lemmaIsPrefixThenSmallerEqSize!1146 testedP!447 input!7927) lt!2707665)))

(declare-fun bs!1969959 () Bool)

(assert (= bs!1969959 d!2379773))

(assert (=> bs!1969959 m!8348510))

(assert (=> bs!1969959 m!8348512))

(declare-fun m!8348582 () Bool)

(assert (=> bs!1969959 m!8348582))

(assert (=> bs!1969959 m!8348522))

(assert (=> b!7970113 d!2379773))

(declare-fun d!2379777 () Bool)

(declare-fun lt!2707671 () Int)

(assert (=> d!2379777 (>= lt!2707671 0)))

(declare-fun e!4699444 () Int)

(assert (=> d!2379777 (= lt!2707671 e!4699444)))

(declare-fun c!1463696 () Bool)

(assert (=> d!2379777 (= c!1463696 ((_ is Nil!74634) input!7927))))

(assert (=> d!2379777 (= (size!43465 input!7927) lt!2707671)))

(declare-fun b!7970176 () Bool)

(assert (=> b!7970176 (= e!4699444 0)))

(declare-fun b!7970177 () Bool)

(assert (=> b!7970177 (= e!4699444 (+ 1 (size!43465 (t!390501 input!7927))))))

(assert (= (and d!2379777 c!1463696) b!7970176))

(assert (= (and d!2379777 (not c!1463696)) b!7970177))

(declare-fun m!8348594 () Bool)

(assert (=> b!7970177 m!8348594))

(assert (=> b!7970102 d!2379777))

(declare-fun b!7970343 () Bool)

(declare-fun e!4699548 () tuple2!70720)

(assert (=> b!7970343 (= e!4699548 (tuple2!70721 Nil!74634 input!7927))))

(declare-fun b!7970344 () Bool)

(declare-fun e!4699547 () tuple2!70720)

(declare-fun e!4699541 () tuple2!70720)

(assert (=> b!7970344 (= e!4699547 e!4699541)))

(declare-fun lt!2707852 () tuple2!70720)

(declare-fun call!739552 () tuple2!70720)

(assert (=> b!7970344 (= lt!2707852 call!739552)))

(declare-fun c!1463757 () Bool)

(assert (=> b!7970344 (= c!1463757 (isEmpty!42935 (_1!38663 lt!2707852)))))

(declare-fun b!7970345 () Bool)

(declare-fun e!4699546 () Unit!170284)

(declare-fun Unit!170289 () Unit!170284)

(assert (=> b!7970345 (= e!4699546 Unit!170289)))

(declare-fun lt!2707831 () Unit!170284)

(declare-fun call!739555 () Unit!170284)

(assert (=> b!7970345 (= lt!2707831 call!739555)))

(declare-fun call!739556 () Bool)

(assert (=> b!7970345 call!739556))

(declare-fun lt!2707840 () Unit!170284)

(assert (=> b!7970345 (= lt!2707840 lt!2707831)))

(declare-fun lt!2707828 () Unit!170284)

(declare-fun call!739553 () Unit!170284)

(assert (=> b!7970345 (= lt!2707828 call!739553)))

(assert (=> b!7970345 (= input!7927 testedP!447)))

(declare-fun lt!2707832 () Unit!170284)

(assert (=> b!7970345 (= lt!2707832 lt!2707828)))

(assert (=> b!7970345 false))

(declare-fun b!7970346 () Bool)

(declare-fun c!1463753 () Bool)

(declare-fun call!739557 () Bool)

(assert (=> b!7970346 (= c!1463753 call!739557)))

(declare-fun lt!2707827 () Unit!170284)

(declare-fun lt!2707830 () Unit!170284)

(assert (=> b!7970346 (= lt!2707827 lt!2707830)))

(declare-fun lt!2707843 () C!43396)

(declare-fun lt!2707838 () List!74758)

(assert (=> b!7970346 (= (++!18399 (++!18399 testedP!447 (Cons!74634 lt!2707843 Nil!74634)) lt!2707838) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3548 (List!74758 C!43396 List!74758 List!74758) Unit!170284)

(assert (=> b!7970346 (= lt!2707830 (lemmaMoveElementToOtherListKeepsConcatEq!3548 testedP!447 lt!2707843 lt!2707838 input!7927))))

(declare-fun tail!15810 (List!74758) List!74758)

(assert (=> b!7970346 (= lt!2707838 (tail!15810 lt!2707644))))

(assert (=> b!7970346 (= lt!2707843 (head!16281 lt!2707644))))

(declare-fun lt!2707847 () Unit!170284)

(declare-fun lt!2707835 () Unit!170284)

(assert (=> b!7970346 (= lt!2707847 lt!2707835)))

(assert (=> b!7970346 (isPrefix!6629 (++!18399 testedP!447 (Cons!74634 (head!16281 (getSuffix!3832 input!7927 testedP!447)) Nil!74634)) input!7927)))

(assert (=> b!7970346 (= lt!2707835 (lemmaAddHeadSuffixToPrefixStillPrefix!1356 testedP!447 input!7927))))

(declare-fun lt!2707845 () Unit!170284)

(declare-fun lt!2707844 () Unit!170284)

(assert (=> b!7970346 (= lt!2707845 lt!2707844)))

(assert (=> b!7970346 (= lt!2707844 (lemmaAddHeadSuffixToPrefixStillPrefix!1356 testedP!447 input!7927))))

(declare-fun lt!2707833 () List!74758)

(assert (=> b!7970346 (= lt!2707833 (++!18399 testedP!447 (Cons!74634 (head!16281 lt!2707644) Nil!74634)))))

(declare-fun lt!2707834 () Unit!170284)

(assert (=> b!7970346 (= lt!2707834 e!4699546)))

(declare-fun c!1463752 () Bool)

(assert (=> b!7970346 (= c!1463752 (= (size!43465 testedP!447) (size!43465 input!7927)))))

(declare-fun lt!2707829 () Unit!170284)

(declare-fun lt!2707826 () Unit!170284)

(assert (=> b!7970346 (= lt!2707829 lt!2707826)))

(assert (=> b!7970346 (<= (size!43465 testedP!447) (size!43465 input!7927))))

(assert (=> b!7970346 (= lt!2707826 (lemmaIsPrefixThenSmallerEqSize!1146 testedP!447 input!7927))))

(declare-fun e!4699543 () tuple2!70720)

(assert (=> b!7970346 (= e!4699543 e!4699547)))

(declare-fun b!7970347 () Bool)

(declare-fun e!4699542 () tuple2!70720)

(assert (=> b!7970347 (= e!4699542 e!4699543)))

(declare-fun c!1463754 () Bool)

(assert (=> b!7970347 (= c!1463754 (= lt!2707643 lt!2707651))))

(declare-fun bm!739546 () Bool)

(assert (=> bm!739546 (= call!739556 (isPrefix!6629 input!7927 input!7927))))

(declare-fun bm!739547 () Bool)

(assert (=> bm!739547 (= call!739555 (lemmaIsPrefixRefl!4097 input!7927 input!7927))))

(declare-fun b!7970348 () Bool)

(assert (=> b!7970348 (= e!4699541 (tuple2!70721 testedP!447 lt!2707644))))

(declare-fun b!7970349 () Bool)

(assert (=> b!7970349 (= e!4699541 lt!2707852)))

(declare-fun b!7970350 () Bool)

(declare-fun e!4699545 () Bool)

(declare-fun e!4699544 () Bool)

(assert (=> b!7970350 (= e!4699545 e!4699544)))

(declare-fun res!3157854 () Bool)

(assert (=> b!7970350 (=> res!3157854 e!4699544)))

(declare-fun lt!2707850 () tuple2!70720)

(assert (=> b!7970350 (= res!3157854 (isEmpty!42935 (_1!38663 lt!2707850)))))

(declare-fun b!7970351 () Bool)

(assert (=> b!7970351 (= e!4699548 (tuple2!70721 testedP!447 Nil!74634))))

(declare-fun bm!739548 () Bool)

(declare-fun call!739551 () List!74758)

(declare-fun call!739554 () Regex!21529)

(assert (=> bm!739548 (= call!739552 (findLongestMatchInner!2310 call!739554 lt!2707833 (+ lt!2707643 1) call!739551 input!7927 lt!2707651))))

(declare-fun bm!739549 () Bool)

(declare-fun call!739550 () C!43396)

(assert (=> bm!739549 (= call!739550 (head!16281 lt!2707644))))

(declare-fun bm!739550 () Bool)

(assert (=> bm!739550 (= call!739557 (nullable!9628 r!24602))))

(declare-fun b!7970352 () Bool)

(assert (=> b!7970352 (= e!4699547 call!739552)))

(declare-fun b!7970353 () Bool)

(declare-fun Unit!170291 () Unit!170284)

(assert (=> b!7970353 (= e!4699546 Unit!170291)))

(declare-fun b!7970354 () Bool)

(assert (=> b!7970354 (= e!4699542 (tuple2!70721 Nil!74634 input!7927))))

(declare-fun b!7970355 () Bool)

(assert (=> b!7970355 (= e!4699544 (>= (size!43465 (_1!38663 lt!2707850)) (size!43465 testedP!447)))))

(declare-fun bm!739551 () Bool)

(assert (=> bm!739551 (= call!739554 (derivativeStep!6555 r!24602 call!739550))))

(declare-fun d!2379781 () Bool)

(assert (=> d!2379781 e!4699545))

(declare-fun res!3157853 () Bool)

(assert (=> d!2379781 (=> (not res!3157853) (not e!4699545))))

(assert (=> d!2379781 (= res!3157853 (= (++!18399 (_1!38663 lt!2707850) (_2!38663 lt!2707850)) input!7927))))

(assert (=> d!2379781 (= lt!2707850 e!4699542)))

(declare-fun c!1463755 () Bool)

(declare-fun lostCause!1991 (Regex!21529) Bool)

(assert (=> d!2379781 (= c!1463755 (lostCause!1991 r!24602))))

(declare-fun lt!2707853 () Unit!170284)

(declare-fun Unit!170292 () Unit!170284)

(assert (=> d!2379781 (= lt!2707853 Unit!170292)))

(assert (=> d!2379781 (= (getSuffix!3832 input!7927 testedP!447) lt!2707644)))

(declare-fun lt!2707848 () Unit!170284)

(declare-fun lt!2707849 () Unit!170284)

(assert (=> d!2379781 (= lt!2707848 lt!2707849)))

(declare-fun lt!2707846 () List!74758)

(assert (=> d!2379781 (= lt!2707644 lt!2707846)))

(declare-fun lemmaSamePrefixThenSameSuffix!3007 (List!74758 List!74758 List!74758 List!74758 List!74758) Unit!170284)

(assert (=> d!2379781 (= lt!2707849 (lemmaSamePrefixThenSameSuffix!3007 testedP!447 lt!2707644 testedP!447 lt!2707846 input!7927))))

(assert (=> d!2379781 (= lt!2707846 (getSuffix!3832 input!7927 testedP!447))))

(declare-fun lt!2707841 () Unit!170284)

(declare-fun lt!2707837 () Unit!170284)

(assert (=> d!2379781 (= lt!2707841 lt!2707837)))

(assert (=> d!2379781 (isPrefix!6629 testedP!447 (++!18399 testedP!447 lt!2707644))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3869 (List!74758 List!74758) Unit!170284)

(assert (=> d!2379781 (= lt!2707837 (lemmaConcatTwoListThenFirstIsPrefix!3869 testedP!447 lt!2707644))))

(assert (=> d!2379781 (validRegex!11833 r!24602)))

(assert (=> d!2379781 (= (findLongestMatchInner!2310 r!24602 testedP!447 lt!2707643 lt!2707644 input!7927 lt!2707651) lt!2707850)))

(declare-fun bm!739545 () Bool)

(assert (=> bm!739545 (= call!739551 (tail!15810 lt!2707644))))

(declare-fun bm!739552 () Bool)

(assert (=> bm!739552 (= call!739553 (lemmaIsPrefixSameLengthThenSameList!1677 input!7927 testedP!447 input!7927))))

(declare-fun b!7970356 () Bool)

(declare-fun c!1463756 () Bool)

(assert (=> b!7970356 (= c!1463756 call!739557)))

(declare-fun lt!2707842 () Unit!170284)

(declare-fun lt!2707851 () Unit!170284)

(assert (=> b!7970356 (= lt!2707842 lt!2707851)))

(assert (=> b!7970356 (= input!7927 testedP!447)))

(assert (=> b!7970356 (= lt!2707851 call!739553)))

(declare-fun lt!2707836 () Unit!170284)

(declare-fun lt!2707839 () Unit!170284)

(assert (=> b!7970356 (= lt!2707836 lt!2707839)))

(assert (=> b!7970356 call!739556))

(assert (=> b!7970356 (= lt!2707839 call!739555)))

(assert (=> b!7970356 (= e!4699543 e!4699548)))

(assert (= (and d!2379781 c!1463755) b!7970354))

(assert (= (and d!2379781 (not c!1463755)) b!7970347))

(assert (= (and b!7970347 c!1463754) b!7970356))

(assert (= (and b!7970347 (not c!1463754)) b!7970346))

(assert (= (and b!7970356 c!1463756) b!7970351))

(assert (= (and b!7970356 (not c!1463756)) b!7970343))

(assert (= (and b!7970346 c!1463752) b!7970345))

(assert (= (and b!7970346 (not c!1463752)) b!7970353))

(assert (= (and b!7970346 c!1463753) b!7970344))

(assert (= (and b!7970346 (not c!1463753)) b!7970352))

(assert (= (and b!7970344 c!1463757) b!7970348))

(assert (= (and b!7970344 (not c!1463757)) b!7970349))

(assert (= (or b!7970344 b!7970352) bm!739549))

(assert (= (or b!7970344 b!7970352) bm!739545))

(assert (= (or b!7970344 b!7970352) bm!739551))

(assert (= (or b!7970344 b!7970352) bm!739548))

(assert (= (or b!7970356 b!7970346) bm!739550))

(assert (= (or b!7970356 b!7970345) bm!739552))

(assert (= (or b!7970356 b!7970345) bm!739547))

(assert (= (or b!7970356 b!7970345) bm!739546))

(assert (= (and d!2379781 res!3157853) b!7970350))

(assert (= (and b!7970350 (not res!3157854)) b!7970355))

(declare-fun m!8348676 () Bool)

(assert (=> bm!739551 m!8348676))

(assert (=> bm!739552 m!8348506))

(declare-fun m!8348678 () Bool)

(assert (=> bm!739545 m!8348678))

(declare-fun m!8348680 () Bool)

(assert (=> b!7970346 m!8348680))

(declare-fun m!8348682 () Bool)

(assert (=> b!7970346 m!8348682))

(declare-fun m!8348684 () Bool)

(assert (=> b!7970346 m!8348684))

(assert (=> b!7970346 m!8348532))

(assert (=> b!7970346 m!8348682))

(assert (=> b!7970346 m!8348678))

(assert (=> b!7970346 m!8348510))

(assert (=> b!7970346 m!8348514))

(declare-fun m!8348686 () Bool)

(assert (=> b!7970346 m!8348686))

(assert (=> b!7970346 m!8348552))

(declare-fun m!8348688 () Bool)

(assert (=> b!7970346 m!8348688))

(assert (=> b!7970346 m!8348514))

(assert (=> b!7970346 m!8348688))

(declare-fun m!8348690 () Bool)

(assert (=> b!7970346 m!8348690))

(assert (=> b!7970346 m!8348512))

(declare-fun m!8348696 () Bool)

(assert (=> b!7970346 m!8348696))

(assert (=> b!7970346 m!8348530))

(assert (=> bm!739546 m!8348504))

(assert (=> bm!739550 m!8348526))

(declare-fun m!8348702 () Bool)

(assert (=> d!2379781 m!8348702))

(assert (=> d!2379781 m!8348550))

(declare-fun m!8348706 () Bool)

(assert (=> d!2379781 m!8348706))

(assert (=> d!2379781 m!8348514))

(declare-fun m!8348708 () Bool)

(assert (=> d!2379781 m!8348708))

(assert (=> d!2379781 m!8348498))

(declare-fun m!8348714 () Bool)

(assert (=> d!2379781 m!8348714))

(declare-fun m!8348718 () Bool)

(assert (=> d!2379781 m!8348718))

(assert (=> d!2379781 m!8348498))

(declare-fun m!8348720 () Bool)

(assert (=> b!7970355 m!8348720))

(assert (=> b!7970355 m!8348510))

(assert (=> bm!739549 m!8348532))

(declare-fun m!8348724 () Bool)

(assert (=> bm!739548 m!8348724))

(declare-fun m!8348726 () Bool)

(assert (=> b!7970350 m!8348726))

(declare-fun m!8348730 () Bool)

(assert (=> b!7970344 m!8348730))

(assert (=> bm!739547 m!8348502))

(assert (=> b!7970102 d!2379781))

(declare-fun d!2379809 () Bool)

(declare-fun lt!2707886 () List!74758)

(assert (=> d!2379809 (= (++!18399 testedP!447 lt!2707886) input!7927)))

(declare-fun e!4699561 () List!74758)

(assert (=> d!2379809 (= lt!2707886 e!4699561)))

(declare-fun c!1463768 () Bool)

(assert (=> d!2379809 (= c!1463768 ((_ is Cons!74634) testedP!447))))

(assert (=> d!2379809 (>= (size!43465 input!7927) (size!43465 testedP!447))))

(assert (=> d!2379809 (= (getSuffix!3832 input!7927 testedP!447) lt!2707886)))

(declare-fun b!7970379 () Bool)

(assert (=> b!7970379 (= e!4699561 (getSuffix!3832 (tail!15810 input!7927) (t!390501 testedP!447)))))

(declare-fun b!7970380 () Bool)

(assert (=> b!7970380 (= e!4699561 input!7927)))

(assert (= (and d!2379809 c!1463768) b!7970379))

(assert (= (and d!2379809 (not c!1463768)) b!7970380))

(declare-fun m!8348760 () Bool)

(assert (=> d!2379809 m!8348760))

(assert (=> d!2379809 m!8348512))

(assert (=> d!2379809 m!8348510))

(declare-fun m!8348762 () Bool)

(assert (=> b!7970379 m!8348762))

(assert (=> b!7970379 m!8348762))

(declare-fun m!8348764 () Bool)

(assert (=> b!7970379 m!8348764))

(assert (=> b!7970102 d!2379809))

(declare-fun d!2379815 () Bool)

(declare-fun lt!2707887 () Int)

(assert (=> d!2379815 (>= lt!2707887 0)))

(declare-fun e!4699562 () Int)

(assert (=> d!2379815 (= lt!2707887 e!4699562)))

(declare-fun c!1463769 () Bool)

(assert (=> d!2379815 (= c!1463769 ((_ is Nil!74634) testedP!447))))

(assert (=> d!2379815 (= (size!43465 testedP!447) lt!2707887)))

(declare-fun b!7970381 () Bool)

(assert (=> b!7970381 (= e!4699562 0)))

(declare-fun b!7970382 () Bool)

(assert (=> b!7970382 (= e!4699562 (+ 1 (size!43465 (t!390501 testedP!447))))))

(assert (= (and d!2379815 c!1463769) b!7970381))

(assert (= (and d!2379815 (not c!1463769)) b!7970382))

(declare-fun m!8348766 () Bool)

(assert (=> b!7970382 m!8348766))

(assert (=> b!7970102 d!2379815))

(declare-fun d!2379817 () Bool)

(assert (=> d!2379817 (= (isEmpty!42935 (_1!38663 (findLongestMatchInner!2310 r!24602 testedP!447 lt!2707643 lt!2707644 input!7927 lt!2707651))) ((_ is Nil!74634) (_1!38663 (findLongestMatchInner!2310 r!24602 testedP!447 lt!2707643 lt!2707644 input!7927 lt!2707651))))))

(assert (=> b!7970102 d!2379817))

(declare-fun d!2379819 () Bool)

(declare-fun lt!2707892 () Regex!21529)

(assert (=> d!2379819 (validRegex!11833 lt!2707892)))

(declare-fun e!4699575 () Regex!21529)

(assert (=> d!2379819 (= lt!2707892 e!4699575)))

(declare-fun c!1463782 () Bool)

(assert (=> d!2379819 (= c!1463782 ((_ is Cons!74634) testedP!447))))

(assert (=> d!2379819 (validRegex!11833 baseR!116)))

(assert (=> d!2379819 (= (derivative!715 baseR!116 testedP!447) lt!2707892)))

(declare-fun b!7970407 () Bool)

(assert (=> b!7970407 (= e!4699575 (derivative!715 (derivativeStep!6555 baseR!116 (h!81082 testedP!447)) (t!390501 testedP!447)))))

(declare-fun b!7970408 () Bool)

(assert (=> b!7970408 (= e!4699575 baseR!116)))

(assert (= (and d!2379819 c!1463782) b!7970407))

(assert (= (and d!2379819 (not c!1463782)) b!7970408))

(declare-fun m!8348768 () Bool)

(assert (=> d!2379819 m!8348768))

(assert (=> d!2379819 m!8348520))

(declare-fun m!8348770 () Bool)

(assert (=> b!7970407 m!8348770))

(assert (=> b!7970407 m!8348770))

(declare-fun m!8348772 () Bool)

(assert (=> b!7970407 m!8348772))

(assert (=> b!7970118 d!2379819))

(declare-fun d!2379821 () Bool)

(assert (=> d!2379821 (isPrefix!6629 (++!18399 testedP!447 (Cons!74634 (head!16281 (getSuffix!3832 input!7927 testedP!447)) Nil!74634)) input!7927)))

(declare-fun lt!2707895 () Unit!170284)

(declare-fun choose!60099 (List!74758 List!74758) Unit!170284)

(assert (=> d!2379821 (= lt!2707895 (choose!60099 testedP!447 input!7927))))

(assert (=> d!2379821 (isPrefix!6629 testedP!447 input!7927)))

(assert (=> d!2379821 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1356 testedP!447 input!7927) lt!2707895)))

(declare-fun bs!1969961 () Bool)

(assert (= bs!1969961 d!2379821))

(assert (=> bs!1969961 m!8348682))

(assert (=> bs!1969961 m!8348684))

(assert (=> bs!1969961 m!8348682))

(assert (=> bs!1969961 m!8348514))

(assert (=> bs!1969961 m!8348686))

(declare-fun m!8348774 () Bool)

(assert (=> bs!1969961 m!8348774))

(assert (=> bs!1969961 m!8348522))

(assert (=> bs!1969961 m!8348514))

(assert (=> b!7970115 d!2379821))

(declare-fun d!2379823 () Bool)

(assert (=> d!2379823 (= (head!16281 lt!2707644) (h!81082 lt!2707644))))

(assert (=> b!7970115 d!2379823))

(declare-fun b!7970439 () Bool)

(declare-fun e!4699594 () List!74758)

(assert (=> b!7970439 (= e!4699594 (Cons!74634 (h!81082 testedP!447) (++!18399 (t!390501 testedP!447) (Cons!74634 lt!2707649 Nil!74634))))))

(declare-fun d!2379825 () Bool)

(declare-fun e!4699593 () Bool)

(assert (=> d!2379825 e!4699593))

(declare-fun res!3157867 () Bool)

(assert (=> d!2379825 (=> (not res!3157867) (not e!4699593))))

(declare-fun lt!2707900 () List!74758)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15860 (List!74758) (InoxSet C!43396))

(assert (=> d!2379825 (= res!3157867 (= (content!15860 lt!2707900) ((_ map or) (content!15860 testedP!447) (content!15860 (Cons!74634 lt!2707649 Nil!74634)))))))

(assert (=> d!2379825 (= lt!2707900 e!4699594)))

(declare-fun c!1463793 () Bool)

(assert (=> d!2379825 (= c!1463793 ((_ is Nil!74634) testedP!447))))

(assert (=> d!2379825 (= (++!18399 testedP!447 (Cons!74634 lt!2707649 Nil!74634)) lt!2707900)))

(declare-fun b!7970440 () Bool)

(declare-fun res!3157866 () Bool)

(assert (=> b!7970440 (=> (not res!3157866) (not e!4699593))))

(assert (=> b!7970440 (= res!3157866 (= (size!43465 lt!2707900) (+ (size!43465 testedP!447) (size!43465 (Cons!74634 lt!2707649 Nil!74634)))))))

(declare-fun b!7970441 () Bool)

(assert (=> b!7970441 (= e!4699593 (or (not (= (Cons!74634 lt!2707649 Nil!74634) Nil!74634)) (= lt!2707900 testedP!447)))))

(declare-fun b!7970438 () Bool)

(assert (=> b!7970438 (= e!4699594 (Cons!74634 lt!2707649 Nil!74634))))

(assert (= (and d!2379825 c!1463793) b!7970438))

(assert (= (and d!2379825 (not c!1463793)) b!7970439))

(assert (= (and d!2379825 res!3157867) b!7970440))

(assert (= (and b!7970440 res!3157866) b!7970441))

(declare-fun m!8348794 () Bool)

(assert (=> b!7970439 m!8348794))

(declare-fun m!8348796 () Bool)

(assert (=> d!2379825 m!8348796))

(declare-fun m!8348798 () Bool)

(assert (=> d!2379825 m!8348798))

(declare-fun m!8348800 () Bool)

(assert (=> d!2379825 m!8348800))

(declare-fun m!8348802 () Bool)

(assert (=> b!7970440 m!8348802))

(assert (=> b!7970440 m!8348510))

(declare-fun m!8348804 () Bool)

(assert (=> b!7970440 m!8348804))

(assert (=> b!7970115 d!2379825))

(declare-fun d!2379833 () Bool)

(declare-fun nullableFct!3802 (Regex!21529) Bool)

(assert (=> d!2379833 (= (nullable!9628 r!24602) (nullableFct!3802 r!24602))))

(declare-fun bs!1969962 () Bool)

(assert (= bs!1969962 d!2379833))

(declare-fun m!8348806 () Bool)

(assert (=> bs!1969962 m!8348806))

(assert (=> b!7970115 d!2379833))

(declare-fun d!2379835 () Bool)

(declare-fun e!4699604 () Bool)

(assert (=> d!2379835 e!4699604))

(declare-fun res!3157878 () Bool)

(assert (=> d!2379835 (=> res!3157878 e!4699604)))

(declare-fun lt!2707907 () Bool)

(assert (=> d!2379835 (= res!3157878 (not lt!2707907))))

(declare-fun e!4699603 () Bool)

(assert (=> d!2379835 (= lt!2707907 e!4699603)))

(declare-fun res!3157877 () Bool)

(assert (=> d!2379835 (=> res!3157877 e!4699603)))

(assert (=> d!2379835 (= res!3157877 ((_ is Nil!74634) lt!2707645))))

(assert (=> d!2379835 (= (isPrefix!6629 lt!2707645 input!7927) lt!2707907)))

(declare-fun b!7970452 () Bool)

(declare-fun e!4699602 () Bool)

(assert (=> b!7970452 (= e!4699603 e!4699602)))

(declare-fun res!3157879 () Bool)

(assert (=> b!7970452 (=> (not res!3157879) (not e!4699602))))

(assert (=> b!7970452 (= res!3157879 (not ((_ is Nil!74634) input!7927)))))

(declare-fun b!7970453 () Bool)

(declare-fun res!3157876 () Bool)

(assert (=> b!7970453 (=> (not res!3157876) (not e!4699602))))

(assert (=> b!7970453 (= res!3157876 (= (head!16281 lt!2707645) (head!16281 input!7927)))))

(declare-fun b!7970454 () Bool)

(assert (=> b!7970454 (= e!4699602 (isPrefix!6629 (tail!15810 lt!2707645) (tail!15810 input!7927)))))

(declare-fun b!7970455 () Bool)

(assert (=> b!7970455 (= e!4699604 (>= (size!43465 input!7927) (size!43465 lt!2707645)))))

(assert (= (and d!2379835 (not res!3157877)) b!7970452))

(assert (= (and b!7970452 res!3157879) b!7970453))

(assert (= (and b!7970453 res!3157876) b!7970454))

(assert (= (and d!2379835 (not res!3157878)) b!7970455))

(declare-fun m!8348818 () Bool)

(assert (=> b!7970453 m!8348818))

(declare-fun m!8348820 () Bool)

(assert (=> b!7970453 m!8348820))

(declare-fun m!8348822 () Bool)

(assert (=> b!7970454 m!8348822))

(assert (=> b!7970454 m!8348762))

(assert (=> b!7970454 m!8348822))

(assert (=> b!7970454 m!8348762))

(declare-fun m!8348824 () Bool)

(assert (=> b!7970454 m!8348824))

(assert (=> b!7970455 m!8348512))

(assert (=> b!7970455 m!8348534))

(assert (=> b!7970115 d!2379835))

(declare-fun d!2379841 () Bool)

(declare-fun lt!2707908 () List!74758)

(assert (=> d!2379841 (= (++!18399 lt!2707645 lt!2707908) input!7927)))

(declare-fun e!4699605 () List!74758)

(assert (=> d!2379841 (= lt!2707908 e!4699605)))

(declare-fun c!1463796 () Bool)

(assert (=> d!2379841 (= c!1463796 ((_ is Cons!74634) lt!2707645))))

(assert (=> d!2379841 (>= (size!43465 input!7927) (size!43465 lt!2707645))))

(assert (=> d!2379841 (= (getSuffix!3832 input!7927 lt!2707645) lt!2707908)))

(declare-fun b!7970456 () Bool)

(assert (=> b!7970456 (= e!4699605 (getSuffix!3832 (tail!15810 input!7927) (t!390501 lt!2707645)))))

(declare-fun b!7970457 () Bool)

(assert (=> b!7970457 (= e!4699605 input!7927)))

(assert (= (and d!2379841 c!1463796) b!7970456))

(assert (= (and d!2379841 (not c!1463796)) b!7970457))

(declare-fun m!8348826 () Bool)

(assert (=> d!2379841 m!8348826))

(assert (=> d!2379841 m!8348512))

(assert (=> d!2379841 m!8348534))

(assert (=> b!7970456 m!8348762))

(assert (=> b!7970456 m!8348762))

(declare-fun m!8348828 () Bool)

(assert (=> b!7970456 m!8348828))

(assert (=> b!7970114 d!2379841))

(declare-fun b!7970458 () Bool)

(declare-fun e!4699613 () tuple2!70720)

(assert (=> b!7970458 (= e!4699613 (tuple2!70721 Nil!74634 input!7927))))

(declare-fun b!7970459 () Bool)

(declare-fun e!4699612 () tuple2!70720)

(declare-fun e!4699606 () tuple2!70720)

(assert (=> b!7970459 (= e!4699612 e!4699606)))

(declare-fun lt!2707935 () tuple2!70720)

(declare-fun call!739583 () tuple2!70720)

(assert (=> b!7970459 (= lt!2707935 call!739583)))

(declare-fun c!1463802 () Bool)

(assert (=> b!7970459 (= c!1463802 (isEmpty!42935 (_1!38663 lt!2707935)))))

(declare-fun b!7970460 () Bool)

(declare-fun e!4699611 () Unit!170284)

(declare-fun Unit!170297 () Unit!170284)

(assert (=> b!7970460 (= e!4699611 Unit!170297)))

(declare-fun lt!2707914 () Unit!170284)

(declare-fun call!739586 () Unit!170284)

(assert (=> b!7970460 (= lt!2707914 call!739586)))

(declare-fun call!739587 () Bool)

(assert (=> b!7970460 call!739587))

(declare-fun lt!2707923 () Unit!170284)

(assert (=> b!7970460 (= lt!2707923 lt!2707914)))

(declare-fun lt!2707911 () Unit!170284)

(declare-fun call!739584 () Unit!170284)

(assert (=> b!7970460 (= lt!2707911 call!739584)))

(assert (=> b!7970460 (= input!7927 lt!2707645)))

(declare-fun lt!2707915 () Unit!170284)

(assert (=> b!7970460 (= lt!2707915 lt!2707911)))

(assert (=> b!7970460 false))

(declare-fun b!7970461 () Bool)

(declare-fun c!1463798 () Bool)

(declare-fun call!739588 () Bool)

(assert (=> b!7970461 (= c!1463798 call!739588)))

(declare-fun lt!2707910 () Unit!170284)

(declare-fun lt!2707913 () Unit!170284)

(assert (=> b!7970461 (= lt!2707910 lt!2707913)))

(declare-fun lt!2707921 () List!74758)

(declare-fun lt!2707926 () C!43396)

(assert (=> b!7970461 (= (++!18399 (++!18399 lt!2707645 (Cons!74634 lt!2707926 Nil!74634)) lt!2707921) input!7927)))

(assert (=> b!7970461 (= lt!2707913 (lemmaMoveElementToOtherListKeepsConcatEq!3548 lt!2707645 lt!2707926 lt!2707921 input!7927))))

(assert (=> b!7970461 (= lt!2707921 (tail!15810 (getSuffix!3832 input!7927 lt!2707645)))))

(assert (=> b!7970461 (= lt!2707926 (head!16281 (getSuffix!3832 input!7927 lt!2707645)))))

(declare-fun lt!2707930 () Unit!170284)

(declare-fun lt!2707918 () Unit!170284)

(assert (=> b!7970461 (= lt!2707930 lt!2707918)))

(assert (=> b!7970461 (isPrefix!6629 (++!18399 lt!2707645 (Cons!74634 (head!16281 (getSuffix!3832 input!7927 lt!2707645)) Nil!74634)) input!7927)))

(assert (=> b!7970461 (= lt!2707918 (lemmaAddHeadSuffixToPrefixStillPrefix!1356 lt!2707645 input!7927))))

(declare-fun lt!2707928 () Unit!170284)

(declare-fun lt!2707927 () Unit!170284)

(assert (=> b!7970461 (= lt!2707928 lt!2707927)))

(assert (=> b!7970461 (= lt!2707927 (lemmaAddHeadSuffixToPrefixStillPrefix!1356 lt!2707645 input!7927))))

(declare-fun lt!2707916 () List!74758)

(assert (=> b!7970461 (= lt!2707916 (++!18399 lt!2707645 (Cons!74634 (head!16281 (getSuffix!3832 input!7927 lt!2707645)) Nil!74634)))))

(declare-fun lt!2707917 () Unit!170284)

(assert (=> b!7970461 (= lt!2707917 e!4699611)))

(declare-fun c!1463797 () Bool)

(assert (=> b!7970461 (= c!1463797 (= (size!43465 lt!2707645) (size!43465 input!7927)))))

(declare-fun lt!2707912 () Unit!170284)

(declare-fun lt!2707909 () Unit!170284)

(assert (=> b!7970461 (= lt!2707912 lt!2707909)))

(assert (=> b!7970461 (<= (size!43465 lt!2707645) (size!43465 input!7927))))

(assert (=> b!7970461 (= lt!2707909 (lemmaIsPrefixThenSmallerEqSize!1146 lt!2707645 input!7927))))

(declare-fun e!4699608 () tuple2!70720)

(assert (=> b!7970461 (= e!4699608 e!4699612)))

(declare-fun b!7970462 () Bool)

(declare-fun e!4699607 () tuple2!70720)

(assert (=> b!7970462 (= e!4699607 e!4699608)))

(declare-fun c!1463799 () Bool)

(assert (=> b!7970462 (= c!1463799 (= (size!43465 lt!2707645) lt!2707651))))

(declare-fun bm!739577 () Bool)

(assert (=> bm!739577 (= call!739587 (isPrefix!6629 input!7927 input!7927))))

(declare-fun bm!739578 () Bool)

(assert (=> bm!739578 (= call!739586 (lemmaIsPrefixRefl!4097 input!7927 input!7927))))

(declare-fun b!7970463 () Bool)

(assert (=> b!7970463 (= e!4699606 (tuple2!70721 lt!2707645 (getSuffix!3832 input!7927 lt!2707645)))))

(declare-fun b!7970464 () Bool)

(assert (=> b!7970464 (= e!4699606 lt!2707935)))

(declare-fun b!7970465 () Bool)

(declare-fun e!4699610 () Bool)

(declare-fun e!4699609 () Bool)

(assert (=> b!7970465 (= e!4699610 e!4699609)))

(declare-fun res!3157881 () Bool)

(assert (=> b!7970465 (=> res!3157881 e!4699609)))

(declare-fun lt!2707933 () tuple2!70720)

(assert (=> b!7970465 (= res!3157881 (isEmpty!42935 (_1!38663 lt!2707933)))))

(declare-fun b!7970466 () Bool)

(assert (=> b!7970466 (= e!4699613 (tuple2!70721 lt!2707645 Nil!74634))))

(declare-fun call!739585 () Regex!21529)

(declare-fun call!739582 () List!74758)

(declare-fun bm!739579 () Bool)

(assert (=> bm!739579 (= call!739583 (findLongestMatchInner!2310 call!739585 lt!2707916 (+ (size!43465 lt!2707645) 1) call!739582 input!7927 lt!2707651))))

(declare-fun bm!739580 () Bool)

(declare-fun call!739581 () C!43396)

(assert (=> bm!739580 (= call!739581 (head!16281 (getSuffix!3832 input!7927 lt!2707645)))))

(declare-fun bm!739581 () Bool)

(assert (=> bm!739581 (= call!739588 (nullable!9628 lt!2707652))))

(declare-fun b!7970467 () Bool)

(assert (=> b!7970467 (= e!4699612 call!739583)))

(declare-fun b!7970468 () Bool)

(declare-fun Unit!170298 () Unit!170284)

(assert (=> b!7970468 (= e!4699611 Unit!170298)))

(declare-fun b!7970469 () Bool)

(assert (=> b!7970469 (= e!4699607 (tuple2!70721 Nil!74634 input!7927))))

(declare-fun b!7970470 () Bool)

(assert (=> b!7970470 (= e!4699609 (>= (size!43465 (_1!38663 lt!2707933)) (size!43465 lt!2707645)))))

(declare-fun bm!739582 () Bool)

(assert (=> bm!739582 (= call!739585 (derivativeStep!6555 lt!2707652 call!739581))))

(declare-fun d!2379843 () Bool)

(assert (=> d!2379843 e!4699610))

(declare-fun res!3157880 () Bool)

(assert (=> d!2379843 (=> (not res!3157880) (not e!4699610))))

(assert (=> d!2379843 (= res!3157880 (= (++!18399 (_1!38663 lt!2707933) (_2!38663 lt!2707933)) input!7927))))

(assert (=> d!2379843 (= lt!2707933 e!4699607)))

(declare-fun c!1463800 () Bool)

(assert (=> d!2379843 (= c!1463800 (lostCause!1991 lt!2707652))))

(declare-fun lt!2707936 () Unit!170284)

(declare-fun Unit!170299 () Unit!170284)

(assert (=> d!2379843 (= lt!2707936 Unit!170299)))

(assert (=> d!2379843 (= (getSuffix!3832 input!7927 lt!2707645) (getSuffix!3832 input!7927 lt!2707645))))

(declare-fun lt!2707931 () Unit!170284)

(declare-fun lt!2707932 () Unit!170284)

(assert (=> d!2379843 (= lt!2707931 lt!2707932)))

(declare-fun lt!2707929 () List!74758)

(assert (=> d!2379843 (= (getSuffix!3832 input!7927 lt!2707645) lt!2707929)))

(assert (=> d!2379843 (= lt!2707932 (lemmaSamePrefixThenSameSuffix!3007 lt!2707645 (getSuffix!3832 input!7927 lt!2707645) lt!2707645 lt!2707929 input!7927))))

(assert (=> d!2379843 (= lt!2707929 (getSuffix!3832 input!7927 lt!2707645))))

(declare-fun lt!2707924 () Unit!170284)

(declare-fun lt!2707920 () Unit!170284)

(assert (=> d!2379843 (= lt!2707924 lt!2707920)))

(assert (=> d!2379843 (isPrefix!6629 lt!2707645 (++!18399 lt!2707645 (getSuffix!3832 input!7927 lt!2707645)))))

(assert (=> d!2379843 (= lt!2707920 (lemmaConcatTwoListThenFirstIsPrefix!3869 lt!2707645 (getSuffix!3832 input!7927 lt!2707645)))))

(assert (=> d!2379843 (validRegex!11833 lt!2707652)))

(assert (=> d!2379843 (= (findLongestMatchInner!2310 lt!2707652 lt!2707645 (size!43465 lt!2707645) (getSuffix!3832 input!7927 lt!2707645) input!7927 lt!2707651) lt!2707933)))

(declare-fun bm!739576 () Bool)

(assert (=> bm!739576 (= call!739582 (tail!15810 (getSuffix!3832 input!7927 lt!2707645)))))

(declare-fun bm!739583 () Bool)

(assert (=> bm!739583 (= call!739584 (lemmaIsPrefixSameLengthThenSameList!1677 input!7927 lt!2707645 input!7927))))

(declare-fun b!7970471 () Bool)

(declare-fun c!1463801 () Bool)

(assert (=> b!7970471 (= c!1463801 call!739588)))

(declare-fun lt!2707925 () Unit!170284)

(declare-fun lt!2707934 () Unit!170284)

(assert (=> b!7970471 (= lt!2707925 lt!2707934)))

(assert (=> b!7970471 (= input!7927 lt!2707645)))

(assert (=> b!7970471 (= lt!2707934 call!739584)))

(declare-fun lt!2707919 () Unit!170284)

(declare-fun lt!2707922 () Unit!170284)

(assert (=> b!7970471 (= lt!2707919 lt!2707922)))

(assert (=> b!7970471 call!739587))

(assert (=> b!7970471 (= lt!2707922 call!739586)))

(assert (=> b!7970471 (= e!4699608 e!4699613)))

(assert (= (and d!2379843 c!1463800) b!7970469))

(assert (= (and d!2379843 (not c!1463800)) b!7970462))

(assert (= (and b!7970462 c!1463799) b!7970471))

(assert (= (and b!7970462 (not c!1463799)) b!7970461))

(assert (= (and b!7970471 c!1463801) b!7970466))

(assert (= (and b!7970471 (not c!1463801)) b!7970458))

(assert (= (and b!7970461 c!1463797) b!7970460))

(assert (= (and b!7970461 (not c!1463797)) b!7970468))

(assert (= (and b!7970461 c!1463798) b!7970459))

(assert (= (and b!7970461 (not c!1463798)) b!7970467))

(assert (= (and b!7970459 c!1463802) b!7970463))

(assert (= (and b!7970459 (not c!1463802)) b!7970464))

(assert (= (or b!7970459 b!7970467) bm!739580))

(assert (= (or b!7970459 b!7970467) bm!739576))

(assert (= (or b!7970459 b!7970467) bm!739582))

(assert (= (or b!7970459 b!7970467) bm!739579))

(assert (= (or b!7970471 b!7970461) bm!739581))

(assert (= (or b!7970471 b!7970460) bm!739583))

(assert (= (or b!7970471 b!7970460) bm!739578))

(assert (= (or b!7970471 b!7970460) bm!739577))

(assert (= (and d!2379843 res!3157880) b!7970465))

(assert (= (and b!7970465 (not res!3157881)) b!7970470))

(declare-fun m!8348830 () Bool)

(assert (=> bm!739582 m!8348830))

(declare-fun m!8348832 () Bool)

(assert (=> bm!739583 m!8348832))

(assert (=> bm!739576 m!8348536))

(declare-fun m!8348834 () Bool)

(assert (=> bm!739576 m!8348834))

(declare-fun m!8348836 () Bool)

(assert (=> b!7970461 m!8348836))

(assert (=> b!7970461 m!8348836))

(declare-fun m!8348838 () Bool)

(assert (=> b!7970461 m!8348838))

(assert (=> b!7970461 m!8348536))

(declare-fun m!8348840 () Bool)

(assert (=> b!7970461 m!8348840))

(assert (=> b!7970461 m!8348836))

(assert (=> b!7970461 m!8348536))

(assert (=> b!7970461 m!8348834))

(assert (=> b!7970461 m!8348534))

(assert (=> b!7970461 m!8348536))

(assert (=> b!7970461 m!8348840))

(declare-fun m!8348842 () Bool)

(assert (=> b!7970461 m!8348842))

(declare-fun m!8348844 () Bool)

(assert (=> b!7970461 m!8348844))

(assert (=> b!7970461 m!8348536))

(assert (=> b!7970461 m!8348844))

(declare-fun m!8348846 () Bool)

(assert (=> b!7970461 m!8348846))

(assert (=> b!7970461 m!8348512))

(declare-fun m!8348848 () Bool)

(assert (=> b!7970461 m!8348848))

(declare-fun m!8348850 () Bool)

(assert (=> b!7970461 m!8348850))

(assert (=> bm!739577 m!8348504))

(declare-fun m!8348852 () Bool)

(assert (=> bm!739581 m!8348852))

(declare-fun m!8348854 () Bool)

(assert (=> d!2379843 m!8348854))

(declare-fun m!8348856 () Bool)

(assert (=> d!2379843 m!8348856))

(declare-fun m!8348858 () Bool)

(assert (=> d!2379843 m!8348858))

(assert (=> d!2379843 m!8348536))

(assert (=> d!2379843 m!8348536))

(declare-fun m!8348860 () Bool)

(assert (=> d!2379843 m!8348860))

(declare-fun m!8348862 () Bool)

(assert (=> d!2379843 m!8348862))

(declare-fun m!8348864 () Bool)

(assert (=> d!2379843 m!8348864))

(assert (=> d!2379843 m!8348536))

(declare-fun m!8348866 () Bool)

(assert (=> d!2379843 m!8348866))

(assert (=> d!2379843 m!8348536))

(assert (=> d!2379843 m!8348862))

(declare-fun m!8348868 () Bool)

(assert (=> b!7970470 m!8348868))

(assert (=> b!7970470 m!8348534))

(assert (=> bm!739580 m!8348536))

(assert (=> bm!739580 m!8348840))

(declare-fun m!8348870 () Bool)

(assert (=> bm!739579 m!8348870))

(declare-fun m!8348872 () Bool)

(assert (=> b!7970465 m!8348872))

(declare-fun m!8348874 () Bool)

(assert (=> b!7970459 m!8348874))

(assert (=> bm!739578 m!8348502))

(assert (=> b!7970114 d!2379843))

(declare-fun d!2379845 () Bool)

(declare-fun lt!2707939 () Int)

(assert (=> d!2379845 (>= lt!2707939 0)))

(declare-fun e!4699616 () Int)

(assert (=> d!2379845 (= lt!2707939 e!4699616)))

(declare-fun c!1463803 () Bool)

(assert (=> d!2379845 (= c!1463803 ((_ is Nil!74634) lt!2707645))))

(assert (=> d!2379845 (= (size!43465 lt!2707645) lt!2707939)))

(declare-fun b!7970472 () Bool)

(assert (=> b!7970472 (= e!4699616 0)))

(declare-fun b!7970473 () Bool)

(assert (=> b!7970473 (= e!4699616 (+ 1 (size!43465 (t!390501 lt!2707645))))))

(assert (= (and d!2379845 c!1463803) b!7970472))

(assert (= (and d!2379845 (not c!1463803)) b!7970473))

(declare-fun m!8348876 () Bool)

(assert (=> b!7970473 m!8348876))

(assert (=> b!7970114 d!2379845))

(declare-fun bm!739592 () Bool)

(declare-fun call!739598 () Regex!21529)

(declare-fun c!1463817 () Bool)

(declare-fun c!1463816 () Bool)

(assert (=> bm!739592 (= call!739598 (derivativeStep!6555 (ite c!1463816 (regOne!43571 r!24602) (ite c!1463817 (regTwo!43570 r!24602) (regOne!43570 r!24602))) lt!2707649))))

(declare-fun b!7970557 () Bool)

(assert (=> b!7970557 (= c!1463817 (nullable!9628 (regOne!43570 r!24602)))))

(declare-fun e!4699648 () Regex!21529)

(declare-fun e!4699651 () Regex!21529)

(assert (=> b!7970557 (= e!4699648 e!4699651)))

(declare-fun d!2379847 () Bool)

(declare-fun lt!2707950 () Regex!21529)

(assert (=> d!2379847 (validRegex!11833 lt!2707950)))

(declare-fun e!4699649 () Regex!21529)

(assert (=> d!2379847 (= lt!2707950 e!4699649)))

(declare-fun c!1463818 () Bool)

(assert (=> d!2379847 (= c!1463818 (or ((_ is EmptyExpr!21529) r!24602) ((_ is EmptyLang!21529) r!24602)))))

(assert (=> d!2379847 (validRegex!11833 r!24602)))

(assert (=> d!2379847 (= (derivativeStep!6555 r!24602 lt!2707649) lt!2707950)))

(declare-fun b!7970558 () Bool)

(declare-fun e!4699647 () Regex!21529)

(assert (=> b!7970558 (= e!4699647 e!4699648)))

(declare-fun c!1463815 () Bool)

(assert (=> b!7970558 (= c!1463815 ((_ is Star!21529) r!24602))))

(declare-fun bm!739593 () Bool)

(declare-fun call!739597 () Regex!21529)

(declare-fun call!739599 () Regex!21529)

(assert (=> bm!739593 (= call!739597 call!739599)))

(declare-fun b!7970559 () Bool)

(declare-fun call!739600 () Regex!21529)

(assert (=> b!7970559 (= e!4699651 (Union!21529 (Concat!30528 call!739597 (regTwo!43570 r!24602)) call!739600))))

(declare-fun bm!739594 () Bool)

(assert (=> bm!739594 (= call!739599 (derivativeStep!6555 (ite c!1463816 (regTwo!43571 r!24602) (ite c!1463815 (reg!21858 r!24602) (regOne!43570 r!24602))) lt!2707649))))

(declare-fun b!7970560 () Bool)

(assert (=> b!7970560 (= e!4699648 (Concat!30528 call!739597 r!24602))))

(declare-fun b!7970561 () Bool)

(declare-fun e!4699650 () Regex!21529)

(assert (=> b!7970561 (= e!4699649 e!4699650)))

(declare-fun c!1463814 () Bool)

(assert (=> b!7970561 (= c!1463814 ((_ is ElementMatch!21529) r!24602))))

(declare-fun bm!739595 () Bool)

(assert (=> bm!739595 (= call!739600 call!739598)))

(declare-fun b!7970562 () Bool)

(assert (=> b!7970562 (= e!4699647 (Union!21529 call!739598 call!739599))))

(declare-fun b!7970563 () Bool)

(assert (=> b!7970563 (= e!4699649 EmptyLang!21529)))

(declare-fun b!7970564 () Bool)

(assert (=> b!7970564 (= c!1463816 ((_ is Union!21529) r!24602))))

(assert (=> b!7970564 (= e!4699650 e!4699647)))

(declare-fun b!7970565 () Bool)

(assert (=> b!7970565 (= e!4699651 (Union!21529 (Concat!30528 call!739600 (regTwo!43570 r!24602)) EmptyLang!21529))))

(declare-fun b!7970566 () Bool)

(assert (=> b!7970566 (= e!4699650 (ite (= lt!2707649 (c!1463684 r!24602)) EmptyExpr!21529 EmptyLang!21529))))

(assert (= (and d!2379847 c!1463818) b!7970563))

(assert (= (and d!2379847 (not c!1463818)) b!7970561))

(assert (= (and b!7970561 c!1463814) b!7970566))

(assert (= (and b!7970561 (not c!1463814)) b!7970564))

(assert (= (and b!7970564 c!1463816) b!7970562))

(assert (= (and b!7970564 (not c!1463816)) b!7970558))

(assert (= (and b!7970558 c!1463815) b!7970560))

(assert (= (and b!7970558 (not c!1463815)) b!7970557))

(assert (= (and b!7970557 c!1463817) b!7970559))

(assert (= (and b!7970557 (not c!1463817)) b!7970565))

(assert (= (or b!7970559 b!7970565) bm!739595))

(assert (= (or b!7970560 b!7970559) bm!739593))

(assert (= (or b!7970562 bm!739593) bm!739594))

(assert (= (or b!7970562 bm!739595) bm!739592))

(declare-fun m!8348892 () Bool)

(assert (=> bm!739592 m!8348892))

(declare-fun m!8348894 () Bool)

(assert (=> b!7970557 m!8348894))

(declare-fun m!8348896 () Bool)

(assert (=> d!2379847 m!8348896))

(assert (=> d!2379847 m!8348550))

(declare-fun m!8348898 () Bool)

(assert (=> bm!739594 m!8348898))

(assert (=> b!7970114 d!2379847))

(declare-fun d!2379855 () Bool)

(declare-fun e!4699654 () Bool)

(assert (=> d!2379855 e!4699654))

(declare-fun res!3157891 () Bool)

(assert (=> d!2379855 (=> res!3157891 e!4699654)))

(assert (=> d!2379855 (= res!3157891 (isEmpty!42935 (_1!38663 (findLongestMatchInner!2310 lt!2707652 lt!2707645 (size!43465 lt!2707645) (getSuffix!3832 input!7927 lt!2707645) input!7927 (size!43465 input!7927)))))))

(declare-fun lt!2707953 () Unit!170284)

(declare-fun choose!60101 (Regex!21529 Regex!21529 List!74758 List!74758) Unit!170284)

(assert (=> d!2379855 (= lt!2707953 (choose!60101 baseR!116 lt!2707652 lt!2707645 input!7927))))

(assert (=> d!2379855 (validRegex!11833 baseR!116)))

(assert (=> d!2379855 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!63 baseR!116 lt!2707652 lt!2707645 input!7927) lt!2707953)))

(declare-fun b!7970569 () Bool)

(assert (=> b!7970569 (= e!4699654 (matchR!10752 baseR!116 (_1!38663 (findLongestMatchInner!2310 lt!2707652 lt!2707645 (size!43465 lt!2707645) (getSuffix!3832 input!7927 lt!2707645) input!7927 (size!43465 input!7927)))))))

(assert (= (and d!2379855 (not res!3157891)) b!7970569))

(assert (=> d!2379855 m!8348512))

(assert (=> d!2379855 m!8348534))

(assert (=> d!2379855 m!8348520))

(assert (=> d!2379855 m!8348534))

(assert (=> d!2379855 m!8348536))

(assert (=> d!2379855 m!8348512))

(declare-fun m!8348900 () Bool)

(assert (=> d!2379855 m!8348900))

(declare-fun m!8348902 () Bool)

(assert (=> d!2379855 m!8348902))

(assert (=> d!2379855 m!8348536))

(declare-fun m!8348904 () Bool)

(assert (=> d!2379855 m!8348904))

(assert (=> b!7970569 m!8348512))

(assert (=> b!7970569 m!8348534))

(declare-fun m!8348906 () Bool)

(assert (=> b!7970569 m!8348906))

(assert (=> b!7970569 m!8348534))

(assert (=> b!7970569 m!8348536))

(assert (=> b!7970569 m!8348512))

(assert (=> b!7970569 m!8348900))

(assert (=> b!7970569 m!8348536))

(assert (=> b!7970114 d!2379855))

(declare-fun d!2379857 () Bool)

(assert (=> d!2379857 (= (derivative!715 baseR!116 (++!18399 testedP!447 (Cons!74634 lt!2707649 Nil!74634))) (derivativeStep!6555 r!24602 lt!2707649))))

(declare-fun lt!2707956 () Unit!170284)

(declare-fun choose!60103 (Regex!21529 Regex!21529 List!74758 C!43396) Unit!170284)

(assert (=> d!2379857 (= lt!2707956 (choose!60103 baseR!116 r!24602 testedP!447 lt!2707649))))

(assert (=> d!2379857 (validRegex!11833 baseR!116)))

(assert (=> d!2379857 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!237 baseR!116 r!24602 testedP!447 lt!2707649) lt!2707956)))

(declare-fun bs!1969966 () Bool)

(assert (= bs!1969966 d!2379857))

(assert (=> bs!1969966 m!8348520))

(assert (=> bs!1969966 m!8348528))

(assert (=> bs!1969966 m!8348544))

(declare-fun m!8348908 () Bool)

(assert (=> bs!1969966 m!8348908))

(assert (=> bs!1969966 m!8348528))

(declare-fun m!8348910 () Bool)

(assert (=> bs!1969966 m!8348910))

(assert (=> b!7970114 d!2379857))

(declare-fun d!2379859 () Bool)

(assert (=> d!2379859 (= (isEmpty!42935 (_1!38663 lt!2707646)) ((_ is Nil!74634) (_1!38663 lt!2707646)))))

(assert (=> b!7970114 d!2379859))

(declare-fun d!2379861 () Bool)

(declare-fun lt!2707957 () Regex!21529)

(assert (=> d!2379861 (validRegex!11833 lt!2707957)))

(declare-fun e!4699655 () Regex!21529)

(assert (=> d!2379861 (= lt!2707957 e!4699655)))

(declare-fun c!1463820 () Bool)

(assert (=> d!2379861 (= c!1463820 ((_ is Cons!74634) lt!2707645))))

(assert (=> d!2379861 (validRegex!11833 baseR!116)))

(assert (=> d!2379861 (= (derivative!715 baseR!116 lt!2707645) lt!2707957)))

(declare-fun b!7970570 () Bool)

(assert (=> b!7970570 (= e!4699655 (derivative!715 (derivativeStep!6555 baseR!116 (h!81082 lt!2707645)) (t!390501 lt!2707645)))))

(declare-fun b!7970571 () Bool)

(assert (=> b!7970571 (= e!4699655 baseR!116)))

(assert (= (and d!2379861 c!1463820) b!7970570))

(assert (= (and d!2379861 (not c!1463820)) b!7970571))

(declare-fun m!8348912 () Bool)

(assert (=> d!2379861 m!8348912))

(assert (=> d!2379861 m!8348520))

(declare-fun m!8348914 () Bool)

(assert (=> b!7970570 m!8348914))

(assert (=> b!7970570 m!8348914))

(declare-fun m!8348916 () Bool)

(assert (=> b!7970570 m!8348916))

(assert (=> b!7970114 d!2379861))

(declare-fun b!7970572 () Bool)

(declare-fun e!4699662 () Bool)

(declare-fun call!739601 () Bool)

(assert (=> b!7970572 (= e!4699662 call!739601)))

(declare-fun b!7970573 () Bool)

(declare-fun e!4699657 () Bool)

(declare-fun e!4699659 () Bool)

(assert (=> b!7970573 (= e!4699657 e!4699659)))

(declare-fun c!1463822 () Bool)

(assert (=> b!7970573 (= c!1463822 ((_ is Union!21529) r!24602))))

(declare-fun b!7970574 () Bool)

(declare-fun e!4699658 () Bool)

(declare-fun call!739603 () Bool)

(assert (=> b!7970574 (= e!4699658 call!739603)))

(declare-fun bm!739597 () Bool)

(declare-fun c!1463821 () Bool)

(assert (=> bm!739597 (= call!739601 (validRegex!11833 (ite c!1463821 (reg!21858 r!24602) (ite c!1463822 (regTwo!43571 r!24602) (regTwo!43570 r!24602)))))))

(declare-fun bm!739598 () Bool)

(assert (=> bm!739598 (= call!739603 call!739601)))

(declare-fun b!7970575 () Bool)

(declare-fun e!4699661 () Bool)

(assert (=> b!7970575 (= e!4699661 e!4699658)))

(declare-fun res!3157894 () Bool)

(assert (=> b!7970575 (=> (not res!3157894) (not e!4699658))))

(declare-fun call!739602 () Bool)

(assert (=> b!7970575 (= res!3157894 call!739602)))

(declare-fun b!7970576 () Bool)

(assert (=> b!7970576 (= e!4699657 e!4699662)))

(declare-fun res!3157892 () Bool)

(assert (=> b!7970576 (= res!3157892 (not (nullable!9628 (reg!21858 r!24602))))))

(assert (=> b!7970576 (=> (not res!3157892) (not e!4699662))))

(declare-fun d!2379863 () Bool)

(declare-fun res!3157893 () Bool)

(declare-fun e!4699656 () Bool)

(assert (=> d!2379863 (=> res!3157893 e!4699656)))

(assert (=> d!2379863 (= res!3157893 ((_ is ElementMatch!21529) r!24602))))

(assert (=> d!2379863 (= (validRegex!11833 r!24602) e!4699656)))

(declare-fun bm!739596 () Bool)

(assert (=> bm!739596 (= call!739602 (validRegex!11833 (ite c!1463822 (regOne!43571 r!24602) (regOne!43570 r!24602))))))

(declare-fun b!7970577 () Bool)

(declare-fun res!3157896 () Bool)

(declare-fun e!4699660 () Bool)

(assert (=> b!7970577 (=> (not res!3157896) (not e!4699660))))

(assert (=> b!7970577 (= res!3157896 call!739602)))

(assert (=> b!7970577 (= e!4699659 e!4699660)))

(declare-fun b!7970578 () Bool)

(assert (=> b!7970578 (= e!4699660 call!739603)))

(declare-fun b!7970579 () Bool)

(assert (=> b!7970579 (= e!4699656 e!4699657)))

(assert (=> b!7970579 (= c!1463821 ((_ is Star!21529) r!24602))))

(declare-fun b!7970580 () Bool)

(declare-fun res!3157895 () Bool)

(assert (=> b!7970580 (=> res!3157895 e!4699661)))

(assert (=> b!7970580 (= res!3157895 (not ((_ is Concat!30528) r!24602)))))

(assert (=> b!7970580 (= e!4699659 e!4699661)))

(assert (= (and d!2379863 (not res!3157893)) b!7970579))

(assert (= (and b!7970579 c!1463821) b!7970576))

(assert (= (and b!7970579 (not c!1463821)) b!7970573))

(assert (= (and b!7970576 res!3157892) b!7970572))

(assert (= (and b!7970573 c!1463822) b!7970577))

(assert (= (and b!7970573 (not c!1463822)) b!7970580))

(assert (= (and b!7970577 res!3157896) b!7970578))

(assert (= (and b!7970580 (not res!3157895)) b!7970575))

(assert (= (and b!7970575 res!3157894) b!7970574))

(assert (= (or b!7970578 b!7970574) bm!739598))

(assert (= (or b!7970577 b!7970575) bm!739596))

(assert (= (or b!7970572 bm!739598) bm!739597))

(declare-fun m!8348918 () Bool)

(assert (=> bm!739597 m!8348918))

(declare-fun m!8348920 () Bool)

(assert (=> b!7970576 m!8348920))

(declare-fun m!8348922 () Bool)

(assert (=> bm!739596 m!8348922))

(assert (=> b!7970114 d!2379863))

(declare-fun b!7970582 () Bool)

(declare-fun e!4699664 () List!74758)

(assert (=> b!7970582 (= e!4699664 (Cons!74634 (h!81082 testedP!447) (++!18399 (t!390501 testedP!447) lt!2707644)))))

(declare-fun d!2379865 () Bool)

(declare-fun e!4699663 () Bool)

(assert (=> d!2379865 e!4699663))

(declare-fun res!3157898 () Bool)

(assert (=> d!2379865 (=> (not res!3157898) (not e!4699663))))

(declare-fun lt!2707958 () List!74758)

(assert (=> d!2379865 (= res!3157898 (= (content!15860 lt!2707958) ((_ map or) (content!15860 testedP!447) (content!15860 lt!2707644))))))

(assert (=> d!2379865 (= lt!2707958 e!4699664)))

(declare-fun c!1463823 () Bool)

(assert (=> d!2379865 (= c!1463823 ((_ is Nil!74634) testedP!447))))

(assert (=> d!2379865 (= (++!18399 testedP!447 lt!2707644) lt!2707958)))

(declare-fun b!7970583 () Bool)

(declare-fun res!3157897 () Bool)

(assert (=> b!7970583 (=> (not res!3157897) (not e!4699663))))

(assert (=> b!7970583 (= res!3157897 (= (size!43465 lt!2707958) (+ (size!43465 testedP!447) (size!43465 lt!2707644))))))

(declare-fun b!7970584 () Bool)

(assert (=> b!7970584 (= e!4699663 (or (not (= lt!2707644 Nil!74634)) (= lt!2707958 testedP!447)))))

(declare-fun b!7970581 () Bool)

(assert (=> b!7970581 (= e!4699664 lt!2707644)))

(assert (= (and d!2379865 c!1463823) b!7970581))

(assert (= (and d!2379865 (not c!1463823)) b!7970582))

(assert (= (and d!2379865 res!3157898) b!7970583))

(assert (= (and b!7970583 res!3157897) b!7970584))

(declare-fun m!8348924 () Bool)

(assert (=> b!7970582 m!8348924))

(declare-fun m!8348926 () Bool)

(assert (=> d!2379865 m!8348926))

(assert (=> d!2379865 m!8348798))

(declare-fun m!8348928 () Bool)

(assert (=> d!2379865 m!8348928))

(declare-fun m!8348930 () Bool)

(assert (=> b!7970583 m!8348930))

(assert (=> b!7970583 m!8348510))

(declare-fun m!8348932 () Bool)

(assert (=> b!7970583 m!8348932))

(assert (=> b!7970100 d!2379865))

(declare-fun b!7970613 () Bool)

(declare-fun e!4699685 () Bool)

(declare-fun lt!2707961 () Bool)

(declare-fun call!739606 () Bool)

(assert (=> b!7970613 (= e!4699685 (= lt!2707961 call!739606))))

(declare-fun b!7970614 () Bool)

(declare-fun e!4699680 () Bool)

(assert (=> b!7970614 (= e!4699680 (not (= (head!16281 (_1!38663 lt!2707646)) (c!1463684 baseR!116))))))

(declare-fun b!7970615 () Bool)

(declare-fun e!4699681 () Bool)

(assert (=> b!7970615 (= e!4699681 (not lt!2707961))))

(declare-fun b!7970616 () Bool)

(declare-fun e!4699684 () Bool)

(assert (=> b!7970616 (= e!4699684 e!4699680)))

(declare-fun res!3157921 () Bool)

(assert (=> b!7970616 (=> res!3157921 e!4699680)))

(assert (=> b!7970616 (= res!3157921 call!739606)))

(declare-fun b!7970617 () Bool)

(declare-fun res!3157917 () Bool)

(declare-fun e!4699679 () Bool)

(assert (=> b!7970617 (=> res!3157917 e!4699679)))

(declare-fun e!4699683 () Bool)

(assert (=> b!7970617 (= res!3157917 e!4699683)))

(declare-fun res!3157919 () Bool)

(assert (=> b!7970617 (=> (not res!3157919) (not e!4699683))))

(assert (=> b!7970617 (= res!3157919 lt!2707961)))

(declare-fun b!7970618 () Bool)

(declare-fun e!4699682 () Bool)

(assert (=> b!7970618 (= e!4699682 (nullable!9628 baseR!116))))

(declare-fun b!7970619 () Bool)

(declare-fun res!3157922 () Bool)

(assert (=> b!7970619 (=> res!3157922 e!4699679)))

(assert (=> b!7970619 (= res!3157922 (not ((_ is ElementMatch!21529) baseR!116)))))

(assert (=> b!7970619 (= e!4699681 e!4699679)))

(declare-fun bm!739601 () Bool)

(assert (=> bm!739601 (= call!739606 (isEmpty!42935 (_1!38663 lt!2707646)))))

(declare-fun b!7970620 () Bool)

(assert (=> b!7970620 (= e!4699683 (= (head!16281 (_1!38663 lt!2707646)) (c!1463684 baseR!116)))))

(declare-fun b!7970621 () Bool)

(assert (=> b!7970621 (= e!4699685 e!4699681)))

(declare-fun c!1463831 () Bool)

(assert (=> b!7970621 (= c!1463831 ((_ is EmptyLang!21529) baseR!116))))

(declare-fun b!7970622 () Bool)

(assert (=> b!7970622 (= e!4699682 (matchR!10752 (derivativeStep!6555 baseR!116 (head!16281 (_1!38663 lt!2707646))) (tail!15810 (_1!38663 lt!2707646))))))

(declare-fun b!7970623 () Bool)

(declare-fun res!3157915 () Bool)

(assert (=> b!7970623 (=> (not res!3157915) (not e!4699683))))

(assert (=> b!7970623 (= res!3157915 (not call!739606))))

(declare-fun d!2379867 () Bool)

(assert (=> d!2379867 e!4699685))

(declare-fun c!1463830 () Bool)

(assert (=> d!2379867 (= c!1463830 ((_ is EmptyExpr!21529) baseR!116))))

(assert (=> d!2379867 (= lt!2707961 e!4699682)))

(declare-fun c!1463832 () Bool)

(assert (=> d!2379867 (= c!1463832 (isEmpty!42935 (_1!38663 lt!2707646)))))

(assert (=> d!2379867 (validRegex!11833 baseR!116)))

(assert (=> d!2379867 (= (matchR!10752 baseR!116 (_1!38663 lt!2707646)) lt!2707961)))

(declare-fun b!7970624 () Bool)

(declare-fun res!3157916 () Bool)

(assert (=> b!7970624 (=> (not res!3157916) (not e!4699683))))

(assert (=> b!7970624 (= res!3157916 (isEmpty!42935 (tail!15810 (_1!38663 lt!2707646))))))

(declare-fun b!7970625 () Bool)

(declare-fun res!3157920 () Bool)

(assert (=> b!7970625 (=> res!3157920 e!4699680)))

(assert (=> b!7970625 (= res!3157920 (not (isEmpty!42935 (tail!15810 (_1!38663 lt!2707646)))))))

(declare-fun b!7970626 () Bool)

(assert (=> b!7970626 (= e!4699679 e!4699684)))

(declare-fun res!3157918 () Bool)

(assert (=> b!7970626 (=> (not res!3157918) (not e!4699684))))

(assert (=> b!7970626 (= res!3157918 (not lt!2707961))))

(assert (= (and d!2379867 c!1463832) b!7970618))

(assert (= (and d!2379867 (not c!1463832)) b!7970622))

(assert (= (and d!2379867 c!1463830) b!7970613))

(assert (= (and d!2379867 (not c!1463830)) b!7970621))

(assert (= (and b!7970621 c!1463831) b!7970615))

(assert (= (and b!7970621 (not c!1463831)) b!7970619))

(assert (= (and b!7970619 (not res!3157922)) b!7970617))

(assert (= (and b!7970617 res!3157919) b!7970623))

(assert (= (and b!7970623 res!3157915) b!7970624))

(assert (= (and b!7970624 res!3157916) b!7970620))

(assert (= (and b!7970617 (not res!3157917)) b!7970626))

(assert (= (and b!7970626 res!3157918) b!7970616))

(assert (= (and b!7970616 (not res!3157921)) b!7970625))

(assert (= (and b!7970625 (not res!3157920)) b!7970614))

(assert (= (or b!7970613 b!7970616 b!7970623) bm!739601))

(declare-fun m!8348934 () Bool)

(assert (=> b!7970614 m!8348934))

(declare-fun m!8348936 () Bool)

(assert (=> b!7970625 m!8348936))

(assert (=> b!7970625 m!8348936))

(declare-fun m!8348938 () Bool)

(assert (=> b!7970625 m!8348938))

(assert (=> b!7970620 m!8348934))

(declare-fun m!8348940 () Bool)

(assert (=> b!7970618 m!8348940))

(assert (=> bm!739601 m!8348548))

(assert (=> b!7970624 m!8348936))

(assert (=> b!7970624 m!8348936))

(assert (=> b!7970624 m!8348938))

(assert (=> d!2379867 m!8348548))

(assert (=> d!2379867 m!8348520))

(assert (=> b!7970622 m!8348934))

(assert (=> b!7970622 m!8348934))

(declare-fun m!8348942 () Bool)

(assert (=> b!7970622 m!8348942))

(assert (=> b!7970622 m!8348936))

(assert (=> b!7970622 m!8348942))

(assert (=> b!7970622 m!8348936))

(declare-fun m!8348944 () Bool)

(assert (=> b!7970622 m!8348944))

(assert (=> b!7970105 d!2379867))

(declare-fun d!2379869 () Bool)

(declare-fun e!4699688 () Bool)

(assert (=> d!2379869 e!4699688))

(declare-fun res!3157925 () Bool)

(assert (=> d!2379869 (=> res!3157925 e!4699688)))

(declare-fun lt!2707962 () Bool)

(assert (=> d!2379869 (= res!3157925 (not lt!2707962))))

(declare-fun e!4699687 () Bool)

(assert (=> d!2379869 (= lt!2707962 e!4699687)))

(declare-fun res!3157924 () Bool)

(assert (=> d!2379869 (=> res!3157924 e!4699687)))

(assert (=> d!2379869 (= res!3157924 ((_ is Nil!74634) testedP!447))))

(assert (=> d!2379869 (= (isPrefix!6629 testedP!447 input!7927) lt!2707962)))

(declare-fun b!7970627 () Bool)

(declare-fun e!4699686 () Bool)

(assert (=> b!7970627 (= e!4699687 e!4699686)))

(declare-fun res!3157926 () Bool)

(assert (=> b!7970627 (=> (not res!3157926) (not e!4699686))))

(assert (=> b!7970627 (= res!3157926 (not ((_ is Nil!74634) input!7927)))))

(declare-fun b!7970628 () Bool)

(declare-fun res!3157923 () Bool)

(assert (=> b!7970628 (=> (not res!3157923) (not e!4699686))))

(assert (=> b!7970628 (= res!3157923 (= (head!16281 testedP!447) (head!16281 input!7927)))))

(declare-fun b!7970629 () Bool)

(assert (=> b!7970629 (= e!4699686 (isPrefix!6629 (tail!15810 testedP!447) (tail!15810 input!7927)))))

(declare-fun b!7970630 () Bool)

(assert (=> b!7970630 (= e!4699688 (>= (size!43465 input!7927) (size!43465 testedP!447)))))

(assert (= (and d!2379869 (not res!3157924)) b!7970627))

(assert (= (and b!7970627 res!3157926) b!7970628))

(assert (= (and b!7970628 res!3157923) b!7970629))

(assert (= (and d!2379869 (not res!3157925)) b!7970630))

(declare-fun m!8348946 () Bool)

(assert (=> b!7970628 m!8348946))

(assert (=> b!7970628 m!8348820))

(declare-fun m!8348948 () Bool)

(assert (=> b!7970629 m!8348948))

(assert (=> b!7970629 m!8348762))

(assert (=> b!7970629 m!8348948))

(assert (=> b!7970629 m!8348762))

(declare-fun m!8348950 () Bool)

(assert (=> b!7970629 m!8348950))

(assert (=> b!7970630 m!8348512))

(assert (=> b!7970630 m!8348510))

(assert (=> b!7970110 d!2379869))

(declare-fun d!2379871 () Bool)

(assert (=> d!2379871 (isPrefix!6629 input!7927 input!7927)))

(declare-fun lt!2707965 () Unit!170284)

(declare-fun choose!60106 (List!74758 List!74758) Unit!170284)

(assert (=> d!2379871 (= lt!2707965 (choose!60106 input!7927 input!7927))))

(assert (=> d!2379871 (= (lemmaIsPrefixRefl!4097 input!7927 input!7927) lt!2707965)))

(declare-fun bs!1969967 () Bool)

(assert (= bs!1969967 d!2379871))

(assert (=> bs!1969967 m!8348504))

(declare-fun m!8348952 () Bool)

(assert (=> bs!1969967 m!8348952))

(assert (=> b!7970107 d!2379871))

(declare-fun d!2379873 () Bool)

(declare-fun e!4699691 () Bool)

(assert (=> d!2379873 e!4699691))

(declare-fun res!3157929 () Bool)

(assert (=> d!2379873 (=> res!3157929 e!4699691)))

(declare-fun lt!2707966 () Bool)

(assert (=> d!2379873 (= res!3157929 (not lt!2707966))))

(declare-fun e!4699690 () Bool)

(assert (=> d!2379873 (= lt!2707966 e!4699690)))

(declare-fun res!3157928 () Bool)

(assert (=> d!2379873 (=> res!3157928 e!4699690)))

(assert (=> d!2379873 (= res!3157928 ((_ is Nil!74634) input!7927))))

(assert (=> d!2379873 (= (isPrefix!6629 input!7927 input!7927) lt!2707966)))

(declare-fun b!7970631 () Bool)

(declare-fun e!4699689 () Bool)

(assert (=> b!7970631 (= e!4699690 e!4699689)))

(declare-fun res!3157930 () Bool)

(assert (=> b!7970631 (=> (not res!3157930) (not e!4699689))))

(assert (=> b!7970631 (= res!3157930 (not ((_ is Nil!74634) input!7927)))))

(declare-fun b!7970632 () Bool)

(declare-fun res!3157927 () Bool)

(assert (=> b!7970632 (=> (not res!3157927) (not e!4699689))))

(assert (=> b!7970632 (= res!3157927 (= (head!16281 input!7927) (head!16281 input!7927)))))

(declare-fun b!7970633 () Bool)

(assert (=> b!7970633 (= e!4699689 (isPrefix!6629 (tail!15810 input!7927) (tail!15810 input!7927)))))

(declare-fun b!7970634 () Bool)

(assert (=> b!7970634 (= e!4699691 (>= (size!43465 input!7927) (size!43465 input!7927)))))

(assert (= (and d!2379873 (not res!3157928)) b!7970631))

(assert (= (and b!7970631 res!3157930) b!7970632))

(assert (= (and b!7970632 res!3157927) b!7970633))

(assert (= (and d!2379873 (not res!3157929)) b!7970634))

(assert (=> b!7970632 m!8348820))

(assert (=> b!7970632 m!8348820))

(assert (=> b!7970633 m!8348762))

(assert (=> b!7970633 m!8348762))

(assert (=> b!7970633 m!8348762))

(assert (=> b!7970633 m!8348762))

(declare-fun m!8348954 () Bool)

(assert (=> b!7970633 m!8348954))

(assert (=> b!7970634 m!8348512))

(assert (=> b!7970634 m!8348512))

(assert (=> b!7970107 d!2379873))

(declare-fun d!2379875 () Bool)

(assert (=> d!2379875 (= input!7927 testedP!447)))

(declare-fun lt!2707969 () Unit!170284)

(declare-fun choose!60107 (List!74758 List!74758 List!74758) Unit!170284)

(assert (=> d!2379875 (= lt!2707969 (choose!60107 input!7927 testedP!447 input!7927))))

(assert (=> d!2379875 (isPrefix!6629 input!7927 input!7927)))

(assert (=> d!2379875 (= (lemmaIsPrefixSameLengthThenSameList!1677 input!7927 testedP!447 input!7927) lt!2707969)))

(declare-fun bs!1969968 () Bool)

(assert (= bs!1969968 d!2379875))

(declare-fun m!8348956 () Bool)

(assert (=> bs!1969968 m!8348956))

(assert (=> bs!1969968 m!8348504))

(assert (=> b!7970107 d!2379875))

(declare-fun b!7970645 () Bool)

(declare-fun e!4699694 () Bool)

(assert (=> b!7970645 (= e!4699694 tp_is_empty!53601)))

(declare-fun b!7970648 () Bool)

(declare-fun tp!2376043 () Bool)

(declare-fun tp!2376042 () Bool)

(assert (=> b!7970648 (= e!4699694 (and tp!2376043 tp!2376042))))

(declare-fun b!7970647 () Bool)

(declare-fun tp!2376041 () Bool)

(assert (=> b!7970647 (= e!4699694 tp!2376041)))

(declare-fun b!7970646 () Bool)

(declare-fun tp!2376045 () Bool)

(declare-fun tp!2376044 () Bool)

(assert (=> b!7970646 (= e!4699694 (and tp!2376045 tp!2376044))))

(assert (=> b!7970103 (= tp!2375956 e!4699694)))

(assert (= (and b!7970103 ((_ is ElementMatch!21529) (regOne!43570 baseR!116))) b!7970645))

(assert (= (and b!7970103 ((_ is Concat!30528) (regOne!43570 baseR!116))) b!7970646))

(assert (= (and b!7970103 ((_ is Star!21529) (regOne!43570 baseR!116))) b!7970647))

(assert (= (and b!7970103 ((_ is Union!21529) (regOne!43570 baseR!116))) b!7970648))

(declare-fun b!7970649 () Bool)

(declare-fun e!4699695 () Bool)

(assert (=> b!7970649 (= e!4699695 tp_is_empty!53601)))

(declare-fun b!7970652 () Bool)

(declare-fun tp!2376048 () Bool)

(declare-fun tp!2376047 () Bool)

(assert (=> b!7970652 (= e!4699695 (and tp!2376048 tp!2376047))))

(declare-fun b!7970651 () Bool)

(declare-fun tp!2376046 () Bool)

(assert (=> b!7970651 (= e!4699695 tp!2376046)))

(declare-fun b!7970650 () Bool)

(declare-fun tp!2376050 () Bool)

(declare-fun tp!2376049 () Bool)

(assert (=> b!7970650 (= e!4699695 (and tp!2376050 tp!2376049))))

(assert (=> b!7970103 (= tp!2375959 e!4699695)))

(assert (= (and b!7970103 ((_ is ElementMatch!21529) (regTwo!43570 baseR!116))) b!7970649))

(assert (= (and b!7970103 ((_ is Concat!30528) (regTwo!43570 baseR!116))) b!7970650))

(assert (= (and b!7970103 ((_ is Star!21529) (regTwo!43570 baseR!116))) b!7970651))

(assert (= (and b!7970103 ((_ is Union!21529) (regTwo!43570 baseR!116))) b!7970652))

(declare-fun b!7970653 () Bool)

(declare-fun e!4699696 () Bool)

(assert (=> b!7970653 (= e!4699696 tp_is_empty!53601)))

(declare-fun b!7970656 () Bool)

(declare-fun tp!2376053 () Bool)

(declare-fun tp!2376052 () Bool)

(assert (=> b!7970656 (= e!4699696 (and tp!2376053 tp!2376052))))

(declare-fun b!7970655 () Bool)

(declare-fun tp!2376051 () Bool)

(assert (=> b!7970655 (= e!4699696 tp!2376051)))

(declare-fun b!7970654 () Bool)

(declare-fun tp!2376055 () Bool)

(declare-fun tp!2376054 () Bool)

(assert (=> b!7970654 (= e!4699696 (and tp!2376055 tp!2376054))))

(assert (=> b!7970119 (= tp!2375960 e!4699696)))

(assert (= (and b!7970119 ((_ is ElementMatch!21529) (reg!21858 r!24602))) b!7970653))

(assert (= (and b!7970119 ((_ is Concat!30528) (reg!21858 r!24602))) b!7970654))

(assert (= (and b!7970119 ((_ is Star!21529) (reg!21858 r!24602))) b!7970655))

(assert (= (and b!7970119 ((_ is Union!21529) (reg!21858 r!24602))) b!7970656))

(declare-fun b!7970657 () Bool)

(declare-fun e!4699697 () Bool)

(assert (=> b!7970657 (= e!4699697 tp_is_empty!53601)))

(declare-fun b!7970660 () Bool)

(declare-fun tp!2376058 () Bool)

(declare-fun tp!2376057 () Bool)

(assert (=> b!7970660 (= e!4699697 (and tp!2376058 tp!2376057))))

(declare-fun b!7970659 () Bool)

(declare-fun tp!2376056 () Bool)

(assert (=> b!7970659 (= e!4699697 tp!2376056)))

(declare-fun b!7970658 () Bool)

(declare-fun tp!2376060 () Bool)

(declare-fun tp!2376059 () Bool)

(assert (=> b!7970658 (= e!4699697 (and tp!2376060 tp!2376059))))

(assert (=> b!7970120 (= tp!2375964 e!4699697)))

(assert (= (and b!7970120 ((_ is ElementMatch!21529) (reg!21858 baseR!116))) b!7970657))

(assert (= (and b!7970120 ((_ is Concat!30528) (reg!21858 baseR!116))) b!7970658))

(assert (= (and b!7970120 ((_ is Star!21529) (reg!21858 baseR!116))) b!7970659))

(assert (= (and b!7970120 ((_ is Union!21529) (reg!21858 baseR!116))) b!7970660))

(declare-fun b!7970661 () Bool)

(declare-fun e!4699698 () Bool)

(assert (=> b!7970661 (= e!4699698 tp_is_empty!53601)))

(declare-fun b!7970664 () Bool)

(declare-fun tp!2376063 () Bool)

(declare-fun tp!2376062 () Bool)

(assert (=> b!7970664 (= e!4699698 (and tp!2376063 tp!2376062))))

(declare-fun b!7970663 () Bool)

(declare-fun tp!2376061 () Bool)

(assert (=> b!7970663 (= e!4699698 tp!2376061)))

(declare-fun b!7970662 () Bool)

(declare-fun tp!2376065 () Bool)

(declare-fun tp!2376064 () Bool)

(assert (=> b!7970662 (= e!4699698 (and tp!2376065 tp!2376064))))

(assert (=> b!7970109 (= tp!2375958 e!4699698)))

(assert (= (and b!7970109 ((_ is ElementMatch!21529) (regOne!43571 baseR!116))) b!7970661))

(assert (= (and b!7970109 ((_ is Concat!30528) (regOne!43571 baseR!116))) b!7970662))

(assert (= (and b!7970109 ((_ is Star!21529) (regOne!43571 baseR!116))) b!7970663))

(assert (= (and b!7970109 ((_ is Union!21529) (regOne!43571 baseR!116))) b!7970664))

(declare-fun b!7970665 () Bool)

(declare-fun e!4699699 () Bool)

(assert (=> b!7970665 (= e!4699699 tp_is_empty!53601)))

(declare-fun b!7970668 () Bool)

(declare-fun tp!2376068 () Bool)

(declare-fun tp!2376067 () Bool)

(assert (=> b!7970668 (= e!4699699 (and tp!2376068 tp!2376067))))

(declare-fun b!7970667 () Bool)

(declare-fun tp!2376066 () Bool)

(assert (=> b!7970667 (= e!4699699 tp!2376066)))

(declare-fun b!7970666 () Bool)

(declare-fun tp!2376070 () Bool)

(declare-fun tp!2376069 () Bool)

(assert (=> b!7970666 (= e!4699699 (and tp!2376070 tp!2376069))))

(assert (=> b!7970109 (= tp!2375957 e!4699699)))

(assert (= (and b!7970109 ((_ is ElementMatch!21529) (regTwo!43571 baseR!116))) b!7970665))

(assert (= (and b!7970109 ((_ is Concat!30528) (regTwo!43571 baseR!116))) b!7970666))

(assert (= (and b!7970109 ((_ is Star!21529) (regTwo!43571 baseR!116))) b!7970667))

(assert (= (and b!7970109 ((_ is Union!21529) (regTwo!43571 baseR!116))) b!7970668))

(declare-fun b!7970669 () Bool)

(declare-fun e!4699700 () Bool)

(assert (=> b!7970669 (= e!4699700 tp_is_empty!53601)))

(declare-fun b!7970672 () Bool)

(declare-fun tp!2376073 () Bool)

(declare-fun tp!2376072 () Bool)

(assert (=> b!7970672 (= e!4699700 (and tp!2376073 tp!2376072))))

(declare-fun b!7970671 () Bool)

(declare-fun tp!2376071 () Bool)

(assert (=> b!7970671 (= e!4699700 tp!2376071)))

(declare-fun b!7970670 () Bool)

(declare-fun tp!2376075 () Bool)

(declare-fun tp!2376074 () Bool)

(assert (=> b!7970670 (= e!4699700 (and tp!2376075 tp!2376074))))

(assert (=> b!7970111 (= tp!2375965 e!4699700)))

(assert (= (and b!7970111 ((_ is ElementMatch!21529) (regOne!43571 r!24602))) b!7970669))

(assert (= (and b!7970111 ((_ is Concat!30528) (regOne!43571 r!24602))) b!7970670))

(assert (= (and b!7970111 ((_ is Star!21529) (regOne!43571 r!24602))) b!7970671))

(assert (= (and b!7970111 ((_ is Union!21529) (regOne!43571 r!24602))) b!7970672))

(declare-fun b!7970673 () Bool)

(declare-fun e!4699701 () Bool)

(assert (=> b!7970673 (= e!4699701 tp_is_empty!53601)))

(declare-fun b!7970676 () Bool)

(declare-fun tp!2376078 () Bool)

(declare-fun tp!2376077 () Bool)

(assert (=> b!7970676 (= e!4699701 (and tp!2376078 tp!2376077))))

(declare-fun b!7970675 () Bool)

(declare-fun tp!2376076 () Bool)

(assert (=> b!7970675 (= e!4699701 tp!2376076)))

(declare-fun b!7970674 () Bool)

(declare-fun tp!2376080 () Bool)

(declare-fun tp!2376079 () Bool)

(assert (=> b!7970674 (= e!4699701 (and tp!2376080 tp!2376079))))

(assert (=> b!7970111 (= tp!2375963 e!4699701)))

(assert (= (and b!7970111 ((_ is ElementMatch!21529) (regTwo!43571 r!24602))) b!7970673))

(assert (= (and b!7970111 ((_ is Concat!30528) (regTwo!43571 r!24602))) b!7970674))

(assert (= (and b!7970111 ((_ is Star!21529) (regTwo!43571 r!24602))) b!7970675))

(assert (= (and b!7970111 ((_ is Union!21529) (regTwo!43571 r!24602))) b!7970676))

(declare-fun b!7970677 () Bool)

(declare-fun e!4699702 () Bool)

(assert (=> b!7970677 (= e!4699702 tp_is_empty!53601)))

(declare-fun b!7970680 () Bool)

(declare-fun tp!2376083 () Bool)

(declare-fun tp!2376082 () Bool)

(assert (=> b!7970680 (= e!4699702 (and tp!2376083 tp!2376082))))

(declare-fun b!7970679 () Bool)

(declare-fun tp!2376081 () Bool)

(assert (=> b!7970679 (= e!4699702 tp!2376081)))

(declare-fun b!7970678 () Bool)

(declare-fun tp!2376085 () Bool)

(declare-fun tp!2376084 () Bool)

(assert (=> b!7970678 (= e!4699702 (and tp!2376085 tp!2376084))))

(assert (=> b!7970112 (= tp!2375955 e!4699702)))

(assert (= (and b!7970112 ((_ is ElementMatch!21529) (regOne!43570 r!24602))) b!7970677))

(assert (= (and b!7970112 ((_ is Concat!30528) (regOne!43570 r!24602))) b!7970678))

(assert (= (and b!7970112 ((_ is Star!21529) (regOne!43570 r!24602))) b!7970679))

(assert (= (and b!7970112 ((_ is Union!21529) (regOne!43570 r!24602))) b!7970680))

(declare-fun b!7970681 () Bool)

(declare-fun e!4699703 () Bool)

(assert (=> b!7970681 (= e!4699703 tp_is_empty!53601)))

(declare-fun b!7970684 () Bool)

(declare-fun tp!2376088 () Bool)

(declare-fun tp!2376087 () Bool)

(assert (=> b!7970684 (= e!4699703 (and tp!2376088 tp!2376087))))

(declare-fun b!7970683 () Bool)

(declare-fun tp!2376086 () Bool)

(assert (=> b!7970683 (= e!4699703 tp!2376086)))

(declare-fun b!7970682 () Bool)

(declare-fun tp!2376090 () Bool)

(declare-fun tp!2376089 () Bool)

(assert (=> b!7970682 (= e!4699703 (and tp!2376090 tp!2376089))))

(assert (=> b!7970112 (= tp!2375961 e!4699703)))

(assert (= (and b!7970112 ((_ is ElementMatch!21529) (regTwo!43570 r!24602))) b!7970681))

(assert (= (and b!7970112 ((_ is Concat!30528) (regTwo!43570 r!24602))) b!7970682))

(assert (= (and b!7970112 ((_ is Star!21529) (regTwo!43570 r!24602))) b!7970683))

(assert (= (and b!7970112 ((_ is Union!21529) (regTwo!43570 r!24602))) b!7970684))

(declare-fun b!7970689 () Bool)

(declare-fun e!4699706 () Bool)

(declare-fun tp!2376093 () Bool)

(assert (=> b!7970689 (= e!4699706 (and tp_is_empty!53601 tp!2376093))))

(assert (=> b!7970101 (= tp!2375962 e!4699706)))

(assert (= (and b!7970101 ((_ is Cons!74634) (t!390501 input!7927))) b!7970689))

(declare-fun b!7970690 () Bool)

(declare-fun e!4699707 () Bool)

(declare-fun tp!2376094 () Bool)

(assert (=> b!7970690 (= e!4699707 (and tp_is_empty!53601 tp!2376094))))

(assert (=> b!7970106 (= tp!2375966 e!4699707)))

(assert (= (and b!7970106 ((_ is Cons!74634) (t!390501 testedP!447))) b!7970690))

(check-sat (not d!2379773) (not b!7970634) (not bm!739580) (not bm!739582) (not b!7970667) (not b!7970155) (not bm!739490) (not b!7970684) (not b!7970658) (not b!7970344) (not bm!739597) (not b!7970651) (not b!7970630) (not b!7970675) (not d!2379841) (not bm!739583) (not d!2379847) (not b!7970461) (not b!7970683) (not b!7970632) (not b!7970455) (not b!7970663) (not bm!739592) (not bm!739578) (not b!7970569) (not bm!739550) (not bm!739548) (not b!7970473) (not b!7970650) (not bm!739551) (not b!7970654) (not b!7970678) (not b!7970679) (not b!7970459) (not bm!739546) (not bm!739549) (not b!7970440) (not b!7970647) (not b!7970454) (not b!7970666) (not b!7970614) (not b!7970355) (not b!7970620) (not b!7970350) (not bm!739547) (not bm!739579) (not bm!739545) (not b!7970576) (not bm!739594) (not d!2379857) (not b!7970662) (not b!7970583) (not b!7970674) (not b!7970652) (not b!7970453) (not d!2379843) (not b!7970346) (not b!7970646) (not d!2379875) (not b!7970672) (not b!7970407) (not bm!739577) (not b!7970656) (not bm!739601) tp_is_empty!53601 (not b!7970177) (not bm!739576) (not b!7970689) (not b!7970676) (not b!7970664) (not b!7970628) (not d!2379865) (not b!7970465) (not b!7970682) (not b!7970624) (not b!7970470) (not b!7970633) (not b!7970456) (not d!2379867) (not d!2379821) (not b!7970379) (not b!7970659) (not b!7970622) (not b!7970648) (not bm!739581) (not b!7970660) (not b!7970570) (not bm!739552) (not d!2379825) (not b!7970680) (not b!7970618) (not d!2379871) (not b!7970439) (not bm!739491) (not b!7970690) (not b!7970668) (not d!2379855) (not bm!739596) (not d!2379781) (not b!7970671) (not b!7970582) (not b!7970655) (not d!2379819) (not b!7970670) (not b!7970625) (not b!7970629) (not b!7970557) (not b!7970382) (not d!2379809) (not d!2379833) (not d!2379861))
(check-sat)
