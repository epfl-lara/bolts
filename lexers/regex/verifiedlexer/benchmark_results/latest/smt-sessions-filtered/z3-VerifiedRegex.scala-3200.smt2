; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186580 () Bool)

(assert start!186580)

(declare-fun b!1865019 () Bool)

(declare-fun e!1190542 () Bool)

(declare-fun tp!531037 () Bool)

(assert (=> b!1865019 (= e!1190542 tp!531037)))

(declare-fun b!1865020 () Bool)

(declare-fun res!835115 () Bool)

(declare-fun e!1190543 () Bool)

(assert (=> b!1865020 (=> (not res!835115) (not e!1190543))))

(declare-datatypes ((T!33074 0))(
  ( (T!33075 (val!5936 Int)) )
))
(declare-datatypes ((List!20753 0))(
  ( (Nil!20671) (Cons!20671 (h!26072 T!33074) (t!172856 List!20753)) )
))
(declare-datatypes ((IArray!13737 0))(
  ( (IArray!13738 (innerList!6926 List!20753)) )
))
(declare-datatypes ((Conc!6866 0))(
  ( (Node!6866 (left!16652 Conc!6866) (right!16982 Conc!6866) (csize!13962 Int) (cheight!7077 Int)) (Leaf!10067 (xs!9748 IArray!13737) (csize!13963 Int)) (Empty!6866) )
))
(declare-fun t!4595 () Conc!6866)

(declare-fun isEmpty!12885 (Conc!6866) Bool)

(assert (=> b!1865020 (= res!835115 (not (isEmpty!12885 t!4595)))))

(declare-fun b!1865021 () Bool)

(declare-fun res!835114 () Bool)

(assert (=> b!1865021 (=> (not res!835114) (not e!1190543))))

(declare-fun e!1190545 () Bool)

(assert (=> b!1865021 (= res!835114 e!1190545)))

(declare-fun res!835113 () Bool)

(assert (=> b!1865021 (=> res!835113 e!1190545)))

(get-info :version)

(assert (=> b!1865021 (= res!835113 (not ((_ is Node!6866) t!4595)))))

(declare-fun b!1865022 () Bool)

(declare-fun e!1190544 () Bool)

(declare-fun err!3129 () Conc!6866)

(declare-fun inv!27323 (IArray!13737) Bool)

(assert (=> b!1865022 (= e!1190544 (and (inv!27323 (xs!9748 err!3129)) e!1190542))))

(declare-fun b!1865023 () Bool)

(declare-fun e!1190546 () Bool)

(declare-fun e!1190547 () Bool)

(assert (=> b!1865023 (= e!1190546 (and (inv!27323 (xs!9748 t!4595)) e!1190547))))

(declare-fun b!1865024 () Bool)

(declare-fun res!835116 () Bool)

(assert (=> b!1865024 (=> (not res!835116) (not e!1190543))))

(assert (=> b!1865024 (= res!835116 (not ((_ is Leaf!10067) t!4595)))))

(declare-fun b!1865025 () Bool)

(assert (=> b!1865025 (= e!1190545 (not (isEmpty!12885 (left!16652 t!4595))))))

(declare-fun b!1865026 () Bool)

(declare-fun tp!531038 () Bool)

(declare-fun tp!531035 () Bool)

(declare-fun inv!27324 (Conc!6866) Bool)

(assert (=> b!1865026 (= e!1190546 (and (inv!27324 (left!16652 t!4595)) tp!531038 (inv!27324 (right!16982 t!4595)) tp!531035))))

(declare-fun b!1865027 () Bool)

(declare-fun res!835117 () Bool)

(assert (=> b!1865027 (=> (not res!835117) (not e!1190543))))

(assert (=> b!1865027 (= res!835117 (not ((_ is Node!6866) t!4595)))))

(declare-fun res!835118 () Bool)

(assert (=> start!186580 (=> (not res!835118) (not e!1190543))))

(declare-fun isBalanced!2167 (Conc!6866) Bool)

(assert (=> start!186580 (= res!835118 (isBalanced!2167 t!4595))))

(assert (=> start!186580 e!1190543))

(assert (=> start!186580 (and (inv!27324 t!4595) e!1190546)))

(declare-fun b!1865028 () Bool)

(declare-fun tp!531040 () Bool)

(assert (=> b!1865028 (= e!1190547 tp!531040)))

(declare-fun b!1865029 () Bool)

(declare-fun list!8446 (Conc!6866) List!20753)

(assert (=> b!1865029 (= e!1190543 (= (list!8446 t!4595) Nil!20671))))

(declare-fun tp!531039 () Bool)

(declare-fun tp!531036 () Bool)

(declare-fun b!1865030 () Bool)

(assert (=> b!1865030 (= e!1190544 (and (inv!27324 (left!16652 err!3129)) tp!531036 (inv!27324 (right!16982 err!3129)) tp!531039))))

(declare-fun b!1865031 () Bool)

(declare-fun res!835119 () Bool)

(assert (=> b!1865031 (=> (not res!835119) (not e!1190543))))

(assert (=> b!1865031 (= res!835119 (isBalanced!2167 err!3129))))

(assert (=> b!1865031 true))

(assert (=> b!1865031 (and (inv!27324 err!3129) e!1190544)))

(assert (= (and start!186580 res!835118) b!1865020))

(assert (= (and b!1865020 res!835115) b!1865024))

(assert (= (and b!1865024 res!835116) b!1865021))

(assert (= (and b!1865021 (not res!835113)) b!1865025))

(assert (= (and b!1865021 res!835114) b!1865027))

(assert (= (and b!1865027 res!835117) b!1865031))

(assert (= (and b!1865031 ((_ is Node!6866) err!3129)) b!1865030))

(assert (= b!1865022 b!1865019))

(assert (= (and b!1865031 ((_ is Leaf!10067) err!3129)) b!1865022))

(assert (= (and b!1865031 res!835119) b!1865029))

(assert (= (and start!186580 ((_ is Node!6866) t!4595)) b!1865026))

(assert (= b!1865023 b!1865028))

(assert (= (and start!186580 ((_ is Leaf!10067) t!4595)) b!1865023))

(declare-fun m!2289561 () Bool)

(assert (=> b!1865022 m!2289561))

(declare-fun m!2289563 () Bool)

(assert (=> b!1865023 m!2289563))

(declare-fun m!2289565 () Bool)

(assert (=> start!186580 m!2289565))

(declare-fun m!2289567 () Bool)

(assert (=> start!186580 m!2289567))

(declare-fun m!2289569 () Bool)

(assert (=> b!1865020 m!2289569))

(declare-fun m!2289571 () Bool)

(assert (=> b!1865030 m!2289571))

(declare-fun m!2289573 () Bool)

(assert (=> b!1865030 m!2289573))

(declare-fun m!2289575 () Bool)

(assert (=> b!1865031 m!2289575))

(declare-fun m!2289577 () Bool)

(assert (=> b!1865031 m!2289577))

(declare-fun m!2289579 () Bool)

(assert (=> b!1865029 m!2289579))

(declare-fun m!2289581 () Bool)

(assert (=> b!1865026 m!2289581))

(declare-fun m!2289583 () Bool)

(assert (=> b!1865026 m!2289583))

(declare-fun m!2289585 () Bool)

(assert (=> b!1865025 m!2289585))

(check-sat (not b!1865020) (not b!1865025) (not b!1865029) (not b!1865022) (not b!1865030) (not start!186580) (not b!1865028) (not b!1865023) (not b!1865031) (not b!1865026) (not b!1865019))
(check-sat)
(get-model)

(declare-fun d!569333 () Bool)

(declare-fun size!16375 (List!20753) Int)

(assert (=> d!569333 (= (inv!27323 (xs!9748 t!4595)) (<= (size!16375 (innerList!6926 (xs!9748 t!4595))) 2147483647))))

(declare-fun bs!411658 () Bool)

(assert (= bs!411658 d!569333))

(declare-fun m!2289587 () Bool)

(assert (=> bs!411658 m!2289587))

(assert (=> b!1865023 d!569333))

(declare-fun d!569335 () Bool)

(declare-fun res!835142 () Bool)

(declare-fun e!1190557 () Bool)

(assert (=> d!569335 (=> res!835142 e!1190557)))

(assert (=> d!569335 (= res!835142 (not ((_ is Node!6866) t!4595)))))

(assert (=> d!569335 (= (isBalanced!2167 t!4595) e!1190557)))

(declare-fun b!1865048 () Bool)

(declare-fun res!835143 () Bool)

(declare-fun e!1190556 () Bool)

(assert (=> b!1865048 (=> (not res!835143) (not e!1190556))))

(assert (=> b!1865048 (= res!835143 (isBalanced!2167 (left!16652 t!4595)))))

(declare-fun b!1865049 () Bool)

(assert (=> b!1865049 (= e!1190556 (not (isEmpty!12885 (right!16982 t!4595))))))

(declare-fun b!1865050 () Bool)

(declare-fun res!835139 () Bool)

(assert (=> b!1865050 (=> (not res!835139) (not e!1190556))))

(assert (=> b!1865050 (= res!835139 (isBalanced!2167 (right!16982 t!4595)))))

(declare-fun b!1865051 () Bool)

(declare-fun res!835140 () Bool)

(assert (=> b!1865051 (=> (not res!835140) (not e!1190556))))

(declare-fun height!1054 (Conc!6866) Int)

(assert (=> b!1865051 (= res!835140 (<= (- (height!1054 (left!16652 t!4595)) (height!1054 (right!16982 t!4595))) 1))))

(declare-fun b!1865052 () Bool)

(declare-fun res!835141 () Bool)

(assert (=> b!1865052 (=> (not res!835141) (not e!1190556))))

(assert (=> b!1865052 (= res!835141 (not (isEmpty!12885 (left!16652 t!4595))))))

(declare-fun b!1865053 () Bool)

(assert (=> b!1865053 (= e!1190557 e!1190556)))

(declare-fun res!835138 () Bool)

(assert (=> b!1865053 (=> (not res!835138) (not e!1190556))))

(assert (=> b!1865053 (= res!835138 (<= (- 1) (- (height!1054 (left!16652 t!4595)) (height!1054 (right!16982 t!4595)))))))

(assert (= (and d!569335 (not res!835142)) b!1865053))

(assert (= (and b!1865053 res!835138) b!1865051))

(assert (= (and b!1865051 res!835140) b!1865048))

(assert (= (and b!1865048 res!835143) b!1865050))

(assert (= (and b!1865050 res!835139) b!1865052))

(assert (= (and b!1865052 res!835141) b!1865049))

(assert (=> b!1865052 m!2289585))

(declare-fun m!2289589 () Bool)

(assert (=> b!1865050 m!2289589))

(declare-fun m!2289591 () Bool)

(assert (=> b!1865049 m!2289591))

(declare-fun m!2289593 () Bool)

(assert (=> b!1865051 m!2289593))

(declare-fun m!2289595 () Bool)

(assert (=> b!1865051 m!2289595))

(assert (=> b!1865053 m!2289593))

(assert (=> b!1865053 m!2289595))

(declare-fun m!2289597 () Bool)

(assert (=> b!1865048 m!2289597))

(assert (=> start!186580 d!569335))

(declare-fun d!569339 () Bool)

(declare-fun c!303810 () Bool)

(assert (=> d!569339 (= c!303810 ((_ is Node!6866) t!4595))))

(declare-fun e!1190564 () Bool)

(assert (=> d!569339 (= (inv!27324 t!4595) e!1190564)))

(declare-fun b!1865074 () Bool)

(declare-fun inv!27325 (Conc!6866) Bool)

(assert (=> b!1865074 (= e!1190564 (inv!27325 t!4595))))

(declare-fun b!1865075 () Bool)

(declare-fun e!1190565 () Bool)

(assert (=> b!1865075 (= e!1190564 e!1190565)))

(declare-fun res!835158 () Bool)

(assert (=> b!1865075 (= res!835158 (not ((_ is Leaf!10067) t!4595)))))

(assert (=> b!1865075 (=> res!835158 e!1190565)))

(declare-fun b!1865076 () Bool)

(declare-fun inv!27326 (Conc!6866) Bool)

(assert (=> b!1865076 (= e!1190565 (inv!27326 t!4595))))

(assert (= (and d!569339 c!303810) b!1865074))

(assert (= (and d!569339 (not c!303810)) b!1865075))

(assert (= (and b!1865075 (not res!835158)) b!1865076))

(declare-fun m!2289609 () Bool)

(assert (=> b!1865074 m!2289609))

(declare-fun m!2289611 () Bool)

(assert (=> b!1865076 m!2289611))

(assert (=> start!186580 d!569339))

(declare-fun d!569343 () Bool)

(declare-fun c!303811 () Bool)

(assert (=> d!569343 (= c!303811 ((_ is Node!6866) (left!16652 err!3129)))))

(declare-fun e!1190566 () Bool)

(assert (=> d!569343 (= (inv!27324 (left!16652 err!3129)) e!1190566)))

(declare-fun b!1865077 () Bool)

(assert (=> b!1865077 (= e!1190566 (inv!27325 (left!16652 err!3129)))))

(declare-fun b!1865078 () Bool)

(declare-fun e!1190567 () Bool)

(assert (=> b!1865078 (= e!1190566 e!1190567)))

(declare-fun res!835159 () Bool)

(assert (=> b!1865078 (= res!835159 (not ((_ is Leaf!10067) (left!16652 err!3129))))))

(assert (=> b!1865078 (=> res!835159 e!1190567)))

(declare-fun b!1865079 () Bool)

(assert (=> b!1865079 (= e!1190567 (inv!27326 (left!16652 err!3129)))))

(assert (= (and d!569343 c!303811) b!1865077))

(assert (= (and d!569343 (not c!303811)) b!1865078))

(assert (= (and b!1865078 (not res!835159)) b!1865079))

(declare-fun m!2289613 () Bool)

(assert (=> b!1865077 m!2289613))

(declare-fun m!2289615 () Bool)

(assert (=> b!1865079 m!2289615))

(assert (=> b!1865030 d!569343))

(declare-fun d!569345 () Bool)

(declare-fun c!303812 () Bool)

(assert (=> d!569345 (= c!303812 ((_ is Node!6866) (right!16982 err!3129)))))

(declare-fun e!1190568 () Bool)

(assert (=> d!569345 (= (inv!27324 (right!16982 err!3129)) e!1190568)))

(declare-fun b!1865080 () Bool)

(assert (=> b!1865080 (= e!1190568 (inv!27325 (right!16982 err!3129)))))

(declare-fun b!1865081 () Bool)

(declare-fun e!1190569 () Bool)

(assert (=> b!1865081 (= e!1190568 e!1190569)))

(declare-fun res!835160 () Bool)

(assert (=> b!1865081 (= res!835160 (not ((_ is Leaf!10067) (right!16982 err!3129))))))

(assert (=> b!1865081 (=> res!835160 e!1190569)))

(declare-fun b!1865082 () Bool)

(assert (=> b!1865082 (= e!1190569 (inv!27326 (right!16982 err!3129)))))

(assert (= (and d!569345 c!303812) b!1865080))

(assert (= (and d!569345 (not c!303812)) b!1865081))

(assert (= (and b!1865081 (not res!835160)) b!1865082))

(declare-fun m!2289617 () Bool)

(assert (=> b!1865080 m!2289617))

(declare-fun m!2289619 () Bool)

(assert (=> b!1865082 m!2289619))

(assert (=> b!1865030 d!569345))

(declare-fun b!1865100 () Bool)

(declare-fun e!1190580 () List!20753)

(assert (=> b!1865100 (= e!1190580 Nil!20671)))

(declare-fun b!1865103 () Bool)

(declare-fun e!1190581 () List!20753)

(declare-fun ++!5598 (List!20753 List!20753) List!20753)

(assert (=> b!1865103 (= e!1190581 (++!5598 (list!8446 (left!16652 t!4595)) (list!8446 (right!16982 t!4595))))))

(declare-fun d!569347 () Bool)

(declare-fun c!303820 () Bool)

(assert (=> d!569347 (= c!303820 ((_ is Empty!6866) t!4595))))

(assert (=> d!569347 (= (list!8446 t!4595) e!1190580)))

(declare-fun b!1865102 () Bool)

(declare-fun list!8448 (IArray!13737) List!20753)

(assert (=> b!1865102 (= e!1190581 (list!8448 (xs!9748 t!4595)))))

(declare-fun b!1865101 () Bool)

(assert (=> b!1865101 (= e!1190580 e!1190581)))

(declare-fun c!303821 () Bool)

(assert (=> b!1865101 (= c!303821 ((_ is Leaf!10067) t!4595))))

(assert (= (and d!569347 c!303820) b!1865100))

(assert (= (and d!569347 (not c!303820)) b!1865101))

(assert (= (and b!1865101 c!303821) b!1865102))

(assert (= (and b!1865101 (not c!303821)) b!1865103))

(declare-fun m!2289625 () Bool)

(assert (=> b!1865103 m!2289625))

(declare-fun m!2289627 () Bool)

(assert (=> b!1865103 m!2289627))

(assert (=> b!1865103 m!2289625))

(assert (=> b!1865103 m!2289627))

(declare-fun m!2289629 () Bool)

(assert (=> b!1865103 m!2289629))

(declare-fun m!2289631 () Bool)

(assert (=> b!1865102 m!2289631))

(assert (=> b!1865029 d!569347))

(declare-fun d!569351 () Bool)

(declare-fun c!303822 () Bool)

(assert (=> d!569351 (= c!303822 ((_ is Node!6866) (left!16652 t!4595)))))

(declare-fun e!1190582 () Bool)

(assert (=> d!569351 (= (inv!27324 (left!16652 t!4595)) e!1190582)))

(declare-fun b!1865104 () Bool)

(assert (=> b!1865104 (= e!1190582 (inv!27325 (left!16652 t!4595)))))

(declare-fun b!1865105 () Bool)

(declare-fun e!1190583 () Bool)

(assert (=> b!1865105 (= e!1190582 e!1190583)))

(declare-fun res!835164 () Bool)

(assert (=> b!1865105 (= res!835164 (not ((_ is Leaf!10067) (left!16652 t!4595))))))

(assert (=> b!1865105 (=> res!835164 e!1190583)))

(declare-fun b!1865106 () Bool)

(assert (=> b!1865106 (= e!1190583 (inv!27326 (left!16652 t!4595)))))

(assert (= (and d!569351 c!303822) b!1865104))

(assert (= (and d!569351 (not c!303822)) b!1865105))

(assert (= (and b!1865105 (not res!835164)) b!1865106))

(declare-fun m!2289633 () Bool)

(assert (=> b!1865104 m!2289633))

(declare-fun m!2289635 () Bool)

(assert (=> b!1865106 m!2289635))

(assert (=> b!1865026 d!569351))

(declare-fun d!569353 () Bool)

(declare-fun c!303827 () Bool)

(assert (=> d!569353 (= c!303827 ((_ is Node!6866) (right!16982 t!4595)))))

(declare-fun e!1190588 () Bool)

(assert (=> d!569353 (= (inv!27324 (right!16982 t!4595)) e!1190588)))

(declare-fun b!1865115 () Bool)

(assert (=> b!1865115 (= e!1190588 (inv!27325 (right!16982 t!4595)))))

(declare-fun b!1865116 () Bool)

(declare-fun e!1190589 () Bool)

(assert (=> b!1865116 (= e!1190588 e!1190589)))

(declare-fun res!835165 () Bool)

(assert (=> b!1865116 (= res!835165 (not ((_ is Leaf!10067) (right!16982 t!4595))))))

(assert (=> b!1865116 (=> res!835165 e!1190589)))

(declare-fun b!1865117 () Bool)

(assert (=> b!1865117 (= e!1190589 (inv!27326 (right!16982 t!4595)))))

(assert (= (and d!569353 c!303827) b!1865115))

(assert (= (and d!569353 (not c!303827)) b!1865116))

(assert (= (and b!1865116 (not res!835165)) b!1865117))

(declare-fun m!2289637 () Bool)

(assert (=> b!1865115 m!2289637))

(declare-fun m!2289639 () Bool)

(assert (=> b!1865117 m!2289639))

(assert (=> b!1865026 d!569353))

(declare-fun d!569355 () Bool)

(declare-fun res!835170 () Bool)

(declare-fun e!1190591 () Bool)

(assert (=> d!569355 (=> res!835170 e!1190591)))

(assert (=> d!569355 (= res!835170 (not ((_ is Node!6866) err!3129)))))

(assert (=> d!569355 (= (isBalanced!2167 err!3129) e!1190591)))

(declare-fun b!1865118 () Bool)

(declare-fun res!835171 () Bool)

(declare-fun e!1190590 () Bool)

(assert (=> b!1865118 (=> (not res!835171) (not e!1190590))))

(assert (=> b!1865118 (= res!835171 (isBalanced!2167 (left!16652 err!3129)))))

(declare-fun b!1865119 () Bool)

(assert (=> b!1865119 (= e!1190590 (not (isEmpty!12885 (right!16982 err!3129))))))

(declare-fun b!1865120 () Bool)

(declare-fun res!835167 () Bool)

(assert (=> b!1865120 (=> (not res!835167) (not e!1190590))))

(assert (=> b!1865120 (= res!835167 (isBalanced!2167 (right!16982 err!3129)))))

(declare-fun b!1865121 () Bool)

(declare-fun res!835168 () Bool)

(assert (=> b!1865121 (=> (not res!835168) (not e!1190590))))

(assert (=> b!1865121 (= res!835168 (<= (- (height!1054 (left!16652 err!3129)) (height!1054 (right!16982 err!3129))) 1))))

(declare-fun b!1865122 () Bool)

(declare-fun res!835169 () Bool)

(assert (=> b!1865122 (=> (not res!835169) (not e!1190590))))

(assert (=> b!1865122 (= res!835169 (not (isEmpty!12885 (left!16652 err!3129))))))

(declare-fun b!1865123 () Bool)

(assert (=> b!1865123 (= e!1190591 e!1190590)))

(declare-fun res!835166 () Bool)

(assert (=> b!1865123 (=> (not res!835166) (not e!1190590))))

(assert (=> b!1865123 (= res!835166 (<= (- 1) (- (height!1054 (left!16652 err!3129)) (height!1054 (right!16982 err!3129)))))))

(assert (= (and d!569355 (not res!835170)) b!1865123))

(assert (= (and b!1865123 res!835166) b!1865121))

(assert (= (and b!1865121 res!835168) b!1865118))

(assert (= (and b!1865118 res!835171) b!1865120))

(assert (= (and b!1865120 res!835167) b!1865122))

(assert (= (and b!1865122 res!835169) b!1865119))

(declare-fun m!2289641 () Bool)

(assert (=> b!1865122 m!2289641))

(declare-fun m!2289643 () Bool)

(assert (=> b!1865120 m!2289643))

(declare-fun m!2289645 () Bool)

(assert (=> b!1865119 m!2289645))

(declare-fun m!2289647 () Bool)

(assert (=> b!1865121 m!2289647))

(declare-fun m!2289649 () Bool)

(assert (=> b!1865121 m!2289649))

(assert (=> b!1865123 m!2289647))

(assert (=> b!1865123 m!2289649))

(declare-fun m!2289651 () Bool)

(assert (=> b!1865118 m!2289651))

(assert (=> b!1865031 d!569355))

(declare-fun d!569357 () Bool)

(declare-fun c!303828 () Bool)

(assert (=> d!569357 (= c!303828 ((_ is Node!6866) err!3129))))

(declare-fun e!1190592 () Bool)

(assert (=> d!569357 (= (inv!27324 err!3129) e!1190592)))

(declare-fun b!1865124 () Bool)

(assert (=> b!1865124 (= e!1190592 (inv!27325 err!3129))))

(declare-fun b!1865125 () Bool)

(declare-fun e!1190593 () Bool)

(assert (=> b!1865125 (= e!1190592 e!1190593)))

(declare-fun res!835172 () Bool)

(assert (=> b!1865125 (= res!835172 (not ((_ is Leaf!10067) err!3129)))))

(assert (=> b!1865125 (=> res!835172 e!1190593)))

(declare-fun b!1865126 () Bool)

(assert (=> b!1865126 (= e!1190593 (inv!27326 err!3129))))

(assert (= (and d!569357 c!303828) b!1865124))

(assert (= (and d!569357 (not c!303828)) b!1865125))

(assert (= (and b!1865125 (not res!835172)) b!1865126))

(declare-fun m!2289653 () Bool)

(assert (=> b!1865124 m!2289653))

(declare-fun m!2289655 () Bool)

(assert (=> b!1865126 m!2289655))

(assert (=> b!1865031 d!569357))

(declare-fun d!569359 () Bool)

(declare-fun lt!718468 () Bool)

(declare-fun isEmpty!12886 (List!20753) Bool)

(assert (=> d!569359 (= lt!718468 (isEmpty!12886 (list!8446 t!4595)))))

(declare-fun size!16377 (Conc!6866) Int)

(assert (=> d!569359 (= lt!718468 (= (size!16377 t!4595) 0))))

(assert (=> d!569359 (= (isEmpty!12885 t!4595) lt!718468)))

(declare-fun bs!411661 () Bool)

(assert (= bs!411661 d!569359))

(assert (=> bs!411661 m!2289579))

(assert (=> bs!411661 m!2289579))

(declare-fun m!2289673 () Bool)

(assert (=> bs!411661 m!2289673))

(declare-fun m!2289675 () Bool)

(assert (=> bs!411661 m!2289675))

(assert (=> b!1865020 d!569359))

(declare-fun d!569369 () Bool)

(declare-fun lt!718469 () Bool)

(assert (=> d!569369 (= lt!718469 (isEmpty!12886 (list!8446 (left!16652 t!4595))))))

(assert (=> d!569369 (= lt!718469 (= (size!16377 (left!16652 t!4595)) 0))))

(assert (=> d!569369 (= (isEmpty!12885 (left!16652 t!4595)) lt!718469)))

(declare-fun bs!411662 () Bool)

(assert (= bs!411662 d!569369))

(assert (=> bs!411662 m!2289625))

(assert (=> bs!411662 m!2289625))

(declare-fun m!2289681 () Bool)

(assert (=> bs!411662 m!2289681))

(declare-fun m!2289683 () Bool)

(assert (=> bs!411662 m!2289683))

(assert (=> b!1865025 d!569369))

(declare-fun d!569373 () Bool)

(assert (=> d!569373 (= (inv!27323 (xs!9748 err!3129)) (<= (size!16375 (innerList!6926 (xs!9748 err!3129))) 2147483647))))

(declare-fun bs!411663 () Bool)

(assert (= bs!411663 d!569373))

(declare-fun m!2289685 () Bool)

(assert (=> bs!411663 m!2289685))

(assert (=> b!1865022 d!569373))

(declare-fun b!1865147 () Bool)

(declare-fun e!1190604 () Bool)

(declare-fun tp_is_empty!8653 () Bool)

(declare-fun tp!531043 () Bool)

(assert (=> b!1865147 (= e!1190604 (and tp_is_empty!8653 tp!531043))))

(assert (=> b!1865028 (= tp!531040 e!1190604)))

(assert (= (and b!1865028 ((_ is Cons!20671) (innerList!6926 (xs!9748 t!4595)))) b!1865147))

(declare-fun tp!531052 () Bool)

(declare-fun b!1865159 () Bool)

(declare-fun e!1190612 () Bool)

(declare-fun tp!531050 () Bool)

(assert (=> b!1865159 (= e!1190612 (and (inv!27324 (left!16652 (left!16652 err!3129))) tp!531052 (inv!27324 (right!16982 (left!16652 err!3129))) tp!531050))))

(declare-fun b!1865161 () Bool)

(declare-fun e!1190611 () Bool)

(declare-fun tp!531051 () Bool)

(assert (=> b!1865161 (= e!1190611 tp!531051)))

(declare-fun b!1865160 () Bool)

(assert (=> b!1865160 (= e!1190612 (and (inv!27323 (xs!9748 (left!16652 err!3129))) e!1190611))))

(assert (=> b!1865030 (= tp!531036 (and (inv!27324 (left!16652 err!3129)) e!1190612))))

(assert (= (and b!1865030 ((_ is Node!6866) (left!16652 err!3129))) b!1865159))

(assert (= b!1865160 b!1865161))

(assert (= (and b!1865030 ((_ is Leaf!10067) (left!16652 err!3129))) b!1865160))

(declare-fun m!2289703 () Bool)

(assert (=> b!1865159 m!2289703))

(declare-fun m!2289705 () Bool)

(assert (=> b!1865159 m!2289705))

(declare-fun m!2289707 () Bool)

(assert (=> b!1865160 m!2289707))

(assert (=> b!1865030 m!2289571))

(declare-fun tp!531053 () Bool)

(declare-fun e!1190614 () Bool)

(declare-fun b!1865162 () Bool)

(declare-fun tp!531055 () Bool)

(assert (=> b!1865162 (= e!1190614 (and (inv!27324 (left!16652 (right!16982 err!3129))) tp!531055 (inv!27324 (right!16982 (right!16982 err!3129))) tp!531053))))

(declare-fun b!1865164 () Bool)

(declare-fun e!1190613 () Bool)

(declare-fun tp!531054 () Bool)

(assert (=> b!1865164 (= e!1190613 tp!531054)))

(declare-fun b!1865163 () Bool)

(assert (=> b!1865163 (= e!1190614 (and (inv!27323 (xs!9748 (right!16982 err!3129))) e!1190613))))

(assert (=> b!1865030 (= tp!531039 (and (inv!27324 (right!16982 err!3129)) e!1190614))))

(assert (= (and b!1865030 ((_ is Node!6866) (right!16982 err!3129))) b!1865162))

(assert (= b!1865163 b!1865164))

(assert (= (and b!1865030 ((_ is Leaf!10067) (right!16982 err!3129))) b!1865163))

(declare-fun m!2289709 () Bool)

(assert (=> b!1865162 m!2289709))

(declare-fun m!2289711 () Bool)

(assert (=> b!1865162 m!2289711))

(declare-fun m!2289713 () Bool)

(assert (=> b!1865163 m!2289713))

(assert (=> b!1865030 m!2289573))

(declare-fun b!1865165 () Bool)

(declare-fun e!1190615 () Bool)

(declare-fun tp!531056 () Bool)

(assert (=> b!1865165 (= e!1190615 (and tp_is_empty!8653 tp!531056))))

(assert (=> b!1865019 (= tp!531037 e!1190615)))

(assert (= (and b!1865019 ((_ is Cons!20671) (innerList!6926 (xs!9748 err!3129)))) b!1865165))

(declare-fun tp!531057 () Bool)

(declare-fun e!1190617 () Bool)

(declare-fun b!1865166 () Bool)

(declare-fun tp!531059 () Bool)

(assert (=> b!1865166 (= e!1190617 (and (inv!27324 (left!16652 (left!16652 t!4595))) tp!531059 (inv!27324 (right!16982 (left!16652 t!4595))) tp!531057))))

(declare-fun b!1865168 () Bool)

(declare-fun e!1190616 () Bool)

(declare-fun tp!531058 () Bool)

(assert (=> b!1865168 (= e!1190616 tp!531058)))

(declare-fun b!1865167 () Bool)

(assert (=> b!1865167 (= e!1190617 (and (inv!27323 (xs!9748 (left!16652 t!4595))) e!1190616))))

(assert (=> b!1865026 (= tp!531038 (and (inv!27324 (left!16652 t!4595)) e!1190617))))

(assert (= (and b!1865026 ((_ is Node!6866) (left!16652 t!4595))) b!1865166))

(assert (= b!1865167 b!1865168))

(assert (= (and b!1865026 ((_ is Leaf!10067) (left!16652 t!4595))) b!1865167))

(declare-fun m!2289715 () Bool)

(assert (=> b!1865166 m!2289715))

(declare-fun m!2289717 () Bool)

(assert (=> b!1865166 m!2289717))

(declare-fun m!2289721 () Bool)

(assert (=> b!1865167 m!2289721))

(assert (=> b!1865026 m!2289581))

(declare-fun tp!531062 () Bool)

(declare-fun tp!531060 () Bool)

(declare-fun e!1190619 () Bool)

(declare-fun b!1865169 () Bool)

(assert (=> b!1865169 (= e!1190619 (and (inv!27324 (left!16652 (right!16982 t!4595))) tp!531062 (inv!27324 (right!16982 (right!16982 t!4595))) tp!531060))))

(declare-fun b!1865171 () Bool)

(declare-fun e!1190618 () Bool)

(declare-fun tp!531061 () Bool)

(assert (=> b!1865171 (= e!1190618 tp!531061)))

(declare-fun b!1865170 () Bool)

(assert (=> b!1865170 (= e!1190619 (and (inv!27323 (xs!9748 (right!16982 t!4595))) e!1190618))))

(assert (=> b!1865026 (= tp!531035 (and (inv!27324 (right!16982 t!4595)) e!1190619))))

(assert (= (and b!1865026 ((_ is Node!6866) (right!16982 t!4595))) b!1865169))

(assert (= b!1865170 b!1865171))

(assert (= (and b!1865026 ((_ is Leaf!10067) (right!16982 t!4595))) b!1865170))

(declare-fun m!2289729 () Bool)

(assert (=> b!1865169 m!2289729))

(declare-fun m!2289731 () Bool)

(assert (=> b!1865169 m!2289731))

(declare-fun m!2289733 () Bool)

(assert (=> b!1865170 m!2289733))

(assert (=> b!1865026 m!2289583))

(check-sat (not b!1865168) (not b!1865119) (not b!1865117) (not b!1865162) (not b!1865076) (not b!1865161) (not b!1865102) (not b!1865126) (not b!1865120) (not b!1865166) (not b!1865077) (not b!1865118) (not b!1865160) (not b!1865106) (not d!569333) (not b!1865124) (not b!1865122) (not d!569369) (not b!1865169) (not b!1865123) (not b!1865080) (not b!1865121) (not b!1865167) tp_is_empty!8653 (not b!1865164) (not b!1865079) (not b!1865147) (not b!1865030) (not b!1865074) (not b!1865115) (not d!569359) (not b!1865051) (not b!1865103) (not b!1865050) (not b!1865052) (not b!1865048) (not b!1865026) (not b!1865053) (not b!1865104) (not b!1865163) (not d!569373) (not b!1865159) (not b!1865165) (not b!1865049) (not b!1865170) (not b!1865171) (not b!1865082))
(check-sat)
(get-model)

(declare-fun d!569385 () Bool)

(declare-fun res!835188 () Bool)

(declare-fun e!1190641 () Bool)

(assert (=> d!569385 (=> res!835188 e!1190641)))

(assert (=> d!569385 (= res!835188 (not ((_ is Node!6866) (left!16652 err!3129))))))

(assert (=> d!569385 (= (isBalanced!2167 (left!16652 err!3129)) e!1190641)))

(declare-fun b!1865204 () Bool)

(declare-fun res!835189 () Bool)

(declare-fun e!1190640 () Bool)

(assert (=> b!1865204 (=> (not res!835189) (not e!1190640))))

(assert (=> b!1865204 (= res!835189 (isBalanced!2167 (left!16652 (left!16652 err!3129))))))

(declare-fun b!1865205 () Bool)

(assert (=> b!1865205 (= e!1190640 (not (isEmpty!12885 (right!16982 (left!16652 err!3129)))))))

(declare-fun b!1865206 () Bool)

(declare-fun res!835185 () Bool)

(assert (=> b!1865206 (=> (not res!835185) (not e!1190640))))

(assert (=> b!1865206 (= res!835185 (isBalanced!2167 (right!16982 (left!16652 err!3129))))))

(declare-fun b!1865207 () Bool)

(declare-fun res!835186 () Bool)

(assert (=> b!1865207 (=> (not res!835186) (not e!1190640))))

(assert (=> b!1865207 (= res!835186 (<= (- (height!1054 (left!16652 (left!16652 err!3129))) (height!1054 (right!16982 (left!16652 err!3129)))) 1))))

(declare-fun b!1865208 () Bool)

(declare-fun res!835187 () Bool)

(assert (=> b!1865208 (=> (not res!835187) (not e!1190640))))

(assert (=> b!1865208 (= res!835187 (not (isEmpty!12885 (left!16652 (left!16652 err!3129)))))))

(declare-fun b!1865209 () Bool)

(assert (=> b!1865209 (= e!1190641 e!1190640)))

(declare-fun res!835184 () Bool)

(assert (=> b!1865209 (=> (not res!835184) (not e!1190640))))

(assert (=> b!1865209 (= res!835184 (<= (- 1) (- (height!1054 (left!16652 (left!16652 err!3129))) (height!1054 (right!16982 (left!16652 err!3129))))))))

(assert (= (and d!569385 (not res!835188)) b!1865209))

(assert (= (and b!1865209 res!835184) b!1865207))

(assert (= (and b!1865207 res!835186) b!1865204))

(assert (= (and b!1865204 res!835189) b!1865206))

(assert (= (and b!1865206 res!835185) b!1865208))

(assert (= (and b!1865208 res!835187) b!1865205))

(declare-fun m!2289767 () Bool)

(assert (=> b!1865208 m!2289767))

(declare-fun m!2289769 () Bool)

(assert (=> b!1865206 m!2289769))

(declare-fun m!2289771 () Bool)

(assert (=> b!1865205 m!2289771))

(declare-fun m!2289773 () Bool)

(assert (=> b!1865207 m!2289773))

(declare-fun m!2289775 () Bool)

(assert (=> b!1865207 m!2289775))

(assert (=> b!1865209 m!2289773))

(assert (=> b!1865209 m!2289775))

(declare-fun m!2289777 () Bool)

(assert (=> b!1865204 m!2289777))

(assert (=> b!1865118 d!569385))

(declare-fun d!569387 () Bool)

(declare-fun e!1190646 () Bool)

(assert (=> d!569387 e!1190646))

(declare-fun res!835194 () Bool)

(assert (=> d!569387 (=> (not res!835194) (not e!1190646))))

(declare-fun lt!718476 () List!20753)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3074 (List!20753) (InoxSet T!33074))

(assert (=> d!569387 (= res!835194 (= (content!3074 lt!718476) ((_ map or) (content!3074 (list!8446 (left!16652 t!4595))) (content!3074 (list!8446 (right!16982 t!4595))))))))

(declare-fun e!1190647 () List!20753)

(assert (=> d!569387 (= lt!718476 e!1190647)))

(declare-fun c!303838 () Bool)

(assert (=> d!569387 (= c!303838 ((_ is Nil!20671) (list!8446 (left!16652 t!4595))))))

(assert (=> d!569387 (= (++!5598 (list!8446 (left!16652 t!4595)) (list!8446 (right!16982 t!4595))) lt!718476)))

(declare-fun b!1865219 () Bool)

(assert (=> b!1865219 (= e!1190647 (Cons!20671 (h!26072 (list!8446 (left!16652 t!4595))) (++!5598 (t!172856 (list!8446 (left!16652 t!4595))) (list!8446 (right!16982 t!4595)))))))

(declare-fun b!1865220 () Bool)

(declare-fun res!835195 () Bool)

(assert (=> b!1865220 (=> (not res!835195) (not e!1190646))))

(assert (=> b!1865220 (= res!835195 (= (size!16375 lt!718476) (+ (size!16375 (list!8446 (left!16652 t!4595))) (size!16375 (list!8446 (right!16982 t!4595))))))))

(declare-fun b!1865221 () Bool)

(assert (=> b!1865221 (= e!1190646 (or (not (= (list!8446 (right!16982 t!4595)) Nil!20671)) (= lt!718476 (list!8446 (left!16652 t!4595)))))))

(declare-fun b!1865218 () Bool)

(assert (=> b!1865218 (= e!1190647 (list!8446 (right!16982 t!4595)))))

(assert (= (and d!569387 c!303838) b!1865218))

(assert (= (and d!569387 (not c!303838)) b!1865219))

(assert (= (and d!569387 res!835194) b!1865220))

(assert (= (and b!1865220 res!835195) b!1865221))

(declare-fun m!2289779 () Bool)

(assert (=> d!569387 m!2289779))

(assert (=> d!569387 m!2289625))

(declare-fun m!2289781 () Bool)

(assert (=> d!569387 m!2289781))

(assert (=> d!569387 m!2289627))

(declare-fun m!2289783 () Bool)

(assert (=> d!569387 m!2289783))

(assert (=> b!1865219 m!2289627))

(declare-fun m!2289785 () Bool)

(assert (=> b!1865219 m!2289785))

(declare-fun m!2289787 () Bool)

(assert (=> b!1865220 m!2289787))

(assert (=> b!1865220 m!2289625))

(declare-fun m!2289789 () Bool)

(assert (=> b!1865220 m!2289789))

(assert (=> b!1865220 m!2289627))

(declare-fun m!2289791 () Bool)

(assert (=> b!1865220 m!2289791))

(assert (=> b!1865103 d!569387))

(declare-fun b!1865222 () Bool)

(declare-fun e!1190648 () List!20753)

(assert (=> b!1865222 (= e!1190648 Nil!20671)))

(declare-fun b!1865225 () Bool)

(declare-fun e!1190649 () List!20753)

(assert (=> b!1865225 (= e!1190649 (++!5598 (list!8446 (left!16652 (left!16652 t!4595))) (list!8446 (right!16982 (left!16652 t!4595)))))))

(declare-fun d!569389 () Bool)

(declare-fun c!303839 () Bool)

(assert (=> d!569389 (= c!303839 ((_ is Empty!6866) (left!16652 t!4595)))))

(assert (=> d!569389 (= (list!8446 (left!16652 t!4595)) e!1190648)))

(declare-fun b!1865224 () Bool)

(assert (=> b!1865224 (= e!1190649 (list!8448 (xs!9748 (left!16652 t!4595))))))

(declare-fun b!1865223 () Bool)

(assert (=> b!1865223 (= e!1190648 e!1190649)))

(declare-fun c!303840 () Bool)

(assert (=> b!1865223 (= c!303840 ((_ is Leaf!10067) (left!16652 t!4595)))))

(assert (= (and d!569389 c!303839) b!1865222))

(assert (= (and d!569389 (not c!303839)) b!1865223))

(assert (= (and b!1865223 c!303840) b!1865224))

(assert (= (and b!1865223 (not c!303840)) b!1865225))

(declare-fun m!2289793 () Bool)

(assert (=> b!1865225 m!2289793))

(declare-fun m!2289795 () Bool)

(assert (=> b!1865225 m!2289795))

(assert (=> b!1865225 m!2289793))

(assert (=> b!1865225 m!2289795))

(declare-fun m!2289797 () Bool)

(assert (=> b!1865225 m!2289797))

(declare-fun m!2289799 () Bool)

(assert (=> b!1865224 m!2289799))

(assert (=> b!1865103 d!569389))

(declare-fun b!1865226 () Bool)

(declare-fun e!1190650 () List!20753)

(assert (=> b!1865226 (= e!1190650 Nil!20671)))

(declare-fun b!1865229 () Bool)

(declare-fun e!1190651 () List!20753)

(assert (=> b!1865229 (= e!1190651 (++!5598 (list!8446 (left!16652 (right!16982 t!4595))) (list!8446 (right!16982 (right!16982 t!4595)))))))

(declare-fun d!569391 () Bool)

(declare-fun c!303841 () Bool)

(assert (=> d!569391 (= c!303841 ((_ is Empty!6866) (right!16982 t!4595)))))

(assert (=> d!569391 (= (list!8446 (right!16982 t!4595)) e!1190650)))

(declare-fun b!1865228 () Bool)

(assert (=> b!1865228 (= e!1190651 (list!8448 (xs!9748 (right!16982 t!4595))))))

(declare-fun b!1865227 () Bool)

(assert (=> b!1865227 (= e!1190650 e!1190651)))

(declare-fun c!303842 () Bool)

(assert (=> b!1865227 (= c!303842 ((_ is Leaf!10067) (right!16982 t!4595)))))

(assert (= (and d!569391 c!303841) b!1865226))

(assert (= (and d!569391 (not c!303841)) b!1865227))

(assert (= (and b!1865227 c!303842) b!1865228))

(assert (= (and b!1865227 (not c!303842)) b!1865229))

(declare-fun m!2289801 () Bool)

(assert (=> b!1865229 m!2289801))

(declare-fun m!2289803 () Bool)

(assert (=> b!1865229 m!2289803))

(assert (=> b!1865229 m!2289801))

(assert (=> b!1865229 m!2289803))

(declare-fun m!2289805 () Bool)

(assert (=> b!1865229 m!2289805))

(declare-fun m!2289807 () Bool)

(assert (=> b!1865228 m!2289807))

(assert (=> b!1865103 d!569391))

(declare-fun d!569393 () Bool)

(assert (=> d!569393 (= (inv!27323 (xs!9748 (right!16982 t!4595))) (<= (size!16375 (innerList!6926 (xs!9748 (right!16982 t!4595)))) 2147483647))))

(declare-fun bs!411666 () Bool)

(assert (= bs!411666 d!569393))

(declare-fun m!2289809 () Bool)

(assert (=> bs!411666 m!2289809))

(assert (=> b!1865170 d!569393))

(declare-fun d!569395 () Bool)

(declare-fun c!303843 () Bool)

(assert (=> d!569395 (= c!303843 ((_ is Node!6866) (left!16652 (right!16982 err!3129))))))

(declare-fun e!1190652 () Bool)

(assert (=> d!569395 (= (inv!27324 (left!16652 (right!16982 err!3129))) e!1190652)))

(declare-fun b!1865230 () Bool)

(assert (=> b!1865230 (= e!1190652 (inv!27325 (left!16652 (right!16982 err!3129))))))

(declare-fun b!1865231 () Bool)

(declare-fun e!1190653 () Bool)

(assert (=> b!1865231 (= e!1190652 e!1190653)))

(declare-fun res!835196 () Bool)

(assert (=> b!1865231 (= res!835196 (not ((_ is Leaf!10067) (left!16652 (right!16982 err!3129)))))))

(assert (=> b!1865231 (=> res!835196 e!1190653)))

(declare-fun b!1865232 () Bool)

(assert (=> b!1865232 (= e!1190653 (inv!27326 (left!16652 (right!16982 err!3129))))))

(assert (= (and d!569395 c!303843) b!1865230))

(assert (= (and d!569395 (not c!303843)) b!1865231))

(assert (= (and b!1865231 (not res!835196)) b!1865232))

(declare-fun m!2289811 () Bool)

(assert (=> b!1865230 m!2289811))

(declare-fun m!2289813 () Bool)

(assert (=> b!1865232 m!2289813))

(assert (=> b!1865162 d!569395))

(declare-fun d!569397 () Bool)

(declare-fun c!303844 () Bool)

(assert (=> d!569397 (= c!303844 ((_ is Node!6866) (right!16982 (right!16982 err!3129))))))

(declare-fun e!1190654 () Bool)

(assert (=> d!569397 (= (inv!27324 (right!16982 (right!16982 err!3129))) e!1190654)))

(declare-fun b!1865233 () Bool)

(assert (=> b!1865233 (= e!1190654 (inv!27325 (right!16982 (right!16982 err!3129))))))

(declare-fun b!1865234 () Bool)

(declare-fun e!1190655 () Bool)

(assert (=> b!1865234 (= e!1190654 e!1190655)))

(declare-fun res!835197 () Bool)

(assert (=> b!1865234 (= res!835197 (not ((_ is Leaf!10067) (right!16982 (right!16982 err!3129)))))))

(assert (=> b!1865234 (=> res!835197 e!1190655)))

(declare-fun b!1865235 () Bool)

(assert (=> b!1865235 (= e!1190655 (inv!27326 (right!16982 (right!16982 err!3129))))))

(assert (= (and d!569397 c!303844) b!1865233))

(assert (= (and d!569397 (not c!303844)) b!1865234))

(assert (= (and b!1865234 (not res!835197)) b!1865235))

(declare-fun m!2289815 () Bool)

(assert (=> b!1865233 m!2289815))

(declare-fun m!2289817 () Bool)

(assert (=> b!1865235 m!2289817))

(assert (=> b!1865162 d!569397))

(declare-fun d!569399 () Bool)

(declare-fun res!835204 () Bool)

(declare-fun e!1190658 () Bool)

(assert (=> d!569399 (=> (not res!835204) (not e!1190658))))

(assert (=> d!569399 (= res!835204 (= (csize!13962 (right!16982 err!3129)) (+ (size!16377 (left!16652 (right!16982 err!3129))) (size!16377 (right!16982 (right!16982 err!3129))))))))

(assert (=> d!569399 (= (inv!27325 (right!16982 err!3129)) e!1190658)))

(declare-fun b!1865242 () Bool)

(declare-fun res!835205 () Bool)

(assert (=> b!1865242 (=> (not res!835205) (not e!1190658))))

(assert (=> b!1865242 (= res!835205 (and (not (= (left!16652 (right!16982 err!3129)) Empty!6866)) (not (= (right!16982 (right!16982 err!3129)) Empty!6866))))))

(declare-fun b!1865243 () Bool)

(declare-fun res!835206 () Bool)

(assert (=> b!1865243 (=> (not res!835206) (not e!1190658))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1865243 (= res!835206 (= (cheight!7077 (right!16982 err!3129)) (+ (max!0 (height!1054 (left!16652 (right!16982 err!3129))) (height!1054 (right!16982 (right!16982 err!3129)))) 1)))))

(declare-fun b!1865244 () Bool)

(assert (=> b!1865244 (= e!1190658 (<= 0 (cheight!7077 (right!16982 err!3129))))))

(assert (= (and d!569399 res!835204) b!1865242))

(assert (= (and b!1865242 res!835205) b!1865243))

(assert (= (and b!1865243 res!835206) b!1865244))

(declare-fun m!2289819 () Bool)

(assert (=> d!569399 m!2289819))

(declare-fun m!2289821 () Bool)

(assert (=> d!569399 m!2289821))

(declare-fun m!2289823 () Bool)

(assert (=> b!1865243 m!2289823))

(declare-fun m!2289825 () Bool)

(assert (=> b!1865243 m!2289825))

(assert (=> b!1865243 m!2289823))

(assert (=> b!1865243 m!2289825))

(declare-fun m!2289827 () Bool)

(assert (=> b!1865243 m!2289827))

(assert (=> b!1865080 d!569399))

(declare-fun d!569401 () Bool)

(assert (=> d!569401 (= (list!8448 (xs!9748 t!4595)) (innerList!6926 (xs!9748 t!4595)))))

(assert (=> b!1865102 d!569401))

(declare-fun d!569403 () Bool)

(declare-fun c!303845 () Bool)

(assert (=> d!569403 (= c!303845 ((_ is Node!6866) (left!16652 (right!16982 t!4595))))))

(declare-fun e!1190659 () Bool)

(assert (=> d!569403 (= (inv!27324 (left!16652 (right!16982 t!4595))) e!1190659)))

(declare-fun b!1865245 () Bool)

(assert (=> b!1865245 (= e!1190659 (inv!27325 (left!16652 (right!16982 t!4595))))))

(declare-fun b!1865246 () Bool)

(declare-fun e!1190660 () Bool)

(assert (=> b!1865246 (= e!1190659 e!1190660)))

(declare-fun res!835207 () Bool)

(assert (=> b!1865246 (= res!835207 (not ((_ is Leaf!10067) (left!16652 (right!16982 t!4595)))))))

(assert (=> b!1865246 (=> res!835207 e!1190660)))

(declare-fun b!1865247 () Bool)

(assert (=> b!1865247 (= e!1190660 (inv!27326 (left!16652 (right!16982 t!4595))))))

(assert (= (and d!569403 c!303845) b!1865245))

(assert (= (and d!569403 (not c!303845)) b!1865246))

(assert (= (and b!1865246 (not res!835207)) b!1865247))

(declare-fun m!2289829 () Bool)

(assert (=> b!1865245 m!2289829))

(declare-fun m!2289831 () Bool)

(assert (=> b!1865247 m!2289831))

(assert (=> b!1865169 d!569403))

(declare-fun d!569405 () Bool)

(declare-fun c!303846 () Bool)

(assert (=> d!569405 (= c!303846 ((_ is Node!6866) (right!16982 (right!16982 t!4595))))))

(declare-fun e!1190661 () Bool)

(assert (=> d!569405 (= (inv!27324 (right!16982 (right!16982 t!4595))) e!1190661)))

(declare-fun b!1865248 () Bool)

(assert (=> b!1865248 (= e!1190661 (inv!27325 (right!16982 (right!16982 t!4595))))))

(declare-fun b!1865249 () Bool)

(declare-fun e!1190662 () Bool)

(assert (=> b!1865249 (= e!1190661 e!1190662)))

(declare-fun res!835208 () Bool)

(assert (=> b!1865249 (= res!835208 (not ((_ is Leaf!10067) (right!16982 (right!16982 t!4595)))))))

(assert (=> b!1865249 (=> res!835208 e!1190662)))

(declare-fun b!1865250 () Bool)

(assert (=> b!1865250 (= e!1190662 (inv!27326 (right!16982 (right!16982 t!4595))))))

(assert (= (and d!569405 c!303846) b!1865248))

(assert (= (and d!569405 (not c!303846)) b!1865249))

(assert (= (and b!1865249 (not res!835208)) b!1865250))

(declare-fun m!2289833 () Bool)

(assert (=> b!1865248 m!2289833))

(declare-fun m!2289835 () Bool)

(assert (=> b!1865250 m!2289835))

(assert (=> b!1865169 d!569405))

(declare-fun d!569407 () Bool)

(assert (=> d!569407 (= (inv!27323 (xs!9748 (left!16652 t!4595))) (<= (size!16375 (innerList!6926 (xs!9748 (left!16652 t!4595)))) 2147483647))))

(declare-fun bs!411667 () Bool)

(assert (= bs!411667 d!569407))

(declare-fun m!2289837 () Bool)

(assert (=> bs!411667 m!2289837))

(assert (=> b!1865167 d!569407))

(declare-fun d!569409 () Bool)

(declare-fun res!835213 () Bool)

(declare-fun e!1190665 () Bool)

(assert (=> d!569409 (=> (not res!835213) (not e!1190665))))

(assert (=> d!569409 (= res!835213 (<= (size!16375 (list!8448 (xs!9748 (right!16982 err!3129)))) 512))))

(assert (=> d!569409 (= (inv!27326 (right!16982 err!3129)) e!1190665)))

(declare-fun b!1865255 () Bool)

(declare-fun res!835214 () Bool)

(assert (=> b!1865255 (=> (not res!835214) (not e!1190665))))

(assert (=> b!1865255 (= res!835214 (= (csize!13963 (right!16982 err!3129)) (size!16375 (list!8448 (xs!9748 (right!16982 err!3129))))))))

(declare-fun b!1865256 () Bool)

(assert (=> b!1865256 (= e!1190665 (and (> (csize!13963 (right!16982 err!3129)) 0) (<= (csize!13963 (right!16982 err!3129)) 512)))))

(assert (= (and d!569409 res!835213) b!1865255))

(assert (= (and b!1865255 res!835214) b!1865256))

(declare-fun m!2289839 () Bool)

(assert (=> d!569409 m!2289839))

(assert (=> d!569409 m!2289839))

(declare-fun m!2289841 () Bool)

(assert (=> d!569409 m!2289841))

(assert (=> b!1865255 m!2289839))

(assert (=> b!1865255 m!2289839))

(assert (=> b!1865255 m!2289841))

(assert (=> b!1865082 d!569409))

(declare-fun d!569411 () Bool)

(declare-fun lt!718477 () Bool)

(assert (=> d!569411 (= lt!718477 (isEmpty!12886 (list!8446 (right!16982 err!3129))))))

(assert (=> d!569411 (= lt!718477 (= (size!16377 (right!16982 err!3129)) 0))))

(assert (=> d!569411 (= (isEmpty!12885 (right!16982 err!3129)) lt!718477)))

(declare-fun bs!411668 () Bool)

(assert (= bs!411668 d!569411))

(declare-fun m!2289843 () Bool)

(assert (=> bs!411668 m!2289843))

(assert (=> bs!411668 m!2289843))

(declare-fun m!2289845 () Bool)

(assert (=> bs!411668 m!2289845))

(declare-fun m!2289847 () Bool)

(assert (=> bs!411668 m!2289847))

(assert (=> b!1865119 d!569411))

(declare-fun d!569413 () Bool)

(declare-fun res!835219 () Bool)

(declare-fun e!1190667 () Bool)

(assert (=> d!569413 (=> res!835219 e!1190667)))

(assert (=> d!569413 (= res!835219 (not ((_ is Node!6866) (left!16652 t!4595))))))

(assert (=> d!569413 (= (isBalanced!2167 (left!16652 t!4595)) e!1190667)))

(declare-fun b!1865257 () Bool)

(declare-fun res!835220 () Bool)

(declare-fun e!1190666 () Bool)

(assert (=> b!1865257 (=> (not res!835220) (not e!1190666))))

(assert (=> b!1865257 (= res!835220 (isBalanced!2167 (left!16652 (left!16652 t!4595))))))

(declare-fun b!1865258 () Bool)

(assert (=> b!1865258 (= e!1190666 (not (isEmpty!12885 (right!16982 (left!16652 t!4595)))))))

(declare-fun b!1865259 () Bool)

(declare-fun res!835216 () Bool)

(assert (=> b!1865259 (=> (not res!835216) (not e!1190666))))

(assert (=> b!1865259 (= res!835216 (isBalanced!2167 (right!16982 (left!16652 t!4595))))))

(declare-fun b!1865260 () Bool)

(declare-fun res!835217 () Bool)

(assert (=> b!1865260 (=> (not res!835217) (not e!1190666))))

(assert (=> b!1865260 (= res!835217 (<= (- (height!1054 (left!16652 (left!16652 t!4595))) (height!1054 (right!16982 (left!16652 t!4595)))) 1))))

(declare-fun b!1865261 () Bool)

(declare-fun res!835218 () Bool)

(assert (=> b!1865261 (=> (not res!835218) (not e!1190666))))

(assert (=> b!1865261 (= res!835218 (not (isEmpty!12885 (left!16652 (left!16652 t!4595)))))))

(declare-fun b!1865262 () Bool)

(assert (=> b!1865262 (= e!1190667 e!1190666)))

(declare-fun res!835215 () Bool)

(assert (=> b!1865262 (=> (not res!835215) (not e!1190666))))

(assert (=> b!1865262 (= res!835215 (<= (- 1) (- (height!1054 (left!16652 (left!16652 t!4595))) (height!1054 (right!16982 (left!16652 t!4595))))))))

(assert (= (and d!569413 (not res!835219)) b!1865262))

(assert (= (and b!1865262 res!835215) b!1865260))

(assert (= (and b!1865260 res!835217) b!1865257))

(assert (= (and b!1865257 res!835220) b!1865259))

(assert (= (and b!1865259 res!835216) b!1865261))

(assert (= (and b!1865261 res!835218) b!1865258))

(declare-fun m!2289849 () Bool)

(assert (=> b!1865261 m!2289849))

(declare-fun m!2289851 () Bool)

(assert (=> b!1865259 m!2289851))

(declare-fun m!2289853 () Bool)

(assert (=> b!1865258 m!2289853))

(declare-fun m!2289855 () Bool)

(assert (=> b!1865260 m!2289855))

(declare-fun m!2289857 () Bool)

(assert (=> b!1865260 m!2289857))

(assert (=> b!1865262 m!2289855))

(assert (=> b!1865262 m!2289857))

(declare-fun m!2289859 () Bool)

(assert (=> b!1865257 m!2289859))

(assert (=> b!1865048 d!569413))

(declare-fun d!569415 () Bool)

(assert (=> d!569415 (= (inv!27323 (xs!9748 (right!16982 err!3129))) (<= (size!16375 (innerList!6926 (xs!9748 (right!16982 err!3129)))) 2147483647))))

(declare-fun bs!411669 () Bool)

(assert (= bs!411669 d!569415))

(declare-fun m!2289861 () Bool)

(assert (=> bs!411669 m!2289861))

(assert (=> b!1865163 d!569415))

(declare-fun d!569417 () Bool)

(declare-fun c!303847 () Bool)

(assert (=> d!569417 (= c!303847 ((_ is Node!6866) (left!16652 (left!16652 t!4595))))))

(declare-fun e!1190668 () Bool)

(assert (=> d!569417 (= (inv!27324 (left!16652 (left!16652 t!4595))) e!1190668)))

(declare-fun b!1865263 () Bool)

(assert (=> b!1865263 (= e!1190668 (inv!27325 (left!16652 (left!16652 t!4595))))))

(declare-fun b!1865264 () Bool)

(declare-fun e!1190669 () Bool)

(assert (=> b!1865264 (= e!1190668 e!1190669)))

(declare-fun res!835221 () Bool)

(assert (=> b!1865264 (= res!835221 (not ((_ is Leaf!10067) (left!16652 (left!16652 t!4595)))))))

(assert (=> b!1865264 (=> res!835221 e!1190669)))

(declare-fun b!1865265 () Bool)

(assert (=> b!1865265 (= e!1190669 (inv!27326 (left!16652 (left!16652 t!4595))))))

(assert (= (and d!569417 c!303847) b!1865263))

(assert (= (and d!569417 (not c!303847)) b!1865264))

(assert (= (and b!1865264 (not res!835221)) b!1865265))

(declare-fun m!2289863 () Bool)

(assert (=> b!1865263 m!2289863))

(declare-fun m!2289865 () Bool)

(assert (=> b!1865265 m!2289865))

(assert (=> b!1865166 d!569417))

(declare-fun d!569421 () Bool)

(declare-fun c!303848 () Bool)

(assert (=> d!569421 (= c!303848 ((_ is Node!6866) (right!16982 (left!16652 t!4595))))))

(declare-fun e!1190670 () Bool)

(assert (=> d!569421 (= (inv!27324 (right!16982 (left!16652 t!4595))) e!1190670)))

(declare-fun b!1865266 () Bool)

(assert (=> b!1865266 (= e!1190670 (inv!27325 (right!16982 (left!16652 t!4595))))))

(declare-fun b!1865267 () Bool)

(declare-fun e!1190671 () Bool)

(assert (=> b!1865267 (= e!1190670 e!1190671)))

(declare-fun res!835222 () Bool)

(assert (=> b!1865267 (= res!835222 (not ((_ is Leaf!10067) (right!16982 (left!16652 t!4595)))))))

(assert (=> b!1865267 (=> res!835222 e!1190671)))

(declare-fun b!1865268 () Bool)

(assert (=> b!1865268 (= e!1190671 (inv!27326 (right!16982 (left!16652 t!4595))))))

(assert (= (and d!569421 c!303848) b!1865266))

(assert (= (and d!569421 (not c!303848)) b!1865267))

(assert (= (and b!1865267 (not res!835222)) b!1865268))

(declare-fun m!2289867 () Bool)

(assert (=> b!1865266 m!2289867))

(declare-fun m!2289869 () Bool)

(assert (=> b!1865268 m!2289869))

(assert (=> b!1865166 d!569421))

(assert (=> b!1865026 d!569351))

(assert (=> b!1865026 d!569353))

(declare-fun d!569423 () Bool)

(declare-fun res!835227 () Bool)

(declare-fun e!1190673 () Bool)

(assert (=> d!569423 (=> res!835227 e!1190673)))

(assert (=> d!569423 (= res!835227 (not ((_ is Node!6866) (right!16982 t!4595))))))

(assert (=> d!569423 (= (isBalanced!2167 (right!16982 t!4595)) e!1190673)))

(declare-fun b!1865269 () Bool)

(declare-fun res!835228 () Bool)

(declare-fun e!1190672 () Bool)

(assert (=> b!1865269 (=> (not res!835228) (not e!1190672))))

(assert (=> b!1865269 (= res!835228 (isBalanced!2167 (left!16652 (right!16982 t!4595))))))

(declare-fun b!1865270 () Bool)

(assert (=> b!1865270 (= e!1190672 (not (isEmpty!12885 (right!16982 (right!16982 t!4595)))))))

(declare-fun b!1865271 () Bool)

(declare-fun res!835224 () Bool)

(assert (=> b!1865271 (=> (not res!835224) (not e!1190672))))

(assert (=> b!1865271 (= res!835224 (isBalanced!2167 (right!16982 (right!16982 t!4595))))))

(declare-fun b!1865272 () Bool)

(declare-fun res!835225 () Bool)

(assert (=> b!1865272 (=> (not res!835225) (not e!1190672))))

(assert (=> b!1865272 (= res!835225 (<= (- (height!1054 (left!16652 (right!16982 t!4595))) (height!1054 (right!16982 (right!16982 t!4595)))) 1))))

(declare-fun b!1865273 () Bool)

(declare-fun res!835226 () Bool)

(assert (=> b!1865273 (=> (not res!835226) (not e!1190672))))

(assert (=> b!1865273 (= res!835226 (not (isEmpty!12885 (left!16652 (right!16982 t!4595)))))))

(declare-fun b!1865274 () Bool)

(assert (=> b!1865274 (= e!1190673 e!1190672)))

(declare-fun res!835223 () Bool)

(assert (=> b!1865274 (=> (not res!835223) (not e!1190672))))

(assert (=> b!1865274 (= res!835223 (<= (- 1) (- (height!1054 (left!16652 (right!16982 t!4595))) (height!1054 (right!16982 (right!16982 t!4595))))))))

(assert (= (and d!569423 (not res!835227)) b!1865274))

(assert (= (and b!1865274 res!835223) b!1865272))

(assert (= (and b!1865272 res!835225) b!1865269))

(assert (= (and b!1865269 res!835228) b!1865271))

(assert (= (and b!1865271 res!835224) b!1865273))

(assert (= (and b!1865273 res!835226) b!1865270))

(declare-fun m!2289871 () Bool)

(assert (=> b!1865273 m!2289871))

(declare-fun m!2289873 () Bool)

(assert (=> b!1865271 m!2289873))

(declare-fun m!2289875 () Bool)

(assert (=> b!1865270 m!2289875))

(declare-fun m!2289877 () Bool)

(assert (=> b!1865272 m!2289877))

(declare-fun m!2289879 () Bool)

(assert (=> b!1865272 m!2289879))

(assert (=> b!1865274 m!2289877))

(assert (=> b!1865274 m!2289879))

(declare-fun m!2289881 () Bool)

(assert (=> b!1865269 m!2289881))

(assert (=> b!1865050 d!569423))

(declare-fun d!569427 () Bool)

(declare-fun res!835229 () Bool)

(declare-fun e!1190674 () Bool)

(assert (=> d!569427 (=> (not res!835229) (not e!1190674))))

(assert (=> d!569427 (= res!835229 (= (csize!13962 err!3129) (+ (size!16377 (left!16652 err!3129)) (size!16377 (right!16982 err!3129)))))))

(assert (=> d!569427 (= (inv!27325 err!3129) e!1190674)))

(declare-fun b!1865275 () Bool)

(declare-fun res!835230 () Bool)

(assert (=> b!1865275 (=> (not res!835230) (not e!1190674))))

(assert (=> b!1865275 (= res!835230 (and (not (= (left!16652 err!3129) Empty!6866)) (not (= (right!16982 err!3129) Empty!6866))))))

(declare-fun b!1865276 () Bool)

(declare-fun res!835231 () Bool)

(assert (=> b!1865276 (=> (not res!835231) (not e!1190674))))

(assert (=> b!1865276 (= res!835231 (= (cheight!7077 err!3129) (+ (max!0 (height!1054 (left!16652 err!3129)) (height!1054 (right!16982 err!3129))) 1)))))

(declare-fun b!1865277 () Bool)

(assert (=> b!1865277 (= e!1190674 (<= 0 (cheight!7077 err!3129)))))

(assert (= (and d!569427 res!835229) b!1865275))

(assert (= (and b!1865275 res!835230) b!1865276))

(assert (= (and b!1865276 res!835231) b!1865277))

(declare-fun m!2289887 () Bool)

(assert (=> d!569427 m!2289887))

(assert (=> d!569427 m!2289847))

(assert (=> b!1865276 m!2289647))

(assert (=> b!1865276 m!2289649))

(assert (=> b!1865276 m!2289647))

(assert (=> b!1865276 m!2289649))

(declare-fun m!2289891 () Bool)

(assert (=> b!1865276 m!2289891))

(assert (=> b!1865124 d!569427))

(declare-fun d!569435 () Bool)

(declare-fun res!835236 () Bool)

(declare-fun e!1190676 () Bool)

(assert (=> d!569435 (=> res!835236 e!1190676)))

(assert (=> d!569435 (= res!835236 (not ((_ is Node!6866) (right!16982 err!3129))))))

(assert (=> d!569435 (= (isBalanced!2167 (right!16982 err!3129)) e!1190676)))

(declare-fun b!1865278 () Bool)

(declare-fun res!835237 () Bool)

(declare-fun e!1190675 () Bool)

(assert (=> b!1865278 (=> (not res!835237) (not e!1190675))))

(assert (=> b!1865278 (= res!835237 (isBalanced!2167 (left!16652 (right!16982 err!3129))))))

(declare-fun b!1865279 () Bool)

(assert (=> b!1865279 (= e!1190675 (not (isEmpty!12885 (right!16982 (right!16982 err!3129)))))))

(declare-fun b!1865280 () Bool)

(declare-fun res!835233 () Bool)

(assert (=> b!1865280 (=> (not res!835233) (not e!1190675))))

(assert (=> b!1865280 (= res!835233 (isBalanced!2167 (right!16982 (right!16982 err!3129))))))

(declare-fun b!1865281 () Bool)

(declare-fun res!835234 () Bool)

(assert (=> b!1865281 (=> (not res!835234) (not e!1190675))))

(assert (=> b!1865281 (= res!835234 (<= (- (height!1054 (left!16652 (right!16982 err!3129))) (height!1054 (right!16982 (right!16982 err!3129)))) 1))))

(declare-fun b!1865282 () Bool)

(declare-fun res!835235 () Bool)

(assert (=> b!1865282 (=> (not res!835235) (not e!1190675))))

(assert (=> b!1865282 (= res!835235 (not (isEmpty!12885 (left!16652 (right!16982 err!3129)))))))

(declare-fun b!1865283 () Bool)

(assert (=> b!1865283 (= e!1190676 e!1190675)))

(declare-fun res!835232 () Bool)

(assert (=> b!1865283 (=> (not res!835232) (not e!1190675))))

(assert (=> b!1865283 (= res!835232 (<= (- 1) (- (height!1054 (left!16652 (right!16982 err!3129))) (height!1054 (right!16982 (right!16982 err!3129))))))))

(assert (= (and d!569435 (not res!835236)) b!1865283))

(assert (= (and b!1865283 res!835232) b!1865281))

(assert (= (and b!1865281 res!835234) b!1865278))

(assert (= (and b!1865278 res!835237) b!1865280))

(assert (= (and b!1865280 res!835233) b!1865282))

(assert (= (and b!1865282 res!835235) b!1865279))

(declare-fun m!2289893 () Bool)

(assert (=> b!1865282 m!2289893))

(declare-fun m!2289895 () Bool)

(assert (=> b!1865280 m!2289895))

(declare-fun m!2289897 () Bool)

(assert (=> b!1865279 m!2289897))

(assert (=> b!1865281 m!2289823))

(assert (=> b!1865281 m!2289825))

(assert (=> b!1865283 m!2289823))

(assert (=> b!1865283 m!2289825))

(declare-fun m!2289899 () Bool)

(assert (=> b!1865278 m!2289899))

(assert (=> b!1865120 d!569435))

(declare-fun d!569437 () Bool)

(declare-fun lt!718479 () Bool)

(assert (=> d!569437 (= lt!718479 (isEmpty!12886 (list!8446 (right!16982 t!4595))))))

(assert (=> d!569437 (= lt!718479 (= (size!16377 (right!16982 t!4595)) 0))))

(assert (=> d!569437 (= (isEmpty!12885 (right!16982 t!4595)) lt!718479)))

(declare-fun bs!411672 () Bool)

(assert (= bs!411672 d!569437))

(assert (=> bs!411672 m!2289627))

(assert (=> bs!411672 m!2289627))

(declare-fun m!2289901 () Bool)

(assert (=> bs!411672 m!2289901))

(declare-fun m!2289903 () Bool)

(assert (=> bs!411672 m!2289903))

(assert (=> b!1865049 d!569437))

(declare-fun d!569439 () Bool)

(declare-fun lt!718480 () Bool)

(assert (=> d!569439 (= lt!718480 (isEmpty!12886 (list!8446 (left!16652 err!3129))))))

(assert (=> d!569439 (= lt!718480 (= (size!16377 (left!16652 err!3129)) 0))))

(assert (=> d!569439 (= (isEmpty!12885 (left!16652 err!3129)) lt!718480)))

(declare-fun bs!411673 () Bool)

(assert (= bs!411673 d!569439))

(declare-fun m!2289905 () Bool)

(assert (=> bs!411673 m!2289905))

(assert (=> bs!411673 m!2289905))

(declare-fun m!2289907 () Bool)

(assert (=> bs!411673 m!2289907))

(assert (=> bs!411673 m!2289887))

(assert (=> b!1865122 d!569439))

(declare-fun d!569441 () Bool)

(assert (=> d!569441 (= (height!1054 (left!16652 t!4595)) (ite ((_ is Empty!6866) (left!16652 t!4595)) 0 (ite ((_ is Leaf!10067) (left!16652 t!4595)) 1 (cheight!7077 (left!16652 t!4595)))))))

(assert (=> b!1865051 d!569441))

(declare-fun d!569443 () Bool)

(assert (=> d!569443 (= (height!1054 (right!16982 t!4595)) (ite ((_ is Empty!6866) (right!16982 t!4595)) 0 (ite ((_ is Leaf!10067) (right!16982 t!4595)) 1 (cheight!7077 (right!16982 t!4595)))))))

(assert (=> b!1865051 d!569443))

(declare-fun d!569445 () Bool)

(assert (=> d!569445 (= (height!1054 (left!16652 err!3129)) (ite ((_ is Empty!6866) (left!16652 err!3129)) 0 (ite ((_ is Leaf!10067) (left!16652 err!3129)) 1 (cheight!7077 (left!16652 err!3129)))))))

(assert (=> b!1865121 d!569445))

(declare-fun d!569447 () Bool)

(assert (=> d!569447 (= (height!1054 (right!16982 err!3129)) (ite ((_ is Empty!6866) (right!16982 err!3129)) 0 (ite ((_ is Leaf!10067) (right!16982 err!3129)) 1 (cheight!7077 (right!16982 err!3129)))))))

(assert (=> b!1865121 d!569447))

(declare-fun d!569449 () Bool)

(declare-fun res!835238 () Bool)

(declare-fun e!1190680 () Bool)

(assert (=> d!569449 (=> (not res!835238) (not e!1190680))))

(assert (=> d!569449 (= res!835238 (= (csize!13962 t!4595) (+ (size!16377 (left!16652 t!4595)) (size!16377 (right!16982 t!4595)))))))

(assert (=> d!569449 (= (inv!27325 t!4595) e!1190680)))

(declare-fun b!1865290 () Bool)

(declare-fun res!835239 () Bool)

(assert (=> b!1865290 (=> (not res!835239) (not e!1190680))))

(assert (=> b!1865290 (= res!835239 (and (not (= (left!16652 t!4595) Empty!6866)) (not (= (right!16982 t!4595) Empty!6866))))))

(declare-fun b!1865291 () Bool)

(declare-fun res!835240 () Bool)

(assert (=> b!1865291 (=> (not res!835240) (not e!1190680))))

(assert (=> b!1865291 (= res!835240 (= (cheight!7077 t!4595) (+ (max!0 (height!1054 (left!16652 t!4595)) (height!1054 (right!16982 t!4595))) 1)))))

(declare-fun b!1865292 () Bool)

(assert (=> b!1865292 (= e!1190680 (<= 0 (cheight!7077 t!4595)))))

(assert (= (and d!569449 res!835238) b!1865290))

(assert (= (and b!1865290 res!835239) b!1865291))

(assert (= (and b!1865291 res!835240) b!1865292))

(assert (=> d!569449 m!2289683))

(assert (=> d!569449 m!2289903))

(assert (=> b!1865291 m!2289593))

(assert (=> b!1865291 m!2289595))

(assert (=> b!1865291 m!2289593))

(assert (=> b!1865291 m!2289595))

(declare-fun m!2289911 () Bool)

(assert (=> b!1865291 m!2289911))

(assert (=> b!1865074 d!569449))

(declare-fun d!569453 () Bool)

(declare-fun res!835241 () Bool)

(declare-fun e!1190681 () Bool)

(assert (=> d!569453 (=> (not res!835241) (not e!1190681))))

(assert (=> d!569453 (= res!835241 (= (csize!13962 (left!16652 t!4595)) (+ (size!16377 (left!16652 (left!16652 t!4595))) (size!16377 (right!16982 (left!16652 t!4595))))))))

(assert (=> d!569453 (= (inv!27325 (left!16652 t!4595)) e!1190681)))

(declare-fun b!1865293 () Bool)

(declare-fun res!835242 () Bool)

(assert (=> b!1865293 (=> (not res!835242) (not e!1190681))))

(assert (=> b!1865293 (= res!835242 (and (not (= (left!16652 (left!16652 t!4595)) Empty!6866)) (not (= (right!16982 (left!16652 t!4595)) Empty!6866))))))

(declare-fun b!1865294 () Bool)

(declare-fun res!835243 () Bool)

(assert (=> b!1865294 (=> (not res!835243) (not e!1190681))))

(assert (=> b!1865294 (= res!835243 (= (cheight!7077 (left!16652 t!4595)) (+ (max!0 (height!1054 (left!16652 (left!16652 t!4595))) (height!1054 (right!16982 (left!16652 t!4595)))) 1)))))

(declare-fun b!1865295 () Bool)

(assert (=> b!1865295 (= e!1190681 (<= 0 (cheight!7077 (left!16652 t!4595))))))

(assert (= (and d!569453 res!835241) b!1865293))

(assert (= (and b!1865293 res!835242) b!1865294))

(assert (= (and b!1865294 res!835243) b!1865295))

(declare-fun m!2289913 () Bool)

(assert (=> d!569453 m!2289913))

(declare-fun m!2289915 () Bool)

(assert (=> d!569453 m!2289915))

(assert (=> b!1865294 m!2289855))

(assert (=> b!1865294 m!2289857))

(assert (=> b!1865294 m!2289855))

(assert (=> b!1865294 m!2289857))

(declare-fun m!2289917 () Bool)

(assert (=> b!1865294 m!2289917))

(assert (=> b!1865104 d!569453))

(declare-fun d!569455 () Bool)

(declare-fun lt!718486 () Int)

(assert (=> d!569455 (>= lt!718486 0)))

(declare-fun e!1190686 () Int)

(assert (=> d!569455 (= lt!718486 e!1190686)))

(declare-fun c!303854 () Bool)

(assert (=> d!569455 (= c!303854 ((_ is Nil!20671) (innerList!6926 (xs!9748 err!3129))))))

(assert (=> d!569455 (= (size!16375 (innerList!6926 (xs!9748 err!3129))) lt!718486)))

(declare-fun b!1865304 () Bool)

(assert (=> b!1865304 (= e!1190686 0)))

(declare-fun b!1865305 () Bool)

(assert (=> b!1865305 (= e!1190686 (+ 1 (size!16375 (t!172856 (innerList!6926 (xs!9748 err!3129))))))))

(assert (= (and d!569455 c!303854) b!1865304))

(assert (= (and d!569455 (not c!303854)) b!1865305))

(declare-fun m!2289919 () Bool)

(assert (=> b!1865305 m!2289919))

(assert (=> d!569373 d!569455))

(declare-fun d!569457 () Bool)

(declare-fun res!835250 () Bool)

(declare-fun e!1190687 () Bool)

(assert (=> d!569457 (=> (not res!835250) (not e!1190687))))

(assert (=> d!569457 (= res!835250 (<= (size!16375 (list!8448 (xs!9748 (left!16652 t!4595)))) 512))))

(assert (=> d!569457 (= (inv!27326 (left!16652 t!4595)) e!1190687)))

(declare-fun b!1865308 () Bool)

(declare-fun res!835251 () Bool)

(assert (=> b!1865308 (=> (not res!835251) (not e!1190687))))

(assert (=> b!1865308 (= res!835251 (= (csize!13963 (left!16652 t!4595)) (size!16375 (list!8448 (xs!9748 (left!16652 t!4595))))))))

(declare-fun b!1865309 () Bool)

(assert (=> b!1865309 (= e!1190687 (and (> (csize!13963 (left!16652 t!4595)) 0) (<= (csize!13963 (left!16652 t!4595)) 512)))))

(assert (= (and d!569457 res!835250) b!1865308))

(assert (= (and b!1865308 res!835251) b!1865309))

(assert (=> d!569457 m!2289799))

(assert (=> d!569457 m!2289799))

(declare-fun m!2289921 () Bool)

(assert (=> d!569457 m!2289921))

(assert (=> b!1865308 m!2289799))

(assert (=> b!1865308 m!2289799))

(assert (=> b!1865308 m!2289921))

(assert (=> b!1865106 d!569457))

(declare-fun d!569459 () Bool)

(declare-fun res!835252 () Bool)

(declare-fun e!1190688 () Bool)

(assert (=> d!569459 (=> (not res!835252) (not e!1190688))))

(assert (=> d!569459 (= res!835252 (<= (size!16375 (list!8448 (xs!9748 t!4595))) 512))))

(assert (=> d!569459 (= (inv!27326 t!4595) e!1190688)))

(declare-fun b!1865310 () Bool)

(declare-fun res!835253 () Bool)

(assert (=> b!1865310 (=> (not res!835253) (not e!1190688))))

(assert (=> b!1865310 (= res!835253 (= (csize!13963 t!4595) (size!16375 (list!8448 (xs!9748 t!4595)))))))

(declare-fun b!1865311 () Bool)

(assert (=> b!1865311 (= e!1190688 (and (> (csize!13963 t!4595) 0) (<= (csize!13963 t!4595) 512)))))

(assert (= (and d!569459 res!835252) b!1865310))

(assert (= (and b!1865310 res!835253) b!1865311))

(assert (=> d!569459 m!2289631))

(assert (=> d!569459 m!2289631))

(declare-fun m!2289923 () Bool)

(assert (=> d!569459 m!2289923))

(assert (=> b!1865310 m!2289631))

(assert (=> b!1865310 m!2289631))

(assert (=> b!1865310 m!2289923))

(assert (=> b!1865076 d!569459))

(declare-fun d!569461 () Bool)

(declare-fun lt!718487 () Int)

(assert (=> d!569461 (>= lt!718487 0)))

(declare-fun e!1190689 () Int)

(assert (=> d!569461 (= lt!718487 e!1190689)))

(declare-fun c!303855 () Bool)

(assert (=> d!569461 (= c!303855 ((_ is Nil!20671) (innerList!6926 (xs!9748 t!4595))))))

(assert (=> d!569461 (= (size!16375 (innerList!6926 (xs!9748 t!4595))) lt!718487)))

(declare-fun b!1865312 () Bool)

(assert (=> b!1865312 (= e!1190689 0)))

(declare-fun b!1865313 () Bool)

(assert (=> b!1865313 (= e!1190689 (+ 1 (size!16375 (t!172856 (innerList!6926 (xs!9748 t!4595))))))))

(assert (= (and d!569461 c!303855) b!1865312))

(assert (= (and d!569461 (not c!303855)) b!1865313))

(declare-fun m!2289925 () Bool)

(assert (=> b!1865313 m!2289925))

(assert (=> d!569333 d!569461))

(declare-fun d!569463 () Bool)

(assert (=> d!569463 (= (isEmpty!12886 (list!8446 (left!16652 t!4595))) ((_ is Nil!20671) (list!8446 (left!16652 t!4595))))))

(assert (=> d!569369 d!569463))

(assert (=> d!569369 d!569389))

(declare-fun d!569465 () Bool)

(declare-fun lt!718490 () Int)

(assert (=> d!569465 (= lt!718490 (size!16375 (list!8446 (left!16652 t!4595))))))

(assert (=> d!569465 (= lt!718490 (ite ((_ is Empty!6866) (left!16652 t!4595)) 0 (ite ((_ is Leaf!10067) (left!16652 t!4595)) (csize!13963 (left!16652 t!4595)) (csize!13962 (left!16652 t!4595)))))))

(assert (=> d!569465 (= (size!16377 (left!16652 t!4595)) lt!718490)))

(declare-fun bs!411674 () Bool)

(assert (= bs!411674 d!569465))

(assert (=> bs!411674 m!2289625))

(assert (=> bs!411674 m!2289625))

(assert (=> bs!411674 m!2289789))

(assert (=> d!569369 d!569465))

(declare-fun d!569475 () Bool)

(assert (=> d!569475 (= (isEmpty!12886 (list!8446 t!4595)) ((_ is Nil!20671) (list!8446 t!4595)))))

(assert (=> d!569359 d!569475))

(assert (=> d!569359 d!569347))

(declare-fun d!569477 () Bool)

(declare-fun lt!718491 () Int)

(assert (=> d!569477 (= lt!718491 (size!16375 (list!8446 t!4595)))))

(assert (=> d!569477 (= lt!718491 (ite ((_ is Empty!6866) t!4595) 0 (ite ((_ is Leaf!10067) t!4595) (csize!13963 t!4595) (csize!13962 t!4595))))))

(assert (=> d!569477 (= (size!16377 t!4595) lt!718491)))

(declare-fun bs!411675 () Bool)

(assert (= bs!411675 d!569477))

(assert (=> bs!411675 m!2289579))

(assert (=> bs!411675 m!2289579))

(declare-fun m!2289957 () Bool)

(assert (=> bs!411675 m!2289957))

(assert (=> d!569359 d!569477))

(assert (=> b!1865123 d!569445))

(assert (=> b!1865123 d!569447))

(assert (=> b!1865052 d!569369))

(declare-fun d!569481 () Bool)

(declare-fun res!835265 () Bool)

(declare-fun e!1190697 () Bool)

(assert (=> d!569481 (=> (not res!835265) (not e!1190697))))

(assert (=> d!569481 (= res!835265 (<= (size!16375 (list!8448 (xs!9748 err!3129))) 512))))

(assert (=> d!569481 (= (inv!27326 err!3129) e!1190697)))

(declare-fun b!1865329 () Bool)

(declare-fun res!835266 () Bool)

(assert (=> b!1865329 (=> (not res!835266) (not e!1190697))))

(assert (=> b!1865329 (= res!835266 (= (csize!13963 err!3129) (size!16375 (list!8448 (xs!9748 err!3129)))))))

(declare-fun b!1865330 () Bool)

(assert (=> b!1865330 (= e!1190697 (and (> (csize!13963 err!3129) 0) (<= (csize!13963 err!3129) 512)))))

(assert (= (and d!569481 res!835265) b!1865329))

(assert (= (and b!1865329 res!835266) b!1865330))

(declare-fun m!2289959 () Bool)

(assert (=> d!569481 m!2289959))

(assert (=> d!569481 m!2289959))

(declare-fun m!2289961 () Bool)

(assert (=> d!569481 m!2289961))

(assert (=> b!1865329 m!2289959))

(assert (=> b!1865329 m!2289959))

(assert (=> b!1865329 m!2289961))

(assert (=> b!1865126 d!569481))

(declare-fun d!569483 () Bool)

(declare-fun res!835267 () Bool)

(declare-fun e!1190698 () Bool)

(assert (=> d!569483 (=> (not res!835267) (not e!1190698))))

(assert (=> d!569483 (= res!835267 (= (csize!13962 (right!16982 t!4595)) (+ (size!16377 (left!16652 (right!16982 t!4595))) (size!16377 (right!16982 (right!16982 t!4595))))))))

(assert (=> d!569483 (= (inv!27325 (right!16982 t!4595)) e!1190698)))

(declare-fun b!1865331 () Bool)

(declare-fun res!835268 () Bool)

(assert (=> b!1865331 (=> (not res!835268) (not e!1190698))))

(assert (=> b!1865331 (= res!835268 (and (not (= (left!16652 (right!16982 t!4595)) Empty!6866)) (not (= (right!16982 (right!16982 t!4595)) Empty!6866))))))

(declare-fun b!1865332 () Bool)

(declare-fun res!835269 () Bool)

(assert (=> b!1865332 (=> (not res!835269) (not e!1190698))))

(assert (=> b!1865332 (= res!835269 (= (cheight!7077 (right!16982 t!4595)) (+ (max!0 (height!1054 (left!16652 (right!16982 t!4595))) (height!1054 (right!16982 (right!16982 t!4595)))) 1)))))

(declare-fun b!1865333 () Bool)

(assert (=> b!1865333 (= e!1190698 (<= 0 (cheight!7077 (right!16982 t!4595))))))

(assert (= (and d!569483 res!835267) b!1865331))

(assert (= (and b!1865331 res!835268) b!1865332))

(assert (= (and b!1865332 res!835269) b!1865333))

(declare-fun m!2289963 () Bool)

(assert (=> d!569483 m!2289963))

(declare-fun m!2289965 () Bool)

(assert (=> d!569483 m!2289965))

(assert (=> b!1865332 m!2289877))

(assert (=> b!1865332 m!2289879))

(assert (=> b!1865332 m!2289877))

(assert (=> b!1865332 m!2289879))

(declare-fun m!2289967 () Bool)

(assert (=> b!1865332 m!2289967))

(assert (=> b!1865115 d!569483))

(assert (=> b!1865030 d!569343))

(assert (=> b!1865030 d!569345))

(declare-fun d!569485 () Bool)

(declare-fun res!835270 () Bool)

(declare-fun e!1190699 () Bool)

(assert (=> d!569485 (=> (not res!835270) (not e!1190699))))

(assert (=> d!569485 (= res!835270 (<= (size!16375 (list!8448 (xs!9748 (right!16982 t!4595)))) 512))))

(assert (=> d!569485 (= (inv!27326 (right!16982 t!4595)) e!1190699)))

(declare-fun b!1865334 () Bool)

(declare-fun res!835271 () Bool)

(assert (=> b!1865334 (=> (not res!835271) (not e!1190699))))

(assert (=> b!1865334 (= res!835271 (= (csize!13963 (right!16982 t!4595)) (size!16375 (list!8448 (xs!9748 (right!16982 t!4595))))))))

(declare-fun b!1865335 () Bool)

(assert (=> b!1865335 (= e!1190699 (and (> (csize!13963 (right!16982 t!4595)) 0) (<= (csize!13963 (right!16982 t!4595)) 512)))))

(assert (= (and d!569485 res!835270) b!1865334))

(assert (= (and b!1865334 res!835271) b!1865335))

(assert (=> d!569485 m!2289807))

(assert (=> d!569485 m!2289807))

(declare-fun m!2289969 () Bool)

(assert (=> d!569485 m!2289969))

(assert (=> b!1865334 m!2289807))

(assert (=> b!1865334 m!2289807))

(assert (=> b!1865334 m!2289969))

(assert (=> b!1865117 d!569485))

(assert (=> b!1865053 d!569441))

(assert (=> b!1865053 d!569443))

(declare-fun d!569487 () Bool)

(assert (=> d!569487 (= (inv!27323 (xs!9748 (left!16652 err!3129))) (<= (size!16375 (innerList!6926 (xs!9748 (left!16652 err!3129)))) 2147483647))))

(declare-fun bs!411676 () Bool)

(assert (= bs!411676 d!569487))

(declare-fun m!2289971 () Bool)

(assert (=> bs!411676 m!2289971))

(assert (=> b!1865160 d!569487))

(declare-fun d!569489 () Bool)

(declare-fun res!835272 () Bool)

(declare-fun e!1190700 () Bool)

(assert (=> d!569489 (=> (not res!835272) (not e!1190700))))

(assert (=> d!569489 (= res!835272 (= (csize!13962 (left!16652 err!3129)) (+ (size!16377 (left!16652 (left!16652 err!3129))) (size!16377 (right!16982 (left!16652 err!3129))))))))

(assert (=> d!569489 (= (inv!27325 (left!16652 err!3129)) e!1190700)))

(declare-fun b!1865336 () Bool)

(declare-fun res!835273 () Bool)

(assert (=> b!1865336 (=> (not res!835273) (not e!1190700))))

(assert (=> b!1865336 (= res!835273 (and (not (= (left!16652 (left!16652 err!3129)) Empty!6866)) (not (= (right!16982 (left!16652 err!3129)) Empty!6866))))))

(declare-fun b!1865337 () Bool)

(declare-fun res!835274 () Bool)

(assert (=> b!1865337 (=> (not res!835274) (not e!1190700))))

(assert (=> b!1865337 (= res!835274 (= (cheight!7077 (left!16652 err!3129)) (+ (max!0 (height!1054 (left!16652 (left!16652 err!3129))) (height!1054 (right!16982 (left!16652 err!3129)))) 1)))))

(declare-fun b!1865338 () Bool)

(assert (=> b!1865338 (= e!1190700 (<= 0 (cheight!7077 (left!16652 err!3129))))))

(assert (= (and d!569489 res!835272) b!1865336))

(assert (= (and b!1865336 res!835273) b!1865337))

(assert (= (and b!1865337 res!835274) b!1865338))

(declare-fun m!2289973 () Bool)

(assert (=> d!569489 m!2289973))

(declare-fun m!2289975 () Bool)

(assert (=> d!569489 m!2289975))

(assert (=> b!1865337 m!2289773))

(assert (=> b!1865337 m!2289775))

(assert (=> b!1865337 m!2289773))

(assert (=> b!1865337 m!2289775))

(declare-fun m!2289977 () Bool)

(assert (=> b!1865337 m!2289977))

(assert (=> b!1865077 d!569489))

(declare-fun d!569491 () Bool)

(declare-fun c!303858 () Bool)

(assert (=> d!569491 (= c!303858 ((_ is Node!6866) (left!16652 (left!16652 err!3129))))))

(declare-fun e!1190701 () Bool)

(assert (=> d!569491 (= (inv!27324 (left!16652 (left!16652 err!3129))) e!1190701)))

(declare-fun b!1865339 () Bool)

(assert (=> b!1865339 (= e!1190701 (inv!27325 (left!16652 (left!16652 err!3129))))))

(declare-fun b!1865340 () Bool)

(declare-fun e!1190702 () Bool)

(assert (=> b!1865340 (= e!1190701 e!1190702)))

(declare-fun res!835275 () Bool)

(assert (=> b!1865340 (= res!835275 (not ((_ is Leaf!10067) (left!16652 (left!16652 err!3129)))))))

(assert (=> b!1865340 (=> res!835275 e!1190702)))

(declare-fun b!1865341 () Bool)

(assert (=> b!1865341 (= e!1190702 (inv!27326 (left!16652 (left!16652 err!3129))))))

(assert (= (and d!569491 c!303858) b!1865339))

(assert (= (and d!569491 (not c!303858)) b!1865340))

(assert (= (and b!1865340 (not res!835275)) b!1865341))

(declare-fun m!2289979 () Bool)

(assert (=> b!1865339 m!2289979))

(declare-fun m!2289981 () Bool)

(assert (=> b!1865341 m!2289981))

(assert (=> b!1865159 d!569491))

(declare-fun d!569493 () Bool)

(declare-fun c!303859 () Bool)

(assert (=> d!569493 (= c!303859 ((_ is Node!6866) (right!16982 (left!16652 err!3129))))))

(declare-fun e!1190703 () Bool)

(assert (=> d!569493 (= (inv!27324 (right!16982 (left!16652 err!3129))) e!1190703)))

(declare-fun b!1865342 () Bool)

(assert (=> b!1865342 (= e!1190703 (inv!27325 (right!16982 (left!16652 err!3129))))))

(declare-fun b!1865343 () Bool)

(declare-fun e!1190704 () Bool)

(assert (=> b!1865343 (= e!1190703 e!1190704)))

(declare-fun res!835276 () Bool)

(assert (=> b!1865343 (= res!835276 (not ((_ is Leaf!10067) (right!16982 (left!16652 err!3129)))))))

(assert (=> b!1865343 (=> res!835276 e!1190704)))

(declare-fun b!1865344 () Bool)

(assert (=> b!1865344 (= e!1190704 (inv!27326 (right!16982 (left!16652 err!3129))))))

(assert (= (and d!569493 c!303859) b!1865342))

(assert (= (and d!569493 (not c!303859)) b!1865343))

(assert (= (and b!1865343 (not res!835276)) b!1865344))

(declare-fun m!2289985 () Bool)

(assert (=> b!1865342 m!2289985))

(declare-fun m!2289987 () Bool)

(assert (=> b!1865344 m!2289987))

(assert (=> b!1865159 d!569493))

(declare-fun d!569497 () Bool)

(declare-fun res!835277 () Bool)

(declare-fun e!1190705 () Bool)

(assert (=> d!569497 (=> (not res!835277) (not e!1190705))))

(assert (=> d!569497 (= res!835277 (<= (size!16375 (list!8448 (xs!9748 (left!16652 err!3129)))) 512))))

(assert (=> d!569497 (= (inv!27326 (left!16652 err!3129)) e!1190705)))

(declare-fun b!1865345 () Bool)

(declare-fun res!835278 () Bool)

(assert (=> b!1865345 (=> (not res!835278) (not e!1190705))))

(assert (=> b!1865345 (= res!835278 (= (csize!13963 (left!16652 err!3129)) (size!16375 (list!8448 (xs!9748 (left!16652 err!3129))))))))

(declare-fun b!1865346 () Bool)

(assert (=> b!1865346 (= e!1190705 (and (> (csize!13963 (left!16652 err!3129)) 0) (<= (csize!13963 (left!16652 err!3129)) 512)))))

(assert (= (and d!569497 res!835277) b!1865345))

(assert (= (and b!1865345 res!835278) b!1865346))

(declare-fun m!2289991 () Bool)

(assert (=> d!569497 m!2289991))

(assert (=> d!569497 m!2289991))

(declare-fun m!2289993 () Bool)

(assert (=> d!569497 m!2289993))

(assert (=> b!1865345 m!2289991))

(assert (=> b!1865345 m!2289991))

(assert (=> b!1865345 m!2289993))

(assert (=> b!1865079 d!569497))

(declare-fun b!1865347 () Bool)

(declare-fun e!1190706 () Bool)

(declare-fun tp!531085 () Bool)

(assert (=> b!1865347 (= e!1190706 (and tp_is_empty!8653 tp!531085))))

(assert (=> b!1865147 (= tp!531043 e!1190706)))

(assert (= (and b!1865147 ((_ is Cons!20671) (t!172856 (innerList!6926 (xs!9748 t!4595))))) b!1865347))

(declare-fun b!1865348 () Bool)

(declare-fun e!1190707 () Bool)

(declare-fun tp!531086 () Bool)

(assert (=> b!1865348 (= e!1190707 (and tp_is_empty!8653 tp!531086))))

(assert (=> b!1865165 (= tp!531056 e!1190707)))

(assert (= (and b!1865165 ((_ is Cons!20671) (t!172856 (innerList!6926 (xs!9748 err!3129))))) b!1865348))

(declare-fun e!1190709 () Bool)

(declare-fun tp!531089 () Bool)

(declare-fun b!1865349 () Bool)

(declare-fun tp!531087 () Bool)

(assert (=> b!1865349 (= e!1190709 (and (inv!27324 (left!16652 (left!16652 (right!16982 err!3129)))) tp!531089 (inv!27324 (right!16982 (left!16652 (right!16982 err!3129)))) tp!531087))))

(declare-fun b!1865351 () Bool)

(declare-fun e!1190708 () Bool)

(declare-fun tp!531088 () Bool)

(assert (=> b!1865351 (= e!1190708 tp!531088)))

(declare-fun b!1865350 () Bool)

(assert (=> b!1865350 (= e!1190709 (and (inv!27323 (xs!9748 (left!16652 (right!16982 err!3129)))) e!1190708))))

(assert (=> b!1865162 (= tp!531055 (and (inv!27324 (left!16652 (right!16982 err!3129))) e!1190709))))

(assert (= (and b!1865162 ((_ is Node!6866) (left!16652 (right!16982 err!3129)))) b!1865349))

(assert (= b!1865350 b!1865351))

(assert (= (and b!1865162 ((_ is Leaf!10067) (left!16652 (right!16982 err!3129)))) b!1865350))

(declare-fun m!2289995 () Bool)

(assert (=> b!1865349 m!2289995))

(declare-fun m!2289997 () Bool)

(assert (=> b!1865349 m!2289997))

(declare-fun m!2289999 () Bool)

(assert (=> b!1865350 m!2289999))

(assert (=> b!1865162 m!2289709))

(declare-fun e!1190711 () Bool)

(declare-fun b!1865352 () Bool)

(declare-fun tp!531092 () Bool)

(declare-fun tp!531090 () Bool)

(assert (=> b!1865352 (= e!1190711 (and (inv!27324 (left!16652 (right!16982 (right!16982 err!3129)))) tp!531092 (inv!27324 (right!16982 (right!16982 (right!16982 err!3129)))) tp!531090))))

(declare-fun b!1865354 () Bool)

(declare-fun e!1190710 () Bool)

(declare-fun tp!531091 () Bool)

(assert (=> b!1865354 (= e!1190710 tp!531091)))

(declare-fun b!1865353 () Bool)

(assert (=> b!1865353 (= e!1190711 (and (inv!27323 (xs!9748 (right!16982 (right!16982 err!3129)))) e!1190710))))

(assert (=> b!1865162 (= tp!531053 (and (inv!27324 (right!16982 (right!16982 err!3129))) e!1190711))))

(assert (= (and b!1865162 ((_ is Node!6866) (right!16982 (right!16982 err!3129)))) b!1865352))

(assert (= b!1865353 b!1865354))

(assert (= (and b!1865162 ((_ is Leaf!10067) (right!16982 (right!16982 err!3129)))) b!1865353))

(declare-fun m!2290001 () Bool)

(assert (=> b!1865352 m!2290001))

(declare-fun m!2290003 () Bool)

(assert (=> b!1865352 m!2290003))

(declare-fun m!2290005 () Bool)

(assert (=> b!1865353 m!2290005))

(assert (=> b!1865162 m!2289711))

(declare-fun tp!531095 () Bool)

(declare-fun tp!531093 () Bool)

(declare-fun b!1865355 () Bool)

(declare-fun e!1190713 () Bool)

(assert (=> b!1865355 (= e!1190713 (and (inv!27324 (left!16652 (left!16652 (right!16982 t!4595)))) tp!531095 (inv!27324 (right!16982 (left!16652 (right!16982 t!4595)))) tp!531093))))

(declare-fun b!1865357 () Bool)

(declare-fun e!1190712 () Bool)

(declare-fun tp!531094 () Bool)

(assert (=> b!1865357 (= e!1190712 tp!531094)))

(declare-fun b!1865356 () Bool)

(assert (=> b!1865356 (= e!1190713 (and (inv!27323 (xs!9748 (left!16652 (right!16982 t!4595)))) e!1190712))))

(assert (=> b!1865169 (= tp!531062 (and (inv!27324 (left!16652 (right!16982 t!4595))) e!1190713))))

(assert (= (and b!1865169 ((_ is Node!6866) (left!16652 (right!16982 t!4595)))) b!1865355))

(assert (= b!1865356 b!1865357))

(assert (= (and b!1865169 ((_ is Leaf!10067) (left!16652 (right!16982 t!4595)))) b!1865356))

(declare-fun m!2290007 () Bool)

(assert (=> b!1865355 m!2290007))

(declare-fun m!2290009 () Bool)

(assert (=> b!1865355 m!2290009))

(declare-fun m!2290011 () Bool)

(assert (=> b!1865356 m!2290011))

(assert (=> b!1865169 m!2289729))

(declare-fun tp!531096 () Bool)

(declare-fun tp!531098 () Bool)

(declare-fun e!1190715 () Bool)

(declare-fun b!1865358 () Bool)

(assert (=> b!1865358 (= e!1190715 (and (inv!27324 (left!16652 (right!16982 (right!16982 t!4595)))) tp!531098 (inv!27324 (right!16982 (right!16982 (right!16982 t!4595)))) tp!531096))))

(declare-fun b!1865360 () Bool)

(declare-fun e!1190714 () Bool)

(declare-fun tp!531097 () Bool)

(assert (=> b!1865360 (= e!1190714 tp!531097)))

(declare-fun b!1865359 () Bool)

(assert (=> b!1865359 (= e!1190715 (and (inv!27323 (xs!9748 (right!16982 (right!16982 t!4595)))) e!1190714))))

(assert (=> b!1865169 (= tp!531060 (and (inv!27324 (right!16982 (right!16982 t!4595))) e!1190715))))

(assert (= (and b!1865169 ((_ is Node!6866) (right!16982 (right!16982 t!4595)))) b!1865358))

(assert (= b!1865359 b!1865360))

(assert (= (and b!1865169 ((_ is Leaf!10067) (right!16982 (right!16982 t!4595)))) b!1865359))

(declare-fun m!2290013 () Bool)

(assert (=> b!1865358 m!2290013))

(declare-fun m!2290015 () Bool)

(assert (=> b!1865358 m!2290015))

(declare-fun m!2290017 () Bool)

(assert (=> b!1865359 m!2290017))

(assert (=> b!1865169 m!2289731))

(declare-fun b!1865365 () Bool)

(declare-fun e!1190718 () Bool)

(declare-fun tp!531099 () Bool)

(assert (=> b!1865365 (= e!1190718 (and tp_is_empty!8653 tp!531099))))

(assert (=> b!1865171 (= tp!531061 e!1190718)))

(assert (= (and b!1865171 ((_ is Cons!20671) (innerList!6926 (xs!9748 (right!16982 t!4595))))) b!1865365))

(declare-fun e!1190720 () Bool)

(declare-fun tp!531100 () Bool)

(declare-fun tp!531102 () Bool)

(declare-fun b!1865366 () Bool)

(assert (=> b!1865366 (= e!1190720 (and (inv!27324 (left!16652 (left!16652 (left!16652 t!4595)))) tp!531102 (inv!27324 (right!16982 (left!16652 (left!16652 t!4595)))) tp!531100))))

(declare-fun b!1865368 () Bool)

(declare-fun e!1190719 () Bool)

(declare-fun tp!531101 () Bool)

(assert (=> b!1865368 (= e!1190719 tp!531101)))

(declare-fun b!1865367 () Bool)

(assert (=> b!1865367 (= e!1190720 (and (inv!27323 (xs!9748 (left!16652 (left!16652 t!4595)))) e!1190719))))

(assert (=> b!1865166 (= tp!531059 (and (inv!27324 (left!16652 (left!16652 t!4595))) e!1190720))))

(assert (= (and b!1865166 ((_ is Node!6866) (left!16652 (left!16652 t!4595)))) b!1865366))

(assert (= b!1865367 b!1865368))

(assert (= (and b!1865166 ((_ is Leaf!10067) (left!16652 (left!16652 t!4595)))) b!1865367))

(declare-fun m!2290019 () Bool)

(assert (=> b!1865366 m!2290019))

(declare-fun m!2290021 () Bool)

(assert (=> b!1865366 m!2290021))

(declare-fun m!2290023 () Bool)

(assert (=> b!1865367 m!2290023))

(assert (=> b!1865166 m!2289715))

(declare-fun tp!531105 () Bool)

(declare-fun b!1865369 () Bool)

(declare-fun e!1190722 () Bool)

(declare-fun tp!531103 () Bool)

(assert (=> b!1865369 (= e!1190722 (and (inv!27324 (left!16652 (right!16982 (left!16652 t!4595)))) tp!531105 (inv!27324 (right!16982 (right!16982 (left!16652 t!4595)))) tp!531103))))

(declare-fun b!1865371 () Bool)

(declare-fun e!1190721 () Bool)

(declare-fun tp!531104 () Bool)

(assert (=> b!1865371 (= e!1190721 tp!531104)))

(declare-fun b!1865370 () Bool)

(assert (=> b!1865370 (= e!1190722 (and (inv!27323 (xs!9748 (right!16982 (left!16652 t!4595)))) e!1190721))))

(assert (=> b!1865166 (= tp!531057 (and (inv!27324 (right!16982 (left!16652 t!4595))) e!1190722))))

(assert (= (and b!1865166 ((_ is Node!6866) (right!16982 (left!16652 t!4595)))) b!1865369))

(assert (= b!1865370 b!1865371))

(assert (= (and b!1865166 ((_ is Leaf!10067) (right!16982 (left!16652 t!4595)))) b!1865370))

(declare-fun m!2290025 () Bool)

(assert (=> b!1865369 m!2290025))

(declare-fun m!2290027 () Bool)

(assert (=> b!1865369 m!2290027))

(declare-fun m!2290029 () Bool)

(assert (=> b!1865370 m!2290029))

(assert (=> b!1865166 m!2289717))

(declare-fun b!1865372 () Bool)

(declare-fun e!1190723 () Bool)

(declare-fun tp!531106 () Bool)

(assert (=> b!1865372 (= e!1190723 (and tp_is_empty!8653 tp!531106))))

(assert (=> b!1865168 (= tp!531058 e!1190723)))

(assert (= (and b!1865168 ((_ is Cons!20671) (innerList!6926 (xs!9748 (left!16652 t!4595))))) b!1865372))

(declare-fun tp!531107 () Bool)

(declare-fun b!1865373 () Bool)

(declare-fun e!1190725 () Bool)

(declare-fun tp!531109 () Bool)

(assert (=> b!1865373 (= e!1190725 (and (inv!27324 (left!16652 (left!16652 (left!16652 err!3129)))) tp!531109 (inv!27324 (right!16982 (left!16652 (left!16652 err!3129)))) tp!531107))))

(declare-fun b!1865375 () Bool)

(declare-fun e!1190724 () Bool)

(declare-fun tp!531108 () Bool)

(assert (=> b!1865375 (= e!1190724 tp!531108)))

(declare-fun b!1865374 () Bool)

(assert (=> b!1865374 (= e!1190725 (and (inv!27323 (xs!9748 (left!16652 (left!16652 err!3129)))) e!1190724))))

(assert (=> b!1865159 (= tp!531052 (and (inv!27324 (left!16652 (left!16652 err!3129))) e!1190725))))

(assert (= (and b!1865159 ((_ is Node!6866) (left!16652 (left!16652 err!3129)))) b!1865373))

(assert (= b!1865374 b!1865375))

(assert (= (and b!1865159 ((_ is Leaf!10067) (left!16652 (left!16652 err!3129)))) b!1865374))

(declare-fun m!2290031 () Bool)

(assert (=> b!1865373 m!2290031))

(declare-fun m!2290033 () Bool)

(assert (=> b!1865373 m!2290033))

(declare-fun m!2290035 () Bool)

(assert (=> b!1865374 m!2290035))

(assert (=> b!1865159 m!2289703))

(declare-fun e!1190727 () Bool)

(declare-fun tp!531112 () Bool)

(declare-fun b!1865376 () Bool)

(declare-fun tp!531110 () Bool)

(assert (=> b!1865376 (= e!1190727 (and (inv!27324 (left!16652 (right!16982 (left!16652 err!3129)))) tp!531112 (inv!27324 (right!16982 (right!16982 (left!16652 err!3129)))) tp!531110))))

(declare-fun b!1865378 () Bool)

(declare-fun e!1190726 () Bool)

(declare-fun tp!531111 () Bool)

(assert (=> b!1865378 (= e!1190726 tp!531111)))

(declare-fun b!1865377 () Bool)

(assert (=> b!1865377 (= e!1190727 (and (inv!27323 (xs!9748 (right!16982 (left!16652 err!3129)))) e!1190726))))

(assert (=> b!1865159 (= tp!531050 (and (inv!27324 (right!16982 (left!16652 err!3129))) e!1190727))))

(assert (= (and b!1865159 ((_ is Node!6866) (right!16982 (left!16652 err!3129)))) b!1865376))

(assert (= b!1865377 b!1865378))

(assert (= (and b!1865159 ((_ is Leaf!10067) (right!16982 (left!16652 err!3129)))) b!1865377))

(declare-fun m!2290037 () Bool)

(assert (=> b!1865376 m!2290037))

(declare-fun m!2290039 () Bool)

(assert (=> b!1865376 m!2290039))

(declare-fun m!2290041 () Bool)

(assert (=> b!1865377 m!2290041))

(assert (=> b!1865159 m!2289705))

(declare-fun b!1865379 () Bool)

(declare-fun e!1190728 () Bool)

(declare-fun tp!531113 () Bool)

(assert (=> b!1865379 (= e!1190728 (and tp_is_empty!8653 tp!531113))))

(assert (=> b!1865164 (= tp!531054 e!1190728)))

(assert (= (and b!1865164 ((_ is Cons!20671) (innerList!6926 (xs!9748 (right!16982 err!3129))))) b!1865379))

(declare-fun b!1865380 () Bool)

(declare-fun e!1190729 () Bool)

(declare-fun tp!531114 () Bool)

(assert (=> b!1865380 (= e!1190729 (and tp_is_empty!8653 tp!531114))))

(assert (=> b!1865161 (= tp!531051 e!1190729)))

(assert (= (and b!1865161 ((_ is Cons!20671) (innerList!6926 (xs!9748 (left!16652 err!3129))))) b!1865380))

(check-sat (not b!1865339) (not b!1865204) (not d!569437) (not b!1865248) (not b!1865257) (not b!1865224) (not b!1865282) (not b!1865367) (not b!1865359) (not b!1865247) (not b!1865225) (not b!1865220) (not b!1865354) (not b!1865265) (not b!1865273) (not d!569439) (not b!1865378) (not b!1865271) (not b!1865232) (not b!1865349) (not b!1865245) (not b!1865255) (not b!1865355) (not b!1865310) (not b!1865347) (not b!1865270) (not b!1865365) (not b!1865229) (not b!1865261) (not b!1865358) (not b!1865372) (not b!1865380) (not b!1865162) (not b!1865209) (not d!569483) (not b!1865228) (not d!569449) (not b!1865169) (not b!1865259) (not d!569407) (not b!1865206) (not b!1865329) (not d!569399) (not b!1865219) (not b!1865269) (not b!1865262) (not b!1865375) (not b!1865235) (not d!569489) (not d!569409) (not b!1865374) (not b!1865357) (not b!1865278) (not b!1865258) (not b!1865348) (not b!1865356) (not d!569393) (not d!569387) (not b!1865205) (not d!569481) (not b!1865376) (not b!1865308) (not b!1865337) (not b!1865243) tp_is_empty!8653 (not b!1865313) (not b!1865233) (not b!1865360) (not b!1865353) (not b!1865368) (not d!569477) (not b!1865280) (not b!1865250) (not b!1865279) (not b!1865294) (not d!569457) (not d!569459) (not b!1865373) (not b!1865334) (not d!569465) (not b!1865332) (not b!1865366) (not d!569485) (not b!1865377) (not b!1865207) (not b!1865345) (not b!1865274) (not b!1865341) (not b!1865344) (not b!1865305) (not b!1865283) (not b!1865370) (not b!1865166) (not b!1865291) (not b!1865266) (not b!1865342) (not b!1865379) (not b!1865208) (not b!1865352) (not d!569415) (not d!569453) (not b!1865281) (not b!1865351) (not b!1865276) (not d!569411) (not d!569497) (not b!1865263) (not b!1865268) (not b!1865371) (not d!569427) (not b!1865369) (not d!569487) (not b!1865350) (not b!1865159) (not b!1865230) (not b!1865272) (not b!1865260))
(check-sat)
