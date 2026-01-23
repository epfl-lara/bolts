; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!510564 () Bool)

(assert start!510564)

(declare-fun b!4879517 () Bool)

(declare-fun e!3049634 () Bool)

(declare-datatypes ((T!99300 0))(
  ( (T!99301 (val!22558 Int)) )
))
(declare-datatypes ((List!56157 0))(
  ( (Nil!56033) (Cons!56033 (h!62481 T!99300) (t!364793 List!56157)) )
))
(declare-datatypes ((IArray!29297 0))(
  ( (IArray!29298 (innerList!14706 List!56157)) )
))
(declare-datatypes ((Conc!14618 0))(
  ( (Node!14618 (left!40713 Conc!14618) (right!41043 Conc!14618) (csize!29466 Int) (cheight!14829 Int)) (Leaf!24360 (xs!17928 IArray!29297) (csize!29467 Int)) (Empty!14618) )
))
(declare-fun t!4585 () Conc!14618)

(declare-fun e!3049633 () Bool)

(declare-fun inv!72023 (IArray!29297) Bool)

(assert (=> b!4879517 (= e!3049634 (and (inv!72023 (xs!17928 t!4585)) e!3049633))))

(declare-fun b!4879519 () Bool)

(declare-fun tp!1372977 () Bool)

(declare-fun tp!1372979 () Bool)

(declare-fun inv!72024 (Conc!14618) Bool)

(assert (=> b!4879519 (= e!3049634 (and (inv!72024 (left!40713 t!4585)) tp!1372977 (inv!72024 (right!41043 t!4585)) tp!1372979))))

(declare-fun b!4879520 () Bool)

(declare-fun tp!1372978 () Bool)

(assert (=> b!4879520 (= e!3049633 tp!1372978)))

(declare-fun b!4879521 () Bool)

(declare-fun e!3049635 () Bool)

(declare-fun e!3049632 () Bool)

(assert (=> b!4879521 (= e!3049635 e!3049632)))

(declare-fun res!2082919 () Bool)

(assert (=> b!4879521 (=> res!2082919 e!3049632)))

(declare-fun lt!1999152 () Conc!14618)

(declare-fun isBalanced!3980 (Conc!14618) Bool)

(assert (=> b!4879521 (= res!2082919 (not (isBalanced!3980 lt!1999152)))))

(declare-fun v!5488 () T!99300)

(declare-fun ++!12216 (Conc!14618 Conc!14618) Conc!14618)

(declare-fun fill!241 (Int T!99300) IArray!29297)

(assert (=> b!4879521 (= lt!1999152 (++!12216 (Leaf!24360 (fill!241 1 v!5488) 1) t!4585))))

(declare-fun res!2082920 () Bool)

(assert (=> start!510564 (=> (not res!2082920) (not e!3049635))))

(assert (=> start!510564 (= res!2082920 (isBalanced!3980 t!4585))))

(assert (=> start!510564 e!3049635))

(assert (=> start!510564 (and (inv!72024 t!4585) e!3049634)))

(declare-fun tp_is_empty!35699 () Bool)

(assert (=> start!510564 tp_is_empty!35699))

(declare-fun b!4879518 () Bool)

(declare-fun list!17565 (Conc!14618) List!56157)

(assert (=> b!4879518 (= e!3049632 (not (= (list!17565 lt!1999152) (Cons!56033 v!5488 (list!17565 t!4585)))))))

(assert (= (and start!510564 res!2082920) b!4879521))

(assert (= (and b!4879521 (not res!2082919)) b!4879518))

(get-info :version)

(assert (= (and start!510564 ((_ is Node!14618) t!4585)) b!4879519))

(assert (= b!4879517 b!4879520))

(assert (= (and start!510564 ((_ is Leaf!24360) t!4585)) b!4879517))

(declare-fun m!5882716 () Bool)

(assert (=> b!4879517 m!5882716))

(declare-fun m!5882718 () Bool)

(assert (=> start!510564 m!5882718))

(declare-fun m!5882720 () Bool)

(assert (=> start!510564 m!5882720))

(declare-fun m!5882722 () Bool)

(assert (=> b!4879518 m!5882722))

(declare-fun m!5882724 () Bool)

(assert (=> b!4879518 m!5882724))

(declare-fun m!5882726 () Bool)

(assert (=> b!4879519 m!5882726))

(declare-fun m!5882728 () Bool)

(assert (=> b!4879519 m!5882728))

(declare-fun m!5882730 () Bool)

(assert (=> b!4879521 m!5882730))

(declare-fun m!5882732 () Bool)

(assert (=> b!4879521 m!5882732))

(declare-fun m!5882734 () Bool)

(assert (=> b!4879521 m!5882734))

(check-sat (not b!4879518) (not b!4879517) tp_is_empty!35699 (not start!510564) (not b!4879520) (not b!4879521) (not b!4879519))
(check-sat)
(get-model)

(declare-fun b!4879550 () Bool)

(declare-fun res!2082937 () Bool)

(declare-fun e!3049648 () Bool)

(assert (=> b!4879550 (=> (not res!2082937) (not e!3049648))))

(declare-fun isEmpty!30031 (Conc!14618) Bool)

(assert (=> b!4879550 (= res!2082937 (not (isEmpty!30031 (left!40713 lt!1999152))))))

(declare-fun b!4879551 () Bool)

(declare-fun e!3049649 () Bool)

(assert (=> b!4879551 (= e!3049649 e!3049648)))

(declare-fun res!2082935 () Bool)

(assert (=> b!4879551 (=> (not res!2082935) (not e!3049648))))

(declare-fun height!1951 (Conc!14618) Int)

(assert (=> b!4879551 (= res!2082935 (<= (- 1) (- (height!1951 (left!40713 lt!1999152)) (height!1951 (right!41043 lt!1999152)))))))

(declare-fun b!4879552 () Bool)

(declare-fun res!2082933 () Bool)

(assert (=> b!4879552 (=> (not res!2082933) (not e!3049648))))

(assert (=> b!4879552 (= res!2082933 (isBalanced!3980 (left!40713 lt!1999152)))))

(declare-fun d!1567940 () Bool)

(declare-fun res!2082938 () Bool)

(assert (=> d!1567940 (=> res!2082938 e!3049649)))

(assert (=> d!1567940 (= res!2082938 (not ((_ is Node!14618) lt!1999152)))))

(assert (=> d!1567940 (= (isBalanced!3980 lt!1999152) e!3049649)))

(declare-fun b!4879553 () Bool)

(declare-fun res!2082936 () Bool)

(assert (=> b!4879553 (=> (not res!2082936) (not e!3049648))))

(assert (=> b!4879553 (= res!2082936 (<= (- (height!1951 (left!40713 lt!1999152)) (height!1951 (right!41043 lt!1999152))) 1))))

(declare-fun b!4879554 () Bool)

(declare-fun res!2082934 () Bool)

(assert (=> b!4879554 (=> (not res!2082934) (not e!3049648))))

(assert (=> b!4879554 (= res!2082934 (isBalanced!3980 (right!41043 lt!1999152)))))

(declare-fun b!4879555 () Bool)

(assert (=> b!4879555 (= e!3049648 (not (isEmpty!30031 (right!41043 lt!1999152))))))

(assert (= (and d!1567940 (not res!2082938)) b!4879551))

(assert (= (and b!4879551 res!2082935) b!4879553))

(assert (= (and b!4879553 res!2082936) b!4879552))

(assert (= (and b!4879552 res!2082933) b!4879554))

(assert (= (and b!4879554 res!2082934) b!4879550))

(assert (= (and b!4879550 res!2082937) b!4879555))

(declare-fun m!5882752 () Bool)

(assert (=> b!4879554 m!5882752))

(declare-fun m!5882754 () Bool)

(assert (=> b!4879552 m!5882754))

(declare-fun m!5882756 () Bool)

(assert (=> b!4879553 m!5882756))

(declare-fun m!5882758 () Bool)

(assert (=> b!4879553 m!5882758))

(assert (=> b!4879551 m!5882756))

(assert (=> b!4879551 m!5882758))

(declare-fun m!5882760 () Bool)

(assert (=> b!4879555 m!5882760))

(declare-fun m!5882762 () Bool)

(assert (=> b!4879550 m!5882762))

(assert (=> b!4879521 d!1567940))

(declare-fun b!4879719 () Bool)

(declare-fun c!829929 () Bool)

(declare-fun call!338765 () Int)

(declare-fun call!338753 () Int)

(assert (=> b!4879719 (= c!829929 (>= call!338765 call!338753))))

(declare-fun e!3049731 () Conc!14618)

(declare-fun e!3049733 () Conc!14618)

(assert (=> b!4879719 (= e!3049731 e!3049733)))

(declare-fun b!4879720 () Bool)

(declare-fun e!3049732 () Conc!14618)

(declare-fun e!3049734 () Conc!14618)

(assert (=> b!4879720 (= e!3049732 e!3049734)))

(declare-fun c!829925 () Bool)

(assert (=> b!4879720 (= c!829925 (= t!4585 Empty!14618))))

(declare-fun b!4879721 () Bool)

(declare-fun c!829924 () Bool)

(declare-fun call!338751 () Int)

(declare-fun call!338760 () Int)

(assert (=> b!4879721 (= c!829924 (>= call!338751 call!338760))))

(declare-fun e!3049735 () Conc!14618)

(assert (=> b!4879721 (= e!3049731 e!3049735)))

(declare-fun bm!338746 () Bool)

(declare-fun lt!1999177 () Conc!14618)

(declare-fun c!829928 () Bool)

(assert (=> bm!338746 (= call!338751 (height!1951 (ite c!829928 lt!1999177 (right!41043 t!4585))))))

(declare-fun b!4879722 () Bool)

(declare-fun res!2082996 () Bool)

(declare-fun e!3049737 () Bool)

(assert (=> b!4879722 (=> (not res!2082996) (not e!3049737))))

(declare-fun lt!1999176 () Conc!14618)

(assert (=> b!4879722 (= res!2082996 (isBalanced!3980 lt!1999176))))

(declare-fun b!4879723 () Bool)

(declare-fun e!3049729 () Bool)

(assert (=> b!4879723 (= e!3049729 (isBalanced!3980 t!4585))))

(declare-fun b!4879724 () Bool)

(declare-fun e!3049730 () Conc!14618)

(declare-fun call!338766 () Conc!14618)

(assert (=> b!4879724 (= e!3049730 call!338766)))

(declare-fun d!1567948 () Bool)

(assert (=> d!1567948 e!3049737))

(declare-fun res!2082994 () Bool)

(assert (=> d!1567948 (=> (not res!2082994) (not e!3049737))))

(declare-fun appendAssocInst!885 (Conc!14618 Conc!14618) Bool)

(assert (=> d!1567948 (= res!2082994 (appendAssocInst!885 (Leaf!24360 (fill!241 1 v!5488) 1) t!4585))))

(assert (=> d!1567948 (= lt!1999176 e!3049732)))

(declare-fun c!829927 () Bool)

(assert (=> d!1567948 (= c!829927 (= (Leaf!24360 (fill!241 1 v!5488) 1) Empty!14618))))

(assert (=> d!1567948 e!3049729))

(declare-fun res!2082995 () Bool)

(assert (=> d!1567948 (=> (not res!2082995) (not e!3049729))))

(assert (=> d!1567948 (= res!2082995 (isBalanced!3980 (Leaf!24360 (fill!241 1 v!5488) 1)))))

(assert (=> d!1567948 (= (++!12216 (Leaf!24360 (fill!241 1 v!5488) 1) t!4585) lt!1999176)))

(declare-fun bm!338747 () Bool)

(declare-fun call!338754 () Conc!14618)

(declare-fun call!338758 () Conc!14618)

(assert (=> bm!338747 (= call!338754 call!338758)))

(declare-fun b!4879725 () Bool)

(assert (=> b!4879725 (= e!3049732 t!4585)))

(declare-fun b!4879726 () Bool)

(declare-fun e!3049738 () Conc!14618)

(assert (=> b!4879726 (= e!3049738 call!338754)))

(declare-fun bm!338748 () Bool)

(declare-fun call!338761 () Conc!14618)

(declare-fun call!338757 () Conc!14618)

(assert (=> bm!338748 (= call!338761 call!338757)))

(declare-fun b!4879727 () Bool)

(declare-fun call!338762 () Conc!14618)

(assert (=> b!4879727 (= e!3049733 call!338762)))

(declare-fun b!4879728 () Bool)

(assert (=> b!4879728 (= e!3049735 e!3049730)))

(declare-fun lt!1999178 () Conc!14618)

(declare-fun call!338756 () Conc!14618)

(assert (=> b!4879728 (= lt!1999178 call!338756)))

(declare-fun c!829926 () Bool)

(assert (=> b!4879728 (= c!829926 (= call!338753 (- call!338765 3)))))

(declare-fun b!4879729 () Bool)

(declare-fun c!829923 () Bool)

(declare-fun lt!1999179 () Int)

(assert (=> b!4879729 (= c!829923 (and (<= (- 1) lt!1999179) (<= lt!1999179 1)))))

(assert (=> b!4879729 (= lt!1999179 (- (height!1951 t!4585) (height!1951 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun e!3049736 () Conc!14618)

(assert (=> b!4879729 (= e!3049734 e!3049736)))

(declare-fun b!4879730 () Bool)

(assert (=> b!4879730 (= e!3049734 (Leaf!24360 (fill!241 1 v!5488) 1))))

(declare-fun bm!338749 () Bool)

(declare-fun call!338752 () Conc!14618)

(assert (=> bm!338749 (= call!338757 call!338752)))

(declare-fun b!4879731 () Bool)

(declare-fun res!2082997 () Bool)

(assert (=> b!4879731 (=> (not res!2082997) (not e!3049737))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4879731 (= res!2082997 (<= (height!1951 lt!1999176) (+ (max!0 (height!1951 (Leaf!24360 (fill!241 1 v!5488) 1)) (height!1951 t!4585)) 1)))))

(declare-fun call!338759 () Conc!14618)

(declare-fun c!829922 () Bool)

(declare-fun bm!338750 () Bool)

(declare-fun <>!375 (Conc!14618 Conc!14618) Conc!14618)

(assert (=> bm!338750 (= call!338758 (<>!375 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))

(declare-fun bm!338751 () Bool)

(declare-fun call!338763 () Conc!14618)

(declare-fun call!338755 () Conc!14618)

(assert (=> bm!338751 (= call!338763 call!338755)))

(declare-fun b!4879732 () Bool)

(assert (=> b!4879732 (= e!3049730 call!338766)))

(declare-fun bm!338752 () Bool)

(assert (=> bm!338752 (= call!338755 (++!12216 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))

(declare-fun b!4879733 () Bool)

(declare-fun ++!12218 (List!56157 List!56157) List!56157)

(assert (=> b!4879733 (= e!3049737 (= (list!17565 lt!1999176) (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 t!4585))))))

(declare-fun bm!338753 () Bool)

(assert (=> bm!338753 (= call!338753 (height!1951 (ite c!829928 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) lt!1999178)))))

(declare-fun b!4879734 () Bool)

(assert (=> b!4879734 (= e!3049736 call!338752)))

(declare-fun bm!338754 () Bool)

(assert (=> bm!338754 (= call!338762 call!338757)))

(declare-fun b!4879735 () Bool)

(assert (=> b!4879735 (= e!3049736 e!3049731)))

(assert (=> b!4879735 (= c!829928 (< lt!1999179 (- 1)))))

(declare-fun bm!338755 () Bool)

(assert (=> bm!338755 (= call!338760 (height!1951 (ite c!829928 (Leaf!24360 (fill!241 1 v!5488) 1) (left!40713 t!4585))))))

(declare-fun bm!338756 () Bool)

(declare-fun call!338764 () Conc!14618)

(assert (=> bm!338756 (= call!338764 call!338758)))

(declare-fun bm!338757 () Bool)

(assert (=> bm!338757 (= call!338766 call!338761)))

(declare-fun b!4879736 () Bool)

(assert (=> b!4879736 (= e!3049738 call!338754)))

(declare-fun bm!338758 () Bool)

(assert (=> bm!338758 (= call!338765 (height!1951 (ite c!829928 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) t!4585)))))

(declare-fun bm!338759 () Bool)

(assert (=> bm!338759 (= call!338752 (<>!375 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))

(declare-fun bm!338760 () Bool)

(assert (=> bm!338760 (= call!338759 call!338762)))

(declare-fun b!4879737 () Bool)

(assert (=> b!4879737 (= e!3049735 call!338761)))

(declare-fun b!4879738 () Bool)

(assert (=> b!4879738 (= e!3049733 e!3049738)))

(assert (=> b!4879738 (= lt!1999177 call!338763)))

(assert (=> b!4879738 (= c!829922 (= call!338751 (- call!338760 3)))))

(declare-fun b!4879739 () Bool)

(declare-fun res!2082993 () Bool)

(assert (=> b!4879739 (=> (not res!2082993) (not e!3049737))))

(assert (=> b!4879739 (= res!2082993 (>= (height!1951 lt!1999176) (max!0 (height!1951 (Leaf!24360 (fill!241 1 v!5488) 1)) (height!1951 t!4585))))))

(declare-fun bm!338761 () Bool)

(assert (=> bm!338761 (= call!338756 call!338755)))

(assert (= (and d!1567948 res!2082995) b!4879723))

(assert (= (and d!1567948 c!829927) b!4879725))

(assert (= (and d!1567948 (not c!829927)) b!4879720))

(assert (= (and b!4879720 c!829925) b!4879730))

(assert (= (and b!4879720 (not c!829925)) b!4879729))

(assert (= (and b!4879729 c!829923) b!4879734))

(assert (= (and b!4879729 (not c!829923)) b!4879735))

(assert (= (and b!4879735 c!829928) b!4879719))

(assert (= (and b!4879735 (not c!829928)) b!4879721))

(assert (= (and b!4879719 c!829929) b!4879727))

(assert (= (and b!4879719 (not c!829929)) b!4879738))

(assert (= (and b!4879738 c!829922) b!4879736))

(assert (= (and b!4879738 (not c!829922)) b!4879726))

(assert (= (or b!4879736 b!4879726) bm!338760))

(assert (= (or b!4879736 b!4879726) bm!338747))

(assert (= (or b!4879727 b!4879738) bm!338751))

(assert (= (or b!4879727 bm!338760) bm!338754))

(assert (= (and b!4879721 c!829924) b!4879737))

(assert (= (and b!4879721 (not c!829924)) b!4879728))

(assert (= (and b!4879728 c!829926) b!4879724))

(assert (= (and b!4879728 (not c!829926)) b!4879732))

(assert (= (or b!4879724 b!4879732) bm!338756))

(assert (= (or b!4879724 b!4879732) bm!338757))

(assert (= (or b!4879737 b!4879728) bm!338761))

(assert (= (or b!4879737 bm!338757) bm!338748))

(assert (= (or bm!338747 bm!338756) bm!338750))

(assert (= (or b!4879738 b!4879721) bm!338746))

(assert (= (or b!4879719 b!4879728) bm!338758))

(assert (= (or bm!338754 bm!338748) bm!338749))

(assert (= (or b!4879738 b!4879721) bm!338755))

(assert (= (or b!4879719 b!4879728) bm!338753))

(assert (= (or bm!338751 bm!338761) bm!338752))

(assert (= (or b!4879734 bm!338749) bm!338759))

(assert (= (and d!1567948 res!2082994) b!4879722))

(assert (= (and b!4879722 res!2082996) b!4879731))

(assert (= (and b!4879731 res!2082997) b!4879739))

(assert (= (and b!4879739 res!2082993) b!4879733))

(declare-fun m!5882852 () Bool)

(assert (=> bm!338758 m!5882852))

(declare-fun m!5882854 () Bool)

(assert (=> d!1567948 m!5882854))

(declare-fun m!5882856 () Bool)

(assert (=> d!1567948 m!5882856))

(declare-fun m!5882858 () Bool)

(assert (=> bm!338746 m!5882858))

(declare-fun m!5882860 () Bool)

(assert (=> b!4879729 m!5882860))

(declare-fun m!5882862 () Bool)

(assert (=> b!4879729 m!5882862))

(assert (=> b!4879723 m!5882718))

(declare-fun m!5882864 () Bool)

(assert (=> bm!338750 m!5882864))

(declare-fun m!5882866 () Bool)

(assert (=> bm!338752 m!5882866))

(declare-fun m!5882868 () Bool)

(assert (=> b!4879739 m!5882868))

(assert (=> b!4879739 m!5882862))

(assert (=> b!4879739 m!5882860))

(assert (=> b!4879739 m!5882862))

(assert (=> b!4879739 m!5882860))

(declare-fun m!5882870 () Bool)

(assert (=> b!4879739 m!5882870))

(declare-fun m!5882872 () Bool)

(assert (=> bm!338755 m!5882872))

(declare-fun m!5882874 () Bool)

(assert (=> b!4879722 m!5882874))

(declare-fun m!5882876 () Bool)

(assert (=> bm!338753 m!5882876))

(declare-fun m!5882878 () Bool)

(assert (=> bm!338759 m!5882878))

(assert (=> b!4879731 m!5882868))

(assert (=> b!4879731 m!5882862))

(assert (=> b!4879731 m!5882860))

(assert (=> b!4879731 m!5882862))

(assert (=> b!4879731 m!5882860))

(assert (=> b!4879731 m!5882870))

(declare-fun m!5882880 () Bool)

(assert (=> b!4879733 m!5882880))

(declare-fun m!5882882 () Bool)

(assert (=> b!4879733 m!5882882))

(assert (=> b!4879733 m!5882724))

(assert (=> b!4879733 m!5882882))

(assert (=> b!4879733 m!5882724))

(declare-fun m!5882884 () Bool)

(assert (=> b!4879733 m!5882884))

(assert (=> b!4879521 d!1567948))

(declare-fun d!1567964 () Bool)

(declare-fun lt!1999182 () IArray!29297)

(declare-fun fill!243 (Int T!99300) List!56157)

(assert (=> d!1567964 (= lt!1999182 (IArray!29298 (fill!243 1 v!5488)))))

(declare-fun choose!35661 (Int T!99300) IArray!29297)

(assert (=> d!1567964 (= lt!1999182 (choose!35661 1 v!5488))))

(assert (=> d!1567964 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!1567964 (= (fill!241 1 v!5488) lt!1999182)))

(declare-fun bs!1175333 () Bool)

(assert (= bs!1175333 d!1567964))

(declare-fun m!5882886 () Bool)

(assert (=> bs!1175333 m!5882886))

(declare-fun m!5882888 () Bool)

(assert (=> bs!1175333 m!5882888))

(assert (=> b!4879521 d!1567964))

(declare-fun b!4879740 () Bool)

(declare-fun res!2083002 () Bool)

(declare-fun e!3049739 () Bool)

(assert (=> b!4879740 (=> (not res!2083002) (not e!3049739))))

(assert (=> b!4879740 (= res!2083002 (not (isEmpty!30031 (left!40713 t!4585))))))

(declare-fun b!4879741 () Bool)

(declare-fun e!3049740 () Bool)

(assert (=> b!4879741 (= e!3049740 e!3049739)))

(declare-fun res!2083000 () Bool)

(assert (=> b!4879741 (=> (not res!2083000) (not e!3049739))))

(assert (=> b!4879741 (= res!2083000 (<= (- 1) (- (height!1951 (left!40713 t!4585)) (height!1951 (right!41043 t!4585)))))))

(declare-fun b!4879742 () Bool)

(declare-fun res!2082998 () Bool)

(assert (=> b!4879742 (=> (not res!2082998) (not e!3049739))))

(assert (=> b!4879742 (= res!2082998 (isBalanced!3980 (left!40713 t!4585)))))

(declare-fun d!1567966 () Bool)

(declare-fun res!2083003 () Bool)

(assert (=> d!1567966 (=> res!2083003 e!3049740)))

(assert (=> d!1567966 (= res!2083003 (not ((_ is Node!14618) t!4585)))))

(assert (=> d!1567966 (= (isBalanced!3980 t!4585) e!3049740)))

(declare-fun b!4879743 () Bool)

(declare-fun res!2083001 () Bool)

(assert (=> b!4879743 (=> (not res!2083001) (not e!3049739))))

(assert (=> b!4879743 (= res!2083001 (<= (- (height!1951 (left!40713 t!4585)) (height!1951 (right!41043 t!4585))) 1))))

(declare-fun b!4879744 () Bool)

(declare-fun res!2082999 () Bool)

(assert (=> b!4879744 (=> (not res!2082999) (not e!3049739))))

(assert (=> b!4879744 (= res!2082999 (isBalanced!3980 (right!41043 t!4585)))))

(declare-fun b!4879745 () Bool)

(assert (=> b!4879745 (= e!3049739 (not (isEmpty!30031 (right!41043 t!4585))))))

(assert (= (and d!1567966 (not res!2083003)) b!4879741))

(assert (= (and b!4879741 res!2083000) b!4879743))

(assert (= (and b!4879743 res!2083001) b!4879742))

(assert (= (and b!4879742 res!2082998) b!4879744))

(assert (= (and b!4879744 res!2082999) b!4879740))

(assert (= (and b!4879740 res!2083002) b!4879745))

(declare-fun m!5882890 () Bool)

(assert (=> b!4879744 m!5882890))

(declare-fun m!5882892 () Bool)

(assert (=> b!4879742 m!5882892))

(declare-fun m!5882894 () Bool)

(assert (=> b!4879743 m!5882894))

(declare-fun m!5882896 () Bool)

(assert (=> b!4879743 m!5882896))

(assert (=> b!4879741 m!5882894))

(assert (=> b!4879741 m!5882896))

(declare-fun m!5882898 () Bool)

(assert (=> b!4879745 m!5882898))

(declare-fun m!5882900 () Bool)

(assert (=> b!4879740 m!5882900))

(assert (=> start!510564 d!1567966))

(declare-fun d!1567968 () Bool)

(declare-fun c!829932 () Bool)

(assert (=> d!1567968 (= c!829932 ((_ is Node!14618) t!4585))))

(declare-fun e!3049745 () Bool)

(assert (=> d!1567968 (= (inv!72024 t!4585) e!3049745)))

(declare-fun b!4879752 () Bool)

(declare-fun inv!72027 (Conc!14618) Bool)

(assert (=> b!4879752 (= e!3049745 (inv!72027 t!4585))))

(declare-fun b!4879753 () Bool)

(declare-fun e!3049746 () Bool)

(assert (=> b!4879753 (= e!3049745 e!3049746)))

(declare-fun res!2083006 () Bool)

(assert (=> b!4879753 (= res!2083006 (not ((_ is Leaf!24360) t!4585)))))

(assert (=> b!4879753 (=> res!2083006 e!3049746)))

(declare-fun b!4879754 () Bool)

(declare-fun inv!72028 (Conc!14618) Bool)

(assert (=> b!4879754 (= e!3049746 (inv!72028 t!4585))))

(assert (= (and d!1567968 c!829932) b!4879752))

(assert (= (and d!1567968 (not c!829932)) b!4879753))

(assert (= (and b!4879753 (not res!2083006)) b!4879754))

(declare-fun m!5882902 () Bool)

(assert (=> b!4879752 m!5882902))

(declare-fun m!5882904 () Bool)

(assert (=> b!4879754 m!5882904))

(assert (=> start!510564 d!1567968))

(declare-fun d!1567970 () Bool)

(declare-fun size!36961 (List!56157) Int)

(assert (=> d!1567970 (= (inv!72023 (xs!17928 t!4585)) (<= (size!36961 (innerList!14706 (xs!17928 t!4585))) 2147483647))))

(declare-fun bs!1175334 () Bool)

(assert (= bs!1175334 d!1567970))

(declare-fun m!5882906 () Bool)

(assert (=> bs!1175334 m!5882906))

(assert (=> b!4879517 d!1567970))

(declare-fun d!1567972 () Bool)

(declare-fun c!829937 () Bool)

(assert (=> d!1567972 (= c!829937 ((_ is Empty!14618) lt!1999152))))

(declare-fun e!3049751 () List!56157)

(assert (=> d!1567972 (= (list!17565 lt!1999152) e!3049751)))

(declare-fun b!4879763 () Bool)

(assert (=> b!4879763 (= e!3049751 Nil!56033)))

(declare-fun b!4879765 () Bool)

(declare-fun e!3049752 () List!56157)

(declare-fun list!17567 (IArray!29297) List!56157)

(assert (=> b!4879765 (= e!3049752 (list!17567 (xs!17928 lt!1999152)))))

(declare-fun b!4879766 () Bool)

(assert (=> b!4879766 (= e!3049752 (++!12218 (list!17565 (left!40713 lt!1999152)) (list!17565 (right!41043 lt!1999152))))))

(declare-fun b!4879764 () Bool)

(assert (=> b!4879764 (= e!3049751 e!3049752)))

(declare-fun c!829938 () Bool)

(assert (=> b!4879764 (= c!829938 ((_ is Leaf!24360) lt!1999152))))

(assert (= (and d!1567972 c!829937) b!4879763))

(assert (= (and d!1567972 (not c!829937)) b!4879764))

(assert (= (and b!4879764 c!829938) b!4879765))

(assert (= (and b!4879764 (not c!829938)) b!4879766))

(declare-fun m!5882908 () Bool)

(assert (=> b!4879765 m!5882908))

(declare-fun m!5882910 () Bool)

(assert (=> b!4879766 m!5882910))

(declare-fun m!5882912 () Bool)

(assert (=> b!4879766 m!5882912))

(assert (=> b!4879766 m!5882910))

(assert (=> b!4879766 m!5882912))

(declare-fun m!5882914 () Bool)

(assert (=> b!4879766 m!5882914))

(assert (=> b!4879518 d!1567972))

(declare-fun d!1567974 () Bool)

(declare-fun c!829939 () Bool)

(assert (=> d!1567974 (= c!829939 ((_ is Empty!14618) t!4585))))

(declare-fun e!3049753 () List!56157)

(assert (=> d!1567974 (= (list!17565 t!4585) e!3049753)))

(declare-fun b!4879767 () Bool)

(assert (=> b!4879767 (= e!3049753 Nil!56033)))

(declare-fun b!4879769 () Bool)

(declare-fun e!3049754 () List!56157)

(assert (=> b!4879769 (= e!3049754 (list!17567 (xs!17928 t!4585)))))

(declare-fun b!4879770 () Bool)

(assert (=> b!4879770 (= e!3049754 (++!12218 (list!17565 (left!40713 t!4585)) (list!17565 (right!41043 t!4585))))))

(declare-fun b!4879768 () Bool)

(assert (=> b!4879768 (= e!3049753 e!3049754)))

(declare-fun c!829940 () Bool)

(assert (=> b!4879768 (= c!829940 ((_ is Leaf!24360) t!4585))))

(assert (= (and d!1567974 c!829939) b!4879767))

(assert (= (and d!1567974 (not c!829939)) b!4879768))

(assert (= (and b!4879768 c!829940) b!4879769))

(assert (= (and b!4879768 (not c!829940)) b!4879770))

(declare-fun m!5882916 () Bool)

(assert (=> b!4879769 m!5882916))

(declare-fun m!5882918 () Bool)

(assert (=> b!4879770 m!5882918))

(declare-fun m!5882920 () Bool)

(assert (=> b!4879770 m!5882920))

(assert (=> b!4879770 m!5882918))

(assert (=> b!4879770 m!5882920))

(declare-fun m!5882922 () Bool)

(assert (=> b!4879770 m!5882922))

(assert (=> b!4879518 d!1567974))

(declare-fun d!1567976 () Bool)

(declare-fun c!829941 () Bool)

(assert (=> d!1567976 (= c!829941 ((_ is Node!14618) (left!40713 t!4585)))))

(declare-fun e!3049755 () Bool)

(assert (=> d!1567976 (= (inv!72024 (left!40713 t!4585)) e!3049755)))

(declare-fun b!4879771 () Bool)

(assert (=> b!4879771 (= e!3049755 (inv!72027 (left!40713 t!4585)))))

(declare-fun b!4879772 () Bool)

(declare-fun e!3049756 () Bool)

(assert (=> b!4879772 (= e!3049755 e!3049756)))

(declare-fun res!2083007 () Bool)

(assert (=> b!4879772 (= res!2083007 (not ((_ is Leaf!24360) (left!40713 t!4585))))))

(assert (=> b!4879772 (=> res!2083007 e!3049756)))

(declare-fun b!4879773 () Bool)

(assert (=> b!4879773 (= e!3049756 (inv!72028 (left!40713 t!4585)))))

(assert (= (and d!1567976 c!829941) b!4879771))

(assert (= (and d!1567976 (not c!829941)) b!4879772))

(assert (= (and b!4879772 (not res!2083007)) b!4879773))

(declare-fun m!5882924 () Bool)

(assert (=> b!4879771 m!5882924))

(declare-fun m!5882926 () Bool)

(assert (=> b!4879773 m!5882926))

(assert (=> b!4879519 d!1567976))

(declare-fun d!1567978 () Bool)

(declare-fun c!829942 () Bool)

(assert (=> d!1567978 (= c!829942 ((_ is Node!14618) (right!41043 t!4585)))))

(declare-fun e!3049757 () Bool)

(assert (=> d!1567978 (= (inv!72024 (right!41043 t!4585)) e!3049757)))

(declare-fun b!4879774 () Bool)

(assert (=> b!4879774 (= e!3049757 (inv!72027 (right!41043 t!4585)))))

(declare-fun b!4879775 () Bool)

(declare-fun e!3049758 () Bool)

(assert (=> b!4879775 (= e!3049757 e!3049758)))

(declare-fun res!2083008 () Bool)

(assert (=> b!4879775 (= res!2083008 (not ((_ is Leaf!24360) (right!41043 t!4585))))))

(assert (=> b!4879775 (=> res!2083008 e!3049758)))

(declare-fun b!4879776 () Bool)

(assert (=> b!4879776 (= e!3049758 (inv!72028 (right!41043 t!4585)))))

(assert (= (and d!1567978 c!829942) b!4879774))

(assert (= (and d!1567978 (not c!829942)) b!4879775))

(assert (= (and b!4879775 (not res!2083008)) b!4879776))

(declare-fun m!5882928 () Bool)

(assert (=> b!4879774 m!5882928))

(declare-fun m!5882930 () Bool)

(assert (=> b!4879776 m!5882930))

(assert (=> b!4879519 d!1567978))

(declare-fun b!4879785 () Bool)

(declare-fun e!3049764 () Bool)

(declare-fun tp!1373002 () Bool)

(declare-fun tp!1373003 () Bool)

(assert (=> b!4879785 (= e!3049764 (and (inv!72024 (left!40713 (left!40713 t!4585))) tp!1373003 (inv!72024 (right!41043 (left!40713 t!4585))) tp!1373002))))

(declare-fun b!4879787 () Bool)

(declare-fun e!3049763 () Bool)

(declare-fun tp!1373001 () Bool)

(assert (=> b!4879787 (= e!3049763 tp!1373001)))

(declare-fun b!4879786 () Bool)

(assert (=> b!4879786 (= e!3049764 (and (inv!72023 (xs!17928 (left!40713 t!4585))) e!3049763))))

(assert (=> b!4879519 (= tp!1372977 (and (inv!72024 (left!40713 t!4585)) e!3049764))))

(assert (= (and b!4879519 ((_ is Node!14618) (left!40713 t!4585))) b!4879785))

(assert (= b!4879786 b!4879787))

(assert (= (and b!4879519 ((_ is Leaf!24360) (left!40713 t!4585))) b!4879786))

(declare-fun m!5882932 () Bool)

(assert (=> b!4879785 m!5882932))

(declare-fun m!5882934 () Bool)

(assert (=> b!4879785 m!5882934))

(declare-fun m!5882936 () Bool)

(assert (=> b!4879786 m!5882936))

(assert (=> b!4879519 m!5882726))

(declare-fun b!4879788 () Bool)

(declare-fun tp!1373005 () Bool)

(declare-fun e!3049766 () Bool)

(declare-fun tp!1373006 () Bool)

(assert (=> b!4879788 (= e!3049766 (and (inv!72024 (left!40713 (right!41043 t!4585))) tp!1373006 (inv!72024 (right!41043 (right!41043 t!4585))) tp!1373005))))

(declare-fun b!4879790 () Bool)

(declare-fun e!3049765 () Bool)

(declare-fun tp!1373004 () Bool)

(assert (=> b!4879790 (= e!3049765 tp!1373004)))

(declare-fun b!4879789 () Bool)

(assert (=> b!4879789 (= e!3049766 (and (inv!72023 (xs!17928 (right!41043 t!4585))) e!3049765))))

(assert (=> b!4879519 (= tp!1372979 (and (inv!72024 (right!41043 t!4585)) e!3049766))))

(assert (= (and b!4879519 ((_ is Node!14618) (right!41043 t!4585))) b!4879788))

(assert (= b!4879789 b!4879790))

(assert (= (and b!4879519 ((_ is Leaf!24360) (right!41043 t!4585))) b!4879789))

(declare-fun m!5882938 () Bool)

(assert (=> b!4879788 m!5882938))

(declare-fun m!5882940 () Bool)

(assert (=> b!4879788 m!5882940))

(declare-fun m!5882942 () Bool)

(assert (=> b!4879789 m!5882942))

(assert (=> b!4879519 m!5882728))

(declare-fun b!4879795 () Bool)

(declare-fun e!3049769 () Bool)

(declare-fun tp!1373009 () Bool)

(assert (=> b!4879795 (= e!3049769 (and tp_is_empty!35699 tp!1373009))))

(assert (=> b!4879520 (= tp!1372978 e!3049769)))

(assert (= (and b!4879520 ((_ is Cons!56033) (innerList!14706 (xs!17928 t!4585)))) b!4879795))

(check-sat (not b!4879553) (not b!4879769) (not b!4879773) (not d!1567964) (not b!4879765) (not b!4879551) (not b!4879790) (not b!4879766) (not bm!338752) (not b!4879731) (not bm!338750) tp_is_empty!35699 (not b!4879776) (not bm!338759) (not b!4879740) (not b!4879743) (not b!4879752) (not bm!338746) (not b!4879729) (not b!4879550) (not b!4879723) (not b!4879786) (not d!1567970) (not d!1567948) (not b!4879733) (not b!4879519) (not b!4879555) (not bm!338753) (not b!4879741) (not b!4879722) (not b!4879789) (not b!4879745) (not b!4879788) (not b!4879795) (not b!4879771) (not b!4879770) (not bm!338758) (not b!4879744) (not b!4879739) (not b!4879774) (not b!4879554) (not b!4879742) (not b!4879787) (not b!4879552) (not bm!338755) (not b!4879754) (not b!4879785))
(check-sat)
(get-model)

(declare-fun d!1568012 () Bool)

(assert (=> d!1568012 (= (height!1951 (left!40713 lt!1999152)) (ite ((_ is Empty!14618) (left!40713 lt!1999152)) 0 (ite ((_ is Leaf!24360) (left!40713 lt!1999152)) 1 (cheight!14829 (left!40713 lt!1999152)))))))

(assert (=> b!4879553 d!1568012))

(declare-fun d!1568022 () Bool)

(assert (=> d!1568022 (= (height!1951 (right!41043 lt!1999152)) (ite ((_ is Empty!14618) (right!41043 lt!1999152)) 0 (ite ((_ is Leaf!24360) (right!41043 lt!1999152)) 1 (cheight!14829 (right!41043 lt!1999152)))))))

(assert (=> b!4879553 d!1568022))

(declare-fun d!1568024 () Bool)

(assert (=> d!1568024 (= (height!1951 (ite c!829928 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) t!4585)) (ite ((_ is Empty!14618) (ite c!829928 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) t!4585)) 0 (ite ((_ is Leaf!24360) (ite c!829928 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) t!4585)) 1 (cheight!14829 (ite c!829928 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) t!4585)))))))

(assert (=> bm!338758 d!1568024))

(declare-fun b!4879940 () Bool)

(declare-fun e!3049850 () Bool)

(declare-fun e!3049854 () Bool)

(assert (=> b!4879940 (= e!3049850 e!3049854)))

(declare-fun res!2083100 () Bool)

(assert (=> b!4879940 (=> res!2083100 e!3049854)))

(assert (=> b!4879940 (= res!2083100 (not ((_ is Node!14618) (left!40713 t!4585))))))

(declare-fun b!4879941 () Bool)

(declare-fun e!3049848 () Bool)

(declare-fun e!3049852 () Bool)

(assert (=> b!4879941 (= e!3049848 e!3049852)))

(declare-fun res!2083097 () Bool)

(assert (=> b!4879941 (=> (not res!2083097) (not e!3049852))))

(declare-fun appendAssoc!289 (List!56157 List!56157 List!56157) Bool)

(assert (=> b!4879941 (= res!2083097 (appendAssoc!289 (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585)))))

(declare-fun d!1568026 () Bool)

(declare-fun e!3049847 () Bool)

(assert (=> d!1568026 e!3049847))

(declare-fun res!2083095 () Bool)

(assert (=> d!1568026 (=> (not res!2083095) (not e!3049847))))

(declare-fun e!3049855 () Bool)

(assert (=> d!1568026 (= res!2083095 e!3049855)))

(declare-fun res!2083101 () Bool)

(assert (=> d!1568026 (=> res!2083101 e!3049855)))

(assert (=> d!1568026 (= res!2083101 (not ((_ is Node!14618) (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568026 (= (appendAssocInst!885 (Leaf!24360 (fill!241 1 v!5488) 1) t!4585) true)))

(declare-fun b!4879942 () Bool)

(declare-fun e!3049849 () Bool)

(assert (=> b!4879942 (= e!3049849 (appendAssoc!289 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585)))) (list!17565 (right!41043 (left!40713 t!4585))) (list!17565 (right!41043 t!4585))))))

(declare-fun b!4879943 () Bool)

(declare-fun e!3049853 () Bool)

(assert (=> b!4879943 (= e!3049853 e!3049848)))

(declare-fun res!2083098 () Bool)

(assert (=> b!4879943 (=> res!2083098 e!3049848)))

(assert (=> b!4879943 (= res!2083098 (not ((_ is Node!14618) (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4879944 () Bool)

(declare-fun e!3049851 () Bool)

(assert (=> b!4879944 (= e!3049847 e!3049851)))

(declare-fun res!2083093 () Bool)

(assert (=> b!4879944 (=> res!2083093 e!3049851)))

(assert (=> b!4879944 (= res!2083093 (not ((_ is Node!14618) t!4585)))))

(declare-fun b!4879945 () Bool)

(assert (=> b!4879945 (= e!3049855 e!3049853)))

(declare-fun res!2083099 () Bool)

(assert (=> b!4879945 (=> (not res!2083099) (not e!3049853))))

(assert (=> b!4879945 (= res!2083099 (appendAssoc!289 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 t!4585)))))

(declare-fun b!4879946 () Bool)

(assert (=> b!4879946 (= e!3049852 (appendAssoc!289 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (++!12218 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585))))))

(declare-fun b!4879947 () Bool)

(assert (=> b!4879947 (= e!3049854 e!3049849)))

(declare-fun res!2083096 () Bool)

(assert (=> b!4879947 (=> (not res!2083096) (not e!3049849))))

(assert (=> b!4879947 (= res!2083096 (appendAssoc!289 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585))) (list!17565 (right!41043 (left!40713 t!4585)))))))

(declare-fun b!4879948 () Bool)

(assert (=> b!4879948 (= e!3049851 e!3049850)))

(declare-fun res!2083094 () Bool)

(assert (=> b!4879948 (=> (not res!2083094) (not e!3049850))))

(assert (=> b!4879948 (= res!2083094 (appendAssoc!289 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 t!4585)) (list!17565 (right!41043 t!4585))))))

(assert (= (and d!1568026 (not res!2083101)) b!4879945))

(assert (= (and b!4879945 res!2083099) b!4879943))

(assert (= (and b!4879943 (not res!2083098)) b!4879941))

(assert (= (and b!4879941 res!2083097) b!4879946))

(assert (= (and d!1568026 res!2083095) b!4879944))

(assert (= (and b!4879944 (not res!2083093)) b!4879948))

(assert (= (and b!4879948 res!2083094) b!4879940))

(assert (= (and b!4879940 (not res!2083100)) b!4879947))

(assert (= (and b!4879947 res!2083096) b!4879942))

(declare-fun m!5883140 () Bool)

(assert (=> b!4879941 m!5883140))

(declare-fun m!5883142 () Bool)

(assert (=> b!4879941 m!5883142))

(assert (=> b!4879941 m!5882724))

(assert (=> b!4879941 m!5883140))

(assert (=> b!4879941 m!5883142))

(assert (=> b!4879941 m!5882724))

(declare-fun m!5883144 () Bool)

(assert (=> b!4879941 m!5883144))

(declare-fun m!5883146 () Bool)

(assert (=> b!4879945 m!5883146))

(declare-fun m!5883148 () Bool)

(assert (=> b!4879945 m!5883148))

(assert (=> b!4879945 m!5882724))

(assert (=> b!4879945 m!5883146))

(assert (=> b!4879945 m!5883148))

(assert (=> b!4879945 m!5882724))

(declare-fun m!5883150 () Bool)

(assert (=> b!4879945 m!5883150))

(assert (=> b!4879947 m!5882882))

(declare-fun m!5883152 () Bool)

(assert (=> b!4879947 m!5883152))

(declare-fun m!5883154 () Bool)

(assert (=> b!4879947 m!5883154))

(assert (=> b!4879947 m!5882882))

(assert (=> b!4879947 m!5883152))

(assert (=> b!4879947 m!5883154))

(declare-fun m!5883156 () Bool)

(assert (=> b!4879947 m!5883156))

(assert (=> b!4879948 m!5882882))

(assert (=> b!4879948 m!5882918))

(assert (=> b!4879948 m!5882920))

(assert (=> b!4879948 m!5882882))

(assert (=> b!4879948 m!5882918))

(assert (=> b!4879948 m!5882920))

(declare-fun m!5883158 () Bool)

(assert (=> b!4879948 m!5883158))

(assert (=> b!4879942 m!5883154))

(assert (=> b!4879942 m!5882882))

(declare-fun m!5883160 () Bool)

(assert (=> b!4879942 m!5883160))

(assert (=> b!4879942 m!5883154))

(assert (=> b!4879942 m!5882920))

(declare-fun m!5883162 () Bool)

(assert (=> b!4879942 m!5883162))

(assert (=> b!4879942 m!5883152))

(assert (=> b!4879942 m!5882882))

(assert (=> b!4879942 m!5883152))

(assert (=> b!4879942 m!5883160))

(assert (=> b!4879942 m!5882920))

(assert (=> b!4879946 m!5883146))

(assert (=> b!4879946 m!5883140))

(declare-fun m!5883164 () Bool)

(assert (=> b!4879946 m!5883164))

(declare-fun m!5883166 () Bool)

(assert (=> b!4879946 m!5883166))

(assert (=> b!4879946 m!5883142))

(assert (=> b!4879946 m!5882724))

(assert (=> b!4879946 m!5883164))

(assert (=> b!4879946 m!5883146))

(assert (=> b!4879946 m!5882724))

(assert (=> b!4879946 m!5883142))

(assert (=> b!4879946 m!5883140))

(assert (=> d!1567948 d!1568026))

(declare-fun b!4879950 () Bool)

(declare-fun res!2083106 () Bool)

(declare-fun e!3049857 () Bool)

(assert (=> b!4879950 (=> (not res!2083106) (not e!3049857))))

(assert (=> b!4879950 (= res!2083106 (not (isEmpty!30031 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4879951 () Bool)

(declare-fun e!3049858 () Bool)

(assert (=> b!4879951 (= e!3049858 e!3049857)))

(declare-fun res!2083104 () Bool)

(assert (=> b!4879951 (=> (not res!2083104) (not e!3049857))))

(assert (=> b!4879951 (= res!2083104 (<= (- 1) (- (height!1951 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (height!1951 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4879952 () Bool)

(declare-fun res!2083102 () Bool)

(assert (=> b!4879952 (=> (not res!2083102) (not e!3049857))))

(assert (=> b!4879952 (= res!2083102 (isBalanced!3980 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun d!1568064 () Bool)

(declare-fun res!2083107 () Bool)

(assert (=> d!1568064 (=> res!2083107 e!3049858)))

(assert (=> d!1568064 (= res!2083107 (not ((_ is Node!14618) (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568064 (= (isBalanced!3980 (Leaf!24360 (fill!241 1 v!5488) 1)) e!3049858)))

(declare-fun b!4879953 () Bool)

(declare-fun res!2083105 () Bool)

(assert (=> b!4879953 (=> (not res!2083105) (not e!3049857))))

(assert (=> b!4879953 (= res!2083105 (<= (- (height!1951 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (height!1951 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) 1))))

(declare-fun b!4879954 () Bool)

(declare-fun res!2083103 () Bool)

(assert (=> b!4879954 (=> (not res!2083103) (not e!3049857))))

(assert (=> b!4879954 (= res!2083103 (isBalanced!3980 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun b!4879955 () Bool)

(assert (=> b!4879955 (= e!3049857 (not (isEmpty!30031 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (= (and d!1568064 (not res!2083107)) b!4879951))

(assert (= (and b!4879951 res!2083104) b!4879953))

(assert (= (and b!4879953 res!2083105) b!4879952))

(assert (= (and b!4879952 res!2083102) b!4879954))

(assert (= (and b!4879954 res!2083103) b!4879950))

(assert (= (and b!4879950 res!2083106) b!4879955))

(declare-fun m!5883168 () Bool)

(assert (=> b!4879954 m!5883168))

(declare-fun m!5883170 () Bool)

(assert (=> b!4879952 m!5883170))

(declare-fun m!5883172 () Bool)

(assert (=> b!4879953 m!5883172))

(declare-fun m!5883174 () Bool)

(assert (=> b!4879953 m!5883174))

(assert (=> b!4879951 m!5883172))

(assert (=> b!4879951 m!5883174))

(declare-fun m!5883176 () Bool)

(assert (=> b!4879955 m!5883176))

(declare-fun m!5883178 () Bool)

(assert (=> b!4879950 m!5883178))

(assert (=> d!1567948 d!1568064))

(declare-fun d!1568066 () Bool)

(declare-fun e!3049881 () Bool)

(assert (=> d!1568066 e!3049881))

(declare-fun res!2083128 () Bool)

(assert (=> d!1568066 (=> (not res!2083128) (not e!3049881))))

(declare-fun lt!1999207 () List!56157)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10010 (List!56157) (InoxSet T!99300))

(assert (=> d!1568066 (= res!2083128 (= (content!10010 lt!1999207) (ite (<= 1 0) ((as const (Array T!99300 Bool)) false) (store ((as const (Array T!99300 Bool)) false) v!5488 true))))))

(declare-fun e!3049882 () List!56157)

(assert (=> d!1568066 (= lt!1999207 e!3049882)))

(declare-fun c!829974 () Bool)

(assert (=> d!1568066 (= c!829974 (<= 1 0))))

(assert (=> d!1568066 (= (fill!243 1 v!5488) lt!1999207)))

(declare-fun b!4879980 () Bool)

(assert (=> b!4879980 (= e!3049882 Nil!56033)))

(declare-fun b!4879981 () Bool)

(assert (=> b!4879981 (= e!3049882 (Cons!56033 v!5488 (fill!243 (- 1 1) v!5488)))))

(declare-fun b!4879982 () Bool)

(assert (=> b!4879982 (= e!3049881 (= (size!36961 lt!1999207) (ite (<= 1 0) 0 1)))))

(assert (= (and d!1568066 c!829974) b!4879980))

(assert (= (and d!1568066 (not c!829974)) b!4879981))

(assert (= (and d!1568066 res!2083128) b!4879982))

(declare-fun m!5883180 () Bool)

(assert (=> d!1568066 m!5883180))

(declare-fun m!5883182 () Bool)

(assert (=> d!1568066 m!5883182))

(declare-fun m!5883184 () Bool)

(assert (=> b!4879981 m!5883184))

(declare-fun m!5883186 () Bool)

(assert (=> b!4879982 m!5883186))

(assert (=> d!1567964 d!1568066))

(declare-fun d!1568068 () Bool)

(declare-fun _$14!1600 () IArray!29297)

(assert (=> d!1568068 (= _$14!1600 (IArray!29298 (fill!243 1 v!5488)))))

(declare-fun e!3049885 () Bool)

(assert (=> d!1568068 (and (inv!72023 _$14!1600) e!3049885)))

(assert (=> d!1568068 (= (choose!35661 1 v!5488) _$14!1600)))

(declare-fun b!4879985 () Bool)

(declare-fun tp!1373015 () Bool)

(assert (=> b!4879985 (= e!3049885 tp!1373015)))

(assert (= d!1568068 b!4879985))

(assert (=> d!1568068 m!5882886))

(declare-fun m!5883188 () Bool)

(assert (=> d!1568068 m!5883188))

(assert (=> d!1567964 d!1568068))

(declare-fun b!4879986 () Bool)

(declare-fun res!2083133 () Bool)

(declare-fun e!3049886 () Bool)

(assert (=> b!4879986 (=> (not res!2083133) (not e!3049886))))

(assert (=> b!4879986 (= res!2083133 (not (isEmpty!30031 (left!40713 (right!41043 lt!1999152)))))))

(declare-fun b!4879987 () Bool)

(declare-fun e!3049887 () Bool)

(assert (=> b!4879987 (= e!3049887 e!3049886)))

(declare-fun res!2083131 () Bool)

(assert (=> b!4879987 (=> (not res!2083131) (not e!3049886))))

(assert (=> b!4879987 (= res!2083131 (<= (- 1) (- (height!1951 (left!40713 (right!41043 lt!1999152))) (height!1951 (right!41043 (right!41043 lt!1999152))))))))

(declare-fun b!4879988 () Bool)

(declare-fun res!2083129 () Bool)

(assert (=> b!4879988 (=> (not res!2083129) (not e!3049886))))

(assert (=> b!4879988 (= res!2083129 (isBalanced!3980 (left!40713 (right!41043 lt!1999152))))))

(declare-fun d!1568070 () Bool)

(declare-fun res!2083134 () Bool)

(assert (=> d!1568070 (=> res!2083134 e!3049887)))

(assert (=> d!1568070 (= res!2083134 (not ((_ is Node!14618) (right!41043 lt!1999152))))))

(assert (=> d!1568070 (= (isBalanced!3980 (right!41043 lt!1999152)) e!3049887)))

(declare-fun b!4879989 () Bool)

(declare-fun res!2083132 () Bool)

(assert (=> b!4879989 (=> (not res!2083132) (not e!3049886))))

(assert (=> b!4879989 (= res!2083132 (<= (- (height!1951 (left!40713 (right!41043 lt!1999152))) (height!1951 (right!41043 (right!41043 lt!1999152)))) 1))))

(declare-fun b!4879990 () Bool)

(declare-fun res!2083130 () Bool)

(assert (=> b!4879990 (=> (not res!2083130) (not e!3049886))))

(assert (=> b!4879990 (= res!2083130 (isBalanced!3980 (right!41043 (right!41043 lt!1999152))))))

(declare-fun b!4879991 () Bool)

(assert (=> b!4879991 (= e!3049886 (not (isEmpty!30031 (right!41043 (right!41043 lt!1999152)))))))

(assert (= (and d!1568070 (not res!2083134)) b!4879987))

(assert (= (and b!4879987 res!2083131) b!4879989))

(assert (= (and b!4879989 res!2083132) b!4879988))

(assert (= (and b!4879988 res!2083129) b!4879990))

(assert (= (and b!4879990 res!2083130) b!4879986))

(assert (= (and b!4879986 res!2083133) b!4879991))

(declare-fun m!5883190 () Bool)

(assert (=> b!4879990 m!5883190))

(declare-fun m!5883192 () Bool)

(assert (=> b!4879988 m!5883192))

(declare-fun m!5883194 () Bool)

(assert (=> b!4879989 m!5883194))

(declare-fun m!5883196 () Bool)

(assert (=> b!4879989 m!5883196))

(assert (=> b!4879987 m!5883194))

(assert (=> b!4879987 m!5883196))

(declare-fun m!5883198 () Bool)

(assert (=> b!4879991 m!5883198))

(declare-fun m!5883200 () Bool)

(assert (=> b!4879986 m!5883200))

(assert (=> b!4879554 d!1568070))

(declare-fun b!4880011 () Bool)

(declare-fun e!3049902 () Conc!14618)

(assert (=> b!4880011 (= e!3049902 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))))

(declare-fun b!4880012 () Bool)

(declare-fun size!36963 (Conc!14618) Int)

(assert (=> b!4880012 (= e!3049902 (Node!14618 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))) (+ (size!36963 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (size!36963 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))) (+ (max!0 (height!1951 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (height!1951 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))) 1)))))

(declare-fun b!4880009 () Bool)

(declare-fun e!3049901 () Conc!14618)

(assert (=> b!4880009 (= e!3049901 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))))

(declare-fun d!1568072 () Bool)

(declare-fun lt!1999210 () Conc!14618)

(assert (=> d!1568072 (= (list!17565 lt!1999210) (++!12218 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))))))

(assert (=> d!1568072 (= lt!1999210 e!3049901)))

(declare-fun c!829979 () Bool)

(assert (=> d!1568072 (= c!829979 (= (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))) Empty!14618))))

(assert (=> d!1568072 (= (<>!375 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) lt!1999210)))

(declare-fun b!4880010 () Bool)

(assert (=> b!4880010 (= e!3049901 e!3049902)))

(declare-fun c!829980 () Bool)

(assert (=> b!4880010 (= c!829980 (= (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))) Empty!14618))))

(assert (= (and d!1568072 c!829979) b!4880009))

(assert (= (and d!1568072 (not c!829979)) b!4880010))

(assert (= (and b!4880010 c!829980) b!4880011))

(assert (= (and b!4880010 (not c!829980)) b!4880012))

(declare-fun m!5883226 () Bool)

(assert (=> b!4880012 m!5883226))

(declare-fun m!5883228 () Bool)

(assert (=> b!4880012 m!5883228))

(declare-fun m!5883230 () Bool)

(assert (=> b!4880012 m!5883230))

(declare-fun m!5883232 () Bool)

(assert (=> b!4880012 m!5883232))

(assert (=> b!4880012 m!5883230))

(declare-fun m!5883234 () Bool)

(assert (=> b!4880012 m!5883234))

(assert (=> b!4880012 m!5883228))

(declare-fun m!5883236 () Bool)

(assert (=> d!1568072 m!5883236))

(declare-fun m!5883238 () Bool)

(assert (=> d!1568072 m!5883238))

(declare-fun m!5883240 () Bool)

(assert (=> d!1568072 m!5883240))

(assert (=> d!1568072 m!5883238))

(assert (=> d!1568072 m!5883240))

(declare-fun m!5883242 () Bool)

(assert (=> d!1568072 m!5883242))

(assert (=> bm!338759 d!1568072))

(declare-fun b!4880060 () Bool)

(declare-fun e!3049926 () List!56157)

(assert (=> b!4880060 (= e!3049926 (list!17565 (right!41043 t!4585)))))

(declare-fun b!4880062 () Bool)

(declare-fun res!2083163 () Bool)

(declare-fun e!3049925 () Bool)

(assert (=> b!4880062 (=> (not res!2083163) (not e!3049925))))

(declare-fun lt!1999216 () List!56157)

(assert (=> b!4880062 (= res!2083163 (= (size!36961 lt!1999216) (+ (size!36961 (list!17565 (left!40713 t!4585))) (size!36961 (list!17565 (right!41043 t!4585))))))))

(declare-fun b!4880063 () Bool)

(assert (=> b!4880063 (= e!3049925 (or (not (= (list!17565 (right!41043 t!4585)) Nil!56033)) (= lt!1999216 (list!17565 (left!40713 t!4585)))))))

(declare-fun d!1568076 () Bool)

(assert (=> d!1568076 e!3049925))

(declare-fun res!2083164 () Bool)

(assert (=> d!1568076 (=> (not res!2083164) (not e!3049925))))

(assert (=> d!1568076 (= res!2083164 (= (content!10010 lt!1999216) ((_ map or) (content!10010 (list!17565 (left!40713 t!4585))) (content!10010 (list!17565 (right!41043 t!4585))))))))

(assert (=> d!1568076 (= lt!1999216 e!3049926)))

(declare-fun c!829995 () Bool)

(assert (=> d!1568076 (= c!829995 ((_ is Nil!56033) (list!17565 (left!40713 t!4585))))))

(assert (=> d!1568076 (= (++!12218 (list!17565 (left!40713 t!4585)) (list!17565 (right!41043 t!4585))) lt!1999216)))

(declare-fun b!4880061 () Bool)

(assert (=> b!4880061 (= e!3049926 (Cons!56033 (h!62481 (list!17565 (left!40713 t!4585))) (++!12218 (t!364793 (list!17565 (left!40713 t!4585))) (list!17565 (right!41043 t!4585)))))))

(assert (= (and d!1568076 c!829995) b!4880060))

(assert (= (and d!1568076 (not c!829995)) b!4880061))

(assert (= (and d!1568076 res!2083164) b!4880062))

(assert (= (and b!4880062 res!2083163) b!4880063))

(declare-fun m!5883340 () Bool)

(assert (=> b!4880062 m!5883340))

(assert (=> b!4880062 m!5882918))

(declare-fun m!5883344 () Bool)

(assert (=> b!4880062 m!5883344))

(assert (=> b!4880062 m!5882920))

(declare-fun m!5883346 () Bool)

(assert (=> b!4880062 m!5883346))

(declare-fun m!5883348 () Bool)

(assert (=> d!1568076 m!5883348))

(assert (=> d!1568076 m!5882918))

(declare-fun m!5883350 () Bool)

(assert (=> d!1568076 m!5883350))

(assert (=> d!1568076 m!5882920))

(declare-fun m!5883352 () Bool)

(assert (=> d!1568076 m!5883352))

(assert (=> b!4880061 m!5882920))

(declare-fun m!5883354 () Bool)

(assert (=> b!4880061 m!5883354))

(assert (=> b!4879770 d!1568076))

(declare-fun d!1568100 () Bool)

(declare-fun c!829998 () Bool)

(assert (=> d!1568100 (= c!829998 ((_ is Empty!14618) (left!40713 t!4585)))))

(declare-fun e!3049931 () List!56157)

(assert (=> d!1568100 (= (list!17565 (left!40713 t!4585)) e!3049931)))

(declare-fun b!4880070 () Bool)

(assert (=> b!4880070 (= e!3049931 Nil!56033)))

(declare-fun b!4880072 () Bool)

(declare-fun e!3049932 () List!56157)

(assert (=> b!4880072 (= e!3049932 (list!17567 (xs!17928 (left!40713 t!4585))))))

(declare-fun b!4880073 () Bool)

(assert (=> b!4880073 (= e!3049932 (++!12218 (list!17565 (left!40713 (left!40713 t!4585))) (list!17565 (right!41043 (left!40713 t!4585)))))))

(declare-fun b!4880071 () Bool)

(assert (=> b!4880071 (= e!3049931 e!3049932)))

(declare-fun c!829999 () Bool)

(assert (=> b!4880071 (= c!829999 ((_ is Leaf!24360) (left!40713 t!4585)))))

(assert (= (and d!1568100 c!829998) b!4880070))

(assert (= (and d!1568100 (not c!829998)) b!4880071))

(assert (= (and b!4880071 c!829999) b!4880072))

(assert (= (and b!4880071 (not c!829999)) b!4880073))

(declare-fun m!5883362 () Bool)

(assert (=> b!4880072 m!5883362))

(assert (=> b!4880073 m!5883152))

(assert (=> b!4880073 m!5883154))

(assert (=> b!4880073 m!5883152))

(assert (=> b!4880073 m!5883154))

(declare-fun m!5883364 () Bool)

(assert (=> b!4880073 m!5883364))

(assert (=> b!4879770 d!1568100))

(declare-fun d!1568106 () Bool)

(declare-fun c!830000 () Bool)

(assert (=> d!1568106 (= c!830000 ((_ is Empty!14618) (right!41043 t!4585)))))

(declare-fun e!3049934 () List!56157)

(assert (=> d!1568106 (= (list!17565 (right!41043 t!4585)) e!3049934)))

(declare-fun b!4880075 () Bool)

(assert (=> b!4880075 (= e!3049934 Nil!56033)))

(declare-fun b!4880077 () Bool)

(declare-fun e!3049935 () List!56157)

(assert (=> b!4880077 (= e!3049935 (list!17567 (xs!17928 (right!41043 t!4585))))))

(declare-fun b!4880078 () Bool)

(assert (=> b!4880078 (= e!3049935 (++!12218 (list!17565 (left!40713 (right!41043 t!4585))) (list!17565 (right!41043 (right!41043 t!4585)))))))

(declare-fun b!4880076 () Bool)

(assert (=> b!4880076 (= e!3049934 e!3049935)))

(declare-fun c!830001 () Bool)

(assert (=> b!4880076 (= c!830001 ((_ is Leaf!24360) (right!41043 t!4585)))))

(assert (= (and d!1568106 c!830000) b!4880075))

(assert (= (and d!1568106 (not c!830000)) b!4880076))

(assert (= (and b!4880076 c!830001) b!4880077))

(assert (= (and b!4880076 (not c!830001)) b!4880078))

(declare-fun m!5883366 () Bool)

(assert (=> b!4880077 m!5883366))

(declare-fun m!5883368 () Bool)

(assert (=> b!4880078 m!5883368))

(declare-fun m!5883370 () Bool)

(assert (=> b!4880078 m!5883370))

(assert (=> b!4880078 m!5883368))

(assert (=> b!4880078 m!5883370))

(declare-fun m!5883372 () Bool)

(assert (=> b!4880078 m!5883372))

(assert (=> b!4879770 d!1568106))

(declare-fun d!1568108 () Bool)

(declare-fun lt!1999219 () Bool)

(declare-fun isEmpty!30033 (List!56157) Bool)

(assert (=> d!1568108 (= lt!1999219 (isEmpty!30033 (list!17565 (right!41043 lt!1999152))))))

(assert (=> d!1568108 (= lt!1999219 (= (size!36963 (right!41043 lt!1999152)) 0))))

(assert (=> d!1568108 (= (isEmpty!30031 (right!41043 lt!1999152)) lt!1999219)))

(declare-fun bs!1175341 () Bool)

(assert (= bs!1175341 d!1568108))

(assert (=> bs!1175341 m!5882912))

(assert (=> bs!1175341 m!5882912))

(declare-fun m!5883398 () Bool)

(assert (=> bs!1175341 m!5883398))

(declare-fun m!5883400 () Bool)

(assert (=> bs!1175341 m!5883400))

(assert (=> b!4879555 d!1568108))

(declare-fun d!1568110 () Bool)

(assert (=> d!1568110 (= (inv!72023 (xs!17928 (left!40713 t!4585))) (<= (size!36961 (innerList!14706 (xs!17928 (left!40713 t!4585)))) 2147483647))))

(declare-fun bs!1175342 () Bool)

(assert (= bs!1175342 d!1568110))

(declare-fun m!5883402 () Bool)

(assert (=> bs!1175342 m!5883402))

(assert (=> b!4879786 d!1568110))

(declare-fun d!1568112 () Bool)

(assert (=> d!1568112 (= (list!17567 (xs!17928 t!4585)) (innerList!14706 (xs!17928 t!4585)))))

(assert (=> b!4879769 d!1568112))

(declare-fun d!1568114 () Bool)

(declare-fun res!2083171 () Bool)

(declare-fun e!3049948 () Bool)

(assert (=> d!1568114 (=> (not res!2083171) (not e!3049948))))

(assert (=> d!1568114 (= res!2083171 (<= (size!36961 (list!17567 (xs!17928 t!4585))) 512))))

(assert (=> d!1568114 (= (inv!72028 t!4585) e!3049948)))

(declare-fun b!4880097 () Bool)

(declare-fun res!2083172 () Bool)

(assert (=> b!4880097 (=> (not res!2083172) (not e!3049948))))

(assert (=> b!4880097 (= res!2083172 (= (csize!29467 t!4585) (size!36961 (list!17567 (xs!17928 t!4585)))))))

(declare-fun b!4880098 () Bool)

(assert (=> b!4880098 (= e!3049948 (and (> (csize!29467 t!4585) 0) (<= (csize!29467 t!4585) 512)))))

(assert (= (and d!1568114 res!2083171) b!4880097))

(assert (= (and b!4880097 res!2083172) b!4880098))

(assert (=> d!1568114 m!5882916))

(assert (=> d!1568114 m!5882916))

(declare-fun m!5883404 () Bool)

(assert (=> d!1568114 m!5883404))

(assert (=> b!4880097 m!5882916))

(assert (=> b!4880097 m!5882916))

(assert (=> b!4880097 m!5883404))

(assert (=> b!4879754 d!1568114))

(declare-fun d!1568116 () Bool)

(assert (=> d!1568116 (= (height!1951 (left!40713 t!4585)) (ite ((_ is Empty!14618) (left!40713 t!4585)) 0 (ite ((_ is Leaf!24360) (left!40713 t!4585)) 1 (cheight!14829 (left!40713 t!4585)))))))

(assert (=> b!4879741 d!1568116))

(declare-fun d!1568118 () Bool)

(assert (=> d!1568118 (= (height!1951 (right!41043 t!4585)) (ite ((_ is Empty!14618) (right!41043 t!4585)) 0 (ite ((_ is Leaf!24360) (right!41043 t!4585)) 1 (cheight!14829 (right!41043 t!4585)))))))

(assert (=> b!4879741 d!1568118))

(assert (=> b!4879551 d!1568012))

(assert (=> b!4879551 d!1568022))

(declare-fun b!4880099 () Bool)

(declare-fun e!3049950 () List!56157)

(assert (=> b!4880099 (= e!3049950 (list!17565 (right!41043 lt!1999152)))))

(declare-fun b!4880101 () Bool)

(declare-fun res!2083173 () Bool)

(declare-fun e!3049949 () Bool)

(assert (=> b!4880101 (=> (not res!2083173) (not e!3049949))))

(declare-fun lt!1999220 () List!56157)

(assert (=> b!4880101 (= res!2083173 (= (size!36961 lt!1999220) (+ (size!36961 (list!17565 (left!40713 lt!1999152))) (size!36961 (list!17565 (right!41043 lt!1999152))))))))

(declare-fun b!4880102 () Bool)

(assert (=> b!4880102 (= e!3049949 (or (not (= (list!17565 (right!41043 lt!1999152)) Nil!56033)) (= lt!1999220 (list!17565 (left!40713 lt!1999152)))))))

(declare-fun d!1568120 () Bool)

(assert (=> d!1568120 e!3049949))

(declare-fun res!2083174 () Bool)

(assert (=> d!1568120 (=> (not res!2083174) (not e!3049949))))

(assert (=> d!1568120 (= res!2083174 (= (content!10010 lt!1999220) ((_ map or) (content!10010 (list!17565 (left!40713 lt!1999152))) (content!10010 (list!17565 (right!41043 lt!1999152))))))))

(assert (=> d!1568120 (= lt!1999220 e!3049950)))

(declare-fun c!830002 () Bool)

(assert (=> d!1568120 (= c!830002 ((_ is Nil!56033) (list!17565 (left!40713 lt!1999152))))))

(assert (=> d!1568120 (= (++!12218 (list!17565 (left!40713 lt!1999152)) (list!17565 (right!41043 lt!1999152))) lt!1999220)))

(declare-fun b!4880100 () Bool)

(assert (=> b!4880100 (= e!3049950 (Cons!56033 (h!62481 (list!17565 (left!40713 lt!1999152))) (++!12218 (t!364793 (list!17565 (left!40713 lt!1999152))) (list!17565 (right!41043 lt!1999152)))))))

(assert (= (and d!1568120 c!830002) b!4880099))

(assert (= (and d!1568120 (not c!830002)) b!4880100))

(assert (= (and d!1568120 res!2083174) b!4880101))

(assert (= (and b!4880101 res!2083173) b!4880102))

(declare-fun m!5883406 () Bool)

(assert (=> b!4880101 m!5883406))

(assert (=> b!4880101 m!5882910))

(declare-fun m!5883408 () Bool)

(assert (=> b!4880101 m!5883408))

(assert (=> b!4880101 m!5882912))

(declare-fun m!5883410 () Bool)

(assert (=> b!4880101 m!5883410))

(declare-fun m!5883412 () Bool)

(assert (=> d!1568120 m!5883412))

(assert (=> d!1568120 m!5882910))

(declare-fun m!5883414 () Bool)

(assert (=> d!1568120 m!5883414))

(assert (=> d!1568120 m!5882912))

(declare-fun m!5883416 () Bool)

(assert (=> d!1568120 m!5883416))

(assert (=> b!4880100 m!5882912))

(declare-fun m!5883418 () Bool)

(assert (=> b!4880100 m!5883418))

(assert (=> b!4879766 d!1568120))

(declare-fun d!1568122 () Bool)

(declare-fun c!830003 () Bool)

(assert (=> d!1568122 (= c!830003 ((_ is Empty!14618) (left!40713 lt!1999152)))))

(declare-fun e!3049951 () List!56157)

(assert (=> d!1568122 (= (list!17565 (left!40713 lt!1999152)) e!3049951)))

(declare-fun b!4880103 () Bool)

(assert (=> b!4880103 (= e!3049951 Nil!56033)))

(declare-fun b!4880105 () Bool)

(declare-fun e!3049952 () List!56157)

(assert (=> b!4880105 (= e!3049952 (list!17567 (xs!17928 (left!40713 lt!1999152))))))

(declare-fun b!4880106 () Bool)

(assert (=> b!4880106 (= e!3049952 (++!12218 (list!17565 (left!40713 (left!40713 lt!1999152))) (list!17565 (right!41043 (left!40713 lt!1999152)))))))

(declare-fun b!4880104 () Bool)

(assert (=> b!4880104 (= e!3049951 e!3049952)))

(declare-fun c!830004 () Bool)

(assert (=> b!4880104 (= c!830004 ((_ is Leaf!24360) (left!40713 lt!1999152)))))

(assert (= (and d!1568122 c!830003) b!4880103))

(assert (= (and d!1568122 (not c!830003)) b!4880104))

(assert (= (and b!4880104 c!830004) b!4880105))

(assert (= (and b!4880104 (not c!830004)) b!4880106))

(declare-fun m!5883420 () Bool)

(assert (=> b!4880105 m!5883420))

(declare-fun m!5883422 () Bool)

(assert (=> b!4880106 m!5883422))

(declare-fun m!5883424 () Bool)

(assert (=> b!4880106 m!5883424))

(assert (=> b!4880106 m!5883422))

(assert (=> b!4880106 m!5883424))

(declare-fun m!5883426 () Bool)

(assert (=> b!4880106 m!5883426))

(assert (=> b!4879766 d!1568122))

(declare-fun d!1568124 () Bool)

(declare-fun c!830005 () Bool)

(assert (=> d!1568124 (= c!830005 ((_ is Empty!14618) (right!41043 lt!1999152)))))

(declare-fun e!3049953 () List!56157)

(assert (=> d!1568124 (= (list!17565 (right!41043 lt!1999152)) e!3049953)))

(declare-fun b!4880107 () Bool)

(assert (=> b!4880107 (= e!3049953 Nil!56033)))

(declare-fun b!4880109 () Bool)

(declare-fun e!3049954 () List!56157)

(assert (=> b!4880109 (= e!3049954 (list!17567 (xs!17928 (right!41043 lt!1999152))))))

(declare-fun b!4880110 () Bool)

(assert (=> b!4880110 (= e!3049954 (++!12218 (list!17565 (left!40713 (right!41043 lt!1999152))) (list!17565 (right!41043 (right!41043 lt!1999152)))))))

(declare-fun b!4880108 () Bool)

(assert (=> b!4880108 (= e!3049953 e!3049954)))

(declare-fun c!830006 () Bool)

(assert (=> b!4880108 (= c!830006 ((_ is Leaf!24360) (right!41043 lt!1999152)))))

(assert (= (and d!1568124 c!830005) b!4880107))

(assert (= (and d!1568124 (not c!830005)) b!4880108))

(assert (= (and b!4880108 c!830006) b!4880109))

(assert (= (and b!4880108 (not c!830006)) b!4880110))

(declare-fun m!5883428 () Bool)

(assert (=> b!4880109 m!5883428))

(declare-fun m!5883430 () Bool)

(assert (=> b!4880110 m!5883430))

(declare-fun m!5883432 () Bool)

(assert (=> b!4880110 m!5883432))

(assert (=> b!4880110 m!5883430))

(assert (=> b!4880110 m!5883432))

(declare-fun m!5883434 () Bool)

(assert (=> b!4880110 m!5883434))

(assert (=> b!4879766 d!1568124))

(assert (=> b!4879519 d!1567976))

(assert (=> b!4879519 d!1567978))

(declare-fun d!1568126 () Bool)

(declare-fun lt!1999221 () Bool)

(assert (=> d!1568126 (= lt!1999221 (isEmpty!30033 (list!17565 (left!40713 t!4585))))))

(assert (=> d!1568126 (= lt!1999221 (= (size!36963 (left!40713 t!4585)) 0))))

(assert (=> d!1568126 (= (isEmpty!30031 (left!40713 t!4585)) lt!1999221)))

(declare-fun bs!1175343 () Bool)

(assert (= bs!1175343 d!1568126))

(assert (=> bs!1175343 m!5882918))

(assert (=> bs!1175343 m!5882918))

(declare-fun m!5883436 () Bool)

(assert (=> bs!1175343 m!5883436))

(declare-fun m!5883438 () Bool)

(assert (=> bs!1175343 m!5883438))

(assert (=> b!4879740 d!1568126))

(declare-fun b!4880111 () Bool)

(declare-fun res!2083179 () Bool)

(declare-fun e!3049955 () Bool)

(assert (=> b!4880111 (=> (not res!2083179) (not e!3049955))))

(assert (=> b!4880111 (= res!2083179 (not (isEmpty!30031 (left!40713 (left!40713 lt!1999152)))))))

(declare-fun b!4880112 () Bool)

(declare-fun e!3049956 () Bool)

(assert (=> b!4880112 (= e!3049956 e!3049955)))

(declare-fun res!2083177 () Bool)

(assert (=> b!4880112 (=> (not res!2083177) (not e!3049955))))

(assert (=> b!4880112 (= res!2083177 (<= (- 1) (- (height!1951 (left!40713 (left!40713 lt!1999152))) (height!1951 (right!41043 (left!40713 lt!1999152))))))))

(declare-fun b!4880113 () Bool)

(declare-fun res!2083175 () Bool)

(assert (=> b!4880113 (=> (not res!2083175) (not e!3049955))))

(assert (=> b!4880113 (= res!2083175 (isBalanced!3980 (left!40713 (left!40713 lt!1999152))))))

(declare-fun d!1568128 () Bool)

(declare-fun res!2083180 () Bool)

(assert (=> d!1568128 (=> res!2083180 e!3049956)))

(assert (=> d!1568128 (= res!2083180 (not ((_ is Node!14618) (left!40713 lt!1999152))))))

(assert (=> d!1568128 (= (isBalanced!3980 (left!40713 lt!1999152)) e!3049956)))

(declare-fun b!4880114 () Bool)

(declare-fun res!2083178 () Bool)

(assert (=> b!4880114 (=> (not res!2083178) (not e!3049955))))

(assert (=> b!4880114 (= res!2083178 (<= (- (height!1951 (left!40713 (left!40713 lt!1999152))) (height!1951 (right!41043 (left!40713 lt!1999152)))) 1))))

(declare-fun b!4880115 () Bool)

(declare-fun res!2083176 () Bool)

(assert (=> b!4880115 (=> (not res!2083176) (not e!3049955))))

(assert (=> b!4880115 (= res!2083176 (isBalanced!3980 (right!41043 (left!40713 lt!1999152))))))

(declare-fun b!4880116 () Bool)

(assert (=> b!4880116 (= e!3049955 (not (isEmpty!30031 (right!41043 (left!40713 lt!1999152)))))))

(assert (= (and d!1568128 (not res!2083180)) b!4880112))

(assert (= (and b!4880112 res!2083177) b!4880114))

(assert (= (and b!4880114 res!2083178) b!4880113))

(assert (= (and b!4880113 res!2083175) b!4880115))

(assert (= (and b!4880115 res!2083176) b!4880111))

(assert (= (and b!4880111 res!2083179) b!4880116))

(declare-fun m!5883440 () Bool)

(assert (=> b!4880115 m!5883440))

(declare-fun m!5883442 () Bool)

(assert (=> b!4880113 m!5883442))

(declare-fun m!5883444 () Bool)

(assert (=> b!4880114 m!5883444))

(declare-fun m!5883446 () Bool)

(assert (=> b!4880114 m!5883446))

(assert (=> b!4880112 m!5883444))

(assert (=> b!4880112 m!5883446))

(declare-fun m!5883448 () Bool)

(assert (=> b!4880116 m!5883448))

(declare-fun m!5883450 () Bool)

(assert (=> b!4880111 m!5883450))

(assert (=> b!4879552 d!1568128))

(declare-fun d!1568130 () Bool)

(assert (=> d!1568130 (= (list!17567 (xs!17928 lt!1999152)) (innerList!14706 (xs!17928 lt!1999152)))))

(assert (=> b!4879765 d!1568130))

(declare-fun d!1568132 () Bool)

(declare-fun res!2083187 () Bool)

(declare-fun e!3049959 () Bool)

(assert (=> d!1568132 (=> (not res!2083187) (not e!3049959))))

(assert (=> d!1568132 (= res!2083187 (= (csize!29466 t!4585) (+ (size!36963 (left!40713 t!4585)) (size!36963 (right!41043 t!4585)))))))

(assert (=> d!1568132 (= (inv!72027 t!4585) e!3049959)))

(declare-fun b!4880123 () Bool)

(declare-fun res!2083188 () Bool)

(assert (=> b!4880123 (=> (not res!2083188) (not e!3049959))))

(assert (=> b!4880123 (= res!2083188 (and (not (= (left!40713 t!4585) Empty!14618)) (not (= (right!41043 t!4585) Empty!14618))))))

(declare-fun b!4880124 () Bool)

(declare-fun res!2083189 () Bool)

(assert (=> b!4880124 (=> (not res!2083189) (not e!3049959))))

(assert (=> b!4880124 (= res!2083189 (= (cheight!14829 t!4585) (+ (max!0 (height!1951 (left!40713 t!4585)) (height!1951 (right!41043 t!4585))) 1)))))

(declare-fun b!4880125 () Bool)

(assert (=> b!4880125 (= e!3049959 (<= 0 (cheight!14829 t!4585)))))

(assert (= (and d!1568132 res!2083187) b!4880123))

(assert (= (and b!4880123 res!2083188) b!4880124))

(assert (= (and b!4880124 res!2083189) b!4880125))

(assert (=> d!1568132 m!5883438))

(declare-fun m!5883452 () Bool)

(assert (=> d!1568132 m!5883452))

(assert (=> b!4880124 m!5882894))

(assert (=> b!4880124 m!5882896))

(assert (=> b!4880124 m!5882894))

(assert (=> b!4880124 m!5882896))

(declare-fun m!5883454 () Bool)

(assert (=> b!4880124 m!5883454))

(assert (=> b!4879752 d!1568132))

(declare-fun d!1568134 () Bool)

(declare-fun res!2083190 () Bool)

(declare-fun e!3049960 () Bool)

(assert (=> d!1568134 (=> (not res!2083190) (not e!3049960))))

(assert (=> d!1568134 (= res!2083190 (<= (size!36961 (list!17567 (xs!17928 (left!40713 t!4585)))) 512))))

(assert (=> d!1568134 (= (inv!72028 (left!40713 t!4585)) e!3049960)))

(declare-fun b!4880126 () Bool)

(declare-fun res!2083191 () Bool)

(assert (=> b!4880126 (=> (not res!2083191) (not e!3049960))))

(assert (=> b!4880126 (= res!2083191 (= (csize!29467 (left!40713 t!4585)) (size!36961 (list!17567 (xs!17928 (left!40713 t!4585))))))))

(declare-fun b!4880127 () Bool)

(assert (=> b!4880127 (= e!3049960 (and (> (csize!29467 (left!40713 t!4585)) 0) (<= (csize!29467 (left!40713 t!4585)) 512)))))

(assert (= (and d!1568134 res!2083190) b!4880126))

(assert (= (and b!4880126 res!2083191) b!4880127))

(assert (=> d!1568134 m!5883362))

(assert (=> d!1568134 m!5883362))

(declare-fun m!5883456 () Bool)

(assert (=> d!1568134 m!5883456))

(assert (=> b!4880126 m!5883362))

(assert (=> b!4880126 m!5883362))

(assert (=> b!4880126 m!5883456))

(assert (=> b!4879773 d!1568134))

(declare-fun b!4880128 () Bool)

(declare-fun res!2083196 () Bool)

(declare-fun e!3049961 () Bool)

(assert (=> b!4880128 (=> (not res!2083196) (not e!3049961))))

(assert (=> b!4880128 (= res!2083196 (not (isEmpty!30031 (left!40713 lt!1999176))))))

(declare-fun b!4880129 () Bool)

(declare-fun e!3049962 () Bool)

(assert (=> b!4880129 (= e!3049962 e!3049961)))

(declare-fun res!2083194 () Bool)

(assert (=> b!4880129 (=> (not res!2083194) (not e!3049961))))

(assert (=> b!4880129 (= res!2083194 (<= (- 1) (- (height!1951 (left!40713 lt!1999176)) (height!1951 (right!41043 lt!1999176)))))))

(declare-fun b!4880130 () Bool)

(declare-fun res!2083192 () Bool)

(assert (=> b!4880130 (=> (not res!2083192) (not e!3049961))))

(assert (=> b!4880130 (= res!2083192 (isBalanced!3980 (left!40713 lt!1999176)))))

(declare-fun d!1568136 () Bool)

(declare-fun res!2083197 () Bool)

(assert (=> d!1568136 (=> res!2083197 e!3049962)))

(assert (=> d!1568136 (= res!2083197 (not ((_ is Node!14618) lt!1999176)))))

(assert (=> d!1568136 (= (isBalanced!3980 lt!1999176) e!3049962)))

(declare-fun b!4880131 () Bool)

(declare-fun res!2083195 () Bool)

(assert (=> b!4880131 (=> (not res!2083195) (not e!3049961))))

(assert (=> b!4880131 (= res!2083195 (<= (- (height!1951 (left!40713 lt!1999176)) (height!1951 (right!41043 lt!1999176))) 1))))

(declare-fun b!4880132 () Bool)

(declare-fun res!2083193 () Bool)

(assert (=> b!4880132 (=> (not res!2083193) (not e!3049961))))

(assert (=> b!4880132 (= res!2083193 (isBalanced!3980 (right!41043 lt!1999176)))))

(declare-fun b!4880133 () Bool)

(assert (=> b!4880133 (= e!3049961 (not (isEmpty!30031 (right!41043 lt!1999176))))))

(assert (= (and d!1568136 (not res!2083197)) b!4880129))

(assert (= (and b!4880129 res!2083194) b!4880131))

(assert (= (and b!4880131 res!2083195) b!4880130))

(assert (= (and b!4880130 res!2083192) b!4880132))

(assert (= (and b!4880132 res!2083193) b!4880128))

(assert (= (and b!4880128 res!2083196) b!4880133))

(declare-fun m!5883458 () Bool)

(assert (=> b!4880132 m!5883458))

(declare-fun m!5883460 () Bool)

(assert (=> b!4880130 m!5883460))

(declare-fun m!5883462 () Bool)

(assert (=> b!4880131 m!5883462))

(declare-fun m!5883464 () Bool)

(assert (=> b!4880131 m!5883464))

(assert (=> b!4880129 m!5883462))

(assert (=> b!4880129 m!5883464))

(declare-fun m!5883466 () Bool)

(assert (=> b!4880133 m!5883466))

(declare-fun m!5883468 () Bool)

(assert (=> b!4880128 m!5883468))

(assert (=> b!4879722 d!1568136))

(declare-fun d!1568138 () Bool)

(assert (=> d!1568138 (= (height!1951 (ite c!829928 (Leaf!24360 (fill!241 1 v!5488) 1) (left!40713 t!4585))) (ite ((_ is Empty!14618) (ite c!829928 (Leaf!24360 (fill!241 1 v!5488) 1) (left!40713 t!4585))) 0 (ite ((_ is Leaf!24360) (ite c!829928 (Leaf!24360 (fill!241 1 v!5488) 1) (left!40713 t!4585))) 1 (cheight!14829 (ite c!829928 (Leaf!24360 (fill!241 1 v!5488) 1) (left!40713 t!4585))))))))

(assert (=> bm!338755 d!1568138))

(assert (=> b!4879723 d!1567966))

(declare-fun d!1568140 () Bool)

(declare-fun lt!1999222 () Bool)

(assert (=> d!1568140 (= lt!1999222 (isEmpty!30033 (list!17565 (left!40713 lt!1999152))))))

(assert (=> d!1568140 (= lt!1999222 (= (size!36963 (left!40713 lt!1999152)) 0))))

(assert (=> d!1568140 (= (isEmpty!30031 (left!40713 lt!1999152)) lt!1999222)))

(declare-fun bs!1175344 () Bool)

(assert (= bs!1175344 d!1568140))

(assert (=> bs!1175344 m!5882910))

(assert (=> bs!1175344 m!5882910))

(declare-fun m!5883470 () Bool)

(assert (=> bs!1175344 m!5883470))

(declare-fun m!5883472 () Bool)

(assert (=> bs!1175344 m!5883472))

(assert (=> b!4879550 d!1568140))

(declare-fun d!1568142 () Bool)

(declare-fun res!2083198 () Bool)

(declare-fun e!3049963 () Bool)

(assert (=> d!1568142 (=> (not res!2083198) (not e!3049963))))

(assert (=> d!1568142 (= res!2083198 (= (csize!29466 (left!40713 t!4585)) (+ (size!36963 (left!40713 (left!40713 t!4585))) (size!36963 (right!41043 (left!40713 t!4585))))))))

(assert (=> d!1568142 (= (inv!72027 (left!40713 t!4585)) e!3049963)))

(declare-fun b!4880134 () Bool)

(declare-fun res!2083199 () Bool)

(assert (=> b!4880134 (=> (not res!2083199) (not e!3049963))))

(assert (=> b!4880134 (= res!2083199 (and (not (= (left!40713 (left!40713 t!4585)) Empty!14618)) (not (= (right!41043 (left!40713 t!4585)) Empty!14618))))))

(declare-fun b!4880135 () Bool)

(declare-fun res!2083200 () Bool)

(assert (=> b!4880135 (=> (not res!2083200) (not e!3049963))))

(assert (=> b!4880135 (= res!2083200 (= (cheight!14829 (left!40713 t!4585)) (+ (max!0 (height!1951 (left!40713 (left!40713 t!4585))) (height!1951 (right!41043 (left!40713 t!4585)))) 1)))))

(declare-fun b!4880136 () Bool)

(assert (=> b!4880136 (= e!3049963 (<= 0 (cheight!14829 (left!40713 t!4585))))))

(assert (= (and d!1568142 res!2083198) b!4880134))

(assert (= (and b!4880134 res!2083199) b!4880135))

(assert (= (and b!4880135 res!2083200) b!4880136))

(declare-fun m!5883474 () Bool)

(assert (=> d!1568142 m!5883474))

(declare-fun m!5883476 () Bool)

(assert (=> d!1568142 m!5883476))

(declare-fun m!5883478 () Bool)

(assert (=> b!4880135 m!5883478))

(declare-fun m!5883480 () Bool)

(assert (=> b!4880135 m!5883480))

(assert (=> b!4880135 m!5883478))

(assert (=> b!4880135 m!5883480))

(declare-fun m!5883482 () Bool)

(assert (=> b!4880135 m!5883482))

(assert (=> b!4879771 d!1568142))

(declare-fun d!1568144 () Bool)

(assert (=> d!1568144 (= (height!1951 (ite c!829928 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) lt!1999178)) (ite ((_ is Empty!14618) (ite c!829928 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) lt!1999178)) 0 (ite ((_ is Leaf!24360) (ite c!829928 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) lt!1999178)) 1 (cheight!14829 (ite c!829928 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) lt!1999178)))))))

(assert (=> bm!338753 d!1568144))

(declare-fun d!1568146 () Bool)

(declare-fun c!830007 () Bool)

(assert (=> d!1568146 (= c!830007 ((_ is Node!14618) (left!40713 (left!40713 t!4585))))))

(declare-fun e!3049964 () Bool)

(assert (=> d!1568146 (= (inv!72024 (left!40713 (left!40713 t!4585))) e!3049964)))

(declare-fun b!4880137 () Bool)

(assert (=> b!4880137 (= e!3049964 (inv!72027 (left!40713 (left!40713 t!4585))))))

(declare-fun b!4880138 () Bool)

(declare-fun e!3049965 () Bool)

(assert (=> b!4880138 (= e!3049964 e!3049965)))

(declare-fun res!2083201 () Bool)

(assert (=> b!4880138 (= res!2083201 (not ((_ is Leaf!24360) (left!40713 (left!40713 t!4585)))))))

(assert (=> b!4880138 (=> res!2083201 e!3049965)))

(declare-fun b!4880139 () Bool)

(assert (=> b!4880139 (= e!3049965 (inv!72028 (left!40713 (left!40713 t!4585))))))

(assert (= (and d!1568146 c!830007) b!4880137))

(assert (= (and d!1568146 (not c!830007)) b!4880138))

(assert (= (and b!4880138 (not res!2083201)) b!4880139))

(declare-fun m!5883484 () Bool)

(assert (=> b!4880137 m!5883484))

(declare-fun m!5883486 () Bool)

(assert (=> b!4880139 m!5883486))

(assert (=> b!4879785 d!1568146))

(declare-fun d!1568148 () Bool)

(declare-fun c!830008 () Bool)

(assert (=> d!1568148 (= c!830008 ((_ is Node!14618) (right!41043 (left!40713 t!4585))))))

(declare-fun e!3049966 () Bool)

(assert (=> d!1568148 (= (inv!72024 (right!41043 (left!40713 t!4585))) e!3049966)))

(declare-fun b!4880140 () Bool)

(assert (=> b!4880140 (= e!3049966 (inv!72027 (right!41043 (left!40713 t!4585))))))

(declare-fun b!4880141 () Bool)

(declare-fun e!3049967 () Bool)

(assert (=> b!4880141 (= e!3049966 e!3049967)))

(declare-fun res!2083202 () Bool)

(assert (=> b!4880141 (= res!2083202 (not ((_ is Leaf!24360) (right!41043 (left!40713 t!4585)))))))

(assert (=> b!4880141 (=> res!2083202 e!3049967)))

(declare-fun b!4880142 () Bool)

(assert (=> b!4880142 (= e!3049967 (inv!72028 (right!41043 (left!40713 t!4585))))))

(assert (= (and d!1568148 c!830008) b!4880140))

(assert (= (and d!1568148 (not c!830008)) b!4880141))

(assert (= (and b!4880141 (not res!2083202)) b!4880142))

(declare-fun m!5883488 () Bool)

(assert (=> b!4880140 m!5883488))

(declare-fun m!5883490 () Bool)

(assert (=> b!4880142 m!5883490))

(assert (=> b!4879785 d!1568148))

(declare-fun d!1568150 () Bool)

(assert (=> d!1568150 (= (height!1951 (ite c!829928 lt!1999177 (right!41043 t!4585))) (ite ((_ is Empty!14618) (ite c!829928 lt!1999177 (right!41043 t!4585))) 0 (ite ((_ is Leaf!24360) (ite c!829928 lt!1999177 (right!41043 t!4585))) 1 (cheight!14829 (ite c!829928 lt!1999177 (right!41043 t!4585))))))))

(assert (=> bm!338746 d!1568150))

(declare-fun d!1568152 () Bool)

(declare-fun c!830009 () Bool)

(assert (=> d!1568152 (= c!830009 ((_ is Node!14618) (left!40713 (right!41043 t!4585))))))

(declare-fun e!3049968 () Bool)

(assert (=> d!1568152 (= (inv!72024 (left!40713 (right!41043 t!4585))) e!3049968)))

(declare-fun b!4880143 () Bool)

(assert (=> b!4880143 (= e!3049968 (inv!72027 (left!40713 (right!41043 t!4585))))))

(declare-fun b!4880144 () Bool)

(declare-fun e!3049969 () Bool)

(assert (=> b!4880144 (= e!3049968 e!3049969)))

(declare-fun res!2083203 () Bool)

(assert (=> b!4880144 (= res!2083203 (not ((_ is Leaf!24360) (left!40713 (right!41043 t!4585)))))))

(assert (=> b!4880144 (=> res!2083203 e!3049969)))

(declare-fun b!4880145 () Bool)

(assert (=> b!4880145 (= e!3049969 (inv!72028 (left!40713 (right!41043 t!4585))))))

(assert (= (and d!1568152 c!830009) b!4880143))

(assert (= (and d!1568152 (not c!830009)) b!4880144))

(assert (= (and b!4880144 (not res!2083203)) b!4880145))

(declare-fun m!5883492 () Bool)

(assert (=> b!4880143 m!5883492))

(declare-fun m!5883494 () Bool)

(assert (=> b!4880145 m!5883494))

(assert (=> b!4879788 d!1568152))

(declare-fun d!1568154 () Bool)

(declare-fun c!830010 () Bool)

(assert (=> d!1568154 (= c!830010 ((_ is Node!14618) (right!41043 (right!41043 t!4585))))))

(declare-fun e!3049970 () Bool)

(assert (=> d!1568154 (= (inv!72024 (right!41043 (right!41043 t!4585))) e!3049970)))

(declare-fun b!4880146 () Bool)

(assert (=> b!4880146 (= e!3049970 (inv!72027 (right!41043 (right!41043 t!4585))))))

(declare-fun b!4880147 () Bool)

(declare-fun e!3049971 () Bool)

(assert (=> b!4880147 (= e!3049970 e!3049971)))

(declare-fun res!2083204 () Bool)

(assert (=> b!4880147 (= res!2083204 (not ((_ is Leaf!24360) (right!41043 (right!41043 t!4585)))))))

(assert (=> b!4880147 (=> res!2083204 e!3049971)))

(declare-fun b!4880148 () Bool)

(assert (=> b!4880148 (= e!3049971 (inv!72028 (right!41043 (right!41043 t!4585))))))

(assert (= (and d!1568154 c!830010) b!4880146))

(assert (= (and d!1568154 (not c!830010)) b!4880147))

(assert (= (and b!4880147 (not res!2083204)) b!4880148))

(declare-fun m!5883496 () Bool)

(assert (=> b!4880146 m!5883496))

(declare-fun m!5883498 () Bool)

(assert (=> b!4880148 m!5883498))

(assert (=> b!4879788 d!1568154))

(declare-fun b!4880149 () Bool)

(declare-fun c!830018 () Bool)

(declare-fun call!338797 () Int)

(declare-fun call!338785 () Int)

(assert (=> b!4880149 (= c!830018 (>= call!338797 call!338785))))

(declare-fun e!3049974 () Conc!14618)

(declare-fun e!3049976 () Conc!14618)

(assert (=> b!4880149 (= e!3049974 e!3049976)))

(declare-fun b!4880150 () Bool)

(declare-fun e!3049975 () Conc!14618)

(declare-fun e!3049977 () Conc!14618)

(assert (=> b!4880150 (= e!3049975 e!3049977)))

(declare-fun c!830014 () Bool)

(assert (=> b!4880150 (= c!830014 (= (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) Empty!14618))))

(declare-fun b!4880151 () Bool)

(declare-fun c!830013 () Bool)

(declare-fun call!338783 () Int)

(declare-fun call!338792 () Int)

(assert (=> b!4880151 (= c!830013 (>= call!338783 call!338792))))

(declare-fun e!3049978 () Conc!14618)

(assert (=> b!4880151 (= e!3049974 e!3049978)))

(declare-fun bm!338778 () Bool)

(declare-fun lt!1999224 () Conc!14618)

(declare-fun c!830017 () Bool)

(assert (=> bm!338778 (= call!338783 (height!1951 (ite c!830017 lt!1999224 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun b!4880152 () Bool)

(declare-fun res!2083208 () Bool)

(declare-fun e!3049980 () Bool)

(assert (=> b!4880152 (=> (not res!2083208) (not e!3049980))))

(declare-fun lt!1999223 () Conc!14618)

(assert (=> b!4880152 (= res!2083208 (isBalanced!3980 lt!1999223))))

(declare-fun b!4880153 () Bool)

(declare-fun e!3049972 () Bool)

(assert (=> b!4880153 (= e!3049972 (isBalanced!3980 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))

(declare-fun b!4880154 () Bool)

(declare-fun e!3049973 () Conc!14618)

(declare-fun call!338798 () Conc!14618)

(assert (=> b!4880154 (= e!3049973 call!338798)))

(declare-fun d!1568156 () Bool)

(assert (=> d!1568156 e!3049980))

(declare-fun res!2083206 () Bool)

(assert (=> d!1568156 (=> (not res!2083206) (not e!3049980))))

(assert (=> d!1568156 (= res!2083206 (appendAssocInst!885 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))

(assert (=> d!1568156 (= lt!1999223 e!3049975)))

(declare-fun c!830016 () Bool)

(assert (=> d!1568156 (= c!830016 (= (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) Empty!14618))))

(assert (=> d!1568156 e!3049972))

(declare-fun res!2083207 () Bool)

(assert (=> d!1568156 (=> (not res!2083207) (not e!3049972))))

(assert (=> d!1568156 (= res!2083207 (isBalanced!3980 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568156 (= (++!12216 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) lt!1999223)))

(declare-fun bm!338779 () Bool)

(declare-fun call!338786 () Conc!14618)

(declare-fun call!338790 () Conc!14618)

(assert (=> bm!338779 (= call!338786 call!338790)))

(declare-fun b!4880155 () Bool)

(assert (=> b!4880155 (= e!3049975 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))

(declare-fun b!4880156 () Bool)

(declare-fun e!3049981 () Conc!14618)

(assert (=> b!4880156 (= e!3049981 call!338786)))

(declare-fun bm!338780 () Bool)

(declare-fun call!338793 () Conc!14618)

(declare-fun call!338789 () Conc!14618)

(assert (=> bm!338780 (= call!338793 call!338789)))

(declare-fun b!4880157 () Bool)

(declare-fun call!338794 () Conc!14618)

(assert (=> b!4880157 (= e!3049976 call!338794)))

(declare-fun b!4880158 () Bool)

(assert (=> b!4880158 (= e!3049978 e!3049973)))

(declare-fun lt!1999225 () Conc!14618)

(declare-fun call!338788 () Conc!14618)

(assert (=> b!4880158 (= lt!1999225 call!338788)))

(declare-fun c!830015 () Bool)

(assert (=> b!4880158 (= c!830015 (= call!338785 (- call!338797 3)))))

(declare-fun b!4880159 () Bool)

(declare-fun c!830012 () Bool)

(declare-fun lt!1999226 () Int)

(assert (=> b!4880159 (= c!830012 (and (<= (- 1) lt!1999226) (<= lt!1999226 1)))))

(assert (=> b!4880159 (= lt!1999226 (- (height!1951 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (height!1951 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun e!3049979 () Conc!14618)

(assert (=> b!4880159 (= e!3049977 e!3049979)))

(declare-fun b!4880160 () Bool)

(assert (=> b!4880160 (= e!3049977 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))

(declare-fun bm!338781 () Bool)

(declare-fun call!338784 () Conc!14618)

(assert (=> bm!338781 (= call!338789 call!338784)))

(declare-fun b!4880161 () Bool)

(declare-fun res!2083209 () Bool)

(assert (=> b!4880161 (=> (not res!2083209) (not e!3049980))))

(assert (=> b!4880161 (= res!2083209 (<= (height!1951 lt!1999223) (+ (max!0 (height!1951 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (height!1951 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) 1)))))

(declare-fun call!338791 () Conc!14618)

(declare-fun bm!338782 () Bool)

(declare-fun c!830011 () Bool)

(assert (=> bm!338782 (= call!338790 (<>!375 (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(declare-fun bm!338783 () Bool)

(declare-fun call!338795 () Conc!14618)

(declare-fun call!338787 () Conc!14618)

(assert (=> bm!338783 (= call!338795 call!338787)))

(declare-fun b!4880162 () Bool)

(assert (=> b!4880162 (= e!3049973 call!338798)))

(declare-fun bm!338784 () Bool)

(assert (=> bm!338784 (= call!338787 (++!12216 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))

(declare-fun b!4880163 () Bool)

(assert (=> b!4880163 (= e!3049980 (= (list!17565 lt!1999223) (++!12218 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun bm!338785 () Bool)

(assert (=> bm!338785 (= call!338785 (height!1951 (ite c!830017 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999225)))))

(declare-fun b!4880164 () Bool)

(assert (=> b!4880164 (= e!3049979 call!338784)))

(declare-fun bm!338786 () Bool)

(assert (=> bm!338786 (= call!338794 call!338789)))

(declare-fun b!4880165 () Bool)

(assert (=> b!4880165 (= e!3049979 e!3049974)))

(assert (=> b!4880165 (= c!830017 (< lt!1999226 (- 1)))))

(declare-fun bm!338787 () Bool)

(assert (=> bm!338787 (= call!338792 (height!1951 (ite c!830017 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun bm!338788 () Bool)

(declare-fun call!338796 () Conc!14618)

(assert (=> bm!338788 (= call!338796 call!338790)))

(declare-fun bm!338789 () Bool)

(assert (=> bm!338789 (= call!338798 call!338793)))

(declare-fun b!4880166 () Bool)

(assert (=> b!4880166 (= e!3049981 call!338786)))

(declare-fun bm!338790 () Bool)

(assert (=> bm!338790 (= call!338797 (height!1951 (ite c!830017 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(declare-fun bm!338791 () Bool)

(assert (=> bm!338791 (= call!338784 (<>!375 (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225)))) (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796)))))))

(declare-fun bm!338792 () Bool)

(assert (=> bm!338792 (= call!338791 call!338794)))

(declare-fun b!4880167 () Bool)

(assert (=> b!4880167 (= e!3049978 call!338793)))

(declare-fun b!4880168 () Bool)

(assert (=> b!4880168 (= e!3049976 e!3049981)))

(assert (=> b!4880168 (= lt!1999224 call!338795)))

(assert (=> b!4880168 (= c!830011 (= call!338783 (- call!338792 3)))))

(declare-fun b!4880169 () Bool)

(declare-fun res!2083205 () Bool)

(assert (=> b!4880169 (=> (not res!2083205) (not e!3049980))))

(assert (=> b!4880169 (= res!2083205 (>= (height!1951 lt!1999223) (max!0 (height!1951 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (height!1951 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun bm!338793 () Bool)

(assert (=> bm!338793 (= call!338788 call!338787)))

(assert (= (and d!1568156 res!2083207) b!4880153))

(assert (= (and d!1568156 c!830016) b!4880155))

(assert (= (and d!1568156 (not c!830016)) b!4880150))

(assert (= (and b!4880150 c!830014) b!4880160))

(assert (= (and b!4880150 (not c!830014)) b!4880159))

(assert (= (and b!4880159 c!830012) b!4880164))

(assert (= (and b!4880159 (not c!830012)) b!4880165))

(assert (= (and b!4880165 c!830017) b!4880149))

(assert (= (and b!4880165 (not c!830017)) b!4880151))

(assert (= (and b!4880149 c!830018) b!4880157))

(assert (= (and b!4880149 (not c!830018)) b!4880168))

(assert (= (and b!4880168 c!830011) b!4880166))

(assert (= (and b!4880168 (not c!830011)) b!4880156))

(assert (= (or b!4880166 b!4880156) bm!338792))

(assert (= (or b!4880166 b!4880156) bm!338779))

(assert (= (or b!4880157 b!4880168) bm!338783))

(assert (= (or b!4880157 bm!338792) bm!338786))

(assert (= (and b!4880151 c!830013) b!4880167))

(assert (= (and b!4880151 (not c!830013)) b!4880158))

(assert (= (and b!4880158 c!830015) b!4880154))

(assert (= (and b!4880158 (not c!830015)) b!4880162))

(assert (= (or b!4880154 b!4880162) bm!338788))

(assert (= (or b!4880154 b!4880162) bm!338789))

(assert (= (or b!4880167 b!4880158) bm!338793))

(assert (= (or b!4880167 bm!338789) bm!338780))

(assert (= (or bm!338779 bm!338788) bm!338782))

(assert (= (or b!4880168 b!4880151) bm!338778))

(assert (= (or b!4880149 b!4880158) bm!338790))

(assert (= (or bm!338786 bm!338780) bm!338781))

(assert (= (or b!4880168 b!4880151) bm!338787))

(assert (= (or b!4880149 b!4880158) bm!338785))

(assert (= (or bm!338783 bm!338793) bm!338784))

(assert (= (or b!4880164 bm!338781) bm!338791))

(assert (= (and d!1568156 res!2083206) b!4880152))

(assert (= (and b!4880152 res!2083208) b!4880161))

(assert (= (and b!4880161 res!2083209) b!4880169))

(assert (= (and b!4880169 res!2083205) b!4880163))

(declare-fun m!5883500 () Bool)

(assert (=> bm!338790 m!5883500))

(declare-fun m!5883502 () Bool)

(assert (=> d!1568156 m!5883502))

(declare-fun m!5883504 () Bool)

(assert (=> d!1568156 m!5883504))

(declare-fun m!5883506 () Bool)

(assert (=> bm!338778 m!5883506))

(declare-fun m!5883508 () Bool)

(assert (=> b!4880159 m!5883508))

(declare-fun m!5883510 () Bool)

(assert (=> b!4880159 m!5883510))

(declare-fun m!5883512 () Bool)

(assert (=> b!4880153 m!5883512))

(declare-fun m!5883514 () Bool)

(assert (=> bm!338782 m!5883514))

(declare-fun m!5883516 () Bool)

(assert (=> bm!338784 m!5883516))

(declare-fun m!5883518 () Bool)

(assert (=> b!4880169 m!5883518))

(assert (=> b!4880169 m!5883510))

(assert (=> b!4880169 m!5883508))

(assert (=> b!4880169 m!5883510))

(assert (=> b!4880169 m!5883508))

(declare-fun m!5883520 () Bool)

(assert (=> b!4880169 m!5883520))

(declare-fun m!5883522 () Bool)

(assert (=> bm!338787 m!5883522))

(declare-fun m!5883524 () Bool)

(assert (=> b!4880152 m!5883524))

(declare-fun m!5883526 () Bool)

(assert (=> bm!338785 m!5883526))

(declare-fun m!5883528 () Bool)

(assert (=> bm!338791 m!5883528))

(assert (=> b!4880161 m!5883518))

(assert (=> b!4880161 m!5883510))

(assert (=> b!4880161 m!5883508))

(assert (=> b!4880161 m!5883510))

(assert (=> b!4880161 m!5883508))

(assert (=> b!4880161 m!5883520))

(declare-fun m!5883530 () Bool)

(assert (=> b!4880163 m!5883530))

(declare-fun m!5883532 () Bool)

(assert (=> b!4880163 m!5883532))

(declare-fun m!5883534 () Bool)

(assert (=> b!4880163 m!5883534))

(assert (=> b!4880163 m!5883532))

(assert (=> b!4880163 m!5883534))

(declare-fun m!5883536 () Bool)

(assert (=> b!4880163 m!5883536))

(assert (=> bm!338752 d!1568156))

(declare-fun d!1568158 () Bool)

(declare-fun c!830019 () Bool)

(assert (=> d!1568158 (= c!830019 ((_ is Empty!14618) lt!1999176))))

(declare-fun e!3049982 () List!56157)

(assert (=> d!1568158 (= (list!17565 lt!1999176) e!3049982)))

(declare-fun b!4880170 () Bool)

(assert (=> b!4880170 (= e!3049982 Nil!56033)))

(declare-fun b!4880172 () Bool)

(declare-fun e!3049983 () List!56157)

(assert (=> b!4880172 (= e!3049983 (list!17567 (xs!17928 lt!1999176)))))

(declare-fun b!4880173 () Bool)

(assert (=> b!4880173 (= e!3049983 (++!12218 (list!17565 (left!40713 lt!1999176)) (list!17565 (right!41043 lt!1999176))))))

(declare-fun b!4880171 () Bool)

(assert (=> b!4880171 (= e!3049982 e!3049983)))

(declare-fun c!830020 () Bool)

(assert (=> b!4880171 (= c!830020 ((_ is Leaf!24360) lt!1999176))))

(assert (= (and d!1568158 c!830019) b!4880170))

(assert (= (and d!1568158 (not c!830019)) b!4880171))

(assert (= (and b!4880171 c!830020) b!4880172))

(assert (= (and b!4880171 (not c!830020)) b!4880173))

(declare-fun m!5883538 () Bool)

(assert (=> b!4880172 m!5883538))

(declare-fun m!5883540 () Bool)

(assert (=> b!4880173 m!5883540))

(declare-fun m!5883542 () Bool)

(assert (=> b!4880173 m!5883542))

(assert (=> b!4880173 m!5883540))

(assert (=> b!4880173 m!5883542))

(declare-fun m!5883544 () Bool)

(assert (=> b!4880173 m!5883544))

(assert (=> b!4879733 d!1568158))

(declare-fun b!4880174 () Bool)

(declare-fun e!3049985 () List!56157)

(assert (=> b!4880174 (= e!3049985 (list!17565 t!4585))))

(declare-fun b!4880176 () Bool)

(declare-fun res!2083210 () Bool)

(declare-fun e!3049984 () Bool)

(assert (=> b!4880176 (=> (not res!2083210) (not e!3049984))))

(declare-fun lt!1999227 () List!56157)

(assert (=> b!4880176 (= res!2083210 (= (size!36961 lt!1999227) (+ (size!36961 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (size!36961 (list!17565 t!4585)))))))

(declare-fun b!4880177 () Bool)

(assert (=> b!4880177 (= e!3049984 (or (not (= (list!17565 t!4585) Nil!56033)) (= lt!1999227 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun d!1568160 () Bool)

(assert (=> d!1568160 e!3049984))

(declare-fun res!2083211 () Bool)

(assert (=> d!1568160 (=> (not res!2083211) (not e!3049984))))

(assert (=> d!1568160 (= res!2083211 (= (content!10010 lt!1999227) ((_ map or) (content!10010 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (content!10010 (list!17565 t!4585)))))))

(assert (=> d!1568160 (= lt!1999227 e!3049985)))

(declare-fun c!830021 () Bool)

(assert (=> d!1568160 (= c!830021 ((_ is Nil!56033) (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568160 (= (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 t!4585)) lt!1999227)))

(declare-fun b!4880175 () Bool)

(assert (=> b!4880175 (= e!3049985 (Cons!56033 (h!62481 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (++!12218 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 t!4585))))))

(assert (= (and d!1568160 c!830021) b!4880174))

(assert (= (and d!1568160 (not c!830021)) b!4880175))

(assert (= (and d!1568160 res!2083211) b!4880176))

(assert (= (and b!4880176 res!2083210) b!4880177))

(declare-fun m!5883546 () Bool)

(assert (=> b!4880176 m!5883546))

(assert (=> b!4880176 m!5882882))

(declare-fun m!5883548 () Bool)

(assert (=> b!4880176 m!5883548))

(assert (=> b!4880176 m!5882724))

(declare-fun m!5883550 () Bool)

(assert (=> b!4880176 m!5883550))

(declare-fun m!5883552 () Bool)

(assert (=> d!1568160 m!5883552))

(assert (=> d!1568160 m!5882882))

(declare-fun m!5883554 () Bool)

(assert (=> d!1568160 m!5883554))

(assert (=> d!1568160 m!5882724))

(declare-fun m!5883556 () Bool)

(assert (=> d!1568160 m!5883556))

(assert (=> b!4880175 m!5882724))

(declare-fun m!5883558 () Bool)

(assert (=> b!4880175 m!5883558))

(assert (=> b!4879733 d!1568160))

(declare-fun d!1568162 () Bool)

(declare-fun c!830022 () Bool)

(assert (=> d!1568162 (= c!830022 ((_ is Empty!14618) (Leaf!24360 (fill!241 1 v!5488) 1)))))

(declare-fun e!3049986 () List!56157)

(assert (=> d!1568162 (= (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) e!3049986)))

(declare-fun b!4880178 () Bool)

(assert (=> b!4880178 (= e!3049986 Nil!56033)))

(declare-fun b!4880180 () Bool)

(declare-fun e!3049987 () List!56157)

(assert (=> b!4880180 (= e!3049987 (list!17567 (xs!17928 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun b!4880181 () Bool)

(assert (=> b!4880181 (= e!3049987 (++!12218 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4880179 () Bool)

(assert (=> b!4880179 (= e!3049986 e!3049987)))

(declare-fun c!830023 () Bool)

(assert (=> b!4880179 (= c!830023 ((_ is Leaf!24360) (Leaf!24360 (fill!241 1 v!5488) 1)))))

(assert (= (and d!1568162 c!830022) b!4880178))

(assert (= (and d!1568162 (not c!830022)) b!4880179))

(assert (= (and b!4880179 c!830023) b!4880180))

(assert (= (and b!4880179 (not c!830023)) b!4880181))

(declare-fun m!5883560 () Bool)

(assert (=> b!4880180 m!5883560))

(assert (=> b!4880181 m!5883146))

(assert (=> b!4880181 m!5883148))

(assert (=> b!4880181 m!5883146))

(assert (=> b!4880181 m!5883148))

(declare-fun m!5883562 () Bool)

(assert (=> b!4880181 m!5883562))

(assert (=> b!4879733 d!1568162))

(assert (=> b!4879733 d!1567974))

(declare-fun d!1568164 () Bool)

(declare-fun lt!1999230 () Int)

(assert (=> d!1568164 (>= lt!1999230 0)))

(declare-fun e!3049990 () Int)

(assert (=> d!1568164 (= lt!1999230 e!3049990)))

(declare-fun c!830026 () Bool)

(assert (=> d!1568164 (= c!830026 ((_ is Nil!56033) (innerList!14706 (xs!17928 t!4585))))))

(assert (=> d!1568164 (= (size!36961 (innerList!14706 (xs!17928 t!4585))) lt!1999230)))

(declare-fun b!4880186 () Bool)

(assert (=> b!4880186 (= e!3049990 0)))

(declare-fun b!4880187 () Bool)

(assert (=> b!4880187 (= e!3049990 (+ 1 (size!36961 (t!364793 (innerList!14706 (xs!17928 t!4585))))))))

(assert (= (and d!1568164 c!830026) b!4880186))

(assert (= (and d!1568164 (not c!830026)) b!4880187))

(declare-fun m!5883564 () Bool)

(assert (=> b!4880187 m!5883564))

(assert (=> d!1567970 d!1568164))

(declare-fun e!3049992 () Conc!14618)

(declare-fun b!4880190 () Bool)

(assert (=> b!4880190 (= e!3049992 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))))

(declare-fun b!4880191 () Bool)

(assert (=> b!4880191 (= e!3049992 (Node!14618 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))) (+ (size!36963 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (size!36963 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))) (+ (max!0 (height!1951 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (height!1951 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))) 1)))))

(declare-fun e!3049991 () Conc!14618)

(declare-fun b!4880188 () Bool)

(assert (=> b!4880188 (= e!3049991 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))))

(declare-fun lt!1999231 () Conc!14618)

(declare-fun d!1568166 () Bool)

(assert (=> d!1568166 (= (list!17565 lt!1999231) (++!12218 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))))))

(assert (=> d!1568166 (= lt!1999231 e!3049991)))

(declare-fun c!830027 () Bool)

(assert (=> d!1568166 (= c!830027 (= (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))) Empty!14618))))

(assert (=> d!1568166 (= (<>!375 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) lt!1999231)))

(declare-fun b!4880189 () Bool)

(assert (=> b!4880189 (= e!3049991 e!3049992)))

(declare-fun c!830028 () Bool)

(assert (=> b!4880189 (= c!830028 (= (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))) Empty!14618))))

(assert (= (and d!1568166 c!830027) b!4880188))

(assert (= (and d!1568166 (not c!830027)) b!4880189))

(assert (= (and b!4880189 c!830028) b!4880190))

(assert (= (and b!4880189 (not c!830028)) b!4880191))

(declare-fun m!5883566 () Bool)

(assert (=> b!4880191 m!5883566))

(declare-fun m!5883568 () Bool)

(assert (=> b!4880191 m!5883568))

(declare-fun m!5883570 () Bool)

(assert (=> b!4880191 m!5883570))

(declare-fun m!5883572 () Bool)

(assert (=> b!4880191 m!5883572))

(assert (=> b!4880191 m!5883570))

(declare-fun m!5883574 () Bool)

(assert (=> b!4880191 m!5883574))

(assert (=> b!4880191 m!5883568))

(declare-fun m!5883576 () Bool)

(assert (=> d!1568166 m!5883576))

(declare-fun m!5883578 () Bool)

(assert (=> d!1568166 m!5883578))

(declare-fun m!5883580 () Bool)

(assert (=> d!1568166 m!5883580))

(assert (=> d!1568166 m!5883578))

(assert (=> d!1568166 m!5883580))

(declare-fun m!5883582 () Bool)

(assert (=> d!1568166 m!5883582))

(assert (=> bm!338750 d!1568166))

(declare-fun d!1568168 () Bool)

(assert (=> d!1568168 (= (inv!72023 (xs!17928 (right!41043 t!4585))) (<= (size!36961 (innerList!14706 (xs!17928 (right!41043 t!4585)))) 2147483647))))

(declare-fun bs!1175345 () Bool)

(assert (= bs!1175345 d!1568168))

(declare-fun m!5883584 () Bool)

(assert (=> bs!1175345 m!5883584))

(assert (=> b!4879789 d!1568168))

(declare-fun b!4880192 () Bool)

(declare-fun res!2083216 () Bool)

(declare-fun e!3049993 () Bool)

(assert (=> b!4880192 (=> (not res!2083216) (not e!3049993))))

(assert (=> b!4880192 (= res!2083216 (not (isEmpty!30031 (left!40713 (right!41043 t!4585)))))))

(declare-fun b!4880193 () Bool)

(declare-fun e!3049994 () Bool)

(assert (=> b!4880193 (= e!3049994 e!3049993)))

(declare-fun res!2083214 () Bool)

(assert (=> b!4880193 (=> (not res!2083214) (not e!3049993))))

(assert (=> b!4880193 (= res!2083214 (<= (- 1) (- (height!1951 (left!40713 (right!41043 t!4585))) (height!1951 (right!41043 (right!41043 t!4585))))))))

(declare-fun b!4880194 () Bool)

(declare-fun res!2083212 () Bool)

(assert (=> b!4880194 (=> (not res!2083212) (not e!3049993))))

(assert (=> b!4880194 (= res!2083212 (isBalanced!3980 (left!40713 (right!41043 t!4585))))))

(declare-fun d!1568170 () Bool)

(declare-fun res!2083217 () Bool)

(assert (=> d!1568170 (=> res!2083217 e!3049994)))

(assert (=> d!1568170 (= res!2083217 (not ((_ is Node!14618) (right!41043 t!4585))))))

(assert (=> d!1568170 (= (isBalanced!3980 (right!41043 t!4585)) e!3049994)))

(declare-fun b!4880195 () Bool)

(declare-fun res!2083215 () Bool)

(assert (=> b!4880195 (=> (not res!2083215) (not e!3049993))))

(assert (=> b!4880195 (= res!2083215 (<= (- (height!1951 (left!40713 (right!41043 t!4585))) (height!1951 (right!41043 (right!41043 t!4585)))) 1))))

(declare-fun b!4880196 () Bool)

(declare-fun res!2083213 () Bool)

(assert (=> b!4880196 (=> (not res!2083213) (not e!3049993))))

(assert (=> b!4880196 (= res!2083213 (isBalanced!3980 (right!41043 (right!41043 t!4585))))))

(declare-fun b!4880197 () Bool)

(assert (=> b!4880197 (= e!3049993 (not (isEmpty!30031 (right!41043 (right!41043 t!4585)))))))

(assert (= (and d!1568170 (not res!2083217)) b!4880193))

(assert (= (and b!4880193 res!2083214) b!4880195))

(assert (= (and b!4880195 res!2083215) b!4880194))

(assert (= (and b!4880194 res!2083212) b!4880196))

(assert (= (and b!4880196 res!2083213) b!4880192))

(assert (= (and b!4880192 res!2083216) b!4880197))

(declare-fun m!5883586 () Bool)

(assert (=> b!4880196 m!5883586))

(declare-fun m!5883588 () Bool)

(assert (=> b!4880194 m!5883588))

(declare-fun m!5883590 () Bool)

(assert (=> b!4880195 m!5883590))

(declare-fun m!5883592 () Bool)

(assert (=> b!4880195 m!5883592))

(assert (=> b!4880193 m!5883590))

(assert (=> b!4880193 m!5883592))

(declare-fun m!5883594 () Bool)

(assert (=> b!4880197 m!5883594))

(declare-fun m!5883596 () Bool)

(assert (=> b!4880192 m!5883596))

(assert (=> b!4879744 d!1568170))

(declare-fun d!1568172 () Bool)

(declare-fun res!2083218 () Bool)

(declare-fun e!3049995 () Bool)

(assert (=> d!1568172 (=> (not res!2083218) (not e!3049995))))

(assert (=> d!1568172 (= res!2083218 (= (csize!29466 (right!41043 t!4585)) (+ (size!36963 (left!40713 (right!41043 t!4585))) (size!36963 (right!41043 (right!41043 t!4585))))))))

(assert (=> d!1568172 (= (inv!72027 (right!41043 t!4585)) e!3049995)))

(declare-fun b!4880198 () Bool)

(declare-fun res!2083219 () Bool)

(assert (=> b!4880198 (=> (not res!2083219) (not e!3049995))))

(assert (=> b!4880198 (= res!2083219 (and (not (= (left!40713 (right!41043 t!4585)) Empty!14618)) (not (= (right!41043 (right!41043 t!4585)) Empty!14618))))))

(declare-fun b!4880199 () Bool)

(declare-fun res!2083220 () Bool)

(assert (=> b!4880199 (=> (not res!2083220) (not e!3049995))))

(assert (=> b!4880199 (= res!2083220 (= (cheight!14829 (right!41043 t!4585)) (+ (max!0 (height!1951 (left!40713 (right!41043 t!4585))) (height!1951 (right!41043 (right!41043 t!4585)))) 1)))))

(declare-fun b!4880200 () Bool)

(assert (=> b!4880200 (= e!3049995 (<= 0 (cheight!14829 (right!41043 t!4585))))))

(assert (= (and d!1568172 res!2083218) b!4880198))

(assert (= (and b!4880198 res!2083219) b!4880199))

(assert (= (and b!4880199 res!2083220) b!4880200))

(declare-fun m!5883598 () Bool)

(assert (=> d!1568172 m!5883598))

(declare-fun m!5883600 () Bool)

(assert (=> d!1568172 m!5883600))

(assert (=> b!4880199 m!5883590))

(assert (=> b!4880199 m!5883592))

(assert (=> b!4880199 m!5883590))

(assert (=> b!4880199 m!5883592))

(declare-fun m!5883602 () Bool)

(assert (=> b!4880199 m!5883602))

(assert (=> b!4879774 d!1568172))

(assert (=> b!4879743 d!1568116))

(assert (=> b!4879743 d!1568118))

(declare-fun d!1568174 () Bool)

(assert (=> d!1568174 (= (height!1951 lt!1999176) (ite ((_ is Empty!14618) lt!1999176) 0 (ite ((_ is Leaf!24360) lt!1999176) 1 (cheight!14829 lt!1999176))))))

(assert (=> b!4879731 d!1568174))

(declare-fun d!1568176 () Bool)

(assert (=> d!1568176 (= (max!0 (height!1951 (Leaf!24360 (fill!241 1 v!5488) 1)) (height!1951 t!4585)) (ite (< (height!1951 (Leaf!24360 (fill!241 1 v!5488) 1)) (height!1951 t!4585)) (height!1951 t!4585) (height!1951 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> b!4879731 d!1568176))

(declare-fun d!1568178 () Bool)

(assert (=> d!1568178 (= (height!1951 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite ((_ is Empty!14618) (Leaf!24360 (fill!241 1 v!5488) 1)) 0 (ite ((_ is Leaf!24360) (Leaf!24360 (fill!241 1 v!5488) 1)) 1 (cheight!14829 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> b!4879731 d!1568178))

(declare-fun d!1568180 () Bool)

(assert (=> d!1568180 (= (height!1951 t!4585) (ite ((_ is Empty!14618) t!4585) 0 (ite ((_ is Leaf!24360) t!4585) 1 (cheight!14829 t!4585))))))

(assert (=> b!4879731 d!1568180))

(declare-fun b!4880201 () Bool)

(declare-fun res!2083225 () Bool)

(declare-fun e!3049996 () Bool)

(assert (=> b!4880201 (=> (not res!2083225) (not e!3049996))))

(assert (=> b!4880201 (= res!2083225 (not (isEmpty!30031 (left!40713 (left!40713 t!4585)))))))

(declare-fun b!4880202 () Bool)

(declare-fun e!3049997 () Bool)

(assert (=> b!4880202 (= e!3049997 e!3049996)))

(declare-fun res!2083223 () Bool)

(assert (=> b!4880202 (=> (not res!2083223) (not e!3049996))))

(assert (=> b!4880202 (= res!2083223 (<= (- 1) (- (height!1951 (left!40713 (left!40713 t!4585))) (height!1951 (right!41043 (left!40713 t!4585))))))))

(declare-fun b!4880203 () Bool)

(declare-fun res!2083221 () Bool)

(assert (=> b!4880203 (=> (not res!2083221) (not e!3049996))))

(assert (=> b!4880203 (= res!2083221 (isBalanced!3980 (left!40713 (left!40713 t!4585))))))

(declare-fun d!1568182 () Bool)

(declare-fun res!2083226 () Bool)

(assert (=> d!1568182 (=> res!2083226 e!3049997)))

(assert (=> d!1568182 (= res!2083226 (not ((_ is Node!14618) (left!40713 t!4585))))))

(assert (=> d!1568182 (= (isBalanced!3980 (left!40713 t!4585)) e!3049997)))

(declare-fun b!4880204 () Bool)

(declare-fun res!2083224 () Bool)

(assert (=> b!4880204 (=> (not res!2083224) (not e!3049996))))

(assert (=> b!4880204 (= res!2083224 (<= (- (height!1951 (left!40713 (left!40713 t!4585))) (height!1951 (right!41043 (left!40713 t!4585)))) 1))))

(declare-fun b!4880205 () Bool)

(declare-fun res!2083222 () Bool)

(assert (=> b!4880205 (=> (not res!2083222) (not e!3049996))))

(assert (=> b!4880205 (= res!2083222 (isBalanced!3980 (right!41043 (left!40713 t!4585))))))

(declare-fun b!4880206 () Bool)

(assert (=> b!4880206 (= e!3049996 (not (isEmpty!30031 (right!41043 (left!40713 t!4585)))))))

(assert (= (and d!1568182 (not res!2083226)) b!4880202))

(assert (= (and b!4880202 res!2083223) b!4880204))

(assert (= (and b!4880204 res!2083224) b!4880203))

(assert (= (and b!4880203 res!2083221) b!4880205))

(assert (= (and b!4880205 res!2083222) b!4880201))

(assert (= (and b!4880201 res!2083225) b!4880206))

(declare-fun m!5883604 () Bool)

(assert (=> b!4880205 m!5883604))

(declare-fun m!5883606 () Bool)

(assert (=> b!4880203 m!5883606))

(assert (=> b!4880204 m!5883478))

(assert (=> b!4880204 m!5883480))

(assert (=> b!4880202 m!5883478))

(assert (=> b!4880202 m!5883480))

(declare-fun m!5883608 () Bool)

(assert (=> b!4880206 m!5883608))

(declare-fun m!5883610 () Bool)

(assert (=> b!4880201 m!5883610))

(assert (=> b!4879742 d!1568182))

(declare-fun d!1568184 () Bool)

(declare-fun res!2083227 () Bool)

(declare-fun e!3049998 () Bool)

(assert (=> d!1568184 (=> (not res!2083227) (not e!3049998))))

(assert (=> d!1568184 (= res!2083227 (<= (size!36961 (list!17567 (xs!17928 (right!41043 t!4585)))) 512))))

(assert (=> d!1568184 (= (inv!72028 (right!41043 t!4585)) e!3049998)))

(declare-fun b!4880207 () Bool)

(declare-fun res!2083228 () Bool)

(assert (=> b!4880207 (=> (not res!2083228) (not e!3049998))))

(assert (=> b!4880207 (= res!2083228 (= (csize!29467 (right!41043 t!4585)) (size!36961 (list!17567 (xs!17928 (right!41043 t!4585))))))))

(declare-fun b!4880208 () Bool)

(assert (=> b!4880208 (= e!3049998 (and (> (csize!29467 (right!41043 t!4585)) 0) (<= (csize!29467 (right!41043 t!4585)) 512)))))

(assert (= (and d!1568184 res!2083227) b!4880207))

(assert (= (and b!4880207 res!2083228) b!4880208))

(assert (=> d!1568184 m!5883366))

(assert (=> d!1568184 m!5883366))

(declare-fun m!5883612 () Bool)

(assert (=> d!1568184 m!5883612))

(assert (=> b!4880207 m!5883366))

(assert (=> b!4880207 m!5883366))

(assert (=> b!4880207 m!5883612))

(assert (=> b!4879776 d!1568184))

(assert (=> b!4879729 d!1568180))

(assert (=> b!4879729 d!1568178))

(declare-fun d!1568186 () Bool)

(declare-fun lt!1999232 () Bool)

(assert (=> d!1568186 (= lt!1999232 (isEmpty!30033 (list!17565 (right!41043 t!4585))))))

(assert (=> d!1568186 (= lt!1999232 (= (size!36963 (right!41043 t!4585)) 0))))

(assert (=> d!1568186 (= (isEmpty!30031 (right!41043 t!4585)) lt!1999232)))

(declare-fun bs!1175346 () Bool)

(assert (= bs!1175346 d!1568186))

(assert (=> bs!1175346 m!5882920))

(assert (=> bs!1175346 m!5882920))

(declare-fun m!5883614 () Bool)

(assert (=> bs!1175346 m!5883614))

(assert (=> bs!1175346 m!5883452))

(assert (=> b!4879745 d!1568186))

(assert (=> b!4879739 d!1568174))

(assert (=> b!4879739 d!1568176))

(assert (=> b!4879739 d!1568178))

(assert (=> b!4879739 d!1568180))

(declare-fun tp!1373032 () Bool)

(declare-fun b!4880209 () Bool)

(declare-fun e!3050000 () Bool)

(declare-fun tp!1373033 () Bool)

(assert (=> b!4880209 (= e!3050000 (and (inv!72024 (left!40713 (left!40713 (right!41043 t!4585)))) tp!1373033 (inv!72024 (right!41043 (left!40713 (right!41043 t!4585)))) tp!1373032))))

(declare-fun b!4880211 () Bool)

(declare-fun e!3049999 () Bool)

(declare-fun tp!1373031 () Bool)

(assert (=> b!4880211 (= e!3049999 tp!1373031)))

(declare-fun b!4880210 () Bool)

(assert (=> b!4880210 (= e!3050000 (and (inv!72023 (xs!17928 (left!40713 (right!41043 t!4585)))) e!3049999))))

(assert (=> b!4879788 (= tp!1373006 (and (inv!72024 (left!40713 (right!41043 t!4585))) e!3050000))))

(assert (= (and b!4879788 ((_ is Node!14618) (left!40713 (right!41043 t!4585)))) b!4880209))

(assert (= b!4880210 b!4880211))

(assert (= (and b!4879788 ((_ is Leaf!24360) (left!40713 (right!41043 t!4585)))) b!4880210))

(declare-fun m!5883616 () Bool)

(assert (=> b!4880209 m!5883616))

(declare-fun m!5883618 () Bool)

(assert (=> b!4880209 m!5883618))

(declare-fun m!5883620 () Bool)

(assert (=> b!4880210 m!5883620))

(assert (=> b!4879788 m!5882938))

(declare-fun b!4880212 () Bool)

(declare-fun e!3050002 () Bool)

(declare-fun tp!1373035 () Bool)

(declare-fun tp!1373036 () Bool)

(assert (=> b!4880212 (= e!3050002 (and (inv!72024 (left!40713 (right!41043 (right!41043 t!4585)))) tp!1373036 (inv!72024 (right!41043 (right!41043 (right!41043 t!4585)))) tp!1373035))))

(declare-fun b!4880214 () Bool)

(declare-fun e!3050001 () Bool)

(declare-fun tp!1373034 () Bool)

(assert (=> b!4880214 (= e!3050001 tp!1373034)))

(declare-fun b!4880213 () Bool)

(assert (=> b!4880213 (= e!3050002 (and (inv!72023 (xs!17928 (right!41043 (right!41043 t!4585)))) e!3050001))))

(assert (=> b!4879788 (= tp!1373005 (and (inv!72024 (right!41043 (right!41043 t!4585))) e!3050002))))

(assert (= (and b!4879788 ((_ is Node!14618) (right!41043 (right!41043 t!4585)))) b!4880212))

(assert (= b!4880213 b!4880214))

(assert (= (and b!4879788 ((_ is Leaf!24360) (right!41043 (right!41043 t!4585)))) b!4880213))

(declare-fun m!5883622 () Bool)

(assert (=> b!4880212 m!5883622))

(declare-fun m!5883624 () Bool)

(assert (=> b!4880212 m!5883624))

(declare-fun m!5883626 () Bool)

(assert (=> b!4880213 m!5883626))

(assert (=> b!4879788 m!5882940))

(declare-fun b!4880215 () Bool)

(declare-fun e!3050003 () Bool)

(declare-fun tp!1373037 () Bool)

(assert (=> b!4880215 (= e!3050003 (and tp_is_empty!35699 tp!1373037))))

(assert (=> b!4879787 (= tp!1373001 e!3050003)))

(assert (= (and b!4879787 ((_ is Cons!56033) (innerList!14706 (xs!17928 (left!40713 t!4585))))) b!4880215))

(declare-fun b!4880216 () Bool)

(declare-fun e!3050004 () Bool)

(declare-fun tp!1373038 () Bool)

(assert (=> b!4880216 (= e!3050004 (and tp_is_empty!35699 tp!1373038))))

(assert (=> b!4879795 (= tp!1373009 e!3050004)))

(assert (= (and b!4879795 ((_ is Cons!56033) (t!364793 (innerList!14706 (xs!17928 t!4585))))) b!4880216))

(declare-fun b!4880217 () Bool)

(declare-fun e!3050005 () Bool)

(declare-fun tp!1373039 () Bool)

(assert (=> b!4880217 (= e!3050005 (and tp_is_empty!35699 tp!1373039))))

(assert (=> b!4879790 (= tp!1373004 e!3050005)))

(assert (= (and b!4879790 ((_ is Cons!56033) (innerList!14706 (xs!17928 (right!41043 t!4585))))) b!4880217))

(declare-fun tp!1373041 () Bool)

(declare-fun tp!1373042 () Bool)

(declare-fun e!3050007 () Bool)

(declare-fun b!4880218 () Bool)

(assert (=> b!4880218 (= e!3050007 (and (inv!72024 (left!40713 (left!40713 (left!40713 t!4585)))) tp!1373042 (inv!72024 (right!41043 (left!40713 (left!40713 t!4585)))) tp!1373041))))

(declare-fun b!4880220 () Bool)

(declare-fun e!3050006 () Bool)

(declare-fun tp!1373040 () Bool)

(assert (=> b!4880220 (= e!3050006 tp!1373040)))

(declare-fun b!4880219 () Bool)

(assert (=> b!4880219 (= e!3050007 (and (inv!72023 (xs!17928 (left!40713 (left!40713 t!4585)))) e!3050006))))

(assert (=> b!4879785 (= tp!1373003 (and (inv!72024 (left!40713 (left!40713 t!4585))) e!3050007))))

(assert (= (and b!4879785 ((_ is Node!14618) (left!40713 (left!40713 t!4585)))) b!4880218))

(assert (= b!4880219 b!4880220))

(assert (= (and b!4879785 ((_ is Leaf!24360) (left!40713 (left!40713 t!4585)))) b!4880219))

(declare-fun m!5883628 () Bool)

(assert (=> b!4880218 m!5883628))

(declare-fun m!5883630 () Bool)

(assert (=> b!4880218 m!5883630))

(declare-fun m!5883632 () Bool)

(assert (=> b!4880219 m!5883632))

(assert (=> b!4879785 m!5882932))

(declare-fun e!3050009 () Bool)

(declare-fun tp!1373044 () Bool)

(declare-fun b!4880221 () Bool)

(declare-fun tp!1373045 () Bool)

(assert (=> b!4880221 (= e!3050009 (and (inv!72024 (left!40713 (right!41043 (left!40713 t!4585)))) tp!1373045 (inv!72024 (right!41043 (right!41043 (left!40713 t!4585)))) tp!1373044))))

(declare-fun b!4880223 () Bool)

(declare-fun e!3050008 () Bool)

(declare-fun tp!1373043 () Bool)

(assert (=> b!4880223 (= e!3050008 tp!1373043)))

(declare-fun b!4880222 () Bool)

(assert (=> b!4880222 (= e!3050009 (and (inv!72023 (xs!17928 (right!41043 (left!40713 t!4585)))) e!3050008))))

(assert (=> b!4879785 (= tp!1373002 (and (inv!72024 (right!41043 (left!40713 t!4585))) e!3050009))))

(assert (= (and b!4879785 ((_ is Node!14618) (right!41043 (left!40713 t!4585)))) b!4880221))

(assert (= b!4880222 b!4880223))

(assert (= (and b!4879785 ((_ is Leaf!24360) (right!41043 (left!40713 t!4585)))) b!4880222))

(declare-fun m!5883634 () Bool)

(assert (=> b!4880221 m!5883634))

(declare-fun m!5883636 () Bool)

(assert (=> b!4880221 m!5883636))

(declare-fun m!5883638 () Bool)

(assert (=> b!4880222 m!5883638))

(assert (=> b!4879785 m!5882934))

(check-sat (not b!4880192) (not d!1568160) (not d!1568108) tp_is_empty!35699 (not b!4880100) (not b!4879985) (not b!4880175) (not b!4879986) (not bm!338790) (not b!4880220) (not bm!338787) (not b!4880061) (not b!4880221) (not b!4879955) (not b!4880126) (not b!4880187) (not b!4880152) (not b!4879990) (not b!4880140) (not d!1568186) (not b!4880159) (not d!1568076) (not d!1568072) (not b!4880209) (not d!1568126) (not b!4880062) (not b!4880194) (not b!4880222) (not b!4880191) (not b!4880172) (not bm!338784) (not b!4880106) (not d!1568132) (not b!4880097) (not b!4880212) (not b!4879989) (not d!1568110) (not b!4879951) (not b!4880176) (not b!4880219) (not d!1568142) (not d!1568184) (not b!4880078) (not b!4880180) (not b!4880193) (not b!4879952) (not b!4880133) (not b!4880113) (not d!1568120) (not bm!338791) (not b!4880114) (not b!4879981) (not b!4880135) (not b!4880012) (not b!4879982) (not b!4880205) (not b!4880109) (not b!4879948) (not b!4880217) (not b!4880148) (not b!4880145) (not b!4880139) (not b!4880204) (not b!4880195) (not b!4880112) (not b!4880124) (not b!4880131) (not b!4879991) (not b!4880132) (not d!1568172) (not b!4880128) (not b!4880197) (not b!4880196) (not b!4880203) (not b!4880213) (not b!4880115) (not d!1568114) (not b!4880206) (not b!4880161) (not b!4880073) (not b!4879988) (not d!1568156) (not b!4880199) (not b!4879954) (not b!4880101) (not b!4880077) (not b!4880207) (not d!1568168) (not b!4880211) (not d!1568166) (not d!1568068) (not b!4879788) (not b!4880181) (not b!4880214) (not b!4880143) (not b!4879941) (not b!4879945) (not d!1568140) (not d!1568134) (not b!4880215) (not d!1568066) (not b!4880216) (not b!4880146) (not b!4879947) (not b!4879946) (not b!4880129) (not b!4880111) (not b!4880110) (not b!4880153) (not b!4880137) (not b!4880223) (not b!4880218) (not bm!338778) (not b!4880202) (not b!4880201) (not b!4880173) (not b!4879953) (not b!4879987) (not b!4880169) (not bm!338785) (not b!4879950) (not b!4880130) (not b!4880116) (not b!4879785) (not b!4880142) (not b!4880210) (not b!4880072) (not b!4879942) (not bm!338782) (not b!4880105) (not b!4880163))
(check-sat)
(get-model)

(declare-fun b!4880224 () Bool)

(declare-fun res!2083233 () Bool)

(declare-fun e!3050010 () Bool)

(assert (=> b!4880224 (=> (not res!2083233) (not e!3050010))))

(assert (=> b!4880224 (= res!2083233 (not (isEmpty!30031 (left!40713 (left!40713 lt!1999176)))))))

(declare-fun b!4880225 () Bool)

(declare-fun e!3050011 () Bool)

(assert (=> b!4880225 (= e!3050011 e!3050010)))

(declare-fun res!2083231 () Bool)

(assert (=> b!4880225 (=> (not res!2083231) (not e!3050010))))

(assert (=> b!4880225 (= res!2083231 (<= (- 1) (- (height!1951 (left!40713 (left!40713 lt!1999176))) (height!1951 (right!41043 (left!40713 lt!1999176))))))))

(declare-fun b!4880226 () Bool)

(declare-fun res!2083229 () Bool)

(assert (=> b!4880226 (=> (not res!2083229) (not e!3050010))))

(assert (=> b!4880226 (= res!2083229 (isBalanced!3980 (left!40713 (left!40713 lt!1999176))))))

(declare-fun d!1568188 () Bool)

(declare-fun res!2083234 () Bool)

(assert (=> d!1568188 (=> res!2083234 e!3050011)))

(assert (=> d!1568188 (= res!2083234 (not ((_ is Node!14618) (left!40713 lt!1999176))))))

(assert (=> d!1568188 (= (isBalanced!3980 (left!40713 lt!1999176)) e!3050011)))

(declare-fun b!4880227 () Bool)

(declare-fun res!2083232 () Bool)

(assert (=> b!4880227 (=> (not res!2083232) (not e!3050010))))

(assert (=> b!4880227 (= res!2083232 (<= (- (height!1951 (left!40713 (left!40713 lt!1999176))) (height!1951 (right!41043 (left!40713 lt!1999176)))) 1))))

(declare-fun b!4880228 () Bool)

(declare-fun res!2083230 () Bool)

(assert (=> b!4880228 (=> (not res!2083230) (not e!3050010))))

(assert (=> b!4880228 (= res!2083230 (isBalanced!3980 (right!41043 (left!40713 lt!1999176))))))

(declare-fun b!4880229 () Bool)

(assert (=> b!4880229 (= e!3050010 (not (isEmpty!30031 (right!41043 (left!40713 lt!1999176)))))))

(assert (= (and d!1568188 (not res!2083234)) b!4880225))

(assert (= (and b!4880225 res!2083231) b!4880227))

(assert (= (and b!4880227 res!2083232) b!4880226))

(assert (= (and b!4880226 res!2083229) b!4880228))

(assert (= (and b!4880228 res!2083230) b!4880224))

(assert (= (and b!4880224 res!2083233) b!4880229))

(declare-fun m!5883640 () Bool)

(assert (=> b!4880228 m!5883640))

(declare-fun m!5883642 () Bool)

(assert (=> b!4880226 m!5883642))

(declare-fun m!5883644 () Bool)

(assert (=> b!4880227 m!5883644))

(declare-fun m!5883646 () Bool)

(assert (=> b!4880227 m!5883646))

(assert (=> b!4880225 m!5883644))

(assert (=> b!4880225 m!5883646))

(declare-fun m!5883648 () Bool)

(assert (=> b!4880229 m!5883648))

(declare-fun m!5883650 () Bool)

(assert (=> b!4880224 m!5883650))

(assert (=> b!4880130 d!1568188))

(declare-fun d!1568190 () Bool)

(declare-fun res!2083235 () Bool)

(declare-fun e!3050012 () Bool)

(assert (=> d!1568190 (=> (not res!2083235) (not e!3050012))))

(assert (=> d!1568190 (= res!2083235 (<= (size!36961 (list!17567 (xs!17928 (left!40713 (right!41043 t!4585))))) 512))))

(assert (=> d!1568190 (= (inv!72028 (left!40713 (right!41043 t!4585))) e!3050012)))

(declare-fun b!4880230 () Bool)

(declare-fun res!2083236 () Bool)

(assert (=> b!4880230 (=> (not res!2083236) (not e!3050012))))

(assert (=> b!4880230 (= res!2083236 (= (csize!29467 (left!40713 (right!41043 t!4585))) (size!36961 (list!17567 (xs!17928 (left!40713 (right!41043 t!4585)))))))))

(declare-fun b!4880231 () Bool)

(assert (=> b!4880231 (= e!3050012 (and (> (csize!29467 (left!40713 (right!41043 t!4585))) 0) (<= (csize!29467 (left!40713 (right!41043 t!4585))) 512)))))

(assert (= (and d!1568190 res!2083235) b!4880230))

(assert (= (and b!4880230 res!2083236) b!4880231))

(declare-fun m!5883652 () Bool)

(assert (=> d!1568190 m!5883652))

(assert (=> d!1568190 m!5883652))

(declare-fun m!5883654 () Bool)

(assert (=> d!1568190 m!5883654))

(assert (=> b!4880230 m!5883652))

(assert (=> b!4880230 m!5883652))

(assert (=> b!4880230 m!5883654))

(assert (=> b!4880145 d!1568190))

(declare-fun d!1568192 () Bool)

(declare-fun lt!1999233 () Bool)

(assert (=> d!1568192 (= lt!1999233 (isEmpty!30033 (list!17565 (left!40713 (right!41043 lt!1999152)))))))

(assert (=> d!1568192 (= lt!1999233 (= (size!36963 (left!40713 (right!41043 lt!1999152))) 0))))

(assert (=> d!1568192 (= (isEmpty!30031 (left!40713 (right!41043 lt!1999152))) lt!1999233)))

(declare-fun bs!1175347 () Bool)

(assert (= bs!1175347 d!1568192))

(assert (=> bs!1175347 m!5883430))

(assert (=> bs!1175347 m!5883430))

(declare-fun m!5883656 () Bool)

(assert (=> bs!1175347 m!5883656))

(declare-fun m!5883658 () Bool)

(assert (=> bs!1175347 m!5883658))

(assert (=> b!4879986 d!1568192))

(declare-fun d!1568194 () Bool)

(declare-fun res!2083237 () Bool)

(declare-fun e!3050013 () Bool)

(assert (=> d!1568194 (=> (not res!2083237) (not e!3050013))))

(assert (=> d!1568194 (= res!2083237 (= (csize!29466 (right!41043 (left!40713 t!4585))) (+ (size!36963 (left!40713 (right!41043 (left!40713 t!4585)))) (size!36963 (right!41043 (right!41043 (left!40713 t!4585)))))))))

(assert (=> d!1568194 (= (inv!72027 (right!41043 (left!40713 t!4585))) e!3050013)))

(declare-fun b!4880232 () Bool)

(declare-fun res!2083238 () Bool)

(assert (=> b!4880232 (=> (not res!2083238) (not e!3050013))))

(assert (=> b!4880232 (= res!2083238 (and (not (= (left!40713 (right!41043 (left!40713 t!4585))) Empty!14618)) (not (= (right!41043 (right!41043 (left!40713 t!4585))) Empty!14618))))))

(declare-fun b!4880233 () Bool)

(declare-fun res!2083239 () Bool)

(assert (=> b!4880233 (=> (not res!2083239) (not e!3050013))))

(assert (=> b!4880233 (= res!2083239 (= (cheight!14829 (right!41043 (left!40713 t!4585))) (+ (max!0 (height!1951 (left!40713 (right!41043 (left!40713 t!4585)))) (height!1951 (right!41043 (right!41043 (left!40713 t!4585))))) 1)))))

(declare-fun b!4880234 () Bool)

(assert (=> b!4880234 (= e!3050013 (<= 0 (cheight!14829 (right!41043 (left!40713 t!4585)))))))

(assert (= (and d!1568194 res!2083237) b!4880232))

(assert (= (and b!4880232 res!2083238) b!4880233))

(assert (= (and b!4880233 res!2083239) b!4880234))

(declare-fun m!5883660 () Bool)

(assert (=> d!1568194 m!5883660))

(declare-fun m!5883662 () Bool)

(assert (=> d!1568194 m!5883662))

(declare-fun m!5883664 () Bool)

(assert (=> b!4880233 m!5883664))

(declare-fun m!5883666 () Bool)

(assert (=> b!4880233 m!5883666))

(assert (=> b!4880233 m!5883664))

(assert (=> b!4880233 m!5883666))

(declare-fun m!5883668 () Bool)

(assert (=> b!4880233 m!5883668))

(assert (=> b!4880140 d!1568194))

(declare-fun d!1568196 () Bool)

(declare-fun lt!1999236 () Int)

(assert (=> d!1568196 (= lt!1999236 (size!36961 (list!17565 (left!40713 (right!41043 t!4585)))))))

(assert (=> d!1568196 (= lt!1999236 (ite ((_ is Empty!14618) (left!40713 (right!41043 t!4585))) 0 (ite ((_ is Leaf!24360) (left!40713 (right!41043 t!4585))) (csize!29467 (left!40713 (right!41043 t!4585))) (csize!29466 (left!40713 (right!41043 t!4585))))))))

(assert (=> d!1568196 (= (size!36963 (left!40713 (right!41043 t!4585))) lt!1999236)))

(declare-fun bs!1175348 () Bool)

(assert (= bs!1175348 d!1568196))

(assert (=> bs!1175348 m!5883368))

(assert (=> bs!1175348 m!5883368))

(declare-fun m!5883670 () Bool)

(assert (=> bs!1175348 m!5883670))

(assert (=> d!1568172 d!1568196))

(declare-fun d!1568198 () Bool)

(declare-fun lt!1999237 () Int)

(assert (=> d!1568198 (= lt!1999237 (size!36961 (list!17565 (right!41043 (right!41043 t!4585)))))))

(assert (=> d!1568198 (= lt!1999237 (ite ((_ is Empty!14618) (right!41043 (right!41043 t!4585))) 0 (ite ((_ is Leaf!24360) (right!41043 (right!41043 t!4585))) (csize!29467 (right!41043 (right!41043 t!4585))) (csize!29466 (right!41043 (right!41043 t!4585))))))))

(assert (=> d!1568198 (= (size!36963 (right!41043 (right!41043 t!4585))) lt!1999237)))

(declare-fun bs!1175349 () Bool)

(assert (= bs!1175349 d!1568198))

(assert (=> bs!1175349 m!5883370))

(assert (=> bs!1175349 m!5883370))

(declare-fun m!5883672 () Bool)

(assert (=> bs!1175349 m!5883672))

(assert (=> d!1568172 d!1568198))

(declare-fun b!4880235 () Bool)

(declare-fun e!3050015 () List!56157)

(assert (=> b!4880235 (= e!3050015 (list!17565 t!4585))))

(declare-fun b!4880237 () Bool)

(declare-fun res!2083240 () Bool)

(declare-fun e!3050014 () Bool)

(assert (=> b!4880237 (=> (not res!2083240) (not e!3050014))))

(declare-fun lt!1999238 () List!56157)

(assert (=> b!4880237 (= res!2083240 (= (size!36961 lt!1999238) (+ (size!36961 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (size!36961 (list!17565 t!4585)))))))

(declare-fun b!4880238 () Bool)

(assert (=> b!4880238 (= e!3050014 (or (not (= (list!17565 t!4585) Nil!56033)) (= lt!1999238 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(declare-fun d!1568200 () Bool)

(assert (=> d!1568200 e!3050014))

(declare-fun res!2083241 () Bool)

(assert (=> d!1568200 (=> (not res!2083241) (not e!3050014))))

(assert (=> d!1568200 (= res!2083241 (= (content!10010 lt!1999238) ((_ map or) (content!10010 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (content!10010 (list!17565 t!4585)))))))

(assert (=> d!1568200 (= lt!1999238 e!3050015)))

(declare-fun c!830029 () Bool)

(assert (=> d!1568200 (= c!830029 ((_ is Nil!56033) (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (=> d!1568200 (= (++!12218 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585)) lt!1999238)))

(declare-fun b!4880236 () Bool)

(assert (=> b!4880236 (= e!3050015 (Cons!56033 (h!62481 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (++!12218 (t!364793 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (list!17565 t!4585))))))

(assert (= (and d!1568200 c!830029) b!4880235))

(assert (= (and d!1568200 (not c!830029)) b!4880236))

(assert (= (and d!1568200 res!2083241) b!4880237))

(assert (= (and b!4880237 res!2083240) b!4880238))

(declare-fun m!5883674 () Bool)

(assert (=> b!4880237 m!5883674))

(assert (=> b!4880237 m!5883142))

(declare-fun m!5883676 () Bool)

(assert (=> b!4880237 m!5883676))

(assert (=> b!4880237 m!5882724))

(assert (=> b!4880237 m!5883550))

(declare-fun m!5883678 () Bool)

(assert (=> d!1568200 m!5883678))

(assert (=> d!1568200 m!5883142))

(declare-fun m!5883680 () Bool)

(assert (=> d!1568200 m!5883680))

(assert (=> d!1568200 m!5882724))

(assert (=> d!1568200 m!5883556))

(assert (=> b!4880236 m!5882724))

(declare-fun m!5883682 () Bool)

(assert (=> b!4880236 m!5883682))

(assert (=> b!4879946 d!1568200))

(declare-fun bm!338802 () Bool)

(declare-fun call!338807 () List!56157)

(assert (=> bm!338802 (= call!338807 (++!12218 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun bm!338803 () Bool)

(declare-fun call!338809 () List!56157)

(assert (=> bm!338803 (= call!338809 (++!12218 (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (++!12218 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585))))))

(declare-fun call!338808 () List!56157)

(declare-fun bm!338804 () Bool)

(assert (=> bm!338804 (= call!338808 (++!12218 call!338807 (++!12218 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585))))))

(declare-fun d!1568202 () Bool)

(declare-fun e!3050018 () Bool)

(assert (=> d!1568202 e!3050018))

(declare-fun c!830032 () Bool)

(assert (=> d!1568202 (= c!830032 ((_ is Nil!56033) (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568202 (= (appendAssoc!289 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (++!12218 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585))) true)))

(declare-fun b!4880243 () Bool)

(declare-fun call!338810 () List!56157)

(assert (=> b!4880243 (= e!3050018 (= call!338808 call!338810))))

(declare-fun lt!1999241 () Bool)

(assert (=> b!4880243 (= lt!1999241 (appendAssoc!289 (t!364793 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (++!12218 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585))))))

(declare-fun bm!338805 () Bool)

(assert (=> bm!338805 (= call!338810 (++!12218 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) call!338809))))

(declare-fun b!4880244 () Bool)

(assert (=> b!4880244 (= e!3050018 (= call!338808 call!338810))))

(assert (= (and d!1568202 c!830032) b!4880244))

(assert (= (and d!1568202 (not c!830032)) b!4880243))

(assert (= (or b!4880244 b!4880243) bm!338802))

(assert (= (or b!4880244 b!4880243) bm!338803))

(assert (= (or b!4880244 b!4880243) bm!338805))

(assert (= (or b!4880244 b!4880243) bm!338804))

(assert (=> bm!338802 m!5883146))

(assert (=> bm!338802 m!5883140))

(declare-fun m!5883684 () Bool)

(assert (=> bm!338802 m!5883684))

(assert (=> bm!338804 m!5883164))

(declare-fun m!5883686 () Bool)

(assert (=> bm!338804 m!5883686))

(assert (=> bm!338803 m!5883140))

(assert (=> bm!338803 m!5883164))

(declare-fun m!5883688 () Bool)

(assert (=> bm!338803 m!5883688))

(assert (=> bm!338805 m!5883146))

(declare-fun m!5883690 () Bool)

(assert (=> bm!338805 m!5883690))

(assert (=> b!4880243 m!5883140))

(assert (=> b!4880243 m!5883164))

(declare-fun m!5883692 () Bool)

(assert (=> b!4880243 m!5883692))

(assert (=> b!4879946 d!1568202))

(declare-fun d!1568204 () Bool)

(declare-fun c!830033 () Bool)

(assert (=> d!1568204 (= c!830033 ((_ is Empty!14618) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun e!3050019 () List!56157)

(assert (=> d!1568204 (= (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) e!3050019)))

(declare-fun b!4880245 () Bool)

(assert (=> b!4880245 (= e!3050019 Nil!56033)))

(declare-fun b!4880247 () Bool)

(declare-fun e!3050020 () List!56157)

(assert (=> b!4880247 (= e!3050020 (list!17567 (xs!17928 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880248 () Bool)

(assert (=> b!4880248 (= e!3050020 (++!12218 (list!17565 (left!40713 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (list!17565 (right!41043 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(declare-fun b!4880246 () Bool)

(assert (=> b!4880246 (= e!3050019 e!3050020)))

(declare-fun c!830034 () Bool)

(assert (=> b!4880246 (= c!830034 ((_ is Leaf!24360) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (= (and d!1568204 c!830033) b!4880245))

(assert (= (and d!1568204 (not c!830033)) b!4880246))

(assert (= (and b!4880246 c!830034) b!4880247))

(assert (= (and b!4880246 (not c!830034)) b!4880248))

(declare-fun m!5883694 () Bool)

(assert (=> b!4880247 m!5883694))

(declare-fun m!5883696 () Bool)

(assert (=> b!4880248 m!5883696))

(declare-fun m!5883698 () Bool)

(assert (=> b!4880248 m!5883698))

(assert (=> b!4880248 m!5883696))

(assert (=> b!4880248 m!5883698))

(declare-fun m!5883700 () Bool)

(assert (=> b!4880248 m!5883700))

(assert (=> b!4879946 d!1568204))

(assert (=> b!4879946 d!1567974))

(declare-fun d!1568206 () Bool)

(declare-fun c!830035 () Bool)

(assert (=> d!1568206 (= c!830035 ((_ is Empty!14618) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun e!3050021 () List!56157)

(assert (=> d!1568206 (= (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) e!3050021)))

(declare-fun b!4880249 () Bool)

(assert (=> b!4880249 (= e!3050021 Nil!56033)))

(declare-fun b!4880251 () Bool)

(declare-fun e!3050022 () List!56157)

(assert (=> b!4880251 (= e!3050022 (list!17567 (xs!17928 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4880252 () Bool)

(assert (=> b!4880252 (= e!3050022 (++!12218 (list!17565 (left!40713 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880250 () Bool)

(assert (=> b!4880250 (= e!3050021 e!3050022)))

(declare-fun c!830036 () Bool)

(assert (=> b!4880250 (= c!830036 ((_ is Leaf!24360) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (= (and d!1568206 c!830035) b!4880249))

(assert (= (and d!1568206 (not c!830035)) b!4880250))

(assert (= (and b!4880250 c!830036) b!4880251))

(assert (= (and b!4880250 (not c!830036)) b!4880252))

(declare-fun m!5883702 () Bool)

(assert (=> b!4880251 m!5883702))

(declare-fun m!5883704 () Bool)

(assert (=> b!4880252 m!5883704))

(declare-fun m!5883706 () Bool)

(assert (=> b!4880252 m!5883706))

(assert (=> b!4880252 m!5883704))

(assert (=> b!4880252 m!5883706))

(declare-fun m!5883708 () Bool)

(assert (=> b!4880252 m!5883708))

(assert (=> b!4879946 d!1568206))

(declare-fun d!1568208 () Bool)

(declare-fun c!830037 () Bool)

(assert (=> d!1568208 (= c!830037 ((_ is Empty!14618) (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun e!3050023 () List!56157)

(assert (=> d!1568208 (= (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) e!3050023)))

(declare-fun b!4880253 () Bool)

(assert (=> b!4880253 (= e!3050023 Nil!56033)))

(declare-fun b!4880255 () Bool)

(declare-fun e!3050024 () List!56157)

(assert (=> b!4880255 (= e!3050024 (list!17567 (xs!17928 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880256 () Bool)

(assert (=> b!4880256 (= e!3050024 (++!12218 (list!17565 (left!40713 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (list!17565 (right!41043 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(declare-fun b!4880254 () Bool)

(assert (=> b!4880254 (= e!3050023 e!3050024)))

(declare-fun c!830038 () Bool)

(assert (=> b!4880254 (= c!830038 ((_ is Leaf!24360) (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (= (and d!1568208 c!830037) b!4880253))

(assert (= (and d!1568208 (not c!830037)) b!4880254))

(assert (= (and b!4880254 c!830038) b!4880255))

(assert (= (and b!4880254 (not c!830038)) b!4880256))

(declare-fun m!5883710 () Bool)

(assert (=> b!4880255 m!5883710))

(declare-fun m!5883712 () Bool)

(assert (=> b!4880256 m!5883712))

(declare-fun m!5883714 () Bool)

(assert (=> b!4880256 m!5883714))

(assert (=> b!4880256 m!5883712))

(assert (=> b!4880256 m!5883714))

(declare-fun m!5883716 () Bool)

(assert (=> b!4880256 m!5883716))

(assert (=> b!4879946 d!1568208))

(declare-fun b!4880257 () Bool)

(declare-fun res!2083246 () Bool)

(declare-fun e!3050025 () Bool)

(assert (=> b!4880257 (=> (not res!2083246) (not e!3050025))))

(assert (=> b!4880257 (= res!2083246 (not (isEmpty!30031 (left!40713 lt!1999223))))))

(declare-fun b!4880258 () Bool)

(declare-fun e!3050026 () Bool)

(assert (=> b!4880258 (= e!3050026 e!3050025)))

(declare-fun res!2083244 () Bool)

(assert (=> b!4880258 (=> (not res!2083244) (not e!3050025))))

(assert (=> b!4880258 (= res!2083244 (<= (- 1) (- (height!1951 (left!40713 lt!1999223)) (height!1951 (right!41043 lt!1999223)))))))

(declare-fun b!4880259 () Bool)

(declare-fun res!2083242 () Bool)

(assert (=> b!4880259 (=> (not res!2083242) (not e!3050025))))

(assert (=> b!4880259 (= res!2083242 (isBalanced!3980 (left!40713 lt!1999223)))))

(declare-fun d!1568210 () Bool)

(declare-fun res!2083247 () Bool)

(assert (=> d!1568210 (=> res!2083247 e!3050026)))

(assert (=> d!1568210 (= res!2083247 (not ((_ is Node!14618) lt!1999223)))))

(assert (=> d!1568210 (= (isBalanced!3980 lt!1999223) e!3050026)))

(declare-fun b!4880260 () Bool)

(declare-fun res!2083245 () Bool)

(assert (=> b!4880260 (=> (not res!2083245) (not e!3050025))))

(assert (=> b!4880260 (= res!2083245 (<= (- (height!1951 (left!40713 lt!1999223)) (height!1951 (right!41043 lt!1999223))) 1))))

(declare-fun b!4880261 () Bool)

(declare-fun res!2083243 () Bool)

(assert (=> b!4880261 (=> (not res!2083243) (not e!3050025))))

(assert (=> b!4880261 (= res!2083243 (isBalanced!3980 (right!41043 lt!1999223)))))

(declare-fun b!4880262 () Bool)

(assert (=> b!4880262 (= e!3050025 (not (isEmpty!30031 (right!41043 lt!1999223))))))

(assert (= (and d!1568210 (not res!2083247)) b!4880258))

(assert (= (and b!4880258 res!2083244) b!4880260))

(assert (= (and b!4880260 res!2083245) b!4880259))

(assert (= (and b!4880259 res!2083242) b!4880261))

(assert (= (and b!4880261 res!2083243) b!4880257))

(assert (= (and b!4880257 res!2083246) b!4880262))

(declare-fun m!5883718 () Bool)

(assert (=> b!4880261 m!5883718))

(declare-fun m!5883720 () Bool)

(assert (=> b!4880259 m!5883720))

(declare-fun m!5883722 () Bool)

(assert (=> b!4880260 m!5883722))

(declare-fun m!5883724 () Bool)

(assert (=> b!4880260 m!5883724))

(assert (=> b!4880258 m!5883722))

(assert (=> b!4880258 m!5883724))

(declare-fun m!5883726 () Bool)

(assert (=> b!4880262 m!5883726))

(declare-fun m!5883728 () Bool)

(assert (=> b!4880257 m!5883728))

(assert (=> b!4880152 d!1568210))

(declare-fun d!1568212 () Bool)

(declare-fun c!830039 () Bool)

(assert (=> d!1568212 (= c!830039 ((_ is Node!14618) (left!40713 (right!41043 (right!41043 t!4585)))))))

(declare-fun e!3050027 () Bool)

(assert (=> d!1568212 (= (inv!72024 (left!40713 (right!41043 (right!41043 t!4585)))) e!3050027)))

(declare-fun b!4880263 () Bool)

(assert (=> b!4880263 (= e!3050027 (inv!72027 (left!40713 (right!41043 (right!41043 t!4585)))))))

(declare-fun b!4880264 () Bool)

(declare-fun e!3050028 () Bool)

(assert (=> b!4880264 (= e!3050027 e!3050028)))

(declare-fun res!2083248 () Bool)

(assert (=> b!4880264 (= res!2083248 (not ((_ is Leaf!24360) (left!40713 (right!41043 (right!41043 t!4585))))))))

(assert (=> b!4880264 (=> res!2083248 e!3050028)))

(declare-fun b!4880265 () Bool)

(assert (=> b!4880265 (= e!3050028 (inv!72028 (left!40713 (right!41043 (right!41043 t!4585)))))))

(assert (= (and d!1568212 c!830039) b!4880263))

(assert (= (and d!1568212 (not c!830039)) b!4880264))

(assert (= (and b!4880264 (not res!2083248)) b!4880265))

(declare-fun m!5883730 () Bool)

(assert (=> b!4880263 m!5883730))

(declare-fun m!5883732 () Bool)

(assert (=> b!4880265 m!5883732))

(assert (=> b!4880212 d!1568212))

(declare-fun d!1568214 () Bool)

(declare-fun c!830040 () Bool)

(assert (=> d!1568214 (= c!830040 ((_ is Node!14618) (right!41043 (right!41043 (right!41043 t!4585)))))))

(declare-fun e!3050029 () Bool)

(assert (=> d!1568214 (= (inv!72024 (right!41043 (right!41043 (right!41043 t!4585)))) e!3050029)))

(declare-fun b!4880266 () Bool)

(assert (=> b!4880266 (= e!3050029 (inv!72027 (right!41043 (right!41043 (right!41043 t!4585)))))))

(declare-fun b!4880267 () Bool)

(declare-fun e!3050030 () Bool)

(assert (=> b!4880267 (= e!3050029 e!3050030)))

(declare-fun res!2083249 () Bool)

(assert (=> b!4880267 (= res!2083249 (not ((_ is Leaf!24360) (right!41043 (right!41043 (right!41043 t!4585))))))))

(assert (=> b!4880267 (=> res!2083249 e!3050030)))

(declare-fun b!4880268 () Bool)

(assert (=> b!4880268 (= e!3050030 (inv!72028 (right!41043 (right!41043 (right!41043 t!4585)))))))

(assert (= (and d!1568214 c!830040) b!4880266))

(assert (= (and d!1568214 (not c!830040)) b!4880267))

(assert (= (and b!4880267 (not res!2083249)) b!4880268))

(declare-fun m!5883734 () Bool)

(assert (=> b!4880266 m!5883734))

(declare-fun m!5883736 () Bool)

(assert (=> b!4880268 m!5883736))

(assert (=> b!4880212 d!1568214))

(assert (=> d!1568068 d!1568066))

(declare-fun d!1568216 () Bool)

(assert (=> d!1568216 (= (inv!72023 _$14!1600) (<= (size!36961 (innerList!14706 _$14!1600)) 2147483647))))

(declare-fun bs!1175350 () Bool)

(assert (= bs!1175350 d!1568216))

(declare-fun m!5883738 () Bool)

(assert (=> bs!1175350 m!5883738))

(assert (=> d!1568068 d!1568216))

(declare-fun d!1568218 () Bool)

(declare-fun lt!1999242 () Int)

(assert (=> d!1568218 (>= lt!1999242 0)))

(declare-fun e!3050031 () Int)

(assert (=> d!1568218 (= lt!1999242 e!3050031)))

(declare-fun c!830041 () Bool)

(assert (=> d!1568218 (= c!830041 ((_ is Nil!56033) (list!17567 (xs!17928 t!4585))))))

(assert (=> d!1568218 (= (size!36961 (list!17567 (xs!17928 t!4585))) lt!1999242)))

(declare-fun b!4880269 () Bool)

(assert (=> b!4880269 (= e!3050031 0)))

(declare-fun b!4880270 () Bool)

(assert (=> b!4880270 (= e!3050031 (+ 1 (size!36961 (t!364793 (list!17567 (xs!17928 t!4585))))))))

(assert (= (and d!1568218 c!830041) b!4880269))

(assert (= (and d!1568218 (not c!830041)) b!4880270))

(declare-fun m!5883740 () Bool)

(assert (=> b!4880270 m!5883740))

(assert (=> d!1568114 d!1568218))

(assert (=> d!1568114 d!1568112))

(declare-fun d!1568220 () Bool)

(declare-fun lt!1999243 () Int)

(assert (=> d!1568220 (>= lt!1999243 0)))

(declare-fun e!3050032 () Int)

(assert (=> d!1568220 (= lt!1999243 e!3050032)))

(declare-fun c!830042 () Bool)

(assert (=> d!1568220 (= c!830042 ((_ is Nil!56033) (list!17567 (xs!17928 (right!41043 t!4585)))))))

(assert (=> d!1568220 (= (size!36961 (list!17567 (xs!17928 (right!41043 t!4585)))) lt!1999243)))

(declare-fun b!4880271 () Bool)

(assert (=> b!4880271 (= e!3050032 0)))

(declare-fun b!4880272 () Bool)

(assert (=> b!4880272 (= e!3050032 (+ 1 (size!36961 (t!364793 (list!17567 (xs!17928 (right!41043 t!4585)))))))))

(assert (= (and d!1568220 c!830042) b!4880271))

(assert (= (and d!1568220 (not c!830042)) b!4880272))

(declare-fun m!5883742 () Bool)

(assert (=> b!4880272 m!5883742))

(assert (=> b!4880207 d!1568220))

(declare-fun d!1568222 () Bool)

(assert (=> d!1568222 (= (list!17567 (xs!17928 (right!41043 t!4585))) (innerList!14706 (xs!17928 (right!41043 t!4585))))))

(assert (=> b!4880207 d!1568222))

(declare-fun d!1568224 () Bool)

(declare-fun lt!1999244 () Bool)

(assert (=> d!1568224 (= lt!1999244 (isEmpty!30033 (list!17565 (left!40713 (left!40713 lt!1999152)))))))

(assert (=> d!1568224 (= lt!1999244 (= (size!36963 (left!40713 (left!40713 lt!1999152))) 0))))

(assert (=> d!1568224 (= (isEmpty!30031 (left!40713 (left!40713 lt!1999152))) lt!1999244)))

(declare-fun bs!1175351 () Bool)

(assert (= bs!1175351 d!1568224))

(assert (=> bs!1175351 m!5883422))

(assert (=> bs!1175351 m!5883422))

(declare-fun m!5883744 () Bool)

(assert (=> bs!1175351 m!5883744))

(declare-fun m!5883746 () Bool)

(assert (=> bs!1175351 m!5883746))

(assert (=> b!4880111 d!1568224))

(declare-fun b!4880275 () Bool)

(declare-fun e!3050034 () Conc!14618)

(assert (=> b!4880275 (= e!3050034 (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(declare-fun b!4880276 () Bool)

(assert (=> b!4880276 (= e!3050034 (Node!14618 (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) (+ (size!36963 (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) (size!36963 (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) (+ (max!0 (height!1951 (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) (height!1951 (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) 1)))))

(declare-fun b!4880273 () Bool)

(declare-fun e!3050033 () Conc!14618)

(assert (=> b!4880273 (= e!3050033 (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun lt!1999245 () Conc!14618)

(declare-fun d!1568226 () Bool)

(assert (=> d!1568226 (= (list!17565 lt!1999245) (++!12218 (list!17565 (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) (list!17565 (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))

(assert (=> d!1568226 (= lt!1999245 e!3050033)))

(declare-fun c!830043 () Bool)

(assert (=> d!1568226 (= c!830043 (= (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) Empty!14618))))

(assert (=> d!1568226 (= (<>!375 (ite c!830017 (ite c!830011 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) call!338791) (ite c!830015 lt!1999225 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) lt!1999245)))

(declare-fun b!4880274 () Bool)

(assert (=> b!4880274 (= e!3050033 e!3050034)))

(declare-fun c!830044 () Bool)

(assert (=> b!4880274 (= c!830044 (= (ite c!830017 (ite c!830011 call!338791 lt!1999224) (ite c!830015 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) Empty!14618))))

(assert (= (and d!1568226 c!830043) b!4880273))

(assert (= (and d!1568226 (not c!830043)) b!4880274))

(assert (= (and b!4880274 c!830044) b!4880275))

(assert (= (and b!4880274 (not c!830044)) b!4880276))

(declare-fun m!5883748 () Bool)

(assert (=> b!4880276 m!5883748))

(declare-fun m!5883750 () Bool)

(assert (=> b!4880276 m!5883750))

(declare-fun m!5883752 () Bool)

(assert (=> b!4880276 m!5883752))

(declare-fun m!5883754 () Bool)

(assert (=> b!4880276 m!5883754))

(assert (=> b!4880276 m!5883752))

(declare-fun m!5883756 () Bool)

(assert (=> b!4880276 m!5883756))

(assert (=> b!4880276 m!5883750))

(declare-fun m!5883758 () Bool)

(assert (=> d!1568226 m!5883758))

(declare-fun m!5883760 () Bool)

(assert (=> d!1568226 m!5883760))

(declare-fun m!5883762 () Bool)

(assert (=> d!1568226 m!5883762))

(assert (=> d!1568226 m!5883760))

(assert (=> d!1568226 m!5883762))

(declare-fun m!5883764 () Bool)

(assert (=> d!1568226 m!5883764))

(assert (=> bm!338782 d!1568226))

(assert (=> b!4879942 d!1568162))

(declare-fun bm!338806 () Bool)

(declare-fun call!338811 () List!56157)

(assert (=> bm!338806 (= call!338811 (++!12218 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585)))) (list!17565 (right!41043 (left!40713 t!4585)))))))

(declare-fun bm!338807 () Bool)

(declare-fun call!338813 () List!56157)

(assert (=> bm!338807 (= call!338813 (++!12218 (list!17565 (right!41043 (left!40713 t!4585))) (list!17565 (right!41043 t!4585))))))

(declare-fun bm!338808 () Bool)

(declare-fun call!338812 () List!56157)

(assert (=> bm!338808 (= call!338812 (++!12218 call!338811 (list!17565 (right!41043 t!4585))))))

(declare-fun d!1568228 () Bool)

(declare-fun e!3050035 () Bool)

(assert (=> d!1568228 e!3050035))

(declare-fun c!830045 () Bool)

(assert (=> d!1568228 (= c!830045 ((_ is Nil!56033) (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585))))))))

(assert (=> d!1568228 (= (appendAssoc!289 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585)))) (list!17565 (right!41043 (left!40713 t!4585))) (list!17565 (right!41043 t!4585))) true)))

(declare-fun b!4880277 () Bool)

(declare-fun call!338814 () List!56157)

(assert (=> b!4880277 (= e!3050035 (= call!338812 call!338814))))

(declare-fun lt!1999246 () Bool)

(assert (=> b!4880277 (= lt!1999246 (appendAssoc!289 (t!364793 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585))))) (list!17565 (right!41043 (left!40713 t!4585))) (list!17565 (right!41043 t!4585))))))

(declare-fun bm!338809 () Bool)

(assert (=> bm!338809 (= call!338814 (++!12218 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585)))) call!338813))))

(declare-fun b!4880278 () Bool)

(assert (=> b!4880278 (= e!3050035 (= call!338812 call!338814))))

(assert (= (and d!1568228 c!830045) b!4880278))

(assert (= (and d!1568228 (not c!830045)) b!4880277))

(assert (= (or b!4880278 b!4880277) bm!338806))

(assert (= (or b!4880278 b!4880277) bm!338807))

(assert (= (or b!4880278 b!4880277) bm!338809))

(assert (= (or b!4880278 b!4880277) bm!338808))

(assert (=> bm!338806 m!5883160))

(assert (=> bm!338806 m!5883154))

(declare-fun m!5883766 () Bool)

(assert (=> bm!338806 m!5883766))

(assert (=> bm!338808 m!5882920))

(declare-fun m!5883768 () Bool)

(assert (=> bm!338808 m!5883768))

(assert (=> bm!338807 m!5883154))

(assert (=> bm!338807 m!5882920))

(declare-fun m!5883770 () Bool)

(assert (=> bm!338807 m!5883770))

(assert (=> bm!338809 m!5883160))

(declare-fun m!5883772 () Bool)

(assert (=> bm!338809 m!5883772))

(assert (=> b!4880277 m!5883154))

(assert (=> b!4880277 m!5882920))

(declare-fun m!5883774 () Bool)

(assert (=> b!4880277 m!5883774))

(assert (=> b!4879942 d!1568228))

(assert (=> b!4879942 d!1568106))

(declare-fun d!1568230 () Bool)

(declare-fun c!830046 () Bool)

(assert (=> d!1568230 (= c!830046 ((_ is Empty!14618) (left!40713 (left!40713 t!4585))))))

(declare-fun e!3050036 () List!56157)

(assert (=> d!1568230 (= (list!17565 (left!40713 (left!40713 t!4585))) e!3050036)))

(declare-fun b!4880279 () Bool)

(assert (=> b!4880279 (= e!3050036 Nil!56033)))

(declare-fun b!4880281 () Bool)

(declare-fun e!3050037 () List!56157)

(assert (=> b!4880281 (= e!3050037 (list!17567 (xs!17928 (left!40713 (left!40713 t!4585)))))))

(declare-fun b!4880282 () Bool)

(assert (=> b!4880282 (= e!3050037 (++!12218 (list!17565 (left!40713 (left!40713 (left!40713 t!4585)))) (list!17565 (right!41043 (left!40713 (left!40713 t!4585))))))))

(declare-fun b!4880280 () Bool)

(assert (=> b!4880280 (= e!3050036 e!3050037)))

(declare-fun c!830047 () Bool)

(assert (=> b!4880280 (= c!830047 ((_ is Leaf!24360) (left!40713 (left!40713 t!4585))))))

(assert (= (and d!1568230 c!830046) b!4880279))

(assert (= (and d!1568230 (not c!830046)) b!4880280))

(assert (= (and b!4880280 c!830047) b!4880281))

(assert (= (and b!4880280 (not c!830047)) b!4880282))

(declare-fun m!5883776 () Bool)

(assert (=> b!4880281 m!5883776))

(declare-fun m!5883778 () Bool)

(assert (=> b!4880282 m!5883778))

(declare-fun m!5883780 () Bool)

(assert (=> b!4880282 m!5883780))

(assert (=> b!4880282 m!5883778))

(assert (=> b!4880282 m!5883780))

(declare-fun m!5883782 () Bool)

(assert (=> b!4880282 m!5883782))

(assert (=> b!4879942 d!1568230))

(declare-fun d!1568232 () Bool)

(declare-fun c!830048 () Bool)

(assert (=> d!1568232 (= c!830048 ((_ is Empty!14618) (right!41043 (left!40713 t!4585))))))

(declare-fun e!3050038 () List!56157)

(assert (=> d!1568232 (= (list!17565 (right!41043 (left!40713 t!4585))) e!3050038)))

(declare-fun b!4880283 () Bool)

(assert (=> b!4880283 (= e!3050038 Nil!56033)))

(declare-fun b!4880285 () Bool)

(declare-fun e!3050039 () List!56157)

(assert (=> b!4880285 (= e!3050039 (list!17567 (xs!17928 (right!41043 (left!40713 t!4585)))))))

(declare-fun b!4880286 () Bool)

(assert (=> b!4880286 (= e!3050039 (++!12218 (list!17565 (left!40713 (right!41043 (left!40713 t!4585)))) (list!17565 (right!41043 (right!41043 (left!40713 t!4585))))))))

(declare-fun b!4880284 () Bool)

(assert (=> b!4880284 (= e!3050038 e!3050039)))

(declare-fun c!830049 () Bool)

(assert (=> b!4880284 (= c!830049 ((_ is Leaf!24360) (right!41043 (left!40713 t!4585))))))

(assert (= (and d!1568232 c!830048) b!4880283))

(assert (= (and d!1568232 (not c!830048)) b!4880284))

(assert (= (and b!4880284 c!830049) b!4880285))

(assert (= (and b!4880284 (not c!830049)) b!4880286))

(declare-fun m!5883784 () Bool)

(assert (=> b!4880285 m!5883784))

(declare-fun m!5883786 () Bool)

(assert (=> b!4880286 m!5883786))

(declare-fun m!5883788 () Bool)

(assert (=> b!4880286 m!5883788))

(assert (=> b!4880286 m!5883786))

(assert (=> b!4880286 m!5883788))

(declare-fun m!5883790 () Bool)

(assert (=> b!4880286 m!5883790))

(assert (=> b!4879942 d!1568232))

(declare-fun b!4880287 () Bool)

(declare-fun e!3050041 () List!56157)

(assert (=> b!4880287 (= e!3050041 (list!17565 (left!40713 (left!40713 t!4585))))))

(declare-fun b!4880289 () Bool)

(declare-fun res!2083250 () Bool)

(declare-fun e!3050040 () Bool)

(assert (=> b!4880289 (=> (not res!2083250) (not e!3050040))))

(declare-fun lt!1999247 () List!56157)

(assert (=> b!4880289 (= res!2083250 (= (size!36961 lt!1999247) (+ (size!36961 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (size!36961 (list!17565 (left!40713 (left!40713 t!4585)))))))))

(declare-fun b!4880290 () Bool)

(assert (=> b!4880290 (= e!3050040 (or (not (= (list!17565 (left!40713 (left!40713 t!4585))) Nil!56033)) (= lt!1999247 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun d!1568234 () Bool)

(assert (=> d!1568234 e!3050040))

(declare-fun res!2083251 () Bool)

(assert (=> d!1568234 (=> (not res!2083251) (not e!3050040))))

(assert (=> d!1568234 (= res!2083251 (= (content!10010 lt!1999247) ((_ map or) (content!10010 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (content!10010 (list!17565 (left!40713 (left!40713 t!4585)))))))))

(assert (=> d!1568234 (= lt!1999247 e!3050041)))

(declare-fun c!830050 () Bool)

(assert (=> d!1568234 (= c!830050 ((_ is Nil!56033) (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568234 (= (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585)))) lt!1999247)))

(declare-fun b!4880288 () Bool)

(assert (=> b!4880288 (= e!3050041 (Cons!56033 (h!62481 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (++!12218 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (left!40713 t!4585))))))))

(assert (= (and d!1568234 c!830050) b!4880287))

(assert (= (and d!1568234 (not c!830050)) b!4880288))

(assert (= (and d!1568234 res!2083251) b!4880289))

(assert (= (and b!4880289 res!2083250) b!4880290))

(declare-fun m!5883792 () Bool)

(assert (=> b!4880289 m!5883792))

(assert (=> b!4880289 m!5882882))

(assert (=> b!4880289 m!5883548))

(assert (=> b!4880289 m!5883152))

(declare-fun m!5883794 () Bool)

(assert (=> b!4880289 m!5883794))

(declare-fun m!5883796 () Bool)

(assert (=> d!1568234 m!5883796))

(assert (=> d!1568234 m!5882882))

(assert (=> d!1568234 m!5883554))

(assert (=> d!1568234 m!5883152))

(declare-fun m!5883798 () Bool)

(assert (=> d!1568234 m!5883798))

(assert (=> b!4880288 m!5883152))

(declare-fun m!5883800 () Bool)

(assert (=> b!4880288 m!5883800))

(assert (=> b!4879942 d!1568234))

(declare-fun b!4880291 () Bool)

(declare-fun res!2083256 () Bool)

(declare-fun e!3050042 () Bool)

(assert (=> b!4880291 (=> (not res!2083256) (not e!3050042))))

(assert (=> b!4880291 (= res!2083256 (not (isEmpty!30031 (left!40713 (right!41043 (left!40713 lt!1999152))))))))

(declare-fun b!4880292 () Bool)

(declare-fun e!3050043 () Bool)

(assert (=> b!4880292 (= e!3050043 e!3050042)))

(declare-fun res!2083254 () Bool)

(assert (=> b!4880292 (=> (not res!2083254) (not e!3050042))))

(assert (=> b!4880292 (= res!2083254 (<= (- 1) (- (height!1951 (left!40713 (right!41043 (left!40713 lt!1999152)))) (height!1951 (right!41043 (right!41043 (left!40713 lt!1999152)))))))))

(declare-fun b!4880293 () Bool)

(declare-fun res!2083252 () Bool)

(assert (=> b!4880293 (=> (not res!2083252) (not e!3050042))))

(assert (=> b!4880293 (= res!2083252 (isBalanced!3980 (left!40713 (right!41043 (left!40713 lt!1999152)))))))

(declare-fun d!1568236 () Bool)

(declare-fun res!2083257 () Bool)

(assert (=> d!1568236 (=> res!2083257 e!3050043)))

(assert (=> d!1568236 (= res!2083257 (not ((_ is Node!14618) (right!41043 (left!40713 lt!1999152)))))))

(assert (=> d!1568236 (= (isBalanced!3980 (right!41043 (left!40713 lt!1999152))) e!3050043)))

(declare-fun b!4880294 () Bool)

(declare-fun res!2083255 () Bool)

(assert (=> b!4880294 (=> (not res!2083255) (not e!3050042))))

(assert (=> b!4880294 (= res!2083255 (<= (- (height!1951 (left!40713 (right!41043 (left!40713 lt!1999152)))) (height!1951 (right!41043 (right!41043 (left!40713 lt!1999152))))) 1))))

(declare-fun b!4880295 () Bool)

(declare-fun res!2083253 () Bool)

(assert (=> b!4880295 (=> (not res!2083253) (not e!3050042))))

(assert (=> b!4880295 (= res!2083253 (isBalanced!3980 (right!41043 (right!41043 (left!40713 lt!1999152)))))))

(declare-fun b!4880296 () Bool)

(assert (=> b!4880296 (= e!3050042 (not (isEmpty!30031 (right!41043 (right!41043 (left!40713 lt!1999152))))))))

(assert (= (and d!1568236 (not res!2083257)) b!4880292))

(assert (= (and b!4880292 res!2083254) b!4880294))

(assert (= (and b!4880294 res!2083255) b!4880293))

(assert (= (and b!4880293 res!2083252) b!4880295))

(assert (= (and b!4880295 res!2083253) b!4880291))

(assert (= (and b!4880291 res!2083256) b!4880296))

(declare-fun m!5883802 () Bool)

(assert (=> b!4880295 m!5883802))

(declare-fun m!5883804 () Bool)

(assert (=> b!4880293 m!5883804))

(declare-fun m!5883806 () Bool)

(assert (=> b!4880294 m!5883806))

(declare-fun m!5883808 () Bool)

(assert (=> b!4880294 m!5883808))

(assert (=> b!4880292 m!5883806))

(assert (=> b!4880292 m!5883808))

(declare-fun m!5883810 () Bool)

(assert (=> b!4880296 m!5883810))

(declare-fun m!5883812 () Bool)

(assert (=> b!4880291 m!5883812))

(assert (=> b!4880115 d!1568236))

(declare-fun d!1568238 () Bool)

(declare-fun c!830051 () Bool)

(assert (=> d!1568238 (= c!830051 ((_ is Empty!14618) lt!1999223))))

(declare-fun e!3050044 () List!56157)

(assert (=> d!1568238 (= (list!17565 lt!1999223) e!3050044)))

(declare-fun b!4880297 () Bool)

(assert (=> b!4880297 (= e!3050044 Nil!56033)))

(declare-fun b!4880299 () Bool)

(declare-fun e!3050045 () List!56157)

(assert (=> b!4880299 (= e!3050045 (list!17567 (xs!17928 lt!1999223)))))

(declare-fun b!4880300 () Bool)

(assert (=> b!4880300 (= e!3050045 (++!12218 (list!17565 (left!40713 lt!1999223)) (list!17565 (right!41043 lt!1999223))))))

(declare-fun b!4880298 () Bool)

(assert (=> b!4880298 (= e!3050044 e!3050045)))

(declare-fun c!830052 () Bool)

(assert (=> b!4880298 (= c!830052 ((_ is Leaf!24360) lt!1999223))))

(assert (= (and d!1568238 c!830051) b!4880297))

(assert (= (and d!1568238 (not c!830051)) b!4880298))

(assert (= (and b!4880298 c!830052) b!4880299))

(assert (= (and b!4880298 (not c!830052)) b!4880300))

(declare-fun m!5883814 () Bool)

(assert (=> b!4880299 m!5883814))

(declare-fun m!5883816 () Bool)

(assert (=> b!4880300 m!5883816))

(declare-fun m!5883818 () Bool)

(assert (=> b!4880300 m!5883818))

(assert (=> b!4880300 m!5883816))

(assert (=> b!4880300 m!5883818))

(declare-fun m!5883820 () Bool)

(assert (=> b!4880300 m!5883820))

(assert (=> b!4880163 d!1568238))

(declare-fun e!3050047 () List!56157)

(declare-fun b!4880301 () Bool)

(assert (=> b!4880301 (= e!3050047 (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))

(declare-fun b!4880303 () Bool)

(declare-fun res!2083258 () Bool)

(declare-fun e!3050046 () Bool)

(assert (=> b!4880303 (=> (not res!2083258) (not e!3050046))))

(declare-fun lt!1999248 () List!56157)

(assert (=> b!4880303 (= res!2083258 (= (size!36961 lt!1999248) (+ (size!36961 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (size!36961 (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(declare-fun b!4880304 () Bool)

(assert (=> b!4880304 (= e!3050046 (or (not (= (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) Nil!56033)) (= lt!1999248 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun d!1568240 () Bool)

(assert (=> d!1568240 e!3050046))

(declare-fun res!2083259 () Bool)

(assert (=> d!1568240 (=> (not res!2083259) (not e!3050046))))

(assert (=> d!1568240 (= res!2083259 (= (content!10010 lt!1999248) ((_ map or) (content!10010 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (content!10010 (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(assert (=> d!1568240 (= lt!1999248 e!3050047)))

(declare-fun c!830053 () Bool)

(assert (=> d!1568240 (= c!830053 ((_ is Nil!56033) (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568240 (= (++!12218 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) lt!1999248)))

(declare-fun b!4880302 () Bool)

(assert (=> b!4880302 (= e!3050047 (Cons!56033 (h!62481 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (++!12218 (t!364793 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(assert (= (and d!1568240 c!830053) b!4880301))

(assert (= (and d!1568240 (not c!830053)) b!4880302))

(assert (= (and d!1568240 res!2083259) b!4880303))

(assert (= (and b!4880303 res!2083258) b!4880304))

(declare-fun m!5883822 () Bool)

(assert (=> b!4880303 m!5883822))

(assert (=> b!4880303 m!5883532))

(declare-fun m!5883824 () Bool)

(assert (=> b!4880303 m!5883824))

(assert (=> b!4880303 m!5883534))

(declare-fun m!5883826 () Bool)

(assert (=> b!4880303 m!5883826))

(declare-fun m!5883828 () Bool)

(assert (=> d!1568240 m!5883828))

(assert (=> d!1568240 m!5883532))

(declare-fun m!5883830 () Bool)

(assert (=> d!1568240 m!5883830))

(assert (=> d!1568240 m!5883534))

(declare-fun m!5883832 () Bool)

(assert (=> d!1568240 m!5883832))

(assert (=> b!4880302 m!5883534))

(declare-fun m!5883834 () Bool)

(assert (=> b!4880302 m!5883834))

(assert (=> b!4880163 d!1568240))

(declare-fun c!830054 () Bool)

(declare-fun d!1568242 () Bool)

(assert (=> d!1568242 (= c!830054 ((_ is Empty!14618) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun e!3050048 () List!56157)

(assert (=> d!1568242 (= (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) e!3050048)))

(declare-fun b!4880305 () Bool)

(assert (=> b!4880305 (= e!3050048 Nil!56033)))

(declare-fun b!4880307 () Bool)

(declare-fun e!3050049 () List!56157)

(assert (=> b!4880307 (= e!3050049 (list!17567 (xs!17928 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4880308 () Bool)

(assert (=> b!4880308 (= e!3050049 (++!12218 (list!17565 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880306 () Bool)

(assert (=> b!4880306 (= e!3050048 e!3050049)))

(declare-fun c!830055 () Bool)

(assert (=> b!4880306 (= c!830055 ((_ is Leaf!24360) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (= (and d!1568242 c!830054) b!4880305))

(assert (= (and d!1568242 (not c!830054)) b!4880306))

(assert (= (and b!4880306 c!830055) b!4880307))

(assert (= (and b!4880306 (not c!830055)) b!4880308))

(declare-fun m!5883836 () Bool)

(assert (=> b!4880307 m!5883836))

(declare-fun m!5883838 () Bool)

(assert (=> b!4880308 m!5883838))

(declare-fun m!5883840 () Bool)

(assert (=> b!4880308 m!5883840))

(assert (=> b!4880308 m!5883838))

(assert (=> b!4880308 m!5883840))

(declare-fun m!5883842 () Bool)

(assert (=> b!4880308 m!5883842))

(assert (=> b!4880163 d!1568242))

(declare-fun c!830056 () Bool)

(declare-fun d!1568244 () Bool)

(assert (=> d!1568244 (= c!830056 ((_ is Empty!14618) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))

(declare-fun e!3050050 () List!56157)

(assert (=> d!1568244 (= (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) e!3050050)))

(declare-fun b!4880309 () Bool)

(assert (=> b!4880309 (= e!3050050 Nil!56033)))

(declare-fun e!3050051 () List!56157)

(declare-fun b!4880311 () Bool)

(assert (=> b!4880311 (= e!3050051 (list!17567 (xs!17928 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(declare-fun b!4880312 () Bool)

(assert (=> b!4880312 (= e!3050051 (++!12218 (list!17565 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (list!17565 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun b!4880310 () Bool)

(assert (=> b!4880310 (= e!3050050 e!3050051)))

(declare-fun c!830057 () Bool)

(assert (=> b!4880310 (= c!830057 ((_ is Leaf!24360) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))

(assert (= (and d!1568244 c!830056) b!4880309))

(assert (= (and d!1568244 (not c!830056)) b!4880310))

(assert (= (and b!4880310 c!830057) b!4880311))

(assert (= (and b!4880310 (not c!830057)) b!4880312))

(declare-fun m!5883844 () Bool)

(assert (=> b!4880311 m!5883844))

(declare-fun m!5883846 () Bool)

(assert (=> b!4880312 m!5883846))

(declare-fun m!5883848 () Bool)

(assert (=> b!4880312 m!5883848))

(assert (=> b!4880312 m!5883846))

(assert (=> b!4880312 m!5883848))

(declare-fun m!5883850 () Bool)

(assert (=> b!4880312 m!5883850))

(assert (=> b!4880163 d!1568244))

(declare-fun d!1568246 () Bool)

(assert (=> d!1568246 (= (isEmpty!30033 (list!17565 (left!40713 t!4585))) ((_ is Nil!56033) (list!17565 (left!40713 t!4585))))))

(assert (=> d!1568126 d!1568246))

(assert (=> d!1568126 d!1568100))

(declare-fun d!1568248 () Bool)

(declare-fun lt!1999249 () Int)

(assert (=> d!1568248 (= lt!1999249 (size!36961 (list!17565 (left!40713 t!4585))))))

(assert (=> d!1568248 (= lt!1999249 (ite ((_ is Empty!14618) (left!40713 t!4585)) 0 (ite ((_ is Leaf!24360) (left!40713 t!4585)) (csize!29467 (left!40713 t!4585)) (csize!29466 (left!40713 t!4585)))))))

(assert (=> d!1568248 (= (size!36963 (left!40713 t!4585)) lt!1999249)))

(declare-fun bs!1175352 () Bool)

(assert (= bs!1175352 d!1568248))

(assert (=> bs!1175352 m!5882918))

(assert (=> bs!1175352 m!5882918))

(assert (=> bs!1175352 m!5883344))

(assert (=> d!1568126 d!1568248))

(declare-fun b!4880313 () Bool)

(declare-fun res!2083264 () Bool)

(declare-fun e!3050052 () Bool)

(assert (=> b!4880313 (=> (not res!2083264) (not e!3050052))))

(assert (=> b!4880313 (= res!2083264 (not (isEmpty!30031 (left!40713 (left!40713 (left!40713 t!4585))))))))

(declare-fun b!4880314 () Bool)

(declare-fun e!3050053 () Bool)

(assert (=> b!4880314 (= e!3050053 e!3050052)))

(declare-fun res!2083262 () Bool)

(assert (=> b!4880314 (=> (not res!2083262) (not e!3050052))))

(assert (=> b!4880314 (= res!2083262 (<= (- 1) (- (height!1951 (left!40713 (left!40713 (left!40713 t!4585)))) (height!1951 (right!41043 (left!40713 (left!40713 t!4585)))))))))

(declare-fun b!4880315 () Bool)

(declare-fun res!2083260 () Bool)

(assert (=> b!4880315 (=> (not res!2083260) (not e!3050052))))

(assert (=> b!4880315 (= res!2083260 (isBalanced!3980 (left!40713 (left!40713 (left!40713 t!4585)))))))

(declare-fun d!1568250 () Bool)

(declare-fun res!2083265 () Bool)

(assert (=> d!1568250 (=> res!2083265 e!3050053)))

(assert (=> d!1568250 (= res!2083265 (not ((_ is Node!14618) (left!40713 (left!40713 t!4585)))))))

(assert (=> d!1568250 (= (isBalanced!3980 (left!40713 (left!40713 t!4585))) e!3050053)))

(declare-fun b!4880316 () Bool)

(declare-fun res!2083263 () Bool)

(assert (=> b!4880316 (=> (not res!2083263) (not e!3050052))))

(assert (=> b!4880316 (= res!2083263 (<= (- (height!1951 (left!40713 (left!40713 (left!40713 t!4585)))) (height!1951 (right!41043 (left!40713 (left!40713 t!4585))))) 1))))

(declare-fun b!4880317 () Bool)

(declare-fun res!2083261 () Bool)

(assert (=> b!4880317 (=> (not res!2083261) (not e!3050052))))

(assert (=> b!4880317 (= res!2083261 (isBalanced!3980 (right!41043 (left!40713 (left!40713 t!4585)))))))

(declare-fun b!4880318 () Bool)

(assert (=> b!4880318 (= e!3050052 (not (isEmpty!30031 (right!41043 (left!40713 (left!40713 t!4585))))))))

(assert (= (and d!1568250 (not res!2083265)) b!4880314))

(assert (= (and b!4880314 res!2083262) b!4880316))

(assert (= (and b!4880316 res!2083263) b!4880315))

(assert (= (and b!4880315 res!2083260) b!4880317))

(assert (= (and b!4880317 res!2083261) b!4880313))

(assert (= (and b!4880313 res!2083264) b!4880318))

(declare-fun m!5883852 () Bool)

(assert (=> b!4880317 m!5883852))

(declare-fun m!5883854 () Bool)

(assert (=> b!4880315 m!5883854))

(declare-fun m!5883856 () Bool)

(assert (=> b!4880316 m!5883856))

(declare-fun m!5883858 () Bool)

(assert (=> b!4880316 m!5883858))

(assert (=> b!4880314 m!5883856))

(assert (=> b!4880314 m!5883858))

(declare-fun m!5883860 () Bool)

(assert (=> b!4880318 m!5883860))

(declare-fun m!5883862 () Bool)

(assert (=> b!4880313 m!5883862))

(assert (=> b!4880203 d!1568250))

(declare-fun b!4880319 () Bool)

(declare-fun e!3050055 () List!56157)

(assert (=> b!4880319 (= e!3050055 (list!17565 (right!41043 lt!1999176)))))

(declare-fun b!4880321 () Bool)

(declare-fun res!2083266 () Bool)

(declare-fun e!3050054 () Bool)

(assert (=> b!4880321 (=> (not res!2083266) (not e!3050054))))

(declare-fun lt!1999250 () List!56157)

(assert (=> b!4880321 (= res!2083266 (= (size!36961 lt!1999250) (+ (size!36961 (list!17565 (left!40713 lt!1999176))) (size!36961 (list!17565 (right!41043 lt!1999176))))))))

(declare-fun b!4880322 () Bool)

(assert (=> b!4880322 (= e!3050054 (or (not (= (list!17565 (right!41043 lt!1999176)) Nil!56033)) (= lt!1999250 (list!17565 (left!40713 lt!1999176)))))))

(declare-fun d!1568252 () Bool)

(assert (=> d!1568252 e!3050054))

(declare-fun res!2083267 () Bool)

(assert (=> d!1568252 (=> (not res!2083267) (not e!3050054))))

(assert (=> d!1568252 (= res!2083267 (= (content!10010 lt!1999250) ((_ map or) (content!10010 (list!17565 (left!40713 lt!1999176))) (content!10010 (list!17565 (right!41043 lt!1999176))))))))

(assert (=> d!1568252 (= lt!1999250 e!3050055)))

(declare-fun c!830058 () Bool)

(assert (=> d!1568252 (= c!830058 ((_ is Nil!56033) (list!17565 (left!40713 lt!1999176))))))

(assert (=> d!1568252 (= (++!12218 (list!17565 (left!40713 lt!1999176)) (list!17565 (right!41043 lt!1999176))) lt!1999250)))

(declare-fun b!4880320 () Bool)

(assert (=> b!4880320 (= e!3050055 (Cons!56033 (h!62481 (list!17565 (left!40713 lt!1999176))) (++!12218 (t!364793 (list!17565 (left!40713 lt!1999176))) (list!17565 (right!41043 lt!1999176)))))))

(assert (= (and d!1568252 c!830058) b!4880319))

(assert (= (and d!1568252 (not c!830058)) b!4880320))

(assert (= (and d!1568252 res!2083267) b!4880321))

(assert (= (and b!4880321 res!2083266) b!4880322))

(declare-fun m!5883864 () Bool)

(assert (=> b!4880321 m!5883864))

(assert (=> b!4880321 m!5883540))

(declare-fun m!5883866 () Bool)

(assert (=> b!4880321 m!5883866))

(assert (=> b!4880321 m!5883542))

(declare-fun m!5883868 () Bool)

(assert (=> b!4880321 m!5883868))

(declare-fun m!5883870 () Bool)

(assert (=> d!1568252 m!5883870))

(assert (=> d!1568252 m!5883540))

(declare-fun m!5883872 () Bool)

(assert (=> d!1568252 m!5883872))

(assert (=> d!1568252 m!5883542))

(declare-fun m!5883874 () Bool)

(assert (=> d!1568252 m!5883874))

(assert (=> b!4880320 m!5883542))

(declare-fun m!5883876 () Bool)

(assert (=> b!4880320 m!5883876))

(assert (=> b!4880173 d!1568252))

(declare-fun d!1568254 () Bool)

(declare-fun c!830059 () Bool)

(assert (=> d!1568254 (= c!830059 ((_ is Empty!14618) (left!40713 lt!1999176)))))

(declare-fun e!3050056 () List!56157)

(assert (=> d!1568254 (= (list!17565 (left!40713 lt!1999176)) e!3050056)))

(declare-fun b!4880323 () Bool)

(assert (=> b!4880323 (= e!3050056 Nil!56033)))

(declare-fun b!4880325 () Bool)

(declare-fun e!3050057 () List!56157)

(assert (=> b!4880325 (= e!3050057 (list!17567 (xs!17928 (left!40713 lt!1999176))))))

(declare-fun b!4880326 () Bool)

(assert (=> b!4880326 (= e!3050057 (++!12218 (list!17565 (left!40713 (left!40713 lt!1999176))) (list!17565 (right!41043 (left!40713 lt!1999176)))))))

(declare-fun b!4880324 () Bool)

(assert (=> b!4880324 (= e!3050056 e!3050057)))

(declare-fun c!830060 () Bool)

(assert (=> b!4880324 (= c!830060 ((_ is Leaf!24360) (left!40713 lt!1999176)))))

(assert (= (and d!1568254 c!830059) b!4880323))

(assert (= (and d!1568254 (not c!830059)) b!4880324))

(assert (= (and b!4880324 c!830060) b!4880325))

(assert (= (and b!4880324 (not c!830060)) b!4880326))

(declare-fun m!5883878 () Bool)

(assert (=> b!4880325 m!5883878))

(declare-fun m!5883880 () Bool)

(assert (=> b!4880326 m!5883880))

(declare-fun m!5883882 () Bool)

(assert (=> b!4880326 m!5883882))

(assert (=> b!4880326 m!5883880))

(assert (=> b!4880326 m!5883882))

(declare-fun m!5883884 () Bool)

(assert (=> b!4880326 m!5883884))

(assert (=> b!4880173 d!1568254))

(declare-fun d!1568256 () Bool)

(declare-fun c!830061 () Bool)

(assert (=> d!1568256 (= c!830061 ((_ is Empty!14618) (right!41043 lt!1999176)))))

(declare-fun e!3050058 () List!56157)

(assert (=> d!1568256 (= (list!17565 (right!41043 lt!1999176)) e!3050058)))

(declare-fun b!4880327 () Bool)

(assert (=> b!4880327 (= e!3050058 Nil!56033)))

(declare-fun b!4880329 () Bool)

(declare-fun e!3050059 () List!56157)

(assert (=> b!4880329 (= e!3050059 (list!17567 (xs!17928 (right!41043 lt!1999176))))))

(declare-fun b!4880330 () Bool)

(assert (=> b!4880330 (= e!3050059 (++!12218 (list!17565 (left!40713 (right!41043 lt!1999176))) (list!17565 (right!41043 (right!41043 lt!1999176)))))))

(declare-fun b!4880328 () Bool)

(assert (=> b!4880328 (= e!3050058 e!3050059)))

(declare-fun c!830062 () Bool)

(assert (=> b!4880328 (= c!830062 ((_ is Leaf!24360) (right!41043 lt!1999176)))))

(assert (= (and d!1568256 c!830061) b!4880327))

(assert (= (and d!1568256 (not c!830061)) b!4880328))

(assert (= (and b!4880328 c!830062) b!4880329))

(assert (= (and b!4880328 (not c!830062)) b!4880330))

(declare-fun m!5883886 () Bool)

(assert (=> b!4880329 m!5883886))

(declare-fun m!5883888 () Bool)

(assert (=> b!4880330 m!5883888))

(declare-fun m!5883890 () Bool)

(assert (=> b!4880330 m!5883890))

(assert (=> b!4880330 m!5883888))

(assert (=> b!4880330 m!5883890))

(declare-fun m!5883892 () Bool)

(assert (=> b!4880330 m!5883892))

(assert (=> b!4880173 d!1568256))

(declare-fun d!1568258 () Bool)

(assert (=> d!1568258 (= (inv!72023 (xs!17928 (right!41043 (left!40713 t!4585)))) (<= (size!36961 (innerList!14706 (xs!17928 (right!41043 (left!40713 t!4585))))) 2147483647))))

(declare-fun bs!1175353 () Bool)

(assert (= bs!1175353 d!1568258))

(declare-fun m!5883894 () Bool)

(assert (=> bs!1175353 m!5883894))

(assert (=> b!4880222 d!1568258))

(declare-fun d!1568260 () Bool)

(declare-fun res!2083268 () Bool)

(declare-fun e!3050060 () Bool)

(assert (=> d!1568260 (=> (not res!2083268) (not e!3050060))))

(assert (=> d!1568260 (= res!2083268 (= (csize!29466 (left!40713 (left!40713 t!4585))) (+ (size!36963 (left!40713 (left!40713 (left!40713 t!4585)))) (size!36963 (right!41043 (left!40713 (left!40713 t!4585)))))))))

(assert (=> d!1568260 (= (inv!72027 (left!40713 (left!40713 t!4585))) e!3050060)))

(declare-fun b!4880331 () Bool)

(declare-fun res!2083269 () Bool)

(assert (=> b!4880331 (=> (not res!2083269) (not e!3050060))))

(assert (=> b!4880331 (= res!2083269 (and (not (= (left!40713 (left!40713 (left!40713 t!4585))) Empty!14618)) (not (= (right!41043 (left!40713 (left!40713 t!4585))) Empty!14618))))))

(declare-fun b!4880332 () Bool)

(declare-fun res!2083270 () Bool)

(assert (=> b!4880332 (=> (not res!2083270) (not e!3050060))))

(assert (=> b!4880332 (= res!2083270 (= (cheight!14829 (left!40713 (left!40713 t!4585))) (+ (max!0 (height!1951 (left!40713 (left!40713 (left!40713 t!4585)))) (height!1951 (right!41043 (left!40713 (left!40713 t!4585))))) 1)))))

(declare-fun b!4880333 () Bool)

(assert (=> b!4880333 (= e!3050060 (<= 0 (cheight!14829 (left!40713 (left!40713 t!4585)))))))

(assert (= (and d!1568260 res!2083268) b!4880331))

(assert (= (and b!4880331 res!2083269) b!4880332))

(assert (= (and b!4880332 res!2083270) b!4880333))

(declare-fun m!5883896 () Bool)

(assert (=> d!1568260 m!5883896))

(declare-fun m!5883898 () Bool)

(assert (=> d!1568260 m!5883898))

(assert (=> b!4880332 m!5883856))

(assert (=> b!4880332 m!5883858))

(assert (=> b!4880332 m!5883856))

(assert (=> b!4880332 m!5883858))

(declare-fun m!5883900 () Bool)

(assert (=> b!4880332 m!5883900))

(assert (=> b!4880137 d!1568260))

(declare-fun b!4880334 () Bool)

(declare-fun e!3050062 () List!56157)

(assert (=> b!4880334 (= e!3050062 (list!17565 (right!41043 t!4585)))))

(declare-fun b!4880336 () Bool)

(declare-fun res!2083271 () Bool)

(declare-fun e!3050061 () Bool)

(assert (=> b!4880336 (=> (not res!2083271) (not e!3050061))))

(declare-fun lt!1999251 () List!56157)

(assert (=> b!4880336 (= res!2083271 (= (size!36961 lt!1999251) (+ (size!36961 (t!364793 (list!17565 (left!40713 t!4585)))) (size!36961 (list!17565 (right!41043 t!4585))))))))

(declare-fun b!4880337 () Bool)

(assert (=> b!4880337 (= e!3050061 (or (not (= (list!17565 (right!41043 t!4585)) Nil!56033)) (= lt!1999251 (t!364793 (list!17565 (left!40713 t!4585))))))))

(declare-fun d!1568262 () Bool)

(assert (=> d!1568262 e!3050061))

(declare-fun res!2083272 () Bool)

(assert (=> d!1568262 (=> (not res!2083272) (not e!3050061))))

(assert (=> d!1568262 (= res!2083272 (= (content!10010 lt!1999251) ((_ map or) (content!10010 (t!364793 (list!17565 (left!40713 t!4585)))) (content!10010 (list!17565 (right!41043 t!4585))))))))

(assert (=> d!1568262 (= lt!1999251 e!3050062)))

(declare-fun c!830063 () Bool)

(assert (=> d!1568262 (= c!830063 ((_ is Nil!56033) (t!364793 (list!17565 (left!40713 t!4585)))))))

(assert (=> d!1568262 (= (++!12218 (t!364793 (list!17565 (left!40713 t!4585))) (list!17565 (right!41043 t!4585))) lt!1999251)))

(declare-fun b!4880335 () Bool)

(assert (=> b!4880335 (= e!3050062 (Cons!56033 (h!62481 (t!364793 (list!17565 (left!40713 t!4585)))) (++!12218 (t!364793 (t!364793 (list!17565 (left!40713 t!4585)))) (list!17565 (right!41043 t!4585)))))))

(assert (= (and d!1568262 c!830063) b!4880334))

(assert (= (and d!1568262 (not c!830063)) b!4880335))

(assert (= (and d!1568262 res!2083272) b!4880336))

(assert (= (and b!4880336 res!2083271) b!4880337))

(declare-fun m!5883902 () Bool)

(assert (=> b!4880336 m!5883902))

(declare-fun m!5883904 () Bool)

(assert (=> b!4880336 m!5883904))

(assert (=> b!4880336 m!5882920))

(assert (=> b!4880336 m!5883346))

(declare-fun m!5883906 () Bool)

(assert (=> d!1568262 m!5883906))

(declare-fun m!5883908 () Bool)

(assert (=> d!1568262 m!5883908))

(assert (=> d!1568262 m!5882920))

(assert (=> d!1568262 m!5883352))

(assert (=> b!4880335 m!5882920))

(declare-fun m!5883910 () Bool)

(assert (=> b!4880335 m!5883910))

(assert (=> b!4880061 d!1568262))

(declare-fun d!1568264 () Bool)

(assert (=> d!1568264 (= (inv!72023 (xs!17928 (left!40713 (right!41043 t!4585)))) (<= (size!36961 (innerList!14706 (xs!17928 (left!40713 (right!41043 t!4585))))) 2147483647))))

(declare-fun bs!1175354 () Bool)

(assert (= bs!1175354 d!1568264))

(declare-fun m!5883912 () Bool)

(assert (=> bs!1175354 m!5883912))

(assert (=> b!4880210 d!1568264))

(declare-fun d!1568266 () Bool)

(assert (=> d!1568266 (= (height!1951 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (ite ((_ is Empty!14618) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) 0 (ite ((_ is Leaf!24360) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) 1 (cheight!14829 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (=> b!4879951 d!1568266))

(declare-fun d!1568268 () Bool)

(assert (=> d!1568268 (= (height!1951 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (ite ((_ is Empty!14618) (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) 0 (ite ((_ is Leaf!24360) (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) 1 (cheight!14829 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (=> b!4879951 d!1568268))

(declare-fun d!1568270 () Bool)

(assert (=> d!1568270 (= (height!1951 lt!1999223) (ite ((_ is Empty!14618) lt!1999223) 0 (ite ((_ is Leaf!24360) lt!1999223) 1 (cheight!14829 lt!1999223))))))

(assert (=> b!4880161 d!1568270))

(declare-fun d!1568272 () Bool)

(assert (=> d!1568272 (= (max!0 (height!1951 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (height!1951 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (ite (< (height!1951 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (height!1951 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (height!1951 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (height!1951 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> b!4880161 d!1568272))

(declare-fun d!1568274 () Bool)

(assert (=> d!1568274 (= (height!1951 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite ((_ is Empty!14618) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) 0 (ite ((_ is Leaf!24360) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) 1 (cheight!14829 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (=> b!4880161 d!1568274))

(declare-fun d!1568276 () Bool)

(assert (=> d!1568276 (= (height!1951 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (ite ((_ is Empty!14618) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) 0 (ite ((_ is Leaf!24360) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) 1 (cheight!14829 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(assert (=> b!4880161 d!1568276))

(declare-fun d!1568278 () Bool)

(declare-fun lt!1999252 () Bool)

(assert (=> d!1568278 (= lt!1999252 (isEmpty!30033 (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568278 (= lt!1999252 (= (size!36963 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) 0))))

(assert (=> d!1568278 (= (isEmpty!30031 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999252)))

(declare-fun bs!1175355 () Bool)

(assert (= bs!1175355 d!1568278))

(assert (=> bs!1175355 m!5883148))

(assert (=> bs!1175355 m!5883148))

(declare-fun m!5883914 () Bool)

(assert (=> bs!1175355 m!5883914))

(declare-fun m!5883916 () Bool)

(assert (=> bs!1175355 m!5883916))

(assert (=> b!4879955 d!1568278))

(declare-fun d!1568280 () Bool)

(assert (=> d!1568280 (= (max!0 (height!1951 (left!40713 (left!40713 t!4585))) (height!1951 (right!41043 (left!40713 t!4585)))) (ite (< (height!1951 (left!40713 (left!40713 t!4585))) (height!1951 (right!41043 (left!40713 t!4585)))) (height!1951 (right!41043 (left!40713 t!4585))) (height!1951 (left!40713 (left!40713 t!4585)))))))

(assert (=> b!4880135 d!1568280))

(declare-fun d!1568282 () Bool)

(assert (=> d!1568282 (= (height!1951 (left!40713 (left!40713 t!4585))) (ite ((_ is Empty!14618) (left!40713 (left!40713 t!4585))) 0 (ite ((_ is Leaf!24360) (left!40713 (left!40713 t!4585))) 1 (cheight!14829 (left!40713 (left!40713 t!4585))))))))

(assert (=> b!4880135 d!1568282))

(declare-fun d!1568284 () Bool)

(assert (=> d!1568284 (= (height!1951 (right!41043 (left!40713 t!4585))) (ite ((_ is Empty!14618) (right!41043 (left!40713 t!4585))) 0 (ite ((_ is Leaf!24360) (right!41043 (left!40713 t!4585))) 1 (cheight!14829 (right!41043 (left!40713 t!4585))))))))

(assert (=> b!4880135 d!1568284))

(declare-fun b!4880338 () Bool)

(declare-fun res!2083277 () Bool)

(declare-fun e!3050063 () Bool)

(assert (=> b!4880338 (=> (not res!2083277) (not e!3050063))))

(assert (=> b!4880338 (= res!2083277 (not (isEmpty!30031 (left!40713 (right!41043 (right!41043 lt!1999152))))))))

(declare-fun b!4880339 () Bool)

(declare-fun e!3050064 () Bool)

(assert (=> b!4880339 (= e!3050064 e!3050063)))

(declare-fun res!2083275 () Bool)

(assert (=> b!4880339 (=> (not res!2083275) (not e!3050063))))

(assert (=> b!4880339 (= res!2083275 (<= (- 1) (- (height!1951 (left!40713 (right!41043 (right!41043 lt!1999152)))) (height!1951 (right!41043 (right!41043 (right!41043 lt!1999152)))))))))

(declare-fun b!4880340 () Bool)

(declare-fun res!2083273 () Bool)

(assert (=> b!4880340 (=> (not res!2083273) (not e!3050063))))

(assert (=> b!4880340 (= res!2083273 (isBalanced!3980 (left!40713 (right!41043 (right!41043 lt!1999152)))))))

(declare-fun d!1568286 () Bool)

(declare-fun res!2083278 () Bool)

(assert (=> d!1568286 (=> res!2083278 e!3050064)))

(assert (=> d!1568286 (= res!2083278 (not ((_ is Node!14618) (right!41043 (right!41043 lt!1999152)))))))

(assert (=> d!1568286 (= (isBalanced!3980 (right!41043 (right!41043 lt!1999152))) e!3050064)))

(declare-fun b!4880341 () Bool)

(declare-fun res!2083276 () Bool)

(assert (=> b!4880341 (=> (not res!2083276) (not e!3050063))))

(assert (=> b!4880341 (= res!2083276 (<= (- (height!1951 (left!40713 (right!41043 (right!41043 lt!1999152)))) (height!1951 (right!41043 (right!41043 (right!41043 lt!1999152))))) 1))))

(declare-fun b!4880342 () Bool)

(declare-fun res!2083274 () Bool)

(assert (=> b!4880342 (=> (not res!2083274) (not e!3050063))))

(assert (=> b!4880342 (= res!2083274 (isBalanced!3980 (right!41043 (right!41043 (right!41043 lt!1999152)))))))

(declare-fun b!4880343 () Bool)

(assert (=> b!4880343 (= e!3050063 (not (isEmpty!30031 (right!41043 (right!41043 (right!41043 lt!1999152))))))))

(assert (= (and d!1568286 (not res!2083278)) b!4880339))

(assert (= (and b!4880339 res!2083275) b!4880341))

(assert (= (and b!4880341 res!2083276) b!4880340))

(assert (= (and b!4880340 res!2083273) b!4880342))

(assert (= (and b!4880342 res!2083274) b!4880338))

(assert (= (and b!4880338 res!2083277) b!4880343))

(declare-fun m!5883918 () Bool)

(assert (=> b!4880342 m!5883918))

(declare-fun m!5883920 () Bool)

(assert (=> b!4880340 m!5883920))

(declare-fun m!5883922 () Bool)

(assert (=> b!4880341 m!5883922))

(declare-fun m!5883924 () Bool)

(assert (=> b!4880341 m!5883924))

(assert (=> b!4880339 m!5883922))

(assert (=> b!4880339 m!5883924))

(declare-fun m!5883926 () Bool)

(assert (=> b!4880343 m!5883926))

(declare-fun m!5883928 () Bool)

(assert (=> b!4880338 m!5883928))

(assert (=> b!4879990 d!1568286))

(declare-fun b!4880344 () Bool)

(declare-fun res!2083283 () Bool)

(declare-fun e!3050065 () Bool)

(assert (=> b!4880344 (=> (not res!2083283) (not e!3050065))))

(assert (=> b!4880344 (= res!2083283 (not (isEmpty!30031 (left!40713 (left!40713 (right!41043 t!4585))))))))

(declare-fun b!4880345 () Bool)

(declare-fun e!3050066 () Bool)

(assert (=> b!4880345 (= e!3050066 e!3050065)))

(declare-fun res!2083281 () Bool)

(assert (=> b!4880345 (=> (not res!2083281) (not e!3050065))))

(assert (=> b!4880345 (= res!2083281 (<= (- 1) (- (height!1951 (left!40713 (left!40713 (right!41043 t!4585)))) (height!1951 (right!41043 (left!40713 (right!41043 t!4585)))))))))

(declare-fun b!4880346 () Bool)

(declare-fun res!2083279 () Bool)

(assert (=> b!4880346 (=> (not res!2083279) (not e!3050065))))

(assert (=> b!4880346 (= res!2083279 (isBalanced!3980 (left!40713 (left!40713 (right!41043 t!4585)))))))

(declare-fun d!1568288 () Bool)

(declare-fun res!2083284 () Bool)

(assert (=> d!1568288 (=> res!2083284 e!3050066)))

(assert (=> d!1568288 (= res!2083284 (not ((_ is Node!14618) (left!40713 (right!41043 t!4585)))))))

(assert (=> d!1568288 (= (isBalanced!3980 (left!40713 (right!41043 t!4585))) e!3050066)))

(declare-fun b!4880347 () Bool)

(declare-fun res!2083282 () Bool)

(assert (=> b!4880347 (=> (not res!2083282) (not e!3050065))))

(assert (=> b!4880347 (= res!2083282 (<= (- (height!1951 (left!40713 (left!40713 (right!41043 t!4585)))) (height!1951 (right!41043 (left!40713 (right!41043 t!4585))))) 1))))

(declare-fun b!4880348 () Bool)

(declare-fun res!2083280 () Bool)

(assert (=> b!4880348 (=> (not res!2083280) (not e!3050065))))

(assert (=> b!4880348 (= res!2083280 (isBalanced!3980 (right!41043 (left!40713 (right!41043 t!4585)))))))

(declare-fun b!4880349 () Bool)

(assert (=> b!4880349 (= e!3050065 (not (isEmpty!30031 (right!41043 (left!40713 (right!41043 t!4585))))))))

(assert (= (and d!1568288 (not res!2083284)) b!4880345))

(assert (= (and b!4880345 res!2083281) b!4880347))

(assert (= (and b!4880347 res!2083282) b!4880346))

(assert (= (and b!4880346 res!2083279) b!4880348))

(assert (= (and b!4880348 res!2083280) b!4880344))

(assert (= (and b!4880344 res!2083283) b!4880349))

(declare-fun m!5883930 () Bool)

(assert (=> b!4880348 m!5883930))

(declare-fun m!5883932 () Bool)

(assert (=> b!4880346 m!5883932))

(declare-fun m!5883934 () Bool)

(assert (=> b!4880347 m!5883934))

(declare-fun m!5883936 () Bool)

(assert (=> b!4880347 m!5883936))

(assert (=> b!4880345 m!5883934))

(assert (=> b!4880345 m!5883936))

(declare-fun m!5883938 () Bool)

(assert (=> b!4880349 m!5883938))

(declare-fun m!5883940 () Bool)

(assert (=> b!4880344 m!5883940))

(assert (=> b!4880194 d!1568288))

(declare-fun d!1568290 () Bool)

(declare-fun lt!1999253 () Int)

(assert (=> d!1568290 (>= lt!1999253 0)))

(declare-fun e!3050067 () Int)

(assert (=> d!1568290 (= lt!1999253 e!3050067)))

(declare-fun c!830064 () Bool)

(assert (=> d!1568290 (= c!830064 ((_ is Nil!56033) (t!364793 (innerList!14706 (xs!17928 t!4585)))))))

(assert (=> d!1568290 (= (size!36961 (t!364793 (innerList!14706 (xs!17928 t!4585)))) lt!1999253)))

(declare-fun b!4880350 () Bool)

(assert (=> b!4880350 (= e!3050067 0)))

(declare-fun b!4880351 () Bool)

(assert (=> b!4880351 (= e!3050067 (+ 1 (size!36961 (t!364793 (t!364793 (innerList!14706 (xs!17928 t!4585)))))))))

(assert (= (and d!1568290 c!830064) b!4880350))

(assert (= (and d!1568290 (not c!830064)) b!4880351))

(declare-fun m!5883942 () Bool)

(assert (=> b!4880351 m!5883942))

(assert (=> b!4880187 d!1568290))

(assert (=> b!4880204 d!1568282))

(assert (=> b!4880204 d!1568284))

(declare-fun d!1568292 () Bool)

(declare-fun c!830067 () Bool)

(assert (=> d!1568292 (= c!830067 ((_ is Nil!56033) lt!1999220))))

(declare-fun e!3050070 () (InoxSet T!99300))

(assert (=> d!1568292 (= (content!10010 lt!1999220) e!3050070)))

(declare-fun b!4880356 () Bool)

(assert (=> b!4880356 (= e!3050070 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880357 () Bool)

(assert (=> b!4880357 (= e!3050070 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 lt!1999220) true) (content!10010 (t!364793 lt!1999220))))))

(assert (= (and d!1568292 c!830067) b!4880356))

(assert (= (and d!1568292 (not c!830067)) b!4880357))

(declare-fun m!5883944 () Bool)

(assert (=> b!4880357 m!5883944))

(declare-fun m!5883946 () Bool)

(assert (=> b!4880357 m!5883946))

(assert (=> d!1568120 d!1568292))

(declare-fun d!1568294 () Bool)

(declare-fun c!830068 () Bool)

(assert (=> d!1568294 (= c!830068 ((_ is Nil!56033) (list!17565 (left!40713 lt!1999152))))))

(declare-fun e!3050071 () (InoxSet T!99300))

(assert (=> d!1568294 (= (content!10010 (list!17565 (left!40713 lt!1999152))) e!3050071)))

(declare-fun b!4880358 () Bool)

(assert (=> b!4880358 (= e!3050071 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880359 () Bool)

(assert (=> b!4880359 (= e!3050071 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 (list!17565 (left!40713 lt!1999152))) true) (content!10010 (t!364793 (list!17565 (left!40713 lt!1999152))))))))

(assert (= (and d!1568294 c!830068) b!4880358))

(assert (= (and d!1568294 (not c!830068)) b!4880359))

(declare-fun m!5883948 () Bool)

(assert (=> b!4880359 m!5883948))

(declare-fun m!5883950 () Bool)

(assert (=> b!4880359 m!5883950))

(assert (=> d!1568120 d!1568294))

(declare-fun d!1568296 () Bool)

(declare-fun c!830069 () Bool)

(assert (=> d!1568296 (= c!830069 ((_ is Nil!56033) (list!17565 (right!41043 lt!1999152))))))

(declare-fun e!3050072 () (InoxSet T!99300))

(assert (=> d!1568296 (= (content!10010 (list!17565 (right!41043 lt!1999152))) e!3050072)))

(declare-fun b!4880360 () Bool)

(assert (=> b!4880360 (= e!3050072 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880361 () Bool)

(assert (=> b!4880361 (= e!3050072 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 (list!17565 (right!41043 lt!1999152))) true) (content!10010 (t!364793 (list!17565 (right!41043 lt!1999152))))))))

(assert (= (and d!1568296 c!830069) b!4880360))

(assert (= (and d!1568296 (not c!830069)) b!4880361))

(declare-fun m!5883952 () Bool)

(assert (=> b!4880361 m!5883952))

(declare-fun m!5883954 () Bool)

(assert (=> b!4880361 m!5883954))

(assert (=> d!1568120 d!1568296))

(declare-fun d!1568298 () Bool)

(assert (=> d!1568298 (= (isEmpty!30033 (list!17565 (right!41043 t!4585))) ((_ is Nil!56033) (list!17565 (right!41043 t!4585))))))

(assert (=> d!1568186 d!1568298))

(assert (=> d!1568186 d!1568106))

(declare-fun d!1568300 () Bool)

(declare-fun lt!1999254 () Int)

(assert (=> d!1568300 (= lt!1999254 (size!36961 (list!17565 (right!41043 t!4585))))))

(assert (=> d!1568300 (= lt!1999254 (ite ((_ is Empty!14618) (right!41043 t!4585)) 0 (ite ((_ is Leaf!24360) (right!41043 t!4585)) (csize!29467 (right!41043 t!4585)) (csize!29466 (right!41043 t!4585)))))))

(assert (=> d!1568300 (= (size!36963 (right!41043 t!4585)) lt!1999254)))

(declare-fun bs!1175356 () Bool)

(assert (= bs!1175356 d!1568300))

(assert (=> bs!1175356 m!5882920))

(assert (=> bs!1175356 m!5882920))

(assert (=> bs!1175356 m!5883346))

(assert (=> d!1568186 d!1568300))

(declare-fun d!1568302 () Bool)

(assert (=> d!1568302 (= (height!1951 (ite c!830017 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999225)) (ite ((_ is Empty!14618) (ite c!830017 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999225)) 0 (ite ((_ is Leaf!24360) (ite c!830017 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999225)) 1 (cheight!14829 (ite c!830017 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999225)))))))

(assert (=> bm!338785 d!1568302))

(declare-fun bm!338810 () Bool)

(declare-fun call!338815 () List!56157)

(assert (=> bm!338810 (= call!338815 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585)))))))

(declare-fun bm!338811 () Bool)

(declare-fun call!338817 () List!56157)

(assert (=> bm!338811 (= call!338817 (++!12218 (list!17565 (left!40713 (left!40713 t!4585))) (list!17565 (right!41043 (left!40713 t!4585)))))))

(declare-fun bm!338812 () Bool)

(declare-fun call!338816 () List!56157)

(assert (=> bm!338812 (= call!338816 (++!12218 call!338815 (list!17565 (right!41043 (left!40713 t!4585)))))))

(declare-fun d!1568304 () Bool)

(declare-fun e!3050073 () Bool)

(assert (=> d!1568304 e!3050073))

(declare-fun c!830070 () Bool)

(assert (=> d!1568304 (= c!830070 ((_ is Nil!56033) (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568304 (= (appendAssoc!289 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 (left!40713 t!4585))) (list!17565 (right!41043 (left!40713 t!4585)))) true)))

(declare-fun b!4880362 () Bool)

(declare-fun call!338818 () List!56157)

(assert (=> b!4880362 (= e!3050073 (= call!338816 call!338818))))

(declare-fun lt!1999255 () Bool)

(assert (=> b!4880362 (= lt!1999255 (appendAssoc!289 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (left!40713 t!4585))) (list!17565 (right!41043 (left!40713 t!4585)))))))

(declare-fun bm!338813 () Bool)

(assert (=> bm!338813 (= call!338818 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338817))))

(declare-fun b!4880363 () Bool)

(assert (=> b!4880363 (= e!3050073 (= call!338816 call!338818))))

(assert (= (and d!1568304 c!830070) b!4880363))

(assert (= (and d!1568304 (not c!830070)) b!4880362))

(assert (= (or b!4880363 b!4880362) bm!338810))

(assert (= (or b!4880363 b!4880362) bm!338811))

(assert (= (or b!4880363 b!4880362) bm!338813))

(assert (= (or b!4880363 b!4880362) bm!338812))

(assert (=> bm!338810 m!5882882))

(assert (=> bm!338810 m!5883152))

(assert (=> bm!338810 m!5883160))

(assert (=> bm!338812 m!5883154))

(declare-fun m!5883956 () Bool)

(assert (=> bm!338812 m!5883956))

(assert (=> bm!338811 m!5883152))

(assert (=> bm!338811 m!5883154))

(assert (=> bm!338811 m!5883364))

(assert (=> bm!338813 m!5882882))

(declare-fun m!5883958 () Bool)

(assert (=> bm!338813 m!5883958))

(assert (=> b!4880362 m!5883152))

(assert (=> b!4880362 m!5883154))

(declare-fun m!5883960 () Bool)

(assert (=> b!4880362 m!5883960))

(assert (=> b!4879947 d!1568304))

(assert (=> b!4879947 d!1568162))

(assert (=> b!4879947 d!1568230))

(assert (=> b!4879947 d!1568232))

(declare-fun d!1568306 () Bool)

(assert (=> d!1568306 (= (height!1951 (ite c!830017 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) (ite ((_ is Empty!14618) (ite c!830017 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) 0 (ite ((_ is Leaf!24360) (ite c!830017 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) 1 (cheight!14829 (ite c!830017 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))

(assert (=> bm!338787 d!1568306))

(declare-fun b!4880364 () Bool)

(declare-fun res!2083289 () Bool)

(declare-fun e!3050074 () Bool)

(assert (=> b!4880364 (=> (not res!2083289) (not e!3050074))))

(assert (=> b!4880364 (= res!2083289 (not (isEmpty!30031 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun b!4880365 () Bool)

(declare-fun e!3050075 () Bool)

(assert (=> b!4880365 (= e!3050075 e!3050074)))

(declare-fun res!2083287 () Bool)

(assert (=> b!4880365 (=> (not res!2083287) (not e!3050074))))

(assert (=> b!4880365 (= res!2083287 (<= (- 1) (- (height!1951 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (height!1951 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(declare-fun b!4880366 () Bool)

(declare-fun res!2083285 () Bool)

(assert (=> b!4880366 (=> (not res!2083285) (not e!3050074))))

(assert (=> b!4880366 (= res!2083285 (isBalanced!3980 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(declare-fun d!1568308 () Bool)

(declare-fun res!2083290 () Bool)

(assert (=> d!1568308 (=> res!2083290 e!3050075)))

(assert (=> d!1568308 (= res!2083290 (not ((_ is Node!14618) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(assert (=> d!1568308 (= (isBalanced!3980 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) e!3050075)))

(declare-fun b!4880367 () Bool)

(declare-fun res!2083288 () Bool)

(assert (=> b!4880367 (=> (not res!2083288) (not e!3050074))))

(assert (=> b!4880367 (= res!2083288 (<= (- (height!1951 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (height!1951 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) 1))))

(declare-fun b!4880368 () Bool)

(declare-fun res!2083286 () Bool)

(assert (=> b!4880368 (=> (not res!2083286) (not e!3050074))))

(assert (=> b!4880368 (= res!2083286 (isBalanced!3980 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(declare-fun b!4880369 () Bool)

(assert (=> b!4880369 (= e!3050074 (not (isEmpty!30031 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(assert (= (and d!1568308 (not res!2083290)) b!4880365))

(assert (= (and b!4880365 res!2083287) b!4880367))

(assert (= (and b!4880367 res!2083288) b!4880366))

(assert (= (and b!4880366 res!2083285) b!4880368))

(assert (= (and b!4880368 res!2083286) b!4880364))

(assert (= (and b!4880364 res!2083289) b!4880369))

(declare-fun m!5883962 () Bool)

(assert (=> b!4880368 m!5883962))

(declare-fun m!5883964 () Bool)

(assert (=> b!4880366 m!5883964))

(declare-fun m!5883966 () Bool)

(assert (=> b!4880367 m!5883966))

(declare-fun m!5883968 () Bool)

(assert (=> b!4880367 m!5883968))

(assert (=> b!4880365 m!5883966))

(assert (=> b!4880365 m!5883968))

(declare-fun m!5883970 () Bool)

(assert (=> b!4880369 m!5883970))

(declare-fun m!5883972 () Bool)

(assert (=> b!4880364 m!5883972))

(assert (=> b!4880153 d!1568308))

(declare-fun d!1568310 () Bool)

(assert (=> d!1568310 (= (height!1951 (left!40713 lt!1999176)) (ite ((_ is Empty!14618) (left!40713 lt!1999176)) 0 (ite ((_ is Leaf!24360) (left!40713 lt!1999176)) 1 (cheight!14829 (left!40713 lt!1999176)))))))

(assert (=> b!4880131 d!1568310))

(declare-fun d!1568312 () Bool)

(assert (=> d!1568312 (= (height!1951 (right!41043 lt!1999176)) (ite ((_ is Empty!14618) (right!41043 lt!1999176)) 0 (ite ((_ is Leaf!24360) (right!41043 lt!1999176)) 1 (cheight!14829 (right!41043 lt!1999176)))))))

(assert (=> b!4880131 d!1568312))

(declare-fun d!1568314 () Bool)

(assert (=> d!1568314 (= (inv!72023 (xs!17928 (right!41043 (right!41043 t!4585)))) (<= (size!36961 (innerList!14706 (xs!17928 (right!41043 (right!41043 t!4585))))) 2147483647))))

(declare-fun bs!1175357 () Bool)

(assert (= bs!1175357 d!1568314))

(declare-fun m!5883974 () Bool)

(assert (=> bs!1175357 m!5883974))

(assert (=> b!4880213 d!1568314))

(declare-fun d!1568316 () Bool)

(declare-fun lt!1999256 () Int)

(assert (=> d!1568316 (>= lt!1999256 0)))

(declare-fun e!3050076 () Int)

(assert (=> d!1568316 (= lt!1999256 e!3050076)))

(declare-fun c!830071 () Bool)

(assert (=> d!1568316 (= c!830071 ((_ is Nil!56033) (list!17567 (xs!17928 (left!40713 t!4585)))))))

(assert (=> d!1568316 (= (size!36961 (list!17567 (xs!17928 (left!40713 t!4585)))) lt!1999256)))

(declare-fun b!4880370 () Bool)

(assert (=> b!4880370 (= e!3050076 0)))

(declare-fun b!4880371 () Bool)

(assert (=> b!4880371 (= e!3050076 (+ 1 (size!36961 (t!364793 (list!17567 (xs!17928 (left!40713 t!4585)))))))))

(assert (= (and d!1568316 c!830071) b!4880370))

(assert (= (and d!1568316 (not c!830071)) b!4880371))

(declare-fun m!5883976 () Bool)

(assert (=> b!4880371 m!5883976))

(assert (=> d!1568134 d!1568316))

(declare-fun d!1568318 () Bool)

(assert (=> d!1568318 (= (list!17567 (xs!17928 (left!40713 t!4585))) (innerList!14706 (xs!17928 (left!40713 t!4585))))))

(assert (=> d!1568134 d!1568318))

(declare-fun d!1568320 () Bool)

(assert (=> d!1568320 (= (height!1951 (left!40713 (left!40713 lt!1999152))) (ite ((_ is Empty!14618) (left!40713 (left!40713 lt!1999152))) 0 (ite ((_ is Leaf!24360) (left!40713 (left!40713 lt!1999152))) 1 (cheight!14829 (left!40713 (left!40713 lt!1999152))))))))

(assert (=> b!4880112 d!1568320))

(declare-fun d!1568322 () Bool)

(assert (=> d!1568322 (= (height!1951 (right!41043 (left!40713 lt!1999152))) (ite ((_ is Empty!14618) (right!41043 (left!40713 lt!1999152))) 0 (ite ((_ is Leaf!24360) (right!41043 (left!40713 lt!1999152))) 1 (cheight!14829 (right!41043 (left!40713 lt!1999152))))))))

(assert (=> b!4880112 d!1568322))

(declare-fun b!4880372 () Bool)

(declare-fun e!3050078 () List!56157)

(assert (=> b!4880372 (= e!3050078 (list!17565 t!4585))))

(declare-fun b!4880374 () Bool)

(declare-fun res!2083291 () Bool)

(declare-fun e!3050077 () Bool)

(assert (=> b!4880374 (=> (not res!2083291) (not e!3050077))))

(declare-fun lt!1999257 () List!56157)

(assert (=> b!4880374 (= res!2083291 (= (size!36961 lt!1999257) (+ (size!36961 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)))) (size!36961 (list!17565 t!4585)))))))

(declare-fun b!4880375 () Bool)

(assert (=> b!4880375 (= e!3050077 (or (not (= (list!17565 t!4585) Nil!56033)) (= lt!1999257 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun d!1568324 () Bool)

(assert (=> d!1568324 e!3050077))

(declare-fun res!2083292 () Bool)

(assert (=> d!1568324 (=> (not res!2083292) (not e!3050077))))

(assert (=> d!1568324 (= res!2083292 (= (content!10010 lt!1999257) ((_ map or) (content!10010 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)))) (content!10010 (list!17565 t!4585)))))))

(assert (=> d!1568324 (= lt!1999257 e!3050078)))

(declare-fun c!830072 () Bool)

(assert (=> d!1568324 (= c!830072 ((_ is Nil!56033) (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568324 (= (++!12218 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 t!4585)) lt!1999257)))

(declare-fun b!4880373 () Bool)

(assert (=> b!4880373 (= e!3050078 (Cons!56033 (h!62481 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)))) (++!12218 (t!364793 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585))))))

(assert (= (and d!1568324 c!830072) b!4880372))

(assert (= (and d!1568324 (not c!830072)) b!4880373))

(assert (= (and d!1568324 res!2083292) b!4880374))

(assert (= (and b!4880374 res!2083291) b!4880375))

(declare-fun m!5883978 () Bool)

(assert (=> b!4880374 m!5883978))

(declare-fun m!5883980 () Bool)

(assert (=> b!4880374 m!5883980))

(assert (=> b!4880374 m!5882724))

(assert (=> b!4880374 m!5883550))

(declare-fun m!5883982 () Bool)

(assert (=> d!1568324 m!5883982))

(declare-fun m!5883984 () Bool)

(assert (=> d!1568324 m!5883984))

(assert (=> d!1568324 m!5882724))

(assert (=> d!1568324 m!5883556))

(assert (=> b!4880373 m!5882724))

(declare-fun m!5883986 () Bool)

(assert (=> b!4880373 m!5883986))

(assert (=> b!4880175 d!1568324))

(declare-fun d!1568326 () Bool)

(declare-fun lt!1999258 () Bool)

(assert (=> d!1568326 (= lt!1999258 (isEmpty!30033 (list!17565 (right!41043 (left!40713 lt!1999152)))))))

(assert (=> d!1568326 (= lt!1999258 (= (size!36963 (right!41043 (left!40713 lt!1999152))) 0))))

(assert (=> d!1568326 (= (isEmpty!30031 (right!41043 (left!40713 lt!1999152))) lt!1999258)))

(declare-fun bs!1175358 () Bool)

(assert (= bs!1175358 d!1568326))

(assert (=> bs!1175358 m!5883424))

(assert (=> bs!1175358 m!5883424))

(declare-fun m!5883988 () Bool)

(assert (=> bs!1175358 m!5883988))

(declare-fun m!5883990 () Bool)

(assert (=> bs!1175358 m!5883990))

(assert (=> b!4880116 d!1568326))

(declare-fun d!1568328 () Bool)

(assert (=> d!1568328 (= (list!17567 (xs!17928 (Leaf!24360 (fill!241 1 v!5488) 1))) (innerList!14706 (xs!17928 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> b!4880180 d!1568328))

(assert (=> b!4879788 d!1568152))

(assert (=> b!4879788 d!1568154))

(declare-fun d!1568330 () Bool)

(assert (=> d!1568330 (= (list!17567 (xs!17928 (left!40713 lt!1999152))) (innerList!14706 (xs!17928 (left!40713 lt!1999152))))))

(assert (=> b!4880105 d!1568330))

(assert (=> d!1568184 d!1568220))

(assert (=> d!1568184 d!1568222))

(declare-fun b!4880376 () Bool)

(declare-fun res!2083297 () Bool)

(declare-fun e!3050079 () Bool)

(assert (=> b!4880376 (=> (not res!2083297) (not e!3050079))))

(assert (=> b!4880376 (= res!2083297 (not (isEmpty!30031 (left!40713 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880377 () Bool)

(declare-fun e!3050080 () Bool)

(assert (=> b!4880377 (= e!3050080 e!3050079)))

(declare-fun res!2083295 () Bool)

(assert (=> b!4880377 (=> (not res!2083295) (not e!3050079))))

(assert (=> b!4880377 (= res!2083295 (<= (- 1) (- (height!1951 (left!40713 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (right!41043 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(declare-fun b!4880378 () Bool)

(declare-fun res!2083293 () Bool)

(assert (=> b!4880378 (=> (not res!2083293) (not e!3050079))))

(assert (=> b!4880378 (= res!2083293 (isBalanced!3980 (left!40713 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun d!1568332 () Bool)

(declare-fun res!2083298 () Bool)

(assert (=> d!1568332 (=> res!2083298 e!3050080)))

(assert (=> d!1568332 (= res!2083298 (not ((_ is Node!14618) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568332 (= (isBalanced!3980 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) e!3050080)))

(declare-fun b!4880379 () Bool)

(declare-fun res!2083296 () Bool)

(assert (=> b!4880379 (=> (not res!2083296) (not e!3050079))))

(assert (=> b!4880379 (= res!2083296 (<= (- (height!1951 (left!40713 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (right!41043 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))) 1))))

(declare-fun b!4880380 () Bool)

(declare-fun res!2083294 () Bool)

(assert (=> b!4880380 (=> (not res!2083294) (not e!3050079))))

(assert (=> b!4880380 (= res!2083294 (isBalanced!3980 (right!41043 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4880381 () Bool)

(assert (=> b!4880381 (= e!3050079 (not (isEmpty!30031 (right!41043 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (= (and d!1568332 (not res!2083298)) b!4880377))

(assert (= (and b!4880377 res!2083295) b!4880379))

(assert (= (and b!4880379 res!2083296) b!4880378))

(assert (= (and b!4880378 res!2083293) b!4880380))

(assert (= (and b!4880380 res!2083294) b!4880376))

(assert (= (and b!4880376 res!2083297) b!4880381))

(declare-fun m!5883992 () Bool)

(assert (=> b!4880380 m!5883992))

(declare-fun m!5883994 () Bool)

(assert (=> b!4880378 m!5883994))

(declare-fun m!5883996 () Bool)

(assert (=> b!4880379 m!5883996))

(declare-fun m!5883998 () Bool)

(assert (=> b!4880379 m!5883998))

(assert (=> b!4880377 m!5883996))

(assert (=> b!4880377 m!5883998))

(declare-fun m!5884000 () Bool)

(assert (=> b!4880381 m!5884000))

(declare-fun m!5884002 () Bool)

(assert (=> b!4880376 m!5884002))

(assert (=> b!4879952 d!1568332))

(assert (=> b!4880159 d!1568276))

(assert (=> b!4880159 d!1568274))

(assert (=> d!1568132 d!1568248))

(assert (=> d!1568132 d!1568300))

(declare-fun d!1568334 () Bool)

(declare-fun lt!1999259 () Int)

(assert (=> d!1568334 (>= lt!1999259 0)))

(declare-fun e!3050081 () Int)

(assert (=> d!1568334 (= lt!1999259 e!3050081)))

(declare-fun c!830073 () Bool)

(assert (=> d!1568334 (= c!830073 ((_ is Nil!56033) (innerList!14706 (xs!17928 (right!41043 t!4585)))))))

(assert (=> d!1568334 (= (size!36961 (innerList!14706 (xs!17928 (right!41043 t!4585)))) lt!1999259)))

(declare-fun b!4880382 () Bool)

(assert (=> b!4880382 (= e!3050081 0)))

(declare-fun b!4880383 () Bool)

(assert (=> b!4880383 (= e!3050081 (+ 1 (size!36961 (t!364793 (innerList!14706 (xs!17928 (right!41043 t!4585)))))))))

(assert (= (and d!1568334 c!830073) b!4880382))

(assert (= (and d!1568334 (not c!830073)) b!4880383))

(declare-fun m!5884004 () Bool)

(assert (=> b!4880383 m!5884004))

(assert (=> d!1568168 d!1568334))

(declare-fun d!1568336 () Bool)

(declare-fun res!2083299 () Bool)

(declare-fun e!3050082 () Bool)

(assert (=> d!1568336 (=> (not res!2083299) (not e!3050082))))

(assert (=> d!1568336 (= res!2083299 (<= (size!36961 (list!17567 (xs!17928 (right!41043 (right!41043 t!4585))))) 512))))

(assert (=> d!1568336 (= (inv!72028 (right!41043 (right!41043 t!4585))) e!3050082)))

(declare-fun b!4880384 () Bool)

(declare-fun res!2083300 () Bool)

(assert (=> b!4880384 (=> (not res!2083300) (not e!3050082))))

(assert (=> b!4880384 (= res!2083300 (= (csize!29467 (right!41043 (right!41043 t!4585))) (size!36961 (list!17567 (xs!17928 (right!41043 (right!41043 t!4585)))))))))

(declare-fun b!4880385 () Bool)

(assert (=> b!4880385 (= e!3050082 (and (> (csize!29467 (right!41043 (right!41043 t!4585))) 0) (<= (csize!29467 (right!41043 (right!41043 t!4585))) 512)))))

(assert (= (and d!1568336 res!2083299) b!4880384))

(assert (= (and b!4880384 res!2083300) b!4880385))

(declare-fun m!5884006 () Bool)

(assert (=> d!1568336 m!5884006))

(assert (=> d!1568336 m!5884006))

(declare-fun m!5884008 () Bool)

(assert (=> d!1568336 m!5884008))

(assert (=> b!4880384 m!5884006))

(assert (=> b!4880384 m!5884006))

(assert (=> b!4880384 m!5884008))

(assert (=> b!4880148 d!1568336))

(assert (=> b!4880097 d!1568218))

(assert (=> b!4880097 d!1568112))

(declare-fun d!1568338 () Bool)

(declare-fun c!830074 () Bool)

(assert (=> d!1568338 (= c!830074 ((_ is Nil!56033) lt!1999207))))

(declare-fun e!3050083 () (InoxSet T!99300))

(assert (=> d!1568338 (= (content!10010 lt!1999207) e!3050083)))

(declare-fun b!4880386 () Bool)

(assert (=> b!4880386 (= e!3050083 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880387 () Bool)

(assert (=> b!4880387 (= e!3050083 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 lt!1999207) true) (content!10010 (t!364793 lt!1999207))))))

(assert (= (and d!1568338 c!830074) b!4880386))

(assert (= (and d!1568338 (not c!830074)) b!4880387))

(declare-fun m!5884010 () Bool)

(assert (=> b!4880387 m!5884010))

(declare-fun m!5884012 () Bool)

(assert (=> b!4880387 m!5884012))

(assert (=> d!1568066 d!1568338))

(assert (=> b!4880126 d!1568316))

(assert (=> b!4880126 d!1568318))

(assert (=> b!4880077 d!1568222))

(declare-fun d!1568340 () Bool)

(assert (=> d!1568340 (= (height!1951 (left!40713 (right!41043 lt!1999152))) (ite ((_ is Empty!14618) (left!40713 (right!41043 lt!1999152))) 0 (ite ((_ is Leaf!24360) (left!40713 (right!41043 lt!1999152))) 1 (cheight!14829 (left!40713 (right!41043 lt!1999152))))))))

(assert (=> b!4879987 d!1568340))

(declare-fun d!1568342 () Bool)

(assert (=> d!1568342 (= (height!1951 (right!41043 (right!41043 lt!1999152))) (ite ((_ is Empty!14618) (right!41043 (right!41043 lt!1999152))) 0 (ite ((_ is Leaf!24360) (right!41043 (right!41043 lt!1999152))) 1 (cheight!14829 (right!41043 (right!41043 lt!1999152))))))))

(assert (=> b!4879987 d!1568342))

(declare-fun d!1568344 () Bool)

(declare-fun c!830075 () Bool)

(assert (=> d!1568344 (= c!830075 ((_ is Empty!14618) lt!1999231))))

(declare-fun e!3050084 () List!56157)

(assert (=> d!1568344 (= (list!17565 lt!1999231) e!3050084)))

(declare-fun b!4880388 () Bool)

(assert (=> b!4880388 (= e!3050084 Nil!56033)))

(declare-fun b!4880390 () Bool)

(declare-fun e!3050085 () List!56157)

(assert (=> b!4880390 (= e!3050085 (list!17567 (xs!17928 lt!1999231)))))

(declare-fun b!4880391 () Bool)

(assert (=> b!4880391 (= e!3050085 (++!12218 (list!17565 (left!40713 lt!1999231)) (list!17565 (right!41043 lt!1999231))))))

(declare-fun b!4880389 () Bool)

(assert (=> b!4880389 (= e!3050084 e!3050085)))

(declare-fun c!830076 () Bool)

(assert (=> b!4880389 (= c!830076 ((_ is Leaf!24360) lt!1999231))))

(assert (= (and d!1568344 c!830075) b!4880388))

(assert (= (and d!1568344 (not c!830075)) b!4880389))

(assert (= (and b!4880389 c!830076) b!4880390))

(assert (= (and b!4880389 (not c!830076)) b!4880391))

(declare-fun m!5884014 () Bool)

(assert (=> b!4880390 m!5884014))

(declare-fun m!5884016 () Bool)

(assert (=> b!4880391 m!5884016))

(declare-fun m!5884018 () Bool)

(assert (=> b!4880391 m!5884018))

(assert (=> b!4880391 m!5884016))

(assert (=> b!4880391 m!5884018))

(declare-fun m!5884020 () Bool)

(assert (=> b!4880391 m!5884020))

(assert (=> d!1568166 d!1568344))

(declare-fun b!4880392 () Bool)

(declare-fun e!3050087 () List!56157)

(assert (=> b!4880392 (= e!3050087 (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))

(declare-fun b!4880394 () Bool)

(declare-fun res!2083301 () Bool)

(declare-fun e!3050086 () Bool)

(assert (=> b!4880394 (=> (not res!2083301) (not e!3050086))))

(declare-fun lt!1999260 () List!56157)

(assert (=> b!4880394 (= res!2083301 (= (size!36961 lt!1999260) (+ (size!36961 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))) (size!36961 (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))))))))

(declare-fun b!4880395 () Bool)

(assert (=> b!4880395 (= e!3050086 (or (not (= (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) Nil!56033)) (= lt!1999260 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))))))))

(declare-fun d!1568346 () Bool)

(assert (=> d!1568346 e!3050086))

(declare-fun res!2083302 () Bool)

(assert (=> d!1568346 (=> (not res!2083302) (not e!3050086))))

(assert (=> d!1568346 (= res!2083302 (= (content!10010 lt!1999260) ((_ map or) (content!10010 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))) (content!10010 (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))))))))

(assert (=> d!1568346 (= lt!1999260 e!3050087)))

(declare-fun c!830077 () Bool)

(assert (=> d!1568346 (= c!830077 ((_ is Nil!56033) (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))))))

(assert (=> d!1568346 (= (++!12218 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))) lt!1999260)))

(declare-fun b!4880393 () Bool)

(assert (=> b!4880393 (= e!3050087 (Cons!56033 (h!62481 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))) (++!12218 (t!364793 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))) (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))))

(assert (= (and d!1568346 c!830077) b!4880392))

(assert (= (and d!1568346 (not c!830077)) b!4880393))

(assert (= (and d!1568346 res!2083302) b!4880394))

(assert (= (and b!4880394 res!2083301) b!4880395))

(declare-fun m!5884022 () Bool)

(assert (=> b!4880394 m!5884022))

(assert (=> b!4880394 m!5883578))

(declare-fun m!5884024 () Bool)

(assert (=> b!4880394 m!5884024))

(assert (=> b!4880394 m!5883580))

(declare-fun m!5884026 () Bool)

(assert (=> b!4880394 m!5884026))

(declare-fun m!5884028 () Bool)

(assert (=> d!1568346 m!5884028))

(assert (=> d!1568346 m!5883578))

(declare-fun m!5884030 () Bool)

(assert (=> d!1568346 m!5884030))

(assert (=> d!1568346 m!5883580))

(declare-fun m!5884032 () Bool)

(assert (=> d!1568346 m!5884032))

(assert (=> b!4880393 m!5883580))

(declare-fun m!5884034 () Bool)

(assert (=> b!4880393 m!5884034))

(assert (=> d!1568166 d!1568346))

(declare-fun d!1568348 () Bool)

(declare-fun c!830078 () Bool)

(assert (=> d!1568348 (= c!830078 ((_ is Empty!14618) (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))))))

(declare-fun e!3050088 () List!56157)

(assert (=> d!1568348 (= (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) e!3050088)))

(declare-fun b!4880396 () Bool)

(assert (=> b!4880396 (= e!3050088 Nil!56033)))

(declare-fun b!4880398 () Bool)

(declare-fun e!3050089 () List!56157)

(assert (=> b!4880398 (= e!3050089 (list!17567 (xs!17928 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))))))

(declare-fun b!4880399 () Bool)

(assert (=> b!4880399 (= e!3050089 (++!12218 (list!17565 (left!40713 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))) (list!17565 (right!41043 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))))))))

(declare-fun b!4880397 () Bool)

(assert (=> b!4880397 (= e!3050088 e!3050089)))

(declare-fun c!830079 () Bool)

(assert (=> b!4880397 (= c!830079 ((_ is Leaf!24360) (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))))))

(assert (= (and d!1568348 c!830078) b!4880396))

(assert (= (and d!1568348 (not c!830078)) b!4880397))

(assert (= (and b!4880397 c!830079) b!4880398))

(assert (= (and b!4880397 (not c!830079)) b!4880399))

(declare-fun m!5884036 () Bool)

(assert (=> b!4880398 m!5884036))

(declare-fun m!5884038 () Bool)

(assert (=> b!4880399 m!5884038))

(declare-fun m!5884040 () Bool)

(assert (=> b!4880399 m!5884040))

(assert (=> b!4880399 m!5884038))

(assert (=> b!4880399 m!5884040))

(declare-fun m!5884042 () Bool)

(assert (=> b!4880399 m!5884042))

(assert (=> d!1568166 d!1568348))

(declare-fun c!830080 () Bool)

(declare-fun d!1568350 () Bool)

(assert (=> d!1568350 (= c!830080 ((_ is Empty!14618) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))

(declare-fun e!3050090 () List!56157)

(assert (=> d!1568350 (= (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) e!3050090)))

(declare-fun b!4880400 () Bool)

(assert (=> b!4880400 (= e!3050090 Nil!56033)))

(declare-fun b!4880402 () Bool)

(declare-fun e!3050091 () List!56157)

(assert (=> b!4880402 (= e!3050091 (list!17567 (xs!17928 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))))))

(declare-fun b!4880403 () Bool)

(assert (=> b!4880403 (= e!3050091 (++!12218 (list!17565 (left!40713 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))) (list!17565 (right!41043 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))))

(declare-fun b!4880401 () Bool)

(assert (=> b!4880401 (= e!3050090 e!3050091)))

(declare-fun c!830081 () Bool)

(assert (=> b!4880401 (= c!830081 ((_ is Leaf!24360) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))

(assert (= (and d!1568350 c!830080) b!4880400))

(assert (= (and d!1568350 (not c!830080)) b!4880401))

(assert (= (and b!4880401 c!830081) b!4880402))

(assert (= (and b!4880401 (not c!830081)) b!4880403))

(declare-fun m!5884044 () Bool)

(assert (=> b!4880402 m!5884044))

(declare-fun m!5884046 () Bool)

(assert (=> b!4880403 m!5884046))

(declare-fun m!5884048 () Bool)

(assert (=> b!4880403 m!5884048))

(assert (=> b!4880403 m!5884046))

(assert (=> b!4880403 m!5884048))

(declare-fun m!5884050 () Bool)

(assert (=> b!4880403 m!5884050))

(assert (=> d!1568166 d!1568350))

(declare-fun d!1568352 () Bool)

(assert (=> d!1568352 (= (height!1951 (left!40713 (right!41043 t!4585))) (ite ((_ is Empty!14618) (left!40713 (right!41043 t!4585))) 0 (ite ((_ is Leaf!24360) (left!40713 (right!41043 t!4585))) 1 (cheight!14829 (left!40713 (right!41043 t!4585))))))))

(assert (=> b!4880195 d!1568352))

(declare-fun d!1568354 () Bool)

(assert (=> d!1568354 (= (height!1951 (right!41043 (right!41043 t!4585))) (ite ((_ is Empty!14618) (right!41043 (right!41043 t!4585))) 0 (ite ((_ is Leaf!24360) (right!41043 (right!41043 t!4585))) 1 (cheight!14829 (right!41043 (right!41043 t!4585))))))))

(assert (=> b!4880195 d!1568354))

(declare-fun d!1568356 () Bool)

(declare-fun lt!1999261 () Bool)

(assert (=> d!1568356 (= lt!1999261 (isEmpty!30033 (list!17565 (right!41043 (right!41043 lt!1999152)))))))

(assert (=> d!1568356 (= lt!1999261 (= (size!36963 (right!41043 (right!41043 lt!1999152))) 0))))

(assert (=> d!1568356 (= (isEmpty!30031 (right!41043 (right!41043 lt!1999152))) lt!1999261)))

(declare-fun bs!1175359 () Bool)

(assert (= bs!1175359 d!1568356))

(assert (=> bs!1175359 m!5883432))

(assert (=> bs!1175359 m!5883432))

(declare-fun m!5884052 () Bool)

(assert (=> bs!1175359 m!5884052))

(declare-fun m!5884054 () Bool)

(assert (=> bs!1175359 m!5884054))

(assert (=> b!4879991 d!1568356))

(declare-fun b!4880404 () Bool)

(declare-fun e!3050093 () List!56157)

(assert (=> b!4880404 (= e!3050093 (list!17565 (right!41043 lt!1999152)))))

(declare-fun b!4880406 () Bool)

(declare-fun res!2083303 () Bool)

(declare-fun e!3050092 () Bool)

(assert (=> b!4880406 (=> (not res!2083303) (not e!3050092))))

(declare-fun lt!1999262 () List!56157)

(assert (=> b!4880406 (= res!2083303 (= (size!36961 lt!1999262) (+ (size!36961 (t!364793 (list!17565 (left!40713 lt!1999152)))) (size!36961 (list!17565 (right!41043 lt!1999152))))))))

(declare-fun b!4880407 () Bool)

(assert (=> b!4880407 (= e!3050092 (or (not (= (list!17565 (right!41043 lt!1999152)) Nil!56033)) (= lt!1999262 (t!364793 (list!17565 (left!40713 lt!1999152))))))))

(declare-fun d!1568358 () Bool)

(assert (=> d!1568358 e!3050092))

(declare-fun res!2083304 () Bool)

(assert (=> d!1568358 (=> (not res!2083304) (not e!3050092))))

(assert (=> d!1568358 (= res!2083304 (= (content!10010 lt!1999262) ((_ map or) (content!10010 (t!364793 (list!17565 (left!40713 lt!1999152)))) (content!10010 (list!17565 (right!41043 lt!1999152))))))))

(assert (=> d!1568358 (= lt!1999262 e!3050093)))

(declare-fun c!830082 () Bool)

(assert (=> d!1568358 (= c!830082 ((_ is Nil!56033) (t!364793 (list!17565 (left!40713 lt!1999152)))))))

(assert (=> d!1568358 (= (++!12218 (t!364793 (list!17565 (left!40713 lt!1999152))) (list!17565 (right!41043 lt!1999152))) lt!1999262)))

(declare-fun b!4880405 () Bool)

(assert (=> b!4880405 (= e!3050093 (Cons!56033 (h!62481 (t!364793 (list!17565 (left!40713 lt!1999152)))) (++!12218 (t!364793 (t!364793 (list!17565 (left!40713 lt!1999152)))) (list!17565 (right!41043 lt!1999152)))))))

(assert (= (and d!1568358 c!830082) b!4880404))

(assert (= (and d!1568358 (not c!830082)) b!4880405))

(assert (= (and d!1568358 res!2083304) b!4880406))

(assert (= (and b!4880406 res!2083303) b!4880407))

(declare-fun m!5884056 () Bool)

(assert (=> b!4880406 m!5884056))

(declare-fun m!5884058 () Bool)

(assert (=> b!4880406 m!5884058))

(assert (=> b!4880406 m!5882912))

(assert (=> b!4880406 m!5883410))

(declare-fun m!5884060 () Bool)

(assert (=> d!1568358 m!5884060))

(assert (=> d!1568358 m!5883950))

(assert (=> d!1568358 m!5882912))

(assert (=> d!1568358 m!5883416))

(assert (=> b!4880405 m!5882912))

(declare-fun m!5884062 () Bool)

(assert (=> b!4880405 m!5884062))

(assert (=> b!4880100 d!1568358))

(declare-fun d!1568360 () Bool)

(assert (=> d!1568360 (= (height!1951 (ite c!830017 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (ite ((_ is Empty!14618) (ite c!830017 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) 0 (ite ((_ is Leaf!24360) (ite c!830017 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) 1 (cheight!14829 (ite c!830017 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(assert (=> bm!338790 d!1568360))

(declare-fun d!1568362 () Bool)

(assert (=> d!1568362 (= (height!1951 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) (ite ((_ is Empty!14618) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) 0 (ite ((_ is Leaf!24360) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) 1 (cheight!14829 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))))

(assert (=> b!4880012 d!1568362))

(declare-fun d!1568364 () Bool)

(declare-fun lt!1999263 () Int)

(assert (=> d!1568364 (= lt!1999263 (size!36961 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))))))

(assert (=> d!1568364 (= lt!1999263 (ite ((_ is Empty!14618) (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) 0 (ite ((_ is Leaf!24360) (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (csize!29467 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (csize!29466 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))))))))

(assert (=> d!1568364 (= (size!36963 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) lt!1999263)))

(declare-fun bs!1175360 () Bool)

(assert (= bs!1175360 d!1568364))

(assert (=> bs!1175360 m!5883238))

(assert (=> bs!1175360 m!5883238))

(declare-fun m!5884064 () Bool)

(assert (=> bs!1175360 m!5884064))

(assert (=> b!4880012 d!1568364))

(declare-fun d!1568366 () Bool)

(assert (=> d!1568366 (= (max!0 (height!1951 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (height!1951 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))) (ite (< (height!1951 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (height!1951 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))) (height!1951 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) (height!1951 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))))))

(assert (=> b!4880012 d!1568366))

(declare-fun d!1568368 () Bool)

(assert (=> d!1568368 (= (height!1951 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (ite ((_ is Empty!14618) (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) 0 (ite ((_ is Leaf!24360) (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) 1 (cheight!14829 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))))))))

(assert (=> b!4880012 d!1568368))

(declare-fun d!1568370 () Bool)

(declare-fun lt!1999264 () Int)

(assert (=> d!1568370 (= lt!1999264 (size!36961 (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))))))

(assert (=> d!1568370 (= lt!1999264 (ite ((_ is Empty!14618) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) 0 (ite ((_ is Leaf!24360) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) (csize!29467 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) (csize!29466 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))))

(assert (=> d!1568370 (= (size!36963 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) lt!1999264)))

(declare-fun bs!1175361 () Bool)

(assert (= bs!1175361 d!1568370))

(assert (=> bs!1175361 m!5883240))

(assert (=> bs!1175361 m!5883240))

(declare-fun m!5884066 () Bool)

(assert (=> bs!1175361 m!5884066))

(assert (=> b!4880012 d!1568370))

(declare-fun d!1568372 () Bool)

(declare-fun c!830083 () Bool)

(assert (=> d!1568372 (= c!830083 ((_ is Empty!14618) lt!1999210))))

(declare-fun e!3050094 () List!56157)

(assert (=> d!1568372 (= (list!17565 lt!1999210) e!3050094)))

(declare-fun b!4880408 () Bool)

(assert (=> b!4880408 (= e!3050094 Nil!56033)))

(declare-fun b!4880410 () Bool)

(declare-fun e!3050095 () List!56157)

(assert (=> b!4880410 (= e!3050095 (list!17567 (xs!17928 lt!1999210)))))

(declare-fun b!4880411 () Bool)

(assert (=> b!4880411 (= e!3050095 (++!12218 (list!17565 (left!40713 lt!1999210)) (list!17565 (right!41043 lt!1999210))))))

(declare-fun b!4880409 () Bool)

(assert (=> b!4880409 (= e!3050094 e!3050095)))

(declare-fun c!830084 () Bool)

(assert (=> b!4880409 (= c!830084 ((_ is Leaf!24360) lt!1999210))))

(assert (= (and d!1568372 c!830083) b!4880408))

(assert (= (and d!1568372 (not c!830083)) b!4880409))

(assert (= (and b!4880409 c!830084) b!4880410))

(assert (= (and b!4880409 (not c!830084)) b!4880411))

(declare-fun m!5884068 () Bool)

(assert (=> b!4880410 m!5884068))

(declare-fun m!5884070 () Bool)

(assert (=> b!4880411 m!5884070))

(declare-fun m!5884072 () Bool)

(assert (=> b!4880411 m!5884072))

(assert (=> b!4880411 m!5884070))

(assert (=> b!4880411 m!5884072))

(declare-fun m!5884074 () Bool)

(assert (=> b!4880411 m!5884074))

(assert (=> d!1568072 d!1568372))

(declare-fun e!3050097 () List!56157)

(declare-fun b!4880412 () Bool)

(assert (=> b!4880412 (= e!3050097 (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))

(declare-fun b!4880414 () Bool)

(declare-fun res!2083305 () Bool)

(declare-fun e!3050096 () Bool)

(assert (=> b!4880414 (=> (not res!2083305) (not e!3050096))))

(declare-fun lt!1999265 () List!56157)

(assert (=> b!4880414 (= res!2083305 (= (size!36961 lt!1999265) (+ (size!36961 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))) (size!36961 (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))))))))

(declare-fun b!4880415 () Bool)

(assert (=> b!4880415 (= e!3050096 (or (not (= (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) Nil!56033)) (= lt!1999265 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))))))))

(declare-fun d!1568374 () Bool)

(assert (=> d!1568374 e!3050096))

(declare-fun res!2083306 () Bool)

(assert (=> d!1568374 (=> (not res!2083306) (not e!3050096))))

(assert (=> d!1568374 (= res!2083306 (= (content!10010 lt!1999265) ((_ map or) (content!10010 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))) (content!10010 (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))))))))

(assert (=> d!1568374 (= lt!1999265 e!3050097)))

(declare-fun c!830085 () Bool)

(assert (=> d!1568374 (= c!830085 ((_ is Nil!56033) (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))))))

(assert (=> d!1568374 (= (++!12218 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))) lt!1999265)))

(declare-fun b!4880413 () Bool)

(assert (=> b!4880413 (= e!3050097 (Cons!56033 (h!62481 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))) (++!12218 (t!364793 (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))) (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))))

(assert (= (and d!1568374 c!830085) b!4880412))

(assert (= (and d!1568374 (not c!830085)) b!4880413))

(assert (= (and d!1568374 res!2083306) b!4880414))

(assert (= (and b!4880414 res!2083305) b!4880415))

(declare-fun m!5884076 () Bool)

(assert (=> b!4880414 m!5884076))

(assert (=> b!4880414 m!5883238))

(assert (=> b!4880414 m!5884064))

(assert (=> b!4880414 m!5883240))

(assert (=> b!4880414 m!5884066))

(declare-fun m!5884078 () Bool)

(assert (=> d!1568374 m!5884078))

(assert (=> d!1568374 m!5883238))

(declare-fun m!5884080 () Bool)

(assert (=> d!1568374 m!5884080))

(assert (=> d!1568374 m!5883240))

(declare-fun m!5884082 () Bool)

(assert (=> d!1568374 m!5884082))

(assert (=> b!4880413 m!5883240))

(declare-fun m!5884084 () Bool)

(assert (=> b!4880413 m!5884084))

(assert (=> d!1568072 d!1568374))

(declare-fun c!830086 () Bool)

(declare-fun d!1568376 () Bool)

(assert (=> d!1568376 (= c!830086 ((_ is Empty!14618) (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))))))

(declare-fun e!3050098 () List!56157)

(assert (=> d!1568376 (= (list!17565 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))) e!3050098)))

(declare-fun b!4880416 () Bool)

(assert (=> b!4880416 (= e!3050098 Nil!56033)))

(declare-fun b!4880418 () Bool)

(declare-fun e!3050099 () List!56157)

(assert (=> b!4880418 (= e!3050099 (list!17567 (xs!17928 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))))))

(declare-fun b!4880419 () Bool)

(assert (=> b!4880419 (= e!3050099 (++!12218 (list!17565 (left!40713 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178)))))) (list!17565 (right!41043 (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))))))))

(declare-fun b!4880417 () Bool)

(assert (=> b!4880417 (= e!3050098 e!3050099)))

(declare-fun c!830087 () Bool)

(assert (=> b!4880417 (= c!830087 ((_ is Leaf!24360) (ite c!829923 (Leaf!24360 (fill!241 1 v!5488) 1) (ite c!829928 (ite c!829929 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829922 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!829924 call!338756 (ite c!829926 call!338764 lt!1999178))))))))

(assert (= (and d!1568376 c!830086) b!4880416))

(assert (= (and d!1568376 (not c!830086)) b!4880417))

(assert (= (and b!4880417 c!830087) b!4880418))

(assert (= (and b!4880417 (not c!830087)) b!4880419))

(declare-fun m!5884086 () Bool)

(assert (=> b!4880418 m!5884086))

(declare-fun m!5884088 () Bool)

(assert (=> b!4880419 m!5884088))

(declare-fun m!5884090 () Bool)

(assert (=> b!4880419 m!5884090))

(assert (=> b!4880419 m!5884088))

(assert (=> b!4880419 m!5884090))

(declare-fun m!5884092 () Bool)

(assert (=> b!4880419 m!5884092))

(assert (=> d!1568072 d!1568376))

(declare-fun c!830088 () Bool)

(declare-fun d!1568378 () Bool)

(assert (=> d!1568378 (= c!830088 ((_ is Empty!14618) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))

(declare-fun e!3050100 () List!56157)

(assert (=> d!1568378 (= (list!17565 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))) e!3050100)))

(declare-fun b!4880420 () Bool)

(assert (=> b!4880420 (= e!3050100 Nil!56033)))

(declare-fun b!4880422 () Bool)

(declare-fun e!3050101 () List!56157)

(assert (=> b!4880422 (= e!3050101 (list!17567 (xs!17928 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))))))

(declare-fun b!4880423 () Bool)

(assert (=> b!4880423 (= e!3050101 (++!12218 (list!17565 (left!40713 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764))))) (list!17565 (right!41043 (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))))

(declare-fun b!4880421 () Bool)

(assert (=> b!4880421 (= e!3050100 e!3050101)))

(declare-fun c!830089 () Bool)

(assert (=> b!4880421 (= c!830089 ((_ is Leaf!24360) (ite c!829923 t!4585 (ite c!829928 (ite c!829929 call!338763 (ite c!829922 lt!1999177 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite (or c!829924 c!829926) (right!41043 t!4585) call!338764)))))))

(assert (= (and d!1568378 c!830088) b!4880420))

(assert (= (and d!1568378 (not c!830088)) b!4880421))

(assert (= (and b!4880421 c!830089) b!4880422))

(assert (= (and b!4880421 (not c!830089)) b!4880423))

(declare-fun m!5884094 () Bool)

(assert (=> b!4880422 m!5884094))

(declare-fun m!5884096 () Bool)

(assert (=> b!4880423 m!5884096))

(declare-fun m!5884098 () Bool)

(assert (=> b!4880423 m!5884098))

(assert (=> b!4880423 m!5884096))

(assert (=> b!4880423 m!5884098))

(declare-fun m!5884100 () Bool)

(assert (=> b!4880423 m!5884100))

(assert (=> d!1568072 d!1568378))

(declare-fun b!4880424 () Bool)

(declare-fun res!2083311 () Bool)

(declare-fun e!3050102 () Bool)

(assert (=> b!4880424 (=> (not res!2083311) (not e!3050102))))

(assert (=> b!4880424 (= res!2083311 (not (isEmpty!30031 (left!40713 (right!41043 (left!40713 t!4585))))))))

(declare-fun b!4880425 () Bool)

(declare-fun e!3050103 () Bool)

(assert (=> b!4880425 (= e!3050103 e!3050102)))

(declare-fun res!2083309 () Bool)

(assert (=> b!4880425 (=> (not res!2083309) (not e!3050102))))

(assert (=> b!4880425 (= res!2083309 (<= (- 1) (- (height!1951 (left!40713 (right!41043 (left!40713 t!4585)))) (height!1951 (right!41043 (right!41043 (left!40713 t!4585)))))))))

(declare-fun b!4880426 () Bool)

(declare-fun res!2083307 () Bool)

(assert (=> b!4880426 (=> (not res!2083307) (not e!3050102))))

(assert (=> b!4880426 (= res!2083307 (isBalanced!3980 (left!40713 (right!41043 (left!40713 t!4585)))))))

(declare-fun d!1568380 () Bool)

(declare-fun res!2083312 () Bool)

(assert (=> d!1568380 (=> res!2083312 e!3050103)))

(assert (=> d!1568380 (= res!2083312 (not ((_ is Node!14618) (right!41043 (left!40713 t!4585)))))))

(assert (=> d!1568380 (= (isBalanced!3980 (right!41043 (left!40713 t!4585))) e!3050103)))

(declare-fun b!4880427 () Bool)

(declare-fun res!2083310 () Bool)

(assert (=> b!4880427 (=> (not res!2083310) (not e!3050102))))

(assert (=> b!4880427 (= res!2083310 (<= (- (height!1951 (left!40713 (right!41043 (left!40713 t!4585)))) (height!1951 (right!41043 (right!41043 (left!40713 t!4585))))) 1))))

(declare-fun b!4880428 () Bool)

(declare-fun res!2083308 () Bool)

(assert (=> b!4880428 (=> (not res!2083308) (not e!3050102))))

(assert (=> b!4880428 (= res!2083308 (isBalanced!3980 (right!41043 (right!41043 (left!40713 t!4585)))))))

(declare-fun b!4880429 () Bool)

(assert (=> b!4880429 (= e!3050102 (not (isEmpty!30031 (right!41043 (right!41043 (left!40713 t!4585))))))))

(assert (= (and d!1568380 (not res!2083312)) b!4880425))

(assert (= (and b!4880425 res!2083309) b!4880427))

(assert (= (and b!4880427 res!2083310) b!4880426))

(assert (= (and b!4880426 res!2083307) b!4880428))

(assert (= (and b!4880428 res!2083308) b!4880424))

(assert (= (and b!4880424 res!2083311) b!4880429))

(declare-fun m!5884102 () Bool)

(assert (=> b!4880428 m!5884102))

(declare-fun m!5884104 () Bool)

(assert (=> b!4880426 m!5884104))

(assert (=> b!4880427 m!5883664))

(assert (=> b!4880427 m!5883666))

(assert (=> b!4880425 m!5883664))

(assert (=> b!4880425 m!5883666))

(declare-fun m!5884106 () Bool)

(assert (=> b!4880429 m!5884106))

(declare-fun m!5884108 () Bool)

(assert (=> b!4880424 m!5884108))

(assert (=> b!4880205 d!1568380))

(declare-fun d!1568382 () Bool)

(declare-fun c!830090 () Bool)

(assert (=> d!1568382 (= c!830090 ((_ is Node!14618) (left!40713 (left!40713 (left!40713 t!4585)))))))

(declare-fun e!3050104 () Bool)

(assert (=> d!1568382 (= (inv!72024 (left!40713 (left!40713 (left!40713 t!4585)))) e!3050104)))

(declare-fun b!4880430 () Bool)

(assert (=> b!4880430 (= e!3050104 (inv!72027 (left!40713 (left!40713 (left!40713 t!4585)))))))

(declare-fun b!4880431 () Bool)

(declare-fun e!3050105 () Bool)

(assert (=> b!4880431 (= e!3050104 e!3050105)))

(declare-fun res!2083313 () Bool)

(assert (=> b!4880431 (= res!2083313 (not ((_ is Leaf!24360) (left!40713 (left!40713 (left!40713 t!4585))))))))

(assert (=> b!4880431 (=> res!2083313 e!3050105)))

(declare-fun b!4880432 () Bool)

(assert (=> b!4880432 (= e!3050105 (inv!72028 (left!40713 (left!40713 (left!40713 t!4585)))))))

(assert (= (and d!1568382 c!830090) b!4880430))

(assert (= (and d!1568382 (not c!830090)) b!4880431))

(assert (= (and b!4880431 (not res!2083313)) b!4880432))

(declare-fun m!5884110 () Bool)

(assert (=> b!4880430 m!5884110))

(declare-fun m!5884112 () Bool)

(assert (=> b!4880432 m!5884112))

(assert (=> b!4880218 d!1568382))

(declare-fun d!1568384 () Bool)

(declare-fun c!830091 () Bool)

(assert (=> d!1568384 (= c!830091 ((_ is Node!14618) (right!41043 (left!40713 (left!40713 t!4585)))))))

(declare-fun e!3050106 () Bool)

(assert (=> d!1568384 (= (inv!72024 (right!41043 (left!40713 (left!40713 t!4585)))) e!3050106)))

(declare-fun b!4880433 () Bool)

(assert (=> b!4880433 (= e!3050106 (inv!72027 (right!41043 (left!40713 (left!40713 t!4585)))))))

(declare-fun b!4880434 () Bool)

(declare-fun e!3050107 () Bool)

(assert (=> b!4880434 (= e!3050106 e!3050107)))

(declare-fun res!2083314 () Bool)

(assert (=> b!4880434 (= res!2083314 (not ((_ is Leaf!24360) (right!41043 (left!40713 (left!40713 t!4585))))))))

(assert (=> b!4880434 (=> res!2083314 e!3050107)))

(declare-fun b!4880435 () Bool)

(assert (=> b!4880435 (= e!3050107 (inv!72028 (right!41043 (left!40713 (left!40713 t!4585)))))))

(assert (= (and d!1568384 c!830091) b!4880433))

(assert (= (and d!1568384 (not c!830091)) b!4880434))

(assert (= (and b!4880434 (not res!2083314)) b!4880435))

(declare-fun m!5884114 () Bool)

(assert (=> b!4880433 m!5884114))

(declare-fun m!5884116 () Bool)

(assert (=> b!4880435 m!5884116))

(assert (=> b!4880218 d!1568384))

(assert (=> b!4880072 d!1568318))

(declare-fun b!4880436 () Bool)

(declare-fun res!2083319 () Bool)

(declare-fun e!3050108 () Bool)

(assert (=> b!4880436 (=> (not res!2083319) (not e!3050108))))

(assert (=> b!4880436 (= res!2083319 (not (isEmpty!30031 (left!40713 (right!41043 lt!1999176)))))))

(declare-fun b!4880437 () Bool)

(declare-fun e!3050109 () Bool)

(assert (=> b!4880437 (= e!3050109 e!3050108)))

(declare-fun res!2083317 () Bool)

(assert (=> b!4880437 (=> (not res!2083317) (not e!3050108))))

(assert (=> b!4880437 (= res!2083317 (<= (- 1) (- (height!1951 (left!40713 (right!41043 lt!1999176))) (height!1951 (right!41043 (right!41043 lt!1999176))))))))

(declare-fun b!4880438 () Bool)

(declare-fun res!2083315 () Bool)

(assert (=> b!4880438 (=> (not res!2083315) (not e!3050108))))

(assert (=> b!4880438 (= res!2083315 (isBalanced!3980 (left!40713 (right!41043 lt!1999176))))))

(declare-fun d!1568386 () Bool)

(declare-fun res!2083320 () Bool)

(assert (=> d!1568386 (=> res!2083320 e!3050109)))

(assert (=> d!1568386 (= res!2083320 (not ((_ is Node!14618) (right!41043 lt!1999176))))))

(assert (=> d!1568386 (= (isBalanced!3980 (right!41043 lt!1999176)) e!3050109)))

(declare-fun b!4880439 () Bool)

(declare-fun res!2083318 () Bool)

(assert (=> b!4880439 (=> (not res!2083318) (not e!3050108))))

(assert (=> b!4880439 (= res!2083318 (<= (- (height!1951 (left!40713 (right!41043 lt!1999176))) (height!1951 (right!41043 (right!41043 lt!1999176)))) 1))))

(declare-fun b!4880440 () Bool)

(declare-fun res!2083316 () Bool)

(assert (=> b!4880440 (=> (not res!2083316) (not e!3050108))))

(assert (=> b!4880440 (= res!2083316 (isBalanced!3980 (right!41043 (right!41043 lt!1999176))))))

(declare-fun b!4880441 () Bool)

(assert (=> b!4880441 (= e!3050108 (not (isEmpty!30031 (right!41043 (right!41043 lt!1999176)))))))

(assert (= (and d!1568386 (not res!2083320)) b!4880437))

(assert (= (and b!4880437 res!2083317) b!4880439))

(assert (= (and b!4880439 res!2083318) b!4880438))

(assert (= (and b!4880438 res!2083315) b!4880440))

(assert (= (and b!4880440 res!2083316) b!4880436))

(assert (= (and b!4880436 res!2083319) b!4880441))

(declare-fun m!5884118 () Bool)

(assert (=> b!4880440 m!5884118))

(declare-fun m!5884120 () Bool)

(assert (=> b!4880438 m!5884120))

(declare-fun m!5884122 () Bool)

(assert (=> b!4880439 m!5884122))

(declare-fun m!5884124 () Bool)

(assert (=> b!4880439 m!5884124))

(assert (=> b!4880437 m!5884122))

(assert (=> b!4880437 m!5884124))

(declare-fun m!5884126 () Bool)

(assert (=> b!4880441 m!5884126))

(declare-fun m!5884128 () Bool)

(assert (=> b!4880436 m!5884128))

(assert (=> b!4880132 d!1568386))

(declare-fun b!4880442 () Bool)

(declare-fun res!2083325 () Bool)

(declare-fun e!3050110 () Bool)

(assert (=> b!4880442 (=> (not res!2083325) (not e!3050110))))

(assert (=> b!4880442 (= res!2083325 (not (isEmpty!30031 (left!40713 (left!40713 (left!40713 lt!1999152))))))))

(declare-fun b!4880443 () Bool)

(declare-fun e!3050111 () Bool)

(assert (=> b!4880443 (= e!3050111 e!3050110)))

(declare-fun res!2083323 () Bool)

(assert (=> b!4880443 (=> (not res!2083323) (not e!3050110))))

(assert (=> b!4880443 (= res!2083323 (<= (- 1) (- (height!1951 (left!40713 (left!40713 (left!40713 lt!1999152)))) (height!1951 (right!41043 (left!40713 (left!40713 lt!1999152)))))))))

(declare-fun b!4880444 () Bool)

(declare-fun res!2083321 () Bool)

(assert (=> b!4880444 (=> (not res!2083321) (not e!3050110))))

(assert (=> b!4880444 (= res!2083321 (isBalanced!3980 (left!40713 (left!40713 (left!40713 lt!1999152)))))))

(declare-fun d!1568388 () Bool)

(declare-fun res!2083326 () Bool)

(assert (=> d!1568388 (=> res!2083326 e!3050111)))

(assert (=> d!1568388 (= res!2083326 (not ((_ is Node!14618) (left!40713 (left!40713 lt!1999152)))))))

(assert (=> d!1568388 (= (isBalanced!3980 (left!40713 (left!40713 lt!1999152))) e!3050111)))

(declare-fun b!4880445 () Bool)

(declare-fun res!2083324 () Bool)

(assert (=> b!4880445 (=> (not res!2083324) (not e!3050110))))

(assert (=> b!4880445 (= res!2083324 (<= (- (height!1951 (left!40713 (left!40713 (left!40713 lt!1999152)))) (height!1951 (right!41043 (left!40713 (left!40713 lt!1999152))))) 1))))

(declare-fun b!4880446 () Bool)

(declare-fun res!2083322 () Bool)

(assert (=> b!4880446 (=> (not res!2083322) (not e!3050110))))

(assert (=> b!4880446 (= res!2083322 (isBalanced!3980 (right!41043 (left!40713 (left!40713 lt!1999152)))))))

(declare-fun b!4880447 () Bool)

(assert (=> b!4880447 (= e!3050110 (not (isEmpty!30031 (right!41043 (left!40713 (left!40713 lt!1999152))))))))

(assert (= (and d!1568388 (not res!2083326)) b!4880443))

(assert (= (and b!4880443 res!2083323) b!4880445))

(assert (= (and b!4880445 res!2083324) b!4880444))

(assert (= (and b!4880444 res!2083321) b!4880446))

(assert (= (and b!4880446 res!2083322) b!4880442))

(assert (= (and b!4880442 res!2083325) b!4880447))

(declare-fun m!5884130 () Bool)

(assert (=> b!4880446 m!5884130))

(declare-fun m!5884132 () Bool)

(assert (=> b!4880444 m!5884132))

(declare-fun m!5884134 () Bool)

(assert (=> b!4880445 m!5884134))

(declare-fun m!5884136 () Bool)

(assert (=> b!4880445 m!5884136))

(assert (=> b!4880443 m!5884134))

(assert (=> b!4880443 m!5884136))

(declare-fun m!5884138 () Bool)

(assert (=> b!4880447 m!5884138))

(declare-fun m!5884140 () Bool)

(assert (=> b!4880442 m!5884140))

(assert (=> b!4880113 d!1568388))

(declare-fun d!1568390 () Bool)

(assert (=> d!1568390 (= (max!0 (height!1951 (left!40713 t!4585)) (height!1951 (right!41043 t!4585))) (ite (< (height!1951 (left!40713 t!4585)) (height!1951 (right!41043 t!4585))) (height!1951 (right!41043 t!4585)) (height!1951 (left!40713 t!4585))))))

(assert (=> b!4880124 d!1568390))

(assert (=> b!4880124 d!1568116))

(assert (=> b!4880124 d!1568118))

(declare-fun d!1568392 () Bool)

(declare-fun lt!1999266 () Int)

(assert (=> d!1568392 (>= lt!1999266 0)))

(declare-fun e!3050112 () Int)

(assert (=> d!1568392 (= lt!1999266 e!3050112)))

(declare-fun c!830092 () Bool)

(assert (=> d!1568392 (= c!830092 ((_ is Nil!56033) lt!1999227))))

(assert (=> d!1568392 (= (size!36961 lt!1999227) lt!1999266)))

(declare-fun b!4880448 () Bool)

(assert (=> b!4880448 (= e!3050112 0)))

(declare-fun b!4880449 () Bool)

(assert (=> b!4880449 (= e!3050112 (+ 1 (size!36961 (t!364793 lt!1999227))))))

(assert (= (and d!1568392 c!830092) b!4880448))

(assert (= (and d!1568392 (not c!830092)) b!4880449))

(declare-fun m!5884142 () Bool)

(assert (=> b!4880449 m!5884142))

(assert (=> b!4880176 d!1568392))

(declare-fun d!1568394 () Bool)

(declare-fun lt!1999267 () Int)

(assert (=> d!1568394 (>= lt!1999267 0)))

(declare-fun e!3050113 () Int)

(assert (=> d!1568394 (= lt!1999267 e!3050113)))

(declare-fun c!830093 () Bool)

(assert (=> d!1568394 (= c!830093 ((_ is Nil!56033) (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568394 (= (size!36961 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999267)))

(declare-fun b!4880450 () Bool)

(assert (=> b!4880450 (= e!3050113 0)))

(declare-fun b!4880451 () Bool)

(assert (=> b!4880451 (= e!3050113 (+ 1 (size!36961 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (= (and d!1568394 c!830093) b!4880450))

(assert (= (and d!1568394 (not c!830093)) b!4880451))

(assert (=> b!4880451 m!5883980))

(assert (=> b!4880176 d!1568394))

(declare-fun d!1568396 () Bool)

(declare-fun lt!1999268 () Int)

(assert (=> d!1568396 (>= lt!1999268 0)))

(declare-fun e!3050114 () Int)

(assert (=> d!1568396 (= lt!1999268 e!3050114)))

(declare-fun c!830094 () Bool)

(assert (=> d!1568396 (= c!830094 ((_ is Nil!56033) (list!17565 t!4585)))))

(assert (=> d!1568396 (= (size!36961 (list!17565 t!4585)) lt!1999268)))

(declare-fun b!4880452 () Bool)

(assert (=> b!4880452 (= e!3050114 0)))

(declare-fun b!4880453 () Bool)

(assert (=> b!4880453 (= e!3050114 (+ 1 (size!36961 (t!364793 (list!17565 t!4585)))))))

(assert (= (and d!1568396 c!830094) b!4880452))

(assert (= (and d!1568396 (not c!830094)) b!4880453))

(declare-fun m!5884144 () Bool)

(assert (=> b!4880453 m!5884144))

(assert (=> b!4880176 d!1568396))

(declare-fun d!1568398 () Bool)

(assert (=> d!1568398 (= (isEmpty!30033 (list!17565 (left!40713 lt!1999152))) ((_ is Nil!56033) (list!17565 (left!40713 lt!1999152))))))

(assert (=> d!1568140 d!1568398))

(assert (=> d!1568140 d!1568122))

(declare-fun d!1568400 () Bool)

(declare-fun lt!1999269 () Int)

(assert (=> d!1568400 (= lt!1999269 (size!36961 (list!17565 (left!40713 lt!1999152))))))

(assert (=> d!1568400 (= lt!1999269 (ite ((_ is Empty!14618) (left!40713 lt!1999152)) 0 (ite ((_ is Leaf!24360) (left!40713 lt!1999152)) (csize!29467 (left!40713 lt!1999152)) (csize!29466 (left!40713 lt!1999152)))))))

(assert (=> d!1568400 (= (size!36963 (left!40713 lt!1999152)) lt!1999269)))

(declare-fun bs!1175362 () Bool)

(assert (= bs!1175362 d!1568400))

(assert (=> bs!1175362 m!5882910))

(assert (=> bs!1175362 m!5882910))

(assert (=> bs!1175362 m!5883408))

(assert (=> d!1568140 d!1568400))

(declare-fun d!1568402 () Bool)

(declare-fun lt!1999270 () Bool)

(assert (=> d!1568402 (= lt!1999270 (isEmpty!30033 (list!17565 (left!40713 lt!1999176))))))

(assert (=> d!1568402 (= lt!1999270 (= (size!36963 (left!40713 lt!1999176)) 0))))

(assert (=> d!1568402 (= (isEmpty!30031 (left!40713 lt!1999176)) lt!1999270)))

(declare-fun bs!1175363 () Bool)

(assert (= bs!1175363 d!1568402))

(assert (=> bs!1175363 m!5883540))

(assert (=> bs!1175363 m!5883540))

(declare-fun m!5884146 () Bool)

(assert (=> bs!1175363 m!5884146))

(declare-fun m!5884148 () Bool)

(assert (=> bs!1175363 m!5884148))

(assert (=> b!4880128 d!1568402))

(declare-fun b!4880454 () Bool)

(declare-fun e!3050116 () List!56157)

(assert (=> b!4880454 (= e!3050116 (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun b!4880456 () Bool)

(declare-fun res!2083327 () Bool)

(declare-fun e!3050115 () Bool)

(assert (=> b!4880456 (=> (not res!2083327) (not e!3050115))))

(declare-fun lt!1999271 () List!56157)

(assert (=> b!4880456 (= res!2083327 (= (size!36961 lt!1999271) (+ (size!36961 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (size!36961 (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(declare-fun b!4880457 () Bool)

(assert (=> b!4880457 (= e!3050115 (or (not (= (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) Nil!56033)) (= lt!1999271 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun d!1568404 () Bool)

(assert (=> d!1568404 e!3050115))

(declare-fun res!2083328 () Bool)

(assert (=> d!1568404 (=> (not res!2083328) (not e!3050115))))

(assert (=> d!1568404 (= res!2083328 (= (content!10010 lt!1999271) ((_ map or) (content!10010 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (content!10010 (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(assert (=> d!1568404 (= lt!1999271 e!3050116)))

(declare-fun c!830095 () Bool)

(assert (=> d!1568404 (= c!830095 ((_ is Nil!56033) (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568404 (= (++!12218 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) lt!1999271)))

(declare-fun b!4880455 () Bool)

(assert (=> b!4880455 (= e!3050116 (Cons!56033 (h!62481 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (++!12218 (t!364793 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (= (and d!1568404 c!830095) b!4880454))

(assert (= (and d!1568404 (not c!830095)) b!4880455))

(assert (= (and d!1568404 res!2083328) b!4880456))

(assert (= (and b!4880456 res!2083327) b!4880457))

(declare-fun m!5884150 () Bool)

(assert (=> b!4880456 m!5884150))

(assert (=> b!4880456 m!5883146))

(declare-fun m!5884152 () Bool)

(assert (=> b!4880456 m!5884152))

(assert (=> b!4880456 m!5883148))

(declare-fun m!5884154 () Bool)

(assert (=> b!4880456 m!5884154))

(declare-fun m!5884156 () Bool)

(assert (=> d!1568404 m!5884156))

(assert (=> d!1568404 m!5883146))

(declare-fun m!5884158 () Bool)

(assert (=> d!1568404 m!5884158))

(assert (=> d!1568404 m!5883148))

(declare-fun m!5884160 () Bool)

(assert (=> d!1568404 m!5884160))

(assert (=> b!4880455 m!5883148))

(declare-fun m!5884162 () Bool)

(assert (=> b!4880455 m!5884162))

(assert (=> b!4880181 d!1568404))

(assert (=> b!4880181 d!1568206))

(declare-fun d!1568406 () Bool)

(declare-fun c!830096 () Bool)

(assert (=> d!1568406 (= c!830096 ((_ is Empty!14618) (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun e!3050117 () List!56157)

(assert (=> d!1568406 (= (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) e!3050117)))

(declare-fun b!4880458 () Bool)

(assert (=> b!4880458 (= e!3050117 Nil!56033)))

(declare-fun b!4880460 () Bool)

(declare-fun e!3050118 () List!56157)

(assert (=> b!4880460 (= e!3050118 (list!17567 (xs!17928 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4880461 () Bool)

(assert (=> b!4880461 (= e!3050118 (++!12218 (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880459 () Bool)

(assert (=> b!4880459 (= e!3050117 e!3050118)))

(declare-fun c!830097 () Bool)

(assert (=> b!4880459 (= c!830097 ((_ is Leaf!24360) (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (= (and d!1568406 c!830096) b!4880458))

(assert (= (and d!1568406 (not c!830096)) b!4880459))

(assert (= (and b!4880459 c!830097) b!4880460))

(assert (= (and b!4880459 (not c!830097)) b!4880461))

(declare-fun m!5884164 () Bool)

(assert (=> b!4880460 m!5884164))

(assert (=> b!4880461 m!5883140))

(assert (=> b!4880461 m!5883142))

(assert (=> b!4880461 m!5883140))

(assert (=> b!4880461 m!5883142))

(declare-fun m!5884166 () Bool)

(assert (=> b!4880461 m!5884166))

(assert (=> b!4880181 d!1568406))

(declare-fun b!4880462 () Bool)

(declare-fun e!3050122 () Bool)

(declare-fun e!3050126 () Bool)

(assert (=> b!4880462 (= e!3050122 e!3050126)))

(declare-fun res!2083336 () Bool)

(assert (=> b!4880462 (=> res!2083336 e!3050126)))

(assert (=> b!4880462 (= res!2083336 (not ((_ is Node!14618) (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun b!4880463 () Bool)

(declare-fun e!3050120 () Bool)

(declare-fun e!3050124 () Bool)

(assert (=> b!4880463 (= e!3050120 e!3050124)))

(declare-fun res!2083333 () Bool)

(assert (=> b!4880463 (=> (not res!2083333) (not e!3050124))))

(assert (=> b!4880463 (= res!2083333 (appendAssoc!289 (list!17565 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (list!17565 (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(declare-fun d!1568408 () Bool)

(declare-fun e!3050119 () Bool)

(assert (=> d!1568408 e!3050119))

(declare-fun res!2083331 () Bool)

(assert (=> d!1568408 (=> (not res!2083331) (not e!3050119))))

(declare-fun e!3050127 () Bool)

(assert (=> d!1568408 (= res!2083331 e!3050127)))

(declare-fun res!2083337 () Bool)

(assert (=> d!1568408 (=> res!2083337 e!3050127)))

(assert (=> d!1568408 (= res!2083337 (not ((_ is Node!14618) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568408 (= (appendAssocInst!885 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) true)))

(declare-fun b!4880464 () Bool)

(declare-fun e!3050121 () Bool)

(assert (=> b!4880464 (= e!3050121 (appendAssoc!289 (++!12218 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) (list!17565 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) (list!17565 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun b!4880465 () Bool)

(declare-fun e!3050125 () Bool)

(assert (=> b!4880465 (= e!3050125 e!3050120)))

(declare-fun res!2083334 () Bool)

(assert (=> b!4880465 (=> res!2083334 e!3050120)))

(assert (=> b!4880465 (= res!2083334 (not ((_ is Node!14618) (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880466 () Bool)

(declare-fun e!3050123 () Bool)

(assert (=> b!4880466 (= e!3050119 e!3050123)))

(declare-fun res!2083329 () Bool)

(assert (=> b!4880466 (=> res!2083329 e!3050123)))

(assert (=> b!4880466 (= res!2083329 (not ((_ is Node!14618) (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(declare-fun b!4880467 () Bool)

(assert (=> b!4880467 (= e!3050127 e!3050125)))

(declare-fun res!2083335 () Bool)

(assert (=> b!4880467 (=> (not res!2083335) (not e!3050125))))

(assert (=> b!4880467 (= res!2083335 (appendAssoc!289 (list!17565 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))

(declare-fun b!4880468 () Bool)

(assert (=> b!4880468 (= e!3050124 (appendAssoc!289 (list!17565 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (++!12218 (list!17565 (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (list!17565 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(declare-fun b!4880469 () Bool)

(assert (=> b!4880469 (= e!3050126 e!3050121)))

(declare-fun res!2083332 () Bool)

(assert (=> b!4880469 (=> (not res!2083332) (not e!3050121))))

(assert (=> b!4880469 (= res!2083332 (appendAssoc!289 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) (list!17565 (right!41043 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(declare-fun b!4880470 () Bool)

(assert (=> b!4880470 (= e!3050123 e!3050122)))

(declare-fun res!2083330 () Bool)

(assert (=> b!4880470 (=> (not res!2083330) (not e!3050122))))

(assert (=> b!4880470 (= res!2083330 (appendAssoc!289 (list!17565 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))) (list!17565 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))

(assert (= (and d!1568408 (not res!2083337)) b!4880467))

(assert (= (and b!4880467 res!2083335) b!4880465))

(assert (= (and b!4880465 (not res!2083334)) b!4880463))

(assert (= (and b!4880463 res!2083333) b!4880468))

(assert (= (and d!1568408 res!2083331) b!4880466))

(assert (= (and b!4880466 (not res!2083329)) b!4880470))

(assert (= (and b!4880470 res!2083330) b!4880462))

(assert (= (and b!4880462 (not res!2083336)) b!4880469))

(assert (= (and b!4880469 res!2083332) b!4880464))

(declare-fun m!5884168 () Bool)

(assert (=> b!4880463 m!5884168))

(declare-fun m!5884170 () Bool)

(assert (=> b!4880463 m!5884170))

(assert (=> b!4880463 m!5883534))

(assert (=> b!4880463 m!5884168))

(assert (=> b!4880463 m!5884170))

(assert (=> b!4880463 m!5883534))

(declare-fun m!5884172 () Bool)

(assert (=> b!4880463 m!5884172))

(assert (=> b!4880467 m!5883838))

(assert (=> b!4880467 m!5883840))

(assert (=> b!4880467 m!5883534))

(assert (=> b!4880467 m!5883838))

(assert (=> b!4880467 m!5883840))

(assert (=> b!4880467 m!5883534))

(declare-fun m!5884174 () Bool)

(assert (=> b!4880467 m!5884174))

(assert (=> b!4880469 m!5883532))

(declare-fun m!5884176 () Bool)

(assert (=> b!4880469 m!5884176))

(declare-fun m!5884178 () Bool)

(assert (=> b!4880469 m!5884178))

(assert (=> b!4880469 m!5883532))

(assert (=> b!4880469 m!5884176))

(assert (=> b!4880469 m!5884178))

(declare-fun m!5884180 () Bool)

(assert (=> b!4880469 m!5884180))

(assert (=> b!4880470 m!5883532))

(assert (=> b!4880470 m!5883846))

(assert (=> b!4880470 m!5883848))

(assert (=> b!4880470 m!5883532))

(assert (=> b!4880470 m!5883846))

(assert (=> b!4880470 m!5883848))

(declare-fun m!5884182 () Bool)

(assert (=> b!4880470 m!5884182))

(assert (=> b!4880464 m!5884178))

(assert (=> b!4880464 m!5883532))

(declare-fun m!5884184 () Bool)

(assert (=> b!4880464 m!5884184))

(assert (=> b!4880464 m!5884178))

(assert (=> b!4880464 m!5883848))

(declare-fun m!5884186 () Bool)

(assert (=> b!4880464 m!5884186))

(assert (=> b!4880464 m!5884176))

(assert (=> b!4880464 m!5883532))

(assert (=> b!4880464 m!5884176))

(assert (=> b!4880464 m!5884184))

(assert (=> b!4880464 m!5883848))

(assert (=> b!4880468 m!5883838))

(assert (=> b!4880468 m!5884168))

(declare-fun m!5884188 () Bool)

(assert (=> b!4880468 m!5884188))

(declare-fun m!5884190 () Bool)

(assert (=> b!4880468 m!5884190))

(assert (=> b!4880468 m!5884170))

(assert (=> b!4880468 m!5883534))

(assert (=> b!4880468 m!5884188))

(assert (=> b!4880468 m!5883838))

(assert (=> b!4880468 m!5883534))

(assert (=> b!4880468 m!5884170))

(assert (=> b!4880468 m!5884168))

(assert (=> d!1568156 d!1568408))

(declare-fun b!4880471 () Bool)

(declare-fun res!2083342 () Bool)

(declare-fun e!3050128 () Bool)

(assert (=> b!4880471 (=> (not res!2083342) (not e!3050128))))

(assert (=> b!4880471 (= res!2083342 (not (isEmpty!30031 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880472 () Bool)

(declare-fun e!3050129 () Bool)

(assert (=> b!4880472 (= e!3050129 e!3050128)))

(declare-fun res!2083340 () Bool)

(assert (=> b!4880472 (=> (not res!2083340) (not e!3050128))))

(assert (=> b!4880472 (= res!2083340 (<= (- 1) (- (height!1951 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(declare-fun b!4880473 () Bool)

(declare-fun res!2083338 () Bool)

(assert (=> b!4880473 (=> (not res!2083338) (not e!3050128))))

(assert (=> b!4880473 (= res!2083338 (isBalanced!3980 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun d!1568410 () Bool)

(declare-fun res!2083343 () Bool)

(assert (=> d!1568410 (=> res!2083343 e!3050129)))

(assert (=> d!1568410 (= res!2083343 (not ((_ is Node!14618) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568410 (= (isBalanced!3980 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) e!3050129)))

(declare-fun b!4880474 () Bool)

(declare-fun res!2083341 () Bool)

(assert (=> b!4880474 (=> (not res!2083341) (not e!3050128))))

(assert (=> b!4880474 (= res!2083341 (<= (- (height!1951 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) 1))))

(declare-fun b!4880475 () Bool)

(declare-fun res!2083339 () Bool)

(assert (=> b!4880475 (=> (not res!2083339) (not e!3050128))))

(assert (=> b!4880475 (= res!2083339 (isBalanced!3980 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4880476 () Bool)

(assert (=> b!4880476 (= e!3050128 (not (isEmpty!30031 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (= (and d!1568410 (not res!2083343)) b!4880472))

(assert (= (and b!4880472 res!2083340) b!4880474))

(assert (= (and b!4880474 res!2083341) b!4880473))

(assert (= (and b!4880473 res!2083338) b!4880475))

(assert (= (and b!4880475 res!2083339) b!4880471))

(assert (= (and b!4880471 res!2083342) b!4880476))

(declare-fun m!5884192 () Bool)

(assert (=> b!4880475 m!5884192))

(declare-fun m!5884194 () Bool)

(assert (=> b!4880473 m!5884194))

(declare-fun m!5884196 () Bool)

(assert (=> b!4880474 m!5884196))

(declare-fun m!5884198 () Bool)

(assert (=> b!4880474 m!5884198))

(assert (=> b!4880472 m!5884196))

(assert (=> b!4880472 m!5884198))

(declare-fun m!5884200 () Bool)

(assert (=> b!4880476 m!5884200))

(declare-fun m!5884202 () Bool)

(assert (=> b!4880471 m!5884202))

(assert (=> d!1568156 d!1568410))

(declare-fun d!1568412 () Bool)

(declare-fun res!2083344 () Bool)

(declare-fun e!3050130 () Bool)

(assert (=> d!1568412 (=> (not res!2083344) (not e!3050130))))

(assert (=> d!1568412 (= res!2083344 (= (csize!29466 (left!40713 (right!41043 t!4585))) (+ (size!36963 (left!40713 (left!40713 (right!41043 t!4585)))) (size!36963 (right!41043 (left!40713 (right!41043 t!4585)))))))))

(assert (=> d!1568412 (= (inv!72027 (left!40713 (right!41043 t!4585))) e!3050130)))

(declare-fun b!4880477 () Bool)

(declare-fun res!2083345 () Bool)

(assert (=> b!4880477 (=> (not res!2083345) (not e!3050130))))

(assert (=> b!4880477 (= res!2083345 (and (not (= (left!40713 (left!40713 (right!41043 t!4585))) Empty!14618)) (not (= (right!41043 (left!40713 (right!41043 t!4585))) Empty!14618))))))

(declare-fun b!4880478 () Bool)

(declare-fun res!2083346 () Bool)

(assert (=> b!4880478 (=> (not res!2083346) (not e!3050130))))

(assert (=> b!4880478 (= res!2083346 (= (cheight!14829 (left!40713 (right!41043 t!4585))) (+ (max!0 (height!1951 (left!40713 (left!40713 (right!41043 t!4585)))) (height!1951 (right!41043 (left!40713 (right!41043 t!4585))))) 1)))))

(declare-fun b!4880479 () Bool)

(assert (=> b!4880479 (= e!3050130 (<= 0 (cheight!14829 (left!40713 (right!41043 t!4585)))))))

(assert (= (and d!1568412 res!2083344) b!4880477))

(assert (= (and b!4880477 res!2083345) b!4880478))

(assert (= (and b!4880478 res!2083346) b!4880479))

(declare-fun m!5884204 () Bool)

(assert (=> d!1568412 m!5884204))

(declare-fun m!5884206 () Bool)

(assert (=> d!1568412 m!5884206))

(assert (=> b!4880478 m!5883934))

(assert (=> b!4880478 m!5883936))

(assert (=> b!4880478 m!5883934))

(assert (=> b!4880478 m!5883936))

(declare-fun m!5884208 () Bool)

(assert (=> b!4880478 m!5884208))

(assert (=> b!4880143 d!1568412))

(declare-fun d!1568414 () Bool)

(declare-fun lt!1999272 () Bool)

(assert (=> d!1568414 (= lt!1999272 (isEmpty!30033 (list!17565 (left!40713 (left!40713 t!4585)))))))

(assert (=> d!1568414 (= lt!1999272 (= (size!36963 (left!40713 (left!40713 t!4585))) 0))))

(assert (=> d!1568414 (= (isEmpty!30031 (left!40713 (left!40713 t!4585))) lt!1999272)))

(declare-fun bs!1175364 () Bool)

(assert (= bs!1175364 d!1568414))

(assert (=> bs!1175364 m!5883152))

(assert (=> bs!1175364 m!5883152))

(declare-fun m!5884210 () Bool)

(assert (=> bs!1175364 m!5884210))

(assert (=> bs!1175364 m!5883474))

(assert (=> b!4880201 d!1568414))

(assert (=> b!4879953 d!1568266))

(assert (=> b!4879953 d!1568268))

(assert (=> b!4880169 d!1568270))

(assert (=> b!4880169 d!1568272))

(assert (=> b!4880169 d!1568274))

(assert (=> b!4880169 d!1568276))

(declare-fun d!1568416 () Bool)

(assert (=> d!1568416 (= (height!1951 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (ite ((_ is Empty!14618) (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) 0 (ite ((_ is Leaf!24360) (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) 1 (cheight!14829 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))))))))

(assert (=> b!4880191 d!1568416))

(declare-fun d!1568418 () Bool)

(assert (=> d!1568418 (= (height!1951 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) (ite ((_ is Empty!14618) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) 0 (ite ((_ is Leaf!24360) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) 1 (cheight!14829 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))))

(assert (=> b!4880191 d!1568418))

(declare-fun d!1568420 () Bool)

(declare-fun lt!1999273 () Int)

(assert (=> d!1568420 (= lt!1999273 (size!36961 (list!17565 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))))))

(assert (=> d!1568420 (= lt!1999273 (ite ((_ is Empty!14618) (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) 0 (ite ((_ is Leaf!24360) (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (csize!29467 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (csize!29466 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))))))))

(assert (=> d!1568420 (= (size!36963 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) lt!1999273)))

(declare-fun bs!1175365 () Bool)

(assert (= bs!1175365 d!1568420))

(assert (=> bs!1175365 m!5883578))

(assert (=> bs!1175365 m!5883578))

(assert (=> bs!1175365 m!5884024))

(assert (=> b!4880191 d!1568420))

(declare-fun d!1568422 () Bool)

(assert (=> d!1568422 (= (max!0 (height!1951 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (height!1951 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))) (ite (< (height!1951 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585))))) (height!1951 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))) (height!1951 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) (height!1951 (ite c!829928 (ite c!829922 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338759) (ite c!829926 lt!1999178 (right!41043 (left!40713 t!4585)))))))))

(assert (=> b!4880191 d!1568422))

(declare-fun lt!1999274 () Int)

(declare-fun d!1568424 () Bool)

(assert (=> d!1568424 (= lt!1999274 (size!36961 (list!17565 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585))))))))

(assert (=> d!1568424 (= lt!1999274 (ite ((_ is Empty!14618) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) 0 (ite ((_ is Leaf!24360) (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) (csize!29467 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) (csize!29466 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))))))))

(assert (=> d!1568424 (= (size!36963 (ite c!829928 (ite c!829922 call!338759 lt!1999177) (ite c!829926 (right!41043 (left!40713 t!4585)) (right!41043 t!4585)))) lt!1999274)))

(declare-fun bs!1175366 () Bool)

(assert (= bs!1175366 d!1568424))

(assert (=> bs!1175366 m!5883580))

(assert (=> bs!1175366 m!5883580))

(assert (=> bs!1175366 m!5884026))

(assert (=> b!4880191 d!1568424))

(declare-fun d!1568426 () Bool)

(declare-fun res!2083347 () Bool)

(declare-fun e!3050131 () Bool)

(assert (=> d!1568426 (=> (not res!2083347) (not e!3050131))))

(assert (=> d!1568426 (= res!2083347 (<= (size!36961 (list!17567 (xs!17928 (left!40713 (left!40713 t!4585))))) 512))))

(assert (=> d!1568426 (= (inv!72028 (left!40713 (left!40713 t!4585))) e!3050131)))

(declare-fun b!4880480 () Bool)

(declare-fun res!2083348 () Bool)

(assert (=> b!4880480 (=> (not res!2083348) (not e!3050131))))

(assert (=> b!4880480 (= res!2083348 (= (csize!29467 (left!40713 (left!40713 t!4585))) (size!36961 (list!17567 (xs!17928 (left!40713 (left!40713 t!4585)))))))))

(declare-fun b!4880481 () Bool)

(assert (=> b!4880481 (= e!3050131 (and (> (csize!29467 (left!40713 (left!40713 t!4585))) 0) (<= (csize!29467 (left!40713 (left!40713 t!4585))) 512)))))

(assert (= (and d!1568426 res!2083347) b!4880480))

(assert (= (and b!4880480 res!2083348) b!4880481))

(assert (=> d!1568426 m!5883776))

(assert (=> d!1568426 m!5883776))

(declare-fun m!5884212 () Bool)

(assert (=> d!1568426 m!5884212))

(assert (=> b!4880480 m!5883776))

(assert (=> b!4880480 m!5883776))

(assert (=> b!4880480 m!5884212))

(assert (=> b!4880139 d!1568426))

(declare-fun d!1568428 () Bool)

(declare-fun lt!1999275 () Int)

(assert (=> d!1568428 (>= lt!1999275 0)))

(declare-fun e!3050132 () Int)

(assert (=> d!1568428 (= lt!1999275 e!3050132)))

(declare-fun c!830098 () Bool)

(assert (=> d!1568428 (= c!830098 ((_ is Nil!56033) lt!1999216))))

(assert (=> d!1568428 (= (size!36961 lt!1999216) lt!1999275)))

(declare-fun b!4880482 () Bool)

(assert (=> b!4880482 (= e!3050132 0)))

(declare-fun b!4880483 () Bool)

(assert (=> b!4880483 (= e!3050132 (+ 1 (size!36961 (t!364793 lt!1999216))))))

(assert (= (and d!1568428 c!830098) b!4880482))

(assert (= (and d!1568428 (not c!830098)) b!4880483))

(declare-fun m!5884214 () Bool)

(assert (=> b!4880483 m!5884214))

(assert (=> b!4880062 d!1568428))

(declare-fun d!1568430 () Bool)

(declare-fun lt!1999276 () Int)

(assert (=> d!1568430 (>= lt!1999276 0)))

(declare-fun e!3050133 () Int)

(assert (=> d!1568430 (= lt!1999276 e!3050133)))

(declare-fun c!830099 () Bool)

(assert (=> d!1568430 (= c!830099 ((_ is Nil!56033) (list!17565 (left!40713 t!4585))))))

(assert (=> d!1568430 (= (size!36961 (list!17565 (left!40713 t!4585))) lt!1999276)))

(declare-fun b!4880484 () Bool)

(assert (=> b!4880484 (= e!3050133 0)))

(declare-fun b!4880485 () Bool)

(assert (=> b!4880485 (= e!3050133 (+ 1 (size!36961 (t!364793 (list!17565 (left!40713 t!4585))))))))

(assert (= (and d!1568430 c!830099) b!4880484))

(assert (= (and d!1568430 (not c!830099)) b!4880485))

(assert (=> b!4880485 m!5883904))

(assert (=> b!4880062 d!1568430))

(declare-fun d!1568432 () Bool)

(declare-fun lt!1999277 () Int)

(assert (=> d!1568432 (>= lt!1999277 0)))

(declare-fun e!3050134 () Int)

(assert (=> d!1568432 (= lt!1999277 e!3050134)))

(declare-fun c!830100 () Bool)

(assert (=> d!1568432 (= c!830100 ((_ is Nil!56033) (list!17565 (right!41043 t!4585))))))

(assert (=> d!1568432 (= (size!36961 (list!17565 (right!41043 t!4585))) lt!1999277)))

(declare-fun b!4880486 () Bool)

(assert (=> b!4880486 (= e!3050134 0)))

(declare-fun b!4880487 () Bool)

(assert (=> b!4880487 (= e!3050134 (+ 1 (size!36961 (t!364793 (list!17565 (right!41043 t!4585))))))))

(assert (= (and d!1568432 c!830100) b!4880486))

(assert (= (and d!1568432 (not c!830100)) b!4880487))

(declare-fun m!5884216 () Bool)

(assert (=> b!4880487 m!5884216))

(assert (=> b!4880062 d!1568432))

(declare-fun b!4880488 () Bool)

(declare-fun e!3050136 () List!56157)

(assert (=> b!4880488 (= e!3050136 (list!17565 (right!41043 (left!40713 lt!1999152))))))

(declare-fun b!4880490 () Bool)

(declare-fun res!2083349 () Bool)

(declare-fun e!3050135 () Bool)

(assert (=> b!4880490 (=> (not res!2083349) (not e!3050135))))

(declare-fun lt!1999278 () List!56157)

(assert (=> b!4880490 (= res!2083349 (= (size!36961 lt!1999278) (+ (size!36961 (list!17565 (left!40713 (left!40713 lt!1999152)))) (size!36961 (list!17565 (right!41043 (left!40713 lt!1999152)))))))))

(declare-fun b!4880491 () Bool)

(assert (=> b!4880491 (= e!3050135 (or (not (= (list!17565 (right!41043 (left!40713 lt!1999152))) Nil!56033)) (= lt!1999278 (list!17565 (left!40713 (left!40713 lt!1999152))))))))

(declare-fun d!1568434 () Bool)

(assert (=> d!1568434 e!3050135))

(declare-fun res!2083350 () Bool)

(assert (=> d!1568434 (=> (not res!2083350) (not e!3050135))))

(assert (=> d!1568434 (= res!2083350 (= (content!10010 lt!1999278) ((_ map or) (content!10010 (list!17565 (left!40713 (left!40713 lt!1999152)))) (content!10010 (list!17565 (right!41043 (left!40713 lt!1999152)))))))))

(assert (=> d!1568434 (= lt!1999278 e!3050136)))

(declare-fun c!830101 () Bool)

(assert (=> d!1568434 (= c!830101 ((_ is Nil!56033) (list!17565 (left!40713 (left!40713 lt!1999152)))))))

(assert (=> d!1568434 (= (++!12218 (list!17565 (left!40713 (left!40713 lt!1999152))) (list!17565 (right!41043 (left!40713 lt!1999152)))) lt!1999278)))

(declare-fun b!4880489 () Bool)

(assert (=> b!4880489 (= e!3050136 (Cons!56033 (h!62481 (list!17565 (left!40713 (left!40713 lt!1999152)))) (++!12218 (t!364793 (list!17565 (left!40713 (left!40713 lt!1999152)))) (list!17565 (right!41043 (left!40713 lt!1999152))))))))

(assert (= (and d!1568434 c!830101) b!4880488))

(assert (= (and d!1568434 (not c!830101)) b!4880489))

(assert (= (and d!1568434 res!2083350) b!4880490))

(assert (= (and b!4880490 res!2083349) b!4880491))

(declare-fun m!5884218 () Bool)

(assert (=> b!4880490 m!5884218))

(assert (=> b!4880490 m!5883422))

(declare-fun m!5884220 () Bool)

(assert (=> b!4880490 m!5884220))

(assert (=> b!4880490 m!5883424))

(declare-fun m!5884222 () Bool)

(assert (=> b!4880490 m!5884222))

(declare-fun m!5884224 () Bool)

(assert (=> d!1568434 m!5884224))

(assert (=> d!1568434 m!5883422))

(declare-fun m!5884226 () Bool)

(assert (=> d!1568434 m!5884226))

(assert (=> d!1568434 m!5883424))

(declare-fun m!5884228 () Bool)

(assert (=> d!1568434 m!5884228))

(assert (=> b!4880489 m!5883424))

(declare-fun m!5884230 () Bool)

(assert (=> b!4880489 m!5884230))

(assert (=> b!4880106 d!1568434))

(declare-fun d!1568436 () Bool)

(declare-fun c!830102 () Bool)

(assert (=> d!1568436 (= c!830102 ((_ is Empty!14618) (left!40713 (left!40713 lt!1999152))))))

(declare-fun e!3050137 () List!56157)

(assert (=> d!1568436 (= (list!17565 (left!40713 (left!40713 lt!1999152))) e!3050137)))

(declare-fun b!4880492 () Bool)

(assert (=> b!4880492 (= e!3050137 Nil!56033)))

(declare-fun b!4880494 () Bool)

(declare-fun e!3050138 () List!56157)

(assert (=> b!4880494 (= e!3050138 (list!17567 (xs!17928 (left!40713 (left!40713 lt!1999152)))))))

(declare-fun b!4880495 () Bool)

(assert (=> b!4880495 (= e!3050138 (++!12218 (list!17565 (left!40713 (left!40713 (left!40713 lt!1999152)))) (list!17565 (right!41043 (left!40713 (left!40713 lt!1999152))))))))

(declare-fun b!4880493 () Bool)

(assert (=> b!4880493 (= e!3050137 e!3050138)))

(declare-fun c!830103 () Bool)

(assert (=> b!4880493 (= c!830103 ((_ is Leaf!24360) (left!40713 (left!40713 lt!1999152))))))

(assert (= (and d!1568436 c!830102) b!4880492))

(assert (= (and d!1568436 (not c!830102)) b!4880493))

(assert (= (and b!4880493 c!830103) b!4880494))

(assert (= (and b!4880493 (not c!830103)) b!4880495))

(declare-fun m!5884232 () Bool)

(assert (=> b!4880494 m!5884232))

(declare-fun m!5884234 () Bool)

(assert (=> b!4880495 m!5884234))

(declare-fun m!5884236 () Bool)

(assert (=> b!4880495 m!5884236))

(assert (=> b!4880495 m!5884234))

(assert (=> b!4880495 m!5884236))

(declare-fun m!5884238 () Bool)

(assert (=> b!4880495 m!5884238))

(assert (=> b!4880106 d!1568436))

(declare-fun d!1568438 () Bool)

(declare-fun c!830104 () Bool)

(assert (=> d!1568438 (= c!830104 ((_ is Empty!14618) (right!41043 (left!40713 lt!1999152))))))

(declare-fun e!3050139 () List!56157)

(assert (=> d!1568438 (= (list!17565 (right!41043 (left!40713 lt!1999152))) e!3050139)))

(declare-fun b!4880496 () Bool)

(assert (=> b!4880496 (= e!3050139 Nil!56033)))

(declare-fun b!4880498 () Bool)

(declare-fun e!3050140 () List!56157)

(assert (=> b!4880498 (= e!3050140 (list!17567 (xs!17928 (right!41043 (left!40713 lt!1999152)))))))

(declare-fun b!4880499 () Bool)

(assert (=> b!4880499 (= e!3050140 (++!12218 (list!17565 (left!40713 (right!41043 (left!40713 lt!1999152)))) (list!17565 (right!41043 (right!41043 (left!40713 lt!1999152))))))))

(declare-fun b!4880497 () Bool)

(assert (=> b!4880497 (= e!3050139 e!3050140)))

(declare-fun c!830105 () Bool)

(assert (=> b!4880497 (= c!830105 ((_ is Leaf!24360) (right!41043 (left!40713 lt!1999152))))))

(assert (= (and d!1568438 c!830104) b!4880496))

(assert (= (and d!1568438 (not c!830104)) b!4880497))

(assert (= (and b!4880497 c!830105) b!4880498))

(assert (= (and b!4880497 (not c!830105)) b!4880499))

(declare-fun m!5884240 () Bool)

(assert (=> b!4880498 m!5884240))

(declare-fun m!5884242 () Bool)

(assert (=> b!4880499 m!5884242))

(declare-fun m!5884244 () Bool)

(assert (=> b!4880499 m!5884244))

(assert (=> b!4880499 m!5884242))

(assert (=> b!4880499 m!5884244))

(declare-fun m!5884246 () Bool)

(assert (=> b!4880499 m!5884246))

(assert (=> b!4880106 d!1568438))

(declare-fun d!1568440 () Bool)

(declare-fun e!3050141 () Bool)

(assert (=> d!1568440 e!3050141))

(declare-fun res!2083351 () Bool)

(assert (=> d!1568440 (=> (not res!2083351) (not e!3050141))))

(declare-fun lt!1999279 () List!56157)

(assert (=> d!1568440 (= res!2083351 (= (content!10010 lt!1999279) (ite (<= (- 1 1) 0) ((as const (Array T!99300 Bool)) false) (store ((as const (Array T!99300 Bool)) false) v!5488 true))))))

(declare-fun e!3050142 () List!56157)

(assert (=> d!1568440 (= lt!1999279 e!3050142)))

(declare-fun c!830106 () Bool)

(assert (=> d!1568440 (= c!830106 (<= (- 1 1) 0))))

(assert (=> d!1568440 (= (fill!243 (- 1 1) v!5488) lt!1999279)))

(declare-fun b!4880500 () Bool)

(assert (=> b!4880500 (= e!3050142 Nil!56033)))

(declare-fun b!4880501 () Bool)

(assert (=> b!4880501 (= e!3050142 (Cons!56033 v!5488 (fill!243 (- (- 1 1) 1) v!5488)))))

(declare-fun b!4880502 () Bool)

(assert (=> b!4880502 (= e!3050141 (= (size!36961 lt!1999279) (ite (<= (- 1 1) 0) 0 (- 1 1))))))

(assert (= (and d!1568440 c!830106) b!4880500))

(assert (= (and d!1568440 (not c!830106)) b!4880501))

(assert (= (and d!1568440 res!2083351) b!4880502))

(declare-fun m!5884248 () Bool)

(assert (=> d!1568440 m!5884248))

(assert (=> d!1568440 m!5883182))

(declare-fun m!5884250 () Bool)

(assert (=> b!4880501 m!5884250))

(declare-fun m!5884252 () Bool)

(assert (=> b!4880502 m!5884252))

(assert (=> b!4879981 d!1568440))

(declare-fun d!1568442 () Bool)

(declare-fun lt!1999280 () Int)

(assert (=> d!1568442 (= lt!1999280 (size!36961 (list!17565 (left!40713 (left!40713 t!4585)))))))

(assert (=> d!1568442 (= lt!1999280 (ite ((_ is Empty!14618) (left!40713 (left!40713 t!4585))) 0 (ite ((_ is Leaf!24360) (left!40713 (left!40713 t!4585))) (csize!29467 (left!40713 (left!40713 t!4585))) (csize!29466 (left!40713 (left!40713 t!4585))))))))

(assert (=> d!1568442 (= (size!36963 (left!40713 (left!40713 t!4585))) lt!1999280)))

(declare-fun bs!1175367 () Bool)

(assert (= bs!1175367 d!1568442))

(assert (=> bs!1175367 m!5883152))

(assert (=> bs!1175367 m!5883152))

(assert (=> bs!1175367 m!5883794))

(assert (=> d!1568142 d!1568442))

(declare-fun d!1568444 () Bool)

(declare-fun lt!1999281 () Int)

(assert (=> d!1568444 (= lt!1999281 (size!36961 (list!17565 (right!41043 (left!40713 t!4585)))))))

(assert (=> d!1568444 (= lt!1999281 (ite ((_ is Empty!14618) (right!41043 (left!40713 t!4585))) 0 (ite ((_ is Leaf!24360) (right!41043 (left!40713 t!4585))) (csize!29467 (right!41043 (left!40713 t!4585))) (csize!29466 (right!41043 (left!40713 t!4585))))))))

(assert (=> d!1568444 (= (size!36963 (right!41043 (left!40713 t!4585))) lt!1999281)))

(declare-fun bs!1175368 () Bool)

(assert (= bs!1175368 d!1568444))

(assert (=> bs!1175368 m!5883154))

(assert (=> bs!1175368 m!5883154))

(declare-fun m!5884254 () Bool)

(assert (=> bs!1175368 m!5884254))

(assert (=> d!1568142 d!1568444))

(declare-fun d!1568446 () Bool)

(assert (=> d!1568446 (= (isEmpty!30033 (list!17565 (right!41043 lt!1999152))) ((_ is Nil!56033) (list!17565 (right!41043 lt!1999152))))))

(assert (=> d!1568108 d!1568446))

(assert (=> d!1568108 d!1568124))

(declare-fun d!1568448 () Bool)

(declare-fun lt!1999282 () Int)

(assert (=> d!1568448 (= lt!1999282 (size!36961 (list!17565 (right!41043 lt!1999152))))))

(assert (=> d!1568448 (= lt!1999282 (ite ((_ is Empty!14618) (right!41043 lt!1999152)) 0 (ite ((_ is Leaf!24360) (right!41043 lt!1999152)) (csize!29467 (right!41043 lt!1999152)) (csize!29466 (right!41043 lt!1999152)))))))

(assert (=> d!1568448 (= (size!36963 (right!41043 lt!1999152)) lt!1999282)))

(declare-fun bs!1175369 () Bool)

(assert (= bs!1175369 d!1568448))

(assert (=> bs!1175369 m!5882912))

(assert (=> bs!1175369 m!5882912))

(assert (=> bs!1175369 m!5883410))

(assert (=> d!1568108 d!1568448))

(declare-fun b!4880503 () Bool)

(declare-fun res!2083356 () Bool)

(declare-fun e!3050143 () Bool)

(assert (=> b!4880503 (=> (not res!2083356) (not e!3050143))))

(assert (=> b!4880503 (= res!2083356 (not (isEmpty!30031 (left!40713 (left!40713 (right!41043 lt!1999152))))))))

(declare-fun b!4880504 () Bool)

(declare-fun e!3050144 () Bool)

(assert (=> b!4880504 (= e!3050144 e!3050143)))

(declare-fun res!2083354 () Bool)

(assert (=> b!4880504 (=> (not res!2083354) (not e!3050143))))

(assert (=> b!4880504 (= res!2083354 (<= (- 1) (- (height!1951 (left!40713 (left!40713 (right!41043 lt!1999152)))) (height!1951 (right!41043 (left!40713 (right!41043 lt!1999152)))))))))

(declare-fun b!4880505 () Bool)

(declare-fun res!2083352 () Bool)

(assert (=> b!4880505 (=> (not res!2083352) (not e!3050143))))

(assert (=> b!4880505 (= res!2083352 (isBalanced!3980 (left!40713 (left!40713 (right!41043 lt!1999152)))))))

(declare-fun d!1568450 () Bool)

(declare-fun res!2083357 () Bool)

(assert (=> d!1568450 (=> res!2083357 e!3050144)))

(assert (=> d!1568450 (= res!2083357 (not ((_ is Node!14618) (left!40713 (right!41043 lt!1999152)))))))

(assert (=> d!1568450 (= (isBalanced!3980 (left!40713 (right!41043 lt!1999152))) e!3050144)))

(declare-fun b!4880506 () Bool)

(declare-fun res!2083355 () Bool)

(assert (=> b!4880506 (=> (not res!2083355) (not e!3050143))))

(assert (=> b!4880506 (= res!2083355 (<= (- (height!1951 (left!40713 (left!40713 (right!41043 lt!1999152)))) (height!1951 (right!41043 (left!40713 (right!41043 lt!1999152))))) 1))))

(declare-fun b!4880507 () Bool)

(declare-fun res!2083353 () Bool)

(assert (=> b!4880507 (=> (not res!2083353) (not e!3050143))))

(assert (=> b!4880507 (= res!2083353 (isBalanced!3980 (right!41043 (left!40713 (right!41043 lt!1999152)))))))

(declare-fun b!4880508 () Bool)

(assert (=> b!4880508 (= e!3050143 (not (isEmpty!30031 (right!41043 (left!40713 (right!41043 lt!1999152))))))))

(assert (= (and d!1568450 (not res!2083357)) b!4880504))

(assert (= (and b!4880504 res!2083354) b!4880506))

(assert (= (and b!4880506 res!2083355) b!4880505))

(assert (= (and b!4880505 res!2083352) b!4880507))

(assert (= (and b!4880507 res!2083353) b!4880503))

(assert (= (and b!4880503 res!2083356) b!4880508))

(declare-fun m!5884256 () Bool)

(assert (=> b!4880507 m!5884256))

(declare-fun m!5884258 () Bool)

(assert (=> b!4880505 m!5884258))

(declare-fun m!5884260 () Bool)

(assert (=> b!4880506 m!5884260))

(declare-fun m!5884262 () Bool)

(assert (=> b!4880506 m!5884262))

(assert (=> b!4880504 m!5884260))

(assert (=> b!4880504 m!5884262))

(declare-fun m!5884264 () Bool)

(assert (=> b!4880508 m!5884264))

(declare-fun m!5884266 () Bool)

(assert (=> b!4880503 m!5884266))

(assert (=> b!4879988 d!1568450))

(declare-fun d!1568452 () Bool)

(declare-fun res!2083358 () Bool)

(declare-fun e!3050145 () Bool)

(assert (=> d!1568452 (=> (not res!2083358) (not e!3050145))))

(assert (=> d!1568452 (= res!2083358 (<= (size!36961 (list!17567 (xs!17928 (right!41043 (left!40713 t!4585))))) 512))))

(assert (=> d!1568452 (= (inv!72028 (right!41043 (left!40713 t!4585))) e!3050145)))

(declare-fun b!4880509 () Bool)

(declare-fun res!2083359 () Bool)

(assert (=> b!4880509 (=> (not res!2083359) (not e!3050145))))

(assert (=> b!4880509 (= res!2083359 (= (csize!29467 (right!41043 (left!40713 t!4585))) (size!36961 (list!17567 (xs!17928 (right!41043 (left!40713 t!4585)))))))))

(declare-fun b!4880510 () Bool)

(assert (=> b!4880510 (= e!3050145 (and (> (csize!29467 (right!41043 (left!40713 t!4585))) 0) (<= (csize!29467 (right!41043 (left!40713 t!4585))) 512)))))

(assert (= (and d!1568452 res!2083358) b!4880509))

(assert (= (and b!4880509 res!2083359) b!4880510))

(assert (=> d!1568452 m!5883784))

(assert (=> d!1568452 m!5883784))

(declare-fun m!5884268 () Bool)

(assert (=> d!1568452 m!5884268))

(assert (=> b!4880509 m!5883784))

(assert (=> b!4880509 m!5883784))

(assert (=> b!4880509 m!5884268))

(assert (=> b!4880142 d!1568452))

(declare-fun bm!338814 () Bool)

(declare-fun call!338819 () List!56157)

(assert (=> bm!338814 (= call!338819 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 t!4585))))))

(declare-fun bm!338815 () Bool)

(declare-fun call!338821 () List!56157)

(assert (=> bm!338815 (= call!338821 (++!12218 (list!17565 (left!40713 t!4585)) (list!17565 (right!41043 t!4585))))))

(declare-fun bm!338816 () Bool)

(declare-fun call!338820 () List!56157)

(assert (=> bm!338816 (= call!338820 (++!12218 call!338819 (list!17565 (right!41043 t!4585))))))

(declare-fun d!1568454 () Bool)

(declare-fun e!3050146 () Bool)

(assert (=> d!1568454 e!3050146))

(declare-fun c!830107 () Bool)

(assert (=> d!1568454 (= c!830107 ((_ is Nil!56033) (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(assert (=> d!1568454 (= (appendAssoc!289 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) (list!17565 (left!40713 t!4585)) (list!17565 (right!41043 t!4585))) true)))

(declare-fun b!4880511 () Bool)

(declare-fun call!338822 () List!56157)

(assert (=> b!4880511 (= e!3050146 (= call!338820 call!338822))))

(declare-fun lt!1999283 () Bool)

(assert (=> b!4880511 (= lt!1999283 (appendAssoc!289 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (left!40713 t!4585)) (list!17565 (right!41043 t!4585))))))

(declare-fun bm!338817 () Bool)

(assert (=> bm!338817 (= call!338822 (++!12218 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1)) call!338821))))

(declare-fun b!4880512 () Bool)

(assert (=> b!4880512 (= e!3050146 (= call!338820 call!338822))))

(assert (= (and d!1568454 c!830107) b!4880512))

(assert (= (and d!1568454 (not c!830107)) b!4880511))

(assert (= (or b!4880512 b!4880511) bm!338814))

(assert (= (or b!4880512 b!4880511) bm!338815))

(assert (= (or b!4880512 b!4880511) bm!338817))

(assert (= (or b!4880512 b!4880511) bm!338816))

(assert (=> bm!338814 m!5882882))

(assert (=> bm!338814 m!5882918))

(declare-fun m!5884270 () Bool)

(assert (=> bm!338814 m!5884270))

(assert (=> bm!338816 m!5882920))

(declare-fun m!5884272 () Bool)

(assert (=> bm!338816 m!5884272))

(assert (=> bm!338815 m!5882918))

(assert (=> bm!338815 m!5882920))

(assert (=> bm!338815 m!5882922))

(assert (=> bm!338817 m!5882882))

(declare-fun m!5884274 () Bool)

(assert (=> bm!338817 m!5884274))

(assert (=> b!4880511 m!5882918))

(assert (=> b!4880511 m!5882920))

(declare-fun m!5884276 () Bool)

(assert (=> b!4880511 m!5884276))

(assert (=> b!4879948 d!1568454))

(assert (=> b!4879948 d!1568162))

(assert (=> b!4879948 d!1568100))

(assert (=> b!4879948 d!1568106))

(declare-fun d!1568456 () Bool)

(declare-fun lt!1999284 () Bool)

(assert (=> d!1568456 (= lt!1999284 (isEmpty!30033 (list!17565 (left!40713 (right!41043 t!4585)))))))

(assert (=> d!1568456 (= lt!1999284 (= (size!36963 (left!40713 (right!41043 t!4585))) 0))))

(assert (=> d!1568456 (= (isEmpty!30031 (left!40713 (right!41043 t!4585))) lt!1999284)))

(declare-fun bs!1175370 () Bool)

(assert (= bs!1175370 d!1568456))

(assert (=> bs!1175370 m!5883368))

(assert (=> bs!1175370 m!5883368))

(declare-fun m!5884278 () Bool)

(assert (=> bs!1175370 m!5884278))

(assert (=> bs!1175370 m!5883598))

(assert (=> b!4880192 d!1568456))

(declare-fun d!1568458 () Bool)

(declare-fun lt!1999285 () Int)

(assert (=> d!1568458 (>= lt!1999285 0)))

(declare-fun e!3050147 () Int)

(assert (=> d!1568458 (= lt!1999285 e!3050147)))

(declare-fun c!830108 () Bool)

(assert (=> d!1568458 (= c!830108 ((_ is Nil!56033) lt!1999220))))

(assert (=> d!1568458 (= (size!36961 lt!1999220) lt!1999285)))

(declare-fun b!4880513 () Bool)

(assert (=> b!4880513 (= e!3050147 0)))

(declare-fun b!4880514 () Bool)

(assert (=> b!4880514 (= e!3050147 (+ 1 (size!36961 (t!364793 lt!1999220))))))

(assert (= (and d!1568458 c!830108) b!4880513))

(assert (= (and d!1568458 (not c!830108)) b!4880514))

(declare-fun m!5884280 () Bool)

(assert (=> b!4880514 m!5884280))

(assert (=> b!4880101 d!1568458))

(declare-fun d!1568460 () Bool)

(declare-fun lt!1999286 () Int)

(assert (=> d!1568460 (>= lt!1999286 0)))

(declare-fun e!3050148 () Int)

(assert (=> d!1568460 (= lt!1999286 e!3050148)))

(declare-fun c!830109 () Bool)

(assert (=> d!1568460 (= c!830109 ((_ is Nil!56033) (list!17565 (left!40713 lt!1999152))))))

(assert (=> d!1568460 (= (size!36961 (list!17565 (left!40713 lt!1999152))) lt!1999286)))

(declare-fun b!4880515 () Bool)

(assert (=> b!4880515 (= e!3050148 0)))

(declare-fun b!4880516 () Bool)

(assert (=> b!4880516 (= e!3050148 (+ 1 (size!36961 (t!364793 (list!17565 (left!40713 lt!1999152))))))))

(assert (= (and d!1568460 c!830109) b!4880515))

(assert (= (and d!1568460 (not c!830109)) b!4880516))

(assert (=> b!4880516 m!5884058))

(assert (=> b!4880101 d!1568460))

(declare-fun d!1568462 () Bool)

(declare-fun lt!1999287 () Int)

(assert (=> d!1568462 (>= lt!1999287 0)))

(declare-fun e!3050149 () Int)

(assert (=> d!1568462 (= lt!1999287 e!3050149)))

(declare-fun c!830110 () Bool)

(assert (=> d!1568462 (= c!830110 ((_ is Nil!56033) (list!17565 (right!41043 lt!1999152))))))

(assert (=> d!1568462 (= (size!36961 (list!17565 (right!41043 lt!1999152))) lt!1999287)))

(declare-fun b!4880517 () Bool)

(assert (=> b!4880517 (= e!3050149 0)))

(declare-fun b!4880518 () Bool)

(assert (=> b!4880518 (= e!3050149 (+ 1 (size!36961 (t!364793 (list!17565 (right!41043 lt!1999152))))))))

(assert (= (and d!1568462 c!830110) b!4880517))

(assert (= (and d!1568462 (not c!830110)) b!4880518))

(declare-fun m!5884282 () Bool)

(assert (=> b!4880518 m!5884282))

(assert (=> b!4880101 d!1568462))

(declare-fun d!1568464 () Bool)

(assert (=> d!1568464 (= (list!17567 (xs!17928 (right!41043 lt!1999152))) (innerList!14706 (xs!17928 (right!41043 lt!1999152))))))

(assert (=> b!4880109 d!1568464))

(declare-fun b!4880519 () Bool)

(declare-fun res!2083364 () Bool)

(declare-fun e!3050150 () Bool)

(assert (=> b!4880519 (=> (not res!2083364) (not e!3050150))))

(assert (=> b!4880519 (= res!2083364 (not (isEmpty!30031 (left!40713 (right!41043 (right!41043 t!4585))))))))

(declare-fun b!4880520 () Bool)

(declare-fun e!3050151 () Bool)

(assert (=> b!4880520 (= e!3050151 e!3050150)))

(declare-fun res!2083362 () Bool)

(assert (=> b!4880520 (=> (not res!2083362) (not e!3050150))))

(assert (=> b!4880520 (= res!2083362 (<= (- 1) (- (height!1951 (left!40713 (right!41043 (right!41043 t!4585)))) (height!1951 (right!41043 (right!41043 (right!41043 t!4585)))))))))

(declare-fun b!4880521 () Bool)

(declare-fun res!2083360 () Bool)

(assert (=> b!4880521 (=> (not res!2083360) (not e!3050150))))

(assert (=> b!4880521 (= res!2083360 (isBalanced!3980 (left!40713 (right!41043 (right!41043 t!4585)))))))

(declare-fun d!1568466 () Bool)

(declare-fun res!2083365 () Bool)

(assert (=> d!1568466 (=> res!2083365 e!3050151)))

(assert (=> d!1568466 (= res!2083365 (not ((_ is Node!14618) (right!41043 (right!41043 t!4585)))))))

(assert (=> d!1568466 (= (isBalanced!3980 (right!41043 (right!41043 t!4585))) e!3050151)))

(declare-fun b!4880522 () Bool)

(declare-fun res!2083363 () Bool)

(assert (=> b!4880522 (=> (not res!2083363) (not e!3050150))))

(assert (=> b!4880522 (= res!2083363 (<= (- (height!1951 (left!40713 (right!41043 (right!41043 t!4585)))) (height!1951 (right!41043 (right!41043 (right!41043 t!4585))))) 1))))

(declare-fun b!4880523 () Bool)

(declare-fun res!2083361 () Bool)

(assert (=> b!4880523 (=> (not res!2083361) (not e!3050150))))

(assert (=> b!4880523 (= res!2083361 (isBalanced!3980 (right!41043 (right!41043 (right!41043 t!4585)))))))

(declare-fun b!4880524 () Bool)

(assert (=> b!4880524 (= e!3050150 (not (isEmpty!30031 (right!41043 (right!41043 (right!41043 t!4585))))))))

(assert (= (and d!1568466 (not res!2083365)) b!4880520))

(assert (= (and b!4880520 res!2083362) b!4880522))

(assert (= (and b!4880522 res!2083363) b!4880521))

(assert (= (and b!4880521 res!2083360) b!4880523))

(assert (= (and b!4880523 res!2083361) b!4880519))

(assert (= (and b!4880519 res!2083364) b!4880524))

(declare-fun m!5884284 () Bool)

(assert (=> b!4880523 m!5884284))

(declare-fun m!5884286 () Bool)

(assert (=> b!4880521 m!5884286))

(declare-fun m!5884288 () Bool)

(assert (=> b!4880522 m!5884288))

(declare-fun m!5884290 () Bool)

(assert (=> b!4880522 m!5884290))

(assert (=> b!4880520 m!5884288))

(assert (=> b!4880520 m!5884290))

(declare-fun m!5884292 () Bool)

(assert (=> b!4880524 m!5884292))

(declare-fun m!5884294 () Bool)

(assert (=> b!4880519 m!5884294))

(assert (=> b!4880196 d!1568466))

(declare-fun d!1568468 () Bool)

(assert (=> d!1568468 (= (max!0 (height!1951 (left!40713 (right!41043 t!4585))) (height!1951 (right!41043 (right!41043 t!4585)))) (ite (< (height!1951 (left!40713 (right!41043 t!4585))) (height!1951 (right!41043 (right!41043 t!4585)))) (height!1951 (right!41043 (right!41043 t!4585))) (height!1951 (left!40713 (right!41043 t!4585)))))))

(assert (=> b!4880199 d!1568468))

(assert (=> b!4880199 d!1568352))

(assert (=> b!4880199 d!1568354))

(declare-fun e!3050153 () Conc!14618)

(declare-fun b!4880527 () Bool)

(assert (=> b!4880527 (= e!3050153 (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225)))))))

(declare-fun b!4880528 () Bool)

(assert (=> b!4880528 (= e!3050153 (Node!14618 (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225)))) (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796))) (+ (size!36963 (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225))))) (size!36963 (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796))))) (+ (max!0 (height!1951 (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225))))) (height!1951 (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796))))) 1)))))

(declare-fun b!4880525 () Bool)

(declare-fun e!3050152 () Conc!14618)

(assert (=> b!4880525 (= e!3050152 (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796))))))

(declare-fun d!1568470 () Bool)

(declare-fun lt!1999288 () Conc!14618)

(assert (=> d!1568470 (= (list!17565 lt!1999288) (++!12218 (list!17565 (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225))))) (list!17565 (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796))))))))

(assert (=> d!1568470 (= lt!1999288 e!3050152)))

(declare-fun c!830111 () Bool)

(assert (=> d!1568470 (= c!830111 (= (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225)))) Empty!14618))))

(assert (=> d!1568470 (= (<>!375 (ite c!830012 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)) (ite c!830017 (ite c!830018 (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830011 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (left!40713 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!830013 call!338788 (ite c!830015 call!338796 lt!1999225)))) (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796)))) lt!1999288)))

(declare-fun b!4880526 () Bool)

(assert (=> b!4880526 (= e!3050152 e!3050153)))

(declare-fun c!830112 () Bool)

(assert (=> b!4880526 (= c!830112 (= (ite c!830012 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830017 (ite c!830018 call!338795 (ite c!830011 lt!1999224 (left!40713 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite (or c!830013 c!830015) (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) call!338796))) Empty!14618))))

(assert (= (and d!1568470 c!830111) b!4880525))

(assert (= (and d!1568470 (not c!830111)) b!4880526))

(assert (= (and b!4880526 c!830112) b!4880527))

(assert (= (and b!4880526 (not c!830112)) b!4880528))

(declare-fun m!5884296 () Bool)

(assert (=> b!4880528 m!5884296))

(declare-fun m!5884298 () Bool)

(assert (=> b!4880528 m!5884298))

(declare-fun m!5884300 () Bool)

(assert (=> b!4880528 m!5884300))

(declare-fun m!5884302 () Bool)

(assert (=> b!4880528 m!5884302))

(assert (=> b!4880528 m!5884300))

(declare-fun m!5884304 () Bool)

(assert (=> b!4880528 m!5884304))

(assert (=> b!4880528 m!5884298))

(declare-fun m!5884306 () Bool)

(assert (=> d!1568470 m!5884306))

(declare-fun m!5884308 () Bool)

(assert (=> d!1568470 m!5884308))

(declare-fun m!5884310 () Bool)

(assert (=> d!1568470 m!5884310))

(assert (=> d!1568470 m!5884308))

(assert (=> d!1568470 m!5884310))

(declare-fun m!5884312 () Bool)

(assert (=> d!1568470 m!5884312))

(assert (=> bm!338791 d!1568470))

(declare-fun d!1568472 () Bool)

(declare-fun c!830113 () Bool)

(assert (=> d!1568472 (= c!830113 ((_ is Nil!56033) lt!1999227))))

(declare-fun e!3050154 () (InoxSet T!99300))

(assert (=> d!1568472 (= (content!10010 lt!1999227) e!3050154)))

(declare-fun b!4880529 () Bool)

(assert (=> b!4880529 (= e!3050154 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880530 () Bool)

(assert (=> b!4880530 (= e!3050154 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 lt!1999227) true) (content!10010 (t!364793 lt!1999227))))))

(assert (= (and d!1568472 c!830113) b!4880529))

(assert (= (and d!1568472 (not c!830113)) b!4880530))

(declare-fun m!5884314 () Bool)

(assert (=> b!4880530 m!5884314))

(declare-fun m!5884316 () Bool)

(assert (=> b!4880530 m!5884316))

(assert (=> d!1568160 d!1568472))

(declare-fun d!1568474 () Bool)

(declare-fun c!830114 () Bool)

(assert (=> d!1568474 (= c!830114 ((_ is Nil!56033) (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun e!3050155 () (InoxSet T!99300))

(assert (=> d!1568474 (= (content!10010 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) e!3050155)))

(declare-fun b!4880531 () Bool)

(assert (=> b!4880531 (= e!3050155 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880532 () Bool)

(assert (=> b!4880532 (= e!3050155 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))) true) (content!10010 (t!364793 (list!17565 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (= (and d!1568474 c!830114) b!4880531))

(assert (= (and d!1568474 (not c!830114)) b!4880532))

(declare-fun m!5884318 () Bool)

(assert (=> b!4880532 m!5884318))

(assert (=> b!4880532 m!5883984))

(assert (=> d!1568160 d!1568474))

(declare-fun d!1568476 () Bool)

(declare-fun c!830115 () Bool)

(assert (=> d!1568476 (= c!830115 ((_ is Nil!56033) (list!17565 t!4585)))))

(declare-fun e!3050156 () (InoxSet T!99300))

(assert (=> d!1568476 (= (content!10010 (list!17565 t!4585)) e!3050156)))

(declare-fun b!4880533 () Bool)

(assert (=> b!4880533 (= e!3050156 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880534 () Bool)

(assert (=> b!4880534 (= e!3050156 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 (list!17565 t!4585)) true) (content!10010 (t!364793 (list!17565 t!4585)))))))

(assert (= (and d!1568476 c!830115) b!4880533))

(assert (= (and d!1568476 (not c!830115)) b!4880534))

(declare-fun m!5884320 () Bool)

(assert (=> b!4880534 m!5884320))

(declare-fun m!5884322 () Bool)

(assert (=> b!4880534 m!5884322))

(assert (=> d!1568160 d!1568476))

(declare-fun b!4880535 () Bool)

(declare-fun e!3050158 () List!56157)

(assert (=> b!4880535 (= e!3050158 (list!17565 (right!41043 (right!41043 t!4585))))))

(declare-fun b!4880537 () Bool)

(declare-fun res!2083366 () Bool)

(declare-fun e!3050157 () Bool)

(assert (=> b!4880537 (=> (not res!2083366) (not e!3050157))))

(declare-fun lt!1999289 () List!56157)

(assert (=> b!4880537 (= res!2083366 (= (size!36961 lt!1999289) (+ (size!36961 (list!17565 (left!40713 (right!41043 t!4585)))) (size!36961 (list!17565 (right!41043 (right!41043 t!4585)))))))))

(declare-fun b!4880538 () Bool)

(assert (=> b!4880538 (= e!3050157 (or (not (= (list!17565 (right!41043 (right!41043 t!4585))) Nil!56033)) (= lt!1999289 (list!17565 (left!40713 (right!41043 t!4585))))))))

(declare-fun d!1568478 () Bool)

(assert (=> d!1568478 e!3050157))

(declare-fun res!2083367 () Bool)

(assert (=> d!1568478 (=> (not res!2083367) (not e!3050157))))

(assert (=> d!1568478 (= res!2083367 (= (content!10010 lt!1999289) ((_ map or) (content!10010 (list!17565 (left!40713 (right!41043 t!4585)))) (content!10010 (list!17565 (right!41043 (right!41043 t!4585)))))))))

(assert (=> d!1568478 (= lt!1999289 e!3050158)))

(declare-fun c!830116 () Bool)

(assert (=> d!1568478 (= c!830116 ((_ is Nil!56033) (list!17565 (left!40713 (right!41043 t!4585)))))))

(assert (=> d!1568478 (= (++!12218 (list!17565 (left!40713 (right!41043 t!4585))) (list!17565 (right!41043 (right!41043 t!4585)))) lt!1999289)))

(declare-fun b!4880536 () Bool)

(assert (=> b!4880536 (= e!3050158 (Cons!56033 (h!62481 (list!17565 (left!40713 (right!41043 t!4585)))) (++!12218 (t!364793 (list!17565 (left!40713 (right!41043 t!4585)))) (list!17565 (right!41043 (right!41043 t!4585))))))))

(assert (= (and d!1568478 c!830116) b!4880535))

(assert (= (and d!1568478 (not c!830116)) b!4880536))

(assert (= (and d!1568478 res!2083367) b!4880537))

(assert (= (and b!4880537 res!2083366) b!4880538))

(declare-fun m!5884324 () Bool)

(assert (=> b!4880537 m!5884324))

(assert (=> b!4880537 m!5883368))

(assert (=> b!4880537 m!5883670))

(assert (=> b!4880537 m!5883370))

(assert (=> b!4880537 m!5883672))

(declare-fun m!5884326 () Bool)

(assert (=> d!1568478 m!5884326))

(assert (=> d!1568478 m!5883368))

(declare-fun m!5884328 () Bool)

(assert (=> d!1568478 m!5884328))

(assert (=> d!1568478 m!5883370))

(declare-fun m!5884330 () Bool)

(assert (=> d!1568478 m!5884330))

(assert (=> b!4880536 m!5883370))

(declare-fun m!5884332 () Bool)

(assert (=> b!4880536 m!5884332))

(assert (=> b!4880078 d!1568478))

(declare-fun d!1568480 () Bool)

(declare-fun c!830117 () Bool)

(assert (=> d!1568480 (= c!830117 ((_ is Empty!14618) (left!40713 (right!41043 t!4585))))))

(declare-fun e!3050159 () List!56157)

(assert (=> d!1568480 (= (list!17565 (left!40713 (right!41043 t!4585))) e!3050159)))

(declare-fun b!4880539 () Bool)

(assert (=> b!4880539 (= e!3050159 Nil!56033)))

(declare-fun b!4880541 () Bool)

(declare-fun e!3050160 () List!56157)

(assert (=> b!4880541 (= e!3050160 (list!17567 (xs!17928 (left!40713 (right!41043 t!4585)))))))

(declare-fun b!4880542 () Bool)

(assert (=> b!4880542 (= e!3050160 (++!12218 (list!17565 (left!40713 (left!40713 (right!41043 t!4585)))) (list!17565 (right!41043 (left!40713 (right!41043 t!4585))))))))

(declare-fun b!4880540 () Bool)

(assert (=> b!4880540 (= e!3050159 e!3050160)))

(declare-fun c!830118 () Bool)

(assert (=> b!4880540 (= c!830118 ((_ is Leaf!24360) (left!40713 (right!41043 t!4585))))))

(assert (= (and d!1568480 c!830117) b!4880539))

(assert (= (and d!1568480 (not c!830117)) b!4880540))

(assert (= (and b!4880540 c!830118) b!4880541))

(assert (= (and b!4880540 (not c!830118)) b!4880542))

(assert (=> b!4880541 m!5883652))

(declare-fun m!5884334 () Bool)

(assert (=> b!4880542 m!5884334))

(declare-fun m!5884336 () Bool)

(assert (=> b!4880542 m!5884336))

(assert (=> b!4880542 m!5884334))

(assert (=> b!4880542 m!5884336))

(declare-fun m!5884338 () Bool)

(assert (=> b!4880542 m!5884338))

(assert (=> b!4880078 d!1568480))

(declare-fun d!1568482 () Bool)

(declare-fun c!830119 () Bool)

(assert (=> d!1568482 (= c!830119 ((_ is Empty!14618) (right!41043 (right!41043 t!4585))))))

(declare-fun e!3050161 () List!56157)

(assert (=> d!1568482 (= (list!17565 (right!41043 (right!41043 t!4585))) e!3050161)))

(declare-fun b!4880543 () Bool)

(assert (=> b!4880543 (= e!3050161 Nil!56033)))

(declare-fun b!4880545 () Bool)

(declare-fun e!3050162 () List!56157)

(assert (=> b!4880545 (= e!3050162 (list!17567 (xs!17928 (right!41043 (right!41043 t!4585)))))))

(declare-fun b!4880546 () Bool)

(assert (=> b!4880546 (= e!3050162 (++!12218 (list!17565 (left!40713 (right!41043 (right!41043 t!4585)))) (list!17565 (right!41043 (right!41043 (right!41043 t!4585))))))))

(declare-fun b!4880544 () Bool)

(assert (=> b!4880544 (= e!3050161 e!3050162)))

(declare-fun c!830120 () Bool)

(assert (=> b!4880544 (= c!830120 ((_ is Leaf!24360) (right!41043 (right!41043 t!4585))))))

(assert (= (and d!1568482 c!830119) b!4880543))

(assert (= (and d!1568482 (not c!830119)) b!4880544))

(assert (= (and b!4880544 c!830120) b!4880545))

(assert (= (and b!4880544 (not c!830120)) b!4880546))

(assert (=> b!4880545 m!5884006))

(declare-fun m!5884340 () Bool)

(assert (=> b!4880546 m!5884340))

(declare-fun m!5884342 () Bool)

(assert (=> b!4880546 m!5884342))

(assert (=> b!4880546 m!5884340))

(assert (=> b!4880546 m!5884342))

(declare-fun m!5884344 () Bool)

(assert (=> b!4880546 m!5884344))

(assert (=> b!4880078 d!1568482))

(declare-fun d!1568484 () Bool)

(assert (=> d!1568484 (= (height!1951 (ite c!830017 lt!1999224 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) (ite ((_ is Empty!14618) (ite c!830017 lt!1999224 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) 0 (ite ((_ is Leaf!24360) (ite c!830017 lt!1999224 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))) 1 (cheight!14829 (ite c!830017 lt!1999224 (right!41043 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))

(assert (=> bm!338778 d!1568484))

(declare-fun d!1568486 () Bool)

(declare-fun lt!1999290 () Bool)

(assert (=> d!1568486 (= lt!1999290 (isEmpty!30033 (list!17565 (right!41043 (left!40713 t!4585)))))))

(assert (=> d!1568486 (= lt!1999290 (= (size!36963 (right!41043 (left!40713 t!4585))) 0))))

(assert (=> d!1568486 (= (isEmpty!30031 (right!41043 (left!40713 t!4585))) lt!1999290)))

(declare-fun bs!1175371 () Bool)

(assert (= bs!1175371 d!1568486))

(assert (=> bs!1175371 m!5883154))

(assert (=> bs!1175371 m!5883154))

(declare-fun m!5884346 () Bool)

(assert (=> bs!1175371 m!5884346))

(assert (=> bs!1175371 m!5883476))

(assert (=> b!4880206 d!1568486))

(assert (=> b!4880129 d!1568310))

(assert (=> b!4880129 d!1568312))

(declare-fun d!1568488 () Bool)

(declare-fun lt!1999291 () Bool)

(assert (=> d!1568488 (= lt!1999291 (isEmpty!30033 (list!17565 (right!41043 lt!1999176))))))

(assert (=> d!1568488 (= lt!1999291 (= (size!36963 (right!41043 lt!1999176)) 0))))

(assert (=> d!1568488 (= (isEmpty!30031 (right!41043 lt!1999176)) lt!1999291)))

(declare-fun bs!1175372 () Bool)

(assert (= bs!1175372 d!1568488))

(assert (=> bs!1175372 m!5883542))

(assert (=> bs!1175372 m!5883542))

(declare-fun m!5884348 () Bool)

(assert (=> bs!1175372 m!5884348))

(declare-fun m!5884350 () Bool)

(assert (=> bs!1175372 m!5884350))

(assert (=> b!4880133 d!1568488))

(declare-fun bm!338818 () Bool)

(declare-fun call!338823 () List!56157)

(assert (=> bm!338818 (= call!338823 (++!12218 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun bm!338819 () Bool)

(declare-fun call!338825 () List!56157)

(assert (=> bm!338819 (= call!338825 (++!12218 (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 t!4585)))))

(declare-fun bm!338820 () Bool)

(declare-fun call!338824 () List!56157)

(assert (=> bm!338820 (= call!338824 (++!12218 call!338823 (list!17565 t!4585)))))

(declare-fun d!1568490 () Bool)

(declare-fun e!3050163 () Bool)

(assert (=> d!1568490 e!3050163))

(declare-fun c!830121 () Bool)

(assert (=> d!1568490 (= c!830121 ((_ is Nil!56033) (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568490 (= (appendAssoc!289 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 t!4585)) true)))

(declare-fun b!4880547 () Bool)

(declare-fun call!338826 () List!56157)

(assert (=> b!4880547 (= e!3050163 (= call!338824 call!338826))))

(declare-fun lt!1999292 () Bool)

(assert (=> b!4880547 (= lt!1999292 (appendAssoc!289 (t!364793 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) (list!17565 t!4585)))))

(declare-fun bm!338821 () Bool)

(assert (=> bm!338821 (= call!338826 (++!12218 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) call!338825))))

(declare-fun b!4880548 () Bool)

(assert (=> b!4880548 (= e!3050163 (= call!338824 call!338826))))

(assert (= (and d!1568490 c!830121) b!4880548))

(assert (= (and d!1568490 (not c!830121)) b!4880547))

(assert (= (or b!4880548 b!4880547) bm!338818))

(assert (= (or b!4880548 b!4880547) bm!338819))

(assert (= (or b!4880548 b!4880547) bm!338821))

(assert (= (or b!4880548 b!4880547) bm!338820))

(assert (=> bm!338818 m!5883146))

(assert (=> bm!338818 m!5883148))

(assert (=> bm!338818 m!5883562))

(assert (=> bm!338820 m!5882724))

(declare-fun m!5884352 () Bool)

(assert (=> bm!338820 m!5884352))

(assert (=> bm!338819 m!5883148))

(assert (=> bm!338819 m!5882724))

(declare-fun m!5884354 () Bool)

(assert (=> bm!338819 m!5884354))

(assert (=> bm!338821 m!5883146))

(declare-fun m!5884356 () Bool)

(assert (=> bm!338821 m!5884356))

(assert (=> b!4880547 m!5883148))

(assert (=> b!4880547 m!5882724))

(declare-fun m!5884358 () Bool)

(assert (=> b!4880547 m!5884358))

(assert (=> b!4879945 d!1568490))

(assert (=> b!4879945 d!1568206))

(assert (=> b!4879945 d!1568406))

(assert (=> b!4879945 d!1567974))

(declare-fun d!1568492 () Bool)

(assert (=> d!1568492 (= (list!17567 (xs!17928 lt!1999176)) (innerList!14706 (xs!17928 lt!1999176)))))

(assert (=> b!4880172 d!1568492))

(declare-fun d!1568494 () Bool)

(declare-fun c!830122 () Bool)

(assert (=> d!1568494 (= c!830122 ((_ is Node!14618) (left!40713 (right!41043 (left!40713 t!4585)))))))

(declare-fun e!3050164 () Bool)

(assert (=> d!1568494 (= (inv!72024 (left!40713 (right!41043 (left!40713 t!4585)))) e!3050164)))

(declare-fun b!4880549 () Bool)

(assert (=> b!4880549 (= e!3050164 (inv!72027 (left!40713 (right!41043 (left!40713 t!4585)))))))

(declare-fun b!4880550 () Bool)

(declare-fun e!3050165 () Bool)

(assert (=> b!4880550 (= e!3050164 e!3050165)))

(declare-fun res!2083368 () Bool)

(assert (=> b!4880550 (= res!2083368 (not ((_ is Leaf!24360) (left!40713 (right!41043 (left!40713 t!4585))))))))

(assert (=> b!4880550 (=> res!2083368 e!3050165)))

(declare-fun b!4880551 () Bool)

(assert (=> b!4880551 (= e!3050165 (inv!72028 (left!40713 (right!41043 (left!40713 t!4585)))))))

(assert (= (and d!1568494 c!830122) b!4880549))

(assert (= (and d!1568494 (not c!830122)) b!4880550))

(assert (= (and b!4880550 (not res!2083368)) b!4880551))

(declare-fun m!5884360 () Bool)

(assert (=> b!4880549 m!5884360))

(declare-fun m!5884362 () Bool)

(assert (=> b!4880551 m!5884362))

(assert (=> b!4880221 d!1568494))

(declare-fun d!1568496 () Bool)

(declare-fun c!830123 () Bool)

(assert (=> d!1568496 (= c!830123 ((_ is Node!14618) (right!41043 (right!41043 (left!40713 t!4585)))))))

(declare-fun e!3050166 () Bool)

(assert (=> d!1568496 (= (inv!72024 (right!41043 (right!41043 (left!40713 t!4585)))) e!3050166)))

(declare-fun b!4880552 () Bool)

(assert (=> b!4880552 (= e!3050166 (inv!72027 (right!41043 (right!41043 (left!40713 t!4585)))))))

(declare-fun b!4880553 () Bool)

(declare-fun e!3050167 () Bool)

(assert (=> b!4880553 (= e!3050166 e!3050167)))

(declare-fun res!2083369 () Bool)

(assert (=> b!4880553 (= res!2083369 (not ((_ is Leaf!24360) (right!41043 (right!41043 (left!40713 t!4585))))))))

(assert (=> b!4880553 (=> res!2083369 e!3050167)))

(declare-fun b!4880554 () Bool)

(assert (=> b!4880554 (= e!3050167 (inv!72028 (right!41043 (right!41043 (left!40713 t!4585)))))))

(assert (= (and d!1568496 c!830123) b!4880552))

(assert (= (and d!1568496 (not c!830123)) b!4880553))

(assert (= (and b!4880553 (not res!2083369)) b!4880554))

(declare-fun m!5884364 () Bool)

(assert (=> b!4880552 m!5884364))

(declare-fun m!5884366 () Bool)

(assert (=> b!4880554 m!5884366))

(assert (=> b!4880221 d!1568496))

(assert (=> b!4879785 d!1568146))

(assert (=> b!4879785 d!1568148))

(declare-fun bm!338822 () Bool)

(declare-fun call!338827 () List!56157)

(assert (=> bm!338822 (= call!338827 (++!12218 (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun bm!338823 () Bool)

(declare-fun call!338829 () List!56157)

(assert (=> bm!338823 (= call!338829 (++!12218 (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585)))))

(declare-fun bm!338824 () Bool)

(declare-fun call!338828 () List!56157)

(assert (=> bm!338824 (= call!338828 (++!12218 call!338827 (list!17565 t!4585)))))

(declare-fun d!1568498 () Bool)

(declare-fun e!3050168 () Bool)

(assert (=> d!1568498 e!3050168))

(declare-fun c!830124 () Bool)

(assert (=> d!1568498 (= c!830124 ((_ is Nil!56033) (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (=> d!1568498 (= (appendAssoc!289 (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585)) true)))

(declare-fun b!4880555 () Bool)

(declare-fun call!338830 () List!56157)

(assert (=> b!4880555 (= e!3050168 (= call!338828 call!338830))))

(declare-fun lt!1999293 () Bool)

(assert (=> b!4880555 (= lt!1999293 (appendAssoc!289 (t!364793 (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) (list!17565 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 t!4585)))))

(declare-fun bm!338825 () Bool)

(assert (=> bm!338825 (= call!338830 (++!12218 (list!17565 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) call!338829))))

(declare-fun b!4880556 () Bool)

(assert (=> b!4880556 (= e!3050168 (= call!338828 call!338830))))

(assert (= (and d!1568498 c!830124) b!4880556))

(assert (= (and d!1568498 (not c!830124)) b!4880555))

(assert (= (or b!4880556 b!4880555) bm!338822))

(assert (= (or b!4880556 b!4880555) bm!338823))

(assert (= (or b!4880556 b!4880555) bm!338825))

(assert (= (or b!4880556 b!4880555) bm!338824))

(assert (=> bm!338822 m!5883140))

(assert (=> bm!338822 m!5883142))

(assert (=> bm!338822 m!5884166))

(assert (=> bm!338824 m!5882724))

(declare-fun m!5884368 () Bool)

(assert (=> bm!338824 m!5884368))

(assert (=> bm!338823 m!5883142))

(assert (=> bm!338823 m!5882724))

(assert (=> bm!338823 m!5883164))

(assert (=> bm!338825 m!5883140))

(declare-fun m!5884370 () Bool)

(assert (=> bm!338825 m!5884370))

(assert (=> b!4880555 m!5883142))

(assert (=> b!4880555 m!5882724))

(declare-fun m!5884372 () Bool)

(assert (=> b!4880555 m!5884372))

(assert (=> b!4879941 d!1568498))

(assert (=> b!4879941 d!1568208))

(assert (=> b!4879941 d!1568204))

(assert (=> b!4879941 d!1567974))

(declare-fun b!4880557 () Bool)

(declare-fun c!830132 () Bool)

(declare-fun call!338845 () Int)

(declare-fun call!338833 () Int)

(assert (=> b!4880557 (= c!830132 (>= call!338845 call!338833))))

(declare-fun e!3050171 () Conc!14618)

(declare-fun e!3050173 () Conc!14618)

(assert (=> b!4880557 (= e!3050171 e!3050173)))

(declare-fun b!4880558 () Bool)

(declare-fun e!3050172 () Conc!14618)

(declare-fun e!3050174 () Conc!14618)

(assert (=> b!4880558 (= e!3050172 e!3050174)))

(declare-fun c!830128 () Bool)

(assert (=> b!4880558 (= c!830128 (= (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) Empty!14618))))

(declare-fun b!4880559 () Bool)

(declare-fun c!830127 () Bool)

(declare-fun call!338831 () Int)

(declare-fun call!338840 () Int)

(assert (=> b!4880559 (= c!830127 (>= call!338831 call!338840))))

(declare-fun e!3050175 () Conc!14618)

(assert (=> b!4880559 (= e!3050171 e!3050175)))

(declare-fun c!830131 () Bool)

(declare-fun lt!1999295 () Conc!14618)

(declare-fun bm!338826 () Bool)

(assert (=> bm!338826 (= call!338831 (height!1951 (ite c!830131 lt!1999295 (right!41043 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))))

(declare-fun b!4880560 () Bool)

(declare-fun res!2083373 () Bool)

(declare-fun e!3050177 () Bool)

(assert (=> b!4880560 (=> (not res!2083373) (not e!3050177))))

(declare-fun lt!1999294 () Conc!14618)

(assert (=> b!4880560 (= res!2083373 (isBalanced!3980 lt!1999294))))

(declare-fun e!3050169 () Bool)

(declare-fun b!4880561 () Bool)

(assert (=> b!4880561 (= e!3050169 (isBalanced!3980 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))

(declare-fun b!4880562 () Bool)

(declare-fun e!3050170 () Conc!14618)

(declare-fun call!338846 () Conc!14618)

(assert (=> b!4880562 (= e!3050170 call!338846)))

(declare-fun d!1568500 () Bool)

(assert (=> d!1568500 e!3050177))

(declare-fun res!2083371 () Bool)

(assert (=> d!1568500 (=> (not res!2083371) (not e!3050177))))

(assert (=> d!1568500 (= res!2083371 (appendAssocInst!885 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))

(assert (=> d!1568500 (= lt!1999294 e!3050172)))

(declare-fun c!830130 () Bool)

(assert (=> d!1568500 (= c!830130 (= (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) Empty!14618))))

(assert (=> d!1568500 e!3050169))

(declare-fun res!2083372 () Bool)

(assert (=> d!1568500 (=> (not res!2083372) (not e!3050169))))

(assert (=> d!1568500 (= res!2083372 (isBalanced!3980 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568500 (= (++!12216 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) lt!1999294)))

(declare-fun bm!338827 () Bool)

(declare-fun call!338834 () Conc!14618)

(declare-fun call!338838 () Conc!14618)

(assert (=> bm!338827 (= call!338834 call!338838)))

(declare-fun b!4880563 () Bool)

(assert (=> b!4880563 (= e!3050172 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))

(declare-fun b!4880564 () Bool)

(declare-fun e!3050178 () Conc!14618)

(assert (=> b!4880564 (= e!3050178 call!338834)))

(declare-fun bm!338828 () Bool)

(declare-fun call!338841 () Conc!14618)

(declare-fun call!338837 () Conc!14618)

(assert (=> bm!338828 (= call!338841 call!338837)))

(declare-fun b!4880565 () Bool)

(declare-fun call!338842 () Conc!14618)

(assert (=> b!4880565 (= e!3050173 call!338842)))

(declare-fun b!4880566 () Bool)

(assert (=> b!4880566 (= e!3050175 e!3050170)))

(declare-fun lt!1999296 () Conc!14618)

(declare-fun call!338836 () Conc!14618)

(assert (=> b!4880566 (= lt!1999296 call!338836)))

(declare-fun c!830129 () Bool)

(assert (=> b!4880566 (= c!830129 (= call!338833 (- call!338845 3)))))

(declare-fun b!4880567 () Bool)

(declare-fun c!830126 () Bool)

(declare-fun lt!1999297 () Int)

(assert (=> b!4880567 (= c!830126 (and (<= (- 1) lt!1999297) (<= lt!1999297 1)))))

(assert (=> b!4880567 (= lt!1999297 (- (height!1951 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) (height!1951 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun e!3050176 () Conc!14618)

(assert (=> b!4880567 (= e!3050174 e!3050176)))

(declare-fun b!4880568 () Bool)

(assert (=> b!4880568 (= e!3050174 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))

(declare-fun bm!338829 () Bool)

(declare-fun call!338832 () Conc!14618)

(assert (=> bm!338829 (= call!338837 call!338832)))

(declare-fun b!4880569 () Bool)

(declare-fun res!2083374 () Bool)

(assert (=> b!4880569 (=> (not res!2083374) (not e!3050177))))

(assert (=> b!4880569 (= res!2083374 (<= (height!1951 lt!1999294) (+ (max!0 (height!1951 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))) 1)))))

(declare-fun bm!338830 () Bool)

(declare-fun call!338839 () Conc!14618)

(declare-fun c!830125 () Bool)

(assert (=> bm!338830 (= call!338838 (<>!375 (ite c!830131 (ite c!830125 (left!40713 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) call!338839) (ite c!830129 lt!1999296 (right!41043 (left!40713 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))) (ite c!830131 (ite c!830125 call!338839 lt!1999295) (ite c!830129 (right!41043 (left!40713 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))) (right!41043 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))))))

(declare-fun bm!338831 () Bool)

(declare-fun call!338843 () Conc!14618)

(declare-fun call!338835 () Conc!14618)

(assert (=> bm!338831 (= call!338843 call!338835)))

(declare-fun b!4880570 () Bool)

(assert (=> b!4880570 (= e!3050170 call!338846)))

(declare-fun bm!338832 () Bool)

(assert (=> bm!338832 (= call!338835 (++!12216 (ite c!830131 (ite c!830132 (right!41043 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (right!41043 (right!41043 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!830131 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) (ite c!830127 (left!40713 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) (left!40713 (left!40713 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))))))

(declare-fun b!4880571 () Bool)

(assert (=> b!4880571 (= e!3050177 (= (list!17565 lt!1999294) (++!12218 (list!17565 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (list!17565 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))))

(declare-fun bm!338833 () Bool)

(assert (=> bm!338833 (= call!338833 (height!1951 (ite c!830131 (right!41043 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) lt!1999296)))))

(declare-fun b!4880572 () Bool)

(assert (=> b!4880572 (= e!3050176 call!338832)))

(declare-fun bm!338834 () Bool)

(assert (=> bm!338834 (= call!338842 call!338837)))

(declare-fun b!4880573 () Bool)

(assert (=> b!4880573 (= e!3050176 e!3050171)))

(assert (=> b!4880573 (= c!830131 (< lt!1999297 (- 1)))))

(declare-fun bm!338835 () Bool)

(assert (=> bm!338835 (= call!338840 (height!1951 (ite c!830131 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (left!40713 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))))

(declare-fun bm!338836 () Bool)

(declare-fun call!338844 () Conc!14618)

(assert (=> bm!338836 (= call!338844 call!338838)))

(declare-fun bm!338837 () Bool)

(assert (=> bm!338837 (= call!338846 call!338841)))

(declare-fun b!4880574 () Bool)

(assert (=> b!4880574 (= e!3050178 call!338834)))

(declare-fun bm!338838 () Bool)

(assert (=> bm!338838 (= call!338845 (height!1951 (ite c!830131 (left!40713 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))))))))

(declare-fun bm!338839 () Bool)

(assert (=> bm!338839 (= call!338832 (<>!375 (ite c!830126 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (ite c!830131 (ite c!830132 (left!40713 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (ite c!830125 (left!40713 (right!41043 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (left!40713 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))))) (ite c!830127 call!338836 (ite c!830129 call!338844 lt!1999296)))) (ite c!830126 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))))))) (ite c!830131 (ite c!830132 call!338843 (ite c!830125 lt!1999295 (left!40713 (right!41043 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))))) (ite (or c!830127 c!830129) (right!41043 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))) call!338844)))))))

(declare-fun bm!338840 () Bool)

(assert (=> bm!338840 (= call!338839 call!338842)))

(declare-fun b!4880575 () Bool)

(assert (=> b!4880575 (= e!3050175 call!338841)))

(declare-fun b!4880576 () Bool)

(assert (=> b!4880576 (= e!3050173 e!3050178)))

(assert (=> b!4880576 (= lt!1999295 call!338843)))

(assert (=> b!4880576 (= c!830125 (= call!338831 (- call!338840 3)))))

(declare-fun b!4880577 () Bool)

(declare-fun res!2083370 () Bool)

(assert (=> b!4880577 (=> (not res!2083370) (not e!3050177))))

(assert (=> b!4880577 (= res!2083370 (>= (height!1951 lt!1999294) (max!0 (height!1951 (ite c!830017 (ite c!830018 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))) (right!41043 (right!41043 (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1))))) (ite c!829928 (ite c!829929 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)) (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (ite c!830017 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585)))) (ite c!830013 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))) (left!40713 (left!40713 (ite c!829928 t!4585 (ite c!829924 (left!40713 t!4585) (left!40713 (left!40713 t!4585))))))))))))))

(declare-fun bm!338841 () Bool)

(assert (=> bm!338841 (= call!338836 call!338835)))

(assert (= (and d!1568500 res!2083372) b!4880561))

(assert (= (and d!1568500 c!830130) b!4880563))

(assert (= (and d!1568500 (not c!830130)) b!4880558))

(assert (= (and b!4880558 c!830128) b!4880568))

(assert (= (and b!4880558 (not c!830128)) b!4880567))

(assert (= (and b!4880567 c!830126) b!4880572))

(assert (= (and b!4880567 (not c!830126)) b!4880573))

(assert (= (and b!4880573 c!830131) b!4880557))

(assert (= (and b!4880573 (not c!830131)) b!4880559))

(assert (= (and b!4880557 c!830132) b!4880565))

(assert (= (and b!4880557 (not c!830132)) b!4880576))

(assert (= (and b!4880576 c!830125) b!4880574))

(assert (= (and b!4880576 (not c!830125)) b!4880564))

(assert (= (or b!4880574 b!4880564) bm!338840))

(assert (= (or b!4880574 b!4880564) bm!338827))

(assert (= (or b!4880565 b!4880576) bm!338831))

(assert (= (or b!4880565 bm!338840) bm!338834))

(assert (= (and b!4880559 c!830127) b!4880575))

(assert (= (and b!4880559 (not c!830127)) b!4880566))

(assert (= (and b!4880566 c!830129) b!4880562))

(assert (= (and b!4880566 (not c!830129)) b!4880570))

(assert (= (or b!4880562 b!4880570) bm!338836))

(assert (= (or b!4880562 b!4880570) bm!338837))

(assert (= (or b!4880575 b!4880566) bm!338841))

(assert (= (or b!4880575 bm!338837) bm!338828))

(assert (= (or bm!338827 bm!338836) bm!338830))

(assert (= (or b!4880576 b!4880559) bm!338826))

(assert (= (or b!4880557 b!4880566) bm!338838))

(assert (= (or bm!338834 bm!338828) bm!338829))

(assert (= (or b!4880576 b!4880559) bm!338835))

(assert (= (or b!4880557 b!4880566) bm!338833))

(assert (= (or bm!338831 bm!338841) bm!338832))

(assert (= (or b!4880572 bm!338829) bm!338839))

(assert (= (and d!1568500 res!2083371) b!4880560))

(assert (= (and b!4880560 res!2083373) b!4880569))

(assert (= (and b!4880569 res!2083374) b!4880577))

(assert (= (and b!4880577 res!2083370) b!4880571))

(declare-fun m!5884374 () Bool)

(assert (=> bm!338838 m!5884374))

(declare-fun m!5884376 () Bool)

(assert (=> d!1568500 m!5884376))

(declare-fun m!5884378 () Bool)

(assert (=> d!1568500 m!5884378))

(declare-fun m!5884380 () Bool)

(assert (=> bm!338826 m!5884380))

(declare-fun m!5884382 () Bool)

(assert (=> b!4880567 m!5884382))

(declare-fun m!5884384 () Bool)

(assert (=> b!4880567 m!5884384))

(declare-fun m!5884386 () Bool)

(assert (=> b!4880561 m!5884386))

(declare-fun m!5884388 () Bool)

(assert (=> bm!338830 m!5884388))

(declare-fun m!5884390 () Bool)

(assert (=> bm!338832 m!5884390))

(declare-fun m!5884392 () Bool)

(assert (=> b!4880577 m!5884392))

(assert (=> b!4880577 m!5884384))

(assert (=> b!4880577 m!5884382))

(assert (=> b!4880577 m!5884384))

(assert (=> b!4880577 m!5884382))

(declare-fun m!5884394 () Bool)

(assert (=> b!4880577 m!5884394))

(declare-fun m!5884396 () Bool)

(assert (=> bm!338835 m!5884396))

(declare-fun m!5884398 () Bool)

(assert (=> b!4880560 m!5884398))

(declare-fun m!5884400 () Bool)

(assert (=> bm!338833 m!5884400))

(declare-fun m!5884402 () Bool)

(assert (=> bm!338839 m!5884402))

(assert (=> b!4880569 m!5884392))

(assert (=> b!4880569 m!5884384))

(assert (=> b!4880569 m!5884382))

(assert (=> b!4880569 m!5884384))

(assert (=> b!4880569 m!5884382))

(assert (=> b!4880569 m!5884394))

(declare-fun m!5884404 () Bool)

(assert (=> b!4880571 m!5884404))

(declare-fun m!5884406 () Bool)

(assert (=> b!4880571 m!5884406))

(declare-fun m!5884408 () Bool)

(assert (=> b!4880571 m!5884408))

(assert (=> b!4880571 m!5884406))

(assert (=> b!4880571 m!5884408))

(declare-fun m!5884410 () Bool)

(assert (=> b!4880571 m!5884410))

(assert (=> bm!338784 d!1568500))

(assert (=> b!4880202 d!1568282))

(assert (=> b!4880202 d!1568284))

(assert (=> b!4880114 d!1568320))

(assert (=> b!4880114 d!1568322))

(declare-fun d!1568502 () Bool)

(declare-fun res!2083375 () Bool)

(declare-fun e!3050179 () Bool)

(assert (=> d!1568502 (=> (not res!2083375) (not e!3050179))))

(assert (=> d!1568502 (= res!2083375 (= (csize!29466 (right!41043 (right!41043 t!4585))) (+ (size!36963 (left!40713 (right!41043 (right!41043 t!4585)))) (size!36963 (right!41043 (right!41043 (right!41043 t!4585)))))))))

(assert (=> d!1568502 (= (inv!72027 (right!41043 (right!41043 t!4585))) e!3050179)))

(declare-fun b!4880578 () Bool)

(declare-fun res!2083376 () Bool)

(assert (=> b!4880578 (=> (not res!2083376) (not e!3050179))))

(assert (=> b!4880578 (= res!2083376 (and (not (= (left!40713 (right!41043 (right!41043 t!4585))) Empty!14618)) (not (= (right!41043 (right!41043 (right!41043 t!4585))) Empty!14618))))))

(declare-fun b!4880579 () Bool)

(declare-fun res!2083377 () Bool)

(assert (=> b!4880579 (=> (not res!2083377) (not e!3050179))))

(assert (=> b!4880579 (= res!2083377 (= (cheight!14829 (right!41043 (right!41043 t!4585))) (+ (max!0 (height!1951 (left!40713 (right!41043 (right!41043 t!4585)))) (height!1951 (right!41043 (right!41043 (right!41043 t!4585))))) 1)))))

(declare-fun b!4880580 () Bool)

(assert (=> b!4880580 (= e!3050179 (<= 0 (cheight!14829 (right!41043 (right!41043 t!4585)))))))

(assert (= (and d!1568502 res!2083375) b!4880578))

(assert (= (and b!4880578 res!2083376) b!4880579))

(assert (= (and b!4880579 res!2083377) b!4880580))

(declare-fun m!5884412 () Bool)

(assert (=> d!1568502 m!5884412))

(declare-fun m!5884414 () Bool)

(assert (=> d!1568502 m!5884414))

(assert (=> b!4880579 m!5884288))

(assert (=> b!4880579 m!5884290))

(assert (=> b!4880579 m!5884288))

(assert (=> b!4880579 m!5884290))

(declare-fun m!5884416 () Bool)

(assert (=> b!4880579 m!5884416))

(assert (=> b!4880146 d!1568502))

(declare-fun d!1568504 () Bool)

(declare-fun lt!1999298 () Bool)

(assert (=> d!1568504 (= lt!1999298 (isEmpty!30033 (list!17565 (right!41043 (right!41043 t!4585)))))))

(assert (=> d!1568504 (= lt!1999298 (= (size!36963 (right!41043 (right!41043 t!4585))) 0))))

(assert (=> d!1568504 (= (isEmpty!30031 (right!41043 (right!41043 t!4585))) lt!1999298)))

(declare-fun bs!1175373 () Bool)

(assert (= bs!1175373 d!1568504))

(assert (=> bs!1175373 m!5883370))

(assert (=> bs!1175373 m!5883370))

(declare-fun m!5884418 () Bool)

(assert (=> bs!1175373 m!5884418))

(assert (=> bs!1175373 m!5883600))

(assert (=> b!4880197 d!1568504))

(declare-fun b!4880581 () Bool)

(declare-fun res!2083382 () Bool)

(declare-fun e!3050180 () Bool)

(assert (=> b!4880581 (=> (not res!2083382) (not e!3050180))))

(assert (=> b!4880581 (= res!2083382 (not (isEmpty!30031 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(declare-fun b!4880582 () Bool)

(declare-fun e!3050181 () Bool)

(assert (=> b!4880582 (= e!3050181 e!3050180)))

(declare-fun res!2083380 () Bool)

(assert (=> b!4880582 (=> (not res!2083380) (not e!3050180))))

(assert (=> b!4880582 (= res!2083380 (<= (- 1) (- (height!1951 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))))

(declare-fun b!4880583 () Bool)

(declare-fun res!2083378 () Bool)

(assert (=> b!4880583 (=> (not res!2083378) (not e!3050180))))

(assert (=> b!4880583 (= res!2083378 (isBalanced!3980 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun d!1568506 () Bool)

(declare-fun res!2083383 () Bool)

(assert (=> d!1568506 (=> res!2083383 e!3050181)))

(assert (=> d!1568506 (= res!2083383 (not ((_ is Node!14618) (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568506 (= (isBalanced!3980 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))) e!3050181)))

(declare-fun b!4880584 () Bool)

(declare-fun res!2083381 () Bool)

(assert (=> b!4880584 (=> (not res!2083381) (not e!3050180))))

(assert (=> b!4880584 (= res!2083381 (<= (- (height!1951 (left!40713 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))) (height!1951 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))) 1))))

(declare-fun b!4880585 () Bool)

(declare-fun res!2083379 () Bool)

(assert (=> b!4880585 (=> (not res!2083379) (not e!3050180))))

(assert (=> b!4880585 (= res!2083379 (isBalanced!3980 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(declare-fun b!4880586 () Bool)

(assert (=> b!4880586 (= e!3050180 (not (isEmpty!30031 (right!41043 (right!41043 (Leaf!24360 (fill!241 1 v!5488) 1))))))))

(assert (= (and d!1568506 (not res!2083383)) b!4880582))

(assert (= (and b!4880582 res!2083380) b!4880584))

(assert (= (and b!4880584 res!2083381) b!4880583))

(assert (= (and b!4880583 res!2083378) b!4880585))

(assert (= (and b!4880585 res!2083379) b!4880581))

(assert (= (and b!4880581 res!2083382) b!4880586))

(declare-fun m!5884420 () Bool)

(assert (=> b!4880585 m!5884420))

(declare-fun m!5884422 () Bool)

(assert (=> b!4880583 m!5884422))

(declare-fun m!5884424 () Bool)

(assert (=> b!4880584 m!5884424))

(declare-fun m!5884426 () Bool)

(assert (=> b!4880584 m!5884426))

(assert (=> b!4880582 m!5884424))

(assert (=> b!4880582 m!5884426))

(declare-fun m!5884428 () Bool)

(assert (=> b!4880586 m!5884428))

(declare-fun m!5884430 () Bool)

(assert (=> b!4880581 m!5884430))

(assert (=> b!4879954 d!1568506))

(declare-fun d!1568508 () Bool)

(declare-fun c!830133 () Bool)

(assert (=> d!1568508 (= c!830133 ((_ is Nil!56033) lt!1999216))))

(declare-fun e!3050182 () (InoxSet T!99300))

(assert (=> d!1568508 (= (content!10010 lt!1999216) e!3050182)))

(declare-fun b!4880587 () Bool)

(assert (=> b!4880587 (= e!3050182 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880588 () Bool)

(assert (=> b!4880588 (= e!3050182 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 lt!1999216) true) (content!10010 (t!364793 lt!1999216))))))

(assert (= (and d!1568508 c!830133) b!4880587))

(assert (= (and d!1568508 (not c!830133)) b!4880588))

(declare-fun m!5884432 () Bool)

(assert (=> b!4880588 m!5884432))

(declare-fun m!5884434 () Bool)

(assert (=> b!4880588 m!5884434))

(assert (=> d!1568076 d!1568508))

(declare-fun d!1568510 () Bool)

(declare-fun c!830134 () Bool)

(assert (=> d!1568510 (= c!830134 ((_ is Nil!56033) (list!17565 (left!40713 t!4585))))))

(declare-fun e!3050183 () (InoxSet T!99300))

(assert (=> d!1568510 (= (content!10010 (list!17565 (left!40713 t!4585))) e!3050183)))

(declare-fun b!4880589 () Bool)

(assert (=> b!4880589 (= e!3050183 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880590 () Bool)

(assert (=> b!4880590 (= e!3050183 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 (list!17565 (left!40713 t!4585))) true) (content!10010 (t!364793 (list!17565 (left!40713 t!4585))))))))

(assert (= (and d!1568510 c!830134) b!4880589))

(assert (= (and d!1568510 (not c!830134)) b!4880590))

(declare-fun m!5884436 () Bool)

(assert (=> b!4880590 m!5884436))

(assert (=> b!4880590 m!5883908))

(assert (=> d!1568076 d!1568510))

(declare-fun d!1568512 () Bool)

(declare-fun c!830135 () Bool)

(assert (=> d!1568512 (= c!830135 ((_ is Nil!56033) (list!17565 (right!41043 t!4585))))))

(declare-fun e!3050184 () (InoxSet T!99300))

(assert (=> d!1568512 (= (content!10010 (list!17565 (right!41043 t!4585))) e!3050184)))

(declare-fun b!4880591 () Bool)

(assert (=> b!4880591 (= e!3050184 ((as const (Array T!99300 Bool)) false))))

(declare-fun b!4880592 () Bool)

(assert (=> b!4880592 (= e!3050184 ((_ map or) (store ((as const (Array T!99300 Bool)) false) (h!62481 (list!17565 (right!41043 t!4585))) true) (content!10010 (t!364793 (list!17565 (right!41043 t!4585))))))))

(assert (= (and d!1568512 c!830135) b!4880591))

(assert (= (and d!1568512 (not c!830135)) b!4880592))

(declare-fun m!5884438 () Bool)

(assert (=> b!4880592 m!5884438))

(declare-fun m!5884440 () Bool)

(assert (=> b!4880592 m!5884440))

(assert (=> d!1568076 d!1568512))

(assert (=> b!4879989 d!1568340))

(assert (=> b!4879989 d!1568342))

(declare-fun d!1568514 () Bool)

(declare-fun lt!1999299 () Int)

(assert (=> d!1568514 (>= lt!1999299 0)))

(declare-fun e!3050185 () Int)

(assert (=> d!1568514 (= lt!1999299 e!3050185)))

(declare-fun c!830136 () Bool)

(assert (=> d!1568514 (= c!830136 ((_ is Nil!56033) (innerList!14706 (xs!17928 (left!40713 t!4585)))))))

(assert (=> d!1568514 (= (size!36961 (innerList!14706 (xs!17928 (left!40713 t!4585)))) lt!1999299)))

(declare-fun b!4880593 () Bool)

(assert (=> b!4880593 (= e!3050185 0)))

(declare-fun b!4880594 () Bool)

(assert (=> b!4880594 (= e!3050185 (+ 1 (size!36961 (t!364793 (innerList!14706 (xs!17928 (left!40713 t!4585)))))))))

(assert (= (and d!1568514 c!830136) b!4880593))

(assert (= (and d!1568514 (not c!830136)) b!4880594))

(declare-fun m!5884442 () Bool)

(assert (=> b!4880594 m!5884442))

(assert (=> d!1568110 d!1568514))

(assert (=> b!4880193 d!1568352))

(assert (=> b!4880193 d!1568354))

(declare-fun d!1568516 () Bool)

(assert (=> d!1568516 (= (inv!72023 (xs!17928 (left!40713 (left!40713 t!4585)))) (<= (size!36961 (innerList!14706 (xs!17928 (left!40713 (left!40713 t!4585))))) 2147483647))))

(declare-fun bs!1175374 () Bool)

(assert (= bs!1175374 d!1568516))

(declare-fun m!5884444 () Bool)

(assert (=> bs!1175374 m!5884444))

(assert (=> b!4880219 d!1568516))

(declare-fun b!4880595 () Bool)

(declare-fun e!3050187 () List!56157)

(assert (=> b!4880595 (= e!3050187 (list!17565 (right!41043 (left!40713 t!4585))))))

(declare-fun b!4880597 () Bool)

(declare-fun res!2083384 () Bool)

(declare-fun e!3050186 () Bool)

(assert (=> b!4880597 (=> (not res!2083384) (not e!3050186))))

(declare-fun lt!1999300 () List!56157)

(assert (=> b!4880597 (= res!2083384 (= (size!36961 lt!1999300) (+ (size!36961 (list!17565 (left!40713 (left!40713 t!4585)))) (size!36961 (list!17565 (right!41043 (left!40713 t!4585)))))))))

(declare-fun b!4880598 () Bool)

(assert (=> b!4880598 (= e!3050186 (or (not (= (list!17565 (right!41043 (left!40713 t!4585))) Nil!56033)) (= lt!1999300 (list!17565 (left!40713 (left!40713 t!4585))))))))

(declare-fun d!1568518 () Bool)

(assert (=> d!1568518 e!3050186))

(declare-fun res!2083385 () Bool)

(assert (=> d!1568518 (=> (not res!2083385) (not e!3050186))))

(assert (=> d!1568518 (= res!2083385 (= (content!10010 lt!1999300) ((_ map or) (content!10010 (list!17565 (left!40713 (left!40713 t!4585)))) (content!10010 (list!17565 (right!41043 (left!40713 t!4585)))))))))

(assert (=> d!1568518 (= lt!1999300 e!3050187)))

(declare-fun c!830137 () Bool)

(assert (=> d!1568518 (= c!830137 ((_ is Nil!56033) (list!17565 (left!40713 (left!40713 t!4585)))))))

(assert (=> d!1568518 (= (++!12218 (list!17565 (left!40713 (left!40713 t!4585))) (list!17565 (right!41043 (left!40713 t!4585)))) lt!1999300)))

(declare-fun b!4880596 () Bool)

(assert (=> b!4880596 (= e!3050187 (Cons!56033 (h!62481 (list!17565 (left!40713 (left!40713 t!4585)))) (++!12218 (t!364793 (list!17565 (left!40713 (left!40713 t!4585)))) (list!17565 (right!41043 (left!40713 t!4585))))))))

(assert (= (and d!1568518 c!830137) b!4880595))

(assert (= (and d!1568518 (not c!830137)) b!4880596))

(assert (= (and d!1568518 res!2083385) b!4880597))

(assert (= (and b!4880597 res!2083384) b!4880598))

(declare-fun m!5884446 () Bool)

(assert (=> b!4880597 m!5884446))

(assert (=> b!4880597 m!5883152))

(assert (=> b!4880597 m!5883794))

(assert (=> b!4880597 m!5883154))

(assert (=> b!4880597 m!5884254))

(declare-fun m!5884448 () Bool)

(assert (=> d!1568518 m!5884448))

(assert (=> d!1568518 m!5883152))

(assert (=> d!1568518 m!5883798))

(assert (=> d!1568518 m!5883154))

(declare-fun m!5884450 () Bool)

(assert (=> d!1568518 m!5884450))

(assert (=> b!4880596 m!5883154))

(declare-fun m!5884452 () Bool)

(assert (=> b!4880596 m!5884452))

(assert (=> b!4880073 d!1568518))

(assert (=> b!4880073 d!1568230))

(assert (=> b!4880073 d!1568232))

(declare-fun d!1568520 () Bool)

(declare-fun lt!1999301 () Bool)

(assert (=> d!1568520 (= lt!1999301 (isEmpty!30033 (list!17565 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1)))))))

(assert (=> d!1568520 (= lt!1999301 (= (size!36963 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) 0))))

(assert (=> d!1568520 (= (isEmpty!30031 (left!40713 (Leaf!24360 (fill!241 1 v!5488) 1))) lt!1999301)))

(declare-fun bs!1175375 () Bool)

(assert (= bs!1175375 d!1568520))

(assert (=> bs!1175375 m!5883146))

(assert (=> bs!1175375 m!5883146))

(declare-fun m!5884454 () Bool)

(assert (=> bs!1175375 m!5884454))

(declare-fun m!5884456 () Bool)

(assert (=> bs!1175375 m!5884456))

(assert (=> b!4879950 d!1568520))

(declare-fun b!4880599 () Bool)

(declare-fun e!3050189 () List!56157)

(assert (=> b!4880599 (= e!3050189 (list!17565 (right!41043 (right!41043 lt!1999152))))))

(declare-fun b!4880601 () Bool)

(declare-fun res!2083386 () Bool)

(declare-fun e!3050188 () Bool)

(assert (=> b!4880601 (=> (not res!2083386) (not e!3050188))))

(declare-fun lt!1999302 () List!56157)

(assert (=> b!4880601 (= res!2083386 (= (size!36961 lt!1999302) (+ (size!36961 (list!17565 (left!40713 (right!41043 lt!1999152)))) (size!36961 (list!17565 (right!41043 (right!41043 lt!1999152)))))))))

(declare-fun b!4880602 () Bool)

(assert (=> b!4880602 (= e!3050188 (or (not (= (list!17565 (right!41043 (right!41043 lt!1999152))) Nil!56033)) (= lt!1999302 (list!17565 (left!40713 (right!41043 lt!1999152))))))))

(declare-fun d!1568522 () Bool)

(assert (=> d!1568522 e!3050188))

(declare-fun res!2083387 () Bool)

(assert (=> d!1568522 (=> (not res!2083387) (not e!3050188))))

(assert (=> d!1568522 (= res!2083387 (= (content!10010 lt!1999302) ((_ map or) (content!10010 (list!17565 (left!40713 (right!41043 lt!1999152)))) (content!10010 (list!17565 (right!41043 (right!41043 lt!1999152)))))))))

(assert (=> d!1568522 (= lt!1999302 e!3050189)))

(declare-fun c!830138 () Bool)

(assert (=> d!1568522 (= c!830138 ((_ is Nil!56033) (list!17565 (left!40713 (right!41043 lt!1999152)))))))

(assert (=> d!1568522 (= (++!12218 (list!17565 (left!40713 (right!41043 lt!1999152))) (list!17565 (right!41043 (right!41043 lt!1999152)))) lt!1999302)))

(declare-fun b!4880600 () Bool)

(assert (=> b!4880600 (= e!3050189 (Cons!56033 (h!62481 (list!17565 (left!40713 (right!41043 lt!1999152)))) (++!12218 (t!364793 (list!17565 (left!40713 (right!41043 lt!1999152)))) (list!17565 (right!41043 (right!41043 lt!1999152))))))))

(assert (= (and d!1568522 c!830138) b!4880599))

(assert (= (and d!1568522 (not c!830138)) b!4880600))

(assert (= (and d!1568522 res!2083387) b!4880601))

(assert (= (and b!4880601 res!2083386) b!4880602))

(declare-fun m!5884458 () Bool)

(assert (=> b!4880601 m!5884458))

(assert (=> b!4880601 m!5883430))

(declare-fun m!5884460 () Bool)

(assert (=> b!4880601 m!5884460))

(assert (=> b!4880601 m!5883432))

(declare-fun m!5884462 () Bool)

(assert (=> b!4880601 m!5884462))

(declare-fun m!5884464 () Bool)

(assert (=> d!1568522 m!5884464))

(assert (=> d!1568522 m!5883430))

(declare-fun m!5884466 () Bool)

(assert (=> d!1568522 m!5884466))

(assert (=> d!1568522 m!5883432))

(declare-fun m!5884468 () Bool)

(assert (=> d!1568522 m!5884468))

(assert (=> b!4880600 m!5883432))

(declare-fun m!5884470 () Bool)

(assert (=> b!4880600 m!5884470))

(assert (=> b!4880110 d!1568522))

(declare-fun d!1568524 () Bool)

(declare-fun c!830139 () Bool)

(assert (=> d!1568524 (= c!830139 ((_ is Empty!14618) (left!40713 (right!41043 lt!1999152))))))

(declare-fun e!3050190 () List!56157)

(assert (=> d!1568524 (= (list!17565 (left!40713 (right!41043 lt!1999152))) e!3050190)))

(declare-fun b!4880603 () Bool)

(assert (=> b!4880603 (= e!3050190 Nil!56033)))

(declare-fun b!4880605 () Bool)

(declare-fun e!3050191 () List!56157)

(assert (=> b!4880605 (= e!3050191 (list!17567 (xs!17928 (left!40713 (right!41043 lt!1999152)))))))

(declare-fun b!4880606 () Bool)

(assert (=> b!4880606 (= e!3050191 (++!12218 (list!17565 (left!40713 (left!40713 (right!41043 lt!1999152)))) (list!17565 (right!41043 (left!40713 (right!41043 lt!1999152))))))))

(declare-fun b!4880604 () Bool)

(assert (=> b!4880604 (= e!3050190 e!3050191)))

(declare-fun c!830140 () Bool)

(assert (=> b!4880604 (= c!830140 ((_ is Leaf!24360) (left!40713 (right!41043 lt!1999152))))))

(assert (= (and d!1568524 c!830139) b!4880603))

(assert (= (and d!1568524 (not c!830139)) b!4880604))

(assert (= (and b!4880604 c!830140) b!4880605))

(assert (= (and b!4880604 (not c!830140)) b!4880606))

(declare-fun m!5884472 () Bool)

(assert (=> b!4880605 m!5884472))

(declare-fun m!5884474 () Bool)

(assert (=> b!4880606 m!5884474))

(declare-fun m!5884476 () Bool)

(assert (=> b!4880606 m!5884476))

(assert (=> b!4880606 m!5884474))

(assert (=> b!4880606 m!5884476))

(declare-fun m!5884478 () Bool)

(assert (=> b!4880606 m!5884478))

(assert (=> b!4880110 d!1568524))

(declare-fun d!1568526 () Bool)

(declare-fun c!830141 () Bool)

(assert (=> d!1568526 (= c!830141 ((_ is Empty!14618) (right!41043 (right!41043 lt!1999152))))))

(declare-fun e!3050192 () List!56157)

(assert (=> d!1568526 (= (list!17565 (right!41043 (right!41043 lt!1999152))) e!3050192)))

(declare-fun b!4880607 () Bool)

(assert (=> b!4880607 (= e!3050192 Nil!56033)))

(declare-fun b!4880609 () Bool)

(declare-fun e!3050193 () List!56157)

(assert (=> b!4880609 (= e!3050193 (list!17567 (xs!17928 (right!41043 (right!41043 lt!1999152)))))))

(declare-fun b!4880610 () Bool)

(assert (=> b!4880610 (= e!3050193 (++!12218 (list!17565 (left!40713 (right!41043 (right!41043 lt!1999152)))) (list!17565 (right!41043 (right!41043 (right!41043 lt!1999152))))))))

(declare-fun b!4880608 () Bool)

(assert (=> b!4880608 (= e!3050192 e!3050193)))

(declare-fun c!830142 () Bool)

(assert (=> b!4880608 (= c!830142 ((_ is Leaf!24360) (right!41043 (right!41043 lt!1999152))))))

(assert (= (and d!1568526 c!830141) b!4880607))

(assert (= (and d!1568526 (not c!830141)) b!4880608))

(assert (= (and b!4880608 c!830142) b!4880609))

(assert (= (and b!4880608 (not c!830142)) b!4880610))

(declare-fun m!5884480 () Bool)

(assert (=> b!4880609 m!5884480))

(declare-fun m!5884482 () Bool)

(assert (=> b!4880610 m!5884482))

(declare-fun m!5884484 () Bool)

(assert (=> b!4880610 m!5884484))

(assert (=> b!4880610 m!5884482))

(assert (=> b!4880610 m!5884484))

(declare-fun m!5884486 () Bool)

(assert (=> b!4880610 m!5884486))

(assert (=> b!4880110 d!1568526))

(declare-fun d!1568528 () Bool)

(declare-fun c!830143 () Bool)

(assert (=> d!1568528 (= c!830143 ((_ is Node!14618) (left!40713 (left!40713 (right!41043 t!4585)))))))

(declare-fun e!3050194 () Bool)

(assert (=> d!1568528 (= (inv!72024 (left!40713 (left!40713 (right!41043 t!4585)))) e!3050194)))

(declare-fun b!4880611 () Bool)

(assert (=> b!4880611 (= e!3050194 (inv!72027 (left!40713 (left!40713 (right!41043 t!4585)))))))

(declare-fun b!4880612 () Bool)

(declare-fun e!3050195 () Bool)

(assert (=> b!4880612 (= e!3050194 e!3050195)))

(declare-fun res!2083388 () Bool)

(assert (=> b!4880612 (= res!2083388 (not ((_ is Leaf!24360) (left!40713 (left!40713 (right!41043 t!4585))))))))

(assert (=> b!4880612 (=> res!2083388 e!3050195)))

(declare-fun b!4880613 () Bool)

(assert (=> b!4880613 (= e!3050195 (inv!72028 (left!40713 (left!40713 (right!41043 t!4585)))))))

(assert (= (and d!1568528 c!830143) b!4880611))

(assert (= (and d!1568528 (not c!830143)) b!4880612))

(assert (= (and b!4880612 (not res!2083388)) b!4880613))

(declare-fun m!5884488 () Bool)

(assert (=> b!4880611 m!5884488))

(declare-fun m!5884490 () Bool)

(assert (=> b!4880613 m!5884490))

(assert (=> b!4880209 d!1568528))

(declare-fun d!1568530 () Bool)

(declare-fun c!830144 () Bool)

(assert (=> d!1568530 (= c!830144 ((_ is Node!14618) (right!41043 (left!40713 (right!41043 t!4585)))))))

(declare-fun e!3050196 () Bool)

(assert (=> d!1568530 (= (inv!72024 (right!41043 (left!40713 (right!41043 t!4585)))) e!3050196)))

(declare-fun b!4880614 () Bool)

(assert (=> b!4880614 (= e!3050196 (inv!72027 (right!41043 (left!40713 (right!41043 t!4585)))))))

(declare-fun b!4880615 () Bool)

(declare-fun e!3050197 () Bool)

(assert (=> b!4880615 (= e!3050196 e!3050197)))

(declare-fun res!2083389 () Bool)

(assert (=> b!4880615 (= res!2083389 (not ((_ is Leaf!24360) (right!41043 (left!40713 (right!41043 t!4585))))))))

(assert (=> b!4880615 (=> res!2083389 e!3050197)))

(declare-fun b!4880616 () Bool)

(assert (=> b!4880616 (= e!3050197 (inv!72028 (right!41043 (left!40713 (right!41043 t!4585)))))))

(assert (= (and d!1568530 c!830144) b!4880614))

(assert (= (and d!1568530 (not c!830144)) b!4880615))

(assert (= (and b!4880615 (not res!2083389)) b!4880616))

(declare-fun m!5884492 () Bool)

(assert (=> b!4880614 m!5884492))

(declare-fun m!5884494 () Bool)

(assert (=> b!4880616 m!5884494))

(assert (=> b!4880209 d!1568530))

(declare-fun d!1568532 () Bool)

(declare-fun lt!1999303 () Int)

(assert (=> d!1568532 (>= lt!1999303 0)))

(declare-fun e!3050198 () Int)

(assert (=> d!1568532 (= lt!1999303 e!3050198)))

(declare-fun c!830145 () Bool)

(assert (=> d!1568532 (= c!830145 ((_ is Nil!56033) lt!1999207))))

(assert (=> d!1568532 (= (size!36961 lt!1999207) lt!1999303)))

(declare-fun b!4880617 () Bool)

(assert (=> b!4880617 (= e!3050198 0)))

(declare-fun b!4880618 () Bool)

(assert (=> b!4880618 (= e!3050198 (+ 1 (size!36961 (t!364793 lt!1999207))))))

(assert (= (and d!1568532 c!830145) b!4880617))

(assert (= (and d!1568532 (not c!830145)) b!4880618))

(declare-fun m!5884496 () Bool)

(assert (=> b!4880618 m!5884496))

(assert (=> b!4879982 d!1568532))

(declare-fun b!4880619 () Bool)

(declare-fun e!3050199 () Bool)

(declare-fun tp!1373046 () Bool)

(assert (=> b!4880619 (= e!3050199 (and tp_is_empty!35699 tp!1373046))))

(assert (=> b!4879985 (= tp!1373015 e!3050199)))

(assert (= (and b!4879985 ((_ is Cons!56033) (innerList!14706 _$14!1600))) b!4880619))

(declare-fun b!4880620 () Bool)

(declare-fun e!3050200 () Bool)

(declare-fun tp!1373047 () Bool)

(assert (=> b!4880620 (= e!3050200 (and tp_is_empty!35699 tp!1373047))))

(assert (=> b!4880211 (= tp!1373031 e!3050200)))

(assert (= (and b!4880211 ((_ is Cons!56033) (innerList!14706 (xs!17928 (left!40713 (right!41043 t!4585)))))) b!4880620))

(declare-fun e!3050202 () Bool)

(declare-fun tp!1373049 () Bool)

(declare-fun b!4880621 () Bool)

(declare-fun tp!1373050 () Bool)

(assert (=> b!4880621 (= e!3050202 (and (inv!72024 (left!40713 (left!40713 (left!40713 (left!40713 t!4585))))) tp!1373050 (inv!72024 (right!41043 (left!40713 (left!40713 (left!40713 t!4585))))) tp!1373049))))

(declare-fun b!4880623 () Bool)

(declare-fun e!3050201 () Bool)

(declare-fun tp!1373048 () Bool)

(assert (=> b!4880623 (= e!3050201 tp!1373048)))

(declare-fun b!4880622 () Bool)

(assert (=> b!4880622 (= e!3050202 (and (inv!72023 (xs!17928 (left!40713 (left!40713 (left!40713 t!4585))))) e!3050201))))

(assert (=> b!4880218 (= tp!1373042 (and (inv!72024 (left!40713 (left!40713 (left!40713 t!4585)))) e!3050202))))

(assert (= (and b!4880218 ((_ is Node!14618) (left!40713 (left!40713 (left!40713 t!4585))))) b!4880621))

(assert (= b!4880622 b!4880623))

(assert (= (and b!4880218 ((_ is Leaf!24360) (left!40713 (left!40713 (left!40713 t!4585))))) b!4880622))

(declare-fun m!5884498 () Bool)

(assert (=> b!4880621 m!5884498))

(declare-fun m!5884500 () Bool)

(assert (=> b!4880621 m!5884500))

(declare-fun m!5884502 () Bool)

(assert (=> b!4880622 m!5884502))

(assert (=> b!4880218 m!5883628))

(declare-fun tp!1373052 () Bool)

(declare-fun e!3050204 () Bool)

(declare-fun tp!1373053 () Bool)

(declare-fun b!4880624 () Bool)

(assert (=> b!4880624 (= e!3050204 (and (inv!72024 (left!40713 (right!41043 (left!40713 (left!40713 t!4585))))) tp!1373053 (inv!72024 (right!41043 (right!41043 (left!40713 (left!40713 t!4585))))) tp!1373052))))

(declare-fun b!4880626 () Bool)

(declare-fun e!3050203 () Bool)

(declare-fun tp!1373051 () Bool)

(assert (=> b!4880626 (= e!3050203 tp!1373051)))

(declare-fun b!4880625 () Bool)

(assert (=> b!4880625 (= e!3050204 (and (inv!72023 (xs!17928 (right!41043 (left!40713 (left!40713 t!4585))))) e!3050203))))

(assert (=> b!4880218 (= tp!1373041 (and (inv!72024 (right!41043 (left!40713 (left!40713 t!4585)))) e!3050204))))

(assert (= (and b!4880218 ((_ is Node!14618) (right!41043 (left!40713 (left!40713 t!4585))))) b!4880624))

(assert (= b!4880625 b!4880626))

(assert (= (and b!4880218 ((_ is Leaf!24360) (right!41043 (left!40713 (left!40713 t!4585))))) b!4880625))

(declare-fun m!5884504 () Bool)

(assert (=> b!4880624 m!5884504))

(declare-fun m!5884506 () Bool)

(assert (=> b!4880624 m!5884506))

(declare-fun m!5884508 () Bool)

(assert (=> b!4880625 m!5884508))

(assert (=> b!4880218 m!5883630))

(declare-fun b!4880627 () Bool)

(declare-fun e!3050205 () Bool)

(declare-fun tp!1373054 () Bool)

(assert (=> b!4880627 (= e!3050205 (and tp_is_empty!35699 tp!1373054))))

(assert (=> b!4880214 (= tp!1373034 e!3050205)))

(assert (= (and b!4880214 ((_ is Cons!56033) (innerList!14706 (xs!17928 (right!41043 (right!41043 t!4585)))))) b!4880627))

(declare-fun b!4880628 () Bool)

(declare-fun e!3050206 () Bool)

(declare-fun tp!1373055 () Bool)

(assert (=> b!4880628 (= e!3050206 (and tp_is_empty!35699 tp!1373055))))

(assert (=> b!4880215 (= tp!1373037 e!3050206)))

(assert (= (and b!4880215 ((_ is Cons!56033) (t!364793 (innerList!14706 (xs!17928 (left!40713 t!4585)))))) b!4880628))

(declare-fun b!4880629 () Bool)

(declare-fun e!3050208 () Bool)

(declare-fun tp!1373057 () Bool)

(declare-fun tp!1373058 () Bool)

(assert (=> b!4880629 (= e!3050208 (and (inv!72024 (left!40713 (left!40713 (right!41043 (right!41043 t!4585))))) tp!1373058 (inv!72024 (right!41043 (left!40713 (right!41043 (right!41043 t!4585))))) tp!1373057))))

(declare-fun b!4880631 () Bool)

(declare-fun e!3050207 () Bool)

(declare-fun tp!1373056 () Bool)

(assert (=> b!4880631 (= e!3050207 tp!1373056)))

(declare-fun b!4880630 () Bool)

(assert (=> b!4880630 (= e!3050208 (and (inv!72023 (xs!17928 (left!40713 (right!41043 (right!41043 t!4585))))) e!3050207))))

(assert (=> b!4880212 (= tp!1373036 (and (inv!72024 (left!40713 (right!41043 (right!41043 t!4585)))) e!3050208))))

(assert (= (and b!4880212 ((_ is Node!14618) (left!40713 (right!41043 (right!41043 t!4585))))) b!4880629))

(assert (= b!4880630 b!4880631))

(assert (= (and b!4880212 ((_ is Leaf!24360) (left!40713 (right!41043 (right!41043 t!4585))))) b!4880630))

(declare-fun m!5884510 () Bool)

(assert (=> b!4880629 m!5884510))

(declare-fun m!5884512 () Bool)

(assert (=> b!4880629 m!5884512))

(declare-fun m!5884514 () Bool)

(assert (=> b!4880630 m!5884514))

(assert (=> b!4880212 m!5883622))

(declare-fun tp!1373061 () Bool)

(declare-fun b!4880632 () Bool)

(declare-fun e!3050210 () Bool)

(declare-fun tp!1373060 () Bool)

(assert (=> b!4880632 (= e!3050210 (and (inv!72024 (left!40713 (right!41043 (right!41043 (right!41043 t!4585))))) tp!1373061 (inv!72024 (right!41043 (right!41043 (right!41043 (right!41043 t!4585))))) tp!1373060))))

(declare-fun b!4880634 () Bool)

(declare-fun e!3050209 () Bool)

(declare-fun tp!1373059 () Bool)

(assert (=> b!4880634 (= e!3050209 tp!1373059)))

(declare-fun b!4880633 () Bool)

(assert (=> b!4880633 (= e!3050210 (and (inv!72023 (xs!17928 (right!41043 (right!41043 (right!41043 t!4585))))) e!3050209))))

(assert (=> b!4880212 (= tp!1373035 (and (inv!72024 (right!41043 (right!41043 (right!41043 t!4585)))) e!3050210))))

(assert (= (and b!4880212 ((_ is Node!14618) (right!41043 (right!41043 (right!41043 t!4585))))) b!4880632))

(assert (= b!4880633 b!4880634))

(assert (= (and b!4880212 ((_ is Leaf!24360) (right!41043 (right!41043 (right!41043 t!4585))))) b!4880633))

(declare-fun m!5884516 () Bool)

(assert (=> b!4880632 m!5884516))

(declare-fun m!5884518 () Bool)

(assert (=> b!4880632 m!5884518))

(declare-fun m!5884520 () Bool)

(assert (=> b!4880633 m!5884520))

(assert (=> b!4880212 m!5883624))

(declare-fun tp!1373063 () Bool)

(declare-fun b!4880635 () Bool)

(declare-fun tp!1373064 () Bool)

(declare-fun e!3050212 () Bool)

(assert (=> b!4880635 (= e!3050212 (and (inv!72024 (left!40713 (left!40713 (right!41043 (left!40713 t!4585))))) tp!1373064 (inv!72024 (right!41043 (left!40713 (right!41043 (left!40713 t!4585))))) tp!1373063))))

(declare-fun b!4880637 () Bool)

(declare-fun e!3050211 () Bool)

(declare-fun tp!1373062 () Bool)

(assert (=> b!4880637 (= e!3050211 tp!1373062)))

(declare-fun b!4880636 () Bool)

(assert (=> b!4880636 (= e!3050212 (and (inv!72023 (xs!17928 (left!40713 (right!41043 (left!40713 t!4585))))) e!3050211))))

(assert (=> b!4880221 (= tp!1373045 (and (inv!72024 (left!40713 (right!41043 (left!40713 t!4585)))) e!3050212))))

(assert (= (and b!4880221 ((_ is Node!14618) (left!40713 (right!41043 (left!40713 t!4585))))) b!4880635))

(assert (= b!4880636 b!4880637))

(assert (= (and b!4880221 ((_ is Leaf!24360) (left!40713 (right!41043 (left!40713 t!4585))))) b!4880636))

(declare-fun m!5884522 () Bool)

(assert (=> b!4880635 m!5884522))

(declare-fun m!5884524 () Bool)

(assert (=> b!4880635 m!5884524))

(declare-fun m!5884526 () Bool)

(assert (=> b!4880636 m!5884526))

(assert (=> b!4880221 m!5883634))

(declare-fun e!3050214 () Bool)

(declare-fun tp!1373067 () Bool)

(declare-fun b!4880638 () Bool)

(declare-fun tp!1373066 () Bool)

(assert (=> b!4880638 (= e!3050214 (and (inv!72024 (left!40713 (right!41043 (right!41043 (left!40713 t!4585))))) tp!1373067 (inv!72024 (right!41043 (right!41043 (right!41043 (left!40713 t!4585))))) tp!1373066))))

(declare-fun b!4880640 () Bool)

(declare-fun e!3050213 () Bool)

(declare-fun tp!1373065 () Bool)

(assert (=> b!4880640 (= e!3050213 tp!1373065)))

(declare-fun b!4880639 () Bool)

(assert (=> b!4880639 (= e!3050214 (and (inv!72023 (xs!17928 (right!41043 (right!41043 (left!40713 t!4585))))) e!3050213))))

(assert (=> b!4880221 (= tp!1373044 (and (inv!72024 (right!41043 (right!41043 (left!40713 t!4585)))) e!3050214))))

(assert (= (and b!4880221 ((_ is Node!14618) (right!41043 (right!41043 (left!40713 t!4585))))) b!4880638))

(assert (= b!4880639 b!4880640))

(assert (= (and b!4880221 ((_ is Leaf!24360) (right!41043 (right!41043 (left!40713 t!4585))))) b!4880639))

(declare-fun m!5884528 () Bool)

(assert (=> b!4880638 m!5884528))

(declare-fun m!5884530 () Bool)

(assert (=> b!4880638 m!5884530))

(declare-fun m!5884532 () Bool)

(assert (=> b!4880639 m!5884532))

(assert (=> b!4880221 m!5883636))

(declare-fun b!4880641 () Bool)

(declare-fun e!3050215 () Bool)

(declare-fun tp!1373068 () Bool)

(assert (=> b!4880641 (= e!3050215 (and tp_is_empty!35699 tp!1373068))))

(assert (=> b!4880220 (= tp!1373040 e!3050215)))

(assert (= (and b!4880220 ((_ is Cons!56033) (innerList!14706 (xs!17928 (left!40713 (left!40713 t!4585)))))) b!4880641))

(declare-fun b!4880642 () Bool)

(declare-fun e!3050216 () Bool)

(declare-fun tp!1373069 () Bool)

(assert (=> b!4880642 (= e!3050216 (and tp_is_empty!35699 tp!1373069))))

(assert (=> b!4880216 (= tp!1373038 e!3050216)))

(assert (= (and b!4880216 ((_ is Cons!56033) (t!364793 (t!364793 (innerList!14706 (xs!17928 t!4585)))))) b!4880642))

(declare-fun b!4880643 () Bool)

(declare-fun e!3050217 () Bool)

(declare-fun tp!1373070 () Bool)

(assert (=> b!4880643 (= e!3050217 (and tp_is_empty!35699 tp!1373070))))

(assert (=> b!4880223 (= tp!1373043 e!3050217)))

(assert (= (and b!4880223 ((_ is Cons!56033) (innerList!14706 (xs!17928 (right!41043 (left!40713 t!4585)))))) b!4880643))

(declare-fun tp!1373073 () Bool)

(declare-fun e!3050219 () Bool)

(declare-fun b!4880644 () Bool)

(declare-fun tp!1373072 () Bool)

(assert (=> b!4880644 (= e!3050219 (and (inv!72024 (left!40713 (left!40713 (left!40713 (right!41043 t!4585))))) tp!1373073 (inv!72024 (right!41043 (left!40713 (left!40713 (right!41043 t!4585))))) tp!1373072))))

(declare-fun b!4880646 () Bool)

(declare-fun e!3050218 () Bool)

(declare-fun tp!1373071 () Bool)

(assert (=> b!4880646 (= e!3050218 tp!1373071)))

(declare-fun b!4880645 () Bool)

(assert (=> b!4880645 (= e!3050219 (and (inv!72023 (xs!17928 (left!40713 (left!40713 (right!41043 t!4585))))) e!3050218))))

(assert (=> b!4880209 (= tp!1373033 (and (inv!72024 (left!40713 (left!40713 (right!41043 t!4585)))) e!3050219))))

(assert (= (and b!4880209 ((_ is Node!14618) (left!40713 (left!40713 (right!41043 t!4585))))) b!4880644))

(assert (= b!4880645 b!4880646))

(assert (= (and b!4880209 ((_ is Leaf!24360) (left!40713 (left!40713 (right!41043 t!4585))))) b!4880645))

(declare-fun m!5884534 () Bool)

(assert (=> b!4880644 m!5884534))

(declare-fun m!5884536 () Bool)

(assert (=> b!4880644 m!5884536))

(declare-fun m!5884538 () Bool)

(assert (=> b!4880645 m!5884538))

(assert (=> b!4880209 m!5883616))

(declare-fun tp!1373076 () Bool)

(declare-fun b!4880647 () Bool)

(declare-fun tp!1373075 () Bool)

(declare-fun e!3050221 () Bool)

(assert (=> b!4880647 (= e!3050221 (and (inv!72024 (left!40713 (right!41043 (left!40713 (right!41043 t!4585))))) tp!1373076 (inv!72024 (right!41043 (right!41043 (left!40713 (right!41043 t!4585))))) tp!1373075))))

(declare-fun b!4880649 () Bool)

(declare-fun e!3050220 () Bool)

(declare-fun tp!1373074 () Bool)

(assert (=> b!4880649 (= e!3050220 tp!1373074)))

(declare-fun b!4880648 () Bool)

(assert (=> b!4880648 (= e!3050221 (and (inv!72023 (xs!17928 (right!41043 (left!40713 (right!41043 t!4585))))) e!3050220))))

(assert (=> b!4880209 (= tp!1373032 (and (inv!72024 (right!41043 (left!40713 (right!41043 t!4585)))) e!3050221))))

(assert (= (and b!4880209 ((_ is Node!14618) (right!41043 (left!40713 (right!41043 t!4585))))) b!4880647))

(assert (= b!4880648 b!4880649))

(assert (= (and b!4880209 ((_ is Leaf!24360) (right!41043 (left!40713 (right!41043 t!4585))))) b!4880648))

(declare-fun m!5884540 () Bool)

(assert (=> b!4880647 m!5884540))

(declare-fun m!5884542 () Bool)

(assert (=> b!4880647 m!5884542))

(declare-fun m!5884544 () Bool)

(assert (=> b!4880648 m!5884544))

(assert (=> b!4880209 m!5883618))

(declare-fun b!4880650 () Bool)

(declare-fun e!3050222 () Bool)

(declare-fun tp!1373077 () Bool)

(assert (=> b!4880650 (= e!3050222 (and tp_is_empty!35699 tp!1373077))))

(assert (=> b!4880217 (= tp!1373039 e!3050222)))

(assert (= (and b!4880217 ((_ is Cons!56033) (t!364793 (innerList!14706 (xs!17928 (right!41043 t!4585)))))) b!4880650))

(check-sat (not b!4880330) (not b!4880402) (not b!4880413) (not b!4880571) (not b!4880635) (not d!1568520) (not b!4880634) (not bm!338811) (not b!4880521) tp_is_empty!35699 (not d!1568240) (not b!4880230) (not b!4880474) (not b!4880252) (not b!4880263) (not bm!338816) (not b!4880300) (not bm!338839) (not b!4880259) (not b!4880321) (not b!4880435) (not b!4880463) (not b!4880394) (not d!1568252) (not d!1568448) (not d!1568518) (not b!4880560) (not d!1568336) (not d!1568196) (not b!4880501) (not b!4880582) (not bm!338838) (not b!4880579) (not b!4880534) (not bm!338835) (not b!4880613) (not b!4880460) (not b!4880221) (not b!4880478) (not d!1568216) (not b!4880569) (not bm!338820) (not bm!338810) (not d!1568278) (not b!4880522) (not b!4880467) (not d!1568300) (not b!4880451) (not b!4880480) (not d!1568426) (not bm!338823) (not d!1568200) (not b!4880483) (not b!4880472) (not b!4880508) (not b!4880226) (not b!4880391) (not b!4880633) (not d!1568470) (not b!4880429) (not b!4880620) (not b!4880340) (not b!4880366) (not b!4880631) (not d!1568444) (not b!4880381) (not b!4880485) (not b!4880446) (not b!4880209) (not b!4880627) (not b!4880342) (not b!4880228) (not b!4880642) (not b!4880453) (not b!4880384) (not b!4880291) (not bm!338804) (not b!4880449) (not bm!338808) (not b!4880530) (not d!1568370) (not d!1568324) (not b!4880371) (not b!4880601) (not b!4880270) (not b!4880632) (not b!4880628) (not b!4880378) (not b!4880532) (not bm!338803) (not b!4880212) (not b!4880243) (not b!4880509) (not b!4880367) (not b!4880504) (not b!4880524) (not b!4880229) (not b!4880233) (not b!4880519) (not b!4880288) (not d!1568190) (not b!4880406) (not b!4880518) (not b!4880418) (not d!1568424) (not b!4880308) (not d!1568486) (not d!1568488) (not b!4880258) (not b!4880315) (not b!4880498) (not b!4880436) (not b!4880464) (not bm!338814) (not b!4880373) (not b!4880247) (not b!4880441) (not b!4880542) (not b!4880624) (not b!4880398) (not b!4880567) (not b!4880325) (not b!4880225) (not b!4880410) (not b!4880430) (not b!4880276) (not b!4880622) (not b!4880317) (not b!4880312) (not b!4880359) (not b!4880294) (not b!4880490) (not b!4880505) (not bm!338802) (not b!4880644) (not b!4880261) (not b!4880439) (not b!4880618) (not b!4880640) (not b!4880616) (not b!4880307) (not bm!338822) (not bm!338805) (not b!4880224) (not b!4880277) (not b!4880609) (not b!4880585) (not b!4880610) (not b!4880590) (not d!1568502) (not d!1568452) (not b!4880345) (not b!4880374) (not d!1568414) (not b!4880335) (not d!1568456) (not b!4880552) (not b!4880597) (not b!4880414) (not d!1568400) (not bm!338818) (not b!4880649) (not b!4880368) (not bm!338824) (not d!1568516) (not d!1568258) (not d!1568224) (not b!4880299) (not b!4880422) (not b!4880365) (not bm!338826) (not b!4880326) (not b!4880549) (not b!4880377) (not b!4880387) (not b!4880285) (not b!4880623) (not b!4880311) (not b!4880438) (not b!4880447) (not b!4880383) (not b!4880302) (not b!4880260) (not bm!338807) (not b!4880336) (not b!4880344) (not d!1568412) (not b!4880251) (not b!4880520) (not b!4880376) (not b!4880630) (not b!4880592) (not b!4880586) (not b!4880289) (not b!4880516) (not b!4880293) (not b!4880295) (not b!4880272) (not b!4880237) (not d!1568504) (not b!4880314) (not b!4880411) (not d!1568442) (not d!1568326) (not b!4880455) (not b!4880506) (not b!4880423) (not b!4880637) (not b!4880432) (not b!4880577) (not b!4880255) (not b!4880380) (not b!4880329) (not d!1568440) (not b!4880265) (not b!4880554) (not b!4880248) (not b!4880425) (not d!1568420) (not d!1568402) (not b!4880338) (not bm!338825) (not b!4880647) (not b!4880475) (not b!4880318) (not b!4880443) (not b!4880399) (not b!4880487) (not b!4880581) (not b!4880471) (not d!1568198) (not d!1568364) (not b!4880282) (not b!4880502) (not b!4880537) (not b!4880545) (not b!4880268) (not b!4880650) (not b!4880606) (not b!4880346) (not b!4880561) (not bm!338832) (not b!4880584) (not b!4880489) (not b!4880511) (not b!4880286) (not bm!338815) (not b!4880476) (not b!4880427) (not d!1568234) (not b!4880523) (not d!1568260) (not b!4880611) (not bm!338830) (not d!1568500) (not b!4880262) (not b!4880349) (not b!4880364) (not b!4880403) (not b!4880227) (not d!1568192) (not b!4880456) (not bm!338809) (not b!4880316) (not b!4880646) (not b!4880440) (not b!4880621) (not d!1568314) (not b!4880347) (not b!4880600) (not b!4880528) (not b!4880419) (not b!4880296) (not bm!338812) (not d!1568226) (not b!4880643) (not b!4880536) (not bm!338806) (not d!1568434) (not b!4880266) (not b!4880639) (not b!4880641) (not bm!338821) (not b!4880551) (not b!4880424) (not b!4880351) (not b!4880426) (not b!4880303) (not bm!338817) (not b!4880348) (not b!4880357) (not b!4880362) (not b!4880495) (not bm!338813) (not b!4880594) (not d!1568478) (not b!4880499) (not d!1568264) (not b!4880546) (not b!4880313) (not b!4880648) (not b!4880605) (not b!4880555) (not b!4880428) (not b!4880470) (not d!1568358) (not b!4880444) (not b!4880583) (not b!4880437) (not b!4880514) (not b!4880379) (not b!4880645) (not b!4880442) (not b!4880469) (not bm!338819) (not b!4880339) (not b!4880361) (not b!4880390) (not b!4880257) (not b!4880636) (not b!4880473) (not b!4880503) (not b!4880626) (not b!4880343) (not b!4880218) (not b!4880588) (not d!1568374) (not d!1568262) (not b!4880405) (not b!4880507) (not b!4880638) (not b!4880341) (not b!4880494) (not b!4880256) (not b!4880433) (not b!4880596) (not d!1568404) (not d!1568522) (not b!4880541) (not b!4880292) (not d!1568248) (not b!4880281) (not d!1568194) (not b!4880547) (not b!4880625) (not bm!338833) (not b!4880236) (not b!4880468) (not b!4880614) (not b!4880332) (not b!4880445) (not d!1568356) (not b!4880461) (not b!4880619) (not b!4880369) (not d!1568346) (not b!4880393) (not b!4880629) (not b!4880320))
(check-sat)
