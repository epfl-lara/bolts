; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!214852 () Bool)

(assert start!214852)

(declare-fun setRes!19319 () Bool)

(declare-fun setNonEmpty!19319 () Bool)

(declare-fun e!1410556 () Bool)

(declare-fun tp!686546 () Bool)

(declare-datatypes ((C!12754 0))(
  ( (C!12755 (val!7363 Int)) )
))
(declare-datatypes ((Regex!6304 0))(
  ( (ElementMatch!6304 (c!352735 C!12754)) (Concat!10606 (regOne!13120 Regex!6304) (regTwo!13120 Regex!6304)) (EmptyExpr!6304) (Star!6304 (reg!6633 Regex!6304)) (EmptyLang!6304) (Union!6304 (regOne!13121 Regex!6304) (regTwo!13121 Regex!6304)) )
))
(declare-datatypes ((List!25917 0))(
  ( (Nil!25833) (Cons!25833 (h!31234 Regex!6304) (t!198573 List!25917)) )
))
(declare-datatypes ((Context!3748 0))(
  ( (Context!3749 (exprs!2374 List!25917)) )
))
(declare-fun setElem!19319 () Context!3748)

(declare-fun inv!34911 (Context!3748) Bool)

(assert (=> setNonEmpty!19319 (= setRes!19319 (and tp!686546 (inv!34911 setElem!19319) e!1410556))))

(declare-fun z!3830 () (Set Context!3748))

(declare-fun setRest!19319 () (Set Context!3748))

(assert (=> setNonEmpty!19319 (= z!3830 (set.union (set.insert setElem!19319 (as set.empty (Set Context!3748))) setRest!19319))))

(declare-fun res!949143 () Bool)

(declare-fun e!1410557 () Bool)

(assert (=> start!214852 (=> (not res!949143) (not e!1410557))))

(declare-datatypes ((List!25918 0))(
  ( (Nil!25834) (Cons!25834 (h!31235 C!12754) (t!198574 List!25918)) )
))
(declare-datatypes ((IArray!16885 0))(
  ( (IArray!16886 (innerList!8500 List!25918)) )
))
(declare-datatypes ((Conc!8440 0))(
  ( (Node!8440 (left!19855 Conc!8440) (right!20185 Conc!8440) (csize!17110 Int) (cheight!8651 Int)) (Leaf!12360 (xs!11382 IArray!16885) (csize!17111 Int)) (Empty!8440) )
))
(declare-datatypes ((BalanceConc!16642 0))(
  ( (BalanceConc!16643 (c!352736 Conc!8440)) )
))
(declare-fun input!5506 () BalanceConc!16642)

(declare-fun totalInput!846 () BalanceConc!16642)

(declare-fun isSuffix!741 (List!25918 List!25918) Bool)

(declare-fun list!9996 (BalanceConc!16642) List!25918)

(assert (=> start!214852 (= res!949143 (isSuffix!741 (list!9996 input!5506) (list!9996 totalInput!846)))))

(assert (=> start!214852 e!1410557))

(declare-fun e!1410559 () Bool)

(declare-fun inv!34912 (BalanceConc!16642) Bool)

(assert (=> start!214852 (and (inv!34912 input!5506) e!1410559)))

(declare-fun e!1410561 () Bool)

(assert (=> start!214852 (and (inv!34912 totalInput!846) e!1410561)))

(declare-fun condSetEmpty!19319 () Bool)

(assert (=> start!214852 (= condSetEmpty!19319 (= z!3830 (as set.empty (Set Context!3748))))))

(assert (=> start!214852 setRes!19319))

(declare-fun b!2208092 () Bool)

(declare-fun tp!686543 () Bool)

(declare-fun inv!34913 (Conc!8440) Bool)

(assert (=> b!2208092 (= e!1410561 (and (inv!34913 (c!352736 totalInput!846)) tp!686543))))

(declare-fun b!2208093 () Bool)

(declare-fun res!949142 () Bool)

(declare-fun e!1410560 () Bool)

(assert (=> b!2208093 (=> (not res!949142) (not e!1410560))))

(declare-fun isBalanced!2598 (Conc!8440) Bool)

(assert (=> b!2208093 (= res!949142 (isBalanced!2598 (c!352736 input!5506)))))

(declare-fun b!2208094 () Bool)

(declare-fun tp!686544 () Bool)

(assert (=> b!2208094 (= e!1410559 (and (inv!34913 (c!352736 input!5506)) tp!686544))))

(declare-fun b!2208095 () Bool)

(declare-fun tp!686545 () Bool)

(assert (=> b!2208095 (= e!1410556 tp!686545)))

(declare-fun b!2208096 () Bool)

(declare-fun lt!825729 () Int)

(declare-fun lt!825730 () Int)

(assert (=> b!2208096 (= e!1410560 (or (> 0 lt!825729) (> lt!825729 lt!825730)))))

(declare-fun setIsEmpty!19319 () Bool)

(assert (=> setIsEmpty!19319 setRes!19319))

(declare-fun b!2208097 () Bool)

(declare-fun e!1410558 () Int)

(assert (=> b!2208097 (= e!1410558 (- 1))))

(declare-fun b!2208098 () Bool)

(declare-fun lt!825727 () Int)

(assert (=> b!2208098 (= e!1410558 (- lt!825727 1))))

(declare-fun b!2208099 () Bool)

(assert (=> b!2208099 (= e!1410557 e!1410560)))

(declare-fun res!949144 () Bool)

(assert (=> b!2208099 (=> (not res!949144) (not e!1410560))))

(assert (=> b!2208099 (= res!949144 (>= lt!825729 0))))

(declare-fun lt!825728 () Int)

(declare-fun furthestNullablePosition!430 ((Set Context!3748) Int BalanceConc!16642 Int Int) Int)

(assert (=> b!2208099 (= lt!825729 (+ 1 (- (furthestNullablePosition!430 z!3830 lt!825727 totalInput!846 lt!825728 e!1410558) lt!825727)))))

(declare-fun c!352734 () Bool)

(declare-fun nullableZipper!584 ((Set Context!3748)) Bool)

(assert (=> b!2208099 (= c!352734 (nullableZipper!584 z!3830))))

(assert (=> b!2208099 (= lt!825727 (- lt!825728 lt!825730))))

(declare-fun size!20128 (BalanceConc!16642) Int)

(assert (=> b!2208099 (= lt!825730 (size!20128 input!5506))))

(assert (=> b!2208099 (= lt!825728 (size!20128 totalInput!846))))

(assert (= (and start!214852 res!949143) b!2208099))

(assert (= (and b!2208099 c!352734) b!2208098))

(assert (= (and b!2208099 (not c!352734)) b!2208097))

(assert (= (and b!2208099 res!949144) b!2208093))

(assert (= (and b!2208093 res!949142) b!2208096))

(assert (= start!214852 b!2208094))

(assert (= start!214852 b!2208092))

(assert (= (and start!214852 condSetEmpty!19319) setIsEmpty!19319))

(assert (= (and start!214852 (not condSetEmpty!19319)) setNonEmpty!19319))

(assert (= setNonEmpty!19319 b!2208095))

(declare-fun m!2649743 () Bool)

(assert (=> setNonEmpty!19319 m!2649743))

(declare-fun m!2649745 () Bool)

(assert (=> b!2208093 m!2649745))

(declare-fun m!2649747 () Bool)

(assert (=> start!214852 m!2649747))

(declare-fun m!2649749 () Bool)

(assert (=> start!214852 m!2649749))

(declare-fun m!2649751 () Bool)

(assert (=> start!214852 m!2649751))

(declare-fun m!2649753 () Bool)

(assert (=> start!214852 m!2649753))

(assert (=> start!214852 m!2649747))

(assert (=> start!214852 m!2649749))

(declare-fun m!2649755 () Bool)

(assert (=> start!214852 m!2649755))

(declare-fun m!2649757 () Bool)

(assert (=> b!2208094 m!2649757))

(declare-fun m!2649759 () Bool)

(assert (=> b!2208092 m!2649759))

(declare-fun m!2649761 () Bool)

(assert (=> b!2208099 m!2649761))

(declare-fun m!2649763 () Bool)

(assert (=> b!2208099 m!2649763))

(declare-fun m!2649765 () Bool)

(assert (=> b!2208099 m!2649765))

(declare-fun m!2649767 () Bool)

(assert (=> b!2208099 m!2649767))

(push 1)

(assert (not b!2208092))

(assert (not b!2208094))

(assert (not setNonEmpty!19319))

(assert (not b!2208095))

(assert (not b!2208099))

(assert (not start!214852))

(assert (not b!2208093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!659926 () Bool)

(declare-fun lambda!83384 () Int)

(declare-fun forall!5284 (List!25917 Int) Bool)

(assert (=> d!659926 (= (inv!34911 setElem!19319) (forall!5284 (exprs!2374 setElem!19319) lambda!83384))))

(declare-fun bs!451201 () Bool)

(assert (= bs!451201 d!659926))

(declare-fun m!2649811 () Bool)

(assert (=> bs!451201 m!2649811))

(assert (=> setNonEmpty!19319 d!659926))

(declare-fun d!659942 () Bool)

(declare-fun c!352747 () Bool)

(assert (=> d!659942 (= c!352747 (is-Node!8440 (c!352736 totalInput!846)))))

(declare-fun e!1410593 () Bool)

(assert (=> d!659942 (= (inv!34913 (c!352736 totalInput!846)) e!1410593)))

(declare-fun b!2208142 () Bool)

(declare-fun inv!34917 (Conc!8440) Bool)

(assert (=> b!2208142 (= e!1410593 (inv!34917 (c!352736 totalInput!846)))))

(declare-fun b!2208143 () Bool)

(declare-fun e!1410594 () Bool)

(assert (=> b!2208143 (= e!1410593 e!1410594)))

(declare-fun res!949162 () Bool)

(assert (=> b!2208143 (= res!949162 (not (is-Leaf!12360 (c!352736 totalInput!846))))))

(assert (=> b!2208143 (=> res!949162 e!1410594)))

(declare-fun b!2208144 () Bool)

(declare-fun inv!34918 (Conc!8440) Bool)

(assert (=> b!2208144 (= e!1410594 (inv!34918 (c!352736 totalInput!846)))))

(assert (= (and d!659942 c!352747) b!2208142))

(assert (= (and d!659942 (not c!352747)) b!2208143))

(assert (= (and b!2208143 (not res!949162)) b!2208144))

(declare-fun m!2649813 () Bool)

(assert (=> b!2208142 m!2649813))

(declare-fun m!2649815 () Bool)

(assert (=> b!2208144 m!2649815))

(assert (=> b!2208092 d!659942))

(declare-fun d!659944 () Bool)

(declare-fun res!949176 () Bool)

(declare-fun e!1410600 () Bool)

(assert (=> d!659944 (=> res!949176 e!1410600)))

(assert (=> d!659944 (= res!949176 (not (is-Node!8440 (c!352736 input!5506))))))

(assert (=> d!659944 (= (isBalanced!2598 (c!352736 input!5506)) e!1410600)))

(declare-fun b!2208157 () Bool)

(declare-fun e!1410599 () Bool)

(assert (=> b!2208157 (= e!1410600 e!1410599)))

(declare-fun res!949180 () Bool)

(assert (=> b!2208157 (=> (not res!949180) (not e!1410599))))

(declare-fun height!1265 (Conc!8440) Int)

(assert (=> b!2208157 (= res!949180 (<= (- 1) (- (height!1265 (left!19855 (c!352736 input!5506))) (height!1265 (right!20185 (c!352736 input!5506))))))))

(declare-fun b!2208158 () Bool)

(declare-fun res!949178 () Bool)

(assert (=> b!2208158 (=> (not res!949178) (not e!1410599))))

(declare-fun isEmpty!14773 (Conc!8440) Bool)

(assert (=> b!2208158 (= res!949178 (not (isEmpty!14773 (left!19855 (c!352736 input!5506)))))))

(declare-fun b!2208159 () Bool)

(declare-fun res!949179 () Bool)

(assert (=> b!2208159 (=> (not res!949179) (not e!1410599))))

(assert (=> b!2208159 (= res!949179 (isBalanced!2598 (left!19855 (c!352736 input!5506))))))

(declare-fun b!2208160 () Bool)

(declare-fun res!949175 () Bool)

(assert (=> b!2208160 (=> (not res!949175) (not e!1410599))))

(assert (=> b!2208160 (= res!949175 (<= (- (height!1265 (left!19855 (c!352736 input!5506))) (height!1265 (right!20185 (c!352736 input!5506)))) 1))))

(declare-fun b!2208161 () Bool)

(declare-fun res!949177 () Bool)

(assert (=> b!2208161 (=> (not res!949177) (not e!1410599))))

(assert (=> b!2208161 (= res!949177 (isBalanced!2598 (right!20185 (c!352736 input!5506))))))

(declare-fun b!2208162 () Bool)

(assert (=> b!2208162 (= e!1410599 (not (isEmpty!14773 (right!20185 (c!352736 input!5506)))))))

(assert (= (and d!659944 (not res!949176)) b!2208157))

(assert (= (and b!2208157 res!949180) b!2208160))

(assert (= (and b!2208160 res!949175) b!2208159))

(assert (= (and b!2208159 res!949179) b!2208161))

(assert (= (and b!2208161 res!949177) b!2208158))

(assert (= (and b!2208158 res!949178) b!2208162))

(declare-fun m!2649817 () Bool)

(assert (=> b!2208161 m!2649817))

(declare-fun m!2649819 () Bool)

(assert (=> b!2208162 m!2649819))

(declare-fun m!2649821 () Bool)

(assert (=> b!2208157 m!2649821))

(declare-fun m!2649823 () Bool)

(assert (=> b!2208157 m!2649823))

(declare-fun m!2649825 () Bool)

(assert (=> b!2208158 m!2649825))

(assert (=> b!2208160 m!2649821))

(assert (=> b!2208160 m!2649823))

(declare-fun m!2649827 () Bool)

(assert (=> b!2208159 m!2649827))

(assert (=> b!2208093 d!659944))

(declare-fun d!659946 () Bool)

(declare-fun c!352748 () Bool)

(assert (=> d!659946 (= c!352748 (is-Node!8440 (c!352736 input!5506)))))

(declare-fun e!1410601 () Bool)

(assert (=> d!659946 (= (inv!34913 (c!352736 input!5506)) e!1410601)))

(declare-fun b!2208163 () Bool)

(assert (=> b!2208163 (= e!1410601 (inv!34917 (c!352736 input!5506)))))

(declare-fun b!2208164 () Bool)

(declare-fun e!1410602 () Bool)

(assert (=> b!2208164 (= e!1410601 e!1410602)))

(declare-fun res!949181 () Bool)

(assert (=> b!2208164 (= res!949181 (not (is-Leaf!12360 (c!352736 input!5506))))))

(assert (=> b!2208164 (=> res!949181 e!1410602)))

(declare-fun b!2208165 () Bool)

(assert (=> b!2208165 (= e!1410602 (inv!34918 (c!352736 input!5506)))))

(assert (= (and d!659946 c!352748) b!2208163))

(assert (= (and d!659946 (not c!352748)) b!2208164))

(assert (= (and b!2208164 (not res!949181)) b!2208165))

(declare-fun m!2649829 () Bool)

(assert (=> b!2208163 m!2649829))

(declare-fun m!2649831 () Bool)

(assert (=> b!2208165 m!2649831))

(assert (=> b!2208094 d!659946))

(declare-fun d!659948 () Bool)

(declare-fun list!9998 (Conc!8440) List!25918)

(assert (=> d!659948 (= (list!9996 totalInput!846) (list!9998 (c!352736 totalInput!846)))))

(declare-fun bs!451202 () Bool)

(assert (= bs!451202 d!659948))

(declare-fun m!2649833 () Bool)

(assert (=> bs!451202 m!2649833))

(assert (=> start!214852 d!659948))

(declare-fun d!659950 () Bool)

(declare-fun e!1410605 () Bool)

(assert (=> d!659950 e!1410605))

(declare-fun res!949184 () Bool)

(assert (=> d!659950 (=> res!949184 e!1410605)))

(declare-fun lt!825748 () Bool)

(assert (=> d!659950 (= res!949184 (not lt!825748))))

(declare-fun drop!1485 (List!25918 Int) List!25918)

(declare-fun size!20130 (List!25918) Int)

(assert (=> d!659950 (= lt!825748 (= (list!9996 input!5506) (drop!1485 (list!9996 totalInput!846) (- (size!20130 (list!9996 totalInput!846)) (size!20130 (list!9996 input!5506))))))))

(assert (=> d!659950 (= (isSuffix!741 (list!9996 input!5506) (list!9996 totalInput!846)) lt!825748)))

(declare-fun b!2208168 () Bool)

(assert (=> b!2208168 (= e!1410605 (>= (size!20130 (list!9996 totalInput!846)) (size!20130 (list!9996 input!5506))))))

(assert (= (and d!659950 (not res!949184)) b!2208168))

(assert (=> d!659950 m!2649749))

(declare-fun m!2649835 () Bool)

(assert (=> d!659950 m!2649835))

(assert (=> d!659950 m!2649747))

(declare-fun m!2649837 () Bool)

(assert (=> d!659950 m!2649837))

(assert (=> d!659950 m!2649749))

(declare-fun m!2649839 () Bool)

(assert (=> d!659950 m!2649839))

(assert (=> b!2208168 m!2649749))

(assert (=> b!2208168 m!2649835))

(assert (=> b!2208168 m!2649747))

(assert (=> b!2208168 m!2649837))

(assert (=> start!214852 d!659950))

(declare-fun d!659952 () Bool)

(assert (=> d!659952 (= (inv!34912 totalInput!846) (isBalanced!2598 (c!352736 totalInput!846)))))

(declare-fun bs!451203 () Bool)

(assert (= bs!451203 d!659952))

(declare-fun m!2649841 () Bool)

(assert (=> bs!451203 m!2649841))

(assert (=> start!214852 d!659952))

(declare-fun d!659954 () Bool)

(assert (=> d!659954 (= (list!9996 input!5506) (list!9998 (c!352736 input!5506)))))

(declare-fun bs!451204 () Bool)

(assert (= bs!451204 d!659954))

(declare-fun m!2649843 () Bool)

(assert (=> bs!451204 m!2649843))

(assert (=> start!214852 d!659954))

(declare-fun d!659956 () Bool)

(assert (=> d!659956 (= (inv!34912 input!5506) (isBalanced!2598 (c!352736 input!5506)))))

(declare-fun bs!451205 () Bool)

(assert (= bs!451205 d!659956))

(assert (=> bs!451205 m!2649745))

(assert (=> start!214852 d!659956))

(declare-fun e!1410613 () Int)

(declare-fun b!2208179 () Bool)

(declare-fun e!1410612 () Int)

(declare-fun lt!825753 () (Set Context!3748))

(assert (=> b!2208179 (= e!1410612 (furthestNullablePosition!430 lt!825753 (+ lt!825727 1) totalInput!846 lt!825728 e!1410613))))

(declare-fun derivationStepZipper!327 ((Set Context!3748) C!12754) (Set Context!3748))

(declare-fun apply!6385 (BalanceConc!16642 Int) C!12754)

(assert (=> b!2208179 (= lt!825753 (derivationStepZipper!327 z!3830 (apply!6385 totalInput!846 lt!825727)))))

(declare-fun c!352753 () Bool)

(assert (=> b!2208179 (= c!352753 (nullableZipper!584 lt!825753))))

(declare-fun b!2208180 () Bool)

(assert (=> b!2208180 (= e!1410612 e!1410558)))

(declare-fun b!2208181 () Bool)

(assert (=> b!2208181 (= e!1410613 e!1410558)))

(declare-fun b!2208182 () Bool)

(declare-fun e!1410614 () Bool)

(declare-fun lostCauseZipper!391 ((Set Context!3748)) Bool)

(assert (=> b!2208182 (= e!1410614 (lostCauseZipper!391 z!3830))))

(declare-fun b!2208183 () Bool)

(assert (=> b!2208183 (= e!1410613 lt!825727)))

(declare-fun lt!825754 () Int)

(declare-fun d!659958 () Bool)

(assert (=> d!659958 (and (>= lt!825754 (- 1)) (< lt!825754 lt!825728) (>= lt!825754 e!1410558) (or (= lt!825754 e!1410558) (>= lt!825754 lt!825727)))))

(assert (=> d!659958 (= lt!825754 e!1410612)))

(declare-fun c!352754 () Bool)

(assert (=> d!659958 (= c!352754 e!1410614)))

(declare-fun res!949187 () Bool)

(assert (=> d!659958 (=> res!949187 e!1410614)))

(assert (=> d!659958 (= res!949187 (= lt!825727 lt!825728))))

(assert (=> d!659958 (and (>= lt!825727 0) (<= lt!825727 lt!825728))))

(assert (=> d!659958 (= (furthestNullablePosition!430 z!3830 lt!825727 totalInput!846 lt!825728 e!1410558) lt!825754)))

(assert (= (and d!659958 (not res!949187)) b!2208182))

(assert (= (and d!659958 c!352754) b!2208180))

(assert (= (and d!659958 (not c!352754)) b!2208179))

(assert (= (and b!2208179 c!352753) b!2208183))

(assert (= (and b!2208179 (not c!352753)) b!2208181))

(declare-fun m!2649845 () Bool)

(assert (=> b!2208179 m!2649845))

(declare-fun m!2649847 () Bool)

(assert (=> b!2208179 m!2649847))

(assert (=> b!2208179 m!2649847))

(declare-fun m!2649849 () Bool)

(assert (=> b!2208179 m!2649849))

(declare-fun m!2649851 () Bool)

(assert (=> b!2208179 m!2649851))

(declare-fun m!2649853 () Bool)

(assert (=> b!2208182 m!2649853))

(assert (=> b!2208099 d!659958))

(declare-fun d!659960 () Bool)

(declare-fun lambda!83387 () Int)

(declare-fun exists!872 ((Set Context!3748) Int) Bool)

(assert (=> d!659960 (= (nullableZipper!584 z!3830) (exists!872 z!3830 lambda!83387))))

(declare-fun bs!451206 () Bool)

(assert (= bs!451206 d!659960))

(declare-fun m!2649855 () Bool)

(assert (=> bs!451206 m!2649855))

(assert (=> b!2208099 d!659960))

(declare-fun d!659962 () Bool)

(declare-fun lt!825757 () Int)

(assert (=> d!659962 (= lt!825757 (size!20130 (list!9996 input!5506)))))

(declare-fun size!20131 (Conc!8440) Int)

(assert (=> d!659962 (= lt!825757 (size!20131 (c!352736 input!5506)))))

(assert (=> d!659962 (= (size!20128 input!5506) lt!825757)))

(declare-fun bs!451207 () Bool)

(assert (= bs!451207 d!659962))

(assert (=> bs!451207 m!2649747))

(assert (=> bs!451207 m!2649747))

(assert (=> bs!451207 m!2649837))

(declare-fun m!2649857 () Bool)

(assert (=> bs!451207 m!2649857))

(assert (=> b!2208099 d!659962))

(declare-fun d!659964 () Bool)

(declare-fun lt!825758 () Int)

(assert (=> d!659964 (= lt!825758 (size!20130 (list!9996 totalInput!846)))))

(assert (=> d!659964 (= lt!825758 (size!20131 (c!352736 totalInput!846)))))

(assert (=> d!659964 (= (size!20128 totalInput!846) lt!825758)))

(declare-fun bs!451208 () Bool)

(assert (= bs!451208 d!659964))

(assert (=> bs!451208 m!2649749))

(assert (=> bs!451208 m!2649749))

(assert (=> bs!451208 m!2649835))

(declare-fun m!2649859 () Bool)

(assert (=> bs!451208 m!2649859))

(assert (=> b!2208099 d!659964))

(declare-fun condSetEmpty!19325 () Bool)

(assert (=> setNonEmpty!19319 (= condSetEmpty!19325 (= setRest!19319 (as set.empty (Set Context!3748))))))

(declare-fun setRes!19325 () Bool)

(assert (=> setNonEmpty!19319 (= tp!686546 setRes!19325)))

(declare-fun setIsEmpty!19325 () Bool)

(assert (=> setIsEmpty!19325 setRes!19325))

(declare-fun e!1410617 () Bool)

(declare-fun setNonEmpty!19325 () Bool)

(declare-fun setElem!19325 () Context!3748)

(declare-fun tp!686564 () Bool)

(assert (=> setNonEmpty!19325 (= setRes!19325 (and tp!686564 (inv!34911 setElem!19325) e!1410617))))

(declare-fun setRest!19325 () (Set Context!3748))

(assert (=> setNonEmpty!19325 (= setRest!19319 (set.union (set.insert setElem!19325 (as set.empty (Set Context!3748))) setRest!19325))))

(declare-fun b!2208188 () Bool)

(declare-fun tp!686563 () Bool)

(assert (=> b!2208188 (= e!1410617 tp!686563)))

(assert (= (and setNonEmpty!19319 condSetEmpty!19325) setIsEmpty!19325))

(assert (= (and setNonEmpty!19319 (not condSetEmpty!19325)) setNonEmpty!19325))

(assert (= setNonEmpty!19325 b!2208188))

(declare-fun m!2649861 () Bool)

(assert (=> setNonEmpty!19325 m!2649861))

(declare-fun tp!686573 () Bool)

(declare-fun tp!686572 () Bool)

(declare-fun b!2208197 () Bool)

(declare-fun e!1410623 () Bool)

(assert (=> b!2208197 (= e!1410623 (and (inv!34913 (left!19855 (c!352736 totalInput!846))) tp!686572 (inv!34913 (right!20185 (c!352736 totalInput!846))) tp!686573))))

(declare-fun b!2208199 () Bool)

(declare-fun e!1410622 () Bool)

(declare-fun tp!686571 () Bool)

(assert (=> b!2208199 (= e!1410622 tp!686571)))

(declare-fun b!2208198 () Bool)

(declare-fun inv!34919 (IArray!16885) Bool)

(assert (=> b!2208198 (= e!1410623 (and (inv!34919 (xs!11382 (c!352736 totalInput!846))) e!1410622))))

(assert (=> b!2208092 (= tp!686543 (and (inv!34913 (c!352736 totalInput!846)) e!1410623))))

(assert (= (and b!2208092 (is-Node!8440 (c!352736 totalInput!846))) b!2208197))

(assert (= b!2208198 b!2208199))

(assert (= (and b!2208092 (is-Leaf!12360 (c!352736 totalInput!846))) b!2208198))

(declare-fun m!2649863 () Bool)

(assert (=> b!2208197 m!2649863))

(declare-fun m!2649865 () Bool)

(assert (=> b!2208197 m!2649865))

(declare-fun m!2649867 () Bool)

(assert (=> b!2208198 m!2649867))

(assert (=> b!2208092 m!2649759))

(declare-fun tp!686576 () Bool)

(declare-fun e!1410625 () Bool)

(declare-fun b!2208200 () Bool)

(declare-fun tp!686575 () Bool)

(assert (=> b!2208200 (= e!1410625 (and (inv!34913 (left!19855 (c!352736 input!5506))) tp!686575 (inv!34913 (right!20185 (c!352736 input!5506))) tp!686576))))

(declare-fun b!2208202 () Bool)

(declare-fun e!1410624 () Bool)

(declare-fun tp!686574 () Bool)

(assert (=> b!2208202 (= e!1410624 tp!686574)))

(declare-fun b!2208201 () Bool)

(assert (=> b!2208201 (= e!1410625 (and (inv!34919 (xs!11382 (c!352736 input!5506))) e!1410624))))

(assert (=> b!2208094 (= tp!686544 (and (inv!34913 (c!352736 input!5506)) e!1410625))))

(assert (= (and b!2208094 (is-Node!8440 (c!352736 input!5506))) b!2208200))

(assert (= b!2208201 b!2208202))

(assert (= (and b!2208094 (is-Leaf!12360 (c!352736 input!5506))) b!2208201))

(declare-fun m!2649869 () Bool)

(assert (=> b!2208200 m!2649869))

(declare-fun m!2649871 () Bool)

(assert (=> b!2208200 m!2649871))

(declare-fun m!2649873 () Bool)

(assert (=> b!2208201 m!2649873))

(assert (=> b!2208094 m!2649757))

(declare-fun b!2208207 () Bool)

(declare-fun e!1410628 () Bool)

(declare-fun tp!686581 () Bool)

(declare-fun tp!686582 () Bool)

(assert (=> b!2208207 (= e!1410628 (and tp!686581 tp!686582))))

(assert (=> b!2208095 (= tp!686545 e!1410628)))

(assert (= (and b!2208095 (is-Cons!25833 (exprs!2374 setElem!19319))) b!2208207))

(push 1)

(assert (not b!2208182))

(assert (not b!2208092))

(assert (not b!2208201))

(assert (not b!2208094))

(assert (not b!2208197))

(assert (not b!2208168))

(assert (not d!659952))

(assert (not b!2208158))

(assert (not d!659962))

(assert (not d!659950))

(assert (not b!2208162))

(assert (not b!2208200))

(assert (not b!2208160))

(assert (not b!2208161))

(assert (not b!2208199))

(assert (not b!2208188))

(assert (not d!659948))

(assert (not b!2208179))

(assert (not b!2208165))

(assert (not d!659956))

(assert (not d!659926))

(assert (not d!659960))

(assert (not b!2208142))

(assert (not d!659954))

(assert (not b!2208198))

(assert (not b!2208202))

(assert (not d!659964))

(assert (not b!2208163))

(assert (not b!2208159))

(assert (not b!2208157))

(assert (not setNonEmpty!19325))

(assert (not b!2208144))

(assert (not b!2208207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

