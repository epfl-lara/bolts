; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186476 () Bool)

(assert start!186476)

(declare-fun res!834698 () Bool)

(declare-fun e!1190019 () Bool)

(assert (=> start!186476 (=> (not res!834698) (not e!1190019))))

(declare-datatypes ((T!33060 0))(
  ( (T!33061 (val!5934 Int)) )
))
(declare-datatypes ((List!20751 0))(
  ( (Nil!20669) (Cons!20669 (h!26070 T!33060) (t!172842 List!20751)) )
))
(declare-datatypes ((IArray!13733 0))(
  ( (IArray!13734 (innerList!6924 List!20751)) )
))
(declare-datatypes ((Conc!6864 0))(
  ( (Node!6864 (left!16649 Conc!6864) (right!16979 Conc!6864) (csize!13958 Int) (cheight!7075 Int)) (Leaf!10064 (xs!9740 IArray!13733) (csize!13959 Int)) (Empty!6864) )
))
(declare-fun t!4595 () Conc!6864)

(declare-fun isBalanced!2165 (Conc!6864) Bool)

(assert (=> start!186476 (= res!834698 (isBalanced!2165 t!4595))))

(assert (=> start!186476 e!1190019))

(declare-fun e!1190021 () Bool)

(declare-fun inv!27312 (Conc!6864) Bool)

(assert (=> start!186476 (and (inv!27312 t!4595) e!1190021)))

(declare-fun b!1864018 () Bool)

(declare-fun res!834700 () Bool)

(assert (=> b!1864018 (=> (not res!834700) (not e!1190019))))

(get-info :version)

(assert (=> b!1864018 (= res!834700 ((_ is Node!6864) t!4595))))

(declare-fun b!1864019 () Bool)

(declare-fun e!1190020 () Bool)

(declare-fun isEmpty!12881 (Conc!6864) Bool)

(assert (=> b!1864019 (= e!1190020 (not (isEmpty!12881 (left!16649 t!4595))))))

(declare-fun b!1864020 () Bool)

(declare-fun res!834697 () Bool)

(assert (=> b!1864020 (=> (not res!834697) (not e!1190019))))

(assert (=> b!1864020 (= res!834697 e!1190020)))

(declare-fun res!834703 () Bool)

(assert (=> b!1864020 (=> res!834703 e!1190020)))

(assert (=> b!1864020 (= res!834703 (not ((_ is Node!6864) t!4595)))))

(declare-fun tp!530944 () Bool)

(declare-fun tp!530943 () Bool)

(declare-fun b!1864021 () Bool)

(assert (=> b!1864021 (= e!1190021 (and (inv!27312 (left!16649 t!4595)) tp!530943 (inv!27312 (right!16979 t!4595)) tp!530944))))

(declare-fun b!1864022 () Bool)

(declare-fun e!1190023 () Bool)

(declare-fun tp!530942 () Bool)

(assert (=> b!1864022 (= e!1190023 tp!530942)))

(declare-fun b!1864023 () Bool)

(declare-fun inv!27313 (IArray!13733) Bool)

(assert (=> b!1864023 (= e!1190021 (and (inv!27313 (xs!9740 t!4595)) e!1190023))))

(declare-fun b!1864024 () Bool)

(declare-fun e!1190022 () Bool)

(assert (=> b!1864024 (= e!1190019 (not e!1190022))))

(declare-fun res!834699 () Bool)

(assert (=> b!1864024 (=> res!834699 e!1190022)))

(declare-fun ++!5595 (Conc!6864 Conc!6864) Conc!6864)

(declare-fun tail!2824 (Conc!6864) Conc!6864)

(assert (=> b!1864024 (= res!834699 (not (isBalanced!2165 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))

(declare-fun lt!718266 () List!20751)

(declare-fun lt!718267 () List!20751)

(declare-fun tail!2825 (List!20751) List!20751)

(declare-fun ++!5596 (List!20751 List!20751) List!20751)

(assert (=> b!1864024 (= (tail!2825 (++!5596 lt!718266 lt!718267)) (++!5596 (tail!2825 lt!718266) lt!718267))))

(declare-datatypes ((Unit!35291 0))(
  ( (Unit!35292) )
))
(declare-fun lt!718265 () Unit!35291)

(declare-fun lemmaTailOfConcatIsTailConcat!36 (List!20751 List!20751) Unit!35291)

(assert (=> b!1864024 (= lt!718265 (lemmaTailOfConcatIsTailConcat!36 lt!718266 lt!718267))))

(declare-fun list!8442 (Conc!6864) List!20751)

(assert (=> b!1864024 (= lt!718267 (list!8442 (right!16979 t!4595)))))

(assert (=> b!1864024 (= lt!718266 (list!8442 (left!16649 t!4595)))))

(declare-fun b!1864025 () Bool)

(declare-fun res!834701 () Bool)

(assert (=> b!1864025 (=> (not res!834701) (not e!1190019))))

(assert (=> b!1864025 (= res!834701 (not ((_ is Leaf!10064) t!4595)))))

(declare-fun b!1864026 () Bool)

(declare-fun res!834702 () Bool)

(assert (=> b!1864026 (=> (not res!834702) (not e!1190019))))

(assert (=> b!1864026 (= res!834702 (not (isEmpty!12881 t!4595)))))

(declare-fun b!1864027 () Bool)

(assert (=> b!1864027 (= e!1190022 (not (= (list!8442 t!4595) Nil!20669)))))

(assert (= (and start!186476 res!834698) b!1864026))

(assert (= (and b!1864026 res!834702) b!1864025))

(assert (= (and b!1864025 res!834701) b!1864020))

(assert (= (and b!1864020 (not res!834703)) b!1864019))

(assert (= (and b!1864020 res!834697) b!1864018))

(assert (= (and b!1864018 res!834700) b!1864024))

(assert (= (and b!1864024 (not res!834699)) b!1864027))

(assert (= (and start!186476 ((_ is Node!6864) t!4595)) b!1864021))

(assert (= b!1864023 b!1864022))

(assert (= (and start!186476 ((_ is Leaf!10064) t!4595)) b!1864023))

(declare-fun m!2288103 () Bool)

(assert (=> b!1864023 m!2288103))

(declare-fun m!2288105 () Bool)

(assert (=> b!1864019 m!2288105))

(declare-fun m!2288107 () Bool)

(assert (=> start!186476 m!2288107))

(declare-fun m!2288109 () Bool)

(assert (=> start!186476 m!2288109))

(declare-fun m!2288111 () Bool)

(assert (=> b!1864027 m!2288111))

(declare-fun m!2288113 () Bool)

(assert (=> b!1864026 m!2288113))

(declare-fun m!2288115 () Bool)

(assert (=> b!1864021 m!2288115))

(declare-fun m!2288117 () Bool)

(assert (=> b!1864021 m!2288117))

(declare-fun m!2288119 () Bool)

(assert (=> b!1864024 m!2288119))

(declare-fun m!2288121 () Bool)

(assert (=> b!1864024 m!2288121))

(declare-fun m!2288123 () Bool)

(assert (=> b!1864024 m!2288123))

(declare-fun m!2288125 () Bool)

(assert (=> b!1864024 m!2288125))

(assert (=> b!1864024 m!2288123))

(declare-fun m!2288127 () Bool)

(assert (=> b!1864024 m!2288127))

(declare-fun m!2288129 () Bool)

(assert (=> b!1864024 m!2288129))

(declare-fun m!2288131 () Bool)

(assert (=> b!1864024 m!2288131))

(assert (=> b!1864024 m!2288119))

(declare-fun m!2288133 () Bool)

(assert (=> b!1864024 m!2288133))

(declare-fun m!2288135 () Bool)

(assert (=> b!1864024 m!2288135))

(assert (=> b!1864024 m!2288127))

(assert (=> b!1864024 m!2288131))

(declare-fun m!2288137 () Bool)

(assert (=> b!1864024 m!2288137))

(check-sat (not start!186476) (not b!1864022) (not b!1864024) (not b!1864027) (not b!1864019) (not b!1864026) (not b!1864023) (not b!1864021))
(check-sat)
(get-model)

(declare-fun b!1864038 () Bool)

(declare-fun e!1190029 () List!20751)

(declare-fun list!8444 (IArray!13733) List!20751)

(assert (=> b!1864038 (= e!1190029 (list!8444 (xs!9740 (right!16979 t!4595))))))

(declare-fun b!1864039 () Bool)

(assert (=> b!1864039 (= e!1190029 (++!5596 (list!8442 (left!16649 (right!16979 t!4595))) (list!8442 (right!16979 (right!16979 t!4595)))))))

(declare-fun b!1864036 () Bool)

(declare-fun e!1190028 () List!20751)

(assert (=> b!1864036 (= e!1190028 Nil!20669)))

(declare-fun b!1864037 () Bool)

(assert (=> b!1864037 (= e!1190028 e!1190029)))

(declare-fun c!303571 () Bool)

(assert (=> b!1864037 (= c!303571 ((_ is Leaf!10064) (right!16979 t!4595)))))

(declare-fun d!568928 () Bool)

(declare-fun c!303570 () Bool)

(assert (=> d!568928 (= c!303570 ((_ is Empty!6864) (right!16979 t!4595)))))

(assert (=> d!568928 (= (list!8442 (right!16979 t!4595)) e!1190028)))

(assert (= (and d!568928 c!303570) b!1864036))

(assert (= (and d!568928 (not c!303570)) b!1864037))

(assert (= (and b!1864037 c!303571) b!1864038))

(assert (= (and b!1864037 (not c!303571)) b!1864039))

(declare-fun m!2288145 () Bool)

(assert (=> b!1864038 m!2288145))

(declare-fun m!2288147 () Bool)

(assert (=> b!1864039 m!2288147))

(declare-fun m!2288149 () Bool)

(assert (=> b!1864039 m!2288149))

(assert (=> b!1864039 m!2288147))

(assert (=> b!1864039 m!2288149))

(declare-fun m!2288151 () Bool)

(assert (=> b!1864039 m!2288151))

(assert (=> b!1864024 d!568928))

(declare-fun lt!718293 () Conc!6864)

(declare-fun bm!115777 () Bool)

(declare-fun c!303612 () Bool)

(declare-fun call!115787 () Conc!6864)

(declare-fun c!303615 () Bool)

(declare-fun call!115784 () Conc!6864)

(declare-fun c!303617 () Bool)

(declare-fun call!115786 () Conc!6864)

(declare-fun lt!718290 () Conc!6864)

(declare-fun c!303610 () Bool)

(declare-fun call!115783 () Conc!6864)

(declare-fun <>!162 (Conc!6864 Conc!6864) Conc!6864)

(assert (=> bm!115777 (= call!115784 (<>!162 (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290))) (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783))))))

(declare-fun b!1864136 () Bool)

(declare-fun e!1190076 () Conc!6864)

(declare-fun call!115792 () Conc!6864)

(assert (=> b!1864136 (= e!1190076 call!115792)))

(declare-fun b!1864137 () Bool)

(declare-fun res!834724 () Bool)

(declare-fun e!1190079 () Bool)

(assert (=> b!1864137 (=> (not res!834724) (not e!1190079))))

(declare-fun lt!718291 () Conc!6864)

(assert (=> b!1864137 (= res!834724 (isBalanced!2165 lt!718291))))

(declare-fun bm!115778 () Bool)

(declare-fun call!115796 () Conc!6864)

(assert (=> bm!115778 (= call!115783 call!115796)))

(declare-fun bm!115779 () Bool)

(declare-fun call!115793 () Int)

(declare-fun height!1053 (Conc!6864) Int)

(assert (=> bm!115779 (= call!115793 (height!1053 (ite c!303617 (tail!2824 (left!16649 t!4595)) (right!16979 (right!16979 t!4595)))))))

(declare-fun bm!115780 () Bool)

(declare-fun call!115797 () Int)

(assert (=> bm!115780 (= call!115797 (height!1053 (ite c!303617 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 t!4595))))))

(declare-fun bm!115781 () Bool)

(declare-fun call!115790 () Conc!6864)

(assert (=> bm!115781 (= call!115790 call!115784)))

(declare-fun bm!115782 () Bool)

(declare-fun call!115788 () Conc!6864)

(assert (=> bm!115782 (= call!115788 call!115784)))

(declare-fun bm!115783 () Bool)

(declare-fun call!115785 () Conc!6864)

(declare-fun call!115794 () Conc!6864)

(assert (=> bm!115783 (= call!115785 call!115794)))

(declare-fun d!568936 () Bool)

(assert (=> d!568936 e!1190079))

(declare-fun res!834728 () Bool)

(assert (=> d!568936 (=> (not res!834728) (not e!1190079))))

(declare-fun appendAssocInst!510 (Conc!6864 Conc!6864) Bool)

(assert (=> d!568936 (= res!834728 (appendAssocInst!510 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))

(declare-fun e!1190078 () Conc!6864)

(assert (=> d!568936 (= lt!718291 e!1190078)))

(declare-fun c!303616 () Bool)

(assert (=> d!568936 (= c!303616 (= (tail!2824 (left!16649 t!4595)) Empty!6864))))

(declare-fun e!1190080 () Bool)

(assert (=> d!568936 e!1190080))

(declare-fun res!834725 () Bool)

(assert (=> d!568936 (=> (not res!834725) (not e!1190080))))

(assert (=> d!568936 (= res!834725 (isBalanced!2165 (tail!2824 (left!16649 t!4595))))))

(assert (=> d!568936 (= (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)) lt!718291)))

(declare-fun b!1864138 () Bool)

(declare-fun e!1190085 () Conc!6864)

(declare-fun call!115789 () Conc!6864)

(assert (=> b!1864138 (= e!1190085 call!115789)))

(declare-fun b!1864139 () Bool)

(declare-fun call!115791 () Int)

(assert (=> b!1864139 (= c!303610 (>= call!115793 call!115791))))

(declare-fun e!1190077 () Conc!6864)

(declare-fun e!1190081 () Conc!6864)

(assert (=> b!1864139 (= e!1190077 e!1190081)))

(declare-fun bm!115784 () Bool)

(assert (=> bm!115784 (= call!115787 call!115794)))

(declare-fun b!1864140 () Bool)

(declare-fun e!1190082 () Conc!6864)

(assert (=> b!1864140 (= e!1190078 e!1190082)))

(declare-fun c!303614 () Bool)

(assert (=> b!1864140 (= c!303614 (= (right!16979 t!4595) Empty!6864))))

(declare-fun c!303613 () Bool)

(declare-fun c!303611 () Bool)

(declare-fun bm!115785 () Bool)

(assert (=> bm!115785 (= call!115789 (<>!162 (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595)))))) (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595)))))))))

(declare-fun b!1864141 () Bool)

(declare-fun e!1190083 () Conc!6864)

(declare-fun call!115795 () Conc!6864)

(assert (=> b!1864141 (= e!1190083 call!115795)))

(declare-fun b!1864142 () Bool)

(assert (=> b!1864142 (= e!1190076 call!115792)))

(declare-fun b!1864143 () Bool)

(declare-fun res!834726 () Bool)

(assert (=> b!1864143 (=> (not res!834726) (not e!1190079))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1864143 (= res!834726 (>= (height!1053 lt!718291) (max!0 (height!1053 (tail!2824 (left!16649 t!4595))) (height!1053 (right!16979 t!4595)))))))

(declare-fun b!1864144 () Bool)

(declare-fun call!115782 () Int)

(assert (=> b!1864144 (= c!303613 (>= call!115782 call!115797))))

(assert (=> b!1864144 (= e!1190077 e!1190083)))

(declare-fun b!1864145 () Bool)

(assert (=> b!1864145 (= e!1190082 (tail!2824 (left!16649 t!4595)))))

(declare-fun b!1864146 () Bool)

(assert (=> b!1864146 (= e!1190078 (right!16979 t!4595))))

(declare-fun b!1864147 () Bool)

(assert (=> b!1864147 (= e!1190081 call!115790)))

(declare-fun b!1864148 () Bool)

(declare-fun e!1190084 () Conc!6864)

(assert (=> b!1864148 (= e!1190084 call!115788)))

(declare-fun b!1864149 () Bool)

(assert (=> b!1864149 (= e!1190080 (isBalanced!2165 (right!16979 t!4595)))))

(declare-fun b!1864150 () Bool)

(assert (=> b!1864150 (= e!1190081 e!1190076)))

(assert (=> b!1864150 (= lt!718290 call!115787)))

(assert (=> b!1864150 (= c!303615 (= call!115782 (- call!115797 3)))))

(declare-fun b!1864151 () Bool)

(assert (=> b!1864151 (= e!1190085 e!1190077)))

(declare-fun lt!718292 () Int)

(assert (=> b!1864151 (= c!303617 (< lt!718292 (- 1)))))

(declare-fun bm!115786 () Bool)

(assert (=> bm!115786 (= call!115796 call!115789)))

(declare-fun b!1864152 () Bool)

(assert (=> b!1864152 (= e!1190084 call!115788)))

(declare-fun b!1864153 () Bool)

(assert (=> b!1864153 (= e!1190079 (= (list!8442 lt!718291) (++!5596 (list!8442 (tail!2824 (left!16649 t!4595))) (list!8442 (right!16979 t!4595)))))))

(declare-fun bm!115787 () Bool)

(assert (=> bm!115787 (= call!115786 call!115795)))

(declare-fun b!1864154 () Bool)

(assert (=> b!1864154 (= e!1190083 e!1190084)))

(assert (=> b!1864154 (= lt!718293 call!115785)))

(assert (=> b!1864154 (= c!303612 (= call!115791 (- call!115793 3)))))

(declare-fun bm!115788 () Bool)

(assert (=> bm!115788 (= call!115782 (height!1053 (ite c!303617 (left!16649 (tail!2824 (left!16649 t!4595))) lt!718290)))))

(declare-fun bm!115789 () Bool)

(assert (=> bm!115789 (= call!115791 (height!1053 (ite c!303617 lt!718293 (left!16649 (right!16979 t!4595)))))))

(declare-fun b!1864155 () Bool)

(assert (=> b!1864155 (= c!303611 (and (<= (- 1) lt!718292) (<= lt!718292 1)))))

(assert (=> b!1864155 (= lt!718292 (- (height!1053 (right!16979 t!4595)) (height!1053 (tail!2824 (left!16649 t!4595)))))))

(assert (=> b!1864155 (= e!1190082 e!1190085)))

(declare-fun b!1864156 () Bool)

(declare-fun res!834727 () Bool)

(assert (=> b!1864156 (=> (not res!834727) (not e!1190079))))

(assert (=> b!1864156 (= res!834727 (<= (height!1053 lt!718291) (+ (max!0 (height!1053 (tail!2824 (left!16649 t!4595))) (height!1053 (right!16979 t!4595))) 1)))))

(declare-fun bm!115790 () Bool)

(assert (=> bm!115790 (= call!115794 (++!5595 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))) (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))

(declare-fun bm!115791 () Bool)

(assert (=> bm!115791 (= call!115795 call!115796)))

(declare-fun bm!115792 () Bool)

(assert (=> bm!115792 (= call!115792 call!115790)))

(assert (= (and d!568936 res!834725) b!1864149))

(assert (= (and d!568936 c!303616) b!1864146))

(assert (= (and d!568936 (not c!303616)) b!1864140))

(assert (= (and b!1864140 c!303614) b!1864145))

(assert (= (and b!1864140 (not c!303614)) b!1864155))

(assert (= (and b!1864155 c!303611) b!1864138))

(assert (= (and b!1864155 (not c!303611)) b!1864151))

(assert (= (and b!1864151 c!303617) b!1864144))

(assert (= (and b!1864151 (not c!303617)) b!1864139))

(assert (= (and b!1864144 c!303613) b!1864141))

(assert (= (and b!1864144 (not c!303613)) b!1864154))

(assert (= (and b!1864154 c!303612) b!1864148))

(assert (= (and b!1864154 (not c!303612)) b!1864152))

(assert (= (or b!1864148 b!1864152) bm!115787))

(assert (= (or b!1864148 b!1864152) bm!115782))

(assert (= (or b!1864141 b!1864154) bm!115783))

(assert (= (or b!1864141 bm!115787) bm!115791))

(assert (= (and b!1864139 c!303610) b!1864147))

(assert (= (and b!1864139 (not c!303610)) b!1864150))

(assert (= (and b!1864150 c!303615) b!1864136))

(assert (= (and b!1864150 (not c!303615)) b!1864142))

(assert (= (or b!1864136 b!1864142) bm!115778))

(assert (= (or b!1864136 b!1864142) bm!115792))

(assert (= (or b!1864147 b!1864150) bm!115784))

(assert (= (or b!1864147 bm!115792) bm!115781))

(assert (= (or b!1864144 b!1864150) bm!115780))

(assert (= (or b!1864154 b!1864139) bm!115789))

(assert (= (or b!1864154 b!1864139) bm!115779))

(assert (= (or bm!115782 bm!115781) bm!115777))

(assert (= (or bm!115791 bm!115778) bm!115786))

(assert (= (or bm!115783 bm!115784) bm!115790))

(assert (= (or b!1864144 b!1864150) bm!115788))

(assert (= (or b!1864138 bm!115786) bm!115785))

(assert (= (and d!568936 res!834728) b!1864137))

(assert (= (and b!1864137 res!834724) b!1864156))

(assert (= (and b!1864156 res!834727) b!1864143))

(assert (= (and b!1864143 res!834726) b!1864153))

(declare-fun m!2288165 () Bool)

(assert (=> bm!115779 m!2288165))

(declare-fun m!2288167 () Bool)

(assert (=> bm!115790 m!2288167))

(declare-fun m!2288169 () Bool)

(assert (=> bm!115777 m!2288169))

(declare-fun m!2288171 () Bool)

(assert (=> bm!115789 m!2288171))

(declare-fun m!2288173 () Bool)

(assert (=> b!1864156 m!2288173))

(assert (=> b!1864156 m!2288131))

(declare-fun m!2288175 () Bool)

(assert (=> b!1864156 m!2288175))

(declare-fun m!2288177 () Bool)

(assert (=> b!1864156 m!2288177))

(assert (=> b!1864156 m!2288175))

(assert (=> b!1864156 m!2288177))

(declare-fun m!2288179 () Bool)

(assert (=> b!1864156 m!2288179))

(assert (=> d!568936 m!2288131))

(declare-fun m!2288181 () Bool)

(assert (=> d!568936 m!2288181))

(assert (=> d!568936 m!2288131))

(declare-fun m!2288183 () Bool)

(assert (=> d!568936 m!2288183))

(assert (=> b!1864143 m!2288173))

(assert (=> b!1864143 m!2288131))

(assert (=> b!1864143 m!2288175))

(assert (=> b!1864143 m!2288177))

(assert (=> b!1864143 m!2288175))

(assert (=> b!1864143 m!2288177))

(assert (=> b!1864143 m!2288179))

(declare-fun m!2288185 () Bool)

(assert (=> bm!115780 m!2288185))

(declare-fun m!2288187 () Bool)

(assert (=> bm!115788 m!2288187))

(assert (=> b!1864155 m!2288177))

(assert (=> b!1864155 m!2288131))

(assert (=> b!1864155 m!2288175))

(declare-fun m!2288189 () Bool)

(assert (=> bm!115785 m!2288189))

(declare-fun m!2288191 () Bool)

(assert (=> b!1864137 m!2288191))

(declare-fun m!2288193 () Bool)

(assert (=> b!1864153 m!2288193))

(assert (=> b!1864153 m!2288131))

(declare-fun m!2288195 () Bool)

(assert (=> b!1864153 m!2288195))

(assert (=> b!1864153 m!2288137))

(assert (=> b!1864153 m!2288195))

(assert (=> b!1864153 m!2288137))

(declare-fun m!2288197 () Bool)

(assert (=> b!1864153 m!2288197))

(declare-fun m!2288199 () Bool)

(assert (=> b!1864149 m!2288199))

(assert (=> b!1864024 d!568936))

(declare-fun d!568942 () Bool)

(assert (=> d!568942 (= (tail!2825 (++!5596 lt!718266 lt!718267)) (t!172842 (++!5596 lt!718266 lt!718267)))))

(assert (=> b!1864024 d!568942))

(declare-fun b!1864203 () Bool)

(declare-fun res!834757 () Bool)

(declare-fun e!1190107 () Bool)

(assert (=> b!1864203 (=> (not res!834757) (not e!1190107))))

(assert (=> b!1864203 (= res!834757 (not (isEmpty!12881 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(declare-fun b!1864204 () Bool)

(declare-fun res!834752 () Bool)

(assert (=> b!1864204 (=> (not res!834752) (not e!1190107))))

(assert (=> b!1864204 (= res!834752 (<= (- (height!1053 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) (height!1053 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))) 1))))

(declare-fun b!1864205 () Bool)

(assert (=> b!1864205 (= e!1190107 (not (isEmpty!12881 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(declare-fun b!1864202 () Bool)

(declare-fun e!1190106 () Bool)

(assert (=> b!1864202 (= e!1190106 e!1190107)))

(declare-fun res!834754 () Bool)

(assert (=> b!1864202 (=> (not res!834754) (not e!1190107))))

(assert (=> b!1864202 (= res!834754 (<= (- 1) (- (height!1053 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) (height!1053 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))))

(declare-fun d!568944 () Bool)

(declare-fun res!834753 () Bool)

(assert (=> d!568944 (=> res!834753 e!1190106)))

(assert (=> d!568944 (= res!834753 (not ((_ is Node!6864) (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))

(assert (=> d!568944 (= (isBalanced!2165 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))) e!1190106)))

(declare-fun b!1864206 () Bool)

(declare-fun res!834756 () Bool)

(assert (=> b!1864206 (=> (not res!834756) (not e!1190107))))

(assert (=> b!1864206 (= res!834756 (isBalanced!2165 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))

(declare-fun b!1864207 () Bool)

(declare-fun res!834755 () Bool)

(assert (=> b!1864207 (=> (not res!834755) (not e!1190107))))

(assert (=> b!1864207 (= res!834755 (isBalanced!2165 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))

(assert (= (and d!568944 (not res!834753)) b!1864202))

(assert (= (and b!1864202 res!834754) b!1864204))

(assert (= (and b!1864204 res!834752) b!1864206))

(assert (= (and b!1864206 res!834756) b!1864207))

(assert (= (and b!1864207 res!834755) b!1864203))

(assert (= (and b!1864203 res!834757) b!1864205))

(declare-fun m!2288251 () Bool)

(assert (=> b!1864204 m!2288251))

(declare-fun m!2288253 () Bool)

(assert (=> b!1864204 m!2288253))

(declare-fun m!2288255 () Bool)

(assert (=> b!1864205 m!2288255))

(declare-fun m!2288257 () Bool)

(assert (=> b!1864206 m!2288257))

(declare-fun m!2288259 () Bool)

(assert (=> b!1864203 m!2288259))

(assert (=> b!1864202 m!2288251))

(assert (=> b!1864202 m!2288253))

(declare-fun m!2288261 () Bool)

(assert (=> b!1864207 m!2288261))

(assert (=> b!1864024 d!568944))

(declare-fun b!1864278 () Bool)

(declare-fun e!1190147 () Conc!6864)

(assert (=> b!1864278 (= e!1190147 Empty!6864)))

(declare-fun d!568952 () Bool)

(declare-fun e!1190150 () Bool)

(assert (=> d!568952 e!1190150))

(declare-fun res!834788 () Bool)

(assert (=> d!568952 (=> (not res!834788) (not e!1190150))))

(declare-fun lt!718343 () Conc!6864)

(assert (=> d!568952 (= res!834788 (isBalanced!2165 lt!718343))))

(declare-fun e!1190148 () Conc!6864)

(assert (=> d!568952 (= lt!718343 e!1190148)))

(declare-fun c!303649 () Bool)

(assert (=> d!568952 (= c!303649 ((_ is Leaf!10064) (left!16649 t!4595)))))

(assert (=> d!568952 (isBalanced!2165 (left!16649 t!4595))))

(assert (=> d!568952 (= (tail!2824 (left!16649 t!4595)) lt!718343)))

(declare-fun b!1864279 () Bool)

(declare-fun e!1190146 () Bool)

(assert (=> b!1864279 (= e!1190146 (isEmpty!12881 (left!16649 (left!16649 t!4595))))))

(declare-fun b!1864281 () Bool)

(declare-fun lt!718346 () Unit!35291)

(declare-fun lt!718344 () Unit!35291)

(assert (=> b!1864281 (= lt!718346 lt!718344)))

(declare-fun call!115824 () List!20751)

(declare-fun lt!718345 () List!20751)

(declare-fun slice!572 (List!20751 Int Int) List!20751)

(declare-fun size!16371 (List!20751) Int)

(assert (=> b!1864281 (= call!115824 (slice!572 lt!718345 1 (size!16371 lt!718345)))))

(declare-fun sliceTailLemma!32 (List!20751) Unit!35291)

(assert (=> b!1864281 (= lt!718344 (sliceTailLemma!32 lt!718345))))

(assert (=> b!1864281 (= lt!718345 (list!8444 (xs!9740 (left!16649 t!4595))))))

(declare-fun slice!573 (IArray!13733 Int Int) IArray!13733)

(assert (=> b!1864281 (= e!1190147 (Leaf!10064 (slice!573 (xs!9740 (left!16649 t!4595)) 1 (csize!13959 (left!16649 t!4595))) (- (csize!13959 (left!16649 t!4595)) 1)))))

(declare-fun bm!115819 () Bool)

(declare-fun lt!718348 () List!20751)

(assert (=> bm!115819 (= call!115824 (tail!2825 (ite c!303649 lt!718345 lt!718348)))))

(declare-fun b!1864284 () Bool)

(assert (=> b!1864284 (= e!1190150 (= (list!8442 lt!718343) (tail!2825 (list!8442 (left!16649 t!4595)))))))

(declare-fun b!1864286 () Bool)

(assert (=> b!1864286 (= e!1190148 e!1190147)))

(declare-fun c!303650 () Bool)

(assert (=> b!1864286 (= c!303650 (= (csize!13959 (left!16649 t!4595)) 1))))

(declare-fun b!1864288 () Bool)

(declare-fun lt!718349 () Unit!35291)

(declare-fun lt!718350 () Unit!35291)

(assert (=> b!1864288 (= lt!718349 lt!718350)))

(declare-fun lt!718347 () List!20751)

(assert (=> b!1864288 (= (tail!2825 (++!5596 lt!718348 lt!718347)) (++!5596 call!115824 lt!718347))))

(assert (=> b!1864288 (= lt!718350 (lemmaTailOfConcatIsTailConcat!36 lt!718348 lt!718347))))

(assert (=> b!1864288 (= lt!718347 (list!8442 (right!16979 (left!16649 t!4595))))))

(assert (=> b!1864288 (= lt!718348 (list!8442 (left!16649 (left!16649 t!4595))))))

(declare-fun e!1190145 () Conc!6864)

(declare-fun call!115825 () Conc!6864)

(assert (=> b!1864288 (= e!1190145 (++!5595 call!115825 (right!16979 (left!16649 t!4595))))))

(declare-fun b!1864290 () Bool)

(assert (=> b!1864290 (= e!1190145 call!115825)))

(declare-fun b!1864291 () Bool)

(assert (=> b!1864291 (= e!1190148 e!1190145)))

(declare-fun res!834789 () Bool)

(assert (=> b!1864291 (= res!834789 ((_ is Node!6864) (left!16649 t!4595)))))

(assert (=> b!1864291 (=> (not res!834789) (not e!1190146))))

(declare-fun c!303651 () Bool)

(assert (=> b!1864291 (= c!303651 e!1190146)))

(declare-fun bm!115820 () Bool)

(assert (=> bm!115820 (= call!115825 (tail!2824 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))))))

(assert (= (and d!568952 c!303649) b!1864286))

(assert (= (and d!568952 (not c!303649)) b!1864291))

(assert (= (and b!1864286 c!303650) b!1864278))

(assert (= (and b!1864286 (not c!303650)) b!1864281))

(assert (= (and b!1864291 res!834789) b!1864279))

(assert (= (and b!1864291 c!303651) b!1864290))

(assert (= (and b!1864291 (not c!303651)) b!1864288))

(assert (= (or b!1864290 b!1864288) bm!115820))

(assert (= (or b!1864281 b!1864288) bm!115819))

(assert (= (and d!568952 res!834788) b!1864284))

(declare-fun m!2288337 () Bool)

(assert (=> d!568952 m!2288337))

(declare-fun m!2288339 () Bool)

(assert (=> d!568952 m!2288339))

(declare-fun m!2288341 () Bool)

(assert (=> bm!115819 m!2288341))

(declare-fun m!2288343 () Bool)

(assert (=> b!1864281 m!2288343))

(declare-fun m!2288345 () Bool)

(assert (=> b!1864281 m!2288345))

(declare-fun m!2288347 () Bool)

(assert (=> b!1864281 m!2288347))

(declare-fun m!2288349 () Bool)

(assert (=> b!1864281 m!2288349))

(assert (=> b!1864281 m!2288345))

(declare-fun m!2288351 () Bool)

(assert (=> b!1864281 m!2288351))

(declare-fun m!2288353 () Bool)

(assert (=> bm!115820 m!2288353))

(declare-fun m!2288355 () Bool)

(assert (=> b!1864279 m!2288355))

(declare-fun m!2288357 () Bool)

(assert (=> b!1864284 m!2288357))

(assert (=> b!1864284 m!2288133))

(assert (=> b!1864284 m!2288133))

(declare-fun m!2288359 () Bool)

(assert (=> b!1864284 m!2288359))

(declare-fun m!2288361 () Bool)

(assert (=> b!1864288 m!2288361))

(declare-fun m!2288363 () Bool)

(assert (=> b!1864288 m!2288363))

(declare-fun m!2288365 () Bool)

(assert (=> b!1864288 m!2288365))

(assert (=> b!1864288 m!2288361))

(declare-fun m!2288367 () Bool)

(assert (=> b!1864288 m!2288367))

(declare-fun m!2288369 () Bool)

(assert (=> b!1864288 m!2288369))

(declare-fun m!2288371 () Bool)

(assert (=> b!1864288 m!2288371))

(declare-fun m!2288373 () Bool)

(assert (=> b!1864288 m!2288373))

(assert (=> b!1864024 d!568952))

(declare-fun b!1864298 () Bool)

(declare-fun e!1190154 () List!20751)

(assert (=> b!1864298 (= e!1190154 (list!8444 (xs!9740 (left!16649 t!4595))))))

(declare-fun b!1864299 () Bool)

(assert (=> b!1864299 (= e!1190154 (++!5596 (list!8442 (left!16649 (left!16649 t!4595))) (list!8442 (right!16979 (left!16649 t!4595)))))))

(declare-fun b!1864296 () Bool)

(declare-fun e!1190152 () List!20751)

(assert (=> b!1864296 (= e!1190152 Nil!20669)))

(declare-fun b!1864297 () Bool)

(assert (=> b!1864297 (= e!1190152 e!1190154)))

(declare-fun c!303654 () Bool)

(assert (=> b!1864297 (= c!303654 ((_ is Leaf!10064) (left!16649 t!4595)))))

(declare-fun d!568970 () Bool)

(declare-fun c!303653 () Bool)

(assert (=> d!568970 (= c!303653 ((_ is Empty!6864) (left!16649 t!4595)))))

(assert (=> d!568970 (= (list!8442 (left!16649 t!4595)) e!1190152)))

(assert (= (and d!568970 c!303653) b!1864296))

(assert (= (and d!568970 (not c!303653)) b!1864297))

(assert (= (and b!1864297 c!303654) b!1864298))

(assert (= (and b!1864297 (not c!303654)) b!1864299))

(assert (=> b!1864298 m!2288347))

(assert (=> b!1864299 m!2288369))

(assert (=> b!1864299 m!2288365))

(assert (=> b!1864299 m!2288369))

(assert (=> b!1864299 m!2288365))

(declare-fun m!2288375 () Bool)

(assert (=> b!1864299 m!2288375))

(assert (=> b!1864024 d!568970))

(declare-fun b!1864340 () Bool)

(declare-fun res!834806 () Bool)

(declare-fun e!1190179 () Bool)

(assert (=> b!1864340 (=> (not res!834806) (not e!1190179))))

(declare-fun lt!718353 () List!20751)

(assert (=> b!1864340 (= res!834806 (= (size!16371 lt!718353) (+ (size!16371 (tail!2825 lt!718266)) (size!16371 lt!718267))))))

(declare-fun d!568972 () Bool)

(assert (=> d!568972 e!1190179))

(declare-fun res!834805 () Bool)

(assert (=> d!568972 (=> (not res!834805) (not e!1190179))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3073 (List!20751) (InoxSet T!33060))

(assert (=> d!568972 (= res!834805 (= (content!3073 lt!718353) ((_ map or) (content!3073 (tail!2825 lt!718266)) (content!3073 lt!718267))))))

(declare-fun e!1190180 () List!20751)

(assert (=> d!568972 (= lt!718353 e!1190180)))

(declare-fun c!303661 () Bool)

(assert (=> d!568972 (= c!303661 ((_ is Nil!20669) (tail!2825 lt!718266)))))

(assert (=> d!568972 (= (++!5596 (tail!2825 lt!718266) lt!718267) lt!718353)))

(declare-fun b!1864338 () Bool)

(assert (=> b!1864338 (= e!1190180 lt!718267)))

(declare-fun b!1864339 () Bool)

(assert (=> b!1864339 (= e!1190180 (Cons!20669 (h!26070 (tail!2825 lt!718266)) (++!5596 (t!172842 (tail!2825 lt!718266)) lt!718267)))))

(declare-fun b!1864341 () Bool)

(assert (=> b!1864341 (= e!1190179 (or (not (= lt!718267 Nil!20669)) (= lt!718353 (tail!2825 lt!718266))))))

(assert (= (and d!568972 c!303661) b!1864338))

(assert (= (and d!568972 (not c!303661)) b!1864339))

(assert (= (and d!568972 res!834805) b!1864340))

(assert (= (and b!1864340 res!834806) b!1864341))

(declare-fun m!2288401 () Bool)

(assert (=> b!1864340 m!2288401))

(assert (=> b!1864340 m!2288123))

(declare-fun m!2288403 () Bool)

(assert (=> b!1864340 m!2288403))

(declare-fun m!2288405 () Bool)

(assert (=> b!1864340 m!2288405))

(declare-fun m!2288407 () Bool)

(assert (=> d!568972 m!2288407))

(assert (=> d!568972 m!2288123))

(declare-fun m!2288409 () Bool)

(assert (=> d!568972 m!2288409))

(declare-fun m!2288411 () Bool)

(assert (=> d!568972 m!2288411))

(declare-fun m!2288413 () Bool)

(assert (=> b!1864339 m!2288413))

(assert (=> b!1864024 d!568972))

(declare-fun d!568978 () Bool)

(assert (=> d!568978 (= (tail!2825 (++!5596 lt!718266 lt!718267)) (++!5596 (tail!2825 lt!718266) lt!718267))))

(declare-fun lt!718356 () Unit!35291)

(declare-fun choose!11731 (List!20751 List!20751) Unit!35291)

(assert (=> d!568978 (= lt!718356 (choose!11731 lt!718266 lt!718267))))

(declare-fun isEmpty!12883 (List!20751) Bool)

(assert (=> d!568978 (not (isEmpty!12883 lt!718266))))

(assert (=> d!568978 (= (lemmaTailOfConcatIsTailConcat!36 lt!718266 lt!718267) lt!718356)))

(declare-fun bs!411628 () Bool)

(assert (= bs!411628 d!568978))

(assert (=> bs!411628 m!2288127))

(assert (=> bs!411628 m!2288129))

(declare-fun m!2288415 () Bool)

(assert (=> bs!411628 m!2288415))

(assert (=> bs!411628 m!2288127))

(declare-fun m!2288417 () Bool)

(assert (=> bs!411628 m!2288417))

(assert (=> bs!411628 m!2288123))

(assert (=> bs!411628 m!2288123))

(assert (=> bs!411628 m!2288125))

(assert (=> b!1864024 d!568978))

(declare-fun b!1864344 () Bool)

(declare-fun res!834808 () Bool)

(declare-fun e!1190181 () Bool)

(assert (=> b!1864344 (=> (not res!834808) (not e!1190181))))

(declare-fun lt!718357 () List!20751)

(assert (=> b!1864344 (= res!834808 (= (size!16371 lt!718357) (+ (size!16371 lt!718266) (size!16371 lt!718267))))))

(declare-fun d!568980 () Bool)

(assert (=> d!568980 e!1190181))

(declare-fun res!834807 () Bool)

(assert (=> d!568980 (=> (not res!834807) (not e!1190181))))

(assert (=> d!568980 (= res!834807 (= (content!3073 lt!718357) ((_ map or) (content!3073 lt!718266) (content!3073 lt!718267))))))

(declare-fun e!1190182 () List!20751)

(assert (=> d!568980 (= lt!718357 e!1190182)))

(declare-fun c!303662 () Bool)

(assert (=> d!568980 (= c!303662 ((_ is Nil!20669) lt!718266))))

(assert (=> d!568980 (= (++!5596 lt!718266 lt!718267) lt!718357)))

(declare-fun b!1864342 () Bool)

(assert (=> b!1864342 (= e!1190182 lt!718267)))

(declare-fun b!1864343 () Bool)

(assert (=> b!1864343 (= e!1190182 (Cons!20669 (h!26070 lt!718266) (++!5596 (t!172842 lt!718266) lt!718267)))))

(declare-fun b!1864345 () Bool)

(assert (=> b!1864345 (= e!1190181 (or (not (= lt!718267 Nil!20669)) (= lt!718357 lt!718266)))))

(assert (= (and d!568980 c!303662) b!1864342))

(assert (= (and d!568980 (not c!303662)) b!1864343))

(assert (= (and d!568980 res!834807) b!1864344))

(assert (= (and b!1864344 res!834808) b!1864345))

(declare-fun m!2288419 () Bool)

(assert (=> b!1864344 m!2288419))

(declare-fun m!2288421 () Bool)

(assert (=> b!1864344 m!2288421))

(assert (=> b!1864344 m!2288405))

(declare-fun m!2288423 () Bool)

(assert (=> d!568980 m!2288423))

(declare-fun m!2288425 () Bool)

(assert (=> d!568980 m!2288425))

(assert (=> d!568980 m!2288411))

(declare-fun m!2288427 () Bool)

(assert (=> b!1864343 m!2288427))

(assert (=> b!1864024 d!568980))

(declare-fun d!568982 () Bool)

(assert (=> d!568982 (= (tail!2825 lt!718266) (t!172842 lt!718266))))

(assert (=> b!1864024 d!568982))

(declare-fun d!568984 () Bool)

(declare-fun lt!718360 () Bool)

(assert (=> d!568984 (= lt!718360 (isEmpty!12883 (list!8442 (left!16649 t!4595))))))

(declare-fun size!16372 (Conc!6864) Int)

(assert (=> d!568984 (= lt!718360 (= (size!16372 (left!16649 t!4595)) 0))))

(assert (=> d!568984 (= (isEmpty!12881 (left!16649 t!4595)) lt!718360)))

(declare-fun bs!411629 () Bool)

(assert (= bs!411629 d!568984))

(assert (=> bs!411629 m!2288133))

(assert (=> bs!411629 m!2288133))

(declare-fun m!2288429 () Bool)

(assert (=> bs!411629 m!2288429))

(declare-fun m!2288431 () Bool)

(assert (=> bs!411629 m!2288431))

(assert (=> b!1864019 d!568984))

(declare-fun d!568986 () Bool)

(declare-fun lt!718361 () Bool)

(assert (=> d!568986 (= lt!718361 (isEmpty!12883 (list!8442 t!4595)))))

(assert (=> d!568986 (= lt!718361 (= (size!16372 t!4595) 0))))

(assert (=> d!568986 (= (isEmpty!12881 t!4595) lt!718361)))

(declare-fun bs!411630 () Bool)

(assert (= bs!411630 d!568986))

(assert (=> bs!411630 m!2288111))

(assert (=> bs!411630 m!2288111))

(declare-fun m!2288433 () Bool)

(assert (=> bs!411630 m!2288433))

(declare-fun m!2288435 () Bool)

(assert (=> bs!411630 m!2288435))

(assert (=> b!1864026 d!568986))

(declare-fun d!568988 () Bool)

(declare-fun c!303665 () Bool)

(assert (=> d!568988 (= c!303665 ((_ is Node!6864) (left!16649 t!4595)))))

(declare-fun e!1190187 () Bool)

(assert (=> d!568988 (= (inv!27312 (left!16649 t!4595)) e!1190187)))

(declare-fun b!1864352 () Bool)

(declare-fun inv!27316 (Conc!6864) Bool)

(assert (=> b!1864352 (= e!1190187 (inv!27316 (left!16649 t!4595)))))

(declare-fun b!1864353 () Bool)

(declare-fun e!1190188 () Bool)

(assert (=> b!1864353 (= e!1190187 e!1190188)))

(declare-fun res!834811 () Bool)

(assert (=> b!1864353 (= res!834811 (not ((_ is Leaf!10064) (left!16649 t!4595))))))

(assert (=> b!1864353 (=> res!834811 e!1190188)))

(declare-fun b!1864354 () Bool)

(declare-fun inv!27317 (Conc!6864) Bool)

(assert (=> b!1864354 (= e!1190188 (inv!27317 (left!16649 t!4595)))))

(assert (= (and d!568988 c!303665) b!1864352))

(assert (= (and d!568988 (not c!303665)) b!1864353))

(assert (= (and b!1864353 (not res!834811)) b!1864354))

(declare-fun m!2288437 () Bool)

(assert (=> b!1864352 m!2288437))

(declare-fun m!2288439 () Bool)

(assert (=> b!1864354 m!2288439))

(assert (=> b!1864021 d!568988))

(declare-fun d!568990 () Bool)

(declare-fun c!303666 () Bool)

(assert (=> d!568990 (= c!303666 ((_ is Node!6864) (right!16979 t!4595)))))

(declare-fun e!1190189 () Bool)

(assert (=> d!568990 (= (inv!27312 (right!16979 t!4595)) e!1190189)))

(declare-fun b!1864355 () Bool)

(assert (=> b!1864355 (= e!1190189 (inv!27316 (right!16979 t!4595)))))

(declare-fun b!1864356 () Bool)

(declare-fun e!1190190 () Bool)

(assert (=> b!1864356 (= e!1190189 e!1190190)))

(declare-fun res!834812 () Bool)

(assert (=> b!1864356 (= res!834812 (not ((_ is Leaf!10064) (right!16979 t!4595))))))

(assert (=> b!1864356 (=> res!834812 e!1190190)))

(declare-fun b!1864357 () Bool)

(assert (=> b!1864357 (= e!1190190 (inv!27317 (right!16979 t!4595)))))

(assert (= (and d!568990 c!303666) b!1864355))

(assert (= (and d!568990 (not c!303666)) b!1864356))

(assert (= (and b!1864356 (not res!834812)) b!1864357))

(declare-fun m!2288441 () Bool)

(assert (=> b!1864355 m!2288441))

(declare-fun m!2288443 () Bool)

(assert (=> b!1864357 m!2288443))

(assert (=> b!1864021 d!568990))

(declare-fun b!1864360 () Bool)

(declare-fun e!1190192 () List!20751)

(assert (=> b!1864360 (= e!1190192 (list!8444 (xs!9740 t!4595)))))

(declare-fun b!1864361 () Bool)

(assert (=> b!1864361 (= e!1190192 (++!5596 (list!8442 (left!16649 t!4595)) (list!8442 (right!16979 t!4595))))))

(declare-fun b!1864358 () Bool)

(declare-fun e!1190191 () List!20751)

(assert (=> b!1864358 (= e!1190191 Nil!20669)))

(declare-fun b!1864359 () Bool)

(assert (=> b!1864359 (= e!1190191 e!1190192)))

(declare-fun c!303668 () Bool)

(assert (=> b!1864359 (= c!303668 ((_ is Leaf!10064) t!4595))))

(declare-fun d!568992 () Bool)

(declare-fun c!303667 () Bool)

(assert (=> d!568992 (= c!303667 ((_ is Empty!6864) t!4595))))

(assert (=> d!568992 (= (list!8442 t!4595) e!1190191)))

(assert (= (and d!568992 c!303667) b!1864358))

(assert (= (and d!568992 (not c!303667)) b!1864359))

(assert (= (and b!1864359 c!303668) b!1864360))

(assert (= (and b!1864359 (not c!303668)) b!1864361))

(declare-fun m!2288445 () Bool)

(assert (=> b!1864360 m!2288445))

(assert (=> b!1864361 m!2288133))

(assert (=> b!1864361 m!2288137))

(assert (=> b!1864361 m!2288133))

(assert (=> b!1864361 m!2288137))

(declare-fun m!2288447 () Bool)

(assert (=> b!1864361 m!2288447))

(assert (=> b!1864027 d!568992))

(declare-fun b!1864363 () Bool)

(declare-fun res!834818 () Bool)

(declare-fun e!1190194 () Bool)

(assert (=> b!1864363 (=> (not res!834818) (not e!1190194))))

(assert (=> b!1864363 (= res!834818 (not (isEmpty!12881 (left!16649 t!4595))))))

(declare-fun b!1864364 () Bool)

(declare-fun res!834813 () Bool)

(assert (=> b!1864364 (=> (not res!834813) (not e!1190194))))

(assert (=> b!1864364 (= res!834813 (<= (- (height!1053 (left!16649 t!4595)) (height!1053 (right!16979 t!4595))) 1))))

(declare-fun b!1864365 () Bool)

(assert (=> b!1864365 (= e!1190194 (not (isEmpty!12881 (right!16979 t!4595))))))

(declare-fun b!1864362 () Bool)

(declare-fun e!1190193 () Bool)

(assert (=> b!1864362 (= e!1190193 e!1190194)))

(declare-fun res!834815 () Bool)

(assert (=> b!1864362 (=> (not res!834815) (not e!1190194))))

(assert (=> b!1864362 (= res!834815 (<= (- 1) (- (height!1053 (left!16649 t!4595)) (height!1053 (right!16979 t!4595)))))))

(declare-fun d!568994 () Bool)

(declare-fun res!834814 () Bool)

(assert (=> d!568994 (=> res!834814 e!1190193)))

(assert (=> d!568994 (= res!834814 (not ((_ is Node!6864) t!4595)))))

(assert (=> d!568994 (= (isBalanced!2165 t!4595) e!1190193)))

(declare-fun b!1864366 () Bool)

(declare-fun res!834817 () Bool)

(assert (=> b!1864366 (=> (not res!834817) (not e!1190194))))

(assert (=> b!1864366 (= res!834817 (isBalanced!2165 (left!16649 t!4595)))))

(declare-fun b!1864367 () Bool)

(declare-fun res!834816 () Bool)

(assert (=> b!1864367 (=> (not res!834816) (not e!1190194))))

(assert (=> b!1864367 (= res!834816 (isBalanced!2165 (right!16979 t!4595)))))

(assert (= (and d!568994 (not res!834814)) b!1864362))

(assert (= (and b!1864362 res!834815) b!1864364))

(assert (= (and b!1864364 res!834813) b!1864366))

(assert (= (and b!1864366 res!834817) b!1864367))

(assert (= (and b!1864367 res!834816) b!1864363))

(assert (= (and b!1864363 res!834818) b!1864365))

(declare-fun m!2288449 () Bool)

(assert (=> b!1864364 m!2288449))

(assert (=> b!1864364 m!2288177))

(declare-fun m!2288451 () Bool)

(assert (=> b!1864365 m!2288451))

(assert (=> b!1864366 m!2288339))

(assert (=> b!1864363 m!2288105))

(assert (=> b!1864362 m!2288449))

(assert (=> b!1864362 m!2288177))

(assert (=> b!1864367 m!2288199))

(assert (=> start!186476 d!568994))

(declare-fun d!568996 () Bool)

(declare-fun c!303669 () Bool)

(assert (=> d!568996 (= c!303669 ((_ is Node!6864) t!4595))))

(declare-fun e!1190195 () Bool)

(assert (=> d!568996 (= (inv!27312 t!4595) e!1190195)))

(declare-fun b!1864368 () Bool)

(assert (=> b!1864368 (= e!1190195 (inv!27316 t!4595))))

(declare-fun b!1864369 () Bool)

(declare-fun e!1190196 () Bool)

(assert (=> b!1864369 (= e!1190195 e!1190196)))

(declare-fun res!834819 () Bool)

(assert (=> b!1864369 (= res!834819 (not ((_ is Leaf!10064) t!4595)))))

(assert (=> b!1864369 (=> res!834819 e!1190196)))

(declare-fun b!1864370 () Bool)

(assert (=> b!1864370 (= e!1190196 (inv!27317 t!4595))))

(assert (= (and d!568996 c!303669) b!1864368))

(assert (= (and d!568996 (not c!303669)) b!1864369))

(assert (= (and b!1864369 (not res!834819)) b!1864370))

(declare-fun m!2288453 () Bool)

(assert (=> b!1864368 m!2288453))

(declare-fun m!2288455 () Bool)

(assert (=> b!1864370 m!2288455))

(assert (=> start!186476 d!568996))

(declare-fun d!568998 () Bool)

(assert (=> d!568998 (= (inv!27313 (xs!9740 t!4595)) (<= (size!16371 (innerList!6924 (xs!9740 t!4595))) 2147483647))))

(declare-fun bs!411631 () Bool)

(assert (= bs!411631 d!568998))

(declare-fun m!2288457 () Bool)

(assert (=> bs!411631 m!2288457))

(assert (=> b!1864023 d!568998))

(declare-fun e!1190201 () Bool)

(declare-fun tp!530967 () Bool)

(declare-fun b!1864379 () Bool)

(declare-fun tp!530966 () Bool)

(assert (=> b!1864379 (= e!1190201 (and (inv!27312 (left!16649 (left!16649 t!4595))) tp!530966 (inv!27312 (right!16979 (left!16649 t!4595))) tp!530967))))

(declare-fun b!1864381 () Bool)

(declare-fun e!1190202 () Bool)

(declare-fun tp!530968 () Bool)

(assert (=> b!1864381 (= e!1190202 tp!530968)))

(declare-fun b!1864380 () Bool)

(assert (=> b!1864380 (= e!1190201 (and (inv!27313 (xs!9740 (left!16649 t!4595))) e!1190202))))

(assert (=> b!1864021 (= tp!530943 (and (inv!27312 (left!16649 t!4595)) e!1190201))))

(assert (= (and b!1864021 ((_ is Node!6864) (left!16649 t!4595))) b!1864379))

(assert (= b!1864380 b!1864381))

(assert (= (and b!1864021 ((_ is Leaf!10064) (left!16649 t!4595))) b!1864380))

(declare-fun m!2288459 () Bool)

(assert (=> b!1864379 m!2288459))

(declare-fun m!2288461 () Bool)

(assert (=> b!1864379 m!2288461))

(declare-fun m!2288463 () Bool)

(assert (=> b!1864380 m!2288463))

(assert (=> b!1864021 m!2288115))

(declare-fun e!1190203 () Bool)

(declare-fun b!1864382 () Bool)

(declare-fun tp!530969 () Bool)

(declare-fun tp!530970 () Bool)

(assert (=> b!1864382 (= e!1190203 (and (inv!27312 (left!16649 (right!16979 t!4595))) tp!530969 (inv!27312 (right!16979 (right!16979 t!4595))) tp!530970))))

(declare-fun b!1864384 () Bool)

(declare-fun e!1190204 () Bool)

(declare-fun tp!530971 () Bool)

(assert (=> b!1864384 (= e!1190204 tp!530971)))

(declare-fun b!1864383 () Bool)

(assert (=> b!1864383 (= e!1190203 (and (inv!27313 (xs!9740 (right!16979 t!4595))) e!1190204))))

(assert (=> b!1864021 (= tp!530944 (and (inv!27312 (right!16979 t!4595)) e!1190203))))

(assert (= (and b!1864021 ((_ is Node!6864) (right!16979 t!4595))) b!1864382))

(assert (= b!1864383 b!1864384))

(assert (= (and b!1864021 ((_ is Leaf!10064) (right!16979 t!4595))) b!1864383))

(declare-fun m!2288465 () Bool)

(assert (=> b!1864382 m!2288465))

(declare-fun m!2288467 () Bool)

(assert (=> b!1864382 m!2288467))

(declare-fun m!2288469 () Bool)

(assert (=> b!1864383 m!2288469))

(assert (=> b!1864021 m!2288117))

(declare-fun b!1864389 () Bool)

(declare-fun e!1190207 () Bool)

(declare-fun tp_is_empty!8651 () Bool)

(declare-fun tp!530974 () Bool)

(assert (=> b!1864389 (= e!1190207 (and tp_is_empty!8651 tp!530974))))

(assert (=> b!1864022 (= tp!530942 e!1190207)))

(assert (= (and b!1864022 ((_ is Cons!20669) (innerList!6924 (xs!9740 t!4595)))) b!1864389))

(check-sat (not b!1864143) (not b!1864288) (not bm!115819) (not b!1864299) (not bm!115789) (not b!1864381) (not b!1864149) (not b!1864355) (not b!1864361) (not b!1864364) (not b!1864368) (not b!1864284) (not b!1864367) (not b!1864203) (not bm!115779) (not b!1864281) (not b!1864021) tp_is_empty!8651 (not bm!115777) (not b!1864343) (not b!1864344) (not b!1864360) (not bm!115820) (not b!1864352) (not d!568980) (not b!1864202) (not b!1864204) (not bm!115785) (not b!1864363) (not b!1864362) (not b!1864383) (not d!568978) (not b!1864279) (not b!1864354) (not b!1864206) (not b!1864384) (not d!568952) (not b!1864207) (not b!1864205) (not b!1864379) (not b!1864156) (not b!1864137) (not b!1864153) (not b!1864370) (not d!568972) (not bm!115790) (not b!1864366) (not b!1864155) (not b!1864038) (not d!568984) (not b!1864039) (not b!1864340) (not b!1864339) (not b!1864380) (not bm!115788) (not d!568998) (not d!568986) (not bm!115780) (not b!1864357) (not b!1864298) (not b!1864389) (not b!1864365) (not b!1864382) (not d!568936))
(check-sat)
(get-model)

(declare-fun b!1864392 () Bool)

(declare-fun res!834821 () Bool)

(declare-fun e!1190208 () Bool)

(assert (=> b!1864392 (=> (not res!834821) (not e!1190208))))

(declare-fun lt!718362 () List!20751)

(assert (=> b!1864392 (= res!834821 (= (size!16371 lt!718362) (+ (size!16371 lt!718348) (size!16371 lt!718347))))))

(declare-fun d!569000 () Bool)

(assert (=> d!569000 e!1190208))

(declare-fun res!834820 () Bool)

(assert (=> d!569000 (=> (not res!834820) (not e!1190208))))

(assert (=> d!569000 (= res!834820 (= (content!3073 lt!718362) ((_ map or) (content!3073 lt!718348) (content!3073 lt!718347))))))

(declare-fun e!1190209 () List!20751)

(assert (=> d!569000 (= lt!718362 e!1190209)))

(declare-fun c!303670 () Bool)

(assert (=> d!569000 (= c!303670 ((_ is Nil!20669) lt!718348))))

(assert (=> d!569000 (= (++!5596 lt!718348 lt!718347) lt!718362)))

(declare-fun b!1864390 () Bool)

(assert (=> b!1864390 (= e!1190209 lt!718347)))

(declare-fun b!1864391 () Bool)

(assert (=> b!1864391 (= e!1190209 (Cons!20669 (h!26070 lt!718348) (++!5596 (t!172842 lt!718348) lt!718347)))))

(declare-fun b!1864393 () Bool)

(assert (=> b!1864393 (= e!1190208 (or (not (= lt!718347 Nil!20669)) (= lt!718362 lt!718348)))))

(assert (= (and d!569000 c!303670) b!1864390))

(assert (= (and d!569000 (not c!303670)) b!1864391))

(assert (= (and d!569000 res!834820) b!1864392))

(assert (= (and b!1864392 res!834821) b!1864393))

(declare-fun m!2288471 () Bool)

(assert (=> b!1864392 m!2288471))

(declare-fun m!2288473 () Bool)

(assert (=> b!1864392 m!2288473))

(declare-fun m!2288475 () Bool)

(assert (=> b!1864392 m!2288475))

(declare-fun m!2288477 () Bool)

(assert (=> d!569000 m!2288477))

(declare-fun m!2288479 () Bool)

(assert (=> d!569000 m!2288479))

(declare-fun m!2288481 () Bool)

(assert (=> d!569000 m!2288481))

(declare-fun m!2288483 () Bool)

(assert (=> b!1864391 m!2288483))

(assert (=> b!1864288 d!569000))

(declare-fun b!1864396 () Bool)

(declare-fun e!1190211 () List!20751)

(assert (=> b!1864396 (= e!1190211 (list!8444 (xs!9740 (right!16979 (left!16649 t!4595)))))))

(declare-fun b!1864397 () Bool)

(assert (=> b!1864397 (= e!1190211 (++!5596 (list!8442 (left!16649 (right!16979 (left!16649 t!4595)))) (list!8442 (right!16979 (right!16979 (left!16649 t!4595))))))))

(declare-fun b!1864394 () Bool)

(declare-fun e!1190210 () List!20751)

(assert (=> b!1864394 (= e!1190210 Nil!20669)))

(declare-fun b!1864395 () Bool)

(assert (=> b!1864395 (= e!1190210 e!1190211)))

(declare-fun c!303672 () Bool)

(assert (=> b!1864395 (= c!303672 ((_ is Leaf!10064) (right!16979 (left!16649 t!4595))))))

(declare-fun d!569002 () Bool)

(declare-fun c!303671 () Bool)

(assert (=> d!569002 (= c!303671 ((_ is Empty!6864) (right!16979 (left!16649 t!4595))))))

(assert (=> d!569002 (= (list!8442 (right!16979 (left!16649 t!4595))) e!1190210)))

(assert (= (and d!569002 c!303671) b!1864394))

(assert (= (and d!569002 (not c!303671)) b!1864395))

(assert (= (and b!1864395 c!303672) b!1864396))

(assert (= (and b!1864395 (not c!303672)) b!1864397))

(declare-fun m!2288485 () Bool)

(assert (=> b!1864396 m!2288485))

(declare-fun m!2288487 () Bool)

(assert (=> b!1864397 m!2288487))

(declare-fun m!2288489 () Bool)

(assert (=> b!1864397 m!2288489))

(assert (=> b!1864397 m!2288487))

(assert (=> b!1864397 m!2288489))

(declare-fun m!2288491 () Bool)

(assert (=> b!1864397 m!2288491))

(assert (=> b!1864288 d!569002))

(declare-fun b!1864400 () Bool)

(declare-fun res!834823 () Bool)

(declare-fun e!1190212 () Bool)

(assert (=> b!1864400 (=> (not res!834823) (not e!1190212))))

(declare-fun lt!718363 () List!20751)

(assert (=> b!1864400 (= res!834823 (= (size!16371 lt!718363) (+ (size!16371 call!115824) (size!16371 lt!718347))))))

(declare-fun d!569004 () Bool)

(assert (=> d!569004 e!1190212))

(declare-fun res!834822 () Bool)

(assert (=> d!569004 (=> (not res!834822) (not e!1190212))))

(assert (=> d!569004 (= res!834822 (= (content!3073 lt!718363) ((_ map or) (content!3073 call!115824) (content!3073 lt!718347))))))

(declare-fun e!1190213 () List!20751)

(assert (=> d!569004 (= lt!718363 e!1190213)))

(declare-fun c!303673 () Bool)

(assert (=> d!569004 (= c!303673 ((_ is Nil!20669) call!115824))))

(assert (=> d!569004 (= (++!5596 call!115824 lt!718347) lt!718363)))

(declare-fun b!1864398 () Bool)

(assert (=> b!1864398 (= e!1190213 lt!718347)))

(declare-fun b!1864399 () Bool)

(assert (=> b!1864399 (= e!1190213 (Cons!20669 (h!26070 call!115824) (++!5596 (t!172842 call!115824) lt!718347)))))

(declare-fun b!1864401 () Bool)

(assert (=> b!1864401 (= e!1190212 (or (not (= lt!718347 Nil!20669)) (= lt!718363 call!115824)))))

(assert (= (and d!569004 c!303673) b!1864398))

(assert (= (and d!569004 (not c!303673)) b!1864399))

(assert (= (and d!569004 res!834822) b!1864400))

(assert (= (and b!1864400 res!834823) b!1864401))

(declare-fun m!2288493 () Bool)

(assert (=> b!1864400 m!2288493))

(declare-fun m!2288495 () Bool)

(assert (=> b!1864400 m!2288495))

(assert (=> b!1864400 m!2288475))

(declare-fun m!2288497 () Bool)

(assert (=> d!569004 m!2288497))

(declare-fun m!2288499 () Bool)

(assert (=> d!569004 m!2288499))

(assert (=> d!569004 m!2288481))

(declare-fun m!2288501 () Bool)

(assert (=> b!1864399 m!2288501))

(assert (=> b!1864288 d!569004))

(declare-fun d!569006 () Bool)

(assert (=> d!569006 (= (tail!2825 (++!5596 lt!718348 lt!718347)) (t!172842 (++!5596 lt!718348 lt!718347)))))

(assert (=> b!1864288 d!569006))

(declare-fun c!303681 () Bool)

(declare-fun call!115830 () Conc!6864)

(declare-fun c!303676 () Bool)

(declare-fun call!115831 () Conc!6864)

(declare-fun c!303679 () Bool)

(declare-fun bm!115821 () Bool)

(declare-fun lt!718364 () Conc!6864)

(declare-fun c!303674 () Bool)

(declare-fun lt!718367 () Conc!6864)

(declare-fun call!115828 () Conc!6864)

(declare-fun call!115827 () Conc!6864)

(assert (=> bm!115821 (= call!115828 (<>!162 (ite c!303681 (ite c!303676 (left!16649 call!115825) call!115830) (ite c!303674 call!115831 (ite c!303679 call!115827 lt!718364))) (ite c!303681 (ite c!303676 call!115830 lt!718367) (ite (or c!303674 c!303679) (right!16979 (right!16979 (left!16649 t!4595))) call!115827))))))

(declare-fun b!1864402 () Bool)

(declare-fun e!1190214 () Conc!6864)

(declare-fun call!115836 () Conc!6864)

(assert (=> b!1864402 (= e!1190214 call!115836)))

(declare-fun b!1864403 () Bool)

(declare-fun res!834824 () Bool)

(declare-fun e!1190217 () Bool)

(assert (=> b!1864403 (=> (not res!834824) (not e!1190217))))

(declare-fun lt!718365 () Conc!6864)

(assert (=> b!1864403 (= res!834824 (isBalanced!2165 lt!718365))))

(declare-fun bm!115822 () Bool)

(declare-fun call!115840 () Conc!6864)

(assert (=> bm!115822 (= call!115827 call!115840)))

(declare-fun bm!115823 () Bool)

(declare-fun call!115837 () Int)

(assert (=> bm!115823 (= call!115837 (height!1053 (ite c!303681 call!115825 (right!16979 (right!16979 (left!16649 t!4595))))))))

(declare-fun bm!115824 () Bool)

(declare-fun call!115841 () Int)

(assert (=> bm!115824 (= call!115841 (height!1053 (ite c!303681 (right!16979 call!115825) (right!16979 (left!16649 t!4595)))))))

(declare-fun bm!115825 () Bool)

(declare-fun call!115834 () Conc!6864)

(assert (=> bm!115825 (= call!115834 call!115828)))

(declare-fun bm!115826 () Bool)

(declare-fun call!115832 () Conc!6864)

(assert (=> bm!115826 (= call!115832 call!115828)))

(declare-fun bm!115827 () Bool)

(declare-fun call!115829 () Conc!6864)

(declare-fun call!115838 () Conc!6864)

(assert (=> bm!115827 (= call!115829 call!115838)))

(declare-fun d!569008 () Bool)

(assert (=> d!569008 e!1190217))

(declare-fun res!834828 () Bool)

(assert (=> d!569008 (=> (not res!834828) (not e!1190217))))

(assert (=> d!569008 (= res!834828 (appendAssocInst!510 call!115825 (right!16979 (left!16649 t!4595))))))

(declare-fun e!1190216 () Conc!6864)

(assert (=> d!569008 (= lt!718365 e!1190216)))

(declare-fun c!303680 () Bool)

(assert (=> d!569008 (= c!303680 (= call!115825 Empty!6864))))

(declare-fun e!1190218 () Bool)

(assert (=> d!569008 e!1190218))

(declare-fun res!834825 () Bool)

(assert (=> d!569008 (=> (not res!834825) (not e!1190218))))

(assert (=> d!569008 (= res!834825 (isBalanced!2165 call!115825))))

(assert (=> d!569008 (= (++!5595 call!115825 (right!16979 (left!16649 t!4595))) lt!718365)))

(declare-fun b!1864404 () Bool)

(declare-fun e!1190223 () Conc!6864)

(declare-fun call!115833 () Conc!6864)

(assert (=> b!1864404 (= e!1190223 call!115833)))

(declare-fun b!1864405 () Bool)

(declare-fun call!115835 () Int)

(assert (=> b!1864405 (= c!303674 (>= call!115837 call!115835))))

(declare-fun e!1190215 () Conc!6864)

(declare-fun e!1190219 () Conc!6864)

(assert (=> b!1864405 (= e!1190215 e!1190219)))

(declare-fun bm!115828 () Bool)

(assert (=> bm!115828 (= call!115831 call!115838)))

(declare-fun b!1864406 () Bool)

(declare-fun e!1190220 () Conc!6864)

(assert (=> b!1864406 (= e!1190216 e!1190220)))

(declare-fun c!303678 () Bool)

(assert (=> b!1864406 (= c!303678 (= (right!16979 (left!16649 t!4595)) Empty!6864))))

(declare-fun c!303677 () Bool)

(declare-fun bm!115829 () Bool)

(declare-fun c!303675 () Bool)

(assert (=> bm!115829 (= call!115833 (<>!162 (ite c!303675 call!115825 (ite c!303681 (ite c!303677 (left!16649 call!115825) (ite c!303676 (left!16649 (right!16979 call!115825)) (left!16649 call!115825))) (ite c!303679 lt!718364 (right!16979 (left!16649 (right!16979 (left!16649 t!4595))))))) (ite c!303675 (right!16979 (left!16649 t!4595)) (ite c!303681 (ite c!303677 call!115829 (ite c!303676 lt!718367 (left!16649 (right!16979 call!115825)))) (ite c!303679 (right!16979 (left!16649 (right!16979 (left!16649 t!4595)))) (right!16979 (right!16979 (left!16649 t!4595))))))))))

(declare-fun b!1864407 () Bool)

(declare-fun e!1190221 () Conc!6864)

(declare-fun call!115839 () Conc!6864)

(assert (=> b!1864407 (= e!1190221 call!115839)))

(declare-fun b!1864408 () Bool)

(assert (=> b!1864408 (= e!1190214 call!115836)))

(declare-fun b!1864409 () Bool)

(declare-fun res!834826 () Bool)

(assert (=> b!1864409 (=> (not res!834826) (not e!1190217))))

(assert (=> b!1864409 (= res!834826 (>= (height!1053 lt!718365) (max!0 (height!1053 call!115825) (height!1053 (right!16979 (left!16649 t!4595))))))))

(declare-fun b!1864410 () Bool)

(declare-fun call!115826 () Int)

(assert (=> b!1864410 (= c!303677 (>= call!115826 call!115841))))

(assert (=> b!1864410 (= e!1190215 e!1190221)))

(declare-fun b!1864411 () Bool)

(assert (=> b!1864411 (= e!1190220 call!115825)))

(declare-fun b!1864412 () Bool)

(assert (=> b!1864412 (= e!1190216 (right!16979 (left!16649 t!4595)))))

(declare-fun b!1864413 () Bool)

(assert (=> b!1864413 (= e!1190219 call!115834)))

(declare-fun b!1864414 () Bool)

(declare-fun e!1190222 () Conc!6864)

(assert (=> b!1864414 (= e!1190222 call!115832)))

(declare-fun b!1864415 () Bool)

(assert (=> b!1864415 (= e!1190218 (isBalanced!2165 (right!16979 (left!16649 t!4595))))))

(declare-fun b!1864416 () Bool)

(assert (=> b!1864416 (= e!1190219 e!1190214)))

(assert (=> b!1864416 (= lt!718364 call!115831)))

(assert (=> b!1864416 (= c!303679 (= call!115826 (- call!115841 3)))))

(declare-fun b!1864417 () Bool)

(assert (=> b!1864417 (= e!1190223 e!1190215)))

(declare-fun lt!718366 () Int)

(assert (=> b!1864417 (= c!303681 (< lt!718366 (- 1)))))

(declare-fun bm!115830 () Bool)

(assert (=> bm!115830 (= call!115840 call!115833)))

(declare-fun b!1864418 () Bool)

(assert (=> b!1864418 (= e!1190222 call!115832)))

(declare-fun b!1864419 () Bool)

(assert (=> b!1864419 (= e!1190217 (= (list!8442 lt!718365) (++!5596 (list!8442 call!115825) (list!8442 (right!16979 (left!16649 t!4595))))))))

(declare-fun bm!115831 () Bool)

(assert (=> bm!115831 (= call!115830 call!115839)))

(declare-fun b!1864420 () Bool)

(assert (=> b!1864420 (= e!1190221 e!1190222)))

(assert (=> b!1864420 (= lt!718367 call!115829)))

(assert (=> b!1864420 (= c!303676 (= call!115835 (- call!115837 3)))))

(declare-fun bm!115832 () Bool)

(assert (=> bm!115832 (= call!115826 (height!1053 (ite c!303681 (left!16649 call!115825) lt!718364)))))

(declare-fun bm!115833 () Bool)

(assert (=> bm!115833 (= call!115835 (height!1053 (ite c!303681 lt!718367 (left!16649 (right!16979 (left!16649 t!4595))))))))

(declare-fun b!1864421 () Bool)

(assert (=> b!1864421 (= c!303675 (and (<= (- 1) lt!718366) (<= lt!718366 1)))))

(assert (=> b!1864421 (= lt!718366 (- (height!1053 (right!16979 (left!16649 t!4595))) (height!1053 call!115825)))))

(assert (=> b!1864421 (= e!1190220 e!1190223)))

(declare-fun b!1864422 () Bool)

(declare-fun res!834827 () Bool)

(assert (=> b!1864422 (=> (not res!834827) (not e!1190217))))

(assert (=> b!1864422 (= res!834827 (<= (height!1053 lt!718365) (+ (max!0 (height!1053 call!115825) (height!1053 (right!16979 (left!16649 t!4595)))) 1)))))

(declare-fun bm!115834 () Bool)

(assert (=> bm!115834 (= call!115838 (++!5595 (ite c!303681 (ite c!303677 (right!16979 call!115825) (right!16979 (right!16979 call!115825))) call!115825) (ite c!303681 (right!16979 (left!16649 t!4595)) (ite c!303674 (left!16649 (right!16979 (left!16649 t!4595))) (left!16649 (left!16649 (right!16979 (left!16649 t!4595))))))))))

(declare-fun bm!115835 () Bool)

(assert (=> bm!115835 (= call!115839 call!115840)))

(declare-fun bm!115836 () Bool)

(assert (=> bm!115836 (= call!115836 call!115834)))

(assert (= (and d!569008 res!834825) b!1864415))

(assert (= (and d!569008 c!303680) b!1864412))

(assert (= (and d!569008 (not c!303680)) b!1864406))

(assert (= (and b!1864406 c!303678) b!1864411))

(assert (= (and b!1864406 (not c!303678)) b!1864421))

(assert (= (and b!1864421 c!303675) b!1864404))

(assert (= (and b!1864421 (not c!303675)) b!1864417))

(assert (= (and b!1864417 c!303681) b!1864410))

(assert (= (and b!1864417 (not c!303681)) b!1864405))

(assert (= (and b!1864410 c!303677) b!1864407))

(assert (= (and b!1864410 (not c!303677)) b!1864420))

(assert (= (and b!1864420 c!303676) b!1864414))

(assert (= (and b!1864420 (not c!303676)) b!1864418))

(assert (= (or b!1864414 b!1864418) bm!115831))

(assert (= (or b!1864414 b!1864418) bm!115826))

(assert (= (or b!1864407 b!1864420) bm!115827))

(assert (= (or b!1864407 bm!115831) bm!115835))

(assert (= (and b!1864405 c!303674) b!1864413))

(assert (= (and b!1864405 (not c!303674)) b!1864416))

(assert (= (and b!1864416 c!303679) b!1864402))

(assert (= (and b!1864416 (not c!303679)) b!1864408))

(assert (= (or b!1864402 b!1864408) bm!115822))

(assert (= (or b!1864402 b!1864408) bm!115836))

(assert (= (or b!1864413 b!1864416) bm!115828))

(assert (= (or b!1864413 bm!115836) bm!115825))

(assert (= (or b!1864410 b!1864416) bm!115824))

(assert (= (or b!1864420 b!1864405) bm!115833))

(assert (= (or b!1864420 b!1864405) bm!115823))

(assert (= (or bm!115826 bm!115825) bm!115821))

(assert (= (or bm!115835 bm!115822) bm!115830))

(assert (= (or bm!115827 bm!115828) bm!115834))

(assert (= (or b!1864410 b!1864416) bm!115832))

(assert (= (or b!1864404 bm!115830) bm!115829))

(assert (= (and d!569008 res!834828) b!1864403))

(assert (= (and b!1864403 res!834824) b!1864422))

(assert (= (and b!1864422 res!834827) b!1864409))

(assert (= (and b!1864409 res!834826) b!1864419))

(declare-fun m!2288503 () Bool)

(assert (=> bm!115823 m!2288503))

(declare-fun m!2288505 () Bool)

(assert (=> bm!115834 m!2288505))

(declare-fun m!2288507 () Bool)

(assert (=> bm!115821 m!2288507))

(declare-fun m!2288509 () Bool)

(assert (=> bm!115833 m!2288509))

(declare-fun m!2288511 () Bool)

(assert (=> b!1864422 m!2288511))

(declare-fun m!2288513 () Bool)

(assert (=> b!1864422 m!2288513))

(declare-fun m!2288515 () Bool)

(assert (=> b!1864422 m!2288515))

(assert (=> b!1864422 m!2288513))

(assert (=> b!1864422 m!2288515))

(declare-fun m!2288517 () Bool)

(assert (=> b!1864422 m!2288517))

(declare-fun m!2288519 () Bool)

(assert (=> d!569008 m!2288519))

(declare-fun m!2288521 () Bool)

(assert (=> d!569008 m!2288521))

(assert (=> b!1864409 m!2288511))

(assert (=> b!1864409 m!2288513))

(assert (=> b!1864409 m!2288515))

(assert (=> b!1864409 m!2288513))

(assert (=> b!1864409 m!2288515))

(assert (=> b!1864409 m!2288517))

(declare-fun m!2288523 () Bool)

(assert (=> bm!115824 m!2288523))

(declare-fun m!2288525 () Bool)

(assert (=> bm!115832 m!2288525))

(assert (=> b!1864421 m!2288515))

(assert (=> b!1864421 m!2288513))

(declare-fun m!2288527 () Bool)

(assert (=> bm!115829 m!2288527))

(declare-fun m!2288529 () Bool)

(assert (=> b!1864403 m!2288529))

(declare-fun m!2288531 () Bool)

(assert (=> b!1864419 m!2288531))

(declare-fun m!2288533 () Bool)

(assert (=> b!1864419 m!2288533))

(assert (=> b!1864419 m!2288365))

(assert (=> b!1864419 m!2288533))

(assert (=> b!1864419 m!2288365))

(declare-fun m!2288535 () Bool)

(assert (=> b!1864419 m!2288535))

(declare-fun m!2288537 () Bool)

(assert (=> b!1864415 m!2288537))

(assert (=> b!1864288 d!569008))

(declare-fun d!569010 () Bool)

(assert (=> d!569010 (= (tail!2825 (++!5596 lt!718348 lt!718347)) (++!5596 (tail!2825 lt!718348) lt!718347))))

(declare-fun lt!718368 () Unit!35291)

(assert (=> d!569010 (= lt!718368 (choose!11731 lt!718348 lt!718347))))

(assert (=> d!569010 (not (isEmpty!12883 lt!718348))))

(assert (=> d!569010 (= (lemmaTailOfConcatIsTailConcat!36 lt!718348 lt!718347) lt!718368)))

(declare-fun bs!411632 () Bool)

(assert (= bs!411632 d!569010))

(assert (=> bs!411632 m!2288361))

(assert (=> bs!411632 m!2288367))

(declare-fun m!2288539 () Bool)

(assert (=> bs!411632 m!2288539))

(assert (=> bs!411632 m!2288361))

(declare-fun m!2288541 () Bool)

(assert (=> bs!411632 m!2288541))

(declare-fun m!2288543 () Bool)

(assert (=> bs!411632 m!2288543))

(assert (=> bs!411632 m!2288543))

(declare-fun m!2288545 () Bool)

(assert (=> bs!411632 m!2288545))

(assert (=> b!1864288 d!569010))

(declare-fun b!1864425 () Bool)

(declare-fun e!1190225 () List!20751)

(assert (=> b!1864425 (= e!1190225 (list!8444 (xs!9740 (left!16649 (left!16649 t!4595)))))))

(declare-fun b!1864426 () Bool)

(assert (=> b!1864426 (= e!1190225 (++!5596 (list!8442 (left!16649 (left!16649 (left!16649 t!4595)))) (list!8442 (right!16979 (left!16649 (left!16649 t!4595))))))))

(declare-fun b!1864423 () Bool)

(declare-fun e!1190224 () List!20751)

(assert (=> b!1864423 (= e!1190224 Nil!20669)))

(declare-fun b!1864424 () Bool)

(assert (=> b!1864424 (= e!1190224 e!1190225)))

(declare-fun c!303683 () Bool)

(assert (=> b!1864424 (= c!303683 ((_ is Leaf!10064) (left!16649 (left!16649 t!4595))))))

(declare-fun d!569012 () Bool)

(declare-fun c!303682 () Bool)

(assert (=> d!569012 (= c!303682 ((_ is Empty!6864) (left!16649 (left!16649 t!4595))))))

(assert (=> d!569012 (= (list!8442 (left!16649 (left!16649 t!4595))) e!1190224)))

(assert (= (and d!569012 c!303682) b!1864423))

(assert (= (and d!569012 (not c!303682)) b!1864424))

(assert (= (and b!1864424 c!303683) b!1864425))

(assert (= (and b!1864424 (not c!303683)) b!1864426))

(declare-fun m!2288547 () Bool)

(assert (=> b!1864425 m!2288547))

(declare-fun m!2288549 () Bool)

(assert (=> b!1864426 m!2288549))

(declare-fun m!2288551 () Bool)

(assert (=> b!1864426 m!2288551))

(assert (=> b!1864426 m!2288549))

(assert (=> b!1864426 m!2288551))

(declare-fun m!2288553 () Bool)

(assert (=> b!1864426 m!2288553))

(assert (=> b!1864288 d!569012))

(declare-fun b!1864445 () Bool)

(declare-fun e!1190246 () Bool)

(declare-fun e!1190249 () Bool)

(assert (=> b!1864445 (= e!1190246 e!1190249)))

(declare-fun res!834847 () Bool)

(assert (=> b!1864445 (=> (not res!834847) (not e!1190249))))

(declare-fun appendAssoc!125 (List!20751 List!20751 List!20751) Bool)

(assert (=> b!1864445 (= res!834847 (appendAssoc!125 (list!8442 (tail!2824 (left!16649 t!4595))) (list!8442 (left!16649 (right!16979 t!4595))) (list!8442 (right!16979 (right!16979 t!4595)))))))

(declare-fun b!1864446 () Bool)

(declare-fun e!1190244 () Bool)

(declare-fun e!1190252 () Bool)

(assert (=> b!1864446 (= e!1190244 e!1190252)))

(declare-fun res!834851 () Bool)

(assert (=> b!1864446 (=> res!834851 e!1190252)))

(assert (=> b!1864446 (= res!834851 (not ((_ is Node!6864) (right!16979 (tail!2824 (left!16649 t!4595))))))))

(declare-fun b!1864447 () Bool)

(declare-fun e!1190250 () Bool)

(assert (=> b!1864447 (= e!1190250 e!1190246)))

(declare-fun res!834848 () Bool)

(assert (=> b!1864447 (=> res!834848 e!1190246)))

(assert (=> b!1864447 (= res!834848 (not ((_ is Node!6864) (right!16979 t!4595))))))

(declare-fun b!1864448 () Bool)

(declare-fun e!1190247 () Bool)

(assert (=> b!1864448 (= e!1190247 e!1190244)))

(declare-fun res!834854 () Bool)

(assert (=> b!1864448 (=> (not res!834854) (not e!1190244))))

(assert (=> b!1864448 (= res!834854 (appendAssoc!125 (list!8442 (left!16649 (tail!2824 (left!16649 t!4595)))) (list!8442 (right!16979 (tail!2824 (left!16649 t!4595)))) (list!8442 (right!16979 t!4595))))))

(declare-fun b!1864449 () Bool)

(declare-fun e!1190248 () Bool)

(assert (=> b!1864449 (= e!1190252 e!1190248)))

(declare-fun res!834849 () Bool)

(assert (=> b!1864449 (=> (not res!834849) (not e!1190248))))

(assert (=> b!1864449 (= res!834849 (appendAssoc!125 (list!8442 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595))))) (list!8442 (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (list!8442 (right!16979 t!4595))))))

(declare-fun d!569014 () Bool)

(assert (=> d!569014 e!1190250))

(declare-fun res!834853 () Bool)

(assert (=> d!569014 (=> (not res!834853) (not e!1190250))))

(assert (=> d!569014 (= res!834853 e!1190247)))

(declare-fun res!834855 () Bool)

(assert (=> d!569014 (=> res!834855 e!1190247)))

(assert (=> d!569014 (= res!834855 (not ((_ is Node!6864) (tail!2824 (left!16649 t!4595)))))))

(assert (=> d!569014 (= (appendAssocInst!510 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)) true)))

(declare-fun b!1864450 () Bool)

(assert (=> b!1864450 (= e!1190248 (appendAssoc!125 (list!8442 (left!16649 (tail!2824 (left!16649 t!4595)))) (list!8442 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595))))) (++!5596 (list!8442 (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (list!8442 (right!16979 t!4595)))))))

(declare-fun b!1864451 () Bool)

(declare-fun e!1190251 () Bool)

(assert (=> b!1864451 (= e!1190249 e!1190251)))

(declare-fun res!834850 () Bool)

(assert (=> b!1864451 (=> res!834850 e!1190251)))

(assert (=> b!1864451 (= res!834850 (not ((_ is Node!6864) (left!16649 (right!16979 t!4595)))))))

(declare-fun b!1864452 () Bool)

(declare-fun e!1190245 () Bool)

(assert (=> b!1864452 (= e!1190245 (appendAssoc!125 (++!5596 (list!8442 (tail!2824 (left!16649 t!4595))) (list!8442 (left!16649 (left!16649 (right!16979 t!4595))))) (list!8442 (right!16979 (left!16649 (right!16979 t!4595)))) (list!8442 (right!16979 (right!16979 t!4595)))))))

(declare-fun b!1864453 () Bool)

(assert (=> b!1864453 (= e!1190251 e!1190245)))

(declare-fun res!834852 () Bool)

(assert (=> b!1864453 (=> (not res!834852) (not e!1190245))))

(assert (=> b!1864453 (= res!834852 (appendAssoc!125 (list!8442 (tail!2824 (left!16649 t!4595))) (list!8442 (left!16649 (left!16649 (right!16979 t!4595)))) (list!8442 (right!16979 (left!16649 (right!16979 t!4595))))))))

(assert (= (and d!569014 (not res!834855)) b!1864448))

(assert (= (and b!1864448 res!834854) b!1864446))

(assert (= (and b!1864446 (not res!834851)) b!1864449))

(assert (= (and b!1864449 res!834849) b!1864450))

(assert (= (and d!569014 res!834853) b!1864447))

(assert (= (and b!1864447 (not res!834848)) b!1864445))

(assert (= (and b!1864445 res!834847) b!1864451))

(assert (= (and b!1864451 (not res!834850)) b!1864453))

(assert (= (and b!1864453 res!834852) b!1864452))

(declare-fun m!2288555 () Bool)

(assert (=> b!1864448 m!2288555))

(declare-fun m!2288557 () Bool)

(assert (=> b!1864448 m!2288557))

(assert (=> b!1864448 m!2288137))

(assert (=> b!1864448 m!2288555))

(assert (=> b!1864448 m!2288557))

(assert (=> b!1864448 m!2288137))

(declare-fun m!2288559 () Bool)

(assert (=> b!1864448 m!2288559))

(assert (=> b!1864450 m!2288555))

(declare-fun m!2288561 () Bool)

(assert (=> b!1864450 m!2288561))

(declare-fun m!2288563 () Bool)

(assert (=> b!1864450 m!2288563))

(declare-fun m!2288565 () Bool)

(assert (=> b!1864450 m!2288565))

(assert (=> b!1864450 m!2288137))

(assert (=> b!1864450 m!2288555))

(declare-fun m!2288567 () Bool)

(assert (=> b!1864450 m!2288567))

(assert (=> b!1864450 m!2288567))

(assert (=> b!1864450 m!2288137))

(assert (=> b!1864450 m!2288563))

(assert (=> b!1864450 m!2288561))

(assert (=> b!1864453 m!2288131))

(assert (=> b!1864453 m!2288195))

(declare-fun m!2288569 () Bool)

(assert (=> b!1864453 m!2288569))

(declare-fun m!2288571 () Bool)

(assert (=> b!1864453 m!2288571))

(assert (=> b!1864453 m!2288195))

(assert (=> b!1864453 m!2288569))

(assert (=> b!1864453 m!2288571))

(declare-fun m!2288573 () Bool)

(assert (=> b!1864453 m!2288573))

(assert (=> b!1864452 m!2288569))

(assert (=> b!1864452 m!2288131))

(assert (=> b!1864452 m!2288195))

(declare-fun m!2288575 () Bool)

(assert (=> b!1864452 m!2288575))

(assert (=> b!1864452 m!2288571))

(assert (=> b!1864452 m!2288149))

(declare-fun m!2288577 () Bool)

(assert (=> b!1864452 m!2288577))

(assert (=> b!1864452 m!2288195))

(assert (=> b!1864452 m!2288569))

(assert (=> b!1864452 m!2288575))

(assert (=> b!1864452 m!2288571))

(assert (=> b!1864452 m!2288149))

(assert (=> b!1864449 m!2288561))

(assert (=> b!1864449 m!2288567))

(assert (=> b!1864449 m!2288137))

(assert (=> b!1864449 m!2288561))

(assert (=> b!1864449 m!2288567))

(assert (=> b!1864449 m!2288137))

(declare-fun m!2288579 () Bool)

(assert (=> b!1864449 m!2288579))

(assert (=> b!1864445 m!2288131))

(assert (=> b!1864445 m!2288195))

(assert (=> b!1864445 m!2288147))

(assert (=> b!1864445 m!2288149))

(assert (=> b!1864445 m!2288195))

(assert (=> b!1864445 m!2288147))

(assert (=> b!1864445 m!2288149))

(declare-fun m!2288581 () Bool)

(assert (=> b!1864445 m!2288581))

(assert (=> d!568936 d!569014))

(declare-fun b!1864455 () Bool)

(declare-fun res!834861 () Bool)

(declare-fun e!1190254 () Bool)

(assert (=> b!1864455 (=> (not res!834861) (not e!1190254))))

(assert (=> b!1864455 (= res!834861 (not (isEmpty!12881 (left!16649 (tail!2824 (left!16649 t!4595))))))))

(declare-fun b!1864456 () Bool)

(declare-fun res!834856 () Bool)

(assert (=> b!1864456 (=> (not res!834856) (not e!1190254))))

(assert (=> b!1864456 (= res!834856 (<= (- (height!1053 (left!16649 (tail!2824 (left!16649 t!4595)))) (height!1053 (right!16979 (tail!2824 (left!16649 t!4595))))) 1))))

(declare-fun b!1864457 () Bool)

(assert (=> b!1864457 (= e!1190254 (not (isEmpty!12881 (right!16979 (tail!2824 (left!16649 t!4595))))))))

(declare-fun b!1864454 () Bool)

(declare-fun e!1190253 () Bool)

(assert (=> b!1864454 (= e!1190253 e!1190254)))

(declare-fun res!834858 () Bool)

(assert (=> b!1864454 (=> (not res!834858) (not e!1190254))))

(assert (=> b!1864454 (= res!834858 (<= (- 1) (- (height!1053 (left!16649 (tail!2824 (left!16649 t!4595)))) (height!1053 (right!16979 (tail!2824 (left!16649 t!4595)))))))))

(declare-fun d!569016 () Bool)

(declare-fun res!834857 () Bool)

(assert (=> d!569016 (=> res!834857 e!1190253)))

(assert (=> d!569016 (= res!834857 (not ((_ is Node!6864) (tail!2824 (left!16649 t!4595)))))))

(assert (=> d!569016 (= (isBalanced!2165 (tail!2824 (left!16649 t!4595))) e!1190253)))

(declare-fun b!1864458 () Bool)

(declare-fun res!834860 () Bool)

(assert (=> b!1864458 (=> (not res!834860) (not e!1190254))))

(assert (=> b!1864458 (= res!834860 (isBalanced!2165 (left!16649 (tail!2824 (left!16649 t!4595)))))))

(declare-fun b!1864459 () Bool)

(declare-fun res!834859 () Bool)

(assert (=> b!1864459 (=> (not res!834859) (not e!1190254))))

(assert (=> b!1864459 (= res!834859 (isBalanced!2165 (right!16979 (tail!2824 (left!16649 t!4595)))))))

(assert (= (and d!569016 (not res!834857)) b!1864454))

(assert (= (and b!1864454 res!834858) b!1864456))

(assert (= (and b!1864456 res!834856) b!1864458))

(assert (= (and b!1864458 res!834860) b!1864459))

(assert (= (and b!1864459 res!834859) b!1864455))

(assert (= (and b!1864455 res!834861) b!1864457))

(declare-fun m!2288583 () Bool)

(assert (=> b!1864456 m!2288583))

(declare-fun m!2288585 () Bool)

(assert (=> b!1864456 m!2288585))

(declare-fun m!2288587 () Bool)

(assert (=> b!1864457 m!2288587))

(declare-fun m!2288589 () Bool)

(assert (=> b!1864458 m!2288589))

(declare-fun m!2288591 () Bool)

(assert (=> b!1864455 m!2288591))

(assert (=> b!1864454 m!2288583))

(assert (=> b!1864454 m!2288585))

(declare-fun m!2288593 () Bool)

(assert (=> b!1864459 m!2288593))

(assert (=> d!568936 d!569016))

(declare-fun b!1864461 () Bool)

(declare-fun res!834867 () Bool)

(declare-fun e!1190256 () Bool)

(assert (=> b!1864461 (=> (not res!834867) (not e!1190256))))

(assert (=> b!1864461 (= res!834867 (not (isEmpty!12881 (left!16649 (right!16979 t!4595)))))))

(declare-fun b!1864462 () Bool)

(declare-fun res!834862 () Bool)

(assert (=> b!1864462 (=> (not res!834862) (not e!1190256))))

(assert (=> b!1864462 (= res!834862 (<= (- (height!1053 (left!16649 (right!16979 t!4595))) (height!1053 (right!16979 (right!16979 t!4595)))) 1))))

(declare-fun b!1864463 () Bool)

(assert (=> b!1864463 (= e!1190256 (not (isEmpty!12881 (right!16979 (right!16979 t!4595)))))))

(declare-fun b!1864460 () Bool)

(declare-fun e!1190255 () Bool)

(assert (=> b!1864460 (= e!1190255 e!1190256)))

(declare-fun res!834864 () Bool)

(assert (=> b!1864460 (=> (not res!834864) (not e!1190256))))

(assert (=> b!1864460 (= res!834864 (<= (- 1) (- (height!1053 (left!16649 (right!16979 t!4595))) (height!1053 (right!16979 (right!16979 t!4595))))))))

(declare-fun d!569018 () Bool)

(declare-fun res!834863 () Bool)

(assert (=> d!569018 (=> res!834863 e!1190255)))

(assert (=> d!569018 (= res!834863 (not ((_ is Node!6864) (right!16979 t!4595))))))

(assert (=> d!569018 (= (isBalanced!2165 (right!16979 t!4595)) e!1190255)))

(declare-fun b!1864464 () Bool)

(declare-fun res!834866 () Bool)

(assert (=> b!1864464 (=> (not res!834866) (not e!1190256))))

(assert (=> b!1864464 (= res!834866 (isBalanced!2165 (left!16649 (right!16979 t!4595))))))

(declare-fun b!1864465 () Bool)

(declare-fun res!834865 () Bool)

(assert (=> b!1864465 (=> (not res!834865) (not e!1190256))))

(assert (=> b!1864465 (= res!834865 (isBalanced!2165 (right!16979 (right!16979 t!4595))))))

(assert (= (and d!569018 (not res!834863)) b!1864460))

(assert (= (and b!1864460 res!834864) b!1864462))

(assert (= (and b!1864462 res!834862) b!1864464))

(assert (= (and b!1864464 res!834866) b!1864465))

(assert (= (and b!1864465 res!834865) b!1864461))

(assert (= (and b!1864461 res!834867) b!1864463))

(declare-fun m!2288595 () Bool)

(assert (=> b!1864462 m!2288595))

(declare-fun m!2288597 () Bool)

(assert (=> b!1864462 m!2288597))

(declare-fun m!2288599 () Bool)

(assert (=> b!1864463 m!2288599))

(declare-fun m!2288601 () Bool)

(assert (=> b!1864464 m!2288601))

(declare-fun m!2288603 () Bool)

(assert (=> b!1864461 m!2288603))

(assert (=> b!1864460 m!2288595))

(assert (=> b!1864460 m!2288597))

(declare-fun m!2288605 () Bool)

(assert (=> b!1864465 m!2288605))

(assert (=> b!1864149 d!569018))

(declare-fun d!569020 () Bool)

(assert (=> d!569020 (= (height!1053 (ite c!303617 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 t!4595))) (ite ((_ is Empty!6864) (ite c!303617 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 t!4595))) 0 (ite ((_ is Leaf!10064) (ite c!303617 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 t!4595))) 1 (cheight!7075 (ite c!303617 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 t!4595))))))))

(assert (=> bm!115780 d!569020))

(declare-fun d!569022 () Bool)

(assert (=> d!569022 (= (height!1053 (left!16649 t!4595)) (ite ((_ is Empty!6864) (left!16649 t!4595)) 0 (ite ((_ is Leaf!10064) (left!16649 t!4595)) 1 (cheight!7075 (left!16649 t!4595)))))))

(assert (=> b!1864362 d!569022))

(declare-fun d!569024 () Bool)

(assert (=> d!569024 (= (height!1053 (right!16979 t!4595)) (ite ((_ is Empty!6864) (right!16979 t!4595)) 0 (ite ((_ is Leaf!10064) (right!16979 t!4595)) 1 (cheight!7075 (right!16979 t!4595)))))))

(assert (=> b!1864362 d!569024))

(declare-fun d!569026 () Bool)

(assert (=> d!569026 (= (isEmpty!12883 lt!718266) ((_ is Nil!20669) lt!718266))))

(assert (=> d!568978 d!569026))

(declare-fun d!569028 () Bool)

(assert (=> d!569028 (= (tail!2825 (++!5596 lt!718266 lt!718267)) (++!5596 (tail!2825 lt!718266) lt!718267))))

(assert (=> d!569028 true))

(declare-fun _$73!124 () Unit!35291)

(assert (=> d!569028 (= (choose!11731 lt!718266 lt!718267) _$73!124)))

(declare-fun bs!411633 () Bool)

(assert (= bs!411633 d!569028))

(assert (=> bs!411633 m!2288127))

(assert (=> bs!411633 m!2288127))

(assert (=> bs!411633 m!2288129))

(assert (=> bs!411633 m!2288123))

(assert (=> bs!411633 m!2288123))

(assert (=> bs!411633 m!2288125))

(assert (=> d!568978 d!569028))

(assert (=> d!568978 d!568942))

(assert (=> d!568978 d!568972))

(assert (=> d!568978 d!568980))

(assert (=> d!568978 d!568982))

(declare-fun d!569030 () Bool)

(declare-fun res!834874 () Bool)

(declare-fun e!1190259 () Bool)

(assert (=> d!569030 (=> (not res!834874) (not e!1190259))))

(assert (=> d!569030 (= res!834874 (= (csize!13958 (left!16649 t!4595)) (+ (size!16372 (left!16649 (left!16649 t!4595))) (size!16372 (right!16979 (left!16649 t!4595))))))))

(assert (=> d!569030 (= (inv!27316 (left!16649 t!4595)) e!1190259)))

(declare-fun b!1864472 () Bool)

(declare-fun res!834875 () Bool)

(assert (=> b!1864472 (=> (not res!834875) (not e!1190259))))

(assert (=> b!1864472 (= res!834875 (and (not (= (left!16649 (left!16649 t!4595)) Empty!6864)) (not (= (right!16979 (left!16649 t!4595)) Empty!6864))))))

(declare-fun b!1864473 () Bool)

(declare-fun res!834876 () Bool)

(assert (=> b!1864473 (=> (not res!834876) (not e!1190259))))

(assert (=> b!1864473 (= res!834876 (= (cheight!7075 (left!16649 t!4595)) (+ (max!0 (height!1053 (left!16649 (left!16649 t!4595))) (height!1053 (right!16979 (left!16649 t!4595)))) 1)))))

(declare-fun b!1864474 () Bool)

(assert (=> b!1864474 (= e!1190259 (<= 0 (cheight!7075 (left!16649 t!4595))))))

(assert (= (and d!569030 res!834874) b!1864472))

(assert (= (and b!1864472 res!834875) b!1864473))

(assert (= (and b!1864473 res!834876) b!1864474))

(declare-fun m!2288607 () Bool)

(assert (=> d!569030 m!2288607))

(declare-fun m!2288609 () Bool)

(assert (=> d!569030 m!2288609))

(declare-fun m!2288611 () Bool)

(assert (=> b!1864473 m!2288611))

(assert (=> b!1864473 m!2288515))

(assert (=> b!1864473 m!2288611))

(assert (=> b!1864473 m!2288515))

(declare-fun m!2288613 () Bool)

(assert (=> b!1864473 m!2288613))

(assert (=> b!1864352 d!569030))

(declare-fun d!569034 () Bool)

(declare-fun res!834881 () Bool)

(declare-fun e!1190262 () Bool)

(assert (=> d!569034 (=> (not res!834881) (not e!1190262))))

(assert (=> d!569034 (= res!834881 (<= (size!16371 (list!8444 (xs!9740 (right!16979 t!4595)))) 512))))

(assert (=> d!569034 (= (inv!27317 (right!16979 t!4595)) e!1190262)))

(declare-fun b!1864479 () Bool)

(declare-fun res!834882 () Bool)

(assert (=> b!1864479 (=> (not res!834882) (not e!1190262))))

(assert (=> b!1864479 (= res!834882 (= (csize!13959 (right!16979 t!4595)) (size!16371 (list!8444 (xs!9740 (right!16979 t!4595))))))))

(declare-fun b!1864480 () Bool)

(assert (=> b!1864480 (= e!1190262 (and (> (csize!13959 (right!16979 t!4595)) 0) (<= (csize!13959 (right!16979 t!4595)) 512)))))

(assert (= (and d!569034 res!834881) b!1864479))

(assert (= (and b!1864479 res!834882) b!1864480))

(assert (=> d!569034 m!2288145))

(assert (=> d!569034 m!2288145))

(declare-fun m!2288615 () Bool)

(assert (=> d!569034 m!2288615))

(assert (=> b!1864479 m!2288145))

(assert (=> b!1864479 m!2288145))

(assert (=> b!1864479 m!2288615))

(assert (=> b!1864357 d!569034))

(declare-fun d!569036 () Bool)

(declare-fun lt!718369 () Bool)

(assert (=> d!569036 (= lt!718369 (isEmpty!12883 (list!8442 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(assert (=> d!569036 (= lt!718369 (= (size!16372 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) 0))))

(assert (=> d!569036 (= (isEmpty!12881 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) lt!718369)))

(declare-fun bs!411634 () Bool)

(assert (= bs!411634 d!569036))

(declare-fun m!2288617 () Bool)

(assert (=> bs!411634 m!2288617))

(assert (=> bs!411634 m!2288617))

(declare-fun m!2288619 () Bool)

(assert (=> bs!411634 m!2288619))

(declare-fun m!2288621 () Bool)

(assert (=> bs!411634 m!2288621))

(assert (=> b!1864205 d!569036))

(declare-fun d!569038 () Bool)

(assert (=> d!569038 (= (tail!2825 (ite c!303649 lt!718345 lt!718348)) (t!172842 (ite c!303649 lt!718345 lt!718348)))))

(assert (=> bm!115819 d!569038))

(declare-fun d!569040 () Bool)

(declare-fun res!834889 () Bool)

(declare-fun e!1190265 () Bool)

(assert (=> d!569040 (=> (not res!834889) (not e!1190265))))

(assert (=> d!569040 (= res!834889 (= (csize!13958 (right!16979 t!4595)) (+ (size!16372 (left!16649 (right!16979 t!4595))) (size!16372 (right!16979 (right!16979 t!4595))))))))

(assert (=> d!569040 (= (inv!27316 (right!16979 t!4595)) e!1190265)))

(declare-fun b!1864487 () Bool)

(declare-fun res!834890 () Bool)

(assert (=> b!1864487 (=> (not res!834890) (not e!1190265))))

(assert (=> b!1864487 (= res!834890 (and (not (= (left!16649 (right!16979 t!4595)) Empty!6864)) (not (= (right!16979 (right!16979 t!4595)) Empty!6864))))))

(declare-fun b!1864488 () Bool)

(declare-fun res!834891 () Bool)

(assert (=> b!1864488 (=> (not res!834891) (not e!1190265))))

(assert (=> b!1864488 (= res!834891 (= (cheight!7075 (right!16979 t!4595)) (+ (max!0 (height!1053 (left!16649 (right!16979 t!4595))) (height!1053 (right!16979 (right!16979 t!4595)))) 1)))))

(declare-fun b!1864489 () Bool)

(assert (=> b!1864489 (= e!1190265 (<= 0 (cheight!7075 (right!16979 t!4595))))))

(assert (= (and d!569040 res!834889) b!1864487))

(assert (= (and b!1864487 res!834890) b!1864488))

(assert (= (and b!1864488 res!834891) b!1864489))

(declare-fun m!2288623 () Bool)

(assert (=> d!569040 m!2288623))

(declare-fun m!2288625 () Bool)

(assert (=> d!569040 m!2288625))

(assert (=> b!1864488 m!2288595))

(assert (=> b!1864488 m!2288597))

(assert (=> b!1864488 m!2288595))

(assert (=> b!1864488 m!2288597))

(declare-fun m!2288627 () Bool)

(assert (=> b!1864488 m!2288627))

(assert (=> b!1864355 d!569040))

(declare-fun d!569042 () Bool)

(declare-fun c!303684 () Bool)

(assert (=> d!569042 (= c!303684 ((_ is Node!6864) (left!16649 (left!16649 t!4595))))))

(declare-fun e!1190266 () Bool)

(assert (=> d!569042 (= (inv!27312 (left!16649 (left!16649 t!4595))) e!1190266)))

(declare-fun b!1864490 () Bool)

(assert (=> b!1864490 (= e!1190266 (inv!27316 (left!16649 (left!16649 t!4595))))))

(declare-fun b!1864491 () Bool)

(declare-fun e!1190267 () Bool)

(assert (=> b!1864491 (= e!1190266 e!1190267)))

(declare-fun res!834892 () Bool)

(assert (=> b!1864491 (= res!834892 (not ((_ is Leaf!10064) (left!16649 (left!16649 t!4595)))))))

(assert (=> b!1864491 (=> res!834892 e!1190267)))

(declare-fun b!1864492 () Bool)

(assert (=> b!1864492 (= e!1190267 (inv!27317 (left!16649 (left!16649 t!4595))))))

(assert (= (and d!569042 c!303684) b!1864490))

(assert (= (and d!569042 (not c!303684)) b!1864491))

(assert (= (and b!1864491 (not res!834892)) b!1864492))

(declare-fun m!2288629 () Bool)

(assert (=> b!1864490 m!2288629))

(declare-fun m!2288631 () Bool)

(assert (=> b!1864492 m!2288631))

(assert (=> b!1864379 d!569042))

(declare-fun d!569044 () Bool)

(declare-fun c!303685 () Bool)

(assert (=> d!569044 (= c!303685 ((_ is Node!6864) (right!16979 (left!16649 t!4595))))))

(declare-fun e!1190268 () Bool)

(assert (=> d!569044 (= (inv!27312 (right!16979 (left!16649 t!4595))) e!1190268)))

(declare-fun b!1864493 () Bool)

(assert (=> b!1864493 (= e!1190268 (inv!27316 (right!16979 (left!16649 t!4595))))))

(declare-fun b!1864494 () Bool)

(declare-fun e!1190269 () Bool)

(assert (=> b!1864494 (= e!1190268 e!1190269)))

(declare-fun res!834893 () Bool)

(assert (=> b!1864494 (= res!834893 (not ((_ is Leaf!10064) (right!16979 (left!16649 t!4595)))))))

(assert (=> b!1864494 (=> res!834893 e!1190269)))

(declare-fun b!1864495 () Bool)

(assert (=> b!1864495 (= e!1190269 (inv!27317 (right!16979 (left!16649 t!4595))))))

(assert (= (and d!569044 c!303685) b!1864493))

(assert (= (and d!569044 (not c!303685)) b!1864494))

(assert (= (and b!1864494 (not res!834893)) b!1864495))

(declare-fun m!2288633 () Bool)

(assert (=> b!1864493 m!2288633))

(declare-fun m!2288635 () Bool)

(assert (=> b!1864495 m!2288635))

(assert (=> b!1864379 d!569044))

(declare-fun b!1864497 () Bool)

(declare-fun res!834899 () Bool)

(declare-fun e!1190271 () Bool)

(assert (=> b!1864497 (=> (not res!834899) (not e!1190271))))

(assert (=> b!1864497 (= res!834899 (not (isEmpty!12881 (left!16649 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))))

(declare-fun b!1864498 () Bool)

(declare-fun res!834894 () Bool)

(assert (=> b!1864498 (=> (not res!834894) (not e!1190271))))

(assert (=> b!1864498 (= res!834894 (<= (- (height!1053 (left!16649 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))) (height!1053 (right!16979 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))) 1))))

(declare-fun b!1864499 () Bool)

(assert (=> b!1864499 (= e!1190271 (not (isEmpty!12881 (right!16979 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))))

(declare-fun b!1864496 () Bool)

(declare-fun e!1190270 () Bool)

(assert (=> b!1864496 (= e!1190270 e!1190271)))

(declare-fun res!834896 () Bool)

(assert (=> b!1864496 (=> (not res!834896) (not e!1190271))))

(assert (=> b!1864496 (= res!834896 (<= (- 1) (- (height!1053 (left!16649 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))) (height!1053 (right!16979 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))))

(declare-fun d!569046 () Bool)

(declare-fun res!834895 () Bool)

(assert (=> d!569046 (=> res!834895 e!1190270)))

(assert (=> d!569046 (= res!834895 (not ((_ is Node!6864) (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(assert (=> d!569046 (= (isBalanced!2165 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) e!1190270)))

(declare-fun b!1864500 () Bool)

(declare-fun res!834898 () Bool)

(assert (=> b!1864500 (=> (not res!834898) (not e!1190271))))

(assert (=> b!1864500 (= res!834898 (isBalanced!2165 (left!16649 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(declare-fun b!1864501 () Bool)

(declare-fun res!834897 () Bool)

(assert (=> b!1864501 (=> (not res!834897) (not e!1190271))))

(assert (=> b!1864501 (= res!834897 (isBalanced!2165 (right!16979 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(assert (= (and d!569046 (not res!834895)) b!1864496))

(assert (= (and b!1864496 res!834896) b!1864498))

(assert (= (and b!1864498 res!834894) b!1864500))

(assert (= (and b!1864500 res!834898) b!1864501))

(assert (= (and b!1864501 res!834897) b!1864497))

(assert (= (and b!1864497 res!834899) b!1864499))

(declare-fun m!2288637 () Bool)

(assert (=> b!1864498 m!2288637))

(declare-fun m!2288639 () Bool)

(assert (=> b!1864498 m!2288639))

(declare-fun m!2288641 () Bool)

(assert (=> b!1864499 m!2288641))

(declare-fun m!2288643 () Bool)

(assert (=> b!1864500 m!2288643))

(declare-fun m!2288645 () Bool)

(assert (=> b!1864497 m!2288645))

(assert (=> b!1864496 m!2288637))

(assert (=> b!1864496 m!2288639))

(declare-fun m!2288647 () Bool)

(assert (=> b!1864501 m!2288647))

(assert (=> b!1864207 d!569046))

(declare-fun b!1864504 () Bool)

(declare-fun e!1190273 () List!20751)

(assert (=> b!1864504 (= e!1190273 (list!8444 (xs!9740 lt!718343)))))

(declare-fun b!1864505 () Bool)

(assert (=> b!1864505 (= e!1190273 (++!5596 (list!8442 (left!16649 lt!718343)) (list!8442 (right!16979 lt!718343))))))

(declare-fun b!1864502 () Bool)

(declare-fun e!1190272 () List!20751)

(assert (=> b!1864502 (= e!1190272 Nil!20669)))

(declare-fun b!1864503 () Bool)

(assert (=> b!1864503 (= e!1190272 e!1190273)))

(declare-fun c!303687 () Bool)

(assert (=> b!1864503 (= c!303687 ((_ is Leaf!10064) lt!718343))))

(declare-fun d!569048 () Bool)

(declare-fun c!303686 () Bool)

(assert (=> d!569048 (= c!303686 ((_ is Empty!6864) lt!718343))))

(assert (=> d!569048 (= (list!8442 lt!718343) e!1190272)))

(assert (= (and d!569048 c!303686) b!1864502))

(assert (= (and d!569048 (not c!303686)) b!1864503))

(assert (= (and b!1864503 c!303687) b!1864504))

(assert (= (and b!1864503 (not c!303687)) b!1864505))

(declare-fun m!2288649 () Bool)

(assert (=> b!1864504 m!2288649))

(declare-fun m!2288651 () Bool)

(assert (=> b!1864505 m!2288651))

(declare-fun m!2288653 () Bool)

(assert (=> b!1864505 m!2288653))

(assert (=> b!1864505 m!2288651))

(assert (=> b!1864505 m!2288653))

(declare-fun m!2288655 () Bool)

(assert (=> b!1864505 m!2288655))

(assert (=> b!1864284 d!569048))

(declare-fun d!569050 () Bool)

(assert (=> d!569050 (= (tail!2825 (list!8442 (left!16649 t!4595))) (t!172842 (list!8442 (left!16649 t!4595))))))

(assert (=> b!1864284 d!569050))

(assert (=> b!1864284 d!568970))

(declare-fun d!569052 () Bool)

(declare-fun c!303690 () Bool)

(assert (=> d!569052 (= c!303690 ((_ is Nil!20669) lt!718357))))

(declare-fun e!1190277 () (InoxSet T!33060))

(assert (=> d!569052 (= (content!3073 lt!718357) e!1190277)))

(declare-fun b!1864513 () Bool)

(assert (=> b!1864513 (= e!1190277 ((as const (Array T!33060 Bool)) false))))

(declare-fun b!1864514 () Bool)

(assert (=> b!1864514 (= e!1190277 ((_ map or) (store ((as const (Array T!33060 Bool)) false) (h!26070 lt!718357) true) (content!3073 (t!172842 lt!718357))))))

(assert (= (and d!569052 c!303690) b!1864513))

(assert (= (and d!569052 (not c!303690)) b!1864514))

(declare-fun m!2288661 () Bool)

(assert (=> b!1864514 m!2288661))

(declare-fun m!2288663 () Bool)

(assert (=> b!1864514 m!2288663))

(assert (=> d!568980 d!569052))

(declare-fun d!569056 () Bool)

(declare-fun c!303691 () Bool)

(assert (=> d!569056 (= c!303691 ((_ is Nil!20669) lt!718266))))

(declare-fun e!1190278 () (InoxSet T!33060))

(assert (=> d!569056 (= (content!3073 lt!718266) e!1190278)))

(declare-fun b!1864515 () Bool)

(assert (=> b!1864515 (= e!1190278 ((as const (Array T!33060 Bool)) false))))

(declare-fun b!1864516 () Bool)

(assert (=> b!1864516 (= e!1190278 ((_ map or) (store ((as const (Array T!33060 Bool)) false) (h!26070 lt!718266) true) (content!3073 (t!172842 lt!718266))))))

(assert (= (and d!569056 c!303691) b!1864515))

(assert (= (and d!569056 (not c!303691)) b!1864516))

(declare-fun m!2288665 () Bool)

(assert (=> b!1864516 m!2288665))

(declare-fun m!2288667 () Bool)

(assert (=> b!1864516 m!2288667))

(assert (=> d!568980 d!569056))

(declare-fun d!569058 () Bool)

(declare-fun c!303692 () Bool)

(assert (=> d!569058 (= c!303692 ((_ is Nil!20669) lt!718267))))

(declare-fun e!1190279 () (InoxSet T!33060))

(assert (=> d!569058 (= (content!3073 lt!718267) e!1190279)))

(declare-fun b!1864517 () Bool)

(assert (=> b!1864517 (= e!1190279 ((as const (Array T!33060 Bool)) false))))

(declare-fun b!1864518 () Bool)

(assert (=> b!1864518 (= e!1190279 ((_ map or) (store ((as const (Array T!33060 Bool)) false) (h!26070 lt!718267) true) (content!3073 (t!172842 lt!718267))))))

(assert (= (and d!569058 c!303692) b!1864517))

(assert (= (and d!569058 (not c!303692)) b!1864518))

(declare-fun m!2288669 () Bool)

(assert (=> b!1864518 m!2288669))

(declare-fun m!2288671 () Bool)

(assert (=> b!1864518 m!2288671))

(assert (=> d!568980 d!569058))

(declare-fun d!569060 () Bool)

(assert (=> d!569060 (= (height!1053 lt!718291) (ite ((_ is Empty!6864) lt!718291) 0 (ite ((_ is Leaf!10064) lt!718291) 1 (cheight!7075 lt!718291))))))

(assert (=> b!1864156 d!569060))

(declare-fun d!569062 () Bool)

(assert (=> d!569062 (= (max!0 (height!1053 (tail!2824 (left!16649 t!4595))) (height!1053 (right!16979 t!4595))) (ite (< (height!1053 (tail!2824 (left!16649 t!4595))) (height!1053 (right!16979 t!4595))) (height!1053 (right!16979 t!4595)) (height!1053 (tail!2824 (left!16649 t!4595)))))))

(assert (=> b!1864156 d!569062))

(declare-fun d!569064 () Bool)

(assert (=> d!569064 (= (height!1053 (tail!2824 (left!16649 t!4595))) (ite ((_ is Empty!6864) (tail!2824 (left!16649 t!4595))) 0 (ite ((_ is Leaf!10064) (tail!2824 (left!16649 t!4595))) 1 (cheight!7075 (tail!2824 (left!16649 t!4595))))))))

(assert (=> b!1864156 d!569064))

(assert (=> b!1864156 d!569024))

(assert (=> b!1864143 d!569060))

(assert (=> b!1864143 d!569062))

(assert (=> b!1864143 d!569064))

(assert (=> b!1864143 d!569024))

(declare-fun d!569066 () Bool)

(declare-fun lt!718372 () Bool)

(assert (=> d!569066 (= lt!718372 (isEmpty!12883 (list!8442 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(assert (=> d!569066 (= lt!718372 (= (size!16372 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) 0))))

(assert (=> d!569066 (= (isEmpty!12881 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) lt!718372)))

(declare-fun bs!411635 () Bool)

(assert (= bs!411635 d!569066))

(declare-fun m!2288673 () Bool)

(assert (=> bs!411635 m!2288673))

(assert (=> bs!411635 m!2288673))

(declare-fun m!2288675 () Bool)

(assert (=> bs!411635 m!2288675))

(declare-fun m!2288677 () Bool)

(assert (=> bs!411635 m!2288677))

(assert (=> b!1864203 d!569066))

(declare-fun d!569068 () Bool)

(declare-fun take!160 (List!20751 Int) List!20751)

(declare-fun drop!987 (List!20751 Int) List!20751)

(assert (=> d!569068 (= (slice!572 lt!718345 1 (size!16371 lt!718345)) (take!160 (drop!987 lt!718345 1) (- (size!16371 lt!718345) 1)))))

(declare-fun bs!411636 () Bool)

(assert (= bs!411636 d!569068))

(declare-fun m!2288679 () Bool)

(assert (=> bs!411636 m!2288679))

(assert (=> bs!411636 m!2288679))

(declare-fun m!2288681 () Bool)

(assert (=> bs!411636 m!2288681))

(assert (=> b!1864281 d!569068))

(declare-fun d!569070 () Bool)

(assert (=> d!569070 (= (tail!2825 lt!718345) (slice!572 lt!718345 1 (size!16371 lt!718345)))))

(declare-fun lt!718386 () Unit!35291)

(declare-fun choose!11732 (List!20751) Unit!35291)

(assert (=> d!569070 (= lt!718386 (choose!11732 lt!718345))))

(assert (=> d!569070 (> (size!16371 lt!718345) 0)))

(assert (=> d!569070 (= (sliceTailLemma!32 lt!718345) lt!718386)))

(declare-fun bs!411637 () Bool)

(assert (= bs!411637 d!569070))

(declare-fun m!2288689 () Bool)

(assert (=> bs!411637 m!2288689))

(assert (=> bs!411637 m!2288345))

(assert (=> bs!411637 m!2288345))

(assert (=> bs!411637 m!2288351))

(declare-fun m!2288691 () Bool)

(assert (=> bs!411637 m!2288691))

(assert (=> b!1864281 d!569070))

(declare-fun d!569078 () Bool)

(assert (=> d!569078 (= (list!8444 (xs!9740 (left!16649 t!4595))) (innerList!6924 (xs!9740 (left!16649 t!4595))))))

(assert (=> b!1864281 d!569078))

(declare-fun d!569080 () Bool)

(declare-fun lt!718389 () Int)

(assert (=> d!569080 (>= lt!718389 0)))

(declare-fun e!1190292 () Int)

(assert (=> d!569080 (= lt!718389 e!1190292)))

(declare-fun c!303703 () Bool)

(assert (=> d!569080 (= c!303703 ((_ is Nil!20669) lt!718345))))

(assert (=> d!569080 (= (size!16371 lt!718345) lt!718389)))

(declare-fun b!1864541 () Bool)

(assert (=> b!1864541 (= e!1190292 0)))

(declare-fun b!1864542 () Bool)

(assert (=> b!1864542 (= e!1190292 (+ 1 (size!16371 (t!172842 lt!718345))))))

(assert (= (and d!569080 c!303703) b!1864541))

(assert (= (and d!569080 (not c!303703)) b!1864542))

(declare-fun m!2288703 () Bool)

(assert (=> b!1864542 m!2288703))

(assert (=> b!1864281 d!569080))

(declare-fun d!569082 () Bool)

(declare-fun lt!718392 () IArray!13733)

(assert (=> d!569082 (= lt!718392 (IArray!13734 (slice!572 (list!8444 (xs!9740 (left!16649 t!4595))) 1 (csize!13959 (left!16649 t!4595)))))))

(declare-fun choose!11733 (IArray!13733 Int Int) IArray!13733)

(assert (=> d!569082 (= lt!718392 (choose!11733 (xs!9740 (left!16649 t!4595)) 1 (csize!13959 (left!16649 t!4595))))))

(declare-fun e!1190295 () Bool)

(assert (=> d!569082 e!1190295))

(declare-fun res!834907 () Bool)

(assert (=> d!569082 (=> (not res!834907) (not e!1190295))))

(assert (=> d!569082 (= res!834907 (and (<= 0 1) (<= 1 (csize!13959 (left!16649 t!4595)))))))

(assert (=> d!569082 (= (slice!573 (xs!9740 (left!16649 t!4595)) 1 (csize!13959 (left!16649 t!4595))) lt!718392)))

(declare-fun b!1864545 () Bool)

(declare-fun size!16373 (IArray!13733) Int)

(assert (=> b!1864545 (= e!1190295 (<= (csize!13959 (left!16649 t!4595)) (size!16373 (xs!9740 (left!16649 t!4595)))))))

(assert (= (and d!569082 res!834907) b!1864545))

(assert (=> d!569082 m!2288347))

(assert (=> d!569082 m!2288347))

(declare-fun m!2288735 () Bool)

(assert (=> d!569082 m!2288735))

(declare-fun m!2288737 () Bool)

(assert (=> d!569082 m!2288737))

(declare-fun m!2288739 () Bool)

(assert (=> b!1864545 m!2288739))

(assert (=> b!1864281 d!569082))

(declare-fun d!569088 () Bool)

(assert (=> d!569088 (= (isEmpty!12883 (list!8442 t!4595)) ((_ is Nil!20669) (list!8442 t!4595)))))

(assert (=> d!568986 d!569088))

(assert (=> d!568986 d!568992))

(declare-fun d!569090 () Bool)

(declare-fun lt!718395 () Int)

(assert (=> d!569090 (= lt!718395 (size!16371 (list!8442 t!4595)))))

(assert (=> d!569090 (= lt!718395 (ite ((_ is Empty!6864) t!4595) 0 (ite ((_ is Leaf!10064) t!4595) (csize!13959 t!4595) (csize!13958 t!4595))))))

(assert (=> d!569090 (= (size!16372 t!4595) lt!718395)))

(declare-fun bs!411638 () Bool)

(assert (= bs!411638 d!569090))

(assert (=> bs!411638 m!2288111))

(assert (=> bs!411638 m!2288111))

(declare-fun m!2288741 () Bool)

(assert (=> bs!411638 m!2288741))

(assert (=> d!568986 d!569090))

(declare-fun d!569092 () Bool)

(assert (=> d!569092 (= (inv!27313 (xs!9740 (right!16979 t!4595))) (<= (size!16371 (innerList!6924 (xs!9740 (right!16979 t!4595)))) 2147483647))))

(declare-fun bs!411639 () Bool)

(assert (= bs!411639 d!569092))

(declare-fun m!2288743 () Bool)

(assert (=> bs!411639 m!2288743))

(assert (=> b!1864383 d!569092))

(declare-fun d!569094 () Bool)

(declare-fun lt!718396 () Bool)

(assert (=> d!569094 (= lt!718396 (isEmpty!12883 (list!8442 (left!16649 (left!16649 t!4595)))))))

(assert (=> d!569094 (= lt!718396 (= (size!16372 (left!16649 (left!16649 t!4595))) 0))))

(assert (=> d!569094 (= (isEmpty!12881 (left!16649 (left!16649 t!4595))) lt!718396)))

(declare-fun bs!411640 () Bool)

(assert (= bs!411640 d!569094))

(assert (=> bs!411640 m!2288369))

(assert (=> bs!411640 m!2288369))

(declare-fun m!2288745 () Bool)

(assert (=> bs!411640 m!2288745))

(assert (=> bs!411640 m!2288607))

(assert (=> b!1864279 d!569094))

(declare-fun d!569096 () Bool)

(declare-fun lt!718397 () Bool)

(assert (=> d!569096 (= lt!718397 (isEmpty!12883 (list!8442 (right!16979 t!4595))))))

(assert (=> d!569096 (= lt!718397 (= (size!16372 (right!16979 t!4595)) 0))))

(assert (=> d!569096 (= (isEmpty!12881 (right!16979 t!4595)) lt!718397)))

(declare-fun bs!411641 () Bool)

(assert (= bs!411641 d!569096))

(assert (=> bs!411641 m!2288137))

(assert (=> bs!411641 m!2288137))

(declare-fun m!2288747 () Bool)

(assert (=> bs!411641 m!2288747))

(declare-fun m!2288749 () Bool)

(assert (=> bs!411641 m!2288749))

(assert (=> b!1864365 d!569096))

(declare-fun d!569098 () Bool)

(declare-fun lt!718398 () Int)

(assert (=> d!569098 (>= lt!718398 0)))

(declare-fun e!1190298 () Int)

(assert (=> d!569098 (= lt!718398 e!1190298)))

(declare-fun c!303704 () Bool)

(assert (=> d!569098 (= c!303704 ((_ is Nil!20669) (innerList!6924 (xs!9740 t!4595))))))

(assert (=> d!569098 (= (size!16371 (innerList!6924 (xs!9740 t!4595))) lt!718398)))

(declare-fun b!1864550 () Bool)

(assert (=> b!1864550 (= e!1190298 0)))

(declare-fun b!1864551 () Bool)

(assert (=> b!1864551 (= e!1190298 (+ 1 (size!16371 (t!172842 (innerList!6924 (xs!9740 t!4595))))))))

(assert (= (and d!569098 c!303704) b!1864550))

(assert (= (and d!569098 (not c!303704)) b!1864551))

(declare-fun m!2288751 () Bool)

(assert (=> b!1864551 m!2288751))

(assert (=> d!568998 d!569098))

(declare-fun d!569100 () Bool)

(declare-fun lt!718399 () Int)

(assert (=> d!569100 (>= lt!718399 0)))

(declare-fun e!1190299 () Int)

(assert (=> d!569100 (= lt!718399 e!1190299)))

(declare-fun c!303705 () Bool)

(assert (=> d!569100 (= c!303705 ((_ is Nil!20669) lt!718357))))

(assert (=> d!569100 (= (size!16371 lt!718357) lt!718399)))

(declare-fun b!1864552 () Bool)

(assert (=> b!1864552 (= e!1190299 0)))

(declare-fun b!1864553 () Bool)

(assert (=> b!1864553 (= e!1190299 (+ 1 (size!16371 (t!172842 lt!718357))))))

(assert (= (and d!569100 c!303705) b!1864552))

(assert (= (and d!569100 (not c!303705)) b!1864553))

(declare-fun m!2288753 () Bool)

(assert (=> b!1864553 m!2288753))

(assert (=> b!1864344 d!569100))

(declare-fun d!569102 () Bool)

(declare-fun lt!718400 () Int)

(assert (=> d!569102 (>= lt!718400 0)))

(declare-fun e!1190300 () Int)

(assert (=> d!569102 (= lt!718400 e!1190300)))

(declare-fun c!303706 () Bool)

(assert (=> d!569102 (= c!303706 ((_ is Nil!20669) lt!718266))))

(assert (=> d!569102 (= (size!16371 lt!718266) lt!718400)))

(declare-fun b!1864554 () Bool)

(assert (=> b!1864554 (= e!1190300 0)))

(declare-fun b!1864555 () Bool)

(assert (=> b!1864555 (= e!1190300 (+ 1 (size!16371 (t!172842 lt!718266))))))

(assert (= (and d!569102 c!303706) b!1864554))

(assert (= (and d!569102 (not c!303706)) b!1864555))

(declare-fun m!2288755 () Bool)

(assert (=> b!1864555 m!2288755))

(assert (=> b!1864344 d!569102))

(declare-fun d!569104 () Bool)

(declare-fun lt!718401 () Int)

(assert (=> d!569104 (>= lt!718401 0)))

(declare-fun e!1190301 () Int)

(assert (=> d!569104 (= lt!718401 e!1190301)))

(declare-fun c!303707 () Bool)

(assert (=> d!569104 (= c!303707 ((_ is Nil!20669) lt!718267))))

(assert (=> d!569104 (= (size!16371 lt!718267) lt!718401)))

(declare-fun b!1864556 () Bool)

(assert (=> b!1864556 (= e!1190301 0)))

(declare-fun b!1864557 () Bool)

(assert (=> b!1864557 (= e!1190301 (+ 1 (size!16371 (t!172842 lt!718267))))))

(assert (= (and d!569104 c!303707) b!1864556))

(assert (= (and d!569104 (not c!303707)) b!1864557))

(declare-fun m!2288757 () Bool)

(assert (=> b!1864557 m!2288757))

(assert (=> b!1864344 d!569104))

(assert (=> b!1864298 d!569078))

(assert (=> b!1864363 d!568984))

(declare-fun b!1864560 () Bool)

(declare-fun e!1190303 () List!20751)

(assert (=> b!1864560 (= e!1190303 (list!8444 (xs!9740 lt!718291)))))

(declare-fun b!1864561 () Bool)

(assert (=> b!1864561 (= e!1190303 (++!5596 (list!8442 (left!16649 lt!718291)) (list!8442 (right!16979 lt!718291))))))

(declare-fun b!1864558 () Bool)

(declare-fun e!1190302 () List!20751)

(assert (=> b!1864558 (= e!1190302 Nil!20669)))

(declare-fun b!1864559 () Bool)

(assert (=> b!1864559 (= e!1190302 e!1190303)))

(declare-fun c!303709 () Bool)

(assert (=> b!1864559 (= c!303709 ((_ is Leaf!10064) lt!718291))))

(declare-fun d!569106 () Bool)

(declare-fun c!303708 () Bool)

(assert (=> d!569106 (= c!303708 ((_ is Empty!6864) lt!718291))))

(assert (=> d!569106 (= (list!8442 lt!718291) e!1190302)))

(assert (= (and d!569106 c!303708) b!1864558))

(assert (= (and d!569106 (not c!303708)) b!1864559))

(assert (= (and b!1864559 c!303709) b!1864560))

(assert (= (and b!1864559 (not c!303709)) b!1864561))

(declare-fun m!2288759 () Bool)

(assert (=> b!1864560 m!2288759))

(declare-fun m!2288761 () Bool)

(assert (=> b!1864561 m!2288761))

(declare-fun m!2288763 () Bool)

(assert (=> b!1864561 m!2288763))

(assert (=> b!1864561 m!2288761))

(assert (=> b!1864561 m!2288763))

(declare-fun m!2288765 () Bool)

(assert (=> b!1864561 m!2288765))

(assert (=> b!1864153 d!569106))

(declare-fun b!1864566 () Bool)

(declare-fun res!834915 () Bool)

(declare-fun e!1190305 () Bool)

(assert (=> b!1864566 (=> (not res!834915) (not e!1190305))))

(declare-fun lt!718402 () List!20751)

(assert (=> b!1864566 (= res!834915 (= (size!16371 lt!718402) (+ (size!16371 (list!8442 (tail!2824 (left!16649 t!4595)))) (size!16371 (list!8442 (right!16979 t!4595))))))))

(declare-fun d!569108 () Bool)

(assert (=> d!569108 e!1190305))

(declare-fun res!834914 () Bool)

(assert (=> d!569108 (=> (not res!834914) (not e!1190305))))

(assert (=> d!569108 (= res!834914 (= (content!3073 lt!718402) ((_ map or) (content!3073 (list!8442 (tail!2824 (left!16649 t!4595)))) (content!3073 (list!8442 (right!16979 t!4595))))))))

(declare-fun e!1190306 () List!20751)

(assert (=> d!569108 (= lt!718402 e!1190306)))

(declare-fun c!303710 () Bool)

(assert (=> d!569108 (= c!303710 ((_ is Nil!20669) (list!8442 (tail!2824 (left!16649 t!4595)))))))

(assert (=> d!569108 (= (++!5596 (list!8442 (tail!2824 (left!16649 t!4595))) (list!8442 (right!16979 t!4595))) lt!718402)))

(declare-fun b!1864564 () Bool)

(assert (=> b!1864564 (= e!1190306 (list!8442 (right!16979 t!4595)))))

(declare-fun b!1864565 () Bool)

(assert (=> b!1864565 (= e!1190306 (Cons!20669 (h!26070 (list!8442 (tail!2824 (left!16649 t!4595)))) (++!5596 (t!172842 (list!8442 (tail!2824 (left!16649 t!4595)))) (list!8442 (right!16979 t!4595)))))))

(declare-fun b!1864567 () Bool)

(assert (=> b!1864567 (= e!1190305 (or (not (= (list!8442 (right!16979 t!4595)) Nil!20669)) (= lt!718402 (list!8442 (tail!2824 (left!16649 t!4595))))))))

(assert (= (and d!569108 c!303710) b!1864564))

(assert (= (and d!569108 (not c!303710)) b!1864565))

(assert (= (and d!569108 res!834914) b!1864566))

(assert (= (and b!1864566 res!834915) b!1864567))

(declare-fun m!2288769 () Bool)

(assert (=> b!1864566 m!2288769))

(assert (=> b!1864566 m!2288195))

(declare-fun m!2288771 () Bool)

(assert (=> b!1864566 m!2288771))

(assert (=> b!1864566 m!2288137))

(declare-fun m!2288773 () Bool)

(assert (=> b!1864566 m!2288773))

(declare-fun m!2288775 () Bool)

(assert (=> d!569108 m!2288775))

(assert (=> d!569108 m!2288195))

(declare-fun m!2288777 () Bool)

(assert (=> d!569108 m!2288777))

(assert (=> d!569108 m!2288137))

(declare-fun m!2288779 () Bool)

(assert (=> d!569108 m!2288779))

(assert (=> b!1864565 m!2288137))

(declare-fun m!2288781 () Bool)

(assert (=> b!1864565 m!2288781))

(assert (=> b!1864153 d!569108))

(declare-fun b!1864570 () Bool)

(declare-fun e!1190308 () List!20751)

(assert (=> b!1864570 (= e!1190308 (list!8444 (xs!9740 (tail!2824 (left!16649 t!4595)))))))

(declare-fun b!1864571 () Bool)

(assert (=> b!1864571 (= e!1190308 (++!5596 (list!8442 (left!16649 (tail!2824 (left!16649 t!4595)))) (list!8442 (right!16979 (tail!2824 (left!16649 t!4595))))))))

(declare-fun b!1864568 () Bool)

(declare-fun e!1190307 () List!20751)

(assert (=> b!1864568 (= e!1190307 Nil!20669)))

(declare-fun b!1864569 () Bool)

(assert (=> b!1864569 (= e!1190307 e!1190308)))

(declare-fun c!303712 () Bool)

(assert (=> b!1864569 (= c!303712 ((_ is Leaf!10064) (tail!2824 (left!16649 t!4595))))))

(declare-fun d!569112 () Bool)

(declare-fun c!303711 () Bool)

(assert (=> d!569112 (= c!303711 ((_ is Empty!6864) (tail!2824 (left!16649 t!4595))))))

(assert (=> d!569112 (= (list!8442 (tail!2824 (left!16649 t!4595))) e!1190307)))

(assert (= (and d!569112 c!303711) b!1864568))

(assert (= (and d!569112 (not c!303711)) b!1864569))

(assert (= (and b!1864569 c!303712) b!1864570))

(assert (= (and b!1864569 (not c!303712)) b!1864571))

(declare-fun m!2288783 () Bool)

(assert (=> b!1864570 m!2288783))

(assert (=> b!1864571 m!2288555))

(assert (=> b!1864571 m!2288557))

(assert (=> b!1864571 m!2288555))

(assert (=> b!1864571 m!2288557))

(declare-fun m!2288785 () Bool)

(assert (=> b!1864571 m!2288785))

(assert (=> b!1864153 d!569112))

(assert (=> b!1864153 d!568928))

(declare-fun d!569114 () Bool)

(assert (=> d!569114 (= (list!8444 (xs!9740 t!4595)) (innerList!6924 (xs!9740 t!4595)))))

(assert (=> b!1864360 d!569114))

(assert (=> b!1864367 d!569018))

(declare-fun d!569116 () Bool)

(assert (=> d!569116 (= (height!1053 (ite c!303617 lt!718293 (left!16649 (right!16979 t!4595)))) (ite ((_ is Empty!6864) (ite c!303617 lt!718293 (left!16649 (right!16979 t!4595)))) 0 (ite ((_ is Leaf!10064) (ite c!303617 lt!718293 (left!16649 (right!16979 t!4595)))) 1 (cheight!7075 (ite c!303617 lt!718293 (left!16649 (right!16979 t!4595)))))))))

(assert (=> bm!115789 d!569116))

(declare-fun d!569118 () Bool)

(assert (=> d!569118 (= (list!8444 (xs!9740 (right!16979 t!4595))) (innerList!6924 (xs!9740 (right!16979 t!4595))))))

(assert (=> b!1864038 d!569118))

(declare-fun d!569120 () Bool)

(declare-fun lt!718403 () Int)

(assert (=> d!569120 (>= lt!718403 0)))

(declare-fun e!1190309 () Int)

(assert (=> d!569120 (= lt!718403 e!1190309)))

(declare-fun c!303713 () Bool)

(assert (=> d!569120 (= c!303713 ((_ is Nil!20669) lt!718353))))

(assert (=> d!569120 (= (size!16371 lt!718353) lt!718403)))

(declare-fun b!1864572 () Bool)

(assert (=> b!1864572 (= e!1190309 0)))

(declare-fun b!1864573 () Bool)

(assert (=> b!1864573 (= e!1190309 (+ 1 (size!16371 (t!172842 lt!718353))))))

(assert (= (and d!569120 c!303713) b!1864572))

(assert (= (and d!569120 (not c!303713)) b!1864573))

(declare-fun m!2288787 () Bool)

(assert (=> b!1864573 m!2288787))

(assert (=> b!1864340 d!569120))

(declare-fun d!569122 () Bool)

(declare-fun lt!718404 () Int)

(assert (=> d!569122 (>= lt!718404 0)))

(declare-fun e!1190310 () Int)

(assert (=> d!569122 (= lt!718404 e!1190310)))

(declare-fun c!303714 () Bool)

(assert (=> d!569122 (= c!303714 ((_ is Nil!20669) (tail!2825 lt!718266)))))

(assert (=> d!569122 (= (size!16371 (tail!2825 lt!718266)) lt!718404)))

(declare-fun b!1864574 () Bool)

(assert (=> b!1864574 (= e!1190310 0)))

(declare-fun b!1864575 () Bool)

(assert (=> b!1864575 (= e!1190310 (+ 1 (size!16371 (t!172842 (tail!2825 lt!718266)))))))

(assert (= (and d!569122 c!303714) b!1864574))

(assert (= (and d!569122 (not c!303714)) b!1864575))

(declare-fun m!2288789 () Bool)

(assert (=> b!1864575 m!2288789))

(assert (=> b!1864340 d!569122))

(assert (=> b!1864340 d!569104))

(declare-fun b!1864577 () Bool)

(declare-fun res!834921 () Bool)

(declare-fun e!1190312 () Bool)

(assert (=> b!1864577 (=> (not res!834921) (not e!1190312))))

(assert (=> b!1864577 (= res!834921 (not (isEmpty!12881 (left!16649 lt!718291))))))

(declare-fun b!1864578 () Bool)

(declare-fun res!834916 () Bool)

(assert (=> b!1864578 (=> (not res!834916) (not e!1190312))))

(assert (=> b!1864578 (= res!834916 (<= (- (height!1053 (left!16649 lt!718291)) (height!1053 (right!16979 lt!718291))) 1))))

(declare-fun b!1864579 () Bool)

(assert (=> b!1864579 (= e!1190312 (not (isEmpty!12881 (right!16979 lt!718291))))))

(declare-fun b!1864576 () Bool)

(declare-fun e!1190311 () Bool)

(assert (=> b!1864576 (= e!1190311 e!1190312)))

(declare-fun res!834918 () Bool)

(assert (=> b!1864576 (=> (not res!834918) (not e!1190312))))

(assert (=> b!1864576 (= res!834918 (<= (- 1) (- (height!1053 (left!16649 lt!718291)) (height!1053 (right!16979 lt!718291)))))))

(declare-fun d!569124 () Bool)

(declare-fun res!834917 () Bool)

(assert (=> d!569124 (=> res!834917 e!1190311)))

(assert (=> d!569124 (= res!834917 (not ((_ is Node!6864) lt!718291)))))

(assert (=> d!569124 (= (isBalanced!2165 lt!718291) e!1190311)))

(declare-fun b!1864580 () Bool)

(declare-fun res!834920 () Bool)

(assert (=> b!1864580 (=> (not res!834920) (not e!1190312))))

(assert (=> b!1864580 (= res!834920 (isBalanced!2165 (left!16649 lt!718291)))))

(declare-fun b!1864581 () Bool)

(declare-fun res!834919 () Bool)

(assert (=> b!1864581 (=> (not res!834919) (not e!1190312))))

(assert (=> b!1864581 (= res!834919 (isBalanced!2165 (right!16979 lt!718291)))))

(assert (= (and d!569124 (not res!834917)) b!1864576))

(assert (= (and b!1864576 res!834918) b!1864578))

(assert (= (and b!1864578 res!834916) b!1864580))

(assert (= (and b!1864580 res!834920) b!1864581))

(assert (= (and b!1864581 res!834919) b!1864577))

(assert (= (and b!1864577 res!834921) b!1864579))

(declare-fun m!2288791 () Bool)

(assert (=> b!1864578 m!2288791))

(declare-fun m!2288793 () Bool)

(assert (=> b!1864578 m!2288793))

(declare-fun m!2288795 () Bool)

(assert (=> b!1864579 m!2288795))

(declare-fun m!2288797 () Bool)

(assert (=> b!1864580 m!2288797))

(declare-fun m!2288799 () Bool)

(assert (=> b!1864577 m!2288799))

(assert (=> b!1864576 m!2288791))

(assert (=> b!1864576 m!2288793))

(declare-fun m!2288801 () Bool)

(assert (=> b!1864581 m!2288801))

(assert (=> b!1864137 d!569124))

(declare-fun d!569128 () Bool)

(declare-fun res!834922 () Bool)

(declare-fun e!1190313 () Bool)

(assert (=> d!569128 (=> (not res!834922) (not e!1190313))))

(assert (=> d!569128 (= res!834922 (<= (size!16371 (list!8444 (xs!9740 t!4595))) 512))))

(assert (=> d!569128 (= (inv!27317 t!4595) e!1190313)))

(declare-fun b!1864582 () Bool)

(declare-fun res!834923 () Bool)

(assert (=> b!1864582 (=> (not res!834923) (not e!1190313))))

(assert (=> b!1864582 (= res!834923 (= (csize!13959 t!4595) (size!16371 (list!8444 (xs!9740 t!4595)))))))

(declare-fun b!1864583 () Bool)

(assert (=> b!1864583 (= e!1190313 (and (> (csize!13959 t!4595) 0) (<= (csize!13959 t!4595) 512)))))

(assert (= (and d!569128 res!834922) b!1864582))

(assert (= (and b!1864582 res!834923) b!1864583))

(assert (=> d!569128 m!2288445))

(assert (=> d!569128 m!2288445))

(declare-fun m!2288803 () Bool)

(assert (=> d!569128 m!2288803))

(assert (=> b!1864582 m!2288445))

(assert (=> b!1864582 m!2288445))

(assert (=> b!1864582 m!2288803))

(assert (=> b!1864370 d!569128))

(declare-fun d!569130 () Bool)

(assert (=> d!569130 (= (isEmpty!12883 (list!8442 (left!16649 t!4595))) ((_ is Nil!20669) (list!8442 (left!16649 t!4595))))))

(assert (=> d!568984 d!569130))

(assert (=> d!568984 d!568970))

(declare-fun d!569132 () Bool)

(declare-fun lt!718405 () Int)

(assert (=> d!569132 (= lt!718405 (size!16371 (list!8442 (left!16649 t!4595))))))

(assert (=> d!569132 (= lt!718405 (ite ((_ is Empty!6864) (left!16649 t!4595)) 0 (ite ((_ is Leaf!10064) (left!16649 t!4595)) (csize!13959 (left!16649 t!4595)) (csize!13958 (left!16649 t!4595)))))))

(assert (=> d!569132 (= (size!16372 (left!16649 t!4595)) lt!718405)))

(declare-fun bs!411642 () Bool)

(assert (= bs!411642 d!569132))

(assert (=> bs!411642 m!2288133))

(assert (=> bs!411642 m!2288133))

(declare-fun m!2288805 () Bool)

(assert (=> bs!411642 m!2288805))

(assert (=> d!568984 d!569132))

(declare-fun d!569134 () Bool)

(assert (=> d!569134 (= (inv!27313 (xs!9740 (left!16649 t!4595))) (<= (size!16371 (innerList!6924 (xs!9740 (left!16649 t!4595)))) 2147483647))))

(declare-fun bs!411643 () Bool)

(assert (= bs!411643 d!569134))

(declare-fun m!2288807 () Bool)

(assert (=> bs!411643 m!2288807))

(assert (=> b!1864380 d!569134))

(declare-fun d!569136 () Bool)

(assert (=> d!569136 (= (height!1053 (ite c!303617 (tail!2824 (left!16649 t!4595)) (right!16979 (right!16979 t!4595)))) (ite ((_ is Empty!6864) (ite c!303617 (tail!2824 (left!16649 t!4595)) (right!16979 (right!16979 t!4595)))) 0 (ite ((_ is Leaf!10064) (ite c!303617 (tail!2824 (left!16649 t!4595)) (right!16979 (right!16979 t!4595)))) 1 (cheight!7075 (ite c!303617 (tail!2824 (left!16649 t!4595)) (right!16979 (right!16979 t!4595)))))))))

(assert (=> bm!115779 d!569136))

(declare-fun d!569138 () Bool)

(declare-fun c!303715 () Bool)

(assert (=> d!569138 (= c!303715 ((_ is Nil!20669) lt!718353))))

(declare-fun e!1190314 () (InoxSet T!33060))

(assert (=> d!569138 (= (content!3073 lt!718353) e!1190314)))

(declare-fun b!1864584 () Bool)

(assert (=> b!1864584 (= e!1190314 ((as const (Array T!33060 Bool)) false))))

(declare-fun b!1864585 () Bool)

(assert (=> b!1864585 (= e!1190314 ((_ map or) (store ((as const (Array T!33060 Bool)) false) (h!26070 lt!718353) true) (content!3073 (t!172842 lt!718353))))))

(assert (= (and d!569138 c!303715) b!1864584))

(assert (= (and d!569138 (not c!303715)) b!1864585))

(declare-fun m!2288809 () Bool)

(assert (=> b!1864585 m!2288809))

(declare-fun m!2288811 () Bool)

(assert (=> b!1864585 m!2288811))

(assert (=> d!568972 d!569138))

(declare-fun d!569140 () Bool)

(declare-fun c!303716 () Bool)

(assert (=> d!569140 (= c!303716 ((_ is Nil!20669) (tail!2825 lt!718266)))))

(declare-fun e!1190315 () (InoxSet T!33060))

(assert (=> d!569140 (= (content!3073 (tail!2825 lt!718266)) e!1190315)))

(declare-fun b!1864586 () Bool)

(assert (=> b!1864586 (= e!1190315 ((as const (Array T!33060 Bool)) false))))

(declare-fun b!1864587 () Bool)

(assert (=> b!1864587 (= e!1190315 ((_ map or) (store ((as const (Array T!33060 Bool)) false) (h!26070 (tail!2825 lt!718266)) true) (content!3073 (t!172842 (tail!2825 lt!718266)))))))

(assert (= (and d!569140 c!303716) b!1864586))

(assert (= (and d!569140 (not c!303716)) b!1864587))

(declare-fun m!2288813 () Bool)

(assert (=> b!1864587 m!2288813))

(declare-fun m!2288815 () Bool)

(assert (=> b!1864587 m!2288815))

(assert (=> d!568972 d!569140))

(assert (=> d!568972 d!569058))

(declare-fun d!569142 () Bool)

(assert (=> d!569142 (= (height!1053 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) (ite ((_ is Empty!6864) (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) 0 (ite ((_ is Leaf!10064) (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) 1 (cheight!7075 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))))

(assert (=> b!1864204 d!569142))

(declare-fun d!569144 () Bool)

(assert (=> d!569144 (= (height!1053 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) (ite ((_ is Empty!6864) (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) 0 (ite ((_ is Leaf!10064) (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) 1 (cheight!7075 (right!16979 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))))

(assert (=> b!1864204 d!569144))

(declare-fun b!1864599 () Bool)

(declare-fun e!1190320 () Conc!6864)

(assert (=> b!1864599 (= e!1190320 (Node!6864 (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290))) (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783)) (+ (size!16372 (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290)))) (size!16372 (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783)))) (+ (max!0 (height!1053 (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290)))) (height!1053 (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783)))) 1)))))

(declare-fun lt!718411 () Conc!6864)

(declare-fun d!569146 () Bool)

(assert (=> d!569146 (= (list!8442 lt!718411) (++!5596 (list!8442 (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290)))) (list!8442 (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783)))))))

(declare-fun e!1190321 () Conc!6864)

(assert (=> d!569146 (= lt!718411 e!1190321)))

(declare-fun c!303721 () Bool)

(assert (=> d!569146 (= c!303721 (= (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290))) Empty!6864))))

(assert (=> d!569146 (= (<>!162 (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290))) (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783))) lt!718411)))

(declare-fun b!1864598 () Bool)

(assert (=> b!1864598 (= e!1190320 (ite c!303617 (ite c!303612 (left!16649 (tail!2824 (left!16649 t!4595))) call!115786) (ite c!303610 call!115787 (ite c!303615 call!115783 lt!718290))))))

(declare-fun b!1864596 () Bool)

(assert (=> b!1864596 (= e!1190321 (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783)))))

(declare-fun b!1864597 () Bool)

(assert (=> b!1864597 (= e!1190321 e!1190320)))

(declare-fun c!303722 () Bool)

(assert (=> b!1864597 (= c!303722 (= (ite c!303617 (ite c!303612 call!115786 lt!718293) (ite (or c!303610 c!303615) (right!16979 (right!16979 t!4595)) call!115783)) Empty!6864))))

(assert (= (and d!569146 c!303721) b!1864596))

(assert (= (and d!569146 (not c!303721)) b!1864597))

(assert (= (and b!1864597 c!303722) b!1864598))

(assert (= (and b!1864597 (not c!303722)) b!1864599))

(declare-fun m!2288819 () Bool)

(assert (=> b!1864599 m!2288819))

(declare-fun m!2288821 () Bool)

(assert (=> b!1864599 m!2288821))

(assert (=> b!1864599 m!2288821))

(assert (=> b!1864599 m!2288819))

(declare-fun m!2288823 () Bool)

(assert (=> b!1864599 m!2288823))

(declare-fun m!2288825 () Bool)

(assert (=> b!1864599 m!2288825))

(declare-fun m!2288827 () Bool)

(assert (=> b!1864599 m!2288827))

(declare-fun m!2288829 () Bool)

(assert (=> d!569146 m!2288829))

(declare-fun m!2288831 () Bool)

(assert (=> d!569146 m!2288831))

(declare-fun m!2288833 () Bool)

(assert (=> d!569146 m!2288833))

(assert (=> d!569146 m!2288831))

(assert (=> d!569146 m!2288833))

(declare-fun m!2288835 () Bool)

(assert (=> d!569146 m!2288835))

(assert (=> bm!115777 d!569146))

(declare-fun d!569152 () Bool)

(declare-fun res!834924 () Bool)

(declare-fun e!1190322 () Bool)

(assert (=> d!569152 (=> (not res!834924) (not e!1190322))))

(assert (=> d!569152 (= res!834924 (= (csize!13958 t!4595) (+ (size!16372 (left!16649 t!4595)) (size!16372 (right!16979 t!4595)))))))

(assert (=> d!569152 (= (inv!27316 t!4595) e!1190322)))

(declare-fun b!1864600 () Bool)

(declare-fun res!834925 () Bool)

(assert (=> b!1864600 (=> (not res!834925) (not e!1190322))))

(assert (=> b!1864600 (= res!834925 (and (not (= (left!16649 t!4595) Empty!6864)) (not (= (right!16979 t!4595) Empty!6864))))))

(declare-fun b!1864601 () Bool)

(declare-fun res!834926 () Bool)

(assert (=> b!1864601 (=> (not res!834926) (not e!1190322))))

(assert (=> b!1864601 (= res!834926 (= (cheight!7075 t!4595) (+ (max!0 (height!1053 (left!16649 t!4595)) (height!1053 (right!16979 t!4595))) 1)))))

(declare-fun b!1864602 () Bool)

(assert (=> b!1864602 (= e!1190322 (<= 0 (cheight!7075 t!4595)))))

(assert (= (and d!569152 res!834924) b!1864600))

(assert (= (and b!1864600 res!834925) b!1864601))

(assert (= (and b!1864601 res!834926) b!1864602))

(assert (=> d!569152 m!2288431))

(assert (=> d!569152 m!2288749))

(assert (=> b!1864601 m!2288449))

(assert (=> b!1864601 m!2288177))

(assert (=> b!1864601 m!2288449))

(assert (=> b!1864601 m!2288177))

(declare-fun m!2288837 () Bool)

(assert (=> b!1864601 m!2288837))

(assert (=> b!1864368 d!569152))

(declare-fun b!1864604 () Bool)

(declare-fun res!834932 () Bool)

(declare-fun e!1190324 () Bool)

(assert (=> b!1864604 (=> (not res!834932) (not e!1190324))))

(assert (=> b!1864604 (= res!834932 (not (isEmpty!12881 (left!16649 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))))

(declare-fun b!1864605 () Bool)

(declare-fun res!834927 () Bool)

(assert (=> b!1864605 (=> (not res!834927) (not e!1190324))))

(assert (=> b!1864605 (= res!834927 (<= (- (height!1053 (left!16649 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))) (height!1053 (right!16979 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))) 1))))

(declare-fun b!1864606 () Bool)

(assert (=> b!1864606 (= e!1190324 (not (isEmpty!12881 (right!16979 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))))))))

(declare-fun b!1864603 () Bool)

(declare-fun e!1190323 () Bool)

(assert (=> b!1864603 (= e!1190323 e!1190324)))

(declare-fun res!834929 () Bool)

(assert (=> b!1864603 (=> (not res!834929) (not e!1190324))))

(assert (=> b!1864603 (= res!834929 (<= (- 1) (- (height!1053 (left!16649 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))) (height!1053 (right!16979 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))))

(declare-fun d!569154 () Bool)

(declare-fun res!834928 () Bool)

(assert (=> d!569154 (=> res!834928 e!1190323)))

(assert (=> d!569154 (= res!834928 (not ((_ is Node!6864) (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(assert (=> d!569154 (= (isBalanced!2165 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595)))) e!1190323)))

(declare-fun b!1864607 () Bool)

(declare-fun res!834931 () Bool)

(assert (=> b!1864607 (=> (not res!834931) (not e!1190324))))

(assert (=> b!1864607 (= res!834931 (isBalanced!2165 (left!16649 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(declare-fun b!1864608 () Bool)

(declare-fun res!834930 () Bool)

(assert (=> b!1864608 (=> (not res!834930) (not e!1190324))))

(assert (=> b!1864608 (= res!834930 (isBalanced!2165 (right!16979 (left!16649 (++!5595 (tail!2824 (left!16649 t!4595)) (right!16979 t!4595))))))))

(assert (= (and d!569154 (not res!834928)) b!1864603))

(assert (= (and b!1864603 res!834929) b!1864605))

(assert (= (and b!1864605 res!834927) b!1864607))

(assert (= (and b!1864607 res!834931) b!1864608))

(assert (= (and b!1864608 res!834930) b!1864604))

(assert (= (and b!1864604 res!834932) b!1864606))

(declare-fun m!2288839 () Bool)

(assert (=> b!1864605 m!2288839))

(declare-fun m!2288841 () Bool)

(assert (=> b!1864605 m!2288841))

(declare-fun m!2288843 () Bool)

(assert (=> b!1864606 m!2288843))

(declare-fun m!2288845 () Bool)

(assert (=> b!1864607 m!2288845))

(declare-fun m!2288847 () Bool)

(assert (=> b!1864604 m!2288847))

(assert (=> b!1864603 m!2288839))

(assert (=> b!1864603 m!2288841))

(declare-fun m!2288849 () Bool)

(assert (=> b!1864608 m!2288849))

(assert (=> b!1864206 d!569154))

(declare-fun e!1190325 () Conc!6864)

(declare-fun b!1864612 () Bool)

(assert (=> b!1864612 (= e!1190325 (Node!6864 (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595)))))) (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595))))) (+ (size!16372 (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595))))))) (size!16372 (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595))))))) (+ (max!0 (height!1053 (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595))))))) (height!1053 (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595))))))) 1)))))

(declare-fun lt!718412 () Conc!6864)

(declare-fun d!569156 () Bool)

(assert (=> d!569156 (= (list!8442 lt!718412) (++!5596 (list!8442 (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595))))))) (list!8442 (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595))))))))))

(declare-fun e!1190326 () Conc!6864)

(assert (=> d!569156 (= lt!718412 e!1190326)))

(declare-fun c!303723 () Bool)

(assert (=> d!569156 (= c!303723 (= (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595)))))) Empty!6864))))

(assert (=> d!569156 (= (<>!162 (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595)))))) (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595)))))) lt!718412)))

(declare-fun b!1864611 () Bool)

(assert (=> b!1864611 (= e!1190325 (ite c!303611 (tail!2824 (left!16649 t!4595)) (ite c!303617 (ite c!303613 (left!16649 (tail!2824 (left!16649 t!4595))) (ite c!303612 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))) (left!16649 (tail!2824 (left!16649 t!4595))))) (ite c!303615 lt!718290 (right!16979 (left!16649 (right!16979 t!4595)))))))))

(declare-fun b!1864609 () Bool)

(assert (=> b!1864609 (= e!1190326 (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595))))))))

(declare-fun b!1864610 () Bool)

(assert (=> b!1864610 (= e!1190326 e!1190325)))

(declare-fun c!303724 () Bool)

(assert (=> b!1864610 (= c!303724 (= (ite c!303611 (right!16979 t!4595) (ite c!303617 (ite c!303613 call!115785 (ite c!303612 lt!718293 (left!16649 (right!16979 (tail!2824 (left!16649 t!4595)))))) (ite c!303615 (right!16979 (left!16649 (right!16979 t!4595))) (right!16979 (right!16979 t!4595))))) Empty!6864))))

(assert (= (and d!569156 c!303723) b!1864609))

(assert (= (and d!569156 (not c!303723)) b!1864610))

(assert (= (and b!1864610 c!303724) b!1864611))

(assert (= (and b!1864610 (not c!303724)) b!1864612))

(declare-fun m!2288851 () Bool)

(assert (=> b!1864612 m!2288851))

(declare-fun m!2288853 () Bool)

(assert (=> b!1864612 m!2288853))

(assert (=> b!1864612 m!2288853))

(assert (=> b!1864612 m!2288851))

(declare-fun m!2288855 () Bool)

(assert (=> b!1864612 m!2288855))

(declare-fun m!2288857 () Bool)

(assert (=> b!1864612 m!2288857))

(declare-fun m!2288859 () Bool)

(assert (=> b!1864612 m!2288859))

(declare-fun m!2288861 () Bool)

(assert (=> d!569156 m!2288861))

(declare-fun m!2288863 () Bool)

(assert (=> d!569156 m!2288863))

(declare-fun m!2288865 () Bool)

(assert (=> d!569156 m!2288865))

(assert (=> d!569156 m!2288863))

(assert (=> d!569156 m!2288865))

(declare-fun m!2288867 () Bool)

(assert (=> d!569156 m!2288867))

(assert (=> bm!115785 d!569156))

(declare-fun lt!718415 () Conc!6864)

(declare-fun c!303729 () Bool)

(declare-fun call!115845 () Conc!6864)

(declare-fun c!303736 () Bool)

(declare-fun lt!718418 () Conc!6864)

(declare-fun call!115848 () Conc!6864)

(declare-fun c!303731 () Bool)

(declare-fun call!115846 () Conc!6864)

(declare-fun call!115849 () Conc!6864)

(declare-fun c!303734 () Bool)

(declare-fun bm!115839 () Bool)

(assert (=> bm!115839 (= call!115846 (<>!162 (ite c!303736 (ite c!303731 (left!16649 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) call!115848) (ite c!303729 call!115849 (ite c!303734 call!115845 lt!718415))) (ite c!303736 (ite c!303731 call!115848 lt!718418) (ite (or c!303729 c!303734) (right!16979 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))) call!115845))))))

(declare-fun b!1864621 () Bool)

(declare-fun e!1190331 () Conc!6864)

(declare-fun call!115854 () Conc!6864)

(assert (=> b!1864621 (= e!1190331 call!115854)))

(declare-fun b!1864622 () Bool)

(declare-fun res!834933 () Bool)

(declare-fun e!1190334 () Bool)

(assert (=> b!1864622 (=> (not res!834933) (not e!1190334))))

(declare-fun lt!718416 () Conc!6864)

(assert (=> b!1864622 (= res!834933 (isBalanced!2165 lt!718416))))

(declare-fun bm!115840 () Bool)

(declare-fun call!115858 () Conc!6864)

(assert (=> bm!115840 (= call!115845 call!115858)))

(declare-fun call!115855 () Int)

(declare-fun bm!115841 () Bool)

(assert (=> bm!115841 (= call!115855 (height!1053 (ite c!303736 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))) (right!16979 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))))

(declare-fun bm!115842 () Bool)

(declare-fun call!115859 () Int)

(assert (=> bm!115842 (= call!115859 (height!1053 (ite c!303736 (right!16979 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595))))))))))

(declare-fun bm!115843 () Bool)

(declare-fun call!115852 () Conc!6864)

(assert (=> bm!115843 (= call!115852 call!115846)))

(declare-fun bm!115844 () Bool)

(declare-fun call!115850 () Conc!6864)

(assert (=> bm!115844 (= call!115850 call!115846)))

(declare-fun bm!115845 () Bool)

(declare-fun call!115847 () Conc!6864)

(declare-fun call!115856 () Conc!6864)

(assert (=> bm!115845 (= call!115847 call!115856)))

(declare-fun d!569158 () Bool)

(assert (=> d!569158 e!1190334))

(declare-fun res!834937 () Bool)

(assert (=> d!569158 (=> (not res!834937) (not e!1190334))))

(assert (=> d!569158 (= res!834937 (appendAssocInst!510 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))) (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))

(declare-fun e!1190333 () Conc!6864)

(assert (=> d!569158 (= lt!718416 e!1190333)))

(declare-fun c!303735 () Bool)

(assert (=> d!569158 (= c!303735 (= (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))) Empty!6864))))

(declare-fun e!1190335 () Bool)

(assert (=> d!569158 e!1190335))

(declare-fun res!834934 () Bool)

(assert (=> d!569158 (=> (not res!834934) (not e!1190335))))

(assert (=> d!569158 (= res!834934 (isBalanced!2165 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))))))

(assert (=> d!569158 (= (++!5595 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))) (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))) lt!718416)))

(declare-fun b!1864623 () Bool)

(declare-fun e!1190340 () Conc!6864)

(declare-fun call!115851 () Conc!6864)

(assert (=> b!1864623 (= e!1190340 call!115851)))

(declare-fun b!1864624 () Bool)

(declare-fun call!115853 () Int)

(assert (=> b!1864624 (= c!303729 (>= call!115855 call!115853))))

(declare-fun e!1190332 () Conc!6864)

(declare-fun e!1190336 () Conc!6864)

(assert (=> b!1864624 (= e!1190332 e!1190336)))

(declare-fun bm!115846 () Bool)

(assert (=> bm!115846 (= call!115849 call!115856)))

(declare-fun b!1864625 () Bool)

(declare-fun e!1190337 () Conc!6864)

(assert (=> b!1864625 (= e!1190333 e!1190337)))

(declare-fun c!303733 () Bool)

(assert (=> b!1864625 (= c!303733 (= (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595))))) Empty!6864))))

(declare-fun bm!115847 () Bool)

(declare-fun c!303730 () Bool)

(declare-fun c!303732 () Bool)

(assert (=> bm!115847 (= call!115851 (<>!162 (ite c!303730 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))) (ite c!303736 (ite c!303732 (left!16649 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) (ite c!303731 (left!16649 (right!16979 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))))) (left!16649 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))))) (ite c!303734 lt!718415 (right!16979 (left!16649 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))) (ite c!303730 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595))))) (ite c!303736 (ite c!303732 call!115847 (ite c!303731 lt!718418 (left!16649 (right!16979 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))))))) (ite c!303734 (right!16979 (left!16649 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595))))))) (right!16979 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))))))

(declare-fun b!1864626 () Bool)

(declare-fun e!1190338 () Conc!6864)

(declare-fun call!115857 () Conc!6864)

(assert (=> b!1864626 (= e!1190338 call!115857)))

(declare-fun b!1864627 () Bool)

(assert (=> b!1864627 (= e!1190331 call!115854)))

(declare-fun b!1864628 () Bool)

(declare-fun res!834935 () Bool)

(assert (=> b!1864628 (=> (not res!834935) (not e!1190334))))

(assert (=> b!1864628 (= res!834935 (>= (height!1053 lt!718416) (max!0 (height!1053 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) (height!1053 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))))

(declare-fun b!1864629 () Bool)

(declare-fun call!115844 () Int)

(assert (=> b!1864629 (= c!303732 (>= call!115844 call!115859))))

(assert (=> b!1864629 (= e!1190332 e!1190338)))

(declare-fun b!1864630 () Bool)

(assert (=> b!1864630 (= e!1190337 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))))))

(declare-fun b!1864631 () Bool)

(assert (=> b!1864631 (= e!1190333 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595))))))))

(declare-fun b!1864632 () Bool)

(assert (=> b!1864632 (= e!1190336 call!115852)))

(declare-fun b!1864633 () Bool)

(declare-fun e!1190339 () Conc!6864)

(assert (=> b!1864633 (= e!1190339 call!115850)))

(declare-fun b!1864634 () Bool)

(assert (=> b!1864634 (= e!1190335 (isBalanced!2165 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))

(declare-fun b!1864635 () Bool)

(assert (=> b!1864635 (= e!1190336 e!1190331)))

(assert (=> b!1864635 (= lt!718415 call!115849)))

(assert (=> b!1864635 (= c!303734 (= call!115844 (- call!115859 3)))))

(declare-fun b!1864636 () Bool)

(assert (=> b!1864636 (= e!1190340 e!1190332)))

(declare-fun lt!718417 () Int)

(assert (=> b!1864636 (= c!303736 (< lt!718417 (- 1)))))

(declare-fun bm!115848 () Bool)

(assert (=> bm!115848 (= call!115858 call!115851)))

(declare-fun b!1864637 () Bool)

(assert (=> b!1864637 (= e!1190339 call!115850)))

(declare-fun b!1864638 () Bool)

(assert (=> b!1864638 (= e!1190334 (= (list!8442 lt!718416) (++!5596 (list!8442 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) (list!8442 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))))

(declare-fun bm!115849 () Bool)

(assert (=> bm!115849 (= call!115848 call!115857)))

(declare-fun b!1864639 () Bool)

(assert (=> b!1864639 (= e!1190338 e!1190339)))

(assert (=> b!1864639 (= lt!718418 call!115847)))

(assert (=> b!1864639 (= c!303731 (= call!115853 (- call!115855 3)))))

(declare-fun bm!115850 () Bool)

(assert (=> bm!115850 (= call!115844 (height!1053 (ite c!303736 (left!16649 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) lt!718415)))))

(declare-fun bm!115851 () Bool)

(assert (=> bm!115851 (= call!115853 (height!1053 (ite c!303736 lt!718418 (left!16649 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))))

(declare-fun b!1864640 () Bool)

(assert (=> b!1864640 (= c!303730 (and (<= (- 1) lt!718417) (<= lt!718417 1)))))

(assert (=> b!1864640 (= lt!718417 (- (height!1053 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))) (height!1053 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595))))))))

(assert (=> b!1864640 (= e!1190337 e!1190340)))

(declare-fun b!1864641 () Bool)

(declare-fun res!834936 () Bool)

(assert (=> b!1864641 (=> (not res!834936) (not e!1190334))))

(assert (=> b!1864641 (= res!834936 (<= (height!1053 lt!718416) (+ (max!0 (height!1053 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) (height!1053 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595))))))) 1)))))

(declare-fun bm!115852 () Bool)

(assert (=> bm!115852 (= call!115856 (++!5595 (ite c!303736 (ite c!303732 (right!16979 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) (right!16979 (right!16979 (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))))) (ite c!303617 (ite c!303613 (right!16979 (tail!2824 (left!16649 t!4595))) (right!16979 (right!16979 (tail!2824 (left!16649 t!4595))))) (tail!2824 (left!16649 t!4595)))) (ite c!303736 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595))))) (ite c!303729 (left!16649 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))) (left!16649 (left!16649 (ite c!303617 (right!16979 t!4595) (ite c!303610 (left!16649 (right!16979 t!4595)) (left!16649 (left!16649 (right!16979 t!4595)))))))))))))

(declare-fun bm!115853 () Bool)

(assert (=> bm!115853 (= call!115857 call!115858)))

(declare-fun bm!115854 () Bool)

(assert (=> bm!115854 (= call!115854 call!115852)))

(assert (= (and d!569158 res!834934) b!1864634))

(assert (= (and d!569158 c!303735) b!1864631))

(assert (= (and d!569158 (not c!303735)) b!1864625))

(assert (= (and b!1864625 c!303733) b!1864630))

(assert (= (and b!1864625 (not c!303733)) b!1864640))

(assert (= (and b!1864640 c!303730) b!1864623))

(assert (= (and b!1864640 (not c!303730)) b!1864636))

(assert (= (and b!1864636 c!303736) b!1864629))

(assert (= (and b!1864636 (not c!303736)) b!1864624))

(assert (= (and b!1864629 c!303732) b!1864626))

(assert (= (and b!1864629 (not c!303732)) b!1864639))

(assert (= (and b!1864639 c!303731) b!1864633))

(assert (= (and b!1864639 (not c!303731)) b!1864637))

(assert (= (or b!1864633 b!1864637) bm!115849))

(assert (= (or b!1864633 b!1864637) bm!115844))

(assert (= (or b!1864626 b!1864639) bm!115845))

(assert (= (or b!1864626 bm!115849) bm!115853))

(assert (= (and b!1864624 c!303729) b!1864632))

(assert (= (and b!1864624 (not c!303729)) b!1864635))

(assert (= (and b!1864635 c!303734) b!1864621))

(assert (= (and b!1864635 (not c!303734)) b!1864627))

(assert (= (or b!1864621 b!1864627) bm!115840))

(assert (= (or b!1864621 b!1864627) bm!115854))

(assert (= (or b!1864632 b!1864635) bm!115846))

(assert (= (or b!1864632 bm!115854) bm!115843))

(assert (= (or b!1864629 b!1864635) bm!115842))

(assert (= (or b!1864639 b!1864624) bm!115851))

(assert (= (or b!1864639 b!1864624) bm!115841))

(assert (= (or bm!115844 bm!115843) bm!115839))

(assert (= (or bm!115853 bm!115840) bm!115848))

(assert (= (or bm!115845 bm!115846) bm!115852))

(assert (= (or b!1864629 b!1864635) bm!115850))

(assert (= (or b!1864623 bm!115848) bm!115847))

(assert (= (and d!569158 res!834937) b!1864622))

(assert (= (and b!1864622 res!834933) b!1864641))

(assert (= (and b!1864641 res!834936) b!1864628))

(assert (= (and b!1864628 res!834935) b!1864638))

(declare-fun m!2288869 () Bool)

(assert (=> bm!115841 m!2288869))

(declare-fun m!2288871 () Bool)

(assert (=> bm!115852 m!2288871))

(declare-fun m!2288873 () Bool)

(assert (=> bm!115839 m!2288873))

(declare-fun m!2288875 () Bool)

(assert (=> bm!115851 m!2288875))

(declare-fun m!2288877 () Bool)

(assert (=> b!1864641 m!2288877))

(declare-fun m!2288879 () Bool)

(assert (=> b!1864641 m!2288879))

(declare-fun m!2288881 () Bool)

(assert (=> b!1864641 m!2288881))

(assert (=> b!1864641 m!2288879))

(assert (=> b!1864641 m!2288881))

(declare-fun m!2288883 () Bool)

(assert (=> b!1864641 m!2288883))

(declare-fun m!2288885 () Bool)

(assert (=> d!569158 m!2288885))

(declare-fun m!2288887 () Bool)

(assert (=> d!569158 m!2288887))

(assert (=> b!1864628 m!2288877))

(assert (=> b!1864628 m!2288879))

(assert (=> b!1864628 m!2288881))

(assert (=> b!1864628 m!2288879))

(assert (=> b!1864628 m!2288881))

(assert (=> b!1864628 m!2288883))

(declare-fun m!2288889 () Bool)

(assert (=> bm!115842 m!2288889))

(declare-fun m!2288891 () Bool)

(assert (=> bm!115850 m!2288891))

(assert (=> b!1864640 m!2288881))

(assert (=> b!1864640 m!2288879))

(declare-fun m!2288893 () Bool)

(assert (=> bm!115847 m!2288893))

(declare-fun m!2288895 () Bool)

(assert (=> b!1864622 m!2288895))

(declare-fun m!2288897 () Bool)

(assert (=> b!1864638 m!2288897))

(declare-fun m!2288899 () Bool)

(assert (=> b!1864638 m!2288899))

(declare-fun m!2288901 () Bool)

(assert (=> b!1864638 m!2288901))

(assert (=> b!1864638 m!2288899))

(assert (=> b!1864638 m!2288901))

(declare-fun m!2288903 () Bool)

(assert (=> b!1864638 m!2288903))

(declare-fun m!2288905 () Bool)

(assert (=> b!1864634 m!2288905))

(assert (=> bm!115790 d!569158))

(declare-fun b!1864647 () Bool)

(declare-fun res!834943 () Bool)

(declare-fun e!1190344 () Bool)

(assert (=> b!1864647 (=> (not res!834943) (not e!1190344))))

(assert (=> b!1864647 (= res!834943 (not (isEmpty!12881 (left!16649 lt!718343))))))

(declare-fun b!1864648 () Bool)

(declare-fun res!834938 () Bool)

(assert (=> b!1864648 (=> (not res!834938) (not e!1190344))))

(assert (=> b!1864648 (= res!834938 (<= (- (height!1053 (left!16649 lt!718343)) (height!1053 (right!16979 lt!718343))) 1))))

(declare-fun b!1864649 () Bool)

(assert (=> b!1864649 (= e!1190344 (not (isEmpty!12881 (right!16979 lt!718343))))))

(declare-fun b!1864646 () Bool)

(declare-fun e!1190343 () Bool)

(assert (=> b!1864646 (= e!1190343 e!1190344)))

(declare-fun res!834940 () Bool)

(assert (=> b!1864646 (=> (not res!834940) (not e!1190344))))

(assert (=> b!1864646 (= res!834940 (<= (- 1) (- (height!1053 (left!16649 lt!718343)) (height!1053 (right!16979 lt!718343)))))))

(declare-fun d!569160 () Bool)

(declare-fun res!834939 () Bool)

(assert (=> d!569160 (=> res!834939 e!1190343)))

(assert (=> d!569160 (= res!834939 (not ((_ is Node!6864) lt!718343)))))

(assert (=> d!569160 (= (isBalanced!2165 lt!718343) e!1190343)))

(declare-fun b!1864650 () Bool)

(declare-fun res!834942 () Bool)

(assert (=> b!1864650 (=> (not res!834942) (not e!1190344))))

(assert (=> b!1864650 (= res!834942 (isBalanced!2165 (left!16649 lt!718343)))))

(declare-fun b!1864651 () Bool)

(declare-fun res!834941 () Bool)

(assert (=> b!1864651 (=> (not res!834941) (not e!1190344))))

(assert (=> b!1864651 (= res!834941 (isBalanced!2165 (right!16979 lt!718343)))))

(assert (= (and d!569160 (not res!834939)) b!1864646))

(assert (= (and b!1864646 res!834940) b!1864648))

(assert (= (and b!1864648 res!834938) b!1864650))

(assert (= (and b!1864650 res!834942) b!1864651))

(assert (= (and b!1864651 res!834941) b!1864647))

(assert (= (and b!1864647 res!834943) b!1864649))

(declare-fun m!2288915 () Bool)

(assert (=> b!1864648 m!2288915))

(declare-fun m!2288917 () Bool)

(assert (=> b!1864648 m!2288917))

(declare-fun m!2288919 () Bool)

(assert (=> b!1864649 m!2288919))

(declare-fun m!2288921 () Bool)

(assert (=> b!1864650 m!2288921))

(declare-fun m!2288923 () Bool)

(assert (=> b!1864647 m!2288923))

(assert (=> b!1864646 m!2288915))

(assert (=> b!1864646 m!2288917))

(declare-fun m!2288927 () Bool)

(assert (=> b!1864651 m!2288927))

(assert (=> d!568952 d!569160))

(declare-fun b!1864653 () Bool)

(declare-fun res!834949 () Bool)

(declare-fun e!1190346 () Bool)

(assert (=> b!1864653 (=> (not res!834949) (not e!1190346))))

(assert (=> b!1864653 (= res!834949 (not (isEmpty!12881 (left!16649 (left!16649 t!4595)))))))

(declare-fun b!1864654 () Bool)

(declare-fun res!834944 () Bool)

(assert (=> b!1864654 (=> (not res!834944) (not e!1190346))))

(assert (=> b!1864654 (= res!834944 (<= (- (height!1053 (left!16649 (left!16649 t!4595))) (height!1053 (right!16979 (left!16649 t!4595)))) 1))))

(declare-fun b!1864655 () Bool)

(assert (=> b!1864655 (= e!1190346 (not (isEmpty!12881 (right!16979 (left!16649 t!4595)))))))

(declare-fun b!1864652 () Bool)

(declare-fun e!1190345 () Bool)

(assert (=> b!1864652 (= e!1190345 e!1190346)))

(declare-fun res!834946 () Bool)

(assert (=> b!1864652 (=> (not res!834946) (not e!1190346))))

(assert (=> b!1864652 (= res!834946 (<= (- 1) (- (height!1053 (left!16649 (left!16649 t!4595))) (height!1053 (right!16979 (left!16649 t!4595))))))))

(declare-fun d!569162 () Bool)

(declare-fun res!834945 () Bool)

(assert (=> d!569162 (=> res!834945 e!1190345)))

(assert (=> d!569162 (= res!834945 (not ((_ is Node!6864) (left!16649 t!4595))))))

(assert (=> d!569162 (= (isBalanced!2165 (left!16649 t!4595)) e!1190345)))

(declare-fun b!1864656 () Bool)

(declare-fun res!834948 () Bool)

(assert (=> b!1864656 (=> (not res!834948) (not e!1190346))))

(assert (=> b!1864656 (= res!834948 (isBalanced!2165 (left!16649 (left!16649 t!4595))))))

(declare-fun b!1864657 () Bool)

(declare-fun res!834947 () Bool)

(assert (=> b!1864657 (=> (not res!834947) (not e!1190346))))

(assert (=> b!1864657 (= res!834947 (isBalanced!2165 (right!16979 (left!16649 t!4595))))))

(assert (= (and d!569162 (not res!834945)) b!1864652))

(assert (= (and b!1864652 res!834946) b!1864654))

(assert (= (and b!1864654 res!834944) b!1864656))

(assert (= (and b!1864656 res!834948) b!1864657))

(assert (= (and b!1864657 res!834947) b!1864653))

(assert (= (and b!1864653 res!834949) b!1864655))

(assert (=> b!1864654 m!2288611))

(assert (=> b!1864654 m!2288515))

(declare-fun m!2288937 () Bool)

(assert (=> b!1864655 m!2288937))

(declare-fun m!2288939 () Bool)

(assert (=> b!1864656 m!2288939))

(assert (=> b!1864653 m!2288355))

(assert (=> b!1864652 m!2288611))

(assert (=> b!1864652 m!2288515))

(assert (=> b!1864657 m!2288537))

(assert (=> d!568952 d!569162))

(declare-fun b!1864662 () Bool)

(declare-fun res!834953 () Bool)

(declare-fun e!1190348 () Bool)

(assert (=> b!1864662 (=> (not res!834953) (not e!1190348))))

(declare-fun lt!718420 () List!20751)

(assert (=> b!1864662 (= res!834953 (= (size!16371 lt!718420) (+ (size!16371 (list!8442 (left!16649 t!4595))) (size!16371 (list!8442 (right!16979 t!4595))))))))

(declare-fun d!569166 () Bool)

(assert (=> d!569166 e!1190348))

(declare-fun res!834952 () Bool)

(assert (=> d!569166 (=> (not res!834952) (not e!1190348))))

(assert (=> d!569166 (= res!834952 (= (content!3073 lt!718420) ((_ map or) (content!3073 (list!8442 (left!16649 t!4595))) (content!3073 (list!8442 (right!16979 t!4595))))))))

(declare-fun e!1190349 () List!20751)

(assert (=> d!569166 (= lt!718420 e!1190349)))

(declare-fun c!303739 () Bool)

(assert (=> d!569166 (= c!303739 ((_ is Nil!20669) (list!8442 (left!16649 t!4595))))))

(assert (=> d!569166 (= (++!5596 (list!8442 (left!16649 t!4595)) (list!8442 (right!16979 t!4595))) lt!718420)))

(declare-fun b!1864660 () Bool)

(assert (=> b!1864660 (= e!1190349 (list!8442 (right!16979 t!4595)))))

(declare-fun b!1864661 () Bool)

(assert (=> b!1864661 (= e!1190349 (Cons!20669 (h!26070 (list!8442 (left!16649 t!4595))) (++!5596 (t!172842 (list!8442 (left!16649 t!4595))) (list!8442 (right!16979 t!4595)))))))

(declare-fun b!1864663 () Bool)

(assert (=> b!1864663 (= e!1190348 (or (not (= (list!8442 (right!16979 t!4595)) Nil!20669)) (= lt!718420 (list!8442 (left!16649 t!4595)))))))

(assert (= (and d!569166 c!303739) b!1864660))

(assert (= (and d!569166 (not c!303739)) b!1864661))

(assert (= (and d!569166 res!834952) b!1864662))

(assert (= (and b!1864662 res!834953) b!1864663))

(declare-fun m!2288943 () Bool)

(assert (=> b!1864662 m!2288943))

(assert (=> b!1864662 m!2288133))

(assert (=> b!1864662 m!2288805))

(assert (=> b!1864662 m!2288137))

(assert (=> b!1864662 m!2288773))

(declare-fun m!2288945 () Bool)

(assert (=> d!569166 m!2288945))

(assert (=> d!569166 m!2288133))

(declare-fun m!2288947 () Bool)

(assert (=> d!569166 m!2288947))

(assert (=> d!569166 m!2288137))

(assert (=> d!569166 m!2288779))

(assert (=> b!1864661 m!2288137))

(declare-fun m!2288949 () Bool)

(assert (=> b!1864661 m!2288949))

(assert (=> b!1864361 d!569166))

(assert (=> b!1864361 d!568970))

(assert (=> b!1864361 d!568928))

(assert (=> b!1864021 d!568988))

(assert (=> b!1864021 d!568990))

(assert (=> b!1864202 d!569142))

(assert (=> b!1864202 d!569144))

(declare-fun d!569170 () Bool)

(declare-fun c!303741 () Bool)

(assert (=> d!569170 (= c!303741 ((_ is Node!6864) (left!16649 (right!16979 t!4595))))))

(declare-fun e!1190352 () Bool)

(assert (=> d!569170 (= (inv!27312 (left!16649 (right!16979 t!4595))) e!1190352)))

(declare-fun b!1864668 () Bool)

(assert (=> b!1864668 (= e!1190352 (inv!27316 (left!16649 (right!16979 t!4595))))))

(declare-fun b!1864669 () Bool)

(declare-fun e!1190353 () Bool)

(assert (=> b!1864669 (= e!1190352 e!1190353)))

(declare-fun res!834956 () Bool)

(assert (=> b!1864669 (= res!834956 (not ((_ is Leaf!10064) (left!16649 (right!16979 t!4595)))))))

(assert (=> b!1864669 (=> res!834956 e!1190353)))

(declare-fun b!1864670 () Bool)

(assert (=> b!1864670 (= e!1190353 (inv!27317 (left!16649 (right!16979 t!4595))))))

(assert (= (and d!569170 c!303741) b!1864668))

(assert (= (and d!569170 (not c!303741)) b!1864669))

(assert (= (and b!1864669 (not res!834956)) b!1864670))

(declare-fun m!2288951 () Bool)

(assert (=> b!1864668 m!2288951))

(declare-fun m!2288953 () Bool)

(assert (=> b!1864670 m!2288953))

(assert (=> b!1864382 d!569170))

(declare-fun d!569172 () Bool)

(declare-fun c!303742 () Bool)

(assert (=> d!569172 (= c!303742 ((_ is Node!6864) (right!16979 (right!16979 t!4595))))))

(declare-fun e!1190354 () Bool)

(assert (=> d!569172 (= (inv!27312 (right!16979 (right!16979 t!4595))) e!1190354)))

(declare-fun b!1864671 () Bool)

(assert (=> b!1864671 (= e!1190354 (inv!27316 (right!16979 (right!16979 t!4595))))))

(declare-fun b!1864672 () Bool)

(declare-fun e!1190355 () Bool)

(assert (=> b!1864672 (= e!1190354 e!1190355)))

(declare-fun res!834957 () Bool)

(assert (=> b!1864672 (= res!834957 (not ((_ is Leaf!10064) (right!16979 (right!16979 t!4595)))))))

(assert (=> b!1864672 (=> res!834957 e!1190355)))

(declare-fun b!1864673 () Bool)

(assert (=> b!1864673 (= e!1190355 (inv!27317 (right!16979 (right!16979 t!4595))))))

(assert (= (and d!569172 c!303742) b!1864671))

(assert (= (and d!569172 (not c!303742)) b!1864672))

(assert (= (and b!1864672 (not res!834957)) b!1864673))

(declare-fun m!2288955 () Bool)

(assert (=> b!1864671 m!2288955))

(declare-fun m!2288959 () Bool)

(assert (=> b!1864673 m!2288959))

(assert (=> b!1864382 d!569172))

(declare-fun b!1864676 () Bool)

(declare-fun res!834959 () Bool)

(declare-fun e!1190356 () Bool)

(assert (=> b!1864676 (=> (not res!834959) (not e!1190356))))

(declare-fun lt!718422 () List!20751)

(assert (=> b!1864676 (= res!834959 (= (size!16371 lt!718422) (+ (size!16371 (list!8442 (left!16649 (left!16649 t!4595)))) (size!16371 (list!8442 (right!16979 (left!16649 t!4595)))))))))

(declare-fun d!569174 () Bool)

(assert (=> d!569174 e!1190356))

(declare-fun res!834958 () Bool)

(assert (=> d!569174 (=> (not res!834958) (not e!1190356))))

(assert (=> d!569174 (= res!834958 (= (content!3073 lt!718422) ((_ map or) (content!3073 (list!8442 (left!16649 (left!16649 t!4595)))) (content!3073 (list!8442 (right!16979 (left!16649 t!4595)))))))))

(declare-fun e!1190357 () List!20751)

(assert (=> d!569174 (= lt!718422 e!1190357)))

(declare-fun c!303743 () Bool)

(assert (=> d!569174 (= c!303743 ((_ is Nil!20669) (list!8442 (left!16649 (left!16649 t!4595)))))))

(assert (=> d!569174 (= (++!5596 (list!8442 (left!16649 (left!16649 t!4595))) (list!8442 (right!16979 (left!16649 t!4595)))) lt!718422)))

(declare-fun b!1864674 () Bool)

(assert (=> b!1864674 (= e!1190357 (list!8442 (right!16979 (left!16649 t!4595))))))

(declare-fun b!1864675 () Bool)

(assert (=> b!1864675 (= e!1190357 (Cons!20669 (h!26070 (list!8442 (left!16649 (left!16649 t!4595)))) (++!5596 (t!172842 (list!8442 (left!16649 (left!16649 t!4595)))) (list!8442 (right!16979 (left!16649 t!4595))))))))

(declare-fun b!1864677 () Bool)

(assert (=> b!1864677 (= e!1190356 (or (not (= (list!8442 (right!16979 (left!16649 t!4595))) Nil!20669)) (= lt!718422 (list!8442 (left!16649 (left!16649 t!4595))))))))

(assert (= (and d!569174 c!303743) b!1864674))

(assert (= (and d!569174 (not c!303743)) b!1864675))

(assert (= (and d!569174 res!834958) b!1864676))

(assert (= (and b!1864676 res!834959) b!1864677))

(declare-fun m!2288969 () Bool)

(assert (=> b!1864676 m!2288969))

(assert (=> b!1864676 m!2288369))

(declare-fun m!2288971 () Bool)

(assert (=> b!1864676 m!2288971))

(assert (=> b!1864676 m!2288365))

(declare-fun m!2288973 () Bool)

(assert (=> b!1864676 m!2288973))

(declare-fun m!2288975 () Bool)

(assert (=> d!569174 m!2288975))

(assert (=> d!569174 m!2288369))

(declare-fun m!2288977 () Bool)

(assert (=> d!569174 m!2288977))

(assert (=> d!569174 m!2288365))

(declare-fun m!2288979 () Bool)

(assert (=> d!569174 m!2288979))

(assert (=> b!1864675 m!2288365))

(declare-fun m!2288981 () Bool)

(assert (=> b!1864675 m!2288981))

(assert (=> b!1864299 d!569174))

(assert (=> b!1864299 d!569012))

(assert (=> b!1864299 d!569002))

(declare-fun b!1864680 () Bool)

(declare-fun res!834961 () Bool)

(declare-fun e!1190358 () Bool)

(assert (=> b!1864680 (=> (not res!834961) (not e!1190358))))

(declare-fun lt!718423 () List!20751)

(assert (=> b!1864680 (= res!834961 (= (size!16371 lt!718423) (+ (size!16371 (t!172842 (tail!2825 lt!718266))) (size!16371 lt!718267))))))

(declare-fun d!569182 () Bool)

(assert (=> d!569182 e!1190358))

(declare-fun res!834960 () Bool)

(assert (=> d!569182 (=> (not res!834960) (not e!1190358))))

(assert (=> d!569182 (= res!834960 (= (content!3073 lt!718423) ((_ map or) (content!3073 (t!172842 (tail!2825 lt!718266))) (content!3073 lt!718267))))))

(declare-fun e!1190359 () List!20751)

(assert (=> d!569182 (= lt!718423 e!1190359)))

(declare-fun c!303744 () Bool)

(assert (=> d!569182 (= c!303744 ((_ is Nil!20669) (t!172842 (tail!2825 lt!718266))))))

(assert (=> d!569182 (= (++!5596 (t!172842 (tail!2825 lt!718266)) lt!718267) lt!718423)))

(declare-fun b!1864678 () Bool)

(assert (=> b!1864678 (= e!1190359 lt!718267)))

(declare-fun b!1864679 () Bool)

(assert (=> b!1864679 (= e!1190359 (Cons!20669 (h!26070 (t!172842 (tail!2825 lt!718266))) (++!5596 (t!172842 (t!172842 (tail!2825 lt!718266))) lt!718267)))))

(declare-fun b!1864681 () Bool)

(assert (=> b!1864681 (= e!1190358 (or (not (= lt!718267 Nil!20669)) (= lt!718423 (t!172842 (tail!2825 lt!718266)))))))

(assert (= (and d!569182 c!303744) b!1864678))

(assert (= (and d!569182 (not c!303744)) b!1864679))

(assert (= (and d!569182 res!834960) b!1864680))

(assert (= (and b!1864680 res!834961) b!1864681))

(declare-fun m!2288983 () Bool)

(assert (=> b!1864680 m!2288983))

(assert (=> b!1864680 m!2288789))

(assert (=> b!1864680 m!2288405))

(declare-fun m!2288985 () Bool)

(assert (=> d!569182 m!2288985))

(assert (=> d!569182 m!2288815))

(assert (=> d!569182 m!2288411))

(declare-fun m!2288987 () Bool)

(assert (=> b!1864679 m!2288987))

(assert (=> b!1864339 d!569182))

(assert (=> b!1864364 d!569022))

(assert (=> b!1864364 d!569024))

(declare-fun b!1864682 () Bool)

(declare-fun e!1190362 () Conc!6864)

(assert (=> b!1864682 (= e!1190362 Empty!6864)))

(declare-fun d!569184 () Bool)

(declare-fun e!1190364 () Bool)

(assert (=> d!569184 e!1190364))

(declare-fun res!834962 () Bool)

(assert (=> d!569184 (=> (not res!834962) (not e!1190364))))

(declare-fun lt!718424 () Conc!6864)

(assert (=> d!569184 (= res!834962 (isBalanced!2165 lt!718424))))

(declare-fun e!1190363 () Conc!6864)

(assert (=> d!569184 (= lt!718424 e!1190363)))

(declare-fun c!303745 () Bool)

(assert (=> d!569184 (= c!303745 ((_ is Leaf!10064) (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))))))

(assert (=> d!569184 (isBalanced!2165 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595))))))

(assert (=> d!569184 (= (tail!2824 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))) lt!718424)))

(declare-fun b!1864683 () Bool)

(declare-fun e!1190361 () Bool)

(assert (=> b!1864683 (= e!1190361 (isEmpty!12881 (left!16649 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595))))))))

(declare-fun b!1864684 () Bool)

(declare-fun lt!718427 () Unit!35291)

(declare-fun lt!718425 () Unit!35291)

(assert (=> b!1864684 (= lt!718427 lt!718425)))

(declare-fun call!115860 () List!20751)

(declare-fun lt!718426 () List!20751)

(assert (=> b!1864684 (= call!115860 (slice!572 lt!718426 1 (size!16371 lt!718426)))))

(assert (=> b!1864684 (= lt!718425 (sliceTailLemma!32 lt!718426))))

(assert (=> b!1864684 (= lt!718426 (list!8444 (xs!9740 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595))))))))

(assert (=> b!1864684 (= e!1190362 (Leaf!10064 (slice!573 (xs!9740 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))) 1 (csize!13959 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595))))) (- (csize!13959 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))) 1)))))

(declare-fun bm!115855 () Bool)

(declare-fun lt!718429 () List!20751)

(assert (=> bm!115855 (= call!115860 (tail!2825 (ite c!303745 lt!718426 lt!718429)))))

(declare-fun b!1864685 () Bool)

(assert (=> b!1864685 (= e!1190364 (= (list!8442 lt!718424) (tail!2825 (list!8442 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))))))))

(declare-fun b!1864686 () Bool)

(assert (=> b!1864686 (= e!1190363 e!1190362)))

(declare-fun c!303746 () Bool)

(assert (=> b!1864686 (= c!303746 (= (csize!13959 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))) 1))))

(declare-fun b!1864687 () Bool)

(declare-fun lt!718430 () Unit!35291)

(declare-fun lt!718431 () Unit!35291)

(assert (=> b!1864687 (= lt!718430 lt!718431)))

(declare-fun lt!718428 () List!20751)

(assert (=> b!1864687 (= (tail!2825 (++!5596 lt!718429 lt!718428)) (++!5596 call!115860 lt!718428))))

(assert (=> b!1864687 (= lt!718431 (lemmaTailOfConcatIsTailConcat!36 lt!718429 lt!718428))))

(assert (=> b!1864687 (= lt!718428 (list!8442 (right!16979 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595))))))))

(assert (=> b!1864687 (= lt!718429 (list!8442 (left!16649 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595))))))))

(declare-fun e!1190360 () Conc!6864)

(declare-fun call!115861 () Conc!6864)

(assert (=> b!1864687 (= e!1190360 (++!5595 call!115861 (right!16979 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595))))))))

(declare-fun b!1864688 () Bool)

(assert (=> b!1864688 (= e!1190360 call!115861)))

(declare-fun b!1864689 () Bool)

(assert (=> b!1864689 (= e!1190363 e!1190360)))

(declare-fun res!834963 () Bool)

(assert (=> b!1864689 (= res!834963 ((_ is Node!6864) (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))))))

(assert (=> b!1864689 (=> (not res!834963) (not e!1190361))))

(declare-fun c!303747 () Bool)

(assert (=> b!1864689 (= c!303747 e!1190361)))

(declare-fun bm!115856 () Bool)

(assert (=> bm!115856 (= call!115861 (tail!2824 (ite c!303747 (right!16979 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))) (left!16649 (ite c!303651 (right!16979 (left!16649 t!4595)) (left!16649 (left!16649 t!4595)))))))))

(assert (= (and d!569184 c!303745) b!1864686))

(assert (= (and d!569184 (not c!303745)) b!1864689))

(assert (= (and b!1864686 c!303746) b!1864682))

(assert (= (and b!1864686 (not c!303746)) b!1864684))

(assert (= (and b!1864689 res!834963) b!1864683))

(assert (= (and b!1864689 c!303747) b!1864688))

(assert (= (and b!1864689 (not c!303747)) b!1864687))

(assert (= (or b!1864688 b!1864687) bm!115856))

(assert (= (or b!1864684 b!1864687) bm!115855))

(assert (= (and d!569184 res!834962) b!1864685))

(declare-fun m!2288993 () Bool)

(assert (=> d!569184 m!2288993))

(declare-fun m!2288995 () Bool)

(assert (=> d!569184 m!2288995))

(declare-fun m!2288999 () Bool)

(assert (=> bm!115855 m!2288999))

(declare-fun m!2289001 () Bool)

(assert (=> b!1864684 m!2289001))

(declare-fun m!2289003 () Bool)

(assert (=> b!1864684 m!2289003))

(declare-fun m!2289005 () Bool)

(assert (=> b!1864684 m!2289005))

(declare-fun m!2289007 () Bool)

(assert (=> b!1864684 m!2289007))

(assert (=> b!1864684 m!2289003))

(declare-fun m!2289009 () Bool)

(assert (=> b!1864684 m!2289009))

(declare-fun m!2289011 () Bool)

(assert (=> bm!115856 m!2289011))

(declare-fun m!2289013 () Bool)

(assert (=> b!1864683 m!2289013))

(declare-fun m!2289015 () Bool)

(assert (=> b!1864685 m!2289015))

(declare-fun m!2289017 () Bool)

(assert (=> b!1864685 m!2289017))

(assert (=> b!1864685 m!2289017))

(declare-fun m!2289019 () Bool)

(assert (=> b!1864685 m!2289019))

(declare-fun m!2289021 () Bool)

(assert (=> b!1864687 m!2289021))

(declare-fun m!2289023 () Bool)

(assert (=> b!1864687 m!2289023))

(declare-fun m!2289025 () Bool)

(assert (=> b!1864687 m!2289025))

(assert (=> b!1864687 m!2289021))

(declare-fun m!2289027 () Bool)

(assert (=> b!1864687 m!2289027))

(declare-fun m!2289029 () Bool)

(assert (=> b!1864687 m!2289029))

(declare-fun m!2289031 () Bool)

(assert (=> b!1864687 m!2289031))

(declare-fun m!2289033 () Bool)

(assert (=> b!1864687 m!2289033))

(assert (=> bm!115820 d!569184))

(declare-fun b!1864696 () Bool)

(declare-fun res!834967 () Bool)

(declare-fun e!1190367 () Bool)

(assert (=> b!1864696 (=> (not res!834967) (not e!1190367))))

(declare-fun lt!718434 () List!20751)

(assert (=> b!1864696 (= res!834967 (= (size!16371 lt!718434) (+ (size!16371 (t!172842 lt!718266)) (size!16371 lt!718267))))))

(declare-fun d!569194 () Bool)

(assert (=> d!569194 e!1190367))

(declare-fun res!834966 () Bool)

(assert (=> d!569194 (=> (not res!834966) (not e!1190367))))

(assert (=> d!569194 (= res!834966 (= (content!3073 lt!718434) ((_ map or) (content!3073 (t!172842 lt!718266)) (content!3073 lt!718267))))))

(declare-fun e!1190368 () List!20751)

(assert (=> d!569194 (= lt!718434 e!1190368)))

(declare-fun c!303749 () Bool)

(assert (=> d!569194 (= c!303749 ((_ is Nil!20669) (t!172842 lt!718266)))))

(assert (=> d!569194 (= (++!5596 (t!172842 lt!718266) lt!718267) lt!718434)))

(declare-fun b!1864694 () Bool)

(assert (=> b!1864694 (= e!1190368 lt!718267)))

(declare-fun b!1864695 () Bool)

(assert (=> b!1864695 (= e!1190368 (Cons!20669 (h!26070 (t!172842 lt!718266)) (++!5596 (t!172842 (t!172842 lt!718266)) lt!718267)))))

(declare-fun b!1864697 () Bool)

(assert (=> b!1864697 (= e!1190367 (or (not (= lt!718267 Nil!20669)) (= lt!718434 (t!172842 lt!718266))))))

(assert (= (and d!569194 c!303749) b!1864694))

(assert (= (and d!569194 (not c!303749)) b!1864695))

(assert (= (and d!569194 res!834966) b!1864696))

(assert (= (and b!1864696 res!834967) b!1864697))

(declare-fun m!2289041 () Bool)

(assert (=> b!1864696 m!2289041))

(assert (=> b!1864696 m!2288755))

(assert (=> b!1864696 m!2288405))

(declare-fun m!2289045 () Bool)

(assert (=> d!569194 m!2289045))

(assert (=> d!569194 m!2288667))

(assert (=> d!569194 m!2288411))

(declare-fun m!2289049 () Bool)

(assert (=> b!1864695 m!2289049))

(assert (=> b!1864343 d!569194))

(declare-fun d!569196 () Bool)

(declare-fun res!834968 () Bool)

(declare-fun e!1190369 () Bool)

(assert (=> d!569196 (=> (not res!834968) (not e!1190369))))

(assert (=> d!569196 (= res!834968 (<= (size!16371 (list!8444 (xs!9740 (left!16649 t!4595)))) 512))))

(assert (=> d!569196 (= (inv!27317 (left!16649 t!4595)) e!1190369)))

(declare-fun b!1864698 () Bool)

(declare-fun res!834969 () Bool)

(assert (=> b!1864698 (=> (not res!834969) (not e!1190369))))

(assert (=> b!1864698 (= res!834969 (= (csize!13959 (left!16649 t!4595)) (size!16371 (list!8444 (xs!9740 (left!16649 t!4595))))))))

(declare-fun b!1864699 () Bool)

(assert (=> b!1864699 (= e!1190369 (and (> (csize!13959 (left!16649 t!4595)) 0) (<= (csize!13959 (left!16649 t!4595)) 512)))))

(assert (= (and d!569196 res!834968) b!1864698))

(assert (= (and b!1864698 res!834969) b!1864699))

(assert (=> d!569196 m!2288347))

(assert (=> d!569196 m!2288347))

(declare-fun m!2289055 () Bool)

(assert (=> d!569196 m!2289055))

(assert (=> b!1864698 m!2288347))

(assert (=> b!1864698 m!2288347))

(assert (=> b!1864698 m!2289055))

(assert (=> b!1864354 d!569196))

(assert (=> b!1864155 d!569024))

(assert (=> b!1864155 d!569064))

(assert (=> b!1864366 d!569162))

(declare-fun d!569200 () Bool)

(assert (=> d!569200 (= (height!1053 (ite c!303617 (left!16649 (tail!2824 (left!16649 t!4595))) lt!718290)) (ite ((_ is Empty!6864) (ite c!303617 (left!16649 (tail!2824 (left!16649 t!4595))) lt!718290)) 0 (ite ((_ is Leaf!10064) (ite c!303617 (left!16649 (tail!2824 (left!16649 t!4595))) lt!718290)) 1 (cheight!7075 (ite c!303617 (left!16649 (tail!2824 (left!16649 t!4595))) lt!718290)))))))

(assert (=> bm!115788 d!569200))

(declare-fun b!1864702 () Bool)

(declare-fun res!834971 () Bool)

(declare-fun e!1190370 () Bool)

(assert (=> b!1864702 (=> (not res!834971) (not e!1190370))))

(declare-fun lt!718435 () List!20751)

(assert (=> b!1864702 (= res!834971 (= (size!16371 lt!718435) (+ (size!16371 (list!8442 (left!16649 (right!16979 t!4595)))) (size!16371 (list!8442 (right!16979 (right!16979 t!4595)))))))))

(declare-fun d!569202 () Bool)

(assert (=> d!569202 e!1190370))

(declare-fun res!834970 () Bool)

(assert (=> d!569202 (=> (not res!834970) (not e!1190370))))

(assert (=> d!569202 (= res!834970 (= (content!3073 lt!718435) ((_ map or) (content!3073 (list!8442 (left!16649 (right!16979 t!4595)))) (content!3073 (list!8442 (right!16979 (right!16979 t!4595)))))))))

(declare-fun e!1190371 () List!20751)

(assert (=> d!569202 (= lt!718435 e!1190371)))

(declare-fun c!303750 () Bool)

(assert (=> d!569202 (= c!303750 ((_ is Nil!20669) (list!8442 (left!16649 (right!16979 t!4595)))))))

(assert (=> d!569202 (= (++!5596 (list!8442 (left!16649 (right!16979 t!4595))) (list!8442 (right!16979 (right!16979 t!4595)))) lt!718435)))

(declare-fun b!1864700 () Bool)

(assert (=> b!1864700 (= e!1190371 (list!8442 (right!16979 (right!16979 t!4595))))))

(declare-fun b!1864701 () Bool)

(assert (=> b!1864701 (= e!1190371 (Cons!20669 (h!26070 (list!8442 (left!16649 (right!16979 t!4595)))) (++!5596 (t!172842 (list!8442 (left!16649 (right!16979 t!4595)))) (list!8442 (right!16979 (right!16979 t!4595))))))))

(declare-fun b!1864703 () Bool)

(assert (=> b!1864703 (= e!1190370 (or (not (= (list!8442 (right!16979 (right!16979 t!4595))) Nil!20669)) (= lt!718435 (list!8442 (left!16649 (right!16979 t!4595))))))))

(assert (= (and d!569202 c!303750) b!1864700))

(assert (= (and d!569202 (not c!303750)) b!1864701))

(assert (= (and d!569202 res!834970) b!1864702))

(assert (= (and b!1864702 res!834971) b!1864703))

(declare-fun m!2289057 () Bool)

(assert (=> b!1864702 m!2289057))

(assert (=> b!1864702 m!2288147))

(declare-fun m!2289059 () Bool)

(assert (=> b!1864702 m!2289059))

(assert (=> b!1864702 m!2288149))

(declare-fun m!2289061 () Bool)

(assert (=> b!1864702 m!2289061))

(declare-fun m!2289063 () Bool)

(assert (=> d!569202 m!2289063))

(assert (=> d!569202 m!2288147))

(declare-fun m!2289065 () Bool)

(assert (=> d!569202 m!2289065))

(assert (=> d!569202 m!2288149))

(declare-fun m!2289067 () Bool)

(assert (=> d!569202 m!2289067))

(assert (=> b!1864701 m!2288149))

(declare-fun m!2289069 () Bool)

(assert (=> b!1864701 m!2289069))

(assert (=> b!1864039 d!569202))

(declare-fun b!1864706 () Bool)

(declare-fun e!1190373 () List!20751)

(assert (=> b!1864706 (= e!1190373 (list!8444 (xs!9740 (left!16649 (right!16979 t!4595)))))))

(declare-fun b!1864707 () Bool)

(assert (=> b!1864707 (= e!1190373 (++!5596 (list!8442 (left!16649 (left!16649 (right!16979 t!4595)))) (list!8442 (right!16979 (left!16649 (right!16979 t!4595))))))))

(declare-fun b!1864704 () Bool)

(declare-fun e!1190372 () List!20751)

(assert (=> b!1864704 (= e!1190372 Nil!20669)))

(declare-fun b!1864705 () Bool)

(assert (=> b!1864705 (= e!1190372 e!1190373)))

(declare-fun c!303752 () Bool)

(assert (=> b!1864705 (= c!303752 ((_ is Leaf!10064) (left!16649 (right!16979 t!4595))))))

(declare-fun d!569204 () Bool)

(declare-fun c!303751 () Bool)

(assert (=> d!569204 (= c!303751 ((_ is Empty!6864) (left!16649 (right!16979 t!4595))))))

(assert (=> d!569204 (= (list!8442 (left!16649 (right!16979 t!4595))) e!1190372)))

(assert (= (and d!569204 c!303751) b!1864704))

(assert (= (and d!569204 (not c!303751)) b!1864705))

(assert (= (and b!1864705 c!303752) b!1864706))

(assert (= (and b!1864705 (not c!303752)) b!1864707))

(declare-fun m!2289071 () Bool)

(assert (=> b!1864706 m!2289071))

(assert (=> b!1864707 m!2288569))

(assert (=> b!1864707 m!2288571))

(assert (=> b!1864707 m!2288569))

(assert (=> b!1864707 m!2288571))

(declare-fun m!2289073 () Bool)

(assert (=> b!1864707 m!2289073))

(assert (=> b!1864039 d!569204))

(declare-fun b!1864710 () Bool)

(declare-fun e!1190375 () List!20751)

(assert (=> b!1864710 (= e!1190375 (list!8444 (xs!9740 (right!16979 (right!16979 t!4595)))))))

(declare-fun b!1864711 () Bool)

(assert (=> b!1864711 (= e!1190375 (++!5596 (list!8442 (left!16649 (right!16979 (right!16979 t!4595)))) (list!8442 (right!16979 (right!16979 (right!16979 t!4595))))))))

(declare-fun b!1864708 () Bool)

(declare-fun e!1190374 () List!20751)

(assert (=> b!1864708 (= e!1190374 Nil!20669)))

(declare-fun b!1864709 () Bool)

(assert (=> b!1864709 (= e!1190374 e!1190375)))

(declare-fun c!303754 () Bool)

(assert (=> b!1864709 (= c!303754 ((_ is Leaf!10064) (right!16979 (right!16979 t!4595))))))

(declare-fun d!569206 () Bool)

(declare-fun c!303753 () Bool)

(assert (=> d!569206 (= c!303753 ((_ is Empty!6864) (right!16979 (right!16979 t!4595))))))

(assert (=> d!569206 (= (list!8442 (right!16979 (right!16979 t!4595))) e!1190374)))

(assert (= (and d!569206 c!303753) b!1864708))

(assert (= (and d!569206 (not c!303753)) b!1864709))

(assert (= (and b!1864709 c!303754) b!1864710))

(assert (= (and b!1864709 (not c!303754)) b!1864711))

(declare-fun m!2289075 () Bool)

(assert (=> b!1864710 m!2289075))

(declare-fun m!2289077 () Bool)

(assert (=> b!1864711 m!2289077))

(declare-fun m!2289079 () Bool)

(assert (=> b!1864711 m!2289079))

(assert (=> b!1864711 m!2289077))

(assert (=> b!1864711 m!2289079))

(declare-fun m!2289081 () Bool)

(assert (=> b!1864711 m!2289081))

(assert (=> b!1864039 d!569206))

(declare-fun b!1864712 () Bool)

(declare-fun e!1190376 () Bool)

(declare-fun tp!530975 () Bool)

(assert (=> b!1864712 (= e!1190376 (and tp_is_empty!8651 tp!530975))))

(assert (=> b!1864389 (= tp!530974 e!1190376)))

(assert (= (and b!1864389 ((_ is Cons!20669) (t!172842 (innerList!6924 (xs!9740 t!4595))))) b!1864712))

(declare-fun b!1864713 () Bool)

(declare-fun e!1190377 () Bool)

(declare-fun tp!530976 () Bool)

(assert (=> b!1864713 (= e!1190377 (and tp_is_empty!8651 tp!530976))))

(assert (=> b!1864381 (= tp!530968 e!1190377)))

(assert (= (and b!1864381 ((_ is Cons!20669) (innerList!6924 (xs!9740 (left!16649 t!4595))))) b!1864713))

(declare-fun b!1864714 () Bool)

(declare-fun e!1190378 () Bool)

(declare-fun tp!530977 () Bool)

(assert (=> b!1864714 (= e!1190378 (and tp_is_empty!8651 tp!530977))))

(assert (=> b!1864384 (= tp!530971 e!1190378)))

(assert (= (and b!1864384 ((_ is Cons!20669) (innerList!6924 (xs!9740 (right!16979 t!4595))))) b!1864714))

(declare-fun tp!530979 () Bool)

(declare-fun tp!530978 () Bool)

(declare-fun b!1864715 () Bool)

(declare-fun e!1190379 () Bool)

(assert (=> b!1864715 (= e!1190379 (and (inv!27312 (left!16649 (left!16649 (left!16649 t!4595)))) tp!530978 (inv!27312 (right!16979 (left!16649 (left!16649 t!4595)))) tp!530979))))

(declare-fun b!1864717 () Bool)

(declare-fun e!1190380 () Bool)

(declare-fun tp!530980 () Bool)

(assert (=> b!1864717 (= e!1190380 tp!530980)))

(declare-fun b!1864716 () Bool)

(assert (=> b!1864716 (= e!1190379 (and (inv!27313 (xs!9740 (left!16649 (left!16649 t!4595)))) e!1190380))))

(assert (=> b!1864379 (= tp!530966 (and (inv!27312 (left!16649 (left!16649 t!4595))) e!1190379))))

(assert (= (and b!1864379 ((_ is Node!6864) (left!16649 (left!16649 t!4595)))) b!1864715))

(assert (= b!1864716 b!1864717))

(assert (= (and b!1864379 ((_ is Leaf!10064) (left!16649 (left!16649 t!4595)))) b!1864716))

(declare-fun m!2289083 () Bool)

(assert (=> b!1864715 m!2289083))

(declare-fun m!2289085 () Bool)

(assert (=> b!1864715 m!2289085))

(declare-fun m!2289087 () Bool)

(assert (=> b!1864716 m!2289087))

(assert (=> b!1864379 m!2288459))

(declare-fun b!1864718 () Bool)

(declare-fun e!1190381 () Bool)

(declare-fun tp!530981 () Bool)

(declare-fun tp!530982 () Bool)

(assert (=> b!1864718 (= e!1190381 (and (inv!27312 (left!16649 (right!16979 (left!16649 t!4595)))) tp!530981 (inv!27312 (right!16979 (right!16979 (left!16649 t!4595)))) tp!530982))))

(declare-fun b!1864720 () Bool)

(declare-fun e!1190382 () Bool)

(declare-fun tp!530983 () Bool)

(assert (=> b!1864720 (= e!1190382 tp!530983)))

(declare-fun b!1864719 () Bool)

(assert (=> b!1864719 (= e!1190381 (and (inv!27313 (xs!9740 (right!16979 (left!16649 t!4595)))) e!1190382))))

(assert (=> b!1864379 (= tp!530967 (and (inv!27312 (right!16979 (left!16649 t!4595))) e!1190381))))

(assert (= (and b!1864379 ((_ is Node!6864) (right!16979 (left!16649 t!4595)))) b!1864718))

(assert (= b!1864719 b!1864720))

(assert (= (and b!1864379 ((_ is Leaf!10064) (right!16979 (left!16649 t!4595)))) b!1864719))

(declare-fun m!2289089 () Bool)

(assert (=> b!1864718 m!2289089))

(declare-fun m!2289091 () Bool)

(assert (=> b!1864718 m!2289091))

(declare-fun m!2289093 () Bool)

(assert (=> b!1864719 m!2289093))

(assert (=> b!1864379 m!2288461))

(declare-fun b!1864721 () Bool)

(declare-fun e!1190383 () Bool)

(declare-fun tp!530985 () Bool)

(declare-fun tp!530984 () Bool)

(assert (=> b!1864721 (= e!1190383 (and (inv!27312 (left!16649 (left!16649 (right!16979 t!4595)))) tp!530984 (inv!27312 (right!16979 (left!16649 (right!16979 t!4595)))) tp!530985))))

(declare-fun b!1864723 () Bool)

(declare-fun e!1190384 () Bool)

(declare-fun tp!530986 () Bool)

(assert (=> b!1864723 (= e!1190384 tp!530986)))

(declare-fun b!1864722 () Bool)

(assert (=> b!1864722 (= e!1190383 (and (inv!27313 (xs!9740 (left!16649 (right!16979 t!4595)))) e!1190384))))

(assert (=> b!1864382 (= tp!530969 (and (inv!27312 (left!16649 (right!16979 t!4595))) e!1190383))))

(assert (= (and b!1864382 ((_ is Node!6864) (left!16649 (right!16979 t!4595)))) b!1864721))

(assert (= b!1864722 b!1864723))

(assert (= (and b!1864382 ((_ is Leaf!10064) (left!16649 (right!16979 t!4595)))) b!1864722))

(declare-fun m!2289095 () Bool)

(assert (=> b!1864721 m!2289095))

(declare-fun m!2289097 () Bool)

(assert (=> b!1864721 m!2289097))

(declare-fun m!2289099 () Bool)

(assert (=> b!1864722 m!2289099))

(assert (=> b!1864382 m!2288465))

(declare-fun b!1864724 () Bool)

(declare-fun tp!530988 () Bool)

(declare-fun tp!530987 () Bool)

(declare-fun e!1190385 () Bool)

(assert (=> b!1864724 (= e!1190385 (and (inv!27312 (left!16649 (right!16979 (right!16979 t!4595)))) tp!530987 (inv!27312 (right!16979 (right!16979 (right!16979 t!4595)))) tp!530988))))

(declare-fun b!1864726 () Bool)

(declare-fun e!1190386 () Bool)

(declare-fun tp!530989 () Bool)

(assert (=> b!1864726 (= e!1190386 tp!530989)))

(declare-fun b!1864725 () Bool)

(assert (=> b!1864725 (= e!1190385 (and (inv!27313 (xs!9740 (right!16979 (right!16979 t!4595)))) e!1190386))))

(assert (=> b!1864382 (= tp!530970 (and (inv!27312 (right!16979 (right!16979 t!4595))) e!1190385))))

(assert (= (and b!1864382 ((_ is Node!6864) (right!16979 (right!16979 t!4595)))) b!1864724))

(assert (= b!1864725 b!1864726))

(assert (= (and b!1864382 ((_ is Leaf!10064) (right!16979 (right!16979 t!4595)))) b!1864725))

(declare-fun m!2289101 () Bool)

(assert (=> b!1864724 m!2289101))

(declare-fun m!2289103 () Bool)

(assert (=> b!1864724 m!2289103))

(declare-fun m!2289105 () Bool)

(assert (=> b!1864725 m!2289105))

(assert (=> b!1864382 m!2288467))

(check-sat (not d!569036) (not b!1864490) (not b!1864653) (not b!1864419) (not d!569004) (not d!569068) (not b!1864577) (not b!1864652) (not d!569030) (not b!1864684) (not b!1864551) (not bm!115847) (not b!1864661) (not d!569040) (not b!1864706) (not bm!115824) (not b!1864722) (not bm!115855) (not b!1864581) (not b!1864647) (not d!569034) (not b!1864479) tp_is_empty!8651 (not b!1864585) (not b!1864606) (not b!1864464) (not d!569174) (not b!1864650) (not bm!115832) (not b!1864450) (not b!1864473) (not b!1864445) (not d!569166) (not b!1864603) (not b!1864712) (not d!569196) (not b!1864575) (not b!1864497) (not b!1864460) (not b!1864499) (not b!1864687) (not b!1864714) (not b!1864668) (not b!1864670) (not b!1864676) (not b!1864501) (not b!1864608) (not b!1864628) (not d!569184) (not d!569156) (not b!1864542) (not b!1864695) (not b!1864455) (not b!1864498) (not b!1864561) (not d!569158) (not b!1864421) (not bm!115842) (not b!1864492) (not b!1864578) (not b!1864557) (not b!1864726) (not b!1864449) (not b!1864680) (not bm!115856) (not bm!115821) (not bm!115829) (not d!569082) (not b!1864654) (not b!1864573) (not b!1864655) (not b!1864657) (not b!1864601) (not b!1864496) (not d!569108) (not b!1864725) (not d!569146) (not bm!115839) (not b!1864685) (not d!569028) (not b!1864707) (not d!569066) (not b!1864399) (not b!1864599) (not b!1864422) (not b!1864673) (not b!1864457) (not b!1864587) (not b!1864675) (not b!1864641) (not b!1864495) (not b!1864646) (not bm!115833) (not b!1864576) (not b!1864713) (not b!1864458) (not b!1864701) (not d!569128) (not b!1864720) (not b!1864456) (not b!1864651) (not b!1864403) (not b!1864514) (not b!1864505) (not b!1864379) (not b!1864391) (not d!569096) (not b!1864698) (not b!1864504) (not b!1864454) (not b!1864656) (not b!1864649) (not b!1864396) (not bm!115851) (not d!569094) (not d!569070) (not b!1864493) (not b!1864607) (not d!569092) (not b!1864721) (not b!1864634) (not b!1864723) (not d!569182) (not b!1864459) (not b!1864622) (not b!1864426) (not b!1864425) (not b!1864461) (not b!1864397) (not b!1864560) (not b!1864724) (not b!1864582) (not b!1864648) (not d!569010) (not b!1864463) (not b!1864448) (not d!569132) (not b!1864545) (not b!1864566) (not b!1864415) (not b!1864710) (not bm!115823) (not b!1864500) (not d!569134) (not d!569008) (not b!1864565) (not b!1864453) (not b!1864716) (not bm!115852) (not b!1864409) (not b!1864640) (not b!1864711) (not b!1864452) (not bm!115850) (not d!569152) (not b!1864516) (not b!1864605) (not b!1864488) (not b!1864638) (not b!1864518) (not b!1864717) (not b!1864671) (not b!1864702) (not b!1864679) (not b!1864683) (not d!569000) (not b!1864719) (not b!1864400) (not b!1864718) (not bm!115834) (not b!1864465) (not d!569090) (not b!1864555) (not b!1864612) (not b!1864662) (not d!569194) (not b!1864604) (not b!1864571) (not b!1864570) (not b!1864462) (not b!1864392) (not b!1864715) (not bm!115841) (not d!569202) (not b!1864580) (not b!1864553) (not b!1864382) (not b!1864696) (not b!1864579))
(check-sat)
