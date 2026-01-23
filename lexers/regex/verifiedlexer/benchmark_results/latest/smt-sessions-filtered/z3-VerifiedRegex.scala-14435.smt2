; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!752304 () Bool)

(assert start!752304)

(declare-fun b!7985804 () Bool)

(declare-fun e!4706617 () Bool)

(declare-fun tp!2384163 () Bool)

(assert (=> b!7985804 (= e!4706617 tp!2384163)))

(declare-fun b!7985805 () Bool)

(declare-fun e!4706621 () Bool)

(declare-fun e!4706619 () Bool)

(assert (=> b!7985805 (= e!4706621 e!4706619)))

(declare-fun res!3161212 () Bool)

(assert (=> b!7985805 (=> res!3161212 e!4706619)))

(declare-datatypes ((C!43440 0))(
  ( (C!43441 (val!32268 Int)) )
))
(declare-datatypes ((Regex!21551 0))(
  ( (ElementMatch!21551 (c!1466508 C!43440)) (Concat!30550 (regOne!43614 Regex!21551) (regTwo!43614 Regex!21551)) (EmptyExpr!21551) (Star!21551 (reg!21880 Regex!21551)) (EmptyLang!21551) (Union!21551 (regOne!43615 Regex!21551) (regTwo!43615 Regex!21551)) )
))
(declare-fun r!24602 () Regex!21551)

(declare-fun nullable!9644 (Regex!21551) Bool)

(assert (=> b!7985805 (= res!3161212 (nullable!9644 r!24602))))

(declare-datatypes ((List!74780 0))(
  ( (Nil!74656) (Cons!74656 (h!81104 C!43440) (t!390523 List!74780)) )
))
(declare-fun lt!2711603 () List!74780)

(declare-fun input!7927 () List!74780)

(declare-fun isPrefix!6651 (List!74780 List!74780) Bool)

(assert (=> b!7985805 (isPrefix!6651 lt!2711603 input!7927)))

(declare-datatypes ((Unit!170492 0))(
  ( (Unit!170493) )
))
(declare-fun lt!2711605 () Unit!170492)

(declare-fun testedP!447 () List!74780)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1370 (List!74780 List!74780) Unit!170492)

(assert (=> b!7985805 (= lt!2711605 (lemmaAddHeadSuffixToPrefixStillPrefix!1370 testedP!447 input!7927))))

(declare-fun lt!2711601 () C!43440)

(declare-fun ++!18413 (List!74780 List!74780) List!74780)

(assert (=> b!7985805 (= lt!2711603 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))))

(declare-fun lt!2711604 () List!74780)

(declare-fun head!16297 (List!74780) C!43440)

(assert (=> b!7985805 (= lt!2711601 (head!16297 lt!2711604))))

(declare-fun b!7985806 () Bool)

(declare-fun tp_is_empty!53645 () Bool)

(assert (=> b!7985806 (= e!4706617 tp_is_empty!53645)))

(declare-fun b!7985807 () Bool)

(declare-fun tp!2384166 () Bool)

(declare-fun tp!2384174 () Bool)

(assert (=> b!7985807 (= e!4706617 (and tp!2384166 tp!2384174))))

(declare-fun b!7985808 () Bool)

(declare-fun lt!2711607 () Int)

(declare-fun lt!2711600 () Int)

(declare-fun size!43487 (List!74780) Int)

(assert (=> b!7985808 (= e!4706619 (< (- lt!2711607 (size!43487 lt!2711603)) (- lt!2711607 lt!2711600)))))

(declare-fun baseR!116 () Regex!21551)

(declare-fun derivative!737 (Regex!21551 List!74780) Regex!21551)

(declare-fun derivativeStep!6571 (Regex!21551 C!43440) Regex!21551)

(assert (=> b!7985808 (= (derivative!737 baseR!116 lt!2711603) (derivativeStep!6571 r!24602 lt!2711601))))

(declare-fun lt!2711606 () Unit!170492)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!245 (Regex!21551 Regex!21551 List!74780 C!43440) Unit!170492)

(assert (=> b!7985808 (= lt!2711606 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!245 baseR!116 r!24602 testedP!447 lt!2711601))))

(declare-fun b!7985809 () Bool)

(declare-fun res!3161217 () Bool)

(declare-fun e!4706618 () Bool)

(assert (=> b!7985809 (=> (not res!3161217) (not e!4706618))))

(assert (=> b!7985809 (= res!3161217 (isPrefix!6651 testedP!447 input!7927))))

(declare-fun res!3161216 () Bool)

(assert (=> start!752304 (=> (not res!3161216) (not e!4706618))))

(declare-fun validRegex!11855 (Regex!21551) Bool)

(assert (=> start!752304 (= res!3161216 (validRegex!11855 baseR!116))))

(assert (=> start!752304 e!4706618))

(assert (=> start!752304 e!4706617))

(declare-fun e!4706624 () Bool)

(assert (=> start!752304 e!4706624))

(declare-fun e!4706625 () Bool)

(assert (=> start!752304 e!4706625))

(declare-fun e!4706623 () Bool)

(assert (=> start!752304 e!4706623))

(declare-fun b!7985810 () Bool)

(declare-fun e!4706620 () Unit!170492)

(declare-fun Unit!170494 () Unit!170492)

(assert (=> b!7985810 (= e!4706620 Unit!170494)))

(declare-fun lt!2711599 () Unit!170492)

(declare-fun lemmaIsPrefixRefl!4117 (List!74780 List!74780) Unit!170492)

(assert (=> b!7985810 (= lt!2711599 (lemmaIsPrefixRefl!4117 input!7927 input!7927))))

(assert (=> b!7985810 (isPrefix!6651 input!7927 input!7927)))

(declare-fun lt!2711598 () Unit!170492)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1695 (List!74780 List!74780 List!74780) Unit!170492)

(assert (=> b!7985810 (= lt!2711598 (lemmaIsPrefixSameLengthThenSameList!1695 input!7927 testedP!447 input!7927))))

(assert (=> b!7985810 false))

(declare-fun b!7985811 () Bool)

(declare-fun e!4706622 () Bool)

(assert (=> b!7985811 (= e!4706618 e!4706622)))

(declare-fun res!3161213 () Bool)

(assert (=> b!7985811 (=> (not res!3161213) (not e!4706622))))

(declare-fun isEmpty!42959 (List!74780) Bool)

(declare-datatypes ((tuple2!70760 0))(
  ( (tuple2!70761 (_1!38683 List!74780) (_2!38683 List!74780)) )
))
(declare-fun findLongestMatchInner!2330 (Regex!21551 List!74780 Int List!74780 List!74780 Int) tuple2!70760)

(assert (=> b!7985811 (= res!3161213 (not (isEmpty!42959 (_1!38683 (findLongestMatchInner!2330 r!24602 testedP!447 lt!2711600 lt!2711604 input!7927 lt!2711607)))))))

(assert (=> b!7985811 (= lt!2711607 (size!43487 input!7927))))

(declare-fun getSuffix!3852 (List!74780 List!74780) List!74780)

(assert (=> b!7985811 (= lt!2711604 (getSuffix!3852 input!7927 testedP!447))))

(assert (=> b!7985811 (= lt!2711600 (size!43487 testedP!447))))

(declare-fun b!7985812 () Bool)

(declare-fun res!3161215 () Bool)

(assert (=> b!7985812 (=> (not res!3161215) (not e!4706618))))

(assert (=> b!7985812 (= res!3161215 (= (derivative!737 baseR!116 testedP!447) r!24602))))

(declare-fun b!7985813 () Bool)

(declare-fun tp!2384170 () Bool)

(assert (=> b!7985813 (= e!4706623 tp!2384170)))

(declare-fun b!7985814 () Bool)

(assert (=> b!7985814 (= e!4706623 tp_is_empty!53645)))

(declare-fun b!7985815 () Bool)

(declare-fun Unit!170495 () Unit!170492)

(assert (=> b!7985815 (= e!4706620 Unit!170495)))

(declare-fun b!7985816 () Bool)

(declare-fun res!3161214 () Bool)

(assert (=> b!7985816 (=> (not res!3161214) (not e!4706622))))

(assert (=> b!7985816 (= res!3161214 (not (= testedP!447 input!7927)))))

(declare-fun b!7985817 () Bool)

(declare-fun tp!2384172 () Bool)

(assert (=> b!7985817 (= e!4706625 (and tp_is_empty!53645 tp!2384172))))

(declare-fun b!7985818 () Bool)

(declare-fun tp!2384167 () Bool)

(assert (=> b!7985818 (= e!4706624 (and tp_is_empty!53645 tp!2384167))))

(declare-fun b!7985819 () Bool)

(declare-fun tp!2384168 () Bool)

(declare-fun tp!2384165 () Bool)

(assert (=> b!7985819 (= e!4706623 (and tp!2384168 tp!2384165))))

(declare-fun b!7985820 () Bool)

(declare-fun tp!2384173 () Bool)

(declare-fun tp!2384164 () Bool)

(assert (=> b!7985820 (= e!4706623 (and tp!2384173 tp!2384164))))

(declare-fun b!7985821 () Bool)

(declare-fun tp!2384169 () Bool)

(declare-fun tp!2384171 () Bool)

(assert (=> b!7985821 (= e!4706617 (and tp!2384169 tp!2384171))))

(declare-fun b!7985822 () Bool)

(assert (=> b!7985822 (= e!4706622 (not e!4706621))))

(declare-fun res!3161218 () Bool)

(assert (=> b!7985822 (=> res!3161218 e!4706621)))

(assert (=> b!7985822 (= res!3161218 (>= lt!2711600 lt!2711607))))

(declare-fun lt!2711597 () Unit!170492)

(assert (=> b!7985822 (= lt!2711597 e!4706620)))

(declare-fun c!1466507 () Bool)

(assert (=> b!7985822 (= c!1466507 (= lt!2711600 lt!2711607))))

(assert (=> b!7985822 (<= lt!2711600 lt!2711607)))

(declare-fun lt!2711602 () Unit!170492)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1166 (List!74780 List!74780) Unit!170492)

(assert (=> b!7985822 (= lt!2711602 (lemmaIsPrefixThenSmallerEqSize!1166 testedP!447 input!7927))))

(assert (= (and start!752304 res!3161216) b!7985809))

(assert (= (and b!7985809 res!3161217) b!7985812))

(assert (= (and b!7985812 res!3161215) b!7985811))

(assert (= (and b!7985811 res!3161213) b!7985816))

(assert (= (and b!7985816 res!3161214) b!7985822))

(assert (= (and b!7985822 c!1466507) b!7985810))

(assert (= (and b!7985822 (not c!1466507)) b!7985815))

(assert (= (and b!7985822 (not res!3161218)) b!7985805))

(assert (= (and b!7985805 (not res!3161212)) b!7985808))

(get-info :version)

(assert (= (and start!752304 ((_ is ElementMatch!21551) baseR!116)) b!7985806))

(assert (= (and start!752304 ((_ is Concat!30550) baseR!116)) b!7985821))

(assert (= (and start!752304 ((_ is Star!21551) baseR!116)) b!7985804))

(assert (= (and start!752304 ((_ is Union!21551) baseR!116)) b!7985807))

(assert (= (and start!752304 ((_ is Cons!74656) testedP!447)) b!7985818))

(assert (= (and start!752304 ((_ is Cons!74656) input!7927)) b!7985817))

(assert (= (and start!752304 ((_ is ElementMatch!21551) r!24602)) b!7985814))

(assert (= (and start!752304 ((_ is Concat!30550) r!24602)) b!7985819))

(assert (= (and start!752304 ((_ is Star!21551) r!24602)) b!7985813))

(assert (= (and start!752304 ((_ is Union!21551) r!24602)) b!7985820))

(declare-fun m!8360132 () Bool)

(assert (=> b!7985805 m!8360132))

(declare-fun m!8360134 () Bool)

(assert (=> b!7985805 m!8360134))

(declare-fun m!8360136 () Bool)

(assert (=> b!7985805 m!8360136))

(declare-fun m!8360138 () Bool)

(assert (=> b!7985805 m!8360138))

(declare-fun m!8360140 () Bool)

(assert (=> b!7985805 m!8360140))

(declare-fun m!8360142 () Bool)

(assert (=> b!7985811 m!8360142))

(declare-fun m!8360144 () Bool)

(assert (=> b!7985811 m!8360144))

(declare-fun m!8360146 () Bool)

(assert (=> b!7985811 m!8360146))

(declare-fun m!8360148 () Bool)

(assert (=> b!7985811 m!8360148))

(declare-fun m!8360150 () Bool)

(assert (=> b!7985811 m!8360150))

(declare-fun m!8360152 () Bool)

(assert (=> b!7985812 m!8360152))

(declare-fun m!8360154 () Bool)

(assert (=> start!752304 m!8360154))

(declare-fun m!8360156 () Bool)

(assert (=> b!7985822 m!8360156))

(declare-fun m!8360158 () Bool)

(assert (=> b!7985808 m!8360158))

(declare-fun m!8360160 () Bool)

(assert (=> b!7985808 m!8360160))

(declare-fun m!8360162 () Bool)

(assert (=> b!7985808 m!8360162))

(declare-fun m!8360164 () Bool)

(assert (=> b!7985808 m!8360164))

(declare-fun m!8360166 () Bool)

(assert (=> b!7985810 m!8360166))

(declare-fun m!8360168 () Bool)

(assert (=> b!7985810 m!8360168))

(declare-fun m!8360170 () Bool)

(assert (=> b!7985810 m!8360170))

(declare-fun m!8360172 () Bool)

(assert (=> b!7985809 m!8360172))

(check-sat (not b!7985812) (not b!7985813) (not b!7985819) tp_is_empty!53645 (not b!7985822) (not b!7985808) (not b!7985818) (not b!7985805) (not b!7985807) (not b!7985821) (not b!7985804) (not b!7985809) (not start!752304) (not b!7985811) (not b!7985820) (not b!7985817) (not b!7985810))
(check-sat)
(get-model)

(declare-fun d!2383728 () Bool)

(declare-fun lt!2711610 () Int)

(assert (=> d!2383728 (>= lt!2711610 0)))

(declare-fun e!4706628 () Int)

(assert (=> d!2383728 (= lt!2711610 e!4706628)))

(declare-fun c!1466511 () Bool)

(assert (=> d!2383728 (= c!1466511 ((_ is Nil!74656) lt!2711603))))

(assert (=> d!2383728 (= (size!43487 lt!2711603) lt!2711610)))

(declare-fun b!7985827 () Bool)

(assert (=> b!7985827 (= e!4706628 0)))

(declare-fun b!7985828 () Bool)

(assert (=> b!7985828 (= e!4706628 (+ 1 (size!43487 (t!390523 lt!2711603))))))

(assert (= (and d!2383728 c!1466511) b!7985827))

(assert (= (and d!2383728 (not c!1466511)) b!7985828))

(declare-fun m!8360174 () Bool)

(assert (=> b!7985828 m!8360174))

(assert (=> b!7985808 d!2383728))

(declare-fun d!2383730 () Bool)

(declare-fun lt!2711613 () Regex!21551)

(assert (=> d!2383730 (validRegex!11855 lt!2711613)))

(declare-fun e!4706631 () Regex!21551)

(assert (=> d!2383730 (= lt!2711613 e!4706631)))

(declare-fun c!1466514 () Bool)

(assert (=> d!2383730 (= c!1466514 ((_ is Cons!74656) lt!2711603))))

(assert (=> d!2383730 (validRegex!11855 baseR!116)))

(assert (=> d!2383730 (= (derivative!737 baseR!116 lt!2711603) lt!2711613)))

(declare-fun b!7985833 () Bool)

(assert (=> b!7985833 (= e!4706631 (derivative!737 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (t!390523 lt!2711603)))))

(declare-fun b!7985834 () Bool)

(assert (=> b!7985834 (= e!4706631 baseR!116)))

(assert (= (and d!2383730 c!1466514) b!7985833))

(assert (= (and d!2383730 (not c!1466514)) b!7985834))

(declare-fun m!8360176 () Bool)

(assert (=> d!2383730 m!8360176))

(assert (=> d!2383730 m!8360154))

(declare-fun m!8360178 () Bool)

(assert (=> b!7985833 m!8360178))

(assert (=> b!7985833 m!8360178))

(declare-fun m!8360180 () Bool)

(assert (=> b!7985833 m!8360180))

(assert (=> b!7985808 d!2383730))

(declare-fun bm!741485 () Bool)

(declare-fun c!1466531 () Bool)

(declare-fun c!1466533 () Bool)

(declare-fun call!741492 () Regex!21551)

(declare-fun c!1466535 () Bool)

(assert (=> bm!741485 (= call!741492 (derivativeStep!6571 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))) lt!2711601))))

(declare-fun e!4706673 () Regex!21551)

(declare-fun call!741491 () Regex!21551)

(declare-fun b!7985894 () Bool)

(declare-fun call!741493 () Regex!21551)

(assert (=> b!7985894 (= e!4706673 (Union!21551 (Concat!30550 call!741493 (regTwo!43614 r!24602)) call!741491))))

(declare-fun d!2383732 () Bool)

(declare-fun lt!2711619 () Regex!21551)

(assert (=> d!2383732 (validRegex!11855 lt!2711619)))

(declare-fun e!4706672 () Regex!21551)

(assert (=> d!2383732 (= lt!2711619 e!4706672)))

(declare-fun c!1466534 () Bool)

(assert (=> d!2383732 (= c!1466534 (or ((_ is EmptyExpr!21551) r!24602) ((_ is EmptyLang!21551) r!24602)))))

(assert (=> d!2383732 (validRegex!11855 r!24602)))

(assert (=> d!2383732 (= (derivativeStep!6571 r!24602 lt!2711601) lt!2711619)))

(declare-fun bm!741486 () Bool)

(declare-fun call!741490 () Regex!21551)

(assert (=> bm!741486 (= call!741490 call!741492)))

(declare-fun b!7985895 () Bool)

(assert (=> b!7985895 (= c!1466531 ((_ is Union!21551) r!24602))))

(declare-fun e!4706675 () Regex!21551)

(declare-fun e!4706674 () Regex!21551)

(assert (=> b!7985895 (= e!4706675 e!4706674)))

(declare-fun b!7985896 () Bool)

(assert (=> b!7985896 (= e!4706675 (ite (= lt!2711601 (c!1466508 r!24602)) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7985897 () Bool)

(declare-fun e!4706676 () Regex!21551)

(assert (=> b!7985897 (= e!4706674 e!4706676)))

(assert (=> b!7985897 (= c!1466533 ((_ is Star!21551) r!24602))))

(declare-fun b!7985898 () Bool)

(assert (=> b!7985898 (= e!4706672 e!4706675)))

(declare-fun c!1466532 () Bool)

(assert (=> b!7985898 (= c!1466532 ((_ is ElementMatch!21551) r!24602))))

(declare-fun b!7985899 () Bool)

(assert (=> b!7985899 (= c!1466535 (nullable!9644 (regOne!43614 r!24602)))))

(assert (=> b!7985899 (= e!4706676 e!4706673)))

(declare-fun bm!741487 () Bool)

(assert (=> bm!741487 (= call!741493 (derivativeStep!6571 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)) lt!2711601))))

(declare-fun b!7985900 () Bool)

(assert (=> b!7985900 (= e!4706673 (Union!21551 (Concat!30550 call!741491 (regTwo!43614 r!24602)) EmptyLang!21551))))

(declare-fun bm!741488 () Bool)

(assert (=> bm!741488 (= call!741491 call!741490)))

(declare-fun b!7985901 () Bool)

(assert (=> b!7985901 (= e!4706676 (Concat!30550 call!741490 r!24602))))

(declare-fun b!7985902 () Bool)

(assert (=> b!7985902 (= e!4706674 (Union!21551 call!741493 call!741492))))

(declare-fun b!7985903 () Bool)

(assert (=> b!7985903 (= e!4706672 EmptyLang!21551)))

(assert (= (and d!2383732 c!1466534) b!7985903))

(assert (= (and d!2383732 (not c!1466534)) b!7985898))

(assert (= (and b!7985898 c!1466532) b!7985896))

(assert (= (and b!7985898 (not c!1466532)) b!7985895))

(assert (= (and b!7985895 c!1466531) b!7985902))

(assert (= (and b!7985895 (not c!1466531)) b!7985897))

(assert (= (and b!7985897 c!1466533) b!7985901))

(assert (= (and b!7985897 (not c!1466533)) b!7985899))

(assert (= (and b!7985899 c!1466535) b!7985894))

(assert (= (and b!7985899 (not c!1466535)) b!7985900))

(assert (= (or b!7985894 b!7985900) bm!741488))

(assert (= (or b!7985901 bm!741488) bm!741486))

(assert (= (or b!7985902 bm!741486) bm!741485))

(assert (= (or b!7985902 b!7985894) bm!741487))

(declare-fun m!8360198 () Bool)

(assert (=> bm!741485 m!8360198))

(declare-fun m!8360200 () Bool)

(assert (=> d!2383732 m!8360200))

(declare-fun m!8360202 () Bool)

(assert (=> d!2383732 m!8360202))

(declare-fun m!8360204 () Bool)

(assert (=> b!7985899 m!8360204))

(declare-fun m!8360206 () Bool)

(assert (=> bm!741487 m!8360206))

(assert (=> b!7985808 d!2383732))

(declare-fun d!2383740 () Bool)

(assert (=> d!2383740 (= (derivative!737 baseR!116 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656))) (derivativeStep!6571 r!24602 lt!2711601))))

(declare-fun lt!2711622 () Unit!170492)

(declare-fun choose!60169 (Regex!21551 Regex!21551 List!74780 C!43440) Unit!170492)

(assert (=> d!2383740 (= lt!2711622 (choose!60169 baseR!116 r!24602 testedP!447 lt!2711601))))

(assert (=> d!2383740 (validRegex!11855 baseR!116)))

(assert (=> d!2383740 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!245 baseR!116 r!24602 testedP!447 lt!2711601) lt!2711622)))

(declare-fun bs!1970305 () Bool)

(assert (= bs!1970305 d!2383740))

(assert (=> bs!1970305 m!8360154))

(assert (=> bs!1970305 m!8360162))

(declare-fun m!8360208 () Bool)

(assert (=> bs!1970305 m!8360208))

(assert (=> bs!1970305 m!8360134))

(declare-fun m!8360210 () Bool)

(assert (=> bs!1970305 m!8360210))

(assert (=> bs!1970305 m!8360134))

(assert (=> b!7985808 d!2383740))

(declare-fun d!2383742 () Bool)

(declare-fun lt!2711623 () Regex!21551)

(assert (=> d!2383742 (validRegex!11855 lt!2711623)))

(declare-fun e!4706677 () Regex!21551)

(assert (=> d!2383742 (= lt!2711623 e!4706677)))

(declare-fun c!1466537 () Bool)

(assert (=> d!2383742 (= c!1466537 ((_ is Cons!74656) testedP!447))))

(assert (=> d!2383742 (validRegex!11855 baseR!116)))

(assert (=> d!2383742 (= (derivative!737 baseR!116 testedP!447) lt!2711623)))

(declare-fun b!7985904 () Bool)

(assert (=> b!7985904 (= e!4706677 (derivative!737 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (t!390523 testedP!447)))))

(declare-fun b!7985905 () Bool)

(assert (=> b!7985905 (= e!4706677 baseR!116)))

(assert (= (and d!2383742 c!1466537) b!7985904))

(assert (= (and d!2383742 (not c!1466537)) b!7985905))

(declare-fun m!8360212 () Bool)

(assert (=> d!2383742 m!8360212))

(assert (=> d!2383742 m!8360154))

(declare-fun m!8360214 () Bool)

(assert (=> b!7985904 m!8360214))

(assert (=> b!7985904 m!8360214))

(declare-fun m!8360216 () Bool)

(assert (=> b!7985904 m!8360216))

(assert (=> b!7985812 d!2383742))

(declare-fun d!2383744 () Bool)

(declare-fun lt!2711624 () Int)

(assert (=> d!2383744 (>= lt!2711624 0)))

(declare-fun e!4706678 () Int)

(assert (=> d!2383744 (= lt!2711624 e!4706678)))

(declare-fun c!1466538 () Bool)

(assert (=> d!2383744 (= c!1466538 ((_ is Nil!74656) input!7927))))

(assert (=> d!2383744 (= (size!43487 input!7927) lt!2711624)))

(declare-fun b!7985906 () Bool)

(assert (=> b!7985906 (= e!4706678 0)))

(declare-fun b!7985907 () Bool)

(assert (=> b!7985907 (= e!4706678 (+ 1 (size!43487 (t!390523 input!7927))))))

(assert (= (and d!2383744 c!1466538) b!7985906))

(assert (= (and d!2383744 (not c!1466538)) b!7985907))

(declare-fun m!8360218 () Bool)

(assert (=> b!7985907 m!8360218))

(assert (=> b!7985811 d!2383744))

(declare-fun d!2383746 () Bool)

(assert (=> d!2383746 (= (isEmpty!42959 (_1!38683 (findLongestMatchInner!2330 r!24602 testedP!447 lt!2711600 lt!2711604 input!7927 lt!2711607))) ((_ is Nil!74656) (_1!38683 (findLongestMatchInner!2330 r!24602 testedP!447 lt!2711600 lt!2711604 input!7927 lt!2711607))))))

(assert (=> b!7985811 d!2383746))

(declare-fun d!2383748 () Bool)

(declare-fun lt!2711627 () List!74780)

(assert (=> d!2383748 (= (++!18413 testedP!447 lt!2711627) input!7927)))

(declare-fun e!4706681 () List!74780)

(assert (=> d!2383748 (= lt!2711627 e!4706681)))

(declare-fun c!1466541 () Bool)

(assert (=> d!2383748 (= c!1466541 ((_ is Cons!74656) testedP!447))))

(assert (=> d!2383748 (>= (size!43487 input!7927) (size!43487 testedP!447))))

(assert (=> d!2383748 (= (getSuffix!3852 input!7927 testedP!447) lt!2711627)))

(declare-fun b!7985912 () Bool)

(declare-fun tail!15824 (List!74780) List!74780)

(assert (=> b!7985912 (= e!4706681 (getSuffix!3852 (tail!15824 input!7927) (t!390523 testedP!447)))))

(declare-fun b!7985913 () Bool)

(assert (=> b!7985913 (= e!4706681 input!7927)))

(assert (= (and d!2383748 c!1466541) b!7985912))

(assert (= (and d!2383748 (not c!1466541)) b!7985913))

(declare-fun m!8360220 () Bool)

(assert (=> d!2383748 m!8360220))

(assert (=> d!2383748 m!8360144))

(assert (=> d!2383748 m!8360150))

(declare-fun m!8360222 () Bool)

(assert (=> b!7985912 m!8360222))

(assert (=> b!7985912 m!8360222))

(declare-fun m!8360224 () Bool)

(assert (=> b!7985912 m!8360224))

(assert (=> b!7985811 d!2383748))

(declare-fun bm!741541 () Bool)

(declare-fun call!741550 () C!43440)

(assert (=> bm!741541 (= call!741550 (head!16297 lt!2711604))))

(declare-fun bm!741542 () Bool)

(declare-fun call!741547 () Bool)

(assert (=> bm!741542 (= call!741547 (isPrefix!6651 input!7927 input!7927))))

(declare-fun b!7986114 () Bool)

(declare-fun e!4706784 () tuple2!70760)

(declare-fun call!741549 () tuple2!70760)

(assert (=> b!7986114 (= e!4706784 call!741549)))

(declare-fun b!7986115 () Bool)

(declare-fun e!4706777 () Bool)

(declare-fun e!4706779 () Bool)

(assert (=> b!7986115 (= e!4706777 e!4706779)))

(declare-fun res!3161270 () Bool)

(assert (=> b!7986115 (=> res!3161270 e!4706779)))

(declare-fun lt!2711815 () tuple2!70760)

(assert (=> b!7986115 (= res!3161270 (isEmpty!42959 (_1!38683 lt!2711815)))))

(declare-fun d!2383750 () Bool)

(assert (=> d!2383750 e!4706777))

(declare-fun res!3161271 () Bool)

(assert (=> d!2383750 (=> (not res!3161271) (not e!4706777))))

(assert (=> d!2383750 (= res!3161271 (= (++!18413 (_1!38683 lt!2711815) (_2!38683 lt!2711815)) input!7927))))

(declare-fun e!4706783 () tuple2!70760)

(assert (=> d!2383750 (= lt!2711815 e!4706783)))

(declare-fun c!1466603 () Bool)

(declare-fun lostCause!2004 (Regex!21551) Bool)

(assert (=> d!2383750 (= c!1466603 (lostCause!2004 r!24602))))

(declare-fun lt!2711827 () Unit!170492)

(declare-fun Unit!170499 () Unit!170492)

(assert (=> d!2383750 (= lt!2711827 Unit!170499)))

(assert (=> d!2383750 (= (getSuffix!3852 input!7927 testedP!447) lt!2711604)))

(declare-fun lt!2711811 () Unit!170492)

(declare-fun lt!2711807 () Unit!170492)

(assert (=> d!2383750 (= lt!2711811 lt!2711807)))

(declare-fun lt!2711820 () List!74780)

(assert (=> d!2383750 (= lt!2711604 lt!2711820)))

(declare-fun lemmaSamePrefixThenSameSuffix!3020 (List!74780 List!74780 List!74780 List!74780 List!74780) Unit!170492)

(assert (=> d!2383750 (= lt!2711807 (lemmaSamePrefixThenSameSuffix!3020 testedP!447 lt!2711604 testedP!447 lt!2711820 input!7927))))

(assert (=> d!2383750 (= lt!2711820 (getSuffix!3852 input!7927 testedP!447))))

(declare-fun lt!2711810 () Unit!170492)

(declare-fun lt!2711814 () Unit!170492)

(assert (=> d!2383750 (= lt!2711810 lt!2711814)))

(assert (=> d!2383750 (isPrefix!6651 testedP!447 (++!18413 testedP!447 lt!2711604))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3882 (List!74780 List!74780) Unit!170492)

(assert (=> d!2383750 (= lt!2711814 (lemmaConcatTwoListThenFirstIsPrefix!3882 testedP!447 lt!2711604))))

(assert (=> d!2383750 (validRegex!11855 r!24602)))

(assert (=> d!2383750 (= (findLongestMatchInner!2330 r!24602 testedP!447 lt!2711600 lt!2711604 input!7927 lt!2711607) lt!2711815)))

(declare-fun b!7986116 () Bool)

(assert (=> b!7986116 (= e!4706783 (tuple2!70761 Nil!74656 input!7927))))

(declare-fun b!7986117 () Bool)

(declare-fun c!1466605 () Bool)

(declare-fun call!741552 () Bool)

(assert (=> b!7986117 (= c!1466605 call!741552)))

(declare-fun lt!2711825 () Unit!170492)

(declare-fun lt!2711823 () Unit!170492)

(assert (=> b!7986117 (= lt!2711825 lt!2711823)))

(assert (=> b!7986117 (= input!7927 testedP!447)))

(declare-fun call!741548 () Unit!170492)

(assert (=> b!7986117 (= lt!2711823 call!741548)))

(declare-fun lt!2711829 () Unit!170492)

(declare-fun lt!2711816 () Unit!170492)

(assert (=> b!7986117 (= lt!2711829 lt!2711816)))

(assert (=> b!7986117 call!741547))

(declare-fun call!741551 () Unit!170492)

(assert (=> b!7986117 (= lt!2711816 call!741551)))

(declare-fun e!4706780 () tuple2!70760)

(declare-fun e!4706778 () tuple2!70760)

(assert (=> b!7986117 (= e!4706780 e!4706778)))

(declare-fun b!7986118 () Bool)

(declare-fun e!4706782 () tuple2!70760)

(assert (=> b!7986118 (= e!4706784 e!4706782)))

(declare-fun lt!2711818 () tuple2!70760)

(assert (=> b!7986118 (= lt!2711818 call!741549)))

(declare-fun c!1466606 () Bool)

(assert (=> b!7986118 (= c!1466606 (isEmpty!42959 (_1!38683 lt!2711818)))))

(declare-fun b!7986119 () Bool)

(declare-fun e!4706781 () Unit!170492)

(declare-fun Unit!170500 () Unit!170492)

(assert (=> b!7986119 (= e!4706781 Unit!170500)))

(declare-fun bm!741543 () Bool)

(assert (=> bm!741543 (= call!741551 (lemmaIsPrefixRefl!4117 input!7927 input!7927))))

(declare-fun b!7986120 () Bool)

(assert (=> b!7986120 (= e!4706782 lt!2711818)))

(declare-fun b!7986121 () Bool)

(declare-fun Unit!170501 () Unit!170492)

(assert (=> b!7986121 (= e!4706781 Unit!170501)))

(declare-fun lt!2711819 () Unit!170492)

(assert (=> b!7986121 (= lt!2711819 call!741551)))

(assert (=> b!7986121 call!741547))

(declare-fun lt!2711826 () Unit!170492)

(assert (=> b!7986121 (= lt!2711826 lt!2711819)))

(declare-fun lt!2711828 () Unit!170492)

(assert (=> b!7986121 (= lt!2711828 call!741548)))

(assert (=> b!7986121 (= input!7927 testedP!447)))

(declare-fun lt!2711804 () Unit!170492)

(assert (=> b!7986121 (= lt!2711804 lt!2711828)))

(assert (=> b!7986121 false))

(declare-fun b!7986122 () Bool)

(assert (=> b!7986122 (= e!4706782 (tuple2!70761 testedP!447 lt!2711604))))

(declare-fun bm!741544 () Bool)

(assert (=> bm!741544 (= call!741552 (nullable!9644 r!24602))))

(declare-fun b!7986123 () Bool)

(assert (=> b!7986123 (= e!4706778 (tuple2!70761 Nil!74656 input!7927))))

(declare-fun call!741546 () Regex!21551)

(declare-fun lt!2711812 () List!74780)

(declare-fun bm!741545 () Bool)

(declare-fun call!741553 () List!74780)

(assert (=> bm!741545 (= call!741549 (findLongestMatchInner!2330 call!741546 lt!2711812 (+ lt!2711600 1) call!741553 input!7927 lt!2711607))))

(declare-fun bm!741546 () Bool)

(assert (=> bm!741546 (= call!741553 (tail!15824 lt!2711604))))

(declare-fun b!7986124 () Bool)

(assert (=> b!7986124 (= e!4706779 (>= (size!43487 (_1!38683 lt!2711815)) (size!43487 testedP!447)))))

(declare-fun bm!741547 () Bool)

(assert (=> bm!741547 (= call!741548 (lemmaIsPrefixSameLengthThenSameList!1695 input!7927 testedP!447 input!7927))))

(declare-fun b!7986125 () Bool)

(declare-fun c!1466608 () Bool)

(assert (=> b!7986125 (= c!1466608 call!741552)))

(declare-fun lt!2711821 () Unit!170492)

(declare-fun lt!2711817 () Unit!170492)

(assert (=> b!7986125 (= lt!2711821 lt!2711817)))

(declare-fun lt!2711830 () C!43440)

(declare-fun lt!2711808 () List!74780)

(assert (=> b!7986125 (= (++!18413 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)) lt!2711808) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3560 (List!74780 C!43440 List!74780 List!74780) Unit!170492)

(assert (=> b!7986125 (= lt!2711817 (lemmaMoveElementToOtherListKeepsConcatEq!3560 testedP!447 lt!2711830 lt!2711808 input!7927))))

(assert (=> b!7986125 (= lt!2711808 (tail!15824 lt!2711604))))

(assert (=> b!7986125 (= lt!2711830 (head!16297 lt!2711604))))

(declare-fun lt!2711813 () Unit!170492)

(declare-fun lt!2711803 () Unit!170492)

(assert (=> b!7986125 (= lt!2711813 lt!2711803)))

(assert (=> b!7986125 (isPrefix!6651 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) input!7927)))

(assert (=> b!7986125 (= lt!2711803 (lemmaAddHeadSuffixToPrefixStillPrefix!1370 testedP!447 input!7927))))

(declare-fun lt!2711822 () Unit!170492)

(declare-fun lt!2711824 () Unit!170492)

(assert (=> b!7986125 (= lt!2711822 lt!2711824)))

(assert (=> b!7986125 (= lt!2711824 (lemmaAddHeadSuffixToPrefixStillPrefix!1370 testedP!447 input!7927))))

(assert (=> b!7986125 (= lt!2711812 (++!18413 testedP!447 (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))

(declare-fun lt!2711806 () Unit!170492)

(assert (=> b!7986125 (= lt!2711806 e!4706781)))

(declare-fun c!1466604 () Bool)

(assert (=> b!7986125 (= c!1466604 (= (size!43487 testedP!447) (size!43487 input!7927)))))

(declare-fun lt!2711809 () Unit!170492)

(declare-fun lt!2711805 () Unit!170492)

(assert (=> b!7986125 (= lt!2711809 lt!2711805)))

(assert (=> b!7986125 (<= (size!43487 testedP!447) (size!43487 input!7927))))

(assert (=> b!7986125 (= lt!2711805 (lemmaIsPrefixThenSmallerEqSize!1166 testedP!447 input!7927))))

(assert (=> b!7986125 (= e!4706780 e!4706784)))

(declare-fun b!7986126 () Bool)

(assert (=> b!7986126 (= e!4706778 (tuple2!70761 testedP!447 Nil!74656))))

(declare-fun bm!741548 () Bool)

(assert (=> bm!741548 (= call!741546 (derivativeStep!6571 r!24602 call!741550))))

(declare-fun b!7986127 () Bool)

(assert (=> b!7986127 (= e!4706783 e!4706780)))

(declare-fun c!1466607 () Bool)

(assert (=> b!7986127 (= c!1466607 (= lt!2711600 lt!2711607))))

(assert (= (and d!2383750 c!1466603) b!7986116))

(assert (= (and d!2383750 (not c!1466603)) b!7986127))

(assert (= (and b!7986127 c!1466607) b!7986117))

(assert (= (and b!7986127 (not c!1466607)) b!7986125))

(assert (= (and b!7986117 c!1466605) b!7986126))

(assert (= (and b!7986117 (not c!1466605)) b!7986123))

(assert (= (and b!7986125 c!1466604) b!7986121))

(assert (= (and b!7986125 (not c!1466604)) b!7986119))

(assert (= (and b!7986125 c!1466608) b!7986118))

(assert (= (and b!7986125 (not c!1466608)) b!7986114))

(assert (= (and b!7986118 c!1466606) b!7986122))

(assert (= (and b!7986118 (not c!1466606)) b!7986120))

(assert (= (or b!7986118 b!7986114) bm!741541))

(assert (= (or b!7986118 b!7986114) bm!741546))

(assert (= (or b!7986118 b!7986114) bm!741548))

(assert (= (or b!7986118 b!7986114) bm!741545))

(assert (= (or b!7986117 b!7986125) bm!741544))

(assert (= (or b!7986117 b!7986121) bm!741547))

(assert (= (or b!7986117 b!7986121) bm!741543))

(assert (= (or b!7986117 b!7986121) bm!741542))

(assert (= (and d!2383750 res!3161271) b!7986115))

(assert (= (and b!7986115 (not res!3161270)) b!7986124))

(declare-fun m!8360330 () Bool)

(assert (=> b!7986118 m!8360330))

(assert (=> bm!741542 m!8360168))

(assert (=> d!2383750 m!8360146))

(declare-fun m!8360332 () Bool)

(assert (=> d!2383750 m!8360332))

(declare-fun m!8360334 () Bool)

(assert (=> d!2383750 m!8360334))

(declare-fun m!8360336 () Bool)

(assert (=> d!2383750 m!8360336))

(declare-fun m!8360338 () Bool)

(assert (=> d!2383750 m!8360338))

(assert (=> d!2383750 m!8360202))

(declare-fun m!8360340 () Bool)

(assert (=> d!2383750 m!8360340))

(declare-fun m!8360342 () Bool)

(assert (=> d!2383750 m!8360342))

(assert (=> d!2383750 m!8360334))

(declare-fun m!8360344 () Bool)

(assert (=> b!7986124 m!8360344))

(assert (=> b!7986124 m!8360150))

(assert (=> bm!741547 m!8360170))

(assert (=> bm!741541 m!8360136))

(declare-fun m!8360346 () Bool)

(assert (=> b!7986125 m!8360346))

(declare-fun m!8360348 () Bool)

(assert (=> b!7986125 m!8360348))

(declare-fun m!8360350 () Bool)

(assert (=> b!7986125 m!8360350))

(declare-fun m!8360352 () Bool)

(assert (=> b!7986125 m!8360352))

(assert (=> b!7986125 m!8360144))

(assert (=> b!7986125 m!8360146))

(declare-fun m!8360354 () Bool)

(assert (=> b!7986125 m!8360354))

(assert (=> b!7986125 m!8360346))

(declare-fun m!8360356 () Bool)

(assert (=> b!7986125 m!8360356))

(assert (=> b!7986125 m!8360140))

(assert (=> b!7986125 m!8360136))

(declare-fun m!8360358 () Bool)

(assert (=> b!7986125 m!8360358))

(assert (=> b!7986125 m!8360156))

(assert (=> b!7986125 m!8360146))

(assert (=> b!7986125 m!8360150))

(declare-fun m!8360360 () Bool)

(assert (=> b!7986125 m!8360360))

(assert (=> b!7986125 m!8360348))

(declare-fun m!8360362 () Bool)

(assert (=> bm!741548 m!8360362))

(declare-fun m!8360364 () Bool)

(assert (=> b!7986115 m!8360364))

(assert (=> bm!741543 m!8360166))

(assert (=> bm!741546 m!8360352))

(assert (=> bm!741544 m!8360132))

(declare-fun m!8360366 () Bool)

(assert (=> bm!741545 m!8360366))

(assert (=> b!7985811 d!2383750))

(declare-fun d!2383788 () Bool)

(declare-fun lt!2711831 () Int)

(assert (=> d!2383788 (>= lt!2711831 0)))

(declare-fun e!4706785 () Int)

(assert (=> d!2383788 (= lt!2711831 e!4706785)))

(declare-fun c!1466609 () Bool)

(assert (=> d!2383788 (= c!1466609 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383788 (= (size!43487 testedP!447) lt!2711831)))

(declare-fun b!7986128 () Bool)

(assert (=> b!7986128 (= e!4706785 0)))

(declare-fun b!7986129 () Bool)

(assert (=> b!7986129 (= e!4706785 (+ 1 (size!43487 (t!390523 testedP!447))))))

(assert (= (and d!2383788 c!1466609) b!7986128))

(assert (= (and d!2383788 (not c!1466609)) b!7986129))

(declare-fun m!8360368 () Bool)

(assert (=> b!7986129 m!8360368))

(assert (=> b!7985811 d!2383788))

(declare-fun d!2383790 () Bool)

(assert (=> d!2383790 (<= (size!43487 testedP!447) (size!43487 input!7927))))

(declare-fun lt!2711834 () Unit!170492)

(declare-fun choose!60172 (List!74780 List!74780) Unit!170492)

(assert (=> d!2383790 (= lt!2711834 (choose!60172 testedP!447 input!7927))))

(assert (=> d!2383790 (isPrefix!6651 testedP!447 input!7927)))

(assert (=> d!2383790 (= (lemmaIsPrefixThenSmallerEqSize!1166 testedP!447 input!7927) lt!2711834)))

(declare-fun bs!1970312 () Bool)

(assert (= bs!1970312 d!2383790))

(assert (=> bs!1970312 m!8360150))

(assert (=> bs!1970312 m!8360144))

(declare-fun m!8360370 () Bool)

(assert (=> bs!1970312 m!8360370))

(assert (=> bs!1970312 m!8360172))

(assert (=> b!7985822 d!2383790))

(declare-fun d!2383792 () Bool)

(assert (=> d!2383792 (isPrefix!6651 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) input!7927)))

(declare-fun lt!2711837 () Unit!170492)

(declare-fun choose!60173 (List!74780 List!74780) Unit!170492)

(assert (=> d!2383792 (= lt!2711837 (choose!60173 testedP!447 input!7927))))

(assert (=> d!2383792 (isPrefix!6651 testedP!447 input!7927)))

(assert (=> d!2383792 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1370 testedP!447 input!7927) lt!2711837)))

(declare-fun bs!1970313 () Bool)

(assert (= bs!1970313 d!2383792))

(assert (=> bs!1970313 m!8360146))

(assert (=> bs!1970313 m!8360354))

(assert (=> bs!1970313 m!8360172))

(assert (=> bs!1970313 m!8360146))

(assert (=> bs!1970313 m!8360348))

(assert (=> bs!1970313 m!8360350))

(declare-fun m!8360372 () Bool)

(assert (=> bs!1970313 m!8360372))

(assert (=> bs!1970313 m!8360348))

(assert (=> b!7985805 d!2383792))

(declare-fun b!7986139 () Bool)

(declare-fun e!4706791 () List!74780)

(assert (=> b!7986139 (= e!4706791 (Cons!74656 (h!81104 testedP!447) (++!18413 (t!390523 testedP!447) (Cons!74656 lt!2711601 Nil!74656))))))

(declare-fun b!7986138 () Bool)

(assert (=> b!7986138 (= e!4706791 (Cons!74656 lt!2711601 Nil!74656))))

(declare-fun d!2383794 () Bool)

(declare-fun e!4706790 () Bool)

(assert (=> d!2383794 e!4706790))

(declare-fun res!3161277 () Bool)

(assert (=> d!2383794 (=> (not res!3161277) (not e!4706790))))

(declare-fun lt!2711840 () List!74780)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15870 (List!74780) (InoxSet C!43440))

(assert (=> d!2383794 (= res!3161277 (= (content!15870 lt!2711840) ((_ map or) (content!15870 testedP!447) (content!15870 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (=> d!2383794 (= lt!2711840 e!4706791)))

(declare-fun c!1466612 () Bool)

(assert (=> d!2383794 (= c!1466612 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383794 (= (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)) lt!2711840)))

(declare-fun b!7986140 () Bool)

(declare-fun res!3161276 () Bool)

(assert (=> b!7986140 (=> (not res!3161276) (not e!4706790))))

(assert (=> b!7986140 (= res!3161276 (= (size!43487 lt!2711840) (+ (size!43487 testedP!447) (size!43487 (Cons!74656 lt!2711601 Nil!74656)))))))

(declare-fun b!7986141 () Bool)

(assert (=> b!7986141 (= e!4706790 (or (not (= (Cons!74656 lt!2711601 Nil!74656) Nil!74656)) (= lt!2711840 testedP!447)))))

(assert (= (and d!2383794 c!1466612) b!7986138))

(assert (= (and d!2383794 (not c!1466612)) b!7986139))

(assert (= (and d!2383794 res!3161277) b!7986140))

(assert (= (and b!7986140 res!3161276) b!7986141))

(declare-fun m!8360374 () Bool)

(assert (=> b!7986139 m!8360374))

(declare-fun m!8360376 () Bool)

(assert (=> d!2383794 m!8360376))

(declare-fun m!8360378 () Bool)

(assert (=> d!2383794 m!8360378))

(declare-fun m!8360380 () Bool)

(assert (=> d!2383794 m!8360380))

(declare-fun m!8360382 () Bool)

(assert (=> b!7986140 m!8360382))

(assert (=> b!7986140 m!8360150))

(declare-fun m!8360384 () Bool)

(assert (=> b!7986140 m!8360384))

(assert (=> b!7985805 d!2383794))

(declare-fun d!2383796 () Bool)

(declare-fun nullableFct!3814 (Regex!21551) Bool)

(assert (=> d!2383796 (= (nullable!9644 r!24602) (nullableFct!3814 r!24602))))

(declare-fun bs!1970314 () Bool)

(assert (= bs!1970314 d!2383796))

(declare-fun m!8360386 () Bool)

(assert (=> bs!1970314 m!8360386))

(assert (=> b!7985805 d!2383796))

(declare-fun d!2383798 () Bool)

(assert (=> d!2383798 (= (head!16297 lt!2711604) (h!81104 lt!2711604))))

(assert (=> b!7985805 d!2383798))

(declare-fun b!7986151 () Bool)

(declare-fun res!3161287 () Bool)

(declare-fun e!4706800 () Bool)

(assert (=> b!7986151 (=> (not res!3161287) (not e!4706800))))

(assert (=> b!7986151 (= res!3161287 (= (head!16297 lt!2711603) (head!16297 input!7927)))))

(declare-fun b!7986152 () Bool)

(assert (=> b!7986152 (= e!4706800 (isPrefix!6651 (tail!15824 lt!2711603) (tail!15824 input!7927)))))

(declare-fun d!2383800 () Bool)

(declare-fun e!4706799 () Bool)

(assert (=> d!2383800 e!4706799))

(declare-fun res!3161288 () Bool)

(assert (=> d!2383800 (=> res!3161288 e!4706799)))

(declare-fun lt!2711843 () Bool)

(assert (=> d!2383800 (= res!3161288 (not lt!2711843))))

(declare-fun e!4706798 () Bool)

(assert (=> d!2383800 (= lt!2711843 e!4706798)))

(declare-fun res!3161286 () Bool)

(assert (=> d!2383800 (=> res!3161286 e!4706798)))

(assert (=> d!2383800 (= res!3161286 ((_ is Nil!74656) lt!2711603))))

(assert (=> d!2383800 (= (isPrefix!6651 lt!2711603 input!7927) lt!2711843)))

(declare-fun b!7986153 () Bool)

(assert (=> b!7986153 (= e!4706799 (>= (size!43487 input!7927) (size!43487 lt!2711603)))))

(declare-fun b!7986150 () Bool)

(assert (=> b!7986150 (= e!4706798 e!4706800)))

(declare-fun res!3161289 () Bool)

(assert (=> b!7986150 (=> (not res!3161289) (not e!4706800))))

(assert (=> b!7986150 (= res!3161289 (not ((_ is Nil!74656) input!7927)))))

(assert (= (and d!2383800 (not res!3161286)) b!7986150))

(assert (= (and b!7986150 res!3161289) b!7986151))

(assert (= (and b!7986151 res!3161287) b!7986152))

(assert (= (and d!2383800 (not res!3161288)) b!7986153))

(declare-fun m!8360388 () Bool)

(assert (=> b!7986151 m!8360388))

(declare-fun m!8360390 () Bool)

(assert (=> b!7986151 m!8360390))

(declare-fun m!8360392 () Bool)

(assert (=> b!7986152 m!8360392))

(assert (=> b!7986152 m!8360222))

(assert (=> b!7986152 m!8360392))

(assert (=> b!7986152 m!8360222))

(declare-fun m!8360394 () Bool)

(assert (=> b!7986152 m!8360394))

(assert (=> b!7986153 m!8360144))

(assert (=> b!7986153 m!8360158))

(assert (=> b!7985805 d!2383800))

(declare-fun d!2383802 () Bool)

(assert (=> d!2383802 (isPrefix!6651 input!7927 input!7927)))

(declare-fun lt!2711846 () Unit!170492)

(declare-fun choose!60176 (List!74780 List!74780) Unit!170492)

(assert (=> d!2383802 (= lt!2711846 (choose!60176 input!7927 input!7927))))

(assert (=> d!2383802 (= (lemmaIsPrefixRefl!4117 input!7927 input!7927) lt!2711846)))

(declare-fun bs!1970315 () Bool)

(assert (= bs!1970315 d!2383802))

(assert (=> bs!1970315 m!8360168))

(declare-fun m!8360396 () Bool)

(assert (=> bs!1970315 m!8360396))

(assert (=> b!7985810 d!2383802))

(declare-fun b!7986155 () Bool)

(declare-fun res!3161291 () Bool)

(declare-fun e!4706803 () Bool)

(assert (=> b!7986155 (=> (not res!3161291) (not e!4706803))))

(assert (=> b!7986155 (= res!3161291 (= (head!16297 input!7927) (head!16297 input!7927)))))

(declare-fun b!7986156 () Bool)

(assert (=> b!7986156 (= e!4706803 (isPrefix!6651 (tail!15824 input!7927) (tail!15824 input!7927)))))

(declare-fun d!2383804 () Bool)

(declare-fun e!4706802 () Bool)

(assert (=> d!2383804 e!4706802))

(declare-fun res!3161292 () Bool)

(assert (=> d!2383804 (=> res!3161292 e!4706802)))

(declare-fun lt!2711847 () Bool)

(assert (=> d!2383804 (= res!3161292 (not lt!2711847))))

(declare-fun e!4706801 () Bool)

(assert (=> d!2383804 (= lt!2711847 e!4706801)))

(declare-fun res!3161290 () Bool)

(assert (=> d!2383804 (=> res!3161290 e!4706801)))

(assert (=> d!2383804 (= res!3161290 ((_ is Nil!74656) input!7927))))

(assert (=> d!2383804 (= (isPrefix!6651 input!7927 input!7927) lt!2711847)))

(declare-fun b!7986157 () Bool)

(assert (=> b!7986157 (= e!4706802 (>= (size!43487 input!7927) (size!43487 input!7927)))))

(declare-fun b!7986154 () Bool)

(assert (=> b!7986154 (= e!4706801 e!4706803)))

(declare-fun res!3161293 () Bool)

(assert (=> b!7986154 (=> (not res!3161293) (not e!4706803))))

(assert (=> b!7986154 (= res!3161293 (not ((_ is Nil!74656) input!7927)))))

(assert (= (and d!2383804 (not res!3161290)) b!7986154))

(assert (= (and b!7986154 res!3161293) b!7986155))

(assert (= (and b!7986155 res!3161291) b!7986156))

(assert (= (and d!2383804 (not res!3161292)) b!7986157))

(assert (=> b!7986155 m!8360390))

(assert (=> b!7986155 m!8360390))

(assert (=> b!7986156 m!8360222))

(assert (=> b!7986156 m!8360222))

(assert (=> b!7986156 m!8360222))

(assert (=> b!7986156 m!8360222))

(declare-fun m!8360398 () Bool)

(assert (=> b!7986156 m!8360398))

(assert (=> b!7986157 m!8360144))

(assert (=> b!7986157 m!8360144))

(assert (=> b!7985810 d!2383804))

(declare-fun d!2383806 () Bool)

(assert (=> d!2383806 (= input!7927 testedP!447)))

(declare-fun lt!2711850 () Unit!170492)

(declare-fun choose!60177 (List!74780 List!74780 List!74780) Unit!170492)

(assert (=> d!2383806 (= lt!2711850 (choose!60177 input!7927 testedP!447 input!7927))))

(assert (=> d!2383806 (isPrefix!6651 input!7927 input!7927)))

(assert (=> d!2383806 (= (lemmaIsPrefixSameLengthThenSameList!1695 input!7927 testedP!447 input!7927) lt!2711850)))

(declare-fun bs!1970316 () Bool)

(assert (= bs!1970316 d!2383806))

(declare-fun m!8360400 () Bool)

(assert (=> bs!1970316 m!8360400))

(assert (=> bs!1970316 m!8360168))

(assert (=> b!7985810 d!2383806))

(declare-fun b!7986159 () Bool)

(declare-fun res!3161295 () Bool)

(declare-fun e!4706806 () Bool)

(assert (=> b!7986159 (=> (not res!3161295) (not e!4706806))))

(assert (=> b!7986159 (= res!3161295 (= (head!16297 testedP!447) (head!16297 input!7927)))))

(declare-fun b!7986160 () Bool)

(assert (=> b!7986160 (= e!4706806 (isPrefix!6651 (tail!15824 testedP!447) (tail!15824 input!7927)))))

(declare-fun d!2383808 () Bool)

(declare-fun e!4706805 () Bool)

(assert (=> d!2383808 e!4706805))

(declare-fun res!3161296 () Bool)

(assert (=> d!2383808 (=> res!3161296 e!4706805)))

(declare-fun lt!2711851 () Bool)

(assert (=> d!2383808 (= res!3161296 (not lt!2711851))))

(declare-fun e!4706804 () Bool)

(assert (=> d!2383808 (= lt!2711851 e!4706804)))

(declare-fun res!3161294 () Bool)

(assert (=> d!2383808 (=> res!3161294 e!4706804)))

(assert (=> d!2383808 (= res!3161294 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383808 (= (isPrefix!6651 testedP!447 input!7927) lt!2711851)))

(declare-fun b!7986161 () Bool)

(assert (=> b!7986161 (= e!4706805 (>= (size!43487 input!7927) (size!43487 testedP!447)))))

(declare-fun b!7986158 () Bool)

(assert (=> b!7986158 (= e!4706804 e!4706806)))

(declare-fun res!3161297 () Bool)

(assert (=> b!7986158 (=> (not res!3161297) (not e!4706806))))

(assert (=> b!7986158 (= res!3161297 (not ((_ is Nil!74656) input!7927)))))

(assert (= (and d!2383808 (not res!3161294)) b!7986158))

(assert (= (and b!7986158 res!3161297) b!7986159))

(assert (= (and b!7986159 res!3161295) b!7986160))

(assert (= (and d!2383808 (not res!3161296)) b!7986161))

(declare-fun m!8360402 () Bool)

(assert (=> b!7986159 m!8360402))

(assert (=> b!7986159 m!8360390))

(declare-fun m!8360404 () Bool)

(assert (=> b!7986160 m!8360404))

(assert (=> b!7986160 m!8360222))

(assert (=> b!7986160 m!8360404))

(assert (=> b!7986160 m!8360222))

(declare-fun m!8360406 () Bool)

(assert (=> b!7986160 m!8360406))

(assert (=> b!7986161 m!8360144))

(assert (=> b!7986161 m!8360150))

(assert (=> b!7985809 d!2383808))

(declare-fun b!7986180 () Bool)

(declare-fun res!3161311 () Bool)

(declare-fun e!4706824 () Bool)

(assert (=> b!7986180 (=> (not res!3161311) (not e!4706824))))

(declare-fun call!741560 () Bool)

(assert (=> b!7986180 (= res!3161311 call!741560)))

(declare-fun e!4706826 () Bool)

(assert (=> b!7986180 (= e!4706826 e!4706824)))

(declare-fun bm!741555 () Bool)

(declare-fun call!741562 () Bool)

(declare-fun c!1466617 () Bool)

(assert (=> bm!741555 (= call!741562 (validRegex!11855 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))

(declare-fun b!7986181 () Bool)

(declare-fun e!4706827 () Bool)

(declare-fun e!4706821 () Bool)

(assert (=> b!7986181 (= e!4706827 e!4706821)))

(declare-fun res!3161312 () Bool)

(assert (=> b!7986181 (=> (not res!3161312) (not e!4706821))))

(assert (=> b!7986181 (= res!3161312 call!741560)))

(declare-fun bm!741556 () Bool)

(declare-fun call!741561 () Bool)

(assert (=> bm!741556 (= call!741560 call!741561)))

(declare-fun d!2383810 () Bool)

(declare-fun res!3161309 () Bool)

(declare-fun e!4706825 () Bool)

(assert (=> d!2383810 (=> res!3161309 e!4706825)))

(assert (=> d!2383810 (= res!3161309 ((_ is ElementMatch!21551) baseR!116))))

(assert (=> d!2383810 (= (validRegex!11855 baseR!116) e!4706825)))

(declare-fun b!7986182 () Bool)

(assert (=> b!7986182 (= e!4706824 call!741562)))

(declare-fun b!7986183 () Bool)

(declare-fun e!4706822 () Bool)

(assert (=> b!7986183 (= e!4706825 e!4706822)))

(declare-fun c!1466618 () Bool)

(assert (=> b!7986183 (= c!1466618 ((_ is Star!21551) baseR!116))))

(declare-fun bm!741557 () Bool)

(assert (=> bm!741557 (= call!741561 (validRegex!11855 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(declare-fun b!7986184 () Bool)

(assert (=> b!7986184 (= e!4706822 e!4706826)))

(assert (=> b!7986184 (= c!1466617 ((_ is Union!21551) baseR!116))))

(declare-fun b!7986185 () Bool)

(declare-fun e!4706823 () Bool)

(assert (=> b!7986185 (= e!4706822 e!4706823)))

(declare-fun res!3161308 () Bool)

(assert (=> b!7986185 (= res!3161308 (not (nullable!9644 (reg!21880 baseR!116))))))

(assert (=> b!7986185 (=> (not res!3161308) (not e!4706823))))

(declare-fun b!7986186 () Bool)

(assert (=> b!7986186 (= e!4706821 call!741562)))

(declare-fun b!7986187 () Bool)

(assert (=> b!7986187 (= e!4706823 call!741561)))

(declare-fun b!7986188 () Bool)

(declare-fun res!3161310 () Bool)

(assert (=> b!7986188 (=> res!3161310 e!4706827)))

(assert (=> b!7986188 (= res!3161310 (not ((_ is Concat!30550) baseR!116)))))

(assert (=> b!7986188 (= e!4706826 e!4706827)))

(assert (= (and d!2383810 (not res!3161309)) b!7986183))

(assert (= (and b!7986183 c!1466618) b!7986185))

(assert (= (and b!7986183 (not c!1466618)) b!7986184))

(assert (= (and b!7986185 res!3161308) b!7986187))

(assert (= (and b!7986184 c!1466617) b!7986180))

(assert (= (and b!7986184 (not c!1466617)) b!7986188))

(assert (= (and b!7986180 res!3161311) b!7986182))

(assert (= (and b!7986188 (not res!3161310)) b!7986181))

(assert (= (and b!7986181 res!3161312) b!7986186))

(assert (= (or b!7986182 b!7986186) bm!741555))

(assert (= (or b!7986180 b!7986181) bm!741556))

(assert (= (or b!7986187 bm!741556) bm!741557))

(declare-fun m!8360408 () Bool)

(assert (=> bm!741555 m!8360408))

(declare-fun m!8360410 () Bool)

(assert (=> bm!741557 m!8360410))

(declare-fun m!8360412 () Bool)

(assert (=> b!7986185 m!8360412))

(assert (=> start!752304 d!2383810))

(declare-fun b!7986202 () Bool)

(declare-fun e!4706830 () Bool)

(declare-fun tp!2384250 () Bool)

(declare-fun tp!2384249 () Bool)

(assert (=> b!7986202 (= e!4706830 (and tp!2384250 tp!2384249))))

(assert (=> b!7985813 (= tp!2384170 e!4706830)))

(declare-fun b!7986201 () Bool)

(declare-fun tp!2384252 () Bool)

(assert (=> b!7986201 (= e!4706830 tp!2384252)))

(declare-fun b!7986200 () Bool)

(declare-fun tp!2384253 () Bool)

(declare-fun tp!2384251 () Bool)

(assert (=> b!7986200 (= e!4706830 (and tp!2384253 tp!2384251))))

(declare-fun b!7986199 () Bool)

(assert (=> b!7986199 (= e!4706830 tp_is_empty!53645)))

(assert (= (and b!7985813 ((_ is ElementMatch!21551) (reg!21880 r!24602))) b!7986199))

(assert (= (and b!7985813 ((_ is Concat!30550) (reg!21880 r!24602))) b!7986200))

(assert (= (and b!7985813 ((_ is Star!21551) (reg!21880 r!24602))) b!7986201))

(assert (= (and b!7985813 ((_ is Union!21551) (reg!21880 r!24602))) b!7986202))

(declare-fun b!7986206 () Bool)

(declare-fun e!4706831 () Bool)

(declare-fun tp!2384255 () Bool)

(declare-fun tp!2384254 () Bool)

(assert (=> b!7986206 (= e!4706831 (and tp!2384255 tp!2384254))))

(assert (=> b!7985807 (= tp!2384166 e!4706831)))

(declare-fun b!7986205 () Bool)

(declare-fun tp!2384257 () Bool)

(assert (=> b!7986205 (= e!4706831 tp!2384257)))

(declare-fun b!7986204 () Bool)

(declare-fun tp!2384258 () Bool)

(declare-fun tp!2384256 () Bool)

(assert (=> b!7986204 (= e!4706831 (and tp!2384258 tp!2384256))))

(declare-fun b!7986203 () Bool)

(assert (=> b!7986203 (= e!4706831 tp_is_empty!53645)))

(assert (= (and b!7985807 ((_ is ElementMatch!21551) (regOne!43615 baseR!116))) b!7986203))

(assert (= (and b!7985807 ((_ is Concat!30550) (regOne!43615 baseR!116))) b!7986204))

(assert (= (and b!7985807 ((_ is Star!21551) (regOne!43615 baseR!116))) b!7986205))

(assert (= (and b!7985807 ((_ is Union!21551) (regOne!43615 baseR!116))) b!7986206))

(declare-fun b!7986210 () Bool)

(declare-fun e!4706832 () Bool)

(declare-fun tp!2384260 () Bool)

(declare-fun tp!2384259 () Bool)

(assert (=> b!7986210 (= e!4706832 (and tp!2384260 tp!2384259))))

(assert (=> b!7985807 (= tp!2384174 e!4706832)))

(declare-fun b!7986209 () Bool)

(declare-fun tp!2384262 () Bool)

(assert (=> b!7986209 (= e!4706832 tp!2384262)))

(declare-fun b!7986208 () Bool)

(declare-fun tp!2384263 () Bool)

(declare-fun tp!2384261 () Bool)

(assert (=> b!7986208 (= e!4706832 (and tp!2384263 tp!2384261))))

(declare-fun b!7986207 () Bool)

(assert (=> b!7986207 (= e!4706832 tp_is_empty!53645)))

(assert (= (and b!7985807 ((_ is ElementMatch!21551) (regTwo!43615 baseR!116))) b!7986207))

(assert (= (and b!7985807 ((_ is Concat!30550) (regTwo!43615 baseR!116))) b!7986208))

(assert (= (and b!7985807 ((_ is Star!21551) (regTwo!43615 baseR!116))) b!7986209))

(assert (= (and b!7985807 ((_ is Union!21551) (regTwo!43615 baseR!116))) b!7986210))

(declare-fun b!7986215 () Bool)

(declare-fun e!4706835 () Bool)

(declare-fun tp!2384266 () Bool)

(assert (=> b!7986215 (= e!4706835 (and tp_is_empty!53645 tp!2384266))))

(assert (=> b!7985818 (= tp!2384167 e!4706835)))

(assert (= (and b!7985818 ((_ is Cons!74656) (t!390523 testedP!447))) b!7986215))

(declare-fun b!7986216 () Bool)

(declare-fun e!4706836 () Bool)

(declare-fun tp!2384267 () Bool)

(assert (=> b!7986216 (= e!4706836 (and tp_is_empty!53645 tp!2384267))))

(assert (=> b!7985817 (= tp!2384172 e!4706836)))

(assert (= (and b!7985817 ((_ is Cons!74656) (t!390523 input!7927))) b!7986216))

(declare-fun b!7986220 () Bool)

(declare-fun e!4706837 () Bool)

(declare-fun tp!2384269 () Bool)

(declare-fun tp!2384268 () Bool)

(assert (=> b!7986220 (= e!4706837 (and tp!2384269 tp!2384268))))

(assert (=> b!7985821 (= tp!2384169 e!4706837)))

(declare-fun b!7986219 () Bool)

(declare-fun tp!2384271 () Bool)

(assert (=> b!7986219 (= e!4706837 tp!2384271)))

(declare-fun b!7986218 () Bool)

(declare-fun tp!2384272 () Bool)

(declare-fun tp!2384270 () Bool)

(assert (=> b!7986218 (= e!4706837 (and tp!2384272 tp!2384270))))

(declare-fun b!7986217 () Bool)

(assert (=> b!7986217 (= e!4706837 tp_is_empty!53645)))

(assert (= (and b!7985821 ((_ is ElementMatch!21551) (regOne!43614 baseR!116))) b!7986217))

(assert (= (and b!7985821 ((_ is Concat!30550) (regOne!43614 baseR!116))) b!7986218))

(assert (= (and b!7985821 ((_ is Star!21551) (regOne!43614 baseR!116))) b!7986219))

(assert (= (and b!7985821 ((_ is Union!21551) (regOne!43614 baseR!116))) b!7986220))

(declare-fun b!7986224 () Bool)

(declare-fun e!4706838 () Bool)

(declare-fun tp!2384274 () Bool)

(declare-fun tp!2384273 () Bool)

(assert (=> b!7986224 (= e!4706838 (and tp!2384274 tp!2384273))))

(assert (=> b!7985821 (= tp!2384171 e!4706838)))

(declare-fun b!7986223 () Bool)

(declare-fun tp!2384276 () Bool)

(assert (=> b!7986223 (= e!4706838 tp!2384276)))

(declare-fun b!7986222 () Bool)

(declare-fun tp!2384277 () Bool)

(declare-fun tp!2384275 () Bool)

(assert (=> b!7986222 (= e!4706838 (and tp!2384277 tp!2384275))))

(declare-fun b!7986221 () Bool)

(assert (=> b!7986221 (= e!4706838 tp_is_empty!53645)))

(assert (= (and b!7985821 ((_ is ElementMatch!21551) (regTwo!43614 baseR!116))) b!7986221))

(assert (= (and b!7985821 ((_ is Concat!30550) (regTwo!43614 baseR!116))) b!7986222))

(assert (= (and b!7985821 ((_ is Star!21551) (regTwo!43614 baseR!116))) b!7986223))

(assert (= (and b!7985821 ((_ is Union!21551) (regTwo!43614 baseR!116))) b!7986224))

(declare-fun b!7986228 () Bool)

(declare-fun e!4706839 () Bool)

(declare-fun tp!2384279 () Bool)

(declare-fun tp!2384278 () Bool)

(assert (=> b!7986228 (= e!4706839 (and tp!2384279 tp!2384278))))

(assert (=> b!7985804 (= tp!2384163 e!4706839)))

(declare-fun b!7986227 () Bool)

(declare-fun tp!2384281 () Bool)

(assert (=> b!7986227 (= e!4706839 tp!2384281)))

(declare-fun b!7986226 () Bool)

(declare-fun tp!2384282 () Bool)

(declare-fun tp!2384280 () Bool)

(assert (=> b!7986226 (= e!4706839 (and tp!2384282 tp!2384280))))

(declare-fun b!7986225 () Bool)

(assert (=> b!7986225 (= e!4706839 tp_is_empty!53645)))

(assert (= (and b!7985804 ((_ is ElementMatch!21551) (reg!21880 baseR!116))) b!7986225))

(assert (= (and b!7985804 ((_ is Concat!30550) (reg!21880 baseR!116))) b!7986226))

(assert (= (and b!7985804 ((_ is Star!21551) (reg!21880 baseR!116))) b!7986227))

(assert (= (and b!7985804 ((_ is Union!21551) (reg!21880 baseR!116))) b!7986228))

(declare-fun b!7986232 () Bool)

(declare-fun e!4706840 () Bool)

(declare-fun tp!2384284 () Bool)

(declare-fun tp!2384283 () Bool)

(assert (=> b!7986232 (= e!4706840 (and tp!2384284 tp!2384283))))

(assert (=> b!7985820 (= tp!2384173 e!4706840)))

(declare-fun b!7986231 () Bool)

(declare-fun tp!2384286 () Bool)

(assert (=> b!7986231 (= e!4706840 tp!2384286)))

(declare-fun b!7986230 () Bool)

(declare-fun tp!2384287 () Bool)

(declare-fun tp!2384285 () Bool)

(assert (=> b!7986230 (= e!4706840 (and tp!2384287 tp!2384285))))

(declare-fun b!7986229 () Bool)

(assert (=> b!7986229 (= e!4706840 tp_is_empty!53645)))

(assert (= (and b!7985820 ((_ is ElementMatch!21551) (regOne!43615 r!24602))) b!7986229))

(assert (= (and b!7985820 ((_ is Concat!30550) (regOne!43615 r!24602))) b!7986230))

(assert (= (and b!7985820 ((_ is Star!21551) (regOne!43615 r!24602))) b!7986231))

(assert (= (and b!7985820 ((_ is Union!21551) (regOne!43615 r!24602))) b!7986232))

(declare-fun b!7986236 () Bool)

(declare-fun e!4706841 () Bool)

(declare-fun tp!2384289 () Bool)

(declare-fun tp!2384288 () Bool)

(assert (=> b!7986236 (= e!4706841 (and tp!2384289 tp!2384288))))

(assert (=> b!7985820 (= tp!2384164 e!4706841)))

(declare-fun b!7986235 () Bool)

(declare-fun tp!2384291 () Bool)

(assert (=> b!7986235 (= e!4706841 tp!2384291)))

(declare-fun b!7986234 () Bool)

(declare-fun tp!2384292 () Bool)

(declare-fun tp!2384290 () Bool)

(assert (=> b!7986234 (= e!4706841 (and tp!2384292 tp!2384290))))

(declare-fun b!7986233 () Bool)

(assert (=> b!7986233 (= e!4706841 tp_is_empty!53645)))

(assert (= (and b!7985820 ((_ is ElementMatch!21551) (regTwo!43615 r!24602))) b!7986233))

(assert (= (and b!7985820 ((_ is Concat!30550) (regTwo!43615 r!24602))) b!7986234))

(assert (= (and b!7985820 ((_ is Star!21551) (regTwo!43615 r!24602))) b!7986235))

(assert (= (and b!7985820 ((_ is Union!21551) (regTwo!43615 r!24602))) b!7986236))

(declare-fun b!7986240 () Bool)

(declare-fun e!4706842 () Bool)

(declare-fun tp!2384294 () Bool)

(declare-fun tp!2384293 () Bool)

(assert (=> b!7986240 (= e!4706842 (and tp!2384294 tp!2384293))))

(assert (=> b!7985819 (= tp!2384168 e!4706842)))

(declare-fun b!7986239 () Bool)

(declare-fun tp!2384296 () Bool)

(assert (=> b!7986239 (= e!4706842 tp!2384296)))

(declare-fun b!7986238 () Bool)

(declare-fun tp!2384297 () Bool)

(declare-fun tp!2384295 () Bool)

(assert (=> b!7986238 (= e!4706842 (and tp!2384297 tp!2384295))))

(declare-fun b!7986237 () Bool)

(assert (=> b!7986237 (= e!4706842 tp_is_empty!53645)))

(assert (= (and b!7985819 ((_ is ElementMatch!21551) (regOne!43614 r!24602))) b!7986237))

(assert (= (and b!7985819 ((_ is Concat!30550) (regOne!43614 r!24602))) b!7986238))

(assert (= (and b!7985819 ((_ is Star!21551) (regOne!43614 r!24602))) b!7986239))

(assert (= (and b!7985819 ((_ is Union!21551) (regOne!43614 r!24602))) b!7986240))

(declare-fun b!7986244 () Bool)

(declare-fun e!4706843 () Bool)

(declare-fun tp!2384299 () Bool)

(declare-fun tp!2384298 () Bool)

(assert (=> b!7986244 (= e!4706843 (and tp!2384299 tp!2384298))))

(assert (=> b!7985819 (= tp!2384165 e!4706843)))

(declare-fun b!7986243 () Bool)

(declare-fun tp!2384301 () Bool)

(assert (=> b!7986243 (= e!4706843 tp!2384301)))

(declare-fun b!7986242 () Bool)

(declare-fun tp!2384302 () Bool)

(declare-fun tp!2384300 () Bool)

(assert (=> b!7986242 (= e!4706843 (and tp!2384302 tp!2384300))))

(declare-fun b!7986241 () Bool)

(assert (=> b!7986241 (= e!4706843 tp_is_empty!53645)))

(assert (= (and b!7985819 ((_ is ElementMatch!21551) (regTwo!43614 r!24602))) b!7986241))

(assert (= (and b!7985819 ((_ is Concat!30550) (regTwo!43614 r!24602))) b!7986242))

(assert (= (and b!7985819 ((_ is Star!21551) (regTwo!43614 r!24602))) b!7986243))

(assert (= (and b!7985819 ((_ is Union!21551) (regTwo!43614 r!24602))) b!7986244))

(check-sat (not bm!741555) (not b!7985907) (not b!7986140) (not b!7986152) (not b!7986204) (not b!7985828) (not b!7985833) (not b!7986157) (not b!7986210) (not b!7986235) (not b!7985899) (not b!7985904) (not b!7986118) (not b!7986125) (not b!7986219) (not d!2383748) (not b!7986151) (not b!7986238) (not b!7986202) (not bm!741543) (not bm!741544) (not d!2383750) (not b!7986218) (not b!7986220) (not d!2383790) (not d!2383794) (not b!7986244) tp_is_empty!53645 (not b!7986226) (not b!7986159) (not b!7986124) (not b!7986209) (not b!7986223) (not b!7986215) (not bm!741485) (not b!7986222) (not b!7986208) (not b!7985912) (not bm!741547) (not b!7986200) (not d!2383740) (not b!7986156) (not d!2383802) (not bm!741487) (not d!2383806) (not b!7986216) (not b!7986206) (not b!7986161) (not bm!741546) (not d!2383742) (not b!7986231) (not bm!741542) (not bm!741548) (not bm!741545) (not b!7986240) (not b!7986153) (not b!7986232) (not b!7986185) (not b!7986115) (not b!7986227) (not b!7986230) (not b!7986234) (not b!7986228) (not bm!741541) (not b!7986205) (not b!7986236) (not b!7986129) (not b!7986155) (not b!7986224) (not b!7986201) (not d!2383796) (not d!2383730) (not d!2383732) (not b!7986239) (not b!7986160) (not b!7986139) (not d!2383792) (not b!7986242) (not b!7986243) (not bm!741557))
(check-sat)
(get-model)

(declare-fun d!2383812 () Bool)

(declare-fun lt!2711852 () Regex!21551)

(assert (=> d!2383812 (validRegex!11855 lt!2711852)))

(declare-fun e!4706844 () Regex!21551)

(assert (=> d!2383812 (= lt!2711852 e!4706844)))

(declare-fun c!1466619 () Bool)

(assert (=> d!2383812 (= c!1466619 ((_ is Cons!74656) (t!390523 lt!2711603)))))

(assert (=> d!2383812 (validRegex!11855 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))

(assert (=> d!2383812 (= (derivative!737 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (t!390523 lt!2711603)) lt!2711852)))

(declare-fun b!7986245 () Bool)

(assert (=> b!7986245 (= e!4706844 (derivative!737 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (h!81104 (t!390523 lt!2711603))) (t!390523 (t!390523 lt!2711603))))))

(declare-fun b!7986246 () Bool)

(assert (=> b!7986246 (= e!4706844 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))

(assert (= (and d!2383812 c!1466619) b!7986245))

(assert (= (and d!2383812 (not c!1466619)) b!7986246))

(declare-fun m!8360414 () Bool)

(assert (=> d!2383812 m!8360414))

(assert (=> d!2383812 m!8360178))

(declare-fun m!8360416 () Bool)

(assert (=> d!2383812 m!8360416))

(assert (=> b!7986245 m!8360178))

(declare-fun m!8360418 () Bool)

(assert (=> b!7986245 m!8360418))

(assert (=> b!7986245 m!8360418))

(declare-fun m!8360420 () Bool)

(assert (=> b!7986245 m!8360420))

(assert (=> b!7985833 d!2383812))

(declare-fun c!1466620 () Bool)

(declare-fun bm!741558 () Bool)

(declare-fun c!1466624 () Bool)

(declare-fun c!1466622 () Bool)

(declare-fun call!741565 () Regex!21551)

(assert (=> bm!741558 (= call!741565 (derivativeStep!6571 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))) (h!81104 lt!2711603)))))

(declare-fun b!7986247 () Bool)

(declare-fun call!741566 () Regex!21551)

(declare-fun e!4706846 () Regex!21551)

(declare-fun call!741564 () Regex!21551)

(assert (=> b!7986247 (= e!4706846 (Union!21551 (Concat!30550 call!741566 (regTwo!43614 baseR!116)) call!741564))))

(declare-fun d!2383814 () Bool)

(declare-fun lt!2711853 () Regex!21551)

(assert (=> d!2383814 (validRegex!11855 lt!2711853)))

(declare-fun e!4706845 () Regex!21551)

(assert (=> d!2383814 (= lt!2711853 e!4706845)))

(declare-fun c!1466623 () Bool)

(assert (=> d!2383814 (= c!1466623 (or ((_ is EmptyExpr!21551) baseR!116) ((_ is EmptyLang!21551) baseR!116)))))

(assert (=> d!2383814 (validRegex!11855 baseR!116)))

(assert (=> d!2383814 (= (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) lt!2711853)))

(declare-fun bm!741559 () Bool)

(declare-fun call!741563 () Regex!21551)

(assert (=> bm!741559 (= call!741563 call!741565)))

(declare-fun b!7986248 () Bool)

(assert (=> b!7986248 (= c!1466620 ((_ is Union!21551) baseR!116))))

(declare-fun e!4706848 () Regex!21551)

(declare-fun e!4706847 () Regex!21551)

(assert (=> b!7986248 (= e!4706848 e!4706847)))

(declare-fun b!7986249 () Bool)

(assert (=> b!7986249 (= e!4706848 (ite (= (h!81104 lt!2711603) (c!1466508 baseR!116)) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7986250 () Bool)

(declare-fun e!4706849 () Regex!21551)

(assert (=> b!7986250 (= e!4706847 e!4706849)))

(assert (=> b!7986250 (= c!1466622 ((_ is Star!21551) baseR!116))))

(declare-fun b!7986251 () Bool)

(assert (=> b!7986251 (= e!4706845 e!4706848)))

(declare-fun c!1466621 () Bool)

(assert (=> b!7986251 (= c!1466621 ((_ is ElementMatch!21551) baseR!116))))

(declare-fun b!7986252 () Bool)

(assert (=> b!7986252 (= c!1466624 (nullable!9644 (regOne!43614 baseR!116)))))

(assert (=> b!7986252 (= e!4706849 e!4706846)))

(declare-fun bm!741560 () Bool)

(assert (=> bm!741560 (= call!741566 (derivativeStep!6571 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)) (h!81104 lt!2711603)))))

(declare-fun b!7986253 () Bool)

(assert (=> b!7986253 (= e!4706846 (Union!21551 (Concat!30550 call!741564 (regTwo!43614 baseR!116)) EmptyLang!21551))))

(declare-fun bm!741561 () Bool)

(assert (=> bm!741561 (= call!741564 call!741563)))

(declare-fun b!7986254 () Bool)

(assert (=> b!7986254 (= e!4706849 (Concat!30550 call!741563 baseR!116))))

(declare-fun b!7986255 () Bool)

(assert (=> b!7986255 (= e!4706847 (Union!21551 call!741566 call!741565))))

(declare-fun b!7986256 () Bool)

(assert (=> b!7986256 (= e!4706845 EmptyLang!21551)))

(assert (= (and d!2383814 c!1466623) b!7986256))

(assert (= (and d!2383814 (not c!1466623)) b!7986251))

(assert (= (and b!7986251 c!1466621) b!7986249))

(assert (= (and b!7986251 (not c!1466621)) b!7986248))

(assert (= (and b!7986248 c!1466620) b!7986255))

(assert (= (and b!7986248 (not c!1466620)) b!7986250))

(assert (= (and b!7986250 c!1466622) b!7986254))

(assert (= (and b!7986250 (not c!1466622)) b!7986252))

(assert (= (and b!7986252 c!1466624) b!7986247))

(assert (= (and b!7986252 (not c!1466624)) b!7986253))

(assert (= (or b!7986247 b!7986253) bm!741561))

(assert (= (or b!7986254 bm!741561) bm!741559))

(assert (= (or b!7986255 bm!741559) bm!741558))

(assert (= (or b!7986255 b!7986247) bm!741560))

(declare-fun m!8360422 () Bool)

(assert (=> bm!741558 m!8360422))

(declare-fun m!8360424 () Bool)

(assert (=> d!2383814 m!8360424))

(assert (=> d!2383814 m!8360154))

(declare-fun m!8360426 () Bool)

(assert (=> b!7986252 m!8360426))

(declare-fun m!8360428 () Bool)

(assert (=> bm!741560 m!8360428))

(assert (=> b!7985833 d!2383814))

(declare-fun bm!741562 () Bool)

(declare-fun call!741571 () C!43440)

(assert (=> bm!741562 (= call!741571 (head!16297 call!741553))))

(declare-fun bm!741563 () Bool)

(declare-fun call!741568 () Bool)

(assert (=> bm!741563 (= call!741568 (isPrefix!6651 input!7927 input!7927))))

(declare-fun b!7986257 () Bool)

(declare-fun e!4706857 () tuple2!70760)

(declare-fun call!741570 () tuple2!70760)

(assert (=> b!7986257 (= e!4706857 call!741570)))

(declare-fun b!7986258 () Bool)

(declare-fun e!4706850 () Bool)

(declare-fun e!4706852 () Bool)

(assert (=> b!7986258 (= e!4706850 e!4706852)))

(declare-fun res!3161313 () Bool)

(assert (=> b!7986258 (=> res!3161313 e!4706852)))

(declare-fun lt!2711866 () tuple2!70760)

(assert (=> b!7986258 (= res!3161313 (isEmpty!42959 (_1!38683 lt!2711866)))))

(declare-fun d!2383816 () Bool)

(assert (=> d!2383816 e!4706850))

(declare-fun res!3161314 () Bool)

(assert (=> d!2383816 (=> (not res!3161314) (not e!4706850))))

(assert (=> d!2383816 (= res!3161314 (= (++!18413 (_1!38683 lt!2711866) (_2!38683 lt!2711866)) input!7927))))

(declare-fun e!4706856 () tuple2!70760)

(assert (=> d!2383816 (= lt!2711866 e!4706856)))

(declare-fun c!1466625 () Bool)

(assert (=> d!2383816 (= c!1466625 (lostCause!2004 call!741546))))

(declare-fun lt!2711878 () Unit!170492)

(declare-fun Unit!170502 () Unit!170492)

(assert (=> d!2383816 (= lt!2711878 Unit!170502)))

(assert (=> d!2383816 (= (getSuffix!3852 input!7927 lt!2711812) call!741553)))

(declare-fun lt!2711862 () Unit!170492)

(declare-fun lt!2711858 () Unit!170492)

(assert (=> d!2383816 (= lt!2711862 lt!2711858)))

(declare-fun lt!2711871 () List!74780)

(assert (=> d!2383816 (= call!741553 lt!2711871)))

(assert (=> d!2383816 (= lt!2711858 (lemmaSamePrefixThenSameSuffix!3020 lt!2711812 call!741553 lt!2711812 lt!2711871 input!7927))))

(assert (=> d!2383816 (= lt!2711871 (getSuffix!3852 input!7927 lt!2711812))))

(declare-fun lt!2711861 () Unit!170492)

(declare-fun lt!2711865 () Unit!170492)

(assert (=> d!2383816 (= lt!2711861 lt!2711865)))

(assert (=> d!2383816 (isPrefix!6651 lt!2711812 (++!18413 lt!2711812 call!741553))))

(assert (=> d!2383816 (= lt!2711865 (lemmaConcatTwoListThenFirstIsPrefix!3882 lt!2711812 call!741553))))

(assert (=> d!2383816 (validRegex!11855 call!741546)))

(assert (=> d!2383816 (= (findLongestMatchInner!2330 call!741546 lt!2711812 (+ lt!2711600 1) call!741553 input!7927 lt!2711607) lt!2711866)))

(declare-fun b!7986259 () Bool)

(assert (=> b!7986259 (= e!4706856 (tuple2!70761 Nil!74656 input!7927))))

(declare-fun b!7986260 () Bool)

(declare-fun c!1466627 () Bool)

(declare-fun call!741573 () Bool)

(assert (=> b!7986260 (= c!1466627 call!741573)))

(declare-fun lt!2711876 () Unit!170492)

(declare-fun lt!2711874 () Unit!170492)

(assert (=> b!7986260 (= lt!2711876 lt!2711874)))

(assert (=> b!7986260 (= input!7927 lt!2711812)))

(declare-fun call!741569 () Unit!170492)

(assert (=> b!7986260 (= lt!2711874 call!741569)))

(declare-fun lt!2711880 () Unit!170492)

(declare-fun lt!2711867 () Unit!170492)

(assert (=> b!7986260 (= lt!2711880 lt!2711867)))

(assert (=> b!7986260 call!741568))

(declare-fun call!741572 () Unit!170492)

(assert (=> b!7986260 (= lt!2711867 call!741572)))

(declare-fun e!4706853 () tuple2!70760)

(declare-fun e!4706851 () tuple2!70760)

(assert (=> b!7986260 (= e!4706853 e!4706851)))

(declare-fun b!7986261 () Bool)

(declare-fun e!4706855 () tuple2!70760)

(assert (=> b!7986261 (= e!4706857 e!4706855)))

(declare-fun lt!2711869 () tuple2!70760)

(assert (=> b!7986261 (= lt!2711869 call!741570)))

(declare-fun c!1466628 () Bool)

(assert (=> b!7986261 (= c!1466628 (isEmpty!42959 (_1!38683 lt!2711869)))))

(declare-fun b!7986262 () Bool)

(declare-fun e!4706854 () Unit!170492)

(declare-fun Unit!170503 () Unit!170492)

(assert (=> b!7986262 (= e!4706854 Unit!170503)))

(declare-fun bm!741564 () Bool)

(assert (=> bm!741564 (= call!741572 (lemmaIsPrefixRefl!4117 input!7927 input!7927))))

(declare-fun b!7986263 () Bool)

(assert (=> b!7986263 (= e!4706855 lt!2711869)))

(declare-fun b!7986264 () Bool)

(declare-fun Unit!170504 () Unit!170492)

(assert (=> b!7986264 (= e!4706854 Unit!170504)))

(declare-fun lt!2711870 () Unit!170492)

(assert (=> b!7986264 (= lt!2711870 call!741572)))

(assert (=> b!7986264 call!741568))

(declare-fun lt!2711877 () Unit!170492)

(assert (=> b!7986264 (= lt!2711877 lt!2711870)))

(declare-fun lt!2711879 () Unit!170492)

(assert (=> b!7986264 (= lt!2711879 call!741569)))

(assert (=> b!7986264 (= input!7927 lt!2711812)))

(declare-fun lt!2711855 () Unit!170492)

(assert (=> b!7986264 (= lt!2711855 lt!2711879)))

(assert (=> b!7986264 false))

(declare-fun b!7986265 () Bool)

(assert (=> b!7986265 (= e!4706855 (tuple2!70761 lt!2711812 call!741553))))

(declare-fun bm!741565 () Bool)

(assert (=> bm!741565 (= call!741573 (nullable!9644 call!741546))))

(declare-fun b!7986266 () Bool)

(assert (=> b!7986266 (= e!4706851 (tuple2!70761 Nil!74656 input!7927))))

(declare-fun call!741567 () Regex!21551)

(declare-fun lt!2711863 () List!74780)

(declare-fun bm!741566 () Bool)

(declare-fun call!741574 () List!74780)

(assert (=> bm!741566 (= call!741570 (findLongestMatchInner!2330 call!741567 lt!2711863 (+ lt!2711600 1 1) call!741574 input!7927 lt!2711607))))

(declare-fun bm!741567 () Bool)

(assert (=> bm!741567 (= call!741574 (tail!15824 call!741553))))

(declare-fun b!7986267 () Bool)

(assert (=> b!7986267 (= e!4706852 (>= (size!43487 (_1!38683 lt!2711866)) (size!43487 lt!2711812)))))

(declare-fun bm!741568 () Bool)

(assert (=> bm!741568 (= call!741569 (lemmaIsPrefixSameLengthThenSameList!1695 input!7927 lt!2711812 input!7927))))

(declare-fun b!7986268 () Bool)

(declare-fun c!1466630 () Bool)

(assert (=> b!7986268 (= c!1466630 call!741573)))

(declare-fun lt!2711872 () Unit!170492)

(declare-fun lt!2711868 () Unit!170492)

(assert (=> b!7986268 (= lt!2711872 lt!2711868)))

(declare-fun lt!2711859 () List!74780)

(declare-fun lt!2711881 () C!43440)

(assert (=> b!7986268 (= (++!18413 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656)) lt!2711859) input!7927)))

(assert (=> b!7986268 (= lt!2711868 (lemmaMoveElementToOtherListKeepsConcatEq!3560 lt!2711812 lt!2711881 lt!2711859 input!7927))))

(assert (=> b!7986268 (= lt!2711859 (tail!15824 call!741553))))

(assert (=> b!7986268 (= lt!2711881 (head!16297 call!741553))))

(declare-fun lt!2711864 () Unit!170492)

(declare-fun lt!2711854 () Unit!170492)

(assert (=> b!7986268 (= lt!2711864 lt!2711854)))

(assert (=> b!7986268 (isPrefix!6651 (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656)) input!7927)))

(assert (=> b!7986268 (= lt!2711854 (lemmaAddHeadSuffixToPrefixStillPrefix!1370 lt!2711812 input!7927))))

(declare-fun lt!2711873 () Unit!170492)

(declare-fun lt!2711875 () Unit!170492)

(assert (=> b!7986268 (= lt!2711873 lt!2711875)))

(assert (=> b!7986268 (= lt!2711875 (lemmaAddHeadSuffixToPrefixStillPrefix!1370 lt!2711812 input!7927))))

(assert (=> b!7986268 (= lt!2711863 (++!18413 lt!2711812 (Cons!74656 (head!16297 call!741553) Nil!74656)))))

(declare-fun lt!2711857 () Unit!170492)

(assert (=> b!7986268 (= lt!2711857 e!4706854)))

(declare-fun c!1466626 () Bool)

(assert (=> b!7986268 (= c!1466626 (= (size!43487 lt!2711812) (size!43487 input!7927)))))

(declare-fun lt!2711860 () Unit!170492)

(declare-fun lt!2711856 () Unit!170492)

(assert (=> b!7986268 (= lt!2711860 lt!2711856)))

(assert (=> b!7986268 (<= (size!43487 lt!2711812) (size!43487 input!7927))))

(assert (=> b!7986268 (= lt!2711856 (lemmaIsPrefixThenSmallerEqSize!1166 lt!2711812 input!7927))))

(assert (=> b!7986268 (= e!4706853 e!4706857)))

(declare-fun b!7986269 () Bool)

(assert (=> b!7986269 (= e!4706851 (tuple2!70761 lt!2711812 Nil!74656))))

(declare-fun bm!741569 () Bool)

(assert (=> bm!741569 (= call!741567 (derivativeStep!6571 call!741546 call!741571))))

(declare-fun b!7986270 () Bool)

(assert (=> b!7986270 (= e!4706856 e!4706853)))

(declare-fun c!1466629 () Bool)

(assert (=> b!7986270 (= c!1466629 (= (+ lt!2711600 1) lt!2711607))))

(assert (= (and d!2383816 c!1466625) b!7986259))

(assert (= (and d!2383816 (not c!1466625)) b!7986270))

(assert (= (and b!7986270 c!1466629) b!7986260))

(assert (= (and b!7986270 (not c!1466629)) b!7986268))

(assert (= (and b!7986260 c!1466627) b!7986269))

(assert (= (and b!7986260 (not c!1466627)) b!7986266))

(assert (= (and b!7986268 c!1466626) b!7986264))

(assert (= (and b!7986268 (not c!1466626)) b!7986262))

(assert (= (and b!7986268 c!1466630) b!7986261))

(assert (= (and b!7986268 (not c!1466630)) b!7986257))

(assert (= (and b!7986261 c!1466628) b!7986265))

(assert (= (and b!7986261 (not c!1466628)) b!7986263))

(assert (= (or b!7986261 b!7986257) bm!741562))

(assert (= (or b!7986261 b!7986257) bm!741567))

(assert (= (or b!7986261 b!7986257) bm!741569))

(assert (= (or b!7986261 b!7986257) bm!741566))

(assert (= (or b!7986260 b!7986268) bm!741565))

(assert (= (or b!7986260 b!7986264) bm!741568))

(assert (= (or b!7986260 b!7986264) bm!741564))

(assert (= (or b!7986260 b!7986264) bm!741563))

(assert (= (and d!2383816 res!3161314) b!7986258))

(assert (= (and b!7986258 (not res!3161313)) b!7986267))

(declare-fun m!8360430 () Bool)

(assert (=> b!7986261 m!8360430))

(assert (=> bm!741563 m!8360168))

(declare-fun m!8360432 () Bool)

(assert (=> d!2383816 m!8360432))

(declare-fun m!8360434 () Bool)

(assert (=> d!2383816 m!8360434))

(declare-fun m!8360436 () Bool)

(assert (=> d!2383816 m!8360436))

(declare-fun m!8360438 () Bool)

(assert (=> d!2383816 m!8360438))

(declare-fun m!8360440 () Bool)

(assert (=> d!2383816 m!8360440))

(declare-fun m!8360442 () Bool)

(assert (=> d!2383816 m!8360442))

(declare-fun m!8360444 () Bool)

(assert (=> d!2383816 m!8360444))

(declare-fun m!8360446 () Bool)

(assert (=> d!2383816 m!8360446))

(assert (=> d!2383816 m!8360436))

(declare-fun m!8360448 () Bool)

(assert (=> b!7986267 m!8360448))

(declare-fun m!8360450 () Bool)

(assert (=> b!7986267 m!8360450))

(declare-fun m!8360452 () Bool)

(assert (=> bm!741568 m!8360452))

(declare-fun m!8360454 () Bool)

(assert (=> bm!741562 m!8360454))

(declare-fun m!8360456 () Bool)

(assert (=> b!7986268 m!8360456))

(declare-fun m!8360458 () Bool)

(assert (=> b!7986268 m!8360458))

(declare-fun m!8360460 () Bool)

(assert (=> b!7986268 m!8360460))

(declare-fun m!8360462 () Bool)

(assert (=> b!7986268 m!8360462))

(assert (=> b!7986268 m!8360144))

(assert (=> b!7986268 m!8360432))

(declare-fun m!8360464 () Bool)

(assert (=> b!7986268 m!8360464))

(assert (=> b!7986268 m!8360456))

(declare-fun m!8360466 () Bool)

(assert (=> b!7986268 m!8360466))

(declare-fun m!8360468 () Bool)

(assert (=> b!7986268 m!8360468))

(assert (=> b!7986268 m!8360454))

(declare-fun m!8360470 () Bool)

(assert (=> b!7986268 m!8360470))

(declare-fun m!8360472 () Bool)

(assert (=> b!7986268 m!8360472))

(assert (=> b!7986268 m!8360432))

(assert (=> b!7986268 m!8360450))

(declare-fun m!8360474 () Bool)

(assert (=> b!7986268 m!8360474))

(assert (=> b!7986268 m!8360458))

(declare-fun m!8360476 () Bool)

(assert (=> bm!741569 m!8360476))

(declare-fun m!8360478 () Bool)

(assert (=> b!7986258 m!8360478))

(assert (=> bm!741564 m!8360166))

(assert (=> bm!741567 m!8360462))

(declare-fun m!8360480 () Bool)

(assert (=> bm!741565 m!8360480))

(declare-fun m!8360482 () Bool)

(assert (=> bm!741566 m!8360482))

(assert (=> bm!741545 d!2383816))

(declare-fun d!2383818 () Bool)

(declare-fun lt!2711882 () Int)

(assert (=> d!2383818 (>= lt!2711882 0)))

(declare-fun e!4706858 () Int)

(assert (=> d!2383818 (= lt!2711882 e!4706858)))

(declare-fun c!1466631 () Bool)

(assert (=> d!2383818 (= c!1466631 ((_ is Nil!74656) (t!390523 lt!2711603)))))

(assert (=> d!2383818 (= (size!43487 (t!390523 lt!2711603)) lt!2711882)))

(declare-fun b!7986271 () Bool)

(assert (=> b!7986271 (= e!4706858 0)))

(declare-fun b!7986272 () Bool)

(assert (=> b!7986272 (= e!4706858 (+ 1 (size!43487 (t!390523 (t!390523 lt!2711603)))))))

(assert (= (and d!2383818 c!1466631) b!7986271))

(assert (= (and d!2383818 (not c!1466631)) b!7986272))

(declare-fun m!8360484 () Bool)

(assert (=> b!7986272 m!8360484))

(assert (=> b!7985828 d!2383818))

(declare-fun d!2383820 () Bool)

(declare-fun lt!2711883 () Int)

(assert (=> d!2383820 (>= lt!2711883 0)))

(declare-fun e!4706859 () Int)

(assert (=> d!2383820 (= lt!2711883 e!4706859)))

(declare-fun c!1466632 () Bool)

(assert (=> d!2383820 (= c!1466632 ((_ is Nil!74656) (t!390523 input!7927)))))

(assert (=> d!2383820 (= (size!43487 (t!390523 input!7927)) lt!2711883)))

(declare-fun b!7986273 () Bool)

(assert (=> b!7986273 (= e!4706859 0)))

(declare-fun b!7986274 () Bool)

(assert (=> b!7986274 (= e!4706859 (+ 1 (size!43487 (t!390523 (t!390523 input!7927)))))))

(assert (= (and d!2383820 c!1466632) b!7986273))

(assert (= (and d!2383820 (not c!1466632)) b!7986274))

(declare-fun m!8360486 () Bool)

(assert (=> b!7986274 m!8360486))

(assert (=> b!7985907 d!2383820))

(assert (=> bm!741544 d!2383796))

(declare-fun b!7986275 () Bool)

(declare-fun res!3161318 () Bool)

(declare-fun e!4706863 () Bool)

(assert (=> b!7986275 (=> (not res!3161318) (not e!4706863))))

(declare-fun call!741575 () Bool)

(assert (=> b!7986275 (= res!3161318 call!741575)))

(declare-fun e!4706865 () Bool)

(assert (=> b!7986275 (= e!4706865 e!4706863)))

(declare-fun bm!741570 () Bool)

(declare-fun c!1466633 () Bool)

(declare-fun call!741577 () Bool)

(assert (=> bm!741570 (= call!741577 (validRegex!11855 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))

(declare-fun b!7986276 () Bool)

(declare-fun e!4706866 () Bool)

(declare-fun e!4706860 () Bool)

(assert (=> b!7986276 (= e!4706866 e!4706860)))

(declare-fun res!3161319 () Bool)

(assert (=> b!7986276 (=> (not res!3161319) (not e!4706860))))

(assert (=> b!7986276 (= res!3161319 call!741575)))

(declare-fun bm!741571 () Bool)

(declare-fun call!741576 () Bool)

(assert (=> bm!741571 (= call!741575 call!741576)))

(declare-fun d!2383822 () Bool)

(declare-fun res!3161316 () Bool)

(declare-fun e!4706864 () Bool)

(assert (=> d!2383822 (=> res!3161316 e!4706864)))

(assert (=> d!2383822 (= res!3161316 ((_ is ElementMatch!21551) (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))

(assert (=> d!2383822 (= (validRegex!11855 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) e!4706864)))

(declare-fun b!7986277 () Bool)

(assert (=> b!7986277 (= e!4706863 call!741577)))

(declare-fun b!7986278 () Bool)

(declare-fun e!4706861 () Bool)

(assert (=> b!7986278 (= e!4706864 e!4706861)))

(declare-fun c!1466634 () Bool)

(assert (=> b!7986278 (= c!1466634 ((_ is Star!21551) (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))

(declare-fun bm!741572 () Bool)

(assert (=> bm!741572 (= call!741576 (validRegex!11855 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))

(declare-fun b!7986279 () Bool)

(assert (=> b!7986279 (= e!4706861 e!4706865)))

(assert (=> b!7986279 (= c!1466633 ((_ is Union!21551) (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))

(declare-fun b!7986280 () Bool)

(declare-fun e!4706862 () Bool)

(assert (=> b!7986280 (= e!4706861 e!4706862)))

(declare-fun res!3161315 () Bool)

(assert (=> b!7986280 (= res!3161315 (not (nullable!9644 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))

(assert (=> b!7986280 (=> (not res!3161315) (not e!4706862))))

(declare-fun b!7986281 () Bool)

(assert (=> b!7986281 (= e!4706860 call!741577)))

(declare-fun b!7986282 () Bool)

(assert (=> b!7986282 (= e!4706862 call!741576)))

(declare-fun b!7986283 () Bool)

(declare-fun res!3161317 () Bool)

(assert (=> b!7986283 (=> res!3161317 e!4706866)))

(assert (=> b!7986283 (= res!3161317 (not ((_ is Concat!30550) (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))

(assert (=> b!7986283 (= e!4706865 e!4706866)))

(assert (= (and d!2383822 (not res!3161316)) b!7986278))

(assert (= (and b!7986278 c!1466634) b!7986280))

(assert (= (and b!7986278 (not c!1466634)) b!7986279))

(assert (= (and b!7986280 res!3161315) b!7986282))

(assert (= (and b!7986279 c!1466633) b!7986275))

(assert (= (and b!7986279 (not c!1466633)) b!7986283))

(assert (= (and b!7986275 res!3161318) b!7986277))

(assert (= (and b!7986283 (not res!3161317)) b!7986276))

(assert (= (and b!7986276 res!3161319) b!7986281))

(assert (= (or b!7986277 b!7986281) bm!741570))

(assert (= (or b!7986275 b!7986276) bm!741571))

(assert (= (or b!7986282 bm!741571) bm!741572))

(declare-fun m!8360488 () Bool)

(assert (=> bm!741570 m!8360488))

(declare-fun m!8360490 () Bool)

(assert (=> bm!741572 m!8360490))

(declare-fun m!8360492 () Bool)

(assert (=> b!7986280 m!8360492))

(assert (=> bm!741555 d!2383822))

(declare-fun b!7986284 () Bool)

(declare-fun res!3161323 () Bool)

(declare-fun e!4706870 () Bool)

(assert (=> b!7986284 (=> (not res!3161323) (not e!4706870))))

(declare-fun call!741578 () Bool)

(assert (=> b!7986284 (= res!3161323 call!741578)))

(declare-fun e!4706872 () Bool)

(assert (=> b!7986284 (= e!4706872 e!4706870)))

(declare-fun bm!741573 () Bool)

(declare-fun call!741580 () Bool)

(declare-fun c!1466635 () Bool)

(assert (=> bm!741573 (= call!741580 (validRegex!11855 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))))))

(declare-fun b!7986285 () Bool)

(declare-fun e!4706873 () Bool)

(declare-fun e!4706867 () Bool)

(assert (=> b!7986285 (= e!4706873 e!4706867)))

(declare-fun res!3161324 () Bool)

(assert (=> b!7986285 (=> (not res!3161324) (not e!4706867))))

(assert (=> b!7986285 (= res!3161324 call!741578)))

(declare-fun bm!741574 () Bool)

(declare-fun call!741579 () Bool)

(assert (=> bm!741574 (= call!741578 call!741579)))

(declare-fun d!2383824 () Bool)

(declare-fun res!3161321 () Bool)

(declare-fun e!4706871 () Bool)

(assert (=> d!2383824 (=> res!3161321 e!4706871)))

(assert (=> d!2383824 (= res!3161321 ((_ is ElementMatch!21551) lt!2711613))))

(assert (=> d!2383824 (= (validRegex!11855 lt!2711613) e!4706871)))

(declare-fun b!7986286 () Bool)

(assert (=> b!7986286 (= e!4706870 call!741580)))

(declare-fun b!7986287 () Bool)

(declare-fun e!4706868 () Bool)

(assert (=> b!7986287 (= e!4706871 e!4706868)))

(declare-fun c!1466636 () Bool)

(assert (=> b!7986287 (= c!1466636 ((_ is Star!21551) lt!2711613))))

(declare-fun bm!741575 () Bool)

(assert (=> bm!741575 (= call!741579 (validRegex!11855 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))))))

(declare-fun b!7986288 () Bool)

(assert (=> b!7986288 (= e!4706868 e!4706872)))

(assert (=> b!7986288 (= c!1466635 ((_ is Union!21551) lt!2711613))))

(declare-fun b!7986289 () Bool)

(declare-fun e!4706869 () Bool)

(assert (=> b!7986289 (= e!4706868 e!4706869)))

(declare-fun res!3161320 () Bool)

(assert (=> b!7986289 (= res!3161320 (not (nullable!9644 (reg!21880 lt!2711613))))))

(assert (=> b!7986289 (=> (not res!3161320) (not e!4706869))))

(declare-fun b!7986290 () Bool)

(assert (=> b!7986290 (= e!4706867 call!741580)))

(declare-fun b!7986291 () Bool)

(assert (=> b!7986291 (= e!4706869 call!741579)))

(declare-fun b!7986292 () Bool)

(declare-fun res!3161322 () Bool)

(assert (=> b!7986292 (=> res!3161322 e!4706873)))

(assert (=> b!7986292 (= res!3161322 (not ((_ is Concat!30550) lt!2711613)))))

(assert (=> b!7986292 (= e!4706872 e!4706873)))

(assert (= (and d!2383824 (not res!3161321)) b!7986287))

(assert (= (and b!7986287 c!1466636) b!7986289))

(assert (= (and b!7986287 (not c!1466636)) b!7986288))

(assert (= (and b!7986289 res!3161320) b!7986291))

(assert (= (and b!7986288 c!1466635) b!7986284))

(assert (= (and b!7986288 (not c!1466635)) b!7986292))

(assert (= (and b!7986284 res!3161323) b!7986286))

(assert (= (and b!7986292 (not res!3161322)) b!7986285))

(assert (= (and b!7986285 res!3161324) b!7986290))

(assert (= (or b!7986286 b!7986290) bm!741573))

(assert (= (or b!7986284 b!7986285) bm!741574))

(assert (= (or b!7986291 bm!741574) bm!741575))

(declare-fun m!8360494 () Bool)

(assert (=> bm!741573 m!8360494))

(declare-fun m!8360496 () Bool)

(assert (=> bm!741575 m!8360496))

(declare-fun m!8360498 () Bool)

(assert (=> b!7986289 m!8360498))

(assert (=> d!2383730 d!2383824))

(assert (=> d!2383730 d!2383810))

(declare-fun d!2383826 () Bool)

(declare-fun lt!2711884 () Int)

(assert (=> d!2383826 (>= lt!2711884 0)))

(declare-fun e!4706874 () Int)

(assert (=> d!2383826 (= lt!2711884 e!4706874)))

(declare-fun c!1466637 () Bool)

(assert (=> d!2383826 (= c!1466637 ((_ is Nil!74656) (_1!38683 lt!2711815)))))

(assert (=> d!2383826 (= (size!43487 (_1!38683 lt!2711815)) lt!2711884)))

(declare-fun b!7986293 () Bool)

(assert (=> b!7986293 (= e!4706874 0)))

(declare-fun b!7986294 () Bool)

(assert (=> b!7986294 (= e!4706874 (+ 1 (size!43487 (t!390523 (_1!38683 lt!2711815)))))))

(assert (= (and d!2383826 c!1466637) b!7986293))

(assert (= (and d!2383826 (not c!1466637)) b!7986294))

(declare-fun m!8360500 () Bool)

(assert (=> b!7986294 m!8360500))

(assert (=> b!7986124 d!2383826))

(assert (=> b!7986124 d!2383788))

(assert (=> d!2383802 d!2383804))

(declare-fun d!2383828 () Bool)

(assert (=> d!2383828 (isPrefix!6651 input!7927 input!7927)))

(assert (=> d!2383828 true))

(declare-fun _$45!2506 () Unit!170492)

(assert (=> d!2383828 (= (choose!60176 input!7927 input!7927) _$45!2506)))

(declare-fun bs!1970317 () Bool)

(assert (= bs!1970317 d!2383828))

(assert (=> bs!1970317 m!8360168))

(assert (=> d!2383802 d!2383828))

(declare-fun b!7986295 () Bool)

(declare-fun res!3161328 () Bool)

(declare-fun e!4706878 () Bool)

(assert (=> b!7986295 (=> (not res!3161328) (not e!4706878))))

(declare-fun call!741581 () Bool)

(assert (=> b!7986295 (= res!3161328 call!741581)))

(declare-fun e!4706880 () Bool)

(assert (=> b!7986295 (= e!4706880 e!4706878)))

(declare-fun bm!741576 () Bool)

(declare-fun call!741583 () Bool)

(declare-fun c!1466638 () Bool)

(assert (=> bm!741576 (= call!741583 (validRegex!11855 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))))))

(declare-fun b!7986296 () Bool)

(declare-fun e!4706881 () Bool)

(declare-fun e!4706875 () Bool)

(assert (=> b!7986296 (= e!4706881 e!4706875)))

(declare-fun res!3161329 () Bool)

(assert (=> b!7986296 (=> (not res!3161329) (not e!4706875))))

(assert (=> b!7986296 (= res!3161329 call!741581)))

(declare-fun bm!741577 () Bool)

(declare-fun call!741582 () Bool)

(assert (=> bm!741577 (= call!741581 call!741582)))

(declare-fun d!2383830 () Bool)

(declare-fun res!3161326 () Bool)

(declare-fun e!4706879 () Bool)

(assert (=> d!2383830 (=> res!3161326 e!4706879)))

(assert (=> d!2383830 (= res!3161326 ((_ is ElementMatch!21551) lt!2711623))))

(assert (=> d!2383830 (= (validRegex!11855 lt!2711623) e!4706879)))

(declare-fun b!7986297 () Bool)

(assert (=> b!7986297 (= e!4706878 call!741583)))

(declare-fun b!7986298 () Bool)

(declare-fun e!4706876 () Bool)

(assert (=> b!7986298 (= e!4706879 e!4706876)))

(declare-fun c!1466639 () Bool)

(assert (=> b!7986298 (= c!1466639 ((_ is Star!21551) lt!2711623))))

(declare-fun bm!741578 () Bool)

(assert (=> bm!741578 (= call!741582 (validRegex!11855 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))))))

(declare-fun b!7986299 () Bool)

(assert (=> b!7986299 (= e!4706876 e!4706880)))

(assert (=> b!7986299 (= c!1466638 ((_ is Union!21551) lt!2711623))))

(declare-fun b!7986300 () Bool)

(declare-fun e!4706877 () Bool)

(assert (=> b!7986300 (= e!4706876 e!4706877)))

(declare-fun res!3161325 () Bool)

(assert (=> b!7986300 (= res!3161325 (not (nullable!9644 (reg!21880 lt!2711623))))))

(assert (=> b!7986300 (=> (not res!3161325) (not e!4706877))))

(declare-fun b!7986301 () Bool)

(assert (=> b!7986301 (= e!4706875 call!741583)))

(declare-fun b!7986302 () Bool)

(assert (=> b!7986302 (= e!4706877 call!741582)))

(declare-fun b!7986303 () Bool)

(declare-fun res!3161327 () Bool)

(assert (=> b!7986303 (=> res!3161327 e!4706881)))

(assert (=> b!7986303 (= res!3161327 (not ((_ is Concat!30550) lt!2711623)))))

(assert (=> b!7986303 (= e!4706880 e!4706881)))

(assert (= (and d!2383830 (not res!3161326)) b!7986298))

(assert (= (and b!7986298 c!1466639) b!7986300))

(assert (= (and b!7986298 (not c!1466639)) b!7986299))

(assert (= (and b!7986300 res!3161325) b!7986302))

(assert (= (and b!7986299 c!1466638) b!7986295))

(assert (= (and b!7986299 (not c!1466638)) b!7986303))

(assert (= (and b!7986295 res!3161328) b!7986297))

(assert (= (and b!7986303 (not res!3161327)) b!7986296))

(assert (= (and b!7986296 res!3161329) b!7986301))

(assert (= (or b!7986297 b!7986301) bm!741576))

(assert (= (or b!7986295 b!7986296) bm!741577))

(assert (= (or b!7986302 bm!741577) bm!741578))

(declare-fun m!8360502 () Bool)

(assert (=> bm!741576 m!8360502))

(declare-fun m!8360504 () Bool)

(assert (=> bm!741578 m!8360504))

(declare-fun m!8360506 () Bool)

(assert (=> b!7986300 m!8360506))

(assert (=> d!2383742 d!2383830))

(assert (=> d!2383742 d!2383810))

(declare-fun b!7986304 () Bool)

(declare-fun res!3161333 () Bool)

(declare-fun e!4706885 () Bool)

(assert (=> b!7986304 (=> (not res!3161333) (not e!4706885))))

(declare-fun call!741584 () Bool)

(assert (=> b!7986304 (= res!3161333 call!741584)))

(declare-fun e!4706887 () Bool)

(assert (=> b!7986304 (= e!4706887 e!4706885)))

(declare-fun call!741586 () Bool)

(declare-fun bm!741579 () Bool)

(declare-fun c!1466640 () Bool)

(assert (=> bm!741579 (= call!741586 (validRegex!11855 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))

(declare-fun b!7986305 () Bool)

(declare-fun e!4706888 () Bool)

(declare-fun e!4706882 () Bool)

(assert (=> b!7986305 (= e!4706888 e!4706882)))

(declare-fun res!3161334 () Bool)

(assert (=> b!7986305 (=> (not res!3161334) (not e!4706882))))

(assert (=> b!7986305 (= res!3161334 call!741584)))

(declare-fun bm!741580 () Bool)

(declare-fun call!741585 () Bool)

(assert (=> bm!741580 (= call!741584 call!741585)))

(declare-fun d!2383832 () Bool)

(declare-fun res!3161331 () Bool)

(declare-fun e!4706886 () Bool)

(assert (=> d!2383832 (=> res!3161331 e!4706886)))

(assert (=> d!2383832 (= res!3161331 ((_ is ElementMatch!21551) (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(assert (=> d!2383832 (= (validRegex!11855 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) e!4706886)))

(declare-fun b!7986306 () Bool)

(assert (=> b!7986306 (= e!4706885 call!741586)))

(declare-fun b!7986307 () Bool)

(declare-fun e!4706883 () Bool)

(assert (=> b!7986307 (= e!4706886 e!4706883)))

(declare-fun c!1466641 () Bool)

(assert (=> b!7986307 (= c!1466641 ((_ is Star!21551) (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(declare-fun bm!741581 () Bool)

(assert (=> bm!741581 (= call!741585 (validRegex!11855 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))

(declare-fun b!7986308 () Bool)

(assert (=> b!7986308 (= e!4706883 e!4706887)))

(assert (=> b!7986308 (= c!1466640 ((_ is Union!21551) (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(declare-fun b!7986309 () Bool)

(declare-fun e!4706884 () Bool)

(assert (=> b!7986309 (= e!4706883 e!4706884)))

(declare-fun res!3161330 () Bool)

(assert (=> b!7986309 (= res!3161330 (not (nullable!9644 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))

(assert (=> b!7986309 (=> (not res!3161330) (not e!4706884))))

(declare-fun b!7986310 () Bool)

(assert (=> b!7986310 (= e!4706882 call!741586)))

(declare-fun b!7986311 () Bool)

(assert (=> b!7986311 (= e!4706884 call!741585)))

(declare-fun b!7986312 () Bool)

(declare-fun res!3161332 () Bool)

(assert (=> b!7986312 (=> res!3161332 e!4706888)))

(assert (=> b!7986312 (= res!3161332 (not ((_ is Concat!30550) (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))

(assert (=> b!7986312 (= e!4706887 e!4706888)))

(assert (= (and d!2383832 (not res!3161331)) b!7986307))

(assert (= (and b!7986307 c!1466641) b!7986309))

(assert (= (and b!7986307 (not c!1466641)) b!7986308))

(assert (= (and b!7986309 res!3161330) b!7986311))

(assert (= (and b!7986308 c!1466640) b!7986304))

(assert (= (and b!7986308 (not c!1466640)) b!7986312))

(assert (= (and b!7986304 res!3161333) b!7986306))

(assert (= (and b!7986312 (not res!3161332)) b!7986305))

(assert (= (and b!7986305 res!3161334) b!7986310))

(assert (= (or b!7986306 b!7986310) bm!741579))

(assert (= (or b!7986304 b!7986305) bm!741580))

(assert (= (or b!7986311 bm!741580) bm!741581))

(declare-fun m!8360508 () Bool)

(assert (=> bm!741579 m!8360508))

(declare-fun m!8360510 () Bool)

(assert (=> bm!741581 m!8360510))

(declare-fun m!8360512 () Bool)

(assert (=> b!7986309 m!8360512))

(assert (=> bm!741557 d!2383832))

(declare-fun bm!741586 () Bool)

(declare-fun call!741592 () Bool)

(declare-fun c!1466644 () Bool)

(assert (=> bm!741586 (= call!741592 (nullable!9644 (ite c!1466644 (regTwo!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7986327 () Bool)

(declare-fun e!4706906 () Bool)

(declare-fun e!4706901 () Bool)

(assert (=> b!7986327 (= e!4706906 e!4706901)))

(declare-fun res!3161349 () Bool)

(declare-fun call!741591 () Bool)

(assert (=> b!7986327 (= res!3161349 call!741591)))

(assert (=> b!7986327 (=> res!3161349 e!4706901)))

(declare-fun bm!741587 () Bool)

(assert (=> bm!741587 (= call!741591 (nullable!9644 (ite c!1466644 (regOne!43615 r!24602) (regTwo!43614 r!24602))))))

(declare-fun d!2383834 () Bool)

(declare-fun res!3161346 () Bool)

(declare-fun e!4706903 () Bool)

(assert (=> d!2383834 (=> res!3161346 e!4706903)))

(assert (=> d!2383834 (= res!3161346 ((_ is EmptyExpr!21551) r!24602))))

(assert (=> d!2383834 (= (nullableFct!3814 r!24602) e!4706903)))

(declare-fun b!7986328 () Bool)

(declare-fun e!4706904 () Bool)

(assert (=> b!7986328 (= e!4706906 e!4706904)))

(declare-fun res!3161345 () Bool)

(assert (=> b!7986328 (= res!3161345 call!741592)))

(assert (=> b!7986328 (=> (not res!3161345) (not e!4706904))))

(declare-fun b!7986329 () Bool)

(declare-fun e!4706905 () Bool)

(assert (=> b!7986329 (= e!4706903 e!4706905)))

(declare-fun res!3161347 () Bool)

(assert (=> b!7986329 (=> (not res!3161347) (not e!4706905))))

(assert (=> b!7986329 (= res!3161347 (and (not ((_ is EmptyLang!21551) r!24602)) (not ((_ is ElementMatch!21551) r!24602))))))

(declare-fun b!7986330 () Bool)

(declare-fun e!4706902 () Bool)

(assert (=> b!7986330 (= e!4706905 e!4706902)))

(declare-fun res!3161348 () Bool)

(assert (=> b!7986330 (=> res!3161348 e!4706902)))

(assert (=> b!7986330 (= res!3161348 ((_ is Star!21551) r!24602))))

(declare-fun b!7986331 () Bool)

(assert (=> b!7986331 (= e!4706904 call!741591)))

(declare-fun b!7986332 () Bool)

(assert (=> b!7986332 (= e!4706902 e!4706906)))

(assert (=> b!7986332 (= c!1466644 ((_ is Union!21551) r!24602))))

(declare-fun b!7986333 () Bool)

(assert (=> b!7986333 (= e!4706901 call!741592)))

(assert (= (and d!2383834 (not res!3161346)) b!7986329))

(assert (= (and b!7986329 res!3161347) b!7986330))

(assert (= (and b!7986330 (not res!3161348)) b!7986332))

(assert (= (and b!7986332 c!1466644) b!7986327))

(assert (= (and b!7986332 (not c!1466644)) b!7986328))

(assert (= (and b!7986327 (not res!3161349)) b!7986333))

(assert (= (and b!7986328 res!3161345) b!7986331))

(assert (= (or b!7986327 b!7986331) bm!741587))

(assert (= (or b!7986333 b!7986328) bm!741586))

(declare-fun m!8360514 () Bool)

(assert (=> bm!741586 m!8360514))

(declare-fun m!8360516 () Bool)

(assert (=> bm!741587 m!8360516))

(assert (=> d!2383796 d!2383834))

(declare-fun d!2383836 () Bool)

(assert (=> d!2383836 (= (tail!15824 lt!2711604) (t!390523 lt!2711604))))

(assert (=> bm!741546 d!2383836))

(declare-fun b!7986335 () Bool)

(declare-fun res!3161351 () Bool)

(declare-fun e!4706909 () Bool)

(assert (=> b!7986335 (=> (not res!3161351) (not e!4706909))))

(assert (=> b!7986335 (= res!3161351 (= (head!16297 (tail!15824 input!7927)) (head!16297 (tail!15824 input!7927))))))

(declare-fun b!7986336 () Bool)

(assert (=> b!7986336 (= e!4706909 (isPrefix!6651 (tail!15824 (tail!15824 input!7927)) (tail!15824 (tail!15824 input!7927))))))

(declare-fun d!2383838 () Bool)

(declare-fun e!4706908 () Bool)

(assert (=> d!2383838 e!4706908))

(declare-fun res!3161352 () Bool)

(assert (=> d!2383838 (=> res!3161352 e!4706908)))

(declare-fun lt!2711885 () Bool)

(assert (=> d!2383838 (= res!3161352 (not lt!2711885))))

(declare-fun e!4706907 () Bool)

(assert (=> d!2383838 (= lt!2711885 e!4706907)))

(declare-fun res!3161350 () Bool)

(assert (=> d!2383838 (=> res!3161350 e!4706907)))

(assert (=> d!2383838 (= res!3161350 ((_ is Nil!74656) (tail!15824 input!7927)))))

(assert (=> d!2383838 (= (isPrefix!6651 (tail!15824 input!7927) (tail!15824 input!7927)) lt!2711885)))

(declare-fun b!7986337 () Bool)

(assert (=> b!7986337 (= e!4706908 (>= (size!43487 (tail!15824 input!7927)) (size!43487 (tail!15824 input!7927))))))

(declare-fun b!7986334 () Bool)

(assert (=> b!7986334 (= e!4706907 e!4706909)))

(declare-fun res!3161353 () Bool)

(assert (=> b!7986334 (=> (not res!3161353) (not e!4706909))))

(assert (=> b!7986334 (= res!3161353 (not ((_ is Nil!74656) (tail!15824 input!7927))))))

(assert (= (and d!2383838 (not res!3161350)) b!7986334))

(assert (= (and b!7986334 res!3161353) b!7986335))

(assert (= (and b!7986335 res!3161351) b!7986336))

(assert (= (and d!2383838 (not res!3161352)) b!7986337))

(assert (=> b!7986335 m!8360222))

(declare-fun m!8360518 () Bool)

(assert (=> b!7986335 m!8360518))

(assert (=> b!7986335 m!8360222))

(assert (=> b!7986335 m!8360518))

(assert (=> b!7986336 m!8360222))

(declare-fun m!8360520 () Bool)

(assert (=> b!7986336 m!8360520))

(assert (=> b!7986336 m!8360222))

(assert (=> b!7986336 m!8360520))

(assert (=> b!7986336 m!8360520))

(assert (=> b!7986336 m!8360520))

(declare-fun m!8360522 () Bool)

(assert (=> b!7986336 m!8360522))

(assert (=> b!7986337 m!8360222))

(declare-fun m!8360524 () Bool)

(assert (=> b!7986337 m!8360524))

(assert (=> b!7986337 m!8360222))

(assert (=> b!7986337 m!8360524))

(assert (=> b!7986156 d!2383838))

(declare-fun d!2383840 () Bool)

(assert (=> d!2383840 (= (tail!15824 input!7927) (t!390523 input!7927))))

(assert (=> b!7986156 d!2383840))

(declare-fun d!2383842 () Bool)

(assert (=> d!2383842 (= (nullable!9644 (reg!21880 baseR!116)) (nullableFct!3814 (reg!21880 baseR!116)))))

(declare-fun bs!1970318 () Bool)

(assert (= bs!1970318 d!2383842))

(declare-fun m!8360526 () Bool)

(assert (=> bs!1970318 m!8360526))

(assert (=> b!7986185 d!2383842))

(declare-fun d!2383844 () Bool)

(declare-fun lt!2711886 () List!74780)

(assert (=> d!2383844 (= (++!18413 (t!390523 testedP!447) lt!2711886) (tail!15824 input!7927))))

(declare-fun e!4706910 () List!74780)

(assert (=> d!2383844 (= lt!2711886 e!4706910)))

(declare-fun c!1466645 () Bool)

(assert (=> d!2383844 (= c!1466645 ((_ is Cons!74656) (t!390523 testedP!447)))))

(assert (=> d!2383844 (>= (size!43487 (tail!15824 input!7927)) (size!43487 (t!390523 testedP!447)))))

(assert (=> d!2383844 (= (getSuffix!3852 (tail!15824 input!7927) (t!390523 testedP!447)) lt!2711886)))

(declare-fun b!7986338 () Bool)

(assert (=> b!7986338 (= e!4706910 (getSuffix!3852 (tail!15824 (tail!15824 input!7927)) (t!390523 (t!390523 testedP!447))))))

(declare-fun b!7986339 () Bool)

(assert (=> b!7986339 (= e!4706910 (tail!15824 input!7927))))

(assert (= (and d!2383844 c!1466645) b!7986338))

(assert (= (and d!2383844 (not c!1466645)) b!7986339))

(declare-fun m!8360528 () Bool)

(assert (=> d!2383844 m!8360528))

(assert (=> d!2383844 m!8360222))

(assert (=> d!2383844 m!8360524))

(assert (=> d!2383844 m!8360368))

(assert (=> b!7986338 m!8360222))

(assert (=> b!7986338 m!8360520))

(assert (=> b!7986338 m!8360520))

(declare-fun m!8360530 () Bool)

(assert (=> b!7986338 m!8360530))

(assert (=> b!7985912 d!2383844))

(assert (=> b!7985912 d!2383840))

(assert (=> bm!741547 d!2383806))

(declare-fun d!2383846 () Bool)

(assert (=> d!2383846 (= (head!16297 (getSuffix!3852 input!7927 testedP!447)) (h!81104 (getSuffix!3852 input!7927 testedP!447)))))

(assert (=> d!2383792 d!2383846))

(declare-fun d!2383848 () Bool)

(assert (=> d!2383848 (isPrefix!6651 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) input!7927)))

(assert (=> d!2383848 true))

(declare-fun _$65!1983 () Unit!170492)

(assert (=> d!2383848 (= (choose!60173 testedP!447 input!7927) _$65!1983)))

(declare-fun bs!1970319 () Bool)

(assert (= bs!1970319 d!2383848))

(assert (=> bs!1970319 m!8360146))

(assert (=> bs!1970319 m!8360146))

(assert (=> bs!1970319 m!8360354))

(assert (=> bs!1970319 m!8360348))

(assert (=> bs!1970319 m!8360348))

(assert (=> bs!1970319 m!8360350))

(assert (=> d!2383792 d!2383848))

(declare-fun b!7986341 () Bool)

(declare-fun e!4706912 () List!74780)

(assert (=> b!7986341 (= e!4706912 (Cons!74656 (h!81104 testedP!447) (++!18413 (t!390523 testedP!447) (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))

(declare-fun b!7986340 () Bool)

(assert (=> b!7986340 (= e!4706912 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))

(declare-fun d!2383850 () Bool)

(declare-fun e!4706911 () Bool)

(assert (=> d!2383850 e!4706911))

(declare-fun res!3161355 () Bool)

(assert (=> d!2383850 (=> (not res!3161355) (not e!4706911))))

(declare-fun lt!2711887 () List!74780)

(assert (=> d!2383850 (= res!3161355 (= (content!15870 lt!2711887) ((_ map or) (content!15870 testedP!447) (content!15870 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(assert (=> d!2383850 (= lt!2711887 e!4706912)))

(declare-fun c!1466646 () Bool)

(assert (=> d!2383850 (= c!1466646 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383850 (= (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) lt!2711887)))

(declare-fun b!7986342 () Bool)

(declare-fun res!3161354 () Bool)

(assert (=> b!7986342 (=> (not res!3161354) (not e!4706911))))

(assert (=> b!7986342 (= res!3161354 (= (size!43487 lt!2711887) (+ (size!43487 testedP!447) (size!43487 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(declare-fun b!7986343 () Bool)

(assert (=> b!7986343 (= e!4706911 (or (not (= (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656) Nil!74656)) (= lt!2711887 testedP!447)))))

(assert (= (and d!2383850 c!1466646) b!7986340))

(assert (= (and d!2383850 (not c!1466646)) b!7986341))

(assert (= (and d!2383850 res!3161355) b!7986342))

(assert (= (and b!7986342 res!3161354) b!7986343))

(declare-fun m!8360532 () Bool)

(assert (=> b!7986341 m!8360532))

(declare-fun m!8360534 () Bool)

(assert (=> d!2383850 m!8360534))

(assert (=> d!2383850 m!8360378))

(declare-fun m!8360536 () Bool)

(assert (=> d!2383850 m!8360536))

(declare-fun m!8360538 () Bool)

(assert (=> b!7986342 m!8360538))

(assert (=> b!7986342 m!8360150))

(declare-fun m!8360540 () Bool)

(assert (=> b!7986342 m!8360540))

(assert (=> d!2383792 d!2383850))

(declare-fun b!7986345 () Bool)

(declare-fun res!3161357 () Bool)

(declare-fun e!4706915 () Bool)

(assert (=> b!7986345 (=> (not res!3161357) (not e!4706915))))

(assert (=> b!7986345 (= res!3161357 (= (head!16297 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))) (head!16297 input!7927)))))

(declare-fun b!7986346 () Bool)

(assert (=> b!7986346 (= e!4706915 (isPrefix!6651 (tail!15824 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))) (tail!15824 input!7927)))))

(declare-fun d!2383852 () Bool)

(declare-fun e!4706914 () Bool)

(assert (=> d!2383852 e!4706914))

(declare-fun res!3161358 () Bool)

(assert (=> d!2383852 (=> res!3161358 e!4706914)))

(declare-fun lt!2711888 () Bool)

(assert (=> d!2383852 (= res!3161358 (not lt!2711888))))

(declare-fun e!4706913 () Bool)

(assert (=> d!2383852 (= lt!2711888 e!4706913)))

(declare-fun res!3161356 () Bool)

(assert (=> d!2383852 (=> res!3161356 e!4706913)))

(assert (=> d!2383852 (= res!3161356 ((_ is Nil!74656) (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))

(assert (=> d!2383852 (= (isPrefix!6651 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) input!7927) lt!2711888)))

(declare-fun b!7986347 () Bool)

(assert (=> b!7986347 (= e!4706914 (>= (size!43487 input!7927) (size!43487 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(declare-fun b!7986344 () Bool)

(assert (=> b!7986344 (= e!4706913 e!4706915)))

(declare-fun res!3161359 () Bool)

(assert (=> b!7986344 (=> (not res!3161359) (not e!4706915))))

(assert (=> b!7986344 (= res!3161359 (not ((_ is Nil!74656) input!7927)))))

(assert (= (and d!2383852 (not res!3161356)) b!7986344))

(assert (= (and b!7986344 res!3161359) b!7986345))

(assert (= (and b!7986345 res!3161357) b!7986346))

(assert (= (and d!2383852 (not res!3161358)) b!7986347))

(assert (=> b!7986345 m!8360348))

(declare-fun m!8360542 () Bool)

(assert (=> b!7986345 m!8360542))

(assert (=> b!7986345 m!8360390))

(assert (=> b!7986346 m!8360348))

(declare-fun m!8360544 () Bool)

(assert (=> b!7986346 m!8360544))

(assert (=> b!7986346 m!8360222))

(assert (=> b!7986346 m!8360544))

(assert (=> b!7986346 m!8360222))

(declare-fun m!8360546 () Bool)

(assert (=> b!7986346 m!8360546))

(assert (=> b!7986347 m!8360144))

(assert (=> b!7986347 m!8360348))

(declare-fun m!8360548 () Bool)

(assert (=> b!7986347 m!8360548))

(assert (=> d!2383792 d!2383852))

(assert (=> d!2383792 d!2383808))

(assert (=> d!2383792 d!2383748))

(assert (=> b!7986125 d!2383744))

(assert (=> b!7986125 d!2383792))

(declare-fun b!7986349 () Bool)

(declare-fun e!4706917 () List!74780)

(assert (=> b!7986349 (= e!4706917 (Cons!74656 (h!81104 testedP!447) (++!18413 (t!390523 testedP!447) (Cons!74656 lt!2711830 Nil!74656))))))

(declare-fun b!7986348 () Bool)

(assert (=> b!7986348 (= e!4706917 (Cons!74656 lt!2711830 Nil!74656))))

(declare-fun d!2383854 () Bool)

(declare-fun e!4706916 () Bool)

(assert (=> d!2383854 e!4706916))

(declare-fun res!3161361 () Bool)

(assert (=> d!2383854 (=> (not res!3161361) (not e!4706916))))

(declare-fun lt!2711889 () List!74780)

(assert (=> d!2383854 (= res!3161361 (= (content!15870 lt!2711889) ((_ map or) (content!15870 testedP!447) (content!15870 (Cons!74656 lt!2711830 Nil!74656)))))))

(assert (=> d!2383854 (= lt!2711889 e!4706917)))

(declare-fun c!1466647 () Bool)

(assert (=> d!2383854 (= c!1466647 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383854 (= (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)) lt!2711889)))

(declare-fun b!7986350 () Bool)

(declare-fun res!3161360 () Bool)

(assert (=> b!7986350 (=> (not res!3161360) (not e!4706916))))

(assert (=> b!7986350 (= res!3161360 (= (size!43487 lt!2711889) (+ (size!43487 testedP!447) (size!43487 (Cons!74656 lt!2711830 Nil!74656)))))))

(declare-fun b!7986351 () Bool)

(assert (=> b!7986351 (= e!4706916 (or (not (= (Cons!74656 lt!2711830 Nil!74656) Nil!74656)) (= lt!2711889 testedP!447)))))

(assert (= (and d!2383854 c!1466647) b!7986348))

(assert (= (and d!2383854 (not c!1466647)) b!7986349))

(assert (= (and d!2383854 res!3161361) b!7986350))

(assert (= (and b!7986350 res!3161360) b!7986351))

(declare-fun m!8360550 () Bool)

(assert (=> b!7986349 m!8360550))

(declare-fun m!8360552 () Bool)

(assert (=> d!2383854 m!8360552))

(assert (=> d!2383854 m!8360378))

(declare-fun m!8360554 () Bool)

(assert (=> d!2383854 m!8360554))

(declare-fun m!8360556 () Bool)

(assert (=> b!7986350 m!8360556))

(assert (=> b!7986350 m!8360150))

(declare-fun m!8360558 () Bool)

(assert (=> b!7986350 m!8360558))

(assert (=> b!7986125 d!2383854))

(assert (=> b!7986125 d!2383850))

(assert (=> b!7986125 d!2383852))

(assert (=> b!7986125 d!2383748))

(assert (=> b!7986125 d!2383790))

(assert (=> b!7986125 d!2383798))

(declare-fun b!7986353 () Bool)

(declare-fun e!4706919 () List!74780)

(assert (=> b!7986353 (= e!4706919 (Cons!74656 (h!81104 testedP!447) (++!18413 (t!390523 testedP!447) (Cons!74656 (head!16297 lt!2711604) Nil!74656))))))

(declare-fun b!7986352 () Bool)

(assert (=> b!7986352 (= e!4706919 (Cons!74656 (head!16297 lt!2711604) Nil!74656))))

(declare-fun d!2383856 () Bool)

(declare-fun e!4706918 () Bool)

(assert (=> d!2383856 e!4706918))

(declare-fun res!3161363 () Bool)

(assert (=> d!2383856 (=> (not res!3161363) (not e!4706918))))

(declare-fun lt!2711890 () List!74780)

(assert (=> d!2383856 (= res!3161363 (= (content!15870 lt!2711890) ((_ map or) (content!15870 testedP!447) (content!15870 (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))))

(assert (=> d!2383856 (= lt!2711890 e!4706919)))

(declare-fun c!1466648 () Bool)

(assert (=> d!2383856 (= c!1466648 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383856 (= (++!18413 testedP!447 (Cons!74656 (head!16297 lt!2711604) Nil!74656)) lt!2711890)))

(declare-fun b!7986354 () Bool)

(declare-fun res!3161362 () Bool)

(assert (=> b!7986354 (=> (not res!3161362) (not e!4706918))))

(assert (=> b!7986354 (= res!3161362 (= (size!43487 lt!2711890) (+ (size!43487 testedP!447) (size!43487 (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))))

(declare-fun b!7986355 () Bool)

(assert (=> b!7986355 (= e!4706918 (or (not (= (Cons!74656 (head!16297 lt!2711604) Nil!74656) Nil!74656)) (= lt!2711890 testedP!447)))))

(assert (= (and d!2383856 c!1466648) b!7986352))

(assert (= (and d!2383856 (not c!1466648)) b!7986353))

(assert (= (and d!2383856 res!3161363) b!7986354))

(assert (= (and b!7986354 res!3161362) b!7986355))

(declare-fun m!8360560 () Bool)

(assert (=> b!7986353 m!8360560))

(declare-fun m!8360562 () Bool)

(assert (=> d!2383856 m!8360562))

(assert (=> d!2383856 m!8360378))

(declare-fun m!8360564 () Bool)

(assert (=> d!2383856 m!8360564))

(declare-fun m!8360566 () Bool)

(assert (=> b!7986354 m!8360566))

(assert (=> b!7986354 m!8360150))

(declare-fun m!8360568 () Bool)

(assert (=> b!7986354 m!8360568))

(assert (=> b!7986125 d!2383856))

(assert (=> b!7986125 d!2383836))

(assert (=> b!7986125 d!2383846))

(declare-fun b!7986357 () Bool)

(declare-fun e!4706921 () List!74780)

(assert (=> b!7986357 (= e!4706921 (Cons!74656 (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) (++!18413 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) lt!2711808)))))

(declare-fun b!7986356 () Bool)

(assert (=> b!7986356 (= e!4706921 lt!2711808)))

(declare-fun d!2383858 () Bool)

(declare-fun e!4706920 () Bool)

(assert (=> d!2383858 e!4706920))

(declare-fun res!3161365 () Bool)

(assert (=> d!2383858 (=> (not res!3161365) (not e!4706920))))

(declare-fun lt!2711891 () List!74780)

(assert (=> d!2383858 (= res!3161365 (= (content!15870 lt!2711891) ((_ map or) (content!15870 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) (content!15870 lt!2711808))))))

(assert (=> d!2383858 (= lt!2711891 e!4706921)))

(declare-fun c!1466649 () Bool)

(assert (=> d!2383858 (= c!1466649 ((_ is Nil!74656) (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))))))

(assert (=> d!2383858 (= (++!18413 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)) lt!2711808) lt!2711891)))

(declare-fun b!7986358 () Bool)

(declare-fun res!3161364 () Bool)

(assert (=> b!7986358 (=> (not res!3161364) (not e!4706920))))

(assert (=> b!7986358 (= res!3161364 (= (size!43487 lt!2711891) (+ (size!43487 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) (size!43487 lt!2711808))))))

(declare-fun b!7986359 () Bool)

(assert (=> b!7986359 (= e!4706920 (or (not (= lt!2711808 Nil!74656)) (= lt!2711891 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)))))))

(assert (= (and d!2383858 c!1466649) b!7986356))

(assert (= (and d!2383858 (not c!1466649)) b!7986357))

(assert (= (and d!2383858 res!3161365) b!7986358))

(assert (= (and b!7986358 res!3161364) b!7986359))

(declare-fun m!8360570 () Bool)

(assert (=> b!7986357 m!8360570))

(declare-fun m!8360572 () Bool)

(assert (=> d!2383858 m!8360572))

(assert (=> d!2383858 m!8360346))

(declare-fun m!8360574 () Bool)

(assert (=> d!2383858 m!8360574))

(declare-fun m!8360576 () Bool)

(assert (=> d!2383858 m!8360576))

(declare-fun m!8360578 () Bool)

(assert (=> b!7986358 m!8360578))

(assert (=> b!7986358 m!8360346))

(declare-fun m!8360580 () Bool)

(assert (=> b!7986358 m!8360580))

(declare-fun m!8360582 () Bool)

(assert (=> b!7986358 m!8360582))

(assert (=> b!7986125 d!2383858))

(declare-fun d!2383860 () Bool)

(assert (=> d!2383860 (= (++!18413 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)) lt!2711808) input!7927)))

(declare-fun lt!2711894 () Unit!170492)

(declare-fun choose!60178 (List!74780 C!43440 List!74780 List!74780) Unit!170492)

(assert (=> d!2383860 (= lt!2711894 (choose!60178 testedP!447 lt!2711830 lt!2711808 input!7927))))

(assert (=> d!2383860 (= (++!18413 testedP!447 (Cons!74656 lt!2711830 lt!2711808)) input!7927)))

(assert (=> d!2383860 (= (lemmaMoveElementToOtherListKeepsConcatEq!3560 testedP!447 lt!2711830 lt!2711808 input!7927) lt!2711894)))

(declare-fun bs!1970320 () Bool)

(assert (= bs!1970320 d!2383860))

(assert (=> bs!1970320 m!8360346))

(assert (=> bs!1970320 m!8360346))

(assert (=> bs!1970320 m!8360356))

(declare-fun m!8360584 () Bool)

(assert (=> bs!1970320 m!8360584))

(declare-fun m!8360586 () Bool)

(assert (=> bs!1970320 m!8360586))

(assert (=> b!7986125 d!2383860))

(assert (=> b!7986125 d!2383788))

(declare-fun d!2383862 () Bool)

(assert (=> d!2383862 (= (head!16297 input!7927) (h!81104 input!7927))))

(assert (=> b!7986155 d!2383862))

(declare-fun c!1466654 () Bool)

(declare-fun call!741595 () Regex!21551)

(declare-fun c!1466650 () Bool)

(declare-fun c!1466652 () Bool)

(declare-fun bm!741588 () Bool)

(assert (=> bm!741588 (= call!741595 (derivativeStep!6571 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))) lt!2711601))))

(declare-fun e!4706923 () Regex!21551)

(declare-fun b!7986360 () Bool)

(declare-fun call!741596 () Regex!21551)

(declare-fun call!741594 () Regex!21551)

(assert (=> b!7986360 (= e!4706923 (Union!21551 (Concat!30550 call!741596 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) call!741594))))

(declare-fun d!2383864 () Bool)

(declare-fun lt!2711895 () Regex!21551)

(assert (=> d!2383864 (validRegex!11855 lt!2711895)))

(declare-fun e!4706922 () Regex!21551)

(assert (=> d!2383864 (= lt!2711895 e!4706922)))

(declare-fun c!1466653 () Bool)

(assert (=> d!2383864 (= c!1466653 (or ((_ is EmptyExpr!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) ((_ is EmptyLang!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> d!2383864 (validRegex!11855 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))

(assert (=> d!2383864 (= (derivativeStep!6571 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))) lt!2711601) lt!2711895)))

(declare-fun bm!741589 () Bool)

(declare-fun call!741593 () Regex!21551)

(assert (=> bm!741589 (= call!741593 call!741595)))

(declare-fun b!7986361 () Bool)

(assert (=> b!7986361 (= c!1466650 ((_ is Union!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun e!4706925 () Regex!21551)

(declare-fun e!4706924 () Regex!21551)

(assert (=> b!7986361 (= e!4706925 e!4706924)))

(declare-fun b!7986362 () Bool)

(assert (=> b!7986362 (= e!4706925 (ite (= lt!2711601 (c!1466508 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7986363 () Bool)

(declare-fun e!4706926 () Regex!21551)

(assert (=> b!7986363 (= e!4706924 e!4706926)))

(assert (=> b!7986363 (= c!1466652 ((_ is Star!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7986364 () Bool)

(assert (=> b!7986364 (= e!4706922 e!4706925)))

(declare-fun c!1466651 () Bool)

(assert (=> b!7986364 (= c!1466651 ((_ is ElementMatch!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7986365 () Bool)

(assert (=> b!7986365 (= c!1466654 (nullable!9644 (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> b!7986365 (= e!4706926 e!4706923)))

(declare-fun bm!741590 () Bool)

(assert (=> bm!741590 (= call!741596 (derivativeStep!6571 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) lt!2711601))))

(declare-fun b!7986366 () Bool)

(assert (=> b!7986366 (= e!4706923 (Union!21551 (Concat!30550 call!741594 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) EmptyLang!21551))))

(declare-fun bm!741591 () Bool)

(assert (=> bm!741591 (= call!741594 call!741593)))

(declare-fun b!7986367 () Bool)

(assert (=> b!7986367 (= e!4706926 (Concat!30550 call!741593 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7986368 () Bool)

(assert (=> b!7986368 (= e!4706924 (Union!21551 call!741596 call!741595))))

(declare-fun b!7986369 () Bool)

(assert (=> b!7986369 (= e!4706922 EmptyLang!21551)))

(assert (= (and d!2383864 c!1466653) b!7986369))

(assert (= (and d!2383864 (not c!1466653)) b!7986364))

(assert (= (and b!7986364 c!1466651) b!7986362))

(assert (= (and b!7986364 (not c!1466651)) b!7986361))

(assert (= (and b!7986361 c!1466650) b!7986368))

(assert (= (and b!7986361 (not c!1466650)) b!7986363))

(assert (= (and b!7986363 c!1466652) b!7986367))

(assert (= (and b!7986363 (not c!1466652)) b!7986365))

(assert (= (and b!7986365 c!1466654) b!7986360))

(assert (= (and b!7986365 (not c!1466654)) b!7986366))

(assert (= (or b!7986360 b!7986366) bm!741591))

(assert (= (or b!7986367 bm!741591) bm!741589))

(assert (= (or b!7986368 bm!741589) bm!741588))

(assert (= (or b!7986368 b!7986360) bm!741590))

(declare-fun m!8360588 () Bool)

(assert (=> bm!741588 m!8360588))

(declare-fun m!8360590 () Bool)

(assert (=> d!2383864 m!8360590))

(declare-fun m!8360592 () Bool)

(assert (=> d!2383864 m!8360592))

(declare-fun m!8360594 () Bool)

(assert (=> b!7986365 m!8360594))

(declare-fun m!8360596 () Bool)

(assert (=> bm!741590 m!8360596))

(assert (=> bm!741485 d!2383864))

(declare-fun d!2383866 () Bool)

(declare-fun lt!2711896 () Int)

(assert (=> d!2383866 (>= lt!2711896 0)))

(declare-fun e!4706927 () Int)

(assert (=> d!2383866 (= lt!2711896 e!4706927)))

(declare-fun c!1466655 () Bool)

(assert (=> d!2383866 (= c!1466655 ((_ is Nil!74656) lt!2711840))))

(assert (=> d!2383866 (= (size!43487 lt!2711840) lt!2711896)))

(declare-fun b!7986370 () Bool)

(assert (=> b!7986370 (= e!4706927 0)))

(declare-fun b!7986371 () Bool)

(assert (=> b!7986371 (= e!4706927 (+ 1 (size!43487 (t!390523 lt!2711840))))))

(assert (= (and d!2383866 c!1466655) b!7986370))

(assert (= (and d!2383866 (not c!1466655)) b!7986371))

(declare-fun m!8360598 () Bool)

(assert (=> b!7986371 m!8360598))

(assert (=> b!7986140 d!2383866))

(assert (=> b!7986140 d!2383788))

(declare-fun d!2383868 () Bool)

(declare-fun lt!2711897 () Int)

(assert (=> d!2383868 (>= lt!2711897 0)))

(declare-fun e!4706928 () Int)

(assert (=> d!2383868 (= lt!2711897 e!4706928)))

(declare-fun c!1466656 () Bool)

(assert (=> d!2383868 (= c!1466656 ((_ is Nil!74656) (Cons!74656 lt!2711601 Nil!74656)))))

(assert (=> d!2383868 (= (size!43487 (Cons!74656 lt!2711601 Nil!74656)) lt!2711897)))

(declare-fun b!7986372 () Bool)

(assert (=> b!7986372 (= e!4706928 0)))

(declare-fun b!7986373 () Bool)

(assert (=> b!7986373 (= e!4706928 (+ 1 (size!43487 (t!390523 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (= (and d!2383868 c!1466656) b!7986372))

(assert (= (and d!2383868 (not c!1466656)) b!7986373))

(declare-fun m!8360600 () Bool)

(assert (=> b!7986373 m!8360600))

(assert (=> b!7986140 d!2383868))

(assert (=> bm!741541 d!2383798))

(declare-fun b!7986374 () Bool)

(declare-fun res!3161369 () Bool)

(declare-fun e!4706932 () Bool)

(assert (=> b!7986374 (=> (not res!3161369) (not e!4706932))))

(declare-fun call!741597 () Bool)

(assert (=> b!7986374 (= res!3161369 call!741597)))

(declare-fun e!4706934 () Bool)

(assert (=> b!7986374 (= e!4706934 e!4706932)))

(declare-fun bm!741592 () Bool)

(declare-fun call!741599 () Bool)

(declare-fun c!1466657 () Bool)

(assert (=> bm!741592 (= call!741599 (validRegex!11855 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))))))

(declare-fun b!7986375 () Bool)

(declare-fun e!4706935 () Bool)

(declare-fun e!4706929 () Bool)

(assert (=> b!7986375 (= e!4706935 e!4706929)))

(declare-fun res!3161370 () Bool)

(assert (=> b!7986375 (=> (not res!3161370) (not e!4706929))))

(assert (=> b!7986375 (= res!3161370 call!741597)))

(declare-fun bm!741593 () Bool)

(declare-fun call!741598 () Bool)

(assert (=> bm!741593 (= call!741597 call!741598)))

(declare-fun d!2383870 () Bool)

(declare-fun res!3161367 () Bool)

(declare-fun e!4706933 () Bool)

(assert (=> d!2383870 (=> res!3161367 e!4706933)))

(assert (=> d!2383870 (= res!3161367 ((_ is ElementMatch!21551) lt!2711619))))

(assert (=> d!2383870 (= (validRegex!11855 lt!2711619) e!4706933)))

(declare-fun b!7986376 () Bool)

(assert (=> b!7986376 (= e!4706932 call!741599)))

(declare-fun b!7986377 () Bool)

(declare-fun e!4706930 () Bool)

(assert (=> b!7986377 (= e!4706933 e!4706930)))

(declare-fun c!1466658 () Bool)

(assert (=> b!7986377 (= c!1466658 ((_ is Star!21551) lt!2711619))))

(declare-fun bm!741594 () Bool)

(assert (=> bm!741594 (= call!741598 (validRegex!11855 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))))))

(declare-fun b!7986378 () Bool)

(assert (=> b!7986378 (= e!4706930 e!4706934)))

(assert (=> b!7986378 (= c!1466657 ((_ is Union!21551) lt!2711619))))

(declare-fun b!7986379 () Bool)

(declare-fun e!4706931 () Bool)

(assert (=> b!7986379 (= e!4706930 e!4706931)))

(declare-fun res!3161366 () Bool)

(assert (=> b!7986379 (= res!3161366 (not (nullable!9644 (reg!21880 lt!2711619))))))

(assert (=> b!7986379 (=> (not res!3161366) (not e!4706931))))

(declare-fun b!7986380 () Bool)

(assert (=> b!7986380 (= e!4706929 call!741599)))

(declare-fun b!7986381 () Bool)

(assert (=> b!7986381 (= e!4706931 call!741598)))

(declare-fun b!7986382 () Bool)

(declare-fun res!3161368 () Bool)

(assert (=> b!7986382 (=> res!3161368 e!4706935)))

(assert (=> b!7986382 (= res!3161368 (not ((_ is Concat!30550) lt!2711619)))))

(assert (=> b!7986382 (= e!4706934 e!4706935)))

(assert (= (and d!2383870 (not res!3161367)) b!7986377))

(assert (= (and b!7986377 c!1466658) b!7986379))

(assert (= (and b!7986377 (not c!1466658)) b!7986378))

(assert (= (and b!7986379 res!3161366) b!7986381))

(assert (= (and b!7986378 c!1466657) b!7986374))

(assert (= (and b!7986378 (not c!1466657)) b!7986382))

(assert (= (and b!7986374 res!3161369) b!7986376))

(assert (= (and b!7986382 (not res!3161368)) b!7986375))

(assert (= (and b!7986375 res!3161370) b!7986380))

(assert (= (or b!7986376 b!7986380) bm!741592))

(assert (= (or b!7986374 b!7986375) bm!741593))

(assert (= (or b!7986381 bm!741593) bm!741594))

(declare-fun m!8360602 () Bool)

(assert (=> bm!741592 m!8360602))

(declare-fun m!8360604 () Bool)

(assert (=> bm!741594 m!8360604))

(declare-fun m!8360606 () Bool)

(assert (=> b!7986379 m!8360606))

(assert (=> d!2383732 d!2383870))

(declare-fun b!7986383 () Bool)

(declare-fun res!3161374 () Bool)

(declare-fun e!4706939 () Bool)

(assert (=> b!7986383 (=> (not res!3161374) (not e!4706939))))

(declare-fun call!741600 () Bool)

(assert (=> b!7986383 (= res!3161374 call!741600)))

(declare-fun e!4706941 () Bool)

(assert (=> b!7986383 (= e!4706941 e!4706939)))

(declare-fun bm!741595 () Bool)

(declare-fun call!741602 () Bool)

(declare-fun c!1466659 () Bool)

(assert (=> bm!741595 (= call!741602 (validRegex!11855 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))))))

(declare-fun b!7986384 () Bool)

(declare-fun e!4706942 () Bool)

(declare-fun e!4706936 () Bool)

(assert (=> b!7986384 (= e!4706942 e!4706936)))

(declare-fun res!3161375 () Bool)

(assert (=> b!7986384 (=> (not res!3161375) (not e!4706936))))

(assert (=> b!7986384 (= res!3161375 call!741600)))

(declare-fun bm!741596 () Bool)

(declare-fun call!741601 () Bool)

(assert (=> bm!741596 (= call!741600 call!741601)))

(declare-fun d!2383872 () Bool)

(declare-fun res!3161372 () Bool)

(declare-fun e!4706940 () Bool)

(assert (=> d!2383872 (=> res!3161372 e!4706940)))

(assert (=> d!2383872 (= res!3161372 ((_ is ElementMatch!21551) r!24602))))

(assert (=> d!2383872 (= (validRegex!11855 r!24602) e!4706940)))

(declare-fun b!7986385 () Bool)

(assert (=> b!7986385 (= e!4706939 call!741602)))

(declare-fun b!7986386 () Bool)

(declare-fun e!4706937 () Bool)

(assert (=> b!7986386 (= e!4706940 e!4706937)))

(declare-fun c!1466660 () Bool)

(assert (=> b!7986386 (= c!1466660 ((_ is Star!21551) r!24602))))

(declare-fun bm!741597 () Bool)

(assert (=> bm!741597 (= call!741601 (validRegex!11855 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(declare-fun b!7986387 () Bool)

(assert (=> b!7986387 (= e!4706937 e!4706941)))

(assert (=> b!7986387 (= c!1466659 ((_ is Union!21551) r!24602))))

(declare-fun b!7986388 () Bool)

(declare-fun e!4706938 () Bool)

(assert (=> b!7986388 (= e!4706937 e!4706938)))

(declare-fun res!3161371 () Bool)

(assert (=> b!7986388 (= res!3161371 (not (nullable!9644 (reg!21880 r!24602))))))

(assert (=> b!7986388 (=> (not res!3161371) (not e!4706938))))

(declare-fun b!7986389 () Bool)

(assert (=> b!7986389 (= e!4706936 call!741602)))

(declare-fun b!7986390 () Bool)

(assert (=> b!7986390 (= e!4706938 call!741601)))

(declare-fun b!7986391 () Bool)

(declare-fun res!3161373 () Bool)

(assert (=> b!7986391 (=> res!3161373 e!4706942)))

(assert (=> b!7986391 (= res!3161373 (not ((_ is Concat!30550) r!24602)))))

(assert (=> b!7986391 (= e!4706941 e!4706942)))

(assert (= (and d!2383872 (not res!3161372)) b!7986386))

(assert (= (and b!7986386 c!1466660) b!7986388))

(assert (= (and b!7986386 (not c!1466660)) b!7986387))

(assert (= (and b!7986388 res!3161371) b!7986390))

(assert (= (and b!7986387 c!1466659) b!7986383))

(assert (= (and b!7986387 (not c!1466659)) b!7986391))

(assert (= (and b!7986383 res!3161374) b!7986385))

(assert (= (and b!7986391 (not res!3161373)) b!7986384))

(assert (= (and b!7986384 res!3161375) b!7986389))

(assert (= (or b!7986385 b!7986389) bm!741595))

(assert (= (or b!7986383 b!7986384) bm!741596))

(assert (= (or b!7986390 bm!741596) bm!741597))

(declare-fun m!8360608 () Bool)

(assert (=> bm!741595 m!8360608))

(declare-fun m!8360610 () Bool)

(assert (=> bm!741597 m!8360610))

(declare-fun m!8360612 () Bool)

(assert (=> b!7986388 m!8360612))

(assert (=> d!2383732 d!2383872))

(assert (=> d!2383740 d!2383794))

(assert (=> d!2383740 d!2383810))

(declare-fun d!2383874 () Bool)

(declare-fun lt!2711898 () Regex!21551)

(assert (=> d!2383874 (validRegex!11855 lt!2711898)))

(declare-fun e!4706943 () Regex!21551)

(assert (=> d!2383874 (= lt!2711898 e!4706943)))

(declare-fun c!1466661 () Bool)

(assert (=> d!2383874 (= c!1466661 ((_ is Cons!74656) (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656))))))

(assert (=> d!2383874 (validRegex!11855 baseR!116)))

(assert (=> d!2383874 (= (derivative!737 baseR!116 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656))) lt!2711898)))

(declare-fun b!7986392 () Bool)

(assert (=> b!7986392 (= e!4706943 (derivative!737 (derivativeStep!6571 baseR!116 (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))) (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))))))

(declare-fun b!7986393 () Bool)

(assert (=> b!7986393 (= e!4706943 baseR!116)))

(assert (= (and d!2383874 c!1466661) b!7986392))

(assert (= (and d!2383874 (not c!1466661)) b!7986393))

(declare-fun m!8360614 () Bool)

(assert (=> d!2383874 m!8360614))

(assert (=> d!2383874 m!8360154))

(declare-fun m!8360616 () Bool)

(assert (=> b!7986392 m!8360616))

(assert (=> b!7986392 m!8360616))

(declare-fun m!8360618 () Bool)

(assert (=> b!7986392 m!8360618))

(assert (=> d!2383740 d!2383874))

(declare-fun d!2383876 () Bool)

(assert (=> d!2383876 (= (derivative!737 baseR!116 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656))) (derivativeStep!6571 r!24602 lt!2711601))))

(assert (=> d!2383876 true))

(declare-fun _$109!84 () Unit!170492)

(assert (=> d!2383876 (= (choose!60169 baseR!116 r!24602 testedP!447 lt!2711601) _$109!84)))

(declare-fun bs!1970321 () Bool)

(assert (= bs!1970321 d!2383876))

(assert (=> bs!1970321 m!8360134))

(assert (=> bs!1970321 m!8360134))

(assert (=> bs!1970321 m!8360210))

(assert (=> bs!1970321 m!8360162))

(assert (=> d!2383740 d!2383876))

(assert (=> d!2383740 d!2383732))

(declare-fun b!7986395 () Bool)

(declare-fun e!4706945 () List!74780)

(assert (=> b!7986395 (= e!4706945 (Cons!74656 (h!81104 testedP!447) (++!18413 (t!390523 testedP!447) lt!2711627)))))

(declare-fun b!7986394 () Bool)

(assert (=> b!7986394 (= e!4706945 lt!2711627)))

(declare-fun d!2383878 () Bool)

(declare-fun e!4706944 () Bool)

(assert (=> d!2383878 e!4706944))

(declare-fun res!3161377 () Bool)

(assert (=> d!2383878 (=> (not res!3161377) (not e!4706944))))

(declare-fun lt!2711899 () List!74780)

(assert (=> d!2383878 (= res!3161377 (= (content!15870 lt!2711899) ((_ map or) (content!15870 testedP!447) (content!15870 lt!2711627))))))

(assert (=> d!2383878 (= lt!2711899 e!4706945)))

(declare-fun c!1466663 () Bool)

(assert (=> d!2383878 (= c!1466663 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383878 (= (++!18413 testedP!447 lt!2711627) lt!2711899)))

(declare-fun b!7986396 () Bool)

(declare-fun res!3161376 () Bool)

(assert (=> b!7986396 (=> (not res!3161376) (not e!4706944))))

(assert (=> b!7986396 (= res!3161376 (= (size!43487 lt!2711899) (+ (size!43487 testedP!447) (size!43487 lt!2711627))))))

(declare-fun b!7986397 () Bool)

(assert (=> b!7986397 (= e!4706944 (or (not (= lt!2711627 Nil!74656)) (= lt!2711899 testedP!447)))))

(assert (= (and d!2383878 c!1466663) b!7986394))

(assert (= (and d!2383878 (not c!1466663)) b!7986395))

(assert (= (and d!2383878 res!3161377) b!7986396))

(assert (= (and b!7986396 res!3161376) b!7986397))

(declare-fun m!8360620 () Bool)

(assert (=> b!7986395 m!8360620))

(declare-fun m!8360622 () Bool)

(assert (=> d!2383878 m!8360622))

(assert (=> d!2383878 m!8360378))

(declare-fun m!8360624 () Bool)

(assert (=> d!2383878 m!8360624))

(declare-fun m!8360626 () Bool)

(assert (=> b!7986396 m!8360626))

(assert (=> b!7986396 m!8360150))

(declare-fun m!8360628 () Bool)

(assert (=> b!7986396 m!8360628))

(assert (=> d!2383748 d!2383878))

(assert (=> d!2383748 d!2383744))

(assert (=> d!2383748 d!2383788))

(declare-fun call!741605 () Regex!21551)

(declare-fun c!1466664 () Bool)

(declare-fun bm!741598 () Bool)

(declare-fun c!1466666 () Bool)

(declare-fun c!1466668 () Bool)

(assert (=> bm!741598 (= call!741605 (derivativeStep!6571 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))) call!741550))))

(declare-fun call!741604 () Regex!21551)

(declare-fun e!4706947 () Regex!21551)

(declare-fun call!741606 () Regex!21551)

(declare-fun b!7986398 () Bool)

(assert (=> b!7986398 (= e!4706947 (Union!21551 (Concat!30550 call!741606 (regTwo!43614 r!24602)) call!741604))))

(declare-fun d!2383880 () Bool)

(declare-fun lt!2711900 () Regex!21551)

(assert (=> d!2383880 (validRegex!11855 lt!2711900)))

(declare-fun e!4706946 () Regex!21551)

(assert (=> d!2383880 (= lt!2711900 e!4706946)))

(declare-fun c!1466667 () Bool)

(assert (=> d!2383880 (= c!1466667 (or ((_ is EmptyExpr!21551) r!24602) ((_ is EmptyLang!21551) r!24602)))))

(assert (=> d!2383880 (validRegex!11855 r!24602)))

(assert (=> d!2383880 (= (derivativeStep!6571 r!24602 call!741550) lt!2711900)))

(declare-fun bm!741599 () Bool)

(declare-fun call!741603 () Regex!21551)

(assert (=> bm!741599 (= call!741603 call!741605)))

(declare-fun b!7986399 () Bool)

(assert (=> b!7986399 (= c!1466664 ((_ is Union!21551) r!24602))))

(declare-fun e!4706949 () Regex!21551)

(declare-fun e!4706948 () Regex!21551)

(assert (=> b!7986399 (= e!4706949 e!4706948)))

(declare-fun b!7986400 () Bool)

(assert (=> b!7986400 (= e!4706949 (ite (= call!741550 (c!1466508 r!24602)) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7986401 () Bool)

(declare-fun e!4706950 () Regex!21551)

(assert (=> b!7986401 (= e!4706948 e!4706950)))

(assert (=> b!7986401 (= c!1466666 ((_ is Star!21551) r!24602))))

(declare-fun b!7986402 () Bool)

(assert (=> b!7986402 (= e!4706946 e!4706949)))

(declare-fun c!1466665 () Bool)

(assert (=> b!7986402 (= c!1466665 ((_ is ElementMatch!21551) r!24602))))

(declare-fun b!7986403 () Bool)

(assert (=> b!7986403 (= c!1466668 (nullable!9644 (regOne!43614 r!24602)))))

(assert (=> b!7986403 (= e!4706950 e!4706947)))

(declare-fun bm!741600 () Bool)

(assert (=> bm!741600 (= call!741606 (derivativeStep!6571 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)) call!741550))))

(declare-fun b!7986404 () Bool)

(assert (=> b!7986404 (= e!4706947 (Union!21551 (Concat!30550 call!741604 (regTwo!43614 r!24602)) EmptyLang!21551))))

(declare-fun bm!741601 () Bool)

(assert (=> bm!741601 (= call!741604 call!741603)))

(declare-fun b!7986405 () Bool)

(assert (=> b!7986405 (= e!4706950 (Concat!30550 call!741603 r!24602))))

(declare-fun b!7986406 () Bool)

(assert (=> b!7986406 (= e!4706948 (Union!21551 call!741606 call!741605))))

(declare-fun b!7986407 () Bool)

(assert (=> b!7986407 (= e!4706946 EmptyLang!21551)))

(assert (= (and d!2383880 c!1466667) b!7986407))

(assert (= (and d!2383880 (not c!1466667)) b!7986402))

(assert (= (and b!7986402 c!1466665) b!7986400))

(assert (= (and b!7986402 (not c!1466665)) b!7986399))

(assert (= (and b!7986399 c!1466664) b!7986406))

(assert (= (and b!7986399 (not c!1466664)) b!7986401))

(assert (= (and b!7986401 c!1466666) b!7986405))

(assert (= (and b!7986401 (not c!1466666)) b!7986403))

(assert (= (and b!7986403 c!1466668) b!7986398))

(assert (= (and b!7986403 (not c!1466668)) b!7986404))

(assert (= (or b!7986398 b!7986404) bm!741601))

(assert (= (or b!7986405 bm!741601) bm!741599))

(assert (= (or b!7986406 bm!741599) bm!741598))

(assert (= (or b!7986406 b!7986398) bm!741600))

(declare-fun m!8360630 () Bool)

(assert (=> bm!741598 m!8360630))

(declare-fun m!8360632 () Bool)

(assert (=> d!2383880 m!8360632))

(assert (=> d!2383880 m!8360202))

(assert (=> b!7986403 m!8360204))

(declare-fun m!8360634 () Bool)

(assert (=> bm!741600 m!8360634))

(assert (=> bm!741548 d!2383880))

(assert (=> b!7986157 d!2383744))

(declare-fun d!2383882 () Bool)

(declare-fun lt!2711901 () Regex!21551)

(assert (=> d!2383882 (validRegex!11855 lt!2711901)))

(declare-fun e!4706951 () Regex!21551)

(assert (=> d!2383882 (= lt!2711901 e!4706951)))

(declare-fun c!1466669 () Bool)

(assert (=> d!2383882 (= c!1466669 ((_ is Cons!74656) (t!390523 testedP!447)))))

(assert (=> d!2383882 (validRegex!11855 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))

(assert (=> d!2383882 (= (derivative!737 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (t!390523 testedP!447)) lt!2711901)))

(declare-fun b!7986408 () Bool)

(assert (=> b!7986408 (= e!4706951 (derivative!737 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (h!81104 (t!390523 testedP!447))) (t!390523 (t!390523 testedP!447))))))

(declare-fun b!7986409 () Bool)

(assert (=> b!7986409 (= e!4706951 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))

(assert (= (and d!2383882 c!1466669) b!7986408))

(assert (= (and d!2383882 (not c!1466669)) b!7986409))

(declare-fun m!8360636 () Bool)

(assert (=> d!2383882 m!8360636))

(assert (=> d!2383882 m!8360214))

(declare-fun m!8360638 () Bool)

(assert (=> d!2383882 m!8360638))

(assert (=> b!7986408 m!8360214))

(declare-fun m!8360640 () Bool)

(assert (=> b!7986408 m!8360640))

(assert (=> b!7986408 m!8360640))

(declare-fun m!8360642 () Bool)

(assert (=> b!7986408 m!8360642))

(assert (=> b!7985904 d!2383882))

(declare-fun call!741609 () Regex!21551)

(declare-fun bm!741602 () Bool)

(declare-fun c!1466670 () Bool)

(declare-fun c!1466672 () Bool)

(declare-fun c!1466674 () Bool)

(assert (=> bm!741602 (= call!741609 (derivativeStep!6571 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))) (h!81104 testedP!447)))))

(declare-fun call!741610 () Regex!21551)

(declare-fun e!4706953 () Regex!21551)

(declare-fun b!7986410 () Bool)

(declare-fun call!741608 () Regex!21551)

(assert (=> b!7986410 (= e!4706953 (Union!21551 (Concat!30550 call!741610 (regTwo!43614 baseR!116)) call!741608))))

(declare-fun d!2383884 () Bool)

(declare-fun lt!2711902 () Regex!21551)

(assert (=> d!2383884 (validRegex!11855 lt!2711902)))

(declare-fun e!4706952 () Regex!21551)

(assert (=> d!2383884 (= lt!2711902 e!4706952)))

(declare-fun c!1466673 () Bool)

(assert (=> d!2383884 (= c!1466673 (or ((_ is EmptyExpr!21551) baseR!116) ((_ is EmptyLang!21551) baseR!116)))))

(assert (=> d!2383884 (validRegex!11855 baseR!116)))

(assert (=> d!2383884 (= (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) lt!2711902)))

(declare-fun bm!741603 () Bool)

(declare-fun call!741607 () Regex!21551)

(assert (=> bm!741603 (= call!741607 call!741609)))

(declare-fun b!7986411 () Bool)

(assert (=> b!7986411 (= c!1466670 ((_ is Union!21551) baseR!116))))

(declare-fun e!4706955 () Regex!21551)

(declare-fun e!4706954 () Regex!21551)

(assert (=> b!7986411 (= e!4706955 e!4706954)))

(declare-fun b!7986412 () Bool)

(assert (=> b!7986412 (= e!4706955 (ite (= (h!81104 testedP!447) (c!1466508 baseR!116)) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7986413 () Bool)

(declare-fun e!4706956 () Regex!21551)

(assert (=> b!7986413 (= e!4706954 e!4706956)))

(assert (=> b!7986413 (= c!1466672 ((_ is Star!21551) baseR!116))))

(declare-fun b!7986414 () Bool)

(assert (=> b!7986414 (= e!4706952 e!4706955)))

(declare-fun c!1466671 () Bool)

(assert (=> b!7986414 (= c!1466671 ((_ is ElementMatch!21551) baseR!116))))

(declare-fun b!7986415 () Bool)

(assert (=> b!7986415 (= c!1466674 (nullable!9644 (regOne!43614 baseR!116)))))

(assert (=> b!7986415 (= e!4706956 e!4706953)))

(declare-fun bm!741604 () Bool)

(assert (=> bm!741604 (= call!741610 (derivativeStep!6571 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)) (h!81104 testedP!447)))))

(declare-fun b!7986416 () Bool)

(assert (=> b!7986416 (= e!4706953 (Union!21551 (Concat!30550 call!741608 (regTwo!43614 baseR!116)) EmptyLang!21551))))

(declare-fun bm!741605 () Bool)

(assert (=> bm!741605 (= call!741608 call!741607)))

(declare-fun b!7986417 () Bool)

(assert (=> b!7986417 (= e!4706956 (Concat!30550 call!741607 baseR!116))))

(declare-fun b!7986418 () Bool)

(assert (=> b!7986418 (= e!4706954 (Union!21551 call!741610 call!741609))))

(declare-fun b!7986419 () Bool)

(assert (=> b!7986419 (= e!4706952 EmptyLang!21551)))

(assert (= (and d!2383884 c!1466673) b!7986419))

(assert (= (and d!2383884 (not c!1466673)) b!7986414))

(assert (= (and b!7986414 c!1466671) b!7986412))

(assert (= (and b!7986414 (not c!1466671)) b!7986411))

(assert (= (and b!7986411 c!1466670) b!7986418))

(assert (= (and b!7986411 (not c!1466670)) b!7986413))

(assert (= (and b!7986413 c!1466672) b!7986417))

(assert (= (and b!7986413 (not c!1466672)) b!7986415))

(assert (= (and b!7986415 c!1466674) b!7986410))

(assert (= (and b!7986415 (not c!1466674)) b!7986416))

(assert (= (or b!7986410 b!7986416) bm!741605))

(assert (= (or b!7986417 bm!741605) bm!741603))

(assert (= (or b!7986418 bm!741603) bm!741602))

(assert (= (or b!7986418 b!7986410) bm!741604))

(declare-fun m!8360644 () Bool)

(assert (=> bm!741602 m!8360644))

(declare-fun m!8360646 () Bool)

(assert (=> d!2383884 m!8360646))

(assert (=> d!2383884 m!8360154))

(assert (=> b!7986415 m!8360426))

(declare-fun m!8360648 () Bool)

(assert (=> bm!741604 m!8360648))

(assert (=> b!7985904 d!2383884))

(declare-fun b!7986421 () Bool)

(declare-fun e!4706958 () List!74780)

(assert (=> b!7986421 (= e!4706958 (Cons!74656 (h!81104 (t!390523 testedP!447)) (++!18413 (t!390523 (t!390523 testedP!447)) (Cons!74656 lt!2711601 Nil!74656))))))

(declare-fun b!7986420 () Bool)

(assert (=> b!7986420 (= e!4706958 (Cons!74656 lt!2711601 Nil!74656))))

(declare-fun d!2383886 () Bool)

(declare-fun e!4706957 () Bool)

(assert (=> d!2383886 e!4706957))

(declare-fun res!3161379 () Bool)

(assert (=> d!2383886 (=> (not res!3161379) (not e!4706957))))

(declare-fun lt!2711903 () List!74780)

(assert (=> d!2383886 (= res!3161379 (= (content!15870 lt!2711903) ((_ map or) (content!15870 (t!390523 testedP!447)) (content!15870 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (=> d!2383886 (= lt!2711903 e!4706958)))

(declare-fun c!1466675 () Bool)

(assert (=> d!2383886 (= c!1466675 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2383886 (= (++!18413 (t!390523 testedP!447) (Cons!74656 lt!2711601 Nil!74656)) lt!2711903)))

(declare-fun b!7986422 () Bool)

(declare-fun res!3161378 () Bool)

(assert (=> b!7986422 (=> (not res!3161378) (not e!4706957))))

(assert (=> b!7986422 (= res!3161378 (= (size!43487 lt!2711903) (+ (size!43487 (t!390523 testedP!447)) (size!43487 (Cons!74656 lt!2711601 Nil!74656)))))))

(declare-fun b!7986423 () Bool)

(assert (=> b!7986423 (= e!4706957 (or (not (= (Cons!74656 lt!2711601 Nil!74656) Nil!74656)) (= lt!2711903 (t!390523 testedP!447))))))

(assert (= (and d!2383886 c!1466675) b!7986420))

(assert (= (and d!2383886 (not c!1466675)) b!7986421))

(assert (= (and d!2383886 res!3161379) b!7986422))

(assert (= (and b!7986422 res!3161378) b!7986423))

(declare-fun m!8360650 () Bool)

(assert (=> b!7986421 m!8360650))

(declare-fun m!8360652 () Bool)

(assert (=> d!2383886 m!8360652))

(declare-fun m!8360654 () Bool)

(assert (=> d!2383886 m!8360654))

(assert (=> d!2383886 m!8360380))

(declare-fun m!8360656 () Bool)

(assert (=> b!7986422 m!8360656))

(assert (=> b!7986422 m!8360368))

(assert (=> b!7986422 m!8360384))

(assert (=> b!7986139 d!2383886))

(declare-fun d!2383888 () Bool)

(assert (=> d!2383888 (= (nullable!9644 (regOne!43614 r!24602)) (nullableFct!3814 (regOne!43614 r!24602)))))

(declare-fun bs!1970322 () Bool)

(assert (= bs!1970322 d!2383888))

(declare-fun m!8360658 () Bool)

(assert (=> bs!1970322 m!8360658))

(assert (=> b!7985899 d!2383888))

(declare-fun d!2383890 () Bool)

(assert (=> d!2383890 (= input!7927 testedP!447)))

(assert (=> d!2383890 true))

(declare-fun _$60!1370 () Unit!170492)

(assert (=> d!2383890 (= (choose!60177 input!7927 testedP!447 input!7927) _$60!1370)))

(assert (=> d!2383806 d!2383890))

(assert (=> d!2383806 d!2383804))

(declare-fun d!2383892 () Bool)

(assert (=> d!2383892 (= (isEmpty!42959 (_1!38683 lt!2711815)) ((_ is Nil!74656) (_1!38683 lt!2711815)))))

(assert (=> b!7986115 d!2383892))

(assert (=> bm!741542 d!2383804))

(declare-fun d!2383894 () Bool)

(declare-fun lt!2711904 () Int)

(assert (=> d!2383894 (>= lt!2711904 0)))

(declare-fun e!4706959 () Int)

(assert (=> d!2383894 (= lt!2711904 e!4706959)))

(declare-fun c!1466676 () Bool)

(assert (=> d!2383894 (= c!1466676 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2383894 (= (size!43487 (t!390523 testedP!447)) lt!2711904)))

(declare-fun b!7986424 () Bool)

(assert (=> b!7986424 (= e!4706959 0)))

(declare-fun b!7986425 () Bool)

(assert (=> b!7986425 (= e!4706959 (+ 1 (size!43487 (t!390523 (t!390523 testedP!447)))))))

(assert (= (and d!2383894 c!1466676) b!7986424))

(assert (= (and d!2383894 (not c!1466676)) b!7986425))

(declare-fun m!8360660 () Bool)

(assert (=> b!7986425 m!8360660))

(assert (=> b!7986129 d!2383894))

(declare-fun b!7986427 () Bool)

(declare-fun e!4706961 () List!74780)

(assert (=> b!7986427 (= e!4706961 (Cons!74656 (h!81104 testedP!447) (++!18413 (t!390523 testedP!447) lt!2711604)))))

(declare-fun b!7986426 () Bool)

(assert (=> b!7986426 (= e!4706961 lt!2711604)))

(declare-fun d!2383896 () Bool)

(declare-fun e!4706960 () Bool)

(assert (=> d!2383896 e!4706960))

(declare-fun res!3161381 () Bool)

(assert (=> d!2383896 (=> (not res!3161381) (not e!4706960))))

(declare-fun lt!2711905 () List!74780)

(assert (=> d!2383896 (= res!3161381 (= (content!15870 lt!2711905) ((_ map or) (content!15870 testedP!447) (content!15870 lt!2711604))))))

(assert (=> d!2383896 (= lt!2711905 e!4706961)))

(declare-fun c!1466677 () Bool)

(assert (=> d!2383896 (= c!1466677 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383896 (= (++!18413 testedP!447 lt!2711604) lt!2711905)))

(declare-fun b!7986428 () Bool)

(declare-fun res!3161380 () Bool)

(assert (=> b!7986428 (=> (not res!3161380) (not e!4706960))))

(assert (=> b!7986428 (= res!3161380 (= (size!43487 lt!2711905) (+ (size!43487 testedP!447) (size!43487 lt!2711604))))))

(declare-fun b!7986429 () Bool)

(assert (=> b!7986429 (= e!4706960 (or (not (= lt!2711604 Nil!74656)) (= lt!2711905 testedP!447)))))

(assert (= (and d!2383896 c!1466677) b!7986426))

(assert (= (and d!2383896 (not c!1466677)) b!7986427))

(assert (= (and d!2383896 res!3161381) b!7986428))

(assert (= (and b!7986428 res!3161380) b!7986429))

(declare-fun m!8360662 () Bool)

(assert (=> b!7986427 m!8360662))

(declare-fun m!8360664 () Bool)

(assert (=> d!2383896 m!8360664))

(assert (=> d!2383896 m!8360378))

(declare-fun m!8360666 () Bool)

(assert (=> d!2383896 m!8360666))

(declare-fun m!8360668 () Bool)

(assert (=> b!7986428 m!8360668))

(assert (=> b!7986428 m!8360150))

(declare-fun m!8360670 () Bool)

(assert (=> b!7986428 m!8360670))

(assert (=> d!2383750 d!2383896))

(declare-fun d!2383898 () Bool)

(assert (=> d!2383898 (= lt!2711604 lt!2711820)))

(declare-fun lt!2711908 () Unit!170492)

(declare-fun choose!60180 (List!74780 List!74780 List!74780 List!74780 List!74780) Unit!170492)

(assert (=> d!2383898 (= lt!2711908 (choose!60180 testedP!447 lt!2711604 testedP!447 lt!2711820 input!7927))))

(assert (=> d!2383898 (isPrefix!6651 testedP!447 input!7927)))

(assert (=> d!2383898 (= (lemmaSamePrefixThenSameSuffix!3020 testedP!447 lt!2711604 testedP!447 lt!2711820 input!7927) lt!2711908)))

(declare-fun bs!1970323 () Bool)

(assert (= bs!1970323 d!2383898))

(declare-fun m!8360672 () Bool)

(assert (=> bs!1970323 m!8360672))

(assert (=> bs!1970323 m!8360172))

(assert (=> d!2383750 d!2383898))

(declare-fun d!2383900 () Bool)

(assert (=> d!2383900 (isPrefix!6651 testedP!447 (++!18413 testedP!447 lt!2711604))))

(declare-fun lt!2711911 () Unit!170492)

(declare-fun choose!60181 (List!74780 List!74780) Unit!170492)

(assert (=> d!2383900 (= lt!2711911 (choose!60181 testedP!447 lt!2711604))))

(assert (=> d!2383900 (= (lemmaConcatTwoListThenFirstIsPrefix!3882 testedP!447 lt!2711604) lt!2711911)))

(declare-fun bs!1970324 () Bool)

(assert (= bs!1970324 d!2383900))

(assert (=> bs!1970324 m!8360334))

(assert (=> bs!1970324 m!8360334))

(assert (=> bs!1970324 m!8360336))

(declare-fun m!8360674 () Bool)

(assert (=> bs!1970324 m!8360674))

(assert (=> d!2383750 d!2383900))

(assert (=> d!2383750 d!2383748))

(declare-fun b!7986431 () Bool)

(declare-fun res!3161383 () Bool)

(declare-fun e!4706964 () Bool)

(assert (=> b!7986431 (=> (not res!3161383) (not e!4706964))))

(assert (=> b!7986431 (= res!3161383 (= (head!16297 testedP!447) (head!16297 (++!18413 testedP!447 lt!2711604))))))

(declare-fun b!7986432 () Bool)

(assert (=> b!7986432 (= e!4706964 (isPrefix!6651 (tail!15824 testedP!447) (tail!15824 (++!18413 testedP!447 lt!2711604))))))

(declare-fun d!2383902 () Bool)

(declare-fun e!4706963 () Bool)

(assert (=> d!2383902 e!4706963))

(declare-fun res!3161384 () Bool)

(assert (=> d!2383902 (=> res!3161384 e!4706963)))

(declare-fun lt!2711912 () Bool)

(assert (=> d!2383902 (= res!3161384 (not lt!2711912))))

(declare-fun e!4706962 () Bool)

(assert (=> d!2383902 (= lt!2711912 e!4706962)))

(declare-fun res!3161382 () Bool)

(assert (=> d!2383902 (=> res!3161382 e!4706962)))

(assert (=> d!2383902 (= res!3161382 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2383902 (= (isPrefix!6651 testedP!447 (++!18413 testedP!447 lt!2711604)) lt!2711912)))

(declare-fun b!7986433 () Bool)

(assert (=> b!7986433 (= e!4706963 (>= (size!43487 (++!18413 testedP!447 lt!2711604)) (size!43487 testedP!447)))))

(declare-fun b!7986430 () Bool)

(assert (=> b!7986430 (= e!4706962 e!4706964)))

(declare-fun res!3161385 () Bool)

(assert (=> b!7986430 (=> (not res!3161385) (not e!4706964))))

(assert (=> b!7986430 (= res!3161385 (not ((_ is Nil!74656) (++!18413 testedP!447 lt!2711604))))))

(assert (= (and d!2383902 (not res!3161382)) b!7986430))

(assert (= (and b!7986430 res!3161385) b!7986431))

(assert (= (and b!7986431 res!3161383) b!7986432))

(assert (= (and d!2383902 (not res!3161384)) b!7986433))

(assert (=> b!7986431 m!8360402))

(assert (=> b!7986431 m!8360334))

(declare-fun m!8360676 () Bool)

(assert (=> b!7986431 m!8360676))

(assert (=> b!7986432 m!8360404))

(assert (=> b!7986432 m!8360334))

(declare-fun m!8360678 () Bool)

(assert (=> b!7986432 m!8360678))

(assert (=> b!7986432 m!8360404))

(assert (=> b!7986432 m!8360678))

(declare-fun m!8360680 () Bool)

(assert (=> b!7986432 m!8360680))

(assert (=> b!7986433 m!8360334))

(declare-fun m!8360682 () Bool)

(assert (=> b!7986433 m!8360682))

(assert (=> b!7986433 m!8360150))

(assert (=> d!2383750 d!2383902))

(assert (=> d!2383750 d!2383872))

(declare-fun b!7986435 () Bool)

(declare-fun e!4706966 () List!74780)

(assert (=> b!7986435 (= e!4706966 (Cons!74656 (h!81104 (_1!38683 lt!2711815)) (++!18413 (t!390523 (_1!38683 lt!2711815)) (_2!38683 lt!2711815))))))

(declare-fun b!7986434 () Bool)

(assert (=> b!7986434 (= e!4706966 (_2!38683 lt!2711815))))

(declare-fun d!2383904 () Bool)

(declare-fun e!4706965 () Bool)

(assert (=> d!2383904 e!4706965))

(declare-fun res!3161387 () Bool)

(assert (=> d!2383904 (=> (not res!3161387) (not e!4706965))))

(declare-fun lt!2711913 () List!74780)

(assert (=> d!2383904 (= res!3161387 (= (content!15870 lt!2711913) ((_ map or) (content!15870 (_1!38683 lt!2711815)) (content!15870 (_2!38683 lt!2711815)))))))

(assert (=> d!2383904 (= lt!2711913 e!4706966)))

(declare-fun c!1466678 () Bool)

(assert (=> d!2383904 (= c!1466678 ((_ is Nil!74656) (_1!38683 lt!2711815)))))

(assert (=> d!2383904 (= (++!18413 (_1!38683 lt!2711815) (_2!38683 lt!2711815)) lt!2711913)))

(declare-fun b!7986436 () Bool)

(declare-fun res!3161386 () Bool)

(assert (=> b!7986436 (=> (not res!3161386) (not e!4706965))))

(assert (=> b!7986436 (= res!3161386 (= (size!43487 lt!2711913) (+ (size!43487 (_1!38683 lt!2711815)) (size!43487 (_2!38683 lt!2711815)))))))

(declare-fun b!7986437 () Bool)

(assert (=> b!7986437 (= e!4706965 (or (not (= (_2!38683 lt!2711815) Nil!74656)) (= lt!2711913 (_1!38683 lt!2711815))))))

(assert (= (and d!2383904 c!1466678) b!7986434))

(assert (= (and d!2383904 (not c!1466678)) b!7986435))

(assert (= (and d!2383904 res!3161387) b!7986436))

(assert (= (and b!7986436 res!3161386) b!7986437))

(declare-fun m!8360684 () Bool)

(assert (=> b!7986435 m!8360684))

(declare-fun m!8360686 () Bool)

(assert (=> d!2383904 m!8360686))

(declare-fun m!8360688 () Bool)

(assert (=> d!2383904 m!8360688))

(declare-fun m!8360690 () Bool)

(assert (=> d!2383904 m!8360690))

(declare-fun m!8360692 () Bool)

(assert (=> b!7986436 m!8360692))

(assert (=> b!7986436 m!8360344))

(declare-fun m!8360694 () Bool)

(assert (=> b!7986436 m!8360694))

(assert (=> d!2383750 d!2383904))

(declare-fun d!2383906 () Bool)

(declare-fun lostCauseFct!583 (Regex!21551) Bool)

(assert (=> d!2383906 (= (lostCause!2004 r!24602) (lostCauseFct!583 r!24602))))

(declare-fun bs!1970325 () Bool)

(assert (= bs!1970325 d!2383906))

(declare-fun m!8360696 () Bool)

(assert (=> bs!1970325 m!8360696))

(assert (=> d!2383750 d!2383906))

(declare-fun b!7986439 () Bool)

(declare-fun res!3161389 () Bool)

(declare-fun e!4706969 () Bool)

(assert (=> b!7986439 (=> (not res!3161389) (not e!4706969))))

(assert (=> b!7986439 (= res!3161389 (= (head!16297 (tail!15824 lt!2711603)) (head!16297 (tail!15824 input!7927))))))

(declare-fun b!7986440 () Bool)

(assert (=> b!7986440 (= e!4706969 (isPrefix!6651 (tail!15824 (tail!15824 lt!2711603)) (tail!15824 (tail!15824 input!7927))))))

(declare-fun d!2383908 () Bool)

(declare-fun e!4706968 () Bool)

(assert (=> d!2383908 e!4706968))

(declare-fun res!3161390 () Bool)

(assert (=> d!2383908 (=> res!3161390 e!4706968)))

(declare-fun lt!2711914 () Bool)

(assert (=> d!2383908 (= res!3161390 (not lt!2711914))))

(declare-fun e!4706967 () Bool)

(assert (=> d!2383908 (= lt!2711914 e!4706967)))

(declare-fun res!3161388 () Bool)

(assert (=> d!2383908 (=> res!3161388 e!4706967)))

(assert (=> d!2383908 (= res!3161388 ((_ is Nil!74656) (tail!15824 lt!2711603)))))

(assert (=> d!2383908 (= (isPrefix!6651 (tail!15824 lt!2711603) (tail!15824 input!7927)) lt!2711914)))

(declare-fun b!7986441 () Bool)

(assert (=> b!7986441 (= e!4706968 (>= (size!43487 (tail!15824 input!7927)) (size!43487 (tail!15824 lt!2711603))))))

(declare-fun b!7986438 () Bool)

(assert (=> b!7986438 (= e!4706967 e!4706969)))

(declare-fun res!3161391 () Bool)

(assert (=> b!7986438 (=> (not res!3161391) (not e!4706969))))

(assert (=> b!7986438 (= res!3161391 (not ((_ is Nil!74656) (tail!15824 input!7927))))))

(assert (= (and d!2383908 (not res!3161388)) b!7986438))

(assert (= (and b!7986438 res!3161391) b!7986439))

(assert (= (and b!7986439 res!3161389) b!7986440))

(assert (= (and d!2383908 (not res!3161390)) b!7986441))

(assert (=> b!7986439 m!8360392))

(declare-fun m!8360698 () Bool)

(assert (=> b!7986439 m!8360698))

(assert (=> b!7986439 m!8360222))

(assert (=> b!7986439 m!8360518))

(assert (=> b!7986440 m!8360392))

(declare-fun m!8360700 () Bool)

(assert (=> b!7986440 m!8360700))

(assert (=> b!7986440 m!8360222))

(assert (=> b!7986440 m!8360520))

(assert (=> b!7986440 m!8360700))

(assert (=> b!7986440 m!8360520))

(declare-fun m!8360702 () Bool)

(assert (=> b!7986440 m!8360702))

(assert (=> b!7986441 m!8360222))

(assert (=> b!7986441 m!8360524))

(assert (=> b!7986441 m!8360392))

(declare-fun m!8360704 () Bool)

(assert (=> b!7986441 m!8360704))

(assert (=> b!7986152 d!2383908))

(declare-fun d!2383910 () Bool)

(assert (=> d!2383910 (= (tail!15824 lt!2711603) (t!390523 lt!2711603))))

(assert (=> b!7986152 d!2383910))

(assert (=> b!7986152 d!2383840))

(assert (=> d!2383790 d!2383788))

(assert (=> d!2383790 d!2383744))

(declare-fun d!2383912 () Bool)

(assert (=> d!2383912 (<= (size!43487 testedP!447) (size!43487 input!7927))))

(assert (=> d!2383912 true))

(declare-fun _$64!956 () Unit!170492)

(assert (=> d!2383912 (= (choose!60172 testedP!447 input!7927) _$64!956)))

(declare-fun bs!1970326 () Bool)

(assert (= bs!1970326 d!2383912))

(assert (=> bs!1970326 m!8360150))

(assert (=> bs!1970326 m!8360144))

(assert (=> d!2383790 d!2383912))

(assert (=> d!2383790 d!2383808))

(declare-fun d!2383914 () Bool)

(assert (=> d!2383914 (= (isEmpty!42959 (_1!38683 lt!2711818)) ((_ is Nil!74656) (_1!38683 lt!2711818)))))

(assert (=> b!7986118 d!2383914))

(declare-fun d!2383916 () Bool)

(assert (=> d!2383916 (= (head!16297 testedP!447) (h!81104 testedP!447))))

(assert (=> b!7986159 d!2383916))

(assert (=> b!7986159 d!2383862))

(assert (=> b!7986153 d!2383744))

(assert (=> b!7986153 d!2383728))

(declare-fun d!2383918 () Bool)

(assert (=> d!2383918 (= (head!16297 lt!2711603) (h!81104 lt!2711603))))

(assert (=> b!7986151 d!2383918))

(assert (=> b!7986151 d!2383862))

(declare-fun c!1466683 () Bool)

(declare-fun call!741613 () Regex!21551)

(declare-fun c!1466681 () Bool)

(declare-fun bm!741606 () Bool)

(declare-fun c!1466679 () Bool)

(assert (=> bm!741606 (= call!741613 (derivativeStep!6571 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))) lt!2711601))))

(declare-fun call!741612 () Regex!21551)

(declare-fun call!741614 () Regex!21551)

(declare-fun e!4706971 () Regex!21551)

(declare-fun b!7986442 () Bool)

(assert (=> b!7986442 (= e!4706971 (Union!21551 (Concat!30550 call!741614 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))) call!741612))))

(declare-fun d!2383920 () Bool)

(declare-fun lt!2711915 () Regex!21551)

(assert (=> d!2383920 (validRegex!11855 lt!2711915)))

(declare-fun e!4706970 () Regex!21551)

(assert (=> d!2383920 (= lt!2711915 e!4706970)))

(declare-fun c!1466682 () Bool)

(assert (=> d!2383920 (= c!1466682 (or ((_ is EmptyExpr!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) ((_ is EmptyLang!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(assert (=> d!2383920 (validRegex!11855 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))

(assert (=> d!2383920 (= (derivativeStep!6571 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)) lt!2711601) lt!2711915)))

(declare-fun bm!741607 () Bool)

(declare-fun call!741611 () Regex!21551)

(assert (=> bm!741607 (= call!741611 call!741613)))

(declare-fun b!7986443 () Bool)

(assert (=> b!7986443 (= c!1466679 ((_ is Union!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun e!4706973 () Regex!21551)

(declare-fun e!4706972 () Regex!21551)

(assert (=> b!7986443 (= e!4706973 e!4706972)))

(declare-fun b!7986444 () Bool)

(assert (=> b!7986444 (= e!4706973 (ite (= lt!2711601 (c!1466508 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7986445 () Bool)

(declare-fun e!4706974 () Regex!21551)

(assert (=> b!7986445 (= e!4706972 e!4706974)))

(assert (=> b!7986445 (= c!1466681 ((_ is Star!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7986446 () Bool)

(assert (=> b!7986446 (= e!4706970 e!4706973)))

(declare-fun c!1466680 () Bool)

(assert (=> b!7986446 (= c!1466680 ((_ is ElementMatch!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7986447 () Bool)

(assert (=> b!7986447 (= c!1466683 (nullable!9644 (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(assert (=> b!7986447 (= e!4706974 e!4706971)))

(declare-fun bm!741608 () Bool)

(assert (=> bm!741608 (= call!741614 (derivativeStep!6571 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))) lt!2711601))))

(declare-fun b!7986448 () Bool)

(assert (=> b!7986448 (= e!4706971 (Union!21551 (Concat!30550 call!741612 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))) EmptyLang!21551))))

(declare-fun bm!741609 () Bool)

(assert (=> bm!741609 (= call!741612 call!741611)))

(declare-fun b!7986449 () Bool)

(assert (=> b!7986449 (= e!4706974 (Concat!30550 call!741611 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7986450 () Bool)

(assert (=> b!7986450 (= e!4706972 (Union!21551 call!741614 call!741613))))

(declare-fun b!7986451 () Bool)

(assert (=> b!7986451 (= e!4706970 EmptyLang!21551)))

(assert (= (and d!2383920 c!1466682) b!7986451))

(assert (= (and d!2383920 (not c!1466682)) b!7986446))

(assert (= (and b!7986446 c!1466680) b!7986444))

(assert (= (and b!7986446 (not c!1466680)) b!7986443))

(assert (= (and b!7986443 c!1466679) b!7986450))

(assert (= (and b!7986443 (not c!1466679)) b!7986445))

(assert (= (and b!7986445 c!1466681) b!7986449))

(assert (= (and b!7986445 (not c!1466681)) b!7986447))

(assert (= (and b!7986447 c!1466683) b!7986442))

(assert (= (and b!7986447 (not c!1466683)) b!7986448))

(assert (= (or b!7986442 b!7986448) bm!741609))

(assert (= (or b!7986449 bm!741609) bm!741607))

(assert (= (or b!7986450 bm!741607) bm!741606))

(assert (= (or b!7986450 b!7986442) bm!741608))

(declare-fun m!8360706 () Bool)

(assert (=> bm!741606 m!8360706))

(declare-fun m!8360708 () Bool)

(assert (=> d!2383920 m!8360708))

(declare-fun m!8360710 () Bool)

(assert (=> d!2383920 m!8360710))

(declare-fun m!8360712 () Bool)

(assert (=> b!7986447 m!8360712))

(declare-fun m!8360714 () Bool)

(assert (=> bm!741608 m!8360714))

(assert (=> bm!741487 d!2383920))

(assert (=> bm!741543 d!2383802))

(assert (=> b!7986161 d!2383744))

(assert (=> b!7986161 d!2383788))

(declare-fun b!7986453 () Bool)

(declare-fun res!3161393 () Bool)

(declare-fun e!4706977 () Bool)

(assert (=> b!7986453 (=> (not res!3161393) (not e!4706977))))

(assert (=> b!7986453 (= res!3161393 (= (head!16297 (tail!15824 testedP!447)) (head!16297 (tail!15824 input!7927))))))

(declare-fun b!7986454 () Bool)

(assert (=> b!7986454 (= e!4706977 (isPrefix!6651 (tail!15824 (tail!15824 testedP!447)) (tail!15824 (tail!15824 input!7927))))))

(declare-fun d!2383922 () Bool)

(declare-fun e!4706976 () Bool)

(assert (=> d!2383922 e!4706976))

(declare-fun res!3161394 () Bool)

(assert (=> d!2383922 (=> res!3161394 e!4706976)))

(declare-fun lt!2711916 () Bool)

(assert (=> d!2383922 (= res!3161394 (not lt!2711916))))

(declare-fun e!4706975 () Bool)

(assert (=> d!2383922 (= lt!2711916 e!4706975)))

(declare-fun res!3161392 () Bool)

(assert (=> d!2383922 (=> res!3161392 e!4706975)))

(assert (=> d!2383922 (= res!3161392 ((_ is Nil!74656) (tail!15824 testedP!447)))))

(assert (=> d!2383922 (= (isPrefix!6651 (tail!15824 testedP!447) (tail!15824 input!7927)) lt!2711916)))

(declare-fun b!7986455 () Bool)

(assert (=> b!7986455 (= e!4706976 (>= (size!43487 (tail!15824 input!7927)) (size!43487 (tail!15824 testedP!447))))))

(declare-fun b!7986452 () Bool)

(assert (=> b!7986452 (= e!4706975 e!4706977)))

(declare-fun res!3161395 () Bool)

(assert (=> b!7986452 (=> (not res!3161395) (not e!4706977))))

(assert (=> b!7986452 (= res!3161395 (not ((_ is Nil!74656) (tail!15824 input!7927))))))

(assert (= (and d!2383922 (not res!3161392)) b!7986452))

(assert (= (and b!7986452 res!3161395) b!7986453))

(assert (= (and b!7986453 res!3161393) b!7986454))

(assert (= (and d!2383922 (not res!3161394)) b!7986455))

(assert (=> b!7986453 m!8360404))

(declare-fun m!8360716 () Bool)

(assert (=> b!7986453 m!8360716))

(assert (=> b!7986453 m!8360222))

(assert (=> b!7986453 m!8360518))

(assert (=> b!7986454 m!8360404))

(declare-fun m!8360718 () Bool)

(assert (=> b!7986454 m!8360718))

(assert (=> b!7986454 m!8360222))

(assert (=> b!7986454 m!8360520))

(assert (=> b!7986454 m!8360718))

(assert (=> b!7986454 m!8360520))

(declare-fun m!8360720 () Bool)

(assert (=> b!7986454 m!8360720))

(assert (=> b!7986455 m!8360222))

(assert (=> b!7986455 m!8360524))

(assert (=> b!7986455 m!8360404))

(declare-fun m!8360722 () Bool)

(assert (=> b!7986455 m!8360722))

(assert (=> b!7986160 d!2383922))

(declare-fun d!2383924 () Bool)

(assert (=> d!2383924 (= (tail!15824 testedP!447) (t!390523 testedP!447))))

(assert (=> b!7986160 d!2383924))

(assert (=> b!7986160 d!2383840))

(declare-fun d!2383926 () Bool)

(declare-fun c!1466686 () Bool)

(assert (=> d!2383926 (= c!1466686 ((_ is Nil!74656) lt!2711840))))

(declare-fun e!4706980 () (InoxSet C!43440))

(assert (=> d!2383926 (= (content!15870 lt!2711840) e!4706980)))

(declare-fun b!7986460 () Bool)

(assert (=> b!7986460 (= e!4706980 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7986461 () Bool)

(assert (=> b!7986461 (= e!4706980 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711840) true) (content!15870 (t!390523 lt!2711840))))))

(assert (= (and d!2383926 c!1466686) b!7986460))

(assert (= (and d!2383926 (not c!1466686)) b!7986461))

(declare-fun m!8360724 () Bool)

(assert (=> b!7986461 m!8360724))

(declare-fun m!8360726 () Bool)

(assert (=> b!7986461 m!8360726))

(assert (=> d!2383794 d!2383926))

(declare-fun d!2383928 () Bool)

(declare-fun c!1466687 () Bool)

(assert (=> d!2383928 (= c!1466687 ((_ is Nil!74656) testedP!447))))

(declare-fun e!4706981 () (InoxSet C!43440))

(assert (=> d!2383928 (= (content!15870 testedP!447) e!4706981)))

(declare-fun b!7986462 () Bool)

(assert (=> b!7986462 (= e!4706981 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7986463 () Bool)

(assert (=> b!7986463 (= e!4706981 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 testedP!447) true) (content!15870 (t!390523 testedP!447))))))

(assert (= (and d!2383928 c!1466687) b!7986462))

(assert (= (and d!2383928 (not c!1466687)) b!7986463))

(declare-fun m!8360728 () Bool)

(assert (=> b!7986463 m!8360728))

(assert (=> b!7986463 m!8360654))

(assert (=> d!2383794 d!2383928))

(declare-fun d!2383930 () Bool)

(declare-fun c!1466688 () Bool)

(assert (=> d!2383930 (= c!1466688 ((_ is Nil!74656) (Cons!74656 lt!2711601 Nil!74656)))))

(declare-fun e!4706982 () (InoxSet C!43440))

(assert (=> d!2383930 (= (content!15870 (Cons!74656 lt!2711601 Nil!74656)) e!4706982)))

(declare-fun b!7986464 () Bool)

(assert (=> b!7986464 (= e!4706982 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7986465 () Bool)

(assert (=> b!7986465 (= e!4706982 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (Cons!74656 lt!2711601 Nil!74656)) true) (content!15870 (t!390523 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (= (and d!2383930 c!1466688) b!7986464))

(assert (= (and d!2383930 (not c!1466688)) b!7986465))

(declare-fun m!8360730 () Bool)

(assert (=> b!7986465 m!8360730))

(declare-fun m!8360732 () Bool)

(assert (=> b!7986465 m!8360732))

(assert (=> d!2383794 d!2383930))

(declare-fun b!7986469 () Bool)

(declare-fun e!4706983 () Bool)

(declare-fun tp!2384304 () Bool)

(declare-fun tp!2384303 () Bool)

(assert (=> b!7986469 (= e!4706983 (and tp!2384304 tp!2384303))))

(assert (=> b!7986222 (= tp!2384277 e!4706983)))

(declare-fun b!7986468 () Bool)

(declare-fun tp!2384306 () Bool)

(assert (=> b!7986468 (= e!4706983 tp!2384306)))

(declare-fun b!7986467 () Bool)

(declare-fun tp!2384307 () Bool)

(declare-fun tp!2384305 () Bool)

(assert (=> b!7986467 (= e!4706983 (and tp!2384307 tp!2384305))))

(declare-fun b!7986466 () Bool)

(assert (=> b!7986466 (= e!4706983 tp_is_empty!53645)))

(assert (= (and b!7986222 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 baseR!116)))) b!7986466))

(assert (= (and b!7986222 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 baseR!116)))) b!7986467))

(assert (= (and b!7986222 ((_ is Star!21551) (regOne!43614 (regTwo!43614 baseR!116)))) b!7986468))

(assert (= (and b!7986222 ((_ is Union!21551) (regOne!43614 (regTwo!43614 baseR!116)))) b!7986469))

(declare-fun b!7986473 () Bool)

(declare-fun e!4706984 () Bool)

(declare-fun tp!2384309 () Bool)

(declare-fun tp!2384308 () Bool)

(assert (=> b!7986473 (= e!4706984 (and tp!2384309 tp!2384308))))

(assert (=> b!7986222 (= tp!2384275 e!4706984)))

(declare-fun b!7986472 () Bool)

(declare-fun tp!2384311 () Bool)

(assert (=> b!7986472 (= e!4706984 tp!2384311)))

(declare-fun b!7986471 () Bool)

(declare-fun tp!2384312 () Bool)

(declare-fun tp!2384310 () Bool)

(assert (=> b!7986471 (= e!4706984 (and tp!2384312 tp!2384310))))

(declare-fun b!7986470 () Bool)

(assert (=> b!7986470 (= e!4706984 tp_is_empty!53645)))

(assert (= (and b!7986222 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 baseR!116)))) b!7986470))

(assert (= (and b!7986222 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 baseR!116)))) b!7986471))

(assert (= (and b!7986222 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 baseR!116)))) b!7986472))

(assert (= (and b!7986222 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 baseR!116)))) b!7986473))

(declare-fun b!7986474 () Bool)

(declare-fun e!4706985 () Bool)

(declare-fun tp!2384313 () Bool)

(assert (=> b!7986474 (= e!4706985 (and tp_is_empty!53645 tp!2384313))))

(assert (=> b!7986215 (= tp!2384266 e!4706985)))

(assert (= (and b!7986215 ((_ is Cons!74656) (t!390523 (t!390523 testedP!447)))) b!7986474))

(declare-fun b!7986478 () Bool)

(declare-fun e!4706986 () Bool)

(declare-fun tp!2384315 () Bool)

(declare-fun tp!2384314 () Bool)

(assert (=> b!7986478 (= e!4706986 (and tp!2384315 tp!2384314))))

(assert (=> b!7986232 (= tp!2384284 e!4706986)))

(declare-fun b!7986477 () Bool)

(declare-fun tp!2384317 () Bool)

(assert (=> b!7986477 (= e!4706986 tp!2384317)))

(declare-fun b!7986476 () Bool)

(declare-fun tp!2384318 () Bool)

(declare-fun tp!2384316 () Bool)

(assert (=> b!7986476 (= e!4706986 (and tp!2384318 tp!2384316))))

(declare-fun b!7986475 () Bool)

(assert (=> b!7986475 (= e!4706986 tp_is_empty!53645)))

(assert (= (and b!7986232 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 r!24602)))) b!7986475))

(assert (= (and b!7986232 ((_ is Concat!30550) (regOne!43615 (regOne!43615 r!24602)))) b!7986476))

(assert (= (and b!7986232 ((_ is Star!21551) (regOne!43615 (regOne!43615 r!24602)))) b!7986477))

(assert (= (and b!7986232 ((_ is Union!21551) (regOne!43615 (regOne!43615 r!24602)))) b!7986478))

(declare-fun b!7986482 () Bool)

(declare-fun e!4706987 () Bool)

(declare-fun tp!2384320 () Bool)

(declare-fun tp!2384319 () Bool)

(assert (=> b!7986482 (= e!4706987 (and tp!2384320 tp!2384319))))

(assert (=> b!7986232 (= tp!2384283 e!4706987)))

(declare-fun b!7986481 () Bool)

(declare-fun tp!2384322 () Bool)

(assert (=> b!7986481 (= e!4706987 tp!2384322)))

(declare-fun b!7986480 () Bool)

(declare-fun tp!2384323 () Bool)

(declare-fun tp!2384321 () Bool)

(assert (=> b!7986480 (= e!4706987 (and tp!2384323 tp!2384321))))

(declare-fun b!7986479 () Bool)

(assert (=> b!7986479 (= e!4706987 tp_is_empty!53645)))

(assert (= (and b!7986232 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 r!24602)))) b!7986479))

(assert (= (and b!7986232 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 r!24602)))) b!7986480))

(assert (= (and b!7986232 ((_ is Star!21551) (regTwo!43615 (regOne!43615 r!24602)))) b!7986481))

(assert (= (and b!7986232 ((_ is Union!21551) (regTwo!43615 (regOne!43615 r!24602)))) b!7986482))

(declare-fun b!7986486 () Bool)

(declare-fun e!4706988 () Bool)

(declare-fun tp!2384325 () Bool)

(declare-fun tp!2384324 () Bool)

(assert (=> b!7986486 (= e!4706988 (and tp!2384325 tp!2384324))))

(assert (=> b!7986223 (= tp!2384276 e!4706988)))

(declare-fun b!7986485 () Bool)

(declare-fun tp!2384327 () Bool)

(assert (=> b!7986485 (= e!4706988 tp!2384327)))

(declare-fun b!7986484 () Bool)

(declare-fun tp!2384328 () Bool)

(declare-fun tp!2384326 () Bool)

(assert (=> b!7986484 (= e!4706988 (and tp!2384328 tp!2384326))))

(declare-fun b!7986483 () Bool)

(assert (=> b!7986483 (= e!4706988 tp_is_empty!53645)))

(assert (= (and b!7986223 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 baseR!116)))) b!7986483))

(assert (= (and b!7986223 ((_ is Concat!30550) (reg!21880 (regTwo!43614 baseR!116)))) b!7986484))

(assert (= (and b!7986223 ((_ is Star!21551) (reg!21880 (regTwo!43614 baseR!116)))) b!7986485))

(assert (= (and b!7986223 ((_ is Union!21551) (reg!21880 (regTwo!43614 baseR!116)))) b!7986486))

(declare-fun b!7986490 () Bool)

(declare-fun e!4706989 () Bool)

(declare-fun tp!2384330 () Bool)

(declare-fun tp!2384329 () Bool)

(assert (=> b!7986490 (= e!4706989 (and tp!2384330 tp!2384329))))

(assert (=> b!7986230 (= tp!2384287 e!4706989)))

(declare-fun b!7986489 () Bool)

(declare-fun tp!2384332 () Bool)

(assert (=> b!7986489 (= e!4706989 tp!2384332)))

(declare-fun b!7986488 () Bool)

(declare-fun tp!2384333 () Bool)

(declare-fun tp!2384331 () Bool)

(assert (=> b!7986488 (= e!4706989 (and tp!2384333 tp!2384331))))

(declare-fun b!7986487 () Bool)

(assert (=> b!7986487 (= e!4706989 tp_is_empty!53645)))

(assert (= (and b!7986230 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 r!24602)))) b!7986487))

(assert (= (and b!7986230 ((_ is Concat!30550) (regOne!43614 (regOne!43615 r!24602)))) b!7986488))

(assert (= (and b!7986230 ((_ is Star!21551) (regOne!43614 (regOne!43615 r!24602)))) b!7986489))

(assert (= (and b!7986230 ((_ is Union!21551) (regOne!43614 (regOne!43615 r!24602)))) b!7986490))

(declare-fun b!7986494 () Bool)

(declare-fun e!4706990 () Bool)

(declare-fun tp!2384335 () Bool)

(declare-fun tp!2384334 () Bool)

(assert (=> b!7986494 (= e!4706990 (and tp!2384335 tp!2384334))))

(assert (=> b!7986230 (= tp!2384285 e!4706990)))

(declare-fun b!7986493 () Bool)

(declare-fun tp!2384337 () Bool)

(assert (=> b!7986493 (= e!4706990 tp!2384337)))

(declare-fun b!7986492 () Bool)

(declare-fun tp!2384338 () Bool)

(declare-fun tp!2384336 () Bool)

(assert (=> b!7986492 (= e!4706990 (and tp!2384338 tp!2384336))))

(declare-fun b!7986491 () Bool)

(assert (=> b!7986491 (= e!4706990 tp_is_empty!53645)))

(assert (= (and b!7986230 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 r!24602)))) b!7986491))

(assert (= (and b!7986230 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 r!24602)))) b!7986492))

(assert (= (and b!7986230 ((_ is Star!21551) (regTwo!43614 (regOne!43615 r!24602)))) b!7986493))

(assert (= (and b!7986230 ((_ is Union!21551) (regTwo!43614 (regOne!43615 r!24602)))) b!7986494))

(declare-fun b!7986498 () Bool)

(declare-fun e!4706991 () Bool)

(declare-fun tp!2384340 () Bool)

(declare-fun tp!2384339 () Bool)

(assert (=> b!7986498 (= e!4706991 (and tp!2384340 tp!2384339))))

(assert (=> b!7986240 (= tp!2384294 e!4706991)))

(declare-fun b!7986497 () Bool)

(declare-fun tp!2384342 () Bool)

(assert (=> b!7986497 (= e!4706991 tp!2384342)))

(declare-fun b!7986496 () Bool)

(declare-fun tp!2384343 () Bool)

(declare-fun tp!2384341 () Bool)

(assert (=> b!7986496 (= e!4706991 (and tp!2384343 tp!2384341))))

(declare-fun b!7986495 () Bool)

(assert (=> b!7986495 (= e!4706991 tp_is_empty!53645)))

(assert (= (and b!7986240 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 r!24602)))) b!7986495))

(assert (= (and b!7986240 ((_ is Concat!30550) (regOne!43615 (regOne!43614 r!24602)))) b!7986496))

(assert (= (and b!7986240 ((_ is Star!21551) (regOne!43615 (regOne!43614 r!24602)))) b!7986497))

(assert (= (and b!7986240 ((_ is Union!21551) (regOne!43615 (regOne!43614 r!24602)))) b!7986498))

(declare-fun b!7986502 () Bool)

(declare-fun e!4706992 () Bool)

(declare-fun tp!2384345 () Bool)

(declare-fun tp!2384344 () Bool)

(assert (=> b!7986502 (= e!4706992 (and tp!2384345 tp!2384344))))

(assert (=> b!7986240 (= tp!2384293 e!4706992)))

(declare-fun b!7986501 () Bool)

(declare-fun tp!2384347 () Bool)

(assert (=> b!7986501 (= e!4706992 tp!2384347)))

(declare-fun b!7986500 () Bool)

(declare-fun tp!2384348 () Bool)

(declare-fun tp!2384346 () Bool)

(assert (=> b!7986500 (= e!4706992 (and tp!2384348 tp!2384346))))

(declare-fun b!7986499 () Bool)

(assert (=> b!7986499 (= e!4706992 tp_is_empty!53645)))

(assert (= (and b!7986240 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 r!24602)))) b!7986499))

(assert (= (and b!7986240 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 r!24602)))) b!7986500))

(assert (= (and b!7986240 ((_ is Star!21551) (regTwo!43615 (regOne!43614 r!24602)))) b!7986501))

(assert (= (and b!7986240 ((_ is Union!21551) (regTwo!43615 (regOne!43614 r!24602)))) b!7986502))

(declare-fun b!7986506 () Bool)

(declare-fun e!4706993 () Bool)

(declare-fun tp!2384350 () Bool)

(declare-fun tp!2384349 () Bool)

(assert (=> b!7986506 (= e!4706993 (and tp!2384350 tp!2384349))))

(assert (=> b!7986231 (= tp!2384286 e!4706993)))

(declare-fun b!7986505 () Bool)

(declare-fun tp!2384352 () Bool)

(assert (=> b!7986505 (= e!4706993 tp!2384352)))

(declare-fun b!7986504 () Bool)

(declare-fun tp!2384353 () Bool)

(declare-fun tp!2384351 () Bool)

(assert (=> b!7986504 (= e!4706993 (and tp!2384353 tp!2384351))))

(declare-fun b!7986503 () Bool)

(assert (=> b!7986503 (= e!4706993 tp_is_empty!53645)))

(assert (= (and b!7986231 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 r!24602)))) b!7986503))

(assert (= (and b!7986231 ((_ is Concat!30550) (reg!21880 (regOne!43615 r!24602)))) b!7986504))

(assert (= (and b!7986231 ((_ is Star!21551) (reg!21880 (regOne!43615 r!24602)))) b!7986505))

(assert (= (and b!7986231 ((_ is Union!21551) (reg!21880 (regOne!43615 r!24602)))) b!7986506))

(declare-fun b!7986507 () Bool)

(declare-fun e!4706994 () Bool)

(declare-fun tp!2384354 () Bool)

(assert (=> b!7986507 (= e!4706994 (and tp_is_empty!53645 tp!2384354))))

(assert (=> b!7986216 (= tp!2384267 e!4706994)))

(assert (= (and b!7986216 ((_ is Cons!74656) (t!390523 (t!390523 input!7927)))) b!7986507))

(declare-fun b!7986511 () Bool)

(declare-fun e!4706995 () Bool)

(declare-fun tp!2384356 () Bool)

(declare-fun tp!2384355 () Bool)

(assert (=> b!7986511 (= e!4706995 (and tp!2384356 tp!2384355))))

(assert (=> b!7986224 (= tp!2384274 e!4706995)))

(declare-fun b!7986510 () Bool)

(declare-fun tp!2384358 () Bool)

(assert (=> b!7986510 (= e!4706995 tp!2384358)))

(declare-fun b!7986509 () Bool)

(declare-fun tp!2384359 () Bool)

(declare-fun tp!2384357 () Bool)

(assert (=> b!7986509 (= e!4706995 (and tp!2384359 tp!2384357))))

(declare-fun b!7986508 () Bool)

(assert (=> b!7986508 (= e!4706995 tp_is_empty!53645)))

(assert (= (and b!7986224 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 baseR!116)))) b!7986508))

(assert (= (and b!7986224 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 baseR!116)))) b!7986509))

(assert (= (and b!7986224 ((_ is Star!21551) (regOne!43615 (regTwo!43614 baseR!116)))) b!7986510))

(assert (= (and b!7986224 ((_ is Union!21551) (regOne!43615 (regTwo!43614 baseR!116)))) b!7986511))

(declare-fun b!7986515 () Bool)

(declare-fun e!4706996 () Bool)

(declare-fun tp!2384361 () Bool)

(declare-fun tp!2384360 () Bool)

(assert (=> b!7986515 (= e!4706996 (and tp!2384361 tp!2384360))))

(assert (=> b!7986224 (= tp!2384273 e!4706996)))

(declare-fun b!7986514 () Bool)

(declare-fun tp!2384363 () Bool)

(assert (=> b!7986514 (= e!4706996 tp!2384363)))

(declare-fun b!7986513 () Bool)

(declare-fun tp!2384364 () Bool)

(declare-fun tp!2384362 () Bool)

(assert (=> b!7986513 (= e!4706996 (and tp!2384364 tp!2384362))))

(declare-fun b!7986512 () Bool)

(assert (=> b!7986512 (= e!4706996 tp_is_empty!53645)))

(assert (= (and b!7986224 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 baseR!116)))) b!7986512))

(assert (= (and b!7986224 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 baseR!116)))) b!7986513))

(assert (= (and b!7986224 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 baseR!116)))) b!7986514))

(assert (= (and b!7986224 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 baseR!116)))) b!7986515))

(declare-fun b!7986519 () Bool)

(declare-fun e!4706997 () Bool)

(declare-fun tp!2384366 () Bool)

(declare-fun tp!2384365 () Bool)

(assert (=> b!7986519 (= e!4706997 (and tp!2384366 tp!2384365))))

(assert (=> b!7986209 (= tp!2384262 e!4706997)))

(declare-fun b!7986518 () Bool)

(declare-fun tp!2384368 () Bool)

(assert (=> b!7986518 (= e!4706997 tp!2384368)))

(declare-fun b!7986517 () Bool)

(declare-fun tp!2384369 () Bool)

(declare-fun tp!2384367 () Bool)

(assert (=> b!7986517 (= e!4706997 (and tp!2384369 tp!2384367))))

(declare-fun b!7986516 () Bool)

(assert (=> b!7986516 (= e!4706997 tp_is_empty!53645)))

(assert (= (and b!7986209 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 baseR!116)))) b!7986516))

(assert (= (and b!7986209 ((_ is Concat!30550) (reg!21880 (regTwo!43615 baseR!116)))) b!7986517))

(assert (= (and b!7986209 ((_ is Star!21551) (reg!21880 (regTwo!43615 baseR!116)))) b!7986518))

(assert (= (and b!7986209 ((_ is Union!21551) (reg!21880 (regTwo!43615 baseR!116)))) b!7986519))

(declare-fun b!7986523 () Bool)

(declare-fun e!4706998 () Bool)

(declare-fun tp!2384371 () Bool)

(declare-fun tp!2384370 () Bool)

(assert (=> b!7986523 (= e!4706998 (and tp!2384371 tp!2384370))))

(assert (=> b!7986200 (= tp!2384253 e!4706998)))

(declare-fun b!7986522 () Bool)

(declare-fun tp!2384373 () Bool)

(assert (=> b!7986522 (= e!4706998 tp!2384373)))

(declare-fun b!7986521 () Bool)

(declare-fun tp!2384374 () Bool)

(declare-fun tp!2384372 () Bool)

(assert (=> b!7986521 (= e!4706998 (and tp!2384374 tp!2384372))))

(declare-fun b!7986520 () Bool)

(assert (=> b!7986520 (= e!4706998 tp_is_empty!53645)))

(assert (= (and b!7986200 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 r!24602)))) b!7986520))

(assert (= (and b!7986200 ((_ is Concat!30550) (regOne!43614 (reg!21880 r!24602)))) b!7986521))

(assert (= (and b!7986200 ((_ is Star!21551) (regOne!43614 (reg!21880 r!24602)))) b!7986522))

(assert (= (and b!7986200 ((_ is Union!21551) (regOne!43614 (reg!21880 r!24602)))) b!7986523))

(declare-fun b!7986527 () Bool)

(declare-fun e!4706999 () Bool)

(declare-fun tp!2384376 () Bool)

(declare-fun tp!2384375 () Bool)

(assert (=> b!7986527 (= e!4706999 (and tp!2384376 tp!2384375))))

(assert (=> b!7986200 (= tp!2384251 e!4706999)))

(declare-fun b!7986526 () Bool)

(declare-fun tp!2384378 () Bool)

(assert (=> b!7986526 (= e!4706999 tp!2384378)))

(declare-fun b!7986525 () Bool)

(declare-fun tp!2384379 () Bool)

(declare-fun tp!2384377 () Bool)

(assert (=> b!7986525 (= e!4706999 (and tp!2384379 tp!2384377))))

(declare-fun b!7986524 () Bool)

(assert (=> b!7986524 (= e!4706999 tp_is_empty!53645)))

(assert (= (and b!7986200 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 r!24602)))) b!7986524))

(assert (= (and b!7986200 ((_ is Concat!30550) (regTwo!43614 (reg!21880 r!24602)))) b!7986525))

(assert (= (and b!7986200 ((_ is Star!21551) (regTwo!43614 (reg!21880 r!24602)))) b!7986526))

(assert (= (and b!7986200 ((_ is Union!21551) (regTwo!43614 (reg!21880 r!24602)))) b!7986527))

(declare-fun b!7986531 () Bool)

(declare-fun e!4707000 () Bool)

(declare-fun tp!2384381 () Bool)

(declare-fun tp!2384380 () Bool)

(assert (=> b!7986531 (= e!4707000 (and tp!2384381 tp!2384380))))

(assert (=> b!7986208 (= tp!2384263 e!4707000)))

(declare-fun b!7986530 () Bool)

(declare-fun tp!2384383 () Bool)

(assert (=> b!7986530 (= e!4707000 tp!2384383)))

(declare-fun b!7986529 () Bool)

(declare-fun tp!2384384 () Bool)

(declare-fun tp!2384382 () Bool)

(assert (=> b!7986529 (= e!4707000 (and tp!2384384 tp!2384382))))

(declare-fun b!7986528 () Bool)

(assert (=> b!7986528 (= e!4707000 tp_is_empty!53645)))

(assert (= (and b!7986208 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 baseR!116)))) b!7986528))

(assert (= (and b!7986208 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 baseR!116)))) b!7986529))

(assert (= (and b!7986208 ((_ is Star!21551) (regOne!43614 (regTwo!43615 baseR!116)))) b!7986530))

(assert (= (and b!7986208 ((_ is Union!21551) (regOne!43614 (regTwo!43615 baseR!116)))) b!7986531))

(declare-fun b!7986537 () Bool)

(declare-fun e!4707003 () Bool)

(declare-fun tp!2384386 () Bool)

(declare-fun tp!2384385 () Bool)

(assert (=> b!7986537 (= e!4707003 (and tp!2384386 tp!2384385))))

(assert (=> b!7986208 (= tp!2384261 e!4707003)))

(declare-fun b!7986536 () Bool)

(declare-fun tp!2384388 () Bool)

(assert (=> b!7986536 (= e!4707003 tp!2384388)))

(declare-fun b!7986535 () Bool)

(declare-fun tp!2384389 () Bool)

(declare-fun tp!2384387 () Bool)

(assert (=> b!7986535 (= e!4707003 (and tp!2384389 tp!2384387))))

(declare-fun b!7986534 () Bool)

(assert (=> b!7986534 (= e!4707003 tp_is_empty!53645)))

(assert (= (and b!7986208 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 baseR!116)))) b!7986534))

(assert (= (and b!7986208 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 baseR!116)))) b!7986535))

(assert (= (and b!7986208 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 baseR!116)))) b!7986536))

(assert (= (and b!7986208 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 baseR!116)))) b!7986537))

(declare-fun b!7986543 () Bool)

(declare-fun e!4707006 () Bool)

(declare-fun tp!2384391 () Bool)

(declare-fun tp!2384390 () Bool)

(assert (=> b!7986543 (= e!4707006 (and tp!2384391 tp!2384390))))

(assert (=> b!7986202 (= tp!2384250 e!4707006)))

(declare-fun b!7986542 () Bool)

(declare-fun tp!2384393 () Bool)

(assert (=> b!7986542 (= e!4707006 tp!2384393)))

(declare-fun b!7986541 () Bool)

(declare-fun tp!2384394 () Bool)

(declare-fun tp!2384392 () Bool)

(assert (=> b!7986541 (= e!4707006 (and tp!2384394 tp!2384392))))

(declare-fun b!7986539 () Bool)

(assert (=> b!7986539 (= e!4707006 tp_is_empty!53645)))

(assert (= (and b!7986202 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 r!24602)))) b!7986539))

(assert (= (and b!7986202 ((_ is Concat!30550) (regOne!43615 (reg!21880 r!24602)))) b!7986541))

(assert (= (and b!7986202 ((_ is Star!21551) (regOne!43615 (reg!21880 r!24602)))) b!7986542))

(assert (= (and b!7986202 ((_ is Union!21551) (regOne!43615 (reg!21880 r!24602)))) b!7986543))

(declare-fun b!7986549 () Bool)

(declare-fun e!4707009 () Bool)

(declare-fun tp!2384396 () Bool)

(declare-fun tp!2384395 () Bool)

(assert (=> b!7986549 (= e!4707009 (and tp!2384396 tp!2384395))))

(assert (=> b!7986202 (= tp!2384249 e!4707009)))

(declare-fun b!7986548 () Bool)

(declare-fun tp!2384398 () Bool)

(assert (=> b!7986548 (= e!4707009 tp!2384398)))

(declare-fun b!7986547 () Bool)

(declare-fun tp!2384399 () Bool)

(declare-fun tp!2384397 () Bool)

(assert (=> b!7986547 (= e!4707009 (and tp!2384399 tp!2384397))))

(declare-fun b!7986546 () Bool)

(assert (=> b!7986546 (= e!4707009 tp_is_empty!53645)))

(assert (= (and b!7986202 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 r!24602)))) b!7986546))

(assert (= (and b!7986202 ((_ is Concat!30550) (regTwo!43615 (reg!21880 r!24602)))) b!7986547))

(assert (= (and b!7986202 ((_ is Star!21551) (regTwo!43615 (reg!21880 r!24602)))) b!7986548))

(assert (= (and b!7986202 ((_ is Union!21551) (regTwo!43615 (reg!21880 r!24602)))) b!7986549))

(declare-fun b!7986557 () Bool)

(declare-fun e!4707012 () Bool)

(declare-fun tp!2384401 () Bool)

(declare-fun tp!2384400 () Bool)

(assert (=> b!7986557 (= e!4707012 (and tp!2384401 tp!2384400))))

(assert (=> b!7986243 (= tp!2384301 e!4707012)))

(declare-fun b!7986556 () Bool)

(declare-fun tp!2384403 () Bool)

(assert (=> b!7986556 (= e!4707012 tp!2384403)))

(declare-fun b!7986555 () Bool)

(declare-fun tp!2384404 () Bool)

(declare-fun tp!2384402 () Bool)

(assert (=> b!7986555 (= e!4707012 (and tp!2384404 tp!2384402))))

(declare-fun b!7986554 () Bool)

(assert (=> b!7986554 (= e!4707012 tp_is_empty!53645)))

(assert (= (and b!7986243 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 r!24602)))) b!7986554))

(assert (= (and b!7986243 ((_ is Concat!30550) (reg!21880 (regTwo!43614 r!24602)))) b!7986555))

(assert (= (and b!7986243 ((_ is Star!21551) (reg!21880 (regTwo!43614 r!24602)))) b!7986556))

(assert (= (and b!7986243 ((_ is Union!21551) (reg!21880 (regTwo!43614 r!24602)))) b!7986557))

(declare-fun b!7986563 () Bool)

(declare-fun e!4707015 () Bool)

(declare-fun tp!2384406 () Bool)

(declare-fun tp!2384405 () Bool)

(assert (=> b!7986563 (= e!4707015 (and tp!2384406 tp!2384405))))

(assert (=> b!7986234 (= tp!2384292 e!4707015)))

(declare-fun b!7986562 () Bool)

(declare-fun tp!2384408 () Bool)

(assert (=> b!7986562 (= e!4707015 tp!2384408)))

(declare-fun b!7986561 () Bool)

(declare-fun tp!2384409 () Bool)

(declare-fun tp!2384407 () Bool)

(assert (=> b!7986561 (= e!4707015 (and tp!2384409 tp!2384407))))

(declare-fun b!7986560 () Bool)

(assert (=> b!7986560 (= e!4707015 tp_is_empty!53645)))

(assert (= (and b!7986234 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 r!24602)))) b!7986560))

(assert (= (and b!7986234 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 r!24602)))) b!7986561))

(assert (= (and b!7986234 ((_ is Star!21551) (regOne!43614 (regTwo!43615 r!24602)))) b!7986562))

(assert (= (and b!7986234 ((_ is Union!21551) (regOne!43614 (regTwo!43615 r!24602)))) b!7986563))

(declare-fun b!7986569 () Bool)

(declare-fun e!4707018 () Bool)

(declare-fun tp!2384411 () Bool)

(declare-fun tp!2384410 () Bool)

(assert (=> b!7986569 (= e!4707018 (and tp!2384411 tp!2384410))))

(assert (=> b!7986234 (= tp!2384290 e!4707018)))

(declare-fun b!7986568 () Bool)

(declare-fun tp!2384413 () Bool)

(assert (=> b!7986568 (= e!4707018 tp!2384413)))

(declare-fun b!7986567 () Bool)

(declare-fun tp!2384414 () Bool)

(declare-fun tp!2384412 () Bool)

(assert (=> b!7986567 (= e!4707018 (and tp!2384414 tp!2384412))))

(declare-fun b!7986566 () Bool)

(assert (=> b!7986566 (= e!4707018 tp_is_empty!53645)))

(assert (= (and b!7986234 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 r!24602)))) b!7986566))

(assert (= (and b!7986234 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 r!24602)))) b!7986567))

(assert (= (and b!7986234 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 r!24602)))) b!7986568))

(assert (= (and b!7986234 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 r!24602)))) b!7986569))

(declare-fun b!7986573 () Bool)

(declare-fun e!4707019 () Bool)

(declare-fun tp!2384416 () Bool)

(declare-fun tp!2384415 () Bool)

(assert (=> b!7986573 (= e!4707019 (and tp!2384416 tp!2384415))))

(assert (=> b!7986210 (= tp!2384260 e!4707019)))

(declare-fun b!7986572 () Bool)

(declare-fun tp!2384418 () Bool)

(assert (=> b!7986572 (= e!4707019 tp!2384418)))

(declare-fun b!7986571 () Bool)

(declare-fun tp!2384419 () Bool)

(declare-fun tp!2384417 () Bool)

(assert (=> b!7986571 (= e!4707019 (and tp!2384419 tp!2384417))))

(declare-fun b!7986570 () Bool)

(assert (=> b!7986570 (= e!4707019 tp_is_empty!53645)))

(assert (= (and b!7986210 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 baseR!116)))) b!7986570))

(assert (= (and b!7986210 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 baseR!116)))) b!7986571))

(assert (= (and b!7986210 ((_ is Star!21551) (regOne!43615 (regTwo!43615 baseR!116)))) b!7986572))

(assert (= (and b!7986210 ((_ is Union!21551) (regOne!43615 (regTwo!43615 baseR!116)))) b!7986573))

(declare-fun b!7986577 () Bool)

(declare-fun e!4707020 () Bool)

(declare-fun tp!2384421 () Bool)

(declare-fun tp!2384420 () Bool)

(assert (=> b!7986577 (= e!4707020 (and tp!2384421 tp!2384420))))

(assert (=> b!7986210 (= tp!2384259 e!4707020)))

(declare-fun b!7986576 () Bool)

(declare-fun tp!2384423 () Bool)

(assert (=> b!7986576 (= e!4707020 tp!2384423)))

(declare-fun b!7986575 () Bool)

(declare-fun tp!2384424 () Bool)

(declare-fun tp!2384422 () Bool)

(assert (=> b!7986575 (= e!4707020 (and tp!2384424 tp!2384422))))

(declare-fun b!7986574 () Bool)

(assert (=> b!7986574 (= e!4707020 tp_is_empty!53645)))

(assert (= (and b!7986210 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 baseR!116)))) b!7986574))

(assert (= (and b!7986210 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 baseR!116)))) b!7986575))

(assert (= (and b!7986210 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 baseR!116)))) b!7986576))

(assert (= (and b!7986210 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 baseR!116)))) b!7986577))

(declare-fun b!7986581 () Bool)

(declare-fun e!4707021 () Bool)

(declare-fun tp!2384426 () Bool)

(declare-fun tp!2384425 () Bool)

(assert (=> b!7986581 (= e!4707021 (and tp!2384426 tp!2384425))))

(assert (=> b!7986201 (= tp!2384252 e!4707021)))

(declare-fun b!7986580 () Bool)

(declare-fun tp!2384428 () Bool)

(assert (=> b!7986580 (= e!4707021 tp!2384428)))

(declare-fun b!7986579 () Bool)

(declare-fun tp!2384429 () Bool)

(declare-fun tp!2384427 () Bool)

(assert (=> b!7986579 (= e!4707021 (and tp!2384429 tp!2384427))))

(declare-fun b!7986578 () Bool)

(assert (=> b!7986578 (= e!4707021 tp_is_empty!53645)))

(assert (= (and b!7986201 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 r!24602)))) b!7986578))

(assert (= (and b!7986201 ((_ is Concat!30550) (reg!21880 (reg!21880 r!24602)))) b!7986579))

(assert (= (and b!7986201 ((_ is Star!21551) (reg!21880 (reg!21880 r!24602)))) b!7986580))

(assert (= (and b!7986201 ((_ is Union!21551) (reg!21880 (reg!21880 r!24602)))) b!7986581))

(declare-fun b!7986585 () Bool)

(declare-fun e!4707022 () Bool)

(declare-fun tp!2384431 () Bool)

(declare-fun tp!2384430 () Bool)

(assert (=> b!7986585 (= e!4707022 (and tp!2384431 tp!2384430))))

(assert (=> b!7986242 (= tp!2384302 e!4707022)))

(declare-fun b!7986584 () Bool)

(declare-fun tp!2384433 () Bool)

(assert (=> b!7986584 (= e!4707022 tp!2384433)))

(declare-fun b!7986583 () Bool)

(declare-fun tp!2384434 () Bool)

(declare-fun tp!2384432 () Bool)

(assert (=> b!7986583 (= e!4707022 (and tp!2384434 tp!2384432))))

(declare-fun b!7986582 () Bool)

(assert (=> b!7986582 (= e!4707022 tp_is_empty!53645)))

(assert (= (and b!7986242 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 r!24602)))) b!7986582))

(assert (= (and b!7986242 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 r!24602)))) b!7986583))

(assert (= (and b!7986242 ((_ is Star!21551) (regOne!43614 (regTwo!43614 r!24602)))) b!7986584))

(assert (= (and b!7986242 ((_ is Union!21551) (regOne!43614 (regTwo!43614 r!24602)))) b!7986585))

(declare-fun b!7986589 () Bool)

(declare-fun e!4707023 () Bool)

(declare-fun tp!2384436 () Bool)

(declare-fun tp!2384435 () Bool)

(assert (=> b!7986589 (= e!4707023 (and tp!2384436 tp!2384435))))

(assert (=> b!7986242 (= tp!2384300 e!4707023)))

(declare-fun b!7986588 () Bool)

(declare-fun tp!2384438 () Bool)

(assert (=> b!7986588 (= e!4707023 tp!2384438)))

(declare-fun b!7986587 () Bool)

(declare-fun tp!2384439 () Bool)

(declare-fun tp!2384437 () Bool)

(assert (=> b!7986587 (= e!4707023 (and tp!2384439 tp!2384437))))

(declare-fun b!7986586 () Bool)

(assert (=> b!7986586 (= e!4707023 tp_is_empty!53645)))

(assert (= (and b!7986242 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 r!24602)))) b!7986586))

(assert (= (and b!7986242 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 r!24602)))) b!7986587))

(assert (= (and b!7986242 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 r!24602)))) b!7986588))

(assert (= (and b!7986242 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 r!24602)))) b!7986589))

(declare-fun b!7986593 () Bool)

(declare-fun e!4707024 () Bool)

(declare-fun tp!2384441 () Bool)

(declare-fun tp!2384440 () Bool)

(assert (=> b!7986593 (= e!4707024 (and tp!2384441 tp!2384440))))

(assert (=> b!7986236 (= tp!2384289 e!4707024)))

(declare-fun b!7986592 () Bool)

(declare-fun tp!2384443 () Bool)

(assert (=> b!7986592 (= e!4707024 tp!2384443)))

(declare-fun b!7986591 () Bool)

(declare-fun tp!2384444 () Bool)

(declare-fun tp!2384442 () Bool)

(assert (=> b!7986591 (= e!4707024 (and tp!2384444 tp!2384442))))

(declare-fun b!7986590 () Bool)

(assert (=> b!7986590 (= e!4707024 tp_is_empty!53645)))

(assert (= (and b!7986236 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 r!24602)))) b!7986590))

(assert (= (and b!7986236 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 r!24602)))) b!7986591))

(assert (= (and b!7986236 ((_ is Star!21551) (regOne!43615 (regTwo!43615 r!24602)))) b!7986592))

(assert (= (and b!7986236 ((_ is Union!21551) (regOne!43615 (regTwo!43615 r!24602)))) b!7986593))

(declare-fun b!7986597 () Bool)

(declare-fun e!4707025 () Bool)

(declare-fun tp!2384446 () Bool)

(declare-fun tp!2384445 () Bool)

(assert (=> b!7986597 (= e!4707025 (and tp!2384446 tp!2384445))))

(assert (=> b!7986236 (= tp!2384288 e!4707025)))

(declare-fun b!7986596 () Bool)

(declare-fun tp!2384448 () Bool)

(assert (=> b!7986596 (= e!4707025 tp!2384448)))

(declare-fun b!7986595 () Bool)

(declare-fun tp!2384449 () Bool)

(declare-fun tp!2384447 () Bool)

(assert (=> b!7986595 (= e!4707025 (and tp!2384449 tp!2384447))))

(declare-fun b!7986594 () Bool)

(assert (=> b!7986594 (= e!4707025 tp_is_empty!53645)))

(assert (= (and b!7986236 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 r!24602)))) b!7986594))

(assert (= (and b!7986236 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 r!24602)))) b!7986595))

(assert (= (and b!7986236 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 r!24602)))) b!7986596))

(assert (= (and b!7986236 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 r!24602)))) b!7986597))

(declare-fun b!7986601 () Bool)

(declare-fun e!4707026 () Bool)

(declare-fun tp!2384451 () Bool)

(declare-fun tp!2384450 () Bool)

(assert (=> b!7986601 (= e!4707026 (and tp!2384451 tp!2384450))))

(assert (=> b!7986227 (= tp!2384281 e!4707026)))

(declare-fun b!7986600 () Bool)

(declare-fun tp!2384453 () Bool)

(assert (=> b!7986600 (= e!4707026 tp!2384453)))

(declare-fun b!7986599 () Bool)

(declare-fun tp!2384454 () Bool)

(declare-fun tp!2384452 () Bool)

(assert (=> b!7986599 (= e!4707026 (and tp!2384454 tp!2384452))))

(declare-fun b!7986598 () Bool)

(assert (=> b!7986598 (= e!4707026 tp_is_empty!53645)))

(assert (= (and b!7986227 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 baseR!116)))) b!7986598))

(assert (= (and b!7986227 ((_ is Concat!30550) (reg!21880 (reg!21880 baseR!116)))) b!7986599))

(assert (= (and b!7986227 ((_ is Star!21551) (reg!21880 (reg!21880 baseR!116)))) b!7986600))

(assert (= (and b!7986227 ((_ is Union!21551) (reg!21880 (reg!21880 baseR!116)))) b!7986601))

(declare-fun b!7986605 () Bool)

(declare-fun e!4707027 () Bool)

(declare-fun tp!2384456 () Bool)

(declare-fun tp!2384455 () Bool)

(assert (=> b!7986605 (= e!4707027 (and tp!2384456 tp!2384455))))

(assert (=> b!7986218 (= tp!2384272 e!4707027)))

(declare-fun b!7986604 () Bool)

(declare-fun tp!2384458 () Bool)

(assert (=> b!7986604 (= e!4707027 tp!2384458)))

(declare-fun b!7986603 () Bool)

(declare-fun tp!2384459 () Bool)

(declare-fun tp!2384457 () Bool)

(assert (=> b!7986603 (= e!4707027 (and tp!2384459 tp!2384457))))

(declare-fun b!7986602 () Bool)

(assert (=> b!7986602 (= e!4707027 tp_is_empty!53645)))

(assert (= (and b!7986218 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 baseR!116)))) b!7986602))

(assert (= (and b!7986218 ((_ is Concat!30550) (regOne!43614 (regOne!43614 baseR!116)))) b!7986603))

(assert (= (and b!7986218 ((_ is Star!21551) (regOne!43614 (regOne!43614 baseR!116)))) b!7986604))

(assert (= (and b!7986218 ((_ is Union!21551) (regOne!43614 (regOne!43614 baseR!116)))) b!7986605))

(declare-fun b!7986609 () Bool)

(declare-fun e!4707028 () Bool)

(declare-fun tp!2384461 () Bool)

(declare-fun tp!2384460 () Bool)

(assert (=> b!7986609 (= e!4707028 (and tp!2384461 tp!2384460))))

(assert (=> b!7986218 (= tp!2384270 e!4707028)))

(declare-fun b!7986608 () Bool)

(declare-fun tp!2384463 () Bool)

(assert (=> b!7986608 (= e!4707028 tp!2384463)))

(declare-fun b!7986607 () Bool)

(declare-fun tp!2384464 () Bool)

(declare-fun tp!2384462 () Bool)

(assert (=> b!7986607 (= e!4707028 (and tp!2384464 tp!2384462))))

(declare-fun b!7986606 () Bool)

(assert (=> b!7986606 (= e!4707028 tp_is_empty!53645)))

(assert (= (and b!7986218 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 baseR!116)))) b!7986606))

(assert (= (and b!7986218 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 baseR!116)))) b!7986607))

(assert (= (and b!7986218 ((_ is Star!21551) (regTwo!43614 (regOne!43614 baseR!116)))) b!7986608))

(assert (= (and b!7986218 ((_ is Union!21551) (regTwo!43614 (regOne!43614 baseR!116)))) b!7986609))

(declare-fun b!7986613 () Bool)

(declare-fun e!4707029 () Bool)

(declare-fun tp!2384466 () Bool)

(declare-fun tp!2384465 () Bool)

(assert (=> b!7986613 (= e!4707029 (and tp!2384466 tp!2384465))))

(assert (=> b!7986244 (= tp!2384299 e!4707029)))

(declare-fun b!7986612 () Bool)

(declare-fun tp!2384468 () Bool)

(assert (=> b!7986612 (= e!4707029 tp!2384468)))

(declare-fun b!7986611 () Bool)

(declare-fun tp!2384469 () Bool)

(declare-fun tp!2384467 () Bool)

(assert (=> b!7986611 (= e!4707029 (and tp!2384469 tp!2384467))))

(declare-fun b!7986610 () Bool)

(assert (=> b!7986610 (= e!4707029 tp_is_empty!53645)))

(assert (= (and b!7986244 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 r!24602)))) b!7986610))

(assert (= (and b!7986244 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 r!24602)))) b!7986611))

(assert (= (and b!7986244 ((_ is Star!21551) (regOne!43615 (regTwo!43614 r!24602)))) b!7986612))

(assert (= (and b!7986244 ((_ is Union!21551) (regOne!43615 (regTwo!43614 r!24602)))) b!7986613))

(declare-fun b!7986617 () Bool)

(declare-fun e!4707030 () Bool)

(declare-fun tp!2384471 () Bool)

(declare-fun tp!2384470 () Bool)

(assert (=> b!7986617 (= e!4707030 (and tp!2384471 tp!2384470))))

(assert (=> b!7986244 (= tp!2384298 e!4707030)))

(declare-fun b!7986616 () Bool)

(declare-fun tp!2384473 () Bool)

(assert (=> b!7986616 (= e!4707030 tp!2384473)))

(declare-fun b!7986615 () Bool)

(declare-fun tp!2384474 () Bool)

(declare-fun tp!2384472 () Bool)

(assert (=> b!7986615 (= e!4707030 (and tp!2384474 tp!2384472))))

(declare-fun b!7986614 () Bool)

(assert (=> b!7986614 (= e!4707030 tp_is_empty!53645)))

(assert (= (and b!7986244 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 r!24602)))) b!7986614))

(assert (= (and b!7986244 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 r!24602)))) b!7986615))

(assert (= (and b!7986244 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 r!24602)))) b!7986616))

(assert (= (and b!7986244 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 r!24602)))) b!7986617))

(declare-fun b!7986621 () Bool)

(declare-fun e!4707031 () Bool)

(declare-fun tp!2384476 () Bool)

(declare-fun tp!2384475 () Bool)

(assert (=> b!7986621 (= e!4707031 (and tp!2384476 tp!2384475))))

(assert (=> b!7986235 (= tp!2384291 e!4707031)))

(declare-fun b!7986620 () Bool)

(declare-fun tp!2384478 () Bool)

(assert (=> b!7986620 (= e!4707031 tp!2384478)))

(declare-fun b!7986619 () Bool)

(declare-fun tp!2384479 () Bool)

(declare-fun tp!2384477 () Bool)

(assert (=> b!7986619 (= e!4707031 (and tp!2384479 tp!2384477))))

(declare-fun b!7986618 () Bool)

(assert (=> b!7986618 (= e!4707031 tp_is_empty!53645)))

(assert (= (and b!7986235 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 r!24602)))) b!7986618))

(assert (= (and b!7986235 ((_ is Concat!30550) (reg!21880 (regTwo!43615 r!24602)))) b!7986619))

(assert (= (and b!7986235 ((_ is Star!21551) (reg!21880 (regTwo!43615 r!24602)))) b!7986620))

(assert (= (and b!7986235 ((_ is Union!21551) (reg!21880 (regTwo!43615 r!24602)))) b!7986621))

(declare-fun b!7986625 () Bool)

(declare-fun e!4707032 () Bool)

(declare-fun tp!2384481 () Bool)

(declare-fun tp!2384480 () Bool)

(assert (=> b!7986625 (= e!4707032 (and tp!2384481 tp!2384480))))

(assert (=> b!7986226 (= tp!2384282 e!4707032)))

(declare-fun b!7986624 () Bool)

(declare-fun tp!2384483 () Bool)

(assert (=> b!7986624 (= e!4707032 tp!2384483)))

(declare-fun b!7986623 () Bool)

(declare-fun tp!2384484 () Bool)

(declare-fun tp!2384482 () Bool)

(assert (=> b!7986623 (= e!4707032 (and tp!2384484 tp!2384482))))

(declare-fun b!7986622 () Bool)

(assert (=> b!7986622 (= e!4707032 tp_is_empty!53645)))

(assert (= (and b!7986226 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 baseR!116)))) b!7986622))

(assert (= (and b!7986226 ((_ is Concat!30550) (regOne!43614 (reg!21880 baseR!116)))) b!7986623))

(assert (= (and b!7986226 ((_ is Star!21551) (regOne!43614 (reg!21880 baseR!116)))) b!7986624))

(assert (= (and b!7986226 ((_ is Union!21551) (regOne!43614 (reg!21880 baseR!116)))) b!7986625))

(declare-fun b!7986629 () Bool)

(declare-fun e!4707033 () Bool)

(declare-fun tp!2384486 () Bool)

(declare-fun tp!2384485 () Bool)

(assert (=> b!7986629 (= e!4707033 (and tp!2384486 tp!2384485))))

(assert (=> b!7986226 (= tp!2384280 e!4707033)))

(declare-fun b!7986628 () Bool)

(declare-fun tp!2384488 () Bool)

(assert (=> b!7986628 (= e!4707033 tp!2384488)))

(declare-fun b!7986627 () Bool)

(declare-fun tp!2384489 () Bool)

(declare-fun tp!2384487 () Bool)

(assert (=> b!7986627 (= e!4707033 (and tp!2384489 tp!2384487))))

(declare-fun b!7986626 () Bool)

(assert (=> b!7986626 (= e!4707033 tp_is_empty!53645)))

(assert (= (and b!7986226 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 baseR!116)))) b!7986626))

(assert (= (and b!7986226 ((_ is Concat!30550) (regTwo!43614 (reg!21880 baseR!116)))) b!7986627))

(assert (= (and b!7986226 ((_ is Star!21551) (regTwo!43614 (reg!21880 baseR!116)))) b!7986628))

(assert (= (and b!7986226 ((_ is Union!21551) (regTwo!43614 (reg!21880 baseR!116)))) b!7986629))

(declare-fun b!7986633 () Bool)

(declare-fun e!4707034 () Bool)

(declare-fun tp!2384491 () Bool)

(declare-fun tp!2384490 () Bool)

(assert (=> b!7986633 (= e!4707034 (and tp!2384491 tp!2384490))))

(assert (=> b!7986220 (= tp!2384269 e!4707034)))

(declare-fun b!7986632 () Bool)

(declare-fun tp!2384493 () Bool)

(assert (=> b!7986632 (= e!4707034 tp!2384493)))

(declare-fun b!7986631 () Bool)

(declare-fun tp!2384494 () Bool)

(declare-fun tp!2384492 () Bool)

(assert (=> b!7986631 (= e!4707034 (and tp!2384494 tp!2384492))))

(declare-fun b!7986630 () Bool)

(assert (=> b!7986630 (= e!4707034 tp_is_empty!53645)))

(assert (= (and b!7986220 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 baseR!116)))) b!7986630))

(assert (= (and b!7986220 ((_ is Concat!30550) (regOne!43615 (regOne!43614 baseR!116)))) b!7986631))

(assert (= (and b!7986220 ((_ is Star!21551) (regOne!43615 (regOne!43614 baseR!116)))) b!7986632))

(assert (= (and b!7986220 ((_ is Union!21551) (regOne!43615 (regOne!43614 baseR!116)))) b!7986633))

(declare-fun b!7986637 () Bool)

(declare-fun e!4707035 () Bool)

(declare-fun tp!2384496 () Bool)

(declare-fun tp!2384495 () Bool)

(assert (=> b!7986637 (= e!4707035 (and tp!2384496 tp!2384495))))

(assert (=> b!7986220 (= tp!2384268 e!4707035)))

(declare-fun b!7986636 () Bool)

(declare-fun tp!2384498 () Bool)

(assert (=> b!7986636 (= e!4707035 tp!2384498)))

(declare-fun b!7986635 () Bool)

(declare-fun tp!2384499 () Bool)

(declare-fun tp!2384497 () Bool)

(assert (=> b!7986635 (= e!4707035 (and tp!2384499 tp!2384497))))

(declare-fun b!7986634 () Bool)

(assert (=> b!7986634 (= e!4707035 tp_is_empty!53645)))

(assert (= (and b!7986220 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 baseR!116)))) b!7986634))

(assert (= (and b!7986220 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 baseR!116)))) b!7986635))

(assert (= (and b!7986220 ((_ is Star!21551) (regTwo!43615 (regOne!43614 baseR!116)))) b!7986636))

(assert (= (and b!7986220 ((_ is Union!21551) (regTwo!43615 (regOne!43614 baseR!116)))) b!7986637))

(declare-fun b!7986641 () Bool)

(declare-fun e!4707036 () Bool)

(declare-fun tp!2384501 () Bool)

(declare-fun tp!2384500 () Bool)

(assert (=> b!7986641 (= e!4707036 (and tp!2384501 tp!2384500))))

(assert (=> b!7986228 (= tp!2384279 e!4707036)))

(declare-fun b!7986640 () Bool)

(declare-fun tp!2384503 () Bool)

(assert (=> b!7986640 (= e!4707036 tp!2384503)))

(declare-fun b!7986639 () Bool)

(declare-fun tp!2384504 () Bool)

(declare-fun tp!2384502 () Bool)

(assert (=> b!7986639 (= e!4707036 (and tp!2384504 tp!2384502))))

(declare-fun b!7986638 () Bool)

(assert (=> b!7986638 (= e!4707036 tp_is_empty!53645)))

(assert (= (and b!7986228 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 baseR!116)))) b!7986638))

(assert (= (and b!7986228 ((_ is Concat!30550) (regOne!43615 (reg!21880 baseR!116)))) b!7986639))

(assert (= (and b!7986228 ((_ is Star!21551) (regOne!43615 (reg!21880 baseR!116)))) b!7986640))

(assert (= (and b!7986228 ((_ is Union!21551) (regOne!43615 (reg!21880 baseR!116)))) b!7986641))

(declare-fun b!7986645 () Bool)

(declare-fun e!4707037 () Bool)

(declare-fun tp!2384506 () Bool)

(declare-fun tp!2384505 () Bool)

(assert (=> b!7986645 (= e!4707037 (and tp!2384506 tp!2384505))))

(assert (=> b!7986228 (= tp!2384278 e!4707037)))

(declare-fun b!7986644 () Bool)

(declare-fun tp!2384508 () Bool)

(assert (=> b!7986644 (= e!4707037 tp!2384508)))

(declare-fun b!7986643 () Bool)

(declare-fun tp!2384509 () Bool)

(declare-fun tp!2384507 () Bool)

(assert (=> b!7986643 (= e!4707037 (and tp!2384509 tp!2384507))))

(declare-fun b!7986642 () Bool)

(assert (=> b!7986642 (= e!4707037 tp_is_empty!53645)))

(assert (= (and b!7986228 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 baseR!116)))) b!7986642))

(assert (= (and b!7986228 ((_ is Concat!30550) (regTwo!43615 (reg!21880 baseR!116)))) b!7986643))

(assert (= (and b!7986228 ((_ is Star!21551) (regTwo!43615 (reg!21880 baseR!116)))) b!7986644))

(assert (= (and b!7986228 ((_ is Union!21551) (regTwo!43615 (reg!21880 baseR!116)))) b!7986645))

(declare-fun b!7986649 () Bool)

(declare-fun e!4707038 () Bool)

(declare-fun tp!2384511 () Bool)

(declare-fun tp!2384510 () Bool)

(assert (=> b!7986649 (= e!4707038 (and tp!2384511 tp!2384510))))

(assert (=> b!7986219 (= tp!2384271 e!4707038)))

(declare-fun b!7986648 () Bool)

(declare-fun tp!2384513 () Bool)

(assert (=> b!7986648 (= e!4707038 tp!2384513)))

(declare-fun b!7986647 () Bool)

(declare-fun tp!2384514 () Bool)

(declare-fun tp!2384512 () Bool)

(assert (=> b!7986647 (= e!4707038 (and tp!2384514 tp!2384512))))

(declare-fun b!7986646 () Bool)

(assert (=> b!7986646 (= e!4707038 tp_is_empty!53645)))

(assert (= (and b!7986219 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 baseR!116)))) b!7986646))

(assert (= (and b!7986219 ((_ is Concat!30550) (reg!21880 (regOne!43614 baseR!116)))) b!7986647))

(assert (= (and b!7986219 ((_ is Star!21551) (reg!21880 (regOne!43614 baseR!116)))) b!7986648))

(assert (= (and b!7986219 ((_ is Union!21551) (reg!21880 (regOne!43614 baseR!116)))) b!7986649))

(declare-fun b!7986653 () Bool)

(declare-fun e!4707039 () Bool)

(declare-fun tp!2384516 () Bool)

(declare-fun tp!2384515 () Bool)

(assert (=> b!7986653 (= e!4707039 (and tp!2384516 tp!2384515))))

(assert (=> b!7986204 (= tp!2384258 e!4707039)))

(declare-fun b!7986652 () Bool)

(declare-fun tp!2384518 () Bool)

(assert (=> b!7986652 (= e!4707039 tp!2384518)))

(declare-fun b!7986651 () Bool)

(declare-fun tp!2384519 () Bool)

(declare-fun tp!2384517 () Bool)

(assert (=> b!7986651 (= e!4707039 (and tp!2384519 tp!2384517))))

(declare-fun b!7986650 () Bool)

(assert (=> b!7986650 (= e!4707039 tp_is_empty!53645)))

(assert (= (and b!7986204 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 baseR!116)))) b!7986650))

(assert (= (and b!7986204 ((_ is Concat!30550) (regOne!43614 (regOne!43615 baseR!116)))) b!7986651))

(assert (= (and b!7986204 ((_ is Star!21551) (regOne!43614 (regOne!43615 baseR!116)))) b!7986652))

(assert (= (and b!7986204 ((_ is Union!21551) (regOne!43614 (regOne!43615 baseR!116)))) b!7986653))

(declare-fun b!7986657 () Bool)

(declare-fun e!4707040 () Bool)

(declare-fun tp!2384521 () Bool)

(declare-fun tp!2384520 () Bool)

(assert (=> b!7986657 (= e!4707040 (and tp!2384521 tp!2384520))))

(assert (=> b!7986204 (= tp!2384256 e!4707040)))

(declare-fun b!7986656 () Bool)

(declare-fun tp!2384523 () Bool)

(assert (=> b!7986656 (= e!4707040 tp!2384523)))

(declare-fun b!7986655 () Bool)

(declare-fun tp!2384524 () Bool)

(declare-fun tp!2384522 () Bool)

(assert (=> b!7986655 (= e!4707040 (and tp!2384524 tp!2384522))))

(declare-fun b!7986654 () Bool)

(assert (=> b!7986654 (= e!4707040 tp_is_empty!53645)))

(assert (= (and b!7986204 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 baseR!116)))) b!7986654))

(assert (= (and b!7986204 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 baseR!116)))) b!7986655))

(assert (= (and b!7986204 ((_ is Star!21551) (regTwo!43614 (regOne!43615 baseR!116)))) b!7986656))

(assert (= (and b!7986204 ((_ is Union!21551) (regTwo!43614 (regOne!43615 baseR!116)))) b!7986657))

(declare-fun b!7986661 () Bool)

(declare-fun e!4707041 () Bool)

(declare-fun tp!2384526 () Bool)

(declare-fun tp!2384525 () Bool)

(assert (=> b!7986661 (= e!4707041 (and tp!2384526 tp!2384525))))

(assert (=> b!7986205 (= tp!2384257 e!4707041)))

(declare-fun b!7986660 () Bool)

(declare-fun tp!2384528 () Bool)

(assert (=> b!7986660 (= e!4707041 tp!2384528)))

(declare-fun b!7986659 () Bool)

(declare-fun tp!2384529 () Bool)

(declare-fun tp!2384527 () Bool)

(assert (=> b!7986659 (= e!4707041 (and tp!2384529 tp!2384527))))

(declare-fun b!7986658 () Bool)

(assert (=> b!7986658 (= e!4707041 tp_is_empty!53645)))

(assert (= (and b!7986205 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 baseR!116)))) b!7986658))

(assert (= (and b!7986205 ((_ is Concat!30550) (reg!21880 (regOne!43615 baseR!116)))) b!7986659))

(assert (= (and b!7986205 ((_ is Star!21551) (reg!21880 (regOne!43615 baseR!116)))) b!7986660))

(assert (= (and b!7986205 ((_ is Union!21551) (reg!21880 (regOne!43615 baseR!116)))) b!7986661))

(declare-fun b!7986665 () Bool)

(declare-fun e!4707042 () Bool)

(declare-fun tp!2384531 () Bool)

(declare-fun tp!2384530 () Bool)

(assert (=> b!7986665 (= e!4707042 (and tp!2384531 tp!2384530))))

(assert (=> b!7986238 (= tp!2384297 e!4707042)))

(declare-fun b!7986664 () Bool)

(declare-fun tp!2384533 () Bool)

(assert (=> b!7986664 (= e!4707042 tp!2384533)))

(declare-fun b!7986663 () Bool)

(declare-fun tp!2384534 () Bool)

(declare-fun tp!2384532 () Bool)

(assert (=> b!7986663 (= e!4707042 (and tp!2384534 tp!2384532))))

(declare-fun b!7986662 () Bool)

(assert (=> b!7986662 (= e!4707042 tp_is_empty!53645)))

(assert (= (and b!7986238 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 r!24602)))) b!7986662))

(assert (= (and b!7986238 ((_ is Concat!30550) (regOne!43614 (regOne!43614 r!24602)))) b!7986663))

(assert (= (and b!7986238 ((_ is Star!21551) (regOne!43614 (regOne!43614 r!24602)))) b!7986664))

(assert (= (and b!7986238 ((_ is Union!21551) (regOne!43614 (regOne!43614 r!24602)))) b!7986665))

(declare-fun b!7986669 () Bool)

(declare-fun e!4707043 () Bool)

(declare-fun tp!2384536 () Bool)

(declare-fun tp!2384535 () Bool)

(assert (=> b!7986669 (= e!4707043 (and tp!2384536 tp!2384535))))

(assert (=> b!7986238 (= tp!2384295 e!4707043)))

(declare-fun b!7986668 () Bool)

(declare-fun tp!2384538 () Bool)

(assert (=> b!7986668 (= e!4707043 tp!2384538)))

(declare-fun b!7986667 () Bool)

(declare-fun tp!2384539 () Bool)

(declare-fun tp!2384537 () Bool)

(assert (=> b!7986667 (= e!4707043 (and tp!2384539 tp!2384537))))

(declare-fun b!7986666 () Bool)

(assert (=> b!7986666 (= e!4707043 tp_is_empty!53645)))

(assert (= (and b!7986238 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 r!24602)))) b!7986666))

(assert (= (and b!7986238 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 r!24602)))) b!7986667))

(assert (= (and b!7986238 ((_ is Star!21551) (regTwo!43614 (regOne!43614 r!24602)))) b!7986668))

(assert (= (and b!7986238 ((_ is Union!21551) (regTwo!43614 (regOne!43614 r!24602)))) b!7986669))

(declare-fun b!7986673 () Bool)

(declare-fun e!4707044 () Bool)

(declare-fun tp!2384541 () Bool)

(declare-fun tp!2384540 () Bool)

(assert (=> b!7986673 (= e!4707044 (and tp!2384541 tp!2384540))))

(assert (=> b!7986239 (= tp!2384296 e!4707044)))

(declare-fun b!7986672 () Bool)

(declare-fun tp!2384543 () Bool)

(assert (=> b!7986672 (= e!4707044 tp!2384543)))

(declare-fun b!7986671 () Bool)

(declare-fun tp!2384544 () Bool)

(declare-fun tp!2384542 () Bool)

(assert (=> b!7986671 (= e!4707044 (and tp!2384544 tp!2384542))))

(declare-fun b!7986670 () Bool)

(assert (=> b!7986670 (= e!4707044 tp_is_empty!53645)))

(assert (= (and b!7986239 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 r!24602)))) b!7986670))

(assert (= (and b!7986239 ((_ is Concat!30550) (reg!21880 (regOne!43614 r!24602)))) b!7986671))

(assert (= (and b!7986239 ((_ is Star!21551) (reg!21880 (regOne!43614 r!24602)))) b!7986672))

(assert (= (and b!7986239 ((_ is Union!21551) (reg!21880 (regOne!43614 r!24602)))) b!7986673))

(declare-fun b!7986677 () Bool)

(declare-fun e!4707045 () Bool)

(declare-fun tp!2384546 () Bool)

(declare-fun tp!2384545 () Bool)

(assert (=> b!7986677 (= e!4707045 (and tp!2384546 tp!2384545))))

(assert (=> b!7986206 (= tp!2384255 e!4707045)))

(declare-fun b!7986676 () Bool)

(declare-fun tp!2384548 () Bool)

(assert (=> b!7986676 (= e!4707045 tp!2384548)))

(declare-fun b!7986675 () Bool)

(declare-fun tp!2384549 () Bool)

(declare-fun tp!2384547 () Bool)

(assert (=> b!7986675 (= e!4707045 (and tp!2384549 tp!2384547))))

(declare-fun b!7986674 () Bool)

(assert (=> b!7986674 (= e!4707045 tp_is_empty!53645)))

(assert (= (and b!7986206 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 baseR!116)))) b!7986674))

(assert (= (and b!7986206 ((_ is Concat!30550) (regOne!43615 (regOne!43615 baseR!116)))) b!7986675))

(assert (= (and b!7986206 ((_ is Star!21551) (regOne!43615 (regOne!43615 baseR!116)))) b!7986676))

(assert (= (and b!7986206 ((_ is Union!21551) (regOne!43615 (regOne!43615 baseR!116)))) b!7986677))

(declare-fun b!7986686 () Bool)

(declare-fun e!4707052 () Bool)

(declare-fun tp!2384551 () Bool)

(declare-fun tp!2384550 () Bool)

(assert (=> b!7986686 (= e!4707052 (and tp!2384551 tp!2384550))))

(assert (=> b!7986206 (= tp!2384254 e!4707052)))

(declare-fun b!7986684 () Bool)

(declare-fun tp!2384553 () Bool)

(assert (=> b!7986684 (= e!4707052 tp!2384553)))

(declare-fun b!7986683 () Bool)

(declare-fun tp!2384554 () Bool)

(declare-fun tp!2384552 () Bool)

(assert (=> b!7986683 (= e!4707052 (and tp!2384554 tp!2384552))))

(declare-fun b!7986681 () Bool)

(assert (=> b!7986681 (= e!4707052 tp_is_empty!53645)))

(assert (= (and b!7986206 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 baseR!116)))) b!7986681))

(assert (= (and b!7986206 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 baseR!116)))) b!7986683))

(assert (= (and b!7986206 ((_ is Star!21551) (regTwo!43615 (regOne!43615 baseR!116)))) b!7986684))

(assert (= (and b!7986206 ((_ is Union!21551) (regTwo!43615 (regOne!43615 baseR!116)))) b!7986686))

(check-sat (not b!7986683) (not b!7986345) (not b!7986481) (not b!7986568) (not b!7986668) (not b!7986655) (not b!7986484) (not b!7986591) (not b!7986609) (not bm!741590) (not d!2383856) (not b!7986543) (not b!7986252) (not bm!741563) (not b!7986535) (not b!7986337) (not d!2383888) (not b!7986561) (not b!7986623) (not d!2383884) (not b!7986587) (not d!2383850) (not b!7986353) (not bm!741604) (not b!7986548) (not b!7986513) (not bm!741564) (not b!7986422) (not b!7986454) (not bm!741570) (not b!7986496) (not bm!741602) (not b!7986500) (not b!7986425) (not b!7986489) (not b!7986557) (not bm!741575) (not bm!741592) (not b!7986536) (not b!7986664) (not b!7986474) (not d!2383898) (not b!7986617) (not b!7986435) (not b!7986577) (not b!7986485) (not b!7986346) (not b!7986267) (not d!2383814) (not b!7986467) (not b!7986373) (not b!7986342) (not b!7986492) (not b!7986669) (not b!7986338) (not b!7986541) (not bm!741598) (not b!7986593) (not b!7986580) (not d!2383812) (not b!7986403) (not b!7986684) (not b!7986433) (not b!7986335) (not b!7986665) (not d!2383900) (not b!7986637) (not b!7986354) (not b!7986653) (not b!7986555) (not bm!741568) (not b!7986268) (not b!7986358) (not b!7986686) (not bm!741560) (not b!7986493) (not b!7986581) (not b!7986588) (not b!7986478) (not b!7986515) (not b!7986600) (not b!7986608) (not b!7986488) (not b!7986482) tp_is_empty!53645 (not b!7986585) (not d!2383886) (not b!7986507) (not b!7986605) (not b!7986660) (not d!2383882) (not b!7986421) (not b!7986336) (not b!7986627) (not b!7986504) (not b!7986280) (not b!7986592) (not b!7986628) (not b!7986576) (not b!7986649) (not d!2383828) (not b!7986506) (not b!7986648) (not d!2383904) (not bm!741587) (not d!2383912) (not b!7986272) (not b!7986641) (not b!7986616) (not b!7986473) (not b!7986455) (not b!7986562) (not b!7986663) (not b!7986469) (not b!7986629) (not b!7986636) (not d!2383842) (not b!7986347) (not b!7986556) (not b!7986519) (not b!7986245) (not b!7986349) (not b!7986601) (not b!7986563) (not b!7986599) (not b!7986490) (not bm!741565) (not b!7986379) (not b!7986261) (not b!7986396) (not b!7986607) (not bm!741558) (not b!7986428) (not b!7986625) (not b!7986603) (not b!7986671) (not b!7986518) (not d!2383920) (not b!7986667) (not b!7986640) (not b!7986521) (not b!7986542) (not b!7986371) (not b!7986537) (not b!7986604) (not b!7986652) (not b!7986613) (not b!7986547) (not b!7986357) (not b!7986511) (not b!7986432) (not b!7986453) (not b!7986657) (not b!7986615) (not bm!741588) (not d!2383878) (not b!7986388) (not bm!741567) (not d!2383876) (not bm!741579) (not b!7986651) (not b!7986510) (not b!7986631) (not b!7986647) (not b!7986579) (not b!7986595) (not b!7986341) (not b!7986659) (not b!7986523) (not b!7986672) (not bm!741562) (not b!7986676) (not b!7986294) (not b!7986571) (not b!7986596) (not b!7986526) (not b!7986572) (not b!7986525) (not b!7986575) (not b!7986673) (not d!2383816) (not b!7986675) (not bm!741608) (not b!7986502) (not b!7986531) (not b!7986461) (not b!7986431) (not d!2383848) (not bm!741586) (not b!7986447) (not b!7986274) (not bm!741573) (not b!7986494) (not b!7986583) (not b!7986441) (not b!7986472) (not d!2383864) (not b!7986569) (not d!2383854) (not b!7986633) (not b!7986408) (not b!7986619) (not b!7986392) (not b!7986639) (not b!7986584) (not b!7986530) (not b!7986632) (not b!7986440) (not b!7986471) (not d!2383844) (not b!7986573) (not b!7986415) (not bm!741569) (not bm!741581) (not b!7986611) (not b!7986395) (not bm!741572) (not b!7986436) (not b!7986300) (not b!7986465) (not d!2383906) (not b!7986517) (not b!7986527) (not bm!741578) (not d!2383860) (not d!2383874) (not b!7986509) (not b!7986497) (not b!7986656) (not b!7986621) (not b!7986505) (not bm!741606) (not b!7986624) (not bm!741597) (not b!7986677) (not bm!741594) (not b!7986589) (not b!7986258) (not b!7986635) (not b!7986439) (not b!7986427) (not b!7986289) (not b!7986498) (not b!7986567) (not b!7986309) (not bm!741595) (not b!7986501) (not b!7986644) (not b!7986476) (not b!7986661) (not b!7986597) (not d!2383880) (not b!7986612) (not b!7986645) (not b!7986620) (not b!7986529) (not b!7986549) (not bm!741566) (not b!7986350) (not b!7986463) (not b!7986477) (not bm!741600) (not d!2383896) (not b!7986480) (not bm!741576) (not d!2383858) (not b!7986643) (not b!7986365) (not b!7986522) (not b!7986468) (not b!7986514) (not b!7986486))
(check-sat)
(get-model)

(declare-fun c!1466761 () Bool)

(declare-fun bm!741662 () Bool)

(declare-fun call!741669 () Regex!21551)

(declare-fun c!1466763 () Bool)

(declare-fun c!1466759 () Bool)

(assert (=> bm!741662 (= call!741669 (derivativeStep!6571 (ite c!1466759 (regTwo!43615 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466761 (reg!21880 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466763 (regTwo!43614 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))))) call!741550))))

(declare-fun call!741670 () Regex!21551)

(declare-fun call!741668 () Regex!21551)

(declare-fun b!7987091 () Bool)

(declare-fun e!4707227 () Regex!21551)

(assert (=> b!7987091 (= e!4707227 (Union!21551 (Concat!30550 call!741670 (regTwo!43614 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))) call!741668))))

(declare-fun d!2384052 () Bool)

(declare-fun lt!2711982 () Regex!21551)

(assert (=> d!2384052 (validRegex!11855 lt!2711982)))

(declare-fun e!4707226 () Regex!21551)

(assert (=> d!2384052 (= lt!2711982 e!4707226)))

(declare-fun c!1466762 () Bool)

(assert (=> d!2384052 (= c!1466762 (or ((_ is EmptyExpr!21551) (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))) ((_ is EmptyLang!21551) (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(assert (=> d!2384052 (validRegex!11855 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))))

(assert (=> d!2384052 (= (derivativeStep!6571 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)) call!741550) lt!2711982)))

(declare-fun bm!741663 () Bool)

(declare-fun call!741667 () Regex!21551)

(assert (=> bm!741663 (= call!741667 call!741669)))

(declare-fun b!7987092 () Bool)

(assert (=> b!7987092 (= c!1466759 ((_ is Union!21551) (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun e!4707229 () Regex!21551)

(declare-fun e!4707228 () Regex!21551)

(assert (=> b!7987092 (= e!4707229 e!4707228)))

(declare-fun b!7987093 () Bool)

(assert (=> b!7987093 (= e!4707229 (ite (= call!741550 (c!1466508 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987094 () Bool)

(declare-fun e!4707230 () Regex!21551)

(assert (=> b!7987094 (= e!4707228 e!4707230)))

(assert (=> b!7987094 (= c!1466761 ((_ is Star!21551) (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7987095 () Bool)

(assert (=> b!7987095 (= e!4707226 e!4707229)))

(declare-fun c!1466760 () Bool)

(assert (=> b!7987095 (= c!1466760 ((_ is ElementMatch!21551) (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7987096 () Bool)

(assert (=> b!7987096 (= c!1466763 (nullable!9644 (regOne!43614 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(assert (=> b!7987096 (= e!4707230 e!4707227)))

(declare-fun bm!741664 () Bool)

(assert (=> bm!741664 (= call!741670 (derivativeStep!6571 (ite c!1466759 (regOne!43615 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))) call!741550))))

(declare-fun b!7987097 () Bool)

(assert (=> b!7987097 (= e!4707227 (Union!21551 (Concat!30550 call!741668 (regTwo!43614 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602)))) EmptyLang!21551))))

(declare-fun bm!741665 () Bool)

(assert (=> bm!741665 (= call!741668 call!741667)))

(declare-fun b!7987098 () Bool)

(assert (=> b!7987098 (= e!4707230 (Concat!30550 call!741667 (ite c!1466664 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7987099 () Bool)

(assert (=> b!7987099 (= e!4707228 (Union!21551 call!741670 call!741669))))

(declare-fun b!7987100 () Bool)

(assert (=> b!7987100 (= e!4707226 EmptyLang!21551)))

(assert (= (and d!2384052 c!1466762) b!7987100))

(assert (= (and d!2384052 (not c!1466762)) b!7987095))

(assert (= (and b!7987095 c!1466760) b!7987093))

(assert (= (and b!7987095 (not c!1466760)) b!7987092))

(assert (= (and b!7987092 c!1466759) b!7987099))

(assert (= (and b!7987092 (not c!1466759)) b!7987094))

(assert (= (and b!7987094 c!1466761) b!7987098))

(assert (= (and b!7987094 (not c!1466761)) b!7987096))

(assert (= (and b!7987096 c!1466763) b!7987091))

(assert (= (and b!7987096 (not c!1466763)) b!7987097))

(assert (= (or b!7987091 b!7987097) bm!741665))

(assert (= (or b!7987098 bm!741665) bm!741663))

(assert (= (or b!7987099 bm!741663) bm!741662))

(assert (= (or b!7987099 b!7987091) bm!741664))

(declare-fun m!8361054 () Bool)

(assert (=> bm!741662 m!8361054))

(declare-fun m!8361056 () Bool)

(assert (=> d!2384052 m!8361056))

(declare-fun m!8361058 () Bool)

(assert (=> d!2384052 m!8361058))

(declare-fun m!8361060 () Bool)

(assert (=> b!7987096 m!8361060))

(declare-fun m!8361062 () Bool)

(assert (=> bm!741664 m!8361062))

(assert (=> bm!741600 d!2384052))

(declare-fun b!7987101 () Bool)

(declare-fun res!3161482 () Bool)

(declare-fun e!4707234 () Bool)

(assert (=> b!7987101 (=> (not res!3161482) (not e!4707234))))

(declare-fun call!741671 () Bool)

(assert (=> b!7987101 (= res!3161482 call!741671)))

(declare-fun e!4707236 () Bool)

(assert (=> b!7987101 (= e!4707236 e!4707234)))

(declare-fun bm!741666 () Bool)

(declare-fun c!1466764 () Bool)

(declare-fun call!741673 () Bool)

(assert (=> bm!741666 (= call!741673 (validRegex!11855 (ite c!1466764 (regTwo!43615 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))) (regTwo!43614 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))))))))

(declare-fun b!7987102 () Bool)

(declare-fun e!4707237 () Bool)

(declare-fun e!4707231 () Bool)

(assert (=> b!7987102 (= e!4707237 e!4707231)))

(declare-fun res!3161483 () Bool)

(assert (=> b!7987102 (=> (not res!3161483) (not e!4707231))))

(assert (=> b!7987102 (= res!3161483 call!741671)))

(declare-fun bm!741667 () Bool)

(declare-fun call!741672 () Bool)

(assert (=> bm!741667 (= call!741671 call!741672)))

(declare-fun d!2384054 () Bool)

(declare-fun res!3161480 () Bool)

(declare-fun e!4707235 () Bool)

(assert (=> d!2384054 (=> res!3161480 e!4707235)))

(assert (=> d!2384054 (= res!3161480 ((_ is ElementMatch!21551) (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))))))

(assert (=> d!2384054 (= (validRegex!11855 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))) e!4707235)))

(declare-fun b!7987103 () Bool)

(assert (=> b!7987103 (= e!4707234 call!741673)))

(declare-fun b!7987104 () Bool)

(declare-fun e!4707232 () Bool)

(assert (=> b!7987104 (= e!4707235 e!4707232)))

(declare-fun c!1466765 () Bool)

(assert (=> b!7987104 (= c!1466765 ((_ is Star!21551) (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))))))

(declare-fun bm!741668 () Bool)

(assert (=> bm!741668 (= call!741672 (validRegex!11855 (ite c!1466765 (reg!21880 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))) (ite c!1466764 (regOne!43615 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))) (regOne!43614 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619)))))))))

(declare-fun b!7987105 () Bool)

(assert (=> b!7987105 (= e!4707232 e!4707236)))

(assert (=> b!7987105 (= c!1466764 ((_ is Union!21551) (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))))))

(declare-fun b!7987106 () Bool)

(declare-fun e!4707233 () Bool)

(assert (=> b!7987106 (= e!4707232 e!4707233)))

(declare-fun res!3161479 () Bool)

(assert (=> b!7987106 (= res!3161479 (not (nullable!9644 (reg!21880 (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619))))))))

(assert (=> b!7987106 (=> (not res!3161479) (not e!4707233))))

(declare-fun b!7987107 () Bool)

(assert (=> b!7987107 (= e!4707231 call!741673)))

(declare-fun b!7987108 () Bool)

(assert (=> b!7987108 (= e!4707233 call!741672)))

(declare-fun b!7987109 () Bool)

(declare-fun res!3161481 () Bool)

(assert (=> b!7987109 (=> res!3161481 e!4707237)))

(assert (=> b!7987109 (= res!3161481 (not ((_ is Concat!30550) (ite c!1466657 (regTwo!43615 lt!2711619) (regTwo!43614 lt!2711619)))))))

(assert (=> b!7987109 (= e!4707236 e!4707237)))

(assert (= (and d!2384054 (not res!3161480)) b!7987104))

(assert (= (and b!7987104 c!1466765) b!7987106))

(assert (= (and b!7987104 (not c!1466765)) b!7987105))

(assert (= (and b!7987106 res!3161479) b!7987108))

(assert (= (and b!7987105 c!1466764) b!7987101))

(assert (= (and b!7987105 (not c!1466764)) b!7987109))

(assert (= (and b!7987101 res!3161482) b!7987103))

(assert (= (and b!7987109 (not res!3161481)) b!7987102))

(assert (= (and b!7987102 res!3161483) b!7987107))

(assert (= (or b!7987103 b!7987107) bm!741666))

(assert (= (or b!7987101 b!7987102) bm!741667))

(assert (= (or b!7987108 bm!741667) bm!741668))

(declare-fun m!8361064 () Bool)

(assert (=> bm!741666 m!8361064))

(declare-fun m!8361066 () Bool)

(assert (=> bm!741668 m!8361066))

(declare-fun m!8361068 () Bool)

(assert (=> b!7987106 m!8361068))

(assert (=> bm!741592 d!2384054))

(declare-fun d!2384056 () Bool)

(assert (=> d!2384056 (= (nullable!9644 (reg!21880 lt!2711613)) (nullableFct!3814 (reg!21880 lt!2711613)))))

(declare-fun bs!1970337 () Bool)

(assert (= bs!1970337 d!2384056))

(declare-fun m!8361070 () Bool)

(assert (=> bs!1970337 m!8361070))

(assert (=> b!7986289 d!2384056))

(declare-fun b!7987110 () Bool)

(declare-fun res!3161487 () Bool)

(declare-fun e!4707241 () Bool)

(assert (=> b!7987110 (=> (not res!3161487) (not e!4707241))))

(declare-fun call!741674 () Bool)

(assert (=> b!7987110 (= res!3161487 call!741674)))

(declare-fun e!4707243 () Bool)

(assert (=> b!7987110 (= e!4707243 e!4707241)))

(declare-fun bm!741669 () Bool)

(declare-fun c!1466766 () Bool)

(declare-fun call!741676 () Bool)

(assert (=> bm!741669 (= call!741676 (validRegex!11855 (ite c!1466766 (regTwo!43615 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))) (regTwo!43614 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))

(declare-fun b!7987111 () Bool)

(declare-fun e!4707244 () Bool)

(declare-fun e!4707238 () Bool)

(assert (=> b!7987111 (= e!4707244 e!4707238)))

(declare-fun res!3161488 () Bool)

(assert (=> b!7987111 (=> (not res!3161488) (not e!4707238))))

(assert (=> b!7987111 (= res!3161488 call!741674)))

(declare-fun bm!741670 () Bool)

(declare-fun call!741675 () Bool)

(assert (=> bm!741670 (= call!741674 call!741675)))

(declare-fun d!2384058 () Bool)

(declare-fun res!3161485 () Bool)

(declare-fun e!4707242 () Bool)

(assert (=> d!2384058 (=> res!3161485 e!4707242)))

(assert (=> d!2384058 (= res!3161485 ((_ is ElementMatch!21551) (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(assert (=> d!2384058 (= (validRegex!11855 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))) e!4707242)))

(declare-fun b!7987112 () Bool)

(assert (=> b!7987112 (= e!4707241 call!741676)))

(declare-fun b!7987113 () Bool)

(declare-fun e!4707239 () Bool)

(assert (=> b!7987113 (= e!4707242 e!4707239)))

(declare-fun c!1466767 () Bool)

(assert (=> b!7987113 (= c!1466767 ((_ is Star!21551) (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(declare-fun bm!741671 () Bool)

(assert (=> bm!741671 (= call!741675 (validRegex!11855 (ite c!1466767 (reg!21880 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))) (ite c!1466766 (regOne!43615 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))) (regOne!43614 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987114 () Bool)

(assert (=> b!7987114 (= e!4707239 e!4707243)))

(assert (=> b!7987114 (= c!1466766 ((_ is Union!21551) (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(declare-fun b!7987115 () Bool)

(declare-fun e!4707240 () Bool)

(assert (=> b!7987115 (= e!4707239 e!4707240)))

(declare-fun res!3161484 () Bool)

(assert (=> b!7987115 (= res!3161484 (not (nullable!9644 (reg!21880 (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> b!7987115 (=> (not res!3161484) (not e!4707240))))

(declare-fun b!7987116 () Bool)

(assert (=> b!7987116 (= e!4707238 call!741676)))

(declare-fun b!7987117 () Bool)

(assert (=> b!7987117 (= e!4707240 call!741675)))

(declare-fun b!7987118 () Bool)

(declare-fun res!3161486 () Bool)

(assert (=> b!7987118 (=> res!3161486 e!4707244)))

(assert (=> b!7987118 (= res!3161486 (not ((_ is Concat!30550) (ite c!1466660 (reg!21880 r!24602) (ite c!1466659 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))

(assert (=> b!7987118 (= e!4707243 e!4707244)))

(assert (= (and d!2384058 (not res!3161485)) b!7987113))

(assert (= (and b!7987113 c!1466767) b!7987115))

(assert (= (and b!7987113 (not c!1466767)) b!7987114))

(assert (= (and b!7987115 res!3161484) b!7987117))

(assert (= (and b!7987114 c!1466766) b!7987110))

(assert (= (and b!7987114 (not c!1466766)) b!7987118))

(assert (= (and b!7987110 res!3161487) b!7987112))

(assert (= (and b!7987118 (not res!3161486)) b!7987111))

(assert (= (and b!7987111 res!3161488) b!7987116))

(assert (= (or b!7987112 b!7987116) bm!741669))

(assert (= (or b!7987110 b!7987111) bm!741670))

(assert (= (or b!7987117 bm!741670) bm!741671))

(declare-fun m!8361072 () Bool)

(assert (=> bm!741669 m!8361072))

(declare-fun m!8361074 () Bool)

(assert (=> bm!741671 m!8361074))

(declare-fun m!8361076 () Bool)

(assert (=> b!7987115 m!8361076))

(assert (=> bm!741597 d!2384058))

(declare-fun d!2384060 () Bool)

(declare-fun lt!2711983 () Int)

(assert (=> d!2384060 (>= lt!2711983 0)))

(declare-fun e!4707245 () Int)

(assert (=> d!2384060 (= lt!2711983 e!4707245)))

(declare-fun c!1466768 () Bool)

(assert (=> d!2384060 (= c!1466768 ((_ is Nil!74656) (++!18413 testedP!447 lt!2711604)))))

(assert (=> d!2384060 (= (size!43487 (++!18413 testedP!447 lt!2711604)) lt!2711983)))

(declare-fun b!7987119 () Bool)

(assert (=> b!7987119 (= e!4707245 0)))

(declare-fun b!7987120 () Bool)

(assert (=> b!7987120 (= e!4707245 (+ 1 (size!43487 (t!390523 (++!18413 testedP!447 lt!2711604)))))))

(assert (= (and d!2384060 c!1466768) b!7987119))

(assert (= (and d!2384060 (not c!1466768)) b!7987120))

(declare-fun m!8361078 () Bool)

(assert (=> b!7987120 m!8361078))

(assert (=> b!7986433 d!2384060))

(assert (=> b!7986433 d!2383788))

(declare-fun d!2384062 () Bool)

(declare-fun c!1466769 () Bool)

(assert (=> d!2384062 (= c!1466769 ((_ is Nil!74656) (t!390523 testedP!447)))))

(declare-fun e!4707246 () (InoxSet C!43440))

(assert (=> d!2384062 (= (content!15870 (t!390523 testedP!447)) e!4707246)))

(declare-fun b!7987121 () Bool)

(assert (=> b!7987121 (= e!4707246 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987122 () Bool)

(assert (=> b!7987122 (= e!4707246 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (t!390523 testedP!447)) true) (content!15870 (t!390523 (t!390523 testedP!447)))))))

(assert (= (and d!2384062 c!1466769) b!7987121))

(assert (= (and d!2384062 (not c!1466769)) b!7987122))

(declare-fun m!8361080 () Bool)

(assert (=> b!7987122 m!8361080))

(declare-fun m!8361082 () Bool)

(assert (=> b!7987122 m!8361082))

(assert (=> b!7986463 d!2384062))

(declare-fun b!7987124 () Bool)

(declare-fun e!4707248 () List!74780)

(assert (=> b!7987124 (= e!4707248 (Cons!74656 (h!81104 (t!390523 testedP!447)) (++!18413 (t!390523 (t!390523 testedP!447)) lt!2711627)))))

(declare-fun b!7987123 () Bool)

(assert (=> b!7987123 (= e!4707248 lt!2711627)))

(declare-fun d!2384064 () Bool)

(declare-fun e!4707247 () Bool)

(assert (=> d!2384064 e!4707247))

(declare-fun res!3161490 () Bool)

(assert (=> d!2384064 (=> (not res!3161490) (not e!4707247))))

(declare-fun lt!2711984 () List!74780)

(assert (=> d!2384064 (= res!3161490 (= (content!15870 lt!2711984) ((_ map or) (content!15870 (t!390523 testedP!447)) (content!15870 lt!2711627))))))

(assert (=> d!2384064 (= lt!2711984 e!4707248)))

(declare-fun c!1466770 () Bool)

(assert (=> d!2384064 (= c!1466770 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2384064 (= (++!18413 (t!390523 testedP!447) lt!2711627) lt!2711984)))

(declare-fun b!7987125 () Bool)

(declare-fun res!3161489 () Bool)

(assert (=> b!7987125 (=> (not res!3161489) (not e!4707247))))

(assert (=> b!7987125 (= res!3161489 (= (size!43487 lt!2711984) (+ (size!43487 (t!390523 testedP!447)) (size!43487 lt!2711627))))))

(declare-fun b!7987126 () Bool)

(assert (=> b!7987126 (= e!4707247 (or (not (= lt!2711627 Nil!74656)) (= lt!2711984 (t!390523 testedP!447))))))

(assert (= (and d!2384064 c!1466770) b!7987123))

(assert (= (and d!2384064 (not c!1466770)) b!7987124))

(assert (= (and d!2384064 res!3161490) b!7987125))

(assert (= (and b!7987125 res!3161489) b!7987126))

(declare-fun m!8361084 () Bool)

(assert (=> b!7987124 m!8361084))

(declare-fun m!8361086 () Bool)

(assert (=> d!2384064 m!8361086))

(assert (=> d!2384064 m!8360654))

(assert (=> d!2384064 m!8360624))

(declare-fun m!8361088 () Bool)

(assert (=> b!7987125 m!8361088))

(assert (=> b!7987125 m!8360368))

(assert (=> b!7987125 m!8360628))

(assert (=> b!7986395 d!2384064))

(declare-fun d!2384066 () Bool)

(assert (=> d!2384066 (= (tail!15824 call!741553) (t!390523 call!741553))))

(assert (=> bm!741567 d!2384066))

(declare-fun d!2384068 () Bool)

(declare-fun c!1466771 () Bool)

(assert (=> d!2384068 (= c!1466771 ((_ is Nil!74656) lt!2711887))))

(declare-fun e!4707249 () (InoxSet C!43440))

(assert (=> d!2384068 (= (content!15870 lt!2711887) e!4707249)))

(declare-fun b!7987127 () Bool)

(assert (=> b!7987127 (= e!4707249 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987128 () Bool)

(assert (=> b!7987128 (= e!4707249 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711887) true) (content!15870 (t!390523 lt!2711887))))))

(assert (= (and d!2384068 c!1466771) b!7987127))

(assert (= (and d!2384068 (not c!1466771)) b!7987128))

(declare-fun m!8361090 () Bool)

(assert (=> b!7987128 m!8361090))

(declare-fun m!8361092 () Bool)

(assert (=> b!7987128 m!8361092))

(assert (=> d!2383850 d!2384068))

(assert (=> d!2383850 d!2383928))

(declare-fun d!2384070 () Bool)

(declare-fun c!1466772 () Bool)

(assert (=> d!2384070 (= c!1466772 ((_ is Nil!74656) (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))

(declare-fun e!4707250 () (InoxSet C!43440))

(assert (=> d!2384070 (= (content!15870 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) e!4707250)))

(declare-fun b!7987129 () Bool)

(assert (=> b!7987129 (= e!4707250 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987130 () Bool)

(assert (=> b!7987130 (= e!4707250 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) true) (content!15870 (t!390523 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(assert (= (and d!2384070 c!1466772) b!7987129))

(assert (= (and d!2384070 (not c!1466772)) b!7987130))

(declare-fun m!8361094 () Bool)

(assert (=> b!7987130 m!8361094))

(declare-fun m!8361096 () Bool)

(assert (=> b!7987130 m!8361096))

(assert (=> d!2383850 d!2384070))

(declare-fun b!7987132 () Bool)

(declare-fun res!3161492 () Bool)

(declare-fun e!4707253 () Bool)

(assert (=> b!7987132 (=> (not res!3161492) (not e!4707253))))

(assert (=> b!7987132 (= res!3161492 (= (head!16297 (tail!15824 (tail!15824 testedP!447))) (head!16297 (tail!15824 (tail!15824 input!7927)))))))

(declare-fun b!7987133 () Bool)

(assert (=> b!7987133 (= e!4707253 (isPrefix!6651 (tail!15824 (tail!15824 (tail!15824 testedP!447))) (tail!15824 (tail!15824 (tail!15824 input!7927)))))))

(declare-fun d!2384072 () Bool)

(declare-fun e!4707252 () Bool)

(assert (=> d!2384072 e!4707252))

(declare-fun res!3161493 () Bool)

(assert (=> d!2384072 (=> res!3161493 e!4707252)))

(declare-fun lt!2711985 () Bool)

(assert (=> d!2384072 (= res!3161493 (not lt!2711985))))

(declare-fun e!4707251 () Bool)

(assert (=> d!2384072 (= lt!2711985 e!4707251)))

(declare-fun res!3161491 () Bool)

(assert (=> d!2384072 (=> res!3161491 e!4707251)))

(assert (=> d!2384072 (= res!3161491 ((_ is Nil!74656) (tail!15824 (tail!15824 testedP!447))))))

(assert (=> d!2384072 (= (isPrefix!6651 (tail!15824 (tail!15824 testedP!447)) (tail!15824 (tail!15824 input!7927))) lt!2711985)))

(declare-fun b!7987134 () Bool)

(assert (=> b!7987134 (= e!4707252 (>= (size!43487 (tail!15824 (tail!15824 input!7927))) (size!43487 (tail!15824 (tail!15824 testedP!447)))))))

(declare-fun b!7987131 () Bool)

(assert (=> b!7987131 (= e!4707251 e!4707253)))

(declare-fun res!3161494 () Bool)

(assert (=> b!7987131 (=> (not res!3161494) (not e!4707253))))

(assert (=> b!7987131 (= res!3161494 (not ((_ is Nil!74656) (tail!15824 (tail!15824 input!7927)))))))

(assert (= (and d!2384072 (not res!3161491)) b!7987131))

(assert (= (and b!7987131 res!3161494) b!7987132))

(assert (= (and b!7987132 res!3161492) b!7987133))

(assert (= (and d!2384072 (not res!3161493)) b!7987134))

(assert (=> b!7987132 m!8360718))

(declare-fun m!8361098 () Bool)

(assert (=> b!7987132 m!8361098))

(assert (=> b!7987132 m!8360520))

(declare-fun m!8361100 () Bool)

(assert (=> b!7987132 m!8361100))

(assert (=> b!7987133 m!8360718))

(declare-fun m!8361102 () Bool)

(assert (=> b!7987133 m!8361102))

(assert (=> b!7987133 m!8360520))

(declare-fun m!8361104 () Bool)

(assert (=> b!7987133 m!8361104))

(assert (=> b!7987133 m!8361102))

(assert (=> b!7987133 m!8361104))

(declare-fun m!8361106 () Bool)

(assert (=> b!7987133 m!8361106))

(assert (=> b!7987134 m!8360520))

(declare-fun m!8361108 () Bool)

(assert (=> b!7987134 m!8361108))

(assert (=> b!7987134 m!8360718))

(declare-fun m!8361110 () Bool)

(assert (=> b!7987134 m!8361110))

(assert (=> b!7986454 d!2384072))

(declare-fun d!2384074 () Bool)

(assert (=> d!2384074 (= (tail!15824 (tail!15824 testedP!447)) (t!390523 (tail!15824 testedP!447)))))

(assert (=> b!7986454 d!2384074))

(declare-fun d!2384076 () Bool)

(assert (=> d!2384076 (= (tail!15824 (tail!15824 input!7927)) (t!390523 (tail!15824 input!7927)))))

(assert (=> b!7986454 d!2384076))

(declare-fun d!2384078 () Bool)

(assert (=> d!2384078 (= (head!16297 (tail!15824 input!7927)) (h!81104 (tail!15824 input!7927)))))

(assert (=> b!7986335 d!2384078))

(declare-fun d!2384080 () Bool)

(declare-fun lt!2711986 () Int)

(assert (=> d!2384080 (>= lt!2711986 0)))

(declare-fun e!4707254 () Int)

(assert (=> d!2384080 (= lt!2711986 e!4707254)))

(declare-fun c!1466773 () Bool)

(assert (=> d!2384080 (= c!1466773 ((_ is Nil!74656) (t!390523 (t!390523 lt!2711603))))))

(assert (=> d!2384080 (= (size!43487 (t!390523 (t!390523 lt!2711603))) lt!2711986)))

(declare-fun b!7987135 () Bool)

(assert (=> b!7987135 (= e!4707254 0)))

(declare-fun b!7987136 () Bool)

(assert (=> b!7987136 (= e!4707254 (+ 1 (size!43487 (t!390523 (t!390523 (t!390523 lt!2711603))))))))

(assert (= (and d!2384080 c!1466773) b!7987135))

(assert (= (and d!2384080 (not c!1466773)) b!7987136))

(declare-fun m!8361112 () Bool)

(assert (=> b!7987136 m!8361112))

(assert (=> b!7986272 d!2384080))

(declare-fun d!2384082 () Bool)

(declare-fun c!1466774 () Bool)

(assert (=> d!2384082 (= c!1466774 ((_ is Nil!74656) lt!2711891))))

(declare-fun e!4707255 () (InoxSet C!43440))

(assert (=> d!2384082 (= (content!15870 lt!2711891) e!4707255)))

(declare-fun b!7987137 () Bool)

(assert (=> b!7987137 (= e!4707255 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987138 () Bool)

(assert (=> b!7987138 (= e!4707255 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711891) true) (content!15870 (t!390523 lt!2711891))))))

(assert (= (and d!2384082 c!1466774) b!7987137))

(assert (= (and d!2384082 (not c!1466774)) b!7987138))

(declare-fun m!8361114 () Bool)

(assert (=> b!7987138 m!8361114))

(declare-fun m!8361116 () Bool)

(assert (=> b!7987138 m!8361116))

(assert (=> d!2383858 d!2384082))

(declare-fun d!2384084 () Bool)

(declare-fun c!1466775 () Bool)

(assert (=> d!2384084 (= c!1466775 ((_ is Nil!74656) (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))))))

(declare-fun e!4707256 () (InoxSet C!43440))

(assert (=> d!2384084 (= (content!15870 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) e!4707256)))

(declare-fun b!7987139 () Bool)

(assert (=> b!7987139 (= e!4707256 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987140 () Bool)

(assert (=> b!7987140 (= e!4707256 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) true) (content!15870 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))))))))

(assert (= (and d!2384084 c!1466775) b!7987139))

(assert (= (and d!2384084 (not c!1466775)) b!7987140))

(declare-fun m!8361118 () Bool)

(assert (=> b!7987140 m!8361118))

(declare-fun m!8361120 () Bool)

(assert (=> b!7987140 m!8361120))

(assert (=> d!2383858 d!2384084))

(declare-fun d!2384086 () Bool)

(declare-fun c!1466776 () Bool)

(assert (=> d!2384086 (= c!1466776 ((_ is Nil!74656) lt!2711808))))

(declare-fun e!4707257 () (InoxSet C!43440))

(assert (=> d!2384086 (= (content!15870 lt!2711808) e!4707257)))

(declare-fun b!7987141 () Bool)

(assert (=> b!7987141 (= e!4707257 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987142 () Bool)

(assert (=> b!7987142 (= e!4707257 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711808) true) (content!15870 (t!390523 lt!2711808))))))

(assert (= (and d!2384086 c!1466776) b!7987141))

(assert (= (and d!2384086 (not c!1466776)) b!7987142))

(declare-fun m!8361122 () Bool)

(assert (=> b!7987142 m!8361122))

(declare-fun m!8361124 () Bool)

(assert (=> b!7987142 m!8361124))

(assert (=> d!2383858 d!2384086))

(declare-fun d!2384088 () Bool)

(assert (=> d!2384088 (= (nullable!9644 (regOne!43614 baseR!116)) (nullableFct!3814 (regOne!43614 baseR!116)))))

(declare-fun bs!1970338 () Bool)

(assert (= bs!1970338 d!2384088))

(declare-fun m!8361126 () Bool)

(assert (=> bs!1970338 m!8361126))

(assert (=> b!7986252 d!2384088))

(declare-fun bm!741672 () Bool)

(declare-fun call!741679 () Regex!21551)

(declare-fun c!1466781 () Bool)

(declare-fun c!1466779 () Bool)

(declare-fun c!1466777 () Bool)

(assert (=> bm!741672 (= call!741679 (derivativeStep!6571 (ite c!1466777 (regTwo!43615 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))) (ite c!1466779 (reg!21880 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))) (ite c!1466781 (regTwo!43614 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))) (regOne!43614 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))) lt!2711601))))

(declare-fun call!741678 () Regex!21551)

(declare-fun call!741680 () Regex!21551)

(declare-fun e!4707259 () Regex!21551)

(declare-fun b!7987143 () Bool)

(assert (=> b!7987143 (= e!4707259 (Union!21551 (Concat!30550 call!741680 (regTwo!43614 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))) call!741678))))

(declare-fun d!2384090 () Bool)

(declare-fun lt!2711987 () Regex!21551)

(assert (=> d!2384090 (validRegex!11855 lt!2711987)))

(declare-fun e!4707258 () Regex!21551)

(assert (=> d!2384090 (= lt!2711987 e!4707258)))

(declare-fun c!1466780 () Bool)

(assert (=> d!2384090 (= c!1466780 (or ((_ is EmptyExpr!21551) (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))) ((_ is EmptyLang!21551) (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))))

(assert (=> d!2384090 (validRegex!11855 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> d!2384090 (= (derivativeStep!6571 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) lt!2711601) lt!2711987)))

(declare-fun bm!741673 () Bool)

(declare-fun call!741677 () Regex!21551)

(assert (=> bm!741673 (= call!741677 call!741679)))

(declare-fun b!7987144 () Bool)

(assert (=> b!7987144 (= c!1466777 ((_ is Union!21551) (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun e!4707261 () Regex!21551)

(declare-fun e!4707260 () Regex!21551)

(assert (=> b!7987144 (= e!4707261 e!4707260)))

(declare-fun b!7987145 () Bool)

(assert (=> b!7987145 (= e!4707261 (ite (= lt!2711601 (c!1466508 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987146 () Bool)

(declare-fun e!4707262 () Regex!21551)

(assert (=> b!7987146 (= e!4707260 e!4707262)))

(assert (=> b!7987146 (= c!1466779 ((_ is Star!21551) (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987147 () Bool)

(assert (=> b!7987147 (= e!4707258 e!4707261)))

(declare-fun c!1466778 () Bool)

(assert (=> b!7987147 (= c!1466778 ((_ is ElementMatch!21551) (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987148 () Bool)

(assert (=> b!7987148 (= c!1466781 (nullable!9644 (regOne!43614 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))))

(assert (=> b!7987148 (= e!4707262 e!4707259)))

(declare-fun bm!741674 () Bool)

(assert (=> bm!741674 (= call!741680 (derivativeStep!6571 (ite c!1466777 (regOne!43615 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))) (regOne!43614 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))) lt!2711601))))

(declare-fun b!7987149 () Bool)

(assert (=> b!7987149 (= e!4707259 (Union!21551 (Concat!30550 call!741678 (regTwo!43614 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))) EmptyLang!21551))))

(declare-fun bm!741675 () Bool)

(assert (=> bm!741675 (= call!741678 call!741677)))

(declare-fun b!7987150 () Bool)

(assert (=> b!7987150 (= e!4707262 (Concat!30550 call!741677 (ite c!1466650 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987151 () Bool)

(assert (=> b!7987151 (= e!4707260 (Union!21551 call!741680 call!741679))))

(declare-fun b!7987152 () Bool)

(assert (=> b!7987152 (= e!4707258 EmptyLang!21551)))

(assert (= (and d!2384090 c!1466780) b!7987152))

(assert (= (and d!2384090 (not c!1466780)) b!7987147))

(assert (= (and b!7987147 c!1466778) b!7987145))

(assert (= (and b!7987147 (not c!1466778)) b!7987144))

(assert (= (and b!7987144 c!1466777) b!7987151))

(assert (= (and b!7987144 (not c!1466777)) b!7987146))

(assert (= (and b!7987146 c!1466779) b!7987150))

(assert (= (and b!7987146 (not c!1466779)) b!7987148))

(assert (= (and b!7987148 c!1466781) b!7987143))

(assert (= (and b!7987148 (not c!1466781)) b!7987149))

(assert (= (or b!7987143 b!7987149) bm!741675))

(assert (= (or b!7987150 bm!741675) bm!741673))

(assert (= (or b!7987151 bm!741673) bm!741672))

(assert (= (or b!7987151 b!7987143) bm!741674))

(declare-fun m!8361128 () Bool)

(assert (=> bm!741672 m!8361128))

(declare-fun m!8361130 () Bool)

(assert (=> d!2384090 m!8361130))

(declare-fun m!8361132 () Bool)

(assert (=> d!2384090 m!8361132))

(declare-fun m!8361134 () Bool)

(assert (=> b!7987148 m!8361134))

(declare-fun m!8361136 () Bool)

(assert (=> bm!741674 m!8361136))

(assert (=> bm!741590 d!2384090))

(declare-fun c!1466786 () Bool)

(declare-fun c!1466782 () Bool)

(declare-fun bm!741676 () Bool)

(declare-fun call!741683 () Regex!21551)

(declare-fun c!1466784 () Bool)

(assert (=> bm!741676 (= call!741683 (derivativeStep!6571 (ite c!1466782 (regTwo!43615 call!741546) (ite c!1466784 (reg!21880 call!741546) (ite c!1466786 (regTwo!43614 call!741546) (regOne!43614 call!741546)))) call!741571))))

(declare-fun call!741684 () Regex!21551)

(declare-fun e!4707264 () Regex!21551)

(declare-fun b!7987153 () Bool)

(declare-fun call!741682 () Regex!21551)

(assert (=> b!7987153 (= e!4707264 (Union!21551 (Concat!30550 call!741684 (regTwo!43614 call!741546)) call!741682))))

(declare-fun d!2384092 () Bool)

(declare-fun lt!2711988 () Regex!21551)

(assert (=> d!2384092 (validRegex!11855 lt!2711988)))

(declare-fun e!4707263 () Regex!21551)

(assert (=> d!2384092 (= lt!2711988 e!4707263)))

(declare-fun c!1466785 () Bool)

(assert (=> d!2384092 (= c!1466785 (or ((_ is EmptyExpr!21551) call!741546) ((_ is EmptyLang!21551) call!741546)))))

(assert (=> d!2384092 (validRegex!11855 call!741546)))

(assert (=> d!2384092 (= (derivativeStep!6571 call!741546 call!741571) lt!2711988)))

(declare-fun bm!741677 () Bool)

(declare-fun call!741681 () Regex!21551)

(assert (=> bm!741677 (= call!741681 call!741683)))

(declare-fun b!7987154 () Bool)

(assert (=> b!7987154 (= c!1466782 ((_ is Union!21551) call!741546))))

(declare-fun e!4707266 () Regex!21551)

(declare-fun e!4707265 () Regex!21551)

(assert (=> b!7987154 (= e!4707266 e!4707265)))

(declare-fun b!7987155 () Bool)

(assert (=> b!7987155 (= e!4707266 (ite (= call!741571 (c!1466508 call!741546)) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987156 () Bool)

(declare-fun e!4707267 () Regex!21551)

(assert (=> b!7987156 (= e!4707265 e!4707267)))

(assert (=> b!7987156 (= c!1466784 ((_ is Star!21551) call!741546))))

(declare-fun b!7987157 () Bool)

(assert (=> b!7987157 (= e!4707263 e!4707266)))

(declare-fun c!1466783 () Bool)

(assert (=> b!7987157 (= c!1466783 ((_ is ElementMatch!21551) call!741546))))

(declare-fun b!7987158 () Bool)

(assert (=> b!7987158 (= c!1466786 (nullable!9644 (regOne!43614 call!741546)))))

(assert (=> b!7987158 (= e!4707267 e!4707264)))

(declare-fun bm!741678 () Bool)

(assert (=> bm!741678 (= call!741684 (derivativeStep!6571 (ite c!1466782 (regOne!43615 call!741546) (regOne!43614 call!741546)) call!741571))))

(declare-fun b!7987159 () Bool)

(assert (=> b!7987159 (= e!4707264 (Union!21551 (Concat!30550 call!741682 (regTwo!43614 call!741546)) EmptyLang!21551))))

(declare-fun bm!741679 () Bool)

(assert (=> bm!741679 (= call!741682 call!741681)))

(declare-fun b!7987160 () Bool)

(assert (=> b!7987160 (= e!4707267 (Concat!30550 call!741681 call!741546))))

(declare-fun b!7987161 () Bool)

(assert (=> b!7987161 (= e!4707265 (Union!21551 call!741684 call!741683))))

(declare-fun b!7987162 () Bool)

(assert (=> b!7987162 (= e!4707263 EmptyLang!21551)))

(assert (= (and d!2384092 c!1466785) b!7987162))

(assert (= (and d!2384092 (not c!1466785)) b!7987157))

(assert (= (and b!7987157 c!1466783) b!7987155))

(assert (= (and b!7987157 (not c!1466783)) b!7987154))

(assert (= (and b!7987154 c!1466782) b!7987161))

(assert (= (and b!7987154 (not c!1466782)) b!7987156))

(assert (= (and b!7987156 c!1466784) b!7987160))

(assert (= (and b!7987156 (not c!1466784)) b!7987158))

(assert (= (and b!7987158 c!1466786) b!7987153))

(assert (= (and b!7987158 (not c!1466786)) b!7987159))

(assert (= (or b!7987153 b!7987159) bm!741679))

(assert (= (or b!7987160 bm!741679) bm!741677))

(assert (= (or b!7987161 bm!741677) bm!741676))

(assert (= (or b!7987161 b!7987153) bm!741678))

(declare-fun m!8361138 () Bool)

(assert (=> bm!741676 m!8361138))

(declare-fun m!8361140 () Bool)

(assert (=> d!2384092 m!8361140))

(assert (=> d!2384092 m!8360442))

(declare-fun m!8361142 () Bool)

(assert (=> b!7987158 m!8361142))

(declare-fun m!8361144 () Bool)

(assert (=> bm!741678 m!8361144))

(assert (=> bm!741569 d!2384092))

(assert (=> d!2383860 d!2383858))

(assert (=> d!2383860 d!2383854))

(declare-fun d!2384094 () Bool)

(assert (=> d!2384094 (= (++!18413 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)) lt!2711808) input!7927)))

(assert (=> d!2384094 true))

(declare-fun _$68!1522 () Unit!170492)

(assert (=> d!2384094 (= (choose!60178 testedP!447 lt!2711830 lt!2711808 input!7927) _$68!1522)))

(declare-fun bs!1970339 () Bool)

(assert (= bs!1970339 d!2384094))

(assert (=> bs!1970339 m!8360346))

(assert (=> bs!1970339 m!8360346))

(assert (=> bs!1970339 m!8360356))

(assert (=> d!2383860 d!2384094))

(declare-fun b!7987164 () Bool)

(declare-fun e!4707269 () List!74780)

(assert (=> b!7987164 (= e!4707269 (Cons!74656 (h!81104 testedP!447) (++!18413 (t!390523 testedP!447) (Cons!74656 lt!2711830 lt!2711808))))))

(declare-fun b!7987163 () Bool)

(assert (=> b!7987163 (= e!4707269 (Cons!74656 lt!2711830 lt!2711808))))

(declare-fun d!2384096 () Bool)

(declare-fun e!4707268 () Bool)

(assert (=> d!2384096 e!4707268))

(declare-fun res!3161496 () Bool)

(assert (=> d!2384096 (=> (not res!3161496) (not e!4707268))))

(declare-fun lt!2711989 () List!74780)

(assert (=> d!2384096 (= res!3161496 (= (content!15870 lt!2711989) ((_ map or) (content!15870 testedP!447) (content!15870 (Cons!74656 lt!2711830 lt!2711808)))))))

(assert (=> d!2384096 (= lt!2711989 e!4707269)))

(declare-fun c!1466787 () Bool)

(assert (=> d!2384096 (= c!1466787 ((_ is Nil!74656) testedP!447))))

(assert (=> d!2384096 (= (++!18413 testedP!447 (Cons!74656 lt!2711830 lt!2711808)) lt!2711989)))

(declare-fun b!7987165 () Bool)

(declare-fun res!3161495 () Bool)

(assert (=> b!7987165 (=> (not res!3161495) (not e!4707268))))

(assert (=> b!7987165 (= res!3161495 (= (size!43487 lt!2711989) (+ (size!43487 testedP!447) (size!43487 (Cons!74656 lt!2711830 lt!2711808)))))))

(declare-fun b!7987166 () Bool)

(assert (=> b!7987166 (= e!4707268 (or (not (= (Cons!74656 lt!2711830 lt!2711808) Nil!74656)) (= lt!2711989 testedP!447)))))

(assert (= (and d!2384096 c!1466787) b!7987163))

(assert (= (and d!2384096 (not c!1466787)) b!7987164))

(assert (= (and d!2384096 res!3161496) b!7987165))

(assert (= (and b!7987165 res!3161495) b!7987166))

(declare-fun m!8361146 () Bool)

(assert (=> b!7987164 m!8361146))

(declare-fun m!8361148 () Bool)

(assert (=> d!2384096 m!8361148))

(assert (=> d!2384096 m!8360378))

(declare-fun m!8361150 () Bool)

(assert (=> d!2384096 m!8361150))

(declare-fun m!8361152 () Bool)

(assert (=> b!7987165 m!8361152))

(assert (=> b!7987165 m!8360150))

(declare-fun m!8361154 () Bool)

(assert (=> b!7987165 m!8361154))

(assert (=> d!2383860 d!2384096))

(declare-fun b!7987167 () Bool)

(declare-fun res!3161500 () Bool)

(declare-fun e!4707273 () Bool)

(assert (=> b!7987167 (=> (not res!3161500) (not e!4707273))))

(declare-fun call!741685 () Bool)

(assert (=> b!7987167 (= res!3161500 call!741685)))

(declare-fun e!4707275 () Bool)

(assert (=> b!7987167 (= e!4707275 e!4707273)))

(declare-fun bm!741680 () Bool)

(declare-fun call!741687 () Bool)

(declare-fun c!1466788 () Bool)

(assert (=> bm!741680 (= call!741687 (validRegex!11855 (ite c!1466788 (regTwo!43615 lt!2711901) (regTwo!43614 lt!2711901))))))

(declare-fun b!7987168 () Bool)

(declare-fun e!4707276 () Bool)

(declare-fun e!4707270 () Bool)

(assert (=> b!7987168 (= e!4707276 e!4707270)))

(declare-fun res!3161501 () Bool)

(assert (=> b!7987168 (=> (not res!3161501) (not e!4707270))))

(assert (=> b!7987168 (= res!3161501 call!741685)))

(declare-fun bm!741681 () Bool)

(declare-fun call!741686 () Bool)

(assert (=> bm!741681 (= call!741685 call!741686)))

(declare-fun d!2384098 () Bool)

(declare-fun res!3161498 () Bool)

(declare-fun e!4707274 () Bool)

(assert (=> d!2384098 (=> res!3161498 e!4707274)))

(assert (=> d!2384098 (= res!3161498 ((_ is ElementMatch!21551) lt!2711901))))

(assert (=> d!2384098 (= (validRegex!11855 lt!2711901) e!4707274)))

(declare-fun b!7987169 () Bool)

(assert (=> b!7987169 (= e!4707273 call!741687)))

(declare-fun b!7987170 () Bool)

(declare-fun e!4707271 () Bool)

(assert (=> b!7987170 (= e!4707274 e!4707271)))

(declare-fun c!1466789 () Bool)

(assert (=> b!7987170 (= c!1466789 ((_ is Star!21551) lt!2711901))))

(declare-fun bm!741682 () Bool)

(assert (=> bm!741682 (= call!741686 (validRegex!11855 (ite c!1466789 (reg!21880 lt!2711901) (ite c!1466788 (regOne!43615 lt!2711901) (regOne!43614 lt!2711901)))))))

(declare-fun b!7987171 () Bool)

(assert (=> b!7987171 (= e!4707271 e!4707275)))

(assert (=> b!7987171 (= c!1466788 ((_ is Union!21551) lt!2711901))))

(declare-fun b!7987172 () Bool)

(declare-fun e!4707272 () Bool)

(assert (=> b!7987172 (= e!4707271 e!4707272)))

(declare-fun res!3161497 () Bool)

(assert (=> b!7987172 (= res!3161497 (not (nullable!9644 (reg!21880 lt!2711901))))))

(assert (=> b!7987172 (=> (not res!3161497) (not e!4707272))))

(declare-fun b!7987173 () Bool)

(assert (=> b!7987173 (= e!4707270 call!741687)))

(declare-fun b!7987174 () Bool)

(assert (=> b!7987174 (= e!4707272 call!741686)))

(declare-fun b!7987175 () Bool)

(declare-fun res!3161499 () Bool)

(assert (=> b!7987175 (=> res!3161499 e!4707276)))

(assert (=> b!7987175 (= res!3161499 (not ((_ is Concat!30550) lt!2711901)))))

(assert (=> b!7987175 (= e!4707275 e!4707276)))

(assert (= (and d!2384098 (not res!3161498)) b!7987170))

(assert (= (and b!7987170 c!1466789) b!7987172))

(assert (= (and b!7987170 (not c!1466789)) b!7987171))

(assert (= (and b!7987172 res!3161497) b!7987174))

(assert (= (and b!7987171 c!1466788) b!7987167))

(assert (= (and b!7987171 (not c!1466788)) b!7987175))

(assert (= (and b!7987167 res!3161500) b!7987169))

(assert (= (and b!7987175 (not res!3161499)) b!7987168))

(assert (= (and b!7987168 res!3161501) b!7987173))

(assert (= (or b!7987169 b!7987173) bm!741680))

(assert (= (or b!7987167 b!7987168) bm!741681))

(assert (= (or b!7987174 bm!741681) bm!741682))

(declare-fun m!8361156 () Bool)

(assert (=> bm!741680 m!8361156))

(declare-fun m!8361158 () Bool)

(assert (=> bm!741682 m!8361158))

(declare-fun m!8361160 () Bool)

(assert (=> b!7987172 m!8361160))

(assert (=> d!2383882 d!2384098))

(declare-fun b!7987176 () Bool)

(declare-fun res!3161505 () Bool)

(declare-fun e!4707280 () Bool)

(assert (=> b!7987176 (=> (not res!3161505) (not e!4707280))))

(declare-fun call!741688 () Bool)

(assert (=> b!7987176 (= res!3161505 call!741688)))

(declare-fun e!4707282 () Bool)

(assert (=> b!7987176 (= e!4707282 e!4707280)))

(declare-fun c!1466790 () Bool)

(declare-fun call!741690 () Bool)

(declare-fun bm!741683 () Bool)

(assert (=> bm!741683 (= call!741690 (validRegex!11855 (ite c!1466790 (regTwo!43615 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))))

(declare-fun b!7987177 () Bool)

(declare-fun e!4707283 () Bool)

(declare-fun e!4707277 () Bool)

(assert (=> b!7987177 (= e!4707283 e!4707277)))

(declare-fun res!3161506 () Bool)

(assert (=> b!7987177 (=> (not res!3161506) (not e!4707277))))

(assert (=> b!7987177 (= res!3161506 call!741688)))

(declare-fun bm!741684 () Bool)

(declare-fun call!741689 () Bool)

(assert (=> bm!741684 (= call!741688 call!741689)))

(declare-fun d!2384100 () Bool)

(declare-fun res!3161503 () Bool)

(declare-fun e!4707281 () Bool)

(assert (=> d!2384100 (=> res!3161503 e!4707281)))

(assert (=> d!2384100 (= res!3161503 ((_ is ElementMatch!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))

(assert (=> d!2384100 (= (validRegex!11855 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) e!4707281)))

(declare-fun b!7987178 () Bool)

(assert (=> b!7987178 (= e!4707280 call!741690)))

(declare-fun b!7987179 () Bool)

(declare-fun e!4707278 () Bool)

(assert (=> b!7987179 (= e!4707281 e!4707278)))

(declare-fun c!1466791 () Bool)

(assert (=> b!7987179 (= c!1466791 ((_ is Star!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))

(declare-fun bm!741685 () Bool)

(assert (=> bm!741685 (= call!741689 (validRegex!11855 (ite c!1466791 (reg!21880 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) (ite c!1466790 (regOne!43615 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))))))

(declare-fun b!7987180 () Bool)

(assert (=> b!7987180 (= e!4707278 e!4707282)))

(assert (=> b!7987180 (= c!1466790 ((_ is Union!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))

(declare-fun b!7987181 () Bool)

(declare-fun e!4707279 () Bool)

(assert (=> b!7987181 (= e!4707278 e!4707279)))

(declare-fun res!3161502 () Bool)

(assert (=> b!7987181 (= res!3161502 (not (nullable!9644 (reg!21880 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))))

(assert (=> b!7987181 (=> (not res!3161502) (not e!4707279))))

(declare-fun b!7987182 () Bool)

(assert (=> b!7987182 (= e!4707277 call!741690)))

(declare-fun b!7987183 () Bool)

(assert (=> b!7987183 (= e!4707279 call!741689)))

(declare-fun b!7987184 () Bool)

(declare-fun res!3161504 () Bool)

(assert (=> b!7987184 (=> res!3161504 e!4707283)))

(assert (=> b!7987184 (= res!3161504 (not ((_ is Concat!30550) (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))))

(assert (=> b!7987184 (= e!4707282 e!4707283)))

(assert (= (and d!2384100 (not res!3161503)) b!7987179))

(assert (= (and b!7987179 c!1466791) b!7987181))

(assert (= (and b!7987179 (not c!1466791)) b!7987180))

(assert (= (and b!7987181 res!3161502) b!7987183))

(assert (= (and b!7987180 c!1466790) b!7987176))

(assert (= (and b!7987180 (not c!1466790)) b!7987184))

(assert (= (and b!7987176 res!3161505) b!7987178))

(assert (= (and b!7987184 (not res!3161504)) b!7987177))

(assert (= (and b!7987177 res!3161506) b!7987182))

(assert (= (or b!7987178 b!7987182) bm!741683))

(assert (= (or b!7987176 b!7987177) bm!741684))

(assert (= (or b!7987183 bm!741684) bm!741685))

(declare-fun m!8361162 () Bool)

(assert (=> bm!741683 m!8361162))

(declare-fun m!8361164 () Bool)

(assert (=> bm!741685 m!8361164))

(declare-fun m!8361166 () Bool)

(assert (=> b!7987181 m!8361166))

(assert (=> d!2383882 d!2384100))

(declare-fun b!7987185 () Bool)

(declare-fun res!3161510 () Bool)

(declare-fun e!4707287 () Bool)

(assert (=> b!7987185 (=> (not res!3161510) (not e!4707287))))

(declare-fun call!741691 () Bool)

(assert (=> b!7987185 (= res!3161510 call!741691)))

(declare-fun e!4707289 () Bool)

(assert (=> b!7987185 (= e!4707289 e!4707287)))

(declare-fun bm!741686 () Bool)

(declare-fun call!741693 () Bool)

(declare-fun c!1466792 () Bool)

(assert (=> bm!741686 (= call!741693 (validRegex!11855 (ite c!1466792 (regTwo!43615 lt!2711898) (regTwo!43614 lt!2711898))))))

(declare-fun b!7987186 () Bool)

(declare-fun e!4707290 () Bool)

(declare-fun e!4707284 () Bool)

(assert (=> b!7987186 (= e!4707290 e!4707284)))

(declare-fun res!3161511 () Bool)

(assert (=> b!7987186 (=> (not res!3161511) (not e!4707284))))

(assert (=> b!7987186 (= res!3161511 call!741691)))

(declare-fun bm!741687 () Bool)

(declare-fun call!741692 () Bool)

(assert (=> bm!741687 (= call!741691 call!741692)))

(declare-fun d!2384102 () Bool)

(declare-fun res!3161508 () Bool)

(declare-fun e!4707288 () Bool)

(assert (=> d!2384102 (=> res!3161508 e!4707288)))

(assert (=> d!2384102 (= res!3161508 ((_ is ElementMatch!21551) lt!2711898))))

(assert (=> d!2384102 (= (validRegex!11855 lt!2711898) e!4707288)))

(declare-fun b!7987187 () Bool)

(assert (=> b!7987187 (= e!4707287 call!741693)))

(declare-fun b!7987188 () Bool)

(declare-fun e!4707285 () Bool)

(assert (=> b!7987188 (= e!4707288 e!4707285)))

(declare-fun c!1466793 () Bool)

(assert (=> b!7987188 (= c!1466793 ((_ is Star!21551) lt!2711898))))

(declare-fun bm!741688 () Bool)

(assert (=> bm!741688 (= call!741692 (validRegex!11855 (ite c!1466793 (reg!21880 lt!2711898) (ite c!1466792 (regOne!43615 lt!2711898) (regOne!43614 lt!2711898)))))))

(declare-fun b!7987189 () Bool)

(assert (=> b!7987189 (= e!4707285 e!4707289)))

(assert (=> b!7987189 (= c!1466792 ((_ is Union!21551) lt!2711898))))

(declare-fun b!7987190 () Bool)

(declare-fun e!4707286 () Bool)

(assert (=> b!7987190 (= e!4707285 e!4707286)))

(declare-fun res!3161507 () Bool)

(assert (=> b!7987190 (= res!3161507 (not (nullable!9644 (reg!21880 lt!2711898))))))

(assert (=> b!7987190 (=> (not res!3161507) (not e!4707286))))

(declare-fun b!7987191 () Bool)

(assert (=> b!7987191 (= e!4707284 call!741693)))

(declare-fun b!7987192 () Bool)

(assert (=> b!7987192 (= e!4707286 call!741692)))

(declare-fun b!7987193 () Bool)

(declare-fun res!3161509 () Bool)

(assert (=> b!7987193 (=> res!3161509 e!4707290)))

(assert (=> b!7987193 (= res!3161509 (not ((_ is Concat!30550) lt!2711898)))))

(assert (=> b!7987193 (= e!4707289 e!4707290)))

(assert (= (and d!2384102 (not res!3161508)) b!7987188))

(assert (= (and b!7987188 c!1466793) b!7987190))

(assert (= (and b!7987188 (not c!1466793)) b!7987189))

(assert (= (and b!7987190 res!3161507) b!7987192))

(assert (= (and b!7987189 c!1466792) b!7987185))

(assert (= (and b!7987189 (not c!1466792)) b!7987193))

(assert (= (and b!7987185 res!3161510) b!7987187))

(assert (= (and b!7987193 (not res!3161509)) b!7987186))

(assert (= (and b!7987186 res!3161511) b!7987191))

(assert (= (or b!7987187 b!7987191) bm!741686))

(assert (= (or b!7987185 b!7987186) bm!741687))

(assert (= (or b!7987192 bm!741687) bm!741688))

(declare-fun m!8361168 () Bool)

(assert (=> bm!741686 m!8361168))

(declare-fun m!8361170 () Bool)

(assert (=> bm!741688 m!8361170))

(declare-fun m!8361172 () Bool)

(assert (=> b!7987190 m!8361172))

(assert (=> d!2383874 d!2384102))

(assert (=> d!2383874 d!2383810))

(declare-fun b!7987208 () Bool)

(declare-fun e!4707305 () Bool)

(declare-fun e!4707307 () Bool)

(assert (=> b!7987208 (= e!4707305 e!4707307)))

(declare-fun res!3161526 () Bool)

(declare-fun call!741698 () Bool)

(assert (=> b!7987208 (= res!3161526 call!741698)))

(assert (=> b!7987208 (=> res!3161526 e!4707307)))

(declare-fun b!7987209 () Bool)

(declare-fun e!4707303 () Bool)

(declare-fun e!4707308 () Bool)

(assert (=> b!7987209 (= e!4707303 e!4707308)))

(declare-fun res!3161525 () Bool)

(assert (=> b!7987209 (=> res!3161525 e!4707308)))

(assert (=> b!7987209 (= res!3161525 ((_ is EmptyLang!21551) r!24602))))

(declare-fun b!7987210 () Bool)

(declare-fun e!4707306 () Bool)

(assert (=> b!7987210 (= e!4707306 e!4707305)))

(declare-fun c!1466796 () Bool)

(assert (=> b!7987210 (= c!1466796 ((_ is Union!21551) r!24602))))

(declare-fun b!7987211 () Bool)

(declare-fun e!4707304 () Bool)

(declare-fun call!741699 () Bool)

(assert (=> b!7987211 (= e!4707304 call!741699)))

(declare-fun b!7987212 () Bool)

(assert (=> b!7987212 (= e!4707308 e!4707306)))

(declare-fun res!3161523 () Bool)

(assert (=> b!7987212 (=> (not res!3161523) (not e!4707306))))

(assert (=> b!7987212 (= res!3161523 (and (not ((_ is ElementMatch!21551) r!24602)) (not ((_ is Star!21551) r!24602))))))

(declare-fun b!7987213 () Bool)

(assert (=> b!7987213 (= e!4707305 e!4707304)))

(declare-fun res!3161524 () Bool)

(assert (=> b!7987213 (= res!3161524 call!741698)))

(assert (=> b!7987213 (=> (not res!3161524) (not e!4707304))))

(declare-fun d!2384104 () Bool)

(declare-fun lt!2711992 () Bool)

(declare-datatypes ((Option!17959 0))(
  ( (None!17958) (Some!17958 (v!55143 List!74780)) )
))
(declare-fun isEmpty!42960 (Option!17959) Bool)

(declare-fun getLanguageWitness!1150 (Regex!21551) Option!17959)

(assert (=> d!2384104 (= lt!2711992 (isEmpty!42960 (getLanguageWitness!1150 r!24602)))))

(assert (=> d!2384104 (= lt!2711992 e!4707303)))

(declare-fun res!3161522 () Bool)

(assert (=> d!2384104 (=> (not res!3161522) (not e!4707303))))

(assert (=> d!2384104 (= res!3161522 (not ((_ is EmptyExpr!21551) r!24602)))))

(assert (=> d!2384104 (= (lostCauseFct!583 r!24602) lt!2711992)))

(declare-fun bm!741693 () Bool)

(assert (=> bm!741693 (= call!741698 (lostCause!2004 (ite c!1466796 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7987214 () Bool)

(assert (=> b!7987214 (= e!4707307 call!741699)))

(declare-fun bm!741694 () Bool)

(assert (=> bm!741694 (= call!741699 (lostCause!2004 (ite c!1466796 (regTwo!43615 r!24602) (regTwo!43614 r!24602))))))

(assert (= (and d!2384104 res!3161522) b!7987209))

(assert (= (and b!7987209 (not res!3161525)) b!7987212))

(assert (= (and b!7987212 res!3161523) b!7987210))

(assert (= (and b!7987210 c!1466796) b!7987213))

(assert (= (and b!7987210 (not c!1466796)) b!7987208))

(assert (= (and b!7987213 res!3161524) b!7987211))

(assert (= (and b!7987208 (not res!3161526)) b!7987214))

(assert (= (or b!7987211 b!7987214) bm!741694))

(assert (= (or b!7987213 b!7987208) bm!741693))

(declare-fun m!8361174 () Bool)

(assert (=> d!2384104 m!8361174))

(assert (=> d!2384104 m!8361174))

(declare-fun m!8361176 () Bool)

(assert (=> d!2384104 m!8361176))

(declare-fun m!8361178 () Bool)

(assert (=> bm!741693 m!8361178))

(declare-fun m!8361180 () Bool)

(assert (=> bm!741694 m!8361180))

(assert (=> d!2383906 d!2384104))

(declare-fun call!741702 () Regex!21551)

(declare-fun c!1466797 () Bool)

(declare-fun bm!741695 () Bool)

(declare-fun c!1466799 () Bool)

(declare-fun c!1466801 () Bool)

(assert (=> bm!741695 (= call!741702 (derivativeStep!6571 (ite c!1466797 (regTwo!43615 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466799 (reg!21880 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466801 (regTwo!43614 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))) call!741550))))

(declare-fun b!7987215 () Bool)

(declare-fun call!741703 () Regex!21551)

(declare-fun call!741701 () Regex!21551)

(declare-fun e!4707310 () Regex!21551)

(assert (=> b!7987215 (= e!4707310 (Union!21551 (Concat!30550 call!741703 (regTwo!43614 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) call!741701))))

(declare-fun d!2384106 () Bool)

(declare-fun lt!2711993 () Regex!21551)

(assert (=> d!2384106 (validRegex!11855 lt!2711993)))

(declare-fun e!4707309 () Regex!21551)

(assert (=> d!2384106 (= lt!2711993 e!4707309)))

(declare-fun c!1466800 () Bool)

(assert (=> d!2384106 (= c!1466800 (or ((_ is EmptyExpr!21551) (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) ((_ is EmptyLang!21551) (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> d!2384106 (validRegex!11855 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))

(assert (=> d!2384106 (= (derivativeStep!6571 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))) call!741550) lt!2711993)))

(declare-fun bm!741696 () Bool)

(declare-fun call!741700 () Regex!21551)

(assert (=> bm!741696 (= call!741700 call!741702)))

(declare-fun b!7987216 () Bool)

(assert (=> b!7987216 (= c!1466797 ((_ is Union!21551) (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun e!4707312 () Regex!21551)

(declare-fun e!4707311 () Regex!21551)

(assert (=> b!7987216 (= e!4707312 e!4707311)))

(declare-fun b!7987217 () Bool)

(assert (=> b!7987217 (= e!4707312 (ite (= call!741550 (c!1466508 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987218 () Bool)

(declare-fun e!4707313 () Regex!21551)

(assert (=> b!7987218 (= e!4707311 e!4707313)))

(assert (=> b!7987218 (= c!1466799 ((_ is Star!21551) (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987219 () Bool)

(assert (=> b!7987219 (= e!4707309 e!4707312)))

(declare-fun c!1466798 () Bool)

(assert (=> b!7987219 (= c!1466798 ((_ is ElementMatch!21551) (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987220 () Bool)

(assert (=> b!7987220 (= c!1466801 (nullable!9644 (regOne!43614 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> b!7987220 (= e!4707313 e!4707310)))

(declare-fun bm!741697 () Bool)

(assert (=> bm!741697 (= call!741703 (derivativeStep!6571 (ite c!1466797 (regOne!43615 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) call!741550))))

(declare-fun b!7987221 () Bool)

(assert (=> b!7987221 (= e!4707310 (Union!21551 (Concat!30550 call!741701 (regTwo!43614 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) EmptyLang!21551))))

(declare-fun bm!741698 () Bool)

(assert (=> bm!741698 (= call!741701 call!741700)))

(declare-fun b!7987222 () Bool)

(assert (=> b!7987222 (= e!4707313 (Concat!30550 call!741700 (ite c!1466664 (regTwo!43615 r!24602) (ite c!1466666 (reg!21880 r!24602) (ite c!1466668 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987223 () Bool)

(assert (=> b!7987223 (= e!4707311 (Union!21551 call!741703 call!741702))))

(declare-fun b!7987224 () Bool)

(assert (=> b!7987224 (= e!4707309 EmptyLang!21551)))

(assert (= (and d!2384106 c!1466800) b!7987224))

(assert (= (and d!2384106 (not c!1466800)) b!7987219))

(assert (= (and b!7987219 c!1466798) b!7987217))

(assert (= (and b!7987219 (not c!1466798)) b!7987216))

(assert (= (and b!7987216 c!1466797) b!7987223))

(assert (= (and b!7987216 (not c!1466797)) b!7987218))

(assert (= (and b!7987218 c!1466799) b!7987222))

(assert (= (and b!7987218 (not c!1466799)) b!7987220))

(assert (= (and b!7987220 c!1466801) b!7987215))

(assert (= (and b!7987220 (not c!1466801)) b!7987221))

(assert (= (or b!7987215 b!7987221) bm!741698))

(assert (= (or b!7987222 bm!741698) bm!741696))

(assert (= (or b!7987223 bm!741696) bm!741695))

(assert (= (or b!7987223 b!7987215) bm!741697))

(declare-fun m!8361182 () Bool)

(assert (=> bm!741695 m!8361182))

(declare-fun m!8361184 () Bool)

(assert (=> d!2384106 m!8361184))

(declare-fun m!8361186 () Bool)

(assert (=> d!2384106 m!8361186))

(declare-fun m!8361188 () Bool)

(assert (=> b!7987220 m!8361188))

(declare-fun m!8361190 () Bool)

(assert (=> bm!741697 m!8361190))

(assert (=> bm!741598 d!2384106))

(declare-fun d!2384108 () Bool)

(declare-fun lt!2711994 () Int)

(assert (=> d!2384108 (>= lt!2711994 0)))

(declare-fun e!4707314 () Int)

(assert (=> d!2384108 (= lt!2711994 e!4707314)))

(declare-fun c!1466802 () Bool)

(assert (=> d!2384108 (= c!1466802 ((_ is Nil!74656) lt!2711887))))

(assert (=> d!2384108 (= (size!43487 lt!2711887) lt!2711994)))

(declare-fun b!7987225 () Bool)

(assert (=> b!7987225 (= e!4707314 0)))

(declare-fun b!7987226 () Bool)

(assert (=> b!7987226 (= e!4707314 (+ 1 (size!43487 (t!390523 lt!2711887))))))

(assert (= (and d!2384108 c!1466802) b!7987225))

(assert (= (and d!2384108 (not c!1466802)) b!7987226))

(declare-fun m!8361192 () Bool)

(assert (=> b!7987226 m!8361192))

(assert (=> b!7986342 d!2384108))

(assert (=> b!7986342 d!2383788))

(declare-fun d!2384110 () Bool)

(declare-fun lt!2711995 () Int)

(assert (=> d!2384110 (>= lt!2711995 0)))

(declare-fun e!4707315 () Int)

(assert (=> d!2384110 (= lt!2711995 e!4707315)))

(declare-fun c!1466803 () Bool)

(assert (=> d!2384110 (= c!1466803 ((_ is Nil!74656) (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))

(assert (=> d!2384110 (= (size!43487 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) lt!2711995)))

(declare-fun b!7987227 () Bool)

(assert (=> b!7987227 (= e!4707315 0)))

(declare-fun b!7987228 () Bool)

(assert (=> b!7987228 (= e!4707315 (+ 1 (size!43487 (t!390523 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(assert (= (and d!2384110 c!1466803) b!7987227))

(assert (= (and d!2384110 (not c!1466803)) b!7987228))

(declare-fun m!8361194 () Bool)

(assert (=> b!7987228 m!8361194))

(assert (=> b!7986342 d!2384110))

(declare-fun d!2384112 () Bool)

(declare-fun lt!2711996 () Regex!21551)

(assert (=> d!2384112 (validRegex!11855 lt!2711996)))

(declare-fun e!4707316 () Regex!21551)

(assert (=> d!2384112 (= lt!2711996 e!4707316)))

(declare-fun c!1466804 () Bool)

(assert (=> d!2384112 (= c!1466804 ((_ is Cons!74656) (t!390523 (t!390523 testedP!447))))))

(assert (=> d!2384112 (validRegex!11855 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (h!81104 (t!390523 testedP!447))))))

(assert (=> d!2384112 (= (derivative!737 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (h!81104 (t!390523 testedP!447))) (t!390523 (t!390523 testedP!447))) lt!2711996)))

(declare-fun b!7987229 () Bool)

(assert (=> b!7987229 (= e!4707316 (derivative!737 (derivativeStep!6571 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (h!81104 (t!390523 testedP!447))) (h!81104 (t!390523 (t!390523 testedP!447)))) (t!390523 (t!390523 (t!390523 testedP!447)))))))

(declare-fun b!7987230 () Bool)

(assert (=> b!7987230 (= e!4707316 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (h!81104 (t!390523 testedP!447))))))

(assert (= (and d!2384112 c!1466804) b!7987229))

(assert (= (and d!2384112 (not c!1466804)) b!7987230))

(declare-fun m!8361196 () Bool)

(assert (=> d!2384112 m!8361196))

(assert (=> d!2384112 m!8360640))

(declare-fun m!8361198 () Bool)

(assert (=> d!2384112 m!8361198))

(assert (=> b!7987229 m!8360640))

(declare-fun m!8361200 () Bool)

(assert (=> b!7987229 m!8361200))

(assert (=> b!7987229 m!8361200))

(declare-fun m!8361202 () Bool)

(assert (=> b!7987229 m!8361202))

(assert (=> b!7986408 d!2384112))

(declare-fun bm!741699 () Bool)

(declare-fun c!1466807 () Bool)

(declare-fun c!1466809 () Bool)

(declare-fun call!741706 () Regex!21551)

(declare-fun c!1466805 () Bool)

(assert (=> bm!741699 (= call!741706 (derivativeStep!6571 (ite c!1466805 (regTwo!43615 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) (ite c!1466807 (reg!21880 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) (ite c!1466809 (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))) (h!81104 (t!390523 testedP!447))))))

(declare-fun call!741705 () Regex!21551)

(declare-fun e!4707318 () Regex!21551)

(declare-fun call!741707 () Regex!21551)

(declare-fun b!7987231 () Bool)

(assert (=> b!7987231 (= e!4707318 (Union!21551 (Concat!30550 call!741707 (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))) call!741705))))

(declare-fun d!2384114 () Bool)

(declare-fun lt!2711997 () Regex!21551)

(assert (=> d!2384114 (validRegex!11855 lt!2711997)))

(declare-fun e!4707317 () Regex!21551)

(assert (=> d!2384114 (= lt!2711997 e!4707317)))

(declare-fun c!1466808 () Bool)

(assert (=> d!2384114 (= c!1466808 (or ((_ is EmptyExpr!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) ((_ is EmptyLang!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))))

(assert (=> d!2384114 (validRegex!11855 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))

(assert (=> d!2384114 (= (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)) (h!81104 (t!390523 testedP!447))) lt!2711997)))

(declare-fun bm!741700 () Bool)

(declare-fun call!741704 () Regex!21551)

(assert (=> bm!741700 (= call!741704 call!741706)))

(declare-fun b!7987232 () Bool)

(assert (=> b!7987232 (= c!1466805 ((_ is Union!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))

(declare-fun e!4707320 () Regex!21551)

(declare-fun e!4707319 () Regex!21551)

(assert (=> b!7987232 (= e!4707320 e!4707319)))

(declare-fun b!7987233 () Bool)

(assert (=> b!7987233 (= e!4707320 (ite (= (h!81104 (t!390523 testedP!447)) (c!1466508 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987234 () Bool)

(declare-fun e!4707321 () Regex!21551)

(assert (=> b!7987234 (= e!4707319 e!4707321)))

(assert (=> b!7987234 (= c!1466807 ((_ is Star!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))

(declare-fun b!7987235 () Bool)

(assert (=> b!7987235 (= e!4707317 e!4707320)))

(declare-fun c!1466806 () Bool)

(assert (=> b!7987235 (= c!1466806 ((_ is ElementMatch!21551) (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))

(declare-fun b!7987236 () Bool)

(assert (=> b!7987236 (= c!1466809 (nullable!9644 (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))))))

(assert (=> b!7987236 (= e!4707321 e!4707318)))

(declare-fun bm!741701 () Bool)

(assert (=> bm!741701 (= call!741707 (derivativeStep!6571 (ite c!1466805 (regOne!43615 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))) (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))) (h!81104 (t!390523 testedP!447))))))

(declare-fun b!7987237 () Bool)

(assert (=> b!7987237 (= e!4707318 (Union!21551 (Concat!30550 call!741705 (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 testedP!447)))) EmptyLang!21551))))

(declare-fun bm!741702 () Bool)

(assert (=> bm!741702 (= call!741705 call!741704)))

(declare-fun b!7987238 () Bool)

(assert (=> b!7987238 (= e!4707321 (Concat!30550 call!741704 (derivativeStep!6571 baseR!116 (h!81104 testedP!447))))))

(declare-fun b!7987239 () Bool)

(assert (=> b!7987239 (= e!4707319 (Union!21551 call!741707 call!741706))))

(declare-fun b!7987240 () Bool)

(assert (=> b!7987240 (= e!4707317 EmptyLang!21551)))

(assert (= (and d!2384114 c!1466808) b!7987240))

(assert (= (and d!2384114 (not c!1466808)) b!7987235))

(assert (= (and b!7987235 c!1466806) b!7987233))

(assert (= (and b!7987235 (not c!1466806)) b!7987232))

(assert (= (and b!7987232 c!1466805) b!7987239))

(assert (= (and b!7987232 (not c!1466805)) b!7987234))

(assert (= (and b!7987234 c!1466807) b!7987238))

(assert (= (and b!7987234 (not c!1466807)) b!7987236))

(assert (= (and b!7987236 c!1466809) b!7987231))

(assert (= (and b!7987236 (not c!1466809)) b!7987237))

(assert (= (or b!7987231 b!7987237) bm!741702))

(assert (= (or b!7987238 bm!741702) bm!741700))

(assert (= (or b!7987239 bm!741700) bm!741699))

(assert (= (or b!7987239 b!7987231) bm!741701))

(declare-fun m!8361204 () Bool)

(assert (=> bm!741699 m!8361204))

(declare-fun m!8361206 () Bool)

(assert (=> d!2384114 m!8361206))

(assert (=> d!2384114 m!8360214))

(assert (=> d!2384114 m!8360638))

(declare-fun m!8361208 () Bool)

(assert (=> b!7987236 m!8361208))

(declare-fun m!8361210 () Bool)

(assert (=> bm!741701 m!8361210))

(assert (=> b!7986408 d!2384114))

(assert (=> b!7986347 d!2383744))

(declare-fun d!2384116 () Bool)

(declare-fun lt!2711998 () Int)

(assert (=> d!2384116 (>= lt!2711998 0)))

(declare-fun e!4707322 () Int)

(assert (=> d!2384116 (= lt!2711998 e!4707322)))

(declare-fun c!1466810 () Bool)

(assert (=> d!2384116 (= c!1466810 ((_ is Nil!74656) (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))

(assert (=> d!2384116 (= (size!43487 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))) lt!2711998)))

(declare-fun b!7987241 () Bool)

(assert (=> b!7987241 (= e!4707322 0)))

(declare-fun b!7987242 () Bool)

(assert (=> b!7987242 (= e!4707322 (+ 1 (size!43487 (t!390523 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))))

(assert (= (and d!2384116 c!1466810) b!7987241))

(assert (= (and d!2384116 (not c!1466810)) b!7987242))

(declare-fun m!8361212 () Bool)

(assert (=> b!7987242 m!8361212))

(assert (=> b!7986347 d!2384116))

(declare-fun d!2384118 () Bool)

(declare-fun lt!2711999 () Regex!21551)

(assert (=> d!2384118 (validRegex!11855 lt!2711999)))

(declare-fun e!4707323 () Regex!21551)

(assert (=> d!2384118 (= lt!2711999 e!4707323)))

(declare-fun c!1466811 () Bool)

(assert (=> d!2384118 (= c!1466811 ((_ is Cons!74656) (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (=> d!2384118 (validRegex!11855 (derivativeStep!6571 baseR!116 (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (=> d!2384118 (= (derivative!737 (derivativeStep!6571 baseR!116 (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))) (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))) lt!2711999)))

(declare-fun b!7987243 () Bool)

(assert (=> b!7987243 (= e!4707323 (derivative!737 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))) (h!81104 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656))))) (t!390523 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656))))))))

(declare-fun b!7987244 () Bool)

(assert (=> b!7987244 (= e!4707323 (derivativeStep!6571 baseR!116 (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (= (and d!2384118 c!1466811) b!7987243))

(assert (= (and d!2384118 (not c!1466811)) b!7987244))

(declare-fun m!8361214 () Bool)

(assert (=> d!2384118 m!8361214))

(assert (=> d!2384118 m!8360616))

(declare-fun m!8361216 () Bool)

(assert (=> d!2384118 m!8361216))

(assert (=> b!7987243 m!8360616))

(declare-fun m!8361218 () Bool)

(assert (=> b!7987243 m!8361218))

(assert (=> b!7987243 m!8361218))

(declare-fun m!8361220 () Bool)

(assert (=> b!7987243 m!8361220))

(assert (=> b!7986392 d!2384118))

(declare-fun c!1466812 () Bool)

(declare-fun c!1466816 () Bool)

(declare-fun c!1466814 () Bool)

(declare-fun call!741710 () Regex!21551)

(declare-fun bm!741703 () Bool)

(assert (=> bm!741703 (= call!741710 (derivativeStep!6571 (ite c!1466812 (regTwo!43615 baseR!116) (ite c!1466814 (reg!21880 baseR!116) (ite c!1466816 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))) (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))))))

(declare-fun call!741709 () Regex!21551)

(declare-fun b!7987245 () Bool)

(declare-fun call!741711 () Regex!21551)

(declare-fun e!4707325 () Regex!21551)

(assert (=> b!7987245 (= e!4707325 (Union!21551 (Concat!30550 call!741711 (regTwo!43614 baseR!116)) call!741709))))

(declare-fun d!2384120 () Bool)

(declare-fun lt!2712000 () Regex!21551)

(assert (=> d!2384120 (validRegex!11855 lt!2712000)))

(declare-fun e!4707324 () Regex!21551)

(assert (=> d!2384120 (= lt!2712000 e!4707324)))

(declare-fun c!1466815 () Bool)

(assert (=> d!2384120 (= c!1466815 (or ((_ is EmptyExpr!21551) baseR!116) ((_ is EmptyLang!21551) baseR!116)))))

(assert (=> d!2384120 (validRegex!11855 baseR!116)))

(assert (=> d!2384120 (= (derivativeStep!6571 baseR!116 (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))) lt!2712000)))

(declare-fun bm!741704 () Bool)

(declare-fun call!741708 () Regex!21551)

(assert (=> bm!741704 (= call!741708 call!741710)))

(declare-fun b!7987246 () Bool)

(assert (=> b!7987246 (= c!1466812 ((_ is Union!21551) baseR!116))))

(declare-fun e!4707327 () Regex!21551)

(declare-fun e!4707326 () Regex!21551)

(assert (=> b!7987246 (= e!4707327 e!4707326)))

(declare-fun b!7987247 () Bool)

(assert (=> b!7987247 (= e!4707327 (ite (= (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656))) (c!1466508 baseR!116)) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987248 () Bool)

(declare-fun e!4707328 () Regex!21551)

(assert (=> b!7987248 (= e!4707326 e!4707328)))

(assert (=> b!7987248 (= c!1466814 ((_ is Star!21551) baseR!116))))

(declare-fun b!7987249 () Bool)

(assert (=> b!7987249 (= e!4707324 e!4707327)))

(declare-fun c!1466813 () Bool)

(assert (=> b!7987249 (= c!1466813 ((_ is ElementMatch!21551) baseR!116))))

(declare-fun b!7987250 () Bool)

(assert (=> b!7987250 (= c!1466816 (nullable!9644 (regOne!43614 baseR!116)))))

(assert (=> b!7987250 (= e!4707328 e!4707325)))

(declare-fun bm!741705 () Bool)

(assert (=> bm!741705 (= call!741711 (derivativeStep!6571 (ite c!1466812 (regOne!43615 baseR!116) (regOne!43614 baseR!116)) (h!81104 (++!18413 testedP!447 (Cons!74656 lt!2711601 Nil!74656)))))))

(declare-fun b!7987251 () Bool)

(assert (=> b!7987251 (= e!4707325 (Union!21551 (Concat!30550 call!741709 (regTwo!43614 baseR!116)) EmptyLang!21551))))

(declare-fun bm!741706 () Bool)

(assert (=> bm!741706 (= call!741709 call!741708)))

(declare-fun b!7987252 () Bool)

(assert (=> b!7987252 (= e!4707328 (Concat!30550 call!741708 baseR!116))))

(declare-fun b!7987253 () Bool)

(assert (=> b!7987253 (= e!4707326 (Union!21551 call!741711 call!741710))))

(declare-fun b!7987254 () Bool)

(assert (=> b!7987254 (= e!4707324 EmptyLang!21551)))

(assert (= (and d!2384120 c!1466815) b!7987254))

(assert (= (and d!2384120 (not c!1466815)) b!7987249))

(assert (= (and b!7987249 c!1466813) b!7987247))

(assert (= (and b!7987249 (not c!1466813)) b!7987246))

(assert (= (and b!7987246 c!1466812) b!7987253))

(assert (= (and b!7987246 (not c!1466812)) b!7987248))

(assert (= (and b!7987248 c!1466814) b!7987252))

(assert (= (and b!7987248 (not c!1466814)) b!7987250))

(assert (= (and b!7987250 c!1466816) b!7987245))

(assert (= (and b!7987250 (not c!1466816)) b!7987251))

(assert (= (or b!7987245 b!7987251) bm!741706))

(assert (= (or b!7987252 bm!741706) bm!741704))

(assert (= (or b!7987253 bm!741704) bm!741703))

(assert (= (or b!7987253 b!7987245) bm!741705))

(declare-fun m!8361222 () Bool)

(assert (=> bm!741703 m!8361222))

(declare-fun m!8361224 () Bool)

(assert (=> d!2384120 m!8361224))

(assert (=> d!2384120 m!8360154))

(assert (=> b!7987250 m!8360426))

(declare-fun m!8361226 () Bool)

(assert (=> bm!741705 m!8361226))

(assert (=> b!7986392 d!2384120))

(declare-fun d!2384122 () Bool)

(declare-fun c!1466817 () Bool)

(assert (=> d!2384122 (= c!1466817 ((_ is Nil!74656) lt!2711899))))

(declare-fun e!4707329 () (InoxSet C!43440))

(assert (=> d!2384122 (= (content!15870 lt!2711899) e!4707329)))

(declare-fun b!7987255 () Bool)

(assert (=> b!7987255 (= e!4707329 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987256 () Bool)

(assert (=> b!7987256 (= e!4707329 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711899) true) (content!15870 (t!390523 lt!2711899))))))

(assert (= (and d!2384122 c!1466817) b!7987255))

(assert (= (and d!2384122 (not c!1466817)) b!7987256))

(declare-fun m!8361228 () Bool)

(assert (=> b!7987256 m!8361228))

(declare-fun m!8361230 () Bool)

(assert (=> b!7987256 m!8361230))

(assert (=> d!2383878 d!2384122))

(assert (=> d!2383878 d!2383928))

(declare-fun d!2384124 () Bool)

(declare-fun c!1466818 () Bool)

(assert (=> d!2384124 (= c!1466818 ((_ is Nil!74656) lt!2711627))))

(declare-fun e!4707330 () (InoxSet C!43440))

(assert (=> d!2384124 (= (content!15870 lt!2711627) e!4707330)))

(declare-fun b!7987257 () Bool)

(assert (=> b!7987257 (= e!4707330 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987258 () Bool)

(assert (=> b!7987258 (= e!4707330 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711627) true) (content!15870 (t!390523 lt!2711627))))))

(assert (= (and d!2384124 c!1466818) b!7987257))

(assert (= (and d!2384124 (not c!1466818)) b!7987258))

(declare-fun m!8361232 () Bool)

(assert (=> b!7987258 m!8361232))

(declare-fun m!8361234 () Bool)

(assert (=> b!7987258 m!8361234))

(assert (=> d!2383878 d!2384124))

(declare-fun d!2384126 () Bool)

(assert (=> d!2384126 (= (isEmpty!42959 (_1!38683 lt!2711866)) ((_ is Nil!74656) (_1!38683 lt!2711866)))))

(assert (=> b!7986258 d!2384126))

(declare-fun d!2384128 () Bool)

(declare-fun lt!2712001 () Int)

(assert (=> d!2384128 (>= lt!2712001 0)))

(declare-fun e!4707331 () Int)

(assert (=> d!2384128 (= lt!2712001 e!4707331)))

(declare-fun c!1466819 () Bool)

(assert (=> d!2384128 (= c!1466819 ((_ is Nil!74656) lt!2711891))))

(assert (=> d!2384128 (= (size!43487 lt!2711891) lt!2712001)))

(declare-fun b!7987259 () Bool)

(assert (=> b!7987259 (= e!4707331 0)))

(declare-fun b!7987260 () Bool)

(assert (=> b!7987260 (= e!4707331 (+ 1 (size!43487 (t!390523 lt!2711891))))))

(assert (= (and d!2384128 c!1466819) b!7987259))

(assert (= (and d!2384128 (not c!1466819)) b!7987260))

(declare-fun m!8361236 () Bool)

(assert (=> b!7987260 m!8361236))

(assert (=> b!7986358 d!2384128))

(declare-fun d!2384130 () Bool)

(declare-fun lt!2712002 () Int)

(assert (=> d!2384130 (>= lt!2712002 0)))

(declare-fun e!4707332 () Int)

(assert (=> d!2384130 (= lt!2712002 e!4707332)))

(declare-fun c!1466820 () Bool)

(assert (=> d!2384130 (= c!1466820 ((_ is Nil!74656) (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))))))

(assert (=> d!2384130 (= (size!43487 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) lt!2712002)))

(declare-fun b!7987261 () Bool)

(assert (=> b!7987261 (= e!4707332 0)))

(declare-fun b!7987262 () Bool)

(assert (=> b!7987262 (= e!4707332 (+ 1 (size!43487 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))))))))

(assert (= (and d!2384130 c!1466820) b!7987261))

(assert (= (and d!2384130 (not c!1466820)) b!7987262))

(declare-fun m!8361238 () Bool)

(assert (=> b!7987262 m!8361238))

(assert (=> b!7986358 d!2384130))

(declare-fun d!2384132 () Bool)

(declare-fun lt!2712003 () Int)

(assert (=> d!2384132 (>= lt!2712003 0)))

(declare-fun e!4707333 () Int)

(assert (=> d!2384132 (= lt!2712003 e!4707333)))

(declare-fun c!1466821 () Bool)

(assert (=> d!2384132 (= c!1466821 ((_ is Nil!74656) lt!2711808))))

(assert (=> d!2384132 (= (size!43487 lt!2711808) lt!2712003)))

(declare-fun b!7987263 () Bool)

(assert (=> b!7987263 (= e!4707333 0)))

(declare-fun b!7987264 () Bool)

(assert (=> b!7987264 (= e!4707333 (+ 1 (size!43487 (t!390523 lt!2711808))))))

(assert (= (and d!2384132 c!1466821) b!7987263))

(assert (= (and d!2384132 (not c!1466821)) b!7987264))

(declare-fun m!8361240 () Bool)

(assert (=> b!7987264 m!8361240))

(assert (=> b!7986358 d!2384132))

(declare-fun d!2384134 () Bool)

(assert (=> d!2384134 (= (nullable!9644 (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))) (nullableFct!3814 (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(declare-fun bs!1970340 () Bool)

(assert (= bs!1970340 d!2384134))

(declare-fun m!8361242 () Bool)

(assert (=> bs!1970340 m!8361242))

(assert (=> b!7986447 d!2384134))

(declare-fun d!2384136 () Bool)

(declare-fun lt!2712004 () Int)

(assert (=> d!2384136 (>= lt!2712004 0)))

(declare-fun e!4707334 () Int)

(assert (=> d!2384136 (= lt!2712004 e!4707334)))

(declare-fun c!1466822 () Bool)

(assert (=> d!2384136 (= c!1466822 ((_ is Nil!74656) (t!390523 (t!390523 input!7927))))))

(assert (=> d!2384136 (= (size!43487 (t!390523 (t!390523 input!7927))) lt!2712004)))

(declare-fun b!7987265 () Bool)

(assert (=> b!7987265 (= e!4707334 0)))

(declare-fun b!7987266 () Bool)

(assert (=> b!7987266 (= e!4707334 (+ 1 (size!43487 (t!390523 (t!390523 (t!390523 input!7927))))))))

(assert (= (and d!2384136 c!1466822) b!7987265))

(assert (= (and d!2384136 (not c!1466822)) b!7987266))

(declare-fun m!8361244 () Bool)

(assert (=> b!7987266 m!8361244))

(assert (=> b!7986274 d!2384136))

(declare-fun d!2384138 () Bool)

(assert (=> d!2384138 (= (nullable!9644 (ite c!1466644 (regTwo!43615 r!24602) (regOne!43614 r!24602))) (nullableFct!3814 (ite c!1466644 (regTwo!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun bs!1970341 () Bool)

(assert (= bs!1970341 d!2384138))

(declare-fun m!8361246 () Bool)

(assert (=> bs!1970341 m!8361246))

(assert (=> bm!741586 d!2384138))

(declare-fun c!1466823 () Bool)

(declare-fun call!741714 () Regex!21551)

(declare-fun bm!741707 () Bool)

(declare-fun c!1466827 () Bool)

(declare-fun c!1466825 () Bool)

(assert (=> bm!741707 (= call!741714 (derivativeStep!6571 (ite c!1466823 (regTwo!43615 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (ite c!1466825 (reg!21880 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (ite c!1466827 (regTwo!43614 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (regOne!43614 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))) (h!81104 lt!2711603)))))

(declare-fun call!741713 () Regex!21551)

(declare-fun b!7987267 () Bool)

(declare-fun call!741715 () Regex!21551)

(declare-fun e!4707336 () Regex!21551)

(assert (=> b!7987267 (= e!4707336 (Union!21551 (Concat!30550 call!741715 (regTwo!43614 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) call!741713))))

(declare-fun d!2384140 () Bool)

(declare-fun lt!2712005 () Regex!21551)

(assert (=> d!2384140 (validRegex!11855 lt!2712005)))

(declare-fun e!4707335 () Regex!21551)

(assert (=> d!2384140 (= lt!2712005 e!4707335)))

(declare-fun c!1466826 () Bool)

(assert (=> d!2384140 (= c!1466826 (or ((_ is EmptyExpr!21551) (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) ((_ is EmptyLang!21551) (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))))

(assert (=> d!2384140 (validRegex!11855 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))

(assert (=> d!2384140 (= (derivativeStep!6571 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))) (h!81104 lt!2711603)) lt!2712005)))

(declare-fun bm!741708 () Bool)

(declare-fun call!741712 () Regex!21551)

(assert (=> bm!741708 (= call!741712 call!741714)))

(declare-fun b!7987268 () Bool)

(assert (=> b!7987268 (= c!1466823 ((_ is Union!21551) (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun e!4707338 () Regex!21551)

(declare-fun e!4707337 () Regex!21551)

(assert (=> b!7987268 (= e!4707338 e!4707337)))

(declare-fun b!7987269 () Bool)

(assert (=> b!7987269 (= e!4707338 (ite (= (h!81104 lt!2711603) (c!1466508 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987270 () Bool)

(declare-fun e!4707339 () Regex!21551)

(assert (=> b!7987270 (= e!4707337 e!4707339)))

(assert (=> b!7987270 (= c!1466825 ((_ is Star!21551) (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun b!7987271 () Bool)

(assert (=> b!7987271 (= e!4707335 e!4707338)))

(declare-fun c!1466824 () Bool)

(assert (=> b!7987271 (= c!1466824 ((_ is ElementMatch!21551) (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun b!7987272 () Bool)

(assert (=> b!7987272 (= c!1466827 (nullable!9644 (regOne!43614 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))))

(assert (=> b!7987272 (= e!4707339 e!4707336)))

(declare-fun bm!741709 () Bool)

(assert (=> bm!741709 (= call!741715 (derivativeStep!6571 (ite c!1466823 (regOne!43615 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (regOne!43614 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) (h!81104 lt!2711603)))))

(declare-fun b!7987273 () Bool)

(assert (=> b!7987273 (= e!4707336 (Union!21551 (Concat!30550 call!741713 (regTwo!43614 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) EmptyLang!21551))))

(declare-fun bm!741710 () Bool)

(assert (=> bm!741710 (= call!741713 call!741712)))

(declare-fun b!7987274 () Bool)

(assert (=> b!7987274 (= e!4707339 (Concat!30550 call!741712 (ite c!1466620 (regTwo!43615 baseR!116) (ite c!1466622 (reg!21880 baseR!116) (ite c!1466624 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun b!7987275 () Bool)

(assert (=> b!7987275 (= e!4707337 (Union!21551 call!741715 call!741714))))

(declare-fun b!7987276 () Bool)

(assert (=> b!7987276 (= e!4707335 EmptyLang!21551)))

(assert (= (and d!2384140 c!1466826) b!7987276))

(assert (= (and d!2384140 (not c!1466826)) b!7987271))

(assert (= (and b!7987271 c!1466824) b!7987269))

(assert (= (and b!7987271 (not c!1466824)) b!7987268))

(assert (= (and b!7987268 c!1466823) b!7987275))

(assert (= (and b!7987268 (not c!1466823)) b!7987270))

(assert (= (and b!7987270 c!1466825) b!7987274))

(assert (= (and b!7987270 (not c!1466825)) b!7987272))

(assert (= (and b!7987272 c!1466827) b!7987267))

(assert (= (and b!7987272 (not c!1466827)) b!7987273))

(assert (= (or b!7987267 b!7987273) bm!741710))

(assert (= (or b!7987274 bm!741710) bm!741708))

(assert (= (or b!7987275 bm!741708) bm!741707))

(assert (= (or b!7987275 b!7987267) bm!741709))

(declare-fun m!8361248 () Bool)

(assert (=> bm!741707 m!8361248))

(declare-fun m!8361250 () Bool)

(assert (=> d!2384140 m!8361250))

(declare-fun m!8361252 () Bool)

(assert (=> d!2384140 m!8361252))

(declare-fun m!8361254 () Bool)

(assert (=> b!7987272 m!8361254))

(declare-fun m!8361256 () Bool)

(assert (=> bm!741709 m!8361256))

(assert (=> bm!741558 d!2384140))

(declare-fun call!741718 () Regex!21551)

(declare-fun bm!741711 () Bool)

(declare-fun c!1466830 () Bool)

(declare-fun c!1466828 () Bool)

(declare-fun c!1466832 () Bool)

(assert (=> bm!741711 (= call!741718 (derivativeStep!6571 (ite c!1466828 (regTwo!43615 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))) (ite c!1466830 (reg!21880 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))) (ite c!1466832 (regTwo!43614 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))) lt!2711601))))

(declare-fun e!4707341 () Regex!21551)

(declare-fun call!741719 () Regex!21551)

(declare-fun b!7987277 () Bool)

(declare-fun call!741717 () Regex!21551)

(assert (=> b!7987277 (= e!4707341 (Union!21551 (Concat!30550 call!741719 (regTwo!43614 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))) call!741717))))

(declare-fun d!2384142 () Bool)

(declare-fun lt!2712006 () Regex!21551)

(assert (=> d!2384142 (validRegex!11855 lt!2712006)))

(declare-fun e!4707340 () Regex!21551)

(assert (=> d!2384142 (= lt!2712006 e!4707340)))

(declare-fun c!1466831 () Bool)

(assert (=> d!2384142 (= c!1466831 (or ((_ is EmptyExpr!21551) (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))) ((_ is EmptyLang!21551) (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> d!2384142 (validRegex!11855 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(assert (=> d!2384142 (= (derivativeStep!6571 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))) lt!2711601) lt!2712006)))

(declare-fun bm!741712 () Bool)

(declare-fun call!741716 () Regex!21551)

(assert (=> bm!741712 (= call!741716 call!741718)))

(declare-fun b!7987278 () Bool)

(assert (=> b!7987278 (= c!1466828 ((_ is Union!21551) (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))

(declare-fun e!4707343 () Regex!21551)

(declare-fun e!4707342 () Regex!21551)

(assert (=> b!7987278 (= e!4707343 e!4707342)))

(declare-fun b!7987279 () Bool)

(assert (=> b!7987279 (= e!4707343 (ite (= lt!2711601 (c!1466508 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987280 () Bool)

(declare-fun e!4707344 () Regex!21551)

(assert (=> b!7987280 (= e!4707342 e!4707344)))

(assert (=> b!7987280 (= c!1466830 ((_ is Star!21551) (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987281 () Bool)

(assert (=> b!7987281 (= e!4707340 e!4707343)))

(declare-fun c!1466829 () Bool)

(assert (=> b!7987281 (= c!1466829 ((_ is ElementMatch!21551) (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987282 () Bool)

(assert (=> b!7987282 (= c!1466832 (nullable!9644 (regOne!43614 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> b!7987282 (= e!4707344 e!4707341)))

(declare-fun bm!741713 () Bool)

(assert (=> bm!741713 (= call!741719 (derivativeStep!6571 (ite c!1466828 (regOne!43615 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))) lt!2711601))))

(declare-fun b!7987283 () Bool)

(assert (=> b!7987283 (= e!4707341 (Union!21551 (Concat!30550 call!741717 (regTwo!43614 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))) EmptyLang!21551))))

(declare-fun bm!741714 () Bool)

(assert (=> bm!741714 (= call!741717 call!741716)))

(declare-fun b!7987284 () Bool)

(assert (=> b!7987284 (= e!4707344 (Concat!30550 call!741716 (ite c!1466679 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987285 () Bool)

(assert (=> b!7987285 (= e!4707342 (Union!21551 call!741719 call!741718))))

(declare-fun b!7987286 () Bool)

(assert (=> b!7987286 (= e!4707340 EmptyLang!21551)))

(assert (= (and d!2384142 c!1466831) b!7987286))

(assert (= (and d!2384142 (not c!1466831)) b!7987281))

(assert (= (and b!7987281 c!1466829) b!7987279))

(assert (= (and b!7987281 (not c!1466829)) b!7987278))

(assert (= (and b!7987278 c!1466828) b!7987285))

(assert (= (and b!7987278 (not c!1466828)) b!7987280))

(assert (= (and b!7987280 c!1466830) b!7987284))

(assert (= (and b!7987280 (not c!1466830)) b!7987282))

(assert (= (and b!7987282 c!1466832) b!7987277))

(assert (= (and b!7987282 (not c!1466832)) b!7987283))

(assert (= (or b!7987277 b!7987283) bm!741714))

(assert (= (or b!7987284 bm!741714) bm!741712))

(assert (= (or b!7987285 bm!741712) bm!741711))

(assert (= (or b!7987285 b!7987277) bm!741713))

(declare-fun m!8361258 () Bool)

(assert (=> bm!741711 m!8361258))

(declare-fun m!8361260 () Bool)

(assert (=> d!2384142 m!8361260))

(declare-fun m!8361262 () Bool)

(assert (=> d!2384142 m!8361262))

(declare-fun m!8361264 () Bool)

(assert (=> b!7987282 m!8361264))

(declare-fun m!8361266 () Bool)

(assert (=> bm!741713 m!8361266))

(assert (=> bm!741608 d!2384142))

(assert (=> bm!741564 d!2383802))

(declare-fun call!741722 () Regex!21551)

(declare-fun bm!741715 () Bool)

(declare-fun c!1466833 () Bool)

(declare-fun c!1466835 () Bool)

(declare-fun c!1466837 () Bool)

(assert (=> bm!741715 (= call!741722 (derivativeStep!6571 (ite c!1466833 (regTwo!43615 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))) (ite c!1466835 (reg!21880 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))) (ite c!1466837 (regTwo!43614 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))) (regOne!43614 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))))) lt!2711601))))

(declare-fun call!741723 () Regex!21551)

(declare-fun e!4707346 () Regex!21551)

(declare-fun call!741721 () Regex!21551)

(declare-fun b!7987287 () Bool)

(assert (=> b!7987287 (= e!4707346 (Union!21551 (Concat!30550 call!741723 (regTwo!43614 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))) call!741721))))

(declare-fun d!2384144 () Bool)

(declare-fun lt!2712007 () Regex!21551)

(assert (=> d!2384144 (validRegex!11855 lt!2712007)))

(declare-fun e!4707345 () Regex!21551)

(assert (=> d!2384144 (= lt!2712007 e!4707345)))

(declare-fun c!1466836 () Bool)

(assert (=> d!2384144 (= c!1466836 (or ((_ is EmptyExpr!21551) (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))) ((_ is EmptyLang!21551) (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))))))

(assert (=> d!2384144 (validRegex!11855 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))))

(assert (=> d!2384144 (= (derivativeStep!6571 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))) lt!2711601) lt!2712007)))

(declare-fun bm!741716 () Bool)

(declare-fun call!741720 () Regex!21551)

(assert (=> bm!741716 (= call!741720 call!741722)))

(declare-fun b!7987288 () Bool)

(assert (=> b!7987288 (= c!1466833 ((_ is Union!21551) (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))))

(declare-fun e!4707348 () Regex!21551)

(declare-fun e!4707347 () Regex!21551)

(assert (=> b!7987288 (= e!4707348 e!4707347)))

(declare-fun b!7987289 () Bool)

(assert (=> b!7987289 (= e!4707348 (ite (= lt!2711601 (c!1466508 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987290 () Bool)

(declare-fun e!4707349 () Regex!21551)

(assert (=> b!7987290 (= e!4707347 e!4707349)))

(assert (=> b!7987290 (= c!1466835 ((_ is Star!21551) (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))))

(declare-fun b!7987291 () Bool)

(assert (=> b!7987291 (= e!4707345 e!4707348)))

(declare-fun c!1466834 () Bool)

(assert (=> b!7987291 (= c!1466834 ((_ is ElementMatch!21551) (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))))

(declare-fun b!7987292 () Bool)

(assert (=> b!7987292 (= c!1466837 (nullable!9644 (regOne!43614 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))))))

(assert (=> b!7987292 (= e!4707349 e!4707346)))

(declare-fun bm!741717 () Bool)

(assert (=> bm!741717 (= call!741723 (derivativeStep!6571 (ite c!1466833 (regOne!43615 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))) (regOne!43614 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))) lt!2711601))))

(declare-fun b!7987293 () Bool)

(assert (=> b!7987293 (= e!4707346 (Union!21551 (Concat!30550 call!741721 (regTwo!43614 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))) EmptyLang!21551))))

(declare-fun bm!741718 () Bool)

(assert (=> bm!741718 (= call!741721 call!741720)))

(declare-fun b!7987294 () Bool)

(assert (=> b!7987294 (= e!4707349 (Concat!30550 call!741720 (ite c!1466650 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466652 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466654 (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))))

(declare-fun b!7987295 () Bool)

(assert (=> b!7987295 (= e!4707347 (Union!21551 call!741723 call!741722))))

(declare-fun b!7987296 () Bool)

(assert (=> b!7987296 (= e!4707345 EmptyLang!21551)))

(assert (= (and d!2384144 c!1466836) b!7987296))

(assert (= (and d!2384144 (not c!1466836)) b!7987291))

(assert (= (and b!7987291 c!1466834) b!7987289))

(assert (= (and b!7987291 (not c!1466834)) b!7987288))

(assert (= (and b!7987288 c!1466833) b!7987295))

(assert (= (and b!7987288 (not c!1466833)) b!7987290))

(assert (= (and b!7987290 c!1466835) b!7987294))

(assert (= (and b!7987290 (not c!1466835)) b!7987292))

(assert (= (and b!7987292 c!1466837) b!7987287))

(assert (= (and b!7987292 (not c!1466837)) b!7987293))

(assert (= (or b!7987287 b!7987293) bm!741718))

(assert (= (or b!7987294 bm!741718) bm!741716))

(assert (= (or b!7987295 bm!741716) bm!741715))

(assert (= (or b!7987295 b!7987287) bm!741717))

(declare-fun m!8361268 () Bool)

(assert (=> bm!741715 m!8361268))

(declare-fun m!8361270 () Bool)

(assert (=> d!2384144 m!8361270))

(declare-fun m!8361272 () Bool)

(assert (=> d!2384144 m!8361272))

(declare-fun m!8361274 () Bool)

(assert (=> b!7987292 m!8361274))

(declare-fun m!8361276 () Bool)

(assert (=> bm!741717 m!8361276))

(assert (=> bm!741588 d!2384144))

(declare-fun d!2384146 () Bool)

(assert (=> d!2384146 (= (nullable!9644 call!741546) (nullableFct!3814 call!741546))))

(declare-fun bs!1970342 () Bool)

(assert (= bs!1970342 d!2384146))

(declare-fun m!8361278 () Bool)

(assert (=> bs!1970342 m!8361278))

(assert (=> bm!741565 d!2384146))

(declare-fun d!2384148 () Bool)

(assert (=> d!2384148 (= (nullable!9644 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))) (nullableFct!3814 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))

(declare-fun bs!1970343 () Bool)

(assert (= bs!1970343 d!2384148))

(declare-fun m!8361280 () Bool)

(assert (=> bs!1970343 m!8361280))

(assert (=> b!7986280 d!2384148))

(declare-fun b!7987298 () Bool)

(declare-fun res!3161528 () Bool)

(declare-fun e!4707352 () Bool)

(assert (=> b!7987298 (=> (not res!3161528) (not e!4707352))))

(assert (=> b!7987298 (= res!3161528 (= (head!16297 (tail!15824 (tail!15824 input!7927))) (head!16297 (tail!15824 (tail!15824 input!7927)))))))

(declare-fun b!7987299 () Bool)

(assert (=> b!7987299 (= e!4707352 (isPrefix!6651 (tail!15824 (tail!15824 (tail!15824 input!7927))) (tail!15824 (tail!15824 (tail!15824 input!7927)))))))

(declare-fun d!2384150 () Bool)

(declare-fun e!4707351 () Bool)

(assert (=> d!2384150 e!4707351))

(declare-fun res!3161529 () Bool)

(assert (=> d!2384150 (=> res!3161529 e!4707351)))

(declare-fun lt!2712008 () Bool)

(assert (=> d!2384150 (= res!3161529 (not lt!2712008))))

(declare-fun e!4707350 () Bool)

(assert (=> d!2384150 (= lt!2712008 e!4707350)))

(declare-fun res!3161527 () Bool)

(assert (=> d!2384150 (=> res!3161527 e!4707350)))

(assert (=> d!2384150 (= res!3161527 ((_ is Nil!74656) (tail!15824 (tail!15824 input!7927))))))

(assert (=> d!2384150 (= (isPrefix!6651 (tail!15824 (tail!15824 input!7927)) (tail!15824 (tail!15824 input!7927))) lt!2712008)))

(declare-fun b!7987300 () Bool)

(assert (=> b!7987300 (= e!4707351 (>= (size!43487 (tail!15824 (tail!15824 input!7927))) (size!43487 (tail!15824 (tail!15824 input!7927)))))))

(declare-fun b!7987297 () Bool)

(assert (=> b!7987297 (= e!4707350 e!4707352)))

(declare-fun res!3161530 () Bool)

(assert (=> b!7987297 (=> (not res!3161530) (not e!4707352))))

(assert (=> b!7987297 (= res!3161530 (not ((_ is Nil!74656) (tail!15824 (tail!15824 input!7927)))))))

(assert (= (and d!2384150 (not res!3161527)) b!7987297))

(assert (= (and b!7987297 res!3161530) b!7987298))

(assert (= (and b!7987298 res!3161528) b!7987299))

(assert (= (and d!2384150 (not res!3161529)) b!7987300))

(assert (=> b!7987298 m!8360520))

(assert (=> b!7987298 m!8361100))

(assert (=> b!7987298 m!8360520))

(assert (=> b!7987298 m!8361100))

(assert (=> b!7987299 m!8360520))

(assert (=> b!7987299 m!8361104))

(assert (=> b!7987299 m!8360520))

(assert (=> b!7987299 m!8361104))

(assert (=> b!7987299 m!8361104))

(assert (=> b!7987299 m!8361104))

(declare-fun m!8361282 () Bool)

(assert (=> b!7987299 m!8361282))

(assert (=> b!7987300 m!8360520))

(assert (=> b!7987300 m!8361108))

(assert (=> b!7987300 m!8360520))

(assert (=> b!7987300 m!8361108))

(assert (=> b!7986336 d!2384150))

(assert (=> b!7986336 d!2384076))

(assert (=> d!2383876 d!2383874))

(assert (=> d!2383876 d!2383794))

(assert (=> d!2383876 d!2383732))

(declare-fun d!2384152 () Bool)

(declare-fun lt!2712009 () Int)

(assert (=> d!2384152 (>= lt!2712009 0)))

(declare-fun e!4707353 () Int)

(assert (=> d!2384152 (= lt!2712009 e!4707353)))

(declare-fun c!1466838 () Bool)

(assert (=> d!2384152 (= c!1466838 ((_ is Nil!74656) lt!2711899))))

(assert (=> d!2384152 (= (size!43487 lt!2711899) lt!2712009)))

(declare-fun b!7987301 () Bool)

(assert (=> b!7987301 (= e!4707353 0)))

(declare-fun b!7987302 () Bool)

(assert (=> b!7987302 (= e!4707353 (+ 1 (size!43487 (t!390523 lt!2711899))))))

(assert (= (and d!2384152 c!1466838) b!7987301))

(assert (= (and d!2384152 (not c!1466838)) b!7987302))

(declare-fun m!8361284 () Bool)

(assert (=> b!7987302 m!8361284))

(assert (=> b!7986396 d!2384152))

(assert (=> b!7986396 d!2383788))

(declare-fun d!2384154 () Bool)

(declare-fun lt!2712010 () Int)

(assert (=> d!2384154 (>= lt!2712010 0)))

(declare-fun e!4707354 () Int)

(assert (=> d!2384154 (= lt!2712010 e!4707354)))

(declare-fun c!1466839 () Bool)

(assert (=> d!2384154 (= c!1466839 ((_ is Nil!74656) lt!2711627))))

(assert (=> d!2384154 (= (size!43487 lt!2711627) lt!2712010)))

(declare-fun b!7987303 () Bool)

(assert (=> b!7987303 (= e!4707354 0)))

(declare-fun b!7987304 () Bool)

(assert (=> b!7987304 (= e!4707354 (+ 1 (size!43487 (t!390523 lt!2711627))))))

(assert (= (and d!2384154 c!1466839) b!7987303))

(assert (= (and d!2384154 (not c!1466839)) b!7987304))

(declare-fun m!8361286 () Bool)

(assert (=> b!7987304 m!8361286))

(assert (=> b!7986396 d!2384154))

(declare-fun b!7987305 () Bool)

(declare-fun res!3161534 () Bool)

(declare-fun e!4707358 () Bool)

(assert (=> b!7987305 (=> (not res!3161534) (not e!4707358))))

(declare-fun call!741724 () Bool)

(assert (=> b!7987305 (= res!3161534 call!741724)))

(declare-fun e!4707360 () Bool)

(assert (=> b!7987305 (= e!4707360 e!4707358)))

(declare-fun bm!741719 () Bool)

(declare-fun call!741726 () Bool)

(declare-fun c!1466840 () Bool)

(assert (=> bm!741719 (= call!741726 (validRegex!11855 (ite c!1466840 (regTwo!43615 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))) (regTwo!43614 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))))))))

(declare-fun b!7987306 () Bool)

(declare-fun e!4707361 () Bool)

(declare-fun e!4707355 () Bool)

(assert (=> b!7987306 (= e!4707361 e!4707355)))

(declare-fun res!3161535 () Bool)

(assert (=> b!7987306 (=> (not res!3161535) (not e!4707355))))

(assert (=> b!7987306 (= res!3161535 call!741724)))

(declare-fun bm!741720 () Bool)

(declare-fun call!741725 () Bool)

(assert (=> bm!741720 (= call!741724 call!741725)))

(declare-fun d!2384156 () Bool)

(declare-fun res!3161532 () Bool)

(declare-fun e!4707359 () Bool)

(assert (=> d!2384156 (=> res!3161532 e!4707359)))

(assert (=> d!2384156 (= res!3161532 ((_ is ElementMatch!21551) (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))))))

(assert (=> d!2384156 (= (validRegex!11855 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))) e!4707359)))

(declare-fun b!7987307 () Bool)

(assert (=> b!7987307 (= e!4707358 call!741726)))

(declare-fun b!7987308 () Bool)

(declare-fun e!4707356 () Bool)

(assert (=> b!7987308 (= e!4707359 e!4707356)))

(declare-fun c!1466841 () Bool)

(assert (=> b!7987308 (= c!1466841 ((_ is Star!21551) (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))))))

(declare-fun bm!741721 () Bool)

(assert (=> bm!741721 (= call!741725 (validRegex!11855 (ite c!1466841 (reg!21880 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))) (ite c!1466840 (regOne!43615 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))) (regOne!43614 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619))))))))))

(declare-fun b!7987309 () Bool)

(assert (=> b!7987309 (= e!4707356 e!4707360)))

(assert (=> b!7987309 (= c!1466840 ((_ is Union!21551) (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))))))

(declare-fun b!7987310 () Bool)

(declare-fun e!4707357 () Bool)

(assert (=> b!7987310 (= e!4707356 e!4707357)))

(declare-fun res!3161531 () Bool)

(assert (=> b!7987310 (= res!3161531 (not (nullable!9644 (reg!21880 (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619)))))))))

(assert (=> b!7987310 (=> (not res!3161531) (not e!4707357))))

(declare-fun b!7987311 () Bool)

(assert (=> b!7987311 (= e!4707355 call!741726)))

(declare-fun b!7987312 () Bool)

(assert (=> b!7987312 (= e!4707357 call!741725)))

(declare-fun b!7987313 () Bool)

(declare-fun res!3161533 () Bool)

(assert (=> b!7987313 (=> res!3161533 e!4707361)))

(assert (=> b!7987313 (= res!3161533 (not ((_ is Concat!30550) (ite c!1466658 (reg!21880 lt!2711619) (ite c!1466657 (regOne!43615 lt!2711619) (regOne!43614 lt!2711619))))))))

(assert (=> b!7987313 (= e!4707360 e!4707361)))

(assert (= (and d!2384156 (not res!3161532)) b!7987308))

(assert (= (and b!7987308 c!1466841) b!7987310))

(assert (= (and b!7987308 (not c!1466841)) b!7987309))

(assert (= (and b!7987310 res!3161531) b!7987312))

(assert (= (and b!7987309 c!1466840) b!7987305))

(assert (= (and b!7987309 (not c!1466840)) b!7987313))

(assert (= (and b!7987305 res!3161534) b!7987307))

(assert (= (and b!7987313 (not res!3161533)) b!7987306))

(assert (= (and b!7987306 res!3161535) b!7987311))

(assert (= (or b!7987307 b!7987311) bm!741719))

(assert (= (or b!7987305 b!7987306) bm!741720))

(assert (= (or b!7987312 bm!741720) bm!741721))

(declare-fun m!8361288 () Bool)

(assert (=> bm!741719 m!8361288))

(declare-fun m!8361290 () Bool)

(assert (=> bm!741721 m!8361290))

(declare-fun m!8361292 () Bool)

(assert (=> b!7987310 m!8361292))

(assert (=> bm!741594 d!2384156))

(declare-fun c!1466844 () Bool)

(declare-fun c!1466842 () Bool)

(declare-fun bm!741722 () Bool)

(declare-fun c!1466846 () Bool)

(declare-fun call!741729 () Regex!21551)

(assert (=> bm!741722 (= call!741729 (derivativeStep!6571 (ite c!1466842 (regTwo!43615 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (ite c!1466844 (reg!21880 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (ite c!1466846 (regTwo!43614 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (regOne!43614 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))) (h!81104 lt!2711603)))))

(declare-fun b!7987314 () Bool)

(declare-fun call!741730 () Regex!21551)

(declare-fun call!741728 () Regex!21551)

(declare-fun e!4707363 () Regex!21551)

(assert (=> b!7987314 (= e!4707363 (Union!21551 (Concat!30550 call!741730 (regTwo!43614 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) call!741728))))

(declare-fun d!2384158 () Bool)

(declare-fun lt!2712011 () Regex!21551)

(assert (=> d!2384158 (validRegex!11855 lt!2712011)))

(declare-fun e!4707362 () Regex!21551)

(assert (=> d!2384158 (= lt!2712011 e!4707362)))

(declare-fun c!1466845 () Bool)

(assert (=> d!2384158 (= c!1466845 (or ((_ is EmptyExpr!21551) (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) ((_ is EmptyLang!21551) (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(assert (=> d!2384158 (validRegex!11855 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))

(assert (=> d!2384158 (= (derivativeStep!6571 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)) (h!81104 lt!2711603)) lt!2712011)))

(declare-fun bm!741723 () Bool)

(declare-fun call!741727 () Regex!21551)

(assert (=> bm!741723 (= call!741727 call!741729)))

(declare-fun b!7987315 () Bool)

(assert (=> b!7987315 (= c!1466842 ((_ is Union!21551) (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun e!4707365 () Regex!21551)

(declare-fun e!4707364 () Regex!21551)

(assert (=> b!7987315 (= e!4707365 e!4707364)))

(declare-fun b!7987316 () Bool)

(assert (=> b!7987316 (= e!4707365 (ite (= (h!81104 lt!2711603) (c!1466508 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987317 () Bool)

(declare-fun e!4707366 () Regex!21551)

(assert (=> b!7987317 (= e!4707364 e!4707366)))

(assert (=> b!7987317 (= c!1466844 ((_ is Star!21551) (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun b!7987318 () Bool)

(assert (=> b!7987318 (= e!4707362 e!4707365)))

(declare-fun c!1466843 () Bool)

(assert (=> b!7987318 (= c!1466843 ((_ is ElementMatch!21551) (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun b!7987319 () Bool)

(assert (=> b!7987319 (= c!1466846 (nullable!9644 (regOne!43614 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(assert (=> b!7987319 (= e!4707366 e!4707363)))

(declare-fun bm!741724 () Bool)

(assert (=> bm!741724 (= call!741730 (derivativeStep!6571 (ite c!1466842 (regOne!43615 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (regOne!43614 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (h!81104 lt!2711603)))))

(declare-fun b!7987320 () Bool)

(assert (=> b!7987320 (= e!4707363 (Union!21551 (Concat!30550 call!741728 (regTwo!43614 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) EmptyLang!21551))))

(declare-fun bm!741725 () Bool)

(assert (=> bm!741725 (= call!741728 call!741727)))

(declare-fun b!7987321 () Bool)

(assert (=> b!7987321 (= e!4707366 (Concat!30550 call!741727 (ite c!1466620 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun b!7987322 () Bool)

(assert (=> b!7987322 (= e!4707364 (Union!21551 call!741730 call!741729))))

(declare-fun b!7987323 () Bool)

(assert (=> b!7987323 (= e!4707362 EmptyLang!21551)))

(assert (= (and d!2384158 c!1466845) b!7987323))

(assert (= (and d!2384158 (not c!1466845)) b!7987318))

(assert (= (and b!7987318 c!1466843) b!7987316))

(assert (= (and b!7987318 (not c!1466843)) b!7987315))

(assert (= (and b!7987315 c!1466842) b!7987322))

(assert (= (and b!7987315 (not c!1466842)) b!7987317))

(assert (= (and b!7987317 c!1466844) b!7987321))

(assert (= (and b!7987317 (not c!1466844)) b!7987319))

(assert (= (and b!7987319 c!1466846) b!7987314))

(assert (= (and b!7987319 (not c!1466846)) b!7987320))

(assert (= (or b!7987314 b!7987320) bm!741725))

(assert (= (or b!7987321 bm!741725) bm!741723))

(assert (= (or b!7987322 bm!741723) bm!741722))

(assert (= (or b!7987322 b!7987314) bm!741724))

(declare-fun m!8361294 () Bool)

(assert (=> bm!741722 m!8361294))

(declare-fun m!8361296 () Bool)

(assert (=> d!2384158 m!8361296))

(declare-fun m!8361298 () Bool)

(assert (=> d!2384158 m!8361298))

(declare-fun m!8361300 () Bool)

(assert (=> b!7987319 m!8361300))

(declare-fun m!8361302 () Bool)

(assert (=> bm!741724 m!8361302))

(assert (=> bm!741560 d!2384158))

(assert (=> b!7986415 d!2384088))

(declare-fun d!2384160 () Bool)

(declare-fun lt!2712012 () Int)

(assert (=> d!2384160 (>= lt!2712012 0)))

(declare-fun e!4707367 () Int)

(assert (=> d!2384160 (= lt!2712012 e!4707367)))

(declare-fun c!1466847 () Bool)

(assert (=> d!2384160 (= c!1466847 ((_ is Nil!74656) (tail!15824 input!7927)))))

(assert (=> d!2384160 (= (size!43487 (tail!15824 input!7927)) lt!2712012)))

(declare-fun b!7987324 () Bool)

(assert (=> b!7987324 (= e!4707367 0)))

(declare-fun b!7987325 () Bool)

(assert (=> b!7987325 (= e!4707367 (+ 1 (size!43487 (t!390523 (tail!15824 input!7927)))))))

(assert (= (and d!2384160 c!1466847) b!7987324))

(assert (= (and d!2384160 (not c!1466847)) b!7987325))

(declare-fun m!8361304 () Bool)

(assert (=> b!7987325 m!8361304))

(assert (=> b!7986455 d!2384160))

(declare-fun d!2384162 () Bool)

(declare-fun lt!2712013 () Int)

(assert (=> d!2384162 (>= lt!2712013 0)))

(declare-fun e!4707368 () Int)

(assert (=> d!2384162 (= lt!2712013 e!4707368)))

(declare-fun c!1466848 () Bool)

(assert (=> d!2384162 (= c!1466848 ((_ is Nil!74656) (tail!15824 testedP!447)))))

(assert (=> d!2384162 (= (size!43487 (tail!15824 testedP!447)) lt!2712013)))

(declare-fun b!7987326 () Bool)

(assert (=> b!7987326 (= e!4707368 0)))

(declare-fun b!7987327 () Bool)

(assert (=> b!7987327 (= e!4707368 (+ 1 (size!43487 (t!390523 (tail!15824 testedP!447)))))))

(assert (= (and d!2384162 c!1466848) b!7987326))

(assert (= (and d!2384162 (not c!1466848)) b!7987327))

(declare-fun m!8361306 () Bool)

(assert (=> b!7987327 m!8361306))

(assert (=> b!7986455 d!2384162))

(declare-fun d!2384164 () Bool)

(declare-fun lt!2712014 () Int)

(assert (=> d!2384164 (>= lt!2712014 0)))

(declare-fun e!4707369 () Int)

(assert (=> d!2384164 (= lt!2712014 e!4707369)))

(declare-fun c!1466849 () Bool)

(assert (=> d!2384164 (= c!1466849 ((_ is Nil!74656) (_1!38683 lt!2711866)))))

(assert (=> d!2384164 (= (size!43487 (_1!38683 lt!2711866)) lt!2712014)))

(declare-fun b!7987328 () Bool)

(assert (=> b!7987328 (= e!4707369 0)))

(declare-fun b!7987329 () Bool)

(assert (=> b!7987329 (= e!4707369 (+ 1 (size!43487 (t!390523 (_1!38683 lt!2711866)))))))

(assert (= (and d!2384164 c!1466849) b!7987328))

(assert (= (and d!2384164 (not c!1466849)) b!7987329))

(declare-fun m!8361308 () Bool)

(assert (=> b!7987329 m!8361308))

(assert (=> b!7986267 d!2384164))

(declare-fun d!2384166 () Bool)

(declare-fun lt!2712015 () Int)

(assert (=> d!2384166 (>= lt!2712015 0)))

(declare-fun e!4707370 () Int)

(assert (=> d!2384166 (= lt!2712015 e!4707370)))

(declare-fun c!1466850 () Bool)

(assert (=> d!2384166 (= c!1466850 ((_ is Nil!74656) lt!2711812))))

(assert (=> d!2384166 (= (size!43487 lt!2711812) lt!2712015)))

(declare-fun b!7987330 () Bool)

(assert (=> b!7987330 (= e!4707370 0)))

(declare-fun b!7987331 () Bool)

(assert (=> b!7987331 (= e!4707370 (+ 1 (size!43487 (t!390523 lt!2711812))))))

(assert (= (and d!2384166 c!1466850) b!7987330))

(assert (= (and d!2384166 (not c!1466850)) b!7987331))

(declare-fun m!8361310 () Bool)

(assert (=> b!7987331 m!8361310))

(assert (=> b!7986267 d!2384166))

(declare-fun d!2384168 () Bool)

(assert (=> d!2384168 (= (nullable!9644 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))) (nullableFct!3814 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun bs!1970344 () Bool)

(assert (= bs!1970344 d!2384168))

(declare-fun m!8361312 () Bool)

(assert (=> bs!1970344 m!8361312))

(assert (=> b!7986309 d!2384168))

(declare-fun d!2384170 () Bool)

(declare-fun c!1466851 () Bool)

(assert (=> d!2384170 (= c!1466851 ((_ is Nil!74656) lt!2711913))))

(declare-fun e!4707371 () (InoxSet C!43440))

(assert (=> d!2384170 (= (content!15870 lt!2711913) e!4707371)))

(declare-fun b!7987332 () Bool)

(assert (=> b!7987332 (= e!4707371 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987333 () Bool)

(assert (=> b!7987333 (= e!4707371 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711913) true) (content!15870 (t!390523 lt!2711913))))))

(assert (= (and d!2384170 c!1466851) b!7987332))

(assert (= (and d!2384170 (not c!1466851)) b!7987333))

(declare-fun m!8361314 () Bool)

(assert (=> b!7987333 m!8361314))

(declare-fun m!8361316 () Bool)

(assert (=> b!7987333 m!8361316))

(assert (=> d!2383904 d!2384170))

(declare-fun d!2384172 () Bool)

(declare-fun c!1466852 () Bool)

(assert (=> d!2384172 (= c!1466852 ((_ is Nil!74656) (_1!38683 lt!2711815)))))

(declare-fun e!4707372 () (InoxSet C!43440))

(assert (=> d!2384172 (= (content!15870 (_1!38683 lt!2711815)) e!4707372)))

(declare-fun b!7987334 () Bool)

(assert (=> b!7987334 (= e!4707372 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987335 () Bool)

(assert (=> b!7987335 (= e!4707372 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (_1!38683 lt!2711815)) true) (content!15870 (t!390523 (_1!38683 lt!2711815)))))))

(assert (= (and d!2384172 c!1466852) b!7987334))

(assert (= (and d!2384172 (not c!1466852)) b!7987335))

(declare-fun m!8361318 () Bool)

(assert (=> b!7987335 m!8361318))

(declare-fun m!8361320 () Bool)

(assert (=> b!7987335 m!8361320))

(assert (=> d!2383904 d!2384172))

(declare-fun d!2384174 () Bool)

(declare-fun c!1466853 () Bool)

(assert (=> d!2384174 (= c!1466853 ((_ is Nil!74656) (_2!38683 lt!2711815)))))

(declare-fun e!4707373 () (InoxSet C!43440))

(assert (=> d!2384174 (= (content!15870 (_2!38683 lt!2711815)) e!4707373)))

(declare-fun b!7987336 () Bool)

(assert (=> b!7987336 (= e!4707373 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987337 () Bool)

(assert (=> b!7987337 (= e!4707373 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (_2!38683 lt!2711815)) true) (content!15870 (t!390523 (_2!38683 lt!2711815)))))))

(assert (= (and d!2384174 c!1466853) b!7987336))

(assert (= (and d!2384174 (not c!1466853)) b!7987337))

(declare-fun m!8361322 () Bool)

(assert (=> b!7987337 m!8361322))

(declare-fun m!8361324 () Bool)

(assert (=> b!7987337 m!8361324))

(assert (=> d!2383904 d!2384174))

(declare-fun d!2384176 () Bool)

(assert (=> d!2384176 (= (head!16297 (tail!15824 lt!2711603)) (h!81104 (tail!15824 lt!2711603)))))

(assert (=> b!7986439 d!2384176))

(assert (=> b!7986439 d!2384078))

(declare-fun d!2384178 () Bool)

(declare-fun lt!2712016 () Int)

(assert (=> d!2384178 (>= lt!2712016 0)))

(declare-fun e!4707374 () Int)

(assert (=> d!2384178 (= lt!2712016 e!4707374)))

(declare-fun c!1466854 () Bool)

(assert (=> d!2384178 (= c!1466854 ((_ is Nil!74656) (t!390523 lt!2711840)))))

(assert (=> d!2384178 (= (size!43487 (t!390523 lt!2711840)) lt!2712016)))

(declare-fun b!7987338 () Bool)

(assert (=> b!7987338 (= e!4707374 0)))

(declare-fun b!7987339 () Bool)

(assert (=> b!7987339 (= e!4707374 (+ 1 (size!43487 (t!390523 (t!390523 lt!2711840)))))))

(assert (= (and d!2384178 c!1466854) b!7987338))

(assert (= (and d!2384178 (not c!1466854)) b!7987339))

(declare-fun m!8361326 () Bool)

(assert (=> b!7987339 m!8361326))

(assert (=> b!7986371 d!2384178))

(declare-fun b!7987341 () Bool)

(declare-fun e!4707376 () List!74780)

(assert (=> b!7987341 (= e!4707376 (Cons!74656 (h!81104 (t!390523 testedP!447)) (++!18413 (t!390523 (t!390523 testedP!447)) lt!2711604)))))

(declare-fun b!7987340 () Bool)

(assert (=> b!7987340 (= e!4707376 lt!2711604)))

(declare-fun d!2384180 () Bool)

(declare-fun e!4707375 () Bool)

(assert (=> d!2384180 e!4707375))

(declare-fun res!3161537 () Bool)

(assert (=> d!2384180 (=> (not res!3161537) (not e!4707375))))

(declare-fun lt!2712017 () List!74780)

(assert (=> d!2384180 (= res!3161537 (= (content!15870 lt!2712017) ((_ map or) (content!15870 (t!390523 testedP!447)) (content!15870 lt!2711604))))))

(assert (=> d!2384180 (= lt!2712017 e!4707376)))

(declare-fun c!1466855 () Bool)

(assert (=> d!2384180 (= c!1466855 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2384180 (= (++!18413 (t!390523 testedP!447) lt!2711604) lt!2712017)))

(declare-fun b!7987342 () Bool)

(declare-fun res!3161536 () Bool)

(assert (=> b!7987342 (=> (not res!3161536) (not e!4707375))))

(assert (=> b!7987342 (= res!3161536 (= (size!43487 lt!2712017) (+ (size!43487 (t!390523 testedP!447)) (size!43487 lt!2711604))))))

(declare-fun b!7987343 () Bool)

(assert (=> b!7987343 (= e!4707375 (or (not (= lt!2711604 Nil!74656)) (= lt!2712017 (t!390523 testedP!447))))))

(assert (= (and d!2384180 c!1466855) b!7987340))

(assert (= (and d!2384180 (not c!1466855)) b!7987341))

(assert (= (and d!2384180 res!3161537) b!7987342))

(assert (= (and b!7987342 res!3161536) b!7987343))

(declare-fun m!8361328 () Bool)

(assert (=> b!7987341 m!8361328))

(declare-fun m!8361330 () Bool)

(assert (=> d!2384180 m!8361330))

(assert (=> d!2384180 m!8360654))

(assert (=> d!2384180 m!8360666))

(declare-fun m!8361332 () Bool)

(assert (=> b!7987342 m!8361332))

(assert (=> b!7987342 m!8360368))

(assert (=> b!7987342 m!8360670))

(assert (=> b!7986427 d!2384180))

(declare-fun b!7987345 () Bool)

(declare-fun e!4707378 () List!74780)

(assert (=> b!7987345 (= e!4707378 (Cons!74656 (h!81104 (t!390523 testedP!447)) (++!18413 (t!390523 (t!390523 testedP!447)) (Cons!74656 lt!2711830 Nil!74656))))))

(declare-fun b!7987344 () Bool)

(assert (=> b!7987344 (= e!4707378 (Cons!74656 lt!2711830 Nil!74656))))

(declare-fun d!2384182 () Bool)

(declare-fun e!4707377 () Bool)

(assert (=> d!2384182 e!4707377))

(declare-fun res!3161539 () Bool)

(assert (=> d!2384182 (=> (not res!3161539) (not e!4707377))))

(declare-fun lt!2712018 () List!74780)

(assert (=> d!2384182 (= res!3161539 (= (content!15870 lt!2712018) ((_ map or) (content!15870 (t!390523 testedP!447)) (content!15870 (Cons!74656 lt!2711830 Nil!74656)))))))

(assert (=> d!2384182 (= lt!2712018 e!4707378)))

(declare-fun c!1466856 () Bool)

(assert (=> d!2384182 (= c!1466856 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2384182 (= (++!18413 (t!390523 testedP!447) (Cons!74656 lt!2711830 Nil!74656)) lt!2712018)))

(declare-fun b!7987346 () Bool)

(declare-fun res!3161538 () Bool)

(assert (=> b!7987346 (=> (not res!3161538) (not e!4707377))))

(assert (=> b!7987346 (= res!3161538 (= (size!43487 lt!2712018) (+ (size!43487 (t!390523 testedP!447)) (size!43487 (Cons!74656 lt!2711830 Nil!74656)))))))

(declare-fun b!7987347 () Bool)

(assert (=> b!7987347 (= e!4707377 (or (not (= (Cons!74656 lt!2711830 Nil!74656) Nil!74656)) (= lt!2712018 (t!390523 testedP!447))))))

(assert (= (and d!2384182 c!1466856) b!7987344))

(assert (= (and d!2384182 (not c!1466856)) b!7987345))

(assert (= (and d!2384182 res!3161539) b!7987346))

(assert (= (and b!7987346 res!3161538) b!7987347))

(declare-fun m!8361334 () Bool)

(assert (=> b!7987345 m!8361334))

(declare-fun m!8361336 () Bool)

(assert (=> d!2384182 m!8361336))

(assert (=> d!2384182 m!8360654))

(assert (=> d!2384182 m!8360554))

(declare-fun m!8361338 () Bool)

(assert (=> b!7987346 m!8361338))

(assert (=> b!7987346 m!8360368))

(assert (=> b!7987346 m!8360558))

(assert (=> b!7986349 d!2384182))

(declare-fun c!1466859 () Bool)

(declare-fun c!1466861 () Bool)

(declare-fun c!1466857 () Bool)

(declare-fun bm!741726 () Bool)

(declare-fun call!741733 () Regex!21551)

(assert (=> bm!741726 (= call!741733 (derivativeStep!6571 (ite c!1466857 (regTwo!43615 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))) (ite c!1466859 (reg!21880 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))) (ite c!1466861 (regTwo!43614 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))) (regOne!43614 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))) lt!2711601))))

(declare-fun b!7987348 () Bool)

(declare-fun e!4707380 () Regex!21551)

(declare-fun call!741732 () Regex!21551)

(declare-fun call!741734 () Regex!21551)

(assert (=> b!7987348 (= e!4707380 (Union!21551 (Concat!30550 call!741734 (regTwo!43614 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))) call!741732))))

(declare-fun d!2384184 () Bool)

(declare-fun lt!2712019 () Regex!21551)

(assert (=> d!2384184 (validRegex!11855 lt!2712019)))

(declare-fun e!4707379 () Regex!21551)

(assert (=> d!2384184 (= lt!2712019 e!4707379)))

(declare-fun c!1466860 () Bool)

(assert (=> d!2384184 (= c!1466860 (or ((_ is EmptyExpr!21551) (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))) ((_ is EmptyLang!21551) (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))))

(assert (=> d!2384184 (validRegex!11855 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> d!2384184 (= (derivativeStep!6571 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))) lt!2711601) lt!2712019)))

(declare-fun bm!741727 () Bool)

(declare-fun call!741731 () Regex!21551)

(assert (=> bm!741727 (= call!741731 call!741733)))

(declare-fun b!7987349 () Bool)

(assert (=> b!7987349 (= c!1466857 ((_ is Union!21551) (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun e!4707382 () Regex!21551)

(declare-fun e!4707381 () Regex!21551)

(assert (=> b!7987349 (= e!4707382 e!4707381)))

(declare-fun b!7987350 () Bool)

(assert (=> b!7987350 (= e!4707382 (ite (= lt!2711601 (c!1466508 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987351 () Bool)

(declare-fun e!4707383 () Regex!21551)

(assert (=> b!7987351 (= e!4707381 e!4707383)))

(assert (=> b!7987351 (= c!1466859 ((_ is Star!21551) (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987352 () Bool)

(assert (=> b!7987352 (= e!4707379 e!4707382)))

(declare-fun c!1466858 () Bool)

(assert (=> b!7987352 (= c!1466858 ((_ is ElementMatch!21551) (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987353 () Bool)

(assert (=> b!7987353 (= c!1466861 (nullable!9644 (regOne!43614 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))))

(assert (=> b!7987353 (= e!4707383 e!4707380)))

(declare-fun bm!741728 () Bool)

(assert (=> bm!741728 (= call!741734 (derivativeStep!6571 (ite c!1466857 (regOne!43615 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))) (regOne!43614 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))) lt!2711601))))

(declare-fun b!7987354 () Bool)

(assert (=> b!7987354 (= e!4707380 (Union!21551 (Concat!30550 call!741732 (regTwo!43614 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))) EmptyLang!21551))))

(declare-fun bm!741729 () Bool)

(assert (=> bm!741729 (= call!741732 call!741731)))

(declare-fun b!7987355 () Bool)

(assert (=> b!7987355 (= e!4707383 (Concat!30550 call!741731 (ite c!1466679 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466681 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466683 (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987356 () Bool)

(assert (=> b!7987356 (= e!4707381 (Union!21551 call!741734 call!741733))))

(declare-fun b!7987357 () Bool)

(assert (=> b!7987357 (= e!4707379 EmptyLang!21551)))

(assert (= (and d!2384184 c!1466860) b!7987357))

(assert (= (and d!2384184 (not c!1466860)) b!7987352))

(assert (= (and b!7987352 c!1466858) b!7987350))

(assert (= (and b!7987352 (not c!1466858)) b!7987349))

(assert (= (and b!7987349 c!1466857) b!7987356))

(assert (= (and b!7987349 (not c!1466857)) b!7987351))

(assert (= (and b!7987351 c!1466859) b!7987355))

(assert (= (and b!7987351 (not c!1466859)) b!7987353))

(assert (= (and b!7987353 c!1466861) b!7987348))

(assert (= (and b!7987353 (not c!1466861)) b!7987354))

(assert (= (or b!7987348 b!7987354) bm!741729))

(assert (= (or b!7987355 bm!741729) bm!741727))

(assert (= (or b!7987356 bm!741727) bm!741726))

(assert (= (or b!7987356 b!7987348) bm!741728))

(declare-fun m!8361340 () Bool)

(assert (=> bm!741726 m!8361340))

(declare-fun m!8361342 () Bool)

(assert (=> d!2384184 m!8361342))

(declare-fun m!8361344 () Bool)

(assert (=> d!2384184 m!8361344))

(declare-fun m!8361346 () Bool)

(assert (=> b!7987353 m!8361346))

(declare-fun m!8361348 () Bool)

(assert (=> bm!741728 m!8361348))

(assert (=> bm!741606 d!2384184))

(declare-fun b!7987358 () Bool)

(declare-fun res!3161543 () Bool)

(declare-fun e!4707387 () Bool)

(assert (=> b!7987358 (=> (not res!3161543) (not e!4707387))))

(declare-fun call!741735 () Bool)

(assert (=> b!7987358 (= res!3161543 call!741735)))

(declare-fun e!4707389 () Bool)

(assert (=> b!7987358 (= e!4707389 e!4707387)))

(declare-fun bm!741730 () Bool)

(declare-fun call!741737 () Bool)

(declare-fun c!1466862 () Bool)

(assert (=> bm!741730 (= call!741737 (validRegex!11855 (ite c!1466862 (regTwo!43615 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))) (regTwo!43614 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))))))))

(declare-fun b!7987359 () Bool)

(declare-fun e!4707390 () Bool)

(declare-fun e!4707384 () Bool)

(assert (=> b!7987359 (= e!4707390 e!4707384)))

(declare-fun res!3161544 () Bool)

(assert (=> b!7987359 (=> (not res!3161544) (not e!4707384))))

(assert (=> b!7987359 (= res!3161544 call!741735)))

(declare-fun bm!741731 () Bool)

(declare-fun call!741736 () Bool)

(assert (=> bm!741731 (= call!741735 call!741736)))

(declare-fun d!2384186 () Bool)

(declare-fun res!3161541 () Bool)

(declare-fun e!4707388 () Bool)

(assert (=> d!2384186 (=> res!3161541 e!4707388)))

(assert (=> d!2384186 (= res!3161541 ((_ is ElementMatch!21551) (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))))))

(assert (=> d!2384186 (= (validRegex!11855 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))) e!4707388)))

(declare-fun b!7987360 () Bool)

(assert (=> b!7987360 (= e!4707387 call!741737)))

(declare-fun b!7987361 () Bool)

(declare-fun e!4707385 () Bool)

(assert (=> b!7987361 (= e!4707388 e!4707385)))

(declare-fun c!1466863 () Bool)

(assert (=> b!7987361 (= c!1466863 ((_ is Star!21551) (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))))))

(declare-fun bm!741732 () Bool)

(assert (=> bm!741732 (= call!741736 (validRegex!11855 (ite c!1466863 (reg!21880 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))) (ite c!1466862 (regOne!43615 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))) (regOne!43614 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613)))))))))

(declare-fun b!7987362 () Bool)

(assert (=> b!7987362 (= e!4707385 e!4707389)))

(assert (=> b!7987362 (= c!1466862 ((_ is Union!21551) (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))))))

(declare-fun b!7987363 () Bool)

(declare-fun e!4707386 () Bool)

(assert (=> b!7987363 (= e!4707385 e!4707386)))

(declare-fun res!3161540 () Bool)

(assert (=> b!7987363 (= res!3161540 (not (nullable!9644 (reg!21880 (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613))))))))

(assert (=> b!7987363 (=> (not res!3161540) (not e!4707386))))

(declare-fun b!7987364 () Bool)

(assert (=> b!7987364 (= e!4707384 call!741737)))

(declare-fun b!7987365 () Bool)

(assert (=> b!7987365 (= e!4707386 call!741736)))

(declare-fun b!7987366 () Bool)

(declare-fun res!3161542 () Bool)

(assert (=> b!7987366 (=> res!3161542 e!4707390)))

(assert (=> b!7987366 (= res!3161542 (not ((_ is Concat!30550) (ite c!1466635 (regTwo!43615 lt!2711613) (regTwo!43614 lt!2711613)))))))

(assert (=> b!7987366 (= e!4707389 e!4707390)))

(assert (= (and d!2384186 (not res!3161541)) b!7987361))

(assert (= (and b!7987361 c!1466863) b!7987363))

(assert (= (and b!7987361 (not c!1466863)) b!7987362))

(assert (= (and b!7987363 res!3161540) b!7987365))

(assert (= (and b!7987362 c!1466862) b!7987358))

(assert (= (and b!7987362 (not c!1466862)) b!7987366))

(assert (= (and b!7987358 res!3161543) b!7987360))

(assert (= (and b!7987366 (not res!3161542)) b!7987359))

(assert (= (and b!7987359 res!3161544) b!7987364))

(assert (= (or b!7987360 b!7987364) bm!741730))

(assert (= (or b!7987358 b!7987359) bm!741731))

(assert (= (or b!7987365 bm!741731) bm!741732))

(declare-fun m!8361350 () Bool)

(assert (=> bm!741730 m!8361350))

(declare-fun m!8361352 () Bool)

(assert (=> bm!741732 m!8361352))

(declare-fun m!8361354 () Bool)

(assert (=> b!7987363 m!8361354))

(assert (=> bm!741573 d!2384186))

(declare-fun d!2384188 () Bool)

(assert (=> d!2384188 (= (head!16297 call!741553) (h!81104 call!741553))))

(assert (=> bm!741562 d!2384188))

(declare-fun d!2384190 () Bool)

(assert (=> d!2384190 (= (nullable!9644 (reg!21880 lt!2711623)) (nullableFct!3814 (reg!21880 lt!2711623)))))

(declare-fun bs!1970345 () Bool)

(assert (= bs!1970345 d!2384190))

(declare-fun m!8361356 () Bool)

(assert (=> bs!1970345 m!8361356))

(assert (=> b!7986300 d!2384190))

(declare-fun bm!741733 () Bool)

(declare-fun call!741739 () Bool)

(declare-fun c!1466864 () Bool)

(assert (=> bm!741733 (= call!741739 (nullable!9644 (ite c!1466864 (regTwo!43615 (reg!21880 baseR!116)) (regOne!43614 (reg!21880 baseR!116)))))))

(declare-fun b!7987367 () Bool)

(declare-fun e!4707396 () Bool)

(declare-fun e!4707391 () Bool)

(assert (=> b!7987367 (= e!4707396 e!4707391)))

(declare-fun res!3161549 () Bool)

(declare-fun call!741738 () Bool)

(assert (=> b!7987367 (= res!3161549 call!741738)))

(assert (=> b!7987367 (=> res!3161549 e!4707391)))

(declare-fun bm!741734 () Bool)

(assert (=> bm!741734 (= call!741738 (nullable!9644 (ite c!1466864 (regOne!43615 (reg!21880 baseR!116)) (regTwo!43614 (reg!21880 baseR!116)))))))

(declare-fun d!2384192 () Bool)

(declare-fun res!3161546 () Bool)

(declare-fun e!4707393 () Bool)

(assert (=> d!2384192 (=> res!3161546 e!4707393)))

(assert (=> d!2384192 (= res!3161546 ((_ is EmptyExpr!21551) (reg!21880 baseR!116)))))

(assert (=> d!2384192 (= (nullableFct!3814 (reg!21880 baseR!116)) e!4707393)))

(declare-fun b!7987368 () Bool)

(declare-fun e!4707394 () Bool)

(assert (=> b!7987368 (= e!4707396 e!4707394)))

(declare-fun res!3161545 () Bool)

(assert (=> b!7987368 (= res!3161545 call!741739)))

(assert (=> b!7987368 (=> (not res!3161545) (not e!4707394))))

(declare-fun b!7987369 () Bool)

(declare-fun e!4707395 () Bool)

(assert (=> b!7987369 (= e!4707393 e!4707395)))

(declare-fun res!3161547 () Bool)

(assert (=> b!7987369 (=> (not res!3161547) (not e!4707395))))

(assert (=> b!7987369 (= res!3161547 (and (not ((_ is EmptyLang!21551) (reg!21880 baseR!116))) (not ((_ is ElementMatch!21551) (reg!21880 baseR!116)))))))

(declare-fun b!7987370 () Bool)

(declare-fun e!4707392 () Bool)

(assert (=> b!7987370 (= e!4707395 e!4707392)))

(declare-fun res!3161548 () Bool)

(assert (=> b!7987370 (=> res!3161548 e!4707392)))

(assert (=> b!7987370 (= res!3161548 ((_ is Star!21551) (reg!21880 baseR!116)))))

(declare-fun b!7987371 () Bool)

(assert (=> b!7987371 (= e!4707394 call!741738)))

(declare-fun b!7987372 () Bool)

(assert (=> b!7987372 (= e!4707392 e!4707396)))

(assert (=> b!7987372 (= c!1466864 ((_ is Union!21551) (reg!21880 baseR!116)))))

(declare-fun b!7987373 () Bool)

(assert (=> b!7987373 (= e!4707391 call!741739)))

(assert (= (and d!2384192 (not res!3161546)) b!7987369))

(assert (= (and b!7987369 res!3161547) b!7987370))

(assert (= (and b!7987370 (not res!3161548)) b!7987372))

(assert (= (and b!7987372 c!1466864) b!7987367))

(assert (= (and b!7987372 (not c!1466864)) b!7987368))

(assert (= (and b!7987367 (not res!3161549)) b!7987373))

(assert (= (and b!7987368 res!3161545) b!7987371))

(assert (= (or b!7987367 b!7987371) bm!741734))

(assert (= (or b!7987373 b!7987368) bm!741733))

(declare-fun m!8361358 () Bool)

(assert (=> bm!741733 m!8361358))

(declare-fun m!8361360 () Bool)

(assert (=> bm!741734 m!8361360))

(assert (=> d!2383842 d!2384192))

(declare-fun b!7987375 () Bool)

(declare-fun e!4707398 () List!74780)

(assert (=> b!7987375 (= e!4707398 (Cons!74656 (h!81104 (t!390523 (_1!38683 lt!2711815))) (++!18413 (t!390523 (t!390523 (_1!38683 lt!2711815))) (_2!38683 lt!2711815))))))

(declare-fun b!7987374 () Bool)

(assert (=> b!7987374 (= e!4707398 (_2!38683 lt!2711815))))

(declare-fun d!2384194 () Bool)

(declare-fun e!4707397 () Bool)

(assert (=> d!2384194 e!4707397))

(declare-fun res!3161551 () Bool)

(assert (=> d!2384194 (=> (not res!3161551) (not e!4707397))))

(declare-fun lt!2712020 () List!74780)

(assert (=> d!2384194 (= res!3161551 (= (content!15870 lt!2712020) ((_ map or) (content!15870 (t!390523 (_1!38683 lt!2711815))) (content!15870 (_2!38683 lt!2711815)))))))

(assert (=> d!2384194 (= lt!2712020 e!4707398)))

(declare-fun c!1466865 () Bool)

(assert (=> d!2384194 (= c!1466865 ((_ is Nil!74656) (t!390523 (_1!38683 lt!2711815))))))

(assert (=> d!2384194 (= (++!18413 (t!390523 (_1!38683 lt!2711815)) (_2!38683 lt!2711815)) lt!2712020)))

(declare-fun b!7987376 () Bool)

(declare-fun res!3161550 () Bool)

(assert (=> b!7987376 (=> (not res!3161550) (not e!4707397))))

(assert (=> b!7987376 (= res!3161550 (= (size!43487 lt!2712020) (+ (size!43487 (t!390523 (_1!38683 lt!2711815))) (size!43487 (_2!38683 lt!2711815)))))))

(declare-fun b!7987377 () Bool)

(assert (=> b!7987377 (= e!4707397 (or (not (= (_2!38683 lt!2711815) Nil!74656)) (= lt!2712020 (t!390523 (_1!38683 lt!2711815)))))))

(assert (= (and d!2384194 c!1466865) b!7987374))

(assert (= (and d!2384194 (not c!1466865)) b!7987375))

(assert (= (and d!2384194 res!3161551) b!7987376))

(assert (= (and b!7987376 res!3161550) b!7987377))

(declare-fun m!8361362 () Bool)

(assert (=> b!7987375 m!8361362))

(declare-fun m!8361364 () Bool)

(assert (=> d!2384194 m!8361364))

(assert (=> d!2384194 m!8361320))

(assert (=> d!2384194 m!8360690))

(declare-fun m!8361366 () Bool)

(assert (=> b!7987376 m!8361366))

(assert (=> b!7987376 m!8360500))

(assert (=> b!7987376 m!8360694))

(assert (=> b!7986435 d!2384194))

(declare-fun b!7987378 () Bool)

(declare-fun res!3161555 () Bool)

(declare-fun e!4707402 () Bool)

(assert (=> b!7987378 (=> (not res!3161555) (not e!4707402))))

(declare-fun call!741740 () Bool)

(assert (=> b!7987378 (= res!3161555 call!741740)))

(declare-fun e!4707404 () Bool)

(assert (=> b!7987378 (= e!4707404 e!4707402)))

(declare-fun bm!741735 () Bool)

(declare-fun call!741742 () Bool)

(declare-fun c!1466866 () Bool)

(assert (=> bm!741735 (= call!741742 (validRegex!11855 (ite c!1466866 (regTwo!43615 lt!2711900) (regTwo!43614 lt!2711900))))))

(declare-fun b!7987379 () Bool)

(declare-fun e!4707405 () Bool)

(declare-fun e!4707399 () Bool)

(assert (=> b!7987379 (= e!4707405 e!4707399)))

(declare-fun res!3161556 () Bool)

(assert (=> b!7987379 (=> (not res!3161556) (not e!4707399))))

(assert (=> b!7987379 (= res!3161556 call!741740)))

(declare-fun bm!741736 () Bool)

(declare-fun call!741741 () Bool)

(assert (=> bm!741736 (= call!741740 call!741741)))

(declare-fun d!2384196 () Bool)

(declare-fun res!3161553 () Bool)

(declare-fun e!4707403 () Bool)

(assert (=> d!2384196 (=> res!3161553 e!4707403)))

(assert (=> d!2384196 (= res!3161553 ((_ is ElementMatch!21551) lt!2711900))))

(assert (=> d!2384196 (= (validRegex!11855 lt!2711900) e!4707403)))

(declare-fun b!7987380 () Bool)

(assert (=> b!7987380 (= e!4707402 call!741742)))

(declare-fun b!7987381 () Bool)

(declare-fun e!4707400 () Bool)

(assert (=> b!7987381 (= e!4707403 e!4707400)))

(declare-fun c!1466867 () Bool)

(assert (=> b!7987381 (= c!1466867 ((_ is Star!21551) lt!2711900))))

(declare-fun bm!741737 () Bool)

(assert (=> bm!741737 (= call!741741 (validRegex!11855 (ite c!1466867 (reg!21880 lt!2711900) (ite c!1466866 (regOne!43615 lt!2711900) (regOne!43614 lt!2711900)))))))

(declare-fun b!7987382 () Bool)

(assert (=> b!7987382 (= e!4707400 e!4707404)))

(assert (=> b!7987382 (= c!1466866 ((_ is Union!21551) lt!2711900))))

(declare-fun b!7987383 () Bool)

(declare-fun e!4707401 () Bool)

(assert (=> b!7987383 (= e!4707400 e!4707401)))

(declare-fun res!3161552 () Bool)

(assert (=> b!7987383 (= res!3161552 (not (nullable!9644 (reg!21880 lt!2711900))))))

(assert (=> b!7987383 (=> (not res!3161552) (not e!4707401))))

(declare-fun b!7987384 () Bool)

(assert (=> b!7987384 (= e!4707399 call!741742)))

(declare-fun b!7987385 () Bool)

(assert (=> b!7987385 (= e!4707401 call!741741)))

(declare-fun b!7987386 () Bool)

(declare-fun res!3161554 () Bool)

(assert (=> b!7987386 (=> res!3161554 e!4707405)))

(assert (=> b!7987386 (= res!3161554 (not ((_ is Concat!30550) lt!2711900)))))

(assert (=> b!7987386 (= e!4707404 e!4707405)))

(assert (= (and d!2384196 (not res!3161553)) b!7987381))

(assert (= (and b!7987381 c!1466867) b!7987383))

(assert (= (and b!7987381 (not c!1466867)) b!7987382))

(assert (= (and b!7987383 res!3161552) b!7987385))

(assert (= (and b!7987382 c!1466866) b!7987378))

(assert (= (and b!7987382 (not c!1466866)) b!7987386))

(assert (= (and b!7987378 res!3161555) b!7987380))

(assert (= (and b!7987386 (not res!3161554)) b!7987379))

(assert (= (and b!7987379 res!3161556) b!7987384))

(assert (= (or b!7987380 b!7987384) bm!741735))

(assert (= (or b!7987378 b!7987379) bm!741736))

(assert (= (or b!7987385 bm!741736) bm!741737))

(declare-fun m!8361368 () Bool)

(assert (=> bm!741735 m!8361368))

(declare-fun m!8361370 () Bool)

(assert (=> bm!741737 m!8361370))

(declare-fun m!8361372 () Bool)

(assert (=> b!7987383 m!8361372))

(assert (=> d!2383880 d!2384196))

(assert (=> d!2383880 d!2383872))

(declare-fun bm!741738 () Bool)

(declare-fun call!741744 () Bool)

(declare-fun c!1466868 () Bool)

(assert (=> bm!741738 (= call!741744 (nullable!9644 (ite c!1466868 (regTwo!43615 (regOne!43614 r!24602)) (regOne!43614 (regOne!43614 r!24602)))))))

(declare-fun b!7987387 () Bool)

(declare-fun e!4707411 () Bool)

(declare-fun e!4707406 () Bool)

(assert (=> b!7987387 (= e!4707411 e!4707406)))

(declare-fun res!3161561 () Bool)

(declare-fun call!741743 () Bool)

(assert (=> b!7987387 (= res!3161561 call!741743)))

(assert (=> b!7987387 (=> res!3161561 e!4707406)))

(declare-fun bm!741739 () Bool)

(assert (=> bm!741739 (= call!741743 (nullable!9644 (ite c!1466868 (regOne!43615 (regOne!43614 r!24602)) (regTwo!43614 (regOne!43614 r!24602)))))))

(declare-fun d!2384198 () Bool)

(declare-fun res!3161558 () Bool)

(declare-fun e!4707408 () Bool)

(assert (=> d!2384198 (=> res!3161558 e!4707408)))

(assert (=> d!2384198 (= res!3161558 ((_ is EmptyExpr!21551) (regOne!43614 r!24602)))))

(assert (=> d!2384198 (= (nullableFct!3814 (regOne!43614 r!24602)) e!4707408)))

(declare-fun b!7987388 () Bool)

(declare-fun e!4707409 () Bool)

(assert (=> b!7987388 (= e!4707411 e!4707409)))

(declare-fun res!3161557 () Bool)

(assert (=> b!7987388 (= res!3161557 call!741744)))

(assert (=> b!7987388 (=> (not res!3161557) (not e!4707409))))

(declare-fun b!7987389 () Bool)

(declare-fun e!4707410 () Bool)

(assert (=> b!7987389 (= e!4707408 e!4707410)))

(declare-fun res!3161559 () Bool)

(assert (=> b!7987389 (=> (not res!3161559) (not e!4707410))))

(assert (=> b!7987389 (= res!3161559 (and (not ((_ is EmptyLang!21551) (regOne!43614 r!24602))) (not ((_ is ElementMatch!21551) (regOne!43614 r!24602)))))))

(declare-fun b!7987390 () Bool)

(declare-fun e!4707407 () Bool)

(assert (=> b!7987390 (= e!4707410 e!4707407)))

(declare-fun res!3161560 () Bool)

(assert (=> b!7987390 (=> res!3161560 e!4707407)))

(assert (=> b!7987390 (= res!3161560 ((_ is Star!21551) (regOne!43614 r!24602)))))

(declare-fun b!7987391 () Bool)

(assert (=> b!7987391 (= e!4707409 call!741743)))

(declare-fun b!7987392 () Bool)

(assert (=> b!7987392 (= e!4707407 e!4707411)))

(assert (=> b!7987392 (= c!1466868 ((_ is Union!21551) (regOne!43614 r!24602)))))

(declare-fun b!7987393 () Bool)

(assert (=> b!7987393 (= e!4707406 call!741744)))

(assert (= (and d!2384198 (not res!3161558)) b!7987389))

(assert (= (and b!7987389 res!3161559) b!7987390))

(assert (= (and b!7987390 (not res!3161560)) b!7987392))

(assert (= (and b!7987392 c!1466868) b!7987387))

(assert (= (and b!7987392 (not c!1466868)) b!7987388))

(assert (= (and b!7987387 (not res!3161561)) b!7987393))

(assert (= (and b!7987388 res!3161557) b!7987391))

(assert (= (or b!7987387 b!7987391) bm!741739))

(assert (= (or b!7987393 b!7987388) bm!741738))

(declare-fun m!8361374 () Bool)

(assert (=> bm!741738 m!8361374))

(declare-fun m!8361376 () Bool)

(assert (=> bm!741739 m!8361376))

(assert (=> d!2383888 d!2384198))

(assert (=> d!2383900 d!2383902))

(assert (=> d!2383900 d!2383896))

(declare-fun d!2384200 () Bool)

(assert (=> d!2384200 (isPrefix!6651 testedP!447 (++!18413 testedP!447 lt!2711604))))

(assert (=> d!2384200 true))

(declare-fun _$46!2134 () Unit!170492)

(assert (=> d!2384200 (= (choose!60181 testedP!447 lt!2711604) _$46!2134)))

(declare-fun bs!1970346 () Bool)

(assert (= bs!1970346 d!2384200))

(assert (=> bs!1970346 m!8360334))

(assert (=> bs!1970346 m!8360334))

(assert (=> bs!1970346 m!8360336))

(assert (=> d!2383900 d!2384200))

(declare-fun d!2384202 () Bool)

(declare-fun c!1466869 () Bool)

(assert (=> d!2384202 (= c!1466869 ((_ is Nil!74656) lt!2711903))))

(declare-fun e!4707412 () (InoxSet C!43440))

(assert (=> d!2384202 (= (content!15870 lt!2711903) e!4707412)))

(declare-fun b!7987394 () Bool)

(assert (=> b!7987394 (= e!4707412 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987395 () Bool)

(assert (=> b!7987395 (= e!4707412 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711903) true) (content!15870 (t!390523 lt!2711903))))))

(assert (= (and d!2384202 c!1466869) b!7987394))

(assert (= (and d!2384202 (not c!1466869)) b!7987395))

(declare-fun m!8361378 () Bool)

(assert (=> b!7987395 m!8361378))

(declare-fun m!8361380 () Bool)

(assert (=> b!7987395 m!8361380))

(assert (=> d!2383886 d!2384202))

(assert (=> d!2383886 d!2384062))

(assert (=> d!2383886 d!2383930))

(declare-fun b!7987396 () Bool)

(declare-fun res!3161565 () Bool)

(declare-fun e!4707416 () Bool)

(assert (=> b!7987396 (=> (not res!3161565) (not e!4707416))))

(declare-fun call!741745 () Bool)

(assert (=> b!7987396 (= res!3161565 call!741745)))

(declare-fun e!4707418 () Bool)

(assert (=> b!7987396 (= e!4707418 e!4707416)))

(declare-fun bm!741740 () Bool)

(declare-fun c!1466870 () Bool)

(declare-fun call!741747 () Bool)

(assert (=> bm!741740 (= call!741747 (validRegex!11855 (ite c!1466870 (regTwo!43615 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))) (regTwo!43614 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))))

(declare-fun b!7987397 () Bool)

(declare-fun e!4707419 () Bool)

(declare-fun e!4707413 () Bool)

(assert (=> b!7987397 (= e!4707419 e!4707413)))

(declare-fun res!3161566 () Bool)

(assert (=> b!7987397 (=> (not res!3161566) (not e!4707413))))

(assert (=> b!7987397 (= res!3161566 call!741745)))

(declare-fun bm!741741 () Bool)

(declare-fun call!741746 () Bool)

(assert (=> bm!741741 (= call!741745 call!741746)))

(declare-fun d!2384204 () Bool)

(declare-fun res!3161563 () Bool)

(declare-fun e!4707417 () Bool)

(assert (=> d!2384204 (=> res!3161563 e!4707417)))

(assert (=> d!2384204 (= res!3161563 ((_ is ElementMatch!21551) (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))

(assert (=> d!2384204 (= (validRegex!11855 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))) e!4707417)))

(declare-fun b!7987398 () Bool)

(assert (=> b!7987398 (= e!4707416 call!741747)))

(declare-fun b!7987399 () Bool)

(declare-fun e!4707414 () Bool)

(assert (=> b!7987399 (= e!4707417 e!4707414)))

(declare-fun c!1466871 () Bool)

(assert (=> b!7987399 (= c!1466871 ((_ is Star!21551) (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))

(declare-fun bm!741742 () Bool)

(assert (=> bm!741742 (= call!741746 (validRegex!11855 (ite c!1466871 (reg!21880 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))) (ite c!1466870 (regOne!43615 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))) (regOne!43614 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))))

(declare-fun b!7987400 () Bool)

(assert (=> b!7987400 (= e!4707414 e!4707418)))

(assert (=> b!7987400 (= c!1466870 ((_ is Union!21551) (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))

(declare-fun b!7987401 () Bool)

(declare-fun e!4707415 () Bool)

(assert (=> b!7987401 (= e!4707414 e!4707415)))

(declare-fun res!3161562 () Bool)

(assert (=> b!7987401 (= res!3161562 (not (nullable!9644 (reg!21880 (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))))

(assert (=> b!7987401 (=> (not res!3161562) (not e!4707415))))

(declare-fun b!7987402 () Bool)

(assert (=> b!7987402 (= e!4707413 call!741747)))

(declare-fun b!7987403 () Bool)

(assert (=> b!7987403 (= e!4707415 call!741746)))

(declare-fun b!7987404 () Bool)

(declare-fun res!3161564 () Bool)

(assert (=> b!7987404 (=> res!3161564 e!4707419)))

(assert (=> b!7987404 (= res!3161564 (not ((_ is Concat!30550) (ite c!1466640 (regTwo!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regTwo!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))

(assert (=> b!7987404 (= e!4707418 e!4707419)))

(assert (= (and d!2384204 (not res!3161563)) b!7987399))

(assert (= (and b!7987399 c!1466871) b!7987401))

(assert (= (and b!7987399 (not c!1466871)) b!7987400))

(assert (= (and b!7987401 res!3161562) b!7987403))

(assert (= (and b!7987400 c!1466870) b!7987396))

(assert (= (and b!7987400 (not c!1466870)) b!7987404))

(assert (= (and b!7987396 res!3161565) b!7987398))

(assert (= (and b!7987404 (not res!3161564)) b!7987397))

(assert (= (and b!7987397 res!3161566) b!7987402))

(assert (= (or b!7987398 b!7987402) bm!741740))

(assert (= (or b!7987396 b!7987397) bm!741741))

(assert (= (or b!7987403 bm!741741) bm!741742))

(declare-fun m!8361382 () Bool)

(assert (=> bm!741740 m!8361382))

(declare-fun m!8361384 () Bool)

(assert (=> bm!741742 m!8361384))

(declare-fun m!8361386 () Bool)

(assert (=> b!7987401 m!8361386))

(assert (=> bm!741579 d!2384204))

(declare-fun d!2384206 () Bool)

(declare-fun lt!2712021 () Int)

(assert (=> d!2384206 (>= lt!2712021 0)))

(declare-fun e!4707420 () Int)

(assert (=> d!2384206 (= lt!2712021 e!4707420)))

(declare-fun c!1466872 () Bool)

(assert (=> d!2384206 (= c!1466872 ((_ is Nil!74656) (t!390523 (Cons!74656 lt!2711601 Nil!74656))))))

(assert (=> d!2384206 (= (size!43487 (t!390523 (Cons!74656 lt!2711601 Nil!74656))) lt!2712021)))

(declare-fun b!7987405 () Bool)

(assert (=> b!7987405 (= e!4707420 0)))

(declare-fun b!7987406 () Bool)

(assert (=> b!7987406 (= e!4707420 (+ 1 (size!43487 (t!390523 (t!390523 (Cons!74656 lt!2711601 Nil!74656))))))))

(assert (= (and d!2384206 c!1466872) b!7987405))

(assert (= (and d!2384206 (not c!1466872)) b!7987406))

(declare-fun m!8361388 () Bool)

(assert (=> b!7987406 m!8361388))

(assert (=> b!7986373 d!2384206))

(declare-fun d!2384208 () Bool)

(declare-fun lt!2712022 () Int)

(assert (=> d!2384208 (>= lt!2712022 0)))

(declare-fun e!4707421 () Int)

(assert (=> d!2384208 (= lt!2712022 e!4707421)))

(declare-fun c!1466873 () Bool)

(assert (=> d!2384208 (= c!1466873 ((_ is Nil!74656) (t!390523 (t!390523 testedP!447))))))

(assert (=> d!2384208 (= (size!43487 (t!390523 (t!390523 testedP!447))) lt!2712022)))

(declare-fun b!7987407 () Bool)

(assert (=> b!7987407 (= e!4707421 0)))

(declare-fun b!7987408 () Bool)

(assert (=> b!7987408 (= e!4707421 (+ 1 (size!43487 (t!390523 (t!390523 (t!390523 testedP!447))))))))

(assert (= (and d!2384208 c!1466873) b!7987407))

(assert (= (and d!2384208 (not c!1466873)) b!7987408))

(declare-fun m!8361390 () Bool)

(assert (=> b!7987408 m!8361390))

(assert (=> b!7986425 d!2384208))

(declare-fun d!2384210 () Bool)

(assert (=> d!2384210 (= (nullable!9644 (ite c!1466644 (regOne!43615 r!24602) (regTwo!43614 r!24602))) (nullableFct!3814 (ite c!1466644 (regOne!43615 r!24602) (regTwo!43614 r!24602))))))

(declare-fun bs!1970347 () Bool)

(assert (= bs!1970347 d!2384210))

(declare-fun m!8361392 () Bool)

(assert (=> bs!1970347 m!8361392))

(assert (=> bm!741587 d!2384210))

(declare-fun call!741750 () Regex!21551)

(declare-fun c!1466878 () Bool)

(declare-fun c!1466874 () Bool)

(declare-fun bm!741743 () Bool)

(declare-fun c!1466876 () Bool)

(assert (=> bm!741743 (= call!741750 (derivativeStep!6571 (ite c!1466874 (regTwo!43615 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (ite c!1466876 (reg!21880 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (ite c!1466878 (regTwo!43614 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (regOne!43614 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))) (h!81104 testedP!447)))))

(declare-fun call!741751 () Regex!21551)

(declare-fun b!7987409 () Bool)

(declare-fun e!4707423 () Regex!21551)

(declare-fun call!741749 () Regex!21551)

(assert (=> b!7987409 (= e!4707423 (Union!21551 (Concat!30550 call!741751 (regTwo!43614 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) call!741749))))

(declare-fun d!2384212 () Bool)

(declare-fun lt!2712023 () Regex!21551)

(assert (=> d!2384212 (validRegex!11855 lt!2712023)))

(declare-fun e!4707422 () Regex!21551)

(assert (=> d!2384212 (= lt!2712023 e!4707422)))

(declare-fun c!1466877 () Bool)

(assert (=> d!2384212 (= c!1466877 (or ((_ is EmptyExpr!21551) (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) ((_ is EmptyLang!21551) (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))))

(assert (=> d!2384212 (validRegex!11855 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))

(assert (=> d!2384212 (= (derivativeStep!6571 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))) (h!81104 testedP!447)) lt!2712023)))

(declare-fun bm!741744 () Bool)

(declare-fun call!741748 () Regex!21551)

(assert (=> bm!741744 (= call!741748 call!741750)))

(declare-fun b!7987410 () Bool)

(assert (=> b!7987410 (= c!1466874 ((_ is Union!21551) (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun e!4707425 () Regex!21551)

(declare-fun e!4707424 () Regex!21551)

(assert (=> b!7987410 (= e!4707425 e!4707424)))

(declare-fun b!7987411 () Bool)

(assert (=> b!7987411 (= e!4707425 (ite (= (h!81104 testedP!447) (c!1466508 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987412 () Bool)

(declare-fun e!4707426 () Regex!21551)

(assert (=> b!7987412 (= e!4707424 e!4707426)))

(assert (=> b!7987412 (= c!1466876 ((_ is Star!21551) (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun b!7987413 () Bool)

(assert (=> b!7987413 (= e!4707422 e!4707425)))

(declare-fun c!1466875 () Bool)

(assert (=> b!7987413 (= c!1466875 ((_ is ElementMatch!21551) (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun b!7987414 () Bool)

(assert (=> b!7987414 (= c!1466878 (nullable!9644 (regOne!43614 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))))))

(assert (=> b!7987414 (= e!4707426 e!4707423)))

(declare-fun bm!741745 () Bool)

(assert (=> bm!741745 (= call!741751 (derivativeStep!6571 (ite c!1466874 (regOne!43615 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))) (regOne!43614 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) (h!81104 testedP!447)))))

(declare-fun b!7987415 () Bool)

(assert (=> b!7987415 (= e!4707423 (Union!21551 (Concat!30550 call!741749 (regTwo!43614 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116)))))) EmptyLang!21551))))

(declare-fun bm!741746 () Bool)

(assert (=> bm!741746 (= call!741749 call!741748)))

(declare-fun b!7987416 () Bool)

(assert (=> b!7987416 (= e!4707426 (Concat!30550 call!741748 (ite c!1466670 (regTwo!43615 baseR!116) (ite c!1466672 (reg!21880 baseR!116) (ite c!1466674 (regTwo!43614 baseR!116) (regOne!43614 baseR!116))))))))

(declare-fun b!7987417 () Bool)

(assert (=> b!7987417 (= e!4707424 (Union!21551 call!741751 call!741750))))

(declare-fun b!7987418 () Bool)

(assert (=> b!7987418 (= e!4707422 EmptyLang!21551)))

(assert (= (and d!2384212 c!1466877) b!7987418))

(assert (= (and d!2384212 (not c!1466877)) b!7987413))

(assert (= (and b!7987413 c!1466875) b!7987411))

(assert (= (and b!7987413 (not c!1466875)) b!7987410))

(assert (= (and b!7987410 c!1466874) b!7987417))

(assert (= (and b!7987410 (not c!1466874)) b!7987412))

(assert (= (and b!7987412 c!1466876) b!7987416))

(assert (= (and b!7987412 (not c!1466876)) b!7987414))

(assert (= (and b!7987414 c!1466878) b!7987409))

(assert (= (and b!7987414 (not c!1466878)) b!7987415))

(assert (= (or b!7987409 b!7987415) bm!741746))

(assert (= (or b!7987416 bm!741746) bm!741744))

(assert (= (or b!7987417 bm!741744) bm!741743))

(assert (= (or b!7987417 b!7987409) bm!741745))

(declare-fun m!8361394 () Bool)

(assert (=> bm!741743 m!8361394))

(declare-fun m!8361396 () Bool)

(assert (=> d!2384212 m!8361396))

(declare-fun m!8361398 () Bool)

(assert (=> d!2384212 m!8361398))

(declare-fun m!8361400 () Bool)

(assert (=> b!7987414 m!8361400))

(declare-fun m!8361402 () Bool)

(assert (=> bm!741745 m!8361402))

(assert (=> bm!741602 d!2384212))

(declare-fun d!2384214 () Bool)

(assert (=> d!2384214 (= (nullable!9644 (reg!21880 r!24602)) (nullableFct!3814 (reg!21880 r!24602)))))

(declare-fun bs!1970348 () Bool)

(assert (= bs!1970348 d!2384214))

(declare-fun m!8361404 () Bool)

(assert (=> bs!1970348 m!8361404))

(assert (=> b!7986388 d!2384214))

(declare-fun d!2384216 () Bool)

(declare-fun c!1466879 () Bool)

(assert (=> d!2384216 (= c!1466879 ((_ is Nil!74656) lt!2711905))))

(declare-fun e!4707427 () (InoxSet C!43440))

(assert (=> d!2384216 (= (content!15870 lt!2711905) e!4707427)))

(declare-fun b!7987419 () Bool)

(assert (=> b!7987419 (= e!4707427 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987420 () Bool)

(assert (=> b!7987420 (= e!4707427 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711905) true) (content!15870 (t!390523 lt!2711905))))))

(assert (= (and d!2384216 c!1466879) b!7987419))

(assert (= (and d!2384216 (not c!1466879)) b!7987420))

(declare-fun m!8361406 () Bool)

(assert (=> b!7987420 m!8361406))

(declare-fun m!8361408 () Bool)

(assert (=> b!7987420 m!8361408))

(assert (=> d!2383896 d!2384216))

(assert (=> d!2383896 d!2383928))

(declare-fun d!2384218 () Bool)

(declare-fun c!1466880 () Bool)

(assert (=> d!2384218 (= c!1466880 ((_ is Nil!74656) lt!2711604))))

(declare-fun e!4707428 () (InoxSet C!43440))

(assert (=> d!2384218 (= (content!15870 lt!2711604) e!4707428)))

(declare-fun b!7987421 () Bool)

(assert (=> b!7987421 (= e!4707428 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987422 () Bool)

(assert (=> b!7987422 (= e!4707428 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711604) true) (content!15870 (t!390523 lt!2711604))))))

(assert (= (and d!2384218 c!1466880) b!7987421))

(assert (= (and d!2384218 (not c!1466880)) b!7987422))

(declare-fun m!8361410 () Bool)

(assert (=> b!7987422 m!8361410))

(declare-fun m!8361412 () Bool)

(assert (=> b!7987422 m!8361412))

(assert (=> d!2383896 d!2384218))

(declare-fun b!7987424 () Bool)

(declare-fun e!4707430 () List!74780)

(assert (=> b!7987424 (= e!4707430 (Cons!74656 (h!81104 (t!390523 testedP!447)) (++!18413 (t!390523 (t!390523 testedP!447)) lt!2711886)))))

(declare-fun b!7987423 () Bool)

(assert (=> b!7987423 (= e!4707430 lt!2711886)))

(declare-fun d!2384220 () Bool)

(declare-fun e!4707429 () Bool)

(assert (=> d!2384220 e!4707429))

(declare-fun res!3161568 () Bool)

(assert (=> d!2384220 (=> (not res!3161568) (not e!4707429))))

(declare-fun lt!2712024 () List!74780)

(assert (=> d!2384220 (= res!3161568 (= (content!15870 lt!2712024) ((_ map or) (content!15870 (t!390523 testedP!447)) (content!15870 lt!2711886))))))

(assert (=> d!2384220 (= lt!2712024 e!4707430)))

(declare-fun c!1466881 () Bool)

(assert (=> d!2384220 (= c!1466881 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2384220 (= (++!18413 (t!390523 testedP!447) lt!2711886) lt!2712024)))

(declare-fun b!7987425 () Bool)

(declare-fun res!3161567 () Bool)

(assert (=> b!7987425 (=> (not res!3161567) (not e!4707429))))

(assert (=> b!7987425 (= res!3161567 (= (size!43487 lt!2712024) (+ (size!43487 (t!390523 testedP!447)) (size!43487 lt!2711886))))))

(declare-fun b!7987426 () Bool)

(assert (=> b!7987426 (= e!4707429 (or (not (= lt!2711886 Nil!74656)) (= lt!2712024 (t!390523 testedP!447))))))

(assert (= (and d!2384220 c!1466881) b!7987423))

(assert (= (and d!2384220 (not c!1466881)) b!7987424))

(assert (= (and d!2384220 res!3161568) b!7987425))

(assert (= (and b!7987425 res!3161567) b!7987426))

(declare-fun m!8361414 () Bool)

(assert (=> b!7987424 m!8361414))

(declare-fun m!8361416 () Bool)

(assert (=> d!2384220 m!8361416))

(assert (=> d!2384220 m!8360654))

(declare-fun m!8361418 () Bool)

(assert (=> d!2384220 m!8361418))

(declare-fun m!8361420 () Bool)

(assert (=> b!7987425 m!8361420))

(assert (=> b!7987425 m!8360368))

(declare-fun m!8361422 () Bool)

(assert (=> b!7987425 m!8361422))

(assert (=> d!2383844 d!2384220))

(assert (=> d!2383844 d!2384160))

(assert (=> d!2383844 d!2383894))

(declare-fun d!2384222 () Bool)

(declare-fun c!1466882 () Bool)

(assert (=> d!2384222 (= c!1466882 ((_ is Nil!74656) lt!2711889))))

(declare-fun e!4707431 () (InoxSet C!43440))

(assert (=> d!2384222 (= (content!15870 lt!2711889) e!4707431)))

(declare-fun b!7987427 () Bool)

(assert (=> b!7987427 (= e!4707431 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987428 () Bool)

(assert (=> b!7987428 (= e!4707431 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711889) true) (content!15870 (t!390523 lt!2711889))))))

(assert (= (and d!2384222 c!1466882) b!7987427))

(assert (= (and d!2384222 (not c!1466882)) b!7987428))

(declare-fun m!8361424 () Bool)

(assert (=> b!7987428 m!8361424))

(declare-fun m!8361426 () Bool)

(assert (=> b!7987428 m!8361426))

(assert (=> d!2383854 d!2384222))

(assert (=> d!2383854 d!2383928))

(declare-fun d!2384224 () Bool)

(declare-fun c!1466883 () Bool)

(assert (=> d!2384224 (= c!1466883 ((_ is Nil!74656) (Cons!74656 lt!2711830 Nil!74656)))))

(declare-fun e!4707432 () (InoxSet C!43440))

(assert (=> d!2384224 (= (content!15870 (Cons!74656 lt!2711830 Nil!74656)) e!4707432)))

(declare-fun b!7987429 () Bool)

(assert (=> b!7987429 (= e!4707432 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987430 () Bool)

(assert (=> b!7987430 (= e!4707432 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (Cons!74656 lt!2711830 Nil!74656)) true) (content!15870 (t!390523 (Cons!74656 lt!2711830 Nil!74656)))))))

(assert (= (and d!2384224 c!1466883) b!7987429))

(assert (= (and d!2384224 (not c!1466883)) b!7987430))

(declare-fun m!8361428 () Bool)

(assert (=> b!7987430 m!8361428))

(declare-fun m!8361430 () Bool)

(assert (=> b!7987430 m!8361430))

(assert (=> d!2383854 d!2384224))

(declare-fun b!7987431 () Bool)

(declare-fun res!3161572 () Bool)

(declare-fun e!4707436 () Bool)

(assert (=> b!7987431 (=> (not res!3161572) (not e!4707436))))

(declare-fun call!741752 () Bool)

(assert (=> b!7987431 (= res!3161572 call!741752)))

(declare-fun e!4707438 () Bool)

(assert (=> b!7987431 (= e!4707438 e!4707436)))

(declare-fun bm!741747 () Bool)

(declare-fun call!741754 () Bool)

(declare-fun c!1466884 () Bool)

(assert (=> bm!741747 (= call!741754 (validRegex!11855 (ite c!1466884 (regTwo!43615 lt!2711853) (regTwo!43614 lt!2711853))))))

(declare-fun b!7987432 () Bool)

(declare-fun e!4707439 () Bool)

(declare-fun e!4707433 () Bool)

(assert (=> b!7987432 (= e!4707439 e!4707433)))

(declare-fun res!3161573 () Bool)

(assert (=> b!7987432 (=> (not res!3161573) (not e!4707433))))

(assert (=> b!7987432 (= res!3161573 call!741752)))

(declare-fun bm!741748 () Bool)

(declare-fun call!741753 () Bool)

(assert (=> bm!741748 (= call!741752 call!741753)))

(declare-fun d!2384226 () Bool)

(declare-fun res!3161570 () Bool)

(declare-fun e!4707437 () Bool)

(assert (=> d!2384226 (=> res!3161570 e!4707437)))

(assert (=> d!2384226 (= res!3161570 ((_ is ElementMatch!21551) lt!2711853))))

(assert (=> d!2384226 (= (validRegex!11855 lt!2711853) e!4707437)))

(declare-fun b!7987433 () Bool)

(assert (=> b!7987433 (= e!4707436 call!741754)))

(declare-fun b!7987434 () Bool)

(declare-fun e!4707434 () Bool)

(assert (=> b!7987434 (= e!4707437 e!4707434)))

(declare-fun c!1466885 () Bool)

(assert (=> b!7987434 (= c!1466885 ((_ is Star!21551) lt!2711853))))

(declare-fun bm!741749 () Bool)

(assert (=> bm!741749 (= call!741753 (validRegex!11855 (ite c!1466885 (reg!21880 lt!2711853) (ite c!1466884 (regOne!43615 lt!2711853) (regOne!43614 lt!2711853)))))))

(declare-fun b!7987435 () Bool)

(assert (=> b!7987435 (= e!4707434 e!4707438)))

(assert (=> b!7987435 (= c!1466884 ((_ is Union!21551) lt!2711853))))

(declare-fun b!7987436 () Bool)

(declare-fun e!4707435 () Bool)

(assert (=> b!7987436 (= e!4707434 e!4707435)))

(declare-fun res!3161569 () Bool)

(assert (=> b!7987436 (= res!3161569 (not (nullable!9644 (reg!21880 lt!2711853))))))

(assert (=> b!7987436 (=> (not res!3161569) (not e!4707435))))

(declare-fun b!7987437 () Bool)

(assert (=> b!7987437 (= e!4707433 call!741754)))

(declare-fun b!7987438 () Bool)

(assert (=> b!7987438 (= e!4707435 call!741753)))

(declare-fun b!7987439 () Bool)

(declare-fun res!3161571 () Bool)

(assert (=> b!7987439 (=> res!3161571 e!4707439)))

(assert (=> b!7987439 (= res!3161571 (not ((_ is Concat!30550) lt!2711853)))))

(assert (=> b!7987439 (= e!4707438 e!4707439)))

(assert (= (and d!2384226 (not res!3161570)) b!7987434))

(assert (= (and b!7987434 c!1466885) b!7987436))

(assert (= (and b!7987434 (not c!1466885)) b!7987435))

(assert (= (and b!7987436 res!3161569) b!7987438))

(assert (= (and b!7987435 c!1466884) b!7987431))

(assert (= (and b!7987435 (not c!1466884)) b!7987439))

(assert (= (and b!7987431 res!3161572) b!7987433))

(assert (= (and b!7987439 (not res!3161571)) b!7987432))

(assert (= (and b!7987432 res!3161573) b!7987437))

(assert (= (or b!7987433 b!7987437) bm!741747))

(assert (= (or b!7987431 b!7987432) bm!741748))

(assert (= (or b!7987438 bm!741748) bm!741749))

(declare-fun m!8361432 () Bool)

(assert (=> bm!741747 m!8361432))

(declare-fun m!8361434 () Bool)

(assert (=> bm!741749 m!8361434))

(declare-fun m!8361436 () Bool)

(assert (=> b!7987436 m!8361436))

(assert (=> d!2383814 d!2384226))

(assert (=> d!2383814 d!2383810))

(declare-fun d!2384228 () Bool)

(declare-fun lt!2712025 () List!74780)

(assert (=> d!2384228 (= (++!18413 (t!390523 (t!390523 testedP!447)) lt!2712025) (tail!15824 (tail!15824 input!7927)))))

(declare-fun e!4707440 () List!74780)

(assert (=> d!2384228 (= lt!2712025 e!4707440)))

(declare-fun c!1466886 () Bool)

(assert (=> d!2384228 (= c!1466886 ((_ is Cons!74656) (t!390523 (t!390523 testedP!447))))))

(assert (=> d!2384228 (>= (size!43487 (tail!15824 (tail!15824 input!7927))) (size!43487 (t!390523 (t!390523 testedP!447))))))

(assert (=> d!2384228 (= (getSuffix!3852 (tail!15824 (tail!15824 input!7927)) (t!390523 (t!390523 testedP!447))) lt!2712025)))

(declare-fun b!7987440 () Bool)

(assert (=> b!7987440 (= e!4707440 (getSuffix!3852 (tail!15824 (tail!15824 (tail!15824 input!7927))) (t!390523 (t!390523 (t!390523 testedP!447)))))))

(declare-fun b!7987441 () Bool)

(assert (=> b!7987441 (= e!4707440 (tail!15824 (tail!15824 input!7927)))))

(assert (= (and d!2384228 c!1466886) b!7987440))

(assert (= (and d!2384228 (not c!1466886)) b!7987441))

(declare-fun m!8361438 () Bool)

(assert (=> d!2384228 m!8361438))

(assert (=> d!2384228 m!8360520))

(assert (=> d!2384228 m!8361108))

(assert (=> d!2384228 m!8360660))

(assert (=> b!7987440 m!8360520))

(assert (=> b!7987440 m!8361104))

(assert (=> b!7987440 m!8361104))

(declare-fun m!8361440 () Bool)

(assert (=> b!7987440 m!8361440))

(assert (=> b!7986338 d!2384228))

(assert (=> b!7986338 d!2384076))

(declare-fun b!7987442 () Bool)

(declare-fun res!3161577 () Bool)

(declare-fun e!4707444 () Bool)

(assert (=> b!7987442 (=> (not res!3161577) (not e!4707444))))

(declare-fun call!741755 () Bool)

(assert (=> b!7987442 (= res!3161577 call!741755)))

(declare-fun e!4707446 () Bool)

(assert (=> b!7987442 (= e!4707446 e!4707444)))

(declare-fun bm!741750 () Bool)

(declare-fun call!741757 () Bool)

(declare-fun c!1466887 () Bool)

(assert (=> bm!741750 (= call!741757 (validRegex!11855 (ite c!1466887 (regTwo!43615 lt!2711895) (regTwo!43614 lt!2711895))))))

(declare-fun b!7987443 () Bool)

(declare-fun e!4707447 () Bool)

(declare-fun e!4707441 () Bool)

(assert (=> b!7987443 (= e!4707447 e!4707441)))

(declare-fun res!3161578 () Bool)

(assert (=> b!7987443 (=> (not res!3161578) (not e!4707441))))

(assert (=> b!7987443 (= res!3161578 call!741755)))

(declare-fun bm!741751 () Bool)

(declare-fun call!741756 () Bool)

(assert (=> bm!741751 (= call!741755 call!741756)))

(declare-fun d!2384230 () Bool)

(declare-fun res!3161575 () Bool)

(declare-fun e!4707445 () Bool)

(assert (=> d!2384230 (=> res!3161575 e!4707445)))

(assert (=> d!2384230 (= res!3161575 ((_ is ElementMatch!21551) lt!2711895))))

(assert (=> d!2384230 (= (validRegex!11855 lt!2711895) e!4707445)))

(declare-fun b!7987444 () Bool)

(assert (=> b!7987444 (= e!4707444 call!741757)))

(declare-fun b!7987445 () Bool)

(declare-fun e!4707442 () Bool)

(assert (=> b!7987445 (= e!4707445 e!4707442)))

(declare-fun c!1466888 () Bool)

(assert (=> b!7987445 (= c!1466888 ((_ is Star!21551) lt!2711895))))

(declare-fun bm!741752 () Bool)

(assert (=> bm!741752 (= call!741756 (validRegex!11855 (ite c!1466888 (reg!21880 lt!2711895) (ite c!1466887 (regOne!43615 lt!2711895) (regOne!43614 lt!2711895)))))))

(declare-fun b!7987446 () Bool)

(assert (=> b!7987446 (= e!4707442 e!4707446)))

(assert (=> b!7987446 (= c!1466887 ((_ is Union!21551) lt!2711895))))

(declare-fun b!7987447 () Bool)

(declare-fun e!4707443 () Bool)

(assert (=> b!7987447 (= e!4707442 e!4707443)))

(declare-fun res!3161574 () Bool)

(assert (=> b!7987447 (= res!3161574 (not (nullable!9644 (reg!21880 lt!2711895))))))

(assert (=> b!7987447 (=> (not res!3161574) (not e!4707443))))

(declare-fun b!7987448 () Bool)

(assert (=> b!7987448 (= e!4707441 call!741757)))

(declare-fun b!7987449 () Bool)

(assert (=> b!7987449 (= e!4707443 call!741756)))

(declare-fun b!7987450 () Bool)

(declare-fun res!3161576 () Bool)

(assert (=> b!7987450 (=> res!3161576 e!4707447)))

(assert (=> b!7987450 (= res!3161576 (not ((_ is Concat!30550) lt!2711895)))))

(assert (=> b!7987450 (= e!4707446 e!4707447)))

(assert (= (and d!2384230 (not res!3161575)) b!7987445))

(assert (= (and b!7987445 c!1466888) b!7987447))

(assert (= (and b!7987445 (not c!1466888)) b!7987446))

(assert (= (and b!7987447 res!3161574) b!7987449))

(assert (= (and b!7987446 c!1466887) b!7987442))

(assert (= (and b!7987446 (not c!1466887)) b!7987450))

(assert (= (and b!7987442 res!3161577) b!7987444))

(assert (= (and b!7987450 (not res!3161576)) b!7987443))

(assert (= (and b!7987443 res!3161578) b!7987448))

(assert (= (or b!7987444 b!7987448) bm!741750))

(assert (= (or b!7987442 b!7987443) bm!741751))

(assert (= (or b!7987449 bm!741751) bm!741752))

(declare-fun m!8361442 () Bool)

(assert (=> bm!741750 m!8361442))

(declare-fun m!8361444 () Bool)

(assert (=> bm!741752 m!8361444))

(declare-fun m!8361446 () Bool)

(assert (=> b!7987447 m!8361446))

(assert (=> d!2383864 d!2384230))

(declare-fun b!7987451 () Bool)

(declare-fun res!3161582 () Bool)

(declare-fun e!4707451 () Bool)

(assert (=> b!7987451 (=> (not res!3161582) (not e!4707451))))

(declare-fun call!741758 () Bool)

(assert (=> b!7987451 (= res!3161582 call!741758)))

(declare-fun e!4707453 () Bool)

(assert (=> b!7987451 (= e!4707453 e!4707451)))

(declare-fun call!741760 () Bool)

(declare-fun bm!741753 () Bool)

(declare-fun c!1466889 () Bool)

(assert (=> bm!741753 (= call!741760 (validRegex!11855 (ite c!1466889 (regTwo!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regTwo!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))

(declare-fun b!7987452 () Bool)

(declare-fun e!4707454 () Bool)

(declare-fun e!4707448 () Bool)

(assert (=> b!7987452 (= e!4707454 e!4707448)))

(declare-fun res!3161583 () Bool)

(assert (=> b!7987452 (=> (not res!3161583) (not e!4707448))))

(assert (=> b!7987452 (= res!3161583 call!741758)))

(declare-fun bm!741754 () Bool)

(declare-fun call!741759 () Bool)

(assert (=> bm!741754 (= call!741758 call!741759)))

(declare-fun d!2384232 () Bool)

(declare-fun res!3161580 () Bool)

(declare-fun e!4707452 () Bool)

(assert (=> d!2384232 (=> res!3161580 e!4707452)))

(assert (=> d!2384232 (= res!3161580 ((_ is ElementMatch!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(assert (=> d!2384232 (= (validRegex!11855 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) e!4707452)))

(declare-fun b!7987453 () Bool)

(assert (=> b!7987453 (= e!4707451 call!741760)))

(declare-fun b!7987454 () Bool)

(declare-fun e!4707449 () Bool)

(assert (=> b!7987454 (= e!4707452 e!4707449)))

(declare-fun c!1466890 () Bool)

(assert (=> b!7987454 (= c!1466890 ((_ is Star!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun bm!741755 () Bool)

(assert (=> bm!741755 (= call!741759 (validRegex!11855 (ite c!1466890 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (ite c!1466889 (regOne!43615 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))) (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))))

(declare-fun b!7987455 () Bool)

(assert (=> b!7987455 (= e!4707449 e!4707453)))

(assert (=> b!7987455 (= c!1466889 ((_ is Union!21551) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987456 () Bool)

(declare-fun e!4707450 () Bool)

(assert (=> b!7987456 (= e!4707449 e!4707450)))

(declare-fun res!3161579 () Bool)

(assert (=> b!7987456 (= res!3161579 (not (nullable!9644 (reg!21880 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602))))))))))

(assert (=> b!7987456 (=> (not res!3161579) (not e!4707450))))

(declare-fun b!7987457 () Bool)

(assert (=> b!7987457 (= e!4707448 call!741760)))

(declare-fun b!7987458 () Bool)

(assert (=> b!7987458 (= e!4707450 call!741759)))

(declare-fun b!7987459 () Bool)

(declare-fun res!3161581 () Bool)

(assert (=> b!7987459 (=> res!3161581 e!4707454)))

(assert (=> b!7987459 (= res!3161581 (not ((_ is Concat!30550) (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))

(assert (=> b!7987459 (= e!4707453 e!4707454)))

(assert (= (and d!2384232 (not res!3161580)) b!7987454))

(assert (= (and b!7987454 c!1466890) b!7987456))

(assert (= (and b!7987454 (not c!1466890)) b!7987455))

(assert (= (and b!7987456 res!3161579) b!7987458))

(assert (= (and b!7987455 c!1466889) b!7987451))

(assert (= (and b!7987455 (not c!1466889)) b!7987459))

(assert (= (and b!7987451 res!3161582) b!7987453))

(assert (= (and b!7987459 (not res!3161581)) b!7987452))

(assert (= (and b!7987452 res!3161583) b!7987457))

(assert (= (or b!7987453 b!7987457) bm!741753))

(assert (= (or b!7987451 b!7987452) bm!741754))

(assert (= (or b!7987458 bm!741754) bm!741755))

(declare-fun m!8361448 () Bool)

(assert (=> bm!741753 m!8361448))

(declare-fun m!8361450 () Bool)

(assert (=> bm!741755 m!8361450))

(declare-fun m!8361452 () Bool)

(assert (=> b!7987456 m!8361452))

(assert (=> d!2383864 d!2384232))

(declare-fun d!2384234 () Bool)

(assert (=> d!2384234 (= input!7927 lt!2711812)))

(declare-fun lt!2712026 () Unit!170492)

(assert (=> d!2384234 (= lt!2712026 (choose!60177 input!7927 lt!2711812 input!7927))))

(assert (=> d!2384234 (isPrefix!6651 input!7927 input!7927)))

(assert (=> d!2384234 (= (lemmaIsPrefixSameLengthThenSameList!1695 input!7927 lt!2711812 input!7927) lt!2712026)))

(declare-fun bs!1970349 () Bool)

(assert (= bs!1970349 d!2384234))

(declare-fun m!8361454 () Bool)

(assert (=> bs!1970349 m!8361454))

(assert (=> bs!1970349 m!8360168))

(assert (=> bm!741568 d!2384234))

(declare-fun b!7987461 () Bool)

(declare-fun e!4707456 () List!74780)

(assert (=> b!7987461 (= e!4707456 (Cons!74656 (h!81104 (t!390523 (t!390523 testedP!447))) (++!18413 (t!390523 (t!390523 (t!390523 testedP!447))) (Cons!74656 lt!2711601 Nil!74656))))))

(declare-fun b!7987460 () Bool)

(assert (=> b!7987460 (= e!4707456 (Cons!74656 lt!2711601 Nil!74656))))

(declare-fun d!2384236 () Bool)

(declare-fun e!4707455 () Bool)

(assert (=> d!2384236 e!4707455))

(declare-fun res!3161585 () Bool)

(assert (=> d!2384236 (=> (not res!3161585) (not e!4707455))))

(declare-fun lt!2712027 () List!74780)

(assert (=> d!2384236 (= res!3161585 (= (content!15870 lt!2712027) ((_ map or) (content!15870 (t!390523 (t!390523 testedP!447))) (content!15870 (Cons!74656 lt!2711601 Nil!74656)))))))

(assert (=> d!2384236 (= lt!2712027 e!4707456)))

(declare-fun c!1466891 () Bool)

(assert (=> d!2384236 (= c!1466891 ((_ is Nil!74656) (t!390523 (t!390523 testedP!447))))))

(assert (=> d!2384236 (= (++!18413 (t!390523 (t!390523 testedP!447)) (Cons!74656 lt!2711601 Nil!74656)) lt!2712027)))

(declare-fun b!7987462 () Bool)

(declare-fun res!3161584 () Bool)

(assert (=> b!7987462 (=> (not res!3161584) (not e!4707455))))

(assert (=> b!7987462 (= res!3161584 (= (size!43487 lt!2712027) (+ (size!43487 (t!390523 (t!390523 testedP!447))) (size!43487 (Cons!74656 lt!2711601 Nil!74656)))))))

(declare-fun b!7987463 () Bool)

(assert (=> b!7987463 (= e!4707455 (or (not (= (Cons!74656 lt!2711601 Nil!74656) Nil!74656)) (= lt!2712027 (t!390523 (t!390523 testedP!447)))))))

(assert (= (and d!2384236 c!1466891) b!7987460))

(assert (= (and d!2384236 (not c!1466891)) b!7987461))

(assert (= (and d!2384236 res!3161585) b!7987462))

(assert (= (and b!7987462 res!3161584) b!7987463))

(declare-fun m!8361456 () Bool)

(assert (=> b!7987461 m!8361456))

(declare-fun m!8361458 () Bool)

(assert (=> d!2384236 m!8361458))

(assert (=> d!2384236 m!8361082))

(assert (=> d!2384236 m!8360380))

(declare-fun m!8361460 () Bool)

(assert (=> b!7987462 m!8361460))

(assert (=> b!7987462 m!8360660))

(assert (=> b!7987462 m!8360384))

(assert (=> b!7986421 d!2384236))

(assert (=> b!7986337 d!2384160))

(declare-fun c!1466892 () Bool)

(declare-fun c!1466894 () Bool)

(declare-fun c!1466896 () Bool)

(declare-fun call!741763 () Regex!21551)

(declare-fun bm!741756 () Bool)

(assert (=> bm!741756 (= call!741763 (derivativeStep!6571 (ite c!1466892 (regTwo!43615 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (ite c!1466894 (reg!21880 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (ite c!1466896 (regTwo!43614 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (regOne!43614 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))) (h!81104 testedP!447)))))

(declare-fun b!7987464 () Bool)

(declare-fun call!741762 () Regex!21551)

(declare-fun call!741764 () Regex!21551)

(declare-fun e!4707458 () Regex!21551)

(assert (=> b!7987464 (= e!4707458 (Union!21551 (Concat!30550 call!741764 (regTwo!43614 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) call!741762))))

(declare-fun d!2384238 () Bool)

(declare-fun lt!2712028 () Regex!21551)

(assert (=> d!2384238 (validRegex!11855 lt!2712028)))

(declare-fun e!4707457 () Regex!21551)

(assert (=> d!2384238 (= lt!2712028 e!4707457)))

(declare-fun c!1466895 () Bool)

(assert (=> d!2384238 (= c!1466895 (or ((_ is EmptyExpr!21551) (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) ((_ is EmptyLang!21551) (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(assert (=> d!2384238 (validRegex!11855 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))

(assert (=> d!2384238 (= (derivativeStep!6571 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)) (h!81104 testedP!447)) lt!2712028)))

(declare-fun bm!741757 () Bool)

(declare-fun call!741761 () Regex!21551)

(assert (=> bm!741757 (= call!741761 call!741763)))

(declare-fun b!7987465 () Bool)

(assert (=> b!7987465 (= c!1466892 ((_ is Union!21551) (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun e!4707460 () Regex!21551)

(declare-fun e!4707459 () Regex!21551)

(assert (=> b!7987465 (= e!4707460 e!4707459)))

(declare-fun b!7987466 () Bool)

(assert (=> b!7987466 (= e!4707460 (ite (= (h!81104 testedP!447) (c!1466508 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987467 () Bool)

(declare-fun e!4707461 () Regex!21551)

(assert (=> b!7987467 (= e!4707459 e!4707461)))

(assert (=> b!7987467 (= c!1466894 ((_ is Star!21551) (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun b!7987468 () Bool)

(assert (=> b!7987468 (= e!4707457 e!4707460)))

(declare-fun c!1466893 () Bool)

(assert (=> b!7987468 (= c!1466893 ((_ is ElementMatch!21551) (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun b!7987469 () Bool)

(assert (=> b!7987469 (= c!1466896 (nullable!9644 (regOne!43614 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))

(assert (=> b!7987469 (= e!4707461 e!4707458)))

(declare-fun bm!741758 () Bool)

(assert (=> bm!741758 (= call!741764 (derivativeStep!6571 (ite c!1466892 (regOne!43615 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))) (regOne!43614 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (h!81104 testedP!447)))))

(declare-fun b!7987470 () Bool)

(assert (=> b!7987470 (= e!4707458 (Union!21551 (Concat!30550 call!741762 (regTwo!43614 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) EmptyLang!21551))))

(declare-fun bm!741759 () Bool)

(assert (=> bm!741759 (= call!741762 call!741761)))

(declare-fun b!7987471 () Bool)

(assert (=> b!7987471 (= e!4707461 (Concat!30550 call!741761 (ite c!1466670 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))

(declare-fun b!7987472 () Bool)

(assert (=> b!7987472 (= e!4707459 (Union!21551 call!741764 call!741763))))

(declare-fun b!7987473 () Bool)

(assert (=> b!7987473 (= e!4707457 EmptyLang!21551)))

(assert (= (and d!2384238 c!1466895) b!7987473))

(assert (= (and d!2384238 (not c!1466895)) b!7987468))

(assert (= (and b!7987468 c!1466893) b!7987466))

(assert (= (and b!7987468 (not c!1466893)) b!7987465))

(assert (= (and b!7987465 c!1466892) b!7987472))

(assert (= (and b!7987465 (not c!1466892)) b!7987467))

(assert (= (and b!7987467 c!1466894) b!7987471))

(assert (= (and b!7987467 (not c!1466894)) b!7987469))

(assert (= (and b!7987469 c!1466896) b!7987464))

(assert (= (and b!7987469 (not c!1466896)) b!7987470))

(assert (= (or b!7987464 b!7987470) bm!741759))

(assert (= (or b!7987471 bm!741759) bm!741757))

(assert (= (or b!7987472 bm!741757) bm!741756))

(assert (= (or b!7987472 b!7987464) bm!741758))

(declare-fun m!8361462 () Bool)

(assert (=> bm!741756 m!8361462))

(declare-fun m!8361464 () Bool)

(assert (=> d!2384238 m!8361464))

(declare-fun m!8361466 () Bool)

(assert (=> d!2384238 m!8361466))

(declare-fun m!8361468 () Bool)

(assert (=> b!7987469 m!8361468))

(declare-fun m!8361470 () Bool)

(assert (=> bm!741758 m!8361470))

(assert (=> bm!741604 d!2384238))

(declare-fun b!7987475 () Bool)

(declare-fun res!3161587 () Bool)

(declare-fun e!4707464 () Bool)

(assert (=> b!7987475 (=> (not res!3161587) (not e!4707464))))

(assert (=> b!7987475 (= res!3161587 (= (head!16297 (tail!15824 (tail!15824 lt!2711603))) (head!16297 (tail!15824 (tail!15824 input!7927)))))))

(declare-fun b!7987476 () Bool)

(assert (=> b!7987476 (= e!4707464 (isPrefix!6651 (tail!15824 (tail!15824 (tail!15824 lt!2711603))) (tail!15824 (tail!15824 (tail!15824 input!7927)))))))

(declare-fun d!2384240 () Bool)

(declare-fun e!4707463 () Bool)

(assert (=> d!2384240 e!4707463))

(declare-fun res!3161588 () Bool)

(assert (=> d!2384240 (=> res!3161588 e!4707463)))

(declare-fun lt!2712029 () Bool)

(assert (=> d!2384240 (= res!3161588 (not lt!2712029))))

(declare-fun e!4707462 () Bool)

(assert (=> d!2384240 (= lt!2712029 e!4707462)))

(declare-fun res!3161586 () Bool)

(assert (=> d!2384240 (=> res!3161586 e!4707462)))

(assert (=> d!2384240 (= res!3161586 ((_ is Nil!74656) (tail!15824 (tail!15824 lt!2711603))))))

(assert (=> d!2384240 (= (isPrefix!6651 (tail!15824 (tail!15824 lt!2711603)) (tail!15824 (tail!15824 input!7927))) lt!2712029)))

(declare-fun b!7987477 () Bool)

(assert (=> b!7987477 (= e!4707463 (>= (size!43487 (tail!15824 (tail!15824 input!7927))) (size!43487 (tail!15824 (tail!15824 lt!2711603)))))))

(declare-fun b!7987474 () Bool)

(assert (=> b!7987474 (= e!4707462 e!4707464)))

(declare-fun res!3161589 () Bool)

(assert (=> b!7987474 (=> (not res!3161589) (not e!4707464))))

(assert (=> b!7987474 (= res!3161589 (not ((_ is Nil!74656) (tail!15824 (tail!15824 input!7927)))))))

(assert (= (and d!2384240 (not res!3161586)) b!7987474))

(assert (= (and b!7987474 res!3161589) b!7987475))

(assert (= (and b!7987475 res!3161587) b!7987476))

(assert (= (and d!2384240 (not res!3161588)) b!7987477))

(assert (=> b!7987475 m!8360700))

(declare-fun m!8361472 () Bool)

(assert (=> b!7987475 m!8361472))

(assert (=> b!7987475 m!8360520))

(assert (=> b!7987475 m!8361100))

(assert (=> b!7987476 m!8360700))

(declare-fun m!8361474 () Bool)

(assert (=> b!7987476 m!8361474))

(assert (=> b!7987476 m!8360520))

(assert (=> b!7987476 m!8361104))

(assert (=> b!7987476 m!8361474))

(assert (=> b!7987476 m!8361104))

(declare-fun m!8361476 () Bool)

(assert (=> b!7987476 m!8361476))

(assert (=> b!7987477 m!8360520))

(assert (=> b!7987477 m!8361108))

(assert (=> b!7987477 m!8360700))

(declare-fun m!8361478 () Bool)

(assert (=> b!7987477 m!8361478))

(assert (=> b!7986440 d!2384240))

(declare-fun d!2384242 () Bool)

(assert (=> d!2384242 (= (tail!15824 (tail!15824 lt!2711603)) (t!390523 (tail!15824 lt!2711603)))))

(assert (=> b!7986440 d!2384242))

(assert (=> b!7986440 d!2384076))

(assert (=> bm!741563 d!2383804))

(declare-fun d!2384244 () Bool)

(declare-fun c!1466897 () Bool)

(assert (=> d!2384244 (= c!1466897 ((_ is Nil!74656) (t!390523 lt!2711840)))))

(declare-fun e!4707465 () (InoxSet C!43440))

(assert (=> d!2384244 (= (content!15870 (t!390523 lt!2711840)) e!4707465)))

(declare-fun b!7987478 () Bool)

(assert (=> b!7987478 (= e!4707465 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987479 () Bool)

(assert (=> b!7987479 (= e!4707465 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (t!390523 lt!2711840)) true) (content!15870 (t!390523 (t!390523 lt!2711840)))))))

(assert (= (and d!2384244 c!1466897) b!7987478))

(assert (= (and d!2384244 (not c!1466897)) b!7987479))

(declare-fun m!8361480 () Bool)

(assert (=> b!7987479 m!8361480))

(declare-fun m!8361482 () Bool)

(assert (=> b!7987479 m!8361482))

(assert (=> b!7986461 d!2384244))

(declare-fun b!7987481 () Bool)

(declare-fun e!4707467 () List!74780)

(assert (=> b!7987481 (= e!4707467 (Cons!74656 (h!81104 (t!390523 testedP!447)) (++!18413 (t!390523 (t!390523 testedP!447)) (Cons!74656 (head!16297 lt!2711604) Nil!74656))))))

(declare-fun b!7987480 () Bool)

(assert (=> b!7987480 (= e!4707467 (Cons!74656 (head!16297 lt!2711604) Nil!74656))))

(declare-fun d!2384246 () Bool)

(declare-fun e!4707466 () Bool)

(assert (=> d!2384246 e!4707466))

(declare-fun res!3161591 () Bool)

(assert (=> d!2384246 (=> (not res!3161591) (not e!4707466))))

(declare-fun lt!2712030 () List!74780)

(assert (=> d!2384246 (= res!3161591 (= (content!15870 lt!2712030) ((_ map or) (content!15870 (t!390523 testedP!447)) (content!15870 (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))))

(assert (=> d!2384246 (= lt!2712030 e!4707467)))

(declare-fun c!1466898 () Bool)

(assert (=> d!2384246 (= c!1466898 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2384246 (= (++!18413 (t!390523 testedP!447) (Cons!74656 (head!16297 lt!2711604) Nil!74656)) lt!2712030)))

(declare-fun b!7987482 () Bool)

(declare-fun res!3161590 () Bool)

(assert (=> b!7987482 (=> (not res!3161590) (not e!4707466))))

(assert (=> b!7987482 (= res!3161590 (= (size!43487 lt!2712030) (+ (size!43487 (t!390523 testedP!447)) (size!43487 (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))))

(declare-fun b!7987483 () Bool)

(assert (=> b!7987483 (= e!4707466 (or (not (= (Cons!74656 (head!16297 lt!2711604) Nil!74656) Nil!74656)) (= lt!2712030 (t!390523 testedP!447))))))

(assert (= (and d!2384246 c!1466898) b!7987480))

(assert (= (and d!2384246 (not c!1466898)) b!7987481))

(assert (= (and d!2384246 res!3161591) b!7987482))

(assert (= (and b!7987482 res!3161590) b!7987483))

(declare-fun m!8361484 () Bool)

(assert (=> b!7987481 m!8361484))

(declare-fun m!8361486 () Bool)

(assert (=> d!2384246 m!8361486))

(assert (=> d!2384246 m!8360654))

(assert (=> d!2384246 m!8360564))

(declare-fun m!8361488 () Bool)

(assert (=> b!7987482 m!8361488))

(assert (=> b!7987482 m!8360368))

(assert (=> b!7987482 m!8360568))

(assert (=> b!7986353 d!2384246))

(declare-fun d!2384248 () Bool)

(declare-fun lt!2712031 () Int)

(assert (=> d!2384248 (>= lt!2712031 0)))

(declare-fun e!4707468 () Int)

(assert (=> d!2384248 (= lt!2712031 e!4707468)))

(declare-fun c!1466899 () Bool)

(assert (=> d!2384248 (= c!1466899 ((_ is Nil!74656) lt!2711889))))

(assert (=> d!2384248 (= (size!43487 lt!2711889) lt!2712031)))

(declare-fun b!7987484 () Bool)

(assert (=> b!7987484 (= e!4707468 0)))

(declare-fun b!7987485 () Bool)

(assert (=> b!7987485 (= e!4707468 (+ 1 (size!43487 (t!390523 lt!2711889))))))

(assert (= (and d!2384248 c!1466899) b!7987484))

(assert (= (and d!2384248 (not c!1466899)) b!7987485))

(declare-fun m!8361490 () Bool)

(assert (=> b!7987485 m!8361490))

(assert (=> b!7986350 d!2384248))

(assert (=> b!7986350 d!2383788))

(declare-fun d!2384250 () Bool)

(declare-fun lt!2712032 () Int)

(assert (=> d!2384250 (>= lt!2712032 0)))

(declare-fun e!4707469 () Int)

(assert (=> d!2384250 (= lt!2712032 e!4707469)))

(declare-fun c!1466900 () Bool)

(assert (=> d!2384250 (= c!1466900 ((_ is Nil!74656) (Cons!74656 lt!2711830 Nil!74656)))))

(assert (=> d!2384250 (= (size!43487 (Cons!74656 lt!2711830 Nil!74656)) lt!2712032)))

(declare-fun b!7987486 () Bool)

(assert (=> b!7987486 (= e!4707469 0)))

(declare-fun b!7987487 () Bool)

(assert (=> b!7987487 (= e!4707469 (+ 1 (size!43487 (t!390523 (Cons!74656 lt!2711830 Nil!74656)))))))

(assert (= (and d!2384250 c!1466900) b!7987486))

(assert (= (and d!2384250 (not c!1466900)) b!7987487))

(declare-fun m!8361492 () Bool)

(assert (=> b!7987487 m!8361492))

(assert (=> b!7986350 d!2384250))

(declare-fun d!2384252 () Bool)

(declare-fun lt!2712033 () Int)

(assert (=> d!2384252 (>= lt!2712033 0)))

(declare-fun e!4707470 () Int)

(assert (=> d!2384252 (= lt!2712033 e!4707470)))

(declare-fun c!1466901 () Bool)

(assert (=> d!2384252 (= c!1466901 ((_ is Nil!74656) lt!2711905))))

(assert (=> d!2384252 (= (size!43487 lt!2711905) lt!2712033)))

(declare-fun b!7987488 () Bool)

(assert (=> b!7987488 (= e!4707470 0)))

(declare-fun b!7987489 () Bool)

(assert (=> b!7987489 (= e!4707470 (+ 1 (size!43487 (t!390523 lt!2711905))))))

(assert (= (and d!2384252 c!1466901) b!7987488))

(assert (= (and d!2384252 (not c!1466901)) b!7987489))

(declare-fun m!8361494 () Bool)

(assert (=> b!7987489 m!8361494))

(assert (=> b!7986428 d!2384252))

(assert (=> b!7986428 d!2383788))

(declare-fun d!2384254 () Bool)

(declare-fun lt!2712034 () Int)

(assert (=> d!2384254 (>= lt!2712034 0)))

(declare-fun e!4707471 () Int)

(assert (=> d!2384254 (= lt!2712034 e!4707471)))

(declare-fun c!1466902 () Bool)

(assert (=> d!2384254 (= c!1466902 ((_ is Nil!74656) lt!2711604))))

(assert (=> d!2384254 (= (size!43487 lt!2711604) lt!2712034)))

(declare-fun b!7987490 () Bool)

(assert (=> b!7987490 (= e!4707471 0)))

(declare-fun b!7987491 () Bool)

(assert (=> b!7987491 (= e!4707471 (+ 1 (size!43487 (t!390523 lt!2711604))))))

(assert (= (and d!2384254 c!1466902) b!7987490))

(assert (= (and d!2384254 (not c!1466902)) b!7987491))

(declare-fun m!8361496 () Bool)

(assert (=> b!7987491 m!8361496))

(assert (=> b!7986428 d!2384254))

(declare-fun d!2384256 () Bool)

(assert (=> d!2384256 (= (head!16297 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))) (h!81104 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))

(assert (=> b!7986345 d!2384256))

(assert (=> b!7986345 d!2383862))

(assert (=> d!2383848 d!2383852))

(assert (=> d!2383848 d!2383850))

(assert (=> d!2383848 d!2383846))

(assert (=> d!2383848 d!2383748))

(declare-fun b!7987492 () Bool)

(declare-fun res!3161595 () Bool)

(declare-fun e!4707475 () Bool)

(assert (=> b!7987492 (=> (not res!3161595) (not e!4707475))))

(declare-fun call!741765 () Bool)

(assert (=> b!7987492 (= res!3161595 call!741765)))

(declare-fun e!4707477 () Bool)

(assert (=> b!7987492 (= e!4707477 e!4707475)))

(declare-fun c!1466903 () Bool)

(declare-fun call!741767 () Bool)

(declare-fun bm!741760 () Bool)

(assert (=> bm!741760 (= call!741767 (validRegex!11855 (ite c!1466903 (regTwo!43615 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))) (regTwo!43614 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))))))))

(declare-fun b!7987493 () Bool)

(declare-fun e!4707478 () Bool)

(declare-fun e!4707472 () Bool)

(assert (=> b!7987493 (= e!4707478 e!4707472)))

(declare-fun res!3161596 () Bool)

(assert (=> b!7987493 (=> (not res!3161596) (not e!4707472))))

(assert (=> b!7987493 (= res!3161596 call!741765)))

(declare-fun bm!741761 () Bool)

(declare-fun call!741766 () Bool)

(assert (=> bm!741761 (= call!741765 call!741766)))

(declare-fun d!2384258 () Bool)

(declare-fun res!3161593 () Bool)

(declare-fun e!4707476 () Bool)

(assert (=> d!2384258 (=> res!3161593 e!4707476)))

(assert (=> d!2384258 (= res!3161593 ((_ is ElementMatch!21551) (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))))))

(assert (=> d!2384258 (= (validRegex!11855 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))) e!4707476)))

(declare-fun b!7987494 () Bool)

(assert (=> b!7987494 (= e!4707475 call!741767)))

(declare-fun b!7987495 () Bool)

(declare-fun e!4707473 () Bool)

(assert (=> b!7987495 (= e!4707476 e!4707473)))

(declare-fun c!1466904 () Bool)

(assert (=> b!7987495 (= c!1466904 ((_ is Star!21551) (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))))))

(declare-fun bm!741762 () Bool)

(assert (=> bm!741762 (= call!741766 (validRegex!11855 (ite c!1466904 (reg!21880 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))) (ite c!1466903 (regOne!43615 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))) (regOne!43614 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613))))))))))

(declare-fun b!7987496 () Bool)

(assert (=> b!7987496 (= e!4707473 e!4707477)))

(assert (=> b!7987496 (= c!1466903 ((_ is Union!21551) (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))))))

(declare-fun b!7987497 () Bool)

(declare-fun e!4707474 () Bool)

(assert (=> b!7987497 (= e!4707473 e!4707474)))

(declare-fun res!3161592 () Bool)

(assert (=> b!7987497 (= res!3161592 (not (nullable!9644 (reg!21880 (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613)))))))))

(assert (=> b!7987497 (=> (not res!3161592) (not e!4707474))))

(declare-fun b!7987498 () Bool)

(assert (=> b!7987498 (= e!4707472 call!741767)))

(declare-fun b!7987499 () Bool)

(assert (=> b!7987499 (= e!4707474 call!741766)))

(declare-fun b!7987500 () Bool)

(declare-fun res!3161594 () Bool)

(assert (=> b!7987500 (=> res!3161594 e!4707478)))

(assert (=> b!7987500 (= res!3161594 (not ((_ is Concat!30550) (ite c!1466636 (reg!21880 lt!2711613) (ite c!1466635 (regOne!43615 lt!2711613) (regOne!43614 lt!2711613))))))))

(assert (=> b!7987500 (= e!4707477 e!4707478)))

(assert (= (and d!2384258 (not res!3161593)) b!7987495))

(assert (= (and b!7987495 c!1466904) b!7987497))

(assert (= (and b!7987495 (not c!1466904)) b!7987496))

(assert (= (and b!7987497 res!3161592) b!7987499))

(assert (= (and b!7987496 c!1466903) b!7987492))

(assert (= (and b!7987496 (not c!1466903)) b!7987500))

(assert (= (and b!7987492 res!3161595) b!7987494))

(assert (= (and b!7987500 (not res!3161594)) b!7987493))

(assert (= (and b!7987493 res!3161596) b!7987498))

(assert (= (or b!7987494 b!7987498) bm!741760))

(assert (= (or b!7987492 b!7987493) bm!741761))

(assert (= (or b!7987499 bm!741761) bm!741762))

(declare-fun m!8361498 () Bool)

(assert (=> bm!741760 m!8361498))

(declare-fun m!8361500 () Bool)

(assert (=> bm!741762 m!8361500))

(declare-fun m!8361502 () Bool)

(assert (=> b!7987497 m!8361502))

(assert (=> bm!741575 d!2384258))

(declare-fun b!7987501 () Bool)

(declare-fun res!3161600 () Bool)

(declare-fun e!4707482 () Bool)

(assert (=> b!7987501 (=> (not res!3161600) (not e!4707482))))

(declare-fun call!741768 () Bool)

(assert (=> b!7987501 (= res!3161600 call!741768)))

(declare-fun e!4707484 () Bool)

(assert (=> b!7987501 (= e!4707484 e!4707482)))

(declare-fun bm!741763 () Bool)

(declare-fun call!741770 () Bool)

(declare-fun c!1466905 () Bool)

(assert (=> bm!741763 (= call!741770 (validRegex!11855 (ite c!1466905 (regTwo!43615 lt!2711915) (regTwo!43614 lt!2711915))))))

(declare-fun b!7987502 () Bool)

(declare-fun e!4707485 () Bool)

(declare-fun e!4707479 () Bool)

(assert (=> b!7987502 (= e!4707485 e!4707479)))

(declare-fun res!3161601 () Bool)

(assert (=> b!7987502 (=> (not res!3161601) (not e!4707479))))

(assert (=> b!7987502 (= res!3161601 call!741768)))

(declare-fun bm!741764 () Bool)

(declare-fun call!741769 () Bool)

(assert (=> bm!741764 (= call!741768 call!741769)))

(declare-fun d!2384260 () Bool)

(declare-fun res!3161598 () Bool)

(declare-fun e!4707483 () Bool)

(assert (=> d!2384260 (=> res!3161598 e!4707483)))

(assert (=> d!2384260 (= res!3161598 ((_ is ElementMatch!21551) lt!2711915))))

(assert (=> d!2384260 (= (validRegex!11855 lt!2711915) e!4707483)))

(declare-fun b!7987503 () Bool)

(assert (=> b!7987503 (= e!4707482 call!741770)))

(declare-fun b!7987504 () Bool)

(declare-fun e!4707480 () Bool)

(assert (=> b!7987504 (= e!4707483 e!4707480)))

(declare-fun c!1466906 () Bool)

(assert (=> b!7987504 (= c!1466906 ((_ is Star!21551) lt!2711915))))

(declare-fun bm!741765 () Bool)

(assert (=> bm!741765 (= call!741769 (validRegex!11855 (ite c!1466906 (reg!21880 lt!2711915) (ite c!1466905 (regOne!43615 lt!2711915) (regOne!43614 lt!2711915)))))))

(declare-fun b!7987505 () Bool)

(assert (=> b!7987505 (= e!4707480 e!4707484)))

(assert (=> b!7987505 (= c!1466905 ((_ is Union!21551) lt!2711915))))

(declare-fun b!7987506 () Bool)

(declare-fun e!4707481 () Bool)

(assert (=> b!7987506 (= e!4707480 e!4707481)))

(declare-fun res!3161597 () Bool)

(assert (=> b!7987506 (= res!3161597 (not (nullable!9644 (reg!21880 lt!2711915))))))

(assert (=> b!7987506 (=> (not res!3161597) (not e!4707481))))

(declare-fun b!7987507 () Bool)

(assert (=> b!7987507 (= e!4707479 call!741770)))

(declare-fun b!7987508 () Bool)

(assert (=> b!7987508 (= e!4707481 call!741769)))

(declare-fun b!7987509 () Bool)

(declare-fun res!3161599 () Bool)

(assert (=> b!7987509 (=> res!3161599 e!4707485)))

(assert (=> b!7987509 (= res!3161599 (not ((_ is Concat!30550) lt!2711915)))))

(assert (=> b!7987509 (= e!4707484 e!4707485)))

(assert (= (and d!2384260 (not res!3161598)) b!7987504))

(assert (= (and b!7987504 c!1466906) b!7987506))

(assert (= (and b!7987504 (not c!1466906)) b!7987505))

(assert (= (and b!7987506 res!3161597) b!7987508))

(assert (= (and b!7987505 c!1466905) b!7987501))

(assert (= (and b!7987505 (not c!1466905)) b!7987509))

(assert (= (and b!7987501 res!3161600) b!7987503))

(assert (= (and b!7987509 (not res!3161599)) b!7987502))

(assert (= (and b!7987502 res!3161601) b!7987507))

(assert (= (or b!7987503 b!7987507) bm!741763))

(assert (= (or b!7987501 b!7987502) bm!741764))

(assert (= (or b!7987508 bm!741764) bm!741765))

(declare-fun m!8361504 () Bool)

(assert (=> bm!741763 m!8361504))

(declare-fun m!8361506 () Bool)

(assert (=> bm!741765 m!8361506))

(declare-fun m!8361508 () Bool)

(assert (=> b!7987506 m!8361508))

(assert (=> d!2383920 d!2384260))

(declare-fun b!7987510 () Bool)

(declare-fun res!3161605 () Bool)

(declare-fun e!4707489 () Bool)

(assert (=> b!7987510 (=> (not res!3161605) (not e!4707489))))

(declare-fun call!741771 () Bool)

(assert (=> b!7987510 (= res!3161605 call!741771)))

(declare-fun e!4707491 () Bool)

(assert (=> b!7987510 (= e!4707491 e!4707489)))

(declare-fun call!741773 () Bool)

(declare-fun c!1466907 () Bool)

(declare-fun bm!741766 () Bool)

(assert (=> bm!741766 (= call!741773 (validRegex!11855 (ite c!1466907 (regTwo!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regTwo!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))

(declare-fun b!7987511 () Bool)

(declare-fun e!4707492 () Bool)

(declare-fun e!4707486 () Bool)

(assert (=> b!7987511 (= e!4707492 e!4707486)))

(declare-fun res!3161606 () Bool)

(assert (=> b!7987511 (=> (not res!3161606) (not e!4707486))))

(assert (=> b!7987511 (= res!3161606 call!741771)))

(declare-fun bm!741767 () Bool)

(declare-fun call!741772 () Bool)

(assert (=> bm!741767 (= call!741771 call!741772)))

(declare-fun d!2384262 () Bool)

(declare-fun res!3161603 () Bool)

(declare-fun e!4707490 () Bool)

(assert (=> d!2384262 (=> res!3161603 e!4707490)))

(assert (=> d!2384262 (= res!3161603 ((_ is ElementMatch!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(assert (=> d!2384262 (= (validRegex!11855 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) e!4707490)))

(declare-fun b!7987512 () Bool)

(assert (=> b!7987512 (= e!4707489 call!741773)))

(declare-fun b!7987513 () Bool)

(declare-fun e!4707487 () Bool)

(assert (=> b!7987513 (= e!4707490 e!4707487)))

(declare-fun c!1466908 () Bool)

(assert (=> b!7987513 (= c!1466908 ((_ is Star!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun bm!741768 () Bool)

(assert (=> bm!741768 (= call!741772 (validRegex!11855 (ite c!1466908 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (ite c!1466907 (regOne!43615 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))) (regOne!43614 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))))

(declare-fun b!7987514 () Bool)

(assert (=> b!7987514 (= e!4707487 e!4707491)))

(assert (=> b!7987514 (= c!1466907 ((_ is Union!21551) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))

(declare-fun b!7987515 () Bool)

(declare-fun e!4707488 () Bool)

(assert (=> b!7987515 (= e!4707487 e!4707488)))

(declare-fun res!3161602 () Bool)

(assert (=> b!7987515 (= res!3161602 (not (nullable!9644 (reg!21880 (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602))))))))

(assert (=> b!7987515 (=> (not res!3161602) (not e!4707488))))

(declare-fun b!7987516 () Bool)

(assert (=> b!7987516 (= e!4707486 call!741773)))

(declare-fun b!7987517 () Bool)

(assert (=> b!7987517 (= e!4707488 call!741772)))

(declare-fun b!7987518 () Bool)

(declare-fun res!3161604 () Bool)

(assert (=> b!7987518 (=> res!3161604 e!4707492)))

(assert (=> b!7987518 (= res!3161604 (not ((_ is Concat!30550) (ite c!1466531 (regOne!43615 r!24602) (regOne!43614 r!24602)))))))

(assert (=> b!7987518 (= e!4707491 e!4707492)))

(assert (= (and d!2384262 (not res!3161603)) b!7987513))

(assert (= (and b!7987513 c!1466908) b!7987515))

(assert (= (and b!7987513 (not c!1466908)) b!7987514))

(assert (= (and b!7987515 res!3161602) b!7987517))

(assert (= (and b!7987514 c!1466907) b!7987510))

(assert (= (and b!7987514 (not c!1466907)) b!7987518))

(assert (= (and b!7987510 res!3161605) b!7987512))

(assert (= (and b!7987518 (not res!3161604)) b!7987511))

(assert (= (and b!7987511 res!3161606) b!7987516))

(assert (= (or b!7987512 b!7987516) bm!741766))

(assert (= (or b!7987510 b!7987511) bm!741767))

(assert (= (or b!7987517 bm!741767) bm!741768))

(declare-fun m!8361510 () Bool)

(assert (=> bm!741766 m!8361510))

(declare-fun m!8361512 () Bool)

(assert (=> bm!741768 m!8361512))

(declare-fun m!8361514 () Bool)

(assert (=> b!7987515 m!8361514))

(assert (=> d!2383920 d!2384262))

(declare-fun b!7987519 () Bool)

(declare-fun res!3161610 () Bool)

(declare-fun e!4707496 () Bool)

(assert (=> b!7987519 (=> (not res!3161610) (not e!4707496))))

(declare-fun call!741774 () Bool)

(assert (=> b!7987519 (= res!3161610 call!741774)))

(declare-fun e!4707498 () Bool)

(assert (=> b!7987519 (= e!4707498 e!4707496)))

(declare-fun bm!741769 () Bool)

(declare-fun c!1466909 () Bool)

(declare-fun call!741776 () Bool)

(assert (=> bm!741769 (= call!741776 (validRegex!11855 (ite c!1466909 (regTwo!43615 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))) (regTwo!43614 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))))

(declare-fun b!7987520 () Bool)

(declare-fun e!4707499 () Bool)

(declare-fun e!4707493 () Bool)

(assert (=> b!7987520 (= e!4707499 e!4707493)))

(declare-fun res!3161611 () Bool)

(assert (=> b!7987520 (=> (not res!3161611) (not e!4707493))))

(assert (=> b!7987520 (= res!3161611 call!741774)))

(declare-fun bm!741770 () Bool)

(declare-fun call!741775 () Bool)

(assert (=> bm!741770 (= call!741774 call!741775)))

(declare-fun d!2384264 () Bool)

(declare-fun res!3161608 () Bool)

(declare-fun e!4707497 () Bool)

(assert (=> d!2384264 (=> res!3161608 e!4707497)))

(assert (=> d!2384264 (= res!3161608 ((_ is ElementMatch!21551) (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))

(assert (=> d!2384264 (= (validRegex!11855 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))) e!4707497)))

(declare-fun b!7987521 () Bool)

(assert (=> b!7987521 (= e!4707496 call!741776)))

(declare-fun b!7987522 () Bool)

(declare-fun e!4707494 () Bool)

(assert (=> b!7987522 (= e!4707497 e!4707494)))

(declare-fun c!1466910 () Bool)

(assert (=> b!7987522 (= c!1466910 ((_ is Star!21551) (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))

(declare-fun bm!741771 () Bool)

(assert (=> bm!741771 (= call!741775 (validRegex!11855 (ite c!1466910 (reg!21880 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))) (ite c!1466909 (regOne!43615 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))) (regOne!43614 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))))

(declare-fun b!7987523 () Bool)

(assert (=> b!7987523 (= e!4707494 e!4707498)))

(assert (=> b!7987523 (= c!1466909 ((_ is Union!21551) (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))

(declare-fun b!7987524 () Bool)

(declare-fun e!4707495 () Bool)

(assert (=> b!7987524 (= e!4707494 e!4707495)))

(declare-fun res!3161607 () Bool)

(assert (=> b!7987524 (= res!3161607 (not (nullable!9644 (reg!21880 (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))))

(assert (=> b!7987524 (=> (not res!3161607) (not e!4707495))))

(declare-fun b!7987525 () Bool)

(assert (=> b!7987525 (= e!4707493 call!741776)))

(declare-fun b!7987526 () Bool)

(assert (=> b!7987526 (= e!4707495 call!741775)))

(declare-fun b!7987527 () Bool)

(declare-fun res!3161609 () Bool)

(assert (=> b!7987527 (=> res!3161609 e!4707499)))

(assert (=> b!7987527 (= res!3161609 (not ((_ is Concat!30550) (ite c!1466633 (regTwo!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regTwo!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))

(assert (=> b!7987527 (= e!4707498 e!4707499)))

(assert (= (and d!2384264 (not res!3161608)) b!7987522))

(assert (= (and b!7987522 c!1466910) b!7987524))

(assert (= (and b!7987522 (not c!1466910)) b!7987523))

(assert (= (and b!7987524 res!3161607) b!7987526))

(assert (= (and b!7987523 c!1466909) b!7987519))

(assert (= (and b!7987523 (not c!1466909)) b!7987527))

(assert (= (and b!7987519 res!3161610) b!7987521))

(assert (= (and b!7987527 (not res!3161609)) b!7987520))

(assert (= (and b!7987520 res!3161611) b!7987525))

(assert (= (or b!7987521 b!7987525) bm!741769))

(assert (= (or b!7987519 b!7987520) bm!741770))

(assert (= (or b!7987526 bm!741770) bm!741771))

(declare-fun m!8361516 () Bool)

(assert (=> bm!741769 m!8361516))

(declare-fun m!8361518 () Bool)

(assert (=> bm!741771 m!8361518))

(declare-fun m!8361520 () Bool)

(assert (=> b!7987524 m!8361520))

(assert (=> bm!741570 d!2384264))

(assert (=> b!7986431 d!2383916))

(declare-fun d!2384266 () Bool)

(assert (=> d!2384266 (= (head!16297 (++!18413 testedP!447 lt!2711604)) (h!81104 (++!18413 testedP!447 lt!2711604)))))

(assert (=> b!7986431 d!2384266))

(declare-fun d!2384268 () Bool)

(declare-fun lt!2712035 () Int)

(assert (=> d!2384268 (>= lt!2712035 0)))

(declare-fun e!4707500 () Int)

(assert (=> d!2384268 (= lt!2712035 e!4707500)))

(declare-fun c!1466911 () Bool)

(assert (=> d!2384268 (= c!1466911 ((_ is Nil!74656) lt!2711913))))

(assert (=> d!2384268 (= (size!43487 lt!2711913) lt!2712035)))

(declare-fun b!7987528 () Bool)

(assert (=> b!7987528 (= e!4707500 0)))

(declare-fun b!7987529 () Bool)

(assert (=> b!7987529 (= e!4707500 (+ 1 (size!43487 (t!390523 lt!2711913))))))

(assert (= (and d!2384268 c!1466911) b!7987528))

(assert (= (and d!2384268 (not c!1466911)) b!7987529))

(declare-fun m!8361522 () Bool)

(assert (=> b!7987529 m!8361522))

(assert (=> b!7986436 d!2384268))

(assert (=> b!7986436 d!2383826))

(declare-fun d!2384270 () Bool)

(declare-fun lt!2712036 () Int)

(assert (=> d!2384270 (>= lt!2712036 0)))

(declare-fun e!4707501 () Int)

(assert (=> d!2384270 (= lt!2712036 e!4707501)))

(declare-fun c!1466912 () Bool)

(assert (=> d!2384270 (= c!1466912 ((_ is Nil!74656) (_2!38683 lt!2711815)))))

(assert (=> d!2384270 (= (size!43487 (_2!38683 lt!2711815)) lt!2712036)))

(declare-fun b!7987530 () Bool)

(assert (=> b!7987530 (= e!4707501 0)))

(declare-fun b!7987531 () Bool)

(assert (=> b!7987531 (= e!4707501 (+ 1 (size!43487 (t!390523 (_2!38683 lt!2711815)))))))

(assert (= (and d!2384270 c!1466912) b!7987530))

(assert (= (and d!2384270 (not c!1466912)) b!7987531))

(declare-fun m!8361524 () Bool)

(assert (=> b!7987531 m!8361524))

(assert (=> b!7986436 d!2384270))

(declare-fun b!7987533 () Bool)

(declare-fun res!3161613 () Bool)

(declare-fun e!4707504 () Bool)

(assert (=> b!7987533 (=> (not res!3161613) (not e!4707504))))

(assert (=> b!7987533 (= res!3161613 (= (head!16297 (tail!15824 testedP!447)) (head!16297 (tail!15824 (++!18413 testedP!447 lt!2711604)))))))

(declare-fun b!7987534 () Bool)

(assert (=> b!7987534 (= e!4707504 (isPrefix!6651 (tail!15824 (tail!15824 testedP!447)) (tail!15824 (tail!15824 (++!18413 testedP!447 lt!2711604)))))))

(declare-fun d!2384272 () Bool)

(declare-fun e!4707503 () Bool)

(assert (=> d!2384272 e!4707503))

(declare-fun res!3161614 () Bool)

(assert (=> d!2384272 (=> res!3161614 e!4707503)))

(declare-fun lt!2712037 () Bool)

(assert (=> d!2384272 (= res!3161614 (not lt!2712037))))

(declare-fun e!4707502 () Bool)

(assert (=> d!2384272 (= lt!2712037 e!4707502)))

(declare-fun res!3161612 () Bool)

(assert (=> d!2384272 (=> res!3161612 e!4707502)))

(assert (=> d!2384272 (= res!3161612 ((_ is Nil!74656) (tail!15824 testedP!447)))))

(assert (=> d!2384272 (= (isPrefix!6651 (tail!15824 testedP!447) (tail!15824 (++!18413 testedP!447 lt!2711604))) lt!2712037)))

(declare-fun b!7987535 () Bool)

(assert (=> b!7987535 (= e!4707503 (>= (size!43487 (tail!15824 (++!18413 testedP!447 lt!2711604))) (size!43487 (tail!15824 testedP!447))))))

(declare-fun b!7987532 () Bool)

(assert (=> b!7987532 (= e!4707502 e!4707504)))

(declare-fun res!3161615 () Bool)

(assert (=> b!7987532 (=> (not res!3161615) (not e!4707504))))

(assert (=> b!7987532 (= res!3161615 (not ((_ is Nil!74656) (tail!15824 (++!18413 testedP!447 lt!2711604)))))))

(assert (= (and d!2384272 (not res!3161612)) b!7987532))

(assert (= (and b!7987532 res!3161615) b!7987533))

(assert (= (and b!7987533 res!3161613) b!7987534))

(assert (= (and d!2384272 (not res!3161614)) b!7987535))

(assert (=> b!7987533 m!8360404))

(assert (=> b!7987533 m!8360716))

(assert (=> b!7987533 m!8360678))

(declare-fun m!8361526 () Bool)

(assert (=> b!7987533 m!8361526))

(assert (=> b!7987534 m!8360404))

(assert (=> b!7987534 m!8360718))

(assert (=> b!7987534 m!8360678))

(declare-fun m!8361528 () Bool)

(assert (=> b!7987534 m!8361528))

(assert (=> b!7987534 m!8360718))

(assert (=> b!7987534 m!8361528))

(declare-fun m!8361530 () Bool)

(assert (=> b!7987534 m!8361530))

(assert (=> b!7987535 m!8360678))

(declare-fun m!8361532 () Bool)

(assert (=> b!7987535 m!8361532))

(assert (=> b!7987535 m!8360404))

(assert (=> b!7987535 m!8360722))

(assert (=> b!7986432 d!2384272))

(assert (=> b!7986432 d!2383924))

(declare-fun d!2384274 () Bool)

(assert (=> d!2384274 (= (tail!15824 (++!18413 testedP!447 lt!2711604)) (t!390523 (++!18413 testedP!447 lt!2711604)))))

(assert (=> b!7986432 d!2384274))

(assert (=> d!2383912 d!2383788))

(assert (=> d!2383912 d!2383744))

(declare-fun b!7987536 () Bool)

(declare-fun res!3161619 () Bool)

(declare-fun e!4707508 () Bool)

(assert (=> b!7987536 (=> (not res!3161619) (not e!4707508))))

(declare-fun call!741777 () Bool)

(assert (=> b!7987536 (= res!3161619 call!741777)))

(declare-fun e!4707510 () Bool)

(assert (=> b!7987536 (= e!4707510 e!4707508)))

(declare-fun call!741779 () Bool)

(declare-fun bm!741772 () Bool)

(declare-fun c!1466913 () Bool)

(assert (=> bm!741772 (= call!741779 (validRegex!11855 (ite c!1466913 (regTwo!43615 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))) (regTwo!43614 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))))

(declare-fun b!7987537 () Bool)

(declare-fun e!4707511 () Bool)

(declare-fun e!4707505 () Bool)

(assert (=> b!7987537 (= e!4707511 e!4707505)))

(declare-fun res!3161620 () Bool)

(assert (=> b!7987537 (=> (not res!3161620) (not e!4707505))))

(assert (=> b!7987537 (= res!3161620 call!741777)))

(declare-fun bm!741773 () Bool)

(declare-fun call!741778 () Bool)

(assert (=> bm!741773 (= call!741777 call!741778)))

(declare-fun d!2384276 () Bool)

(declare-fun res!3161617 () Bool)

(declare-fun e!4707509 () Bool)

(assert (=> d!2384276 (=> res!3161617 e!4707509)))

(assert (=> d!2384276 (= res!3161617 ((_ is ElementMatch!21551) (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))

(assert (=> d!2384276 (= (validRegex!11855 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))) e!4707509)))

(declare-fun b!7987538 () Bool)

(assert (=> b!7987538 (= e!4707508 call!741779)))

(declare-fun b!7987539 () Bool)

(declare-fun e!4707506 () Bool)

(assert (=> b!7987539 (= e!4707509 e!4707506)))

(declare-fun c!1466914 () Bool)

(assert (=> b!7987539 (= c!1466914 ((_ is Star!21551) (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))

(declare-fun bm!741774 () Bool)

(assert (=> bm!741774 (= call!741778 (validRegex!11855 (ite c!1466914 (reg!21880 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))) (ite c!1466913 (regOne!43615 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))) (regOne!43614 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))))))

(declare-fun b!7987540 () Bool)

(assert (=> b!7987540 (= e!4707506 e!4707510)))

(assert (=> b!7987540 (= c!1466913 ((_ is Union!21551) (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))

(declare-fun b!7987541 () Bool)

(declare-fun e!4707507 () Bool)

(assert (=> b!7987541 (= e!4707506 e!4707507)))

(declare-fun res!3161616 () Bool)

(assert (=> b!7987541 (= res!3161616 (not (nullable!9644 (reg!21880 (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116)))))))))))

(assert (=> b!7987541 (=> (not res!3161616) (not e!4707507))))

(declare-fun b!7987542 () Bool)

(assert (=> b!7987542 (= e!4707505 call!741779)))

(declare-fun b!7987543 () Bool)

(assert (=> b!7987543 (= e!4707507 call!741778)))

(declare-fun b!7987544 () Bool)

(declare-fun res!3161618 () Bool)

(assert (=> b!7987544 (=> res!3161618 e!4707511)))

(assert (=> b!7987544 (= res!3161618 (not ((_ is Concat!30550) (ite c!1466634 (reg!21880 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (ite c!1466633 (regOne!43615 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))) (regOne!43614 (ite c!1466617 (regTwo!43615 baseR!116) (regTwo!43614 baseR!116))))))))))

(assert (=> b!7987544 (= e!4707510 e!4707511)))

(assert (= (and d!2384276 (not res!3161617)) b!7987539))

(assert (= (and b!7987539 c!1466914) b!7987541))

(assert (= (and b!7987539 (not c!1466914)) b!7987540))

(assert (= (and b!7987541 res!3161616) b!7987543))

(assert (= (and b!7987540 c!1466913) b!7987536))

(assert (= (and b!7987540 (not c!1466913)) b!7987544))

(assert (= (and b!7987536 res!3161619) b!7987538))

(assert (= (and b!7987544 (not res!3161618)) b!7987537))

(assert (= (and b!7987537 res!3161620) b!7987542))

(assert (= (or b!7987538 b!7987542) bm!741772))

(assert (= (or b!7987536 b!7987537) bm!741773))

(assert (= (or b!7987543 bm!741773) bm!741774))

(declare-fun m!8361534 () Bool)

(assert (=> bm!741772 m!8361534))

(declare-fun m!8361536 () Bool)

(assert (=> bm!741774 m!8361536))

(declare-fun m!8361538 () Bool)

(assert (=> b!7987541 m!8361538))

(assert (=> bm!741572 d!2384276))

(declare-fun d!2384278 () Bool)

(assert (=> d!2384278 (= lt!2711604 lt!2711820)))

(assert (=> d!2384278 true))

(declare-fun _$63!1438 () Unit!170492)

(assert (=> d!2384278 (= (choose!60180 testedP!447 lt!2711604 testedP!447 lt!2711820 input!7927) _$63!1438)))

(assert (=> d!2383898 d!2384278))

(assert (=> d!2383898 d!2383808))

(declare-fun b!7987546 () Bool)

(declare-fun e!4707513 () List!74780)

(assert (=> b!7987546 (= e!4707513 (Cons!74656 (h!81104 (_1!38683 lt!2711866)) (++!18413 (t!390523 (_1!38683 lt!2711866)) (_2!38683 lt!2711866))))))

(declare-fun b!7987545 () Bool)

(assert (=> b!7987545 (= e!4707513 (_2!38683 lt!2711866))))

(declare-fun d!2384280 () Bool)

(declare-fun e!4707512 () Bool)

(assert (=> d!2384280 e!4707512))

(declare-fun res!3161622 () Bool)

(assert (=> d!2384280 (=> (not res!3161622) (not e!4707512))))

(declare-fun lt!2712038 () List!74780)

(assert (=> d!2384280 (= res!3161622 (= (content!15870 lt!2712038) ((_ map or) (content!15870 (_1!38683 lt!2711866)) (content!15870 (_2!38683 lt!2711866)))))))

(assert (=> d!2384280 (= lt!2712038 e!4707513)))

(declare-fun c!1466915 () Bool)

(assert (=> d!2384280 (= c!1466915 ((_ is Nil!74656) (_1!38683 lt!2711866)))))

(assert (=> d!2384280 (= (++!18413 (_1!38683 lt!2711866) (_2!38683 lt!2711866)) lt!2712038)))

(declare-fun b!7987547 () Bool)

(declare-fun res!3161621 () Bool)

(assert (=> b!7987547 (=> (not res!3161621) (not e!4707512))))

(assert (=> b!7987547 (= res!3161621 (= (size!43487 lt!2712038) (+ (size!43487 (_1!38683 lt!2711866)) (size!43487 (_2!38683 lt!2711866)))))))

(declare-fun b!7987548 () Bool)

(assert (=> b!7987548 (= e!4707512 (or (not (= (_2!38683 lt!2711866) Nil!74656)) (= lt!2712038 (_1!38683 lt!2711866))))))

(assert (= (and d!2384280 c!1466915) b!7987545))

(assert (= (and d!2384280 (not c!1466915)) b!7987546))

(assert (= (and d!2384280 res!3161622) b!7987547))

(assert (= (and b!7987547 res!3161621) b!7987548))

(declare-fun m!8361540 () Bool)

(assert (=> b!7987546 m!8361540))

(declare-fun m!8361542 () Bool)

(assert (=> d!2384280 m!8361542))

(declare-fun m!8361544 () Bool)

(assert (=> d!2384280 m!8361544))

(declare-fun m!8361546 () Bool)

(assert (=> d!2384280 m!8361546))

(declare-fun m!8361548 () Bool)

(assert (=> b!7987547 m!8361548))

(assert (=> b!7987547 m!8360448))

(declare-fun m!8361550 () Bool)

(assert (=> b!7987547 m!8361550))

(assert (=> d!2383816 d!2384280))

(declare-fun d!2384282 () Bool)

(assert (=> d!2384282 (= (lostCause!2004 call!741546) (lostCauseFct!583 call!741546))))

(declare-fun bs!1970350 () Bool)

(assert (= bs!1970350 d!2384282))

(declare-fun m!8361552 () Bool)

(assert (=> bs!1970350 m!8361552))

(assert (=> d!2383816 d!2384282))

(declare-fun d!2384284 () Bool)

(assert (=> d!2384284 (isPrefix!6651 lt!2711812 (++!18413 lt!2711812 call!741553))))

(declare-fun lt!2712039 () Unit!170492)

(assert (=> d!2384284 (= lt!2712039 (choose!60181 lt!2711812 call!741553))))

(assert (=> d!2384284 (= (lemmaConcatTwoListThenFirstIsPrefix!3882 lt!2711812 call!741553) lt!2712039)))

(declare-fun bs!1970351 () Bool)

(assert (= bs!1970351 d!2384284))

(assert (=> bs!1970351 m!8360436))

(assert (=> bs!1970351 m!8360436))

(assert (=> bs!1970351 m!8360438))

(declare-fun m!8361554 () Bool)

(assert (=> bs!1970351 m!8361554))

(assert (=> d!2383816 d!2384284))

(declare-fun b!7987550 () Bool)

(declare-fun e!4707515 () List!74780)

(assert (=> b!7987550 (= e!4707515 (Cons!74656 (h!81104 lt!2711812) (++!18413 (t!390523 lt!2711812) call!741553)))))

(declare-fun b!7987549 () Bool)

(assert (=> b!7987549 (= e!4707515 call!741553)))

(declare-fun d!2384286 () Bool)

(declare-fun e!4707514 () Bool)

(assert (=> d!2384286 e!4707514))

(declare-fun res!3161624 () Bool)

(assert (=> d!2384286 (=> (not res!3161624) (not e!4707514))))

(declare-fun lt!2712040 () List!74780)

(assert (=> d!2384286 (= res!3161624 (= (content!15870 lt!2712040) ((_ map or) (content!15870 lt!2711812) (content!15870 call!741553))))))

(assert (=> d!2384286 (= lt!2712040 e!4707515)))

(declare-fun c!1466916 () Bool)

(assert (=> d!2384286 (= c!1466916 ((_ is Nil!74656) lt!2711812))))

(assert (=> d!2384286 (= (++!18413 lt!2711812 call!741553) lt!2712040)))

(declare-fun b!7987551 () Bool)

(declare-fun res!3161623 () Bool)

(assert (=> b!7987551 (=> (not res!3161623) (not e!4707514))))

(assert (=> b!7987551 (= res!3161623 (= (size!43487 lt!2712040) (+ (size!43487 lt!2711812) (size!43487 call!741553))))))

(declare-fun b!7987552 () Bool)

(assert (=> b!7987552 (= e!4707514 (or (not (= call!741553 Nil!74656)) (= lt!2712040 lt!2711812)))))

(assert (= (and d!2384286 c!1466916) b!7987549))

(assert (= (and d!2384286 (not c!1466916)) b!7987550))

(assert (= (and d!2384286 res!3161624) b!7987551))

(assert (= (and b!7987551 res!3161623) b!7987552))

(declare-fun m!8361556 () Bool)

(assert (=> b!7987550 m!8361556))

(declare-fun m!8361558 () Bool)

(assert (=> d!2384286 m!8361558))

(declare-fun m!8361560 () Bool)

(assert (=> d!2384286 m!8361560))

(declare-fun m!8361562 () Bool)

(assert (=> d!2384286 m!8361562))

(declare-fun m!8361564 () Bool)

(assert (=> b!7987551 m!8361564))

(assert (=> b!7987551 m!8360450))

(declare-fun m!8361566 () Bool)

(assert (=> b!7987551 m!8361566))

(assert (=> d!2383816 d!2384286))

(declare-fun b!7987553 () Bool)

(declare-fun res!3161628 () Bool)

(declare-fun e!4707519 () Bool)

(assert (=> b!7987553 (=> (not res!3161628) (not e!4707519))))

(declare-fun call!741780 () Bool)

(assert (=> b!7987553 (= res!3161628 call!741780)))

(declare-fun e!4707521 () Bool)

(assert (=> b!7987553 (= e!4707521 e!4707519)))

(declare-fun bm!741775 () Bool)

(declare-fun call!741782 () Bool)

(declare-fun c!1466917 () Bool)

(assert (=> bm!741775 (= call!741782 (validRegex!11855 (ite c!1466917 (regTwo!43615 call!741546) (regTwo!43614 call!741546))))))

(declare-fun b!7987554 () Bool)

(declare-fun e!4707522 () Bool)

(declare-fun e!4707516 () Bool)

(assert (=> b!7987554 (= e!4707522 e!4707516)))

(declare-fun res!3161629 () Bool)

(assert (=> b!7987554 (=> (not res!3161629) (not e!4707516))))

(assert (=> b!7987554 (= res!3161629 call!741780)))

(declare-fun bm!741776 () Bool)

(declare-fun call!741781 () Bool)

(assert (=> bm!741776 (= call!741780 call!741781)))

(declare-fun d!2384288 () Bool)

(declare-fun res!3161626 () Bool)

(declare-fun e!4707520 () Bool)

(assert (=> d!2384288 (=> res!3161626 e!4707520)))

(assert (=> d!2384288 (= res!3161626 ((_ is ElementMatch!21551) call!741546))))

(assert (=> d!2384288 (= (validRegex!11855 call!741546) e!4707520)))

(declare-fun b!7987555 () Bool)

(assert (=> b!7987555 (= e!4707519 call!741782)))

(declare-fun b!7987556 () Bool)

(declare-fun e!4707517 () Bool)

(assert (=> b!7987556 (= e!4707520 e!4707517)))

(declare-fun c!1466918 () Bool)

(assert (=> b!7987556 (= c!1466918 ((_ is Star!21551) call!741546))))

(declare-fun bm!741777 () Bool)

(assert (=> bm!741777 (= call!741781 (validRegex!11855 (ite c!1466918 (reg!21880 call!741546) (ite c!1466917 (regOne!43615 call!741546) (regOne!43614 call!741546)))))))

(declare-fun b!7987557 () Bool)

(assert (=> b!7987557 (= e!4707517 e!4707521)))

(assert (=> b!7987557 (= c!1466917 ((_ is Union!21551) call!741546))))

(declare-fun b!7987558 () Bool)

(declare-fun e!4707518 () Bool)

(assert (=> b!7987558 (= e!4707517 e!4707518)))

(declare-fun res!3161625 () Bool)

(assert (=> b!7987558 (= res!3161625 (not (nullable!9644 (reg!21880 call!741546))))))

(assert (=> b!7987558 (=> (not res!3161625) (not e!4707518))))

(declare-fun b!7987559 () Bool)

(assert (=> b!7987559 (= e!4707516 call!741782)))

(declare-fun b!7987560 () Bool)

(assert (=> b!7987560 (= e!4707518 call!741781)))

(declare-fun b!7987561 () Bool)

(declare-fun res!3161627 () Bool)

(assert (=> b!7987561 (=> res!3161627 e!4707522)))

(assert (=> b!7987561 (= res!3161627 (not ((_ is Concat!30550) call!741546)))))

(assert (=> b!7987561 (= e!4707521 e!4707522)))

(assert (= (and d!2384288 (not res!3161626)) b!7987556))

(assert (= (and b!7987556 c!1466918) b!7987558))

(assert (= (and b!7987556 (not c!1466918)) b!7987557))

(assert (= (and b!7987558 res!3161625) b!7987560))

(assert (= (and b!7987557 c!1466917) b!7987553))

(assert (= (and b!7987557 (not c!1466917)) b!7987561))

(assert (= (and b!7987553 res!3161628) b!7987555))

(assert (= (and b!7987561 (not res!3161627)) b!7987554))

(assert (= (and b!7987554 res!3161629) b!7987559))

(assert (= (or b!7987555 b!7987559) bm!741775))

(assert (= (or b!7987553 b!7987554) bm!741776))

(assert (= (or b!7987560 bm!741776) bm!741777))

(declare-fun m!8361568 () Bool)

(assert (=> bm!741775 m!8361568))

(declare-fun m!8361570 () Bool)

(assert (=> bm!741777 m!8361570))

(declare-fun m!8361572 () Bool)

(assert (=> b!7987558 m!8361572))

(assert (=> d!2383816 d!2384288))

(declare-fun d!2384290 () Bool)

(declare-fun lt!2712041 () List!74780)

(assert (=> d!2384290 (= (++!18413 lt!2711812 lt!2712041) input!7927)))

(declare-fun e!4707523 () List!74780)

(assert (=> d!2384290 (= lt!2712041 e!4707523)))

(declare-fun c!1466919 () Bool)

(assert (=> d!2384290 (= c!1466919 ((_ is Cons!74656) lt!2711812))))

(assert (=> d!2384290 (>= (size!43487 input!7927) (size!43487 lt!2711812))))

(assert (=> d!2384290 (= (getSuffix!3852 input!7927 lt!2711812) lt!2712041)))

(declare-fun b!7987562 () Bool)

(assert (=> b!7987562 (= e!4707523 (getSuffix!3852 (tail!15824 input!7927) (t!390523 lt!2711812)))))

(declare-fun b!7987563 () Bool)

(assert (=> b!7987563 (= e!4707523 input!7927)))

(assert (= (and d!2384290 c!1466919) b!7987562))

(assert (= (and d!2384290 (not c!1466919)) b!7987563))

(declare-fun m!8361574 () Bool)

(assert (=> d!2384290 m!8361574))

(assert (=> d!2384290 m!8360144))

(assert (=> d!2384290 m!8360450))

(assert (=> b!7987562 m!8360222))

(assert (=> b!7987562 m!8360222))

(declare-fun m!8361576 () Bool)

(assert (=> b!7987562 m!8361576))

(assert (=> d!2383816 d!2384290))

(declare-fun d!2384292 () Bool)

(assert (=> d!2384292 (= call!741553 lt!2711871)))

(declare-fun lt!2712042 () Unit!170492)

(assert (=> d!2384292 (= lt!2712042 (choose!60180 lt!2711812 call!741553 lt!2711812 lt!2711871 input!7927))))

(assert (=> d!2384292 (isPrefix!6651 lt!2711812 input!7927)))

(assert (=> d!2384292 (= (lemmaSamePrefixThenSameSuffix!3020 lt!2711812 call!741553 lt!2711812 lt!2711871 input!7927) lt!2712042)))

(declare-fun bs!1970352 () Bool)

(assert (= bs!1970352 d!2384292))

(declare-fun m!8361578 () Bool)

(assert (=> bs!1970352 m!8361578))

(declare-fun m!8361580 () Bool)

(assert (=> bs!1970352 m!8361580))

(assert (=> d!2383816 d!2384292))

(declare-fun b!7987565 () Bool)

(declare-fun res!3161631 () Bool)

(declare-fun e!4707526 () Bool)

(assert (=> b!7987565 (=> (not res!3161631) (not e!4707526))))

(assert (=> b!7987565 (= res!3161631 (= (head!16297 lt!2711812) (head!16297 (++!18413 lt!2711812 call!741553))))))

(declare-fun b!7987566 () Bool)

(assert (=> b!7987566 (= e!4707526 (isPrefix!6651 (tail!15824 lt!2711812) (tail!15824 (++!18413 lt!2711812 call!741553))))))

(declare-fun d!2384294 () Bool)

(declare-fun e!4707525 () Bool)

(assert (=> d!2384294 e!4707525))

(declare-fun res!3161632 () Bool)

(assert (=> d!2384294 (=> res!3161632 e!4707525)))

(declare-fun lt!2712043 () Bool)

(assert (=> d!2384294 (= res!3161632 (not lt!2712043))))

(declare-fun e!4707524 () Bool)

(assert (=> d!2384294 (= lt!2712043 e!4707524)))

(declare-fun res!3161630 () Bool)

(assert (=> d!2384294 (=> res!3161630 e!4707524)))

(assert (=> d!2384294 (= res!3161630 ((_ is Nil!74656) lt!2711812))))

(assert (=> d!2384294 (= (isPrefix!6651 lt!2711812 (++!18413 lt!2711812 call!741553)) lt!2712043)))

(declare-fun b!7987567 () Bool)

(assert (=> b!7987567 (= e!4707525 (>= (size!43487 (++!18413 lt!2711812 call!741553)) (size!43487 lt!2711812)))))

(declare-fun b!7987564 () Bool)

(assert (=> b!7987564 (= e!4707524 e!4707526)))

(declare-fun res!3161633 () Bool)

(assert (=> b!7987564 (=> (not res!3161633) (not e!4707526))))

(assert (=> b!7987564 (= res!3161633 (not ((_ is Nil!74656) (++!18413 lt!2711812 call!741553))))))

(assert (= (and d!2384294 (not res!3161630)) b!7987564))

(assert (= (and b!7987564 res!3161633) b!7987565))

(assert (= (and b!7987565 res!3161631) b!7987566))

(assert (= (and d!2384294 (not res!3161632)) b!7987567))

(declare-fun m!8361582 () Bool)

(assert (=> b!7987565 m!8361582))

(assert (=> b!7987565 m!8360436))

(declare-fun m!8361584 () Bool)

(assert (=> b!7987565 m!8361584))

(declare-fun m!8361586 () Bool)

(assert (=> b!7987566 m!8361586))

(assert (=> b!7987566 m!8360436))

(declare-fun m!8361588 () Bool)

(assert (=> b!7987566 m!8361588))

(assert (=> b!7987566 m!8361586))

(assert (=> b!7987566 m!8361588))

(declare-fun m!8361590 () Bool)

(assert (=> b!7987566 m!8361590))

(assert (=> b!7987567 m!8360436))

(declare-fun m!8361592 () Bool)

(assert (=> b!7987567 m!8361592))

(assert (=> b!7987567 m!8360450))

(assert (=> d!2383816 d!2384294))

(declare-fun b!7987568 () Bool)

(declare-fun res!3161637 () Bool)

(declare-fun e!4707530 () Bool)

(assert (=> b!7987568 (=> (not res!3161637) (not e!4707530))))

(declare-fun call!741783 () Bool)

(assert (=> b!7987568 (= res!3161637 call!741783)))

(declare-fun e!4707532 () Bool)

(assert (=> b!7987568 (= e!4707532 e!4707530)))

(declare-fun call!741785 () Bool)

(declare-fun c!1466920 () Bool)

(declare-fun bm!741778 () Bool)

(assert (=> bm!741778 (= call!741785 (validRegex!11855 (ite c!1466920 (regTwo!43615 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))) (regTwo!43614 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))))

(declare-fun b!7987569 () Bool)

(declare-fun e!4707533 () Bool)

(declare-fun e!4707527 () Bool)

(assert (=> b!7987569 (= e!4707533 e!4707527)))

(declare-fun res!3161638 () Bool)

(assert (=> b!7987569 (=> (not res!3161638) (not e!4707527))))

(assert (=> b!7987569 (= res!3161638 call!741783)))

(declare-fun bm!741779 () Bool)

(declare-fun call!741784 () Bool)

(assert (=> bm!741779 (= call!741783 call!741784)))

(declare-fun d!2384296 () Bool)

(declare-fun res!3161635 () Bool)

(declare-fun e!4707531 () Bool)

(assert (=> d!2384296 (=> res!3161635 e!4707531)))

(assert (=> d!2384296 (= res!3161635 ((_ is ElementMatch!21551) (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))

(assert (=> d!2384296 (= (validRegex!11855 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))) e!4707531)))

(declare-fun b!7987570 () Bool)

(assert (=> b!7987570 (= e!4707530 call!741785)))

(declare-fun b!7987571 () Bool)

(declare-fun e!4707528 () Bool)

(assert (=> b!7987571 (= e!4707531 e!4707528)))

(declare-fun c!1466921 () Bool)

(assert (=> b!7987571 (= c!1466921 ((_ is Star!21551) (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))

(declare-fun bm!741780 () Bool)

(assert (=> bm!741780 (= call!741784 (validRegex!11855 (ite c!1466921 (reg!21880 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))) (ite c!1466920 (regOne!43615 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))) (regOne!43614 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))))))

(declare-fun b!7987572 () Bool)

(assert (=> b!7987572 (= e!4707528 e!4707532)))

(assert (=> b!7987572 (= c!1466920 ((_ is Union!21551) (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))

(declare-fun b!7987573 () Bool)

(declare-fun e!4707529 () Bool)

(assert (=> b!7987573 (= e!4707528 e!4707529)))

(declare-fun res!3161634 () Bool)

(assert (=> b!7987573 (= res!3161634 (not (nullable!9644 (reg!21880 (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116))))))))))))

(assert (=> b!7987573 (=> (not res!3161634) (not e!4707529))))

(declare-fun b!7987574 () Bool)

(assert (=> b!7987574 (= e!4707527 call!741785)))

(declare-fun b!7987575 () Bool)

(assert (=> b!7987575 (= e!4707529 call!741784)))

(declare-fun b!7987576 () Bool)

(declare-fun res!3161636 () Bool)

(assert (=> b!7987576 (=> res!3161636 e!4707533)))

(assert (=> b!7987576 (= res!3161636 (not ((_ is Concat!30550) (ite c!1466641 (reg!21880 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (ite c!1466640 (regOne!43615 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))) (regOne!43614 (ite c!1466618 (reg!21880 baseR!116) (ite c!1466617 (regOne!43615 baseR!116) (regOne!43614 baseR!116)))))))))))

(assert (=> b!7987576 (= e!4707532 e!4707533)))

(assert (= (and d!2384296 (not res!3161635)) b!7987571))

(assert (= (and b!7987571 c!1466921) b!7987573))

(assert (= (and b!7987571 (not c!1466921)) b!7987572))

(assert (= (and b!7987573 res!3161634) b!7987575))

(assert (= (and b!7987572 c!1466920) b!7987568))

(assert (= (and b!7987572 (not c!1466920)) b!7987576))

(assert (= (and b!7987568 res!3161637) b!7987570))

(assert (= (and b!7987576 (not res!3161636)) b!7987569))

(assert (= (and b!7987569 res!3161638) b!7987574))

(assert (= (or b!7987570 b!7987574) bm!741778))

(assert (= (or b!7987568 b!7987569) bm!741779))

(assert (= (or b!7987575 bm!741779) bm!741780))

(declare-fun m!8361594 () Bool)

(assert (=> bm!741778 m!8361594))

(declare-fun m!8361596 () Bool)

(assert (=> bm!741780 m!8361596))

(declare-fun m!8361598 () Bool)

(assert (=> b!7987573 m!8361598))

(assert (=> bm!741581 d!2384296))

(declare-fun d!2384298 () Bool)

(assert (=> d!2384298 (= (head!16297 (tail!15824 testedP!447)) (h!81104 (tail!15824 testedP!447)))))

(assert (=> b!7986453 d!2384298))

(assert (=> b!7986453 d!2384078))

(declare-fun b!7987577 () Bool)

(declare-fun res!3161642 () Bool)

(declare-fun e!4707537 () Bool)

(assert (=> b!7987577 (=> (not res!3161642) (not e!4707537))))

(declare-fun call!741786 () Bool)

(assert (=> b!7987577 (= res!3161642 call!741786)))

(declare-fun e!4707539 () Bool)

(assert (=> b!7987577 (= e!4707539 e!4707537)))

(declare-fun call!741788 () Bool)

(declare-fun bm!741781 () Bool)

(declare-fun c!1466922 () Bool)

(assert (=> bm!741781 (= call!741788 (validRegex!11855 (ite c!1466922 (regTwo!43615 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))) (regTwo!43614 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))))))))

(declare-fun b!7987578 () Bool)

(declare-fun e!4707540 () Bool)

(declare-fun e!4707534 () Bool)

(assert (=> b!7987578 (= e!4707540 e!4707534)))

(declare-fun res!3161643 () Bool)

(assert (=> b!7987578 (=> (not res!3161643) (not e!4707534))))

(assert (=> b!7987578 (= res!3161643 call!741786)))

(declare-fun bm!741782 () Bool)

(declare-fun call!741787 () Bool)

(assert (=> bm!741782 (= call!741786 call!741787)))

(declare-fun d!2384300 () Bool)

(declare-fun res!3161640 () Bool)

(declare-fun e!4707538 () Bool)

(assert (=> d!2384300 (=> res!3161640 e!4707538)))

(assert (=> d!2384300 (= res!3161640 ((_ is ElementMatch!21551) (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))))))

(assert (=> d!2384300 (= (validRegex!11855 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))) e!4707538)))

(declare-fun b!7987579 () Bool)

(assert (=> b!7987579 (= e!4707537 call!741788)))

(declare-fun b!7987580 () Bool)

(declare-fun e!4707535 () Bool)

(assert (=> b!7987580 (= e!4707538 e!4707535)))

(declare-fun c!1466923 () Bool)

(assert (=> b!7987580 (= c!1466923 ((_ is Star!21551) (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))))))

(declare-fun bm!741783 () Bool)

(assert (=> bm!741783 (= call!741787 (validRegex!11855 (ite c!1466923 (reg!21880 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))) (ite c!1466922 (regOne!43615 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))) (regOne!43614 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623)))))))))

(declare-fun b!7987581 () Bool)

(assert (=> b!7987581 (= e!4707535 e!4707539)))

(assert (=> b!7987581 (= c!1466922 ((_ is Union!21551) (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))))))

(declare-fun b!7987582 () Bool)

(declare-fun e!4707536 () Bool)

(assert (=> b!7987582 (= e!4707535 e!4707536)))

(declare-fun res!3161639 () Bool)

(assert (=> b!7987582 (= res!3161639 (not (nullable!9644 (reg!21880 (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623))))))))

(assert (=> b!7987582 (=> (not res!3161639) (not e!4707536))))

(declare-fun b!7987583 () Bool)

(assert (=> b!7987583 (= e!4707534 call!741788)))

(declare-fun b!7987584 () Bool)

(assert (=> b!7987584 (= e!4707536 call!741787)))

(declare-fun b!7987585 () Bool)

(declare-fun res!3161641 () Bool)

(assert (=> b!7987585 (=> res!3161641 e!4707540)))

(assert (=> b!7987585 (= res!3161641 (not ((_ is Concat!30550) (ite c!1466638 (regTwo!43615 lt!2711623) (regTwo!43614 lt!2711623)))))))

(assert (=> b!7987585 (= e!4707539 e!4707540)))

(assert (= (and d!2384300 (not res!3161640)) b!7987580))

(assert (= (and b!7987580 c!1466923) b!7987582))

(assert (= (and b!7987580 (not c!1466923)) b!7987581))

(assert (= (and b!7987582 res!3161639) b!7987584))

(assert (= (and b!7987581 c!1466922) b!7987577))

(assert (= (and b!7987581 (not c!1466922)) b!7987585))

(assert (= (and b!7987577 res!3161642) b!7987579))

(assert (= (and b!7987585 (not res!3161641)) b!7987578))

(assert (= (and b!7987578 res!3161643) b!7987583))

(assert (= (or b!7987579 b!7987583) bm!741781))

(assert (= (or b!7987577 b!7987578) bm!741782))

(assert (= (or b!7987584 bm!741782) bm!741783))

(declare-fun m!8361600 () Bool)

(assert (=> bm!741781 m!8361600))

(declare-fun m!8361602 () Bool)

(assert (=> bm!741783 m!8361602))

(declare-fun m!8361604 () Bool)

(assert (=> b!7987582 m!8361604))

(assert (=> bm!741576 d!2384300))

(declare-fun d!2384302 () Bool)

(declare-fun c!1466924 () Bool)

(assert (=> d!2384302 (= c!1466924 ((_ is Nil!74656) lt!2711890))))

(declare-fun e!4707541 () (InoxSet C!43440))

(assert (=> d!2384302 (= (content!15870 lt!2711890) e!4707541)))

(declare-fun b!7987586 () Bool)

(assert (=> b!7987586 (= e!4707541 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987587 () Bool)

(assert (=> b!7987587 (= e!4707541 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 lt!2711890) true) (content!15870 (t!390523 lt!2711890))))))

(assert (= (and d!2384302 c!1466924) b!7987586))

(assert (= (and d!2384302 (not c!1466924)) b!7987587))

(declare-fun m!8361606 () Bool)

(assert (=> b!7987587 m!8361606))

(declare-fun m!8361608 () Bool)

(assert (=> b!7987587 m!8361608))

(assert (=> d!2383856 d!2384302))

(assert (=> d!2383856 d!2383928))

(declare-fun d!2384304 () Bool)

(declare-fun c!1466925 () Bool)

(assert (=> d!2384304 (= c!1466925 ((_ is Nil!74656) (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))

(declare-fun e!4707542 () (InoxSet C!43440))

(assert (=> d!2384304 (= (content!15870 (Cons!74656 (head!16297 lt!2711604) Nil!74656)) e!4707542)))

(declare-fun b!7987588 () Bool)

(assert (=> b!7987588 (= e!4707542 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987589 () Bool)

(assert (=> b!7987589 (= e!4707542 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (Cons!74656 (head!16297 lt!2711604) Nil!74656)) true) (content!15870 (t!390523 (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))))

(assert (= (and d!2384304 c!1466925) b!7987588))

(assert (= (and d!2384304 (not c!1466925)) b!7987589))

(declare-fun m!8361610 () Bool)

(assert (=> b!7987589 m!8361610))

(declare-fun m!8361612 () Bool)

(assert (=> b!7987589 m!8361612))

(assert (=> d!2383856 d!2384304))

(declare-fun bm!741784 () Bool)

(declare-fun call!741793 () C!43440)

(assert (=> bm!741784 (= call!741793 (head!16297 call!741574))))

(declare-fun bm!741785 () Bool)

(declare-fun call!741790 () Bool)

(assert (=> bm!741785 (= call!741790 (isPrefix!6651 input!7927 input!7927))))

(declare-fun b!7987590 () Bool)

(declare-fun e!4707550 () tuple2!70760)

(declare-fun call!741792 () tuple2!70760)

(assert (=> b!7987590 (= e!4707550 call!741792)))

(declare-fun b!7987591 () Bool)

(declare-fun e!4707543 () Bool)

(declare-fun e!4707545 () Bool)

(assert (=> b!7987591 (= e!4707543 e!4707545)))

(declare-fun res!3161644 () Bool)

(assert (=> b!7987591 (=> res!3161644 e!4707545)))

(declare-fun lt!2712056 () tuple2!70760)

(assert (=> b!7987591 (= res!3161644 (isEmpty!42959 (_1!38683 lt!2712056)))))

(declare-fun d!2384306 () Bool)

(assert (=> d!2384306 e!4707543))

(declare-fun res!3161645 () Bool)

(assert (=> d!2384306 (=> (not res!3161645) (not e!4707543))))

(assert (=> d!2384306 (= res!3161645 (= (++!18413 (_1!38683 lt!2712056) (_2!38683 lt!2712056)) input!7927))))

(declare-fun e!4707549 () tuple2!70760)

(assert (=> d!2384306 (= lt!2712056 e!4707549)))

(declare-fun c!1466926 () Bool)

(assert (=> d!2384306 (= c!1466926 (lostCause!2004 call!741567))))

(declare-fun lt!2712068 () Unit!170492)

(declare-fun Unit!170508 () Unit!170492)

(assert (=> d!2384306 (= lt!2712068 Unit!170508)))

(assert (=> d!2384306 (= (getSuffix!3852 input!7927 lt!2711863) call!741574)))

(declare-fun lt!2712052 () Unit!170492)

(declare-fun lt!2712048 () Unit!170492)

(assert (=> d!2384306 (= lt!2712052 lt!2712048)))

(declare-fun lt!2712061 () List!74780)

(assert (=> d!2384306 (= call!741574 lt!2712061)))

(assert (=> d!2384306 (= lt!2712048 (lemmaSamePrefixThenSameSuffix!3020 lt!2711863 call!741574 lt!2711863 lt!2712061 input!7927))))

(assert (=> d!2384306 (= lt!2712061 (getSuffix!3852 input!7927 lt!2711863))))

(declare-fun lt!2712051 () Unit!170492)

(declare-fun lt!2712055 () Unit!170492)

(assert (=> d!2384306 (= lt!2712051 lt!2712055)))

(assert (=> d!2384306 (isPrefix!6651 lt!2711863 (++!18413 lt!2711863 call!741574))))

(assert (=> d!2384306 (= lt!2712055 (lemmaConcatTwoListThenFirstIsPrefix!3882 lt!2711863 call!741574))))

(assert (=> d!2384306 (validRegex!11855 call!741567)))

(assert (=> d!2384306 (= (findLongestMatchInner!2330 call!741567 lt!2711863 (+ lt!2711600 1 1) call!741574 input!7927 lt!2711607) lt!2712056)))

(declare-fun b!7987592 () Bool)

(assert (=> b!7987592 (= e!4707549 (tuple2!70761 Nil!74656 input!7927))))

(declare-fun b!7987593 () Bool)

(declare-fun c!1466928 () Bool)

(declare-fun call!741795 () Bool)

(assert (=> b!7987593 (= c!1466928 call!741795)))

(declare-fun lt!2712066 () Unit!170492)

(declare-fun lt!2712064 () Unit!170492)

(assert (=> b!7987593 (= lt!2712066 lt!2712064)))

(assert (=> b!7987593 (= input!7927 lt!2711863)))

(declare-fun call!741791 () Unit!170492)

(assert (=> b!7987593 (= lt!2712064 call!741791)))

(declare-fun lt!2712070 () Unit!170492)

(declare-fun lt!2712057 () Unit!170492)

(assert (=> b!7987593 (= lt!2712070 lt!2712057)))

(assert (=> b!7987593 call!741790))

(declare-fun call!741794 () Unit!170492)

(assert (=> b!7987593 (= lt!2712057 call!741794)))

(declare-fun e!4707546 () tuple2!70760)

(declare-fun e!4707544 () tuple2!70760)

(assert (=> b!7987593 (= e!4707546 e!4707544)))

(declare-fun b!7987594 () Bool)

(declare-fun e!4707548 () tuple2!70760)

(assert (=> b!7987594 (= e!4707550 e!4707548)))

(declare-fun lt!2712059 () tuple2!70760)

(assert (=> b!7987594 (= lt!2712059 call!741792)))

(declare-fun c!1466929 () Bool)

(assert (=> b!7987594 (= c!1466929 (isEmpty!42959 (_1!38683 lt!2712059)))))

(declare-fun b!7987595 () Bool)

(declare-fun e!4707547 () Unit!170492)

(declare-fun Unit!170509 () Unit!170492)

(assert (=> b!7987595 (= e!4707547 Unit!170509)))

(declare-fun bm!741786 () Bool)

(assert (=> bm!741786 (= call!741794 (lemmaIsPrefixRefl!4117 input!7927 input!7927))))

(declare-fun b!7987596 () Bool)

(assert (=> b!7987596 (= e!4707548 lt!2712059)))

(declare-fun b!7987597 () Bool)

(declare-fun Unit!170510 () Unit!170492)

(assert (=> b!7987597 (= e!4707547 Unit!170510)))

(declare-fun lt!2712060 () Unit!170492)

(assert (=> b!7987597 (= lt!2712060 call!741794)))

(assert (=> b!7987597 call!741790))

(declare-fun lt!2712067 () Unit!170492)

(assert (=> b!7987597 (= lt!2712067 lt!2712060)))

(declare-fun lt!2712069 () Unit!170492)

(assert (=> b!7987597 (= lt!2712069 call!741791)))

(assert (=> b!7987597 (= input!7927 lt!2711863)))

(declare-fun lt!2712045 () Unit!170492)

(assert (=> b!7987597 (= lt!2712045 lt!2712069)))

(assert (=> b!7987597 false))

(declare-fun b!7987598 () Bool)

(assert (=> b!7987598 (= e!4707548 (tuple2!70761 lt!2711863 call!741574))))

(declare-fun bm!741787 () Bool)

(assert (=> bm!741787 (= call!741795 (nullable!9644 call!741567))))

(declare-fun b!7987599 () Bool)

(assert (=> b!7987599 (= e!4707544 (tuple2!70761 Nil!74656 input!7927))))

(declare-fun bm!741788 () Bool)

(declare-fun call!741789 () Regex!21551)

(declare-fun lt!2712053 () List!74780)

(declare-fun call!741796 () List!74780)

(assert (=> bm!741788 (= call!741792 (findLongestMatchInner!2330 call!741789 lt!2712053 (+ lt!2711600 1 1 1) call!741796 input!7927 lt!2711607))))

(declare-fun bm!741789 () Bool)

(assert (=> bm!741789 (= call!741796 (tail!15824 call!741574))))

(declare-fun b!7987600 () Bool)

(assert (=> b!7987600 (= e!4707545 (>= (size!43487 (_1!38683 lt!2712056)) (size!43487 lt!2711863)))))

(declare-fun bm!741790 () Bool)

(assert (=> bm!741790 (= call!741791 (lemmaIsPrefixSameLengthThenSameList!1695 input!7927 lt!2711863 input!7927))))

(declare-fun b!7987601 () Bool)

(declare-fun c!1466931 () Bool)

(assert (=> b!7987601 (= c!1466931 call!741795)))

(declare-fun lt!2712062 () Unit!170492)

(declare-fun lt!2712058 () Unit!170492)

(assert (=> b!7987601 (= lt!2712062 lt!2712058)))

(declare-fun lt!2712049 () List!74780)

(declare-fun lt!2712071 () C!43440)

(assert (=> b!7987601 (= (++!18413 (++!18413 lt!2711863 (Cons!74656 lt!2712071 Nil!74656)) lt!2712049) input!7927)))

(assert (=> b!7987601 (= lt!2712058 (lemmaMoveElementToOtherListKeepsConcatEq!3560 lt!2711863 lt!2712071 lt!2712049 input!7927))))

(assert (=> b!7987601 (= lt!2712049 (tail!15824 call!741574))))

(assert (=> b!7987601 (= lt!2712071 (head!16297 call!741574))))

(declare-fun lt!2712054 () Unit!170492)

(declare-fun lt!2712044 () Unit!170492)

(assert (=> b!7987601 (= lt!2712054 lt!2712044)))

(assert (=> b!7987601 (isPrefix!6651 (++!18413 lt!2711863 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711863)) Nil!74656)) input!7927)))

(assert (=> b!7987601 (= lt!2712044 (lemmaAddHeadSuffixToPrefixStillPrefix!1370 lt!2711863 input!7927))))

(declare-fun lt!2712063 () Unit!170492)

(declare-fun lt!2712065 () Unit!170492)

(assert (=> b!7987601 (= lt!2712063 lt!2712065)))

(assert (=> b!7987601 (= lt!2712065 (lemmaAddHeadSuffixToPrefixStillPrefix!1370 lt!2711863 input!7927))))

(assert (=> b!7987601 (= lt!2712053 (++!18413 lt!2711863 (Cons!74656 (head!16297 call!741574) Nil!74656)))))

(declare-fun lt!2712047 () Unit!170492)

(assert (=> b!7987601 (= lt!2712047 e!4707547)))

(declare-fun c!1466927 () Bool)

(assert (=> b!7987601 (= c!1466927 (= (size!43487 lt!2711863) (size!43487 input!7927)))))

(declare-fun lt!2712050 () Unit!170492)

(declare-fun lt!2712046 () Unit!170492)

(assert (=> b!7987601 (= lt!2712050 lt!2712046)))

(assert (=> b!7987601 (<= (size!43487 lt!2711863) (size!43487 input!7927))))

(assert (=> b!7987601 (= lt!2712046 (lemmaIsPrefixThenSmallerEqSize!1166 lt!2711863 input!7927))))

(assert (=> b!7987601 (= e!4707546 e!4707550)))

(declare-fun b!7987602 () Bool)

(assert (=> b!7987602 (= e!4707544 (tuple2!70761 lt!2711863 Nil!74656))))

(declare-fun bm!741791 () Bool)

(assert (=> bm!741791 (= call!741789 (derivativeStep!6571 call!741567 call!741793))))

(declare-fun b!7987603 () Bool)

(assert (=> b!7987603 (= e!4707549 e!4707546)))

(declare-fun c!1466930 () Bool)

(assert (=> b!7987603 (= c!1466930 (= (+ lt!2711600 1 1) lt!2711607))))

(assert (= (and d!2384306 c!1466926) b!7987592))

(assert (= (and d!2384306 (not c!1466926)) b!7987603))

(assert (= (and b!7987603 c!1466930) b!7987593))

(assert (= (and b!7987603 (not c!1466930)) b!7987601))

(assert (= (and b!7987593 c!1466928) b!7987602))

(assert (= (and b!7987593 (not c!1466928)) b!7987599))

(assert (= (and b!7987601 c!1466927) b!7987597))

(assert (= (and b!7987601 (not c!1466927)) b!7987595))

(assert (= (and b!7987601 c!1466931) b!7987594))

(assert (= (and b!7987601 (not c!1466931)) b!7987590))

(assert (= (and b!7987594 c!1466929) b!7987598))

(assert (= (and b!7987594 (not c!1466929)) b!7987596))

(assert (= (or b!7987594 b!7987590) bm!741784))

(assert (= (or b!7987594 b!7987590) bm!741789))

(assert (= (or b!7987594 b!7987590) bm!741791))

(assert (= (or b!7987594 b!7987590) bm!741788))

(assert (= (or b!7987593 b!7987601) bm!741787))

(assert (= (or b!7987593 b!7987597) bm!741790))

(assert (= (or b!7987593 b!7987597) bm!741786))

(assert (= (or b!7987593 b!7987597) bm!741785))

(assert (= (and d!2384306 res!3161645) b!7987591))

(assert (= (and b!7987591 (not res!3161644)) b!7987600))

(declare-fun m!8361614 () Bool)

(assert (=> b!7987594 m!8361614))

(assert (=> bm!741785 m!8360168))

(declare-fun m!8361616 () Bool)

(assert (=> d!2384306 m!8361616))

(declare-fun m!8361618 () Bool)

(assert (=> d!2384306 m!8361618))

(declare-fun m!8361620 () Bool)

(assert (=> d!2384306 m!8361620))

(declare-fun m!8361622 () Bool)

(assert (=> d!2384306 m!8361622))

(declare-fun m!8361624 () Bool)

(assert (=> d!2384306 m!8361624))

(declare-fun m!8361626 () Bool)

(assert (=> d!2384306 m!8361626))

(declare-fun m!8361628 () Bool)

(assert (=> d!2384306 m!8361628))

(declare-fun m!8361630 () Bool)

(assert (=> d!2384306 m!8361630))

(assert (=> d!2384306 m!8361620))

(declare-fun m!8361632 () Bool)

(assert (=> b!7987600 m!8361632))

(declare-fun m!8361634 () Bool)

(assert (=> b!7987600 m!8361634))

(declare-fun m!8361636 () Bool)

(assert (=> bm!741790 m!8361636))

(declare-fun m!8361638 () Bool)

(assert (=> bm!741784 m!8361638))

(declare-fun m!8361640 () Bool)

(assert (=> b!7987601 m!8361640))

(declare-fun m!8361642 () Bool)

(assert (=> b!7987601 m!8361642))

(declare-fun m!8361644 () Bool)

(assert (=> b!7987601 m!8361644))

(declare-fun m!8361646 () Bool)

(assert (=> b!7987601 m!8361646))

(assert (=> b!7987601 m!8360144))

(assert (=> b!7987601 m!8361616))

(declare-fun m!8361648 () Bool)

(assert (=> b!7987601 m!8361648))

(assert (=> b!7987601 m!8361640))

(declare-fun m!8361650 () Bool)

(assert (=> b!7987601 m!8361650))

(declare-fun m!8361652 () Bool)

(assert (=> b!7987601 m!8361652))

(assert (=> b!7987601 m!8361638))

(declare-fun m!8361654 () Bool)

(assert (=> b!7987601 m!8361654))

(declare-fun m!8361656 () Bool)

(assert (=> b!7987601 m!8361656))

(assert (=> b!7987601 m!8361616))

(assert (=> b!7987601 m!8361634))

(declare-fun m!8361658 () Bool)

(assert (=> b!7987601 m!8361658))

(assert (=> b!7987601 m!8361642))

(declare-fun m!8361660 () Bool)

(assert (=> bm!741791 m!8361660))

(declare-fun m!8361662 () Bool)

(assert (=> b!7987591 m!8361662))

(assert (=> bm!741786 m!8360166))

(assert (=> bm!741789 m!8361646))

(declare-fun m!8361664 () Bool)

(assert (=> bm!741787 m!8361664))

(declare-fun m!8361666 () Bool)

(assert (=> bm!741788 m!8361666))

(assert (=> bm!741566 d!2384306))

(declare-fun b!7987604 () Bool)

(declare-fun res!3161649 () Bool)

(declare-fun e!4707554 () Bool)

(assert (=> b!7987604 (=> (not res!3161649) (not e!4707554))))

(declare-fun call!741797 () Bool)

(assert (=> b!7987604 (= res!3161649 call!741797)))

(declare-fun e!4707556 () Bool)

(assert (=> b!7987604 (= e!4707556 e!4707554)))

(declare-fun bm!741792 () Bool)

(declare-fun call!741799 () Bool)

(declare-fun c!1466932 () Bool)

(assert (=> bm!741792 (= call!741799 (validRegex!11855 (ite c!1466932 (regTwo!43615 lt!2711902) (regTwo!43614 lt!2711902))))))

(declare-fun b!7987605 () Bool)

(declare-fun e!4707557 () Bool)

(declare-fun e!4707551 () Bool)

(assert (=> b!7987605 (= e!4707557 e!4707551)))

(declare-fun res!3161650 () Bool)

(assert (=> b!7987605 (=> (not res!3161650) (not e!4707551))))

(assert (=> b!7987605 (= res!3161650 call!741797)))

(declare-fun bm!741793 () Bool)

(declare-fun call!741798 () Bool)

(assert (=> bm!741793 (= call!741797 call!741798)))

(declare-fun d!2384308 () Bool)

(declare-fun res!3161647 () Bool)

(declare-fun e!4707555 () Bool)

(assert (=> d!2384308 (=> res!3161647 e!4707555)))

(assert (=> d!2384308 (= res!3161647 ((_ is ElementMatch!21551) lt!2711902))))

(assert (=> d!2384308 (= (validRegex!11855 lt!2711902) e!4707555)))

(declare-fun b!7987606 () Bool)

(assert (=> b!7987606 (= e!4707554 call!741799)))

(declare-fun b!7987607 () Bool)

(declare-fun e!4707552 () Bool)

(assert (=> b!7987607 (= e!4707555 e!4707552)))

(declare-fun c!1466933 () Bool)

(assert (=> b!7987607 (= c!1466933 ((_ is Star!21551) lt!2711902))))

(declare-fun bm!741794 () Bool)

(assert (=> bm!741794 (= call!741798 (validRegex!11855 (ite c!1466933 (reg!21880 lt!2711902) (ite c!1466932 (regOne!43615 lt!2711902) (regOne!43614 lt!2711902)))))))

(declare-fun b!7987608 () Bool)

(assert (=> b!7987608 (= e!4707552 e!4707556)))

(assert (=> b!7987608 (= c!1466932 ((_ is Union!21551) lt!2711902))))

(declare-fun b!7987609 () Bool)

(declare-fun e!4707553 () Bool)

(assert (=> b!7987609 (= e!4707552 e!4707553)))

(declare-fun res!3161646 () Bool)

(assert (=> b!7987609 (= res!3161646 (not (nullable!9644 (reg!21880 lt!2711902))))))

(assert (=> b!7987609 (=> (not res!3161646) (not e!4707553))))

(declare-fun b!7987610 () Bool)

(assert (=> b!7987610 (= e!4707551 call!741799)))

(declare-fun b!7987611 () Bool)

(assert (=> b!7987611 (= e!4707553 call!741798)))

(declare-fun b!7987612 () Bool)

(declare-fun res!3161648 () Bool)

(assert (=> b!7987612 (=> res!3161648 e!4707557)))

(assert (=> b!7987612 (= res!3161648 (not ((_ is Concat!30550) lt!2711902)))))

(assert (=> b!7987612 (= e!4707556 e!4707557)))

(assert (= (and d!2384308 (not res!3161647)) b!7987607))

(assert (= (and b!7987607 c!1466933) b!7987609))

(assert (= (and b!7987607 (not c!1466933)) b!7987608))

(assert (= (and b!7987609 res!3161646) b!7987611))

(assert (= (and b!7987608 c!1466932) b!7987604))

(assert (= (and b!7987608 (not c!1466932)) b!7987612))

(assert (= (and b!7987604 res!3161649) b!7987606))

(assert (= (and b!7987612 (not res!3161648)) b!7987605))

(assert (= (and b!7987605 res!3161650) b!7987610))

(assert (= (or b!7987606 b!7987610) bm!741792))

(assert (= (or b!7987604 b!7987605) bm!741793))

(assert (= (or b!7987611 bm!741793) bm!741794))

(declare-fun m!8361668 () Bool)

(assert (=> bm!741792 m!8361668))

(declare-fun m!8361670 () Bool)

(assert (=> bm!741794 m!8361670))

(declare-fun m!8361672 () Bool)

(assert (=> b!7987609 m!8361672))

(assert (=> d!2383884 d!2384308))

(assert (=> d!2383884 d!2383810))

(declare-fun d!2384310 () Bool)

(assert (=> d!2384310 (= (nullable!9644 (reg!21880 lt!2711619)) (nullableFct!3814 (reg!21880 lt!2711619)))))

(declare-fun bs!1970353 () Bool)

(assert (= bs!1970353 d!2384310))

(declare-fun m!8361674 () Bool)

(assert (=> bs!1970353 m!8361674))

(assert (=> b!7986379 d!2384310))

(assert (=> b!7986268 d!2383744))

(declare-fun b!7987614 () Bool)

(declare-fun res!3161652 () Bool)

(declare-fun e!4707560 () Bool)

(assert (=> b!7987614 (=> (not res!3161652) (not e!4707560))))

(assert (=> b!7987614 (= res!3161652 (= (head!16297 (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656))) (head!16297 input!7927)))))

(declare-fun b!7987615 () Bool)

(assert (=> b!7987615 (= e!4707560 (isPrefix!6651 (tail!15824 (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656))) (tail!15824 input!7927)))))

(declare-fun d!2384312 () Bool)

(declare-fun e!4707559 () Bool)

(assert (=> d!2384312 e!4707559))

(declare-fun res!3161653 () Bool)

(assert (=> d!2384312 (=> res!3161653 e!4707559)))

(declare-fun lt!2712072 () Bool)

(assert (=> d!2384312 (= res!3161653 (not lt!2712072))))

(declare-fun e!4707558 () Bool)

(assert (=> d!2384312 (= lt!2712072 e!4707558)))

(declare-fun res!3161651 () Bool)

(assert (=> d!2384312 (=> res!3161651 e!4707558)))

(assert (=> d!2384312 (= res!3161651 ((_ is Nil!74656) (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656))))))

(assert (=> d!2384312 (= (isPrefix!6651 (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656)) input!7927) lt!2712072)))

(declare-fun b!7987616 () Bool)

(assert (=> b!7987616 (= e!4707559 (>= (size!43487 input!7927) (size!43487 (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656)))))))

(declare-fun b!7987613 () Bool)

(assert (=> b!7987613 (= e!4707558 e!4707560)))

(declare-fun res!3161654 () Bool)

(assert (=> b!7987613 (=> (not res!3161654) (not e!4707560))))

(assert (=> b!7987613 (= res!3161654 (not ((_ is Nil!74656) input!7927)))))

(assert (= (and d!2384312 (not res!3161651)) b!7987613))

(assert (= (and b!7987613 res!3161654) b!7987614))

(assert (= (and b!7987614 res!3161652) b!7987615))

(assert (= (and d!2384312 (not res!3161653)) b!7987616))

(assert (=> b!7987614 m!8360458))

(declare-fun m!8361676 () Bool)

(assert (=> b!7987614 m!8361676))

(assert (=> b!7987614 m!8360390))

(assert (=> b!7987615 m!8360458))

(declare-fun m!8361678 () Bool)

(assert (=> b!7987615 m!8361678))

(assert (=> b!7987615 m!8360222))

(assert (=> b!7987615 m!8361678))

(assert (=> b!7987615 m!8360222))

(declare-fun m!8361680 () Bool)

(assert (=> b!7987615 m!8361680))

(assert (=> b!7987616 m!8360144))

(assert (=> b!7987616 m!8360458))

(declare-fun m!8361682 () Bool)

(assert (=> b!7987616 m!8361682))

(assert (=> b!7986268 d!2384312))

(declare-fun d!2384314 () Bool)

(assert (=> d!2384314 (= (head!16297 (getSuffix!3852 input!7927 lt!2711812)) (h!81104 (getSuffix!3852 input!7927 lt!2711812)))))

(assert (=> b!7986268 d!2384314))

(declare-fun d!2384316 () Bool)

(assert (=> d!2384316 (isPrefix!6651 (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656)) input!7927)))

(declare-fun lt!2712073 () Unit!170492)

(assert (=> d!2384316 (= lt!2712073 (choose!60173 lt!2711812 input!7927))))

(assert (=> d!2384316 (isPrefix!6651 lt!2711812 input!7927)))

(assert (=> d!2384316 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1370 lt!2711812 input!7927) lt!2712073)))

(declare-fun bs!1970354 () Bool)

(assert (= bs!1970354 d!2384316))

(assert (=> bs!1970354 m!8360432))

(assert (=> bs!1970354 m!8360464))

(assert (=> bs!1970354 m!8361580))

(assert (=> bs!1970354 m!8360432))

(assert (=> bs!1970354 m!8360458))

(assert (=> bs!1970354 m!8360460))

(declare-fun m!8361684 () Bool)

(assert (=> bs!1970354 m!8361684))

(assert (=> bs!1970354 m!8360458))

(assert (=> b!7986268 d!2384316))

(declare-fun d!2384318 () Bool)

(assert (=> d!2384318 (<= (size!43487 lt!2711812) (size!43487 input!7927))))

(declare-fun lt!2712074 () Unit!170492)

(assert (=> d!2384318 (= lt!2712074 (choose!60172 lt!2711812 input!7927))))

(assert (=> d!2384318 (isPrefix!6651 lt!2711812 input!7927)))

(assert (=> d!2384318 (= (lemmaIsPrefixThenSmallerEqSize!1166 lt!2711812 input!7927) lt!2712074)))

(declare-fun bs!1970355 () Bool)

(assert (= bs!1970355 d!2384318))

(assert (=> bs!1970355 m!8360450))

(assert (=> bs!1970355 m!8360144))

(declare-fun m!8361686 () Bool)

(assert (=> bs!1970355 m!8361686))

(assert (=> bs!1970355 m!8361580))

(assert (=> b!7986268 d!2384318))

(declare-fun b!7987618 () Bool)

(declare-fun e!4707562 () List!74780)

(assert (=> b!7987618 (= e!4707562 (Cons!74656 (h!81104 lt!2711812) (++!18413 (t!390523 lt!2711812) (Cons!74656 (head!16297 call!741553) Nil!74656))))))

(declare-fun b!7987617 () Bool)

(assert (=> b!7987617 (= e!4707562 (Cons!74656 (head!16297 call!741553) Nil!74656))))

(declare-fun d!2384320 () Bool)

(declare-fun e!4707561 () Bool)

(assert (=> d!2384320 e!4707561))

(declare-fun res!3161656 () Bool)

(assert (=> d!2384320 (=> (not res!3161656) (not e!4707561))))

(declare-fun lt!2712075 () List!74780)

(assert (=> d!2384320 (= res!3161656 (= (content!15870 lt!2712075) ((_ map or) (content!15870 lt!2711812) (content!15870 (Cons!74656 (head!16297 call!741553) Nil!74656)))))))

(assert (=> d!2384320 (= lt!2712075 e!4707562)))

(declare-fun c!1466934 () Bool)

(assert (=> d!2384320 (= c!1466934 ((_ is Nil!74656) lt!2711812))))

(assert (=> d!2384320 (= (++!18413 lt!2711812 (Cons!74656 (head!16297 call!741553) Nil!74656)) lt!2712075)))

(declare-fun b!7987619 () Bool)

(declare-fun res!3161655 () Bool)

(assert (=> b!7987619 (=> (not res!3161655) (not e!4707561))))

(assert (=> b!7987619 (= res!3161655 (= (size!43487 lt!2712075) (+ (size!43487 lt!2711812) (size!43487 (Cons!74656 (head!16297 call!741553) Nil!74656)))))))

(declare-fun b!7987620 () Bool)

(assert (=> b!7987620 (= e!4707561 (or (not (= (Cons!74656 (head!16297 call!741553) Nil!74656) Nil!74656)) (= lt!2712075 lt!2711812)))))

(assert (= (and d!2384320 c!1466934) b!7987617))

(assert (= (and d!2384320 (not c!1466934)) b!7987618))

(assert (= (and d!2384320 res!3161656) b!7987619))

(assert (= (and b!7987619 res!3161655) b!7987620))

(declare-fun m!8361688 () Bool)

(assert (=> b!7987618 m!8361688))

(declare-fun m!8361690 () Bool)

(assert (=> d!2384320 m!8361690))

(assert (=> d!2384320 m!8361560))

(declare-fun m!8361692 () Bool)

(assert (=> d!2384320 m!8361692))

(declare-fun m!8361694 () Bool)

(assert (=> b!7987619 m!8361694))

(assert (=> b!7987619 m!8360450))

(declare-fun m!8361696 () Bool)

(assert (=> b!7987619 m!8361696))

(assert (=> b!7986268 d!2384320))

(declare-fun b!7987622 () Bool)

(declare-fun e!4707564 () List!74780)

(assert (=> b!7987622 (= e!4707564 (Cons!74656 (h!81104 lt!2711812) (++!18413 (t!390523 lt!2711812) (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656))))))

(declare-fun b!7987621 () Bool)

(assert (=> b!7987621 (= e!4707564 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656))))

(declare-fun d!2384322 () Bool)

(declare-fun e!4707563 () Bool)

(assert (=> d!2384322 e!4707563))

(declare-fun res!3161658 () Bool)

(assert (=> d!2384322 (=> (not res!3161658) (not e!4707563))))

(declare-fun lt!2712076 () List!74780)

(assert (=> d!2384322 (= res!3161658 (= (content!15870 lt!2712076) ((_ map or) (content!15870 lt!2711812) (content!15870 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656)))))))

(assert (=> d!2384322 (= lt!2712076 e!4707564)))

(declare-fun c!1466935 () Bool)

(assert (=> d!2384322 (= c!1466935 ((_ is Nil!74656) lt!2711812))))

(assert (=> d!2384322 (= (++!18413 lt!2711812 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656)) lt!2712076)))

(declare-fun b!7987623 () Bool)

(declare-fun res!3161657 () Bool)

(assert (=> b!7987623 (=> (not res!3161657) (not e!4707563))))

(assert (=> b!7987623 (= res!3161657 (= (size!43487 lt!2712076) (+ (size!43487 lt!2711812) (size!43487 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656)))))))

(declare-fun b!7987624 () Bool)

(assert (=> b!7987624 (= e!4707563 (or (not (= (Cons!74656 (head!16297 (getSuffix!3852 input!7927 lt!2711812)) Nil!74656) Nil!74656)) (= lt!2712076 lt!2711812)))))

(assert (= (and d!2384322 c!1466935) b!7987621))

(assert (= (and d!2384322 (not c!1466935)) b!7987622))

(assert (= (and d!2384322 res!3161658) b!7987623))

(assert (= (and b!7987623 res!3161657) b!7987624))

(declare-fun m!8361698 () Bool)

(assert (=> b!7987622 m!8361698))

(declare-fun m!8361700 () Bool)

(assert (=> d!2384322 m!8361700))

(assert (=> d!2384322 m!8361560))

(declare-fun m!8361702 () Bool)

(assert (=> d!2384322 m!8361702))

(declare-fun m!8361704 () Bool)

(assert (=> b!7987623 m!8361704))

(assert (=> b!7987623 m!8360450))

(declare-fun m!8361706 () Bool)

(assert (=> b!7987623 m!8361706))

(assert (=> b!7986268 d!2384322))

(assert (=> b!7986268 d!2384290))

(declare-fun e!4707566 () List!74780)

(declare-fun b!7987626 () Bool)

(assert (=> b!7987626 (= e!4707566 (Cons!74656 (h!81104 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656))) (++!18413 (t!390523 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656))) lt!2711859)))))

(declare-fun b!7987625 () Bool)

(assert (=> b!7987625 (= e!4707566 lt!2711859)))

(declare-fun d!2384324 () Bool)

(declare-fun e!4707565 () Bool)

(assert (=> d!2384324 e!4707565))

(declare-fun res!3161660 () Bool)

(assert (=> d!2384324 (=> (not res!3161660) (not e!4707565))))

(declare-fun lt!2712077 () List!74780)

(assert (=> d!2384324 (= res!3161660 (= (content!15870 lt!2712077) ((_ map or) (content!15870 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656))) (content!15870 lt!2711859))))))

(assert (=> d!2384324 (= lt!2712077 e!4707566)))

(declare-fun c!1466936 () Bool)

(assert (=> d!2384324 (= c!1466936 ((_ is Nil!74656) (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656))))))

(assert (=> d!2384324 (= (++!18413 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656)) lt!2711859) lt!2712077)))

(declare-fun b!7987627 () Bool)

(declare-fun res!3161659 () Bool)

(assert (=> b!7987627 (=> (not res!3161659) (not e!4707565))))

(assert (=> b!7987627 (= res!3161659 (= (size!43487 lt!2712077) (+ (size!43487 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656))) (size!43487 lt!2711859))))))

(declare-fun b!7987628 () Bool)

(assert (=> b!7987628 (= e!4707565 (or (not (= lt!2711859 Nil!74656)) (= lt!2712077 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656)))))))

(assert (= (and d!2384324 c!1466936) b!7987625))

(assert (= (and d!2384324 (not c!1466936)) b!7987626))

(assert (= (and d!2384324 res!3161660) b!7987627))

(assert (= (and b!7987627 res!3161659) b!7987628))

(declare-fun m!8361708 () Bool)

(assert (=> b!7987626 m!8361708))

(declare-fun m!8361710 () Bool)

(assert (=> d!2384324 m!8361710))

(assert (=> d!2384324 m!8360456))

(declare-fun m!8361712 () Bool)

(assert (=> d!2384324 m!8361712))

(declare-fun m!8361714 () Bool)

(assert (=> d!2384324 m!8361714))

(declare-fun m!8361716 () Bool)

(assert (=> b!7987627 m!8361716))

(assert (=> b!7987627 m!8360456))

(declare-fun m!8361718 () Bool)

(assert (=> b!7987627 m!8361718))

(declare-fun m!8361720 () Bool)

(assert (=> b!7987627 m!8361720))

(assert (=> b!7986268 d!2384324))

(assert (=> b!7986268 d!2384166))

(assert (=> b!7986268 d!2384188))

(assert (=> b!7986268 d!2384066))

(declare-fun d!2384326 () Bool)

(assert (=> d!2384326 (= (++!18413 (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656)) lt!2711859) input!7927)))

(declare-fun lt!2712078 () Unit!170492)

(assert (=> d!2384326 (= lt!2712078 (choose!60178 lt!2711812 lt!2711881 lt!2711859 input!7927))))

(assert (=> d!2384326 (= (++!18413 lt!2711812 (Cons!74656 lt!2711881 lt!2711859)) input!7927)))

(assert (=> d!2384326 (= (lemmaMoveElementToOtherListKeepsConcatEq!3560 lt!2711812 lt!2711881 lt!2711859 input!7927) lt!2712078)))

(declare-fun bs!1970356 () Bool)

(assert (= bs!1970356 d!2384326))

(assert (=> bs!1970356 m!8360456))

(assert (=> bs!1970356 m!8360456))

(assert (=> bs!1970356 m!8360466))

(declare-fun m!8361722 () Bool)

(assert (=> bs!1970356 m!8361722))

(declare-fun m!8361724 () Bool)

(assert (=> bs!1970356 m!8361724))

(assert (=> b!7986268 d!2384326))

(declare-fun b!7987630 () Bool)

(declare-fun e!4707568 () List!74780)

(assert (=> b!7987630 (= e!4707568 (Cons!74656 (h!81104 lt!2711812) (++!18413 (t!390523 lt!2711812) (Cons!74656 lt!2711881 Nil!74656))))))

(declare-fun b!7987629 () Bool)

(assert (=> b!7987629 (= e!4707568 (Cons!74656 lt!2711881 Nil!74656))))

(declare-fun d!2384328 () Bool)

(declare-fun e!4707567 () Bool)

(assert (=> d!2384328 e!4707567))

(declare-fun res!3161662 () Bool)

(assert (=> d!2384328 (=> (not res!3161662) (not e!4707567))))

(declare-fun lt!2712079 () List!74780)

(assert (=> d!2384328 (= res!3161662 (= (content!15870 lt!2712079) ((_ map or) (content!15870 lt!2711812) (content!15870 (Cons!74656 lt!2711881 Nil!74656)))))))

(assert (=> d!2384328 (= lt!2712079 e!4707568)))

(declare-fun c!1466937 () Bool)

(assert (=> d!2384328 (= c!1466937 ((_ is Nil!74656) lt!2711812))))

(assert (=> d!2384328 (= (++!18413 lt!2711812 (Cons!74656 lt!2711881 Nil!74656)) lt!2712079)))

(declare-fun b!7987631 () Bool)

(declare-fun res!3161661 () Bool)

(assert (=> b!7987631 (=> (not res!3161661) (not e!4707567))))

(assert (=> b!7987631 (= res!3161661 (= (size!43487 lt!2712079) (+ (size!43487 lt!2711812) (size!43487 (Cons!74656 lt!2711881 Nil!74656)))))))

(declare-fun b!7987632 () Bool)

(assert (=> b!7987632 (= e!4707567 (or (not (= (Cons!74656 lt!2711881 Nil!74656) Nil!74656)) (= lt!2712079 lt!2711812)))))

(assert (= (and d!2384328 c!1466937) b!7987629))

(assert (= (and d!2384328 (not c!1466937)) b!7987630))

(assert (= (and d!2384328 res!3161662) b!7987631))

(assert (= (and b!7987631 res!3161661) b!7987632))

(declare-fun m!8361726 () Bool)

(assert (=> b!7987630 m!8361726))

(declare-fun m!8361728 () Bool)

(assert (=> d!2384328 m!8361728))

(assert (=> d!2384328 m!8361560))

(declare-fun m!8361730 () Bool)

(assert (=> d!2384328 m!8361730))

(declare-fun m!8361732 () Bool)

(assert (=> b!7987631 m!8361732))

(assert (=> b!7987631 m!8360450))

(declare-fun m!8361734 () Bool)

(assert (=> b!7987631 m!8361734))

(assert (=> b!7986268 d!2384328))

(declare-fun d!2384330 () Bool)

(declare-fun lt!2712080 () Int)

(assert (=> d!2384330 (>= lt!2712080 0)))

(declare-fun e!4707569 () Int)

(assert (=> d!2384330 (= lt!2712080 e!4707569)))

(declare-fun c!1466938 () Bool)

(assert (=> d!2384330 (= c!1466938 ((_ is Nil!74656) lt!2711903))))

(assert (=> d!2384330 (= (size!43487 lt!2711903) lt!2712080)))

(declare-fun b!7987633 () Bool)

(assert (=> b!7987633 (= e!4707569 0)))

(declare-fun b!7987634 () Bool)

(assert (=> b!7987634 (= e!4707569 (+ 1 (size!43487 (t!390523 lt!2711903))))))

(assert (= (and d!2384330 c!1466938) b!7987633))

(assert (= (and d!2384330 (not c!1466938)) b!7987634))

(declare-fun m!8361736 () Bool)

(assert (=> b!7987634 m!8361736))

(assert (=> b!7986422 d!2384330))

(assert (=> b!7986422 d!2383894))

(assert (=> b!7986422 d!2383868))

(declare-fun b!7987635 () Bool)

(declare-fun res!3161666 () Bool)

(declare-fun e!4707573 () Bool)

(assert (=> b!7987635 (=> (not res!3161666) (not e!4707573))))

(declare-fun call!741800 () Bool)

(assert (=> b!7987635 (= res!3161666 call!741800)))

(declare-fun e!4707575 () Bool)

(assert (=> b!7987635 (= e!4707575 e!4707573)))

(declare-fun call!741802 () Bool)

(declare-fun bm!741795 () Bool)

(declare-fun c!1466939 () Bool)

(assert (=> bm!741795 (= call!741802 (validRegex!11855 (ite c!1466939 (regTwo!43615 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))) (regTwo!43614 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))))))))

(declare-fun b!7987636 () Bool)

(declare-fun e!4707576 () Bool)

(declare-fun e!4707570 () Bool)

(assert (=> b!7987636 (= e!4707576 e!4707570)))

(declare-fun res!3161667 () Bool)

(assert (=> b!7987636 (=> (not res!3161667) (not e!4707570))))

(assert (=> b!7987636 (= res!3161667 call!741800)))

(declare-fun bm!741796 () Bool)

(declare-fun call!741801 () Bool)

(assert (=> bm!741796 (= call!741800 call!741801)))

(declare-fun d!2384332 () Bool)

(declare-fun res!3161664 () Bool)

(declare-fun e!4707574 () Bool)

(assert (=> d!2384332 (=> res!3161664 e!4707574)))

(assert (=> d!2384332 (= res!3161664 ((_ is ElementMatch!21551) (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))))))

(assert (=> d!2384332 (= (validRegex!11855 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))) e!4707574)))

(declare-fun b!7987637 () Bool)

(assert (=> b!7987637 (= e!4707573 call!741802)))

(declare-fun b!7987638 () Bool)

(declare-fun e!4707571 () Bool)

(assert (=> b!7987638 (= e!4707574 e!4707571)))

(declare-fun c!1466940 () Bool)

(assert (=> b!7987638 (= c!1466940 ((_ is Star!21551) (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))))))

(declare-fun bm!741797 () Bool)

(assert (=> bm!741797 (= call!741801 (validRegex!11855 (ite c!1466940 (reg!21880 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))) (ite c!1466939 (regOne!43615 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))) (regOne!43614 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623))))))))))

(declare-fun b!7987639 () Bool)

(assert (=> b!7987639 (= e!4707571 e!4707575)))

(assert (=> b!7987639 (= c!1466939 ((_ is Union!21551) (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))))))

(declare-fun b!7987640 () Bool)

(declare-fun e!4707572 () Bool)

(assert (=> b!7987640 (= e!4707571 e!4707572)))

(declare-fun res!3161663 () Bool)

(assert (=> b!7987640 (= res!3161663 (not (nullable!9644 (reg!21880 (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623)))))))))

(assert (=> b!7987640 (=> (not res!3161663) (not e!4707572))))

(declare-fun b!7987641 () Bool)

(assert (=> b!7987641 (= e!4707570 call!741802)))

(declare-fun b!7987642 () Bool)

(assert (=> b!7987642 (= e!4707572 call!741801)))

(declare-fun b!7987643 () Bool)

(declare-fun res!3161665 () Bool)

(assert (=> b!7987643 (=> res!3161665 e!4707576)))

(assert (=> b!7987643 (= res!3161665 (not ((_ is Concat!30550) (ite c!1466639 (reg!21880 lt!2711623) (ite c!1466638 (regOne!43615 lt!2711623) (regOne!43614 lt!2711623))))))))

(assert (=> b!7987643 (= e!4707575 e!4707576)))

(assert (= (and d!2384332 (not res!3161664)) b!7987638))

(assert (= (and b!7987638 c!1466940) b!7987640))

(assert (= (and b!7987638 (not c!1466940)) b!7987639))

(assert (= (and b!7987640 res!3161663) b!7987642))

(assert (= (and b!7987639 c!1466939) b!7987635))

(assert (= (and b!7987639 (not c!1466939)) b!7987643))

(assert (= (and b!7987635 res!3161666) b!7987637))

(assert (= (and b!7987643 (not res!3161665)) b!7987636))

(assert (= (and b!7987636 res!3161667) b!7987641))

(assert (= (or b!7987637 b!7987641) bm!741795))

(assert (= (or b!7987635 b!7987636) bm!741796))

(assert (= (or b!7987642 bm!741796) bm!741797))

(declare-fun m!8361738 () Bool)

(assert (=> bm!741795 m!8361738))

(declare-fun m!8361740 () Bool)

(assert (=> bm!741797 m!8361740))

(declare-fun m!8361742 () Bool)

(assert (=> b!7987640 m!8361742))

(assert (=> bm!741578 d!2384332))

(declare-fun d!2384334 () Bool)

(declare-fun c!1466941 () Bool)

(assert (=> d!2384334 (= c!1466941 ((_ is Nil!74656) (t!390523 (Cons!74656 lt!2711601 Nil!74656))))))

(declare-fun e!4707577 () (InoxSet C!43440))

(assert (=> d!2384334 (= (content!15870 (t!390523 (Cons!74656 lt!2711601 Nil!74656))) e!4707577)))

(declare-fun b!7987644 () Bool)

(assert (=> b!7987644 (= e!4707577 ((as const (Array C!43440 Bool)) false))))

(declare-fun b!7987645 () Bool)

(assert (=> b!7987645 (= e!4707577 ((_ map or) (store ((as const (Array C!43440 Bool)) false) (h!81104 (t!390523 (Cons!74656 lt!2711601 Nil!74656))) true) (content!15870 (t!390523 (t!390523 (Cons!74656 lt!2711601 Nil!74656))))))))

(assert (= (and d!2384334 c!1466941) b!7987644))

(assert (= (and d!2384334 (not c!1466941)) b!7987645))

(declare-fun m!8361744 () Bool)

(assert (=> b!7987645 m!8361744))

(declare-fun m!8361746 () Bool)

(assert (=> b!7987645 m!8361746))

(assert (=> b!7986465 d!2384334))

(declare-fun d!2384336 () Bool)

(assert (=> d!2384336 (= (nullable!9644 (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))) (nullableFct!3814 (regOne!43614 (ite c!1466531 (regTwo!43615 r!24602) (ite c!1466533 (reg!21880 r!24602) (ite c!1466535 (regTwo!43614 r!24602) (regOne!43614 r!24602)))))))))

(declare-fun bs!1970357 () Bool)

(assert (= bs!1970357 d!2384336))

(declare-fun m!8361748 () Bool)

(assert (=> bs!1970357 m!8361748))

(assert (=> b!7986365 d!2384336))

(assert (=> b!7986441 d!2384160))

(declare-fun d!2384338 () Bool)

(declare-fun lt!2712081 () Int)

(assert (=> d!2384338 (>= lt!2712081 0)))

(declare-fun e!4707578 () Int)

(assert (=> d!2384338 (= lt!2712081 e!4707578)))

(declare-fun c!1466942 () Bool)

(assert (=> d!2384338 (= c!1466942 ((_ is Nil!74656) (tail!15824 lt!2711603)))))

(assert (=> d!2384338 (= (size!43487 (tail!15824 lt!2711603)) lt!2712081)))

(declare-fun b!7987646 () Bool)

(assert (=> b!7987646 (= e!4707578 0)))

(declare-fun b!7987647 () Bool)

(assert (=> b!7987647 (= e!4707578 (+ 1 (size!43487 (t!390523 (tail!15824 lt!2711603)))))))

(assert (= (and d!2384338 c!1466942) b!7987646))

(assert (= (and d!2384338 (not c!1466942)) b!7987647))

(declare-fun m!8361750 () Bool)

(assert (=> b!7987647 m!8361750))

(assert (=> b!7986441 d!2384338))

(declare-fun b!7987649 () Bool)

(declare-fun e!4707580 () List!74780)

(assert (=> b!7987649 (= e!4707580 (Cons!74656 (h!81104 (t!390523 testedP!447)) (++!18413 (t!390523 (t!390523 testedP!447)) (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))

(declare-fun b!7987648 () Bool)

(assert (=> b!7987648 (= e!4707580 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))

(declare-fun d!2384340 () Bool)

(declare-fun e!4707579 () Bool)

(assert (=> d!2384340 e!4707579))

(declare-fun res!3161669 () Bool)

(assert (=> d!2384340 (=> (not res!3161669) (not e!4707579))))

(declare-fun lt!2712082 () List!74780)

(assert (=> d!2384340 (= res!3161669 (= (content!15870 lt!2712082) ((_ map or) (content!15870 (t!390523 testedP!447)) (content!15870 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(assert (=> d!2384340 (= lt!2712082 e!4707580)))

(declare-fun c!1466943 () Bool)

(assert (=> d!2384340 (= c!1466943 ((_ is Nil!74656) (t!390523 testedP!447)))))

(assert (=> d!2384340 (= (++!18413 (t!390523 testedP!447) (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)) lt!2712082)))

(declare-fun b!7987650 () Bool)

(declare-fun res!3161668 () Bool)

(assert (=> b!7987650 (=> (not res!3161668) (not e!4707579))))

(assert (=> b!7987650 (= res!3161668 (= (size!43487 lt!2712082) (+ (size!43487 (t!390523 testedP!447)) (size!43487 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(declare-fun b!7987651 () Bool)

(assert (=> b!7987651 (= e!4707579 (or (not (= (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656) Nil!74656)) (= lt!2712082 (t!390523 testedP!447))))))

(assert (= (and d!2384340 c!1466943) b!7987648))

(assert (= (and d!2384340 (not c!1466943)) b!7987649))

(assert (= (and d!2384340 res!3161669) b!7987650))

(assert (= (and b!7987650 res!3161668) b!7987651))

(declare-fun m!8361752 () Bool)

(assert (=> b!7987649 m!8361752))

(declare-fun m!8361754 () Bool)

(assert (=> d!2384340 m!8361754))

(assert (=> d!2384340 m!8360654))

(assert (=> d!2384340 m!8360536))

(declare-fun m!8361756 () Bool)

(assert (=> b!7987650 m!8361756))

(assert (=> b!7987650 m!8360368))

(assert (=> b!7987650 m!8360540))

(assert (=> b!7986341 d!2384340))

(declare-fun b!7987652 () Bool)

(declare-fun res!3161673 () Bool)

(declare-fun e!4707584 () Bool)

(assert (=> b!7987652 (=> (not res!3161673) (not e!4707584))))

(declare-fun call!741803 () Bool)

(assert (=> b!7987652 (= res!3161673 call!741803)))

(declare-fun e!4707586 () Bool)

(assert (=> b!7987652 (= e!4707586 e!4707584)))

(declare-fun bm!741798 () Bool)

(declare-fun call!741805 () Bool)

(declare-fun c!1466944 () Bool)

(assert (=> bm!741798 (= call!741805 (validRegex!11855 (ite c!1466944 (regTwo!43615 lt!2711852) (regTwo!43614 lt!2711852))))))

(declare-fun b!7987653 () Bool)

(declare-fun e!4707587 () Bool)

(declare-fun e!4707581 () Bool)

(assert (=> b!7987653 (= e!4707587 e!4707581)))

(declare-fun res!3161674 () Bool)

(assert (=> b!7987653 (=> (not res!3161674) (not e!4707581))))

(assert (=> b!7987653 (= res!3161674 call!741803)))

(declare-fun bm!741799 () Bool)

(declare-fun call!741804 () Bool)

(assert (=> bm!741799 (= call!741803 call!741804)))

(declare-fun d!2384342 () Bool)

(declare-fun res!3161671 () Bool)

(declare-fun e!4707585 () Bool)

(assert (=> d!2384342 (=> res!3161671 e!4707585)))

(assert (=> d!2384342 (= res!3161671 ((_ is ElementMatch!21551) lt!2711852))))

(assert (=> d!2384342 (= (validRegex!11855 lt!2711852) e!4707585)))

(declare-fun b!7987654 () Bool)

(assert (=> b!7987654 (= e!4707584 call!741805)))

(declare-fun b!7987655 () Bool)

(declare-fun e!4707582 () Bool)

(assert (=> b!7987655 (= e!4707585 e!4707582)))

(declare-fun c!1466945 () Bool)

(assert (=> b!7987655 (= c!1466945 ((_ is Star!21551) lt!2711852))))

(declare-fun bm!741800 () Bool)

(assert (=> bm!741800 (= call!741804 (validRegex!11855 (ite c!1466945 (reg!21880 lt!2711852) (ite c!1466944 (regOne!43615 lt!2711852) (regOne!43614 lt!2711852)))))))

(declare-fun b!7987656 () Bool)

(assert (=> b!7987656 (= e!4707582 e!4707586)))

(assert (=> b!7987656 (= c!1466944 ((_ is Union!21551) lt!2711852))))

(declare-fun b!7987657 () Bool)

(declare-fun e!4707583 () Bool)

(assert (=> b!7987657 (= e!4707582 e!4707583)))

(declare-fun res!3161670 () Bool)

(assert (=> b!7987657 (= res!3161670 (not (nullable!9644 (reg!21880 lt!2711852))))))

(assert (=> b!7987657 (=> (not res!3161670) (not e!4707583))))

(declare-fun b!7987658 () Bool)

(assert (=> b!7987658 (= e!4707581 call!741805)))

(declare-fun b!7987659 () Bool)

(assert (=> b!7987659 (= e!4707583 call!741804)))

(declare-fun b!7987660 () Bool)

(declare-fun res!3161672 () Bool)

(assert (=> b!7987660 (=> res!3161672 e!4707587)))

(assert (=> b!7987660 (= res!3161672 (not ((_ is Concat!30550) lt!2711852)))))

(assert (=> b!7987660 (= e!4707586 e!4707587)))

(assert (= (and d!2384342 (not res!3161671)) b!7987655))

(assert (= (and b!7987655 c!1466945) b!7987657))

(assert (= (and b!7987655 (not c!1466945)) b!7987656))

(assert (= (and b!7987657 res!3161670) b!7987659))

(assert (= (and b!7987656 c!1466944) b!7987652))

(assert (= (and b!7987656 (not c!1466944)) b!7987660))

(assert (= (and b!7987652 res!3161673) b!7987654))

(assert (= (and b!7987660 (not res!3161672)) b!7987653))

(assert (= (and b!7987653 res!3161674) b!7987658))

(assert (= (or b!7987654 b!7987658) bm!741798))

(assert (= (or b!7987652 b!7987653) bm!741799))

(assert (= (or b!7987659 bm!741799) bm!741800))

(declare-fun m!8361758 () Bool)

(assert (=> bm!741798 m!8361758))

(declare-fun m!8361760 () Bool)

(assert (=> bm!741800 m!8361760))

(declare-fun m!8361762 () Bool)

(assert (=> b!7987657 m!8361762))

(assert (=> d!2383812 d!2384342))

(declare-fun b!7987661 () Bool)

(declare-fun res!3161678 () Bool)

(declare-fun e!4707591 () Bool)

(assert (=> b!7987661 (=> (not res!3161678) (not e!4707591))))

(declare-fun call!741806 () Bool)

(assert (=> b!7987661 (= res!3161678 call!741806)))

(declare-fun e!4707593 () Bool)

(assert (=> b!7987661 (= e!4707593 e!4707591)))

(declare-fun bm!741801 () Bool)

(declare-fun c!1466946 () Bool)

(declare-fun call!741808 () Bool)

(assert (=> bm!741801 (= call!741808 (validRegex!11855 (ite c!1466946 (regTwo!43615 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))))

(declare-fun b!7987662 () Bool)

(declare-fun e!4707594 () Bool)

(declare-fun e!4707588 () Bool)

(assert (=> b!7987662 (= e!4707594 e!4707588)))

(declare-fun res!3161679 () Bool)

(assert (=> b!7987662 (=> (not res!3161679) (not e!4707588))))

(assert (=> b!7987662 (= res!3161679 call!741806)))

(declare-fun bm!741802 () Bool)

(declare-fun call!741807 () Bool)

(assert (=> bm!741802 (= call!741806 call!741807)))

(declare-fun d!2384344 () Bool)

(declare-fun res!3161676 () Bool)

(declare-fun e!4707592 () Bool)

(assert (=> d!2384344 (=> res!3161676 e!4707592)))

(assert (=> d!2384344 (= res!3161676 ((_ is ElementMatch!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))

(assert (=> d!2384344 (= (validRegex!11855 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) e!4707592)))

(declare-fun b!7987663 () Bool)

(assert (=> b!7987663 (= e!4707591 call!741808)))

(declare-fun b!7987664 () Bool)

(declare-fun e!4707589 () Bool)

(assert (=> b!7987664 (= e!4707592 e!4707589)))

(declare-fun c!1466947 () Bool)

(assert (=> b!7987664 (= c!1466947 ((_ is Star!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))

(declare-fun bm!741803 () Bool)

(assert (=> bm!741803 (= call!741807 (validRegex!11855 (ite c!1466947 (reg!21880 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) (ite c!1466946 (regOne!43615 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))))))

(declare-fun b!7987665 () Bool)

(assert (=> b!7987665 (= e!4707589 e!4707593)))

(assert (=> b!7987665 (= c!1466946 ((_ is Union!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))

(declare-fun b!7987666 () Bool)

(declare-fun e!4707590 () Bool)

(assert (=> b!7987666 (= e!4707589 e!4707590)))

(declare-fun res!3161675 () Bool)

(assert (=> b!7987666 (= res!3161675 (not (nullable!9644 (reg!21880 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))))

(assert (=> b!7987666 (=> (not res!3161675) (not e!4707590))))

(declare-fun b!7987667 () Bool)

(assert (=> b!7987667 (= e!4707588 call!741808)))

(declare-fun b!7987668 () Bool)

(assert (=> b!7987668 (= e!4707590 call!741807)))

(declare-fun b!7987669 () Bool)

(declare-fun res!3161677 () Bool)

(assert (=> b!7987669 (=> res!3161677 e!4707594)))

(assert (=> b!7987669 (= res!3161677 (not ((_ is Concat!30550) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))))

(assert (=> b!7987669 (= e!4707593 e!4707594)))

(assert (= (and d!2384344 (not res!3161676)) b!7987664))

(assert (= (and b!7987664 c!1466947) b!7987666))

(assert (= (and b!7987664 (not c!1466947)) b!7987665))

(assert (= (and b!7987666 res!3161675) b!7987668))

(assert (= (and b!7987665 c!1466946) b!7987661))

(assert (= (and b!7987665 (not c!1466946)) b!7987669))

(assert (= (and b!7987661 res!3161678) b!7987663))

(assert (= (and b!7987669 (not res!3161677)) b!7987662))

(assert (= (and b!7987662 res!3161679) b!7987667))

(assert (= (or b!7987663 b!7987667) bm!741801))

(assert (= (or b!7987661 b!7987662) bm!741802))

(assert (= (or b!7987668 bm!741802) bm!741803))

(declare-fun m!8361764 () Bool)

(assert (=> bm!741801 m!8361764))

(declare-fun m!8361766 () Bool)

(assert (=> bm!741803 m!8361766))

(declare-fun m!8361768 () Bool)

(assert (=> b!7987666 m!8361768))

(assert (=> d!2383812 d!2384344))

(declare-fun d!2384346 () Bool)

(declare-fun lt!2712083 () Regex!21551)

(assert (=> d!2384346 (validRegex!11855 lt!2712083)))

(declare-fun e!4707595 () Regex!21551)

(assert (=> d!2384346 (= lt!2712083 e!4707595)))

(declare-fun c!1466948 () Bool)

(assert (=> d!2384346 (= c!1466948 ((_ is Cons!74656) (t!390523 (t!390523 lt!2711603))))))

(assert (=> d!2384346 (validRegex!11855 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (h!81104 (t!390523 lt!2711603))))))

(assert (=> d!2384346 (= (derivative!737 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (h!81104 (t!390523 lt!2711603))) (t!390523 (t!390523 lt!2711603))) lt!2712083)))

(declare-fun b!7987670 () Bool)

(assert (=> b!7987670 (= e!4707595 (derivative!737 (derivativeStep!6571 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (h!81104 (t!390523 lt!2711603))) (h!81104 (t!390523 (t!390523 lt!2711603)))) (t!390523 (t!390523 (t!390523 lt!2711603)))))))

(declare-fun b!7987671 () Bool)

(assert (=> b!7987671 (= e!4707595 (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (h!81104 (t!390523 lt!2711603))))))

(assert (= (and d!2384346 c!1466948) b!7987670))

(assert (= (and d!2384346 (not c!1466948)) b!7987671))

(declare-fun m!8361770 () Bool)

(assert (=> d!2384346 m!8361770))

(assert (=> d!2384346 m!8360418))

(declare-fun m!8361772 () Bool)

(assert (=> d!2384346 m!8361772))

(assert (=> b!7987670 m!8360418))

(declare-fun m!8361774 () Bool)

(assert (=> b!7987670 m!8361774))

(assert (=> b!7987670 m!8361774))

(declare-fun m!8361776 () Bool)

(assert (=> b!7987670 m!8361776))

(assert (=> b!7986245 d!2384346))

(declare-fun c!1466949 () Bool)

(declare-fun bm!741804 () Bool)

(declare-fun call!741811 () Regex!21551)

(declare-fun c!1466951 () Bool)

(declare-fun c!1466953 () Bool)

(assert (=> bm!741804 (= call!741811 (derivativeStep!6571 (ite c!1466949 (regTwo!43615 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) (ite c!1466951 (reg!21880 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) (ite c!1466953 (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))) (h!81104 (t!390523 lt!2711603))))))

(declare-fun b!7987672 () Bool)

(declare-fun e!4707597 () Regex!21551)

(declare-fun call!741810 () Regex!21551)

(declare-fun call!741812 () Regex!21551)

(assert (=> b!7987672 (= e!4707597 (Union!21551 (Concat!30550 call!741812 (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))) call!741810))))

(declare-fun d!2384348 () Bool)

(declare-fun lt!2712084 () Regex!21551)

(assert (=> d!2384348 (validRegex!11855 lt!2712084)))

(declare-fun e!4707596 () Regex!21551)

(assert (=> d!2384348 (= lt!2712084 e!4707596)))

(declare-fun c!1466952 () Bool)

(assert (=> d!2384348 (= c!1466952 (or ((_ is EmptyExpr!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) ((_ is EmptyLang!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))))

(assert (=> d!2384348 (validRegex!11855 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))

(assert (=> d!2384348 (= (derivativeStep!6571 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)) (h!81104 (t!390523 lt!2711603))) lt!2712084)))

(declare-fun bm!741805 () Bool)

(declare-fun call!741809 () Regex!21551)

(assert (=> bm!741805 (= call!741809 call!741811)))

(declare-fun b!7987673 () Bool)

(assert (=> b!7987673 (= c!1466949 ((_ is Union!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))

(declare-fun e!4707599 () Regex!21551)

(declare-fun e!4707598 () Regex!21551)

(assert (=> b!7987673 (= e!4707599 e!4707598)))

(declare-fun b!7987674 () Bool)

(assert (=> b!7987674 (= e!4707599 (ite (= (h!81104 (t!390523 lt!2711603)) (c!1466508 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))) EmptyExpr!21551 EmptyLang!21551))))

(declare-fun b!7987675 () Bool)

(declare-fun e!4707600 () Regex!21551)

(assert (=> b!7987675 (= e!4707598 e!4707600)))

(assert (=> b!7987675 (= c!1466951 ((_ is Star!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))

(declare-fun b!7987676 () Bool)

(assert (=> b!7987676 (= e!4707596 e!4707599)))

(declare-fun c!1466950 () Bool)

(assert (=> b!7987676 (= c!1466950 ((_ is ElementMatch!21551) (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))

(declare-fun b!7987677 () Bool)

(assert (=> b!7987677 (= c!1466953 (nullable!9644 (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))))))

(assert (=> b!7987677 (= e!4707600 e!4707597)))

(declare-fun bm!741806 () Bool)

(assert (=> bm!741806 (= call!741812 (derivativeStep!6571 (ite c!1466949 (regOne!43615 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))) (regOne!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))) (h!81104 (t!390523 lt!2711603))))))

(declare-fun b!7987678 () Bool)

(assert (=> b!7987678 (= e!4707597 (Union!21551 (Concat!30550 call!741810 (regTwo!43614 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603)))) EmptyLang!21551))))

(declare-fun bm!741807 () Bool)

(assert (=> bm!741807 (= call!741810 call!741809)))

(declare-fun b!7987679 () Bool)

(assert (=> b!7987679 (= e!4707600 (Concat!30550 call!741809 (derivativeStep!6571 baseR!116 (h!81104 lt!2711603))))))

(declare-fun b!7987680 () Bool)

(assert (=> b!7987680 (= e!4707598 (Union!21551 call!741812 call!741811))))

(declare-fun b!7987681 () Bool)

(assert (=> b!7987681 (= e!4707596 EmptyLang!21551)))

(assert (= (and d!2384348 c!1466952) b!7987681))

(assert (= (and d!2384348 (not c!1466952)) b!7987676))

(assert (= (and b!7987676 c!1466950) b!7987674))

(assert (= (and b!7987676 (not c!1466950)) b!7987673))

(assert (= (and b!7987673 c!1466949) b!7987680))

(assert (= (and b!7987673 (not c!1466949)) b!7987675))

(assert (= (and b!7987675 c!1466951) b!7987679))

(assert (= (and b!7987675 (not c!1466951)) b!7987677))

(assert (= (and b!7987677 c!1466953) b!7987672))

(assert (= (and b!7987677 (not c!1466953)) b!7987678))

(assert (= (or b!7987672 b!7987678) bm!741807))

(assert (= (or b!7987679 bm!741807) bm!741805))

(assert (= (or b!7987680 bm!741805) bm!741804))

(assert (= (or b!7987680 b!7987672) bm!741806))

(declare-fun m!8361778 () Bool)

(assert (=> bm!741804 m!8361778))

(declare-fun m!8361780 () Bool)

(assert (=> d!2384348 m!8361780))

(assert (=> d!2384348 m!8360178))

(assert (=> d!2384348 m!8360416))

(declare-fun m!8361782 () Bool)

(assert (=> b!7987677 m!8361782))

(declare-fun m!8361784 () Bool)

(assert (=> bm!741806 m!8361784))

(assert (=> b!7986245 d!2384348))

(declare-fun e!4707602 () List!74780)

(declare-fun b!7987683 () Bool)

(assert (=> b!7987683 (= e!4707602 (Cons!74656 (h!81104 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)))) (++!18413 (t!390523 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)))) lt!2711808)))))

(declare-fun b!7987682 () Bool)

(assert (=> b!7987682 (= e!4707602 lt!2711808)))

(declare-fun d!2384350 () Bool)

(declare-fun e!4707601 () Bool)

(assert (=> d!2384350 e!4707601))

(declare-fun res!3161681 () Bool)

(assert (=> d!2384350 (=> (not res!3161681) (not e!4707601))))

(declare-fun lt!2712085 () List!74780)

(assert (=> d!2384350 (= res!3161681 (= (content!15870 lt!2712085) ((_ map or) (content!15870 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)))) (content!15870 lt!2711808))))))

(assert (=> d!2384350 (= lt!2712085 e!4707602)))

(declare-fun c!1466954 () Bool)

(assert (=> d!2384350 (= c!1466954 ((_ is Nil!74656) (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)))))))

(assert (=> d!2384350 (= (++!18413 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))) lt!2711808) lt!2712085)))

(declare-fun b!7987684 () Bool)

(declare-fun res!3161680 () Bool)

(assert (=> b!7987684 (=> (not res!3161680) (not e!4707601))))

(assert (=> b!7987684 (= res!3161680 (= (size!43487 lt!2712085) (+ (size!43487 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656)))) (size!43487 lt!2711808))))))

(declare-fun b!7987685 () Bool)

(assert (=> b!7987685 (= e!4707601 (or (not (= lt!2711808 Nil!74656)) (= lt!2712085 (t!390523 (++!18413 testedP!447 (Cons!74656 lt!2711830 Nil!74656))))))))

(assert (= (and d!2384350 c!1466954) b!7987682))

(assert (= (and d!2384350 (not c!1466954)) b!7987683))

(assert (= (and d!2384350 res!3161681) b!7987684))

(assert (= (and b!7987684 res!3161680) b!7987685))

(declare-fun m!8361786 () Bool)

(assert (=> b!7987683 m!8361786))

(declare-fun m!8361788 () Bool)

(assert (=> d!2384350 m!8361788))

(assert (=> d!2384350 m!8361120))

(assert (=> d!2384350 m!8360576))

(declare-fun m!8361790 () Bool)

(assert (=> b!7987684 m!8361790))

(assert (=> b!7987684 m!8361238))

(assert (=> b!7987684 m!8360582))

(assert (=> b!7986357 d!2384350))

(declare-fun d!2384352 () Bool)

(declare-fun lt!2712086 () Int)

(assert (=> d!2384352 (>= lt!2712086 0)))

(declare-fun e!4707603 () Int)

(assert (=> d!2384352 (= lt!2712086 e!4707603)))

(declare-fun c!1466955 () Bool)

(assert (=> d!2384352 (= c!1466955 ((_ is Nil!74656) lt!2711890))))

(assert (=> d!2384352 (= (size!43487 lt!2711890) lt!2712086)))

(declare-fun b!7987686 () Bool)

(assert (=> b!7987686 (= e!4707603 0)))

(declare-fun b!7987687 () Bool)

(assert (=> b!7987687 (= e!4707603 (+ 1 (size!43487 (t!390523 lt!2711890))))))

(assert (= (and d!2384352 c!1466955) b!7987686))

(assert (= (and d!2384352 (not c!1466955)) b!7987687))

(declare-fun m!8361792 () Bool)

(assert (=> b!7987687 m!8361792))

(assert (=> b!7986354 d!2384352))

(assert (=> b!7986354 d!2383788))

(declare-fun d!2384354 () Bool)

(declare-fun lt!2712087 () Int)

(assert (=> d!2384354 (>= lt!2712087 0)))

(declare-fun e!4707604 () Int)

(assert (=> d!2384354 (= lt!2712087 e!4707604)))

(declare-fun c!1466956 () Bool)

(assert (=> d!2384354 (= c!1466956 ((_ is Nil!74656) (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))

(assert (=> d!2384354 (= (size!43487 (Cons!74656 (head!16297 lt!2711604) Nil!74656)) lt!2712087)))

(declare-fun b!7987688 () Bool)

(assert (=> b!7987688 (= e!4707604 0)))

(declare-fun b!7987689 () Bool)

(assert (=> b!7987689 (= e!4707604 (+ 1 (size!43487 (t!390523 (Cons!74656 (head!16297 lt!2711604) Nil!74656)))))))

(assert (= (and d!2384354 c!1466956) b!7987688))

(assert (= (and d!2384354 (not c!1466956)) b!7987689))

(declare-fun m!8361794 () Bool)

(assert (=> b!7987689 m!8361794))

(assert (=> b!7986354 d!2384354))

(declare-fun b!7987690 () Bool)

(declare-fun res!3161685 () Bool)

(declare-fun e!4707608 () Bool)

(assert (=> b!7987690 (=> (not res!3161685) (not e!4707608))))

(declare-fun call!741813 () Bool)

(assert (=> b!7987690 (= res!3161685 call!741813)))

(declare-fun e!4707610 () Bool)

(assert (=> b!7987690 (= e!4707610 e!4707608)))

(declare-fun bm!741808 () Bool)

(declare-fun c!1466957 () Bool)

(declare-fun call!741815 () Bool)

(assert (=> bm!741808 (= call!741815 (validRegex!11855 (ite c!1466957 (regTwo!43615 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))) (regTwo!43614 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))))))))

(declare-fun b!7987691 () Bool)

(declare-fun e!4707611 () Bool)

(declare-fun e!4707605 () Bool)

(assert (=> b!7987691 (= e!4707611 e!4707605)))

(declare-fun res!3161686 () Bool)

(assert (=> b!7987691 (=> (not res!3161686) (not e!4707605))))

(assert (=> b!7987691 (= res!3161686 call!741813)))

(declare-fun bm!741809 () Bool)

(declare-fun call!741814 () Bool)

(assert (=> bm!741809 (= call!741813 call!741814)))

(declare-fun d!2384356 () Bool)

(declare-fun res!3161683 () Bool)

(declare-fun e!4707609 () Bool)

(assert (=> d!2384356 (=> res!3161683 e!4707609)))

(assert (=> d!2384356 (= res!3161683 ((_ is ElementMatch!21551) (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))))))

(assert (=> d!2384356 (= (validRegex!11855 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))) e!4707609)))

(declare-fun b!7987692 () Bool)

(assert (=> b!7987692 (= e!4707608 call!741815)))

(declare-fun b!7987693 () Bool)

(declare-fun e!4707606 () Bool)

(assert (=> b!7987693 (= e!4707609 e!4707606)))

(declare-fun c!1466958 () Bool)

(assert (=> b!7987693 (= c!1466958 ((_ is Star!21551) (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))))))

(declare-fun bm!741810 () Bool)

(assert (=> bm!741810 (= call!741814 (validRegex!11855 (ite c!1466958 (reg!21880 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))) (ite c!1466957 (regOne!43615 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))) (regOne!43614 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602)))))))))

(declare-fun b!7987694 () Bool)

(assert (=> b!7987694 (= e!4707606 e!4707610)))

(assert (=> b!7987694 (= c!1466957 ((_ is Union!21551) (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))))))

(declare-fun b!7987695 () Bool)

(declare-fun e!4707607 () Bool)

(assert (=> b!7987695 (= e!4707606 e!4707607)))

(declare-fun res!3161682 () Bool)

(assert (=> b!7987695 (= res!3161682 (not (nullable!9644 (reg!21880 (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602))))))))

(assert (=> b!7987695 (=> (not res!3161682) (not e!4707607))))

(declare-fun b!7987696 () Bool)

(assert (=> b!7987696 (= e!4707605 call!741815)))

(declare-fun b!7987697 () Bool)

(assert (=> b!7987697 (= e!4707607 call!741814)))

(declare-fun b!7987698 () Bool)

(declare-fun res!3161684 () Bool)

(assert (=> b!7987698 (=> res!3161684 e!4707611)))

(assert (=> b!7987698 (= res!3161684 (not ((_ is Concat!30550) (ite c!1466659 (regTwo!43615 r!24602) (regTwo!43614 r!24602)))))))

(assert (=> b!7987698 (= e!4707610 e!4707611)))

(assert (= (and d!2384356 (not res!3161683)) b!7987693))

(assert (= (and b!7987693 c!1466958) b!7987695))

(assert (= (and b!7987693 (not c!1466958)) b!7987694))

(assert (= (and b!7987695 res!3161682) b!7987697))

(assert (= (and b!7987694 c!1466957) b!7987690))

(assert (= (and b!7987694 (not c!1466957)) b!7987698))

(assert (= (and b!7987690 res!3161685) b!7987692))

(assert (= (and b!7987698 (not res!3161684)) b!7987691))

(assert (= (and b!7987691 res!3161686) b!7987696))

(assert (= (or b!7987692 b!7987696) bm!741808))

(assert (= (or b!7987690 b!7987691) bm!741809))

(assert (= (or b!7987697 bm!741809) bm!741810))

(declare-fun m!8361796 () Bool)

(assert (=> bm!741808 m!8361796))

(declare-fun m!8361798 () Bool)

(assert (=> bm!741810 m!8361798))

(declare-fun m!8361800 () Bool)

(assert (=> b!7987695 m!8361800))

(assert (=> bm!741595 d!2384356))

(declare-fun d!2384358 () Bool)

(declare-fun lt!2712088 () Int)

(assert (=> d!2384358 (>= lt!2712088 0)))

(declare-fun e!4707612 () Int)

(assert (=> d!2384358 (= lt!2712088 e!4707612)))

(declare-fun c!1466959 () Bool)

(assert (=> d!2384358 (= c!1466959 ((_ is Nil!74656) (t!390523 (_1!38683 lt!2711815))))))

(assert (=> d!2384358 (= (size!43487 (t!390523 (_1!38683 lt!2711815))) lt!2712088)))

(declare-fun b!7987699 () Bool)

(assert (=> b!7987699 (= e!4707612 0)))

(declare-fun b!7987700 () Bool)

(assert (=> b!7987700 (= e!4707612 (+ 1 (size!43487 (t!390523 (t!390523 (_1!38683 lt!2711815))))))))

(assert (= (and d!2384358 c!1466959) b!7987699))

(assert (= (and d!2384358 (not c!1466959)) b!7987700))

(declare-fun m!8361802 () Bool)

(assert (=> b!7987700 m!8361802))

(assert (=> b!7986294 d!2384358))

(declare-fun b!7987702 () Bool)

(declare-fun res!3161688 () Bool)

(declare-fun e!4707615 () Bool)

(assert (=> b!7987702 (=> (not res!3161688) (not e!4707615))))

(assert (=> b!7987702 (= res!3161688 (= (head!16297 (tail!15824 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))) (head!16297 (tail!15824 input!7927))))))

(declare-fun b!7987703 () Bool)

(assert (=> b!7987703 (= e!4707615 (isPrefix!6651 (tail!15824 (tail!15824 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))) (tail!15824 (tail!15824 input!7927))))))

(declare-fun d!2384360 () Bool)

(declare-fun e!4707614 () Bool)

(assert (=> d!2384360 e!4707614))

(declare-fun res!3161689 () Bool)

(assert (=> d!2384360 (=> res!3161689 e!4707614)))

(declare-fun lt!2712089 () Bool)

(assert (=> d!2384360 (= res!3161689 (not lt!2712089))))

(declare-fun e!4707613 () Bool)

(assert (=> d!2384360 (= lt!2712089 e!4707613)))

(declare-fun res!3161687 () Bool)

(assert (=> d!2384360 (=> res!3161687 e!4707613)))

(assert (=> d!2384360 (= res!3161687 ((_ is Nil!74656) (tail!15824 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656)))))))

(assert (=> d!2384360 (= (isPrefix!6651 (tail!15824 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))) (tail!15824 input!7927)) lt!2712089)))

(declare-fun b!7987704 () Bool)

(assert (=> b!7987704 (= e!4707614 (>= (size!43487 (tail!15824 input!7927)) (size!43487 (tail!15824 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))))

(declare-fun b!7987701 () Bool)

(assert (=> b!7987701 (= e!4707613 e!4707615)))

(declare-fun res!3161690 () Bool)

(assert (=> b!7987701 (=> (not res!3161690) (not e!4707615))))

(assert (=> b!7987701 (= res!3161690 (not ((_ is Nil!74656) (tail!15824 input!7927))))))

(assert (= (and d!2384360 (not res!3161687)) b!7987701))

(assert (= (and b!7987701 res!3161690) b!7987702))

(assert (= (and b!7987702 res!3161688) b!7987703))

(assert (= (and d!2384360 (not res!3161689)) b!7987704))

(assert (=> b!7987702 m!8360544))

(declare-fun m!8361804 () Bool)

(assert (=> b!7987702 m!8361804))

(assert (=> b!7987702 m!8360222))

(assert (=> b!7987702 m!8360518))

(assert (=> b!7987703 m!8360544))

(declare-fun m!8361806 () Bool)

(assert (=> b!7987703 m!8361806))

(assert (=> b!7987703 m!8360222))

(assert (=> b!7987703 m!8360520))

(assert (=> b!7987703 m!8361806))

(assert (=> b!7987703 m!8360520))

(declare-fun m!8361808 () Bool)

(assert (=> b!7987703 m!8361808))

(assert (=> b!7987704 m!8360222))

(assert (=> b!7987704 m!8360524))

(assert (=> b!7987704 m!8360544))

(declare-fun m!8361810 () Bool)

(assert (=> b!7987704 m!8361810))

(assert (=> b!7986346 d!2384360))

(declare-fun d!2384362 () Bool)

(assert (=> d!2384362 (= (tail!15824 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))) (t!390523 (++!18413 testedP!447 (Cons!74656 (head!16297 (getSuffix!3852 input!7927 testedP!447)) Nil!74656))))))

(assert (=> b!7986346 d!2384362))

(assert (=> b!7986346 d!2383840))

(assert (=> d!2383828 d!2383804))

(assert (=> b!7986403 d!2383888))

(declare-fun d!2384364 () Bool)

(assert (=> d!2384364 (= (isEmpty!42959 (_1!38683 lt!2711869)) ((_ is Nil!74656) (_1!38683 lt!2711869)))))

(assert (=> b!7986261 d!2384364))

(declare-fun b!7987708 () Bool)

(declare-fun e!4707616 () Bool)

(declare-fun tp!2384808 () Bool)

(declare-fun tp!2384807 () Bool)

(assert (=> b!7987708 (= e!4707616 (and tp!2384808 tp!2384807))))

(assert (=> b!7986500 (= tp!2384348 e!4707616)))

(declare-fun b!7987707 () Bool)

(declare-fun tp!2384810 () Bool)

(assert (=> b!7987707 (= e!4707616 tp!2384810)))

(declare-fun b!7987706 () Bool)

(declare-fun tp!2384811 () Bool)

(declare-fun tp!2384809 () Bool)

(assert (=> b!7987706 (= e!4707616 (and tp!2384811 tp!2384809))))

(declare-fun b!7987705 () Bool)

(assert (=> b!7987705 (= e!4707616 tp_is_empty!53645)))

(assert (= (and b!7986500 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987705))

(assert (= (and b!7986500 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987706))

(assert (= (and b!7986500 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987707))

(assert (= (and b!7986500 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987708))

(declare-fun b!7987712 () Bool)

(declare-fun e!4707617 () Bool)

(declare-fun tp!2384813 () Bool)

(declare-fun tp!2384812 () Bool)

(assert (=> b!7987712 (= e!4707617 (and tp!2384813 tp!2384812))))

(assert (=> b!7986500 (= tp!2384346 e!4707617)))

(declare-fun b!7987711 () Bool)

(declare-fun tp!2384815 () Bool)

(assert (=> b!7987711 (= e!4707617 tp!2384815)))

(declare-fun b!7987710 () Bool)

(declare-fun tp!2384816 () Bool)

(declare-fun tp!2384814 () Bool)

(assert (=> b!7987710 (= e!4707617 (and tp!2384816 tp!2384814))))

(declare-fun b!7987709 () Bool)

(assert (=> b!7987709 (= e!4707617 tp_is_empty!53645)))

(assert (= (and b!7986500 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987709))

(assert (= (and b!7986500 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987710))

(assert (= (and b!7986500 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987711))

(assert (= (and b!7986500 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regOne!43614 r!24602))))) b!7987712))

(declare-fun b!7987716 () Bool)

(declare-fun e!4707618 () Bool)

(declare-fun tp!2384818 () Bool)

(declare-fun tp!2384817 () Bool)

(assert (=> b!7987716 (= e!4707618 (and tp!2384818 tp!2384817))))

(assert (=> b!7986525 (= tp!2384379 e!4707618)))

(declare-fun b!7987715 () Bool)

(declare-fun tp!2384820 () Bool)

(assert (=> b!7987715 (= e!4707618 tp!2384820)))

(declare-fun b!7987714 () Bool)

(declare-fun tp!2384821 () Bool)

(declare-fun tp!2384819 () Bool)

(assert (=> b!7987714 (= e!4707618 (and tp!2384821 tp!2384819))))

(declare-fun b!7987713 () Bool)

(assert (=> b!7987713 (= e!4707618 tp_is_empty!53645)))

(assert (= (and b!7986525 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987713))

(assert (= (and b!7986525 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987714))

(assert (= (and b!7986525 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987715))

(assert (= (and b!7986525 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987716))

(declare-fun b!7987720 () Bool)

(declare-fun e!4707619 () Bool)

(declare-fun tp!2384823 () Bool)

(declare-fun tp!2384822 () Bool)

(assert (=> b!7987720 (= e!4707619 (and tp!2384823 tp!2384822))))

(assert (=> b!7986525 (= tp!2384377 e!4707619)))

(declare-fun b!7987719 () Bool)

(declare-fun tp!2384825 () Bool)

(assert (=> b!7987719 (= e!4707619 tp!2384825)))

(declare-fun b!7987718 () Bool)

(declare-fun tp!2384826 () Bool)

(declare-fun tp!2384824 () Bool)

(assert (=> b!7987718 (= e!4707619 (and tp!2384826 tp!2384824))))

(declare-fun b!7987717 () Bool)

(assert (=> b!7987717 (= e!4707619 tp_is_empty!53645)))

(assert (= (and b!7986525 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987717))

(assert (= (and b!7986525 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987718))

(assert (= (and b!7986525 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987719))

(assert (= (and b!7986525 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (reg!21880 r!24602))))) b!7987720))

(declare-fun b!7987724 () Bool)

(declare-fun e!4707620 () Bool)

(declare-fun tp!2384828 () Bool)

(declare-fun tp!2384827 () Bool)

(assert (=> b!7987724 (= e!4707620 (and tp!2384828 tp!2384827))))

(assert (=> b!7986633 (= tp!2384491 e!4707620)))

(declare-fun b!7987723 () Bool)

(declare-fun tp!2384830 () Bool)

(assert (=> b!7987723 (= e!4707620 tp!2384830)))

(declare-fun b!7987722 () Bool)

(declare-fun tp!2384831 () Bool)

(declare-fun tp!2384829 () Bool)

(assert (=> b!7987722 (= e!4707620 (and tp!2384831 tp!2384829))))

(declare-fun b!7987721 () Bool)

(assert (=> b!7987721 (= e!4707620 tp_is_empty!53645)))

(assert (= (and b!7986633 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987721))

(assert (= (and b!7986633 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987722))

(assert (= (and b!7986633 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987723))

(assert (= (and b!7986633 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987724))

(declare-fun b!7987728 () Bool)

(declare-fun e!4707621 () Bool)

(declare-fun tp!2384833 () Bool)

(declare-fun tp!2384832 () Bool)

(assert (=> b!7987728 (= e!4707621 (and tp!2384833 tp!2384832))))

(assert (=> b!7986633 (= tp!2384490 e!4707621)))

(declare-fun b!7987727 () Bool)

(declare-fun tp!2384835 () Bool)

(assert (=> b!7987727 (= e!4707621 tp!2384835)))

(declare-fun b!7987726 () Bool)

(declare-fun tp!2384836 () Bool)

(declare-fun tp!2384834 () Bool)

(assert (=> b!7987726 (= e!4707621 (and tp!2384836 tp!2384834))))

(declare-fun b!7987725 () Bool)

(assert (=> b!7987725 (= e!4707621 tp_is_empty!53645)))

(assert (= (and b!7986633 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987725))

(assert (= (and b!7986633 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987726))

(assert (= (and b!7986633 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987727))

(assert (= (and b!7986633 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regOne!43614 baseR!116))))) b!7987728))

(declare-fun b!7987732 () Bool)

(declare-fun e!4707622 () Bool)

(declare-fun tp!2384838 () Bool)

(declare-fun tp!2384837 () Bool)

(assert (=> b!7987732 (= e!4707622 (and tp!2384838 tp!2384837))))

(assert (=> b!7986542 (= tp!2384393 e!4707622)))

(declare-fun b!7987731 () Bool)

(declare-fun tp!2384840 () Bool)

(assert (=> b!7987731 (= e!4707622 tp!2384840)))

(declare-fun b!7987730 () Bool)

(declare-fun tp!2384841 () Bool)

(declare-fun tp!2384839 () Bool)

(assert (=> b!7987730 (= e!4707622 (and tp!2384841 tp!2384839))))

(declare-fun b!7987729 () Bool)

(assert (=> b!7987729 (= e!4707622 tp_is_empty!53645)))

(assert (= (and b!7986542 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (reg!21880 r!24602))))) b!7987729))

(assert (= (and b!7986542 ((_ is Concat!30550) (reg!21880 (regOne!43615 (reg!21880 r!24602))))) b!7987730))

(assert (= (and b!7986542 ((_ is Star!21551) (reg!21880 (regOne!43615 (reg!21880 r!24602))))) b!7987731))

(assert (= (and b!7986542 ((_ is Union!21551) (reg!21880 (regOne!43615 (reg!21880 r!24602))))) b!7987732))

(declare-fun b!7987736 () Bool)

(declare-fun e!4707623 () Bool)

(declare-fun tp!2384843 () Bool)

(declare-fun tp!2384842 () Bool)

(assert (=> b!7987736 (= e!4707623 (and tp!2384843 tp!2384842))))

(assert (=> b!7986511 (= tp!2384356 e!4707623)))

(declare-fun b!7987735 () Bool)

(declare-fun tp!2384845 () Bool)

(assert (=> b!7987735 (= e!4707623 tp!2384845)))

(declare-fun b!7987734 () Bool)

(declare-fun tp!2384846 () Bool)

(declare-fun tp!2384844 () Bool)

(assert (=> b!7987734 (= e!4707623 (and tp!2384846 tp!2384844))))

(declare-fun b!7987733 () Bool)

(assert (=> b!7987733 (= e!4707623 tp_is_empty!53645)))

(assert (= (and b!7986511 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987733))

(assert (= (and b!7986511 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987734))

(assert (= (and b!7986511 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987735))

(assert (= (and b!7986511 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987736))

(declare-fun b!7987740 () Bool)

(declare-fun e!4707624 () Bool)

(declare-fun tp!2384848 () Bool)

(declare-fun tp!2384847 () Bool)

(assert (=> b!7987740 (= e!4707624 (and tp!2384848 tp!2384847))))

(assert (=> b!7986511 (= tp!2384355 e!4707624)))

(declare-fun b!7987739 () Bool)

(declare-fun tp!2384850 () Bool)

(assert (=> b!7987739 (= e!4707624 tp!2384850)))

(declare-fun b!7987738 () Bool)

(declare-fun tp!2384851 () Bool)

(declare-fun tp!2384849 () Bool)

(assert (=> b!7987738 (= e!4707624 (and tp!2384851 tp!2384849))))

(declare-fun b!7987737 () Bool)

(assert (=> b!7987737 (= e!4707624 tp_is_empty!53645)))

(assert (= (and b!7986511 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987737))

(assert (= (and b!7986511 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987738))

(assert (= (and b!7986511 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987739))

(assert (= (and b!7986511 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regTwo!43614 baseR!116))))) b!7987740))

(declare-fun b!7987744 () Bool)

(declare-fun e!4707625 () Bool)

(declare-fun tp!2384853 () Bool)

(declare-fun tp!2384852 () Bool)

(assert (=> b!7987744 (= e!4707625 (and tp!2384853 tp!2384852))))

(assert (=> b!7986615 (= tp!2384474 e!4707625)))

(declare-fun b!7987743 () Bool)

(declare-fun tp!2384855 () Bool)

(assert (=> b!7987743 (= e!4707625 tp!2384855)))

(declare-fun b!7987742 () Bool)

(declare-fun tp!2384856 () Bool)

(declare-fun tp!2384854 () Bool)

(assert (=> b!7987742 (= e!4707625 (and tp!2384856 tp!2384854))))

(declare-fun b!7987741 () Bool)

(assert (=> b!7987741 (= e!4707625 tp_is_empty!53645)))

(assert (= (and b!7986615 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987741))

(assert (= (and b!7986615 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987742))

(assert (= (and b!7986615 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987743))

(assert (= (and b!7986615 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987744))

(declare-fun b!7987748 () Bool)

(declare-fun e!4707626 () Bool)

(declare-fun tp!2384858 () Bool)

(declare-fun tp!2384857 () Bool)

(assert (=> b!7987748 (= e!4707626 (and tp!2384858 tp!2384857))))

(assert (=> b!7986615 (= tp!2384472 e!4707626)))

(declare-fun b!7987747 () Bool)

(declare-fun tp!2384860 () Bool)

(assert (=> b!7987747 (= e!4707626 tp!2384860)))

(declare-fun b!7987746 () Bool)

(declare-fun tp!2384861 () Bool)

(declare-fun tp!2384859 () Bool)

(assert (=> b!7987746 (= e!4707626 (and tp!2384861 tp!2384859))))

(declare-fun b!7987745 () Bool)

(assert (=> b!7987745 (= e!4707626 tp_is_empty!53645)))

(assert (= (and b!7986615 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987745))

(assert (= (and b!7986615 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987746))

(assert (= (and b!7986615 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987747))

(assert (= (and b!7986615 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regTwo!43614 r!24602))))) b!7987748))

(declare-fun b!7987752 () Bool)

(declare-fun e!4707627 () Bool)

(declare-fun tp!2384863 () Bool)

(declare-fun tp!2384862 () Bool)

(assert (=> b!7987752 (= e!4707627 (and tp!2384863 tp!2384862))))

(assert (=> b!7986624 (= tp!2384483 e!4707627)))

(declare-fun b!7987751 () Bool)

(declare-fun tp!2384865 () Bool)

(assert (=> b!7987751 (= e!4707627 tp!2384865)))

(declare-fun b!7987750 () Bool)

(declare-fun tp!2384866 () Bool)

(declare-fun tp!2384864 () Bool)

(assert (=> b!7987750 (= e!4707627 (and tp!2384866 tp!2384864))))

(declare-fun b!7987749 () Bool)

(assert (=> b!7987749 (= e!4707627 tp_is_empty!53645)))

(assert (= (and b!7986624 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (reg!21880 baseR!116))))) b!7987749))

(assert (= (and b!7986624 ((_ is Concat!30550) (reg!21880 (regOne!43614 (reg!21880 baseR!116))))) b!7987750))

(assert (= (and b!7986624 ((_ is Star!21551) (reg!21880 (regOne!43614 (reg!21880 baseR!116))))) b!7987751))

(assert (= (and b!7986624 ((_ is Union!21551) (reg!21880 (regOne!43614 (reg!21880 baseR!116))))) b!7987752))

(declare-fun b!7987756 () Bool)

(declare-fun e!4707628 () Bool)

(declare-fun tp!2384868 () Bool)

(declare-fun tp!2384867 () Bool)

(assert (=> b!7987756 (= e!4707628 (and tp!2384868 tp!2384867))))

(assert (=> b!7986569 (= tp!2384411 e!4707628)))

(declare-fun b!7987755 () Bool)

(declare-fun tp!2384870 () Bool)

(assert (=> b!7987755 (= e!4707628 tp!2384870)))

(declare-fun b!7987754 () Bool)

(declare-fun tp!2384871 () Bool)

(declare-fun tp!2384869 () Bool)

(assert (=> b!7987754 (= e!4707628 (and tp!2384871 tp!2384869))))

(declare-fun b!7987753 () Bool)

(assert (=> b!7987753 (= e!4707628 tp_is_empty!53645)))

(assert (= (and b!7986569 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987753))

(assert (= (and b!7986569 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987754))

(assert (= (and b!7986569 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987755))

(assert (= (and b!7986569 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987756))

(declare-fun b!7987760 () Bool)

(declare-fun e!4707629 () Bool)

(declare-fun tp!2384873 () Bool)

(declare-fun tp!2384872 () Bool)

(assert (=> b!7987760 (= e!4707629 (and tp!2384873 tp!2384872))))

(assert (=> b!7986569 (= tp!2384410 e!4707629)))

(declare-fun b!7987759 () Bool)

(declare-fun tp!2384875 () Bool)

(assert (=> b!7987759 (= e!4707629 tp!2384875)))

(declare-fun b!7987758 () Bool)

(declare-fun tp!2384876 () Bool)

(declare-fun tp!2384874 () Bool)

(assert (=> b!7987758 (= e!4707629 (and tp!2384876 tp!2384874))))

(declare-fun b!7987757 () Bool)

(assert (=> b!7987757 (= e!4707629 tp_is_empty!53645)))

(assert (= (and b!7986569 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987757))

(assert (= (and b!7986569 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987758))

(assert (= (and b!7986569 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987759))

(assert (= (and b!7986569 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regTwo!43615 r!24602))))) b!7987760))

(declare-fun b!7987764 () Bool)

(declare-fun e!4707630 () Bool)

(declare-fun tp!2384878 () Bool)

(declare-fun tp!2384877 () Bool)

(assert (=> b!7987764 (= e!4707630 (and tp!2384878 tp!2384877))))

(assert (=> b!7986667 (= tp!2384539 e!4707630)))

(declare-fun b!7987763 () Bool)

(declare-fun tp!2384880 () Bool)

(assert (=> b!7987763 (= e!4707630 tp!2384880)))

(declare-fun b!7987762 () Bool)

(declare-fun tp!2384881 () Bool)

(declare-fun tp!2384879 () Bool)

(assert (=> b!7987762 (= e!4707630 (and tp!2384881 tp!2384879))))

(declare-fun b!7987761 () Bool)

(assert (=> b!7987761 (= e!4707630 tp_is_empty!53645)))

(assert (= (and b!7986667 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987761))

(assert (= (and b!7986667 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987762))

(assert (= (and b!7986667 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987763))

(assert (= (and b!7986667 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987764))

(declare-fun b!7987768 () Bool)

(declare-fun e!4707631 () Bool)

(declare-fun tp!2384883 () Bool)

(declare-fun tp!2384882 () Bool)

(assert (=> b!7987768 (= e!4707631 (and tp!2384883 tp!2384882))))

(assert (=> b!7986667 (= tp!2384537 e!4707631)))

(declare-fun b!7987767 () Bool)

(declare-fun tp!2384885 () Bool)

(assert (=> b!7987767 (= e!4707631 tp!2384885)))

(declare-fun b!7987766 () Bool)

(declare-fun tp!2384886 () Bool)

(declare-fun tp!2384884 () Bool)

(assert (=> b!7987766 (= e!4707631 (and tp!2384886 tp!2384884))))

(declare-fun b!7987765 () Bool)

(assert (=> b!7987765 (= e!4707631 tp_is_empty!53645)))

(assert (= (and b!7986667 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987765))

(assert (= (and b!7986667 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987766))

(assert (= (and b!7986667 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987767))

(assert (= (and b!7986667 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regOne!43614 r!24602))))) b!7987768))

(declare-fun b!7987772 () Bool)

(declare-fun e!4707632 () Bool)

(declare-fun tp!2384888 () Bool)

(declare-fun tp!2384887 () Bool)

(assert (=> b!7987772 (= e!4707632 (and tp!2384888 tp!2384887))))

(assert (=> b!7986676 (= tp!2384548 e!4707632)))

(declare-fun b!7987771 () Bool)

(declare-fun tp!2384890 () Bool)

(assert (=> b!7987771 (= e!4707632 tp!2384890)))

(declare-fun b!7987770 () Bool)

(declare-fun tp!2384891 () Bool)

(declare-fun tp!2384889 () Bool)

(assert (=> b!7987770 (= e!4707632 (and tp!2384891 tp!2384889))))

(declare-fun b!7987769 () Bool)

(assert (=> b!7987769 (= e!4707632 tp_is_empty!53645)))

(assert (= (and b!7986676 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regOne!43615 baseR!116))))) b!7987769))

(assert (= (and b!7986676 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regOne!43615 baseR!116))))) b!7987770))

(assert (= (and b!7986676 ((_ is Star!21551) (reg!21880 (regOne!43615 (regOne!43615 baseR!116))))) b!7987771))

(assert (= (and b!7986676 ((_ is Union!21551) (reg!21880 (regOne!43615 (regOne!43615 baseR!116))))) b!7987772))

(declare-fun b!7987776 () Bool)

(declare-fun e!4707633 () Bool)

(declare-fun tp!2384893 () Bool)

(declare-fun tp!2384892 () Bool)

(assert (=> b!7987776 (= e!4707633 (and tp!2384893 tp!2384892))))

(assert (=> b!7986477 (= tp!2384317 e!4707633)))

(declare-fun b!7987775 () Bool)

(declare-fun tp!2384895 () Bool)

(assert (=> b!7987775 (= e!4707633 tp!2384895)))

(declare-fun b!7987774 () Bool)

(declare-fun tp!2384896 () Bool)

(declare-fun tp!2384894 () Bool)

(assert (=> b!7987774 (= e!4707633 (and tp!2384896 tp!2384894))))

(declare-fun b!7987773 () Bool)

(assert (=> b!7987773 (= e!4707633 tp_is_empty!53645)))

(assert (= (and b!7986477 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regOne!43615 r!24602))))) b!7987773))

(assert (= (and b!7986477 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regOne!43615 r!24602))))) b!7987774))

(assert (= (and b!7986477 ((_ is Star!21551) (reg!21880 (regOne!43615 (regOne!43615 r!24602))))) b!7987775))

(assert (= (and b!7986477 ((_ is Union!21551) (reg!21880 (regOne!43615 (regOne!43615 r!24602))))) b!7987776))

(declare-fun b!7987780 () Bool)

(declare-fun e!4707634 () Bool)

(declare-fun tp!2384898 () Bool)

(declare-fun tp!2384897 () Bool)

(assert (=> b!7987780 (= e!4707634 (and tp!2384898 tp!2384897))))

(assert (=> b!7986576 (= tp!2384423 e!4707634)))

(declare-fun b!7987779 () Bool)

(declare-fun tp!2384900 () Bool)

(assert (=> b!7987779 (= e!4707634 tp!2384900)))

(declare-fun b!7987778 () Bool)

(declare-fun tp!2384901 () Bool)

(declare-fun tp!2384899 () Bool)

(assert (=> b!7987778 (= e!4707634 (and tp!2384901 tp!2384899))))

(declare-fun b!7987777 () Bool)

(assert (=> b!7987777 (= e!4707634 tp_is_empty!53645)))

(assert (= (and b!7986576 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7987777))

(assert (= (and b!7986576 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7987778))

(assert (= (and b!7986576 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7987779))

(assert (= (and b!7986576 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7987780))

(declare-fun b!7987784 () Bool)

(declare-fun e!4707635 () Bool)

(declare-fun tp!2384903 () Bool)

(declare-fun tp!2384902 () Bool)

(assert (=> b!7987784 (= e!4707635 (and tp!2384903 tp!2384902))))

(assert (=> b!7986486 (= tp!2384325 e!4707635)))

(declare-fun b!7987783 () Bool)

(declare-fun tp!2384905 () Bool)

(assert (=> b!7987783 (= e!4707635 tp!2384905)))

(declare-fun b!7987782 () Bool)

(declare-fun tp!2384906 () Bool)

(declare-fun tp!2384904 () Bool)

(assert (=> b!7987782 (= e!4707635 (and tp!2384906 tp!2384904))))

(declare-fun b!7987781 () Bool)

(assert (=> b!7987781 (= e!4707635 tp_is_empty!53645)))

(assert (= (and b!7986486 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987781))

(assert (= (and b!7986486 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987782))

(assert (= (and b!7986486 ((_ is Star!21551) (regOne!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987783))

(assert (= (and b!7986486 ((_ is Union!21551) (regOne!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987784))

(declare-fun b!7987788 () Bool)

(declare-fun e!4707636 () Bool)

(declare-fun tp!2384908 () Bool)

(declare-fun tp!2384907 () Bool)

(assert (=> b!7987788 (= e!4707636 (and tp!2384908 tp!2384907))))

(assert (=> b!7986486 (= tp!2384324 e!4707636)))

(declare-fun b!7987787 () Bool)

(declare-fun tp!2384910 () Bool)

(assert (=> b!7987787 (= e!4707636 tp!2384910)))

(declare-fun b!7987786 () Bool)

(declare-fun tp!2384911 () Bool)

(declare-fun tp!2384909 () Bool)

(assert (=> b!7987786 (= e!4707636 (and tp!2384911 tp!2384909))))

(declare-fun b!7987785 () Bool)

(assert (=> b!7987785 (= e!4707636 tp_is_empty!53645)))

(assert (= (and b!7986486 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987785))

(assert (= (and b!7986486 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987786))

(assert (= (and b!7986486 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987787))

(assert (= (and b!7986486 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regTwo!43614 baseR!116))))) b!7987788))

(declare-fun b!7987792 () Bool)

(declare-fun e!4707637 () Bool)

(declare-fun tp!2384913 () Bool)

(declare-fun tp!2384912 () Bool)

(assert (=> b!7987792 (= e!4707637 (and tp!2384913 tp!2384912))))

(assert (=> b!7986535 (= tp!2384389 e!4707637)))

(declare-fun b!7987791 () Bool)

(declare-fun tp!2384915 () Bool)

(assert (=> b!7987791 (= e!4707637 tp!2384915)))

(declare-fun b!7987790 () Bool)

(declare-fun tp!2384916 () Bool)

(declare-fun tp!2384914 () Bool)

(assert (=> b!7987790 (= e!4707637 (and tp!2384916 tp!2384914))))

(declare-fun b!7987789 () Bool)

(assert (=> b!7987789 (= e!4707637 tp_is_empty!53645)))

(assert (= (and b!7986535 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987789))

(assert (= (and b!7986535 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987790))

(assert (= (and b!7986535 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987791))

(assert (= (and b!7986535 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987792))

(declare-fun b!7987796 () Bool)

(declare-fun e!4707638 () Bool)

(declare-fun tp!2384918 () Bool)

(declare-fun tp!2384917 () Bool)

(assert (=> b!7987796 (= e!4707638 (and tp!2384918 tp!2384917))))

(assert (=> b!7986535 (= tp!2384387 e!4707638)))

(declare-fun b!7987795 () Bool)

(declare-fun tp!2384920 () Bool)

(assert (=> b!7987795 (= e!4707638 tp!2384920)))

(declare-fun b!7987794 () Bool)

(declare-fun tp!2384921 () Bool)

(declare-fun tp!2384919 () Bool)

(assert (=> b!7987794 (= e!4707638 (and tp!2384921 tp!2384919))))

(declare-fun b!7987793 () Bool)

(assert (=> b!7987793 (= e!4707638 tp_is_empty!53645)))

(assert (= (and b!7986535 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987793))

(assert (= (and b!7986535 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987794))

(assert (= (and b!7986535 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987795))

(assert (= (and b!7986535 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7987796))

(declare-fun b!7987800 () Bool)

(declare-fun e!4707639 () Bool)

(declare-fun tp!2384923 () Bool)

(declare-fun tp!2384922 () Bool)

(assert (=> b!7987800 (= e!4707639 (and tp!2384923 tp!2384922))))

(assert (=> b!7986601 (= tp!2384451 e!4707639)))

(declare-fun b!7987799 () Bool)

(declare-fun tp!2384925 () Bool)

(assert (=> b!7987799 (= e!4707639 tp!2384925)))

(declare-fun b!7987798 () Bool)

(declare-fun tp!2384926 () Bool)

(declare-fun tp!2384924 () Bool)

(assert (=> b!7987798 (= e!4707639 (and tp!2384926 tp!2384924))))

(declare-fun b!7987797 () Bool)

(assert (=> b!7987797 (= e!4707639 tp_is_empty!53645)))

(assert (= (and b!7986601 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987797))

(assert (= (and b!7986601 ((_ is Concat!30550) (regOne!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987798))

(assert (= (and b!7986601 ((_ is Star!21551) (regOne!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987799))

(assert (= (and b!7986601 ((_ is Union!21551) (regOne!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987800))

(declare-fun b!7987804 () Bool)

(declare-fun e!4707640 () Bool)

(declare-fun tp!2384928 () Bool)

(declare-fun tp!2384927 () Bool)

(assert (=> b!7987804 (= e!4707640 (and tp!2384928 tp!2384927))))

(assert (=> b!7986601 (= tp!2384450 e!4707640)))

(declare-fun b!7987803 () Bool)

(declare-fun tp!2384930 () Bool)

(assert (=> b!7987803 (= e!4707640 tp!2384930)))

(declare-fun b!7987802 () Bool)

(declare-fun tp!2384931 () Bool)

(declare-fun tp!2384929 () Bool)

(assert (=> b!7987802 (= e!4707640 (and tp!2384931 tp!2384929))))

(declare-fun b!7987801 () Bool)

(assert (=> b!7987801 (= e!4707640 tp_is_empty!53645)))

(assert (= (and b!7986601 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987801))

(assert (= (and b!7986601 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987802))

(assert (= (and b!7986601 ((_ is Star!21551) (regTwo!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987803))

(assert (= (and b!7986601 ((_ is Union!21551) (regTwo!43615 (reg!21880 (reg!21880 baseR!116))))) b!7987804))

(declare-fun b!7987808 () Bool)

(declare-fun e!4707641 () Bool)

(declare-fun tp!2384933 () Bool)

(declare-fun tp!2384932 () Bool)

(assert (=> b!7987808 (= e!4707641 (and tp!2384933 tp!2384932))))

(assert (=> b!7986583 (= tp!2384434 e!4707641)))

(declare-fun b!7987807 () Bool)

(declare-fun tp!2384935 () Bool)

(assert (=> b!7987807 (= e!4707641 tp!2384935)))

(declare-fun b!7987806 () Bool)

(declare-fun tp!2384936 () Bool)

(declare-fun tp!2384934 () Bool)

(assert (=> b!7987806 (= e!4707641 (and tp!2384936 tp!2384934))))

(declare-fun b!7987805 () Bool)

(assert (=> b!7987805 (= e!4707641 tp_is_empty!53645)))

(assert (= (and b!7986583 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987805))

(assert (= (and b!7986583 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987806))

(assert (= (and b!7986583 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987807))

(assert (= (and b!7986583 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987808))

(declare-fun b!7987812 () Bool)

(declare-fun e!4707642 () Bool)

(declare-fun tp!2384938 () Bool)

(declare-fun tp!2384937 () Bool)

(assert (=> b!7987812 (= e!4707642 (and tp!2384938 tp!2384937))))

(assert (=> b!7986583 (= tp!2384432 e!4707642)))

(declare-fun b!7987811 () Bool)

(declare-fun tp!2384940 () Bool)

(assert (=> b!7987811 (= e!4707642 tp!2384940)))

(declare-fun b!7987810 () Bool)

(declare-fun tp!2384941 () Bool)

(declare-fun tp!2384939 () Bool)

(assert (=> b!7987810 (= e!4707642 (and tp!2384941 tp!2384939))))

(declare-fun b!7987809 () Bool)

(assert (=> b!7987809 (= e!4707642 tp_is_empty!53645)))

(assert (= (and b!7986583 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987809))

(assert (= (and b!7986583 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987810))

(assert (= (and b!7986583 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987811))

(assert (= (and b!7986583 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regTwo!43614 r!24602))))) b!7987812))

(declare-fun b!7987816 () Bool)

(declare-fun e!4707643 () Bool)

(declare-fun tp!2384943 () Bool)

(declare-fun tp!2384942 () Bool)

(assert (=> b!7987816 (= e!4707643 (and tp!2384943 tp!2384942))))

(assert (=> b!7986592 (= tp!2384443 e!4707643)))

(declare-fun b!7987815 () Bool)

(declare-fun tp!2384945 () Bool)

(assert (=> b!7987815 (= e!4707643 tp!2384945)))

(declare-fun b!7987814 () Bool)

(declare-fun tp!2384946 () Bool)

(declare-fun tp!2384944 () Bool)

(assert (=> b!7987814 (= e!4707643 (and tp!2384946 tp!2384944))))

(declare-fun b!7987813 () Bool)

(assert (=> b!7987813 (= e!4707643 tp_is_empty!53645)))

(assert (= (and b!7986592 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regTwo!43615 r!24602))))) b!7987813))

(assert (= (and b!7986592 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regTwo!43615 r!24602))))) b!7987814))

(assert (= (and b!7986592 ((_ is Star!21551) (reg!21880 (regOne!43615 (regTwo!43615 r!24602))))) b!7987815))

(assert (= (and b!7986592 ((_ is Union!21551) (reg!21880 (regOne!43615 (regTwo!43615 r!24602))))) b!7987816))

(declare-fun b!7987820 () Bool)

(declare-fun e!4707644 () Bool)

(declare-fun tp!2384948 () Bool)

(declare-fun tp!2384947 () Bool)

(assert (=> b!7987820 (= e!4707644 (and tp!2384948 tp!2384947))))

(assert (=> b!7986584 (= tp!2384433 e!4707644)))

(declare-fun b!7987819 () Bool)

(declare-fun tp!2384950 () Bool)

(assert (=> b!7987819 (= e!4707644 tp!2384950)))

(declare-fun b!7987818 () Bool)

(declare-fun tp!2384951 () Bool)

(declare-fun tp!2384949 () Bool)

(assert (=> b!7987818 (= e!4707644 (and tp!2384951 tp!2384949))))

(declare-fun b!7987817 () Bool)

(assert (=> b!7987817 (= e!4707644 tp_is_empty!53645)))

(assert (= (and b!7986584 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regTwo!43614 r!24602))))) b!7987817))

(assert (= (and b!7986584 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regTwo!43614 r!24602))))) b!7987818))

(assert (= (and b!7986584 ((_ is Star!21551) (reg!21880 (regOne!43614 (regTwo!43614 r!24602))))) b!7987819))

(assert (= (and b!7986584 ((_ is Union!21551) (reg!21880 (regOne!43614 (regTwo!43614 r!24602))))) b!7987820))

(declare-fun b!7987824 () Bool)

(declare-fun e!4707645 () Bool)

(declare-fun tp!2384953 () Bool)

(declare-fun tp!2384952 () Bool)

(assert (=> b!7987824 (= e!4707645 (and tp!2384953 tp!2384952))))

(assert (=> b!7986529 (= tp!2384384 e!4707645)))

(declare-fun b!7987823 () Bool)

(declare-fun tp!2384955 () Bool)

(assert (=> b!7987823 (= e!4707645 tp!2384955)))

(declare-fun b!7987822 () Bool)

(declare-fun tp!2384956 () Bool)

(declare-fun tp!2384954 () Bool)

(assert (=> b!7987822 (= e!4707645 (and tp!2384956 tp!2384954))))

(declare-fun b!7987821 () Bool)

(assert (=> b!7987821 (= e!4707645 tp_is_empty!53645)))

(assert (= (and b!7986529 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987821))

(assert (= (and b!7986529 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987822))

(assert (= (and b!7986529 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987823))

(assert (= (and b!7986529 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987824))

(declare-fun b!7987828 () Bool)

(declare-fun e!4707646 () Bool)

(declare-fun tp!2384958 () Bool)

(declare-fun tp!2384957 () Bool)

(assert (=> b!7987828 (= e!4707646 (and tp!2384958 tp!2384957))))

(assert (=> b!7986529 (= tp!2384382 e!4707646)))

(declare-fun b!7987827 () Bool)

(declare-fun tp!2384960 () Bool)

(assert (=> b!7987827 (= e!4707646 tp!2384960)))

(declare-fun b!7987826 () Bool)

(declare-fun tp!2384961 () Bool)

(declare-fun tp!2384959 () Bool)

(assert (=> b!7987826 (= e!4707646 (and tp!2384961 tp!2384959))))

(declare-fun b!7987825 () Bool)

(assert (=> b!7987825 (= e!4707646 tp_is_empty!53645)))

(assert (= (and b!7986529 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987825))

(assert (= (and b!7986529 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987826))

(assert (= (and b!7986529 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987827))

(assert (= (and b!7986529 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regTwo!43615 baseR!116))))) b!7987828))

(declare-fun b!7987832 () Bool)

(declare-fun e!4707647 () Bool)

(declare-fun tp!2384963 () Bool)

(declare-fun tp!2384962 () Bool)

(assert (=> b!7987832 (= e!4707647 (and tp!2384963 tp!2384962))))

(assert (=> b!7986627 (= tp!2384489 e!4707647)))

(declare-fun b!7987831 () Bool)

(declare-fun tp!2384965 () Bool)

(assert (=> b!7987831 (= e!4707647 tp!2384965)))

(declare-fun b!7987830 () Bool)

(declare-fun tp!2384966 () Bool)

(declare-fun tp!2384964 () Bool)

(assert (=> b!7987830 (= e!4707647 (and tp!2384966 tp!2384964))))

(declare-fun b!7987829 () Bool)

(assert (=> b!7987829 (= e!4707647 tp_is_empty!53645)))

(assert (= (and b!7986627 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987829))

(assert (= (and b!7986627 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987830))

(assert (= (and b!7986627 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987831))

(assert (= (and b!7986627 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987832))

(declare-fun b!7987836 () Bool)

(declare-fun e!4707648 () Bool)

(declare-fun tp!2384968 () Bool)

(declare-fun tp!2384967 () Bool)

(assert (=> b!7987836 (= e!4707648 (and tp!2384968 tp!2384967))))

(assert (=> b!7986627 (= tp!2384487 e!4707648)))

(declare-fun b!7987835 () Bool)

(declare-fun tp!2384970 () Bool)

(assert (=> b!7987835 (= e!4707648 tp!2384970)))

(declare-fun b!7987834 () Bool)

(declare-fun tp!2384971 () Bool)

(declare-fun tp!2384969 () Bool)

(assert (=> b!7987834 (= e!4707648 (and tp!2384971 tp!2384969))))

(declare-fun b!7987833 () Bool)

(assert (=> b!7987833 (= e!4707648 tp_is_empty!53645)))

(assert (= (and b!7986627 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987833))

(assert (= (and b!7986627 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987834))

(assert (= (and b!7986627 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987835))

(assert (= (and b!7986627 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (reg!21880 baseR!116))))) b!7987836))

(declare-fun b!7987840 () Bool)

(declare-fun e!4707649 () Bool)

(declare-fun tp!2384973 () Bool)

(declare-fun tp!2384972 () Bool)

(assert (=> b!7987840 (= e!4707649 (and tp!2384973 tp!2384972))))

(assert (=> b!7986636 (= tp!2384498 e!4707649)))

(declare-fun b!7987839 () Bool)

(declare-fun tp!2384975 () Bool)

(assert (=> b!7987839 (= e!4707649 tp!2384975)))

(declare-fun b!7987838 () Bool)

(declare-fun tp!2384976 () Bool)

(declare-fun tp!2384974 () Bool)

(assert (=> b!7987838 (= e!4707649 (and tp!2384976 tp!2384974))))

(declare-fun b!7987837 () Bool)

(assert (=> b!7987837 (= e!4707649 tp_is_empty!53645)))

(assert (= (and b!7986636 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regOne!43614 baseR!116))))) b!7987837))

(assert (= (and b!7986636 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regOne!43614 baseR!116))))) b!7987838))

(assert (= (and b!7986636 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regOne!43614 baseR!116))))) b!7987839))

(assert (= (and b!7986636 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regOne!43614 baseR!116))))) b!7987840))

(declare-fun b!7987844 () Bool)

(declare-fun e!4707650 () Bool)

(declare-fun tp!2384978 () Bool)

(declare-fun tp!2384977 () Bool)

(assert (=> b!7987844 (= e!4707650 (and tp!2384978 tp!2384977))))

(assert (=> b!7986645 (= tp!2384506 e!4707650)))

(declare-fun b!7987843 () Bool)

(declare-fun tp!2384980 () Bool)

(assert (=> b!7987843 (= e!4707650 tp!2384980)))

(declare-fun b!7987842 () Bool)

(declare-fun tp!2384981 () Bool)

(declare-fun tp!2384979 () Bool)

(assert (=> b!7987842 (= e!4707650 (and tp!2384981 tp!2384979))))

(declare-fun b!7987841 () Bool)

(assert (=> b!7987841 (= e!4707650 tp_is_empty!53645)))

(assert (= (and b!7986645 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987841))

(assert (= (and b!7986645 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987842))

(assert (= (and b!7986645 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987843))

(assert (= (and b!7986645 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987844))

(declare-fun b!7987848 () Bool)

(declare-fun e!4707651 () Bool)

(declare-fun tp!2384983 () Bool)

(declare-fun tp!2384982 () Bool)

(assert (=> b!7987848 (= e!4707651 (and tp!2384983 tp!2384982))))

(assert (=> b!7986645 (= tp!2384505 e!4707651)))

(declare-fun b!7987847 () Bool)

(declare-fun tp!2384985 () Bool)

(assert (=> b!7987847 (= e!4707651 tp!2384985)))

(declare-fun b!7987846 () Bool)

(declare-fun tp!2384986 () Bool)

(declare-fun tp!2384984 () Bool)

(assert (=> b!7987846 (= e!4707651 (and tp!2384986 tp!2384984))))

(declare-fun b!7987845 () Bool)

(assert (=> b!7987845 (= e!4707651 tp_is_empty!53645)))

(assert (= (and b!7986645 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987845))

(assert (= (and b!7986645 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987846))

(assert (= (and b!7986645 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987847))

(assert (= (and b!7986645 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (reg!21880 baseR!116))))) b!7987848))

(declare-fun b!7987852 () Bool)

(declare-fun e!4707652 () Bool)

(declare-fun tp!2384988 () Bool)

(declare-fun tp!2384987 () Bool)

(assert (=> b!7987852 (= e!4707652 (and tp!2384988 tp!2384987))))

(assert (=> b!7986498 (= tp!2384340 e!4707652)))

(declare-fun b!7987851 () Bool)

(declare-fun tp!2384990 () Bool)

(assert (=> b!7987851 (= e!4707652 tp!2384990)))

(declare-fun b!7987850 () Bool)

(declare-fun tp!2384991 () Bool)

(declare-fun tp!2384989 () Bool)

(assert (=> b!7987850 (= e!4707652 (and tp!2384991 tp!2384989))))

(declare-fun b!7987849 () Bool)

(assert (=> b!7987849 (= e!4707652 tp_is_empty!53645)))

(assert (= (and b!7986498 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987849))

(assert (= (and b!7986498 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987850))

(assert (= (and b!7986498 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987851))

(assert (= (and b!7986498 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987852))

(declare-fun b!7987856 () Bool)

(declare-fun e!4707653 () Bool)

(declare-fun tp!2384993 () Bool)

(declare-fun tp!2384992 () Bool)

(assert (=> b!7987856 (= e!4707653 (and tp!2384993 tp!2384992))))

(assert (=> b!7986498 (= tp!2384339 e!4707653)))

(declare-fun b!7987855 () Bool)

(declare-fun tp!2384995 () Bool)

(assert (=> b!7987855 (= e!4707653 tp!2384995)))

(declare-fun b!7987854 () Bool)

(declare-fun tp!2384996 () Bool)

(declare-fun tp!2384994 () Bool)

(assert (=> b!7987854 (= e!4707653 (and tp!2384996 tp!2384994))))

(declare-fun b!7987853 () Bool)

(assert (=> b!7987853 (= e!4707653 tp_is_empty!53645)))

(assert (= (and b!7986498 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987853))

(assert (= (and b!7986498 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987854))

(assert (= (and b!7986498 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987855))

(assert (= (and b!7986498 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regOne!43614 r!24602))))) b!7987856))

(declare-fun b!7987860 () Bool)

(declare-fun e!4707654 () Bool)

(declare-fun tp!2384998 () Bool)

(declare-fun tp!2384997 () Bool)

(assert (=> b!7987860 (= e!4707654 (and tp!2384998 tp!2384997))))

(assert (=> b!7986514 (= tp!2384363 e!4707654)))

(declare-fun b!7987859 () Bool)

(declare-fun tp!2385000 () Bool)

(assert (=> b!7987859 (= e!4707654 tp!2385000)))

(declare-fun b!7987858 () Bool)

(declare-fun tp!2385001 () Bool)

(declare-fun tp!2384999 () Bool)

(assert (=> b!7987858 (= e!4707654 (and tp!2385001 tp!2384999))))

(declare-fun b!7987857 () Bool)

(assert (=> b!7987857 (= e!4707654 tp_is_empty!53645)))

(assert (= (and b!7986514 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7987857))

(assert (= (and b!7986514 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7987858))

(assert (= (and b!7986514 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7987859))

(assert (= (and b!7986514 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7987860))

(declare-fun b!7987864 () Bool)

(declare-fun e!4707655 () Bool)

(declare-fun tp!2385003 () Bool)

(declare-fun tp!2385002 () Bool)

(assert (=> b!7987864 (= e!4707655 (and tp!2385003 tp!2385002))))

(assert (=> b!7986523 (= tp!2384371 e!4707655)))

(declare-fun b!7987863 () Bool)

(declare-fun tp!2385005 () Bool)

(assert (=> b!7987863 (= e!4707655 tp!2385005)))

(declare-fun b!7987862 () Bool)

(declare-fun tp!2385006 () Bool)

(declare-fun tp!2385004 () Bool)

(assert (=> b!7987862 (= e!4707655 (and tp!2385006 tp!2385004))))

(declare-fun b!7987861 () Bool)

(assert (=> b!7987861 (= e!4707655 tp_is_empty!53645)))

(assert (= (and b!7986523 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987861))

(assert (= (and b!7986523 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987862))

(assert (= (and b!7986523 ((_ is Star!21551) (regOne!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987863))

(assert (= (and b!7986523 ((_ is Union!21551) (regOne!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987864))

(declare-fun b!7987868 () Bool)

(declare-fun e!4707656 () Bool)

(declare-fun tp!2385008 () Bool)

(declare-fun tp!2385007 () Bool)

(assert (=> b!7987868 (= e!4707656 (and tp!2385008 tp!2385007))))

(assert (=> b!7986523 (= tp!2384370 e!4707656)))

(declare-fun b!7987867 () Bool)

(declare-fun tp!2385010 () Bool)

(assert (=> b!7987867 (= e!4707656 tp!2385010)))

(declare-fun b!7987866 () Bool)

(declare-fun tp!2385011 () Bool)

(declare-fun tp!2385009 () Bool)

(assert (=> b!7987866 (= e!4707656 (and tp!2385011 tp!2385009))))

(declare-fun b!7987865 () Bool)

(assert (=> b!7987865 (= e!4707656 tp_is_empty!53645)))

(assert (= (and b!7986523 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987865))

(assert (= (and b!7986523 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987866))

(assert (= (and b!7986523 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987867))

(assert (= (and b!7986523 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (reg!21880 r!24602))))) b!7987868))

(declare-fun b!7987872 () Bool)

(declare-fun e!4707657 () Bool)

(declare-fun tp!2385013 () Bool)

(declare-fun tp!2385012 () Bool)

(assert (=> b!7987872 (= e!4707657 (and tp!2385013 tp!2385012))))

(assert (=> b!7986563 (= tp!2384406 e!4707657)))

(declare-fun b!7987871 () Bool)

(declare-fun tp!2385015 () Bool)

(assert (=> b!7987871 (= e!4707657 tp!2385015)))

(declare-fun b!7987870 () Bool)

(declare-fun tp!2385016 () Bool)

(declare-fun tp!2385014 () Bool)

(assert (=> b!7987870 (= e!4707657 (and tp!2385016 tp!2385014))))

(declare-fun b!7987869 () Bool)

(assert (=> b!7987869 (= e!4707657 tp_is_empty!53645)))

(assert (= (and b!7986563 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987869))

(assert (= (and b!7986563 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987870))

(assert (= (and b!7986563 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987871))

(assert (= (and b!7986563 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987872))

(declare-fun b!7987876 () Bool)

(declare-fun e!4707658 () Bool)

(declare-fun tp!2385018 () Bool)

(declare-fun tp!2385017 () Bool)

(assert (=> b!7987876 (= e!4707658 (and tp!2385018 tp!2385017))))

(assert (=> b!7986563 (= tp!2384405 e!4707658)))

(declare-fun b!7987875 () Bool)

(declare-fun tp!2385020 () Bool)

(assert (=> b!7987875 (= e!4707658 tp!2385020)))

(declare-fun b!7987874 () Bool)

(declare-fun tp!2385021 () Bool)

(declare-fun tp!2385019 () Bool)

(assert (=> b!7987874 (= e!4707658 (and tp!2385021 tp!2385019))))

(declare-fun b!7987873 () Bool)

(assert (=> b!7987873 (= e!4707658 tp_is_empty!53645)))

(assert (= (and b!7986563 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987873))

(assert (= (and b!7986563 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987874))

(assert (= (and b!7986563 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987875))

(assert (= (and b!7986563 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regTwo!43615 r!24602))))) b!7987876))

(declare-fun b!7987880 () Bool)

(declare-fun e!4707659 () Bool)

(declare-fun tp!2385023 () Bool)

(declare-fun tp!2385022 () Bool)

(assert (=> b!7987880 (= e!4707659 (and tp!2385023 tp!2385022))))

(assert (=> b!7986473 (= tp!2384309 e!4707659)))

(declare-fun b!7987879 () Bool)

(declare-fun tp!2385025 () Bool)

(assert (=> b!7987879 (= e!4707659 tp!2385025)))

(declare-fun b!7987878 () Bool)

(declare-fun tp!2385026 () Bool)

(declare-fun tp!2385024 () Bool)

(assert (=> b!7987878 (= e!4707659 (and tp!2385026 tp!2385024))))

(declare-fun b!7987877 () Bool)

(assert (=> b!7987877 (= e!4707659 tp_is_empty!53645)))

(assert (= (and b!7986473 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987877))

(assert (= (and b!7986473 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987878))

(assert (= (and b!7986473 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987879))

(assert (= (and b!7986473 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987880))

(declare-fun b!7987884 () Bool)

(declare-fun e!4707660 () Bool)

(declare-fun tp!2385028 () Bool)

(declare-fun tp!2385027 () Bool)

(assert (=> b!7987884 (= e!4707660 (and tp!2385028 tp!2385027))))

(assert (=> b!7986473 (= tp!2384308 e!4707660)))

(declare-fun b!7987883 () Bool)

(declare-fun tp!2385030 () Bool)

(assert (=> b!7987883 (= e!4707660 tp!2385030)))

(declare-fun b!7987882 () Bool)

(declare-fun tp!2385031 () Bool)

(declare-fun tp!2385029 () Bool)

(assert (=> b!7987882 (= e!4707660 (and tp!2385031 tp!2385029))))

(declare-fun b!7987881 () Bool)

(assert (=> b!7987881 (= e!4707660 tp_is_empty!53645)))

(assert (= (and b!7986473 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987881))

(assert (= (and b!7986473 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987882))

(assert (= (and b!7986473 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987883))

(assert (= (and b!7986473 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7987884))

(declare-fun b!7987888 () Bool)

(declare-fun e!4707661 () Bool)

(declare-fun tp!2385033 () Bool)

(declare-fun tp!2385032 () Bool)

(assert (=> b!7987888 (= e!4707661 (and tp!2385033 tp!2385032))))

(assert (=> b!7986572 (= tp!2384418 e!4707661)))

(declare-fun b!7987887 () Bool)

(declare-fun tp!2385035 () Bool)

(assert (=> b!7987887 (= e!4707661 tp!2385035)))

(declare-fun b!7987886 () Bool)

(declare-fun tp!2385036 () Bool)

(declare-fun tp!2385034 () Bool)

(assert (=> b!7987886 (= e!4707661 (and tp!2385036 tp!2385034))))

(declare-fun b!7987885 () Bool)

(assert (=> b!7987885 (= e!4707661 tp_is_empty!53645)))

(assert (= (and b!7986572 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regTwo!43615 baseR!116))))) b!7987885))

(assert (= (and b!7986572 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regTwo!43615 baseR!116))))) b!7987886))

(assert (= (and b!7986572 ((_ is Star!21551) (reg!21880 (regOne!43615 (regTwo!43615 baseR!116))))) b!7987887))

(assert (= (and b!7986572 ((_ is Union!21551) (reg!21880 (regOne!43615 (regTwo!43615 baseR!116))))) b!7987888))

(declare-fun b!7987892 () Bool)

(declare-fun e!4707662 () Bool)

(declare-fun tp!2385038 () Bool)

(declare-fun tp!2385037 () Bool)

(assert (=> b!7987892 (= e!4707662 (and tp!2385038 tp!2385037))))

(assert (=> b!7986480 (= tp!2384323 e!4707662)))

(declare-fun b!7987891 () Bool)

(declare-fun tp!2385040 () Bool)

(assert (=> b!7987891 (= e!4707662 tp!2385040)))

(declare-fun b!7987890 () Bool)

(declare-fun tp!2385041 () Bool)

(declare-fun tp!2385039 () Bool)

(assert (=> b!7987890 (= e!4707662 (and tp!2385041 tp!2385039))))

(declare-fun b!7987889 () Bool)

(assert (=> b!7987889 (= e!4707662 tp_is_empty!53645)))

(assert (= (and b!7986480 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987889))

(assert (= (and b!7986480 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987890))

(assert (= (and b!7986480 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987891))

(assert (= (and b!7986480 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987892))

(declare-fun b!7987896 () Bool)

(declare-fun e!4707663 () Bool)

(declare-fun tp!2385043 () Bool)

(declare-fun tp!2385042 () Bool)

(assert (=> b!7987896 (= e!4707663 (and tp!2385043 tp!2385042))))

(assert (=> b!7986480 (= tp!2384321 e!4707663)))

(declare-fun b!7987895 () Bool)

(declare-fun tp!2385045 () Bool)

(assert (=> b!7987895 (= e!4707663 tp!2385045)))

(declare-fun b!7987894 () Bool)

(declare-fun tp!2385046 () Bool)

(declare-fun tp!2385044 () Bool)

(assert (=> b!7987894 (= e!4707663 (and tp!2385046 tp!2385044))))

(declare-fun b!7987893 () Bool)

(assert (=> b!7987893 (= e!4707663 tp_is_empty!53645)))

(assert (= (and b!7986480 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987893))

(assert (= (and b!7986480 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987894))

(assert (= (and b!7986480 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987895))

(assert (= (and b!7986480 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regOne!43615 r!24602))))) b!7987896))

(declare-fun b!7987900 () Bool)

(declare-fun e!4707664 () Bool)

(declare-fun tp!2385048 () Bool)

(declare-fun tp!2385047 () Bool)

(assert (=> b!7987900 (= e!4707664 (and tp!2385048 tp!2385047))))

(assert (=> b!7986684 (= tp!2384553 e!4707664)))

(declare-fun b!7987899 () Bool)

(declare-fun tp!2385050 () Bool)

(assert (=> b!7987899 (= e!4707664 tp!2385050)))

(declare-fun b!7987898 () Bool)

(declare-fun tp!2385051 () Bool)

(declare-fun tp!2385049 () Bool)

(assert (=> b!7987898 (= e!4707664 (and tp!2385051 tp!2385049))))

(declare-fun b!7987897 () Bool)

(assert (=> b!7987897 (= e!4707664 tp_is_empty!53645)))

(assert (= (and b!7986684 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regOne!43615 baseR!116))))) b!7987897))

(assert (= (and b!7986684 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regOne!43615 baseR!116))))) b!7987898))

(assert (= (and b!7986684 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regOne!43615 baseR!116))))) b!7987899))

(assert (= (and b!7986684 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regOne!43615 baseR!116))))) b!7987900))

(declare-fun b!7987904 () Bool)

(declare-fun e!4707665 () Bool)

(declare-fun tp!2385053 () Bool)

(declare-fun tp!2385052 () Bool)

(assert (=> b!7987904 (= e!4707665 (and tp!2385053 tp!2385052))))

(assert (=> b!7986489 (= tp!2384332 e!4707665)))

(declare-fun b!7987903 () Bool)

(declare-fun tp!2385055 () Bool)

(assert (=> b!7987903 (= e!4707665 tp!2385055)))

(declare-fun b!7987902 () Bool)

(declare-fun tp!2385056 () Bool)

(declare-fun tp!2385054 () Bool)

(assert (=> b!7987902 (= e!4707665 (and tp!2385056 tp!2385054))))

(declare-fun b!7987901 () Bool)

(assert (=> b!7987901 (= e!4707665 tp_is_empty!53645)))

(assert (= (and b!7986489 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regOne!43615 r!24602))))) b!7987901))

(assert (= (and b!7986489 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regOne!43615 r!24602))))) b!7987902))

(assert (= (and b!7986489 ((_ is Star!21551) (reg!21880 (regOne!43614 (regOne!43615 r!24602))))) b!7987903))

(assert (= (and b!7986489 ((_ is Union!21551) (reg!21880 (regOne!43614 (regOne!43615 r!24602))))) b!7987904))

(declare-fun b!7987908 () Bool)

(declare-fun e!4707666 () Bool)

(declare-fun tp!2385058 () Bool)

(declare-fun tp!2385057 () Bool)

(assert (=> b!7987908 (= e!4707666 (and tp!2385058 tp!2385057))))

(assert (=> b!7986556 (= tp!2384403 e!4707666)))

(declare-fun b!7987907 () Bool)

(declare-fun tp!2385060 () Bool)

(assert (=> b!7987907 (= e!4707666 tp!2385060)))

(declare-fun b!7987906 () Bool)

(declare-fun tp!2385061 () Bool)

(declare-fun tp!2385059 () Bool)

(assert (=> b!7987906 (= e!4707666 (and tp!2385061 tp!2385059))))

(declare-fun b!7987905 () Bool)

(assert (=> b!7987905 (= e!4707666 tp_is_empty!53645)))

(assert (= (and b!7986556 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regTwo!43614 r!24602))))) b!7987905))

(assert (= (and b!7986556 ((_ is Concat!30550) (reg!21880 (reg!21880 (regTwo!43614 r!24602))))) b!7987906))

(assert (= (and b!7986556 ((_ is Star!21551) (reg!21880 (reg!21880 (regTwo!43614 r!24602))))) b!7987907))

(assert (= (and b!7986556 ((_ is Union!21551) (reg!21880 (reg!21880 (regTwo!43614 r!24602))))) b!7987908))

(declare-fun b!7987912 () Bool)

(declare-fun e!4707667 () Bool)

(declare-fun tp!2385063 () Bool)

(declare-fun tp!2385062 () Bool)

(assert (=> b!7987912 (= e!4707667 (and tp!2385063 tp!2385062))))

(assert (=> b!7986595 (= tp!2384449 e!4707667)))

(declare-fun b!7987911 () Bool)

(declare-fun tp!2385065 () Bool)

(assert (=> b!7987911 (= e!4707667 tp!2385065)))

(declare-fun b!7987910 () Bool)

(declare-fun tp!2385066 () Bool)

(declare-fun tp!2385064 () Bool)

(assert (=> b!7987910 (= e!4707667 (and tp!2385066 tp!2385064))))

(declare-fun b!7987909 () Bool)

(assert (=> b!7987909 (= e!4707667 tp_is_empty!53645)))

(assert (= (and b!7986595 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987909))

(assert (= (and b!7986595 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987910))

(assert (= (and b!7986595 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987911))

(assert (= (and b!7986595 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987912))

(declare-fun b!7987916 () Bool)

(declare-fun e!4707668 () Bool)

(declare-fun tp!2385068 () Bool)

(declare-fun tp!2385067 () Bool)

(assert (=> b!7987916 (= e!4707668 (and tp!2385068 tp!2385067))))

(assert (=> b!7986595 (= tp!2384447 e!4707668)))

(declare-fun b!7987915 () Bool)

(declare-fun tp!2385070 () Bool)

(assert (=> b!7987915 (= e!4707668 tp!2385070)))

(declare-fun b!7987914 () Bool)

(declare-fun tp!2385071 () Bool)

(declare-fun tp!2385069 () Bool)

(assert (=> b!7987914 (= e!4707668 (and tp!2385071 tp!2385069))))

(declare-fun b!7987913 () Bool)

(assert (=> b!7987913 (= e!4707668 tp_is_empty!53645)))

(assert (= (and b!7986595 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987913))

(assert (= (and b!7986595 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987914))

(assert (= (and b!7986595 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987915))

(assert (= (and b!7986595 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regTwo!43615 r!24602))))) b!7987916))

(declare-fun b!7987920 () Bool)

(declare-fun e!4707669 () Bool)

(declare-fun tp!2385073 () Bool)

(declare-fun tp!2385072 () Bool)

(assert (=> b!7987920 (= e!4707669 (and tp!2385073 tp!2385072))))

(assert (=> b!7986604 (= tp!2384458 e!4707669)))

(declare-fun b!7987919 () Bool)

(declare-fun tp!2385075 () Bool)

(assert (=> b!7987919 (= e!4707669 tp!2385075)))

(declare-fun b!7987918 () Bool)

(declare-fun tp!2385076 () Bool)

(declare-fun tp!2385074 () Bool)

(assert (=> b!7987918 (= e!4707669 (and tp!2385076 tp!2385074))))

(declare-fun b!7987917 () Bool)

(assert (=> b!7987917 (= e!4707669 tp_is_empty!53645)))

(assert (= (and b!7986604 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regOne!43614 baseR!116))))) b!7987917))

(assert (= (and b!7986604 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regOne!43614 baseR!116))))) b!7987918))

(assert (= (and b!7986604 ((_ is Star!21551) (reg!21880 (regOne!43614 (regOne!43614 baseR!116))))) b!7987919))

(assert (= (and b!7986604 ((_ is Union!21551) (reg!21880 (regOne!43614 (regOne!43614 baseR!116))))) b!7987920))

(declare-fun b!7987924 () Bool)

(declare-fun e!4707670 () Bool)

(declare-fun tp!2385078 () Bool)

(declare-fun tp!2385077 () Bool)

(assert (=> b!7987924 (= e!4707670 (and tp!2385078 tp!2385077))))

(assert (=> b!7986613 (= tp!2384466 e!4707670)))

(declare-fun b!7987923 () Bool)

(declare-fun tp!2385080 () Bool)

(assert (=> b!7987923 (= e!4707670 tp!2385080)))

(declare-fun b!7987922 () Bool)

(declare-fun tp!2385081 () Bool)

(declare-fun tp!2385079 () Bool)

(assert (=> b!7987922 (= e!4707670 (and tp!2385081 tp!2385079))))

(declare-fun b!7987921 () Bool)

(assert (=> b!7987921 (= e!4707670 tp_is_empty!53645)))

(assert (= (and b!7986613 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987921))

(assert (= (and b!7986613 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987922))

(assert (= (and b!7986613 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987923))

(assert (= (and b!7986613 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987924))

(declare-fun b!7987928 () Bool)

(declare-fun e!4707671 () Bool)

(declare-fun tp!2385083 () Bool)

(declare-fun tp!2385082 () Bool)

(assert (=> b!7987928 (= e!4707671 (and tp!2385083 tp!2385082))))

(assert (=> b!7986613 (= tp!2384465 e!4707671)))

(declare-fun b!7987927 () Bool)

(declare-fun tp!2385085 () Bool)

(assert (=> b!7987927 (= e!4707671 tp!2385085)))

(declare-fun b!7987926 () Bool)

(declare-fun tp!2385086 () Bool)

(declare-fun tp!2385084 () Bool)

(assert (=> b!7987926 (= e!4707671 (and tp!2385086 tp!2385084))))

(declare-fun b!7987925 () Bool)

(assert (=> b!7987925 (= e!4707671 tp_is_empty!53645)))

(assert (= (and b!7986613 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987925))

(assert (= (and b!7986613 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987926))

(assert (= (and b!7986613 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987927))

(assert (= (and b!7986613 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regTwo!43614 r!24602))))) b!7987928))

(declare-fun b!7987932 () Bool)

(declare-fun e!4707672 () Bool)

(declare-fun tp!2385088 () Bool)

(declare-fun tp!2385087 () Bool)

(assert (=> b!7987932 (= e!4707672 (and tp!2385088 tp!2385087))))

(assert (=> b!7986665 (= tp!2384531 e!4707672)))

(declare-fun b!7987931 () Bool)

(declare-fun tp!2385090 () Bool)

(assert (=> b!7987931 (= e!4707672 tp!2385090)))

(declare-fun b!7987930 () Bool)

(declare-fun tp!2385091 () Bool)

(declare-fun tp!2385089 () Bool)

(assert (=> b!7987930 (= e!4707672 (and tp!2385091 tp!2385089))))

(declare-fun b!7987929 () Bool)

(assert (=> b!7987929 (= e!4707672 tp_is_empty!53645)))

(assert (= (and b!7986665 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987929))

(assert (= (and b!7986665 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987930))

(assert (= (and b!7986665 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987931))

(assert (= (and b!7986665 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987932))

(declare-fun b!7987936 () Bool)

(declare-fun e!4707673 () Bool)

(declare-fun tp!2385093 () Bool)

(declare-fun tp!2385092 () Bool)

(assert (=> b!7987936 (= e!4707673 (and tp!2385093 tp!2385092))))

(assert (=> b!7986665 (= tp!2384530 e!4707673)))

(declare-fun b!7987935 () Bool)

(declare-fun tp!2385095 () Bool)

(assert (=> b!7987935 (= e!4707673 tp!2385095)))

(declare-fun b!7987934 () Bool)

(declare-fun tp!2385096 () Bool)

(declare-fun tp!2385094 () Bool)

(assert (=> b!7987934 (= e!4707673 (and tp!2385096 tp!2385094))))

(declare-fun b!7987933 () Bool)

(assert (=> b!7987933 (= e!4707673 tp_is_empty!53645)))

(assert (= (and b!7986665 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987933))

(assert (= (and b!7986665 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987934))

(assert (= (and b!7986665 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987935))

(assert (= (and b!7986665 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regOne!43614 r!24602))))) b!7987936))

(declare-fun b!7987940 () Bool)

(declare-fun e!4707674 () Bool)

(declare-fun tp!2385098 () Bool)

(declare-fun tp!2385097 () Bool)

(assert (=> b!7987940 (= e!4707674 (and tp!2385098 tp!2385097))))

(assert (=> b!7986581 (= tp!2384426 e!4707674)))

(declare-fun b!7987939 () Bool)

(declare-fun tp!2385100 () Bool)

(assert (=> b!7987939 (= e!4707674 tp!2385100)))

(declare-fun b!7987938 () Bool)

(declare-fun tp!2385101 () Bool)

(declare-fun tp!2385099 () Bool)

(assert (=> b!7987938 (= e!4707674 (and tp!2385101 tp!2385099))))

(declare-fun b!7987937 () Bool)

(assert (=> b!7987937 (= e!4707674 tp_is_empty!53645)))

(assert (= (and b!7986581 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (reg!21880 r!24602))))) b!7987937))

(assert (= (and b!7986581 ((_ is Concat!30550) (regOne!43615 (reg!21880 (reg!21880 r!24602))))) b!7987938))

(assert (= (and b!7986581 ((_ is Star!21551) (regOne!43615 (reg!21880 (reg!21880 r!24602))))) b!7987939))

(assert (= (and b!7986581 ((_ is Union!21551) (regOne!43615 (reg!21880 (reg!21880 r!24602))))) b!7987940))

(declare-fun b!7987944 () Bool)

(declare-fun e!4707675 () Bool)

(declare-fun tp!2385103 () Bool)

(declare-fun tp!2385102 () Bool)

(assert (=> b!7987944 (= e!4707675 (and tp!2385103 tp!2385102))))

(assert (=> b!7986581 (= tp!2384425 e!4707675)))

(declare-fun b!7987943 () Bool)

(declare-fun tp!2385105 () Bool)

(assert (=> b!7987943 (= e!4707675 tp!2385105)))

(declare-fun b!7987942 () Bool)

(declare-fun tp!2385106 () Bool)

(declare-fun tp!2385104 () Bool)

(assert (=> b!7987942 (= e!4707675 (and tp!2385106 tp!2385104))))

(declare-fun b!7987941 () Bool)

(assert (=> b!7987941 (= e!4707675 tp_is_empty!53645)))

(assert (= (and b!7986581 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (reg!21880 r!24602))))) b!7987941))

(assert (= (and b!7986581 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (reg!21880 r!24602))))) b!7987942))

(assert (= (and b!7986581 ((_ is Star!21551) (regTwo!43615 (reg!21880 (reg!21880 r!24602))))) b!7987943))

(assert (= (and b!7986581 ((_ is Union!21551) (regTwo!43615 (reg!21880 (reg!21880 r!24602))))) b!7987944))

(declare-fun b!7987948 () Bool)

(declare-fun e!4707676 () Bool)

(declare-fun tp!2385108 () Bool)

(declare-fun tp!2385107 () Bool)

(assert (=> b!7987948 (= e!4707676 (and tp!2385108 tp!2385107))))

(assert (=> b!7986549 (= tp!2384396 e!4707676)))

(declare-fun b!7987947 () Bool)

(declare-fun tp!2385110 () Bool)

(assert (=> b!7987947 (= e!4707676 tp!2385110)))

(declare-fun b!7987946 () Bool)

(declare-fun tp!2385111 () Bool)

(declare-fun tp!2385109 () Bool)

(assert (=> b!7987946 (= e!4707676 (and tp!2385111 tp!2385109))))

(declare-fun b!7987945 () Bool)

(assert (=> b!7987945 (= e!4707676 tp_is_empty!53645)))

(assert (= (and b!7986549 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987945))

(assert (= (and b!7986549 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987946))

(assert (= (and b!7986549 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987947))

(assert (= (and b!7986549 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987948))

(declare-fun b!7987952 () Bool)

(declare-fun e!4707677 () Bool)

(declare-fun tp!2385113 () Bool)

(declare-fun tp!2385112 () Bool)

(assert (=> b!7987952 (= e!4707677 (and tp!2385113 tp!2385112))))

(assert (=> b!7986549 (= tp!2384395 e!4707677)))

(declare-fun b!7987951 () Bool)

(declare-fun tp!2385115 () Bool)

(assert (=> b!7987951 (= e!4707677 tp!2385115)))

(declare-fun b!7987950 () Bool)

(declare-fun tp!2385116 () Bool)

(declare-fun tp!2385114 () Bool)

(assert (=> b!7987950 (= e!4707677 (and tp!2385116 tp!2385114))))

(declare-fun b!7987949 () Bool)

(assert (=> b!7987949 (= e!4707677 tp_is_empty!53645)))

(assert (= (and b!7986549 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987949))

(assert (= (and b!7986549 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987950))

(assert (= (and b!7986549 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987951))

(assert (= (and b!7986549 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (reg!21880 r!24602))))) b!7987952))

(declare-fun b!7987956 () Bool)

(declare-fun e!4707678 () Bool)

(declare-fun tp!2385118 () Bool)

(declare-fun tp!2385117 () Bool)

(assert (=> b!7987956 (= e!4707678 (and tp!2385118 tp!2385117))))

(assert (=> b!7986647 (= tp!2384514 e!4707678)))

(declare-fun b!7987955 () Bool)

(declare-fun tp!2385120 () Bool)

(assert (=> b!7987955 (= e!4707678 tp!2385120)))

(declare-fun b!7987954 () Bool)

(declare-fun tp!2385121 () Bool)

(declare-fun tp!2385119 () Bool)

(assert (=> b!7987954 (= e!4707678 (and tp!2385121 tp!2385119))))

(declare-fun b!7987953 () Bool)

(assert (=> b!7987953 (= e!4707678 tp_is_empty!53645)))

(assert (= (and b!7986647 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987953))

(assert (= (and b!7986647 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987954))

(assert (= (and b!7986647 ((_ is Star!21551) (regOne!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987955))

(assert (= (and b!7986647 ((_ is Union!21551) (regOne!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987956))

(declare-fun b!7987960 () Bool)

(declare-fun e!4707679 () Bool)

(declare-fun tp!2385123 () Bool)

(declare-fun tp!2385122 () Bool)

(assert (=> b!7987960 (= e!4707679 (and tp!2385123 tp!2385122))))

(assert (=> b!7986647 (= tp!2384512 e!4707679)))

(declare-fun b!7987959 () Bool)

(declare-fun tp!2385125 () Bool)

(assert (=> b!7987959 (= e!4707679 tp!2385125)))

(declare-fun b!7987958 () Bool)

(declare-fun tp!2385126 () Bool)

(declare-fun tp!2385124 () Bool)

(assert (=> b!7987958 (= e!4707679 (and tp!2385126 tp!2385124))))

(declare-fun b!7987957 () Bool)

(assert (=> b!7987957 (= e!4707679 tp_is_empty!53645)))

(assert (= (and b!7986647 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987957))

(assert (= (and b!7986647 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987958))

(assert (= (and b!7986647 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987959))

(assert (= (and b!7986647 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regOne!43614 baseR!116))))) b!7987960))

(declare-fun b!7987964 () Bool)

(declare-fun e!4707680 () Bool)

(declare-fun tp!2385128 () Bool)

(declare-fun tp!2385127 () Bool)

(assert (=> b!7987964 (= e!4707680 (and tp!2385128 tp!2385127))))

(assert (=> b!7986656 (= tp!2384523 e!4707680)))

(declare-fun b!7987963 () Bool)

(declare-fun tp!2385130 () Bool)

(assert (=> b!7987963 (= e!4707680 tp!2385130)))

(declare-fun b!7987962 () Bool)

(declare-fun tp!2385131 () Bool)

(declare-fun tp!2385129 () Bool)

(assert (=> b!7987962 (= e!4707680 (and tp!2385131 tp!2385129))))

(declare-fun b!7987961 () Bool)

(assert (=> b!7987961 (= e!4707680 tp_is_empty!53645)))

(assert (= (and b!7986656 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regOne!43615 baseR!116))))) b!7987961))

(assert (= (and b!7986656 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regOne!43615 baseR!116))))) b!7987962))

(assert (= (and b!7986656 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regOne!43615 baseR!116))))) b!7987963))

(assert (= (and b!7986656 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regOne!43615 baseR!116))))) b!7987964))

(declare-fun b!7987968 () Bool)

(declare-fun e!4707681 () Bool)

(declare-fun tp!2385133 () Bool)

(declare-fun tp!2385132 () Bool)

(assert (=> b!7987968 (= e!4707681 (and tp!2385133 tp!2385132))))

(assert (=> b!7986526 (= tp!2384378 e!4707681)))

(declare-fun b!7987967 () Bool)

(declare-fun tp!2385135 () Bool)

(assert (=> b!7987967 (= e!4707681 tp!2385135)))

(declare-fun b!7987966 () Bool)

(declare-fun tp!2385136 () Bool)

(declare-fun tp!2385134 () Bool)

(assert (=> b!7987966 (= e!4707681 (and tp!2385136 tp!2385134))))

(declare-fun b!7987965 () Bool)

(assert (=> b!7987965 (= e!4707681 tp_is_empty!53645)))

(assert (= (and b!7986526 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (reg!21880 r!24602))))) b!7987965))

(assert (= (and b!7986526 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (reg!21880 r!24602))))) b!7987966))

(assert (= (and b!7986526 ((_ is Star!21551) (reg!21880 (regTwo!43614 (reg!21880 r!24602))))) b!7987967))

(assert (= (and b!7986526 ((_ is Union!21551) (reg!21880 (regTwo!43614 (reg!21880 r!24602))))) b!7987968))

(declare-fun b!7987972 () Bool)

(declare-fun e!4707682 () Bool)

(declare-fun tp!2385138 () Bool)

(declare-fun tp!2385137 () Bool)

(assert (=> b!7987972 (= e!4707682 (and tp!2385138 tp!2385137))))

(assert (=> b!7986639 (= tp!2384504 e!4707682)))

(declare-fun b!7987971 () Bool)

(declare-fun tp!2385140 () Bool)

(assert (=> b!7987971 (= e!4707682 tp!2385140)))

(declare-fun b!7987970 () Bool)

(declare-fun tp!2385141 () Bool)

(declare-fun tp!2385139 () Bool)

(assert (=> b!7987970 (= e!4707682 (and tp!2385141 tp!2385139))))

(declare-fun b!7987969 () Bool)

(assert (=> b!7987969 (= e!4707682 tp_is_empty!53645)))

(assert (= (and b!7986639 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987969))

(assert (= (and b!7986639 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987970))

(assert (= (and b!7986639 ((_ is Star!21551) (regOne!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987971))

(assert (= (and b!7986639 ((_ is Union!21551) (regOne!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987972))

(declare-fun b!7987976 () Bool)

(declare-fun e!4707683 () Bool)

(declare-fun tp!2385143 () Bool)

(declare-fun tp!2385142 () Bool)

(assert (=> b!7987976 (= e!4707683 (and tp!2385143 tp!2385142))))

(assert (=> b!7986639 (= tp!2384502 e!4707683)))

(declare-fun b!7987975 () Bool)

(declare-fun tp!2385145 () Bool)

(assert (=> b!7987975 (= e!4707683 tp!2385145)))

(declare-fun b!7987974 () Bool)

(declare-fun tp!2385146 () Bool)

(declare-fun tp!2385144 () Bool)

(assert (=> b!7987974 (= e!4707683 (and tp!2385146 tp!2385144))))

(declare-fun b!7987973 () Bool)

(assert (=> b!7987973 (= e!4707683 tp_is_empty!53645)))

(assert (= (and b!7986639 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987973))

(assert (= (and b!7986639 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987974))

(assert (= (and b!7986639 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987975))

(assert (= (and b!7986639 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (reg!21880 baseR!116))))) b!7987976))

(declare-fun b!7987980 () Bool)

(declare-fun e!4707684 () Bool)

(declare-fun tp!2385148 () Bool)

(declare-fun tp!2385147 () Bool)

(assert (=> b!7987980 (= e!4707684 (and tp!2385148 tp!2385147))))

(assert (=> b!7986648 (= tp!2384513 e!4707684)))

(declare-fun b!7987979 () Bool)

(declare-fun tp!2385150 () Bool)

(assert (=> b!7987979 (= e!4707684 tp!2385150)))

(declare-fun b!7987978 () Bool)

(declare-fun tp!2385151 () Bool)

(declare-fun tp!2385149 () Bool)

(assert (=> b!7987978 (= e!4707684 (and tp!2385151 tp!2385149))))

(declare-fun b!7987977 () Bool)

(assert (=> b!7987977 (= e!4707684 tp_is_empty!53645)))

(assert (= (and b!7986648 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regOne!43614 baseR!116))))) b!7987977))

(assert (= (and b!7986648 ((_ is Concat!30550) (reg!21880 (reg!21880 (regOne!43614 baseR!116))))) b!7987978))

(assert (= (and b!7986648 ((_ is Star!21551) (reg!21880 (reg!21880 (regOne!43614 baseR!116))))) b!7987979))

(assert (= (and b!7986648 ((_ is Union!21551) (reg!21880 (reg!21880 (regOne!43614 baseR!116))))) b!7987980))

(declare-fun b!7987984 () Bool)

(declare-fun e!4707685 () Bool)

(declare-fun tp!2385153 () Bool)

(declare-fun tp!2385152 () Bool)

(assert (=> b!7987984 (= e!4707685 (and tp!2385153 tp!2385152))))

(assert (=> b!7986492 (= tp!2384338 e!4707685)))

(declare-fun b!7987983 () Bool)

(declare-fun tp!2385155 () Bool)

(assert (=> b!7987983 (= e!4707685 tp!2385155)))

(declare-fun b!7987982 () Bool)

(declare-fun tp!2385156 () Bool)

(declare-fun tp!2385154 () Bool)

(assert (=> b!7987982 (= e!4707685 (and tp!2385156 tp!2385154))))

(declare-fun b!7987981 () Bool)

(assert (=> b!7987981 (= e!4707685 tp_is_empty!53645)))

(assert (= (and b!7986492 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987981))

(assert (= (and b!7986492 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987982))

(assert (= (and b!7986492 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987983))

(assert (= (and b!7986492 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987984))

(declare-fun b!7987988 () Bool)

(declare-fun e!4707686 () Bool)

(declare-fun tp!2385158 () Bool)

(declare-fun tp!2385157 () Bool)

(assert (=> b!7987988 (= e!4707686 (and tp!2385158 tp!2385157))))

(assert (=> b!7986492 (= tp!2384336 e!4707686)))

(declare-fun b!7987987 () Bool)

(declare-fun tp!2385160 () Bool)

(assert (=> b!7987987 (= e!4707686 tp!2385160)))

(declare-fun b!7987986 () Bool)

(declare-fun tp!2385161 () Bool)

(declare-fun tp!2385159 () Bool)

(assert (=> b!7987986 (= e!4707686 (and tp!2385161 tp!2385159))))

(declare-fun b!7987985 () Bool)

(assert (=> b!7987985 (= e!4707686 tp_is_empty!53645)))

(assert (= (and b!7986492 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987985))

(assert (= (and b!7986492 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987986))

(assert (= (and b!7986492 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987987))

(assert (= (and b!7986492 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regOne!43615 r!24602))))) b!7987988))

(declare-fun b!7987992 () Bool)

(declare-fun e!4707687 () Bool)

(declare-fun tp!2385163 () Bool)

(declare-fun tp!2385162 () Bool)

(assert (=> b!7987992 (= e!4707687 (and tp!2385163 tp!2385162))))

(assert (=> b!7986501 (= tp!2384347 e!4707687)))

(declare-fun b!7987991 () Bool)

(declare-fun tp!2385165 () Bool)

(assert (=> b!7987991 (= e!4707687 tp!2385165)))

(declare-fun b!7987990 () Bool)

(declare-fun tp!2385166 () Bool)

(declare-fun tp!2385164 () Bool)

(assert (=> b!7987990 (= e!4707687 (and tp!2385166 tp!2385164))))

(declare-fun b!7987989 () Bool)

(assert (=> b!7987989 (= e!4707687 tp_is_empty!53645)))

(assert (= (and b!7986501 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regOne!43614 r!24602))))) b!7987989))

(assert (= (and b!7986501 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regOne!43614 r!24602))))) b!7987990))

(assert (= (and b!7986501 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regOne!43614 r!24602))))) b!7987991))

(assert (= (and b!7986501 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regOne!43614 r!24602))))) b!7987992))

(declare-fun b!7987996 () Bool)

(declare-fun e!4707688 () Bool)

(declare-fun tp!2385168 () Bool)

(declare-fun tp!2385167 () Bool)

(assert (=> b!7987996 (= e!4707688 (and tp!2385168 tp!2385167))))

(assert (=> b!7986517 (= tp!2384369 e!4707688)))

(declare-fun b!7987995 () Bool)

(declare-fun tp!2385170 () Bool)

(assert (=> b!7987995 (= e!4707688 tp!2385170)))

(declare-fun b!7987994 () Bool)

(declare-fun tp!2385171 () Bool)

(declare-fun tp!2385169 () Bool)

(assert (=> b!7987994 (= e!4707688 (and tp!2385171 tp!2385169))))

(declare-fun b!7987993 () Bool)

(assert (=> b!7987993 (= e!4707688 tp_is_empty!53645)))

(assert (= (and b!7986517 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7987993))

(assert (= (and b!7986517 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7987994))

(assert (= (and b!7986517 ((_ is Star!21551) (regOne!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7987995))

(assert (= (and b!7986517 ((_ is Union!21551) (regOne!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7987996))

(declare-fun b!7988000 () Bool)

(declare-fun e!4707689 () Bool)

(declare-fun tp!2385173 () Bool)

(declare-fun tp!2385172 () Bool)

(assert (=> b!7988000 (= e!4707689 (and tp!2385173 tp!2385172))))

(assert (=> b!7986517 (= tp!2384367 e!4707689)))

(declare-fun b!7987999 () Bool)

(declare-fun tp!2385175 () Bool)

(assert (=> b!7987999 (= e!4707689 tp!2385175)))

(declare-fun b!7987998 () Bool)

(declare-fun tp!2385176 () Bool)

(declare-fun tp!2385174 () Bool)

(assert (=> b!7987998 (= e!4707689 (and tp!2385176 tp!2385174))))

(declare-fun b!7987997 () Bool)

(assert (=> b!7987997 (= e!4707689 tp_is_empty!53645)))

(assert (= (and b!7986517 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7987997))

(assert (= (and b!7986517 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7987998))

(assert (= (and b!7986517 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7987999))

(assert (= (and b!7986517 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regTwo!43615 baseR!116))))) b!7988000))

(declare-fun b!7988004 () Bool)

(declare-fun e!4707690 () Bool)

(declare-fun tp!2385178 () Bool)

(declare-fun tp!2385177 () Bool)

(assert (=> b!7988004 (= e!4707690 (and tp!2385178 tp!2385177))))

(assert (=> b!7986467 (= tp!2384307 e!4707690)))

(declare-fun b!7988003 () Bool)

(declare-fun tp!2385180 () Bool)

(assert (=> b!7988003 (= e!4707690 tp!2385180)))

(declare-fun b!7988002 () Bool)

(declare-fun tp!2385181 () Bool)

(declare-fun tp!2385179 () Bool)

(assert (=> b!7988002 (= e!4707690 (and tp!2385181 tp!2385179))))

(declare-fun b!7988001 () Bool)

(assert (=> b!7988001 (= e!4707690 tp_is_empty!53645)))

(assert (= (and b!7986467 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988001))

(assert (= (and b!7986467 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988002))

(assert (= (and b!7986467 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988003))

(assert (= (and b!7986467 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988004))

(declare-fun b!7988008 () Bool)

(declare-fun e!4707691 () Bool)

(declare-fun tp!2385183 () Bool)

(declare-fun tp!2385182 () Bool)

(assert (=> b!7988008 (= e!4707691 (and tp!2385183 tp!2385182))))

(assert (=> b!7986467 (= tp!2384305 e!4707691)))

(declare-fun b!7988007 () Bool)

(declare-fun tp!2385185 () Bool)

(assert (=> b!7988007 (= e!4707691 tp!2385185)))

(declare-fun b!7988006 () Bool)

(declare-fun tp!2385186 () Bool)

(declare-fun tp!2385184 () Bool)

(assert (=> b!7988006 (= e!4707691 (and tp!2385186 tp!2385184))))

(declare-fun b!7988005 () Bool)

(assert (=> b!7988005 (= e!4707691 tp_is_empty!53645)))

(assert (= (and b!7986467 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988005))

(assert (= (and b!7986467 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988006))

(assert (= (and b!7986467 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988007))

(assert (= (and b!7986467 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988008))

(declare-fun b!7988012 () Bool)

(declare-fun e!4707692 () Bool)

(declare-fun tp!2385188 () Bool)

(declare-fun tp!2385187 () Bool)

(assert (=> b!7988012 (= e!4707692 (and tp!2385188 tp!2385187))))

(assert (=> b!7986625 (= tp!2384481 e!4707692)))

(declare-fun b!7988011 () Bool)

(declare-fun tp!2385190 () Bool)

(assert (=> b!7988011 (= e!4707692 tp!2385190)))

(declare-fun b!7988010 () Bool)

(declare-fun tp!2385191 () Bool)

(declare-fun tp!2385189 () Bool)

(assert (=> b!7988010 (= e!4707692 (and tp!2385191 tp!2385189))))

(declare-fun b!7988009 () Bool)

(assert (=> b!7988009 (= e!4707692 tp_is_empty!53645)))

(assert (= (and b!7986625 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988009))

(assert (= (and b!7986625 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988010))

(assert (= (and b!7986625 ((_ is Star!21551) (regOne!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988011))

(assert (= (and b!7986625 ((_ is Union!21551) (regOne!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988012))

(declare-fun b!7988016 () Bool)

(declare-fun e!4707693 () Bool)

(declare-fun tp!2385193 () Bool)

(declare-fun tp!2385192 () Bool)

(assert (=> b!7988016 (= e!4707693 (and tp!2385193 tp!2385192))))

(assert (=> b!7986625 (= tp!2384480 e!4707693)))

(declare-fun b!7988015 () Bool)

(declare-fun tp!2385195 () Bool)

(assert (=> b!7988015 (= e!4707693 tp!2385195)))

(declare-fun b!7988014 () Bool)

(declare-fun tp!2385196 () Bool)

(declare-fun tp!2385194 () Bool)

(assert (=> b!7988014 (= e!4707693 (and tp!2385196 tp!2385194))))

(declare-fun b!7988013 () Bool)

(assert (=> b!7988013 (= e!4707693 tp_is_empty!53645)))

(assert (= (and b!7986625 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988013))

(assert (= (and b!7986625 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988014))

(assert (= (and b!7986625 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988015))

(assert (= (and b!7986625 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (reg!21880 baseR!116))))) b!7988016))

(declare-fun b!7988020 () Bool)

(declare-fun e!4707694 () Bool)

(declare-fun tp!2385198 () Bool)

(declare-fun tp!2385197 () Bool)

(assert (=> b!7988020 (= e!4707694 (and tp!2385198 tp!2385197))))

(assert (=> b!7986543 (= tp!2384391 e!4707694)))

(declare-fun b!7988019 () Bool)

(declare-fun tp!2385200 () Bool)

(assert (=> b!7988019 (= e!4707694 tp!2385200)))

(declare-fun b!7988018 () Bool)

(declare-fun tp!2385201 () Bool)

(declare-fun tp!2385199 () Bool)

(assert (=> b!7988018 (= e!4707694 (and tp!2385201 tp!2385199))))

(declare-fun b!7988017 () Bool)

(assert (=> b!7988017 (= e!4707694 tp_is_empty!53645)))

(assert (= (and b!7986543 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988017))

(assert (= (and b!7986543 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988018))

(assert (= (and b!7986543 ((_ is Star!21551) (regOne!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988019))

(assert (= (and b!7986543 ((_ is Union!21551) (regOne!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988020))

(declare-fun b!7988024 () Bool)

(declare-fun e!4707695 () Bool)

(declare-fun tp!2385203 () Bool)

(declare-fun tp!2385202 () Bool)

(assert (=> b!7988024 (= e!4707695 (and tp!2385203 tp!2385202))))

(assert (=> b!7986543 (= tp!2384390 e!4707695)))

(declare-fun b!7988023 () Bool)

(declare-fun tp!2385205 () Bool)

(assert (=> b!7988023 (= e!4707695 tp!2385205)))

(declare-fun b!7988022 () Bool)

(declare-fun tp!2385206 () Bool)

(declare-fun tp!2385204 () Bool)

(assert (=> b!7988022 (= e!4707695 (and tp!2385206 tp!2385204))))

(declare-fun b!7988021 () Bool)

(assert (=> b!7988021 (= e!4707695 tp_is_empty!53645)))

(assert (= (and b!7986543 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988021))

(assert (= (and b!7986543 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988022))

(assert (= (and b!7986543 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988023))

(assert (= (and b!7986543 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (reg!21880 r!24602))))) b!7988024))

(declare-fun b!7988028 () Bool)

(declare-fun e!4707696 () Bool)

(declare-fun tp!2385208 () Bool)

(declare-fun tp!2385207 () Bool)

(assert (=> b!7988028 (= e!4707696 (and tp!2385208 tp!2385207))))

(assert (=> b!7986607 (= tp!2384464 e!4707696)))

(declare-fun b!7988027 () Bool)

(declare-fun tp!2385210 () Bool)

(assert (=> b!7988027 (= e!4707696 tp!2385210)))

(declare-fun b!7988026 () Bool)

(declare-fun tp!2385211 () Bool)

(declare-fun tp!2385209 () Bool)

(assert (=> b!7988026 (= e!4707696 (and tp!2385211 tp!2385209))))

(declare-fun b!7988025 () Bool)

(assert (=> b!7988025 (= e!4707696 tp_is_empty!53645)))

(assert (= (and b!7986607 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988025))

(assert (= (and b!7986607 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988026))

(assert (= (and b!7986607 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988027))

(assert (= (and b!7986607 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988028))

(declare-fun b!7988032 () Bool)

(declare-fun e!4707697 () Bool)

(declare-fun tp!2385213 () Bool)

(declare-fun tp!2385212 () Bool)

(assert (=> b!7988032 (= e!4707697 (and tp!2385213 tp!2385212))))

(assert (=> b!7986607 (= tp!2384462 e!4707697)))

(declare-fun b!7988031 () Bool)

(declare-fun tp!2385215 () Bool)

(assert (=> b!7988031 (= e!4707697 tp!2385215)))

(declare-fun b!7988030 () Bool)

(declare-fun tp!2385216 () Bool)

(declare-fun tp!2385214 () Bool)

(assert (=> b!7988030 (= e!4707697 (and tp!2385216 tp!2385214))))

(declare-fun b!7988029 () Bool)

(assert (=> b!7988029 (= e!4707697 tp_is_empty!53645)))

(assert (= (and b!7986607 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988029))

(assert (= (and b!7986607 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988030))

(assert (= (and b!7986607 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988031))

(assert (= (and b!7986607 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988032))

(declare-fun b!7988036 () Bool)

(declare-fun e!4707698 () Bool)

(declare-fun tp!2385218 () Bool)

(declare-fun tp!2385217 () Bool)

(assert (=> b!7988036 (= e!4707698 (and tp!2385218 tp!2385217))))

(assert (=> b!7986616 (= tp!2384473 e!4707698)))

(declare-fun b!7988035 () Bool)

(declare-fun tp!2385220 () Bool)

(assert (=> b!7988035 (= e!4707698 tp!2385220)))

(declare-fun b!7988034 () Bool)

(declare-fun tp!2385221 () Bool)

(declare-fun tp!2385219 () Bool)

(assert (=> b!7988034 (= e!4707698 (and tp!2385221 tp!2385219))))

(declare-fun b!7988033 () Bool)

(assert (=> b!7988033 (= e!4707698 tp_is_empty!53645)))

(assert (= (and b!7986616 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988033))

(assert (= (and b!7986616 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988034))

(assert (= (and b!7986616 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988035))

(assert (= (and b!7986616 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988036))

(declare-fun b!7988040 () Bool)

(declare-fun e!4707699 () Bool)

(declare-fun tp!2385223 () Bool)

(declare-fun tp!2385222 () Bool)

(assert (=> b!7988040 (= e!4707699 (and tp!2385223 tp!2385222))))

(assert (=> b!7986659 (= tp!2384529 e!4707699)))

(declare-fun b!7988039 () Bool)

(declare-fun tp!2385225 () Bool)

(assert (=> b!7988039 (= e!4707699 tp!2385225)))

(declare-fun b!7988038 () Bool)

(declare-fun tp!2385226 () Bool)

(declare-fun tp!2385224 () Bool)

(assert (=> b!7988038 (= e!4707699 (and tp!2385226 tp!2385224))))

(declare-fun b!7988037 () Bool)

(assert (=> b!7988037 (= e!4707699 tp_is_empty!53645)))

(assert (= (and b!7986659 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988037))

(assert (= (and b!7986659 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988038))

(assert (= (and b!7986659 ((_ is Star!21551) (regOne!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988039))

(assert (= (and b!7986659 ((_ is Union!21551) (regOne!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988040))

(declare-fun b!7988044 () Bool)

(declare-fun e!4707700 () Bool)

(declare-fun tp!2385228 () Bool)

(declare-fun tp!2385227 () Bool)

(assert (=> b!7988044 (= e!4707700 (and tp!2385228 tp!2385227))))

(assert (=> b!7986659 (= tp!2384527 e!4707700)))

(declare-fun b!7988043 () Bool)

(declare-fun tp!2385230 () Bool)

(assert (=> b!7988043 (= e!4707700 tp!2385230)))

(declare-fun b!7988042 () Bool)

(declare-fun tp!2385231 () Bool)

(declare-fun tp!2385229 () Bool)

(assert (=> b!7988042 (= e!4707700 (and tp!2385231 tp!2385229))))

(declare-fun b!7988041 () Bool)

(assert (=> b!7988041 (= e!4707700 tp_is_empty!53645)))

(assert (= (and b!7986659 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988041))

(assert (= (and b!7986659 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988042))

(assert (= (and b!7986659 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988043))

(assert (= (and b!7986659 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regOne!43615 baseR!116))))) b!7988044))

(declare-fun b!7988048 () Bool)

(declare-fun e!4707701 () Bool)

(declare-fun tp!2385233 () Bool)

(declare-fun tp!2385232 () Bool)

(assert (=> b!7988048 (= e!4707701 (and tp!2385233 tp!2385232))))

(assert (=> b!7986668 (= tp!2384538 e!4707701)))

(declare-fun b!7988047 () Bool)

(declare-fun tp!2385235 () Bool)

(assert (=> b!7988047 (= e!4707701 tp!2385235)))

(declare-fun b!7988046 () Bool)

(declare-fun tp!2385236 () Bool)

(declare-fun tp!2385234 () Bool)

(assert (=> b!7988046 (= e!4707701 (and tp!2385236 tp!2385234))))

(declare-fun b!7988045 () Bool)

(assert (=> b!7988045 (= e!4707701 tp_is_empty!53645)))

(assert (= (and b!7986668 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regOne!43614 r!24602))))) b!7988045))

(assert (= (and b!7986668 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regOne!43614 r!24602))))) b!7988046))

(assert (= (and b!7986668 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regOne!43614 r!24602))))) b!7988047))

(assert (= (and b!7986668 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regOne!43614 r!24602))))) b!7988048))

(declare-fun b!7988052 () Bool)

(declare-fun e!4707702 () Bool)

(declare-fun tp!2385238 () Bool)

(declare-fun tp!2385237 () Bool)

(assert (=> b!7988052 (= e!4707702 (and tp!2385238 tp!2385237))))

(assert (=> b!7986478 (= tp!2384315 e!4707702)))

(declare-fun b!7988051 () Bool)

(declare-fun tp!2385240 () Bool)

(assert (=> b!7988051 (= e!4707702 tp!2385240)))

(declare-fun b!7988050 () Bool)

(declare-fun tp!2385241 () Bool)

(declare-fun tp!2385239 () Bool)

(assert (=> b!7988050 (= e!4707702 (and tp!2385241 tp!2385239))))

(declare-fun b!7988049 () Bool)

(assert (=> b!7988049 (= e!4707702 tp_is_empty!53645)))

(assert (= (and b!7986478 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988049))

(assert (= (and b!7986478 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988050))

(assert (= (and b!7986478 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988051))

(assert (= (and b!7986478 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988052))

(declare-fun b!7988056 () Bool)

(declare-fun e!4707703 () Bool)

(declare-fun tp!2385243 () Bool)

(declare-fun tp!2385242 () Bool)

(assert (=> b!7988056 (= e!4707703 (and tp!2385243 tp!2385242))))

(assert (=> b!7986478 (= tp!2384314 e!4707703)))

(declare-fun b!7988055 () Bool)

(declare-fun tp!2385245 () Bool)

(assert (=> b!7988055 (= e!4707703 tp!2385245)))

(declare-fun b!7988054 () Bool)

(declare-fun tp!2385246 () Bool)

(declare-fun tp!2385244 () Bool)

(assert (=> b!7988054 (= e!4707703 (and tp!2385246 tp!2385244))))

(declare-fun b!7988053 () Bool)

(assert (=> b!7988053 (= e!4707703 tp_is_empty!53645)))

(assert (= (and b!7986478 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988053))

(assert (= (and b!7986478 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988054))

(assert (= (and b!7986478 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988055))

(assert (= (and b!7986478 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regOne!43615 r!24602))))) b!7988056))

(declare-fun b!7988060 () Bool)

(declare-fun e!4707704 () Bool)

(declare-fun tp!2385248 () Bool)

(declare-fun tp!2385247 () Bool)

(assert (=> b!7988060 (= e!4707704 (and tp!2385248 tp!2385247))))

(assert (=> b!7986577 (= tp!2384421 e!4707704)))

(declare-fun b!7988059 () Bool)

(declare-fun tp!2385250 () Bool)

(assert (=> b!7988059 (= e!4707704 tp!2385250)))

(declare-fun b!7988058 () Bool)

(declare-fun tp!2385251 () Bool)

(declare-fun tp!2385249 () Bool)

(assert (=> b!7988058 (= e!4707704 (and tp!2385251 tp!2385249))))

(declare-fun b!7988057 () Bool)

(assert (=> b!7988057 (= e!4707704 tp_is_empty!53645)))

(assert (= (and b!7986577 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988057))

(assert (= (and b!7986577 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988058))

(assert (= (and b!7986577 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988059))

(assert (= (and b!7986577 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988060))

(declare-fun b!7988064 () Bool)

(declare-fun e!4707705 () Bool)

(declare-fun tp!2385253 () Bool)

(declare-fun tp!2385252 () Bool)

(assert (=> b!7988064 (= e!4707705 (and tp!2385253 tp!2385252))))

(assert (=> b!7986577 (= tp!2384420 e!4707705)))

(declare-fun b!7988063 () Bool)

(declare-fun tp!2385255 () Bool)

(assert (=> b!7988063 (= e!4707705 tp!2385255)))

(declare-fun b!7988062 () Bool)

(declare-fun tp!2385256 () Bool)

(declare-fun tp!2385254 () Bool)

(assert (=> b!7988062 (= e!4707705 (and tp!2385256 tp!2385254))))

(declare-fun b!7988061 () Bool)

(assert (=> b!7988061 (= e!4707705 tp_is_empty!53645)))

(assert (= (and b!7986577 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988061))

(assert (= (and b!7986577 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988062))

(assert (= (and b!7986577 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988063))

(assert (= (and b!7986577 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988064))

(declare-fun b!7988068 () Bool)

(declare-fun e!4707706 () Bool)

(declare-fun tp!2385258 () Bool)

(declare-fun tp!2385257 () Bool)

(assert (=> b!7988068 (= e!4707706 (and tp!2385258 tp!2385257))))

(assert (=> b!7986677 (= tp!2384546 e!4707706)))

(declare-fun b!7988067 () Bool)

(declare-fun tp!2385260 () Bool)

(assert (=> b!7988067 (= e!4707706 tp!2385260)))

(declare-fun b!7988066 () Bool)

(declare-fun tp!2385261 () Bool)

(declare-fun tp!2385259 () Bool)

(assert (=> b!7988066 (= e!4707706 (and tp!2385261 tp!2385259))))

(declare-fun b!7988065 () Bool)

(assert (=> b!7988065 (= e!4707706 tp_is_empty!53645)))

(assert (= (and b!7986677 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988065))

(assert (= (and b!7986677 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988066))

(assert (= (and b!7986677 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988067))

(assert (= (and b!7986677 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988068))

(declare-fun b!7988072 () Bool)

(declare-fun e!4707707 () Bool)

(declare-fun tp!2385263 () Bool)

(declare-fun tp!2385262 () Bool)

(assert (=> b!7988072 (= e!4707707 (and tp!2385263 tp!2385262))))

(assert (=> b!7986677 (= tp!2384545 e!4707707)))

(declare-fun b!7988071 () Bool)

(declare-fun tp!2385265 () Bool)

(assert (=> b!7988071 (= e!4707707 tp!2385265)))

(declare-fun b!7988070 () Bool)

(declare-fun tp!2385266 () Bool)

(declare-fun tp!2385264 () Bool)

(assert (=> b!7988070 (= e!4707707 (and tp!2385266 tp!2385264))))

(declare-fun b!7988069 () Bool)

(assert (=> b!7988069 (= e!4707707 tp_is_empty!53645)))

(assert (= (and b!7986677 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988069))

(assert (= (and b!7986677 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988070))

(assert (= (and b!7986677 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988071))

(assert (= (and b!7986677 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regOne!43615 baseR!116))))) b!7988072))

(declare-fun b!7988076 () Bool)

(declare-fun e!4707708 () Bool)

(declare-fun tp!2385268 () Bool)

(declare-fun tp!2385267 () Bool)

(assert (=> b!7988076 (= e!4707708 (and tp!2385268 tp!2385267))))

(assert (=> b!7986536 (= tp!2384388 e!4707708)))

(declare-fun b!7988075 () Bool)

(declare-fun tp!2385270 () Bool)

(assert (=> b!7988075 (= e!4707708 tp!2385270)))

(declare-fun b!7988074 () Bool)

(declare-fun tp!2385271 () Bool)

(declare-fun tp!2385269 () Bool)

(assert (=> b!7988074 (= e!4707708 (and tp!2385271 tp!2385269))))

(declare-fun b!7988073 () Bool)

(assert (=> b!7988073 (= e!4707708 tp_is_empty!53645)))

(assert (= (and b!7986536 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988073))

(assert (= (and b!7986536 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988074))

(assert (= (and b!7986536 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988075))

(assert (= (and b!7986536 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988076))

(declare-fun b!7988080 () Bool)

(declare-fun e!4707709 () Bool)

(declare-fun tp!2385273 () Bool)

(declare-fun tp!2385272 () Bool)

(assert (=> b!7988080 (= e!4707709 (and tp!2385273 tp!2385272))))

(assert (=> b!7986593 (= tp!2384441 e!4707709)))

(declare-fun b!7988079 () Bool)

(declare-fun tp!2385275 () Bool)

(assert (=> b!7988079 (= e!4707709 tp!2385275)))

(declare-fun b!7988078 () Bool)

(declare-fun tp!2385276 () Bool)

(declare-fun tp!2385274 () Bool)

(assert (=> b!7988078 (= e!4707709 (and tp!2385276 tp!2385274))))

(declare-fun b!7988077 () Bool)

(assert (=> b!7988077 (= e!4707709 tp_is_empty!53645)))

(assert (= (and b!7986593 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988077))

(assert (= (and b!7986593 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988078))

(assert (= (and b!7986593 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988079))

(assert (= (and b!7986593 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988080))

(declare-fun b!7988084 () Bool)

(declare-fun e!4707710 () Bool)

(declare-fun tp!2385278 () Bool)

(declare-fun tp!2385277 () Bool)

(assert (=> b!7988084 (= e!4707710 (and tp!2385278 tp!2385277))))

(assert (=> b!7986593 (= tp!2384440 e!4707710)))

(declare-fun b!7988083 () Bool)

(declare-fun tp!2385280 () Bool)

(assert (=> b!7988083 (= e!4707710 tp!2385280)))

(declare-fun b!7988082 () Bool)

(declare-fun tp!2385281 () Bool)

(declare-fun tp!2385279 () Bool)

(assert (=> b!7988082 (= e!4707710 (and tp!2385281 tp!2385279))))

(declare-fun b!7988081 () Bool)

(assert (=> b!7988081 (= e!4707710 tp_is_empty!53645)))

(assert (= (and b!7986593 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988081))

(assert (= (and b!7986593 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988082))

(assert (= (and b!7986593 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988083))

(assert (= (and b!7986593 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regTwo!43615 r!24602))))) b!7988084))

(declare-fun b!7988088 () Bool)

(declare-fun e!4707711 () Bool)

(declare-fun tp!2385283 () Bool)

(declare-fun tp!2385282 () Bool)

(assert (=> b!7988088 (= e!4707711 (and tp!2385283 tp!2385282))))

(assert (=> b!7986585 (= tp!2384431 e!4707711)))

(declare-fun b!7988087 () Bool)

(declare-fun tp!2385285 () Bool)

(assert (=> b!7988087 (= e!4707711 tp!2385285)))

(declare-fun b!7988086 () Bool)

(declare-fun tp!2385286 () Bool)

(declare-fun tp!2385284 () Bool)

(assert (=> b!7988086 (= e!4707711 (and tp!2385286 tp!2385284))))

(declare-fun b!7988085 () Bool)

(assert (=> b!7988085 (= e!4707711 tp_is_empty!53645)))

(assert (= (and b!7986585 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988085))

(assert (= (and b!7986585 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988086))

(assert (= (and b!7986585 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988087))

(assert (= (and b!7986585 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988088))

(declare-fun b!7988092 () Bool)

(declare-fun e!4707712 () Bool)

(declare-fun tp!2385288 () Bool)

(declare-fun tp!2385287 () Bool)

(assert (=> b!7988092 (= e!4707712 (and tp!2385288 tp!2385287))))

(assert (=> b!7986585 (= tp!2384430 e!4707712)))

(declare-fun b!7988091 () Bool)

(declare-fun tp!2385290 () Bool)

(assert (=> b!7988091 (= e!4707712 tp!2385290)))

(declare-fun b!7988090 () Bool)

(declare-fun tp!2385291 () Bool)

(declare-fun tp!2385289 () Bool)

(assert (=> b!7988090 (= e!4707712 (and tp!2385291 tp!2385289))))

(declare-fun b!7988089 () Bool)

(assert (=> b!7988089 (= e!4707712 tp_is_empty!53645)))

(assert (= (and b!7986585 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988089))

(assert (= (and b!7986585 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988090))

(assert (= (and b!7986585 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988091))

(assert (= (and b!7986585 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regTwo!43614 r!24602))))) b!7988092))

(declare-fun b!7988096 () Bool)

(declare-fun e!4707713 () Bool)

(declare-fun tp!2385293 () Bool)

(declare-fun tp!2385292 () Bool)

(assert (=> b!7988096 (= e!4707713 (and tp!2385293 tp!2385292))))

(assert (=> b!7986504 (= tp!2384353 e!4707713)))

(declare-fun b!7988095 () Bool)

(declare-fun tp!2385295 () Bool)

(assert (=> b!7988095 (= e!4707713 tp!2385295)))

(declare-fun b!7988094 () Bool)

(declare-fun tp!2385296 () Bool)

(declare-fun tp!2385294 () Bool)

(assert (=> b!7988094 (= e!4707713 (and tp!2385296 tp!2385294))))

(declare-fun b!7988093 () Bool)

(assert (=> b!7988093 (= e!4707713 tp_is_empty!53645)))

(assert (= (and b!7986504 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988093))

(assert (= (and b!7986504 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988094))

(assert (= (and b!7986504 ((_ is Star!21551) (regOne!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988095))

(assert (= (and b!7986504 ((_ is Union!21551) (regOne!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988096))

(declare-fun b!7988100 () Bool)

(declare-fun e!4707714 () Bool)

(declare-fun tp!2385298 () Bool)

(declare-fun tp!2385297 () Bool)

(assert (=> b!7988100 (= e!4707714 (and tp!2385298 tp!2385297))))

(assert (=> b!7986504 (= tp!2384351 e!4707714)))

(declare-fun b!7988099 () Bool)

(declare-fun tp!2385300 () Bool)

(assert (=> b!7988099 (= e!4707714 tp!2385300)))

(declare-fun b!7988098 () Bool)

(declare-fun tp!2385301 () Bool)

(declare-fun tp!2385299 () Bool)

(assert (=> b!7988098 (= e!4707714 (and tp!2385301 tp!2385299))))

(declare-fun b!7988097 () Bool)

(assert (=> b!7988097 (= e!4707714 tp_is_empty!53645)))

(assert (= (and b!7986504 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988097))

(assert (= (and b!7986504 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988098))

(assert (= (and b!7986504 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988099))

(assert (= (and b!7986504 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regOne!43615 r!24602))))) b!7988100))

(declare-fun b!7988104 () Bool)

(declare-fun e!4707715 () Bool)

(declare-fun tp!2385303 () Bool)

(declare-fun tp!2385302 () Bool)

(assert (=> b!7988104 (= e!4707715 (and tp!2385303 tp!2385302))))

(assert (=> b!7986619 (= tp!2384479 e!4707715)))

(declare-fun b!7988103 () Bool)

(declare-fun tp!2385305 () Bool)

(assert (=> b!7988103 (= e!4707715 tp!2385305)))

(declare-fun b!7988102 () Bool)

(declare-fun tp!2385306 () Bool)

(declare-fun tp!2385304 () Bool)

(assert (=> b!7988102 (= e!4707715 (and tp!2385306 tp!2385304))))

(declare-fun b!7988101 () Bool)

(assert (=> b!7988101 (= e!4707715 tp_is_empty!53645)))

(assert (= (and b!7986619 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988101))

(assert (= (and b!7986619 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988102))

(assert (= (and b!7986619 ((_ is Star!21551) (regOne!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988103))

(assert (= (and b!7986619 ((_ is Union!21551) (regOne!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988104))

(declare-fun b!7988108 () Bool)

(declare-fun e!4707716 () Bool)

(declare-fun tp!2385308 () Bool)

(declare-fun tp!2385307 () Bool)

(assert (=> b!7988108 (= e!4707716 (and tp!2385308 tp!2385307))))

(assert (=> b!7986619 (= tp!2384477 e!4707716)))

(declare-fun b!7988107 () Bool)

(declare-fun tp!2385310 () Bool)

(assert (=> b!7988107 (= e!4707716 tp!2385310)))

(declare-fun b!7988106 () Bool)

(declare-fun tp!2385311 () Bool)

(declare-fun tp!2385309 () Bool)

(assert (=> b!7988106 (= e!4707716 (and tp!2385311 tp!2385309))))

(declare-fun b!7988105 () Bool)

(assert (=> b!7988105 (= e!4707716 tp_is_empty!53645)))

(assert (= (and b!7986619 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988105))

(assert (= (and b!7986619 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988106))

(assert (= (and b!7986619 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988107))

(assert (= (and b!7986619 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regTwo!43615 r!24602))))) b!7988108))

(declare-fun b!7988112 () Bool)

(declare-fun e!4707717 () Bool)

(declare-fun tp!2385313 () Bool)

(declare-fun tp!2385312 () Bool)

(assert (=> b!7988112 (= e!4707717 (and tp!2385313 tp!2385312))))

(assert (=> b!7986530 (= tp!2384383 e!4707717)))

(declare-fun b!7988111 () Bool)

(declare-fun tp!2385315 () Bool)

(assert (=> b!7988111 (= e!4707717 tp!2385315)))

(declare-fun b!7988110 () Bool)

(declare-fun tp!2385316 () Bool)

(declare-fun tp!2385314 () Bool)

(assert (=> b!7988110 (= e!4707717 (and tp!2385316 tp!2385314))))

(declare-fun b!7988109 () Bool)

(assert (=> b!7988109 (= e!4707717 tp_is_empty!53645)))

(assert (= (and b!7986530 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988109))

(assert (= (and b!7986530 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988110))

(assert (= (and b!7986530 ((_ is Star!21551) (reg!21880 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988111))

(assert (= (and b!7986530 ((_ is Union!21551) (reg!21880 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988112))

(declare-fun b!7988116 () Bool)

(declare-fun e!4707718 () Bool)

(declare-fun tp!2385318 () Bool)

(declare-fun tp!2385317 () Bool)

(assert (=> b!7988116 (= e!4707718 (and tp!2385318 tp!2385317))))

(assert (=> b!7986628 (= tp!2384488 e!4707718)))

(declare-fun b!7988115 () Bool)

(declare-fun tp!2385320 () Bool)

(assert (=> b!7988115 (= e!4707718 tp!2385320)))

(declare-fun b!7988114 () Bool)

(declare-fun tp!2385321 () Bool)

(declare-fun tp!2385319 () Bool)

(assert (=> b!7988114 (= e!4707718 (and tp!2385321 tp!2385319))))

(declare-fun b!7988113 () Bool)

(assert (=> b!7988113 (= e!4707718 tp_is_empty!53645)))

(assert (= (and b!7986628 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (reg!21880 baseR!116))))) b!7988113))

(assert (= (and b!7986628 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (reg!21880 baseR!116))))) b!7988114))

(assert (= (and b!7986628 ((_ is Star!21551) (reg!21880 (regTwo!43614 (reg!21880 baseR!116))))) b!7988115))

(assert (= (and b!7986628 ((_ is Union!21551) (reg!21880 (regTwo!43614 (reg!21880 baseR!116))))) b!7988116))

(declare-fun b!7988120 () Bool)

(declare-fun e!4707719 () Bool)

(declare-fun tp!2385323 () Bool)

(declare-fun tp!2385322 () Bool)

(assert (=> b!7988120 (= e!4707719 (and tp!2385323 tp!2385322))))

(assert (=> b!7986637 (= tp!2384496 e!4707719)))

(declare-fun b!7988119 () Bool)

(declare-fun tp!2385325 () Bool)

(assert (=> b!7988119 (= e!4707719 tp!2385325)))

(declare-fun b!7988118 () Bool)

(declare-fun tp!2385326 () Bool)

(declare-fun tp!2385324 () Bool)

(assert (=> b!7988118 (= e!4707719 (and tp!2385326 tp!2385324))))

(declare-fun b!7988117 () Bool)

(assert (=> b!7988117 (= e!4707719 tp_is_empty!53645)))

(assert (= (and b!7986637 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988117))

(assert (= (and b!7986637 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988118))

(assert (= (and b!7986637 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988119))

(assert (= (and b!7986637 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988120))

(declare-fun b!7988124 () Bool)

(declare-fun e!4707720 () Bool)

(declare-fun tp!2385328 () Bool)

(declare-fun tp!2385327 () Bool)

(assert (=> b!7988124 (= e!4707720 (and tp!2385328 tp!2385327))))

(assert (=> b!7986637 (= tp!2384495 e!4707720)))

(declare-fun b!7988123 () Bool)

(declare-fun tp!2385330 () Bool)

(assert (=> b!7988123 (= e!4707720 tp!2385330)))

(declare-fun b!7988122 () Bool)

(declare-fun tp!2385331 () Bool)

(declare-fun tp!2385329 () Bool)

(assert (=> b!7988122 (= e!4707720 (and tp!2385331 tp!2385329))))

(declare-fun b!7988121 () Bool)

(assert (=> b!7988121 (= e!4707720 tp_is_empty!53645)))

(assert (= (and b!7986637 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988121))

(assert (= (and b!7986637 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988122))

(assert (= (and b!7986637 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988123))

(assert (= (and b!7986637 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988124))

(declare-fun b!7988128 () Bool)

(declare-fun e!4707721 () Bool)

(declare-fun tp!2385333 () Bool)

(declare-fun tp!2385332 () Bool)

(assert (=> b!7988128 (= e!4707721 (and tp!2385333 tp!2385332))))

(assert (=> b!7986490 (= tp!2384330 e!4707721)))

(declare-fun b!7988127 () Bool)

(declare-fun tp!2385335 () Bool)

(assert (=> b!7988127 (= e!4707721 tp!2385335)))

(declare-fun b!7988126 () Bool)

(declare-fun tp!2385336 () Bool)

(declare-fun tp!2385334 () Bool)

(assert (=> b!7988126 (= e!4707721 (and tp!2385336 tp!2385334))))

(declare-fun b!7988125 () Bool)

(assert (=> b!7988125 (= e!4707721 tp_is_empty!53645)))

(assert (= (and b!7986490 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988125))

(assert (= (and b!7986490 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988126))

(assert (= (and b!7986490 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988127))

(assert (= (and b!7986490 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988128))

(declare-fun b!7988132 () Bool)

(declare-fun e!4707722 () Bool)

(declare-fun tp!2385338 () Bool)

(declare-fun tp!2385337 () Bool)

(assert (=> b!7988132 (= e!4707722 (and tp!2385338 tp!2385337))))

(assert (=> b!7986490 (= tp!2384329 e!4707722)))

(declare-fun b!7988131 () Bool)

(declare-fun tp!2385340 () Bool)

(assert (=> b!7988131 (= e!4707722 tp!2385340)))

(declare-fun b!7988130 () Bool)

(declare-fun tp!2385341 () Bool)

(declare-fun tp!2385339 () Bool)

(assert (=> b!7988130 (= e!4707722 (and tp!2385341 tp!2385339))))

(declare-fun b!7988129 () Bool)

(assert (=> b!7988129 (= e!4707722 tp_is_empty!53645)))

(assert (= (and b!7986490 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988129))

(assert (= (and b!7986490 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988130))

(assert (= (and b!7986490 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988131))

(assert (= (and b!7986490 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regOne!43615 r!24602))))) b!7988132))

(declare-fun b!7988136 () Bool)

(declare-fun e!4707723 () Bool)

(declare-fun tp!2385343 () Bool)

(declare-fun tp!2385342 () Bool)

(assert (=> b!7988136 (= e!4707723 (and tp!2385343 tp!2385342))))

(assert (=> b!7986515 (= tp!2384361 e!4707723)))

(declare-fun b!7988135 () Bool)

(declare-fun tp!2385345 () Bool)

(assert (=> b!7988135 (= e!4707723 tp!2385345)))

(declare-fun b!7988134 () Bool)

(declare-fun tp!2385346 () Bool)

(declare-fun tp!2385344 () Bool)

(assert (=> b!7988134 (= e!4707723 (and tp!2385346 tp!2385344))))

(declare-fun b!7988133 () Bool)

(assert (=> b!7988133 (= e!4707723 tp_is_empty!53645)))

(assert (= (and b!7986515 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988133))

(assert (= (and b!7986515 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988134))

(assert (= (and b!7986515 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988135))

(assert (= (and b!7986515 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988136))

(declare-fun b!7988140 () Bool)

(declare-fun e!4707724 () Bool)

(declare-fun tp!2385348 () Bool)

(declare-fun tp!2385347 () Bool)

(assert (=> b!7988140 (= e!4707724 (and tp!2385348 tp!2385347))))

(assert (=> b!7986515 (= tp!2384360 e!4707724)))

(declare-fun b!7988139 () Bool)

(declare-fun tp!2385350 () Bool)

(assert (=> b!7988139 (= e!4707724 tp!2385350)))

(declare-fun b!7988138 () Bool)

(declare-fun tp!2385351 () Bool)

(declare-fun tp!2385349 () Bool)

(assert (=> b!7988138 (= e!4707724 (and tp!2385351 tp!2385349))))

(declare-fun b!7988137 () Bool)

(assert (=> b!7988137 (= e!4707724 tp_is_empty!53645)))

(assert (= (and b!7986515 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988137))

(assert (= (and b!7986515 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988138))

(assert (= (and b!7986515 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988139))

(assert (= (and b!7986515 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988140))

(declare-fun b!7988144 () Bool)

(declare-fun e!4707725 () Bool)

(declare-fun tp!2385353 () Bool)

(declare-fun tp!2385352 () Bool)

(assert (=> b!7988144 (= e!4707725 (and tp!2385353 tp!2385352))))

(assert (=> b!7986557 (= tp!2384401 e!4707725)))

(declare-fun b!7988143 () Bool)

(declare-fun tp!2385355 () Bool)

(assert (=> b!7988143 (= e!4707725 tp!2385355)))

(declare-fun b!7988142 () Bool)

(declare-fun tp!2385356 () Bool)

(declare-fun tp!2385354 () Bool)

(assert (=> b!7988142 (= e!4707725 (and tp!2385356 tp!2385354))))

(declare-fun b!7988141 () Bool)

(assert (=> b!7988141 (= e!4707725 tp_is_empty!53645)))

(assert (= (and b!7986557 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988141))

(assert (= (and b!7986557 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988142))

(assert (= (and b!7986557 ((_ is Star!21551) (regOne!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988143))

(assert (= (and b!7986557 ((_ is Union!21551) (regOne!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988144))

(declare-fun b!7988148 () Bool)

(declare-fun e!4707726 () Bool)

(declare-fun tp!2385358 () Bool)

(declare-fun tp!2385357 () Bool)

(assert (=> b!7988148 (= e!4707726 (and tp!2385358 tp!2385357))))

(assert (=> b!7986557 (= tp!2384400 e!4707726)))

(declare-fun b!7988147 () Bool)

(declare-fun tp!2385360 () Bool)

(assert (=> b!7988147 (= e!4707726 tp!2385360)))

(declare-fun b!7988146 () Bool)

(declare-fun tp!2385361 () Bool)

(declare-fun tp!2385359 () Bool)

(assert (=> b!7988146 (= e!4707726 (and tp!2385361 tp!2385359))))

(declare-fun b!7988145 () Bool)

(assert (=> b!7988145 (= e!4707726 tp_is_empty!53645)))

(assert (= (and b!7986557 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988145))

(assert (= (and b!7986557 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988146))

(assert (= (and b!7986557 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988147))

(assert (= (and b!7986557 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regTwo!43614 r!24602))))) b!7988148))

(declare-fun b!7988152 () Bool)

(declare-fun e!4707727 () Bool)

(declare-fun tp!2385363 () Bool)

(declare-fun tp!2385362 () Bool)

(assert (=> b!7988152 (= e!4707727 (and tp!2385363 tp!2385362))))

(assert (=> b!7986573 (= tp!2384416 e!4707727)))

(declare-fun b!7988151 () Bool)

(declare-fun tp!2385365 () Bool)

(assert (=> b!7988151 (= e!4707727 tp!2385365)))

(declare-fun b!7988150 () Bool)

(declare-fun tp!2385366 () Bool)

(declare-fun tp!2385364 () Bool)

(assert (=> b!7988150 (= e!4707727 (and tp!2385366 tp!2385364))))

(declare-fun b!7988149 () Bool)

(assert (=> b!7988149 (= e!4707727 tp_is_empty!53645)))

(assert (= (and b!7986573 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988149))

(assert (= (and b!7986573 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988150))

(assert (= (and b!7986573 ((_ is Star!21551) (regOne!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988151))

(assert (= (and b!7986573 ((_ is Union!21551) (regOne!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988152))

(declare-fun b!7988156 () Bool)

(declare-fun e!4707728 () Bool)

(declare-fun tp!2385368 () Bool)

(declare-fun tp!2385367 () Bool)

(assert (=> b!7988156 (= e!4707728 (and tp!2385368 tp!2385367))))

(assert (=> b!7986573 (= tp!2384415 e!4707728)))

(declare-fun b!7988155 () Bool)

(declare-fun tp!2385370 () Bool)

(assert (=> b!7988155 (= e!4707728 tp!2385370)))

(declare-fun b!7988154 () Bool)

(declare-fun tp!2385371 () Bool)

(declare-fun tp!2385369 () Bool)

(assert (=> b!7988154 (= e!4707728 (and tp!2385371 tp!2385369))))

(declare-fun b!7988153 () Bool)

(assert (=> b!7988153 (= e!4707728 tp_is_empty!53645)))

(assert (= (and b!7986573 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988153))

(assert (= (and b!7986573 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988154))

(assert (= (and b!7986573 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988155))

(assert (= (and b!7986573 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988156))

(declare-fun b!7988160 () Bool)

(declare-fun e!4707729 () Bool)

(declare-fun tp!2385373 () Bool)

(declare-fun tp!2385372 () Bool)

(assert (=> b!7988160 (= e!4707729 (and tp!2385373 tp!2385372))))

(assert (=> b!7986671 (= tp!2384544 e!4707729)))

(declare-fun b!7988159 () Bool)

(declare-fun tp!2385375 () Bool)

(assert (=> b!7988159 (= e!4707729 tp!2385375)))

(declare-fun b!7988158 () Bool)

(declare-fun tp!2385376 () Bool)

(declare-fun tp!2385374 () Bool)

(assert (=> b!7988158 (= e!4707729 (and tp!2385376 tp!2385374))))

(declare-fun b!7988157 () Bool)

(assert (=> b!7988157 (= e!4707729 tp_is_empty!53645)))

(assert (= (and b!7986671 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988157))

(assert (= (and b!7986671 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988158))

(assert (= (and b!7986671 ((_ is Star!21551) (regOne!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988159))

(assert (= (and b!7986671 ((_ is Union!21551) (regOne!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988160))

(declare-fun b!7988164 () Bool)

(declare-fun e!4707730 () Bool)

(declare-fun tp!2385378 () Bool)

(declare-fun tp!2385377 () Bool)

(assert (=> b!7988164 (= e!4707730 (and tp!2385378 tp!2385377))))

(assert (=> b!7986671 (= tp!2384542 e!4707730)))

(declare-fun b!7988163 () Bool)

(declare-fun tp!2385380 () Bool)

(assert (=> b!7988163 (= e!4707730 tp!2385380)))

(declare-fun b!7988162 () Bool)

(declare-fun tp!2385381 () Bool)

(declare-fun tp!2385379 () Bool)

(assert (=> b!7988162 (= e!4707730 (and tp!2385381 tp!2385379))))

(declare-fun b!7988161 () Bool)

(assert (=> b!7988161 (= e!4707730 tp_is_empty!53645)))

(assert (= (and b!7986671 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988161))

(assert (= (and b!7986671 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988162))

(assert (= (and b!7986671 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988163))

(assert (= (and b!7986671 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regOne!43614 r!24602))))) b!7988164))

(declare-fun b!7988168 () Bool)

(declare-fun e!4707731 () Bool)

(declare-fun tp!2385383 () Bool)

(declare-fun tp!2385382 () Bool)

(assert (=> b!7988168 (= e!4707731 (and tp!2385383 tp!2385382))))

(assert (=> b!7986481 (= tp!2384322 e!4707731)))

(declare-fun b!7988167 () Bool)

(declare-fun tp!2385385 () Bool)

(assert (=> b!7988167 (= e!4707731 tp!2385385)))

(declare-fun b!7988166 () Bool)

(declare-fun tp!2385386 () Bool)

(declare-fun tp!2385384 () Bool)

(assert (=> b!7988166 (= e!4707731 (and tp!2385386 tp!2385384))))

(declare-fun b!7988165 () Bool)

(assert (=> b!7988165 (= e!4707731 tp_is_empty!53645)))

(assert (= (and b!7986481 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regOne!43615 r!24602))))) b!7988165))

(assert (= (and b!7986481 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regOne!43615 r!24602))))) b!7988166))

(assert (= (and b!7986481 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regOne!43615 r!24602))))) b!7988167))

(assert (= (and b!7986481 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regOne!43615 r!24602))))) b!7988168))

(declare-fun b!7988172 () Bool)

(declare-fun e!4707732 () Bool)

(declare-fun tp!2385388 () Bool)

(declare-fun tp!2385387 () Bool)

(assert (=> b!7988172 (= e!4707732 (and tp!2385388 tp!2385387))))

(assert (=> b!7986587 (= tp!2384439 e!4707732)))

(declare-fun b!7988171 () Bool)

(declare-fun tp!2385390 () Bool)

(assert (=> b!7988171 (= e!4707732 tp!2385390)))

(declare-fun b!7988170 () Bool)

(declare-fun tp!2385391 () Bool)

(declare-fun tp!2385389 () Bool)

(assert (=> b!7988170 (= e!4707732 (and tp!2385391 tp!2385389))))

(declare-fun b!7988169 () Bool)

(assert (=> b!7988169 (= e!4707732 tp_is_empty!53645)))

(assert (= (and b!7986587 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988169))

(assert (= (and b!7986587 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988170))

(assert (= (and b!7986587 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988171))

(assert (= (and b!7986587 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988172))

(declare-fun b!7988176 () Bool)

(declare-fun e!4707733 () Bool)

(declare-fun tp!2385393 () Bool)

(declare-fun tp!2385392 () Bool)

(assert (=> b!7988176 (= e!4707733 (and tp!2385393 tp!2385392))))

(assert (=> b!7986587 (= tp!2384437 e!4707733)))

(declare-fun b!7988175 () Bool)

(declare-fun tp!2385395 () Bool)

(assert (=> b!7988175 (= e!4707733 tp!2385395)))

(declare-fun b!7988174 () Bool)

(declare-fun tp!2385396 () Bool)

(declare-fun tp!2385394 () Bool)

(assert (=> b!7988174 (= e!4707733 (and tp!2385396 tp!2385394))))

(declare-fun b!7988173 () Bool)

(assert (=> b!7988173 (= e!4707733 tp_is_empty!53645)))

(assert (= (and b!7986587 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988173))

(assert (= (and b!7986587 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988174))

(assert (= (and b!7986587 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988175))

(assert (= (and b!7986587 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988176))

(declare-fun b!7988180 () Bool)

(declare-fun e!4707734 () Bool)

(declare-fun tp!2385398 () Bool)

(declare-fun tp!2385397 () Bool)

(assert (=> b!7988180 (= e!4707734 (and tp!2385398 tp!2385397))))

(assert (=> b!7986596 (= tp!2384448 e!4707734)))

(declare-fun b!7988179 () Bool)

(declare-fun tp!2385400 () Bool)

(assert (=> b!7988179 (= e!4707734 tp!2385400)))

(declare-fun b!7988178 () Bool)

(declare-fun tp!2385401 () Bool)

(declare-fun tp!2385399 () Bool)

(assert (=> b!7988178 (= e!4707734 (and tp!2385401 tp!2385399))))

(declare-fun b!7988177 () Bool)

(assert (=> b!7988177 (= e!4707734 tp_is_empty!53645)))

(assert (= (and b!7986596 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988177))

(assert (= (and b!7986596 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988178))

(assert (= (and b!7986596 ((_ is Star!21551) (reg!21880 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988179))

(assert (= (and b!7986596 ((_ is Union!21551) (reg!21880 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988180))

(declare-fun b!7988184 () Bool)

(declare-fun e!4707735 () Bool)

(declare-fun tp!2385403 () Bool)

(declare-fun tp!2385402 () Bool)

(assert (=> b!7988184 (= e!4707735 (and tp!2385403 tp!2385402))))

(assert (=> b!7986605 (= tp!2384456 e!4707735)))

(declare-fun b!7988183 () Bool)

(declare-fun tp!2385405 () Bool)

(assert (=> b!7988183 (= e!4707735 tp!2385405)))

(declare-fun b!7988182 () Bool)

(declare-fun tp!2385406 () Bool)

(declare-fun tp!2385404 () Bool)

(assert (=> b!7988182 (= e!4707735 (and tp!2385406 tp!2385404))))

(declare-fun b!7988181 () Bool)

(assert (=> b!7988181 (= e!4707735 tp_is_empty!53645)))

(assert (= (and b!7986605 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988181))

(assert (= (and b!7986605 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988182))

(assert (= (and b!7986605 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988183))

(assert (= (and b!7986605 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988184))

(declare-fun b!7988188 () Bool)

(declare-fun e!4707736 () Bool)

(declare-fun tp!2385408 () Bool)

(declare-fun tp!2385407 () Bool)

(assert (=> b!7988188 (= e!4707736 (and tp!2385408 tp!2385407))))

(assert (=> b!7986605 (= tp!2384455 e!4707736)))

(declare-fun b!7988187 () Bool)

(declare-fun tp!2385410 () Bool)

(assert (=> b!7988187 (= e!4707736 tp!2385410)))

(declare-fun b!7988186 () Bool)

(declare-fun tp!2385411 () Bool)

(declare-fun tp!2385409 () Bool)

(assert (=> b!7988186 (= e!4707736 (and tp!2385411 tp!2385409))))

(declare-fun b!7988185 () Bool)

(assert (=> b!7988185 (= e!4707736 tp_is_empty!53645)))

(assert (= (and b!7986605 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988185))

(assert (= (and b!7986605 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988186))

(assert (= (and b!7986605 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988187))

(assert (= (and b!7986605 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regOne!43614 baseR!116))))) b!7988188))

(declare-fun b!7988192 () Bool)

(declare-fun e!4707737 () Bool)

(declare-fun tp!2385413 () Bool)

(declare-fun tp!2385412 () Bool)

(assert (=> b!7988192 (= e!4707737 (and tp!2385413 tp!2385412))))

(assert (=> b!7986657 (= tp!2384521 e!4707737)))

(declare-fun b!7988191 () Bool)

(declare-fun tp!2385415 () Bool)

(assert (=> b!7988191 (= e!4707737 tp!2385415)))

(declare-fun b!7988190 () Bool)

(declare-fun tp!2385416 () Bool)

(declare-fun tp!2385414 () Bool)

(assert (=> b!7988190 (= e!4707737 (and tp!2385416 tp!2385414))))

(declare-fun b!7988189 () Bool)

(assert (=> b!7988189 (= e!4707737 tp_is_empty!53645)))

(assert (= (and b!7986657 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988189))

(assert (= (and b!7986657 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988190))

(assert (= (and b!7986657 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988191))

(assert (= (and b!7986657 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988192))

(declare-fun b!7988196 () Bool)

(declare-fun e!4707738 () Bool)

(declare-fun tp!2385418 () Bool)

(declare-fun tp!2385417 () Bool)

(assert (=> b!7988196 (= e!4707738 (and tp!2385418 tp!2385417))))

(assert (=> b!7986657 (= tp!2384520 e!4707738)))

(declare-fun b!7988195 () Bool)

(declare-fun tp!2385420 () Bool)

(assert (=> b!7988195 (= e!4707738 tp!2385420)))

(declare-fun b!7988194 () Bool)

(declare-fun tp!2385421 () Bool)

(declare-fun tp!2385419 () Bool)

(assert (=> b!7988194 (= e!4707738 (and tp!2385421 tp!2385419))))

(declare-fun b!7988193 () Bool)

(assert (=> b!7988193 (= e!4707738 tp_is_empty!53645)))

(assert (= (and b!7986657 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988193))

(assert (= (and b!7986657 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988194))

(assert (= (and b!7986657 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988195))

(assert (= (and b!7986657 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988196))

(declare-fun b!7988200 () Bool)

(declare-fun e!4707739 () Bool)

(declare-fun tp!2385423 () Bool)

(declare-fun tp!2385422 () Bool)

(assert (=> b!7988200 (= e!4707739 (and tp!2385423 tp!2385422))))

(assert (=> b!7986649 (= tp!2384511 e!4707739)))

(declare-fun b!7988199 () Bool)

(declare-fun tp!2385425 () Bool)

(assert (=> b!7988199 (= e!4707739 tp!2385425)))

(declare-fun b!7988198 () Bool)

(declare-fun tp!2385426 () Bool)

(declare-fun tp!2385424 () Bool)

(assert (=> b!7988198 (= e!4707739 (and tp!2385426 tp!2385424))))

(declare-fun b!7988197 () Bool)

(assert (=> b!7988197 (= e!4707739 tp_is_empty!53645)))

(assert (= (and b!7986649 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988197))

(assert (= (and b!7986649 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988198))

(assert (= (and b!7986649 ((_ is Star!21551) (regOne!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988199))

(assert (= (and b!7986649 ((_ is Union!21551) (regOne!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988200))

(declare-fun b!7988204 () Bool)

(declare-fun e!4707740 () Bool)

(declare-fun tp!2385428 () Bool)

(declare-fun tp!2385427 () Bool)

(assert (=> b!7988204 (= e!4707740 (and tp!2385428 tp!2385427))))

(assert (=> b!7986649 (= tp!2384510 e!4707740)))

(declare-fun b!7988203 () Bool)

(declare-fun tp!2385430 () Bool)

(assert (=> b!7988203 (= e!4707740 tp!2385430)))

(declare-fun b!7988202 () Bool)

(declare-fun tp!2385431 () Bool)

(declare-fun tp!2385429 () Bool)

(assert (=> b!7988202 (= e!4707740 (and tp!2385431 tp!2385429))))

(declare-fun b!7988201 () Bool)

(assert (=> b!7988201 (= e!4707740 tp_is_empty!53645)))

(assert (= (and b!7986649 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988201))

(assert (= (and b!7986649 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988202))

(assert (= (and b!7986649 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988203))

(assert (= (and b!7986649 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regOne!43614 baseR!116))))) b!7988204))

(declare-fun b!7988208 () Bool)

(declare-fun e!4707741 () Bool)

(declare-fun tp!2385433 () Bool)

(declare-fun tp!2385432 () Bool)

(assert (=> b!7988208 (= e!4707741 (and tp!2385433 tp!2385432))))

(assert (=> b!7986518 (= tp!2384368 e!4707741)))

(declare-fun b!7988207 () Bool)

(declare-fun tp!2385435 () Bool)

(assert (=> b!7988207 (= e!4707741 tp!2385435)))

(declare-fun b!7988206 () Bool)

(declare-fun tp!2385436 () Bool)

(declare-fun tp!2385434 () Bool)

(assert (=> b!7988206 (= e!4707741 (and tp!2385436 tp!2385434))))

(declare-fun b!7988205 () Bool)

(assert (=> b!7988205 (= e!4707741 tp_is_empty!53645)))

(assert (= (and b!7986518 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regTwo!43615 baseR!116))))) b!7988205))

(assert (= (and b!7986518 ((_ is Concat!30550) (reg!21880 (reg!21880 (regTwo!43615 baseR!116))))) b!7988206))

(assert (= (and b!7986518 ((_ is Star!21551) (reg!21880 (reg!21880 (regTwo!43615 baseR!116))))) b!7988207))

(assert (= (and b!7986518 ((_ is Union!21551) (reg!21880 (reg!21880 (regTwo!43615 baseR!116))))) b!7988208))

(declare-fun b!7988212 () Bool)

(declare-fun e!4707742 () Bool)

(declare-fun tp!2385438 () Bool)

(declare-fun tp!2385437 () Bool)

(assert (=> b!7988212 (= e!4707742 (and tp!2385438 tp!2385437))))

(assert (=> b!7986527 (= tp!2384376 e!4707742)))

(declare-fun b!7988211 () Bool)

(declare-fun tp!2385440 () Bool)

(assert (=> b!7988211 (= e!4707742 tp!2385440)))

(declare-fun b!7988210 () Bool)

(declare-fun tp!2385441 () Bool)

(declare-fun tp!2385439 () Bool)

(assert (=> b!7988210 (= e!4707742 (and tp!2385441 tp!2385439))))

(declare-fun b!7988209 () Bool)

(assert (=> b!7988209 (= e!4707742 tp_is_empty!53645)))

(assert (= (and b!7986527 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988209))

(assert (= (and b!7986527 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988210))

(assert (= (and b!7986527 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988211))

(assert (= (and b!7986527 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988212))

(declare-fun b!7988216 () Bool)

(declare-fun e!4707743 () Bool)

(declare-fun tp!2385443 () Bool)

(declare-fun tp!2385442 () Bool)

(assert (=> b!7988216 (= e!4707743 (and tp!2385443 tp!2385442))))

(assert (=> b!7986527 (= tp!2384375 e!4707743)))

(declare-fun b!7988215 () Bool)

(declare-fun tp!2385445 () Bool)

(assert (=> b!7988215 (= e!4707743 tp!2385445)))

(declare-fun b!7988214 () Bool)

(declare-fun tp!2385446 () Bool)

(declare-fun tp!2385444 () Bool)

(assert (=> b!7988214 (= e!4707743 (and tp!2385446 tp!2385444))))

(declare-fun b!7988213 () Bool)

(assert (=> b!7988213 (= e!4707743 tp_is_empty!53645)))

(assert (= (and b!7986527 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988213))

(assert (= (and b!7986527 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988214))

(assert (= (and b!7986527 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988215))

(assert (= (and b!7986527 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (reg!21880 r!24602))))) b!7988216))

(declare-fun b!7988220 () Bool)

(declare-fun e!4707744 () Bool)

(declare-fun tp!2385448 () Bool)

(declare-fun tp!2385447 () Bool)

(assert (=> b!7988220 (= e!4707744 (and tp!2385448 tp!2385447))))

(assert (=> b!7986631 (= tp!2384494 e!4707744)))

(declare-fun b!7988219 () Bool)

(declare-fun tp!2385450 () Bool)

(assert (=> b!7988219 (= e!4707744 tp!2385450)))

(declare-fun b!7988218 () Bool)

(declare-fun tp!2385451 () Bool)

(declare-fun tp!2385449 () Bool)

(assert (=> b!7988218 (= e!4707744 (and tp!2385451 tp!2385449))))

(declare-fun b!7988217 () Bool)

(assert (=> b!7988217 (= e!4707744 tp_is_empty!53645)))

(assert (= (and b!7986631 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988217))

(assert (= (and b!7986631 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988218))

(assert (= (and b!7986631 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988219))

(assert (= (and b!7986631 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988220))

(declare-fun b!7988224 () Bool)

(declare-fun e!4707745 () Bool)

(declare-fun tp!2385453 () Bool)

(declare-fun tp!2385452 () Bool)

(assert (=> b!7988224 (= e!4707745 (and tp!2385453 tp!2385452))))

(assert (=> b!7986631 (= tp!2384492 e!4707745)))

(declare-fun b!7988223 () Bool)

(declare-fun tp!2385455 () Bool)

(assert (=> b!7988223 (= e!4707745 tp!2385455)))

(declare-fun b!7988222 () Bool)

(declare-fun tp!2385456 () Bool)

(declare-fun tp!2385454 () Bool)

(assert (=> b!7988222 (= e!4707745 (and tp!2385456 tp!2385454))))

(declare-fun b!7988221 () Bool)

(assert (=> b!7988221 (= e!4707745 tp_is_empty!53645)))

(assert (= (and b!7986631 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988221))

(assert (= (and b!7986631 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988222))

(assert (= (and b!7986631 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988223))

(assert (= (and b!7986631 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regOne!43614 baseR!116))))) b!7988224))

(declare-fun b!7988228 () Bool)

(declare-fun e!4707746 () Bool)

(declare-fun tp!2385458 () Bool)

(declare-fun tp!2385457 () Bool)

(assert (=> b!7988228 (= e!4707746 (and tp!2385458 tp!2385457))))

(assert (=> b!7986640 (= tp!2384503 e!4707746)))

(declare-fun b!7988227 () Bool)

(declare-fun tp!2385460 () Bool)

(assert (=> b!7988227 (= e!4707746 tp!2385460)))

(declare-fun b!7988226 () Bool)

(declare-fun tp!2385461 () Bool)

(declare-fun tp!2385459 () Bool)

(assert (=> b!7988226 (= e!4707746 (and tp!2385461 tp!2385459))))

(declare-fun b!7988225 () Bool)

(assert (=> b!7988225 (= e!4707746 tp_is_empty!53645)))

(assert (= (and b!7986640 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (reg!21880 baseR!116))))) b!7988225))

(assert (= (and b!7986640 ((_ is Concat!30550) (reg!21880 (regOne!43615 (reg!21880 baseR!116))))) b!7988226))

(assert (= (and b!7986640 ((_ is Star!21551) (reg!21880 (regOne!43615 (reg!21880 baseR!116))))) b!7988227))

(assert (= (and b!7986640 ((_ is Union!21551) (reg!21880 (regOne!43615 (reg!21880 baseR!116))))) b!7988228))

(declare-fun b!7988232 () Bool)

(declare-fun e!4707747 () Bool)

(declare-fun tp!2385463 () Bool)

(declare-fun tp!2385462 () Bool)

(assert (=> b!7988232 (= e!4707747 (and tp!2385463 tp!2385462))))

(assert (=> b!7986484 (= tp!2384328 e!4707747)))

(declare-fun b!7988231 () Bool)

(declare-fun tp!2385465 () Bool)

(assert (=> b!7988231 (= e!4707747 tp!2385465)))

(declare-fun b!7988230 () Bool)

(declare-fun tp!2385466 () Bool)

(declare-fun tp!2385464 () Bool)

(assert (=> b!7988230 (= e!4707747 (and tp!2385466 tp!2385464))))

(declare-fun b!7988229 () Bool)

(assert (=> b!7988229 (= e!4707747 tp_is_empty!53645)))

(assert (= (and b!7986484 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988229))

(assert (= (and b!7986484 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988230))

(assert (= (and b!7986484 ((_ is Star!21551) (regOne!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988231))

(assert (= (and b!7986484 ((_ is Union!21551) (regOne!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988232))

(declare-fun b!7988236 () Bool)

(declare-fun e!4707748 () Bool)

(declare-fun tp!2385468 () Bool)

(declare-fun tp!2385467 () Bool)

(assert (=> b!7988236 (= e!4707748 (and tp!2385468 tp!2385467))))

(assert (=> b!7986484 (= tp!2384326 e!4707748)))

(declare-fun b!7988235 () Bool)

(declare-fun tp!2385470 () Bool)

(assert (=> b!7988235 (= e!4707748 tp!2385470)))

(declare-fun b!7988234 () Bool)

(declare-fun tp!2385471 () Bool)

(declare-fun tp!2385469 () Bool)

(assert (=> b!7988234 (= e!4707748 (and tp!2385471 tp!2385469))))

(declare-fun b!7988233 () Bool)

(assert (=> b!7988233 (= e!4707748 tp_is_empty!53645)))

(assert (= (and b!7986484 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988233))

(assert (= (and b!7986484 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988234))

(assert (= (and b!7986484 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988235))

(assert (= (and b!7986484 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regTwo!43614 baseR!116))))) b!7988236))

(declare-fun b!7988240 () Bool)

(declare-fun e!4707749 () Bool)

(declare-fun tp!2385473 () Bool)

(declare-fun tp!2385472 () Bool)

(assert (=> b!7988240 (= e!4707749 (and tp!2385473 tp!2385472))))

(assert (=> b!7986493 (= tp!2384337 e!4707749)))

(declare-fun b!7988239 () Bool)

(declare-fun tp!2385475 () Bool)

(assert (=> b!7988239 (= e!4707749 tp!2385475)))

(declare-fun b!7988238 () Bool)

(declare-fun tp!2385476 () Bool)

(declare-fun tp!2385474 () Bool)

(assert (=> b!7988238 (= e!4707749 (and tp!2385476 tp!2385474))))

(declare-fun b!7988237 () Bool)

(assert (=> b!7988237 (= e!4707749 tp_is_empty!53645)))

(assert (= (and b!7986493 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regOne!43615 r!24602))))) b!7988237))

(assert (= (and b!7986493 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regOne!43615 r!24602))))) b!7988238))

(assert (= (and b!7986493 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regOne!43615 r!24602))))) b!7988239))

(assert (= (and b!7986493 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regOne!43615 r!24602))))) b!7988240))

(declare-fun b!7988244 () Bool)

(declare-fun e!4707750 () Bool)

(declare-fun tp!2385478 () Bool)

(declare-fun tp!2385477 () Bool)

(assert (=> b!7988244 (= e!4707750 (and tp!2385478 tp!2385477))))

(assert (=> b!7986502 (= tp!2384345 e!4707750)))

(declare-fun b!7988243 () Bool)

(declare-fun tp!2385480 () Bool)

(assert (=> b!7988243 (= e!4707750 tp!2385480)))

(declare-fun b!7988242 () Bool)

(declare-fun tp!2385481 () Bool)

(declare-fun tp!2385479 () Bool)

(assert (=> b!7988242 (= e!4707750 (and tp!2385481 tp!2385479))))

(declare-fun b!7988241 () Bool)

(assert (=> b!7988241 (= e!4707750 tp_is_empty!53645)))

(assert (= (and b!7986502 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988241))

(assert (= (and b!7986502 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988242))

(assert (= (and b!7986502 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988243))

(assert (= (and b!7986502 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988244))

(declare-fun b!7988248 () Bool)

(declare-fun e!4707751 () Bool)

(declare-fun tp!2385483 () Bool)

(declare-fun tp!2385482 () Bool)

(assert (=> b!7988248 (= e!4707751 (and tp!2385483 tp!2385482))))

(assert (=> b!7986502 (= tp!2384344 e!4707751)))

(declare-fun b!7988247 () Bool)

(declare-fun tp!2385485 () Bool)

(assert (=> b!7988247 (= e!4707751 tp!2385485)))

(declare-fun b!7988246 () Bool)

(declare-fun tp!2385486 () Bool)

(declare-fun tp!2385484 () Bool)

(assert (=> b!7988246 (= e!4707751 (and tp!2385486 tp!2385484))))

(declare-fun b!7988245 () Bool)

(assert (=> b!7988245 (= e!4707751 tp_is_empty!53645)))

(assert (= (and b!7986502 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988245))

(assert (= (and b!7986502 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988246))

(assert (= (and b!7986502 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988247))

(assert (= (and b!7986502 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regOne!43614 r!24602))))) b!7988248))

(declare-fun b!7988252 () Bool)

(declare-fun e!4707752 () Bool)

(declare-fun tp!2385488 () Bool)

(declare-fun tp!2385487 () Bool)

(assert (=> b!7988252 (= e!4707752 (and tp!2385488 tp!2385487))))

(assert (=> b!7986509 (= tp!2384359 e!4707752)))

(declare-fun b!7988251 () Bool)

(declare-fun tp!2385490 () Bool)

(assert (=> b!7988251 (= e!4707752 tp!2385490)))

(declare-fun b!7988250 () Bool)

(declare-fun tp!2385491 () Bool)

(declare-fun tp!2385489 () Bool)

(assert (=> b!7988250 (= e!4707752 (and tp!2385491 tp!2385489))))

(declare-fun b!7988249 () Bool)

(assert (=> b!7988249 (= e!4707752 tp_is_empty!53645)))

(assert (= (and b!7986509 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988249))

(assert (= (and b!7986509 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988250))

(assert (= (and b!7986509 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988251))

(assert (= (and b!7986509 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988252))

(declare-fun b!7988256 () Bool)

(declare-fun e!4707753 () Bool)

(declare-fun tp!2385493 () Bool)

(declare-fun tp!2385492 () Bool)

(assert (=> b!7988256 (= e!4707753 (and tp!2385493 tp!2385492))))

(assert (=> b!7986509 (= tp!2384357 e!4707753)))

(declare-fun b!7988255 () Bool)

(declare-fun tp!2385495 () Bool)

(assert (=> b!7988255 (= e!4707753 tp!2385495)))

(declare-fun b!7988254 () Bool)

(declare-fun tp!2385496 () Bool)

(declare-fun tp!2385494 () Bool)

(assert (=> b!7988254 (= e!4707753 (and tp!2385496 tp!2385494))))

(declare-fun b!7988253 () Bool)

(assert (=> b!7988253 (= e!4707753 tp_is_empty!53645)))

(assert (= (and b!7986509 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988253))

(assert (= (and b!7986509 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988254))

(assert (= (and b!7986509 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988255))

(assert (= (and b!7986509 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988256))

(declare-fun b!7988260 () Bool)

(declare-fun e!4707754 () Bool)

(declare-fun tp!2385498 () Bool)

(declare-fun tp!2385497 () Bool)

(assert (=> b!7988260 (= e!4707754 (and tp!2385498 tp!2385497))))

(assert (=> b!7986468 (= tp!2384306 e!4707754)))

(declare-fun b!7988259 () Bool)

(declare-fun tp!2385500 () Bool)

(assert (=> b!7988259 (= e!4707754 tp!2385500)))

(declare-fun b!7988258 () Bool)

(declare-fun tp!2385501 () Bool)

(declare-fun tp!2385499 () Bool)

(assert (=> b!7988258 (= e!4707754 (and tp!2385501 tp!2385499))))

(declare-fun b!7988257 () Bool)

(assert (=> b!7988257 (= e!4707754 tp_is_empty!53645)))

(assert (= (and b!7986468 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988257))

(assert (= (and b!7986468 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988258))

(assert (= (and b!7986468 ((_ is Star!21551) (reg!21880 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988259))

(assert (= (and b!7986468 ((_ is Union!21551) (reg!21880 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988260))

(declare-fun b!7988264 () Bool)

(declare-fun e!4707755 () Bool)

(declare-fun tp!2385503 () Bool)

(declare-fun tp!2385502 () Bool)

(assert (=> b!7988264 (= e!4707755 (and tp!2385503 tp!2385502))))

(assert (=> b!7986567 (= tp!2384414 e!4707755)))

(declare-fun b!7988263 () Bool)

(declare-fun tp!2385505 () Bool)

(assert (=> b!7988263 (= e!4707755 tp!2385505)))

(declare-fun b!7988262 () Bool)

(declare-fun tp!2385506 () Bool)

(declare-fun tp!2385504 () Bool)

(assert (=> b!7988262 (= e!4707755 (and tp!2385506 tp!2385504))))

(declare-fun b!7988261 () Bool)

(assert (=> b!7988261 (= e!4707755 tp_is_empty!53645)))

(assert (= (and b!7986567 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988261))

(assert (= (and b!7986567 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988262))

(assert (= (and b!7986567 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988263))

(assert (= (and b!7986567 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988264))

(declare-fun b!7988268 () Bool)

(declare-fun e!4707756 () Bool)

(declare-fun tp!2385508 () Bool)

(declare-fun tp!2385507 () Bool)

(assert (=> b!7988268 (= e!4707756 (and tp!2385508 tp!2385507))))

(assert (=> b!7986567 (= tp!2384412 e!4707756)))

(declare-fun b!7988267 () Bool)

(declare-fun tp!2385510 () Bool)

(assert (=> b!7988267 (= e!4707756 tp!2385510)))

(declare-fun b!7988266 () Bool)

(declare-fun tp!2385511 () Bool)

(declare-fun tp!2385509 () Bool)

(assert (=> b!7988266 (= e!4707756 (and tp!2385511 tp!2385509))))

(declare-fun b!7988265 () Bool)

(assert (=> b!7988265 (= e!4707756 tp_is_empty!53645)))

(assert (= (and b!7986567 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988265))

(assert (= (and b!7986567 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988266))

(assert (= (and b!7986567 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988267))

(assert (= (and b!7986567 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988268))

(declare-fun b!7988272 () Bool)

(declare-fun e!4707757 () Bool)

(declare-fun tp!2385513 () Bool)

(declare-fun tp!2385512 () Bool)

(assert (=> b!7988272 (= e!4707757 (and tp!2385513 tp!2385512))))

(assert (=> b!7986617 (= tp!2384471 e!4707757)))

(declare-fun b!7988271 () Bool)

(declare-fun tp!2385515 () Bool)

(assert (=> b!7988271 (= e!4707757 tp!2385515)))

(declare-fun b!7988270 () Bool)

(declare-fun tp!2385516 () Bool)

(declare-fun tp!2385514 () Bool)

(assert (=> b!7988270 (= e!4707757 (and tp!2385516 tp!2385514))))

(declare-fun b!7988269 () Bool)

(assert (=> b!7988269 (= e!4707757 tp_is_empty!53645)))

(assert (= (and b!7986617 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988269))

(assert (= (and b!7986617 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988270))

(assert (= (and b!7986617 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988271))

(assert (= (and b!7986617 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988272))

(declare-fun b!7988276 () Bool)

(declare-fun e!4707758 () Bool)

(declare-fun tp!2385518 () Bool)

(declare-fun tp!2385517 () Bool)

(assert (=> b!7988276 (= e!4707758 (and tp!2385518 tp!2385517))))

(assert (=> b!7986617 (= tp!2384470 e!4707758)))

(declare-fun b!7988275 () Bool)

(declare-fun tp!2385520 () Bool)

(assert (=> b!7988275 (= e!4707758 tp!2385520)))

(declare-fun b!7988274 () Bool)

(declare-fun tp!2385521 () Bool)

(declare-fun tp!2385519 () Bool)

(assert (=> b!7988274 (= e!4707758 (and tp!2385521 tp!2385519))))

(declare-fun b!7988273 () Bool)

(assert (=> b!7988273 (= e!4707758 tp_is_empty!53645)))

(assert (= (and b!7986617 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988273))

(assert (= (and b!7986617 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988274))

(assert (= (and b!7986617 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988275))

(assert (= (and b!7986617 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regTwo!43614 r!24602))))) b!7988276))

(declare-fun b!7988280 () Bool)

(declare-fun e!4707759 () Bool)

(declare-fun tp!2385523 () Bool)

(declare-fun tp!2385522 () Bool)

(assert (=> b!7988280 (= e!4707759 (and tp!2385523 tp!2385522))))

(assert (=> b!7986599 (= tp!2384454 e!4707759)))

(declare-fun b!7988279 () Bool)

(declare-fun tp!2385525 () Bool)

(assert (=> b!7988279 (= e!4707759 tp!2385525)))

(declare-fun b!7988278 () Bool)

(declare-fun tp!2385526 () Bool)

(declare-fun tp!2385524 () Bool)

(assert (=> b!7988278 (= e!4707759 (and tp!2385526 tp!2385524))))

(declare-fun b!7988277 () Bool)

(assert (=> b!7988277 (= e!4707759 tp_is_empty!53645)))

(assert (= (and b!7986599 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988277))

(assert (= (and b!7986599 ((_ is Concat!30550) (regOne!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988278))

(assert (= (and b!7986599 ((_ is Star!21551) (regOne!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988279))

(assert (= (and b!7986599 ((_ is Union!21551) (regOne!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988280))

(declare-fun b!7988284 () Bool)

(declare-fun e!4707760 () Bool)

(declare-fun tp!2385528 () Bool)

(declare-fun tp!2385527 () Bool)

(assert (=> b!7988284 (= e!4707760 (and tp!2385528 tp!2385527))))

(assert (=> b!7986599 (= tp!2384452 e!4707760)))

(declare-fun b!7988283 () Bool)

(declare-fun tp!2385530 () Bool)

(assert (=> b!7988283 (= e!4707760 tp!2385530)))

(declare-fun b!7988282 () Bool)

(declare-fun tp!2385531 () Bool)

(declare-fun tp!2385529 () Bool)

(assert (=> b!7988282 (= e!4707760 (and tp!2385531 tp!2385529))))

(declare-fun b!7988281 () Bool)

(assert (=> b!7988281 (= e!4707760 tp_is_empty!53645)))

(assert (= (and b!7986599 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988281))

(assert (= (and b!7986599 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988282))

(assert (= (and b!7986599 ((_ is Star!21551) (regTwo!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988283))

(assert (= (and b!7986599 ((_ is Union!21551) (regTwo!43614 (reg!21880 (reg!21880 baseR!116))))) b!7988284))

(declare-fun b!7988288 () Bool)

(declare-fun e!4707761 () Bool)

(declare-fun tp!2385533 () Bool)

(declare-fun tp!2385532 () Bool)

(assert (=> b!7988288 (= e!4707761 (and tp!2385533 tp!2385532))))

(assert (=> b!7986608 (= tp!2384463 e!4707761)))

(declare-fun b!7988287 () Bool)

(declare-fun tp!2385535 () Bool)

(assert (=> b!7988287 (= e!4707761 tp!2385535)))

(declare-fun b!7988286 () Bool)

(declare-fun tp!2385536 () Bool)

(declare-fun tp!2385534 () Bool)

(assert (=> b!7988286 (= e!4707761 (and tp!2385536 tp!2385534))))

(declare-fun b!7988285 () Bool)

(assert (=> b!7988285 (= e!4707761 tp_is_empty!53645)))

(assert (= (and b!7986608 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988285))

(assert (= (and b!7986608 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988286))

(assert (= (and b!7986608 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988287))

(assert (= (and b!7986608 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988288))

(declare-fun b!7988292 () Bool)

(declare-fun e!4707762 () Bool)

(declare-fun tp!2385538 () Bool)

(declare-fun tp!2385537 () Bool)

(assert (=> b!7988292 (= e!4707762 (and tp!2385538 tp!2385537))))

(assert (=> b!7986651 (= tp!2384519 e!4707762)))

(declare-fun b!7988291 () Bool)

(declare-fun tp!2385540 () Bool)

(assert (=> b!7988291 (= e!4707762 tp!2385540)))

(declare-fun b!7988290 () Bool)

(declare-fun tp!2385541 () Bool)

(declare-fun tp!2385539 () Bool)

(assert (=> b!7988290 (= e!4707762 (and tp!2385541 tp!2385539))))

(declare-fun b!7988289 () Bool)

(assert (=> b!7988289 (= e!4707762 tp_is_empty!53645)))

(assert (= (and b!7986651 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988289))

(assert (= (and b!7986651 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988290))

(assert (= (and b!7986651 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988291))

(assert (= (and b!7986651 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988292))

(declare-fun b!7988296 () Bool)

(declare-fun e!4707763 () Bool)

(declare-fun tp!2385543 () Bool)

(declare-fun tp!2385542 () Bool)

(assert (=> b!7988296 (= e!4707763 (and tp!2385543 tp!2385542))))

(assert (=> b!7986651 (= tp!2384517 e!4707763)))

(declare-fun b!7988295 () Bool)

(declare-fun tp!2385545 () Bool)

(assert (=> b!7988295 (= e!4707763 tp!2385545)))

(declare-fun b!7988294 () Bool)

(declare-fun tp!2385546 () Bool)

(declare-fun tp!2385544 () Bool)

(assert (=> b!7988294 (= e!4707763 (and tp!2385546 tp!2385544))))

(declare-fun b!7988293 () Bool)

(assert (=> b!7988293 (= e!4707763 tp_is_empty!53645)))

(assert (= (and b!7986651 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988293))

(assert (= (and b!7986651 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988294))

(assert (= (and b!7986651 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988295))

(assert (= (and b!7986651 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regOne!43615 baseR!116))))) b!7988296))

(declare-fun b!7988300 () Bool)

(declare-fun e!4707764 () Bool)

(declare-fun tp!2385548 () Bool)

(declare-fun tp!2385547 () Bool)

(assert (=> b!7988300 (= e!4707764 (and tp!2385548 tp!2385547))))

(assert (=> b!7986660 (= tp!2384528 e!4707764)))

(declare-fun b!7988299 () Bool)

(declare-fun tp!2385550 () Bool)

(assert (=> b!7988299 (= e!4707764 tp!2385550)))

(declare-fun b!7988298 () Bool)

(declare-fun tp!2385551 () Bool)

(declare-fun tp!2385549 () Bool)

(assert (=> b!7988298 (= e!4707764 (and tp!2385551 tp!2385549))))

(declare-fun b!7988297 () Bool)

(assert (=> b!7988297 (= e!4707764 tp_is_empty!53645)))

(assert (= (and b!7986660 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regOne!43615 baseR!116))))) b!7988297))

(assert (= (and b!7986660 ((_ is Concat!30550) (reg!21880 (reg!21880 (regOne!43615 baseR!116))))) b!7988298))

(assert (= (and b!7986660 ((_ is Star!21551) (reg!21880 (reg!21880 (regOne!43615 baseR!116))))) b!7988299))

(assert (= (and b!7986660 ((_ is Union!21551) (reg!21880 (reg!21880 (regOne!43615 baseR!116))))) b!7988300))

(declare-fun b!7988304 () Bool)

(declare-fun e!4707765 () Bool)

(declare-fun tp!2385553 () Bool)

(declare-fun tp!2385552 () Bool)

(assert (=> b!7988304 (= e!4707765 (and tp!2385553 tp!2385552))))

(assert (=> b!7986669 (= tp!2384536 e!4707765)))

(declare-fun b!7988303 () Bool)

(declare-fun tp!2385555 () Bool)

(assert (=> b!7988303 (= e!4707765 tp!2385555)))

(declare-fun b!7988302 () Bool)

(declare-fun tp!2385556 () Bool)

(declare-fun tp!2385554 () Bool)

(assert (=> b!7988302 (= e!4707765 (and tp!2385556 tp!2385554))))

(declare-fun b!7988301 () Bool)

(assert (=> b!7988301 (= e!4707765 tp_is_empty!53645)))

(assert (= (and b!7986669 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988301))

(assert (= (and b!7986669 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988302))

(assert (= (and b!7986669 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988303))

(assert (= (and b!7986669 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988304))

(declare-fun b!7988308 () Bool)

(declare-fun e!4707766 () Bool)

(declare-fun tp!2385558 () Bool)

(declare-fun tp!2385557 () Bool)

(assert (=> b!7988308 (= e!4707766 (and tp!2385558 tp!2385557))))

(assert (=> b!7986669 (= tp!2384535 e!4707766)))

(declare-fun b!7988307 () Bool)

(declare-fun tp!2385560 () Bool)

(assert (=> b!7988307 (= e!4707766 tp!2385560)))

(declare-fun b!7988306 () Bool)

(declare-fun tp!2385561 () Bool)

(declare-fun tp!2385559 () Bool)

(assert (=> b!7988306 (= e!4707766 (and tp!2385561 tp!2385559))))

(declare-fun b!7988305 () Bool)

(assert (=> b!7988305 (= e!4707766 tp_is_empty!53645)))

(assert (= (and b!7986669 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988305))

(assert (= (and b!7986669 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988306))

(assert (= (and b!7986669 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988307))

(assert (= (and b!7986669 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regOne!43614 r!24602))))) b!7988308))

(declare-fun b!7988312 () Bool)

(declare-fun e!4707767 () Bool)

(declare-fun tp!2385563 () Bool)

(declare-fun tp!2385562 () Bool)

(assert (=> b!7988312 (= e!4707767 (and tp!2385563 tp!2385562))))

(assert (=> b!7986537 (= tp!2384386 e!4707767)))

(declare-fun b!7988311 () Bool)

(declare-fun tp!2385565 () Bool)

(assert (=> b!7988311 (= e!4707767 tp!2385565)))

(declare-fun b!7988310 () Bool)

(declare-fun tp!2385566 () Bool)

(declare-fun tp!2385564 () Bool)

(assert (=> b!7988310 (= e!4707767 (and tp!2385566 tp!2385564))))

(declare-fun b!7988309 () Bool)

(assert (=> b!7988309 (= e!4707767 tp_is_empty!53645)))

(assert (= (and b!7986537 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988309))

(assert (= (and b!7986537 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988310))

(assert (= (and b!7986537 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988311))

(assert (= (and b!7986537 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988312))

(declare-fun b!7988316 () Bool)

(declare-fun e!4707768 () Bool)

(declare-fun tp!2385568 () Bool)

(declare-fun tp!2385567 () Bool)

(assert (=> b!7988316 (= e!4707768 (and tp!2385568 tp!2385567))))

(assert (=> b!7986537 (= tp!2384385 e!4707768)))

(declare-fun b!7988315 () Bool)

(declare-fun tp!2385570 () Bool)

(assert (=> b!7988315 (= e!4707768 tp!2385570)))

(declare-fun b!7988314 () Bool)

(declare-fun tp!2385571 () Bool)

(declare-fun tp!2385569 () Bool)

(assert (=> b!7988314 (= e!4707768 (and tp!2385571 tp!2385569))))

(declare-fun b!7988313 () Bool)

(assert (=> b!7988313 (= e!4707768 tp_is_empty!53645)))

(assert (= (and b!7986537 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988313))

(assert (= (and b!7986537 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988314))

(assert (= (and b!7986537 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988315))

(assert (= (and b!7986537 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regTwo!43615 baseR!116))))) b!7988316))

(declare-fun b!7988320 () Bool)

(declare-fun e!4707769 () Bool)

(declare-fun tp!2385573 () Bool)

(declare-fun tp!2385572 () Bool)

(assert (=> b!7988320 (= e!4707769 (and tp!2385573 tp!2385572))))

(assert (=> b!7986521 (= tp!2384374 e!4707769)))

(declare-fun b!7988319 () Bool)

(declare-fun tp!2385575 () Bool)

(assert (=> b!7988319 (= e!4707769 tp!2385575)))

(declare-fun b!7988318 () Bool)

(declare-fun tp!2385576 () Bool)

(declare-fun tp!2385574 () Bool)

(assert (=> b!7988318 (= e!4707769 (and tp!2385576 tp!2385574))))

(declare-fun b!7988317 () Bool)

(assert (=> b!7988317 (= e!4707769 tp_is_empty!53645)))

(assert (= (and b!7986521 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988317))

(assert (= (and b!7986521 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988318))

(assert (= (and b!7986521 ((_ is Star!21551) (regOne!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988319))

(assert (= (and b!7986521 ((_ is Union!21551) (regOne!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988320))

(declare-fun b!7988324 () Bool)

(declare-fun e!4707770 () Bool)

(declare-fun tp!2385578 () Bool)

(declare-fun tp!2385577 () Bool)

(assert (=> b!7988324 (= e!4707770 (and tp!2385578 tp!2385577))))

(assert (=> b!7986521 (= tp!2384372 e!4707770)))

(declare-fun b!7988323 () Bool)

(declare-fun tp!2385580 () Bool)

(assert (=> b!7988323 (= e!4707770 tp!2385580)))

(declare-fun b!7988322 () Bool)

(declare-fun tp!2385581 () Bool)

(declare-fun tp!2385579 () Bool)

(assert (=> b!7988322 (= e!4707770 (and tp!2385581 tp!2385579))))

(declare-fun b!7988321 () Bool)

(assert (=> b!7988321 (= e!4707770 tp_is_empty!53645)))

(assert (= (and b!7986521 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988321))

(assert (= (and b!7986521 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988322))

(assert (= (and b!7986521 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988323))

(assert (= (and b!7986521 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (reg!21880 r!24602))))) b!7988324))

(declare-fun b!7988328 () Bool)

(declare-fun e!4707771 () Bool)

(declare-fun tp!2385583 () Bool)

(declare-fun tp!2385582 () Bool)

(assert (=> b!7988328 (= e!4707771 (and tp!2385583 tp!2385582))))

(assert (=> b!7986683 (= tp!2384554 e!4707771)))

(declare-fun b!7988327 () Bool)

(declare-fun tp!2385585 () Bool)

(assert (=> b!7988327 (= e!4707771 tp!2385585)))

(declare-fun b!7988326 () Bool)

(declare-fun tp!2385586 () Bool)

(declare-fun tp!2385584 () Bool)

(assert (=> b!7988326 (= e!4707771 (and tp!2385586 tp!2385584))))

(declare-fun b!7988325 () Bool)

(assert (=> b!7988325 (= e!4707771 tp_is_empty!53645)))

(assert (= (and b!7986683 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988325))

(assert (= (and b!7986683 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988326))

(assert (= (and b!7986683 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988327))

(assert (= (and b!7986683 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988328))

(declare-fun b!7988332 () Bool)

(declare-fun e!4707772 () Bool)

(declare-fun tp!2385588 () Bool)

(declare-fun tp!2385587 () Bool)

(assert (=> b!7988332 (= e!4707772 (and tp!2385588 tp!2385587))))

(assert (=> b!7986683 (= tp!2384552 e!4707772)))

(declare-fun b!7988331 () Bool)

(declare-fun tp!2385590 () Bool)

(assert (=> b!7988331 (= e!4707772 tp!2385590)))

(declare-fun b!7988330 () Bool)

(declare-fun tp!2385591 () Bool)

(declare-fun tp!2385589 () Bool)

(assert (=> b!7988330 (= e!4707772 (and tp!2385591 tp!2385589))))

(declare-fun b!7988329 () Bool)

(assert (=> b!7988329 (= e!4707772 tp_is_empty!53645)))

(assert (= (and b!7986683 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988329))

(assert (= (and b!7986683 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988330))

(assert (= (and b!7986683 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988331))

(assert (= (and b!7986683 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988332))

(declare-fun b!7988336 () Bool)

(declare-fun e!4707773 () Bool)

(declare-fun tp!2385593 () Bool)

(declare-fun tp!2385592 () Bool)

(assert (=> b!7988336 (= e!4707773 (and tp!2385593 tp!2385592))))

(assert (=> b!7986496 (= tp!2384343 e!4707773)))

(declare-fun b!7988335 () Bool)

(declare-fun tp!2385595 () Bool)

(assert (=> b!7988335 (= e!4707773 tp!2385595)))

(declare-fun b!7988334 () Bool)

(declare-fun tp!2385596 () Bool)

(declare-fun tp!2385594 () Bool)

(assert (=> b!7988334 (= e!4707773 (and tp!2385596 tp!2385594))))

(declare-fun b!7988333 () Bool)

(assert (=> b!7988333 (= e!4707773 tp_is_empty!53645)))

(assert (= (and b!7986496 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988333))

(assert (= (and b!7986496 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988334))

(assert (= (and b!7986496 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988335))

(assert (= (and b!7986496 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988336))

(declare-fun b!7988340 () Bool)

(declare-fun e!4707774 () Bool)

(declare-fun tp!2385598 () Bool)

(declare-fun tp!2385597 () Bool)

(assert (=> b!7988340 (= e!4707774 (and tp!2385598 tp!2385597))))

(assert (=> b!7986496 (= tp!2384341 e!4707774)))

(declare-fun b!7988339 () Bool)

(declare-fun tp!2385600 () Bool)

(assert (=> b!7988339 (= e!4707774 tp!2385600)))

(declare-fun b!7988338 () Bool)

(declare-fun tp!2385601 () Bool)

(declare-fun tp!2385599 () Bool)

(assert (=> b!7988338 (= e!4707774 (and tp!2385601 tp!2385599))))

(declare-fun b!7988337 () Bool)

(assert (=> b!7988337 (= e!4707774 tp_is_empty!53645)))

(assert (= (and b!7986496 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988337))

(assert (= (and b!7986496 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988338))

(assert (= (and b!7986496 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988339))

(assert (= (and b!7986496 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regOne!43614 r!24602))))) b!7988340))

(declare-fun b!7988344 () Bool)

(declare-fun e!4707775 () Bool)

(declare-fun tp!2385603 () Bool)

(declare-fun tp!2385602 () Bool)

(assert (=> b!7988344 (= e!4707775 (and tp!2385603 tp!2385602))))

(assert (=> b!7986505 (= tp!2384352 e!4707775)))

(declare-fun b!7988343 () Bool)

(declare-fun tp!2385605 () Bool)

(assert (=> b!7988343 (= e!4707775 tp!2385605)))

(declare-fun b!7988342 () Bool)

(declare-fun tp!2385606 () Bool)

(declare-fun tp!2385604 () Bool)

(assert (=> b!7988342 (= e!4707775 (and tp!2385606 tp!2385604))))

(declare-fun b!7988341 () Bool)

(assert (=> b!7988341 (= e!4707775 tp_is_empty!53645)))

(assert (= (and b!7986505 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regOne!43615 r!24602))))) b!7988341))

(assert (= (and b!7986505 ((_ is Concat!30550) (reg!21880 (reg!21880 (regOne!43615 r!24602))))) b!7988342))

(assert (= (and b!7986505 ((_ is Star!21551) (reg!21880 (reg!21880 (regOne!43615 r!24602))))) b!7988343))

(assert (= (and b!7986505 ((_ is Union!21551) (reg!21880 (reg!21880 (regOne!43615 r!24602))))) b!7988344))

(declare-fun b!7988348 () Bool)

(declare-fun e!4707776 () Bool)

(declare-fun tp!2385608 () Bool)

(declare-fun tp!2385607 () Bool)

(assert (=> b!7988348 (= e!4707776 (and tp!2385608 tp!2385607))))

(assert (=> b!7986561 (= tp!2384409 e!4707776)))

(declare-fun b!7988347 () Bool)

(declare-fun tp!2385610 () Bool)

(assert (=> b!7988347 (= e!4707776 tp!2385610)))

(declare-fun b!7988346 () Bool)

(declare-fun tp!2385611 () Bool)

(declare-fun tp!2385609 () Bool)

(assert (=> b!7988346 (= e!4707776 (and tp!2385611 tp!2385609))))

(declare-fun b!7988345 () Bool)

(assert (=> b!7988345 (= e!4707776 tp_is_empty!53645)))

(assert (= (and b!7986561 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988345))

(assert (= (and b!7986561 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988346))

(assert (= (and b!7986561 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988347))

(assert (= (and b!7986561 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988348))

(declare-fun b!7988352 () Bool)

(declare-fun e!4707777 () Bool)

(declare-fun tp!2385613 () Bool)

(declare-fun tp!2385612 () Bool)

(assert (=> b!7988352 (= e!4707777 (and tp!2385613 tp!2385612))))

(assert (=> b!7986561 (= tp!2384407 e!4707777)))

(declare-fun b!7988351 () Bool)

(declare-fun tp!2385615 () Bool)

(assert (=> b!7988351 (= e!4707777 tp!2385615)))

(declare-fun b!7988350 () Bool)

(declare-fun tp!2385616 () Bool)

(declare-fun tp!2385614 () Bool)

(assert (=> b!7988350 (= e!4707777 (and tp!2385616 tp!2385614))))

(declare-fun b!7988349 () Bool)

(assert (=> b!7988349 (= e!4707777 tp_is_empty!53645)))

(assert (= (and b!7986561 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988349))

(assert (= (and b!7986561 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988350))

(assert (= (and b!7986561 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988351))

(assert (= (and b!7986561 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regTwo!43615 r!24602))))) b!7988352))

(declare-fun b!7988356 () Bool)

(declare-fun e!4707778 () Bool)

(declare-fun tp!2385618 () Bool)

(declare-fun tp!2385617 () Bool)

(assert (=> b!7988356 (= e!4707778 (and tp!2385618 tp!2385617))))

(assert (=> b!7986471 (= tp!2384312 e!4707778)))

(declare-fun b!7988355 () Bool)

(declare-fun tp!2385620 () Bool)

(assert (=> b!7988355 (= e!4707778 tp!2385620)))

(declare-fun b!7988354 () Bool)

(declare-fun tp!2385621 () Bool)

(declare-fun tp!2385619 () Bool)

(assert (=> b!7988354 (= e!4707778 (and tp!2385621 tp!2385619))))

(declare-fun b!7988353 () Bool)

(assert (=> b!7988353 (= e!4707778 tp_is_empty!53645)))

(assert (= (and b!7986471 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988353))

(assert (= (and b!7986471 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988354))

(assert (= (and b!7986471 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988355))

(assert (= (and b!7986471 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988356))

(declare-fun b!7988360 () Bool)

(declare-fun e!4707779 () Bool)

(declare-fun tp!2385623 () Bool)

(declare-fun tp!2385622 () Bool)

(assert (=> b!7988360 (= e!4707779 (and tp!2385623 tp!2385622))))

(assert (=> b!7986471 (= tp!2384310 e!4707779)))

(declare-fun b!7988359 () Bool)

(declare-fun tp!2385625 () Bool)

(assert (=> b!7988359 (= e!4707779 tp!2385625)))

(declare-fun b!7988358 () Bool)

(declare-fun tp!2385626 () Bool)

(declare-fun tp!2385624 () Bool)

(assert (=> b!7988358 (= e!4707779 (and tp!2385626 tp!2385624))))

(declare-fun b!7988357 () Bool)

(assert (=> b!7988357 (= e!4707779 tp_is_empty!53645)))

(assert (= (and b!7986471 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988357))

(assert (= (and b!7986471 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988358))

(assert (= (and b!7986471 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988359))

(assert (= (and b!7986471 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988360))

(declare-fun b!7988364 () Bool)

(declare-fun e!4707780 () Bool)

(declare-fun tp!2385628 () Bool)

(declare-fun tp!2385627 () Bool)

(assert (=> b!7988364 (= e!4707780 (and tp!2385628 tp!2385627))))

(assert (=> b!7986611 (= tp!2384469 e!4707780)))

(declare-fun b!7988363 () Bool)

(declare-fun tp!2385630 () Bool)

(assert (=> b!7988363 (= e!4707780 tp!2385630)))

(declare-fun b!7988362 () Bool)

(declare-fun tp!2385631 () Bool)

(declare-fun tp!2385629 () Bool)

(assert (=> b!7988362 (= e!4707780 (and tp!2385631 tp!2385629))))

(declare-fun b!7988361 () Bool)

(assert (=> b!7988361 (= e!4707780 tp_is_empty!53645)))

(assert (= (and b!7986611 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988361))

(assert (= (and b!7986611 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988362))

(assert (= (and b!7986611 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988363))

(assert (= (and b!7986611 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988364))

(declare-fun b!7988368 () Bool)

(declare-fun e!4707781 () Bool)

(declare-fun tp!2385633 () Bool)

(declare-fun tp!2385632 () Bool)

(assert (=> b!7988368 (= e!4707781 (and tp!2385633 tp!2385632))))

(assert (=> b!7986611 (= tp!2384467 e!4707781)))

(declare-fun b!7988367 () Bool)

(declare-fun tp!2385635 () Bool)

(assert (=> b!7988367 (= e!4707781 tp!2385635)))

(declare-fun b!7988366 () Bool)

(declare-fun tp!2385636 () Bool)

(declare-fun tp!2385634 () Bool)

(assert (=> b!7988366 (= e!4707781 (and tp!2385636 tp!2385634))))

(declare-fun b!7988365 () Bool)

(assert (=> b!7988365 (= e!4707781 tp_is_empty!53645)))

(assert (= (and b!7986611 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988365))

(assert (= (and b!7986611 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988366))

(assert (= (and b!7986611 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988367))

(assert (= (and b!7986611 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regTwo!43614 r!24602))))) b!7988368))

(declare-fun b!7988372 () Bool)

(declare-fun e!4707782 () Bool)

(declare-fun tp!2385638 () Bool)

(declare-fun tp!2385637 () Bool)

(assert (=> b!7988372 (= e!4707782 (and tp!2385638 tp!2385637))))

(assert (=> b!7986620 (= tp!2384478 e!4707782)))

(declare-fun b!7988371 () Bool)

(declare-fun tp!2385640 () Bool)

(assert (=> b!7988371 (= e!4707782 tp!2385640)))

(declare-fun b!7988370 () Bool)

(declare-fun tp!2385641 () Bool)

(declare-fun tp!2385639 () Bool)

(assert (=> b!7988370 (= e!4707782 (and tp!2385641 tp!2385639))))

(declare-fun b!7988369 () Bool)

(assert (=> b!7988369 (= e!4707782 tp_is_empty!53645)))

(assert (= (and b!7986620 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regTwo!43615 r!24602))))) b!7988369))

(assert (= (and b!7986620 ((_ is Concat!30550) (reg!21880 (reg!21880 (regTwo!43615 r!24602))))) b!7988370))

(assert (= (and b!7986620 ((_ is Star!21551) (reg!21880 (reg!21880 (regTwo!43615 r!24602))))) b!7988371))

(assert (= (and b!7986620 ((_ is Union!21551) (reg!21880 (reg!21880 (regTwo!43615 r!24602))))) b!7988372))

(declare-fun b!7988376 () Bool)

(declare-fun e!4707783 () Bool)

(declare-fun tp!2385643 () Bool)

(declare-fun tp!2385642 () Bool)

(assert (=> b!7988376 (= e!4707783 (and tp!2385643 tp!2385642))))

(assert (=> b!7986531 (= tp!2384381 e!4707783)))

(declare-fun b!7988375 () Bool)

(declare-fun tp!2385645 () Bool)

(assert (=> b!7988375 (= e!4707783 tp!2385645)))

(declare-fun b!7988374 () Bool)

(declare-fun tp!2385646 () Bool)

(declare-fun tp!2385644 () Bool)

(assert (=> b!7988374 (= e!4707783 (and tp!2385646 tp!2385644))))

(declare-fun b!7988373 () Bool)

(assert (=> b!7988373 (= e!4707783 tp_is_empty!53645)))

(assert (= (and b!7986531 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988373))

(assert (= (and b!7986531 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988374))

(assert (= (and b!7986531 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988375))

(assert (= (and b!7986531 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988376))

(declare-fun b!7988380 () Bool)

(declare-fun e!4707784 () Bool)

(declare-fun tp!2385648 () Bool)

(declare-fun tp!2385647 () Bool)

(assert (=> b!7988380 (= e!4707784 (and tp!2385648 tp!2385647))))

(assert (=> b!7986531 (= tp!2384380 e!4707784)))

(declare-fun b!7988379 () Bool)

(declare-fun tp!2385650 () Bool)

(assert (=> b!7988379 (= e!4707784 tp!2385650)))

(declare-fun b!7988378 () Bool)

(declare-fun tp!2385651 () Bool)

(declare-fun tp!2385649 () Bool)

(assert (=> b!7988378 (= e!4707784 (and tp!2385651 tp!2385649))))

(declare-fun b!7988377 () Bool)

(assert (=> b!7988377 (= e!4707784 tp_is_empty!53645)))

(assert (= (and b!7986531 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988377))

(assert (= (and b!7986531 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988378))

(assert (= (and b!7986531 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988379))

(assert (= (and b!7986531 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regTwo!43615 baseR!116))))) b!7988380))

(declare-fun b!7988384 () Bool)

(declare-fun e!4707785 () Bool)

(declare-fun tp!2385653 () Bool)

(declare-fun tp!2385652 () Bool)

(assert (=> b!7988384 (= e!4707785 (and tp!2385653 tp!2385652))))

(assert (=> b!7986629 (= tp!2384486 e!4707785)))

(declare-fun b!7988383 () Bool)

(declare-fun tp!2385655 () Bool)

(assert (=> b!7988383 (= e!4707785 tp!2385655)))

(declare-fun b!7988382 () Bool)

(declare-fun tp!2385656 () Bool)

(declare-fun tp!2385654 () Bool)

(assert (=> b!7988382 (= e!4707785 (and tp!2385656 tp!2385654))))

(declare-fun b!7988381 () Bool)

(assert (=> b!7988381 (= e!4707785 tp_is_empty!53645)))

(assert (= (and b!7986629 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988381))

(assert (= (and b!7986629 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988382))

(assert (= (and b!7986629 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988383))

(assert (= (and b!7986629 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988384))

(declare-fun b!7988388 () Bool)

(declare-fun e!4707786 () Bool)

(declare-fun tp!2385658 () Bool)

(declare-fun tp!2385657 () Bool)

(assert (=> b!7988388 (= e!4707786 (and tp!2385658 tp!2385657))))

(assert (=> b!7986629 (= tp!2384485 e!4707786)))

(declare-fun b!7988387 () Bool)

(declare-fun tp!2385660 () Bool)

(assert (=> b!7988387 (= e!4707786 tp!2385660)))

(declare-fun b!7988386 () Bool)

(declare-fun tp!2385661 () Bool)

(declare-fun tp!2385659 () Bool)

(assert (=> b!7988386 (= e!4707786 (and tp!2385661 tp!2385659))))

(declare-fun b!7988385 () Bool)

(assert (=> b!7988385 (= e!4707786 tp_is_empty!53645)))

(assert (= (and b!7986629 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988385))

(assert (= (and b!7986629 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988386))

(assert (= (and b!7986629 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988387))

(assert (= (and b!7986629 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (reg!21880 baseR!116))))) b!7988388))

(declare-fun b!7988392 () Bool)

(declare-fun e!4707787 () Bool)

(declare-fun tp!2385663 () Bool)

(declare-fun tp!2385662 () Bool)

(assert (=> b!7988392 (= e!4707787 (and tp!2385663 tp!2385662))))

(assert (=> b!7986482 (= tp!2384320 e!4707787)))

(declare-fun b!7988391 () Bool)

(declare-fun tp!2385665 () Bool)

(assert (=> b!7988391 (= e!4707787 tp!2385665)))

(declare-fun b!7988390 () Bool)

(declare-fun tp!2385666 () Bool)

(declare-fun tp!2385664 () Bool)

(assert (=> b!7988390 (= e!4707787 (and tp!2385666 tp!2385664))))

(declare-fun b!7988389 () Bool)

(assert (=> b!7988389 (= e!4707787 tp_is_empty!53645)))

(assert (= (and b!7986482 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988389))

(assert (= (and b!7986482 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988390))

(assert (= (and b!7986482 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988391))

(assert (= (and b!7986482 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988392))

(declare-fun b!7988396 () Bool)

(declare-fun e!4707788 () Bool)

(declare-fun tp!2385668 () Bool)

(declare-fun tp!2385667 () Bool)

(assert (=> b!7988396 (= e!4707788 (and tp!2385668 tp!2385667))))

(assert (=> b!7986482 (= tp!2384319 e!4707788)))

(declare-fun b!7988395 () Bool)

(declare-fun tp!2385670 () Bool)

(assert (=> b!7988395 (= e!4707788 tp!2385670)))

(declare-fun b!7988394 () Bool)

(declare-fun tp!2385671 () Bool)

(declare-fun tp!2385669 () Bool)

(assert (=> b!7988394 (= e!4707788 (and tp!2385671 tp!2385669))))

(declare-fun b!7988393 () Bool)

(assert (=> b!7988393 (= e!4707788 tp_is_empty!53645)))

(assert (= (and b!7986482 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988393))

(assert (= (and b!7986482 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988394))

(assert (= (and b!7986482 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988395))

(assert (= (and b!7986482 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regOne!43615 r!24602))))) b!7988396))

(declare-fun b!7988400 () Bool)

(declare-fun e!4707789 () Bool)

(declare-fun tp!2385673 () Bool)

(declare-fun tp!2385672 () Bool)

(assert (=> b!7988400 (= e!4707789 (and tp!2385673 tp!2385672))))

(assert (=> b!7986579 (= tp!2384429 e!4707789)))

(declare-fun b!7988399 () Bool)

(declare-fun tp!2385675 () Bool)

(assert (=> b!7988399 (= e!4707789 tp!2385675)))

(declare-fun b!7988398 () Bool)

(declare-fun tp!2385676 () Bool)

(declare-fun tp!2385674 () Bool)

(assert (=> b!7988398 (= e!4707789 (and tp!2385676 tp!2385674))))

(declare-fun b!7988397 () Bool)

(assert (=> b!7988397 (= e!4707789 tp_is_empty!53645)))

(assert (= (and b!7986579 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (reg!21880 r!24602))))) b!7988397))

(assert (= (and b!7986579 ((_ is Concat!30550) (regOne!43614 (reg!21880 (reg!21880 r!24602))))) b!7988398))

(assert (= (and b!7986579 ((_ is Star!21551) (regOne!43614 (reg!21880 (reg!21880 r!24602))))) b!7988399))

(assert (= (and b!7986579 ((_ is Union!21551) (regOne!43614 (reg!21880 (reg!21880 r!24602))))) b!7988400))

(declare-fun b!7988404 () Bool)

(declare-fun e!4707790 () Bool)

(declare-fun tp!2385678 () Bool)

(declare-fun tp!2385677 () Bool)

(assert (=> b!7988404 (= e!4707790 (and tp!2385678 tp!2385677))))

(assert (=> b!7986579 (= tp!2384427 e!4707790)))

(declare-fun b!7988403 () Bool)

(declare-fun tp!2385680 () Bool)

(assert (=> b!7988403 (= e!4707790 tp!2385680)))

(declare-fun b!7988402 () Bool)

(declare-fun tp!2385681 () Bool)

(declare-fun tp!2385679 () Bool)

(assert (=> b!7988402 (= e!4707790 (and tp!2385681 tp!2385679))))

(declare-fun b!7988401 () Bool)

(assert (=> b!7988401 (= e!4707790 tp_is_empty!53645)))

(assert (= (and b!7986579 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (reg!21880 r!24602))))) b!7988401))

(assert (= (and b!7986579 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (reg!21880 r!24602))))) b!7988402))

(assert (= (and b!7986579 ((_ is Star!21551) (regTwo!43614 (reg!21880 (reg!21880 r!24602))))) b!7988403))

(assert (= (and b!7986579 ((_ is Union!21551) (regTwo!43614 (reg!21880 (reg!21880 r!24602))))) b!7988404))

(declare-fun b!7988408 () Bool)

(declare-fun e!4707791 () Bool)

(declare-fun tp!2385683 () Bool)

(declare-fun tp!2385682 () Bool)

(assert (=> b!7988408 (= e!4707791 (and tp!2385683 tp!2385682))))

(assert (=> b!7986686 (= tp!2384551 e!4707791)))

(declare-fun b!7988407 () Bool)

(declare-fun tp!2385685 () Bool)

(assert (=> b!7988407 (= e!4707791 tp!2385685)))

(declare-fun b!7988406 () Bool)

(declare-fun tp!2385686 () Bool)

(declare-fun tp!2385684 () Bool)

(assert (=> b!7988406 (= e!4707791 (and tp!2385686 tp!2385684))))

(declare-fun b!7988405 () Bool)

(assert (=> b!7988405 (= e!4707791 tp_is_empty!53645)))

(assert (= (and b!7986686 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988405))

(assert (= (and b!7986686 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988406))

(assert (= (and b!7986686 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988407))

(assert (= (and b!7986686 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988408))

(declare-fun b!7988412 () Bool)

(declare-fun e!4707792 () Bool)

(declare-fun tp!2385688 () Bool)

(declare-fun tp!2385687 () Bool)

(assert (=> b!7988412 (= e!4707792 (and tp!2385688 tp!2385687))))

(assert (=> b!7986686 (= tp!2384550 e!4707792)))

(declare-fun b!7988411 () Bool)

(declare-fun tp!2385690 () Bool)

(assert (=> b!7988411 (= e!4707792 tp!2385690)))

(declare-fun b!7988410 () Bool)

(declare-fun tp!2385691 () Bool)

(declare-fun tp!2385689 () Bool)

(assert (=> b!7988410 (= e!4707792 (and tp!2385691 tp!2385689))))

(declare-fun b!7988409 () Bool)

(assert (=> b!7988409 (= e!4707792 tp_is_empty!53645)))

(assert (= (and b!7986686 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988409))

(assert (= (and b!7986686 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988410))

(assert (= (and b!7986686 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988411))

(assert (= (and b!7986686 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regOne!43615 baseR!116))))) b!7988412))

(declare-fun b!7988413 () Bool)

(declare-fun e!4707793 () Bool)

(declare-fun tp!2385692 () Bool)

(assert (=> b!7988413 (= e!4707793 (and tp_is_empty!53645 tp!2385692))))

(assert (=> b!7986507 (= tp!2384354 e!4707793)))

(assert (= (and b!7986507 ((_ is Cons!74656) (t!390523 (t!390523 (t!390523 input!7927))))) b!7988413))

(declare-fun b!7988417 () Bool)

(declare-fun e!4707794 () Bool)

(declare-fun tp!2385694 () Bool)

(declare-fun tp!2385693 () Bool)

(assert (=> b!7988417 (= e!4707794 (and tp!2385694 tp!2385693))))

(assert (=> b!7986547 (= tp!2384399 e!4707794)))

(declare-fun b!7988416 () Bool)

(declare-fun tp!2385696 () Bool)

(assert (=> b!7988416 (= e!4707794 tp!2385696)))

(declare-fun b!7988415 () Bool)

(declare-fun tp!2385697 () Bool)

(declare-fun tp!2385695 () Bool)

(assert (=> b!7988415 (= e!4707794 (and tp!2385697 tp!2385695))))

(declare-fun b!7988414 () Bool)

(assert (=> b!7988414 (= e!4707794 tp_is_empty!53645)))

(assert (= (and b!7986547 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988414))

(assert (= (and b!7986547 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988415))

(assert (= (and b!7986547 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988416))

(assert (= (and b!7986547 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988417))

(declare-fun b!7988421 () Bool)

(declare-fun e!4707795 () Bool)

(declare-fun tp!2385699 () Bool)

(declare-fun tp!2385698 () Bool)

(assert (=> b!7988421 (= e!4707795 (and tp!2385699 tp!2385698))))

(assert (=> b!7986547 (= tp!2384397 e!4707795)))

(declare-fun b!7988420 () Bool)

(declare-fun tp!2385701 () Bool)

(assert (=> b!7988420 (= e!4707795 tp!2385701)))

(declare-fun b!7988419 () Bool)

(declare-fun tp!2385702 () Bool)

(declare-fun tp!2385700 () Bool)

(assert (=> b!7988419 (= e!4707795 (and tp!2385702 tp!2385700))))

(declare-fun b!7988418 () Bool)

(assert (=> b!7988418 (= e!4707795 tp_is_empty!53645)))

(assert (= (and b!7986547 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988418))

(assert (= (and b!7986547 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988419))

(assert (= (and b!7986547 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988420))

(assert (= (and b!7986547 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (reg!21880 r!24602))))) b!7988421))

(declare-fun b!7988425 () Bool)

(declare-fun e!4707796 () Bool)

(declare-fun tp!2385704 () Bool)

(declare-fun tp!2385703 () Bool)

(assert (=> b!7988425 (= e!4707796 (and tp!2385704 tp!2385703))))

(assert (=> b!7986663 (= tp!2384534 e!4707796)))

(declare-fun b!7988424 () Bool)

(declare-fun tp!2385706 () Bool)

(assert (=> b!7988424 (= e!4707796 tp!2385706)))

(declare-fun b!7988423 () Bool)

(declare-fun tp!2385707 () Bool)

(declare-fun tp!2385705 () Bool)

(assert (=> b!7988423 (= e!4707796 (and tp!2385707 tp!2385705))))

(declare-fun b!7988422 () Bool)

(assert (=> b!7988422 (= e!4707796 tp_is_empty!53645)))

(assert (= (and b!7986663 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988422))

(assert (= (and b!7986663 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988423))

(assert (= (and b!7986663 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988424))

(assert (= (and b!7986663 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988425))

(declare-fun b!7988429 () Bool)

(declare-fun e!4707797 () Bool)

(declare-fun tp!2385709 () Bool)

(declare-fun tp!2385708 () Bool)

(assert (=> b!7988429 (= e!4707797 (and tp!2385709 tp!2385708))))

(assert (=> b!7986663 (= tp!2384532 e!4707797)))

(declare-fun b!7988428 () Bool)

(declare-fun tp!2385711 () Bool)

(assert (=> b!7988428 (= e!4707797 tp!2385711)))

(declare-fun b!7988427 () Bool)

(declare-fun tp!2385712 () Bool)

(declare-fun tp!2385710 () Bool)

(assert (=> b!7988427 (= e!4707797 (and tp!2385712 tp!2385710))))

(declare-fun b!7988426 () Bool)

(assert (=> b!7988426 (= e!4707797 tp_is_empty!53645)))

(assert (= (and b!7986663 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988426))

(assert (= (and b!7986663 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988427))

(assert (= (and b!7986663 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988428))

(assert (= (and b!7986663 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regOne!43614 r!24602))))) b!7988429))

(declare-fun b!7988433 () Bool)

(declare-fun e!4707798 () Bool)

(declare-fun tp!2385714 () Bool)

(declare-fun tp!2385713 () Bool)

(assert (=> b!7988433 (= e!4707798 (and tp!2385714 tp!2385713))))

(assert (=> b!7986672 (= tp!2384543 e!4707798)))

(declare-fun b!7988432 () Bool)

(declare-fun tp!2385716 () Bool)

(assert (=> b!7988432 (= e!4707798 tp!2385716)))

(declare-fun b!7988431 () Bool)

(declare-fun tp!2385717 () Bool)

(declare-fun tp!2385715 () Bool)

(assert (=> b!7988431 (= e!4707798 (and tp!2385717 tp!2385715))))

(declare-fun b!7988430 () Bool)

(assert (=> b!7988430 (= e!4707798 tp_is_empty!53645)))

(assert (= (and b!7986672 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regOne!43614 r!24602))))) b!7988430))

(assert (= (and b!7986672 ((_ is Concat!30550) (reg!21880 (reg!21880 (regOne!43614 r!24602))))) b!7988431))

(assert (= (and b!7986672 ((_ is Star!21551) (reg!21880 (reg!21880 (regOne!43614 r!24602))))) b!7988432))

(assert (= (and b!7986672 ((_ is Union!21551) (reg!21880 (reg!21880 (regOne!43614 r!24602))))) b!7988433))

(declare-fun b!7988437 () Bool)

(declare-fun e!4707799 () Bool)

(declare-fun tp!2385719 () Bool)

(declare-fun tp!2385718 () Bool)

(assert (=> b!7988437 (= e!4707799 (and tp!2385719 tp!2385718))))

(assert (=> b!7986588 (= tp!2384438 e!4707799)))

(declare-fun b!7988436 () Bool)

(declare-fun tp!2385721 () Bool)

(assert (=> b!7988436 (= e!4707799 tp!2385721)))

(declare-fun b!7988435 () Bool)

(declare-fun tp!2385722 () Bool)

(declare-fun tp!2385720 () Bool)

(assert (=> b!7988435 (= e!4707799 (and tp!2385722 tp!2385720))))

(declare-fun b!7988434 () Bool)

(assert (=> b!7988434 (= e!4707799 tp_is_empty!53645)))

(assert (= (and b!7986588 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988434))

(assert (= (and b!7986588 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988435))

(assert (= (and b!7986588 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988436))

(assert (= (and b!7986588 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988437))

(declare-fun b!7988441 () Bool)

(declare-fun e!4707800 () Bool)

(declare-fun tp!2385724 () Bool)

(declare-fun tp!2385723 () Bool)

(assert (=> b!7988441 (= e!4707800 (and tp!2385724 tp!2385723))))

(assert (=> b!7986597 (= tp!2384446 e!4707800)))

(declare-fun b!7988440 () Bool)

(declare-fun tp!2385726 () Bool)

(assert (=> b!7988440 (= e!4707800 tp!2385726)))

(declare-fun b!7988439 () Bool)

(declare-fun tp!2385727 () Bool)

(declare-fun tp!2385725 () Bool)

(assert (=> b!7988439 (= e!4707800 (and tp!2385727 tp!2385725))))

(declare-fun b!7988438 () Bool)

(assert (=> b!7988438 (= e!4707800 tp_is_empty!53645)))

(assert (= (and b!7986597 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988438))

(assert (= (and b!7986597 ((_ is Concat!30550) (regOne!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988439))

(assert (= (and b!7986597 ((_ is Star!21551) (regOne!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988440))

(assert (= (and b!7986597 ((_ is Union!21551) (regOne!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988441))

(declare-fun b!7988445 () Bool)

(declare-fun e!4707801 () Bool)

(declare-fun tp!2385729 () Bool)

(declare-fun tp!2385728 () Bool)

(assert (=> b!7988445 (= e!4707801 (and tp!2385729 tp!2385728))))

(assert (=> b!7986597 (= tp!2384445 e!4707801)))

(declare-fun b!7988444 () Bool)

(declare-fun tp!2385731 () Bool)

(assert (=> b!7988444 (= e!4707801 tp!2385731)))

(declare-fun b!7988443 () Bool)

(declare-fun tp!2385732 () Bool)

(declare-fun tp!2385730 () Bool)

(assert (=> b!7988443 (= e!4707801 (and tp!2385732 tp!2385730))))

(declare-fun b!7988442 () Bool)

(assert (=> b!7988442 (= e!4707801 tp_is_empty!53645)))

(assert (= (and b!7986597 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988442))

(assert (= (and b!7986597 ((_ is Concat!30550) (regTwo!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988443))

(assert (= (and b!7986597 ((_ is Star!21551) (regTwo!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988444))

(assert (= (and b!7986597 ((_ is Union!21551) (regTwo!43615 (regTwo!43615 (regTwo!43615 r!24602))))) b!7988445))

(declare-fun b!7988449 () Bool)

(declare-fun e!4707802 () Bool)

(declare-fun tp!2385734 () Bool)

(declare-fun tp!2385733 () Bool)

(assert (=> b!7988449 (= e!4707802 (and tp!2385734 tp!2385733))))

(assert (=> b!7986589 (= tp!2384436 e!4707802)))

(declare-fun b!7988448 () Bool)

(declare-fun tp!2385736 () Bool)

(assert (=> b!7988448 (= e!4707802 tp!2385736)))

(declare-fun b!7988447 () Bool)

(declare-fun tp!2385737 () Bool)

(declare-fun tp!2385735 () Bool)

(assert (=> b!7988447 (= e!4707802 (and tp!2385737 tp!2385735))))

(declare-fun b!7988446 () Bool)

(assert (=> b!7988446 (= e!4707802 tp_is_empty!53645)))

(assert (= (and b!7986589 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988446))

(assert (= (and b!7986589 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988447))

(assert (= (and b!7986589 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988448))

(assert (= (and b!7986589 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988449))

(declare-fun b!7988453 () Bool)

(declare-fun e!4707803 () Bool)

(declare-fun tp!2385739 () Bool)

(declare-fun tp!2385738 () Bool)

(assert (=> b!7988453 (= e!4707803 (and tp!2385739 tp!2385738))))

(assert (=> b!7986589 (= tp!2384435 e!4707803)))

(declare-fun b!7988452 () Bool)

(declare-fun tp!2385741 () Bool)

(assert (=> b!7988452 (= e!4707803 tp!2385741)))

(declare-fun b!7988451 () Bool)

(declare-fun tp!2385742 () Bool)

(declare-fun tp!2385740 () Bool)

(assert (=> b!7988451 (= e!4707803 (and tp!2385742 tp!2385740))))

(declare-fun b!7988450 () Bool)

(assert (=> b!7988450 (= e!4707803 tp_is_empty!53645)))

(assert (= (and b!7986589 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988450))

(assert (= (and b!7986589 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988451))

(assert (= (and b!7986589 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988452))

(assert (= (and b!7986589 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regTwo!43614 r!24602))))) b!7988453))

(declare-fun b!7988457 () Bool)

(declare-fun e!4707804 () Bool)

(declare-fun tp!2385744 () Bool)

(declare-fun tp!2385743 () Bool)

(assert (=> b!7988457 (= e!4707804 (and tp!2385744 tp!2385743))))

(assert (=> b!7986541 (= tp!2384394 e!4707804)))

(declare-fun b!7988456 () Bool)

(declare-fun tp!2385746 () Bool)

(assert (=> b!7988456 (= e!4707804 tp!2385746)))

(declare-fun b!7988455 () Bool)

(declare-fun tp!2385747 () Bool)

(declare-fun tp!2385745 () Bool)

(assert (=> b!7988455 (= e!4707804 (and tp!2385747 tp!2385745))))

(declare-fun b!7988454 () Bool)

(assert (=> b!7988454 (= e!4707804 tp_is_empty!53645)))

(assert (= (and b!7986541 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988454))

(assert (= (and b!7986541 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988455))

(assert (= (and b!7986541 ((_ is Star!21551) (regOne!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988456))

(assert (= (and b!7986541 ((_ is Union!21551) (regOne!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988457))

(declare-fun b!7988461 () Bool)

(declare-fun e!4707805 () Bool)

(declare-fun tp!2385749 () Bool)

(declare-fun tp!2385748 () Bool)

(assert (=> b!7988461 (= e!4707805 (and tp!2385749 tp!2385748))))

(assert (=> b!7986541 (= tp!2384392 e!4707805)))

(declare-fun b!7988460 () Bool)

(declare-fun tp!2385751 () Bool)

(assert (=> b!7988460 (= e!4707805 tp!2385751)))

(declare-fun b!7988459 () Bool)

(declare-fun tp!2385752 () Bool)

(declare-fun tp!2385750 () Bool)

(assert (=> b!7988459 (= e!4707805 (and tp!2385752 tp!2385750))))

(declare-fun b!7988458 () Bool)

(assert (=> b!7988458 (= e!4707805 tp_is_empty!53645)))

(assert (= (and b!7986541 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988458))

(assert (= (and b!7986541 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988459))

(assert (= (and b!7986541 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988460))

(assert (= (and b!7986541 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (reg!21880 r!24602))))) b!7988461))

(declare-fun b!7988465 () Bool)

(declare-fun e!4707806 () Bool)

(declare-fun tp!2385754 () Bool)

(declare-fun tp!2385753 () Bool)

(assert (=> b!7988465 (= e!4707806 (and tp!2385754 tp!2385753))))

(assert (=> b!7986641 (= tp!2384501 e!4707806)))

(declare-fun b!7988464 () Bool)

(declare-fun tp!2385756 () Bool)

(assert (=> b!7988464 (= e!4707806 tp!2385756)))

(declare-fun b!7988463 () Bool)

(declare-fun tp!2385757 () Bool)

(declare-fun tp!2385755 () Bool)

(assert (=> b!7988463 (= e!4707806 (and tp!2385757 tp!2385755))))

(declare-fun b!7988462 () Bool)

(assert (=> b!7988462 (= e!4707806 tp_is_empty!53645)))

(assert (= (and b!7986641 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988462))

(assert (= (and b!7986641 ((_ is Concat!30550) (regOne!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988463))

(assert (= (and b!7986641 ((_ is Star!21551) (regOne!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988464))

(assert (= (and b!7986641 ((_ is Union!21551) (regOne!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988465))

(declare-fun b!7988469 () Bool)

(declare-fun e!4707807 () Bool)

(declare-fun tp!2385759 () Bool)

(declare-fun tp!2385758 () Bool)

(assert (=> b!7988469 (= e!4707807 (and tp!2385759 tp!2385758))))

(assert (=> b!7986641 (= tp!2384500 e!4707807)))

(declare-fun b!7988468 () Bool)

(declare-fun tp!2385761 () Bool)

(assert (=> b!7988468 (= e!4707807 tp!2385761)))

(declare-fun b!7988467 () Bool)

(declare-fun tp!2385762 () Bool)

(declare-fun tp!2385760 () Bool)

(assert (=> b!7988467 (= e!4707807 (and tp!2385762 tp!2385760))))

(declare-fun b!7988466 () Bool)

(assert (=> b!7988466 (= e!4707807 tp_is_empty!53645)))

(assert (= (and b!7986641 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988466))

(assert (= (and b!7986641 ((_ is Concat!30550) (regTwo!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988467))

(assert (= (and b!7986641 ((_ is Star!21551) (regTwo!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988468))

(assert (= (and b!7986641 ((_ is Union!21551) (regTwo!43615 (regOne!43615 (reg!21880 baseR!116))))) b!7988469))

(declare-fun b!7988473 () Bool)

(declare-fun e!4707808 () Bool)

(declare-fun tp!2385764 () Bool)

(declare-fun tp!2385763 () Bool)

(assert (=> b!7988473 (= e!4707808 (and tp!2385764 tp!2385763))))

(assert (=> b!7986510 (= tp!2384358 e!4707808)))

(declare-fun b!7988472 () Bool)

(declare-fun tp!2385766 () Bool)

(assert (=> b!7988472 (= e!4707808 tp!2385766)))

(declare-fun b!7988471 () Bool)

(declare-fun tp!2385767 () Bool)

(declare-fun tp!2385765 () Bool)

(assert (=> b!7988471 (= e!4707808 (and tp!2385767 tp!2385765))))

(declare-fun b!7988470 () Bool)

(assert (=> b!7988470 (= e!4707808 tp_is_empty!53645)))

(assert (= (and b!7986510 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988470))

(assert (= (and b!7986510 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988471))

(assert (= (and b!7986510 ((_ is Star!21551) (reg!21880 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988472))

(assert (= (and b!7986510 ((_ is Union!21551) (reg!21880 (regOne!43615 (regTwo!43614 baseR!116))))) b!7988473))

(declare-fun b!7988477 () Bool)

(declare-fun e!4707809 () Bool)

(declare-fun tp!2385769 () Bool)

(declare-fun tp!2385768 () Bool)

(assert (=> b!7988477 (= e!4707809 (and tp!2385769 tp!2385768))))

(assert (=> b!7986519 (= tp!2384366 e!4707809)))

(declare-fun b!7988476 () Bool)

(declare-fun tp!2385771 () Bool)

(assert (=> b!7988476 (= e!4707809 tp!2385771)))

(declare-fun b!7988475 () Bool)

(declare-fun tp!2385772 () Bool)

(declare-fun tp!2385770 () Bool)

(assert (=> b!7988475 (= e!4707809 (and tp!2385772 tp!2385770))))

(declare-fun b!7988474 () Bool)

(assert (=> b!7988474 (= e!4707809 tp_is_empty!53645)))

(assert (= (and b!7986519 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988474))

(assert (= (and b!7986519 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988475))

(assert (= (and b!7986519 ((_ is Star!21551) (regOne!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988476))

(assert (= (and b!7986519 ((_ is Union!21551) (regOne!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988477))

(declare-fun b!7988481 () Bool)

(declare-fun e!4707810 () Bool)

(declare-fun tp!2385774 () Bool)

(declare-fun tp!2385773 () Bool)

(assert (=> b!7988481 (= e!4707810 (and tp!2385774 tp!2385773))))

(assert (=> b!7986519 (= tp!2384365 e!4707810)))

(declare-fun b!7988480 () Bool)

(declare-fun tp!2385776 () Bool)

(assert (=> b!7988480 (= e!4707810 tp!2385776)))

(declare-fun b!7988479 () Bool)

(declare-fun tp!2385777 () Bool)

(declare-fun tp!2385775 () Bool)

(assert (=> b!7988479 (= e!4707810 (and tp!2385777 tp!2385775))))

(declare-fun b!7988478 () Bool)

(assert (=> b!7988478 (= e!4707810 tp_is_empty!53645)))

(assert (= (and b!7986519 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988478))

(assert (= (and b!7986519 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988479))

(assert (= (and b!7986519 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988480))

(assert (= (and b!7986519 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regTwo!43615 baseR!116))))) b!7988481))

(declare-fun b!7988485 () Bool)

(declare-fun e!4707811 () Bool)

(declare-fun tp!2385779 () Bool)

(declare-fun tp!2385778 () Bool)

(assert (=> b!7988485 (= e!4707811 (and tp!2385779 tp!2385778))))

(assert (=> b!7986623 (= tp!2384484 e!4707811)))

(declare-fun b!7988484 () Bool)

(declare-fun tp!2385781 () Bool)

(assert (=> b!7988484 (= e!4707811 tp!2385781)))

(declare-fun b!7988483 () Bool)

(declare-fun tp!2385782 () Bool)

(declare-fun tp!2385780 () Bool)

(assert (=> b!7988483 (= e!4707811 (and tp!2385782 tp!2385780))))

(declare-fun b!7988482 () Bool)

(assert (=> b!7988482 (= e!4707811 tp_is_empty!53645)))

(assert (= (and b!7986623 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988482))

(assert (= (and b!7986623 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988483))

(assert (= (and b!7986623 ((_ is Star!21551) (regOne!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988484))

(assert (= (and b!7986623 ((_ is Union!21551) (regOne!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988485))

(declare-fun b!7988489 () Bool)

(declare-fun e!4707812 () Bool)

(declare-fun tp!2385784 () Bool)

(declare-fun tp!2385783 () Bool)

(assert (=> b!7988489 (= e!4707812 (and tp!2385784 tp!2385783))))

(assert (=> b!7986623 (= tp!2384482 e!4707812)))

(declare-fun b!7988488 () Bool)

(declare-fun tp!2385786 () Bool)

(assert (=> b!7988488 (= e!4707812 tp!2385786)))

(declare-fun b!7988487 () Bool)

(declare-fun tp!2385787 () Bool)

(declare-fun tp!2385785 () Bool)

(assert (=> b!7988487 (= e!4707812 (and tp!2385787 tp!2385785))))

(declare-fun b!7988486 () Bool)

(assert (=> b!7988486 (= e!4707812 tp_is_empty!53645)))

(assert (= (and b!7986623 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988486))

(assert (= (and b!7986623 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988487))

(assert (= (and b!7986623 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988488))

(assert (= (and b!7986623 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (reg!21880 baseR!116))))) b!7988489))

(declare-fun b!7988493 () Bool)

(declare-fun e!4707813 () Bool)

(declare-fun tp!2385789 () Bool)

(declare-fun tp!2385788 () Bool)

(assert (=> b!7988493 (= e!4707813 (and tp!2385789 tp!2385788))))

(assert (=> b!7986632 (= tp!2384493 e!4707813)))

(declare-fun b!7988492 () Bool)

(declare-fun tp!2385791 () Bool)

(assert (=> b!7988492 (= e!4707813 tp!2385791)))

(declare-fun b!7988491 () Bool)

(declare-fun tp!2385792 () Bool)

(declare-fun tp!2385790 () Bool)

(assert (=> b!7988491 (= e!4707813 (and tp!2385792 tp!2385790))))

(declare-fun b!7988490 () Bool)

(assert (=> b!7988490 (= e!4707813 tp_is_empty!53645)))

(assert (= (and b!7986632 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regOne!43614 baseR!116))))) b!7988490))

(assert (= (and b!7986632 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regOne!43614 baseR!116))))) b!7988491))

(assert (= (and b!7986632 ((_ is Star!21551) (reg!21880 (regOne!43615 (regOne!43614 baseR!116))))) b!7988492))

(assert (= (and b!7986632 ((_ is Union!21551) (reg!21880 (regOne!43615 (regOne!43614 baseR!116))))) b!7988493))

(declare-fun b!7988497 () Bool)

(declare-fun e!4707814 () Bool)

(declare-fun tp!2385794 () Bool)

(declare-fun tp!2385793 () Bool)

(assert (=> b!7988497 (= e!4707814 (and tp!2385794 tp!2385793))))

(assert (=> b!7986476 (= tp!2384318 e!4707814)))

(declare-fun b!7988496 () Bool)

(declare-fun tp!2385796 () Bool)

(assert (=> b!7988496 (= e!4707814 tp!2385796)))

(declare-fun b!7988495 () Bool)

(declare-fun tp!2385797 () Bool)

(declare-fun tp!2385795 () Bool)

(assert (=> b!7988495 (= e!4707814 (and tp!2385797 tp!2385795))))

(declare-fun b!7988494 () Bool)

(assert (=> b!7988494 (= e!4707814 tp_is_empty!53645)))

(assert (= (and b!7986476 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988494))

(assert (= (and b!7986476 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988495))

(assert (= (and b!7986476 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988496))

(assert (= (and b!7986476 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988497))

(declare-fun b!7988501 () Bool)

(declare-fun e!4707815 () Bool)

(declare-fun tp!2385799 () Bool)

(declare-fun tp!2385798 () Bool)

(assert (=> b!7988501 (= e!4707815 (and tp!2385799 tp!2385798))))

(assert (=> b!7986476 (= tp!2384316 e!4707815)))

(declare-fun b!7988500 () Bool)

(declare-fun tp!2385801 () Bool)

(assert (=> b!7988500 (= e!4707815 tp!2385801)))

(declare-fun b!7988499 () Bool)

(declare-fun tp!2385802 () Bool)

(declare-fun tp!2385800 () Bool)

(assert (=> b!7988499 (= e!4707815 (and tp!2385802 tp!2385800))))

(declare-fun b!7988498 () Bool)

(assert (=> b!7988498 (= e!4707815 tp_is_empty!53645)))

(assert (= (and b!7986476 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988498))

(assert (= (and b!7986476 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988499))

(assert (= (and b!7986476 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988500))

(assert (= (and b!7986476 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regOne!43615 r!24602))))) b!7988501))

(declare-fun b!7988505 () Bool)

(declare-fun e!4707816 () Bool)

(declare-fun tp!2385804 () Bool)

(declare-fun tp!2385803 () Bool)

(assert (=> b!7988505 (= e!4707816 (and tp!2385804 tp!2385803))))

(assert (=> b!7986575 (= tp!2384424 e!4707816)))

(declare-fun b!7988504 () Bool)

(declare-fun tp!2385806 () Bool)

(assert (=> b!7988504 (= e!4707816 tp!2385806)))

(declare-fun b!7988503 () Bool)

(declare-fun tp!2385807 () Bool)

(declare-fun tp!2385805 () Bool)

(assert (=> b!7988503 (= e!4707816 (and tp!2385807 tp!2385805))))

(declare-fun b!7988502 () Bool)

(assert (=> b!7988502 (= e!4707816 tp_is_empty!53645)))

(assert (= (and b!7986575 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988502))

(assert (= (and b!7986575 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988503))

(assert (= (and b!7986575 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988504))

(assert (= (and b!7986575 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988505))

(declare-fun b!7988509 () Bool)

(declare-fun e!4707817 () Bool)

(declare-fun tp!2385809 () Bool)

(declare-fun tp!2385808 () Bool)

(assert (=> b!7988509 (= e!4707817 (and tp!2385809 tp!2385808))))

(assert (=> b!7986575 (= tp!2384422 e!4707817)))

(declare-fun b!7988508 () Bool)

(declare-fun tp!2385811 () Bool)

(assert (=> b!7988508 (= e!4707817 tp!2385811)))

(declare-fun b!7988507 () Bool)

(declare-fun tp!2385812 () Bool)

(declare-fun tp!2385810 () Bool)

(assert (=> b!7988507 (= e!4707817 (and tp!2385812 tp!2385810))))

(declare-fun b!7988506 () Bool)

(assert (=> b!7988506 (= e!4707817 tp_is_empty!53645)))

(assert (= (and b!7986575 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988506))

(assert (= (and b!7986575 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988507))

(assert (= (and b!7986575 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988508))

(assert (= (and b!7986575 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regTwo!43615 baseR!116))))) b!7988509))

(declare-fun b!7988513 () Bool)

(declare-fun e!4707818 () Bool)

(declare-fun tp!2385814 () Bool)

(declare-fun tp!2385813 () Bool)

(assert (=> b!7988513 (= e!4707818 (and tp!2385814 tp!2385813))))

(assert (=> b!7986675 (= tp!2384549 e!4707818)))

(declare-fun b!7988512 () Bool)

(declare-fun tp!2385816 () Bool)

(assert (=> b!7988512 (= e!4707818 tp!2385816)))

(declare-fun b!7988511 () Bool)

(declare-fun tp!2385817 () Bool)

(declare-fun tp!2385815 () Bool)

(assert (=> b!7988511 (= e!4707818 (and tp!2385817 tp!2385815))))

(declare-fun b!7988510 () Bool)

(assert (=> b!7988510 (= e!4707818 tp_is_empty!53645)))

(assert (= (and b!7986675 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988510))

(assert (= (and b!7986675 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988511))

(assert (= (and b!7986675 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988512))

(assert (= (and b!7986675 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988513))

(declare-fun b!7988517 () Bool)

(declare-fun e!4707819 () Bool)

(declare-fun tp!2385819 () Bool)

(declare-fun tp!2385818 () Bool)

(assert (=> b!7988517 (= e!4707819 (and tp!2385819 tp!2385818))))

(assert (=> b!7986675 (= tp!2384547 e!4707819)))

(declare-fun b!7988516 () Bool)

(declare-fun tp!2385821 () Bool)

(assert (=> b!7988516 (= e!4707819 tp!2385821)))

(declare-fun b!7988515 () Bool)

(declare-fun tp!2385822 () Bool)

(declare-fun tp!2385820 () Bool)

(assert (=> b!7988515 (= e!4707819 (and tp!2385822 tp!2385820))))

(declare-fun b!7988514 () Bool)

(assert (=> b!7988514 (= e!4707819 tp_is_empty!53645)))

(assert (= (and b!7986675 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988514))

(assert (= (and b!7986675 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988515))

(assert (= (and b!7986675 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988516))

(assert (= (and b!7986675 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regOne!43615 baseR!116))))) b!7988517))

(declare-fun b!7988521 () Bool)

(declare-fun e!4707820 () Bool)

(declare-fun tp!2385824 () Bool)

(declare-fun tp!2385823 () Bool)

(assert (=> b!7988521 (= e!4707820 (and tp!2385824 tp!2385823))))

(assert (=> b!7986485 (= tp!2384327 e!4707820)))

(declare-fun b!7988520 () Bool)

(declare-fun tp!2385826 () Bool)

(assert (=> b!7988520 (= e!4707820 tp!2385826)))

(declare-fun b!7988519 () Bool)

(declare-fun tp!2385827 () Bool)

(declare-fun tp!2385825 () Bool)

(assert (=> b!7988519 (= e!4707820 (and tp!2385827 tp!2385825))))

(declare-fun b!7988518 () Bool)

(assert (=> b!7988518 (= e!4707820 tp_is_empty!53645)))

(assert (= (and b!7986485 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (regTwo!43614 baseR!116))))) b!7988518))

(assert (= (and b!7986485 ((_ is Concat!30550) (reg!21880 (reg!21880 (regTwo!43614 baseR!116))))) b!7988519))

(assert (= (and b!7986485 ((_ is Star!21551) (reg!21880 (reg!21880 (regTwo!43614 baseR!116))))) b!7988520))

(assert (= (and b!7986485 ((_ is Union!21551) (reg!21880 (reg!21880 (regTwo!43614 baseR!116))))) b!7988521))

(declare-fun b!7988525 () Bool)

(declare-fun e!4707821 () Bool)

(declare-fun tp!2385829 () Bool)

(declare-fun tp!2385828 () Bool)

(assert (=> b!7988525 (= e!4707821 (and tp!2385829 tp!2385828))))

(assert (=> b!7986494 (= tp!2384335 e!4707821)))

(declare-fun b!7988524 () Bool)

(declare-fun tp!2385831 () Bool)

(assert (=> b!7988524 (= e!4707821 tp!2385831)))

(declare-fun b!7988523 () Bool)

(declare-fun tp!2385832 () Bool)

(declare-fun tp!2385830 () Bool)

(assert (=> b!7988523 (= e!4707821 (and tp!2385832 tp!2385830))))

(declare-fun b!7988522 () Bool)

(assert (=> b!7988522 (= e!4707821 tp_is_empty!53645)))

(assert (= (and b!7986494 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988522))

(assert (= (and b!7986494 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988523))

(assert (= (and b!7986494 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988524))

(assert (= (and b!7986494 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988525))

(declare-fun b!7988529 () Bool)

(declare-fun e!4707822 () Bool)

(declare-fun tp!2385834 () Bool)

(declare-fun tp!2385833 () Bool)

(assert (=> b!7988529 (= e!4707822 (and tp!2385834 tp!2385833))))

(assert (=> b!7986494 (= tp!2384334 e!4707822)))

(declare-fun b!7988528 () Bool)

(declare-fun tp!2385836 () Bool)

(assert (=> b!7988528 (= e!4707822 tp!2385836)))

(declare-fun b!7988527 () Bool)

(declare-fun tp!2385837 () Bool)

(declare-fun tp!2385835 () Bool)

(assert (=> b!7988527 (= e!4707822 (and tp!2385837 tp!2385835))))

(declare-fun b!7988526 () Bool)

(assert (=> b!7988526 (= e!4707822 tp_is_empty!53645)))

(assert (= (and b!7986494 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988526))

(assert (= (and b!7986494 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988527))

(assert (= (and b!7986494 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988528))

(assert (= (and b!7986494 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regOne!43615 r!24602))))) b!7988529))

(declare-fun b!7988533 () Bool)

(declare-fun e!4707823 () Bool)

(declare-fun tp!2385839 () Bool)

(declare-fun tp!2385838 () Bool)

(assert (=> b!7988533 (= e!4707823 (and tp!2385839 tp!2385838))))

(assert (=> b!7986469 (= tp!2384304 e!4707823)))

(declare-fun b!7988532 () Bool)

(declare-fun tp!2385841 () Bool)

(assert (=> b!7988532 (= e!4707823 tp!2385841)))

(declare-fun b!7988531 () Bool)

(declare-fun tp!2385842 () Bool)

(declare-fun tp!2385840 () Bool)

(assert (=> b!7988531 (= e!4707823 (and tp!2385842 tp!2385840))))

(declare-fun b!7988530 () Bool)

(assert (=> b!7988530 (= e!4707823 tp_is_empty!53645)))

(assert (= (and b!7986469 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988530))

(assert (= (and b!7986469 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988531))

(assert (= (and b!7986469 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988532))

(assert (= (and b!7986469 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988533))

(declare-fun b!7988537 () Bool)

(declare-fun e!4707824 () Bool)

(declare-fun tp!2385844 () Bool)

(declare-fun tp!2385843 () Bool)

(assert (=> b!7988537 (= e!4707824 (and tp!2385844 tp!2385843))))

(assert (=> b!7986469 (= tp!2384303 e!4707824)))

(declare-fun b!7988536 () Bool)

(declare-fun tp!2385846 () Bool)

(assert (=> b!7988536 (= e!4707824 tp!2385846)))

(declare-fun b!7988535 () Bool)

(declare-fun tp!2385847 () Bool)

(declare-fun tp!2385845 () Bool)

(assert (=> b!7988535 (= e!4707824 (and tp!2385847 tp!2385845))))

(declare-fun b!7988534 () Bool)

(assert (=> b!7988534 (= e!4707824 tp_is_empty!53645)))

(assert (= (and b!7986469 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988534))

(assert (= (and b!7986469 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988535))

(assert (= (and b!7986469 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988536))

(assert (= (and b!7986469 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regTwo!43614 baseR!116))))) b!7988537))

(declare-fun b!7988541 () Bool)

(declare-fun e!4707825 () Bool)

(declare-fun tp!2385849 () Bool)

(declare-fun tp!2385848 () Bool)

(assert (=> b!7988541 (= e!4707825 (and tp!2385849 tp!2385848))))

(assert (=> b!7986568 (= tp!2384413 e!4707825)))

(declare-fun b!7988540 () Bool)

(declare-fun tp!2385851 () Bool)

(assert (=> b!7988540 (= e!4707825 tp!2385851)))

(declare-fun b!7988539 () Bool)

(declare-fun tp!2385852 () Bool)

(declare-fun tp!2385850 () Bool)

(assert (=> b!7988539 (= e!4707825 (and tp!2385852 tp!2385850))))

(declare-fun b!7988538 () Bool)

(assert (=> b!7988538 (= e!4707825 tp_is_empty!53645)))

(assert (= (and b!7986568 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988538))

(assert (= (and b!7986568 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988539))

(assert (= (and b!7986568 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988540))

(assert (= (and b!7986568 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regTwo!43615 r!24602))))) b!7988541))

(declare-fun b!7988545 () Bool)

(declare-fun e!4707826 () Bool)

(declare-fun tp!2385854 () Bool)

(declare-fun tp!2385853 () Bool)

(assert (=> b!7988545 (= e!4707826 (and tp!2385854 tp!2385853))))

(assert (=> b!7986609 (= tp!2384461 e!4707826)))

(declare-fun b!7988544 () Bool)

(declare-fun tp!2385856 () Bool)

(assert (=> b!7988544 (= e!4707826 tp!2385856)))

(declare-fun b!7988543 () Bool)

(declare-fun tp!2385857 () Bool)

(declare-fun tp!2385855 () Bool)

(assert (=> b!7988543 (= e!4707826 (and tp!2385857 tp!2385855))))

(declare-fun b!7988542 () Bool)

(assert (=> b!7988542 (= e!4707826 tp_is_empty!53645)))

(assert (= (and b!7986609 ((_ is ElementMatch!21551) (regOne!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988542))

(assert (= (and b!7986609 ((_ is Concat!30550) (regOne!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988543))

(assert (= (and b!7986609 ((_ is Star!21551) (regOne!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988544))

(assert (= (and b!7986609 ((_ is Union!21551) (regOne!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988545))

(declare-fun b!7988549 () Bool)

(declare-fun e!4707827 () Bool)

(declare-fun tp!2385859 () Bool)

(declare-fun tp!2385858 () Bool)

(assert (=> b!7988549 (= e!4707827 (and tp!2385859 tp!2385858))))

(assert (=> b!7986609 (= tp!2384460 e!4707827)))

(declare-fun b!7988548 () Bool)

(declare-fun tp!2385861 () Bool)

(assert (=> b!7988548 (= e!4707827 tp!2385861)))

(declare-fun b!7988547 () Bool)

(declare-fun tp!2385862 () Bool)

(declare-fun tp!2385860 () Bool)

(assert (=> b!7988547 (= e!4707827 (and tp!2385862 tp!2385860))))

(declare-fun b!7988546 () Bool)

(assert (=> b!7988546 (= e!4707827 tp_is_empty!53645)))

(assert (= (and b!7986609 ((_ is ElementMatch!21551) (regTwo!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988546))

(assert (= (and b!7986609 ((_ is Concat!30550) (regTwo!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988547))

(assert (= (and b!7986609 ((_ is Star!21551) (regTwo!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988548))

(assert (= (and b!7986609 ((_ is Union!21551) (regTwo!43615 (regTwo!43614 (regOne!43614 baseR!116))))) b!7988549))

(declare-fun b!7988553 () Bool)

(declare-fun e!4707828 () Bool)

(declare-fun tp!2385864 () Bool)

(declare-fun tp!2385863 () Bool)

(assert (=> b!7988553 (= e!4707828 (and tp!2385864 tp!2385863))))

(assert (=> b!7986591 (= tp!2384444 e!4707828)))

(declare-fun b!7988552 () Bool)

(declare-fun tp!2385866 () Bool)

(assert (=> b!7988552 (= e!4707828 tp!2385866)))

(declare-fun b!7988551 () Bool)

(declare-fun tp!2385867 () Bool)

(declare-fun tp!2385865 () Bool)

(assert (=> b!7988551 (= e!4707828 (and tp!2385867 tp!2385865))))

(declare-fun b!7988550 () Bool)

(assert (=> b!7988550 (= e!4707828 tp_is_empty!53645)))

(assert (= (and b!7986591 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988550))

(assert (= (and b!7986591 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988551))

(assert (= (and b!7986591 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988552))

(assert (= (and b!7986591 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988553))

(declare-fun b!7988557 () Bool)

(declare-fun e!4707829 () Bool)

(declare-fun tp!2385869 () Bool)

(declare-fun tp!2385868 () Bool)

(assert (=> b!7988557 (= e!4707829 (and tp!2385869 tp!2385868))))

(assert (=> b!7986591 (= tp!2384442 e!4707829)))

(declare-fun b!7988556 () Bool)

(declare-fun tp!2385871 () Bool)

(assert (=> b!7988556 (= e!4707829 tp!2385871)))

(declare-fun b!7988555 () Bool)

(declare-fun tp!2385872 () Bool)

(declare-fun tp!2385870 () Bool)

(assert (=> b!7988555 (= e!4707829 (and tp!2385872 tp!2385870))))

(declare-fun b!7988554 () Bool)

(assert (=> b!7988554 (= e!4707829 tp_is_empty!53645)))

(assert (= (and b!7986591 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988554))

(assert (= (and b!7986591 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988555))

(assert (= (and b!7986591 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988556))

(assert (= (and b!7986591 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regTwo!43615 r!24602))))) b!7988557))

(declare-fun b!7988561 () Bool)

(declare-fun e!4707830 () Bool)

(declare-fun tp!2385874 () Bool)

(declare-fun tp!2385873 () Bool)

(assert (=> b!7988561 (= e!4707830 (and tp!2385874 tp!2385873))))

(assert (=> b!7986600 (= tp!2384453 e!4707830)))

(declare-fun b!7988560 () Bool)

(declare-fun tp!2385876 () Bool)

(assert (=> b!7988560 (= e!4707830 tp!2385876)))

(declare-fun b!7988559 () Bool)

(declare-fun tp!2385877 () Bool)

(declare-fun tp!2385875 () Bool)

(assert (=> b!7988559 (= e!4707830 (and tp!2385877 tp!2385875))))

(declare-fun b!7988558 () Bool)

(assert (=> b!7988558 (= e!4707830 tp_is_empty!53645)))

(assert (= (and b!7986600 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (reg!21880 baseR!116))))) b!7988558))

(assert (= (and b!7986600 ((_ is Concat!30550) (reg!21880 (reg!21880 (reg!21880 baseR!116))))) b!7988559))

(assert (= (and b!7986600 ((_ is Star!21551) (reg!21880 (reg!21880 (reg!21880 baseR!116))))) b!7988560))

(assert (= (and b!7986600 ((_ is Union!21551) (reg!21880 (reg!21880 (reg!21880 baseR!116))))) b!7988561))

(declare-fun b!7988565 () Bool)

(declare-fun e!4707831 () Bool)

(declare-fun tp!2385879 () Bool)

(declare-fun tp!2385878 () Bool)

(assert (=> b!7988565 (= e!4707831 (and tp!2385879 tp!2385878))))

(assert (=> b!7986643 (= tp!2384509 e!4707831)))

(declare-fun b!7988564 () Bool)

(declare-fun tp!2385881 () Bool)

(assert (=> b!7988564 (= e!4707831 tp!2385881)))

(declare-fun b!7988563 () Bool)

(declare-fun tp!2385882 () Bool)

(declare-fun tp!2385880 () Bool)

(assert (=> b!7988563 (= e!4707831 (and tp!2385882 tp!2385880))))

(declare-fun b!7988562 () Bool)

(assert (=> b!7988562 (= e!4707831 tp_is_empty!53645)))

(assert (= (and b!7986643 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988562))

(assert (= (and b!7986643 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988563))

(assert (= (and b!7986643 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988564))

(assert (= (and b!7986643 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988565))

(declare-fun b!7988569 () Bool)

(declare-fun e!4707832 () Bool)

(declare-fun tp!2385884 () Bool)

(declare-fun tp!2385883 () Bool)

(assert (=> b!7988569 (= e!4707832 (and tp!2385884 tp!2385883))))

(assert (=> b!7986643 (= tp!2384507 e!4707832)))

(declare-fun b!7988568 () Bool)

(declare-fun tp!2385886 () Bool)

(assert (=> b!7988568 (= e!4707832 tp!2385886)))

(declare-fun b!7988567 () Bool)

(declare-fun tp!2385887 () Bool)

(declare-fun tp!2385885 () Bool)

(assert (=> b!7988567 (= e!4707832 (and tp!2385887 tp!2385885))))

(declare-fun b!7988566 () Bool)

(assert (=> b!7988566 (= e!4707832 tp_is_empty!53645)))

(assert (= (and b!7986643 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988566))

(assert (= (and b!7986643 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988567))

(assert (= (and b!7986643 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988568))

(assert (= (and b!7986643 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (reg!21880 baseR!116))))) b!7988569))

(declare-fun b!7988573 () Bool)

(declare-fun e!4707833 () Bool)

(declare-fun tp!2385889 () Bool)

(declare-fun tp!2385888 () Bool)

(assert (=> b!7988573 (= e!4707833 (and tp!2385889 tp!2385888))))

(assert (=> b!7986652 (= tp!2384518 e!4707833)))

(declare-fun b!7988572 () Bool)

(declare-fun tp!2385891 () Bool)

(assert (=> b!7988572 (= e!4707833 tp!2385891)))

(declare-fun b!7988571 () Bool)

(declare-fun tp!2385892 () Bool)

(declare-fun tp!2385890 () Bool)

(assert (=> b!7988571 (= e!4707833 (and tp!2385892 tp!2385890))))

(declare-fun b!7988570 () Bool)

(assert (=> b!7988570 (= e!4707833 tp_is_empty!53645)))

(assert (= (and b!7986652 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regOne!43615 baseR!116))))) b!7988570))

(assert (= (and b!7986652 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regOne!43615 baseR!116))))) b!7988571))

(assert (= (and b!7986652 ((_ is Star!21551) (reg!21880 (regOne!43614 (regOne!43615 baseR!116))))) b!7988572))

(assert (= (and b!7986652 ((_ is Union!21551) (reg!21880 (regOne!43614 (regOne!43615 baseR!116))))) b!7988573))

(declare-fun b!7988577 () Bool)

(declare-fun e!4707834 () Bool)

(declare-fun tp!2385894 () Bool)

(declare-fun tp!2385893 () Bool)

(assert (=> b!7988577 (= e!4707834 (and tp!2385894 tp!2385893))))

(assert (=> b!7986661 (= tp!2384526 e!4707834)))

(declare-fun b!7988576 () Bool)

(declare-fun tp!2385896 () Bool)

(assert (=> b!7988576 (= e!4707834 tp!2385896)))

(declare-fun b!7988575 () Bool)

(declare-fun tp!2385897 () Bool)

(declare-fun tp!2385895 () Bool)

(assert (=> b!7988575 (= e!4707834 (and tp!2385897 tp!2385895))))

(declare-fun b!7988574 () Bool)

(assert (=> b!7988574 (= e!4707834 tp_is_empty!53645)))

(assert (= (and b!7986661 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988574))

(assert (= (and b!7986661 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988575))

(assert (= (and b!7986661 ((_ is Star!21551) (regOne!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988576))

(assert (= (and b!7986661 ((_ is Union!21551) (regOne!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988577))

(declare-fun b!7988581 () Bool)

(declare-fun e!4707835 () Bool)

(declare-fun tp!2385899 () Bool)

(declare-fun tp!2385898 () Bool)

(assert (=> b!7988581 (= e!4707835 (and tp!2385899 tp!2385898))))

(assert (=> b!7986661 (= tp!2384525 e!4707835)))

(declare-fun b!7988580 () Bool)

(declare-fun tp!2385901 () Bool)

(assert (=> b!7988580 (= e!4707835 tp!2385901)))

(declare-fun b!7988579 () Bool)

(declare-fun tp!2385902 () Bool)

(declare-fun tp!2385900 () Bool)

(assert (=> b!7988579 (= e!4707835 (and tp!2385902 tp!2385900))))

(declare-fun b!7988578 () Bool)

(assert (=> b!7988578 (= e!4707835 tp_is_empty!53645)))

(assert (= (and b!7986661 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988578))

(assert (= (and b!7986661 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988579))

(assert (= (and b!7986661 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988580))

(assert (= (and b!7986661 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regOne!43615 baseR!116))))) b!7988581))

(declare-fun b!7988585 () Bool)

(declare-fun e!4707836 () Bool)

(declare-fun tp!2385904 () Bool)

(declare-fun tp!2385903 () Bool)

(assert (=> b!7988585 (= e!4707836 (and tp!2385904 tp!2385903))))

(assert (=> b!7986635 (= tp!2384499 e!4707836)))

(declare-fun b!7988584 () Bool)

(declare-fun tp!2385906 () Bool)

(assert (=> b!7988584 (= e!4707836 tp!2385906)))

(declare-fun b!7988583 () Bool)

(declare-fun tp!2385907 () Bool)

(declare-fun tp!2385905 () Bool)

(assert (=> b!7988583 (= e!4707836 (and tp!2385907 tp!2385905))))

(declare-fun b!7988582 () Bool)

(assert (=> b!7988582 (= e!4707836 tp_is_empty!53645)))

(assert (= (and b!7986635 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988582))

(assert (= (and b!7986635 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988583))

(assert (= (and b!7986635 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988584))

(assert (= (and b!7986635 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988585))

(declare-fun b!7988589 () Bool)

(declare-fun e!4707837 () Bool)

(declare-fun tp!2385909 () Bool)

(declare-fun tp!2385908 () Bool)

(assert (=> b!7988589 (= e!4707837 (and tp!2385909 tp!2385908))))

(assert (=> b!7986635 (= tp!2384497 e!4707837)))

(declare-fun b!7988588 () Bool)

(declare-fun tp!2385911 () Bool)

(assert (=> b!7988588 (= e!4707837 tp!2385911)))

(declare-fun b!7988587 () Bool)

(declare-fun tp!2385912 () Bool)

(declare-fun tp!2385910 () Bool)

(assert (=> b!7988587 (= e!4707837 (and tp!2385912 tp!2385910))))

(declare-fun b!7988586 () Bool)

(assert (=> b!7988586 (= e!4707837 tp_is_empty!53645)))

(assert (= (and b!7986635 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988586))

(assert (= (and b!7986635 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988587))

(assert (= (and b!7986635 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988588))

(assert (= (and b!7986635 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regOne!43614 baseR!116))))) b!7988589))

(declare-fun b!7988593 () Bool)

(declare-fun e!4707838 () Bool)

(declare-fun tp!2385914 () Bool)

(declare-fun tp!2385913 () Bool)

(assert (=> b!7988593 (= e!4707838 (and tp!2385914 tp!2385913))))

(assert (=> b!7986644 (= tp!2384508 e!4707838)))

(declare-fun b!7988592 () Bool)

(declare-fun tp!2385916 () Bool)

(assert (=> b!7988592 (= e!4707838 tp!2385916)))

(declare-fun b!7988591 () Bool)

(declare-fun tp!2385917 () Bool)

(declare-fun tp!2385915 () Bool)

(assert (=> b!7988591 (= e!4707838 (and tp!2385917 tp!2385915))))

(declare-fun b!7988590 () Bool)

(assert (=> b!7988590 (= e!4707838 tp_is_empty!53645)))

(assert (= (and b!7986644 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (reg!21880 baseR!116))))) b!7988590))

(assert (= (and b!7986644 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (reg!21880 baseR!116))))) b!7988591))

(assert (= (and b!7986644 ((_ is Star!21551) (reg!21880 (regTwo!43615 (reg!21880 baseR!116))))) b!7988592))

(assert (= (and b!7986644 ((_ is Union!21551) (reg!21880 (regTwo!43615 (reg!21880 baseR!116))))) b!7988593))

(declare-fun b!7988597 () Bool)

(declare-fun e!4707839 () Bool)

(declare-fun tp!2385919 () Bool)

(declare-fun tp!2385918 () Bool)

(assert (=> b!7988597 (= e!4707839 (and tp!2385919 tp!2385918))))

(assert (=> b!7986653 (= tp!2384516 e!4707839)))

(declare-fun b!7988596 () Bool)

(declare-fun tp!2385921 () Bool)

(assert (=> b!7988596 (= e!4707839 tp!2385921)))

(declare-fun b!7988595 () Bool)

(declare-fun tp!2385922 () Bool)

(declare-fun tp!2385920 () Bool)

(assert (=> b!7988595 (= e!4707839 (and tp!2385922 tp!2385920))))

(declare-fun b!7988594 () Bool)

(assert (=> b!7988594 (= e!4707839 tp_is_empty!53645)))

(assert (= (and b!7986653 ((_ is ElementMatch!21551) (regOne!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988594))

(assert (= (and b!7986653 ((_ is Concat!30550) (regOne!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988595))

(assert (= (and b!7986653 ((_ is Star!21551) (regOne!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988596))

(assert (= (and b!7986653 ((_ is Union!21551) (regOne!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988597))

(declare-fun b!7988601 () Bool)

(declare-fun e!4707840 () Bool)

(declare-fun tp!2385924 () Bool)

(declare-fun tp!2385923 () Bool)

(assert (=> b!7988601 (= e!4707840 (and tp!2385924 tp!2385923))))

(assert (=> b!7986653 (= tp!2384515 e!4707840)))

(declare-fun b!7988600 () Bool)

(declare-fun tp!2385926 () Bool)

(assert (=> b!7988600 (= e!4707840 tp!2385926)))

(declare-fun b!7988599 () Bool)

(declare-fun tp!2385927 () Bool)

(declare-fun tp!2385925 () Bool)

(assert (=> b!7988599 (= e!4707840 (and tp!2385927 tp!2385925))))

(declare-fun b!7988598 () Bool)

(assert (=> b!7988598 (= e!4707840 tp_is_empty!53645)))

(assert (= (and b!7986653 ((_ is ElementMatch!21551) (regTwo!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988598))

(assert (= (and b!7986653 ((_ is Concat!30550) (regTwo!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988599))

(assert (= (and b!7986653 ((_ is Star!21551) (regTwo!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988600))

(assert (= (and b!7986653 ((_ is Union!21551) (regTwo!43615 (regOne!43614 (regOne!43615 baseR!116))))) b!7988601))

(declare-fun b!7988605 () Bool)

(declare-fun e!4707841 () Bool)

(declare-fun tp!2385929 () Bool)

(declare-fun tp!2385928 () Bool)

(assert (=> b!7988605 (= e!4707841 (and tp!2385929 tp!2385928))))

(assert (=> b!7986506 (= tp!2384350 e!4707841)))

(declare-fun b!7988604 () Bool)

(declare-fun tp!2385931 () Bool)

(assert (=> b!7988604 (= e!4707841 tp!2385931)))

(declare-fun b!7988603 () Bool)

(declare-fun tp!2385932 () Bool)

(declare-fun tp!2385930 () Bool)

(assert (=> b!7988603 (= e!4707841 (and tp!2385932 tp!2385930))))

(declare-fun b!7988602 () Bool)

(assert (=> b!7988602 (= e!4707841 tp_is_empty!53645)))

(assert (= (and b!7986506 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988602))

(assert (= (and b!7986506 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988603))

(assert (= (and b!7986506 ((_ is Star!21551) (regOne!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988604))

(assert (= (and b!7986506 ((_ is Union!21551) (regOne!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988605))

(declare-fun b!7988609 () Bool)

(declare-fun e!4707842 () Bool)

(declare-fun tp!2385934 () Bool)

(declare-fun tp!2385933 () Bool)

(assert (=> b!7988609 (= e!4707842 (and tp!2385934 tp!2385933))))

(assert (=> b!7986506 (= tp!2384349 e!4707842)))

(declare-fun b!7988608 () Bool)

(declare-fun tp!2385936 () Bool)

(assert (=> b!7988608 (= e!4707842 tp!2385936)))

(declare-fun b!7988607 () Bool)

(declare-fun tp!2385937 () Bool)

(declare-fun tp!2385935 () Bool)

(assert (=> b!7988607 (= e!4707842 (and tp!2385937 tp!2385935))))

(declare-fun b!7988606 () Bool)

(assert (=> b!7988606 (= e!4707842 tp_is_empty!53645)))

(assert (= (and b!7986506 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988606))

(assert (= (and b!7986506 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988607))

(assert (= (and b!7986506 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988608))

(assert (= (and b!7986506 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regOne!43615 r!24602))))) b!7988609))

(declare-fun b!7988613 () Bool)

(declare-fun e!4707843 () Bool)

(declare-fun tp!2385939 () Bool)

(declare-fun tp!2385938 () Bool)

(assert (=> b!7988613 (= e!4707843 (and tp!2385939 tp!2385938))))

(assert (=> b!7986513 (= tp!2384364 e!4707843)))

(declare-fun b!7988612 () Bool)

(declare-fun tp!2385941 () Bool)

(assert (=> b!7988612 (= e!4707843 tp!2385941)))

(declare-fun b!7988611 () Bool)

(declare-fun tp!2385942 () Bool)

(declare-fun tp!2385940 () Bool)

(assert (=> b!7988611 (= e!4707843 (and tp!2385942 tp!2385940))))

(declare-fun b!7988610 () Bool)

(assert (=> b!7988610 (= e!4707843 tp_is_empty!53645)))

(assert (= (and b!7986513 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988610))

(assert (= (and b!7986513 ((_ is Concat!30550) (regOne!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988611))

(assert (= (and b!7986513 ((_ is Star!21551) (regOne!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988612))

(assert (= (and b!7986513 ((_ is Union!21551) (regOne!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988613))

(declare-fun b!7988617 () Bool)

(declare-fun e!4707844 () Bool)

(declare-fun tp!2385944 () Bool)

(declare-fun tp!2385943 () Bool)

(assert (=> b!7988617 (= e!4707844 (and tp!2385944 tp!2385943))))

(assert (=> b!7986513 (= tp!2384362 e!4707844)))

(declare-fun b!7988616 () Bool)

(declare-fun tp!2385946 () Bool)

(assert (=> b!7988616 (= e!4707844 tp!2385946)))

(declare-fun b!7988615 () Bool)

(declare-fun tp!2385947 () Bool)

(declare-fun tp!2385945 () Bool)

(assert (=> b!7988615 (= e!4707844 (and tp!2385947 tp!2385945))))

(declare-fun b!7988614 () Bool)

(assert (=> b!7988614 (= e!4707844 tp_is_empty!53645)))

(assert (= (and b!7986513 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988614))

(assert (= (and b!7986513 ((_ is Concat!30550) (regTwo!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988615))

(assert (= (and b!7986513 ((_ is Star!21551) (regTwo!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988616))

(assert (= (and b!7986513 ((_ is Union!21551) (regTwo!43614 (regTwo!43615 (regTwo!43614 baseR!116))))) b!7988617))

(declare-fun b!7988621 () Bool)

(declare-fun e!4707845 () Bool)

(declare-fun tp!2385949 () Bool)

(declare-fun tp!2385948 () Bool)

(assert (=> b!7988621 (= e!4707845 (and tp!2385949 tp!2385948))))

(assert (=> b!7986522 (= tp!2384373 e!4707845)))

(declare-fun b!7988620 () Bool)

(declare-fun tp!2385951 () Bool)

(assert (=> b!7988620 (= e!4707845 tp!2385951)))

(declare-fun b!7988619 () Bool)

(declare-fun tp!2385952 () Bool)

(declare-fun tp!2385950 () Bool)

(assert (=> b!7988619 (= e!4707845 (and tp!2385952 tp!2385950))))

(declare-fun b!7988618 () Bool)

(assert (=> b!7988618 (= e!4707845 tp_is_empty!53645)))

(assert (= (and b!7986522 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (reg!21880 r!24602))))) b!7988618))

(assert (= (and b!7986522 ((_ is Concat!30550) (reg!21880 (regOne!43614 (reg!21880 r!24602))))) b!7988619))

(assert (= (and b!7986522 ((_ is Star!21551) (reg!21880 (regOne!43614 (reg!21880 r!24602))))) b!7988620))

(assert (= (and b!7986522 ((_ is Union!21551) (reg!21880 (regOne!43614 (reg!21880 r!24602))))) b!7988621))

(declare-fun b!7988625 () Bool)

(declare-fun e!4707846 () Bool)

(declare-fun tp!2385954 () Bool)

(declare-fun tp!2385953 () Bool)

(assert (=> b!7988625 (= e!4707846 (and tp!2385954 tp!2385953))))

(assert (=> b!7986472 (= tp!2384311 e!4707846)))

(declare-fun b!7988624 () Bool)

(declare-fun tp!2385956 () Bool)

(assert (=> b!7988624 (= e!4707846 tp!2385956)))

(declare-fun b!7988623 () Bool)

(declare-fun tp!2385957 () Bool)

(declare-fun tp!2385955 () Bool)

(assert (=> b!7988623 (= e!4707846 (and tp!2385957 tp!2385955))))

(declare-fun b!7988622 () Bool)

(assert (=> b!7988622 (= e!4707846 tp_is_empty!53645)))

(assert (= (and b!7986472 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988622))

(assert (= (and b!7986472 ((_ is Concat!30550) (reg!21880 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988623))

(assert (= (and b!7986472 ((_ is Star!21551) (reg!21880 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988624))

(assert (= (and b!7986472 ((_ is Union!21551) (reg!21880 (regTwo!43614 (regTwo!43614 baseR!116))))) b!7988625))

(declare-fun b!7988629 () Bool)

(declare-fun e!4707847 () Bool)

(declare-fun tp!2385959 () Bool)

(declare-fun tp!2385958 () Bool)

(assert (=> b!7988629 (= e!4707847 (and tp!2385959 tp!2385958))))

(assert (=> b!7986571 (= tp!2384419 e!4707847)))

(declare-fun b!7988628 () Bool)

(declare-fun tp!2385961 () Bool)

(assert (=> b!7988628 (= e!4707847 tp!2385961)))

(declare-fun b!7988627 () Bool)

(declare-fun tp!2385962 () Bool)

(declare-fun tp!2385960 () Bool)

(assert (=> b!7988627 (= e!4707847 (and tp!2385962 tp!2385960))))

(declare-fun b!7988626 () Bool)

(assert (=> b!7988626 (= e!4707847 tp_is_empty!53645)))

(assert (= (and b!7986571 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988626))

(assert (= (and b!7986571 ((_ is Concat!30550) (regOne!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988627))

(assert (= (and b!7986571 ((_ is Star!21551) (regOne!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988628))

(assert (= (and b!7986571 ((_ is Union!21551) (regOne!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988629))

(declare-fun b!7988633 () Bool)

(declare-fun e!4707848 () Bool)

(declare-fun tp!2385964 () Bool)

(declare-fun tp!2385963 () Bool)

(assert (=> b!7988633 (= e!4707848 (and tp!2385964 tp!2385963))))

(assert (=> b!7986571 (= tp!2384417 e!4707848)))

(declare-fun b!7988632 () Bool)

(declare-fun tp!2385966 () Bool)

(assert (=> b!7988632 (= e!4707848 tp!2385966)))

(declare-fun b!7988631 () Bool)

(declare-fun tp!2385967 () Bool)

(declare-fun tp!2385965 () Bool)

(assert (=> b!7988631 (= e!4707848 (and tp!2385967 tp!2385965))))

(declare-fun b!7988630 () Bool)

(assert (=> b!7988630 (= e!4707848 tp_is_empty!53645)))

(assert (= (and b!7986571 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988630))

(assert (= (and b!7986571 ((_ is Concat!30550) (regTwo!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988631))

(assert (= (and b!7986571 ((_ is Star!21551) (regTwo!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988632))

(assert (= (and b!7986571 ((_ is Union!21551) (regTwo!43614 (regOne!43615 (regTwo!43615 baseR!116))))) b!7988633))

(declare-fun b!7988637 () Bool)

(declare-fun e!4707849 () Bool)

(declare-fun tp!2385969 () Bool)

(declare-fun tp!2385968 () Bool)

(assert (=> b!7988637 (= e!4707849 (and tp!2385969 tp!2385968))))

(assert (=> b!7986488 (= tp!2384333 e!4707849)))

(declare-fun b!7988636 () Bool)

(declare-fun tp!2385971 () Bool)

(assert (=> b!7988636 (= e!4707849 tp!2385971)))

(declare-fun b!7988635 () Bool)

(declare-fun tp!2385972 () Bool)

(declare-fun tp!2385970 () Bool)

(assert (=> b!7988635 (= e!4707849 (and tp!2385972 tp!2385970))))

(declare-fun b!7988634 () Bool)

(assert (=> b!7988634 (= e!4707849 tp_is_empty!53645)))

(assert (= (and b!7986488 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988634))

(assert (= (and b!7986488 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988635))

(assert (= (and b!7986488 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988636))

(assert (= (and b!7986488 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988637))

(declare-fun b!7988641 () Bool)

(declare-fun e!4707850 () Bool)

(declare-fun tp!2385974 () Bool)

(declare-fun tp!2385973 () Bool)

(assert (=> b!7988641 (= e!4707850 (and tp!2385974 tp!2385973))))

(assert (=> b!7986488 (= tp!2384331 e!4707850)))

(declare-fun b!7988640 () Bool)

(declare-fun tp!2385976 () Bool)

(assert (=> b!7988640 (= e!4707850 tp!2385976)))

(declare-fun b!7988639 () Bool)

(declare-fun tp!2385977 () Bool)

(declare-fun tp!2385975 () Bool)

(assert (=> b!7988639 (= e!4707850 (and tp!2385977 tp!2385975))))

(declare-fun b!7988638 () Bool)

(assert (=> b!7988638 (= e!4707850 tp_is_empty!53645)))

(assert (= (and b!7986488 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988638))

(assert (= (and b!7986488 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988639))

(assert (= (and b!7986488 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988640))

(assert (= (and b!7986488 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regOne!43615 r!24602))))) b!7988641))

(declare-fun b!7988645 () Bool)

(declare-fun e!4707851 () Bool)

(declare-fun tp!2385979 () Bool)

(declare-fun tp!2385978 () Bool)

(assert (=> b!7988645 (= e!4707851 (and tp!2385979 tp!2385978))))

(assert (=> b!7986497 (= tp!2384342 e!4707851)))

(declare-fun b!7988644 () Bool)

(declare-fun tp!2385981 () Bool)

(assert (=> b!7988644 (= e!4707851 tp!2385981)))

(declare-fun b!7988643 () Bool)

(declare-fun tp!2385982 () Bool)

(declare-fun tp!2385980 () Bool)

(assert (=> b!7988643 (= e!4707851 (and tp!2385982 tp!2385980))))

(declare-fun b!7988642 () Bool)

(assert (=> b!7988642 (= e!4707851 tp_is_empty!53645)))

(assert (= (and b!7986497 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regOne!43614 r!24602))))) b!7988642))

(assert (= (and b!7986497 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regOne!43614 r!24602))))) b!7988643))

(assert (= (and b!7986497 ((_ is Star!21551) (reg!21880 (regOne!43615 (regOne!43614 r!24602))))) b!7988644))

(assert (= (and b!7986497 ((_ is Union!21551) (reg!21880 (regOne!43615 (regOne!43614 r!24602))))) b!7988645))

(declare-fun b!7988649 () Bool)

(declare-fun e!4707852 () Bool)

(declare-fun tp!2385984 () Bool)

(declare-fun tp!2385983 () Bool)

(assert (=> b!7988649 (= e!4707852 (and tp!2385984 tp!2385983))))

(assert (=> b!7986555 (= tp!2384404 e!4707852)))

(declare-fun b!7988648 () Bool)

(declare-fun tp!2385986 () Bool)

(assert (=> b!7988648 (= e!4707852 tp!2385986)))

(declare-fun b!7988647 () Bool)

(declare-fun tp!2385987 () Bool)

(declare-fun tp!2385985 () Bool)

(assert (=> b!7988647 (= e!4707852 (and tp!2385987 tp!2385985))))

(declare-fun b!7988646 () Bool)

(assert (=> b!7988646 (= e!4707852 tp_is_empty!53645)))

(assert (= (and b!7986555 ((_ is ElementMatch!21551) (regOne!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988646))

(assert (= (and b!7986555 ((_ is Concat!30550) (regOne!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988647))

(assert (= (and b!7986555 ((_ is Star!21551) (regOne!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988648))

(assert (= (and b!7986555 ((_ is Union!21551) (regOne!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988649))

(declare-fun b!7988653 () Bool)

(declare-fun e!4707853 () Bool)

(declare-fun tp!2385989 () Bool)

(declare-fun tp!2385988 () Bool)

(assert (=> b!7988653 (= e!4707853 (and tp!2385989 tp!2385988))))

(assert (=> b!7986555 (= tp!2384402 e!4707853)))

(declare-fun b!7988652 () Bool)

(declare-fun tp!2385991 () Bool)

(assert (=> b!7988652 (= e!4707853 tp!2385991)))

(declare-fun b!7988651 () Bool)

(declare-fun tp!2385992 () Bool)

(declare-fun tp!2385990 () Bool)

(assert (=> b!7988651 (= e!4707853 (and tp!2385992 tp!2385990))))

(declare-fun b!7988650 () Bool)

(assert (=> b!7988650 (= e!4707853 tp_is_empty!53645)))

(assert (= (and b!7986555 ((_ is ElementMatch!21551) (regTwo!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988650))

(assert (= (and b!7986555 ((_ is Concat!30550) (regTwo!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988651))

(assert (= (and b!7986555 ((_ is Star!21551) (regTwo!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988652))

(assert (= (and b!7986555 ((_ is Union!21551) (regTwo!43614 (reg!21880 (regTwo!43614 r!24602))))) b!7988653))

(declare-fun b!7988657 () Bool)

(declare-fun e!4707854 () Bool)

(declare-fun tp!2385994 () Bool)

(declare-fun tp!2385993 () Bool)

(assert (=> b!7988657 (= e!4707854 (and tp!2385994 tp!2385993))))

(assert (=> b!7986562 (= tp!2384408 e!4707854)))

(declare-fun b!7988656 () Bool)

(declare-fun tp!2385996 () Bool)

(assert (=> b!7988656 (= e!4707854 tp!2385996)))

(declare-fun b!7988655 () Bool)

(declare-fun tp!2385997 () Bool)

(declare-fun tp!2385995 () Bool)

(assert (=> b!7988655 (= e!4707854 (and tp!2385997 tp!2385995))))

(declare-fun b!7988654 () Bool)

(assert (=> b!7988654 (= e!4707854 tp_is_empty!53645)))

(assert (= (and b!7986562 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regTwo!43615 r!24602))))) b!7988654))

(assert (= (and b!7986562 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regTwo!43615 r!24602))))) b!7988655))

(assert (= (and b!7986562 ((_ is Star!21551) (reg!21880 (regOne!43614 (regTwo!43615 r!24602))))) b!7988656))

(assert (= (and b!7986562 ((_ is Union!21551) (reg!21880 (regOne!43614 (regTwo!43615 r!24602))))) b!7988657))

(declare-fun b!7988661 () Bool)

(declare-fun e!4707855 () Bool)

(declare-fun tp!2385999 () Bool)

(declare-fun tp!2385998 () Bool)

(assert (=> b!7988661 (= e!4707855 (and tp!2385999 tp!2385998))))

(assert (=> b!7986603 (= tp!2384459 e!4707855)))

(declare-fun b!7988660 () Bool)

(declare-fun tp!2386001 () Bool)

(assert (=> b!7988660 (= e!4707855 tp!2386001)))

(declare-fun b!7988659 () Bool)

(declare-fun tp!2386002 () Bool)

(declare-fun tp!2386000 () Bool)

(assert (=> b!7988659 (= e!4707855 (and tp!2386002 tp!2386000))))

(declare-fun b!7988658 () Bool)

(assert (=> b!7988658 (= e!4707855 tp_is_empty!53645)))

(assert (= (and b!7986603 ((_ is ElementMatch!21551) (regOne!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988658))

(assert (= (and b!7986603 ((_ is Concat!30550) (regOne!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988659))

(assert (= (and b!7986603 ((_ is Star!21551) (regOne!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988660))

(assert (= (and b!7986603 ((_ is Union!21551) (regOne!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988661))

(declare-fun b!7988665 () Bool)

(declare-fun e!4707856 () Bool)

(declare-fun tp!2386004 () Bool)

(declare-fun tp!2386003 () Bool)

(assert (=> b!7988665 (= e!4707856 (and tp!2386004 tp!2386003))))

(assert (=> b!7986603 (= tp!2384457 e!4707856)))

(declare-fun b!7988664 () Bool)

(declare-fun tp!2386006 () Bool)

(assert (=> b!7988664 (= e!4707856 tp!2386006)))

(declare-fun b!7988663 () Bool)

(declare-fun tp!2386007 () Bool)

(declare-fun tp!2386005 () Bool)

(assert (=> b!7988663 (= e!4707856 (and tp!2386007 tp!2386005))))

(declare-fun b!7988662 () Bool)

(assert (=> b!7988662 (= e!4707856 tp_is_empty!53645)))

(assert (= (and b!7986603 ((_ is ElementMatch!21551) (regTwo!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988662))

(assert (= (and b!7986603 ((_ is Concat!30550) (regTwo!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988663))

(assert (= (and b!7986603 ((_ is Star!21551) (regTwo!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988664))

(assert (= (and b!7986603 ((_ is Union!21551) (regTwo!43614 (regOne!43614 (regOne!43614 baseR!116))))) b!7988665))

(declare-fun b!7988669 () Bool)

(declare-fun e!4707857 () Bool)

(declare-fun tp!2386009 () Bool)

(declare-fun tp!2386008 () Bool)

(assert (=> b!7988669 (= e!4707857 (and tp!2386009 tp!2386008))))

(assert (=> b!7986612 (= tp!2384468 e!4707857)))

(declare-fun b!7988668 () Bool)

(declare-fun tp!2386011 () Bool)

(assert (=> b!7988668 (= e!4707857 tp!2386011)))

(declare-fun b!7988667 () Bool)

(declare-fun tp!2386012 () Bool)

(declare-fun tp!2386010 () Bool)

(assert (=> b!7988667 (= e!4707857 (and tp!2386012 tp!2386010))))

(declare-fun b!7988666 () Bool)

(assert (=> b!7988666 (= e!4707857 tp_is_empty!53645)))

(assert (= (and b!7986612 ((_ is ElementMatch!21551) (reg!21880 (regOne!43615 (regTwo!43614 r!24602))))) b!7988666))

(assert (= (and b!7986612 ((_ is Concat!30550) (reg!21880 (regOne!43615 (regTwo!43614 r!24602))))) b!7988667))

(assert (= (and b!7986612 ((_ is Star!21551) (reg!21880 (regOne!43615 (regTwo!43614 r!24602))))) b!7988668))

(assert (= (and b!7986612 ((_ is Union!21551) (reg!21880 (regOne!43615 (regTwo!43614 r!24602))))) b!7988669))

(declare-fun b!7988673 () Bool)

(declare-fun e!4707858 () Bool)

(declare-fun tp!2386014 () Bool)

(declare-fun tp!2386013 () Bool)

(assert (=> b!7988673 (= e!4707858 (and tp!2386014 tp!2386013))))

(assert (=> b!7986621 (= tp!2384476 e!4707858)))

(declare-fun b!7988672 () Bool)

(declare-fun tp!2386016 () Bool)

(assert (=> b!7988672 (= e!4707858 tp!2386016)))

(declare-fun b!7988671 () Bool)

(declare-fun tp!2386017 () Bool)

(declare-fun tp!2386015 () Bool)

(assert (=> b!7988671 (= e!4707858 (and tp!2386017 tp!2386015))))

(declare-fun b!7988670 () Bool)

(assert (=> b!7988670 (= e!4707858 tp_is_empty!53645)))

(assert (= (and b!7986621 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988670))

(assert (= (and b!7986621 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988671))

(assert (= (and b!7986621 ((_ is Star!21551) (regOne!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988672))

(assert (= (and b!7986621 ((_ is Union!21551) (regOne!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988673))

(declare-fun b!7988677 () Bool)

(declare-fun e!4707859 () Bool)

(declare-fun tp!2386019 () Bool)

(declare-fun tp!2386018 () Bool)

(assert (=> b!7988677 (= e!4707859 (and tp!2386019 tp!2386018))))

(assert (=> b!7986621 (= tp!2384475 e!4707859)))

(declare-fun b!7988676 () Bool)

(declare-fun tp!2386021 () Bool)

(assert (=> b!7988676 (= e!4707859 tp!2386021)))

(declare-fun b!7988675 () Bool)

(declare-fun tp!2386022 () Bool)

(declare-fun tp!2386020 () Bool)

(assert (=> b!7988675 (= e!4707859 (and tp!2386022 tp!2386020))))

(declare-fun b!7988674 () Bool)

(assert (=> b!7988674 (= e!4707859 tp_is_empty!53645)))

(assert (= (and b!7986621 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988674))

(assert (= (and b!7986621 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988675))

(assert (= (and b!7986621 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988676))

(assert (= (and b!7986621 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regTwo!43615 r!24602))))) b!7988677))

(declare-fun b!7988678 () Bool)

(declare-fun e!4707860 () Bool)

(declare-fun tp!2386023 () Bool)

(assert (=> b!7988678 (= e!4707860 (and tp_is_empty!53645 tp!2386023))))

(assert (=> b!7986474 (= tp!2384313 e!4707860)))

(assert (= (and b!7986474 ((_ is Cons!74656) (t!390523 (t!390523 (t!390523 testedP!447))))) b!7988678))

(declare-fun b!7988682 () Bool)

(declare-fun e!4707861 () Bool)

(declare-fun tp!2386025 () Bool)

(declare-fun tp!2386024 () Bool)

(assert (=> b!7988682 (= e!4707861 (and tp!2386025 tp!2386024))))

(assert (=> b!7986673 (= tp!2384541 e!4707861)))

(declare-fun b!7988681 () Bool)

(declare-fun tp!2386027 () Bool)

(assert (=> b!7988681 (= e!4707861 tp!2386027)))

(declare-fun b!7988680 () Bool)

(declare-fun tp!2386028 () Bool)

(declare-fun tp!2386026 () Bool)

(assert (=> b!7988680 (= e!4707861 (and tp!2386028 tp!2386026))))

(declare-fun b!7988679 () Bool)

(assert (=> b!7988679 (= e!4707861 tp_is_empty!53645)))

(assert (= (and b!7986673 ((_ is ElementMatch!21551) (regOne!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988679))

(assert (= (and b!7986673 ((_ is Concat!30550) (regOne!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988680))

(assert (= (and b!7986673 ((_ is Star!21551) (regOne!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988681))

(assert (= (and b!7986673 ((_ is Union!21551) (regOne!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988682))

(declare-fun b!7988686 () Bool)

(declare-fun e!4707862 () Bool)

(declare-fun tp!2386030 () Bool)

(declare-fun tp!2386029 () Bool)

(assert (=> b!7988686 (= e!4707862 (and tp!2386030 tp!2386029))))

(assert (=> b!7986673 (= tp!2384540 e!4707862)))

(declare-fun b!7988685 () Bool)

(declare-fun tp!2386032 () Bool)

(assert (=> b!7988685 (= e!4707862 tp!2386032)))

(declare-fun b!7988684 () Bool)

(declare-fun tp!2386033 () Bool)

(declare-fun tp!2386031 () Bool)

(assert (=> b!7988684 (= e!4707862 (and tp!2386033 tp!2386031))))

(declare-fun b!7988683 () Bool)

(assert (=> b!7988683 (= e!4707862 tp_is_empty!53645)))

(assert (= (and b!7986673 ((_ is ElementMatch!21551) (regTwo!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988683))

(assert (= (and b!7986673 ((_ is Concat!30550) (regTwo!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988684))

(assert (= (and b!7986673 ((_ is Star!21551) (regTwo!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988685))

(assert (= (and b!7986673 ((_ is Union!21551) (regTwo!43615 (reg!21880 (regOne!43614 r!24602))))) b!7988686))

(declare-fun b!7988690 () Bool)

(declare-fun e!4707863 () Bool)

(declare-fun tp!2386035 () Bool)

(declare-fun tp!2386034 () Bool)

(assert (=> b!7988690 (= e!4707863 (and tp!2386035 tp!2386034))))

(assert (=> b!7986580 (= tp!2384428 e!4707863)))

(declare-fun b!7988689 () Bool)

(declare-fun tp!2386037 () Bool)

(assert (=> b!7988689 (= e!4707863 tp!2386037)))

(declare-fun b!7988688 () Bool)

(declare-fun tp!2386038 () Bool)

(declare-fun tp!2386036 () Bool)

(assert (=> b!7988688 (= e!4707863 (and tp!2386038 tp!2386036))))

(declare-fun b!7988687 () Bool)

(assert (=> b!7988687 (= e!4707863 tp_is_empty!53645)))

(assert (= (and b!7986580 ((_ is ElementMatch!21551) (reg!21880 (reg!21880 (reg!21880 r!24602))))) b!7988687))

(assert (= (and b!7986580 ((_ is Concat!30550) (reg!21880 (reg!21880 (reg!21880 r!24602))))) b!7988688))

(assert (= (and b!7986580 ((_ is Star!21551) (reg!21880 (reg!21880 (reg!21880 r!24602))))) b!7988689))

(assert (= (and b!7986580 ((_ is Union!21551) (reg!21880 (reg!21880 (reg!21880 r!24602))))) b!7988690))

(declare-fun b!7988694 () Bool)

(declare-fun e!4707864 () Bool)

(declare-fun tp!2386040 () Bool)

(declare-fun tp!2386039 () Bool)

(assert (=> b!7988694 (= e!4707864 (and tp!2386040 tp!2386039))))

(assert (=> b!7986548 (= tp!2384398 e!4707864)))

(declare-fun b!7988693 () Bool)

(declare-fun tp!2386042 () Bool)

(assert (=> b!7988693 (= e!4707864 tp!2386042)))

(declare-fun b!7988692 () Bool)

(declare-fun tp!2386043 () Bool)

(declare-fun tp!2386041 () Bool)

(assert (=> b!7988692 (= e!4707864 (and tp!2386043 tp!2386041))))

(declare-fun b!7988691 () Bool)

(assert (=> b!7988691 (= e!4707864 tp_is_empty!53645)))

(assert (= (and b!7986548 ((_ is ElementMatch!21551) (reg!21880 (regTwo!43615 (reg!21880 r!24602))))) b!7988691))

(assert (= (and b!7986548 ((_ is Concat!30550) (reg!21880 (regTwo!43615 (reg!21880 r!24602))))) b!7988692))

(assert (= (and b!7986548 ((_ is Star!21551) (reg!21880 (regTwo!43615 (reg!21880 r!24602))))) b!7988693))

(assert (= (and b!7986548 ((_ is Union!21551) (reg!21880 (regTwo!43615 (reg!21880 r!24602))))) b!7988694))

(declare-fun b!7988698 () Bool)

(declare-fun e!4707865 () Bool)

(declare-fun tp!2386045 () Bool)

(declare-fun tp!2386044 () Bool)

(assert (=> b!7988698 (= e!4707865 (and tp!2386045 tp!2386044))))

(assert (=> b!7986655 (= tp!2384524 e!4707865)))

(declare-fun b!7988697 () Bool)

(declare-fun tp!2386047 () Bool)

(assert (=> b!7988697 (= e!4707865 tp!2386047)))

(declare-fun b!7988696 () Bool)

(declare-fun tp!2386048 () Bool)

(declare-fun tp!2386046 () Bool)

(assert (=> b!7988696 (= e!4707865 (and tp!2386048 tp!2386046))))

(declare-fun b!7988695 () Bool)

(assert (=> b!7988695 (= e!4707865 tp_is_empty!53645)))

(assert (= (and b!7986655 ((_ is ElementMatch!21551) (regOne!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988695))

(assert (= (and b!7986655 ((_ is Concat!30550) (regOne!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988696))

(assert (= (and b!7986655 ((_ is Star!21551) (regOne!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988697))

(assert (= (and b!7986655 ((_ is Union!21551) (regOne!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988698))

(declare-fun b!7988702 () Bool)

(declare-fun e!4707866 () Bool)

(declare-fun tp!2386050 () Bool)

(declare-fun tp!2386049 () Bool)

(assert (=> b!7988702 (= e!4707866 (and tp!2386050 tp!2386049))))

(assert (=> b!7986655 (= tp!2384522 e!4707866)))

(declare-fun b!7988701 () Bool)

(declare-fun tp!2386052 () Bool)

(assert (=> b!7988701 (= e!4707866 tp!2386052)))

(declare-fun b!7988700 () Bool)

(declare-fun tp!2386053 () Bool)

(declare-fun tp!2386051 () Bool)

(assert (=> b!7988700 (= e!4707866 (and tp!2386053 tp!2386051))))

(declare-fun b!7988699 () Bool)

(assert (=> b!7988699 (= e!4707866 tp_is_empty!53645)))

(assert (= (and b!7986655 ((_ is ElementMatch!21551) (regTwo!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988699))

(assert (= (and b!7986655 ((_ is Concat!30550) (regTwo!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988700))

(assert (= (and b!7986655 ((_ is Star!21551) (regTwo!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988701))

(assert (= (and b!7986655 ((_ is Union!21551) (regTwo!43614 (regTwo!43614 (regOne!43615 baseR!116))))) b!7988702))

(declare-fun b!7988706 () Bool)

(declare-fun e!4707867 () Bool)

(declare-fun tp!2386055 () Bool)

(declare-fun tp!2386054 () Bool)

(assert (=> b!7988706 (= e!4707867 (and tp!2386055 tp!2386054))))

(assert (=> b!7986664 (= tp!2384533 e!4707867)))

(declare-fun b!7988705 () Bool)

(declare-fun tp!2386057 () Bool)

(assert (=> b!7988705 (= e!4707867 tp!2386057)))

(declare-fun b!7988704 () Bool)

(declare-fun tp!2386058 () Bool)

(declare-fun tp!2386056 () Bool)

(assert (=> b!7988704 (= e!4707867 (and tp!2386058 tp!2386056))))

(declare-fun b!7988703 () Bool)

(assert (=> b!7988703 (= e!4707867 tp_is_empty!53645)))

(assert (= (and b!7986664 ((_ is ElementMatch!21551) (reg!21880 (regOne!43614 (regOne!43614 r!24602))))) b!7988703))

(assert (= (and b!7986664 ((_ is Concat!30550) (reg!21880 (regOne!43614 (regOne!43614 r!24602))))) b!7988704))

(assert (= (and b!7986664 ((_ is Star!21551) (reg!21880 (regOne!43614 (regOne!43614 r!24602))))) b!7988705))

(assert (= (and b!7986664 ((_ is Union!21551) (reg!21880 (regOne!43614 (regOne!43614 r!24602))))) b!7988706))

(check-sat (not b!7988240) (not b!7988484) (not b!7988465) (not b!7988067) (not d!2384112) (not b!7987759) (not b!7987329) (not b!7987846) (not bm!741747) (not bm!741784) (not d!2384088) (not b!7987122) (not b!7987834) (not b!7988282) (not b!7988479) (not b!7988516) (not b!7988476) (not bm!741668) (not b!7987298) (not b!7987847) (not b!7987859) (not b!7988343) (not bm!741682) (not b!7988362) (not b!7987911) (not b!7988667) (not bm!741701) (not b!7987926) (not b!7988315) (not d!2384144) (not b!7987906) (not b!7988573) (not b!7987272) (not b!7987904) (not b!7987142) (not b!7988660) (not b!7988096) (not b!7988143) (not b!7987998) (not b!7988195) (not b!7988620) (not b!7988693) (not b!7987786) (not bm!741795) (not bm!741758) (not b!7987895) (not b!7987990) (not b!7987345) (not b!7988548) (not b!7987811) (not b!7988346) (not b!7987125) (not b!7988122) (not b!7988258) (not b!7988437) (not b!7988207) (not b!7988004) (not b!7987808) (not b!7988200) (not b!7988144) (not b!7988398) (not bm!741743) (not b!7987618) (not b!7988330) (not b!7987920) (not b!7987943) (not bm!741713) (not b!7988424) (not b!7988421) (not d!2384120) (not d!2384194) (not b!7988239) (not b!7988587) (not b!7988063) (not b!7988139) (not b!7988250) (not bm!741756) (not b!7987630) (not b!7988126) (not bm!741739) (not b!7988347) (not b!7987353) (not b!7987477) (not b!7988015) (not b!7987966) (not b!7988048) (not b!7987715) (not b!7987128) (not b!7988031) (not b!7987912) (not b!7988175) (not b!7988692) (not b!7988292) (not b!7988172) (not b!7988603) (not b!7987915) (not b!7988467) (not b!7988527) (not bm!741750) (not b!7988636) (not b!7987138) (not b!7987794) (not b!7988678) (not b!7988512) (not b!7988227) (not bm!741721) (not b!7987994) (not b!7988374) (not b!7987751) (not b!7987835) (not b!7988298) (not b!7987645) (not b!7988055) (not b!7988571) (not b!7987790) (not b!7988018) (not b!7987730) (not b!7987970) (not b!7988162) (not b!7987181) (not bm!741707) (not b!7988035) (not b!7988323) (not b!7987524) (not b!7987132) (not b!7987236) (not b!7987754) (not b!7988054) (not b!7987887) (not b!7988260) (not b!7987948) (not b!7988644) (not b!7988086) (not b!7987735) (not b!7988403) (not b!7988303) (not b!7988072) (not b!7988567) (not b!7988375) (not bm!741766) (not b!7987440) (not bm!741730) (not b!7988011) (not b!7987657) (not b!7988698) (not b!7987987) (not b!7987826) (not b!7988319) (not d!2384052) (not d!2384236) (not b!7987863) (not b!7988112) (not b!7988468) (not b!7987420) (not b!7988517) (not b!7988391) (not b!7988645) (not b!7988164) (not bm!741709) (not b!7987491) (not b!7988130) (not b!7988271) (not bm!741717) (not b!7987136) (not b!7988441) (not d!2384246) (not b!7988160) (not bm!741790) (not b!7987958) (not b!7987461) (not b!7988220) (not b!7987414) (not b!7988413) (not b!7987872) (not b!7987878) (not b!7987342) (not b!7988060) (not b!7988592) (not b!7988236) (not b!7988428) (not b!7988384) (not b!7988491) (not b!7988499) (not bm!741780) (not d!2384140) (not b!7987683) (not bm!741693) (not b!7988335) (not bm!741771) (not b!7988102) (not b!7988090) (not b!7988395) (not b!7988473) (not b!7987591) (not b!7988334) (not b!7987784) (not b!7988075) (not b!7987600) (not b!7987815) (not b!7988500) (not d!2384134) (not b!7987866) (not b!7987832) (not b!7988056) (not b!7988326) (not d!2384146) (not b!7987874) (not b!7988211) (not b!7988366) (not b!7987776) (not b!7987515) (not b!7987589) (not b!7987932) (not bm!741722) (not b!7988435) (not d!2384056) (not d!2384310) (not b!7988471) (not b!7988148) (not b!7987919) (not b!7988178) (not b!7987243) (not b!7988635) (not b!7987891) (not b!7987756) (not b!7988088) (not b!7987955) (not b!7987534) (not bm!741769) (not b!7987928) (not b!7988232) (not b!7987266) (not b!7988202) (not b!7987999) (not d!2384318) (not b!7988000) (not b!7988042) (not b!7988344) (not b!7988032) (not b!7987792) (not b!7987226) (not b!7988308) (not b!7988453) (not b!7987899) (not bm!741777) (not b!7987666) (not b!7988068) (not b!7987363) (not b!7987760) (not b!7988059) (not b!7988118) (not d!2384290) (not b!7987406) (not b!7987810) (not b!7987768) (not b!7988140) (not b!7988150) (not b!7988218) (not b!7987888) (not b!7988008) (not b!7988643) (not bm!741719) (not b!7988380) (not b!7987341) (not d!2384090) (not b!7988633) (not b!7988027) (not b!7988705) (not b!7987918) (not b!7987190) (not bm!741662) (not b!7987242) (not b!7987631) (not b!7987892) (not b!7988686) (not b!7988356) (not b!7988310) (not b!7988180) (not b!7988299) tp_is_empty!53645 (not b!7988179) (not b!7988312) (not b!7988234) (not b!7988176) (not b!7988226) (not b!7987868) (not b!7988681) (not b!7988480) (not b!7988386) (not b!7988416) (not b!7987331) (not b!7987864) (not d!2384326) (not b!7988431) (not b!7988108) (not b!7988701) (not b!7987796) (not b!7987736) (not b!7987447) (not b!7988608) (not b!7988706) (not b!7987806) (not b!7988340) (not d!2384214) (not b!7987634) (not d!2384292) (not b!7988174) (not b!7987164) (not b!7987743) (not b!7988579) (not b!7988477) (not b!7988159) (not b!7987972) (not b!7987802) (not b!7988047) (not b!7988256) (not b!7987883) (not b!7987304) (not b!7988320) (not b!7988110) (not b!7988472) (not b!7988287) (not bm!741678) (not b!7987647) (not b!7987722) (not b!7988625) (not b!7988210) (not b!7987723) (not b!7987978) (not b!7987375) (not b!7987755) (not b!7987731) (not d!2384184) (not b!7988368) (not b!7988262) (not bm!741788) (not b!7987851) (not b!7988493) (not b!7988187) (not b!7988456) (not b!7988183) (not b!7988030) (not b!7987934) (not b!7988609) (not b!7987327) (not b!7988194) (not b!7988611) (not b!7987497) (not b!7987481) (not bm!741726) (not b!7988359) (not d!2384200) (not d!2384064) (not b!7987968) (not b!7988188) (not bm!741685) (not b!7988120) (not b!7988489) (not b!7988307) (not b!7988641) (not b!7988124) (not b!7988457) (not b!7987670) (not b!7987506) (not bm!741803) (not bm!741787) (not b!7988376) (not b!7988663) (not bm!741724) (not d!2384220) (not b!7988339) (not b!7988123) (not b!7987748) (not b!7988296) (not b!7988166) (not bm!741804) (not b!7988539) (not b!7988651) (not b!7987615) (not b!7988533) (not b!7988304) (not b!7988306) (not b!7987812) (not b!7988270) (not bm!741765) (not b!7987489) (not b!7988318) (not b!7987476) (not b!7988064) (not bm!741697) (not b!7987960) (not b!7988170) (not b!7988094) (not b!7988390) (not b!7987541) (not b!7988039) (not bm!741789) (not b!7988043) (not b!7988295) (not b!7987533) (not b!7987995) (not b!7988475) (not b!7988532) (not b!7988294) (not b!7988012) (not b!7987614) (not d!2384286) (not b!7987622) (not b!7988024) (not b!7988511) (not b!7988208) (not b!7988425) (not b!7987567) (not b!7988230) (not b!7987880) (not b!7988238) (not b!7988028) (not b!7988216) (not bm!741806) (not bm!741680) (not b!7987716) (not b!7987726) (not b!7988461) (not b!7988596) (not b!7988417) (not b!7988254) (not b!7987727) (not b!7987818) (not b!7987325) (not b!7987319) (not b!7987771) (not b!7988513) (not d!2384212) (not b!7987479) (not b!7987876) (not b!7987922) (not b!7987856) (not d!2384280) (not b!7988383) (not b!7988071) (not b!7988272) (not b!7988463) (not b!7988601) (not b!7988051) (not b!7987827) (not b!7988259) (not b!7987531) (not b!7988278) (not b!7988488) (not b!7987573) (not b!7988682) (not b!7988671) (not b!7988584) (not b!7988251) (not b!7987096) (not b!7987962) (not b!7988595) (not b!7988106) (not b!7988433) (not b!7988483) (not b!7987708) (not b!7987991) (not bm!741752) (not bm!741763) (not b!7987791) (not b!7988136) (not b!7987963) (not b!7987547) (not b!7987566) (not b!7987783) (not b!7988255) (not b!7988300) (not b!7988203) (not b!7988543) (not b!7987774) (not b!7987640) (not b!7988062) (not b!7988637) (not b!7987798) (not b!7988612) (not b!7988378) (not b!7987944) (not b!7988360) (not b!7988082) (not b!7988154) (not b!7987260) (not b!7987848) (not b!7988002) (not b!7988648) (not bm!741755) (not b!7988080) (not b!7987750) (not b!7988158) (not b!7988066) (not b!7988572) (not b!7988552) (not b!7988290) (not b!7987469) (not b!7987616) (not b!7987764) (not bm!741745) (not b!7988192) (not b!7988507) (not b!7987395) (not b!7988639) (not b!7988286) (not b!7987830) (not d!2384320) (not b!7987947) (not b!7987836) (not b!7988038) (not bm!741672) (not b!7987767) (not b!7987565) (not b!7988338) (not b!7987860) (not b!7988040) (not bm!741733) (not b!7988247) (not b!7988577) (not b!7988624) (not b!7988268) (not b!7988485) (not b!7988549) (not b!7987983) (not b!7988460) (not b!7987795) (not b!7988439) (not b!7987475) (not b!7987587) (not b!7987115) (not b!7987746) (not b!7988668) (not b!7987456) (not b!7987902) (not bm!741762) (not d!2384114) (not b!7988497) (not b!7988591) (not b!7988186) (not b!7988536) (not b!7987780) (not b!7987843) (not b!7987742) (not b!7988459) (not b!7988524) (not b!7988613) (not bm!741694) (not b!7988214) (not b!7988316) (not b!7987120) (not b!7988675) (not d!2384306) (not b!7987292) (not b!7988451) (not b!7987695) (not b!7988520) (not b!7988367) (not b!7988076) (not b!7988098) (not bm!741737) (not b!7987337) (not b!7987262) (not b!7988266) (not b!7988019) (not b!7987819) (not b!7988167) (not b!7988400) (not b!7987747) (not b!7988593) (not b!7987870) (not b!7988547) (not b!7988631) (not b!7988219) (not b!7987714) (not b!7988448) (not b!7988576) (not b!7987762) (not b!7987558) (not b!7988078) (not b!7987485) (not b!7987710) (not b!7988529) (not b!7988432) (not b!7987890) (not b!7988283) (not b!7987898) (not b!7987462) (not b!7988652) (not bm!741732) (not b!7987782) (not b!7987935) (not b!7988215) (not b!7988444) (not b!7987172) (not b!7987799) (not b!7987871) (not b!7988007) (not b!7987924) (not b!7987824) (not b!7987954) (not b!7988605) (not b!7988704) (not b!7987752) (not b!7988496) (not d!2384316) (not b!7987264) (not d!2384210) (not b!7988653) (not b!7988505) (not bm!741786) (not b!7988114) (not b!7988508) (not b!7987758) (not b!7987140) (not b!7987959) (not b!7988284) (not b!7987778) (not b!7987706) (not b!7987687) (not b!7987980) (not b!7987946) (not b!7987130) (not b!7988561) (not b!7988607) (not b!7987712) (not b!7987740) (not b!7988387) (not b!7987951) (not b!7988600) (not b!7988155) (not b!7987220) (not b!7987807) (not b!7987436) (not bm!741699) (not b!7987551) (not b!7987250) (not d!2384118) (not b!7988246) (not b!7988382) (not b!7987703) (not b!7988058) (not b!7988044) (not b!7988263) (not d!2384234) (not bm!741785) (not b!7988619) (not b!7987787) (not b!7988228) (not bm!741683) (not b!7988560) (not b!7988116) (not d!2384228) (not bm!741810) (not b!7988342) (not b!7987979) (not b!7988492) (not b!7988351) (not b!7987858) (not b!7987840) (not b!7988280) (not b!7987720) (not bm!741781) (not b!7987594) (not b!7987535) (not b!7988575) (not b!7987684) (not b!7988171) (not b!7988503) (not d!2384322) (not b!7988350) (not b!7987839) (not b!7988010) (not b!7987976) (not b!7988134) (not b!7988399) (not b!7987879) (not b!7988537) (not b!7987422) (not b!7988070) (not b!7987732) (not b!7987299) (not b!7987134) (not b!7988407) (not b!7988501) (not b!7987884) (not b!7988392) (not b!7988198) (not d!2384328) (not b!7988616) (not b!7987649) (not b!7987770) (not b!7988302) (not bm!741760) (not bm!741735) (not b!7987996) (not d!2384324) (not b!7988324) (not b!7988563) (not b!7987428) (not b!7988419) (not b!7988443) (not d!2384180) (not b!7987844) (not b!7987609) (not b!7987106) (not b!7987775) (not b!7987229) (not b!7987335) (not b!7988657) (not b!7988685) (not b!7988597) (not b!7987838) (not b!7987855) (not b!7988440) (not b!7988525) (not b!7988131) (not b!7987302) (not bm!741676) (not b!7988156) (not b!7988528) (not b!7987550) (not b!7988589) (not b!7988509) (not b!7988311) (not b!7988095) (not bm!741774) (not b!7988629) (not b!7987908) (not b!7988469) (not b!7988557) (not b!7987739) (not b!7988388) (not b!7987158) (not b!7988396) (not b!7987939) (not b!7988621) (not b!7988364) (not b!7988111) (not b!7987971) (not b!7988628) (not b!7988016) (not b!7987950) (not bm!741674) (not b!7988464) (not d!2384340) (not b!7988632) (not b!7987133) (not b!7988696) (not b!7987430) (not b!7988504) (not b!7988182) (not b!7988083) (not b!7987711) (not b!7987788) (not b!7987677) (not b!7987738) (not b!7987850) (not b!7988243) (not d!2384106) (not b!7988455) (not b!7988006) (not b!7988199) (not b!7987982) (not b!7988046) (not d!2384284) (not b!7988079) (not b!7988564) (not b!7988673) (not b!7988336) (not b!7988036) (not b!7988099) (not b!7988420) (not b!7988615) (not bm!741772) (not b!7988697) (not b!7987627) (not b!7988242) (not b!7988370) (not b!7987828) (not bm!741791) (not bm!741740) (not b!7988531) (not d!2384094) (not b!7987300) (not b!7988104) (not b!7987804) (not b!7988184) (not b!7987766) (not b!7987487) (not b!7988540) (not b!7988669) (not b!7987952) (not b!7987582) (not b!7987875) (not bm!741768) (not d!2384096) (not b!7988411) (not b!7987724) (not b!7988328) (not b!7988583) (not b!7988354) (not b!7988314) (not b!7987529) (not b!7988672) (not b!7987816) (not b!7988521) (not b!7987704) (not b!7988358) (not b!7988092) (not b!7988523) (not b!7987967) (not d!2384092) (not b!7988604) (not bm!741695) (not d!2384238) (not b!7988327) (not b!7988640) (not b!7987339) (not b!7988544) (not b!7988022) (not b!7987822) (not b!7988003) (not b!7987702) (not b!7988656) (not b!7988223) (not b!7988190) (not b!7987800) (not b!7988276) (not b!7988688) (not b!7988647) (not b!7988423) (not b!7987779) (not b!7987894) (not b!7988515) (not b!7988372) (not b!7988151) (not b!7988402) (not b!7987930) (not b!7987852) (not b!7988623) (not b!7987401) (not d!2384348) (not b!7987376) (not bm!741794) (not b!7988702) (not b!7988655) (not b!7988599) (not b!7987124) (not b!7988146) (not b!7988074) (not b!7988559) (not b!7988406) (not b!7987383) (not b!7987719) (not bm!741669) (not bm!741728) (not bm!741715) (not b!7988553) (not bm!741797) (not b!7987424) (not d!2384142) (not b!7987986) (not b!7987707) (not b!7987974) (not bm!741705) (not bm!741808) (not b!7988087) (not b!7988449) (not b!7987940) (not b!7987823) (not b!7988568) (not bm!741742) (not b!7987938) (not b!7988371) (not b!7988689) (not b!7988127) (not bm!741800) (not b!7988551) (not b!7987165) (not bm!741792) (not b!7988191) (not b!7987148) (not b!7988103) (not b!7988050) (not b!7988677) (not b!7988694) (not b!7987886) (not bm!741783) (not d!2384350) (not bm!741664) (not b!7988168) (not b!7987623) (not d!2384138) (not b!7987867) (not b!7988569) (not b!7988352) (not b!7988410) (not bm!741801) (not b!7987408) (not bm!741688) (not b!7988452) (not b!7988222) (not b!7987862) (not b!7987882) (not b!7988020) (not b!7988447) (not b!7987546) (not b!7988545) (not b!7987734) (not b!7987346) (not b!7988322) (not b!7987425) (not b!7988555) (not b!7987936) (not b!7988291) (not b!7988445) (not b!7987975) (not b!7988034) (not b!7987310) (not b!7987907) (not b!7988196) (not b!7988115) (not b!7988661) (not b!7987562) (not b!7988274) (not b!7988580) (not b!7987916) (not b!7987689) (not b!7987992) (not b!7987626) (not b!7988404) (not b!7988379) (not bm!741666) (not b!7987256) (not b!7987984) (not b!7988487) (not b!7987744) (not d!2384148) (not b!7988481) (not b!7988084) (not b!7987718) (not b!7987927) (not b!7988052) (not b!7988331) (not b!7988684) (not b!7988627) (not b!7987854) (not d!2384190) (not b!7988023) (not b!7988128) (not b!7988588) (not b!7988680) (not b!7988091) (not b!7988132) (not b!7987482) (not b!7988436) (not b!7988535) (not b!7987258) (not b!7988206) (not b!7988275) (not b!7988585) (not b!7988224) (not b!7988026) (not b!7988288) (not b!7987650) (not b!7988541) (not b!7988152) (not b!7987931) (not b!7987282) (not d!2384346) (not b!7987896) (not b!7988107) (not b!7988519) (not b!7988348) (not bm!741671) (not b!7988147) (not b!7988581) (not b!7987923) (not d!2384158) (not b!7987333) (not d!2384168) (not bm!741778) (not b!7988495) (not b!7987831) (not b!7988248) (not b!7987728) (not b!7987700) (not b!7988135) (not b!7988394) (not b!7988119) (not b!7987601) (not b!7988408) (not b!7987903) (not d!2384336) (not b!7988415) (not b!7988412) (not b!7987803) (not b!7988138) (not b!7988427) (not b!7988565) (not d!2384104) (not b!7988267) (not bm!741775) (not b!7987956) (not b!7987842) (not b!7987619) (not b!7988231) (not b!7987900) (not b!7988100) (not b!7988665) (not b!7988279) (not b!7987964) (not b!7988212) (not b!7988429) (not bm!741753) (not b!7988332) (not bm!741798) (not b!7988676) (not b!7987988) (not b!7988163) (not b!7987228) (not bm!741734) (not b!7988142) (not b!7988664) (not b!7988617) (not b!7987814) (not b!7988700) (not d!2384182) (not bm!741686) (not b!7987763) (not d!2384282) (not b!7988235) (not bm!741749) (not b!7988204) (not b!7987914) (not b!7988649) (not bm!741738) (not b!7988355) (not b!7988363) (not bm!741711) (not b!7987772) (not b!7988014) (not b!7987910) (not b!7988659) (not b!7987942) (not b!7988264) (not b!7988252) (not b!7987820) (not b!7988556) (not b!7988244) (not bm!741703) (not b!7988690))
(check-sat)
