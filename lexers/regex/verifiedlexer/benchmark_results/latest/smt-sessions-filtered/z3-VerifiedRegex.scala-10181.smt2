; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531972 () Bool)

(assert start!531972)

(declare-fun b!5030091 () Bool)

(declare-fun e!3142252 () Bool)

(declare-fun tp!1409379 () Bool)

(assert (=> b!5030091 (= e!3142252 tp!1409379)))

(declare-fun b!5030092 () Bool)

(declare-fun e!3142254 () Bool)

(declare-fun e!3142253 () Bool)

(assert (=> b!5030092 (= e!3142254 (not e!3142253))))

(declare-fun res!2143902 () Bool)

(assert (=> b!5030092 (=> res!2143902 e!3142253)))

(declare-fun lt!2081739 () Int)

(assert (=> b!5030092 (= res!2143902 (> lt!2081739 0))))

(declare-datatypes ((C!28124 0))(
  ( (C!28125 (val!23438 Int)) )
))
(declare-datatypes ((List!58338 0))(
  ( (Nil!58214) (Cons!58214 (h!64662 C!28124) (t!370754 List!58338)) )
))
(declare-fun lt!2081737 () List!58338)

(declare-fun lt!2081738 () List!58338)

(declare-fun from!1228 () Int)

(declare-fun take!784 (List!58338 Int) List!58338)

(declare-fun drop!2584 (List!58338 Int) List!58338)

(assert (=> b!5030092 (= lt!2081737 (take!784 (drop!2584 lt!2081738 (+ 1 from!1228)) lt!2081739))))

(declare-datatypes ((IArray!30973 0))(
  ( (IArray!30974 (innerList!15544 List!58338)) )
))
(declare-datatypes ((Conc!15456 0))(
  ( (Node!15456 (left!42595 Conc!15456) (right!42925 Conc!15456) (csize!31142 Int) (cheight!15667 Int)) (Leaf!25638 (xs!18782 IArray!30973) (csize!31143 Int)) (Empty!15456) )
))
(declare-datatypes ((BalanceConc!30342 0))(
  ( (BalanceConc!30343 (c!861033 Conc!15456)) )
))
(declare-fun totalInput!1141 () BalanceConc!30342)

(declare-fun list!18811 (BalanceConc!30342) List!58338)

(assert (=> b!5030092 (= lt!2081738 (list!18811 totalInput!1141))))

(declare-fun e!3142256 () Bool)

(assert (=> b!5030092 e!3142256))

(declare-fun res!2143903 () Bool)

(assert (=> b!5030092 (=> res!2143903 e!3142256)))

(assert (=> b!5030092 (= res!2143903 (= lt!2081739 0))))

(declare-datatypes ((Unit!149417 0))(
  ( (Unit!149418) )
))
(declare-fun lt!2081740 () Unit!149417)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13937 0))(
  ( (ElementMatch!13937 (c!861034 C!28124)) (Concat!22730 (regOne!28386 Regex!13937) (regTwo!28386 Regex!13937)) (EmptyExpr!13937) (Star!13937 (reg!14266 Regex!13937)) (EmptyLang!13937) (Union!13937 (regOne!28387 Regex!13937) (regTwo!28387 Regex!13937)) )
))
(declare-datatypes ((List!58339 0))(
  ( (Nil!58215) (Cons!58215 (h!64663 Regex!13937) (t!370755 List!58339)) )
))
(declare-datatypes ((Context!6724 0))(
  ( (Context!6725 (exprs!3862 List!58339)) )
))
(declare-fun lt!2081742 () (InoxSet Context!6724))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!128 ((InoxSet Context!6724) Int BalanceConc!30342) Unit!149417)

(assert (=> b!5030092 (= lt!2081740 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!128 lt!2081742 (+ 1 from!1228) totalInput!1141))))

(declare-fun lt!2081743 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!251 ((InoxSet Context!6724) Int BalanceConc!30342 Int) Int)

(assert (=> b!5030092 (= lt!2081739 (findLongestMatchInnerZipperFastV2!251 lt!2081742 (+ 1 from!1228) totalInput!1141 lt!2081743))))

(declare-fun z!4747 () (InoxSet Context!6724))

(declare-fun derivationStepZipper!732 ((InoxSet Context!6724) C!28124) (InoxSet Context!6724))

(declare-fun apply!14204 (BalanceConc!30342 Int) C!28124)

(assert (=> b!5030092 (= lt!2081742 (derivationStepZipper!732 z!4747 (apply!14204 totalInput!1141 from!1228)))))

(declare-fun b!5030093 () Bool)

(declare-fun res!2143898 () Bool)

(assert (=> b!5030093 (=> (not res!2143898) (not e!3142254))))

(assert (=> b!5030093 (= res!2143898 (not (= from!1228 lt!2081743)))))

(declare-fun res!2143899 () Bool)

(declare-fun e!3142251 () Bool)

(assert (=> start!531972 (=> (not res!2143899) (not e!3142251))))

(assert (=> start!531972 (= res!2143899 (>= from!1228 0))))

(assert (=> start!531972 e!3142251))

(assert (=> start!531972 true))

(declare-fun e!3142257 () Bool)

(declare-fun inv!76820 (BalanceConc!30342) Bool)

(assert (=> start!531972 (and (inv!76820 totalInput!1141) e!3142257)))

(declare-fun condSetEmpty!29000 () Bool)

(assert (=> start!531972 (= condSetEmpty!29000 (= z!4747 ((as const (Array Context!6724 Bool)) false)))))

(declare-fun setRes!29000 () Bool)

(assert (=> start!531972 setRes!29000))

(declare-fun b!5030094 () Bool)

(assert (=> b!5030094 (= e!3142251 e!3142254)))

(declare-fun res!2143905 () Bool)

(assert (=> b!5030094 (=> (not res!2143905) (not e!3142254))))

(assert (=> b!5030094 (= res!2143905 (<= from!1228 lt!2081743))))

(declare-fun size!38752 (BalanceConc!30342) Int)

(assert (=> b!5030094 (= lt!2081743 (size!38752 totalInput!1141))))

(declare-fun b!5030095 () Bool)

(declare-fun e!3142255 () Bool)

(assert (=> b!5030095 (= e!3142253 e!3142255)))

(declare-fun res!2143904 () Bool)

(assert (=> b!5030095 (=> res!2143904 e!3142255)))

(declare-fun lt!2081741 () Int)

(assert (=> b!5030095 (= res!2143904 (= lt!2081741 0))))

(assert (=> b!5030095 (= lt!2081741 (findLongestMatchInnerZipperFastV2!251 z!4747 from!1228 totalInput!1141 lt!2081743))))

(declare-fun b!5030096 () Bool)

(declare-fun matchZipper!687 ((InoxSet Context!6724) List!58338) Bool)

(assert (=> b!5030096 (= e!3142256 (matchZipper!687 lt!2081742 (take!784 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) lt!2081739)))))

(declare-fun b!5030097 () Bool)

(declare-fun tp!1409378 () Bool)

(declare-fun inv!76821 (Conc!15456) Bool)

(assert (=> b!5030097 (= e!3142257 (and (inv!76821 (c!861033 totalInput!1141)) tp!1409378))))

(declare-fun b!5030098 () Bool)

(assert (=> b!5030098 (= e!3142255 (matchZipper!687 z!4747 (take!784 (drop!2584 lt!2081738 from!1228) lt!2081741)))))

(declare-fun b!5030099 () Bool)

(declare-fun res!2143900 () Bool)

(assert (=> b!5030099 (=> res!2143900 e!3142253)))

(declare-fun nullableZipper!945 ((InoxSet Context!6724)) Bool)

(assert (=> b!5030099 (= res!2143900 (nullableZipper!945 lt!2081742))))

(declare-fun setIsEmpty!29000 () Bool)

(assert (=> setIsEmpty!29000 setRes!29000))

(declare-fun b!5030100 () Bool)

(declare-fun res!2143901 () Bool)

(assert (=> b!5030100 (=> (not res!2143901) (not e!3142254))))

(declare-fun lostCauseZipper!951 ((InoxSet Context!6724)) Bool)

(assert (=> b!5030100 (= res!2143901 (not (lostCauseZipper!951 z!4747)))))

(declare-fun setNonEmpty!29000 () Bool)

(declare-fun tp!1409380 () Bool)

(declare-fun setElem!29000 () Context!6724)

(declare-fun inv!76822 (Context!6724) Bool)

(assert (=> setNonEmpty!29000 (= setRes!29000 (and tp!1409380 (inv!76822 setElem!29000) e!3142252))))

(declare-fun setRest!29000 () (InoxSet Context!6724))

(assert (=> setNonEmpty!29000 (= z!4747 ((_ map or) (store ((as const (Array Context!6724 Bool)) false) setElem!29000 true) setRest!29000))))

(assert (= (and start!531972 res!2143899) b!5030094))

(assert (= (and b!5030094 res!2143905) b!5030100))

(assert (= (and b!5030100 res!2143901) b!5030093))

(assert (= (and b!5030093 res!2143898) b!5030092))

(assert (= (and b!5030092 (not res!2143903)) b!5030096))

(assert (= (and b!5030092 (not res!2143902)) b!5030099))

(assert (= (and b!5030099 (not res!2143900)) b!5030095))

(assert (= (and b!5030095 (not res!2143904)) b!5030098))

(assert (= start!531972 b!5030097))

(assert (= (and start!531972 condSetEmpty!29000) setIsEmpty!29000))

(assert (= (and start!531972 (not condSetEmpty!29000)) setNonEmpty!29000))

(assert (= setNonEmpty!29000 b!5030091))

(declare-fun m!6065462 () Bool)

(assert (=> b!5030100 m!6065462))

(declare-fun m!6065464 () Bool)

(assert (=> b!5030097 m!6065464))

(declare-fun m!6065466 () Bool)

(assert (=> b!5030098 m!6065466))

(assert (=> b!5030098 m!6065466))

(declare-fun m!6065468 () Bool)

(assert (=> b!5030098 m!6065468))

(assert (=> b!5030098 m!6065468))

(declare-fun m!6065470 () Bool)

(assert (=> b!5030098 m!6065470))

(declare-fun m!6065472 () Bool)

(assert (=> setNonEmpty!29000 m!6065472))

(declare-fun m!6065474 () Bool)

(assert (=> b!5030094 m!6065474))

(declare-fun m!6065476 () Bool)

(assert (=> start!531972 m!6065476))

(declare-fun m!6065478 () Bool)

(assert (=> b!5030099 m!6065478))

(declare-fun m!6065480 () Bool)

(assert (=> b!5030092 m!6065480))

(declare-fun m!6065482 () Bool)

(assert (=> b!5030092 m!6065482))

(assert (=> b!5030092 m!6065482))

(declare-fun m!6065484 () Bool)

(assert (=> b!5030092 m!6065484))

(assert (=> b!5030092 m!6065480))

(declare-fun m!6065486 () Bool)

(assert (=> b!5030092 m!6065486))

(declare-fun m!6065488 () Bool)

(assert (=> b!5030092 m!6065488))

(declare-fun m!6065490 () Bool)

(assert (=> b!5030092 m!6065490))

(declare-fun m!6065492 () Bool)

(assert (=> b!5030092 m!6065492))

(assert (=> b!5030096 m!6065488))

(assert (=> b!5030096 m!6065488))

(declare-fun m!6065494 () Bool)

(assert (=> b!5030096 m!6065494))

(assert (=> b!5030096 m!6065494))

(declare-fun m!6065496 () Bool)

(assert (=> b!5030096 m!6065496))

(assert (=> b!5030096 m!6065496))

(declare-fun m!6065498 () Bool)

(assert (=> b!5030096 m!6065498))

(declare-fun m!6065500 () Bool)

(assert (=> b!5030095 m!6065500))

(check-sat (not b!5030092) (not b!5030094) (not b!5030098) (not setNonEmpty!29000) (not b!5030099) (not b!5030091) (not start!531972) (not b!5030095) (not b!5030100) (not b!5030096) (not b!5030097))
(check-sat)
(get-model)

(declare-fun b!5030144 () Bool)

(declare-fun e!3142285 () Bool)

(assert (=> b!5030144 (= e!3142285 (lostCauseZipper!951 z!4747))))

(declare-fun b!5030145 () Bool)

(declare-fun e!3142287 () Int)

(assert (=> b!5030145 (= e!3142287 1)))

(declare-fun b!5030146 () Bool)

(declare-fun c!861055 () Bool)

(declare-fun lt!2081758 () (InoxSet Context!6724))

(assert (=> b!5030146 (= c!861055 (nullableZipper!945 lt!2081758))))

(declare-fun e!3142286 () Int)

(assert (=> b!5030146 (= e!3142286 e!3142287)))

(declare-fun b!5030147 () Bool)

(declare-fun e!3142284 () Int)

(assert (=> b!5030147 (= e!3142284 e!3142286)))

(assert (=> b!5030147 (= lt!2081758 (derivationStepZipper!732 z!4747 (apply!14204 totalInput!1141 from!1228)))))

(declare-fun lt!2081756 () Int)

(assert (=> b!5030147 (= lt!2081756 (findLongestMatchInnerZipperFastV2!251 lt!2081758 (+ from!1228 1) totalInput!1141 lt!2081743))))

(declare-fun c!861053 () Bool)

(assert (=> b!5030147 (= c!861053 (> lt!2081756 0))))

(declare-fun b!5030148 () Bool)

(assert (=> b!5030148 (= e!3142287 0)))

(declare-fun d!1618816 () Bool)

(declare-fun lt!2081757 () Int)

(assert (=> d!1618816 (and (>= lt!2081757 0) (<= lt!2081757 (- lt!2081743 from!1228)))))

(assert (=> d!1618816 (= lt!2081757 e!3142284)))

(declare-fun c!861054 () Bool)

(assert (=> d!1618816 (= c!861054 e!3142285)))

(declare-fun res!2143914 () Bool)

(assert (=> d!1618816 (=> res!2143914 e!3142285)))

(assert (=> d!1618816 (= res!2143914 (= from!1228 lt!2081743))))

(declare-fun e!3142283 () Bool)

(assert (=> d!1618816 e!3142283))

(declare-fun res!2143913 () Bool)

(assert (=> d!1618816 (=> (not res!2143913) (not e!3142283))))

(assert (=> d!1618816 (= res!2143913 (>= from!1228 0))))

(assert (=> d!1618816 (= (findLongestMatchInnerZipperFastV2!251 z!4747 from!1228 totalInput!1141 lt!2081743) lt!2081757)))

(declare-fun b!5030149 () Bool)

(assert (=> b!5030149 (= e!3142284 0)))

(declare-fun b!5030150 () Bool)

(assert (=> b!5030150 (= e!3142283 (<= from!1228 (size!38752 totalInput!1141)))))

(declare-fun b!5030151 () Bool)

(assert (=> b!5030151 (= e!3142286 (+ 1 lt!2081756))))

(assert (= (and d!1618816 res!2143913) b!5030150))

(assert (= (and d!1618816 (not res!2143914)) b!5030144))

(assert (= (and d!1618816 c!861054) b!5030149))

(assert (= (and d!1618816 (not c!861054)) b!5030147))

(assert (= (and b!5030147 c!861053) b!5030151))

(assert (= (and b!5030147 (not c!861053)) b!5030146))

(assert (= (and b!5030146 c!861055) b!5030145))

(assert (= (and b!5030146 (not c!861055)) b!5030148))

(assert (=> b!5030144 m!6065462))

(declare-fun m!6065528 () Bool)

(assert (=> b!5030146 m!6065528))

(assert (=> b!5030147 m!6065480))

(assert (=> b!5030147 m!6065480))

(assert (=> b!5030147 m!6065486))

(declare-fun m!6065530 () Bool)

(assert (=> b!5030147 m!6065530))

(assert (=> b!5030150 m!6065474))

(assert (=> b!5030095 d!1618816))

(declare-fun d!1618826 () Bool)

(declare-fun c!861066 () Bool)

(declare-fun isEmpty!31481 (List!58338) Bool)

(assert (=> d!1618826 (= c!861066 (isEmpty!31481 (take!784 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) lt!2081739)))))

(declare-fun e!3142300 () Bool)

(assert (=> d!1618826 (= (matchZipper!687 lt!2081742 (take!784 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) lt!2081739)) e!3142300)))

(declare-fun b!5030174 () Bool)

(assert (=> b!5030174 (= e!3142300 (nullableZipper!945 lt!2081742))))

(declare-fun b!5030175 () Bool)

(declare-fun head!10791 (List!58338) C!28124)

(declare-fun tail!9924 (List!58338) List!58338)

(assert (=> b!5030175 (= e!3142300 (matchZipper!687 (derivationStepZipper!732 lt!2081742 (head!10791 (take!784 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) lt!2081739))) (tail!9924 (take!784 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) lt!2081739))))))

(assert (= (and d!1618826 c!861066) b!5030174))

(assert (= (and d!1618826 (not c!861066)) b!5030175))

(assert (=> d!1618826 m!6065496))

(declare-fun m!6065532 () Bool)

(assert (=> d!1618826 m!6065532))

(assert (=> b!5030174 m!6065478))

(assert (=> b!5030175 m!6065496))

(declare-fun m!6065534 () Bool)

(assert (=> b!5030175 m!6065534))

(assert (=> b!5030175 m!6065534))

(declare-fun m!6065536 () Bool)

(assert (=> b!5030175 m!6065536))

(assert (=> b!5030175 m!6065496))

(declare-fun m!6065538 () Bool)

(assert (=> b!5030175 m!6065538))

(assert (=> b!5030175 m!6065536))

(assert (=> b!5030175 m!6065538))

(declare-fun m!6065540 () Bool)

(assert (=> b!5030175 m!6065540))

(assert (=> b!5030096 d!1618826))

(declare-fun e!3142315 () List!58338)

(declare-fun b!5030199 () Bool)

(assert (=> b!5030199 (= e!3142315 (Cons!58214 (h!64662 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228))) (take!784 (t!370754 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228))) (- lt!2081739 1))))))

(declare-fun b!5030201 () Bool)

(assert (=> b!5030201 (= e!3142315 Nil!58214)))

(declare-fun b!5030202 () Bool)

(declare-fun e!3142316 () Int)

(declare-fun e!3142317 () Int)

(assert (=> b!5030202 (= e!3142316 e!3142317)))

(declare-fun c!861077 () Bool)

(declare-fun size!38755 (List!58338) Int)

(assert (=> b!5030202 (= c!861077 (>= lt!2081739 (size!38755 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5030203 () Bool)

(assert (=> b!5030203 (= e!3142316 0)))

(declare-fun d!1618828 () Bool)

(declare-fun e!3142314 () Bool)

(assert (=> d!1618828 e!3142314))

(declare-fun res!2143920 () Bool)

(assert (=> d!1618828 (=> (not res!2143920) (not e!3142314))))

(declare-fun lt!2081764 () List!58338)

(declare-fun content!10324 (List!58338) (InoxSet C!28124))

(assert (=> d!1618828 (= res!2143920 (= ((_ map implies) (content!10324 lt!2081764) (content!10324 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)))) ((as const (InoxSet C!28124)) true)))))

(assert (=> d!1618828 (= lt!2081764 e!3142315)))

(declare-fun c!861079 () Bool)

(get-info :version)

(assert (=> d!1618828 (= c!861079 (or ((_ is Nil!58214) (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228))) (<= lt!2081739 0)))))

(assert (=> d!1618828 (= (take!784 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) lt!2081739) lt!2081764)))

(declare-fun b!5030200 () Bool)

(assert (=> b!5030200 (= e!3142317 (size!38755 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228))))))

(declare-fun b!5030204 () Bool)

(assert (=> b!5030204 (= e!3142317 lt!2081739)))

(declare-fun b!5030205 () Bool)

(assert (=> b!5030205 (= e!3142314 (= (size!38755 lt!2081764) e!3142316))))

(declare-fun c!861078 () Bool)

(assert (=> b!5030205 (= c!861078 (<= lt!2081739 0))))

(assert (= (and d!1618828 c!861079) b!5030201))

(assert (= (and d!1618828 (not c!861079)) b!5030199))

(assert (= (and d!1618828 res!2143920) b!5030205))

(assert (= (and b!5030205 c!861078) b!5030203))

(assert (= (and b!5030205 (not c!861078)) b!5030202))

(assert (= (and b!5030202 c!861077) b!5030200))

(assert (= (and b!5030202 (not c!861077)) b!5030204))

(assert (=> b!5030200 m!6065494))

(declare-fun m!6065552 () Bool)

(assert (=> b!5030200 m!6065552))

(assert (=> b!5030202 m!6065494))

(assert (=> b!5030202 m!6065552))

(declare-fun m!6065554 () Bool)

(assert (=> b!5030205 m!6065554))

(declare-fun m!6065556 () Bool)

(assert (=> d!1618828 m!6065556))

(assert (=> d!1618828 m!6065494))

(declare-fun m!6065558 () Bool)

(assert (=> d!1618828 m!6065558))

(declare-fun m!6065560 () Bool)

(assert (=> b!5030199 m!6065560))

(assert (=> b!5030096 d!1618828))

(declare-fun d!1618832 () Bool)

(declare-fun e!3142332 () Bool)

(assert (=> d!1618832 e!3142332))

(declare-fun res!2143923 () Bool)

(assert (=> d!1618832 (=> (not res!2143923) (not e!3142332))))

(declare-fun lt!2081767 () List!58338)

(assert (=> d!1618832 (= res!2143923 (= ((_ map implies) (content!10324 lt!2081767) (content!10324 (list!18811 totalInput!1141))) ((as const (InoxSet C!28124)) true)))))

(declare-fun e!3142330 () List!58338)

(assert (=> d!1618832 (= lt!2081767 e!3142330)))

(declare-fun c!861091 () Bool)

(assert (=> d!1618832 (= c!861091 ((_ is Nil!58214) (list!18811 totalInput!1141)))))

(assert (=> d!1618832 (= (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) lt!2081767)))

(declare-fun b!5030224 () Bool)

(declare-fun e!3142331 () Int)

(assert (=> b!5030224 (= e!3142332 (= (size!38755 lt!2081767) e!3142331))))

(declare-fun c!861090 () Bool)

(assert (=> b!5030224 (= c!861090 (<= (+ 1 from!1228) 0))))

(declare-fun b!5030225 () Bool)

(declare-fun call!350940 () Int)

(assert (=> b!5030225 (= e!3142331 call!350940)))

(declare-fun b!5030226 () Bool)

(declare-fun e!3142329 () List!58338)

(assert (=> b!5030226 (= e!3142329 (drop!2584 (t!370754 (list!18811 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5030227 () Bool)

(declare-fun e!3142328 () Int)

(assert (=> b!5030227 (= e!3142328 0)))

(declare-fun b!5030228 () Bool)

(assert (=> b!5030228 (= e!3142328 (- call!350940 (+ 1 from!1228)))))

(declare-fun b!5030229 () Bool)

(assert (=> b!5030229 (= e!3142329 (list!18811 totalInput!1141))))

(declare-fun b!5030230 () Bool)

(assert (=> b!5030230 (= e!3142331 e!3142328)))

(declare-fun c!861089 () Bool)

(assert (=> b!5030230 (= c!861089 (>= (+ 1 from!1228) call!350940))))

(declare-fun b!5030231 () Bool)

(assert (=> b!5030231 (= e!3142330 Nil!58214)))

(declare-fun bm!350935 () Bool)

(assert (=> bm!350935 (= call!350940 (size!38755 (list!18811 totalInput!1141)))))

(declare-fun b!5030232 () Bool)

(assert (=> b!5030232 (= e!3142330 e!3142329)))

(declare-fun c!861088 () Bool)

(assert (=> b!5030232 (= c!861088 (<= (+ 1 from!1228) 0))))

(assert (= (and d!1618832 c!861091) b!5030231))

(assert (= (and d!1618832 (not c!861091)) b!5030232))

(assert (= (and b!5030232 c!861088) b!5030229))

(assert (= (and b!5030232 (not c!861088)) b!5030226))

(assert (= (and d!1618832 res!2143923) b!5030224))

(assert (= (and b!5030224 c!861090) b!5030225))

(assert (= (and b!5030224 (not c!861090)) b!5030230))

(assert (= (and b!5030230 c!861089) b!5030227))

(assert (= (and b!5030230 (not c!861089)) b!5030228))

(assert (= (or b!5030225 b!5030230 b!5030228) bm!350935))

(declare-fun m!6065562 () Bool)

(assert (=> d!1618832 m!6065562))

(assert (=> d!1618832 m!6065488))

(declare-fun m!6065564 () Bool)

(assert (=> d!1618832 m!6065564))

(declare-fun m!6065566 () Bool)

(assert (=> b!5030224 m!6065566))

(declare-fun m!6065568 () Bool)

(assert (=> b!5030226 m!6065568))

(assert (=> bm!350935 m!6065488))

(declare-fun m!6065570 () Bool)

(assert (=> bm!350935 m!6065570))

(assert (=> b!5030096 d!1618832))

(declare-fun d!1618834 () Bool)

(declare-fun list!18812 (Conc!15456) List!58338)

(assert (=> d!1618834 (= (list!18811 totalInput!1141) (list!18812 (c!861033 totalInput!1141)))))

(declare-fun bs!1188522 () Bool)

(assert (= bs!1188522 d!1618834))

(declare-fun m!6065572 () Bool)

(assert (=> bs!1188522 m!6065572))

(assert (=> b!5030096 d!1618834))

(declare-fun bs!1188533 () Bool)

(declare-fun b!5030294 () Bool)

(declare-fun d!1618836 () Bool)

(assert (= bs!1188533 (and b!5030294 d!1618836)))

(declare-fun lambda!249681 () Int)

(declare-fun lambda!249680 () Int)

(assert (=> bs!1188533 (not (= lambda!249681 lambda!249680))))

(declare-fun bs!1188534 () Bool)

(declare-fun b!5030295 () Bool)

(assert (= bs!1188534 (and b!5030295 d!1618836)))

(declare-fun lambda!249682 () Int)

(assert (=> bs!1188534 (not (= lambda!249682 lambda!249680))))

(declare-fun bs!1188535 () Bool)

(assert (= bs!1188535 (and b!5030295 b!5030294)))

(assert (=> bs!1188535 (= lambda!249682 lambda!249681)))

(declare-fun bm!350947 () Bool)

(declare-datatypes ((List!58340 0))(
  ( (Nil!58216) (Cons!58216 (h!64664 Context!6724) (t!370756 List!58340)) )
))
(declare-fun call!350953 () List!58340)

(declare-fun toList!8135 ((InoxSet Context!6724)) List!58340)

(assert (=> bm!350947 (= call!350953 (toList!8135 z!4747))))

(declare-fun e!3142377 () Unit!149417)

(declare-fun Unit!149419 () Unit!149417)

(assert (=> b!5030294 (= e!3142377 Unit!149419)))

(declare-fun lt!2081823 () List!58340)

(assert (=> b!5030294 (= lt!2081823 call!350953)))

(declare-fun lt!2081825 () Unit!149417)

(declare-fun lemmaNotForallThenExists!284 (List!58340 Int) Unit!149417)

(assert (=> b!5030294 (= lt!2081825 (lemmaNotForallThenExists!284 lt!2081823 lambda!249680))))

(declare-fun call!350952 () Bool)

(assert (=> b!5030294 call!350952))

(declare-fun lt!2081824 () Unit!149417)

(assert (=> b!5030294 (= lt!2081824 lt!2081825)))

(declare-fun Unit!149420 () Unit!149417)

(assert (=> b!5030295 (= e!3142377 Unit!149420)))

(declare-fun lt!2081822 () List!58340)

(assert (=> b!5030295 (= lt!2081822 call!350953)))

(declare-fun lt!2081819 () Unit!149417)

(declare-fun lemmaForallThenNotExists!267 (List!58340 Int) Unit!149417)

(assert (=> b!5030295 (= lt!2081819 (lemmaForallThenNotExists!267 lt!2081822 lambda!249680))))

(assert (=> b!5030295 (not call!350952)))

(declare-fun lt!2081820 () Unit!149417)

(assert (=> b!5030295 (= lt!2081820 lt!2081819)))

(declare-fun bm!350948 () Bool)

(declare-fun c!861135 () Bool)

(declare-fun exists!1415 (List!58340 Int) Bool)

(assert (=> bm!350948 (= call!350952 (exists!1415 (ite c!861135 lt!2081823 lt!2081822) (ite c!861135 lambda!249681 lambda!249682)))))

(declare-fun lt!2081826 () Bool)

(declare-datatypes ((Option!14614 0))(
  ( (None!14613) (Some!14613 (v!50624 List!58338)) )
))
(declare-fun isEmpty!31482 (Option!14614) Bool)

(declare-fun getLanguageWitness!757 ((InoxSet Context!6724)) Option!14614)

(assert (=> d!1618836 (= lt!2081826 (isEmpty!31482 (getLanguageWitness!757 z!4747)))))

(declare-fun forall!13457 ((InoxSet Context!6724) Int) Bool)

(assert (=> d!1618836 (= lt!2081826 (forall!13457 z!4747 lambda!249680))))

(declare-fun lt!2081821 () Unit!149417)

(assert (=> d!1618836 (= lt!2081821 e!3142377)))

(assert (=> d!1618836 (= c!861135 (not (forall!13457 z!4747 lambda!249680)))))

(assert (=> d!1618836 (= (lostCauseZipper!951 z!4747) lt!2081826)))

(assert (= (and d!1618836 c!861135) b!5030294))

(assert (= (and d!1618836 (not c!861135)) b!5030295))

(assert (= (or b!5030294 b!5030295) bm!350947))

(assert (= (or b!5030294 b!5030295) bm!350948))

(declare-fun m!6065632 () Bool)

(assert (=> b!5030295 m!6065632))

(declare-fun m!6065634 () Bool)

(assert (=> bm!350947 m!6065634))

(declare-fun m!6065636 () Bool)

(assert (=> bm!350948 m!6065636))

(declare-fun m!6065638 () Bool)

(assert (=> b!5030294 m!6065638))

(declare-fun m!6065640 () Bool)

(assert (=> d!1618836 m!6065640))

(assert (=> d!1618836 m!6065640))

(declare-fun m!6065642 () Bool)

(assert (=> d!1618836 m!6065642))

(declare-fun m!6065644 () Bool)

(assert (=> d!1618836 m!6065644))

(assert (=> d!1618836 m!6065644))

(assert (=> b!5030100 d!1618836))

(declare-fun d!1618858 () Bool)

(declare-fun lambda!249685 () Int)

(declare-fun forall!13458 (List!58339 Int) Bool)

(assert (=> d!1618858 (= (inv!76822 setElem!29000) (forall!13458 (exprs!3862 setElem!29000) lambda!249685))))

(declare-fun bs!1188536 () Bool)

(assert (= bs!1188536 d!1618858))

(declare-fun m!6065646 () Bool)

(assert (=> bs!1188536 m!6065646))

(assert (=> setNonEmpty!29000 d!1618858))

(declare-fun d!1618860 () Bool)

(declare-fun isBalanced!4318 (Conc!15456) Bool)

(assert (=> d!1618860 (= (inv!76820 totalInput!1141) (isBalanced!4318 (c!861033 totalInput!1141)))))

(declare-fun bs!1188537 () Bool)

(assert (= bs!1188537 d!1618860))

(declare-fun m!6065648 () Bool)

(assert (=> bs!1188537 m!6065648))

(assert (=> start!531972 d!1618860))

(declare-fun d!1618862 () Bool)

(declare-fun e!3142406 () Bool)

(assert (=> d!1618862 e!3142406))

(declare-fun res!2143952 () Bool)

(assert (=> d!1618862 (=> res!2143952 e!3142406)))

(assert (=> d!1618862 (= res!2143952 (= (findLongestMatchInnerZipperFastV2!251 lt!2081742 (+ 1 from!1228) totalInput!1141 (size!38752 totalInput!1141)) 0))))

(declare-fun lt!2081840 () Unit!149417)

(declare-fun choose!37228 ((InoxSet Context!6724) Int BalanceConc!30342) Unit!149417)

(assert (=> d!1618862 (= lt!2081840 (choose!37228 lt!2081742 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3142405 () Bool)

(assert (=> d!1618862 e!3142405))

(declare-fun res!2143953 () Bool)

(assert (=> d!1618862 (=> (not res!2143953) (not e!3142405))))

(assert (=> d!1618862 (= res!2143953 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618862 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!128 lt!2081742 (+ 1 from!1228) totalInput!1141) lt!2081840)))

(declare-fun b!5030335 () Bool)

(assert (=> b!5030335 (= e!3142405 (<= (+ 1 from!1228) (size!38752 totalInput!1141)))))

(declare-fun b!5030336 () Bool)

(assert (=> b!5030336 (= e!3142406 (matchZipper!687 lt!2081742 (take!784 (drop!2584 (list!18811 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!251 lt!2081742 (+ 1 from!1228) totalInput!1141 (size!38752 totalInput!1141)))))))

(assert (= (and d!1618862 res!2143953) b!5030335))

(assert (= (and d!1618862 (not res!2143952)) b!5030336))

(assert (=> d!1618862 m!6065474))

(assert (=> d!1618862 m!6065474))

(declare-fun m!6065690 () Bool)

(assert (=> d!1618862 m!6065690))

(declare-fun m!6065692 () Bool)

(assert (=> d!1618862 m!6065692))

(assert (=> b!5030335 m!6065474))

(assert (=> b!5030336 m!6065474))

(assert (=> b!5030336 m!6065690))

(assert (=> b!5030336 m!6065494))

(assert (=> b!5030336 m!6065690))

(declare-fun m!6065694 () Bool)

(assert (=> b!5030336 m!6065694))

(assert (=> b!5030336 m!6065694))

(declare-fun m!6065696 () Bool)

(assert (=> b!5030336 m!6065696))

(assert (=> b!5030336 m!6065488))

(assert (=> b!5030336 m!6065488))

(assert (=> b!5030336 m!6065494))

(assert (=> b!5030336 m!6065474))

(assert (=> b!5030092 d!1618862))

(declare-fun b!5030341 () Bool)

(declare-fun e!3142411 () Bool)

(assert (=> b!5030341 (= e!3142411 (lostCauseZipper!951 lt!2081742))))

(declare-fun b!5030342 () Bool)

(declare-fun e!3142413 () Int)

(assert (=> b!5030342 (= e!3142413 1)))

(declare-fun b!5030343 () Bool)

(declare-fun c!861150 () Bool)

(declare-fun lt!2081843 () (InoxSet Context!6724))

(assert (=> b!5030343 (= c!861150 (nullableZipper!945 lt!2081843))))

(declare-fun e!3142412 () Int)

(assert (=> b!5030343 (= e!3142412 e!3142413)))

(declare-fun b!5030344 () Bool)

(declare-fun e!3142410 () Int)

(assert (=> b!5030344 (= e!3142410 e!3142412)))

(assert (=> b!5030344 (= lt!2081843 (derivationStepZipper!732 lt!2081742 (apply!14204 totalInput!1141 (+ 1 from!1228))))))

(declare-fun lt!2081841 () Int)

(assert (=> b!5030344 (= lt!2081841 (findLongestMatchInnerZipperFastV2!251 lt!2081843 (+ 1 from!1228 1) totalInput!1141 lt!2081743))))

(declare-fun c!861148 () Bool)

(assert (=> b!5030344 (= c!861148 (> lt!2081841 0))))

(declare-fun b!5030345 () Bool)

(assert (=> b!5030345 (= e!3142413 0)))

(declare-fun d!1618874 () Bool)

(declare-fun lt!2081842 () Int)

(assert (=> d!1618874 (and (>= lt!2081842 0) (<= lt!2081842 (- lt!2081743 (+ 1 from!1228))))))

(assert (=> d!1618874 (= lt!2081842 e!3142410)))

(declare-fun c!861149 () Bool)

(assert (=> d!1618874 (= c!861149 e!3142411)))

(declare-fun res!2143955 () Bool)

(assert (=> d!1618874 (=> res!2143955 e!3142411)))

(assert (=> d!1618874 (= res!2143955 (= (+ 1 from!1228) lt!2081743))))

(declare-fun e!3142409 () Bool)

(assert (=> d!1618874 e!3142409))

(declare-fun res!2143954 () Bool)

(assert (=> d!1618874 (=> (not res!2143954) (not e!3142409))))

(assert (=> d!1618874 (= res!2143954 (>= (+ 1 from!1228) 0))))

(assert (=> d!1618874 (= (findLongestMatchInnerZipperFastV2!251 lt!2081742 (+ 1 from!1228) totalInput!1141 lt!2081743) lt!2081842)))

(declare-fun b!5030346 () Bool)

(assert (=> b!5030346 (= e!3142410 0)))

(declare-fun b!5030347 () Bool)

(assert (=> b!5030347 (= e!3142409 (<= (+ 1 from!1228) (size!38752 totalInput!1141)))))

(declare-fun b!5030348 () Bool)

(assert (=> b!5030348 (= e!3142412 (+ 1 lt!2081841))))

(assert (= (and d!1618874 res!2143954) b!5030347))

(assert (= (and d!1618874 (not res!2143955)) b!5030341))

(assert (= (and d!1618874 c!861149) b!5030346))

(assert (= (and d!1618874 (not c!861149)) b!5030344))

(assert (= (and b!5030344 c!861148) b!5030348))

(assert (= (and b!5030344 (not c!861148)) b!5030343))

(assert (= (and b!5030343 c!861150) b!5030342))

(assert (= (and b!5030343 (not c!861150)) b!5030345))

(declare-fun m!6065698 () Bool)

(assert (=> b!5030341 m!6065698))

(declare-fun m!6065700 () Bool)

(assert (=> b!5030343 m!6065700))

(declare-fun m!6065702 () Bool)

(assert (=> b!5030344 m!6065702))

(assert (=> b!5030344 m!6065702))

(declare-fun m!6065704 () Bool)

(assert (=> b!5030344 m!6065704))

(declare-fun m!6065708 () Bool)

(assert (=> b!5030344 m!6065708))

(assert (=> b!5030347 m!6065474))

(assert (=> b!5030092 d!1618874))

(assert (=> b!5030092 d!1618834))

(declare-fun d!1618876 () Bool)

(assert (=> d!1618876 true))

(declare-fun lambda!249691 () Int)

(declare-fun flatMap!315 ((InoxSet Context!6724) Int) (InoxSet Context!6724))

(assert (=> d!1618876 (= (derivationStepZipper!732 z!4747 (apply!14204 totalInput!1141 from!1228)) (flatMap!315 z!4747 lambda!249691))))

(declare-fun bs!1188539 () Bool)

(assert (= bs!1188539 d!1618876))

(declare-fun m!6065716 () Bool)

(assert (=> bs!1188539 m!6065716))

(assert (=> b!5030092 d!1618876))

(declare-fun d!1618878 () Bool)

(declare-fun lt!2081846 () C!28124)

(declare-fun apply!14205 (List!58338 Int) C!28124)

(assert (=> d!1618878 (= lt!2081846 (apply!14205 (list!18811 totalInput!1141) from!1228))))

(declare-fun apply!14206 (Conc!15456 Int) C!28124)

(assert (=> d!1618878 (= lt!2081846 (apply!14206 (c!861033 totalInput!1141) from!1228))))

(declare-fun e!3142426 () Bool)

(assert (=> d!1618878 e!3142426))

(declare-fun res!2143958 () Bool)

(assert (=> d!1618878 (=> (not res!2143958) (not e!3142426))))

(assert (=> d!1618878 (= res!2143958 (<= 0 from!1228))))

(assert (=> d!1618878 (= (apply!14204 totalInput!1141 from!1228) lt!2081846)))

(declare-fun b!5030370 () Bool)

(assert (=> b!5030370 (= e!3142426 (< from!1228 (size!38752 totalInput!1141)))))

(assert (= (and d!1618878 res!2143958) b!5030370))

(assert (=> d!1618878 m!6065488))

(assert (=> d!1618878 m!6065488))

(declare-fun m!6065718 () Bool)

(assert (=> d!1618878 m!6065718))

(declare-fun m!6065720 () Bool)

(assert (=> d!1618878 m!6065720))

(assert (=> b!5030370 m!6065474))

(assert (=> b!5030092 d!1618878))

(declare-fun d!1618880 () Bool)

(declare-fun e!3142431 () Bool)

(assert (=> d!1618880 e!3142431))

(declare-fun res!2143959 () Bool)

(assert (=> d!1618880 (=> (not res!2143959) (not e!3142431))))

(declare-fun lt!2081847 () List!58338)

(assert (=> d!1618880 (= res!2143959 (= ((_ map implies) (content!10324 lt!2081847) (content!10324 lt!2081738)) ((as const (InoxSet C!28124)) true)))))

(declare-fun e!3142429 () List!58338)

(assert (=> d!1618880 (= lt!2081847 e!3142429)))

(declare-fun c!861156 () Bool)

(assert (=> d!1618880 (= c!861156 ((_ is Nil!58214) lt!2081738))))

(assert (=> d!1618880 (= (drop!2584 lt!2081738 (+ 1 from!1228)) lt!2081847)))

(declare-fun b!5030371 () Bool)

(declare-fun e!3142430 () Int)

(assert (=> b!5030371 (= e!3142431 (= (size!38755 lt!2081847) e!3142430))))

(declare-fun c!861155 () Bool)

(assert (=> b!5030371 (= c!861155 (<= (+ 1 from!1228) 0))))

(declare-fun b!5030372 () Bool)

(declare-fun call!350955 () Int)

(assert (=> b!5030372 (= e!3142430 call!350955)))

(declare-fun b!5030373 () Bool)

(declare-fun e!3142428 () List!58338)

(assert (=> b!5030373 (= e!3142428 (drop!2584 (t!370754 lt!2081738) (- (+ 1 from!1228) 1)))))

(declare-fun b!5030374 () Bool)

(declare-fun e!3142427 () Int)

(assert (=> b!5030374 (= e!3142427 0)))

(declare-fun b!5030375 () Bool)

(assert (=> b!5030375 (= e!3142427 (- call!350955 (+ 1 from!1228)))))

(declare-fun b!5030376 () Bool)

(assert (=> b!5030376 (= e!3142428 lt!2081738)))

(declare-fun b!5030377 () Bool)

(assert (=> b!5030377 (= e!3142430 e!3142427)))

(declare-fun c!861154 () Bool)

(assert (=> b!5030377 (= c!861154 (>= (+ 1 from!1228) call!350955))))

(declare-fun b!5030378 () Bool)

(assert (=> b!5030378 (= e!3142429 Nil!58214)))

(declare-fun bm!350950 () Bool)

(assert (=> bm!350950 (= call!350955 (size!38755 lt!2081738))))

(declare-fun b!5030379 () Bool)

(assert (=> b!5030379 (= e!3142429 e!3142428)))

(declare-fun c!861153 () Bool)

(assert (=> b!5030379 (= c!861153 (<= (+ 1 from!1228) 0))))

(assert (= (and d!1618880 c!861156) b!5030378))

(assert (= (and d!1618880 (not c!861156)) b!5030379))

(assert (= (and b!5030379 c!861153) b!5030376))

(assert (= (and b!5030379 (not c!861153)) b!5030373))

(assert (= (and d!1618880 res!2143959) b!5030371))

(assert (= (and b!5030371 c!861155) b!5030372))

(assert (= (and b!5030371 (not c!861155)) b!5030377))

(assert (= (and b!5030377 c!861154) b!5030374))

(assert (= (and b!5030377 (not c!861154)) b!5030375))

(assert (= (or b!5030372 b!5030377 b!5030375) bm!350950))

(declare-fun m!6065722 () Bool)

(assert (=> d!1618880 m!6065722))

(declare-fun m!6065724 () Bool)

(assert (=> d!1618880 m!6065724))

(declare-fun m!6065726 () Bool)

(assert (=> b!5030371 m!6065726))

(declare-fun m!6065728 () Bool)

(assert (=> b!5030373 m!6065728))

(declare-fun m!6065730 () Bool)

(assert (=> bm!350950 m!6065730))

(assert (=> b!5030092 d!1618880))

(declare-fun b!5030380 () Bool)

(declare-fun e!3142433 () List!58338)

(assert (=> b!5030380 (= e!3142433 (Cons!58214 (h!64662 (drop!2584 lt!2081738 (+ 1 from!1228))) (take!784 (t!370754 (drop!2584 lt!2081738 (+ 1 from!1228))) (- lt!2081739 1))))))

(declare-fun b!5030382 () Bool)

(assert (=> b!5030382 (= e!3142433 Nil!58214)))

(declare-fun b!5030383 () Bool)

(declare-fun e!3142434 () Int)

(declare-fun e!3142435 () Int)

(assert (=> b!5030383 (= e!3142434 e!3142435)))

(declare-fun c!861157 () Bool)

(assert (=> b!5030383 (= c!861157 (>= lt!2081739 (size!38755 (drop!2584 lt!2081738 (+ 1 from!1228)))))))

(declare-fun b!5030384 () Bool)

(assert (=> b!5030384 (= e!3142434 0)))

(declare-fun d!1618882 () Bool)

(declare-fun e!3142432 () Bool)

(assert (=> d!1618882 e!3142432))

(declare-fun res!2143960 () Bool)

(assert (=> d!1618882 (=> (not res!2143960) (not e!3142432))))

(declare-fun lt!2081848 () List!58338)

(assert (=> d!1618882 (= res!2143960 (= ((_ map implies) (content!10324 lt!2081848) (content!10324 (drop!2584 lt!2081738 (+ 1 from!1228)))) ((as const (InoxSet C!28124)) true)))))

(assert (=> d!1618882 (= lt!2081848 e!3142433)))

(declare-fun c!861159 () Bool)

(assert (=> d!1618882 (= c!861159 (or ((_ is Nil!58214) (drop!2584 lt!2081738 (+ 1 from!1228))) (<= lt!2081739 0)))))

(assert (=> d!1618882 (= (take!784 (drop!2584 lt!2081738 (+ 1 from!1228)) lt!2081739) lt!2081848)))

(declare-fun b!5030381 () Bool)

(assert (=> b!5030381 (= e!3142435 (size!38755 (drop!2584 lt!2081738 (+ 1 from!1228))))))

(declare-fun b!5030385 () Bool)

(assert (=> b!5030385 (= e!3142435 lt!2081739)))

(declare-fun b!5030386 () Bool)

(assert (=> b!5030386 (= e!3142432 (= (size!38755 lt!2081848) e!3142434))))

(declare-fun c!861158 () Bool)

(assert (=> b!5030386 (= c!861158 (<= lt!2081739 0))))

(assert (= (and d!1618882 c!861159) b!5030382))

(assert (= (and d!1618882 (not c!861159)) b!5030380))

(assert (= (and d!1618882 res!2143960) b!5030386))

(assert (= (and b!5030386 c!861158) b!5030384))

(assert (= (and b!5030386 (not c!861158)) b!5030383))

(assert (= (and b!5030383 c!861157) b!5030381))

(assert (= (and b!5030383 (not c!861157)) b!5030385))

(assert (=> b!5030381 m!6065482))

(declare-fun m!6065732 () Bool)

(assert (=> b!5030381 m!6065732))

(assert (=> b!5030383 m!6065482))

(assert (=> b!5030383 m!6065732))

(declare-fun m!6065734 () Bool)

(assert (=> b!5030386 m!6065734))

(declare-fun m!6065736 () Bool)

(assert (=> d!1618882 m!6065736))

(assert (=> d!1618882 m!6065482))

(declare-fun m!6065738 () Bool)

(assert (=> d!1618882 m!6065738))

(declare-fun m!6065740 () Bool)

(assert (=> b!5030380 m!6065740))

(assert (=> b!5030092 d!1618882))

(declare-fun d!1618884 () Bool)

(declare-fun c!861162 () Bool)

(assert (=> d!1618884 (= c!861162 ((_ is Node!15456) (c!861033 totalInput!1141)))))

(declare-fun e!3142440 () Bool)

(assert (=> d!1618884 (= (inv!76821 (c!861033 totalInput!1141)) e!3142440)))

(declare-fun b!5030393 () Bool)

(declare-fun inv!76825 (Conc!15456) Bool)

(assert (=> b!5030393 (= e!3142440 (inv!76825 (c!861033 totalInput!1141)))))

(declare-fun b!5030394 () Bool)

(declare-fun e!3142441 () Bool)

(assert (=> b!5030394 (= e!3142440 e!3142441)))

(declare-fun res!2143963 () Bool)

(assert (=> b!5030394 (= res!2143963 (not ((_ is Leaf!25638) (c!861033 totalInput!1141))))))

(assert (=> b!5030394 (=> res!2143963 e!3142441)))

(declare-fun b!5030395 () Bool)

(declare-fun inv!76826 (Conc!15456) Bool)

(assert (=> b!5030395 (= e!3142441 (inv!76826 (c!861033 totalInput!1141)))))

(assert (= (and d!1618884 c!861162) b!5030393))

(assert (= (and d!1618884 (not c!861162)) b!5030394))

(assert (= (and b!5030394 (not res!2143963)) b!5030395))

(declare-fun m!6065742 () Bool)

(assert (=> b!5030393 m!6065742))

(declare-fun m!6065744 () Bool)

(assert (=> b!5030395 m!6065744))

(assert (=> b!5030097 d!1618884))

(declare-fun c!861163 () Bool)

(declare-fun d!1618886 () Bool)

(assert (=> d!1618886 (= c!861163 (isEmpty!31481 (take!784 (drop!2584 lt!2081738 from!1228) lt!2081741)))))

(declare-fun e!3142442 () Bool)

(assert (=> d!1618886 (= (matchZipper!687 z!4747 (take!784 (drop!2584 lt!2081738 from!1228) lt!2081741)) e!3142442)))

(declare-fun b!5030396 () Bool)

(assert (=> b!5030396 (= e!3142442 (nullableZipper!945 z!4747))))

(declare-fun b!5030397 () Bool)

(assert (=> b!5030397 (= e!3142442 (matchZipper!687 (derivationStepZipper!732 z!4747 (head!10791 (take!784 (drop!2584 lt!2081738 from!1228) lt!2081741))) (tail!9924 (take!784 (drop!2584 lt!2081738 from!1228) lt!2081741))))))

(assert (= (and d!1618886 c!861163) b!5030396))

(assert (= (and d!1618886 (not c!861163)) b!5030397))

(assert (=> d!1618886 m!6065468))

(declare-fun m!6065746 () Bool)

(assert (=> d!1618886 m!6065746))

(declare-fun m!6065748 () Bool)

(assert (=> b!5030396 m!6065748))

(assert (=> b!5030397 m!6065468))

(declare-fun m!6065750 () Bool)

(assert (=> b!5030397 m!6065750))

(assert (=> b!5030397 m!6065750))

(declare-fun m!6065752 () Bool)

(assert (=> b!5030397 m!6065752))

(assert (=> b!5030397 m!6065468))

(declare-fun m!6065754 () Bool)

(assert (=> b!5030397 m!6065754))

(assert (=> b!5030397 m!6065752))

(assert (=> b!5030397 m!6065754))

(declare-fun m!6065756 () Bool)

(assert (=> b!5030397 m!6065756))

(assert (=> b!5030098 d!1618886))

(declare-fun e!3142444 () List!58338)

(declare-fun b!5030398 () Bool)

(assert (=> b!5030398 (= e!3142444 (Cons!58214 (h!64662 (drop!2584 lt!2081738 from!1228)) (take!784 (t!370754 (drop!2584 lt!2081738 from!1228)) (- lt!2081741 1))))))

(declare-fun b!5030400 () Bool)

(assert (=> b!5030400 (= e!3142444 Nil!58214)))

(declare-fun b!5030401 () Bool)

(declare-fun e!3142445 () Int)

(declare-fun e!3142446 () Int)

(assert (=> b!5030401 (= e!3142445 e!3142446)))

(declare-fun c!861164 () Bool)

(assert (=> b!5030401 (= c!861164 (>= lt!2081741 (size!38755 (drop!2584 lt!2081738 from!1228))))))

(declare-fun b!5030402 () Bool)

(assert (=> b!5030402 (= e!3142445 0)))

(declare-fun d!1618888 () Bool)

(declare-fun e!3142443 () Bool)

(assert (=> d!1618888 e!3142443))

(declare-fun res!2143964 () Bool)

(assert (=> d!1618888 (=> (not res!2143964) (not e!3142443))))

(declare-fun lt!2081849 () List!58338)

(assert (=> d!1618888 (= res!2143964 (= ((_ map implies) (content!10324 lt!2081849) (content!10324 (drop!2584 lt!2081738 from!1228))) ((as const (InoxSet C!28124)) true)))))

(assert (=> d!1618888 (= lt!2081849 e!3142444)))

(declare-fun c!861166 () Bool)

(assert (=> d!1618888 (= c!861166 (or ((_ is Nil!58214) (drop!2584 lt!2081738 from!1228)) (<= lt!2081741 0)))))

(assert (=> d!1618888 (= (take!784 (drop!2584 lt!2081738 from!1228) lt!2081741) lt!2081849)))

(declare-fun b!5030399 () Bool)

(assert (=> b!5030399 (= e!3142446 (size!38755 (drop!2584 lt!2081738 from!1228)))))

(declare-fun b!5030403 () Bool)

(assert (=> b!5030403 (= e!3142446 lt!2081741)))

(declare-fun b!5030404 () Bool)

(assert (=> b!5030404 (= e!3142443 (= (size!38755 lt!2081849) e!3142445))))

(declare-fun c!861165 () Bool)

(assert (=> b!5030404 (= c!861165 (<= lt!2081741 0))))

(assert (= (and d!1618888 c!861166) b!5030400))

(assert (= (and d!1618888 (not c!861166)) b!5030398))

(assert (= (and d!1618888 res!2143964) b!5030404))

(assert (= (and b!5030404 c!861165) b!5030402))

(assert (= (and b!5030404 (not c!861165)) b!5030401))

(assert (= (and b!5030401 c!861164) b!5030399))

(assert (= (and b!5030401 (not c!861164)) b!5030403))

(assert (=> b!5030399 m!6065466))

(declare-fun m!6065758 () Bool)

(assert (=> b!5030399 m!6065758))

(assert (=> b!5030401 m!6065466))

(assert (=> b!5030401 m!6065758))

(declare-fun m!6065760 () Bool)

(assert (=> b!5030404 m!6065760))

(declare-fun m!6065762 () Bool)

(assert (=> d!1618888 m!6065762))

(assert (=> d!1618888 m!6065466))

(declare-fun m!6065764 () Bool)

(assert (=> d!1618888 m!6065764))

(declare-fun m!6065766 () Bool)

(assert (=> b!5030398 m!6065766))

(assert (=> b!5030098 d!1618888))

(declare-fun d!1618890 () Bool)

(declare-fun e!3142451 () Bool)

(assert (=> d!1618890 e!3142451))

(declare-fun res!2143965 () Bool)

(assert (=> d!1618890 (=> (not res!2143965) (not e!3142451))))

(declare-fun lt!2081850 () List!58338)

(assert (=> d!1618890 (= res!2143965 (= ((_ map implies) (content!10324 lt!2081850) (content!10324 lt!2081738)) ((as const (InoxSet C!28124)) true)))))

(declare-fun e!3142449 () List!58338)

(assert (=> d!1618890 (= lt!2081850 e!3142449)))

(declare-fun c!861170 () Bool)

(assert (=> d!1618890 (= c!861170 ((_ is Nil!58214) lt!2081738))))

(assert (=> d!1618890 (= (drop!2584 lt!2081738 from!1228) lt!2081850)))

(declare-fun b!5030405 () Bool)

(declare-fun e!3142450 () Int)

(assert (=> b!5030405 (= e!3142451 (= (size!38755 lt!2081850) e!3142450))))

(declare-fun c!861169 () Bool)

(assert (=> b!5030405 (= c!861169 (<= from!1228 0))))

(declare-fun b!5030406 () Bool)

(declare-fun call!350956 () Int)

(assert (=> b!5030406 (= e!3142450 call!350956)))

(declare-fun b!5030407 () Bool)

(declare-fun e!3142448 () List!58338)

(assert (=> b!5030407 (= e!3142448 (drop!2584 (t!370754 lt!2081738) (- from!1228 1)))))

(declare-fun b!5030408 () Bool)

(declare-fun e!3142447 () Int)

(assert (=> b!5030408 (= e!3142447 0)))

(declare-fun b!5030409 () Bool)

(assert (=> b!5030409 (= e!3142447 (- call!350956 from!1228))))

(declare-fun b!5030410 () Bool)

(assert (=> b!5030410 (= e!3142448 lt!2081738)))

(declare-fun b!5030411 () Bool)

(assert (=> b!5030411 (= e!3142450 e!3142447)))

(declare-fun c!861168 () Bool)

(assert (=> b!5030411 (= c!861168 (>= from!1228 call!350956))))

(declare-fun b!5030412 () Bool)

(assert (=> b!5030412 (= e!3142449 Nil!58214)))

(declare-fun bm!350951 () Bool)

(assert (=> bm!350951 (= call!350956 (size!38755 lt!2081738))))

(declare-fun b!5030413 () Bool)

(assert (=> b!5030413 (= e!3142449 e!3142448)))

(declare-fun c!861167 () Bool)

(assert (=> b!5030413 (= c!861167 (<= from!1228 0))))

(assert (= (and d!1618890 c!861170) b!5030412))

(assert (= (and d!1618890 (not c!861170)) b!5030413))

(assert (= (and b!5030413 c!861167) b!5030410))

(assert (= (and b!5030413 (not c!861167)) b!5030407))

(assert (= (and d!1618890 res!2143965) b!5030405))

(assert (= (and b!5030405 c!861169) b!5030406))

(assert (= (and b!5030405 (not c!861169)) b!5030411))

(assert (= (and b!5030411 c!861168) b!5030408))

(assert (= (and b!5030411 (not c!861168)) b!5030409))

(assert (= (or b!5030406 b!5030411 b!5030409) bm!350951))

(declare-fun m!6065768 () Bool)

(assert (=> d!1618890 m!6065768))

(assert (=> d!1618890 m!6065724))

(declare-fun m!6065770 () Bool)

(assert (=> b!5030405 m!6065770))

(declare-fun m!6065772 () Bool)

(assert (=> b!5030407 m!6065772))

(assert (=> bm!350951 m!6065730))

(assert (=> b!5030098 d!1618890))

(declare-fun d!1618892 () Bool)

(declare-fun lt!2081853 () Int)

(assert (=> d!1618892 (= lt!2081853 (size!38755 (list!18811 totalInput!1141)))))

(declare-fun size!38756 (Conc!15456) Int)

(assert (=> d!1618892 (= lt!2081853 (size!38756 (c!861033 totalInput!1141)))))

(assert (=> d!1618892 (= (size!38752 totalInput!1141) lt!2081853)))

(declare-fun bs!1188540 () Bool)

(assert (= bs!1188540 d!1618892))

(assert (=> bs!1188540 m!6065488))

(assert (=> bs!1188540 m!6065488))

(assert (=> bs!1188540 m!6065570))

(declare-fun m!6065774 () Bool)

(assert (=> bs!1188540 m!6065774))

(assert (=> b!5030094 d!1618892))

(declare-fun bs!1188541 () Bool)

(declare-fun d!1618894 () Bool)

(assert (= bs!1188541 (and d!1618894 d!1618836)))

(declare-fun lambda!249694 () Int)

(assert (=> bs!1188541 (not (= lambda!249694 lambda!249680))))

(declare-fun bs!1188542 () Bool)

(assert (= bs!1188542 (and d!1618894 b!5030294)))

(assert (=> bs!1188542 (not (= lambda!249694 lambda!249681))))

(declare-fun bs!1188543 () Bool)

(assert (= bs!1188543 (and d!1618894 b!5030295)))

(assert (=> bs!1188543 (not (= lambda!249694 lambda!249682))))

(declare-fun exists!1417 ((InoxSet Context!6724) Int) Bool)

(assert (=> d!1618894 (= (nullableZipper!945 lt!2081742) (exists!1417 lt!2081742 lambda!249694))))

(declare-fun bs!1188544 () Bool)

(assert (= bs!1188544 d!1618894))

(declare-fun m!6065776 () Bool)

(assert (=> bs!1188544 m!6065776))

(assert (=> b!5030099 d!1618894))

(declare-fun condSetEmpty!29006 () Bool)

(assert (=> setNonEmpty!29000 (= condSetEmpty!29006 (= setRest!29000 ((as const (Array Context!6724 Bool)) false)))))

(declare-fun setRes!29006 () Bool)

(assert (=> setNonEmpty!29000 (= tp!1409380 setRes!29006)))

(declare-fun setIsEmpty!29006 () Bool)

(assert (=> setIsEmpty!29006 setRes!29006))

(declare-fun tp!1409407 () Bool)

(declare-fun setNonEmpty!29006 () Bool)

(declare-fun e!3142454 () Bool)

(declare-fun setElem!29006 () Context!6724)

(assert (=> setNonEmpty!29006 (= setRes!29006 (and tp!1409407 (inv!76822 setElem!29006) e!3142454))))

(declare-fun setRest!29006 () (InoxSet Context!6724))

(assert (=> setNonEmpty!29006 (= setRest!29000 ((_ map or) (store ((as const (Array Context!6724 Bool)) false) setElem!29006 true) setRest!29006))))

(declare-fun b!5030418 () Bool)

(declare-fun tp!1409406 () Bool)

(assert (=> b!5030418 (= e!3142454 tp!1409406)))

(assert (= (and setNonEmpty!29000 condSetEmpty!29006) setIsEmpty!29006))

(assert (= (and setNonEmpty!29000 (not condSetEmpty!29006)) setNonEmpty!29006))

(assert (= setNonEmpty!29006 b!5030418))

(declare-fun m!6065778 () Bool)

(assert (=> setNonEmpty!29006 m!6065778))

(declare-fun b!5030423 () Bool)

(declare-fun e!3142457 () Bool)

(declare-fun tp!1409412 () Bool)

(declare-fun tp!1409413 () Bool)

(assert (=> b!5030423 (= e!3142457 (and tp!1409412 tp!1409413))))

(assert (=> b!5030091 (= tp!1409379 e!3142457)))

(assert (= (and b!5030091 ((_ is Cons!58215) (exprs!3862 setElem!29000))) b!5030423))

(declare-fun tp!1409421 () Bool)

(declare-fun b!5030432 () Bool)

(declare-fun tp!1409422 () Bool)

(declare-fun e!3142462 () Bool)

(assert (=> b!5030432 (= e!3142462 (and (inv!76821 (left!42595 (c!861033 totalInput!1141))) tp!1409422 (inv!76821 (right!42925 (c!861033 totalInput!1141))) tp!1409421))))

(declare-fun b!5030434 () Bool)

(declare-fun e!3142463 () Bool)

(declare-fun tp!1409420 () Bool)

(assert (=> b!5030434 (= e!3142463 tp!1409420)))

(declare-fun b!5030433 () Bool)

(declare-fun inv!76828 (IArray!30973) Bool)

(assert (=> b!5030433 (= e!3142462 (and (inv!76828 (xs!18782 (c!861033 totalInput!1141))) e!3142463))))

(assert (=> b!5030097 (= tp!1409378 (and (inv!76821 (c!861033 totalInput!1141)) e!3142462))))

(assert (= (and b!5030097 ((_ is Node!15456) (c!861033 totalInput!1141))) b!5030432))

(assert (= b!5030433 b!5030434))

(assert (= (and b!5030097 ((_ is Leaf!25638) (c!861033 totalInput!1141))) b!5030433))

(declare-fun m!6065780 () Bool)

(assert (=> b!5030432 m!6065780))

(declare-fun m!6065782 () Bool)

(assert (=> b!5030432 m!6065782))

(declare-fun m!6065784 () Bool)

(assert (=> b!5030433 m!6065784))

(assert (=> b!5030097 m!6065464))

(check-sat (not b!5030202) (not b!5030393) (not b!5030371) (not b!5030373) (not d!1618828) (not b!5030381) (not d!1618876) (not bm!350947) (not b!5030344) (not b!5030398) (not b!5030395) (not d!1618882) (not b!5030175) (not b!5030226) (not d!1618860) (not b!5030347) (not b!5030294) (not b!5030380) (not d!1618836) (not d!1618878) (not b!5030386) (not b!5030397) (not b!5030147) (not d!1618832) (not b!5030343) (not b!5030200) (not bm!350950) (not b!5030423) (not b!5030401) (not b!5030433) (not bm!350951) (not d!1618892) (not d!1618858) (not b!5030205) (not b!5030224) (not b!5030434) (not b!5030418) (not d!1618834) (not b!5030404) (not d!1618888) (not b!5030335) (not d!1618880) (not b!5030407) (not b!5030174) (not b!5030150) (not d!1618890) (not b!5030336) (not b!5030399) (not b!5030146) (not b!5030432) (not setNonEmpty!29006) (not b!5030199) (not d!1618862) (not b!5030383) (not b!5030396) (not d!1618886) (not b!5030405) (not d!1618894) (not b!5030295) (not bm!350935) (not b!5030370) (not b!5030097) (not d!1618826) (not b!5030144) (not bm!350948) (not b!5030341))
(check-sat)
