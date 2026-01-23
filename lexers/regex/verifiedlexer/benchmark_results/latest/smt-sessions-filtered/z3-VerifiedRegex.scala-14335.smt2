; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!748766 () Bool)

(assert start!748766)

(declare-fun res!3147803 () Bool)

(declare-fun e!4681772 () Bool)

(assert (=> start!748766 (=> (not res!3147803) (not e!4681772))))

(declare-datatypes ((T!145860 0))(
  ( (T!145861 (val!32068 Int)) )
))
(declare-datatypes ((List!74580 0))(
  ( (Nil!74456) (Cons!74456 (h!80904 T!145860) (t!390249 List!74580)) )
))
(declare-datatypes ((IArray!31881 0))(
  ( (IArray!31882 (innerList!15998 List!74580)) )
))
(declare-datatypes ((Conc!15910 0))(
  ( (Node!15910 (left!56885 Conc!15910) (right!57215 Conc!15910) (csize!32050 Int) (cheight!16121 Int)) (Leaf!30246 (xs!19306 IArray!31881) (csize!32051 Int)) (Empty!15910) )
))
(declare-fun t!4440 () Conc!15910)

(declare-fun isBalanced!4536 (Conc!15910) Bool)

(assert (=> start!748766 (= res!3147803 (isBalanced!4536 t!4440))))

(assert (=> start!748766 e!4681772))

(declare-fun e!4681773 () Bool)

(declare-fun inv!95763 (Conc!15910) Bool)

(assert (=> start!748766 (and (inv!95763 t!4440) e!4681773)))

(declare-fun tp_is_empty!53245 () Bool)

(assert (=> start!748766 tp_is_empty!53245))

(declare-fun b!7934043 () Bool)

(declare-fun e!4681774 () Bool)

(declare-fun tp!2359221 () Bool)

(assert (=> b!7934043 (= e!4681774 tp!2359221)))

(declare-fun b!7934044 () Bool)

(declare-fun v!5484 () T!145860)

(declare-fun append!1160 (IArray!31881 T!145860) IArray!31881)

(assert (=> b!7934044 (= e!4681772 (not (inv!95763 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))

(declare-fun b!7934045 () Bool)

(declare-fun res!3147802 () Bool)

(assert (=> b!7934045 (=> (not res!3147802) (not e!4681772))))

(declare-fun size!43270 (List!74580) Int)

(declare-fun $colon+!323 (List!74580 T!145860) List!74580)

(declare-fun list!19429 (IArray!31881) List!74580)

(assert (=> b!7934045 (= res!3147802 (= (size!43270 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)) (+ 1 (csize!32051 t!4440))))))

(declare-fun b!7934046 () Bool)

(declare-fun res!3147804 () Bool)

(assert (=> b!7934046 (=> (not res!3147804) (not e!4681772))))

(get-info :version)

(assert (=> b!7934046 (= res!3147804 (and (not ((_ is Empty!15910) t!4440)) (not ((_ is Node!15910) t!4440)) (< (csize!32051 t!4440) 512)))))

(declare-fun b!7934047 () Bool)

(declare-fun inv!95764 (IArray!31881) Bool)

(assert (=> b!7934047 (= e!4681773 (and (inv!95764 (xs!19306 t!4440)) e!4681774))))

(declare-fun tp!2359220 () Bool)

(declare-fun tp!2359222 () Bool)

(declare-fun b!7934048 () Bool)

(assert (=> b!7934048 (= e!4681773 (and (inv!95763 (left!56885 t!4440)) tp!2359222 (inv!95763 (right!57215 t!4440)) tp!2359220))))

(assert (= (and start!748766 res!3147803) b!7934046))

(assert (= (and b!7934046 res!3147804) b!7934045))

(assert (= (and b!7934045 res!3147802) b!7934044))

(assert (= (and start!748766 ((_ is Node!15910) t!4440)) b!7934048))

(assert (= b!7934047 b!7934043))

(assert (= (and start!748766 ((_ is Leaf!30246) t!4440)) b!7934047))

(declare-fun m!8321436 () Bool)

(assert (=> b!7934047 m!8321436))

(declare-fun m!8321438 () Bool)

(assert (=> b!7934044 m!8321438))

(declare-fun m!8321440 () Bool)

(assert (=> b!7934044 m!8321440))

(declare-fun m!8321442 () Bool)

(assert (=> start!748766 m!8321442))

(declare-fun m!8321444 () Bool)

(assert (=> start!748766 m!8321444))

(declare-fun m!8321446 () Bool)

(assert (=> b!7934048 m!8321446))

(declare-fun m!8321448 () Bool)

(assert (=> b!7934048 m!8321448))

(declare-fun m!8321450 () Bool)

(assert (=> b!7934045 m!8321450))

(assert (=> b!7934045 m!8321450))

(declare-fun m!8321452 () Bool)

(assert (=> b!7934045 m!8321452))

(assert (=> b!7934045 m!8321452))

(declare-fun m!8321454 () Bool)

(assert (=> b!7934045 m!8321454))

(check-sat (not b!7934043) (not b!7934048) (not b!7934045) (not start!748766) tp_is_empty!53245 (not b!7934044) (not b!7934047))
(check-sat)
(get-model)

(declare-fun d!2372032 () Bool)

(declare-fun lt!2694997 () Int)

(assert (=> d!2372032 (>= lt!2694997 0)))

(declare-fun e!4681781 () Int)

(assert (=> d!2372032 (= lt!2694997 e!4681781)))

(declare-fun c!1457599 () Bool)

(assert (=> d!2372032 (= c!1457599 ((_ is Nil!74456) ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)))))

(assert (=> d!2372032 (= (size!43270 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)) lt!2694997)))

(declare-fun b!7934059 () Bool)

(assert (=> b!7934059 (= e!4681781 0)))

(declare-fun b!7934060 () Bool)

(assert (=> b!7934060 (= e!4681781 (+ 1 (size!43270 (t!390249 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)))))))

(assert (= (and d!2372032 c!1457599) b!7934059))

(assert (= (and d!2372032 (not c!1457599)) b!7934060))

(declare-fun m!8321458 () Bool)

(assert (=> b!7934060 m!8321458))

(assert (=> b!7934045 d!2372032))

(declare-fun b!7934101 () Bool)

(declare-fun res!3147823 () Bool)

(declare-fun e!4681803 () Bool)

(assert (=> b!7934101 (=> (not res!3147823) (not e!4681803))))

(declare-fun lt!2695005 () List!74580)

(assert (=> b!7934101 (= res!3147823 (= (size!43270 lt!2695005) (+ (size!43270 (list!19429 (xs!19306 t!4440))) 1)))))

(declare-fun bm!735618 () Bool)

(declare-fun call!735624 () (_ BitVec 32))

(declare-fun isize!126 (List!74580) (_ BitVec 32))

(assert (=> bm!735618 (= call!735624 (isize!126 (list!19429 (xs!19306 t!4440))))))

(declare-fun bm!735619 () Bool)

(declare-fun call!735623 () (_ BitVec 32))

(assert (=> bm!735619 (= call!735623 (isize!126 lt!2695005))))

(declare-fun b!7934103 () Bool)

(declare-fun res!3147824 () Bool)

(assert (=> b!7934103 (=> (not res!3147824) (not e!4681803))))

(declare-fun e!4681801 () Bool)

(assert (=> b!7934103 (= res!3147824 e!4681801)))

(declare-fun c!1457614 () Bool)

(assert (=> b!7934103 (= c!1457614 (bvslt (isize!126 (list!19429 (xs!19306 t!4440))) #b01111111111111111111111111111111))))

(declare-fun b!7934104 () Bool)

(declare-fun res!3147825 () Bool)

(assert (=> b!7934104 (=> (not res!3147825) (not e!4681803))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15790 (List!74580) (InoxSet T!145860))

(assert (=> b!7934104 (= res!3147825 (= (content!15790 lt!2695005) ((_ map or) (content!15790 (list!19429 (xs!19306 t!4440))) (store ((as const (Array T!145860 Bool)) false) v!5484 true))))))

(declare-fun b!7934105 () Bool)

(declare-fun e!4681802 () List!74580)

(assert (=> b!7934105 (= e!4681802 (Cons!74456 (h!80904 (list!19429 (xs!19306 t!4440))) ($colon+!323 (t!390249 (list!19429 (xs!19306 t!4440))) v!5484)))))

(declare-fun b!7934106 () Bool)

(assert (=> b!7934106 (= e!4681801 (= call!735623 call!735624))))

(declare-fun b!7934107 () Bool)

(assert (=> b!7934107 (= e!4681801 (= call!735623 (bvadd call!735624 #b00000000000000000000000000000001)))))

(declare-fun b!7934108 () Bool)

(assert (=> b!7934108 (= e!4681802 (Cons!74456 v!5484 (list!19429 (xs!19306 t!4440))))))

(declare-fun d!2372036 () Bool)

(assert (=> d!2372036 e!4681803))

(declare-fun res!3147826 () Bool)

(assert (=> d!2372036 (=> (not res!3147826) (not e!4681803))))

(assert (=> d!2372036 (= res!3147826 ((_ is Cons!74456) lt!2695005))))

(assert (=> d!2372036 (= lt!2695005 e!4681802)))

(declare-fun c!1457613 () Bool)

(assert (=> d!2372036 (= c!1457613 ((_ is Nil!74456) (list!19429 (xs!19306 t!4440))))))

(assert (=> d!2372036 (= ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484) lt!2695005)))

(declare-fun b!7934102 () Bool)

(declare-fun ++!18266 (List!74580 List!74580) List!74580)

(assert (=> b!7934102 (= e!4681803 (= lt!2695005 (++!18266 (list!19429 (xs!19306 t!4440)) (Cons!74456 v!5484 Nil!74456))))))

(assert (= (and d!2372036 c!1457613) b!7934108))

(assert (= (and d!2372036 (not c!1457613)) b!7934105))

(assert (= (and d!2372036 res!3147826) b!7934101))

(assert (= (and b!7934101 res!3147823) b!7934103))

(assert (= (and b!7934103 c!1457614) b!7934107))

(assert (= (and b!7934103 (not c!1457614)) b!7934106))

(assert (= (or b!7934107 b!7934106) bm!735619))

(assert (= (or b!7934107 b!7934106) bm!735618))

(assert (= (and b!7934103 res!3147824) b!7934104))

(assert (= (and b!7934104 res!3147825) b!7934102))

(assert (=> b!7934103 m!8321450))

(declare-fun m!8321470 () Bool)

(assert (=> b!7934103 m!8321470))

(declare-fun m!8321472 () Bool)

(assert (=> b!7934104 m!8321472))

(assert (=> b!7934104 m!8321450))

(declare-fun m!8321474 () Bool)

(assert (=> b!7934104 m!8321474))

(declare-fun m!8321476 () Bool)

(assert (=> b!7934104 m!8321476))

(assert (=> b!7934102 m!8321450))

(declare-fun m!8321478 () Bool)

(assert (=> b!7934102 m!8321478))

(declare-fun m!8321480 () Bool)

(assert (=> bm!735619 m!8321480))

(assert (=> bm!735618 m!8321450))

(assert (=> bm!735618 m!8321470))

(declare-fun m!8321482 () Bool)

(assert (=> b!7934105 m!8321482))

(declare-fun m!8321484 () Bool)

(assert (=> b!7934101 m!8321484))

(assert (=> b!7934101 m!8321450))

(declare-fun m!8321486 () Bool)

(assert (=> b!7934101 m!8321486))

(assert (=> b!7934045 d!2372036))

(declare-fun d!2372044 () Bool)

(assert (=> d!2372044 (= (list!19429 (xs!19306 t!4440)) (innerList!15998 (xs!19306 t!4440)))))

(assert (=> b!7934045 d!2372044))

(declare-fun d!2372046 () Bool)

(assert (=> d!2372046 (= (inv!95764 (xs!19306 t!4440)) (<= (size!43270 (innerList!15998 (xs!19306 t!4440))) 2147483647))))

(declare-fun bs!1969078 () Bool)

(assert (= bs!1969078 d!2372046))

(declare-fun m!8321488 () Bool)

(assert (=> bs!1969078 m!8321488))

(assert (=> b!7934047 d!2372046))

(declare-fun d!2372048 () Bool)

(declare-fun c!1457620 () Bool)

(assert (=> d!2372048 (= c!1457620 ((_ is Node!15910) (left!56885 t!4440)))))

(declare-fun e!4681813 () Bool)

(assert (=> d!2372048 (= (inv!95763 (left!56885 t!4440)) e!4681813)))

(declare-fun b!7934130 () Bool)

(declare-fun inv!95767 (Conc!15910) Bool)

(assert (=> b!7934130 (= e!4681813 (inv!95767 (left!56885 t!4440)))))

(declare-fun b!7934131 () Bool)

(declare-fun e!4681814 () Bool)

(assert (=> b!7934131 (= e!4681813 e!4681814)))

(declare-fun res!3147836 () Bool)

(assert (=> b!7934131 (= res!3147836 (not ((_ is Leaf!30246) (left!56885 t!4440))))))

(assert (=> b!7934131 (=> res!3147836 e!4681814)))

(declare-fun b!7934132 () Bool)

(declare-fun inv!95768 (Conc!15910) Bool)

(assert (=> b!7934132 (= e!4681814 (inv!95768 (left!56885 t!4440)))))

(assert (= (and d!2372048 c!1457620) b!7934130))

(assert (= (and d!2372048 (not c!1457620)) b!7934131))

(assert (= (and b!7934131 (not res!3147836)) b!7934132))

(declare-fun m!8321512 () Bool)

(assert (=> b!7934130 m!8321512))

(declare-fun m!8321514 () Bool)

(assert (=> b!7934132 m!8321514))

(assert (=> b!7934048 d!2372048))

(declare-fun d!2372056 () Bool)

(declare-fun c!1457621 () Bool)

(assert (=> d!2372056 (= c!1457621 ((_ is Node!15910) (right!57215 t!4440)))))

(declare-fun e!4681815 () Bool)

(assert (=> d!2372056 (= (inv!95763 (right!57215 t!4440)) e!4681815)))

(declare-fun b!7934133 () Bool)

(assert (=> b!7934133 (= e!4681815 (inv!95767 (right!57215 t!4440)))))

(declare-fun b!7934134 () Bool)

(declare-fun e!4681816 () Bool)

(assert (=> b!7934134 (= e!4681815 e!4681816)))

(declare-fun res!3147837 () Bool)

(assert (=> b!7934134 (= res!3147837 (not ((_ is Leaf!30246) (right!57215 t!4440))))))

(assert (=> b!7934134 (=> res!3147837 e!4681816)))

(declare-fun b!7934135 () Bool)

(assert (=> b!7934135 (= e!4681816 (inv!95768 (right!57215 t!4440)))))

(assert (= (and d!2372056 c!1457621) b!7934133))

(assert (= (and d!2372056 (not c!1457621)) b!7934134))

(assert (= (and b!7934134 (not res!3147837)) b!7934135))

(declare-fun m!8321516 () Bool)

(assert (=> b!7934133 m!8321516))

(declare-fun m!8321518 () Bool)

(assert (=> b!7934135 m!8321518))

(assert (=> b!7934048 d!2372056))

(declare-fun d!2372058 () Bool)

(declare-fun c!1457622 () Bool)

(assert (=> d!2372058 (= c!1457622 ((_ is Node!15910) (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))

(declare-fun e!4681817 () Bool)

(assert (=> d!2372058 (= (inv!95763 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) e!4681817)))

(declare-fun b!7934136 () Bool)

(assert (=> b!7934136 (= e!4681817 (inv!95767 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))

(declare-fun b!7934137 () Bool)

(declare-fun e!4681818 () Bool)

(assert (=> b!7934137 (= e!4681817 e!4681818)))

(declare-fun res!3147838 () Bool)

(assert (=> b!7934137 (= res!3147838 (not ((_ is Leaf!30246) (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))

(assert (=> b!7934137 (=> res!3147838 e!4681818)))

(declare-fun b!7934138 () Bool)

(assert (=> b!7934138 (= e!4681818 (inv!95768 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))

(assert (= (and d!2372058 c!1457622) b!7934136))

(assert (= (and d!2372058 (not c!1457622)) b!7934137))

(assert (= (and b!7934137 (not res!3147838)) b!7934138))

(declare-fun m!8321520 () Bool)

(assert (=> b!7934136 m!8321520))

(declare-fun m!8321522 () Bool)

(assert (=> b!7934138 m!8321522))

(assert (=> b!7934044 d!2372058))

(declare-fun d!2372060 () Bool)

(declare-fun lt!2695012 () IArray!31881)

(assert (=> d!2372060 (= lt!2695012 (IArray!31882 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)))))

(declare-fun choose!59852 (IArray!31881 T!145860) IArray!31881)

(assert (=> d!2372060 (= lt!2695012 (choose!59852 (xs!19306 t!4440) v!5484))))

(declare-fun size!43271 (IArray!31881) Int)

(assert (=> d!2372060 (<= (+ (size!43271 (xs!19306 t!4440)) 1) 2147483647)))

(assert (=> d!2372060 (= (append!1160 (xs!19306 t!4440) v!5484) lt!2695012)))

(declare-fun bs!1969080 () Bool)

(assert (= bs!1969080 d!2372060))

(assert (=> bs!1969080 m!8321450))

(assert (=> bs!1969080 m!8321450))

(assert (=> bs!1969080 m!8321452))

(declare-fun m!8321528 () Bool)

(assert (=> bs!1969080 m!8321528))

(declare-fun m!8321530 () Bool)

(assert (=> bs!1969080 m!8321530))

(assert (=> b!7934044 d!2372060))

(declare-fun b!7934177 () Bool)

(declare-fun res!3147870 () Bool)

(declare-fun e!4681835 () Bool)

(assert (=> b!7934177 (=> (not res!3147870) (not e!4681835))))

(assert (=> b!7934177 (= res!3147870 (isBalanced!4536 (right!57215 t!4440)))))

(declare-fun b!7934178 () Bool)

(declare-fun res!3147871 () Bool)

(assert (=> b!7934178 (=> (not res!3147871) (not e!4681835))))

(declare-fun height!2224 (Conc!15910) Int)

(assert (=> b!7934178 (= res!3147871 (<= (- (height!2224 (left!56885 t!4440)) (height!2224 (right!57215 t!4440))) 1))))

(declare-fun b!7934180 () Bool)

(declare-fun res!3147873 () Bool)

(assert (=> b!7934180 (=> (not res!3147873) (not e!4681835))))

(declare-fun isEmpty!42791 (Conc!15910) Bool)

(assert (=> b!7934180 (= res!3147873 (not (isEmpty!42791 (left!56885 t!4440))))))

(declare-fun b!7934181 () Bool)

(assert (=> b!7934181 (= e!4681835 (not (isEmpty!42791 (right!57215 t!4440))))))

(declare-fun b!7934182 () Bool)

(declare-fun res!3147874 () Bool)

(assert (=> b!7934182 (=> (not res!3147874) (not e!4681835))))

(assert (=> b!7934182 (= res!3147874 (isBalanced!4536 (left!56885 t!4440)))))

(declare-fun d!2372064 () Bool)

(declare-fun res!3147875 () Bool)

(declare-fun e!4681834 () Bool)

(assert (=> d!2372064 (=> res!3147875 e!4681834)))

(assert (=> d!2372064 (= res!3147875 (not ((_ is Node!15910) t!4440)))))

(assert (=> d!2372064 (= (isBalanced!4536 t!4440) e!4681834)))

(declare-fun b!7934179 () Bool)

(assert (=> b!7934179 (= e!4681834 e!4681835)))

(declare-fun res!3147872 () Bool)

(assert (=> b!7934179 (=> (not res!3147872) (not e!4681835))))

(assert (=> b!7934179 (= res!3147872 (<= (- 1) (- (height!2224 (left!56885 t!4440)) (height!2224 (right!57215 t!4440)))))))

(assert (= (and d!2372064 (not res!3147875)) b!7934179))

(assert (= (and b!7934179 res!3147872) b!7934178))

(assert (= (and b!7934178 res!3147871) b!7934182))

(assert (= (and b!7934182 res!3147874) b!7934177))

(assert (= (and b!7934177 res!3147870) b!7934180))

(assert (= (and b!7934180 res!3147873) b!7934181))

(declare-fun m!8321548 () Bool)

(assert (=> b!7934179 m!8321548))

(declare-fun m!8321550 () Bool)

(assert (=> b!7934179 m!8321550))

(declare-fun m!8321552 () Bool)

(assert (=> b!7934177 m!8321552))

(assert (=> b!7934178 m!8321548))

(assert (=> b!7934178 m!8321550))

(declare-fun m!8321554 () Bool)

(assert (=> b!7934180 m!8321554))

(declare-fun m!8321556 () Bool)

(assert (=> b!7934182 m!8321556))

(declare-fun m!8321558 () Bool)

(assert (=> b!7934181 m!8321558))

(assert (=> start!748766 d!2372064))

(declare-fun d!2372068 () Bool)

(declare-fun c!1457624 () Bool)

(assert (=> d!2372068 (= c!1457624 ((_ is Node!15910) t!4440))))

(declare-fun e!4681840 () Bool)

(assert (=> d!2372068 (= (inv!95763 t!4440) e!4681840)))

(declare-fun b!7934191 () Bool)

(assert (=> b!7934191 (= e!4681840 (inv!95767 t!4440))))

(declare-fun b!7934192 () Bool)

(declare-fun e!4681841 () Bool)

(assert (=> b!7934192 (= e!4681840 e!4681841)))

(declare-fun res!3147876 () Bool)

(assert (=> b!7934192 (= res!3147876 (not ((_ is Leaf!30246) t!4440)))))

(assert (=> b!7934192 (=> res!3147876 e!4681841)))

(declare-fun b!7934193 () Bool)

(assert (=> b!7934193 (= e!4681841 (inv!95768 t!4440))))

(assert (= (and d!2372068 c!1457624) b!7934191))

(assert (= (and d!2372068 (not c!1457624)) b!7934192))

(assert (= (and b!7934192 (not res!3147876)) b!7934193))

(declare-fun m!8321560 () Bool)

(assert (=> b!7934191 m!8321560))

(declare-fun m!8321562 () Bool)

(assert (=> b!7934193 m!8321562))

(assert (=> start!748766 d!2372068))

(declare-fun b!7934201 () Bool)

(declare-fun e!4681846 () Bool)

(declare-fun tp!2359237 () Bool)

(assert (=> b!7934201 (= e!4681846 (and tp_is_empty!53245 tp!2359237))))

(assert (=> b!7934043 (= tp!2359221 e!4681846)))

(assert (= (and b!7934043 ((_ is Cons!74456) (innerList!15998 (xs!19306 t!4440)))) b!7934201))

(declare-fun tp!2359247 () Bool)

(declare-fun b!7934213 () Bool)

(declare-fun tp!2359248 () Bool)

(declare-fun e!4681853 () Bool)

(assert (=> b!7934213 (= e!4681853 (and (inv!95763 (left!56885 (left!56885 t!4440))) tp!2359247 (inv!95763 (right!57215 (left!56885 t!4440))) tp!2359248))))

(declare-fun b!7934215 () Bool)

(declare-fun e!4681854 () Bool)

(declare-fun tp!2359249 () Bool)

(assert (=> b!7934215 (= e!4681854 tp!2359249)))

(declare-fun b!7934214 () Bool)

(assert (=> b!7934214 (= e!4681853 (and (inv!95764 (xs!19306 (left!56885 t!4440))) e!4681854))))

(assert (=> b!7934048 (= tp!2359222 (and (inv!95763 (left!56885 t!4440)) e!4681853))))

(assert (= (and b!7934048 ((_ is Node!15910) (left!56885 t!4440))) b!7934213))

(assert (= b!7934214 b!7934215))

(assert (= (and b!7934048 ((_ is Leaf!30246) (left!56885 t!4440))) b!7934214))

(declare-fun m!8321576 () Bool)

(assert (=> b!7934213 m!8321576))

(declare-fun m!8321578 () Bool)

(assert (=> b!7934213 m!8321578))

(declare-fun m!8321580 () Bool)

(assert (=> b!7934214 m!8321580))

(assert (=> b!7934048 m!8321446))

(declare-fun tp!2359250 () Bool)

(declare-fun e!4681855 () Bool)

(declare-fun tp!2359251 () Bool)

(declare-fun b!7934216 () Bool)

(assert (=> b!7934216 (= e!4681855 (and (inv!95763 (left!56885 (right!57215 t!4440))) tp!2359250 (inv!95763 (right!57215 (right!57215 t!4440))) tp!2359251))))

(declare-fun b!7934218 () Bool)

(declare-fun e!4681856 () Bool)

(declare-fun tp!2359252 () Bool)

(assert (=> b!7934218 (= e!4681856 tp!2359252)))

(declare-fun b!7934217 () Bool)

(assert (=> b!7934217 (= e!4681855 (and (inv!95764 (xs!19306 (right!57215 t!4440))) e!4681856))))

(assert (=> b!7934048 (= tp!2359220 (and (inv!95763 (right!57215 t!4440)) e!4681855))))

(assert (= (and b!7934048 ((_ is Node!15910) (right!57215 t!4440))) b!7934216))

(assert (= b!7934217 b!7934218))

(assert (= (and b!7934048 ((_ is Leaf!30246) (right!57215 t!4440))) b!7934217))

(declare-fun m!8321582 () Bool)

(assert (=> b!7934216 m!8321582))

(declare-fun m!8321584 () Bool)

(assert (=> b!7934216 m!8321584))

(declare-fun m!8321586 () Bool)

(assert (=> b!7934217 m!8321586))

(assert (=> b!7934048 m!8321448))

(check-sat (not b!7934191) (not b!7934048) (not b!7934214) (not b!7934181) (not b!7934136) (not b!7934104) (not d!2372060) (not b!7934135) (not b!7934177) (not b!7934218) (not b!7934102) (not b!7934101) (not b!7934213) (not b!7934216) (not d!2372046) (not b!7934182) (not b!7934178) (not bm!735618) tp_is_empty!53245 (not b!7934201) (not b!7934130) (not b!7934215) (not b!7934133) (not b!7934132) (not bm!735619) (not b!7934138) (not b!7934179) (not b!7934105) (not b!7934193) (not b!7934217) (not b!7934180) (not b!7934060) (not b!7934103))
(check-sat)
(get-model)

(assert (=> d!2372060 d!2372036))

(assert (=> d!2372060 d!2372044))

(declare-fun d!2372070 () Bool)

(declare-fun _$6!638 () IArray!31881)

(assert (=> d!2372070 (= _$6!638 (IArray!31882 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)))))

(declare-fun e!4681859 () Bool)

(assert (=> d!2372070 (and (inv!95764 _$6!638) e!4681859)))

(assert (=> d!2372070 (= (choose!59852 (xs!19306 t!4440) v!5484) _$6!638)))

(declare-fun b!7934221 () Bool)

(declare-fun tp!2359255 () Bool)

(assert (=> b!7934221 (= e!4681859 tp!2359255)))

(assert (= d!2372070 b!7934221))

(assert (=> d!2372070 m!8321450))

(assert (=> d!2372070 m!8321450))

(assert (=> d!2372070 m!8321452))

(declare-fun m!8321588 () Bool)

(assert (=> d!2372070 m!8321588))

(assert (=> d!2372060 d!2372070))

(declare-fun d!2372072 () Bool)

(declare-fun lt!2695015 () Int)

(assert (=> d!2372072 (= lt!2695015 (size!43270 (list!19429 (xs!19306 t!4440))))))

(declare-fun choose!59854 (IArray!31881) Int)

(assert (=> d!2372072 (= lt!2695015 (choose!59854 (xs!19306 t!4440)))))

(assert (=> d!2372072 (= (size!43271 (xs!19306 t!4440)) lt!2695015)))

(declare-fun bs!1969081 () Bool)

(assert (= bs!1969081 d!2372072))

(assert (=> bs!1969081 m!8321450))

(assert (=> bs!1969081 m!8321450))

(assert (=> bs!1969081 m!8321486))

(declare-fun m!8321590 () Bool)

(assert (=> bs!1969081 m!8321590))

(assert (=> d!2372060 d!2372072))

(declare-fun d!2372074 () Bool)

(assert (=> d!2372074 (= (inv!95764 (xs!19306 (left!56885 t!4440))) (<= (size!43270 (innerList!15998 (xs!19306 (left!56885 t!4440)))) 2147483647))))

(declare-fun bs!1969082 () Bool)

(assert (= bs!1969082 d!2372074))

(declare-fun m!8321592 () Bool)

(assert (=> bs!1969082 m!8321592))

(assert (=> b!7934214 d!2372074))

(declare-fun d!2372076 () Bool)

(declare-fun lt!2695016 () Int)

(assert (=> d!2372076 (>= lt!2695016 0)))

(declare-fun e!4681860 () Int)

(assert (=> d!2372076 (= lt!2695016 e!4681860)))

(declare-fun c!1457625 () Bool)

(assert (=> d!2372076 (= c!1457625 ((_ is Nil!74456) (t!390249 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484))))))

(assert (=> d!2372076 (= (size!43270 (t!390249 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484))) lt!2695016)))

(declare-fun b!7934222 () Bool)

(assert (=> b!7934222 (= e!4681860 0)))

(declare-fun b!7934223 () Bool)

(assert (=> b!7934223 (= e!4681860 (+ 1 (size!43270 (t!390249 (t!390249 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484))))))))

(assert (= (and d!2372076 c!1457625) b!7934222))

(assert (= (and d!2372076 (not c!1457625)) b!7934223))

(declare-fun m!8321594 () Bool)

(assert (=> b!7934223 m!8321594))

(assert (=> b!7934060 d!2372076))

(declare-fun d!2372078 () Bool)

(declare-fun res!3147883 () Bool)

(declare-fun e!4681863 () Bool)

(assert (=> d!2372078 (=> (not res!3147883) (not e!4681863))))

(declare-fun size!43273 (Conc!15910) Int)

(assert (=> d!2372078 (= res!3147883 (= (csize!32050 (right!57215 t!4440)) (+ (size!43273 (left!56885 (right!57215 t!4440))) (size!43273 (right!57215 (right!57215 t!4440))))))))

(assert (=> d!2372078 (= (inv!95767 (right!57215 t!4440)) e!4681863)))

(declare-fun b!7934230 () Bool)

(declare-fun res!3147884 () Bool)

(assert (=> b!7934230 (=> (not res!3147884) (not e!4681863))))

(assert (=> b!7934230 (= res!3147884 (and (not (= (left!56885 (right!57215 t!4440)) Empty!15910)) (not (= (right!57215 (right!57215 t!4440)) Empty!15910))))))

(declare-fun b!7934231 () Bool)

(declare-fun res!3147885 () Bool)

(assert (=> b!7934231 (=> (not res!3147885) (not e!4681863))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!7934231 (= res!3147885 (= (cheight!16121 (right!57215 t!4440)) (+ (max!0 (height!2224 (left!56885 (right!57215 t!4440))) (height!2224 (right!57215 (right!57215 t!4440)))) 1)))))

(declare-fun b!7934232 () Bool)

(assert (=> b!7934232 (= e!4681863 (<= 0 (cheight!16121 (right!57215 t!4440))))))

(assert (= (and d!2372078 res!3147883) b!7934230))

(assert (= (and b!7934230 res!3147884) b!7934231))

(assert (= (and b!7934231 res!3147885) b!7934232))

(declare-fun m!8321596 () Bool)

(assert (=> d!2372078 m!8321596))

(declare-fun m!8321598 () Bool)

(assert (=> d!2372078 m!8321598))

(declare-fun m!8321600 () Bool)

(assert (=> b!7934231 m!8321600))

(declare-fun m!8321602 () Bool)

(assert (=> b!7934231 m!8321602))

(assert (=> b!7934231 m!8321600))

(assert (=> b!7934231 m!8321602))

(declare-fun m!8321604 () Bool)

(assert (=> b!7934231 m!8321604))

(assert (=> b!7934133 d!2372078))

(declare-fun d!2372080 () Bool)

(declare-fun c!1457626 () Bool)

(assert (=> d!2372080 (= c!1457626 ((_ is Node!15910) (left!56885 (left!56885 t!4440))))))

(declare-fun e!4681864 () Bool)

(assert (=> d!2372080 (= (inv!95763 (left!56885 (left!56885 t!4440))) e!4681864)))

(declare-fun b!7934233 () Bool)

(assert (=> b!7934233 (= e!4681864 (inv!95767 (left!56885 (left!56885 t!4440))))))

(declare-fun b!7934234 () Bool)

(declare-fun e!4681865 () Bool)

(assert (=> b!7934234 (= e!4681864 e!4681865)))

(declare-fun res!3147886 () Bool)

(assert (=> b!7934234 (= res!3147886 (not ((_ is Leaf!30246) (left!56885 (left!56885 t!4440)))))))

(assert (=> b!7934234 (=> res!3147886 e!4681865)))

(declare-fun b!7934235 () Bool)

(assert (=> b!7934235 (= e!4681865 (inv!95768 (left!56885 (left!56885 t!4440))))))

(assert (= (and d!2372080 c!1457626) b!7934233))

(assert (= (and d!2372080 (not c!1457626)) b!7934234))

(assert (= (and b!7934234 (not res!3147886)) b!7934235))

(declare-fun m!8321606 () Bool)

(assert (=> b!7934233 m!8321606))

(declare-fun m!8321608 () Bool)

(assert (=> b!7934235 m!8321608))

(assert (=> b!7934213 d!2372080))

(declare-fun d!2372082 () Bool)

(declare-fun c!1457627 () Bool)

(assert (=> d!2372082 (= c!1457627 ((_ is Node!15910) (right!57215 (left!56885 t!4440))))))

(declare-fun e!4681866 () Bool)

(assert (=> d!2372082 (= (inv!95763 (right!57215 (left!56885 t!4440))) e!4681866)))

(declare-fun b!7934236 () Bool)

(assert (=> b!7934236 (= e!4681866 (inv!95767 (right!57215 (left!56885 t!4440))))))

(declare-fun b!7934237 () Bool)

(declare-fun e!4681867 () Bool)

(assert (=> b!7934237 (= e!4681866 e!4681867)))

(declare-fun res!3147887 () Bool)

(assert (=> b!7934237 (= res!3147887 (not ((_ is Leaf!30246) (right!57215 (left!56885 t!4440)))))))

(assert (=> b!7934237 (=> res!3147887 e!4681867)))

(declare-fun b!7934238 () Bool)

(assert (=> b!7934238 (= e!4681867 (inv!95768 (right!57215 (left!56885 t!4440))))))

(assert (= (and d!2372082 c!1457627) b!7934236))

(assert (= (and d!2372082 (not c!1457627)) b!7934237))

(assert (= (and b!7934237 (not res!3147887)) b!7934238))

(declare-fun m!8321610 () Bool)

(assert (=> b!7934236 m!8321610))

(declare-fun m!8321612 () Bool)

(assert (=> b!7934238 m!8321612))

(assert (=> b!7934213 d!2372082))

(declare-fun d!2372084 () Bool)

(declare-fun res!3147892 () Bool)

(declare-fun e!4681870 () Bool)

(assert (=> d!2372084 (=> (not res!3147892) (not e!4681870))))

(assert (=> d!2372084 (= res!3147892 (<= (size!43270 (list!19429 (xs!19306 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))) 512))))

(assert (=> d!2372084 (= (inv!95768 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) e!4681870)))

(declare-fun b!7934243 () Bool)

(declare-fun res!3147893 () Bool)

(assert (=> b!7934243 (=> (not res!3147893) (not e!4681870))))

(assert (=> b!7934243 (= res!3147893 (= (csize!32051 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) (size!43270 (list!19429 (xs!19306 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))))

(declare-fun b!7934244 () Bool)

(assert (=> b!7934244 (= e!4681870 (and (> (csize!32051 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) 0) (<= (csize!32051 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) 512)))))

(assert (= (and d!2372084 res!3147892) b!7934243))

(assert (= (and b!7934243 res!3147893) b!7934244))

(declare-fun m!8321614 () Bool)

(assert (=> d!2372084 m!8321614))

(assert (=> d!2372084 m!8321614))

(declare-fun m!8321616 () Bool)

(assert (=> d!2372084 m!8321616))

(assert (=> b!7934243 m!8321614))

(assert (=> b!7934243 m!8321614))

(assert (=> b!7934243 m!8321616))

(assert (=> b!7934138 d!2372084))

(declare-fun d!2372086 () Bool)

(declare-fun res!3147894 () Bool)

(declare-fun e!4681871 () Bool)

(assert (=> d!2372086 (=> (not res!3147894) (not e!4681871))))

(assert (=> d!2372086 (= res!3147894 (= (csize!32050 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) (+ (size!43273 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (size!43273 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))))

(assert (=> d!2372086 (= (inv!95767 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) e!4681871)))

(declare-fun b!7934245 () Bool)

(declare-fun res!3147895 () Bool)

(assert (=> b!7934245 (=> (not res!3147895) (not e!4681871))))

(assert (=> b!7934245 (= res!3147895 (and (not (= (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) Empty!15910)) (not (= (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) Empty!15910))))))

(declare-fun b!7934246 () Bool)

(declare-fun res!3147896 () Bool)

(assert (=> b!7934246 (=> (not res!3147896) (not e!4681871))))

(assert (=> b!7934246 (= res!3147896 (= (cheight!16121 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))) (+ (max!0 (height!2224 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (height!2224 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))) 1)))))

(declare-fun b!7934247 () Bool)

(assert (=> b!7934247 (= e!4681871 (<= 0 (cheight!16121 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))

(assert (= (and d!2372086 res!3147894) b!7934245))

(assert (= (and b!7934245 res!3147895) b!7934246))

(assert (= (and b!7934246 res!3147896) b!7934247))

(declare-fun m!8321618 () Bool)

(assert (=> d!2372086 m!8321618))

(declare-fun m!8321620 () Bool)

(assert (=> d!2372086 m!8321620))

(declare-fun m!8321622 () Bool)

(assert (=> b!7934246 m!8321622))

(declare-fun m!8321624 () Bool)

(assert (=> b!7934246 m!8321624))

(assert (=> b!7934246 m!8321622))

(assert (=> b!7934246 m!8321624))

(declare-fun m!8321626 () Bool)

(assert (=> b!7934246 m!8321626))

(assert (=> b!7934136 d!2372086))

(declare-fun d!2372088 () Bool)

(declare-fun c!1457628 () Bool)

(assert (=> d!2372088 (= c!1457628 ((_ is Node!15910) (left!56885 (right!57215 t!4440))))))

(declare-fun e!4681872 () Bool)

(assert (=> d!2372088 (= (inv!95763 (left!56885 (right!57215 t!4440))) e!4681872)))

(declare-fun b!7934248 () Bool)

(assert (=> b!7934248 (= e!4681872 (inv!95767 (left!56885 (right!57215 t!4440))))))

(declare-fun b!7934249 () Bool)

(declare-fun e!4681873 () Bool)

(assert (=> b!7934249 (= e!4681872 e!4681873)))

(declare-fun res!3147897 () Bool)

(assert (=> b!7934249 (= res!3147897 (not ((_ is Leaf!30246) (left!56885 (right!57215 t!4440)))))))

(assert (=> b!7934249 (=> res!3147897 e!4681873)))

(declare-fun b!7934250 () Bool)

(assert (=> b!7934250 (= e!4681873 (inv!95768 (left!56885 (right!57215 t!4440))))))

(assert (= (and d!2372088 c!1457628) b!7934248))

(assert (= (and d!2372088 (not c!1457628)) b!7934249))

(assert (= (and b!7934249 (not res!3147897)) b!7934250))

(declare-fun m!8321628 () Bool)

(assert (=> b!7934248 m!8321628))

(declare-fun m!8321630 () Bool)

(assert (=> b!7934250 m!8321630))

(assert (=> b!7934216 d!2372088))

(declare-fun d!2372090 () Bool)

(declare-fun c!1457629 () Bool)

(assert (=> d!2372090 (= c!1457629 ((_ is Node!15910) (right!57215 (right!57215 t!4440))))))

(declare-fun e!4681874 () Bool)

(assert (=> d!2372090 (= (inv!95763 (right!57215 (right!57215 t!4440))) e!4681874)))

(declare-fun b!7934251 () Bool)

(assert (=> b!7934251 (= e!4681874 (inv!95767 (right!57215 (right!57215 t!4440))))))

(declare-fun b!7934252 () Bool)

(declare-fun e!4681875 () Bool)

(assert (=> b!7934252 (= e!4681874 e!4681875)))

(declare-fun res!3147898 () Bool)

(assert (=> b!7934252 (= res!3147898 (not ((_ is Leaf!30246) (right!57215 (right!57215 t!4440)))))))

(assert (=> b!7934252 (=> res!3147898 e!4681875)))

(declare-fun b!7934253 () Bool)

(assert (=> b!7934253 (= e!4681875 (inv!95768 (right!57215 (right!57215 t!4440))))))

(assert (= (and d!2372090 c!1457629) b!7934251))

(assert (= (and d!2372090 (not c!1457629)) b!7934252))

(assert (= (and b!7934252 (not res!3147898)) b!7934253))

(declare-fun m!8321632 () Bool)

(assert (=> b!7934251 m!8321632))

(declare-fun m!8321634 () Bool)

(assert (=> b!7934253 m!8321634))

(assert (=> b!7934216 d!2372090))

(assert (=> b!7934048 d!2372048))

(assert (=> b!7934048 d!2372056))

(declare-fun b!7934254 () Bool)

(declare-fun res!3147899 () Bool)

(declare-fun e!4681878 () Bool)

(assert (=> b!7934254 (=> (not res!3147899) (not e!4681878))))

(declare-fun lt!2695017 () List!74580)

(assert (=> b!7934254 (= res!3147899 (= (size!43270 lt!2695017) (+ (size!43270 (t!390249 (list!19429 (xs!19306 t!4440)))) 1)))))

(declare-fun bm!735622 () Bool)

(declare-fun call!735628 () (_ BitVec 32))

(assert (=> bm!735622 (= call!735628 (isize!126 (t!390249 (list!19429 (xs!19306 t!4440)))))))

(declare-fun bm!735623 () Bool)

(declare-fun call!735627 () (_ BitVec 32))

(assert (=> bm!735623 (= call!735627 (isize!126 lt!2695017))))

(declare-fun b!7934256 () Bool)

(declare-fun res!3147900 () Bool)

(assert (=> b!7934256 (=> (not res!3147900) (not e!4681878))))

(declare-fun e!4681876 () Bool)

(assert (=> b!7934256 (= res!3147900 e!4681876)))

(declare-fun c!1457631 () Bool)

(assert (=> b!7934256 (= c!1457631 (bvslt (isize!126 (t!390249 (list!19429 (xs!19306 t!4440)))) #b01111111111111111111111111111111))))

(declare-fun b!7934257 () Bool)

(declare-fun res!3147901 () Bool)

(assert (=> b!7934257 (=> (not res!3147901) (not e!4681878))))

(assert (=> b!7934257 (= res!3147901 (= (content!15790 lt!2695017) ((_ map or) (content!15790 (t!390249 (list!19429 (xs!19306 t!4440)))) (store ((as const (Array T!145860 Bool)) false) v!5484 true))))))

(declare-fun b!7934258 () Bool)

(declare-fun e!4681877 () List!74580)

(assert (=> b!7934258 (= e!4681877 (Cons!74456 (h!80904 (t!390249 (list!19429 (xs!19306 t!4440)))) ($colon+!323 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440)))) v!5484)))))

(declare-fun b!7934259 () Bool)

(assert (=> b!7934259 (= e!4681876 (= call!735627 call!735628))))

(declare-fun b!7934260 () Bool)

(assert (=> b!7934260 (= e!4681876 (= call!735627 (bvadd call!735628 #b00000000000000000000000000000001)))))

(declare-fun b!7934261 () Bool)

(assert (=> b!7934261 (= e!4681877 (Cons!74456 v!5484 (t!390249 (list!19429 (xs!19306 t!4440)))))))

(declare-fun d!2372092 () Bool)

(assert (=> d!2372092 e!4681878))

(declare-fun res!3147902 () Bool)

(assert (=> d!2372092 (=> (not res!3147902) (not e!4681878))))

(assert (=> d!2372092 (= res!3147902 ((_ is Cons!74456) lt!2695017))))

(assert (=> d!2372092 (= lt!2695017 e!4681877)))

(declare-fun c!1457630 () Bool)

(assert (=> d!2372092 (= c!1457630 ((_ is Nil!74456) (t!390249 (list!19429 (xs!19306 t!4440)))))))

(assert (=> d!2372092 (= ($colon+!323 (t!390249 (list!19429 (xs!19306 t!4440))) v!5484) lt!2695017)))

(declare-fun b!7934255 () Bool)

(assert (=> b!7934255 (= e!4681878 (= lt!2695017 (++!18266 (t!390249 (list!19429 (xs!19306 t!4440))) (Cons!74456 v!5484 Nil!74456))))))

(assert (= (and d!2372092 c!1457630) b!7934261))

(assert (= (and d!2372092 (not c!1457630)) b!7934258))

(assert (= (and d!2372092 res!3147902) b!7934254))

(assert (= (and b!7934254 res!3147899) b!7934256))

(assert (= (and b!7934256 c!1457631) b!7934260))

(assert (= (and b!7934256 (not c!1457631)) b!7934259))

(assert (= (or b!7934260 b!7934259) bm!735623))

(assert (= (or b!7934260 b!7934259) bm!735622))

(assert (= (and b!7934256 res!3147900) b!7934257))

(assert (= (and b!7934257 res!3147901) b!7934255))

(declare-fun m!8321636 () Bool)

(assert (=> b!7934256 m!8321636))

(declare-fun m!8321638 () Bool)

(assert (=> b!7934257 m!8321638))

(declare-fun m!8321640 () Bool)

(assert (=> b!7934257 m!8321640))

(assert (=> b!7934257 m!8321476))

(declare-fun m!8321642 () Bool)

(assert (=> b!7934255 m!8321642))

(declare-fun m!8321644 () Bool)

(assert (=> bm!735623 m!8321644))

(assert (=> bm!735622 m!8321636))

(declare-fun m!8321646 () Bool)

(assert (=> b!7934258 m!8321646))

(declare-fun m!8321648 () Bool)

(assert (=> b!7934254 m!8321648))

(declare-fun m!8321650 () Bool)

(assert (=> b!7934254 m!8321650))

(assert (=> b!7934105 d!2372092))

(declare-fun d!2372094 () Bool)

(assert (=> d!2372094 (= (inv!95764 (xs!19306 (right!57215 t!4440))) (<= (size!43270 (innerList!15998 (xs!19306 (right!57215 t!4440)))) 2147483647))))

(declare-fun bs!1969083 () Bool)

(assert (= bs!1969083 d!2372094))

(declare-fun m!8321652 () Bool)

(assert (=> bs!1969083 m!8321652))

(assert (=> b!7934217 d!2372094))

(declare-fun d!2372096 () Bool)

(declare-fun res!3147903 () Bool)

(declare-fun e!4681879 () Bool)

(assert (=> d!2372096 (=> (not res!3147903) (not e!4681879))))

(assert (=> d!2372096 (= res!3147903 (<= (size!43270 (list!19429 (xs!19306 (left!56885 t!4440)))) 512))))

(assert (=> d!2372096 (= (inv!95768 (left!56885 t!4440)) e!4681879)))

(declare-fun b!7934262 () Bool)

(declare-fun res!3147904 () Bool)

(assert (=> b!7934262 (=> (not res!3147904) (not e!4681879))))

(assert (=> b!7934262 (= res!3147904 (= (csize!32051 (left!56885 t!4440)) (size!43270 (list!19429 (xs!19306 (left!56885 t!4440))))))))

(declare-fun b!7934263 () Bool)

(assert (=> b!7934263 (= e!4681879 (and (> (csize!32051 (left!56885 t!4440)) 0) (<= (csize!32051 (left!56885 t!4440)) 512)))))

(assert (= (and d!2372096 res!3147903) b!7934262))

(assert (= (and b!7934262 res!3147904) b!7934263))

(declare-fun m!8321654 () Bool)

(assert (=> d!2372096 m!8321654))

(assert (=> d!2372096 m!8321654))

(declare-fun m!8321656 () Bool)

(assert (=> d!2372096 m!8321656))

(assert (=> b!7934262 m!8321654))

(assert (=> b!7934262 m!8321654))

(assert (=> b!7934262 m!8321656))

(assert (=> b!7934132 d!2372096))

(declare-fun d!2372098 () Bool)

(declare-fun lt!2695022 () (_ BitVec 32))

(assert (=> d!2372098 (and (bvsle #b00000000000000000000000000000000 lt!2695022) (bvsle lt!2695022 #b01111111111111111111111111111111))))

(declare-fun e!4681884 () (_ BitVec 32))

(assert (=> d!2372098 (= lt!2695022 e!4681884)))

(declare-fun c!1457634 () Bool)

(assert (=> d!2372098 (= c!1457634 ((_ is Nil!74456) (list!19429 (xs!19306 t!4440))))))

(assert (=> d!2372098 (= (isize!126 (list!19429 (xs!19306 t!4440))) lt!2695022)))

(declare-fun b!7934274 () Bool)

(assert (=> b!7934274 (= e!4681884 #b00000000000000000000000000000000)))

(declare-fun b!7934275 () Bool)

(declare-fun lt!2695023 () (_ BitVec 32))

(assert (=> b!7934275 (= e!4681884 (ite (= lt!2695023 #b01111111111111111111111111111111) lt!2695023 (bvadd #b00000000000000000000000000000001 lt!2695023)))))

(assert (=> b!7934275 (= lt!2695023 (isize!126 (t!390249 (list!19429 (xs!19306 t!4440)))))))

(assert (= (and d!2372098 c!1457634) b!7934274))

(assert (= (and d!2372098 (not c!1457634)) b!7934275))

(assert (=> b!7934275 m!8321636))

(assert (=> b!7934103 d!2372098))

(declare-fun e!4681896 () Bool)

(declare-fun b!7934298 () Bool)

(declare-fun lt!2695027 () List!74580)

(assert (=> b!7934298 (= e!4681896 (or (not (= (Cons!74456 v!5484 Nil!74456) Nil!74456)) (= lt!2695027 (list!19429 (xs!19306 t!4440)))))))

(declare-fun b!7934297 () Bool)

(declare-fun res!3147923 () Bool)

(assert (=> b!7934297 (=> (not res!3147923) (not e!4681896))))

(assert (=> b!7934297 (= res!3147923 (= (size!43270 lt!2695027) (+ (size!43270 (list!19429 (xs!19306 t!4440))) (size!43270 (Cons!74456 v!5484 Nil!74456)))))))

(declare-fun b!7934295 () Bool)

(declare-fun e!4681895 () List!74580)

(assert (=> b!7934295 (= e!4681895 (Cons!74456 v!5484 Nil!74456))))

(declare-fun b!7934296 () Bool)

(assert (=> b!7934296 (= e!4681895 (Cons!74456 (h!80904 (list!19429 (xs!19306 t!4440))) (++!18266 (t!390249 (list!19429 (xs!19306 t!4440))) (Cons!74456 v!5484 Nil!74456))))))

(declare-fun d!2372104 () Bool)

(assert (=> d!2372104 e!4681896))

(declare-fun res!3147922 () Bool)

(assert (=> d!2372104 (=> (not res!3147922) (not e!4681896))))

(assert (=> d!2372104 (= res!3147922 (= (content!15790 lt!2695027) ((_ map or) (content!15790 (list!19429 (xs!19306 t!4440))) (content!15790 (Cons!74456 v!5484 Nil!74456)))))))

(assert (=> d!2372104 (= lt!2695027 e!4681895)))

(declare-fun c!1457639 () Bool)

(assert (=> d!2372104 (= c!1457639 ((_ is Nil!74456) (list!19429 (xs!19306 t!4440))))))

(assert (=> d!2372104 (= (++!18266 (list!19429 (xs!19306 t!4440)) (Cons!74456 v!5484 Nil!74456)) lt!2695027)))

(assert (= (and d!2372104 c!1457639) b!7934295))

(assert (= (and d!2372104 (not c!1457639)) b!7934296))

(assert (= (and d!2372104 res!3147922) b!7934297))

(assert (= (and b!7934297 res!3147923) b!7934298))

(declare-fun m!8321678 () Bool)

(assert (=> b!7934297 m!8321678))

(assert (=> b!7934297 m!8321450))

(assert (=> b!7934297 m!8321486))

(declare-fun m!8321680 () Bool)

(assert (=> b!7934297 m!8321680))

(assert (=> b!7934296 m!8321642))

(declare-fun m!8321686 () Bool)

(assert (=> d!2372104 m!8321686))

(assert (=> d!2372104 m!8321450))

(assert (=> d!2372104 m!8321474))

(declare-fun m!8321688 () Bool)

(assert (=> d!2372104 m!8321688))

(assert (=> b!7934102 d!2372104))

(declare-fun d!2372120 () Bool)

(declare-fun c!1457643 () Bool)

(assert (=> d!2372120 (= c!1457643 ((_ is Nil!74456) lt!2695005))))

(declare-fun e!4681904 () (InoxSet T!145860))

(assert (=> d!2372120 (= (content!15790 lt!2695005) e!4681904)))

(declare-fun b!7934314 () Bool)

(assert (=> b!7934314 (= e!4681904 ((as const (Array T!145860 Bool)) false))))

(declare-fun b!7934315 () Bool)

(assert (=> b!7934315 (= e!4681904 ((_ map or) (store ((as const (Array T!145860 Bool)) false) (h!80904 lt!2695005) true) (content!15790 (t!390249 lt!2695005))))))

(assert (= (and d!2372120 c!1457643) b!7934314))

(assert (= (and d!2372120 (not c!1457643)) b!7934315))

(declare-fun m!8321706 () Bool)

(assert (=> b!7934315 m!8321706))

(declare-fun m!8321708 () Bool)

(assert (=> b!7934315 m!8321708))

(assert (=> b!7934104 d!2372120))

(declare-fun d!2372126 () Bool)

(declare-fun c!1457644 () Bool)

(assert (=> d!2372126 (= c!1457644 ((_ is Nil!74456) (list!19429 (xs!19306 t!4440))))))

(declare-fun e!4681905 () (InoxSet T!145860))

(assert (=> d!2372126 (= (content!15790 (list!19429 (xs!19306 t!4440))) e!4681905)))

(declare-fun b!7934316 () Bool)

(assert (=> b!7934316 (= e!4681905 ((as const (Array T!145860 Bool)) false))))

(declare-fun b!7934317 () Bool)

(assert (=> b!7934317 (= e!4681905 ((_ map or) (store ((as const (Array T!145860 Bool)) false) (h!80904 (list!19429 (xs!19306 t!4440))) true) (content!15790 (t!390249 (list!19429 (xs!19306 t!4440))))))))

(assert (= (and d!2372126 c!1457644) b!7934316))

(assert (= (and d!2372126 (not c!1457644)) b!7934317))

(declare-fun m!8321710 () Bool)

(assert (=> b!7934317 m!8321710))

(assert (=> b!7934317 m!8321640))

(assert (=> b!7934104 d!2372126))

(declare-fun d!2372128 () Bool)

(declare-fun lt!2695030 () Bool)

(declare-fun isEmpty!42793 (List!74580) Bool)

(declare-fun list!19430 (Conc!15910) List!74580)

(assert (=> d!2372128 (= lt!2695030 (isEmpty!42793 (list!19430 (right!57215 t!4440))))))

(assert (=> d!2372128 (= lt!2695030 (= (size!43273 (right!57215 t!4440)) 0))))

(assert (=> d!2372128 (= (isEmpty!42791 (right!57215 t!4440)) lt!2695030)))

(declare-fun bs!1969085 () Bool)

(assert (= bs!1969085 d!2372128))

(declare-fun m!8321712 () Bool)

(assert (=> bs!1969085 m!8321712))

(assert (=> bs!1969085 m!8321712))

(declare-fun m!8321714 () Bool)

(assert (=> bs!1969085 m!8321714))

(declare-fun m!8321716 () Bool)

(assert (=> bs!1969085 m!8321716))

(assert (=> b!7934181 d!2372128))

(assert (=> bm!735618 d!2372098))

(declare-fun d!2372130 () Bool)

(declare-fun res!3147933 () Bool)

(declare-fun e!4681906 () Bool)

(assert (=> d!2372130 (=> (not res!3147933) (not e!4681906))))

(assert (=> d!2372130 (= res!3147933 (= (csize!32050 t!4440) (+ (size!43273 (left!56885 t!4440)) (size!43273 (right!57215 t!4440)))))))

(assert (=> d!2372130 (= (inv!95767 t!4440) e!4681906)))

(declare-fun b!7934318 () Bool)

(declare-fun res!3147934 () Bool)

(assert (=> b!7934318 (=> (not res!3147934) (not e!4681906))))

(assert (=> b!7934318 (= res!3147934 (and (not (= (left!56885 t!4440) Empty!15910)) (not (= (right!57215 t!4440) Empty!15910))))))

(declare-fun b!7934319 () Bool)

(declare-fun res!3147935 () Bool)

(assert (=> b!7934319 (=> (not res!3147935) (not e!4681906))))

(assert (=> b!7934319 (= res!3147935 (= (cheight!16121 t!4440) (+ (max!0 (height!2224 (left!56885 t!4440)) (height!2224 (right!57215 t!4440))) 1)))))

(declare-fun b!7934320 () Bool)

(assert (=> b!7934320 (= e!4681906 (<= 0 (cheight!16121 t!4440)))))

(assert (= (and d!2372130 res!3147933) b!7934318))

(assert (= (and b!7934318 res!3147934) b!7934319))

(assert (= (and b!7934319 res!3147935) b!7934320))

(declare-fun m!8321718 () Bool)

(assert (=> d!2372130 m!8321718))

(assert (=> d!2372130 m!8321716))

(assert (=> b!7934319 m!8321548))

(assert (=> b!7934319 m!8321550))

(assert (=> b!7934319 m!8321548))

(assert (=> b!7934319 m!8321550))

(declare-fun m!8321720 () Bool)

(assert (=> b!7934319 m!8321720))

(assert (=> b!7934191 d!2372130))

(declare-fun d!2372132 () Bool)

(declare-fun res!3147942 () Bool)

(declare-fun e!4681909 () Bool)

(assert (=> d!2372132 (=> (not res!3147942) (not e!4681909))))

(assert (=> d!2372132 (= res!3147942 (<= (size!43270 (list!19429 (xs!19306 t!4440))) 512))))

(assert (=> d!2372132 (= (inv!95768 t!4440) e!4681909)))

(declare-fun b!7934327 () Bool)

(declare-fun res!3147943 () Bool)

(assert (=> b!7934327 (=> (not res!3147943) (not e!4681909))))

(assert (=> b!7934327 (= res!3147943 (= (csize!32051 t!4440) (size!43270 (list!19429 (xs!19306 t!4440)))))))

(declare-fun b!7934328 () Bool)

(assert (=> b!7934328 (= e!4681909 (and (> (csize!32051 t!4440) 0) (<= (csize!32051 t!4440) 512)))))

(assert (= (and d!2372132 res!3147942) b!7934327))

(assert (= (and b!7934327 res!3147943) b!7934328))

(assert (=> d!2372132 m!8321450))

(assert (=> d!2372132 m!8321450))

(assert (=> d!2372132 m!8321486))

(assert (=> b!7934327 m!8321450))

(assert (=> b!7934327 m!8321450))

(assert (=> b!7934327 m!8321486))

(assert (=> b!7934193 d!2372132))

(declare-fun d!2372134 () Bool)

(declare-fun res!3147944 () Bool)

(declare-fun e!4681910 () Bool)

(assert (=> d!2372134 (=> (not res!3147944) (not e!4681910))))

(assert (=> d!2372134 (= res!3147944 (= (csize!32050 (left!56885 t!4440)) (+ (size!43273 (left!56885 (left!56885 t!4440))) (size!43273 (right!57215 (left!56885 t!4440))))))))

(assert (=> d!2372134 (= (inv!95767 (left!56885 t!4440)) e!4681910)))

(declare-fun b!7934329 () Bool)

(declare-fun res!3147945 () Bool)

(assert (=> b!7934329 (=> (not res!3147945) (not e!4681910))))

(assert (=> b!7934329 (= res!3147945 (and (not (= (left!56885 (left!56885 t!4440)) Empty!15910)) (not (= (right!57215 (left!56885 t!4440)) Empty!15910))))))

(declare-fun b!7934330 () Bool)

(declare-fun res!3147946 () Bool)

(assert (=> b!7934330 (=> (not res!3147946) (not e!4681910))))

(assert (=> b!7934330 (= res!3147946 (= (cheight!16121 (left!56885 t!4440)) (+ (max!0 (height!2224 (left!56885 (left!56885 t!4440))) (height!2224 (right!57215 (left!56885 t!4440)))) 1)))))

(declare-fun b!7934331 () Bool)

(assert (=> b!7934331 (= e!4681910 (<= 0 (cheight!16121 (left!56885 t!4440))))))

(assert (= (and d!2372134 res!3147944) b!7934329))

(assert (= (and b!7934329 res!3147945) b!7934330))

(assert (= (and b!7934330 res!3147946) b!7934331))

(declare-fun m!8321722 () Bool)

(assert (=> d!2372134 m!8321722))

(declare-fun m!8321724 () Bool)

(assert (=> d!2372134 m!8321724))

(declare-fun m!8321726 () Bool)

(assert (=> b!7934330 m!8321726))

(declare-fun m!8321728 () Bool)

(assert (=> b!7934330 m!8321728))

(assert (=> b!7934330 m!8321726))

(assert (=> b!7934330 m!8321728))

(declare-fun m!8321730 () Bool)

(assert (=> b!7934330 m!8321730))

(assert (=> b!7934130 d!2372134))

(declare-fun b!7934332 () Bool)

(declare-fun res!3147947 () Bool)

(declare-fun e!4681912 () Bool)

(assert (=> b!7934332 (=> (not res!3147947) (not e!4681912))))

(assert (=> b!7934332 (= res!3147947 (isBalanced!4536 (right!57215 (left!56885 t!4440))))))

(declare-fun b!7934333 () Bool)

(declare-fun res!3147948 () Bool)

(assert (=> b!7934333 (=> (not res!3147948) (not e!4681912))))

(assert (=> b!7934333 (= res!3147948 (<= (- (height!2224 (left!56885 (left!56885 t!4440))) (height!2224 (right!57215 (left!56885 t!4440)))) 1))))

(declare-fun b!7934335 () Bool)

(declare-fun res!3147950 () Bool)

(assert (=> b!7934335 (=> (not res!3147950) (not e!4681912))))

(assert (=> b!7934335 (= res!3147950 (not (isEmpty!42791 (left!56885 (left!56885 t!4440)))))))

(declare-fun b!7934336 () Bool)

(assert (=> b!7934336 (= e!4681912 (not (isEmpty!42791 (right!57215 (left!56885 t!4440)))))))

(declare-fun b!7934337 () Bool)

(declare-fun res!3147951 () Bool)

(assert (=> b!7934337 (=> (not res!3147951) (not e!4681912))))

(assert (=> b!7934337 (= res!3147951 (isBalanced!4536 (left!56885 (left!56885 t!4440))))))

(declare-fun d!2372136 () Bool)

(declare-fun res!3147952 () Bool)

(declare-fun e!4681911 () Bool)

(assert (=> d!2372136 (=> res!3147952 e!4681911)))

(assert (=> d!2372136 (= res!3147952 (not ((_ is Node!15910) (left!56885 t!4440))))))

(assert (=> d!2372136 (= (isBalanced!4536 (left!56885 t!4440)) e!4681911)))

(declare-fun b!7934334 () Bool)

(assert (=> b!7934334 (= e!4681911 e!4681912)))

(declare-fun res!3147949 () Bool)

(assert (=> b!7934334 (=> (not res!3147949) (not e!4681912))))

(assert (=> b!7934334 (= res!3147949 (<= (- 1) (- (height!2224 (left!56885 (left!56885 t!4440))) (height!2224 (right!57215 (left!56885 t!4440))))))))

(assert (= (and d!2372136 (not res!3147952)) b!7934334))

(assert (= (and b!7934334 res!3147949) b!7934333))

(assert (= (and b!7934333 res!3147948) b!7934337))

(assert (= (and b!7934337 res!3147951) b!7934332))

(assert (= (and b!7934332 res!3147947) b!7934335))

(assert (= (and b!7934335 res!3147950) b!7934336))

(assert (=> b!7934334 m!8321726))

(assert (=> b!7934334 m!8321728))

(declare-fun m!8321732 () Bool)

(assert (=> b!7934332 m!8321732))

(assert (=> b!7934333 m!8321726))

(assert (=> b!7934333 m!8321728))

(declare-fun m!8321734 () Bool)

(assert (=> b!7934335 m!8321734))

(declare-fun m!8321736 () Bool)

(assert (=> b!7934337 m!8321736))

(declare-fun m!8321738 () Bool)

(assert (=> b!7934336 m!8321738))

(assert (=> b!7934182 d!2372136))

(declare-fun d!2372138 () Bool)

(declare-fun lt!2695031 () (_ BitVec 32))

(assert (=> d!2372138 (and (bvsle #b00000000000000000000000000000000 lt!2695031) (bvsle lt!2695031 #b01111111111111111111111111111111))))

(declare-fun e!4681913 () (_ BitVec 32))

(assert (=> d!2372138 (= lt!2695031 e!4681913)))

(declare-fun c!1457645 () Bool)

(assert (=> d!2372138 (= c!1457645 ((_ is Nil!74456) lt!2695005))))

(assert (=> d!2372138 (= (isize!126 lt!2695005) lt!2695031)))

(declare-fun b!7934338 () Bool)

(assert (=> b!7934338 (= e!4681913 #b00000000000000000000000000000000)))

(declare-fun b!7934339 () Bool)

(declare-fun lt!2695032 () (_ BitVec 32))

(assert (=> b!7934339 (= e!4681913 (ite (= lt!2695032 #b01111111111111111111111111111111) lt!2695032 (bvadd #b00000000000000000000000000000001 lt!2695032)))))

(assert (=> b!7934339 (= lt!2695032 (isize!126 (t!390249 lt!2695005)))))

(assert (= (and d!2372138 c!1457645) b!7934338))

(assert (= (and d!2372138 (not c!1457645)) b!7934339))

(declare-fun m!8321740 () Bool)

(assert (=> b!7934339 m!8321740))

(assert (=> bm!735619 d!2372138))

(declare-fun d!2372140 () Bool)

(assert (=> d!2372140 (= (height!2224 (left!56885 t!4440)) (ite ((_ is Empty!15910) (left!56885 t!4440)) 0 (ite ((_ is Leaf!30246) (left!56885 t!4440)) 1 (cheight!16121 (left!56885 t!4440)))))))

(assert (=> b!7934178 d!2372140))

(declare-fun d!2372144 () Bool)

(assert (=> d!2372144 (= (height!2224 (right!57215 t!4440)) (ite ((_ is Empty!15910) (right!57215 t!4440)) 0 (ite ((_ is Leaf!30246) (right!57215 t!4440)) 1 (cheight!16121 (right!57215 t!4440)))))))

(assert (=> b!7934178 d!2372144))

(declare-fun d!2372146 () Bool)

(declare-fun lt!2695033 () Bool)

(assert (=> d!2372146 (= lt!2695033 (isEmpty!42793 (list!19430 (left!56885 t!4440))))))

(assert (=> d!2372146 (= lt!2695033 (= (size!43273 (left!56885 t!4440)) 0))))

(assert (=> d!2372146 (= (isEmpty!42791 (left!56885 t!4440)) lt!2695033)))

(declare-fun bs!1969086 () Bool)

(assert (= bs!1969086 d!2372146))

(declare-fun m!8321752 () Bool)

(assert (=> bs!1969086 m!8321752))

(assert (=> bs!1969086 m!8321752))

(declare-fun m!8321754 () Bool)

(assert (=> bs!1969086 m!8321754))

(assert (=> bs!1969086 m!8321718))

(assert (=> b!7934180 d!2372146))

(declare-fun d!2372148 () Bool)

(declare-fun lt!2695034 () Int)

(assert (=> d!2372148 (>= lt!2695034 0)))

(declare-fun e!4681915 () Int)

(assert (=> d!2372148 (= lt!2695034 e!4681915)))

(declare-fun c!1457646 () Bool)

(assert (=> d!2372148 (= c!1457646 ((_ is Nil!74456) lt!2695005))))

(assert (=> d!2372148 (= (size!43270 lt!2695005) lt!2695034)))

(declare-fun b!7934343 () Bool)

(assert (=> b!7934343 (= e!4681915 0)))

(declare-fun b!7934344 () Bool)

(assert (=> b!7934344 (= e!4681915 (+ 1 (size!43270 (t!390249 lt!2695005))))))

(assert (= (and d!2372148 c!1457646) b!7934343))

(assert (= (and d!2372148 (not c!1457646)) b!7934344))

(declare-fun m!8321756 () Bool)

(assert (=> b!7934344 m!8321756))

(assert (=> b!7934101 d!2372148))

(declare-fun d!2372150 () Bool)

(declare-fun lt!2695035 () Int)

(assert (=> d!2372150 (>= lt!2695035 0)))

(declare-fun e!4681916 () Int)

(assert (=> d!2372150 (= lt!2695035 e!4681916)))

(declare-fun c!1457647 () Bool)

(assert (=> d!2372150 (= c!1457647 ((_ is Nil!74456) (list!19429 (xs!19306 t!4440))))))

(assert (=> d!2372150 (= (size!43270 (list!19429 (xs!19306 t!4440))) lt!2695035)))

(declare-fun b!7934345 () Bool)

(assert (=> b!7934345 (= e!4681916 0)))

(declare-fun b!7934346 () Bool)

(assert (=> b!7934346 (= e!4681916 (+ 1 (size!43270 (t!390249 (list!19429 (xs!19306 t!4440))))))))

(assert (= (and d!2372150 c!1457647) b!7934345))

(assert (= (and d!2372150 (not c!1457647)) b!7934346))

(assert (=> b!7934346 m!8321650))

(assert (=> b!7934101 d!2372150))

(assert (=> b!7934179 d!2372140))

(assert (=> b!7934179 d!2372144))

(declare-fun d!2372152 () Bool)

(declare-fun res!3147956 () Bool)

(declare-fun e!4681917 () Bool)

(assert (=> d!2372152 (=> (not res!3147956) (not e!4681917))))

(assert (=> d!2372152 (= res!3147956 (<= (size!43270 (list!19429 (xs!19306 (right!57215 t!4440)))) 512))))

(assert (=> d!2372152 (= (inv!95768 (right!57215 t!4440)) e!4681917)))

(declare-fun b!7934347 () Bool)

(declare-fun res!3147957 () Bool)

(assert (=> b!7934347 (=> (not res!3147957) (not e!4681917))))

(assert (=> b!7934347 (= res!3147957 (= (csize!32051 (right!57215 t!4440)) (size!43270 (list!19429 (xs!19306 (right!57215 t!4440))))))))

(declare-fun b!7934348 () Bool)

(assert (=> b!7934348 (= e!4681917 (and (> (csize!32051 (right!57215 t!4440)) 0) (<= (csize!32051 (right!57215 t!4440)) 512)))))

(assert (= (and d!2372152 res!3147956) b!7934347))

(assert (= (and b!7934347 res!3147957) b!7934348))

(declare-fun m!8321758 () Bool)

(assert (=> d!2372152 m!8321758))

(assert (=> d!2372152 m!8321758))

(declare-fun m!8321760 () Bool)

(assert (=> d!2372152 m!8321760))

(assert (=> b!7934347 m!8321758))

(assert (=> b!7934347 m!8321758))

(assert (=> b!7934347 m!8321760))

(assert (=> b!7934135 d!2372152))

(declare-fun d!2372154 () Bool)

(declare-fun lt!2695036 () Int)

(assert (=> d!2372154 (>= lt!2695036 0)))

(declare-fun e!4681918 () Int)

(assert (=> d!2372154 (= lt!2695036 e!4681918)))

(declare-fun c!1457648 () Bool)

(assert (=> d!2372154 (= c!1457648 ((_ is Nil!74456) (innerList!15998 (xs!19306 t!4440))))))

(assert (=> d!2372154 (= (size!43270 (innerList!15998 (xs!19306 t!4440))) lt!2695036)))

(declare-fun b!7934349 () Bool)

(assert (=> b!7934349 (= e!4681918 0)))

(declare-fun b!7934350 () Bool)

(assert (=> b!7934350 (= e!4681918 (+ 1 (size!43270 (t!390249 (innerList!15998 (xs!19306 t!4440))))))))

(assert (= (and d!2372154 c!1457648) b!7934349))

(assert (= (and d!2372154 (not c!1457648)) b!7934350))

(declare-fun m!8321762 () Bool)

(assert (=> b!7934350 m!8321762))

(assert (=> d!2372046 d!2372154))

(declare-fun b!7934351 () Bool)

(declare-fun res!3147958 () Bool)

(declare-fun e!4681920 () Bool)

(assert (=> b!7934351 (=> (not res!3147958) (not e!4681920))))

(assert (=> b!7934351 (= res!3147958 (isBalanced!4536 (right!57215 (right!57215 t!4440))))))

(declare-fun b!7934352 () Bool)

(declare-fun res!3147959 () Bool)

(assert (=> b!7934352 (=> (not res!3147959) (not e!4681920))))

(assert (=> b!7934352 (= res!3147959 (<= (- (height!2224 (left!56885 (right!57215 t!4440))) (height!2224 (right!57215 (right!57215 t!4440)))) 1))))

(declare-fun b!7934354 () Bool)

(declare-fun res!3147961 () Bool)

(assert (=> b!7934354 (=> (not res!3147961) (not e!4681920))))

(assert (=> b!7934354 (= res!3147961 (not (isEmpty!42791 (left!56885 (right!57215 t!4440)))))))

(declare-fun b!7934355 () Bool)

(assert (=> b!7934355 (= e!4681920 (not (isEmpty!42791 (right!57215 (right!57215 t!4440)))))))

(declare-fun b!7934356 () Bool)

(declare-fun res!3147962 () Bool)

(assert (=> b!7934356 (=> (not res!3147962) (not e!4681920))))

(assert (=> b!7934356 (= res!3147962 (isBalanced!4536 (left!56885 (right!57215 t!4440))))))

(declare-fun d!2372156 () Bool)

(declare-fun res!3147963 () Bool)

(declare-fun e!4681919 () Bool)

(assert (=> d!2372156 (=> res!3147963 e!4681919)))

(assert (=> d!2372156 (= res!3147963 (not ((_ is Node!15910) (right!57215 t!4440))))))

(assert (=> d!2372156 (= (isBalanced!4536 (right!57215 t!4440)) e!4681919)))

(declare-fun b!7934353 () Bool)

(assert (=> b!7934353 (= e!4681919 e!4681920)))

(declare-fun res!3147960 () Bool)

(assert (=> b!7934353 (=> (not res!3147960) (not e!4681920))))

(assert (=> b!7934353 (= res!3147960 (<= (- 1) (- (height!2224 (left!56885 (right!57215 t!4440))) (height!2224 (right!57215 (right!57215 t!4440))))))))

(assert (= (and d!2372156 (not res!3147963)) b!7934353))

(assert (= (and b!7934353 res!3147960) b!7934352))

(assert (= (and b!7934352 res!3147959) b!7934356))

(assert (= (and b!7934356 res!3147962) b!7934351))

(assert (= (and b!7934351 res!3147958) b!7934354))

(assert (= (and b!7934354 res!3147961) b!7934355))

(assert (=> b!7934353 m!8321600))

(assert (=> b!7934353 m!8321602))

(declare-fun m!8321764 () Bool)

(assert (=> b!7934351 m!8321764))

(assert (=> b!7934352 m!8321600))

(assert (=> b!7934352 m!8321602))

(declare-fun m!8321766 () Bool)

(assert (=> b!7934354 m!8321766))

(declare-fun m!8321768 () Bool)

(assert (=> b!7934356 m!8321768))

(declare-fun m!8321770 () Bool)

(assert (=> b!7934355 m!8321770))

(assert (=> b!7934177 d!2372156))

(declare-fun b!7934357 () Bool)

(declare-fun e!4681921 () Bool)

(declare-fun tp!2359256 () Bool)

(assert (=> b!7934357 (= e!4681921 (and tp_is_empty!53245 tp!2359256))))

(assert (=> b!7934215 (= tp!2359249 e!4681921)))

(assert (= (and b!7934215 ((_ is Cons!74456) (innerList!15998 (xs!19306 (left!56885 t!4440))))) b!7934357))

(declare-fun tp!2359258 () Bool)

(declare-fun e!4681922 () Bool)

(declare-fun b!7934358 () Bool)

(declare-fun tp!2359257 () Bool)

(assert (=> b!7934358 (= e!4681922 (and (inv!95763 (left!56885 (left!56885 (right!57215 t!4440)))) tp!2359257 (inv!95763 (right!57215 (left!56885 (right!57215 t!4440)))) tp!2359258))))

(declare-fun b!7934360 () Bool)

(declare-fun e!4681923 () Bool)

(declare-fun tp!2359259 () Bool)

(assert (=> b!7934360 (= e!4681923 tp!2359259)))

(declare-fun b!7934359 () Bool)

(assert (=> b!7934359 (= e!4681922 (and (inv!95764 (xs!19306 (left!56885 (right!57215 t!4440)))) e!4681923))))

(assert (=> b!7934216 (= tp!2359250 (and (inv!95763 (left!56885 (right!57215 t!4440))) e!4681922))))

(assert (= (and b!7934216 ((_ is Node!15910) (left!56885 (right!57215 t!4440)))) b!7934358))

(assert (= b!7934359 b!7934360))

(assert (= (and b!7934216 ((_ is Leaf!30246) (left!56885 (right!57215 t!4440)))) b!7934359))

(declare-fun m!8321772 () Bool)

(assert (=> b!7934358 m!8321772))

(declare-fun m!8321774 () Bool)

(assert (=> b!7934358 m!8321774))

(declare-fun m!8321776 () Bool)

(assert (=> b!7934359 m!8321776))

(assert (=> b!7934216 m!8321582))

(declare-fun b!7934361 () Bool)

(declare-fun tp!2359261 () Bool)

(declare-fun tp!2359260 () Bool)

(declare-fun e!4681924 () Bool)

(assert (=> b!7934361 (= e!4681924 (and (inv!95763 (left!56885 (right!57215 (right!57215 t!4440)))) tp!2359260 (inv!95763 (right!57215 (right!57215 (right!57215 t!4440)))) tp!2359261))))

(declare-fun b!7934363 () Bool)

(declare-fun e!4681925 () Bool)

(declare-fun tp!2359262 () Bool)

(assert (=> b!7934363 (= e!4681925 tp!2359262)))

(declare-fun b!7934362 () Bool)

(assert (=> b!7934362 (= e!4681924 (and (inv!95764 (xs!19306 (right!57215 (right!57215 t!4440)))) e!4681925))))

(assert (=> b!7934216 (= tp!2359251 (and (inv!95763 (right!57215 (right!57215 t!4440))) e!4681924))))

(assert (= (and b!7934216 ((_ is Node!15910) (right!57215 (right!57215 t!4440)))) b!7934361))

(assert (= b!7934362 b!7934363))

(assert (= (and b!7934216 ((_ is Leaf!30246) (right!57215 (right!57215 t!4440)))) b!7934362))

(declare-fun m!8321784 () Bool)

(assert (=> b!7934361 m!8321784))

(declare-fun m!8321786 () Bool)

(assert (=> b!7934361 m!8321786))

(declare-fun m!8321788 () Bool)

(assert (=> b!7934362 m!8321788))

(assert (=> b!7934216 m!8321584))

(declare-fun b!7934367 () Bool)

(declare-fun e!4681927 () Bool)

(declare-fun tp!2359263 () Bool)

(assert (=> b!7934367 (= e!4681927 (and tp_is_empty!53245 tp!2359263))))

(assert (=> b!7934201 (= tp!2359237 e!4681927)))

(assert (= (and b!7934201 ((_ is Cons!74456) (t!390249 (innerList!15998 (xs!19306 t!4440))))) b!7934367))

(declare-fun b!7934368 () Bool)

(declare-fun e!4681928 () Bool)

(declare-fun tp!2359264 () Bool)

(assert (=> b!7934368 (= e!4681928 (and tp_is_empty!53245 tp!2359264))))

(assert (=> b!7934218 (= tp!2359252 e!4681928)))

(assert (= (and b!7934218 ((_ is Cons!74456) (innerList!15998 (xs!19306 (right!57215 t!4440))))) b!7934368))

(declare-fun tp!2359266 () Bool)

(declare-fun b!7934369 () Bool)

(declare-fun e!4681929 () Bool)

(declare-fun tp!2359265 () Bool)

(assert (=> b!7934369 (= e!4681929 (and (inv!95763 (left!56885 (left!56885 (left!56885 t!4440)))) tp!2359265 (inv!95763 (right!57215 (left!56885 (left!56885 t!4440)))) tp!2359266))))

(declare-fun b!7934371 () Bool)

(declare-fun e!4681930 () Bool)

(declare-fun tp!2359267 () Bool)

(assert (=> b!7934371 (= e!4681930 tp!2359267)))

(declare-fun b!7934370 () Bool)

(assert (=> b!7934370 (= e!4681929 (and (inv!95764 (xs!19306 (left!56885 (left!56885 t!4440)))) e!4681930))))

(assert (=> b!7934213 (= tp!2359247 (and (inv!95763 (left!56885 (left!56885 t!4440))) e!4681929))))

(assert (= (and b!7934213 ((_ is Node!15910) (left!56885 (left!56885 t!4440)))) b!7934369))

(assert (= b!7934370 b!7934371))

(assert (= (and b!7934213 ((_ is Leaf!30246) (left!56885 (left!56885 t!4440)))) b!7934370))

(declare-fun m!8321792 () Bool)

(assert (=> b!7934369 m!8321792))

(declare-fun m!8321794 () Bool)

(assert (=> b!7934369 m!8321794))

(declare-fun m!8321796 () Bool)

(assert (=> b!7934370 m!8321796))

(assert (=> b!7934213 m!8321576))

(declare-fun tp!2359268 () Bool)

(declare-fun e!4681931 () Bool)

(declare-fun b!7934372 () Bool)

(declare-fun tp!2359269 () Bool)

(assert (=> b!7934372 (= e!4681931 (and (inv!95763 (left!56885 (right!57215 (left!56885 t!4440)))) tp!2359268 (inv!95763 (right!57215 (right!57215 (left!56885 t!4440)))) tp!2359269))))

(declare-fun b!7934374 () Bool)

(declare-fun e!4681932 () Bool)

(declare-fun tp!2359270 () Bool)

(assert (=> b!7934374 (= e!4681932 tp!2359270)))

(declare-fun b!7934373 () Bool)

(assert (=> b!7934373 (= e!4681931 (and (inv!95764 (xs!19306 (right!57215 (left!56885 t!4440)))) e!4681932))))

(assert (=> b!7934213 (= tp!2359248 (and (inv!95763 (right!57215 (left!56885 t!4440))) e!4681931))))

(assert (= (and b!7934213 ((_ is Node!15910) (right!57215 (left!56885 t!4440)))) b!7934372))

(assert (= b!7934373 b!7934374))

(assert (= (and b!7934213 ((_ is Leaf!30246) (right!57215 (left!56885 t!4440)))) b!7934373))

(declare-fun m!8321800 () Bool)

(assert (=> b!7934372 m!8321800))

(declare-fun m!8321802 () Bool)

(assert (=> b!7934372 m!8321802))

(declare-fun m!8321804 () Bool)

(assert (=> b!7934373 m!8321804))

(assert (=> b!7934213 m!8321578))

(check-sat (not b!7934238) (not b!7934370) (not bm!735622) (not bm!735623) (not b!7934262) (not b!7934327) (not d!2372086) (not b!7934330) (not b!7934233) (not d!2372078) (not b!7934319) (not b!7934352) (not b!7934221) (not b!7934353) (not b!7934372) (not d!2372134) (not b!7934371) (not b!7934315) (not b!7934255) (not b!7934361) (not b!7934336) (not b!7934356) (not b!7934332) (not b!7934213) (not b!7934216) (not b!7934248) (not d!2372128) (not b!7934351) (not d!2372070) (not b!7934339) (not b!7934235) (not d!2372104) (not b!7934359) (not b!7934275) (not b!7934369) (not d!2372152) (not b!7934333) (not b!7934360) (not b!7934254) (not b!7934335) (not b!7934223) (not b!7934246) (not b!7934368) (not b!7934367) (not d!2372074) (not d!2372146) tp_is_empty!53245 (not b!7934347) (not b!7934251) (not d!2372072) (not b!7934363) (not b!7934317) (not b!7934256) (not b!7934358) (not d!2372096) (not b!7934362) (not b!7934258) (not b!7934253) (not b!7934243) (not d!2372084) (not b!7934334) (not b!7934250) (not b!7934373) (not b!7934374) (not b!7934357) (not b!7934296) (not b!7934354) (not d!2372094) (not b!7934337) (not b!7934350) (not b!7934236) (not b!7934231) (not b!7934355) (not b!7934257) (not b!7934346) (not b!7934344) (not b!7934297) (not d!2372130) (not d!2372132))
(check-sat)
(get-model)

(declare-fun d!2372198 () Bool)

(assert (=> d!2372198 (= (inv!95764 (xs!19306 (left!56885 (left!56885 t!4440)))) (<= (size!43270 (innerList!15998 (xs!19306 (left!56885 (left!56885 t!4440))))) 2147483647))))

(declare-fun bs!1969091 () Bool)

(assert (= bs!1969091 d!2372198))

(declare-fun m!8321904 () Bool)

(assert (=> bs!1969091 m!8321904))

(assert (=> b!7934370 d!2372198))

(declare-fun d!2372200 () Bool)

(declare-fun c!1457667 () Bool)

(assert (=> d!2372200 (= c!1457667 ((_ is Nil!74456) lt!2695017))))

(declare-fun e!4681975 () (InoxSet T!145860))

(assert (=> d!2372200 (= (content!15790 lt!2695017) e!4681975)))

(declare-fun b!7934451 () Bool)

(assert (=> b!7934451 (= e!4681975 ((as const (Array T!145860 Bool)) false))))

(declare-fun b!7934452 () Bool)

(assert (=> b!7934452 (= e!4681975 ((_ map or) (store ((as const (Array T!145860 Bool)) false) (h!80904 lt!2695017) true) (content!15790 (t!390249 lt!2695017))))))

(assert (= (and d!2372200 c!1457667) b!7934451))

(assert (= (and d!2372200 (not c!1457667)) b!7934452))

(declare-fun m!8321906 () Bool)

(assert (=> b!7934452 m!8321906))

(declare-fun m!8321908 () Bool)

(assert (=> b!7934452 m!8321908))

(assert (=> b!7934257 d!2372200))

(declare-fun d!2372202 () Bool)

(declare-fun c!1457668 () Bool)

(assert (=> d!2372202 (= c!1457668 ((_ is Nil!74456) (t!390249 (list!19429 (xs!19306 t!4440)))))))

(declare-fun e!4681976 () (InoxSet T!145860))

(assert (=> d!2372202 (= (content!15790 (t!390249 (list!19429 (xs!19306 t!4440)))) e!4681976)))

(declare-fun b!7934453 () Bool)

(assert (=> b!7934453 (= e!4681976 ((as const (Array T!145860 Bool)) false))))

(declare-fun b!7934454 () Bool)

(assert (=> b!7934454 (= e!4681976 ((_ map or) (store ((as const (Array T!145860 Bool)) false) (h!80904 (t!390249 (list!19429 (xs!19306 t!4440)))) true) (content!15790 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440)))))))))

(assert (= (and d!2372202 c!1457668) b!7934453))

(assert (= (and d!2372202 (not c!1457668)) b!7934454))

(declare-fun m!8321910 () Bool)

(assert (=> b!7934454 m!8321910))

(declare-fun m!8321912 () Bool)

(assert (=> b!7934454 m!8321912))

(assert (=> b!7934257 d!2372202))

(declare-fun d!2372204 () Bool)

(declare-fun c!1457669 () Bool)

(assert (=> d!2372204 (= c!1457669 ((_ is Nil!74456) (t!390249 lt!2695005)))))

(declare-fun e!4681977 () (InoxSet T!145860))

(assert (=> d!2372204 (= (content!15790 (t!390249 lt!2695005)) e!4681977)))

(declare-fun b!7934455 () Bool)

(assert (=> b!7934455 (= e!4681977 ((as const (Array T!145860 Bool)) false))))

(declare-fun b!7934456 () Bool)

(assert (=> b!7934456 (= e!4681977 ((_ map or) (store ((as const (Array T!145860 Bool)) false) (h!80904 (t!390249 lt!2695005)) true) (content!15790 (t!390249 (t!390249 lt!2695005)))))))

(assert (= (and d!2372204 c!1457669) b!7934455))

(assert (= (and d!2372204 (not c!1457669)) b!7934456))

(declare-fun m!8321914 () Bool)

(assert (=> b!7934456 m!8321914))

(declare-fun m!8321916 () Bool)

(assert (=> b!7934456 m!8321916))

(assert (=> b!7934315 d!2372204))

(assert (=> b!7934327 d!2372150))

(assert (=> b!7934327 d!2372044))

(declare-fun d!2372206 () Bool)

(declare-fun lt!2695061 () Int)

(assert (=> d!2372206 (= lt!2695061 (size!43270 (list!19430 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))))

(assert (=> d!2372206 (= lt!2695061 (ite ((_ is Empty!15910) (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) 0 (ite ((_ is Leaf!30246) (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (csize!32051 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (csize!32050 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))))

(assert (=> d!2372206 (= (size!43273 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) lt!2695061)))

(declare-fun bs!1969092 () Bool)

(assert (= bs!1969092 d!2372206))

(declare-fun m!8321918 () Bool)

(assert (=> bs!1969092 m!8321918))

(assert (=> bs!1969092 m!8321918))

(declare-fun m!8321920 () Bool)

(assert (=> bs!1969092 m!8321920))

(assert (=> d!2372086 d!2372206))

(declare-fun d!2372208 () Bool)

(declare-fun lt!2695062 () Int)

(assert (=> d!2372208 (= lt!2695062 (size!43270 (list!19430 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))))

(assert (=> d!2372208 (= lt!2695062 (ite ((_ is Empty!15910) (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) 0 (ite ((_ is Leaf!30246) (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (csize!32051 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (csize!32050 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))))

(assert (=> d!2372208 (= (size!43273 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) lt!2695062)))

(declare-fun bs!1969093 () Bool)

(assert (= bs!1969093 d!2372208))

(declare-fun m!8321922 () Bool)

(assert (=> bs!1969093 m!8321922))

(assert (=> bs!1969093 m!8321922))

(declare-fun m!8321924 () Bool)

(assert (=> bs!1969093 m!8321924))

(assert (=> d!2372086 d!2372208))

(declare-fun d!2372210 () Bool)

(declare-fun lt!2695063 () Int)

(assert (=> d!2372210 (>= lt!2695063 0)))

(declare-fun e!4681978 () Int)

(assert (=> d!2372210 (= lt!2695063 e!4681978)))

(declare-fun c!1457670 () Bool)

(assert (=> d!2372210 (= c!1457670 ((_ is Nil!74456) lt!2695027))))

(assert (=> d!2372210 (= (size!43270 lt!2695027) lt!2695063)))

(declare-fun b!7934457 () Bool)

(assert (=> b!7934457 (= e!4681978 0)))

(declare-fun b!7934458 () Bool)

(assert (=> b!7934458 (= e!4681978 (+ 1 (size!43270 (t!390249 lt!2695027))))))

(assert (= (and d!2372210 c!1457670) b!7934457))

(assert (= (and d!2372210 (not c!1457670)) b!7934458))

(declare-fun m!8321926 () Bool)

(assert (=> b!7934458 m!8321926))

(assert (=> b!7934297 d!2372210))

(assert (=> b!7934297 d!2372150))

(declare-fun d!2372212 () Bool)

(declare-fun lt!2695064 () Int)

(assert (=> d!2372212 (>= lt!2695064 0)))

(declare-fun e!4681979 () Int)

(assert (=> d!2372212 (= lt!2695064 e!4681979)))

(declare-fun c!1457671 () Bool)

(assert (=> d!2372212 (= c!1457671 ((_ is Nil!74456) (Cons!74456 v!5484 Nil!74456)))))

(assert (=> d!2372212 (= (size!43270 (Cons!74456 v!5484 Nil!74456)) lt!2695064)))

(declare-fun b!7934459 () Bool)

(assert (=> b!7934459 (= e!4681979 0)))

(declare-fun b!7934460 () Bool)

(assert (=> b!7934460 (= e!4681979 (+ 1 (size!43270 (t!390249 (Cons!74456 v!5484 Nil!74456)))))))

(assert (= (and d!2372212 c!1457671) b!7934459))

(assert (= (and d!2372212 (not c!1457671)) b!7934460))

(declare-fun m!8321928 () Bool)

(assert (=> b!7934460 m!8321928))

(assert (=> b!7934297 d!2372212))

(declare-fun d!2372214 () Bool)

(declare-fun lt!2695065 () Int)

(assert (=> d!2372214 (= lt!2695065 (size!43270 (list!19430 (left!56885 (right!57215 t!4440)))))))

(assert (=> d!2372214 (= lt!2695065 (ite ((_ is Empty!15910) (left!56885 (right!57215 t!4440))) 0 (ite ((_ is Leaf!30246) (left!56885 (right!57215 t!4440))) (csize!32051 (left!56885 (right!57215 t!4440))) (csize!32050 (left!56885 (right!57215 t!4440))))))))

(assert (=> d!2372214 (= (size!43273 (left!56885 (right!57215 t!4440))) lt!2695065)))

(declare-fun bs!1969094 () Bool)

(assert (= bs!1969094 d!2372214))

(declare-fun m!8321930 () Bool)

(assert (=> bs!1969094 m!8321930))

(assert (=> bs!1969094 m!8321930))

(declare-fun m!8321932 () Bool)

(assert (=> bs!1969094 m!8321932))

(assert (=> d!2372078 d!2372214))

(declare-fun d!2372216 () Bool)

(declare-fun lt!2695066 () Int)

(assert (=> d!2372216 (= lt!2695066 (size!43270 (list!19430 (right!57215 (right!57215 t!4440)))))))

(assert (=> d!2372216 (= lt!2695066 (ite ((_ is Empty!15910) (right!57215 (right!57215 t!4440))) 0 (ite ((_ is Leaf!30246) (right!57215 (right!57215 t!4440))) (csize!32051 (right!57215 (right!57215 t!4440))) (csize!32050 (right!57215 (right!57215 t!4440))))))))

(assert (=> d!2372216 (= (size!43273 (right!57215 (right!57215 t!4440))) lt!2695066)))

(declare-fun bs!1969095 () Bool)

(assert (= bs!1969095 d!2372216))

(declare-fun m!8321934 () Bool)

(assert (=> bs!1969095 m!8321934))

(assert (=> bs!1969095 m!8321934))

(declare-fun m!8321936 () Bool)

(assert (=> bs!1969095 m!8321936))

(assert (=> d!2372078 d!2372216))

(assert (=> d!2372072 d!2372150))

(assert (=> d!2372072 d!2372044))

(declare-fun d!2372218 () Bool)

(declare-fun _$1!11319 () Int)

(assert (=> d!2372218 (= _$1!11319 (size!43270 (list!19429 (xs!19306 t!4440))))))

(assert (=> d!2372218 true))

(assert (=> d!2372218 (= (choose!59854 (xs!19306 t!4440)) _$1!11319)))

(declare-fun bs!1969096 () Bool)

(assert (= bs!1969096 d!2372218))

(assert (=> bs!1969096 m!8321450))

(assert (=> bs!1969096 m!8321450))

(assert (=> bs!1969096 m!8321486))

(assert (=> d!2372072 d!2372218))

(declare-fun d!2372220 () Bool)

(declare-fun lt!2695067 () Int)

(assert (=> d!2372220 (>= lt!2695067 0)))

(declare-fun e!4681980 () Int)

(assert (=> d!2372220 (= lt!2695067 e!4681980)))

(declare-fun c!1457672 () Bool)

(assert (=> d!2372220 (= c!1457672 ((_ is Nil!74456) (t!390249 (t!390249 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)))))))

(assert (=> d!2372220 (= (size!43270 (t!390249 (t!390249 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)))) lt!2695067)))

(declare-fun b!7934461 () Bool)

(assert (=> b!7934461 (= e!4681980 0)))

(declare-fun b!7934462 () Bool)

(assert (=> b!7934462 (= e!4681980 (+ 1 (size!43270 (t!390249 (t!390249 (t!390249 ($colon+!323 (list!19429 (xs!19306 t!4440)) v!5484)))))))))

(assert (= (and d!2372220 c!1457672) b!7934461))

(assert (= (and d!2372220 (not c!1457672)) b!7934462))

(declare-fun m!8321938 () Bool)

(assert (=> b!7934462 m!8321938))

(assert (=> b!7934223 d!2372220))

(declare-fun e!4681982 () Bool)

(declare-fun b!7934466 () Bool)

(declare-fun lt!2695068 () List!74580)

(assert (=> b!7934466 (= e!4681982 (or (not (= (Cons!74456 v!5484 Nil!74456) Nil!74456)) (= lt!2695068 (t!390249 (list!19429 (xs!19306 t!4440))))))))

(declare-fun b!7934465 () Bool)

(declare-fun res!3147990 () Bool)

(assert (=> b!7934465 (=> (not res!3147990) (not e!4681982))))

(assert (=> b!7934465 (= res!3147990 (= (size!43270 lt!2695068) (+ (size!43270 (t!390249 (list!19429 (xs!19306 t!4440)))) (size!43270 (Cons!74456 v!5484 Nil!74456)))))))

(declare-fun b!7934463 () Bool)

(declare-fun e!4681981 () List!74580)

(assert (=> b!7934463 (= e!4681981 (Cons!74456 v!5484 Nil!74456))))

(declare-fun b!7934464 () Bool)

(assert (=> b!7934464 (= e!4681981 (Cons!74456 (h!80904 (t!390249 (list!19429 (xs!19306 t!4440)))) (++!18266 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440)))) (Cons!74456 v!5484 Nil!74456))))))

(declare-fun d!2372222 () Bool)

(assert (=> d!2372222 e!4681982))

(declare-fun res!3147989 () Bool)

(assert (=> d!2372222 (=> (not res!3147989) (not e!4681982))))

(assert (=> d!2372222 (= res!3147989 (= (content!15790 lt!2695068) ((_ map or) (content!15790 (t!390249 (list!19429 (xs!19306 t!4440)))) (content!15790 (Cons!74456 v!5484 Nil!74456)))))))

(assert (=> d!2372222 (= lt!2695068 e!4681981)))

(declare-fun c!1457673 () Bool)

(assert (=> d!2372222 (= c!1457673 ((_ is Nil!74456) (t!390249 (list!19429 (xs!19306 t!4440)))))))

(assert (=> d!2372222 (= (++!18266 (t!390249 (list!19429 (xs!19306 t!4440))) (Cons!74456 v!5484 Nil!74456)) lt!2695068)))

(assert (= (and d!2372222 c!1457673) b!7934463))

(assert (= (and d!2372222 (not c!1457673)) b!7934464))

(assert (= (and d!2372222 res!3147989) b!7934465))

(assert (= (and b!7934465 res!3147990) b!7934466))

(declare-fun m!8321940 () Bool)

(assert (=> b!7934465 m!8321940))

(assert (=> b!7934465 m!8321650))

(assert (=> b!7934465 m!8321680))

(declare-fun m!8321942 () Bool)

(assert (=> b!7934464 m!8321942))

(declare-fun m!8321944 () Bool)

(assert (=> d!2372222 m!8321944))

(assert (=> d!2372222 m!8321640))

(assert (=> d!2372222 m!8321688))

(assert (=> b!7934255 d!2372222))

(declare-fun d!2372224 () Bool)

(declare-fun lt!2695069 () (_ BitVec 32))

(assert (=> d!2372224 (and (bvsle #b00000000000000000000000000000000 lt!2695069) (bvsle lt!2695069 #b01111111111111111111111111111111))))

(declare-fun e!4681983 () (_ BitVec 32))

(assert (=> d!2372224 (= lt!2695069 e!4681983)))

(declare-fun c!1457674 () Bool)

(assert (=> d!2372224 (= c!1457674 ((_ is Nil!74456) (t!390249 (list!19429 (xs!19306 t!4440)))))))

(assert (=> d!2372224 (= (isize!126 (t!390249 (list!19429 (xs!19306 t!4440)))) lt!2695069)))

(declare-fun b!7934467 () Bool)

(assert (=> b!7934467 (= e!4681983 #b00000000000000000000000000000000)))

(declare-fun b!7934468 () Bool)

(declare-fun lt!2695070 () (_ BitVec 32))

(assert (=> b!7934468 (= e!4681983 (ite (= lt!2695070 #b01111111111111111111111111111111) lt!2695070 (bvadd #b00000000000000000000000000000001 lt!2695070)))))

(assert (=> b!7934468 (= lt!2695070 (isize!126 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))))))

(assert (= (and d!2372224 c!1457674) b!7934467))

(assert (= (and d!2372224 (not c!1457674)) b!7934468))

(declare-fun m!8321946 () Bool)

(assert (=> b!7934468 m!8321946))

(assert (=> b!7934275 d!2372224))

(declare-fun d!2372226 () Bool)

(assert (=> d!2372226 (= (isEmpty!42793 (list!19430 (left!56885 t!4440))) ((_ is Nil!74456) (list!19430 (left!56885 t!4440))))))

(assert (=> d!2372146 d!2372226))

(declare-fun b!7934479 () Bool)

(declare-fun e!4681989 () List!74580)

(assert (=> b!7934479 (= e!4681989 (list!19429 (xs!19306 (left!56885 t!4440))))))

(declare-fun b!7934477 () Bool)

(declare-fun e!4681988 () List!74580)

(assert (=> b!7934477 (= e!4681988 Nil!74456)))

(declare-fun b!7934480 () Bool)

(assert (=> b!7934480 (= e!4681989 (++!18266 (list!19430 (left!56885 (left!56885 t!4440))) (list!19430 (right!57215 (left!56885 t!4440)))))))

(declare-fun b!7934478 () Bool)

(assert (=> b!7934478 (= e!4681988 e!4681989)))

(declare-fun c!1457680 () Bool)

(assert (=> b!7934478 (= c!1457680 ((_ is Leaf!30246) (left!56885 t!4440)))))

(declare-fun d!2372228 () Bool)

(declare-fun c!1457679 () Bool)

(assert (=> d!2372228 (= c!1457679 ((_ is Empty!15910) (left!56885 t!4440)))))

(assert (=> d!2372228 (= (list!19430 (left!56885 t!4440)) e!4681988)))

(assert (= (and d!2372228 c!1457679) b!7934477))

(assert (= (and d!2372228 (not c!1457679)) b!7934478))

(assert (= (and b!7934478 c!1457680) b!7934479))

(assert (= (and b!7934478 (not c!1457680)) b!7934480))

(assert (=> b!7934479 m!8321654))

(declare-fun m!8321948 () Bool)

(assert (=> b!7934480 m!8321948))

(declare-fun m!8321950 () Bool)

(assert (=> b!7934480 m!8321950))

(assert (=> b!7934480 m!8321948))

(assert (=> b!7934480 m!8321950))

(declare-fun m!8321952 () Bool)

(assert (=> b!7934480 m!8321952))

(assert (=> d!2372146 d!2372228))

(declare-fun d!2372230 () Bool)

(declare-fun lt!2695071 () Int)

(assert (=> d!2372230 (= lt!2695071 (size!43270 (list!19430 (left!56885 t!4440))))))

(assert (=> d!2372230 (= lt!2695071 (ite ((_ is Empty!15910) (left!56885 t!4440)) 0 (ite ((_ is Leaf!30246) (left!56885 t!4440)) (csize!32051 (left!56885 t!4440)) (csize!32050 (left!56885 t!4440)))))))

(assert (=> d!2372230 (= (size!43273 (left!56885 t!4440)) lt!2695071)))

(declare-fun bs!1969097 () Bool)

(assert (= bs!1969097 d!2372230))

(assert (=> bs!1969097 m!8321752))

(assert (=> bs!1969097 m!8321752))

(declare-fun m!8321954 () Bool)

(assert (=> bs!1969097 m!8321954))

(assert (=> d!2372146 d!2372230))

(assert (=> bm!735622 d!2372224))

(assert (=> d!2372132 d!2372150))

(assert (=> d!2372132 d!2372044))

(declare-fun d!2372232 () Bool)

(declare-fun c!1457681 () Bool)

(assert (=> d!2372232 (= c!1457681 ((_ is Node!15910) (left!56885 (right!57215 (left!56885 t!4440)))))))

(declare-fun e!4681990 () Bool)

(assert (=> d!2372232 (= (inv!95763 (left!56885 (right!57215 (left!56885 t!4440)))) e!4681990)))

(declare-fun b!7934481 () Bool)

(assert (=> b!7934481 (= e!4681990 (inv!95767 (left!56885 (right!57215 (left!56885 t!4440)))))))

(declare-fun b!7934482 () Bool)

(declare-fun e!4681991 () Bool)

(assert (=> b!7934482 (= e!4681990 e!4681991)))

(declare-fun res!3147991 () Bool)

(assert (=> b!7934482 (= res!3147991 (not ((_ is Leaf!30246) (left!56885 (right!57215 (left!56885 t!4440))))))))

(assert (=> b!7934482 (=> res!3147991 e!4681991)))

(declare-fun b!7934483 () Bool)

(assert (=> b!7934483 (= e!4681991 (inv!95768 (left!56885 (right!57215 (left!56885 t!4440)))))))

(assert (= (and d!2372232 c!1457681) b!7934481))

(assert (= (and d!2372232 (not c!1457681)) b!7934482))

(assert (= (and b!7934482 (not res!3147991)) b!7934483))

(declare-fun m!8321956 () Bool)

(assert (=> b!7934481 m!8321956))

(declare-fun m!8321958 () Bool)

(assert (=> b!7934483 m!8321958))

(assert (=> b!7934372 d!2372232))

(declare-fun d!2372234 () Bool)

(declare-fun c!1457682 () Bool)

(assert (=> d!2372234 (= c!1457682 ((_ is Node!15910) (right!57215 (right!57215 (left!56885 t!4440)))))))

(declare-fun e!4681992 () Bool)

(assert (=> d!2372234 (= (inv!95763 (right!57215 (right!57215 (left!56885 t!4440)))) e!4681992)))

(declare-fun b!7934484 () Bool)

(assert (=> b!7934484 (= e!4681992 (inv!95767 (right!57215 (right!57215 (left!56885 t!4440)))))))

(declare-fun b!7934485 () Bool)

(declare-fun e!4681993 () Bool)

(assert (=> b!7934485 (= e!4681992 e!4681993)))

(declare-fun res!3147992 () Bool)

(assert (=> b!7934485 (= res!3147992 (not ((_ is Leaf!30246) (right!57215 (right!57215 (left!56885 t!4440))))))))

(assert (=> b!7934485 (=> res!3147992 e!4681993)))

(declare-fun b!7934486 () Bool)

(assert (=> b!7934486 (= e!4681993 (inv!95768 (right!57215 (right!57215 (left!56885 t!4440)))))))

(assert (= (and d!2372234 c!1457682) b!7934484))

(assert (= (and d!2372234 (not c!1457682)) b!7934485))

(assert (= (and b!7934485 (not res!3147992)) b!7934486))

(declare-fun m!8321960 () Bool)

(assert (=> b!7934484 m!8321960))

(declare-fun m!8321962 () Bool)

(assert (=> b!7934486 m!8321962))

(assert (=> b!7934372 d!2372234))

(declare-fun d!2372236 () Bool)

(assert (=> d!2372236 (= (max!0 (height!2224 (left!56885 t!4440)) (height!2224 (right!57215 t!4440))) (ite (< (height!2224 (left!56885 t!4440)) (height!2224 (right!57215 t!4440))) (height!2224 (right!57215 t!4440)) (height!2224 (left!56885 t!4440))))))

(assert (=> b!7934319 d!2372236))

(assert (=> b!7934319 d!2372140))

(assert (=> b!7934319 d!2372144))

(assert (=> b!7934216 d!2372088))

(assert (=> b!7934216 d!2372090))

(declare-fun d!2372238 () Bool)

(declare-fun lt!2695072 () Int)

(assert (=> d!2372238 (>= lt!2695072 0)))

(declare-fun e!4681994 () Int)

(assert (=> d!2372238 (= lt!2695072 e!4681994)))

(declare-fun c!1457683 () Bool)

(assert (=> d!2372238 (= c!1457683 ((_ is Nil!74456) (t!390249 (innerList!15998 (xs!19306 t!4440)))))))

(assert (=> d!2372238 (= (size!43270 (t!390249 (innerList!15998 (xs!19306 t!4440)))) lt!2695072)))

(declare-fun b!7934487 () Bool)

(assert (=> b!7934487 (= e!4681994 0)))

(declare-fun b!7934488 () Bool)

(assert (=> b!7934488 (= e!4681994 (+ 1 (size!43270 (t!390249 (t!390249 (innerList!15998 (xs!19306 t!4440)))))))))

(assert (= (and d!2372238 c!1457683) b!7934487))

(assert (= (and d!2372238 (not c!1457683)) b!7934488))

(declare-fun m!8321964 () Bool)

(assert (=> b!7934488 m!8321964))

(assert (=> b!7934350 d!2372238))

(declare-fun b!7934489 () Bool)

(declare-fun res!3147993 () Bool)

(declare-fun e!4681996 () Bool)

(assert (=> b!7934489 (=> (not res!3147993) (not e!4681996))))

(assert (=> b!7934489 (= res!3147993 (isBalanced!4536 (right!57215 (left!56885 (left!56885 t!4440)))))))

(declare-fun b!7934490 () Bool)

(declare-fun res!3147994 () Bool)

(assert (=> b!7934490 (=> (not res!3147994) (not e!4681996))))

(assert (=> b!7934490 (= res!3147994 (<= (- (height!2224 (left!56885 (left!56885 (left!56885 t!4440)))) (height!2224 (right!57215 (left!56885 (left!56885 t!4440))))) 1))))

(declare-fun b!7934492 () Bool)

(declare-fun res!3147996 () Bool)

(assert (=> b!7934492 (=> (not res!3147996) (not e!4681996))))

(assert (=> b!7934492 (= res!3147996 (not (isEmpty!42791 (left!56885 (left!56885 (left!56885 t!4440))))))))

(declare-fun b!7934493 () Bool)

(assert (=> b!7934493 (= e!4681996 (not (isEmpty!42791 (right!57215 (left!56885 (left!56885 t!4440))))))))

(declare-fun b!7934494 () Bool)

(declare-fun res!3147997 () Bool)

(assert (=> b!7934494 (=> (not res!3147997) (not e!4681996))))

(assert (=> b!7934494 (= res!3147997 (isBalanced!4536 (left!56885 (left!56885 (left!56885 t!4440)))))))

(declare-fun d!2372240 () Bool)

(declare-fun res!3147998 () Bool)

(declare-fun e!4681995 () Bool)

(assert (=> d!2372240 (=> res!3147998 e!4681995)))

(assert (=> d!2372240 (= res!3147998 (not ((_ is Node!15910) (left!56885 (left!56885 t!4440)))))))

(assert (=> d!2372240 (= (isBalanced!4536 (left!56885 (left!56885 t!4440))) e!4681995)))

(declare-fun b!7934491 () Bool)

(assert (=> b!7934491 (= e!4681995 e!4681996)))

(declare-fun res!3147995 () Bool)

(assert (=> b!7934491 (=> (not res!3147995) (not e!4681996))))

(assert (=> b!7934491 (= res!3147995 (<= (- 1) (- (height!2224 (left!56885 (left!56885 (left!56885 t!4440)))) (height!2224 (right!57215 (left!56885 (left!56885 t!4440)))))))))

(assert (= (and d!2372240 (not res!3147998)) b!7934491))

(assert (= (and b!7934491 res!3147995) b!7934490))

(assert (= (and b!7934490 res!3147994) b!7934494))

(assert (= (and b!7934494 res!3147997) b!7934489))

(assert (= (and b!7934489 res!3147993) b!7934492))

(assert (= (and b!7934492 res!3147996) b!7934493))

(declare-fun m!8321966 () Bool)

(assert (=> b!7934491 m!8321966))

(declare-fun m!8321968 () Bool)

(assert (=> b!7934491 m!8321968))

(declare-fun m!8321970 () Bool)

(assert (=> b!7934489 m!8321970))

(assert (=> b!7934490 m!8321966))

(assert (=> b!7934490 m!8321968))

(declare-fun m!8321972 () Bool)

(assert (=> b!7934492 m!8321972))

(declare-fun m!8321974 () Bool)

(assert (=> b!7934494 m!8321974))

(declare-fun m!8321976 () Bool)

(assert (=> b!7934493 m!8321976))

(assert (=> b!7934337 d!2372240))

(assert (=> d!2372130 d!2372230))

(declare-fun d!2372242 () Bool)

(declare-fun lt!2695073 () Int)

(assert (=> d!2372242 (= lt!2695073 (size!43270 (list!19430 (right!57215 t!4440))))))

(assert (=> d!2372242 (= lt!2695073 (ite ((_ is Empty!15910) (right!57215 t!4440)) 0 (ite ((_ is Leaf!30246) (right!57215 t!4440)) (csize!32051 (right!57215 t!4440)) (csize!32050 (right!57215 t!4440)))))))

(assert (=> d!2372242 (= (size!43273 (right!57215 t!4440)) lt!2695073)))

(declare-fun bs!1969098 () Bool)

(assert (= bs!1969098 d!2372242))

(assert (=> bs!1969098 m!8321712))

(assert (=> bs!1969098 m!8321712))

(declare-fun m!8321978 () Bool)

(assert (=> bs!1969098 m!8321978))

(assert (=> d!2372130 d!2372242))

(declare-fun d!2372244 () Bool)

(assert (=> d!2372244 (= (height!2224 (left!56885 (left!56885 t!4440))) (ite ((_ is Empty!15910) (left!56885 (left!56885 t!4440))) 0 (ite ((_ is Leaf!30246) (left!56885 (left!56885 t!4440))) 1 (cheight!16121 (left!56885 (left!56885 t!4440))))))))

(assert (=> b!7934333 d!2372244))

(declare-fun d!2372246 () Bool)

(assert (=> d!2372246 (= (height!2224 (right!57215 (left!56885 t!4440))) (ite ((_ is Empty!15910) (right!57215 (left!56885 t!4440))) 0 (ite ((_ is Leaf!30246) (right!57215 (left!56885 t!4440))) 1 (cheight!16121 (right!57215 (left!56885 t!4440))))))))

(assert (=> b!7934333 d!2372246))

(declare-fun d!2372248 () Bool)

(declare-fun lt!2695074 () Bool)

(assert (=> d!2372248 (= lt!2695074 (isEmpty!42793 (list!19430 (right!57215 (right!57215 t!4440)))))))

(assert (=> d!2372248 (= lt!2695074 (= (size!43273 (right!57215 (right!57215 t!4440))) 0))))

(assert (=> d!2372248 (= (isEmpty!42791 (right!57215 (right!57215 t!4440))) lt!2695074)))

(declare-fun bs!1969099 () Bool)

(assert (= bs!1969099 d!2372248))

(assert (=> bs!1969099 m!8321934))

(assert (=> bs!1969099 m!8321934))

(declare-fun m!8321980 () Bool)

(assert (=> bs!1969099 m!8321980))

(assert (=> bs!1969099 m!8321598))

(assert (=> b!7934355 d!2372248))

(declare-fun d!2372250 () Bool)

(declare-fun c!1457684 () Bool)

(assert (=> d!2372250 (= c!1457684 ((_ is Node!15910) (left!56885 (left!56885 (right!57215 t!4440)))))))

(declare-fun e!4681997 () Bool)

(assert (=> d!2372250 (= (inv!95763 (left!56885 (left!56885 (right!57215 t!4440)))) e!4681997)))

(declare-fun b!7934495 () Bool)

(assert (=> b!7934495 (= e!4681997 (inv!95767 (left!56885 (left!56885 (right!57215 t!4440)))))))

(declare-fun b!7934496 () Bool)

(declare-fun e!4681998 () Bool)

(assert (=> b!7934496 (= e!4681997 e!4681998)))

(declare-fun res!3147999 () Bool)

(assert (=> b!7934496 (= res!3147999 (not ((_ is Leaf!30246) (left!56885 (left!56885 (right!57215 t!4440))))))))

(assert (=> b!7934496 (=> res!3147999 e!4681998)))

(declare-fun b!7934497 () Bool)

(assert (=> b!7934497 (= e!4681998 (inv!95768 (left!56885 (left!56885 (right!57215 t!4440)))))))

(assert (= (and d!2372250 c!1457684) b!7934495))

(assert (= (and d!2372250 (not c!1457684)) b!7934496))

(assert (= (and b!7934496 (not res!3147999)) b!7934497))

(declare-fun m!8321982 () Bool)

(assert (=> b!7934495 m!8321982))

(declare-fun m!8321984 () Bool)

(assert (=> b!7934497 m!8321984))

(assert (=> b!7934358 d!2372250))

(declare-fun d!2372252 () Bool)

(declare-fun c!1457685 () Bool)

(assert (=> d!2372252 (= c!1457685 ((_ is Node!15910) (right!57215 (left!56885 (right!57215 t!4440)))))))

(declare-fun e!4681999 () Bool)

(assert (=> d!2372252 (= (inv!95763 (right!57215 (left!56885 (right!57215 t!4440)))) e!4681999)))

(declare-fun b!7934498 () Bool)

(assert (=> b!7934498 (= e!4681999 (inv!95767 (right!57215 (left!56885 (right!57215 t!4440)))))))

(declare-fun b!7934499 () Bool)

(declare-fun e!4682000 () Bool)

(assert (=> b!7934499 (= e!4681999 e!4682000)))

(declare-fun res!3148000 () Bool)

(assert (=> b!7934499 (= res!3148000 (not ((_ is Leaf!30246) (right!57215 (left!56885 (right!57215 t!4440))))))))

(assert (=> b!7934499 (=> res!3148000 e!4682000)))

(declare-fun b!7934500 () Bool)

(assert (=> b!7934500 (= e!4682000 (inv!95768 (right!57215 (left!56885 (right!57215 t!4440)))))))

(assert (= (and d!2372252 c!1457685) b!7934498))

(assert (= (and d!2372252 (not c!1457685)) b!7934499))

(assert (= (and b!7934499 (not res!3148000)) b!7934500))

(declare-fun m!8321986 () Bool)

(assert (=> b!7934498 m!8321986))

(declare-fun m!8321988 () Bool)

(assert (=> b!7934500 m!8321988))

(assert (=> b!7934358 d!2372252))

(declare-fun d!2372254 () Bool)

(declare-fun lt!2695075 () Bool)

(assert (=> d!2372254 (= lt!2695075 (isEmpty!42793 (list!19430 (left!56885 (left!56885 t!4440)))))))

(assert (=> d!2372254 (= lt!2695075 (= (size!43273 (left!56885 (left!56885 t!4440))) 0))))

(assert (=> d!2372254 (= (isEmpty!42791 (left!56885 (left!56885 t!4440))) lt!2695075)))

(declare-fun bs!1969100 () Bool)

(assert (= bs!1969100 d!2372254))

(assert (=> bs!1969100 m!8321948))

(assert (=> bs!1969100 m!8321948))

(declare-fun m!8321990 () Bool)

(assert (=> bs!1969100 m!8321990))

(assert (=> bs!1969100 m!8321722))

(assert (=> b!7934335 d!2372254))

(declare-fun d!2372256 () Bool)

(declare-fun lt!2695076 () Int)

(assert (=> d!2372256 (>= lt!2695076 0)))

(declare-fun e!4682001 () Int)

(assert (=> d!2372256 (= lt!2695076 e!4682001)))

(declare-fun c!1457686 () Bool)

(assert (=> d!2372256 (= c!1457686 ((_ is Nil!74456) (innerList!15998 (xs!19306 (left!56885 t!4440)))))))

(assert (=> d!2372256 (= (size!43270 (innerList!15998 (xs!19306 (left!56885 t!4440)))) lt!2695076)))

(declare-fun b!7934501 () Bool)

(assert (=> b!7934501 (= e!4682001 0)))

(declare-fun b!7934502 () Bool)

(assert (=> b!7934502 (= e!4682001 (+ 1 (size!43270 (t!390249 (innerList!15998 (xs!19306 (left!56885 t!4440)))))))))

(assert (= (and d!2372256 c!1457686) b!7934501))

(assert (= (and d!2372256 (not c!1457686)) b!7934502))

(declare-fun m!8321992 () Bool)

(assert (=> b!7934502 m!8321992))

(assert (=> d!2372074 d!2372256))

(declare-fun d!2372258 () Bool)

(assert (=> d!2372258 (= (height!2224 (left!56885 (right!57215 t!4440))) (ite ((_ is Empty!15910) (left!56885 (right!57215 t!4440))) 0 (ite ((_ is Leaf!30246) (left!56885 (right!57215 t!4440))) 1 (cheight!16121 (left!56885 (right!57215 t!4440))))))))

(assert (=> b!7934353 d!2372258))

(declare-fun d!2372260 () Bool)

(assert (=> d!2372260 (= (height!2224 (right!57215 (right!57215 t!4440))) (ite ((_ is Empty!15910) (right!57215 (right!57215 t!4440))) 0 (ite ((_ is Leaf!30246) (right!57215 (right!57215 t!4440))) 1 (cheight!16121 (right!57215 (right!57215 t!4440))))))))

(assert (=> b!7934353 d!2372260))

(declare-fun d!2372262 () Bool)

(assert (=> d!2372262 (= (max!0 (height!2224 (left!56885 (left!56885 t!4440))) (height!2224 (right!57215 (left!56885 t!4440)))) (ite (< (height!2224 (left!56885 (left!56885 t!4440))) (height!2224 (right!57215 (left!56885 t!4440)))) (height!2224 (right!57215 (left!56885 t!4440))) (height!2224 (left!56885 (left!56885 t!4440)))))))

(assert (=> b!7934330 d!2372262))

(assert (=> b!7934330 d!2372244))

(assert (=> b!7934330 d!2372246))

(declare-fun d!2372264 () Bool)

(declare-fun c!1457687 () Bool)

(assert (=> d!2372264 (= c!1457687 ((_ is Node!15910) (left!56885 (right!57215 (right!57215 t!4440)))))))

(declare-fun e!4682002 () Bool)

(assert (=> d!2372264 (= (inv!95763 (left!56885 (right!57215 (right!57215 t!4440)))) e!4682002)))

(declare-fun b!7934503 () Bool)

(assert (=> b!7934503 (= e!4682002 (inv!95767 (left!56885 (right!57215 (right!57215 t!4440)))))))

(declare-fun b!7934504 () Bool)

(declare-fun e!4682003 () Bool)

(assert (=> b!7934504 (= e!4682002 e!4682003)))

(declare-fun res!3148001 () Bool)

(assert (=> b!7934504 (= res!3148001 (not ((_ is Leaf!30246) (left!56885 (right!57215 (right!57215 t!4440))))))))

(assert (=> b!7934504 (=> res!3148001 e!4682003)))

(declare-fun b!7934505 () Bool)

(assert (=> b!7934505 (= e!4682003 (inv!95768 (left!56885 (right!57215 (right!57215 t!4440)))))))

(assert (= (and d!2372264 c!1457687) b!7934503))

(assert (= (and d!2372264 (not c!1457687)) b!7934504))

(assert (= (and b!7934504 (not res!3148001)) b!7934505))

(declare-fun m!8321994 () Bool)

(assert (=> b!7934503 m!8321994))

(declare-fun m!8321996 () Bool)

(assert (=> b!7934505 m!8321996))

(assert (=> b!7934361 d!2372264))

(declare-fun d!2372266 () Bool)

(declare-fun c!1457688 () Bool)

(assert (=> d!2372266 (= c!1457688 ((_ is Node!15910) (right!57215 (right!57215 (right!57215 t!4440)))))))

(declare-fun e!4682004 () Bool)

(assert (=> d!2372266 (= (inv!95763 (right!57215 (right!57215 (right!57215 t!4440)))) e!4682004)))

(declare-fun b!7934506 () Bool)

(assert (=> b!7934506 (= e!4682004 (inv!95767 (right!57215 (right!57215 (right!57215 t!4440)))))))

(declare-fun b!7934507 () Bool)

(declare-fun e!4682005 () Bool)

(assert (=> b!7934507 (= e!4682004 e!4682005)))

(declare-fun res!3148002 () Bool)

(assert (=> b!7934507 (= res!3148002 (not ((_ is Leaf!30246) (right!57215 (right!57215 (right!57215 t!4440))))))))

(assert (=> b!7934507 (=> res!3148002 e!4682005)))

(declare-fun b!7934508 () Bool)

(assert (=> b!7934508 (= e!4682005 (inv!95768 (right!57215 (right!57215 (right!57215 t!4440)))))))

(assert (= (and d!2372266 c!1457688) b!7934506))

(assert (= (and d!2372266 (not c!1457688)) b!7934507))

(assert (= (and b!7934507 (not res!3148002)) b!7934508))

(declare-fun m!8321998 () Bool)

(assert (=> b!7934506 m!8321998))

(declare-fun m!8322000 () Bool)

(assert (=> b!7934508 m!8322000))

(assert (=> b!7934361 d!2372266))

(declare-fun d!2372268 () Bool)

(declare-fun lt!2695077 () Int)

(assert (=> d!2372268 (>= lt!2695077 0)))

(declare-fun e!4682006 () Int)

(assert (=> d!2372268 (= lt!2695077 e!4682006)))

(declare-fun c!1457689 () Bool)

(assert (=> d!2372268 (= c!1457689 ((_ is Nil!74456) (t!390249 lt!2695005)))))

(assert (=> d!2372268 (= (size!43270 (t!390249 lt!2695005)) lt!2695077)))

(declare-fun b!7934509 () Bool)

(assert (=> b!7934509 (= e!4682006 0)))

(declare-fun b!7934510 () Bool)

(assert (=> b!7934510 (= e!4682006 (+ 1 (size!43270 (t!390249 (t!390249 lt!2695005)))))))

(assert (= (and d!2372268 c!1457689) b!7934509))

(assert (= (and d!2372268 (not c!1457689)) b!7934510))

(declare-fun m!8322002 () Bool)

(assert (=> b!7934510 m!8322002))

(assert (=> b!7934344 d!2372268))

(declare-fun d!2372270 () Bool)

(declare-fun res!3148003 () Bool)

(declare-fun e!4682007 () Bool)

(assert (=> d!2372270 (=> (not res!3148003) (not e!4682007))))

(assert (=> d!2372270 (= res!3148003 (<= (size!43270 (list!19429 (xs!19306 (left!56885 (right!57215 t!4440))))) 512))))

(assert (=> d!2372270 (= (inv!95768 (left!56885 (right!57215 t!4440))) e!4682007)))

(declare-fun b!7934511 () Bool)

(declare-fun res!3148004 () Bool)

(assert (=> b!7934511 (=> (not res!3148004) (not e!4682007))))

(assert (=> b!7934511 (= res!3148004 (= (csize!32051 (left!56885 (right!57215 t!4440))) (size!43270 (list!19429 (xs!19306 (left!56885 (right!57215 t!4440)))))))))

(declare-fun b!7934512 () Bool)

(assert (=> b!7934512 (= e!4682007 (and (> (csize!32051 (left!56885 (right!57215 t!4440))) 0) (<= (csize!32051 (left!56885 (right!57215 t!4440))) 512)))))

(assert (= (and d!2372270 res!3148003) b!7934511))

(assert (= (and b!7934511 res!3148004) b!7934512))

(declare-fun m!8322004 () Bool)

(assert (=> d!2372270 m!8322004))

(assert (=> d!2372270 m!8322004))

(declare-fun m!8322006 () Bool)

(assert (=> d!2372270 m!8322006))

(assert (=> b!7934511 m!8322004))

(assert (=> b!7934511 m!8322004))

(assert (=> b!7934511 m!8322006))

(assert (=> b!7934250 d!2372270))

(declare-fun b!7934513 () Bool)

(declare-fun res!3148005 () Bool)

(declare-fun e!4682009 () Bool)

(assert (=> b!7934513 (=> (not res!3148005) (not e!4682009))))

(assert (=> b!7934513 (= res!3148005 (isBalanced!4536 (right!57215 (right!57215 (right!57215 t!4440)))))))

(declare-fun b!7934514 () Bool)

(declare-fun res!3148006 () Bool)

(assert (=> b!7934514 (=> (not res!3148006) (not e!4682009))))

(assert (=> b!7934514 (= res!3148006 (<= (- (height!2224 (left!56885 (right!57215 (right!57215 t!4440)))) (height!2224 (right!57215 (right!57215 (right!57215 t!4440))))) 1))))

(declare-fun b!7934516 () Bool)

(declare-fun res!3148008 () Bool)

(assert (=> b!7934516 (=> (not res!3148008) (not e!4682009))))

(assert (=> b!7934516 (= res!3148008 (not (isEmpty!42791 (left!56885 (right!57215 (right!57215 t!4440))))))))

(declare-fun b!7934517 () Bool)

(assert (=> b!7934517 (= e!4682009 (not (isEmpty!42791 (right!57215 (right!57215 (right!57215 t!4440))))))))

(declare-fun b!7934518 () Bool)

(declare-fun res!3148009 () Bool)

(assert (=> b!7934518 (=> (not res!3148009) (not e!4682009))))

(assert (=> b!7934518 (= res!3148009 (isBalanced!4536 (left!56885 (right!57215 (right!57215 t!4440)))))))

(declare-fun d!2372272 () Bool)

(declare-fun res!3148010 () Bool)

(declare-fun e!4682008 () Bool)

(assert (=> d!2372272 (=> res!3148010 e!4682008)))

(assert (=> d!2372272 (= res!3148010 (not ((_ is Node!15910) (right!57215 (right!57215 t!4440)))))))

(assert (=> d!2372272 (= (isBalanced!4536 (right!57215 (right!57215 t!4440))) e!4682008)))

(declare-fun b!7934515 () Bool)

(assert (=> b!7934515 (= e!4682008 e!4682009)))

(declare-fun res!3148007 () Bool)

(assert (=> b!7934515 (=> (not res!3148007) (not e!4682009))))

(assert (=> b!7934515 (= res!3148007 (<= (- 1) (- (height!2224 (left!56885 (right!57215 (right!57215 t!4440)))) (height!2224 (right!57215 (right!57215 (right!57215 t!4440)))))))))

(assert (= (and d!2372272 (not res!3148010)) b!7934515))

(assert (= (and b!7934515 res!3148007) b!7934514))

(assert (= (and b!7934514 res!3148006) b!7934518))

(assert (= (and b!7934518 res!3148009) b!7934513))

(assert (= (and b!7934513 res!3148005) b!7934516))

(assert (= (and b!7934516 res!3148008) b!7934517))

(declare-fun m!8322008 () Bool)

(assert (=> b!7934515 m!8322008))

(declare-fun m!8322010 () Bool)

(assert (=> b!7934515 m!8322010))

(declare-fun m!8322012 () Bool)

(assert (=> b!7934513 m!8322012))

(assert (=> b!7934514 m!8322008))

(assert (=> b!7934514 m!8322010))

(declare-fun m!8322014 () Bool)

(assert (=> b!7934516 m!8322014))

(declare-fun m!8322016 () Bool)

(assert (=> b!7934518 m!8322016))

(declare-fun m!8322018 () Bool)

(assert (=> b!7934517 m!8322018))

(assert (=> b!7934351 d!2372272))

(declare-fun d!2372274 () Bool)

(declare-fun lt!2695078 () Int)

(assert (=> d!2372274 (>= lt!2695078 0)))

(declare-fun e!4682010 () Int)

(assert (=> d!2372274 (= lt!2695078 e!4682010)))

(declare-fun c!1457690 () Bool)

(assert (=> d!2372274 (= c!1457690 ((_ is Nil!74456) (list!19429 (xs!19306 (right!57215 t!4440)))))))

(assert (=> d!2372274 (= (size!43270 (list!19429 (xs!19306 (right!57215 t!4440)))) lt!2695078)))

(declare-fun b!7934519 () Bool)

(assert (=> b!7934519 (= e!4682010 0)))

(declare-fun b!7934520 () Bool)

(assert (=> b!7934520 (= e!4682010 (+ 1 (size!43270 (t!390249 (list!19429 (xs!19306 (right!57215 t!4440)))))))))

(assert (= (and d!2372274 c!1457690) b!7934519))

(assert (= (and d!2372274 (not c!1457690)) b!7934520))

(declare-fun m!8322020 () Bool)

(assert (=> b!7934520 m!8322020))

(assert (=> b!7934347 d!2372274))

(declare-fun d!2372276 () Bool)

(assert (=> d!2372276 (= (list!19429 (xs!19306 (right!57215 t!4440))) (innerList!15998 (xs!19306 (right!57215 t!4440))))))

(assert (=> b!7934347 d!2372276))

(declare-fun d!2372278 () Bool)

(declare-fun lt!2695079 () Int)

(assert (=> d!2372278 (= lt!2695079 (size!43270 (list!19430 (left!56885 (left!56885 t!4440)))))))

(assert (=> d!2372278 (= lt!2695079 (ite ((_ is Empty!15910) (left!56885 (left!56885 t!4440))) 0 (ite ((_ is Leaf!30246) (left!56885 (left!56885 t!4440))) (csize!32051 (left!56885 (left!56885 t!4440))) (csize!32050 (left!56885 (left!56885 t!4440))))))))

(assert (=> d!2372278 (= (size!43273 (left!56885 (left!56885 t!4440))) lt!2695079)))

(declare-fun bs!1969101 () Bool)

(assert (= bs!1969101 d!2372278))

(assert (=> bs!1969101 m!8321948))

(assert (=> bs!1969101 m!8321948))

(declare-fun m!8322022 () Bool)

(assert (=> bs!1969101 m!8322022))

(assert (=> d!2372134 d!2372278))

(declare-fun d!2372280 () Bool)

(declare-fun lt!2695080 () Int)

(assert (=> d!2372280 (= lt!2695080 (size!43270 (list!19430 (right!57215 (left!56885 t!4440)))))))

(assert (=> d!2372280 (= lt!2695080 (ite ((_ is Empty!15910) (right!57215 (left!56885 t!4440))) 0 (ite ((_ is Leaf!30246) (right!57215 (left!56885 t!4440))) (csize!32051 (right!57215 (left!56885 t!4440))) (csize!32050 (right!57215 (left!56885 t!4440))))))))

(assert (=> d!2372280 (= (size!43273 (right!57215 (left!56885 t!4440))) lt!2695080)))

(declare-fun bs!1969102 () Bool)

(assert (= bs!1969102 d!2372280))

(assert (=> bs!1969102 m!8321950))

(assert (=> bs!1969102 m!8321950))

(declare-fun m!8322024 () Bool)

(assert (=> bs!1969102 m!8322024))

(assert (=> d!2372134 d!2372280))

(declare-fun d!2372282 () Bool)

(declare-fun res!3148011 () Bool)

(declare-fun e!4682011 () Bool)

(assert (=> d!2372282 (=> (not res!3148011) (not e!4682011))))

(assert (=> d!2372282 (= res!3148011 (= (csize!32050 (left!56885 (right!57215 t!4440))) (+ (size!43273 (left!56885 (left!56885 (right!57215 t!4440)))) (size!43273 (right!57215 (left!56885 (right!57215 t!4440)))))))))

(assert (=> d!2372282 (= (inv!95767 (left!56885 (right!57215 t!4440))) e!4682011)))

(declare-fun b!7934521 () Bool)

(declare-fun res!3148012 () Bool)

(assert (=> b!7934521 (=> (not res!3148012) (not e!4682011))))

(assert (=> b!7934521 (= res!3148012 (and (not (= (left!56885 (left!56885 (right!57215 t!4440))) Empty!15910)) (not (= (right!57215 (left!56885 (right!57215 t!4440))) Empty!15910))))))

(declare-fun b!7934522 () Bool)

(declare-fun res!3148013 () Bool)

(assert (=> b!7934522 (=> (not res!3148013) (not e!4682011))))

(assert (=> b!7934522 (= res!3148013 (= (cheight!16121 (left!56885 (right!57215 t!4440))) (+ (max!0 (height!2224 (left!56885 (left!56885 (right!57215 t!4440)))) (height!2224 (right!57215 (left!56885 (right!57215 t!4440))))) 1)))))

(declare-fun b!7934523 () Bool)

(assert (=> b!7934523 (= e!4682011 (<= 0 (cheight!16121 (left!56885 (right!57215 t!4440)))))))

(assert (= (and d!2372282 res!3148011) b!7934521))

(assert (= (and b!7934521 res!3148012) b!7934522))

(assert (= (and b!7934522 res!3148013) b!7934523))

(declare-fun m!8322026 () Bool)

(assert (=> d!2372282 m!8322026))

(declare-fun m!8322028 () Bool)

(assert (=> d!2372282 m!8322028))

(declare-fun m!8322030 () Bool)

(assert (=> b!7934522 m!8322030))

(declare-fun m!8322032 () Bool)

(assert (=> b!7934522 m!8322032))

(assert (=> b!7934522 m!8322030))

(assert (=> b!7934522 m!8322032))

(declare-fun m!8322034 () Bool)

(assert (=> b!7934522 m!8322034))

(assert (=> b!7934248 d!2372282))

(assert (=> b!7934256 d!2372224))

(declare-fun b!7934524 () Bool)

(declare-fun res!3148014 () Bool)

(declare-fun e!4682014 () Bool)

(assert (=> b!7934524 (=> (not res!3148014) (not e!4682014))))

(declare-fun lt!2695081 () List!74580)

(assert (=> b!7934524 (= res!3148014 (= (size!43270 lt!2695081) (+ (size!43270 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))) 1)))))

(declare-fun bm!735626 () Bool)

(declare-fun call!735632 () (_ BitVec 32))

(assert (=> bm!735626 (= call!735632 (isize!126 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))))))

(declare-fun bm!735627 () Bool)

(declare-fun call!735631 () (_ BitVec 32))

(assert (=> bm!735627 (= call!735631 (isize!126 lt!2695081))))

(declare-fun b!7934526 () Bool)

(declare-fun res!3148015 () Bool)

(assert (=> b!7934526 (=> (not res!3148015) (not e!4682014))))

(declare-fun e!4682012 () Bool)

(assert (=> b!7934526 (= res!3148015 e!4682012)))

(declare-fun c!1457692 () Bool)

(assert (=> b!7934526 (= c!1457692 (bvslt (isize!126 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))) #b01111111111111111111111111111111))))

(declare-fun b!7934527 () Bool)

(declare-fun res!3148016 () Bool)

(assert (=> b!7934527 (=> (not res!3148016) (not e!4682014))))

(assert (=> b!7934527 (= res!3148016 (= (content!15790 lt!2695081) ((_ map or) (content!15790 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))) (store ((as const (Array T!145860 Bool)) false) v!5484 true))))))

(declare-fun b!7934528 () Bool)

(declare-fun e!4682013 () List!74580)

(assert (=> b!7934528 (= e!4682013 (Cons!74456 (h!80904 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))) ($colon+!323 (t!390249 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))) v!5484)))))

(declare-fun b!7934529 () Bool)

(assert (=> b!7934529 (= e!4682012 (= call!735631 call!735632))))

(declare-fun b!7934530 () Bool)

(assert (=> b!7934530 (= e!4682012 (= call!735631 (bvadd call!735632 #b00000000000000000000000000000001)))))

(declare-fun b!7934531 () Bool)

(assert (=> b!7934531 (= e!4682013 (Cons!74456 v!5484 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))))))

(declare-fun d!2372284 () Bool)

(assert (=> d!2372284 e!4682014))

(declare-fun res!3148017 () Bool)

(assert (=> d!2372284 (=> (not res!3148017) (not e!4682014))))

(assert (=> d!2372284 (= res!3148017 ((_ is Cons!74456) lt!2695081))))

(assert (=> d!2372284 (= lt!2695081 e!4682013)))

(declare-fun c!1457691 () Bool)

(assert (=> d!2372284 (= c!1457691 ((_ is Nil!74456) (t!390249 (t!390249 (list!19429 (xs!19306 t!4440))))))))

(assert (=> d!2372284 (= ($colon+!323 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440)))) v!5484) lt!2695081)))

(declare-fun b!7934525 () Bool)

(assert (=> b!7934525 (= e!4682014 (= lt!2695081 (++!18266 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440)))) (Cons!74456 v!5484 Nil!74456))))))

(assert (= (and d!2372284 c!1457691) b!7934531))

(assert (= (and d!2372284 (not c!1457691)) b!7934528))

(assert (= (and d!2372284 res!3148017) b!7934524))

(assert (= (and b!7934524 res!3148014) b!7934526))

(assert (= (and b!7934526 c!1457692) b!7934530))

(assert (= (and b!7934526 (not c!1457692)) b!7934529))

(assert (= (or b!7934530 b!7934529) bm!735627))

(assert (= (or b!7934530 b!7934529) bm!735626))

(assert (= (and b!7934526 res!3148015) b!7934527))

(assert (= (and b!7934527 res!3148016) b!7934525))

(assert (=> b!7934526 m!8321946))

(declare-fun m!8322036 () Bool)

(assert (=> b!7934527 m!8322036))

(assert (=> b!7934527 m!8321912))

(assert (=> b!7934527 m!8321476))

(assert (=> b!7934525 m!8321942))

(declare-fun m!8322038 () Bool)

(assert (=> bm!735627 m!8322038))

(assert (=> bm!735626 m!8321946))

(declare-fun m!8322040 () Bool)

(assert (=> b!7934528 m!8322040))

(declare-fun m!8322042 () Bool)

(assert (=> b!7934524 m!8322042))

(declare-fun m!8322044 () Bool)

(assert (=> b!7934524 m!8322044))

(assert (=> b!7934258 d!2372284))

(assert (=> b!7934296 d!2372222))

(declare-fun d!2372286 () Bool)

(declare-fun res!3148018 () Bool)

(declare-fun e!4682015 () Bool)

(assert (=> d!2372286 (=> (not res!3148018) (not e!4682015))))

(assert (=> d!2372286 (= res!3148018 (<= (size!43270 (list!19429 (xs!19306 (left!56885 (left!56885 t!4440))))) 512))))

(assert (=> d!2372286 (= (inv!95768 (left!56885 (left!56885 t!4440))) e!4682015)))

(declare-fun b!7934532 () Bool)

(declare-fun res!3148019 () Bool)

(assert (=> b!7934532 (=> (not res!3148019) (not e!4682015))))

(assert (=> b!7934532 (= res!3148019 (= (csize!32051 (left!56885 (left!56885 t!4440))) (size!43270 (list!19429 (xs!19306 (left!56885 (left!56885 t!4440)))))))))

(declare-fun b!7934533 () Bool)

(assert (=> b!7934533 (= e!4682015 (and (> (csize!32051 (left!56885 (left!56885 t!4440))) 0) (<= (csize!32051 (left!56885 (left!56885 t!4440))) 512)))))

(assert (= (and d!2372286 res!3148018) b!7934532))

(assert (= (and b!7934532 res!3148019) b!7934533))

(declare-fun m!8322046 () Bool)

(assert (=> d!2372286 m!8322046))

(assert (=> d!2372286 m!8322046))

(declare-fun m!8322048 () Bool)

(assert (=> d!2372286 m!8322048))

(assert (=> b!7934532 m!8322046))

(assert (=> b!7934532 m!8322046))

(assert (=> b!7934532 m!8322048))

(assert (=> b!7934235 d!2372286))

(declare-fun d!2372288 () Bool)

(declare-fun lt!2695082 () Int)

(assert (=> d!2372288 (>= lt!2695082 0)))

(declare-fun e!4682016 () Int)

(assert (=> d!2372288 (= lt!2695082 e!4682016)))

(declare-fun c!1457693 () Bool)

(assert (=> d!2372288 (= c!1457693 ((_ is Nil!74456) (innerList!15998 (xs!19306 (right!57215 t!4440)))))))

(assert (=> d!2372288 (= (size!43270 (innerList!15998 (xs!19306 (right!57215 t!4440)))) lt!2695082)))

(declare-fun b!7934534 () Bool)

(assert (=> b!7934534 (= e!4682016 0)))

(declare-fun b!7934535 () Bool)

(assert (=> b!7934535 (= e!4682016 (+ 1 (size!43270 (t!390249 (innerList!15998 (xs!19306 (right!57215 t!4440)))))))))

(assert (= (and d!2372288 c!1457693) b!7934534))

(assert (= (and d!2372288 (not c!1457693)) b!7934535))

(declare-fun m!8322050 () Bool)

(assert (=> b!7934535 m!8322050))

(assert (=> d!2372094 d!2372288))

(declare-fun d!2372290 () Bool)

(declare-fun lt!2695083 () (_ BitVec 32))

(assert (=> d!2372290 (and (bvsle #b00000000000000000000000000000000 lt!2695083) (bvsle lt!2695083 #b01111111111111111111111111111111))))

(declare-fun e!4682017 () (_ BitVec 32))

(assert (=> d!2372290 (= lt!2695083 e!4682017)))

(declare-fun c!1457694 () Bool)

(assert (=> d!2372290 (= c!1457694 ((_ is Nil!74456) lt!2695017))))

(assert (=> d!2372290 (= (isize!126 lt!2695017) lt!2695083)))

(declare-fun b!7934536 () Bool)

(assert (=> b!7934536 (= e!4682017 #b00000000000000000000000000000000)))

(declare-fun b!7934537 () Bool)

(declare-fun lt!2695084 () (_ BitVec 32))

(assert (=> b!7934537 (= e!4682017 (ite (= lt!2695084 #b01111111111111111111111111111111) lt!2695084 (bvadd #b00000000000000000000000000000001 lt!2695084)))))

(assert (=> b!7934537 (= lt!2695084 (isize!126 (t!390249 lt!2695017)))))

(assert (= (and d!2372290 c!1457694) b!7934536))

(assert (= (and d!2372290 (not c!1457694)) b!7934537))

(declare-fun m!8322052 () Bool)

(assert (=> b!7934537 m!8322052))

(assert (=> bm!735623 d!2372290))

(declare-fun d!2372292 () Bool)

(declare-fun res!3148020 () Bool)

(declare-fun e!4682018 () Bool)

(assert (=> d!2372292 (=> (not res!3148020) (not e!4682018))))

(assert (=> d!2372292 (= res!3148020 (<= (size!43270 (list!19429 (xs!19306 (right!57215 (right!57215 t!4440))))) 512))))

(assert (=> d!2372292 (= (inv!95768 (right!57215 (right!57215 t!4440))) e!4682018)))

(declare-fun b!7934538 () Bool)

(declare-fun res!3148021 () Bool)

(assert (=> b!7934538 (=> (not res!3148021) (not e!4682018))))

(assert (=> b!7934538 (= res!3148021 (= (csize!32051 (right!57215 (right!57215 t!4440))) (size!43270 (list!19429 (xs!19306 (right!57215 (right!57215 t!4440)))))))))

(declare-fun b!7934539 () Bool)

(assert (=> b!7934539 (= e!4682018 (and (> (csize!32051 (right!57215 (right!57215 t!4440))) 0) (<= (csize!32051 (right!57215 (right!57215 t!4440))) 512)))))

(assert (= (and d!2372292 res!3148020) b!7934538))

(assert (= (and b!7934538 res!3148021) b!7934539))

(declare-fun m!8322054 () Bool)

(assert (=> d!2372292 m!8322054))

(assert (=> d!2372292 m!8322054))

(declare-fun m!8322056 () Bool)

(assert (=> d!2372292 m!8322056))

(assert (=> b!7934538 m!8322054))

(assert (=> b!7934538 m!8322054))

(assert (=> b!7934538 m!8322056))

(assert (=> b!7934253 d!2372292))

(declare-fun d!2372294 () Bool)

(declare-fun lt!2695085 () Int)

(assert (=> d!2372294 (>= lt!2695085 0)))

(declare-fun e!4682019 () Int)

(assert (=> d!2372294 (= lt!2695085 e!4682019)))

(declare-fun c!1457695 () Bool)

(assert (=> d!2372294 (= c!1457695 ((_ is Nil!74456) (t!390249 (list!19429 (xs!19306 t!4440)))))))

(assert (=> d!2372294 (= (size!43270 (t!390249 (list!19429 (xs!19306 t!4440)))) lt!2695085)))

(declare-fun b!7934540 () Bool)

(assert (=> b!7934540 (= e!4682019 0)))

(declare-fun b!7934541 () Bool)

(assert (=> b!7934541 (= e!4682019 (+ 1 (size!43270 (t!390249 (t!390249 (list!19429 (xs!19306 t!4440)))))))))

(assert (= (and d!2372294 c!1457695) b!7934540))

(assert (= (and d!2372294 (not c!1457695)) b!7934541))

(assert (=> b!7934541 m!8322044))

(assert (=> b!7934346 d!2372294))

(declare-fun d!2372296 () Bool)

(assert (=> d!2372296 (= (inv!95764 (xs!19306 (right!57215 (left!56885 t!4440)))) (<= (size!43270 (innerList!15998 (xs!19306 (right!57215 (left!56885 t!4440))))) 2147483647))))

(declare-fun bs!1969103 () Bool)

(assert (= bs!1969103 d!2372296))

(declare-fun m!8322058 () Bool)

(assert (=> bs!1969103 m!8322058))

(assert (=> b!7934373 d!2372296))

(assert (=> b!7934213 d!2372080))

(assert (=> b!7934213 d!2372082))

(assert (=> d!2372152 d!2372274))

(assert (=> d!2372152 d!2372276))

(declare-fun d!2372298 () Bool)

(declare-fun lt!2695086 () Int)

(assert (=> d!2372298 (>= lt!2695086 0)))

(declare-fun e!4682020 () Int)

(assert (=> d!2372298 (= lt!2695086 e!4682020)))

(declare-fun c!1457696 () Bool)

(assert (=> d!2372298 (= c!1457696 ((_ is Nil!74456) (list!19429 (xs!19306 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))))

(assert (=> d!2372298 (= (size!43270 (list!19429 (xs!19306 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))) lt!2695086)))

(declare-fun b!7934542 () Bool)

(assert (=> b!7934542 (= e!4682020 0)))

(declare-fun b!7934543 () Bool)

(assert (=> b!7934543 (= e!4682020 (+ 1 (size!43270 (t!390249 (list!19429 (xs!19306 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))))))

(assert (= (and d!2372298 c!1457696) b!7934542))

(assert (= (and d!2372298 (not c!1457696)) b!7934543))

(declare-fun m!8322060 () Bool)

(assert (=> b!7934543 m!8322060))

(assert (=> d!2372084 d!2372298))

(declare-fun d!2372300 () Bool)

(assert (=> d!2372300 (= (list!19429 (xs!19306 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (innerList!15998 (xs!19306 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))

(assert (=> d!2372084 d!2372300))

(declare-fun d!2372302 () Bool)

(declare-fun c!1457697 () Bool)

(assert (=> d!2372302 (= c!1457697 ((_ is Node!15910) (left!56885 (left!56885 (left!56885 t!4440)))))))

(declare-fun e!4682021 () Bool)

(assert (=> d!2372302 (= (inv!95763 (left!56885 (left!56885 (left!56885 t!4440)))) e!4682021)))

(declare-fun b!7934544 () Bool)

(assert (=> b!7934544 (= e!4682021 (inv!95767 (left!56885 (left!56885 (left!56885 t!4440)))))))

(declare-fun b!7934545 () Bool)

(declare-fun e!4682022 () Bool)

(assert (=> b!7934545 (= e!4682021 e!4682022)))

(declare-fun res!3148022 () Bool)

(assert (=> b!7934545 (= res!3148022 (not ((_ is Leaf!30246) (left!56885 (left!56885 (left!56885 t!4440))))))))

(assert (=> b!7934545 (=> res!3148022 e!4682022)))

(declare-fun b!7934546 () Bool)

(assert (=> b!7934546 (= e!4682022 (inv!95768 (left!56885 (left!56885 (left!56885 t!4440)))))))

(assert (= (and d!2372302 c!1457697) b!7934544))

(assert (= (and d!2372302 (not c!1457697)) b!7934545))

(assert (= (and b!7934545 (not res!3148022)) b!7934546))

(declare-fun m!8322062 () Bool)

(assert (=> b!7934544 m!8322062))

(declare-fun m!8322064 () Bool)

(assert (=> b!7934546 m!8322064))

(assert (=> b!7934369 d!2372302))

(declare-fun d!2372304 () Bool)

(declare-fun c!1457698 () Bool)

(assert (=> d!2372304 (= c!1457698 ((_ is Node!15910) (right!57215 (left!56885 (left!56885 t!4440)))))))

(declare-fun e!4682023 () Bool)

(assert (=> d!2372304 (= (inv!95763 (right!57215 (left!56885 (left!56885 t!4440)))) e!4682023)))

(declare-fun b!7934547 () Bool)

(assert (=> b!7934547 (= e!4682023 (inv!95767 (right!57215 (left!56885 (left!56885 t!4440)))))))

(declare-fun b!7934548 () Bool)

(declare-fun e!4682024 () Bool)

(assert (=> b!7934548 (= e!4682023 e!4682024)))

(declare-fun res!3148023 () Bool)

(assert (=> b!7934548 (= res!3148023 (not ((_ is Leaf!30246) (right!57215 (left!56885 (left!56885 t!4440))))))))

(assert (=> b!7934548 (=> res!3148023 e!4682024)))

(declare-fun b!7934549 () Bool)

(assert (=> b!7934549 (= e!4682024 (inv!95768 (right!57215 (left!56885 (left!56885 t!4440)))))))

(assert (= (and d!2372304 c!1457698) b!7934547))

(assert (= (and d!2372304 (not c!1457698)) b!7934548))

(assert (= (and b!7934548 (not res!3148023)) b!7934549))

(declare-fun m!8322066 () Bool)

(assert (=> b!7934547 m!8322066))

(declare-fun m!8322068 () Bool)

(assert (=> b!7934549 m!8322068))

(assert (=> b!7934369 d!2372304))

(declare-fun d!2372306 () Bool)

(declare-fun res!3148024 () Bool)

(declare-fun e!4682025 () Bool)

(assert (=> d!2372306 (=> (not res!3148024) (not e!4682025))))

(assert (=> d!2372306 (= res!3148024 (= (csize!32050 (left!56885 (left!56885 t!4440))) (+ (size!43273 (left!56885 (left!56885 (left!56885 t!4440)))) (size!43273 (right!57215 (left!56885 (left!56885 t!4440)))))))))

(assert (=> d!2372306 (= (inv!95767 (left!56885 (left!56885 t!4440))) e!4682025)))

(declare-fun b!7934550 () Bool)

(declare-fun res!3148025 () Bool)

(assert (=> b!7934550 (=> (not res!3148025) (not e!4682025))))

(assert (=> b!7934550 (= res!3148025 (and (not (= (left!56885 (left!56885 (left!56885 t!4440))) Empty!15910)) (not (= (right!57215 (left!56885 (left!56885 t!4440))) Empty!15910))))))

(declare-fun b!7934551 () Bool)

(declare-fun res!3148026 () Bool)

(assert (=> b!7934551 (=> (not res!3148026) (not e!4682025))))

(assert (=> b!7934551 (= res!3148026 (= (cheight!16121 (left!56885 (left!56885 t!4440))) (+ (max!0 (height!2224 (left!56885 (left!56885 (left!56885 t!4440)))) (height!2224 (right!57215 (left!56885 (left!56885 t!4440))))) 1)))))

(declare-fun b!7934552 () Bool)

(assert (=> b!7934552 (= e!4682025 (<= 0 (cheight!16121 (left!56885 (left!56885 t!4440)))))))

(assert (= (and d!2372306 res!3148024) b!7934550))

(assert (= (and b!7934550 res!3148025) b!7934551))

(assert (= (and b!7934551 res!3148026) b!7934552))

(declare-fun m!8322070 () Bool)

(assert (=> d!2372306 m!8322070))

(declare-fun m!8322072 () Bool)

(assert (=> d!2372306 m!8322072))

(assert (=> b!7934551 m!8321966))

(assert (=> b!7934551 m!8321968))

(assert (=> b!7934551 m!8321966))

(assert (=> b!7934551 m!8321968))

(declare-fun m!8322074 () Bool)

(assert (=> b!7934551 m!8322074))

(assert (=> b!7934233 d!2372306))

(assert (=> d!2372070 d!2372036))

(assert (=> d!2372070 d!2372044))

(declare-fun d!2372308 () Bool)

(assert (=> d!2372308 (= (inv!95764 _$6!638) (<= (size!43270 (innerList!15998 _$6!638)) 2147483647))))

(declare-fun bs!1969104 () Bool)

(assert (= bs!1969104 d!2372308))

(declare-fun m!8322076 () Bool)

(assert (=> bs!1969104 m!8322076))

(assert (=> d!2372070 d!2372308))

(assert (=> b!7934243 d!2372298))

(assert (=> b!7934243 d!2372300))

(declare-fun d!2372310 () Bool)

(declare-fun lt!2695087 () Int)

(assert (=> d!2372310 (>= lt!2695087 0)))

(declare-fun e!4682026 () Int)

(assert (=> d!2372310 (= lt!2695087 e!4682026)))

(declare-fun c!1457699 () Bool)

(assert (=> d!2372310 (= c!1457699 ((_ is Nil!74456) lt!2695017))))

(assert (=> d!2372310 (= (size!43270 lt!2695017) lt!2695087)))

(declare-fun b!7934553 () Bool)

(assert (=> b!7934553 (= e!4682026 0)))

(declare-fun b!7934554 () Bool)

(assert (=> b!7934554 (= e!4682026 (+ 1 (size!43270 (t!390249 lt!2695017))))))

(assert (= (and d!2372310 c!1457699) b!7934553))

(assert (= (and d!2372310 (not c!1457699)) b!7934554))

(declare-fun m!8322078 () Bool)

(assert (=> b!7934554 m!8322078))

(assert (=> b!7934254 d!2372310))

(assert (=> b!7934254 d!2372294))

(declare-fun d!2372312 () Bool)

(declare-fun res!3148027 () Bool)

(declare-fun e!4682027 () Bool)

(assert (=> d!2372312 (=> (not res!3148027) (not e!4682027))))

(assert (=> d!2372312 (= res!3148027 (= (csize!32050 (right!57215 (right!57215 t!4440))) (+ (size!43273 (left!56885 (right!57215 (right!57215 t!4440)))) (size!43273 (right!57215 (right!57215 (right!57215 t!4440)))))))))

(assert (=> d!2372312 (= (inv!95767 (right!57215 (right!57215 t!4440))) e!4682027)))

(declare-fun b!7934555 () Bool)

(declare-fun res!3148028 () Bool)

(assert (=> b!7934555 (=> (not res!3148028) (not e!4682027))))

(assert (=> b!7934555 (= res!3148028 (and (not (= (left!56885 (right!57215 (right!57215 t!4440))) Empty!15910)) (not (= (right!57215 (right!57215 (right!57215 t!4440))) Empty!15910))))))

(declare-fun b!7934556 () Bool)

(declare-fun res!3148029 () Bool)

(assert (=> b!7934556 (=> (not res!3148029) (not e!4682027))))

(assert (=> b!7934556 (= res!3148029 (= (cheight!16121 (right!57215 (right!57215 t!4440))) (+ (max!0 (height!2224 (left!56885 (right!57215 (right!57215 t!4440)))) (height!2224 (right!57215 (right!57215 (right!57215 t!4440))))) 1)))))

(declare-fun b!7934557 () Bool)

(assert (=> b!7934557 (= e!4682027 (<= 0 (cheight!16121 (right!57215 (right!57215 t!4440)))))))

(assert (= (and d!2372312 res!3148027) b!7934555))

(assert (= (and b!7934555 res!3148028) b!7934556))

(assert (= (and b!7934556 res!3148029) b!7934557))

(declare-fun m!8322080 () Bool)

(assert (=> d!2372312 m!8322080))

(declare-fun m!8322082 () Bool)

(assert (=> d!2372312 m!8322082))

(assert (=> b!7934556 m!8322008))

(assert (=> b!7934556 m!8322010))

(assert (=> b!7934556 m!8322008))

(assert (=> b!7934556 m!8322010))

(declare-fun m!8322084 () Bool)

(assert (=> b!7934556 m!8322084))

(assert (=> b!7934251 d!2372312))

(declare-fun d!2372314 () Bool)

(assert (=> d!2372314 (= (inv!95764 (xs!19306 (left!56885 (right!57215 t!4440)))) (<= (size!43270 (innerList!15998 (xs!19306 (left!56885 (right!57215 t!4440))))) 2147483647))))

(declare-fun bs!1969105 () Bool)

(assert (= bs!1969105 d!2372314))

(declare-fun m!8322086 () Bool)

(assert (=> bs!1969105 m!8322086))

(assert (=> b!7934359 d!2372314))

(declare-fun d!2372316 () Bool)

(declare-fun lt!2695088 () Bool)

(assert (=> d!2372316 (= lt!2695088 (isEmpty!42793 (list!19430 (right!57215 (left!56885 t!4440)))))))

(assert (=> d!2372316 (= lt!2695088 (= (size!43273 (right!57215 (left!56885 t!4440))) 0))))

(assert (=> d!2372316 (= (isEmpty!42791 (right!57215 (left!56885 t!4440))) lt!2695088)))

(declare-fun bs!1969106 () Bool)

(assert (= bs!1969106 d!2372316))

(assert (=> bs!1969106 m!8321950))

(assert (=> bs!1969106 m!8321950))

(declare-fun m!8322088 () Bool)

(assert (=> bs!1969106 m!8322088))

(assert (=> bs!1969106 m!8321724))

(assert (=> b!7934336 d!2372316))

(declare-fun d!2372318 () Bool)

(declare-fun res!3148030 () Bool)

(declare-fun e!4682028 () Bool)

(assert (=> d!2372318 (=> (not res!3148030) (not e!4682028))))

(assert (=> d!2372318 (= res!3148030 (<= (size!43270 (list!19429 (xs!19306 (right!57215 (left!56885 t!4440))))) 512))))

(assert (=> d!2372318 (= (inv!95768 (right!57215 (left!56885 t!4440))) e!4682028)))

(declare-fun b!7934558 () Bool)

(declare-fun res!3148031 () Bool)

(assert (=> b!7934558 (=> (not res!3148031) (not e!4682028))))

(assert (=> b!7934558 (= res!3148031 (= (csize!32051 (right!57215 (left!56885 t!4440))) (size!43270 (list!19429 (xs!19306 (right!57215 (left!56885 t!4440)))))))))

(declare-fun b!7934559 () Bool)

(assert (=> b!7934559 (= e!4682028 (and (> (csize!32051 (right!57215 (left!56885 t!4440))) 0) (<= (csize!32051 (right!57215 (left!56885 t!4440))) 512)))))

(assert (= (and d!2372318 res!3148030) b!7934558))

(assert (= (and b!7934558 res!3148031) b!7934559))

(declare-fun m!8322090 () Bool)

(assert (=> d!2372318 m!8322090))

(assert (=> d!2372318 m!8322090))

(declare-fun m!8322092 () Bool)

(assert (=> d!2372318 m!8322092))

(assert (=> b!7934558 m!8322090))

(assert (=> b!7934558 m!8322090))

(assert (=> b!7934558 m!8322092))

(assert (=> b!7934238 d!2372318))

(declare-fun d!2372320 () Bool)

(assert (=> d!2372320 (= (isEmpty!42793 (list!19430 (right!57215 t!4440))) ((_ is Nil!74456) (list!19430 (right!57215 t!4440))))))

(assert (=> d!2372128 d!2372320))

(declare-fun b!7934562 () Bool)

(declare-fun e!4682030 () List!74580)

(assert (=> b!7934562 (= e!4682030 (list!19429 (xs!19306 (right!57215 t!4440))))))

(declare-fun b!7934560 () Bool)

(declare-fun e!4682029 () List!74580)

(assert (=> b!7934560 (= e!4682029 Nil!74456)))

(declare-fun b!7934563 () Bool)

(assert (=> b!7934563 (= e!4682030 (++!18266 (list!19430 (left!56885 (right!57215 t!4440))) (list!19430 (right!57215 (right!57215 t!4440)))))))

(declare-fun b!7934561 () Bool)

(assert (=> b!7934561 (= e!4682029 e!4682030)))

(declare-fun c!1457701 () Bool)

(assert (=> b!7934561 (= c!1457701 ((_ is Leaf!30246) (right!57215 t!4440)))))

(declare-fun d!2372322 () Bool)

(declare-fun c!1457700 () Bool)

(assert (=> d!2372322 (= c!1457700 ((_ is Empty!15910) (right!57215 t!4440)))))

(assert (=> d!2372322 (= (list!19430 (right!57215 t!4440)) e!4682029)))

(assert (= (and d!2372322 c!1457700) b!7934560))

(assert (= (and d!2372322 (not c!1457700)) b!7934561))

(assert (= (and b!7934561 c!1457701) b!7934562))

(assert (= (and b!7934561 (not c!1457701)) b!7934563))

(assert (=> b!7934562 m!8321758))

(assert (=> b!7934563 m!8321930))

(assert (=> b!7934563 m!8321934))

(assert (=> b!7934563 m!8321930))

(assert (=> b!7934563 m!8321934))

(declare-fun m!8322094 () Bool)

(assert (=> b!7934563 m!8322094))

(assert (=> d!2372128 d!2372322))

(assert (=> d!2372128 d!2372242))

(assert (=> b!7934334 d!2372244))

(assert (=> b!7934334 d!2372246))

(declare-fun d!2372324 () Bool)

(declare-fun lt!2695089 () Int)

(assert (=> d!2372324 (>= lt!2695089 0)))

(declare-fun e!4682031 () Int)

(assert (=> d!2372324 (= lt!2695089 e!4682031)))

(declare-fun c!1457702 () Bool)

(assert (=> d!2372324 (= c!1457702 ((_ is Nil!74456) (list!19429 (xs!19306 (left!56885 t!4440)))))))

(assert (=> d!2372324 (= (size!43270 (list!19429 (xs!19306 (left!56885 t!4440)))) lt!2695089)))

(declare-fun b!7934564 () Bool)

(assert (=> b!7934564 (= e!4682031 0)))

(declare-fun b!7934565 () Bool)

(assert (=> b!7934565 (= e!4682031 (+ 1 (size!43270 (t!390249 (list!19429 (xs!19306 (left!56885 t!4440)))))))))

(assert (= (and d!2372324 c!1457702) b!7934564))

(assert (= (and d!2372324 (not c!1457702)) b!7934565))

(declare-fun m!8322096 () Bool)

(assert (=> b!7934565 m!8322096))

(assert (=> b!7934262 d!2372324))

(declare-fun d!2372326 () Bool)

(assert (=> d!2372326 (= (list!19429 (xs!19306 (left!56885 t!4440))) (innerList!15998 (xs!19306 (left!56885 t!4440))))))

(assert (=> b!7934262 d!2372326))

(assert (=> b!7934317 d!2372202))

(declare-fun d!2372328 () Bool)

(declare-fun res!3148032 () Bool)

(declare-fun e!4682032 () Bool)

(assert (=> d!2372328 (=> (not res!3148032) (not e!4682032))))

(assert (=> d!2372328 (= res!3148032 (= (csize!32050 (right!57215 (left!56885 t!4440))) (+ (size!43273 (left!56885 (right!57215 (left!56885 t!4440)))) (size!43273 (right!57215 (right!57215 (left!56885 t!4440)))))))))

(assert (=> d!2372328 (= (inv!95767 (right!57215 (left!56885 t!4440))) e!4682032)))

(declare-fun b!7934566 () Bool)

(declare-fun res!3148033 () Bool)

(assert (=> b!7934566 (=> (not res!3148033) (not e!4682032))))

(assert (=> b!7934566 (= res!3148033 (and (not (= (left!56885 (right!57215 (left!56885 t!4440))) Empty!15910)) (not (= (right!57215 (right!57215 (left!56885 t!4440))) Empty!15910))))))

(declare-fun b!7934567 () Bool)

(declare-fun res!3148034 () Bool)

(assert (=> b!7934567 (=> (not res!3148034) (not e!4682032))))

(assert (=> b!7934567 (= res!3148034 (= (cheight!16121 (right!57215 (left!56885 t!4440))) (+ (max!0 (height!2224 (left!56885 (right!57215 (left!56885 t!4440)))) (height!2224 (right!57215 (right!57215 (left!56885 t!4440))))) 1)))))

(declare-fun b!7934568 () Bool)

(assert (=> b!7934568 (= e!4682032 (<= 0 (cheight!16121 (right!57215 (left!56885 t!4440)))))))

(assert (= (and d!2372328 res!3148032) b!7934566))

(assert (= (and b!7934566 res!3148033) b!7934567))

(assert (= (and b!7934567 res!3148034) b!7934568))

(declare-fun m!8322098 () Bool)

(assert (=> d!2372328 m!8322098))

(declare-fun m!8322100 () Bool)

(assert (=> d!2372328 m!8322100))

(declare-fun m!8322102 () Bool)

(assert (=> b!7934567 m!8322102))

(declare-fun m!8322104 () Bool)

(assert (=> b!7934567 m!8322104))

(assert (=> b!7934567 m!8322102))

(assert (=> b!7934567 m!8322104))

(declare-fun m!8322106 () Bool)

(assert (=> b!7934567 m!8322106))

(assert (=> b!7934236 d!2372328))

(declare-fun b!7934569 () Bool)

(declare-fun res!3148035 () Bool)

(declare-fun e!4682034 () Bool)

(assert (=> b!7934569 (=> (not res!3148035) (not e!4682034))))

(assert (=> b!7934569 (= res!3148035 (isBalanced!4536 (right!57215 (left!56885 (right!57215 t!4440)))))))

(declare-fun b!7934570 () Bool)

(declare-fun res!3148036 () Bool)

(assert (=> b!7934570 (=> (not res!3148036) (not e!4682034))))

(assert (=> b!7934570 (= res!3148036 (<= (- (height!2224 (left!56885 (left!56885 (right!57215 t!4440)))) (height!2224 (right!57215 (left!56885 (right!57215 t!4440))))) 1))))

(declare-fun b!7934572 () Bool)

(declare-fun res!3148038 () Bool)

(assert (=> b!7934572 (=> (not res!3148038) (not e!4682034))))

(assert (=> b!7934572 (= res!3148038 (not (isEmpty!42791 (left!56885 (left!56885 (right!57215 t!4440))))))))

(declare-fun b!7934573 () Bool)

(assert (=> b!7934573 (= e!4682034 (not (isEmpty!42791 (right!57215 (left!56885 (right!57215 t!4440))))))))

(declare-fun b!7934574 () Bool)

(declare-fun res!3148039 () Bool)

(assert (=> b!7934574 (=> (not res!3148039) (not e!4682034))))

(assert (=> b!7934574 (= res!3148039 (isBalanced!4536 (left!56885 (left!56885 (right!57215 t!4440)))))))

(declare-fun d!2372330 () Bool)

(declare-fun res!3148040 () Bool)

(declare-fun e!4682033 () Bool)

(assert (=> d!2372330 (=> res!3148040 e!4682033)))

(assert (=> d!2372330 (= res!3148040 (not ((_ is Node!15910) (left!56885 (right!57215 t!4440)))))))

(assert (=> d!2372330 (= (isBalanced!4536 (left!56885 (right!57215 t!4440))) e!4682033)))

(declare-fun b!7934571 () Bool)

(assert (=> b!7934571 (= e!4682033 e!4682034)))

(declare-fun res!3148037 () Bool)

(assert (=> b!7934571 (=> (not res!3148037) (not e!4682034))))

(assert (=> b!7934571 (= res!3148037 (<= (- 1) (- (height!2224 (left!56885 (left!56885 (right!57215 t!4440)))) (height!2224 (right!57215 (left!56885 (right!57215 t!4440)))))))))

(assert (= (and d!2372330 (not res!3148040)) b!7934571))

(assert (= (and b!7934571 res!3148037) b!7934570))

(assert (= (and b!7934570 res!3148036) b!7934574))

(assert (= (and b!7934574 res!3148039) b!7934569))

(assert (= (and b!7934569 res!3148035) b!7934572))

(assert (= (and b!7934572 res!3148038) b!7934573))

(assert (=> b!7934571 m!8322030))

(assert (=> b!7934571 m!8322032))

(declare-fun m!8322108 () Bool)

(assert (=> b!7934569 m!8322108))

(assert (=> b!7934570 m!8322030))

(assert (=> b!7934570 m!8322032))

(declare-fun m!8322110 () Bool)

(assert (=> b!7934572 m!8322110))

(declare-fun m!8322112 () Bool)

(assert (=> b!7934574 m!8322112))

(declare-fun m!8322114 () Bool)

(assert (=> b!7934573 m!8322114))

(assert (=> b!7934356 d!2372330))

(assert (=> b!7934352 d!2372258))

(assert (=> b!7934352 d!2372260))

(declare-fun d!2372332 () Bool)

(assert (=> d!2372332 (= (max!0 (height!2224 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (height!2224 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))) (ite (< (height!2224 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (height!2224 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))) (height!2224 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (height!2224 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440)))))))))

(assert (=> b!7934246 d!2372332))

(declare-fun d!2372334 () Bool)

(assert (=> d!2372334 (= (height!2224 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (ite ((_ is Empty!15910) (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) 0 (ite ((_ is Leaf!30246) (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) 1 (cheight!16121 (left!56885 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))))

(assert (=> b!7934246 d!2372334))

(declare-fun d!2372336 () Bool)

(assert (=> d!2372336 (= (height!2224 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) (ite ((_ is Empty!15910) (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) 0 (ite ((_ is Leaf!30246) (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))) 1 (cheight!16121 (right!57215 (Leaf!30246 (append!1160 (xs!19306 t!4440) v!5484) (+ 1 (csize!32051 t!4440))))))))))

(assert (=> b!7934246 d!2372336))

(declare-fun d!2372338 () Bool)

(declare-fun lt!2695090 () Bool)

(assert (=> d!2372338 (= lt!2695090 (isEmpty!42793 (list!19430 (left!56885 (right!57215 t!4440)))))))

(assert (=> d!2372338 (= lt!2695090 (= (size!43273 (left!56885 (right!57215 t!4440))) 0))))

(assert (=> d!2372338 (= (isEmpty!42791 (left!56885 (right!57215 t!4440))) lt!2695090)))

(declare-fun bs!1969107 () Bool)

(assert (= bs!1969107 d!2372338))

(assert (=> bs!1969107 m!8321930))

(assert (=> bs!1969107 m!8321930))

(declare-fun m!8322116 () Bool)

(assert (=> bs!1969107 m!8322116))

(assert (=> bs!1969107 m!8321596))

(assert (=> b!7934354 d!2372338))

(declare-fun d!2372340 () Bool)

(assert (=> d!2372340 (= (inv!95764 (xs!19306 (right!57215 (right!57215 t!4440)))) (<= (size!43270 (innerList!15998 (xs!19306 (right!57215 (right!57215 t!4440))))) 2147483647))))

(declare-fun bs!1969108 () Bool)

(assert (= bs!1969108 d!2372340))

(declare-fun m!8322118 () Bool)

(assert (=> bs!1969108 m!8322118))

(assert (=> b!7934362 d!2372340))

(declare-fun d!2372342 () Bool)

(declare-fun lt!2695091 () (_ BitVec 32))

(assert (=> d!2372342 (and (bvsle #b00000000000000000000000000000000 lt!2695091) (bvsle lt!2695091 #b01111111111111111111111111111111))))

(declare-fun e!4682035 () (_ BitVec 32))

(assert (=> d!2372342 (= lt!2695091 e!4682035)))

(declare-fun c!1457703 () Bool)

(assert (=> d!2372342 (= c!1457703 ((_ is Nil!74456) (t!390249 lt!2695005)))))

(assert (=> d!2372342 (= (isize!126 (t!390249 lt!2695005)) lt!2695091)))

(declare-fun b!7934575 () Bool)

(assert (=> b!7934575 (= e!4682035 #b00000000000000000000000000000000)))

(declare-fun b!7934576 () Bool)

(declare-fun lt!2695092 () (_ BitVec 32))

(assert (=> b!7934576 (= e!4682035 (ite (= lt!2695092 #b01111111111111111111111111111111) lt!2695092 (bvadd #b00000000000000000000000000000001 lt!2695092)))))

(assert (=> b!7934576 (= lt!2695092 (isize!126 (t!390249 (t!390249 lt!2695005))))))

(assert (= (and d!2372342 c!1457703) b!7934575))

(assert (= (and d!2372342 (not c!1457703)) b!7934576))

(declare-fun m!8322120 () Bool)

(assert (=> b!7934576 m!8322120))

(assert (=> b!7934339 d!2372342))

(declare-fun b!7934577 () Bool)

(declare-fun res!3148041 () Bool)

(declare-fun e!4682037 () Bool)

(assert (=> b!7934577 (=> (not res!3148041) (not e!4682037))))

(assert (=> b!7934577 (= res!3148041 (isBalanced!4536 (right!57215 (right!57215 (left!56885 t!4440)))))))

(declare-fun b!7934578 () Bool)

(declare-fun res!3148042 () Bool)

(assert (=> b!7934578 (=> (not res!3148042) (not e!4682037))))

(assert (=> b!7934578 (= res!3148042 (<= (- (height!2224 (left!56885 (right!57215 (left!56885 t!4440)))) (height!2224 (right!57215 (right!57215 (left!56885 t!4440))))) 1))))

(declare-fun b!7934580 () Bool)

(declare-fun res!3148044 () Bool)

(assert (=> b!7934580 (=> (not res!3148044) (not e!4682037))))

(assert (=> b!7934580 (= res!3148044 (not (isEmpty!42791 (left!56885 (right!57215 (left!56885 t!4440))))))))

(declare-fun b!7934581 () Bool)

(assert (=> b!7934581 (= e!4682037 (not (isEmpty!42791 (right!57215 (right!57215 (left!56885 t!4440))))))))

(declare-fun b!7934582 () Bool)

(declare-fun res!3148045 () Bool)

(assert (=> b!7934582 (=> (not res!3148045) (not e!4682037))))

(assert (=> b!7934582 (= res!3148045 (isBalanced!4536 (left!56885 (right!57215 (left!56885 t!4440)))))))

(declare-fun d!2372344 () Bool)

(declare-fun res!3148046 () Bool)

(declare-fun e!4682036 () Bool)

(assert (=> d!2372344 (=> res!3148046 e!4682036)))

(assert (=> d!2372344 (= res!3148046 (not ((_ is Node!15910) (right!57215 (left!56885 t!4440)))))))

(assert (=> d!2372344 (= (isBalanced!4536 (right!57215 (left!56885 t!4440))) e!4682036)))

(declare-fun b!7934579 () Bool)

(assert (=> b!7934579 (= e!4682036 e!4682037)))

(declare-fun res!3148043 () Bool)

(assert (=> b!7934579 (=> (not res!3148043) (not e!4682037))))

(assert (=> b!7934579 (= res!3148043 (<= (- 1) (- (height!2224 (left!56885 (right!57215 (left!56885 t!4440)))) (height!2224 (right!57215 (right!57215 (left!56885 t!4440)))))))))

(assert (= (and d!2372344 (not res!3148046)) b!7934579))

(assert (= (and b!7934579 res!3148043) b!7934578))

(assert (= (and b!7934578 res!3148042) b!7934582))

(assert (= (and b!7934582 res!3148045) b!7934577))

(assert (= (and b!7934577 res!3148041) b!7934580))

(assert (= (and b!7934580 res!3148044) b!7934581))

(assert (=> b!7934579 m!8322102))

(assert (=> b!7934579 m!8322104))

(declare-fun m!8322122 () Bool)

(assert (=> b!7934577 m!8322122))

(assert (=> b!7934578 m!8322102))

(assert (=> b!7934578 m!8322104))

(declare-fun m!8322124 () Bool)

(assert (=> b!7934580 m!8322124))

(declare-fun m!8322126 () Bool)

(assert (=> b!7934582 m!8322126))

(declare-fun m!8322128 () Bool)

(assert (=> b!7934581 m!8322128))

(assert (=> b!7934332 d!2372344))

(declare-fun d!2372346 () Bool)

(declare-fun c!1457704 () Bool)

(assert (=> d!2372346 (= c!1457704 ((_ is Nil!74456) lt!2695027))))

(declare-fun e!4682038 () (InoxSet T!145860))

(assert (=> d!2372346 (= (content!15790 lt!2695027) e!4682038)))

(declare-fun b!7934583 () Bool)

(assert (=> b!7934583 (= e!4682038 ((as const (Array T!145860 Bool)) false))))

(declare-fun b!7934584 () Bool)

(assert (=> b!7934584 (= e!4682038 ((_ map or) (store ((as const (Array T!145860 Bool)) false) (h!80904 lt!2695027) true) (content!15790 (t!390249 lt!2695027))))))

(assert (= (and d!2372346 c!1457704) b!7934583))

(assert (= (and d!2372346 (not c!1457704)) b!7934584))

(declare-fun m!8322130 () Bool)

(assert (=> b!7934584 m!8322130))

(declare-fun m!8322132 () Bool)

(assert (=> b!7934584 m!8322132))

(assert (=> d!2372104 d!2372346))

(assert (=> d!2372104 d!2372126))

(declare-fun d!2372348 () Bool)

(declare-fun c!1457705 () Bool)

(assert (=> d!2372348 (= c!1457705 ((_ is Nil!74456) (Cons!74456 v!5484 Nil!74456)))))

(declare-fun e!4682039 () (InoxSet T!145860))

(assert (=> d!2372348 (= (content!15790 (Cons!74456 v!5484 Nil!74456)) e!4682039)))

(declare-fun b!7934585 () Bool)

(assert (=> b!7934585 (= e!4682039 ((as const (Array T!145860 Bool)) false))))

(declare-fun b!7934586 () Bool)

(assert (=> b!7934586 (= e!4682039 ((_ map or) (store ((as const (Array T!145860 Bool)) false) (h!80904 (Cons!74456 v!5484 Nil!74456)) true) (content!15790 (t!390249 (Cons!74456 v!5484 Nil!74456)))))))

(assert (= (and d!2372348 c!1457705) b!7934585))

(assert (= (and d!2372348 (not c!1457705)) b!7934586))

(declare-fun m!8322134 () Bool)

(assert (=> b!7934586 m!8322134))

(declare-fun m!8322136 () Bool)

(assert (=> b!7934586 m!8322136))

(assert (=> d!2372104 d!2372348))

(assert (=> d!2372096 d!2372324))

(assert (=> d!2372096 d!2372326))

(declare-fun d!2372350 () Bool)

(assert (=> d!2372350 (= (max!0 (height!2224 (left!56885 (right!57215 t!4440))) (height!2224 (right!57215 (right!57215 t!4440)))) (ite (< (height!2224 (left!56885 (right!57215 t!4440))) (height!2224 (right!57215 (right!57215 t!4440)))) (height!2224 (right!57215 (right!57215 t!4440))) (height!2224 (left!56885 (right!57215 t!4440)))))))

(assert (=> b!7934231 d!2372350))

(assert (=> b!7934231 d!2372258))

(assert (=> b!7934231 d!2372260))

(declare-fun e!4682040 () Bool)

(declare-fun tp!2359290 () Bool)

(declare-fun b!7934587 () Bool)

(declare-fun tp!2359289 () Bool)

(assert (=> b!7934587 (= e!4682040 (and (inv!95763 (left!56885 (left!56885 (left!56885 (right!57215 t!4440))))) tp!2359289 (inv!95763 (right!57215 (left!56885 (left!56885 (right!57215 t!4440))))) tp!2359290))))

(declare-fun b!7934589 () Bool)

(declare-fun e!4682041 () Bool)

(declare-fun tp!2359291 () Bool)

(assert (=> b!7934589 (= e!4682041 tp!2359291)))

(declare-fun b!7934588 () Bool)

(assert (=> b!7934588 (= e!4682040 (and (inv!95764 (xs!19306 (left!56885 (left!56885 (right!57215 t!4440))))) e!4682041))))

(assert (=> b!7934358 (= tp!2359257 (and (inv!95763 (left!56885 (left!56885 (right!57215 t!4440)))) e!4682040))))

(assert (= (and b!7934358 ((_ is Node!15910) (left!56885 (left!56885 (right!57215 t!4440))))) b!7934587))

(assert (= b!7934588 b!7934589))

(assert (= (and b!7934358 ((_ is Leaf!30246) (left!56885 (left!56885 (right!57215 t!4440))))) b!7934588))

(declare-fun m!8322138 () Bool)

(assert (=> b!7934587 m!8322138))

(declare-fun m!8322140 () Bool)

(assert (=> b!7934587 m!8322140))

(declare-fun m!8322142 () Bool)

(assert (=> b!7934588 m!8322142))

(assert (=> b!7934358 m!8321772))

(declare-fun e!4682042 () Bool)

(declare-fun tp!2359293 () Bool)

(declare-fun tp!2359292 () Bool)

(declare-fun b!7934590 () Bool)

(assert (=> b!7934590 (= e!4682042 (and (inv!95763 (left!56885 (right!57215 (left!56885 (right!57215 t!4440))))) tp!2359292 (inv!95763 (right!57215 (right!57215 (left!56885 (right!57215 t!4440))))) tp!2359293))))

(declare-fun b!7934592 () Bool)

(declare-fun e!4682043 () Bool)

(declare-fun tp!2359294 () Bool)

(assert (=> b!7934592 (= e!4682043 tp!2359294)))

(declare-fun b!7934591 () Bool)

(assert (=> b!7934591 (= e!4682042 (and (inv!95764 (xs!19306 (right!57215 (left!56885 (right!57215 t!4440))))) e!4682043))))

(assert (=> b!7934358 (= tp!2359258 (and (inv!95763 (right!57215 (left!56885 (right!57215 t!4440)))) e!4682042))))

(assert (= (and b!7934358 ((_ is Node!15910) (right!57215 (left!56885 (right!57215 t!4440))))) b!7934590))

(assert (= b!7934591 b!7934592))

(assert (= (and b!7934358 ((_ is Leaf!30246) (right!57215 (left!56885 (right!57215 t!4440))))) b!7934591))

(declare-fun m!8322144 () Bool)

(assert (=> b!7934590 m!8322144))

(declare-fun m!8322146 () Bool)

(assert (=> b!7934590 m!8322146))

(declare-fun m!8322148 () Bool)

(assert (=> b!7934591 m!8322148))

(assert (=> b!7934358 m!8321774))

(declare-fun b!7934593 () Bool)

(declare-fun e!4682044 () Bool)

(declare-fun tp!2359295 () Bool)

(assert (=> b!7934593 (= e!4682044 (and tp_is_empty!53245 tp!2359295))))

(assert (=> b!7934367 (= tp!2359263 e!4682044)))

(assert (= (and b!7934367 ((_ is Cons!74456) (t!390249 (t!390249 (innerList!15998 (xs!19306 t!4440)))))) b!7934593))

(declare-fun b!7934594 () Bool)

(declare-fun e!4682045 () Bool)

(declare-fun tp!2359296 () Bool)

(assert (=> b!7934594 (= e!4682045 (and tp_is_empty!53245 tp!2359296))))

(assert (=> b!7934371 (= tp!2359267 e!4682045)))

(assert (= (and b!7934371 ((_ is Cons!74456) (innerList!15998 (xs!19306 (left!56885 (left!56885 t!4440)))))) b!7934594))

(declare-fun b!7934595 () Bool)

(declare-fun e!4682046 () Bool)

(declare-fun tp!2359297 () Bool)

(assert (=> b!7934595 (= e!4682046 (and tp_is_empty!53245 tp!2359297))))

(assert (=> b!7934374 (= tp!2359270 e!4682046)))

(assert (= (and b!7934374 ((_ is Cons!74456) (innerList!15998 (xs!19306 (right!57215 (left!56885 t!4440)))))) b!7934595))

(declare-fun e!4682047 () Bool)

(declare-fun tp!2359298 () Bool)

(declare-fun b!7934596 () Bool)

(declare-fun tp!2359299 () Bool)

(assert (=> b!7934596 (= e!4682047 (and (inv!95763 (left!56885 (left!56885 (right!57215 (right!57215 t!4440))))) tp!2359298 (inv!95763 (right!57215 (left!56885 (right!57215 (right!57215 t!4440))))) tp!2359299))))

(declare-fun b!7934598 () Bool)

(declare-fun e!4682048 () Bool)

(declare-fun tp!2359300 () Bool)

(assert (=> b!7934598 (= e!4682048 tp!2359300)))

(declare-fun b!7934597 () Bool)

(assert (=> b!7934597 (= e!4682047 (and (inv!95764 (xs!19306 (left!56885 (right!57215 (right!57215 t!4440))))) e!4682048))))

(assert (=> b!7934361 (= tp!2359260 (and (inv!95763 (left!56885 (right!57215 (right!57215 t!4440)))) e!4682047))))

(assert (= (and b!7934361 ((_ is Node!15910) (left!56885 (right!57215 (right!57215 t!4440))))) b!7934596))

(assert (= b!7934597 b!7934598))

(assert (= (and b!7934361 ((_ is Leaf!30246) (left!56885 (right!57215 (right!57215 t!4440))))) b!7934597))

(declare-fun m!8322150 () Bool)

(assert (=> b!7934596 m!8322150))

(declare-fun m!8322152 () Bool)

(assert (=> b!7934596 m!8322152))

(declare-fun m!8322154 () Bool)

(assert (=> b!7934597 m!8322154))

(assert (=> b!7934361 m!8321784))

(declare-fun tp!2359302 () Bool)

(declare-fun e!4682049 () Bool)

(declare-fun b!7934599 () Bool)

(declare-fun tp!2359301 () Bool)

(assert (=> b!7934599 (= e!4682049 (and (inv!95763 (left!56885 (right!57215 (right!57215 (right!57215 t!4440))))) tp!2359301 (inv!95763 (right!57215 (right!57215 (right!57215 (right!57215 t!4440))))) tp!2359302))))

(declare-fun b!7934601 () Bool)

(declare-fun e!4682050 () Bool)

(declare-fun tp!2359303 () Bool)

(assert (=> b!7934601 (= e!4682050 tp!2359303)))

(declare-fun b!7934600 () Bool)

(assert (=> b!7934600 (= e!4682049 (and (inv!95764 (xs!19306 (right!57215 (right!57215 (right!57215 t!4440))))) e!4682050))))

(assert (=> b!7934361 (= tp!2359261 (and (inv!95763 (right!57215 (right!57215 (right!57215 t!4440)))) e!4682049))))

(assert (= (and b!7934361 ((_ is Node!15910) (right!57215 (right!57215 (right!57215 t!4440))))) b!7934599))

(assert (= b!7934600 b!7934601))

(assert (= (and b!7934361 ((_ is Leaf!30246) (right!57215 (right!57215 (right!57215 t!4440))))) b!7934600))

(declare-fun m!8322156 () Bool)

(assert (=> b!7934599 m!8322156))

(declare-fun m!8322158 () Bool)

(assert (=> b!7934599 m!8322158))

(declare-fun m!8322160 () Bool)

(assert (=> b!7934600 m!8322160))

(assert (=> b!7934361 m!8321786))

(declare-fun b!7934602 () Bool)

(declare-fun e!4682051 () Bool)

(declare-fun tp!2359305 () Bool)

(declare-fun tp!2359304 () Bool)

(assert (=> b!7934602 (= e!4682051 (and (inv!95763 (left!56885 (left!56885 (left!56885 (left!56885 t!4440))))) tp!2359304 (inv!95763 (right!57215 (left!56885 (left!56885 (left!56885 t!4440))))) tp!2359305))))

(declare-fun b!7934604 () Bool)

(declare-fun e!4682052 () Bool)

(declare-fun tp!2359306 () Bool)

(assert (=> b!7934604 (= e!4682052 tp!2359306)))

(declare-fun b!7934603 () Bool)

(assert (=> b!7934603 (= e!4682051 (and (inv!95764 (xs!19306 (left!56885 (left!56885 (left!56885 t!4440))))) e!4682052))))

(assert (=> b!7934369 (= tp!2359265 (and (inv!95763 (left!56885 (left!56885 (left!56885 t!4440)))) e!4682051))))

(assert (= (and b!7934369 ((_ is Node!15910) (left!56885 (left!56885 (left!56885 t!4440))))) b!7934602))

(assert (= b!7934603 b!7934604))

(assert (= (and b!7934369 ((_ is Leaf!30246) (left!56885 (left!56885 (left!56885 t!4440))))) b!7934603))

(declare-fun m!8322162 () Bool)

(assert (=> b!7934602 m!8322162))

(declare-fun m!8322164 () Bool)

(assert (=> b!7934602 m!8322164))

(declare-fun m!8322166 () Bool)

(assert (=> b!7934603 m!8322166))

(assert (=> b!7934369 m!8321792))

(declare-fun tp!2359307 () Bool)

(declare-fun b!7934605 () Bool)

(declare-fun tp!2359308 () Bool)

(declare-fun e!4682053 () Bool)

(assert (=> b!7934605 (= e!4682053 (and (inv!95763 (left!56885 (right!57215 (left!56885 (left!56885 t!4440))))) tp!2359307 (inv!95763 (right!57215 (right!57215 (left!56885 (left!56885 t!4440))))) tp!2359308))))

(declare-fun b!7934607 () Bool)

(declare-fun e!4682054 () Bool)

(declare-fun tp!2359309 () Bool)

(assert (=> b!7934607 (= e!4682054 tp!2359309)))

(declare-fun b!7934606 () Bool)

(assert (=> b!7934606 (= e!4682053 (and (inv!95764 (xs!19306 (right!57215 (left!56885 (left!56885 t!4440))))) e!4682054))))

(assert (=> b!7934369 (= tp!2359266 (and (inv!95763 (right!57215 (left!56885 (left!56885 t!4440)))) e!4682053))))

(assert (= (and b!7934369 ((_ is Node!15910) (right!57215 (left!56885 (left!56885 t!4440))))) b!7934605))

(assert (= b!7934606 b!7934607))

(assert (= (and b!7934369 ((_ is Leaf!30246) (right!57215 (left!56885 (left!56885 t!4440))))) b!7934606))

(declare-fun m!8322168 () Bool)

(assert (=> b!7934605 m!8322168))

(declare-fun m!8322170 () Bool)

(assert (=> b!7934605 m!8322170))

(declare-fun m!8322172 () Bool)

(assert (=> b!7934606 m!8322172))

(assert (=> b!7934369 m!8321794))

(declare-fun b!7934608 () Bool)

(declare-fun e!4682055 () Bool)

(declare-fun tp!2359310 () Bool)

(assert (=> b!7934608 (= e!4682055 (and tp_is_empty!53245 tp!2359310))))

(assert (=> b!7934363 (= tp!2359262 e!4682055)))

(assert (= (and b!7934363 ((_ is Cons!74456) (innerList!15998 (xs!19306 (right!57215 (right!57215 t!4440)))))) b!7934608))

(declare-fun b!7934609 () Bool)

(declare-fun e!4682056 () Bool)

(declare-fun tp!2359311 () Bool)

(assert (=> b!7934609 (= e!4682056 (and tp_is_empty!53245 tp!2359311))))

(assert (=> b!7934357 (= tp!2359256 e!4682056)))

(assert (= (and b!7934357 ((_ is Cons!74456) (t!390249 (innerList!15998 (xs!19306 (left!56885 t!4440)))))) b!7934609))

(declare-fun tp!2359312 () Bool)

(declare-fun tp!2359313 () Bool)

(declare-fun b!7934610 () Bool)

(declare-fun e!4682057 () Bool)

(assert (=> b!7934610 (= e!4682057 (and (inv!95763 (left!56885 (left!56885 (right!57215 (left!56885 t!4440))))) tp!2359312 (inv!95763 (right!57215 (left!56885 (right!57215 (left!56885 t!4440))))) tp!2359313))))

(declare-fun b!7934612 () Bool)

(declare-fun e!4682058 () Bool)

(declare-fun tp!2359314 () Bool)

(assert (=> b!7934612 (= e!4682058 tp!2359314)))

(declare-fun b!7934611 () Bool)

(assert (=> b!7934611 (= e!4682057 (and (inv!95764 (xs!19306 (left!56885 (right!57215 (left!56885 t!4440))))) e!4682058))))

(assert (=> b!7934372 (= tp!2359268 (and (inv!95763 (left!56885 (right!57215 (left!56885 t!4440)))) e!4682057))))

(assert (= (and b!7934372 ((_ is Node!15910) (left!56885 (right!57215 (left!56885 t!4440))))) b!7934610))

(assert (= b!7934611 b!7934612))

(assert (= (and b!7934372 ((_ is Leaf!30246) (left!56885 (right!57215 (left!56885 t!4440))))) b!7934611))

(declare-fun m!8322174 () Bool)

(assert (=> b!7934610 m!8322174))

(declare-fun m!8322176 () Bool)

(assert (=> b!7934610 m!8322176))

(declare-fun m!8322178 () Bool)

(assert (=> b!7934611 m!8322178))

(assert (=> b!7934372 m!8321800))

(declare-fun tp!2359316 () Bool)

(declare-fun e!4682059 () Bool)

(declare-fun tp!2359315 () Bool)

(declare-fun b!7934613 () Bool)

(assert (=> b!7934613 (= e!4682059 (and (inv!95763 (left!56885 (right!57215 (right!57215 (left!56885 t!4440))))) tp!2359315 (inv!95763 (right!57215 (right!57215 (right!57215 (left!56885 t!4440))))) tp!2359316))))

(declare-fun b!7934615 () Bool)

(declare-fun e!4682060 () Bool)

(declare-fun tp!2359317 () Bool)

(assert (=> b!7934615 (= e!4682060 tp!2359317)))

(declare-fun b!7934614 () Bool)

(assert (=> b!7934614 (= e!4682059 (and (inv!95764 (xs!19306 (right!57215 (right!57215 (left!56885 t!4440))))) e!4682060))))

(assert (=> b!7934372 (= tp!2359269 (and (inv!95763 (right!57215 (right!57215 (left!56885 t!4440)))) e!4682059))))

(assert (= (and b!7934372 ((_ is Node!15910) (right!57215 (right!57215 (left!56885 t!4440))))) b!7934613))

(assert (= b!7934614 b!7934615))

(assert (= (and b!7934372 ((_ is Leaf!30246) (right!57215 (right!57215 (left!56885 t!4440))))) b!7934614))

(declare-fun m!8322180 () Bool)

(assert (=> b!7934613 m!8322180))

(declare-fun m!8322182 () Bool)

(assert (=> b!7934613 m!8322182))

(declare-fun m!8322184 () Bool)

(assert (=> b!7934614 m!8322184))

(assert (=> b!7934372 m!8321802))

(declare-fun b!7934616 () Bool)

(declare-fun e!4682061 () Bool)

(declare-fun tp!2359318 () Bool)

(assert (=> b!7934616 (= e!4682061 (and tp_is_empty!53245 tp!2359318))))

(assert (=> b!7934221 (= tp!2359255 e!4682061)))

(assert (= (and b!7934221 ((_ is Cons!74456) (innerList!15998 _$6!638))) b!7934616))

(declare-fun b!7934617 () Bool)

(declare-fun e!4682062 () Bool)

(declare-fun tp!2359319 () Bool)

(assert (=> b!7934617 (= e!4682062 (and tp_is_empty!53245 tp!2359319))))

(assert (=> b!7934360 (= tp!2359259 e!4682062)))

(assert (= (and b!7934360 ((_ is Cons!74456) (innerList!15998 (xs!19306 (left!56885 (right!57215 t!4440)))))) b!7934617))

(declare-fun b!7934618 () Bool)

(declare-fun e!4682063 () Bool)

(declare-fun tp!2359320 () Bool)

(assert (=> b!7934618 (= e!4682063 (and tp_is_empty!53245 tp!2359320))))

(assert (=> b!7934368 (= tp!2359264 e!4682063)))

(assert (= (and b!7934368 ((_ is Cons!74456) (t!390249 (innerList!15998 (xs!19306 (right!57215 t!4440)))))) b!7934618))

(check-sat (not b!7934598) (not b!7934503) (not b!7934607) (not b!7934508) (not b!7934610) (not d!2372328) (not b!7934597) (not b!7934570) (not d!2372306) (not bm!735626) (not b!7934562) (not d!2372248) (not b!7934458) (not b!7934514) (not b!7934517) (not b!7934484) (not b!7934554) (not d!2372270) (not b!7934462) (not b!7934524) (not b!7934551) (not b!7934493) (not b!7934602) (not b!7934537) (not b!7934516) (not b!7934481) (not b!7934513) (not b!7934593) (not d!2372198) (not b!7934372) (not b!7934361) (not d!2372314) (not b!7934541) (not b!7934569) (not b!7934618) (not b!7934606) (not b!7934609) (not b!7934480) (not b!7934526) (not b!7934498) (not b!7934577) (not b!7934563) (not b!7934490) (not b!7934572) (not b!7934506) (not d!2372312) (not d!2372292) (not b!7934574) (not d!2372216) (not d!2372282) (not b!7934605) (not b!7934464) (not b!7934592) (not b!7934587) (not b!7934578) (not d!2372308) (not b!7934543) (not b!7934502) (not b!7934456) (not b!7934510) (not b!7934492) (not d!2372296) (not d!2372280) (not d!2372218) (not b!7934369) (not b!7934488) (not d!2372278) (not b!7934546) (not b!7934615) (not d!2372254) (not b!7934580) (not d!2372208) (not b!7934604) (not b!7934527) (not b!7934525) (not b!7934520) tp_is_empty!53245 (not b!7934601) (not b!7934594) (not b!7934465) (not b!7934579) (not b!7934595) (not d!2372338) (not b!7934558) (not b!7934497) (not b!7934505) (not b!7934582) (not b!7934573) (not b!7934538) (not b!7934489) (not b!7934515) (not b!7934491) (not d!2372214) (not b!7934500) (not b!7934581) (not b!7934614) (not b!7934358) (not b!7934518) (not b!7934532) (not b!7934608) (not b!7934486) (not b!7934616) (not b!7934613) (not b!7934565) (not b!7934511) (not b!7934460) (not b!7934591) (not d!2372230) (not b!7934611) (not b!7934589) (not b!7934483) (not b!7934576) (not b!7934479) (not b!7934612) (not b!7934571) (not b!7934535) (not d!2372340) (not d!2372222) (not b!7934495) (not b!7934584) (not b!7934549) (not d!2372286) (not d!2372316) (not b!7934567) (not d!2372242) (not b!7934617) (not bm!735627) (not b!7934588) (not b!7934468) (not b!7934596) (not b!7934599) (not b!7934600) (not b!7934544) (not b!7934452) (not b!7934590) (not b!7934528) (not b!7934556) (not b!7934603) (not b!7934522) (not d!2372318) (not b!7934454) (not b!7934586) (not b!7934494) (not d!2372206) (not b!7934547))
(check-sat)
