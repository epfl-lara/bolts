; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187168 () Bool)

(assert start!187168)

(declare-fun tp!532009 () Bool)

(declare-fun b!1869725 () Bool)

(declare-fun tp!532010 () Bool)

(declare-fun e!1192997 () Bool)

(declare-datatypes ((T!33242 0))(
  ( (T!33243 (val!5960 Int)) )
))
(declare-datatypes ((List!20777 0))(
  ( (Nil!20695) (Cons!20695 (h!26096 T!33242) (t!172966 List!20777)) )
))
(declare-datatypes ((IArray!13785 0))(
  ( (IArray!13786 (innerList!6950 List!20777)) )
))
(declare-datatypes ((Conc!6890 0))(
  ( (Node!6890 (left!16688 Conc!6890) (right!17018 Conc!6890) (csize!14010 Int) (cheight!7101 Int)) (Leaf!10103 (xs!9772 IArray!13785) (csize!14011 Int)) (Empty!6890) )
))
(declare-fun t!4595 () Conc!6890)

(declare-fun inv!27451 (Conc!6890) Bool)

(assert (=> b!1869725 (= e!1192997 (and (inv!27451 (left!16688 t!4595)) tp!532010 (inv!27451 (right!17018 t!4595)) tp!532009))))

(declare-fun b!1869726 () Bool)

(declare-fun res!837066 () Bool)

(declare-fun e!1192995 () Bool)

(assert (=> b!1869726 (=> (not res!837066) (not e!1192995))))

(get-info :version)

(assert (=> b!1869726 (= res!837066 (not ((_ is Leaf!10103) t!4595)))))

(declare-fun b!1869727 () Bool)

(declare-fun e!1192994 () Bool)

(declare-fun lt!719117 () Conc!6890)

(declare-fun list!8486 (Conc!6890) List!20777)

(declare-fun tail!2842 (List!20777) List!20777)

(assert (=> b!1869727 (= e!1192994 (= (list!8486 lt!719117) (tail!2842 (list!8486 t!4595))))))

(declare-fun b!1869728 () Bool)

(declare-fun e!1192996 () Bool)

(declare-fun tp!532011 () Bool)

(assert (=> b!1869728 (= e!1192996 tp!532011)))

(declare-fun b!1869729 () Bool)

(declare-fun e!1192993 () Bool)

(declare-fun isEmpty!12931 (Conc!6890) Bool)

(assert (=> b!1869729 (= e!1192993 (not (isEmpty!12931 (left!16688 t!4595))))))

(declare-fun b!1869730 () Bool)

(declare-fun res!837062 () Bool)

(assert (=> b!1869730 (=> (not res!837062) (not e!1192995))))

(assert (=> b!1869730 (= res!837062 (not (isEmpty!12931 t!4595)))))

(declare-fun b!1869731 () Bool)

(declare-fun res!837065 () Bool)

(assert (=> b!1869731 (=> (not res!837065) (not e!1192995))))

(assert (=> b!1869731 (= res!837065 ((_ is Node!6890) t!4595))))

(declare-fun b!1869732 () Bool)

(declare-fun inv!27452 (IArray!13785) Bool)

(assert (=> b!1869732 (= e!1192997 (and (inv!27452 (xs!9772 t!4595)) e!1192996))))

(declare-fun res!837064 () Bool)

(assert (=> start!187168 (=> (not res!837064) (not e!1192995))))

(declare-fun isBalanced!2191 (Conc!6890) Bool)

(assert (=> start!187168 (= res!837064 (isBalanced!2191 t!4595))))

(assert (=> start!187168 e!1192995))

(assert (=> start!187168 (and (inv!27451 t!4595) e!1192997)))

(declare-fun b!1869733 () Bool)

(declare-fun res!837063 () Bool)

(assert (=> b!1869733 (=> (not res!837063) (not e!1192995))))

(assert (=> b!1869733 (= res!837063 e!1192993)))

(declare-fun res!837067 () Bool)

(assert (=> b!1869733 (=> res!837067 e!1192993)))

(assert (=> b!1869733 (= res!837067 (not ((_ is Node!6890) t!4595)))))

(declare-fun b!1869734 () Bool)

(assert (=> b!1869734 (= e!1192995 (not e!1192994))))

(declare-fun res!837061 () Bool)

(assert (=> b!1869734 (=> (not res!837061) (not e!1192994))))

(assert (=> b!1869734 (= res!837061 (isBalanced!2191 lt!719117))))

(declare-fun ++!5619 (Conc!6890 Conc!6890) Conc!6890)

(declare-fun tail!2843 (Conc!6890) Conc!6890)

(assert (=> b!1869734 (= lt!719117 (++!5619 (tail!2843 (left!16688 t!4595)) (right!17018 t!4595)))))

(declare-fun lt!719119 () List!20777)

(declare-fun lt!719118 () List!20777)

(declare-fun ++!5620 (List!20777 List!20777) List!20777)

(assert (=> b!1869734 (= (tail!2842 (++!5620 lt!719119 lt!719118)) (++!5620 (tail!2842 lt!719119) lt!719118))))

(declare-datatypes ((Unit!35315 0))(
  ( (Unit!35316) )
))
(declare-fun lt!719116 () Unit!35315)

(declare-fun lemmaTailOfConcatIsTailConcat!44 (List!20777 List!20777) Unit!35315)

(assert (=> b!1869734 (= lt!719116 (lemmaTailOfConcatIsTailConcat!44 lt!719119 lt!719118))))

(assert (=> b!1869734 (= lt!719118 (list!8486 (right!17018 t!4595)))))

(assert (=> b!1869734 (= lt!719119 (list!8486 (left!16688 t!4595)))))

(assert (= (and start!187168 res!837064) b!1869730))

(assert (= (and b!1869730 res!837062) b!1869726))

(assert (= (and b!1869726 res!837066) b!1869733))

(assert (= (and b!1869733 (not res!837067)) b!1869729))

(assert (= (and b!1869733 res!837063) b!1869731))

(assert (= (and b!1869731 res!837065) b!1869734))

(assert (= (and b!1869734 res!837061) b!1869727))

(assert (= (and start!187168 ((_ is Node!6890) t!4595)) b!1869725))

(assert (= b!1869732 b!1869728))

(assert (= (and start!187168 ((_ is Leaf!10103) t!4595)) b!1869732))

(declare-fun m!2295599 () Bool)

(assert (=> b!1869730 m!2295599))

(declare-fun m!2295601 () Bool)

(assert (=> b!1869729 m!2295601))

(declare-fun m!2295603 () Bool)

(assert (=> b!1869732 m!2295603))

(declare-fun m!2295605 () Bool)

(assert (=> b!1869734 m!2295605))

(declare-fun m!2295607 () Bool)

(assert (=> b!1869734 m!2295607))

(declare-fun m!2295609 () Bool)

(assert (=> b!1869734 m!2295609))

(declare-fun m!2295611 () Bool)

(assert (=> b!1869734 m!2295611))

(declare-fun m!2295613 () Bool)

(assert (=> b!1869734 m!2295613))

(assert (=> b!1869734 m!2295609))

(declare-fun m!2295615 () Bool)

(assert (=> b!1869734 m!2295615))

(declare-fun m!2295617 () Bool)

(assert (=> b!1869734 m!2295617))

(assert (=> b!1869734 m!2295607))

(declare-fun m!2295619 () Bool)

(assert (=> b!1869734 m!2295619))

(declare-fun m!2295621 () Bool)

(assert (=> b!1869734 m!2295621))

(assert (=> b!1869734 m!2295615))

(declare-fun m!2295623 () Bool)

(assert (=> b!1869734 m!2295623))

(declare-fun m!2295625 () Bool)

(assert (=> b!1869727 m!2295625))

(declare-fun m!2295627 () Bool)

(assert (=> b!1869727 m!2295627))

(assert (=> b!1869727 m!2295627))

(declare-fun m!2295629 () Bool)

(assert (=> b!1869727 m!2295629))

(declare-fun m!2295631 () Bool)

(assert (=> b!1869725 m!2295631))

(declare-fun m!2295633 () Bool)

(assert (=> b!1869725 m!2295633))

(declare-fun m!2295635 () Bool)

(assert (=> start!187168 m!2295635))

(declare-fun m!2295637 () Bool)

(assert (=> start!187168 m!2295637))

(check-sat (not b!1869732) (not b!1869734) (not start!187168) (not b!1869727) (not b!1869729) (not b!1869728) (not b!1869725) (not b!1869730))
(check-sat)
(get-model)

(declare-fun d!571579 () Bool)

(declare-fun lt!719122 () Bool)

(declare-fun isEmpty!12933 (List!20777) Bool)

(assert (=> d!571579 (= lt!719122 (isEmpty!12933 (list!8486 t!4595)))))

(declare-fun size!16423 (Conc!6890) Int)

(assert (=> d!571579 (= lt!719122 (= (size!16423 t!4595) 0))))

(assert (=> d!571579 (= (isEmpty!12931 t!4595) lt!719122)))

(declare-fun bs!411927 () Bool)

(assert (= bs!411927 d!571579))

(assert (=> bs!411927 m!2295627))

(assert (=> bs!411927 m!2295627))

(declare-fun m!2295641 () Bool)

(assert (=> bs!411927 m!2295641))

(declare-fun m!2295643 () Bool)

(assert (=> bs!411927 m!2295643))

(assert (=> b!1869730 d!571579))

(declare-fun d!571583 () Bool)

(declare-fun c!304658 () Bool)

(assert (=> d!571583 (= c!304658 ((_ is Node!6890) (left!16688 t!4595)))))

(declare-fun e!1193006 () Bool)

(assert (=> d!571583 (= (inv!27451 (left!16688 t!4595)) e!1193006)))

(declare-fun b!1869753 () Bool)

(declare-fun inv!27455 (Conc!6890) Bool)

(assert (=> b!1869753 (= e!1193006 (inv!27455 (left!16688 t!4595)))))

(declare-fun b!1869754 () Bool)

(declare-fun e!1193007 () Bool)

(assert (=> b!1869754 (= e!1193006 e!1193007)))

(declare-fun res!837082 () Bool)

(assert (=> b!1869754 (= res!837082 (not ((_ is Leaf!10103) (left!16688 t!4595))))))

(assert (=> b!1869754 (=> res!837082 e!1193007)))

(declare-fun b!1869755 () Bool)

(declare-fun inv!27456 (Conc!6890) Bool)

(assert (=> b!1869755 (= e!1193007 (inv!27456 (left!16688 t!4595)))))

(assert (= (and d!571583 c!304658) b!1869753))

(assert (= (and d!571583 (not c!304658)) b!1869754))

(assert (= (and b!1869754 (not res!837082)) b!1869755))

(declare-fun m!2295645 () Bool)

(assert (=> b!1869753 m!2295645))

(declare-fun m!2295647 () Bool)

(assert (=> b!1869755 m!2295647))

(assert (=> b!1869725 d!571583))

(declare-fun d!571585 () Bool)

(declare-fun c!304659 () Bool)

(assert (=> d!571585 (= c!304659 ((_ is Node!6890) (right!17018 t!4595)))))

(declare-fun e!1193008 () Bool)

(assert (=> d!571585 (= (inv!27451 (right!17018 t!4595)) e!1193008)))

(declare-fun b!1869756 () Bool)

(assert (=> b!1869756 (= e!1193008 (inv!27455 (right!17018 t!4595)))))

(declare-fun b!1869757 () Bool)

(declare-fun e!1193009 () Bool)

(assert (=> b!1869757 (= e!1193008 e!1193009)))

(declare-fun res!837083 () Bool)

(assert (=> b!1869757 (= res!837083 (not ((_ is Leaf!10103) (right!17018 t!4595))))))

(assert (=> b!1869757 (=> res!837083 e!1193009)))

(declare-fun b!1869758 () Bool)

(assert (=> b!1869758 (= e!1193009 (inv!27456 (right!17018 t!4595)))))

(assert (= (and d!571585 c!304659) b!1869756))

(assert (= (and d!571585 (not c!304659)) b!1869757))

(assert (= (and b!1869757 (not res!837083)) b!1869758))

(declare-fun m!2295649 () Bool)

(assert (=> b!1869756 m!2295649))

(declare-fun m!2295651 () Bool)

(assert (=> b!1869758 m!2295651))

(assert (=> b!1869725 d!571585))

(declare-fun d!571587 () Bool)

(assert (=> d!571587 (= (tail!2842 lt!719119) (t!172966 lt!719119))))

(assert (=> b!1869734 d!571587))

(declare-fun d!571589 () Bool)

(declare-fun c!304666 () Bool)

(assert (=> d!571589 (= c!304666 ((_ is Empty!6890) (right!17018 t!4595)))))

(declare-fun e!1193020 () List!20777)

(assert (=> d!571589 (= (list!8486 (right!17018 t!4595)) e!1193020)))

(declare-fun b!1869782 () Bool)

(declare-fun e!1193021 () List!20777)

(assert (=> b!1869782 (= e!1193021 (++!5620 (list!8486 (left!16688 (right!17018 t!4595))) (list!8486 (right!17018 (right!17018 t!4595)))))))

(declare-fun b!1869780 () Bool)

(assert (=> b!1869780 (= e!1193020 e!1193021)))

(declare-fun c!304667 () Bool)

(assert (=> b!1869780 (= c!304667 ((_ is Leaf!10103) (right!17018 t!4595)))))

(declare-fun b!1869781 () Bool)

(declare-fun list!8488 (IArray!13785) List!20777)

(assert (=> b!1869781 (= e!1193021 (list!8488 (xs!9772 (right!17018 t!4595))))))

(declare-fun b!1869779 () Bool)

(assert (=> b!1869779 (= e!1193020 Nil!20695)))

(assert (= (and d!571589 c!304666) b!1869779))

(assert (= (and d!571589 (not c!304666)) b!1869780))

(assert (= (and b!1869780 c!304667) b!1869781))

(assert (= (and b!1869780 (not c!304667)) b!1869782))

(declare-fun m!2295663 () Bool)

(assert (=> b!1869782 m!2295663))

(declare-fun m!2295665 () Bool)

(assert (=> b!1869782 m!2295665))

(assert (=> b!1869782 m!2295663))

(assert (=> b!1869782 m!2295665))

(declare-fun m!2295667 () Bool)

(assert (=> b!1869782 m!2295667))

(declare-fun m!2295669 () Bool)

(assert (=> b!1869781 m!2295669))

(assert (=> b!1869734 d!571589))

(declare-fun b!1869896 () Bool)

(declare-fun e!1193083 () Conc!6890)

(declare-fun e!1193087 () Conc!6890)

(assert (=> b!1869896 (= e!1193083 e!1193087)))

(declare-fun c!304714 () Bool)

(assert (=> b!1869896 (= c!304714 (= (right!17018 t!4595) Empty!6890))))

(declare-fun c!304715 () Bool)

(declare-fun lt!719146 () Conc!6890)

(declare-fun c!304719 () Bool)

(declare-fun call!116016 () Conc!6890)

(declare-fun lt!719144 () Conc!6890)

(declare-fun bm!116009 () Bool)

(declare-fun call!116020 () Conc!6890)

(declare-fun c!304718 () Bool)

(declare-fun c!304720 () Bool)

(declare-fun c!304717 () Bool)

(declare-fun c!304716 () Bool)

(declare-fun call!116018 () Conc!6890)

(declare-fun call!116023 () Conc!6890)

(declare-fun <>!164 (Conc!6890 Conc!6890) Conc!6890)

(assert (=> bm!116009 (= call!116020 (<>!164 (ite c!304720 (tail!2843 (left!16688 t!4595)) (ite c!304716 (ite (or c!304715 c!304717) (left!16688 (tail!2843 (left!16688 t!4595))) call!116023) (ite c!304719 call!116016 (ite c!304718 lt!719146 (right!17018 (left!16688 (right!17018 t!4595))))))) (ite c!304720 (right!17018 t!4595) (ite c!304716 (ite c!304715 call!116018 (ite c!304717 call!116023 lt!719144)) (ite c!304719 (right!17018 (right!17018 t!4595)) (ite c!304718 (right!17018 (left!16688 (right!17018 t!4595))) (right!17018 (right!17018 t!4595))))))))))

(declare-fun b!1869897 () Bool)

(assert (=> b!1869897 (= e!1193087 (tail!2843 (left!16688 t!4595)))))

(declare-fun b!1869898 () Bool)

(declare-fun e!1193084 () Conc!6890)

(declare-fun e!1193086 () Conc!6890)

(assert (=> b!1869898 (= e!1193084 e!1193086)))

(declare-fun lt!719145 () Int)

(assert (=> b!1869898 (= c!304716 (< lt!719145 (- 1)))))

(declare-fun bm!116010 () Bool)

(declare-fun call!116027 () Int)

(declare-fun height!1077 (Conc!6890) Int)

(assert (=> bm!116010 (= call!116027 (height!1077 (ite c!304716 lt!719144 lt!719146)))))

(declare-fun bm!116011 () Bool)

(declare-fun call!116022 () Conc!6890)

(assert (=> bm!116011 (= call!116016 call!116022)))

(declare-fun b!1869899 () Bool)

(declare-fun e!1193082 () Conc!6890)

(declare-fun call!116019 () Conc!6890)

(assert (=> b!1869899 (= e!1193082 call!116019)))

(declare-fun call!116015 () Conc!6890)

(declare-fun call!116017 () Conc!6890)

(declare-fun bm!116012 () Bool)

(assert (=> bm!116012 (= call!116015 (<>!164 (ite c!304716 (ite c!304717 (left!16688 (right!17018 (tail!2843 (left!16688 t!4595)))) (left!16688 (tail!2843 (left!16688 t!4595)))) (ite c!304718 call!116017 lt!719146)) (ite c!304716 (ite c!304717 lt!719144 (left!16688 (right!17018 (tail!2843 (left!16688 t!4595))))) (ite c!304718 (right!17018 (right!17018 t!4595)) call!116017))))))

(declare-fun b!1869901 () Bool)

(assert (=> b!1869901 (= c!304720 (and (<= (- 1) lt!719145) (<= lt!719145 1)))))

(assert (=> b!1869901 (= lt!719145 (- (height!1077 (right!17018 t!4595)) (height!1077 (tail!2843 (left!16688 t!4595)))))))

(assert (=> b!1869901 (= e!1193087 e!1193084)))

(declare-fun b!1869902 () Bool)

(assert (=> b!1869902 (= e!1193083 (right!17018 t!4595))))

(declare-fun b!1869903 () Bool)

(declare-fun res!837115 () Bool)

(declare-fun e!1193081 () Bool)

(assert (=> b!1869903 (=> (not res!837115) (not e!1193081))))

(declare-fun lt!719143 () Conc!6890)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1869903 (= res!837115 (<= (height!1077 lt!719143) (+ (max!0 (height!1077 (tail!2843 (left!16688 t!4595))) (height!1077 (right!17018 t!4595))) 1)))))

(declare-fun bm!116013 () Bool)

(assert (=> bm!116013 (= call!116022 (++!5619 (ite c!304716 (ite c!304715 (right!17018 (tail!2843 (left!16688 t!4595))) (right!17018 (right!17018 (tail!2843 (left!16688 t!4595))))) (tail!2843 (left!16688 t!4595))) (ite c!304716 (right!17018 t!4595) (ite c!304719 (left!16688 (right!17018 t!4595)) (left!16688 (left!16688 (right!17018 t!4595)))))))))

(declare-fun b!1869904 () Bool)

(declare-fun e!1193078 () Conc!6890)

(declare-fun e!1193085 () Conc!6890)

(assert (=> b!1869904 (= e!1193078 e!1193085)))

(assert (=> b!1869904 (= lt!719146 call!116016)))

(declare-fun call!116021 () Int)

(assert (=> b!1869904 (= c!304718 (= call!116027 (- call!116021 3)))))

(declare-fun bm!116014 () Bool)

(declare-fun call!116026 () Conc!6890)

(declare-fun call!116025 () Conc!6890)

(assert (=> bm!116014 (= call!116026 call!116025)))

(declare-fun bm!116015 () Bool)

(assert (=> bm!116015 (= call!116021 (height!1077 (ite c!304716 (right!17018 (tail!2843 (left!16688 t!4595))) (right!17018 t!4595))))))

(declare-fun b!1869905 () Bool)

(declare-fun call!116014 () Conc!6890)

(assert (=> b!1869905 (= e!1193078 call!116014)))

(declare-fun b!1869906 () Bool)

(declare-fun e!1193079 () Conc!6890)

(assert (=> b!1869906 (= e!1193079 e!1193082)))

(assert (=> b!1869906 (= lt!719144 call!116018)))

(declare-fun call!116029 () Int)

(assert (=> b!1869906 (= c!304717 (= call!116027 (- call!116029 3)))))

(declare-fun b!1869907 () Bool)

(assert (=> b!1869907 (= e!1193079 call!116026)))

(declare-fun b!1869908 () Bool)

(assert (=> b!1869908 (= e!1193084 call!116020)))

(declare-fun bm!116016 () Bool)

(declare-fun call!116024 () Conc!6890)

(assert (=> bm!116016 (= call!116024 call!116015)))

(declare-fun bm!116017 () Bool)

(assert (=> bm!116017 (= call!116025 call!116020)))

(declare-fun b!1869909 () Bool)

(assert (=> b!1869909 (= e!1193081 (= (list!8486 lt!719143) (++!5620 (list!8486 (tail!2843 (left!16688 t!4595))) (list!8486 (right!17018 t!4595)))))))

(declare-fun b!1869910 () Bool)

(declare-fun call!116028 () Int)

(assert (=> b!1869910 (= c!304719 (>= call!116029 call!116028))))

(assert (=> b!1869910 (= e!1193086 e!1193078)))

(declare-fun b!1869911 () Bool)

(declare-fun res!837119 () Bool)

(assert (=> b!1869911 (=> (not res!837119) (not e!1193081))))

(assert (=> b!1869911 (= res!837119 (>= (height!1077 lt!719143) (max!0 (height!1077 (tail!2843 (left!16688 t!4595))) (height!1077 (right!17018 t!4595)))))))

(declare-fun bm!116018 () Bool)

(assert (=> bm!116018 (= call!116028 (height!1077 (ite c!304716 (left!16688 (tail!2843 (left!16688 t!4595))) (left!16688 (right!17018 t!4595)))))))

(declare-fun bm!116019 () Bool)

(assert (=> bm!116019 (= call!116019 call!116026)))

(declare-fun b!1869912 () Bool)

(assert (=> b!1869912 (= e!1193085 call!116024)))

(declare-fun d!571593 () Bool)

(assert (=> d!571593 e!1193081))

(declare-fun res!837117 () Bool)

(assert (=> d!571593 (=> (not res!837117) (not e!1193081))))

(declare-fun appendAssocInst!512 (Conc!6890 Conc!6890) Bool)

(assert (=> d!571593 (= res!837117 (appendAssocInst!512 (tail!2843 (left!16688 t!4595)) (right!17018 t!4595)))))

(assert (=> d!571593 (= lt!719143 e!1193083)))

(declare-fun c!304713 () Bool)

(assert (=> d!571593 (= c!304713 (= (tail!2843 (left!16688 t!4595)) Empty!6890))))

(declare-fun e!1193080 () Bool)

(assert (=> d!571593 e!1193080))

(declare-fun res!837116 () Bool)

(assert (=> d!571593 (=> (not res!837116) (not e!1193080))))

(assert (=> d!571593 (= res!837116 (isBalanced!2191 (tail!2843 (left!16688 t!4595))))))

(assert (=> d!571593 (= (++!5619 (tail!2843 (left!16688 t!4595)) (right!17018 t!4595)) lt!719143)))

(declare-fun b!1869900 () Bool)

(assert (=> b!1869900 (= e!1193085 call!116024)))

(declare-fun bm!116020 () Bool)

(assert (=> bm!116020 (= call!116018 call!116022)))

(declare-fun bm!116021 () Bool)

(assert (=> bm!116021 (= call!116017 call!116014)))

(declare-fun bm!116022 () Bool)

(assert (=> bm!116022 (= call!116029 (height!1077 (ite c!304716 (tail!2843 (left!16688 t!4595)) (right!17018 (right!17018 t!4595)))))))

(declare-fun bm!116023 () Bool)

(assert (=> bm!116023 (= call!116023 call!116015)))

(declare-fun bm!116024 () Bool)

(assert (=> bm!116024 (= call!116014 call!116025)))

(declare-fun b!1869913 () Bool)

(assert (=> b!1869913 (= e!1193082 call!116019)))

(declare-fun b!1869914 () Bool)

(declare-fun res!837118 () Bool)

(assert (=> b!1869914 (=> (not res!837118) (not e!1193081))))

(assert (=> b!1869914 (= res!837118 (isBalanced!2191 lt!719143))))

(declare-fun b!1869915 () Bool)

(assert (=> b!1869915 (= c!304715 (>= call!116028 call!116021))))

(assert (=> b!1869915 (= e!1193086 e!1193079)))

(declare-fun b!1869916 () Bool)

(assert (=> b!1869916 (= e!1193080 (isBalanced!2191 (right!17018 t!4595)))))

(assert (= (and d!571593 res!837116) b!1869916))

(assert (= (and d!571593 c!304713) b!1869902))

(assert (= (and d!571593 (not c!304713)) b!1869896))

(assert (= (and b!1869896 c!304714) b!1869897))

(assert (= (and b!1869896 (not c!304714)) b!1869901))

(assert (= (and b!1869901 c!304720) b!1869908))

(assert (= (and b!1869901 (not c!304720)) b!1869898))

(assert (= (and b!1869898 c!304716) b!1869915))

(assert (= (and b!1869898 (not c!304716)) b!1869910))

(assert (= (and b!1869915 c!304715) b!1869907))

(assert (= (and b!1869915 (not c!304715)) b!1869906))

(assert (= (and b!1869906 c!304717) b!1869913))

(assert (= (and b!1869906 (not c!304717)) b!1869899))

(assert (= (or b!1869913 b!1869899) bm!116023))

(assert (= (or b!1869913 b!1869899) bm!116019))

(assert (= (or b!1869907 b!1869906) bm!116020))

(assert (= (or b!1869907 bm!116019) bm!116014))

(assert (= (and b!1869910 c!304719) b!1869905))

(assert (= (and b!1869910 (not c!304719)) b!1869904))

(assert (= (and b!1869904 c!304718) b!1869912))

(assert (= (and b!1869904 (not c!304718)) b!1869900))

(assert (= (or b!1869912 b!1869900) bm!116021))

(assert (= (or b!1869912 b!1869900) bm!116016))

(assert (= (or b!1869905 b!1869904) bm!116011))

(assert (= (or b!1869905 bm!116021) bm!116024))

(assert (= (or b!1869915 b!1869904) bm!116015))

(assert (= (or bm!116014 bm!116024) bm!116017))

(assert (= (or b!1869915 b!1869910) bm!116018))

(assert (= (or bm!116023 bm!116016) bm!116012))

(assert (= (or bm!116020 bm!116011) bm!116013))

(assert (= (or b!1869906 b!1869904) bm!116010))

(assert (= (or b!1869906 b!1869910) bm!116022))

(assert (= (or b!1869908 bm!116017) bm!116009))

(assert (= (and d!571593 res!837117) b!1869914))

(assert (= (and b!1869914 res!837118) b!1869903))

(assert (= (and b!1869903 res!837115) b!1869911))

(assert (= (and b!1869911 res!837119) b!1869909))

(declare-fun m!2295711 () Bool)

(assert (=> b!1869901 m!2295711))

(assert (=> b!1869901 m!2295615))

(declare-fun m!2295713 () Bool)

(assert (=> b!1869901 m!2295713))

(declare-fun m!2295715 () Bool)

(assert (=> bm!116018 m!2295715))

(declare-fun m!2295717 () Bool)

(assert (=> b!1869911 m!2295717))

(assert (=> b!1869911 m!2295615))

(assert (=> b!1869911 m!2295713))

(assert (=> b!1869911 m!2295711))

(assert (=> b!1869911 m!2295713))

(assert (=> b!1869911 m!2295711))

(declare-fun m!2295719 () Bool)

(assert (=> b!1869911 m!2295719))

(declare-fun m!2295721 () Bool)

(assert (=> bm!116012 m!2295721))

(declare-fun m!2295723 () Bool)

(assert (=> bm!116022 m!2295723))

(declare-fun m!2295725 () Bool)

(assert (=> b!1869916 m!2295725))

(declare-fun m!2295727 () Bool)

(assert (=> bm!116009 m!2295727))

(declare-fun m!2295729 () Bool)

(assert (=> bm!116015 m!2295729))

(declare-fun m!2295731 () Bool)

(assert (=> b!1869914 m!2295731))

(declare-fun m!2295733 () Bool)

(assert (=> b!1869909 m!2295733))

(assert (=> b!1869909 m!2295615))

(declare-fun m!2295735 () Bool)

(assert (=> b!1869909 m!2295735))

(assert (=> b!1869909 m!2295623))

(assert (=> b!1869909 m!2295735))

(assert (=> b!1869909 m!2295623))

(declare-fun m!2295737 () Bool)

(assert (=> b!1869909 m!2295737))

(declare-fun m!2295739 () Bool)

(assert (=> bm!116013 m!2295739))

(declare-fun m!2295741 () Bool)

(assert (=> bm!116010 m!2295741))

(assert (=> b!1869903 m!2295717))

(assert (=> b!1869903 m!2295615))

(assert (=> b!1869903 m!2295713))

(assert (=> b!1869903 m!2295711))

(assert (=> b!1869903 m!2295713))

(assert (=> b!1869903 m!2295711))

(assert (=> b!1869903 m!2295719))

(assert (=> d!571593 m!2295615))

(declare-fun m!2295743 () Bool)

(assert (=> d!571593 m!2295743))

(assert (=> d!571593 m!2295615))

(declare-fun m!2295745 () Bool)

(assert (=> d!571593 m!2295745))

(assert (=> b!1869734 d!571593))

(declare-fun b!1869948 () Bool)

(declare-fun res!837130 () Bool)

(declare-fun e!1193102 () Bool)

(assert (=> b!1869948 (=> (not res!837130) (not e!1193102))))

(declare-fun lt!719156 () List!20777)

(declare-fun size!16424 (List!20777) Int)

(assert (=> b!1869948 (= res!837130 (= (size!16424 lt!719156) (+ (size!16424 (tail!2842 lt!719119)) (size!16424 lt!719118))))))

(declare-fun b!1869946 () Bool)

(declare-fun e!1193103 () List!20777)

(assert (=> b!1869946 (= e!1193103 lt!719118)))

(declare-fun b!1869947 () Bool)

(assert (=> b!1869947 (= e!1193103 (Cons!20695 (h!26096 (tail!2842 lt!719119)) (++!5620 (t!172966 (tail!2842 lt!719119)) lt!719118)))))

(declare-fun d!571615 () Bool)

(assert (=> d!571615 e!1193102))

(declare-fun res!837129 () Bool)

(assert (=> d!571615 (=> (not res!837129) (not e!1193102))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3085 (List!20777) (InoxSet T!33242))

(assert (=> d!571615 (= res!837129 (= (content!3085 lt!719156) ((_ map or) (content!3085 (tail!2842 lt!719119)) (content!3085 lt!719118))))))

(assert (=> d!571615 (= lt!719156 e!1193103)))

(declare-fun c!304731 () Bool)

(assert (=> d!571615 (= c!304731 ((_ is Nil!20695) (tail!2842 lt!719119)))))

(assert (=> d!571615 (= (++!5620 (tail!2842 lt!719119) lt!719118) lt!719156)))

(declare-fun b!1869949 () Bool)

(assert (=> b!1869949 (= e!1193102 (or (not (= lt!719118 Nil!20695)) (= lt!719156 (tail!2842 lt!719119))))))

(assert (= (and d!571615 c!304731) b!1869946))

(assert (= (and d!571615 (not c!304731)) b!1869947))

(assert (= (and d!571615 res!837129) b!1869948))

(assert (= (and b!1869948 res!837130) b!1869949))

(declare-fun m!2295783 () Bool)

(assert (=> b!1869948 m!2295783))

(assert (=> b!1869948 m!2295609))

(declare-fun m!2295785 () Bool)

(assert (=> b!1869948 m!2295785))

(declare-fun m!2295787 () Bool)

(assert (=> b!1869948 m!2295787))

(declare-fun m!2295789 () Bool)

(assert (=> b!1869947 m!2295789))

(declare-fun m!2295791 () Bool)

(assert (=> d!571615 m!2295791))

(assert (=> d!571615 m!2295609))

(declare-fun m!2295793 () Bool)

(assert (=> d!571615 m!2295793))

(declare-fun m!2295795 () Bool)

(assert (=> d!571615 m!2295795))

(assert (=> b!1869734 d!571615))

(declare-fun b!1869952 () Bool)

(declare-fun res!837132 () Bool)

(declare-fun e!1193104 () Bool)

(assert (=> b!1869952 (=> (not res!837132) (not e!1193104))))

(declare-fun lt!719157 () List!20777)

(assert (=> b!1869952 (= res!837132 (= (size!16424 lt!719157) (+ (size!16424 lt!719119) (size!16424 lt!719118))))))

(declare-fun b!1869950 () Bool)

(declare-fun e!1193105 () List!20777)

(assert (=> b!1869950 (= e!1193105 lt!719118)))

(declare-fun b!1869951 () Bool)

(assert (=> b!1869951 (= e!1193105 (Cons!20695 (h!26096 lt!719119) (++!5620 (t!172966 lt!719119) lt!719118)))))

(declare-fun d!571621 () Bool)

(assert (=> d!571621 e!1193104))

(declare-fun res!837131 () Bool)

(assert (=> d!571621 (=> (not res!837131) (not e!1193104))))

(assert (=> d!571621 (= res!837131 (= (content!3085 lt!719157) ((_ map or) (content!3085 lt!719119) (content!3085 lt!719118))))))

(assert (=> d!571621 (= lt!719157 e!1193105)))

(declare-fun c!304732 () Bool)

(assert (=> d!571621 (= c!304732 ((_ is Nil!20695) lt!719119))))

(assert (=> d!571621 (= (++!5620 lt!719119 lt!719118) lt!719157)))

(declare-fun b!1869953 () Bool)

(assert (=> b!1869953 (= e!1193104 (or (not (= lt!719118 Nil!20695)) (= lt!719157 lt!719119)))))

(assert (= (and d!571621 c!304732) b!1869950))

(assert (= (and d!571621 (not c!304732)) b!1869951))

(assert (= (and d!571621 res!837131) b!1869952))

(assert (= (and b!1869952 res!837132) b!1869953))

(declare-fun m!2295797 () Bool)

(assert (=> b!1869952 m!2295797))

(declare-fun m!2295799 () Bool)

(assert (=> b!1869952 m!2295799))

(assert (=> b!1869952 m!2295787))

(declare-fun m!2295801 () Bool)

(assert (=> b!1869951 m!2295801))

(declare-fun m!2295803 () Bool)

(assert (=> d!571621 m!2295803))

(declare-fun m!2295805 () Bool)

(assert (=> d!571621 m!2295805))

(assert (=> d!571621 m!2295795))

(assert (=> b!1869734 d!571621))

(declare-fun b!1869982 () Bool)

(declare-fun res!837155 () Bool)

(declare-fun e!1193118 () Bool)

(assert (=> b!1869982 (=> (not res!837155) (not e!1193118))))

(assert (=> b!1869982 (= res!837155 (isBalanced!2191 (right!17018 lt!719117)))))

(declare-fun b!1869983 () Bool)

(declare-fun res!837157 () Bool)

(assert (=> b!1869983 (=> (not res!837157) (not e!1193118))))

(assert (=> b!1869983 (= res!837157 (isBalanced!2191 (left!16688 lt!719117)))))

(declare-fun b!1869984 () Bool)

(assert (=> b!1869984 (= e!1193118 (not (isEmpty!12931 (right!17018 lt!719117))))))

(declare-fun d!571623 () Bool)

(declare-fun res!837153 () Bool)

(declare-fun e!1193119 () Bool)

(assert (=> d!571623 (=> res!837153 e!1193119)))

(assert (=> d!571623 (= res!837153 (not ((_ is Node!6890) lt!719117)))))

(assert (=> d!571623 (= (isBalanced!2191 lt!719117) e!1193119)))

(declare-fun b!1869985 () Bool)

(declare-fun res!837156 () Bool)

(assert (=> b!1869985 (=> (not res!837156) (not e!1193118))))

(assert (=> b!1869985 (= res!837156 (<= (- (height!1077 (left!16688 lt!719117)) (height!1077 (right!17018 lt!719117))) 1))))

(declare-fun b!1869986 () Bool)

(assert (=> b!1869986 (= e!1193119 e!1193118)))

(declare-fun res!837154 () Bool)

(assert (=> b!1869986 (=> (not res!837154) (not e!1193118))))

(assert (=> b!1869986 (= res!837154 (<= (- 1) (- (height!1077 (left!16688 lt!719117)) (height!1077 (right!17018 lt!719117)))))))

(declare-fun b!1869987 () Bool)

(declare-fun res!837158 () Bool)

(assert (=> b!1869987 (=> (not res!837158) (not e!1193118))))

(assert (=> b!1869987 (= res!837158 (not (isEmpty!12931 (left!16688 lt!719117))))))

(assert (= (and d!571623 (not res!837153)) b!1869986))

(assert (= (and b!1869986 res!837154) b!1869985))

(assert (= (and b!1869985 res!837156) b!1869983))

(assert (= (and b!1869983 res!837157) b!1869982))

(assert (= (and b!1869982 res!837155) b!1869987))

(assert (= (and b!1869987 res!837158) b!1869984))

(declare-fun m!2295831 () Bool)

(assert (=> b!1869986 m!2295831))

(declare-fun m!2295833 () Bool)

(assert (=> b!1869986 m!2295833))

(declare-fun m!2295835 () Bool)

(assert (=> b!1869982 m!2295835))

(declare-fun m!2295837 () Bool)

(assert (=> b!1869984 m!2295837))

(declare-fun m!2295839 () Bool)

(assert (=> b!1869983 m!2295839))

(declare-fun m!2295841 () Bool)

(assert (=> b!1869987 m!2295841))

(assert (=> b!1869985 m!2295831))

(assert (=> b!1869985 m!2295833))

(assert (=> b!1869734 d!571623))

(declare-fun b!1870057 () Bool)

(declare-fun e!1193160 () Conc!6890)

(declare-fun call!116056 () Conc!6890)

(assert (=> b!1870057 (= e!1193160 call!116056)))

(declare-fun d!571631 () Bool)

(declare-fun e!1193164 () Bool)

(assert (=> d!571631 e!1193164))

(declare-fun res!837175 () Bool)

(assert (=> d!571631 (=> (not res!837175) (not e!1193164))))

(declare-fun lt!719203 () Conc!6890)

(assert (=> d!571631 (= res!837175 (isBalanced!2191 lt!719203))))

(declare-fun e!1193162 () Conc!6890)

(assert (=> d!571631 (= lt!719203 e!1193162)))

(declare-fun c!304754 () Bool)

(assert (=> d!571631 (= c!304754 ((_ is Leaf!10103) (left!16688 t!4595)))))

(assert (=> d!571631 (isBalanced!2191 (left!16688 t!4595))))

(assert (=> d!571631 (= (tail!2843 (left!16688 t!4595)) lt!719203)))

(declare-fun b!1870058 () Bool)

(assert (=> b!1870058 (= e!1193164 (= (list!8486 lt!719203) (tail!2842 (list!8486 (left!16688 t!4595)))))))

(declare-fun b!1870059 () Bool)

(declare-fun e!1193161 () Bool)

(assert (=> b!1870059 (= e!1193161 (isEmpty!12931 (left!16688 (left!16688 t!4595))))))

(declare-fun lt!719208 () List!20777)

(declare-fun lt!719202 () List!20777)

(declare-fun call!116057 () List!20777)

(declare-fun bm!116051 () Bool)

(assert (=> bm!116051 (= call!116057 (tail!2842 (ite c!304754 lt!719202 lt!719208)))))

(declare-fun b!1870060 () Bool)

(declare-fun lt!719209 () Unit!35315)

(declare-fun lt!719204 () Unit!35315)

(assert (=> b!1870060 (= lt!719209 lt!719204)))

(declare-fun slice!588 (List!20777 Int Int) List!20777)

(assert (=> b!1870060 (= call!116057 (slice!588 lt!719202 1 (size!16424 lt!719202)))))

(declare-fun sliceTailLemma!40 (List!20777) Unit!35315)

(assert (=> b!1870060 (= lt!719204 (sliceTailLemma!40 lt!719202))))

(assert (=> b!1870060 (= lt!719202 (list!8488 (xs!9772 (left!16688 t!4595))))))

(declare-fun e!1193163 () Conc!6890)

(declare-fun slice!589 (IArray!13785 Int Int) IArray!13785)

(assert (=> b!1870060 (= e!1193163 (Leaf!10103 (slice!589 (xs!9772 (left!16688 t!4595)) 1 (csize!14011 (left!16688 t!4595))) (- (csize!14011 (left!16688 t!4595)) 1)))))

(declare-fun bm!116052 () Bool)

(declare-fun c!304756 () Bool)

(assert (=> bm!116052 (= call!116056 (tail!2843 (ite c!304756 (right!17018 (left!16688 t!4595)) (left!16688 (left!16688 t!4595)))))))

(declare-fun b!1870061 () Bool)

(assert (=> b!1870061 (= e!1193162 e!1193160)))

(declare-fun res!837176 () Bool)

(assert (=> b!1870061 (= res!837176 ((_ is Node!6890) (left!16688 t!4595)))))

(assert (=> b!1870061 (=> (not res!837176) (not e!1193161))))

(assert (=> b!1870061 (= c!304756 e!1193161)))

(declare-fun b!1870062 () Bool)

(assert (=> b!1870062 (= e!1193163 Empty!6890)))

(declare-fun b!1870063 () Bool)

(declare-fun lt!719205 () Unit!35315)

(declare-fun lt!719206 () Unit!35315)

(assert (=> b!1870063 (= lt!719205 lt!719206)))

(declare-fun lt!719207 () List!20777)

(assert (=> b!1870063 (= (tail!2842 (++!5620 lt!719208 lt!719207)) (++!5620 call!116057 lt!719207))))

(assert (=> b!1870063 (= lt!719206 (lemmaTailOfConcatIsTailConcat!44 lt!719208 lt!719207))))

(assert (=> b!1870063 (= lt!719207 (list!8486 (right!17018 (left!16688 t!4595))))))

(assert (=> b!1870063 (= lt!719208 (list!8486 (left!16688 (left!16688 t!4595))))))

(assert (=> b!1870063 (= e!1193160 (++!5619 call!116056 (right!17018 (left!16688 t!4595))))))

(declare-fun b!1870064 () Bool)

(assert (=> b!1870064 (= e!1193162 e!1193163)))

(declare-fun c!304755 () Bool)

(assert (=> b!1870064 (= c!304755 (= (csize!14011 (left!16688 t!4595)) 1))))

(assert (= (and d!571631 c!304754) b!1870064))

(assert (= (and d!571631 (not c!304754)) b!1870061))

(assert (= (and b!1870064 c!304755) b!1870062))

(assert (= (and b!1870064 (not c!304755)) b!1870060))

(assert (= (and b!1870061 res!837176) b!1870059))

(assert (= (and b!1870061 c!304756) b!1870057))

(assert (= (and b!1870061 (not c!304756)) b!1870063))

(assert (= (or b!1870057 b!1870063) bm!116052))

(assert (= (or b!1870060 b!1870063) bm!116051))

(assert (= (and d!571631 res!837175) b!1870058))

(declare-fun m!2295905 () Bool)

(assert (=> b!1870058 m!2295905))

(assert (=> b!1870058 m!2295621))

(assert (=> b!1870058 m!2295621))

(declare-fun m!2295907 () Bool)

(assert (=> b!1870058 m!2295907))

(declare-fun m!2295909 () Bool)

(assert (=> bm!116051 m!2295909))

(declare-fun m!2295911 () Bool)

(assert (=> d!571631 m!2295911))

(declare-fun m!2295913 () Bool)

(assert (=> d!571631 m!2295913))

(declare-fun m!2295915 () Bool)

(assert (=> b!1870063 m!2295915))

(declare-fun m!2295917 () Bool)

(assert (=> b!1870063 m!2295917))

(declare-fun m!2295919 () Bool)

(assert (=> b!1870063 m!2295919))

(declare-fun m!2295921 () Bool)

(assert (=> b!1870063 m!2295921))

(declare-fun m!2295923 () Bool)

(assert (=> b!1870063 m!2295923))

(declare-fun m!2295925 () Bool)

(assert (=> b!1870063 m!2295925))

(declare-fun m!2295927 () Bool)

(assert (=> b!1870063 m!2295927))

(assert (=> b!1870063 m!2295915))

(declare-fun m!2295929 () Bool)

(assert (=> b!1870060 m!2295929))

(declare-fun m!2295931 () Bool)

(assert (=> b!1870060 m!2295931))

(assert (=> b!1870060 m!2295929))

(declare-fun m!2295933 () Bool)

(assert (=> b!1870060 m!2295933))

(declare-fun m!2295935 () Bool)

(assert (=> b!1870060 m!2295935))

(declare-fun m!2295937 () Bool)

(assert (=> b!1870060 m!2295937))

(declare-fun m!2295939 () Bool)

(assert (=> bm!116052 m!2295939))

(declare-fun m!2295941 () Bool)

(assert (=> b!1870059 m!2295941))

(assert (=> b!1869734 d!571631))

(declare-fun d!571637 () Bool)

(assert (=> d!571637 (= (tail!2842 (++!5620 lt!719119 lt!719118)) (++!5620 (tail!2842 lt!719119) lt!719118))))

(declare-fun lt!719212 () Unit!35315)

(declare-fun choose!11751 (List!20777 List!20777) Unit!35315)

(assert (=> d!571637 (= lt!719212 (choose!11751 lt!719119 lt!719118))))

(assert (=> d!571637 (not (isEmpty!12933 lt!719119))))

(assert (=> d!571637 (= (lemmaTailOfConcatIsTailConcat!44 lt!719119 lt!719118) lt!719212)))

(declare-fun bs!411931 () Bool)

(assert (= bs!411931 d!571637))

(declare-fun m!2295943 () Bool)

(assert (=> bs!411931 m!2295943))

(assert (=> bs!411931 m!2295607))

(assert (=> bs!411931 m!2295609))

(assert (=> bs!411931 m!2295611))

(assert (=> bs!411931 m!2295609))

(declare-fun m!2295945 () Bool)

(assert (=> bs!411931 m!2295945))

(assert (=> bs!411931 m!2295607))

(assert (=> bs!411931 m!2295619))

(assert (=> b!1869734 d!571637))

(declare-fun d!571639 () Bool)

(declare-fun c!304757 () Bool)

(assert (=> d!571639 (= c!304757 ((_ is Empty!6890) (left!16688 t!4595)))))

(declare-fun e!1193165 () List!20777)

(assert (=> d!571639 (= (list!8486 (left!16688 t!4595)) e!1193165)))

(declare-fun b!1870068 () Bool)

(declare-fun e!1193166 () List!20777)

(assert (=> b!1870068 (= e!1193166 (++!5620 (list!8486 (left!16688 (left!16688 t!4595))) (list!8486 (right!17018 (left!16688 t!4595)))))))

(declare-fun b!1870066 () Bool)

(assert (=> b!1870066 (= e!1193165 e!1193166)))

(declare-fun c!304758 () Bool)

(assert (=> b!1870066 (= c!304758 ((_ is Leaf!10103) (left!16688 t!4595)))))

(declare-fun b!1870067 () Bool)

(assert (=> b!1870067 (= e!1193166 (list!8488 (xs!9772 (left!16688 t!4595))))))

(declare-fun b!1870065 () Bool)

(assert (=> b!1870065 (= e!1193165 Nil!20695)))

(assert (= (and d!571639 c!304757) b!1870065))

(assert (= (and d!571639 (not c!304757)) b!1870066))

(assert (= (and b!1870066 c!304758) b!1870067))

(assert (= (and b!1870066 (not c!304758)) b!1870068))

(assert (=> b!1870068 m!2295927))

(assert (=> b!1870068 m!2295923))

(assert (=> b!1870068 m!2295927))

(assert (=> b!1870068 m!2295923))

(declare-fun m!2295947 () Bool)

(assert (=> b!1870068 m!2295947))

(assert (=> b!1870067 m!2295937))

(assert (=> b!1869734 d!571639))

(declare-fun d!571641 () Bool)

(assert (=> d!571641 (= (tail!2842 (++!5620 lt!719119 lt!719118)) (t!172966 (++!5620 lt!719119 lt!719118)))))

(assert (=> b!1869734 d!571641))

(declare-fun d!571643 () Bool)

(declare-fun lt!719213 () Bool)

(assert (=> d!571643 (= lt!719213 (isEmpty!12933 (list!8486 (left!16688 t!4595))))))

(assert (=> d!571643 (= lt!719213 (= (size!16423 (left!16688 t!4595)) 0))))

(assert (=> d!571643 (= (isEmpty!12931 (left!16688 t!4595)) lt!719213)))

(declare-fun bs!411932 () Bool)

(assert (= bs!411932 d!571643))

(assert (=> bs!411932 m!2295621))

(assert (=> bs!411932 m!2295621))

(declare-fun m!2295949 () Bool)

(assert (=> bs!411932 m!2295949))

(declare-fun m!2295951 () Bool)

(assert (=> bs!411932 m!2295951))

(assert (=> b!1869729 d!571643))

(declare-fun d!571645 () Bool)

(assert (=> d!571645 (= (inv!27452 (xs!9772 t!4595)) (<= (size!16424 (innerList!6950 (xs!9772 t!4595))) 2147483647))))

(declare-fun bs!411933 () Bool)

(assert (= bs!411933 d!571645))

(declare-fun m!2295953 () Bool)

(assert (=> bs!411933 m!2295953))

(assert (=> b!1869732 d!571645))

(declare-fun d!571647 () Bool)

(declare-fun c!304759 () Bool)

(assert (=> d!571647 (= c!304759 ((_ is Empty!6890) lt!719117))))

(declare-fun e!1193167 () List!20777)

(assert (=> d!571647 (= (list!8486 lt!719117) e!1193167)))

(declare-fun b!1870072 () Bool)

(declare-fun e!1193168 () List!20777)

(assert (=> b!1870072 (= e!1193168 (++!5620 (list!8486 (left!16688 lt!719117)) (list!8486 (right!17018 lt!719117))))))

(declare-fun b!1870070 () Bool)

(assert (=> b!1870070 (= e!1193167 e!1193168)))

(declare-fun c!304760 () Bool)

(assert (=> b!1870070 (= c!304760 ((_ is Leaf!10103) lt!719117))))

(declare-fun b!1870071 () Bool)

(assert (=> b!1870071 (= e!1193168 (list!8488 (xs!9772 lt!719117)))))

(declare-fun b!1870069 () Bool)

(assert (=> b!1870069 (= e!1193167 Nil!20695)))

(assert (= (and d!571647 c!304759) b!1870069))

(assert (= (and d!571647 (not c!304759)) b!1870070))

(assert (= (and b!1870070 c!304760) b!1870071))

(assert (= (and b!1870070 (not c!304760)) b!1870072))

(declare-fun m!2295955 () Bool)

(assert (=> b!1870072 m!2295955))

(declare-fun m!2295957 () Bool)

(assert (=> b!1870072 m!2295957))

(assert (=> b!1870072 m!2295955))

(assert (=> b!1870072 m!2295957))

(declare-fun m!2295959 () Bool)

(assert (=> b!1870072 m!2295959))

(declare-fun m!2295961 () Bool)

(assert (=> b!1870071 m!2295961))

(assert (=> b!1869727 d!571647))

(declare-fun d!571649 () Bool)

(assert (=> d!571649 (= (tail!2842 (list!8486 t!4595)) (t!172966 (list!8486 t!4595)))))

(assert (=> b!1869727 d!571649))

(declare-fun d!571651 () Bool)

(declare-fun c!304761 () Bool)

(assert (=> d!571651 (= c!304761 ((_ is Empty!6890) t!4595))))

(declare-fun e!1193169 () List!20777)

(assert (=> d!571651 (= (list!8486 t!4595) e!1193169)))

(declare-fun b!1870076 () Bool)

(declare-fun e!1193170 () List!20777)

(assert (=> b!1870076 (= e!1193170 (++!5620 (list!8486 (left!16688 t!4595)) (list!8486 (right!17018 t!4595))))))

(declare-fun b!1870074 () Bool)

(assert (=> b!1870074 (= e!1193169 e!1193170)))

(declare-fun c!304762 () Bool)

(assert (=> b!1870074 (= c!304762 ((_ is Leaf!10103) t!4595))))

(declare-fun b!1870075 () Bool)

(assert (=> b!1870075 (= e!1193170 (list!8488 (xs!9772 t!4595)))))

(declare-fun b!1870073 () Bool)

(assert (=> b!1870073 (= e!1193169 Nil!20695)))

(assert (= (and d!571651 c!304761) b!1870073))

(assert (= (and d!571651 (not c!304761)) b!1870074))

(assert (= (and b!1870074 c!304762) b!1870075))

(assert (= (and b!1870074 (not c!304762)) b!1870076))

(assert (=> b!1870076 m!2295621))

(assert (=> b!1870076 m!2295623))

(assert (=> b!1870076 m!2295621))

(assert (=> b!1870076 m!2295623))

(declare-fun m!2295963 () Bool)

(assert (=> b!1870076 m!2295963))

(declare-fun m!2295965 () Bool)

(assert (=> b!1870075 m!2295965))

(assert (=> b!1869727 d!571651))

(declare-fun b!1870077 () Bool)

(declare-fun res!837179 () Bool)

(declare-fun e!1193171 () Bool)

(assert (=> b!1870077 (=> (not res!837179) (not e!1193171))))

(assert (=> b!1870077 (= res!837179 (isBalanced!2191 (right!17018 t!4595)))))

(declare-fun b!1870078 () Bool)

(declare-fun res!837181 () Bool)

(assert (=> b!1870078 (=> (not res!837181) (not e!1193171))))

(assert (=> b!1870078 (= res!837181 (isBalanced!2191 (left!16688 t!4595)))))

(declare-fun b!1870079 () Bool)

(assert (=> b!1870079 (= e!1193171 (not (isEmpty!12931 (right!17018 t!4595))))))

(declare-fun d!571653 () Bool)

(declare-fun res!837177 () Bool)

(declare-fun e!1193172 () Bool)

(assert (=> d!571653 (=> res!837177 e!1193172)))

(assert (=> d!571653 (= res!837177 (not ((_ is Node!6890) t!4595)))))

(assert (=> d!571653 (= (isBalanced!2191 t!4595) e!1193172)))

(declare-fun b!1870080 () Bool)

(declare-fun res!837180 () Bool)

(assert (=> b!1870080 (=> (not res!837180) (not e!1193171))))

(assert (=> b!1870080 (= res!837180 (<= (- (height!1077 (left!16688 t!4595)) (height!1077 (right!17018 t!4595))) 1))))

(declare-fun b!1870081 () Bool)

(assert (=> b!1870081 (= e!1193172 e!1193171)))

(declare-fun res!837178 () Bool)

(assert (=> b!1870081 (=> (not res!837178) (not e!1193171))))

(assert (=> b!1870081 (= res!837178 (<= (- 1) (- (height!1077 (left!16688 t!4595)) (height!1077 (right!17018 t!4595)))))))

(declare-fun b!1870082 () Bool)

(declare-fun res!837182 () Bool)

(assert (=> b!1870082 (=> (not res!837182) (not e!1193171))))

(assert (=> b!1870082 (= res!837182 (not (isEmpty!12931 (left!16688 t!4595))))))

(assert (= (and d!571653 (not res!837177)) b!1870081))

(assert (= (and b!1870081 res!837178) b!1870080))

(assert (= (and b!1870080 res!837180) b!1870078))

(assert (= (and b!1870078 res!837181) b!1870077))

(assert (= (and b!1870077 res!837179) b!1870082))

(assert (= (and b!1870082 res!837182) b!1870079))

(declare-fun m!2295967 () Bool)

(assert (=> b!1870081 m!2295967))

(assert (=> b!1870081 m!2295711))

(assert (=> b!1870077 m!2295725))

(declare-fun m!2295969 () Bool)

(assert (=> b!1870079 m!2295969))

(assert (=> b!1870078 m!2295913))

(assert (=> b!1870082 m!2295601))

(assert (=> b!1870080 m!2295967))

(assert (=> b!1870080 m!2295711))

(assert (=> start!187168 d!571653))

(declare-fun d!571655 () Bool)

(declare-fun c!304763 () Bool)

(assert (=> d!571655 (= c!304763 ((_ is Node!6890) t!4595))))

(declare-fun e!1193173 () Bool)

(assert (=> d!571655 (= (inv!27451 t!4595) e!1193173)))

(declare-fun b!1870083 () Bool)

(assert (=> b!1870083 (= e!1193173 (inv!27455 t!4595))))

(declare-fun b!1870084 () Bool)

(declare-fun e!1193174 () Bool)

(assert (=> b!1870084 (= e!1193173 e!1193174)))

(declare-fun res!837183 () Bool)

(assert (=> b!1870084 (= res!837183 (not ((_ is Leaf!10103) t!4595)))))

(assert (=> b!1870084 (=> res!837183 e!1193174)))

(declare-fun b!1870085 () Bool)

(assert (=> b!1870085 (= e!1193174 (inv!27456 t!4595))))

(assert (= (and d!571655 c!304763) b!1870083))

(assert (= (and d!571655 (not c!304763)) b!1870084))

(assert (= (and b!1870084 (not res!837183)) b!1870085))

(declare-fun m!2295971 () Bool)

(assert (=> b!1870083 m!2295971))

(declare-fun m!2295973 () Bool)

(assert (=> b!1870085 m!2295973))

(assert (=> start!187168 d!571655))

(declare-fun e!1193180 () Bool)

(declare-fun tp!532035 () Bool)

(declare-fun b!1870094 () Bool)

(declare-fun tp!532033 () Bool)

(assert (=> b!1870094 (= e!1193180 (and (inv!27451 (left!16688 (left!16688 t!4595))) tp!532035 (inv!27451 (right!17018 (left!16688 t!4595))) tp!532033))))

(declare-fun b!1870096 () Bool)

(declare-fun e!1193179 () Bool)

(declare-fun tp!532034 () Bool)

(assert (=> b!1870096 (= e!1193179 tp!532034)))

(declare-fun b!1870095 () Bool)

(assert (=> b!1870095 (= e!1193180 (and (inv!27452 (xs!9772 (left!16688 t!4595))) e!1193179))))

(assert (=> b!1869725 (= tp!532010 (and (inv!27451 (left!16688 t!4595)) e!1193180))))

(assert (= (and b!1869725 ((_ is Node!6890) (left!16688 t!4595))) b!1870094))

(assert (= b!1870095 b!1870096))

(assert (= (and b!1869725 ((_ is Leaf!10103) (left!16688 t!4595))) b!1870095))

(declare-fun m!2295975 () Bool)

(assert (=> b!1870094 m!2295975))

(declare-fun m!2295977 () Bool)

(assert (=> b!1870094 m!2295977))

(declare-fun m!2295979 () Bool)

(assert (=> b!1870095 m!2295979))

(assert (=> b!1869725 m!2295631))

(declare-fun tp!532036 () Bool)

(declare-fun b!1870097 () Bool)

(declare-fun e!1193182 () Bool)

(declare-fun tp!532038 () Bool)

(assert (=> b!1870097 (= e!1193182 (and (inv!27451 (left!16688 (right!17018 t!4595))) tp!532038 (inv!27451 (right!17018 (right!17018 t!4595))) tp!532036))))

(declare-fun b!1870099 () Bool)

(declare-fun e!1193181 () Bool)

(declare-fun tp!532037 () Bool)

(assert (=> b!1870099 (= e!1193181 tp!532037)))

(declare-fun b!1870098 () Bool)

(assert (=> b!1870098 (= e!1193182 (and (inv!27452 (xs!9772 (right!17018 t!4595))) e!1193181))))

(assert (=> b!1869725 (= tp!532009 (and (inv!27451 (right!17018 t!4595)) e!1193182))))

(assert (= (and b!1869725 ((_ is Node!6890) (right!17018 t!4595))) b!1870097))

(assert (= b!1870098 b!1870099))

(assert (= (and b!1869725 ((_ is Leaf!10103) (right!17018 t!4595))) b!1870098))

(declare-fun m!2295981 () Bool)

(assert (=> b!1870097 m!2295981))

(declare-fun m!2295983 () Bool)

(assert (=> b!1870097 m!2295983))

(declare-fun m!2295985 () Bool)

(assert (=> b!1870098 m!2295985))

(assert (=> b!1869725 m!2295633))

(declare-fun b!1870104 () Bool)

(declare-fun e!1193185 () Bool)

(declare-fun tp_is_empty!8699 () Bool)

(declare-fun tp!532041 () Bool)

(assert (=> b!1870104 (= e!1193185 (and tp_is_empty!8699 tp!532041))))

(assert (=> b!1869728 (= tp!532011 e!1193185)))

(assert (= (and b!1869728 ((_ is Cons!20695) (innerList!6950 (xs!9772 t!4595)))) b!1870104))

(check-sat (not d!571631) (not b!1870083) (not b!1870058) (not bm!116009) (not b!1869982) (not d!571593) (not b!1870068) (not b!1869781) (not b!1870063) (not b!1870099) (not bm!116051) tp_is_empty!8699 (not b!1869952) (not b!1870077) (not b!1869909) (not b!1870097) (not b!1869948) (not b!1869916) (not b!1869753) (not d!571615) (not b!1870095) (not bm!116012) (not b!1870094) (not bm!116010) (not b!1870082) (not b!1869725) (not bm!116015) (not b!1870071) (not b!1869901) (not b!1869985) (not b!1870060) (not b!1869903) (not bm!116018) (not b!1869947) (not b!1870096) (not d!571621) (not b!1869951) (not b!1870078) (not b!1869782) (not b!1869986) (not b!1870080) (not b!1870075) (not b!1869911) (not b!1869756) (not b!1870072) (not b!1870085) (not b!1870067) (not b!1870076) (not b!1870079) (not b!1869987) (not bm!116013) (not bm!116022) (not b!1870081) (not b!1870098) (not d!571579) (not d!571637) (not b!1869984) (not b!1869755) (not b!1870059) (not d!571643) (not bm!116052) (not b!1869758) (not b!1870104) (not b!1869983) (not d!571645) (not b!1869914))
(check-sat)
