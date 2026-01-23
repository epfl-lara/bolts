; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!297404 () Bool)

(assert start!297404)

(declare-fun b!3176137 () Bool)

(declare-fun res!1290561 () Bool)

(declare-fun e!1978286 () Bool)

(assert (=> b!3176137 (=> (not res!1290561) (not e!1978286))))

(declare-fun totalInputSize!287 () Int)

(declare-datatypes ((C!19882 0))(
  ( (C!19883 (val!11977 Int)) )
))
(declare-datatypes ((List!35722 0))(
  ( (Nil!35598) (Cons!35598 (h!41018 C!19882) (t!234813 List!35722)) )
))
(declare-datatypes ((IArray!21091 0))(
  ( (IArray!21092 (innerList!10603 List!35722)) )
))
(declare-datatypes ((Conc!10543 0))(
  ( (Node!10543 (left!27688 Conc!10543) (right!28018 Conc!10543) (csize!21316 Int) (cheight!10754 Int)) (Leaf!16693 (xs!13661 IArray!21091) (csize!21317 Int)) (Empty!10543) )
))
(declare-datatypes ((BalanceConc!20724 0))(
  ( (BalanceConc!20725 (c!533668 Conc!10543)) )
))
(declare-fun totalInput!842 () BalanceConc!20724)

(declare-fun size!26896 (BalanceConc!20724) Int)

(assert (=> b!3176137 (= res!1290561 (= totalInputSize!287 (size!26896 totalInput!842)))))

(declare-fun b!3176138 () Bool)

(declare-fun res!1290560 () Bool)

(assert (=> b!3176138 (=> (not res!1290560) (not e!1978286))))

(declare-fun from!1034 () Int)

(assert (=> b!3176138 (= res!1290560 (not (= from!1034 totalInputSize!287)))))

(declare-fun b!3176139 () Bool)

(declare-fun e!1978285 () Bool)

(declare-fun tp!1004509 () Bool)

(assert (=> b!3176139 (= e!1978285 tp!1004509)))

(declare-fun setIsEmpty!26000 () Bool)

(declare-fun setRes!26000 () Bool)

(assert (=> setIsEmpty!26000 setRes!26000))

(declare-fun setNonEmpty!26000 () Bool)

(declare-fun tp!1004508 () Bool)

(declare-datatypes ((Regex!9848 0))(
  ( (ElementMatch!9848 (c!533669 C!19882)) (Concat!15169 (regOne!20208 Regex!9848) (regTwo!20208 Regex!9848)) (EmptyExpr!9848) (Star!9848 (reg!10177 Regex!9848)) (EmptyLang!9848) (Union!9848 (regOne!20209 Regex!9848) (regTwo!20209 Regex!9848)) )
))
(declare-datatypes ((List!35723 0))(
  ( (Nil!35599) (Cons!35599 (h!41019 Regex!9848) (t!234814 List!35723)) )
))
(declare-datatypes ((Context!5572 0))(
  ( (Context!5573 (exprs!3286 List!35723)) )
))
(declare-fun setElem!26000 () Context!5572)

(declare-fun inv!48399 (Context!5572) Bool)

(assert (=> setNonEmpty!26000 (= setRes!26000 (and tp!1004508 (inv!48399 setElem!26000) e!1978285))))

(declare-fun z!3818 () (Set Context!5572))

(declare-fun setRest!26000 () (Set Context!5572))

(assert (=> setNonEmpty!26000 (= z!3818 (set.union (set.insert setElem!26000 (as set.empty (Set Context!5572))) setRest!26000))))

(declare-fun b!3176140 () Bool)

(declare-fun e!1978288 () Bool)

(declare-fun tp!1004507 () Bool)

(declare-fun inv!48400 (Conc!10543) Bool)

(assert (=> b!3176140 (= e!1978288 (and (inv!48400 (c!533668 totalInput!842)) tp!1004507))))

(declare-fun b!3176142 () Bool)

(declare-fun lastNullablePos!114 () Int)

(declare-fun lt!1067905 () Int)

(assert (=> b!3176142 (= e!1978286 (or (< lt!1067905 (- 1)) (>= lt!1067905 totalInputSize!287) (< lt!1067905 lastNullablePos!114) (and (not (= lt!1067905 lastNullablePos!114)) (< lt!1067905 from!1034))))))

(declare-fun lt!1067906 () (Set Context!5572))

(declare-fun e!1978287 () Int)

(declare-fun furthestNullablePosition!438 ((Set Context!5572) Int BalanceConc!20724 Int Int) Int)

(assert (=> b!3176142 (= lt!1067905 (furthestNullablePosition!438 lt!1067906 (+ 1 from!1034) totalInput!842 totalInputSize!287 e!1978287))))

(declare-fun c!533667 () Bool)

(declare-fun nullableZipper!757 ((Set Context!5572)) Bool)

(assert (=> b!3176142 (= c!533667 (nullableZipper!757 lt!1067906))))

(declare-fun derivationStepZipper!538 ((Set Context!5572) C!19882) (Set Context!5572))

(declare-fun apply!8013 (BalanceConc!20724 Int) C!19882)

(assert (=> b!3176142 (= lt!1067906 (derivationStepZipper!538 z!3818 (apply!8013 totalInput!842 from!1034)))))

(declare-fun b!3176143 () Bool)

(declare-fun res!1290556 () Bool)

(assert (=> b!3176143 (=> (not res!1290556) (not e!1978286))))

(assert (=> b!3176143 (= res!1290556 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun b!3176144 () Bool)

(declare-fun res!1290562 () Bool)

(assert (=> b!3176144 (=> (not res!1290562) (not e!1978286))))

(declare-fun lostCauseZipper!634 ((Set Context!5572)) Bool)

(assert (=> b!3176144 (= res!1290562 (not (lostCauseZipper!634 z!3818)))))

(declare-fun b!3176145 () Bool)

(declare-fun e!1978289 () Bool)

(assert (=> b!3176145 (= e!1978289 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3176146 () Bool)

(declare-fun res!1290559 () Bool)

(assert (=> b!3176146 (=> (not res!1290559) (not e!1978286))))

(assert (=> b!3176146 (= res!1290559 e!1978289)))

(declare-fun res!1290558 () Bool)

(assert (=> b!3176146 (=> res!1290558 e!1978289)))

(assert (=> b!3176146 (= res!1290558 (not (nullableZipper!757 z!3818)))))

(declare-fun b!3176147 () Bool)

(assert (=> b!3176147 (= e!1978287 from!1034)))

(declare-fun res!1290557 () Bool)

(assert (=> start!297404 (=> (not res!1290557) (not e!1978286))))

(assert (=> start!297404 (= res!1290557 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297404 e!1978286))

(assert (=> start!297404 true))

(declare-fun condSetEmpty!26000 () Bool)

(assert (=> start!297404 (= condSetEmpty!26000 (= z!3818 (as set.empty (Set Context!5572))))))

(assert (=> start!297404 setRes!26000))

(declare-fun inv!48401 (BalanceConc!20724) Bool)

(assert (=> start!297404 (and (inv!48401 totalInput!842) e!1978288)))

(declare-fun b!3176141 () Bool)

(assert (=> b!3176141 (= e!1978287 lastNullablePos!114)))

(assert (= (and start!297404 res!1290557) b!3176137))

(assert (= (and b!3176137 res!1290561) b!3176143))

(assert (= (and b!3176143 res!1290556) b!3176146))

(assert (= (and b!3176146 (not res!1290558)) b!3176145))

(assert (= (and b!3176146 res!1290559) b!3176138))

(assert (= (and b!3176138 res!1290560) b!3176144))

(assert (= (and b!3176144 res!1290562) b!3176142))

(assert (= (and b!3176142 c!533667) b!3176147))

(assert (= (and b!3176142 (not c!533667)) b!3176141))

(assert (= (and start!297404 condSetEmpty!26000) setIsEmpty!26000))

(assert (= (and start!297404 (not condSetEmpty!26000)) setNonEmpty!26000))

(assert (= setNonEmpty!26000 b!3176139))

(assert (= start!297404 b!3176140))

(declare-fun m!3432591 () Bool)

(assert (=> b!3176144 m!3432591))

(declare-fun m!3432593 () Bool)

(assert (=> b!3176142 m!3432593))

(declare-fun m!3432595 () Bool)

(assert (=> b!3176142 m!3432595))

(declare-fun m!3432597 () Bool)

(assert (=> b!3176142 m!3432597))

(assert (=> b!3176142 m!3432597))

(declare-fun m!3432599 () Bool)

(assert (=> b!3176142 m!3432599))

(declare-fun m!3432601 () Bool)

(assert (=> b!3176140 m!3432601))

(declare-fun m!3432603 () Bool)

(assert (=> setNonEmpty!26000 m!3432603))

(declare-fun m!3432605 () Bool)

(assert (=> b!3176137 m!3432605))

(declare-fun m!3432607 () Bool)

(assert (=> b!3176146 m!3432607))

(declare-fun m!3432609 () Bool)

(assert (=> start!297404 m!3432609))

(push 1)

(assert (not start!297404))

(assert (not b!3176140))

(assert (not b!3176146))

(assert (not b!3176137))

(assert (not b!3176139))

(assert (not b!3176144))

(assert (not setNonEmpty!26000))

(assert (not b!3176142))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!869520 () Bool)

(declare-fun lambda!116210 () Int)

(declare-fun forall!7195 (List!35723 Int) Bool)

(assert (=> d!869520 (= (inv!48399 setElem!26000) (forall!7195 (exprs!3286 setElem!26000) lambda!116210))))

(declare-fun bs!539706 () Bool)

(assert (= bs!539706 d!869520))

(declare-fun m!3432639 () Bool)

(assert (=> bs!539706 m!3432639))

(assert (=> setNonEmpty!26000 d!869520))

(declare-fun bs!539707 () Bool)

(declare-fun b!3176189 () Bool)

(declare-fun d!869528 () Bool)

(assert (= bs!539707 (and b!3176189 d!869528)))

(declare-fun lambda!116224 () Int)

(declare-fun lambda!116223 () Int)

(assert (=> bs!539707 (not (= lambda!116224 lambda!116223))))

(declare-fun bs!539708 () Bool)

(declare-fun b!3176190 () Bool)

(assert (= bs!539708 (and b!3176190 d!869528)))

(declare-fun lambda!116225 () Int)

(assert (=> bs!539708 (not (= lambda!116225 lambda!116223))))

(declare-fun bs!539709 () Bool)

(assert (= bs!539709 (and b!3176190 b!3176189)))

(assert (=> bs!539709 (= lambda!116225 lambda!116224)))

(declare-fun bm!230854 () Bool)

(declare-datatypes ((List!35726 0))(
  ( (Nil!35602) (Cons!35602 (h!41022 Context!5572) (t!234817 List!35726)) )
))
(declare-fun call!230860 () List!35726)

(declare-fun toList!2118 ((Set Context!5572)) List!35726)

(assert (=> bm!230854 (= call!230860 (toList!2118 z!3818))))

(declare-fun lt!1067936 () List!35726)

(declare-fun c!533689 () Bool)

(declare-fun lt!1067937 () List!35726)

(declare-fun call!230859 () Bool)

(declare-fun bm!230855 () Bool)

(declare-fun exists!1219 (List!35726 Int) Bool)

(assert (=> bm!230855 (= call!230859 (exists!1219 (ite c!533689 lt!1067937 lt!1067936) (ite c!533689 lambda!116224 lambda!116225)))))

(declare-fun lt!1067943 () Bool)

(declare-datatypes ((Option!6949 0))(
  ( (None!6948) (Some!6948 (v!35370 List!35722)) )
))
(declare-fun isEmpty!19770 (Option!6949) Bool)

(declare-fun getLanguageWitness!588 ((Set Context!5572)) Option!6949)

(assert (=> d!869528 (= lt!1067943 (isEmpty!19770 (getLanguageWitness!588 z!3818)))))

(declare-fun forall!7196 ((Set Context!5572) Int) Bool)

(assert (=> d!869528 (= lt!1067943 (forall!7196 z!3818 lambda!116223))))

(declare-datatypes ((Unit!50070 0))(
  ( (Unit!50071) )
))
(declare-fun lt!1067940 () Unit!50070)

(declare-fun e!1978313 () Unit!50070)

(assert (=> d!869528 (= lt!1067940 e!1978313)))

(assert (=> d!869528 (= c!533689 (not (forall!7196 z!3818 lambda!116223)))))

(assert (=> d!869528 (= (lostCauseZipper!634 z!3818) lt!1067943)))

(declare-fun Unit!50072 () Unit!50070)

(assert (=> b!3176189 (= e!1978313 Unit!50072)))

(assert (=> b!3176189 (= lt!1067937 call!230860)))

(declare-fun lt!1067939 () Unit!50070)

(declare-fun lemmaNotForallThenExists!170 (List!35726 Int) Unit!50070)

(assert (=> b!3176189 (= lt!1067939 (lemmaNotForallThenExists!170 lt!1067937 lambda!116223))))

(assert (=> b!3176189 call!230859))

(declare-fun lt!1067942 () Unit!50070)

(assert (=> b!3176189 (= lt!1067942 lt!1067939)))

(declare-fun Unit!50073 () Unit!50070)

(assert (=> b!3176190 (= e!1978313 Unit!50073)))

(assert (=> b!3176190 (= lt!1067936 call!230860)))

(declare-fun lt!1067941 () Unit!50070)

(declare-fun lemmaForallThenNotExists!153 (List!35726 Int) Unit!50070)

(assert (=> b!3176190 (= lt!1067941 (lemmaForallThenNotExists!153 lt!1067936 lambda!116223))))

(assert (=> b!3176190 (not call!230859)))

(declare-fun lt!1067938 () Unit!50070)

(assert (=> b!3176190 (= lt!1067938 lt!1067941)))

(assert (= (and d!869528 c!533689) b!3176189))

(assert (= (and d!869528 (not c!533689)) b!3176190))

(assert (= (or b!3176189 b!3176190) bm!230854))

(assert (= (or b!3176189 b!3176190) bm!230855))

(declare-fun m!3432641 () Bool)

(assert (=> bm!230855 m!3432641))

(declare-fun m!3432643 () Bool)

(assert (=> b!3176190 m!3432643))

(declare-fun m!3432645 () Bool)

(assert (=> b!3176189 m!3432645))

(declare-fun m!3432647 () Bool)

(assert (=> bm!230854 m!3432647))

(declare-fun m!3432649 () Bool)

(assert (=> d!869528 m!3432649))

(assert (=> d!869528 m!3432649))

(declare-fun m!3432651 () Bool)

(assert (=> d!869528 m!3432651))

(declare-fun m!3432653 () Bool)

(assert (=> d!869528 m!3432653))

(assert (=> d!869528 m!3432653))

(assert (=> b!3176144 d!869528))

(declare-fun d!869530 () Bool)

(declare-fun isBalanced!3174 (Conc!10543) Bool)

(assert (=> d!869530 (= (inv!48401 totalInput!842) (isBalanced!3174 (c!533668 totalInput!842)))))

(declare-fun bs!539710 () Bool)

(assert (= bs!539710 d!869530))

(declare-fun m!3432655 () Bool)

(assert (=> bs!539710 m!3432655))

(assert (=> start!297404 d!869530))

(declare-fun bs!539711 () Bool)

(declare-fun d!869532 () Bool)

(assert (= bs!539711 (and d!869532 d!869528)))

(declare-fun lambda!116228 () Int)

(assert (=> bs!539711 (not (= lambda!116228 lambda!116223))))

(declare-fun bs!539712 () Bool)

(assert (= bs!539712 (and d!869532 b!3176189)))

(assert (=> bs!539712 (not (= lambda!116228 lambda!116224))))

(declare-fun bs!539713 () Bool)

(assert (= bs!539713 (and d!869532 b!3176190)))

(assert (=> bs!539713 (not (= lambda!116228 lambda!116225))))

(declare-fun exists!1220 ((Set Context!5572) Int) Bool)

(assert (=> d!869532 (= (nullableZipper!757 z!3818) (exists!1220 z!3818 lambda!116228))))

(declare-fun bs!539714 () Bool)

(assert (= bs!539714 d!869532))

(declare-fun m!3432657 () Bool)

(assert (=> bs!539714 m!3432657))

(assert (=> b!3176146 d!869532))

(declare-fun d!869534 () Bool)

(declare-fun lt!1067946 () Int)

(declare-fun size!26898 (List!35722) Int)

(declare-fun list!12631 (BalanceConc!20724) List!35722)

(assert (=> d!869534 (= lt!1067946 (size!26898 (list!12631 totalInput!842)))))

(declare-fun size!26899 (Conc!10543) Int)

(assert (=> d!869534 (= lt!1067946 (size!26899 (c!533668 totalInput!842)))))

(assert (=> d!869534 (= (size!26896 totalInput!842) lt!1067946)))

(declare-fun bs!539715 () Bool)

(assert (= bs!539715 d!869534))

(declare-fun m!3432659 () Bool)

(assert (=> bs!539715 m!3432659))

(assert (=> bs!539715 m!3432659))

(declare-fun m!3432661 () Bool)

(assert (=> bs!539715 m!3432661))

(declare-fun m!3432663 () Bool)

(assert (=> bs!539715 m!3432663))

(assert (=> b!3176137 d!869534))

(declare-fun d!869536 () Bool)

(declare-fun c!533694 () Bool)

(assert (=> d!869536 (= c!533694 (is-Node!10543 (c!533668 totalInput!842)))))

(declare-fun e!1978318 () Bool)

(assert (=> d!869536 (= (inv!48400 (c!533668 totalInput!842)) e!1978318)))

(declare-fun b!3176197 () Bool)

(declare-fun inv!48405 (Conc!10543) Bool)

(assert (=> b!3176197 (= e!1978318 (inv!48405 (c!533668 totalInput!842)))))

(declare-fun b!3176198 () Bool)

(declare-fun e!1978319 () Bool)

(assert (=> b!3176198 (= e!1978318 e!1978319)))

(declare-fun res!1290586 () Bool)

(assert (=> b!3176198 (= res!1290586 (not (is-Leaf!16693 (c!533668 totalInput!842))))))

(assert (=> b!3176198 (=> res!1290586 e!1978319)))

(declare-fun b!3176199 () Bool)

(declare-fun inv!48406 (Conc!10543) Bool)

(assert (=> b!3176199 (= e!1978319 (inv!48406 (c!533668 totalInput!842)))))

(assert (= (and d!869536 c!533694) b!3176197))

(assert (= (and d!869536 (not c!533694)) b!3176198))

(assert (= (and b!3176198 (not res!1290586)) b!3176199))

(declare-fun m!3432665 () Bool)

(assert (=> b!3176197 m!3432665))

(declare-fun m!3432667 () Bool)

(assert (=> b!3176199 m!3432667))

(assert (=> b!3176140 d!869536))

(declare-fun b!3176210 () Bool)

(declare-fun e!1978327 () Int)

(assert (=> b!3176210 (= e!1978327 (+ 1 from!1034))))

(declare-fun b!3176211 () Bool)

(assert (=> b!3176211 (= e!1978327 e!1978287)))

(declare-fun b!3176212 () Bool)

(declare-fun e!1978328 () Int)

(assert (=> b!3176212 (= e!1978328 e!1978287)))

(declare-fun d!869538 () Bool)

(declare-fun lt!1067951 () Int)

(assert (=> d!869538 (and (>= lt!1067951 (- 1)) (< lt!1067951 totalInputSize!287) (>= lt!1067951 e!1978287) (or (= lt!1067951 e!1978287) (>= lt!1067951 (+ 1 from!1034))))))

(assert (=> d!869538 (= lt!1067951 e!1978328)))

(declare-fun c!533700 () Bool)

(declare-fun e!1978326 () Bool)

(assert (=> d!869538 (= c!533700 e!1978326)))

(declare-fun res!1290589 () Bool)

(assert (=> d!869538 (=> res!1290589 e!1978326)))

(assert (=> d!869538 (= res!1290589 (= (+ 1 from!1034) totalInputSize!287))))

(assert (=> d!869538 (and (>= (+ 1 from!1034) 0) (<= (+ 1 from!1034) totalInputSize!287))))

(assert (=> d!869538 (= (furthestNullablePosition!438 lt!1067906 (+ 1 from!1034) totalInput!842 totalInputSize!287 e!1978287) lt!1067951)))

(declare-fun b!3176213 () Bool)

(assert (=> b!3176213 (= e!1978326 (lostCauseZipper!634 lt!1067906))))

(declare-fun lt!1067952 () (Set Context!5572))

(declare-fun b!3176214 () Bool)

(assert (=> b!3176214 (= e!1978328 (furthestNullablePosition!438 lt!1067952 (+ 1 from!1034 1) totalInput!842 totalInputSize!287 e!1978327))))

(assert (=> b!3176214 (= lt!1067952 (derivationStepZipper!538 lt!1067906 (apply!8013 totalInput!842 (+ 1 from!1034))))))

(declare-fun c!533699 () Bool)

(assert (=> b!3176214 (= c!533699 (nullableZipper!757 lt!1067952))))

(assert (= (and d!869538 (not res!1290589)) b!3176213))

(assert (= (and d!869538 c!533700) b!3176212))

(assert (= (and d!869538 (not c!533700)) b!3176214))

(assert (= (and b!3176214 c!533699) b!3176210))

(assert (= (and b!3176214 (not c!533699)) b!3176211))

(declare-fun m!3432669 () Bool)

(assert (=> b!3176213 m!3432669))

(declare-fun m!3432671 () Bool)

(assert (=> b!3176214 m!3432671))

(declare-fun m!3432673 () Bool)

(assert (=> b!3176214 m!3432673))

(assert (=> b!3176214 m!3432673))

(declare-fun m!3432675 () Bool)

(assert (=> b!3176214 m!3432675))

(declare-fun m!3432677 () Bool)

(assert (=> b!3176214 m!3432677))

(assert (=> b!3176142 d!869538))

(declare-fun bs!539716 () Bool)

(declare-fun d!869540 () Bool)

(assert (= bs!539716 (and d!869540 d!869528)))

(declare-fun lambda!116229 () Int)

(assert (=> bs!539716 (not (= lambda!116229 lambda!116223))))

(declare-fun bs!539717 () Bool)

(assert (= bs!539717 (and d!869540 b!3176189)))

(assert (=> bs!539717 (not (= lambda!116229 lambda!116224))))

(declare-fun bs!539718 () Bool)

(assert (= bs!539718 (and d!869540 b!3176190)))

(assert (=> bs!539718 (not (= lambda!116229 lambda!116225))))

(declare-fun bs!539719 () Bool)

(assert (= bs!539719 (and d!869540 d!869532)))

(assert (=> bs!539719 (= lambda!116229 lambda!116228)))

(assert (=> d!869540 (= (nullableZipper!757 lt!1067906) (exists!1220 lt!1067906 lambda!116229))))

(declare-fun bs!539720 () Bool)

(assert (= bs!539720 d!869540))

(declare-fun m!3432679 () Bool)

(assert (=> bs!539720 m!3432679))

(assert (=> b!3176142 d!869540))

(declare-fun d!869542 () Bool)

(assert (=> d!869542 true))

(declare-fun lambda!116232 () Int)

(declare-fun flatMap!252 ((Set Context!5572) Int) (Set Context!5572))

(assert (=> d!869542 (= (derivationStepZipper!538 z!3818 (apply!8013 totalInput!842 from!1034)) (flatMap!252 z!3818 lambda!116232))))

(declare-fun bs!539721 () Bool)

(assert (= bs!539721 d!869542))

(declare-fun m!3432681 () Bool)

(assert (=> bs!539721 m!3432681))

(assert (=> b!3176142 d!869542))

(declare-fun d!869544 () Bool)

(declare-fun lt!1067955 () C!19882)

(declare-fun apply!8015 (List!35722 Int) C!19882)

(assert (=> d!869544 (= lt!1067955 (apply!8015 (list!12631 totalInput!842) from!1034))))

(declare-fun apply!8016 (Conc!10543 Int) C!19882)

(assert (=> d!869544 (= lt!1067955 (apply!8016 (c!533668 totalInput!842) from!1034))))

(declare-fun e!1978331 () Bool)

(assert (=> d!869544 e!1978331))

(declare-fun res!1290592 () Bool)

(assert (=> d!869544 (=> (not res!1290592) (not e!1978331))))

(assert (=> d!869544 (= res!1290592 (<= 0 from!1034))))

(assert (=> d!869544 (= (apply!8013 totalInput!842 from!1034) lt!1067955)))

(declare-fun b!3176219 () Bool)

(assert (=> b!3176219 (= e!1978331 (< from!1034 (size!26896 totalInput!842)))))

(assert (= (and d!869544 res!1290592) b!3176219))

(assert (=> d!869544 m!3432659))

(assert (=> d!869544 m!3432659))

(declare-fun m!3432683 () Bool)

(assert (=> d!869544 m!3432683))

(declare-fun m!3432685 () Bool)

(assert (=> d!869544 m!3432685))

(assert (=> b!3176219 m!3432605))

(assert (=> b!3176142 d!869544))

(declare-fun b!3176224 () Bool)

(declare-fun e!1978334 () Bool)

(declare-fun tp!1004523 () Bool)

(declare-fun tp!1004524 () Bool)

(assert (=> b!3176224 (= e!1978334 (and tp!1004523 tp!1004524))))

(assert (=> b!3176139 (= tp!1004509 e!1978334)))

(assert (= (and b!3176139 (is-Cons!35599 (exprs!3286 setElem!26000))) b!3176224))

(declare-fun condSetEmpty!26006 () Bool)

(assert (=> setNonEmpty!26000 (= condSetEmpty!26006 (= setRest!26000 (as set.empty (Set Context!5572))))))

(declare-fun setRes!26006 () Bool)

(assert (=> setNonEmpty!26000 (= tp!1004508 setRes!26006)))

(declare-fun setIsEmpty!26006 () Bool)

(assert (=> setIsEmpty!26006 setRes!26006))

(declare-fun setNonEmpty!26006 () Bool)

(declare-fun tp!1004530 () Bool)

(declare-fun e!1978337 () Bool)

(declare-fun setElem!26006 () Context!5572)

(assert (=> setNonEmpty!26006 (= setRes!26006 (and tp!1004530 (inv!48399 setElem!26006) e!1978337))))

(declare-fun setRest!26006 () (Set Context!5572))

(assert (=> setNonEmpty!26006 (= setRest!26000 (set.union (set.insert setElem!26006 (as set.empty (Set Context!5572))) setRest!26006))))

(declare-fun b!3176229 () Bool)

(declare-fun tp!1004529 () Bool)

(assert (=> b!3176229 (= e!1978337 tp!1004529)))

(assert (= (and setNonEmpty!26000 condSetEmpty!26006) setIsEmpty!26006))

(assert (= (and setNonEmpty!26000 (not condSetEmpty!26006)) setNonEmpty!26006))

(assert (= setNonEmpty!26006 b!3176229))

(declare-fun m!3432687 () Bool)

(assert (=> setNonEmpty!26006 m!3432687))

(declare-fun b!3176238 () Bool)

(declare-fun tp!1004539 () Bool)

(declare-fun e!1978342 () Bool)

(declare-fun tp!1004537 () Bool)

(assert (=> b!3176238 (= e!1978342 (and (inv!48400 (left!27688 (c!533668 totalInput!842))) tp!1004539 (inv!48400 (right!28018 (c!533668 totalInput!842))) tp!1004537))))

(declare-fun b!3176240 () Bool)

(declare-fun e!1978343 () Bool)

(declare-fun tp!1004538 () Bool)

(assert (=> b!3176240 (= e!1978343 tp!1004538)))

(declare-fun b!3176239 () Bool)

(declare-fun inv!48407 (IArray!21091) Bool)

(assert (=> b!3176239 (= e!1978342 (and (inv!48407 (xs!13661 (c!533668 totalInput!842))) e!1978343))))

(assert (=> b!3176140 (= tp!1004507 (and (inv!48400 (c!533668 totalInput!842)) e!1978342))))

(assert (= (and b!3176140 (is-Node!10543 (c!533668 totalInput!842))) b!3176238))

(assert (= b!3176239 b!3176240))

(assert (= (and b!3176140 (is-Leaf!16693 (c!533668 totalInput!842))) b!3176239))

(declare-fun m!3432689 () Bool)

(assert (=> b!3176238 m!3432689))

(declare-fun m!3432691 () Bool)

(assert (=> b!3176238 m!3432691))

(declare-fun m!3432693 () Bool)

(assert (=> b!3176239 m!3432693))

(assert (=> b!3176140 m!3432601))

(push 1)

(assert (not d!869544))

(assert (not setNonEmpty!26006))

(assert (not b!3176239))

(assert (not d!869520))

(assert (not b!3176140))

(assert (not b!3176190))

(assert (not d!869532))

(assert (not d!869540))

(assert (not d!869534))

(assert (not b!3176213))

(assert (not b!3176229))

(assert (not b!3176199))

(assert (not b!3176238))

(assert (not b!3176197))

(assert (not b!3176240))

(assert (not bm!230855))

(assert (not d!869530))

(assert (not d!869528))

(assert (not d!869542))

(assert (not bm!230854))

(assert (not b!3176224))

(assert (not b!3176214))

(assert (not b!3176219))

(assert (not b!3176189))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

