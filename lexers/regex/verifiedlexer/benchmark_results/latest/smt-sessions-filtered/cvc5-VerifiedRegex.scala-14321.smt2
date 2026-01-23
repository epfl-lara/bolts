; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747856 () Bool)

(assert start!747856)

(declare-fun b!7918133 () Bool)

(declare-fun e!4673765 () Bool)

(declare-datatypes ((T!145662 0))(
  ( (T!145663 (val!32039 Int)) )
))
(declare-datatypes ((List!74551 0))(
  ( (Nil!74427) (Cons!74427 (h!80875 T!145662) (t!390092 List!74551)) )
))
(declare-fun ll!14 () List!74551)

(declare-fun size!43212 (List!74551) Int)

(assert (=> b!7918133 (= e!4673765 (>= (size!43212 (t!390092 ll!14)) (size!43212 ll!14)))))

(declare-datatypes ((IArray!31823 0))(
  ( (IArray!31824 (innerList!15969 List!74551)) )
))
(declare-datatypes ((Conc!15881 0))(
  ( (Node!15881 (left!56842 Conc!15881) (right!57172 Conc!15881) (csize!31992 Int) (cheight!16092 Int)) (Leaf!30203 (xs!19267 IArray!31823) (csize!31993 Int)) (Empty!15881) )
))
(declare-fun lt!2690914 () Conc!15881)

(declare-fun c!5365 () Conc!15881)

(declare-fun append!1127 (Conc!15881 T!145662) Conc!15881)

(assert (=> b!7918133 (= lt!2690914 (append!1127 c!5365 (h!80875 ll!14)))))

(declare-fun b!7918134 () Bool)

(declare-fun res!3142606 () Bool)

(assert (=> b!7918134 (=> (not res!3142606) (not e!4673765))))

(assert (=> b!7918134 (= res!3142606 (not (is-Nil!74427 ll!14)))))

(declare-fun res!3142605 () Bool)

(assert (=> start!747856 (=> (not res!3142605) (not e!4673765))))

(declare-fun isBalanced!4507 (Conc!15881) Bool)

(assert (=> start!747856 (= res!3142605 (isBalanced!4507 c!5365))))

(assert (=> start!747856 e!4673765))

(declare-fun e!4673766 () Bool)

(declare-fun inv!95609 (Conc!15881) Bool)

(assert (=> start!747856 (and (inv!95609 c!5365) e!4673766)))

(declare-fun e!4673764 () Bool)

(assert (=> start!747856 e!4673764))

(declare-fun b!7918135 () Bool)

(declare-fun e!4673763 () Bool)

(declare-fun tp!2357693 () Bool)

(assert (=> b!7918135 (= e!4673763 tp!2357693)))

(declare-fun b!7918136 () Bool)

(declare-fun tp_is_empty!53187 () Bool)

(declare-fun tp!2357691 () Bool)

(assert (=> b!7918136 (= e!4673764 (and tp_is_empty!53187 tp!2357691))))

(declare-fun b!7918137 () Bool)

(declare-fun tp!2357692 () Bool)

(declare-fun tp!2357694 () Bool)

(assert (=> b!7918137 (= e!4673766 (and (inv!95609 (left!56842 c!5365)) tp!2357692 (inv!95609 (right!57172 c!5365)) tp!2357694))))

(declare-fun b!7918138 () Bool)

(declare-fun inv!95610 (IArray!31823) Bool)

(assert (=> b!7918138 (= e!4673766 (and (inv!95610 (xs!19267 c!5365)) e!4673763))))

(assert (= (and start!747856 res!3142605) b!7918134))

(assert (= (and b!7918134 res!3142606) b!7918133))

(assert (= (and start!747856 (is-Node!15881 c!5365)) b!7918137))

(assert (= b!7918138 b!7918135))

(assert (= (and start!747856 (is-Leaf!30203 c!5365)) b!7918138))

(assert (= (and start!747856 (is-Cons!74427 ll!14)) b!7918136))

(declare-fun m!8293920 () Bool)

(assert (=> b!7918133 m!8293920))

(declare-fun m!8293922 () Bool)

(assert (=> b!7918133 m!8293922))

(declare-fun m!8293924 () Bool)

(assert (=> b!7918133 m!8293924))

(declare-fun m!8293926 () Bool)

(assert (=> start!747856 m!8293926))

(declare-fun m!8293928 () Bool)

(assert (=> start!747856 m!8293928))

(declare-fun m!8293930 () Bool)

(assert (=> b!7918137 m!8293930))

(declare-fun m!8293932 () Bool)

(assert (=> b!7918137 m!8293932))

(declare-fun m!8293934 () Bool)

(assert (=> b!7918138 m!8293934))

(push 1)

(assert (not b!7918138))

(assert (not b!7918137))

(assert (not b!7918135))

(assert (not start!747856))

(assert (not b!7918133))

(assert tp_is_empty!53187)

(assert (not b!7918136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2362456 () Bool)

(declare-fun c!1453057 () Bool)

(assert (=> d!2362456 (= c!1453057 (is-Node!15881 (left!56842 c!5365)))))

(declare-fun e!4673783 () Bool)

(assert (=> d!2362456 (= (inv!95609 (left!56842 c!5365)) e!4673783)))

(declare-fun b!7918163 () Bool)

(declare-fun inv!95613 (Conc!15881) Bool)

(assert (=> b!7918163 (= e!4673783 (inv!95613 (left!56842 c!5365)))))

(declare-fun b!7918164 () Bool)

(declare-fun e!4673784 () Bool)

(assert (=> b!7918164 (= e!4673783 e!4673784)))

(declare-fun res!3142615 () Bool)

(assert (=> b!7918164 (= res!3142615 (not (is-Leaf!30203 (left!56842 c!5365))))))

(assert (=> b!7918164 (=> res!3142615 e!4673784)))

(declare-fun b!7918165 () Bool)

(declare-fun inv!95614 (Conc!15881) Bool)

(assert (=> b!7918165 (= e!4673784 (inv!95614 (left!56842 c!5365)))))

(assert (= (and d!2362456 c!1453057) b!7918163))

(assert (= (and d!2362456 (not c!1453057)) b!7918164))

(assert (= (and b!7918164 (not res!3142615)) b!7918165))

(declare-fun m!8293952 () Bool)

(assert (=> b!7918163 m!8293952))

(declare-fun m!8293954 () Bool)

(assert (=> b!7918165 m!8293954))

(assert (=> b!7918137 d!2362456))

(declare-fun d!2362460 () Bool)

(declare-fun c!1453058 () Bool)

(assert (=> d!2362460 (= c!1453058 (is-Node!15881 (right!57172 c!5365)))))

(declare-fun e!4673785 () Bool)

(assert (=> d!2362460 (= (inv!95609 (right!57172 c!5365)) e!4673785)))

(declare-fun b!7918166 () Bool)

(assert (=> b!7918166 (= e!4673785 (inv!95613 (right!57172 c!5365)))))

(declare-fun b!7918167 () Bool)

(declare-fun e!4673786 () Bool)

(assert (=> b!7918167 (= e!4673785 e!4673786)))

(declare-fun res!3142616 () Bool)

(assert (=> b!7918167 (= res!3142616 (not (is-Leaf!30203 (right!57172 c!5365))))))

(assert (=> b!7918167 (=> res!3142616 e!4673786)))

(declare-fun b!7918168 () Bool)

(assert (=> b!7918168 (= e!4673786 (inv!95614 (right!57172 c!5365)))))

(assert (= (and d!2362460 c!1453058) b!7918166))

(assert (= (and d!2362460 (not c!1453058)) b!7918167))

(assert (= (and b!7918167 (not res!3142616)) b!7918168))

(declare-fun m!8293956 () Bool)

(assert (=> b!7918166 m!8293956))

(declare-fun m!8293958 () Bool)

(assert (=> b!7918168 m!8293958))

(assert (=> b!7918137 d!2362460))

(declare-fun d!2362462 () Bool)

(assert (=> d!2362462 (= (inv!95610 (xs!19267 c!5365)) (<= (size!43212 (innerList!15969 (xs!19267 c!5365))) 2147483647))))

(declare-fun bs!1968510 () Bool)

(assert (= bs!1968510 d!2362462))

(declare-fun m!8293962 () Bool)

(assert (=> bs!1968510 m!8293962))

(assert (=> b!7918138 d!2362462))

(declare-fun b!7918181 () Bool)

(declare-fun e!4673794 () Bool)

(declare-fun isEmpty!42746 (Conc!15881) Bool)

(assert (=> b!7918181 (= e!4673794 (not (isEmpty!42746 (right!57172 c!5365))))))

(declare-fun b!7918182 () Bool)

(declare-fun res!3142634 () Bool)

(assert (=> b!7918182 (=> (not res!3142634) (not e!4673794))))

(declare-fun height!2197 (Conc!15881) Int)

(assert (=> b!7918182 (= res!3142634 (<= (- (height!2197 (left!56842 c!5365)) (height!2197 (right!57172 c!5365))) 1))))

(declare-fun b!7918183 () Bool)

(declare-fun e!4673793 () Bool)

(assert (=> b!7918183 (= e!4673793 e!4673794)))

(declare-fun res!3142631 () Bool)

(assert (=> b!7918183 (=> (not res!3142631) (not e!4673794))))

(assert (=> b!7918183 (= res!3142631 (<= (- 1) (- (height!2197 (left!56842 c!5365)) (height!2197 (right!57172 c!5365)))))))

(declare-fun d!2362466 () Bool)

(declare-fun res!3142633 () Bool)

(assert (=> d!2362466 (=> res!3142633 e!4673793)))

(assert (=> d!2362466 (= res!3142633 (not (is-Node!15881 c!5365)))))

(assert (=> d!2362466 (= (isBalanced!4507 c!5365) e!4673793)))

(declare-fun b!7918184 () Bool)

(declare-fun res!3142635 () Bool)

(assert (=> b!7918184 (=> (not res!3142635) (not e!4673794))))

(assert (=> b!7918184 (= res!3142635 (isBalanced!4507 (left!56842 c!5365)))))

(declare-fun b!7918185 () Bool)

(declare-fun res!3142632 () Bool)

(assert (=> b!7918185 (=> (not res!3142632) (not e!4673794))))

(assert (=> b!7918185 (= res!3142632 (not (isEmpty!42746 (left!56842 c!5365))))))

(declare-fun b!7918186 () Bool)

(declare-fun res!3142636 () Bool)

(assert (=> b!7918186 (=> (not res!3142636) (not e!4673794))))

(assert (=> b!7918186 (= res!3142636 (isBalanced!4507 (right!57172 c!5365)))))

(assert (= (and d!2362466 (not res!3142633)) b!7918183))

(assert (= (and b!7918183 res!3142631) b!7918182))

(assert (= (and b!7918182 res!3142634) b!7918184))

(assert (= (and b!7918184 res!3142635) b!7918186))

(assert (= (and b!7918186 res!3142636) b!7918185))

(assert (= (and b!7918185 res!3142632) b!7918181))

(declare-fun m!8293964 () Bool)

(assert (=> b!7918185 m!8293964))

(declare-fun m!8293966 () Bool)

(assert (=> b!7918182 m!8293966))

(declare-fun m!8293968 () Bool)

(assert (=> b!7918182 m!8293968))

(declare-fun m!8293970 () Bool)

(assert (=> b!7918181 m!8293970))

(declare-fun m!8293972 () Bool)

(assert (=> b!7918184 m!8293972))

(assert (=> b!7918183 m!8293966))

(assert (=> b!7918183 m!8293968))

(declare-fun m!8293974 () Bool)

(assert (=> b!7918186 m!8293974))

(assert (=> start!747856 d!2362466))

(declare-fun d!2362468 () Bool)

(declare-fun c!1453059 () Bool)

(assert (=> d!2362468 (= c!1453059 (is-Node!15881 c!5365))))

(declare-fun e!4673797 () Bool)

(assert (=> d!2362468 (= (inv!95609 c!5365) e!4673797)))

(declare-fun b!7918199 () Bool)

(assert (=> b!7918199 (= e!4673797 (inv!95613 c!5365))))

(declare-fun b!7918200 () Bool)

(declare-fun e!4673798 () Bool)

(assert (=> b!7918200 (= e!4673797 e!4673798)))

(declare-fun res!3142647 () Bool)

(assert (=> b!7918200 (= res!3142647 (not (is-Leaf!30203 c!5365)))))

(assert (=> b!7918200 (=> res!3142647 e!4673798)))

(declare-fun b!7918201 () Bool)

(assert (=> b!7918201 (= e!4673798 (inv!95614 c!5365))))

(assert (= (and d!2362468 c!1453059) b!7918199))

(assert (= (and d!2362468 (not c!1453059)) b!7918200))

(assert (= (and b!7918200 (not res!3142647)) b!7918201))

(declare-fun m!8293976 () Bool)

(assert (=> b!7918199 m!8293976))

(declare-fun m!8293978 () Bool)

(assert (=> b!7918201 m!8293978))

(assert (=> start!747856 d!2362468))

(declare-fun d!2362470 () Bool)

(declare-fun lt!2690920 () Int)

(assert (=> d!2362470 (>= lt!2690920 0)))

(declare-fun e!4673801 () Int)

(assert (=> d!2362470 (= lt!2690920 e!4673801)))

(declare-fun c!1453062 () Bool)

(assert (=> d!2362470 (= c!1453062 (is-Nil!74427 (t!390092 ll!14)))))

(assert (=> d!2362470 (= (size!43212 (t!390092 ll!14)) lt!2690920)))

(declare-fun b!7918206 () Bool)

(assert (=> b!7918206 (= e!4673801 0)))

(declare-fun b!7918207 () Bool)

(assert (=> b!7918207 (= e!4673801 (+ 1 (size!43212 (t!390092 (t!390092 ll!14)))))))

(assert (= (and d!2362470 c!1453062) b!7918206))

(assert (= (and d!2362470 (not c!1453062)) b!7918207))

(declare-fun m!8293980 () Bool)

(assert (=> b!7918207 m!8293980))

(assert (=> b!7918133 d!2362470))

(declare-fun d!2362472 () Bool)

(declare-fun lt!2690921 () Int)

(assert (=> d!2362472 (>= lt!2690921 0)))

(declare-fun e!4673802 () Int)

(assert (=> d!2362472 (= lt!2690921 e!4673802)))

(declare-fun c!1453063 () Bool)

(assert (=> d!2362472 (= c!1453063 (is-Nil!74427 ll!14))))

(assert (=> d!2362472 (= (size!43212 ll!14) lt!2690921)))

(declare-fun b!7918208 () Bool)

(assert (=> b!7918208 (= e!4673802 0)))

(declare-fun b!7918209 () Bool)

(assert (=> b!7918209 (= e!4673802 (+ 1 (size!43212 (t!390092 ll!14))))))

(assert (= (and d!2362472 c!1453063) b!7918208))

(assert (= (and d!2362472 (not c!1453063)) b!7918209))

(assert (=> b!7918209 m!8293920))

(assert (=> b!7918133 d!2362472))

(declare-fun bm!734724 () Bool)

(declare-fun call!734733 () IArray!31823)

(declare-fun fill!260 (Int T!145662) IArray!31823)

(assert (=> bm!734724 (= call!734733 (fill!260 1 (h!80875 ll!14)))))

(declare-fun b!7918265 () Bool)

(declare-fun e!4673831 () Conc!15881)

(assert (=> b!7918265 (= e!4673831 (Leaf!30203 call!734733 1))))

(declare-fun b!7918266 () Bool)

(declare-fun res!3142667 () Bool)

(declare-fun e!4673836 () Bool)

(assert (=> b!7918266 (=> (not res!3142667) (not e!4673836))))

(declare-fun lt!2690975 () Conc!15881)

(assert (=> b!7918266 (= res!3142667 (<= (height!2197 lt!2690975) (+ (height!2197 c!5365) 1)))))

(declare-fun b!7918267 () Bool)

(declare-fun c!1453084 () Bool)

(declare-fun lt!2690965 () Conc!15881)

(assert (=> b!7918267 (= c!1453084 (<= (height!2197 lt!2690965) (+ (height!2197 (left!56842 c!5365)) 1)))))

(assert (=> b!7918267 (= lt!2690965 (append!1127 (right!57172 c!5365) (h!80875 ll!14)))))

(declare-fun e!4673835 () Conc!15881)

(declare-fun e!4673832 () Conc!15881)

(assert (=> b!7918267 (= e!4673835 e!4673832)))

(declare-fun b!7918268 () Bool)

(declare-fun e!4673834 () Conc!15881)

(declare-fun call!734731 () Conc!15881)

(assert (=> b!7918268 (= e!4673834 call!734731)))

(declare-fun lt!2690966 () List!74551)

(declare-fun lt!2690964 () List!74551)

(declare-fun call!734736 () List!74551)

(declare-fun lt!2690974 () List!74551)

(declare-fun bm!734725 () Bool)

(declare-fun call!734734 () List!74551)

(declare-fun ++!18243 (List!74551 List!74551) List!74551)

(assert (=> bm!734725 (= call!734734 (++!18243 (ite c!1453084 lt!2690974 lt!2690964) (ite c!1453084 call!734736 lt!2690966)))))

(declare-fun bm!734726 () Bool)

(declare-datatypes ((Unit!169547 0))(
  ( (Unit!169548) )
))
(declare-fun call!734732 () Unit!169547)

(declare-fun lt!2690978 () List!74551)

(declare-fun lt!2690979 () List!74551)

(declare-fun lt!2690973 () List!74551)

(declare-fun lemmaConcatAssociativity!3149 (List!74551 List!74551 List!74551) Unit!169547)

(assert (=> bm!734726 (= call!734732 (lemmaConcatAssociativity!3149 (ite c!1453084 lt!2690974 lt!2690973) (ite c!1453084 lt!2690978 lt!2690964) (ite c!1453084 lt!2690979 lt!2690966)))))

(declare-fun call!734738 () List!74551)

(declare-fun bm!734727 () Bool)

(declare-fun lt!2690972 () List!74551)

(declare-fun lt!2690971 () List!74551)

(assert (=> bm!734727 (= call!734738 (++!18243 (ite c!1453084 lt!2690974 lt!2690972) (ite c!1453084 lt!2690978 lt!2690971)))))

(declare-fun b!7918269 () Bool)

(declare-fun call!734730 () Conc!15881)

(declare-fun <>!415 (Conc!15881 Conc!15881) Conc!15881)

(assert (=> b!7918269 (= e!4673832 (<>!415 call!734730 (right!57172 lt!2690965)))))

(declare-fun call!734735 () List!74551)

(assert (=> b!7918269 (= lt!2690973 call!734735)))

(declare-fun list!19378 (Conc!15881) List!74551)

(assert (=> b!7918269 (= lt!2690964 (list!19378 (left!56842 lt!2690965)))))

(assert (=> b!7918269 (= lt!2690966 (list!19378 (right!57172 lt!2690965)))))

(declare-fun lt!2690969 () Unit!169547)

(assert (=> b!7918269 (= lt!2690969 call!734732)))

(assert (=> b!7918269 (= (++!18243 call!734736 lt!2690966) (++!18243 lt!2690973 call!734734))))

(declare-fun lt!2690977 () Unit!169547)

(assert (=> b!7918269 (= lt!2690977 lt!2690969)))

(declare-fun lt!2690962 () List!74551)

(assert (=> b!7918269 (= lt!2690962 call!734735)))

(declare-fun call!734737 () List!74551)

(assert (=> b!7918269 (= lt!2690972 call!734737)))

(assert (=> b!7918269 (= lt!2690971 (Cons!74427 (h!80875 ll!14) Nil!74427))))

(declare-fun lt!2690976 () Unit!169547)

(assert (=> b!7918269 (= lt!2690976 (lemmaConcatAssociativity!3149 lt!2690962 lt!2690972 lt!2690971))))

(declare-fun call!734729 () List!74551)

(assert (=> b!7918269 (= (++!18243 call!734729 lt!2690971) (++!18243 lt!2690962 call!734738))))

(declare-fun lt!2690970 () Unit!169547)

(assert (=> b!7918269 (= lt!2690970 lt!2690976)))

(declare-fun b!7918270 () Bool)

(declare-fun append!1129 (IArray!31823 T!145662) IArray!31823)

(assert (=> b!7918270 (= e!4673834 (Leaf!30203 (append!1129 (xs!19267 c!5365) (h!80875 ll!14)) (+ (csize!31993 c!5365) 1)))))

(declare-fun lt!2690968 () List!74551)

(declare-fun $colon+!300 (List!74551 T!145662) List!74551)

(declare-fun list!19379 (IArray!31823) List!74551)

(assert (=> b!7918270 (= lt!2690968 ($colon+!300 (list!19379 (xs!19267 c!5365)) (h!80875 ll!14)))))

(declare-fun b!7918271 () Bool)

(assert (=> b!7918271 (= e!4673832 call!734730)))

(assert (=> b!7918271 (= lt!2690974 call!734735)))

(assert (=> b!7918271 (= lt!2690978 call!734737)))

(assert (=> b!7918271 (= lt!2690979 (Cons!74427 (h!80875 ll!14) Nil!74427))))

(declare-fun lt!2690967 () Unit!169547)

(assert (=> b!7918271 (= lt!2690967 call!734732)))

(assert (=> b!7918271 (= call!734729 call!734734)))

(declare-fun lt!2690963 () Unit!169547)

(assert (=> b!7918271 (= lt!2690963 lt!2690967)))

(declare-fun b!7918272 () Bool)

(declare-fun res!3142666 () Bool)

(assert (=> b!7918272 (=> (not res!3142666) (not e!4673836))))

(assert (=> b!7918272 (= res!3142666 (<= (height!2197 c!5365) (height!2197 lt!2690975)))))

(declare-fun bm!734729 () Bool)

(assert (=> bm!734729 (= call!734737 (list!19378 (right!57172 c!5365)))))

(declare-fun bm!734730 () Bool)

(assert (=> bm!734730 (= call!734735 (list!19378 (left!56842 c!5365)))))

(declare-fun bm!734731 () Bool)

(assert (=> bm!734731 (= call!734729 (++!18243 (ite c!1453084 call!734738 lt!2690962) (ite c!1453084 lt!2690979 lt!2690972)))))

(declare-fun b!7918273 () Bool)

(assert (=> b!7918273 (= e!4673831 (ite c!1453084 lt!2690965 (left!56842 lt!2690965)))))

(declare-fun b!7918274 () Bool)

(declare-fun c!1453087 () Bool)

(assert (=> b!7918274 (= c!1453087 (< (csize!31993 c!5365) 512))))

(assert (=> b!7918274 (= e!4673835 e!4673834)))

(declare-fun b!7918275 () Bool)

(declare-fun e!4673833 () Conc!15881)

(assert (=> b!7918275 (= e!4673833 e!4673835)))

(declare-fun c!1453085 () Bool)

(assert (=> b!7918275 (= c!1453085 (is-Node!15881 c!5365))))

(declare-fun bm!734732 () Bool)

(assert (=> bm!734732 (= call!734730 call!734731)))

(declare-fun b!7918276 () Bool)

(assert (=> b!7918276 (= e!4673836 (= (list!19378 lt!2690975) ($colon+!300 (list!19378 c!5365) (h!80875 ll!14))))))

(declare-fun b!7918277 () Bool)

(assert (=> b!7918277 (= e!4673833 (Leaf!30203 call!734733 1))))

(declare-fun bm!734733 () Bool)

(assert (=> bm!734733 (= call!734736 (++!18243 (ite c!1453084 lt!2690978 lt!2690973) (ite c!1453084 lt!2690979 lt!2690964)))))

(declare-fun d!2362474 () Bool)

(assert (=> d!2362474 e!4673836))

(declare-fun res!3142665 () Bool)

(assert (=> d!2362474 (=> (not res!3142665) (not e!4673836))))

(assert (=> d!2362474 (= res!3142665 (isBalanced!4507 lt!2690975))))

(assert (=> d!2362474 (= lt!2690975 e!4673833)))

(declare-fun c!1453083 () Bool)

(assert (=> d!2362474 (= c!1453083 (is-Empty!15881 c!5365))))

(assert (=> d!2362474 (isBalanced!4507 c!5365)))

(assert (=> d!2362474 (= (append!1127 c!5365 (h!80875 ll!14)) lt!2690975)))

(declare-fun bm!734728 () Bool)

(declare-fun c!1453086 () Bool)

(assert (=> bm!734728 (= c!1453086 c!1453085)))

(assert (=> bm!734728 (= call!734731 (<>!415 (ite c!1453085 (left!56842 c!5365) c!5365) e!4673831))))

(assert (= (and d!2362474 c!1453083) b!7918277))

(assert (= (and d!2362474 (not c!1453083)) b!7918275))

(assert (= (and b!7918275 c!1453085) b!7918267))

(assert (= (and b!7918275 (not c!1453085)) b!7918274))

(assert (= (and b!7918267 c!1453084) b!7918271))

(assert (= (and b!7918267 (not c!1453084)) b!7918269))

(assert (= (or b!7918271 b!7918269) bm!734727))

(assert (= (or b!7918271 b!7918269) bm!734729))

(assert (= (or b!7918271 b!7918269) bm!734730))

(assert (= (or b!7918271 b!7918269) bm!734732))

(assert (= (or b!7918271 b!7918269) bm!734726))

(assert (= (or b!7918271 b!7918269) bm!734733))

(assert (= (or b!7918271 b!7918269) bm!734725))

(assert (= (or b!7918271 b!7918269) bm!734731))

(assert (= (and b!7918274 c!1453087) b!7918270))

(assert (= (and b!7918274 (not c!1453087)) b!7918268))

(assert (= (or bm!734732 b!7918268) bm!734728))

(assert (= (and bm!734728 c!1453086) b!7918273))

(assert (= (and bm!734728 (not c!1453086)) b!7918265))

(assert (= (or b!7918277 b!7918265) bm!734724))

(assert (= (and d!2362474 res!3142665) b!7918272))

(assert (= (and b!7918272 res!3142666) b!7918266))

(assert (= (and b!7918266 res!3142667) b!7918276))

(declare-fun m!8294008 () Bool)

(assert (=> b!7918267 m!8294008))

(assert (=> b!7918267 m!8293966))

(declare-fun m!8294010 () Bool)

(assert (=> b!7918267 m!8294010))

(declare-fun m!8294012 () Bool)

(assert (=> b!7918272 m!8294012))

(declare-fun m!8294014 () Bool)

(assert (=> b!7918272 m!8294014))

(declare-fun m!8294016 () Bool)

(assert (=> bm!734728 m!8294016))

(declare-fun m!8294018 () Bool)

(assert (=> bm!734730 m!8294018))

(declare-fun m!8294020 () Bool)

(assert (=> b!7918276 m!8294020))

(declare-fun m!8294022 () Bool)

(assert (=> b!7918276 m!8294022))

(assert (=> b!7918276 m!8294022))

(declare-fun m!8294024 () Bool)

(assert (=> b!7918276 m!8294024))

(declare-fun m!8294026 () Bool)

(assert (=> bm!734727 m!8294026))

(declare-fun m!8294028 () Bool)

(assert (=> bm!734729 m!8294028))

(declare-fun m!8294030 () Bool)

(assert (=> bm!734724 m!8294030))

(declare-fun m!8294032 () Bool)

(assert (=> b!7918270 m!8294032))

(declare-fun m!8294034 () Bool)

(assert (=> b!7918270 m!8294034))

(assert (=> b!7918270 m!8294034))

(declare-fun m!8294036 () Bool)

(assert (=> b!7918270 m!8294036))

(declare-fun m!8294038 () Bool)

(assert (=> bm!734733 m!8294038))

(declare-fun m!8294040 () Bool)

(assert (=> d!2362474 m!8294040))

(assert (=> d!2362474 m!8293926))

(declare-fun m!8294042 () Bool)

(assert (=> bm!734726 m!8294042))

(declare-fun m!8294044 () Bool)

(assert (=> bm!734731 m!8294044))

(declare-fun m!8294046 () Bool)

(assert (=> b!7918269 m!8294046))

(declare-fun m!8294048 () Bool)

(assert (=> b!7918269 m!8294048))

(declare-fun m!8294050 () Bool)

(assert (=> b!7918269 m!8294050))

(declare-fun m!8294052 () Bool)

(assert (=> b!7918269 m!8294052))

(declare-fun m!8294054 () Bool)

(assert (=> b!7918269 m!8294054))

(declare-fun m!8294056 () Bool)

(assert (=> b!7918269 m!8294056))

(declare-fun m!8294058 () Bool)

(assert (=> b!7918269 m!8294058))

(declare-fun m!8294060 () Bool)

(assert (=> b!7918269 m!8294060))

(declare-fun m!8294062 () Bool)

(assert (=> bm!734725 m!8294062))

(assert (=> b!7918266 m!8294014))

(assert (=> b!7918266 m!8294012))

(assert (=> b!7918133 d!2362474))

(declare-fun b!7918286 () Bool)

(declare-fun tp!2357713 () Bool)

(declare-fun tp!2357714 () Bool)

(declare-fun e!4673842 () Bool)

(assert (=> b!7918286 (= e!4673842 (and (inv!95609 (left!56842 (left!56842 c!5365))) tp!2357713 (inv!95609 (right!57172 (left!56842 c!5365))) tp!2357714))))

(declare-fun b!7918288 () Bool)

(declare-fun e!4673841 () Bool)

(declare-fun tp!2357715 () Bool)

(assert (=> b!7918288 (= e!4673841 tp!2357715)))

(declare-fun b!7918287 () Bool)

(assert (=> b!7918287 (= e!4673842 (and (inv!95610 (xs!19267 (left!56842 c!5365))) e!4673841))))

(assert (=> b!7918137 (= tp!2357692 (and (inv!95609 (left!56842 c!5365)) e!4673842))))

(assert (= (and b!7918137 (is-Node!15881 (left!56842 c!5365))) b!7918286))

(assert (= b!7918287 b!7918288))

(assert (= (and b!7918137 (is-Leaf!30203 (left!56842 c!5365))) b!7918287))

(declare-fun m!8294064 () Bool)

(assert (=> b!7918286 m!8294064))

(declare-fun m!8294066 () Bool)

(assert (=> b!7918286 m!8294066))

(declare-fun m!8294068 () Bool)

(assert (=> b!7918287 m!8294068))

(assert (=> b!7918137 m!8293930))

(declare-fun tp!2357716 () Bool)

(declare-fun b!7918289 () Bool)

(declare-fun tp!2357717 () Bool)

(declare-fun e!4673844 () Bool)

(assert (=> b!7918289 (= e!4673844 (and (inv!95609 (left!56842 (right!57172 c!5365))) tp!2357716 (inv!95609 (right!57172 (right!57172 c!5365))) tp!2357717))))

(declare-fun b!7918291 () Bool)

(declare-fun e!4673843 () Bool)

(declare-fun tp!2357718 () Bool)

(assert (=> b!7918291 (= e!4673843 tp!2357718)))

(declare-fun b!7918290 () Bool)

(assert (=> b!7918290 (= e!4673844 (and (inv!95610 (xs!19267 (right!57172 c!5365))) e!4673843))))

(assert (=> b!7918137 (= tp!2357694 (and (inv!95609 (right!57172 c!5365)) e!4673844))))

(assert (= (and b!7918137 (is-Node!15881 (right!57172 c!5365))) b!7918289))

(assert (= b!7918290 b!7918291))

(assert (= (and b!7918137 (is-Leaf!30203 (right!57172 c!5365))) b!7918290))

(declare-fun m!8294070 () Bool)

(assert (=> b!7918289 m!8294070))

(declare-fun m!8294072 () Bool)

(assert (=> b!7918289 m!8294072))

(declare-fun m!8294074 () Bool)

(assert (=> b!7918290 m!8294074))

(assert (=> b!7918137 m!8293932))

(declare-fun b!7918296 () Bool)

(declare-fun e!4673847 () Bool)

(declare-fun tp!2357721 () Bool)

(assert (=> b!7918296 (= e!4673847 (and tp_is_empty!53187 tp!2357721))))

(assert (=> b!7918135 (= tp!2357693 e!4673847)))

(assert (= (and b!7918135 (is-Cons!74427 (innerList!15969 (xs!19267 c!5365)))) b!7918296))

(declare-fun b!7918297 () Bool)

(declare-fun e!4673848 () Bool)

(declare-fun tp!2357722 () Bool)

(assert (=> b!7918297 (= e!4673848 (and tp_is_empty!53187 tp!2357722))))

(assert (=> b!7918136 (= tp!2357691 e!4673848)))

(assert (= (and b!7918136 (is-Cons!74427 (t!390092 ll!14))) b!7918297))

(push 1)

(assert (not b!7918289))

(assert (not b!7918163))

(assert (not b!7918137))

(assert (not b!7918199))

(assert (not b!7918186))

(assert (not b!7918297))

(assert (not b!7918165))

(assert (not b!7918272))

(assert tp_is_empty!53187)

(assert (not b!7918181))

(assert (not bm!734728))

(assert (not b!7918291))

(assert (not b!7918168))

(assert (not b!7918267))

(assert (not b!7918166))

(assert (not b!7918276))

(assert (not b!7918270))

(assert (not b!7918183))

(assert (not b!7918288))

(assert (not bm!734727))

(assert (not d!2362474))

(assert (not b!7918296))

(assert (not bm!734729))

(assert (not b!7918207))

(assert (not b!7918201))

(assert (not b!7918266))

(assert (not b!7918182))

(assert (not b!7918287))

(assert (not b!7918269))

(assert (not bm!734724))

(assert (not d!2362462))

(assert (not b!7918286))

(assert (not b!7918290))

(assert (not bm!734726))

(assert (not b!7918185))

(assert (not bm!734730))

(assert (not bm!734725))

(assert (not b!7918184))

(assert (not bm!734731))

(assert (not b!7918209))

(assert (not bm!734733))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

