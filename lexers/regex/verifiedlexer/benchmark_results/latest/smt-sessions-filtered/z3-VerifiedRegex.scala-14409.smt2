; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!751068 () Bool)

(assert start!751068)

(declare-fun b!7963247 () Bool)

(declare-fun e!4695967 () Bool)

(declare-fun tp_is_empty!53541 () Bool)

(assert (=> b!7963247 (= e!4695967 tp_is_empty!53541)))

(declare-fun b!7963248 () Bool)

(declare-fun e!4695966 () Bool)

(declare-fun e!4695962 () Bool)

(assert (=> b!7963248 (= e!4695966 e!4695962)))

(declare-fun res!3155819 () Bool)

(assert (=> b!7963248 (=> res!3155819 e!4695962)))

(declare-datatypes ((C!43336 0))(
  ( (C!43337 (val!32216 Int)) )
))
(declare-datatypes ((Regex!21499 0))(
  ( (ElementMatch!21499 (c!1462428 C!43336)) (Concat!30498 (regOne!43510 Regex!21499) (regTwo!43510 Regex!21499)) (EmptyExpr!21499) (Star!21499 (reg!21828 Regex!21499)) (EmptyLang!21499) (Union!21499 (regOne!43511 Regex!21499) (regTwo!43511 Regex!21499)) )
))
(declare-fun r!24602 () Regex!21499)

(declare-fun nullable!9600 (Regex!21499) Bool)

(assert (=> b!7963248 (= res!3155819 (not (nullable!9600 r!24602)))))

(declare-datatypes ((List!74728 0))(
  ( (Nil!74604) (Cons!74604 (h!81052 C!43336) (t!390471 List!74728)) )
))
(declare-fun lt!2704163 () List!74728)

(declare-fun input!7927 () List!74728)

(declare-fun isPrefix!6599 (List!74728 List!74728) Bool)

(assert (=> b!7963248 (isPrefix!6599 lt!2704163 input!7927)))

(declare-datatypes ((Unit!170074 0))(
  ( (Unit!170075) )
))
(declare-fun lt!2704171 () Unit!170074)

(declare-fun testedP!447 () List!74728)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1326 (List!74728 List!74728) Unit!170074)

(assert (=> b!7963248 (= lt!2704171 (lemmaAddHeadSuffixToPrefixStillPrefix!1326 testedP!447 input!7927))))

(declare-fun lt!2704170 () C!43336)

(declare-fun ++!18369 (List!74728 List!74728) List!74728)

(assert (=> b!7963248 (= lt!2704163 (++!18369 testedP!447 (Cons!74604 lt!2704170 Nil!74604)))))

(declare-fun lt!2704161 () List!74728)

(declare-fun head!16251 (List!74728) C!43336)

(assert (=> b!7963248 (= lt!2704170 (head!16251 lt!2704161))))

(declare-fun b!7963249 () Bool)

(declare-fun e!4695960 () Bool)

(declare-fun tp!2372978 () Bool)

(assert (=> b!7963249 (= e!4695960 tp!2372978)))

(declare-fun b!7963250 () Bool)

(declare-fun e!4695965 () Bool)

(declare-fun tp!2372976 () Bool)

(assert (=> b!7963250 (= e!4695965 (and tp_is_empty!53541 tp!2372976))))

(declare-fun b!7963251 () Bool)

(declare-fun e!4695964 () Bool)

(assert (=> b!7963251 (= e!4695964 (not e!4695966))))

(declare-fun res!3155821 () Bool)

(assert (=> b!7963251 (=> res!3155821 e!4695966)))

(declare-fun lt!2704166 () Int)

(declare-fun lt!2704169 () Int)

(assert (=> b!7963251 (= res!3155821 (>= lt!2704166 lt!2704169))))

(declare-fun lt!2704168 () Unit!170074)

(declare-fun e!4695963 () Unit!170074)

(assert (=> b!7963251 (= lt!2704168 e!4695963)))

(declare-fun c!1462427 () Bool)

(assert (=> b!7963251 (= c!1462427 (= lt!2704166 lt!2704169))))

(assert (=> b!7963251 (<= lt!2704166 lt!2704169)))

(declare-fun lt!2704165 () Unit!170074)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1116 (List!74728 List!74728) Unit!170074)

(assert (=> b!7963251 (= lt!2704165 (lemmaIsPrefixThenSmallerEqSize!1116 testedP!447 input!7927))))

(declare-fun b!7963252 () Bool)

(declare-fun tp!2372972 () Bool)

(assert (=> b!7963252 (= e!4695967 tp!2372972)))

(declare-fun b!7963253 () Bool)

(assert (=> b!7963253 (= e!4695960 tp_is_empty!53541)))

(declare-fun res!3155823 () Bool)

(declare-fun e!4695969 () Bool)

(assert (=> start!751068 (=> (not res!3155823) (not e!4695969))))

(declare-fun baseR!116 () Regex!21499)

(declare-fun validRegex!11803 (Regex!21499) Bool)

(assert (=> start!751068 (= res!3155823 (validRegex!11803 baseR!116))))

(assert (=> start!751068 e!4695969))

(assert (=> start!751068 e!4695967))

(declare-fun e!4695968 () Bool)

(assert (=> start!751068 e!4695968))

(assert (=> start!751068 e!4695965))

(assert (=> start!751068 e!4695960))

(declare-fun b!7963254 () Bool)

(declare-fun e!4695961 () Bool)

(assert (=> b!7963254 (= e!4695962 e!4695961)))

(declare-fun res!3155824 () Bool)

(assert (=> b!7963254 (=> res!3155824 e!4695961)))

(declare-fun lt!2704167 () Regex!21499)

(declare-fun isEmpty!42905 (List!74728) Bool)

(declare-datatypes ((tuple2!70660 0))(
  ( (tuple2!70661 (_1!38633 List!74728) (_2!38633 List!74728)) )
))
(declare-fun findLongestMatchInner!2280 (Regex!21499 List!74728 Int List!74728 List!74728 Int) tuple2!70660)

(declare-fun tail!15788 (List!74728) List!74728)

(assert (=> b!7963254 (= res!3155824 (isEmpty!42905 (_1!38633 (findLongestMatchInner!2280 lt!2704167 lt!2704163 (+ 1 lt!2704166) (tail!15788 lt!2704161) input!7927 lt!2704169))))))

(declare-fun derivativeStep!6527 (Regex!21499 C!43336) Regex!21499)

(assert (=> b!7963254 (= lt!2704167 (derivativeStep!6527 r!24602 lt!2704170))))

(declare-fun b!7963255 () Bool)

(assert (=> b!7963255 (= e!4695961 (validRegex!11803 r!24602))))

(declare-fun derivative!685 (Regex!21499 List!74728) Regex!21499)

(assert (=> b!7963255 (= (derivative!685 baseR!116 lt!2704163) lt!2704167)))

(declare-fun lt!2704162 () Unit!170074)

(declare-fun lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!211 (Regex!21499 Regex!21499 List!74728 C!43336) Unit!170074)

(assert (=> b!7963255 (= lt!2704162 (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!211 baseR!116 r!24602 testedP!447 lt!2704170))))

(declare-fun b!7963256 () Bool)

(declare-fun tp!2372977 () Bool)

(declare-fun tp!2372981 () Bool)

(assert (=> b!7963256 (= e!4695967 (and tp!2372977 tp!2372981))))

(declare-fun b!7963257 () Bool)

(declare-fun Unit!170076 () Unit!170074)

(assert (=> b!7963257 (= e!4695963 Unit!170076)))

(declare-fun b!7963258 () Bool)

(declare-fun res!3155825 () Bool)

(assert (=> b!7963258 (=> (not res!3155825) (not e!4695969))))

(assert (=> b!7963258 (= res!3155825 (isPrefix!6599 testedP!447 input!7927))))

(declare-fun b!7963259 () Bool)

(declare-fun tp!2372973 () Bool)

(declare-fun tp!2372982 () Bool)

(assert (=> b!7963259 (= e!4695960 (and tp!2372973 tp!2372982))))

(declare-fun b!7963260 () Bool)

(assert (=> b!7963260 (= e!4695969 e!4695964)))

(declare-fun res!3155820 () Bool)

(assert (=> b!7963260 (=> (not res!3155820) (not e!4695964))))

(assert (=> b!7963260 (= res!3155820 (not (isEmpty!42905 (_1!38633 (findLongestMatchInner!2280 r!24602 testedP!447 lt!2704166 lt!2704161 input!7927 lt!2704169)))))))

(declare-fun size!43435 (List!74728) Int)

(assert (=> b!7963260 (= lt!2704169 (size!43435 input!7927))))

(declare-fun getSuffix!3802 (List!74728 List!74728) List!74728)

(assert (=> b!7963260 (= lt!2704161 (getSuffix!3802 input!7927 testedP!447))))

(assert (=> b!7963260 (= lt!2704166 (size!43435 testedP!447))))

(declare-fun b!7963261 () Bool)

(declare-fun tp!2372975 () Bool)

(declare-fun tp!2372971 () Bool)

(assert (=> b!7963261 (= e!4695960 (and tp!2372975 tp!2372971))))

(declare-fun b!7963262 () Bool)

(declare-fun tp!2372980 () Bool)

(assert (=> b!7963262 (= e!4695968 (and tp_is_empty!53541 tp!2372980))))

(declare-fun b!7963263 () Bool)

(declare-fun res!3155822 () Bool)

(assert (=> b!7963263 (=> (not res!3155822) (not e!4695969))))

(assert (=> b!7963263 (= res!3155822 (= (derivative!685 baseR!116 testedP!447) r!24602))))

(declare-fun b!7963264 () Bool)

(declare-fun res!3155826 () Bool)

(assert (=> b!7963264 (=> (not res!3155826) (not e!4695964))))

(assert (=> b!7963264 (= res!3155826 (not (= testedP!447 input!7927)))))

(declare-fun b!7963265 () Bool)

(declare-fun Unit!170077 () Unit!170074)

(assert (=> b!7963265 (= e!4695963 Unit!170077)))

(declare-fun lt!2704160 () Unit!170074)

(declare-fun lemmaIsPrefixRefl!4067 (List!74728 List!74728) Unit!170074)

(assert (=> b!7963265 (= lt!2704160 (lemmaIsPrefixRefl!4067 input!7927 input!7927))))

(assert (=> b!7963265 (isPrefix!6599 input!7927 input!7927)))

(declare-fun lt!2704164 () Unit!170074)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1647 (List!74728 List!74728 List!74728) Unit!170074)

(assert (=> b!7963265 (= lt!2704164 (lemmaIsPrefixSameLengthThenSameList!1647 input!7927 testedP!447 input!7927))))

(assert (=> b!7963265 false))

(declare-fun b!7963266 () Bool)

(declare-fun tp!2372974 () Bool)

(declare-fun tp!2372979 () Bool)

(assert (=> b!7963266 (= e!4695967 (and tp!2372974 tp!2372979))))

(assert (= (and start!751068 res!3155823) b!7963258))

(assert (= (and b!7963258 res!3155825) b!7963263))

(assert (= (and b!7963263 res!3155822) b!7963260))

(assert (= (and b!7963260 res!3155820) b!7963264))

(assert (= (and b!7963264 res!3155826) b!7963251))

(assert (= (and b!7963251 c!1462427) b!7963265))

(assert (= (and b!7963251 (not c!1462427)) b!7963257))

(assert (= (and b!7963251 (not res!3155821)) b!7963248))

(assert (= (and b!7963248 (not res!3155819)) b!7963254))

(assert (= (and b!7963254 (not res!3155824)) b!7963255))

(get-info :version)

(assert (= (and start!751068 ((_ is ElementMatch!21499) baseR!116)) b!7963247))

(assert (= (and start!751068 ((_ is Concat!30498) baseR!116)) b!7963266))

(assert (= (and start!751068 ((_ is Star!21499) baseR!116)) b!7963252))

(assert (= (and start!751068 ((_ is Union!21499) baseR!116)) b!7963256))

(assert (= (and start!751068 ((_ is Cons!74604) testedP!447)) b!7963262))

(assert (= (and start!751068 ((_ is Cons!74604) input!7927)) b!7963250))

(assert (= (and start!751068 ((_ is ElementMatch!21499) r!24602)) b!7963253))

(assert (= (and start!751068 ((_ is Concat!30498) r!24602)) b!7963259))

(assert (= (and start!751068 ((_ is Star!21499) r!24602)) b!7963249))

(assert (= (and start!751068 ((_ is Union!21499) r!24602)) b!7963261))

(declare-fun m!8343518 () Bool)

(assert (=> b!7963255 m!8343518))

(declare-fun m!8343520 () Bool)

(assert (=> b!7963255 m!8343520))

(declare-fun m!8343522 () Bool)

(assert (=> b!7963255 m!8343522))

(declare-fun m!8343524 () Bool)

(assert (=> b!7963258 m!8343524))

(declare-fun m!8343526 () Bool)

(assert (=> b!7963265 m!8343526))

(declare-fun m!8343528 () Bool)

(assert (=> b!7963265 m!8343528))

(declare-fun m!8343530 () Bool)

(assert (=> b!7963265 m!8343530))

(declare-fun m!8343532 () Bool)

(assert (=> start!751068 m!8343532))

(declare-fun m!8343534 () Bool)

(assert (=> b!7963260 m!8343534))

(declare-fun m!8343536 () Bool)

(assert (=> b!7963260 m!8343536))

(declare-fun m!8343538 () Bool)

(assert (=> b!7963260 m!8343538))

(declare-fun m!8343540 () Bool)

(assert (=> b!7963260 m!8343540))

(declare-fun m!8343542 () Bool)

(assert (=> b!7963260 m!8343542))

(declare-fun m!8343544 () Bool)

(assert (=> b!7963254 m!8343544))

(assert (=> b!7963254 m!8343544))

(declare-fun m!8343546 () Bool)

(assert (=> b!7963254 m!8343546))

(declare-fun m!8343548 () Bool)

(assert (=> b!7963254 m!8343548))

(declare-fun m!8343550 () Bool)

(assert (=> b!7963254 m!8343550))

(declare-fun m!8343552 () Bool)

(assert (=> b!7963251 m!8343552))

(declare-fun m!8343554 () Bool)

(assert (=> b!7963248 m!8343554))

(declare-fun m!8343556 () Bool)

(assert (=> b!7963248 m!8343556))

(declare-fun m!8343558 () Bool)

(assert (=> b!7963248 m!8343558))

(declare-fun m!8343560 () Bool)

(assert (=> b!7963248 m!8343560))

(declare-fun m!8343562 () Bool)

(assert (=> b!7963248 m!8343562))

(declare-fun m!8343564 () Bool)

(assert (=> b!7963263 m!8343564))

(check-sat (not b!7963259) (not b!7963256) (not b!7963254) (not b!7963252) (not b!7963249) (not b!7963265) (not b!7963260) (not start!751068) tp_is_empty!53541 (not b!7963266) (not b!7963251) (not b!7963258) (not b!7963262) (not b!7963263) (not b!7963250) (not b!7963261) (not b!7963255) (not b!7963248))
(check-sat)
(get-model)

(declare-fun d!2378630 () Bool)

(assert (=> d!2378630 (<= (size!43435 testedP!447) (size!43435 input!7927))))

(declare-fun lt!2704174 () Unit!170074)

(declare-fun choose!60013 (List!74728 List!74728) Unit!170074)

(assert (=> d!2378630 (= lt!2704174 (choose!60013 testedP!447 input!7927))))

(assert (=> d!2378630 (isPrefix!6599 testedP!447 input!7927)))

(assert (=> d!2378630 (= (lemmaIsPrefixThenSmallerEqSize!1116 testedP!447 input!7927) lt!2704174)))

(declare-fun bs!1969809 () Bool)

(assert (= bs!1969809 d!2378630))

(assert (=> bs!1969809 m!8343538))

(assert (=> bs!1969809 m!8343540))

(declare-fun m!8343566 () Bool)

(assert (=> bs!1969809 m!8343566))

(assert (=> bs!1969809 m!8343524))

(assert (=> b!7963251 d!2378630))

(declare-fun b!7963303 () Bool)

(declare-fun e!4696000 () Bool)

(declare-fun e!4695999 () Bool)

(assert (=> b!7963303 (= e!4696000 e!4695999)))

(declare-fun c!1462437 () Bool)

(assert (=> b!7963303 (= c!1462437 ((_ is Star!21499) baseR!116))))

(declare-fun bm!738558 () Bool)

(declare-fun call!738563 () Bool)

(declare-fun c!1462438 () Bool)

(assert (=> bm!738558 (= call!738563 (validRegex!11803 (ite c!1462438 (regOne!43511 baseR!116) (regOne!43510 baseR!116))))))

(declare-fun b!7963304 () Bool)

(declare-fun e!4696003 () Bool)

(declare-fun call!738564 () Bool)

(assert (=> b!7963304 (= e!4696003 call!738564)))

(declare-fun b!7963305 () Bool)

(declare-fun e!4696004 () Bool)

(declare-fun call!738565 () Bool)

(assert (=> b!7963305 (= e!4696004 call!738565)))

(declare-fun bm!738560 () Bool)

(assert (=> bm!738560 (= call!738565 (validRegex!11803 (ite c!1462437 (reg!21828 baseR!116) (ite c!1462438 (regTwo!43511 baseR!116) (regTwo!43510 baseR!116)))))))

(declare-fun b!7963306 () Bool)

(declare-fun e!4696002 () Bool)

(assert (=> b!7963306 (= e!4696002 call!738564)))

(declare-fun b!7963307 () Bool)

(declare-fun res!3155848 () Bool)

(assert (=> b!7963307 (=> (not res!3155848) (not e!4696002))))

(assert (=> b!7963307 (= res!3155848 call!738563)))

(declare-fun e!4695998 () Bool)

(assert (=> b!7963307 (= e!4695998 e!4696002)))

(declare-fun b!7963308 () Bool)

(declare-fun res!3155850 () Bool)

(declare-fun e!4696001 () Bool)

(assert (=> b!7963308 (=> res!3155850 e!4696001)))

(assert (=> b!7963308 (= res!3155850 (not ((_ is Concat!30498) baseR!116)))))

(assert (=> b!7963308 (= e!4695998 e!4696001)))

(declare-fun b!7963309 () Bool)

(assert (=> b!7963309 (= e!4696001 e!4696003)))

(declare-fun res!3155849 () Bool)

(assert (=> b!7963309 (=> (not res!3155849) (not e!4696003))))

(assert (=> b!7963309 (= res!3155849 call!738563)))

(declare-fun d!2378632 () Bool)

(declare-fun res!3155851 () Bool)

(assert (=> d!2378632 (=> res!3155851 e!4696000)))

(assert (=> d!2378632 (= res!3155851 ((_ is ElementMatch!21499) baseR!116))))

(assert (=> d!2378632 (= (validRegex!11803 baseR!116) e!4696000)))

(declare-fun bm!738559 () Bool)

(assert (=> bm!738559 (= call!738564 call!738565)))

(declare-fun b!7963310 () Bool)

(assert (=> b!7963310 (= e!4695999 e!4695998)))

(assert (=> b!7963310 (= c!1462438 ((_ is Union!21499) baseR!116))))

(declare-fun b!7963311 () Bool)

(assert (=> b!7963311 (= e!4695999 e!4696004)))

(declare-fun res!3155847 () Bool)

(assert (=> b!7963311 (= res!3155847 (not (nullable!9600 (reg!21828 baseR!116))))))

(assert (=> b!7963311 (=> (not res!3155847) (not e!4696004))))

(assert (= (and d!2378632 (not res!3155851)) b!7963303))

(assert (= (and b!7963303 c!1462437) b!7963311))

(assert (= (and b!7963303 (not c!1462437)) b!7963310))

(assert (= (and b!7963311 res!3155847) b!7963305))

(assert (= (and b!7963310 c!1462438) b!7963307))

(assert (= (and b!7963310 (not c!1462438)) b!7963308))

(assert (= (and b!7963307 res!3155848) b!7963306))

(assert (= (and b!7963308 (not res!3155850)) b!7963309))

(assert (= (and b!7963309 res!3155849) b!7963304))

(assert (= (or b!7963306 b!7963304) bm!738559))

(assert (= (or b!7963307 b!7963309) bm!738558))

(assert (= (or b!7963305 bm!738559) bm!738560))

(declare-fun m!8343568 () Bool)

(assert (=> bm!738558 m!8343568))

(declare-fun m!8343570 () Bool)

(assert (=> bm!738560 m!8343570))

(declare-fun m!8343572 () Bool)

(assert (=> b!7963311 m!8343572))

(assert (=> start!751068 d!2378632))

(declare-fun d!2378636 () Bool)

(declare-fun e!4696020 () Bool)

(assert (=> d!2378636 e!4696020))

(declare-fun res!3155865 () Bool)

(assert (=> d!2378636 (=> res!3155865 e!4696020)))

(declare-fun lt!2704179 () Bool)

(assert (=> d!2378636 (= res!3155865 (not lt!2704179))))

(declare-fun e!4696022 () Bool)

(assert (=> d!2378636 (= lt!2704179 e!4696022)))

(declare-fun res!3155866 () Bool)

(assert (=> d!2378636 (=> res!3155866 e!4696022)))

(assert (=> d!2378636 (= res!3155866 ((_ is Nil!74604) testedP!447))))

(assert (=> d!2378636 (= (isPrefix!6599 testedP!447 input!7927) lt!2704179)))

(declare-fun b!7963333 () Bool)

(declare-fun e!4696021 () Bool)

(assert (=> b!7963333 (= e!4696022 e!4696021)))

(declare-fun res!3155867 () Bool)

(assert (=> b!7963333 (=> (not res!3155867) (not e!4696021))))

(assert (=> b!7963333 (= res!3155867 (not ((_ is Nil!74604) input!7927)))))

(declare-fun b!7963334 () Bool)

(declare-fun res!3155868 () Bool)

(assert (=> b!7963334 (=> (not res!3155868) (not e!4696021))))

(assert (=> b!7963334 (= res!3155868 (= (head!16251 testedP!447) (head!16251 input!7927)))))

(declare-fun b!7963336 () Bool)

(assert (=> b!7963336 (= e!4696020 (>= (size!43435 input!7927) (size!43435 testedP!447)))))

(declare-fun b!7963335 () Bool)

(assert (=> b!7963335 (= e!4696021 (isPrefix!6599 (tail!15788 testedP!447) (tail!15788 input!7927)))))

(assert (= (and d!2378636 (not res!3155866)) b!7963333))

(assert (= (and b!7963333 res!3155867) b!7963334))

(assert (= (and b!7963334 res!3155868) b!7963335))

(assert (= (and d!2378636 (not res!3155865)) b!7963336))

(declare-fun m!8343586 () Bool)

(assert (=> b!7963334 m!8343586))

(declare-fun m!8343588 () Bool)

(assert (=> b!7963334 m!8343588))

(assert (=> b!7963336 m!8343540))

(assert (=> b!7963336 m!8343538))

(declare-fun m!8343590 () Bool)

(assert (=> b!7963335 m!8343590))

(declare-fun m!8343592 () Bool)

(assert (=> b!7963335 m!8343592))

(assert (=> b!7963335 m!8343590))

(assert (=> b!7963335 m!8343592))

(declare-fun m!8343594 () Bool)

(assert (=> b!7963335 m!8343594))

(assert (=> b!7963258 d!2378636))

(declare-fun d!2378642 () Bool)

(declare-fun lt!2704186 () Regex!21499)

(assert (=> d!2378642 (validRegex!11803 lt!2704186)))

(declare-fun e!4696026 () Regex!21499)

(assert (=> d!2378642 (= lt!2704186 e!4696026)))

(declare-fun c!1462447 () Bool)

(assert (=> d!2378642 (= c!1462447 ((_ is Cons!74604) testedP!447))))

(assert (=> d!2378642 (validRegex!11803 baseR!116)))

(assert (=> d!2378642 (= (derivative!685 baseR!116 testedP!447) lt!2704186)))

(declare-fun b!7963343 () Bool)

(assert (=> b!7963343 (= e!4696026 (derivative!685 (derivativeStep!6527 baseR!116 (h!81052 testedP!447)) (t!390471 testedP!447)))))

(declare-fun b!7963344 () Bool)

(assert (=> b!7963344 (= e!4696026 baseR!116)))

(assert (= (and d!2378642 c!1462447) b!7963343))

(assert (= (and d!2378642 (not c!1462447)) b!7963344))

(declare-fun m!8343600 () Bool)

(assert (=> d!2378642 m!8343600))

(assert (=> d!2378642 m!8343532))

(declare-fun m!8343602 () Bool)

(assert (=> b!7963343 m!8343602))

(assert (=> b!7963343 m!8343602))

(declare-fun m!8343604 () Bool)

(assert (=> b!7963343 m!8343604))

(assert (=> b!7963263 d!2378642))

(declare-fun d!2378646 () Bool)

(declare-fun e!4696041 () Bool)

(assert (=> d!2378646 e!4696041))

(declare-fun res!3155885 () Bool)

(assert (=> d!2378646 (=> (not res!3155885) (not e!4696041))))

(declare-fun lt!2704195 () List!74728)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15845 (List!74728) (InoxSet C!43336))

(assert (=> d!2378646 (= res!3155885 (= (content!15845 lt!2704195) ((_ map or) (content!15845 testedP!447) (content!15845 (Cons!74604 lt!2704170 Nil!74604)))))))

(declare-fun e!4696040 () List!74728)

(assert (=> d!2378646 (= lt!2704195 e!4696040)))

(declare-fun c!1462450 () Bool)

(assert (=> d!2378646 (= c!1462450 ((_ is Nil!74604) testedP!447))))

(assert (=> d!2378646 (= (++!18369 testedP!447 (Cons!74604 lt!2704170 Nil!74604)) lt!2704195)))

(declare-fun b!7963365 () Bool)

(assert (=> b!7963365 (= e!4696040 (Cons!74604 lt!2704170 Nil!74604))))

(declare-fun b!7963368 () Bool)

(assert (=> b!7963368 (= e!4696041 (or (not (= (Cons!74604 lt!2704170 Nil!74604) Nil!74604)) (= lt!2704195 testedP!447)))))

(declare-fun b!7963366 () Bool)

(assert (=> b!7963366 (= e!4696040 (Cons!74604 (h!81052 testedP!447) (++!18369 (t!390471 testedP!447) (Cons!74604 lt!2704170 Nil!74604))))))

(declare-fun b!7963367 () Bool)

(declare-fun res!3155886 () Bool)

(assert (=> b!7963367 (=> (not res!3155886) (not e!4696041))))

(assert (=> b!7963367 (= res!3155886 (= (size!43435 lt!2704195) (+ (size!43435 testedP!447) (size!43435 (Cons!74604 lt!2704170 Nil!74604)))))))

(assert (= (and d!2378646 c!1462450) b!7963365))

(assert (= (and d!2378646 (not c!1462450)) b!7963366))

(assert (= (and d!2378646 res!3155885) b!7963367))

(assert (= (and b!7963367 res!3155886) b!7963368))

(declare-fun m!8343614 () Bool)

(assert (=> d!2378646 m!8343614))

(declare-fun m!8343616 () Bool)

(assert (=> d!2378646 m!8343616))

(declare-fun m!8343618 () Bool)

(assert (=> d!2378646 m!8343618))

(declare-fun m!8343620 () Bool)

(assert (=> b!7963366 m!8343620))

(declare-fun m!8343622 () Bool)

(assert (=> b!7963367 m!8343622))

(assert (=> b!7963367 m!8343538))

(declare-fun m!8343624 () Bool)

(assert (=> b!7963367 m!8343624))

(assert (=> b!7963248 d!2378646))

(declare-fun d!2378652 () Bool)

(declare-fun e!4696042 () Bool)

(assert (=> d!2378652 e!4696042))

(declare-fun res!3155887 () Bool)

(assert (=> d!2378652 (=> res!3155887 e!4696042)))

(declare-fun lt!2704196 () Bool)

(assert (=> d!2378652 (= res!3155887 (not lt!2704196))))

(declare-fun e!4696044 () Bool)

(assert (=> d!2378652 (= lt!2704196 e!4696044)))

(declare-fun res!3155888 () Bool)

(assert (=> d!2378652 (=> res!3155888 e!4696044)))

(assert (=> d!2378652 (= res!3155888 ((_ is Nil!74604) lt!2704163))))

(assert (=> d!2378652 (= (isPrefix!6599 lt!2704163 input!7927) lt!2704196)))

(declare-fun b!7963369 () Bool)

(declare-fun e!4696043 () Bool)

(assert (=> b!7963369 (= e!4696044 e!4696043)))

(declare-fun res!3155889 () Bool)

(assert (=> b!7963369 (=> (not res!3155889) (not e!4696043))))

(assert (=> b!7963369 (= res!3155889 (not ((_ is Nil!74604) input!7927)))))

(declare-fun b!7963370 () Bool)

(declare-fun res!3155890 () Bool)

(assert (=> b!7963370 (=> (not res!3155890) (not e!4696043))))

(assert (=> b!7963370 (= res!3155890 (= (head!16251 lt!2704163) (head!16251 input!7927)))))

(declare-fun b!7963372 () Bool)

(assert (=> b!7963372 (= e!4696042 (>= (size!43435 input!7927) (size!43435 lt!2704163)))))

(declare-fun b!7963371 () Bool)

(assert (=> b!7963371 (= e!4696043 (isPrefix!6599 (tail!15788 lt!2704163) (tail!15788 input!7927)))))

(assert (= (and d!2378652 (not res!3155888)) b!7963369))

(assert (= (and b!7963369 res!3155889) b!7963370))

(assert (= (and b!7963370 res!3155890) b!7963371))

(assert (= (and d!2378652 (not res!3155887)) b!7963372))

(declare-fun m!8343626 () Bool)

(assert (=> b!7963370 m!8343626))

(assert (=> b!7963370 m!8343588))

(assert (=> b!7963372 m!8343540))

(declare-fun m!8343628 () Bool)

(assert (=> b!7963372 m!8343628))

(declare-fun m!8343630 () Bool)

(assert (=> b!7963371 m!8343630))

(assert (=> b!7963371 m!8343592))

(assert (=> b!7963371 m!8343630))

(assert (=> b!7963371 m!8343592))

(declare-fun m!8343632 () Bool)

(assert (=> b!7963371 m!8343632))

(assert (=> b!7963248 d!2378652))

(declare-fun d!2378654 () Bool)

(declare-fun nullableFct!3787 (Regex!21499) Bool)

(assert (=> d!2378654 (= (nullable!9600 r!24602) (nullableFct!3787 r!24602))))

(declare-fun bs!1969813 () Bool)

(assert (= bs!1969813 d!2378654))

(declare-fun m!8343636 () Bool)

(assert (=> bs!1969813 m!8343636))

(assert (=> b!7963248 d!2378654))

(declare-fun d!2378658 () Bool)

(assert (=> d!2378658 (= (head!16251 lt!2704161) (h!81052 lt!2704161))))

(assert (=> b!7963248 d!2378658))

(declare-fun d!2378660 () Bool)

(assert (=> d!2378660 (isPrefix!6599 (++!18369 testedP!447 (Cons!74604 (head!16251 (getSuffix!3802 input!7927 testedP!447)) Nil!74604)) input!7927)))

(declare-fun lt!2704208 () Unit!170074)

(declare-fun choose!60015 (List!74728 List!74728) Unit!170074)

(assert (=> d!2378660 (= lt!2704208 (choose!60015 testedP!447 input!7927))))

(assert (=> d!2378660 (isPrefix!6599 testedP!447 input!7927)))

(assert (=> d!2378660 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1326 testedP!447 input!7927) lt!2704208)))

(declare-fun bs!1969815 () Bool)

(assert (= bs!1969815 d!2378660))

(assert (=> bs!1969815 m!8343542))

(declare-fun m!8343652 () Bool)

(assert (=> bs!1969815 m!8343652))

(declare-fun m!8343654 () Bool)

(assert (=> bs!1969815 m!8343654))

(assert (=> bs!1969815 m!8343524))

(assert (=> bs!1969815 m!8343542))

(declare-fun m!8343656 () Bool)

(assert (=> bs!1969815 m!8343656))

(assert (=> bs!1969815 m!8343652))

(declare-fun m!8343658 () Bool)

(assert (=> bs!1969815 m!8343658))

(assert (=> b!7963248 d!2378660))

(declare-fun d!2378668 () Bool)

(assert (=> d!2378668 (= (isEmpty!42905 (_1!38633 (findLongestMatchInner!2280 lt!2704167 lt!2704163 (+ 1 lt!2704166) (tail!15788 lt!2704161) input!7927 lt!2704169))) ((_ is Nil!74604) (_1!38633 (findLongestMatchInner!2280 lt!2704167 lt!2704163 (+ 1 lt!2704166) (tail!15788 lt!2704161) input!7927 lt!2704169))))))

(assert (=> b!7963254 d!2378668))

(declare-fun b!7963588 () Bool)

(declare-fun e!4696151 () tuple2!70660)

(declare-fun e!4696152 () tuple2!70660)

(assert (=> b!7963588 (= e!4696151 e!4696152)))

(declare-fun lt!2704393 () tuple2!70660)

(declare-fun call!738633 () tuple2!70660)

(assert (=> b!7963588 (= lt!2704393 call!738633)))

(declare-fun c!1462520 () Bool)

(assert (=> b!7963588 (= c!1462520 (isEmpty!42905 (_1!38633 lt!2704393)))))

(declare-fun b!7963589 () Bool)

(declare-fun e!4696157 () Bool)

(declare-fun e!4696153 () Bool)

(assert (=> b!7963589 (= e!4696157 e!4696153)))

(declare-fun res!3155923 () Bool)

(assert (=> b!7963589 (=> res!3155923 e!4696153)))

(declare-fun lt!2704396 () tuple2!70660)

(assert (=> b!7963589 (= res!3155923 (isEmpty!42905 (_1!38633 lt!2704396)))))

(declare-fun b!7963590 () Bool)

(declare-fun e!4696154 () Unit!170074)

(declare-fun Unit!170081 () Unit!170074)

(assert (=> b!7963590 (= e!4696154 Unit!170081)))

(declare-fun lt!2704417 () Unit!170074)

(declare-fun call!738637 () Unit!170074)

(assert (=> b!7963590 (= lt!2704417 call!738637)))

(declare-fun call!738639 () Bool)

(assert (=> b!7963590 call!738639))

(declare-fun lt!2704413 () Unit!170074)

(assert (=> b!7963590 (= lt!2704413 lt!2704417)))

(declare-fun lt!2704398 () Unit!170074)

(declare-fun call!738635 () Unit!170074)

(assert (=> b!7963590 (= lt!2704398 call!738635)))

(assert (=> b!7963590 (= input!7927 lt!2704163)))

(declare-fun lt!2704403 () Unit!170074)

(assert (=> b!7963590 (= lt!2704403 lt!2704398)))

(assert (=> b!7963590 false))

(declare-fun bm!738627 () Bool)

(declare-fun call!738632 () Regex!21499)

(declare-fun lt!2704410 () List!74728)

(declare-fun call!738638 () List!74728)

(assert (=> bm!738627 (= call!738633 (findLongestMatchInner!2280 call!738632 lt!2704410 (+ 1 lt!2704166 1) call!738638 input!7927 lt!2704169))))

(declare-fun bm!738628 () Bool)

(assert (=> bm!738628 (= call!738637 (lemmaIsPrefixRefl!4067 input!7927 input!7927))))

(declare-fun b!7963591 () Bool)

(assert (=> b!7963591 (= e!4696152 lt!2704393)))

(declare-fun d!2378672 () Bool)

(assert (=> d!2378672 e!4696157))

(declare-fun res!3155922 () Bool)

(assert (=> d!2378672 (=> (not res!3155922) (not e!4696157))))

(assert (=> d!2378672 (= res!3155922 (= (++!18369 (_1!38633 lt!2704396) (_2!38633 lt!2704396)) input!7927))))

(declare-fun e!4696158 () tuple2!70660)

(assert (=> d!2378672 (= lt!2704396 e!4696158)))

(declare-fun c!1462516 () Bool)

(declare-fun lostCause!1978 (Regex!21499) Bool)

(assert (=> d!2378672 (= c!1462516 (lostCause!1978 lt!2704167))))

(declare-fun lt!2704414 () Unit!170074)

(declare-fun Unit!170082 () Unit!170074)

(assert (=> d!2378672 (= lt!2704414 Unit!170082)))

(assert (=> d!2378672 (= (getSuffix!3802 input!7927 lt!2704163) (tail!15788 lt!2704161))))

(declare-fun lt!2704409 () Unit!170074)

(declare-fun lt!2704397 () Unit!170074)

(assert (=> d!2378672 (= lt!2704409 lt!2704397)))

(declare-fun lt!2704401 () List!74728)

(assert (=> d!2378672 (= (tail!15788 lt!2704161) lt!2704401)))

(declare-fun lemmaSamePrefixThenSameSuffix!2994 (List!74728 List!74728 List!74728 List!74728 List!74728) Unit!170074)

(assert (=> d!2378672 (= lt!2704397 (lemmaSamePrefixThenSameSuffix!2994 lt!2704163 (tail!15788 lt!2704161) lt!2704163 lt!2704401 input!7927))))

(assert (=> d!2378672 (= lt!2704401 (getSuffix!3802 input!7927 lt!2704163))))

(declare-fun lt!2704405 () Unit!170074)

(declare-fun lt!2704399 () Unit!170074)

(assert (=> d!2378672 (= lt!2704405 lt!2704399)))

(assert (=> d!2378672 (isPrefix!6599 lt!2704163 (++!18369 lt!2704163 (tail!15788 lt!2704161)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3856 (List!74728 List!74728) Unit!170074)

(assert (=> d!2378672 (= lt!2704399 (lemmaConcatTwoListThenFirstIsPrefix!3856 lt!2704163 (tail!15788 lt!2704161)))))

(assert (=> d!2378672 (validRegex!11803 lt!2704167)))

(assert (=> d!2378672 (= (findLongestMatchInner!2280 lt!2704167 lt!2704163 (+ 1 lt!2704166) (tail!15788 lt!2704161) input!7927 lt!2704169) lt!2704396)))

(declare-fun bm!738629 () Bool)

(assert (=> bm!738629 (= call!738639 (isPrefix!6599 input!7927 input!7927))))

(declare-fun b!7963592 () Bool)

(assert (=> b!7963592 (= e!4696158 (tuple2!70661 Nil!74604 input!7927))))

(declare-fun b!7963593 () Bool)

(declare-fun e!4696156 () tuple2!70660)

(assert (=> b!7963593 (= e!4696156 (tuple2!70661 lt!2704163 Nil!74604))))

(declare-fun b!7963594 () Bool)

(assert (=> b!7963594 (= e!4696152 (tuple2!70661 lt!2704163 (tail!15788 lt!2704161)))))

(declare-fun b!7963595 () Bool)

(assert (=> b!7963595 (= e!4696156 (tuple2!70661 Nil!74604 input!7927))))

(declare-fun b!7963596 () Bool)

(assert (=> b!7963596 (= e!4696153 (>= (size!43435 (_1!38633 lt!2704396)) (size!43435 lt!2704163)))))

(declare-fun bm!738630 () Bool)

(declare-fun call!738634 () C!43336)

(assert (=> bm!738630 (= call!738632 (derivativeStep!6527 lt!2704167 call!738634))))

(declare-fun b!7963597 () Bool)

(declare-fun e!4696155 () tuple2!70660)

(assert (=> b!7963597 (= e!4696158 e!4696155)))

(declare-fun c!1462518 () Bool)

(assert (=> b!7963597 (= c!1462518 (= (+ 1 lt!2704166) lt!2704169))))

(declare-fun bm!738631 () Bool)

(assert (=> bm!738631 (= call!738635 (lemmaIsPrefixSameLengthThenSameList!1647 input!7927 lt!2704163 input!7927))))

(declare-fun bm!738632 () Bool)

(declare-fun call!738636 () Bool)

(assert (=> bm!738632 (= call!738636 (nullable!9600 lt!2704167))))

(declare-fun bm!738633 () Bool)

(assert (=> bm!738633 (= call!738634 (head!16251 (tail!15788 lt!2704161)))))

(declare-fun b!7963598 () Bool)

(declare-fun Unit!170083 () Unit!170074)

(assert (=> b!7963598 (= e!4696154 Unit!170083)))

(declare-fun b!7963599 () Bool)

(declare-fun c!1462515 () Bool)

(assert (=> b!7963599 (= c!1462515 call!738636)))

(declare-fun lt!2704400 () Unit!170074)

(declare-fun lt!2704412 () Unit!170074)

(assert (=> b!7963599 (= lt!2704400 lt!2704412)))

(declare-fun lt!2704420 () List!74728)

(declare-fun lt!2704408 () C!43336)

(assert (=> b!7963599 (= (++!18369 (++!18369 lt!2704163 (Cons!74604 lt!2704408 Nil!74604)) lt!2704420) input!7927)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3534 (List!74728 C!43336 List!74728 List!74728) Unit!170074)

(assert (=> b!7963599 (= lt!2704412 (lemmaMoveElementToOtherListKeepsConcatEq!3534 lt!2704163 lt!2704408 lt!2704420 input!7927))))

(assert (=> b!7963599 (= lt!2704420 (tail!15788 (tail!15788 lt!2704161)))))

(assert (=> b!7963599 (= lt!2704408 (head!16251 (tail!15788 lt!2704161)))))

(declare-fun lt!2704416 () Unit!170074)

(declare-fun lt!2704415 () Unit!170074)

(assert (=> b!7963599 (= lt!2704416 lt!2704415)))

(assert (=> b!7963599 (isPrefix!6599 (++!18369 lt!2704163 (Cons!74604 (head!16251 (getSuffix!3802 input!7927 lt!2704163)) Nil!74604)) input!7927)))

(assert (=> b!7963599 (= lt!2704415 (lemmaAddHeadSuffixToPrefixStillPrefix!1326 lt!2704163 input!7927))))

(declare-fun lt!2704404 () Unit!170074)

(declare-fun lt!2704418 () Unit!170074)

(assert (=> b!7963599 (= lt!2704404 lt!2704418)))

(assert (=> b!7963599 (= lt!2704418 (lemmaAddHeadSuffixToPrefixStillPrefix!1326 lt!2704163 input!7927))))

(assert (=> b!7963599 (= lt!2704410 (++!18369 lt!2704163 (Cons!74604 (head!16251 (tail!15788 lt!2704161)) Nil!74604)))))

(declare-fun lt!2704406 () Unit!170074)

(assert (=> b!7963599 (= lt!2704406 e!4696154)))

(declare-fun c!1462517 () Bool)

(assert (=> b!7963599 (= c!1462517 (= (size!43435 lt!2704163) (size!43435 input!7927)))))

(declare-fun lt!2704419 () Unit!170074)

(declare-fun lt!2704407 () Unit!170074)

(assert (=> b!7963599 (= lt!2704419 lt!2704407)))

(assert (=> b!7963599 (<= (size!43435 lt!2704163) (size!43435 input!7927))))

(assert (=> b!7963599 (= lt!2704407 (lemmaIsPrefixThenSmallerEqSize!1116 lt!2704163 input!7927))))

(assert (=> b!7963599 (= e!4696155 e!4696151)))

(declare-fun b!7963600 () Bool)

(assert (=> b!7963600 (= e!4696151 call!738633)))

(declare-fun b!7963601 () Bool)

(declare-fun c!1462519 () Bool)

(assert (=> b!7963601 (= c!1462519 call!738636)))

(declare-fun lt!2704411 () Unit!170074)

(declare-fun lt!2704402 () Unit!170074)

(assert (=> b!7963601 (= lt!2704411 lt!2704402)))

(assert (=> b!7963601 (= input!7927 lt!2704163)))

(assert (=> b!7963601 (= lt!2704402 call!738635)))

(declare-fun lt!2704395 () Unit!170074)

(declare-fun lt!2704394 () Unit!170074)

(assert (=> b!7963601 (= lt!2704395 lt!2704394)))

(assert (=> b!7963601 call!738639))

(assert (=> b!7963601 (= lt!2704394 call!738637)))

(assert (=> b!7963601 (= e!4696155 e!4696156)))

(declare-fun bm!738634 () Bool)

(assert (=> bm!738634 (= call!738638 (tail!15788 (tail!15788 lt!2704161)))))

(assert (= (and d!2378672 c!1462516) b!7963592))

(assert (= (and d!2378672 (not c!1462516)) b!7963597))

(assert (= (and b!7963597 c!1462518) b!7963601))

(assert (= (and b!7963597 (not c!1462518)) b!7963599))

(assert (= (and b!7963601 c!1462519) b!7963593))

(assert (= (and b!7963601 (not c!1462519)) b!7963595))

(assert (= (and b!7963599 c!1462517) b!7963590))

(assert (= (and b!7963599 (not c!1462517)) b!7963598))

(assert (= (and b!7963599 c!1462515) b!7963588))

(assert (= (and b!7963599 (not c!1462515)) b!7963600))

(assert (= (and b!7963588 c!1462520) b!7963594))

(assert (= (and b!7963588 (not c!1462520)) b!7963591))

(assert (= (or b!7963588 b!7963600) bm!738633))

(assert (= (or b!7963588 b!7963600) bm!738634))

(assert (= (or b!7963588 b!7963600) bm!738630))

(assert (= (or b!7963588 b!7963600) bm!738627))

(assert (= (or b!7963601 b!7963599) bm!738632))

(assert (= (or b!7963601 b!7963590) bm!738631))

(assert (= (or b!7963601 b!7963590) bm!738628))

(assert (= (or b!7963601 b!7963590) bm!738629))

(assert (= (and d!2378672 res!3155922) b!7963589))

(assert (= (and b!7963589 (not res!3155923)) b!7963596))

(declare-fun m!8343794 () Bool)

(assert (=> bm!738630 m!8343794))

(assert (=> bm!738633 m!8343544))

(declare-fun m!8343796 () Bool)

(assert (=> bm!738633 m!8343796))

(declare-fun m!8343798 () Bool)

(assert (=> b!7963599 m!8343798))

(assert (=> b!7963599 m!8343544))

(declare-fun m!8343800 () Bool)

(assert (=> b!7963599 m!8343800))

(declare-fun m!8343802 () Bool)

(assert (=> b!7963599 m!8343802))

(declare-fun m!8343804 () Bool)

(assert (=> b!7963599 m!8343804))

(declare-fun m!8343806 () Bool)

(assert (=> b!7963599 m!8343806))

(declare-fun m!8343808 () Bool)

(assert (=> b!7963599 m!8343808))

(declare-fun m!8343810 () Bool)

(assert (=> b!7963599 m!8343810))

(assert (=> b!7963599 m!8343802))

(declare-fun m!8343812 () Bool)

(assert (=> b!7963599 m!8343812))

(assert (=> b!7963599 m!8343628))

(declare-fun m!8343814 () Bool)

(assert (=> b!7963599 m!8343814))

(declare-fun m!8343816 () Bool)

(assert (=> b!7963599 m!8343816))

(assert (=> b!7963599 m!8343540))

(declare-fun m!8343818 () Bool)

(assert (=> b!7963599 m!8343818))

(assert (=> b!7963599 m!8343808))

(assert (=> b!7963599 m!8343544))

(assert (=> b!7963599 m!8343796))

(assert (=> b!7963599 m!8343804))

(declare-fun m!8343820 () Bool)

(assert (=> b!7963596 m!8343820))

(assert (=> b!7963596 m!8343628))

(assert (=> bm!738629 m!8343528))

(declare-fun m!8343822 () Bool)

(assert (=> bm!738627 m!8343822))

(declare-fun m!8343824 () Bool)

(assert (=> b!7963588 m!8343824))

(assert (=> bm!738634 m!8343544))

(assert (=> bm!738634 m!8343800))

(declare-fun m!8343826 () Bool)

(assert (=> b!7963589 m!8343826))

(assert (=> bm!738628 m!8343526))

(declare-fun m!8343828 () Bool)

(assert (=> bm!738631 m!8343828))

(declare-fun m!8343830 () Bool)

(assert (=> d!2378672 m!8343830))

(assert (=> d!2378672 m!8343544))

(declare-fun m!8343832 () Bool)

(assert (=> d!2378672 m!8343832))

(declare-fun m!8343834 () Bool)

(assert (=> d!2378672 m!8343834))

(assert (=> d!2378672 m!8343808))

(declare-fun m!8343836 () Bool)

(assert (=> d!2378672 m!8343836))

(declare-fun m!8343838 () Bool)

(assert (=> d!2378672 m!8343838))

(assert (=> d!2378672 m!8343544))

(assert (=> d!2378672 m!8343836))

(assert (=> d!2378672 m!8343544))

(declare-fun m!8343840 () Bool)

(assert (=> d!2378672 m!8343840))

(declare-fun m!8343842 () Bool)

(assert (=> d!2378672 m!8343842))

(declare-fun m!8343844 () Bool)

(assert (=> bm!738632 m!8343844))

(assert (=> b!7963254 d!2378672))

(declare-fun d!2378700 () Bool)

(assert (=> d!2378700 (= (tail!15788 lt!2704161) (t!390471 lt!2704161))))

(assert (=> b!7963254 d!2378700))

(declare-fun b!7963622 () Bool)

(declare-fun e!4696170 () Regex!21499)

(assert (=> b!7963622 (= e!4696170 (ite (= lt!2704170 (c!1462428 r!24602)) EmptyExpr!21499 EmptyLang!21499))))

(declare-fun d!2378702 () Bool)

(declare-fun lt!2704423 () Regex!21499)

(assert (=> d!2378702 (validRegex!11803 lt!2704423)))

(declare-fun e!4696169 () Regex!21499)

(assert (=> d!2378702 (= lt!2704423 e!4696169)))

(declare-fun c!1462535 () Bool)

(assert (=> d!2378702 (= c!1462535 (or ((_ is EmptyExpr!21499) r!24602) ((_ is EmptyLang!21499) r!24602)))))

(assert (=> d!2378702 (validRegex!11803 r!24602)))

(assert (=> d!2378702 (= (derivativeStep!6527 r!24602 lt!2704170) lt!2704423)))

(declare-fun b!7963623 () Bool)

(assert (=> b!7963623 (= e!4696169 EmptyLang!21499)))

(declare-fun bm!738643 () Bool)

(declare-fun call!738648 () Regex!21499)

(declare-fun call!738651 () Regex!21499)

(assert (=> bm!738643 (= call!738648 call!738651)))

(declare-fun b!7963624 () Bool)

(declare-fun c!1462534 () Bool)

(assert (=> b!7963624 (= c!1462534 ((_ is Union!21499) r!24602))))

(declare-fun e!4696171 () Regex!21499)

(assert (=> b!7963624 (= e!4696170 e!4696171)))

(declare-fun b!7963625 () Bool)

(declare-fun call!738649 () Regex!21499)

(assert (=> b!7963625 (= e!4696171 (Union!21499 call!738649 call!738651))))

(declare-fun bm!738644 () Bool)

(declare-fun call!738650 () Regex!21499)

(assert (=> bm!738644 (= call!738650 call!738648)))

(declare-fun b!7963626 () Bool)

(declare-fun c!1462532 () Bool)

(assert (=> b!7963626 (= c!1462532 (nullable!9600 (regOne!43510 r!24602)))))

(declare-fun e!4696172 () Regex!21499)

(declare-fun e!4696173 () Regex!21499)

(assert (=> b!7963626 (= e!4696172 e!4696173)))

(declare-fun bm!738645 () Bool)

(assert (=> bm!738645 (= call!738649 (derivativeStep!6527 (ite c!1462534 (regOne!43511 r!24602) (regOne!43510 r!24602)) lt!2704170))))

(declare-fun b!7963627 () Bool)

(assert (=> b!7963627 (= e!4696172 (Concat!30498 call!738648 r!24602))))

(declare-fun b!7963628 () Bool)

(assert (=> b!7963628 (= e!4696171 e!4696172)))

(declare-fun c!1462533 () Bool)

(assert (=> b!7963628 (= c!1462533 ((_ is Star!21499) r!24602))))

(declare-fun b!7963629 () Bool)

(assert (=> b!7963629 (= e!4696173 (Union!21499 (Concat!30498 call!738650 (regTwo!43510 r!24602)) EmptyLang!21499))))

(declare-fun b!7963630 () Bool)

(assert (=> b!7963630 (= e!4696173 (Union!21499 (Concat!30498 call!738649 (regTwo!43510 r!24602)) call!738650))))

(declare-fun b!7963631 () Bool)

(assert (=> b!7963631 (= e!4696169 e!4696170)))

(declare-fun c!1462531 () Bool)

(assert (=> b!7963631 (= c!1462531 ((_ is ElementMatch!21499) r!24602))))

(declare-fun bm!738646 () Bool)

(assert (=> bm!738646 (= call!738651 (derivativeStep!6527 (ite c!1462534 (regTwo!43511 r!24602) (ite c!1462533 (reg!21828 r!24602) (ite c!1462532 (regTwo!43510 r!24602) (regOne!43510 r!24602)))) lt!2704170))))

(assert (= (and d!2378702 c!1462535) b!7963623))

(assert (= (and d!2378702 (not c!1462535)) b!7963631))

(assert (= (and b!7963631 c!1462531) b!7963622))

(assert (= (and b!7963631 (not c!1462531)) b!7963624))

(assert (= (and b!7963624 c!1462534) b!7963625))

(assert (= (and b!7963624 (not c!1462534)) b!7963628))

(assert (= (and b!7963628 c!1462533) b!7963627))

(assert (= (and b!7963628 (not c!1462533)) b!7963626))

(assert (= (and b!7963626 c!1462532) b!7963630))

(assert (= (and b!7963626 (not c!1462532)) b!7963629))

(assert (= (or b!7963630 b!7963629) bm!738644))

(assert (= (or b!7963627 bm!738644) bm!738643))

(assert (= (or b!7963625 bm!738643) bm!738646))

(assert (= (or b!7963625 b!7963630) bm!738645))

(declare-fun m!8343846 () Bool)

(assert (=> d!2378702 m!8343846))

(assert (=> d!2378702 m!8343518))

(declare-fun m!8343848 () Bool)

(assert (=> b!7963626 m!8343848))

(declare-fun m!8343850 () Bool)

(assert (=> bm!738645 m!8343850))

(declare-fun m!8343852 () Bool)

(assert (=> bm!738646 m!8343852))

(assert (=> b!7963254 d!2378702))

(declare-fun d!2378704 () Bool)

(declare-fun lt!2704426 () List!74728)

(assert (=> d!2378704 (= (++!18369 testedP!447 lt!2704426) input!7927)))

(declare-fun e!4696176 () List!74728)

(assert (=> d!2378704 (= lt!2704426 e!4696176)))

(declare-fun c!1462538 () Bool)

(assert (=> d!2378704 (= c!1462538 ((_ is Cons!74604) testedP!447))))

(assert (=> d!2378704 (>= (size!43435 input!7927) (size!43435 testedP!447))))

(assert (=> d!2378704 (= (getSuffix!3802 input!7927 testedP!447) lt!2704426)))

(declare-fun b!7963636 () Bool)

(assert (=> b!7963636 (= e!4696176 (getSuffix!3802 (tail!15788 input!7927) (t!390471 testedP!447)))))

(declare-fun b!7963637 () Bool)

(assert (=> b!7963637 (= e!4696176 input!7927)))

(assert (= (and d!2378704 c!1462538) b!7963636))

(assert (= (and d!2378704 (not c!1462538)) b!7963637))

(declare-fun m!8343854 () Bool)

(assert (=> d!2378704 m!8343854))

(assert (=> d!2378704 m!8343540))

(assert (=> d!2378704 m!8343538))

(assert (=> b!7963636 m!8343592))

(assert (=> b!7963636 m!8343592))

(declare-fun m!8343856 () Bool)

(assert (=> b!7963636 m!8343856))

(assert (=> b!7963260 d!2378704))

(declare-fun d!2378706 () Bool)

(assert (=> d!2378706 (= (isEmpty!42905 (_1!38633 (findLongestMatchInner!2280 r!24602 testedP!447 lt!2704166 lt!2704161 input!7927 lt!2704169))) ((_ is Nil!74604) (_1!38633 (findLongestMatchInner!2280 r!24602 testedP!447 lt!2704166 lt!2704161 input!7927 lt!2704169))))))

(assert (=> b!7963260 d!2378706))

(declare-fun d!2378708 () Bool)

(declare-fun lt!2704429 () Int)

(assert (=> d!2378708 (>= lt!2704429 0)))

(declare-fun e!4696179 () Int)

(assert (=> d!2378708 (= lt!2704429 e!4696179)))

(declare-fun c!1462541 () Bool)

(assert (=> d!2378708 (= c!1462541 ((_ is Nil!74604) testedP!447))))

(assert (=> d!2378708 (= (size!43435 testedP!447) lt!2704429)))

(declare-fun b!7963642 () Bool)

(assert (=> b!7963642 (= e!4696179 0)))

(declare-fun b!7963643 () Bool)

(assert (=> b!7963643 (= e!4696179 (+ 1 (size!43435 (t!390471 testedP!447))))))

(assert (= (and d!2378708 c!1462541) b!7963642))

(assert (= (and d!2378708 (not c!1462541)) b!7963643))

(declare-fun m!8343858 () Bool)

(assert (=> b!7963643 m!8343858))

(assert (=> b!7963260 d!2378708))

(declare-fun d!2378710 () Bool)

(declare-fun lt!2704430 () Int)

(assert (=> d!2378710 (>= lt!2704430 0)))

(declare-fun e!4696180 () Int)

(assert (=> d!2378710 (= lt!2704430 e!4696180)))

(declare-fun c!1462542 () Bool)

(assert (=> d!2378710 (= c!1462542 ((_ is Nil!74604) input!7927))))

(assert (=> d!2378710 (= (size!43435 input!7927) lt!2704430)))

(declare-fun b!7963644 () Bool)

(assert (=> b!7963644 (= e!4696180 0)))

(declare-fun b!7963645 () Bool)

(assert (=> b!7963645 (= e!4696180 (+ 1 (size!43435 (t!390471 input!7927))))))

(assert (= (and d!2378710 c!1462542) b!7963644))

(assert (= (and d!2378710 (not c!1462542)) b!7963645))

(declare-fun m!8343860 () Bool)

(assert (=> b!7963645 m!8343860))

(assert (=> b!7963260 d!2378710))

(declare-fun b!7963646 () Bool)

(declare-fun e!4696181 () tuple2!70660)

(declare-fun e!4696182 () tuple2!70660)

(assert (=> b!7963646 (= e!4696181 e!4696182)))

(declare-fun lt!2704431 () tuple2!70660)

(declare-fun call!738653 () tuple2!70660)

(assert (=> b!7963646 (= lt!2704431 call!738653)))

(declare-fun c!1462548 () Bool)

(assert (=> b!7963646 (= c!1462548 (isEmpty!42905 (_1!38633 lt!2704431)))))

(declare-fun b!7963647 () Bool)

(declare-fun e!4696187 () Bool)

(declare-fun e!4696183 () Bool)

(assert (=> b!7963647 (= e!4696187 e!4696183)))

(declare-fun res!3155925 () Bool)

(assert (=> b!7963647 (=> res!3155925 e!4696183)))

(declare-fun lt!2704434 () tuple2!70660)

(assert (=> b!7963647 (= res!3155925 (isEmpty!42905 (_1!38633 lt!2704434)))))

(declare-fun b!7963648 () Bool)

(declare-fun e!4696184 () Unit!170074)

(declare-fun Unit!170087 () Unit!170074)

(assert (=> b!7963648 (= e!4696184 Unit!170087)))

(declare-fun lt!2704455 () Unit!170074)

(declare-fun call!738657 () Unit!170074)

(assert (=> b!7963648 (= lt!2704455 call!738657)))

(declare-fun call!738659 () Bool)

(assert (=> b!7963648 call!738659))

(declare-fun lt!2704451 () Unit!170074)

(assert (=> b!7963648 (= lt!2704451 lt!2704455)))

(declare-fun lt!2704436 () Unit!170074)

(declare-fun call!738655 () Unit!170074)

(assert (=> b!7963648 (= lt!2704436 call!738655)))

(assert (=> b!7963648 (= input!7927 testedP!447)))

(declare-fun lt!2704441 () Unit!170074)

(assert (=> b!7963648 (= lt!2704441 lt!2704436)))

(assert (=> b!7963648 false))

(declare-fun call!738658 () List!74728)

(declare-fun lt!2704448 () List!74728)

(declare-fun call!738652 () Regex!21499)

(declare-fun bm!738647 () Bool)

(assert (=> bm!738647 (= call!738653 (findLongestMatchInner!2280 call!738652 lt!2704448 (+ lt!2704166 1) call!738658 input!7927 lt!2704169))))

(declare-fun bm!738648 () Bool)

(assert (=> bm!738648 (= call!738657 (lemmaIsPrefixRefl!4067 input!7927 input!7927))))

(declare-fun b!7963649 () Bool)

(assert (=> b!7963649 (= e!4696182 lt!2704431)))

(declare-fun d!2378712 () Bool)

(assert (=> d!2378712 e!4696187))

(declare-fun res!3155924 () Bool)

(assert (=> d!2378712 (=> (not res!3155924) (not e!4696187))))

(assert (=> d!2378712 (= res!3155924 (= (++!18369 (_1!38633 lt!2704434) (_2!38633 lt!2704434)) input!7927))))

(declare-fun e!4696188 () tuple2!70660)

(assert (=> d!2378712 (= lt!2704434 e!4696188)))

(declare-fun c!1462544 () Bool)

(assert (=> d!2378712 (= c!1462544 (lostCause!1978 r!24602))))

(declare-fun lt!2704452 () Unit!170074)

(declare-fun Unit!170088 () Unit!170074)

(assert (=> d!2378712 (= lt!2704452 Unit!170088)))

(assert (=> d!2378712 (= (getSuffix!3802 input!7927 testedP!447) lt!2704161)))

(declare-fun lt!2704447 () Unit!170074)

(declare-fun lt!2704435 () Unit!170074)

(assert (=> d!2378712 (= lt!2704447 lt!2704435)))

(declare-fun lt!2704439 () List!74728)

(assert (=> d!2378712 (= lt!2704161 lt!2704439)))

(assert (=> d!2378712 (= lt!2704435 (lemmaSamePrefixThenSameSuffix!2994 testedP!447 lt!2704161 testedP!447 lt!2704439 input!7927))))

(assert (=> d!2378712 (= lt!2704439 (getSuffix!3802 input!7927 testedP!447))))

(declare-fun lt!2704443 () Unit!170074)

(declare-fun lt!2704437 () Unit!170074)

(assert (=> d!2378712 (= lt!2704443 lt!2704437)))

(assert (=> d!2378712 (isPrefix!6599 testedP!447 (++!18369 testedP!447 lt!2704161))))

(assert (=> d!2378712 (= lt!2704437 (lemmaConcatTwoListThenFirstIsPrefix!3856 testedP!447 lt!2704161))))

(assert (=> d!2378712 (validRegex!11803 r!24602)))

(assert (=> d!2378712 (= (findLongestMatchInner!2280 r!24602 testedP!447 lt!2704166 lt!2704161 input!7927 lt!2704169) lt!2704434)))

(declare-fun bm!738649 () Bool)

(assert (=> bm!738649 (= call!738659 (isPrefix!6599 input!7927 input!7927))))

(declare-fun b!7963650 () Bool)

(assert (=> b!7963650 (= e!4696188 (tuple2!70661 Nil!74604 input!7927))))

(declare-fun b!7963651 () Bool)

(declare-fun e!4696186 () tuple2!70660)

(assert (=> b!7963651 (= e!4696186 (tuple2!70661 testedP!447 Nil!74604))))

(declare-fun b!7963652 () Bool)

(assert (=> b!7963652 (= e!4696182 (tuple2!70661 testedP!447 lt!2704161))))

(declare-fun b!7963653 () Bool)

(assert (=> b!7963653 (= e!4696186 (tuple2!70661 Nil!74604 input!7927))))

(declare-fun b!7963654 () Bool)

(assert (=> b!7963654 (= e!4696183 (>= (size!43435 (_1!38633 lt!2704434)) (size!43435 testedP!447)))))

(declare-fun bm!738650 () Bool)

(declare-fun call!738654 () C!43336)

(assert (=> bm!738650 (= call!738652 (derivativeStep!6527 r!24602 call!738654))))

(declare-fun b!7963655 () Bool)

(declare-fun e!4696185 () tuple2!70660)

(assert (=> b!7963655 (= e!4696188 e!4696185)))

(declare-fun c!1462546 () Bool)

(assert (=> b!7963655 (= c!1462546 (= lt!2704166 lt!2704169))))

(declare-fun bm!738651 () Bool)

(assert (=> bm!738651 (= call!738655 (lemmaIsPrefixSameLengthThenSameList!1647 input!7927 testedP!447 input!7927))))

(declare-fun bm!738652 () Bool)

(declare-fun call!738656 () Bool)

(assert (=> bm!738652 (= call!738656 (nullable!9600 r!24602))))

(declare-fun bm!738653 () Bool)

(assert (=> bm!738653 (= call!738654 (head!16251 lt!2704161))))

(declare-fun b!7963656 () Bool)

(declare-fun Unit!170089 () Unit!170074)

(assert (=> b!7963656 (= e!4696184 Unit!170089)))

(declare-fun b!7963657 () Bool)

(declare-fun c!1462543 () Bool)

(assert (=> b!7963657 (= c!1462543 call!738656)))

(declare-fun lt!2704438 () Unit!170074)

(declare-fun lt!2704450 () Unit!170074)

(assert (=> b!7963657 (= lt!2704438 lt!2704450)))

(declare-fun lt!2704458 () List!74728)

(declare-fun lt!2704446 () C!43336)

(assert (=> b!7963657 (= (++!18369 (++!18369 testedP!447 (Cons!74604 lt!2704446 Nil!74604)) lt!2704458) input!7927)))

(assert (=> b!7963657 (= lt!2704450 (lemmaMoveElementToOtherListKeepsConcatEq!3534 testedP!447 lt!2704446 lt!2704458 input!7927))))

(assert (=> b!7963657 (= lt!2704458 (tail!15788 lt!2704161))))

(assert (=> b!7963657 (= lt!2704446 (head!16251 lt!2704161))))

(declare-fun lt!2704454 () Unit!170074)

(declare-fun lt!2704453 () Unit!170074)

(assert (=> b!7963657 (= lt!2704454 lt!2704453)))

(assert (=> b!7963657 (isPrefix!6599 (++!18369 testedP!447 (Cons!74604 (head!16251 (getSuffix!3802 input!7927 testedP!447)) Nil!74604)) input!7927)))

(assert (=> b!7963657 (= lt!2704453 (lemmaAddHeadSuffixToPrefixStillPrefix!1326 testedP!447 input!7927))))

(declare-fun lt!2704442 () Unit!170074)

(declare-fun lt!2704456 () Unit!170074)

(assert (=> b!7963657 (= lt!2704442 lt!2704456)))

(assert (=> b!7963657 (= lt!2704456 (lemmaAddHeadSuffixToPrefixStillPrefix!1326 testedP!447 input!7927))))

(assert (=> b!7963657 (= lt!2704448 (++!18369 testedP!447 (Cons!74604 (head!16251 lt!2704161) Nil!74604)))))

(declare-fun lt!2704444 () Unit!170074)

(assert (=> b!7963657 (= lt!2704444 e!4696184)))

(declare-fun c!1462545 () Bool)

(assert (=> b!7963657 (= c!1462545 (= (size!43435 testedP!447) (size!43435 input!7927)))))

(declare-fun lt!2704457 () Unit!170074)

(declare-fun lt!2704445 () Unit!170074)

(assert (=> b!7963657 (= lt!2704457 lt!2704445)))

(assert (=> b!7963657 (<= (size!43435 testedP!447) (size!43435 input!7927))))

(assert (=> b!7963657 (= lt!2704445 (lemmaIsPrefixThenSmallerEqSize!1116 testedP!447 input!7927))))

(assert (=> b!7963657 (= e!4696185 e!4696181)))

(declare-fun b!7963658 () Bool)

(assert (=> b!7963658 (= e!4696181 call!738653)))

(declare-fun b!7963659 () Bool)

(declare-fun c!1462547 () Bool)

(assert (=> b!7963659 (= c!1462547 call!738656)))

(declare-fun lt!2704449 () Unit!170074)

(declare-fun lt!2704440 () Unit!170074)

(assert (=> b!7963659 (= lt!2704449 lt!2704440)))

(assert (=> b!7963659 (= input!7927 testedP!447)))

(assert (=> b!7963659 (= lt!2704440 call!738655)))

(declare-fun lt!2704433 () Unit!170074)

(declare-fun lt!2704432 () Unit!170074)

(assert (=> b!7963659 (= lt!2704433 lt!2704432)))

(assert (=> b!7963659 call!738659))

(assert (=> b!7963659 (= lt!2704432 call!738657)))

(assert (=> b!7963659 (= e!4696185 e!4696186)))

(declare-fun bm!738654 () Bool)

(assert (=> bm!738654 (= call!738658 (tail!15788 lt!2704161))))

(assert (= (and d!2378712 c!1462544) b!7963650))

(assert (= (and d!2378712 (not c!1462544)) b!7963655))

(assert (= (and b!7963655 c!1462546) b!7963659))

(assert (= (and b!7963655 (not c!1462546)) b!7963657))

(assert (= (and b!7963659 c!1462547) b!7963651))

(assert (= (and b!7963659 (not c!1462547)) b!7963653))

(assert (= (and b!7963657 c!1462545) b!7963648))

(assert (= (and b!7963657 (not c!1462545)) b!7963656))

(assert (= (and b!7963657 c!1462543) b!7963646))

(assert (= (and b!7963657 (not c!1462543)) b!7963658))

(assert (= (and b!7963646 c!1462548) b!7963652))

(assert (= (and b!7963646 (not c!1462548)) b!7963649))

(assert (= (or b!7963646 b!7963658) bm!738653))

(assert (= (or b!7963646 b!7963658) bm!738654))

(assert (= (or b!7963646 b!7963658) bm!738650))

(assert (= (or b!7963646 b!7963658) bm!738647))

(assert (= (or b!7963659 b!7963657) bm!738652))

(assert (= (or b!7963659 b!7963648) bm!738651))

(assert (= (or b!7963659 b!7963648) bm!738648))

(assert (= (or b!7963659 b!7963648) bm!738649))

(assert (= (and d!2378712 res!3155924) b!7963647))

(assert (= (and b!7963647 (not res!3155925)) b!7963654))

(declare-fun m!8343862 () Bool)

(assert (=> bm!738650 m!8343862))

(assert (=> bm!738653 m!8343558))

(declare-fun m!8343864 () Bool)

(assert (=> b!7963657 m!8343864))

(assert (=> b!7963657 m!8343544))

(assert (=> b!7963657 m!8343652))

(declare-fun m!8343866 () Bool)

(assert (=> b!7963657 m!8343866))

(declare-fun m!8343868 () Bool)

(assert (=> b!7963657 m!8343868))

(assert (=> b!7963657 m!8343542))

(assert (=> b!7963657 m!8343656))

(assert (=> b!7963657 m!8343652))

(assert (=> b!7963657 m!8343658))

(assert (=> b!7963657 m!8343538))

(assert (=> b!7963657 m!8343562))

(declare-fun m!8343870 () Bool)

(assert (=> b!7963657 m!8343870))

(assert (=> b!7963657 m!8343540))

(assert (=> b!7963657 m!8343552))

(assert (=> b!7963657 m!8343542))

(assert (=> b!7963657 m!8343558))

(assert (=> b!7963657 m!8343866))

(declare-fun m!8343872 () Bool)

(assert (=> b!7963654 m!8343872))

(assert (=> b!7963654 m!8343538))

(assert (=> bm!738649 m!8343528))

(declare-fun m!8343874 () Bool)

(assert (=> bm!738647 m!8343874))

(declare-fun m!8343876 () Bool)

(assert (=> b!7963646 m!8343876))

(assert (=> bm!738654 m!8343544))

(declare-fun m!8343878 () Bool)

(assert (=> b!7963647 m!8343878))

(assert (=> bm!738648 m!8343526))

(assert (=> bm!738651 m!8343530))

(assert (=> d!2378712 m!8343518))

(declare-fun m!8343880 () Bool)

(assert (=> d!2378712 m!8343880))

(declare-fun m!8343882 () Bool)

(assert (=> d!2378712 m!8343882))

(assert (=> d!2378712 m!8343542))

(declare-fun m!8343884 () Bool)

(assert (=> d!2378712 m!8343884))

(declare-fun m!8343886 () Bool)

(assert (=> d!2378712 m!8343886))

(assert (=> d!2378712 m!8343884))

(declare-fun m!8343888 () Bool)

(assert (=> d!2378712 m!8343888))

(declare-fun m!8343890 () Bool)

(assert (=> d!2378712 m!8343890))

(assert (=> bm!738652 m!8343554))

(assert (=> b!7963260 d!2378712))

(declare-fun d!2378714 () Bool)

(assert (=> d!2378714 (isPrefix!6599 input!7927 input!7927)))

(declare-fun lt!2704461 () Unit!170074)

(declare-fun choose!60017 (List!74728 List!74728) Unit!170074)

(assert (=> d!2378714 (= lt!2704461 (choose!60017 input!7927 input!7927))))

(assert (=> d!2378714 (= (lemmaIsPrefixRefl!4067 input!7927 input!7927) lt!2704461)))

(declare-fun bs!1969818 () Bool)

(assert (= bs!1969818 d!2378714))

(assert (=> bs!1969818 m!8343528))

(declare-fun m!8343892 () Bool)

(assert (=> bs!1969818 m!8343892))

(assert (=> b!7963265 d!2378714))

(declare-fun d!2378716 () Bool)

(declare-fun e!4696189 () Bool)

(assert (=> d!2378716 e!4696189))

(declare-fun res!3155926 () Bool)

(assert (=> d!2378716 (=> res!3155926 e!4696189)))

(declare-fun lt!2704462 () Bool)

(assert (=> d!2378716 (= res!3155926 (not lt!2704462))))

(declare-fun e!4696191 () Bool)

(assert (=> d!2378716 (= lt!2704462 e!4696191)))

(declare-fun res!3155927 () Bool)

(assert (=> d!2378716 (=> res!3155927 e!4696191)))

(assert (=> d!2378716 (= res!3155927 ((_ is Nil!74604) input!7927))))

(assert (=> d!2378716 (= (isPrefix!6599 input!7927 input!7927) lt!2704462)))

(declare-fun b!7963660 () Bool)

(declare-fun e!4696190 () Bool)

(assert (=> b!7963660 (= e!4696191 e!4696190)))

(declare-fun res!3155928 () Bool)

(assert (=> b!7963660 (=> (not res!3155928) (not e!4696190))))

(assert (=> b!7963660 (= res!3155928 (not ((_ is Nil!74604) input!7927)))))

(declare-fun b!7963661 () Bool)

(declare-fun res!3155929 () Bool)

(assert (=> b!7963661 (=> (not res!3155929) (not e!4696190))))

(assert (=> b!7963661 (= res!3155929 (= (head!16251 input!7927) (head!16251 input!7927)))))

(declare-fun b!7963663 () Bool)

(assert (=> b!7963663 (= e!4696189 (>= (size!43435 input!7927) (size!43435 input!7927)))))

(declare-fun b!7963662 () Bool)

(assert (=> b!7963662 (= e!4696190 (isPrefix!6599 (tail!15788 input!7927) (tail!15788 input!7927)))))

(assert (= (and d!2378716 (not res!3155927)) b!7963660))

(assert (= (and b!7963660 res!3155928) b!7963661))

(assert (= (and b!7963661 res!3155929) b!7963662))

(assert (= (and d!2378716 (not res!3155926)) b!7963663))

(assert (=> b!7963661 m!8343588))

(assert (=> b!7963661 m!8343588))

(assert (=> b!7963663 m!8343540))

(assert (=> b!7963663 m!8343540))

(assert (=> b!7963662 m!8343592))

(assert (=> b!7963662 m!8343592))

(assert (=> b!7963662 m!8343592))

(assert (=> b!7963662 m!8343592))

(declare-fun m!8343894 () Bool)

(assert (=> b!7963662 m!8343894))

(assert (=> b!7963265 d!2378716))

(declare-fun d!2378718 () Bool)

(assert (=> d!2378718 (= input!7927 testedP!447)))

(declare-fun lt!2704465 () Unit!170074)

(declare-fun choose!60018 (List!74728 List!74728 List!74728) Unit!170074)

(assert (=> d!2378718 (= lt!2704465 (choose!60018 input!7927 testedP!447 input!7927))))

(assert (=> d!2378718 (isPrefix!6599 input!7927 input!7927)))

(assert (=> d!2378718 (= (lemmaIsPrefixSameLengthThenSameList!1647 input!7927 testedP!447 input!7927) lt!2704465)))

(declare-fun bs!1969819 () Bool)

(assert (= bs!1969819 d!2378718))

(declare-fun m!8343896 () Bool)

(assert (=> bs!1969819 m!8343896))

(assert (=> bs!1969819 m!8343528))

(assert (=> b!7963265 d!2378718))

(declare-fun b!7963664 () Bool)

(declare-fun e!4696194 () Bool)

(declare-fun e!4696193 () Bool)

(assert (=> b!7963664 (= e!4696194 e!4696193)))

(declare-fun c!1462549 () Bool)

(assert (=> b!7963664 (= c!1462549 ((_ is Star!21499) r!24602))))

(declare-fun bm!738655 () Bool)

(declare-fun call!738660 () Bool)

(declare-fun c!1462550 () Bool)

(assert (=> bm!738655 (= call!738660 (validRegex!11803 (ite c!1462550 (regOne!43511 r!24602) (regOne!43510 r!24602))))))

(declare-fun b!7963665 () Bool)

(declare-fun e!4696197 () Bool)

(declare-fun call!738661 () Bool)

(assert (=> b!7963665 (= e!4696197 call!738661)))

(declare-fun b!7963666 () Bool)

(declare-fun e!4696198 () Bool)

(declare-fun call!738662 () Bool)

(assert (=> b!7963666 (= e!4696198 call!738662)))

(declare-fun bm!738657 () Bool)

(assert (=> bm!738657 (= call!738662 (validRegex!11803 (ite c!1462549 (reg!21828 r!24602) (ite c!1462550 (regTwo!43511 r!24602) (regTwo!43510 r!24602)))))))

(declare-fun b!7963667 () Bool)

(declare-fun e!4696196 () Bool)

(assert (=> b!7963667 (= e!4696196 call!738661)))

(declare-fun b!7963668 () Bool)

(declare-fun res!3155931 () Bool)

(assert (=> b!7963668 (=> (not res!3155931) (not e!4696196))))

(assert (=> b!7963668 (= res!3155931 call!738660)))

(declare-fun e!4696192 () Bool)

(assert (=> b!7963668 (= e!4696192 e!4696196)))

(declare-fun b!7963669 () Bool)

(declare-fun res!3155933 () Bool)

(declare-fun e!4696195 () Bool)

(assert (=> b!7963669 (=> res!3155933 e!4696195)))

(assert (=> b!7963669 (= res!3155933 (not ((_ is Concat!30498) r!24602)))))

(assert (=> b!7963669 (= e!4696192 e!4696195)))

(declare-fun b!7963670 () Bool)

(assert (=> b!7963670 (= e!4696195 e!4696197)))

(declare-fun res!3155932 () Bool)

(assert (=> b!7963670 (=> (not res!3155932) (not e!4696197))))

(assert (=> b!7963670 (= res!3155932 call!738660)))

(declare-fun d!2378720 () Bool)

(declare-fun res!3155934 () Bool)

(assert (=> d!2378720 (=> res!3155934 e!4696194)))

(assert (=> d!2378720 (= res!3155934 ((_ is ElementMatch!21499) r!24602))))

(assert (=> d!2378720 (= (validRegex!11803 r!24602) e!4696194)))

(declare-fun bm!738656 () Bool)

(assert (=> bm!738656 (= call!738661 call!738662)))

(declare-fun b!7963671 () Bool)

(assert (=> b!7963671 (= e!4696193 e!4696192)))

(assert (=> b!7963671 (= c!1462550 ((_ is Union!21499) r!24602))))

(declare-fun b!7963672 () Bool)

(assert (=> b!7963672 (= e!4696193 e!4696198)))

(declare-fun res!3155930 () Bool)

(assert (=> b!7963672 (= res!3155930 (not (nullable!9600 (reg!21828 r!24602))))))

(assert (=> b!7963672 (=> (not res!3155930) (not e!4696198))))

(assert (= (and d!2378720 (not res!3155934)) b!7963664))

(assert (= (and b!7963664 c!1462549) b!7963672))

(assert (= (and b!7963664 (not c!1462549)) b!7963671))

(assert (= (and b!7963672 res!3155930) b!7963666))

(assert (= (and b!7963671 c!1462550) b!7963668))

(assert (= (and b!7963671 (not c!1462550)) b!7963669))

(assert (= (and b!7963668 res!3155931) b!7963667))

(assert (= (and b!7963669 (not res!3155933)) b!7963670))

(assert (= (and b!7963670 res!3155932) b!7963665))

(assert (= (or b!7963667 b!7963665) bm!738656))

(assert (= (or b!7963668 b!7963670) bm!738655))

(assert (= (or b!7963666 bm!738656) bm!738657))

(declare-fun m!8343898 () Bool)

(assert (=> bm!738655 m!8343898))

(declare-fun m!8343900 () Bool)

(assert (=> bm!738657 m!8343900))

(declare-fun m!8343902 () Bool)

(assert (=> b!7963672 m!8343902))

(assert (=> b!7963255 d!2378720))

(declare-fun d!2378722 () Bool)

(declare-fun lt!2704466 () Regex!21499)

(assert (=> d!2378722 (validRegex!11803 lt!2704466)))

(declare-fun e!4696199 () Regex!21499)

(assert (=> d!2378722 (= lt!2704466 e!4696199)))

(declare-fun c!1462551 () Bool)

(assert (=> d!2378722 (= c!1462551 ((_ is Cons!74604) lt!2704163))))

(assert (=> d!2378722 (validRegex!11803 baseR!116)))

(assert (=> d!2378722 (= (derivative!685 baseR!116 lt!2704163) lt!2704466)))

(declare-fun b!7963673 () Bool)

(assert (=> b!7963673 (= e!4696199 (derivative!685 (derivativeStep!6527 baseR!116 (h!81052 lt!2704163)) (t!390471 lt!2704163)))))

(declare-fun b!7963674 () Bool)

(assert (=> b!7963674 (= e!4696199 baseR!116)))

(assert (= (and d!2378722 c!1462551) b!7963673))

(assert (= (and d!2378722 (not c!1462551)) b!7963674))

(declare-fun m!8343904 () Bool)

(assert (=> d!2378722 m!8343904))

(assert (=> d!2378722 m!8343532))

(declare-fun m!8343906 () Bool)

(assert (=> b!7963673 m!8343906))

(assert (=> b!7963673 m!8343906))

(declare-fun m!8343908 () Bool)

(assert (=> b!7963673 m!8343908))

(assert (=> b!7963255 d!2378722))

(declare-fun d!2378724 () Bool)

(assert (=> d!2378724 (= (derivative!685 baseR!116 (++!18369 testedP!447 (Cons!74604 lt!2704170 Nil!74604))) (derivativeStep!6527 r!24602 lt!2704170))))

(declare-fun lt!2704469 () Unit!170074)

(declare-fun choose!60019 (Regex!21499 Regex!21499 List!74728 C!43336) Unit!170074)

(assert (=> d!2378724 (= lt!2704469 (choose!60019 baseR!116 r!24602 testedP!447 lt!2704170))))

(assert (=> d!2378724 (validRegex!11803 baseR!116)))

(assert (=> d!2378724 (= (lemmaDerivativeOnLWithANewCharIsANewDerivativeStep!211 baseR!116 r!24602 testedP!447 lt!2704170) lt!2704469)))

(declare-fun bs!1969820 () Bool)

(assert (= bs!1969820 d!2378724))

(assert (=> bs!1969820 m!8343560))

(declare-fun m!8343910 () Bool)

(assert (=> bs!1969820 m!8343910))

(declare-fun m!8343912 () Bool)

(assert (=> bs!1969820 m!8343912))

(assert (=> bs!1969820 m!8343532))

(assert (=> bs!1969820 m!8343560))

(assert (=> bs!1969820 m!8343550))

(assert (=> b!7963255 d!2378724))

(declare-fun b!7963679 () Bool)

(declare-fun e!4696202 () Bool)

(declare-fun tp!2373049 () Bool)

(assert (=> b!7963679 (= e!4696202 (and tp_is_empty!53541 tp!2373049))))

(assert (=> b!7963262 (= tp!2372980 e!4696202)))

(assert (= (and b!7963262 ((_ is Cons!74604) (t!390471 testedP!447))) b!7963679))

(declare-fun b!7963691 () Bool)

(declare-fun e!4696205 () Bool)

(declare-fun tp!2373064 () Bool)

(declare-fun tp!2373063 () Bool)

(assert (=> b!7963691 (= e!4696205 (and tp!2373064 tp!2373063))))

(declare-fun b!7963690 () Bool)

(assert (=> b!7963690 (= e!4696205 tp_is_empty!53541)))

(assert (=> b!7963252 (= tp!2372972 e!4696205)))

(declare-fun b!7963693 () Bool)

(declare-fun tp!2373061 () Bool)

(declare-fun tp!2373062 () Bool)

(assert (=> b!7963693 (= e!4696205 (and tp!2373061 tp!2373062))))

(declare-fun b!7963692 () Bool)

(declare-fun tp!2373060 () Bool)

(assert (=> b!7963692 (= e!4696205 tp!2373060)))

(assert (= (and b!7963252 ((_ is ElementMatch!21499) (reg!21828 baseR!116))) b!7963690))

(assert (= (and b!7963252 ((_ is Concat!30498) (reg!21828 baseR!116))) b!7963691))

(assert (= (and b!7963252 ((_ is Star!21499) (reg!21828 baseR!116))) b!7963692))

(assert (= (and b!7963252 ((_ is Union!21499) (reg!21828 baseR!116))) b!7963693))

(declare-fun b!7963695 () Bool)

(declare-fun e!4696206 () Bool)

(declare-fun tp!2373069 () Bool)

(declare-fun tp!2373068 () Bool)

(assert (=> b!7963695 (= e!4696206 (and tp!2373069 tp!2373068))))

(declare-fun b!7963694 () Bool)

(assert (=> b!7963694 (= e!4696206 tp_is_empty!53541)))

(assert (=> b!7963259 (= tp!2372973 e!4696206)))

(declare-fun b!7963697 () Bool)

(declare-fun tp!2373066 () Bool)

(declare-fun tp!2373067 () Bool)

(assert (=> b!7963697 (= e!4696206 (and tp!2373066 tp!2373067))))

(declare-fun b!7963696 () Bool)

(declare-fun tp!2373065 () Bool)

(assert (=> b!7963696 (= e!4696206 tp!2373065)))

(assert (= (and b!7963259 ((_ is ElementMatch!21499) (regOne!43510 r!24602))) b!7963694))

(assert (= (and b!7963259 ((_ is Concat!30498) (regOne!43510 r!24602))) b!7963695))

(assert (= (and b!7963259 ((_ is Star!21499) (regOne!43510 r!24602))) b!7963696))

(assert (= (and b!7963259 ((_ is Union!21499) (regOne!43510 r!24602))) b!7963697))

(declare-fun b!7963699 () Bool)

(declare-fun e!4696207 () Bool)

(declare-fun tp!2373074 () Bool)

(declare-fun tp!2373073 () Bool)

(assert (=> b!7963699 (= e!4696207 (and tp!2373074 tp!2373073))))

(declare-fun b!7963698 () Bool)

(assert (=> b!7963698 (= e!4696207 tp_is_empty!53541)))

(assert (=> b!7963259 (= tp!2372982 e!4696207)))

(declare-fun b!7963701 () Bool)

(declare-fun tp!2373071 () Bool)

(declare-fun tp!2373072 () Bool)

(assert (=> b!7963701 (= e!4696207 (and tp!2373071 tp!2373072))))

(declare-fun b!7963700 () Bool)

(declare-fun tp!2373070 () Bool)

(assert (=> b!7963700 (= e!4696207 tp!2373070)))

(assert (= (and b!7963259 ((_ is ElementMatch!21499) (regTwo!43510 r!24602))) b!7963698))

(assert (= (and b!7963259 ((_ is Concat!30498) (regTwo!43510 r!24602))) b!7963699))

(assert (= (and b!7963259 ((_ is Star!21499) (regTwo!43510 r!24602))) b!7963700))

(assert (= (and b!7963259 ((_ is Union!21499) (regTwo!43510 r!24602))) b!7963701))

(declare-fun b!7963703 () Bool)

(declare-fun e!4696208 () Bool)

(declare-fun tp!2373079 () Bool)

(declare-fun tp!2373078 () Bool)

(assert (=> b!7963703 (= e!4696208 (and tp!2373079 tp!2373078))))

(declare-fun b!7963702 () Bool)

(assert (=> b!7963702 (= e!4696208 tp_is_empty!53541)))

(assert (=> b!7963249 (= tp!2372978 e!4696208)))

(declare-fun b!7963705 () Bool)

(declare-fun tp!2373076 () Bool)

(declare-fun tp!2373077 () Bool)

(assert (=> b!7963705 (= e!4696208 (and tp!2373076 tp!2373077))))

(declare-fun b!7963704 () Bool)

(declare-fun tp!2373075 () Bool)

(assert (=> b!7963704 (= e!4696208 tp!2373075)))

(assert (= (and b!7963249 ((_ is ElementMatch!21499) (reg!21828 r!24602))) b!7963702))

(assert (= (and b!7963249 ((_ is Concat!30498) (reg!21828 r!24602))) b!7963703))

(assert (= (and b!7963249 ((_ is Star!21499) (reg!21828 r!24602))) b!7963704))

(assert (= (and b!7963249 ((_ is Union!21499) (reg!21828 r!24602))) b!7963705))

(declare-fun b!7963707 () Bool)

(declare-fun e!4696209 () Bool)

(declare-fun tp!2373084 () Bool)

(declare-fun tp!2373083 () Bool)

(assert (=> b!7963707 (= e!4696209 (and tp!2373084 tp!2373083))))

(declare-fun b!7963706 () Bool)

(assert (=> b!7963706 (= e!4696209 tp_is_empty!53541)))

(assert (=> b!7963266 (= tp!2372974 e!4696209)))

(declare-fun b!7963709 () Bool)

(declare-fun tp!2373081 () Bool)

(declare-fun tp!2373082 () Bool)

(assert (=> b!7963709 (= e!4696209 (and tp!2373081 tp!2373082))))

(declare-fun b!7963708 () Bool)

(declare-fun tp!2373080 () Bool)

(assert (=> b!7963708 (= e!4696209 tp!2373080)))

(assert (= (and b!7963266 ((_ is ElementMatch!21499) (regOne!43510 baseR!116))) b!7963706))

(assert (= (and b!7963266 ((_ is Concat!30498) (regOne!43510 baseR!116))) b!7963707))

(assert (= (and b!7963266 ((_ is Star!21499) (regOne!43510 baseR!116))) b!7963708))

(assert (= (and b!7963266 ((_ is Union!21499) (regOne!43510 baseR!116))) b!7963709))

(declare-fun b!7963711 () Bool)

(declare-fun e!4696210 () Bool)

(declare-fun tp!2373089 () Bool)

(declare-fun tp!2373088 () Bool)

(assert (=> b!7963711 (= e!4696210 (and tp!2373089 tp!2373088))))

(declare-fun b!7963710 () Bool)

(assert (=> b!7963710 (= e!4696210 tp_is_empty!53541)))

(assert (=> b!7963266 (= tp!2372979 e!4696210)))

(declare-fun b!7963713 () Bool)

(declare-fun tp!2373086 () Bool)

(declare-fun tp!2373087 () Bool)

(assert (=> b!7963713 (= e!4696210 (and tp!2373086 tp!2373087))))

(declare-fun b!7963712 () Bool)

(declare-fun tp!2373085 () Bool)

(assert (=> b!7963712 (= e!4696210 tp!2373085)))

(assert (= (and b!7963266 ((_ is ElementMatch!21499) (regTwo!43510 baseR!116))) b!7963710))

(assert (= (and b!7963266 ((_ is Concat!30498) (regTwo!43510 baseR!116))) b!7963711))

(assert (= (and b!7963266 ((_ is Star!21499) (regTwo!43510 baseR!116))) b!7963712))

(assert (= (and b!7963266 ((_ is Union!21499) (regTwo!43510 baseR!116))) b!7963713))

(declare-fun b!7963714 () Bool)

(declare-fun e!4696211 () Bool)

(declare-fun tp!2373090 () Bool)

(assert (=> b!7963714 (= e!4696211 (and tp_is_empty!53541 tp!2373090))))

(assert (=> b!7963250 (= tp!2372976 e!4696211)))

(assert (= (and b!7963250 ((_ is Cons!74604) (t!390471 input!7927))) b!7963714))

(declare-fun b!7963716 () Bool)

(declare-fun e!4696212 () Bool)

(declare-fun tp!2373095 () Bool)

(declare-fun tp!2373094 () Bool)

(assert (=> b!7963716 (= e!4696212 (and tp!2373095 tp!2373094))))

(declare-fun b!7963715 () Bool)

(assert (=> b!7963715 (= e!4696212 tp_is_empty!53541)))

(assert (=> b!7963256 (= tp!2372977 e!4696212)))

(declare-fun b!7963718 () Bool)

(declare-fun tp!2373092 () Bool)

(declare-fun tp!2373093 () Bool)

(assert (=> b!7963718 (= e!4696212 (and tp!2373092 tp!2373093))))

(declare-fun b!7963717 () Bool)

(declare-fun tp!2373091 () Bool)

(assert (=> b!7963717 (= e!4696212 tp!2373091)))

(assert (= (and b!7963256 ((_ is ElementMatch!21499) (regOne!43511 baseR!116))) b!7963715))

(assert (= (and b!7963256 ((_ is Concat!30498) (regOne!43511 baseR!116))) b!7963716))

(assert (= (and b!7963256 ((_ is Star!21499) (regOne!43511 baseR!116))) b!7963717))

(assert (= (and b!7963256 ((_ is Union!21499) (regOne!43511 baseR!116))) b!7963718))

(declare-fun b!7963720 () Bool)

(declare-fun e!4696213 () Bool)

(declare-fun tp!2373100 () Bool)

(declare-fun tp!2373099 () Bool)

(assert (=> b!7963720 (= e!4696213 (and tp!2373100 tp!2373099))))

(declare-fun b!7963719 () Bool)

(assert (=> b!7963719 (= e!4696213 tp_is_empty!53541)))

(assert (=> b!7963256 (= tp!2372981 e!4696213)))

(declare-fun b!7963722 () Bool)

(declare-fun tp!2373097 () Bool)

(declare-fun tp!2373098 () Bool)

(assert (=> b!7963722 (= e!4696213 (and tp!2373097 tp!2373098))))

(declare-fun b!7963721 () Bool)

(declare-fun tp!2373096 () Bool)

(assert (=> b!7963721 (= e!4696213 tp!2373096)))

(assert (= (and b!7963256 ((_ is ElementMatch!21499) (regTwo!43511 baseR!116))) b!7963719))

(assert (= (and b!7963256 ((_ is Concat!30498) (regTwo!43511 baseR!116))) b!7963720))

(assert (= (and b!7963256 ((_ is Star!21499) (regTwo!43511 baseR!116))) b!7963721))

(assert (= (and b!7963256 ((_ is Union!21499) (regTwo!43511 baseR!116))) b!7963722))

(declare-fun b!7963724 () Bool)

(declare-fun e!4696214 () Bool)

(declare-fun tp!2373105 () Bool)

(declare-fun tp!2373104 () Bool)

(assert (=> b!7963724 (= e!4696214 (and tp!2373105 tp!2373104))))

(declare-fun b!7963723 () Bool)

(assert (=> b!7963723 (= e!4696214 tp_is_empty!53541)))

(assert (=> b!7963261 (= tp!2372975 e!4696214)))

(declare-fun b!7963726 () Bool)

(declare-fun tp!2373102 () Bool)

(declare-fun tp!2373103 () Bool)

(assert (=> b!7963726 (= e!4696214 (and tp!2373102 tp!2373103))))

(declare-fun b!7963725 () Bool)

(declare-fun tp!2373101 () Bool)

(assert (=> b!7963725 (= e!4696214 tp!2373101)))

(assert (= (and b!7963261 ((_ is ElementMatch!21499) (regOne!43511 r!24602))) b!7963723))

(assert (= (and b!7963261 ((_ is Concat!30498) (regOne!43511 r!24602))) b!7963724))

(assert (= (and b!7963261 ((_ is Star!21499) (regOne!43511 r!24602))) b!7963725))

(assert (= (and b!7963261 ((_ is Union!21499) (regOne!43511 r!24602))) b!7963726))

(declare-fun b!7963728 () Bool)

(declare-fun e!4696215 () Bool)

(declare-fun tp!2373110 () Bool)

(declare-fun tp!2373109 () Bool)

(assert (=> b!7963728 (= e!4696215 (and tp!2373110 tp!2373109))))

(declare-fun b!7963727 () Bool)

(assert (=> b!7963727 (= e!4696215 tp_is_empty!53541)))

(assert (=> b!7963261 (= tp!2372971 e!4696215)))

(declare-fun b!7963730 () Bool)

(declare-fun tp!2373107 () Bool)

(declare-fun tp!2373108 () Bool)

(assert (=> b!7963730 (= e!4696215 (and tp!2373107 tp!2373108))))

(declare-fun b!7963729 () Bool)

(declare-fun tp!2373106 () Bool)

(assert (=> b!7963729 (= e!4696215 tp!2373106)))

(assert (= (and b!7963261 ((_ is ElementMatch!21499) (regTwo!43511 r!24602))) b!7963727))

(assert (= (and b!7963261 ((_ is Concat!30498) (regTwo!43511 r!24602))) b!7963728))

(assert (= (and b!7963261 ((_ is Star!21499) (regTwo!43511 r!24602))) b!7963729))

(assert (= (and b!7963261 ((_ is Union!21499) (regTwo!43511 r!24602))) b!7963730))

(check-sat (not b!7963720) (not b!7963726) (not d!2378702) (not bm!738558) (not b!7963588) (not bm!738632) (not b!7963646) (not bm!738649) (not bm!738633) (not bm!738631) (not bm!738630) (not d!2378724) (not bm!738629) (not bm!738651) (not d!2378654) (not bm!738653) (not bm!738634) (not d!2378718) (not b!7963730) (not b!7963657) (not b!7963343) (not d!2378722) (not b!7963589) (not b!7963716) (not b!7963626) (not b!7963647) (not b!7963372) (not b!7963334) (not b!7963699) (not b!7963367) (not b!7963311) (not b!7963371) tp_is_empty!53541 (not b!7963724) (not b!7963673) (not b!7963708) (not d!2378714) (not b!7963728) (not b!7963645) (not b!7963335) (not d!2378630) (not bm!738657) (not b!7963707) (not b!7963695) (not bm!738627) (not d!2378704) (not b!7963721) (not bm!738650) (not b!7963696) (not b!7963725) (not b!7963596) (not bm!738560) (not b!7963599) (not b!7963713) (not bm!738655) (not b!7963718) (not b!7963704) (not bm!738647) (not bm!738628) (not b!7963654) (not b!7963336) (not b!7963712) (not d!2378660) (not b!7963722) (not d!2378712) (not bm!738652) (not b!7963693) (not b!7963672) (not bm!738646) (not b!7963366) (not b!7963717) (not b!7963663) (not b!7963711) (not b!7963679) (not b!7963691) (not d!2378646) (not b!7963700) (not b!7963662) (not b!7963714) (not b!7963701) (not b!7963705) (not bm!738654) (not d!2378672) (not bm!738645) (not bm!738648) (not b!7963709) (not b!7963692) (not b!7963636) (not b!7963729) (not b!7963643) (not d!2378642) (not b!7963703) (not b!7963661) (not b!7963697) (not b!7963370))
(check-sat)
