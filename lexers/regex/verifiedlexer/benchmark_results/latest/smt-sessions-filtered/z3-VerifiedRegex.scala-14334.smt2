; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748686 () Bool)

(assert start!748686)

(declare-fun b!7933109 () Bool)

(declare-fun e!4681313 () Bool)

(declare-datatypes ((T!145846 0))(
  ( (T!145847 (val!32066 Int)) )
))
(declare-datatypes ((List!74578 0))(
  ( (Nil!74454) (Cons!74454 (h!80902 T!145846) (t!390235 List!74578)) )
))
(declare-datatypes ((IArray!31877 0))(
  ( (IArray!31878 (innerList!15996 List!74578)) )
))
(declare-datatypes ((Conc!15908 0))(
  ( (Node!15908 (left!56882 Conc!15908) (right!57212 Conc!15908) (csize!32046 Int) (cheight!16119 Int)) (Leaf!30243 (xs!19302 IArray!31877) (csize!32047 Int)) (Empty!15908) )
))
(declare-fun err!4705 () Conc!15908)

(declare-fun e!4681316 () Bool)

(declare-fun inv!95752 (IArray!31877) Bool)

(assert (=> b!7933109 (= e!4681313 (and (inv!95752 (xs!19302 err!4705)) e!4681316))))

(declare-fun b!7933110 () Bool)

(declare-fun res!3147440 () Bool)

(declare-fun e!4681315 () Bool)

(assert (=> b!7933110 (=> (not res!3147440) (not e!4681315))))

(declare-fun lt!2694744 () Conc!15908)

(get-info :version)

(assert (=> b!7933110 (= res!3147440 (not ((_ is Node!15908) lt!2694744)))))

(declare-fun b!7933111 () Bool)

(declare-fun e!4681309 () Bool)

(declare-fun e!4681314 () Bool)

(assert (=> b!7933111 (= e!4681309 e!4681314)))

(declare-fun res!3147438 () Bool)

(assert (=> b!7933111 (=> res!3147438 e!4681314)))

(declare-fun lt!2694742 () Int)

(declare-fun lt!2694741 () Int)

(assert (=> b!7933111 (= res!3147438 (or (> lt!2694742 lt!2694741) (> lt!2694741 (+ 1 lt!2694742))))))

(declare-fun lt!2694743 () Conc!15908)

(declare-fun height!2223 (Conc!15908) Int)

(assert (=> b!7933111 (= lt!2694741 (height!2223 lt!2694743))))

(declare-fun t!4440 () Conc!15908)

(assert (=> b!7933111 (= lt!2694742 (height!2223 t!4440))))

(declare-fun b!7933112 () Bool)

(declare-fun e!4681312 () Bool)

(declare-fun e!4681311 () Bool)

(assert (=> b!7933112 (= e!4681312 (and (inv!95752 (xs!19302 t!4440)) e!4681311))))

(declare-fun res!3147439 () Bool)

(declare-fun e!4681310 () Bool)

(assert (=> start!748686 (=> (not res!3147439) (not e!4681310))))

(declare-fun isBalanced!4534 (Conc!15908) Bool)

(assert (=> start!748686 (= res!3147439 (isBalanced!4534 t!4440))))

(assert (=> start!748686 e!4681310))

(declare-fun inv!95753 (Conc!15908) Bool)

(assert (=> start!748686 (and (inv!95753 t!4440) e!4681312)))

(declare-fun tp_is_empty!53241 () Bool)

(assert (=> start!748686 tp_is_empty!53241))

(declare-fun b!7933113 () Bool)

(declare-fun v!5484 () T!145846)

(declare-fun list!19425 (Conc!15908) List!74578)

(declare-fun $colon+!321 (List!74578 T!145846) List!74578)

(assert (=> b!7933113 (= e!4681314 (not (= (list!19425 lt!2694743) ($colon+!321 (list!19425 t!4440) v!5484))))))

(declare-fun b!7933114 () Bool)

(declare-fun res!3147437 () Bool)

(assert (=> b!7933114 (=> (not res!3147437) (not e!4681310))))

(assert (=> b!7933114 (= res!3147437 (and (not ((_ is Empty!15908) t!4440)) ((_ is Node!15908) t!4440)))))

(declare-fun b!7933115 () Bool)

(declare-fun tp!2359095 () Bool)

(assert (=> b!7933115 (= e!4681311 tp!2359095)))

(declare-fun b!7933116 () Bool)

(declare-fun tp!2359097 () Bool)

(assert (=> b!7933116 (= e!4681316 tp!2359097)))

(declare-fun tp!2359099 () Bool)

(declare-fun tp!2359100 () Bool)

(declare-fun b!7933117 () Bool)

(assert (=> b!7933117 (= e!4681313 (and (inv!95753 (left!56882 err!4705)) tp!2359100 (inv!95753 (right!57212 err!4705)) tp!2359099))))

(declare-fun b!7933118 () Bool)

(assert (=> b!7933118 (= e!4681315 e!4681309)))

(declare-fun res!3147441 () Bool)

(assert (=> b!7933118 (=> res!3147441 e!4681309)))

(assert (=> b!7933118 (= res!3147441 (not (isBalanced!4534 lt!2694743)))))

(assert (=> b!7933118 (= lt!2694743 err!4705)))

(assert (=> b!7933118 true))

(assert (=> b!7933118 (and (inv!95753 err!4705) e!4681313)))

(declare-fun tp!2359096 () Bool)

(declare-fun tp!2359098 () Bool)

(declare-fun b!7933119 () Bool)

(assert (=> b!7933119 (= e!4681312 (and (inv!95753 (left!56882 t!4440)) tp!2359096 (inv!95753 (right!57212 t!4440)) tp!2359098))))

(declare-fun b!7933120 () Bool)

(assert (=> b!7933120 (= e!4681310 e!4681315)))

(declare-fun res!3147442 () Bool)

(assert (=> b!7933120 (=> (not res!3147442) (not e!4681315))))

(assert (=> b!7933120 (= res!3147442 (> (height!2223 lt!2694744) (+ 1 (height!2223 (left!56882 t!4440)))))))

(declare-fun append!1156 (Conc!15908 T!145846) Conc!15908)

(assert (=> b!7933120 (= lt!2694744 (append!1156 (right!57212 t!4440) v!5484))))

(assert (= (and start!748686 res!3147439) b!7933114))

(assert (= (and b!7933114 res!3147437) b!7933120))

(assert (= (and b!7933120 res!3147442) b!7933110))

(assert (= (and b!7933110 res!3147440) b!7933118))

(assert (= (and b!7933118 ((_ is Node!15908) err!4705)) b!7933117))

(assert (= b!7933109 b!7933116))

(assert (= (and b!7933118 ((_ is Leaf!30243) err!4705)) b!7933109))

(assert (= (and b!7933118 (not res!3147441)) b!7933111))

(assert (= (and b!7933111 (not res!3147438)) b!7933113))

(assert (= (and start!748686 ((_ is Node!15908) t!4440)) b!7933119))

(assert (= b!7933112 b!7933115))

(assert (= (and start!748686 ((_ is Leaf!30243) t!4440)) b!7933112))

(declare-fun m!8319852 () Bool)

(assert (=> b!7933112 m!8319852))

(declare-fun m!8319854 () Bool)

(assert (=> b!7933109 m!8319854))

(declare-fun m!8319856 () Bool)

(assert (=> b!7933119 m!8319856))

(declare-fun m!8319858 () Bool)

(assert (=> b!7933119 m!8319858))

(declare-fun m!8319860 () Bool)

(assert (=> b!7933117 m!8319860))

(declare-fun m!8319862 () Bool)

(assert (=> b!7933117 m!8319862))

(declare-fun m!8319864 () Bool)

(assert (=> b!7933111 m!8319864))

(declare-fun m!8319866 () Bool)

(assert (=> b!7933111 m!8319866))

(declare-fun m!8319868 () Bool)

(assert (=> b!7933120 m!8319868))

(declare-fun m!8319870 () Bool)

(assert (=> b!7933120 m!8319870))

(declare-fun m!8319872 () Bool)

(assert (=> b!7933120 m!8319872))

(declare-fun m!8319874 () Bool)

(assert (=> start!748686 m!8319874))

(declare-fun m!8319876 () Bool)

(assert (=> start!748686 m!8319876))

(declare-fun m!8319878 () Bool)

(assert (=> b!7933113 m!8319878))

(declare-fun m!8319880 () Bool)

(assert (=> b!7933113 m!8319880))

(assert (=> b!7933113 m!8319880))

(declare-fun m!8319882 () Bool)

(assert (=> b!7933113 m!8319882))

(declare-fun m!8319884 () Bool)

(assert (=> b!7933118 m!8319884))

(declare-fun m!8319886 () Bool)

(assert (=> b!7933118 m!8319886))

(check-sat (not b!7933119) (not b!7933113) (not b!7933120) (not start!748686) (not b!7933117) (not b!7933109) (not b!7933112) (not b!7933116) (not b!7933118) (not b!7933115) tp_is_empty!53241 (not b!7933111))
(check-sat)
(get-model)

(declare-fun d!2371637 () Bool)

(declare-fun c!1457379 () Bool)

(assert (=> d!2371637 (= c!1457379 ((_ is Node!15908) (left!56882 err!4705)))))

(declare-fun e!4681321 () Bool)

(assert (=> d!2371637 (= (inv!95753 (left!56882 err!4705)) e!4681321)))

(declare-fun b!7933127 () Bool)

(declare-fun inv!95754 (Conc!15908) Bool)

(assert (=> b!7933127 (= e!4681321 (inv!95754 (left!56882 err!4705)))))

(declare-fun b!7933128 () Bool)

(declare-fun e!4681322 () Bool)

(assert (=> b!7933128 (= e!4681321 e!4681322)))

(declare-fun res!3147445 () Bool)

(assert (=> b!7933128 (= res!3147445 (not ((_ is Leaf!30243) (left!56882 err!4705))))))

(assert (=> b!7933128 (=> res!3147445 e!4681322)))

(declare-fun b!7933129 () Bool)

(declare-fun inv!95755 (Conc!15908) Bool)

(assert (=> b!7933129 (= e!4681322 (inv!95755 (left!56882 err!4705)))))

(assert (= (and d!2371637 c!1457379) b!7933127))

(assert (= (and d!2371637 (not c!1457379)) b!7933128))

(assert (= (and b!7933128 (not res!3147445)) b!7933129))

(declare-fun m!8319888 () Bool)

(assert (=> b!7933127 m!8319888))

(declare-fun m!8319890 () Bool)

(assert (=> b!7933129 m!8319890))

(assert (=> b!7933117 d!2371637))

(declare-fun d!2371641 () Bool)

(declare-fun c!1457380 () Bool)

(assert (=> d!2371641 (= c!1457380 ((_ is Node!15908) (right!57212 err!4705)))))

(declare-fun e!4681323 () Bool)

(assert (=> d!2371641 (= (inv!95753 (right!57212 err!4705)) e!4681323)))

(declare-fun b!7933130 () Bool)

(assert (=> b!7933130 (= e!4681323 (inv!95754 (right!57212 err!4705)))))

(declare-fun b!7933131 () Bool)

(declare-fun e!4681324 () Bool)

(assert (=> b!7933131 (= e!4681323 e!4681324)))

(declare-fun res!3147446 () Bool)

(assert (=> b!7933131 (= res!3147446 (not ((_ is Leaf!30243) (right!57212 err!4705))))))

(assert (=> b!7933131 (=> res!3147446 e!4681324)))

(declare-fun b!7933132 () Bool)

(assert (=> b!7933132 (= e!4681324 (inv!95755 (right!57212 err!4705)))))

(assert (= (and d!2371641 c!1457380) b!7933130))

(assert (= (and d!2371641 (not c!1457380)) b!7933131))

(assert (= (and b!7933131 (not res!3147446)) b!7933132))

(declare-fun m!8319892 () Bool)

(assert (=> b!7933130 m!8319892))

(declare-fun m!8319894 () Bool)

(assert (=> b!7933132 m!8319894))

(assert (=> b!7933117 d!2371641))

(declare-fun d!2371643 () Bool)

(declare-fun size!43264 (List!74578) Int)

(assert (=> d!2371643 (= (inv!95752 (xs!19302 t!4440)) (<= (size!43264 (innerList!15996 (xs!19302 t!4440))) 2147483647))))

(declare-fun bs!1969047 () Bool)

(assert (= bs!1969047 d!2371643))

(declare-fun m!8319896 () Bool)

(assert (=> bs!1969047 m!8319896))

(assert (=> b!7933112 d!2371643))

(declare-fun b!7933157 () Bool)

(declare-fun res!3147476 () Bool)

(declare-fun e!4681333 () Bool)

(assert (=> b!7933157 (=> (not res!3147476) (not e!4681333))))

(assert (=> b!7933157 (= res!3147476 (<= (- (height!2223 (left!56882 lt!2694743)) (height!2223 (right!57212 lt!2694743))) 1))))

(declare-fun d!2371645 () Bool)

(declare-fun res!3147472 () Bool)

(declare-fun e!4681334 () Bool)

(assert (=> d!2371645 (=> res!3147472 e!4681334)))

(assert (=> d!2371645 (= res!3147472 (not ((_ is Node!15908) lt!2694743)))))

(assert (=> d!2371645 (= (isBalanced!4534 lt!2694743) e!4681334)))

(declare-fun b!7933158 () Bool)

(declare-fun isEmpty!42787 (Conc!15908) Bool)

(assert (=> b!7933158 (= e!4681333 (not (isEmpty!42787 (right!57212 lt!2694743))))))

(declare-fun b!7933159 () Bool)

(declare-fun res!3147475 () Bool)

(assert (=> b!7933159 (=> (not res!3147475) (not e!4681333))))

(assert (=> b!7933159 (= res!3147475 (isBalanced!4534 (left!56882 lt!2694743)))))

(declare-fun b!7933160 () Bool)

(declare-fun res!3147473 () Bool)

(assert (=> b!7933160 (=> (not res!3147473) (not e!4681333))))

(assert (=> b!7933160 (= res!3147473 (not (isEmpty!42787 (left!56882 lt!2694743))))))

(declare-fun b!7933161 () Bool)

(assert (=> b!7933161 (= e!4681334 e!4681333)))

(declare-fun res!3147474 () Bool)

(assert (=> b!7933161 (=> (not res!3147474) (not e!4681333))))

(assert (=> b!7933161 (= res!3147474 (<= (- 1) (- (height!2223 (left!56882 lt!2694743)) (height!2223 (right!57212 lt!2694743)))))))

(declare-fun b!7933162 () Bool)

(declare-fun res!3147471 () Bool)

(assert (=> b!7933162 (=> (not res!3147471) (not e!4681333))))

(assert (=> b!7933162 (= res!3147471 (isBalanced!4534 (right!57212 lt!2694743)))))

(assert (= (and d!2371645 (not res!3147472)) b!7933161))

(assert (= (and b!7933161 res!3147474) b!7933157))

(assert (= (and b!7933157 res!3147476) b!7933159))

(assert (= (and b!7933159 res!3147475) b!7933162))

(assert (= (and b!7933162 res!3147471) b!7933160))

(assert (= (and b!7933160 res!3147473) b!7933158))

(declare-fun m!8319898 () Bool)

(assert (=> b!7933157 m!8319898))

(declare-fun m!8319900 () Bool)

(assert (=> b!7933157 m!8319900))

(assert (=> b!7933161 m!8319898))

(assert (=> b!7933161 m!8319900))

(declare-fun m!8319902 () Bool)

(assert (=> b!7933160 m!8319902))

(declare-fun m!8319904 () Bool)

(assert (=> b!7933159 m!8319904))

(declare-fun m!8319906 () Bool)

(assert (=> b!7933158 m!8319906))

(declare-fun m!8319908 () Bool)

(assert (=> b!7933162 m!8319908))

(assert (=> b!7933118 d!2371645))

(declare-fun d!2371647 () Bool)

(declare-fun c!1457381 () Bool)

(assert (=> d!2371647 (= c!1457381 ((_ is Node!15908) err!4705))))

(declare-fun e!4681335 () Bool)

(assert (=> d!2371647 (= (inv!95753 err!4705) e!4681335)))

(declare-fun b!7933163 () Bool)

(assert (=> b!7933163 (= e!4681335 (inv!95754 err!4705))))

(declare-fun b!7933164 () Bool)

(declare-fun e!4681336 () Bool)

(assert (=> b!7933164 (= e!4681335 e!4681336)))

(declare-fun res!3147477 () Bool)

(assert (=> b!7933164 (= res!3147477 (not ((_ is Leaf!30243) err!4705)))))

(assert (=> b!7933164 (=> res!3147477 e!4681336)))

(declare-fun b!7933165 () Bool)

(assert (=> b!7933165 (= e!4681336 (inv!95755 err!4705))))

(assert (= (and d!2371647 c!1457381) b!7933163))

(assert (= (and d!2371647 (not c!1457381)) b!7933164))

(assert (= (and b!7933164 (not res!3147477)) b!7933165))

(declare-fun m!8319910 () Bool)

(assert (=> b!7933163 m!8319910))

(declare-fun m!8319912 () Bool)

(assert (=> b!7933165 m!8319912))

(assert (=> b!7933118 d!2371647))

(declare-fun b!7933182 () Bool)

(declare-fun e!4681344 () List!74578)

(declare-fun list!19426 (IArray!31877) List!74578)

(assert (=> b!7933182 (= e!4681344 (list!19426 (xs!19302 lt!2694743)))))

(declare-fun b!7933180 () Bool)

(declare-fun e!4681343 () List!74578)

(assert (=> b!7933180 (= e!4681343 Nil!74454)))

(declare-fun b!7933183 () Bool)

(declare-fun ++!18264 (List!74578 List!74578) List!74578)

(assert (=> b!7933183 (= e!4681344 (++!18264 (list!19425 (left!56882 lt!2694743)) (list!19425 (right!57212 lt!2694743))))))

(declare-fun b!7933181 () Bool)

(assert (=> b!7933181 (= e!4681343 e!4681344)))

(declare-fun c!1457387 () Bool)

(assert (=> b!7933181 (= c!1457387 ((_ is Leaf!30243) lt!2694743))))

(declare-fun d!2371649 () Bool)

(declare-fun c!1457386 () Bool)

(assert (=> d!2371649 (= c!1457386 ((_ is Empty!15908) lt!2694743))))

(assert (=> d!2371649 (= (list!19425 lt!2694743) e!4681343)))

(assert (= (and d!2371649 c!1457386) b!7933180))

(assert (= (and d!2371649 (not c!1457386)) b!7933181))

(assert (= (and b!7933181 c!1457387) b!7933182))

(assert (= (and b!7933181 (not c!1457387)) b!7933183))

(declare-fun m!8319926 () Bool)

(assert (=> b!7933182 m!8319926))

(declare-fun m!8319928 () Bool)

(assert (=> b!7933183 m!8319928))

(declare-fun m!8319930 () Bool)

(assert (=> b!7933183 m!8319930))

(assert (=> b!7933183 m!8319928))

(assert (=> b!7933183 m!8319930))

(declare-fun m!8319932 () Bool)

(assert (=> b!7933183 m!8319932))

(assert (=> b!7933113 d!2371649))

(declare-fun b!7933209 () Bool)

(declare-fun res!3147497 () Bool)

(declare-fun e!4681357 () Bool)

(assert (=> b!7933209 (=> (not res!3147497) (not e!4681357))))

(declare-fun lt!2694747 () List!74578)

(assert (=> b!7933209 (= res!3147497 (= (size!43264 lt!2694747) (+ (size!43264 (list!19425 t!4440)) 1)))))

(declare-fun b!7933210 () Bool)

(assert (=> b!7933210 (= e!4681357 (= lt!2694747 (++!18264 (list!19425 t!4440) (Cons!74454 v!5484 Nil!74454))))))

(declare-fun bm!735510 () Bool)

(declare-fun call!735515 () (_ BitVec 32))

(declare-fun isize!124 (List!74578) (_ BitVec 32))

(assert (=> bm!735510 (= call!735515 (isize!124 lt!2694747))))

(declare-fun b!7933211 () Bool)

(declare-fun res!3147496 () Bool)

(assert (=> b!7933211 (=> (not res!3147496) (not e!4681357))))

(declare-fun e!4681359 () Bool)

(assert (=> b!7933211 (= res!3147496 e!4681359)))

(declare-fun c!1457396 () Bool)

(assert (=> b!7933211 (= c!1457396 (bvslt (isize!124 (list!19425 t!4440)) #b01111111111111111111111111111111))))

(declare-fun bm!735511 () Bool)

(declare-fun call!735516 () (_ BitVec 32))

(assert (=> bm!735511 (= call!735516 (isize!124 (list!19425 t!4440)))))

(declare-fun b!7933212 () Bool)

(declare-fun e!4681358 () List!74578)

(assert (=> b!7933212 (= e!4681358 (Cons!74454 v!5484 (list!19425 t!4440)))))

(declare-fun d!2371653 () Bool)

(assert (=> d!2371653 e!4681357))

(declare-fun res!3147498 () Bool)

(assert (=> d!2371653 (=> (not res!3147498) (not e!4681357))))

(assert (=> d!2371653 (= res!3147498 ((_ is Cons!74454) lt!2694747))))

(assert (=> d!2371653 (= lt!2694747 e!4681358)))

(declare-fun c!1457395 () Bool)

(assert (=> d!2371653 (= c!1457395 ((_ is Nil!74454) (list!19425 t!4440)))))

(assert (=> d!2371653 (= ($colon+!321 (list!19425 t!4440) v!5484) lt!2694747)))

(declare-fun b!7933213 () Bool)

(assert (=> b!7933213 (= e!4681358 (Cons!74454 (h!80902 (list!19425 t!4440)) ($colon+!321 (t!390235 (list!19425 t!4440)) v!5484)))))

(declare-fun b!7933214 () Bool)

(assert (=> b!7933214 (= e!4681359 (= call!735515 (bvadd call!735516 #b00000000000000000000000000000001)))))

(declare-fun b!7933215 () Bool)

(assert (=> b!7933215 (= e!4681359 (= call!735515 call!735516))))

(declare-fun b!7933216 () Bool)

(declare-fun res!3147495 () Bool)

(assert (=> b!7933216 (=> (not res!3147495) (not e!4681357))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15788 (List!74578) (InoxSet T!145846))

(assert (=> b!7933216 (= res!3147495 (= (content!15788 lt!2694747) ((_ map or) (content!15788 (list!19425 t!4440)) (store ((as const (Array T!145846 Bool)) false) v!5484 true))))))

(assert (= (and d!2371653 c!1457395) b!7933212))

(assert (= (and d!2371653 (not c!1457395)) b!7933213))

(assert (= (and d!2371653 res!3147498) b!7933209))

(assert (= (and b!7933209 res!3147497) b!7933211))

(assert (= (and b!7933211 c!1457396) b!7933214))

(assert (= (and b!7933211 (not c!1457396)) b!7933215))

(assert (= (or b!7933214 b!7933215) bm!735510))

(assert (= (or b!7933214 b!7933215) bm!735511))

(assert (= (and b!7933211 res!3147496) b!7933216))

(assert (= (and b!7933216 res!3147495) b!7933210))

(declare-fun m!8319938 () Bool)

(assert (=> b!7933209 m!8319938))

(assert (=> b!7933209 m!8319880))

(declare-fun m!8319940 () Bool)

(assert (=> b!7933209 m!8319940))

(assert (=> bm!735511 m!8319880))

(declare-fun m!8319942 () Bool)

(assert (=> bm!735511 m!8319942))

(declare-fun m!8319944 () Bool)

(assert (=> bm!735510 m!8319944))

(declare-fun m!8319946 () Bool)

(assert (=> b!7933216 m!8319946))

(assert (=> b!7933216 m!8319880))

(declare-fun m!8319948 () Bool)

(assert (=> b!7933216 m!8319948))

(declare-fun m!8319950 () Bool)

(assert (=> b!7933216 m!8319950))

(assert (=> b!7933211 m!8319880))

(assert (=> b!7933211 m!8319942))

(assert (=> b!7933210 m!8319880))

(declare-fun m!8319952 () Bool)

(assert (=> b!7933210 m!8319952))

(declare-fun m!8319954 () Bool)

(assert (=> b!7933213 m!8319954))

(assert (=> b!7933113 d!2371653))

(declare-fun b!7933219 () Bool)

(declare-fun e!4681361 () List!74578)

(assert (=> b!7933219 (= e!4681361 (list!19426 (xs!19302 t!4440)))))

(declare-fun b!7933217 () Bool)

(declare-fun e!4681360 () List!74578)

(assert (=> b!7933217 (= e!4681360 Nil!74454)))

(declare-fun b!7933220 () Bool)

(assert (=> b!7933220 (= e!4681361 (++!18264 (list!19425 (left!56882 t!4440)) (list!19425 (right!57212 t!4440))))))

(declare-fun b!7933218 () Bool)

(assert (=> b!7933218 (= e!4681360 e!4681361)))

(declare-fun c!1457398 () Bool)

(assert (=> b!7933218 (= c!1457398 ((_ is Leaf!30243) t!4440))))

(declare-fun d!2371661 () Bool)

(declare-fun c!1457397 () Bool)

(assert (=> d!2371661 (= c!1457397 ((_ is Empty!15908) t!4440))))

(assert (=> d!2371661 (= (list!19425 t!4440) e!4681360)))

(assert (= (and d!2371661 c!1457397) b!7933217))

(assert (= (and d!2371661 (not c!1457397)) b!7933218))

(assert (= (and b!7933218 c!1457398) b!7933219))

(assert (= (and b!7933218 (not c!1457398)) b!7933220))

(declare-fun m!8319956 () Bool)

(assert (=> b!7933219 m!8319956))

(declare-fun m!8319958 () Bool)

(assert (=> b!7933220 m!8319958))

(declare-fun m!8319960 () Bool)

(assert (=> b!7933220 m!8319960))

(assert (=> b!7933220 m!8319958))

(assert (=> b!7933220 m!8319960))

(declare-fun m!8319962 () Bool)

(assert (=> b!7933220 m!8319962))

(assert (=> b!7933113 d!2371661))

(declare-fun b!7933221 () Bool)

(declare-fun res!3147504 () Bool)

(declare-fun e!4681362 () Bool)

(assert (=> b!7933221 (=> (not res!3147504) (not e!4681362))))

(assert (=> b!7933221 (= res!3147504 (<= (- (height!2223 (left!56882 t!4440)) (height!2223 (right!57212 t!4440))) 1))))

(declare-fun d!2371663 () Bool)

(declare-fun res!3147500 () Bool)

(declare-fun e!4681363 () Bool)

(assert (=> d!2371663 (=> res!3147500 e!4681363)))

(assert (=> d!2371663 (= res!3147500 (not ((_ is Node!15908) t!4440)))))

(assert (=> d!2371663 (= (isBalanced!4534 t!4440) e!4681363)))

(declare-fun b!7933222 () Bool)

(assert (=> b!7933222 (= e!4681362 (not (isEmpty!42787 (right!57212 t!4440))))))

(declare-fun b!7933223 () Bool)

(declare-fun res!3147503 () Bool)

(assert (=> b!7933223 (=> (not res!3147503) (not e!4681362))))

(assert (=> b!7933223 (= res!3147503 (isBalanced!4534 (left!56882 t!4440)))))

(declare-fun b!7933224 () Bool)

(declare-fun res!3147501 () Bool)

(assert (=> b!7933224 (=> (not res!3147501) (not e!4681362))))

(assert (=> b!7933224 (= res!3147501 (not (isEmpty!42787 (left!56882 t!4440))))))

(declare-fun b!7933225 () Bool)

(assert (=> b!7933225 (= e!4681363 e!4681362)))

(declare-fun res!3147502 () Bool)

(assert (=> b!7933225 (=> (not res!3147502) (not e!4681362))))

(assert (=> b!7933225 (= res!3147502 (<= (- 1) (- (height!2223 (left!56882 t!4440)) (height!2223 (right!57212 t!4440)))))))

(declare-fun b!7933226 () Bool)

(declare-fun res!3147499 () Bool)

(assert (=> b!7933226 (=> (not res!3147499) (not e!4681362))))

(assert (=> b!7933226 (= res!3147499 (isBalanced!4534 (right!57212 t!4440)))))

(assert (= (and d!2371663 (not res!3147500)) b!7933225))

(assert (= (and b!7933225 res!3147502) b!7933221))

(assert (= (and b!7933221 res!3147504) b!7933223))

(assert (= (and b!7933223 res!3147503) b!7933226))

(assert (= (and b!7933226 res!3147499) b!7933224))

(assert (= (and b!7933224 res!3147501) b!7933222))

(assert (=> b!7933221 m!8319870))

(declare-fun m!8319964 () Bool)

(assert (=> b!7933221 m!8319964))

(assert (=> b!7933225 m!8319870))

(assert (=> b!7933225 m!8319964))

(declare-fun m!8319966 () Bool)

(assert (=> b!7933224 m!8319966))

(declare-fun m!8319968 () Bool)

(assert (=> b!7933223 m!8319968))

(declare-fun m!8319970 () Bool)

(assert (=> b!7933222 m!8319970))

(declare-fun m!8319972 () Bool)

(assert (=> b!7933226 m!8319972))

(assert (=> start!748686 d!2371663))

(declare-fun d!2371665 () Bool)

(declare-fun c!1457399 () Bool)

(assert (=> d!2371665 (= c!1457399 ((_ is Node!15908) t!4440))))

(declare-fun e!4681364 () Bool)

(assert (=> d!2371665 (= (inv!95753 t!4440) e!4681364)))

(declare-fun b!7933227 () Bool)

(assert (=> b!7933227 (= e!4681364 (inv!95754 t!4440))))

(declare-fun b!7933228 () Bool)

(declare-fun e!4681365 () Bool)

(assert (=> b!7933228 (= e!4681364 e!4681365)))

(declare-fun res!3147505 () Bool)

(assert (=> b!7933228 (= res!3147505 (not ((_ is Leaf!30243) t!4440)))))

(assert (=> b!7933228 (=> res!3147505 e!4681365)))

(declare-fun b!7933229 () Bool)

(assert (=> b!7933229 (= e!4681365 (inv!95755 t!4440))))

(assert (= (and d!2371665 c!1457399) b!7933227))

(assert (= (and d!2371665 (not c!1457399)) b!7933228))

(assert (= (and b!7933228 (not res!3147505)) b!7933229))

(declare-fun m!8319974 () Bool)

(assert (=> b!7933227 m!8319974))

(declare-fun m!8319976 () Bool)

(assert (=> b!7933229 m!8319976))

(assert (=> start!748686 d!2371665))

(declare-fun d!2371667 () Bool)

(declare-fun c!1457400 () Bool)

(assert (=> d!2371667 (= c!1457400 ((_ is Node!15908) (left!56882 t!4440)))))

(declare-fun e!4681366 () Bool)

(assert (=> d!2371667 (= (inv!95753 (left!56882 t!4440)) e!4681366)))

(declare-fun b!7933230 () Bool)

(assert (=> b!7933230 (= e!4681366 (inv!95754 (left!56882 t!4440)))))

(declare-fun b!7933231 () Bool)

(declare-fun e!4681367 () Bool)

(assert (=> b!7933231 (= e!4681366 e!4681367)))

(declare-fun res!3147506 () Bool)

(assert (=> b!7933231 (= res!3147506 (not ((_ is Leaf!30243) (left!56882 t!4440))))))

(assert (=> b!7933231 (=> res!3147506 e!4681367)))

(declare-fun b!7933232 () Bool)

(assert (=> b!7933232 (= e!4681367 (inv!95755 (left!56882 t!4440)))))

(assert (= (and d!2371667 c!1457400) b!7933230))

(assert (= (and d!2371667 (not c!1457400)) b!7933231))

(assert (= (and b!7933231 (not res!3147506)) b!7933232))

(declare-fun m!8319978 () Bool)

(assert (=> b!7933230 m!8319978))

(declare-fun m!8319980 () Bool)

(assert (=> b!7933232 m!8319980))

(assert (=> b!7933119 d!2371667))

(declare-fun d!2371669 () Bool)

(declare-fun c!1457401 () Bool)

(assert (=> d!2371669 (= c!1457401 ((_ is Node!15908) (right!57212 t!4440)))))

(declare-fun e!4681368 () Bool)

(assert (=> d!2371669 (= (inv!95753 (right!57212 t!4440)) e!4681368)))

(declare-fun b!7933233 () Bool)

(assert (=> b!7933233 (= e!4681368 (inv!95754 (right!57212 t!4440)))))

(declare-fun b!7933234 () Bool)

(declare-fun e!4681369 () Bool)

(assert (=> b!7933234 (= e!4681368 e!4681369)))

(declare-fun res!3147507 () Bool)

(assert (=> b!7933234 (= res!3147507 (not ((_ is Leaf!30243) (right!57212 t!4440))))))

(assert (=> b!7933234 (=> res!3147507 e!4681369)))

(declare-fun b!7933235 () Bool)

(assert (=> b!7933235 (= e!4681369 (inv!95755 (right!57212 t!4440)))))

(assert (= (and d!2371669 c!1457401) b!7933233))

(assert (= (and d!2371669 (not c!1457401)) b!7933234))

(assert (= (and b!7933234 (not res!3147507)) b!7933235))

(declare-fun m!8319982 () Bool)

(assert (=> b!7933233 m!8319982))

(declare-fun m!8319984 () Bool)

(assert (=> b!7933235 m!8319984))

(assert (=> b!7933119 d!2371669))

(declare-fun d!2371671 () Bool)

(assert (=> d!2371671 (= (inv!95752 (xs!19302 err!4705)) (<= (size!43264 (innerList!15996 (xs!19302 err!4705))) 2147483647))))

(declare-fun bs!1969048 () Bool)

(assert (= bs!1969048 d!2371671))

(declare-fun m!8319986 () Bool)

(assert (=> bs!1969048 m!8319986))

(assert (=> b!7933109 d!2371671))

(declare-fun d!2371673 () Bool)

(assert (=> d!2371673 (= (height!2223 lt!2694744) (ite ((_ is Empty!15908) lt!2694744) 0 (ite ((_ is Leaf!30243) lt!2694744) 1 (cheight!16119 lt!2694744))))))

(assert (=> b!7933120 d!2371673))

(declare-fun d!2371675 () Bool)

(assert (=> d!2371675 (= (height!2223 (left!56882 t!4440)) (ite ((_ is Empty!15908) (left!56882 t!4440)) 0 (ite ((_ is Leaf!30243) (left!56882 t!4440)) 1 (cheight!16119 (left!56882 t!4440)))))))

(assert (=> b!7933120 d!2371675))

(declare-fun bm!735534 () Bool)

(declare-fun call!735541 () IArray!31877)

(declare-fun fill!290 (Int T!145846) IArray!31877)

(assert (=> bm!735534 (= call!735541 (fill!290 1 v!5484))))

(declare-fun b!7933274 () Bool)

(declare-fun e!4681393 () Conc!15908)

(declare-fun call!735547 () Conc!15908)

(assert (=> b!7933274 (= e!4681393 call!735547)))

(declare-fun b!7933275 () Bool)

(declare-fun e!4681392 () Conc!15908)

(declare-fun c!1457422 () Bool)

(declare-fun lt!2694829 () Conc!15908)

(assert (=> b!7933275 (= e!4681392 (ite c!1457422 lt!2694829 (left!56882 lt!2694829)))))

(declare-fun bm!735535 () Bool)

(declare-fun call!735542 () Conc!15908)

(assert (=> bm!735535 (= call!735542 call!735547)))

(declare-fun bm!735536 () Bool)

(declare-fun call!735545 () List!74578)

(assert (=> bm!735536 (= call!735545 (list!19425 (ite c!1457422 (right!57212 (right!57212 t!4440)) (left!56882 (right!57212 t!4440)))))))

(declare-fun b!7933276 () Bool)

(declare-fun append!1157 (IArray!31877 T!145846) IArray!31877)

(assert (=> b!7933276 (= e!4681393 (Leaf!30243 (append!1157 (xs!19302 (right!57212 t!4440)) v!5484) (+ (csize!32047 (right!57212 t!4440)) 1)))))

(declare-fun lt!2694835 () List!74578)

(assert (=> b!7933276 (= lt!2694835 ($colon+!321 (list!19426 (xs!19302 (right!57212 t!4440))) v!5484))))

(declare-fun b!7933277 () Bool)

(declare-fun c!1457421 () Bool)

(assert (=> b!7933277 (= c!1457421 (< (csize!32047 (right!57212 t!4440)) 512))))

(declare-fun e!4681391 () Conc!15908)

(assert (=> b!7933277 (= e!4681391 e!4681393)))

(declare-fun b!7933278 () Bool)

(declare-fun e!4681388 () Conc!15908)

(assert (=> b!7933278 (= e!4681388 call!735542)))

(declare-fun lt!2694822 () List!74578)

(declare-fun call!735548 () List!74578)

(assert (=> b!7933278 (= lt!2694822 call!735548)))

(declare-fun lt!2694821 () List!74578)

(assert (=> b!7933278 (= lt!2694821 call!735545)))

(declare-fun lt!2694818 () List!74578)

(assert (=> b!7933278 (= lt!2694818 (Cons!74454 v!5484 Nil!74454))))

(declare-datatypes ((Unit!169575 0))(
  ( (Unit!169576) )
))
(declare-fun lt!2694832 () Unit!169575)

(declare-fun call!735549 () Unit!169575)

(assert (=> b!7933278 (= lt!2694832 call!735549)))

(declare-fun call!735543 () List!74578)

(declare-fun call!735550 () List!74578)

(assert (=> b!7933278 (= call!735543 call!735550)))

(declare-fun lt!2694825 () Unit!169575)

(assert (=> b!7933278 (= lt!2694825 lt!2694832)))

(declare-fun d!2371677 () Bool)

(declare-fun e!4681389 () Bool)

(assert (=> d!2371677 e!4681389))

(declare-fun res!3147515 () Bool)

(assert (=> d!2371677 (=> (not res!3147515) (not e!4681389))))

(declare-fun lt!2694833 () Conc!15908)

(assert (=> d!2371677 (= res!3147515 (isBalanced!4534 lt!2694833))))

(declare-fun e!4681390 () Conc!15908)

(assert (=> d!2371677 (= lt!2694833 e!4681390)))

(declare-fun c!1457419 () Bool)

(assert (=> d!2371677 (= c!1457419 ((_ is Empty!15908) (right!57212 t!4440)))))

(assert (=> d!2371677 (isBalanced!4534 (right!57212 t!4440))))

(assert (=> d!2371677 (= (append!1156 (right!57212 t!4440) v!5484) lt!2694833)))

(declare-fun bm!735537 () Bool)

(declare-fun c!1457418 () Bool)

(declare-fun c!1457420 () Bool)

(assert (=> bm!735537 (= c!1457418 c!1457420)))

(declare-fun <>!429 (Conc!15908 Conc!15908) Conc!15908)

(assert (=> bm!735537 (= call!735547 (<>!429 (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440)) e!4681392))))

(declare-fun lt!2694827 () List!74578)

(declare-fun call!735544 () List!74578)

(declare-fun bm!735538 () Bool)

(declare-fun lt!2694819 () List!74578)

(assert (=> bm!735538 (= call!735550 (++!18264 (ite c!1457422 lt!2694822 lt!2694827) (ite c!1457422 call!735544 lt!2694819)))))

(declare-fun b!7933279 () Bool)

(assert (=> b!7933279 (= e!4681390 (Leaf!30243 call!735541 1))))

(declare-fun b!7933280 () Bool)

(assert (=> b!7933280 (= e!4681389 (= (list!19425 lt!2694833) ($colon+!321 (list!19425 (right!57212 t!4440)) v!5484)))))

(declare-fun call!735546 () List!74578)

(declare-fun lt!2694830 () List!74578)

(declare-fun bm!735539 () Bool)

(declare-fun lt!2694823 () List!74578)

(assert (=> bm!735539 (= call!735543 (++!18264 (ite c!1457422 call!735546 lt!2694823) (ite c!1457422 lt!2694818 lt!2694830)))))

(declare-fun bm!735540 () Bool)

(declare-fun lt!2694828 () List!74578)

(assert (=> bm!735540 (= call!735546 (++!18264 (ite c!1457422 lt!2694822 lt!2694828) (ite c!1457422 lt!2694821 lt!2694827)))))

(declare-fun lt!2694820 () List!74578)

(declare-fun bm!735541 () Bool)

(declare-fun lemmaConcatAssociativity!3168 (List!74578 List!74578 List!74578) Unit!169575)

(assert (=> bm!735541 (= call!735549 (lemmaConcatAssociativity!3168 (ite c!1457422 lt!2694822 lt!2694820) (ite c!1457422 lt!2694821 lt!2694823) (ite c!1457422 lt!2694818 lt!2694830)))))

(declare-fun b!7933281 () Bool)

(assert (=> b!7933281 (= e!4681392 (Leaf!30243 call!735541 1))))

(declare-fun bm!735542 () Bool)

(assert (=> bm!735542 (= call!735544 (++!18264 (ite c!1457422 lt!2694821 lt!2694820) (ite c!1457422 lt!2694818 lt!2694823)))))

(declare-fun b!7933282 () Bool)

(declare-fun res!3147514 () Bool)

(assert (=> b!7933282 (=> (not res!3147514) (not e!4681389))))

(assert (=> b!7933282 (= res!3147514 (<= (height!2223 lt!2694833) (+ (height!2223 (right!57212 t!4440)) 1)))))

(declare-fun b!7933283 () Bool)

(assert (=> b!7933283 (= e!4681388 (<>!429 call!735542 (right!57212 lt!2694829)))))

(assert (=> b!7933283 (= lt!2694820 call!735545)))

(assert (=> b!7933283 (= lt!2694823 (list!19425 (left!56882 lt!2694829)))))

(assert (=> b!7933283 (= lt!2694830 call!735548)))

(declare-fun lt!2694824 () Unit!169575)

(assert (=> b!7933283 (= lt!2694824 call!735549)))

(assert (=> b!7933283 (= (++!18264 call!735544 lt!2694830) (++!18264 lt!2694820 call!735543))))

(declare-fun lt!2694834 () Unit!169575)

(assert (=> b!7933283 (= lt!2694834 lt!2694824)))

(assert (=> b!7933283 (= lt!2694828 call!735545)))

(assert (=> b!7933283 (= lt!2694827 (list!19425 (right!57212 (right!57212 t!4440))))))

(assert (=> b!7933283 (= lt!2694819 (Cons!74454 v!5484 Nil!74454))))

(declare-fun lt!2694826 () Unit!169575)

(assert (=> b!7933283 (= lt!2694826 (lemmaConcatAssociativity!3168 lt!2694828 lt!2694827 lt!2694819))))

(assert (=> b!7933283 (= (++!18264 call!735546 lt!2694819) (++!18264 lt!2694828 call!735550))))

(declare-fun lt!2694831 () Unit!169575)

(assert (=> b!7933283 (= lt!2694831 lt!2694826)))

(declare-fun b!7933284 () Bool)

(assert (=> b!7933284 (= e!4681390 e!4681391)))

(assert (=> b!7933284 (= c!1457420 ((_ is Node!15908) (right!57212 t!4440)))))

(declare-fun b!7933285 () Bool)

(declare-fun res!3147516 () Bool)

(assert (=> b!7933285 (=> (not res!3147516) (not e!4681389))))

(assert (=> b!7933285 (= res!3147516 (<= (height!2223 (right!57212 t!4440)) (height!2223 lt!2694833)))))

(declare-fun bm!735543 () Bool)

(assert (=> bm!735543 (= call!735548 (list!19425 (ite c!1457422 (left!56882 (right!57212 t!4440)) (right!57212 lt!2694829))))))

(declare-fun b!7933286 () Bool)

(assert (=> b!7933286 (= c!1457422 (<= (height!2223 lt!2694829) (+ (height!2223 (left!56882 (right!57212 t!4440))) 1)))))

(assert (=> b!7933286 (= lt!2694829 (append!1156 (right!57212 (right!57212 t!4440)) v!5484))))

(assert (=> b!7933286 (= e!4681391 e!4681388)))

(assert (= (and d!2371677 c!1457419) b!7933279))

(assert (= (and d!2371677 (not c!1457419)) b!7933284))

(assert (= (and b!7933284 c!1457420) b!7933286))

(assert (= (and b!7933284 (not c!1457420)) b!7933277))

(assert (= (and b!7933286 c!1457422) b!7933278))

(assert (= (and b!7933286 (not c!1457422)) b!7933283))

(assert (= (or b!7933278 b!7933283) bm!735536))

(assert (= (or b!7933278 b!7933283) bm!735543))

(assert (= (or b!7933278 b!7933283) bm!735540))

(assert (= (or b!7933278 b!7933283) bm!735535))

(assert (= (or b!7933278 b!7933283) bm!735541))

(assert (= (or b!7933278 b!7933283) bm!735542))

(assert (= (or b!7933278 b!7933283) bm!735538))

(assert (= (or b!7933278 b!7933283) bm!735539))

(assert (= (and b!7933277 c!1457421) b!7933276))

(assert (= (and b!7933277 (not c!1457421)) b!7933274))

(assert (= (or bm!735535 b!7933274) bm!735537))

(assert (= (and bm!735537 c!1457418) b!7933275))

(assert (= (and bm!735537 (not c!1457418)) b!7933281))

(assert (= (or b!7933279 b!7933281) bm!735534))

(assert (= (and d!2371677 res!3147515) b!7933285))

(assert (= (and b!7933285 res!3147516) b!7933282))

(assert (= (and b!7933282 res!3147514) b!7933280))

(declare-fun m!8319988 () Bool)

(assert (=> bm!735541 m!8319988))

(declare-fun m!8319990 () Bool)

(assert (=> bm!735537 m!8319990))

(declare-fun m!8319992 () Bool)

(assert (=> bm!735536 m!8319992))

(declare-fun m!8319994 () Bool)

(assert (=> bm!735539 m!8319994))

(declare-fun m!8319996 () Bool)

(assert (=> bm!735543 m!8319996))

(assert (=> b!7933285 m!8319964))

(declare-fun m!8319998 () Bool)

(assert (=> b!7933285 m!8319998))

(declare-fun m!8320000 () Bool)

(assert (=> b!7933286 m!8320000))

(declare-fun m!8320002 () Bool)

(assert (=> b!7933286 m!8320002))

(declare-fun m!8320004 () Bool)

(assert (=> b!7933286 m!8320004))

(declare-fun m!8320006 () Bool)

(assert (=> bm!735538 m!8320006))

(declare-fun m!8320008 () Bool)

(assert (=> bm!735534 m!8320008))

(declare-fun m!8320010 () Bool)

(assert (=> d!2371677 m!8320010))

(assert (=> d!2371677 m!8319972))

(declare-fun m!8320012 () Bool)

(assert (=> b!7933276 m!8320012))

(declare-fun m!8320014 () Bool)

(assert (=> b!7933276 m!8320014))

(assert (=> b!7933276 m!8320014))

(declare-fun m!8320016 () Bool)

(assert (=> b!7933276 m!8320016))

(declare-fun m!8320018 () Bool)

(assert (=> bm!735540 m!8320018))

(declare-fun m!8320020 () Bool)

(assert (=> b!7933283 m!8320020))

(declare-fun m!8320022 () Bool)

(assert (=> b!7933283 m!8320022))

(declare-fun m!8320024 () Bool)

(assert (=> b!7933283 m!8320024))

(declare-fun m!8320026 () Bool)

(assert (=> b!7933283 m!8320026))

(declare-fun m!8320028 () Bool)

(assert (=> b!7933283 m!8320028))

(declare-fun m!8320030 () Bool)

(assert (=> b!7933283 m!8320030))

(declare-fun m!8320032 () Bool)

(assert (=> b!7933283 m!8320032))

(declare-fun m!8320034 () Bool)

(assert (=> b!7933283 m!8320034))

(declare-fun m!8320036 () Bool)

(assert (=> b!7933280 m!8320036))

(assert (=> b!7933280 m!8319960))

(assert (=> b!7933280 m!8319960))

(declare-fun m!8320038 () Bool)

(assert (=> b!7933280 m!8320038))

(assert (=> b!7933282 m!8319998))

(assert (=> b!7933282 m!8319964))

(declare-fun m!8320040 () Bool)

(assert (=> bm!735542 m!8320040))

(assert (=> b!7933120 d!2371677))

(declare-fun d!2371679 () Bool)

(assert (=> d!2371679 (= (height!2223 lt!2694743) (ite ((_ is Empty!15908) lt!2694743) 0 (ite ((_ is Leaf!30243) lt!2694743) 1 (cheight!16119 lt!2694743))))))

(assert (=> b!7933111 d!2371679))

(declare-fun d!2371681 () Bool)

(assert (=> d!2371681 (= (height!2223 t!4440) (ite ((_ is Empty!15908) t!4440) 0 (ite ((_ is Leaf!30243) t!4440) 1 (cheight!16119 t!4440))))))

(assert (=> b!7933111 d!2371681))

(declare-fun tp!2359107 () Bool)

(declare-fun e!4681401 () Bool)

(declare-fun tp!2359109 () Bool)

(declare-fun b!7933299 () Bool)

(assert (=> b!7933299 (= e!4681401 (and (inv!95753 (left!56882 (left!56882 err!4705))) tp!2359109 (inv!95753 (right!57212 (left!56882 err!4705))) tp!2359107))))

(declare-fun b!7933301 () Bool)

(declare-fun e!4681400 () Bool)

(declare-fun tp!2359108 () Bool)

(assert (=> b!7933301 (= e!4681400 tp!2359108)))

(declare-fun b!7933300 () Bool)

(assert (=> b!7933300 (= e!4681401 (and (inv!95752 (xs!19302 (left!56882 err!4705))) e!4681400))))

(assert (=> b!7933117 (= tp!2359100 (and (inv!95753 (left!56882 err!4705)) e!4681401))))

(assert (= (and b!7933117 ((_ is Node!15908) (left!56882 err!4705))) b!7933299))

(assert (= b!7933300 b!7933301))

(assert (= (and b!7933117 ((_ is Leaf!30243) (left!56882 err!4705))) b!7933300))

(declare-fun m!8320042 () Bool)

(assert (=> b!7933299 m!8320042))

(declare-fun m!8320044 () Bool)

(assert (=> b!7933299 m!8320044))

(declare-fun m!8320046 () Bool)

(assert (=> b!7933300 m!8320046))

(assert (=> b!7933117 m!8319860))

(declare-fun tp!2359110 () Bool)

(declare-fun e!4681403 () Bool)

(declare-fun b!7933302 () Bool)

(declare-fun tp!2359112 () Bool)

(assert (=> b!7933302 (= e!4681403 (and (inv!95753 (left!56882 (right!57212 err!4705))) tp!2359112 (inv!95753 (right!57212 (right!57212 err!4705))) tp!2359110))))

(declare-fun b!7933304 () Bool)

(declare-fun e!4681402 () Bool)

(declare-fun tp!2359111 () Bool)

(assert (=> b!7933304 (= e!4681402 tp!2359111)))

(declare-fun b!7933303 () Bool)

(assert (=> b!7933303 (= e!4681403 (and (inv!95752 (xs!19302 (right!57212 err!4705))) e!4681402))))

(assert (=> b!7933117 (= tp!2359099 (and (inv!95753 (right!57212 err!4705)) e!4681403))))

(assert (= (and b!7933117 ((_ is Node!15908) (right!57212 err!4705))) b!7933302))

(assert (= b!7933303 b!7933304))

(assert (= (and b!7933117 ((_ is Leaf!30243) (right!57212 err!4705))) b!7933303))

(declare-fun m!8320048 () Bool)

(assert (=> b!7933302 m!8320048))

(declare-fun m!8320050 () Bool)

(assert (=> b!7933302 m!8320050))

(declare-fun m!8320052 () Bool)

(assert (=> b!7933303 m!8320052))

(assert (=> b!7933117 m!8319862))

(declare-fun tp!2359115 () Bool)

(declare-fun e!4681405 () Bool)

(declare-fun b!7933305 () Bool)

(declare-fun tp!2359113 () Bool)

(assert (=> b!7933305 (= e!4681405 (and (inv!95753 (left!56882 (left!56882 t!4440))) tp!2359115 (inv!95753 (right!57212 (left!56882 t!4440))) tp!2359113))))

(declare-fun b!7933307 () Bool)

(declare-fun e!4681404 () Bool)

(declare-fun tp!2359114 () Bool)

(assert (=> b!7933307 (= e!4681404 tp!2359114)))

(declare-fun b!7933306 () Bool)

(assert (=> b!7933306 (= e!4681405 (and (inv!95752 (xs!19302 (left!56882 t!4440))) e!4681404))))

(assert (=> b!7933119 (= tp!2359096 (and (inv!95753 (left!56882 t!4440)) e!4681405))))

(assert (= (and b!7933119 ((_ is Node!15908) (left!56882 t!4440))) b!7933305))

(assert (= b!7933306 b!7933307))

(assert (= (and b!7933119 ((_ is Leaf!30243) (left!56882 t!4440))) b!7933306))

(declare-fun m!8320054 () Bool)

(assert (=> b!7933305 m!8320054))

(declare-fun m!8320056 () Bool)

(assert (=> b!7933305 m!8320056))

(declare-fun m!8320058 () Bool)

(assert (=> b!7933306 m!8320058))

(assert (=> b!7933119 m!8319856))

(declare-fun b!7933308 () Bool)

(declare-fun tp!2359118 () Bool)

(declare-fun tp!2359116 () Bool)

(declare-fun e!4681407 () Bool)

(assert (=> b!7933308 (= e!4681407 (and (inv!95753 (left!56882 (right!57212 t!4440))) tp!2359118 (inv!95753 (right!57212 (right!57212 t!4440))) tp!2359116))))

(declare-fun b!7933310 () Bool)

(declare-fun e!4681406 () Bool)

(declare-fun tp!2359117 () Bool)

(assert (=> b!7933310 (= e!4681406 tp!2359117)))

(declare-fun b!7933309 () Bool)

(assert (=> b!7933309 (= e!4681407 (and (inv!95752 (xs!19302 (right!57212 t!4440))) e!4681406))))

(assert (=> b!7933119 (= tp!2359098 (and (inv!95753 (right!57212 t!4440)) e!4681407))))

(assert (= (and b!7933119 ((_ is Node!15908) (right!57212 t!4440))) b!7933308))

(assert (= b!7933309 b!7933310))

(assert (= (and b!7933119 ((_ is Leaf!30243) (right!57212 t!4440))) b!7933309))

(declare-fun m!8320060 () Bool)

(assert (=> b!7933308 m!8320060))

(declare-fun m!8320062 () Bool)

(assert (=> b!7933308 m!8320062))

(declare-fun m!8320064 () Bool)

(assert (=> b!7933309 m!8320064))

(assert (=> b!7933119 m!8319858))

(declare-fun b!7933315 () Bool)

(declare-fun e!4681410 () Bool)

(declare-fun tp!2359121 () Bool)

(assert (=> b!7933315 (= e!4681410 (and tp_is_empty!53241 tp!2359121))))

(assert (=> b!7933115 (= tp!2359095 e!4681410)))

(assert (= (and b!7933115 ((_ is Cons!74454) (innerList!15996 (xs!19302 t!4440)))) b!7933315))

(declare-fun b!7933316 () Bool)

(declare-fun e!4681411 () Bool)

(declare-fun tp!2359122 () Bool)

(assert (=> b!7933316 (= e!4681411 (and tp_is_empty!53241 tp!2359122))))

(assert (=> b!7933116 (= tp!2359097 e!4681411)))

(assert (= (and b!7933116 ((_ is Cons!74454) (innerList!15996 (xs!19302 err!4705)))) b!7933316))

(check-sat (not b!7933119) (not b!7933183) (not bm!735540) (not b!7933211) (not b!7933163) (not b!7933304) (not b!7933162) (not b!7933276) (not b!7933286) (not bm!735510) (not b!7933316) (not b!7933210) (not bm!735541) (not b!7933160) (not b!7933226) (not bm!735511) (not b!7933307) (not bm!735539) (not b!7933132) (not b!7933127) (not bm!735537) (not b!7933308) (not d!2371677) (not b!7933310) (not bm!735542) (not b!7933305) (not bm!735536) (not b!7933224) (not b!7933315) (not b!7933285) (not b!7933303) (not b!7933129) (not b!7933158) (not b!7933232) (not b!7933282) (not bm!735538) (not b!7933309) (not b!7933216) (not b!7933117) (not b!7933302) (not b!7933300) (not b!7933209) (not b!7933235) (not bm!735534) (not b!7933227) (not d!2371643) (not b!7933223) (not b!7933219) (not b!7933157) (not d!2371671) (not b!7933165) (not b!7933299) (not b!7933161) (not b!7933233) (not b!7933221) tp_is_empty!53241 (not b!7933225) (not b!7933159) (not b!7933130) (not b!7933283) (not b!7933301) (not b!7933229) (not b!7933182) (not b!7933222) (not b!7933230) (not b!7933220) (not b!7933280) (not bm!735543) (not b!7933306) (not b!7933213))
(check-sat)
(get-model)

(declare-fun d!2371709 () Bool)

(assert (=> d!2371709 (= (inv!95752 (xs!19302 (right!57212 err!4705))) (<= (size!43264 (innerList!15996 (xs!19302 (right!57212 err!4705)))) 2147483647))))

(declare-fun bs!1969051 () Bool)

(assert (= bs!1969051 d!2371709))

(declare-fun m!8320212 () Bool)

(assert (=> bs!1969051 m!8320212))

(assert (=> b!7933303 d!2371709))

(declare-fun d!2371711 () Bool)

(declare-fun res!3147553 () Bool)

(declare-fun e!4681469 () Bool)

(assert (=> d!2371711 (=> (not res!3147553) (not e!4681469))))

(assert (=> d!2371711 (= res!3147553 (<= (size!43264 (list!19426 (xs!19302 (right!57212 err!4705)))) 512))))

(assert (=> d!2371711 (= (inv!95755 (right!57212 err!4705)) e!4681469)))

(declare-fun b!7933431 () Bool)

(declare-fun res!3147554 () Bool)

(assert (=> b!7933431 (=> (not res!3147554) (not e!4681469))))

(assert (=> b!7933431 (= res!3147554 (= (csize!32047 (right!57212 err!4705)) (size!43264 (list!19426 (xs!19302 (right!57212 err!4705))))))))

(declare-fun b!7933432 () Bool)

(assert (=> b!7933432 (= e!4681469 (and (> (csize!32047 (right!57212 err!4705)) 0) (<= (csize!32047 (right!57212 err!4705)) 512)))))

(assert (= (and d!2371711 res!3147553) b!7933431))

(assert (= (and b!7933431 res!3147554) b!7933432))

(declare-fun m!8320214 () Bool)

(assert (=> d!2371711 m!8320214))

(assert (=> d!2371711 m!8320214))

(declare-fun m!8320216 () Bool)

(assert (=> d!2371711 m!8320216))

(assert (=> b!7933431 m!8320214))

(assert (=> b!7933431 m!8320214))

(assert (=> b!7933431 m!8320216))

(assert (=> b!7933132 d!2371711))

(declare-fun b!7933444 () Bool)

(declare-fun e!4681475 () Bool)

(declare-fun lt!2694861 () List!74578)

(assert (=> b!7933444 (= e!4681475 (or (not (= (list!19425 (right!57212 t!4440)) Nil!74454)) (= lt!2694861 (list!19425 (left!56882 t!4440)))))))

(declare-fun d!2371713 () Bool)

(assert (=> d!2371713 e!4681475))

(declare-fun res!3147559 () Bool)

(assert (=> d!2371713 (=> (not res!3147559) (not e!4681475))))

(assert (=> d!2371713 (= res!3147559 (= (content!15788 lt!2694861) ((_ map or) (content!15788 (list!19425 (left!56882 t!4440))) (content!15788 (list!19425 (right!57212 t!4440))))))))

(declare-fun e!4681474 () List!74578)

(assert (=> d!2371713 (= lt!2694861 e!4681474)))

(declare-fun c!1457453 () Bool)

(assert (=> d!2371713 (= c!1457453 ((_ is Nil!74454) (list!19425 (left!56882 t!4440))))))

(assert (=> d!2371713 (= (++!18264 (list!19425 (left!56882 t!4440)) (list!19425 (right!57212 t!4440))) lt!2694861)))

(declare-fun b!7933442 () Bool)

(assert (=> b!7933442 (= e!4681474 (Cons!74454 (h!80902 (list!19425 (left!56882 t!4440))) (++!18264 (t!390235 (list!19425 (left!56882 t!4440))) (list!19425 (right!57212 t!4440)))))))

(declare-fun b!7933443 () Bool)

(declare-fun res!3147560 () Bool)

(assert (=> b!7933443 (=> (not res!3147560) (not e!4681475))))

(assert (=> b!7933443 (= res!3147560 (= (size!43264 lt!2694861) (+ (size!43264 (list!19425 (left!56882 t!4440))) (size!43264 (list!19425 (right!57212 t!4440))))))))

(declare-fun b!7933441 () Bool)

(assert (=> b!7933441 (= e!4681474 (list!19425 (right!57212 t!4440)))))

(assert (= (and d!2371713 c!1457453) b!7933441))

(assert (= (and d!2371713 (not c!1457453)) b!7933442))

(assert (= (and d!2371713 res!3147559) b!7933443))

(assert (= (and b!7933443 res!3147560) b!7933444))

(declare-fun m!8320218 () Bool)

(assert (=> d!2371713 m!8320218))

(assert (=> d!2371713 m!8319958))

(declare-fun m!8320220 () Bool)

(assert (=> d!2371713 m!8320220))

(assert (=> d!2371713 m!8319960))

(declare-fun m!8320222 () Bool)

(assert (=> d!2371713 m!8320222))

(assert (=> b!7933442 m!8319960))

(declare-fun m!8320224 () Bool)

(assert (=> b!7933442 m!8320224))

(declare-fun m!8320226 () Bool)

(assert (=> b!7933443 m!8320226))

(assert (=> b!7933443 m!8319958))

(declare-fun m!8320228 () Bool)

(assert (=> b!7933443 m!8320228))

(assert (=> b!7933443 m!8319960))

(declare-fun m!8320230 () Bool)

(assert (=> b!7933443 m!8320230))

(assert (=> b!7933220 d!2371713))

(declare-fun b!7933447 () Bool)

(declare-fun e!4681477 () List!74578)

(assert (=> b!7933447 (= e!4681477 (list!19426 (xs!19302 (left!56882 t!4440))))))

(declare-fun b!7933445 () Bool)

(declare-fun e!4681476 () List!74578)

(assert (=> b!7933445 (= e!4681476 Nil!74454)))

(declare-fun b!7933448 () Bool)

(assert (=> b!7933448 (= e!4681477 (++!18264 (list!19425 (left!56882 (left!56882 t!4440))) (list!19425 (right!57212 (left!56882 t!4440)))))))

(declare-fun b!7933446 () Bool)

(assert (=> b!7933446 (= e!4681476 e!4681477)))

(declare-fun c!1457455 () Bool)

(assert (=> b!7933446 (= c!1457455 ((_ is Leaf!30243) (left!56882 t!4440)))))

(declare-fun d!2371715 () Bool)

(declare-fun c!1457454 () Bool)

(assert (=> d!2371715 (= c!1457454 ((_ is Empty!15908) (left!56882 t!4440)))))

(assert (=> d!2371715 (= (list!19425 (left!56882 t!4440)) e!4681476)))

(assert (= (and d!2371715 c!1457454) b!7933445))

(assert (= (and d!2371715 (not c!1457454)) b!7933446))

(assert (= (and b!7933446 c!1457455) b!7933447))

(assert (= (and b!7933446 (not c!1457455)) b!7933448))

(declare-fun m!8320232 () Bool)

(assert (=> b!7933447 m!8320232))

(declare-fun m!8320234 () Bool)

(assert (=> b!7933448 m!8320234))

(declare-fun m!8320236 () Bool)

(assert (=> b!7933448 m!8320236))

(assert (=> b!7933448 m!8320234))

(assert (=> b!7933448 m!8320236))

(declare-fun m!8320238 () Bool)

(assert (=> b!7933448 m!8320238))

(assert (=> b!7933220 d!2371715))

(declare-fun b!7933451 () Bool)

(declare-fun e!4681479 () List!74578)

(assert (=> b!7933451 (= e!4681479 (list!19426 (xs!19302 (right!57212 t!4440))))))

(declare-fun b!7933449 () Bool)

(declare-fun e!4681478 () List!74578)

(assert (=> b!7933449 (= e!4681478 Nil!74454)))

(declare-fun b!7933452 () Bool)

(assert (=> b!7933452 (= e!4681479 (++!18264 (list!19425 (left!56882 (right!57212 t!4440))) (list!19425 (right!57212 (right!57212 t!4440)))))))

(declare-fun b!7933450 () Bool)

(assert (=> b!7933450 (= e!4681478 e!4681479)))

(declare-fun c!1457457 () Bool)

(assert (=> b!7933450 (= c!1457457 ((_ is Leaf!30243) (right!57212 t!4440)))))

(declare-fun d!2371717 () Bool)

(declare-fun c!1457456 () Bool)

(assert (=> d!2371717 (= c!1457456 ((_ is Empty!15908) (right!57212 t!4440)))))

(assert (=> d!2371717 (= (list!19425 (right!57212 t!4440)) e!4681478)))

(assert (= (and d!2371717 c!1457456) b!7933449))

(assert (= (and d!2371717 (not c!1457456)) b!7933450))

(assert (= (and b!7933450 c!1457457) b!7933451))

(assert (= (and b!7933450 (not c!1457457)) b!7933452))

(assert (=> b!7933451 m!8320014))

(declare-fun m!8320240 () Bool)

(assert (=> b!7933452 m!8320240))

(assert (=> b!7933452 m!8320026))

(assert (=> b!7933452 m!8320240))

(assert (=> b!7933452 m!8320026))

(declare-fun m!8320242 () Bool)

(assert (=> b!7933452 m!8320242))

(assert (=> b!7933220 d!2371717))

(declare-fun b!7933453 () Bool)

(declare-fun res!3147566 () Bool)

(declare-fun e!4681480 () Bool)

(assert (=> b!7933453 (=> (not res!3147566) (not e!4681480))))

(assert (=> b!7933453 (= res!3147566 (<= (- (height!2223 (left!56882 (left!56882 t!4440))) (height!2223 (right!57212 (left!56882 t!4440)))) 1))))

(declare-fun d!2371719 () Bool)

(declare-fun res!3147562 () Bool)

(declare-fun e!4681481 () Bool)

(assert (=> d!2371719 (=> res!3147562 e!4681481)))

(assert (=> d!2371719 (= res!3147562 (not ((_ is Node!15908) (left!56882 t!4440))))))

(assert (=> d!2371719 (= (isBalanced!4534 (left!56882 t!4440)) e!4681481)))

(declare-fun b!7933454 () Bool)

(assert (=> b!7933454 (= e!4681480 (not (isEmpty!42787 (right!57212 (left!56882 t!4440)))))))

(declare-fun b!7933455 () Bool)

(declare-fun res!3147565 () Bool)

(assert (=> b!7933455 (=> (not res!3147565) (not e!4681480))))

(assert (=> b!7933455 (= res!3147565 (isBalanced!4534 (left!56882 (left!56882 t!4440))))))

(declare-fun b!7933456 () Bool)

(declare-fun res!3147563 () Bool)

(assert (=> b!7933456 (=> (not res!3147563) (not e!4681480))))

(assert (=> b!7933456 (= res!3147563 (not (isEmpty!42787 (left!56882 (left!56882 t!4440)))))))

(declare-fun b!7933457 () Bool)

(assert (=> b!7933457 (= e!4681481 e!4681480)))

(declare-fun res!3147564 () Bool)

(assert (=> b!7933457 (=> (not res!3147564) (not e!4681480))))

(assert (=> b!7933457 (= res!3147564 (<= (- 1) (- (height!2223 (left!56882 (left!56882 t!4440))) (height!2223 (right!57212 (left!56882 t!4440))))))))

(declare-fun b!7933458 () Bool)

(declare-fun res!3147561 () Bool)

(assert (=> b!7933458 (=> (not res!3147561) (not e!4681480))))

(assert (=> b!7933458 (= res!3147561 (isBalanced!4534 (right!57212 (left!56882 t!4440))))))

(assert (= (and d!2371719 (not res!3147562)) b!7933457))

(assert (= (and b!7933457 res!3147564) b!7933453))

(assert (= (and b!7933453 res!3147566) b!7933455))

(assert (= (and b!7933455 res!3147565) b!7933458))

(assert (= (and b!7933458 res!3147561) b!7933456))

(assert (= (and b!7933456 res!3147563) b!7933454))

(declare-fun m!8320244 () Bool)

(assert (=> b!7933453 m!8320244))

(declare-fun m!8320246 () Bool)

(assert (=> b!7933453 m!8320246))

(assert (=> b!7933457 m!8320244))

(assert (=> b!7933457 m!8320246))

(declare-fun m!8320248 () Bool)

(assert (=> b!7933456 m!8320248))

(declare-fun m!8320250 () Bool)

(assert (=> b!7933455 m!8320250))

(declare-fun m!8320252 () Bool)

(assert (=> b!7933454 m!8320252))

(declare-fun m!8320254 () Bool)

(assert (=> b!7933458 m!8320254))

(assert (=> b!7933223 d!2371719))

(declare-fun d!2371721 () Bool)

(declare-fun lt!2694864 () Bool)

(declare-fun isEmpty!42789 (List!74578) Bool)

(assert (=> d!2371721 (= lt!2694864 (isEmpty!42789 (list!19425 (right!57212 lt!2694743))))))

(declare-fun size!43266 (Conc!15908) Int)

(assert (=> d!2371721 (= lt!2694864 (= (size!43266 (right!57212 lt!2694743)) 0))))

(assert (=> d!2371721 (= (isEmpty!42787 (right!57212 lt!2694743)) lt!2694864)))

(declare-fun bs!1969052 () Bool)

(assert (= bs!1969052 d!2371721))

(assert (=> bs!1969052 m!8319930))

(assert (=> bs!1969052 m!8319930))

(declare-fun m!8320256 () Bool)

(assert (=> bs!1969052 m!8320256))

(declare-fun m!8320258 () Bool)

(assert (=> bs!1969052 m!8320258))

(assert (=> b!7933158 d!2371721))

(declare-fun b!7933468 () Bool)

(declare-fun e!4681487 () Conc!15908)

(declare-fun e!4681486 () Conc!15908)

(assert (=> b!7933468 (= e!4681487 e!4681486)))

(declare-fun c!1457462 () Bool)

(assert (=> b!7933468 (= c!1457462 (= e!4681392 Empty!15908))))

(declare-fun b!7933470 () Bool)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7933470 (= e!4681486 (Node!15908 (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440)) e!4681392 (+ (size!43266 (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440))) (size!43266 e!4681392)) (+ (max!0 (height!2223 (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440))) (height!2223 e!4681392)) 1)))))

(declare-fun b!7933469 () Bool)

(assert (=> b!7933469 (= e!4681486 (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440)))))

(declare-fun b!7933467 () Bool)

(assert (=> b!7933467 (= e!4681487 e!4681392)))

(declare-fun lt!2694867 () Conc!15908)

(declare-fun d!2371723 () Bool)

(assert (=> d!2371723 (= (list!19425 lt!2694867) (++!18264 (list!19425 (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440))) (list!19425 e!4681392)))))

(assert (=> d!2371723 (= lt!2694867 e!4681487)))

(declare-fun c!1457463 () Bool)

(assert (=> d!2371723 (= c!1457463 (= (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440)) Empty!15908))))

(assert (=> d!2371723 (= (<>!429 (ite c!1457420 (left!56882 (right!57212 t!4440)) (right!57212 t!4440)) e!4681392) lt!2694867)))

(assert (= (and d!2371723 c!1457463) b!7933467))

(assert (= (and d!2371723 (not c!1457463)) b!7933468))

(assert (= (and b!7933468 c!1457462) b!7933469))

(assert (= (and b!7933468 (not c!1457462)) b!7933470))

(declare-fun m!8320260 () Bool)

(assert (=> b!7933470 m!8320260))

(declare-fun m!8320262 () Bool)

(assert (=> b!7933470 m!8320262))

(declare-fun m!8320264 () Bool)

(assert (=> b!7933470 m!8320264))

(declare-fun m!8320266 () Bool)

(assert (=> b!7933470 m!8320266))

(declare-fun m!8320268 () Bool)

(assert (=> b!7933470 m!8320268))

(assert (=> b!7933470 m!8320264))

(assert (=> b!7933470 m!8320262))

(declare-fun m!8320270 () Bool)

(assert (=> d!2371723 m!8320270))

(declare-fun m!8320272 () Bool)

(assert (=> d!2371723 m!8320272))

(declare-fun m!8320274 () Bool)

(assert (=> d!2371723 m!8320274))

(assert (=> d!2371723 m!8320272))

(assert (=> d!2371723 m!8320274))

(declare-fun m!8320276 () Bool)

(assert (=> d!2371723 m!8320276))

(assert (=> bm!735537 d!2371723))

(declare-fun d!2371725 () Bool)

(declare-fun res!3147573 () Bool)

(declare-fun e!4681490 () Bool)

(assert (=> d!2371725 (=> (not res!3147573) (not e!4681490))))

(assert (=> d!2371725 (= res!3147573 (= (csize!32046 err!4705) (+ (size!43266 (left!56882 err!4705)) (size!43266 (right!57212 err!4705)))))))

(assert (=> d!2371725 (= (inv!95754 err!4705) e!4681490)))

(declare-fun b!7933477 () Bool)

(declare-fun res!3147574 () Bool)

(assert (=> b!7933477 (=> (not res!3147574) (not e!4681490))))

(assert (=> b!7933477 (= res!3147574 (and (not (= (left!56882 err!4705) Empty!15908)) (not (= (right!57212 err!4705) Empty!15908))))))

(declare-fun b!7933478 () Bool)

(declare-fun res!3147575 () Bool)

(assert (=> b!7933478 (=> (not res!3147575) (not e!4681490))))

(assert (=> b!7933478 (= res!3147575 (= (cheight!16119 err!4705) (+ (max!0 (height!2223 (left!56882 err!4705)) (height!2223 (right!57212 err!4705))) 1)))))

(declare-fun b!7933479 () Bool)

(assert (=> b!7933479 (= e!4681490 (<= 0 (cheight!16119 err!4705)))))

(assert (= (and d!2371725 res!3147573) b!7933477))

(assert (= (and b!7933477 res!3147574) b!7933478))

(assert (= (and b!7933478 res!3147575) b!7933479))

(declare-fun m!8320278 () Bool)

(assert (=> d!2371725 m!8320278))

(declare-fun m!8320280 () Bool)

(assert (=> d!2371725 m!8320280))

(declare-fun m!8320282 () Bool)

(assert (=> b!7933478 m!8320282))

(declare-fun m!8320284 () Bool)

(assert (=> b!7933478 m!8320284))

(assert (=> b!7933478 m!8320282))

(assert (=> b!7933478 m!8320284))

(declare-fun m!8320286 () Bool)

(assert (=> b!7933478 m!8320286))

(assert (=> b!7933163 d!2371725))

(assert (=> b!7933221 d!2371675))

(declare-fun d!2371727 () Bool)

(assert (=> d!2371727 (= (height!2223 (right!57212 t!4440)) (ite ((_ is Empty!15908) (right!57212 t!4440)) 0 (ite ((_ is Leaf!30243) (right!57212 t!4440)) 1 (cheight!16119 (right!57212 t!4440)))))))

(assert (=> b!7933221 d!2371727))

(declare-fun d!2371729 () Bool)

(declare-fun lt!2694868 () Bool)

(assert (=> d!2371729 (= lt!2694868 (isEmpty!42789 (list!19425 (left!56882 lt!2694743))))))

(assert (=> d!2371729 (= lt!2694868 (= (size!43266 (left!56882 lt!2694743)) 0))))

(assert (=> d!2371729 (= (isEmpty!42787 (left!56882 lt!2694743)) lt!2694868)))

(declare-fun bs!1969053 () Bool)

(assert (= bs!1969053 d!2371729))

(assert (=> bs!1969053 m!8319928))

(assert (=> bs!1969053 m!8319928))

(declare-fun m!8320288 () Bool)

(assert (=> bs!1969053 m!8320288))

(declare-fun m!8320290 () Bool)

(assert (=> bs!1969053 m!8320290))

(assert (=> b!7933160 d!2371729))

(declare-fun d!2371731 () Bool)

(declare-fun res!3147576 () Bool)

(declare-fun e!4681491 () Bool)

(assert (=> d!2371731 (=> (not res!3147576) (not e!4681491))))

(assert (=> d!2371731 (= res!3147576 (<= (size!43264 (list!19426 (xs!19302 err!4705))) 512))))

(assert (=> d!2371731 (= (inv!95755 err!4705) e!4681491)))

(declare-fun b!7933480 () Bool)

(declare-fun res!3147577 () Bool)

(assert (=> b!7933480 (=> (not res!3147577) (not e!4681491))))

(assert (=> b!7933480 (= res!3147577 (= (csize!32047 err!4705) (size!43264 (list!19426 (xs!19302 err!4705)))))))

(declare-fun b!7933481 () Bool)

(assert (=> b!7933481 (= e!4681491 (and (> (csize!32047 err!4705) 0) (<= (csize!32047 err!4705) 512)))))

(assert (= (and d!2371731 res!3147576) b!7933480))

(assert (= (and b!7933480 res!3147577) b!7933481))

(declare-fun m!8320292 () Bool)

(assert (=> d!2371731 m!8320292))

(assert (=> d!2371731 m!8320292))

(declare-fun m!8320294 () Bool)

(assert (=> d!2371731 m!8320294))

(assert (=> b!7933480 m!8320292))

(assert (=> b!7933480 m!8320292))

(assert (=> b!7933480 m!8320294))

(assert (=> b!7933165 d!2371731))

(declare-fun b!7933482 () Bool)

(declare-fun res!3147583 () Bool)

(declare-fun e!4681492 () Bool)

(assert (=> b!7933482 (=> (not res!3147583) (not e!4681492))))

(assert (=> b!7933482 (= res!3147583 (<= (- (height!2223 (left!56882 (right!57212 lt!2694743))) (height!2223 (right!57212 (right!57212 lt!2694743)))) 1))))

(declare-fun d!2371733 () Bool)

(declare-fun res!3147579 () Bool)

(declare-fun e!4681493 () Bool)

(assert (=> d!2371733 (=> res!3147579 e!4681493)))

(assert (=> d!2371733 (= res!3147579 (not ((_ is Node!15908) (right!57212 lt!2694743))))))

(assert (=> d!2371733 (= (isBalanced!4534 (right!57212 lt!2694743)) e!4681493)))

(declare-fun b!7933483 () Bool)

(assert (=> b!7933483 (= e!4681492 (not (isEmpty!42787 (right!57212 (right!57212 lt!2694743)))))))

(declare-fun b!7933484 () Bool)

(declare-fun res!3147582 () Bool)

(assert (=> b!7933484 (=> (not res!3147582) (not e!4681492))))

(assert (=> b!7933484 (= res!3147582 (isBalanced!4534 (left!56882 (right!57212 lt!2694743))))))

(declare-fun b!7933485 () Bool)

(declare-fun res!3147580 () Bool)

(assert (=> b!7933485 (=> (not res!3147580) (not e!4681492))))

(assert (=> b!7933485 (= res!3147580 (not (isEmpty!42787 (left!56882 (right!57212 lt!2694743)))))))

(declare-fun b!7933486 () Bool)

(assert (=> b!7933486 (= e!4681493 e!4681492)))

(declare-fun res!3147581 () Bool)

(assert (=> b!7933486 (=> (not res!3147581) (not e!4681492))))

(assert (=> b!7933486 (= res!3147581 (<= (- 1) (- (height!2223 (left!56882 (right!57212 lt!2694743))) (height!2223 (right!57212 (right!57212 lt!2694743))))))))

(declare-fun b!7933487 () Bool)

(declare-fun res!3147578 () Bool)

(assert (=> b!7933487 (=> (not res!3147578) (not e!4681492))))

(assert (=> b!7933487 (= res!3147578 (isBalanced!4534 (right!57212 (right!57212 lt!2694743))))))

(assert (= (and d!2371733 (not res!3147579)) b!7933486))

(assert (= (and b!7933486 res!3147581) b!7933482))

(assert (= (and b!7933482 res!3147583) b!7933484))

(assert (= (and b!7933484 res!3147582) b!7933487))

(assert (= (and b!7933487 res!3147578) b!7933485))

(assert (= (and b!7933485 res!3147580) b!7933483))

(declare-fun m!8320296 () Bool)

(assert (=> b!7933482 m!8320296))

(declare-fun m!8320298 () Bool)

(assert (=> b!7933482 m!8320298))

(assert (=> b!7933486 m!8320296))

(assert (=> b!7933486 m!8320298))

(declare-fun m!8320300 () Bool)

(assert (=> b!7933485 m!8320300))

(declare-fun m!8320302 () Bool)

(assert (=> b!7933484 m!8320302))

(declare-fun m!8320304 () Bool)

(assert (=> b!7933483 m!8320304))

(declare-fun m!8320306 () Bool)

(assert (=> b!7933487 m!8320306))

(assert (=> b!7933162 d!2371733))

(declare-fun b!7933490 () Bool)

(declare-fun e!4681495 () List!74578)

(assert (=> b!7933490 (= e!4681495 (list!19426 (xs!19302 (ite c!1457422 (right!57212 (right!57212 t!4440)) (left!56882 (right!57212 t!4440))))))))

(declare-fun b!7933488 () Bool)

(declare-fun e!4681494 () List!74578)

(assert (=> b!7933488 (= e!4681494 Nil!74454)))

(declare-fun b!7933491 () Bool)

(assert (=> b!7933491 (= e!4681495 (++!18264 (list!19425 (left!56882 (ite c!1457422 (right!57212 (right!57212 t!4440)) (left!56882 (right!57212 t!4440))))) (list!19425 (right!57212 (ite c!1457422 (right!57212 (right!57212 t!4440)) (left!56882 (right!57212 t!4440)))))))))

(declare-fun b!7933489 () Bool)

(assert (=> b!7933489 (= e!4681494 e!4681495)))

(declare-fun c!1457465 () Bool)

(assert (=> b!7933489 (= c!1457465 ((_ is Leaf!30243) (ite c!1457422 (right!57212 (right!57212 t!4440)) (left!56882 (right!57212 t!4440)))))))

(declare-fun d!2371735 () Bool)

(declare-fun c!1457464 () Bool)

(assert (=> d!2371735 (= c!1457464 ((_ is Empty!15908) (ite c!1457422 (right!57212 (right!57212 t!4440)) (left!56882 (right!57212 t!4440)))))))

(assert (=> d!2371735 (= (list!19425 (ite c!1457422 (right!57212 (right!57212 t!4440)) (left!56882 (right!57212 t!4440)))) e!4681494)))

(assert (= (and d!2371735 c!1457464) b!7933488))

(assert (= (and d!2371735 (not c!1457464)) b!7933489))

(assert (= (and b!7933489 c!1457465) b!7933490))

(assert (= (and b!7933489 (not c!1457465)) b!7933491))

(declare-fun m!8320308 () Bool)

(assert (=> b!7933490 m!8320308))

(declare-fun m!8320310 () Bool)

(assert (=> b!7933491 m!8320310))

(declare-fun m!8320312 () Bool)

(assert (=> b!7933491 m!8320312))

(assert (=> b!7933491 m!8320310))

(assert (=> b!7933491 m!8320312))

(declare-fun m!8320314 () Bool)

(assert (=> b!7933491 m!8320314))

(assert (=> bm!735536 d!2371735))

(declare-fun d!2371737 () Bool)

(declare-fun lt!2694871 () Int)

(assert (=> d!2371737 (>= lt!2694871 0)))

(declare-fun e!4681498 () Int)

(assert (=> d!2371737 (= lt!2694871 e!4681498)))

(declare-fun c!1457468 () Bool)

(assert (=> d!2371737 (= c!1457468 ((_ is Nil!74454) (innerList!15996 (xs!19302 t!4440))))))

(assert (=> d!2371737 (= (size!43264 (innerList!15996 (xs!19302 t!4440))) lt!2694871)))

(declare-fun b!7933496 () Bool)

(assert (=> b!7933496 (= e!4681498 0)))

(declare-fun b!7933497 () Bool)

(assert (=> b!7933497 (= e!4681498 (+ 1 (size!43264 (t!390235 (innerList!15996 (xs!19302 t!4440))))))))

(assert (= (and d!2371737 c!1457468) b!7933496))

(assert (= (and d!2371737 (not c!1457468)) b!7933497))

(declare-fun m!8320316 () Bool)

(assert (=> b!7933497 m!8320316))

(assert (=> d!2371643 d!2371737))

(declare-fun d!2371739 () Bool)

(declare-fun res!3147584 () Bool)

(declare-fun e!4681499 () Bool)

(assert (=> d!2371739 (=> (not res!3147584) (not e!4681499))))

(assert (=> d!2371739 (= res!3147584 (= (csize!32046 (left!56882 err!4705)) (+ (size!43266 (left!56882 (left!56882 err!4705))) (size!43266 (right!57212 (left!56882 err!4705))))))))

(assert (=> d!2371739 (= (inv!95754 (left!56882 err!4705)) e!4681499)))

(declare-fun b!7933498 () Bool)

(declare-fun res!3147585 () Bool)

(assert (=> b!7933498 (=> (not res!3147585) (not e!4681499))))

(assert (=> b!7933498 (= res!3147585 (and (not (= (left!56882 (left!56882 err!4705)) Empty!15908)) (not (= (right!57212 (left!56882 err!4705)) Empty!15908))))))

(declare-fun b!7933499 () Bool)

(declare-fun res!3147586 () Bool)

(assert (=> b!7933499 (=> (not res!3147586) (not e!4681499))))

(assert (=> b!7933499 (= res!3147586 (= (cheight!16119 (left!56882 err!4705)) (+ (max!0 (height!2223 (left!56882 (left!56882 err!4705))) (height!2223 (right!57212 (left!56882 err!4705)))) 1)))))

(declare-fun b!7933500 () Bool)

(assert (=> b!7933500 (= e!4681499 (<= 0 (cheight!16119 (left!56882 err!4705))))))

(assert (= (and d!2371739 res!3147584) b!7933498))

(assert (= (and b!7933498 res!3147585) b!7933499))

(assert (= (and b!7933499 res!3147586) b!7933500))

(declare-fun m!8320318 () Bool)

(assert (=> d!2371739 m!8320318))

(declare-fun m!8320320 () Bool)

(assert (=> d!2371739 m!8320320))

(declare-fun m!8320322 () Bool)

(assert (=> b!7933499 m!8320322))

(declare-fun m!8320324 () Bool)

(assert (=> b!7933499 m!8320324))

(assert (=> b!7933499 m!8320322))

(assert (=> b!7933499 m!8320324))

(declare-fun m!8320326 () Bool)

(assert (=> b!7933499 m!8320326))

(assert (=> b!7933127 d!2371739))

(declare-fun d!2371741 () Bool)

(declare-fun c!1457469 () Bool)

(assert (=> d!2371741 (= c!1457469 ((_ is Node!15908) (left!56882 (left!56882 t!4440))))))

(declare-fun e!4681500 () Bool)

(assert (=> d!2371741 (= (inv!95753 (left!56882 (left!56882 t!4440))) e!4681500)))

(declare-fun b!7933501 () Bool)

(assert (=> b!7933501 (= e!4681500 (inv!95754 (left!56882 (left!56882 t!4440))))))

(declare-fun b!7933502 () Bool)

(declare-fun e!4681501 () Bool)

(assert (=> b!7933502 (= e!4681500 e!4681501)))

(declare-fun res!3147587 () Bool)

(assert (=> b!7933502 (= res!3147587 (not ((_ is Leaf!30243) (left!56882 (left!56882 t!4440)))))))

(assert (=> b!7933502 (=> res!3147587 e!4681501)))

(declare-fun b!7933503 () Bool)

(assert (=> b!7933503 (= e!4681501 (inv!95755 (left!56882 (left!56882 t!4440))))))

(assert (= (and d!2371741 c!1457469) b!7933501))

(assert (= (and d!2371741 (not c!1457469)) b!7933502))

(assert (= (and b!7933502 (not res!3147587)) b!7933503))

(declare-fun m!8320328 () Bool)

(assert (=> b!7933501 m!8320328))

(declare-fun m!8320330 () Bool)

(assert (=> b!7933503 m!8320330))

(assert (=> b!7933305 d!2371741))

(declare-fun d!2371743 () Bool)

(declare-fun c!1457470 () Bool)

(assert (=> d!2371743 (= c!1457470 ((_ is Node!15908) (right!57212 (left!56882 t!4440))))))

(declare-fun e!4681502 () Bool)

(assert (=> d!2371743 (= (inv!95753 (right!57212 (left!56882 t!4440))) e!4681502)))

(declare-fun b!7933504 () Bool)

(assert (=> b!7933504 (= e!4681502 (inv!95754 (right!57212 (left!56882 t!4440))))))

(declare-fun b!7933505 () Bool)

(declare-fun e!4681503 () Bool)

(assert (=> b!7933505 (= e!4681502 e!4681503)))

(declare-fun res!3147588 () Bool)

(assert (=> b!7933505 (= res!3147588 (not ((_ is Leaf!30243) (right!57212 (left!56882 t!4440)))))))

(assert (=> b!7933505 (=> res!3147588 e!4681503)))

(declare-fun b!7933506 () Bool)

(assert (=> b!7933506 (= e!4681503 (inv!95755 (right!57212 (left!56882 t!4440))))))

(assert (= (and d!2371743 c!1457470) b!7933504))

(assert (= (and d!2371743 (not c!1457470)) b!7933505))

(assert (= (and b!7933505 (not res!3147588)) b!7933506))

(declare-fun m!8320332 () Bool)

(assert (=> b!7933504 m!8320332))

(declare-fun m!8320334 () Bool)

(assert (=> b!7933506 m!8320334))

(assert (=> b!7933305 d!2371743))

(declare-fun d!2371745 () Bool)

(declare-fun res!3147589 () Bool)

(declare-fun e!4681504 () Bool)

(assert (=> d!2371745 (=> (not res!3147589) (not e!4681504))))

(assert (=> d!2371745 (= res!3147589 (<= (size!43264 (list!19426 (xs!19302 (left!56882 err!4705)))) 512))))

(assert (=> d!2371745 (= (inv!95755 (left!56882 err!4705)) e!4681504)))

(declare-fun b!7933507 () Bool)

(declare-fun res!3147590 () Bool)

(assert (=> b!7933507 (=> (not res!3147590) (not e!4681504))))

(assert (=> b!7933507 (= res!3147590 (= (csize!32047 (left!56882 err!4705)) (size!43264 (list!19426 (xs!19302 (left!56882 err!4705))))))))

(declare-fun b!7933508 () Bool)

(assert (=> b!7933508 (= e!4681504 (and (> (csize!32047 (left!56882 err!4705)) 0) (<= (csize!32047 (left!56882 err!4705)) 512)))))

(assert (= (and d!2371745 res!3147589) b!7933507))

(assert (= (and b!7933507 res!3147590) b!7933508))

(declare-fun m!8320336 () Bool)

(assert (=> d!2371745 m!8320336))

(assert (=> d!2371745 m!8320336))

(declare-fun m!8320338 () Bool)

(assert (=> d!2371745 m!8320338))

(assert (=> b!7933507 m!8320336))

(assert (=> b!7933507 m!8320336))

(assert (=> b!7933507 m!8320338))

(assert (=> b!7933129 d!2371745))

(declare-fun d!2371747 () Bool)

(declare-fun lt!2694874 () IArray!31877)

(declare-fun fill!292 (Int T!145846) List!74578)

(assert (=> d!2371747 (= lt!2694874 (IArray!31878 (fill!292 1 v!5484)))))

(declare-fun choose!59847 (Int T!145846) IArray!31877)

(assert (=> d!2371747 (= lt!2694874 (choose!59847 1 v!5484))))

(assert (=> d!2371747 (and (<= 0 1) (<= 1 2147483647))))

(assert (=> d!2371747 (= (fill!290 1 v!5484) lt!2694874)))

(declare-fun bs!1969054 () Bool)

(assert (= bs!1969054 d!2371747))

(declare-fun m!8320340 () Bool)

(assert (=> bs!1969054 m!8320340))

(declare-fun m!8320342 () Bool)

(assert (=> bs!1969054 m!8320342))

(assert (=> bm!735534 d!2371747))

(declare-fun b!7933509 () Bool)

(declare-fun res!3147593 () Bool)

(declare-fun e!4681505 () Bool)

(assert (=> b!7933509 (=> (not res!3147593) (not e!4681505))))

(declare-fun lt!2694875 () List!74578)

(assert (=> b!7933509 (= res!3147593 (= (size!43264 lt!2694875) (+ (size!43264 (t!390235 (list!19425 t!4440))) 1)))))

(declare-fun b!7933510 () Bool)

(assert (=> b!7933510 (= e!4681505 (= lt!2694875 (++!18264 (t!390235 (list!19425 t!4440)) (Cons!74454 v!5484 Nil!74454))))))

(declare-fun bm!735578 () Bool)

(declare-fun call!735583 () (_ BitVec 32))

(assert (=> bm!735578 (= call!735583 (isize!124 lt!2694875))))

(declare-fun b!7933511 () Bool)

(declare-fun res!3147592 () Bool)

(assert (=> b!7933511 (=> (not res!3147592) (not e!4681505))))

(declare-fun e!4681507 () Bool)

(assert (=> b!7933511 (= res!3147592 e!4681507)))

(declare-fun c!1457472 () Bool)

(assert (=> b!7933511 (= c!1457472 (bvslt (isize!124 (t!390235 (list!19425 t!4440))) #b01111111111111111111111111111111))))

(declare-fun bm!735579 () Bool)

(declare-fun call!735584 () (_ BitVec 32))

(assert (=> bm!735579 (= call!735584 (isize!124 (t!390235 (list!19425 t!4440))))))

(declare-fun b!7933512 () Bool)

(declare-fun e!4681506 () List!74578)

(assert (=> b!7933512 (= e!4681506 (Cons!74454 v!5484 (t!390235 (list!19425 t!4440))))))

(declare-fun d!2371749 () Bool)

(assert (=> d!2371749 e!4681505))

(declare-fun res!3147594 () Bool)

(assert (=> d!2371749 (=> (not res!3147594) (not e!4681505))))

(assert (=> d!2371749 (= res!3147594 ((_ is Cons!74454) lt!2694875))))

(assert (=> d!2371749 (= lt!2694875 e!4681506)))

(declare-fun c!1457471 () Bool)

(assert (=> d!2371749 (= c!1457471 ((_ is Nil!74454) (t!390235 (list!19425 t!4440))))))

(assert (=> d!2371749 (= ($colon+!321 (t!390235 (list!19425 t!4440)) v!5484) lt!2694875)))

(declare-fun b!7933513 () Bool)

(assert (=> b!7933513 (= e!4681506 (Cons!74454 (h!80902 (t!390235 (list!19425 t!4440))) ($colon+!321 (t!390235 (t!390235 (list!19425 t!4440))) v!5484)))))

(declare-fun b!7933514 () Bool)

(assert (=> b!7933514 (= e!4681507 (= call!735583 (bvadd call!735584 #b00000000000000000000000000000001)))))

(declare-fun b!7933515 () Bool)

(assert (=> b!7933515 (= e!4681507 (= call!735583 call!735584))))

(declare-fun b!7933516 () Bool)

(declare-fun res!3147591 () Bool)

(assert (=> b!7933516 (=> (not res!3147591) (not e!4681505))))

(assert (=> b!7933516 (= res!3147591 (= (content!15788 lt!2694875) ((_ map or) (content!15788 (t!390235 (list!19425 t!4440))) (store ((as const (Array T!145846 Bool)) false) v!5484 true))))))

(assert (= (and d!2371749 c!1457471) b!7933512))

(assert (= (and d!2371749 (not c!1457471)) b!7933513))

(assert (= (and d!2371749 res!3147594) b!7933509))

(assert (= (and b!7933509 res!3147593) b!7933511))

(assert (= (and b!7933511 c!1457472) b!7933514))

(assert (= (and b!7933511 (not c!1457472)) b!7933515))

(assert (= (or b!7933514 b!7933515) bm!735578))

(assert (= (or b!7933514 b!7933515) bm!735579))

(assert (= (and b!7933511 res!3147592) b!7933516))

(assert (= (and b!7933516 res!3147591) b!7933510))

(declare-fun m!8320344 () Bool)

(assert (=> b!7933509 m!8320344))

(declare-fun m!8320346 () Bool)

(assert (=> b!7933509 m!8320346))

(declare-fun m!8320348 () Bool)

(assert (=> bm!735579 m!8320348))

(declare-fun m!8320350 () Bool)

(assert (=> bm!735578 m!8320350))

(declare-fun m!8320352 () Bool)

(assert (=> b!7933516 m!8320352))

(declare-fun m!8320354 () Bool)

(assert (=> b!7933516 m!8320354))

(assert (=> b!7933516 m!8319950))

(assert (=> b!7933511 m!8320348))

(declare-fun m!8320356 () Bool)

(assert (=> b!7933510 m!8320356))

(declare-fun m!8320358 () Bool)

(assert (=> b!7933513 m!8320358))

(assert (=> b!7933213 d!2371749))

(declare-fun e!4681509 () List!74578)

(declare-fun b!7933519 () Bool)

(assert (=> b!7933519 (= e!4681509 (list!19426 (xs!19302 (ite c!1457422 (left!56882 (right!57212 t!4440)) (right!57212 lt!2694829)))))))

(declare-fun b!7933517 () Bool)

(declare-fun e!4681508 () List!74578)

(assert (=> b!7933517 (= e!4681508 Nil!74454)))

(declare-fun b!7933520 () Bool)

(assert (=> b!7933520 (= e!4681509 (++!18264 (list!19425 (left!56882 (ite c!1457422 (left!56882 (right!57212 t!4440)) (right!57212 lt!2694829)))) (list!19425 (right!57212 (ite c!1457422 (left!56882 (right!57212 t!4440)) (right!57212 lt!2694829))))))))

(declare-fun b!7933518 () Bool)

(assert (=> b!7933518 (= e!4681508 e!4681509)))

(declare-fun c!1457474 () Bool)

(assert (=> b!7933518 (= c!1457474 ((_ is Leaf!30243) (ite c!1457422 (left!56882 (right!57212 t!4440)) (right!57212 lt!2694829))))))

(declare-fun c!1457473 () Bool)

(declare-fun d!2371751 () Bool)

(assert (=> d!2371751 (= c!1457473 ((_ is Empty!15908) (ite c!1457422 (left!56882 (right!57212 t!4440)) (right!57212 lt!2694829))))))

(assert (=> d!2371751 (= (list!19425 (ite c!1457422 (left!56882 (right!57212 t!4440)) (right!57212 lt!2694829))) e!4681508)))

(assert (= (and d!2371751 c!1457473) b!7933517))

(assert (= (and d!2371751 (not c!1457473)) b!7933518))

(assert (= (and b!7933518 c!1457474) b!7933519))

(assert (= (and b!7933518 (not c!1457474)) b!7933520))

(declare-fun m!8320360 () Bool)

(assert (=> b!7933519 m!8320360))

(declare-fun m!8320362 () Bool)

(assert (=> b!7933520 m!8320362))

(declare-fun m!8320364 () Bool)

(assert (=> b!7933520 m!8320364))

(assert (=> b!7933520 m!8320362))

(assert (=> b!7933520 m!8320364))

(declare-fun m!8320366 () Bool)

(assert (=> b!7933520 m!8320366))

(assert (=> bm!735543 d!2371751))

(declare-fun d!2371753 () Bool)

(declare-fun lt!2694880 () (_ BitVec 32))

(assert (=> d!2371753 (and (bvsle #b00000000000000000000000000000000 lt!2694880) (bvsle lt!2694880 #b01111111111111111111111111111111))))

(declare-fun e!4681512 () (_ BitVec 32))

(assert (=> d!2371753 (= lt!2694880 e!4681512)))

(declare-fun c!1457477 () Bool)

(assert (=> d!2371753 (= c!1457477 ((_ is Nil!74454) (list!19425 t!4440)))))

(assert (=> d!2371753 (= (isize!124 (list!19425 t!4440)) lt!2694880)))

(declare-fun b!7933525 () Bool)

(assert (=> b!7933525 (= e!4681512 #b00000000000000000000000000000000)))

(declare-fun b!7933526 () Bool)

(declare-fun lt!2694881 () (_ BitVec 32))

(assert (=> b!7933526 (= e!4681512 (ite (= lt!2694881 #b01111111111111111111111111111111) lt!2694881 (bvadd #b00000000000000000000000000000001 lt!2694881)))))

(assert (=> b!7933526 (= lt!2694881 (isize!124 (t!390235 (list!19425 t!4440))))))

(assert (= (and d!2371753 c!1457477) b!7933525))

(assert (= (and d!2371753 (not c!1457477)) b!7933526))

(assert (=> b!7933526 m!8320348))

(assert (=> bm!735511 d!2371753))

(declare-fun d!2371755 () Bool)

(assert (=> d!2371755 (= (inv!95752 (xs!19302 (left!56882 err!4705))) (<= (size!43264 (innerList!15996 (xs!19302 (left!56882 err!4705)))) 2147483647))))

(declare-fun bs!1969055 () Bool)

(assert (= bs!1969055 d!2371755))

(declare-fun m!8320368 () Bool)

(assert (=> bs!1969055 m!8320368))

(assert (=> b!7933300 d!2371755))

(declare-fun d!2371757 () Bool)

(declare-fun lt!2694882 () (_ BitVec 32))

(assert (=> d!2371757 (and (bvsle #b00000000000000000000000000000000 lt!2694882) (bvsle lt!2694882 #b01111111111111111111111111111111))))

(declare-fun e!4681513 () (_ BitVec 32))

(assert (=> d!2371757 (= lt!2694882 e!4681513)))

(declare-fun c!1457478 () Bool)

(assert (=> d!2371757 (= c!1457478 ((_ is Nil!74454) lt!2694747))))

(assert (=> d!2371757 (= (isize!124 lt!2694747) lt!2694882)))

(declare-fun b!7933527 () Bool)

(assert (=> b!7933527 (= e!4681513 #b00000000000000000000000000000000)))

(declare-fun b!7933528 () Bool)

(declare-fun lt!2694883 () (_ BitVec 32))

(assert (=> b!7933528 (= e!4681513 (ite (= lt!2694883 #b01111111111111111111111111111111) lt!2694883 (bvadd #b00000000000000000000000000000001 lt!2694883)))))

(assert (=> b!7933528 (= lt!2694883 (isize!124 (t!390235 lt!2694747)))))

(assert (= (and d!2371757 c!1457478) b!7933527))

(assert (= (and d!2371757 (not c!1457478)) b!7933528))

(declare-fun m!8320370 () Bool)

(assert (=> b!7933528 m!8320370))

(assert (=> bm!735510 d!2371757))

(declare-fun d!2371759 () Bool)

(assert (=> d!2371759 (= (height!2223 lt!2694833) (ite ((_ is Empty!15908) lt!2694833) 0 (ite ((_ is Leaf!30243) lt!2694833) 1 (cheight!16119 lt!2694833))))))

(assert (=> b!7933282 d!2371759))

(assert (=> b!7933282 d!2371727))

(declare-fun d!2371761 () Bool)

(assert (=> d!2371761 (= (inv!95752 (xs!19302 (right!57212 t!4440))) (<= (size!43264 (innerList!15996 (xs!19302 (right!57212 t!4440)))) 2147483647))))

(declare-fun bs!1969056 () Bool)

(assert (= bs!1969056 d!2371761))

(declare-fun m!8320372 () Bool)

(assert (=> bs!1969056 m!8320372))

(assert (=> b!7933309 d!2371761))

(declare-fun d!2371763 () Bool)

(declare-fun lt!2694884 () Int)

(assert (=> d!2371763 (>= lt!2694884 0)))

(declare-fun e!4681514 () Int)

(assert (=> d!2371763 (= lt!2694884 e!4681514)))

(declare-fun c!1457479 () Bool)

(assert (=> d!2371763 (= c!1457479 ((_ is Nil!74454) lt!2694747))))

(assert (=> d!2371763 (= (size!43264 lt!2694747) lt!2694884)))

(declare-fun b!7933529 () Bool)

(assert (=> b!7933529 (= e!4681514 0)))

(declare-fun b!7933530 () Bool)

(assert (=> b!7933530 (= e!4681514 (+ 1 (size!43264 (t!390235 lt!2694747))))))

(assert (= (and d!2371763 c!1457479) b!7933529))

(assert (= (and d!2371763 (not c!1457479)) b!7933530))

(declare-fun m!8320374 () Bool)

(assert (=> b!7933530 m!8320374))

(assert (=> b!7933209 d!2371763))

(declare-fun d!2371765 () Bool)

(declare-fun lt!2694885 () Int)

(assert (=> d!2371765 (>= lt!2694885 0)))

(declare-fun e!4681515 () Int)

(assert (=> d!2371765 (= lt!2694885 e!4681515)))

(declare-fun c!1457480 () Bool)

(assert (=> d!2371765 (= c!1457480 ((_ is Nil!74454) (list!19425 t!4440)))))

(assert (=> d!2371765 (= (size!43264 (list!19425 t!4440)) lt!2694885)))

(declare-fun b!7933531 () Bool)

(assert (=> b!7933531 (= e!4681515 0)))

(declare-fun b!7933532 () Bool)

(assert (=> b!7933532 (= e!4681515 (+ 1 (size!43264 (t!390235 (list!19425 t!4440)))))))

(assert (= (and d!2371765 c!1457480) b!7933531))

(assert (= (and d!2371765 (not c!1457480)) b!7933532))

(assert (=> b!7933532 m!8320346))

(assert (=> b!7933209 d!2371765))

(declare-fun d!2371767 () Bool)

(assert (=> d!2371767 (= (list!19426 (xs!19302 lt!2694743)) (innerList!15996 (xs!19302 lt!2694743)))))

(assert (=> b!7933182 d!2371767))

(declare-fun lt!2694886 () List!74578)

(declare-fun e!4681517 () Bool)

(declare-fun b!7933536 () Bool)

(assert (=> b!7933536 (= e!4681517 (or (not (= (ite c!1457422 lt!2694821 lt!2694827) Nil!74454)) (= lt!2694886 (ite c!1457422 lt!2694822 lt!2694828))))))

(declare-fun d!2371769 () Bool)

(assert (=> d!2371769 e!4681517))

(declare-fun res!3147595 () Bool)

(assert (=> d!2371769 (=> (not res!3147595) (not e!4681517))))

(assert (=> d!2371769 (= res!3147595 (= (content!15788 lt!2694886) ((_ map or) (content!15788 (ite c!1457422 lt!2694822 lt!2694828)) (content!15788 (ite c!1457422 lt!2694821 lt!2694827)))))))

(declare-fun e!4681516 () List!74578)

(assert (=> d!2371769 (= lt!2694886 e!4681516)))

(declare-fun c!1457481 () Bool)

(assert (=> d!2371769 (= c!1457481 ((_ is Nil!74454) (ite c!1457422 lt!2694822 lt!2694828)))))

(assert (=> d!2371769 (= (++!18264 (ite c!1457422 lt!2694822 lt!2694828) (ite c!1457422 lt!2694821 lt!2694827)) lt!2694886)))

(declare-fun b!7933534 () Bool)

(assert (=> b!7933534 (= e!4681516 (Cons!74454 (h!80902 (ite c!1457422 lt!2694822 lt!2694828)) (++!18264 (t!390235 (ite c!1457422 lt!2694822 lt!2694828)) (ite c!1457422 lt!2694821 lt!2694827))))))

(declare-fun b!7933535 () Bool)

(declare-fun res!3147596 () Bool)

(assert (=> b!7933535 (=> (not res!3147596) (not e!4681517))))

(assert (=> b!7933535 (= res!3147596 (= (size!43264 lt!2694886) (+ (size!43264 (ite c!1457422 lt!2694822 lt!2694828)) (size!43264 (ite c!1457422 lt!2694821 lt!2694827)))))))

(declare-fun b!7933533 () Bool)

(assert (=> b!7933533 (= e!4681516 (ite c!1457422 lt!2694821 lt!2694827))))

(assert (= (and d!2371769 c!1457481) b!7933533))

(assert (= (and d!2371769 (not c!1457481)) b!7933534))

(assert (= (and d!2371769 res!3147595) b!7933535))

(assert (= (and b!7933535 res!3147596) b!7933536))

(declare-fun m!8320376 () Bool)

(assert (=> d!2371769 m!8320376))

(declare-fun m!8320378 () Bool)

(assert (=> d!2371769 m!8320378))

(declare-fun m!8320380 () Bool)

(assert (=> d!2371769 m!8320380))

(declare-fun m!8320382 () Bool)

(assert (=> b!7933534 m!8320382))

(declare-fun m!8320384 () Bool)

(assert (=> b!7933535 m!8320384))

(declare-fun m!8320386 () Bool)

(assert (=> b!7933535 m!8320386))

(declare-fun m!8320388 () Bool)

(assert (=> b!7933535 m!8320388))

(assert (=> bm!735540 d!2371769))

(declare-fun b!7933537 () Bool)

(declare-fun res!3147602 () Bool)

(declare-fun e!4681518 () Bool)

(assert (=> b!7933537 (=> (not res!3147602) (not e!4681518))))

(assert (=> b!7933537 (= res!3147602 (<= (- (height!2223 (left!56882 (right!57212 t!4440))) (height!2223 (right!57212 (right!57212 t!4440)))) 1))))

(declare-fun d!2371771 () Bool)

(declare-fun res!3147598 () Bool)

(declare-fun e!4681519 () Bool)

(assert (=> d!2371771 (=> res!3147598 e!4681519)))

(assert (=> d!2371771 (= res!3147598 (not ((_ is Node!15908) (right!57212 t!4440))))))

(assert (=> d!2371771 (= (isBalanced!4534 (right!57212 t!4440)) e!4681519)))

(declare-fun b!7933538 () Bool)

(assert (=> b!7933538 (= e!4681518 (not (isEmpty!42787 (right!57212 (right!57212 t!4440)))))))

(declare-fun b!7933539 () Bool)

(declare-fun res!3147601 () Bool)

(assert (=> b!7933539 (=> (not res!3147601) (not e!4681518))))

(assert (=> b!7933539 (= res!3147601 (isBalanced!4534 (left!56882 (right!57212 t!4440))))))

(declare-fun b!7933540 () Bool)

(declare-fun res!3147599 () Bool)

(assert (=> b!7933540 (=> (not res!3147599) (not e!4681518))))

(assert (=> b!7933540 (= res!3147599 (not (isEmpty!42787 (left!56882 (right!57212 t!4440)))))))

(declare-fun b!7933541 () Bool)

(assert (=> b!7933541 (= e!4681519 e!4681518)))

(declare-fun res!3147600 () Bool)

(assert (=> b!7933541 (=> (not res!3147600) (not e!4681518))))

(assert (=> b!7933541 (= res!3147600 (<= (- 1) (- (height!2223 (left!56882 (right!57212 t!4440))) (height!2223 (right!57212 (right!57212 t!4440))))))))

(declare-fun b!7933542 () Bool)

(declare-fun res!3147597 () Bool)

(assert (=> b!7933542 (=> (not res!3147597) (not e!4681518))))

(assert (=> b!7933542 (= res!3147597 (isBalanced!4534 (right!57212 (right!57212 t!4440))))))

(assert (= (and d!2371771 (not res!3147598)) b!7933541))

(assert (= (and b!7933541 res!3147600) b!7933537))

(assert (= (and b!7933537 res!3147602) b!7933539))

(assert (= (and b!7933539 res!3147601) b!7933542))

(assert (= (and b!7933542 res!3147597) b!7933540))

(assert (= (and b!7933540 res!3147599) b!7933538))

(assert (=> b!7933537 m!8320002))

(declare-fun m!8320390 () Bool)

(assert (=> b!7933537 m!8320390))

(assert (=> b!7933541 m!8320002))

(assert (=> b!7933541 m!8320390))

(declare-fun m!8320392 () Bool)

(assert (=> b!7933540 m!8320392))

(declare-fun m!8320394 () Bool)

(assert (=> b!7933539 m!8320394))

(declare-fun m!8320396 () Bool)

(assert (=> b!7933538 m!8320396))

(declare-fun m!8320398 () Bool)

(assert (=> b!7933542 m!8320398))

(assert (=> b!7933226 d!2371771))

(declare-fun b!7933543 () Bool)

(declare-fun res!3147608 () Bool)

(declare-fun e!4681520 () Bool)

(assert (=> b!7933543 (=> (not res!3147608) (not e!4681520))))

(assert (=> b!7933543 (= res!3147608 (<= (- (height!2223 (left!56882 lt!2694833)) (height!2223 (right!57212 lt!2694833))) 1))))

(declare-fun d!2371773 () Bool)

(declare-fun res!3147604 () Bool)

(declare-fun e!4681521 () Bool)

(assert (=> d!2371773 (=> res!3147604 e!4681521)))

(assert (=> d!2371773 (= res!3147604 (not ((_ is Node!15908) lt!2694833)))))

(assert (=> d!2371773 (= (isBalanced!4534 lt!2694833) e!4681521)))

(declare-fun b!7933544 () Bool)

(assert (=> b!7933544 (= e!4681520 (not (isEmpty!42787 (right!57212 lt!2694833))))))

(declare-fun b!7933545 () Bool)

(declare-fun res!3147607 () Bool)

(assert (=> b!7933545 (=> (not res!3147607) (not e!4681520))))

(assert (=> b!7933545 (= res!3147607 (isBalanced!4534 (left!56882 lt!2694833)))))

(declare-fun b!7933546 () Bool)

(declare-fun res!3147605 () Bool)

(assert (=> b!7933546 (=> (not res!3147605) (not e!4681520))))

(assert (=> b!7933546 (= res!3147605 (not (isEmpty!42787 (left!56882 lt!2694833))))))

(declare-fun b!7933547 () Bool)

(assert (=> b!7933547 (= e!4681521 e!4681520)))

(declare-fun res!3147606 () Bool)

(assert (=> b!7933547 (=> (not res!3147606) (not e!4681520))))

(assert (=> b!7933547 (= res!3147606 (<= (- 1) (- (height!2223 (left!56882 lt!2694833)) (height!2223 (right!57212 lt!2694833)))))))

(declare-fun b!7933548 () Bool)

(declare-fun res!3147603 () Bool)

(assert (=> b!7933548 (=> (not res!3147603) (not e!4681520))))

(assert (=> b!7933548 (= res!3147603 (isBalanced!4534 (right!57212 lt!2694833)))))

(assert (= (and d!2371773 (not res!3147604)) b!7933547))

(assert (= (and b!7933547 res!3147606) b!7933543))

(assert (= (and b!7933543 res!3147608) b!7933545))

(assert (= (and b!7933545 res!3147607) b!7933548))

(assert (= (and b!7933548 res!3147603) b!7933546))

(assert (= (and b!7933546 res!3147605) b!7933544))

(declare-fun m!8320400 () Bool)

(assert (=> b!7933543 m!8320400))

(declare-fun m!8320402 () Bool)

(assert (=> b!7933543 m!8320402))

(assert (=> b!7933547 m!8320400))

(assert (=> b!7933547 m!8320402))

(declare-fun m!8320404 () Bool)

(assert (=> b!7933546 m!8320404))

(declare-fun m!8320406 () Bool)

(assert (=> b!7933545 m!8320406))

(declare-fun m!8320408 () Bool)

(assert (=> b!7933544 m!8320408))

(declare-fun m!8320410 () Bool)

(assert (=> b!7933548 m!8320410))

(assert (=> d!2371677 d!2371773))

(assert (=> d!2371677 d!2371771))

(declare-fun b!7933551 () Bool)

(declare-fun e!4681523 () List!74578)

(assert (=> b!7933551 (= e!4681523 (list!19426 (xs!19302 lt!2694833)))))

(declare-fun b!7933549 () Bool)

(declare-fun e!4681522 () List!74578)

(assert (=> b!7933549 (= e!4681522 Nil!74454)))

(declare-fun b!7933552 () Bool)

(assert (=> b!7933552 (= e!4681523 (++!18264 (list!19425 (left!56882 lt!2694833)) (list!19425 (right!57212 lt!2694833))))))

(declare-fun b!7933550 () Bool)

(assert (=> b!7933550 (= e!4681522 e!4681523)))

(declare-fun c!1457483 () Bool)

(assert (=> b!7933550 (= c!1457483 ((_ is Leaf!30243) lt!2694833))))

(declare-fun d!2371775 () Bool)

(declare-fun c!1457482 () Bool)

(assert (=> d!2371775 (= c!1457482 ((_ is Empty!15908) lt!2694833))))

(assert (=> d!2371775 (= (list!19425 lt!2694833) e!4681522)))

(assert (= (and d!2371775 c!1457482) b!7933549))

(assert (= (and d!2371775 (not c!1457482)) b!7933550))

(assert (= (and b!7933550 c!1457483) b!7933551))

(assert (= (and b!7933550 (not c!1457483)) b!7933552))

(declare-fun m!8320412 () Bool)

(assert (=> b!7933551 m!8320412))

(declare-fun m!8320414 () Bool)

(assert (=> b!7933552 m!8320414))

(declare-fun m!8320416 () Bool)

(assert (=> b!7933552 m!8320416))

(assert (=> b!7933552 m!8320414))

(assert (=> b!7933552 m!8320416))

(declare-fun m!8320418 () Bool)

(assert (=> b!7933552 m!8320418))

(assert (=> b!7933280 d!2371775))

(declare-fun b!7933553 () Bool)

(declare-fun res!3147611 () Bool)

(declare-fun e!4681524 () Bool)

(assert (=> b!7933553 (=> (not res!3147611) (not e!4681524))))

(declare-fun lt!2694887 () List!74578)

(assert (=> b!7933553 (= res!3147611 (= (size!43264 lt!2694887) (+ (size!43264 (list!19425 (right!57212 t!4440))) 1)))))

(declare-fun b!7933554 () Bool)

(assert (=> b!7933554 (= e!4681524 (= lt!2694887 (++!18264 (list!19425 (right!57212 t!4440)) (Cons!74454 v!5484 Nil!74454))))))

(declare-fun bm!735580 () Bool)

(declare-fun call!735585 () (_ BitVec 32))

(assert (=> bm!735580 (= call!735585 (isize!124 lt!2694887))))

(declare-fun b!7933555 () Bool)

(declare-fun res!3147610 () Bool)

(assert (=> b!7933555 (=> (not res!3147610) (not e!4681524))))

(declare-fun e!4681526 () Bool)

(assert (=> b!7933555 (= res!3147610 e!4681526)))

(declare-fun c!1457485 () Bool)

(assert (=> b!7933555 (= c!1457485 (bvslt (isize!124 (list!19425 (right!57212 t!4440))) #b01111111111111111111111111111111))))

(declare-fun bm!735581 () Bool)

(declare-fun call!735586 () (_ BitVec 32))

(assert (=> bm!735581 (= call!735586 (isize!124 (list!19425 (right!57212 t!4440))))))

(declare-fun b!7933556 () Bool)

(declare-fun e!4681525 () List!74578)

(assert (=> b!7933556 (= e!4681525 (Cons!74454 v!5484 (list!19425 (right!57212 t!4440))))))

(declare-fun d!2371777 () Bool)

(assert (=> d!2371777 e!4681524))

(declare-fun res!3147612 () Bool)

(assert (=> d!2371777 (=> (not res!3147612) (not e!4681524))))

(assert (=> d!2371777 (= res!3147612 ((_ is Cons!74454) lt!2694887))))

(assert (=> d!2371777 (= lt!2694887 e!4681525)))

(declare-fun c!1457484 () Bool)

(assert (=> d!2371777 (= c!1457484 ((_ is Nil!74454) (list!19425 (right!57212 t!4440))))))

(assert (=> d!2371777 (= ($colon+!321 (list!19425 (right!57212 t!4440)) v!5484) lt!2694887)))

(declare-fun b!7933557 () Bool)

(assert (=> b!7933557 (= e!4681525 (Cons!74454 (h!80902 (list!19425 (right!57212 t!4440))) ($colon+!321 (t!390235 (list!19425 (right!57212 t!4440))) v!5484)))))

(declare-fun b!7933558 () Bool)

(assert (=> b!7933558 (= e!4681526 (= call!735585 (bvadd call!735586 #b00000000000000000000000000000001)))))

(declare-fun b!7933559 () Bool)

(assert (=> b!7933559 (= e!4681526 (= call!735585 call!735586))))

(declare-fun b!7933560 () Bool)

(declare-fun res!3147609 () Bool)

(assert (=> b!7933560 (=> (not res!3147609) (not e!4681524))))

(assert (=> b!7933560 (= res!3147609 (= (content!15788 lt!2694887) ((_ map or) (content!15788 (list!19425 (right!57212 t!4440))) (store ((as const (Array T!145846 Bool)) false) v!5484 true))))))

(assert (= (and d!2371777 c!1457484) b!7933556))

(assert (= (and d!2371777 (not c!1457484)) b!7933557))

(assert (= (and d!2371777 res!3147612) b!7933553))

(assert (= (and b!7933553 res!3147611) b!7933555))

(assert (= (and b!7933555 c!1457485) b!7933558))

(assert (= (and b!7933555 (not c!1457485)) b!7933559))

(assert (= (or b!7933558 b!7933559) bm!735580))

(assert (= (or b!7933558 b!7933559) bm!735581))

(assert (= (and b!7933555 res!3147610) b!7933560))

(assert (= (and b!7933560 res!3147609) b!7933554))

(declare-fun m!8320420 () Bool)

(assert (=> b!7933553 m!8320420))

(assert (=> b!7933553 m!8319960))

(assert (=> b!7933553 m!8320230))

(assert (=> bm!735581 m!8319960))

(declare-fun m!8320422 () Bool)

(assert (=> bm!735581 m!8320422))

(declare-fun m!8320424 () Bool)

(assert (=> bm!735580 m!8320424))

(declare-fun m!8320426 () Bool)

(assert (=> b!7933560 m!8320426))

(assert (=> b!7933560 m!8319960))

(assert (=> b!7933560 m!8320222))

(assert (=> b!7933560 m!8319950))

(assert (=> b!7933555 m!8319960))

(assert (=> b!7933555 m!8320422))

(assert (=> b!7933554 m!8319960))

(declare-fun m!8320428 () Bool)

(assert (=> b!7933554 m!8320428))

(declare-fun m!8320430 () Bool)

(assert (=> b!7933557 m!8320430))

(assert (=> b!7933280 d!2371777))

(assert (=> b!7933280 d!2371717))

(assert (=> b!7933117 d!2371637))

(assert (=> b!7933117 d!2371641))

(declare-fun d!2371779 () Bool)

(declare-fun lt!2694888 () Bool)

(assert (=> d!2371779 (= lt!2694888 (isEmpty!42789 (list!19425 (left!56882 t!4440))))))

(assert (=> d!2371779 (= lt!2694888 (= (size!43266 (left!56882 t!4440)) 0))))

(assert (=> d!2371779 (= (isEmpty!42787 (left!56882 t!4440)) lt!2694888)))

(declare-fun bs!1969057 () Bool)

(assert (= bs!1969057 d!2371779))

(assert (=> bs!1969057 m!8319958))

(assert (=> bs!1969057 m!8319958))

(declare-fun m!8320432 () Bool)

(assert (=> bs!1969057 m!8320432))

(declare-fun m!8320434 () Bool)

(assert (=> bs!1969057 m!8320434))

(assert (=> b!7933224 d!2371779))

(declare-fun d!2371781 () Bool)

(assert (=> d!2371781 (= (height!2223 (left!56882 lt!2694743)) (ite ((_ is Empty!15908) (left!56882 lt!2694743)) 0 (ite ((_ is Leaf!30243) (left!56882 lt!2694743)) 1 (cheight!16119 (left!56882 lt!2694743)))))))

(assert (=> b!7933157 d!2371781))

(declare-fun d!2371783 () Bool)

(assert (=> d!2371783 (= (height!2223 (right!57212 lt!2694743)) (ite ((_ is Empty!15908) (right!57212 lt!2694743)) 0 (ite ((_ is Leaf!30243) (right!57212 lt!2694743)) 1 (cheight!16119 (right!57212 lt!2694743)))))))

(assert (=> b!7933157 d!2371783))

(declare-fun d!2371785 () Bool)

(declare-fun res!3147613 () Bool)

(declare-fun e!4681527 () Bool)

(assert (=> d!2371785 (=> (not res!3147613) (not e!4681527))))

(assert (=> d!2371785 (= res!3147613 (<= (size!43264 (list!19426 (xs!19302 t!4440))) 512))))

(assert (=> d!2371785 (= (inv!95755 t!4440) e!4681527)))

(declare-fun b!7933561 () Bool)

(declare-fun res!3147614 () Bool)

(assert (=> b!7933561 (=> (not res!3147614) (not e!4681527))))

(assert (=> b!7933561 (= res!3147614 (= (csize!32047 t!4440) (size!43264 (list!19426 (xs!19302 t!4440)))))))

(declare-fun b!7933562 () Bool)

(assert (=> b!7933562 (= e!4681527 (and (> (csize!32047 t!4440) 0) (<= (csize!32047 t!4440) 512)))))

(assert (= (and d!2371785 res!3147613) b!7933561))

(assert (= (and b!7933561 res!3147614) b!7933562))

(assert (=> d!2371785 m!8319956))

(assert (=> d!2371785 m!8319956))

(declare-fun m!8320436 () Bool)

(assert (=> d!2371785 m!8320436))

(assert (=> b!7933561 m!8319956))

(assert (=> b!7933561 m!8319956))

(assert (=> b!7933561 m!8320436))

(assert (=> b!7933229 d!2371785))

(declare-fun e!4681529 () Bool)

(declare-fun lt!2694889 () List!74578)

(declare-fun b!7933566 () Bool)

(assert (=> b!7933566 (= e!4681529 (or (not (= (ite c!1457422 call!735544 lt!2694819) Nil!74454)) (= lt!2694889 (ite c!1457422 lt!2694822 lt!2694827))))))

(declare-fun d!2371787 () Bool)

(assert (=> d!2371787 e!4681529))

(declare-fun res!3147615 () Bool)

(assert (=> d!2371787 (=> (not res!3147615) (not e!4681529))))

(assert (=> d!2371787 (= res!3147615 (= (content!15788 lt!2694889) ((_ map or) (content!15788 (ite c!1457422 lt!2694822 lt!2694827)) (content!15788 (ite c!1457422 call!735544 lt!2694819)))))))

(declare-fun e!4681528 () List!74578)

(assert (=> d!2371787 (= lt!2694889 e!4681528)))

(declare-fun c!1457486 () Bool)

(assert (=> d!2371787 (= c!1457486 ((_ is Nil!74454) (ite c!1457422 lt!2694822 lt!2694827)))))

(assert (=> d!2371787 (= (++!18264 (ite c!1457422 lt!2694822 lt!2694827) (ite c!1457422 call!735544 lt!2694819)) lt!2694889)))

(declare-fun b!7933564 () Bool)

(assert (=> b!7933564 (= e!4681528 (Cons!74454 (h!80902 (ite c!1457422 lt!2694822 lt!2694827)) (++!18264 (t!390235 (ite c!1457422 lt!2694822 lt!2694827)) (ite c!1457422 call!735544 lt!2694819))))))

(declare-fun b!7933565 () Bool)

(declare-fun res!3147616 () Bool)

(assert (=> b!7933565 (=> (not res!3147616) (not e!4681529))))

(assert (=> b!7933565 (= res!3147616 (= (size!43264 lt!2694889) (+ (size!43264 (ite c!1457422 lt!2694822 lt!2694827)) (size!43264 (ite c!1457422 call!735544 lt!2694819)))))))

(declare-fun b!7933563 () Bool)

(assert (=> b!7933563 (= e!4681528 (ite c!1457422 call!735544 lt!2694819))))

(assert (= (and d!2371787 c!1457486) b!7933563))

(assert (= (and d!2371787 (not c!1457486)) b!7933564))

(assert (= (and d!2371787 res!3147615) b!7933565))

(assert (= (and b!7933565 res!3147616) b!7933566))

(declare-fun m!8320438 () Bool)

(assert (=> d!2371787 m!8320438))

(declare-fun m!8320440 () Bool)

(assert (=> d!2371787 m!8320440))

(declare-fun m!8320442 () Bool)

(assert (=> d!2371787 m!8320442))

(declare-fun m!8320444 () Bool)

(assert (=> b!7933564 m!8320444))

(declare-fun m!8320446 () Bool)

(assert (=> b!7933565 m!8320446))

(declare-fun m!8320448 () Bool)

(assert (=> b!7933565 m!8320448))

(declare-fun m!8320450 () Bool)

(assert (=> b!7933565 m!8320450))

(assert (=> bm!735538 d!2371787))

(assert (=> b!7933119 d!2371667))

(assert (=> b!7933119 d!2371669))

(declare-fun d!2371789 () Bool)

(declare-fun c!1457487 () Bool)

(assert (=> d!2371789 (= c!1457487 ((_ is Node!15908) (left!56882 (right!57212 err!4705))))))

(declare-fun e!4681530 () Bool)

(assert (=> d!2371789 (= (inv!95753 (left!56882 (right!57212 err!4705))) e!4681530)))

(declare-fun b!7933567 () Bool)

(assert (=> b!7933567 (= e!4681530 (inv!95754 (left!56882 (right!57212 err!4705))))))

(declare-fun b!7933568 () Bool)

(declare-fun e!4681531 () Bool)

(assert (=> b!7933568 (= e!4681530 e!4681531)))

(declare-fun res!3147617 () Bool)

(assert (=> b!7933568 (= res!3147617 (not ((_ is Leaf!30243) (left!56882 (right!57212 err!4705)))))))

(assert (=> b!7933568 (=> res!3147617 e!4681531)))

(declare-fun b!7933569 () Bool)

(assert (=> b!7933569 (= e!4681531 (inv!95755 (left!56882 (right!57212 err!4705))))))

(assert (= (and d!2371789 c!1457487) b!7933567))

(assert (= (and d!2371789 (not c!1457487)) b!7933568))

(assert (= (and b!7933568 (not res!3147617)) b!7933569))

(declare-fun m!8320452 () Bool)

(assert (=> b!7933567 m!8320452))

(declare-fun m!8320454 () Bool)

(assert (=> b!7933569 m!8320454))

(assert (=> b!7933302 d!2371789))

(declare-fun d!2371791 () Bool)

(declare-fun c!1457488 () Bool)

(assert (=> d!2371791 (= c!1457488 ((_ is Node!15908) (right!57212 (right!57212 err!4705))))))

(declare-fun e!4681532 () Bool)

(assert (=> d!2371791 (= (inv!95753 (right!57212 (right!57212 err!4705))) e!4681532)))

(declare-fun b!7933570 () Bool)

(assert (=> b!7933570 (= e!4681532 (inv!95754 (right!57212 (right!57212 err!4705))))))

(declare-fun b!7933571 () Bool)

(declare-fun e!4681533 () Bool)

(assert (=> b!7933571 (= e!4681532 e!4681533)))

(declare-fun res!3147618 () Bool)

(assert (=> b!7933571 (= res!3147618 (not ((_ is Leaf!30243) (right!57212 (right!57212 err!4705)))))))

(assert (=> b!7933571 (=> res!3147618 e!4681533)))

(declare-fun b!7933572 () Bool)

(assert (=> b!7933572 (= e!4681533 (inv!95755 (right!57212 (right!57212 err!4705))))))

(assert (= (and d!2371791 c!1457488) b!7933570))

(assert (= (and d!2371791 (not c!1457488)) b!7933571))

(assert (= (and b!7933571 (not res!3147618)) b!7933572))

(declare-fun m!8320456 () Bool)

(assert (=> b!7933570 m!8320456))

(declare-fun m!8320458 () Bool)

(assert (=> b!7933572 m!8320458))

(assert (=> b!7933302 d!2371791))

(declare-fun d!2371793 () Bool)

(assert (=> d!2371793 (= (list!19426 (xs!19302 t!4440)) (innerList!15996 (xs!19302 t!4440)))))

(assert (=> b!7933219 d!2371793))

(declare-fun d!2371795 () Bool)

(declare-fun lt!2694890 () Bool)

(assert (=> d!2371795 (= lt!2694890 (isEmpty!42789 (list!19425 (right!57212 t!4440))))))

(assert (=> d!2371795 (= lt!2694890 (= (size!43266 (right!57212 t!4440)) 0))))

(assert (=> d!2371795 (= (isEmpty!42787 (right!57212 t!4440)) lt!2694890)))

(declare-fun bs!1969058 () Bool)

(assert (= bs!1969058 d!2371795))

(assert (=> bs!1969058 m!8319960))

(assert (=> bs!1969058 m!8319960))

(declare-fun m!8320460 () Bool)

(assert (=> bs!1969058 m!8320460))

(declare-fun m!8320462 () Bool)

(assert (=> bs!1969058 m!8320462))

(assert (=> b!7933222 d!2371795))

(declare-fun b!7933573 () Bool)

(declare-fun res!3147624 () Bool)

(declare-fun e!4681534 () Bool)

(assert (=> b!7933573 (=> (not res!3147624) (not e!4681534))))

(assert (=> b!7933573 (= res!3147624 (<= (- (height!2223 (left!56882 (left!56882 lt!2694743))) (height!2223 (right!57212 (left!56882 lt!2694743)))) 1))))

(declare-fun d!2371797 () Bool)

(declare-fun res!3147620 () Bool)

(declare-fun e!4681535 () Bool)

(assert (=> d!2371797 (=> res!3147620 e!4681535)))

(assert (=> d!2371797 (= res!3147620 (not ((_ is Node!15908) (left!56882 lt!2694743))))))

(assert (=> d!2371797 (= (isBalanced!4534 (left!56882 lt!2694743)) e!4681535)))

(declare-fun b!7933574 () Bool)

(assert (=> b!7933574 (= e!4681534 (not (isEmpty!42787 (right!57212 (left!56882 lt!2694743)))))))

(declare-fun b!7933575 () Bool)

(declare-fun res!3147623 () Bool)

(assert (=> b!7933575 (=> (not res!3147623) (not e!4681534))))

(assert (=> b!7933575 (= res!3147623 (isBalanced!4534 (left!56882 (left!56882 lt!2694743))))))

(declare-fun b!7933576 () Bool)

(declare-fun res!3147621 () Bool)

(assert (=> b!7933576 (=> (not res!3147621) (not e!4681534))))

(assert (=> b!7933576 (= res!3147621 (not (isEmpty!42787 (left!56882 (left!56882 lt!2694743)))))))

(declare-fun b!7933577 () Bool)

(assert (=> b!7933577 (= e!4681535 e!4681534)))

(declare-fun res!3147622 () Bool)

(assert (=> b!7933577 (=> (not res!3147622) (not e!4681534))))

(assert (=> b!7933577 (= res!3147622 (<= (- 1) (- (height!2223 (left!56882 (left!56882 lt!2694743))) (height!2223 (right!57212 (left!56882 lt!2694743))))))))

(declare-fun b!7933578 () Bool)

(declare-fun res!3147619 () Bool)

(assert (=> b!7933578 (=> (not res!3147619) (not e!4681534))))

(assert (=> b!7933578 (= res!3147619 (isBalanced!4534 (right!57212 (left!56882 lt!2694743))))))

(assert (= (and d!2371797 (not res!3147620)) b!7933577))

(assert (= (and b!7933577 res!3147622) b!7933573))

(assert (= (and b!7933573 res!3147624) b!7933575))

(assert (= (and b!7933575 res!3147623) b!7933578))

(assert (= (and b!7933578 res!3147619) b!7933576))

(assert (= (and b!7933576 res!3147621) b!7933574))

(declare-fun m!8320464 () Bool)

(assert (=> b!7933573 m!8320464))

(declare-fun m!8320466 () Bool)

(assert (=> b!7933573 m!8320466))

(assert (=> b!7933577 m!8320464))

(assert (=> b!7933577 m!8320466))

(declare-fun m!8320468 () Bool)

(assert (=> b!7933576 m!8320468))

(declare-fun m!8320470 () Bool)

(assert (=> b!7933575 m!8320470))

(declare-fun m!8320472 () Bool)

(assert (=> b!7933574 m!8320472))

(declare-fun m!8320474 () Bool)

(assert (=> b!7933578 m!8320474))

(assert (=> b!7933159 d!2371797))

(declare-fun d!2371799 () Bool)

(declare-fun res!3147625 () Bool)

(declare-fun e!4681536 () Bool)

(assert (=> d!2371799 (=> (not res!3147625) (not e!4681536))))

(assert (=> d!2371799 (= res!3147625 (= (csize!32046 t!4440) (+ (size!43266 (left!56882 t!4440)) (size!43266 (right!57212 t!4440)))))))

(assert (=> d!2371799 (= (inv!95754 t!4440) e!4681536)))

(declare-fun b!7933579 () Bool)

(declare-fun res!3147626 () Bool)

(assert (=> b!7933579 (=> (not res!3147626) (not e!4681536))))

(assert (=> b!7933579 (= res!3147626 (and (not (= (left!56882 t!4440) Empty!15908)) (not (= (right!57212 t!4440) Empty!15908))))))

(declare-fun b!7933580 () Bool)

(declare-fun res!3147627 () Bool)

(assert (=> b!7933580 (=> (not res!3147627) (not e!4681536))))

(assert (=> b!7933580 (= res!3147627 (= (cheight!16119 t!4440) (+ (max!0 (height!2223 (left!56882 t!4440)) (height!2223 (right!57212 t!4440))) 1)))))

(declare-fun b!7933581 () Bool)

(assert (=> b!7933581 (= e!4681536 (<= 0 (cheight!16119 t!4440)))))

(assert (= (and d!2371799 res!3147625) b!7933579))

(assert (= (and b!7933579 res!3147626) b!7933580))

(assert (= (and b!7933580 res!3147627) b!7933581))

(assert (=> d!2371799 m!8320434))

(assert (=> d!2371799 m!8320462))

(assert (=> b!7933580 m!8319870))

(assert (=> b!7933580 m!8319964))

(assert (=> b!7933580 m!8319870))

(assert (=> b!7933580 m!8319964))

(declare-fun m!8320476 () Bool)

(assert (=> b!7933580 m!8320476))

(assert (=> b!7933227 d!2371799))

(assert (=> b!7933161 d!2371781))

(assert (=> b!7933161 d!2371783))

(declare-fun d!2371801 () Bool)

(declare-fun lt!2694893 () IArray!31877)

(assert (=> d!2371801 (= lt!2694893 (IArray!31878 ($colon+!321 (list!19426 (xs!19302 (right!57212 t!4440))) v!5484)))))

(declare-fun choose!59848 (IArray!31877 T!145846) IArray!31877)

(assert (=> d!2371801 (= lt!2694893 (choose!59848 (xs!19302 (right!57212 t!4440)) v!5484))))

(declare-fun size!43267 (IArray!31877) Int)

(assert (=> d!2371801 (<= (+ (size!43267 (xs!19302 (right!57212 t!4440))) 1) 2147483647)))

(assert (=> d!2371801 (= (append!1157 (xs!19302 (right!57212 t!4440)) v!5484) lt!2694893)))

(declare-fun bs!1969059 () Bool)

(assert (= bs!1969059 d!2371801))

(assert (=> bs!1969059 m!8320014))

(assert (=> bs!1969059 m!8320014))

(assert (=> bs!1969059 m!8320016))

(declare-fun m!8320478 () Bool)

(assert (=> bs!1969059 m!8320478))

(declare-fun m!8320480 () Bool)

(assert (=> bs!1969059 m!8320480))

(assert (=> b!7933276 d!2371801))

(declare-fun b!7933582 () Bool)

(declare-fun res!3147630 () Bool)

(declare-fun e!4681537 () Bool)

(assert (=> b!7933582 (=> (not res!3147630) (not e!4681537))))

(declare-fun lt!2694894 () List!74578)

(assert (=> b!7933582 (= res!3147630 (= (size!43264 lt!2694894) (+ (size!43264 (list!19426 (xs!19302 (right!57212 t!4440)))) 1)))))

(declare-fun b!7933583 () Bool)

(assert (=> b!7933583 (= e!4681537 (= lt!2694894 (++!18264 (list!19426 (xs!19302 (right!57212 t!4440))) (Cons!74454 v!5484 Nil!74454))))))

(declare-fun bm!735582 () Bool)

(declare-fun call!735587 () (_ BitVec 32))

(assert (=> bm!735582 (= call!735587 (isize!124 lt!2694894))))

(declare-fun b!7933584 () Bool)

(declare-fun res!3147629 () Bool)

(assert (=> b!7933584 (=> (not res!3147629) (not e!4681537))))

(declare-fun e!4681539 () Bool)

(assert (=> b!7933584 (= res!3147629 e!4681539)))

(declare-fun c!1457490 () Bool)

(assert (=> b!7933584 (= c!1457490 (bvslt (isize!124 (list!19426 (xs!19302 (right!57212 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun bm!735583 () Bool)

(declare-fun call!735588 () (_ BitVec 32))

(assert (=> bm!735583 (= call!735588 (isize!124 (list!19426 (xs!19302 (right!57212 t!4440)))))))

(declare-fun b!7933585 () Bool)

(declare-fun e!4681538 () List!74578)

(assert (=> b!7933585 (= e!4681538 (Cons!74454 v!5484 (list!19426 (xs!19302 (right!57212 t!4440)))))))

(declare-fun d!2371803 () Bool)

(assert (=> d!2371803 e!4681537))

(declare-fun res!3147631 () Bool)

(assert (=> d!2371803 (=> (not res!3147631) (not e!4681537))))

(assert (=> d!2371803 (= res!3147631 ((_ is Cons!74454) lt!2694894))))

(assert (=> d!2371803 (= lt!2694894 e!4681538)))

(declare-fun c!1457489 () Bool)

(assert (=> d!2371803 (= c!1457489 ((_ is Nil!74454) (list!19426 (xs!19302 (right!57212 t!4440)))))))

(assert (=> d!2371803 (= ($colon+!321 (list!19426 (xs!19302 (right!57212 t!4440))) v!5484) lt!2694894)))

(declare-fun b!7933586 () Bool)

(assert (=> b!7933586 (= e!4681538 (Cons!74454 (h!80902 (list!19426 (xs!19302 (right!57212 t!4440)))) ($colon+!321 (t!390235 (list!19426 (xs!19302 (right!57212 t!4440)))) v!5484)))))

(declare-fun b!7933587 () Bool)

(assert (=> b!7933587 (= e!4681539 (= call!735587 (bvadd call!735588 #b00000000000000000000000000000001)))))

(declare-fun b!7933588 () Bool)

(assert (=> b!7933588 (= e!4681539 (= call!735587 call!735588))))

(declare-fun b!7933589 () Bool)

(declare-fun res!3147628 () Bool)

(assert (=> b!7933589 (=> (not res!3147628) (not e!4681537))))

(assert (=> b!7933589 (= res!3147628 (= (content!15788 lt!2694894) ((_ map or) (content!15788 (list!19426 (xs!19302 (right!57212 t!4440)))) (store ((as const (Array T!145846 Bool)) false) v!5484 true))))))

(assert (= (and d!2371803 c!1457489) b!7933585))

(assert (= (and d!2371803 (not c!1457489)) b!7933586))

(assert (= (and d!2371803 res!3147631) b!7933582))

(assert (= (and b!7933582 res!3147630) b!7933584))

(assert (= (and b!7933584 c!1457490) b!7933587))

(assert (= (and b!7933584 (not c!1457490)) b!7933588))

(assert (= (or b!7933587 b!7933588) bm!735582))

(assert (= (or b!7933587 b!7933588) bm!735583))

(assert (= (and b!7933584 res!3147629) b!7933589))

(assert (= (and b!7933589 res!3147628) b!7933583))

(declare-fun m!8320482 () Bool)

(assert (=> b!7933582 m!8320482))

(assert (=> b!7933582 m!8320014))

(declare-fun m!8320484 () Bool)

(assert (=> b!7933582 m!8320484))

(assert (=> bm!735583 m!8320014))

(declare-fun m!8320486 () Bool)

(assert (=> bm!735583 m!8320486))

(declare-fun m!8320488 () Bool)

(assert (=> bm!735582 m!8320488))

(declare-fun m!8320490 () Bool)

(assert (=> b!7933589 m!8320490))

(assert (=> b!7933589 m!8320014))

(declare-fun m!8320492 () Bool)

(assert (=> b!7933589 m!8320492))

(assert (=> b!7933589 m!8319950))

(assert (=> b!7933584 m!8320014))

(assert (=> b!7933584 m!8320486))

(assert (=> b!7933583 m!8320014))

(declare-fun m!8320494 () Bool)

(assert (=> b!7933583 m!8320494))

(declare-fun m!8320496 () Bool)

(assert (=> b!7933586 m!8320496))

(assert (=> b!7933276 d!2371803))

(declare-fun d!2371805 () Bool)

(assert (=> d!2371805 (= (list!19426 (xs!19302 (right!57212 t!4440))) (innerList!15996 (xs!19302 (right!57212 t!4440))))))

(assert (=> b!7933276 d!2371805))

(declare-fun d!2371807 () Bool)

(declare-fun c!1457493 () Bool)

(assert (=> d!2371807 (= c!1457493 ((_ is Nil!74454) lt!2694747))))

(declare-fun e!4681542 () (InoxSet T!145846))

(assert (=> d!2371807 (= (content!15788 lt!2694747) e!4681542)))

(declare-fun b!7933594 () Bool)

(assert (=> b!7933594 (= e!4681542 ((as const (Array T!145846 Bool)) false))))

(declare-fun b!7933595 () Bool)

(assert (=> b!7933595 (= e!4681542 ((_ map or) (store ((as const (Array T!145846 Bool)) false) (h!80902 lt!2694747) true) (content!15788 (t!390235 lt!2694747))))))

(assert (= (and d!2371807 c!1457493) b!7933594))

(assert (= (and d!2371807 (not c!1457493)) b!7933595))

(declare-fun m!8320498 () Bool)

(assert (=> b!7933595 m!8320498))

(declare-fun m!8320500 () Bool)

(assert (=> b!7933595 m!8320500))

(assert (=> b!7933216 d!2371807))

(declare-fun d!2371809 () Bool)

(declare-fun c!1457494 () Bool)

(assert (=> d!2371809 (= c!1457494 ((_ is Nil!74454) (list!19425 t!4440)))))

(declare-fun e!4681543 () (InoxSet T!145846))

(assert (=> d!2371809 (= (content!15788 (list!19425 t!4440)) e!4681543)))

(declare-fun b!7933596 () Bool)

(assert (=> b!7933596 (= e!4681543 ((as const (Array T!145846 Bool)) false))))

(declare-fun b!7933597 () Bool)

(assert (=> b!7933597 (= e!4681543 ((_ map or) (store ((as const (Array T!145846 Bool)) false) (h!80902 (list!19425 t!4440)) true) (content!15788 (t!390235 (list!19425 t!4440)))))))

(assert (= (and d!2371809 c!1457494) b!7933596))

(assert (= (and d!2371809 (not c!1457494)) b!7933597))

(declare-fun m!8320502 () Bool)

(assert (=> b!7933597 m!8320502))

(assert (=> b!7933597 m!8320354))

(assert (=> b!7933216 d!2371809))

(declare-fun d!2371811 () Bool)

(assert (=> d!2371811 (= (inv!95752 (xs!19302 (left!56882 t!4440))) (<= (size!43264 (innerList!15996 (xs!19302 (left!56882 t!4440)))) 2147483647))))

(declare-fun bs!1969060 () Bool)

(assert (= bs!1969060 d!2371811))

(declare-fun m!8320504 () Bool)

(assert (=> bs!1969060 m!8320504))

(assert (=> b!7933306 d!2371811))

(declare-fun d!2371813 () Bool)

(declare-fun res!3147632 () Bool)

(declare-fun e!4681544 () Bool)

(assert (=> d!2371813 (=> (not res!3147632) (not e!4681544))))

(assert (=> d!2371813 (= res!3147632 (<= (size!43264 (list!19426 (xs!19302 (left!56882 t!4440)))) 512))))

(assert (=> d!2371813 (= (inv!95755 (left!56882 t!4440)) e!4681544)))

(declare-fun b!7933598 () Bool)

(declare-fun res!3147633 () Bool)

(assert (=> b!7933598 (=> (not res!3147633) (not e!4681544))))

(assert (=> b!7933598 (= res!3147633 (= (csize!32047 (left!56882 t!4440)) (size!43264 (list!19426 (xs!19302 (left!56882 t!4440))))))))

(declare-fun b!7933599 () Bool)

(assert (=> b!7933599 (= e!4681544 (and (> (csize!32047 (left!56882 t!4440)) 0) (<= (csize!32047 (left!56882 t!4440)) 512)))))

(assert (= (and d!2371813 res!3147632) b!7933598))

(assert (= (and b!7933598 res!3147633) b!7933599))

(assert (=> d!2371813 m!8320232))

(assert (=> d!2371813 m!8320232))

(declare-fun m!8320506 () Bool)

(assert (=> d!2371813 m!8320506))

(assert (=> b!7933598 m!8320232))

(assert (=> b!7933598 m!8320232))

(assert (=> b!7933598 m!8320506))

(assert (=> b!7933232 d!2371813))

(declare-fun d!2371815 () Bool)

(assert (=> d!2371815 (= (height!2223 lt!2694829) (ite ((_ is Empty!15908) lt!2694829) 0 (ite ((_ is Leaf!30243) lt!2694829) 1 (cheight!16119 lt!2694829))))))

(assert (=> b!7933286 d!2371815))

(declare-fun d!2371817 () Bool)

(assert (=> d!2371817 (= (height!2223 (left!56882 (right!57212 t!4440))) (ite ((_ is Empty!15908) (left!56882 (right!57212 t!4440))) 0 (ite ((_ is Leaf!30243) (left!56882 (right!57212 t!4440))) 1 (cheight!16119 (left!56882 (right!57212 t!4440))))))))

(assert (=> b!7933286 d!2371817))

(declare-fun bm!735584 () Bool)

(declare-fun call!735589 () IArray!31877)

(assert (=> bm!735584 (= call!735589 (fill!290 1 v!5484))))

(declare-fun b!7933600 () Bool)

(declare-fun e!4681550 () Conc!15908)

(declare-fun call!735595 () Conc!15908)

(assert (=> b!7933600 (= e!4681550 call!735595)))

(declare-fun b!7933601 () Bool)

(declare-fun e!4681549 () Conc!15908)

(declare-fun c!1457499 () Bool)

(declare-fun lt!2694906 () Conc!15908)

(assert (=> b!7933601 (= e!4681549 (ite c!1457499 lt!2694906 (left!56882 lt!2694906)))))

(declare-fun bm!735585 () Bool)

(declare-fun call!735590 () Conc!15908)

(assert (=> bm!735585 (= call!735590 call!735595)))

(declare-fun bm!735586 () Bool)

(declare-fun call!735593 () List!74578)

(assert (=> bm!735586 (= call!735593 (list!19425 (ite c!1457499 (right!57212 (right!57212 (right!57212 t!4440))) (left!56882 (right!57212 (right!57212 t!4440))))))))

(declare-fun b!7933602 () Bool)

(assert (=> b!7933602 (= e!4681550 (Leaf!30243 (append!1157 (xs!19302 (right!57212 (right!57212 t!4440))) v!5484) (+ (csize!32047 (right!57212 (right!57212 t!4440))) 1)))))

(declare-fun lt!2694912 () List!74578)

(assert (=> b!7933602 (= lt!2694912 ($colon+!321 (list!19426 (xs!19302 (right!57212 (right!57212 t!4440)))) v!5484))))

(declare-fun b!7933603 () Bool)

(declare-fun c!1457498 () Bool)

(assert (=> b!7933603 (= c!1457498 (< (csize!32047 (right!57212 (right!57212 t!4440))) 512))))

(declare-fun e!4681548 () Conc!15908)

(assert (=> b!7933603 (= e!4681548 e!4681550)))

(declare-fun b!7933604 () Bool)

(declare-fun e!4681545 () Conc!15908)

(assert (=> b!7933604 (= e!4681545 call!735590)))

(declare-fun lt!2694899 () List!74578)

(declare-fun call!735596 () List!74578)

(assert (=> b!7933604 (= lt!2694899 call!735596)))

(declare-fun lt!2694898 () List!74578)

(assert (=> b!7933604 (= lt!2694898 call!735593)))

(declare-fun lt!2694895 () List!74578)

(assert (=> b!7933604 (= lt!2694895 (Cons!74454 v!5484 Nil!74454))))

(declare-fun lt!2694909 () Unit!169575)

(declare-fun call!735597 () Unit!169575)

(assert (=> b!7933604 (= lt!2694909 call!735597)))

(declare-fun call!735591 () List!74578)

(declare-fun call!735598 () List!74578)

(assert (=> b!7933604 (= call!735591 call!735598)))

(declare-fun lt!2694902 () Unit!169575)

(assert (=> b!7933604 (= lt!2694902 lt!2694909)))

(declare-fun d!2371819 () Bool)

(declare-fun e!4681546 () Bool)

(assert (=> d!2371819 e!4681546))

(declare-fun res!3147635 () Bool)

(assert (=> d!2371819 (=> (not res!3147635) (not e!4681546))))

(declare-fun lt!2694910 () Conc!15908)

(assert (=> d!2371819 (= res!3147635 (isBalanced!4534 lt!2694910))))

(declare-fun e!4681547 () Conc!15908)

(assert (=> d!2371819 (= lt!2694910 e!4681547)))

(declare-fun c!1457496 () Bool)

(assert (=> d!2371819 (= c!1457496 ((_ is Empty!15908) (right!57212 (right!57212 t!4440))))))

(assert (=> d!2371819 (isBalanced!4534 (right!57212 (right!57212 t!4440)))))

(assert (=> d!2371819 (= (append!1156 (right!57212 (right!57212 t!4440)) v!5484) lt!2694910)))

(declare-fun bm!735587 () Bool)

(declare-fun c!1457495 () Bool)

(declare-fun c!1457497 () Bool)

(assert (=> bm!735587 (= c!1457495 c!1457497)))

(assert (=> bm!735587 (= call!735595 (<>!429 (ite c!1457497 (left!56882 (right!57212 (right!57212 t!4440))) (right!57212 (right!57212 t!4440))) e!4681549))))

(declare-fun call!735592 () List!74578)

(declare-fun lt!2694904 () List!74578)

(declare-fun bm!735588 () Bool)

(declare-fun lt!2694896 () List!74578)

(assert (=> bm!735588 (= call!735598 (++!18264 (ite c!1457499 lt!2694899 lt!2694904) (ite c!1457499 call!735592 lt!2694896)))))

(declare-fun b!7933605 () Bool)

(assert (=> b!7933605 (= e!4681547 (Leaf!30243 call!735589 1))))

(declare-fun b!7933606 () Bool)

(assert (=> b!7933606 (= e!4681546 (= (list!19425 lt!2694910) ($colon+!321 (list!19425 (right!57212 (right!57212 t!4440))) v!5484)))))

(declare-fun bm!735589 () Bool)

(declare-fun lt!2694907 () List!74578)

(declare-fun call!735594 () List!74578)

(declare-fun lt!2694900 () List!74578)

(assert (=> bm!735589 (= call!735591 (++!18264 (ite c!1457499 call!735594 lt!2694900) (ite c!1457499 lt!2694895 lt!2694907)))))

(declare-fun lt!2694905 () List!74578)

(declare-fun bm!735590 () Bool)

(assert (=> bm!735590 (= call!735594 (++!18264 (ite c!1457499 lt!2694899 lt!2694905) (ite c!1457499 lt!2694898 lt!2694904)))))

(declare-fun lt!2694897 () List!74578)

(declare-fun bm!735591 () Bool)

(assert (=> bm!735591 (= call!735597 (lemmaConcatAssociativity!3168 (ite c!1457499 lt!2694899 lt!2694897) (ite c!1457499 lt!2694898 lt!2694900) (ite c!1457499 lt!2694895 lt!2694907)))))

(declare-fun b!7933607 () Bool)

(assert (=> b!7933607 (= e!4681549 (Leaf!30243 call!735589 1))))

(declare-fun bm!735592 () Bool)

(assert (=> bm!735592 (= call!735592 (++!18264 (ite c!1457499 lt!2694898 lt!2694897) (ite c!1457499 lt!2694895 lt!2694900)))))

(declare-fun b!7933608 () Bool)

(declare-fun res!3147634 () Bool)

(assert (=> b!7933608 (=> (not res!3147634) (not e!4681546))))

(assert (=> b!7933608 (= res!3147634 (<= (height!2223 lt!2694910) (+ (height!2223 (right!57212 (right!57212 t!4440))) 1)))))

(declare-fun b!7933609 () Bool)

(assert (=> b!7933609 (= e!4681545 (<>!429 call!735590 (right!57212 lt!2694906)))))

(assert (=> b!7933609 (= lt!2694897 call!735593)))

(assert (=> b!7933609 (= lt!2694900 (list!19425 (left!56882 lt!2694906)))))

(assert (=> b!7933609 (= lt!2694907 call!735596)))

(declare-fun lt!2694901 () Unit!169575)

(assert (=> b!7933609 (= lt!2694901 call!735597)))

(assert (=> b!7933609 (= (++!18264 call!735592 lt!2694907) (++!18264 lt!2694897 call!735591))))

(declare-fun lt!2694911 () Unit!169575)

(assert (=> b!7933609 (= lt!2694911 lt!2694901)))

(assert (=> b!7933609 (= lt!2694905 call!735593)))

(assert (=> b!7933609 (= lt!2694904 (list!19425 (right!57212 (right!57212 (right!57212 t!4440)))))))

(assert (=> b!7933609 (= lt!2694896 (Cons!74454 v!5484 Nil!74454))))

(declare-fun lt!2694903 () Unit!169575)

(assert (=> b!7933609 (= lt!2694903 (lemmaConcatAssociativity!3168 lt!2694905 lt!2694904 lt!2694896))))

(assert (=> b!7933609 (= (++!18264 call!735594 lt!2694896) (++!18264 lt!2694905 call!735598))))

(declare-fun lt!2694908 () Unit!169575)

(assert (=> b!7933609 (= lt!2694908 lt!2694903)))

(declare-fun b!7933610 () Bool)

(assert (=> b!7933610 (= e!4681547 e!4681548)))

(assert (=> b!7933610 (= c!1457497 ((_ is Node!15908) (right!57212 (right!57212 t!4440))))))

(declare-fun b!7933611 () Bool)

(declare-fun res!3147636 () Bool)

(assert (=> b!7933611 (=> (not res!3147636) (not e!4681546))))

(assert (=> b!7933611 (= res!3147636 (<= (height!2223 (right!57212 (right!57212 t!4440))) (height!2223 lt!2694910)))))

(declare-fun bm!735593 () Bool)

(assert (=> bm!735593 (= call!735596 (list!19425 (ite c!1457499 (left!56882 (right!57212 (right!57212 t!4440))) (right!57212 lt!2694906))))))

(declare-fun b!7933612 () Bool)

(assert (=> b!7933612 (= c!1457499 (<= (height!2223 lt!2694906) (+ (height!2223 (left!56882 (right!57212 (right!57212 t!4440)))) 1)))))

(assert (=> b!7933612 (= lt!2694906 (append!1156 (right!57212 (right!57212 (right!57212 t!4440))) v!5484))))

(assert (=> b!7933612 (= e!4681548 e!4681545)))

(assert (= (and d!2371819 c!1457496) b!7933605))

(assert (= (and d!2371819 (not c!1457496)) b!7933610))

(assert (= (and b!7933610 c!1457497) b!7933612))

(assert (= (and b!7933610 (not c!1457497)) b!7933603))

(assert (= (and b!7933612 c!1457499) b!7933604))

(assert (= (and b!7933612 (not c!1457499)) b!7933609))

(assert (= (or b!7933604 b!7933609) bm!735586))

(assert (= (or b!7933604 b!7933609) bm!735593))

(assert (= (or b!7933604 b!7933609) bm!735590))

(assert (= (or b!7933604 b!7933609) bm!735585))

(assert (= (or b!7933604 b!7933609) bm!735591))

(assert (= (or b!7933604 b!7933609) bm!735592))

(assert (= (or b!7933604 b!7933609) bm!735588))

(assert (= (or b!7933604 b!7933609) bm!735589))

(assert (= (and b!7933603 c!1457498) b!7933602))

(assert (= (and b!7933603 (not c!1457498)) b!7933600))

(assert (= (or bm!735585 b!7933600) bm!735587))

(assert (= (and bm!735587 c!1457495) b!7933601))

(assert (= (and bm!735587 (not c!1457495)) b!7933607))

(assert (= (or b!7933605 b!7933607) bm!735584))

(assert (= (and d!2371819 res!3147635) b!7933611))

(assert (= (and b!7933611 res!3147636) b!7933608))

(assert (= (and b!7933608 res!3147634) b!7933606))

(declare-fun m!8320508 () Bool)

(assert (=> bm!735591 m!8320508))

(declare-fun m!8320510 () Bool)

(assert (=> bm!735587 m!8320510))

(declare-fun m!8320512 () Bool)

(assert (=> bm!735586 m!8320512))

(declare-fun m!8320514 () Bool)

(assert (=> bm!735589 m!8320514))

(declare-fun m!8320516 () Bool)

(assert (=> bm!735593 m!8320516))

(assert (=> b!7933611 m!8320390))

(declare-fun m!8320518 () Bool)

(assert (=> b!7933611 m!8320518))

(declare-fun m!8320520 () Bool)

(assert (=> b!7933612 m!8320520))

(declare-fun m!8320522 () Bool)

(assert (=> b!7933612 m!8320522))

(declare-fun m!8320524 () Bool)

(assert (=> b!7933612 m!8320524))

(declare-fun m!8320526 () Bool)

(assert (=> bm!735588 m!8320526))

(assert (=> bm!735584 m!8320008))

(declare-fun m!8320528 () Bool)

(assert (=> d!2371819 m!8320528))

(assert (=> d!2371819 m!8320398))

(declare-fun m!8320530 () Bool)

(assert (=> b!7933602 m!8320530))

(declare-fun m!8320532 () Bool)

(assert (=> b!7933602 m!8320532))

(assert (=> b!7933602 m!8320532))

(declare-fun m!8320534 () Bool)

(assert (=> b!7933602 m!8320534))

(declare-fun m!8320536 () Bool)

(assert (=> bm!735590 m!8320536))

(declare-fun m!8320538 () Bool)

(assert (=> b!7933609 m!8320538))

(declare-fun m!8320540 () Bool)

(assert (=> b!7933609 m!8320540))

(declare-fun m!8320542 () Bool)

(assert (=> b!7933609 m!8320542))

(declare-fun m!8320544 () Bool)

(assert (=> b!7933609 m!8320544))

(declare-fun m!8320546 () Bool)

(assert (=> b!7933609 m!8320546))

(declare-fun m!8320548 () Bool)

(assert (=> b!7933609 m!8320548))

(declare-fun m!8320550 () Bool)

(assert (=> b!7933609 m!8320550))

(declare-fun m!8320552 () Bool)

(assert (=> b!7933609 m!8320552))

(declare-fun m!8320554 () Bool)

(assert (=> b!7933606 m!8320554))

(assert (=> b!7933606 m!8320026))

(assert (=> b!7933606 m!8320026))

(declare-fun m!8320556 () Bool)

(assert (=> b!7933606 m!8320556))

(assert (=> b!7933608 m!8320518))

(assert (=> b!7933608 m!8320390))

(declare-fun m!8320558 () Bool)

(assert (=> bm!735592 m!8320558))

(assert (=> b!7933286 d!2371819))

(declare-fun d!2371821 () Bool)

(declare-fun res!3147637 () Bool)

(declare-fun e!4681551 () Bool)

(assert (=> d!2371821 (=> (not res!3147637) (not e!4681551))))

(assert (=> d!2371821 (= res!3147637 (= (csize!32046 (left!56882 t!4440)) (+ (size!43266 (left!56882 (left!56882 t!4440))) (size!43266 (right!57212 (left!56882 t!4440))))))))

(assert (=> d!2371821 (= (inv!95754 (left!56882 t!4440)) e!4681551)))

(declare-fun b!7933613 () Bool)

(declare-fun res!3147638 () Bool)

(assert (=> b!7933613 (=> (not res!3147638) (not e!4681551))))

(assert (=> b!7933613 (= res!3147638 (and (not (= (left!56882 (left!56882 t!4440)) Empty!15908)) (not (= (right!57212 (left!56882 t!4440)) Empty!15908))))))

(declare-fun b!7933614 () Bool)

(declare-fun res!3147639 () Bool)

(assert (=> b!7933614 (=> (not res!3147639) (not e!4681551))))

(assert (=> b!7933614 (= res!3147639 (= (cheight!16119 (left!56882 t!4440)) (+ (max!0 (height!2223 (left!56882 (left!56882 t!4440))) (height!2223 (right!57212 (left!56882 t!4440)))) 1)))))

(declare-fun b!7933615 () Bool)

(assert (=> b!7933615 (= e!4681551 (<= 0 (cheight!16119 (left!56882 t!4440))))))

(assert (= (and d!2371821 res!3147637) b!7933613))

(assert (= (and b!7933613 res!3147638) b!7933614))

(assert (= (and b!7933614 res!3147639) b!7933615))

(declare-fun m!8320560 () Bool)

(assert (=> d!2371821 m!8320560))

(declare-fun m!8320562 () Bool)

(assert (=> d!2371821 m!8320562))

(assert (=> b!7933614 m!8320244))

(assert (=> b!7933614 m!8320246))

(assert (=> b!7933614 m!8320244))

(assert (=> b!7933614 m!8320246))

(declare-fun m!8320564 () Bool)

(assert (=> b!7933614 m!8320564))

(assert (=> b!7933230 d!2371821))

(declare-fun d!2371823 () Bool)

(declare-fun lt!2694913 () Int)

(assert (=> d!2371823 (>= lt!2694913 0)))

(declare-fun e!4681552 () Int)

(assert (=> d!2371823 (= lt!2694913 e!4681552)))

(declare-fun c!1457500 () Bool)

(assert (=> d!2371823 (= c!1457500 ((_ is Nil!74454) (innerList!15996 (xs!19302 err!4705))))))

(assert (=> d!2371823 (= (size!43264 (innerList!15996 (xs!19302 err!4705))) lt!2694913)))

(declare-fun b!7933616 () Bool)

(assert (=> b!7933616 (= e!4681552 0)))

(declare-fun b!7933617 () Bool)

(assert (=> b!7933617 (= e!4681552 (+ 1 (size!43264 (t!390235 (innerList!15996 (xs!19302 err!4705))))))))

(assert (= (and d!2371823 c!1457500) b!7933616))

(assert (= (and d!2371823 (not c!1457500)) b!7933617))

(declare-fun m!8320566 () Bool)

(assert (=> b!7933617 m!8320566))

(assert (=> d!2371671 d!2371823))

(assert (=> b!7933285 d!2371727))

(assert (=> b!7933285 d!2371759))

(assert (=> b!7933211 d!2371753))

(declare-fun b!7933619 () Bool)

(declare-fun e!4681554 () Conc!15908)

(declare-fun e!4681553 () Conc!15908)

(assert (=> b!7933619 (= e!4681554 e!4681553)))

(declare-fun c!1457501 () Bool)

(assert (=> b!7933619 (= c!1457501 (= (right!57212 lt!2694829) Empty!15908))))

(declare-fun b!7933621 () Bool)

(assert (=> b!7933621 (= e!4681553 (Node!15908 call!735542 (right!57212 lt!2694829) (+ (size!43266 call!735542) (size!43266 (right!57212 lt!2694829))) (+ (max!0 (height!2223 call!735542) (height!2223 (right!57212 lt!2694829))) 1)))))

(declare-fun b!7933620 () Bool)

(assert (=> b!7933620 (= e!4681553 call!735542)))

(declare-fun b!7933618 () Bool)

(assert (=> b!7933618 (= e!4681554 (right!57212 lt!2694829))))

(declare-fun d!2371825 () Bool)

(declare-fun lt!2694914 () Conc!15908)

(assert (=> d!2371825 (= (list!19425 lt!2694914) (++!18264 (list!19425 call!735542) (list!19425 (right!57212 lt!2694829))))))

(assert (=> d!2371825 (= lt!2694914 e!4681554)))

(declare-fun c!1457502 () Bool)

(assert (=> d!2371825 (= c!1457502 (= call!735542 Empty!15908))))

(assert (=> d!2371825 (= (<>!429 call!735542 (right!57212 lt!2694829)) lt!2694914)))

(assert (= (and d!2371825 c!1457502) b!7933618))

(assert (= (and d!2371825 (not c!1457502)) b!7933619))

(assert (= (and b!7933619 c!1457501) b!7933620))

(assert (= (and b!7933619 (not c!1457501)) b!7933621))

(declare-fun m!8320568 () Bool)

(assert (=> b!7933621 m!8320568))

(declare-fun m!8320570 () Bool)

(assert (=> b!7933621 m!8320570))

(declare-fun m!8320572 () Bool)

(assert (=> b!7933621 m!8320572))

(declare-fun m!8320574 () Bool)

(assert (=> b!7933621 m!8320574))

(declare-fun m!8320576 () Bool)

(assert (=> b!7933621 m!8320576))

(assert (=> b!7933621 m!8320572))

(assert (=> b!7933621 m!8320570))

(declare-fun m!8320578 () Bool)

(assert (=> d!2371825 m!8320578))

(declare-fun m!8320580 () Bool)

(assert (=> d!2371825 m!8320580))

(declare-fun m!8320582 () Bool)

(assert (=> d!2371825 m!8320582))

(assert (=> d!2371825 m!8320580))

(assert (=> d!2371825 m!8320582))

(declare-fun m!8320584 () Bool)

(assert (=> d!2371825 m!8320584))

(assert (=> b!7933283 d!2371825))

(declare-fun b!7933624 () Bool)

(declare-fun e!4681556 () List!74578)

(assert (=> b!7933624 (= e!4681556 (list!19426 (xs!19302 (left!56882 lt!2694829))))))

(declare-fun b!7933622 () Bool)

(declare-fun e!4681555 () List!74578)

(assert (=> b!7933622 (= e!4681555 Nil!74454)))

(declare-fun b!7933625 () Bool)

(assert (=> b!7933625 (= e!4681556 (++!18264 (list!19425 (left!56882 (left!56882 lt!2694829))) (list!19425 (right!57212 (left!56882 lt!2694829)))))))

(declare-fun b!7933623 () Bool)

(assert (=> b!7933623 (= e!4681555 e!4681556)))

(declare-fun c!1457504 () Bool)

(assert (=> b!7933623 (= c!1457504 ((_ is Leaf!30243) (left!56882 lt!2694829)))))

(declare-fun d!2371827 () Bool)

(declare-fun c!1457503 () Bool)

(assert (=> d!2371827 (= c!1457503 ((_ is Empty!15908) (left!56882 lt!2694829)))))

(assert (=> d!2371827 (= (list!19425 (left!56882 lt!2694829)) e!4681555)))

(assert (= (and d!2371827 c!1457503) b!7933622))

(assert (= (and d!2371827 (not c!1457503)) b!7933623))

(assert (= (and b!7933623 c!1457504) b!7933624))

(assert (= (and b!7933623 (not c!1457504)) b!7933625))

(declare-fun m!8320586 () Bool)

(assert (=> b!7933624 m!8320586))

(declare-fun m!8320588 () Bool)

(assert (=> b!7933625 m!8320588))

(declare-fun m!8320590 () Bool)

(assert (=> b!7933625 m!8320590))

(assert (=> b!7933625 m!8320588))

(assert (=> b!7933625 m!8320590))

(declare-fun m!8320592 () Bool)

(assert (=> b!7933625 m!8320592))

(assert (=> b!7933283 d!2371827))

(declare-fun b!7933628 () Bool)

(declare-fun e!4681558 () List!74578)

(assert (=> b!7933628 (= e!4681558 (list!19426 (xs!19302 (right!57212 (right!57212 t!4440)))))))

(declare-fun b!7933626 () Bool)

(declare-fun e!4681557 () List!74578)

(assert (=> b!7933626 (= e!4681557 Nil!74454)))

(declare-fun b!7933629 () Bool)

(assert (=> b!7933629 (= e!4681558 (++!18264 (list!19425 (left!56882 (right!57212 (right!57212 t!4440)))) (list!19425 (right!57212 (right!57212 (right!57212 t!4440))))))))

(declare-fun b!7933627 () Bool)

(assert (=> b!7933627 (= e!4681557 e!4681558)))

(declare-fun c!1457506 () Bool)

(assert (=> b!7933627 (= c!1457506 ((_ is Leaf!30243) (right!57212 (right!57212 t!4440))))))

(declare-fun d!2371829 () Bool)

(declare-fun c!1457505 () Bool)

(assert (=> d!2371829 (= c!1457505 ((_ is Empty!15908) (right!57212 (right!57212 t!4440))))))

(assert (=> d!2371829 (= (list!19425 (right!57212 (right!57212 t!4440))) e!4681557)))

(assert (= (and d!2371829 c!1457505) b!7933626))

(assert (= (and d!2371829 (not c!1457505)) b!7933627))

(assert (= (and b!7933627 c!1457506) b!7933628))

(assert (= (and b!7933627 (not c!1457506)) b!7933629))

(assert (=> b!7933628 m!8320532))

(declare-fun m!8320594 () Bool)

(assert (=> b!7933629 m!8320594))

(assert (=> b!7933629 m!8320544))

(assert (=> b!7933629 m!8320594))

(assert (=> b!7933629 m!8320544))

(declare-fun m!8320596 () Bool)

(assert (=> b!7933629 m!8320596))

(assert (=> b!7933283 d!2371829))

(declare-fun e!4681560 () Bool)

(declare-fun b!7933633 () Bool)

(declare-fun lt!2694915 () List!74578)

(assert (=> b!7933633 (= e!4681560 (or (not (= lt!2694819 Nil!74454)) (= lt!2694915 call!735546)))))

(declare-fun d!2371831 () Bool)

(assert (=> d!2371831 e!4681560))

(declare-fun res!3147640 () Bool)

(assert (=> d!2371831 (=> (not res!3147640) (not e!4681560))))

(assert (=> d!2371831 (= res!3147640 (= (content!15788 lt!2694915) ((_ map or) (content!15788 call!735546) (content!15788 lt!2694819))))))

(declare-fun e!4681559 () List!74578)

(assert (=> d!2371831 (= lt!2694915 e!4681559)))

(declare-fun c!1457507 () Bool)

(assert (=> d!2371831 (= c!1457507 ((_ is Nil!74454) call!735546))))

(assert (=> d!2371831 (= (++!18264 call!735546 lt!2694819) lt!2694915)))

(declare-fun b!7933631 () Bool)

(assert (=> b!7933631 (= e!4681559 (Cons!74454 (h!80902 call!735546) (++!18264 (t!390235 call!735546) lt!2694819)))))

(declare-fun b!7933632 () Bool)

(declare-fun res!3147641 () Bool)

(assert (=> b!7933632 (=> (not res!3147641) (not e!4681560))))

(assert (=> b!7933632 (= res!3147641 (= (size!43264 lt!2694915) (+ (size!43264 call!735546) (size!43264 lt!2694819))))))

(declare-fun b!7933630 () Bool)

(assert (=> b!7933630 (= e!4681559 lt!2694819)))

(assert (= (and d!2371831 c!1457507) b!7933630))

(assert (= (and d!2371831 (not c!1457507)) b!7933631))

(assert (= (and d!2371831 res!3147640) b!7933632))

(assert (= (and b!7933632 res!3147641) b!7933633))

(declare-fun m!8320598 () Bool)

(assert (=> d!2371831 m!8320598))

(declare-fun m!8320600 () Bool)

(assert (=> d!2371831 m!8320600))

(declare-fun m!8320602 () Bool)

(assert (=> d!2371831 m!8320602))

(declare-fun m!8320604 () Bool)

(assert (=> b!7933631 m!8320604))

(declare-fun m!8320606 () Bool)

(assert (=> b!7933632 m!8320606))

(declare-fun m!8320608 () Bool)

(assert (=> b!7933632 m!8320608))

(declare-fun m!8320610 () Bool)

(assert (=> b!7933632 m!8320610))

(assert (=> b!7933283 d!2371831))

(declare-fun lt!2694916 () List!74578)

(declare-fun b!7933637 () Bool)

(declare-fun e!4681562 () Bool)

(assert (=> b!7933637 (= e!4681562 (or (not (= lt!2694830 Nil!74454)) (= lt!2694916 call!735544)))))

(declare-fun d!2371833 () Bool)

(assert (=> d!2371833 e!4681562))

(declare-fun res!3147642 () Bool)

(assert (=> d!2371833 (=> (not res!3147642) (not e!4681562))))

(assert (=> d!2371833 (= res!3147642 (= (content!15788 lt!2694916) ((_ map or) (content!15788 call!735544) (content!15788 lt!2694830))))))

(declare-fun e!4681561 () List!74578)

(assert (=> d!2371833 (= lt!2694916 e!4681561)))

(declare-fun c!1457508 () Bool)

(assert (=> d!2371833 (= c!1457508 ((_ is Nil!74454) call!735544))))

(assert (=> d!2371833 (= (++!18264 call!735544 lt!2694830) lt!2694916)))

(declare-fun b!7933635 () Bool)

(assert (=> b!7933635 (= e!4681561 (Cons!74454 (h!80902 call!735544) (++!18264 (t!390235 call!735544) lt!2694830)))))

(declare-fun b!7933636 () Bool)

(declare-fun res!3147643 () Bool)

(assert (=> b!7933636 (=> (not res!3147643) (not e!4681562))))

(assert (=> b!7933636 (= res!3147643 (= (size!43264 lt!2694916) (+ (size!43264 call!735544) (size!43264 lt!2694830))))))

(declare-fun b!7933634 () Bool)

(assert (=> b!7933634 (= e!4681561 lt!2694830)))

(assert (= (and d!2371833 c!1457508) b!7933634))

(assert (= (and d!2371833 (not c!1457508)) b!7933635))

(assert (= (and d!2371833 res!3147642) b!7933636))

(assert (= (and b!7933636 res!3147643) b!7933637))

(declare-fun m!8320612 () Bool)

(assert (=> d!2371833 m!8320612))

(declare-fun m!8320614 () Bool)

(assert (=> d!2371833 m!8320614))

(declare-fun m!8320616 () Bool)

(assert (=> d!2371833 m!8320616))

(declare-fun m!8320618 () Bool)

(assert (=> b!7933635 m!8320618))

(declare-fun m!8320620 () Bool)

(assert (=> b!7933636 m!8320620))

(declare-fun m!8320622 () Bool)

(assert (=> b!7933636 m!8320622))

(declare-fun m!8320624 () Bool)

(assert (=> b!7933636 m!8320624))

(assert (=> b!7933283 d!2371833))

(declare-fun d!2371835 () Bool)

(assert (=> d!2371835 (= (++!18264 (++!18264 lt!2694828 lt!2694827) lt!2694819) (++!18264 lt!2694828 (++!18264 lt!2694827 lt!2694819)))))

(declare-fun lt!2694919 () Unit!169575)

(declare-fun choose!59850 (List!74578 List!74578 List!74578) Unit!169575)

(assert (=> d!2371835 (= lt!2694919 (choose!59850 lt!2694828 lt!2694827 lt!2694819))))

(assert (=> d!2371835 (= (lemmaConcatAssociativity!3168 lt!2694828 lt!2694827 lt!2694819) lt!2694919)))

(declare-fun bs!1969061 () Bool)

(assert (= bs!1969061 d!2371835))

(declare-fun m!8320626 () Bool)

(assert (=> bs!1969061 m!8320626))

(declare-fun m!8320628 () Bool)

(assert (=> bs!1969061 m!8320628))

(declare-fun m!8320630 () Bool)

(assert (=> bs!1969061 m!8320630))

(declare-fun m!8320632 () Bool)

(assert (=> bs!1969061 m!8320632))

(assert (=> bs!1969061 m!8320626))

(assert (=> bs!1969061 m!8320630))

(declare-fun m!8320634 () Bool)

(assert (=> bs!1969061 m!8320634))

(assert (=> b!7933283 d!2371835))

(declare-fun b!7933641 () Bool)

(declare-fun lt!2694920 () List!74578)

(declare-fun e!4681564 () Bool)

(assert (=> b!7933641 (= e!4681564 (or (not (= call!735550 Nil!74454)) (= lt!2694920 lt!2694828)))))

(declare-fun d!2371837 () Bool)

(assert (=> d!2371837 e!4681564))

(declare-fun res!3147644 () Bool)

(assert (=> d!2371837 (=> (not res!3147644) (not e!4681564))))

(assert (=> d!2371837 (= res!3147644 (= (content!15788 lt!2694920) ((_ map or) (content!15788 lt!2694828) (content!15788 call!735550))))))

(declare-fun e!4681563 () List!74578)

(assert (=> d!2371837 (= lt!2694920 e!4681563)))

(declare-fun c!1457509 () Bool)

(assert (=> d!2371837 (= c!1457509 ((_ is Nil!74454) lt!2694828))))

(assert (=> d!2371837 (= (++!18264 lt!2694828 call!735550) lt!2694920)))

(declare-fun b!7933639 () Bool)

(assert (=> b!7933639 (= e!4681563 (Cons!74454 (h!80902 lt!2694828) (++!18264 (t!390235 lt!2694828) call!735550)))))

(declare-fun b!7933640 () Bool)

(declare-fun res!3147645 () Bool)

(assert (=> b!7933640 (=> (not res!3147645) (not e!4681564))))

(assert (=> b!7933640 (= res!3147645 (= (size!43264 lt!2694920) (+ (size!43264 lt!2694828) (size!43264 call!735550))))))

(declare-fun b!7933638 () Bool)

(assert (=> b!7933638 (= e!4681563 call!735550)))

(assert (= (and d!2371837 c!1457509) b!7933638))

(assert (= (and d!2371837 (not c!1457509)) b!7933639))

(assert (= (and d!2371837 res!3147644) b!7933640))

(assert (= (and b!7933640 res!3147645) b!7933641))

(declare-fun m!8320636 () Bool)

(assert (=> d!2371837 m!8320636))

(declare-fun m!8320638 () Bool)

(assert (=> d!2371837 m!8320638))

(declare-fun m!8320640 () Bool)

(assert (=> d!2371837 m!8320640))

(declare-fun m!8320642 () Bool)

(assert (=> b!7933639 m!8320642))

(declare-fun m!8320644 () Bool)

(assert (=> b!7933640 m!8320644))

(declare-fun m!8320646 () Bool)

(assert (=> b!7933640 m!8320646))

(declare-fun m!8320648 () Bool)

(assert (=> b!7933640 m!8320648))

(assert (=> b!7933283 d!2371837))

(declare-fun b!7933645 () Bool)

(declare-fun e!4681566 () Bool)

(declare-fun lt!2694921 () List!74578)

(assert (=> b!7933645 (= e!4681566 (or (not (= call!735543 Nil!74454)) (= lt!2694921 lt!2694820)))))

(declare-fun d!2371839 () Bool)

(assert (=> d!2371839 e!4681566))

(declare-fun res!3147646 () Bool)

(assert (=> d!2371839 (=> (not res!3147646) (not e!4681566))))

(assert (=> d!2371839 (= res!3147646 (= (content!15788 lt!2694921) ((_ map or) (content!15788 lt!2694820) (content!15788 call!735543))))))

(declare-fun e!4681565 () List!74578)

(assert (=> d!2371839 (= lt!2694921 e!4681565)))

(declare-fun c!1457510 () Bool)

(assert (=> d!2371839 (= c!1457510 ((_ is Nil!74454) lt!2694820))))

(assert (=> d!2371839 (= (++!18264 lt!2694820 call!735543) lt!2694921)))

(declare-fun b!7933643 () Bool)

(assert (=> b!7933643 (= e!4681565 (Cons!74454 (h!80902 lt!2694820) (++!18264 (t!390235 lt!2694820) call!735543)))))

(declare-fun b!7933644 () Bool)

(declare-fun res!3147647 () Bool)

(assert (=> b!7933644 (=> (not res!3147647) (not e!4681566))))

(assert (=> b!7933644 (= res!3147647 (= (size!43264 lt!2694921) (+ (size!43264 lt!2694820) (size!43264 call!735543))))))

(declare-fun b!7933642 () Bool)

(assert (=> b!7933642 (= e!4681565 call!735543)))

(assert (= (and d!2371839 c!1457510) b!7933642))

(assert (= (and d!2371839 (not c!1457510)) b!7933643))

(assert (= (and d!2371839 res!3147646) b!7933644))

(assert (= (and b!7933644 res!3147647) b!7933645))

(declare-fun m!8320650 () Bool)

(assert (=> d!2371839 m!8320650))

(declare-fun m!8320652 () Bool)

(assert (=> d!2371839 m!8320652))

(declare-fun m!8320654 () Bool)

(assert (=> d!2371839 m!8320654))

(declare-fun m!8320656 () Bool)

(assert (=> b!7933643 m!8320656))

(declare-fun m!8320658 () Bool)

(assert (=> b!7933644 m!8320658))

(declare-fun m!8320660 () Bool)

(assert (=> b!7933644 m!8320660))

(declare-fun m!8320662 () Bool)

(assert (=> b!7933644 m!8320662))

(assert (=> b!7933283 d!2371839))

(declare-fun d!2371841 () Bool)

(declare-fun c!1457511 () Bool)

(assert (=> d!2371841 (= c!1457511 ((_ is Node!15908) (left!56882 (left!56882 err!4705))))))

(declare-fun e!4681567 () Bool)

(assert (=> d!2371841 (= (inv!95753 (left!56882 (left!56882 err!4705))) e!4681567)))

(declare-fun b!7933646 () Bool)

(assert (=> b!7933646 (= e!4681567 (inv!95754 (left!56882 (left!56882 err!4705))))))

(declare-fun b!7933647 () Bool)

(declare-fun e!4681568 () Bool)

(assert (=> b!7933647 (= e!4681567 e!4681568)))

(declare-fun res!3147648 () Bool)

(assert (=> b!7933647 (= res!3147648 (not ((_ is Leaf!30243) (left!56882 (left!56882 err!4705)))))))

(assert (=> b!7933647 (=> res!3147648 e!4681568)))

(declare-fun b!7933648 () Bool)

(assert (=> b!7933648 (= e!4681568 (inv!95755 (left!56882 (left!56882 err!4705))))))

(assert (= (and d!2371841 c!1457511) b!7933646))

(assert (= (and d!2371841 (not c!1457511)) b!7933647))

(assert (= (and b!7933647 (not res!3147648)) b!7933648))

(declare-fun m!8320664 () Bool)

(assert (=> b!7933646 m!8320664))

(declare-fun m!8320666 () Bool)

(assert (=> b!7933648 m!8320666))

(assert (=> b!7933299 d!2371841))

(declare-fun d!2371843 () Bool)

(declare-fun c!1457512 () Bool)

(assert (=> d!2371843 (= c!1457512 ((_ is Node!15908) (right!57212 (left!56882 err!4705))))))

(declare-fun e!4681569 () Bool)

(assert (=> d!2371843 (= (inv!95753 (right!57212 (left!56882 err!4705))) e!4681569)))

(declare-fun b!7933649 () Bool)

(assert (=> b!7933649 (= e!4681569 (inv!95754 (right!57212 (left!56882 err!4705))))))

(declare-fun b!7933650 () Bool)

(declare-fun e!4681570 () Bool)

(assert (=> b!7933650 (= e!4681569 e!4681570)))

(declare-fun res!3147649 () Bool)

(assert (=> b!7933650 (= res!3147649 (not ((_ is Leaf!30243) (right!57212 (left!56882 err!4705)))))))

(assert (=> b!7933650 (=> res!3147649 e!4681570)))

(declare-fun b!7933651 () Bool)

(assert (=> b!7933651 (= e!4681570 (inv!95755 (right!57212 (left!56882 err!4705))))))

(assert (= (and d!2371843 c!1457512) b!7933649))

(assert (= (and d!2371843 (not c!1457512)) b!7933650))

(assert (= (and b!7933650 (not res!3147649)) b!7933651))

(declare-fun m!8320668 () Bool)

(assert (=> b!7933649 m!8320668))

(declare-fun m!8320670 () Bool)

(assert (=> b!7933651 m!8320670))

(assert (=> b!7933299 d!2371843))

(declare-fun lt!2694922 () List!74578)

(declare-fun e!4681572 () Bool)

(declare-fun b!7933655 () Bool)

(assert (=> b!7933655 (= e!4681572 (or (not (= (Cons!74454 v!5484 Nil!74454) Nil!74454)) (= lt!2694922 (list!19425 t!4440))))))

(declare-fun d!2371845 () Bool)

(assert (=> d!2371845 e!4681572))

(declare-fun res!3147650 () Bool)

(assert (=> d!2371845 (=> (not res!3147650) (not e!4681572))))

(assert (=> d!2371845 (= res!3147650 (= (content!15788 lt!2694922) ((_ map or) (content!15788 (list!19425 t!4440)) (content!15788 (Cons!74454 v!5484 Nil!74454)))))))

(declare-fun e!4681571 () List!74578)

(assert (=> d!2371845 (= lt!2694922 e!4681571)))

(declare-fun c!1457513 () Bool)

(assert (=> d!2371845 (= c!1457513 ((_ is Nil!74454) (list!19425 t!4440)))))

(assert (=> d!2371845 (= (++!18264 (list!19425 t!4440) (Cons!74454 v!5484 Nil!74454)) lt!2694922)))

(declare-fun b!7933653 () Bool)

(assert (=> b!7933653 (= e!4681571 (Cons!74454 (h!80902 (list!19425 t!4440)) (++!18264 (t!390235 (list!19425 t!4440)) (Cons!74454 v!5484 Nil!74454))))))

(declare-fun b!7933654 () Bool)

(declare-fun res!3147651 () Bool)

(assert (=> b!7933654 (=> (not res!3147651) (not e!4681572))))

(assert (=> b!7933654 (= res!3147651 (= (size!43264 lt!2694922) (+ (size!43264 (list!19425 t!4440)) (size!43264 (Cons!74454 v!5484 Nil!74454)))))))

(declare-fun b!7933652 () Bool)

(assert (=> b!7933652 (= e!4681571 (Cons!74454 v!5484 Nil!74454))))

(assert (= (and d!2371845 c!1457513) b!7933652))

(assert (= (and d!2371845 (not c!1457513)) b!7933653))

(assert (= (and d!2371845 res!3147650) b!7933654))

(assert (= (and b!7933654 res!3147651) b!7933655))

(declare-fun m!8320672 () Bool)

(assert (=> d!2371845 m!8320672))

(assert (=> d!2371845 m!8319880))

(assert (=> d!2371845 m!8319948))

(declare-fun m!8320674 () Bool)

(assert (=> d!2371845 m!8320674))

(assert (=> b!7933653 m!8320356))

(declare-fun m!8320676 () Bool)

(assert (=> b!7933654 m!8320676))

(assert (=> b!7933654 m!8319880))

(assert (=> b!7933654 m!8319940))

(declare-fun m!8320678 () Bool)

(assert (=> b!7933654 m!8320678))

(assert (=> b!7933210 d!2371845))

(declare-fun b!7933659 () Bool)

(declare-fun e!4681574 () Bool)

(declare-fun lt!2694923 () List!74578)

(assert (=> b!7933659 (= e!4681574 (or (not (= (ite c!1457422 lt!2694818 lt!2694823) Nil!74454)) (= lt!2694923 (ite c!1457422 lt!2694821 lt!2694820))))))

(declare-fun d!2371847 () Bool)

(assert (=> d!2371847 e!4681574))

(declare-fun res!3147652 () Bool)

(assert (=> d!2371847 (=> (not res!3147652) (not e!4681574))))

(assert (=> d!2371847 (= res!3147652 (= (content!15788 lt!2694923) ((_ map or) (content!15788 (ite c!1457422 lt!2694821 lt!2694820)) (content!15788 (ite c!1457422 lt!2694818 lt!2694823)))))))

(declare-fun e!4681573 () List!74578)

(assert (=> d!2371847 (= lt!2694923 e!4681573)))

(declare-fun c!1457514 () Bool)

(assert (=> d!2371847 (= c!1457514 ((_ is Nil!74454) (ite c!1457422 lt!2694821 lt!2694820)))))

(assert (=> d!2371847 (= (++!18264 (ite c!1457422 lt!2694821 lt!2694820) (ite c!1457422 lt!2694818 lt!2694823)) lt!2694923)))

(declare-fun b!7933657 () Bool)

(assert (=> b!7933657 (= e!4681573 (Cons!74454 (h!80902 (ite c!1457422 lt!2694821 lt!2694820)) (++!18264 (t!390235 (ite c!1457422 lt!2694821 lt!2694820)) (ite c!1457422 lt!2694818 lt!2694823))))))

(declare-fun b!7933658 () Bool)

(declare-fun res!3147653 () Bool)

(assert (=> b!7933658 (=> (not res!3147653) (not e!4681574))))

(assert (=> b!7933658 (= res!3147653 (= (size!43264 lt!2694923) (+ (size!43264 (ite c!1457422 lt!2694821 lt!2694820)) (size!43264 (ite c!1457422 lt!2694818 lt!2694823)))))))

(declare-fun b!7933656 () Bool)

(assert (=> b!7933656 (= e!4681573 (ite c!1457422 lt!2694818 lt!2694823))))

(assert (= (and d!2371847 c!1457514) b!7933656))

(assert (= (and d!2371847 (not c!1457514)) b!7933657))

(assert (= (and d!2371847 res!3147652) b!7933658))

(assert (= (and b!7933658 res!3147653) b!7933659))

(declare-fun m!8320680 () Bool)

(assert (=> d!2371847 m!8320680))

(declare-fun m!8320682 () Bool)

(assert (=> d!2371847 m!8320682))

(declare-fun m!8320684 () Bool)

(assert (=> d!2371847 m!8320684))

(declare-fun m!8320686 () Bool)

(assert (=> b!7933657 m!8320686))

(declare-fun m!8320688 () Bool)

(assert (=> b!7933658 m!8320688))

(declare-fun m!8320690 () Bool)

(assert (=> b!7933658 m!8320690))

(declare-fun m!8320692 () Bool)

(assert (=> b!7933658 m!8320692))

(assert (=> bm!735542 d!2371847))

(declare-fun d!2371849 () Bool)

(declare-fun c!1457515 () Bool)

(assert (=> d!2371849 (= c!1457515 ((_ is Node!15908) (left!56882 (right!57212 t!4440))))))

(declare-fun e!4681575 () Bool)

(assert (=> d!2371849 (= (inv!95753 (left!56882 (right!57212 t!4440))) e!4681575)))

(declare-fun b!7933660 () Bool)

(assert (=> b!7933660 (= e!4681575 (inv!95754 (left!56882 (right!57212 t!4440))))))

(declare-fun b!7933661 () Bool)

(declare-fun e!4681576 () Bool)

(assert (=> b!7933661 (= e!4681575 e!4681576)))

(declare-fun res!3147654 () Bool)

(assert (=> b!7933661 (= res!3147654 (not ((_ is Leaf!30243) (left!56882 (right!57212 t!4440)))))))

(assert (=> b!7933661 (=> res!3147654 e!4681576)))

(declare-fun b!7933662 () Bool)

(assert (=> b!7933662 (= e!4681576 (inv!95755 (left!56882 (right!57212 t!4440))))))

(assert (= (and d!2371849 c!1457515) b!7933660))

(assert (= (and d!2371849 (not c!1457515)) b!7933661))

(assert (= (and b!7933661 (not res!3147654)) b!7933662))

(declare-fun m!8320694 () Bool)

(assert (=> b!7933660 m!8320694))

(declare-fun m!8320696 () Bool)

(assert (=> b!7933662 m!8320696))

(assert (=> b!7933308 d!2371849))

(declare-fun d!2371851 () Bool)

(declare-fun c!1457516 () Bool)

(assert (=> d!2371851 (= c!1457516 ((_ is Node!15908) (right!57212 (right!57212 t!4440))))))

(declare-fun e!4681577 () Bool)

(assert (=> d!2371851 (= (inv!95753 (right!57212 (right!57212 t!4440))) e!4681577)))

(declare-fun b!7933663 () Bool)

(assert (=> b!7933663 (= e!4681577 (inv!95754 (right!57212 (right!57212 t!4440))))))

(declare-fun b!7933664 () Bool)

(declare-fun e!4681578 () Bool)

(assert (=> b!7933664 (= e!4681577 e!4681578)))

(declare-fun res!3147655 () Bool)

(assert (=> b!7933664 (= res!3147655 (not ((_ is Leaf!30243) (right!57212 (right!57212 t!4440)))))))

(assert (=> b!7933664 (=> res!3147655 e!4681578)))

(declare-fun b!7933665 () Bool)

(assert (=> b!7933665 (= e!4681578 (inv!95755 (right!57212 (right!57212 t!4440))))))

(assert (= (and d!2371851 c!1457516) b!7933663))

(assert (= (and d!2371851 (not c!1457516)) b!7933664))

(assert (= (and b!7933664 (not res!3147655)) b!7933665))

(declare-fun m!8320698 () Bool)

(assert (=> b!7933663 m!8320698))

(declare-fun m!8320700 () Bool)

(assert (=> b!7933665 m!8320700))

(assert (=> b!7933308 d!2371851))

(declare-fun d!2371853 () Bool)

(declare-fun res!3147656 () Bool)

(declare-fun e!4681579 () Bool)

(assert (=> d!2371853 (=> (not res!3147656) (not e!4681579))))

(assert (=> d!2371853 (= res!3147656 (<= (size!43264 (list!19426 (xs!19302 (right!57212 t!4440)))) 512))))

(assert (=> d!2371853 (= (inv!95755 (right!57212 t!4440)) e!4681579)))

(declare-fun b!7933666 () Bool)

(declare-fun res!3147657 () Bool)

(assert (=> b!7933666 (=> (not res!3147657) (not e!4681579))))

(assert (=> b!7933666 (= res!3147657 (= (csize!32047 (right!57212 t!4440)) (size!43264 (list!19426 (xs!19302 (right!57212 t!4440))))))))

(declare-fun b!7933667 () Bool)

(assert (=> b!7933667 (= e!4681579 (and (> (csize!32047 (right!57212 t!4440)) 0) (<= (csize!32047 (right!57212 t!4440)) 512)))))

(assert (= (and d!2371853 res!3147656) b!7933666))

(assert (= (and b!7933666 res!3147657) b!7933667))

(assert (=> d!2371853 m!8320014))

(assert (=> d!2371853 m!8320014))

(assert (=> d!2371853 m!8320484))

(assert (=> b!7933666 m!8320014))

(assert (=> b!7933666 m!8320014))

(assert (=> b!7933666 m!8320484))

(assert (=> b!7933235 d!2371853))

(declare-fun d!2371855 () Bool)

(assert (=> d!2371855 (= (++!18264 (++!18264 (ite c!1457422 lt!2694822 lt!2694820) (ite c!1457422 lt!2694821 lt!2694823)) (ite c!1457422 lt!2694818 lt!2694830)) (++!18264 (ite c!1457422 lt!2694822 lt!2694820) (++!18264 (ite c!1457422 lt!2694821 lt!2694823) (ite c!1457422 lt!2694818 lt!2694830))))))

(declare-fun lt!2694924 () Unit!169575)

(assert (=> d!2371855 (= lt!2694924 (choose!59850 (ite c!1457422 lt!2694822 lt!2694820) (ite c!1457422 lt!2694821 lt!2694823) (ite c!1457422 lt!2694818 lt!2694830)))))

(assert (=> d!2371855 (= (lemmaConcatAssociativity!3168 (ite c!1457422 lt!2694822 lt!2694820) (ite c!1457422 lt!2694821 lt!2694823) (ite c!1457422 lt!2694818 lt!2694830)) lt!2694924)))

(declare-fun bs!1969062 () Bool)

(assert (= bs!1969062 d!2371855))

(declare-fun m!8320702 () Bool)

(assert (=> bs!1969062 m!8320702))

(declare-fun m!8320704 () Bool)

(assert (=> bs!1969062 m!8320704))

(declare-fun m!8320706 () Bool)

(assert (=> bs!1969062 m!8320706))

(declare-fun m!8320708 () Bool)

(assert (=> bs!1969062 m!8320708))

(assert (=> bs!1969062 m!8320702))

(assert (=> bs!1969062 m!8320706))

(declare-fun m!8320710 () Bool)

(assert (=> bs!1969062 m!8320710))

(assert (=> bm!735541 d!2371855))

(declare-fun d!2371857 () Bool)

(declare-fun res!3147658 () Bool)

(declare-fun e!4681580 () Bool)

(assert (=> d!2371857 (=> (not res!3147658) (not e!4681580))))

(assert (=> d!2371857 (= res!3147658 (= (csize!32046 (right!57212 t!4440)) (+ (size!43266 (left!56882 (right!57212 t!4440))) (size!43266 (right!57212 (right!57212 t!4440))))))))

(assert (=> d!2371857 (= (inv!95754 (right!57212 t!4440)) e!4681580)))

(declare-fun b!7933668 () Bool)

(declare-fun res!3147659 () Bool)

(assert (=> b!7933668 (=> (not res!3147659) (not e!4681580))))

(assert (=> b!7933668 (= res!3147659 (and (not (= (left!56882 (right!57212 t!4440)) Empty!15908)) (not (= (right!57212 (right!57212 t!4440)) Empty!15908))))))

(declare-fun b!7933669 () Bool)

(declare-fun res!3147660 () Bool)

(assert (=> b!7933669 (=> (not res!3147660) (not e!4681580))))

(assert (=> b!7933669 (= res!3147660 (= (cheight!16119 (right!57212 t!4440)) (+ (max!0 (height!2223 (left!56882 (right!57212 t!4440))) (height!2223 (right!57212 (right!57212 t!4440)))) 1)))))

(declare-fun b!7933670 () Bool)

(assert (=> b!7933670 (= e!4681580 (<= 0 (cheight!16119 (right!57212 t!4440))))))

(assert (= (and d!2371857 res!3147658) b!7933668))

(assert (= (and b!7933668 res!3147659) b!7933669))

(assert (= (and b!7933669 res!3147660) b!7933670))

(declare-fun m!8320712 () Bool)

(assert (=> d!2371857 m!8320712))

(declare-fun m!8320714 () Bool)

(assert (=> d!2371857 m!8320714))

(assert (=> b!7933669 m!8320002))

(assert (=> b!7933669 m!8320390))

(assert (=> b!7933669 m!8320002))

(assert (=> b!7933669 m!8320390))

(declare-fun m!8320716 () Bool)

(assert (=> b!7933669 m!8320716))

(assert (=> b!7933233 d!2371857))

(declare-fun b!7933674 () Bool)

(declare-fun e!4681582 () Bool)

(declare-fun lt!2694925 () List!74578)

(assert (=> b!7933674 (= e!4681582 (or (not (= (list!19425 (right!57212 lt!2694743)) Nil!74454)) (= lt!2694925 (list!19425 (left!56882 lt!2694743)))))))

(declare-fun d!2371859 () Bool)

(assert (=> d!2371859 e!4681582))

(declare-fun res!3147661 () Bool)

(assert (=> d!2371859 (=> (not res!3147661) (not e!4681582))))

(assert (=> d!2371859 (= res!3147661 (= (content!15788 lt!2694925) ((_ map or) (content!15788 (list!19425 (left!56882 lt!2694743))) (content!15788 (list!19425 (right!57212 lt!2694743))))))))

(declare-fun e!4681581 () List!74578)

(assert (=> d!2371859 (= lt!2694925 e!4681581)))

(declare-fun c!1457517 () Bool)

(assert (=> d!2371859 (= c!1457517 ((_ is Nil!74454) (list!19425 (left!56882 lt!2694743))))))

(assert (=> d!2371859 (= (++!18264 (list!19425 (left!56882 lt!2694743)) (list!19425 (right!57212 lt!2694743))) lt!2694925)))

(declare-fun b!7933672 () Bool)

(assert (=> b!7933672 (= e!4681581 (Cons!74454 (h!80902 (list!19425 (left!56882 lt!2694743))) (++!18264 (t!390235 (list!19425 (left!56882 lt!2694743))) (list!19425 (right!57212 lt!2694743)))))))

(declare-fun b!7933673 () Bool)

(declare-fun res!3147662 () Bool)

(assert (=> b!7933673 (=> (not res!3147662) (not e!4681582))))

(assert (=> b!7933673 (= res!3147662 (= (size!43264 lt!2694925) (+ (size!43264 (list!19425 (left!56882 lt!2694743))) (size!43264 (list!19425 (right!57212 lt!2694743))))))))

(declare-fun b!7933671 () Bool)

(assert (=> b!7933671 (= e!4681581 (list!19425 (right!57212 lt!2694743)))))

(assert (= (and d!2371859 c!1457517) b!7933671))

(assert (= (and d!2371859 (not c!1457517)) b!7933672))

(assert (= (and d!2371859 res!3147661) b!7933673))

(assert (= (and b!7933673 res!3147662) b!7933674))

(declare-fun m!8320718 () Bool)

(assert (=> d!2371859 m!8320718))

(assert (=> d!2371859 m!8319928))

(declare-fun m!8320720 () Bool)

(assert (=> d!2371859 m!8320720))

(assert (=> d!2371859 m!8319930))

(declare-fun m!8320722 () Bool)

(assert (=> d!2371859 m!8320722))

(assert (=> b!7933672 m!8319930))

(declare-fun m!8320724 () Bool)

(assert (=> b!7933672 m!8320724))

(declare-fun m!8320726 () Bool)

(assert (=> b!7933673 m!8320726))

(assert (=> b!7933673 m!8319928))

(declare-fun m!8320728 () Bool)

(assert (=> b!7933673 m!8320728))

(assert (=> b!7933673 m!8319930))

(declare-fun m!8320730 () Bool)

(assert (=> b!7933673 m!8320730))

(assert (=> b!7933183 d!2371859))

(declare-fun b!7933677 () Bool)

(declare-fun e!4681584 () List!74578)

(assert (=> b!7933677 (= e!4681584 (list!19426 (xs!19302 (left!56882 lt!2694743))))))

(declare-fun b!7933675 () Bool)

(declare-fun e!4681583 () List!74578)

(assert (=> b!7933675 (= e!4681583 Nil!74454)))

(declare-fun b!7933678 () Bool)

(assert (=> b!7933678 (= e!4681584 (++!18264 (list!19425 (left!56882 (left!56882 lt!2694743))) (list!19425 (right!57212 (left!56882 lt!2694743)))))))

(declare-fun b!7933676 () Bool)

(assert (=> b!7933676 (= e!4681583 e!4681584)))

(declare-fun c!1457519 () Bool)

(assert (=> b!7933676 (= c!1457519 ((_ is Leaf!30243) (left!56882 lt!2694743)))))

(declare-fun d!2371861 () Bool)

(declare-fun c!1457518 () Bool)

(assert (=> d!2371861 (= c!1457518 ((_ is Empty!15908) (left!56882 lt!2694743)))))

(assert (=> d!2371861 (= (list!19425 (left!56882 lt!2694743)) e!4681583)))

(assert (= (and d!2371861 c!1457518) b!7933675))

(assert (= (and d!2371861 (not c!1457518)) b!7933676))

(assert (= (and b!7933676 c!1457519) b!7933677))

(assert (= (and b!7933676 (not c!1457519)) b!7933678))

(declare-fun m!8320732 () Bool)

(assert (=> b!7933677 m!8320732))

(declare-fun m!8320734 () Bool)

(assert (=> b!7933678 m!8320734))

(declare-fun m!8320736 () Bool)

(assert (=> b!7933678 m!8320736))

(assert (=> b!7933678 m!8320734))

(assert (=> b!7933678 m!8320736))

(declare-fun m!8320738 () Bool)

(assert (=> b!7933678 m!8320738))

(assert (=> b!7933183 d!2371861))

(declare-fun b!7933681 () Bool)

(declare-fun e!4681586 () List!74578)

(assert (=> b!7933681 (= e!4681586 (list!19426 (xs!19302 (right!57212 lt!2694743))))))

(declare-fun b!7933679 () Bool)

(declare-fun e!4681585 () List!74578)

(assert (=> b!7933679 (= e!4681585 Nil!74454)))

(declare-fun b!7933682 () Bool)

(assert (=> b!7933682 (= e!4681586 (++!18264 (list!19425 (left!56882 (right!57212 lt!2694743))) (list!19425 (right!57212 (right!57212 lt!2694743)))))))

(declare-fun b!7933680 () Bool)

(assert (=> b!7933680 (= e!4681585 e!4681586)))

(declare-fun c!1457521 () Bool)

(assert (=> b!7933680 (= c!1457521 ((_ is Leaf!30243) (right!57212 lt!2694743)))))

(declare-fun d!2371863 () Bool)

(declare-fun c!1457520 () Bool)

(assert (=> d!2371863 (= c!1457520 ((_ is Empty!15908) (right!57212 lt!2694743)))))

(assert (=> d!2371863 (= (list!19425 (right!57212 lt!2694743)) e!4681585)))

(assert (= (and d!2371863 c!1457520) b!7933679))

(assert (= (and d!2371863 (not c!1457520)) b!7933680))

(assert (= (and b!7933680 c!1457521) b!7933681))

(assert (= (and b!7933680 (not c!1457521)) b!7933682))

(declare-fun m!8320740 () Bool)

(assert (=> b!7933681 m!8320740))

(declare-fun m!8320742 () Bool)

(assert (=> b!7933682 m!8320742))

(declare-fun m!8320744 () Bool)

(assert (=> b!7933682 m!8320744))

(assert (=> b!7933682 m!8320742))

(assert (=> b!7933682 m!8320744))

(declare-fun m!8320746 () Bool)

(assert (=> b!7933682 m!8320746))

(assert (=> b!7933183 d!2371863))

(declare-fun e!4681588 () Bool)

(declare-fun b!7933686 () Bool)

(declare-fun lt!2694926 () List!74578)

(assert (=> b!7933686 (= e!4681588 (or (not (= (ite c!1457422 lt!2694818 lt!2694830) Nil!74454)) (= lt!2694926 (ite c!1457422 call!735546 lt!2694823))))))

(declare-fun d!2371865 () Bool)

(assert (=> d!2371865 e!4681588))

(declare-fun res!3147663 () Bool)

(assert (=> d!2371865 (=> (not res!3147663) (not e!4681588))))

(assert (=> d!2371865 (= res!3147663 (= (content!15788 lt!2694926) ((_ map or) (content!15788 (ite c!1457422 call!735546 lt!2694823)) (content!15788 (ite c!1457422 lt!2694818 lt!2694830)))))))

(declare-fun e!4681587 () List!74578)

(assert (=> d!2371865 (= lt!2694926 e!4681587)))

(declare-fun c!1457522 () Bool)

(assert (=> d!2371865 (= c!1457522 ((_ is Nil!74454) (ite c!1457422 call!735546 lt!2694823)))))

(assert (=> d!2371865 (= (++!18264 (ite c!1457422 call!735546 lt!2694823) (ite c!1457422 lt!2694818 lt!2694830)) lt!2694926)))

(declare-fun b!7933684 () Bool)

(assert (=> b!7933684 (= e!4681587 (Cons!74454 (h!80902 (ite c!1457422 call!735546 lt!2694823)) (++!18264 (t!390235 (ite c!1457422 call!735546 lt!2694823)) (ite c!1457422 lt!2694818 lt!2694830))))))

(declare-fun b!7933685 () Bool)

(declare-fun res!3147664 () Bool)

(assert (=> b!7933685 (=> (not res!3147664) (not e!4681588))))

(assert (=> b!7933685 (= res!3147664 (= (size!43264 lt!2694926) (+ (size!43264 (ite c!1457422 call!735546 lt!2694823)) (size!43264 (ite c!1457422 lt!2694818 lt!2694830)))))))

(declare-fun b!7933683 () Bool)

(assert (=> b!7933683 (= e!4681587 (ite c!1457422 lt!2694818 lt!2694830))))

(assert (= (and d!2371865 c!1457522) b!7933683))

(assert (= (and d!2371865 (not c!1457522)) b!7933684))

(assert (= (and d!2371865 res!3147663) b!7933685))

(assert (= (and b!7933685 res!3147664) b!7933686))

(declare-fun m!8320748 () Bool)

(assert (=> d!2371865 m!8320748))

(declare-fun m!8320750 () Bool)

(assert (=> d!2371865 m!8320750))

(declare-fun m!8320752 () Bool)

(assert (=> d!2371865 m!8320752))

(declare-fun m!8320754 () Bool)

(assert (=> b!7933684 m!8320754))

(declare-fun m!8320756 () Bool)

(assert (=> b!7933685 m!8320756))

(declare-fun m!8320758 () Bool)

(assert (=> b!7933685 m!8320758))

(declare-fun m!8320760 () Bool)

(assert (=> b!7933685 m!8320760))

(assert (=> bm!735539 d!2371865))

(declare-fun d!2371867 () Bool)

(declare-fun res!3147665 () Bool)

(declare-fun e!4681589 () Bool)

(assert (=> d!2371867 (=> (not res!3147665) (not e!4681589))))

(assert (=> d!2371867 (= res!3147665 (= (csize!32046 (right!57212 err!4705)) (+ (size!43266 (left!56882 (right!57212 err!4705))) (size!43266 (right!57212 (right!57212 err!4705))))))))

(assert (=> d!2371867 (= (inv!95754 (right!57212 err!4705)) e!4681589)))

(declare-fun b!7933687 () Bool)

(declare-fun res!3147666 () Bool)

(assert (=> b!7933687 (=> (not res!3147666) (not e!4681589))))

(assert (=> b!7933687 (= res!3147666 (and (not (= (left!56882 (right!57212 err!4705)) Empty!15908)) (not (= (right!57212 (right!57212 err!4705)) Empty!15908))))))

(declare-fun b!7933688 () Bool)

(declare-fun res!3147667 () Bool)

(assert (=> b!7933688 (=> (not res!3147667) (not e!4681589))))

(assert (=> b!7933688 (= res!3147667 (= (cheight!16119 (right!57212 err!4705)) (+ (max!0 (height!2223 (left!56882 (right!57212 err!4705))) (height!2223 (right!57212 (right!57212 err!4705)))) 1)))))

(declare-fun b!7933689 () Bool)

(assert (=> b!7933689 (= e!4681589 (<= 0 (cheight!16119 (right!57212 err!4705))))))

(assert (= (and d!2371867 res!3147665) b!7933687))

(assert (= (and b!7933687 res!3147666) b!7933688))

(assert (= (and b!7933688 res!3147667) b!7933689))

(declare-fun m!8320762 () Bool)

(assert (=> d!2371867 m!8320762))

(declare-fun m!8320764 () Bool)

(assert (=> d!2371867 m!8320764))

(declare-fun m!8320766 () Bool)

(assert (=> b!7933688 m!8320766))

(declare-fun m!8320768 () Bool)

(assert (=> b!7933688 m!8320768))

(assert (=> b!7933688 m!8320766))

(assert (=> b!7933688 m!8320768))

(declare-fun m!8320770 () Bool)

(assert (=> b!7933688 m!8320770))

(assert (=> b!7933130 d!2371867))

(assert (=> b!7933225 d!2371675))

(assert (=> b!7933225 d!2371727))

(declare-fun b!7933690 () Bool)

(declare-fun e!4681590 () Bool)

(declare-fun tp!2359145 () Bool)

(assert (=> b!7933690 (= e!4681590 (and tp_is_empty!53241 tp!2359145))))

(assert (=> b!7933304 (= tp!2359111 e!4681590)))

(assert (= (and b!7933304 ((_ is Cons!74454) (innerList!15996 (xs!19302 (right!57212 err!4705))))) b!7933690))

(declare-fun e!4681592 () Bool)

(declare-fun tp!2359146 () Bool)

(declare-fun b!7933691 () Bool)

(declare-fun tp!2359148 () Bool)

(assert (=> b!7933691 (= e!4681592 (and (inv!95753 (left!56882 (left!56882 (left!56882 err!4705)))) tp!2359148 (inv!95753 (right!57212 (left!56882 (left!56882 err!4705)))) tp!2359146))))

(declare-fun b!7933693 () Bool)

(declare-fun e!4681591 () Bool)

(declare-fun tp!2359147 () Bool)

(assert (=> b!7933693 (= e!4681591 tp!2359147)))

(declare-fun b!7933692 () Bool)

(assert (=> b!7933692 (= e!4681592 (and (inv!95752 (xs!19302 (left!56882 (left!56882 err!4705)))) e!4681591))))

(assert (=> b!7933299 (= tp!2359109 (and (inv!95753 (left!56882 (left!56882 err!4705))) e!4681592))))

(assert (= (and b!7933299 ((_ is Node!15908) (left!56882 (left!56882 err!4705)))) b!7933691))

(assert (= b!7933692 b!7933693))

(assert (= (and b!7933299 ((_ is Leaf!30243) (left!56882 (left!56882 err!4705)))) b!7933692))

(declare-fun m!8320772 () Bool)

(assert (=> b!7933691 m!8320772))

(declare-fun m!8320774 () Bool)

(assert (=> b!7933691 m!8320774))

(declare-fun m!8320776 () Bool)

(assert (=> b!7933692 m!8320776))

(assert (=> b!7933299 m!8320042))

(declare-fun e!4681594 () Bool)

(declare-fun tp!2359149 () Bool)

(declare-fun b!7933694 () Bool)

(declare-fun tp!2359151 () Bool)

(assert (=> b!7933694 (= e!4681594 (and (inv!95753 (left!56882 (right!57212 (left!56882 err!4705)))) tp!2359151 (inv!95753 (right!57212 (right!57212 (left!56882 err!4705)))) tp!2359149))))

(declare-fun b!7933696 () Bool)

(declare-fun e!4681593 () Bool)

(declare-fun tp!2359150 () Bool)

(assert (=> b!7933696 (= e!4681593 tp!2359150)))

(declare-fun b!7933695 () Bool)

(assert (=> b!7933695 (= e!4681594 (and (inv!95752 (xs!19302 (right!57212 (left!56882 err!4705)))) e!4681593))))

(assert (=> b!7933299 (= tp!2359107 (and (inv!95753 (right!57212 (left!56882 err!4705))) e!4681594))))

(assert (= (and b!7933299 ((_ is Node!15908) (right!57212 (left!56882 err!4705)))) b!7933694))

(assert (= b!7933695 b!7933696))

(assert (= (and b!7933299 ((_ is Leaf!30243) (right!57212 (left!56882 err!4705)))) b!7933695))

(declare-fun m!8320778 () Bool)

(assert (=> b!7933694 m!8320778))

(declare-fun m!8320780 () Bool)

(assert (=> b!7933694 m!8320780))

(declare-fun m!8320782 () Bool)

(assert (=> b!7933695 m!8320782))

(assert (=> b!7933299 m!8320044))

(declare-fun b!7933697 () Bool)

(declare-fun e!4681596 () Bool)

(declare-fun tp!2359154 () Bool)

(declare-fun tp!2359152 () Bool)

(assert (=> b!7933697 (= e!4681596 (and (inv!95753 (left!56882 (left!56882 (right!57212 t!4440)))) tp!2359154 (inv!95753 (right!57212 (left!56882 (right!57212 t!4440)))) tp!2359152))))

(declare-fun b!7933699 () Bool)

(declare-fun e!4681595 () Bool)

(declare-fun tp!2359153 () Bool)

(assert (=> b!7933699 (= e!4681595 tp!2359153)))

(declare-fun b!7933698 () Bool)

(assert (=> b!7933698 (= e!4681596 (and (inv!95752 (xs!19302 (left!56882 (right!57212 t!4440)))) e!4681595))))

(assert (=> b!7933308 (= tp!2359118 (and (inv!95753 (left!56882 (right!57212 t!4440))) e!4681596))))

(assert (= (and b!7933308 ((_ is Node!15908) (left!56882 (right!57212 t!4440)))) b!7933697))

(assert (= b!7933698 b!7933699))

(assert (= (and b!7933308 ((_ is Leaf!30243) (left!56882 (right!57212 t!4440)))) b!7933698))

(declare-fun m!8320784 () Bool)

(assert (=> b!7933697 m!8320784))

(declare-fun m!8320786 () Bool)

(assert (=> b!7933697 m!8320786))

(declare-fun m!8320788 () Bool)

(assert (=> b!7933698 m!8320788))

(assert (=> b!7933308 m!8320060))

(declare-fun e!4681598 () Bool)

(declare-fun tp!2359157 () Bool)

(declare-fun b!7933700 () Bool)

(declare-fun tp!2359155 () Bool)

(assert (=> b!7933700 (= e!4681598 (and (inv!95753 (left!56882 (right!57212 (right!57212 t!4440)))) tp!2359157 (inv!95753 (right!57212 (right!57212 (right!57212 t!4440)))) tp!2359155))))

(declare-fun b!7933702 () Bool)

(declare-fun e!4681597 () Bool)

(declare-fun tp!2359156 () Bool)

(assert (=> b!7933702 (= e!4681597 tp!2359156)))

(declare-fun b!7933701 () Bool)

(assert (=> b!7933701 (= e!4681598 (and (inv!95752 (xs!19302 (right!57212 (right!57212 t!4440)))) e!4681597))))

(assert (=> b!7933308 (= tp!2359116 (and (inv!95753 (right!57212 (right!57212 t!4440))) e!4681598))))

(assert (= (and b!7933308 ((_ is Node!15908) (right!57212 (right!57212 t!4440)))) b!7933700))

(assert (= b!7933701 b!7933702))

(assert (= (and b!7933308 ((_ is Leaf!30243) (right!57212 (right!57212 t!4440)))) b!7933701))

(declare-fun m!8320790 () Bool)

(assert (=> b!7933700 m!8320790))

(declare-fun m!8320792 () Bool)

(assert (=> b!7933700 m!8320792))

(declare-fun m!8320794 () Bool)

(assert (=> b!7933701 m!8320794))

(assert (=> b!7933308 m!8320062))

(declare-fun tp!2359160 () Bool)

(declare-fun b!7933703 () Bool)

(declare-fun e!4681600 () Bool)

(declare-fun tp!2359158 () Bool)

(assert (=> b!7933703 (= e!4681600 (and (inv!95753 (left!56882 (left!56882 (right!57212 err!4705)))) tp!2359160 (inv!95753 (right!57212 (left!56882 (right!57212 err!4705)))) tp!2359158))))

(declare-fun b!7933705 () Bool)

(declare-fun e!4681599 () Bool)

(declare-fun tp!2359159 () Bool)

(assert (=> b!7933705 (= e!4681599 tp!2359159)))

(declare-fun b!7933704 () Bool)

(assert (=> b!7933704 (= e!4681600 (and (inv!95752 (xs!19302 (left!56882 (right!57212 err!4705)))) e!4681599))))

(assert (=> b!7933302 (= tp!2359112 (and (inv!95753 (left!56882 (right!57212 err!4705))) e!4681600))))

(assert (= (and b!7933302 ((_ is Node!15908) (left!56882 (right!57212 err!4705)))) b!7933703))

(assert (= b!7933704 b!7933705))

(assert (= (and b!7933302 ((_ is Leaf!30243) (left!56882 (right!57212 err!4705)))) b!7933704))

(declare-fun m!8320796 () Bool)

(assert (=> b!7933703 m!8320796))

(declare-fun m!8320798 () Bool)

(assert (=> b!7933703 m!8320798))

(declare-fun m!8320800 () Bool)

(assert (=> b!7933704 m!8320800))

(assert (=> b!7933302 m!8320048))

(declare-fun e!4681602 () Bool)

(declare-fun tp!2359161 () Bool)

(declare-fun b!7933706 () Bool)

(declare-fun tp!2359163 () Bool)

(assert (=> b!7933706 (= e!4681602 (and (inv!95753 (left!56882 (right!57212 (right!57212 err!4705)))) tp!2359163 (inv!95753 (right!57212 (right!57212 (right!57212 err!4705)))) tp!2359161))))

(declare-fun b!7933708 () Bool)

(declare-fun e!4681601 () Bool)

(declare-fun tp!2359162 () Bool)

(assert (=> b!7933708 (= e!4681601 tp!2359162)))

(declare-fun b!7933707 () Bool)

(assert (=> b!7933707 (= e!4681602 (and (inv!95752 (xs!19302 (right!57212 (right!57212 err!4705)))) e!4681601))))

(assert (=> b!7933302 (= tp!2359110 (and (inv!95753 (right!57212 (right!57212 err!4705))) e!4681602))))

(assert (= (and b!7933302 ((_ is Node!15908) (right!57212 (right!57212 err!4705)))) b!7933706))

(assert (= b!7933707 b!7933708))

(assert (= (and b!7933302 ((_ is Leaf!30243) (right!57212 (right!57212 err!4705)))) b!7933707))

(declare-fun m!8320802 () Bool)

(assert (=> b!7933706 m!8320802))

(declare-fun m!8320804 () Bool)

(assert (=> b!7933706 m!8320804))

(declare-fun m!8320806 () Bool)

(assert (=> b!7933707 m!8320806))

(assert (=> b!7933302 m!8320050))

(declare-fun b!7933709 () Bool)

(declare-fun e!4681603 () Bool)

(declare-fun tp!2359164 () Bool)

(assert (=> b!7933709 (= e!4681603 (and tp_is_empty!53241 tp!2359164))))

(assert (=> b!7933307 (= tp!2359114 e!4681603)))

(assert (= (and b!7933307 ((_ is Cons!74454) (innerList!15996 (xs!19302 (left!56882 t!4440))))) b!7933709))

(declare-fun b!7933710 () Bool)

(declare-fun e!4681604 () Bool)

(declare-fun tp!2359165 () Bool)

(assert (=> b!7933710 (= e!4681604 (and tp_is_empty!53241 tp!2359165))))

(assert (=> b!7933315 (= tp!2359121 e!4681604)))

(assert (= (and b!7933315 ((_ is Cons!74454) (t!390235 (innerList!15996 (xs!19302 t!4440))))) b!7933710))

(declare-fun b!7933711 () Bool)

(declare-fun e!4681605 () Bool)

(declare-fun tp!2359166 () Bool)

(assert (=> b!7933711 (= e!4681605 (and tp_is_empty!53241 tp!2359166))))

(assert (=> b!7933301 (= tp!2359108 e!4681605)))

(assert (= (and b!7933301 ((_ is Cons!74454) (innerList!15996 (xs!19302 (left!56882 err!4705))))) b!7933711))

(declare-fun b!7933712 () Bool)

(declare-fun e!4681606 () Bool)

(declare-fun tp!2359167 () Bool)

(assert (=> b!7933712 (= e!4681606 (and tp_is_empty!53241 tp!2359167))))

(assert (=> b!7933310 (= tp!2359117 e!4681606)))

(assert (= (and b!7933310 ((_ is Cons!74454) (innerList!15996 (xs!19302 (right!57212 t!4440))))) b!7933712))

(declare-fun tp!2359170 () Bool)

(declare-fun b!7933713 () Bool)

(declare-fun tp!2359168 () Bool)

(declare-fun e!4681608 () Bool)

(assert (=> b!7933713 (= e!4681608 (and (inv!95753 (left!56882 (left!56882 (left!56882 t!4440)))) tp!2359170 (inv!95753 (right!57212 (left!56882 (left!56882 t!4440)))) tp!2359168))))

(declare-fun b!7933715 () Bool)

(declare-fun e!4681607 () Bool)

(declare-fun tp!2359169 () Bool)

(assert (=> b!7933715 (= e!4681607 tp!2359169)))

(declare-fun b!7933714 () Bool)

(assert (=> b!7933714 (= e!4681608 (and (inv!95752 (xs!19302 (left!56882 (left!56882 t!4440)))) e!4681607))))

(assert (=> b!7933305 (= tp!2359115 (and (inv!95753 (left!56882 (left!56882 t!4440))) e!4681608))))

(assert (= (and b!7933305 ((_ is Node!15908) (left!56882 (left!56882 t!4440)))) b!7933713))

(assert (= b!7933714 b!7933715))

(assert (= (and b!7933305 ((_ is Leaf!30243) (left!56882 (left!56882 t!4440)))) b!7933714))

(declare-fun m!8320808 () Bool)

(assert (=> b!7933713 m!8320808))

(declare-fun m!8320810 () Bool)

(assert (=> b!7933713 m!8320810))

(declare-fun m!8320812 () Bool)

(assert (=> b!7933714 m!8320812))

(assert (=> b!7933305 m!8320054))

(declare-fun tp!2359171 () Bool)

(declare-fun b!7933716 () Bool)

(declare-fun e!4681610 () Bool)

(declare-fun tp!2359173 () Bool)

(assert (=> b!7933716 (= e!4681610 (and (inv!95753 (left!56882 (right!57212 (left!56882 t!4440)))) tp!2359173 (inv!95753 (right!57212 (right!57212 (left!56882 t!4440)))) tp!2359171))))

(declare-fun b!7933718 () Bool)

(declare-fun e!4681609 () Bool)

(declare-fun tp!2359172 () Bool)

(assert (=> b!7933718 (= e!4681609 tp!2359172)))

(declare-fun b!7933717 () Bool)

(assert (=> b!7933717 (= e!4681610 (and (inv!95752 (xs!19302 (right!57212 (left!56882 t!4440)))) e!4681609))))

(assert (=> b!7933305 (= tp!2359113 (and (inv!95753 (right!57212 (left!56882 t!4440))) e!4681610))))

(assert (= (and b!7933305 ((_ is Node!15908) (right!57212 (left!56882 t!4440)))) b!7933716))

(assert (= b!7933717 b!7933718))

(assert (= (and b!7933305 ((_ is Leaf!30243) (right!57212 (left!56882 t!4440)))) b!7933717))

(declare-fun m!8320814 () Bool)

(assert (=> b!7933716 m!8320814))

(declare-fun m!8320816 () Bool)

(assert (=> b!7933716 m!8320816))

(declare-fun m!8320818 () Bool)

(assert (=> b!7933717 m!8320818))

(assert (=> b!7933305 m!8320056))

(declare-fun b!7933719 () Bool)

(declare-fun e!4681611 () Bool)

(declare-fun tp!2359174 () Bool)

(assert (=> b!7933719 (= e!4681611 (and tp_is_empty!53241 tp!2359174))))

(assert (=> b!7933316 (= tp!2359122 e!4681611)))

(assert (= (and b!7933316 ((_ is Cons!74454) (t!390235 (innerList!15996 (xs!19302 err!4705))))) b!7933719))

(check-sat (not b!7933693) (not b!7933672) (not b!7933697) (not b!7933699) (not b!7933707) (not b!7933690) (not b!7933442) (not b!7933530) (not d!2371769) (not b!7933497) (not b!7933448) (not d!2371799) (not d!2371747) (not b!7933628) (not b!7933715) (not b!7933639) (not b!7933544) (not b!7933714) (not b!7933608) (not b!7933507) (not d!2371729) (not b!7933631) (not b!7933308) (not b!7933575) (not b!7933682) (not b!7933520) (not b!7933454) (not d!2371867) (not b!7933584) (not bm!735583) (not d!2371779) (not b!7933526) (not b!7933572) (not b!7933557) (not b!7933305) (not d!2371819) (not b!7933706) (not b!7933614) (not b!7933569) (not bm!735592) (not b!7933695) (not b!7933543) (not b!7933696) (not d!2371859) (not b!7933617) (not bm!735584) (not b!7933705) (not d!2371839) (not b!7933648) (not d!2371711) (not b!7933534) (not d!2371855) (not d!2371787) (not b!7933552) (not d!2371801) (not b!7933662) (not bm!735586) (not b!7933484) (not b!7933718) (not bm!735587) (not b!7933589) (not d!2371725) (not b!7933565) (not b!7933554) (not b!7933499) (not d!2371709) (not b!7933570) (not b!7933447) (not b!7933624) (not d!2371731) (not b!7933451) (not b!7933694) (not b!7933643) (not b!7933490) (not b!7933644) (not b!7933606) (not b!7933640) (not d!2371755) (not b!7933713) (not d!2371721) (not b!7933555) (not bm!735582) (not b!7933470) (not bm!735580) (not b!7933483) (not b!7933673) (not b!7933654) (not b!7933612) (not b!7933516) (not b!7933478) (not b!7933702) (not d!2371857) (not b!7933649) (not b!7933485) (not b!7933431) (not b!7933453) (not b!7933677) (not b!7933681) (not b!7933666) (not b!7933583) (not d!2371813) (not b!7933576) (not b!7933561) (not b!7933456) (not b!7933560) (not b!7933636) (not b!7933653) (not b!7933586) (not d!2371835) (not b!7933635) (not b!7933700) (not b!7933685) (not b!7933658) (not b!7933535) (not b!7933519) (not b!7933457) (not b!7933651) (not b!7933537) (not d!2371825) (not b!7933646) (not d!2371865) (not b!7933538) (not d!2371723) (not bm!735593) (not b!7933574) (not b!7933302) (not d!2371847) (not d!2371795) (not b!7933609) (not d!2371761) (not b!7933625) (not d!2371821) (not b!7933458) (not d!2371833) (not b!7933580) (not b!7933491) (not b!7933678) (not b!7933684) (not b!7933504) (not b!7933509) (not b!7933545) (not d!2371745) (not b!7933501) (not b!7933567) (not b!7933710) (not b!7933506) (not b!7933660) (not b!7933503) (not b!7933540) (not bm!735590) (not b!7933541) (not b!7933602) (not b!7933480) (not bm!735578) (not d!2371837) (not d!2371845) (not b!7933669) (not b!7933511) (not b!7933712) (not b!7933299) (not bm!735589) (not b!7933532) (not b!7933547) (not b!7933708) (not b!7933711) (not bm!735591) (not b!7933553) (not b!7933582) (not bm!735588) (not b!7933703) (not b!7933577) (not b!7933573) (not b!7933546) (not b!7933657) (not b!7933528) (not b!7933663) (not bm!735579) (not d!2371739) tp_is_empty!53241 (not b!7933455) (not b!7933698) (not b!7933539) (not b!7933443) (not b!7933548) (not d!2371713) (not b!7933709) (not b!7933611) (not b!7933578) (not b!7933564) (not b!7933482) (not b!7933487) (not b!7933704) (not b!7933691) (not b!7933551) (not b!7933486) (not b!7933598) (not d!2371811) (not b!7933701) (not b!7933632) (not b!7933510) (not b!7933716) (not bm!735581) (not b!7933692) (not b!7933688) (not b!7933629) (not b!7933513) (not b!7933621) (not d!2371853) (not b!7933542) (not b!7933665) (not d!2371785) (not b!7933595) (not b!7933452) (not b!7933597) (not b!7933719) (not d!2371831) (not b!7933717))
(check-sat)
