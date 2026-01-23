; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!530376 () Bool)

(assert start!530376)

(declare-fun b!5019615 () Bool)

(declare-fun res!2140469 () Bool)

(declare-fun e!3135823 () Bool)

(assert (=> b!5019615 (=> (not res!2140469) (not e!3135823))))

(declare-datatypes ((C!27954 0))(
  ( (C!27955 (val!23343 Int)) )
))
(declare-datatypes ((List!58130 0))(
  ( (Nil!58006) (Cons!58006 (h!64454 C!27954) (t!370506 List!58130)) )
))
(declare-fun lt!2077441 () List!58130)

(declare-fun knownSize!24 () Int)

(declare-fun size!38592 (List!58130) Int)

(assert (=> b!5019615 (= res!2140469 (= (size!38592 lt!2077441) knownSize!24))))

(declare-fun res!2140468 () Bool)

(declare-fun e!3135824 () Bool)

(assert (=> start!530376 (=> (not res!2140468) (not e!3135824))))

(declare-fun from!1212 () Int)

(assert (=> start!530376 (= res!2140468 (>= from!1212 0))))

(assert (=> start!530376 e!3135824))

(assert (=> start!530376 true))

(declare-datatypes ((IArray!30803 0))(
  ( (IArray!30804 (innerList!15459 List!58130)) )
))
(declare-datatypes ((Conc!15371 0))(
  ( (Node!15371 (left!42407 Conc!15371) (right!42737 Conc!15371) (csize!30972 Int) (cheight!15582 Int)) (Leaf!25506 (xs!18697 IArray!30803) (csize!30973 Int)) (Empty!15371) )
))
(declare-datatypes ((BalanceConc!30172 0))(
  ( (BalanceConc!30173 (c!857737 Conc!15371)) )
))
(declare-fun totalInput!1125 () BalanceConc!30172)

(declare-fun e!3135822 () Bool)

(declare-fun inv!76339 (BalanceConc!30172) Bool)

(assert (=> start!530376 (and (inv!76339 totalInput!1125) e!3135822)))

(declare-fun condSetEmpty!28645 () Bool)

(declare-datatypes ((Regex!13852 0))(
  ( (ElementMatch!13852 (c!857738 C!27954)) (Concat!22645 (regOne!28216 Regex!13852) (regTwo!28216 Regex!13852)) (EmptyExpr!13852) (Star!13852 (reg!14181 Regex!13852)) (EmptyLang!13852) (Union!13852 (regOne!28217 Regex!13852) (regTwo!28217 Regex!13852)) )
))
(declare-datatypes ((List!58131 0))(
  ( (Nil!58007) (Cons!58007 (h!64455 Regex!13852) (t!370507 List!58131)) )
))
(declare-datatypes ((Context!6554 0))(
  ( (Context!6555 (exprs!3777 List!58131)) )
))
(declare-fun z!4710 () (Set Context!6554))

(assert (=> start!530376 (= condSetEmpty!28645 (= z!4710 (as set.empty (Set Context!6554))))))

(declare-fun setRes!28645 () Bool)

(assert (=> start!530376 setRes!28645))

(declare-fun setIsEmpty!28645 () Bool)

(assert (=> setIsEmpty!28645 setRes!28645))

(declare-fun b!5019616 () Bool)

(declare-fun res!2140466 () Bool)

(assert (=> b!5019616 (=> (not res!2140466) (not e!3135823))))

(declare-fun lostCauseZipper!866 ((Set Context!6554)) Bool)

(assert (=> b!5019616 (= res!2140466 (not (lostCauseZipper!866 z!4710)))))

(declare-fun b!5019617 () Bool)

(declare-fun e!3135821 () Bool)

(assert (=> b!5019617 (= e!3135821 e!3135823)))

(declare-fun res!2140467 () Bool)

(assert (=> b!5019617 (=> (not res!2140467) (not e!3135823))))

(declare-fun matchZipper!620 ((Set Context!6554) List!58130) Bool)

(assert (=> b!5019617 (= res!2140467 (matchZipper!620 z!4710 lt!2077441))))

(declare-fun lt!2077443 () List!58130)

(declare-fun take!711 (List!58130 Int) List!58130)

(declare-fun drop!2515 (List!58130 Int) List!58130)

(assert (=> b!5019617 (= lt!2077441 (take!711 (drop!2515 lt!2077443 from!1212) knownSize!24))))

(declare-fun list!18704 (BalanceConc!30172) List!58130)

(assert (=> b!5019617 (= lt!2077443 (list!18704 totalInput!1125))))

(declare-fun e!3135820 () Bool)

(declare-fun setNonEmpty!28645 () Bool)

(declare-fun setElem!28645 () Context!6554)

(declare-fun tp!1407633 () Bool)

(declare-fun inv!76340 (Context!6554) Bool)

(assert (=> setNonEmpty!28645 (= setRes!28645 (and tp!1407633 (inv!76340 setElem!28645) e!3135820))))

(declare-fun setRest!28645 () (Set Context!6554))

(assert (=> setNonEmpty!28645 (= z!4710 (set.union (set.insert setElem!28645 (as set.empty (Set Context!6554))) setRest!28645))))

(declare-fun b!5019618 () Bool)

(declare-fun tp!1407635 () Bool)

(declare-fun inv!76341 (Conc!15371) Bool)

(assert (=> b!5019618 (= e!3135822 (and (inv!76341 (c!857737 totalInput!1125)) tp!1407635))))

(declare-fun b!5019619 () Bool)

(declare-fun res!2140470 () Bool)

(assert (=> b!5019619 (=> (not res!2140470) (not e!3135823))))

(assert (=> b!5019619 (= res!2140470 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5019620 () Bool)

(declare-fun res!2140465 () Bool)

(assert (=> b!5019620 (=> (not res!2140465) (not e!3135823))))

(declare-fun lt!2077444 () Int)

(assert (=> b!5019620 (= res!2140465 (not (= from!1212 lt!2077444)))))

(declare-fun b!5019621 () Bool)

(assert (=> b!5019621 (= e!3135824 e!3135821)))

(declare-fun res!2140464 () Bool)

(assert (=> b!5019621 (=> (not res!2140464) (not e!3135821))))

(assert (=> b!5019621 (= res!2140464 (and (<= from!1212 lt!2077444) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077444 from!1212))))))

(declare-fun size!38593 (BalanceConc!30172) Int)

(assert (=> b!5019621 (= lt!2077444 (size!38593 totalInput!1125))))

(declare-fun lt!2077442 () Int)

(declare-fun lt!2077445 () Int)

(declare-fun b!5019622 () Bool)

(assert (=> b!5019622 (= e!3135823 (and (< from!1212 lt!2077442) (or (< lt!2077445 0) (> lt!2077445 (- (- lt!2077442 from!1212) 1)))))))

(assert (=> b!5019622 (= lt!2077442 (size!38592 lt!2077443))))

(declare-fun findLongestMatchInnerZipperFastV2!174 ((Set Context!6554) Int BalanceConc!30172 Int) Int)

(declare-fun derivationStepZipper!658 ((Set Context!6554) C!27954) (Set Context!6554))

(declare-fun apply!14040 (BalanceConc!30172 Int) C!27954)

(assert (=> b!5019622 (= lt!2077445 (findLongestMatchInnerZipperFastV2!174 (derivationStepZipper!658 z!4710 (apply!14040 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077444))))

(declare-fun b!5019623 () Bool)

(declare-fun tp!1407634 () Bool)

(assert (=> b!5019623 (= e!3135820 tp!1407634)))

(assert (= (and start!530376 res!2140468) b!5019621))

(assert (= (and b!5019621 res!2140464) b!5019617))

(assert (= (and b!5019617 res!2140467) b!5019619))

(assert (= (and b!5019619 res!2140470) b!5019615))

(assert (= (and b!5019615 res!2140469) b!5019616))

(assert (= (and b!5019616 res!2140466) b!5019620))

(assert (= (and b!5019620 res!2140465) b!5019622))

(assert (= start!530376 b!5019618))

(assert (= (and start!530376 condSetEmpty!28645) setIsEmpty!28645))

(assert (= (and start!530376 (not condSetEmpty!28645)) setNonEmpty!28645))

(assert (= setNonEmpty!28645 b!5019623))

(declare-fun m!6054686 () Bool)

(assert (=> b!5019621 m!6054686))

(declare-fun m!6054688 () Bool)

(assert (=> b!5019616 m!6054688))

(declare-fun m!6054690 () Bool)

(assert (=> b!5019618 m!6054690))

(declare-fun m!6054692 () Bool)

(assert (=> b!5019617 m!6054692))

(declare-fun m!6054694 () Bool)

(assert (=> b!5019617 m!6054694))

(assert (=> b!5019617 m!6054694))

(declare-fun m!6054696 () Bool)

(assert (=> b!5019617 m!6054696))

(declare-fun m!6054698 () Bool)

(assert (=> b!5019617 m!6054698))

(declare-fun m!6054700 () Bool)

(assert (=> setNonEmpty!28645 m!6054700))

(declare-fun m!6054702 () Bool)

(assert (=> b!5019622 m!6054702))

(declare-fun m!6054704 () Bool)

(assert (=> b!5019622 m!6054704))

(assert (=> b!5019622 m!6054704))

(declare-fun m!6054706 () Bool)

(assert (=> b!5019622 m!6054706))

(assert (=> b!5019622 m!6054706))

(declare-fun m!6054708 () Bool)

(assert (=> b!5019622 m!6054708))

(declare-fun m!6054710 () Bool)

(assert (=> start!530376 m!6054710))

(declare-fun m!6054712 () Bool)

(assert (=> b!5019615 m!6054712))

(push 1)

(assert (not b!5019618))

(assert (not start!530376))

(assert (not b!5019621))

(assert (not setNonEmpty!28645))

(assert (not b!5019623))

(assert (not b!5019617))

(assert (not b!5019622))

(assert (not b!5019615))

(assert (not b!5019616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1615815 () Bool)

(declare-fun lt!2077463 () Int)

(assert (=> d!1615815 (= lt!2077463 (size!38592 (list!18704 totalInput!1125)))))

(declare-fun size!38596 (Conc!15371) Int)

(assert (=> d!1615815 (= lt!2077463 (size!38596 (c!857737 totalInput!1125)))))

(assert (=> d!1615815 (= (size!38593 totalInput!1125) lt!2077463)))

(declare-fun bs!1187139 () Bool)

(assert (= bs!1187139 d!1615815))

(assert (=> bs!1187139 m!6054698))

(assert (=> bs!1187139 m!6054698))

(declare-fun m!6054742 () Bool)

(assert (=> bs!1187139 m!6054742))

(declare-fun m!6054744 () Bool)

(assert (=> bs!1187139 m!6054744))

(assert (=> b!5019621 d!1615815))

(declare-fun d!1615817 () Bool)

(declare-fun c!857743 () Bool)

(declare-fun isEmpty!31413 (List!58130) Bool)

(assert (=> d!1615817 (= c!857743 (isEmpty!31413 lt!2077441))))

(declare-fun e!3135842 () Bool)

(assert (=> d!1615817 (= (matchZipper!620 z!4710 lt!2077441) e!3135842)))

(declare-fun b!5019655 () Bool)

(declare-fun nullableZipper!901 ((Set Context!6554)) Bool)

(assert (=> b!5019655 (= e!3135842 (nullableZipper!901 z!4710))))

(declare-fun b!5019656 () Bool)

(declare-fun head!10755 (List!58130) C!27954)

(declare-fun tail!9888 (List!58130) List!58130)

(assert (=> b!5019656 (= e!3135842 (matchZipper!620 (derivationStepZipper!658 z!4710 (head!10755 lt!2077441)) (tail!9888 lt!2077441)))))

(assert (= (and d!1615817 c!857743) b!5019655))

(assert (= (and d!1615817 (not c!857743)) b!5019656))

(declare-fun m!6054746 () Bool)

(assert (=> d!1615817 m!6054746))

(declare-fun m!6054748 () Bool)

(assert (=> b!5019655 m!6054748))

(declare-fun m!6054750 () Bool)

(assert (=> b!5019656 m!6054750))

(assert (=> b!5019656 m!6054750))

(declare-fun m!6054752 () Bool)

(assert (=> b!5019656 m!6054752))

(declare-fun m!6054754 () Bool)

(assert (=> b!5019656 m!6054754))

(assert (=> b!5019656 m!6054752))

(assert (=> b!5019656 m!6054754))

(declare-fun m!6054756 () Bool)

(assert (=> b!5019656 m!6054756))

(assert (=> b!5019617 d!1615817))

(declare-fun b!5019680 () Bool)

(declare-fun e!3135860 () List!58130)

(assert (=> b!5019680 (= e!3135860 (Cons!58006 (h!64454 (drop!2515 lt!2077443 from!1212)) (take!711 (t!370506 (drop!2515 lt!2077443 from!1212)) (- knownSize!24 1))))))

(declare-fun b!5019681 () Bool)

(declare-fun e!3135857 () Int)

(assert (=> b!5019681 (= e!3135857 knownSize!24)))

(declare-fun b!5019683 () Bool)

(declare-fun e!3135859 () Int)

(assert (=> b!5019683 (= e!3135859 e!3135857)))

(declare-fun c!857754 () Bool)

(assert (=> b!5019683 (= c!857754 (>= knownSize!24 (size!38592 (drop!2515 lt!2077443 from!1212))))))

(declare-fun b!5019684 () Bool)

(assert (=> b!5019684 (= e!3135859 0)))

(declare-fun b!5019682 () Bool)

(declare-fun e!3135858 () Bool)

(declare-fun lt!2077466 () List!58130)

(assert (=> b!5019682 (= e!3135858 (= (size!38592 lt!2077466) e!3135859))))

(declare-fun c!857755 () Bool)

(assert (=> b!5019682 (= c!857755 (<= knownSize!24 0))))

(declare-fun d!1615821 () Bool)

(assert (=> d!1615821 e!3135858))

(declare-fun res!2140497 () Bool)

(assert (=> d!1615821 (=> (not res!2140497) (not e!3135858))))

(declare-fun content!10279 (List!58130) (Set C!27954))

(assert (=> d!1615821 (= res!2140497 (set.subset (content!10279 lt!2077466) (content!10279 (drop!2515 lt!2077443 from!1212))))))

(assert (=> d!1615821 (= lt!2077466 e!3135860)))

(declare-fun c!857753 () Bool)

(assert (=> d!1615821 (= c!857753 (or (is-Nil!58006 (drop!2515 lt!2077443 from!1212)) (<= knownSize!24 0)))))

(assert (=> d!1615821 (= (take!711 (drop!2515 lt!2077443 from!1212) knownSize!24) lt!2077466)))

(declare-fun b!5019685 () Bool)

(assert (=> b!5019685 (= e!3135860 Nil!58006)))

(declare-fun b!5019686 () Bool)

(assert (=> b!5019686 (= e!3135857 (size!38592 (drop!2515 lt!2077443 from!1212)))))

(assert (= (and d!1615821 c!857753) b!5019685))

(assert (= (and d!1615821 (not c!857753)) b!5019680))

(assert (= (and d!1615821 res!2140497) b!5019682))

(assert (= (and b!5019682 c!857755) b!5019684))

(assert (= (and b!5019682 (not c!857755)) b!5019683))

(assert (= (and b!5019683 c!857754) b!5019686))

(assert (= (and b!5019683 (not c!857754)) b!5019681))

(assert (=> b!5019683 m!6054694))

(declare-fun m!6054762 () Bool)

(assert (=> b!5019683 m!6054762))

(assert (=> b!5019686 m!6054694))

(assert (=> b!5019686 m!6054762))

(declare-fun m!6054764 () Bool)

(assert (=> d!1615821 m!6054764))

(assert (=> d!1615821 m!6054694))

(declare-fun m!6054766 () Bool)

(assert (=> d!1615821 m!6054766))

(declare-fun m!6054768 () Bool)

(assert (=> b!5019682 m!6054768))

(declare-fun m!6054770 () Bool)

(assert (=> b!5019680 m!6054770))

(assert (=> b!5019617 d!1615821))

(declare-fun b!5019712 () Bool)

(declare-fun e!3135874 () Int)

(declare-fun call!350540 () Int)

(assert (=> b!5019712 (= e!3135874 call!350540)))

(declare-fun b!5019713 () Bool)

(declare-fun e!3135875 () List!58130)

(assert (=> b!5019713 (= e!3135875 Nil!58006)))

(declare-fun b!5019714 () Bool)

(declare-fun e!3135878 () List!58130)

(assert (=> b!5019714 (= e!3135875 e!3135878)))

(declare-fun c!857770 () Bool)

(assert (=> b!5019714 (= c!857770 (<= from!1212 0))))

(declare-fun b!5019715 () Bool)

(declare-fun e!3135877 () Int)

(assert (=> b!5019715 (= e!3135877 0)))

(declare-fun b!5019716 () Bool)

(assert (=> b!5019716 (= e!3135878 (drop!2515 (t!370506 lt!2077443) (- from!1212 1)))))

(declare-fun b!5019711 () Bool)

(assert (=> b!5019711 (= e!3135878 lt!2077443)))

(declare-fun d!1615825 () Bool)

(declare-fun e!3135876 () Bool)

(assert (=> d!1615825 e!3135876))

(declare-fun res!2140500 () Bool)

(assert (=> d!1615825 (=> (not res!2140500) (not e!3135876))))

(declare-fun lt!2077472 () List!58130)

(assert (=> d!1615825 (= res!2140500 (set.subset (content!10279 lt!2077472) (content!10279 lt!2077443)))))

(assert (=> d!1615825 (= lt!2077472 e!3135875)))

(declare-fun c!857767 () Bool)

(assert (=> d!1615825 (= c!857767 (is-Nil!58006 lt!2077443))))

(assert (=> d!1615825 (= (drop!2515 lt!2077443 from!1212) lt!2077472)))

(declare-fun b!5019717 () Bool)

(assert (=> b!5019717 (= e!3135876 (= (size!38592 lt!2077472) e!3135874))))

(declare-fun c!857768 () Bool)

(assert (=> b!5019717 (= c!857768 (<= from!1212 0))))

(declare-fun b!5019718 () Bool)

(assert (=> b!5019718 (= e!3135877 (- call!350540 from!1212))))

(declare-fun bm!350535 () Bool)

(assert (=> bm!350535 (= call!350540 (size!38592 lt!2077443))))

(declare-fun b!5019719 () Bool)

(assert (=> b!5019719 (= e!3135874 e!3135877)))

(declare-fun c!857769 () Bool)

(assert (=> b!5019719 (= c!857769 (>= from!1212 call!350540))))

(assert (= (and d!1615825 c!857767) b!5019713))

(assert (= (and d!1615825 (not c!857767)) b!5019714))

(assert (= (and b!5019714 c!857770) b!5019711))

(assert (= (and b!5019714 (not c!857770)) b!5019716))

(assert (= (and d!1615825 res!2140500) b!5019717))

(assert (= (and b!5019717 c!857768) b!5019712))

(assert (= (and b!5019717 (not c!857768)) b!5019719))

(assert (= (and b!5019719 c!857769) b!5019715))

(assert (= (and b!5019719 (not c!857769)) b!5019718))

(assert (= (or b!5019712 b!5019719 b!5019718) bm!350535))

(declare-fun m!6054776 () Bool)

(assert (=> b!5019716 m!6054776))

(declare-fun m!6054778 () Bool)

(assert (=> d!1615825 m!6054778))

(declare-fun m!6054780 () Bool)

(assert (=> d!1615825 m!6054780))

(declare-fun m!6054782 () Bool)

(assert (=> b!5019717 m!6054782))

(assert (=> bm!350535 m!6054702))

(assert (=> b!5019617 d!1615825))

(declare-fun d!1615831 () Bool)

(declare-fun list!18706 (Conc!15371) List!58130)

(assert (=> d!1615831 (= (list!18704 totalInput!1125) (list!18706 (c!857737 totalInput!1125)))))

(declare-fun bs!1187141 () Bool)

(assert (= bs!1187141 d!1615831))

(declare-fun m!6054784 () Bool)

(assert (=> bs!1187141 m!6054784))

(assert (=> b!5019617 d!1615831))

(declare-fun d!1615833 () Bool)

(declare-fun isBalanced!4289 (Conc!15371) Bool)

(assert (=> d!1615833 (= (inv!76339 totalInput!1125) (isBalanced!4289 (c!857737 totalInput!1125)))))

(declare-fun bs!1187142 () Bool)

(assert (= bs!1187142 d!1615833))

(declare-fun m!6054786 () Bool)

(assert (=> bs!1187142 m!6054786))

(assert (=> start!530376 d!1615833))

(declare-fun bs!1187143 () Bool)

(declare-fun b!5019728 () Bool)

(declare-fun d!1615835 () Bool)

(assert (= bs!1187143 (and b!5019728 d!1615835)))

(declare-fun lambda!248740 () Int)

(declare-fun lambda!248739 () Int)

(assert (=> bs!1187143 (not (= lambda!248740 lambda!248739))))

(declare-fun bs!1187144 () Bool)

(declare-fun b!5019729 () Bool)

(assert (= bs!1187144 (and b!5019729 d!1615835)))

(declare-fun lambda!248741 () Int)

(assert (=> bs!1187144 (not (= lambda!248741 lambda!248739))))

(declare-fun bs!1187145 () Bool)

(assert (= bs!1187145 (and b!5019729 b!5019728)))

(assert (=> bs!1187145 (= lambda!248741 lambda!248740)))

(declare-datatypes ((Unit!149205 0))(
  ( (Unit!149206) )
))
(declare-fun e!3135887 () Unit!149205)

(declare-fun Unit!149207 () Unit!149205)

(assert (=> b!5019728 (= e!3135887 Unit!149207)))

(declare-datatypes ((List!58134 0))(
  ( (Nil!58010) (Cons!58010 (h!64458 Context!6554) (t!370510 List!58134)) )
))
(declare-fun lt!2077493 () List!58134)

(declare-fun call!350546 () List!58134)

(assert (=> b!5019728 (= lt!2077493 call!350546)))

(declare-fun lt!2077498 () Unit!149205)

(declare-fun lemmaNotForallThenExists!256 (List!58134 Int) Unit!149205)

(assert (=> b!5019728 (= lt!2077498 (lemmaNotForallThenExists!256 lt!2077493 lambda!248739))))

(declare-fun call!350545 () Bool)

(assert (=> b!5019728 call!350545))

(declare-fun lt!2077494 () Unit!149205)

(assert (=> b!5019728 (= lt!2077494 lt!2077498)))

(declare-fun Unit!149208 () Unit!149205)

(assert (=> b!5019729 (= e!3135887 Unit!149208)))

(declare-fun lt!2077497 () List!58134)

(assert (=> b!5019729 (= lt!2077497 call!350546)))

(declare-fun lt!2077499 () Unit!149205)

(declare-fun lemmaForallThenNotExists!239 (List!58134 Int) Unit!149205)

(assert (=> b!5019729 (= lt!2077499 (lemmaForallThenNotExists!239 lt!2077497 lambda!248739))))

(assert (=> b!5019729 (not call!350545)))

(declare-fun lt!2077500 () Unit!149205)

(assert (=> b!5019729 (= lt!2077500 lt!2077499)))

(declare-fun bm!350540 () Bool)

(declare-fun toList!8107 ((Set Context!6554)) List!58134)

(assert (=> bm!350540 (= call!350546 (toList!8107 z!4710))))

(declare-fun c!857785 () Bool)

(declare-fun bm!350541 () Bool)

(declare-fun exists!1372 (List!58134 Int) Bool)

(assert (=> bm!350541 (= call!350545 (exists!1372 (ite c!857785 lt!2077493 lt!2077497) (ite c!857785 lambda!248740 lambda!248741)))))

(declare-fun lt!2077495 () Bool)

(declare-datatypes ((Option!14586 0))(
  ( (None!14585) (Some!14585 (v!50586 List!58130)) )
))
(declare-fun isEmpty!31414 (Option!14586) Bool)

(declare-fun getLanguageWitness!719 ((Set Context!6554)) Option!14586)

(assert (=> d!1615835 (= lt!2077495 (isEmpty!31414 (getLanguageWitness!719 z!4710)))))

(declare-fun forall!13391 ((Set Context!6554) Int) Bool)

(assert (=> d!1615835 (= lt!2077495 (forall!13391 z!4710 lambda!248739))))

(declare-fun lt!2077496 () Unit!149205)

(assert (=> d!1615835 (= lt!2077496 e!3135887)))

(assert (=> d!1615835 (= c!857785 (not (forall!13391 z!4710 lambda!248739)))))

(assert (=> d!1615835 (= (lostCauseZipper!866 z!4710) lt!2077495)))

(assert (= (and d!1615835 c!857785) b!5019728))

(assert (= (and d!1615835 (not c!857785)) b!5019729))

(assert (= (or b!5019728 b!5019729) bm!350540))

(assert (= (or b!5019728 b!5019729) bm!350541))

(declare-fun m!6054788 () Bool)

(assert (=> bm!350541 m!6054788))

(declare-fun m!6054790 () Bool)

(assert (=> b!5019729 m!6054790))

(declare-fun m!6054792 () Bool)

(assert (=> bm!350540 m!6054792))

(declare-fun m!6054794 () Bool)

(assert (=> d!1615835 m!6054794))

(assert (=> d!1615835 m!6054794))

(declare-fun m!6054796 () Bool)

(assert (=> d!1615835 m!6054796))

(declare-fun m!6054798 () Bool)

(assert (=> d!1615835 m!6054798))

(assert (=> d!1615835 m!6054798))

(declare-fun m!6054800 () Bool)

(assert (=> b!5019728 m!6054800))

(assert (=> b!5019616 d!1615835))

(declare-fun d!1615837 () Bool)

(declare-fun c!857788 () Bool)

(assert (=> d!1615837 (= c!857788 (is-Node!15371 (c!857737 totalInput!1125)))))

(declare-fun e!3135892 () Bool)

(assert (=> d!1615837 (= (inv!76341 (c!857737 totalInput!1125)) e!3135892)))

(declare-fun b!5019736 () Bool)

(declare-fun inv!76345 (Conc!15371) Bool)

(assert (=> b!5019736 (= e!3135892 (inv!76345 (c!857737 totalInput!1125)))))

(declare-fun b!5019737 () Bool)

(declare-fun e!3135893 () Bool)

(assert (=> b!5019737 (= e!3135892 e!3135893)))

(declare-fun res!2140503 () Bool)

(assert (=> b!5019737 (= res!2140503 (not (is-Leaf!25506 (c!857737 totalInput!1125))))))

(assert (=> b!5019737 (=> res!2140503 e!3135893)))

(declare-fun b!5019738 () Bool)

(declare-fun inv!76346 (Conc!15371) Bool)

(assert (=> b!5019738 (= e!3135893 (inv!76346 (c!857737 totalInput!1125)))))

(assert (= (and d!1615837 c!857788) b!5019736))

(assert (= (and d!1615837 (not c!857788)) b!5019737))

(assert (= (and b!5019737 (not res!2140503)) b!5019738))

(declare-fun m!6054802 () Bool)

(assert (=> b!5019736 m!6054802))

(declare-fun m!6054804 () Bool)

(assert (=> b!5019738 m!6054804))

(assert (=> b!5019618 d!1615837))

(declare-fun d!1615839 () Bool)

(declare-fun lt!2077503 () Int)

(assert (=> d!1615839 (>= lt!2077503 0)))

(declare-fun e!3135896 () Int)

(assert (=> d!1615839 (= lt!2077503 e!3135896)))

(declare-fun c!857791 () Bool)

(assert (=> d!1615839 (= c!857791 (is-Nil!58006 lt!2077441))))

(assert (=> d!1615839 (= (size!38592 lt!2077441) lt!2077503)))

(declare-fun b!5019743 () Bool)

(assert (=> b!5019743 (= e!3135896 0)))

(declare-fun b!5019744 () Bool)

(assert (=> b!5019744 (= e!3135896 (+ 1 (size!38592 (t!370506 lt!2077441))))))

(assert (= (and d!1615839 c!857791) b!5019743))

(assert (= (and d!1615839 (not c!857791)) b!5019744))

(declare-fun m!6054806 () Bool)

(assert (=> b!5019744 m!6054806))

(assert (=> b!5019615 d!1615839))

(declare-fun d!1615841 () Bool)

(declare-fun lt!2077504 () Int)

(assert (=> d!1615841 (>= lt!2077504 0)))

(declare-fun e!3135897 () Int)

(assert (=> d!1615841 (= lt!2077504 e!3135897)))

(declare-fun c!857792 () Bool)

(assert (=> d!1615841 (= c!857792 (is-Nil!58006 lt!2077443))))

(assert (=> d!1615841 (= (size!38592 lt!2077443) lt!2077504)))

(declare-fun b!5019745 () Bool)

(assert (=> b!5019745 (= e!3135897 0)))

(declare-fun b!5019746 () Bool)

(assert (=> b!5019746 (= e!3135897 (+ 1 (size!38592 (t!370506 lt!2077443))))))

(assert (= (and d!1615841 c!857792) b!5019745))

(assert (= (and d!1615841 (not c!857792)) b!5019746))

(declare-fun m!6054808 () Bool)

(assert (=> b!5019746 m!6054808))

(assert (=> b!5019622 d!1615841))

(declare-fun b!5019763 () Bool)

(declare-fun e!3135911 () Int)

(declare-fun e!3135908 () Int)

(assert (=> b!5019763 (= e!3135911 e!3135908)))

(declare-fun lt!2077513 () (Set Context!6554))

(assert (=> b!5019763 (= lt!2077513 (derivationStepZipper!658 (derivationStepZipper!658 z!4710 (apply!14040 totalInput!1125 from!1212)) (apply!14040 totalInput!1125 (+ 1 from!1212))))))

(declare-fun lt!2077512 () Int)

(assert (=> b!5019763 (= lt!2077512 (findLongestMatchInnerZipperFastV2!174 lt!2077513 (+ 1 from!1212 1) totalInput!1125 lt!2077444))))

(declare-fun c!857799 () Bool)

(assert (=> b!5019763 (= c!857799 (> lt!2077512 0))))

(declare-fun b!5019764 () Bool)

(declare-fun e!3135912 () Int)

(assert (=> b!5019764 (= e!3135912 1)))

(declare-fun b!5019765 () Bool)

(assert (=> b!5019765 (= e!3135911 0)))

(declare-fun b!5019766 () Bool)

(assert (=> b!5019766 (= e!3135912 0)))

(declare-fun b!5019767 () Bool)

(declare-fun c!857801 () Bool)

(assert (=> b!5019767 (= c!857801 (nullableZipper!901 lt!2077513))))

(assert (=> b!5019767 (= e!3135908 e!3135912)))

(declare-fun d!1615843 () Bool)

(declare-fun lt!2077511 () Int)

(assert (=> d!1615843 (and (>= lt!2077511 0) (<= lt!2077511 (- lt!2077444 (+ 1 from!1212))))))

(assert (=> d!1615843 (= lt!2077511 e!3135911)))

(declare-fun c!857800 () Bool)

(declare-fun e!3135909 () Bool)

(assert (=> d!1615843 (= c!857800 e!3135909)))

(declare-fun res!2140509 () Bool)

(assert (=> d!1615843 (=> res!2140509 e!3135909)))

(assert (=> d!1615843 (= res!2140509 (= (+ 1 from!1212) lt!2077444))))

(declare-fun e!3135910 () Bool)

(assert (=> d!1615843 e!3135910))

(declare-fun res!2140508 () Bool)

(assert (=> d!1615843 (=> (not res!2140508) (not e!3135910))))

(assert (=> d!1615843 (= res!2140508 (>= (+ 1 from!1212) 0))))

(assert (=> d!1615843 (= (findLongestMatchInnerZipperFastV2!174 (derivationStepZipper!658 z!4710 (apply!14040 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077444) lt!2077511)))

(declare-fun b!5019768 () Bool)

(assert (=> b!5019768 (= e!3135910 (<= (+ 1 from!1212) (size!38593 totalInput!1125)))))

(declare-fun b!5019769 () Bool)

(assert (=> b!5019769 (= e!3135909 (lostCauseZipper!866 (derivationStepZipper!658 z!4710 (apply!14040 totalInput!1125 from!1212))))))

(declare-fun b!5019770 () Bool)

(assert (=> b!5019770 (= e!3135908 (+ 1 lt!2077512))))

(assert (= (and d!1615843 res!2140508) b!5019768))

(assert (= (and d!1615843 (not res!2140509)) b!5019769))

(assert (= (and d!1615843 c!857800) b!5019765))

(assert (= (and d!1615843 (not c!857800)) b!5019763))

(assert (= (and b!5019763 c!857799) b!5019770))

(assert (= (and b!5019763 (not c!857799)) b!5019767))

(assert (= (and b!5019767 c!857801) b!5019764))

(assert (= (and b!5019767 (not c!857801)) b!5019766))

(declare-fun m!6054810 () Bool)

(assert (=> b!5019763 m!6054810))

(assert (=> b!5019763 m!6054706))

(assert (=> b!5019763 m!6054810))

(declare-fun m!6054812 () Bool)

(assert (=> b!5019763 m!6054812))

(declare-fun m!6054814 () Bool)

(assert (=> b!5019763 m!6054814))

(declare-fun m!6054816 () Bool)

(assert (=> b!5019767 m!6054816))

(assert (=> b!5019768 m!6054686))

(assert (=> b!5019769 m!6054706))

(declare-fun m!6054818 () Bool)

(assert (=> b!5019769 m!6054818))

(assert (=> b!5019622 d!1615843))

(declare-fun d!1615845 () Bool)

(assert (=> d!1615845 true))

(declare-fun lambda!248744 () Int)

(declare-fun flatMap!288 ((Set Context!6554) Int) (Set Context!6554))

(assert (=> d!1615845 (= (derivationStepZipper!658 z!4710 (apply!14040 totalInput!1125 from!1212)) (flatMap!288 z!4710 lambda!248744))))

(declare-fun bs!1187146 () Bool)

(assert (= bs!1187146 d!1615845))

(declare-fun m!6054820 () Bool)

(assert (=> bs!1187146 m!6054820))

(assert (=> b!5019622 d!1615845))

(declare-fun d!1615847 () Bool)

(declare-fun lt!2077516 () C!27954)

(declare-fun apply!14042 (List!58130 Int) C!27954)

(assert (=> d!1615847 (= lt!2077516 (apply!14042 (list!18704 totalInput!1125) from!1212))))

(declare-fun apply!14043 (Conc!15371 Int) C!27954)

(assert (=> d!1615847 (= lt!2077516 (apply!14043 (c!857737 totalInput!1125) from!1212))))

(declare-fun e!3135915 () Bool)

(assert (=> d!1615847 e!3135915))

(declare-fun res!2140512 () Bool)

(assert (=> d!1615847 (=> (not res!2140512) (not e!3135915))))

(assert (=> d!1615847 (= res!2140512 (<= 0 from!1212))))

(assert (=> d!1615847 (= (apply!14040 totalInput!1125 from!1212) lt!2077516)))

(declare-fun b!5019775 () Bool)

(assert (=> b!5019775 (= e!3135915 (< from!1212 (size!38593 totalInput!1125)))))

(assert (= (and d!1615847 res!2140512) b!5019775))

(assert (=> d!1615847 m!6054698))

(assert (=> d!1615847 m!6054698))

(declare-fun m!6054822 () Bool)

(assert (=> d!1615847 m!6054822))

(declare-fun m!6054824 () Bool)

(assert (=> d!1615847 m!6054824))

(assert (=> b!5019775 m!6054686))

(assert (=> b!5019622 d!1615847))

(declare-fun d!1615849 () Bool)

(declare-fun lambda!248747 () Int)

(declare-fun forall!13392 (List!58131 Int) Bool)

(assert (=> d!1615849 (= (inv!76340 setElem!28645) (forall!13392 (exprs!3777 setElem!28645) lambda!248747))))

(declare-fun bs!1187147 () Bool)

(assert (= bs!1187147 d!1615849))

(declare-fun m!6054826 () Bool)

(assert (=> bs!1187147 m!6054826))

(assert (=> setNonEmpty!28645 d!1615849))

(declare-fun tp!1407653 () Bool)

(declare-fun b!5019784 () Bool)

(declare-fun tp!1407651 () Bool)

(declare-fun e!3135921 () Bool)

(assert (=> b!5019784 (= e!3135921 (and (inv!76341 (left!42407 (c!857737 totalInput!1125))) tp!1407653 (inv!76341 (right!42737 (c!857737 totalInput!1125))) tp!1407651))))

(declare-fun b!5019786 () Bool)

(declare-fun e!3135920 () Bool)

(declare-fun tp!1407652 () Bool)

(assert (=> b!5019786 (= e!3135920 tp!1407652)))

(declare-fun b!5019785 () Bool)

(declare-fun inv!76347 (IArray!30803) Bool)

(assert (=> b!5019785 (= e!3135921 (and (inv!76347 (xs!18697 (c!857737 totalInput!1125))) e!3135920))))

(assert (=> b!5019618 (= tp!1407635 (and (inv!76341 (c!857737 totalInput!1125)) e!3135921))))

(assert (= (and b!5019618 (is-Node!15371 (c!857737 totalInput!1125))) b!5019784))

(assert (= b!5019785 b!5019786))

(assert (= (and b!5019618 (is-Leaf!25506 (c!857737 totalInput!1125))) b!5019785))

(declare-fun m!6054828 () Bool)

(assert (=> b!5019784 m!6054828))

(declare-fun m!6054830 () Bool)

(assert (=> b!5019784 m!6054830))

(declare-fun m!6054832 () Bool)

(assert (=> b!5019785 m!6054832))

(assert (=> b!5019618 m!6054690))

(declare-fun condSetEmpty!28651 () Bool)

(assert (=> setNonEmpty!28645 (= condSetEmpty!28651 (= setRest!28645 (as set.empty (Set Context!6554))))))

(declare-fun setRes!28651 () Bool)

(assert (=> setNonEmpty!28645 (= tp!1407633 setRes!28651)))

(declare-fun setIsEmpty!28651 () Bool)

(assert (=> setIsEmpty!28651 setRes!28651))

(declare-fun setNonEmpty!28651 () Bool)

(declare-fun tp!1407658 () Bool)

(declare-fun setElem!28651 () Context!6554)

(declare-fun e!3135924 () Bool)

(assert (=> setNonEmpty!28651 (= setRes!28651 (and tp!1407658 (inv!76340 setElem!28651) e!3135924))))

(declare-fun setRest!28651 () (Set Context!6554))

(assert (=> setNonEmpty!28651 (= setRest!28645 (set.union (set.insert setElem!28651 (as set.empty (Set Context!6554))) setRest!28651))))

(declare-fun b!5019791 () Bool)

(declare-fun tp!1407659 () Bool)

(assert (=> b!5019791 (= e!3135924 tp!1407659)))

(assert (= (and setNonEmpty!28645 condSetEmpty!28651) setIsEmpty!28651))

(assert (= (and setNonEmpty!28645 (not condSetEmpty!28651)) setNonEmpty!28651))

(assert (= setNonEmpty!28651 b!5019791))

(declare-fun m!6054834 () Bool)

(assert (=> setNonEmpty!28651 m!6054834))

(declare-fun b!5019796 () Bool)

(declare-fun e!3135927 () Bool)

(declare-fun tp!1407664 () Bool)

(declare-fun tp!1407665 () Bool)

(assert (=> b!5019796 (= e!3135927 (and tp!1407664 tp!1407665))))

(assert (=> b!5019623 (= tp!1407634 e!3135927)))

(assert (= (and b!5019623 (is-Cons!58007 (exprs!3777 setElem!28645))) b!5019796))

(push 1)

(assert (not b!5019618))

(assert (not b!5019682))

(assert (not d!1615847))

(assert (not b!5019683))

(assert (not b!5019785))

(assert (not b!5019763))

(assert (not b!5019738))

(assert (not b!5019768))

(assert (not b!5019746))

(assert (not d!1615833))

(assert (not b!5019680))

(assert (not d!1615845))

(assert (not b!5019728))

(assert (not b!5019656))

(assert (not bm!350541))

(assert (not b!5019796))

(assert (not d!1615825))

(assert (not bm!350535))

(assert (not d!1615817))

(assert (not setNonEmpty!28651))

(assert (not b!5019791))

(assert (not b!5019775))

(assert (not b!5019729))

(assert (not b!5019767))

(assert (not d!1615849))

(assert (not b!5019784))

(assert (not d!1615831))

(assert (not d!1615835))

(assert (not b!5019744))

(assert (not d!1615815))

(assert (not d!1615821))

(assert (not b!5019655))

(assert (not b!5019716))

(assert (not b!5019717))

(assert (not b!5019769))

(assert (not bm!350540))

(assert (not b!5019786))

(assert (not b!5019736))

(assert (not b!5019686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

