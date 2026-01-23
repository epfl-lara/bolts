; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!531272 () Bool)

(assert start!531272)

(declare-fun b!5025627 () Bool)

(declare-fun res!2142648 () Bool)

(declare-fun e!3139508 () Bool)

(assert (=> b!5025627 (=> (not res!2142648) (not e!3139508))))

(declare-datatypes ((C!28078 0))(
  ( (C!28079 (val!23415 Int)) )
))
(declare-datatypes ((Regex!13914 0))(
  ( (ElementMatch!13914 (c!859497 C!28078)) (Concat!22707 (regOne!28340 Regex!13914) (regTwo!28340 Regex!13914)) (EmptyExpr!13914) (Star!13914 (reg!14243 Regex!13914)) (EmptyLang!13914) (Union!13914 (regOne!28341 Regex!13914) (regTwo!28341 Regex!13914)) )
))
(declare-datatypes ((List!58278 0))(
  ( (Nil!58154) (Cons!58154 (h!64602 Regex!13914) (t!370678 List!58278)) )
))
(declare-datatypes ((Context!6678 0))(
  ( (Context!6679 (exprs!3839 List!58278)) )
))
(declare-fun z!4747 () (Set Context!6678))

(declare-fun lostCauseZipper!928 ((Set Context!6678)) Bool)

(assert (=> b!5025627 (= res!2142648 (not (lostCauseZipper!928 z!4747)))))

(declare-fun b!5025628 () Bool)

(declare-fun e!3139509 () Bool)

(assert (=> b!5025628 (= e!3139509 e!3139508)))

(declare-fun res!2142646 () Bool)

(assert (=> b!5025628 (=> (not res!2142646) (not e!3139508))))

(declare-fun from!1228 () Int)

(declare-fun lt!2080056 () Int)

(assert (=> b!5025628 (= res!2142646 (<= from!1228 lt!2080056))))

(declare-datatypes ((List!58279 0))(
  ( (Nil!58155) (Cons!58155 (h!64603 C!28078) (t!370679 List!58279)) )
))
(declare-datatypes ((IArray!30927 0))(
  ( (IArray!30928 (innerList!15521 List!58279)) )
))
(declare-datatypes ((Conc!15433 0))(
  ( (Node!15433 (left!42533 Conc!15433) (right!42863 Conc!15433) (csize!31096 Int) (cheight!15644 Int)) (Leaf!25604 (xs!18759 IArray!30927) (csize!31097 Int)) (Empty!15433) )
))
(declare-datatypes ((BalanceConc!30296 0))(
  ( (BalanceConc!30297 (c!859498 Conc!15433)) )
))
(declare-fun totalInput!1141 () BalanceConc!30296)

(declare-fun size!38697 (BalanceConc!30296) Int)

(assert (=> b!5025628 (= lt!2080056 (size!38697 totalInput!1141))))

(declare-fun b!5025629 () Bool)

(declare-fun e!3139510 () Bool)

(declare-fun tp!1408716 () Bool)

(assert (=> b!5025629 (= e!3139510 tp!1408716)))

(declare-fun res!2142644 () Bool)

(assert (=> start!531272 (=> (not res!2142644) (not e!3139509))))

(assert (=> start!531272 (= res!2142644 (>= from!1228 0))))

(assert (=> start!531272 e!3139509))

(assert (=> start!531272 true))

(declare-fun e!3139512 () Bool)

(declare-fun inv!76674 (BalanceConc!30296) Bool)

(assert (=> start!531272 (and (inv!76674 totalInput!1141) e!3139512)))

(declare-fun condSetEmpty!28879 () Bool)

(assert (=> start!531272 (= condSetEmpty!28879 (= z!4747 (as set.empty (Set Context!6678))))))

(declare-fun setRes!28879 () Bool)

(assert (=> start!531272 setRes!28879))

(declare-fun b!5025630 () Bool)

(declare-fun e!3139511 () Bool)

(assert (=> b!5025630 (= e!3139508 (not e!3139511))))

(declare-fun res!2142650 () Bool)

(assert (=> b!5025630 (=> res!2142650 e!3139511)))

(declare-fun lt!2080053 () Int)

(assert (=> b!5025630 (= res!2142650 (> lt!2080053 0))))

(declare-fun lt!2080058 () List!58279)

(declare-fun lt!2080061 () List!58279)

(declare-fun take!765 (List!58279 Int) List!58279)

(assert (=> b!5025630 (= lt!2080058 (take!765 lt!2080061 lt!2080053))))

(declare-fun lt!2080055 () List!58279)

(declare-fun drop!2565 (List!58279 Int) List!58279)

(assert (=> b!5025630 (= lt!2080061 (drop!2565 lt!2080055 (+ 1 from!1228)))))

(declare-fun list!18773 (BalanceConc!30296) List!58279)

(assert (=> b!5025630 (= lt!2080055 (list!18773 totalInput!1141))))

(declare-fun e!3139513 () Bool)

(assert (=> b!5025630 e!3139513))

(declare-fun res!2142645 () Bool)

(assert (=> b!5025630 (=> res!2142645 e!3139513)))

(assert (=> b!5025630 (= res!2142645 (= lt!2080053 0))))

(declare-datatypes ((Unit!149345 0))(
  ( (Unit!149346) )
))
(declare-fun lt!2080059 () Unit!149345)

(declare-fun lt!2080057 () (Set Context!6678))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!111 ((Set Context!6678) Int BalanceConc!30296) Unit!149345)

(assert (=> b!5025630 (= lt!2080059 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!111 lt!2080057 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!228 ((Set Context!6678) Int BalanceConc!30296 Int) Int)

(assert (=> b!5025630 (= lt!2080053 (findLongestMatchInnerZipperFastV2!228 lt!2080057 (+ 1 from!1228) totalInput!1141 lt!2080056))))

(declare-fun lt!2080060 () C!28078)

(declare-fun derivationStepZipper!710 ((Set Context!6678) C!28078) (Set Context!6678))

(assert (=> b!5025630 (= lt!2080057 (derivationStepZipper!710 z!4747 lt!2080060))))

(declare-fun apply!14150 (BalanceConc!30296 Int) C!28078)

(assert (=> b!5025630 (= lt!2080060 (apply!14150 totalInput!1141 from!1228))))

(declare-fun setIsEmpty!28879 () Bool)

(assert (=> setIsEmpty!28879 setRes!28879))

(declare-fun b!5025631 () Bool)

(declare-fun lt!2080062 () List!58279)

(assert (=> b!5025631 (= e!3139511 (= lt!2080062 (Cons!58155 lt!2080060 Nil!58155)))))

(declare-fun apply!14151 (List!58279 Int) C!28078)

(assert (=> b!5025631 (= (Cons!58155 (apply!14151 lt!2080055 from!1228) (take!765 lt!2080061 0)) lt!2080062)))

(declare-fun lt!2080054 () Unit!149345)

(declare-fun lemmaDropTakeAddOneLeft!93 (List!58279 Int Int) Unit!149345)

(assert (=> b!5025631 (= lt!2080054 (lemmaDropTakeAddOneLeft!93 lt!2080055 from!1228 0))))

(assert (=> b!5025631 (= lt!2080062 (take!765 (drop!2565 lt!2080055 from!1228) 1))))

(declare-fun b!5025632 () Bool)

(declare-fun tp!1408715 () Bool)

(declare-fun inv!76675 (Conc!15433) Bool)

(assert (=> b!5025632 (= e!3139512 (and (inv!76675 (c!859498 totalInput!1141)) tp!1408715))))

(declare-fun b!5025633 () Bool)

(declare-fun res!2142647 () Bool)

(assert (=> b!5025633 (=> (not res!2142647) (not e!3139508))))

(assert (=> b!5025633 (= res!2142647 (not (= from!1228 lt!2080056)))))

(declare-fun b!5025634 () Bool)

(declare-fun res!2142649 () Bool)

(assert (=> b!5025634 (=> res!2142649 e!3139511)))

(declare-fun nullableZipper!927 ((Set Context!6678)) Bool)

(assert (=> b!5025634 (= res!2142649 (not (nullableZipper!927 lt!2080057)))))

(declare-fun b!5025635 () Bool)

(declare-fun matchZipper!668 ((Set Context!6678) List!58279) Bool)

(assert (=> b!5025635 (= e!3139513 (matchZipper!668 lt!2080057 (take!765 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) lt!2080053)))))

(declare-fun setNonEmpty!28879 () Bool)

(declare-fun tp!1408717 () Bool)

(declare-fun setElem!28879 () Context!6678)

(declare-fun inv!76676 (Context!6678) Bool)

(assert (=> setNonEmpty!28879 (= setRes!28879 (and tp!1408717 (inv!76676 setElem!28879) e!3139510))))

(declare-fun setRest!28879 () (Set Context!6678))

(assert (=> setNonEmpty!28879 (= z!4747 (set.union (set.insert setElem!28879 (as set.empty (Set Context!6678))) setRest!28879))))

(assert (= (and start!531272 res!2142644) b!5025628))

(assert (= (and b!5025628 res!2142646) b!5025627))

(assert (= (and b!5025627 res!2142648) b!5025633))

(assert (= (and b!5025633 res!2142647) b!5025630))

(assert (= (and b!5025630 (not res!2142645)) b!5025635))

(assert (= (and b!5025630 (not res!2142650)) b!5025634))

(assert (= (and b!5025634 (not res!2142649)) b!5025631))

(assert (= start!531272 b!5025632))

(assert (= (and start!531272 condSetEmpty!28879) setIsEmpty!28879))

(assert (= (and start!531272 (not condSetEmpty!28879)) setNonEmpty!28879))

(assert (= setNonEmpty!28879 b!5025629))

(declare-fun m!6061034 () Bool)

(assert (=> setNonEmpty!28879 m!6061034))

(declare-fun m!6061036 () Bool)

(assert (=> b!5025627 m!6061036))

(declare-fun m!6061038 () Bool)

(assert (=> b!5025628 m!6061038))

(declare-fun m!6061040 () Bool)

(assert (=> start!531272 m!6061040))

(declare-fun m!6061042 () Bool)

(assert (=> b!5025630 m!6061042))

(declare-fun m!6061044 () Bool)

(assert (=> b!5025630 m!6061044))

(declare-fun m!6061046 () Bool)

(assert (=> b!5025630 m!6061046))

(declare-fun m!6061048 () Bool)

(assert (=> b!5025630 m!6061048))

(declare-fun m!6061050 () Bool)

(assert (=> b!5025630 m!6061050))

(declare-fun m!6061052 () Bool)

(assert (=> b!5025630 m!6061052))

(declare-fun m!6061054 () Bool)

(assert (=> b!5025630 m!6061054))

(declare-fun m!6061056 () Bool)

(assert (=> b!5025634 m!6061056))

(assert (=> b!5025635 m!6061048))

(assert (=> b!5025635 m!6061048))

(declare-fun m!6061058 () Bool)

(assert (=> b!5025635 m!6061058))

(assert (=> b!5025635 m!6061058))

(declare-fun m!6061060 () Bool)

(assert (=> b!5025635 m!6061060))

(assert (=> b!5025635 m!6061060))

(declare-fun m!6061062 () Bool)

(assert (=> b!5025635 m!6061062))

(declare-fun m!6061064 () Bool)

(assert (=> b!5025631 m!6061064))

(declare-fun m!6061066 () Bool)

(assert (=> b!5025631 m!6061066))

(declare-fun m!6061068 () Bool)

(assert (=> b!5025631 m!6061068))

(assert (=> b!5025631 m!6061068))

(declare-fun m!6061070 () Bool)

(assert (=> b!5025631 m!6061070))

(declare-fun m!6061072 () Bool)

(assert (=> b!5025631 m!6061072))

(declare-fun m!6061074 () Bool)

(assert (=> b!5025632 m!6061074))

(push 1)

(assert (not b!5025631))

(assert (not b!5025630))

(assert (not b!5025627))

(assert (not b!5025632))

(assert (not b!5025629))

(assert (not b!5025634))

(assert (not setNonEmpty!28879))

(assert (not start!531272))

(assert (not b!5025628))

(assert (not b!5025635))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5025686 () Bool)

(declare-fun e!3139548 () Int)

(declare-fun size!38699 (List!58279) Int)

(assert (=> b!5025686 (= e!3139548 (size!38699 lt!2080061))))

(declare-fun d!1617499 () Bool)

(declare-fun e!3139547 () Bool)

(assert (=> d!1617499 e!3139547))

(declare-fun res!2142677 () Bool)

(assert (=> d!1617499 (=> (not res!2142677) (not e!3139547))))

(declare-fun lt!2080095 () List!58279)

(declare-fun content!10304 (List!58279) (Set C!28078))

(assert (=> d!1617499 (= res!2142677 (set.subset (content!10304 lt!2080095) (content!10304 lt!2080061)))))

(declare-fun e!3139549 () List!58279)

(assert (=> d!1617499 (= lt!2080095 e!3139549)))

(declare-fun c!859510 () Bool)

(assert (=> d!1617499 (= c!859510 (or (is-Nil!58155 lt!2080061) (<= lt!2080053 0)))))

(assert (=> d!1617499 (= (take!765 lt!2080061 lt!2080053) lt!2080095)))

(declare-fun b!5025687 () Bool)

(assert (=> b!5025687 (= e!3139549 Nil!58155)))

(declare-fun b!5025688 () Bool)

(declare-fun e!3139546 () Int)

(assert (=> b!5025688 (= e!3139546 0)))

(declare-fun b!5025689 () Bool)

(assert (=> b!5025689 (= e!3139549 (Cons!58155 (h!64603 lt!2080061) (take!765 (t!370679 lt!2080061) (- lt!2080053 1))))))

(declare-fun b!5025690 () Bool)

(assert (=> b!5025690 (= e!3139548 lt!2080053)))

(declare-fun b!5025691 () Bool)

(assert (=> b!5025691 (= e!3139546 e!3139548)))

(declare-fun c!859512 () Bool)

(assert (=> b!5025691 (= c!859512 (>= lt!2080053 (size!38699 lt!2080061)))))

(declare-fun b!5025692 () Bool)

(assert (=> b!5025692 (= e!3139547 (= (size!38699 lt!2080095) e!3139546))))

(declare-fun c!859511 () Bool)

(assert (=> b!5025692 (= c!859511 (<= lt!2080053 0))))

(assert (= (and d!1617499 c!859510) b!5025687))

(assert (= (and d!1617499 (not c!859510)) b!5025689))

(assert (= (and d!1617499 res!2142677) b!5025692))

(assert (= (and b!5025692 c!859511) b!5025688))

(assert (= (and b!5025692 (not c!859511)) b!5025691))

(assert (= (and b!5025691 c!859512) b!5025686))

(assert (= (and b!5025691 (not c!859512)) b!5025690))

(declare-fun m!6061122 () Bool)

(assert (=> d!1617499 m!6061122))

(declare-fun m!6061124 () Bool)

(assert (=> d!1617499 m!6061124))

(declare-fun m!6061126 () Bool)

(assert (=> b!5025692 m!6061126))

(declare-fun m!6061128 () Bool)

(assert (=> b!5025691 m!6061128))

(declare-fun m!6061130 () Bool)

(assert (=> b!5025689 m!6061130))

(assert (=> b!5025686 m!6061128))

(assert (=> b!5025630 d!1617499))

(declare-fun d!1617505 () Bool)

(assert (=> d!1617505 true))

(declare-fun lambda!249195 () Int)

(declare-fun flatMap!301 ((Set Context!6678) Int) (Set Context!6678))

(assert (=> d!1617505 (= (derivationStepZipper!710 z!4747 lt!2080060) (flatMap!301 z!4747 lambda!249195))))

(declare-fun bs!1187960 () Bool)

(assert (= bs!1187960 d!1617505))

(declare-fun m!6061136 () Bool)

(assert (=> bs!1187960 m!6061136))

(assert (=> b!5025630 d!1617505))

(declare-fun d!1617509 () Bool)

(declare-fun e!3139555 () Bool)

(assert (=> d!1617509 e!3139555))

(declare-fun res!2142683 () Bool)

(assert (=> d!1617509 (=> res!2142683 e!3139555)))

(assert (=> d!1617509 (= res!2142683 (= (findLongestMatchInnerZipperFastV2!228 lt!2080057 (+ 1 from!1228) totalInput!1141 (size!38697 totalInput!1141)) 0))))

(declare-fun lt!2080101 () Unit!149345)

(declare-fun choose!37182 ((Set Context!6678) Int BalanceConc!30296) Unit!149345)

(assert (=> d!1617509 (= lt!2080101 (choose!37182 lt!2080057 (+ 1 from!1228) totalInput!1141))))

(declare-fun e!3139554 () Bool)

(assert (=> d!1617509 e!3139554))

(declare-fun res!2142682 () Bool)

(assert (=> d!1617509 (=> (not res!2142682) (not e!3139554))))

(assert (=> d!1617509 (= res!2142682 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617509 (= (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!111 lt!2080057 (+ 1 from!1228) totalInput!1141) lt!2080101)))

(declare-fun b!5025699 () Bool)

(assert (=> b!5025699 (= e!3139554 (<= (+ 1 from!1228) (size!38697 totalInput!1141)))))

(declare-fun b!5025700 () Bool)

(assert (=> b!5025700 (= e!3139555 (matchZipper!668 lt!2080057 (take!765 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) (findLongestMatchInnerZipperFastV2!228 lt!2080057 (+ 1 from!1228) totalInput!1141 (size!38697 totalInput!1141)))))))

(assert (= (and d!1617509 res!2142682) b!5025699))

(assert (= (and d!1617509 (not res!2142683)) b!5025700))

(assert (=> d!1617509 m!6061038))

(assert (=> d!1617509 m!6061038))

(declare-fun m!6061138 () Bool)

(assert (=> d!1617509 m!6061138))

(declare-fun m!6061140 () Bool)

(assert (=> d!1617509 m!6061140))

(assert (=> b!5025699 m!6061038))

(declare-fun m!6061142 () Bool)

(assert (=> b!5025700 m!6061142))

(declare-fun m!6061144 () Bool)

(assert (=> b!5025700 m!6061144))

(assert (=> b!5025700 m!6061048))

(assert (=> b!5025700 m!6061038))

(assert (=> b!5025700 m!6061038))

(assert (=> b!5025700 m!6061138))

(assert (=> b!5025700 m!6061058))

(assert (=> b!5025700 m!6061138))

(assert (=> b!5025700 m!6061142))

(assert (=> b!5025700 m!6061048))

(assert (=> b!5025700 m!6061058))

(assert (=> b!5025630 d!1617509))

(declare-fun d!1617511 () Bool)

(declare-fun list!18775 (Conc!15433) List!58279)

(assert (=> d!1617511 (= (list!18773 totalInput!1141) (list!18775 (c!859498 totalInput!1141)))))

(declare-fun bs!1187961 () Bool)

(assert (= bs!1187961 d!1617511))

(declare-fun m!6061146 () Bool)

(assert (=> bs!1187961 m!6061146))

(assert (=> b!5025630 d!1617511))

(declare-fun b!5025719 () Bool)

(declare-fun e!3139570 () Bool)

(declare-fun lt!2080104 () List!58279)

(declare-fun e!3139566 () Int)

(assert (=> b!5025719 (= e!3139570 (= (size!38699 lt!2080104) e!3139566))))

(declare-fun c!859527 () Bool)

(assert (=> b!5025719 (= c!859527 (<= (+ 1 from!1228) 0))))

(declare-fun b!5025720 () Bool)

(declare-fun call!350732 () Int)

(assert (=> b!5025720 (= e!3139566 call!350732)))

(declare-fun b!5025721 () Bool)

(declare-fun e!3139567 () List!58279)

(assert (=> b!5025721 (= e!3139567 Nil!58155)))

(declare-fun b!5025722 () Bool)

(declare-fun e!3139569 () Int)

(assert (=> b!5025722 (= e!3139569 0)))

(declare-fun b!5025723 () Bool)

(declare-fun e!3139568 () List!58279)

(assert (=> b!5025723 (= e!3139568 lt!2080055)))

(declare-fun bm!350727 () Bool)

(assert (=> bm!350727 (= call!350732 (size!38699 lt!2080055))))

(declare-fun b!5025724 () Bool)

(assert (=> b!5025724 (= e!3139567 e!3139568)))

(declare-fun c!859526 () Bool)

(assert (=> b!5025724 (= c!859526 (<= (+ 1 from!1228) 0))))

(declare-fun b!5025725 () Bool)

(assert (=> b!5025725 (= e!3139568 (drop!2565 (t!370679 lt!2080055) (- (+ 1 from!1228) 1)))))

(declare-fun b!5025727 () Bool)

(assert (=> b!5025727 (= e!3139569 (- call!350732 (+ 1 from!1228)))))

(declare-fun d!1617513 () Bool)

(assert (=> d!1617513 e!3139570))

(declare-fun res!2142686 () Bool)

(assert (=> d!1617513 (=> (not res!2142686) (not e!3139570))))

(assert (=> d!1617513 (= res!2142686 (set.subset (content!10304 lt!2080104) (content!10304 lt!2080055)))))

(assert (=> d!1617513 (= lt!2080104 e!3139567)))

(declare-fun c!859525 () Bool)

(assert (=> d!1617513 (= c!859525 (is-Nil!58155 lt!2080055))))

(assert (=> d!1617513 (= (drop!2565 lt!2080055 (+ 1 from!1228)) lt!2080104)))

(declare-fun b!5025726 () Bool)

(assert (=> b!5025726 (= e!3139566 e!3139569)))

(declare-fun c!859528 () Bool)

(assert (=> b!5025726 (= c!859528 (>= (+ 1 from!1228) call!350732))))

(assert (= (and d!1617513 c!859525) b!5025721))

(assert (= (and d!1617513 (not c!859525)) b!5025724))

(assert (= (and b!5025724 c!859526) b!5025723))

(assert (= (and b!5025724 (not c!859526)) b!5025725))

(assert (= (and d!1617513 res!2142686) b!5025719))

(assert (= (and b!5025719 c!859527) b!5025720))

(assert (= (and b!5025719 (not c!859527)) b!5025726))

(assert (= (and b!5025726 c!859528) b!5025722))

(assert (= (and b!5025726 (not c!859528)) b!5025727))

(assert (= (or b!5025720 b!5025726 b!5025727) bm!350727))

(declare-fun m!6061148 () Bool)

(assert (=> b!5025719 m!6061148))

(declare-fun m!6061150 () Bool)

(assert (=> bm!350727 m!6061150))

(declare-fun m!6061152 () Bool)

(assert (=> b!5025725 m!6061152))

(declare-fun m!6061154 () Bool)

(assert (=> d!1617513 m!6061154))

(declare-fun m!6061156 () Bool)

(assert (=> d!1617513 m!6061156))

(assert (=> b!5025630 d!1617513))

(declare-fun d!1617515 () Bool)

(declare-fun lt!2080107 () C!28078)

(assert (=> d!1617515 (= lt!2080107 (apply!14151 (list!18773 totalInput!1141) from!1228))))

(declare-fun apply!14154 (Conc!15433 Int) C!28078)

(assert (=> d!1617515 (= lt!2080107 (apply!14154 (c!859498 totalInput!1141) from!1228))))

(declare-fun e!3139573 () Bool)

(assert (=> d!1617515 e!3139573))

(declare-fun res!2142689 () Bool)

(assert (=> d!1617515 (=> (not res!2142689) (not e!3139573))))

(assert (=> d!1617515 (= res!2142689 (<= 0 from!1228))))

(assert (=> d!1617515 (= (apply!14150 totalInput!1141 from!1228) lt!2080107)))

(declare-fun b!5025730 () Bool)

(assert (=> b!5025730 (= e!3139573 (< from!1228 (size!38697 totalInput!1141)))))

(assert (= (and d!1617515 res!2142689) b!5025730))

(assert (=> d!1617515 m!6061048))

(assert (=> d!1617515 m!6061048))

(declare-fun m!6061158 () Bool)

(assert (=> d!1617515 m!6061158))

(declare-fun m!6061160 () Bool)

(assert (=> d!1617515 m!6061160))

(assert (=> b!5025730 m!6061038))

(assert (=> b!5025630 d!1617515))

(declare-fun b!5025747 () Bool)

(declare-fun e!3139587 () Bool)

(assert (=> b!5025747 (= e!3139587 (<= (+ 1 from!1228) (size!38697 totalInput!1141)))))

(declare-fun b!5025748 () Bool)

(declare-fun e!3139584 () Int)

(assert (=> b!5025748 (= e!3139584 0)))

(declare-fun b!5025749 () Bool)

(declare-fun e!3139585 () Int)

(assert (=> b!5025749 (= e!3139585 1)))

(declare-fun d!1617517 () Bool)

(declare-fun lt!2080116 () Int)

(assert (=> d!1617517 (and (>= lt!2080116 0) (<= lt!2080116 (- lt!2080056 (+ 1 from!1228))))))

(assert (=> d!1617517 (= lt!2080116 e!3139584)))

(declare-fun c!859535 () Bool)

(declare-fun e!3139586 () Bool)

(assert (=> d!1617517 (= c!859535 e!3139586)))

(declare-fun res!2142695 () Bool)

(assert (=> d!1617517 (=> res!2142695 e!3139586)))

(assert (=> d!1617517 (= res!2142695 (= (+ 1 from!1228) lt!2080056))))

(assert (=> d!1617517 e!3139587))

(declare-fun res!2142694 () Bool)

(assert (=> d!1617517 (=> (not res!2142694) (not e!3139587))))

(assert (=> d!1617517 (= res!2142694 (>= (+ 1 from!1228) 0))))

(assert (=> d!1617517 (= (findLongestMatchInnerZipperFastV2!228 lt!2080057 (+ 1 from!1228) totalInput!1141 lt!2080056) lt!2080116)))

(declare-fun b!5025750 () Bool)

(assert (=> b!5025750 (= e!3139586 (lostCauseZipper!928 lt!2080057))))

(declare-fun b!5025751 () Bool)

(declare-fun e!3139588 () Int)

(assert (=> b!5025751 (= e!3139584 e!3139588)))

(declare-fun lt!2080114 () (Set Context!6678))

(assert (=> b!5025751 (= lt!2080114 (derivationStepZipper!710 lt!2080057 (apply!14150 totalInput!1141 (+ 1 from!1228))))))

(declare-fun lt!2080115 () Int)

(assert (=> b!5025751 (= lt!2080115 (findLongestMatchInnerZipperFastV2!228 lt!2080114 (+ 1 from!1228 1) totalInput!1141 lt!2080056))))

(declare-fun c!859536 () Bool)

(assert (=> b!5025751 (= c!859536 (> lt!2080115 0))))

(declare-fun b!5025752 () Bool)

(declare-fun c!859537 () Bool)

(assert (=> b!5025752 (= c!859537 (nullableZipper!927 lt!2080114))))

(assert (=> b!5025752 (= e!3139588 e!3139585)))

(declare-fun b!5025753 () Bool)

(assert (=> b!5025753 (= e!3139585 0)))

(declare-fun b!5025754 () Bool)

(assert (=> b!5025754 (= e!3139588 (+ 1 lt!2080115))))

(assert (= (and d!1617517 res!2142694) b!5025747))

(assert (= (and d!1617517 (not res!2142695)) b!5025750))

(assert (= (and d!1617517 c!859535) b!5025748))

(assert (= (and d!1617517 (not c!859535)) b!5025751))

(assert (= (and b!5025751 c!859536) b!5025754))

(assert (= (and b!5025751 (not c!859536)) b!5025752))

(assert (= (and b!5025752 c!859537) b!5025749))

(assert (= (and b!5025752 (not c!859537)) b!5025753))

(assert (=> b!5025747 m!6061038))

(declare-fun m!6061162 () Bool)

(assert (=> b!5025750 m!6061162))

(declare-fun m!6061164 () Bool)

(assert (=> b!5025751 m!6061164))

(assert (=> b!5025751 m!6061164))

(declare-fun m!6061166 () Bool)

(assert (=> b!5025751 m!6061166))

(declare-fun m!6061168 () Bool)

(assert (=> b!5025751 m!6061168))

(declare-fun m!6061170 () Bool)

(assert (=> b!5025752 m!6061170))

(assert (=> b!5025630 d!1617517))

(declare-fun c!859540 () Bool)

(declare-fun d!1617519 () Bool)

(declare-fun isEmpty!31447 (List!58279) Bool)

(assert (=> d!1617519 (= c!859540 (isEmpty!31447 (take!765 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) lt!2080053)))))

(declare-fun e!3139591 () Bool)

(assert (=> d!1617519 (= (matchZipper!668 lt!2080057 (take!765 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) lt!2080053)) e!3139591)))

(declare-fun b!5025759 () Bool)

(assert (=> b!5025759 (= e!3139591 (nullableZipper!927 lt!2080057))))

(declare-fun b!5025760 () Bool)

(declare-fun head!10775 (List!58279) C!28078)

(declare-fun tail!9908 (List!58279) List!58279)

(assert (=> b!5025760 (= e!3139591 (matchZipper!668 (derivationStepZipper!710 lt!2080057 (head!10775 (take!765 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) lt!2080053))) (tail!9908 (take!765 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) lt!2080053))))))

(assert (= (and d!1617519 c!859540) b!5025759))

(assert (= (and d!1617519 (not c!859540)) b!5025760))

(assert (=> d!1617519 m!6061060))

(declare-fun m!6061172 () Bool)

(assert (=> d!1617519 m!6061172))

(assert (=> b!5025759 m!6061056))

(assert (=> b!5025760 m!6061060))

(declare-fun m!6061174 () Bool)

(assert (=> b!5025760 m!6061174))

(assert (=> b!5025760 m!6061174))

(declare-fun m!6061176 () Bool)

(assert (=> b!5025760 m!6061176))

(assert (=> b!5025760 m!6061060))

(declare-fun m!6061178 () Bool)

(assert (=> b!5025760 m!6061178))

(assert (=> b!5025760 m!6061176))

(assert (=> b!5025760 m!6061178))

(declare-fun m!6061180 () Bool)

(assert (=> b!5025760 m!6061180))

(assert (=> b!5025635 d!1617519))

(declare-fun b!5025761 () Bool)

(declare-fun e!3139594 () Int)

(assert (=> b!5025761 (= e!3139594 (size!38699 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228))))))

(declare-fun d!1617521 () Bool)

(declare-fun e!3139593 () Bool)

(assert (=> d!1617521 e!3139593))

(declare-fun res!2142696 () Bool)

(assert (=> d!1617521 (=> (not res!2142696) (not e!3139593))))

(declare-fun lt!2080117 () List!58279)

(assert (=> d!1617521 (= res!2142696 (set.subset (content!10304 lt!2080117) (content!10304 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun e!3139595 () List!58279)

(assert (=> d!1617521 (= lt!2080117 e!3139595)))

(declare-fun c!859541 () Bool)

(assert (=> d!1617521 (= c!859541 (or (is-Nil!58155 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228))) (<= lt!2080053 0)))))

(assert (=> d!1617521 (= (take!765 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) lt!2080053) lt!2080117)))

(declare-fun b!5025762 () Bool)

(assert (=> b!5025762 (= e!3139595 Nil!58155)))

(declare-fun b!5025763 () Bool)

(declare-fun e!3139592 () Int)

(assert (=> b!5025763 (= e!3139592 0)))

(declare-fun b!5025764 () Bool)

(assert (=> b!5025764 (= e!3139595 (Cons!58155 (h!64603 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228))) (take!765 (t!370679 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228))) (- lt!2080053 1))))))

(declare-fun b!5025765 () Bool)

(assert (=> b!5025765 (= e!3139594 lt!2080053)))

(declare-fun b!5025766 () Bool)

(assert (=> b!5025766 (= e!3139592 e!3139594)))

(declare-fun c!859543 () Bool)

(assert (=> b!5025766 (= c!859543 (>= lt!2080053 (size!38699 (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)))))))

(declare-fun b!5025767 () Bool)

(assert (=> b!5025767 (= e!3139593 (= (size!38699 lt!2080117) e!3139592))))

(declare-fun c!859542 () Bool)

(assert (=> b!5025767 (= c!859542 (<= lt!2080053 0))))

(assert (= (and d!1617521 c!859541) b!5025762))

(assert (= (and d!1617521 (not c!859541)) b!5025764))

(assert (= (and d!1617521 res!2142696) b!5025767))

(assert (= (and b!5025767 c!859542) b!5025763))

(assert (= (and b!5025767 (not c!859542)) b!5025766))

(assert (= (and b!5025766 c!859543) b!5025761))

(assert (= (and b!5025766 (not c!859543)) b!5025765))

(declare-fun m!6061182 () Bool)

(assert (=> d!1617521 m!6061182))

(assert (=> d!1617521 m!6061058))

(declare-fun m!6061184 () Bool)

(assert (=> d!1617521 m!6061184))

(declare-fun m!6061186 () Bool)

(assert (=> b!5025767 m!6061186))

(assert (=> b!5025766 m!6061058))

(declare-fun m!6061188 () Bool)

(assert (=> b!5025766 m!6061188))

(declare-fun m!6061190 () Bool)

(assert (=> b!5025764 m!6061190))

(assert (=> b!5025761 m!6061058))

(assert (=> b!5025761 m!6061188))

(assert (=> b!5025635 d!1617521))

(declare-fun b!5025768 () Bool)

(declare-fun e!3139600 () Bool)

(declare-fun lt!2080118 () List!58279)

(declare-fun e!3139596 () Int)

(assert (=> b!5025768 (= e!3139600 (= (size!38699 lt!2080118) e!3139596))))

(declare-fun c!859546 () Bool)

(assert (=> b!5025768 (= c!859546 (<= (+ 1 from!1228) 0))))

(declare-fun b!5025769 () Bool)

(declare-fun call!350733 () Int)

(assert (=> b!5025769 (= e!3139596 call!350733)))

(declare-fun b!5025770 () Bool)

(declare-fun e!3139597 () List!58279)

(assert (=> b!5025770 (= e!3139597 Nil!58155)))

(declare-fun b!5025771 () Bool)

(declare-fun e!3139599 () Int)

(assert (=> b!5025771 (= e!3139599 0)))

(declare-fun b!5025772 () Bool)

(declare-fun e!3139598 () List!58279)

(assert (=> b!5025772 (= e!3139598 (list!18773 totalInput!1141))))

(declare-fun bm!350728 () Bool)

(assert (=> bm!350728 (= call!350733 (size!38699 (list!18773 totalInput!1141)))))

(declare-fun b!5025773 () Bool)

(assert (=> b!5025773 (= e!3139597 e!3139598)))

(declare-fun c!859545 () Bool)

(assert (=> b!5025773 (= c!859545 (<= (+ 1 from!1228) 0))))

(declare-fun b!5025774 () Bool)

(assert (=> b!5025774 (= e!3139598 (drop!2565 (t!370679 (list!18773 totalInput!1141)) (- (+ 1 from!1228) 1)))))

(declare-fun b!5025776 () Bool)

(assert (=> b!5025776 (= e!3139599 (- call!350733 (+ 1 from!1228)))))

(declare-fun d!1617523 () Bool)

(assert (=> d!1617523 e!3139600))

(declare-fun res!2142697 () Bool)

(assert (=> d!1617523 (=> (not res!2142697) (not e!3139600))))

(assert (=> d!1617523 (= res!2142697 (set.subset (content!10304 lt!2080118) (content!10304 (list!18773 totalInput!1141))))))

(assert (=> d!1617523 (= lt!2080118 e!3139597)))

(declare-fun c!859544 () Bool)

(assert (=> d!1617523 (= c!859544 (is-Nil!58155 (list!18773 totalInput!1141)))))

(assert (=> d!1617523 (= (drop!2565 (list!18773 totalInput!1141) (+ 1 from!1228)) lt!2080118)))

(declare-fun b!5025775 () Bool)

(assert (=> b!5025775 (= e!3139596 e!3139599)))

(declare-fun c!859547 () Bool)

(assert (=> b!5025775 (= c!859547 (>= (+ 1 from!1228) call!350733))))

(assert (= (and d!1617523 c!859544) b!5025770))

(assert (= (and d!1617523 (not c!859544)) b!5025773))

(assert (= (and b!5025773 c!859545) b!5025772))

(assert (= (and b!5025773 (not c!859545)) b!5025774))

(assert (= (and d!1617523 res!2142697) b!5025768))

(assert (= (and b!5025768 c!859546) b!5025769))

(assert (= (and b!5025768 (not c!859546)) b!5025775))

(assert (= (and b!5025775 c!859547) b!5025771))

(assert (= (and b!5025775 (not c!859547)) b!5025776))

(assert (= (or b!5025769 b!5025775 b!5025776) bm!350728))

(declare-fun m!6061192 () Bool)

(assert (=> b!5025768 m!6061192))

(assert (=> bm!350728 m!6061048))

(declare-fun m!6061194 () Bool)

(assert (=> bm!350728 m!6061194))

(declare-fun m!6061196 () Bool)

(assert (=> b!5025774 m!6061196))

(declare-fun m!6061198 () Bool)

(assert (=> d!1617523 m!6061198))

(assert (=> d!1617523 m!6061048))

(declare-fun m!6061200 () Bool)

(assert (=> d!1617523 m!6061200))

(assert (=> b!5025635 d!1617523))

(assert (=> b!5025635 d!1617511))

(declare-fun d!1617525 () Bool)

(declare-fun lambda!249198 () Int)

(declare-fun forall!13424 (List!58278 Int) Bool)

(assert (=> d!1617525 (= (inv!76676 setElem!28879) (forall!13424 (exprs!3839 setElem!28879) lambda!249198))))

(declare-fun bs!1187962 () Bool)

(assert (= bs!1187962 d!1617525))

(declare-fun m!6061202 () Bool)

(assert (=> bs!1187962 m!6061202))

(assert (=> setNonEmpty!28879 d!1617525))

(declare-fun d!1617527 () Bool)

(declare-fun isBalanced!4303 (Conc!15433) Bool)

(assert (=> d!1617527 (= (inv!76674 totalInput!1141) (isBalanced!4303 (c!859498 totalInput!1141)))))

(declare-fun bs!1187963 () Bool)

(assert (= bs!1187963 d!1617527))

(declare-fun m!6061204 () Bool)

(assert (=> bs!1187963 m!6061204))

(assert (=> start!531272 d!1617527))

(declare-fun bs!1187967 () Bool)

(declare-fun b!5025781 () Bool)

(declare-fun d!1617529 () Bool)

(assert (= bs!1187967 (and b!5025781 d!1617529)))

(declare-fun lambda!249218 () Int)

(declare-fun lambda!249217 () Int)

(assert (=> bs!1187967 (not (= lambda!249218 lambda!249217))))

(declare-fun bs!1187968 () Bool)

(declare-fun b!5025782 () Bool)

(assert (= bs!1187968 (and b!5025782 d!1617529)))

(declare-fun lambda!249219 () Int)

(assert (=> bs!1187968 (not (= lambda!249219 lambda!249217))))

(declare-fun bs!1187969 () Bool)

(assert (= bs!1187969 (and b!5025782 b!5025781)))

(assert (=> bs!1187969 (= lambda!249219 lambda!249218)))

(declare-fun e!3139607 () Unit!149345)

(declare-fun Unit!149349 () Unit!149345)

(assert (=> b!5025781 (= e!3139607 Unit!149349)))

(declare-datatypes ((List!58282 0))(
  ( (Nil!58158) (Cons!58158 (h!64606 Context!6678) (t!370682 List!58282)) )
))
(declare-fun lt!2080136 () List!58282)

(declare-fun call!350738 () List!58282)

(assert (=> b!5025781 (= lt!2080136 call!350738)))

(declare-fun lt!2080141 () Unit!149345)

(declare-fun lemmaNotForallThenExists!270 (List!58282 Int) Unit!149345)

(assert (=> b!5025781 (= lt!2080141 (lemmaNotForallThenExists!270 lt!2080136 lambda!249217))))

(declare-fun call!350739 () Bool)

(assert (=> b!5025781 call!350739))

(declare-fun lt!2080137 () Unit!149345)

(assert (=> b!5025781 (= lt!2080137 lt!2080141)))

(declare-fun Unit!149350 () Unit!149345)

(assert (=> b!5025782 (= e!3139607 Unit!149350)))

(declare-fun lt!2080140 () List!58282)

(assert (=> b!5025782 (= lt!2080140 call!350738)))

(declare-fun lt!2080142 () Unit!149345)

(declare-fun lemmaForallThenNotExists!253 (List!58282 Int) Unit!149345)

(assert (=> b!5025782 (= lt!2080142 (lemmaForallThenNotExists!253 lt!2080140 lambda!249217))))

(assert (=> b!5025782 (not call!350739)))

(declare-fun lt!2080138 () Unit!149345)

(assert (=> b!5025782 (= lt!2080138 lt!2080142)))

(declare-fun c!859558 () Bool)

(declare-fun bm!350734 () Bool)

(declare-fun exists!1392 (List!58282 Int) Bool)

(assert (=> bm!350734 (= call!350739 (exists!1392 (ite c!859558 lt!2080136 lt!2080140) (ite c!859558 lambda!249218 lambda!249219)))))

(declare-fun bm!350733 () Bool)

(declare-fun toList!8121 ((Set Context!6678)) List!58282)

(assert (=> bm!350733 (= call!350738 (toList!8121 z!4747))))

(declare-fun lt!2080135 () Bool)

(declare-datatypes ((Option!14600 0))(
  ( (None!14599) (Some!14599 (v!50606 List!58279)) )
))
(declare-fun isEmpty!31448 (Option!14600) Bool)

(declare-fun getLanguageWitness!739 ((Set Context!6678)) Option!14600)

(assert (=> d!1617529 (= lt!2080135 (isEmpty!31448 (getLanguageWitness!739 z!4747)))))

(declare-fun forall!13425 ((Set Context!6678) Int) Bool)

(assert (=> d!1617529 (= lt!2080135 (forall!13425 z!4747 lambda!249217))))

(declare-fun lt!2080139 () Unit!149345)

(assert (=> d!1617529 (= lt!2080139 e!3139607)))

(assert (=> d!1617529 (= c!859558 (not (forall!13425 z!4747 lambda!249217)))))

(assert (=> d!1617529 (= (lostCauseZipper!928 z!4747) lt!2080135)))

(assert (= (and d!1617529 c!859558) b!5025781))

(assert (= (and d!1617529 (not c!859558)) b!5025782))

(assert (= (or b!5025781 b!5025782) bm!350733))

(assert (= (or b!5025781 b!5025782) bm!350734))

(declare-fun m!6061212 () Bool)

(assert (=> bm!350733 m!6061212))

(declare-fun m!6061214 () Bool)

(assert (=> b!5025781 m!6061214))

(declare-fun m!6061216 () Bool)

(assert (=> d!1617529 m!6061216))

(assert (=> d!1617529 m!6061216))

(declare-fun m!6061218 () Bool)

(assert (=> d!1617529 m!6061218))

(declare-fun m!6061220 () Bool)

(assert (=> d!1617529 m!6061220))

(assert (=> d!1617529 m!6061220))

(declare-fun m!6061222 () Bool)

(assert (=> b!5025782 m!6061222))

(declare-fun m!6061224 () Bool)

(assert (=> bm!350734 m!6061224))

(assert (=> b!5025627 d!1617529))

(declare-fun b!5025783 () Bool)

(declare-fun e!3139610 () Int)

(assert (=> b!5025783 (= e!3139610 (size!38699 (drop!2565 lt!2080055 from!1228)))))

(declare-fun d!1617537 () Bool)

(declare-fun e!3139609 () Bool)

(assert (=> d!1617537 e!3139609))

(declare-fun res!2142698 () Bool)

(assert (=> d!1617537 (=> (not res!2142698) (not e!3139609))))

(declare-fun lt!2080143 () List!58279)

(assert (=> d!1617537 (= res!2142698 (set.subset (content!10304 lt!2080143) (content!10304 (drop!2565 lt!2080055 from!1228))))))

(declare-fun e!3139611 () List!58279)

(assert (=> d!1617537 (= lt!2080143 e!3139611)))

(declare-fun c!859559 () Bool)

(assert (=> d!1617537 (= c!859559 (or (is-Nil!58155 (drop!2565 lt!2080055 from!1228)) (<= 1 0)))))

(assert (=> d!1617537 (= (take!765 (drop!2565 lt!2080055 from!1228) 1) lt!2080143)))

(declare-fun b!5025784 () Bool)

(assert (=> b!5025784 (= e!3139611 Nil!58155)))

(declare-fun b!5025785 () Bool)

(declare-fun e!3139608 () Int)

(assert (=> b!5025785 (= e!3139608 0)))

(declare-fun b!5025786 () Bool)

(assert (=> b!5025786 (= e!3139611 (Cons!58155 (h!64603 (drop!2565 lt!2080055 from!1228)) (take!765 (t!370679 (drop!2565 lt!2080055 from!1228)) (- 1 1))))))

(declare-fun b!5025787 () Bool)

(assert (=> b!5025787 (= e!3139610 1)))

(declare-fun b!5025788 () Bool)

(assert (=> b!5025788 (= e!3139608 e!3139610)))

(declare-fun c!859561 () Bool)

(assert (=> b!5025788 (= c!859561 (>= 1 (size!38699 (drop!2565 lt!2080055 from!1228))))))

(declare-fun b!5025789 () Bool)

(assert (=> b!5025789 (= e!3139609 (= (size!38699 lt!2080143) e!3139608))))

(declare-fun c!859560 () Bool)

(assert (=> b!5025789 (= c!859560 (<= 1 0))))

(assert (= (and d!1617537 c!859559) b!5025784))

(assert (= (and d!1617537 (not c!859559)) b!5025786))

(assert (= (and d!1617537 res!2142698) b!5025789))

(assert (= (and b!5025789 c!859560) b!5025785))

(assert (= (and b!5025789 (not c!859560)) b!5025788))

(assert (= (and b!5025788 c!859561) b!5025783))

(assert (= (and b!5025788 (not c!859561)) b!5025787))

(declare-fun m!6061226 () Bool)

(assert (=> d!1617537 m!6061226))

(assert (=> d!1617537 m!6061068))

(declare-fun m!6061228 () Bool)

(assert (=> d!1617537 m!6061228))

(declare-fun m!6061230 () Bool)

(assert (=> b!5025789 m!6061230))

(assert (=> b!5025788 m!6061068))

(declare-fun m!6061232 () Bool)

(assert (=> b!5025788 m!6061232))

(declare-fun m!6061234 () Bool)

(assert (=> b!5025786 m!6061234))

(assert (=> b!5025783 m!6061068))

(assert (=> b!5025783 m!6061232))

(assert (=> b!5025631 d!1617537))

(declare-fun b!5025790 () Bool)

(declare-fun e!3139614 () Int)

(assert (=> b!5025790 (= e!3139614 (size!38699 lt!2080061))))

(declare-fun d!1617539 () Bool)

(declare-fun e!3139613 () Bool)

(assert (=> d!1617539 e!3139613))

(declare-fun res!2142699 () Bool)

(assert (=> d!1617539 (=> (not res!2142699) (not e!3139613))))

(declare-fun lt!2080144 () List!58279)

(assert (=> d!1617539 (= res!2142699 (set.subset (content!10304 lt!2080144) (content!10304 lt!2080061)))))

(declare-fun e!3139615 () List!58279)

(assert (=> d!1617539 (= lt!2080144 e!3139615)))

(declare-fun c!859562 () Bool)

(assert (=> d!1617539 (= c!859562 (or (is-Nil!58155 lt!2080061) (<= 0 0)))))

(assert (=> d!1617539 (= (take!765 lt!2080061 0) lt!2080144)))

(declare-fun b!5025791 () Bool)

(assert (=> b!5025791 (= e!3139615 Nil!58155)))

(declare-fun b!5025792 () Bool)

(declare-fun e!3139612 () Int)

(assert (=> b!5025792 (= e!3139612 0)))

(declare-fun b!5025793 () Bool)

(assert (=> b!5025793 (= e!3139615 (Cons!58155 (h!64603 lt!2080061) (take!765 (t!370679 lt!2080061) (- 0 1))))))

(declare-fun b!5025794 () Bool)

(assert (=> b!5025794 (= e!3139614 0)))

(declare-fun b!5025795 () Bool)

(assert (=> b!5025795 (= e!3139612 e!3139614)))

(declare-fun c!859564 () Bool)

(assert (=> b!5025795 (= c!859564 (>= 0 (size!38699 lt!2080061)))))

(declare-fun b!5025796 () Bool)

(assert (=> b!5025796 (= e!3139613 (= (size!38699 lt!2080144) e!3139612))))

(declare-fun c!859563 () Bool)

(assert (=> b!5025796 (= c!859563 (<= 0 0))))

(assert (= (and d!1617539 c!859562) b!5025791))

(assert (= (and d!1617539 (not c!859562)) b!5025793))

(assert (= (and d!1617539 res!2142699) b!5025796))

(assert (= (and b!5025796 c!859563) b!5025792))

(assert (= (and b!5025796 (not c!859563)) b!5025795))

(assert (= (and b!5025795 c!859564) b!5025790))

(assert (= (and b!5025795 (not c!859564)) b!5025794))

(declare-fun m!6061236 () Bool)

(assert (=> d!1617539 m!6061236))

(assert (=> d!1617539 m!6061124))

(declare-fun m!6061238 () Bool)

(assert (=> b!5025796 m!6061238))

(assert (=> b!5025795 m!6061128))

(declare-fun m!6061240 () Bool)

(assert (=> b!5025793 m!6061240))

(assert (=> b!5025790 m!6061128))

(assert (=> b!5025631 d!1617539))

(declare-fun b!5025801 () Bool)

(declare-fun e!3139622 () Bool)

(declare-fun lt!2080149 () List!58279)

(declare-fun e!3139618 () Int)

(assert (=> b!5025801 (= e!3139622 (= (size!38699 lt!2080149) e!3139618))))

(declare-fun c!859571 () Bool)

(assert (=> b!5025801 (= c!859571 (<= from!1228 0))))

(declare-fun b!5025802 () Bool)

(declare-fun call!350740 () Int)

(assert (=> b!5025802 (= e!3139618 call!350740)))

(declare-fun b!5025803 () Bool)

(declare-fun e!3139619 () List!58279)

(assert (=> b!5025803 (= e!3139619 Nil!58155)))

(declare-fun b!5025804 () Bool)

(declare-fun e!3139621 () Int)

(assert (=> b!5025804 (= e!3139621 0)))

(declare-fun b!5025805 () Bool)

(declare-fun e!3139620 () List!58279)

(assert (=> b!5025805 (= e!3139620 lt!2080055)))

(declare-fun bm!350735 () Bool)

(assert (=> bm!350735 (= call!350740 (size!38699 lt!2080055))))

(declare-fun b!5025806 () Bool)

(assert (=> b!5025806 (= e!3139619 e!3139620)))

(declare-fun c!859570 () Bool)

(assert (=> b!5025806 (= c!859570 (<= from!1228 0))))

(declare-fun b!5025807 () Bool)

(assert (=> b!5025807 (= e!3139620 (drop!2565 (t!370679 lt!2080055) (- from!1228 1)))))

(declare-fun b!5025809 () Bool)

(assert (=> b!5025809 (= e!3139621 (- call!350740 from!1228))))

(declare-fun d!1617541 () Bool)

(assert (=> d!1617541 e!3139622))

(declare-fun res!2142700 () Bool)

(assert (=> d!1617541 (=> (not res!2142700) (not e!3139622))))

(assert (=> d!1617541 (= res!2142700 (set.subset (content!10304 lt!2080149) (content!10304 lt!2080055)))))

(assert (=> d!1617541 (= lt!2080149 e!3139619)))

(declare-fun c!859569 () Bool)

(assert (=> d!1617541 (= c!859569 (is-Nil!58155 lt!2080055))))

(assert (=> d!1617541 (= (drop!2565 lt!2080055 from!1228) lt!2080149)))

(declare-fun b!5025808 () Bool)

(assert (=> b!5025808 (= e!3139618 e!3139621)))

(declare-fun c!859572 () Bool)

(assert (=> b!5025808 (= c!859572 (>= from!1228 call!350740))))

(assert (= (and d!1617541 c!859569) b!5025803))

(assert (= (and d!1617541 (not c!859569)) b!5025806))

(assert (= (and b!5025806 c!859570) b!5025805))

(assert (= (and b!5025806 (not c!859570)) b!5025807))

(assert (= (and d!1617541 res!2142700) b!5025801))

(assert (= (and b!5025801 c!859571) b!5025802))

(assert (= (and b!5025801 (not c!859571)) b!5025808))

(assert (= (and b!5025808 c!859572) b!5025804))

(assert (= (and b!5025808 (not c!859572)) b!5025809))

(assert (= (or b!5025802 b!5025808 b!5025809) bm!350735))

(declare-fun m!6061242 () Bool)

(assert (=> b!5025801 m!6061242))

(assert (=> bm!350735 m!6061150))

(declare-fun m!6061244 () Bool)

(assert (=> b!5025807 m!6061244))

(declare-fun m!6061246 () Bool)

(assert (=> d!1617541 m!6061246))

(assert (=> d!1617541 m!6061156))

(assert (=> b!5025631 d!1617541))

(declare-fun d!1617543 () Bool)

(assert (=> d!1617543 (= (Cons!58155 (apply!14151 lt!2080055 from!1228) (take!765 (drop!2565 lt!2080055 (+ from!1228 1)) 0)) (take!765 (drop!2565 lt!2080055 from!1228) (+ 0 1)))))

(declare-fun lt!2080164 () Unit!149345)

(declare-fun choose!37183 (List!58279 Int Int) Unit!149345)

(assert (=> d!1617543 (= lt!2080164 (choose!37183 lt!2080055 from!1228 0))))

(declare-fun e!3139629 () Bool)

(assert (=> d!1617543 e!3139629))

(declare-fun res!2142703 () Bool)

(assert (=> d!1617543 (=> (not res!2142703) (not e!3139629))))

(assert (=> d!1617543 (= res!2142703 (>= from!1228 0))))

(assert (=> d!1617543 (= (lemmaDropTakeAddOneLeft!93 lt!2080055 from!1228 0) lt!2080164)))

(declare-fun b!5025812 () Bool)

(assert (=> b!5025812 (= e!3139629 (< from!1228 (size!38699 lt!2080055)))))

(assert (= (and d!1617543 res!2142703) b!5025812))

(declare-fun m!6061248 () Bool)

(assert (=> d!1617543 m!6061248))

(declare-fun m!6061250 () Bool)

(assert (=> d!1617543 m!6061250))

(assert (=> d!1617543 m!6061066))

(assert (=> d!1617543 m!6061248))

(declare-fun m!6061252 () Bool)

(assert (=> d!1617543 m!6061252))

(assert (=> d!1617543 m!6061068))

(declare-fun m!6061254 () Bool)

(assert (=> d!1617543 m!6061254))

(assert (=> d!1617543 m!6061068))

(assert (=> b!5025812 m!6061150))

(assert (=> b!5025631 d!1617543))

(declare-fun d!1617545 () Bool)

(declare-fun lt!2080175 () C!28078)

(declare-fun contains!19573 (List!58279 C!28078) Bool)

(assert (=> d!1617545 (contains!19573 lt!2080055 lt!2080175)))

(declare-fun e!3139636 () C!28078)

(assert (=> d!1617545 (= lt!2080175 e!3139636)))

(declare-fun c!859582 () Bool)

(assert (=> d!1617545 (= c!859582 (= from!1228 0))))

(declare-fun e!3139635 () Bool)

(assert (=> d!1617545 e!3139635))

(declare-fun res!2142706 () Bool)

(assert (=> d!1617545 (=> (not res!2142706) (not e!3139635))))

(assert (=> d!1617545 (= res!2142706 (<= 0 from!1228))))

(assert (=> d!1617545 (= (apply!14151 lt!2080055 from!1228) lt!2080175)))

(declare-fun b!5025821 () Bool)

(assert (=> b!5025821 (= e!3139635 (< from!1228 (size!38699 lt!2080055)))))

(declare-fun b!5025822 () Bool)

(assert (=> b!5025822 (= e!3139636 (head!10775 lt!2080055))))

(declare-fun b!5025823 () Bool)

(assert (=> b!5025823 (= e!3139636 (apply!14151 (tail!9908 lt!2080055) (- from!1228 1)))))

(assert (= (and d!1617545 res!2142706) b!5025821))

(assert (= (and d!1617545 c!859582) b!5025822))

(assert (= (and d!1617545 (not c!859582)) b!5025823))

(declare-fun m!6061270 () Bool)

(assert (=> d!1617545 m!6061270))

(assert (=> b!5025821 m!6061150))

(declare-fun m!6061272 () Bool)

(assert (=> b!5025822 m!6061272))

(declare-fun m!6061274 () Bool)

(assert (=> b!5025823 m!6061274))

(assert (=> b!5025823 m!6061274))

(declare-fun m!6061276 () Bool)

(assert (=> b!5025823 m!6061276))

(assert (=> b!5025631 d!1617545))

(declare-fun d!1617549 () Bool)

(declare-fun c!859585 () Bool)

(assert (=> d!1617549 (= c!859585 (is-Node!15433 (c!859498 totalInput!1141)))))

(declare-fun e!3139644 () Bool)

(assert (=> d!1617549 (= (inv!76675 (c!859498 totalInput!1141)) e!3139644)))

(declare-fun b!5025833 () Bool)

(declare-fun inv!76682 (Conc!15433) Bool)

(assert (=> b!5025833 (= e!3139644 (inv!76682 (c!859498 totalInput!1141)))))

(declare-fun b!5025834 () Bool)

(declare-fun e!3139645 () Bool)

(assert (=> b!5025834 (= e!3139644 e!3139645)))

(declare-fun res!2142712 () Bool)

(assert (=> b!5025834 (= res!2142712 (not (is-Leaf!25604 (c!859498 totalInput!1141))))))

(assert (=> b!5025834 (=> res!2142712 e!3139645)))

(declare-fun b!5025835 () Bool)

(declare-fun inv!76683 (Conc!15433) Bool)

(assert (=> b!5025835 (= e!3139645 (inv!76683 (c!859498 totalInput!1141)))))

(assert (= (and d!1617549 c!859585) b!5025833))

(assert (= (and d!1617549 (not c!859585)) b!5025834))

(assert (= (and b!5025834 (not res!2142712)) b!5025835))

(declare-fun m!6061288 () Bool)

(assert (=> b!5025833 m!6061288))

(declare-fun m!6061290 () Bool)

(assert (=> b!5025835 m!6061290))

(assert (=> b!5025632 d!1617549))

(declare-fun d!1617553 () Bool)

(declare-fun lt!2080181 () Int)

(assert (=> d!1617553 (= lt!2080181 (size!38699 (list!18773 totalInput!1141)))))

(declare-fun size!38702 (Conc!15433) Int)

(assert (=> d!1617553 (= lt!2080181 (size!38702 (c!859498 totalInput!1141)))))

(assert (=> d!1617553 (= (size!38697 totalInput!1141) lt!2080181)))

(declare-fun bs!1187976 () Bool)

(assert (= bs!1187976 d!1617553))

(assert (=> bs!1187976 m!6061048))

(assert (=> bs!1187976 m!6061048))

(assert (=> bs!1187976 m!6061194))

(declare-fun m!6061292 () Bool)

(assert (=> bs!1187976 m!6061292))

(assert (=> b!5025628 d!1617553))

(declare-fun bs!1187977 () Bool)

(declare-fun d!1617555 () Bool)

(assert (= bs!1187977 (and d!1617555 d!1617529)))

(declare-fun lambda!249237 () Int)

(assert (=> bs!1187977 (not (= lambda!249237 lambda!249217))))

(declare-fun bs!1187978 () Bool)

(assert (= bs!1187978 (and d!1617555 b!5025781)))

(assert (=> bs!1187978 (not (= lambda!249237 lambda!249218))))

(declare-fun bs!1187979 () Bool)

(assert (= bs!1187979 (and d!1617555 b!5025782)))

(assert (=> bs!1187979 (not (= lambda!249237 lambda!249219))))

(declare-fun exists!1395 ((Set Context!6678) Int) Bool)

(assert (=> d!1617555 (= (nullableZipper!927 lt!2080057) (exists!1395 lt!2080057 lambda!249237))))

(declare-fun bs!1187980 () Bool)

(assert (= bs!1187980 d!1617555))

(declare-fun m!6061302 () Bool)

(assert (=> bs!1187980 m!6061302))

(assert (=> b!5025634 d!1617555))

(declare-fun condSetEmpty!28885 () Bool)

(assert (=> setNonEmpty!28879 (= condSetEmpty!28885 (= setRest!28879 (as set.empty (Set Context!6678))))))

(declare-fun setRes!28885 () Bool)

(assert (=> setNonEmpty!28879 (= tp!1408717 setRes!28885)))

(declare-fun setIsEmpty!28885 () Bool)

(assert (=> setIsEmpty!28885 setRes!28885))

(declare-fun tp!1408732 () Bool)

(declare-fun e!3139654 () Bool)

(declare-fun setElem!28885 () Context!6678)

(declare-fun setNonEmpty!28885 () Bool)

(assert (=> setNonEmpty!28885 (= setRes!28885 (and tp!1408732 (inv!76676 setElem!28885) e!3139654))))

(declare-fun setRest!28885 () (Set Context!6678))

(assert (=> setNonEmpty!28885 (= setRest!28879 (set.union (set.insert setElem!28885 (as set.empty (Set Context!6678))) setRest!28885))))

(declare-fun b!5025849 () Bool)

(declare-fun tp!1408731 () Bool)

(assert (=> b!5025849 (= e!3139654 tp!1408731)))

(assert (= (and setNonEmpty!28879 condSetEmpty!28885) setIsEmpty!28885))

(assert (= (and setNonEmpty!28879 (not condSetEmpty!28885)) setNonEmpty!28885))

(assert (= setNonEmpty!28885 b!5025849))

(declare-fun m!6061304 () Bool)

(assert (=> setNonEmpty!28885 m!6061304))

(declare-fun b!5025866 () Bool)

(declare-fun e!3139661 () Bool)

(declare-fun tp!1408741 () Bool)

(declare-fun tp!1408739 () Bool)

(assert (=> b!5025866 (= e!3139661 (and (inv!76675 (left!42533 (c!859498 totalInput!1141))) tp!1408739 (inv!76675 (right!42863 (c!859498 totalInput!1141))) tp!1408741))))

(declare-fun b!5025868 () Bool)

(declare-fun e!3139663 () Bool)

(declare-fun tp!1408740 () Bool)

(assert (=> b!5025868 (= e!3139663 tp!1408740)))

(declare-fun b!5025867 () Bool)

(declare-fun inv!76684 (IArray!30927) Bool)

(assert (=> b!5025867 (= e!3139661 (and (inv!76684 (xs!18759 (c!859498 totalInput!1141))) e!3139663))))

(assert (=> b!5025632 (= tp!1408715 (and (inv!76675 (c!859498 totalInput!1141)) e!3139661))))

(assert (= (and b!5025632 (is-Node!15433 (c!859498 totalInput!1141))) b!5025866))

(assert (= b!5025867 b!5025868))

(assert (= (and b!5025632 (is-Leaf!25604 (c!859498 totalInput!1141))) b!5025867))

(declare-fun m!6061306 () Bool)

(assert (=> b!5025866 m!6061306))

(declare-fun m!6061308 () Bool)

(assert (=> b!5025866 m!6061308))

(declare-fun m!6061310 () Bool)

(assert (=> b!5025867 m!6061310))

(assert (=> b!5025632 m!6061074))

(declare-fun b!5025883 () Bool)

(declare-fun e!3139673 () Bool)

(declare-fun tp!1408746 () Bool)

(declare-fun tp!1408747 () Bool)

(assert (=> b!5025883 (= e!3139673 (and tp!1408746 tp!1408747))))

(assert (=> b!5025629 (= tp!1408716 e!3139673)))

(assert (= (and b!5025629 (is-Cons!58154 (exprs!3839 setElem!28879))) b!5025883))

(push 1)

(assert (not d!1617505))

(assert (not d!1617523))

(assert (not d!1617543))

(assert (not b!5025747))

(assert (not d!1617521))

(assert (not b!5025759))

(assert (not b!5025849))

(assert (not b!5025786))

(assert (not b!5025883))

(assert (not b!5025725))

(assert (not d!1617555))

(assert (not b!5025692))

(assert (not bm!350735))

(assert (not b!5025821))

(assert (not d!1617525))

(assert (not d!1617529))

(assert (not b!5025823))

(assert (not b!5025767))

(assert (not d!1617553))

(assert (not b!5025789))

(assert (not b!5025833))

(assert (not d!1617527))

(assert (not d!1617513))

(assert (not b!5025835))

(assert (not b!5025760))

(assert (not bm!350734))

(assert (not b!5025867))

(assert (not b!5025766))

(assert (not b!5025795))

(assert (not d!1617541))

(assert (not b!5025730))

(assert (not b!5025866))

(assert (not b!5025700))

(assert (not b!5025774))

(assert (not b!5025689))

(assert (not b!5025822))

(assert (not b!5025796))

(assert (not bm!350728))

(assert (not b!5025719))

(assert (not bm!350727))

(assert (not d!1617499))

(assert (not b!5025790))

(assert (not b!5025781))

(assert (not b!5025801))

(assert (not b!5025812))

(assert (not b!5025751))

(assert (not b!5025691))

(assert (not b!5025632))

(assert (not d!1617509))

(assert (not b!5025761))

(assert (not b!5025768))

(assert (not setNonEmpty!28885))

(assert (not d!1617537))

(assert (not d!1617515))

(assert (not d!1617511))

(assert (not b!5025686))

(assert (not b!5025750))

(assert (not d!1617545))

(assert (not b!5025699))

(assert (not b!5025752))

(assert (not b!5025764))

(assert (not b!5025782))

(assert (not b!5025868))

(assert (not b!5025783))

(assert (not d!1617519))

(assert (not bm!350733))

(assert (not b!5025788))

(assert (not b!5025807))

(assert (not b!5025793))

(assert (not d!1617539))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

